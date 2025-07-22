#include "ec25.h"
#include "usart.h"
#include "string.h"
#include "stdio.h"

// Sends a command to EC25 via USART2
static void EC25_SendCommand(const char *cmd)
{
    char buffer[128];
    snprintf(buffer, sizeof(buffer), "%s\r\n", cmd);
    HAL_UART_Transmit(&huart2, (uint8_t *)buffer, strlen(buffer), HAL_MAX_DELAY);
    HAL_Delay(500);  // Give modem time to respond
}

void Init_EC25(void)
{
    EC25_SendCommand("AT");
    EC25_SendCommand("ATE0");         // Echo off
    EC25_SendCommand("AT+CPIN?");     // Check SIM (optional, safe to leave)
    EC25_SendCommand("AT+QCFG=\"usbnet\",1");  // Set ECM mode if needed (only once)
    EC25_SendCommand("AT+QIDNSGIP=\"google.com\""); // DNS test (optional)

    HAL_UART_Transmit(&huart1, (uint8_t *)"[EC25] Modem init done.\r\n", 25, HAL_MAX_DELAY);
}

void Send_UDP_Trigger(void)
{
    EC25_SendCommand("AT+QIOPEN=1,0,\"UDP\",\"192.168.0.10\",10010,10010,0");
    HAL_Delay(1000); // Wait for connection to establish

    EC25_SendCommand("AT+QISEND=0,7");  // Send 7-byte payload
    HAL_UART_Transmit(&huart2, (uint8_t *)"TRIGGER\r\n", 9, HAL_MAX_DELAY);

    HAL_UART_Transmit(&huart1, (uint8_t *)"[EC25] Trigger sent over UDP.\r\n", 31, HAL_MAX_DELAY);
}
