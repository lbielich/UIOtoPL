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

#define SIZE 1024

int main(int argc, char **argv)
{

    int uiofd,i;
    printf("Hello World!\n");

    uiofd = open("/dev/uio0", O_RDWR);
    if (uiofd < 0) {
        perror("open");
        exit(EXIT_FAILURE);
    }

    char* mmappedData = mmap(NULL, SIZE, PROT_READ | PROT_WRITE,MAP_SHARED , uiofd, 0);
    if(mmappedData==MAP_FAILED)
      {perror("mmap");
    }

    //Notice you can close after it's mmap'd
    close(uiofd);

    for(i=0;i<SIZE;i++) {
       mmappedData[i] =  i;  //This is a write to BRAM
       printf("virtual address = %x \n", (char *) mmappedData + i); // Notice the virtual address != physical address
       printf("data = %x \n", mmappedData[i]); //This is a read from BRAM
    }

    //Unmap to prevent memory leak
    munmap(mmappedData, SIZE);


    return 0;
}
