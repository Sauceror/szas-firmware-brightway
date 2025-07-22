#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <stdarg.h>
#include "communication.h"
#include "main.h"
#include "stm32u5xx_hal_rtc.h"
#include "network.h"
#include "stm32u5xx.h"
#include "ec25.h"

extern RTC_HandleTypeDef hrtc;
extern UART_HandleTypeDef huart1;

TelemetryEntry telemetry_log[MAX_TEL_ENTRIES];
int telemetry_index = 0;
char sign_id[16] = "00001";
char sign_version[16] = "1.0.0";
uint8_t sign_config = 0;
char sign_mode[8] = "OFF";
/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file    communication.c
  * @brief   Protocol command handling for SZAS (TfNSW TSI-SP-084)
  ******************************************************************************
  */
/* USER CODE END Header */


/* External NetX objects */
extern NX_PACKET_POOL packet_pool;
extern NX_TCP_SOCKET tcp_socket;



/* Data stores */
LogEntry event_log[MAX_LOG_ENTRIES];
TimetableEntry timetable[MAX_TTB_ENTRIES];

/* Forward declaration */
static UINT send_tcp_response(const char *msg);

/**
  * @brief Handle and route incoming messages per TfNSW protocol
  */
void Process_Message(const char *message)
{
    if (strncmp(message, "<STS?>", 6) == 0)
    {
        Send_Status_Report();
    }
    else if (strncmp(message, "<LOG?>", 6) == 0)
    {
        Retrieve_Log();
    }
    else if (strncmp(message, "<LOGCLR>", 8) == 0)
    {
        Clear_Log();
        send_tcp_response("<LOGACK>");
    }
    else if (strncmp(message, "<TTB?>", 6) == 0)
    {
        Send_Timetable();
    }
    else if (strncmp(message, "<LOG=", 5) == 0)
    {
        Log_Event(message + 5);
        send_tcp_response("<LOGACK>");
    }
    else if (strncmp(message, "<TTB=", 5) == 0)
    {
        Update_Timetable(message + 5);
        send_tcp_response("<TTBACK>");
    }
    else if (strncmp(message, "<TIM?>", 6) == 0)
    {
        Sync_Time();
    }
    else if (strncmp(message, "<RST!>", 6) == 0)
    {
        Reset_System();
    }
    else if (strncmp(message, "<ERR!>", 6) == 0)
    {
        Handle_Error("Manual trigger");
    }
    else if (strncmp(message, "<TFC!>", 6) == 0)
    {
        Traffic_Control();
    }
    else if (strncmp(message, "<TEL?>", 7) == 0)
    {
        Send_Telemetry_Data();
    }
    else if (strncmp(message, "<VER?>", 6) == 0)
    {
        Send_Firmware_Version();
    }
    else if (strncmp(message, "<CFG?>", 6) == 0)
    {
        Send_Configuration();
    }
    else if (strncmp(message, "<ID?>", 5) == 0)
    {
        Send_Sign_ID();
    }
    else if (strncmp(message, "<SIG?>", 6) == 0)
    {
        Send_Signal_Status();
    }
    else
    {
        send_tcp_response("<NACK>");
    }
}

/**
  * @brief Respond with placeholder status info
  */
void Send_Status_Report(void)
{
    send_tcp_response("<STS:ONLINE,SIGNAL=GOOD,BATT=95%>");
}

/**
  * @brief Respond with placeholder telemetry data
  */
void Send_Telemetry_Data(void)
{
    // TODO: Replace with actual voltage/current/temp readings
    send_tcp_response("<TEL:V=12.5,I=1.2,T=42.1>");
}

/**
  * @brief Respond with placeholder firmware version
  */
void Send_Firmware_Version(void)
{
    // TODO: Pull version from macro or build flag if needed
    send_tcp_response("<VER:1.0.0>");
}

/**
  * @brief Respond with placeholder sign configuration data
  */
void Send_Configuration(void)
{

    send_tcp_response("<CFG:TYPE=SZAS,FREQ=2.4GHz,MODE=AUTO>");
}

/**
  * @brief Respond with dummy Sign ID
  */
void Send_Sign_ID(void)
{
    // TODO: Replace with hardware-specific unique ID
    send_tcp_response("<ID:SZAS-00123>");
}

/**
  * @brief Respond with placeholder signal status
  */
void Send_Signal_Status(void)
{
    // TODO: Replace with actual signal status (e.g. active/inactive)
    send_tcp_response("<SIG:ACTIVE>");
}

/**
  * @brief Add a log event to the top of the log stack
  */
void Log_Event(const char *event)
{
    for (int i = MAX_LOG_ENTRIES - 1; i > 0; i--)
    {
        event_log[i] = event_log[i - 1];
    }

    snprintf(event_log[0].timestamp, sizeof(event_log[0].timestamp), "2024-04-03T12:00");
    strncpy(event_log[0].log_entry, event, sizeof(event_log[0].log_entry) - 1);
}

/**
  * @brief Send all stored logs back over TCP
  */
void Retrieve_Log(void)
{
    char buffer[256];

    for (int i = 0; i < MAX_LOG_ENTRIES; i++)
    {
        if (event_log[i].log_entry[0] != '\0')
        {
            snprintf(buffer, sizeof(buffer), "<LOG:%s,%s>",
                     event_log[i].timestamp,
                     event_log[i].log_entry);

            send_tcp_response(buffer);
        }
    }
}

/**
  * @brief Wipe all log entries
  */
void Clear_Log(void)
{
    memset(event_log, 0, sizeof(event_log));
}

/**
  * @brief Parse and store timetable entries
  */
void Update_Timetable(const char *schedule)
{
    memset(timetable, 0, sizeof(timetable));

    char *token = strtok((char *)schedule, ";");
    int index = 0;

    while (token && index < MAX_TTB_ENTRIES)
    {
        sscanf(token, "%[^,],%[^-]-%s",
               timetable[index].day,
               timetable[index].start_time,
               timetable[index].end_time);

        token = strtok(NULL, ";");
        index++;
    }
}

/**
  * @brief Respond with stored timetable entries
  */
void Send_Timetable(void)
{
    char buffer[64];

    for (int i = 0; i < MAX_TTB_ENTRIES; i++)
    {
        if (timetable[i].day[0] != '\0')
        {
            snprintf(buffer, sizeof(buffer), "<TTB:%s,%s-%s>",
                     timetable[i].day,
                     timetable[i].start_time,
                     timetable[i].end_time);
            send_tcp_response(buffer);
        }
    }
}

/**
  * @brief Placeholder time sync response
  */
void Sync_Time(void)
{
    send_tcp_response("<TIM:2024-04-03T12:00>");
}

/**
  * @brief Trigger system reset
  */
void Reset_System(void)
{
    send_tcp_response("<RSTACK>");
    NVIC_SystemReset();
}

/**
  * @brief Placeholder traffic control acknowledgement
  */
void Traffic_Control(void)
{
    send_tcp_response("<TFCACK>");


}

/**
  * @brief Handle and return error message
  */
void Handle_Error(const char *error)
{
    char msg[128];
    snprintf(msg, sizeof(msg), "<ERR:%s>", error);
    send_tcp_response(msg);
}


void EC25_SendTCP(int socket_fd, const char *data) {
    char at_command[300];
    snprintf(at_command, sizeof(at_command), "AT+QISEND=%d,%d\r", socket_fd, strlen(data));
    HAL_UART_Transmit(&huart1, (uint8_t*)at_command, strlen(at_command), HAL_MAX_DELAY);
    HAL_Delay(10);
    HAL_UART_Transmit(&huart1, (uint8_t*)data, strlen(data), HAL_MAX_DELAY);
    HAL_UART_Transmit(&huart1, (uint8_t*)"\x1A", 1, HAL_MAX_DELAY);  // Send CTRL+Z
}


/**
  * @brief Send TCP response over NetX Duo
  */
static UINT send_tcp_response(const char *msg)
{
    NX_PACKET *packet;

    if (nx_packet_allocate(&packet_pool, &packet, NX_TCP_PACKET, TX_WAIT_FOREVER) != NX_SUCCESS)
        return NX_NO_PACKET;

    nx_packet_data_append(packet, (VOID *)msg, strlen(msg), &packet_pool, TX_WAIT_FOREVER);

    UINT status = nx_tcp_socket_send(&tcp_socket, packet, TX_WAIT_FOREVER);
    if (status != NX_SUCCESS) {
        nx_packet_release(packet);  // Prevent memory leak
        return status;
    }

    return NX_SUCCESS;
}





// Utility: Send string with <...> format
void send_response(int socket_fd, const char *format, ...)
{
    char buffer[256];
    va_list args;
    va_start(args, format);
    vsnprintf(buffer, sizeof(buffer), format, args);
    va_end(args);

    char wrapped[260];
    snprintf(wrapped, sizeof(wrapped), "<%s>", buffer);

    EC25_SendTCP(socket_fd, wrapped);  // Your EC25 wrapper that sends wrapped string
}

// <TEL?>
void handle_TEL_query(int socket_fd) {
    for (int i = 0; i < MAX_TEL_ENTRIES; i++) {
        if (strlen(telemetry_log[i].timestamp) == 0) continue;
        send_response(socket_fd, "TEL:%s:%s:%s",
                      telemetry_log[i].timestamp,
                      telemetry_log[i].code,
                      telemetry_log[i].description);
    }
}

// <TELCLR>
void handle_TEL_clear(int socket_fd) {
    memset(telemetry_log, 0, sizeof(telemetry_log));
    telemetry_index = 0;
    send_response(socket_fd, "ACK");
}

// <TEL=...>
void handle_TEL_append(int socket_fd, const char* payload) {
    if (!payload) return;

    char *p = strdup(payload);
    char *timestamp = strtok(p, ",");
    char *code = strtok(NULL, ",");
    char *desc = strtok(NULL, "");

    if (!timestamp || !code || !desc) {
        send_response(socket_fd, "ERR");
        free(p);
        return;
    }

    strncpy(telemetry_log[telemetry_index].timestamp, timestamp, sizeof(telemetry_log[telemetry_index].timestamp) - 1);
    strncpy(telemetry_log[telemetry_index].code, code, sizeof(telemetry_log[telemetry_index].code) - 1);
    strncpy(telemetry_log[telemetry_index].description, desc, TEL_DESC_LEN - 1);

    telemetry_index = (telemetry_index + 1) % MAX_TEL_ENTRIES;

    send_response(socket_fd, "ACK");
    free(p);
}

// <DAT=...>
void handle_DAT_set(int socket_fd, const char* datetime) {
    if (!datetime || strlen(datetime) != 14) {
        send_response(socket_fd, "ERR");
        return;
    }

    RTC_TimeTypeDef sTime;
    RTC_DateTypeDef sDate;

    sTime.Hours   = (datetime[8]  - '0') * 10 + (datetime[9]  - '0');
    sTime.Minutes = (datetime[10] - '0') * 10 + (datetime[11] - '0');
    sTime.Seconds = (datetime[12] - '0') * 10 + (datetime[13] - '0');

    sDate.Year  = (datetime[2] - '0') * 10 + (datetime[3] - '0');
    sDate.Month = (datetime[4] - '0') * 10 + (datetime[5] - '0');
    sDate.Date  = (datetime[6] - '0') * 10 + (datetime[7] - '0');

    HAL_RTC_SetTime(&hrtc, &sTime, RTC_FORMAT_BIN);
    HAL_RTC_SetDate(&hrtc, &sDate, RTC_FORMAT_BIN);

    send_response(socket_fd, "ACK");
}

// <ID=...>
void handle_ID_set(int socket_fd, const char* id_value) {
    if (!id_value || strlen(id_value) > 10) {
        send_response(socket_fd, "ERR");
        return;
    }

    strncpy(sign_id, id_value, sizeof(sign_id) - 1);
    send_response(socket_fd, "ACK");
}

// <SIG=...>
void handle_SIG_set(int socket_fd, const char* mode) {
    if (!mode || (strcmp(mode, "ON") && strcmp(mode, "OFF") && strcmp(mode, "BLINK"))) {
        send_response(socket_fd, "ERR");
        return;
    }

    strncpy(sign_mode, mode, sizeof(sign_mode) - 1);


    send_response(socket_fd, "SIG:%s", sign_mode);
}

// <CFG=...>
void handle_CFG_set(int socket_fd, const char* config) {
    if (!config) {
        send_response(socket_fd, "ERR");
        return;
    }

    sign_config = (uint8_t)strtol(config, NULL, 2);
    send_response(socket_fd, "ACK");
}

// <VER=...>
void handle_VER_set(int socket_fd, const char* version) {
    if (!version || strlen(version) > 10) {
        send_response(socket_fd, "ERR");
        return;
    }

    strncpy(sign_version, version, sizeof(sign_version) - 1);
    send_response(socket_fd, "ACK");
}
