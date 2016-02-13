// adc.c
#include "adc.h"
#include "altera_avalon_pio_regs.h"
#include <sys\alt_dma.h>
#include <sys\alt_cache.h>
#include "includes.h"

//#include <altera_avalon_dma.h>

   int cpu_sr;

alt_sgdma_dev *PDmaDevice;

alt_sgdma_descriptor Desc0 __attribute__ ((section ("desc")  ) );
alt_sgdma_descriptor Desc1  __attribute__ ((section ("desc")  ) );
alt_sgdma_descriptor NextDesc0  __attribute__ ((section ("desc")  ) );
alt_sgdma_descriptor NextDesc1  __attribute__ ((section ("desc")  ) );


#define NSamplesBuf 10
#define SampleLen 8192
#define OneTransferSize (BlockSize*8)
#define NUDPBloksPerSample (SampleLen * sizeof(alt_u32)/OneTransferSize)
alt_u8 TransmitBuf[SampleLen*sizeof(alt_u32)*NSamplesBuf];
volatile alt_u16  NTx;  // ����� ��. ������� ��� ��������
volatile alt_u16  NRx;  // ����� ��. ������� ��� ������ ���
volatile alt_u8  *PRx;  // ����� ��. ������� ��� ������ ���
volatile alt_u8  *PTx;  // ����� ��. ������� ��� ��������
volatile alt_u8  SGDMAFInWork;
volatile alt_u16  NInQueue; // ������� ��������� �������� � �� ����������


#define SenderTaskStackSize 256
static OS_STK  SenderTaskStack[SenderTaskStackSize];

void SGDMAFDone( void * context);

void InitADC(){

	PDmaDevice= alt_avalon_sgdma_open (SGDMA_F_NAME);  // ������ ����� �� system.h
	// ���� ���������� �� ��������� ��������� ������� ������������

	alt_avalon_sgdma_register_callback(PDmaDevice, &SGDMAFDone,
    		(ALTERA_AVALON_SGDMA_CONTROL_IE_CHAIN_COMPLETED_MSK | ALTERA_AVALON_SGDMA_CONTROL_IE_GLOBAL_MSK),
    		NULL);

	alt_avalon_sgdma_construct_stream_to_mem_desc(
	                                  &Desc0,
	                                  &NextDesc0,
	                                  (alt_u32*)&TransmitBuf[0],
	                                  SampleLen,         //             length_or_eop (bytes?)
	                                  0);


}
void SGDMAFDone(void *context){
	if(NRx<NSamplesBuf){
	    NRx++;
	    PRx+=SampleLen;
	} else{
	    NRx=0;
	    PRx=TransmitBuf;
	}

	NInQueue++;

    // "�����������" �����������
    IOWR_32DIRECT(&(Desc0.write_addr), 0, PRx);
    IOWR_8DIRECT(&Desc0.control,0,0x80);  // �������� ������ ���������
    IOWR_8DIRECT(&Desc0.status,0,0x00);

    SGDMAFInWork=0;
}

void ADCToUDPM(int Kol){
    alt_u16 ISample,IBlock;
    alt_u8 Status;

    NTx=0;
    NRx=0;
    PRx=&TransmitBuf[0];
    PTx=&TransmitBuf[0];
    NInQueue=0;
    SGDMAFInWork=0;

    // ������ �������
          // "�������" �����������
    IOWR_32DIRECT(&Desc0.write_addr, 0, PRx);
    IOWR_8DIRECT(&Desc0.control,0,0x80);  // �������� ������ ���������
    IOWR_8DIRECT(&Desc0.status,0,0x00);
    SGDMAFInWork=1;
    Status= alt_avalon_sgdma_do_async_transfer(PDmaDevice, &Desc0);

// ��������� superloop
  //  tcp_sleep(NULL);
    for(ISample=0;ISample < Kol; ISample++){     // �� ������������ ���������� �������
    	// ����, ���� � ������� �������� ��������� �������
    	while(!NInQueue);
     	//��������  UDP ����o�
    	for(IBlock=0;IBlock<NUDPBloksPerSample;IBlock++){
     	     // ������ �������� ��. �������, ���� ���� �����
    	     if( (NInQueue <  NSamplesBuf)  && !SGDMAFInWork ){
                 SGDMAFInWork=1; Status= alt_avalon_sgdma_do_async_transfer(PDmaDevice, &Desc0);  //  ����������
             }
             hack_send( ext_net, PTx, OneTransferSize );
             PTx+=OneTransferSize;
    	}//for IBlock
        if(NTx<NSamplesBuf) {
   	        NTx++;
        }else {
        	NTx=0; PTx=TransmitBuf;
        }
        NInQueue--;
	} // for ISample
  //  tcp_wakeup( NULL);
} // ADCToUDPM

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
    for(i=Len/BSize;i>0;i--){
         Status= alt_avalon_sgdma_do_sync_transfer(PDmaDevice, &Desc0);
         OS_Sched();
         CurrentAdr+=BSize>>2;
         // "�����������" �����������
         IOWR_32DIRECT(&Desc0.write_addr, 0, CurrentAdr);
         IOWR_8DIRECT(&Desc0.control,0,0x80);  // �������� ������ ���������
         IOWR_8DIRECT(&Desc0.status,0,0x00);
     }
}

