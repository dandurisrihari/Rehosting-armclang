; ModuleID = '../bc_files/system_stm32f0xx.bc'
source_filename = "/home/sri/zephyrproject/modules/hal/stm32/stm32cube/stm32f0xx/soc/system_stm32f0xx.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-arm-none-eabi"

%struct.RCC_TypeDef = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@SystemCoreClock = hidden global i32 8000000, align 4, !dbg !0
@AHBPrescTable = hidden constant [16 x i8] c"\00\00\00\00\00\00\00\00\01\02\03\04\06\07\08\09", align 1, !dbg !29
@APBPrescTable = hidden constant [8 x i8] c"\00\00\00\00\01\02\03\04", align 1, !dbg !38

; Function Attrs: noinline nounwind optnone
define hidden void @SystemInit() #0 !dbg !52 {
  ret void, !dbg !56
}

; Function Attrs: noinline nounwind optnone
define hidden void @SystemCoreClockUpdate() #0 !dbg !57 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata ptr %1, metadata !58, metadata !DIExpression()), !dbg !59
  store i32 0, ptr %1, align 4, !dbg !59
  call void @llvm.dbg.declare(metadata ptr %2, metadata !60, metadata !DIExpression()), !dbg !61
  store i32 0, ptr %2, align 4, !dbg !61
  call void @llvm.dbg.declare(metadata ptr %3, metadata !62, metadata !DIExpression()), !dbg !63
  store i32 0, ptr %3, align 4, !dbg !63
  call void @llvm.dbg.declare(metadata ptr %4, metadata !64, metadata !DIExpression()), !dbg !65
  store i32 0, ptr %4, align 4, !dbg !65
  %5 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !66
  %6 = and i32 %5, 12, !dbg !67
  store i32 %6, ptr %1, align 4, !dbg !68
  %7 = load i32, ptr %1, align 4, !dbg !69
  switch i32 %7, label %43 [
    i32 0, label %8
    i32 4, label %9
    i32 8, label %10
  ], !dbg !70

8:                                                ; preds = %0
  store i32 8000000, ptr @SystemCoreClock, align 4, !dbg !71
  br label %44, !dbg !73

9:                                                ; preds = %0
  store i32 8000000, ptr @SystemCoreClock, align 4, !dbg !74
  br label %44, !dbg !75

10:                                               ; preds = %0
  %11 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !76
  %12 = and i32 %11, 3932160, !dbg !77
  store i32 %12, ptr %2, align 4, !dbg !78
  %13 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !79
  %14 = and i32 %13, 98304, !dbg !80
  store i32 %14, ptr %3, align 4, !dbg !81
  %15 = load i32, ptr %2, align 4, !dbg !82
  %16 = lshr i32 %15, 18, !dbg !83
  %17 = add i32 %16, 2, !dbg !84
  store i32 %17, ptr %2, align 4, !dbg !85
  %18 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 11), align 4, !dbg !86
  %19 = and i32 %18, 15, !dbg !87
  %20 = add i32 %19, 1, !dbg !88
  store i32 %20, ptr %4, align 4, !dbg !89
  %21 = load i32, ptr %3, align 4, !dbg !90
  %22 = icmp eq i32 %21, 65536, !dbg !92
  br i1 %22, label %23, label %28, !dbg !93

23:                                               ; preds = %10
  %24 = load i32, ptr %4, align 4, !dbg !94
  %25 = udiv i32 8000000, %24, !dbg !96
  %26 = load i32, ptr %2, align 4, !dbg !97
  %27 = mul i32 %25, %26, !dbg !98
  store i32 %27, ptr @SystemCoreClock, align 4, !dbg !99
  br label %42, !dbg !100

28:                                               ; preds = %10
  %29 = load i32, ptr %3, align 4, !dbg !101
  %30 = icmp eq i32 %29, 98304, !dbg !103
  br i1 %30, label %31, label %36, !dbg !104

31:                                               ; preds = %28
  %32 = load i32, ptr %4, align 4, !dbg !105
  %33 = udiv i32 48000000, %32, !dbg !107
  %34 = load i32, ptr %2, align 4, !dbg !108
  %35 = mul i32 %33, %34, !dbg !109
  store i32 %35, ptr @SystemCoreClock, align 4, !dbg !110
  br label %41, !dbg !111

36:                                               ; preds = %28
  %37 = load i32, ptr %4, align 4, !dbg !112
  %38 = udiv i32 8000000, %37, !dbg !114
  %39 = load i32, ptr %2, align 4, !dbg !115
  %40 = mul i32 %38, %39, !dbg !116
  store i32 %40, ptr @SystemCoreClock, align 4, !dbg !117
  br label %41

41:                                               ; preds = %36, %31
  br label %42

42:                                               ; preds = %41, %23
  br label %44, !dbg !118

43:                                               ; preds = %0
  store i32 8000000, ptr @SystemCoreClock, align 4, !dbg !119
  br label %44, !dbg !120

44:                                               ; preds = %43, %42, %9, %8
  %45 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !121
  %46 = and i32 %45, 240, !dbg !122
  %47 = lshr i32 %46, 4, !dbg !123
  %48 = getelementptr inbounds [16 x i8], ptr @AHBPrescTable, i32 0, i32 %47, !dbg !124
  %49 = load i8, ptr %48, align 1, !dbg !124
  %50 = zext i8 %49 to i32, !dbg !124
  store i32 %50, ptr %1, align 4, !dbg !125
  %51 = load i32, ptr %1, align 4, !dbg !126
  %52 = load i32, ptr @SystemCoreClock, align 4, !dbg !127
  %53 = lshr i32 %52, %51, !dbg !127
  store i32 %53, ptr @SystemCoreClock, align 4, !dbg !127
  ret void, !dbg !128
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind optnone "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!43, !44, !45, !46, !47, !48, !49, !50}
!llvm.ident = !{!51}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "SystemCoreClock", scope: !2, file: !31, line: 100, type: !12, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !28, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "system_stm32f0xx.c", directory: "/home/sri/zephyrproject/zephyr/build")
!4 = !{!5}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 32)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "RCC_TypeDef", file: !7, line: 461, baseType: !8)
!7 = !DIFile(filename: "modules/hal/stm32/stm32cube/stm32f0xx/soc/stm32f091xc.h", directory: "/home/sri/zephyrproject")
!8 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 445, size: 448, elements: !9)
!9 = !{!10, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "CR", scope: !8, file: !7, line: 447, baseType: !11, size: 32)
!11 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !12)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !13, line: 64, baseType: !14)
!13 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/stdint.h", directory: "")
!14 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "CFGR", scope: !8, file: !7, line: 448, baseType: !11, size: 32, offset: 32)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "CIR", scope: !8, file: !7, line: 449, baseType: !11, size: 32, offset: 64)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "APB2RSTR", scope: !8, file: !7, line: 450, baseType: !11, size: 32, offset: 96)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "APB1RSTR", scope: !8, file: !7, line: 451, baseType: !11, size: 32, offset: 128)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "AHBENR", scope: !8, file: !7, line: 452, baseType: !11, size: 32, offset: 160)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "APB2ENR", scope: !8, file: !7, line: 453, baseType: !11, size: 32, offset: 192)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "APB1ENR", scope: !8, file: !7, line: 454, baseType: !11, size: 32, offset: 224)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "BDCR", scope: !8, file: !7, line: 455, baseType: !11, size: 32, offset: 256)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "CSR", scope: !8, file: !7, line: 456, baseType: !11, size: 32, offset: 288)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "AHBRSTR", scope: !8, file: !7, line: 457, baseType: !11, size: 32, offset: 320)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "CFGR2", scope: !8, file: !7, line: 458, baseType: !11, size: 32, offset: 352)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "CFGR3", scope: !8, file: !7, line: 459, baseType: !11, size: 32, offset: 384)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "CR2", scope: !8, file: !7, line: 460, baseType: !11, size: 32, offset: 416)
!28 = !{!0, !29, !38}
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(name: "AHBPrescTable", scope: !2, file: !31, line: 102, type: !32, isLocal: false, isDefinition: true)
!31 = !DIFile(filename: "modules/hal/stm32/stm32cube/stm32f0xx/soc/system_stm32f0xx.c", directory: "/home/sri/zephyrproject")
!32 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 128, elements: !36)
!33 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !13, line: 62, baseType: !35)
!35 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!36 = !{!37}
!37 = !DISubrange(count: 16)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(name: "APBPrescTable", scope: !2, file: !31, line: 103, type: !40, isLocal: false, isDefinition: true)
!40 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 64, elements: !41)
!41 = !{!42}
!42 = !DISubrange(count: 8)
!43 = !{i32 7, !"Dwarf Version", i32 4}
!44 = !{i32 2, !"Debug Info Version", i32 3}
!45 = !{i32 1, !"wchar_size", i32 4}
!46 = !{i32 1, !"static_rwdata", i32 1}
!47 = !{i32 1, !"enumsize_buildattr", i32 1}
!48 = !{i32 1, !"armlib_unavailable", i32 0}
!49 = !{i32 8, !"PIC Level", i32 2}
!50 = !{i32 7, !"PIE Level", i32 2}
!51 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
!52 = distinct !DISubprogram(name: "SystemInit", scope: !31, file: !31, line: 126, type: !53, scopeLine: 127, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !55)
!53 = !DISubroutineType(types: !54)
!54 = !{null}
!55 = !{}
!56 = !DILocation(line: 134, column: 1, scope: !52)
!57 = distinct !DISubprogram(name: "SystemCoreClockUpdate", scope: !31, file: !31, line: 178, type: !53, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !55)
!58 = !DILocalVariable(name: "tmp", scope: !57, file: !31, line: 180, type: !12)
!59 = !DILocation(line: 180, column: 12, scope: !57)
!60 = !DILocalVariable(name: "pllmull", scope: !57, file: !31, line: 180, type: !12)
!61 = !DILocation(line: 180, column: 21, scope: !57)
!62 = !DILocalVariable(name: "pllsource", scope: !57, file: !31, line: 180, type: !12)
!63 = !DILocation(line: 180, column: 34, scope: !57)
!64 = !DILocalVariable(name: "predivfactor", scope: !57, file: !31, line: 180, type: !12)
!65 = !DILocation(line: 180, column: 49, scope: !57)
!66 = !DILocation(line: 183, column: 75, scope: !57)
!67 = !DILocation(line: 183, column: 80, scope: !57)
!68 = !DILocation(line: 183, column: 7, scope: !57)
!69 = !DILocation(line: 185, column: 11, scope: !57)
!70 = !DILocation(line: 185, column: 3, scope: !57)
!71 = !DILocation(line: 188, column: 23, scope: !72)
!72 = distinct !DILexicalBlock(scope: !57, file: !31, line: 186, column: 3)
!73 = !DILocation(line: 189, column: 7, scope: !72)
!74 = !DILocation(line: 191, column: 23, scope: !72)
!75 = !DILocation(line: 192, column: 7, scope: !72)
!76 = !DILocation(line: 195, column: 83, scope: !72)
!77 = !DILocation(line: 195, column: 88, scope: !72)
!78 = !DILocation(line: 195, column: 15, scope: !72)
!79 = !DILocation(line: 196, column: 85, scope: !72)
!80 = !DILocation(line: 196, column: 90, scope: !72)
!81 = !DILocation(line: 196, column: 17, scope: !72)
!82 = !DILocation(line: 197, column: 19, scope: !72)
!83 = !DILocation(line: 197, column: 27, scope: !72)
!84 = !DILocation(line: 197, column: 34, scope: !72)
!85 = !DILocation(line: 197, column: 15, scope: !72)
!86 = !DILocation(line: 198, column: 89, scope: !72)
!87 = !DILocation(line: 198, column: 95, scope: !72)
!88 = !DILocation(line: 198, column: 114, scope: !72)
!89 = !DILocation(line: 198, column: 20, scope: !72)
!90 = !DILocation(line: 200, column: 11, scope: !91)
!91 = distinct !DILexicalBlock(scope: !72, file: !31, line: 200, column: 11)
!92 = !DILocation(line: 200, column: 21, scope: !91)
!93 = !DILocation(line: 200, column: 11, scope: !72)
!94 = !DILocation(line: 203, column: 36, scope: !95)
!95 = distinct !DILexicalBlock(scope: !91, file: !31, line: 201, column: 7)
!96 = !DILocation(line: 203, column: 35, scope: !95)
!97 = !DILocation(line: 203, column: 52, scope: !95)
!98 = !DILocation(line: 203, column: 50, scope: !95)
!99 = !DILocation(line: 203, column: 25, scope: !95)
!100 = !DILocation(line: 204, column: 7, scope: !95)
!101 = !DILocation(line: 206, column: 16, scope: !102)
!102 = distinct !DILexicalBlock(scope: !91, file: !31, line: 206, column: 16)
!103 = !DILocation(line: 206, column: 26, scope: !102)
!104 = !DILocation(line: 206, column: 16, scope: !91)
!105 = !DILocation(line: 209, column: 38, scope: !106)
!106 = distinct !DILexicalBlock(scope: !102, file: !31, line: 207, column: 7)
!107 = !DILocation(line: 209, column: 37, scope: !106)
!108 = !DILocation(line: 209, column: 54, scope: !106)
!109 = !DILocation(line: 209, column: 52, scope: !106)
!110 = !DILocation(line: 209, column: 25, scope: !106)
!111 = !DILocation(line: 210, column: 7, scope: !106)
!112 = !DILocation(line: 218, column: 37, scope: !113)
!113 = distinct !DILexicalBlock(scope: !102, file: !31, line: 213, column: 7)
!114 = !DILocation(line: 218, column: 36, scope: !113)
!115 = !DILocation(line: 218, column: 53, scope: !113)
!116 = !DILocation(line: 218, column: 51, scope: !113)
!117 = !DILocation(line: 218, column: 25, scope: !113)
!118 = !DILocation(line: 226, column: 7, scope: !72)
!119 = !DILocation(line: 228, column: 23, scope: !72)
!120 = !DILocation(line: 229, column: 7, scope: !72)
!121 = !DILocation(line: 233, column: 91, scope: !57)
!122 = !DILocation(line: 233, column: 96, scope: !57)
!123 = !DILocation(line: 233, column: 115, scope: !57)
!124 = !DILocation(line: 233, column: 9, scope: !57)
!125 = !DILocation(line: 233, column: 7, scope: !57)
!126 = !DILocation(line: 235, column: 23, scope: !57)
!127 = !DILocation(line: 235, column: 19, scope: !57)
!128 = !DILocation(line: 236, column: 1, scope: !57)
