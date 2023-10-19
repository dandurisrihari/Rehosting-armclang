; ModuleID = '../bc_files/hex.bc'
source_filename = "/home/sri/zephyrproject/zephyr/lib/os/hex.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-arm-none-eabi"

; Function Attrs: nounwind optsize
define hidden i32 @char2hex(i8 noundef zeroext %0, ptr noundef %1) #0 !dbg !11 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca ptr, align 4
  store i8 %0, ptr %4, align 1
  call void @llvm.dbg.declare(metadata ptr %4, metadata !21, metadata !DIExpression()), !dbg !23
  store ptr %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !22, metadata !DIExpression()), !dbg !24
  %6 = load i8, ptr %4, align 1, !dbg !25
  %7 = zext i8 %6 to i32, !dbg !25
  %8 = icmp sge i32 %7, 48, !dbg !27
  br i1 %8, label %9, label %19, !dbg !28

9:                                                ; preds = %2
  %10 = load i8, ptr %4, align 1, !dbg !29
  %11 = zext i8 %10 to i32, !dbg !29
  %12 = icmp sle i32 %11, 57, !dbg !30
  br i1 %12, label %13, label %19, !dbg !31

13:                                               ; preds = %9
  %14 = load i8, ptr %4, align 1, !dbg !32
  %15 = zext i8 %14 to i32, !dbg !32
  %16 = sub nsw i32 %15, 48, !dbg !34
  %17 = trunc i32 %16 to i8, !dbg !32
  %18 = load ptr, ptr %5, align 4, !dbg !35
  store i8 %17, ptr %18, align 1, !dbg !36
  br label %52, !dbg !37

19:                                               ; preds = %9, %2
  %20 = load i8, ptr %4, align 1, !dbg !38
  %21 = zext i8 %20 to i32, !dbg !38
  %22 = icmp sge i32 %21, 97, !dbg !40
  br i1 %22, label %23, label %34, !dbg !41

23:                                               ; preds = %19
  %24 = load i8, ptr %4, align 1, !dbg !42
  %25 = zext i8 %24 to i32, !dbg !42
  %26 = icmp sle i32 %25, 102, !dbg !43
  br i1 %26, label %27, label %34, !dbg !44

27:                                               ; preds = %23
  %28 = load i8, ptr %4, align 1, !dbg !45
  %29 = zext i8 %28 to i32, !dbg !45
  %30 = sub nsw i32 %29, 97, !dbg !47
  %31 = add nsw i32 %30, 10, !dbg !48
  %32 = trunc i32 %31 to i8, !dbg !45
  %33 = load ptr, ptr %5, align 4, !dbg !49
  store i8 %32, ptr %33, align 1, !dbg !50
  br label %51, !dbg !51

34:                                               ; preds = %23, %19
  %35 = load i8, ptr %4, align 1, !dbg !52
  %36 = zext i8 %35 to i32, !dbg !52
  %37 = icmp sge i32 %36, 65, !dbg !54
  br i1 %37, label %38, label %49, !dbg !55

38:                                               ; preds = %34
  %39 = load i8, ptr %4, align 1, !dbg !56
  %40 = zext i8 %39 to i32, !dbg !56
  %41 = icmp sle i32 %40, 70, !dbg !57
  br i1 %41, label %42, label %49, !dbg !58

42:                                               ; preds = %38
  %43 = load i8, ptr %4, align 1, !dbg !59
  %44 = zext i8 %43 to i32, !dbg !59
  %45 = sub nsw i32 %44, 65, !dbg !61
  %46 = add nsw i32 %45, 10, !dbg !62
  %47 = trunc i32 %46 to i8, !dbg !59
  %48 = load ptr, ptr %5, align 4, !dbg !63
  store i8 %47, ptr %48, align 1, !dbg !64
  br label %50, !dbg !65

49:                                               ; preds = %38, %34
  store i32 -5, ptr %3, align 4, !dbg !66
  br label %53, !dbg !66

50:                                               ; preds = %42
  br label %51

51:                                               ; preds = %50, %27
  br label %52

52:                                               ; preds = %51, %13
  store i32 0, ptr %3, align 4, !dbg !68
  br label %53, !dbg !68

53:                                               ; preds = %52, %49
  %54 = load i32, ptr %3, align 4, !dbg !69
  ret i32 %54, !dbg !69
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind optsize
define hidden i32 @hex2char(i8 noundef zeroext %0, ptr noundef %1) #0 !dbg !70 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca ptr, align 4
  store i8 %0, ptr %4, align 1
  call void @llvm.dbg.declare(metadata ptr %4, metadata !75, metadata !DIExpression()), !dbg !77
  store ptr %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !76, metadata !DIExpression()), !dbg !78
  %6 = load i8, ptr %4, align 1, !dbg !79
  %7 = zext i8 %6 to i32, !dbg !79
  %8 = icmp sle i32 %7, 9, !dbg !81
  br i1 %8, label %9, label %15, !dbg !82

9:                                                ; preds = %2
  %10 = load i8, ptr %4, align 1, !dbg !83
  %11 = zext i8 %10 to i32, !dbg !83
  %12 = add nsw i32 %11, 48, !dbg !85
  %13 = trunc i32 %12 to i8, !dbg !83
  %14 = load ptr, ptr %5, align 4, !dbg !86
  store i8 %13, ptr %14, align 1, !dbg !87
  br label %28, !dbg !88

15:                                               ; preds = %2
  %16 = load i8, ptr %4, align 1, !dbg !89
  %17 = zext i8 %16 to i32, !dbg !89
  %18 = icmp sle i32 %17, 15, !dbg !91
  br i1 %18, label %19, label %26, !dbg !92

19:                                               ; preds = %15
  %20 = load i8, ptr %4, align 1, !dbg !93
  %21 = zext i8 %20 to i32, !dbg !93
  %22 = sub nsw i32 %21, 10, !dbg !95
  %23 = add nsw i32 %22, 97, !dbg !96
  %24 = trunc i32 %23 to i8, !dbg !93
  %25 = load ptr, ptr %5, align 4, !dbg !97
  store i8 %24, ptr %25, align 1, !dbg !98
  br label %27, !dbg !99

26:                                               ; preds = %15
  store i32 -5, ptr %3, align 4, !dbg !100
  br label %29, !dbg !100

27:                                               ; preds = %19
  br label %28

28:                                               ; preds = %27, %9
  store i32 0, ptr %3, align 4, !dbg !102
  br label %29, !dbg !102

29:                                               ; preds = %28, %26
  %30 = load i32, ptr %3, align 4, !dbg !103
  ret i32 %30, !dbg !103
}

; Function Attrs: nounwind optsize
define hidden i32 @bin2hex(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #0 !dbg !104 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store ptr %0, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !113, metadata !DIExpression()), !dbg !119
  store i32 %1, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !114, metadata !DIExpression()), !dbg !120
  store ptr %2, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !115, metadata !DIExpression()), !dbg !121
  store i32 %3, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !116, metadata !DIExpression()), !dbg !122
  %12 = load i32, ptr %9, align 4, !dbg !123
  %13 = load i32, ptr %7, align 4, !dbg !125
  %14 = mul i32 %13, 2, !dbg !126
  %15 = add i32 %14, 1, !dbg !127
  %16 = icmp ult i32 %12, %15, !dbg !128
  br i1 %16, label %17, label %18, !dbg !129

17:                                               ; preds = %4
  store i32 0, ptr %5, align 4, !dbg !130
  br label %68, !dbg !130

18:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #3, !dbg !132
  call void @llvm.dbg.declare(metadata ptr %10, metadata !117, metadata !DIExpression()), !dbg !133
  store i32 0, ptr %10, align 4, !dbg !133
  br label %19, !dbg !132

19:                                               ; preds = %56, %18
  %20 = load i32, ptr %10, align 4, !dbg !134
  %21 = load i32, ptr %7, align 4, !dbg !136
  %22 = icmp ult i32 %20, %21, !dbg !137
  br i1 %22, label %24, label %23, !dbg !138

23:                                               ; preds = %19
  store i32 2, ptr %11, align 4
  br label %59, !dbg !138

24:                                               ; preds = %19
  %25 = load ptr, ptr %6, align 4, !dbg !139
  %26 = load i32, ptr %10, align 4, !dbg !142
  %27 = getelementptr inbounds i8, ptr %25, i32 %26, !dbg !139
  %28 = load i8, ptr %27, align 1, !dbg !139
  %29 = zext i8 %28 to i32, !dbg !139
  %30 = ashr i32 %29, 4, !dbg !143
  %31 = trunc i32 %30 to i8, !dbg !139
  %32 = load ptr, ptr %8, align 4, !dbg !144
  %33 = load i32, ptr %10, align 4, !dbg !145
  %34 = mul i32 2, %33, !dbg !146
  %35 = getelementptr inbounds i8, ptr %32, i32 %34, !dbg !144
  %36 = call i32 @hex2char(i8 noundef zeroext %31, ptr noundef %35) #4, !dbg !147
  %37 = icmp slt i32 %36, 0, !dbg !148
  br i1 %37, label %38, label %39, !dbg !149

38:                                               ; preds = %24
  store i32 0, ptr %5, align 4, !dbg !150
  store i32 1, ptr %11, align 4
  br label %59, !dbg !150

39:                                               ; preds = %24
  %40 = load ptr, ptr %6, align 4, !dbg !152
  %41 = load i32, ptr %10, align 4, !dbg !154
  %42 = getelementptr inbounds i8, ptr %40, i32 %41, !dbg !152
  %43 = load i8, ptr %42, align 1, !dbg !152
  %44 = zext i8 %43 to i32, !dbg !152
  %45 = and i32 %44, 15, !dbg !155
  %46 = trunc i32 %45 to i8, !dbg !152
  %47 = load ptr, ptr %8, align 4, !dbg !156
  %48 = load i32, ptr %10, align 4, !dbg !157
  %49 = mul i32 2, %48, !dbg !158
  %50 = add i32 %49, 1, !dbg !159
  %51 = getelementptr inbounds i8, ptr %47, i32 %50, !dbg !156
  %52 = call i32 @hex2char(i8 noundef zeroext %46, ptr noundef %51) #4, !dbg !160
  %53 = icmp slt i32 %52, 0, !dbg !161
  br i1 %53, label %54, label %55, !dbg !162

54:                                               ; preds = %39
  store i32 0, ptr %5, align 4, !dbg !163
  store i32 1, ptr %11, align 4
  br label %59, !dbg !163

55:                                               ; preds = %39
  br label %56, !dbg !165

56:                                               ; preds = %55
  %57 = load i32, ptr %10, align 4, !dbg !166
  %58 = add i32 %57, 1, !dbg !166
  store i32 %58, ptr %10, align 4, !dbg !166
  br label %19, !dbg !167, !llvm.loop !168

59:                                               ; preds = %54, %38, %23
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #3, !dbg !167
  %60 = load i32, ptr %11, align 4
  switch i32 %60, label %70 [
    i32 2, label %61
    i32 1, label %68
  ]

61:                                               ; preds = %59
  %62 = load ptr, ptr %8, align 4, !dbg !170
  %63 = load i32, ptr %7, align 4, !dbg !171
  %64 = mul i32 2, %63, !dbg !172
  %65 = getelementptr inbounds i8, ptr %62, i32 %64, !dbg !170
  store i8 0, ptr %65, align 1, !dbg !173
  %66 = load i32, ptr %7, align 4, !dbg !174
  %67 = mul i32 2, %66, !dbg !175
  store i32 %67, ptr %5, align 4, !dbg !176
  br label %68, !dbg !176

68:                                               ; preds = %61, %59, %17
  %69 = load i32, ptr %5, align 4, !dbg !177
  ret i32 %69, !dbg !177

70:                                               ; preds = %59
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind optsize
define hidden i32 @hex2bin(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #0 !dbg !178 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store ptr %0, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !184, metadata !DIExpression()), !dbg !191
  store i32 %1, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !185, metadata !DIExpression()), !dbg !192
  store ptr %2, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !186, metadata !DIExpression()), !dbg !193
  store i32 %3, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !187, metadata !DIExpression()), !dbg !194
  call void @llvm.lifetime.start.p0(i64 1, ptr %10) #3, !dbg !195
  call void @llvm.dbg.declare(metadata ptr %10, metadata !188, metadata !DIExpression()), !dbg !196
  %13 = load i32, ptr %9, align 4, !dbg !197
  %14 = load i32, ptr %7, align 4, !dbg !199
  %15 = udiv i32 %14, 2, !dbg !200
  %16 = load i32, ptr %7, align 4, !dbg !201
  %17 = urem i32 %16, 2, !dbg !202
  %18 = add i32 %15, %17, !dbg !203
  %19 = icmp ult i32 %13, %18, !dbg !204
  br i1 %19, label %20, label %21, !dbg !205

20:                                               ; preds = %4
  store i32 0, ptr %5, align 4, !dbg !206
  store i32 1, ptr %11, align 4
  br label %94, !dbg !206

21:                                               ; preds = %4
  %22 = load i32, ptr %7, align 4, !dbg !208
  %23 = urem i32 %22, 2, !dbg !210
  %24 = icmp ne i32 %23, 0, !dbg !211
  br i1 %24, label %25, label %40, !dbg !212

25:                                               ; preds = %21
  %26 = load ptr, ptr %6, align 4, !dbg !213
  %27 = getelementptr inbounds i8, ptr %26, i32 0, !dbg !213
  %28 = load i8, ptr %27, align 1, !dbg !213
  %29 = call i32 @char2hex(i8 noundef zeroext %28, ptr noundef %10) #4, !dbg !216
  %30 = icmp slt i32 %29, 0, !dbg !217
  br i1 %30, label %31, label %32, !dbg !218

31:                                               ; preds = %25
  store i32 0, ptr %5, align 4, !dbg !219
  store i32 1, ptr %11, align 4
  br label %94, !dbg !219

32:                                               ; preds = %25
  %33 = load i8, ptr %10, align 1, !dbg !221
  %34 = load ptr, ptr %8, align 4, !dbg !222
  %35 = getelementptr inbounds i8, ptr %34, i32 0, !dbg !222
  store i8 %33, ptr %35, align 1, !dbg !223
  %36 = load ptr, ptr %6, align 4, !dbg !224
  %37 = getelementptr inbounds i8, ptr %36, i32 1, !dbg !224
  store ptr %37, ptr %6, align 4, !dbg !224
  %38 = load ptr, ptr %8, align 4, !dbg !225
  %39 = getelementptr inbounds i8, ptr %38, i32 1, !dbg !225
  store ptr %39, ptr %8, align 4, !dbg !225
  br label %40, !dbg !226

40:                                               ; preds = %32, %21
  call void @llvm.lifetime.start.p0(i64 4, ptr %12) #3, !dbg !227
  call void @llvm.dbg.declare(metadata ptr %12, metadata !189, metadata !DIExpression()), !dbg !228
  store i32 0, ptr %12, align 4, !dbg !228
  br label %41, !dbg !227

41:                                               ; preds = %83, %40
  %42 = load i32, ptr %12, align 4, !dbg !229
  %43 = load i32, ptr %7, align 4, !dbg !231
  %44 = udiv i32 %43, 2, !dbg !232
  %45 = icmp ult i32 %42, %44, !dbg !233
  br i1 %45, label %47, label %46, !dbg !234

46:                                               ; preds = %41
  store i32 2, ptr %11, align 4
  br label %86, !dbg !234

47:                                               ; preds = %41
  %48 = load ptr, ptr %6, align 4, !dbg !235
  %49 = load i32, ptr %12, align 4, !dbg !238
  %50 = mul i32 2, %49, !dbg !239
  %51 = getelementptr inbounds i8, ptr %48, i32 %50, !dbg !235
  %52 = load i8, ptr %51, align 1, !dbg !235
  %53 = call i32 @char2hex(i8 noundef zeroext %52, ptr noundef %10) #4, !dbg !240
  %54 = icmp slt i32 %53, 0, !dbg !241
  br i1 %54, label %55, label %56, !dbg !242

55:                                               ; preds = %47
  store i32 0, ptr %5, align 4, !dbg !243
  store i32 1, ptr %11, align 4
  br label %86, !dbg !243

56:                                               ; preds = %47
  %57 = load i8, ptr %10, align 1, !dbg !245
  %58 = zext i8 %57 to i32, !dbg !245
  %59 = shl i32 %58, 4, !dbg !246
  %60 = trunc i32 %59 to i8, !dbg !245
  %61 = load ptr, ptr %8, align 4, !dbg !247
  %62 = load i32, ptr %12, align 4, !dbg !248
  %63 = getelementptr inbounds i8, ptr %61, i32 %62, !dbg !247
  store i8 %60, ptr %63, align 1, !dbg !249
  %64 = load ptr, ptr %6, align 4, !dbg !250
  %65 = load i32, ptr %12, align 4, !dbg !252
  %66 = mul i32 2, %65, !dbg !253
  %67 = add i32 %66, 1, !dbg !254
  %68 = getelementptr inbounds i8, ptr %64, i32 %67, !dbg !250
  %69 = load i8, ptr %68, align 1, !dbg !250
  %70 = call i32 @char2hex(i8 noundef zeroext %69, ptr noundef %10) #4, !dbg !255
  %71 = icmp slt i32 %70, 0, !dbg !256
  br i1 %71, label %72, label %73, !dbg !257

72:                                               ; preds = %56
  store i32 0, ptr %5, align 4, !dbg !258
  store i32 1, ptr %11, align 4
  br label %86, !dbg !258

73:                                               ; preds = %56
  %74 = load i8, ptr %10, align 1, !dbg !260
  %75 = zext i8 %74 to i32, !dbg !260
  %76 = load ptr, ptr %8, align 4, !dbg !261
  %77 = load i32, ptr %12, align 4, !dbg !262
  %78 = getelementptr inbounds i8, ptr %76, i32 %77, !dbg !261
  %79 = load i8, ptr %78, align 1, !dbg !263
  %80 = zext i8 %79 to i32, !dbg !263
  %81 = add nsw i32 %80, %75, !dbg !263
  %82 = trunc i32 %81 to i8, !dbg !263
  store i8 %82, ptr %78, align 1, !dbg !263
  br label %83, !dbg !264

83:                                               ; preds = %73
  %84 = load i32, ptr %12, align 4, !dbg !265
  %85 = add i32 %84, 1, !dbg !265
  store i32 %85, ptr %12, align 4, !dbg !265
  br label %41, !dbg !266, !llvm.loop !267

86:                                               ; preds = %72, %55, %46
  call void @llvm.lifetime.end.p0(i64 4, ptr %12) #3, !dbg !266
  %87 = load i32, ptr %11, align 4
  switch i32 %87, label %94 [
    i32 2, label %88
  ]

88:                                               ; preds = %86
  %89 = load i32, ptr %7, align 4, !dbg !269
  %90 = udiv i32 %89, 2, !dbg !270
  %91 = load i32, ptr %7, align 4, !dbg !271
  %92 = urem i32 %91, 2, !dbg !272
  %93 = add i32 %90, %92, !dbg !273
  store i32 %93, ptr %5, align 4, !dbg !274
  store i32 1, ptr %11, align 4
  br label %94, !dbg !274

94:                                               ; preds = %88, %86, %31, %20
  call void @llvm.lifetime.end.p0(i64 1, ptr %10) #3, !dbg !275
  %95 = load i32, ptr %5, align 4, !dbg !275
  ret i32 %95, !dbg !275
}

attributes #0 = { nounwind optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind }
attributes #4 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "hex.c", directory: "/home/sri/zephyrproject/zephyr/build")
!2 = !{!3}
!3 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!4 = !{i32 7, !"Dwarf Version", i32 4}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = !{i32 1, !"wchar_size", i32 4}
!7 = !{i32 1, !"static_rwdata", i32 1}
!8 = !{i32 1, !"enumsize_buildattr", i32 1}
!9 = !{i32 1, !"armlib_unavailable", i32 0}
!10 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
!11 = distinct !DISubprogram(name: "char2hex", scope: !12, file: !12, line: 12, type: !13, scopeLine: 13, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !20)
!12 = !DIFile(filename: "lib/os/hex.c", directory: "/home/sri/zephyrproject/zephyr")
!13 = !DISubroutineType(types: !14)
!14 = !{!15, !3, !16}
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 32)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !18, line: 62, baseType: !19)
!18 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/stdint.h", directory: "")
!19 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!20 = !{!21, !22}
!21 = !DILocalVariable(name: "c", arg: 1, scope: !11, file: !12, line: 12, type: !3)
!22 = !DILocalVariable(name: "x", arg: 2, scope: !11, file: !12, line: 12, type: !16)
!23 = !DILocation(line: 12, column: 19, scope: !11)
!24 = !DILocation(line: 12, column: 31, scope: !11)
!25 = !DILocation(line: 14, column: 6, scope: !26)
!26 = distinct !DILexicalBlock(scope: !11, file: !12, line: 14, column: 6)
!27 = !DILocation(line: 14, column: 8, scope: !26)
!28 = !DILocation(line: 14, column: 15, scope: !26)
!29 = !DILocation(line: 14, column: 18, scope: !26)
!30 = !DILocation(line: 14, column: 20, scope: !26)
!31 = !DILocation(line: 14, column: 6, scope: !11)
!32 = !DILocation(line: 15, column: 8, scope: !33)
!33 = distinct !DILexicalBlock(scope: !26, file: !12, line: 14, column: 28)
!34 = !DILocation(line: 15, column: 10, scope: !33)
!35 = !DILocation(line: 15, column: 4, scope: !33)
!36 = !DILocation(line: 15, column: 6, scope: !33)
!37 = !DILocation(line: 16, column: 2, scope: !33)
!38 = !DILocation(line: 16, column: 13, scope: !39)
!39 = distinct !DILexicalBlock(scope: !26, file: !12, line: 16, column: 13)
!40 = !DILocation(line: 16, column: 15, scope: !39)
!41 = !DILocation(line: 16, column: 22, scope: !39)
!42 = !DILocation(line: 16, column: 25, scope: !39)
!43 = !DILocation(line: 16, column: 27, scope: !39)
!44 = !DILocation(line: 16, column: 13, scope: !26)
!45 = !DILocation(line: 17, column: 8, scope: !46)
!46 = distinct !DILexicalBlock(scope: !39, file: !12, line: 16, column: 35)
!47 = !DILocation(line: 17, column: 10, scope: !46)
!48 = !DILocation(line: 17, column: 16, scope: !46)
!49 = !DILocation(line: 17, column: 4, scope: !46)
!50 = !DILocation(line: 17, column: 6, scope: !46)
!51 = !DILocation(line: 18, column: 2, scope: !46)
!52 = !DILocation(line: 18, column: 13, scope: !53)
!53 = distinct !DILexicalBlock(scope: !39, file: !12, line: 18, column: 13)
!54 = !DILocation(line: 18, column: 15, scope: !53)
!55 = !DILocation(line: 18, column: 22, scope: !53)
!56 = !DILocation(line: 18, column: 25, scope: !53)
!57 = !DILocation(line: 18, column: 27, scope: !53)
!58 = !DILocation(line: 18, column: 13, scope: !39)
!59 = !DILocation(line: 19, column: 8, scope: !60)
!60 = distinct !DILexicalBlock(scope: !53, file: !12, line: 18, column: 35)
!61 = !DILocation(line: 19, column: 10, scope: !60)
!62 = !DILocation(line: 19, column: 16, scope: !60)
!63 = !DILocation(line: 19, column: 4, scope: !60)
!64 = !DILocation(line: 19, column: 6, scope: !60)
!65 = !DILocation(line: 20, column: 2, scope: !60)
!66 = !DILocation(line: 21, column: 3, scope: !67)
!67 = distinct !DILexicalBlock(scope: !53, file: !12, line: 20, column: 9)
!68 = !DILocation(line: 24, column: 2, scope: !11)
!69 = !DILocation(line: 25, column: 1, scope: !11)
!70 = distinct !DISubprogram(name: "hex2char", scope: !12, file: !12, line: 27, type: !71, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !74)
!71 = !DISubroutineType(types: !72)
!72 = !{!15, !17, !73}
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3, size: 32)
!74 = !{!75, !76}
!75 = !DILocalVariable(name: "x", arg: 1, scope: !70, file: !12, line: 27, type: !17)
!76 = !DILocalVariable(name: "c", arg: 2, scope: !70, file: !12, line: 27, type: !73)
!77 = !DILocation(line: 27, column: 22, scope: !70)
!78 = !DILocation(line: 27, column: 31, scope: !70)
!79 = !DILocation(line: 29, column: 6, scope: !80)
!80 = distinct !DILexicalBlock(scope: !70, file: !12, line: 29, column: 6)
!81 = !DILocation(line: 29, column: 8, scope: !80)
!82 = !DILocation(line: 29, column: 6, scope: !70)
!83 = !DILocation(line: 30, column: 8, scope: !84)
!84 = distinct !DILexicalBlock(scope: !80, file: !12, line: 29, column: 14)
!85 = !DILocation(line: 30, column: 10, scope: !84)
!86 = !DILocation(line: 30, column: 4, scope: !84)
!87 = !DILocation(line: 30, column: 6, scope: !84)
!88 = !DILocation(line: 31, column: 2, scope: !84)
!89 = !DILocation(line: 31, column: 13, scope: !90)
!90 = distinct !DILexicalBlock(scope: !80, file: !12, line: 31, column: 13)
!91 = !DILocation(line: 31, column: 15, scope: !90)
!92 = !DILocation(line: 31, column: 13, scope: !80)
!93 = !DILocation(line: 32, column: 8, scope: !94)
!94 = distinct !DILexicalBlock(scope: !90, file: !12, line: 31, column: 22)
!95 = !DILocation(line: 32, column: 10, scope: !94)
!96 = !DILocation(line: 32, column: 15, scope: !94)
!97 = !DILocation(line: 32, column: 4, scope: !94)
!98 = !DILocation(line: 32, column: 6, scope: !94)
!99 = !DILocation(line: 33, column: 2, scope: !94)
!100 = !DILocation(line: 34, column: 3, scope: !101)
!101 = distinct !DILexicalBlock(scope: !90, file: !12, line: 33, column: 9)
!102 = !DILocation(line: 37, column: 2, scope: !70)
!103 = !DILocation(line: 38, column: 1, scope: !70)
!104 = distinct !DISubprogram(name: "bin2hex", scope: !12, file: !12, line: 40, type: !105, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !112)
!105 = !DISubroutineType(types: !106)
!106 = !{!107, !110, !107, !73, !107}
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !108, line: 46, baseType: !109)
!108 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/lib/clang/17/include/stddef.h", directory: "")
!109 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 32)
!111 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!112 = !{!113, !114, !115, !116, !117}
!113 = !DILocalVariable(name: "buf", arg: 1, scope: !104, file: !12, line: 40, type: !110)
!114 = !DILocalVariable(name: "buflen", arg: 2, scope: !104, file: !12, line: 40, type: !107)
!115 = !DILocalVariable(name: "hex", arg: 3, scope: !104, file: !12, line: 40, type: !73)
!116 = !DILocalVariable(name: "hexlen", arg: 4, scope: !104, file: !12, line: 40, type: !107)
!117 = !DILocalVariable(name: "i", scope: !118, file: !12, line: 46, type: !107)
!118 = distinct !DILexicalBlock(scope: !104, file: !12, line: 46, column: 2)
!119 = !DILocation(line: 40, column: 31, scope: !104)
!120 = !DILocation(line: 40, column: 43, scope: !104)
!121 = !DILocation(line: 40, column: 57, scope: !104)
!122 = !DILocation(line: 40, column: 69, scope: !104)
!123 = !DILocation(line: 42, column: 6, scope: !124)
!124 = distinct !DILexicalBlock(scope: !104, file: !12, line: 42, column: 6)
!125 = !DILocation(line: 42, column: 16, scope: !124)
!126 = !DILocation(line: 42, column: 23, scope: !124)
!127 = !DILocation(line: 42, column: 28, scope: !124)
!128 = !DILocation(line: 42, column: 13, scope: !124)
!129 = !DILocation(line: 42, column: 6, scope: !104)
!130 = !DILocation(line: 43, column: 3, scope: !131)
!131 = distinct !DILexicalBlock(scope: !124, file: !12, line: 42, column: 35)
!132 = !DILocation(line: 46, column: 7, scope: !118)
!133 = !DILocation(line: 46, column: 14, scope: !118)
!134 = !DILocation(line: 46, column: 21, scope: !135)
!135 = distinct !DILexicalBlock(scope: !118, file: !12, line: 46, column: 2)
!136 = !DILocation(line: 46, column: 25, scope: !135)
!137 = !DILocation(line: 46, column: 23, scope: !135)
!138 = !DILocation(line: 46, column: 2, scope: !118)
!139 = !DILocation(line: 47, column: 16, scope: !140)
!140 = distinct !DILexicalBlock(scope: !141, file: !12, line: 47, column: 7)
!141 = distinct !DILexicalBlock(scope: !135, file: !12, line: 46, column: 38)
!142 = !DILocation(line: 47, column: 20, scope: !140)
!143 = !DILocation(line: 47, column: 23, scope: !140)
!144 = !DILocation(line: 47, column: 30, scope: !140)
!145 = !DILocation(line: 47, column: 39, scope: !140)
!146 = !DILocation(line: 47, column: 37, scope: !140)
!147 = !DILocation(line: 47, column: 7, scope: !140)
!148 = !DILocation(line: 47, column: 43, scope: !140)
!149 = !DILocation(line: 47, column: 7, scope: !141)
!150 = !DILocation(line: 48, column: 4, scope: !151)
!151 = distinct !DILexicalBlock(scope: !140, file: !12, line: 47, column: 48)
!152 = !DILocation(line: 50, column: 16, scope: !153)
!153 = distinct !DILexicalBlock(scope: !141, file: !12, line: 50, column: 7)
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
!164 = distinct !DILexicalBlock(scope: !153, file: !12, line: 50, column: 54)
!165 = !DILocation(line: 53, column: 2, scope: !141)
!166 = !DILocation(line: 46, column: 34, scope: !135)
!167 = !DILocation(line: 46, column: 2, scope: !135)
!168 = distinct !{!168, !138, !169}
!169 = !DILocation(line: 53, column: 2, scope: !118)
!170 = !DILocation(line: 55, column: 2, scope: !104)
!171 = !DILocation(line: 55, column: 11, scope: !104)
!172 = !DILocation(line: 55, column: 9, scope: !104)
!173 = !DILocation(line: 55, column: 19, scope: !104)
!174 = !DILocation(line: 56, column: 14, scope: !104)
!175 = !DILocation(line: 56, column: 12, scope: !104)
!176 = !DILocation(line: 56, column: 2, scope: !104)
!177 = !DILocation(line: 57, column: 1, scope: !104)
!178 = distinct !DISubprogram(name: "hex2bin", scope: !12, file: !12, line: 59, type: !179, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !183)
!179 = !DISubroutineType(types: !180)
!180 = !{!107, !181, !107, !16, !107}
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 32)
!182 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3)
!183 = !{!184, !185, !186, !187, !188, !189}
!184 = !DILocalVariable(name: "hex", arg: 1, scope: !178, file: !12, line: 59, type: !181)
!185 = !DILocalVariable(name: "hexlen", arg: 2, scope: !178, file: !12, line: 59, type: !107)
!186 = !DILocalVariable(name: "buf", arg: 3, scope: !178, file: !12, line: 59, type: !16)
!187 = !DILocalVariable(name: "buflen", arg: 4, scope: !178, file: !12, line: 59, type: !107)
!188 = !DILocalVariable(name: "dec", scope: !178, file: !12, line: 61, type: !17)
!189 = !DILocalVariable(name: "i", scope: !190, file: !12, line: 78, type: !107)
!190 = distinct !DILexicalBlock(scope: !178, file: !12, line: 78, column: 2)
!191 = !DILocation(line: 59, column: 28, scope: !178)
!192 = !DILocation(line: 59, column: 40, scope: !178)
!193 = !DILocation(line: 59, column: 57, scope: !178)
!194 = !DILocation(line: 59, column: 69, scope: !178)
!195 = !DILocation(line: 61, column: 2, scope: !178)
!196 = !DILocation(line: 61, column: 10, scope: !178)
!197 = !DILocation(line: 63, column: 6, scope: !198)
!198 = distinct !DILexicalBlock(scope: !178, file: !12, line: 63, column: 6)
!199 = !DILocation(line: 63, column: 15, scope: !198)
!200 = !DILocation(line: 63, column: 22, scope: !198)
!201 = !DILocation(line: 63, column: 29, scope: !198)
!202 = !DILocation(line: 63, column: 36, scope: !198)
!203 = !DILocation(line: 63, column: 27, scope: !198)
!204 = !DILocation(line: 63, column: 13, scope: !198)
!205 = !DILocation(line: 63, column: 6, scope: !178)
!206 = !DILocation(line: 64, column: 3, scope: !207)
!207 = distinct !DILexicalBlock(scope: !198, file: !12, line: 63, column: 42)
!208 = !DILocation(line: 68, column: 7, scope: !209)
!209 = distinct !DILexicalBlock(scope: !178, file: !12, line: 68, column: 6)
!210 = !DILocation(line: 68, column: 14, scope: !209)
!211 = !DILocation(line: 68, column: 20, scope: !209)
!212 = !DILocation(line: 68, column: 6, scope: !178)
!213 = !DILocation(line: 69, column: 16, scope: !214)
!214 = distinct !DILexicalBlock(scope: !215, file: !12, line: 69, column: 7)
!215 = distinct !DILexicalBlock(scope: !209, file: !12, line: 68, column: 26)
!216 = !DILocation(line: 69, column: 7, scope: !214)
!217 = !DILocation(line: 69, column: 30, scope: !214)
!218 = !DILocation(line: 69, column: 7, scope: !215)
!219 = !DILocation(line: 70, column: 4, scope: !220)
!220 = distinct !DILexicalBlock(scope: !214, file: !12, line: 69, column: 35)
!221 = !DILocation(line: 72, column: 12, scope: !215)
!222 = !DILocation(line: 72, column: 3, scope: !215)
!223 = !DILocation(line: 72, column: 10, scope: !215)
!224 = !DILocation(line: 73, column: 6, scope: !215)
!225 = !DILocation(line: 74, column: 6, scope: !215)
!226 = !DILocation(line: 75, column: 2, scope: !215)
!227 = !DILocation(line: 78, column: 7, scope: !190)
!228 = !DILocation(line: 78, column: 14, scope: !190)
!229 = !DILocation(line: 78, column: 21, scope: !230)
!230 = distinct !DILexicalBlock(scope: !190, file: !12, line: 78, column: 2)
!231 = !DILocation(line: 78, column: 25, scope: !230)
!232 = !DILocation(line: 78, column: 32, scope: !230)
!233 = !DILocation(line: 78, column: 23, scope: !230)
!234 = !DILocation(line: 78, column: 2, scope: !190)
!235 = !DILocation(line: 79, column: 16, scope: !236)
!236 = distinct !DILexicalBlock(scope: !237, file: !12, line: 79, column: 7)
!237 = distinct !DILexicalBlock(scope: !230, file: !12, line: 78, column: 43)
!238 = !DILocation(line: 79, column: 25, scope: !236)
!239 = !DILocation(line: 79, column: 23, scope: !236)
!240 = !DILocation(line: 79, column: 7, scope: !236)
!241 = !DILocation(line: 79, column: 35, scope: !236)
!242 = !DILocation(line: 79, column: 7, scope: !237)
!243 = !DILocation(line: 80, column: 4, scope: !244)
!244 = distinct !DILexicalBlock(scope: !236, file: !12, line: 79, column: 40)
!245 = !DILocation(line: 82, column: 12, scope: !237)
!246 = !DILocation(line: 82, column: 16, scope: !237)
!247 = !DILocation(line: 82, column: 3, scope: !237)
!248 = !DILocation(line: 82, column: 7, scope: !237)
!249 = !DILocation(line: 82, column: 10, scope: !237)
!250 = !DILocation(line: 84, column: 16, scope: !251)
!251 = distinct !DILexicalBlock(scope: !237, file: !12, line: 84, column: 7)
!252 = !DILocation(line: 84, column: 25, scope: !251)
!253 = !DILocation(line: 84, column: 23, scope: !251)
!254 = !DILocation(line: 84, column: 27, scope: !251)
!255 = !DILocation(line: 84, column: 7, scope: !251)
!256 = !DILocation(line: 84, column: 40, scope: !251)
!257 = !DILocation(line: 84, column: 7, scope: !237)
!258 = !DILocation(line: 85, column: 4, scope: !259)
!259 = distinct !DILexicalBlock(scope: !251, file: !12, line: 84, column: 45)
!260 = !DILocation(line: 87, column: 13, scope: !237)
!261 = !DILocation(line: 87, column: 3, scope: !237)
!262 = !DILocation(line: 87, column: 7, scope: !237)
!263 = !DILocation(line: 87, column: 10, scope: !237)
!264 = !DILocation(line: 88, column: 2, scope: !237)
!265 = !DILocation(line: 78, column: 39, scope: !230)
!266 = !DILocation(line: 78, column: 2, scope: !230)
!267 = distinct !{!267, !234, !268}
!268 = !DILocation(line: 88, column: 2, scope: !190)
!269 = !DILocation(line: 90, column: 9, scope: !178)
!270 = !DILocation(line: 90, column: 16, scope: !178)
!271 = !DILocation(line: 90, column: 23, scope: !178)
!272 = !DILocation(line: 90, column: 30, scope: !178)
!273 = !DILocation(line: 90, column: 21, scope: !178)
!274 = !DILocation(line: 90, column: 2, scope: !178)
!275 = !DILocation(line: 91, column: 1, scope: !178)
