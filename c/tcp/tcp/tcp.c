#include <winsock2.h>
#include <ws2tcpip.h>

#include <stdlib.h>
#include <stdio.h>


#define len_buf_tx 1000000
#define len_buf_rx 1000000


       char buff_tx[len_buf_tx];
       char buff_rx[len_buf_tx];

double l2d(LARGE_INTEGER arg ){
	double res;
	res=arg.HighPart* ( (long long)1 <<32 )   +arg.LowPart;
	return(res);
}
double time(  LARGE_INTEGER timerFrequency,  LARGE_INTEGER  timerStart, LARGE_INTEGER  timerStop){
	double res;
	res=l2d(timerStop)-l2d(timerStart);
	res=res / l2d(timerFrequency);
     return( res );
}
void main(void){

	   WSADATA ws;
       SOCKET s;
       int error;
       
       struct sockaddr saddr; 
        unsigned int actual_tx_len = 0,actual_rx_len = 0, i;

  SOCKET RecvSocket,SendSocket;
  struct sockaddr_in RecvAddr,ASVMAddr;
  int Port = 54035;
  char RecvBuf[9014], SendBuf[128];
  int  BufLen = 1024;int  SendBufLen = 128;
  struct sockaddr_in SenderAddr;
  int SenderAddrSize = sizeof(SenderAddr);
  int optVal;
  int optLen = sizeof(int);

 //---------------------------------------------
  int kol,N;
  double t;

  LARGE_INTEGER timerFrequency, timerStart, timerStop;
  
  for(i=0;i<len_buf_tx;i++) buff_tx[i]=i;

  printf("Hello\n");
   //...
   if (FAILED (    WSAStartup(  MAKEWORD(1,1), &ws)   ) )    {
      error = WSAGetLastError();
   }

   if (INVALID_SOCKET == (s = socket (AF_INET, SOCK_DGRAM, 0))  )   {
      error = WSAGetLastError();
   }

 //---------------------------------------------
  SendSocket = socket(AF_INET, SOCK_DGRAM, IPPROTO_UDP);// Create a socket for sending data
  ASVMAddr.sin_family = AF_INET;
  ASVMAddr.sin_port = htons(54036);  // порт для команд
  ASVMAddr.sin_addr.s_addr = inet_addr("192.168.0.55");


  RecvSocket = socket(AF_INET, SOCK_DGRAM, IPPROTO_UDP);// Create a receiver socket to receive datagrams
  // Bind the socket to any address and the specified port.
  RecvAddr.sin_family = AF_INET;
  RecvAddr.sin_port = htons(Port);
  RecvAddr.sin_addr.s_addr = htonl(INADDR_ANY);
  bind(RecvSocket, (SOCKADDR *) &RecvAddr, sizeof(RecvAddr));
 //---------------------------------------------


  getsockopt(RecvSocket, 
    SOL_SOCKET, 
    SO_RCVBUF, 
    (char*)&optVal, 
    &optLen) ;
    printf("SockOpt Value: %ld\n", optVal);

    optVal=8192*4*100;

  setsockopt(RecvSocket, 
    SOL_SOCKET, 
    SO_RCVBUF, 
    (char*)&optVal, 
    &optLen) ;

  getsockopt(RecvSocket, 
    SOL_SOCKET, 
    SO_RCVBUF, 
    (char*)&optVal, 
    &optLen) ;
    printf("SockOpt Value: %ld\n", optVal);



  // Send a datagram to the receiver
  printf("Sending a datagram to the receiver...\n");
  //while(1){
     kol=sendto(SendSocket,    SendBuf,     SendBufLen,     0,     (SOCKADDR *) &ASVMAddr,     sizeof(ASVMAddr));
  // Sleep(100);
  //}

       QueryPerformanceFrequency(&timerFrequency);
       QueryPerformanceCounter(&timerStart);

   for(N=0;;N++){
	   
       QueryPerformanceFrequency(&timerFrequency);
       QueryPerformanceCounter(&timerStart);

	   for(i=1;i< 4*8*20*200;i++){
          kol=recvfrom(RecvSocket, 
             RecvBuf, 
             BufLen, 
             0, 
             (SOCKADDR *)&SenderAddr, 
             &SenderAddrSize);
		    // printf("i=%d\n",i);
	   }// for


       QueryPerformanceCounter(&timerStop);
	   t=time(timerFrequency,timerStart, timerStop );
	   printf("kol=  %d  Time=%f    Speed :%f     %d \n", i, t, i / t,N   );
       

   /*
	   actual_tx_len =  sendto (s,  buff_tx ,1024, 0, (struct sockaddr_in *) &saddr, sizeof (saddr) ){
       //shutdown(s, SD_SEND);
       Sleep(100);
       }
   */

   } //while
   closesocket (s);
   
}