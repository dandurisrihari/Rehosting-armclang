; ModuleID = '../bc_files/multi_heap.bc'
source_filename = "/home/sri/zephyrproject/zephyr/lib/os/multi_heap.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-arm-none-eabi"

%struct.sys_multi_heap = type { i32, ptr, [8 x %struct.sys_multi_heap_rec] }
%struct.sys_multi_heap_rec = type { ptr, ptr }
%struct.sys_heap = type { ptr, ptr, i32 }

; Function Attrs: nounwind optsize
define hidden void @sys_multi_heap_init(ptr noundef %0, ptr noundef %1) #0 !dbg !14 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !49, metadata !DIExpression()), !dbg !51
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !50, metadata !DIExpression()), !dbg !52
  %5 = load ptr, ptr %3, align 4, !dbg !53
  %6 = getelementptr inbounds %struct.sys_multi_heap, ptr %5, i32 0, i32 0, !dbg !54
  store i32 0, ptr %6, align 4, !dbg !55
  %7 = load ptr, ptr %4, align 4, !dbg !56
  %8 = load ptr, ptr %3, align 4, !dbg !57
  %9 = getelementptr inbounds %struct.sys_multi_heap, ptr %8, i32 0, i32 1, !dbg !58
  store ptr %7, ptr %9, align 4, !dbg !59
  ret void, !dbg !60
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind optsize
define hidden void @sys_multi_heap_add_heap(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !61 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sys_multi_heap_rec, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !65, metadata !DIExpression()), !dbg !80
  store ptr %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !66, metadata !DIExpression()), !dbg !81
  store ptr %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !67, metadata !DIExpression()), !dbg !82
  %14 = load ptr, ptr %5, align 4, !dbg !83
  %15 = load ptr, ptr %4, align 4, !dbg !84
  %16 = getelementptr inbounds %struct.sys_multi_heap, ptr %15, i32 0, i32 2, !dbg !85
  %17 = load ptr, ptr %4, align 4, !dbg !86
  %18 = getelementptr inbounds %struct.sys_multi_heap, ptr %17, i32 0, i32 0, !dbg !87
  %19 = load i32, ptr %18, align 4, !dbg !87
  %20 = getelementptr inbounds [8 x %struct.sys_multi_heap_rec], ptr %16, i32 0, i32 %19, !dbg !84
  %21 = getelementptr inbounds %struct.sys_multi_heap_rec, ptr %20, i32 0, i32 0, !dbg !88
  store ptr %14, ptr %21, align 4, !dbg !89
  %22 = load ptr, ptr %6, align 4, !dbg !90
  %23 = load ptr, ptr %4, align 4, !dbg !91
  %24 = getelementptr inbounds %struct.sys_multi_heap, ptr %23, i32 0, i32 2, !dbg !92
  %25 = load ptr, ptr %4, align 4, !dbg !93
  %26 = getelementptr inbounds %struct.sys_multi_heap, ptr %25, i32 0, i32 0, !dbg !94
  %27 = load i32, ptr %26, align 4, !dbg !95
  %28 = add nsw i32 %27, 1, !dbg !95
  store i32 %28, ptr %26, align 4, !dbg !95
  %29 = getelementptr inbounds [8 x %struct.sys_multi_heap_rec], ptr %24, i32 0, i32 %27, !dbg !91
  %30 = getelementptr inbounds %struct.sys_multi_heap_rec, ptr %29, i32 0, i32 1, !dbg !96
  store ptr %22, ptr %30, align 4, !dbg !97
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #5, !dbg !98
  call void @llvm.dbg.declare(metadata ptr %7, metadata !68, metadata !DIExpression()), !dbg !99
  store i32 0, ptr %7, align 4, !dbg !99
  br label %31, !dbg !98

31:                                               ; preds = %84, %3
  %32 = load i32, ptr %7, align 4, !dbg !100
  %33 = load ptr, ptr %4, align 4, !dbg !101
  %34 = getelementptr inbounds %struct.sys_multi_heap, ptr %33, i32 0, i32 0, !dbg !102
  %35 = load i32, ptr %34, align 4, !dbg !102
  %36 = icmp slt i32 %32, %35, !dbg !103
  br i1 %36, label %38, label %37, !dbg !104

37:                                               ; preds = %31
  store i32 2, ptr %8, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #5, !dbg !105
  br label %87

38:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 8, ptr %9) #5, !dbg !106
  call void @llvm.dbg.declare(metadata ptr %9, metadata !70, metadata !DIExpression()), !dbg !107
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #5, !dbg !108
  call void @llvm.dbg.declare(metadata ptr %10, metadata !73, metadata !DIExpression()), !dbg !109
  store i32 -1, ptr %10, align 4, !dbg !109
  call void @llvm.lifetime.start.p0(i64 4, ptr %11) #5, !dbg !110
  call void @llvm.dbg.declare(metadata ptr %11, metadata !74, metadata !DIExpression()), !dbg !111
  store i32 -1, ptr %11, align 4, !dbg !111
  call void @llvm.lifetime.start.p0(i64 4, ptr %12) #5, !dbg !112
  call void @llvm.dbg.declare(metadata ptr %12, metadata !75, metadata !DIExpression()), !dbg !113
  %39 = load i32, ptr %7, align 4, !dbg !114
  store i32 %39, ptr %12, align 4, !dbg !113
  br label %40, !dbg !112

40:                                               ; preds = %64, %38
  %41 = load i32, ptr %12, align 4, !dbg !115
  %42 = load ptr, ptr %4, align 4, !dbg !116
  %43 = getelementptr inbounds %struct.sys_multi_heap, ptr %42, i32 0, i32 0, !dbg !117
  %44 = load i32, ptr %43, align 4, !dbg !117
  %45 = icmp slt i32 %41, %44, !dbg !118
  br i1 %45, label %47, label %46, !dbg !119

46:                                               ; preds = %40
  store i32 5, ptr %8, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %12) #5, !dbg !120
  br label %67

47:                                               ; preds = %40
  call void @llvm.lifetime.start.p0(i64 4, ptr %13) #5, !dbg !121
  call void @llvm.dbg.declare(metadata ptr %13, metadata !77, metadata !DIExpression()), !dbg !122
  %48 = load ptr, ptr %4, align 4, !dbg !123
  %49 = getelementptr inbounds %struct.sys_multi_heap, ptr %48, i32 0, i32 2, !dbg !124
  %50 = load i32, ptr %12, align 4, !dbg !125
  %51 = getelementptr inbounds [8 x %struct.sys_multi_heap_rec], ptr %49, i32 0, i32 %50, !dbg !123
  %52 = getelementptr inbounds %struct.sys_multi_heap_rec, ptr %51, i32 0, i32 0, !dbg !126
  %53 = load ptr, ptr %52, align 4, !dbg !126
  %54 = getelementptr inbounds %struct.sys_heap, ptr %53, i32 0, i32 0, !dbg !127
  %55 = load ptr, ptr %54, align 4, !dbg !127
  %56 = ptrtoint ptr %55 to i32, !dbg !128
  store i32 %56, ptr %13, align 4, !dbg !122
  %57 = load i32, ptr %13, align 4, !dbg !129
  %58 = load i32, ptr %11, align 4, !dbg !131
  %59 = icmp ult i32 %57, %58, !dbg !132
  br i1 %59, label %60, label %63, !dbg !133

60:                                               ; preds = %47
  %61 = load i32, ptr %12, align 4, !dbg !134
  store i32 %61, ptr %10, align 4, !dbg !136
  %62 = load i32, ptr %13, align 4, !dbg !137
  store i32 %62, ptr %11, align 4, !dbg !138
  br label %63, !dbg !139

63:                                               ; preds = %60, %47
  call void @llvm.lifetime.end.p0(i64 4, ptr %13) #5, !dbg !140
  br label %64, !dbg !141

64:                                               ; preds = %63
  %65 = load i32, ptr %12, align 4, !dbg !142
  %66 = add nsw i32 %65, 1, !dbg !142
  store i32 %66, ptr %12, align 4, !dbg !142
  br label %40, !dbg !120, !llvm.loop !143

67:                                               ; preds = %46
  %68 = load ptr, ptr %4, align 4, !dbg !145
  %69 = getelementptr inbounds %struct.sys_multi_heap, ptr %68, i32 0, i32 2, !dbg !146
  %70 = load i32, ptr %7, align 4, !dbg !147
  %71 = getelementptr inbounds [8 x %struct.sys_multi_heap_rec], ptr %69, i32 0, i32 %70, !dbg !145
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %9, ptr align 4 %71, i32 8, i1 false), !dbg !145
  %72 = load ptr, ptr %4, align 4, !dbg !148
  %73 = getelementptr inbounds %struct.sys_multi_heap, ptr %72, i32 0, i32 2, !dbg !149
  %74 = load i32, ptr %7, align 4, !dbg !150
  %75 = getelementptr inbounds [8 x %struct.sys_multi_heap_rec], ptr %73, i32 0, i32 %74, !dbg !148
  %76 = load ptr, ptr %4, align 4, !dbg !151
  %77 = getelementptr inbounds %struct.sys_multi_heap, ptr %76, i32 0, i32 2, !dbg !152
  %78 = load i32, ptr %10, align 4, !dbg !153
  %79 = getelementptr inbounds [8 x %struct.sys_multi_heap_rec], ptr %77, i32 0, i32 %78, !dbg !151
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %75, ptr align 4 %79, i32 8, i1 false), !dbg !151
  %80 = load ptr, ptr %4, align 4, !dbg !154
  %81 = getelementptr inbounds %struct.sys_multi_heap, ptr %80, i32 0, i32 2, !dbg !155
  %82 = load i32, ptr %10, align 4, !dbg !156
  %83 = getelementptr inbounds [8 x %struct.sys_multi_heap_rec], ptr %81, i32 0, i32 %82, !dbg !154
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %83, ptr align 4 %9, i32 8, i1 false), !dbg !157
  call void @llvm.lifetime.end.p0(i64 4, ptr %11) #5, !dbg !158
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #5, !dbg !158
  call void @llvm.lifetime.end.p0(i64 8, ptr %9) #5, !dbg !158
  br label %84, !dbg !159

84:                                               ; preds = %67
  %85 = load i32, ptr %7, align 4, !dbg !160
  %86 = add nsw i32 %85, 1, !dbg !160
  store i32 %86, ptr %7, align 4, !dbg !160
  br label %31, !dbg !105, !llvm.loop !161

87:                                               ; preds = %37
  ret void, !dbg !163
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: nounwind optsize
define hidden ptr @sys_multi_heap_alloc(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 !dbg !164 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !168, metadata !DIExpression()), !dbg !171
  store ptr %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !169, metadata !DIExpression()), !dbg !172
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !170, metadata !DIExpression()), !dbg !173
  %7 = load ptr, ptr %4, align 4, !dbg !174
  %8 = getelementptr inbounds %struct.sys_multi_heap, ptr %7, i32 0, i32 1, !dbg !175
  %9 = load ptr, ptr %8, align 4, !dbg !175
  %10 = load ptr, ptr %4, align 4, !dbg !176
  %11 = load ptr, ptr %5, align 4, !dbg !177
  %12 = load i32, ptr %6, align 4, !dbg !178
  %13 = call ptr %9(ptr noundef %10, ptr noundef %11, i32 noundef 0, i32 noundef %12) #6, !dbg !174
  ret ptr %13, !dbg !179
}

; Function Attrs: nounwind optsize
define hidden ptr @sys_multi_heap_aligned_alloc(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 !dbg !180 {
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !182, metadata !DIExpression()), !dbg !186
  store ptr %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !183, metadata !DIExpression()), !dbg !187
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !184, metadata !DIExpression()), !dbg !188
  store i32 %3, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !185, metadata !DIExpression()), !dbg !189
  %9 = load ptr, ptr %5, align 4, !dbg !190
  %10 = getelementptr inbounds %struct.sys_multi_heap, ptr %9, i32 0, i32 1, !dbg !191
  %11 = load ptr, ptr %10, align 4, !dbg !191
  %12 = load ptr, ptr %5, align 4, !dbg !192
  %13 = load ptr, ptr %6, align 4, !dbg !193
  %14 = load i32, ptr %7, align 4, !dbg !194
  %15 = load i32, ptr %8, align 4, !dbg !195
  %16 = call ptr %11(ptr noundef %12, ptr noundef %13, i32 noundef %14, i32 noundef %15) #6, !dbg !190
  ret ptr %16, !dbg !196
}

; Function Attrs: nounwind optsize
define hidden ptr @sys_multi_heap_get_heap(ptr noundef %0, ptr noundef %1) #0 !dbg !197 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !205, metadata !DIExpression()), !dbg !210
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !206, metadata !DIExpression()), !dbg !211
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #5, !dbg !212
  call void @llvm.dbg.declare(metadata ptr %5, metadata !207, metadata !DIExpression()), !dbg !213
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #5, !dbg !212
  call void @llvm.dbg.declare(metadata ptr %6, metadata !208, metadata !DIExpression()), !dbg !214
  %8 = load ptr, ptr %4, align 4, !dbg !215
  %9 = ptrtoint ptr %8 to i32, !dbg !216
  store i32 %9, ptr %6, align 4, !dbg !214
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #5, !dbg !217
  call void @llvm.dbg.declare(metadata ptr %7, metadata !209, metadata !DIExpression()), !dbg !218
  store i32 0, ptr %7, align 4, !dbg !219
  br label %10, !dbg !221

10:                                               ; preds = %31, %2
  %11 = load i32, ptr %7, align 4, !dbg !222
  %12 = load ptr, ptr %3, align 4, !dbg !224
  %13 = getelementptr inbounds %struct.sys_multi_heap, ptr %12, i32 0, i32 0, !dbg !225
  %14 = load i32, ptr %13, align 4, !dbg !225
  %15 = icmp slt i32 %11, %14, !dbg !226
  br i1 %15, label %16, label %34, !dbg !227

16:                                               ; preds = %10
  %17 = load ptr, ptr %3, align 4, !dbg !228
  %18 = getelementptr inbounds %struct.sys_multi_heap, ptr %17, i32 0, i32 2, !dbg !230
  %19 = load i32, ptr %7, align 4, !dbg !231
  %20 = getelementptr inbounds [8 x %struct.sys_multi_heap_rec], ptr %18, i32 0, i32 %19, !dbg !228
  %21 = getelementptr inbounds %struct.sys_multi_heap_rec, ptr %20, i32 0, i32 0, !dbg !232
  %22 = load ptr, ptr %21, align 4, !dbg !232
  %23 = getelementptr inbounds %struct.sys_heap, ptr %22, i32 0, i32 0, !dbg !233
  %24 = load ptr, ptr %23, align 4, !dbg !233
  %25 = ptrtoint ptr %24 to i32, !dbg !234
  store i32 %25, ptr %5, align 4, !dbg !235
  %26 = load i32, ptr %6, align 4, !dbg !236
  %27 = load i32, ptr %5, align 4, !dbg !238
  %28 = icmp ult i32 %26, %27, !dbg !239
  br i1 %28, label %29, label %30, !dbg !240

29:                                               ; preds = %16
  br label %34, !dbg !241

30:                                               ; preds = %16
  br label %31, !dbg !243

31:                                               ; preds = %30
  %32 = load i32, ptr %7, align 4, !dbg !244
  %33 = add nsw i32 %32, 1, !dbg !244
  store i32 %33, ptr %7, align 4, !dbg !244
  br label %10, !dbg !245, !llvm.loop !246

34:                                               ; preds = %29, %10
  %35 = load ptr, ptr %3, align 4, !dbg !248
  %36 = getelementptr inbounds %struct.sys_multi_heap, ptr %35, i32 0, i32 2, !dbg !249
  %37 = load i32, ptr %7, align 4, !dbg !250
  %38 = sub nsw i32 %37, 1, !dbg !251
  %39 = getelementptr inbounds [8 x %struct.sys_multi_heap_rec], ptr %36, i32 0, i32 %38, !dbg !248
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #5, !dbg !252
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #5, !dbg !252
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #5, !dbg !252
  ret ptr %39, !dbg !253
}

; Function Attrs: nounwind optsize
define hidden void @sys_multi_heap_free(ptr noundef %0, ptr noundef %1) #0 !dbg !254 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !258, metadata !DIExpression()), !dbg !261
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !259, metadata !DIExpression()), !dbg !262
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #5, !dbg !263
  call void @llvm.dbg.declare(metadata ptr %5, metadata !260, metadata !DIExpression()), !dbg !264
  %6 = load ptr, ptr %3, align 4, !dbg !265
  %7 = load ptr, ptr %4, align 4, !dbg !266
  %8 = call ptr @sys_multi_heap_get_heap(ptr noundef %6, ptr noundef %7) #6, !dbg !267
  store ptr %8, ptr %5, align 4, !dbg !268
  %9 = load ptr, ptr %5, align 4, !dbg !269
  %10 = icmp ne ptr %9, null, !dbg !271
  br i1 %10, label %11, label %16, !dbg !272

11:                                               ; preds = %2
  %12 = load ptr, ptr %5, align 4, !dbg !273
  %13 = getelementptr inbounds %struct.sys_multi_heap_rec, ptr %12, i32 0, i32 0, !dbg !275
  %14 = load ptr, ptr %13, align 4, !dbg !275
  %15 = load ptr, ptr %4, align 4, !dbg !276
  call void @sys_heap_free(ptr noundef %14, ptr noundef %15) #6, !dbg !277
  br label %16, !dbg !278

16:                                               ; preds = %11, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #5, !dbg !279
  ret void, !dbg !279
}

; Function Attrs: optsize
declare !dbg !280 dso_local void @sys_heap_free(ptr noundef, ptr noundef) #4

attributes #0 = { nounwind optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "multi_heap.c", directory: "/home/sri/zephyrproject/zephyr/build")
!2 = !{!3, !6}
!3 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !4, line: 102, baseType: !5)
!4 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/stdint.h", directory: "")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!7 = !{i32 7, !"Dwarf Version", i32 4}
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{i32 1, !"wchar_size", i32 4}
!10 = !{i32 1, !"static_rwdata", i32 1}
!11 = !{i32 1, !"enumsize_buildattr", i32 1}
!12 = !{i32 1, !"armlib_unavailable", i32 0}
!13 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
!14 = distinct !DISubprogram(name: "sys_multi_heap_init", scope: !15, file: !15, line: 9, type: !16, scopeLine: 10, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !48)
!15 = !DIFile(filename: "lib/os/multi_heap.c", directory: "/home/sri/zephyrproject/zephyr")
!16 = !DISubroutineType(types: !17)
!17 = !{null, !18, !25}
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 32)
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sys_multi_heap", file: !20, line: 60, size: 576, elements: !21)
!20 = !DIFile(filename: "include/zephyr/sys/multi_heap.h", directory: "/home/sri/zephyrproject/zephyr")
!21 = !{!22, !24, !31}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "nheaps", scope: !19, file: !20, line: 61, baseType: !23, size: 32)
!23 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "choice", scope: !19, file: !20, line: 62, baseType: !25, size: 32, offset: 32)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_multi_heap_fn_t", file: !20, line: 51, baseType: !26)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 32)
!27 = !DISubroutineType(types: !28)
!28 = !{!6, !18, !6, !29, !29}
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !30, line: 46, baseType: !5)
!30 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/lib/clang/17/include/stddef.h", directory: "")
!31 = !DIDerivedType(tag: DW_TAG_member, name: "heaps", scope: !19, file: !20, line: 63, baseType: !32, size: 512, offset: 64)
!32 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 512, elements: !46)
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sys_multi_heap_rec", file: !20, line: 55, size: 64, elements: !34)
!34 = !{!35, !45}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !33, file: !20, line: 56, baseType: !36, size: 32)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 32)
!37 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sys_heap", file: !38, line: 56, size: 96, elements: !39)
!38 = !DIFile(filename: "include/zephyr/sys/sys_heap.h", directory: "/home/sri/zephyrproject/zephyr")
!39 = !{!40, !43, !44}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !37, file: !38, line: 57, baseType: !41, size: 32)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 32)
!42 = !DICompositeType(tag: DW_TAG_structure_type, name: "z_heap", file: !38, line: 57, flags: DIFlagFwdDecl)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "init_mem", scope: !37, file: !38, line: 58, baseType: !6, size: 32, offset: 32)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "init_bytes", scope: !37, file: !38, line: 59, baseType: !29, size: 32, offset: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !33, file: !20, line: 57, baseType: !6, size: 32, offset: 32)
!46 = !{!47}
!47 = !DISubrange(count: 8)
!48 = !{!49, !50}
!49 = !DILocalVariable(name: "heap", arg: 1, scope: !14, file: !15, line: 9, type: !18)
!50 = !DILocalVariable(name: "choice_fn", arg: 2, scope: !14, file: !15, line: 9, type: !25)
!51 = !DILocation(line: 9, column: 49, scope: !14)
!52 = !DILocation(line: 9, column: 75, scope: !14)
!53 = !DILocation(line: 11, column: 2, scope: !14)
!54 = !DILocation(line: 11, column: 8, scope: !14)
!55 = !DILocation(line: 11, column: 15, scope: !14)
!56 = !DILocation(line: 12, column: 17, scope: !14)
!57 = !DILocation(line: 12, column: 2, scope: !14)
!58 = !DILocation(line: 12, column: 8, scope: !14)
!59 = !DILocation(line: 12, column: 15, scope: !14)
!60 = !DILocation(line: 13, column: 1, scope: !14)
!61 = distinct !DISubprogram(name: "sys_multi_heap_add_heap", scope: !15, file: !15, line: 15, type: !62, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !64)
!62 = !DISubroutineType(types: !63)
!63 = !{null, !18, !36, !6}
!64 = !{!65, !66, !67, !68, !70, !73, !74, !75, !77}
!65 = !DILocalVariable(name: "mheap", arg: 1, scope: !61, file: !15, line: 15, type: !18)
!66 = !DILocalVariable(name: "heap", arg: 2, scope: !61, file: !15, line: 16, type: !36)
!67 = !DILocalVariable(name: "user_data", arg: 3, scope: !61, file: !15, line: 16, type: !6)
!68 = !DILocalVariable(name: "i", scope: !69, file: !15, line: 24, type: !23)
!69 = distinct !DILexicalBlock(scope: !61, file: !15, line: 24, column: 2)
!70 = !DILocalVariable(name: "swap", scope: !71, file: !15, line: 25, type: !33)
!71 = distinct !DILexicalBlock(scope: !72, file: !15, line: 24, column: 42)
!72 = distinct !DILexicalBlock(scope: !69, file: !15, line: 24, column: 2)
!73 = !DILocalVariable(name: "lowest", scope: !71, file: !15, line: 26, type: !23)
!74 = !DILocalVariable(name: "lowest_addr", scope: !71, file: !15, line: 27, type: !3)
!75 = !DILocalVariable(name: "j", scope: !76, file: !15, line: 29, type: !23)
!76 = distinct !DILexicalBlock(scope: !71, file: !15, line: 29, column: 3)
!77 = !DILocalVariable(name: "haddr", scope: !78, file: !15, line: 30, type: !3)
!78 = distinct !DILexicalBlock(scope: !79, file: !15, line: 29, column: 43)
!79 = distinct !DILexicalBlock(scope: !76, file: !15, line: 29, column: 3)
!80 = !DILocation(line: 15, column: 53, scope: !61)
!81 = !DILocation(line: 16, column: 21, scope: !61)
!82 = !DILocation(line: 16, column: 33, scope: !61)
!83 = !DILocation(line: 20, column: 37, scope: !61)
!84 = !DILocation(line: 20, column: 2, scope: !61)
!85 = !DILocation(line: 20, column: 9, scope: !61)
!86 = !DILocation(line: 20, column: 15, scope: !61)
!87 = !DILocation(line: 20, column: 22, scope: !61)
!88 = !DILocation(line: 20, column: 30, scope: !61)
!89 = !DILocation(line: 20, column: 35, scope: !61)
!90 = !DILocation(line: 21, column: 44, scope: !61)
!91 = !DILocation(line: 21, column: 2, scope: !61)
!92 = !DILocation(line: 21, column: 9, scope: !61)
!93 = !DILocation(line: 21, column: 15, scope: !61)
!94 = !DILocation(line: 21, column: 22, scope: !61)
!95 = !DILocation(line: 21, column: 28, scope: !61)
!96 = !DILocation(line: 21, column: 32, scope: !61)
!97 = !DILocation(line: 21, column: 42, scope: !61)
!98 = !DILocation(line: 24, column: 7, scope: !69)
!99 = !DILocation(line: 24, column: 11, scope: !69)
!100 = !DILocation(line: 24, column: 18, scope: !72)
!101 = !DILocation(line: 24, column: 22, scope: !72)
!102 = !DILocation(line: 24, column: 29, scope: !72)
!103 = !DILocation(line: 24, column: 20, scope: !72)
!104 = !DILocation(line: 24, column: 2, scope: !69)
!105 = !DILocation(line: 24, column: 2, scope: !72)
!106 = !DILocation(line: 25, column: 3, scope: !71)
!107 = !DILocation(line: 25, column: 29, scope: !71)
!108 = !DILocation(line: 26, column: 3, scope: !71)
!109 = !DILocation(line: 26, column: 7, scope: !71)
!110 = !DILocation(line: 27, column: 3, scope: !71)
!111 = !DILocation(line: 27, column: 13, scope: !71)
!112 = !DILocation(line: 29, column: 8, scope: !76)
!113 = !DILocation(line: 29, column: 12, scope: !76)
!114 = !DILocation(line: 29, column: 16, scope: !76)
!115 = !DILocation(line: 29, column: 19, scope: !79)
!116 = !DILocation(line: 29, column: 23, scope: !79)
!117 = !DILocation(line: 29, column: 30, scope: !79)
!118 = !DILocation(line: 29, column: 21, scope: !79)
!119 = !DILocation(line: 29, column: 3, scope: !76)
!120 = !DILocation(line: 29, column: 3, scope: !79)
!121 = !DILocation(line: 30, column: 4, scope: !78)
!122 = !DILocation(line: 30, column: 14, scope: !78)
!123 = !DILocation(line: 30, column: 33, scope: !78)
!124 = !DILocation(line: 30, column: 40, scope: !78)
!125 = !DILocation(line: 30, column: 46, scope: !78)
!126 = !DILocation(line: 30, column: 49, scope: !78)
!127 = !DILocation(line: 30, column: 55, scope: !78)
!128 = !DILocation(line: 30, column: 22, scope: !78)
!129 = !DILocation(line: 32, column: 8, scope: !130)
!130 = distinct !DILexicalBlock(scope: !78, file: !15, line: 32, column: 8)
!131 = !DILocation(line: 32, column: 16, scope: !130)
!132 = !DILocation(line: 32, column: 14, scope: !130)
!133 = !DILocation(line: 32, column: 8, scope: !78)
!134 = !DILocation(line: 33, column: 14, scope: !135)
!135 = distinct !DILexicalBlock(scope: !130, file: !15, line: 32, column: 29)
!136 = !DILocation(line: 33, column: 12, scope: !135)
!137 = !DILocation(line: 34, column: 19, scope: !135)
!138 = !DILocation(line: 34, column: 17, scope: !135)
!139 = !DILocation(line: 35, column: 4, scope: !135)
!140 = !DILocation(line: 36, column: 3, scope: !79)
!141 = !DILocation(line: 36, column: 3, scope: !78)
!142 = !DILocation(line: 29, column: 39, scope: !79)
!143 = distinct !{!143, !119, !144}
!144 = !DILocation(line: 36, column: 3, scope: !76)
!145 = !DILocation(line: 37, column: 10, scope: !71)
!146 = !DILocation(line: 37, column: 17, scope: !71)
!147 = !DILocation(line: 37, column: 23, scope: !71)
!148 = !DILocation(line: 38, column: 3, scope: !71)
!149 = !DILocation(line: 38, column: 10, scope: !71)
!150 = !DILocation(line: 38, column: 16, scope: !71)
!151 = !DILocation(line: 38, column: 21, scope: !71)
!152 = !DILocation(line: 38, column: 28, scope: !71)
!153 = !DILocation(line: 38, column: 34, scope: !71)
!154 = !DILocation(line: 39, column: 3, scope: !71)
!155 = !DILocation(line: 39, column: 10, scope: !71)
!156 = !DILocation(line: 39, column: 16, scope: !71)
!157 = !DILocation(line: 39, column: 26, scope: !71)
!158 = !DILocation(line: 40, column: 2, scope: !72)
!159 = !DILocation(line: 40, column: 2, scope: !71)
!160 = !DILocation(line: 24, column: 38, scope: !72)
!161 = distinct !{!161, !104, !162}
!162 = !DILocation(line: 40, column: 2, scope: !69)
!163 = !DILocation(line: 41, column: 1, scope: !61)
!164 = distinct !DISubprogram(name: "sys_multi_heap_alloc", scope: !15, file: !15, line: 43, type: !165, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !167)
!165 = !DISubroutineType(types: !166)
!166 = !{!6, !18, !6, !29}
!167 = !{!168, !169, !170}
!168 = !DILocalVariable(name: "mheap", arg: 1, scope: !164, file: !15, line: 43, type: !18)
!169 = !DILocalVariable(name: "cfg", arg: 2, scope: !164, file: !15, line: 43, type: !6)
!170 = !DILocalVariable(name: "bytes", arg: 3, scope: !164, file: !15, line: 43, type: !29)
!171 = !DILocation(line: 43, column: 51, scope: !164)
!172 = !DILocation(line: 43, column: 64, scope: !164)
!173 = !DILocation(line: 43, column: 76, scope: !164)
!174 = !DILocation(line: 45, column: 9, scope: !164)
!175 = !DILocation(line: 45, column: 16, scope: !164)
!176 = !DILocation(line: 45, column: 23, scope: !164)
!177 = !DILocation(line: 45, column: 30, scope: !164)
!178 = !DILocation(line: 45, column: 38, scope: !164)
!179 = !DILocation(line: 45, column: 2, scope: !164)
!180 = distinct !DISubprogram(name: "sys_multi_heap_aligned_alloc", scope: !15, file: !15, line: 48, type: !27, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !181)
!181 = !{!182, !183, !184, !185}
!182 = !DILocalVariable(name: "mheap", arg: 1, scope: !180, file: !15, line: 48, type: !18)
!183 = !DILocalVariable(name: "cfg", arg: 2, scope: !180, file: !15, line: 49, type: !6)
!184 = !DILocalVariable(name: "align", arg: 3, scope: !180, file: !15, line: 49, type: !29)
!185 = !DILocalVariable(name: "bytes", arg: 4, scope: !180, file: !15, line: 49, type: !29)
!186 = !DILocation(line: 48, column: 59, scope: !180)
!187 = !DILocation(line: 49, column: 14, scope: !180)
!188 = !DILocation(line: 49, column: 26, scope: !180)
!189 = !DILocation(line: 49, column: 40, scope: !180)
!190 = !DILocation(line: 51, column: 9, scope: !180)
!191 = !DILocation(line: 51, column: 16, scope: !180)
!192 = !DILocation(line: 51, column: 23, scope: !180)
!193 = !DILocation(line: 51, column: 30, scope: !180)
!194 = !DILocation(line: 51, column: 35, scope: !180)
!195 = !DILocation(line: 51, column: 42, scope: !180)
!196 = !DILocation(line: 51, column: 2, scope: !180)
!197 = distinct !DISubprogram(name: "sys_multi_heap_get_heap", scope: !15, file: !15, line: 54, type: !198, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !204)
!198 = !DISubroutineType(types: !199)
!199 = !{!200, !202, !6}
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 32)
!201 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 32)
!203 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!204 = !{!205, !206, !207, !208, !209}
!205 = !DILocalVariable(name: "mheap", arg: 1, scope: !197, file: !15, line: 54, type: !202)
!206 = !DILocalVariable(name: "addr", arg: 2, scope: !197, file: !15, line: 55, type: !6)
!207 = !DILocalVariable(name: "haddr", scope: !197, file: !15, line: 57, type: !3)
!208 = !DILocalVariable(name: "baddr", scope: !197, file: !15, line: 57, type: !3)
!209 = !DILocalVariable(name: "i", scope: !197, file: !15, line: 58, type: !23)
!210 = !DILocation(line: 54, column: 87, scope: !197)
!211 = !DILocation(line: 55, column: 15, scope: !197)
!212 = !DILocation(line: 57, column: 2, scope: !197)
!213 = !DILocation(line: 57, column: 12, scope: !197)
!214 = !DILocation(line: 57, column: 19, scope: !197)
!215 = !DILocation(line: 57, column: 39, scope: !197)
!216 = !DILocation(line: 57, column: 27, scope: !197)
!217 = !DILocation(line: 58, column: 2, scope: !197)
!218 = !DILocation(line: 58, column: 6, scope: !197)
!219 = !DILocation(line: 68, column: 9, scope: !220)
!220 = distinct !DILexicalBlock(scope: !197, file: !15, line: 68, column: 2)
!221 = !DILocation(line: 68, column: 7, scope: !220)
!222 = !DILocation(line: 68, column: 14, scope: !223)
!223 = distinct !DILexicalBlock(scope: !220, file: !15, line: 68, column: 2)
!224 = !DILocation(line: 68, column: 18, scope: !223)
!225 = !DILocation(line: 68, column: 25, scope: !223)
!226 = !DILocation(line: 68, column: 16, scope: !223)
!227 = !DILocation(line: 68, column: 2, scope: !220)
!228 = !DILocation(line: 69, column: 22, scope: !229)
!229 = distinct !DILexicalBlock(scope: !223, file: !15, line: 68, column: 38)
!230 = !DILocation(line: 69, column: 29, scope: !229)
!231 = !DILocation(line: 69, column: 35, scope: !229)
!232 = !DILocation(line: 69, column: 38, scope: !229)
!233 = !DILocation(line: 69, column: 44, scope: !229)
!234 = !DILocation(line: 69, column: 11, scope: !229)
!235 = !DILocation(line: 69, column: 9, scope: !229)
!236 = !DILocation(line: 70, column: 7, scope: !237)
!237 = distinct !DILexicalBlock(scope: !229, file: !15, line: 70, column: 7)
!238 = !DILocation(line: 70, column: 15, scope: !237)
!239 = !DILocation(line: 70, column: 13, scope: !237)
!240 = !DILocation(line: 70, column: 7, scope: !229)
!241 = !DILocation(line: 71, column: 4, scope: !242)
!242 = distinct !DILexicalBlock(scope: !237, file: !15, line: 70, column: 22)
!243 = !DILocation(line: 73, column: 2, scope: !229)
!244 = !DILocation(line: 68, column: 34, scope: !223)
!245 = !DILocation(line: 68, column: 2, scope: !223)
!246 = distinct !{!246, !227, !247}
!247 = !DILocation(line: 73, column: 2, scope: !220)
!248 = !DILocation(line: 79, column: 10, scope: !197)
!249 = !DILocation(line: 79, column: 17, scope: !197)
!250 = !DILocation(line: 79, column: 23, scope: !197)
!251 = !DILocation(line: 79, column: 24, scope: !197)
!252 = !DILocation(line: 80, column: 1, scope: !197)
!253 = !DILocation(line: 79, column: 2, scope: !197)
!254 = distinct !DISubprogram(name: "sys_multi_heap_free", scope: !15, file: !15, line: 83, type: !255, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !257)
!255 = !DISubroutineType(types: !256)
!256 = !{null, !18, !6}
!257 = !{!258, !259, !260}
!258 = !DILocalVariable(name: "mheap", arg: 1, scope: !254, file: !15, line: 83, type: !18)
!259 = !DILocalVariable(name: "block", arg: 2, scope: !254, file: !15, line: 83, type: !6)
!260 = !DILocalVariable(name: "heap", scope: !254, file: !15, line: 85, type: !200)
!261 = !DILocation(line: 83, column: 49, scope: !254)
!262 = !DILocation(line: 83, column: 62, scope: !254)
!263 = !DILocation(line: 85, column: 2, scope: !254)
!264 = !DILocation(line: 85, column: 35, scope: !254)
!265 = !DILocation(line: 87, column: 33, scope: !254)
!266 = !DILocation(line: 87, column: 40, scope: !254)
!267 = !DILocation(line: 87, column: 9, scope: !254)
!268 = !DILocation(line: 87, column: 7, scope: !254)
!269 = !DILocation(line: 89, column: 6, scope: !270)
!270 = distinct !DILexicalBlock(scope: !254, file: !15, line: 89, column: 6)
!271 = !DILocation(line: 89, column: 11, scope: !270)
!272 = !DILocation(line: 89, column: 6, scope: !254)
!273 = !DILocation(line: 90, column: 17, scope: !274)
!274 = distinct !DILexicalBlock(scope: !270, file: !15, line: 89, column: 26)
!275 = !DILocation(line: 90, column: 23, scope: !274)
!276 = !DILocation(line: 90, column: 29, scope: !274)
!277 = !DILocation(line: 90, column: 3, scope: !274)
!278 = !DILocation(line: 91, column: 2, scope: !274)
!279 = !DILocation(line: 92, column: 1, scope: !254)
!280 = !DISubprogram(name: "sys_heap_free", scope: !38, file: !38, line: 151, type: !281, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !283)
!281 = !DISubroutineType(types: !282)
!282 = !{null, !36, !6}
!283 = !{}
