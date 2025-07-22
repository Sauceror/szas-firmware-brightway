#ifndef NETWORK_H
#define NETWORK_H

#include "usart.h"
#include "main.h"
#include "tx_api.h"


/* External Thread Definitions */
extern TX_THREAD network_thread;
extern TX_THREAD tcp_server_thread;
extern TX_THREAD udp_server_thread;

extern void network_thread_entry(ULONG thread_input);
extern void tcp_server_thread_entry(ULONG thread_input);
extern void udp_server_thread_entry(ULONG thread_input);

/* External Stack Buffers */
extern UCHAR network_stack[2048];
extern UCHAR tcp_stack[2048];
extern UCHAR udp_stack[1024];



void Init_EC25(void);
void Send_UDP_Trigger(void);
void Handle_Trigger_Message(const char *msg);

#endif
