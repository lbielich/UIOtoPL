// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="counterip,hls_ip_2017_4,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xczu9eg-ffvb1156-2-i,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=3.036500,HLS_SYN_LAT=-1,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=342,HLS_SYN_LUT=626}" *)

module counterip (
        ap_clk,
        ap_rst_n,
        data_out_TDATA,
        data_out_TVALID,
        data_out_TREADY,
        data_out_TKEEP,
        data_out_TSTRB,
        data_out_TUSER,
        data_out_TLAST,
        data_out_TID,
        data_out_TDEST,
        s_axi_config_AWVALID,
        s_axi_config_AWREADY,
        s_axi_config_AWADDR,
        s_axi_config_WVALID,
        s_axi_config_WREADY,
        s_axi_config_WDATA,
        s_axi_config_WSTRB,
        s_axi_config_ARVALID,
        s_axi_config_ARREADY,
        s_axi_config_ARADDR,
        s_axi_config_RVALID,
        s_axi_config_RREADY,
        s_axi_config_RDATA,
        s_axi_config_RRESP,
        s_axi_config_BVALID,
        s_axi_config_BREADY,
        s_axi_config_BRESP,
        interrupt
);

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_pp0_stage0 = 3'd2;
parameter    ap_ST_fsm_state5 = 3'd4;
parameter    C_S_AXI_CONFIG_DATA_WIDTH = 32;
parameter    C_S_AXI_CONFIG_ADDR_WIDTH = 5;
parameter    C_S_AXI_DATA_WIDTH = 32;

parameter C_S_AXI_CONFIG_WSTRB_WIDTH = (32 / 8);
parameter C_S_AXI_WSTRB_WIDTH = (32 / 8);

input   ap_clk;
input   ap_rst_n;
output  [31:0] data_out_TDATA;
output   data_out_TVALID;
input   data_out_TREADY;
output  [3:0] data_out_TKEEP;
output  [3:0] data_out_TSTRB;
output  [0:0] data_out_TUSER;
output  [0:0] data_out_TLAST;
output  [0:0] data_out_TID;
output  [0:0] data_out_TDEST;
input   s_axi_config_AWVALID;
output   s_axi_config_AWREADY;
input  [C_S_AXI_CONFIG_ADDR_WIDTH - 1:0] s_axi_config_AWADDR;
input   s_axi_config_WVALID;
output   s_axi_config_WREADY;
input  [C_S_AXI_CONFIG_DATA_WIDTH - 1:0] s_axi_config_WDATA;
input  [C_S_AXI_CONFIG_WSTRB_WIDTH - 1:0] s_axi_config_WSTRB;
input   s_axi_config_ARVALID;
output   s_axi_config_ARREADY;
input  [C_S_AXI_CONFIG_ADDR_WIDTH - 1:0] s_axi_config_ARADDR;
output   s_axi_config_RVALID;
input   s_axi_config_RREADY;
output  [C_S_AXI_CONFIG_DATA_WIDTH - 1:0] s_axi_config_RDATA;
output  [1:0] s_axi_config_RRESP;
output   s_axi_config_BVALID;
input   s_axi_config_BREADY;
output  [1:0] s_axi_config_BRESP;
output   interrupt;

reg    ap_rst_n_inv;
wire    ap_start;
reg    ap_done;
reg    ap_idle;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_ready;
reg   [31:0] data_out_data_V_1_data_out;
reg    data_out_data_V_1_vld_in;
wire    data_out_data_V_1_vld_out;
wire    data_out_data_V_1_ack_in;
wire    data_out_data_V_1_ack_out;
reg   [31:0] data_out_data_V_1_payload_A;
reg   [31:0] data_out_data_V_1_payload_B;
reg    data_out_data_V_1_sel_rd;
reg    data_out_data_V_1_sel_wr;
wire    data_out_data_V_1_sel;
wire    data_out_data_V_1_load_A;
wire    data_out_data_V_1_load_B;
reg   [1:0] data_out_data_V_1_state;
wire    data_out_data_V_1_state_cmp_full;
wire   [3:0] data_out_keep_V_1_data_out;
reg    data_out_keep_V_1_vld_in;
wire    data_out_keep_V_1_vld_out;
wire    data_out_keep_V_1_ack_in;
wire    data_out_keep_V_1_ack_out;
reg    data_out_keep_V_1_sel_rd;
wire    data_out_keep_V_1_sel;
reg   [1:0] data_out_keep_V_1_state;
wire   [3:0] data_out_strb_V_1_data_out;
reg    data_out_strb_V_1_vld_in;
wire    data_out_strb_V_1_vld_out;
wire    data_out_strb_V_1_ack_in;
wire    data_out_strb_V_1_ack_out;
reg    data_out_strb_V_1_sel_rd;
wire    data_out_strb_V_1_sel;
reg   [1:0] data_out_strb_V_1_state;
wire   [0:0] data_out_user_V_1_data_out;
reg    data_out_user_V_1_vld_in;
wire    data_out_user_V_1_vld_out;
wire    data_out_user_V_1_ack_in;
wire    data_out_user_V_1_ack_out;
reg    data_out_user_V_1_sel_rd;
wire    data_out_user_V_1_sel;
reg   [1:0] data_out_user_V_1_state;
reg   [0:0] data_out_last_V_1_data_out;
reg    data_out_last_V_1_vld_in;
wire    data_out_last_V_1_vld_out;
wire    data_out_last_V_1_ack_in;
wire    data_out_last_V_1_ack_out;
reg   [0:0] data_out_last_V_1_payload_A;
reg   [0:0] data_out_last_V_1_payload_B;
reg    data_out_last_V_1_sel_rd;
reg    data_out_last_V_1_sel_wr;
wire    data_out_last_V_1_sel;
wire    data_out_last_V_1_load_A;
wire    data_out_last_V_1_load_B;
reg   [1:0] data_out_last_V_1_state;
wire    data_out_last_V_1_state_cmp_full;
wire   [0:0] data_out_id_V_1_data_out;
reg    data_out_id_V_1_vld_in;
wire    data_out_id_V_1_vld_out;
wire    data_out_id_V_1_ack_in;
wire    data_out_id_V_1_ack_out;
reg    data_out_id_V_1_sel_rd;
wire    data_out_id_V_1_sel;
reg   [1:0] data_out_id_V_1_state;
wire   [0:0] data_out_dest_V_1_data_out;
reg    data_out_dest_V_1_vld_in;
wire    data_out_dest_V_1_vld_out;
wire    data_out_dest_V_1_ack_in;
wire    data_out_dest_V_1_ack_out;
reg    data_out_dest_V_1_sel_rd;
wire    data_out_dest_V_1_sel;
reg   [1:0] data_out_dest_V_1_state;
wire   [31:0] beats;
wire   [31:0] start_V;
reg    data_out_TDATA_blk_n;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage0;
reg   [0:0] tmp_3_reg_170;
reg    ap_enable_reg_pp0_iter2;
reg   [0:0] ap_reg_pp0_iter1_tmp_3_reg_170;
reg   [31:0] val_assign_reg_104;
wire    ap_block_state2_pp0_stage0_iter0;
wire    ap_block_state3_pp0_stage0_iter1;
reg    ap_block_state3_io;
wire    ap_block_state4_pp0_stage0_iter2;
reg    ap_block_state4_io;
reg    ap_block_pp0_stage0_11001;
wire   [33:0] r_V_fu_123_p2;
reg   [33:0] r_V_reg_160;
wire   [33:0] r_V_1_fu_129_p2;
reg   [33:0] r_V_1_reg_165;
wire   [0:0] tmp_3_fu_139_p2;
wire   [0:0] val_assign_1_fu_144_p2;
reg   [0:0] val_assign_1_reg_174;
wire   [31:0] i_fu_149_p2;
reg   [31:0] i_reg_179;
reg    ap_enable_reg_pp0_iter0;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state2;
reg   [31:0] ap_phi_mux_val_assign_phi_fu_108_p4;
wire    ap_block_pp0_stage0_01001;
wire   [33:0] lhs_V_fu_119_p1;
wire  signed [33:0] rhs_V_fu_115_p1;
wire  signed [33:0] tmp_1_cast_fu_135_p1;
wire    ap_CS_fsm_state5;
reg    ap_block_state5;
reg   [2:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;

// power-on initialization
initial begin
#0 ap_CS_fsm = 3'd1;
#0 data_out_data_V_1_sel_rd = 1'b0;
#0 data_out_data_V_1_sel_wr = 1'b0;
#0 data_out_data_V_1_state = 2'd0;
#0 data_out_keep_V_1_sel_rd = 1'b0;
#0 data_out_keep_V_1_state = 2'd0;
#0 data_out_strb_V_1_sel_rd = 1'b0;
#0 data_out_strb_V_1_state = 2'd0;
#0 data_out_user_V_1_sel_rd = 1'b0;
#0 data_out_user_V_1_state = 2'd0;
#0 data_out_last_V_1_sel_rd = 1'b0;
#0 data_out_last_V_1_sel_wr = 1'b0;
#0 data_out_last_V_1_state = 2'd0;
#0 data_out_id_V_1_sel_rd = 1'b0;
#0 data_out_id_V_1_state = 2'd0;
#0 data_out_dest_V_1_sel_rd = 1'b0;
#0 data_out_dest_V_1_state = 2'd0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
end

counterip_config_s_axi #(
    .C_S_AXI_ADDR_WIDTH( C_S_AXI_CONFIG_ADDR_WIDTH ),
    .C_S_AXI_DATA_WIDTH( C_S_AXI_CONFIG_DATA_WIDTH ))
counterip_config_s_axi_U(
    .AWVALID(s_axi_config_AWVALID),
    .AWREADY(s_axi_config_AWREADY),
    .AWADDR(s_axi_config_AWADDR),
    .WVALID(s_axi_config_WVALID),
    .WREADY(s_axi_config_WREADY),
    .WDATA(s_axi_config_WDATA),
    .WSTRB(s_axi_config_WSTRB),
    .ARVALID(s_axi_config_ARVALID),
    .ARREADY(s_axi_config_ARREADY),
    .ARADDR(s_axi_config_ARADDR),
    .RVALID(s_axi_config_RVALID),
    .RREADY(s_axi_config_RREADY),
    .RDATA(s_axi_config_RDATA),
    .RRESP(s_axi_config_RRESP),
    .BVALID(s_axi_config_BVALID),
    .BREADY(s_axi_config_BREADY),
    .BRESP(s_axi_config_BRESP),
    .ACLK(ap_clk),
    .ARESET(ap_rst_n_inv),
    .ACLK_EN(1'b1),
    .ap_start(ap_start),
    .interrupt(interrupt),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_idle(ap_idle),
    .beats(beats),
    .start_V(start_V)
);

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_pp0_exit_iter0_state2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            if ((1'b1 == ap_condition_pp0_exit_iter0_state2)) begin
                ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state2);
            end else if ((1'b1 == 1'b1)) begin
                ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        data_out_data_V_1_sel_rd <= 1'b0;
    end else begin
        if (((data_out_data_V_1_ack_out == 1'b1) & (data_out_data_V_1_vld_out == 1'b1))) begin
            data_out_data_V_1_sel_rd <= ~data_out_data_V_1_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        data_out_data_V_1_sel_wr <= 1'b0;
    end else begin
        if (((data_out_data_V_1_ack_in == 1'b1) & (data_out_data_V_1_vld_in == 1'b1))) begin
            data_out_data_V_1_sel_wr <= ~data_out_data_V_1_sel_wr;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        data_out_data_V_1_state <= 2'd0;
    end else begin
        if ((((data_out_data_V_1_state == 2'd2) & (data_out_data_V_1_vld_in == 1'b0)) | ((data_out_data_V_1_state == 2'd3) & (data_out_data_V_1_vld_in == 1'b0) & (data_out_data_V_1_ack_out == 1'b1)))) begin
            data_out_data_V_1_state <= 2'd2;
        end else if ((((data_out_data_V_1_state == 2'd1) & (data_out_data_V_1_ack_out == 1'b0)) | ((data_out_data_V_1_state == 2'd3) & (data_out_data_V_1_ack_out == 1'b0) & (data_out_data_V_1_vld_in == 1'b1)))) begin
            data_out_data_V_1_state <= 2'd1;
        end else if (((~((data_out_data_V_1_vld_in == 1'b0) & (data_out_data_V_1_ack_out == 1'b1)) & ~((data_out_data_V_1_ack_out == 1'b0) & (data_out_data_V_1_vld_in == 1'b1)) & (data_out_data_V_1_state == 2'd3)) | ((data_out_data_V_1_state == 2'd1) & (data_out_data_V_1_ack_out == 1'b1)) | ((data_out_data_V_1_state == 2'd2) & (data_out_data_V_1_vld_in == 1'b1)))) begin
            data_out_data_V_1_state <= 2'd3;
        end else begin
            data_out_data_V_1_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        data_out_dest_V_1_sel_rd <= 1'b0;
    end else begin
        if (((data_out_dest_V_1_ack_out == 1'b1) & (data_out_dest_V_1_vld_out == 1'b1))) begin
            data_out_dest_V_1_sel_rd <= ~data_out_dest_V_1_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        data_out_dest_V_1_state <= 2'd0;
    end else begin
        if ((((data_out_dest_V_1_state == 2'd2) & (data_out_dest_V_1_vld_in == 1'b0)) | ((data_out_dest_V_1_state == 2'd3) & (data_out_dest_V_1_vld_in == 1'b0) & (data_out_dest_V_1_ack_out == 1'b1)))) begin
            data_out_dest_V_1_state <= 2'd2;
        end else if ((((data_out_dest_V_1_state == 2'd1) & (data_out_dest_V_1_ack_out == 1'b0)) | ((data_out_dest_V_1_state == 2'd3) & (data_out_dest_V_1_ack_out == 1'b0) & (data_out_dest_V_1_vld_in == 1'b1)))) begin
            data_out_dest_V_1_state <= 2'd1;
        end else if (((~((data_out_dest_V_1_vld_in == 1'b0) & (data_out_dest_V_1_ack_out == 1'b1)) & ~((data_out_dest_V_1_ack_out == 1'b0) & (data_out_dest_V_1_vld_in == 1'b1)) & (data_out_dest_V_1_state == 2'd3)) | ((data_out_dest_V_1_state == 2'd1) & (data_out_dest_V_1_ack_out == 1'b1)) | ((data_out_dest_V_1_state == 2'd2) & (data_out_dest_V_1_vld_in == 1'b1)))) begin
            data_out_dest_V_1_state <= 2'd3;
        end else begin
            data_out_dest_V_1_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        data_out_id_V_1_sel_rd <= 1'b0;
    end else begin
        if (((data_out_id_V_1_ack_out == 1'b1) & (data_out_id_V_1_vld_out == 1'b1))) begin
            data_out_id_V_1_sel_rd <= ~data_out_id_V_1_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        data_out_id_V_1_state <= 2'd0;
    end else begin
        if ((((data_out_id_V_1_state == 2'd2) & (data_out_id_V_1_vld_in == 1'b0)) | ((data_out_id_V_1_state == 2'd3) & (data_out_id_V_1_vld_in == 1'b0) & (data_out_id_V_1_ack_out == 1'b1)))) begin
            data_out_id_V_1_state <= 2'd2;
        end else if ((((data_out_id_V_1_state == 2'd1) & (data_out_id_V_1_ack_out == 1'b0)) | ((data_out_id_V_1_state == 2'd3) & (data_out_id_V_1_ack_out == 1'b0) & (data_out_id_V_1_vld_in == 1'b1)))) begin
            data_out_id_V_1_state <= 2'd1;
        end else if (((~((data_out_id_V_1_vld_in == 1'b0) & (data_out_id_V_1_ack_out == 1'b1)) & ~((data_out_id_V_1_ack_out == 1'b0) & (data_out_id_V_1_vld_in == 1'b1)) & (data_out_id_V_1_state == 2'd3)) | ((data_out_id_V_1_state == 2'd1) & (data_out_id_V_1_ack_out == 1'b1)) | ((data_out_id_V_1_state == 2'd2) & (data_out_id_V_1_vld_in == 1'b1)))) begin
            data_out_id_V_1_state <= 2'd3;
        end else begin
            data_out_id_V_1_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        data_out_keep_V_1_sel_rd <= 1'b0;
    end else begin
        if (((data_out_keep_V_1_ack_out == 1'b1) & (data_out_keep_V_1_vld_out == 1'b1))) begin
            data_out_keep_V_1_sel_rd <= ~data_out_keep_V_1_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        data_out_keep_V_1_state <= 2'd0;
    end else begin
        if ((((data_out_keep_V_1_state == 2'd2) & (data_out_keep_V_1_vld_in == 1'b0)) | ((data_out_keep_V_1_state == 2'd3) & (data_out_keep_V_1_vld_in == 1'b0) & (data_out_keep_V_1_ack_out == 1'b1)))) begin
            data_out_keep_V_1_state <= 2'd2;
        end else if ((((data_out_keep_V_1_state == 2'd1) & (data_out_keep_V_1_ack_out == 1'b0)) | ((data_out_keep_V_1_state == 2'd3) & (data_out_keep_V_1_ack_out == 1'b0) & (data_out_keep_V_1_vld_in == 1'b1)))) begin
            data_out_keep_V_1_state <= 2'd1;
        end else if (((~((data_out_keep_V_1_vld_in == 1'b0) & (data_out_keep_V_1_ack_out == 1'b1)) & ~((data_out_keep_V_1_ack_out == 1'b0) & (data_out_keep_V_1_vld_in == 1'b1)) & (data_out_keep_V_1_state == 2'd3)) | ((data_out_keep_V_1_state == 2'd1) & (data_out_keep_V_1_ack_out == 1'b1)) | ((data_out_keep_V_1_state == 2'd2) & (data_out_keep_V_1_vld_in == 1'b1)))) begin
            data_out_keep_V_1_state <= 2'd3;
        end else begin
            data_out_keep_V_1_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        data_out_last_V_1_sel_rd <= 1'b0;
    end else begin
        if (((data_out_last_V_1_ack_out == 1'b1) & (data_out_last_V_1_vld_out == 1'b1))) begin
            data_out_last_V_1_sel_rd <= ~data_out_last_V_1_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        data_out_last_V_1_sel_wr <= 1'b0;
    end else begin
        if (((data_out_last_V_1_ack_in == 1'b1) & (data_out_last_V_1_vld_in == 1'b1))) begin
            data_out_last_V_1_sel_wr <= ~data_out_last_V_1_sel_wr;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        data_out_last_V_1_state <= 2'd0;
    end else begin
        if ((((data_out_last_V_1_state == 2'd2) & (data_out_last_V_1_vld_in == 1'b0)) | ((data_out_last_V_1_state == 2'd3) & (data_out_last_V_1_vld_in == 1'b0) & (data_out_last_V_1_ack_out == 1'b1)))) begin
            data_out_last_V_1_state <= 2'd2;
        end else if ((((data_out_last_V_1_state == 2'd1) & (data_out_last_V_1_ack_out == 1'b0)) | ((data_out_last_V_1_state == 2'd3) & (data_out_last_V_1_ack_out == 1'b0) & (data_out_last_V_1_vld_in == 1'b1)))) begin
            data_out_last_V_1_state <= 2'd1;
        end else if (((~((data_out_last_V_1_vld_in == 1'b0) & (data_out_last_V_1_ack_out == 1'b1)) & ~((data_out_last_V_1_ack_out == 1'b0) & (data_out_last_V_1_vld_in == 1'b1)) & (data_out_last_V_1_state == 2'd3)) | ((data_out_last_V_1_state == 2'd1) & (data_out_last_V_1_ack_out == 1'b1)) | ((data_out_last_V_1_state == 2'd2) & (data_out_last_V_1_vld_in == 1'b1)))) begin
            data_out_last_V_1_state <= 2'd3;
        end else begin
            data_out_last_V_1_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        data_out_strb_V_1_sel_rd <= 1'b0;
    end else begin
        if (((data_out_strb_V_1_ack_out == 1'b1) & (data_out_strb_V_1_vld_out == 1'b1))) begin
            data_out_strb_V_1_sel_rd <= ~data_out_strb_V_1_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        data_out_strb_V_1_state <= 2'd0;
    end else begin
        if ((((data_out_strb_V_1_state == 2'd2) & (data_out_strb_V_1_vld_in == 1'b0)) | ((data_out_strb_V_1_state == 2'd3) & (data_out_strb_V_1_vld_in == 1'b0) & (data_out_strb_V_1_ack_out == 1'b1)))) begin
            data_out_strb_V_1_state <= 2'd2;
        end else if ((((data_out_strb_V_1_state == 2'd1) & (data_out_strb_V_1_ack_out == 1'b0)) | ((data_out_strb_V_1_state == 2'd3) & (data_out_strb_V_1_ack_out == 1'b0) & (data_out_strb_V_1_vld_in == 1'b1)))) begin
            data_out_strb_V_1_state <= 2'd1;
        end else if (((~((data_out_strb_V_1_vld_in == 1'b0) & (data_out_strb_V_1_ack_out == 1'b1)) & ~((data_out_strb_V_1_ack_out == 1'b0) & (data_out_strb_V_1_vld_in == 1'b1)) & (data_out_strb_V_1_state == 2'd3)) | ((data_out_strb_V_1_state == 2'd1) & (data_out_strb_V_1_ack_out == 1'b1)) | ((data_out_strb_V_1_state == 2'd2) & (data_out_strb_V_1_vld_in == 1'b1)))) begin
            data_out_strb_V_1_state <= 2'd3;
        end else begin
            data_out_strb_V_1_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        data_out_user_V_1_sel_rd <= 1'b0;
    end else begin
        if (((data_out_user_V_1_ack_out == 1'b1) & (data_out_user_V_1_vld_out == 1'b1))) begin
            data_out_user_V_1_sel_rd <= ~data_out_user_V_1_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        data_out_user_V_1_state <= 2'd0;
    end else begin
        if ((((data_out_user_V_1_state == 2'd2) & (data_out_user_V_1_vld_in == 1'b0)) | ((data_out_user_V_1_state == 2'd3) & (data_out_user_V_1_vld_in == 1'b0) & (data_out_user_V_1_ack_out == 1'b1)))) begin
            data_out_user_V_1_state <= 2'd2;
        end else if ((((data_out_user_V_1_state == 2'd1) & (data_out_user_V_1_ack_out == 1'b0)) | ((data_out_user_V_1_state == 2'd3) & (data_out_user_V_1_ack_out == 1'b0) & (data_out_user_V_1_vld_in == 1'b1)))) begin
            data_out_user_V_1_state <= 2'd1;
        end else if (((~((data_out_user_V_1_vld_in == 1'b0) & (data_out_user_V_1_ack_out == 1'b1)) & ~((data_out_user_V_1_ack_out == 1'b0) & (data_out_user_V_1_vld_in == 1'b1)) & (data_out_user_V_1_state == 2'd3)) | ((data_out_user_V_1_state == 2'd1) & (data_out_user_V_1_ack_out == 1'b1)) | ((data_out_user_V_1_state == 2'd2) & (data_out_user_V_1_vld_in == 1'b1)))) begin
            data_out_user_V_1_state <= 2'd3;
        end else begin
            data_out_user_V_1_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_3_reg_170 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        val_assign_reg_104 <= i_reg_179;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        val_assign_reg_104 <= start_V;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_reg_pp0_iter1_tmp_3_reg_170 <= tmp_3_reg_170;
        tmp_3_reg_170 <= tmp_3_fu_139_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((data_out_data_V_1_load_A == 1'b1)) begin
        data_out_data_V_1_payload_A <= val_assign_reg_104;
    end
end

always @ (posedge ap_clk) begin
    if ((data_out_data_V_1_load_B == 1'b1)) begin
        data_out_data_V_1_payload_B <= val_assign_reg_104;
    end
end

always @ (posedge ap_clk) begin
    if ((data_out_last_V_1_load_A == 1'b1)) begin
        data_out_last_V_1_payload_A <= val_assign_1_reg_174;
    end
end

always @ (posedge ap_clk) begin
    if ((data_out_last_V_1_load_B == 1'b1)) begin
        data_out_last_V_1_payload_B <= val_assign_1_reg_174;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_3_fu_139_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_reg_179 <= i_fu_149_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        r_V_1_reg_165 <= r_V_1_fu_129_p2;
        r_V_reg_160 <= r_V_fu_123_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_3_fu_139_p2 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        val_assign_1_reg_174 <= val_assign_1_fu_144_p2;
    end
end

always @ (*) begin
    if ((tmp_3_fu_139_p2 == 1'd0)) begin
        ap_condition_pp0_exit_iter0_state2 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state2 = 1'b0;
    end
end

always @ (*) begin
    if ((~((data_out_keep_V_1_ack_in == 1'b0) | (data_out_dest_V_1_ack_in == 1'b0) | (data_out_data_V_1_ack_in == 1'b0) | (data_out_id_V_1_ack_in == 1'b0) | (data_out_last_V_1_ack_in == 1'b0) | (data_out_user_V_1_ack_in == 1'b0) | (data_out_strb_V_1_ack_in == 1'b0)) & (1'b1 == ap_CS_fsm_state5))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_3_reg_170 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_mux_val_assign_phi_fu_108_p4 = i_reg_179;
    end else begin
        ap_phi_mux_val_assign_phi_fu_108_p4 = val_assign_reg_104;
    end
end

always @ (*) begin
    if ((~((data_out_keep_V_1_ack_in == 1'b0) | (data_out_dest_V_1_ack_in == 1'b0) | (data_out_data_V_1_ack_in == 1'b0) | (data_out_id_V_1_ack_in == 1'b0) | (data_out_last_V_1_ack_in == 1'b0) | (data_out_user_V_1_ack_in == 1'b0) | (data_out_strb_V_1_ack_in == 1'b0)) & (1'b1 == ap_CS_fsm_state5))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_reg_pp0_iter1_tmp_3_reg_170 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((tmp_3_reg_170 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        data_out_TDATA_blk_n = data_out_data_V_1_state[1'd1];
    end else begin
        data_out_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((data_out_data_V_1_sel == 1'b1)) begin
        data_out_data_V_1_data_out = data_out_data_V_1_payload_B;
    end else begin
        data_out_data_V_1_data_out = data_out_data_V_1_payload_A;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_3_reg_170 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        data_out_data_V_1_vld_in = 1'b1;
    end else begin
        data_out_data_V_1_vld_in = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_3_reg_170 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        data_out_dest_V_1_vld_in = 1'b1;
    end else begin
        data_out_dest_V_1_vld_in = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_3_reg_170 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        data_out_id_V_1_vld_in = 1'b1;
    end else begin
        data_out_id_V_1_vld_in = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_3_reg_170 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        data_out_keep_V_1_vld_in = 1'b1;
    end else begin
        data_out_keep_V_1_vld_in = 1'b0;
    end
end

always @ (*) begin
    if ((data_out_last_V_1_sel == 1'b1)) begin
        data_out_last_V_1_data_out = data_out_last_V_1_payload_B;
    end else begin
        data_out_last_V_1_data_out = data_out_last_V_1_payload_A;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_3_reg_170 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        data_out_last_V_1_vld_in = 1'b1;
    end else begin
        data_out_last_V_1_vld_in = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_3_reg_170 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        data_out_strb_V_1_vld_in = 1'b1;
    end else begin
        data_out_strb_V_1_vld_in = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_3_reg_170 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        data_out_user_V_1_vld_in = 1'b1;
    end else begin
        data_out_user_V_1_vld_in = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((1'b0 == ap_block_pp0_stage0_subdone) & (tmp_3_fu_139_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1)) & ~((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((((1'b0 == ap_block_pp0_stage0_subdone) & (tmp_3_fu_139_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state5 : begin
            if ((~((data_out_keep_V_1_ack_in == 1'b0) | (data_out_dest_V_1_ack_in == 1'b0) | (data_out_data_V_1_ack_in == 1'b0) | (data_out_id_V_1_ack_in == 1'b0) | (data_out_last_V_1_ack_in == 1'b0) | (data_out_user_V_1_ack_in == 1'b0) | (data_out_strb_V_1_ack_in == 1'b0)) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd2];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((1'b1 == ap_block_state4_io) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((1'b1 == ap_block_state3_io) & (ap_enable_reg_pp0_iter1 == 1'b1)));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((1'b1 == ap_block_state4_io) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((1'b1 == ap_block_state3_io) & (ap_enable_reg_pp0_iter1 == 1'b1)));
end

assign ap_block_state2_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state3_io = ((tmp_3_reg_170 == 1'd1) & (data_out_data_V_1_ack_in == 1'b0));
end

assign ap_block_state3_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state4_io = ((ap_reg_pp0_iter1_tmp_3_reg_170 == 1'd1) & (data_out_data_V_1_ack_in == 1'b0));
end

assign ap_block_state4_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state5 = ((data_out_keep_V_1_ack_in == 1'b0) | (data_out_dest_V_1_ack_in == 1'b0) | (data_out_data_V_1_ack_in == 1'b0) | (data_out_id_V_1_ack_in == 1'b0) | (data_out_last_V_1_ack_in == 1'b0) | (data_out_user_V_1_ack_in == 1'b0) | (data_out_strb_V_1_ack_in == 1'b0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign data_out_TDATA = data_out_data_V_1_data_out;

assign data_out_TDEST = data_out_dest_V_1_data_out;

assign data_out_TID = data_out_id_V_1_data_out;

assign data_out_TKEEP = data_out_keep_V_1_data_out;

assign data_out_TLAST = data_out_last_V_1_data_out;

assign data_out_TSTRB = data_out_strb_V_1_data_out;

assign data_out_TUSER = data_out_user_V_1_data_out;

assign data_out_TVALID = data_out_dest_V_1_state[1'd0];

assign data_out_data_V_1_ack_in = data_out_data_V_1_state[1'd1];

assign data_out_data_V_1_ack_out = data_out_TREADY;

assign data_out_data_V_1_load_A = (~data_out_data_V_1_sel_wr & data_out_data_V_1_state_cmp_full);

assign data_out_data_V_1_load_B = (data_out_data_V_1_state_cmp_full & data_out_data_V_1_sel_wr);

assign data_out_data_V_1_sel = data_out_data_V_1_sel_rd;

assign data_out_data_V_1_state_cmp_full = ((data_out_data_V_1_state != 2'd1) ? 1'b1 : 1'b0);

assign data_out_data_V_1_vld_out = data_out_data_V_1_state[1'd0];

assign data_out_dest_V_1_ack_in = data_out_dest_V_1_state[1'd1];

assign data_out_dest_V_1_ack_out = data_out_TREADY;

assign data_out_dest_V_1_data_out = 1'd0;

assign data_out_dest_V_1_sel = data_out_dest_V_1_sel_rd;

assign data_out_dest_V_1_vld_out = data_out_dest_V_1_state[1'd0];

assign data_out_id_V_1_ack_in = data_out_id_V_1_state[1'd1];

assign data_out_id_V_1_ack_out = data_out_TREADY;

assign data_out_id_V_1_data_out = 1'd0;

assign data_out_id_V_1_sel = data_out_id_V_1_sel_rd;

assign data_out_id_V_1_vld_out = data_out_id_V_1_state[1'd0];

assign data_out_keep_V_1_ack_in = data_out_keep_V_1_state[1'd1];

assign data_out_keep_V_1_ack_out = data_out_TREADY;

assign data_out_keep_V_1_data_out = 4'd15;

assign data_out_keep_V_1_sel = data_out_keep_V_1_sel_rd;

assign data_out_keep_V_1_vld_out = data_out_keep_V_1_state[1'd0];

assign data_out_last_V_1_ack_in = data_out_last_V_1_state[1'd1];

assign data_out_last_V_1_ack_out = data_out_TREADY;

assign data_out_last_V_1_load_A = (~data_out_last_V_1_sel_wr & data_out_last_V_1_state_cmp_full);

assign data_out_last_V_1_load_B = (data_out_last_V_1_state_cmp_full & data_out_last_V_1_sel_wr);

assign data_out_last_V_1_sel = data_out_last_V_1_sel_rd;

assign data_out_last_V_1_state_cmp_full = ((data_out_last_V_1_state != 2'd1) ? 1'b1 : 1'b0);

assign data_out_last_V_1_vld_out = data_out_last_V_1_state[1'd0];

assign data_out_strb_V_1_ack_in = data_out_strb_V_1_state[1'd1];

assign data_out_strb_V_1_ack_out = data_out_TREADY;

assign data_out_strb_V_1_data_out = 4'd0;

assign data_out_strb_V_1_sel = data_out_strb_V_1_sel_rd;

assign data_out_strb_V_1_vld_out = data_out_strb_V_1_state[1'd0];

assign data_out_user_V_1_ack_in = data_out_user_V_1_state[1'd1];

assign data_out_user_V_1_ack_out = data_out_TREADY;

assign data_out_user_V_1_data_out = 1'd0;

assign data_out_user_V_1_sel = data_out_user_V_1_sel_rd;

assign data_out_user_V_1_vld_out = data_out_user_V_1_state[1'd0];

assign i_fu_149_p2 = (ap_phi_mux_val_assign_phi_fu_108_p4 + 32'd1);

assign lhs_V_fu_119_p1 = start_V;

assign r_V_1_fu_129_p2 = ($signed(r_V_fu_123_p2) + $signed(34'd17179869183));

assign r_V_fu_123_p2 = ($signed(lhs_V_fu_119_p1) + $signed(rhs_V_fu_115_p1));

assign rhs_V_fu_115_p1 = $signed(beats);

assign tmp_1_cast_fu_135_p1 = $signed(ap_phi_mux_val_assign_phi_fu_108_p4);

assign tmp_3_fu_139_p2 = (($signed(tmp_1_cast_fu_135_p1) < $signed(r_V_reg_160)) ? 1'b1 : 1'b0);

assign val_assign_1_fu_144_p2 = ((tmp_1_cast_fu_135_p1 == r_V_1_reg_165) ? 1'b1 : 1'b0);

endmodule //counterip
