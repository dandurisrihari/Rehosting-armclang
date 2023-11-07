; ModuleID = '../bc_files/soc_config.bc'
source_filename = "/home/sri/zephyrproject/zephyr/soc/arm/st_stm32/common/soc_config.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-arm-none-eabi"

%struct.init_entry = type { %union.init_function, ptr }
%union.init_function = type { ptr }
%struct.DBGMCU_TypeDef = type { i32, i32, i32, i32 }

@__init_st_stm32_common_config = internal constant %struct.init_entry { %union.init_function { ptr @st_stm32_common_config }, ptr null }, section ".z_init_PRE_KERNEL_11_0_", align 4, !dbg !0
@llvm.used = appending global [1 x ptr] [ptr @__init_st_stm32_common_config], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @z_impl_device_is_ready(ptr noundef %0) #0 !dbg !70 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !74, metadata !DIExpression()), !dbg !75
  %3 = load ptr, ptr %2, align 4, !dbg !76
  %4 = call zeroext i1 @z_device_is_ready(ptr noundef %3), !dbg !77
  ret i1 %4, !dbg !78
}

; Function Attrs: noinline nounwind optnone
define internal i32 @st_stm32_common_config() #0 !dbg !79 {
  call void @LL_DBGMCU_DisableDBGStopMode(), !dbg !80
  ret i32 0, !dbg !81
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare zeroext i1 @z_device_is_ready(ptr noundef) #2

; Function Attrs: noinline nounwind optnone
define internal void @LL_DBGMCU_DisableDBGStopMode() #0 !dbg !82 {
  %1 = load volatile i32, ptr getelementptr inbounds (%struct.DBGMCU_TypeDef, ptr inttoptr (i32 1073829888 to ptr), i32 0, i32 1), align 4, !dbg !86
  %2 = and i32 %1, -3, !dbg !86
  store volatile i32 %2, ptr getelementptr inbounds (%struct.DBGMCU_TypeDef, ptr inttoptr (i32 1073829888 to ptr), i32 0, i32 1), align 4, !dbg !86
  ret void, !dbg !87
}

attributes #0 = { noinline nounwind optnone "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!61, !62, !63, !64, !65, !66, !67, !68}
!llvm.ident = !{!69}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__init_st_stm32_common_config", scope: !2, file: !19, line: 116, type: !20, isLocal: true, isDefinition: true, align: 32)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !18, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "soc_config.c", directory: "/home/sri/zephyrproject/zephyr/build")
!4 = !{!5}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 32)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "DBGMCU_TypeDef", file: !7, line: 300, baseType: !8)
!7 = !DIFile(filename: "modules/hal/stm32/stm32cube/stm32f0xx/soc/stm32f091xc.h", directory: "/home/sri/zephyrproject")
!8 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 294, size: 128, elements: !9)
!9 = !{!10, !15, !16, !17}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "IDCODE", scope: !8, file: !7, line: 296, baseType: !11, size: 32)
!11 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !12)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !13, line: 64, baseType: !14)
!13 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/stdint.h", directory: "")
!14 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "CR", scope: !8, file: !7, line: 297, baseType: !11, size: 32, offset: 32)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "APB1FZ", scope: !8, file: !7, line: 298, baseType: !11, size: 32, offset: 64)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "APB2FZ", scope: !8, file: !7, line: 299, baseType: !11, size: 32, offset: 96)
!18 = !{!0}
!19 = !DIFile(filename: "soc/arm/st_stm32/common/soc_config.c", directory: "/home/sri/zephyrproject/zephyr")
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!21 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "init_entry", file: !22, line: 92, size: 64, elements: !23)
!22 = !DIFile(filename: "include/zephyr/init.h", directory: "/home/sri/zephyrproject/zephyr")
!23 = !{!24, !60}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "init_fn", scope: !21, file: !22, line: 94, baseType: !25, size: 32)
!25 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "init_function", file: !22, line: 59, size: 32, elements: !26)
!26 = !{!27, !32}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "sys", scope: !25, file: !22, line: 66, baseType: !28, size: 32)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 32)
!29 = !DISubroutineType(types: !30)
!30 = !{!31}
!31 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !25, file: !22, line: 75, baseType: !33, size: 32)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 32)
!34 = !DISubroutineType(types: !35)
!35 = !{!31, !36}
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 32)
!37 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !39, line: 381, size: 160, elements: !40)
!39 = !DIFile(filename: "include/zephyr/device.h", directory: "/home/sri/zephyrproject/zephyr")
!40 = !{!41, !45, !48, !49, !58}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !38, file: !39, line: 383, baseType: !42, size: 32)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 32)
!43 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!44 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !38, file: !39, line: 385, baseType: !46, size: 32, offset: 32)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 32)
!47 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "api", scope: !38, file: !39, line: 387, baseType: !46, size: 32, offset: 64)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !38, file: !39, line: 389, baseType: !50, size: 32, offset: 96)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 32)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_state", file: !39, line: 354, size: 16, elements: !52)
!52 = !{!53, !56}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "init_res", scope: !51, file: !39, line: 362, baseType: !54, size: 8)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !13, line: 62, baseType: !55)
!55 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !51, file: !39, line: 367, baseType: !57, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 8)
!57 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !38, file: !39, line: 391, baseType: !59, size: 32, offset: 128)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !21, file: !22, line: 99, baseType: !36, size: 32, offset: 32)
!61 = !{i32 7, !"Dwarf Version", i32 4}
!62 = !{i32 2, !"Debug Info Version", i32 3}
!63 = !{i32 1, !"wchar_size", i32 4}
!64 = !{i32 1, !"static_rwdata", i32 1}
!65 = !{i32 1, !"enumsize_buildattr", i32 1}
!66 = !{i32 1, !"armlib_unavailable", i32 0}
!67 = !{i32 8, !"PIC Level", i32 2}
!68 = !{i32 7, !"PIE Level", i32 2}
!69 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
!70 = distinct !DISubprogram(name: "z_impl_device_is_ready", scope: !39, file: !39, line: 744, type: !71, scopeLine: 745, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !73)
!71 = !DISubroutineType(types: !72)
!72 = !{!57, !36}
!73 = !{}
!74 = !DILocalVariable(name: "dev", arg: 1, scope: !70, file: !39, line: 744, type: !36)
!75 = !DILocation(line: 744, column: 65, scope: !70)
!76 = !DILocation(line: 746, column: 27, scope: !70)
!77 = !DILocation(line: 746, column: 9, scope: !70)
!78 = !DILocation(line: 746, column: 2, scope: !70)
!79 = distinct !DISubprogram(name: "st_stm32_common_config", scope: !19, file: !19, line: 26, type: !29, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !73)
!80 = !DILocation(line: 107, column: 2, scope: !79)
!81 = !DILocation(line: 113, column: 2, scope: !79)
!82 = distinct !DISubprogram(name: "LL_DBGMCU_DisableDBGStopMode", scope: !83, file: !83, line: 1634, type: !84, scopeLine: 1635, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !73)
!83 = !DIFile(filename: "modules/hal/stm32/stm32cube/stm32f0xx/drivers/include/stm32f0xx_ll_system.h", directory: "/home/sri/zephyrproject")
!84 = !DISubroutineType(types: !85)
!85 = !{null}
!86 = !DILocation(line: 1636, column: 61, scope: !82)
!87 = !DILocation(line: 1637, column: 1, scope: !82)
