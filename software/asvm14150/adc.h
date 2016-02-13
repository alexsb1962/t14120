#ifndef ADC
#define ADC

#include "hack_tcp.h"
#include  <altera_avalon_sgdma.h>
#include  <altera_avalon_sgdma_descriptor.h>
#include  <altera_avalon_sgdma_regs.h>

#define SENDER_TASK_PRIORITY 11

   void ADCToMem( alt_u32 * Buf, unsigned int Len);
   void ADCToUDPM( int Kol);
   void InitADC();

#endif

