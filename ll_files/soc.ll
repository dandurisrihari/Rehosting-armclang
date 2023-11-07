; ModuleID = '../bc_files/soc.bc'
source_filename = "/home/sri/zephyrproject/zephyr/soc/arm/st_stm32/stm32f0/soc.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-arm-none-eabi"

%struct.init_entry = type { %union.init_function, ptr }
%union.init_function = type { ptr }

@_vector_end = external global [0 x i8], align 1
@_vector_start = external global [0 x i8], align 1
@_ram_vector_start = external global [0 x i8], align 1
@__init_stm32f0_init = internal constant %struct.init_entry { %union.init_function { ptr @stm32f0_init }, ptr null }, section ".z_init_PRE_KERNEL_10_0_", align 4, !dbg !0
@SystemCoreClock = external global i32, align 4
@llvm.used = appending global [1 x ptr] [ptr @__init_stm32f0_init], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @z_impl_device_is_ready(ptr noundef %0) #0 !dbg !83 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !87, metadata !DIExpression()), !dbg !88
  %3 = load ptr, ptr %2, align 4, !dbg !89
  %4 = call zeroext i1 @z_device_is_ready(ptr noundef %3), !dbg !90
  ret i1 %4, !dbg !91
}

; Function Attrs: noinline nounwind optnone
define hidden void @relocate_vector_table() #0 !dbg !92 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata ptr %1, metadata !95, metadata !DIExpression()), !dbg !96
  store i32 sub (i32 ptrtoint (ptr @_vector_end to i32), i32 ptrtoint (ptr @_vector_start to i32)), ptr %1, align 4, !dbg !96
  %2 = load i32, ptr %1, align 4, !dbg !97
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 @_ram_vector_start, ptr align 1 @_vector_start, i32 %2, i1 false), !dbg !98
  call void @LL_SYSCFG_SetRemapMemory(i32 noundef 3), !dbg !99
  ret void, !dbg !100
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: noinline nounwind optnone
define internal void @LL_SYSCFG_SetRemapMemory(i32 noundef %0) #0 !dbg !101 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !105, metadata !DIExpression()), !dbg !106
  %3 = load volatile i32, ptr inttoptr (i32 1073807360 to ptr), align 4, !dbg !107
  %4 = and i32 %3, -4, !dbg !108
  %5 = load i32, ptr %2, align 4, !dbg !109
  %6 = or i32 %4, %5, !dbg !110
  store volatile i32 %6, ptr inttoptr (i32 1073807360 to ptr), align 4, !dbg !111
  ret void, !dbg !112
}

; Function Attrs: noinline nounwind optnone
define internal i32 @stm32f0_init() #0 !dbg !113 {
  store i32 8000000, ptr @SystemCoreClock, align 4, !dbg !114
  ret i32 0, !dbg !115
}

declare zeroext i1 @z_device_is_ready(ptr noundef) #3

attributes #0 = { noinline nounwind optnone "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!74, !75, !76, !77, !78, !79, !80, !81}
!llvm.ident = !{!82}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__init_stm32f0_init", scope: !2, file: !32, line: 77, type: !33, isLocal: true, isDefinition: true, align: 32)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !31, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "soc.c", directory: "/home/sri/zephyrproject/zephyr/build")
!4 = !{!5, !8}
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !6, line: 51, baseType: !7)
!6 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/string.h", directory: "")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 32)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "SYSCFG_TypeDef", file: !10, line: 397, baseType: !11)
!10 = !DIFile(filename: "modules/hal/stm32/stm32cube/stm32f0xx/soc/stm32f091xc.h", directory: "/home/sri/zephyrproject")
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !10, line: 389, size: 2048, elements: !12)
!12 = !{!13, !17, !18, !22, !23, !27}
!13 = !DIDerivedType(tag: DW_TAG_member, name: "CFGR1", scope: !11, file: !10, line: 391, baseType: !14, size: 32)
!14 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !15)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !16, line: 64, baseType: !7)
!16 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/stdint.h", directory: "")
!17 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED", scope: !11, file: !10, line: 392, baseType: !15, size: 32, offset: 32)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "EXTICR", scope: !11, file: !10, line: 393, baseType: !19, size: 128, offset: 64)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 128, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 4)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "CFGR2", scope: !11, file: !10, line: 394, baseType: !14, size: 32, offset: 192)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED1", scope: !11, file: !10, line: 395, baseType: !24, size: 800, offset: 224)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 800, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 25)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "IT_LINE_SR", scope: !11, file: !10, line: 396, baseType: !28, size: 1024, offset: 1024)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 1024, elements: !29)
!29 = !{!30}
!30 = !DISubrange(count: 32)
!31 = !{!0}
!32 = !DIFile(filename: "soc/arm/st_stm32/stm32f0/soc.c", directory: "/home/sri/zephyrproject/zephyr")
!33 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "init_entry", file: !35, line: 92, size: 64, elements: !36)
!35 = !DIFile(filename: "include/zephyr/init.h", directory: "/home/sri/zephyrproject/zephyr")
!36 = !{!37, !73}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "init_fn", scope: !34, file: !35, line: 94, baseType: !38, size: 32)
!38 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "init_function", file: !35, line: 59, size: 32, elements: !39)
!39 = !{!40, !45}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "sys", scope: !38, file: !35, line: 66, baseType: !41, size: 32)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 32)
!42 = !DISubroutineType(types: !43)
!43 = !{!44}
!44 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !38, file: !35, line: 75, baseType: !46, size: 32)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 32)
!47 = !DISubroutineType(types: !48)
!48 = !{!44, !49}
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 32)
!50 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !52, line: 381, size: 160, elements: !53)
!52 = !DIFile(filename: "include/zephyr/device.h", directory: "/home/sri/zephyrproject/zephyr")
!53 = !{!54, !58, !61, !62, !71}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !51, file: !52, line: 383, baseType: !55, size: 32)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 32)
!56 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !57)
!57 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !51, file: !52, line: 385, baseType: !59, size: 32, offset: 32)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 32)
!60 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "api", scope: !51, file: !52, line: 387, baseType: !59, size: 32, offset: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !51, file: !52, line: 389, baseType: !63, size: 32, offset: 96)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 32)
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_state", file: !52, line: 354, size: 16, elements: !65)
!65 = !{!66, !69}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "init_res", scope: !64, file: !52, line: 362, baseType: !67, size: 8)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !16, line: 62, baseType: !68)
!68 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !64, file: !52, line: 367, baseType: !70, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 8)
!70 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !51, file: !52, line: 391, baseType: !72, size: 32, offset: 128)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !34, file: !35, line: 99, baseType: !49, size: 32, offset: 32)
!74 = !{i32 7, !"Dwarf Version", i32 4}
!75 = !{i32 2, !"Debug Info Version", i32 3}
!76 = !{i32 1, !"wchar_size", i32 4}
!77 = !{i32 1, !"static_rwdata", i32 1}
!78 = !{i32 1, !"enumsize_buildattr", i32 1}
!79 = !{i32 1, !"armlib_unavailable", i32 0}
!80 = !{i32 8, !"PIC Level", i32 2}
!81 = !{i32 7, !"PIE Level", i32 2}
!82 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
!83 = distinct !DISubprogram(name: "z_impl_device_is_ready", scope: !52, file: !52, line: 744, type: !84, scopeLine: 745, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !86)
!84 = !DISubroutineType(types: !85)
!85 = !{!70, !49}
!86 = !{}
!87 = !DILocalVariable(name: "dev", arg: 1, scope: !83, file: !52, line: 744, type: !49)
!88 = !DILocation(line: 744, column: 65, scope: !83)
!89 = !DILocation(line: 746, column: 27, scope: !83)
!90 = !DILocation(line: 746, column: 9, scope: !83)
!91 = !DILocation(line: 746, column: 2, scope: !83)
!92 = distinct !DISubprogram(name: "relocate_vector_table", scope: !32, file: !32, line: 46, type: !93, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !86)
!93 = !DISubroutineType(types: !94)
!94 = !{null}
!95 = !DILocalVariable(name: "vector_size", scope: !92, file: !32, line: 53, type: !5)
!96 = !DILocation(line: 53, column: 9, scope: !92)
!97 = !DILocation(line: 55, column: 43, scope: !92)
!98 = !DILocation(line: 55, column: 2, scope: !92)
!99 = !DILocation(line: 56, column: 2, scope: !92)
!100 = !DILocation(line: 58, column: 1, scope: !92)
!101 = distinct !DISubprogram(name: "LL_SYSCFG_SetRemapMemory", scope: !102, file: !102, line: 348, type: !103, scopeLine: 349, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !86)
!102 = !DIFile(filename: "modules/hal/stm32/stm32cube/stm32f0xx/drivers/include/stm32f0xx_ll_system.h", directory: "/home/sri/zephyrproject")
!103 = !DISubroutineType(types: !104)
!104 = !{null, !15}
!105 = !DILocalVariable(name: "Memory", arg: 1, scope: !101, file: !102, line: 348, type: !15)
!106 = !DILocation(line: 348, column: 56, scope: !101)
!107 = !DILocation(line: 350, column: 126, scope: !101)
!108 = !DILocation(line: 350, column: 135, scope: !101)
!109 = !DILocation(line: 350, column: 162, scope: !101)
!110 = !DILocation(line: 350, column: 159, scope: !101)
!111 = !DILocation(line: 350, column: 66, scope: !101)
!112 = !DILocation(line: 351, column: 1, scope: !101)
!113 = distinct !DISubprogram(name: "stm32f0_init", scope: !32, file: !32, line: 68, type: !42, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !86)
!114 = !DILocation(line: 72, column: 18, scope: !113)
!115 = !DILocation(line: 74, column: 2, scope: !113)
