; ModuleID = '../bc_files/atomic_c.bc'
source_filename = "/home/sri/zephyrproject/zephyr/kernel/atomic_c.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-arm-none-eabi"

%struct.k_spinlock = type {}
%struct.z_spinlock_key = type { i32 }

@lock = internal global %struct.k_spinlock zeroinitializer, align 1, !dbg !0

; Function Attrs: noinline nounwind optnone
define hidden zeroext i1 @z_impl_atomic_cas(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 !dbg !18 {
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
  call void @llvm.dbg.declare(metadata ptr %12, metadata !27, metadata !DIExpression()), !dbg !28
  store i32 %1, ptr %13, align 4
  call void @llvm.dbg.declare(metadata ptr %13, metadata !29, metadata !DIExpression()), !dbg !30
  store i32 %2, ptr %14, align 4
  call void @llvm.dbg.declare(metadata ptr %14, metadata !31, metadata !DIExpression()), !dbg !32
  call void @llvm.dbg.declare(metadata ptr %15, metadata !33, metadata !DIExpression()), !dbg !39
  call void @llvm.dbg.declare(metadata ptr %16, metadata !40, metadata !DIExpression()), !dbg !41
  store i32 0, ptr %16, align 4, !dbg !41
  store ptr @lock, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !42, metadata !DIExpression()), !dbg !47
  %18 = load ptr, ptr %11, align 4, !dbg !49
  call void @llvm.dbg.declare(metadata ptr %10, metadata !50, metadata !DIExpression()), !dbg !51
  call void @llvm.dbg.declare(metadata ptr %7, metadata !52, metadata !DIExpression()), !dbg !58
  %19 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #3, !dbg !60, !srcloc !61
  store i32 %19, ptr %7, align 4, !dbg !60
  %20 = load i32, ptr %7, align 4, !dbg !62
  store i32 %20, ptr %10, align 4, !dbg !63
  %21 = load ptr, ptr %11, align 4, !dbg !64
  store ptr %21, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !65, metadata !DIExpression()), !dbg !69
  %22 = load ptr, ptr %6, align 4, !dbg !71
  %23 = load ptr, ptr %11, align 4, !dbg !72
  store ptr %23, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !73, metadata !DIExpression()), !dbg !75
  %24 = load ptr, ptr %5, align 4, !dbg !77
  %25 = load i32, ptr %10, align 4, !dbg !78
  %26 = getelementptr inbounds %struct.z_spinlock_key, ptr %17, i32 0, i32 0, !dbg !79
  store i32 %25, ptr %26, align 4, !dbg !79
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %15, ptr align 4 %17, i32 4, i1 false), !dbg !79
  %27 = load ptr, ptr %12, align 4, !dbg !80
  %28 = load i32, ptr %27, align 4, !dbg !82
  %29 = load i32, ptr %13, align 4, !dbg !83
  %30 = icmp eq i32 %28, %29, !dbg !84
  br i1 %30, label %31, label %34, !dbg !85

31:                                               ; preds = %3
  %32 = load i32, ptr %14, align 4, !dbg !86
  %33 = load ptr, ptr %12, align 4, !dbg !88
  store i32 %32, ptr %33, align 4, !dbg !89
  store i32 1, ptr %16, align 4, !dbg !90
  br label %34, !dbg !91

34:                                               ; preds = %31, %3
  %35 = getelementptr inbounds %struct.z_spinlock_key, ptr %15, i32 0, i32 0, !dbg !92
  %36 = load [1 x i32], ptr %35, align 4, !dbg !92
  store [1 x i32] %36, ptr %8, align 4
  store ptr @lock, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !93, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.declare(metadata ptr %8, metadata !99, metadata !DIExpression()), !dbg !100
  %37 = load ptr, ptr %9, align 4, !dbg !101
  %38 = load i32, ptr %8, align 4, !dbg !102
  store i32 %38, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !103, metadata !DIExpression()), !dbg !107
  %39 = load i32, ptr %4, align 4, !dbg !109
  %40 = icmp ne i32 %39, 0, !dbg !111
  br i1 %40, label %41, label %42, !dbg !112

41:                                               ; preds = %34
  br label %arch_irq_unlock.exit, !dbg !113

42:                                               ; preds = %34
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #3, !dbg !115, !srcloc !116
  br label %arch_irq_unlock.exit, !dbg !117

arch_irq_unlock.exit:                             ; preds = %41, %42
  %43 = load i32, ptr %16, align 4, !dbg !118
  %44 = icmp ne i32 %43, 0, !dbg !118
  ret i1 %44, !dbg !119
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: noinline nounwind optnone
define hidden zeroext i1 @z_impl_atomic_ptr_cas(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !120 {
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
  call void @llvm.dbg.declare(metadata ptr %12, metadata !127, metadata !DIExpression()), !dbg !128
  store ptr %1, ptr %13, align 4
  call void @llvm.dbg.declare(metadata ptr %13, metadata !129, metadata !DIExpression()), !dbg !130
  store ptr %2, ptr %14, align 4
  call void @llvm.dbg.declare(metadata ptr %14, metadata !131, metadata !DIExpression()), !dbg !132
  call void @llvm.dbg.declare(metadata ptr %15, metadata !133, metadata !DIExpression()), !dbg !134
  call void @llvm.dbg.declare(metadata ptr %16, metadata !135, metadata !DIExpression()), !dbg !136
  store i32 0, ptr %16, align 4, !dbg !136
  store ptr @lock, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !42, metadata !DIExpression()), !dbg !137
  %18 = load ptr, ptr %11, align 4, !dbg !139
  call void @llvm.dbg.declare(metadata ptr %10, metadata !50, metadata !DIExpression()), !dbg !140
  call void @llvm.dbg.declare(metadata ptr %7, metadata !52, metadata !DIExpression()), !dbg !141
  %19 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #3, !dbg !143, !srcloc !61
  store i32 %19, ptr %7, align 4, !dbg !143
  %20 = load i32, ptr %7, align 4, !dbg !144
  store i32 %20, ptr %10, align 4, !dbg !145
  %21 = load ptr, ptr %11, align 4, !dbg !146
  store ptr %21, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !65, metadata !DIExpression()), !dbg !147
  %22 = load ptr, ptr %6, align 4, !dbg !149
  %23 = load ptr, ptr %11, align 4, !dbg !150
  store ptr %23, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !73, metadata !DIExpression()), !dbg !151
  %24 = load ptr, ptr %5, align 4, !dbg !153
  %25 = load i32, ptr %10, align 4, !dbg !154
  %26 = getelementptr inbounds %struct.z_spinlock_key, ptr %17, i32 0, i32 0, !dbg !155
  store i32 %25, ptr %26, align 4, !dbg !155
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %15, ptr align 4 %17, i32 4, i1 false), !dbg !155
  %27 = load ptr, ptr %12, align 4, !dbg !156
  %28 = load ptr, ptr %27, align 4, !dbg !158
  %29 = load ptr, ptr %13, align 4, !dbg !159
  %30 = icmp eq ptr %28, %29, !dbg !160
  br i1 %30, label %31, label %34, !dbg !161

31:                                               ; preds = %3
  %32 = load ptr, ptr %14, align 4, !dbg !162
  %33 = load ptr, ptr %12, align 4, !dbg !164
  store ptr %32, ptr %33, align 4, !dbg !165
  store i32 1, ptr %16, align 4, !dbg !166
  br label %34, !dbg !167

34:                                               ; preds = %31, %3
  %35 = getelementptr inbounds %struct.z_spinlock_key, ptr %15, i32 0, i32 0, !dbg !168
  %36 = load [1 x i32], ptr %35, align 4, !dbg !168
  store [1 x i32] %36, ptr %8, align 4
  store ptr @lock, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !93, metadata !DIExpression()), !dbg !169
  call void @llvm.dbg.declare(metadata ptr %8, metadata !99, metadata !DIExpression()), !dbg !171
  %37 = load ptr, ptr %9, align 4, !dbg !172
  %38 = load i32, ptr %8, align 4, !dbg !173
  store i32 %38, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !103, metadata !DIExpression()), !dbg !174
  %39 = load i32, ptr %4, align 4, !dbg !176
  %40 = icmp ne i32 %39, 0, !dbg !177
  br i1 %40, label %41, label %42, !dbg !178

41:                                               ; preds = %34
  br label %arch_irq_unlock.exit, !dbg !179

42:                                               ; preds = %34
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #3, !dbg !180, !srcloc !116
  br label %arch_irq_unlock.exit, !dbg !181

arch_irq_unlock.exit:                             ; preds = %41, %42
  %43 = load i32, ptr %16, align 4, !dbg !182
  %44 = icmp ne i32 %43, 0, !dbg !182
  ret i1 %44, !dbg !183
}

; Function Attrs: noinline nounwind optnone
define hidden i32 @z_impl_atomic_add(ptr noundef %0, i32 noundef %1) #0 !dbg !184 {
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
  call void @llvm.dbg.declare(metadata ptr %11, metadata !187, metadata !DIExpression()), !dbg !188
  store i32 %1, ptr %12, align 4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !189, metadata !DIExpression()), !dbg !190
  call void @llvm.dbg.declare(metadata ptr %13, metadata !191, metadata !DIExpression()), !dbg !192
  call void @llvm.dbg.declare(metadata ptr %14, metadata !193, metadata !DIExpression()), !dbg !194
  store ptr @lock, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !42, metadata !DIExpression()), !dbg !195
  %16 = load ptr, ptr %10, align 4, !dbg !197
  call void @llvm.dbg.declare(metadata ptr %9, metadata !50, metadata !DIExpression()), !dbg !198
  call void @llvm.dbg.declare(metadata ptr %6, metadata !52, metadata !DIExpression()), !dbg !199
  %17 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #3, !dbg !201, !srcloc !61
  store i32 %17, ptr %6, align 4, !dbg !201
  %18 = load i32, ptr %6, align 4, !dbg !202
  store i32 %18, ptr %9, align 4, !dbg !203
  %19 = load ptr, ptr %10, align 4, !dbg !204
  store ptr %19, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !65, metadata !DIExpression()), !dbg !205
  %20 = load ptr, ptr %5, align 4, !dbg !207
  %21 = load ptr, ptr %10, align 4, !dbg !208
  store ptr %21, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !73, metadata !DIExpression()), !dbg !209
  %22 = load ptr, ptr %4, align 4, !dbg !211
  %23 = load i32, ptr %9, align 4, !dbg !212
  %24 = getelementptr inbounds %struct.z_spinlock_key, ptr %15, i32 0, i32 0, !dbg !213
  store i32 %23, ptr %24, align 4, !dbg !213
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %13, ptr align 4 %15, i32 4, i1 false), !dbg !213
  %25 = load ptr, ptr %11, align 4, !dbg !214
  %26 = load i32, ptr %25, align 4, !dbg !215
  store i32 %26, ptr %14, align 4, !dbg !216
  %27 = load i32, ptr %12, align 4, !dbg !217
  %28 = load ptr, ptr %11, align 4, !dbg !218
  %29 = load i32, ptr %28, align 4, !dbg !219
  %30 = add nsw i32 %29, %27, !dbg !219
  store i32 %30, ptr %28, align 4, !dbg !219
  %31 = getelementptr inbounds %struct.z_spinlock_key, ptr %13, i32 0, i32 0, !dbg !220
  %32 = load [1 x i32], ptr %31, align 4, !dbg !220
  store [1 x i32] %32, ptr %7, align 4
  store ptr @lock, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !93, metadata !DIExpression()), !dbg !221
  call void @llvm.dbg.declare(metadata ptr %7, metadata !99, metadata !DIExpression()), !dbg !223
  %33 = load ptr, ptr %8, align 4, !dbg !224
  %34 = load i32, ptr %7, align 4, !dbg !225
  store i32 %34, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !103, metadata !DIExpression()), !dbg !226
  %35 = load i32, ptr %3, align 4, !dbg !228
  %36 = icmp ne i32 %35, 0, !dbg !229
  br i1 %36, label %37, label %38, !dbg !230

37:                                               ; preds = %2
  br label %arch_irq_unlock.exit, !dbg !231

38:                                               ; preds = %2
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #3, !dbg !232, !srcloc !116
  br label %arch_irq_unlock.exit, !dbg !233

arch_irq_unlock.exit:                             ; preds = %37, %38
  %39 = load i32, ptr %14, align 4, !dbg !234
  ret i32 %39, !dbg !235
}

; Function Attrs: noinline nounwind optnone
define hidden i32 @z_impl_atomic_sub(ptr noundef %0, i32 noundef %1) #0 !dbg !236 {
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
  call void @llvm.dbg.declare(metadata ptr %11, metadata !237, metadata !DIExpression()), !dbg !238
  store i32 %1, ptr %12, align 4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !239, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.declare(metadata ptr %13, metadata !241, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.declare(metadata ptr %14, metadata !243, metadata !DIExpression()), !dbg !244
  store ptr @lock, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !42, metadata !DIExpression()), !dbg !245
  %16 = load ptr, ptr %10, align 4, !dbg !247
  call void @llvm.dbg.declare(metadata ptr %9, metadata !50, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.declare(metadata ptr %6, metadata !52, metadata !DIExpression()), !dbg !249
  %17 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #3, !dbg !251, !srcloc !61
  store i32 %17, ptr %6, align 4, !dbg !251
  %18 = load i32, ptr %6, align 4, !dbg !252
  store i32 %18, ptr %9, align 4, !dbg !253
  %19 = load ptr, ptr %10, align 4, !dbg !254
  store ptr %19, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !65, metadata !DIExpression()), !dbg !255
  %20 = load ptr, ptr %5, align 4, !dbg !257
  %21 = load ptr, ptr %10, align 4, !dbg !258
  store ptr %21, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !73, metadata !DIExpression()), !dbg !259
  %22 = load ptr, ptr %4, align 4, !dbg !261
  %23 = load i32, ptr %9, align 4, !dbg !262
  %24 = getelementptr inbounds %struct.z_spinlock_key, ptr %15, i32 0, i32 0, !dbg !263
  store i32 %23, ptr %24, align 4, !dbg !263
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %13, ptr align 4 %15, i32 4, i1 false), !dbg !263
  %25 = load ptr, ptr %11, align 4, !dbg !264
  %26 = load i32, ptr %25, align 4, !dbg !265
  store i32 %26, ptr %14, align 4, !dbg !266
  %27 = load i32, ptr %12, align 4, !dbg !267
  %28 = load ptr, ptr %11, align 4, !dbg !268
  %29 = load i32, ptr %28, align 4, !dbg !269
  %30 = sub nsw i32 %29, %27, !dbg !269
  store i32 %30, ptr %28, align 4, !dbg !269
  %31 = getelementptr inbounds %struct.z_spinlock_key, ptr %13, i32 0, i32 0, !dbg !270
  %32 = load [1 x i32], ptr %31, align 4, !dbg !270
  store [1 x i32] %32, ptr %7, align 4
  store ptr @lock, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !93, metadata !DIExpression()), !dbg !271
  call void @llvm.dbg.declare(metadata ptr %7, metadata !99, metadata !DIExpression()), !dbg !273
  %33 = load ptr, ptr %8, align 4, !dbg !274
  %34 = load i32, ptr %7, align 4, !dbg !275
  store i32 %34, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !103, metadata !DIExpression()), !dbg !276
  %35 = load i32, ptr %3, align 4, !dbg !278
  %36 = icmp ne i32 %35, 0, !dbg !279
  br i1 %36, label %37, label %38, !dbg !280

37:                                               ; preds = %2
  br label %arch_irq_unlock.exit, !dbg !281

38:                                               ; preds = %2
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #3, !dbg !282, !srcloc !116
  br label %arch_irq_unlock.exit, !dbg !283

arch_irq_unlock.exit:                             ; preds = %37, %38
  %39 = load i32, ptr %14, align 4, !dbg !284
  ret i32 %39, !dbg !285
}

; Function Attrs: noinline nounwind optnone
define hidden i32 @atomic_get(ptr noundef %0) #0 !dbg !286 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !291, metadata !DIExpression()), !dbg !292
  %3 = load ptr, ptr %2, align 4, !dbg !293
  %4 = load i32, ptr %3, align 4, !dbg !294
  ret i32 %4, !dbg !295
}

; Function Attrs: noinline nounwind optnone
define hidden ptr @atomic_ptr_get(ptr noundef %0) #0 !dbg !296 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !301, metadata !DIExpression()), !dbg !302
  %3 = load ptr, ptr %2, align 4, !dbg !303
  %4 = load ptr, ptr %3, align 4, !dbg !304
  ret ptr %4, !dbg !305
}

; Function Attrs: noinline nounwind optnone
define hidden i32 @z_impl_atomic_set(ptr noundef %0, i32 noundef %1) #0 !dbg !306 {
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
  call void @llvm.dbg.declare(metadata ptr %11, metadata !307, metadata !DIExpression()), !dbg !308
  store i32 %1, ptr %12, align 4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !309, metadata !DIExpression()), !dbg !310
  call void @llvm.dbg.declare(metadata ptr %13, metadata !311, metadata !DIExpression()), !dbg !312
  call void @llvm.dbg.declare(metadata ptr %14, metadata !313, metadata !DIExpression()), !dbg !314
  store ptr @lock, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !42, metadata !DIExpression()), !dbg !315
  %16 = load ptr, ptr %10, align 4, !dbg !317
  call void @llvm.dbg.declare(metadata ptr %9, metadata !50, metadata !DIExpression()), !dbg !318
  call void @llvm.dbg.declare(metadata ptr %6, metadata !52, metadata !DIExpression()), !dbg !319
  %17 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #3, !dbg !321, !srcloc !61
  store i32 %17, ptr %6, align 4, !dbg !321
  %18 = load i32, ptr %6, align 4, !dbg !322
  store i32 %18, ptr %9, align 4, !dbg !323
  %19 = load ptr, ptr %10, align 4, !dbg !324
  store ptr %19, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !65, metadata !DIExpression()), !dbg !325
  %20 = load ptr, ptr %5, align 4, !dbg !327
  %21 = load ptr, ptr %10, align 4, !dbg !328
  store ptr %21, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !73, metadata !DIExpression()), !dbg !329
  %22 = load ptr, ptr %4, align 4, !dbg !331
  %23 = load i32, ptr %9, align 4, !dbg !332
  %24 = getelementptr inbounds %struct.z_spinlock_key, ptr %15, i32 0, i32 0, !dbg !333
  store i32 %23, ptr %24, align 4, !dbg !333
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %13, ptr align 4 %15, i32 4, i1 false), !dbg !333
  %25 = load ptr, ptr %11, align 4, !dbg !334
  %26 = load i32, ptr %25, align 4, !dbg !335
  store i32 %26, ptr %14, align 4, !dbg !336
  %27 = load i32, ptr %12, align 4, !dbg !337
  %28 = load ptr, ptr %11, align 4, !dbg !338
  store i32 %27, ptr %28, align 4, !dbg !339
  %29 = getelementptr inbounds %struct.z_spinlock_key, ptr %13, i32 0, i32 0, !dbg !340
  %30 = load [1 x i32], ptr %29, align 4, !dbg !340
  store [1 x i32] %30, ptr %7, align 4
  store ptr @lock, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !93, metadata !DIExpression()), !dbg !341
  call void @llvm.dbg.declare(metadata ptr %7, metadata !99, metadata !DIExpression()), !dbg !343
  %31 = load ptr, ptr %8, align 4, !dbg !344
  %32 = load i32, ptr %7, align 4, !dbg !345
  store i32 %32, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !103, metadata !DIExpression()), !dbg !346
  %33 = load i32, ptr %3, align 4, !dbg !348
  %34 = icmp ne i32 %33, 0, !dbg !349
  br i1 %34, label %35, label %36, !dbg !350

35:                                               ; preds = %2
  br label %arch_irq_unlock.exit, !dbg !351

36:                                               ; preds = %2
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #3, !dbg !352, !srcloc !116
  br label %arch_irq_unlock.exit, !dbg !353

arch_irq_unlock.exit:                             ; preds = %35, %36
  %37 = load i32, ptr %14, align 4, !dbg !354
  ret i32 %37, !dbg !355
}

; Function Attrs: noinline nounwind optnone
define hidden ptr @z_impl_atomic_ptr_set(ptr noundef %0, ptr noundef %1) #0 !dbg !356 {
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
  call void @llvm.dbg.declare(metadata ptr %11, metadata !359, metadata !DIExpression()), !dbg !360
  store ptr %1, ptr %12, align 4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !361, metadata !DIExpression()), !dbg !362
  call void @llvm.dbg.declare(metadata ptr %13, metadata !363, metadata !DIExpression()), !dbg !364
  call void @llvm.dbg.declare(metadata ptr %14, metadata !365, metadata !DIExpression()), !dbg !366
  store ptr @lock, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !42, metadata !DIExpression()), !dbg !367
  %16 = load ptr, ptr %10, align 4, !dbg !369
  call void @llvm.dbg.declare(metadata ptr %9, metadata !50, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.declare(metadata ptr %6, metadata !52, metadata !DIExpression()), !dbg !371
  %17 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #3, !dbg !373, !srcloc !61
  store i32 %17, ptr %6, align 4, !dbg !373
  %18 = load i32, ptr %6, align 4, !dbg !374
  store i32 %18, ptr %9, align 4, !dbg !375
  %19 = load ptr, ptr %10, align 4, !dbg !376
  store ptr %19, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !65, metadata !DIExpression()), !dbg !377
  %20 = load ptr, ptr %5, align 4, !dbg !379
  %21 = load ptr, ptr %10, align 4, !dbg !380
  store ptr %21, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !73, metadata !DIExpression()), !dbg !381
  %22 = load ptr, ptr %4, align 4, !dbg !383
  %23 = load i32, ptr %9, align 4, !dbg !384
  %24 = getelementptr inbounds %struct.z_spinlock_key, ptr %15, i32 0, i32 0, !dbg !385
  store i32 %23, ptr %24, align 4, !dbg !385
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %13, ptr align 4 %15, i32 4, i1 false), !dbg !385
  %25 = load ptr, ptr %11, align 4, !dbg !386
  %26 = load ptr, ptr %25, align 4, !dbg !387
  store ptr %26, ptr %14, align 4, !dbg !388
  %27 = load ptr, ptr %12, align 4, !dbg !389
  %28 = load ptr, ptr %11, align 4, !dbg !390
  store ptr %27, ptr %28, align 4, !dbg !391
  %29 = getelementptr inbounds %struct.z_spinlock_key, ptr %13, i32 0, i32 0, !dbg !392
  %30 = load [1 x i32], ptr %29, align 4, !dbg !392
  store [1 x i32] %30, ptr %7, align 4
  store ptr @lock, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !93, metadata !DIExpression()), !dbg !393
  call void @llvm.dbg.declare(metadata ptr %7, metadata !99, metadata !DIExpression()), !dbg !395
  %31 = load ptr, ptr %8, align 4, !dbg !396
  %32 = load i32, ptr %7, align 4, !dbg !397
  store i32 %32, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !103, metadata !DIExpression()), !dbg !398
  %33 = load i32, ptr %3, align 4, !dbg !400
  %34 = icmp ne i32 %33, 0, !dbg !401
  br i1 %34, label %35, label %36, !dbg !402

35:                                               ; preds = %2
  br label %arch_irq_unlock.exit, !dbg !403

36:                                               ; preds = %2
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #3, !dbg !404, !srcloc !116
  br label %arch_irq_unlock.exit, !dbg !405

arch_irq_unlock.exit:                             ; preds = %35, %36
  %37 = load ptr, ptr %14, align 4, !dbg !406
  ret ptr %37, !dbg !407
}

; Function Attrs: noinline nounwind optnone
define hidden i32 @z_impl_atomic_or(ptr noundef %0, i32 noundef %1) #0 !dbg !408 {
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
  call void @llvm.dbg.declare(metadata ptr %11, metadata !409, metadata !DIExpression()), !dbg !410
  store i32 %1, ptr %12, align 4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !411, metadata !DIExpression()), !dbg !412
  call void @llvm.dbg.declare(metadata ptr %13, metadata !413, metadata !DIExpression()), !dbg !414
  call void @llvm.dbg.declare(metadata ptr %14, metadata !415, metadata !DIExpression()), !dbg !416
  store ptr @lock, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !42, metadata !DIExpression()), !dbg !417
  %16 = load ptr, ptr %10, align 4, !dbg !419
  call void @llvm.dbg.declare(metadata ptr %9, metadata !50, metadata !DIExpression()), !dbg !420
  call void @llvm.dbg.declare(metadata ptr %6, metadata !52, metadata !DIExpression()), !dbg !421
  %17 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #3, !dbg !423, !srcloc !61
  store i32 %17, ptr %6, align 4, !dbg !423
  %18 = load i32, ptr %6, align 4, !dbg !424
  store i32 %18, ptr %9, align 4, !dbg !425
  %19 = load ptr, ptr %10, align 4, !dbg !426
  store ptr %19, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !65, metadata !DIExpression()), !dbg !427
  %20 = load ptr, ptr %5, align 4, !dbg !429
  %21 = load ptr, ptr %10, align 4, !dbg !430
  store ptr %21, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !73, metadata !DIExpression()), !dbg !431
  %22 = load ptr, ptr %4, align 4, !dbg !433
  %23 = load i32, ptr %9, align 4, !dbg !434
  %24 = getelementptr inbounds %struct.z_spinlock_key, ptr %15, i32 0, i32 0, !dbg !435
  store i32 %23, ptr %24, align 4, !dbg !435
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %13, ptr align 4 %15, i32 4, i1 false), !dbg !435
  %25 = load ptr, ptr %11, align 4, !dbg !436
  %26 = load i32, ptr %25, align 4, !dbg !437
  store i32 %26, ptr %14, align 4, !dbg !438
  %27 = load i32, ptr %12, align 4, !dbg !439
  %28 = load ptr, ptr %11, align 4, !dbg !440
  %29 = load i32, ptr %28, align 4, !dbg !441
  %30 = or i32 %29, %27, !dbg !441
  store i32 %30, ptr %28, align 4, !dbg !441
  %31 = getelementptr inbounds %struct.z_spinlock_key, ptr %13, i32 0, i32 0, !dbg !442
  %32 = load [1 x i32], ptr %31, align 4, !dbg !442
  store [1 x i32] %32, ptr %7, align 4
  store ptr @lock, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !93, metadata !DIExpression()), !dbg !443
  call void @llvm.dbg.declare(metadata ptr %7, metadata !99, metadata !DIExpression()), !dbg !445
  %33 = load ptr, ptr %8, align 4, !dbg !446
  %34 = load i32, ptr %7, align 4, !dbg !447
  store i32 %34, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !103, metadata !DIExpression()), !dbg !448
  %35 = load i32, ptr %3, align 4, !dbg !450
  %36 = icmp ne i32 %35, 0, !dbg !451
  br i1 %36, label %37, label %38, !dbg !452

37:                                               ; preds = %2
  br label %arch_irq_unlock.exit, !dbg !453

38:                                               ; preds = %2
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #3, !dbg !454, !srcloc !116
  br label %arch_irq_unlock.exit, !dbg !455

arch_irq_unlock.exit:                             ; preds = %37, %38
  %39 = load i32, ptr %14, align 4, !dbg !456
  ret i32 %39, !dbg !457
}

; Function Attrs: noinline nounwind optnone
define hidden i32 @z_impl_atomic_xor(ptr noundef %0, i32 noundef %1) #0 !dbg !458 {
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
  call void @llvm.dbg.declare(metadata ptr %11, metadata !459, metadata !DIExpression()), !dbg !460
  store i32 %1, ptr %12, align 4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !461, metadata !DIExpression()), !dbg !462
  call void @llvm.dbg.declare(metadata ptr %13, metadata !463, metadata !DIExpression()), !dbg !464
  call void @llvm.dbg.declare(metadata ptr %14, metadata !465, metadata !DIExpression()), !dbg !466
  store ptr @lock, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !42, metadata !DIExpression()), !dbg !467
  %16 = load ptr, ptr %10, align 4, !dbg !469
  call void @llvm.dbg.declare(metadata ptr %9, metadata !50, metadata !DIExpression()), !dbg !470
  call void @llvm.dbg.declare(metadata ptr %6, metadata !52, metadata !DIExpression()), !dbg !471
  %17 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #3, !dbg !473, !srcloc !61
  store i32 %17, ptr %6, align 4, !dbg !473
  %18 = load i32, ptr %6, align 4, !dbg !474
  store i32 %18, ptr %9, align 4, !dbg !475
  %19 = load ptr, ptr %10, align 4, !dbg !476
  store ptr %19, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !65, metadata !DIExpression()), !dbg !477
  %20 = load ptr, ptr %5, align 4, !dbg !479
  %21 = load ptr, ptr %10, align 4, !dbg !480
  store ptr %21, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !73, metadata !DIExpression()), !dbg !481
  %22 = load ptr, ptr %4, align 4, !dbg !483
  %23 = load i32, ptr %9, align 4, !dbg !484
  %24 = getelementptr inbounds %struct.z_spinlock_key, ptr %15, i32 0, i32 0, !dbg !485
  store i32 %23, ptr %24, align 4, !dbg !485
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %13, ptr align 4 %15, i32 4, i1 false), !dbg !485
  %25 = load ptr, ptr %11, align 4, !dbg !486
  %26 = load i32, ptr %25, align 4, !dbg !487
  store i32 %26, ptr %14, align 4, !dbg !488
  %27 = load i32, ptr %12, align 4, !dbg !489
  %28 = load ptr, ptr %11, align 4, !dbg !490
  %29 = load i32, ptr %28, align 4, !dbg !491
  %30 = xor i32 %29, %27, !dbg !491
  store i32 %30, ptr %28, align 4, !dbg !491
  %31 = getelementptr inbounds %struct.z_spinlock_key, ptr %13, i32 0, i32 0, !dbg !492
  %32 = load [1 x i32], ptr %31, align 4, !dbg !492
  store [1 x i32] %32, ptr %7, align 4
  store ptr @lock, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !93, metadata !DIExpression()), !dbg !493
  call void @llvm.dbg.declare(metadata ptr %7, metadata !99, metadata !DIExpression()), !dbg !495
  %33 = load ptr, ptr %8, align 4, !dbg !496
  %34 = load i32, ptr %7, align 4, !dbg !497
  store i32 %34, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !103, metadata !DIExpression()), !dbg !498
  %35 = load i32, ptr %3, align 4, !dbg !500
  %36 = icmp ne i32 %35, 0, !dbg !501
  br i1 %36, label %37, label %38, !dbg !502

37:                                               ; preds = %2
  br label %arch_irq_unlock.exit, !dbg !503

38:                                               ; preds = %2
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #3, !dbg !504, !srcloc !116
  br label %arch_irq_unlock.exit, !dbg !505

arch_irq_unlock.exit:                             ; preds = %37, %38
  %39 = load i32, ptr %14, align 4, !dbg !506
  ret i32 %39, !dbg !507
}

; Function Attrs: noinline nounwind optnone
define hidden i32 @z_impl_atomic_and(ptr noundef %0, i32 noundef %1) #0 !dbg !508 {
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
  call void @llvm.dbg.declare(metadata ptr %11, metadata !509, metadata !DIExpression()), !dbg !510
  store i32 %1, ptr %12, align 4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !511, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.declare(metadata ptr %13, metadata !513, metadata !DIExpression()), !dbg !514
  call void @llvm.dbg.declare(metadata ptr %14, metadata !515, metadata !DIExpression()), !dbg !516
  store ptr @lock, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !42, metadata !DIExpression()), !dbg !517
  %16 = load ptr, ptr %10, align 4, !dbg !519
  call void @llvm.dbg.declare(metadata ptr %9, metadata !50, metadata !DIExpression()), !dbg !520
  call void @llvm.dbg.declare(metadata ptr %6, metadata !52, metadata !DIExpression()), !dbg !521
  %17 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #3, !dbg !523, !srcloc !61
  store i32 %17, ptr %6, align 4, !dbg !523
  %18 = load i32, ptr %6, align 4, !dbg !524
  store i32 %18, ptr %9, align 4, !dbg !525
  %19 = load ptr, ptr %10, align 4, !dbg !526
  store ptr %19, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !65, metadata !DIExpression()), !dbg !527
  %20 = load ptr, ptr %5, align 4, !dbg !529
  %21 = load ptr, ptr %10, align 4, !dbg !530
  store ptr %21, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !73, metadata !DIExpression()), !dbg !531
  %22 = load ptr, ptr %4, align 4, !dbg !533
  %23 = load i32, ptr %9, align 4, !dbg !534
  %24 = getelementptr inbounds %struct.z_spinlock_key, ptr %15, i32 0, i32 0, !dbg !535
  store i32 %23, ptr %24, align 4, !dbg !535
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %13, ptr align 4 %15, i32 4, i1 false), !dbg !535
  %25 = load ptr, ptr %11, align 4, !dbg !536
  %26 = load i32, ptr %25, align 4, !dbg !537
  store i32 %26, ptr %14, align 4, !dbg !538
  %27 = load i32, ptr %12, align 4, !dbg !539
  %28 = load ptr, ptr %11, align 4, !dbg !540
  %29 = load i32, ptr %28, align 4, !dbg !541
  %30 = and i32 %29, %27, !dbg !541
  store i32 %30, ptr %28, align 4, !dbg !541
  %31 = getelementptr inbounds %struct.z_spinlock_key, ptr %13, i32 0, i32 0, !dbg !542
  %32 = load [1 x i32], ptr %31, align 4, !dbg !542
  store [1 x i32] %32, ptr %7, align 4
  store ptr @lock, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !93, metadata !DIExpression()), !dbg !543
  call void @llvm.dbg.declare(metadata ptr %7, metadata !99, metadata !DIExpression()), !dbg !545
  %33 = load ptr, ptr %8, align 4, !dbg !546
  %34 = load i32, ptr %7, align 4, !dbg !547
  store i32 %34, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !103, metadata !DIExpression()), !dbg !548
  %35 = load i32, ptr %3, align 4, !dbg !550
  %36 = icmp ne i32 %35, 0, !dbg !551
  br i1 %36, label %37, label %38, !dbg !552

37:                                               ; preds = %2
  br label %arch_irq_unlock.exit, !dbg !553

38:                                               ; preds = %2
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #3, !dbg !554, !srcloc !116
  br label %arch_irq_unlock.exit, !dbg !555

arch_irq_unlock.exit:                             ; preds = %37, %38
  %39 = load i32, ptr %14, align 4, !dbg !556
  ret i32 %39, !dbg !557
}

; Function Attrs: noinline nounwind optnone
define hidden i32 @z_impl_atomic_nand(ptr noundef %0, i32 noundef %1) #0 !dbg !558 {
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
  call void @llvm.dbg.declare(metadata ptr %11, metadata !559, metadata !DIExpression()), !dbg !560
  store i32 %1, ptr %12, align 4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !561, metadata !DIExpression()), !dbg !562
  call void @llvm.dbg.declare(metadata ptr %13, metadata !563, metadata !DIExpression()), !dbg !564
  call void @llvm.dbg.declare(metadata ptr %14, metadata !565, metadata !DIExpression()), !dbg !566
  store ptr @lock, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !42, metadata !DIExpression()), !dbg !567
  %16 = load ptr, ptr %10, align 4, !dbg !569
  call void @llvm.dbg.declare(metadata ptr %9, metadata !50, metadata !DIExpression()), !dbg !570
  call void @llvm.dbg.declare(metadata ptr %6, metadata !52, metadata !DIExpression()), !dbg !571
  %17 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #3, !dbg !573, !srcloc !61
  store i32 %17, ptr %6, align 4, !dbg !573
  %18 = load i32, ptr %6, align 4, !dbg !574
  store i32 %18, ptr %9, align 4, !dbg !575
  %19 = load ptr, ptr %10, align 4, !dbg !576
  store ptr %19, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !65, metadata !DIExpression()), !dbg !577
  %20 = load ptr, ptr %5, align 4, !dbg !579
  %21 = load ptr, ptr %10, align 4, !dbg !580
  store ptr %21, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !73, metadata !DIExpression()), !dbg !581
  %22 = load ptr, ptr %4, align 4, !dbg !583
  %23 = load i32, ptr %9, align 4, !dbg !584
  %24 = getelementptr inbounds %struct.z_spinlock_key, ptr %15, i32 0, i32 0, !dbg !585
  store i32 %23, ptr %24, align 4, !dbg !585
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %13, ptr align 4 %15, i32 4, i1 false), !dbg !585
  %25 = load ptr, ptr %11, align 4, !dbg !586
  %26 = load i32, ptr %25, align 4, !dbg !587
  store i32 %26, ptr %14, align 4, !dbg !588
  %27 = load ptr, ptr %11, align 4, !dbg !589
  %28 = load i32, ptr %27, align 4, !dbg !590
  %29 = load i32, ptr %12, align 4, !dbg !591
  %30 = and i32 %28, %29, !dbg !592
  %31 = xor i32 %30, -1, !dbg !593
  %32 = load ptr, ptr %11, align 4, !dbg !594
  store i32 %31, ptr %32, align 4, !dbg !595
  %33 = getelementptr inbounds %struct.z_spinlock_key, ptr %13, i32 0, i32 0, !dbg !596
  %34 = load [1 x i32], ptr %33, align 4, !dbg !596
  store [1 x i32] %34, ptr %7, align 4
  store ptr @lock, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !93, metadata !DIExpression()), !dbg !597
  call void @llvm.dbg.declare(metadata ptr %7, metadata !99, metadata !DIExpression()), !dbg !599
  %35 = load ptr, ptr %8, align 4, !dbg !600
  %36 = load i32, ptr %7, align 4, !dbg !601
  store i32 %36, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !103, metadata !DIExpression()), !dbg !602
  %37 = load i32, ptr %3, align 4, !dbg !604
  %38 = icmp ne i32 %37, 0, !dbg !605
  br i1 %38, label %39, label %40, !dbg !606

39:                                               ; preds = %2
  br label %arch_irq_unlock.exit, !dbg !607

40:                                               ; preds = %2
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #3, !dbg !608, !srcloc !116
  br label %arch_irq_unlock.exit, !dbg !609

arch_irq_unlock.exit:                             ; preds = %39, %40
  %41 = load i32, ptr %14, align 4, !dbg !610
  ret i32 %41, !dbg !611
}

attributes #0 = { noinline nounwind optnone "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "lock", scope: !2, file: !5, line: 32, type: !6, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
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
!15 = !{i32 8, !"PIC Level", i32 2}
!16 = !{i32 7, !"PIE Level", i32 2}
!17 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
!18 = distinct !DISubprogram(name: "z_impl_atomic_cas", scope: !5, file: !5, line: 81, type: !19, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !8)
!19 = !DISubroutineType(types: !20)
!20 = !{!21, !22, !26, !26}
!21 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 32)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !24, line: 22, baseType: !25)
!24 = !DIFile(filename: "include/zephyr/sys/atomic.h", directory: "/home/sri/zephyrproject/zephyr")
!25 = !DIBasicType(name: "long", size: 32, encoding: DW_ATE_signed)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_val_t", file: !24, line: 23, baseType: !23)
!27 = !DILocalVariable(name: "target", arg: 1, scope: !18, file: !5, line: 81, type: !22)
!28 = !DILocation(line: 81, column: 35, scope: !18)
!29 = !DILocalVariable(name: "old_value", arg: 2, scope: !18, file: !5, line: 81, type: !26)
!30 = !DILocation(line: 81, column: 56, scope: !18)
!31 = !DILocalVariable(name: "new_value", arg: 3, scope: !18, file: !5, line: 82, type: !26)
!32 = !DILocation(line: 82, column: 23, scope: !18)
!33 = !DILocalVariable(name: "key", scope: !18, file: !5, line: 84, type: !34)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_spinlock_key_t", file: !7, line: 108, baseType: !35)
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "z_spinlock_key", file: !7, line: 34, size: 32, elements: !36)
!36 = !{!37}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !35, file: !7, line: 35, baseType: !38, size: 32)
!38 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!39 = !DILocation(line: 84, column: 19, scope: !18)
!40 = !DILocalVariable(name: "ret", scope: !18, file: !5, line: 85, type: !38)
!41 = !DILocation(line: 85, column: 6, scope: !18)
!42 = !DILocalVariable(name: "l", arg: 1, scope: !43, file: !7, line: 160, type: !46)
!43 = distinct !DISubprogram(name: "k_spin_lock", scope: !7, file: !7, line: 160, type: !44, scopeLine: 161, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!44 = !DISubroutineType(types: !45)
!45 = !{!34, !46}
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 32)
!47 = !DILocation(line: 160, column: 94, scope: !43, inlinedAt: !48)
!48 = distinct !DILocation(line: 95, column: 8, scope: !18)
!49 = !DILocation(line: 162, column: 9, scope: !43, inlinedAt: !48)
!50 = !DILocalVariable(name: "k", scope: !43, file: !7, line: 163, type: !34)
!51 = !DILocation(line: 163, column: 19, scope: !43, inlinedAt: !48)
!52 = !DILocalVariable(name: "key", scope: !53, file: !54, line: 44, type: !57)
!53 = distinct !DISubprogram(name: "arch_irq_lock", scope: !54, file: !54, line: 42, type: !55, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!54 = !DIFile(filename: "include/zephyr/arch/arm/asm_inline_gcc.h", directory: "/home/sri/zephyrproject/zephyr")
!55 = !DISubroutineType(types: !56)
!56 = !{!57}
!57 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!58 = !DILocation(line: 44, column: 15, scope: !53, inlinedAt: !59)
!59 = distinct !DILocation(line: 169, column: 10, scope: !43, inlinedAt: !48)
!60 = !DILocation(line: 48, column: 2, scope: !53, inlinedAt: !59)
!61 = !{i64 54679}
!62 = !DILocation(line: 80, column: 9, scope: !53, inlinedAt: !59)
!63 = !DILocation(line: 169, column: 8, scope: !43, inlinedAt: !48)
!64 = !DILocation(line: 171, column: 26, scope: !43, inlinedAt: !48)
!65 = !DILocalVariable(name: "l", arg: 1, scope: !66, file: !7, line: 110, type: !46)
!66 = distinct !DISubprogram(name: "z_spinlock_validate_pre", scope: !7, file: !7, line: 110, type: !67, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!67 = !DISubroutineType(types: !68)
!68 = !{null, !46}
!69 = !DILocation(line: 110, column: 94, scope: !66, inlinedAt: !70)
!70 = distinct !DILocation(line: 171, column: 2, scope: !43, inlinedAt: !48)
!71 = !DILocation(line: 112, column: 9, scope: !66, inlinedAt: !70)
!72 = !DILocation(line: 177, column: 27, scope: !43, inlinedAt: !48)
!73 = !DILocalVariable(name: "l", arg: 1, scope: !74, file: !7, line: 121, type: !46)
!74 = distinct !DISubprogram(name: "z_spinlock_validate_post", scope: !7, file: !7, line: 121, type: !67, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!75 = !DILocation(line: 121, column: 95, scope: !74, inlinedAt: !76)
!76 = distinct !DILocation(line: 177, column: 2, scope: !43, inlinedAt: !48)
!77 = !DILocation(line: 123, column: 9, scope: !74, inlinedAt: !76)
!78 = !DILocation(line: 179, column: 2, scope: !43, inlinedAt: !48)
!79 = !DILocation(line: 95, column: 8, scope: !18)
!80 = !DILocation(line: 97, column: 7, scope: !81)
!81 = distinct !DILexicalBlock(scope: !18, file: !5, line: 97, column: 6)
!82 = !DILocation(line: 97, column: 6, scope: !81)
!83 = !DILocation(line: 97, column: 17, scope: !81)
!84 = !DILocation(line: 97, column: 14, scope: !81)
!85 = !DILocation(line: 97, column: 6, scope: !18)
!86 = !DILocation(line: 98, column: 13, scope: !87)
!87 = distinct !DILexicalBlock(scope: !81, file: !5, line: 97, column: 28)
!88 = !DILocation(line: 98, column: 4, scope: !87)
!89 = !DILocation(line: 98, column: 11, scope: !87)
!90 = !DILocation(line: 99, column: 7, scope: !87)
!91 = !DILocation(line: 100, column: 2, scope: !87)
!92 = !DILocation(line: 102, column: 2, scope: !18)
!93 = !DILocalVariable(name: "l", arg: 1, scope: !94, file: !7, line: 235, type: !46)
!94 = distinct !DISubprogram(name: "k_spin_unlock", scope: !7, file: !7, line: 235, type: !95, scopeLine: 237, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!95 = !DISubroutineType(types: !96)
!96 = !{null, !46, !34}
!97 = !DILocation(line: 235, column: 84, scope: !94, inlinedAt: !98)
!98 = distinct !DILocation(line: 102, column: 2, scope: !18)
!99 = !DILocalVariable(name: "key", arg: 2, scope: !94, file: !7, line: 236, type: !34)
!100 = !DILocation(line: 236, column: 23, scope: !94, inlinedAt: !98)
!101 = !DILocation(line: 238, column: 9, scope: !94, inlinedAt: !98)
!102 = !DILocation(line: 261, column: 22, scope: !94, inlinedAt: !98)
!103 = !DILocalVariable(name: "key", arg: 1, scope: !104, file: !54, line: 88, type: !57)
!104 = distinct !DISubprogram(name: "arch_irq_unlock", scope: !54, file: !54, line: 88, type: !105, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!105 = !DISubroutineType(types: !106)
!106 = !{null, !57}
!107 = !DILocation(line: 88, column: 80, scope: !104, inlinedAt: !108)
!108 = distinct !DILocation(line: 261, column: 2, scope: !94, inlinedAt: !98)
!109 = !DILocation(line: 91, column: 6, scope: !110, inlinedAt: !108)
!110 = distinct !DILexicalBlock(scope: !104, file: !54, line: 91, column: 6)
!111 = !DILocation(line: 91, column: 10, scope: !110, inlinedAt: !108)
!112 = !DILocation(line: 91, column: 6, scope: !104, inlinedAt: !108)
!113 = !DILocation(line: 92, column: 3, scope: !114, inlinedAt: !108)
!114 = distinct !DILexicalBlock(scope: !110, file: !54, line: 91, column: 17)
!115 = !DILocation(line: 94, column: 2, scope: !104, inlinedAt: !108)
!116 = !{i64 54983}
!117 = !DILocation(line: 114, column: 1, scope: !104, inlinedAt: !108)
!118 = !DILocation(line: 104, column: 9, scope: !18)
!119 = !DILocation(line: 104, column: 2, scope: !18)
!120 = distinct !DISubprogram(name: "z_impl_atomic_ptr_cas", scope: !5, file: !5, line: 118, type: !121, scopeLine: 120, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !8)
!121 = !DISubroutineType(types: !122)
!122 = !{!21, !123, !126, !126}
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 32)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_ptr_t", file: !24, line: 24, baseType: !125)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_ptr_val_t", file: !24, line: 25, baseType: !124)
!127 = !DILocalVariable(name: "target", arg: 1, scope: !120, file: !5, line: 118, type: !123)
!128 = !DILocation(line: 118, column: 43, scope: !120)
!129 = !DILocalVariable(name: "old_value", arg: 2, scope: !120, file: !5, line: 118, type: !126)
!130 = !DILocation(line: 118, column: 68, scope: !120)
!131 = !DILocalVariable(name: "new_value", arg: 3, scope: !120, file: !5, line: 119, type: !126)
!132 = !DILocation(line: 119, column: 24, scope: !120)
!133 = !DILocalVariable(name: "key", scope: !120, file: !5, line: 121, type: !34)
!134 = !DILocation(line: 121, column: 19, scope: !120)
!135 = !DILocalVariable(name: "ret", scope: !120, file: !5, line: 122, type: !38)
!136 = !DILocation(line: 122, column: 6, scope: !120)
!137 = !DILocation(line: 160, column: 94, scope: !43, inlinedAt: !138)
!138 = distinct !DILocation(line: 124, column: 8, scope: !120)
!139 = !DILocation(line: 162, column: 9, scope: !43, inlinedAt: !138)
!140 = !DILocation(line: 163, column: 19, scope: !43, inlinedAt: !138)
!141 = !DILocation(line: 44, column: 15, scope: !53, inlinedAt: !142)
!142 = distinct !DILocation(line: 169, column: 10, scope: !43, inlinedAt: !138)
!143 = !DILocation(line: 48, column: 2, scope: !53, inlinedAt: !142)
!144 = !DILocation(line: 80, column: 9, scope: !53, inlinedAt: !142)
!145 = !DILocation(line: 169, column: 8, scope: !43, inlinedAt: !138)
!146 = !DILocation(line: 171, column: 26, scope: !43, inlinedAt: !138)
!147 = !DILocation(line: 110, column: 94, scope: !66, inlinedAt: !148)
!148 = distinct !DILocation(line: 171, column: 2, scope: !43, inlinedAt: !138)
!149 = !DILocation(line: 112, column: 9, scope: !66, inlinedAt: !148)
!150 = !DILocation(line: 177, column: 27, scope: !43, inlinedAt: !138)
!151 = !DILocation(line: 121, column: 95, scope: !74, inlinedAt: !152)
!152 = distinct !DILocation(line: 177, column: 2, scope: !43, inlinedAt: !138)
!153 = !DILocation(line: 123, column: 9, scope: !74, inlinedAt: !152)
!154 = !DILocation(line: 179, column: 2, scope: !43, inlinedAt: !138)
!155 = !DILocation(line: 124, column: 8, scope: !120)
!156 = !DILocation(line: 126, column: 7, scope: !157)
!157 = distinct !DILexicalBlock(scope: !120, file: !5, line: 126, column: 6)
!158 = !DILocation(line: 126, column: 6, scope: !157)
!159 = !DILocation(line: 126, column: 17, scope: !157)
!160 = !DILocation(line: 126, column: 14, scope: !157)
!161 = !DILocation(line: 126, column: 6, scope: !120)
!162 = !DILocation(line: 127, column: 13, scope: !163)
!163 = distinct !DILexicalBlock(scope: !157, file: !5, line: 126, column: 28)
!164 = !DILocation(line: 127, column: 4, scope: !163)
!165 = !DILocation(line: 127, column: 11, scope: !163)
!166 = !DILocation(line: 128, column: 7, scope: !163)
!167 = !DILocation(line: 129, column: 2, scope: !163)
!168 = !DILocation(line: 131, column: 2, scope: !120)
!169 = !DILocation(line: 235, column: 84, scope: !94, inlinedAt: !170)
!170 = distinct !DILocation(line: 131, column: 2, scope: !120)
!171 = !DILocation(line: 236, column: 23, scope: !94, inlinedAt: !170)
!172 = !DILocation(line: 238, column: 9, scope: !94, inlinedAt: !170)
!173 = !DILocation(line: 261, column: 22, scope: !94, inlinedAt: !170)
!174 = !DILocation(line: 88, column: 80, scope: !104, inlinedAt: !175)
!175 = distinct !DILocation(line: 261, column: 2, scope: !94, inlinedAt: !170)
!176 = !DILocation(line: 91, column: 6, scope: !110, inlinedAt: !175)
!177 = !DILocation(line: 91, column: 10, scope: !110, inlinedAt: !175)
!178 = !DILocation(line: 91, column: 6, scope: !104, inlinedAt: !175)
!179 = !DILocation(line: 92, column: 3, scope: !114, inlinedAt: !175)
!180 = !DILocation(line: 94, column: 2, scope: !104, inlinedAt: !175)
!181 = !DILocation(line: 114, column: 1, scope: !104, inlinedAt: !175)
!182 = !DILocation(line: 133, column: 9, scope: !120)
!183 = !DILocation(line: 133, column: 2, scope: !120)
!184 = distinct !DISubprogram(name: "z_impl_atomic_add", scope: !5, file: !5, line: 161, type: !185, scopeLine: 162, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !8)
!185 = !DISubroutineType(types: !186)
!186 = !{!26, !22, !26}
!187 = !DILocalVariable(name: "target", arg: 1, scope: !184, file: !5, line: 161, type: !22)
!188 = !DILocation(line: 161, column: 42, scope: !184)
!189 = !DILocalVariable(name: "value", arg: 2, scope: !184, file: !5, line: 161, type: !26)
!190 = !DILocation(line: 161, column: 63, scope: !184)
!191 = !DILocalVariable(name: "key", scope: !184, file: !5, line: 163, type: !34)
!192 = !DILocation(line: 163, column: 19, scope: !184)
!193 = !DILocalVariable(name: "ret", scope: !184, file: !5, line: 164, type: !26)
!194 = !DILocation(line: 164, column: 15, scope: !184)
!195 = !DILocation(line: 160, column: 94, scope: !43, inlinedAt: !196)
!196 = distinct !DILocation(line: 166, column: 8, scope: !184)
!197 = !DILocation(line: 162, column: 9, scope: !43, inlinedAt: !196)
!198 = !DILocation(line: 163, column: 19, scope: !43, inlinedAt: !196)
!199 = !DILocation(line: 44, column: 15, scope: !53, inlinedAt: !200)
!200 = distinct !DILocation(line: 169, column: 10, scope: !43, inlinedAt: !196)
!201 = !DILocation(line: 48, column: 2, scope: !53, inlinedAt: !200)
!202 = !DILocation(line: 80, column: 9, scope: !53, inlinedAt: !200)
!203 = !DILocation(line: 169, column: 8, scope: !43, inlinedAt: !196)
!204 = !DILocation(line: 171, column: 26, scope: !43, inlinedAt: !196)
!205 = !DILocation(line: 110, column: 94, scope: !66, inlinedAt: !206)
!206 = distinct !DILocation(line: 171, column: 2, scope: !43, inlinedAt: !196)
!207 = !DILocation(line: 112, column: 9, scope: !66, inlinedAt: !206)
!208 = !DILocation(line: 177, column: 27, scope: !43, inlinedAt: !196)
!209 = !DILocation(line: 121, column: 95, scope: !74, inlinedAt: !210)
!210 = distinct !DILocation(line: 177, column: 2, scope: !43, inlinedAt: !196)
!211 = !DILocation(line: 123, column: 9, scope: !74, inlinedAt: !210)
!212 = !DILocation(line: 179, column: 2, scope: !43, inlinedAt: !196)
!213 = !DILocation(line: 166, column: 8, scope: !184)
!214 = !DILocation(line: 168, column: 9, scope: !184)
!215 = !DILocation(line: 168, column: 8, scope: !184)
!216 = !DILocation(line: 168, column: 6, scope: !184)
!217 = !DILocation(line: 169, column: 13, scope: !184)
!218 = !DILocation(line: 169, column: 3, scope: !184)
!219 = !DILocation(line: 169, column: 10, scope: !184)
!220 = !DILocation(line: 171, column: 2, scope: !184)
!221 = !DILocation(line: 235, column: 84, scope: !94, inlinedAt: !222)
!222 = distinct !DILocation(line: 171, column: 2, scope: !184)
!223 = !DILocation(line: 236, column: 23, scope: !94, inlinedAt: !222)
!224 = !DILocation(line: 238, column: 9, scope: !94, inlinedAt: !222)
!225 = !DILocation(line: 261, column: 22, scope: !94, inlinedAt: !222)
!226 = !DILocation(line: 88, column: 80, scope: !104, inlinedAt: !227)
!227 = distinct !DILocation(line: 261, column: 2, scope: !94, inlinedAt: !222)
!228 = !DILocation(line: 91, column: 6, scope: !110, inlinedAt: !227)
!229 = !DILocation(line: 91, column: 10, scope: !110, inlinedAt: !227)
!230 = !DILocation(line: 91, column: 6, scope: !104, inlinedAt: !227)
!231 = !DILocation(line: 92, column: 3, scope: !114, inlinedAt: !227)
!232 = !DILocation(line: 94, column: 2, scope: !104, inlinedAt: !227)
!233 = !DILocation(line: 114, column: 1, scope: !104, inlinedAt: !227)
!234 = !DILocation(line: 173, column: 9, scope: !184)
!235 = !DILocation(line: 173, column: 2, scope: !184)
!236 = distinct !DISubprogram(name: "z_impl_atomic_sub", scope: !5, file: !5, line: 191, type: !185, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !8)
!237 = !DILocalVariable(name: "target", arg: 1, scope: !236, file: !5, line: 191, type: !22)
!238 = !DILocation(line: 191, column: 42, scope: !236)
!239 = !DILocalVariable(name: "value", arg: 2, scope: !236, file: !5, line: 191, type: !26)
!240 = !DILocation(line: 191, column: 63, scope: !236)
!241 = !DILocalVariable(name: "key", scope: !236, file: !5, line: 193, type: !34)
!242 = !DILocation(line: 193, column: 19, scope: !236)
!243 = !DILocalVariable(name: "ret", scope: !236, file: !5, line: 194, type: !26)
!244 = !DILocation(line: 194, column: 15, scope: !236)
!245 = !DILocation(line: 160, column: 94, scope: !43, inlinedAt: !246)
!246 = distinct !DILocation(line: 196, column: 8, scope: !236)
!247 = !DILocation(line: 162, column: 9, scope: !43, inlinedAt: !246)
!248 = !DILocation(line: 163, column: 19, scope: !43, inlinedAt: !246)
!249 = !DILocation(line: 44, column: 15, scope: !53, inlinedAt: !250)
!250 = distinct !DILocation(line: 169, column: 10, scope: !43, inlinedAt: !246)
!251 = !DILocation(line: 48, column: 2, scope: !53, inlinedAt: !250)
!252 = !DILocation(line: 80, column: 9, scope: !53, inlinedAt: !250)
!253 = !DILocation(line: 169, column: 8, scope: !43, inlinedAt: !246)
!254 = !DILocation(line: 171, column: 26, scope: !43, inlinedAt: !246)
!255 = !DILocation(line: 110, column: 94, scope: !66, inlinedAt: !256)
!256 = distinct !DILocation(line: 171, column: 2, scope: !43, inlinedAt: !246)
!257 = !DILocation(line: 112, column: 9, scope: !66, inlinedAt: !256)
!258 = !DILocation(line: 177, column: 27, scope: !43, inlinedAt: !246)
!259 = !DILocation(line: 121, column: 95, scope: !74, inlinedAt: !260)
!260 = distinct !DILocation(line: 177, column: 2, scope: !43, inlinedAt: !246)
!261 = !DILocation(line: 123, column: 9, scope: !74, inlinedAt: !260)
!262 = !DILocation(line: 179, column: 2, scope: !43, inlinedAt: !246)
!263 = !DILocation(line: 196, column: 8, scope: !236)
!264 = !DILocation(line: 198, column: 9, scope: !236)
!265 = !DILocation(line: 198, column: 8, scope: !236)
!266 = !DILocation(line: 198, column: 6, scope: !236)
!267 = !DILocation(line: 199, column: 13, scope: !236)
!268 = !DILocation(line: 199, column: 3, scope: !236)
!269 = !DILocation(line: 199, column: 10, scope: !236)
!270 = !DILocation(line: 201, column: 2, scope: !236)
!271 = !DILocation(line: 235, column: 84, scope: !94, inlinedAt: !272)
!272 = distinct !DILocation(line: 201, column: 2, scope: !236)
!273 = !DILocation(line: 236, column: 23, scope: !94, inlinedAt: !272)
!274 = !DILocation(line: 238, column: 9, scope: !94, inlinedAt: !272)
!275 = !DILocation(line: 261, column: 22, scope: !94, inlinedAt: !272)
!276 = !DILocation(line: 88, column: 80, scope: !104, inlinedAt: !277)
!277 = distinct !DILocation(line: 261, column: 2, scope: !94, inlinedAt: !272)
!278 = !DILocation(line: 91, column: 6, scope: !110, inlinedAt: !277)
!279 = !DILocation(line: 91, column: 10, scope: !110, inlinedAt: !277)
!280 = !DILocation(line: 91, column: 6, scope: !104, inlinedAt: !277)
!281 = !DILocation(line: 92, column: 3, scope: !114, inlinedAt: !277)
!282 = !DILocation(line: 94, column: 2, scope: !104, inlinedAt: !277)
!283 = !DILocation(line: 114, column: 1, scope: !104, inlinedAt: !277)
!284 = !DILocation(line: 203, column: 9, scope: !236)
!285 = !DILocation(line: 203, column: 2, scope: !236)
!286 = distinct !DISubprogram(name: "atomic_get", scope: !5, file: !5, line: 220, type: !287, scopeLine: 221, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !8)
!287 = !DISubroutineType(types: !288)
!288 = !{!26, !289}
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 32)
!290 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!291 = !DILocalVariable(name: "target", arg: 1, scope: !286, file: !5, line: 220, type: !289)
!292 = !DILocation(line: 220, column: 41, scope: !286)
!293 = !DILocation(line: 222, column: 10, scope: !286)
!294 = !DILocation(line: 222, column: 9, scope: !286)
!295 = !DILocation(line: 222, column: 2, scope: !286)
!296 = distinct !DISubprogram(name: "atomic_ptr_get", scope: !5, file: !5, line: 225, type: !297, scopeLine: 226, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !8)
!297 = !DISubroutineType(types: !298)
!298 = !{!126, !299}
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 32)
!300 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !124)
!301 = !DILocalVariable(name: "target", arg: 1, scope: !296, file: !5, line: 225, type: !299)
!302 = !DILocation(line: 225, column: 53, scope: !296)
!303 = !DILocation(line: 227, column: 10, scope: !296)
!304 = !DILocation(line: 227, column: 9, scope: !296)
!305 = !DILocation(line: 227, column: 2, scope: !296)
!306 = distinct !DISubprogram(name: "z_impl_atomic_set", scope: !5, file: !5, line: 242, type: !185, scopeLine: 243, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !8)
!307 = !DILocalVariable(name: "target", arg: 1, scope: !306, file: !5, line: 242, type: !22)
!308 = !DILocation(line: 242, column: 42, scope: !306)
!309 = !DILocalVariable(name: "value", arg: 2, scope: !306, file: !5, line: 242, type: !26)
!310 = !DILocation(line: 242, column: 63, scope: !306)
!311 = !DILocalVariable(name: "key", scope: !306, file: !5, line: 244, type: !34)
!312 = !DILocation(line: 244, column: 19, scope: !306)
!313 = !DILocalVariable(name: "ret", scope: !306, file: !5, line: 245, type: !26)
!314 = !DILocation(line: 245, column: 15, scope: !306)
!315 = !DILocation(line: 160, column: 94, scope: !43, inlinedAt: !316)
!316 = distinct !DILocation(line: 247, column: 8, scope: !306)
!317 = !DILocation(line: 162, column: 9, scope: !43, inlinedAt: !316)
!318 = !DILocation(line: 163, column: 19, scope: !43, inlinedAt: !316)
!319 = !DILocation(line: 44, column: 15, scope: !53, inlinedAt: !320)
!320 = distinct !DILocation(line: 169, column: 10, scope: !43, inlinedAt: !316)
!321 = !DILocation(line: 48, column: 2, scope: !53, inlinedAt: !320)
!322 = !DILocation(line: 80, column: 9, scope: !53, inlinedAt: !320)
!323 = !DILocation(line: 169, column: 8, scope: !43, inlinedAt: !316)
!324 = !DILocation(line: 171, column: 26, scope: !43, inlinedAt: !316)
!325 = !DILocation(line: 110, column: 94, scope: !66, inlinedAt: !326)
!326 = distinct !DILocation(line: 171, column: 2, scope: !43, inlinedAt: !316)
!327 = !DILocation(line: 112, column: 9, scope: !66, inlinedAt: !326)
!328 = !DILocation(line: 177, column: 27, scope: !43, inlinedAt: !316)
!329 = !DILocation(line: 121, column: 95, scope: !74, inlinedAt: !330)
!330 = distinct !DILocation(line: 177, column: 2, scope: !43, inlinedAt: !316)
!331 = !DILocation(line: 123, column: 9, scope: !74, inlinedAt: !330)
!332 = !DILocation(line: 179, column: 2, scope: !43, inlinedAt: !316)
!333 = !DILocation(line: 247, column: 8, scope: !306)
!334 = !DILocation(line: 249, column: 9, scope: !306)
!335 = !DILocation(line: 249, column: 8, scope: !306)
!336 = !DILocation(line: 249, column: 6, scope: !306)
!337 = !DILocation(line: 250, column: 12, scope: !306)
!338 = !DILocation(line: 250, column: 3, scope: !306)
!339 = !DILocation(line: 250, column: 10, scope: !306)
!340 = !DILocation(line: 252, column: 2, scope: !306)
!341 = !DILocation(line: 235, column: 84, scope: !94, inlinedAt: !342)
!342 = distinct !DILocation(line: 252, column: 2, scope: !306)
!343 = !DILocation(line: 236, column: 23, scope: !94, inlinedAt: !342)
!344 = !DILocation(line: 238, column: 9, scope: !94, inlinedAt: !342)
!345 = !DILocation(line: 261, column: 22, scope: !94, inlinedAt: !342)
!346 = !DILocation(line: 88, column: 80, scope: !104, inlinedAt: !347)
!347 = distinct !DILocation(line: 261, column: 2, scope: !94, inlinedAt: !342)
!348 = !DILocation(line: 91, column: 6, scope: !110, inlinedAt: !347)
!349 = !DILocation(line: 91, column: 10, scope: !110, inlinedAt: !347)
!350 = !DILocation(line: 91, column: 6, scope: !104, inlinedAt: !347)
!351 = !DILocation(line: 92, column: 3, scope: !114, inlinedAt: !347)
!352 = !DILocation(line: 94, column: 2, scope: !104, inlinedAt: !347)
!353 = !DILocation(line: 114, column: 1, scope: !104, inlinedAt: !347)
!354 = !DILocation(line: 254, column: 9, scope: !306)
!355 = !DILocation(line: 254, column: 2, scope: !306)
!356 = distinct !DISubprogram(name: "z_impl_atomic_ptr_set", scope: !5, file: !5, line: 259, type: !357, scopeLine: 261, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !8)
!357 = !DISubroutineType(types: !358)
!358 = !{!126, !123, !126}
!359 = !DILocalVariable(name: "target", arg: 1, scope: !356, file: !5, line: 259, type: !123)
!360 = !DILocation(line: 259, column: 54, scope: !356)
!361 = !DILocalVariable(name: "value", arg: 2, scope: !356, file: !5, line: 260, type: !126)
!362 = !DILocation(line: 260, column: 29, scope: !356)
!363 = !DILocalVariable(name: "key", scope: !356, file: !5, line: 262, type: !34)
!364 = !DILocation(line: 262, column: 19, scope: !356)
!365 = !DILocalVariable(name: "ret", scope: !356, file: !5, line: 263, type: !126)
!366 = !DILocation(line: 263, column: 19, scope: !356)
!367 = !DILocation(line: 160, column: 94, scope: !43, inlinedAt: !368)
!368 = distinct !DILocation(line: 265, column: 8, scope: !356)
!369 = !DILocation(line: 162, column: 9, scope: !43, inlinedAt: !368)
!370 = !DILocation(line: 163, column: 19, scope: !43, inlinedAt: !368)
!371 = !DILocation(line: 44, column: 15, scope: !53, inlinedAt: !372)
!372 = distinct !DILocation(line: 169, column: 10, scope: !43, inlinedAt: !368)
!373 = !DILocation(line: 48, column: 2, scope: !53, inlinedAt: !372)
!374 = !DILocation(line: 80, column: 9, scope: !53, inlinedAt: !372)
!375 = !DILocation(line: 169, column: 8, scope: !43, inlinedAt: !368)
!376 = !DILocation(line: 171, column: 26, scope: !43, inlinedAt: !368)
!377 = !DILocation(line: 110, column: 94, scope: !66, inlinedAt: !378)
!378 = distinct !DILocation(line: 171, column: 2, scope: !43, inlinedAt: !368)
!379 = !DILocation(line: 112, column: 9, scope: !66, inlinedAt: !378)
!380 = !DILocation(line: 177, column: 27, scope: !43, inlinedAt: !368)
!381 = !DILocation(line: 121, column: 95, scope: !74, inlinedAt: !382)
!382 = distinct !DILocation(line: 177, column: 2, scope: !43, inlinedAt: !368)
!383 = !DILocation(line: 123, column: 9, scope: !74, inlinedAt: !382)
!384 = !DILocation(line: 179, column: 2, scope: !43, inlinedAt: !368)
!385 = !DILocation(line: 265, column: 8, scope: !356)
!386 = !DILocation(line: 267, column: 9, scope: !356)
!387 = !DILocation(line: 267, column: 8, scope: !356)
!388 = !DILocation(line: 267, column: 6, scope: !356)
!389 = !DILocation(line: 268, column: 12, scope: !356)
!390 = !DILocation(line: 268, column: 3, scope: !356)
!391 = !DILocation(line: 268, column: 10, scope: !356)
!392 = !DILocation(line: 270, column: 2, scope: !356)
!393 = !DILocation(line: 235, column: 84, scope: !94, inlinedAt: !394)
!394 = distinct !DILocation(line: 270, column: 2, scope: !356)
!395 = !DILocation(line: 236, column: 23, scope: !94, inlinedAt: !394)
!396 = !DILocation(line: 238, column: 9, scope: !94, inlinedAt: !394)
!397 = !DILocation(line: 261, column: 22, scope: !94, inlinedAt: !394)
!398 = !DILocation(line: 88, column: 80, scope: !104, inlinedAt: !399)
!399 = distinct !DILocation(line: 261, column: 2, scope: !94, inlinedAt: !394)
!400 = !DILocation(line: 91, column: 6, scope: !110, inlinedAt: !399)
!401 = !DILocation(line: 91, column: 10, scope: !110, inlinedAt: !399)
!402 = !DILocation(line: 91, column: 6, scope: !104, inlinedAt: !399)
!403 = !DILocation(line: 92, column: 3, scope: !114, inlinedAt: !399)
!404 = !DILocation(line: 94, column: 2, scope: !104, inlinedAt: !399)
!405 = !DILocation(line: 114, column: 1, scope: !104, inlinedAt: !399)
!406 = !DILocation(line: 272, column: 9, scope: !356)
!407 = !DILocation(line: 272, column: 2, scope: !356)
!408 = distinct !DISubprogram(name: "z_impl_atomic_or", scope: !5, file: !5, line: 299, type: !185, scopeLine: 300, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !8)
!409 = !DILocalVariable(name: "target", arg: 1, scope: !408, file: !5, line: 299, type: !22)
!410 = !DILocation(line: 299, column: 41, scope: !408)
!411 = !DILocalVariable(name: "value", arg: 2, scope: !408, file: !5, line: 299, type: !26)
!412 = !DILocation(line: 299, column: 62, scope: !408)
!413 = !DILocalVariable(name: "key", scope: !408, file: !5, line: 301, type: !34)
!414 = !DILocation(line: 301, column: 19, scope: !408)
!415 = !DILocalVariable(name: "ret", scope: !408, file: !5, line: 302, type: !26)
!416 = !DILocation(line: 302, column: 15, scope: !408)
!417 = !DILocation(line: 160, column: 94, scope: !43, inlinedAt: !418)
!418 = distinct !DILocation(line: 304, column: 8, scope: !408)
!419 = !DILocation(line: 162, column: 9, scope: !43, inlinedAt: !418)
!420 = !DILocation(line: 163, column: 19, scope: !43, inlinedAt: !418)
!421 = !DILocation(line: 44, column: 15, scope: !53, inlinedAt: !422)
!422 = distinct !DILocation(line: 169, column: 10, scope: !43, inlinedAt: !418)
!423 = !DILocation(line: 48, column: 2, scope: !53, inlinedAt: !422)
!424 = !DILocation(line: 80, column: 9, scope: !53, inlinedAt: !422)
!425 = !DILocation(line: 169, column: 8, scope: !43, inlinedAt: !418)
!426 = !DILocation(line: 171, column: 26, scope: !43, inlinedAt: !418)
!427 = !DILocation(line: 110, column: 94, scope: !66, inlinedAt: !428)
!428 = distinct !DILocation(line: 171, column: 2, scope: !43, inlinedAt: !418)
!429 = !DILocation(line: 112, column: 9, scope: !66, inlinedAt: !428)
!430 = !DILocation(line: 177, column: 27, scope: !43, inlinedAt: !418)
!431 = !DILocation(line: 121, column: 95, scope: !74, inlinedAt: !432)
!432 = distinct !DILocation(line: 177, column: 2, scope: !43, inlinedAt: !418)
!433 = !DILocation(line: 123, column: 9, scope: !74, inlinedAt: !432)
!434 = !DILocation(line: 179, column: 2, scope: !43, inlinedAt: !418)
!435 = !DILocation(line: 304, column: 8, scope: !408)
!436 = !DILocation(line: 306, column: 9, scope: !408)
!437 = !DILocation(line: 306, column: 8, scope: !408)
!438 = !DILocation(line: 306, column: 6, scope: !408)
!439 = !DILocation(line: 307, column: 13, scope: !408)
!440 = !DILocation(line: 307, column: 3, scope: !408)
!441 = !DILocation(line: 307, column: 10, scope: !408)
!442 = !DILocation(line: 309, column: 2, scope: !408)
!443 = !DILocation(line: 235, column: 84, scope: !94, inlinedAt: !444)
!444 = distinct !DILocation(line: 309, column: 2, scope: !408)
!445 = !DILocation(line: 236, column: 23, scope: !94, inlinedAt: !444)
!446 = !DILocation(line: 238, column: 9, scope: !94, inlinedAt: !444)
!447 = !DILocation(line: 261, column: 22, scope: !94, inlinedAt: !444)
!448 = !DILocation(line: 88, column: 80, scope: !104, inlinedAt: !449)
!449 = distinct !DILocation(line: 261, column: 2, scope: !94, inlinedAt: !444)
!450 = !DILocation(line: 91, column: 6, scope: !110, inlinedAt: !449)
!451 = !DILocation(line: 91, column: 10, scope: !110, inlinedAt: !449)
!452 = !DILocation(line: 91, column: 6, scope: !104, inlinedAt: !449)
!453 = !DILocation(line: 92, column: 3, scope: !114, inlinedAt: !449)
!454 = !DILocation(line: 94, column: 2, scope: !104, inlinedAt: !449)
!455 = !DILocation(line: 114, column: 1, scope: !104, inlinedAt: !449)
!456 = !DILocation(line: 311, column: 9, scope: !408)
!457 = !DILocation(line: 311, column: 2, scope: !408)
!458 = distinct !DISubprogram(name: "z_impl_atomic_xor", scope: !5, file: !5, line: 329, type: !185, scopeLine: 330, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !8)
!459 = !DILocalVariable(name: "target", arg: 1, scope: !458, file: !5, line: 329, type: !22)
!460 = !DILocation(line: 329, column: 42, scope: !458)
!461 = !DILocalVariable(name: "value", arg: 2, scope: !458, file: !5, line: 329, type: !26)
!462 = !DILocation(line: 329, column: 63, scope: !458)
!463 = !DILocalVariable(name: "key", scope: !458, file: !5, line: 331, type: !34)
!464 = !DILocation(line: 331, column: 19, scope: !458)
!465 = !DILocalVariable(name: "ret", scope: !458, file: !5, line: 332, type: !26)
!466 = !DILocation(line: 332, column: 15, scope: !458)
!467 = !DILocation(line: 160, column: 94, scope: !43, inlinedAt: !468)
!468 = distinct !DILocation(line: 334, column: 8, scope: !458)
!469 = !DILocation(line: 162, column: 9, scope: !43, inlinedAt: !468)
!470 = !DILocation(line: 163, column: 19, scope: !43, inlinedAt: !468)
!471 = !DILocation(line: 44, column: 15, scope: !53, inlinedAt: !472)
!472 = distinct !DILocation(line: 169, column: 10, scope: !43, inlinedAt: !468)
!473 = !DILocation(line: 48, column: 2, scope: !53, inlinedAt: !472)
!474 = !DILocation(line: 80, column: 9, scope: !53, inlinedAt: !472)
!475 = !DILocation(line: 169, column: 8, scope: !43, inlinedAt: !468)
!476 = !DILocation(line: 171, column: 26, scope: !43, inlinedAt: !468)
!477 = !DILocation(line: 110, column: 94, scope: !66, inlinedAt: !478)
!478 = distinct !DILocation(line: 171, column: 2, scope: !43, inlinedAt: !468)
!479 = !DILocation(line: 112, column: 9, scope: !66, inlinedAt: !478)
!480 = !DILocation(line: 177, column: 27, scope: !43, inlinedAt: !468)
!481 = !DILocation(line: 121, column: 95, scope: !74, inlinedAt: !482)
!482 = distinct !DILocation(line: 177, column: 2, scope: !43, inlinedAt: !468)
!483 = !DILocation(line: 123, column: 9, scope: !74, inlinedAt: !482)
!484 = !DILocation(line: 179, column: 2, scope: !43, inlinedAt: !468)
!485 = !DILocation(line: 334, column: 8, scope: !458)
!486 = !DILocation(line: 336, column: 9, scope: !458)
!487 = !DILocation(line: 336, column: 8, scope: !458)
!488 = !DILocation(line: 336, column: 6, scope: !458)
!489 = !DILocation(line: 337, column: 13, scope: !458)
!490 = !DILocation(line: 337, column: 3, scope: !458)
!491 = !DILocation(line: 337, column: 10, scope: !458)
!492 = !DILocation(line: 339, column: 2, scope: !458)
!493 = !DILocation(line: 235, column: 84, scope: !94, inlinedAt: !494)
!494 = distinct !DILocation(line: 339, column: 2, scope: !458)
!495 = !DILocation(line: 236, column: 23, scope: !94, inlinedAt: !494)
!496 = !DILocation(line: 238, column: 9, scope: !94, inlinedAt: !494)
!497 = !DILocation(line: 261, column: 22, scope: !94, inlinedAt: !494)
!498 = !DILocation(line: 88, column: 80, scope: !104, inlinedAt: !499)
!499 = distinct !DILocation(line: 261, column: 2, scope: !94, inlinedAt: !494)
!500 = !DILocation(line: 91, column: 6, scope: !110, inlinedAt: !499)
!501 = !DILocation(line: 91, column: 10, scope: !110, inlinedAt: !499)
!502 = !DILocation(line: 91, column: 6, scope: !104, inlinedAt: !499)
!503 = !DILocation(line: 92, column: 3, scope: !114, inlinedAt: !499)
!504 = !DILocation(line: 94, column: 2, scope: !104, inlinedAt: !499)
!505 = !DILocation(line: 114, column: 1, scope: !104, inlinedAt: !499)
!506 = !DILocation(line: 341, column: 9, scope: !458)
!507 = !DILocation(line: 341, column: 2, scope: !458)
!508 = distinct !DISubprogram(name: "z_impl_atomic_and", scope: !5, file: !5, line: 359, type: !185, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !8)
!509 = !DILocalVariable(name: "target", arg: 1, scope: !508, file: !5, line: 359, type: !22)
!510 = !DILocation(line: 359, column: 42, scope: !508)
!511 = !DILocalVariable(name: "value", arg: 2, scope: !508, file: !5, line: 359, type: !26)
!512 = !DILocation(line: 359, column: 63, scope: !508)
!513 = !DILocalVariable(name: "key", scope: !508, file: !5, line: 361, type: !34)
!514 = !DILocation(line: 361, column: 19, scope: !508)
!515 = !DILocalVariable(name: "ret", scope: !508, file: !5, line: 362, type: !26)
!516 = !DILocation(line: 362, column: 15, scope: !508)
!517 = !DILocation(line: 160, column: 94, scope: !43, inlinedAt: !518)
!518 = distinct !DILocation(line: 364, column: 8, scope: !508)
!519 = !DILocation(line: 162, column: 9, scope: !43, inlinedAt: !518)
!520 = !DILocation(line: 163, column: 19, scope: !43, inlinedAt: !518)
!521 = !DILocation(line: 44, column: 15, scope: !53, inlinedAt: !522)
!522 = distinct !DILocation(line: 169, column: 10, scope: !43, inlinedAt: !518)
!523 = !DILocation(line: 48, column: 2, scope: !53, inlinedAt: !522)
!524 = !DILocation(line: 80, column: 9, scope: !53, inlinedAt: !522)
!525 = !DILocation(line: 169, column: 8, scope: !43, inlinedAt: !518)
!526 = !DILocation(line: 171, column: 26, scope: !43, inlinedAt: !518)
!527 = !DILocation(line: 110, column: 94, scope: !66, inlinedAt: !528)
!528 = distinct !DILocation(line: 171, column: 2, scope: !43, inlinedAt: !518)
!529 = !DILocation(line: 112, column: 9, scope: !66, inlinedAt: !528)
!530 = !DILocation(line: 177, column: 27, scope: !43, inlinedAt: !518)
!531 = !DILocation(line: 121, column: 95, scope: !74, inlinedAt: !532)
!532 = distinct !DILocation(line: 177, column: 2, scope: !43, inlinedAt: !518)
!533 = !DILocation(line: 123, column: 9, scope: !74, inlinedAt: !532)
!534 = !DILocation(line: 179, column: 2, scope: !43, inlinedAt: !518)
!535 = !DILocation(line: 364, column: 8, scope: !508)
!536 = !DILocation(line: 366, column: 9, scope: !508)
!537 = !DILocation(line: 366, column: 8, scope: !508)
!538 = !DILocation(line: 366, column: 6, scope: !508)
!539 = !DILocation(line: 367, column: 13, scope: !508)
!540 = !DILocation(line: 367, column: 3, scope: !508)
!541 = !DILocation(line: 367, column: 10, scope: !508)
!542 = !DILocation(line: 369, column: 2, scope: !508)
!543 = !DILocation(line: 235, column: 84, scope: !94, inlinedAt: !544)
!544 = distinct !DILocation(line: 369, column: 2, scope: !508)
!545 = !DILocation(line: 236, column: 23, scope: !94, inlinedAt: !544)
!546 = !DILocation(line: 238, column: 9, scope: !94, inlinedAt: !544)
!547 = !DILocation(line: 261, column: 22, scope: !94, inlinedAt: !544)
!548 = !DILocation(line: 88, column: 80, scope: !104, inlinedAt: !549)
!549 = distinct !DILocation(line: 261, column: 2, scope: !94, inlinedAt: !544)
!550 = !DILocation(line: 91, column: 6, scope: !110, inlinedAt: !549)
!551 = !DILocation(line: 91, column: 10, scope: !110, inlinedAt: !549)
!552 = !DILocation(line: 91, column: 6, scope: !104, inlinedAt: !549)
!553 = !DILocation(line: 92, column: 3, scope: !114, inlinedAt: !549)
!554 = !DILocation(line: 94, column: 2, scope: !104, inlinedAt: !549)
!555 = !DILocation(line: 114, column: 1, scope: !104, inlinedAt: !549)
!556 = !DILocation(line: 371, column: 9, scope: !508)
!557 = !DILocation(line: 371, column: 2, scope: !508)
!558 = distinct !DISubprogram(name: "z_impl_atomic_nand", scope: !5, file: !5, line: 389, type: !185, scopeLine: 390, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !8)
!559 = !DILocalVariable(name: "target", arg: 1, scope: !558, file: !5, line: 389, type: !22)
!560 = !DILocation(line: 389, column: 43, scope: !558)
!561 = !DILocalVariable(name: "value", arg: 2, scope: !558, file: !5, line: 389, type: !26)
!562 = !DILocation(line: 389, column: 64, scope: !558)
!563 = !DILocalVariable(name: "key", scope: !558, file: !5, line: 391, type: !34)
!564 = !DILocation(line: 391, column: 19, scope: !558)
!565 = !DILocalVariable(name: "ret", scope: !558, file: !5, line: 392, type: !26)
!566 = !DILocation(line: 392, column: 15, scope: !558)
!567 = !DILocation(line: 160, column: 94, scope: !43, inlinedAt: !568)
!568 = distinct !DILocation(line: 394, column: 8, scope: !558)
!569 = !DILocation(line: 162, column: 9, scope: !43, inlinedAt: !568)
!570 = !DILocation(line: 163, column: 19, scope: !43, inlinedAt: !568)
!571 = !DILocation(line: 44, column: 15, scope: !53, inlinedAt: !572)
!572 = distinct !DILocation(line: 169, column: 10, scope: !43, inlinedAt: !568)
!573 = !DILocation(line: 48, column: 2, scope: !53, inlinedAt: !572)
!574 = !DILocation(line: 80, column: 9, scope: !53, inlinedAt: !572)
!575 = !DILocation(line: 169, column: 8, scope: !43, inlinedAt: !568)
!576 = !DILocation(line: 171, column: 26, scope: !43, inlinedAt: !568)
!577 = !DILocation(line: 110, column: 94, scope: !66, inlinedAt: !578)
!578 = distinct !DILocation(line: 171, column: 2, scope: !43, inlinedAt: !568)
!579 = !DILocation(line: 112, column: 9, scope: !66, inlinedAt: !578)
!580 = !DILocation(line: 177, column: 27, scope: !43, inlinedAt: !568)
!581 = !DILocation(line: 121, column: 95, scope: !74, inlinedAt: !582)
!582 = distinct !DILocation(line: 177, column: 2, scope: !43, inlinedAt: !568)
!583 = !DILocation(line: 123, column: 9, scope: !74, inlinedAt: !582)
!584 = !DILocation(line: 179, column: 2, scope: !43, inlinedAt: !568)
!585 = !DILocation(line: 394, column: 8, scope: !558)
!586 = !DILocation(line: 396, column: 9, scope: !558)
!587 = !DILocation(line: 396, column: 8, scope: !558)
!588 = !DILocation(line: 396, column: 6, scope: !558)
!589 = !DILocation(line: 397, column: 15, scope: !558)
!590 = !DILocation(line: 397, column: 14, scope: !558)
!591 = !DILocation(line: 397, column: 24, scope: !558)
!592 = !DILocation(line: 397, column: 22, scope: !558)
!593 = !DILocation(line: 397, column: 12, scope: !558)
!594 = !DILocation(line: 397, column: 3, scope: !558)
!595 = !DILocation(line: 397, column: 10, scope: !558)
!596 = !DILocation(line: 399, column: 2, scope: !558)
!597 = !DILocation(line: 235, column: 84, scope: !94, inlinedAt: !598)
!598 = distinct !DILocation(line: 399, column: 2, scope: !558)
!599 = !DILocation(line: 236, column: 23, scope: !94, inlinedAt: !598)
!600 = !DILocation(line: 238, column: 9, scope: !94, inlinedAt: !598)
!601 = !DILocation(line: 261, column: 22, scope: !94, inlinedAt: !598)
!602 = !DILocation(line: 88, column: 80, scope: !104, inlinedAt: !603)
!603 = distinct !DILocation(line: 261, column: 2, scope: !94, inlinedAt: !598)
!604 = !DILocation(line: 91, column: 6, scope: !110, inlinedAt: !603)
!605 = !DILocation(line: 91, column: 10, scope: !110, inlinedAt: !603)
!606 = !DILocation(line: 91, column: 6, scope: !104, inlinedAt: !603)
!607 = !DILocation(line: 92, column: 3, scope: !114, inlinedAt: !603)
!608 = !DILocation(line: 94, column: 2, scope: !104, inlinedAt: !603)
!609 = !DILocation(line: 114, column: 1, scope: !104, inlinedAt: !603)
!610 = !DILocation(line: 401, column: 9, scope: !558)
!611 = !DILocation(line: 401, column: 2, scope: !558)
