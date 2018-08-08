set C_TypeInfoList {{ 
"counterip" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"data_out": [[],{ "pointer": "0"}] }, {"beats": [[], {"scalar": "int"}] }, {"start": [[],"1"] }],[],""], 
"1": [ "ap_uint<32>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 32}}]],""]}}], 
"0": [ "axi_if", {"typedef": [[[],"2"],""]}], 
"2": [ "ap_axis<32, 1, 1, 1>", {"struct": [[],[{"D":[[], {"scalar": { "int": 32}}]},{"U":[[], {"scalar": { "int": 1}}]},{"TI":[[], {"scalar": { "int": 1}}]},{"TD":[[], {"scalar": { "int": 1}}]}],[{ "data": [[], "3"]},{ "keep": [[], "4"]},{ "strb": [[], "4"]},{ "user": [[], "5"]},{ "last": [[], "5"]},{ "id": [[], "5"]},{ "dest": [[], "5"]}],""]}], 
"5": [ "ap_uint<1>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 1}}]],""]}}], 
"4": [ "ap_uint<4>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 4}}]],""]}}], 
"3": [ "ap_int<32>", {"hls_type": {"ap_int": [[[[], {"scalar": { "int": 32}}]],""]}}]
}}
set moduleName counterip
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {counterip}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_out_data_V int 32 regular {axi_s 1 volatile  { data_out Data } }  }
	{ data_out_keep_V int 4 regular {axi_s 1 volatile  { data_out Keep } }  }
	{ data_out_strb_V int 4 regular {axi_s 1 volatile  { data_out Strb } }  }
	{ data_out_user_V int 1 regular {axi_s 1 volatile  { data_out User } }  }
	{ data_out_last_V int 1 regular {axi_s 1 volatile  { data_out Last } }  }
	{ data_out_id_V int 1 regular {axi_s 1 volatile  { data_out ID } }  }
	{ data_out_dest_V int 1 regular {axi_s 1 volatile  { data_out Dest } }  }
	{ beats int 32 regular {axi_slave 0}  }
	{ start_V int 32 regular {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_out_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "data_out.data.V","cData": "int32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "data_out_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "data_out.keep.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "data_out_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "data_out.strb.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "data_out_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "data_out.user.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "data_out_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "data_out.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "data_out_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "data_out.id.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "data_out_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "data_out.dest.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "beats", "interface" : "axi_slave", "bundle":"config","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "beats","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "start_V", "interface" : "axi_slave", "bundle":"config","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "start.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":24}, "offset_end" : {"in":31}} ]}
# RTL Port declarations: 
set portNum 29
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ data_out_TDATA sc_out sc_lv 32 signal 0 } 
	{ data_out_TVALID sc_out sc_logic 1 outvld 6 } 
	{ data_out_TREADY sc_in sc_logic 1 outacc 6 } 
	{ data_out_TKEEP sc_out sc_lv 4 signal 1 } 
	{ data_out_TSTRB sc_out sc_lv 4 signal 2 } 
	{ data_out_TUSER sc_out sc_lv 1 signal 3 } 
	{ data_out_TLAST sc_out sc_lv 1 signal 4 } 
	{ data_out_TID sc_out sc_lv 1 signal 5 } 
	{ data_out_TDEST sc_out sc_lv 1 signal 6 } 
	{ s_axi_config_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_config_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_config_AWADDR sc_in sc_lv 5 signal -1 } 
	{ s_axi_config_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_config_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_config_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_config_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_config_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_config_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_config_ARADDR sc_in sc_lv 5 signal -1 } 
	{ s_axi_config_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_config_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_config_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_config_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_config_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_config_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_config_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_config_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "config", "role": "AWADDR" },"address":[{"name":"counterip","role":"start","value":"0","valid_bit":"0"},{"name":"counterip","role":"continue","value":"0","valid_bit":"4"},{"name":"counterip","role":"auto_start","value":"0","valid_bit":"7"},{"name":"beats","role":"data","value":"16"},{"name":"start_V","role":"data","value":"24"}] },
	{ "name": "s_axi_config_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "config", "role": "AWVALID" } },
	{ "name": "s_axi_config_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "config", "role": "AWREADY" } },
	{ "name": "s_axi_config_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "config", "role": "WVALID" } },
	{ "name": "s_axi_config_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "config", "role": "WREADY" } },
	{ "name": "s_axi_config_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "config", "role": "WDATA" } },
	{ "name": "s_axi_config_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "config", "role": "WSTRB" } },
	{ "name": "s_axi_config_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "config", "role": "ARADDR" },"address":[{"name":"counterip","role":"start","value":"0","valid_bit":"0"},{"name":"counterip","role":"done","value":"0","valid_bit":"1"},{"name":"counterip","role":"idle","value":"0","valid_bit":"2"},{"name":"counterip","role":"ready","value":"0","valid_bit":"3"},{"name":"counterip","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_config_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "config", "role": "ARVALID" } },
	{ "name": "s_axi_config_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "config", "role": "ARREADY" } },
	{ "name": "s_axi_config_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "config", "role": "RVALID" } },
	{ "name": "s_axi_config_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "config", "role": "RREADY" } },
	{ "name": "s_axi_config_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "config", "role": "RDATA" } },
	{ "name": "s_axi_config_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "config", "role": "RRESP" } },
	{ "name": "s_axi_config_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "config", "role": "BVALID" } },
	{ "name": "s_axi_config_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "config", "role": "BREADY" } },
	{ "name": "s_axi_config_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "config", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "config", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "data_out_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_out_data_V", "role": "default" }} , 
 	{ "name": "data_out_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "data_out_dest_V", "role": "default" }} , 
 	{ "name": "data_out_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "data_out_dest_V", "role": "default" }} , 
 	{ "name": "data_out_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data_out_keep_V", "role": "default" }} , 
 	{ "name": "data_out_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data_out_strb_V", "role": "default" }} , 
 	{ "name": "data_out_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data_out_user_V", "role": "default" }} , 
 	{ "name": "data_out_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data_out_last_V", "role": "default" }} , 
 	{ "name": "data_out_TID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data_out_id_V", "role": "default" }} , 
 	{ "name": "data_out_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data_out_dest_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "counterip",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "data_out_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "data_out_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_out_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "data_out_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "data_out_user_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "data_out_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "data_out_id_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "data_out_dest_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "beats", "Type" : "None", "Direction" : "I"},
			{"Name" : "start_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.counterip_config_s_axi_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	counterip {
		data_out_data_V {Type O LastRead -1 FirstWrite 2}
		data_out_keep_V {Type O LastRead -1 FirstWrite 2}
		data_out_strb_V {Type O LastRead -1 FirstWrite 2}
		data_out_user_V {Type O LastRead -1 FirstWrite 2}
		data_out_last_V {Type O LastRead -1 FirstWrite 2}
		data_out_id_V {Type O LastRead -1 FirstWrite 2}
		data_out_dest_V {Type O LastRead -1 FirstWrite 2}
		beats {Type I LastRead 0 FirstWrite -1}
		start_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	data_out_data_V { axis {  { data_out_TDATA out_data 1 32 } } }
	data_out_keep_V { axis {  { data_out_TKEEP out_data 1 4 } } }
	data_out_strb_V { axis {  { data_out_TSTRB out_data 1 4 } } }
	data_out_user_V { axis {  { data_out_TUSER out_data 1 1 } } }
	data_out_last_V { axis {  { data_out_TLAST out_data 1 1 } } }
	data_out_id_V { axis {  { data_out_TID out_data 1 1 } } }
	data_out_dest_V { axis {  { data_out_TVALID out_vld 1 1 }  { data_out_TREADY out_acc 0 1 }  { data_out_TDEST out_data 1 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
