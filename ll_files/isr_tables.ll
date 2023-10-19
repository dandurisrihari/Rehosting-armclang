; ModuleID = '../bc_files/isr_tables.bc'
source_filename = "/home/sri/zephyrproject/zephyr/arch/common/isr_tables.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-arm-none-eabi"

%struct.int_list_header = type { i32, i32 }
%struct._isr_table_entry = type { ptr, ptr }

@_iheader = hidden global %struct.int_list_header { i32 31, i32 0 }, section ".irq_info", align 4, !dbg !0
@_irq_vector_table = hidden global [31 x i32] [i32 ptrtoint (ptr @_isr_wrapper to i32), i32 ptrtoint (ptr @_isr_wrapper to i32), i32 ptrtoint (ptr @_isr_wrapper to i32), i32 ptrtoint (ptr @_isr_wrapper to i32), i32 ptrtoint (ptr @_isr_wrapper to i32), i32 ptrtoint (ptr @_isr_wrapper to i32), i32 ptrtoint (ptr @_isr_wrapper to i32), i32 ptrtoint (ptr @_isr_wrapper to i32), i32 ptrtoint (ptr @_isr_wrapper to i32), i32 ptrtoint (ptr @_isr_wrapper to i32), i32 ptrtoint (ptr @_isr_wrapper to i32), i32 ptrtoint (ptr @_isr_wrapper to i32), i32 ptrtoint (ptr @_isr_wrapper to i32), i32 ptrtoint (ptr @_isr_wrapper to i32), i32 ptrtoint (ptr @_isr_wrapper to i32), i32 ptrtoint (ptr @_isr_wrapper to i32), i32 ptrtoint (ptr @_isr_wrapper to i32), i32 ptrtoint (ptr @_isr_wrapper to i32), i32 ptrtoint (ptr @_isr_wrapper to i32), i32 ptrtoint (ptr @_isr_wrapper to i32), i32 ptrtoint (ptr @_isr_wrapper to i32), i32 ptrtoint (ptr @_isr_wrapper to i32), i32 ptrtoint (ptr @_isr_wrapper to i32), i32 ptrtoint (ptr @_isr_wrapper to i32), i32 ptrtoint (ptr @_isr_wrapper to i32), i32 ptrtoint (ptr @_isr_wrapper to i32), i32 ptrtoint (ptr @_isr_wrapper to i32), i32 ptrtoint (ptr @_isr_wrapper to i32), i32 ptrtoint (ptr @_isr_wrapper to i32), i32 ptrtoint (ptr @_isr_wrapper to i32), i32 ptrtoint (ptr @_isr_wrapper to i32)], section ".gnu.linkonce.irq_vector_table", align 4, !dbg !5
@_sw_isr_table = hidden global [31 x %struct._isr_table_entry] [%struct._isr_table_entry { ptr inttoptr (i32 66 to ptr), ptr @z_irq_spurious }, %struct._isr_table_entry { ptr inttoptr (i32 66 to ptr), ptr @z_irq_spurious }, %struct._isr_table_entry { ptr inttoptr (i32 66 to ptr), ptr @z_irq_spurious }, %struct._isr_table_entry { ptr inttoptr (i32 66 to ptr), ptr @z_irq_spurious }, %struct._isr_table_entry { ptr inttoptr (i32 66 to ptr), ptr @z_irq_spurious }, %struct._isr_table_entry { ptr inttoptr (i32 66 to ptr), ptr @z_irq_spurious }, %struct._isr_table_entry { ptr inttoptr (i32 66 to ptr), ptr @z_irq_spurious }, %struct._isr_table_entry { ptr inttoptr (i32 66 to ptr), ptr @z_irq_spurious }, %struct._isr_table_entry { ptr inttoptr (i32 66 to ptr), ptr @z_irq_spurious }, %struct._isr_table_entry { ptr inttoptr (i32 66 to ptr), ptr @z_irq_spurious }, %struct._isr_table_entry { ptr inttoptr (i32 66 to ptr), ptr @z_irq_spurious }, %struct._isr_table_entry { ptr inttoptr (i32 66 to ptr), ptr @z_irq_spurious }, %struct._isr_table_entry { ptr inttoptr (i32 66 to ptr), ptr @z_irq_spurious }, %struct._isr_table_entry { ptr inttoptr (i32 66 to ptr), ptr @z_irq_spurious }, %struct._isr_table_entry { ptr inttoptr (i32 66 to ptr), ptr @z_irq_spurious }, %struct._isr_table_entry { ptr inttoptr (i32 66 to ptr), ptr @z_irq_spurious }, %struct._isr_table_entry { ptr inttoptr (i32 66 to ptr), ptr @z_irq_spurious }, %struct._isr_table_entry { ptr inttoptr (i32 66 to ptr), ptr @z_irq_spurious }, %struct._isr_table_entry { ptr inttoptr (i32 66 to ptr), ptr @z_irq_spurious }, %struct._isr_table_entry { ptr inttoptr (i32 66 to ptr), ptr @z_irq_spurious }, %struct._isr_table_entry { ptr inttoptr (i32 66 to ptr), ptr @z_irq_spurious }, %struct._isr_table_entry { ptr inttoptr (i32 66 to ptr), ptr @z_irq_spurious }, %struct._isr_table_entry { ptr inttoptr (i32 66 to ptr), ptr @z_irq_spurious }, %struct._isr_table_entry { ptr inttoptr (i32 66 to ptr), ptr @z_irq_spurious }, %struct._isr_table_entry { ptr inttoptr (i32 66 to ptr), ptr @z_irq_spurious }, %struct._isr_table_entry { ptr inttoptr (i32 66 to ptr), ptr @z_irq_spurious }, %struct._isr_table_entry { ptr inttoptr (i32 66 to ptr), ptr @z_irq_spurious }, %struct._isr_table_entry { ptr inttoptr (i32 66 to ptr), ptr @z_irq_spurious }, %struct._isr_table_entry { ptr inttoptr (i32 66 to ptr), ptr @z_irq_spurious }, %struct._isr_table_entry { ptr inttoptr (i32 66 to ptr), ptr @z_irq_spurious }, %struct._isr_table_entry { ptr inttoptr (i32 66 to ptr), ptr @z_irq_spurious }], section ".gnu.linkonce.sw_isr_table", align 4, !dbg !14
@llvm.used = appending global [3 x ptr] [ptr @_iheader, ptr @_irq_vector_table, ptr @_sw_isr_table], section "llvm.metadata"

; Function Attrs: optsize
declare dso_local void @_isr_wrapper() #0

; Function Attrs: optsize
declare dso_local void @z_irq_spurious(ptr noundef) #0

attributes #0 = { optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_iheader", scope: !2, file: !7, line: 24, type: !27, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "isr_tables.c", directory: "/home/sri/zephyrproject/zephyr/build")
!4 = !{!0, !5, !14}
!5 = !DIGlobalVariableExpression(var: !6, expr: !DIExpression())
!6 = distinct !DIGlobalVariable(name: "_irq_vector_table", scope: !2, file: !7, line: 69, type: !8, isLocal: false, isDefinition: true)
!7 = !DIFile(filename: "arch/common/isr_tables.c", directory: "/home/sri/zephyrproject/zephyr")
!8 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 992, elements: !12)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !10, line: 102, baseType: !11)
!10 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/stdint.h", directory: "")
!11 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!12 = !{!13}
!13 = !DISubrange(count: 31)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(name: "_sw_isr_table", scope: !2, file: !7, line: 79, type: !16, isLocal: false, isDefinition: true)
!16 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 1984, elements: !12)
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_isr_table_entry", file: !18, line: 36, size: 64, elements: !19)
!18 = !DIFile(filename: "include/zephyr/sw_isr_table.h", directory: "/home/sri/zephyrproject/zephyr")
!19 = !{!20, !23}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !17, file: !18, line: 37, baseType: !21, size: 32)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 32)
!22 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "isr", scope: !17, file: !18, line: 38, baseType: !24, size: 32, offset: 32)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 32)
!25 = !DISubroutineType(types: !26)
!26 = !{null, !21}
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int_list_header", file: !7, line: 15, size: 64, elements: !28)
!28 = !{!29, !31}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "table_size", scope: !27, file: !7, line: 16, baseType: !30, size: 32)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !10, line: 64, baseType: !11)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !27, file: !7, line: 17, baseType: !30, size: 32, offset: 32)
!32 = !{i32 7, !"Dwarf Version", i32 4}
!33 = !{i32 2, !"Debug Info Version", i32 3}
!34 = !{i32 1, !"wchar_size", i32 4}
!35 = !{i32 1, !"static_rwdata", i32 1}
!36 = !{i32 1, !"enumsize_buildattr", i32 1}
!37 = !{i32 1, !"armlib_unavailable", i32 0}
!38 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
