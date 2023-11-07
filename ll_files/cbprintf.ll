; ModuleID = '../bc_files/cbprintf.bc'
source_filename = "/home/sri/zephyrproject/zephyr/lib/os/cbprintf.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-arm-none-eabi"

%struct.__va_list = type { ptr }

; Function Attrs: noinline nounwind optnone
define hidden i32 @cbprintf(ptr noundef %0, ptr noundef %1, ptr noundef %2, ...) #0 !dbg !11 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca %struct.__va_list, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !26, metadata !DIExpression()), !dbg !27
  store ptr %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !28, metadata !DIExpression()), !dbg !29
  store ptr %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !30, metadata !DIExpression()), !dbg !31
  call void @llvm.dbg.declare(metadata ptr %7, metadata !32, metadata !DIExpression()), !dbg !39
  call void @llvm.dbg.declare(metadata ptr %8, metadata !40, metadata !DIExpression()), !dbg !41
  call void @llvm.va_start(ptr %7), !dbg !42
  %9 = load ptr, ptr %4, align 4, !dbg !43
  %10 = load ptr, ptr %5, align 4, !dbg !44
  %11 = load ptr, ptr %6, align 4, !dbg !45
  %12 = getelementptr inbounds %struct.__va_list, ptr %7, i32 0, i32 0, !dbg !46
  %13 = load [1 x i32], ptr %12, align 4, !dbg !46
  %14 = call i32 @cbvprintf(ptr noundef %9, ptr noundef %10, ptr noundef %11, [1 x i32] %13), !dbg !46
  store i32 %14, ptr %8, align 4, !dbg !47
  call void @llvm.va_end(ptr %7), !dbg !48
  %15 = load i32, ptr %8, align 4, !dbg !49
  ret i32 %15, !dbg !50
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #2

; Function Attrs: noinline nounwind optnone
define internal i32 @cbvprintf(ptr noundef %0, ptr noundef %1, ptr noundef %2, [1 x i32] %3) #0 !dbg !51 {
  %5 = alloca %struct.__va_list, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = getelementptr inbounds %struct.__va_list, ptr %5, i32 0, i32 0
  store [1 x i32] %3, ptr %9, align 4
  store ptr %0, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !54, metadata !DIExpression()), !dbg !55
  store ptr %1, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !56, metadata !DIExpression()), !dbg !57
  store ptr %2, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !58, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.declare(metadata ptr %5, metadata !60, metadata !DIExpression()), !dbg !61
  %10 = load ptr, ptr %6, align 4, !dbg !62
  %11 = load ptr, ptr %7, align 4, !dbg !63
  %12 = load ptr, ptr %8, align 4, !dbg !64
  %13 = getelementptr inbounds %struct.__va_list, ptr %5, i32 0, i32 0, !dbg !65
  %14 = load [1 x i32], ptr %13, align 4, !dbg !65
  %15 = call i32 @z_cbvprintf_impl(ptr noundef %10, ptr noundef %11, ptr noundef %12, [1 x i32] %14, i32 noundef 0), !dbg !65
  ret i32 %15, !dbg !66
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #2

declare i32 @z_cbvprintf_impl(ptr noundef, ptr noundef, ptr noundef, [1 x i32], i32 noundef) #3

attributes #0 = { noinline nounwind optnone "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn }
attributes #3 = { "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "cbprintf.c", directory: "/home/sri/zephyrproject/zephyr/build")
!2 = !{i32 7, !"Dwarf Version", i32 4}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 1, !"static_rwdata", i32 1}
!6 = !{i32 1, !"enumsize_buildattr", i32 1}
!7 = !{i32 1, !"armlib_unavailable", i32 0}
!8 = !{i32 8, !"PIC Level", i32 2}
!9 = !{i32 7, !"PIE Level", i32 2}
!10 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
!11 = distinct !DISubprogram(name: "cbprintf", scope: !12, file: !12, line: 11, type: !13, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !25)
!12 = !DIFile(filename: "lib/os/cbprintf.c", directory: "/home/sri/zephyrproject/zephyr")
!13 = !DISubroutineType(types: !14)
!14 = !{!15, !16, !21, !22, null}
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "cbprintf_cb", file: !17, line: 302, baseType: !18)
!17 = !DIFile(filename: "include/zephyr/sys/cbprintf.h", directory: "/home/sri/zephyrproject/zephyr")
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 32)
!19 = !DISubroutineType(types: !20)
!20 = !{!15, null}
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 32)
!23 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !24)
!24 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!25 = !{}
!26 = !DILocalVariable(name: "out", arg: 1, scope: !11, file: !12, line: 11, type: !16)
!27 = !DILocation(line: 11, column: 26, scope: !11)
!28 = !DILocalVariable(name: "ctx", arg: 2, scope: !11, file: !12, line: 11, type: !21)
!29 = !DILocation(line: 11, column: 37, scope: !11)
!30 = !DILocalVariable(name: "format", arg: 3, scope: !11, file: !12, line: 11, type: !22)
!31 = !DILocation(line: 11, column: 54, scope: !11)
!32 = !DILocalVariable(name: "ap", scope: !11, file: !12, line: 13, type: !33)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !34, line: 22, baseType: !35)
!34 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/lib/clang/17/include/stdarg.h", directory: "")
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, baseType: !36)
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 32, elements: !37)
!37 = !{!38}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "__ap", scope: !36, file: !1, line: 13, baseType: !21, size: 32)
!39 = !DILocation(line: 13, column: 10, scope: !11)
!40 = !DILocalVariable(name: "rc", scope: !11, file: !12, line: 14, type: !15)
!41 = !DILocation(line: 14, column: 6, scope: !11)
!42 = !DILocation(line: 16, column: 2, scope: !11)
!43 = !DILocation(line: 17, column: 17, scope: !11)
!44 = !DILocation(line: 17, column: 22, scope: !11)
!45 = !DILocation(line: 17, column: 27, scope: !11)
!46 = !DILocation(line: 17, column: 7, scope: !11)
!47 = !DILocation(line: 17, column: 5, scope: !11)
!48 = !DILocation(line: 18, column: 2, scope: !11)
!49 = !DILocation(line: 20, column: 9, scope: !11)
!50 = !DILocation(line: 20, column: 2, scope: !11)
!51 = distinct !DISubprogram(name: "cbvprintf", scope: !17, file: !17, line: 744, type: !52, scopeLine: 745, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !25)
!52 = !DISubroutineType(types: !53)
!53 = !{!15, !16, !21, !22, !33}
!54 = !DILocalVariable(name: "out", arg: 1, scope: !51, file: !17, line: 744, type: !16)
!55 = !DILocation(line: 744, column: 27, scope: !51)
!56 = !DILocalVariable(name: "ctx", arg: 2, scope: !51, file: !17, line: 744, type: !21)
!57 = !DILocation(line: 744, column: 38, scope: !51)
!58 = !DILocalVariable(name: "format", arg: 3, scope: !51, file: !17, line: 744, type: !22)
!59 = !DILocation(line: 744, column: 55, scope: !51)
!60 = !DILocalVariable(name: "ap", arg: 4, scope: !51, file: !17, line: 744, type: !33)
!61 = !DILocation(line: 744, column: 71, scope: !51)
!62 = !DILocation(line: 746, column: 26, scope: !51)
!63 = !DILocation(line: 746, column: 31, scope: !51)
!64 = !DILocation(line: 746, column: 36, scope: !51)
!65 = !DILocation(line: 746, column: 9, scope: !51)
!66 = !DILocation(line: 746, column: 2, scope: !51)
