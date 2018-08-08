// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

// config
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read)
//        bit 7  - auto_restart (Read/Write)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0  - Channel 0 (ap_done)
//        bit 1  - Channel 1 (ap_ready)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0  - Channel 0 (ap_done)
//        bit 1  - Channel 1 (ap_ready)
//        others - reserved
// 0x10 : Data signal of beats
//        bit 31~0 - beats[31:0] (Read/Write)
// 0x14 : reserved
// 0x18 : Data signal of start_V
//        bit 31~0 - start_V[31:0] (Read/Write)
// 0x1c : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XCOUNTERIP_CONFIG_ADDR_AP_CTRL      0x00
#define XCOUNTERIP_CONFIG_ADDR_GIE          0x04
#define XCOUNTERIP_CONFIG_ADDR_IER          0x08
#define XCOUNTERIP_CONFIG_ADDR_ISR          0x0c
#define XCOUNTERIP_CONFIG_ADDR_BEATS_DATA   0x10
#define XCOUNTERIP_CONFIG_BITS_BEATS_DATA   32
#define XCOUNTERIP_CONFIG_ADDR_START_V_DATA 0x18
#define XCOUNTERIP_CONFIG_BITS_START_V_DATA 32

