; ModuleID = '../bc_files/atomic_c.bc'
source_filename = "/home/sri/zephyrproject/zephyr/kernel/atomic_c.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-arm-none-eabi"

%struct.k_spinlock = type {}
%struct.z_spinlock_key = type { i32 }

@lock = internal global %struct.k_spinlock zeroinitializer, align 1, !dbg !0

; Function Attrs: nounwind optsize
define hidden zeroext i1 @z_impl_atomic_cas(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 !dbg !16 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.z_spinlock_key, align 4
  %9 = alloca ptr, align 4
  %10 = alloca %struct.z_spinlock_key, align 4
  %11 = alloca ptr, align 4
  %12 = alloca ptr, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.z_spinlock_key, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.z_spinlock_key, align 4
  store ptr %0, ptr %12, align 4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !26, metadata !DIExpression()), !dbg !36
  store i32 %1, ptr %13, align 4
  call void @llvm.dbg.declare(metadata ptr %13, metadata !27, metadata !DIExpression()), !dbg !37
  store i32 %2, ptr %14, align 4
  call void @llvm.dbg.declare(metadata ptr %14, metadata !28, metadata !DIExpression()), !dbg !38
  call void @llvm.lifetime.start.p0(i64 4, ptr %15) #4, !dbg !39
  call void @llvm.dbg.declare(metadata ptr %15, metadata !29, metadata !DIExpression()), !dbg !40
  call void @llvm.lifetime.start.p0(i64 4, ptr %16) #4, !dbg !41
  call void @llvm.dbg.declare(metadata ptr %16, metadata !35, metadata !DIExpression()), !dbg !42
  store i32 0, ptr %16, align 4, !dbg !42
  call void @llvm.lifetime.start.p0(i64 4, ptr %17) #4, !dbg !43
  store ptr @lock, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !44, metadata !DIExpression()), !dbg !51
  %18 = load ptr, ptr %11, align 4, !dbg !53
  call void @llvm.dbg.declare(metadata ptr %10, metadata !50, metadata !DIExpression()), !dbg !54
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #4, !dbg !55
  call void @llvm.dbg.declare(metadata ptr %7, metadata !62, metadata !DIExpression()), !dbg !64
  %19 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #4, !dbg !65, !srcloc !66
  store i32 %19, ptr %7, align 4, !dbg !65
  %20 = load i32, ptr %7, align 4, !dbg !67
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #4, !dbg !68
  store i32 %20, ptr %10, align 4, !dbg !69
  %21 = load ptr, ptr %11, align 4, !dbg !70
  store ptr %21, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !71, metadata !DIExpression()), !dbg !76
  %22 = load ptr, ptr %6, align 4, !dbg !78
  %23 = load ptr, ptr %11, align 4, !dbg !79
  store ptr %23, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !80, metadata !DIExpression()), !dbg !83
  %24 = load ptr, ptr %5, align 4, !dbg !85
  %25 = load i32, ptr %10, align 4, !dbg !86
  %26 = getelementptr inbounds %struct.z_spinlock_key, ptr %17, i32 0, i32 0, !dbg !43
  store i32 %25, ptr %26, align 4, !dbg !43
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %15, ptr align 4 %17, i32 4, i1 false), !dbg !43
  call void @llvm.lifetime.end.p0(i64 4, ptr %17) #4, !dbg !43
  %27 = load ptr, ptr %12, align 4, !dbg !87
  %28 = load i32, ptr %27, align 4, !dbg !89
  %29 = load i32, ptr %13, align 4, !dbg !90
  %30 = icmp eq i32 %28, %29, !dbg !91
  br i1 %30, label %31, label %34, !dbg !92

31:                                               ; preds = %3
  %32 = load i32, ptr %14, align 4, !dbg !93
  %33 = load ptr, ptr %12, align 4, !dbg !95
  store i32 %32, ptr %33, align 4, !dbg !96
  store i32 1, ptr %16, align 4, !dbg !97
  br label %34, !dbg !98

34:                                               ; preds = %31, %3
  %35 = getelementptr inbounds %struct.z_spinlock_key, ptr %15, i32 0, i32 0, !dbg !99
  %36 = load [1 x i32], ptr %35, align 4, !dbg !99
  store [1 x i32] %36, ptr %8, align 4
  store ptr @lock, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !100, metadata !DIExpression()), !dbg !106
  call void @llvm.dbg.declare(metadata ptr %8, metadata !105, metadata !DIExpression()), !dbg !108
  %37 = load ptr, ptr %9, align 4, !dbg !109
  %38 = load i32, ptr %8, align 4, !dbg !110
  store i32 %38, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !111, metadata !DIExpression()), !dbg !116
  %39 = load i32, ptr %4, align 4, !dbg !118
  %40 = icmp ne i32 %39, 0, !dbg !120
  br i1 %40, label %41, label %42, !dbg !121

41:                                               ; preds = %34
  br label %arch_irq_unlock.exit, !dbg !122

42:                                               ; preds = %34
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #4, !dbg !124, !srcloc !125
  br label %arch_irq_unlock.exit, !dbg !126

arch_irq_unlock.exit:                             ; preds = %41, %42
  %43 = load i32, ptr %16, align 4, !dbg !127
  %44 = icmp ne i32 %43, 0, !dbg !127
  call void @llvm.lifetime.end.p0(i64 4, ptr %16) #4, !dbg !128
  call void @llvm.lifetime.end.p0(i64 4, ptr %15) #4, !dbg !128
  ret i1 %44, !dbg !129
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind optsize
define hidden zeroext i1 @z_impl_atomic_ptr_cas(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !130 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.z_spinlock_key, align 4
  %9 = alloca ptr, align 4
  %10 = alloca %struct.z_spinlock_key, align 4
  %11 = alloca ptr, align 4
  %12 = alloca ptr, align 4
  %13 = alloca ptr, align 4
  %14 = alloca ptr, align 4
  %15 = alloca %struct.z_spinlock_key, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.z_spinlock_key, align 4
  store ptr %0, ptr %12, align 4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !138, metadata !DIExpression()), !dbg !143
  store ptr %1, ptr %13, align 4
  call void @llvm.dbg.declare(metadata ptr %13, metadata !139, metadata !DIExpression()), !dbg !144
  store ptr %2, ptr %14, align 4
  call void @llvm.dbg.declare(metadata ptr %14, metadata !140, metadata !DIExpression()), !dbg !145
  call void @llvm.lifetime.start.p0(i64 4, ptr %15) #4, !dbg !146
  call void @llvm.dbg.declare(metadata ptr %15, metadata !141, metadata !DIExpression()), !dbg !147
  call void @llvm.lifetime.start.p0(i64 4, ptr %16) #4, !dbg !148
  call void @llvm.dbg.declare(metadata ptr %16, metadata !142, metadata !DIExpression()), !dbg !149
  store i32 0, ptr %16, align 4, !dbg !149
  call void @llvm.lifetime.start.p0(i64 4, ptr %17) #4, !dbg !150
  store ptr @lock, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !44, metadata !DIExpression()), !dbg !151
  %18 = load ptr, ptr %11, align 4, !dbg !153
  call void @llvm.dbg.declare(metadata ptr %10, metadata !50, metadata !DIExpression()), !dbg !154
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #4, !dbg !155
  call void @llvm.dbg.declare(metadata ptr %7, metadata !62, metadata !DIExpression()), !dbg !157
  %19 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #4, !dbg !158, !srcloc !66
  store i32 %19, ptr %7, align 4, !dbg !158
  %20 = load i32, ptr %7, align 4, !dbg !159
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #4, !dbg !160
  store i32 %20, ptr %10, align 4, !dbg !161
  %21 = load ptr, ptr %11, align 4, !dbg !162
  store ptr %21, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !71, metadata !DIExpression()), !dbg !163
  %22 = load ptr, ptr %6, align 4, !dbg !165
  %23 = load ptr, ptr %11, align 4, !dbg !166
  store ptr %23, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !80, metadata !DIExpression()), !dbg !167
  %24 = load ptr, ptr %5, align 4, !dbg !169
  %25 = load i32, ptr %10, align 4, !dbg !170
  %26 = getelementptr inbounds %struct.z_spinlock_key, ptr %17, i32 0, i32 0, !dbg !150
  store i32 %25, ptr %26, align 4, !dbg !150
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %15, ptr align 4 %17, i32 4, i1 false), !dbg !150
  call void @llvm.lifetime.end.p0(i64 4, ptr %17) #4, !dbg !150
  %27 = load ptr, ptr %12, align 4, !dbg !171
  %28 = load ptr, ptr %27, align 4, !dbg !173
  %29 = load ptr, ptr %13, align 4, !dbg !174
  %30 = icmp eq ptr %28, %29, !dbg !175
  br i1 %30, label %31, label %34, !dbg !176

31:                                               ; preds = %3
  %32 = load ptr, ptr %14, align 4, !dbg !177
  %33 = load ptr, ptr %12, align 4, !dbg !179
  store ptr %32, ptr %33, align 4, !dbg !180
  store i32 1, ptr %16, align 4, !dbg !181
  br label %34, !dbg !182

34:                                               ; preds = %31, %3
  %35 = getelementptr inbounds %struct.z_spinlock_key, ptr %15, i32 0, i32 0, !dbg !183
  %36 = load [1 x i32], ptr %35, align 4, !dbg !183
  store [1 x i32] %36, ptr %8, align 4
  store ptr @lock, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !100, metadata !DIExpression()), !dbg !184
  call void @llvm.dbg.declare(metadata ptr %8, metadata !105, metadata !DIExpression()), !dbg !186
  %37 = load ptr, ptr %9, align 4, !dbg !187
  %38 = load i32, ptr %8, align 4, !dbg !188
  store i32 %38, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !111, metadata !DIExpression()), !dbg !189
  %39 = load i32, ptr %4, align 4, !dbg !191
  %40 = icmp ne i32 %39, 0, !dbg !192
  br i1 %40, label %41, label %42, !dbg !193

41:                                               ; preds = %34
  br label %arch_irq_unlock.exit, !dbg !194

42:                                               ; preds = %34
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #4, !dbg !195, !srcloc !125
  br label %arch_irq_unlock.exit, !dbg !196

arch_irq_unlock.exit:                             ; preds = %41, %42
  %43 = load i32, ptr %16, align 4, !dbg !197
  %44 = icmp ne i32 %43, 0, !dbg !197
  call void @llvm.lifetime.end.p0(i64 4, ptr %16) #4, !dbg !198
  call void @llvm.lifetime.end.p0(i64 4, ptr %15) #4, !dbg !198
  ret i1 %44, !dbg !199
}

; Function Attrs: nounwind optsize
define hidden i32 @z_impl_atomic_add(ptr noundef %0, i32 noundef %1) #0 !dbg !200 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.z_spinlock_key, align 4
  %8 = alloca ptr, align 4
  %9 = alloca %struct.z_spinlock_key, align 4
  %10 = alloca ptr, align 4
  %11 = alloca ptr, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.z_spinlock_key, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.z_spinlock_key, align 4
  store ptr %0, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !204, metadata !DIExpression()), !dbg !208
  store i32 %1, ptr %12, align 4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !205, metadata !DIExpression()), !dbg !209
  call void @llvm.lifetime.start.p0(i64 4, ptr %13) #4, !dbg !210
  call void @llvm.dbg.declare(metadata ptr %13, metadata !206, metadata !DIExpression()), !dbg !211
  call void @llvm.lifetime.start.p0(i64 4, ptr %14) #4, !dbg !212
  call void @llvm.dbg.declare(metadata ptr %14, metadata !207, metadata !DIExpression()), !dbg !213
  call void @llvm.lifetime.start.p0(i64 4, ptr %15) #4, !dbg !214
  store ptr @lock, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !44, metadata !DIExpression()), !dbg !215
  %16 = load ptr, ptr %10, align 4, !dbg !217
  call void @llvm.dbg.declare(metadata ptr %9, metadata !50, metadata !DIExpression()), !dbg !218
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #4, !dbg !219
  call void @llvm.dbg.declare(metadata ptr %6, metadata !62, metadata !DIExpression()), !dbg !221
  %17 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #4, !dbg !222, !srcloc !66
  store i32 %17, ptr %6, align 4, !dbg !222
  %18 = load i32, ptr %6, align 4, !dbg !223
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #4, !dbg !224
  store i32 %18, ptr %9, align 4, !dbg !225
  %19 = load ptr, ptr %10, align 4, !dbg !226
  store ptr %19, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !71, metadata !DIExpression()), !dbg !227
  %20 = load ptr, ptr %5, align 4, !dbg !229
  %21 = load ptr, ptr %10, align 4, !dbg !230
  store ptr %21, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !80, metadata !DIExpression()), !dbg !231
  %22 = load ptr, ptr %4, align 4, !dbg !233
  %23 = load i32, ptr %9, align 4, !dbg !234
  %24 = getelementptr inbounds %struct.z_spinlock_key, ptr %15, i32 0, i32 0, !dbg !214
  store i32 %23, ptr %24, align 4, !dbg !214
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %13, ptr align 4 %15, i32 4, i1 false), !dbg !214
  call void @llvm.lifetime.end.p0(i64 4, ptr %15) #4, !dbg !214
  %25 = load ptr, ptr %11, align 4, !dbg !235
  %26 = load i32, ptr %25, align 4, !dbg !236
  store i32 %26, ptr %14, align 4, !dbg !237
  %27 = load i32, ptr %12, align 4, !dbg !238
  %28 = load ptr, ptr %11, align 4, !dbg !239
  %29 = load i32, ptr %28, align 4, !dbg !240
  %30 = add nsw i32 %29, %27, !dbg !240
  store i32 %30, ptr %28, align 4, !dbg !240
  %31 = getelementptr inbounds %struct.z_spinlock_key, ptr %13, i32 0, i32 0, !dbg !241
  %32 = load [1 x i32], ptr %31, align 4, !dbg !241
  store [1 x i32] %32, ptr %7, align 4
  store ptr @lock, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !100, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.declare(metadata ptr %7, metadata !105, metadata !DIExpression()), !dbg !244
  %33 = load ptr, ptr %8, align 4, !dbg !245
  %34 = load i32, ptr %7, align 4, !dbg !246
  store i32 %34, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !111, metadata !DIExpression()), !dbg !247
  %35 = load i32, ptr %3, align 4, !dbg !249
  %36 = icmp ne i32 %35, 0, !dbg !250
  br i1 %36, label %37, label %38, !dbg !251

37:                                               ; preds = %2
  br label %arch_irq_unlock.exit, !dbg !252

38:                                               ; preds = %2
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #4, !dbg !253, !srcloc !125
  br label %arch_irq_unlock.exit, !dbg !254

arch_irq_unlock.exit:                             ; preds = %37, %38
  %39 = load i32, ptr %14, align 4, !dbg !255
  call void @llvm.lifetime.end.p0(i64 4, ptr %14) #4, !dbg !256
  call void @llvm.lifetime.end.p0(i64 4, ptr %13) #4, !dbg !256
  ret i32 %39, !dbg !257
}

; Function Attrs: nounwind optsize
define hidden i32 @z_impl_atomic_sub(ptr noundef %0, i32 noundef %1) #0 !dbg !258 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.z_spinlock_key, align 4
  %8 = alloca ptr, align 4
  %9 = alloca %struct.z_spinlock_key, align 4
  %10 = alloca ptr, align 4
  %11 = alloca ptr, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.z_spinlock_key, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.z_spinlock_key, align 4
  store ptr %0, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !260, metadata !DIExpression()), !dbg !264
  store i32 %1, ptr %12, align 4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !261, metadata !DIExpression()), !dbg !265
  call void @llvm.lifetime.start.p0(i64 4, ptr %13) #4, !dbg !266
  call void @llvm.dbg.declare(metadata ptr %13, metadata !262, metadata !DIExpression()), !dbg !267
  call void @llvm.lifetime.start.p0(i64 4, ptr %14) #4, !dbg !268
  call void @llvm.dbg.declare(metadata ptr %14, metadata !263, metadata !DIExpression()), !dbg !269
  call void @llvm.lifetime.start.p0(i64 4, ptr %15) #4, !dbg !270
  store ptr @lock, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !44, metadata !DIExpression()), !dbg !271
  %16 = load ptr, ptr %10, align 4, !dbg !273
  call void @llvm.dbg.declare(metadata ptr %9, metadata !50, metadata !DIExpression()), !dbg !274
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #4, !dbg !275
  call void @llvm.dbg.declare(metadata ptr %6, metadata !62, metadata !DIExpression()), !dbg !277
  %17 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #4, !dbg !278, !srcloc !66
  store i32 %17, ptr %6, align 4, !dbg !278
  %18 = load i32, ptr %6, align 4, !dbg !279
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #4, !dbg !280
  store i32 %18, ptr %9, align 4, !dbg !281
  %19 = load ptr, ptr %10, align 4, !dbg !282
  store ptr %19, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !71, metadata !DIExpression()), !dbg !283
  %20 = load ptr, ptr %5, align 4, !dbg !285
  %21 = load ptr, ptr %10, align 4, !dbg !286
  store ptr %21, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !80, metadata !DIExpression()), !dbg !287
  %22 = load ptr, ptr %4, align 4, !dbg !289
  %23 = load i32, ptr %9, align 4, !dbg !290
  %24 = getelementptr inbounds %struct.z_spinlock_key, ptr %15, i32 0, i32 0, !dbg !270
  store i32 %23, ptr %24, align 4, !dbg !270
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %13, ptr align 4 %15, i32 4, i1 false), !dbg !270
  call void @llvm.lifetime.end.p0(i64 4, ptr %15) #4, !dbg !270
  %25 = load ptr, ptr %11, align 4, !dbg !291
  %26 = load i32, ptr %25, align 4, !dbg !292
  store i32 %26, ptr %14, align 4, !dbg !293
  %27 = load i32, ptr %12, align 4, !dbg !294
  %28 = load ptr, ptr %11, align 4, !dbg !295
  %29 = load i32, ptr %28, align 4, !dbg !296
  %30 = sub nsw i32 %29, %27, !dbg !296
  store i32 %30, ptr %28, align 4, !dbg !296
  %31 = getelementptr inbounds %struct.z_spinlock_key, ptr %13, i32 0, i32 0, !dbg !297
  %32 = load [1 x i32], ptr %31, align 4, !dbg !297
  store [1 x i32] %32, ptr %7, align 4
  store ptr @lock, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !100, metadata !DIExpression()), !dbg !298
  call void @llvm.dbg.declare(metadata ptr %7, metadata !105, metadata !DIExpression()), !dbg !300
  %33 = load ptr, ptr %8, align 4, !dbg !301
  %34 = load i32, ptr %7, align 4, !dbg !302
  store i32 %34, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !111, metadata !DIExpression()), !dbg !303
  %35 = load i32, ptr %3, align 4, !dbg !305
  %36 = icmp ne i32 %35, 0, !dbg !306
  br i1 %36, label %37, label %38, !dbg !307

37:                                               ; preds = %2
  br label %arch_irq_unlock.exit, !dbg !308

38:                                               ; preds = %2
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #4, !dbg !309, !srcloc !125
  br label %arch_irq_unlock.exit, !dbg !310

arch_irq_unlock.exit:                             ; preds = %37, %38
  %39 = load i32, ptr %14, align 4, !dbg !311
  call void @llvm.lifetime.end.p0(i64 4, ptr %14) #4, !dbg !312
  call void @llvm.lifetime.end.p0(i64 4, ptr %13) #4, !dbg !312
  ret i32 %39, !dbg !313
}

; Function Attrs: nounwind optsize
define hidden i32 @atomic_get(ptr noundef %0) #0 !dbg !314 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !320, metadata !DIExpression()), !dbg !321
  %3 = load ptr, ptr %2, align 4, !dbg !322
  %4 = load i32, ptr %3, align 4, !dbg !323
  ret i32 %4, !dbg !324
}

; Function Attrs: nounwind optsize
define hidden ptr @atomic_ptr_get(ptr noundef %0) #0 !dbg !325 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !331, metadata !DIExpression()), !dbg !332
  %3 = load ptr, ptr %2, align 4, !dbg !333
  %4 = load ptr, ptr %3, align 4, !dbg !334
  ret ptr %4, !dbg !335
}

; Function Attrs: nounwind optsize
define hidden i32 @z_impl_atomic_set(ptr noundef %0, i32 noundef %1) #0 !dbg !336 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.z_spinlock_key, align 4
  %8 = alloca ptr, align 4
  %9 = alloca %struct.z_spinlock_key, align 4
  %10 = alloca ptr, align 4
  %11 = alloca ptr, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.z_spinlock_key, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.z_spinlock_key, align 4
  store ptr %0, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !338, metadata !DIExpression()), !dbg !342
  store i32 %1, ptr %12, align 4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !339, metadata !DIExpression()), !dbg !343
  call void @llvm.lifetime.start.p0(i64 4, ptr %13) #4, !dbg !344
  call void @llvm.dbg.declare(metadata ptr %13, metadata !340, metadata !DIExpression()), !dbg !345
  call void @llvm.lifetime.start.p0(i64 4, ptr %14) #4, !dbg !346
  call void @llvm.dbg.declare(metadata ptr %14, metadata !341, metadata !DIExpression()), !dbg !347
  call void @llvm.lifetime.start.p0(i64 4, ptr %15) #4, !dbg !348
  store ptr @lock, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !44, metadata !DIExpression()), !dbg !349
  %16 = load ptr, ptr %10, align 4, !dbg !351
  call void @llvm.dbg.declare(metadata ptr %9, metadata !50, metadata !DIExpression()), !dbg !352
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #4, !dbg !353
  call void @llvm.dbg.declare(metadata ptr %6, metadata !62, metadata !DIExpression()), !dbg !355
  %17 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #4, !dbg !356, !srcloc !66
  store i32 %17, ptr %6, align 4, !dbg !356
  %18 = load i32, ptr %6, align 4, !dbg !357
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #4, !dbg !358
  store i32 %18, ptr %9, align 4, !dbg !359
  %19 = load ptr, ptr %10, align 4, !dbg !360
  store ptr %19, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !71, metadata !DIExpression()), !dbg !361
  %20 = load ptr, ptr %5, align 4, !dbg !363
  %21 = load ptr, ptr %10, align 4, !dbg !364
  store ptr %21, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !80, metadata !DIExpression()), !dbg !365
  %22 = load ptr, ptr %4, align 4, !dbg !367
  %23 = load i32, ptr %9, align 4, !dbg !368
  %24 = getelementptr inbounds %struct.z_spinlock_key, ptr %15, i32 0, i32 0, !dbg !348
  store i32 %23, ptr %24, align 4, !dbg !348
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %13, ptr align 4 %15, i32 4, i1 false), !dbg !348
  call void @llvm.lifetime.end.p0(i64 4, ptr %15) #4, !dbg !348
  %25 = load ptr, ptr %11, align 4, !dbg !369
  %26 = load i32, ptr %25, align 4, !dbg !370
  store i32 %26, ptr %14, align 4, !dbg !371
  %27 = load i32, ptr %12, align 4, !dbg !372
  %28 = load ptr, ptr %11, align 4, !dbg !373
  store i32 %27, ptr %28, align 4, !dbg !374
  %29 = getelementptr inbounds %struct.z_spinlock_key, ptr %13, i32 0, i32 0, !dbg !375
  %30 = load [1 x i32], ptr %29, align 4, !dbg !375
  store [1 x i32] %30, ptr %7, align 4
  store ptr @lock, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !100, metadata !DIExpression()), !dbg !376
  call void @llvm.dbg.declare(metadata ptr %7, metadata !105, metadata !DIExpression()), !dbg !378
  %31 = load ptr, ptr %8, align 4, !dbg !379
  %32 = load i32, ptr %7, align 4, !dbg !380
  store i32 %32, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !111, metadata !DIExpression()), !dbg !381
  %33 = load i32, ptr %3, align 4, !dbg !383
  %34 = icmp ne i32 %33, 0, !dbg !384
  br i1 %34, label %35, label %36, !dbg !385

35:                                               ; preds = %2
  br label %arch_irq_unlock.exit, !dbg !386

36:                                               ; preds = %2
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #4, !dbg !387, !srcloc !125
  br label %arch_irq_unlock.exit, !dbg !388

arch_irq_unlock.exit:                             ; preds = %35, %36
  %37 = load i32, ptr %14, align 4, !dbg !389
  call void @llvm.lifetime.end.p0(i64 4, ptr %14) #4, !dbg !390
  call void @llvm.lifetime.end.p0(i64 4, ptr %13) #4, !dbg !390
  ret i32 %37, !dbg !391
}

; Function Attrs: nounwind optsize
define hidden ptr @z_impl_atomic_ptr_set(ptr noundef %0, ptr noundef %1) #0 !dbg !392 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.z_spinlock_key, align 4
  %8 = alloca ptr, align 4
  %9 = alloca %struct.z_spinlock_key, align 4
  %10 = alloca ptr, align 4
  %11 = alloca ptr, align 4
  %12 = alloca ptr, align 4
  %13 = alloca %struct.z_spinlock_key, align 4
  %14 = alloca ptr, align 4
  %15 = alloca %struct.z_spinlock_key, align 4
  store ptr %0, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !396, metadata !DIExpression()), !dbg !400
  store ptr %1, ptr %12, align 4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !397, metadata !DIExpression()), !dbg !401
  call void @llvm.lifetime.start.p0(i64 4, ptr %13) #4, !dbg !402
  call void @llvm.dbg.declare(metadata ptr %13, metadata !398, metadata !DIExpression()), !dbg !403
  call void @llvm.lifetime.start.p0(i64 4, ptr %14) #4, !dbg !404
  call void @llvm.dbg.declare(metadata ptr %14, metadata !399, metadata !DIExpression()), !dbg !405
  call void @llvm.lifetime.start.p0(i64 4, ptr %15) #4, !dbg !406
  store ptr @lock, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !44, metadata !DIExpression()), !dbg !407
  %16 = load ptr, ptr %10, align 4, !dbg !409
  call void @llvm.dbg.declare(metadata ptr %9, metadata !50, metadata !DIExpression()), !dbg !410
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #4, !dbg !411
  call void @llvm.dbg.declare(metadata ptr %6, metadata !62, metadata !DIExpression()), !dbg !413
  %17 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #4, !dbg !414, !srcloc !66
  store i32 %17, ptr %6, align 4, !dbg !414
  %18 = load i32, ptr %6, align 4, !dbg !415
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #4, !dbg !416
  store i32 %18, ptr %9, align 4, !dbg !417
  %19 = load ptr, ptr %10, align 4, !dbg !418
  store ptr %19, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !71, metadata !DIExpression()), !dbg !419
  %20 = load ptr, ptr %5, align 4, !dbg !421
  %21 = load ptr, ptr %10, align 4, !dbg !422
  store ptr %21, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !80, metadata !DIExpression()), !dbg !423
  %22 = load ptr, ptr %4, align 4, !dbg !425
  %23 = load i32, ptr %9, align 4, !dbg !426
  %24 = getelementptr inbounds %struct.z_spinlock_key, ptr %15, i32 0, i32 0, !dbg !406
  store i32 %23, ptr %24, align 4, !dbg !406
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %13, ptr align 4 %15, i32 4, i1 false), !dbg !406
  call void @llvm.lifetime.end.p0(i64 4, ptr %15) #4, !dbg !406
  %25 = load ptr, ptr %11, align 4, !dbg !427
  %26 = load ptr, ptr %25, align 4, !dbg !428
  store ptr %26, ptr %14, align 4, !dbg !429
  %27 = load ptr, ptr %12, align 4, !dbg !430
  %28 = load ptr, ptr %11, align 4, !dbg !431
  store ptr %27, ptr %28, align 4, !dbg !432
  %29 = getelementptr inbounds %struct.z_spinlock_key, ptr %13, i32 0, i32 0, !dbg !433
  %30 = load [1 x i32], ptr %29, align 4, !dbg !433
  store [1 x i32] %30, ptr %7, align 4
  store ptr @lock, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !100, metadata !DIExpression()), !dbg !434
  call void @llvm.dbg.declare(metadata ptr %7, metadata !105, metadata !DIExpression()), !dbg !436
  %31 = load ptr, ptr %8, align 4, !dbg !437
  %32 = load i32, ptr %7, align 4, !dbg !438
  store i32 %32, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !111, metadata !DIExpression()), !dbg !439
  %33 = load i32, ptr %3, align 4, !dbg !441
  %34 = icmp ne i32 %33, 0, !dbg !442
  br i1 %34, label %35, label %36, !dbg !443

35:                                               ; preds = %2
  br label %arch_irq_unlock.exit, !dbg !444

36:                                               ; preds = %2
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #4, !dbg !445, !srcloc !125
  br label %arch_irq_unlock.exit, !dbg !446

arch_irq_unlock.exit:                             ; preds = %35, %36
  %37 = load ptr, ptr %14, align 4, !dbg !447
  call void @llvm.lifetime.end.p0(i64 4, ptr %14) #4, !dbg !448
  call void @llvm.lifetime.end.p0(i64 4, ptr %13) #4, !dbg !448
  ret ptr %37, !dbg !449
}

; Function Attrs: nounwind optsize
define hidden i32 @z_impl_atomic_or(ptr noundef %0, i32 noundef %1) #0 !dbg !450 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.z_spinlock_key, align 4
  %8 = alloca ptr, align 4
  %9 = alloca %struct.z_spinlock_key, align 4
  %10 = alloca ptr, align 4
  %11 = alloca ptr, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.z_spinlock_key, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.z_spinlock_key, align 4
  store ptr %0, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !452, metadata !DIExpression()), !dbg !456
  store i32 %1, ptr %12, align 4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !453, metadata !DIExpression()), !dbg !457
  call void @llvm.lifetime.start.p0(i64 4, ptr %13) #4, !dbg !458
  call void @llvm.dbg.declare(metadata ptr %13, metadata !454, metadata !DIExpression()), !dbg !459
  call void @llvm.lifetime.start.p0(i64 4, ptr %14) #4, !dbg !460
  call void @llvm.dbg.declare(metadata ptr %14, metadata !455, metadata !DIExpression()), !dbg !461
  call void @llvm.lifetime.start.p0(i64 4, ptr %15) #4, !dbg !462
  store ptr @lock, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !44, metadata !DIExpression()), !dbg !463
  %16 = load ptr, ptr %10, align 4, !dbg !465
  call void @llvm.dbg.declare(metadata ptr %9, metadata !50, metadata !DIExpression()), !dbg !466
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #4, !dbg !467
  call void @llvm.dbg.declare(metadata ptr %6, metadata !62, metadata !DIExpression()), !dbg !469
  %17 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #4, !dbg !470, !srcloc !66
  store i32 %17, ptr %6, align 4, !dbg !470
  %18 = load i32, ptr %6, align 4, !dbg !471
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #4, !dbg !472
  store i32 %18, ptr %9, align 4, !dbg !473
  %19 = load ptr, ptr %10, align 4, !dbg !474
  store ptr %19, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !71, metadata !DIExpression()), !dbg !475
  %20 = load ptr, ptr %5, align 4, !dbg !477
  %21 = load ptr, ptr %10, align 4, !dbg !478
  store ptr %21, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !80, metadata !DIExpression()), !dbg !479
  %22 = load ptr, ptr %4, align 4, !dbg !481
  %23 = load i32, ptr %9, align 4, !dbg !482
  %24 = getelementptr inbounds %struct.z_spinlock_key, ptr %15, i32 0, i32 0, !dbg !462
  store i32 %23, ptr %24, align 4, !dbg !462
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %13, ptr align 4 %15, i32 4, i1 false), !dbg !462
  call void @llvm.lifetime.end.p0(i64 4, ptr %15) #4, !dbg !462
  %25 = load ptr, ptr %11, align 4, !dbg !483
  %26 = load i32, ptr %25, align 4, !dbg !484
  store i32 %26, ptr %14, align 4, !dbg !485
  %27 = load i32, ptr %12, align 4, !dbg !486
  %28 = load ptr, ptr %11, align 4, !dbg !487
  %29 = load i32, ptr %28, align 4, !dbg !488
  %30 = or i32 %29, %27, !dbg !488
  store i32 %30, ptr %28, align 4, !dbg !488
  %31 = getelementptr inbounds %struct.z_spinlock_key, ptr %13, i32 0, i32 0, !dbg !489
  %32 = load [1 x i32], ptr %31, align 4, !dbg !489
  store [1 x i32] %32, ptr %7, align 4
  store ptr @lock, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !100, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.declare(metadata ptr %7, metadata !105, metadata !DIExpression()), !dbg !492
  %33 = load ptr, ptr %8, align 4, !dbg !493
  %34 = load i32, ptr %7, align 4, !dbg !494
  store i32 %34, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !111, metadata !DIExpression()), !dbg !495
  %35 = load i32, ptr %3, align 4, !dbg !497
  %36 = icmp ne i32 %35, 0, !dbg !498
  br i1 %36, label %37, label %38, !dbg !499

37:                                               ; preds = %2
  br label %arch_irq_unlock.exit, !dbg !500

38:                                               ; preds = %2
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #4, !dbg !501, !srcloc !125
  br label %arch_irq_unlock.exit, !dbg !502

arch_irq_unlock.exit:                             ; preds = %37, %38
  %39 = load i32, ptr %14, align 4, !dbg !503
  call void @llvm.lifetime.end.p0(i64 4, ptr %14) #4, !dbg !504
  call void @llvm.lifetime.end.p0(i64 4, ptr %13) #4, !dbg !504
  ret i32 %39, !dbg !505
}

; Function Attrs: nounwind optsize
define hidden i32 @z_impl_atomic_xor(ptr noundef %0, i32 noundef %1) #0 !dbg !506 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.z_spinlock_key, align 4
  %8 = alloca ptr, align 4
  %9 = alloca %struct.z_spinlock_key, align 4
  %10 = alloca ptr, align 4
  %11 = alloca ptr, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.z_spinlock_key, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.z_spinlock_key, align 4
  store ptr %0, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !508, metadata !DIExpression()), !dbg !512
  store i32 %1, ptr %12, align 4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !509, metadata !DIExpression()), !dbg !513
  call void @llvm.lifetime.start.p0(i64 4, ptr %13) #4, !dbg !514
  call void @llvm.dbg.declare(metadata ptr %13, metadata !510, metadata !DIExpression()), !dbg !515
  call void @llvm.lifetime.start.p0(i64 4, ptr %14) #4, !dbg !516
  call void @llvm.dbg.declare(metadata ptr %14, metadata !511, metadata !DIExpression()), !dbg !517
  call void @llvm.lifetime.start.p0(i64 4, ptr %15) #4, !dbg !518
  store ptr @lock, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !44, metadata !DIExpression()), !dbg !519
  %16 = load ptr, ptr %10, align 4, !dbg !521
  call void @llvm.dbg.declare(metadata ptr %9, metadata !50, metadata !DIExpression()), !dbg !522
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #4, !dbg !523
  call void @llvm.dbg.declare(metadata ptr %6, metadata !62, metadata !DIExpression()), !dbg !525
  %17 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #4, !dbg !526, !srcloc !66
  store i32 %17, ptr %6, align 4, !dbg !526
  %18 = load i32, ptr %6, align 4, !dbg !527
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #4, !dbg !528
  store i32 %18, ptr %9, align 4, !dbg !529
  %19 = load ptr, ptr %10, align 4, !dbg !530
  store ptr %19, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !71, metadata !DIExpression()), !dbg !531
  %20 = load ptr, ptr %5, align 4, !dbg !533
  %21 = load ptr, ptr %10, align 4, !dbg !534
  store ptr %21, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !80, metadata !DIExpression()), !dbg !535
  %22 = load ptr, ptr %4, align 4, !dbg !537
  %23 = load i32, ptr %9, align 4, !dbg !538
  %24 = getelementptr inbounds %struct.z_spinlock_key, ptr %15, i32 0, i32 0, !dbg !518
  store i32 %23, ptr %24, align 4, !dbg !518
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %13, ptr align 4 %15, i32 4, i1 false), !dbg !518
  call void @llvm.lifetime.end.p0(i64 4, ptr %15) #4, !dbg !518
  %25 = load ptr, ptr %11, align 4, !dbg !539
  %26 = load i32, ptr %25, align 4, !dbg !540
  store i32 %26, ptr %14, align 4, !dbg !541
  %27 = load i32, ptr %12, align 4, !dbg !542
  %28 = load ptr, ptr %11, align 4, !dbg !543
  %29 = load i32, ptr %28, align 4, !dbg !544
  %30 = xor i32 %29, %27, !dbg !544
  store i32 %30, ptr %28, align 4, !dbg !544
  %31 = getelementptr inbounds %struct.z_spinlock_key, ptr %13, i32 0, i32 0, !dbg !545
  %32 = load [1 x i32], ptr %31, align 4, !dbg !545
  store [1 x i32] %32, ptr %7, align 4
  store ptr @lock, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !100, metadata !DIExpression()), !dbg !546
  call void @llvm.dbg.declare(metadata ptr %7, metadata !105, metadata !DIExpression()), !dbg !548
  %33 = load ptr, ptr %8, align 4, !dbg !549
  %34 = load i32, ptr %7, align 4, !dbg !550
  store i32 %34, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !111, metadata !DIExpression()), !dbg !551
  %35 = load i32, ptr %3, align 4, !dbg !553
  %36 = icmp ne i32 %35, 0, !dbg !554
  br i1 %36, label %37, label %38, !dbg !555

37:                                               ; preds = %2
  br label %arch_irq_unlock.exit, !dbg !556

38:                                               ; preds = %2
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #4, !dbg !557, !srcloc !125
  br label %arch_irq_unlock.exit, !dbg !558

arch_irq_unlock.exit:                             ; preds = %37, %38
  %39 = load i32, ptr %14, align 4, !dbg !559
  call void @llvm.lifetime.end.p0(i64 4, ptr %14) #4, !dbg !560
  call void @llvm.lifetime.end.p0(i64 4, ptr %13) #4, !dbg !560
  ret i32 %39, !dbg !561
}

; Function Attrs: nounwind optsize
define hidden i32 @z_impl_atomic_and(ptr noundef %0, i32 noundef %1) #0 !dbg !562 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.z_spinlock_key, align 4
  %8 = alloca ptr, align 4
  %9 = alloca %struct.z_spinlock_key, align 4
  %10 = alloca ptr, align 4
  %11 = alloca ptr, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.z_spinlock_key, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.z_spinlock_key, align 4
  store ptr %0, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !564, metadata !DIExpression()), !dbg !568
  store i32 %1, ptr %12, align 4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !565, metadata !DIExpression()), !dbg !569
  call void @llvm.lifetime.start.p0(i64 4, ptr %13) #4, !dbg !570
  call void @llvm.dbg.declare(metadata ptr %13, metadata !566, metadata !DIExpression()), !dbg !571
  call void @llvm.lifetime.start.p0(i64 4, ptr %14) #4, !dbg !572
  call void @llvm.dbg.declare(metadata ptr %14, metadata !567, metadata !DIExpression()), !dbg !573
  call void @llvm.lifetime.start.p0(i64 4, ptr %15) #4, !dbg !574
  store ptr @lock, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !44, metadata !DIExpression()), !dbg !575
  %16 = load ptr, ptr %10, align 4, !dbg !577
  call void @llvm.dbg.declare(metadata ptr %9, metadata !50, metadata !DIExpression()), !dbg !578
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #4, !dbg !579
  call void @llvm.dbg.declare(metadata ptr %6, metadata !62, metadata !DIExpression()), !dbg !581
  %17 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #4, !dbg !582, !srcloc !66
  store i32 %17, ptr %6, align 4, !dbg !582
  %18 = load i32, ptr %6, align 4, !dbg !583
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #4, !dbg !584
  store i32 %18, ptr %9, align 4, !dbg !585
  %19 = load ptr, ptr %10, align 4, !dbg !586
  store ptr %19, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !71, metadata !DIExpression()), !dbg !587
  %20 = load ptr, ptr %5, align 4, !dbg !589
  %21 = load ptr, ptr %10, align 4, !dbg !590
  store ptr %21, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !80, metadata !DIExpression()), !dbg !591
  %22 = load ptr, ptr %4, align 4, !dbg !593
  %23 = load i32, ptr %9, align 4, !dbg !594
  %24 = getelementptr inbounds %struct.z_spinlock_key, ptr %15, i32 0, i32 0, !dbg !574
  store i32 %23, ptr %24, align 4, !dbg !574
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %13, ptr align 4 %15, i32 4, i1 false), !dbg !574
  call void @llvm.lifetime.end.p0(i64 4, ptr %15) #4, !dbg !574
  %25 = load ptr, ptr %11, align 4, !dbg !595
  %26 = load i32, ptr %25, align 4, !dbg !596
  store i32 %26, ptr %14, align 4, !dbg !597
  %27 = load i32, ptr %12, align 4, !dbg !598
  %28 = load ptr, ptr %11, align 4, !dbg !599
  %29 = load i32, ptr %28, align 4, !dbg !600
  %30 = and i32 %29, %27, !dbg !600
  store i32 %30, ptr %28, align 4, !dbg !600
  %31 = getelementptr inbounds %struct.z_spinlock_key, ptr %13, i32 0, i32 0, !dbg !601
  %32 = load [1 x i32], ptr %31, align 4, !dbg !601
  store [1 x i32] %32, ptr %7, align 4
  store ptr @lock, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !100, metadata !DIExpression()), !dbg !602
  call void @llvm.dbg.declare(metadata ptr %7, metadata !105, metadata !DIExpression()), !dbg !604
  %33 = load ptr, ptr %8, align 4, !dbg !605
  %34 = load i32, ptr %7, align 4, !dbg !606
  store i32 %34, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !111, metadata !DIExpression()), !dbg !607
  %35 = load i32, ptr %3, align 4, !dbg !609
  %36 = icmp ne i32 %35, 0, !dbg !610
  br i1 %36, label %37, label %38, !dbg !611

37:                                               ; preds = %2
  br label %arch_irq_unlock.exit, !dbg !612

38:                                               ; preds = %2
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #4, !dbg !613, !srcloc !125
  br label %arch_irq_unlock.exit, !dbg !614

arch_irq_unlock.exit:                             ; preds = %37, %38
  %39 = load i32, ptr %14, align 4, !dbg !615
  call void @llvm.lifetime.end.p0(i64 4, ptr %14) #4, !dbg !616
  call void @llvm.lifetime.end.p0(i64 4, ptr %13) #4, !dbg !616
  ret i32 %39, !dbg !617
}

; Function Attrs: nounwind optsize
define hidden i32 @z_impl_atomic_nand(ptr noundef %0, i32 noundef %1) #0 !dbg !618 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.z_spinlock_key, align 4
  %8 = alloca ptr, align 4
  %9 = alloca %struct.z_spinlock_key, align 4
  %10 = alloca ptr, align 4
  %11 = alloca ptr, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.z_spinlock_key, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.z_spinlock_key, align 4
  store ptr %0, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !620, metadata !DIExpression()), !dbg !624
  store i32 %1, ptr %12, align 4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !621, metadata !DIExpression()), !dbg !625
  call void @llvm.lifetime.start.p0(i64 4, ptr %13) #4, !dbg !626
  call void @llvm.dbg.declare(metadata ptr %13, metadata !622, metadata !DIExpression()), !dbg !627
  call void @llvm.lifetime.start.p0(i64 4, ptr %14) #4, !dbg !628
  call void @llvm.dbg.declare(metadata ptr %14, metadata !623, metadata !DIExpression()), !dbg !629
  call void @llvm.lifetime.start.p0(i64 4, ptr %15) #4, !dbg !630
  store ptr @lock, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !44, metadata !DIExpression()), !dbg !631
  %16 = load ptr, ptr %10, align 4, !dbg !633
  call void @llvm.dbg.declare(metadata ptr %9, metadata !50, metadata !DIExpression()), !dbg !634
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #4, !dbg !635
  call void @llvm.dbg.declare(metadata ptr %6, metadata !62, metadata !DIExpression()), !dbg !637
  %17 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #4, !dbg !638, !srcloc !66
  store i32 %17, ptr %6, align 4, !dbg !638
  %18 = load i32, ptr %6, align 4, !dbg !639
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #4, !dbg !640
  store i32 %18, ptr %9, align 4, !dbg !641
  %19 = load ptr, ptr %10, align 4, !dbg !642
  store ptr %19, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !71, metadata !DIExpression()), !dbg !643
  %20 = load ptr, ptr %5, align 4, !dbg !645
  %21 = load ptr, ptr %10, align 4, !dbg !646
  store ptr %21, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !80, metadata !DIExpression()), !dbg !647
  %22 = load ptr, ptr %4, align 4, !dbg !649
  %23 = load i32, ptr %9, align 4, !dbg !650
  %24 = getelementptr inbounds %struct.z_spinlock_key, ptr %15, i32 0, i32 0, !dbg !630
  store i32 %23, ptr %24, align 4, !dbg !630
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %13, ptr align 4 %15, i32 4, i1 false), !dbg !630
  call void @llvm.lifetime.end.p0(i64 4, ptr %15) #4, !dbg !630
  %25 = load ptr, ptr %11, align 4, !dbg !651
  %26 = load i32, ptr %25, align 4, !dbg !652
  store i32 %26, ptr %14, align 4, !dbg !653
  %27 = load ptr, ptr %11, align 4, !dbg !654
  %28 = load i32, ptr %27, align 4, !dbg !655
  %29 = load i32, ptr %12, align 4, !dbg !656
  %30 = and i32 %28, %29, !dbg !657
  %31 = xor i32 %30, -1, !dbg !658
  %32 = load ptr, ptr %11, align 4, !dbg !659
  store i32 %31, ptr %32, align 4, !dbg !660
  %33 = getelementptr inbounds %struct.z_spinlock_key, ptr %13, i32 0, i32 0, !dbg !661
  %34 = load [1 x i32], ptr %33, align 4, !dbg !661
  store [1 x i32] %34, ptr %7, align 4
  store ptr @lock, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !100, metadata !DIExpression()), !dbg !662
  call void @llvm.dbg.declare(metadata ptr %7, metadata !105, metadata !DIExpression()), !dbg !664
  %35 = load ptr, ptr %8, align 4, !dbg !665
  %36 = load i32, ptr %7, align 4, !dbg !666
  store i32 %36, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !111, metadata !DIExpression()), !dbg !667
  %37 = load i32, ptr %3, align 4, !dbg !669
  %38 = icmp ne i32 %37, 0, !dbg !670
  br i1 %38, label %39, label %40, !dbg !671

39:                                               ; preds = %2
  br label %arch_irq_unlock.exit, !dbg !672

40:                                               ; preds = %2
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #4, !dbg !673, !srcloc !125
  br label %arch_irq_unlock.exit, !dbg !674

arch_irq_unlock.exit:                             ; preds = %39, %40
  %41 = load i32, ptr %14, align 4, !dbg !675
  call void @llvm.lifetime.end.p0(i64 4, ptr %14) #4, !dbg !676
  call void @llvm.lifetime.end.p0(i64 4, ptr %13) #4, !dbg !676
  ret i32 %41, !dbg !677
}

attributes #0 = { nounwind optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "lock", scope: !2, file: !5, line: 32, type: !6, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "atomic_c.c", directory: "/home/sri/zephyrproject/zephyr/build")
!4 = !{!0}
!5 = !DIFile(filename: "kernel/atomic_c.c", directory: "/home/sri/zephyrproject/zephyr")
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_spinlock", file: !7, line: 45, elements: !8)
!7 = !DIFile(filename: "include/zephyr/spinlock.h", directory: "/home/sri/zephyrproject/zephyr")
!8 = !{}
!9 = !{i32 7, !"Dwarf Version", i32 4}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{i32 1, !"wchar_size", i32 4}
!12 = !{i32 1, !"static_rwdata", i32 1}
!13 = !{i32 1, !"enumsize_buildattr", i32 1}
!14 = !{i32 1, !"armlib_unavailable", i32 0}
!15 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
!16 = distinct !DISubprogram(name: "z_impl_atomic_cas", scope: !5, file: !5, line: 81, type: !17, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !25)
!17 = !DISubroutineType(types: !18)
!18 = !{!19, !20, !24, !24}
!19 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 32)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !22, line: 22, baseType: !23)
!22 = !DIFile(filename: "include/zephyr/sys/atomic.h", directory: "/home/sri/zephyrproject/zephyr")
!23 = !DIBasicType(name: "long", size: 32, encoding: DW_ATE_signed)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_val_t", file: !22, line: 23, baseType: !21)
!25 = !{!26, !27, !28, !29, !35}
!26 = !DILocalVariable(name: "target", arg: 1, scope: !16, file: !5, line: 81, type: !20)
!27 = !DILocalVariable(name: "old_value", arg: 2, scope: !16, file: !5, line: 81, type: !24)
!28 = !DILocalVariable(name: "new_value", arg: 3, scope: !16, file: !5, line: 82, type: !24)
!29 = !DILocalVariable(name: "key", scope: !16, file: !5, line: 84, type: !30)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_spinlock_key_t", file: !7, line: 108, baseType: !31)
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "z_spinlock_key", file: !7, line: 34, size: 32, elements: !32)
!32 = !{!33}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !31, file: !7, line: 35, baseType: !34, size: 32)
!34 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!35 = !DILocalVariable(name: "ret", scope: !16, file: !5, line: 85, type: !34)
!36 = !DILocation(line: 81, column: 35, scope: !16)
!37 = !DILocation(line: 81, column: 56, scope: !16)
!38 = !DILocation(line: 82, column: 23, scope: !16)
!39 = !DILocation(line: 84, column: 2, scope: !16)
!40 = !DILocation(line: 84, column: 19, scope: !16)
!41 = !DILocation(line: 85, column: 2, scope: !16)
!42 = !DILocation(line: 85, column: 6, scope: !16)
!43 = !DILocation(line: 95, column: 8, scope: !16)
!44 = !DILocalVariable(name: "l", arg: 1, scope: !45, file: !7, line: 160, type: !48)
!45 = distinct !DISubprogram(name: "k_spin_lock", scope: !7, file: !7, line: 160, type: !46, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !49)
!46 = !DISubroutineType(types: !47)
!47 = !{!30, !48}
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 32)
!49 = !{!44, !50}
!50 = !DILocalVariable(name: "k", scope: !45, file: !7, line: 163, type: !30)
!51 = !DILocation(line: 160, column: 94, scope: !45, inlinedAt: !52)
!52 = distinct !DILocation(line: 95, column: 8, scope: !16)
!53 = !DILocation(line: 162, column: 9, scope: !45, inlinedAt: !52)
!54 = !DILocation(line: 163, column: 19, scope: !45, inlinedAt: !52)
!55 = !DILocation(line: 44, column: 2, scope: !56, inlinedAt: !63)
!56 = distinct !DISubprogram(name: "arch_irq_lock", scope: !57, file: !57, line: 42, type: !58, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !61)
!57 = !DIFile(filename: "include/zephyr/arch/arm/asm_inline_gcc.h", directory: "/home/sri/zephyrproject/zephyr")
!58 = !DISubroutineType(types: !59)
!59 = !{!60}
!60 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!61 = !{!62}
!62 = !DILocalVariable(name: "key", scope: !56, file: !57, line: 44, type: !60)
!63 = distinct !DILocation(line: 169, column: 10, scope: !45, inlinedAt: !52)
!64 = !DILocation(line: 44, column: 15, scope: !56, inlinedAt: !63)
!65 = !DILocation(line: 48, column: 2, scope: !56, inlinedAt: !63)
!66 = !{i64 54679}
!67 = !DILocation(line: 80, column: 9, scope: !56, inlinedAt: !63)
!68 = !DILocation(line: 81, column: 1, scope: !56, inlinedAt: !63)
!69 = !DILocation(line: 169, column: 8, scope: !45, inlinedAt: !52)
!70 = !DILocation(line: 171, column: 26, scope: !45, inlinedAt: !52)
!71 = !DILocalVariable(name: "l", arg: 1, scope: !72, file: !7, line: 110, type: !48)
!72 = distinct !DISubprogram(name: "z_spinlock_validate_pre", scope: !7, file: !7, line: 110, type: !73, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !75)
!73 = !DISubroutineType(types: !74)
!74 = !{null, !48}
!75 = !{!71}
!76 = !DILocation(line: 110, column: 94, scope: !72, inlinedAt: !77)
!77 = distinct !DILocation(line: 171, column: 2, scope: !45, inlinedAt: !52)
!78 = !DILocation(line: 112, column: 9, scope: !72, inlinedAt: !77)
!79 = !DILocation(line: 177, column: 27, scope: !45, inlinedAt: !52)
!80 = !DILocalVariable(name: "l", arg: 1, scope: !81, file: !7, line: 121, type: !48)
!81 = distinct !DISubprogram(name: "z_spinlock_validate_post", scope: !7, file: !7, line: 121, type: !73, scopeLine: 122, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !82)
!82 = !{!80}
!83 = !DILocation(line: 121, column: 95, scope: !81, inlinedAt: !84)
!84 = distinct !DILocation(line: 177, column: 2, scope: !45, inlinedAt: !52)
!85 = !DILocation(line: 123, column: 9, scope: !81, inlinedAt: !84)
!86 = !DILocation(line: 179, column: 2, scope: !45, inlinedAt: !52)
!87 = !DILocation(line: 97, column: 7, scope: !88)
!88 = distinct !DILexicalBlock(scope: !16, file: !5, line: 97, column: 6)
!89 = !DILocation(line: 97, column: 6, scope: !88)
!90 = !DILocation(line: 97, column: 17, scope: !88)
!91 = !DILocation(line: 97, column: 14, scope: !88)
!92 = !DILocation(line: 97, column: 6, scope: !16)
!93 = !DILocation(line: 98, column: 13, scope: !94)
!94 = distinct !DILexicalBlock(scope: !88, file: !5, line: 97, column: 28)
!95 = !DILocation(line: 98, column: 4, scope: !94)
!96 = !DILocation(line: 98, column: 11, scope: !94)
!97 = !DILocation(line: 99, column: 7, scope: !94)
!98 = !DILocation(line: 100, column: 2, scope: !94)
!99 = !DILocation(line: 102, column: 2, scope: !16)
!100 = !DILocalVariable(name: "l", arg: 1, scope: !101, file: !7, line: 235, type: !48)
!101 = distinct !DISubprogram(name: "k_spin_unlock", scope: !7, file: !7, line: 235, type: !102, scopeLine: 237, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !104)
!102 = !DISubroutineType(types: !103)
!103 = !{null, !48, !30}
!104 = !{!100, !105}
!105 = !DILocalVariable(name: "key", arg: 2, scope: !101, file: !7, line: 236, type: !30)
!106 = !DILocation(line: 235, column: 84, scope: !101, inlinedAt: !107)
!107 = distinct !DILocation(line: 102, column: 2, scope: !16)
!108 = !DILocation(line: 236, column: 23, scope: !101, inlinedAt: !107)
!109 = !DILocation(line: 238, column: 9, scope: !101, inlinedAt: !107)
!110 = !DILocation(line: 261, column: 22, scope: !101, inlinedAt: !107)
!111 = !DILocalVariable(name: "key", arg: 1, scope: !112, file: !57, line: 88, type: !60)
!112 = distinct !DISubprogram(name: "arch_irq_unlock", scope: !57, file: !57, line: 88, type: !113, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !115)
!113 = !DISubroutineType(types: !114)
!114 = !{null, !60}
!115 = !{!111}
!116 = !DILocation(line: 88, column: 80, scope: !112, inlinedAt: !117)
!117 = distinct !DILocation(line: 261, column: 2, scope: !101, inlinedAt: !107)
!118 = !DILocation(line: 91, column: 6, scope: !119, inlinedAt: !117)
!119 = distinct !DILexicalBlock(scope: !112, file: !57, line: 91, column: 6)
!120 = !DILocation(line: 91, column: 10, scope: !119, inlinedAt: !117)
!121 = !DILocation(line: 91, column: 6, scope: !112, inlinedAt: !117)
!122 = !DILocation(line: 92, column: 3, scope: !123, inlinedAt: !117)
!123 = distinct !DILexicalBlock(scope: !119, file: !57, line: 91, column: 17)
!124 = !DILocation(line: 94, column: 2, scope: !112, inlinedAt: !117)
!125 = !{i64 54983}
!126 = !DILocation(line: 114, column: 1, scope: !112, inlinedAt: !117)
!127 = !DILocation(line: 104, column: 9, scope: !16)
!128 = !DILocation(line: 105, column: 1, scope: !16)
!129 = !DILocation(line: 104, column: 2, scope: !16)
!130 = distinct !DISubprogram(name: "z_impl_atomic_ptr_cas", scope: !5, file: !5, line: 118, type: !131, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !137)
!131 = !DISubroutineType(types: !132)
!132 = !{!19, !133, !136, !136}
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 32)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_ptr_t", file: !22, line: 24, baseType: !135)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_ptr_val_t", file: !22, line: 25, baseType: !134)
!137 = !{!138, !139, !140, !141, !142}
!138 = !DILocalVariable(name: "target", arg: 1, scope: !130, file: !5, line: 118, type: !133)
!139 = !DILocalVariable(name: "old_value", arg: 2, scope: !130, file: !5, line: 118, type: !136)
!140 = !DILocalVariable(name: "new_value", arg: 3, scope: !130, file: !5, line: 119, type: !136)
!141 = !DILocalVariable(name: "key", scope: !130, file: !5, line: 121, type: !30)
!142 = !DILocalVariable(name: "ret", scope: !130, file: !5, line: 122, type: !34)
!143 = !DILocation(line: 118, column: 43, scope: !130)
!144 = !DILocation(line: 118, column: 68, scope: !130)
!145 = !DILocation(line: 119, column: 24, scope: !130)
!146 = !DILocation(line: 121, column: 2, scope: !130)
!147 = !DILocation(line: 121, column: 19, scope: !130)
!148 = !DILocation(line: 122, column: 2, scope: !130)
!149 = !DILocation(line: 122, column: 6, scope: !130)
!150 = !DILocation(line: 124, column: 8, scope: !130)
!151 = !DILocation(line: 160, column: 94, scope: !45, inlinedAt: !152)
!152 = distinct !DILocation(line: 124, column: 8, scope: !130)
!153 = !DILocation(line: 162, column: 9, scope: !45, inlinedAt: !152)
!154 = !DILocation(line: 163, column: 19, scope: !45, inlinedAt: !152)
!155 = !DILocation(line: 44, column: 2, scope: !56, inlinedAt: !156)
!156 = distinct !DILocation(line: 169, column: 10, scope: !45, inlinedAt: !152)
!157 = !DILocation(line: 44, column: 15, scope: !56, inlinedAt: !156)
!158 = !DILocation(line: 48, column: 2, scope: !56, inlinedAt: !156)
!159 = !DILocation(line: 80, column: 9, scope: !56, inlinedAt: !156)
!160 = !DILocation(line: 81, column: 1, scope: !56, inlinedAt: !156)
!161 = !DILocation(line: 169, column: 8, scope: !45, inlinedAt: !152)
!162 = !DILocation(line: 171, column: 26, scope: !45, inlinedAt: !152)
!163 = !DILocation(line: 110, column: 94, scope: !72, inlinedAt: !164)
!164 = distinct !DILocation(line: 171, column: 2, scope: !45, inlinedAt: !152)
!165 = !DILocation(line: 112, column: 9, scope: !72, inlinedAt: !164)
!166 = !DILocation(line: 177, column: 27, scope: !45, inlinedAt: !152)
!167 = !DILocation(line: 121, column: 95, scope: !81, inlinedAt: !168)
!168 = distinct !DILocation(line: 177, column: 2, scope: !45, inlinedAt: !152)
!169 = !DILocation(line: 123, column: 9, scope: !81, inlinedAt: !168)
!170 = !DILocation(line: 179, column: 2, scope: !45, inlinedAt: !152)
!171 = !DILocation(line: 126, column: 7, scope: !172)
!172 = distinct !DILexicalBlock(scope: !130, file: !5, line: 126, column: 6)
!173 = !DILocation(line: 126, column: 6, scope: !172)
!174 = !DILocation(line: 126, column: 17, scope: !172)
!175 = !DILocation(line: 126, column: 14, scope: !172)
!176 = !DILocation(line: 126, column: 6, scope: !130)
!177 = !DILocation(line: 127, column: 13, scope: !178)
!178 = distinct !DILexicalBlock(scope: !172, file: !5, line: 126, column: 28)
!179 = !DILocation(line: 127, column: 4, scope: !178)
!180 = !DILocation(line: 127, column: 11, scope: !178)
!181 = !DILocation(line: 128, column: 7, scope: !178)
!182 = !DILocation(line: 129, column: 2, scope: !178)
!183 = !DILocation(line: 131, column: 2, scope: !130)
!184 = !DILocation(line: 235, column: 84, scope: !101, inlinedAt: !185)
!185 = distinct !DILocation(line: 131, column: 2, scope: !130)
!186 = !DILocation(line: 236, column: 23, scope: !101, inlinedAt: !185)
!187 = !DILocation(line: 238, column: 9, scope: !101, inlinedAt: !185)
!188 = !DILocation(line: 261, column: 22, scope: !101, inlinedAt: !185)
!189 = !DILocation(line: 88, column: 80, scope: !112, inlinedAt: !190)
!190 = distinct !DILocation(line: 261, column: 2, scope: !101, inlinedAt: !185)
!191 = !DILocation(line: 91, column: 6, scope: !119, inlinedAt: !190)
!192 = !DILocation(line: 91, column: 10, scope: !119, inlinedAt: !190)
!193 = !DILocation(line: 91, column: 6, scope: !112, inlinedAt: !190)
!194 = !DILocation(line: 92, column: 3, scope: !123, inlinedAt: !190)
!195 = !DILocation(line: 94, column: 2, scope: !112, inlinedAt: !190)
!196 = !DILocation(line: 114, column: 1, scope: !112, inlinedAt: !190)
!197 = !DILocation(line: 133, column: 9, scope: !130)
!198 = !DILocation(line: 134, column: 1, scope: !130)
!199 = !DILocation(line: 133, column: 2, scope: !130)
!200 = distinct !DISubprogram(name: "z_impl_atomic_add", scope: !5, file: !5, line: 161, type: !201, scopeLine: 162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !203)
!201 = !DISubroutineType(types: !202)
!202 = !{!24, !20, !24}
!203 = !{!204, !205, !206, !207}
!204 = !DILocalVariable(name: "target", arg: 1, scope: !200, file: !5, line: 161, type: !20)
!205 = !DILocalVariable(name: "value", arg: 2, scope: !200, file: !5, line: 161, type: !24)
!206 = !DILocalVariable(name: "key", scope: !200, file: !5, line: 163, type: !30)
!207 = !DILocalVariable(name: "ret", scope: !200, file: !5, line: 164, type: !24)
!208 = !DILocation(line: 161, column: 42, scope: !200)
!209 = !DILocation(line: 161, column: 63, scope: !200)
!210 = !DILocation(line: 163, column: 2, scope: !200)
!211 = !DILocation(line: 163, column: 19, scope: !200)
!212 = !DILocation(line: 164, column: 2, scope: !200)
!213 = !DILocation(line: 164, column: 15, scope: !200)
!214 = !DILocation(line: 166, column: 8, scope: !200)
!215 = !DILocation(line: 160, column: 94, scope: !45, inlinedAt: !216)
!216 = distinct !DILocation(line: 166, column: 8, scope: !200)
!217 = !DILocation(line: 162, column: 9, scope: !45, inlinedAt: !216)
!218 = !DILocation(line: 163, column: 19, scope: !45, inlinedAt: !216)
!219 = !DILocation(line: 44, column: 2, scope: !56, inlinedAt: !220)
!220 = distinct !DILocation(line: 169, column: 10, scope: !45, inlinedAt: !216)
!221 = !DILocation(line: 44, column: 15, scope: !56, inlinedAt: !220)
!222 = !DILocation(line: 48, column: 2, scope: !56, inlinedAt: !220)
!223 = !DILocation(line: 80, column: 9, scope: !56, inlinedAt: !220)
!224 = !DILocation(line: 81, column: 1, scope: !56, inlinedAt: !220)
!225 = !DILocation(line: 169, column: 8, scope: !45, inlinedAt: !216)
!226 = !DILocation(line: 171, column: 26, scope: !45, inlinedAt: !216)
!227 = !DILocation(line: 110, column: 94, scope: !72, inlinedAt: !228)
!228 = distinct !DILocation(line: 171, column: 2, scope: !45, inlinedAt: !216)
!229 = !DILocation(line: 112, column: 9, scope: !72, inlinedAt: !228)
!230 = !DILocation(line: 177, column: 27, scope: !45, inlinedAt: !216)
!231 = !DILocation(line: 121, column: 95, scope: !81, inlinedAt: !232)
!232 = distinct !DILocation(line: 177, column: 2, scope: !45, inlinedAt: !216)
!233 = !DILocation(line: 123, column: 9, scope: !81, inlinedAt: !232)
!234 = !DILocation(line: 179, column: 2, scope: !45, inlinedAt: !216)
!235 = !DILocation(line: 168, column: 9, scope: !200)
!236 = !DILocation(line: 168, column: 8, scope: !200)
!237 = !DILocation(line: 168, column: 6, scope: !200)
!238 = !DILocation(line: 169, column: 13, scope: !200)
!239 = !DILocation(line: 169, column: 3, scope: !200)
!240 = !DILocation(line: 169, column: 10, scope: !200)
!241 = !DILocation(line: 171, column: 2, scope: !200)
!242 = !DILocation(line: 235, column: 84, scope: !101, inlinedAt: !243)
!243 = distinct !DILocation(line: 171, column: 2, scope: !200)
!244 = !DILocation(line: 236, column: 23, scope: !101, inlinedAt: !243)
!245 = !DILocation(line: 238, column: 9, scope: !101, inlinedAt: !243)
!246 = !DILocation(line: 261, column: 22, scope: !101, inlinedAt: !243)
!247 = !DILocation(line: 88, column: 80, scope: !112, inlinedAt: !248)
!248 = distinct !DILocation(line: 261, column: 2, scope: !101, inlinedAt: !243)
!249 = !DILocation(line: 91, column: 6, scope: !119, inlinedAt: !248)
!250 = !DILocation(line: 91, column: 10, scope: !119, inlinedAt: !248)
!251 = !DILocation(line: 91, column: 6, scope: !112, inlinedAt: !248)
!252 = !DILocation(line: 92, column: 3, scope: !123, inlinedAt: !248)
!253 = !DILocation(line: 94, column: 2, scope: !112, inlinedAt: !248)
!254 = !DILocation(line: 114, column: 1, scope: !112, inlinedAt: !248)
!255 = !DILocation(line: 173, column: 9, scope: !200)
!256 = !DILocation(line: 174, column: 1, scope: !200)
!257 = !DILocation(line: 173, column: 2, scope: !200)
!258 = distinct !DISubprogram(name: "z_impl_atomic_sub", scope: !5, file: !5, line: 191, type: !201, scopeLine: 192, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !259)
!259 = !{!260, !261, !262, !263}
!260 = !DILocalVariable(name: "target", arg: 1, scope: !258, file: !5, line: 191, type: !20)
!261 = !DILocalVariable(name: "value", arg: 2, scope: !258, file: !5, line: 191, type: !24)
!262 = !DILocalVariable(name: "key", scope: !258, file: !5, line: 193, type: !30)
!263 = !DILocalVariable(name: "ret", scope: !258, file: !5, line: 194, type: !24)
!264 = !DILocation(line: 191, column: 42, scope: !258)
!265 = !DILocation(line: 191, column: 63, scope: !258)
!266 = !DILocation(line: 193, column: 2, scope: !258)
!267 = !DILocation(line: 193, column: 19, scope: !258)
!268 = !DILocation(line: 194, column: 2, scope: !258)
!269 = !DILocation(line: 194, column: 15, scope: !258)
!270 = !DILocation(line: 196, column: 8, scope: !258)
!271 = !DILocation(line: 160, column: 94, scope: !45, inlinedAt: !272)
!272 = distinct !DILocation(line: 196, column: 8, scope: !258)
!273 = !DILocation(line: 162, column: 9, scope: !45, inlinedAt: !272)
!274 = !DILocation(line: 163, column: 19, scope: !45, inlinedAt: !272)
!275 = !DILocation(line: 44, column: 2, scope: !56, inlinedAt: !276)
!276 = distinct !DILocation(line: 169, column: 10, scope: !45, inlinedAt: !272)
!277 = !DILocation(line: 44, column: 15, scope: !56, inlinedAt: !276)
!278 = !DILocation(line: 48, column: 2, scope: !56, inlinedAt: !276)
!279 = !DILocation(line: 80, column: 9, scope: !56, inlinedAt: !276)
!280 = !DILocation(line: 81, column: 1, scope: !56, inlinedAt: !276)
!281 = !DILocation(line: 169, column: 8, scope: !45, inlinedAt: !272)
!282 = !DILocation(line: 171, column: 26, scope: !45, inlinedAt: !272)
!283 = !DILocation(line: 110, column: 94, scope: !72, inlinedAt: !284)
!284 = distinct !DILocation(line: 171, column: 2, scope: !45, inlinedAt: !272)
!285 = !DILocation(line: 112, column: 9, scope: !72, inlinedAt: !284)
!286 = !DILocation(line: 177, column: 27, scope: !45, inlinedAt: !272)
!287 = !DILocation(line: 121, column: 95, scope: !81, inlinedAt: !288)
!288 = distinct !DILocation(line: 177, column: 2, scope: !45, inlinedAt: !272)
!289 = !DILocation(line: 123, column: 9, scope: !81, inlinedAt: !288)
!290 = !DILocation(line: 179, column: 2, scope: !45, inlinedAt: !272)
!291 = !DILocation(line: 198, column: 9, scope: !258)
!292 = !DILocation(line: 198, column: 8, scope: !258)
!293 = !DILocation(line: 198, column: 6, scope: !258)
!294 = !DILocation(line: 199, column: 13, scope: !258)
!295 = !DILocation(line: 199, column: 3, scope: !258)
!296 = !DILocation(line: 199, column: 10, scope: !258)
!297 = !DILocation(line: 201, column: 2, scope: !258)
!298 = !DILocation(line: 235, column: 84, scope: !101, inlinedAt: !299)
!299 = distinct !DILocation(line: 201, column: 2, scope: !258)
!300 = !DILocation(line: 236, column: 23, scope: !101, inlinedAt: !299)
!301 = !DILocation(line: 238, column: 9, scope: !101, inlinedAt: !299)
!302 = !DILocation(line: 261, column: 22, scope: !101, inlinedAt: !299)
!303 = !DILocation(line: 88, column: 80, scope: !112, inlinedAt: !304)
!304 = distinct !DILocation(line: 261, column: 2, scope: !101, inlinedAt: !299)
!305 = !DILocation(line: 91, column: 6, scope: !119, inlinedAt: !304)
!306 = !DILocation(line: 91, column: 10, scope: !119, inlinedAt: !304)
!307 = !DILocation(line: 91, column: 6, scope: !112, inlinedAt: !304)
!308 = !DILocation(line: 92, column: 3, scope: !123, inlinedAt: !304)
!309 = !DILocation(line: 94, column: 2, scope: !112, inlinedAt: !304)
!310 = !DILocation(line: 114, column: 1, scope: !112, inlinedAt: !304)
!311 = !DILocation(line: 203, column: 9, scope: !258)
!312 = !DILocation(line: 204, column: 1, scope: !258)
!313 = !DILocation(line: 203, column: 2, scope: !258)
!314 = distinct !DISubprogram(name: "atomic_get", scope: !5, file: !5, line: 220, type: !315, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !319)
!315 = !DISubroutineType(types: !316)
!316 = !{!24, !317}
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 32)
!318 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!319 = !{!320}
!320 = !DILocalVariable(name: "target", arg: 1, scope: !314, file: !5, line: 220, type: !317)
!321 = !DILocation(line: 220, column: 41, scope: !314)
!322 = !DILocation(line: 222, column: 10, scope: !314)
!323 = !DILocation(line: 222, column: 9, scope: !314)
!324 = !DILocation(line: 222, column: 2, scope: !314)
!325 = distinct !DISubprogram(name: "atomic_ptr_get", scope: !5, file: !5, line: 225, type: !326, scopeLine: 226, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !330)
!326 = !DISubroutineType(types: !327)
!327 = !{!136, !328}
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 32)
!329 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !134)
!330 = !{!331}
!331 = !DILocalVariable(name: "target", arg: 1, scope: !325, file: !5, line: 225, type: !328)
!332 = !DILocation(line: 225, column: 53, scope: !325)
!333 = !DILocation(line: 227, column: 10, scope: !325)
!334 = !DILocation(line: 227, column: 9, scope: !325)
!335 = !DILocation(line: 227, column: 2, scope: !325)
!336 = distinct !DISubprogram(name: "z_impl_atomic_set", scope: !5, file: !5, line: 242, type: !201, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !337)
!337 = !{!338, !339, !340, !341}
!338 = !DILocalVariable(name: "target", arg: 1, scope: !336, file: !5, line: 242, type: !20)
!339 = !DILocalVariable(name: "value", arg: 2, scope: !336, file: !5, line: 242, type: !24)
!340 = !DILocalVariable(name: "key", scope: !336, file: !5, line: 244, type: !30)
!341 = !DILocalVariable(name: "ret", scope: !336, file: !5, line: 245, type: !24)
!342 = !DILocation(line: 242, column: 42, scope: !336)
!343 = !DILocation(line: 242, column: 63, scope: !336)
!344 = !DILocation(line: 244, column: 2, scope: !336)
!345 = !DILocation(line: 244, column: 19, scope: !336)
!346 = !DILocation(line: 245, column: 2, scope: !336)
!347 = !DILocation(line: 245, column: 15, scope: !336)
!348 = !DILocation(line: 247, column: 8, scope: !336)
!349 = !DILocation(line: 160, column: 94, scope: !45, inlinedAt: !350)
!350 = distinct !DILocation(line: 247, column: 8, scope: !336)
!351 = !DILocation(line: 162, column: 9, scope: !45, inlinedAt: !350)
!352 = !DILocation(line: 163, column: 19, scope: !45, inlinedAt: !350)
!353 = !DILocation(line: 44, column: 2, scope: !56, inlinedAt: !354)
!354 = distinct !DILocation(line: 169, column: 10, scope: !45, inlinedAt: !350)
!355 = !DILocation(line: 44, column: 15, scope: !56, inlinedAt: !354)
!356 = !DILocation(line: 48, column: 2, scope: !56, inlinedAt: !354)
!357 = !DILocation(line: 80, column: 9, scope: !56, inlinedAt: !354)
!358 = !DILocation(line: 81, column: 1, scope: !56, inlinedAt: !354)
!359 = !DILocation(line: 169, column: 8, scope: !45, inlinedAt: !350)
!360 = !DILocation(line: 171, column: 26, scope: !45, inlinedAt: !350)
!361 = !DILocation(line: 110, column: 94, scope: !72, inlinedAt: !362)
!362 = distinct !DILocation(line: 171, column: 2, scope: !45, inlinedAt: !350)
!363 = !DILocation(line: 112, column: 9, scope: !72, inlinedAt: !362)
!364 = !DILocation(line: 177, column: 27, scope: !45, inlinedAt: !350)
!365 = !DILocation(line: 121, column: 95, scope: !81, inlinedAt: !366)
!366 = distinct !DILocation(line: 177, column: 2, scope: !45, inlinedAt: !350)
!367 = !DILocation(line: 123, column: 9, scope: !81, inlinedAt: !366)
!368 = !DILocation(line: 179, column: 2, scope: !45, inlinedAt: !350)
!369 = !DILocation(line: 249, column: 9, scope: !336)
!370 = !DILocation(line: 249, column: 8, scope: !336)
!371 = !DILocation(line: 249, column: 6, scope: !336)
!372 = !DILocation(line: 250, column: 12, scope: !336)
!373 = !DILocation(line: 250, column: 3, scope: !336)
!374 = !DILocation(line: 250, column: 10, scope: !336)
!375 = !DILocation(line: 252, column: 2, scope: !336)
!376 = !DILocation(line: 235, column: 84, scope: !101, inlinedAt: !377)
!377 = distinct !DILocation(line: 252, column: 2, scope: !336)
!378 = !DILocation(line: 236, column: 23, scope: !101, inlinedAt: !377)
!379 = !DILocation(line: 238, column: 9, scope: !101, inlinedAt: !377)
!380 = !DILocation(line: 261, column: 22, scope: !101, inlinedAt: !377)
!381 = !DILocation(line: 88, column: 80, scope: !112, inlinedAt: !382)
!382 = distinct !DILocation(line: 261, column: 2, scope: !101, inlinedAt: !377)
!383 = !DILocation(line: 91, column: 6, scope: !119, inlinedAt: !382)
!384 = !DILocation(line: 91, column: 10, scope: !119, inlinedAt: !382)
!385 = !DILocation(line: 91, column: 6, scope: !112, inlinedAt: !382)
!386 = !DILocation(line: 92, column: 3, scope: !123, inlinedAt: !382)
!387 = !DILocation(line: 94, column: 2, scope: !112, inlinedAt: !382)
!388 = !DILocation(line: 114, column: 1, scope: !112, inlinedAt: !382)
!389 = !DILocation(line: 254, column: 9, scope: !336)
!390 = !DILocation(line: 255, column: 1, scope: !336)
!391 = !DILocation(line: 254, column: 2, scope: !336)
!392 = distinct !DISubprogram(name: "z_impl_atomic_ptr_set", scope: !5, file: !5, line: 259, type: !393, scopeLine: 261, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !395)
!393 = !DISubroutineType(types: !394)
!394 = !{!136, !133, !136}
!395 = !{!396, !397, !398, !399}
!396 = !DILocalVariable(name: "target", arg: 1, scope: !392, file: !5, line: 259, type: !133)
!397 = !DILocalVariable(name: "value", arg: 2, scope: !392, file: !5, line: 260, type: !136)
!398 = !DILocalVariable(name: "key", scope: !392, file: !5, line: 262, type: !30)
!399 = !DILocalVariable(name: "ret", scope: !392, file: !5, line: 263, type: !136)
!400 = !DILocation(line: 259, column: 54, scope: !392)
!401 = !DILocation(line: 260, column: 29, scope: !392)
!402 = !DILocation(line: 262, column: 2, scope: !392)
!403 = !DILocation(line: 262, column: 19, scope: !392)
!404 = !DILocation(line: 263, column: 2, scope: !392)
!405 = !DILocation(line: 263, column: 19, scope: !392)
!406 = !DILocation(line: 265, column: 8, scope: !392)
!407 = !DILocation(line: 160, column: 94, scope: !45, inlinedAt: !408)
!408 = distinct !DILocation(line: 265, column: 8, scope: !392)
!409 = !DILocation(line: 162, column: 9, scope: !45, inlinedAt: !408)
!410 = !DILocation(line: 163, column: 19, scope: !45, inlinedAt: !408)
!411 = !DILocation(line: 44, column: 2, scope: !56, inlinedAt: !412)
!412 = distinct !DILocation(line: 169, column: 10, scope: !45, inlinedAt: !408)
!413 = !DILocation(line: 44, column: 15, scope: !56, inlinedAt: !412)
!414 = !DILocation(line: 48, column: 2, scope: !56, inlinedAt: !412)
!415 = !DILocation(line: 80, column: 9, scope: !56, inlinedAt: !412)
!416 = !DILocation(line: 81, column: 1, scope: !56, inlinedAt: !412)
!417 = !DILocation(line: 169, column: 8, scope: !45, inlinedAt: !408)
!418 = !DILocation(line: 171, column: 26, scope: !45, inlinedAt: !408)
!419 = !DILocation(line: 110, column: 94, scope: !72, inlinedAt: !420)
!420 = distinct !DILocation(line: 171, column: 2, scope: !45, inlinedAt: !408)
!421 = !DILocation(line: 112, column: 9, scope: !72, inlinedAt: !420)
!422 = !DILocation(line: 177, column: 27, scope: !45, inlinedAt: !408)
!423 = !DILocation(line: 121, column: 95, scope: !81, inlinedAt: !424)
!424 = distinct !DILocation(line: 177, column: 2, scope: !45, inlinedAt: !408)
!425 = !DILocation(line: 123, column: 9, scope: !81, inlinedAt: !424)
!426 = !DILocation(line: 179, column: 2, scope: !45, inlinedAt: !408)
!427 = !DILocation(line: 267, column: 9, scope: !392)
!428 = !DILocation(line: 267, column: 8, scope: !392)
!429 = !DILocation(line: 267, column: 6, scope: !392)
!430 = !DILocation(line: 268, column: 12, scope: !392)
!431 = !DILocation(line: 268, column: 3, scope: !392)
!432 = !DILocation(line: 268, column: 10, scope: !392)
!433 = !DILocation(line: 270, column: 2, scope: !392)
!434 = !DILocation(line: 235, column: 84, scope: !101, inlinedAt: !435)
!435 = distinct !DILocation(line: 270, column: 2, scope: !392)
!436 = !DILocation(line: 236, column: 23, scope: !101, inlinedAt: !435)
!437 = !DILocation(line: 238, column: 9, scope: !101, inlinedAt: !435)
!438 = !DILocation(line: 261, column: 22, scope: !101, inlinedAt: !435)
!439 = !DILocation(line: 88, column: 80, scope: !112, inlinedAt: !440)
!440 = distinct !DILocation(line: 261, column: 2, scope: !101, inlinedAt: !435)
!441 = !DILocation(line: 91, column: 6, scope: !119, inlinedAt: !440)
!442 = !DILocation(line: 91, column: 10, scope: !119, inlinedAt: !440)
!443 = !DILocation(line: 91, column: 6, scope: !112, inlinedAt: !440)
!444 = !DILocation(line: 92, column: 3, scope: !123, inlinedAt: !440)
!445 = !DILocation(line: 94, column: 2, scope: !112, inlinedAt: !440)
!446 = !DILocation(line: 114, column: 1, scope: !112, inlinedAt: !440)
!447 = !DILocation(line: 272, column: 9, scope: !392)
!448 = !DILocation(line: 273, column: 1, scope: !392)
!449 = !DILocation(line: 272, column: 2, scope: !392)
!450 = distinct !DISubprogram(name: "z_impl_atomic_or", scope: !5, file: !5, line: 299, type: !201, scopeLine: 300, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !451)
!451 = !{!452, !453, !454, !455}
!452 = !DILocalVariable(name: "target", arg: 1, scope: !450, file: !5, line: 299, type: !20)
!453 = !DILocalVariable(name: "value", arg: 2, scope: !450, file: !5, line: 299, type: !24)
!454 = !DILocalVariable(name: "key", scope: !450, file: !5, line: 301, type: !30)
!455 = !DILocalVariable(name: "ret", scope: !450, file: !5, line: 302, type: !24)
!456 = !DILocation(line: 299, column: 41, scope: !450)
!457 = !DILocation(line: 299, column: 62, scope: !450)
!458 = !DILocation(line: 301, column: 2, scope: !450)
!459 = !DILocation(line: 301, column: 19, scope: !450)
!460 = !DILocation(line: 302, column: 2, scope: !450)
!461 = !DILocation(line: 302, column: 15, scope: !450)
!462 = !DILocation(line: 304, column: 8, scope: !450)
!463 = !DILocation(line: 160, column: 94, scope: !45, inlinedAt: !464)
!464 = distinct !DILocation(line: 304, column: 8, scope: !450)
!465 = !DILocation(line: 162, column: 9, scope: !45, inlinedAt: !464)
!466 = !DILocation(line: 163, column: 19, scope: !45, inlinedAt: !464)
!467 = !DILocation(line: 44, column: 2, scope: !56, inlinedAt: !468)
!468 = distinct !DILocation(line: 169, column: 10, scope: !45, inlinedAt: !464)
!469 = !DILocation(line: 44, column: 15, scope: !56, inlinedAt: !468)
!470 = !DILocation(line: 48, column: 2, scope: !56, inlinedAt: !468)
!471 = !DILocation(line: 80, column: 9, scope: !56, inlinedAt: !468)
!472 = !DILocation(line: 81, column: 1, scope: !56, inlinedAt: !468)
!473 = !DILocation(line: 169, column: 8, scope: !45, inlinedAt: !464)
!474 = !DILocation(line: 171, column: 26, scope: !45, inlinedAt: !464)
!475 = !DILocation(line: 110, column: 94, scope: !72, inlinedAt: !476)
!476 = distinct !DILocation(line: 171, column: 2, scope: !45, inlinedAt: !464)
!477 = !DILocation(line: 112, column: 9, scope: !72, inlinedAt: !476)
!478 = !DILocation(line: 177, column: 27, scope: !45, inlinedAt: !464)
!479 = !DILocation(line: 121, column: 95, scope: !81, inlinedAt: !480)
!480 = distinct !DILocation(line: 177, column: 2, scope: !45, inlinedAt: !464)
!481 = !DILocation(line: 123, column: 9, scope: !81, inlinedAt: !480)
!482 = !DILocation(line: 179, column: 2, scope: !45, inlinedAt: !464)
!483 = !DILocation(line: 306, column: 9, scope: !450)
!484 = !DILocation(line: 306, column: 8, scope: !450)
!485 = !DILocation(line: 306, column: 6, scope: !450)
!486 = !DILocation(line: 307, column: 13, scope: !450)
!487 = !DILocation(line: 307, column: 3, scope: !450)
!488 = !DILocation(line: 307, column: 10, scope: !450)
!489 = !DILocation(line: 309, column: 2, scope: !450)
!490 = !DILocation(line: 235, column: 84, scope: !101, inlinedAt: !491)
!491 = distinct !DILocation(line: 309, column: 2, scope: !450)
!492 = !DILocation(line: 236, column: 23, scope: !101, inlinedAt: !491)
!493 = !DILocation(line: 238, column: 9, scope: !101, inlinedAt: !491)
!494 = !DILocation(line: 261, column: 22, scope: !101, inlinedAt: !491)
!495 = !DILocation(line: 88, column: 80, scope: !112, inlinedAt: !496)
!496 = distinct !DILocation(line: 261, column: 2, scope: !101, inlinedAt: !491)
!497 = !DILocation(line: 91, column: 6, scope: !119, inlinedAt: !496)
!498 = !DILocation(line: 91, column: 10, scope: !119, inlinedAt: !496)
!499 = !DILocation(line: 91, column: 6, scope: !112, inlinedAt: !496)
!500 = !DILocation(line: 92, column: 3, scope: !123, inlinedAt: !496)
!501 = !DILocation(line: 94, column: 2, scope: !112, inlinedAt: !496)
!502 = !DILocation(line: 114, column: 1, scope: !112, inlinedAt: !496)
!503 = !DILocation(line: 311, column: 9, scope: !450)
!504 = !DILocation(line: 312, column: 1, scope: !450)
!505 = !DILocation(line: 311, column: 2, scope: !450)
!506 = distinct !DISubprogram(name: "z_impl_atomic_xor", scope: !5, file: !5, line: 329, type: !201, scopeLine: 330, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !507)
!507 = !{!508, !509, !510, !511}
!508 = !DILocalVariable(name: "target", arg: 1, scope: !506, file: !5, line: 329, type: !20)
!509 = !DILocalVariable(name: "value", arg: 2, scope: !506, file: !5, line: 329, type: !24)
!510 = !DILocalVariable(name: "key", scope: !506, file: !5, line: 331, type: !30)
!511 = !DILocalVariable(name: "ret", scope: !506, file: !5, line: 332, type: !24)
!512 = !DILocation(line: 329, column: 42, scope: !506)
!513 = !DILocation(line: 329, column: 63, scope: !506)
!514 = !DILocation(line: 331, column: 2, scope: !506)
!515 = !DILocation(line: 331, column: 19, scope: !506)
!516 = !DILocation(line: 332, column: 2, scope: !506)
!517 = !DILocation(line: 332, column: 15, scope: !506)
!518 = !DILocation(line: 334, column: 8, scope: !506)
!519 = !DILocation(line: 160, column: 94, scope: !45, inlinedAt: !520)
!520 = distinct !DILocation(line: 334, column: 8, scope: !506)
!521 = !DILocation(line: 162, column: 9, scope: !45, inlinedAt: !520)
!522 = !DILocation(line: 163, column: 19, scope: !45, inlinedAt: !520)
!523 = !DILocation(line: 44, column: 2, scope: !56, inlinedAt: !524)
!524 = distinct !DILocation(line: 169, column: 10, scope: !45, inlinedAt: !520)
!525 = !DILocation(line: 44, column: 15, scope: !56, inlinedAt: !524)
!526 = !DILocation(line: 48, column: 2, scope: !56, inlinedAt: !524)
!527 = !DILocation(line: 80, column: 9, scope: !56, inlinedAt: !524)
!528 = !DILocation(line: 81, column: 1, scope: !56, inlinedAt: !524)
!529 = !DILocation(line: 169, column: 8, scope: !45, inlinedAt: !520)
!530 = !DILocation(line: 171, column: 26, scope: !45, inlinedAt: !520)
!531 = !DILocation(line: 110, column: 94, scope: !72, inlinedAt: !532)
!532 = distinct !DILocation(line: 171, column: 2, scope: !45, inlinedAt: !520)
!533 = !DILocation(line: 112, column: 9, scope: !72, inlinedAt: !532)
!534 = !DILocation(line: 177, column: 27, scope: !45, inlinedAt: !520)
!535 = !DILocation(line: 121, column: 95, scope: !81, inlinedAt: !536)
!536 = distinct !DILocation(line: 177, column: 2, scope: !45, inlinedAt: !520)
!537 = !DILocation(line: 123, column: 9, scope: !81, inlinedAt: !536)
!538 = !DILocation(line: 179, column: 2, scope: !45, inlinedAt: !520)
!539 = !DILocation(line: 336, column: 9, scope: !506)
!540 = !DILocation(line: 336, column: 8, scope: !506)
!541 = !DILocation(line: 336, column: 6, scope: !506)
!542 = !DILocation(line: 337, column: 13, scope: !506)
!543 = !DILocation(line: 337, column: 3, scope: !506)
!544 = !DILocation(line: 337, column: 10, scope: !506)
!545 = !DILocation(line: 339, column: 2, scope: !506)
!546 = !DILocation(line: 235, column: 84, scope: !101, inlinedAt: !547)
!547 = distinct !DILocation(line: 339, column: 2, scope: !506)
!548 = !DILocation(line: 236, column: 23, scope: !101, inlinedAt: !547)
!549 = !DILocation(line: 238, column: 9, scope: !101, inlinedAt: !547)
!550 = !DILocation(line: 261, column: 22, scope: !101, inlinedAt: !547)
!551 = !DILocation(line: 88, column: 80, scope: !112, inlinedAt: !552)
!552 = distinct !DILocation(line: 261, column: 2, scope: !101, inlinedAt: !547)
!553 = !DILocation(line: 91, column: 6, scope: !119, inlinedAt: !552)
!554 = !DILocation(line: 91, column: 10, scope: !119, inlinedAt: !552)
!555 = !DILocation(line: 91, column: 6, scope: !112, inlinedAt: !552)
!556 = !DILocation(line: 92, column: 3, scope: !123, inlinedAt: !552)
!557 = !DILocation(line: 94, column: 2, scope: !112, inlinedAt: !552)
!558 = !DILocation(line: 114, column: 1, scope: !112, inlinedAt: !552)
!559 = !DILocation(line: 341, column: 9, scope: !506)
!560 = !DILocation(line: 342, column: 1, scope: !506)
!561 = !DILocation(line: 341, column: 2, scope: !506)
!562 = distinct !DISubprogram(name: "z_impl_atomic_and", scope: !5, file: !5, line: 359, type: !201, scopeLine: 360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !563)
!563 = !{!564, !565, !566, !567}
!564 = !DILocalVariable(name: "target", arg: 1, scope: !562, file: !5, line: 359, type: !20)
!565 = !DILocalVariable(name: "value", arg: 2, scope: !562, file: !5, line: 359, type: !24)
!566 = !DILocalVariable(name: "key", scope: !562, file: !5, line: 361, type: !30)
!567 = !DILocalVariable(name: "ret", scope: !562, file: !5, line: 362, type: !24)
!568 = !DILocation(line: 359, column: 42, scope: !562)
!569 = !DILocation(line: 359, column: 63, scope: !562)
!570 = !DILocation(line: 361, column: 2, scope: !562)
!571 = !DILocation(line: 361, column: 19, scope: !562)
!572 = !DILocation(line: 362, column: 2, scope: !562)
!573 = !DILocation(line: 362, column: 15, scope: !562)
!574 = !DILocation(line: 364, column: 8, scope: !562)
!575 = !DILocation(line: 160, column: 94, scope: !45, inlinedAt: !576)
!576 = distinct !DILocation(line: 364, column: 8, scope: !562)
!577 = !DILocation(line: 162, column: 9, scope: !45, inlinedAt: !576)
!578 = !DILocation(line: 163, column: 19, scope: !45, inlinedAt: !576)
!579 = !DILocation(line: 44, column: 2, scope: !56, inlinedAt: !580)
!580 = distinct !DILocation(line: 169, column: 10, scope: !45, inlinedAt: !576)
!581 = !DILocation(line: 44, column: 15, scope: !56, inlinedAt: !580)
!582 = !DILocation(line: 48, column: 2, scope: !56, inlinedAt: !580)
!583 = !DILocation(line: 80, column: 9, scope: !56, inlinedAt: !580)
!584 = !DILocation(line: 81, column: 1, scope: !56, inlinedAt: !580)
!585 = !DILocation(line: 169, column: 8, scope: !45, inlinedAt: !576)
!586 = !DILocation(line: 171, column: 26, scope: !45, inlinedAt: !576)
!587 = !DILocation(line: 110, column: 94, scope: !72, inlinedAt: !588)
!588 = distinct !DILocation(line: 171, column: 2, scope: !45, inlinedAt: !576)
!589 = !DILocation(line: 112, column: 9, scope: !72, inlinedAt: !588)
!590 = !DILocation(line: 177, column: 27, scope: !45, inlinedAt: !576)
!591 = !DILocation(line: 121, column: 95, scope: !81, inlinedAt: !592)
!592 = distinct !DILocation(line: 177, column: 2, scope: !45, inlinedAt: !576)
!593 = !DILocation(line: 123, column: 9, scope: !81, inlinedAt: !592)
!594 = !DILocation(line: 179, column: 2, scope: !45, inlinedAt: !576)
!595 = !DILocation(line: 366, column: 9, scope: !562)
!596 = !DILocation(line: 366, column: 8, scope: !562)
!597 = !DILocation(line: 366, column: 6, scope: !562)
!598 = !DILocation(line: 367, column: 13, scope: !562)
!599 = !DILocation(line: 367, column: 3, scope: !562)
!600 = !DILocation(line: 367, column: 10, scope: !562)
!601 = !DILocation(line: 369, column: 2, scope: !562)
!602 = !DILocation(line: 235, column: 84, scope: !101, inlinedAt: !603)
!603 = distinct !DILocation(line: 369, column: 2, scope: !562)
!604 = !DILocation(line: 236, column: 23, scope: !101, inlinedAt: !603)
!605 = !DILocation(line: 238, column: 9, scope: !101, inlinedAt: !603)
!606 = !DILocation(line: 261, column: 22, scope: !101, inlinedAt: !603)
!607 = !DILocation(line: 88, column: 80, scope: !112, inlinedAt: !608)
!608 = distinct !DILocation(line: 261, column: 2, scope: !101, inlinedAt: !603)
!609 = !DILocation(line: 91, column: 6, scope: !119, inlinedAt: !608)
!610 = !DILocation(line: 91, column: 10, scope: !119, inlinedAt: !608)
!611 = !DILocation(line: 91, column: 6, scope: !112, inlinedAt: !608)
!612 = !DILocation(line: 92, column: 3, scope: !123, inlinedAt: !608)
!613 = !DILocation(line: 94, column: 2, scope: !112, inlinedAt: !608)
!614 = !DILocation(line: 114, column: 1, scope: !112, inlinedAt: !608)
!615 = !DILocation(line: 371, column: 9, scope: !562)
!616 = !DILocation(line: 372, column: 1, scope: !562)
!617 = !DILocation(line: 371, column: 2, scope: !562)
!618 = distinct !DISubprogram(name: "z_impl_atomic_nand", scope: !5, file: !5, line: 389, type: !201, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !619)
!619 = !{!620, !621, !622, !623}
!620 = !DILocalVariable(name: "target", arg: 1, scope: !618, file: !5, line: 389, type: !20)
!621 = !DILocalVariable(name: "value", arg: 2, scope: !618, file: !5, line: 389, type: !24)
!622 = !DILocalVariable(name: "key", scope: !618, file: !5, line: 391, type: !30)
!623 = !DILocalVariable(name: "ret", scope: !618, file: !5, line: 392, type: !24)
!624 = !DILocation(line: 389, column: 43, scope: !618)
!625 = !DILocation(line: 389, column: 64, scope: !618)
!626 = !DILocation(line: 391, column: 2, scope: !618)
!627 = !DILocation(line: 391, column: 19, scope: !618)
!628 = !DILocation(line: 392, column: 2, scope: !618)
!629 = !DILocation(line: 392, column: 15, scope: !618)
!630 = !DILocation(line: 394, column: 8, scope: !618)
!631 = !DILocation(line: 160, column: 94, scope: !45, inlinedAt: !632)
!632 = distinct !DILocation(line: 394, column: 8, scope: !618)
!633 = !DILocation(line: 162, column: 9, scope: !45, inlinedAt: !632)
!634 = !DILocation(line: 163, column: 19, scope: !45, inlinedAt: !632)
!635 = !DILocation(line: 44, column: 2, scope: !56, inlinedAt: !636)
!636 = distinct !DILocation(line: 169, column: 10, scope: !45, inlinedAt: !632)
!637 = !DILocation(line: 44, column: 15, scope: !56, inlinedAt: !636)
!638 = !DILocation(line: 48, column: 2, scope: !56, inlinedAt: !636)
!639 = !DILocation(line: 80, column: 9, scope: !56, inlinedAt: !636)
!640 = !DILocation(line: 81, column: 1, scope: !56, inlinedAt: !636)
!641 = !DILocation(line: 169, column: 8, scope: !45, inlinedAt: !632)
!642 = !DILocation(line: 171, column: 26, scope: !45, inlinedAt: !632)
!643 = !DILocation(line: 110, column: 94, scope: !72, inlinedAt: !644)
!644 = distinct !DILocation(line: 171, column: 2, scope: !45, inlinedAt: !632)
!645 = !DILocation(line: 112, column: 9, scope: !72, inlinedAt: !644)
!646 = !DILocation(line: 177, column: 27, scope: !45, inlinedAt: !632)
!647 = !DILocation(line: 121, column: 95, scope: !81, inlinedAt: !648)
!648 = distinct !DILocation(line: 177, column: 2, scope: !45, inlinedAt: !632)
!649 = !DILocation(line: 123, column: 9, scope: !81, inlinedAt: !648)
!650 = !DILocation(line: 179, column: 2, scope: !45, inlinedAt: !632)
!651 = !DILocation(line: 396, column: 9, scope: !618)
!652 = !DILocation(line: 396, column: 8, scope: !618)
!653 = !DILocation(line: 396, column: 6, scope: !618)
!654 = !DILocation(line: 397, column: 15, scope: !618)
!655 = !DILocation(line: 397, column: 14, scope: !618)
!656 = !DILocation(line: 397, column: 24, scope: !618)
!657 = !DILocation(line: 397, column: 22, scope: !618)
!658 = !DILocation(line: 397, column: 12, scope: !618)
!659 = !DILocation(line: 397, column: 3, scope: !618)
!660 = !DILocation(line: 397, column: 10, scope: !618)
!661 = !DILocation(line: 399, column: 2, scope: !618)
!662 = !DILocation(line: 235, column: 84, scope: !101, inlinedAt: !663)
!663 = distinct !DILocation(line: 399, column: 2, scope: !618)
!664 = !DILocation(line: 236, column: 23, scope: !101, inlinedAt: !663)
!665 = !DILocation(line: 238, column: 9, scope: !101, inlinedAt: !663)
!666 = !DILocation(line: 261, column: 22, scope: !101, inlinedAt: !663)
!667 = !DILocation(line: 88, column: 80, scope: !112, inlinedAt: !668)
!668 = distinct !DILocation(line: 261, column: 2, scope: !101, inlinedAt: !663)
!669 = !DILocation(line: 91, column: 6, scope: !119, inlinedAt: !668)
!670 = !DILocation(line: 91, column: 10, scope: !119, inlinedAt: !668)
!671 = !DILocation(line: 91, column: 6, scope: !112, inlinedAt: !668)
!672 = !DILocation(line: 92, column: 3, scope: !123, inlinedAt: !668)
!673 = !DILocation(line: 94, column: 2, scope: !112, inlinedAt: !668)
!674 = !DILocation(line: 114, column: 1, scope: !112, inlinedAt: !668)
!675 = !DILocation(line: 401, column: 9, scope: !618)
!676 = !DILocation(line: 402, column: 1, scope: !618)
!677 = !DILocation(line: 401, column: 2, scope: !618)
