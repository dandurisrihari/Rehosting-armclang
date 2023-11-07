; ModuleID = '../bc_files/common.bc'
source_filename = "/home/sri/zephyrproject/zephyr/drivers/pinctrl/common.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-arm-none-eabi"

%struct.pinctrl_dev_config = type { ptr, i8 }
%struct.pinctrl_state = type { ptr, i8, i8 }

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @z_impl_device_is_ready(ptr noundef %0) #0 !dbg !11 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !40, metadata !DIExpression()), !dbg !41
  %3 = load ptr, ptr %2, align 4, !dbg !42
  %4 = call zeroext i1 @z_device_is_ready(ptr noundef %3), !dbg !43
  ret i1 %4, !dbg !44
}

; Function Attrs: noinline nounwind optnone
define hidden i32 @pinctrl_lookup_state(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2) #0 !dbg !45 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i8, align 1
  %7 = alloca ptr, align 4
  store ptr %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !75, metadata !DIExpression()), !dbg !76
  store i8 %1, ptr %6, align 1
  call void @llvm.dbg.declare(metadata ptr %6, metadata !77, metadata !DIExpression()), !dbg !78
  store ptr %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !79, metadata !DIExpression()), !dbg !80
  %8 = load ptr, ptr %5, align 4, !dbg !81
  %9 = getelementptr inbounds %struct.pinctrl_dev_config, ptr %8, i32 0, i32 0, !dbg !82
  %10 = load ptr, ptr %9, align 4, !dbg !82
  %11 = getelementptr inbounds %struct.pinctrl_state, ptr %10, i32 0, !dbg !81
  %12 = load ptr, ptr %7, align 4, !dbg !83
  store ptr %11, ptr %12, align 4, !dbg !84
  br label %13, !dbg !85

13:                                               ; preds = %35, %3
  %14 = load ptr, ptr %7, align 4, !dbg !86
  %15 = load ptr, ptr %14, align 4, !dbg !87
  %16 = load ptr, ptr %5, align 4, !dbg !88
  %17 = getelementptr inbounds %struct.pinctrl_dev_config, ptr %16, i32 0, i32 0, !dbg !89
  %18 = load ptr, ptr %17, align 4, !dbg !89
  %19 = load ptr, ptr %5, align 4, !dbg !90
  %20 = getelementptr inbounds %struct.pinctrl_dev_config, ptr %19, i32 0, i32 1, !dbg !91
  %21 = load i8, ptr %20, align 4, !dbg !91
  %22 = zext i8 %21 to i32, !dbg !88
  %23 = getelementptr inbounds %struct.pinctrl_state, ptr %18, i32 %22, !dbg !88
  %24 = icmp ult ptr %15, %23, !dbg !92
  br i1 %24, label %25, label %39, !dbg !85

25:                                               ; preds = %13
  %26 = load i8, ptr %6, align 1, !dbg !93
  %27 = zext i8 %26 to i32, !dbg !93
  %28 = load ptr, ptr %7, align 4, !dbg !96
  %29 = load ptr, ptr %28, align 4, !dbg !97
  %30 = getelementptr inbounds %struct.pinctrl_state, ptr %29, i32 0, i32 2, !dbg !98
  %31 = load i8, ptr %30, align 1, !dbg !98
  %32 = zext i8 %31 to i32, !dbg !99
  %33 = icmp eq i32 %27, %32, !dbg !100
  br i1 %33, label %34, label %35, !dbg !101

34:                                               ; preds = %25
  store i32 0, ptr %4, align 4, !dbg !102
  br label %40, !dbg !102

35:                                               ; preds = %25
  %36 = load ptr, ptr %7, align 4, !dbg !104
  %37 = load ptr, ptr %36, align 4, !dbg !105
  %38 = getelementptr inbounds %struct.pinctrl_state, ptr %37, i32 1, !dbg !105
  store ptr %38, ptr %36, align 4, !dbg !105
  br label %13, !dbg !85, !llvm.loop !106

39:                                               ; preds = %13
  store i32 -2, ptr %4, align 4, !dbg !108
  br label %40, !dbg !108

40:                                               ; preds = %39, %34
  %41 = load i32, ptr %4, align 4, !dbg !109
  ret i32 %41, !dbg !109
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare zeroext i1 @z_device_is_ready(ptr noundef) #2

attributes #0 = { noinline nounwind optnone "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "common.c", directory: "/home/sri/zephyrproject/zephyr/build")
!2 = !{i32 7, !"Dwarf Version", i32 4}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 1, !"static_rwdata", i32 1}
!6 = !{i32 1, !"enumsize_buildattr", i32 1}
!7 = !{i32 1, !"armlib_unavailable", i32 0}
!8 = !{i32 8, !"PIC Level", i32 2}
!9 = !{i32 7, !"PIE Level", i32 2}
!10 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
!11 = distinct !DISubprogram(name: "z_impl_device_is_ready", scope: !12, file: !12, line: 744, type: !13, scopeLine: 745, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !39)
!12 = !DIFile(filename: "include/zephyr/device.h", directory: "/home/sri/zephyrproject/zephyr")
!13 = !DISubroutineType(types: !14)
!14 = !{!15, !16}
!15 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 32)
!17 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !12, line: 381, size: 160, elements: !19)
!19 = !{!20, !24, !27, !28, !37}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !18, file: !12, line: 383, baseType: !21, size: 32)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 32)
!22 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!23 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !18, file: !12, line: 385, baseType: !25, size: 32, offset: 32)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 32)
!26 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "api", scope: !18, file: !12, line: 387, baseType: !25, size: 32, offset: 64)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !18, file: !12, line: 389, baseType: !29, size: 32, offset: 96)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 32)
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_state", file: !12, line: 354, size: 16, elements: !31)
!31 = !{!32, !36}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "init_res", scope: !30, file: !12, line: 362, baseType: !33, size: 8)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !34, line: 62, baseType: !35)
!34 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/stdint.h", directory: "")
!35 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !30, file: !12, line: 367, baseType: !15, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 8)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !18, file: !12, line: 391, baseType: !38, size: 32, offset: 128)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!39 = !{}
!40 = !DILocalVariable(name: "dev", arg: 1, scope: !11, file: !12, line: 744, type: !16)
!41 = !DILocation(line: 744, column: 65, scope: !11)
!42 = !DILocation(line: 746, column: 27, scope: !11)
!43 = !DILocation(line: 746, column: 9, scope: !11)
!44 = !DILocation(line: 746, column: 2, scope: !11)
!45 = distinct !DISubprogram(name: "pinctrl_lookup_state", scope: !46, file: !46, line: 9, type: !47, scopeLine: 11, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !39)
!46 = !DIFile(filename: "drivers/pinctrl/common.c", directory: "/home/sri/zephyrproject/zephyr")
!47 = !DISubroutineType(types: !48)
!48 = !{!49, !50, !33, !74}
!49 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 32)
!51 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !52)
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl_dev_config", file: !53, line: 60, size: 64, elements: !54)
!53 = !DIFile(filename: "include/zephyr/drivers/pinctrl.h", directory: "/home/sri/zephyrproject/zephyr")
!54 = !{!55, !73}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !52, file: !53, line: 69, baseType: !56, size: 32)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 32)
!57 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl_state", file: !53, line: 50, size: 64, elements: !59)
!59 = !{!60, !71, !72}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "pins", scope: !58, file: !53, line: 52, baseType: !61, size: 32)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 32)
!62 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !63)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "pinctrl_soc_pin_t", file: !64, line: 37, baseType: !65)
!64 = !DIFile(filename: "soc/arm/st_stm32/common/pinctrl_soc.h", directory: "/home/sri/zephyrproject/zephyr")
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl_soc_pin", file: !64, line: 32, size: 64, elements: !66)
!66 = !{!67, !70}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "pinmux", scope: !65, file: !64, line: 34, baseType: !68, size: 32)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !34, line: 64, baseType: !69)
!69 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "pincfg", scope: !65, file: !64, line: 36, baseType: !68, size: 32, offset: 32)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "pin_cnt", scope: !58, file: !53, line: 54, baseType: !33, size: 8, offset: 32)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !58, file: !53, line: 56, baseType: !33, size: 8, offset: 40)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "state_cnt", scope: !52, file: !53, line: 71, baseType: !33, size: 8, offset: 32)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 32)
!75 = !DILocalVariable(name: "config", arg: 1, scope: !45, file: !46, line: 9, type: !50)
!76 = !DILocation(line: 9, column: 59, scope: !45)
!77 = !DILocalVariable(name: "id", arg: 2, scope: !45, file: !46, line: 9, type: !33)
!78 = !DILocation(line: 9, column: 75, scope: !45)
!79 = !DILocalVariable(name: "state", arg: 3, scope: !45, file: !46, line: 10, type: !74)
!80 = !DILocation(line: 10, column: 34, scope: !45)
!81 = !DILocation(line: 12, column: 12, scope: !45)
!82 = !DILocation(line: 12, column: 20, scope: !45)
!83 = !DILocation(line: 12, column: 3, scope: !45)
!84 = !DILocation(line: 12, column: 9, scope: !45)
!85 = !DILocation(line: 13, column: 2, scope: !45)
!86 = !DILocation(line: 13, column: 10, scope: !45)
!87 = !DILocation(line: 13, column: 9, scope: !45)
!88 = !DILocation(line: 13, column: 19, scope: !45)
!89 = !DILocation(line: 13, column: 27, scope: !45)
!90 = !DILocation(line: 13, column: 34, scope: !45)
!91 = !DILocation(line: 13, column: 42, scope: !45)
!92 = !DILocation(line: 13, column: 16, scope: !45)
!93 = !DILocation(line: 14, column: 7, scope: !94)
!94 = distinct !DILexicalBlock(scope: !95, file: !46, line: 14, column: 7)
!95 = distinct !DILexicalBlock(scope: !45, file: !46, line: 13, column: 54)
!96 = !DILocation(line: 14, column: 15, scope: !94)
!97 = !DILocation(line: 14, column: 14, scope: !94)
!98 = !DILocation(line: 14, column: 23, scope: !94)
!99 = !DILocation(line: 14, column: 13, scope: !94)
!100 = !DILocation(line: 14, column: 10, scope: !94)
!101 = !DILocation(line: 14, column: 7, scope: !95)
!102 = !DILocation(line: 15, column: 4, scope: !103)
!103 = distinct !DILexicalBlock(scope: !94, file: !46, line: 14, column: 27)
!104 = !DILocation(line: 18, column: 5, scope: !95)
!105 = !DILocation(line: 18, column: 11, scope: !95)
!106 = distinct !{!106, !85, !107}
!107 = !DILocation(line: 19, column: 2, scope: !45)
!108 = !DILocation(line: 21, column: 2, scope: !45)
!109 = !DILocation(line: 22, column: 1, scope: !45)
