
/**
  ******************************************************************************
  * @file    network.c
  * @brief   EC25 modem-based TCP/UDP interface for SZAS (no NetX)
  ******************************************************************************
  */

#include "network.h"
#include "main.h"
#include "usart.h"
#include "gpio.h"
#include "tx_api.h"
#include "communication.h"
#include <stdio.h>
#include <string.h>

/* Thread handles */
TX_THREAD network_thread;
TX_THREAD tcp_server_thread;
TX_THREAD udp_server_thread;

/* Thread stacks */
UCHAR network_stack[2048];
UCHAR tcp_stack[2048];
UCHAR udp_stack[1024];

/**
  * @brief Start ThreadX kernel
  */


void udp_server_thread_entry(ULONG thread_input);

void Start_Network(void)
{
    const char *msg = "ð Entering ThreadX";
    HAL_UART_Transmit(&huart1, (uint8_t *)msg, strlen(msg), HAL_MAX_DELAY);
}

/**
  * @brief Network thread to init EC25
  */
void network_thread_entry(ULONG thread_input)
{
    HAL_UART_Transmit(&huart1, (uint8_t *)"[ThreadX] ✅ network_thread_entry() started", 45, HAL_MAX_DELAY);

    // Bring up modem with AT commands (example)
    const char *init_cmds[] = {"AT","ATE0", "AT+CGDCONT=1","IP","internet","AT+QIACT=1","AT+QIOPEN=1,0","UDP","<CMC_IP>","5025,10010,0"};

    for (int i = 0; i < sizeof(init_cmds) / sizeof(init_cmds[0]); i++)
    {
        HAL_UART_Transmit(&huart2, (uint8_t *)init_cmds[i], strlen(init_cmds[i]), HAL_MAX_DELAY);
        HAL_Delay(500);
    }

    HAL_UART_Transmit(&huart1, (uint8_t *)"[EC25] ✅ Modem initialised", 29, HAL_MAX_DELAY);

    tx_thread_create(&udp_server_thread, "UDP Trigger Thread", udp_server_thread_entry, 0, udp_stack, sizeof(udp_stack), 5, 5, 1, TX_AUTO_START);

    while (1)
    {
        HAL_GPIO_TogglePin(GPIOB, GPIO_PIN_0);
        HAL_Delay(1000);
    }
}

/**
  * @brief TCP server logic via EC25 (dummy placeholder)
  */
void tcp_server_thread_entry(ULONG thread_input)
{
    while (1)
    {
        // TCP server logic for EC25 would go here
        HAL_Delay(1000);
    }
}

/**
  * @brief Wait for UDP trigger via EC25 (simple AT monitoring)
  */
void udp_server_thread_entry(ULONG thread_input)
{
    uint8_t buffer[128];
    const char *trigger_ack = "[EC25] ✅ UDP Trigger detected. Opening TCP...";

    while (1)
    {
        memset(buffer, 0, sizeof(buffer));
        if (HAL_UART_Receive(&huart2, buffer, sizeof(buffer), 1000) == HAL_OK)
        {
            if (strstr((char *)buffer, "TRIGGER"))
            {
                HAL_UART_Transmit(&huart1, (uint8_t *)trigger_ack, strlen(trigger_ack), HAL_MAX_DELAY);
                // e.g., open TCP connection with QIOPEN
                char tcp_open[128];
                snprintf(tcp_open, sizeof(tcp_open), "AT+QIOPEN=1,1,\"TCP\",\"%s\",5025,0,0", "<CMC_IP>");
                strcat(tcp_open, "\r\n");
                HAL_UART_Transmit(&huart2, (uint8_t *)tcp_open, strlen(tcp_open), HAL_MAX_DELAY);


            }
        }

        HAL_GPIO_TogglePin(GPIOB, GPIO_PIN_0);
        HAL_Delay(500);
    }
}
