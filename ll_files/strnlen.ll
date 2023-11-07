; ModuleID = '../bc_files/strnlen.bc'
source_filename = "/home/sri/zephyrproject/zephyr/lib/libc/common/source/string/strnlen.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-arm-none-eabi"

; Function Attrs: noinline nounwind optnone
define hidden i32 @strnlen(ptr noundef %0, i32 noundef %1) #0 !dbg !11 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !22, metadata !DIExpression()), !dbg !23
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !24, metadata !DIExpression()), !dbg !25
  call void @llvm.dbg.declare(metadata ptr %5, metadata !26, metadata !DIExpression()), !dbg !27
  store i32 0, ptr %5, align 4, !dbg !27
  br label %6, !dbg !28

6:                                                ; preds = %17, %2
  %7 = load ptr, ptr %3, align 4, !dbg !29
  %8 = load i8, ptr %7, align 1, !dbg !30
  %9 = zext i8 %8 to i32, !dbg !30
  %10 = icmp ne i32 %9, 0, !dbg !31
  br i1 %10, label %11, label %15, !dbg !32

11:                                               ; preds = %6
  %12 = load i32, ptr %5, align 4, !dbg !33
  %13 = load i32, ptr %4, align 4, !dbg !34
  %14 = icmp ult i32 %12, %13, !dbg !35
  br label %15

15:                                               ; preds = %11, %6
  %16 = phi i1 [ false, %6 ], [ %14, %11 ], !dbg !36
  br i1 %16, label %17, label %22, !dbg !28

17:                                               ; preds = %15
  %18 = load ptr, ptr %3, align 4, !dbg !37
  %19 = getelementptr inbounds i8, ptr %18, i32 1, !dbg !37
  store ptr %19, ptr %3, align 4, !dbg !37
  %20 = load i32, ptr %5, align 4, !dbg !39
  %21 = add i32 %20, 1, !dbg !39
  store i32 %21, ptr %5, align 4, !dbg !39
  br label %6, !dbg !28, !llvm.loop !40

22:                                               ; preds = %15
  %23 = load i32, ptr %5, align 4, !dbg !42
  ret i32 %23, !dbg !43
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind optnone "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "strnlen.c", directory: "/home/sri/zephyrproject/zephyr/build")
!2 = !{i32 7, !"Dwarf Version", i32 4}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 1, !"static_rwdata", i32 1}
!6 = !{i32 1, !"enumsize_buildattr", i32 1}
!7 = !{i32 1, !"armlib_unavailable", i32 0}
!8 = !{i32 8, !"PIC Level", i32 2}
!9 = !{i32 7, !"PIE Level", i32 2}
!10 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
!11 = distinct !DISubprogram(name: "strnlen", scope: !12, file: !12, line: 21, type: !13, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !21)
!12 = !DIFile(filename: "lib/libc/common/source/string/strnlen.c", directory: "/home/sri/zephyrproject/zephyr")
!13 = !DISubroutineType(types: !14)
!14 = !{!15, !18, !15}
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !16, line: 51, baseType: !17)
!16 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/string.h", directory: "")
!17 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 32)
!19 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!20 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!21 = !{}
!22 = !DILocalVariable(name: "s", arg: 1, scope: !11, file: !12, line: 21, type: !18)
!23 = !DILocation(line: 21, column: 28, scope: !11)
!24 = !DILocalVariable(name: "maxlen", arg: 2, scope: !11, file: !12, line: 21, type: !15)
!25 = !DILocation(line: 21, column: 38, scope: !11)
!26 = !DILocalVariable(name: "n", scope: !11, file: !12, line: 23, type: !15)
!27 = !DILocation(line: 23, column: 9, scope: !11)
!28 = !DILocation(line: 25, column: 2, scope: !11)
!29 = !DILocation(line: 25, column: 10, scope: !11)
!30 = !DILocation(line: 25, column: 9, scope: !11)
!31 = !DILocation(line: 25, column: 12, scope: !11)
!32 = !DILocation(line: 25, column: 20, scope: !11)
!33 = !DILocation(line: 25, column: 23, scope: !11)
!34 = !DILocation(line: 25, column: 27, scope: !11)
!35 = !DILocation(line: 25, column: 25, scope: !11)
!36 = !DILocation(line: 0, scope: !11)
!37 = !DILocation(line: 26, column: 4, scope: !38)
!38 = distinct !DILexicalBlock(scope: !11, file: !12, line: 25, column: 35)
!39 = !DILocation(line: 27, column: 4, scope: !38)
!40 = distinct !{!40, !28, !41}
!41 = !DILocation(line: 28, column: 2, scope: !11)
!42 = !DILocation(line: 30, column: 9, scope: !11)
!43 = !DILocation(line: 30, column: 2, scope: !11)
