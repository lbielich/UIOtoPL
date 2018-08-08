// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

#ifndef XCOUNTERIP_H
#define XCOUNTERIP_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xcounterip_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 Config_BaseAddress;
} XCounterip_Config;
#endif

typedef struct {
    u32 Config_BaseAddress;
    u32 IsReady;
} XCounterip;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XCounterip_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XCounterip_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XCounterip_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XCounterip_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XCounterip_Initialize(XCounterip *InstancePtr, u16 DeviceId);
XCounterip_Config* XCounterip_LookupConfig(u16 DeviceId);
int XCounterip_CfgInitialize(XCounterip *InstancePtr, XCounterip_Config *ConfigPtr);
#else
int XCounterip_Initialize(XCounterip *InstancePtr, const char* InstanceName);
int XCounterip_Release(XCounterip *InstancePtr);
#endif

void XCounterip_Start(XCounterip *InstancePtr);
u32 XCounterip_IsDone(XCounterip *InstancePtr);
u32 XCounterip_IsIdle(XCounterip *InstancePtr);
u32 XCounterip_IsReady(XCounterip *InstancePtr);
void XCounterip_EnableAutoRestart(XCounterip *InstancePtr);
void XCounterip_DisableAutoRestart(XCounterip *InstancePtr);

void XCounterip_Set_beats(XCounterip *InstancePtr, u32 Data);
u32 XCounterip_Get_beats(XCounterip *InstancePtr);
void XCounterip_Set_start_V(XCounterip *InstancePtr, u32 Data);
u32 XCounterip_Get_start_V(XCounterip *InstancePtr);

void XCounterip_InterruptGlobalEnable(XCounterip *InstancePtr);
void XCounterip_InterruptGlobalDisable(XCounterip *InstancePtr);
void XCounterip_InterruptEnable(XCounterip *InstancePtr, u32 Mask);
void XCounterip_InterruptDisable(XCounterip *InstancePtr, u32 Mask);
void XCounterip_InterruptClear(XCounterip *InstancePtr, u32 Mask);
u32 XCounterip_InterruptGetEnabled(XCounterip *InstancePtr);
u32 XCounterip_InterruptGetStatus(XCounterip *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
