/*
* Copyright (C) 2013 - 2016  Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person
* obtaining a copy of this software and associated documentation
* files (the "Software"), to deal in the Software without restriction,
* including without limitation the rights to use, copy, modify, merge,
* publish, distribute, sublicense, and/or sell copies of the Software,
* and to permit persons to whom the Software is furnished to do so,
* subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included
* in all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or (b) that interact
* with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
* IN NO EVENT SHALL XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
* CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in this
* Software without prior written authorization from Xilinx.
*
*/

#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <poll.h>
#include <fcntl.h>
#include <errno.h>
#include <unistd.h>
#include <sys/mman.h>
#include "xcounterip.h"
#include <sys/wait.h>

#define SIZE 0x10000
#define START 0x0
#define DEVICE "counterip"




int main(int argc, char **argv)
{

    //int uiofd;
	  int idle = 0 ;
	  int ready = 0;
	  int done = 0;
    printf("Hello World!\n");
    char *device = DEVICE;
    int status = 0;
    int icount = 1;
    int reenable = 1;
    int err;
    pid_t pid, ch_pid;
    XCounterip_uio_info *InfoPtr2;// = &uio_info;


    const int count = SIZE;
    const int start_val = START;

    if (argc > 1) {
      device = argv[1];
    }


    XCounterip *myip = malloc(sizeof(XCounterip));

    printf("Initialize Counter IP \n");
    XCounterip_Initialize(myip,device,&uio_info);

    //Waiting for Idle and ready to be asserted before proceeding
    while((ready==0) || (idle==0)) {
    	idle = XCounterip_IsIdle(myip);
    	printf("idle = %d\n", idle);
    	ready = XCounterip_IsReady(myip);
    	printf("ready = %d\n", ready);
    }


    printf("Enabling Interrupts \n");
    XCounterip_InterruptGlobalEnable(myip);
    XCounterip_InterruptEnable(myip, 0x1);

    printf("Set number of beats from ip to: %d \n", count);
    XCounterip_Set_beats(myip, count);
    
    printf("Set start count value to: %d \n", start_val);
    XCounterip_Set_start_V(myip, start_val);
 

    InfoPtr2 = &uio_info;
    fflush(stdout);
    pid = fork();
    if(pid==0) {
      printf("This is the child. after the fork pid= %d \n", getpid());
      printf("Start the IP \n");
      XCounterip_Start(myip);
    }
    if(pid > 0) {

    	printf("This is the parent. Child id= %d \n", pid);
      //wait for interrupt
    	err = read(InfoPtr2->uio_fd,(void *)&icount, sizeof(int));
    	if (err != 4) {
    	    	perror("uio read error\n");
    	}


      while(status == 0 || done == 0) {
       	status = XCounterip_InterruptGetStatus(myip);
       	printf("Interrupt Status = %d\n", status);
       	done = XCounterip_IsDone(myip) || done; //done can only be read once
       	printf("done = %d\n", done);
      }

      XCounterip_InterruptClear(myip, 0x01);

    	status = XCounterip_InterruptGetStatus(myip);
    	printf("Interrupt Status = %d\n", status);
    	status = XCounterip_InterruptGetStatus(myip);
    	printf("Interrupt Status = %d\n", status);

    	write(InfoPtr2->uio_fd,(void *)&reenable, sizeof(int));
    	printf("Parent Exiting \n");

    	XCounterip_Release(myip,&uio_info);

    	exit(0);

    }




    /*
	ready = 0;
	idle = 0;
    while((ready==0) || (idle==0)) {
    	idle = XCounterip_IsIdle(myip);
    	printf("idle = %d\n", idle);
    	ready = XCounterip_IsReady(myip);
    	printf("ready = %d\n", ready);
    }*/



    //Waiting for child to end
    wait(NULL);

    exit(EXIT_SUCCESS);
}
