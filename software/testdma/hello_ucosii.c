

#include <stdio.h>
#include "includes.h"

#include "altera_avalon_pio_regs.h"

#include  <altera_avalon_sgdma.h>
#include  <altera_avalon_sgdma_descriptor.h>
#include  <altera_avalon_sgdma_regs.h>
#include  <includes.h>
#include  <sys/alt_cache.h>



/* Definition of Task Stacks */
#define   TASK_STACKSIZE       2048
OS_STK    task1_stk[TASK_STACKSIZE];
OS_STK    task2_stk[TASK_STACKSIZE];

/* Definition of Task Priorities */

#define TASK1_PRIORITY      2
#define TASK2_PRIORITY      1


#define BlockSize 1024
alt_u32 buffer[BlockSize*1024*10];
int cpu_sr;
alt_sgdma_dev *PDmaDevice;

unsigned char AdcBuf0[BlockSize];//  __attribute__ ((section ("sram")  ) );
unsigned char AdcBuf1[BlockSize];//  __attribute__ ((section ("sram")  ) );

alt_sgdma_descriptor Desc0 __attribute__ ((section ("desc")  ) );
alt_sgdma_descriptor Desc1  __attribute__ ((section ("desc")  ) );
alt_sgdma_descriptor NextDesc0  __attribute__ ((section ("desc")  ) );
alt_sgdma_descriptor NextDesc1  __attribute__ ((section ("desc")  ) );


/* Prints "Hello World" and sleeps for three seconds */
void task2(void* pdata){
  while (1)  {
    printf("Hello from task2\n");
    OSTimeDlyHMSM(0, 0, 1, 0);
  }
}


void InitADC(){
	PDmaDevice= alt_avalon_sgdma_open (SGDMA_F_NAME);  // строка имени из system.h
	if(!PDmaDevice){
		printf("DMA Not Found \n");
	}
}


void ADCToMem( alt_u32  * Buf, unsigned int Len){
	alt_u8 Status;
	alt_u16 BSize=BlockSize;
    int i;
    alt_u32 *CurrentAdr= Buf;

    alt_avalon_sgdma_construct_stream_to_mem_desc(
	                                  &Desc0,
	                                  &NextDesc0,
	                                  Buf,
	                                  BSize,         //             length_or_eop (bytes?)
	                                  0);
    alt_dcache_flush(&Desc0, sizeof(Desc0) );

    for(i=Len/BSize;i>0;i--){
//        OS_ENTER_CRITICAL();
         Status= alt_avalon_sgdma_do_sync_transfer(PDmaDevice, &Desc0);
//         OS_EXIT_CRITICAL();
//         OS_Sched();
  //       CurrentAdr+=BSize>>2;
         // "перезарядка" дескриптора
         IOWR_32DIRECT(&Desc0.write_addr, 0, (alt_u32)CurrentAdr);
         IOWR_8DIRECT(&Desc0.control,0,0x80);  // значение просто подсморел
         IOWR_8DIRECT(&Desc0.status,0,0x00);

     }
}

void task1(void* pdata){
	int i,Time;

	InitADC();
	for(;;){
       Time=OSTimeGet();
		for(i=1;i<1000;i++){
		   ADCToMem(buffer,1024*1000);
		}
       Time=OSTimeGet()-Time;
       printf("Time=%d\n",Time);
       OSTimeDlyHMSM(0,0,2,200);
	}
    while(1) OSTimeDlyHMSM(0,0,2,200);;
}

int main(void){

  
  OSTaskCreateExt(task1,NULL,
                  (void *)&task1_stk[TASK_STACKSIZE-1],
                  TASK1_PRIORITY,
                  TASK1_PRIORITY,
                  task1_stk,
                  TASK_STACKSIZE,
                  NULL,
                  0);
              
               
  OSTaskCreateExt(task2,
                  NULL,
                  (void *)&task2_stk[TASK_STACKSIZE-1],
                  TASK2_PRIORITY,
                  TASK2_PRIORITY,
                  task2_stk,
                  TASK_STACKSIZE,
                  NULL,
                  0);
  OSStart();
  return 0;
}
