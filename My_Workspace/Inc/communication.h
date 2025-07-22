#ifndef COMMUNICATION_H
#define COMMUNICATION_H

#include "nx_api.h" // Only if you're using NetX — remove if not

/* Constants */
#define MAX_LOG_ENTRIES 10
#define MAX_TTB_ENTRIES 10
#define MAX_TEL_ENTRIES 10
#define TEL_DESC_LEN 64

/* Log structure */
typedef struct {
    char timestamp[32];
    char log_entry[96];
} LogEntry;

typedef struct {
    char day[8];
    char start_time[8];
    char end_time[8];
} TimetableEntry;

typedef struct {
    char timestamp[15];  // "YYYYMMDDhhmmss"
    char code[8];
    char description[TEL_DESC_LEN];
} TelemetryEntry;

extern LogEntry event_log[MAX_LOG_ENTRIES];
extern TimetableEntry timetable[MAX_TTB_ENTRIES];
extern TelemetryEntry telemetry_log[MAX_TEL_ENTRIES];
extern int telemetry_index;

/* Protocol message router */
void Process_Message(const char *message);

/* Protocol commands */
void Send_Status_Report(void);           // <STS?>
void Send_Telemetry_Data(void);          // <TEL?>
void Send_Firmware_Version(void);        // <VER?>
void Send_Configuration(void);           // <CFG?>
void Send_Sign_ID(void);                 // <ID?>
void Send_Signal_Status(void);           // <SIG?>
void Retrieve_Log(void);                 // <LOG?>
void Clear_Log(void);                    // <LOGCLR>
void Log_Event(const char *event);       // <LOG=...>
void Update_Timetable(const char *schedule); // <TTB=...>
void Send_Timetable(void);               // <TTB?>
void Sync_Time(void);                    // <TIM?>
void Reset_System(void);                 // <RST!>
void Traffic_Control(void);              // <TFC!>
void Handle_Error(const char *error);    // <ERR!>

/* Raw socket handlers */
void handle_TEL_query(int socket_fd);
void handle_TEL_clear(int socket_fd);
void handle_TEL_append(int socket_fd, const char* payload);
void handle_DAT_set(int socket_fd, const char* datetime);
void handle_ID_set(int socket_fd, const char* id_value);
void handle_SIG_set(int socket_fd, const char* mode);
void handle_CFG_set(int socket_fd, const char* config);
void handle_VER_set(int socket_fd, const char* version);

#endif /* COMMUNICATION_H */
