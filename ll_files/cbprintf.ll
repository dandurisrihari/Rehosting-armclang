; ModuleID = '../bc_files/cbprintf.bc'
source_filename = "/home/sri/zephyrproject/zephyr/lib/os/cbprintf.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-arm-none-eabi"

%struct.__va_list = type { ptr }

; Function Attrs: nounwind optsize
define hidden i32 @cbprintf(ptr noundef %0, ptr noundef %1, ptr noundef %2, ...) #0 !dbg !9 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca %struct.__va_list, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !24, metadata !DIExpression()), !dbg !35
  store ptr %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !25, metadata !DIExpression()), !dbg !36
  store ptr %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !26, metadata !DIExpression()), !dbg !37
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #6, !dbg !38
  call void @llvm.dbg.declare(metadata ptr %7, metadata !27, metadata !DIExpression()), !dbg !39
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #6, !dbg !40
  call void @llvm.dbg.declare(metadata ptr %8, metadata !34, metadata !DIExpression()), !dbg !41
  call void @llvm.va_start(ptr %7), !dbg !42
  %9 = load ptr, ptr %4, align 4, !dbg !43
  %10 = load ptr, ptr %5, align 4, !dbg !44
  %11 = load ptr, ptr %6, align 4, !dbg !45
  %12 = getelementptr inbounds %struct.__va_list, ptr %7, i32 0, i32 0, !dbg !46
  %13 = load [1 x i32], ptr %12, align 4, !dbg !46
  %14 = call i32 @cbvprintf(ptr noundef %9, ptr noundef %10, ptr noundef %11, [1 x i32] %13) #7, !dbg !46
  store i32 %14, ptr %8, align 4, !dbg !47
  call void @llvm.va_end(ptr %7), !dbg !48
  %15 = load i32, ptr %8, align 4, !dbg !49
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #6, !dbg !50
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #6, !dbg !50
  ret i32 %15, !dbg !51
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #3

; Function Attrs: inlinehint nounwind optsize
define internal i32 @cbvprintf(ptr noundef %0, ptr noundef %1, ptr noundef %2, [1 x i32] %3) #4 !dbg !52 {
  %5 = alloca %struct.__va_list, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = getelementptr inbounds %struct.__va_list, ptr %5, i32 0, i32 0
  store [1 x i32] %3, ptr %9, align 4
  store ptr %0, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !56, metadata !DIExpression()), !dbg !60
  store ptr %1, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !57, metadata !DIExpression()), !dbg !61
  store ptr %2, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !58, metadata !DIExpression()), !dbg !62
  call void @llvm.dbg.declare(metadata ptr %5, metadata !59, metadata !DIExpression()), !dbg !63
  %10 = load ptr, ptr %6, align 4, !dbg !64
  %11 = load ptr, ptr %7, align 4, !dbg !65
  %12 = load ptr, ptr %8, align 4, !dbg !66
  %13 = getelementptr inbounds %struct.__va_list, ptr %5, i32 0, i32 0, !dbg !67
  %14 = load [1 x i32], ptr %13, align 4, !dbg !67
  %15 = call i32 @z_cbvprintf_impl(ptr noundef %10, ptr noundef %11, ptr noundef %12, [1 x i32] %14, i32 noundef 0) #7, !dbg !67
  ret i32 %15, !dbg !68
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare !dbg !69 dso_local i32 @z_cbvprintf_impl(ptr noundef, ptr noundef, ptr noundef, [1 x i32], i32 noundef) #5

attributes #0 = { nounwind optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "cbprintf.c", directory: "/home/sri/zephyrproject/zephyr/build")
!2 = !{i32 7, !"Dwarf Version", i32 4}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 1, !"static_rwdata", i32 1}
!6 = !{i32 1, !"enumsize_buildattr", i32 1}
!7 = !{i32 1, !"armlib_unavailable", i32 0}
!8 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
!9 = distinct !DISubprogram(name: "cbprintf", scope: !10, file: !10, line: 11, type: !11, scopeLine: 12, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !23)
!10 = !DIFile(filename: "lib/os/cbprintf.c", directory: "/home/sri/zephyrproject/zephyr")
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !14, !19, !20, null}
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "cbprintf_cb", file: !15, line: 302, baseType: !16)
!15 = !DIFile(filename: "include/zephyr/sys/cbprintf.h", directory: "/home/sri/zephyrproject/zephyr")
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 32)
!17 = !DISubroutineType(types: !18)
!18 = !{!13, null}
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 32)
!21 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!22 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!23 = !{!24, !25, !26, !27, !34}
!24 = !DILocalVariable(name: "out", arg: 1, scope: !9, file: !10, line: 11, type: !14)
!25 = !DILocalVariable(name: "ctx", arg: 2, scope: !9, file: !10, line: 11, type: !19)
!26 = !DILocalVariable(name: "format", arg: 3, scope: !9, file: !10, line: 11, type: !20)
!27 = !DILocalVariable(name: "ap", scope: !9, file: !10, line: 13, type: !28)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !29, line: 22, baseType: !30)
!29 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/lib/clang/17/include/stdarg.h", directory: "")
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, baseType: !31)
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 32, elements: !32)
!32 = !{!33}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "__ap", scope: !31, file: !1, line: 13, baseType: !19, size: 32)
!34 = !DILocalVariable(name: "rc", scope: !9, file: !10, line: 14, type: !13)
!35 = !DILocation(line: 11, column: 26, scope: !9)
!36 = !DILocation(line: 11, column: 37, scope: !9)
!37 = !DILocation(line: 11, column: 54, scope: !9)
!38 = !DILocation(line: 13, column: 2, scope: !9)
!39 = !DILocation(line: 13, column: 10, scope: !9)
!40 = !DILocation(line: 14, column: 2, scope: !9)
!41 = !DILocation(line: 14, column: 6, scope: !9)
!42 = !DILocation(line: 16, column: 2, scope: !9)
!43 = !DILocation(line: 17, column: 17, scope: !9)
!44 = !DILocation(line: 17, column: 22, scope: !9)
!45 = !DILocation(line: 17, column: 27, scope: !9)
!46 = !DILocation(line: 17, column: 7, scope: !9)
!47 = !DILocation(line: 17, column: 5, scope: !9)
!48 = !DILocation(line: 18, column: 2, scope: !9)
!49 = !DILocation(line: 20, column: 9, scope: !9)
!50 = !DILocation(line: 21, column: 1, scope: !9)
!51 = !DILocation(line: 20, column: 2, scope: !9)
!52 = distinct !DISubprogram(name: "cbvprintf", scope: !15, file: !15, line: 744, type: !53, scopeLine: 745, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !55)
!53 = !DISubroutineType(types: !54)
!54 = !{!13, !14, !19, !20, !28}
!55 = !{!56, !57, !58, !59}
!56 = !DILocalVariable(name: "out", arg: 1, scope: !52, file: !15, line: 744, type: !14)
!57 = !DILocalVariable(name: "ctx", arg: 2, scope: !52, file: !15, line: 744, type: !19)
!58 = !DILocalVariable(name: "format", arg: 3, scope: !52, file: !15, line: 744, type: !20)
!59 = !DILocalVariable(name: "ap", arg: 4, scope: !52, file: !15, line: 744, type: !28)
!60 = !DILocation(line: 744, column: 27, scope: !52)
!61 = !DILocation(line: 744, column: 38, scope: !52)
!62 = !DILocation(line: 744, column: 55, scope: !52)
!63 = !DILocation(line: 744, column: 71, scope: !52)
!64 = !DILocation(line: 746, column: 26, scope: !52)
!65 = !DILocation(line: 746, column: 31, scope: !52)
!66 = !DILocation(line: 746, column: 36, scope: !52)
!67 = !DILocation(line: 746, column: 9, scope: !52)
!68 = !DILocation(line: 746, column: 2, scope: !52)
!69 = !DISubprogram(name: "z_cbvprintf_impl", scope: !15, file: !15, line: 712, type: !70, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !75)
!70 = !DISubroutineType(types: !71)
!71 = !{!13, !14, !19, !20, !28, !72}
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !73, line: 64, baseType: !74)
!73 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/stdint.h", directory: "")
!74 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!75 = !{}
