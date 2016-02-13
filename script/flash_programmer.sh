#!/bin/sh
#
# This file was automatically generated.
#
# It can be overwritten by nios2-flash-programmer-generate or nios2-flash-programmer-gui.
#

#
# Converting SOF File: D:\test\asvm\DE2_115_WEB_SERVER.sof to: "..\flash/DE2_115_WEB_SERVER_cfi_flash.flash"
#
$SOPC_KIT_NIOS2/bin/sof2flash --input="D:/test/asvm/DE2_115_WEB_SERVER.sof" --output="../flash/DE2_115_WEB_SERVER_cfi_flash.flash" --offset=0x0 --verbose 

#
# Programming File: "..\flash/DE2_115_WEB_SERVER_cfi_flash.flash" To Device: cfi_flash
#
$SOPC_KIT_NIOS2/bin/nios2-flash-programmer "../flash/DE2_115_WEB_SERVER_cfi_flash.flash" --base=0xa800000 --sidp=0x9000140 --id=0x0 --timestamp=1339177190 --device=1 --instance=0 '--cable=USB-Blaster on localhost [USB-0]' --program --verbose 

