; ModuleID = 'E:/smez/Training_to_FAEs/hls_interrupt/counterip/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@llvm_global_ctors_1 = appending global [0 x void ()*] zeroinitializer
@llvm_global_ctors_0 = appending global [0 x i32] zeroinitializer
@counterip_str = internal unnamed_addr constant [10 x i8] c"counterip\00"
@p_str5 = private unnamed_addr constant [17 x i8] c"counterip_label0\00", align 1
@p_str4 = private unnamed_addr constant [5 x i8] c"both\00", align 1
@p_str3 = private unnamed_addr constant [5 x i8] c"axis\00", align 1
@p_str2 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define void @counterip(i32* %data_out_data_V, i4* %data_out_keep_V, i4* %data_out_strb_V, i1* %data_out_user_V, i1* %data_out_last_V, i1* %data_out_id_V, i1* %data_out_dest_V, i32 %beats, i32 %start_V) {
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %data_out_data_V), !map !59
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %data_out_keep_V), !map !63
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %data_out_strb_V), !map !67
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %data_out_user_V), !map !71
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %data_out_last_V), !map !75
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %data_out_id_V), !map !79
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %data_out_dest_V), !map !83
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %beats), !map !87
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %start_V), !map !93
  call void (...)* @_ssdm_op_SpecTopModule([10 x i8]* @counterip_str) nounwind
  %start_V_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %start_V)
  %beats_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %beats)
  call void (...)* @_ssdm_op_SpecInterface(i32 %start_V, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [7 x i8]* @p_str2, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %beats, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [7 x i8]* @p_str2, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [7 x i8]* @p_str2, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %data_out_data_V, i4* %data_out_keep_V, i4* %data_out_strb_V, i1* %data_out_user_V, i1* %data_out_last_V, i1* %data_out_id_V, i1* %data_out_dest_V, [5 x i8]* @p_str3, i32 1, i32 1, [5 x i8]* @p_str4, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  %rhs_V = sext i32 %beats_read to i34
  %lhs_V = zext i32 %start_V_read to i34
  %r_V = add nsw i34 %lhs_V, %rhs_V
  %r_V_1 = add i34 %r_V, -1
  br label %1

; <label>:1                                       ; preds = %2, %0
  %val_assign = phi i32 [ %start_V_read, %0 ], [ %i, %2 ]
  %tmp_1_cast = sext i32 %val_assign to i34
  %tmp_3 = icmp slt i34 %tmp_1_cast, %r_V
  br i1 %tmp_3, label %2, label %3

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([17 x i8]* @p_str5) nounwind
  %tmp_2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([17 x i8]* @p_str5)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  %val_assign_1 = icmp eq i34 %tmp_1_cast, %r_V_1
  call void @_ssdm_op_Write.axis.volatile.i32P.i4P.i4P.i1P.i1P.i1P.i1P(i32* %data_out_data_V, i4* %data_out_keep_V, i4* %data_out_strb_V, i1* %data_out_user_V, i1* %data_out_last_V, i1* %data_out_id_V, i1* %data_out_dest_V, i32 %val_assign, i4 -1, i4 0, i1 false, i1 %val_assign_1, i1 false, i1 false)
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([17 x i8]* @p_str5, i32 %tmp_2)
  %i = add nsw i32 %val_assign, 1
  br label %1

; <label>:3                                       ; preds = %1
  ret void
}

define weak void @_ssdm_op_Write.axis.volatile.i32P.i4P.i4P.i1P.i1P.i1P.i1P(i32*, i4*, i4*, i1*, i1*, i1*, i1*, i32, i4, i4, i1, i1, i1, i1) {
entry:
  store i32 %7, i32* %0
  store i4 %8, i4* %1
  store i4 %9, i4* %2
  store i1 %10, i1* %3
  store i1 %11, i1* %4
  store i1 %12, i1* %5
  store i1 %13, i1* %6
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_Read.s_axilite.i32(i32) {
entry:
  ret i32 %0
}

!opencl.kernels = !{!0, !7, !7, !13, !13, !19, !7, !7, !13, !13, !22, !22, !24, !13, !26, !32, !32, !13, !34, !13, !13, !13, !37, !37, !39, !39, !7, !7, !13, !41, !13, !43, !45, !13, !13, !13, !37, !37, !47, !47, !13, !49, !13, !13, !13, !13, !13, !13, !13, !13}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!52}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"axi_if*", metadata !"int", metadata !"ap_uint<32>"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"data_out", metadata !"beats", metadata !"start"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"val"}
!13 = metadata !{null, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !6}
!14 = metadata !{metadata !"kernel_arg_addr_space"}
!15 = metadata !{metadata !"kernel_arg_access_qual"}
!16 = metadata !{metadata !"kernel_arg_type"}
!17 = metadata !{metadata !"kernel_arg_type_qual"}
!18 = metadata !{metadata !"kernel_arg_name"}
!19 = metadata !{null, metadata !8, metadata !9, metadata !20, metadata !11, metadata !21, metadata !6}
!20 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<4> &"}
!21 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!22 = metadata !{null, metadata !8, metadata !9, metadata !23, metadata !11, metadata !12, metadata !6}
!23 = metadata !{metadata !"kernel_arg_type", metadata !"_Bool"}
!24 = metadata !{null, metadata !8, metadata !9, metadata !25, metadata !11, metadata !21, metadata !6}
!25 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<1> &"}
!26 = metadata !{null, metadata !27, metadata !28, metadata !29, metadata !30, metadata !31, metadata !6}
!27 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!28 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!29 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<34, true> &", metadata !"int"}
!30 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!31 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"i_op"}
!32 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !33, metadata !6}
!33 = metadata !{metadata !"kernel_arg_name", metadata !"op"}
!34 = metadata !{null, metadata !27, metadata !28, metadata !35, metadata !30, metadata !36, metadata !6}
!35 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<34, true> &", metadata !"const ap_int_base<32, true> &"}
!36 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"op2"}
!37 = metadata !{null, metadata !8, metadata !9, metadata !38, metadata !11, metadata !33, metadata !6}
!38 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &"}
!39 = metadata !{null, metadata !8, metadata !9, metadata !40, metadata !11, metadata !33, metadata !6}
!40 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<34, true> &"}
!41 = metadata !{null, metadata !8, metadata !9, metadata !42, metadata !11, metadata !21, metadata !6}
!42 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int<32> &"}
!43 = metadata !{null, metadata !27, metadata !28, metadata !44, metadata !30, metadata !31, metadata !6}
!44 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, false> &", metadata !"int"}
!45 = metadata !{null, metadata !27, metadata !28, metadata !46, metadata !30, metadata !36, metadata !6}
!46 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, false> &", metadata !"const ap_int_base<32, true> &"}
!47 = metadata !{null, metadata !8, metadata !9, metadata !48, metadata !11, metadata !33, metadata !6}
!48 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, false> &"}
!49 = metadata !{null, metadata !8, metadata !9, metadata !50, metadata !11, metadata !51, metadata !6}
!50 = metadata !{metadata !"kernel_arg_type", metadata !"const struct ap_axis<32, 1, 1, 1> &"}
!51 = metadata !{metadata !"kernel_arg_name", metadata !""}
!52 = metadata !{metadata !53, [0 x i32]* @llvm_global_ctors_0}
!53 = metadata !{metadata !54}
!54 = metadata !{i32 0, i32 31, metadata !55}
!55 = metadata !{metadata !56}
!56 = metadata !{metadata !"llvm.global_ctors.0", metadata !57, metadata !"", i32 0, i32 31}
!57 = metadata !{metadata !58}
!58 = metadata !{i32 0, i32 0, i32 1}
!59 = metadata !{metadata !60}
!60 = metadata !{i32 0, i32 31, metadata !61}
!61 = metadata !{metadata !62}
!62 = metadata !{metadata !"data_out.data.V", metadata !57, metadata !"int32", i32 0, i32 31}
!63 = metadata !{metadata !64}
!64 = metadata !{i32 0, i32 3, metadata !65}
!65 = metadata !{metadata !66}
!66 = metadata !{metadata !"data_out.keep.V", metadata !57, metadata !"uint4", i32 0, i32 3}
!67 = metadata !{metadata !68}
!68 = metadata !{i32 0, i32 3, metadata !69}
!69 = metadata !{metadata !70}
!70 = metadata !{metadata !"data_out.strb.V", metadata !57, metadata !"uint4", i32 0, i32 3}
!71 = metadata !{metadata !72}
!72 = metadata !{i32 0, i32 0, metadata !73}
!73 = metadata !{metadata !74}
!74 = metadata !{metadata !"data_out.user.V", metadata !57, metadata !"uint1", i32 0, i32 0}
!75 = metadata !{metadata !76}
!76 = metadata !{i32 0, i32 0, metadata !77}
!77 = metadata !{metadata !78}
!78 = metadata !{metadata !"data_out.last.V", metadata !57, metadata !"uint1", i32 0, i32 0}
!79 = metadata !{metadata !80}
!80 = metadata !{i32 0, i32 0, metadata !81}
!81 = metadata !{metadata !82}
!82 = metadata !{metadata !"data_out.id.V", metadata !57, metadata !"uint1", i32 0, i32 0}
!83 = metadata !{metadata !84}
!84 = metadata !{i32 0, i32 0, metadata !85}
!85 = metadata !{metadata !86}
!86 = metadata !{metadata !"data_out.dest.V", metadata !57, metadata !"uint1", i32 0, i32 0}
!87 = metadata !{metadata !88}
!88 = metadata !{i32 0, i32 31, metadata !89}
!89 = metadata !{metadata !90}
!90 = metadata !{metadata !"beats", metadata !91, metadata !"int", i32 0, i32 31}
!91 = metadata !{metadata !92}
!92 = metadata !{i32 0, i32 0, i32 0}
!93 = metadata !{metadata !94}
!94 = metadata !{i32 0, i32 31, metadata !95}
!95 = metadata !{metadata !96}
!96 = metadata !{metadata !"start.V", metadata !91, metadata !"uint32", i32 0, i32 31}
