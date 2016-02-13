/******************************************************************************
* Copyright (c) 2006 Altera Corporation, San Jose, California, USA.           *
* All rights reserved. All use of this software and documentation is          *
* subject to the License Agreement located at the end of this file below.     *
******************************************************************************
* Date - October 24, 2006                                                     *
* Module - network_utilities.c                                                *
*                                                                             *
******************************************************************************/

#include <alt_types.h>
#include <ctype.h>
#include <errno.h>
#include <stdio.h>
#include <sys/alt_flash.h>
#include "includes.h"
#include "io.h"
#include "simple_socket_server.h"

#include <alt_iniche_dev.h>

#include "ipport.h"
#include "tcpport.h"
#include "network_utilities.h"

#define IP4_ADDR(ipaddr, a,b,c,d) ipaddr = \
    htonl((((alt_u32)(a & 0xff) << 24) | ((alt_u32)(b & 0xff) << 16) | \
          ((alt_u32)(c & 0xff) << 8) | (alt_u32)(d & 0xff)))

error_t generate_mac_addr(unsigned char mac_addr[6]);

/*
* get_mac_addr
*
* Read the MAC address in a board specific way. Prompt user to enter serial 
* number to generate MAC address if failed to read from flash.
*
*/

NET *ext_net;

int get_mac_addr(NET net, unsigned char mac_addr[6])
{
    
    mac_addr[0]=0x00;
    mac_addr[1]=0x25;
    mac_addr[2]=0x02;
    mac_addr[3]=0x03;
    mac_addr[4]=0x04;
    mac_addr[5]=0x05;
    mac_addr[6]=0x06;

    // net �������� ��� �������
    ext_net=net;

    return 0;
}

/*
 * get_ip_addr()
 *
 * This routine is called by InterNiche to obtain an IP address for the
 * specified network adapter. Like the MAC address, obtaining an IP address is
 * very system-dependant and therefore this function is exported for the
 * developer to control.
 *
 * In our system, we are either attempting DHCP auto-negotiation of IP address,
 * or we are setting our own static IP, Gateway, and Subnet Mask addresses our
 * self. This routine is where that happens.
 */
int get_ip_addr(alt_iniche_dev *p_dev,
                ip_addr* ipaddr,
                ip_addr* netmask,
                ip_addr* gw,
                int* use_dhcp)
{

    IP4_ADDR(*ipaddr, 192, 168, 0, 55);
    IP4_ADDR(*gw, 192, 168, 0, 1);
    IP4_ADDR(*netmask, 255, 255, 255, 0);

/*
    IP4_ADDR(*ipaddr, IPADDR0, IPADDR1, IPADDR2, IPADDR3);
    IP4_ADDR(*gw, GWADDR0, GWADDR1, GWADDR2, GWADDR3);
    IP4_ADDR(*netmask, MSKADDR0, MSKADDR1, MSKADDR2, MSKADDR3);

#ifdef DHCP_CLIENT
    *use_dhcp = 1;
#else // not DHCP_CLIENT
    *use_dhcp = 0;

    printf("Static IP Address is %d.%d.%d.%d\n",
        ip4_addr1(*ipaddr),
        ip4_addr2(*ipaddr),
        ip4_addr3(*ipaddr),
        ip4_addr4(*ipaddr));
#endif // not DHCP_CLIENT

    // Non-standard API: return 1 for success
*/
    return 1;
}
