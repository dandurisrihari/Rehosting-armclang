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

@__aeabi_ERANGE = external dso_local constant i32, align 4

; Function Attrs: nounwind optsize
define hidden i64 @timeutil_timegm64(ptr noundef %0) #0 !dbg !19 {
  %2 = alloca ptr, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !64, metadata !DIExpression()), !dbg !70
  call void @llvm.lifetime.start.p0(i64 8, ptr %3) #5, !dbg !71
  call void @llvm.dbg.declare(metadata ptr %3, metadata !65, metadata !DIExpression()), !dbg !72
  %8 = load ptr, ptr %2, align 4, !dbg !73
  %9 = getelementptr inbounds %struct.tm, ptr %8, i32 0, i32 5, !dbg !74
  %10 = load i32, ptr %9, align 4, !dbg !74
  %11 = sext i32 %10 to i64, !dbg !75
  %12 = add nsw i64 1900, %11, !dbg !76
  store i64 %12, ptr %3, align 8, !dbg !72
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #5, !dbg !77
  call void @llvm.dbg.declare(metadata ptr %4, metadata !66, metadata !DIExpression()), !dbg !78
  %13 = load ptr, ptr %2, align 4, !dbg !79
  %14 = getelementptr inbounds %struct.tm, ptr %13, i32 0, i32 4, !dbg !80
  %15 = load i32, ptr %14, align 4, !dbg !80
  %16 = add nsw i32 %15, 1, !dbg !81
  store i32 %16, ptr %4, align 4, !dbg !78
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #5, !dbg !82
  call void @llvm.dbg.declare(metadata ptr %5, metadata !67, metadata !DIExpression()), !dbg !83
  %17 = load ptr, ptr %2, align 4, !dbg !84
  %18 = getelementptr inbounds %struct.tm, ptr %17, i32 0, i32 3, !dbg !85
  %19 = load i32, ptr %18, align 4, !dbg !85
  %20 = sub nsw i32 %19, 1, !dbg !86
  store i32 %20, ptr %5, align 4, !dbg !83
  call void @llvm.lifetime.start.p0(i64 8, ptr %6) #5, !dbg !87
  call void @llvm.dbg.declare(metadata ptr %6, metadata !68, metadata !DIExpression()), !dbg !88
  %21 = load i64, ptr %3, align 8, !dbg !89
  %22 = load i32, ptr %4, align 4, !dbg !90
  %23 = load i32, ptr %5, align 4, !dbg !91
  %24 = call i64 @time_days_from_civil(i64 noundef %21, i32 noundef %22, i32 noundef %23) #6, !dbg !92
  store i64 %24, ptr %6, align 8, !dbg !88
  call void @llvm.lifetime.start.p0(i64 8, ptr %7) #5, !dbg !93
  call void @llvm.dbg.declare(metadata ptr %7, metadata !69, metadata !DIExpression()), !dbg !94
  %25 = load ptr, ptr %2, align 4, !dbg !95
  %26 = getelementptr inbounds %struct.tm, ptr %25, i32 0, i32 0, !dbg !96
  %27 = load i32, ptr %26, align 4, !dbg !96
  %28 = sext i32 %27 to i64, !dbg !95
  store i64 %28, ptr %7, align 8, !dbg !94
  %29 = load ptr, ptr %2, align 4, !dbg !97
  %30 = getelementptr inbounds %struct.tm, ptr %29, i32 0, i32 1, !dbg !98
  %31 = load i32, ptr %30, align 4, !dbg !98
  %32 = sext i32 %31 to i64, !dbg !97
  %33 = load ptr, ptr %2, align 4, !dbg !99
  %34 = getelementptr inbounds %struct.tm, ptr %33, i32 0, i32 2, !dbg !100
  %35 = load i32, ptr %34, align 4, !dbg !100
  %36 = sext i32 %35 to i64, !dbg !99
  %37 = mul nsw i64 60, %36, !dbg !101
  %38 = add nsw i64 %32, %37, !dbg !102
  %39 = mul nsw i64 60, %38, !dbg !103
  %40 = load i64, ptr %7, align 8, !dbg !104
  %41 = add nsw i64 %40, %39, !dbg !104
  store i64 %41, ptr %7, align 8, !dbg !104
  %42 = load i64, ptr %6, align 8, !dbg !105
  %43 = mul nsw i64 86400, %42, !dbg !106
  %44 = load i64, ptr %7, align 8, !dbg !107
  %45 = add nsw i64 %44, %43, !dbg !107
  store i64 %45, ptr %7, align 8, !dbg !107
  %46 = load i64, ptr %7, align 8, !dbg !108
  call void @llvm.lifetime.end.p0(i64 8, ptr %7) #5, !dbg !109
  call void @llvm.lifetime.end.p0(i64 8, ptr %6) #5, !dbg !109
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #5, !dbg !109
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #5, !dbg !109
  call void @llvm.lifetime.end.p0(i64 8, ptr %3) #5, !dbg !109
  ret i64 %46, !dbg !110
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind optsize
define internal i64 @time_days_from_civil(i64 noundef %0, i32 noundef %1, i32 noundef %2) #0 !dbg !111 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i64 %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !115, metadata !DIExpression()), !dbg !122
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !116, metadata !DIExpression()), !dbg !123
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !117, metadata !DIExpression()), !dbg !124
  %11 = load i32, ptr %5, align 4, !dbg !125
  %12 = icmp ule i32 %11, 2, !dbg !126
  %13 = zext i1 %12 to i32, !dbg !126
  %14 = sext i32 %13 to i64, !dbg !125
  %15 = load i64, ptr %4, align 8, !dbg !127
  %16 = sub nsw i64 %15, %14, !dbg !127
  store i64 %16, ptr %4, align 8, !dbg !127
  call void @llvm.lifetime.start.p0(i64 8, ptr %7) #5, !dbg !128
  call void @llvm.dbg.declare(metadata ptr %7, metadata !118, metadata !DIExpression()), !dbg !129
  %17 = load i64, ptr %4, align 8, !dbg !130
  %18 = icmp sge i64 %17, 0, !dbg !131
  br i1 %18, label %19, label %21, !dbg !130

19:                                               ; preds = %3
  %20 = load i64, ptr %4, align 8, !dbg !132
  br label %24, !dbg !130

21:                                               ; preds = %3
  %22 = load i64, ptr %4, align 8, !dbg !133
  %23 = sub nsw i64 %22, 399, !dbg !134
  br label %24, !dbg !130

24:                                               ; preds = %21, %19
  %25 = phi i64 [ %20, %19 ], [ %23, %21 ], !dbg !130
  %26 = sdiv i64 %25, 400, !dbg !135
  store i64 %26, ptr %7, align 8, !dbg !129
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #5, !dbg !136
  call void @llvm.dbg.declare(metadata ptr %8, metadata !119, metadata !DIExpression()), !dbg !137
  %27 = load i64, ptr %4, align 8, !dbg !138
  %28 = load i64, ptr %7, align 8, !dbg !139
  %29 = mul nsw i64 %28, 400, !dbg !140
  %30 = sub nsw i64 %27, %29, !dbg !141
  %31 = trunc i64 %30 to i32, !dbg !138
  store i32 %31, ptr %8, align 4, !dbg !137
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #5, !dbg !142
  call void @llvm.dbg.declare(metadata ptr %9, metadata !120, metadata !DIExpression()), !dbg !143
  %32 = load i32, ptr %5, align 4, !dbg !144
  %33 = load i32, ptr %5, align 4, !dbg !145
  %34 = icmp ugt i32 %33, 2, !dbg !146
  %35 = zext i1 %34 to i64, !dbg !145
  %36 = select i1 %34, i32 -3, i32 9, !dbg !145
  %37 = add i32 %32, %36, !dbg !147
  %38 = mul i32 153, %37, !dbg !148
  %39 = add i32 %38, 2, !dbg !149
  %40 = udiv i32 %39, 5, !dbg !150
  %41 = load i32, ptr %6, align 4, !dbg !151
  %42 = add i32 %40, %41, !dbg !152
  store i32 %42, ptr %9, align 4, !dbg !143
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #5, !dbg !153
  call void @llvm.dbg.declare(metadata ptr %10, metadata !121, metadata !DIExpression()), !dbg !154
  %43 = load i32, ptr %8, align 4, !dbg !155
  %44 = mul i32 %43, 365, !dbg !156
  %45 = load i32, ptr %8, align 4, !dbg !157
  %46 = udiv i32 %45, 4, !dbg !158
  %47 = add i32 %44, %46, !dbg !159
  %48 = load i32, ptr %8, align 4, !dbg !160
  %49 = udiv i32 %48, 100, !dbg !161
  %50 = sub i32 %47, %49, !dbg !162
  %51 = load i32, ptr %9, align 4, !dbg !163
  %52 = add i32 %50, %51, !dbg !164
  store i32 %52, ptr %10, align 4, !dbg !154
  %53 = load i64, ptr %7, align 8, !dbg !165
  %54 = mul nsw i64 %53, 146097, !dbg !166
  %55 = load i32, ptr %10, align 4, !dbg !167
  %56 = zext i32 %55 to i64, !dbg !168
  %57 = add nsw i64 %54, %56, !dbg !169
  %58 = sub nsw i64 %57, 719468, !dbg !170
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #5, !dbg !171
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #5, !dbg !171
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #5, !dbg !171
  call void @llvm.lifetime.end.p0(i64 8, ptr %7) #5, !dbg !171
  ret i64 %58, !dbg !172
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind optsize
define hidden i32 @timeutil_timegm(ptr noundef %0) #0 !dbg !173 {
  %2 = alloca ptr, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !177, metadata !DIExpression()), !dbg !180
  call void @llvm.lifetime.start.p0(i64 8, ptr %3) #5, !dbg !181
  call void @llvm.dbg.declare(metadata ptr %3, metadata !178, metadata !DIExpression()), !dbg !182
  %5 = load ptr, ptr %2, align 4, !dbg !183
  %6 = call i64 @timeutil_timegm64(ptr noundef %5) #6, !dbg !184
  store i64 %6, ptr %3, align 8, !dbg !182
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #5, !dbg !185
  call void @llvm.dbg.declare(metadata ptr %4, metadata !179, metadata !DIExpression()), !dbg !186
  %7 = load i64, ptr %3, align 8, !dbg !187
  %8 = trunc i64 %7 to i32, !dbg !188
  store i32 %8, ptr %4, align 4, !dbg !186
  %9 = call ptr @__aeabi_errno_addr() #7, !dbg !189
  store volatile i32 0, ptr %9, align 4, !dbg !190
  %10 = load i64, ptr %3, align 8, !dbg !191
  %11 = icmp slt i64 %10, -2147483648, !dbg !193
  br i1 %11, label %15, label %12, !dbg !194

12:                                               ; preds = %1
  %13 = load i64, ptr %3, align 8, !dbg !195
  %14 = icmp sgt i64 %13, 2147483647, !dbg !196
  br i1 %14, label %15, label %18, !dbg !197

15:                                               ; preds = %12, %1
  %16 = load i32, ptr @__aeabi_ERANGE, align 4, !dbg !198
  %17 = call ptr @__aeabi_errno_addr() #7, !dbg !200
  store volatile i32 %16, ptr %17, align 4, !dbg !201
  store i32 -1, ptr %4, align 4, !dbg !202
  br label %18, !dbg !203

18:                                               ; preds = %15, %12
  %19 = load i32, ptr %4, align 4, !dbg !204
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #5, !dbg !205
  call void @llvm.lifetime.end.p0(i64 8, ptr %3) #5, !dbg !205
  ret i32 %19, !dbg !206
}

; Function Attrs: nounwind optsize willreturn memory(none)
declare !dbg !207 dso_local ptr @__aeabi_errno_addr() #3

; Function Attrs: nounwind optsize
define hidden i32 @timeutil_sync_state_update(ptr noundef %0, ptr noundef %1) #0 !dbg !214 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.timeutil_sync_instant, align 8
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !242, metadata !DIExpression()), !dbg !245
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !243, metadata !DIExpression()), !dbg !246
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #5, !dbg !247
  call void @llvm.dbg.declare(metadata ptr %5, metadata !244, metadata !DIExpression()), !dbg !248
  store i32 -5, ptr %5, align 4, !dbg !248
  %7 = load ptr, ptr %3, align 4, !dbg !249
  %8 = getelementptr inbounds %struct.timeutil_sync_state, ptr %7, i32 0, i32 1, !dbg !251
  %9 = getelementptr inbounds %struct.timeutil_sync_instant, ptr %8, i32 0, i32 0, !dbg !252
  %10 = load i64, ptr %9, align 8, !dbg !252
  %11 = icmp eq i64 %10, 0, !dbg !253
  br i1 %11, label %12, label %17, !dbg !254

12:                                               ; preds = %2
  %13 = load ptr, ptr %4, align 4, !dbg !255
  %14 = getelementptr inbounds %struct.timeutil_sync_instant, ptr %13, i32 0, i32 0, !dbg !256
  %15 = load i64, ptr %14, align 8, !dbg !256
  %16 = icmp ugt i64 %15, 0, !dbg !257
  br i1 %16, label %35, label %17, !dbg !258

17:                                               ; preds = %12, %2
  %18 = load ptr, ptr %4, align 4, !dbg !259
  %19 = getelementptr inbounds %struct.timeutil_sync_instant, ptr %18, i32 0, i32 0, !dbg !260
  %20 = load i64, ptr %19, align 8, !dbg !260
  %21 = load ptr, ptr %3, align 4, !dbg !261
  %22 = getelementptr inbounds %struct.timeutil_sync_state, ptr %21, i32 0, i32 1, !dbg !262
  %23 = getelementptr inbounds %struct.timeutil_sync_instant, ptr %22, i32 0, i32 0, !dbg !263
  %24 = load i64, ptr %23, align 8, !dbg !263
  %25 = icmp ugt i64 %20, %24, !dbg !264
  br i1 %25, label %26, label %56, !dbg !265

26:                                               ; preds = %17
  %27 = load ptr, ptr %4, align 4, !dbg !266
  %28 = getelementptr inbounds %struct.timeutil_sync_instant, ptr %27, i32 0, i32 1, !dbg !267
  %29 = load i64, ptr %28, align 8, !dbg !267
  %30 = load ptr, ptr %3, align 4, !dbg !268
  %31 = getelementptr inbounds %struct.timeutil_sync_state, ptr %30, i32 0, i32 1, !dbg !269
  %32 = getelementptr inbounds %struct.timeutil_sync_instant, ptr %31, i32 0, i32 1, !dbg !270
  %33 = load i64, ptr %32, align 8, !dbg !270
  %34 = icmp ugt i64 %29, %33, !dbg !271
  br i1 %34, label %35, label %56, !dbg !272

35:                                               ; preds = %26, %12
  %36 = load ptr, ptr %3, align 4, !dbg !273
  %37 = getelementptr inbounds %struct.timeutil_sync_state, ptr %36, i32 0, i32 1, !dbg !276
  %38 = getelementptr inbounds %struct.timeutil_sync_instant, ptr %37, i32 0, i32 0, !dbg !277
  %39 = load i64, ptr %38, align 8, !dbg !277
  %40 = icmp eq i64 %39, 0, !dbg !278
  br i1 %40, label %41, label %51, !dbg !279

41:                                               ; preds = %35
  %42 = load ptr, ptr %3, align 4, !dbg !280
  %43 = getelementptr inbounds %struct.timeutil_sync_state, ptr %42, i32 0, i32 1, !dbg !282
  %44 = load ptr, ptr %4, align 4, !dbg !283
  call void @llvm.memcpy.p0.p0.i32(ptr align 8 %43, ptr align 8 %44, i32 16, i1 false), !dbg !284
  %45 = load ptr, ptr %3, align 4, !dbg !285
  %46 = getelementptr inbounds %struct.timeutil_sync_state, ptr %45, i32 0, i32 2, !dbg !286
  %47 = getelementptr inbounds %struct.timeutil_sync_instant, ptr %6, i32 0, i32 0, !dbg !287
  store i64 0, ptr %47, align 8, !dbg !287
  %48 = getelementptr inbounds %struct.timeutil_sync_instant, ptr %6, i32 0, i32 1, !dbg !287
  store i64 0, ptr %48, align 8, !dbg !287
  call void @llvm.memcpy.p0.p0.i32(ptr align 8 %46, ptr align 8 %6, i32 16, i1 false), !dbg !288
  %49 = load ptr, ptr %3, align 4, !dbg !289
  %50 = getelementptr inbounds %struct.timeutil_sync_state, ptr %49, i32 0, i32 3, !dbg !290
  store float 1.000000e+00, ptr %50, align 8, !dbg !291
  store i32 0, ptr %5, align 4, !dbg !292
  br label %55, !dbg !293

51:                                               ; preds = %35
  %52 = load ptr, ptr %3, align 4, !dbg !294
  %53 = getelementptr inbounds %struct.timeutil_sync_state, ptr %52, i32 0, i32 2, !dbg !296
  %54 = load ptr, ptr %4, align 4, !dbg !297
  call void @llvm.memcpy.p0.p0.i32(ptr align 8 %53, ptr align 8 %54, i32 16, i1 false), !dbg !298
  store i32 1, ptr %5, align 4, !dbg !299
  br label %55

55:                                               ; preds = %51, %41
  br label %56, !dbg !300

56:                                               ; preds = %55, %26, %17
  %57 = load i32, ptr %5, align 4, !dbg !301
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #5, !dbg !302
  ret i32 %57, !dbg !303
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: nounwind optsize
define hidden i32 @timeutil_sync_state_set_skew(ptr noundef %0, float noundef %1, ptr noundef %2) #0 !dbg !304 {
  %4 = alloca ptr, align 4
  %5 = alloca float, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.timeutil_sync_instant, align 8
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !308, metadata !DIExpression()), !dbg !312
  store float %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !309, metadata !DIExpression()), !dbg !313
  store ptr %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !310, metadata !DIExpression()), !dbg !314
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #5, !dbg !315
  call void @llvm.dbg.declare(metadata ptr %7, metadata !311, metadata !DIExpression()), !dbg !316
  store i32 -5, ptr %7, align 4, !dbg !316
  %9 = load float, ptr %5, align 4, !dbg !317
  %10 = fcmp nnan ninf nsz ogt float %9, 0.000000e+00, !dbg !319
  br i1 %10, label %11, label %26, !dbg !320

11:                                               ; preds = %3
  %12 = load float, ptr %5, align 4, !dbg !321
  %13 = load ptr, ptr %4, align 4, !dbg !323
  %14 = getelementptr inbounds %struct.timeutil_sync_state, ptr %13, i32 0, i32 3, !dbg !324
  store float %12, ptr %14, align 8, !dbg !325
  %15 = load ptr, ptr %6, align 4, !dbg !326
  %16 = icmp ne ptr %15, null, !dbg !328
  br i1 %16, label %17, label %25, !dbg !329

17:                                               ; preds = %11
  %18 = load ptr, ptr %4, align 4, !dbg !330
  %19 = getelementptr inbounds %struct.timeutil_sync_state, ptr %18, i32 0, i32 1, !dbg !332
  %20 = load ptr, ptr %6, align 4, !dbg !333
  call void @llvm.memcpy.p0.p0.i32(ptr align 8 %19, ptr align 8 %20, i32 16, i1 false), !dbg !334
  %21 = load ptr, ptr %4, align 4, !dbg !335
  %22 = getelementptr inbounds %struct.timeutil_sync_state, ptr %21, i32 0, i32 2, !dbg !336
  %23 = getelementptr inbounds %struct.timeutil_sync_instant, ptr %8, i32 0, i32 0, !dbg !337
  store i64 0, ptr %23, align 8, !dbg !337
  %24 = getelementptr inbounds %struct.timeutil_sync_instant, ptr %8, i32 0, i32 1, !dbg !337
  store i64 0, ptr %24, align 8, !dbg !337
  call void @llvm.memcpy.p0.p0.i32(ptr align 8 %22, ptr align 8 %8, i32 16, i1 false), !dbg !338
  br label %25, !dbg !339

25:                                               ; preds = %17, %11
  store i32 0, ptr %7, align 4, !dbg !340
  br label %26, !dbg !341

26:                                               ; preds = %25, %3
  %27 = load i32, ptr %7, align 4, !dbg !342
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #5, !dbg !343
  ret i32 %27, !dbg !344
}

; Function Attrs: nounwind optsize
define hidden float @timeutil_sync_estimate_skew(ptr noundef %0) #0 !dbg !345 {
  %2 = alloca ptr, align 4
  %3 = alloca float, align 4
  %4 = alloca ptr, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !351, metadata !DIExpression()), !dbg !358
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #5, !dbg !359
  call void @llvm.dbg.declare(metadata ptr %3, metadata !352, metadata !DIExpression()), !dbg !360
  store float 0.000000e+00, ptr %3, align 4, !dbg !360
  %7 = load ptr, ptr %2, align 4, !dbg !361
  %8 = getelementptr inbounds %struct.timeutil_sync_state, ptr %7, i32 0, i32 1, !dbg !362
  %9 = getelementptr inbounds %struct.timeutil_sync_instant, ptr %8, i32 0, i32 0, !dbg !363
  %10 = load i64, ptr %9, align 8, !dbg !363
  %11 = icmp ne i64 %10, 0, !dbg !364
  br i1 %11, label %12, label %66, !dbg !365

12:                                               ; preds = %1
  %13 = load ptr, ptr %2, align 4, !dbg !366
  %14 = getelementptr inbounds %struct.timeutil_sync_state, ptr %13, i32 0, i32 2, !dbg !367
  %15 = getelementptr inbounds %struct.timeutil_sync_instant, ptr %14, i32 0, i32 0, !dbg !368
  %16 = load i64, ptr %15, align 8, !dbg !368
  %17 = icmp ne i64 %16, 0, !dbg !369
  br i1 %17, label %18, label %66, !dbg !370

18:                                               ; preds = %12
  %19 = load ptr, ptr %2, align 4, !dbg !371
  %20 = getelementptr inbounds %struct.timeutil_sync_state, ptr %19, i32 0, i32 2, !dbg !372
  %21 = getelementptr inbounds %struct.timeutil_sync_instant, ptr %20, i32 0, i32 1, !dbg !373
  %22 = load i64, ptr %21, align 8, !dbg !373
  %23 = load ptr, ptr %2, align 4, !dbg !374
  %24 = getelementptr inbounds %struct.timeutil_sync_state, ptr %23, i32 0, i32 1, !dbg !375
  %25 = getelementptr inbounds %struct.timeutil_sync_instant, ptr %24, i32 0, i32 1, !dbg !376
  %26 = load i64, ptr %25, align 8, !dbg !376
  %27 = icmp ugt i64 %22, %26, !dbg !377
  br i1 %27, label %28, label %66, !dbg !378

28:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #5, !dbg !379
  call void @llvm.dbg.declare(metadata ptr %4, metadata !353, metadata !DIExpression()), !dbg !380
  %29 = load ptr, ptr %2, align 4, !dbg !381
  %30 = getelementptr inbounds %struct.timeutil_sync_state, ptr %29, i32 0, i32 0, !dbg !382
  %31 = load ptr, ptr %30, align 8, !dbg !382
  store ptr %31, ptr %4, align 4, !dbg !380
  call void @llvm.lifetime.start.p0(i64 8, ptr %5) #5, !dbg !383
  call void @llvm.dbg.declare(metadata ptr %5, metadata !356, metadata !DIExpression()), !dbg !384
  %32 = load ptr, ptr %2, align 4, !dbg !385
  %33 = getelementptr inbounds %struct.timeutil_sync_state, ptr %32, i32 0, i32 2, !dbg !386
  %34 = getelementptr inbounds %struct.timeutil_sync_instant, ptr %33, i32 0, i32 0, !dbg !387
  %35 = load i64, ptr %34, align 8, !dbg !387
  %36 = load ptr, ptr %2, align 4, !dbg !388
  %37 = getelementptr inbounds %struct.timeutil_sync_state, ptr %36, i32 0, i32 1, !dbg !389
  %38 = getelementptr inbounds %struct.timeutil_sync_instant, ptr %37, i32 0, i32 0, !dbg !390
  %39 = load i64, ptr %38, align 8, !dbg !390
  %40 = sub i64 %35, %39, !dbg !391
  %41 = uitofp i64 %40 to double, !dbg !385
  store double %41, ptr %5, align 8, !dbg !384
  call void @llvm.lifetime.start.p0(i64 8, ptr %6) #5, !dbg !392
  call void @llvm.dbg.declare(metadata ptr %6, metadata !357, metadata !DIExpression()), !dbg !393
  %42 = load ptr, ptr %2, align 4, !dbg !394
  %43 = getelementptr inbounds %struct.timeutil_sync_state, ptr %42, i32 0, i32 2, !dbg !395
  %44 = getelementptr inbounds %struct.timeutil_sync_instant, ptr %43, i32 0, i32 1, !dbg !396
  %45 = load i64, ptr %44, align 8, !dbg !396
  %46 = load ptr, ptr %2, align 4, !dbg !397
  %47 = getelementptr inbounds %struct.timeutil_sync_state, ptr %46, i32 0, i32 1, !dbg !398
  %48 = getelementptr inbounds %struct.timeutil_sync_instant, ptr %47, i32 0, i32 1, !dbg !399
  %49 = load i64, ptr %48, align 8, !dbg !399
  %50 = sub i64 %45, %49, !dbg !400
  %51 = uitofp i64 %50 to double, !dbg !394
  store double %51, ptr %6, align 8, !dbg !393
  %52 = load double, ptr %5, align 8, !dbg !401
  %53 = load ptr, ptr %4, align 4, !dbg !402
  %54 = getelementptr inbounds %struct.timeutil_sync_config, ptr %53, i32 0, i32 1, !dbg !403
  %55 = load i32, ptr %54, align 4, !dbg !403
  %56 = uitofp i32 %55 to double, !dbg !402
  %57 = fmul nnan ninf nsz double %52, %56, !dbg !404
  %58 = load double, ptr %6, align 8, !dbg !405
  %59 = fdiv nnan ninf nsz double %57, %58, !dbg !406
  %60 = load ptr, ptr %4, align 4, !dbg !407
  %61 = getelementptr inbounds %struct.timeutil_sync_config, ptr %60, i32 0, i32 0, !dbg !408
  %62 = load i32, ptr %61, align 4, !dbg !408
  %63 = uitofp i32 %62 to double, !dbg !407
  %64 = fdiv nnan ninf nsz double %59, %63, !dbg !409
  %65 = fptrunc double %64 to float, !dbg !401
  store float %65, ptr %3, align 4, !dbg !410
  call void @llvm.lifetime.end.p0(i64 8, ptr %6) #5, !dbg !411
  call void @llvm.lifetime.end.p0(i64 8, ptr %5) #5, !dbg !411
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #5, !dbg !411
  br label %66, !dbg !412

66:                                               ; preds = %28, %18, %12, %1
  %67 = load float, ptr %3, align 4, !dbg !413
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #5, !dbg !414
  ret float %67, !dbg !415
}

; Function Attrs: nounwind optsize
define hidden i32 @timeutil_sync_ref_from_local(ptr noundef %0, i64 noundef %1, ptr noundef %2) #0 !dbg !416 {
  %4 = alloca ptr, align 4
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !421, metadata !DIExpression()), !dbg !431
  store i64 %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !422, metadata !DIExpression()), !dbg !432
  store ptr %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !423, metadata !DIExpression()), !dbg !433
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #5, !dbg !434
  call void @llvm.dbg.declare(metadata ptr %7, metadata !424, metadata !DIExpression()), !dbg !435
  store i32 -5, ptr %7, align 4, !dbg !435
  %12 = load ptr, ptr %4, align 4, !dbg !436
  %13 = getelementptr inbounds %struct.timeutil_sync_state, ptr %12, i32 0, i32 3, !dbg !437
  %14 = load float, ptr %13, align 8, !dbg !437
  %15 = fcmp nnan ninf nsz ogt float %14, 0.000000e+00, !dbg !438
  br i1 %15, label %16, label %80, !dbg !439

16:                                               ; preds = %3
  %17 = load ptr, ptr %4, align 4, !dbg !440
  %18 = getelementptr inbounds %struct.timeutil_sync_state, ptr %17, i32 0, i32 1, !dbg !441
  %19 = getelementptr inbounds %struct.timeutil_sync_instant, ptr %18, i32 0, i32 0, !dbg !442
  %20 = load i64, ptr %19, align 8, !dbg !442
  %21 = icmp ugt i64 %20, 0, !dbg !443
  br i1 %21, label %22, label %80, !dbg !444

22:                                               ; preds = %16
  %23 = load ptr, ptr %6, align 4, !dbg !445
  %24 = icmp ne ptr %23, null, !dbg !446
  br i1 %24, label %25, label %80, !dbg !447

25:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #5, !dbg !448
  call void @llvm.dbg.declare(metadata ptr %8, metadata !425, metadata !DIExpression()), !dbg !449
  %26 = load ptr, ptr %4, align 4, !dbg !450
  %27 = getelementptr inbounds %struct.timeutil_sync_state, ptr %26, i32 0, i32 0, !dbg !451
  %28 = load ptr, ptr %27, align 8, !dbg !451
  store ptr %28, ptr %8, align 4, !dbg !449
  call void @llvm.lifetime.start.p0(i64 8, ptr %9) #5, !dbg !452
  call void @llvm.dbg.declare(metadata ptr %9, metadata !428, metadata !DIExpression()), !dbg !453
  %29 = load i64, ptr %5, align 8, !dbg !454
  %30 = load ptr, ptr %4, align 4, !dbg !455
  %31 = getelementptr inbounds %struct.timeutil_sync_state, ptr %30, i32 0, i32 1, !dbg !456
  %32 = getelementptr inbounds %struct.timeutil_sync_instant, ptr %31, i32 0, i32 1, !dbg !457
  %33 = load i64, ptr %32, align 8, !dbg !457
  %34 = sub i64 %29, %33, !dbg !458
  store i64 %34, ptr %9, align 8, !dbg !453
  %35 = load ptr, ptr %4, align 4, !dbg !459
  %36 = getelementptr inbounds %struct.timeutil_sync_state, ptr %35, i32 0, i32 3, !dbg !461
  %37 = load float, ptr %36, align 8, !dbg !461
  %38 = fcmp nnan ninf nsz une float %37, 1.000000e+00, !dbg !462
  br i1 %38, label %39, label %48, !dbg !463

39:                                               ; preds = %25
  %40 = load ptr, ptr %4, align 4, !dbg !464
  %41 = getelementptr inbounds %struct.timeutil_sync_state, ptr %40, i32 0, i32 3, !dbg !466
  %42 = load float, ptr %41, align 8, !dbg !466
  %43 = fpext float %42 to double, !dbg !467
  %44 = load i64, ptr %9, align 8, !dbg !468
  %45 = sitofp i64 %44 to double, !dbg !468
  %46 = fmul nnan ninf nsz double %45, %43, !dbg !468
  %47 = fptosi double %46 to i64, !dbg !468
  store i64 %47, ptr %9, align 8, !dbg !468
  br label %48, !dbg !469

48:                                               ; preds = %39, %25
  call void @llvm.lifetime.start.p0(i64 8, ptr %10) #5, !dbg !470
  call void @llvm.dbg.declare(metadata ptr %10, metadata !429, metadata !DIExpression()), !dbg !471
  %49 = load i64, ptr %9, align 8, !dbg !472
  %50 = load ptr, ptr %8, align 4, !dbg !473
  %51 = getelementptr inbounds %struct.timeutil_sync_config, ptr %50, i32 0, i32 0, !dbg !474
  %52 = load i32, ptr %51, align 4, !dbg !474
  %53 = zext i32 %52 to i64, !dbg !473
  %54 = mul nsw i64 %49, %53, !dbg !475
  %55 = load ptr, ptr %8, align 4, !dbg !476
  %56 = getelementptr inbounds %struct.timeutil_sync_config, ptr %55, i32 0, i32 1, !dbg !477
  %57 = load i32, ptr %56, align 4, !dbg !477
  %58 = zext i32 %57 to i64, !dbg !476
  %59 = sdiv i64 %54, %58, !dbg !478
  store i64 %59, ptr %10, align 8, !dbg !471
  call void @llvm.lifetime.start.p0(i64 8, ptr %11) #5, !dbg !479
  call void @llvm.dbg.declare(metadata ptr %11, metadata !430, metadata !DIExpression()), !dbg !480
  %60 = load ptr, ptr %4, align 4, !dbg !481
  %61 = getelementptr inbounds %struct.timeutil_sync_state, ptr %60, i32 0, i32 1, !dbg !482
  %62 = getelementptr inbounds %struct.timeutil_sync_instant, ptr %61, i32 0, i32 0, !dbg !483
  %63 = load i64, ptr %62, align 8, !dbg !483
  %64 = load i64, ptr %10, align 8, !dbg !484
  %65 = add nsw i64 %63, %64, !dbg !485
  store i64 %65, ptr %11, align 8, !dbg !480
  %66 = load i64, ptr %11, align 8, !dbg !486
  %67 = icmp slt i64 %66, 0, !dbg !488
  br i1 %67, label %68, label %71, !dbg !489

68:                                               ; preds = %48
  %69 = load i32, ptr @__aeabi_ERANGE, align 4, !dbg !490
  %70 = sub nsw i32 0, %69, !dbg !492
  store i32 %70, ptr %7, align 4, !dbg !493
  br label %79, !dbg !494

71:                                               ; preds = %48
  %72 = load i64, ptr %11, align 8, !dbg !495
  %73 = load ptr, ptr %6, align 4, !dbg !497
  store i64 %72, ptr %73, align 8, !dbg !498
  %74 = load ptr, ptr %4, align 4, !dbg !499
  %75 = getelementptr inbounds %struct.timeutil_sync_state, ptr %74, i32 0, i32 3, !dbg !500
  %76 = load float, ptr %75, align 8, !dbg !500
  %77 = fcmp nnan ninf nsz une float %76, 1.000000e+00, !dbg !501
  %78 = zext i1 %77 to i32, !dbg !501
  store i32 %78, ptr %7, align 4, !dbg !502
  br label %79

79:                                               ; preds = %71, %68
  call void @llvm.lifetime.end.p0(i64 8, ptr %11) #5, !dbg !503
  call void @llvm.lifetime.end.p0(i64 8, ptr %10) #5, !dbg !503
  call void @llvm.lifetime.end.p0(i64 8, ptr %9) #5, !dbg !503
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #5, !dbg !503
  br label %80, !dbg !504

80:                                               ; preds = %79, %22, %16, %3
  %81 = load i32, ptr %7, align 4, !dbg !505
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #5, !dbg !506
  ret i32 %81, !dbg !507
}

; Function Attrs: nounwind optsize
define hidden i32 @timeutil_sync_local_from_ref(ptr noundef %0, i64 noundef %1, ptr noundef %2) #0 !dbg !508 {
  %4 = alloca ptr, align 4
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !513, metadata !DIExpression()), !dbg !523
  store i64 %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !514, metadata !DIExpression()), !dbg !524
  store ptr %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !515, metadata !DIExpression()), !dbg !525
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #5, !dbg !526
  call void @llvm.dbg.declare(metadata ptr %7, metadata !516, metadata !DIExpression()), !dbg !527
  store i32 -5, ptr %7, align 4, !dbg !527
  %12 = load ptr, ptr %4, align 4, !dbg !528
  %13 = getelementptr inbounds %struct.timeutil_sync_state, ptr %12, i32 0, i32 3, !dbg !529
  %14 = load float, ptr %13, align 8, !dbg !529
  %15 = fcmp nnan ninf nsz ogt float %14, 0.000000e+00, !dbg !530
  br i1 %15, label %16, label %73, !dbg !531

16:                                               ; preds = %3
  %17 = load ptr, ptr %4, align 4, !dbg !532
  %18 = getelementptr inbounds %struct.timeutil_sync_state, ptr %17, i32 0, i32 1, !dbg !533
  %19 = getelementptr inbounds %struct.timeutil_sync_instant, ptr %18, i32 0, i32 0, !dbg !534
  %20 = load i64, ptr %19, align 8, !dbg !534
  %21 = icmp ugt i64 %20, 0, !dbg !535
  br i1 %21, label %22, label %73, !dbg !536

22:                                               ; preds = %16
  %23 = load ptr, ptr %6, align 4, !dbg !537
  %24 = icmp ne ptr %23, null, !dbg !538
  br i1 %24, label %25, label %73, !dbg !539

25:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #5, !dbg !540
  call void @llvm.dbg.declare(metadata ptr %8, metadata !517, metadata !DIExpression()), !dbg !541
  %26 = load ptr, ptr %4, align 4, !dbg !542
  %27 = getelementptr inbounds %struct.timeutil_sync_state, ptr %26, i32 0, i32 0, !dbg !543
  %28 = load ptr, ptr %27, align 8, !dbg !543
  store ptr %28, ptr %8, align 4, !dbg !541
  call void @llvm.lifetime.start.p0(i64 8, ptr %9) #5, !dbg !544
  call void @llvm.dbg.declare(metadata ptr %9, metadata !520, metadata !DIExpression()), !dbg !545
  %29 = load i64, ptr %5, align 8, !dbg !546
  %30 = load ptr, ptr %4, align 4, !dbg !547
  %31 = getelementptr inbounds %struct.timeutil_sync_state, ptr %30, i32 0, i32 1, !dbg !548
  %32 = getelementptr inbounds %struct.timeutil_sync_instant, ptr %31, i32 0, i32 0, !dbg !549
  %33 = load i64, ptr %32, align 8, !dbg !549
  %34 = sub i64 %29, %33, !dbg !550
  store i64 %34, ptr %9, align 8, !dbg !545
  call void @llvm.lifetime.start.p0(i64 8, ptr %10) #5, !dbg !551
  call void @llvm.dbg.declare(metadata ptr %10, metadata !521, metadata !DIExpression()), !dbg !552
  %35 = load i64, ptr %9, align 8, !dbg !553
  %36 = load ptr, ptr %8, align 4, !dbg !554
  %37 = getelementptr inbounds %struct.timeutil_sync_config, ptr %36, i32 0, i32 1, !dbg !555
  %38 = load i32, ptr %37, align 4, !dbg !555
  %39 = zext i32 %38 to i64, !dbg !554
  %40 = mul nsw i64 %35, %39, !dbg !556
  %41 = load ptr, ptr %8, align 4, !dbg !557
  %42 = getelementptr inbounds %struct.timeutil_sync_config, ptr %41, i32 0, i32 0, !dbg !558
  %43 = load i32, ptr %42, align 4, !dbg !558
  %44 = zext i32 %43 to i64, !dbg !557
  %45 = sdiv i64 %40, %44, !dbg !559
  store i64 %45, ptr %10, align 8, !dbg !552
  %46 = load ptr, ptr %4, align 4, !dbg !560
  %47 = getelementptr inbounds %struct.timeutil_sync_state, ptr %46, i32 0, i32 3, !dbg !562
  %48 = load float, ptr %47, align 8, !dbg !562
  %49 = fcmp nnan ninf nsz une float %48, 1.000000e+00, !dbg !563
  br i1 %49, label %50, label %59, !dbg !564

50:                                               ; preds = %25
  %51 = load ptr, ptr %4, align 4, !dbg !565
  %52 = getelementptr inbounds %struct.timeutil_sync_state, ptr %51, i32 0, i32 3, !dbg !567
  %53 = load float, ptr %52, align 8, !dbg !567
  %54 = fpext float %53 to double, !dbg !568
  %55 = load i64, ptr %10, align 8, !dbg !569
  %56 = sitofp i64 %55 to double, !dbg !569
  %57 = fdiv nnan ninf nsz double %56, %54, !dbg !569
  %58 = fptosi double %57 to i64, !dbg !569
  store i64 %58, ptr %10, align 8, !dbg !569
  br label %59, !dbg !570

59:                                               ; preds = %50, %25
  call void @llvm.lifetime.start.p0(i64 8, ptr %11) #5, !dbg !571
  call void @llvm.dbg.declare(metadata ptr %11, metadata !522, metadata !DIExpression()), !dbg !572
  %60 = load ptr, ptr %4, align 4, !dbg !573
  %61 = getelementptr inbounds %struct.timeutil_sync_state, ptr %60, i32 0, i32 1, !dbg !574
  %62 = getelementptr inbounds %struct.timeutil_sync_instant, ptr %61, i32 0, i32 1, !dbg !575
  %63 = load i64, ptr %62, align 8, !dbg !575
  %64 = load i64, ptr %10, align 8, !dbg !576
  %65 = add nsw i64 %63, %64, !dbg !577
  store i64 %65, ptr %11, align 8, !dbg !572
  %66 = load i64, ptr %11, align 8, !dbg !578
  %67 = load ptr, ptr %6, align 4, !dbg !579
  store i64 %66, ptr %67, align 8, !dbg !580
  %68 = load ptr, ptr %4, align 4, !dbg !581
  %69 = getelementptr inbounds %struct.timeutil_sync_state, ptr %68, i32 0, i32 3, !dbg !582
  %70 = load float, ptr %69, align 8, !dbg !582
  %71 = fcmp nnan ninf nsz une float %70, 1.000000e+00, !dbg !583
  %72 = zext i1 %71 to i32, !dbg !583
  store i32 %72, ptr %7, align 4, !dbg !584
  call void @llvm.lifetime.end.p0(i64 8, ptr %11) #5, !dbg !585
  call void @llvm.lifetime.end.p0(i64 8, ptr %10) #5, !dbg !585
  call void @llvm.lifetime.end.p0(i64 8, ptr %9) #5, !dbg !585
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #5, !dbg !585
  br label %73, !dbg !586

73:                                               ; preds = %59, %22, %16, %3
  %74 = load i32, ptr %7, align 4, !dbg !587
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #5, !dbg !588
  ret i32 %74, !dbg !589
}

; Function Attrs: nounwind optsize
define hidden i32 @timeutil_sync_skew_to_ppb(float noundef %0) #0 !dbg !590 {
  %2 = alloca float, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store float %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !594, metadata !DIExpression()), !dbg !597
  call void @llvm.lifetime.start.p0(i64 8, ptr %3) #5, !dbg !598
  call void @llvm.dbg.declare(metadata ptr %3, metadata !595, metadata !DIExpression()), !dbg !599
  %5 = load float, ptr %2, align 4, !dbg !600
  %6 = fpext float %5 to double, !dbg !601
  %7 = fsub nnan ninf nsz double 1.000000e+00, %6, !dbg !602
  %8 = fmul nnan ninf nsz double %7, 1.000000e+09, !dbg !603
  %9 = fptosi double %8 to i64, !dbg !604
  store i64 %9, ptr %3, align 8, !dbg !599
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #5, !dbg !605
  call void @llvm.dbg.declare(metadata ptr %4, metadata !596, metadata !DIExpression()), !dbg !606
  %10 = load i64, ptr %3, align 8, !dbg !607
  %11 = trunc i64 %10 to i32, !dbg !608
  store i32 %11, ptr %4, align 4, !dbg !606
  %12 = load i64, ptr %3, align 8, !dbg !609
  %13 = load i32, ptr %4, align 4, !dbg !610
  %14 = sext i32 %13 to i64, !dbg !610
  %15 = icmp eq i64 %12, %14, !dbg !611
  br i1 %15, label %16, label %18, !dbg !612

16:                                               ; preds = %1
  %17 = load i32, ptr %4, align 4, !dbg !613
  br label %19, !dbg !612

18:                                               ; preds = %1
  br label %19, !dbg !612

19:                                               ; preds = %18, %16
  %20 = phi i32 [ %17, %16 ], [ -2147483648, %18 ], !dbg !612
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #5, !dbg !614
  call void @llvm.lifetime.end.p0(i64 8, ptr %3) #5, !dbg !614
  ret i32 %20, !dbg !615
}

attributes #0 = { nounwind optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind optsize willreturn memory(none) "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind }
attributes #6 = { optsize }
attributes #7 = { nounwind optsize willreturn memory(none) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
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
!18 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
!19 = distinct !DISubprogram(name: "timeutil_timegm64", scope: !20, file: !20, line: 45, type: !21, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !63)
!20 = !DIFile(filename: "lib/os/timeutil.c", directory: "/home/sri/zephyrproject/zephyr")
!21 = !DISubroutineType(types: !22)
!22 = !{!3, !23}
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 32)
!24 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !7, line: 90, size: 352, elements: !26)
!26 = !{!27, !28, !29, !30, !31, !32, !33, !34, !35, !36}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "tm_sec", scope: !25, file: !7, line: 91, baseType: !10, size: 32)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "tm_min", scope: !25, file: !7, line: 93, baseType: !10, size: 32, offset: 32)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "tm_hour", scope: !25, file: !7, line: 94, baseType: !10, size: 32, offset: 64)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mday", scope: !25, file: !7, line: 95, baseType: !10, size: 32, offset: 96)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mon", scope: !25, file: !7, line: 96, baseType: !10, size: 32, offset: 128)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "tm_year", scope: !25, file: !7, line: 97, baseType: !10, size: 32, offset: 160)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "tm_wday", scope: !25, file: !7, line: 98, baseType: !10, size: 32, offset: 192)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "tm_yday", scope: !25, file: !7, line: 99, baseType: !10, size: 32, offset: 224)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "tm_isdst", scope: !25, file: !7, line: 100, baseType: !10, size: 32, offset: 256)
!36 = !DIDerivedType(tag: DW_TAG_member, scope: !25, file: !7, line: 101, baseType: !37, size: 64, offset: 288)
!37 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !25, file: !7, line: 101, size: 64, elements: !38)
!38 = !{!39, !44, !50, !57}
!39 = !DIDerivedType(tag: DW_TAG_member, scope: !37, file: !7, line: 102, baseType: !40, size: 64)
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !37, file: !7, line: 102, size: 64, elements: !41)
!41 = !{!42, !43}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "__extra_1", scope: !40, file: !7, line: 103, baseType: !10, size: 32)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "__extra_2", scope: !40, file: !7, line: 103, baseType: !10, size: 32, offset: 32)
!44 = !DIDerivedType(tag: DW_TAG_member, scope: !37, file: !7, line: 105, baseType: !45, size: 64)
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !37, file: !7, line: 105, size: 64, elements: !46)
!46 = !{!47, !49}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "__extra_1_long", scope: !45, file: !7, line: 106, baseType: !48, size: 32)
!48 = !DIBasicType(name: "long", size: 32, encoding: DW_ATE_signed)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "__extra_2_long", scope: !45, file: !7, line: 106, baseType: !48, size: 32, offset: 32)
!50 = !DIDerivedType(tag: DW_TAG_member, scope: !37, file: !7, line: 108, baseType: !51, size: 64)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !37, file: !7, line: 108, size: 64, elements: !52)
!52 = !{!53, !56}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "__extra_1_cptr", scope: !51, file: !7, line: 109, baseType: !54, size: 32)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 32)
!55 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "__extra_2_cptr", scope: !51, file: !7, line: 109, baseType: !54, size: 32, offset: 32)
!57 = !DIDerivedType(tag: DW_TAG_member, scope: !37, file: !7, line: 111, baseType: !58, size: 64)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !37, file: !7, line: 111, size: 64, elements: !59)
!59 = !{!60, !62}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "__extra_1_vptr", scope: !58, file: !7, line: 112, baseType: !61, size: 32)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "__extra_2_vptr", scope: !58, file: !7, line: 112, baseType: !61, size: 32, offset: 32)
!63 = !{!64, !65, !66, !67, !68, !69}
!64 = !DILocalVariable(name: "tm", arg: 1, scope: !19, file: !20, line: 45, type: !23)
!65 = !DILocalVariable(name: "y", scope: !19, file: !20, line: 47, type: !3)
!66 = !DILocalVariable(name: "m", scope: !19, file: !20, line: 48, type: !8)
!67 = !DILocalVariable(name: "d", scope: !19, file: !20, line: 49, type: !8)
!68 = !DILocalVariable(name: "ndays", scope: !19, file: !20, line: 50, type: !3)
!69 = !DILocalVariable(name: "time", scope: !19, file: !20, line: 51, type: !3)
!70 = !DILocation(line: 45, column: 44, scope: !19)
!71 = !DILocation(line: 47, column: 2, scope: !19)
!72 = !DILocation(line: 47, column: 10, scope: !19)
!73 = !DILocation(line: 47, column: 30, scope: !19)
!74 = !DILocation(line: 47, column: 34, scope: !19)
!75 = !DILocation(line: 47, column: 21, scope: !19)
!76 = !DILocation(line: 47, column: 19, scope: !19)
!77 = !DILocation(line: 48, column: 2, scope: !19)
!78 = !DILocation(line: 48, column: 15, scope: !19)
!79 = !DILocation(line: 48, column: 19, scope: !19)
!80 = !DILocation(line: 48, column: 23, scope: !19)
!81 = !DILocation(line: 48, column: 30, scope: !19)
!82 = !DILocation(line: 49, column: 2, scope: !19)
!83 = !DILocation(line: 49, column: 15, scope: !19)
!84 = !DILocation(line: 49, column: 19, scope: !19)
!85 = !DILocation(line: 49, column: 23, scope: !19)
!86 = !DILocation(line: 49, column: 31, scope: !19)
!87 = !DILocation(line: 50, column: 2, scope: !19)
!88 = !DILocation(line: 50, column: 10, scope: !19)
!89 = !DILocation(line: 50, column: 39, scope: !19)
!90 = !DILocation(line: 50, column: 42, scope: !19)
!91 = !DILocation(line: 50, column: 45, scope: !19)
!92 = !DILocation(line: 50, column: 18, scope: !19)
!93 = !DILocation(line: 51, column: 2, scope: !19)
!94 = !DILocation(line: 51, column: 10, scope: !19)
!95 = !DILocation(line: 51, column: 17, scope: !19)
!96 = !DILocation(line: 51, column: 21, scope: !19)
!97 = !DILocation(line: 53, column: 18, scope: !19)
!98 = !DILocation(line: 53, column: 22, scope: !19)
!99 = !DILocation(line: 53, column: 38, scope: !19)
!100 = !DILocation(line: 53, column: 42, scope: !19)
!101 = !DILocation(line: 53, column: 36, scope: !19)
!102 = !DILocation(line: 53, column: 29, scope: !19)
!103 = !DILocation(line: 53, column: 15, scope: !19)
!104 = !DILocation(line: 53, column: 7, scope: !19)
!105 = !DILocation(line: 54, column: 20, scope: !19)
!106 = !DILocation(line: 54, column: 18, scope: !19)
!107 = !DILocation(line: 54, column: 7, scope: !19)
!108 = !DILocation(line: 56, column: 9, scope: !19)
!109 = !DILocation(line: 57, column: 1, scope: !19)
!110 = !DILocation(line: 56, column: 2, scope: !19)
!111 = distinct !DISubprogram(name: "time_days_from_civil", scope: !20, file: !20, line: 31, type: !112, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !114)
!112 = !DISubroutineType(types: !113)
!113 = !{!3, !3, !8, !8}
!114 = !{!115, !116, !117, !118, !119, !120, !121}
!115 = !DILocalVariable(name: "y", arg: 1, scope: !111, file: !20, line: 31, type: !3)
!116 = !DILocalVariable(name: "m", arg: 2, scope: !111, file: !20, line: 32, type: !8)
!117 = !DILocalVariable(name: "d", arg: 3, scope: !111, file: !20, line: 33, type: !8)
!118 = !DILocalVariable(name: "era", scope: !111, file: !20, line: 37, type: !3)
!119 = !DILocalVariable(name: "yoe", scope: !111, file: !20, line: 38, type: !8)
!120 = !DILocalVariable(name: "doy", scope: !111, file: !20, line: 39, type: !8)
!121 = !DILocalVariable(name: "doe", scope: !111, file: !20, line: 40, type: !8)
!122 = !DILocation(line: 31, column: 45, scope: !111)
!123 = !DILocation(line: 32, column: 22, scope: !111)
!124 = !DILocation(line: 33, column: 22, scope: !111)
!125 = !DILocation(line: 35, column: 7, scope: !111)
!126 = !DILocation(line: 35, column: 9, scope: !111)
!127 = !DILocation(line: 35, column: 4, scope: !111)
!128 = !DILocation(line: 37, column: 2, scope: !111)
!129 = !DILocation(line: 37, column: 10, scope: !111)
!130 = !DILocation(line: 37, column: 17, scope: !111)
!131 = !DILocation(line: 37, column: 19, scope: !111)
!132 = !DILocation(line: 37, column: 26, scope: !111)
!133 = !DILocation(line: 37, column: 30, scope: !111)
!134 = !DILocation(line: 37, column: 32, scope: !111)
!135 = !DILocation(line: 37, column: 39, scope: !111)
!136 = !DILocation(line: 38, column: 2, scope: !111)
!137 = !DILocation(line: 38, column: 15, scope: !111)
!138 = !DILocation(line: 38, column: 21, scope: !111)
!139 = !DILocation(line: 38, column: 25, scope: !111)
!140 = !DILocation(line: 38, column: 29, scope: !111)
!141 = !DILocation(line: 38, column: 23, scope: !111)
!142 = !DILocation(line: 39, column: 2, scope: !111)
!143 = !DILocation(line: 39, column: 15, scope: !111)
!144 = !DILocation(line: 39, column: 30, scope: !111)
!145 = !DILocation(line: 39, column: 35, scope: !111)
!146 = !DILocation(line: 39, column: 37, scope: !111)
!147 = !DILocation(line: 39, column: 32, scope: !111)
!148 = !DILocation(line: 39, column: 27, scope: !111)
!149 = !DILocation(line: 39, column: 52, scope: !111)
!150 = !DILocation(line: 39, column: 58, scope: !111)
!151 = !DILocation(line: 39, column: 65, scope: !111)
!152 = !DILocation(line: 39, column: 63, scope: !111)
!153 = !DILocation(line: 40, column: 2, scope: !111)
!154 = !DILocation(line: 40, column: 15, scope: !111)
!155 = !DILocation(line: 40, column: 21, scope: !111)
!156 = !DILocation(line: 40, column: 25, scope: !111)
!157 = !DILocation(line: 40, column: 34, scope: !111)
!158 = !DILocation(line: 40, column: 38, scope: !111)
!159 = !DILocation(line: 40, column: 32, scope: !111)
!160 = !DILocation(line: 40, column: 45, scope: !111)
!161 = !DILocation(line: 40, column: 49, scope: !111)
!162 = !DILocation(line: 40, column: 43, scope: !111)
!163 = !DILocation(line: 40, column: 58, scope: !111)
!164 = !DILocation(line: 40, column: 56, scope: !111)
!165 = !DILocation(line: 42, column: 9, scope: !111)
!166 = !DILocation(line: 42, column: 13, scope: !111)
!167 = !DILocation(line: 42, column: 32, scope: !111)
!168 = !DILocation(line: 42, column: 24, scope: !111)
!169 = !DILocation(line: 42, column: 22, scope: !111)
!170 = !DILocation(line: 42, column: 36, scope: !111)
!171 = !DILocation(line: 43, column: 1, scope: !111)
!172 = !DILocation(line: 42, column: 2, scope: !111)
!173 = distinct !DISubprogram(name: "timeutil_timegm", scope: !20, file: !20, line: 59, type: !174, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !176)
!174 = !DISubroutineType(types: !175)
!175 = !{!6, !23}
!176 = !{!177, !178, !179}
!177 = !DILocalVariable(name: "tm", arg: 1, scope: !173, file: !20, line: 59, type: !23)
!178 = !DILocalVariable(name: "time", scope: !173, file: !20, line: 61, type: !3)
!179 = !DILocalVariable(name: "rv", scope: !173, file: !20, line: 62, type: !6)
!180 = !DILocation(line: 59, column: 41, scope: !173)
!181 = !DILocation(line: 61, column: 2, scope: !173)
!182 = !DILocation(line: 61, column: 10, scope: !173)
!183 = !DILocation(line: 61, column: 35, scope: !173)
!184 = !DILocation(line: 61, column: 17, scope: !173)
!185 = !DILocation(line: 62, column: 2, scope: !173)
!186 = !DILocation(line: 62, column: 9, scope: !173)
!187 = !DILocation(line: 62, column: 22, scope: !173)
!188 = !DILocation(line: 62, column: 14, scope: !173)
!189 = !DILocation(line: 64, column: 5, scope: !173)
!190 = !DILocation(line: 64, column: 27, scope: !173)
!191 = !DILocation(line: 66, column: 11, scope: !192)
!192 = distinct !DILexicalBlock(scope: !173, file: !20, line: 65, column: 6)
!193 = !DILocation(line: 66, column: 16, scope: !192)
!194 = !DILocation(line: 67, column: 3, scope: !192)
!195 = !DILocation(line: 67, column: 7, scope: !192)
!196 = !DILocation(line: 67, column: 12, scope: !192)
!197 = !DILocation(line: 65, column: 6, scope: !173)
!198 = !DILocation(line: 68, column: 31, scope: !199)
!199 = distinct !DILexicalBlock(scope: !192, file: !20, line: 67, column: 37)
!200 = !DILocation(line: 68, column: 6, scope: !199)
!201 = !DILocation(line: 68, column: 28, scope: !199)
!202 = !DILocation(line: 69, column: 6, scope: !199)
!203 = !DILocation(line: 70, column: 2, scope: !199)
!204 = !DILocation(line: 72, column: 9, scope: !173)
!205 = !DILocation(line: 73, column: 1, scope: !173)
!206 = !DILocation(line: 72, column: 2, scope: !173)
!207 = !DISubprogram(name: "__aeabi_errno_addr", scope: !208, file: !208, line: 32, type: !209, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !213)
!208 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/errno.h", directory: "")
!209 = !DISubroutineType(types: !210)
!210 = !{!211}
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 32)
!212 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !10)
!213 = !{}
!214 = distinct !DISubprogram(name: "timeutil_sync_state_update", scope: !20, file: !20, line: 75, type: !215, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !241)
!215 = !DISubroutineType(types: !216)
!216 = !{!10, !217, !239}
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 32)
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeutil_sync_state", file: !219, line: 139, size: 384, elements: !220)
!219 = !DIFile(filename: "include/zephyr/sys/timeutil.h", directory: "/home/sri/zephyrproject/zephyr")
!220 = !{!221, !229, !236, !237}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !218, file: !219, line: 141, baseType: !222, size: 32)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 32)
!223 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !224)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeutil_sync_config", file: !219, line: 83, size: 64, elements: !225)
!225 = !{!226, !228}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "ref_Hz", scope: !224, file: !219, line: 91, baseType: !227, size: 32)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !4, line: 64, baseType: !8)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "local_Hz", scope: !224, file: !219, line: 104, baseType: !227, size: 32, offset: 32)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !218, file: !219, line: 144, baseType: !230, size: 128, offset: 64)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeutil_sync_instant", file: !219, line: 114, size: 128, elements: !231)
!231 = !{!232, !235}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !230, file: !219, line: 120, baseType: !233, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !4, line: 65, baseType: !234)
!234 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "local", scope: !230, file: !219, line: 126, baseType: !233, size: 64, offset: 64)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "latest", scope: !218, file: !219, line: 150, baseType: !230, size: 128, offset: 192)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "skew", scope: !218, file: !219, line: 167, baseType: !238, size: 32, offset: 320)
!238 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 32)
!240 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !230)
!241 = !{!242, !243, !244}
!242 = !DILocalVariable(name: "tsp", arg: 1, scope: !214, file: !20, line: 75, type: !217)
!243 = !DILocalVariable(name: "inst", arg: 2, scope: !214, file: !20, line: 76, type: !239)
!244 = !DILocalVariable(name: "rv", scope: !214, file: !20, line: 78, type: !10)
!245 = !DILocation(line: 75, column: 60, scope: !214)
!246 = !DILocation(line: 76, column: 47, scope: !214)
!247 = !DILocation(line: 78, column: 2, scope: !214)
!248 = !DILocation(line: 78, column: 6, scope: !214)
!249 = !DILocation(line: 80, column: 8, scope: !250)
!250 = distinct !DILexicalBlock(scope: !214, file: !20, line: 80, column: 6)
!251 = !DILocation(line: 80, column: 13, scope: !250)
!252 = !DILocation(line: 80, column: 18, scope: !250)
!253 = !DILocation(line: 80, column: 22, scope: !250)
!254 = !DILocation(line: 80, column: 28, scope: !250)
!255 = !DILocation(line: 80, column: 32, scope: !250)
!256 = !DILocation(line: 80, column: 38, scope: !250)
!257 = !DILocation(line: 80, column: 42, scope: !250)
!258 = !DILocation(line: 81, column: 6, scope: !250)
!259 = !DILocation(line: 81, column: 11, scope: !250)
!260 = !DILocation(line: 81, column: 17, scope: !250)
!261 = !DILocation(line: 81, column: 23, scope: !250)
!262 = !DILocation(line: 81, column: 28, scope: !250)
!263 = !DILocation(line: 81, column: 33, scope: !250)
!264 = !DILocation(line: 81, column: 21, scope: !250)
!265 = !DILocation(line: 82, column: 3, scope: !250)
!266 = !DILocation(line: 82, column: 7, scope: !250)
!267 = !DILocation(line: 82, column: 13, scope: !250)
!268 = !DILocation(line: 82, column: 21, scope: !250)
!269 = !DILocation(line: 82, column: 26, scope: !250)
!270 = !DILocation(line: 82, column: 31, scope: !250)
!271 = !DILocation(line: 82, column: 19, scope: !250)
!272 = !DILocation(line: 80, column: 6, scope: !214)
!273 = !DILocation(line: 83, column: 7, scope: !274)
!274 = distinct !DILexicalBlock(scope: !275, file: !20, line: 83, column: 7)
!275 = distinct !DILexicalBlock(scope: !250, file: !20, line: 82, column: 40)
!276 = !DILocation(line: 83, column: 12, scope: !274)
!277 = !DILocation(line: 83, column: 17, scope: !274)
!278 = !DILocation(line: 83, column: 21, scope: !274)
!279 = !DILocation(line: 83, column: 7, scope: !275)
!280 = !DILocation(line: 84, column: 4, scope: !281)
!281 = distinct !DILexicalBlock(scope: !274, file: !20, line: 83, column: 27)
!282 = !DILocation(line: 84, column: 9, scope: !281)
!283 = !DILocation(line: 84, column: 17, scope: !281)
!284 = !DILocation(line: 84, column: 16, scope: !281)
!285 = !DILocation(line: 85, column: 4, scope: !281)
!286 = !DILocation(line: 85, column: 9, scope: !281)
!287 = !DILocation(line: 85, column: 48, scope: !281)
!288 = !DILocation(line: 85, column: 18, scope: !281)
!289 = !DILocation(line: 86, column: 4, scope: !281)
!290 = !DILocation(line: 86, column: 9, scope: !281)
!291 = !DILocation(line: 86, column: 14, scope: !281)
!292 = !DILocation(line: 87, column: 7, scope: !281)
!293 = !DILocation(line: 88, column: 3, scope: !281)
!294 = !DILocation(line: 89, column: 4, scope: !295)
!295 = distinct !DILexicalBlock(scope: !274, file: !20, line: 88, column: 10)
!296 = !DILocation(line: 89, column: 9, scope: !295)
!297 = !DILocation(line: 89, column: 19, scope: !295)
!298 = !DILocation(line: 89, column: 18, scope: !295)
!299 = !DILocation(line: 90, column: 7, scope: !295)
!300 = !DILocation(line: 92, column: 2, scope: !275)
!301 = !DILocation(line: 94, column: 9, scope: !214)
!302 = !DILocation(line: 95, column: 1, scope: !214)
!303 = !DILocation(line: 94, column: 2, scope: !214)
!304 = distinct !DISubprogram(name: "timeutil_sync_state_set_skew", scope: !20, file: !20, line: 97, type: !305, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !307)
!305 = !DISubroutineType(types: !306)
!306 = !{!10, !217, !238, !239}
!307 = !{!308, !309, !310, !311}
!308 = !DILocalVariable(name: "tsp", arg: 1, scope: !304, file: !20, line: 97, type: !217)
!309 = !DILocalVariable(name: "skew", arg: 2, scope: !304, file: !20, line: 97, type: !238)
!310 = !DILocalVariable(name: "base", arg: 3, scope: !304, file: !20, line: 98, type: !239)
!311 = !DILocalVariable(name: "rv", scope: !304, file: !20, line: 100, type: !10)
!312 = !DILocation(line: 97, column: 62, scope: !304)
!313 = !DILocation(line: 97, column: 73, scope: !304)
!314 = !DILocation(line: 98, column: 42, scope: !304)
!315 = !DILocation(line: 100, column: 2, scope: !304)
!316 = !DILocation(line: 100, column: 6, scope: !304)
!317 = !DILocation(line: 102, column: 6, scope: !318)
!318 = distinct !DILexicalBlock(scope: !304, file: !20, line: 102, column: 6)
!319 = !DILocation(line: 102, column: 11, scope: !318)
!320 = !DILocation(line: 102, column: 6, scope: !304)
!321 = !DILocation(line: 103, column: 15, scope: !322)
!322 = distinct !DILexicalBlock(scope: !318, file: !20, line: 102, column: 16)
!323 = !DILocation(line: 103, column: 3, scope: !322)
!324 = !DILocation(line: 103, column: 8, scope: !322)
!325 = !DILocation(line: 103, column: 13, scope: !322)
!326 = !DILocation(line: 104, column: 7, scope: !327)
!327 = distinct !DILexicalBlock(scope: !322, file: !20, line: 104, column: 7)
!328 = !DILocation(line: 104, column: 12, scope: !327)
!329 = !DILocation(line: 104, column: 7, scope: !322)
!330 = !DILocation(line: 105, column: 4, scope: !331)
!331 = distinct !DILexicalBlock(scope: !327, file: !20, line: 104, column: 18)
!332 = !DILocation(line: 105, column: 9, scope: !331)
!333 = !DILocation(line: 105, column: 17, scope: !331)
!334 = !DILocation(line: 105, column: 16, scope: !331)
!335 = !DILocation(line: 106, column: 4, scope: !331)
!336 = !DILocation(line: 106, column: 9, scope: !331)
!337 = !DILocation(line: 106, column: 48, scope: !331)
!338 = !DILocation(line: 106, column: 18, scope: !331)
!339 = !DILocation(line: 107, column: 3, scope: !331)
!340 = !DILocation(line: 108, column: 6, scope: !322)
!341 = !DILocation(line: 109, column: 2, scope: !322)
!342 = !DILocation(line: 111, column: 9, scope: !304)
!343 = !DILocation(line: 112, column: 1, scope: !304)
!344 = !DILocation(line: 111, column: 2, scope: !304)
!345 = distinct !DISubprogram(name: "timeutil_sync_estimate_skew", scope: !20, file: !20, line: 114, type: !346, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !350)
!346 = !DISubroutineType(types: !347)
!347 = !{!238, !348}
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 32)
!349 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !218)
!350 = !{!351, !352, !353, !356, !357}
!351 = !DILocalVariable(name: "tsp", arg: 1, scope: !345, file: !20, line: 114, type: !348)
!352 = !DILocalVariable(name: "rv", scope: !345, file: !20, line: 116, type: !238)
!353 = !DILocalVariable(name: "cfg", scope: !354, file: !20, line: 120, type: !222)
!354 = distinct !DILexicalBlock(scope: !355, file: !20, line: 119, column: 48)
!355 = distinct !DILexicalBlock(scope: !345, file: !20, line: 118, column: 6)
!356 = !DILocalVariable(name: "ref_delta", scope: !354, file: !20, line: 121, type: !9)
!357 = !DILocalVariable(name: "local_delta", scope: !354, file: !20, line: 122, type: !9)
!358 = !DILocation(line: 114, column: 69, scope: !345)
!359 = !DILocation(line: 116, column: 2, scope: !345)
!360 = !DILocation(line: 116, column: 8, scope: !345)
!361 = !DILocation(line: 118, column: 7, scope: !355)
!362 = !DILocation(line: 118, column: 12, scope: !355)
!363 = !DILocation(line: 118, column: 17, scope: !355)
!364 = !DILocation(line: 118, column: 21, scope: !355)
!365 = !DILocation(line: 118, column: 27, scope: !355)
!366 = !DILocation(line: 118, column: 31, scope: !355)
!367 = !DILocation(line: 118, column: 36, scope: !355)
!368 = !DILocation(line: 118, column: 43, scope: !355)
!369 = !DILocation(line: 118, column: 47, scope: !355)
!370 = !DILocation(line: 119, column: 6, scope: !355)
!371 = !DILocation(line: 119, column: 10, scope: !355)
!372 = !DILocation(line: 119, column: 15, scope: !355)
!373 = !DILocation(line: 119, column: 22, scope: !355)
!374 = !DILocation(line: 119, column: 30, scope: !355)
!375 = !DILocation(line: 119, column: 35, scope: !355)
!376 = !DILocation(line: 119, column: 40, scope: !355)
!377 = !DILocation(line: 119, column: 28, scope: !355)
!378 = !DILocation(line: 118, column: 6, scope: !345)
!379 = !DILocation(line: 120, column: 3, scope: !354)
!380 = !DILocation(line: 120, column: 38, scope: !354)
!381 = !DILocation(line: 120, column: 44, scope: !354)
!382 = !DILocation(line: 120, column: 49, scope: !354)
!383 = !DILocation(line: 121, column: 3, scope: !354)
!384 = !DILocation(line: 121, column: 10, scope: !354)
!385 = !DILocation(line: 121, column: 22, scope: !354)
!386 = !DILocation(line: 121, column: 27, scope: !354)
!387 = !DILocation(line: 121, column: 34, scope: !354)
!388 = !DILocation(line: 121, column: 40, scope: !354)
!389 = !DILocation(line: 121, column: 45, scope: !354)
!390 = !DILocation(line: 121, column: 50, scope: !354)
!391 = !DILocation(line: 121, column: 38, scope: !354)
!392 = !DILocation(line: 122, column: 3, scope: !354)
!393 = !DILocation(line: 122, column: 10, scope: !354)
!394 = !DILocation(line: 122, column: 24, scope: !354)
!395 = !DILocation(line: 122, column: 29, scope: !354)
!396 = !DILocation(line: 122, column: 36, scope: !354)
!397 = !DILocation(line: 122, column: 44, scope: !354)
!398 = !DILocation(line: 122, column: 49, scope: !354)
!399 = !DILocation(line: 122, column: 54, scope: !354)
!400 = !DILocation(line: 122, column: 42, scope: !354)
!401 = !DILocation(line: 124, column: 8, scope: !354)
!402 = !DILocation(line: 124, column: 20, scope: !354)
!403 = !DILocation(line: 124, column: 25, scope: !354)
!404 = !DILocation(line: 124, column: 18, scope: !354)
!405 = !DILocation(line: 124, column: 36, scope: !354)
!406 = !DILocation(line: 124, column: 34, scope: !354)
!407 = !DILocation(line: 124, column: 50, scope: !354)
!408 = !DILocation(line: 124, column: 55, scope: !354)
!409 = !DILocation(line: 124, column: 48, scope: !354)
!410 = !DILocation(line: 124, column: 6, scope: !354)
!411 = !DILocation(line: 125, column: 2, scope: !355)
!412 = !DILocation(line: 125, column: 2, scope: !354)
!413 = !DILocation(line: 127, column: 9, scope: !345)
!414 = !DILocation(line: 128, column: 1, scope: !345)
!415 = !DILocation(line: 127, column: 2, scope: !345)
!416 = distinct !DISubprogram(name: "timeutil_sync_ref_from_local", scope: !20, file: !20, line: 130, type: !417, scopeLine: 132, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !420)
!417 = !DISubroutineType(types: !418)
!418 = !{!10, !348, !233, !419}
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 32)
!420 = !{!421, !422, !423, !424, !425, !428, !429, !430}
!421 = !DILocalVariable(name: "tsp", arg: 1, scope: !416, file: !20, line: 130, type: !348)
!422 = !DILocalVariable(name: "local", arg: 2, scope: !416, file: !20, line: 131, type: !233)
!423 = !DILocalVariable(name: "refp", arg: 3, scope: !416, file: !20, line: 131, type: !419)
!424 = !DILocalVariable(name: "rv", scope: !416, file: !20, line: 133, type: !10)
!425 = !DILocalVariable(name: "cfg", scope: !426, file: !20, line: 136, type: !222)
!426 = distinct !DILexicalBlock(scope: !427, file: !20, line: 135, column: 61)
!427 = distinct !DILexicalBlock(scope: !416, file: !20, line: 135, column: 6)
!428 = !DILocalVariable(name: "local_delta", scope: !426, file: !20, line: 137, type: !3)
!429 = !DILocalVariable(name: "ref_delta", scope: !426, file: !20, line: 144, type: !3)
!430 = !DILocalVariable(name: "ref_abs", scope: !426, file: !20, line: 145, type: !3)
!431 = !DILocation(line: 130, column: 68, scope: !416)
!432 = !DILocation(line: 131, column: 15, scope: !416)
!433 = !DILocation(line: 131, column: 32, scope: !416)
!434 = !DILocation(line: 133, column: 2, scope: !416)
!435 = !DILocation(line: 133, column: 6, scope: !416)
!436 = !DILocation(line: 135, column: 7, scope: !427)
!437 = !DILocation(line: 135, column: 12, scope: !427)
!438 = !DILocation(line: 135, column: 17, scope: !427)
!439 = !DILocation(line: 135, column: 22, scope: !427)
!440 = !DILocation(line: 135, column: 26, scope: !427)
!441 = !DILocation(line: 135, column: 31, scope: !427)
!442 = !DILocation(line: 135, column: 36, scope: !427)
!443 = !DILocation(line: 135, column: 40, scope: !427)
!444 = !DILocation(line: 135, column: 45, scope: !427)
!445 = !DILocation(line: 135, column: 49, scope: !427)
!446 = !DILocation(line: 135, column: 54, scope: !427)
!447 = !DILocation(line: 135, column: 6, scope: !416)
!448 = !DILocation(line: 136, column: 3, scope: !426)
!449 = !DILocation(line: 136, column: 38, scope: !426)
!450 = !DILocation(line: 136, column: 44, scope: !426)
!451 = !DILocation(line: 136, column: 49, scope: !426)
!452 = !DILocation(line: 137, column: 3, scope: !426)
!453 = !DILocation(line: 137, column: 11, scope: !426)
!454 = !DILocation(line: 137, column: 25, scope: !426)
!455 = !DILocation(line: 137, column: 33, scope: !426)
!456 = !DILocation(line: 137, column: 38, scope: !426)
!457 = !DILocation(line: 137, column: 43, scope: !426)
!458 = !DILocation(line: 137, column: 31, scope: !426)
!459 = !DILocation(line: 141, column: 7, scope: !460)
!460 = distinct !DILexicalBlock(scope: !426, file: !20, line: 141, column: 7)
!461 = !DILocation(line: 141, column: 12, scope: !460)
!462 = !DILocation(line: 141, column: 17, scope: !460)
!463 = !DILocation(line: 141, column: 7, scope: !426)
!464 = !DILocation(line: 142, column: 27, scope: !465)
!465 = distinct !DILexicalBlock(scope: !460, file: !20, line: 141, column: 26)
!466 = !DILocation(line: 142, column: 32, scope: !465)
!467 = !DILocation(line: 142, column: 19, scope: !465)
!468 = !DILocation(line: 142, column: 16, scope: !465)
!469 = !DILocation(line: 143, column: 3, scope: !465)
!470 = !DILocation(line: 144, column: 3, scope: !426)
!471 = !DILocation(line: 144, column: 11, scope: !426)
!472 = !DILocation(line: 144, column: 23, scope: !426)
!473 = !DILocation(line: 144, column: 37, scope: !426)
!474 = !DILocation(line: 144, column: 42, scope: !426)
!475 = !DILocation(line: 144, column: 35, scope: !426)
!476 = !DILocation(line: 144, column: 51, scope: !426)
!477 = !DILocation(line: 144, column: 56, scope: !426)
!478 = !DILocation(line: 144, column: 49, scope: !426)
!479 = !DILocation(line: 145, column: 3, scope: !426)
!480 = !DILocation(line: 145, column: 11, scope: !426)
!481 = !DILocation(line: 145, column: 30, scope: !426)
!482 = !DILocation(line: 145, column: 35, scope: !426)
!483 = !DILocation(line: 145, column: 40, scope: !426)
!484 = !DILocation(line: 145, column: 46, scope: !426)
!485 = !DILocation(line: 145, column: 44, scope: !426)
!486 = !DILocation(line: 147, column: 7, scope: !487)
!487 = distinct !DILexicalBlock(scope: !426, file: !20, line: 147, column: 7)
!488 = !DILocation(line: 147, column: 15, scope: !487)
!489 = !DILocation(line: 147, column: 7, scope: !426)
!490 = !DILocation(line: 148, column: 11, scope: !491)
!491 = distinct !DILexicalBlock(scope: !487, file: !20, line: 147, column: 20)
!492 = !DILocation(line: 148, column: 9, scope: !491)
!493 = !DILocation(line: 148, column: 7, scope: !491)
!494 = !DILocation(line: 149, column: 3, scope: !491)
!495 = !DILocation(line: 150, column: 12, scope: !496)
!496 = distinct !DILexicalBlock(scope: !487, file: !20, line: 149, column: 10)
!497 = !DILocation(line: 150, column: 5, scope: !496)
!498 = !DILocation(line: 150, column: 10, scope: !496)
!499 = !DILocation(line: 151, column: 15, scope: !496)
!500 = !DILocation(line: 151, column: 20, scope: !496)
!501 = !DILocation(line: 151, column: 25, scope: !496)
!502 = !DILocation(line: 151, column: 7, scope: !496)
!503 = !DILocation(line: 153, column: 2, scope: !427)
!504 = !DILocation(line: 153, column: 2, scope: !426)
!505 = !DILocation(line: 155, column: 9, scope: !416)
!506 = !DILocation(line: 156, column: 1, scope: !416)
!507 = !DILocation(line: 155, column: 2, scope: !416)
!508 = distinct !DISubprogram(name: "timeutil_sync_local_from_ref", scope: !20, file: !20, line: 158, type: !509, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !512)
!509 = !DISubroutineType(types: !510)
!510 = !{!10, !348, !233, !511}
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3, size: 32)
!512 = !{!513, !514, !515, !516, !517, !520, !521, !522}
!513 = !DILocalVariable(name: "tsp", arg: 1, scope: !508, file: !20, line: 158, type: !348)
!514 = !DILocalVariable(name: "ref", arg: 2, scope: !508, file: !20, line: 159, type: !233)
!515 = !DILocalVariable(name: "localp", arg: 3, scope: !508, file: !20, line: 159, type: !511)
!516 = !DILocalVariable(name: "rv", scope: !508, file: !20, line: 161, type: !10)
!517 = !DILocalVariable(name: "cfg", scope: !518, file: !20, line: 164, type: !222)
!518 = distinct !DILexicalBlock(scope: !519, file: !20, line: 163, column: 63)
!519 = distinct !DILexicalBlock(scope: !508, file: !20, line: 163, column: 6)
!520 = !DILocalVariable(name: "ref_delta", scope: !518, file: !20, line: 165, type: !3)
!521 = !DILocalVariable(name: "local_delta", scope: !518, file: !20, line: 169, type: !3)
!522 = !DILocalVariable(name: "local_abs", scope: !518, file: !20, line: 174, type: !3)
!523 = !DILocation(line: 158, column: 68, scope: !508)
!524 = !DILocation(line: 159, column: 15, scope: !508)
!525 = !DILocation(line: 159, column: 29, scope: !508)
!526 = !DILocation(line: 161, column: 2, scope: !508)
!527 = !DILocation(line: 161, column: 6, scope: !508)
!528 = !DILocation(line: 163, column: 7, scope: !519)
!529 = !DILocation(line: 163, column: 12, scope: !519)
!530 = !DILocation(line: 163, column: 17, scope: !519)
!531 = !DILocation(line: 163, column: 22, scope: !519)
!532 = !DILocation(line: 163, column: 26, scope: !519)
!533 = !DILocation(line: 163, column: 31, scope: !519)
!534 = !DILocation(line: 163, column: 36, scope: !519)
!535 = !DILocation(line: 163, column: 40, scope: !519)
!536 = !DILocation(line: 163, column: 45, scope: !519)
!537 = !DILocation(line: 163, column: 49, scope: !519)
!538 = !DILocation(line: 163, column: 56, scope: !519)
!539 = !DILocation(line: 163, column: 6, scope: !508)
!540 = !DILocation(line: 164, column: 3, scope: !518)
!541 = !DILocation(line: 164, column: 38, scope: !518)
!542 = !DILocation(line: 164, column: 44, scope: !518)
!543 = !DILocation(line: 164, column: 49, scope: !518)
!544 = !DILocation(line: 165, column: 3, scope: !518)
!545 = !DILocation(line: 165, column: 11, scope: !518)
!546 = !DILocation(line: 165, column: 33, scope: !518)
!547 = !DILocation(line: 165, column: 39, scope: !518)
!548 = !DILocation(line: 165, column: 44, scope: !518)
!549 = !DILocation(line: 165, column: 49, scope: !518)
!550 = !DILocation(line: 165, column: 37, scope: !518)
!551 = !DILocation(line: 169, column: 3, scope: !518)
!552 = !DILocation(line: 169, column: 11, scope: !518)
!553 = !DILocation(line: 169, column: 26, scope: !518)
!554 = !DILocation(line: 169, column: 38, scope: !518)
!555 = !DILocation(line: 169, column: 43, scope: !518)
!556 = !DILocation(line: 169, column: 36, scope: !518)
!557 = !DILocation(line: 169, column: 55, scope: !518)
!558 = !DILocation(line: 169, column: 60, scope: !518)
!559 = !DILocation(line: 169, column: 53, scope: !518)
!560 = !DILocation(line: 171, column: 7, scope: !561)
!561 = distinct !DILexicalBlock(scope: !518, file: !20, line: 171, column: 7)
!562 = !DILocation(line: 171, column: 12, scope: !561)
!563 = !DILocation(line: 171, column: 17, scope: !561)
!564 = !DILocation(line: 171, column: 7, scope: !518)
!565 = !DILocation(line: 172, column: 27, scope: !566)
!566 = distinct !DILexicalBlock(scope: !561, file: !20, line: 171, column: 26)
!567 = !DILocation(line: 172, column: 32, scope: !566)
!568 = !DILocation(line: 172, column: 19, scope: !566)
!569 = !DILocation(line: 172, column: 16, scope: !566)
!570 = !DILocation(line: 173, column: 3, scope: !566)
!571 = !DILocation(line: 174, column: 3, scope: !518)
!572 = !DILocation(line: 174, column: 11, scope: !518)
!573 = !DILocation(line: 174, column: 32, scope: !518)
!574 = !DILocation(line: 174, column: 37, scope: !518)
!575 = !DILocation(line: 174, column: 42, scope: !518)
!576 = !DILocation(line: 175, column: 20, scope: !518)
!577 = !DILocation(line: 175, column: 9, scope: !518)
!578 = !DILocation(line: 177, column: 13, scope: !518)
!579 = !DILocation(line: 177, column: 4, scope: !518)
!580 = !DILocation(line: 177, column: 11, scope: !518)
!581 = !DILocation(line: 178, column: 14, scope: !518)
!582 = !DILocation(line: 178, column: 19, scope: !518)
!583 = !DILocation(line: 178, column: 24, scope: !518)
!584 = !DILocation(line: 178, column: 6, scope: !518)
!585 = !DILocation(line: 179, column: 2, scope: !519)
!586 = !DILocation(line: 179, column: 2, scope: !518)
!587 = !DILocation(line: 181, column: 9, scope: !508)
!588 = !DILocation(line: 182, column: 1, scope: !508)
!589 = !DILocation(line: 181, column: 2, scope: !508)
!590 = distinct !DISubprogram(name: "timeutil_sync_skew_to_ppb", scope: !20, file: !20, line: 184, type: !591, scopeLine: 185, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !593)
!591 = !DISubroutineType(types: !592)
!592 = !{!11, !238}
!593 = !{!594, !595, !596}
!594 = !DILocalVariable(name: "skew", arg: 1, scope: !590, file: !20, line: 184, type: !238)
!595 = !DILocalVariable(name: "ppb64", scope: !590, file: !20, line: 186, type: !3)
!596 = !DILocalVariable(name: "ppb32", scope: !590, file: !20, line: 187, type: !11)
!597 = !DILocation(line: 184, column: 41, scope: !590)
!598 = !DILocation(line: 186, column: 2, scope: !590)
!599 = !DILocation(line: 186, column: 10, scope: !590)
!600 = !DILocation(line: 186, column: 43, scope: !590)
!601 = !DILocation(line: 186, column: 35, scope: !590)
!602 = !DILocation(line: 186, column: 33, scope: !590)
!603 = !DILocation(line: 186, column: 49, scope: !590)
!604 = !DILocation(line: 186, column: 18, scope: !590)
!605 = !DILocation(line: 187, column: 2, scope: !590)
!606 = !DILocation(line: 187, column: 10, scope: !590)
!607 = !DILocation(line: 187, column: 27, scope: !590)
!608 = !DILocation(line: 187, column: 18, scope: !590)
!609 = !DILocation(line: 189, column: 10, scope: !590)
!610 = !DILocation(line: 189, column: 19, scope: !590)
!611 = !DILocation(line: 189, column: 16, scope: !590)
!612 = !DILocation(line: 189, column: 9, scope: !590)
!613 = !DILocation(line: 189, column: 28, scope: !590)
!614 = !DILocation(line: 190, column: 1, scope: !590)
!615 = !DILocation(line: 189, column: 2, scope: !590)
