
#include <stdlib.h> 
#include <stdio.h>  
#include "includes.h" /* MicroC/OS-II definitions */
#include "altera_avalon_pio_regs.h"
#include "simple_socket_server.h" 
#include "alt_error_handler.h"


#include "ipport.h"
#include "tcpport.h"



/*
 * led_bit_toggle() sets or clears a bit in led_8_val, which corresponds
 * to 1 of 8 leds, and then writes led_8_val to a register on the Nios
 * Development Board which controls 8 LEDs, D0 - D7.
 * 
 */
 
void led_bit_toggle(OS_FLAGS bit)
{
    OS_FLAGS  led_8_val;
    INT8U error_code;
    
    led_8_val = OSFlagQuery(SSSLEDEventFlag, &error_code);
    alt_uCOSIIErrorHandler(error_code, 0);
    if (bit & led_8_val)
    {
       led_8_val = OSFlagPost(SSSLEDEventFlag, bit, OS_FLAG_CLR, &error_code);
       alt_uCOSIIErrorHandler(error_code, 0);
    }
    else
    {
       led_8_val = OSFlagPost(SSSLEDEventFlag, bit, OS_FLAG_SET, &error_code);
       alt_uCOSIIErrorHandler(error_code, 0);
    }
    #ifdef LED_PIO_BASE
       IOWR_ALTERA_AVALON_PIO_DATA(LED_PIO_BASE, led_8_val);
       printf("Value for LED_PIO_BASE set to %d.\n", (INT8U)led_8_val);
    #endif
      
    return;
}
      
 
const char* buffer = "Привет!";
void UserTask(){

   int sock,n;
   struct sockaddr_in sa;
   int bytes_sent;
   int buffer_length;

   // предполагается, что ось и стек уже работают
/*
   buffer_length = strlen( buffer ) + 1;
   sock = socket(AF_INET, SOCK_DGRAM, IPPROTO_UDP );
   if ( sock == -1 )     {        printf("Ошибка создания сокета\n");        return ;     }

   sa.sin_family = AF_INET;  // поддерживается только AF_INET
   sa.sin_addr.s_addr = htonl( 0x7F000001 );  // ????????????
   sa.sin_port = htons( 7654 );  // номер порта UDP

*/

   while(1)   {
/*
	    bytes_sent =      sendto(
	        sock,
	        buffer,
	        strlen( buffer ) + 1,
	        0,
	        ( struct sockaddr* )&sa,
	        sizeof( struct sockaddr_in )
	   );

	    if ( bytes_sent < 0 )
	      printf( "Ошибка отправки пакета: %s\n", strerror( errno ) );
*/
      OSTimeDlyHMSM(0,0,1,200);  // задержка на ук. время
  //    printf( "Задача USerTask  %d\n", n++ );
   }

}

/*
 * The LedManagementTask() is a simple MicroC/OS-II task that controls Nios
 * Development Board LEDs based on commands received by the 
 * SSSSimpleSocketServerTask in the SSSLEDCommandQ. 
 * 
 * The task will read the SSSLedCommandQ for an 
 * in-coming message command from the SSSSimpleSocketServerTask. 
 */
 
void LEDManagementTask()
{
  
  INT32U led_command; 
  INT16U led_7_seg_val;
  BOOLEAN SSSLEDLightshowActive;
  INT8U error_code;
  
  led_7_seg_val = 0;
  SSSLEDLightshowActive = OS_TRUE;
  
  while(1)
  {
    led_command = (INT32U)OSQPend(SSSLEDCommandQ, 0, &error_code);
   
    alt_uCOSIIErrorHandler(error_code, 0);
        
    switch (led_command) {
      case CMD_LEDS_BIT_0_TOGGLE:
         led_bit_toggle(BIT_0);
         break;
      case CMD_LEDS_BIT_1_TOGGLE:
         led_bit_toggle(BIT_1);
         break;   
      case CMD_LEDS_BIT_2_TOGGLE:
         led_bit_toggle(BIT_2);
         break;
      case CMD_LEDS_BIT_3_TOGGLE:
         led_bit_toggle(BIT_3);
         break;
      case CMD_LEDS_BIT_4_TOGGLE:
         led_bit_toggle(BIT_4);
         break;
      case CMD_LEDS_BIT_5_TOGGLE:
         led_bit_toggle(BIT_5);
         break;
      case CMD_LEDS_BIT_6_TOGGLE:
         led_bit_toggle(BIT_6);
         break;
      case CMD_LEDS_BIT_7_TOGGLE:
         led_bit_toggle(BIT_7);
         break;
      case CMD_LEDS_LIGHTSHOW:
         /* The SSSLEDLightshowSem semaphore is checked by LED7SegLightshowTask 
          * each time it updates 7 segment LED displays, U8 and U9.  Grab the 
          * semaphore (pend) away from the lightshow task to toggle the lightshow off, 
          * and give up the semaphore (post) to turn the lightshow back on.  
          */
         if (SSSLEDLightshowActive == OS_FALSE)
         {
             error_code = OSSemPost(SSSLEDLightshowSem);
             alt_uCOSIIErrorHandler(error_code, 0);
             SSSLEDLightshowActive = OS_TRUE;
         }
         else
         {
             OSSemPend(SSSLEDLightshowSem, 0, &error_code);
             alt_uCOSIIErrorHandler(error_code, 0); 
             SSSLEDLightshowActive = OS_FALSE;
         }     
         break;
      default:     
        /* Discard unknown LED commands. */
        break;
    } /* switch led_command */
  } /* while(1) */
} 

