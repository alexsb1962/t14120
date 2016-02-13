/* hack_tcp.h  Created on: 18.05.2012     Author: Alex  */

#ifndef HACK_TCP_H_
#define HACK_TCP_H_

#include "ipport.h"
#include "tcpport.h"
#include "network_utilities.h"
#include "osport.h"
#include "ip.h"
#include <triple_speed_ethernet_iniche.h>
#include "altera_avalon_tse.h"


// ��������� ���������
  typedef struct {
	     short st;        // �����-�� ���������� ����
	     char dest_mac0;
	     char dest_mac1;
	     char dest_mac2;
	     char dest_mac3;
	     char dest_mac4;
	     char dest_mac5;
	     char source_mac0;
	     char source_mac1;
	     char source_mac2;
	     char source_mac3;
	     char source_mac4;
	     char source_mac5;
         unsigned short type_len;
  } TMacHeader;   // 16 ����

  typedef struct   {
     unshort  ud_srcp;    /* source port */
     unshort  ud_dstp;    /* dest port */
     unshort  ud_len;     /* length of UDP packet  ������ � ����������*/
     unshort  ud_cksum;   /* UDP checksum */
  } TUdpHeader;   // 8 ����

  typedef struct    {
     u_char   ip_ver_ihl;    /* 4 bit version, 4 bit hdr len in 32bit words   0x54 - ������ ip4 ����� ��������� 5 32 ��������� */
     u_char   ip_tos;        /* Type of Service  ��� ������� 0 */
     unshort  ip_len;        /* Total packet length including header */
     unshort  ip_id;         /* ID for fragmentation */
     unshort  ip_flgs_foff;  /* mask in flags as needed */
     u_char   ip_time;       /* Time to live (secs)  ����� �����  ���*/
     u_char   ip_prot;       /* protocol   udp=0x11 */
     unshort  ip_chksum;     /* Header checksum */
     ip_addr  ip_src;        /* Source name  ����� ��������� */
     ip_addr  ip_dest;       /* Destination name  ����� ���������� */
  } TIpHeader;   // 20 ����

  typedef struct {
	  TMacHeader MacHeader;
	  TIpHeader  IpHeader;
	  TUdpHeader UdpHeader;
  }THeader;  // 24+20=44


extern  THeader Header;   // ���������� ��������� ���������

#define UDPHeaderSize sizeof(THeader)
#define BlockSize 1024

void InitUDP(void);
void SendUDP(unsigned char *Buf, int Len, NET *ExtNet );
void hack_send( NET net,  unsigned char *data, int Len );

#endif /* HACK_TCP_H_ */