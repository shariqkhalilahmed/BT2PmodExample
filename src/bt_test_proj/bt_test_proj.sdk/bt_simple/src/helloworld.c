/******************************************************************************
*
* Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "xuartlite_l.h"

// base address of uart conencted to bluetooth
#define BT_BASEADDRESS 0x40610000
#define STD_BASEADDRESS 0x40600000
#define ECHO_MODE 0

void sleep(unsigned int a) {
	unsigned int i;
	for (i = 0; i < a; i++) {

	}
}

void outbyte_bt(char c) {
	 XUartLite_SendByte(BT_BASEADDRESS, c);
}

void print_bt(const char8 *ptr)
{
#ifdef BT_BASEADDRESS
  while (*ptr != (char8)0) {
    outbyte_bt (*ptr);
	*ptr++;
  }
#else
(void)ptr;
#endif
}

int main()
{
    init_platform();

    print("Hello World\n\r");

    /*
    while(1){
    	print("Hello USB\n\r");
    	print_bt("Hello BT\n\r");
    	sleep(10000000);
    }
    */

    char user_byte = 0;

    // polling both uarts for new data
    while(1) {
    	if(!XUartLite_IsReceiveEmpty(STD_BASEADDRESS)) {
    		// send byte to from usb to bluetooth
    		user_byte = (u8)XUartLite_ReadReg(STD_BASEADDRESS, XUL_RX_FIFO_OFFSET);
    		XUartLite_SendByte(BT_BASEADDRESS, user_byte);
    		// if echo is on, send back to usb as well
    		if (ECHO_MODE == 1) {
    			XUartLite_SendByte(STD_BASEADDRESS, user_byte);
    		}
    	}

    	if(!XUartLite_IsReceiveEmpty(BT_BASEADDRESS)) {
    		// send byte from bluetooth to usb
    		user_byte = (u8)XUartLite_ReadReg(BT_BASEADDRESS, XUL_RX_FIFO_OFFSET);
    		XUartLite_SendByte(STD_BASEADDRESS, user_byte);
    		if (ECHO_MODE == 1) {
    			XUartLite_SendByte(BT_BASEADDRESS, user_byte);
    		}
    	}
    }

    cleanup_platform();
    return 0;
}
