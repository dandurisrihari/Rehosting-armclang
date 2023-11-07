; ModuleID = '../bc_files/dec.bc'
source_filename = "/home/sri/zephyrproject/zephyr/lib/os/dec.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-arm-none-eabi"

; Function Attrs: noinline nounwind optnone
define hidden zeroext i8 @u8_to_dec(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) #0 !dbg !13 {
  %4 = alloca ptr, align 4
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !22, metadata !DIExpression()), !dbg !23
  store i8 %1, ptr %5, align 1
  call void @llvm.dbg.declare(metadata ptr %5, metadata !24, metadata !DIExpression()), !dbg !25
  store i8 %2, ptr %6, align 1
  call void @llvm.dbg.declare(metadata ptr %6, metadata !26, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.declare(metadata ptr %7, metadata !28, metadata !DIExpression()), !dbg !29
  store i8 100, ptr %7, align 1, !dbg !29
  call void @llvm.dbg.declare(metadata ptr %8, metadata !30, metadata !DIExpression()), !dbg !31
  store i8 0, ptr %8, align 1, !dbg !31
  call void @llvm.dbg.declare(metadata ptr %9, metadata !32, metadata !DIExpression()), !dbg !33
  br label %10, !dbg !34

10:                                               ; preds = %50, %3
  %11 = load i8, ptr %5, align 1, !dbg !35
  %12 = zext i8 %11 to i32, !dbg !35
  %13 = icmp sgt i32 %12, 0, !dbg !36
  br i1 %13, label %14, label %18, !dbg !37

14:                                               ; preds = %10
  %15 = load i8, ptr %7, align 1, !dbg !38
  %16 = zext i8 %15 to i32, !dbg !38
  %17 = icmp sgt i32 %16, 0, !dbg !39
  br label %18

18:                                               ; preds = %14, %10
  %19 = phi i1 [ false, %10 ], [ %17, %14 ], !dbg !40
  br i1 %19, label %20, label %64, !dbg !34

20:                                               ; preds = %18
  %21 = load i8, ptr %6, align 1, !dbg !41
  %22 = zext i8 %21 to i32, !dbg !41
  %23 = load i8, ptr %7, align 1, !dbg !43
  %24 = zext i8 %23 to i32, !dbg !43
  %25 = sdiv i32 %22, %24, !dbg !44
  %26 = trunc i32 %25 to i8, !dbg !41
  store i8 %26, ptr %9, align 1, !dbg !45
  %27 = load i8, ptr %9, align 1, !dbg !46
  %28 = zext i8 %27 to i32, !dbg !46
  %29 = icmp ne i32 %28, 0, !dbg !48
  br i1 %29, label %38, label %30, !dbg !49

30:                                               ; preds = %20
  %31 = load i8, ptr %7, align 1, !dbg !50
  %32 = zext i8 %31 to i32, !dbg !50
  %33 = icmp eq i32 %32, 1, !dbg !51
  br i1 %33, label %38, label %34, !dbg !52

34:                                               ; preds = %30
  %35 = load i8, ptr %8, align 1, !dbg !53
  %36 = zext i8 %35 to i32, !dbg !53
  %37 = icmp ne i32 %36, 0, !dbg !54
  br i1 %37, label %38, label %50, !dbg !55

38:                                               ; preds = %34, %30, %20
  %39 = load i8, ptr %9, align 1, !dbg !56
  %40 = zext i8 %39 to i32, !dbg !56
  %41 = add nsw i32 %40, 48, !dbg !58
  %42 = trunc i32 %41 to i8, !dbg !56
  %43 = load ptr, ptr %4, align 4, !dbg !59
  store i8 %42, ptr %43, align 1, !dbg !60
  %44 = load ptr, ptr %4, align 4, !dbg !61
  %45 = getelementptr inbounds i8, ptr %44, i32 1, !dbg !61
  store ptr %45, ptr %4, align 4, !dbg !61
  %46 = load i8, ptr %5, align 1, !dbg !62
  %47 = add i8 %46, -1, !dbg !62
  store i8 %47, ptr %5, align 1, !dbg !62
  %48 = load i8, ptr %8, align 1, !dbg !63
  %49 = add i8 %48, 1, !dbg !63
  store i8 %49, ptr %8, align 1, !dbg !63
  br label %50, !dbg !64

50:                                               ; preds = %38, %34
  %51 = load i8, ptr %9, align 1, !dbg !65
  %52 = zext i8 %51 to i32, !dbg !65
  %53 = load i8, ptr %7, align 1, !dbg !66
  %54 = zext i8 %53 to i32, !dbg !66
  %55 = mul nsw i32 %52, %54, !dbg !67
  %56 = load i8, ptr %6, align 1, !dbg !68
  %57 = zext i8 %56 to i32, !dbg !68
  %58 = sub nsw i32 %57, %55, !dbg !68
  %59 = trunc i32 %58 to i8, !dbg !68
  store i8 %59, ptr %6, align 1, !dbg !68
  %60 = load i8, ptr %7, align 1, !dbg !69
  %61 = zext i8 %60 to i32, !dbg !69
  %62 = sdiv i32 %61, 10, !dbg !69
  %63 = trunc i32 %62 to i8, !dbg !69
  store i8 %63, ptr %7, align 1, !dbg !69
  br label %10, !dbg !34, !llvm.loop !70

64:                                               ; preds = %18
  %65 = load i8, ptr %5, align 1, !dbg !72
  %66 = zext i8 %65 to i32, !dbg !72
  %67 = icmp ne i32 %66, 0, !dbg !74
  br i1 %67, label %68, label %70, !dbg !75

68:                                               ; preds = %64
  %69 = load ptr, ptr %4, align 4, !dbg !76
  store i8 0, ptr %69, align 1, !dbg !78
  br label %70, !dbg !79

70:                                               ; preds = %68, %64
  %71 = load i8, ptr %8, align 1, !dbg !80
  ret i8 %71, !dbg !81
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind optnone "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "dec.c", directory: "/home/sri/zephyrproject/zephyr/build")
!2 = !{!3}
!3 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!4 = !{i32 7, !"Dwarf Version", i32 4}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = !{i32 1, !"wchar_size", i32 4}
!7 = !{i32 1, !"static_rwdata", i32 1}
!8 = !{i32 1, !"enumsize_buildattr", i32 1}
!9 = !{i32 1, !"armlib_unavailable", i32 0}
!10 = !{i32 8, !"PIC Level", i32 2}
!11 = !{i32 7, !"PIE Level", i32 2}
!12 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
!13 = distinct !DISubprogram(name: "u8_to_dec", scope: !14, file: !14, line: 9, type: !15, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !21)
!14 = !DIFile(filename: "lib/os/dec.c", directory: "/home/sri/zephyrproject/zephyr")
!15 = !DISubroutineType(types: !16)
!16 = !{!17, !20, !17, !17}
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !18, line: 62, baseType: !19)
!18 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/stdint.h", directory: "")
!19 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3, size: 32)
!21 = !{}
!22 = !DILocalVariable(name: "buf", arg: 1, scope: !13, file: !14, line: 9, type: !20)
!23 = !DILocation(line: 9, column: 25, scope: !13)
!24 = !DILocalVariable(name: "buflen", arg: 2, scope: !13, file: !14, line: 9, type: !17)
!25 = !DILocation(line: 9, column: 38, scope: !13)
!26 = !DILocalVariable(name: "value", arg: 3, scope: !13, file: !14, line: 9, type: !17)
!27 = !DILocation(line: 9, column: 54, scope: !13)
!28 = !DILocalVariable(name: "divisor", scope: !13, file: !14, line: 11, type: !17)
!29 = !DILocation(line: 11, column: 10, scope: !13)
!30 = !DILocalVariable(name: "num_digits", scope: !13, file: !14, line: 12, type: !17)
!31 = !DILocation(line: 12, column: 10, scope: !13)
!32 = !DILocalVariable(name: "digit", scope: !13, file: !14, line: 13, type: !17)
!33 = !DILocation(line: 13, column: 10, scope: !13)
!34 = !DILocation(line: 15, column: 2, scope: !13)
!35 = !DILocation(line: 15, column: 10, scope: !13)
!36 = !DILocation(line: 15, column: 17, scope: !13)
!37 = !DILocation(line: 15, column: 22, scope: !13)
!38 = !DILocation(line: 15, column: 26, scope: !13)
!39 = !DILocation(line: 15, column: 34, scope: !13)
!40 = !DILocation(line: 0, scope: !13)
!41 = !DILocation(line: 16, column: 11, scope: !42)
!42 = distinct !DILexicalBlock(scope: !13, file: !14, line: 15, column: 40)
!43 = !DILocation(line: 16, column: 19, scope: !42)
!44 = !DILocation(line: 16, column: 17, scope: !42)
!45 = !DILocation(line: 16, column: 9, scope: !42)
!46 = !DILocation(line: 17, column: 8, scope: !47)
!47 = distinct !DILexicalBlock(scope: !42, file: !14, line: 17, column: 7)
!48 = !DILocation(line: 17, column: 14, scope: !47)
!49 = !DILocation(line: 17, column: 20, scope: !47)
!50 = !DILocation(line: 17, column: 24, scope: !47)
!51 = !DILocation(line: 17, column: 32, scope: !47)
!52 = !DILocation(line: 17, column: 38, scope: !47)
!53 = !DILocation(line: 17, column: 42, scope: !47)
!54 = !DILocation(line: 17, column: 53, scope: !47)
!55 = !DILocation(line: 17, column: 7, scope: !42)
!56 = !DILocation(line: 18, column: 11, scope: !57)
!57 = distinct !DILexicalBlock(scope: !47, file: !14, line: 17, column: 60)
!58 = !DILocation(line: 18, column: 17, scope: !57)
!59 = !DILocation(line: 18, column: 5, scope: !57)
!60 = !DILocation(line: 18, column: 9, scope: !57)
!61 = !DILocation(line: 19, column: 7, scope: !57)
!62 = !DILocation(line: 20, column: 10, scope: !57)
!63 = !DILocation(line: 21, column: 14, scope: !57)
!64 = !DILocation(line: 22, column: 3, scope: !57)
!65 = !DILocation(line: 24, column: 12, scope: !42)
!66 = !DILocation(line: 24, column: 20, scope: !42)
!67 = !DILocation(line: 24, column: 18, scope: !42)
!68 = !DILocation(line: 24, column: 9, scope: !42)
!69 = !DILocation(line: 25, column: 11, scope: !42)
!70 = distinct !{!70, !34, !71}
!71 = !DILocation(line: 26, column: 2, scope: !13)
!72 = !DILocation(line: 28, column: 6, scope: !73)
!73 = distinct !DILexicalBlock(scope: !13, file: !14, line: 28, column: 6)
!74 = !DILocation(line: 28, column: 13, scope: !73)
!75 = !DILocation(line: 28, column: 6, scope: !13)
!76 = !DILocation(line: 29, column: 4, scope: !77)
!77 = distinct !DILexicalBlock(scope: !73, file: !14, line: 28, column: 19)
!78 = !DILocation(line: 29, column: 8, scope: !77)
!79 = !DILocation(line: 30, column: 2, scope: !77)
!80 = !DILocation(line: 32, column: 9, scope: !13)
!81 = !DILocation(line: 32, column: 2, scope: !13)
