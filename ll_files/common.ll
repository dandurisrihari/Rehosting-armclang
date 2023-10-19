; ModuleID = '../bc_files/common.bc'
source_filename = "/home/sri/zephyrproject/zephyr/drivers/pinctrl/common.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-arm-none-eabi"

%struct.pinctrl_dev_config = type { ptr, i8 }
%struct.pinctrl_state = type { ptr, i8, i8 }

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @z_impl_device_is_ready(ptr noundef %0) #0 !dbg !9 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !38, metadata !DIExpression()), !dbg !39
  %3 = load ptr, ptr %2, align 4, !dbg !40
  %4 = call zeroext i1 @z_device_is_ready(ptr noundef %3) #4, !dbg !41
  ret i1 %4, !dbg !42
}

; Function Attrs: nounwind optsize
define hidden i32 @pinctrl_lookup_state(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2) #1 !dbg !43 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i8, align 1
  %7 = alloca ptr, align 4
  store ptr %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !74, metadata !DIExpression()), !dbg !77
  store i8 %1, ptr %6, align 1
  call void @llvm.dbg.declare(metadata ptr %6, metadata !75, metadata !DIExpression()), !dbg !78
  store ptr %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !76, metadata !DIExpression()), !dbg !79
  %8 = load ptr, ptr %5, align 4, !dbg !80
  %9 = getelementptr inbounds %struct.pinctrl_dev_config, ptr %8, i32 0, i32 0, !dbg !81
  %10 = load ptr, ptr %9, align 4, !dbg !81
  %11 = getelementptr inbounds %struct.pinctrl_state, ptr %10, i32 0, !dbg !80
  %12 = load ptr, ptr %7, align 4, !dbg !82
  store ptr %11, ptr %12, align 4, !dbg !83
  br label %13, !dbg !84

13:                                               ; preds = %35, %3
  %14 = load ptr, ptr %7, align 4, !dbg !85
  %15 = load ptr, ptr %14, align 4, !dbg !86
  %16 = load ptr, ptr %5, align 4, !dbg !87
  %17 = getelementptr inbounds %struct.pinctrl_dev_config, ptr %16, i32 0, i32 0, !dbg !88
  %18 = load ptr, ptr %17, align 4, !dbg !88
  %19 = load ptr, ptr %5, align 4, !dbg !89
  %20 = getelementptr inbounds %struct.pinctrl_dev_config, ptr %19, i32 0, i32 1, !dbg !90
  %21 = load i8, ptr %20, align 4, !dbg !90
  %22 = zext i8 %21 to i32, !dbg !87
  %23 = getelementptr inbounds %struct.pinctrl_state, ptr %18, i32 %22, !dbg !87
  %24 = icmp ult ptr %15, %23, !dbg !91
  br i1 %24, label %25, label %39, !dbg !84

25:                                               ; preds = %13
  %26 = load i8, ptr %6, align 1, !dbg !92
  %27 = zext i8 %26 to i32, !dbg !92
  %28 = load ptr, ptr %7, align 4, !dbg !95
  %29 = load ptr, ptr %28, align 4, !dbg !96
  %30 = getelementptr inbounds %struct.pinctrl_state, ptr %29, i32 0, i32 2, !dbg !97
  %31 = load i8, ptr %30, align 1, !dbg !97
  %32 = zext i8 %31 to i32, !dbg !98
  %33 = icmp eq i32 %27, %32, !dbg !99
  br i1 %33, label %34, label %35, !dbg !100

34:                                               ; preds = %25
  store i32 0, ptr %4, align 4, !dbg !101
  br label %40, !dbg !101

35:                                               ; preds = %25
  %36 = load ptr, ptr %7, align 4, !dbg !103
  %37 = load ptr, ptr %36, align 4, !dbg !104
  %38 = getelementptr inbounds %struct.pinctrl_state, ptr %37, i32 1, !dbg !104
  store ptr %38, ptr %36, align 4, !dbg !104
  br label %13, !dbg !84, !llvm.loop !105

39:                                               ; preds = %13
  store i32 -2, ptr %4, align 4, !dbg !107
  br label %40, !dbg !107

40:                                               ; preds = %39, %34
  %41 = load i32, ptr %4, align 4, !dbg !108
  ret i32 %41, !dbg !108
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: optsize
declare !dbg !109 dso_local zeroext i1 @z_device_is_ready(ptr noundef) #3

attributes #0 = { inlinehint nounwind optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "common.c", directory: "/home/sri/zephyrproject/zephyr/build")
!2 = !{i32 7, !"Dwarf Version", i32 4}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 1, !"static_rwdata", i32 1}
!6 = !{i32 1, !"enumsize_buildattr", i32 1}
!7 = !{i32 1, !"armlib_unavailable", i32 0}
!8 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
!9 = distinct !DISubprogram(name: "z_impl_device_is_ready", scope: !10, file: !10, line: 744, type: !11, scopeLine: 745, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !37)
!10 = !DIFile(filename: "include/zephyr/device.h", directory: "/home/sri/zephyrproject/zephyr")
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !14}
!13 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 32)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !10, line: 381, size: 160, elements: !17)
!17 = !{!18, !22, !25, !26, !35}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !16, file: !10, line: 383, baseType: !19, size: 32)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 32)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!21 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !16, file: !10, line: 385, baseType: !23, size: 32, offset: 32)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 32)
!24 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "api", scope: !16, file: !10, line: 387, baseType: !23, size: 32, offset: 64)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !16, file: !10, line: 389, baseType: !27, size: 32, offset: 96)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 32)
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_state", file: !10, line: 354, size: 16, elements: !29)
!29 = !{!30, !34}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "init_res", scope: !28, file: !10, line: 362, baseType: !31, size: 8)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !32, line: 62, baseType: !33)
!32 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/stdint.h", directory: "")
!33 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !28, file: !10, line: 367, baseType: !13, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 8)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !16, file: !10, line: 391, baseType: !36, size: 32, offset: 128)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!37 = !{!38}
!38 = !DILocalVariable(name: "dev", arg: 1, scope: !9, file: !10, line: 744, type: !14)
!39 = !DILocation(line: 744, column: 65, scope: !9)
!40 = !DILocation(line: 746, column: 27, scope: !9)
!41 = !DILocation(line: 746, column: 9, scope: !9)
!42 = !DILocation(line: 746, column: 2, scope: !9)
!43 = distinct !DISubprogram(name: "pinctrl_lookup_state", scope: !44, file: !44, line: 9, type: !45, scopeLine: 11, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !73)
!44 = !DIFile(filename: "drivers/pinctrl/common.c", directory: "/home/sri/zephyrproject/zephyr")
!45 = !DISubroutineType(types: !46)
!46 = !{!47, !48, !31, !72}
!47 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 32)
!49 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl_dev_config", file: !51, line: 60, size: 64, elements: !52)
!51 = !DIFile(filename: "include/zephyr/drivers/pinctrl.h", directory: "/home/sri/zephyrproject/zephyr")
!52 = !{!53, !71}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !50, file: !51, line: 69, baseType: !54, size: 32)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 32)
!55 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !56)
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl_state", file: !51, line: 50, size: 64, elements: !57)
!57 = !{!58, !69, !70}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "pins", scope: !56, file: !51, line: 52, baseType: !59, size: 32)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 32)
!60 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !61)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "pinctrl_soc_pin_t", file: !62, line: 37, baseType: !63)
!62 = !DIFile(filename: "soc/arm/st_stm32/common/pinctrl_soc.h", directory: "/home/sri/zephyrproject/zephyr")
!63 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl_soc_pin", file: !62, line: 32, size: 64, elements: !64)
!64 = !{!65, !68}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "pinmux", scope: !63, file: !62, line: 34, baseType: !66, size: 32)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !32, line: 64, baseType: !67)
!67 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "pincfg", scope: !63, file: !62, line: 36, baseType: !66, size: 32, offset: 32)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "pin_cnt", scope: !56, file: !51, line: 54, baseType: !31, size: 8, offset: 32)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !56, file: !51, line: 56, baseType: !31, size: 8, offset: 40)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "state_cnt", scope: !50, file: !51, line: 71, baseType: !31, size: 8, offset: 32)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 32)
!73 = !{!74, !75, !76}
!74 = !DILocalVariable(name: "config", arg: 1, scope: !43, file: !44, line: 9, type: !48)
!75 = !DILocalVariable(name: "id", arg: 2, scope: !43, file: !44, line: 9, type: !31)
!76 = !DILocalVariable(name: "state", arg: 3, scope: !43, file: !44, line: 10, type: !72)
!77 = !DILocation(line: 9, column: 59, scope: !43)
!78 = !DILocation(line: 9, column: 75, scope: !43)
!79 = !DILocation(line: 10, column: 34, scope: !43)
!80 = !DILocation(line: 12, column: 12, scope: !43)
!81 = !DILocation(line: 12, column: 20, scope: !43)
!82 = !DILocation(line: 12, column: 3, scope: !43)
!83 = !DILocation(line: 12, column: 9, scope: !43)
!84 = !DILocation(line: 13, column: 2, scope: !43)
!85 = !DILocation(line: 13, column: 10, scope: !43)
!86 = !DILocation(line: 13, column: 9, scope: !43)
!87 = !DILocation(line: 13, column: 19, scope: !43)
!88 = !DILocation(line: 13, column: 27, scope: !43)
!89 = !DILocation(line: 13, column: 34, scope: !43)
!90 = !DILocation(line: 13, column: 42, scope: !43)
!91 = !DILocation(line: 13, column: 16, scope: !43)
!92 = !DILocation(line: 14, column: 7, scope: !93)
!93 = distinct !DILexicalBlock(scope: !94, file: !44, line: 14, column: 7)
!94 = distinct !DILexicalBlock(scope: !43, file: !44, line: 13, column: 54)
!95 = !DILocation(line: 14, column: 15, scope: !93)
!96 = !DILocation(line: 14, column: 14, scope: !93)
!97 = !DILocation(line: 14, column: 23, scope: !93)
!98 = !DILocation(line: 14, column: 13, scope: !93)
!99 = !DILocation(line: 14, column: 10, scope: !93)
!100 = !DILocation(line: 14, column: 7, scope: !94)
!101 = !DILocation(line: 15, column: 4, scope: !102)
!102 = distinct !DILexicalBlock(scope: !93, file: !44, line: 14, column: 27)
!103 = !DILocation(line: 18, column: 5, scope: !94)
!104 = !DILocation(line: 18, column: 11, scope: !94)
!105 = distinct !{!105, !84, !106}
!106 = !DILocation(line: 19, column: 2, scope: !43)
!107 = !DILocation(line: 21, column: 2, scope: !43)
!108 = !DILocation(line: 22, column: 1, scope: !43)
!109 = !DISubprogram(name: "z_device_is_ready", scope: !10, file: !10, line: 724, type: !11, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !110)
!110 = !{}
