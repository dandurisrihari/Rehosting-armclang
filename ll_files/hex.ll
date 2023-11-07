; ModuleID = '../bc_files/hex.bc'
source_filename = "/home/sri/zephyrproject/zephyr/lib/os/hex.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-arm-none-eabi"

; Function Attrs: noinline nounwind optnone
define hidden i32 @char2hex(i8 noundef zeroext %0, ptr noundef %1) #0 !dbg !13 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca ptr, align 4
  store i8 %0, ptr %4, align 1
  call void @llvm.dbg.declare(metadata ptr %4, metadata !23, metadata !DIExpression()), !dbg !24
  store ptr %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !25, metadata !DIExpression()), !dbg !26
  %6 = load i8, ptr %4, align 1, !dbg !27
  %7 = zext i8 %6 to i32, !dbg !27
  %8 = icmp sge i32 %7, 48, !dbg !29
  br i1 %8, label %9, label %19, !dbg !30

9:                                                ; preds = %2
  %10 = load i8, ptr %4, align 1, !dbg !31
  %11 = zext i8 %10 to i32, !dbg !31
  %12 = icmp sle i32 %11, 57, !dbg !32
  br i1 %12, label %13, label %19, !dbg !33

13:                                               ; preds = %9
  %14 = load i8, ptr %4, align 1, !dbg !34
  %15 = zext i8 %14 to i32, !dbg !34
  %16 = sub nsw i32 %15, 48, !dbg !36
  %17 = trunc i32 %16 to i8, !dbg !34
  %18 = load ptr, ptr %5, align 4, !dbg !37
  store i8 %17, ptr %18, align 1, !dbg !38
  br label %52, !dbg !39

19:                                               ; preds = %9, %2
  %20 = load i8, ptr %4, align 1, !dbg !40
  %21 = zext i8 %20 to i32, !dbg !40
  %22 = icmp sge i32 %21, 97, !dbg !42
  br i1 %22, label %23, label %34, !dbg !43

23:                                               ; preds = %19
  %24 = load i8, ptr %4, align 1, !dbg !44
  %25 = zext i8 %24 to i32, !dbg !44
  %26 = icmp sle i32 %25, 102, !dbg !45
  br i1 %26, label %27, label %34, !dbg !46

27:                                               ; preds = %23
  %28 = load i8, ptr %4, align 1, !dbg !47
  %29 = zext i8 %28 to i32, !dbg !47
  %30 = sub nsw i32 %29, 97, !dbg !49
  %31 = add nsw i32 %30, 10, !dbg !50
  %32 = trunc i32 %31 to i8, !dbg !47
  %33 = load ptr, ptr %5, align 4, !dbg !51
  store i8 %32, ptr %33, align 1, !dbg !52
  br label %51, !dbg !53

34:                                               ; preds = %23, %19
  %35 = load i8, ptr %4, align 1, !dbg !54
  %36 = zext i8 %35 to i32, !dbg !54
  %37 = icmp sge i32 %36, 65, !dbg !56
  br i1 %37, label %38, label %49, !dbg !57

38:                                               ; preds = %34
  %39 = load i8, ptr %4, align 1, !dbg !58
  %40 = zext i8 %39 to i32, !dbg !58
  %41 = icmp sle i32 %40, 70, !dbg !59
  br i1 %41, label %42, label %49, !dbg !60

42:                                               ; preds = %38
  %43 = load i8, ptr %4, align 1, !dbg !61
  %44 = zext i8 %43 to i32, !dbg !61
  %45 = sub nsw i32 %44, 65, !dbg !63
  %46 = add nsw i32 %45, 10, !dbg !64
  %47 = trunc i32 %46 to i8, !dbg !61
  %48 = load ptr, ptr %5, align 4, !dbg !65
  store i8 %47, ptr %48, align 1, !dbg !66
  br label %50, !dbg !67

49:                                               ; preds = %38, %34
  store i32 -5, ptr %3, align 4, !dbg !68
  br label %53, !dbg !68

50:                                               ; preds = %42
  br label %51

51:                                               ; preds = %50, %27
  br label %52

52:                                               ; preds = %51, %13
  store i32 0, ptr %3, align 4, !dbg !70
  br label %53, !dbg !70

53:                                               ; preds = %52, %49
  %54 = load i32, ptr %3, align 4, !dbg !71
  ret i32 %54, !dbg !71
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone
define hidden i32 @hex2char(i8 noundef zeroext %0, ptr noundef %1) #0 !dbg !72 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca ptr, align 4
  store i8 %0, ptr %4, align 1
  call void @llvm.dbg.declare(metadata ptr %4, metadata !76, metadata !DIExpression()), !dbg !77
  store ptr %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !78, metadata !DIExpression()), !dbg !79
  %6 = load i8, ptr %4, align 1, !dbg !80
  %7 = zext i8 %6 to i32, !dbg !80
  %8 = icmp sle i32 %7, 9, !dbg !82
  br i1 %8, label %9, label %15, !dbg !83

9:                                                ; preds = %2
  %10 = load i8, ptr %4, align 1, !dbg !84
  %11 = zext i8 %10 to i32, !dbg !84
  %12 = add nsw i32 %11, 48, !dbg !86
  %13 = trunc i32 %12 to i8, !dbg !84
  %14 = load ptr, ptr %5, align 4, !dbg !87
  store i8 %13, ptr %14, align 1, !dbg !88
  br label %28, !dbg !89

15:                                               ; preds = %2
  %16 = load i8, ptr %4, align 1, !dbg !90
  %17 = zext i8 %16 to i32, !dbg !90
  %18 = icmp sle i32 %17, 15, !dbg !92
  br i1 %18, label %19, label %26, !dbg !93

19:                                               ; preds = %15
  %20 = load i8, ptr %4, align 1, !dbg !94
  %21 = zext i8 %20 to i32, !dbg !94
  %22 = sub nsw i32 %21, 10, !dbg !96
  %23 = add nsw i32 %22, 97, !dbg !97
  %24 = trunc i32 %23 to i8, !dbg !94
  %25 = load ptr, ptr %5, align 4, !dbg !98
  store i8 %24, ptr %25, align 1, !dbg !99
  br label %27, !dbg !100

26:                                               ; preds = %15
  store i32 -5, ptr %3, align 4, !dbg !101
  br label %29, !dbg !101

27:                                               ; preds = %19
  br label %28

28:                                               ; preds = %27, %9
  store i32 0, ptr %3, align 4, !dbg !103
  br label %29, !dbg !103

29:                                               ; preds = %28, %26
  %30 = load i32, ptr %3, align 4, !dbg !104
  ret i32 %30, !dbg !104
}

; Function Attrs: noinline nounwind optnone
define hidden i32 @bin2hex(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #0 !dbg !105 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store ptr %0, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !113, metadata !DIExpression()), !dbg !114
  store i32 %1, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !115, metadata !DIExpression()), !dbg !116
  store ptr %2, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !117, metadata !DIExpression()), !dbg !118
  store i32 %3, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !119, metadata !DIExpression()), !dbg !120
  %11 = load i32, ptr %9, align 4, !dbg !121
  %12 = load i32, ptr %7, align 4, !dbg !123
  %13 = mul i32 %12, 2, !dbg !124
  %14 = add i32 %13, 1, !dbg !125
  %15 = icmp ult i32 %11, %14, !dbg !126
  br i1 %15, label %16, label %17, !dbg !127

16:                                               ; preds = %4
  store i32 0, ptr %5, align 4, !dbg !128
  br label %64, !dbg !128

17:                                               ; preds = %4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !130, metadata !DIExpression()), !dbg !132
  store i32 0, ptr %10, align 4, !dbg !132
  br label %18, !dbg !133

18:                                               ; preds = %54, %17
  %19 = load i32, ptr %10, align 4, !dbg !134
  %20 = load i32, ptr %7, align 4, !dbg !136
  %21 = icmp ult i32 %19, %20, !dbg !137
  br i1 %21, label %22, label %57, !dbg !138

22:                                               ; preds = %18
  %23 = load ptr, ptr %6, align 4, !dbg !139
  %24 = load i32, ptr %10, align 4, !dbg !142
  %25 = getelementptr inbounds i8, ptr %23, i32 %24, !dbg !139
  %26 = load i8, ptr %25, align 1, !dbg !139
  %27 = zext i8 %26 to i32, !dbg !139
  %28 = ashr i32 %27, 4, !dbg !143
  %29 = trunc i32 %28 to i8, !dbg !139
  %30 = load ptr, ptr %8, align 4, !dbg !144
  %31 = load i32, ptr %10, align 4, !dbg !145
  %32 = mul i32 2, %31, !dbg !146
  %33 = getelementptr inbounds i8, ptr %30, i32 %32, !dbg !144
  %34 = call i32 @hex2char(i8 noundef zeroext %29, ptr noundef %33), !dbg !147
  %35 = icmp slt i32 %34, 0, !dbg !148
  br i1 %35, label %36, label %37, !dbg !149

36:                                               ; preds = %22
  store i32 0, ptr %5, align 4, !dbg !150
  br label %64, !dbg !150

37:                                               ; preds = %22
  %38 = load ptr, ptr %6, align 4, !dbg !152
  %39 = load i32, ptr %10, align 4, !dbg !154
  %40 = getelementptr inbounds i8, ptr %38, i32 %39, !dbg !152
  %41 = load i8, ptr %40, align 1, !dbg !152
  %42 = zext i8 %41 to i32, !dbg !152
  %43 = and i32 %42, 15, !dbg !155
  %44 = trunc i32 %43 to i8, !dbg !152
  %45 = load ptr, ptr %8, align 4, !dbg !156
  %46 = load i32, ptr %10, align 4, !dbg !157
  %47 = mul i32 2, %46, !dbg !158
  %48 = add i32 %47, 1, !dbg !159
  %49 = getelementptr inbounds i8, ptr %45, i32 %48, !dbg !156
  %50 = call i32 @hex2char(i8 noundef zeroext %44, ptr noundef %49), !dbg !160
  %51 = icmp slt i32 %50, 0, !dbg !161
  br i1 %51, label %52, label %53, !dbg !162

52:                                               ; preds = %37
  store i32 0, ptr %5, align 4, !dbg !163
  br label %64, !dbg !163

53:                                               ; preds = %37
  br label %54, !dbg !165

54:                                               ; preds = %53
  %55 = load i32, ptr %10, align 4, !dbg !166
  %56 = add i32 %55, 1, !dbg !166
  store i32 %56, ptr %10, align 4, !dbg !166
  br label %18, !dbg !167, !llvm.loop !168

57:                                               ; preds = %18
  %58 = load ptr, ptr %8, align 4, !dbg !170
  %59 = load i32, ptr %7, align 4, !dbg !171
  %60 = mul i32 2, %59, !dbg !172
  %61 = getelementptr inbounds i8, ptr %58, i32 %60, !dbg !170
  store i8 0, ptr %61, align 1, !dbg !173
  %62 = load i32, ptr %7, align 4, !dbg !174
  %63 = mul i32 2, %62, !dbg !175
  store i32 %63, ptr %5, align 4, !dbg !176
  br label %64, !dbg !176

64:                                               ; preds = %57, %52, %36, %16
  %65 = load i32, ptr %5, align 4, !dbg !177
  ret i32 %65, !dbg !177
}

; Function Attrs: noinline nounwind optnone
define hidden i32 @hex2bin(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #0 !dbg !178 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  store ptr %0, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !183, metadata !DIExpression()), !dbg !184
  store i32 %1, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !185, metadata !DIExpression()), !dbg !186
  store ptr %2, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !187, metadata !DIExpression()), !dbg !188
  store i32 %3, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !189, metadata !DIExpression()), !dbg !190
  call void @llvm.dbg.declare(metadata ptr %10, metadata !191, metadata !DIExpression()), !dbg !192
  %12 = load i32, ptr %9, align 4, !dbg !193
  %13 = load i32, ptr %7, align 4, !dbg !195
  %14 = udiv i32 %13, 2, !dbg !196
  %15 = load i32, ptr %7, align 4, !dbg !197
  %16 = urem i32 %15, 2, !dbg !198
  %17 = add i32 %14, %16, !dbg !199
  %18 = icmp ult i32 %12, %17, !dbg !200
  br i1 %18, label %19, label %20, !dbg !201

19:                                               ; preds = %4
  store i32 0, ptr %5, align 4, !dbg !202
  br label %90, !dbg !202

20:                                               ; preds = %4
  %21 = load i32, ptr %7, align 4, !dbg !204
  %22 = urem i32 %21, 2, !dbg !206
  %23 = icmp ne i32 %22, 0, !dbg !207
  br i1 %23, label %24, label %39, !dbg !208

24:                                               ; preds = %20
  %25 = load ptr, ptr %6, align 4, !dbg !209
  %26 = getelementptr inbounds i8, ptr %25, i32 0, !dbg !209
  %27 = load i8, ptr %26, align 1, !dbg !209
  %28 = call i32 @char2hex(i8 noundef zeroext %27, ptr noundef %10), !dbg !212
  %29 = icmp slt i32 %28, 0, !dbg !213
  br i1 %29, label %30, label %31, !dbg !214

30:                                               ; preds = %24
  store i32 0, ptr %5, align 4, !dbg !215
  br label %90, !dbg !215

31:                                               ; preds = %24
  %32 = load i8, ptr %10, align 1, !dbg !217
  %33 = load ptr, ptr %8, align 4, !dbg !218
  %34 = getelementptr inbounds i8, ptr %33, i32 0, !dbg !218
  store i8 %32, ptr %34, align 1, !dbg !219
  %35 = load ptr, ptr %6, align 4, !dbg !220
  %36 = getelementptr inbounds i8, ptr %35, i32 1, !dbg !220
  store ptr %36, ptr %6, align 4, !dbg !220
  %37 = load ptr, ptr %8, align 4, !dbg !221
  %38 = getelementptr inbounds i8, ptr %37, i32 1, !dbg !221
  store ptr %38, ptr %8, align 4, !dbg !221
  br label %39, !dbg !222

39:                                               ; preds = %31, %20
  call void @llvm.dbg.declare(metadata ptr %11, metadata !223, metadata !DIExpression()), !dbg !225
  store i32 0, ptr %11, align 4, !dbg !225
  br label %40, !dbg !226

40:                                               ; preds = %81, %39
  %41 = load i32, ptr %11, align 4, !dbg !227
  %42 = load i32, ptr %7, align 4, !dbg !229
  %43 = udiv i32 %42, 2, !dbg !230
  %44 = icmp ult i32 %41, %43, !dbg !231
  br i1 %44, label %45, label %84, !dbg !232

45:                                               ; preds = %40
  %46 = load ptr, ptr %6, align 4, !dbg !233
  %47 = load i32, ptr %11, align 4, !dbg !236
  %48 = mul i32 2, %47, !dbg !237
  %49 = getelementptr inbounds i8, ptr %46, i32 %48, !dbg !233
  %50 = load i8, ptr %49, align 1, !dbg !233
  %51 = call i32 @char2hex(i8 noundef zeroext %50, ptr noundef %10), !dbg !238
  %52 = icmp slt i32 %51, 0, !dbg !239
  br i1 %52, label %53, label %54, !dbg !240

53:                                               ; preds = %45
  store i32 0, ptr %5, align 4, !dbg !241
  br label %90, !dbg !241

54:                                               ; preds = %45
  %55 = load i8, ptr %10, align 1, !dbg !243
  %56 = zext i8 %55 to i32, !dbg !243
  %57 = shl i32 %56, 4, !dbg !244
  %58 = trunc i32 %57 to i8, !dbg !243
  %59 = load ptr, ptr %8, align 4, !dbg !245
  %60 = load i32, ptr %11, align 4, !dbg !246
  %61 = getelementptr inbounds i8, ptr %59, i32 %60, !dbg !245
  store i8 %58, ptr %61, align 1, !dbg !247
  %62 = load ptr, ptr %6, align 4, !dbg !248
  %63 = load i32, ptr %11, align 4, !dbg !250
  %64 = mul i32 2, %63, !dbg !251
  %65 = add i32 %64, 1, !dbg !252
  %66 = getelementptr inbounds i8, ptr %62, i32 %65, !dbg !248
  %67 = load i8, ptr %66, align 1, !dbg !248
  %68 = call i32 @char2hex(i8 noundef zeroext %67, ptr noundef %10), !dbg !253
  %69 = icmp slt i32 %68, 0, !dbg !254
  br i1 %69, label %70, label %71, !dbg !255

70:                                               ; preds = %54
  store i32 0, ptr %5, align 4, !dbg !256
  br label %90, !dbg !256

71:                                               ; preds = %54
  %72 = load i8, ptr %10, align 1, !dbg !258
  %73 = zext i8 %72 to i32, !dbg !258
  %74 = load ptr, ptr %8, align 4, !dbg !259
  %75 = load i32, ptr %11, align 4, !dbg !260
  %76 = getelementptr inbounds i8, ptr %74, i32 %75, !dbg !259
  %77 = load i8, ptr %76, align 1, !dbg !261
  %78 = zext i8 %77 to i32, !dbg !261
  %79 = add nsw i32 %78, %73, !dbg !261
  %80 = trunc i32 %79 to i8, !dbg !261
  store i8 %80, ptr %76, align 1, !dbg !261
  br label %81, !dbg !262

81:                                               ; preds = %71
  %82 = load i32, ptr %11, align 4, !dbg !263
  %83 = add i32 %82, 1, !dbg !263
  store i32 %83, ptr %11, align 4, !dbg !263
  br label %40, !dbg !264, !llvm.loop !265

84:                                               ; preds = %40
  %85 = load i32, ptr %7, align 4, !dbg !267
  %86 = udiv i32 %85, 2, !dbg !268
  %87 = load i32, ptr %7, align 4, !dbg !269
  %88 = urem i32 %87, 2, !dbg !270
  %89 = add i32 %86, %88, !dbg !271
  store i32 %89, ptr %5, align 4, !dbg !272
  br label %90, !dbg !272

90:                                               ; preds = %84, %70, %53, %30, %19
  %91 = load i32, ptr %5, align 4, !dbg !273
  ret i32 %91, !dbg !273
}

attributes #0 = { noinline nounwind optnone "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "hex.c", directory: "/home/sri/zephyrproject/zephyr/build")
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
!13 = distinct !DISubprogram(name: "char2hex", scope: !14, file: !14, line: 12, type: !15, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !22)
!14 = !DIFile(filename: "lib/os/hex.c", directory: "/home/sri/zephyrproject/zephyr")
!15 = !DISubroutineType(types: !16)
!16 = !{!17, !3, !18}
!17 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 32)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !20, line: 62, baseType: !21)
!20 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/stdint.h", directory: "")
!21 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!22 = !{}
!23 = !DILocalVariable(name: "c", arg: 1, scope: !13, file: !14, line: 12, type: !3)
!24 = !DILocation(line: 12, column: 19, scope: !13)
!25 = !DILocalVariable(name: "x", arg: 2, scope: !13, file: !14, line: 12, type: !18)
!26 = !DILocation(line: 12, column: 31, scope: !13)
!27 = !DILocation(line: 14, column: 6, scope: !28)
!28 = distinct !DILexicalBlock(scope: !13, file: !14, line: 14, column: 6)
!29 = !DILocation(line: 14, column: 8, scope: !28)
!30 = !DILocation(line: 14, column: 15, scope: !28)
!31 = !DILocation(line: 14, column: 18, scope: !28)
!32 = !DILocation(line: 14, column: 20, scope: !28)
!33 = !DILocation(line: 14, column: 6, scope: !13)
!34 = !DILocation(line: 15, column: 8, scope: !35)
!35 = distinct !DILexicalBlock(scope: !28, file: !14, line: 14, column: 28)
!36 = !DILocation(line: 15, column: 10, scope: !35)
!37 = !DILocation(line: 15, column: 4, scope: !35)
!38 = !DILocation(line: 15, column: 6, scope: !35)
!39 = !DILocation(line: 16, column: 2, scope: !35)
!40 = !DILocation(line: 16, column: 13, scope: !41)
!41 = distinct !DILexicalBlock(scope: !28, file: !14, line: 16, column: 13)
!42 = !DILocation(line: 16, column: 15, scope: !41)
!43 = !DILocation(line: 16, column: 22, scope: !41)
!44 = !DILocation(line: 16, column: 25, scope: !41)
!45 = !DILocation(line: 16, column: 27, scope: !41)
!46 = !DILocation(line: 16, column: 13, scope: !28)
!47 = !DILocation(line: 17, column: 8, scope: !48)
!48 = distinct !DILexicalBlock(scope: !41, file: !14, line: 16, column: 35)
!49 = !DILocation(line: 17, column: 10, scope: !48)
!50 = !DILocation(line: 17, column: 16, scope: !48)
!51 = !DILocation(line: 17, column: 4, scope: !48)
!52 = !DILocation(line: 17, column: 6, scope: !48)
!53 = !DILocation(line: 18, column: 2, scope: !48)
!54 = !DILocation(line: 18, column: 13, scope: !55)
!55 = distinct !DILexicalBlock(scope: !41, file: !14, line: 18, column: 13)
!56 = !DILocation(line: 18, column: 15, scope: !55)
!57 = !DILocation(line: 18, column: 22, scope: !55)
!58 = !DILocation(line: 18, column: 25, scope: !55)
!59 = !DILocation(line: 18, column: 27, scope: !55)
!60 = !DILocation(line: 18, column: 13, scope: !41)
!61 = !DILocation(line: 19, column: 8, scope: !62)
!62 = distinct !DILexicalBlock(scope: !55, file: !14, line: 18, column: 35)
!63 = !DILocation(line: 19, column: 10, scope: !62)
!64 = !DILocation(line: 19, column: 16, scope: !62)
!65 = !DILocation(line: 19, column: 4, scope: !62)
!66 = !DILocation(line: 19, column: 6, scope: !62)
!67 = !DILocation(line: 20, column: 2, scope: !62)
!68 = !DILocation(line: 21, column: 3, scope: !69)
!69 = distinct !DILexicalBlock(scope: !55, file: !14, line: 20, column: 9)
!70 = !DILocation(line: 24, column: 2, scope: !13)
!71 = !DILocation(line: 25, column: 1, scope: !13)
!72 = distinct !DISubprogram(name: "hex2char", scope: !14, file: !14, line: 27, type: !73, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !22)
!73 = !DISubroutineType(types: !74)
!74 = !{!17, !19, !75}
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3, size: 32)
!76 = !DILocalVariable(name: "x", arg: 1, scope: !72, file: !14, line: 27, type: !19)
!77 = !DILocation(line: 27, column: 22, scope: !72)
!78 = !DILocalVariable(name: "c", arg: 2, scope: !72, file: !14, line: 27, type: !75)
!79 = !DILocation(line: 27, column: 31, scope: !72)
!80 = !DILocation(line: 29, column: 6, scope: !81)
!81 = distinct !DILexicalBlock(scope: !72, file: !14, line: 29, column: 6)
!82 = !DILocation(line: 29, column: 8, scope: !81)
!83 = !DILocation(line: 29, column: 6, scope: !72)
!84 = !DILocation(line: 30, column: 8, scope: !85)
!85 = distinct !DILexicalBlock(scope: !81, file: !14, line: 29, column: 14)
!86 = !DILocation(line: 30, column: 10, scope: !85)
!87 = !DILocation(line: 30, column: 4, scope: !85)
!88 = !DILocation(line: 30, column: 6, scope: !85)
!89 = !DILocation(line: 31, column: 2, scope: !85)
!90 = !DILocation(line: 31, column: 13, scope: !91)
!91 = distinct !DILexicalBlock(scope: !81, file: !14, line: 31, column: 13)
!92 = !DILocation(line: 31, column: 15, scope: !91)
!93 = !DILocation(line: 31, column: 13, scope: !81)
!94 = !DILocation(line: 32, column: 8, scope: !95)
!95 = distinct !DILexicalBlock(scope: !91, file: !14, line: 31, column: 22)
!96 = !DILocation(line: 32, column: 10, scope: !95)
!97 = !DILocation(line: 32, column: 15, scope: !95)
!98 = !DILocation(line: 32, column: 4, scope: !95)
!99 = !DILocation(line: 32, column: 6, scope: !95)
!100 = !DILocation(line: 33, column: 2, scope: !95)
!101 = !DILocation(line: 34, column: 3, scope: !102)
!102 = distinct !DILexicalBlock(scope: !91, file: !14, line: 33, column: 9)
!103 = !DILocation(line: 37, column: 2, scope: !72)
!104 = !DILocation(line: 38, column: 1, scope: !72)
!105 = distinct !DISubprogram(name: "bin2hex", scope: !14, file: !14, line: 40, type: !106, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !22)
!106 = !DISubroutineType(types: !107)
!107 = !{!108, !111, !108, !75, !108}
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !109, line: 46, baseType: !110)
!109 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/lib/clang/17/include/stddef.h", directory: "")
!110 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 32)
!112 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!113 = !DILocalVariable(name: "buf", arg: 1, scope: !105, file: !14, line: 40, type: !111)
!114 = !DILocation(line: 40, column: 31, scope: !105)
!115 = !DILocalVariable(name: "buflen", arg: 2, scope: !105, file: !14, line: 40, type: !108)
!116 = !DILocation(line: 40, column: 43, scope: !105)
!117 = !DILocalVariable(name: "hex", arg: 3, scope: !105, file: !14, line: 40, type: !75)
!118 = !DILocation(line: 40, column: 57, scope: !105)
!119 = !DILocalVariable(name: "hexlen", arg: 4, scope: !105, file: !14, line: 40, type: !108)
!120 = !DILocation(line: 40, column: 69, scope: !105)
!121 = !DILocation(line: 42, column: 6, scope: !122)
!122 = distinct !DILexicalBlock(scope: !105, file: !14, line: 42, column: 6)
!123 = !DILocation(line: 42, column: 16, scope: !122)
!124 = !DILocation(line: 42, column: 23, scope: !122)
!125 = !DILocation(line: 42, column: 28, scope: !122)
!126 = !DILocation(line: 42, column: 13, scope: !122)
!127 = !DILocation(line: 42, column: 6, scope: !105)
!128 = !DILocation(line: 43, column: 3, scope: !129)
!129 = distinct !DILexicalBlock(scope: !122, file: !14, line: 42, column: 35)
!130 = !DILocalVariable(name: "i", scope: !131, file: !14, line: 46, type: !108)
!131 = distinct !DILexicalBlock(scope: !105, file: !14, line: 46, column: 2)
!132 = !DILocation(line: 46, column: 14, scope: !131)
!133 = !DILocation(line: 46, column: 7, scope: !131)
!134 = !DILocation(line: 46, column: 21, scope: !135)
!135 = distinct !DILexicalBlock(scope: !131, file: !14, line: 46, column: 2)
!136 = !DILocation(line: 46, column: 25, scope: !135)
!137 = !DILocation(line: 46, column: 23, scope: !135)
!138 = !DILocation(line: 46, column: 2, scope: !131)
!139 = !DILocation(line: 47, column: 16, scope: !140)
!140 = distinct !DILexicalBlock(scope: !141, file: !14, line: 47, column: 7)
!141 = distinct !DILexicalBlock(scope: !135, file: !14, line: 46, column: 38)
!142 = !DILocation(line: 47, column: 20, scope: !140)
!143 = !DILocation(line: 47, column: 23, scope: !140)
!144 = !DILocation(line: 47, column: 30, scope: !140)
!145 = !DILocation(line: 47, column: 39, scope: !140)
!146 = !DILocation(line: 47, column: 37, scope: !140)
!147 = !DILocation(line: 47, column: 7, scope: !140)
!148 = !DILocation(line: 47, column: 43, scope: !140)
!149 = !DILocation(line: 47, column: 7, scope: !141)
!150 = !DILocation(line: 48, column: 4, scope: !151)
!151 = distinct !DILexicalBlock(scope: !140, file: !14, line: 47, column: 48)
!152 = !DILocation(line: 50, column: 16, scope: !153)
!153 = distinct !DILexicalBlock(scope: !141, file: !14, line: 50, column: 7)
!154 = !DILocation(line: 50, column: 20, scope: !153)
!155 = !DILocation(line: 50, column: 23, scope: !153)
!156 = !DILocation(line: 50, column: 31, scope: !153)
!157 = !DILocation(line: 50, column: 40, scope: !153)
!158 = !DILocation(line: 50, column: 38, scope: !153)
!159 = !DILocation(line: 50, column: 42, scope: !153)
!160 = !DILocation(line: 50, column: 7, scope: !153)
!161 = !DILocation(line: 50, column: 49, scope: !153)
!162 = !DILocation(line: 50, column: 7, scope: !141)
!163 = !DILocation(line: 51, column: 4, scope: !164)
!164 = distinct !DILexicalBlock(scope: !153, file: !14, line: 50, column: 54)
!165 = !DILocation(line: 53, column: 2, scope: !141)
!166 = !DILocation(line: 46, column: 34, scope: !135)
!167 = !DILocation(line: 46, column: 2, scope: !135)
!168 = distinct !{!168, !138, !169}
!169 = !DILocation(line: 53, column: 2, scope: !131)
!170 = !DILocation(line: 55, column: 2, scope: !105)
!171 = !DILocation(line: 55, column: 11, scope: !105)
!172 = !DILocation(line: 55, column: 9, scope: !105)
!173 = !DILocation(line: 55, column: 19, scope: !105)
!174 = !DILocation(line: 56, column: 14, scope: !105)
!175 = !DILocation(line: 56, column: 12, scope: !105)
!176 = !DILocation(line: 56, column: 2, scope: !105)
!177 = !DILocation(line: 57, column: 1, scope: !105)
!178 = distinct !DISubprogram(name: "hex2bin", scope: !14, file: !14, line: 59, type: !179, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !22)
!179 = !DISubroutineType(types: !180)
!180 = !{!108, !181, !108, !18, !108}
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 32)
!182 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3)
!183 = !DILocalVariable(name: "hex", arg: 1, scope: !178, file: !14, line: 59, type: !181)
!184 = !DILocation(line: 59, column: 28, scope: !178)
!185 = !DILocalVariable(name: "hexlen", arg: 2, scope: !178, file: !14, line: 59, type: !108)
!186 = !DILocation(line: 59, column: 40, scope: !178)
!187 = !DILocalVariable(name: "buf", arg: 3, scope: !178, file: !14, line: 59, type: !18)
!188 = !DILocation(line: 59, column: 57, scope: !178)
!189 = !DILocalVariable(name: "buflen", arg: 4, scope: !178, file: !14, line: 59, type: !108)
!190 = !DILocation(line: 59, column: 69, scope: !178)
!191 = !DILocalVariable(name: "dec", scope: !178, file: !14, line: 61, type: !19)
!192 = !DILocation(line: 61, column: 10, scope: !178)
!193 = !DILocation(line: 63, column: 6, scope: !194)
!194 = distinct !DILexicalBlock(scope: !178, file: !14, line: 63, column: 6)
!195 = !DILocation(line: 63, column: 15, scope: !194)
!196 = !DILocation(line: 63, column: 22, scope: !194)
!197 = !DILocation(line: 63, column: 29, scope: !194)
!198 = !DILocation(line: 63, column: 36, scope: !194)
!199 = !DILocation(line: 63, column: 27, scope: !194)
!200 = !DILocation(line: 63, column: 13, scope: !194)
!201 = !DILocation(line: 63, column: 6, scope: !178)
!202 = !DILocation(line: 64, column: 3, scope: !203)
!203 = distinct !DILexicalBlock(scope: !194, file: !14, line: 63, column: 42)
!204 = !DILocation(line: 68, column: 7, scope: !205)
!205 = distinct !DILexicalBlock(scope: !178, file: !14, line: 68, column: 6)
!206 = !DILocation(line: 68, column: 14, scope: !205)
!207 = !DILocation(line: 68, column: 20, scope: !205)
!208 = !DILocation(line: 68, column: 6, scope: !178)
!209 = !DILocation(line: 69, column: 16, scope: !210)
!210 = distinct !DILexicalBlock(scope: !211, file: !14, line: 69, column: 7)
!211 = distinct !DILexicalBlock(scope: !205, file: !14, line: 68, column: 26)
!212 = !DILocation(line: 69, column: 7, scope: !210)
!213 = !DILocation(line: 69, column: 30, scope: !210)
!214 = !DILocation(line: 69, column: 7, scope: !211)
!215 = !DILocation(line: 70, column: 4, scope: !216)
!216 = distinct !DILexicalBlock(scope: !210, file: !14, line: 69, column: 35)
!217 = !DILocation(line: 72, column: 12, scope: !211)
!218 = !DILocation(line: 72, column: 3, scope: !211)
!219 = !DILocation(line: 72, column: 10, scope: !211)
!220 = !DILocation(line: 73, column: 6, scope: !211)
!221 = !DILocation(line: 74, column: 6, scope: !211)
!222 = !DILocation(line: 75, column: 2, scope: !211)
!223 = !DILocalVariable(name: "i", scope: !224, file: !14, line: 78, type: !108)
!224 = distinct !DILexicalBlock(scope: !178, file: !14, line: 78, column: 2)
!225 = !DILocation(line: 78, column: 14, scope: !224)
!226 = !DILocation(line: 78, column: 7, scope: !224)
!227 = !DILocation(line: 78, column: 21, scope: !228)
!228 = distinct !DILexicalBlock(scope: !224, file: !14, line: 78, column: 2)
!229 = !DILocation(line: 78, column: 25, scope: !228)
!230 = !DILocation(line: 78, column: 32, scope: !228)
!231 = !DILocation(line: 78, column: 23, scope: !228)
!232 = !DILocation(line: 78, column: 2, scope: !224)
!233 = !DILocation(line: 79, column: 16, scope: !234)
!234 = distinct !DILexicalBlock(scope: !235, file: !14, line: 79, column: 7)
!235 = distinct !DILexicalBlock(scope: !228, file: !14, line: 78, column: 43)
!236 = !DILocation(line: 79, column: 25, scope: !234)
!237 = !DILocation(line: 79, column: 23, scope: !234)
!238 = !DILocation(line: 79, column: 7, scope: !234)
!239 = !DILocation(line: 79, column: 35, scope: !234)
!240 = !DILocation(line: 79, column: 7, scope: !235)
!241 = !DILocation(line: 80, column: 4, scope: !242)
!242 = distinct !DILexicalBlock(scope: !234, file: !14, line: 79, column: 40)
!243 = !DILocation(line: 82, column: 12, scope: !235)
!244 = !DILocation(line: 82, column: 16, scope: !235)
!245 = !DILocation(line: 82, column: 3, scope: !235)
!246 = !DILocation(line: 82, column: 7, scope: !235)
!247 = !DILocation(line: 82, column: 10, scope: !235)
!248 = !DILocation(line: 84, column: 16, scope: !249)
!249 = distinct !DILexicalBlock(scope: !235, file: !14, line: 84, column: 7)
!250 = !DILocation(line: 84, column: 25, scope: !249)
!251 = !DILocation(line: 84, column: 23, scope: !249)
!252 = !DILocation(line: 84, column: 27, scope: !249)
!253 = !DILocation(line: 84, column: 7, scope: !249)
!254 = !DILocation(line: 84, column: 40, scope: !249)
!255 = !DILocation(line: 84, column: 7, scope: !235)
!256 = !DILocation(line: 85, column: 4, scope: !257)
!257 = distinct !DILexicalBlock(scope: !249, file: !14, line: 84, column: 45)
!258 = !DILocation(line: 87, column: 13, scope: !235)
!259 = !DILocation(line: 87, column: 3, scope: !235)
!260 = !DILocation(line: 87, column: 7, scope: !235)
!261 = !DILocation(line: 87, column: 10, scope: !235)
!262 = !DILocation(line: 88, column: 2, scope: !235)
!263 = !DILocation(line: 78, column: 39, scope: !228)
!264 = !DILocation(line: 78, column: 2, scope: !228)
!265 = distinct !{!265, !232, !266}
!266 = !DILocation(line: 88, column: 2, scope: !224)
!267 = !DILocation(line: 90, column: 9, scope: !178)
!268 = !DILocation(line: 90, column: 16, scope: !178)
!269 = !DILocation(line: 90, column: 23, scope: !178)
!270 = !DILocation(line: 90, column: 30, scope: !178)
!271 = !DILocation(line: 90, column: 21, scope: !178)
!272 = !DILocation(line: 90, column: 2, scope: !178)
!273 = !DILocation(line: 91, column: 1, scope: !178)
