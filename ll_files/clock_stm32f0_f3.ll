; ModuleID = '../bc_files/clock_stm32f0_f3.bc'
source_filename = "/home/sri/zephyrproject/zephyr/drivers/clock_control/clock_stm32f0_f3.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-arm-none-eabi"

%struct.RCC_TypeDef = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @z_impl_device_is_ready(ptr noundef %0) #0 !dbg !35 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !63, metadata !DIExpression()), !dbg !64
  %3 = load ptr, ptr %2, align 4, !dbg !65
  %4 = call zeroext i1 @z_device_is_ready(ptr noundef %3), !dbg !66
  ret i1 %4, !dbg !67
}

; Function Attrs: noinline nounwind optnone
define hidden void @config_pll_sysclock() #0 !dbg !68 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata ptr %1, metadata !72, metadata !DIExpression()), !dbg !73
  call void @llvm.dbg.declare(metadata ptr %2, metadata !74, metadata !DIExpression()), !dbg !75
  call void @llvm.dbg.declare(metadata ptr %3, metadata !76, metadata !DIExpression()), !dbg !77
  store i32 1048576, ptr %2, align 4, !dbg !78
  store i32 0, ptr %3, align 4, !dbg !79
  store i32 65536, ptr %1, align 4, !dbg !80
  %4 = load i32, ptr %1, align 4, !dbg !83
  %5 = load i32, ptr %2, align 4, !dbg !84
  %6 = load i32, ptr %3, align 4, !dbg !85
  call void @LL_RCC_PLL_ConfigDomain_SYS(i32 noundef %4, i32 noundef %5, i32 noundef %6), !dbg !86
  ret void, !dbg !87
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone
define internal void @LL_RCC_PLL_ConfigDomain_SYS(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 !dbg !88 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !92, metadata !DIExpression()), !dbg !93
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !94, metadata !DIExpression()), !dbg !95
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !96, metadata !DIExpression()), !dbg !97
  %7 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !98
  %8 = and i32 %7, -4030465, !dbg !99
  %9 = load i32, ptr %4, align 4, !dbg !100
  %10 = load i32, ptr %5, align 4, !dbg !101
  %11 = or i32 %9, %10, !dbg !102
  %12 = or i32 %8, %11, !dbg !103
  store volatile i32 %12, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !104
  %13 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 11), align 4, !dbg !105
  %14 = and i32 %13, -16, !dbg !106
  %15 = load i32, ptr %6, align 4, !dbg !107
  %16 = or i32 %14, %15, !dbg !108
  store volatile i32 %16, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 11), align 4, !dbg !109
  ret void, !dbg !110
}

; Function Attrs: noinline nounwind optnone
define hidden i32 @get_pllout_frequency() #0 !dbg !111 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata ptr %1, metadata !114, metadata !DIExpression()), !dbg !115
  call void @llvm.dbg.declare(metadata ptr %2, metadata !116, metadata !DIExpression()), !dbg !117
  call void @llvm.dbg.declare(metadata ptr %3, metadata !118, metadata !DIExpression()), !dbg !119
  store i32 1048576, ptr %2, align 4, !dbg !120
  store i32 0, ptr %3, align 4, !dbg !121
  store i32 8000000, ptr %1, align 4, !dbg !122
  %4 = load i32, ptr %1, align 4, !dbg !125
  %5 = load i32, ptr %3, align 4, !dbg !126
  %6 = and i32 %5, 15, !dbg !127
  %7 = add i32 %6, 1, !dbg !128
  %8 = udiv i32 %4, %7, !dbg !129
  %9 = load i32, ptr %2, align 4, !dbg !130
  %10 = and i32 %9, 3932160, !dbg !131
  %11 = lshr i32 %10, 18, !dbg !132
  %12 = add i32 %11, 2, !dbg !133
  %13 = mul i32 %8, %12, !dbg !134
  ret i32 %13, !dbg !135
}

; Function Attrs: noinline nounwind optnone
define hidden void @config_enable_default_clocks() #0 !dbg !136 {
  call void @LL_APB1_GRP1_EnableClock(i32 noundef 268435456), !dbg !137
  call void @LL_APB1_GRP2_EnableClock(i32 noundef 1), !dbg !138
  ret void, !dbg !139
}

; Function Attrs: noinline nounwind optnone
define internal void @LL_APB1_GRP1_EnableClock(i32 noundef %0) #0 !dbg !140 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !144, metadata !DIExpression()), !dbg !145
  call void @llvm.dbg.declare(metadata ptr %3, metadata !146, metadata !DIExpression()), !dbg !147
  %4 = load i32, ptr %2, align 4, !dbg !148
  %5 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 7), align 4, !dbg !149
  %6 = or i32 %5, %4, !dbg !149
  store volatile i32 %6, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 7), align 4, !dbg !149
  %7 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 7), align 4, !dbg !150
  %8 = load i32, ptr %2, align 4, !dbg !151
  %9 = and i32 %7, %8, !dbg !152
  store volatile i32 %9, ptr %3, align 4, !dbg !153
  %10 = load volatile i32, ptr %3, align 4, !dbg !154
  ret void, !dbg !155
}

; Function Attrs: noinline nounwind optnone
define internal void @LL_APB1_GRP2_EnableClock(i32 noundef %0) #0 !dbg !156 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !157, metadata !DIExpression()), !dbg !158
  call void @llvm.dbg.declare(metadata ptr %3, metadata !159, metadata !DIExpression()), !dbg !160
  %4 = load i32, ptr %2, align 4, !dbg !161
  %5 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 6), align 4, !dbg !162
  %6 = or i32 %5, %4, !dbg !162
  store volatile i32 %6, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 6), align 4, !dbg !162
  %7 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 6), align 4, !dbg !163
  %8 = load i32, ptr %2, align 4, !dbg !164
  %9 = and i32 %7, %8, !dbg !165
  store volatile i32 %9, ptr %3, align 4, !dbg !166
  %10 = load volatile i32, ptr %3, align 4, !dbg !167
  ret void, !dbg !168
}

declare zeroext i1 @z_device_is_ready(ptr noundef) #2

attributes #0 = { noinline nounwind optnone "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "clock_stm32f0_f3.c", directory: "/home/sri/zephyrproject/zephyr/build")
!2 = !{!3, !6}
!3 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !4, line: 64, baseType: !5)
!4 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/stdint.h", directory: "")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 32)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "RCC_TypeDef", file: !8, line: 461, baseType: !9)
!8 = !DIFile(filename: "modules/hal/stm32/stm32cube/stm32f0xx/soc/stm32f091xc.h", directory: "/home/sri/zephyrproject")
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !8, line: 445, size: 448, elements: !10)
!10 = !{!11, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "CR", scope: !9, file: !8, line: 447, baseType: !12, size: 32)
!12 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !3)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "CFGR", scope: !9, file: !8, line: 448, baseType: !12, size: 32, offset: 32)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "CIR", scope: !9, file: !8, line: 449, baseType: !12, size: 32, offset: 64)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "APB2RSTR", scope: !9, file: !8, line: 450, baseType: !12, size: 32, offset: 96)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "APB1RSTR", scope: !9, file: !8, line: 451, baseType: !12, size: 32, offset: 128)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "AHBENR", scope: !9, file: !8, line: 452, baseType: !12, size: 32, offset: 160)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "APB2ENR", scope: !9, file: !8, line: 453, baseType: !12, size: 32, offset: 192)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "APB1ENR", scope: !9, file: !8, line: 454, baseType: !12, size: 32, offset: 224)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "BDCR", scope: !9, file: !8, line: 455, baseType: !12, size: 32, offset: 256)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "CSR", scope: !9, file: !8, line: 456, baseType: !12, size: 32, offset: 288)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "AHBRSTR", scope: !9, file: !8, line: 457, baseType: !12, size: 32, offset: 320)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "CFGR2", scope: !9, file: !8, line: 458, baseType: !12, size: 32, offset: 352)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "CFGR3", scope: !9, file: !8, line: 459, baseType: !12, size: 32, offset: 384)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "CR2", scope: !9, file: !8, line: 460, baseType: !12, size: 32, offset: 416)
!26 = !{i32 7, !"Dwarf Version", i32 4}
!27 = !{i32 2, !"Debug Info Version", i32 3}
!28 = !{i32 1, !"wchar_size", i32 4}
!29 = !{i32 1, !"static_rwdata", i32 1}
!30 = !{i32 1, !"enumsize_buildattr", i32 1}
!31 = !{i32 1, !"armlib_unavailable", i32 0}
!32 = !{i32 8, !"PIC Level", i32 2}
!33 = !{i32 7, !"PIE Level", i32 2}
!34 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
!35 = distinct !DISubprogram(name: "z_impl_device_is_ready", scope: !36, file: !36, line: 744, type: !37, scopeLine: 745, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !62)
!36 = !DIFile(filename: "include/zephyr/device.h", directory: "/home/sri/zephyrproject/zephyr")
!37 = !DISubroutineType(types: !38)
!38 = !{!39, !40}
!39 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 32)
!41 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !36, line: 381, size: 160, elements: !43)
!43 = !{!44, !48, !51, !52, !60}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !42, file: !36, line: 383, baseType: !45, size: 32)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 32)
!46 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!47 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !42, file: !36, line: 385, baseType: !49, size: 32, offset: 32)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 32)
!50 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "api", scope: !42, file: !36, line: 387, baseType: !49, size: 32, offset: 64)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !42, file: !36, line: 389, baseType: !53, size: 32, offset: 96)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 32)
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_state", file: !36, line: 354, size: 16, elements: !55)
!55 = !{!56, !59}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "init_res", scope: !54, file: !36, line: 362, baseType: !57, size: 8)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !4, line: 62, baseType: !58)
!58 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !54, file: !36, line: 367, baseType: !39, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 8)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !42, file: !36, line: 391, baseType: !61, size: 32, offset: 128)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!62 = !{}
!63 = !DILocalVariable(name: "dev", arg: 1, scope: !35, file: !36, line: 744, type: !40)
!64 = !DILocation(line: 744, column: 65, scope: !35)
!65 = !DILocation(line: 746, column: 27, scope: !35)
!66 = !DILocation(line: 746, column: 9, scope: !35)
!67 = !DILocation(line: 746, column: 2, scope: !35)
!68 = distinct !DISubprogram(name: "config_pll_sysclock", scope: !69, file: !69, line: 46, type: !70, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !62)
!69 = !DIFile(filename: "drivers/clock_control/clock_stm32f0_f3.c", directory: "/home/sri/zephyrproject/zephyr")
!70 = !DISubroutineType(types: !71)
!71 = !{null}
!72 = !DILocalVariable(name: "pll_source", scope: !68, file: !69, line: 48, type: !3)
!73 = !DILocation(line: 48, column: 11, scope: !68)
!74 = !DILocalVariable(name: "pll_mul", scope: !68, file: !69, line: 48, type: !3)
!75 = !DILocation(line: 48, column: 23, scope: !68)
!76 = !DILocalVariable(name: "pll_div", scope: !68, file: !69, line: 48, type: !3)
!77 = !DILocation(line: 48, column: 32, scope: !68)
!78 = !DILocation(line: 58, column: 10, scope: !68)
!79 = !DILocation(line: 68, column: 10, scope: !68)
!80 = !DILocation(line: 80, column: 14, scope: !81)
!81 = distinct !DILexicalBlock(scope: !82, file: !69, line: 79, column: 9)
!82 = distinct !DILexicalBlock(scope: !68, file: !69, line: 79, column: 6)
!83 = !DILocation(line: 87, column: 30, scope: !68)
!84 = !DILocation(line: 87, column: 42, scope: !68)
!85 = !DILocation(line: 87, column: 51, scope: !68)
!86 = !DILocation(line: 87, column: 2, scope: !68)
!87 = !DILocation(line: 100, column: 1, scope: !68)
!88 = distinct !DISubprogram(name: "LL_RCC_PLL_ConfigDomain_SYS", scope: !89, file: !89, line: 1578, type: !90, scopeLine: 1579, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !62)
!89 = !DIFile(filename: "modules/hal/stm32/stm32cube/stm32f0xx/drivers/include/stm32f0xx_ll_rcc.h", directory: "/home/sri/zephyrproject")
!90 = !DISubroutineType(types: !91)
!91 = !{null, !3, !3, !3}
!92 = !DILocalVariable(name: "Source", arg: 1, scope: !88, file: !89, line: 1578, type: !3)
!93 = !DILocation(line: 1578, column: 59, scope: !88)
!94 = !DILocalVariable(name: "PLLMul", arg: 2, scope: !88, file: !89, line: 1578, type: !3)
!95 = !DILocation(line: 1578, column: 76, scope: !88)
!96 = !DILocalVariable(name: "PLLDiv", arg: 3, scope: !88, file: !89, line: 1578, type: !3)
!97 = !DILocation(line: 1578, column: 93, scope: !88)
!98 = !DILocation(line: 1580, column: 153, scope: !88)
!99 = !DILocation(line: 1580, column: 161, scope: !88)
!100 = !DILocation(line: 1580, column: 208, scope: !88)
!101 = !DILocation(line: 1580, column: 217, scope: !88)
!102 = !DILocation(line: 1580, column: 215, scope: !88)
!103 = !DILocation(line: 1580, column: 205, scope: !88)
!104 = !DILocation(line: 1580, column: 79, scope: !88)
!105 = !DILocation(line: 1581, column: 154, scope: !88)
!106 = !DILocation(line: 1581, column: 163, scope: !88)
!107 = !DILocation(line: 1581, column: 190, scope: !88)
!108 = !DILocation(line: 1581, column: 187, scope: !88)
!109 = !DILocation(line: 1581, column: 80, scope: !88)
!110 = !DILocation(line: 1582, column: 1, scope: !88)
!111 = distinct !DISubprogram(name: "get_pllout_frequency", scope: !69, file: !69, line: 106, type: !112, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !62)
!112 = !DISubroutineType(types: !113)
!113 = !{!3}
!114 = !DILocalVariable(name: "pll_input_freq", scope: !111, file: !69, line: 108, type: !3)
!115 = !DILocation(line: 108, column: 11, scope: !111)
!116 = !DILocalVariable(name: "pll_mul", scope: !111, file: !69, line: 108, type: !3)
!117 = !DILocation(line: 108, column: 27, scope: !111)
!118 = !DILocalVariable(name: "pll_div", scope: !111, file: !69, line: 108, type: !3)
!119 = !DILocation(line: 108, column: 36, scope: !111)
!120 = !DILocation(line: 118, column: 10, scope: !111)
!121 = !DILocation(line: 128, column: 10, scope: !111)
!122 = !DILocation(line: 140, column: 18, scope: !123)
!123 = distinct !DILexicalBlock(scope: !124, file: !69, line: 139, column: 9)
!124 = distinct !DILexicalBlock(scope: !111, file: !69, line: 139, column: 6)
!125 = !DILocation(line: 147, column: 12, scope: !111)
!126 = !DILocation(line: 147, column: 34, scope: !111)
!127 = !DILocation(line: 147, column: 43, scope: !111)
!128 = !DILocation(line: 147, column: 62, scope: !111)
!129 = !DILocation(line: 147, column: 28, scope: !111)
!130 = !DILocation(line: 147, column: 76, scope: !111)
!131 = !DILocation(line: 147, column: 85, scope: !111)
!132 = !DILocation(line: 147, column: 105, scope: !111)
!133 = !DILocation(line: 147, column: 123, scope: !111)
!134 = !DILocation(line: 147, column: 70, scope: !111)
!135 = !DILocation(line: 147, column: 2, scope: !111)
!136 = distinct !DISubprogram(name: "config_enable_default_clocks", scope: !69, file: !69, line: 167, type: !70, scopeLine: 168, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !62)
!137 = !DILocation(line: 170, column: 2, scope: !136)
!138 = !DILocation(line: 175, column: 2, scope: !136)
!139 = !DILocation(line: 185, column: 1, scope: !136)
!140 = distinct !DISubprogram(name: "LL_APB1_GRP1_EnableClock", scope: !141, file: !141, line: 413, type: !142, scopeLine: 414, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !62)
!141 = !DIFile(filename: "modules/hal/stm32/stm32cube/stm32f0xx/drivers/include/stm32f0xx_ll_bus.h", directory: "/home/sri/zephyrproject")
!142 = !DISubroutineType(types: !143)
!143 = !{null, !3}
!144 = !DILocalVariable(name: "Periphs", arg: 1, scope: !140, file: !141, line: 413, type: !3)
!145 = !DILocation(line: 413, column: 56, scope: !140)
!146 = !DILocalVariable(name: "tmpreg", scope: !140, file: !141, line: 415, type: !12)
!147 = !DILocation(line: 415, column: 21, scope: !140)
!148 = !DILocation(line: 416, column: 84, scope: !140)
!149 = !DILocation(line: 416, column: 80, scope: !140)
!150 = !DILocation(line: 418, column: 80, scope: !140)
!151 = !DILocation(line: 418, column: 92, scope: !140)
!152 = !DILocation(line: 418, column: 89, scope: !140)
!153 = !DILocation(line: 418, column: 10, scope: !140)
!154 = !DILocation(line: 419, column: 9, scope: !140)
!155 = !DILocation(line: 420, column: 1, scope: !140)
!156 = distinct !DISubprogram(name: "LL_APB1_GRP2_EnableClock", scope: !141, file: !141, line: 663, type: !142, scopeLine: 664, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !62)
!157 = !DILocalVariable(name: "Periphs", arg: 1, scope: !156, file: !141, line: 663, type: !3)
!158 = !DILocation(line: 663, column: 56, scope: !156)
!159 = !DILocalVariable(name: "tmpreg", scope: !156, file: !141, line: 665, type: !12)
!160 = !DILocation(line: 665, column: 21, scope: !156)
!161 = !DILocation(line: 666, column: 84, scope: !156)
!162 = !DILocation(line: 666, column: 80, scope: !156)
!163 = !DILocation(line: 668, column: 80, scope: !156)
!164 = !DILocation(line: 668, column: 92, scope: !156)
!165 = !DILocation(line: 668, column: 89, scope: !156)
!166 = !DILocation(line: 668, column: 10, scope: !156)
!167 = !DILocation(line: 669, column: 9, scope: !156)
!168 = !DILocation(line: 670, column: 1, scope: !156)
