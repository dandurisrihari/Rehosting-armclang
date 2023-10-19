; ModuleID = '../bc_files/dec.bc'
source_filename = "/home/sri/zephyrproject/zephyr/lib/os/dec.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-arm-none-eabi"

; Function Attrs: nounwind optsize
define hidden zeroext i8 @u8_to_dec(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) #0 !dbg !11 {
  %4 = alloca ptr, align 4
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !20, metadata !DIExpression()), !dbg !26
  store i8 %1, ptr %5, align 1
  call void @llvm.dbg.declare(metadata ptr %5, metadata !21, metadata !DIExpression()), !dbg !27
  store i8 %2, ptr %6, align 1
  call void @llvm.dbg.declare(metadata ptr %6, metadata !22, metadata !DIExpression()), !dbg !28
  call void @llvm.lifetime.start.p0(i64 1, ptr %7) #3, !dbg !29
  call void @llvm.dbg.declare(metadata ptr %7, metadata !23, metadata !DIExpression()), !dbg !30
  store i8 100, ptr %7, align 1, !dbg !30
  call void @llvm.lifetime.start.p0(i64 1, ptr %8) #3, !dbg !31
  call void @llvm.dbg.declare(metadata ptr %8, metadata !24, metadata !DIExpression()), !dbg !32
  store i8 0, ptr %8, align 1, !dbg !32
  call void @llvm.lifetime.start.p0(i64 1, ptr %9) #3, !dbg !33
  call void @llvm.dbg.declare(metadata ptr %9, metadata !25, metadata !DIExpression()), !dbg !34
  br label %10, !dbg !35

10:                                               ; preds = %50, %3
  %11 = load i8, ptr %5, align 1, !dbg !36
  %12 = zext i8 %11 to i32, !dbg !36
  %13 = icmp sgt i32 %12, 0, !dbg !37
  br i1 %13, label %14, label %18, !dbg !38

14:                                               ; preds = %10
  %15 = load i8, ptr %7, align 1, !dbg !39
  %16 = zext i8 %15 to i32, !dbg !39
  %17 = icmp sgt i32 %16, 0, !dbg !40
  br label %18

18:                                               ; preds = %14, %10
  %19 = phi i1 [ false, %10 ], [ %17, %14 ], !dbg !41
  br i1 %19, label %20, label %64, !dbg !35

20:                                               ; preds = %18
  %21 = load i8, ptr %6, align 1, !dbg !42
  %22 = zext i8 %21 to i32, !dbg !42
  %23 = load i8, ptr %7, align 1, !dbg !44
  %24 = zext i8 %23 to i32, !dbg !44
  %25 = sdiv i32 %22, %24, !dbg !45
  %26 = trunc i32 %25 to i8, !dbg !42
  store i8 %26, ptr %9, align 1, !dbg !46
  %27 = load i8, ptr %9, align 1, !dbg !47
  %28 = zext i8 %27 to i32, !dbg !47
  %29 = icmp ne i32 %28, 0, !dbg !49
  br i1 %29, label %38, label %30, !dbg !50

30:                                               ; preds = %20
  %31 = load i8, ptr %7, align 1, !dbg !51
  %32 = zext i8 %31 to i32, !dbg !51
  %33 = icmp eq i32 %32, 1, !dbg !52
  br i1 %33, label %38, label %34, !dbg !53

34:                                               ; preds = %30
  %35 = load i8, ptr %8, align 1, !dbg !54
  %36 = zext i8 %35 to i32, !dbg !54
  %37 = icmp ne i32 %36, 0, !dbg !55
  br i1 %37, label %38, label %50, !dbg !56

38:                                               ; preds = %34, %30, %20
  %39 = load i8, ptr %9, align 1, !dbg !57
  %40 = zext i8 %39 to i32, !dbg !57
  %41 = add nsw i32 %40, 48, !dbg !59
  %42 = trunc i32 %41 to i8, !dbg !57
  %43 = load ptr, ptr %4, align 4, !dbg !60
  store i8 %42, ptr %43, align 1, !dbg !61
  %44 = load ptr, ptr %4, align 4, !dbg !62
  %45 = getelementptr inbounds i8, ptr %44, i32 1, !dbg !62
  store ptr %45, ptr %4, align 4, !dbg !62
  %46 = load i8, ptr %5, align 1, !dbg !63
  %47 = add i8 %46, -1, !dbg !63
  store i8 %47, ptr %5, align 1, !dbg !63
  %48 = load i8, ptr %8, align 1, !dbg !64
  %49 = add i8 %48, 1, !dbg !64
  store i8 %49, ptr %8, align 1, !dbg !64
  br label %50, !dbg !65

50:                                               ; preds = %38, %34
  %51 = load i8, ptr %9, align 1, !dbg !66
  %52 = zext i8 %51 to i32, !dbg !66
  %53 = load i8, ptr %7, align 1, !dbg !67
  %54 = zext i8 %53 to i32, !dbg !67
  %55 = mul nsw i32 %52, %54, !dbg !68
  %56 = load i8, ptr %6, align 1, !dbg !69
  %57 = zext i8 %56 to i32, !dbg !69
  %58 = sub nsw i32 %57, %55, !dbg !69
  %59 = trunc i32 %58 to i8, !dbg !69
  store i8 %59, ptr %6, align 1, !dbg !69
  %60 = load i8, ptr %7, align 1, !dbg !70
  %61 = zext i8 %60 to i32, !dbg !70
  %62 = sdiv i32 %61, 10, !dbg !70
  %63 = trunc i32 %62 to i8, !dbg !70
  store i8 %63, ptr %7, align 1, !dbg !70
  br label %10, !dbg !35, !llvm.loop !71

64:                                               ; preds = %18
  %65 = load i8, ptr %5, align 1, !dbg !73
  %66 = zext i8 %65 to i32, !dbg !73
  %67 = icmp ne i32 %66, 0, !dbg !75
  br i1 %67, label %68, label %70, !dbg !76

68:                                               ; preds = %64
  %69 = load ptr, ptr %4, align 4, !dbg !77
  store i8 0, ptr %69, align 1, !dbg !79
  br label %70, !dbg !80

70:                                               ; preds = %68, %64
  %71 = load i8, ptr %8, align 1, !dbg !81
  call void @llvm.lifetime.end.p0(i64 1, ptr %9) #3, !dbg !82
  call void @llvm.lifetime.end.p0(i64 1, ptr %8) #3, !dbg !82
  call void @llvm.lifetime.end.p0(i64 1, ptr %7) #3, !dbg !82
  ret i8 %71, !dbg !83
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

attributes #0 = { nounwind optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "dec.c", directory: "/home/sri/zephyrproject/zephyr/build")
!2 = !{!3}
!3 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!4 = !{i32 7, !"Dwarf Version", i32 4}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = !{i32 1, !"wchar_size", i32 4}
!7 = !{i32 1, !"static_rwdata", i32 1}
!8 = !{i32 1, !"enumsize_buildattr", i32 1}
!9 = !{i32 1, !"armlib_unavailable", i32 0}
!10 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
!11 = distinct !DISubprogram(name: "u8_to_dec", scope: !12, file: !12, line: 9, type: !13, scopeLine: 10, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !19)
!12 = !DIFile(filename: "lib/os/dec.c", directory: "/home/sri/zephyrproject/zephyr")
!13 = !DISubroutineType(types: !14)
!14 = !{!15, !18, !15, !15}
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !16, line: 62, baseType: !17)
!16 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/stdint.h", directory: "")
!17 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3, size: 32)
!19 = !{!20, !21, !22, !23, !24, !25}
!20 = !DILocalVariable(name: "buf", arg: 1, scope: !11, file: !12, line: 9, type: !18)
!21 = !DILocalVariable(name: "buflen", arg: 2, scope: !11, file: !12, line: 9, type: !15)
!22 = !DILocalVariable(name: "value", arg: 3, scope: !11, file: !12, line: 9, type: !15)
!23 = !DILocalVariable(name: "divisor", scope: !11, file: !12, line: 11, type: !15)
!24 = !DILocalVariable(name: "num_digits", scope: !11, file: !12, line: 12, type: !15)
!25 = !DILocalVariable(name: "digit", scope: !11, file: !12, line: 13, type: !15)
!26 = !DILocation(line: 9, column: 25, scope: !11)
!27 = !DILocation(line: 9, column: 38, scope: !11)
!28 = !DILocation(line: 9, column: 54, scope: !11)
!29 = !DILocation(line: 11, column: 2, scope: !11)
!30 = !DILocation(line: 11, column: 10, scope: !11)
!31 = !DILocation(line: 12, column: 2, scope: !11)
!32 = !DILocation(line: 12, column: 10, scope: !11)
!33 = !DILocation(line: 13, column: 2, scope: !11)
!34 = !DILocation(line: 13, column: 10, scope: !11)
!35 = !DILocation(line: 15, column: 2, scope: !11)
!36 = !DILocation(line: 15, column: 10, scope: !11)
!37 = !DILocation(line: 15, column: 17, scope: !11)
!38 = !DILocation(line: 15, column: 22, scope: !11)
!39 = !DILocation(line: 15, column: 26, scope: !11)
!40 = !DILocation(line: 15, column: 34, scope: !11)
!41 = !DILocation(line: 0, scope: !11)
!42 = !DILocation(line: 16, column: 11, scope: !43)
!43 = distinct !DILexicalBlock(scope: !11, file: !12, line: 15, column: 40)
!44 = !DILocation(line: 16, column: 19, scope: !43)
!45 = !DILocation(line: 16, column: 17, scope: !43)
!46 = !DILocation(line: 16, column: 9, scope: !43)
!47 = !DILocation(line: 17, column: 8, scope: !48)
!48 = distinct !DILexicalBlock(scope: !43, file: !12, line: 17, column: 7)
!49 = !DILocation(line: 17, column: 14, scope: !48)
!50 = !DILocation(line: 17, column: 20, scope: !48)
!51 = !DILocation(line: 17, column: 24, scope: !48)
!52 = !DILocation(line: 17, column: 32, scope: !48)
!53 = !DILocation(line: 17, column: 38, scope: !48)
!54 = !DILocation(line: 17, column: 42, scope: !48)
!55 = !DILocation(line: 17, column: 53, scope: !48)
!56 = !DILocation(line: 17, column: 7, scope: !43)
!57 = !DILocation(line: 18, column: 11, scope: !58)
!58 = distinct !DILexicalBlock(scope: !48, file: !12, line: 17, column: 60)
!59 = !DILocation(line: 18, column: 17, scope: !58)
!60 = !DILocation(line: 18, column: 5, scope: !58)
!61 = !DILocation(line: 18, column: 9, scope: !58)
!62 = !DILocation(line: 19, column: 7, scope: !58)
!63 = !DILocation(line: 20, column: 10, scope: !58)
!64 = !DILocation(line: 21, column: 14, scope: !58)
!65 = !DILocation(line: 22, column: 3, scope: !58)
!66 = !DILocation(line: 24, column: 12, scope: !43)
!67 = !DILocation(line: 24, column: 20, scope: !43)
!68 = !DILocation(line: 24, column: 18, scope: !43)
!69 = !DILocation(line: 24, column: 9, scope: !43)
!70 = !DILocation(line: 25, column: 11, scope: !43)
!71 = distinct !{!71, !35, !72}
!72 = !DILocation(line: 26, column: 2, scope: !11)
!73 = !DILocation(line: 28, column: 6, scope: !74)
!74 = distinct !DILexicalBlock(scope: !11, file: !12, line: 28, column: 6)
!75 = !DILocation(line: 28, column: 13, scope: !74)
!76 = !DILocation(line: 28, column: 6, scope: !11)
!77 = !DILocation(line: 29, column: 4, scope: !78)
!78 = distinct !DILexicalBlock(scope: !74, file: !12, line: 28, column: 19)
!79 = !DILocation(line: 29, column: 8, scope: !78)
!80 = !DILocation(line: 30, column: 2, scope: !78)
!81 = !DILocation(line: 32, column: 9, scope: !11)
!82 = !DILocation(line: 33, column: 1, scope: !11)
!83 = !DILocation(line: 32, column: 2, scope: !11)
