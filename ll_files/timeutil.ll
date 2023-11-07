; ModuleID = '../bc_files/timeutil.bc'
source_filename = "/home/sri/zephyrproject/zephyr/lib/os/timeutil.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-arm-none-eabi"

%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { i32, i32 }
%struct.timeutil_sync_instant = type { i64, i64 }
%struct.timeutil_sync_state = type { ptr, %struct.timeutil_sync_instant, %struct.timeutil_sync_instant, float }
%struct.timeutil_sync_config = type { i32, i32 }

@__aeabi_ERANGE = external constant i32, align 4

; Function Attrs: noinline nounwind optnone
define hidden i64 @timeutil_timegm64(ptr noundef %0) #0 !dbg !21 {
  %2 = alloca ptr, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !66, metadata !DIExpression()), !dbg !67
  call void @llvm.dbg.declare(metadata ptr %3, metadata !68, metadata !DIExpression()), !dbg !69
  %8 = load ptr, ptr %2, align 4, !dbg !70
  %9 = getelementptr inbounds %struct.tm, ptr %8, i32 0, i32 5, !dbg !71
  %10 = load i32, ptr %9, align 4, !dbg !71
  %11 = sext i32 %10 to i64, !dbg !72
  %12 = add nsw i64 1900, %11, !dbg !73
  store i64 %12, ptr %3, align 8, !dbg !69
  call void @llvm.dbg.declare(metadata ptr %4, metadata !74, metadata !DIExpression()), !dbg !75
  %13 = load ptr, ptr %2, align 4, !dbg !76
  %14 = getelementptr inbounds %struct.tm, ptr %13, i32 0, i32 4, !dbg !77
  %15 = load i32, ptr %14, align 4, !dbg !77
  %16 = add nsw i32 %15, 1, !dbg !78
  store i32 %16, ptr %4, align 4, !dbg !75
  call void @llvm.dbg.declare(metadata ptr %5, metadata !79, metadata !DIExpression()), !dbg !80
  %17 = load ptr, ptr %2, align 4, !dbg !81
  %18 = getelementptr inbounds %struct.tm, ptr %17, i32 0, i32 3, !dbg !82
  %19 = load i32, ptr %18, align 4, !dbg !82
  %20 = sub nsw i32 %19, 1, !dbg !83
  store i32 %20, ptr %5, align 4, !dbg !80
  call void @llvm.dbg.declare(metadata ptr %6, metadata !84, metadata !DIExpression()), !dbg !85
  %21 = load i64, ptr %3, align 8, !dbg !86
  %22 = load i32, ptr %4, align 4, !dbg !87
  %23 = load i32, ptr %5, align 4, !dbg !88
  %24 = call i64 @time_days_from_civil(i64 noundef %21, i32 noundef %22, i32 noundef %23), !dbg !89
  store i64 %24, ptr %6, align 8, !dbg !85
  call void @llvm.dbg.declare(metadata ptr %7, metadata !90, metadata !DIExpression()), !dbg !91
  %25 = load ptr, ptr %2, align 4, !dbg !92
  %26 = getelementptr inbounds %struct.tm, ptr %25, i32 0, i32 0, !dbg !93
  %27 = load i32, ptr %26, align 4, !dbg !93
  %28 = sext i32 %27 to i64, !dbg !92
  store i64 %28, ptr %7, align 8, !dbg !91
  %29 = load ptr, ptr %2, align 4, !dbg !94
  %30 = getelementptr inbounds %struct.tm, ptr %29, i32 0, i32 1, !dbg !95
  %31 = load i32, ptr %30, align 4, !dbg !95
  %32 = sext i32 %31 to i64, !dbg !94
  %33 = load ptr, ptr %2, align 4, !dbg !96
  %34 = getelementptr inbounds %struct.tm, ptr %33, i32 0, i32 2, !dbg !97
  %35 = load i32, ptr %34, align 4, !dbg !97
  %36 = sext i32 %35 to i64, !dbg !96
  %37 = mul nsw i64 60, %36, !dbg !98
  %38 = add nsw i64 %32, %37, !dbg !99
  %39 = mul nsw i64 60, %38, !dbg !100
  %40 = load i64, ptr %7, align 8, !dbg !101
  %41 = add nsw i64 %40, %39, !dbg !101
  store i64 %41, ptr %7, align 8, !dbg !101
  %42 = load i64, ptr %6, align 8, !dbg !102
  %43 = mul nsw i64 86400, %42, !dbg !103
  %44 = load i64, ptr %7, align 8, !dbg !104
  %45 = add nsw i64 %44, %43, !dbg !104
  store i64 %45, ptr %7, align 8, !dbg !104
  %46 = load i64, ptr %7, align 8, !dbg !105
  ret i64 %46, !dbg !106
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone
define internal i64 @time_days_from_civil(i64 noundef %0, i32 noundef %1, i32 noundef %2) #0 !dbg !107 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i64 %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !110, metadata !DIExpression()), !dbg !111
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !112, metadata !DIExpression()), !dbg !113
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !114, metadata !DIExpression()), !dbg !115
  %11 = load i32, ptr %5, align 4, !dbg !116
  %12 = icmp ule i32 %11, 2, !dbg !117
  %13 = zext i1 %12 to i32, !dbg !117
  %14 = sext i32 %13 to i64, !dbg !116
  %15 = load i64, ptr %4, align 8, !dbg !118
  %16 = sub nsw i64 %15, %14, !dbg !118
  store i64 %16, ptr %4, align 8, !dbg !118
  call void @llvm.dbg.declare(metadata ptr %7, metadata !119, metadata !DIExpression()), !dbg !120
  %17 = load i64, ptr %4, align 8, !dbg !121
  %18 = icmp sge i64 %17, 0, !dbg !122
  br i1 %18, label %19, label %21, !dbg !121

19:                                               ; preds = %3
  %20 = load i64, ptr %4, align 8, !dbg !123
  br label %24, !dbg !121

21:                                               ; preds = %3
  %22 = load i64, ptr %4, align 8, !dbg !124
  %23 = sub nsw i64 %22, 399, !dbg !125
  br label %24, !dbg !121

24:                                               ; preds = %21, %19
  %25 = phi i64 [ %20, %19 ], [ %23, %21 ], !dbg !121
  %26 = sdiv i64 %25, 400, !dbg !126
  store i64 %26, ptr %7, align 8, !dbg !120
  call void @llvm.dbg.declare(metadata ptr %8, metadata !127, metadata !DIExpression()), !dbg !128
  %27 = load i64, ptr %4, align 8, !dbg !129
  %28 = load i64, ptr %7, align 8, !dbg !130
  %29 = mul nsw i64 %28, 400, !dbg !131
  %30 = sub nsw i64 %27, %29, !dbg !132
  %31 = trunc i64 %30 to i32, !dbg !129
  store i32 %31, ptr %8, align 4, !dbg !128
  call void @llvm.dbg.declare(metadata ptr %9, metadata !133, metadata !DIExpression()), !dbg !134
  %32 = load i32, ptr %5, align 4, !dbg !135
  %33 = load i32, ptr %5, align 4, !dbg !136
  %34 = icmp ugt i32 %33, 2, !dbg !137
  %35 = zext i1 %34 to i64, !dbg !136
  %36 = select i1 %34, i32 -3, i32 9, !dbg !136
  %37 = add i32 %32, %36, !dbg !138
  %38 = mul i32 153, %37, !dbg !139
  %39 = add i32 %38, 2, !dbg !140
  %40 = udiv i32 %39, 5, !dbg !141
  %41 = load i32, ptr %6, align 4, !dbg !142
  %42 = add i32 %40, %41, !dbg !143
  store i32 %42, ptr %9, align 4, !dbg !134
  call void @llvm.dbg.declare(metadata ptr %10, metadata !144, metadata !DIExpression()), !dbg !145
  %43 = load i32, ptr %8, align 4, !dbg !146
  %44 = mul i32 %43, 365, !dbg !147
  %45 = load i32, ptr %8, align 4, !dbg !148
  %46 = udiv i32 %45, 4, !dbg !149
  %47 = add i32 %44, %46, !dbg !150
  %48 = load i32, ptr %8, align 4, !dbg !151
  %49 = udiv i32 %48, 100, !dbg !152
  %50 = sub i32 %47, %49, !dbg !153
  %51 = load i32, ptr %9, align 4, !dbg !154
  %52 = add i32 %50, %51, !dbg !155
  store i32 %52, ptr %10, align 4, !dbg !145
  %53 = load i64, ptr %7, align 8, !dbg !156
  %54 = mul nsw i64 %53, 146097, !dbg !157
  %55 = load i32, ptr %10, align 4, !dbg !158
  %56 = zext i32 %55 to i64, !dbg !159
  %57 = add nsw i64 %54, %56, !dbg !160
  %58 = sub nsw i64 %57, 719468, !dbg !161
  ret i64 %58, !dbg !162
}

; Function Attrs: noinline nounwind optnone
define hidden i32 @timeutil_timegm(ptr noundef %0) #0 !dbg !163 {
  %2 = alloca ptr, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !166, metadata !DIExpression()), !dbg !167
  call void @llvm.dbg.declare(metadata ptr %3, metadata !168, metadata !DIExpression()), !dbg !169
  %5 = load ptr, ptr %2, align 4, !dbg !170
  %6 = call i64 @timeutil_timegm64(ptr noundef %5), !dbg !171
  store i64 %6, ptr %3, align 8, !dbg !169
  call void @llvm.dbg.declare(metadata ptr %4, metadata !172, metadata !DIExpression()), !dbg !173
  %7 = load i64, ptr %3, align 8, !dbg !174
  %8 = trunc i64 %7 to i32, !dbg !175
  store i32 %8, ptr %4, align 4, !dbg !173
  %9 = call ptr @__aeabi_errno_addr() #4, !dbg !176
  store volatile i32 0, ptr %9, align 4, !dbg !177
  %10 = load i64, ptr %3, align 8, !dbg !178
  %11 = icmp slt i64 %10, -2147483648, !dbg !180
  br i1 %11, label %15, label %12, !dbg !181

12:                                               ; preds = %1
  %13 = load i64, ptr %3, align 8, !dbg !182
  %14 = icmp sgt i64 %13, 2147483647, !dbg !183
  br i1 %14, label %15, label %18, !dbg !184

15:                                               ; preds = %12, %1
  %16 = load i32, ptr @__aeabi_ERANGE, align 4, !dbg !185
  %17 = call ptr @__aeabi_errno_addr() #4, !dbg !187
  store volatile i32 %16, ptr %17, align 4, !dbg !188
  store i32 -1, ptr %4, align 4, !dbg !189
  br label %18, !dbg !190

18:                                               ; preds = %15, %12
  %19 = load i32, ptr %4, align 4, !dbg !191
  ret i32 %19, !dbg !192
}

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__aeabi_errno_addr() #2

; Function Attrs: noinline nounwind optnone
define hidden i32 @timeutil_sync_state_update(ptr noundef %0, ptr noundef %1) #0 !dbg !193 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.timeutil_sync_instant, align 8
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !220, metadata !DIExpression()), !dbg !221
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !222, metadata !DIExpression()), !dbg !223
  call void @llvm.dbg.declare(metadata ptr %5, metadata !224, metadata !DIExpression()), !dbg !225
  store i32 -5, ptr %5, align 4, !dbg !225
  %7 = load ptr, ptr %3, align 4, !dbg !226
  %8 = getelementptr inbounds %struct.timeutil_sync_state, ptr %7, i32 0, i32 1, !dbg !228
  %9 = getelementptr inbounds %struct.timeutil_sync_instant, ptr %8, i32 0, i32 0, !dbg !229
  %10 = load i64, ptr %9, align 8, !dbg !229
  %11 = icmp eq i64 %10, 0, !dbg !230
  br i1 %11, label %12, label %17, !dbg !231

12:                                               ; preds = %2
  %13 = load ptr, ptr %4, align 4, !dbg !232
  %14 = getelementptr inbounds %struct.timeutil_sync_instant, ptr %13, i32 0, i32 0, !dbg !233
  %15 = load i64, ptr %14, align 8, !dbg !233
  %16 = icmp ugt i64 %15, 0, !dbg !234
  br i1 %16, label %35, label %17, !dbg !235

17:                                               ; preds = %12, %2
  %18 = load ptr, ptr %4, align 4, !dbg !236
  %19 = getelementptr inbounds %struct.timeutil_sync_instant, ptr %18, i32 0, i32 0, !dbg !237
  %20 = load i64, ptr %19, align 8, !dbg !237
  %21 = load ptr, ptr %3, align 4, !dbg !238
  %22 = getelementptr inbounds %struct.timeutil_sync_state, ptr %21, i32 0, i32 1, !dbg !239
  %23 = getelementptr inbounds %struct.timeutil_sync_instant, ptr %22, i32 0, i32 0, !dbg !240
  %24 = load i64, ptr %23, align 8, !dbg !240
  %25 = icmp ugt i64 %20, %24, !dbg !241
  br i1 %25, label %26, label %56, !dbg !242

26:                                               ; preds = %17
  %27 = load ptr, ptr %4, align 4, !dbg !243
  %28 = getelementptr inbounds %struct.timeutil_sync_instant, ptr %27, i32 0, i32 1, !dbg !244
  %29 = load i64, ptr %28, align 8, !dbg !244
  %30 = load ptr, ptr %3, align 4, !dbg !245
  %31 = getelementptr inbounds %struct.timeutil_sync_state, ptr %30, i32 0, i32 1, !dbg !246
  %32 = getelementptr inbounds %struct.timeutil_sync_instant, ptr %31, i32 0, i32 1, !dbg !247
  %33 = load i64, ptr %32, align 8, !dbg !247
  %34 = icmp ugt i64 %29, %33, !dbg !248
  br i1 %34, label %35, label %56, !dbg !249

35:                                               ; preds = %26, %12
  %36 = load ptr, ptr %3, align 4, !dbg !250
  %37 = getelementptr inbounds %struct.timeutil_sync_state, ptr %36, i32 0, i32 1, !dbg !253
  %38 = getelementptr inbounds %struct.timeutil_sync_instant, ptr %37, i32 0, i32 0, !dbg !254
  %39 = load i64, ptr %38, align 8, !dbg !254
  %40 = icmp eq i64 %39, 0, !dbg !255
  br i1 %40, label %41, label %51, !dbg !256

41:                                               ; preds = %35
  %42 = load ptr, ptr %3, align 4, !dbg !257
  %43 = getelementptr inbounds %struct.timeutil_sync_state, ptr %42, i32 0, i32 1, !dbg !259
  %44 = load ptr, ptr %4, align 4, !dbg !260
  call void @llvm.memcpy.p0.p0.i32(ptr align 8 %43, ptr align 8 %44, i32 16, i1 false), !dbg !261
  %45 = load ptr, ptr %3, align 4, !dbg !262
  %46 = getelementptr inbounds %struct.timeutil_sync_state, ptr %45, i32 0, i32 2, !dbg !263
  %47 = getelementptr inbounds %struct.timeutil_sync_instant, ptr %6, i32 0, i32 0, !dbg !264
  store i64 0, ptr %47, align 8, !dbg !264
  %48 = getelementptr inbounds %struct.timeutil_sync_instant, ptr %6, i32 0, i32 1, !dbg !264
  store i64 0, ptr %48, align 8, !dbg !264
  call void @llvm.memcpy.p0.p0.i32(ptr align 8 %46, ptr align 8 %6, i32 16, i1 false), !dbg !265
  %49 = load ptr, ptr %3, align 4, !dbg !266
  %50 = getelementptr inbounds %struct.timeutil_sync_state, ptr %49, i32 0, i32 3, !dbg !267
  store float 1.000000e+00, ptr %50, align 8, !dbg !268
  store i32 0, ptr %5, align 4, !dbg !269
  br label %55, !dbg !270

51:                                               ; preds = %35
  %52 = load ptr, ptr %3, align 4, !dbg !271
  %53 = getelementptr inbounds %struct.timeutil_sync_state, ptr %52, i32 0, i32 2, !dbg !273
  %54 = load ptr, ptr %4, align 4, !dbg !274
  call void @llvm.memcpy.p0.p0.i32(ptr align 8 %53, ptr align 8 %54, i32 16, i1 false), !dbg !275
  store i32 1, ptr %5, align 4, !dbg !276
  br label %55

55:                                               ; preds = %51, %41
  br label %56, !dbg !277

56:                                               ; preds = %55, %26, %17
  %57 = load i32, ptr %5, align 4, !dbg !278
  ret i32 %57, !dbg !279
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: noinline nounwind optnone
define hidden i32 @timeutil_sync_state_set_skew(ptr noundef %0, float noundef %1, ptr noundef %2) #0 !dbg !280 {
  %4 = alloca ptr, align 4
  %5 = alloca float, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.timeutil_sync_instant, align 8
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !283, metadata !DIExpression()), !dbg !284
  store float %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !285, metadata !DIExpression()), !dbg !286
  store ptr %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !287, metadata !DIExpression()), !dbg !288
  call void @llvm.dbg.declare(metadata ptr %7, metadata !289, metadata !DIExpression()), !dbg !290
  store i32 -5, ptr %7, align 4, !dbg !290
  %9 = load float, ptr %5, align 4, !dbg !291
  %10 = fcmp nnan ninf nsz ogt float %9, 0.000000e+00, !dbg !293
  br i1 %10, label %11, label %26, !dbg !294

11:                                               ; preds = %3
  %12 = load float, ptr %5, align 4, !dbg !295
  %13 = load ptr, ptr %4, align 4, !dbg !297
  %14 = getelementptr inbounds %struct.timeutil_sync_state, ptr %13, i32 0, i32 3, !dbg !298
  store float %12, ptr %14, align 8, !dbg !299
  %15 = load ptr, ptr %6, align 4, !dbg !300
  %16 = icmp ne ptr %15, null, !dbg !302
  br i1 %16, label %17, label %25, !dbg !303

17:                                               ; preds = %11
  %18 = load ptr, ptr %4, align 4, !dbg !304
  %19 = getelementptr inbounds %struct.timeutil_sync_state, ptr %18, i32 0, i32 1, !dbg !306
  %20 = load ptr, ptr %6, align 4, !dbg !307
  call void @llvm.memcpy.p0.p0.i32(ptr align 8 %19, ptr align 8 %20, i32 16, i1 false), !dbg !308
  %21 = load ptr, ptr %4, align 4, !dbg !309
  %22 = getelementptr inbounds %struct.timeutil_sync_state, ptr %21, i32 0, i32 2, !dbg !310
  %23 = getelementptr inbounds %struct.timeutil_sync_instant, ptr %8, i32 0, i32 0, !dbg !311
  store i64 0, ptr %23, align 8, !dbg !311
  %24 = getelementptr inbounds %struct.timeutil_sync_instant, ptr %8, i32 0, i32 1, !dbg !311
  store i64 0, ptr %24, align 8, !dbg !311
  call void @llvm.memcpy.p0.p0.i32(ptr align 8 %22, ptr align 8 %8, i32 16, i1 false), !dbg !312
  br label %25, !dbg !313

25:                                               ; preds = %17, %11
  store i32 0, ptr %7, align 4, !dbg !314
  br label %26, !dbg !315

26:                                               ; preds = %25, %3
  %27 = load i32, ptr %7, align 4, !dbg !316
  ret i32 %27, !dbg !317
}

; Function Attrs: noinline nounwind optnone
define hidden float @timeutil_sync_estimate_skew(ptr noundef %0) #0 !dbg !318 {
  %2 = alloca ptr, align 4
  %3 = alloca float, align 4
  %4 = alloca ptr, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !323, metadata !DIExpression()), !dbg !324
  call void @llvm.dbg.declare(metadata ptr %3, metadata !325, metadata !DIExpression()), !dbg !326
  store float 0.000000e+00, ptr %3, align 4, !dbg !326
  %7 = load ptr, ptr %2, align 4, !dbg !327
  %8 = getelementptr inbounds %struct.timeutil_sync_state, ptr %7, i32 0, i32 1, !dbg !329
  %9 = getelementptr inbounds %struct.timeutil_sync_instant, ptr %8, i32 0, i32 0, !dbg !330
  %10 = load i64, ptr %9, align 8, !dbg !330
  %11 = icmp ne i64 %10, 0, !dbg !331
  br i1 %11, label %12, label %66, !dbg !332

12:                                               ; preds = %1
  %13 = load ptr, ptr %2, align 4, !dbg !333
  %14 = getelementptr inbounds %struct.timeutil_sync_state, ptr %13, i32 0, i32 2, !dbg !334
  %15 = getelementptr inbounds %struct.timeutil_sync_instant, ptr %14, i32 0, i32 0, !dbg !335
  %16 = load i64, ptr %15, align 8, !dbg !335
  %17 = icmp ne i64 %16, 0, !dbg !336
  br i1 %17, label %18, label %66, !dbg !337

18:                                               ; preds = %12
  %19 = load ptr, ptr %2, align 4, !dbg !338
  %20 = getelementptr inbounds %struct.timeutil_sync_state, ptr %19, i32 0, i32 2, !dbg !339
  %21 = getelementptr inbounds %struct.timeutil_sync_instant, ptr %20, i32 0, i32 1, !dbg !340
  %22 = load i64, ptr %21, align 8, !dbg !340
  %23 = load ptr, ptr %2, align 4, !dbg !341
  %24 = getelementptr inbounds %struct.timeutil_sync_state, ptr %23, i32 0, i32 1, !dbg !342
  %25 = getelementptr inbounds %struct.timeutil_sync_instant, ptr %24, i32 0, i32 1, !dbg !343
  %26 = load i64, ptr %25, align 8, !dbg !343
  %27 = icmp ugt i64 %22, %26, !dbg !344
  br i1 %27, label %28, label %66, !dbg !345

28:                                               ; preds = %18
  call void @llvm.dbg.declare(metadata ptr %4, metadata !346, metadata !DIExpression()), !dbg !348
  %29 = load ptr, ptr %2, align 4, !dbg !349
  %30 = getelementptr inbounds %struct.timeutil_sync_state, ptr %29, i32 0, i32 0, !dbg !350
  %31 = load ptr, ptr %30, align 8, !dbg !350
  store ptr %31, ptr %4, align 4, !dbg !348
  call void @llvm.dbg.declare(metadata ptr %5, metadata !351, metadata !DIExpression()), !dbg !352
  %32 = load ptr, ptr %2, align 4, !dbg !353
  %33 = getelementptr inbounds %struct.timeutil_sync_state, ptr %32, i32 0, i32 2, !dbg !354
  %34 = getelementptr inbounds %struct.timeutil_sync_instant, ptr %33, i32 0, i32 0, !dbg !355
  %35 = load i64, ptr %34, align 8, !dbg !355
  %36 = load ptr, ptr %2, align 4, !dbg !356
  %37 = getelementptr inbounds %struct.timeutil_sync_state, ptr %36, i32 0, i32 1, !dbg !357
  %38 = getelementptr inbounds %struct.timeutil_sync_instant, ptr %37, i32 0, i32 0, !dbg !358
  %39 = load i64, ptr %38, align 8, !dbg !358
  %40 = sub i64 %35, %39, !dbg !359
  %41 = uitofp i64 %40 to double, !dbg !353
  store double %41, ptr %5, align 8, !dbg !352
  call void @llvm.dbg.declare(metadata ptr %6, metadata !360, metadata !DIExpression()), !dbg !361
  %42 = load ptr, ptr %2, align 4, !dbg !362
  %43 = getelementptr inbounds %struct.timeutil_sync_state, ptr %42, i32 0, i32 2, !dbg !363
  %44 = getelementptr inbounds %struct.timeutil_sync_instant, ptr %43, i32 0, i32 1, !dbg !364
  %45 = load i64, ptr %44, align 8, !dbg !364
  %46 = load ptr, ptr %2, align 4, !dbg !365
  %47 = getelementptr inbounds %struct.timeutil_sync_state, ptr %46, i32 0, i32 1, !dbg !366
  %48 = getelementptr inbounds %struct.timeutil_sync_instant, ptr %47, i32 0, i32 1, !dbg !367
  %49 = load i64, ptr %48, align 8, !dbg !367
  %50 = sub i64 %45, %49, !dbg !368
  %51 = uitofp i64 %50 to double, !dbg !362
  store double %51, ptr %6, align 8, !dbg !361
  %52 = load double, ptr %5, align 8, !dbg !369
  %53 = load ptr, ptr %4, align 4, !dbg !370
  %54 = getelementptr inbounds %struct.timeutil_sync_config, ptr %53, i32 0, i32 1, !dbg !371
  %55 = load i32, ptr %54, align 4, !dbg !371
  %56 = uitofp i32 %55 to double, !dbg !370
  %57 = fmul nnan ninf nsz double %52, %56, !dbg !372
  %58 = load double, ptr %6, align 8, !dbg !373
  %59 = fdiv nnan ninf nsz double %57, %58, !dbg !374
  %60 = load ptr, ptr %4, align 4, !dbg !375
  %61 = getelementptr inbounds %struct.timeutil_sync_config, ptr %60, i32 0, i32 0, !dbg !376
  %62 = load i32, ptr %61, align 4, !dbg !376
  %63 = uitofp i32 %62 to double, !dbg !375
  %64 = fdiv nnan ninf nsz double %59, %63, !dbg !377
  %65 = fptrunc double %64 to float, !dbg !369
  store float %65, ptr %3, align 4, !dbg !378
  br label %66, !dbg !379

66:                                               ; preds = %28, %18, %12, %1
  %67 = load float, ptr %3, align 4, !dbg !380
  ret float %67, !dbg !381
}

; Function Attrs: noinline nounwind optnone
define hidden i32 @timeutil_sync_ref_from_local(ptr noundef %0, i64 noundef %1, ptr noundef %2) #0 !dbg !382 {
  %4 = alloca ptr, align 4
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !386, metadata !DIExpression()), !dbg !387
  store i64 %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !388, metadata !DIExpression()), !dbg !389
  store ptr %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !390, metadata !DIExpression()), !dbg !391
  call void @llvm.dbg.declare(metadata ptr %7, metadata !392, metadata !DIExpression()), !dbg !393
  store i32 -5, ptr %7, align 4, !dbg !393
  %12 = load ptr, ptr %4, align 4, !dbg !394
  %13 = getelementptr inbounds %struct.timeutil_sync_state, ptr %12, i32 0, i32 3, !dbg !396
  %14 = load float, ptr %13, align 8, !dbg !396
  %15 = fcmp nnan ninf nsz ogt float %14, 0.000000e+00, !dbg !397
  br i1 %15, label %16, label %80, !dbg !398

16:                                               ; preds = %3
  %17 = load ptr, ptr %4, align 4, !dbg !399
  %18 = getelementptr inbounds %struct.timeutil_sync_state, ptr %17, i32 0, i32 1, !dbg !400
  %19 = getelementptr inbounds %struct.timeutil_sync_instant, ptr %18, i32 0, i32 0, !dbg !401
  %20 = load i64, ptr %19, align 8, !dbg !401
  %21 = icmp ugt i64 %20, 0, !dbg !402
  br i1 %21, label %22, label %80, !dbg !403

22:                                               ; preds = %16
  %23 = load ptr, ptr %6, align 4, !dbg !404
  %24 = icmp ne ptr %23, null, !dbg !405
  br i1 %24, label %25, label %80, !dbg !406

25:                                               ; preds = %22
  call void @llvm.dbg.declare(metadata ptr %8, metadata !407, metadata !DIExpression()), !dbg !409
  %26 = load ptr, ptr %4, align 4, !dbg !410
  %27 = getelementptr inbounds %struct.timeutil_sync_state, ptr %26, i32 0, i32 0, !dbg !411
  %28 = load ptr, ptr %27, align 8, !dbg !411
  store ptr %28, ptr %8, align 4, !dbg !409
  call void @llvm.dbg.declare(metadata ptr %9, metadata !412, metadata !DIExpression()), !dbg !413
  %29 = load i64, ptr %5, align 8, !dbg !414
  %30 = load ptr, ptr %4, align 4, !dbg !415
  %31 = getelementptr inbounds %struct.timeutil_sync_state, ptr %30, i32 0, i32 1, !dbg !416
  %32 = getelementptr inbounds %struct.timeutil_sync_instant, ptr %31, i32 0, i32 1, !dbg !417
  %33 = load i64, ptr %32, align 8, !dbg !417
  %34 = sub i64 %29, %33, !dbg !418
  store i64 %34, ptr %9, align 8, !dbg !413
  %35 = load ptr, ptr %4, align 4, !dbg !419
  %36 = getelementptr inbounds %struct.timeutil_sync_state, ptr %35, i32 0, i32 3, !dbg !421
  %37 = load float, ptr %36, align 8, !dbg !421
  %38 = fcmp nnan ninf nsz une float %37, 1.000000e+00, !dbg !422
  br i1 %38, label %39, label %48, !dbg !423

39:                                               ; preds = %25
  %40 = load ptr, ptr %4, align 4, !dbg !424
  %41 = getelementptr inbounds %struct.timeutil_sync_state, ptr %40, i32 0, i32 3, !dbg !426
  %42 = load float, ptr %41, align 8, !dbg !426
  %43 = fpext float %42 to double, !dbg !427
  %44 = load i64, ptr %9, align 8, !dbg !428
  %45 = sitofp i64 %44 to double, !dbg !428
  %46 = fmul nnan ninf nsz double %45, %43, !dbg !428
  %47 = fptosi double %46 to i64, !dbg !428
  store i64 %47, ptr %9, align 8, !dbg !428
  br label %48, !dbg !429

48:                                               ; preds = %39, %25
  call void @llvm.dbg.declare(metadata ptr %10, metadata !430, metadata !DIExpression()), !dbg !431
  %49 = load i64, ptr %9, align 8, !dbg !432
  %50 = load ptr, ptr %8, align 4, !dbg !433
  %51 = getelementptr inbounds %struct.timeutil_sync_config, ptr %50, i32 0, i32 0, !dbg !434
  %52 = load i32, ptr %51, align 4, !dbg !434
  %53 = zext i32 %52 to i64, !dbg !433
  %54 = mul nsw i64 %49, %53, !dbg !435
  %55 = load ptr, ptr %8, align 4, !dbg !436
  %56 = getelementptr inbounds %struct.timeutil_sync_config, ptr %55, i32 0, i32 1, !dbg !437
  %57 = load i32, ptr %56, align 4, !dbg !437
  %58 = zext i32 %57 to i64, !dbg !436
  %59 = sdiv i64 %54, %58, !dbg !438
  store i64 %59, ptr %10, align 8, !dbg !431
  call void @llvm.dbg.declare(metadata ptr %11, metadata !439, metadata !DIExpression()), !dbg !440
  %60 = load ptr, ptr %4, align 4, !dbg !441
  %61 = getelementptr inbounds %struct.timeutil_sync_state, ptr %60, i32 0, i32 1, !dbg !442
  %62 = getelementptr inbounds %struct.timeutil_sync_instant, ptr %61, i32 0, i32 0, !dbg !443
  %63 = load i64, ptr %62, align 8, !dbg !443
  %64 = load i64, ptr %10, align 8, !dbg !444
  %65 = add nsw i64 %63, %64, !dbg !445
  store i64 %65, ptr %11, align 8, !dbg !440
  %66 = load i64, ptr %11, align 8, !dbg !446
  %67 = icmp slt i64 %66, 0, !dbg !448
  br i1 %67, label %68, label %71, !dbg !449

68:                                               ; preds = %48
  %69 = load i32, ptr @__aeabi_ERANGE, align 4, !dbg !450
  %70 = sub nsw i32 0, %69, !dbg !452
  store i32 %70, ptr %7, align 4, !dbg !453
  br label %79, !dbg !454

71:                                               ; preds = %48
  %72 = load i64, ptr %11, align 8, !dbg !455
  %73 = load ptr, ptr %6, align 4, !dbg !457
  store i64 %72, ptr %73, align 8, !dbg !458
  %74 = load ptr, ptr %4, align 4, !dbg !459
  %75 = getelementptr inbounds %struct.timeutil_sync_state, ptr %74, i32 0, i32 3, !dbg !460
  %76 = load float, ptr %75, align 8, !dbg !460
  %77 = fcmp nnan ninf nsz une float %76, 1.000000e+00, !dbg !461
  %78 = zext i1 %77 to i32, !dbg !461
  store i32 %78, ptr %7, align 4, !dbg !462
  br label %79

79:                                               ; preds = %71, %68
  br label %80, !dbg !463

80:                                               ; preds = %79, %22, %16, %3
  %81 = load i32, ptr %7, align 4, !dbg !464
  ret i32 %81, !dbg !465
}

; Function Attrs: noinline nounwind optnone
define hidden i32 @timeutil_sync_local_from_ref(ptr noundef %0, i64 noundef %1, ptr noundef %2) #0 !dbg !466 {
  %4 = alloca ptr, align 4
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !470, metadata !DIExpression()), !dbg !471
  store i64 %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !472, metadata !DIExpression()), !dbg !473
  store ptr %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !474, metadata !DIExpression()), !dbg !475
  call void @llvm.dbg.declare(metadata ptr %7, metadata !476, metadata !DIExpression()), !dbg !477
  store i32 -5, ptr %7, align 4, !dbg !477
  %12 = load ptr, ptr %4, align 4, !dbg !478
  %13 = getelementptr inbounds %struct.timeutil_sync_state, ptr %12, i32 0, i32 3, !dbg !480
  %14 = load float, ptr %13, align 8, !dbg !480
  %15 = fcmp nnan ninf nsz ogt float %14, 0.000000e+00, !dbg !481
  br i1 %15, label %16, label %73, !dbg !482

16:                                               ; preds = %3
  %17 = load ptr, ptr %4, align 4, !dbg !483
  %18 = getelementptr inbounds %struct.timeutil_sync_state, ptr %17, i32 0, i32 1, !dbg !484
  %19 = getelementptr inbounds %struct.timeutil_sync_instant, ptr %18, i32 0, i32 0, !dbg !485
  %20 = load i64, ptr %19, align 8, !dbg !485
  %21 = icmp ugt i64 %20, 0, !dbg !486
  br i1 %21, label %22, label %73, !dbg !487

22:                                               ; preds = %16
  %23 = load ptr, ptr %6, align 4, !dbg !488
  %24 = icmp ne ptr %23, null, !dbg !489
  br i1 %24, label %25, label %73, !dbg !490

25:                                               ; preds = %22
  call void @llvm.dbg.declare(metadata ptr %8, metadata !491, metadata !DIExpression()), !dbg !493
  %26 = load ptr, ptr %4, align 4, !dbg !494
  %27 = getelementptr inbounds %struct.timeutil_sync_state, ptr %26, i32 0, i32 0, !dbg !495
  %28 = load ptr, ptr %27, align 8, !dbg !495
  store ptr %28, ptr %8, align 4, !dbg !493
  call void @llvm.dbg.declare(metadata ptr %9, metadata !496, metadata !DIExpression()), !dbg !497
  %29 = load i64, ptr %5, align 8, !dbg !498
  %30 = load ptr, ptr %4, align 4, !dbg !499
  %31 = getelementptr inbounds %struct.timeutil_sync_state, ptr %30, i32 0, i32 1, !dbg !500
  %32 = getelementptr inbounds %struct.timeutil_sync_instant, ptr %31, i32 0, i32 0, !dbg !501
  %33 = load i64, ptr %32, align 8, !dbg !501
  %34 = sub i64 %29, %33, !dbg !502
  store i64 %34, ptr %9, align 8, !dbg !497
  call void @llvm.dbg.declare(metadata ptr %10, metadata !503, metadata !DIExpression()), !dbg !504
  %35 = load i64, ptr %9, align 8, !dbg !505
  %36 = load ptr, ptr %8, align 4, !dbg !506
  %37 = getelementptr inbounds %struct.timeutil_sync_config, ptr %36, i32 0, i32 1, !dbg !507
  %38 = load i32, ptr %37, align 4, !dbg !507
  %39 = zext i32 %38 to i64, !dbg !506
  %40 = mul nsw i64 %35, %39, !dbg !508
  %41 = load ptr, ptr %8, align 4, !dbg !509
  %42 = getelementptr inbounds %struct.timeutil_sync_config, ptr %41, i32 0, i32 0, !dbg !510
  %43 = load i32, ptr %42, align 4, !dbg !510
  %44 = zext i32 %43 to i64, !dbg !509
  %45 = sdiv i64 %40, %44, !dbg !511
  store i64 %45, ptr %10, align 8, !dbg !504
  %46 = load ptr, ptr %4, align 4, !dbg !512
  %47 = getelementptr inbounds %struct.timeutil_sync_state, ptr %46, i32 0, i32 3, !dbg !514
  %48 = load float, ptr %47, align 8, !dbg !514
  %49 = fcmp nnan ninf nsz une float %48, 1.000000e+00, !dbg !515
  br i1 %49, label %50, label %59, !dbg !516

50:                                               ; preds = %25
  %51 = load ptr, ptr %4, align 4, !dbg !517
  %52 = getelementptr inbounds %struct.timeutil_sync_state, ptr %51, i32 0, i32 3, !dbg !519
  %53 = load float, ptr %52, align 8, !dbg !519
  %54 = fpext float %53 to double, !dbg !520
  %55 = load i64, ptr %10, align 8, !dbg !521
  %56 = sitofp i64 %55 to double, !dbg !521
  %57 = fdiv nnan ninf nsz double %56, %54, !dbg !521
  %58 = fptosi double %57 to i64, !dbg !521
  store i64 %58, ptr %10, align 8, !dbg !521
  br label %59, !dbg !522

59:                                               ; preds = %50, %25
  call void @llvm.dbg.declare(metadata ptr %11, metadata !523, metadata !DIExpression()), !dbg !524
  %60 = load ptr, ptr %4, align 4, !dbg !525
  %61 = getelementptr inbounds %struct.timeutil_sync_state, ptr %60, i32 0, i32 1, !dbg !526
  %62 = getelementptr inbounds %struct.timeutil_sync_instant, ptr %61, i32 0, i32 1, !dbg !527
  %63 = load i64, ptr %62, align 8, !dbg !527
  %64 = load i64, ptr %10, align 8, !dbg !528
  %65 = add nsw i64 %63, %64, !dbg !529
  store i64 %65, ptr %11, align 8, !dbg !524
  %66 = load i64, ptr %11, align 8, !dbg !530
  %67 = load ptr, ptr %6, align 4, !dbg !531
  store i64 %66, ptr %67, align 8, !dbg !532
  %68 = load ptr, ptr %4, align 4, !dbg !533
  %69 = getelementptr inbounds %struct.timeutil_sync_state, ptr %68, i32 0, i32 3, !dbg !534
  %70 = load float, ptr %69, align 8, !dbg !534
  %71 = fcmp nnan ninf nsz une float %70, 1.000000e+00, !dbg !535
  %72 = zext i1 %71 to i32, !dbg !535
  store i32 %72, ptr %7, align 4, !dbg !536
  br label %73, !dbg !537

73:                                               ; preds = %59, %22, %16, %3
  %74 = load i32, ptr %7, align 4, !dbg !538
  ret i32 %74, !dbg !539
}

; Function Attrs: noinline nounwind optnone
define hidden i32 @timeutil_sync_skew_to_ppb(float noundef %0) #0 !dbg !540 {
  %2 = alloca float, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store float %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !543, metadata !DIExpression()), !dbg !544
  call void @llvm.dbg.declare(metadata ptr %3, metadata !545, metadata !DIExpression()), !dbg !546
  %5 = load float, ptr %2, align 4, !dbg !547
  %6 = fpext float %5 to double, !dbg !548
  %7 = fsub nnan ninf nsz double 1.000000e+00, %6, !dbg !549
  %8 = fmul nnan ninf nsz double %7, 1.000000e+09, !dbg !550
  %9 = fptosi double %8 to i64, !dbg !551
  store i64 %9, ptr %3, align 8, !dbg !546
  call void @llvm.dbg.declare(metadata ptr %4, metadata !552, metadata !DIExpression()), !dbg !553
  %10 = load i64, ptr %3, align 8, !dbg !554
  %11 = trunc i64 %10 to i32, !dbg !555
  store i32 %11, ptr %4, align 4, !dbg !553
  %12 = load i64, ptr %3, align 8, !dbg !556
  %13 = load i32, ptr %4, align 4, !dbg !557
  %14 = sext i32 %13 to i64, !dbg !557
  %15 = icmp eq i64 %12, %14, !dbg !558
  br i1 %15, label %16, label %18, !dbg !559

16:                                               ; preds = %1
  %17 = load i32, ptr %4, align 4, !dbg !560
  br label %19, !dbg !559

18:                                               ; preds = %1
  br label %19, !dbg !559

19:                                               ; preds = %18, %16
  %20 = phi i32 [ %17, %16 ], [ -2147483648, %18 ], !dbg !559
  ret i32 %20, !dbg !561
}

attributes #0 = { noinline nounwind optnone "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind willreturn memory(none) "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind willreturn memory(none) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "timeutil.c", directory: "/home/sri/zephyrproject/zephyr/build")
!2 = !{!3, !6, !9, !10, !11}
!3 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !4, line: 59, baseType: !5)
!4 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/stdint.h", directory: "")
!5 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !7, line: 83, baseType: !8)
!7 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/time.h", directory: "")
!8 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!9 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !4, line: 58, baseType: !10)
!12 = !{i32 7, !"Dwarf Version", i32 4}
!13 = !{i32 2, !"Debug Info Version", i32 3}
!14 = !{i32 1, !"wchar_size", i32 4}
!15 = !{i32 1, !"static_rwdata", i32 1}
!16 = !{i32 1, !"enumsize_buildattr", i32 1}
!17 = !{i32 1, !"armlib_unavailable", i32 0}
!18 = !{i32 8, !"PIC Level", i32 2}
!19 = !{i32 7, !"PIE Level", i32 2}
!20 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
!21 = distinct !DISubprogram(name: "timeutil_timegm64", scope: !22, file: !22, line: 45, type: !23, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !65)
!22 = !DIFile(filename: "lib/os/timeutil.c", directory: "/home/sri/zephyrproject/zephyr")
!23 = !DISubroutineType(types: !24)
!24 = !{!3, !25}
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 32)
!26 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !7, line: 90, size: 352, elements: !28)
!28 = !{!29, !30, !31, !32, !33, !34, !35, !36, !37, !38}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "tm_sec", scope: !27, file: !7, line: 91, baseType: !10, size: 32)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "tm_min", scope: !27, file: !7, line: 93, baseType: !10, size: 32, offset: 32)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "tm_hour", scope: !27, file: !7, line: 94, baseType: !10, size: 32, offset: 64)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mday", scope: !27, file: !7, line: 95, baseType: !10, size: 32, offset: 96)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mon", scope: !27, file: !7, line: 96, baseType: !10, size: 32, offset: 128)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "tm_year", scope: !27, file: !7, line: 97, baseType: !10, size: 32, offset: 160)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "tm_wday", scope: !27, file: !7, line: 98, baseType: !10, size: 32, offset: 192)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "tm_yday", scope: !27, file: !7, line: 99, baseType: !10, size: 32, offset: 224)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "tm_isdst", scope: !27, file: !7, line: 100, baseType: !10, size: 32, offset: 256)
!38 = !DIDerivedType(tag: DW_TAG_member, scope: !27, file: !7, line: 101, baseType: !39, size: 64, offset: 288)
!39 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !27, file: !7, line: 101, size: 64, elements: !40)
!40 = !{!41, !46, !52, !59}
!41 = !DIDerivedType(tag: DW_TAG_member, scope: !39, file: !7, line: 102, baseType: !42, size: 64)
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !39, file: !7, line: 102, size: 64, elements: !43)
!43 = !{!44, !45}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "__extra_1", scope: !42, file: !7, line: 103, baseType: !10, size: 32)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "__extra_2", scope: !42, file: !7, line: 103, baseType: !10, size: 32, offset: 32)
!46 = !DIDerivedType(tag: DW_TAG_member, scope: !39, file: !7, line: 105, baseType: !47, size: 64)
!47 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !39, file: !7, line: 105, size: 64, elements: !48)
!48 = !{!49, !51}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "__extra_1_long", scope: !47, file: !7, line: 106, baseType: !50, size: 32)
!50 = !DIBasicType(name: "long", size: 32, encoding: DW_ATE_signed)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "__extra_2_long", scope: !47, file: !7, line: 106, baseType: !50, size: 32, offset: 32)
!52 = !DIDerivedType(tag: DW_TAG_member, scope: !39, file: !7, line: 108, baseType: !53, size: 64)
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !39, file: !7, line: 108, size: 64, elements: !54)
!54 = !{!55, !58}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "__extra_1_cptr", scope: !53, file: !7, line: 109, baseType: !56, size: 32)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 32)
!57 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "__extra_2_cptr", scope: !53, file: !7, line: 109, baseType: !56, size: 32, offset: 32)
!59 = !DIDerivedType(tag: DW_TAG_member, scope: !39, file: !7, line: 111, baseType: !60, size: 64)
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !39, file: !7, line: 111, size: 64, elements: !61)
!61 = !{!62, !64}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "__extra_1_vptr", scope: !60, file: !7, line: 112, baseType: !63, size: 32)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "__extra_2_vptr", scope: !60, file: !7, line: 112, baseType: !63, size: 32, offset: 32)
!65 = !{}
!66 = !DILocalVariable(name: "tm", arg: 1, scope: !21, file: !22, line: 45, type: !25)
!67 = !DILocation(line: 45, column: 44, scope: !21)
!68 = !DILocalVariable(name: "y", scope: !21, file: !22, line: 47, type: !3)
!69 = !DILocation(line: 47, column: 10, scope: !21)
!70 = !DILocation(line: 47, column: 30, scope: !21)
!71 = !DILocation(line: 47, column: 34, scope: !21)
!72 = !DILocation(line: 47, column: 21, scope: !21)
!73 = !DILocation(line: 47, column: 19, scope: !21)
!74 = !DILocalVariable(name: "m", scope: !21, file: !22, line: 48, type: !8)
!75 = !DILocation(line: 48, column: 15, scope: !21)
!76 = !DILocation(line: 48, column: 19, scope: !21)
!77 = !DILocation(line: 48, column: 23, scope: !21)
!78 = !DILocation(line: 48, column: 30, scope: !21)
!79 = !DILocalVariable(name: "d", scope: !21, file: !22, line: 49, type: !8)
!80 = !DILocation(line: 49, column: 15, scope: !21)
!81 = !DILocation(line: 49, column: 19, scope: !21)
!82 = !DILocation(line: 49, column: 23, scope: !21)
!83 = !DILocation(line: 49, column: 31, scope: !21)
!84 = !DILocalVariable(name: "ndays", scope: !21, file: !22, line: 50, type: !3)
!85 = !DILocation(line: 50, column: 10, scope: !21)
!86 = !DILocation(line: 50, column: 39, scope: !21)
!87 = !DILocation(line: 50, column: 42, scope: !21)
!88 = !DILocation(line: 50, column: 45, scope: !21)
!89 = !DILocation(line: 50, column: 18, scope: !21)
!90 = !DILocalVariable(name: "time", scope: !21, file: !22, line: 51, type: !3)
!91 = !DILocation(line: 51, column: 10, scope: !21)
!92 = !DILocation(line: 51, column: 17, scope: !21)
!93 = !DILocation(line: 51, column: 21, scope: !21)
!94 = !DILocation(line: 53, column: 18, scope: !21)
!95 = !DILocation(line: 53, column: 22, scope: !21)
!96 = !DILocation(line: 53, column: 38, scope: !21)
!97 = !DILocation(line: 53, column: 42, scope: !21)
!98 = !DILocation(line: 53, column: 36, scope: !21)
!99 = !DILocation(line: 53, column: 29, scope: !21)
!100 = !DILocation(line: 53, column: 15, scope: !21)
!101 = !DILocation(line: 53, column: 7, scope: !21)
!102 = !DILocation(line: 54, column: 20, scope: !21)
!103 = !DILocation(line: 54, column: 18, scope: !21)
!104 = !DILocation(line: 54, column: 7, scope: !21)
!105 = !DILocation(line: 56, column: 9, scope: !21)
!106 = !DILocation(line: 56, column: 2, scope: !21)
!107 = distinct !DISubprogram(name: "time_days_from_civil", scope: !22, file: !22, line: 31, type: !108, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !65)
!108 = !DISubroutineType(types: !109)
!109 = !{!3, !3, !8, !8}
!110 = !DILocalVariable(name: "y", arg: 1, scope: !107, file: !22, line: 31, type: !3)
!111 = !DILocation(line: 31, column: 45, scope: !107)
!112 = !DILocalVariable(name: "m", arg: 2, scope: !107, file: !22, line: 32, type: !8)
!113 = !DILocation(line: 32, column: 22, scope: !107)
!114 = !DILocalVariable(name: "d", arg: 3, scope: !107, file: !22, line: 33, type: !8)
!115 = !DILocation(line: 33, column: 22, scope: !107)
!116 = !DILocation(line: 35, column: 7, scope: !107)
!117 = !DILocation(line: 35, column: 9, scope: !107)
!118 = !DILocation(line: 35, column: 4, scope: !107)
!119 = !DILocalVariable(name: "era", scope: !107, file: !22, line: 37, type: !3)
!120 = !DILocation(line: 37, column: 10, scope: !107)
!121 = !DILocation(line: 37, column: 17, scope: !107)
!122 = !DILocation(line: 37, column: 19, scope: !107)
!123 = !DILocation(line: 37, column: 26, scope: !107)
!124 = !DILocation(line: 37, column: 30, scope: !107)
!125 = !DILocation(line: 37, column: 32, scope: !107)
!126 = !DILocation(line: 37, column: 39, scope: !107)
!127 = !DILocalVariable(name: "yoe", scope: !107, file: !22, line: 38, type: !8)
!128 = !DILocation(line: 38, column: 15, scope: !107)
!129 = !DILocation(line: 38, column: 21, scope: !107)
!130 = !DILocation(line: 38, column: 25, scope: !107)
!131 = !DILocation(line: 38, column: 29, scope: !107)
!132 = !DILocation(line: 38, column: 23, scope: !107)
!133 = !DILocalVariable(name: "doy", scope: !107, file: !22, line: 39, type: !8)
!134 = !DILocation(line: 39, column: 15, scope: !107)
!135 = !DILocation(line: 39, column: 30, scope: !107)
!136 = !DILocation(line: 39, column: 35, scope: !107)
!137 = !DILocation(line: 39, column: 37, scope: !107)
!138 = !DILocation(line: 39, column: 32, scope: !107)
!139 = !DILocation(line: 39, column: 27, scope: !107)
!140 = !DILocation(line: 39, column: 52, scope: !107)
!141 = !DILocation(line: 39, column: 58, scope: !107)
!142 = !DILocation(line: 39, column: 65, scope: !107)
!143 = !DILocation(line: 39, column: 63, scope: !107)
!144 = !DILocalVariable(name: "doe", scope: !107, file: !22, line: 40, type: !8)
!145 = !DILocation(line: 40, column: 15, scope: !107)
!146 = !DILocation(line: 40, column: 21, scope: !107)
!147 = !DILocation(line: 40, column: 25, scope: !107)
!148 = !DILocation(line: 40, column: 34, scope: !107)
!149 = !DILocation(line: 40, column: 38, scope: !107)
!150 = !DILocation(line: 40, column: 32, scope: !107)
!151 = !DILocation(line: 40, column: 45, scope: !107)
!152 = !DILocation(line: 40, column: 49, scope: !107)
!153 = !DILocation(line: 40, column: 43, scope: !107)
!154 = !DILocation(line: 40, column: 58, scope: !107)
!155 = !DILocation(line: 40, column: 56, scope: !107)
!156 = !DILocation(line: 42, column: 9, scope: !107)
!157 = !DILocation(line: 42, column: 13, scope: !107)
!158 = !DILocation(line: 42, column: 32, scope: !107)
!159 = !DILocation(line: 42, column: 24, scope: !107)
!160 = !DILocation(line: 42, column: 22, scope: !107)
!161 = !DILocation(line: 42, column: 36, scope: !107)
!162 = !DILocation(line: 42, column: 2, scope: !107)
!163 = distinct !DISubprogram(name: "timeutil_timegm", scope: !22, file: !22, line: 59, type: !164, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !65)
!164 = !DISubroutineType(types: !165)
!165 = !{!6, !25}
!166 = !DILocalVariable(name: "tm", arg: 1, scope: !163, file: !22, line: 59, type: !25)
!167 = !DILocation(line: 59, column: 41, scope: !163)
!168 = !DILocalVariable(name: "time", scope: !163, file: !22, line: 61, type: !3)
!169 = !DILocation(line: 61, column: 10, scope: !163)
!170 = !DILocation(line: 61, column: 35, scope: !163)
!171 = !DILocation(line: 61, column: 17, scope: !163)
!172 = !DILocalVariable(name: "rv", scope: !163, file: !22, line: 62, type: !6)
!173 = !DILocation(line: 62, column: 9, scope: !163)
!174 = !DILocation(line: 62, column: 22, scope: !163)
!175 = !DILocation(line: 62, column: 14, scope: !163)
!176 = !DILocation(line: 64, column: 5, scope: !163)
!177 = !DILocation(line: 64, column: 27, scope: !163)
!178 = !DILocation(line: 66, column: 11, scope: !179)
!179 = distinct !DILexicalBlock(scope: !163, file: !22, line: 65, column: 6)
!180 = !DILocation(line: 66, column: 16, scope: !179)
!181 = !DILocation(line: 67, column: 3, scope: !179)
!182 = !DILocation(line: 67, column: 7, scope: !179)
!183 = !DILocation(line: 67, column: 12, scope: !179)
!184 = !DILocation(line: 65, column: 6, scope: !163)
!185 = !DILocation(line: 68, column: 31, scope: !186)
!186 = distinct !DILexicalBlock(scope: !179, file: !22, line: 67, column: 37)
!187 = !DILocation(line: 68, column: 6, scope: !186)
!188 = !DILocation(line: 68, column: 28, scope: !186)
!189 = !DILocation(line: 69, column: 6, scope: !186)
!190 = !DILocation(line: 70, column: 2, scope: !186)
!191 = !DILocation(line: 72, column: 9, scope: !163)
!192 = !DILocation(line: 72, column: 2, scope: !163)
!193 = distinct !DISubprogram(name: "timeutil_sync_state_update", scope: !22, file: !22, line: 75, type: !194, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !65)
!194 = !DISubroutineType(types: !195)
!195 = !{!10, !196, !218}
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 32)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeutil_sync_state", file: !198, line: 139, size: 384, elements: !199)
!198 = !DIFile(filename: "include/zephyr/sys/timeutil.h", directory: "/home/sri/zephyrproject/zephyr")
!199 = !{!200, !208, !215, !216}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !197, file: !198, line: 141, baseType: !201, size: 32)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 32)
!202 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !203)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeutil_sync_config", file: !198, line: 83, size: 64, elements: !204)
!204 = !{!205, !207}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "ref_Hz", scope: !203, file: !198, line: 91, baseType: !206, size: 32)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !4, line: 64, baseType: !8)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "local_Hz", scope: !203, file: !198, line: 104, baseType: !206, size: 32, offset: 32)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !197, file: !198, line: 144, baseType: !209, size: 128, offset: 64)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeutil_sync_instant", file: !198, line: 114, size: 128, elements: !210)
!210 = !{!211, !214}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !209, file: !198, line: 120, baseType: !212, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !4, line: 65, baseType: !213)
!213 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "local", scope: !209, file: !198, line: 126, baseType: !212, size: 64, offset: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "latest", scope: !197, file: !198, line: 150, baseType: !209, size: 128, offset: 192)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "skew", scope: !197, file: !198, line: 167, baseType: !217, size: 32, offset: 320)
!217 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 32)
!219 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !209)
!220 = !DILocalVariable(name: "tsp", arg: 1, scope: !193, file: !22, line: 75, type: !196)
!221 = !DILocation(line: 75, column: 60, scope: !193)
!222 = !DILocalVariable(name: "inst", arg: 2, scope: !193, file: !22, line: 76, type: !218)
!223 = !DILocation(line: 76, column: 47, scope: !193)
!224 = !DILocalVariable(name: "rv", scope: !193, file: !22, line: 78, type: !10)
!225 = !DILocation(line: 78, column: 6, scope: !193)
!226 = !DILocation(line: 80, column: 8, scope: !227)
!227 = distinct !DILexicalBlock(scope: !193, file: !22, line: 80, column: 6)
!228 = !DILocation(line: 80, column: 13, scope: !227)
!229 = !DILocation(line: 80, column: 18, scope: !227)
!230 = !DILocation(line: 80, column: 22, scope: !227)
!231 = !DILocation(line: 80, column: 28, scope: !227)
!232 = !DILocation(line: 80, column: 32, scope: !227)
!233 = !DILocation(line: 80, column: 38, scope: !227)
!234 = !DILocation(line: 80, column: 42, scope: !227)
!235 = !DILocation(line: 81, column: 6, scope: !227)
!236 = !DILocation(line: 81, column: 11, scope: !227)
!237 = !DILocation(line: 81, column: 17, scope: !227)
!238 = !DILocation(line: 81, column: 23, scope: !227)
!239 = !DILocation(line: 81, column: 28, scope: !227)
!240 = !DILocation(line: 81, column: 33, scope: !227)
!241 = !DILocation(line: 81, column: 21, scope: !227)
!242 = !DILocation(line: 82, column: 3, scope: !227)
!243 = !DILocation(line: 82, column: 7, scope: !227)
!244 = !DILocation(line: 82, column: 13, scope: !227)
!245 = !DILocation(line: 82, column: 21, scope: !227)
!246 = !DILocation(line: 82, column: 26, scope: !227)
!247 = !DILocation(line: 82, column: 31, scope: !227)
!248 = !DILocation(line: 82, column: 19, scope: !227)
!249 = !DILocation(line: 80, column: 6, scope: !193)
!250 = !DILocation(line: 83, column: 7, scope: !251)
!251 = distinct !DILexicalBlock(scope: !252, file: !22, line: 83, column: 7)
!252 = distinct !DILexicalBlock(scope: !227, file: !22, line: 82, column: 40)
!253 = !DILocation(line: 83, column: 12, scope: !251)
!254 = !DILocation(line: 83, column: 17, scope: !251)
!255 = !DILocation(line: 83, column: 21, scope: !251)
!256 = !DILocation(line: 83, column: 7, scope: !252)
!257 = !DILocation(line: 84, column: 4, scope: !258)
!258 = distinct !DILexicalBlock(scope: !251, file: !22, line: 83, column: 27)
!259 = !DILocation(line: 84, column: 9, scope: !258)
!260 = !DILocation(line: 84, column: 17, scope: !258)
!261 = !DILocation(line: 84, column: 16, scope: !258)
!262 = !DILocation(line: 85, column: 4, scope: !258)
!263 = !DILocation(line: 85, column: 9, scope: !258)
!264 = !DILocation(line: 85, column: 48, scope: !258)
!265 = !DILocation(line: 85, column: 18, scope: !258)
!266 = !DILocation(line: 86, column: 4, scope: !258)
!267 = !DILocation(line: 86, column: 9, scope: !258)
!268 = !DILocation(line: 86, column: 14, scope: !258)
!269 = !DILocation(line: 87, column: 7, scope: !258)
!270 = !DILocation(line: 88, column: 3, scope: !258)
!271 = !DILocation(line: 89, column: 4, scope: !272)
!272 = distinct !DILexicalBlock(scope: !251, file: !22, line: 88, column: 10)
!273 = !DILocation(line: 89, column: 9, scope: !272)
!274 = !DILocation(line: 89, column: 19, scope: !272)
!275 = !DILocation(line: 89, column: 18, scope: !272)
!276 = !DILocation(line: 90, column: 7, scope: !272)
!277 = !DILocation(line: 92, column: 2, scope: !252)
!278 = !DILocation(line: 94, column: 9, scope: !193)
!279 = !DILocation(line: 94, column: 2, scope: !193)
!280 = distinct !DISubprogram(name: "timeutil_sync_state_set_skew", scope: !22, file: !22, line: 97, type: !281, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !65)
!281 = !DISubroutineType(types: !282)
!282 = !{!10, !196, !217, !218}
!283 = !DILocalVariable(name: "tsp", arg: 1, scope: !280, file: !22, line: 97, type: !196)
!284 = !DILocation(line: 97, column: 62, scope: !280)
!285 = !DILocalVariable(name: "skew", arg: 2, scope: !280, file: !22, line: 97, type: !217)
!286 = !DILocation(line: 97, column: 73, scope: !280)
!287 = !DILocalVariable(name: "base", arg: 3, scope: !280, file: !22, line: 98, type: !218)
!288 = !DILocation(line: 98, column: 42, scope: !280)
!289 = !DILocalVariable(name: "rv", scope: !280, file: !22, line: 100, type: !10)
!290 = !DILocation(line: 100, column: 6, scope: !280)
!291 = !DILocation(line: 102, column: 6, scope: !292)
!292 = distinct !DILexicalBlock(scope: !280, file: !22, line: 102, column: 6)
!293 = !DILocation(line: 102, column: 11, scope: !292)
!294 = !DILocation(line: 102, column: 6, scope: !280)
!295 = !DILocation(line: 103, column: 15, scope: !296)
!296 = distinct !DILexicalBlock(scope: !292, file: !22, line: 102, column: 16)
!297 = !DILocation(line: 103, column: 3, scope: !296)
!298 = !DILocation(line: 103, column: 8, scope: !296)
!299 = !DILocation(line: 103, column: 13, scope: !296)
!300 = !DILocation(line: 104, column: 7, scope: !301)
!301 = distinct !DILexicalBlock(scope: !296, file: !22, line: 104, column: 7)
!302 = !DILocation(line: 104, column: 12, scope: !301)
!303 = !DILocation(line: 104, column: 7, scope: !296)
!304 = !DILocation(line: 105, column: 4, scope: !305)
!305 = distinct !DILexicalBlock(scope: !301, file: !22, line: 104, column: 18)
!306 = !DILocation(line: 105, column: 9, scope: !305)
!307 = !DILocation(line: 105, column: 17, scope: !305)
!308 = !DILocation(line: 105, column: 16, scope: !305)
!309 = !DILocation(line: 106, column: 4, scope: !305)
!310 = !DILocation(line: 106, column: 9, scope: !305)
!311 = !DILocation(line: 106, column: 48, scope: !305)
!312 = !DILocation(line: 106, column: 18, scope: !305)
!313 = !DILocation(line: 107, column: 3, scope: !305)
!314 = !DILocation(line: 108, column: 6, scope: !296)
!315 = !DILocation(line: 109, column: 2, scope: !296)
!316 = !DILocation(line: 111, column: 9, scope: !280)
!317 = !DILocation(line: 111, column: 2, scope: !280)
!318 = distinct !DISubprogram(name: "timeutil_sync_estimate_skew", scope: !22, file: !22, line: 114, type: !319, scopeLine: 115, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !65)
!319 = !DISubroutineType(types: !320)
!320 = !{!217, !321}
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 32)
!322 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !197)
!323 = !DILocalVariable(name: "tsp", arg: 1, scope: !318, file: !22, line: 114, type: !321)
!324 = !DILocation(line: 114, column: 69, scope: !318)
!325 = !DILocalVariable(name: "rv", scope: !318, file: !22, line: 116, type: !217)
!326 = !DILocation(line: 116, column: 8, scope: !318)
!327 = !DILocation(line: 118, column: 7, scope: !328)
!328 = distinct !DILexicalBlock(scope: !318, file: !22, line: 118, column: 6)
!329 = !DILocation(line: 118, column: 12, scope: !328)
!330 = !DILocation(line: 118, column: 17, scope: !328)
!331 = !DILocation(line: 118, column: 21, scope: !328)
!332 = !DILocation(line: 118, column: 27, scope: !328)
!333 = !DILocation(line: 118, column: 31, scope: !328)
!334 = !DILocation(line: 118, column: 36, scope: !328)
!335 = !DILocation(line: 118, column: 43, scope: !328)
!336 = !DILocation(line: 118, column: 47, scope: !328)
!337 = !DILocation(line: 119, column: 6, scope: !328)
!338 = !DILocation(line: 119, column: 10, scope: !328)
!339 = !DILocation(line: 119, column: 15, scope: !328)
!340 = !DILocation(line: 119, column: 22, scope: !328)
!341 = !DILocation(line: 119, column: 30, scope: !328)
!342 = !DILocation(line: 119, column: 35, scope: !328)
!343 = !DILocation(line: 119, column: 40, scope: !328)
!344 = !DILocation(line: 119, column: 28, scope: !328)
!345 = !DILocation(line: 118, column: 6, scope: !318)
!346 = !DILocalVariable(name: "cfg", scope: !347, file: !22, line: 120, type: !201)
!347 = distinct !DILexicalBlock(scope: !328, file: !22, line: 119, column: 48)
!348 = !DILocation(line: 120, column: 38, scope: !347)
!349 = !DILocation(line: 120, column: 44, scope: !347)
!350 = !DILocation(line: 120, column: 49, scope: !347)
!351 = !DILocalVariable(name: "ref_delta", scope: !347, file: !22, line: 121, type: !9)
!352 = !DILocation(line: 121, column: 10, scope: !347)
!353 = !DILocation(line: 121, column: 22, scope: !347)
!354 = !DILocation(line: 121, column: 27, scope: !347)
!355 = !DILocation(line: 121, column: 34, scope: !347)
!356 = !DILocation(line: 121, column: 40, scope: !347)
!357 = !DILocation(line: 121, column: 45, scope: !347)
!358 = !DILocation(line: 121, column: 50, scope: !347)
!359 = !DILocation(line: 121, column: 38, scope: !347)
!360 = !DILocalVariable(name: "local_delta", scope: !347, file: !22, line: 122, type: !9)
!361 = !DILocation(line: 122, column: 10, scope: !347)
!362 = !DILocation(line: 122, column: 24, scope: !347)
!363 = !DILocation(line: 122, column: 29, scope: !347)
!364 = !DILocation(line: 122, column: 36, scope: !347)
!365 = !DILocation(line: 122, column: 44, scope: !347)
!366 = !DILocation(line: 122, column: 49, scope: !347)
!367 = !DILocation(line: 122, column: 54, scope: !347)
!368 = !DILocation(line: 122, column: 42, scope: !347)
!369 = !DILocation(line: 124, column: 8, scope: !347)
!370 = !DILocation(line: 124, column: 20, scope: !347)
!371 = !DILocation(line: 124, column: 25, scope: !347)
!372 = !DILocation(line: 124, column: 18, scope: !347)
!373 = !DILocation(line: 124, column: 36, scope: !347)
!374 = !DILocation(line: 124, column: 34, scope: !347)
!375 = !DILocation(line: 124, column: 50, scope: !347)
!376 = !DILocation(line: 124, column: 55, scope: !347)
!377 = !DILocation(line: 124, column: 48, scope: !347)
!378 = !DILocation(line: 124, column: 6, scope: !347)
!379 = !DILocation(line: 125, column: 2, scope: !347)
!380 = !DILocation(line: 127, column: 9, scope: !318)
!381 = !DILocation(line: 127, column: 2, scope: !318)
!382 = distinct !DISubprogram(name: "timeutil_sync_ref_from_local", scope: !22, file: !22, line: 130, type: !383, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !65)
!383 = !DISubroutineType(types: !384)
!384 = !{!10, !321, !212, !385}
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 32)
!386 = !DILocalVariable(name: "tsp", arg: 1, scope: !382, file: !22, line: 130, type: !321)
!387 = !DILocation(line: 130, column: 68, scope: !382)
!388 = !DILocalVariable(name: "local", arg: 2, scope: !382, file: !22, line: 131, type: !212)
!389 = !DILocation(line: 131, column: 15, scope: !382)
!390 = !DILocalVariable(name: "refp", arg: 3, scope: !382, file: !22, line: 131, type: !385)
!391 = !DILocation(line: 131, column: 32, scope: !382)
!392 = !DILocalVariable(name: "rv", scope: !382, file: !22, line: 133, type: !10)
!393 = !DILocation(line: 133, column: 6, scope: !382)
!394 = !DILocation(line: 135, column: 7, scope: !395)
!395 = distinct !DILexicalBlock(scope: !382, file: !22, line: 135, column: 6)
!396 = !DILocation(line: 135, column: 12, scope: !395)
!397 = !DILocation(line: 135, column: 17, scope: !395)
!398 = !DILocation(line: 135, column: 22, scope: !395)
!399 = !DILocation(line: 135, column: 26, scope: !395)
!400 = !DILocation(line: 135, column: 31, scope: !395)
!401 = !DILocation(line: 135, column: 36, scope: !395)
!402 = !DILocation(line: 135, column: 40, scope: !395)
!403 = !DILocation(line: 135, column: 45, scope: !395)
!404 = !DILocation(line: 135, column: 49, scope: !395)
!405 = !DILocation(line: 135, column: 54, scope: !395)
!406 = !DILocation(line: 135, column: 6, scope: !382)
!407 = !DILocalVariable(name: "cfg", scope: !408, file: !22, line: 136, type: !201)
!408 = distinct !DILexicalBlock(scope: !395, file: !22, line: 135, column: 61)
!409 = !DILocation(line: 136, column: 38, scope: !408)
!410 = !DILocation(line: 136, column: 44, scope: !408)
!411 = !DILocation(line: 136, column: 49, scope: !408)
!412 = !DILocalVariable(name: "local_delta", scope: !408, file: !22, line: 137, type: !3)
!413 = !DILocation(line: 137, column: 11, scope: !408)
!414 = !DILocation(line: 137, column: 25, scope: !408)
!415 = !DILocation(line: 137, column: 33, scope: !408)
!416 = !DILocation(line: 137, column: 38, scope: !408)
!417 = !DILocation(line: 137, column: 43, scope: !408)
!418 = !DILocation(line: 137, column: 31, scope: !408)
!419 = !DILocation(line: 141, column: 7, scope: !420)
!420 = distinct !DILexicalBlock(scope: !408, file: !22, line: 141, column: 7)
!421 = !DILocation(line: 141, column: 12, scope: !420)
!422 = !DILocation(line: 141, column: 17, scope: !420)
!423 = !DILocation(line: 141, column: 7, scope: !408)
!424 = !DILocation(line: 142, column: 27, scope: !425)
!425 = distinct !DILexicalBlock(scope: !420, file: !22, line: 141, column: 26)
!426 = !DILocation(line: 142, column: 32, scope: !425)
!427 = !DILocation(line: 142, column: 19, scope: !425)
!428 = !DILocation(line: 142, column: 16, scope: !425)
!429 = !DILocation(line: 143, column: 3, scope: !425)
!430 = !DILocalVariable(name: "ref_delta", scope: !408, file: !22, line: 144, type: !3)
!431 = !DILocation(line: 144, column: 11, scope: !408)
!432 = !DILocation(line: 144, column: 23, scope: !408)
!433 = !DILocation(line: 144, column: 37, scope: !408)
!434 = !DILocation(line: 144, column: 42, scope: !408)
!435 = !DILocation(line: 144, column: 35, scope: !408)
!436 = !DILocation(line: 144, column: 51, scope: !408)
!437 = !DILocation(line: 144, column: 56, scope: !408)
!438 = !DILocation(line: 144, column: 49, scope: !408)
!439 = !DILocalVariable(name: "ref_abs", scope: !408, file: !22, line: 145, type: !3)
!440 = !DILocation(line: 145, column: 11, scope: !408)
!441 = !DILocation(line: 145, column: 30, scope: !408)
!442 = !DILocation(line: 145, column: 35, scope: !408)
!443 = !DILocation(line: 145, column: 40, scope: !408)
!444 = !DILocation(line: 145, column: 46, scope: !408)
!445 = !DILocation(line: 145, column: 44, scope: !408)
!446 = !DILocation(line: 147, column: 7, scope: !447)
!447 = distinct !DILexicalBlock(scope: !408, file: !22, line: 147, column: 7)
!448 = !DILocation(line: 147, column: 15, scope: !447)
!449 = !DILocation(line: 147, column: 7, scope: !408)
!450 = !DILocation(line: 148, column: 11, scope: !451)
!451 = distinct !DILexicalBlock(scope: !447, file: !22, line: 147, column: 20)
!452 = !DILocation(line: 148, column: 9, scope: !451)
!453 = !DILocation(line: 148, column: 7, scope: !451)
!454 = !DILocation(line: 149, column: 3, scope: !451)
!455 = !DILocation(line: 150, column: 12, scope: !456)
!456 = distinct !DILexicalBlock(scope: !447, file: !22, line: 149, column: 10)
!457 = !DILocation(line: 150, column: 5, scope: !456)
!458 = !DILocation(line: 150, column: 10, scope: !456)
!459 = !DILocation(line: 151, column: 15, scope: !456)
!460 = !DILocation(line: 151, column: 20, scope: !456)
!461 = !DILocation(line: 151, column: 25, scope: !456)
!462 = !DILocation(line: 151, column: 7, scope: !456)
!463 = !DILocation(line: 153, column: 2, scope: !408)
!464 = !DILocation(line: 155, column: 9, scope: !382)
!465 = !DILocation(line: 155, column: 2, scope: !382)
!466 = distinct !DISubprogram(name: "timeutil_sync_local_from_ref", scope: !22, file: !22, line: 158, type: !467, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !65)
!467 = !DISubroutineType(types: !468)
!468 = !{!10, !321, !212, !469}
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3, size: 32)
!470 = !DILocalVariable(name: "tsp", arg: 1, scope: !466, file: !22, line: 158, type: !321)
!471 = !DILocation(line: 158, column: 68, scope: !466)
!472 = !DILocalVariable(name: "ref", arg: 2, scope: !466, file: !22, line: 159, type: !212)
!473 = !DILocation(line: 159, column: 15, scope: !466)
!474 = !DILocalVariable(name: "localp", arg: 3, scope: !466, file: !22, line: 159, type: !469)
!475 = !DILocation(line: 159, column: 29, scope: !466)
!476 = !DILocalVariable(name: "rv", scope: !466, file: !22, line: 161, type: !10)
!477 = !DILocation(line: 161, column: 6, scope: !466)
!478 = !DILocation(line: 163, column: 7, scope: !479)
!479 = distinct !DILexicalBlock(scope: !466, file: !22, line: 163, column: 6)
!480 = !DILocation(line: 163, column: 12, scope: !479)
!481 = !DILocation(line: 163, column: 17, scope: !479)
!482 = !DILocation(line: 163, column: 22, scope: !479)
!483 = !DILocation(line: 163, column: 26, scope: !479)
!484 = !DILocation(line: 163, column: 31, scope: !479)
!485 = !DILocation(line: 163, column: 36, scope: !479)
!486 = !DILocation(line: 163, column: 40, scope: !479)
!487 = !DILocation(line: 163, column: 45, scope: !479)
!488 = !DILocation(line: 163, column: 49, scope: !479)
!489 = !DILocation(line: 163, column: 56, scope: !479)
!490 = !DILocation(line: 163, column: 6, scope: !466)
!491 = !DILocalVariable(name: "cfg", scope: !492, file: !22, line: 164, type: !201)
!492 = distinct !DILexicalBlock(scope: !479, file: !22, line: 163, column: 63)
!493 = !DILocation(line: 164, column: 38, scope: !492)
!494 = !DILocation(line: 164, column: 44, scope: !492)
!495 = !DILocation(line: 164, column: 49, scope: !492)
!496 = !DILocalVariable(name: "ref_delta", scope: !492, file: !22, line: 165, type: !3)
!497 = !DILocation(line: 165, column: 11, scope: !492)
!498 = !DILocation(line: 165, column: 33, scope: !492)
!499 = !DILocation(line: 165, column: 39, scope: !492)
!500 = !DILocation(line: 165, column: 44, scope: !492)
!501 = !DILocation(line: 165, column: 49, scope: !492)
!502 = !DILocation(line: 165, column: 37, scope: !492)
!503 = !DILocalVariable(name: "local_delta", scope: !492, file: !22, line: 169, type: !3)
!504 = !DILocation(line: 169, column: 11, scope: !492)
!505 = !DILocation(line: 169, column: 26, scope: !492)
!506 = !DILocation(line: 169, column: 38, scope: !492)
!507 = !DILocation(line: 169, column: 43, scope: !492)
!508 = !DILocation(line: 169, column: 36, scope: !492)
!509 = !DILocation(line: 169, column: 55, scope: !492)
!510 = !DILocation(line: 169, column: 60, scope: !492)
!511 = !DILocation(line: 169, column: 53, scope: !492)
!512 = !DILocation(line: 171, column: 7, scope: !513)
!513 = distinct !DILexicalBlock(scope: !492, file: !22, line: 171, column: 7)
!514 = !DILocation(line: 171, column: 12, scope: !513)
!515 = !DILocation(line: 171, column: 17, scope: !513)
!516 = !DILocation(line: 171, column: 7, scope: !492)
!517 = !DILocation(line: 172, column: 27, scope: !518)
!518 = distinct !DILexicalBlock(scope: !513, file: !22, line: 171, column: 26)
!519 = !DILocation(line: 172, column: 32, scope: !518)
!520 = !DILocation(line: 172, column: 19, scope: !518)
!521 = !DILocation(line: 172, column: 16, scope: !518)
!522 = !DILocation(line: 173, column: 3, scope: !518)
!523 = !DILocalVariable(name: "local_abs", scope: !492, file: !22, line: 174, type: !3)
!524 = !DILocation(line: 174, column: 11, scope: !492)
!525 = !DILocation(line: 174, column: 32, scope: !492)
!526 = !DILocation(line: 174, column: 37, scope: !492)
!527 = !DILocation(line: 174, column: 42, scope: !492)
!528 = !DILocation(line: 175, column: 20, scope: !492)
!529 = !DILocation(line: 175, column: 9, scope: !492)
!530 = !DILocation(line: 177, column: 13, scope: !492)
!531 = !DILocation(line: 177, column: 4, scope: !492)
!532 = !DILocation(line: 177, column: 11, scope: !492)
!533 = !DILocation(line: 178, column: 14, scope: !492)
!534 = !DILocation(line: 178, column: 19, scope: !492)
!535 = !DILocation(line: 178, column: 24, scope: !492)
!536 = !DILocation(line: 178, column: 6, scope: !492)
!537 = !DILocation(line: 179, column: 2, scope: !492)
!538 = !DILocation(line: 181, column: 9, scope: !466)
!539 = !DILocation(line: 181, column: 2, scope: !466)
!540 = distinct !DISubprogram(name: "timeutil_sync_skew_to_ppb", scope: !22, file: !22, line: 184, type: !541, scopeLine: 185, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !65)
!541 = !DISubroutineType(types: !542)
!542 = !{!11, !217}
!543 = !DILocalVariable(name: "skew", arg: 1, scope: !540, file: !22, line: 184, type: !217)
!544 = !DILocation(line: 184, column: 41, scope: !540)
!545 = !DILocalVariable(name: "ppb64", scope: !540, file: !22, line: 186, type: !3)
!546 = !DILocation(line: 186, column: 10, scope: !540)
!547 = !DILocation(line: 186, column: 43, scope: !540)
!548 = !DILocation(line: 186, column: 35, scope: !540)
!549 = !DILocation(line: 186, column: 33, scope: !540)
!550 = !DILocation(line: 186, column: 49, scope: !540)
!551 = !DILocation(line: 186, column: 18, scope: !540)
!552 = !DILocalVariable(name: "ppb32", scope: !540, file: !22, line: 187, type: !11)
!553 = !DILocation(line: 187, column: 10, scope: !540)
!554 = !DILocation(line: 187, column: 27, scope: !540)
!555 = !DILocation(line: 187, column: 18, scope: !540)
!556 = !DILocation(line: 189, column: 10, scope: !540)
!557 = !DILocation(line: 189, column: 19, scope: !540)
!558 = !DILocation(line: 189, column: 16, scope: !540)
!559 = !DILocation(line: 189, column: 9, scope: !540)
!560 = !DILocation(line: 189, column: 28, scope: !540)
!561 = !DILocation(line: 189, column: 2, scope: !540)
