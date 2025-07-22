/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file    app_azure_rtos.c
  * @brief   app_azure_rtos application implementation file
  ******************************************************************************
  */
/* USER CODE END Header */

/* Includes ------------------------------------------------------------------*/
#include "app_azure_rtos.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include "network.h"       // Required for thread handles and entry points
#include "tx_api.h"
extern void Error_Handler(void);
/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */
/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */
/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */
/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/
/* USER CODE BEGIN PV */
/* USER CODE END PV */

#if (USE_STATIC_ALLOCATION == 1)

/* USER CODE BEGIN TX_Pool_Buffer */
/* USER CODE END TX_Pool_Buffer */
#if defined ( __ICCARM__ )
#pragma data_alignment=4
#endif
__ALIGN_BEGIN static UCHAR tx_byte_pool_buffer[TX_APP_MEM_POOL_SIZE] __ALIGN_END;
static TX_BYTE_POOL tx_app_byte_pool;

/* USER CODE BEGIN NX_Pool_Buffer */
/* USER CODE END NX_Pool_Buffer */
#if defined ( __ICCARM__ )
#pragma data_alignment=4
#endif
__ALIGN_BEGIN static UCHAR  nx_byte_pool_buffer[NX_APP_MEM_POOL_SIZE] __ALIGN_END;
static TX_BYTE_POOL NETXDUO_MEM_POOL_VAR_NAME;

#endif

/* Private function prototypes -----------------------------------------------*/
/* USER CODE BEGIN PFP */
/* USER CODE END PFP */

/**
  * @brief  Define the initial system.
  * @param  first_unused_memory : Pointer to the first unused memory
  * @retval None
  */
VOID tx_application_define(VOID *first_unused_memory)
{
  /* USER CODE BEGIN  tx_application_define_1 */
#if (USE_STATIC_ALLOCATION == 1)
  UINT status = TX_SUCCESS;
  VOID *memory_ptr = NULL;

  if (tx_byte_pool_create(&tx_app_byte_pool, "Tx App memory pool",
                          tx_byte_pool_buffer, TX_APP_MEM_POOL_SIZE) != TX_SUCCESS)
  {
    Error_Handler();
  }

  memory_ptr = (VOID *)&tx_app_byte_pool;
  status = App_ThreadX_Init(memory_ptr);
  if (status != TX_SUCCESS)
  {
    Error_Handler();
  }

  if (tx_byte_pool_create(&NETXDUO_MEM_POOL_VAR_NAME, "Nx App memory pool",
                          nx_byte_pool_buffer, NX_APP_MEM_POOL_SIZE) != TX_SUCCESS)
  {
    Error_Handler();
  }

  memory_ptr = (VOID *)&NETXDUO_MEM_POOL_VAR_NAME;
  status = MX_NetXDuo_Init(memory_ptr);
  if (status != NX_SUCCESS)
  {
    Error_Handler();
  }

  // 💡 Create and start the threads
  status = tx_thread_create(&network_thread,
                            "Network Thread",
                            network_thread_entry,
                            0,
                            network_stack,
                            sizeof(network_stack),
                            1, 1,
                            TX_NO_TIME_SLICE,
                            TX_AUTO_START);
  if (status != TX_SUCCESS) Error_Handler();

  status = tx_thread_create(&tcp_server_thread,
                            "TCP Server Thread",
                            tcp_server_thread_entry,
                            0,
                            tcp_stack,
                            sizeof(tcp_stack),
                            2, 2,
                            TX_NO_TIME_SLICE,
                            TX_AUTO_START);
  if (status != TX_SUCCESS) Error_Handler();

  status = tx_thread_create(&udp_server_thread,
                            "UDP Server Thread",
                            udp_server_thread_entry,
                            0,
                            udp_stack,
                            sizeof(udp_stack),
                            3, 3,
                            TX_NO_TIME_SLICE,
                            TX_AUTO_START);
  if (status != TX_SUCCESS) Error_Handler();

#else
  /* USER CODE BEGIN DYNAMIC_MEM_ALLOC */
  (void)first_unused_memory;
  /* USER CODE END DYNAMIC_MEM_ALLOC */
#endif
  /* USER CODE END  tx_application_define_1 */
}
