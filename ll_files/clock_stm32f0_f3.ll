; ModuleID = '../bc_files/clock_stm32f0_f3.bc'
source_filename = "/home/sri/zephyrproject/zephyr/drivers/clock_control/clock_stm32f0_f3.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-arm-none-eabi"

%struct.RCC_TypeDef = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @z_impl_device_is_ready(ptr noundef %0) #0 !dbg !33 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !61, metadata !DIExpression()), !dbg !62
  %3 = load ptr, ptr %2, align 4, !dbg !63
  %4 = call zeroext i1 @z_device_is_ready(ptr noundef %3) #5, !dbg !64
  ret i1 %4, !dbg !65
}

; Function Attrs: nounwind optsize
define hidden void @config_pll_sysclock() #1 !dbg !66 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %1) #6, !dbg !74
  call void @llvm.dbg.declare(metadata ptr %1, metadata !71, metadata !DIExpression()), !dbg !75
  call void @llvm.lifetime.start.p0(i64 4, ptr %2) #6, !dbg !74
  call void @llvm.dbg.declare(metadata ptr %2, metadata !72, metadata !DIExpression()), !dbg !76
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #6, !dbg !74
  call void @llvm.dbg.declare(metadata ptr %3, metadata !73, metadata !DIExpression()), !dbg !77
  store i32 1048576, ptr %2, align 4, !dbg !78
  store i32 0, ptr %3, align 4, !dbg !79
  store i32 65536, ptr %1, align 4, !dbg !80
  %4 = load i32, ptr %1, align 4, !dbg !83
  %5 = load i32, ptr %2, align 4, !dbg !84
  %6 = load i32, ptr %3, align 4, !dbg !85
  call void @LL_RCC_PLL_ConfigDomain_SYS(i32 noundef %4, i32 noundef %5, i32 noundef %6) #5, !dbg !86
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #6, !dbg !87
  call void @llvm.lifetime.end.p0(i64 4, ptr %2) #6, !dbg !87
  call void @llvm.lifetime.end.p0(i64 4, ptr %1) #6, !dbg !87
  ret void, !dbg !87
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: inlinehint nounwind optsize
define internal void @LL_RCC_PLL_ConfigDomain_SYS(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 !dbg !88 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !93, metadata !DIExpression()), !dbg !96
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !94, metadata !DIExpression()), !dbg !97
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !95, metadata !DIExpression()), !dbg !98
  %7 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !99
  %8 = and i32 %7, -4030465, !dbg !100
  %9 = load i32, ptr %4, align 4, !dbg !101
  %10 = load i32, ptr %5, align 4, !dbg !102
  %11 = or i32 %9, %10, !dbg !103
  %12 = or i32 %8, %11, !dbg !104
  store volatile i32 %12, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !105
  %13 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 11), align 4, !dbg !106
  %14 = and i32 %13, -16, !dbg !107
  %15 = load i32, ptr %6, align 4, !dbg !108
  %16 = or i32 %14, %15, !dbg !109
  store volatile i32 %16, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 11), align 4, !dbg !110
  ret void, !dbg !111
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind optsize
define hidden i32 @get_pllout_frequency() #1 !dbg !112 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %1) #6, !dbg !119
  call void @llvm.dbg.declare(metadata ptr %1, metadata !116, metadata !DIExpression()), !dbg !120
  call void @llvm.lifetime.start.p0(i64 4, ptr %2) #6, !dbg !119
  call void @llvm.dbg.declare(metadata ptr %2, metadata !117, metadata !DIExpression()), !dbg !121
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #6, !dbg !119
  call void @llvm.dbg.declare(metadata ptr %3, metadata !118, metadata !DIExpression()), !dbg !122
  store i32 1048576, ptr %2, align 4, !dbg !123
  store i32 0, ptr %3, align 4, !dbg !124
  store i32 8000000, ptr %1, align 4, !dbg !125
  %4 = load i32, ptr %1, align 4, !dbg !128
  %5 = load i32, ptr %3, align 4, !dbg !129
  %6 = and i32 %5, 15, !dbg !130
  %7 = add i32 %6, 1, !dbg !131
  %8 = udiv i32 %4, %7, !dbg !132
  %9 = load i32, ptr %2, align 4, !dbg !133
  %10 = and i32 %9, 3932160, !dbg !134
  %11 = lshr i32 %10, 18, !dbg !135
  %12 = add i32 %11, 2, !dbg !136
  %13 = mul i32 %8, %12, !dbg !137
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #6, !dbg !138
  call void @llvm.lifetime.end.p0(i64 4, ptr %2) #6, !dbg !138
  call void @llvm.lifetime.end.p0(i64 4, ptr %1) #6, !dbg !138
  ret i32 %13, !dbg !139
}

; Function Attrs: nounwind optsize
define hidden void @config_enable_default_clocks() #1 !dbg !140 {
  call void @LL_APB1_GRP1_EnableClock(i32 noundef 268435456) #5, !dbg !142
  call void @LL_APB1_GRP2_EnableClock(i32 noundef 1) #5, !dbg !143
  ret void, !dbg !144
}

; Function Attrs: inlinehint nounwind optsize
define internal void @LL_APB1_GRP1_EnableClock(i32 noundef %0) #0 !dbg !145 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !150, metadata !DIExpression()), !dbg !152
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #6, !dbg !153
  call void @llvm.dbg.declare(metadata ptr %3, metadata !151, metadata !DIExpression()), !dbg !154
  %4 = load i32, ptr %2, align 4, !dbg !155
  %5 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 7), align 4, !dbg !156
  %6 = or i32 %5, %4, !dbg !156
  store volatile i32 %6, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 7), align 4, !dbg !156
  %7 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 7), align 4, !dbg !157
  %8 = load i32, ptr %2, align 4, !dbg !158
  %9 = and i32 %7, %8, !dbg !159
  store volatile i32 %9, ptr %3, align 4, !dbg !160
  %10 = load volatile i32, ptr %3, align 4, !dbg !161
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #6, !dbg !162
  ret void, !dbg !162
}

; Function Attrs: inlinehint nounwind optsize
define internal void @LL_APB1_GRP2_EnableClock(i32 noundef %0) #0 !dbg !163 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !165, metadata !DIExpression()), !dbg !167
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #6, !dbg !168
  call void @llvm.dbg.declare(metadata ptr %3, metadata !166, metadata !DIExpression()), !dbg !169
  %4 = load i32, ptr %2, align 4, !dbg !170
  %5 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 6), align 4, !dbg !171
  %6 = or i32 %5, %4, !dbg !171
  store volatile i32 %6, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 6), align 4, !dbg !171
  %7 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 6), align 4, !dbg !172
  %8 = load i32, ptr %2, align 4, !dbg !173
  %9 = and i32 %7, %8, !dbg !174
  store volatile i32 %9, ptr %3, align 4, !dbg !175
  %10 = load volatile i32, ptr %3, align 4, !dbg !176
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #6, !dbg !177
  ret void, !dbg !177
}

; Function Attrs: optsize
declare !dbg !178 dso_local zeroext i1 @z_device_is_ready(ptr noundef) #4

attributes #0 = { inlinehint nounwind optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { optsize }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
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
!32 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
!33 = distinct !DISubprogram(name: "z_impl_device_is_ready", scope: !34, file: !34, line: 744, type: !35, scopeLine: 745, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !60)
!34 = !DIFile(filename: "include/zephyr/device.h", directory: "/home/sri/zephyrproject/zephyr")
!35 = !DISubroutineType(types: !36)
!36 = !{!37, !38}
!37 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 32)
!39 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !34, line: 381, size: 160, elements: !41)
!41 = !{!42, !46, !49, !50, !58}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !40, file: !34, line: 383, baseType: !43, size: 32)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 32)
!44 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!45 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !40, file: !34, line: 385, baseType: !47, size: 32, offset: 32)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 32)
!48 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "api", scope: !40, file: !34, line: 387, baseType: !47, size: 32, offset: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !40, file: !34, line: 389, baseType: !51, size: 32, offset: 96)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 32)
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_state", file: !34, line: 354, size: 16, elements: !53)
!53 = !{!54, !57}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "init_res", scope: !52, file: !34, line: 362, baseType: !55, size: 8)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !4, line: 62, baseType: !56)
!56 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !52, file: !34, line: 367, baseType: !37, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 8)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !40, file: !34, line: 391, baseType: !59, size: 32, offset: 128)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!60 = !{!61}
!61 = !DILocalVariable(name: "dev", arg: 1, scope: !33, file: !34, line: 744, type: !38)
!62 = !DILocation(line: 744, column: 65, scope: !33)
!63 = !DILocation(line: 746, column: 27, scope: !33)
!64 = !DILocation(line: 746, column: 9, scope: !33)
!65 = !DILocation(line: 746, column: 2, scope: !33)
!66 = distinct !DISubprogram(name: "config_pll_sysclock", scope: !67, file: !67, line: 46, type: !68, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !70)
!67 = !DIFile(filename: "drivers/clock_control/clock_stm32f0_f3.c", directory: "/home/sri/zephyrproject/zephyr")
!68 = !DISubroutineType(types: !69)
!69 = !{null}
!70 = !{!71, !72, !73}
!71 = !DILocalVariable(name: "pll_source", scope: !66, file: !67, line: 48, type: !3)
!72 = !DILocalVariable(name: "pll_mul", scope: !66, file: !67, line: 48, type: !3)
!73 = !DILocalVariable(name: "pll_div", scope: !66, file: !67, line: 48, type: !3)
!74 = !DILocation(line: 48, column: 2, scope: !66)
!75 = !DILocation(line: 48, column: 11, scope: !66)
!76 = !DILocation(line: 48, column: 23, scope: !66)
!77 = !DILocation(line: 48, column: 32, scope: !66)
!78 = !DILocation(line: 58, column: 10, scope: !66)
!79 = !DILocation(line: 68, column: 10, scope: !66)
!80 = !DILocation(line: 80, column: 14, scope: !81)
!81 = distinct !DILexicalBlock(scope: !82, file: !67, line: 79, column: 9)
!82 = distinct !DILexicalBlock(scope: !66, file: !67, line: 79, column: 6)
!83 = !DILocation(line: 87, column: 30, scope: !66)
!84 = !DILocation(line: 87, column: 42, scope: !66)
!85 = !DILocation(line: 87, column: 51, scope: !66)
!86 = !DILocation(line: 87, column: 2, scope: !66)
!87 = !DILocation(line: 100, column: 1, scope: !66)
!88 = distinct !DISubprogram(name: "LL_RCC_PLL_ConfigDomain_SYS", scope: !89, file: !89, line: 1578, type: !90, scopeLine: 1579, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !92)
!89 = !DIFile(filename: "modules/hal/stm32/stm32cube/stm32f0xx/drivers/include/stm32f0xx_ll_rcc.h", directory: "/home/sri/zephyrproject")
!90 = !DISubroutineType(types: !91)
!91 = !{null, !3, !3, !3}
!92 = !{!93, !94, !95}
!93 = !DILocalVariable(name: "Source", arg: 1, scope: !88, file: !89, line: 1578, type: !3)
!94 = !DILocalVariable(name: "PLLMul", arg: 2, scope: !88, file: !89, line: 1578, type: !3)
!95 = !DILocalVariable(name: "PLLDiv", arg: 3, scope: !88, file: !89, line: 1578, type: !3)
!96 = !DILocation(line: 1578, column: 59, scope: !88)
!97 = !DILocation(line: 1578, column: 76, scope: !88)
!98 = !DILocation(line: 1578, column: 93, scope: !88)
!99 = !DILocation(line: 1580, column: 153, scope: !88)
!100 = !DILocation(line: 1580, column: 161, scope: !88)
!101 = !DILocation(line: 1580, column: 208, scope: !88)
!102 = !DILocation(line: 1580, column: 217, scope: !88)
!103 = !DILocation(line: 1580, column: 215, scope: !88)
!104 = !DILocation(line: 1580, column: 205, scope: !88)
!105 = !DILocation(line: 1580, column: 79, scope: !88)
!106 = !DILocation(line: 1581, column: 154, scope: !88)
!107 = !DILocation(line: 1581, column: 163, scope: !88)
!108 = !DILocation(line: 1581, column: 190, scope: !88)
!109 = !DILocation(line: 1581, column: 187, scope: !88)
!110 = !DILocation(line: 1581, column: 80, scope: !88)
!111 = !DILocation(line: 1582, column: 1, scope: !88)
!112 = distinct !DISubprogram(name: "get_pllout_frequency", scope: !67, file: !67, line: 106, type: !113, scopeLine: 107, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !115)
!113 = !DISubroutineType(types: !114)
!114 = !{!3}
!115 = !{!116, !117, !118}
!116 = !DILocalVariable(name: "pll_input_freq", scope: !112, file: !67, line: 108, type: !3)
!117 = !DILocalVariable(name: "pll_mul", scope: !112, file: !67, line: 108, type: !3)
!118 = !DILocalVariable(name: "pll_div", scope: !112, file: !67, line: 108, type: !3)
!119 = !DILocation(line: 108, column: 2, scope: !112)
!120 = !DILocation(line: 108, column: 11, scope: !112)
!121 = !DILocation(line: 108, column: 27, scope: !112)
!122 = !DILocation(line: 108, column: 36, scope: !112)
!123 = !DILocation(line: 118, column: 10, scope: !112)
!124 = !DILocation(line: 128, column: 10, scope: !112)
!125 = !DILocation(line: 140, column: 18, scope: !126)
!126 = distinct !DILexicalBlock(scope: !127, file: !67, line: 139, column: 9)
!127 = distinct !DILexicalBlock(scope: !112, file: !67, line: 139, column: 6)
!128 = !DILocation(line: 147, column: 12, scope: !112)
!129 = !DILocation(line: 147, column: 34, scope: !112)
!130 = !DILocation(line: 147, column: 43, scope: !112)
!131 = !DILocation(line: 147, column: 62, scope: !112)
!132 = !DILocation(line: 147, column: 28, scope: !112)
!133 = !DILocation(line: 147, column: 76, scope: !112)
!134 = !DILocation(line: 147, column: 85, scope: !112)
!135 = !DILocation(line: 147, column: 105, scope: !112)
!136 = !DILocation(line: 147, column: 123, scope: !112)
!137 = !DILocation(line: 147, column: 70, scope: !112)
!138 = !DILocation(line: 160, column: 1, scope: !112)
!139 = !DILocation(line: 147, column: 2, scope: !112)
!140 = distinct !DISubprogram(name: "config_enable_default_clocks", scope: !67, file: !67, line: 167, type: !68, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !141)
!141 = !{}
!142 = !DILocation(line: 170, column: 2, scope: !140)
!143 = !DILocation(line: 175, column: 2, scope: !140)
!144 = !DILocation(line: 185, column: 1, scope: !140)
!145 = distinct !DISubprogram(name: "LL_APB1_GRP1_EnableClock", scope: !146, file: !146, line: 413, type: !147, scopeLine: 414, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !149)
!146 = !DIFile(filename: "modules/hal/stm32/stm32cube/stm32f0xx/drivers/include/stm32f0xx_ll_bus.h", directory: "/home/sri/zephyrproject")
!147 = !DISubroutineType(types: !148)
!148 = !{null, !3}
!149 = !{!150, !151}
!150 = !DILocalVariable(name: "Periphs", arg: 1, scope: !145, file: !146, line: 413, type: !3)
!151 = !DILocalVariable(name: "tmpreg", scope: !145, file: !146, line: 415, type: !12)
!152 = !DILocation(line: 413, column: 56, scope: !145)
!153 = !DILocation(line: 415, column: 3, scope: !145)
!154 = !DILocation(line: 415, column: 21, scope: !145)
!155 = !DILocation(line: 416, column: 84, scope: !145)
!156 = !DILocation(line: 416, column: 80, scope: !145)
!157 = !DILocation(line: 418, column: 80, scope: !145)
!158 = !DILocation(line: 418, column: 92, scope: !145)
!159 = !DILocation(line: 418, column: 89, scope: !145)
!160 = !DILocation(line: 418, column: 10, scope: !145)
!161 = !DILocation(line: 419, column: 9, scope: !145)
!162 = !DILocation(line: 420, column: 1, scope: !145)
!163 = distinct !DISubprogram(name: "LL_APB1_GRP2_EnableClock", scope: !146, file: !146, line: 663, type: !147, scopeLine: 664, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !164)
!164 = !{!165, !166}
!165 = !DILocalVariable(name: "Periphs", arg: 1, scope: !163, file: !146, line: 663, type: !3)
!166 = !DILocalVariable(name: "tmpreg", scope: !163, file: !146, line: 665, type: !12)
!167 = !DILocation(line: 663, column: 56, scope: !163)
!168 = !DILocation(line: 665, column: 3, scope: !163)
!169 = !DILocation(line: 665, column: 21, scope: !163)
!170 = !DILocation(line: 666, column: 84, scope: !163)
!171 = !DILocation(line: 666, column: 80, scope: !163)
!172 = !DILocation(line: 668, column: 80, scope: !163)
!173 = !DILocation(line: 668, column: 92, scope: !163)
!174 = !DILocation(line: 668, column: 89, scope: !163)
!175 = !DILocation(line: 668, column: 10, scope: !163)
!176 = !DILocation(line: 669, column: 9, scope: !163)
!177 = !DILocation(line: 670, column: 1, scope: !163)
!178 = !DISubprogram(name: "z_device_is_ready", scope: !34, file: !34, line: 724, type: !35, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !141)
