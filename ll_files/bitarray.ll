; ModuleID = '../bc_files/bitarray.bc'
source_filename = "/home/sri/zephyrproject/zephyr/lib/os/bitarray.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-arm-none-eabi"

%struct.k_thread = type { %struct._thread_base, %struct._callee_saved, ptr, %struct._wait_q_t, i32, ptr, %struct._thread_arch }
%struct._thread_base = type { %union.anon, ptr, i8, i8, %union.anon.2, i32, ptr, %struct._timeout }
%union.anon = type { %struct._dnode }
%struct._dnode = type { %union.anon.0, %union.anon.1 }
%union.anon.0 = type { ptr }
%union.anon.1 = type { ptr }
%union.anon.2 = type { i16 }
%struct._timeout = type { %struct._dnode, ptr, i64 }
%struct._callee_saved = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._wait_q_t = type { %struct._dnode }
%struct._thread_arch = type { i32, i32 }
%struct.k_timer = type { %struct._timeout, %struct._wait_q_t, ptr, ptr, %struct.k_timeout_t, i32, ptr }
%struct.k_timeout_t = type { i64 }
%struct.k_queue = type { %struct._sflist, %struct.k_spinlock, %struct._wait_q_t }
%struct._sflist = type { ptr, ptr }
%struct.k_spinlock = type {}
%struct.k_sem = type { %struct._wait_q_t, i32, i32 }
%struct.k_msgq = type { %struct._wait_q_t, %struct.k_spinlock, i32, i32, ptr, ptr, ptr, ptr, i32, i8 }
%struct.z_spinlock_key = type { i32 }
%struct.sys_bitarray = type { i32, i32, ptr, %struct.k_spinlock }
%struct.bundle_data = type { i32, i32, i32, i32, i32, i32 }

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_k_object_access_grant(ptr noundef %0, ptr noundef %1) #0 !dbg !98 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !221, metadata !DIExpression()), !dbg !223
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !222, metadata !DIExpression()), !dbg !224
  %5 = load ptr, ptr %3, align 4, !dbg !225
  %6 = load ptr, ptr %4, align 4, !dbg !226
  ret void, !dbg !227
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_k_object_release(ptr noundef %0) #0 !dbg !228 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !232, metadata !DIExpression()), !dbg !233
  %3 = load ptr, ptr %2, align 4, !dbg !234
  ret void, !dbg !235
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_impl_k_object_alloc(i8 noundef zeroext %0) #0 !dbg !236 {
  %2 = alloca i8, align 1
  store i8 %0, ptr %2, align 1
  call void @llvm.dbg.declare(metadata ptr %2, metadata !240, metadata !DIExpression()), !dbg !241
  %3 = load i8, ptr %2, align 1, !dbg !242
  ret ptr null, !dbg !243
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_impl_k_object_alloc_size(i8 noundef zeroext %0, i32 noundef %1) #0 !dbg !244 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8 %0, ptr %3, align 1
  call void @llvm.dbg.declare(metadata ptr %3, metadata !248, metadata !DIExpression()), !dbg !250
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !249, metadata !DIExpression()), !dbg !251
  %5 = load i8, ptr %3, align 1, !dbg !252
  %6 = load i32, ptr %4, align 4, !dbg !253
  ret ptr null, !dbg !254
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_thread_timeout_expires_ticks(ptr noundef %0) #0 !dbg !255 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !263, metadata !DIExpression()), !dbg !264
  %3 = load ptr, ptr %2, align 4, !dbg !265
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !266
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !267
  %6 = call i64 @z_timeout_expires(ptr noundef %5) #6, !dbg !268
  ret i64 %6, !dbg !269
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_thread_timeout_remaining_ticks(ptr noundef %0) #0 !dbg !270 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !272, metadata !DIExpression()), !dbg !273
  %3 = load ptr, ptr %2, align 4, !dbg !274
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !275
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !276
  %6 = call i64 @z_timeout_remaining(ptr noundef %5) #6, !dbg !277
  ret i64 %6, !dbg !278
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_timer_expires_ticks(ptr noundef %0) #0 !dbg !279 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !302, metadata !DIExpression()), !dbg !303
  %3 = load ptr, ptr %2, align 4, !dbg !304
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !305
  %5 = call i64 @z_timeout_expires(ptr noundef %4) #6, !dbg !306
  ret i64 %5, !dbg !307
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_timer_remaining_ticks(ptr noundef %0) #0 !dbg !308 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !310, metadata !DIExpression()), !dbg !311
  %3 = load ptr, ptr %2, align 4, !dbg !312
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !313
  %5 = call i64 @z_timeout_remaining(ptr noundef %4) #6, !dbg !314
  ret i64 %5, !dbg !315
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_k_timer_user_data_set(ptr noundef %0, ptr noundef %1) #0 !dbg !316 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !320, metadata !DIExpression()), !dbg !322
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !321, metadata !DIExpression()), !dbg !323
  %5 = load ptr, ptr %4, align 4, !dbg !324
  %6 = load ptr, ptr %3, align 4, !dbg !325
  %7 = getelementptr inbounds %struct.k_timer, ptr %6, i32 0, i32 6, !dbg !326
  store ptr %5, ptr %7, align 4, !dbg !327
  ret void, !dbg !328
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_impl_k_timer_user_data_get(ptr noundef %0) #0 !dbg !329 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !333, metadata !DIExpression()), !dbg !334
  %3 = load ptr, ptr %2, align 4, !dbg !335
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 6, !dbg !336
  %5 = load ptr, ptr %4, align 4, !dbg !336
  ret ptr %5, !dbg !337
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_queue_is_empty(ptr noundef %0) #0 !dbg !338 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !360, metadata !DIExpression()), !dbg !361
  %3 = load ptr, ptr %2, align 4, !dbg !362
  %4 = getelementptr inbounds %struct.k_queue, ptr %3, i32 0, i32 0, !dbg !363
  %5 = call zeroext i1 @sys_sflist_is_empty(ptr noundef %4) #6, !dbg !364
  %6 = zext i1 %5 to i32, !dbg !365
  ret i32 %6, !dbg !366
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_sem_count_get(ptr noundef %0) #0 !dbg !367 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !377, metadata !DIExpression()), !dbg !378
  %3 = load ptr, ptr %2, align 4, !dbg !379
  %4 = getelementptr inbounds %struct.k_sem, ptr %3, i32 0, i32 1, !dbg !380
  %5 = load i32, ptr %4, align 4, !dbg !380
  ret i32 %5, !dbg !381
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_msgq_num_free_get(ptr noundef %0) #0 !dbg !382 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !401, metadata !DIExpression()), !dbg !402
  %3 = load ptr, ptr %2, align 4, !dbg !403
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 3, !dbg !404
  %5 = load i32, ptr %4, align 4, !dbg !404
  %6 = load ptr, ptr %2, align 4, !dbg !405
  %7 = getelementptr inbounds %struct.k_msgq, ptr %6, i32 0, i32 8, !dbg !406
  %8 = load i32, ptr %7, align 4, !dbg !406
  %9 = sub i32 %5, %8, !dbg !407
  ret i32 %9, !dbg !408
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_msgq_num_used_get(ptr noundef %0) #0 !dbg !409 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !411, metadata !DIExpression()), !dbg !412
  %3 = load ptr, ptr %2, align 4, !dbg !413
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 8, !dbg !414
  %5 = load i32, ptr %4, align 4, !dbg !414
  ret i32 %5, !dbg !415
}

; Function Attrs: nounwind optsize
define hidden i32 @sys_bitarray_set_bit(ptr noundef %0, i32 noundef %1) #1 !dbg !416 {
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
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.z_spinlock_key, align 4
  store ptr %0, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !431, metadata !DIExpression()), !dbg !442
  store i32 %1, ptr %12, align 4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !432, metadata !DIExpression()), !dbg !443
  call void @llvm.lifetime.start.p0(i64 4, ptr %13) #7, !dbg !444
  call void @llvm.dbg.declare(metadata ptr %13, metadata !433, metadata !DIExpression()), !dbg !445
  call void @llvm.lifetime.start.p0(i64 4, ptr %14) #7, !dbg !446
  call void @llvm.dbg.declare(metadata ptr %14, metadata !438, metadata !DIExpression()), !dbg !447
  call void @llvm.lifetime.start.p0(i64 4, ptr %15) #7, !dbg !448
  call void @llvm.dbg.declare(metadata ptr %15, metadata !439, metadata !DIExpression()), !dbg !449
  call void @llvm.lifetime.start.p0(i64 4, ptr %16) #7, !dbg !448
  call void @llvm.dbg.declare(metadata ptr %16, metadata !440, metadata !DIExpression()), !dbg !450
  call void @llvm.lifetime.start.p0(i64 4, ptr %17) #7, !dbg !451
  %18 = load ptr, ptr %11, align 4, !dbg !452
  %19 = getelementptr inbounds %struct.sys_bitarray, ptr %18, i32 0, i32 3, !dbg !453
  store ptr %19, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !454, metadata !DIExpression()), !dbg !461
  %20 = load ptr, ptr %10, align 4, !dbg !463
  call void @llvm.dbg.declare(metadata ptr %9, metadata !460, metadata !DIExpression()), !dbg !464
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #7, !dbg !465
  call void @llvm.dbg.declare(metadata ptr %6, metadata !471, metadata !DIExpression()), !dbg !473
  %21 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #7, !dbg !474, !srcloc !475
  store i32 %21, ptr %6, align 4, !dbg !474
  %22 = load i32, ptr %6, align 4, !dbg !476
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #7, !dbg !477
  store i32 %22, ptr %9, align 4, !dbg !478
  %23 = load ptr, ptr %10, align 4, !dbg !479
  store ptr %23, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !480, metadata !DIExpression()), !dbg !485
  %24 = load ptr, ptr %5, align 4, !dbg !487
  %25 = load ptr, ptr %10, align 4, !dbg !488
  store ptr %25, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !489, metadata !DIExpression()), !dbg !492
  %26 = load ptr, ptr %4, align 4, !dbg !494
  %27 = load i32, ptr %9, align 4, !dbg !495
  %28 = getelementptr inbounds %struct.z_spinlock_key, ptr %17, i32 0, i32 0, !dbg !451
  store i32 %27, ptr %28, align 4, !dbg !451
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %13, ptr align 4 %17, i32 4, i1 false), !dbg !451
  call void @llvm.lifetime.end.p0(i64 4, ptr %17) #7, !dbg !451
  %29 = load i32, ptr %12, align 4, !dbg !496
  %30 = load ptr, ptr %11, align 4, !dbg !498
  %31 = getelementptr inbounds %struct.sys_bitarray, ptr %30, i32 0, i32 0, !dbg !499
  %32 = load i32, ptr %31, align 4, !dbg !499
  %33 = icmp uge i32 %29, %32, !dbg !500
  br i1 %33, label %34, label %35, !dbg !501

34:                                               ; preds = %2
  store i32 -5, ptr %14, align 4, !dbg !502
  br label %49, !dbg !504

35:                                               ; preds = %2
  %36 = load i32, ptr %12, align 4, !dbg !505
  %37 = udiv i32 %36, 32, !dbg !506
  store i32 %37, ptr %15, align 4, !dbg !507
  %38 = load i32, ptr %12, align 4, !dbg !508
  %39 = urem i32 %38, 32, !dbg !509
  store i32 %39, ptr %16, align 4, !dbg !510
  %40 = load i32, ptr %16, align 4, !dbg !511
  %41 = shl i32 1, %40, !dbg !512
  %42 = load ptr, ptr %11, align 4, !dbg !513
  %43 = getelementptr inbounds %struct.sys_bitarray, ptr %42, i32 0, i32 2, !dbg !514
  %44 = load ptr, ptr %43, align 4, !dbg !514
  %45 = load i32, ptr %15, align 4, !dbg !515
  %46 = getelementptr inbounds i32, ptr %44, i32 %45, !dbg !513
  %47 = load i32, ptr %46, align 4, !dbg !516
  %48 = or i32 %47, %41, !dbg !516
  store i32 %48, ptr %46, align 4, !dbg !516
  store i32 0, ptr %14, align 4, !dbg !517
  br label %49, !dbg !518

49:                                               ; preds = %35, %34
  call void @llvm.dbg.label(metadata !441), !dbg !519
  %50 = load ptr, ptr %11, align 4, !dbg !520
  %51 = getelementptr inbounds %struct.sys_bitarray, ptr %50, i32 0, i32 3, !dbg !521
  %52 = getelementptr inbounds %struct.z_spinlock_key, ptr %13, i32 0, i32 0, !dbg !522
  %53 = load [1 x i32], ptr %52, align 4, !dbg !522
  store [1 x i32] %53, ptr %7, align 4
  store ptr %51, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !523, metadata !DIExpression()), !dbg !529
  call void @llvm.dbg.declare(metadata ptr %7, metadata !528, metadata !DIExpression()), !dbg !531
  %54 = load ptr, ptr %8, align 4, !dbg !532
  %55 = load i32, ptr %7, align 4, !dbg !533
  store i32 %55, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !534, metadata !DIExpression()), !dbg !539
  %56 = load i32, ptr %3, align 4, !dbg !541
  %57 = icmp ne i32 %56, 0, !dbg !543
  br i1 %57, label %58, label %59, !dbg !544

58:                                               ; preds = %49
  br label %arch_irq_unlock.exit, !dbg !545

59:                                               ; preds = %49
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #7, !dbg !547, !srcloc !548
  br label %arch_irq_unlock.exit, !dbg !549

arch_irq_unlock.exit:                             ; preds = %58, %59
  %60 = load i32, ptr %14, align 4, !dbg !550
  call void @llvm.lifetime.end.p0(i64 4, ptr %16) #7, !dbg !551
  call void @llvm.lifetime.end.p0(i64 4, ptr %15) #7, !dbg !551
  call void @llvm.lifetime.end.p0(i64 4, ptr %14) #7, !dbg !551
  call void @llvm.lifetime.end.p0(i64 4, ptr %13) #7, !dbg !551
  ret i32 %60, !dbg !552
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #2

; Function Attrs: nounwind optsize
define hidden i32 @sys_bitarray_clear_bit(ptr noundef %0, i32 noundef %1) #1 !dbg !553 {
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
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.z_spinlock_key, align 4
  store ptr %0, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !555, metadata !DIExpression()), !dbg !562
  store i32 %1, ptr %12, align 4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !556, metadata !DIExpression()), !dbg !563
  call void @llvm.lifetime.start.p0(i64 4, ptr %13) #7, !dbg !564
  call void @llvm.dbg.declare(metadata ptr %13, metadata !557, metadata !DIExpression()), !dbg !565
  call void @llvm.lifetime.start.p0(i64 4, ptr %14) #7, !dbg !566
  call void @llvm.dbg.declare(metadata ptr %14, metadata !558, metadata !DIExpression()), !dbg !567
  call void @llvm.lifetime.start.p0(i64 4, ptr %15) #7, !dbg !568
  call void @llvm.dbg.declare(metadata ptr %15, metadata !559, metadata !DIExpression()), !dbg !569
  call void @llvm.lifetime.start.p0(i64 4, ptr %16) #7, !dbg !568
  call void @llvm.dbg.declare(metadata ptr %16, metadata !560, metadata !DIExpression()), !dbg !570
  call void @llvm.lifetime.start.p0(i64 4, ptr %17) #7, !dbg !571
  %18 = load ptr, ptr %11, align 4, !dbg !572
  %19 = getelementptr inbounds %struct.sys_bitarray, ptr %18, i32 0, i32 3, !dbg !573
  store ptr %19, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !454, metadata !DIExpression()), !dbg !574
  %20 = load ptr, ptr %10, align 4, !dbg !576
  call void @llvm.dbg.declare(metadata ptr %9, metadata !460, metadata !DIExpression()), !dbg !577
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #7, !dbg !578
  call void @llvm.dbg.declare(metadata ptr %6, metadata !471, metadata !DIExpression()), !dbg !580
  %21 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #7, !dbg !581, !srcloc !475
  store i32 %21, ptr %6, align 4, !dbg !581
  %22 = load i32, ptr %6, align 4, !dbg !582
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #7, !dbg !583
  store i32 %22, ptr %9, align 4, !dbg !584
  %23 = load ptr, ptr %10, align 4, !dbg !585
  store ptr %23, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !480, metadata !DIExpression()), !dbg !586
  %24 = load ptr, ptr %5, align 4, !dbg !588
  %25 = load ptr, ptr %10, align 4, !dbg !589
  store ptr %25, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !489, metadata !DIExpression()), !dbg !590
  %26 = load ptr, ptr %4, align 4, !dbg !592
  %27 = load i32, ptr %9, align 4, !dbg !593
  %28 = getelementptr inbounds %struct.z_spinlock_key, ptr %17, i32 0, i32 0, !dbg !571
  store i32 %27, ptr %28, align 4, !dbg !571
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %13, ptr align 4 %17, i32 4, i1 false), !dbg !571
  call void @llvm.lifetime.end.p0(i64 4, ptr %17) #7, !dbg !571
  %29 = load i32, ptr %12, align 4, !dbg !594
  %30 = load ptr, ptr %11, align 4, !dbg !596
  %31 = getelementptr inbounds %struct.sys_bitarray, ptr %30, i32 0, i32 0, !dbg !597
  %32 = load i32, ptr %31, align 4, !dbg !597
  %33 = icmp uge i32 %29, %32, !dbg !598
  br i1 %33, label %34, label %35, !dbg !599

34:                                               ; preds = %2
  store i32 -5, ptr %14, align 4, !dbg !600
  br label %50, !dbg !602

35:                                               ; preds = %2
  %36 = load i32, ptr %12, align 4, !dbg !603
  %37 = udiv i32 %36, 32, !dbg !604
  store i32 %37, ptr %15, align 4, !dbg !605
  %38 = load i32, ptr %12, align 4, !dbg !606
  %39 = urem i32 %38, 32, !dbg !607
  store i32 %39, ptr %16, align 4, !dbg !608
  %40 = load i32, ptr %16, align 4, !dbg !609
  %41 = shl i32 1, %40, !dbg !610
  %42 = xor i32 %41, -1, !dbg !611
  %43 = load ptr, ptr %11, align 4, !dbg !612
  %44 = getelementptr inbounds %struct.sys_bitarray, ptr %43, i32 0, i32 2, !dbg !613
  %45 = load ptr, ptr %44, align 4, !dbg !613
  %46 = load i32, ptr %15, align 4, !dbg !614
  %47 = getelementptr inbounds i32, ptr %45, i32 %46, !dbg !612
  %48 = load i32, ptr %47, align 4, !dbg !615
  %49 = and i32 %48, %42, !dbg !615
  store i32 %49, ptr %47, align 4, !dbg !615
  store i32 0, ptr %14, align 4, !dbg !616
  br label %50, !dbg !617

50:                                               ; preds = %35, %34
  call void @llvm.dbg.label(metadata !561), !dbg !618
  %51 = load ptr, ptr %11, align 4, !dbg !619
  %52 = getelementptr inbounds %struct.sys_bitarray, ptr %51, i32 0, i32 3, !dbg !620
  %53 = getelementptr inbounds %struct.z_spinlock_key, ptr %13, i32 0, i32 0, !dbg !621
  %54 = load [1 x i32], ptr %53, align 4, !dbg !621
  store [1 x i32] %54, ptr %7, align 4
  store ptr %52, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !523, metadata !DIExpression()), !dbg !622
  call void @llvm.dbg.declare(metadata ptr %7, metadata !528, metadata !DIExpression()), !dbg !624
  %55 = load ptr, ptr %8, align 4, !dbg !625
  %56 = load i32, ptr %7, align 4, !dbg !626
  store i32 %56, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !534, metadata !DIExpression()), !dbg !627
  %57 = load i32, ptr %3, align 4, !dbg !629
  %58 = icmp ne i32 %57, 0, !dbg !630
  br i1 %58, label %59, label %60, !dbg !631

59:                                               ; preds = %50
  br label %arch_irq_unlock.exit, !dbg !632

60:                                               ; preds = %50
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #7, !dbg !633, !srcloc !548
  br label %arch_irq_unlock.exit, !dbg !634

arch_irq_unlock.exit:                             ; preds = %59, %60
  %61 = load i32, ptr %14, align 4, !dbg !635
  call void @llvm.lifetime.end.p0(i64 4, ptr %16) #7, !dbg !636
  call void @llvm.lifetime.end.p0(i64 4, ptr %15) #7, !dbg !636
  call void @llvm.lifetime.end.p0(i64 4, ptr %14) #7, !dbg !636
  call void @llvm.lifetime.end.p0(i64 4, ptr %13) #7, !dbg !636
  ret i32 %61, !dbg !637
}

; Function Attrs: nounwind optsize
define hidden i32 @sys_bitarray_test_bit(ptr noundef %0, i32 noundef %1, ptr noundef %2) #1 !dbg !638 {
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
  %14 = alloca ptr, align 4
  %15 = alloca %struct.z_spinlock_key, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.z_spinlock_key, align 4
  store ptr %0, ptr %12, align 4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !643, metadata !DIExpression()), !dbg !651
  store i32 %1, ptr %13, align 4
  call void @llvm.dbg.declare(metadata ptr %13, metadata !644, metadata !DIExpression()), !dbg !652
  store ptr %2, ptr %14, align 4
  call void @llvm.dbg.declare(metadata ptr %14, metadata !645, metadata !DIExpression()), !dbg !653
  call void @llvm.lifetime.start.p0(i64 4, ptr %15) #7, !dbg !654
  call void @llvm.dbg.declare(metadata ptr %15, metadata !646, metadata !DIExpression()), !dbg !655
  call void @llvm.lifetime.start.p0(i64 4, ptr %16) #7, !dbg !656
  call void @llvm.dbg.declare(metadata ptr %16, metadata !647, metadata !DIExpression()), !dbg !657
  call void @llvm.lifetime.start.p0(i64 4, ptr %17) #7, !dbg !658
  call void @llvm.dbg.declare(metadata ptr %17, metadata !648, metadata !DIExpression()), !dbg !659
  call void @llvm.lifetime.start.p0(i64 4, ptr %18) #7, !dbg !658
  call void @llvm.dbg.declare(metadata ptr %18, metadata !649, metadata !DIExpression()), !dbg !660
  call void @llvm.lifetime.start.p0(i64 4, ptr %19) #7, !dbg !661
  %20 = load ptr, ptr %12, align 4, !dbg !662
  %21 = getelementptr inbounds %struct.sys_bitarray, ptr %20, i32 0, i32 3, !dbg !663
  store ptr %21, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !454, metadata !DIExpression()), !dbg !664
  %22 = load ptr, ptr %11, align 4, !dbg !666
  call void @llvm.dbg.declare(metadata ptr %10, metadata !460, metadata !DIExpression()), !dbg !667
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #7, !dbg !668
  call void @llvm.dbg.declare(metadata ptr %7, metadata !471, metadata !DIExpression()), !dbg !670
  %23 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #7, !dbg !671, !srcloc !475
  store i32 %23, ptr %7, align 4, !dbg !671
  %24 = load i32, ptr %7, align 4, !dbg !672
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #7, !dbg !673
  store i32 %24, ptr %10, align 4, !dbg !674
  %25 = load ptr, ptr %11, align 4, !dbg !675
  store ptr %25, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !480, metadata !DIExpression()), !dbg !676
  %26 = load ptr, ptr %6, align 4, !dbg !678
  %27 = load ptr, ptr %11, align 4, !dbg !679
  store ptr %27, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !489, metadata !DIExpression()), !dbg !680
  %28 = load ptr, ptr %5, align 4, !dbg !682
  %29 = load i32, ptr %10, align 4, !dbg !683
  %30 = getelementptr inbounds %struct.z_spinlock_key, ptr %19, i32 0, i32 0, !dbg !661
  store i32 %29, ptr %30, align 4, !dbg !661
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %15, ptr align 4 %19, i32 4, i1 false), !dbg !661
  call void @llvm.lifetime.end.p0(i64 4, ptr %19) #7, !dbg !661
  %31 = load ptr, ptr %14, align 4, !dbg !684
  %32 = icmp eq ptr %31, null, !dbg !686
  br i1 %32, label %33, label %34, !dbg !687

33:                                               ; preds = %3
  store i32 -5, ptr %16, align 4, !dbg !688
  br label %61, !dbg !690

34:                                               ; preds = %3
  %35 = load i32, ptr %13, align 4, !dbg !691
  %36 = load ptr, ptr %12, align 4, !dbg !693
  %37 = getelementptr inbounds %struct.sys_bitarray, ptr %36, i32 0, i32 0, !dbg !694
  %38 = load i32, ptr %37, align 4, !dbg !694
  %39 = icmp uge i32 %35, %38, !dbg !695
  br i1 %39, label %40, label %41, !dbg !696

40:                                               ; preds = %34
  store i32 -5, ptr %16, align 4, !dbg !697
  br label %61, !dbg !699

41:                                               ; preds = %34
  %42 = load i32, ptr %13, align 4, !dbg !700
  %43 = udiv i32 %42, 32, !dbg !701
  store i32 %43, ptr %17, align 4, !dbg !702
  %44 = load i32, ptr %13, align 4, !dbg !703
  %45 = urem i32 %44, 32, !dbg !704
  store i32 %45, ptr %18, align 4, !dbg !705
  %46 = load ptr, ptr %12, align 4, !dbg !706
  %47 = getelementptr inbounds %struct.sys_bitarray, ptr %46, i32 0, i32 2, !dbg !708
  %48 = load ptr, ptr %47, align 4, !dbg !708
  %49 = load i32, ptr %17, align 4, !dbg !709
  %50 = getelementptr inbounds i32, ptr %48, i32 %49, !dbg !706
  %51 = load i32, ptr %50, align 4, !dbg !706
  %52 = load i32, ptr %18, align 4, !dbg !710
  %53 = shl i32 1, %52, !dbg !711
  %54 = and i32 %51, %53, !dbg !712
  %55 = icmp ne i32 %54, 0, !dbg !713
  br i1 %55, label %56, label %58, !dbg !714

56:                                               ; preds = %41
  %57 = load ptr, ptr %14, align 4, !dbg !715
  store i32 1, ptr %57, align 4, !dbg !717
  br label %60, !dbg !718

58:                                               ; preds = %41
  %59 = load ptr, ptr %14, align 4, !dbg !719
  store i32 0, ptr %59, align 4, !dbg !721
  br label %60

60:                                               ; preds = %58, %56
  store i32 0, ptr %16, align 4, !dbg !722
  br label %61, !dbg !723

61:                                               ; preds = %60, %40, %33
  call void @llvm.dbg.label(metadata !650), !dbg !724
  %62 = load ptr, ptr %12, align 4, !dbg !725
  %63 = getelementptr inbounds %struct.sys_bitarray, ptr %62, i32 0, i32 3, !dbg !726
  %64 = getelementptr inbounds %struct.z_spinlock_key, ptr %15, i32 0, i32 0, !dbg !727
  %65 = load [1 x i32], ptr %64, align 4, !dbg !727
  store [1 x i32] %65, ptr %8, align 4
  store ptr %63, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !523, metadata !DIExpression()), !dbg !728
  call void @llvm.dbg.declare(metadata ptr %8, metadata !528, metadata !DIExpression()), !dbg !730
  %66 = load ptr, ptr %9, align 4, !dbg !731
  %67 = load i32, ptr %8, align 4, !dbg !732
  store i32 %67, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !534, metadata !DIExpression()), !dbg !733
  %68 = load i32, ptr %4, align 4, !dbg !735
  %69 = icmp ne i32 %68, 0, !dbg !736
  br i1 %69, label %70, label %71, !dbg !737

70:                                               ; preds = %61
  br label %arch_irq_unlock.exit, !dbg !738

71:                                               ; preds = %61
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #7, !dbg !739, !srcloc !548
  br label %arch_irq_unlock.exit, !dbg !740

arch_irq_unlock.exit:                             ; preds = %70, %71
  %72 = load i32, ptr %16, align 4, !dbg !741
  call void @llvm.lifetime.end.p0(i64 4, ptr %18) #7, !dbg !742
  call void @llvm.lifetime.end.p0(i64 4, ptr %17) #7, !dbg !742
  call void @llvm.lifetime.end.p0(i64 4, ptr %16) #7, !dbg !742
  call void @llvm.lifetime.end.p0(i64 4, ptr %15) #7, !dbg !742
  ret i32 %72, !dbg !743
}

; Function Attrs: nounwind optsize
define hidden i32 @sys_bitarray_test_and_set_bit(ptr noundef %0, i32 noundef %1, ptr noundef %2) #1 !dbg !744 {
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
  %14 = alloca ptr, align 4
  %15 = alloca %struct.z_spinlock_key, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.z_spinlock_key, align 4
  store ptr %0, ptr %12, align 4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !746, metadata !DIExpression()), !dbg !754
  store i32 %1, ptr %13, align 4
  call void @llvm.dbg.declare(metadata ptr %13, metadata !747, metadata !DIExpression()), !dbg !755
  store ptr %2, ptr %14, align 4
  call void @llvm.dbg.declare(metadata ptr %14, metadata !748, metadata !DIExpression()), !dbg !756
  call void @llvm.lifetime.start.p0(i64 4, ptr %15) #7, !dbg !757
  call void @llvm.dbg.declare(metadata ptr %15, metadata !749, metadata !DIExpression()), !dbg !758
  call void @llvm.lifetime.start.p0(i64 4, ptr %16) #7, !dbg !759
  call void @llvm.dbg.declare(metadata ptr %16, metadata !750, metadata !DIExpression()), !dbg !760
  call void @llvm.lifetime.start.p0(i64 4, ptr %17) #7, !dbg !761
  call void @llvm.dbg.declare(metadata ptr %17, metadata !751, metadata !DIExpression()), !dbg !762
  call void @llvm.lifetime.start.p0(i64 4, ptr %18) #7, !dbg !761
  call void @llvm.dbg.declare(metadata ptr %18, metadata !752, metadata !DIExpression()), !dbg !763
  call void @llvm.lifetime.start.p0(i64 4, ptr %19) #7, !dbg !764
  %20 = load ptr, ptr %12, align 4, !dbg !765
  %21 = getelementptr inbounds %struct.sys_bitarray, ptr %20, i32 0, i32 3, !dbg !766
  store ptr %21, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !454, metadata !DIExpression()), !dbg !767
  %22 = load ptr, ptr %11, align 4, !dbg !769
  call void @llvm.dbg.declare(metadata ptr %10, metadata !460, metadata !DIExpression()), !dbg !770
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #7, !dbg !771
  call void @llvm.dbg.declare(metadata ptr %7, metadata !471, metadata !DIExpression()), !dbg !773
  %23 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #7, !dbg !774, !srcloc !475
  store i32 %23, ptr %7, align 4, !dbg !774
  %24 = load i32, ptr %7, align 4, !dbg !775
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #7, !dbg !776
  store i32 %24, ptr %10, align 4, !dbg !777
  %25 = load ptr, ptr %11, align 4, !dbg !778
  store ptr %25, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !480, metadata !DIExpression()), !dbg !779
  %26 = load ptr, ptr %6, align 4, !dbg !781
  %27 = load ptr, ptr %11, align 4, !dbg !782
  store ptr %27, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !489, metadata !DIExpression()), !dbg !783
  %28 = load ptr, ptr %5, align 4, !dbg !785
  %29 = load i32, ptr %10, align 4, !dbg !786
  %30 = getelementptr inbounds %struct.z_spinlock_key, ptr %19, i32 0, i32 0, !dbg !764
  store i32 %29, ptr %30, align 4, !dbg !764
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %15, ptr align 4 %19, i32 4, i1 false), !dbg !764
  call void @llvm.lifetime.end.p0(i64 4, ptr %19) #7, !dbg !764
  %31 = load ptr, ptr %14, align 4, !dbg !787
  %32 = icmp eq ptr %31, null, !dbg !789
  br i1 %32, label %33, label %34, !dbg !790

33:                                               ; preds = %3
  store i32 -5, ptr %16, align 4, !dbg !791
  br label %70, !dbg !793

34:                                               ; preds = %3
  %35 = load i32, ptr %13, align 4, !dbg !794
  %36 = load ptr, ptr %12, align 4, !dbg !796
  %37 = getelementptr inbounds %struct.sys_bitarray, ptr %36, i32 0, i32 0, !dbg !797
  %38 = load i32, ptr %37, align 4, !dbg !797
  %39 = icmp uge i32 %35, %38, !dbg !798
  br i1 %39, label %40, label %41, !dbg !799

40:                                               ; preds = %34
  store i32 -5, ptr %16, align 4, !dbg !800
  br label %70, !dbg !802

41:                                               ; preds = %34
  %42 = load i32, ptr %13, align 4, !dbg !803
  %43 = udiv i32 %42, 32, !dbg !804
  store i32 %43, ptr %17, align 4, !dbg !805
  %44 = load i32, ptr %13, align 4, !dbg !806
  %45 = urem i32 %44, 32, !dbg !807
  store i32 %45, ptr %18, align 4, !dbg !808
  %46 = load ptr, ptr %12, align 4, !dbg !809
  %47 = getelementptr inbounds %struct.sys_bitarray, ptr %46, i32 0, i32 2, !dbg !811
  %48 = load ptr, ptr %47, align 4, !dbg !811
  %49 = load i32, ptr %17, align 4, !dbg !812
  %50 = getelementptr inbounds i32, ptr %48, i32 %49, !dbg !809
  %51 = load i32, ptr %50, align 4, !dbg !809
  %52 = load i32, ptr %18, align 4, !dbg !813
  %53 = shl i32 1, %52, !dbg !814
  %54 = and i32 %51, %53, !dbg !815
  %55 = icmp ne i32 %54, 0, !dbg !816
  br i1 %55, label %56, label %58, !dbg !817

56:                                               ; preds = %41
  %57 = load ptr, ptr %14, align 4, !dbg !818
  store i32 1, ptr %57, align 4, !dbg !820
  br label %60, !dbg !821

58:                                               ; preds = %41
  %59 = load ptr, ptr %14, align 4, !dbg !822
  store i32 0, ptr %59, align 4, !dbg !824
  br label %60

60:                                               ; preds = %58, %56
  %61 = load i32, ptr %18, align 4, !dbg !825
  %62 = shl i32 1, %61, !dbg !826
  %63 = load ptr, ptr %12, align 4, !dbg !827
  %64 = getelementptr inbounds %struct.sys_bitarray, ptr %63, i32 0, i32 2, !dbg !828
  %65 = load ptr, ptr %64, align 4, !dbg !828
  %66 = load i32, ptr %17, align 4, !dbg !829
  %67 = getelementptr inbounds i32, ptr %65, i32 %66, !dbg !827
  %68 = load i32, ptr %67, align 4, !dbg !830
  %69 = or i32 %68, %62, !dbg !830
  store i32 %69, ptr %67, align 4, !dbg !830
  store i32 0, ptr %16, align 4, !dbg !831
  br label %70, !dbg !832

70:                                               ; preds = %60, %40, %33
  call void @llvm.dbg.label(metadata !753), !dbg !833
  %71 = load ptr, ptr %12, align 4, !dbg !834
  %72 = getelementptr inbounds %struct.sys_bitarray, ptr %71, i32 0, i32 3, !dbg !835
  %73 = getelementptr inbounds %struct.z_spinlock_key, ptr %15, i32 0, i32 0, !dbg !836
  %74 = load [1 x i32], ptr %73, align 4, !dbg !836
  store [1 x i32] %74, ptr %8, align 4
  store ptr %72, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !523, metadata !DIExpression()), !dbg !837
  call void @llvm.dbg.declare(metadata ptr %8, metadata !528, metadata !DIExpression()), !dbg !839
  %75 = load ptr, ptr %9, align 4, !dbg !840
  %76 = load i32, ptr %8, align 4, !dbg !841
  store i32 %76, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !534, metadata !DIExpression()), !dbg !842
  %77 = load i32, ptr %4, align 4, !dbg !844
  %78 = icmp ne i32 %77, 0, !dbg !845
  br i1 %78, label %79, label %80, !dbg !846

79:                                               ; preds = %70
  br label %arch_irq_unlock.exit, !dbg !847

80:                                               ; preds = %70
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #7, !dbg !848, !srcloc !548
  br label %arch_irq_unlock.exit, !dbg !849

arch_irq_unlock.exit:                             ; preds = %79, %80
  %81 = load i32, ptr %16, align 4, !dbg !850
  call void @llvm.lifetime.end.p0(i64 4, ptr %18) #7, !dbg !851
  call void @llvm.lifetime.end.p0(i64 4, ptr %17) #7, !dbg !851
  call void @llvm.lifetime.end.p0(i64 4, ptr %16) #7, !dbg !851
  call void @llvm.lifetime.end.p0(i64 4, ptr %15) #7, !dbg !851
  ret i32 %81, !dbg !852
}

; Function Attrs: nounwind optsize
define hidden i32 @sys_bitarray_test_and_clear_bit(ptr noundef %0, i32 noundef %1, ptr noundef %2) #1 !dbg !853 {
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
  %14 = alloca ptr, align 4
  %15 = alloca %struct.z_spinlock_key, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.z_spinlock_key, align 4
  store ptr %0, ptr %12, align 4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !855, metadata !DIExpression()), !dbg !863
  store i32 %1, ptr %13, align 4
  call void @llvm.dbg.declare(metadata ptr %13, metadata !856, metadata !DIExpression()), !dbg !864
  store ptr %2, ptr %14, align 4
  call void @llvm.dbg.declare(metadata ptr %14, metadata !857, metadata !DIExpression()), !dbg !865
  call void @llvm.lifetime.start.p0(i64 4, ptr %15) #7, !dbg !866
  call void @llvm.dbg.declare(metadata ptr %15, metadata !858, metadata !DIExpression()), !dbg !867
  call void @llvm.lifetime.start.p0(i64 4, ptr %16) #7, !dbg !868
  call void @llvm.dbg.declare(metadata ptr %16, metadata !859, metadata !DIExpression()), !dbg !869
  call void @llvm.lifetime.start.p0(i64 4, ptr %17) #7, !dbg !870
  call void @llvm.dbg.declare(metadata ptr %17, metadata !860, metadata !DIExpression()), !dbg !871
  call void @llvm.lifetime.start.p0(i64 4, ptr %18) #7, !dbg !870
  call void @llvm.dbg.declare(metadata ptr %18, metadata !861, metadata !DIExpression()), !dbg !872
  call void @llvm.lifetime.start.p0(i64 4, ptr %19) #7, !dbg !873
  %20 = load ptr, ptr %12, align 4, !dbg !874
  %21 = getelementptr inbounds %struct.sys_bitarray, ptr %20, i32 0, i32 3, !dbg !875
  store ptr %21, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !454, metadata !DIExpression()), !dbg !876
  %22 = load ptr, ptr %11, align 4, !dbg !878
  call void @llvm.dbg.declare(metadata ptr %10, metadata !460, metadata !DIExpression()), !dbg !879
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #7, !dbg !880
  call void @llvm.dbg.declare(metadata ptr %7, metadata !471, metadata !DIExpression()), !dbg !882
  %23 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #7, !dbg !883, !srcloc !475
  store i32 %23, ptr %7, align 4, !dbg !883
  %24 = load i32, ptr %7, align 4, !dbg !884
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #7, !dbg !885
  store i32 %24, ptr %10, align 4, !dbg !886
  %25 = load ptr, ptr %11, align 4, !dbg !887
  store ptr %25, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !480, metadata !DIExpression()), !dbg !888
  %26 = load ptr, ptr %6, align 4, !dbg !890
  %27 = load ptr, ptr %11, align 4, !dbg !891
  store ptr %27, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !489, metadata !DIExpression()), !dbg !892
  %28 = load ptr, ptr %5, align 4, !dbg !894
  %29 = load i32, ptr %10, align 4, !dbg !895
  %30 = getelementptr inbounds %struct.z_spinlock_key, ptr %19, i32 0, i32 0, !dbg !873
  store i32 %29, ptr %30, align 4, !dbg !873
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %15, ptr align 4 %19, i32 4, i1 false), !dbg !873
  call void @llvm.lifetime.end.p0(i64 4, ptr %19) #7, !dbg !873
  %31 = load ptr, ptr %14, align 4, !dbg !896
  %32 = icmp eq ptr %31, null, !dbg !898
  br i1 %32, label %33, label %34, !dbg !899

33:                                               ; preds = %3
  store i32 -5, ptr %16, align 4, !dbg !900
  br label %71, !dbg !902

34:                                               ; preds = %3
  %35 = load i32, ptr %13, align 4, !dbg !903
  %36 = load ptr, ptr %12, align 4, !dbg !905
  %37 = getelementptr inbounds %struct.sys_bitarray, ptr %36, i32 0, i32 0, !dbg !906
  %38 = load i32, ptr %37, align 4, !dbg !906
  %39 = icmp uge i32 %35, %38, !dbg !907
  br i1 %39, label %40, label %41, !dbg !908

40:                                               ; preds = %34
  store i32 -5, ptr %16, align 4, !dbg !909
  br label %71, !dbg !911

41:                                               ; preds = %34
  %42 = load i32, ptr %13, align 4, !dbg !912
  %43 = udiv i32 %42, 32, !dbg !913
  store i32 %43, ptr %17, align 4, !dbg !914
  %44 = load i32, ptr %13, align 4, !dbg !915
  %45 = urem i32 %44, 32, !dbg !916
  store i32 %45, ptr %18, align 4, !dbg !917
  %46 = load ptr, ptr %12, align 4, !dbg !918
  %47 = getelementptr inbounds %struct.sys_bitarray, ptr %46, i32 0, i32 2, !dbg !920
  %48 = load ptr, ptr %47, align 4, !dbg !920
  %49 = load i32, ptr %17, align 4, !dbg !921
  %50 = getelementptr inbounds i32, ptr %48, i32 %49, !dbg !918
  %51 = load i32, ptr %50, align 4, !dbg !918
  %52 = load i32, ptr %18, align 4, !dbg !922
  %53 = shl i32 1, %52, !dbg !923
  %54 = and i32 %51, %53, !dbg !924
  %55 = icmp ne i32 %54, 0, !dbg !925
  br i1 %55, label %56, label %58, !dbg !926

56:                                               ; preds = %41
  %57 = load ptr, ptr %14, align 4, !dbg !927
  store i32 1, ptr %57, align 4, !dbg !929
  br label %60, !dbg !930

58:                                               ; preds = %41
  %59 = load ptr, ptr %14, align 4, !dbg !931
  store i32 0, ptr %59, align 4, !dbg !933
  br label %60

60:                                               ; preds = %58, %56
  %61 = load i32, ptr %18, align 4, !dbg !934
  %62 = shl i32 1, %61, !dbg !935
  %63 = xor i32 %62, -1, !dbg !936
  %64 = load ptr, ptr %12, align 4, !dbg !937
  %65 = getelementptr inbounds %struct.sys_bitarray, ptr %64, i32 0, i32 2, !dbg !938
  %66 = load ptr, ptr %65, align 4, !dbg !938
  %67 = load i32, ptr %17, align 4, !dbg !939
  %68 = getelementptr inbounds i32, ptr %66, i32 %67, !dbg !937
  %69 = load i32, ptr %68, align 4, !dbg !940
  %70 = and i32 %69, %63, !dbg !940
  store i32 %70, ptr %68, align 4, !dbg !940
  store i32 0, ptr %16, align 4, !dbg !941
  br label %71, !dbg !942

71:                                               ; preds = %60, %40, %33
  call void @llvm.dbg.label(metadata !862), !dbg !943
  %72 = load ptr, ptr %12, align 4, !dbg !944
  %73 = getelementptr inbounds %struct.sys_bitarray, ptr %72, i32 0, i32 3, !dbg !945
  %74 = getelementptr inbounds %struct.z_spinlock_key, ptr %15, i32 0, i32 0, !dbg !946
  %75 = load [1 x i32], ptr %74, align 4, !dbg !946
  store [1 x i32] %75, ptr %8, align 4
  store ptr %73, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !523, metadata !DIExpression()), !dbg !947
  call void @llvm.dbg.declare(metadata ptr %8, metadata !528, metadata !DIExpression()), !dbg !949
  %76 = load ptr, ptr %9, align 4, !dbg !950
  %77 = load i32, ptr %8, align 4, !dbg !951
  store i32 %77, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !534, metadata !DIExpression()), !dbg !952
  %78 = load i32, ptr %4, align 4, !dbg !954
  %79 = icmp ne i32 %78, 0, !dbg !955
  br i1 %79, label %80, label %81, !dbg !956

80:                                               ; preds = %71
  br label %arch_irq_unlock.exit, !dbg !957

81:                                               ; preds = %71
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #7, !dbg !958, !srcloc !548
  br label %arch_irq_unlock.exit, !dbg !959

arch_irq_unlock.exit:                             ; preds = %80, %81
  %82 = load i32, ptr %16, align 4, !dbg !960
  call void @llvm.lifetime.end.p0(i64 4, ptr %18) #7, !dbg !961
  call void @llvm.lifetime.end.p0(i64 4, ptr %17) #7, !dbg !961
  call void @llvm.lifetime.end.p0(i64 4, ptr %16) #7, !dbg !961
  call void @llvm.lifetime.end.p0(i64 4, ptr %15) #7, !dbg !961
  ret i32 %82, !dbg !962
}

; Function Attrs: nounwind optsize
define hidden i32 @sys_bitarray_alloc(ptr noundef %0, i32 noundef %1, ptr noundef %2) #1 !dbg !963 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.z_spinlock_key, align 4
  %10 = alloca ptr, align 4
  %11 = alloca %struct.z_spinlock_key, align 4
  %12 = alloca ptr, align 4
  %13 = alloca ptr, align 4
  %14 = alloca i32, align 4
  %15 = alloca ptr, align 4
  %16 = alloca %struct.z_spinlock_key, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.bundle_data, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.z_spinlock_key, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store ptr %0, ptr %13, align 4
  call void @llvm.dbg.declare(metadata ptr %13, metadata !968, metadata !DIExpression()), !dbg !989
  store i32 %1, ptr %14, align 4
  call void @llvm.dbg.declare(metadata ptr %14, metadata !969, metadata !DIExpression()), !dbg !990
  store ptr %2, ptr %15, align 4
  call void @llvm.dbg.declare(metadata ptr %15, metadata !970, metadata !DIExpression()), !dbg !991
  call void @llvm.lifetime.start.p0(i64 4, ptr %16) #7, !dbg !992
  call void @llvm.dbg.declare(metadata ptr %16, metadata !971, metadata !DIExpression()), !dbg !993
  call void @llvm.lifetime.start.p0(i64 4, ptr %17) #7, !dbg !994
  call void @llvm.dbg.declare(metadata ptr %17, metadata !972, metadata !DIExpression()), !dbg !995
  call void @llvm.lifetime.start.p0(i64 4, ptr %18) #7, !dbg !996
  call void @llvm.dbg.declare(metadata ptr %18, metadata !973, metadata !DIExpression()), !dbg !997
  call void @llvm.lifetime.start.p0(i64 24, ptr %19) #7, !dbg !998
  call void @llvm.dbg.declare(metadata ptr %19, metadata !974, metadata !DIExpression()), !dbg !999
  call void @llvm.lifetime.start.p0(i64 4, ptr %20) #7, !dbg !1000
  call void @llvm.dbg.declare(metadata ptr %20, metadata !983, metadata !DIExpression()), !dbg !1001
  call void @llvm.lifetime.start.p0(i64 4, ptr %21) #7, !dbg !1000
  call void @llvm.dbg.declare(metadata ptr %21, metadata !984, metadata !DIExpression()), !dbg !1002
  call void @llvm.lifetime.start.p0(i64 4, ptr %22) #7, !dbg !1003
  call void @llvm.dbg.declare(metadata ptr %22, metadata !985, metadata !DIExpression()), !dbg !1004
  call void @llvm.lifetime.start.p0(i64 4, ptr %23) #7, !dbg !1005
  %26 = load ptr, ptr %13, align 4, !dbg !1006
  %27 = getelementptr inbounds %struct.sys_bitarray, ptr %26, i32 0, i32 3, !dbg !1007
  store ptr %27, ptr %12, align 4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !454, metadata !DIExpression()), !dbg !1008
  %28 = load ptr, ptr %12, align 4, !dbg !1010
  call void @llvm.dbg.declare(metadata ptr %11, metadata !460, metadata !DIExpression()), !dbg !1011
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #7, !dbg !1012
  call void @llvm.dbg.declare(metadata ptr %7, metadata !471, metadata !DIExpression()), !dbg !1014
  %29 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #7, !dbg !1015, !srcloc !475
  store i32 %29, ptr %7, align 4, !dbg !1015
  %30 = load i32, ptr %7, align 4, !dbg !1016
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #7, !dbg !1017
  store i32 %30, ptr %11, align 4, !dbg !1018
  %31 = load ptr, ptr %12, align 4, !dbg !1019
  store ptr %31, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !480, metadata !DIExpression()), !dbg !1020
  %32 = load ptr, ptr %6, align 4, !dbg !1022
  %33 = load ptr, ptr %12, align 4, !dbg !1023
  store ptr %33, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !489, metadata !DIExpression()), !dbg !1024
  %34 = load ptr, ptr %5, align 4, !dbg !1026
  %35 = load i32, ptr %11, align 4, !dbg !1027
  %36 = getelementptr inbounds %struct.z_spinlock_key, ptr %23, i32 0, i32 0, !dbg !1005
  store i32 %35, ptr %36, align 4, !dbg !1005
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %16, ptr align 4 %23, i32 4, i1 false), !dbg !1005
  call void @llvm.lifetime.end.p0(i64 4, ptr %23) #7, !dbg !1005
  %37 = load ptr, ptr %15, align 4, !dbg !1028
  %38 = icmp eq ptr %37, null, !dbg !1030
  br i1 %38, label %39, label %40, !dbg !1031

39:                                               ; preds = %3
  store i32 -5, ptr %18, align 4, !dbg !1032
  br label %125, !dbg !1034

40:                                               ; preds = %3
  %41 = load i32, ptr %14, align 4, !dbg !1035
  %42 = icmp eq i32 %41, 0, !dbg !1037
  br i1 %42, label %49, label %43, !dbg !1038

43:                                               ; preds = %40
  %44 = load i32, ptr %14, align 4, !dbg !1039
  %45 = load ptr, ptr %13, align 4, !dbg !1040
  %46 = getelementptr inbounds %struct.sys_bitarray, ptr %45, i32 0, i32 0, !dbg !1041
  %47 = load i32, ptr %46, align 4, !dbg !1041
  %48 = icmp ugt i32 %44, %47, !dbg !1042
  br i1 %48, label %49, label %50, !dbg !1043

49:                                               ; preds = %43, %40
  store i32 -5, ptr %18, align 4, !dbg !1044
  br label %125, !dbg !1046

50:                                               ; preds = %43
  store i32 0, ptr %17, align 4, !dbg !1047
  call void @llvm.lifetime.start.p0(i64 4, ptr %24) #7, !dbg !1048
  call void @llvm.dbg.declare(metadata ptr %24, metadata !986, metadata !DIExpression()), !dbg !1049
  store i32 0, ptr %24, align 4, !dbg !1049
  br label %51, !dbg !1048

51:                                               ; preds = %96, %50
  %52 = load i32, ptr %24, align 4, !dbg !1050
  %53 = load ptr, ptr %13, align 4, !dbg !1052
  %54 = getelementptr inbounds %struct.sys_bitarray, ptr %53, i32 0, i32 1, !dbg !1053
  %55 = load i32, ptr %54, align 4, !dbg !1053
  %56 = icmp ult i32 %52, %55, !dbg !1054
  br i1 %56, label %58, label %57, !dbg !1055

57:                                               ; preds = %51
  store i32 3, ptr %25, align 4
  br label %99, !dbg !1055

58:                                               ; preds = %51
  %59 = load ptr, ptr %13, align 4, !dbg !1056
  %60 = getelementptr inbounds %struct.sys_bitarray, ptr %59, i32 0, i32 2, !dbg !1059
  %61 = load ptr, ptr %60, align 4, !dbg !1059
  %62 = load i32, ptr %24, align 4, !dbg !1060
  %63 = getelementptr inbounds i32, ptr %61, i32 %62, !dbg !1056
  %64 = load i32, ptr %63, align 4, !dbg !1056
  %65 = xor i32 %64, -1, !dbg !1061
  %66 = icmp eq i32 %65, 0, !dbg !1062
  br i1 %66, label %67, label %70, !dbg !1063

67:                                               ; preds = %58
  %68 = load i32, ptr %17, align 4, !dbg !1064
  %69 = add i32 %68, 32, !dbg !1064
  store i32 %69, ptr %17, align 4, !dbg !1064
  br label %96, !dbg !1066

70:                                               ; preds = %58
  %71 = load ptr, ptr %13, align 4, !dbg !1067
  %72 = getelementptr inbounds %struct.sys_bitarray, ptr %71, i32 0, i32 2, !dbg !1069
  %73 = load ptr, ptr %72, align 4, !dbg !1069
  %74 = load i32, ptr %24, align 4, !dbg !1070
  %75 = getelementptr inbounds i32, ptr %73, i32 %74, !dbg !1067
  %76 = load i32, ptr %75, align 4, !dbg !1067
  %77 = icmp ne i32 %76, 0, !dbg !1071
  br i1 %77, label %78, label %95, !dbg !1072

78:                                               ; preds = %70
  %79 = load ptr, ptr %13, align 4, !dbg !1073
  %80 = getelementptr inbounds %struct.sys_bitarray, ptr %79, i32 0, i32 2, !dbg !1075
  %81 = load ptr, ptr %80, align 4, !dbg !1075
  %82 = load i32, ptr %24, align 4, !dbg !1076
  %83 = getelementptr inbounds i32, ptr %81, i32 %82, !dbg !1073
  %84 = load i32, ptr %83, align 4, !dbg !1073
  %85 = xor i32 %84, -1, !dbg !1077
  store i32 %85, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1078, metadata !DIExpression()), !dbg !1084
  %86 = load i32, ptr %8, align 4, !dbg !1086
  %87 = call i32 @llvm.cttz.i32(i32 %86, i1 true), !dbg !1087
  %88 = add i32 %87, 1, !dbg !1087
  %89 = icmp eq i32 %86, 0, !dbg !1087
  %90 = select i1 %89, i32 0, i32 %88, !dbg !1087
  %91 = sub i32 %90, 1, !dbg !1088
  store i32 %91, ptr %20, align 4, !dbg !1089
  %92 = load i32, ptr %20, align 4, !dbg !1090
  %93 = load i32, ptr %17, align 4, !dbg !1091
  %94 = add i32 %93, %92, !dbg !1091
  store i32 %94, ptr %17, align 4, !dbg !1091
  br label %95, !dbg !1092

95:                                               ; preds = %78, %70
  store i32 3, ptr %25, align 4
  br label %99, !dbg !1093

96:                                               ; preds = %67
  %97 = load i32, ptr %24, align 4, !dbg !1094
  %98 = add i32 %97, 1, !dbg !1094
  store i32 %98, ptr %24, align 4, !dbg !1094
  br label %51, !dbg !1095, !llvm.loop !1096

99:                                               ; preds = %95, %57
  call void @llvm.lifetime.end.p0(i64 4, ptr %24) #7, !dbg !1095
  br label %100

100:                                              ; preds = %99
  %101 = load ptr, ptr %13, align 4, !dbg !1098
  %102 = getelementptr inbounds %struct.sys_bitarray, ptr %101, i32 0, i32 0, !dbg !1099
  %103 = load i32, ptr %102, align 4, !dbg !1099
  %104 = load i32, ptr %14, align 4, !dbg !1100
  %105 = sub i32 %103, %104, !dbg !1101
  store i32 %105, ptr %21, align 4, !dbg !1102
  store i32 -28, ptr %18, align 4, !dbg !1103
  br label %106, !dbg !1104

106:                                              ; preds = %121, %100
  %107 = load i32, ptr %17, align 4, !dbg !1105
  %108 = load i32, ptr %21, align 4, !dbg !1106
  %109 = icmp ule i32 %107, %108, !dbg !1107
  br i1 %109, label %110, label %124, !dbg !1104

110:                                              ; preds = %106
  %111 = load ptr, ptr %13, align 4, !dbg !1108
  %112 = load i32, ptr %17, align 4, !dbg !1111
  %113 = load i32, ptr %14, align 4, !dbg !1112
  %114 = call zeroext i1 @match_region(ptr noundef %111, i32 noundef %112, i32 noundef %113, i1 noundef zeroext false, ptr noundef %19, ptr noundef %22) #6, !dbg !1113
  br i1 %114, label %115, label %121, !dbg !1114

115:                                              ; preds = %110
  %116 = load ptr, ptr %13, align 4, !dbg !1115
  %117 = load i32, ptr %17, align 4, !dbg !1117
  %118 = load i32, ptr %14, align 4, !dbg !1118
  call void @set_region(ptr noundef %116, i32 noundef %117, i32 noundef %118, i1 noundef zeroext true, ptr noundef %19) #6, !dbg !1119
  %119 = load i32, ptr %17, align 4, !dbg !1120
  %120 = load ptr, ptr %15, align 4, !dbg !1121
  store i32 %119, ptr %120, align 4, !dbg !1122
  store i32 0, ptr %18, align 4, !dbg !1123
  br label %124, !dbg !1124

121:                                              ; preds = %110
  %122 = load i32, ptr %22, align 4, !dbg !1125
  %123 = add i32 %122, 1, !dbg !1126
  store i32 %123, ptr %17, align 4, !dbg !1127
  br label %106, !dbg !1104, !llvm.loop !1128

124:                                              ; preds = %115, %106
  br label %125, !dbg !1104

125:                                              ; preds = %124, %49, %39
  call void @llvm.dbg.label(metadata !988), !dbg !1130
  %126 = load ptr, ptr %13, align 4, !dbg !1131
  %127 = getelementptr inbounds %struct.sys_bitarray, ptr %126, i32 0, i32 3, !dbg !1132
  %128 = getelementptr inbounds %struct.z_spinlock_key, ptr %16, i32 0, i32 0, !dbg !1133
  %129 = load [1 x i32], ptr %128, align 4, !dbg !1133
  store [1 x i32] %129, ptr %9, align 4
  store ptr %127, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !523, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.declare(metadata ptr %9, metadata !528, metadata !DIExpression()), !dbg !1136
  %130 = load ptr, ptr %10, align 4, !dbg !1137
  %131 = load i32, ptr %9, align 4, !dbg !1138
  store i32 %131, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !534, metadata !DIExpression()), !dbg !1139
  %132 = load i32, ptr %4, align 4, !dbg !1141
  %133 = icmp ne i32 %132, 0, !dbg !1142
  br i1 %133, label %134, label %135, !dbg !1143

134:                                              ; preds = %125
  br label %arch_irq_unlock.exit, !dbg !1144

135:                                              ; preds = %125
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #7, !dbg !1145, !srcloc !548
  br label %arch_irq_unlock.exit, !dbg !1146

arch_irq_unlock.exit:                             ; preds = %134, %135
  %136 = load i32, ptr %18, align 4, !dbg !1147
  store i32 1, ptr %25, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %22) #7, !dbg !1148
  call void @llvm.lifetime.end.p0(i64 4, ptr %21) #7, !dbg !1148
  call void @llvm.lifetime.end.p0(i64 4, ptr %20) #7, !dbg !1148
  call void @llvm.lifetime.end.p0(i64 24, ptr %19) #7, !dbg !1148
  call void @llvm.lifetime.end.p0(i64 4, ptr %18) #7, !dbg !1148
  call void @llvm.lifetime.end.p0(i64 4, ptr %17) #7, !dbg !1148
  call void @llvm.lifetime.end.p0(i64 4, ptr %16) #7, !dbg !1148
  ret i32 %136, !dbg !1149
}

; Function Attrs: nounwind optsize
define internal zeroext i1 @match_region(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef %4, ptr noundef %5) #1 !dbg !1150 {
  %7 = alloca i32, align 4
  %8 = alloca i1, align 1
  %9 = alloca ptr, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca ptr, align 4
  %14 = alloca ptr, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store ptr %0, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1156, metadata !DIExpression()), !dbg !1169
  store i32 %1, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1157, metadata !DIExpression()), !dbg !1170
  store i32 %2, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1158, metadata !DIExpression()), !dbg !1171
  %21 = zext i1 %3 to i8
  store i8 %21, ptr %12, align 1
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1159, metadata !DIExpression()), !dbg !1172
  store ptr %4, ptr %13, align 4
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1160, metadata !DIExpression()), !dbg !1173
  store ptr %5, ptr %14, align 4
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1161, metadata !DIExpression()), !dbg !1174
  call void @llvm.lifetime.start.p0(i64 4, ptr %15) #7, !dbg !1175
  call void @llvm.dbg.declare(metadata ptr %15, metadata !1162, metadata !DIExpression()), !dbg !1176
  call void @llvm.lifetime.start.p0(i64 4, ptr %16) #7, !dbg !1177
  call void @llvm.dbg.declare(metadata ptr %16, metadata !1163, metadata !DIExpression()), !dbg !1178
  call void @llvm.lifetime.start.p0(i64 4, ptr %17) #7, !dbg !1179
  call void @llvm.dbg.declare(metadata ptr %17, metadata !1164, metadata !DIExpression()), !dbg !1180
  call void @llvm.lifetime.start.p0(i64 4, ptr %18) #7, !dbg !1181
  call void @llvm.dbg.declare(metadata ptr %18, metadata !1165, metadata !DIExpression()), !dbg !1182
  call void @llvm.lifetime.start.p0(i64 4, ptr %19) #7, !dbg !1183
  call void @llvm.dbg.declare(metadata ptr %19, metadata !1166, metadata !DIExpression()), !dbg !1184
  %22 = load ptr, ptr %9, align 4, !dbg !1185
  %23 = load ptr, ptr %13, align 4, !dbg !1186
  %24 = load i32, ptr %10, align 4, !dbg !1187
  %25 = load i32, ptr %11, align 4, !dbg !1188
  call void @setup_bundle_data(ptr noundef %22, ptr noundef %23, i32 noundef %24, i32 noundef %25) #6, !dbg !1189
  %26 = load ptr, ptr %13, align 4, !dbg !1190
  %27 = getelementptr inbounds %struct.bundle_data, ptr %26, i32 0, i32 0, !dbg !1192
  %28 = load i32, ptr %27, align 4, !dbg !1192
  %29 = load ptr, ptr %13, align 4, !dbg !1193
  %30 = getelementptr inbounds %struct.bundle_data, ptr %29, i32 0, i32 1, !dbg !1194
  %31 = load i32, ptr %30, align 4, !dbg !1194
  %32 = icmp eq i32 %28, %31, !dbg !1195
  br i1 %32, label %33, label %68, !dbg !1196

33:                                               ; preds = %6
  %34 = load ptr, ptr %9, align 4, !dbg !1197
  %35 = getelementptr inbounds %struct.sys_bitarray, ptr %34, i32 0, i32 2, !dbg !1199
  %36 = load ptr, ptr %35, align 4, !dbg !1199
  %37 = load ptr, ptr %13, align 4, !dbg !1200
  %38 = getelementptr inbounds %struct.bundle_data, ptr %37, i32 0, i32 0, !dbg !1201
  %39 = load i32, ptr %38, align 4, !dbg !1201
  %40 = getelementptr inbounds i32, ptr %36, i32 %39, !dbg !1197
  %41 = load i32, ptr %40, align 4, !dbg !1197
  store i32 %41, ptr %16, align 4, !dbg !1202
  %42 = load i8, ptr %12, align 1, !dbg !1203, !range !1205, !noundef !214
  %43 = trunc i8 %42 to i1, !dbg !1203
  br i1 %43, label %47, label %44, !dbg !1206

44:                                               ; preds = %33
  %45 = load i32, ptr %16, align 4, !dbg !1207
  %46 = xor i32 %45, -1, !dbg !1209
  store i32 %46, ptr %16, align 4, !dbg !1210
  br label %47, !dbg !1211

47:                                               ; preds = %44, %33
  %48 = load i32, ptr %16, align 4, !dbg !1212
  %49 = load ptr, ptr %13, align 4, !dbg !1214
  %50 = getelementptr inbounds %struct.bundle_data, ptr %49, i32 0, i32 4, !dbg !1215
  %51 = load i32, ptr %50, align 4, !dbg !1215
  %52 = and i32 %48, %51, !dbg !1216
  %53 = load ptr, ptr %13, align 4, !dbg !1217
  %54 = getelementptr inbounds %struct.bundle_data, ptr %53, i32 0, i32 4, !dbg !1218
  %55 = load i32, ptr %54, align 4, !dbg !1218
  %56 = icmp ne i32 %52, %55, !dbg !1219
  br i1 %56, label %57, label %67, !dbg !1220

57:                                               ; preds = %47
  %58 = load i32, ptr %16, align 4, !dbg !1221
  %59 = xor i32 %58, -1, !dbg !1223
  %60 = load ptr, ptr %13, align 4, !dbg !1224
  %61 = getelementptr inbounds %struct.bundle_data, ptr %60, i32 0, i32 4, !dbg !1225
  %62 = load i32, ptr %61, align 4, !dbg !1225
  %63 = and i32 %59, %62, !dbg !1226
  store i32 %63, ptr %17, align 4, !dbg !1227
  %64 = load ptr, ptr %13, align 4, !dbg !1228
  %65 = getelementptr inbounds %struct.bundle_data, ptr %64, i32 0, i32 0, !dbg !1229
  %66 = load i32, ptr %65, align 4, !dbg !1229
  store i32 %66, ptr %18, align 4, !dbg !1230
  br label %171, !dbg !1231

67:                                               ; preds = %47
  br label %170, !dbg !1232

68:                                               ; preds = %6
  %69 = load ptr, ptr %9, align 4, !dbg !1234
  %70 = getelementptr inbounds %struct.sys_bitarray, ptr %69, i32 0, i32 2, !dbg !1235
  %71 = load ptr, ptr %70, align 4, !dbg !1235
  %72 = load ptr, ptr %13, align 4, !dbg !1236
  %73 = getelementptr inbounds %struct.bundle_data, ptr %72, i32 0, i32 0, !dbg !1237
  %74 = load i32, ptr %73, align 4, !dbg !1237
  %75 = getelementptr inbounds i32, ptr %71, i32 %74, !dbg !1234
  %76 = load i32, ptr %75, align 4, !dbg !1234
  store i32 %76, ptr %16, align 4, !dbg !1238
  %77 = load i8, ptr %12, align 1, !dbg !1239, !range !1205, !noundef !214
  %78 = trunc i8 %77 to i1, !dbg !1239
  br i1 %78, label %82, label %79, !dbg !1241

79:                                               ; preds = %68
  %80 = load i32, ptr %16, align 4, !dbg !1242
  %81 = xor i32 %80, -1, !dbg !1244
  store i32 %81, ptr %16, align 4, !dbg !1245
  br label %82, !dbg !1246

82:                                               ; preds = %79, %68
  %83 = load i32, ptr %16, align 4, !dbg !1247
  %84 = load ptr, ptr %13, align 4, !dbg !1249
  %85 = getelementptr inbounds %struct.bundle_data, ptr %84, i32 0, i32 4, !dbg !1250
  %86 = load i32, ptr %85, align 4, !dbg !1250
  %87 = and i32 %83, %86, !dbg !1251
  %88 = load ptr, ptr %13, align 4, !dbg !1252
  %89 = getelementptr inbounds %struct.bundle_data, ptr %88, i32 0, i32 4, !dbg !1253
  %90 = load i32, ptr %89, align 4, !dbg !1253
  %91 = icmp ne i32 %87, %90, !dbg !1254
  br i1 %91, label %92, label %102, !dbg !1255

92:                                               ; preds = %82
  %93 = load i32, ptr %16, align 4, !dbg !1256
  %94 = xor i32 %93, -1, !dbg !1258
  %95 = load ptr, ptr %13, align 4, !dbg !1259
  %96 = getelementptr inbounds %struct.bundle_data, ptr %95, i32 0, i32 4, !dbg !1260
  %97 = load i32, ptr %96, align 4, !dbg !1260
  %98 = and i32 %94, %97, !dbg !1261
  store i32 %98, ptr %17, align 4, !dbg !1262
  %99 = load ptr, ptr %13, align 4, !dbg !1263
  %100 = getelementptr inbounds %struct.bundle_data, ptr %99, i32 0, i32 0, !dbg !1264
  %101 = load i32, ptr %100, align 4, !dbg !1264
  store i32 %101, ptr %18, align 4, !dbg !1265
  br label %171, !dbg !1266

102:                                              ; preds = %82
  %103 = load ptr, ptr %9, align 4, !dbg !1267
  %104 = getelementptr inbounds %struct.sys_bitarray, ptr %103, i32 0, i32 2, !dbg !1268
  %105 = load ptr, ptr %104, align 4, !dbg !1268
  %106 = load ptr, ptr %13, align 4, !dbg !1269
  %107 = getelementptr inbounds %struct.bundle_data, ptr %106, i32 0, i32 1, !dbg !1270
  %108 = load i32, ptr %107, align 4, !dbg !1270
  %109 = getelementptr inbounds i32, ptr %105, i32 %108, !dbg !1267
  %110 = load i32, ptr %109, align 4, !dbg !1267
  store i32 %110, ptr %16, align 4, !dbg !1271
  %111 = load i8, ptr %12, align 1, !dbg !1272, !range !1205, !noundef !214
  %112 = trunc i8 %111 to i1, !dbg !1272
  br i1 %112, label %116, label %113, !dbg !1274

113:                                              ; preds = %102
  %114 = load i32, ptr %16, align 4, !dbg !1275
  %115 = xor i32 %114, -1, !dbg !1277
  store i32 %115, ptr %16, align 4, !dbg !1278
  br label %116, !dbg !1279

116:                                              ; preds = %113, %102
  %117 = load i32, ptr %16, align 4, !dbg !1280
  %118 = load ptr, ptr %13, align 4, !dbg !1282
  %119 = getelementptr inbounds %struct.bundle_data, ptr %118, i32 0, i32 5, !dbg !1283
  %120 = load i32, ptr %119, align 4, !dbg !1283
  %121 = and i32 %117, %120, !dbg !1284
  %122 = load ptr, ptr %13, align 4, !dbg !1285
  %123 = getelementptr inbounds %struct.bundle_data, ptr %122, i32 0, i32 5, !dbg !1286
  %124 = load i32, ptr %123, align 4, !dbg !1286
  %125 = icmp ne i32 %121, %124, !dbg !1287
  br i1 %125, label %126, label %136, !dbg !1288

126:                                              ; preds = %116
  %127 = load i32, ptr %16, align 4, !dbg !1289
  %128 = xor i32 %127, -1, !dbg !1291
  %129 = load ptr, ptr %13, align 4, !dbg !1292
  %130 = getelementptr inbounds %struct.bundle_data, ptr %129, i32 0, i32 5, !dbg !1293
  %131 = load i32, ptr %130, align 4, !dbg !1293
  %132 = and i32 %128, %131, !dbg !1294
  store i32 %132, ptr %17, align 4, !dbg !1295
  %133 = load ptr, ptr %13, align 4, !dbg !1296
  %134 = getelementptr inbounds %struct.bundle_data, ptr %133, i32 0, i32 1, !dbg !1297
  %135 = load i32, ptr %134, align 4, !dbg !1297
  store i32 %135, ptr %18, align 4, !dbg !1298
  br label %171, !dbg !1299

136:                                              ; preds = %116
  %137 = load ptr, ptr %13, align 4, !dbg !1300
  %138 = getelementptr inbounds %struct.bundle_data, ptr %137, i32 0, i32 0, !dbg !1302
  %139 = load i32, ptr %138, align 4, !dbg !1302
  %140 = add i32 %139, 1, !dbg !1303
  store i32 %140, ptr %15, align 4, !dbg !1304
  br label %141, !dbg !1305

141:                                              ; preds = %166, %136
  %142 = load i32, ptr %15, align 4, !dbg !1306
  %143 = load ptr, ptr %13, align 4, !dbg !1308
  %144 = getelementptr inbounds %struct.bundle_data, ptr %143, i32 0, i32 1, !dbg !1309
  %145 = load i32, ptr %144, align 4, !dbg !1309
  %146 = icmp ult i32 %142, %145, !dbg !1310
  br i1 %146, label %147, label %169, !dbg !1311

147:                                              ; preds = %141
  %148 = load ptr, ptr %9, align 4, !dbg !1312
  %149 = getelementptr inbounds %struct.sys_bitarray, ptr %148, i32 0, i32 2, !dbg !1314
  %150 = load ptr, ptr %149, align 4, !dbg !1314
  %151 = load i32, ptr %15, align 4, !dbg !1315
  %152 = getelementptr inbounds i32, ptr %150, i32 %151, !dbg !1312
  %153 = load i32, ptr %152, align 4, !dbg !1312
  store i32 %153, ptr %16, align 4, !dbg !1316
  %154 = load i8, ptr %12, align 1, !dbg !1317, !range !1205, !noundef !214
  %155 = trunc i8 %154 to i1, !dbg !1317
  br i1 %155, label %156, label %159, !dbg !1319

156:                                              ; preds = %147
  %157 = load i32, ptr %16, align 4, !dbg !1320
  %158 = xor i32 %157, -1, !dbg !1322
  store i32 %158, ptr %16, align 4, !dbg !1323
  br label %159, !dbg !1324

159:                                              ; preds = %156, %147
  %160 = load i32, ptr %16, align 4, !dbg !1325
  %161 = icmp ne i32 %160, 0, !dbg !1327
  br i1 %161, label %162, label %165, !dbg !1328

162:                                              ; preds = %159
  %163 = load i32, ptr %16, align 4, !dbg !1329
  store i32 %163, ptr %17, align 4, !dbg !1331
  %164 = load i32, ptr %15, align 4, !dbg !1332
  store i32 %164, ptr %18, align 4, !dbg !1333
  br label %171, !dbg !1334

165:                                              ; preds = %159
  br label %166, !dbg !1335

166:                                              ; preds = %165
  %167 = load i32, ptr %15, align 4, !dbg !1336
  %168 = add i32 %167, 1, !dbg !1336
  store i32 %168, ptr %15, align 4, !dbg !1336
  br label %141, !dbg !1337, !llvm.loop !1338

169:                                              ; preds = %141
  br label %170, !dbg !1339

170:                                              ; preds = %169, %67
  call void @llvm.dbg.label(metadata !1167), !dbg !1340
  store i1 true, ptr %8, align 1, !dbg !1341
  store i32 1, ptr %20, align 4
  br label %189, !dbg !1341

171:                                              ; preds = %162, %126, %92, %57
  call void @llvm.dbg.label(metadata !1168), !dbg !1342
  %172 = load ptr, ptr %14, align 4, !dbg !1343
  %173 = icmp ne ptr %172, null, !dbg !1345
  br i1 %173, label %174, label %188, !dbg !1346

174:                                              ; preds = %171
  %175 = load i32, ptr %17, align 4, !dbg !1347
  store i32 %175, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1078, metadata !DIExpression()), !dbg !1349
  %176 = load i32, ptr %7, align 4, !dbg !1351
  %177 = call i32 @llvm.cttz.i32(i32 %176, i1 true), !dbg !1352
  %178 = add i32 %177, 1, !dbg !1352
  %179 = icmp eq i32 %176, 0, !dbg !1352
  %180 = select i1 %179, i32 0, i32 %178, !dbg !1352
  %181 = sub i32 %180, 1, !dbg !1353
  store i32 %181, ptr %19, align 4, !dbg !1354
  %182 = load i32, ptr %18, align 4, !dbg !1355
  %183 = mul i32 %182, 32, !dbg !1356
  %184 = load i32, ptr %19, align 4, !dbg !1357
  %185 = add i32 %184, %183, !dbg !1357
  store i32 %185, ptr %19, align 4, !dbg !1357
  %186 = load i32, ptr %19, align 4, !dbg !1358
  %187 = load ptr, ptr %14, align 4, !dbg !1359
  store i32 %186, ptr %187, align 4, !dbg !1360
  br label %188, !dbg !1361

188:                                              ; preds = %174, %171
  store i1 false, ptr %8, align 1, !dbg !1362
  store i32 1, ptr %20, align 4
  br label %189, !dbg !1362

189:                                              ; preds = %188, %170
  call void @llvm.lifetime.end.p0(i64 4, ptr %19) #7, !dbg !1363
  call void @llvm.lifetime.end.p0(i64 4, ptr %18) #7, !dbg !1363
  call void @llvm.lifetime.end.p0(i64 4, ptr %17) #7, !dbg !1363
  call void @llvm.lifetime.end.p0(i64 4, ptr %16) #7, !dbg !1363
  call void @llvm.lifetime.end.p0(i64 4, ptr %15) #7, !dbg !1363
  %190 = load i1, ptr %8, align 1, !dbg !1363
  ret i1 %190, !dbg !1363
}

; Function Attrs: nounwind optsize
define internal void @set_region(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef %4) #1 !dbg !1364 {
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca ptr, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.bundle_data, align 4
  store ptr %0, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1368, metadata !DIExpression()), !dbg !1375
  store i32 %1, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1369, metadata !DIExpression()), !dbg !1376
  store i32 %2, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1370, metadata !DIExpression()), !dbg !1377
  %13 = zext i1 %3 to i8
  store i8 %13, ptr %9, align 1
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1371, metadata !DIExpression()), !dbg !1378
  store ptr %4, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1372, metadata !DIExpression()), !dbg !1379
  call void @llvm.lifetime.start.p0(i64 4, ptr %11) #7, !dbg !1380
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1373, metadata !DIExpression()), !dbg !1381
  call void @llvm.lifetime.start.p0(i64 24, ptr %12) #7, !dbg !1382
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1374, metadata !DIExpression()), !dbg !1383
  %14 = load ptr, ptr %10, align 4, !dbg !1384
  %15 = icmp eq ptr %14, null, !dbg !1386
  br i1 %15, label %16, label %21, !dbg !1387

16:                                               ; preds = %5
  store ptr %12, ptr %10, align 4, !dbg !1388
  %17 = load ptr, ptr %6, align 4, !dbg !1390
  %18 = load ptr, ptr %10, align 4, !dbg !1391
  %19 = load i32, ptr %7, align 4, !dbg !1392
  %20 = load i32, ptr %8, align 4, !dbg !1393
  call void @setup_bundle_data(ptr noundef %17, ptr noundef %18, i32 noundef %19, i32 noundef %20) #6, !dbg !1394
  br label %21, !dbg !1395

21:                                               ; preds = %16, %5
  %22 = load ptr, ptr %10, align 4, !dbg !1396
  %23 = getelementptr inbounds %struct.bundle_data, ptr %22, i32 0, i32 0, !dbg !1398
  %24 = load i32, ptr %23, align 4, !dbg !1398
  %25 = load ptr, ptr %10, align 4, !dbg !1399
  %26 = getelementptr inbounds %struct.bundle_data, ptr %25, i32 0, i32 1, !dbg !1400
  %27 = load i32, ptr %26, align 4, !dbg !1400
  %28 = icmp eq i32 %24, %27, !dbg !1401
  br i1 %28, label %29, label %60, !dbg !1402

29:                                               ; preds = %21
  %30 = load i8, ptr %9, align 1, !dbg !1403, !range !1205, !noundef !214
  %31 = trunc i8 %30 to i1, !dbg !1403
  br i1 %31, label %32, label %45, !dbg !1406

32:                                               ; preds = %29
  %33 = load ptr, ptr %10, align 4, !dbg !1407
  %34 = getelementptr inbounds %struct.bundle_data, ptr %33, i32 0, i32 4, !dbg !1409
  %35 = load i32, ptr %34, align 4, !dbg !1409
  %36 = load ptr, ptr %6, align 4, !dbg !1410
  %37 = getelementptr inbounds %struct.sys_bitarray, ptr %36, i32 0, i32 2, !dbg !1411
  %38 = load ptr, ptr %37, align 4, !dbg !1411
  %39 = load ptr, ptr %10, align 4, !dbg !1412
  %40 = getelementptr inbounds %struct.bundle_data, ptr %39, i32 0, i32 0, !dbg !1413
  %41 = load i32, ptr %40, align 4, !dbg !1413
  %42 = getelementptr inbounds i32, ptr %38, i32 %41, !dbg !1410
  %43 = load i32, ptr %42, align 4, !dbg !1414
  %44 = or i32 %43, %35, !dbg !1414
  store i32 %44, ptr %42, align 4, !dbg !1414
  br label %59, !dbg !1415

45:                                               ; preds = %29
  %46 = load ptr, ptr %10, align 4, !dbg !1416
  %47 = getelementptr inbounds %struct.bundle_data, ptr %46, i32 0, i32 4, !dbg !1418
  %48 = load i32, ptr %47, align 4, !dbg !1418
  %49 = xor i32 %48, -1, !dbg !1419
  %50 = load ptr, ptr %6, align 4, !dbg !1420
  %51 = getelementptr inbounds %struct.sys_bitarray, ptr %50, i32 0, i32 2, !dbg !1421
  %52 = load ptr, ptr %51, align 4, !dbg !1421
  %53 = load ptr, ptr %10, align 4, !dbg !1422
  %54 = getelementptr inbounds %struct.bundle_data, ptr %53, i32 0, i32 0, !dbg !1423
  %55 = load i32, ptr %54, align 4, !dbg !1423
  %56 = getelementptr inbounds i32, ptr %52, i32 %55, !dbg !1420
  %57 = load i32, ptr %56, align 4, !dbg !1424
  %58 = and i32 %57, %49, !dbg !1424
  store i32 %58, ptr %56, align 4, !dbg !1424
  br label %59

59:                                               ; preds = %45, %32
  br label %156, !dbg !1425

60:                                               ; preds = %21
  %61 = load i8, ptr %9, align 1, !dbg !1426, !range !1205, !noundef !214
  %62 = trunc i8 %61 to i1, !dbg !1426
  br i1 %62, label %63, label %108, !dbg !1429

63:                                               ; preds = %60
  %64 = load ptr, ptr %10, align 4, !dbg !1430
  %65 = getelementptr inbounds %struct.bundle_data, ptr %64, i32 0, i32 4, !dbg !1432
  %66 = load i32, ptr %65, align 4, !dbg !1432
  %67 = load ptr, ptr %6, align 4, !dbg !1433
  %68 = getelementptr inbounds %struct.sys_bitarray, ptr %67, i32 0, i32 2, !dbg !1434
  %69 = load ptr, ptr %68, align 4, !dbg !1434
  %70 = load ptr, ptr %10, align 4, !dbg !1435
  %71 = getelementptr inbounds %struct.bundle_data, ptr %70, i32 0, i32 0, !dbg !1436
  %72 = load i32, ptr %71, align 4, !dbg !1436
  %73 = getelementptr inbounds i32, ptr %69, i32 %72, !dbg !1433
  %74 = load i32, ptr %73, align 4, !dbg !1437
  %75 = or i32 %74, %66, !dbg !1437
  store i32 %75, ptr %73, align 4, !dbg !1437
  %76 = load ptr, ptr %10, align 4, !dbg !1438
  %77 = getelementptr inbounds %struct.bundle_data, ptr %76, i32 0, i32 5, !dbg !1439
  %78 = load i32, ptr %77, align 4, !dbg !1439
  %79 = load ptr, ptr %6, align 4, !dbg !1440
  %80 = getelementptr inbounds %struct.sys_bitarray, ptr %79, i32 0, i32 2, !dbg !1441
  %81 = load ptr, ptr %80, align 4, !dbg !1441
  %82 = load ptr, ptr %10, align 4, !dbg !1442
  %83 = getelementptr inbounds %struct.bundle_data, ptr %82, i32 0, i32 1, !dbg !1443
  %84 = load i32, ptr %83, align 4, !dbg !1443
  %85 = getelementptr inbounds i32, ptr %81, i32 %84, !dbg !1440
  %86 = load i32, ptr %85, align 4, !dbg !1444
  %87 = or i32 %86, %78, !dbg !1444
  store i32 %87, ptr %85, align 4, !dbg !1444
  %88 = load ptr, ptr %10, align 4, !dbg !1445
  %89 = getelementptr inbounds %struct.bundle_data, ptr %88, i32 0, i32 0, !dbg !1447
  %90 = load i32, ptr %89, align 4, !dbg !1447
  %91 = add i32 %90, 1, !dbg !1448
  store i32 %91, ptr %11, align 4, !dbg !1449
  br label %92, !dbg !1450

92:                                               ; preds = %104, %63
  %93 = load i32, ptr %11, align 4, !dbg !1451
  %94 = load ptr, ptr %10, align 4, !dbg !1453
  %95 = getelementptr inbounds %struct.bundle_data, ptr %94, i32 0, i32 1, !dbg !1454
  %96 = load i32, ptr %95, align 4, !dbg !1454
  %97 = icmp ult i32 %93, %96, !dbg !1455
  br i1 %97, label %98, label %107, !dbg !1456

98:                                               ; preds = %92
  %99 = load ptr, ptr %6, align 4, !dbg !1457
  %100 = getelementptr inbounds %struct.sys_bitarray, ptr %99, i32 0, i32 2, !dbg !1459
  %101 = load ptr, ptr %100, align 4, !dbg !1459
  %102 = load i32, ptr %11, align 4, !dbg !1460
  %103 = getelementptr inbounds i32, ptr %101, i32 %102, !dbg !1457
  store i32 -1, ptr %103, align 4, !dbg !1461
  br label %104, !dbg !1462

104:                                              ; preds = %98
  %105 = load i32, ptr %11, align 4, !dbg !1463
  %106 = add i32 %105, 1, !dbg !1463
  store i32 %106, ptr %11, align 4, !dbg !1463
  br label %92, !dbg !1464, !llvm.loop !1465

107:                                              ; preds = %92
  br label %155, !dbg !1467

108:                                              ; preds = %60
  %109 = load ptr, ptr %10, align 4, !dbg !1468
  %110 = getelementptr inbounds %struct.bundle_data, ptr %109, i32 0, i32 4, !dbg !1470
  %111 = load i32, ptr %110, align 4, !dbg !1470
  %112 = xor i32 %111, -1, !dbg !1471
  %113 = load ptr, ptr %6, align 4, !dbg !1472
  %114 = getelementptr inbounds %struct.sys_bitarray, ptr %113, i32 0, i32 2, !dbg !1473
  %115 = load ptr, ptr %114, align 4, !dbg !1473
  %116 = load ptr, ptr %10, align 4, !dbg !1474
  %117 = getelementptr inbounds %struct.bundle_data, ptr %116, i32 0, i32 0, !dbg !1475
  %118 = load i32, ptr %117, align 4, !dbg !1475
  %119 = getelementptr inbounds i32, ptr %115, i32 %118, !dbg !1472
  %120 = load i32, ptr %119, align 4, !dbg !1476
  %121 = and i32 %120, %112, !dbg !1476
  store i32 %121, ptr %119, align 4, !dbg !1476
  %122 = load ptr, ptr %10, align 4, !dbg !1477
  %123 = getelementptr inbounds %struct.bundle_data, ptr %122, i32 0, i32 5, !dbg !1478
  %124 = load i32, ptr %123, align 4, !dbg !1478
  %125 = xor i32 %124, -1, !dbg !1479
  %126 = load ptr, ptr %6, align 4, !dbg !1480
  %127 = getelementptr inbounds %struct.sys_bitarray, ptr %126, i32 0, i32 2, !dbg !1481
  %128 = load ptr, ptr %127, align 4, !dbg !1481
  %129 = load ptr, ptr %10, align 4, !dbg !1482
  %130 = getelementptr inbounds %struct.bundle_data, ptr %129, i32 0, i32 1, !dbg !1483
  %131 = load i32, ptr %130, align 4, !dbg !1483
  %132 = getelementptr inbounds i32, ptr %128, i32 %131, !dbg !1480
  %133 = load i32, ptr %132, align 4, !dbg !1484
  %134 = and i32 %133, %125, !dbg !1484
  store i32 %134, ptr %132, align 4, !dbg !1484
  %135 = load ptr, ptr %10, align 4, !dbg !1485
  %136 = getelementptr inbounds %struct.bundle_data, ptr %135, i32 0, i32 0, !dbg !1487
  %137 = load i32, ptr %136, align 4, !dbg !1487
  %138 = add i32 %137, 1, !dbg !1488
  store i32 %138, ptr %11, align 4, !dbg !1489
  br label %139, !dbg !1490

139:                                              ; preds = %151, %108
  %140 = load i32, ptr %11, align 4, !dbg !1491
  %141 = load ptr, ptr %10, align 4, !dbg !1493
  %142 = getelementptr inbounds %struct.bundle_data, ptr %141, i32 0, i32 1, !dbg !1494
  %143 = load i32, ptr %142, align 4, !dbg !1494
  %144 = icmp ult i32 %140, %143, !dbg !1495
  br i1 %144, label %145, label %154, !dbg !1496

145:                                              ; preds = %139
  %146 = load ptr, ptr %6, align 4, !dbg !1497
  %147 = getelementptr inbounds %struct.sys_bitarray, ptr %146, i32 0, i32 2, !dbg !1499
  %148 = load ptr, ptr %147, align 4, !dbg !1499
  %149 = load i32, ptr %11, align 4, !dbg !1500
  %150 = getelementptr inbounds i32, ptr %148, i32 %149, !dbg !1497
  store i32 0, ptr %150, align 4, !dbg !1501
  br label %151, !dbg !1502

151:                                              ; preds = %145
  %152 = load i32, ptr %11, align 4, !dbg !1503
  %153 = add i32 %152, 1, !dbg !1503
  store i32 %153, ptr %11, align 4, !dbg !1503
  br label %139, !dbg !1504, !llvm.loop !1505

154:                                              ; preds = %139
  br label %155

155:                                              ; preds = %154, %107
  br label %156

156:                                              ; preds = %155, %59
  call void @llvm.lifetime.end.p0(i64 24, ptr %12) #7, !dbg !1507
  call void @llvm.lifetime.end.p0(i64 4, ptr %11) #7, !dbg !1507
  ret void, !dbg !1507
}

; Function Attrs: nounwind optsize
define hidden i32 @sys_bitarray_free(ptr noundef %0, i32 noundef %1, i32 noundef %2) #1 !dbg !1508 {
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
  %17 = alloca i32, align 4
  %18 = alloca %struct.bundle_data, align 4
  %19 = alloca %struct.z_spinlock_key, align 4
  store ptr %0, ptr %12, align 4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1512, metadata !DIExpression()), !dbg !1520
  store i32 %1, ptr %13, align 4
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1513, metadata !DIExpression()), !dbg !1521
  store i32 %2, ptr %14, align 4
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1514, metadata !DIExpression()), !dbg !1522
  call void @llvm.lifetime.start.p0(i64 4, ptr %15) #7, !dbg !1523
  call void @llvm.dbg.declare(metadata ptr %15, metadata !1515, metadata !DIExpression()), !dbg !1524
  call void @llvm.lifetime.start.p0(i64 4, ptr %16) #7, !dbg !1525
  call void @llvm.dbg.declare(metadata ptr %16, metadata !1516, metadata !DIExpression()), !dbg !1526
  call void @llvm.lifetime.start.p0(i64 4, ptr %17) #7, !dbg !1527
  call void @llvm.dbg.declare(metadata ptr %17, metadata !1517, metadata !DIExpression()), !dbg !1528
  %20 = load i32, ptr %14, align 4, !dbg !1529
  %21 = load i32, ptr %13, align 4, !dbg !1530
  %22 = add i32 %20, %21, !dbg !1531
  %23 = sub i32 %22, 1, !dbg !1532
  store i32 %23, ptr %17, align 4, !dbg !1528
  call void @llvm.lifetime.start.p0(i64 24, ptr %18) #7, !dbg !1533
  call void @llvm.dbg.declare(metadata ptr %18, metadata !1518, metadata !DIExpression()), !dbg !1534
  call void @llvm.lifetime.start.p0(i64 4, ptr %19) #7, !dbg !1535
  %24 = load ptr, ptr %12, align 4, !dbg !1536
  %25 = getelementptr inbounds %struct.sys_bitarray, ptr %24, i32 0, i32 3, !dbg !1537
  store ptr %25, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !454, metadata !DIExpression()), !dbg !1538
  %26 = load ptr, ptr %11, align 4, !dbg !1540
  call void @llvm.dbg.declare(metadata ptr %10, metadata !460, metadata !DIExpression()), !dbg !1541
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #7, !dbg !1542
  call void @llvm.dbg.declare(metadata ptr %7, metadata !471, metadata !DIExpression()), !dbg !1544
  %27 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #7, !dbg !1545, !srcloc !475
  store i32 %27, ptr %7, align 4, !dbg !1545
  %28 = load i32, ptr %7, align 4, !dbg !1546
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #7, !dbg !1547
  store i32 %28, ptr %10, align 4, !dbg !1548
  %29 = load ptr, ptr %11, align 4, !dbg !1549
  store ptr %29, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !480, metadata !DIExpression()), !dbg !1550
  %30 = load ptr, ptr %6, align 4, !dbg !1552
  %31 = load ptr, ptr %11, align 4, !dbg !1553
  store ptr %31, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !489, metadata !DIExpression()), !dbg !1554
  %32 = load ptr, ptr %5, align 4, !dbg !1556
  %33 = load i32, ptr %10, align 4, !dbg !1557
  %34 = getelementptr inbounds %struct.z_spinlock_key, ptr %19, i32 0, i32 0, !dbg !1535
  store i32 %33, ptr %34, align 4, !dbg !1535
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %15, ptr align 4 %19, i32 4, i1 false), !dbg !1535
  call void @llvm.lifetime.end.p0(i64 4, ptr %19) #7, !dbg !1535
  %35 = load i32, ptr %13, align 4, !dbg !1558
  %36 = icmp eq i32 %35, 0, !dbg !1560
  br i1 %36, label %55, label %37, !dbg !1561

37:                                               ; preds = %3
  %38 = load i32, ptr %13, align 4, !dbg !1562
  %39 = load ptr, ptr %12, align 4, !dbg !1563
  %40 = getelementptr inbounds %struct.sys_bitarray, ptr %39, i32 0, i32 0, !dbg !1564
  %41 = load i32, ptr %40, align 4, !dbg !1564
  %42 = icmp ugt i32 %38, %41, !dbg !1565
  br i1 %42, label %55, label %43, !dbg !1566

43:                                               ; preds = %37
  %44 = load i32, ptr %14, align 4, !dbg !1567
  %45 = load ptr, ptr %12, align 4, !dbg !1568
  %46 = getelementptr inbounds %struct.sys_bitarray, ptr %45, i32 0, i32 0, !dbg !1569
  %47 = load i32, ptr %46, align 4, !dbg !1569
  %48 = icmp uge i32 %44, %47, !dbg !1570
  br i1 %48, label %55, label %49, !dbg !1571

49:                                               ; preds = %43
  %50 = load i32, ptr %17, align 4, !dbg !1572
  %51 = load ptr, ptr %12, align 4, !dbg !1573
  %52 = getelementptr inbounds %struct.sys_bitarray, ptr %51, i32 0, i32 0, !dbg !1574
  %53 = load i32, ptr %52, align 4, !dbg !1574
  %54 = icmp uge i32 %50, %53, !dbg !1575
  br i1 %54, label %55, label %56, !dbg !1576

55:                                               ; preds = %49, %43, %37, %3
  store i32 -5, ptr %16, align 4, !dbg !1577
  br label %67, !dbg !1579

56:                                               ; preds = %49
  %57 = load ptr, ptr %12, align 4, !dbg !1580
  %58 = load i32, ptr %14, align 4, !dbg !1582
  %59 = load i32, ptr %13, align 4, !dbg !1583
  %60 = call zeroext i1 @match_region(ptr noundef %57, i32 noundef %58, i32 noundef %59, i1 noundef zeroext true, ptr noundef %18, ptr noundef null) #6, !dbg !1584
  br i1 %60, label %61, label %65, !dbg !1585

61:                                               ; preds = %56
  %62 = load ptr, ptr %12, align 4, !dbg !1586
  %63 = load i32, ptr %14, align 4, !dbg !1588
  %64 = load i32, ptr %13, align 4, !dbg !1589
  call void @set_region(ptr noundef %62, i32 noundef %63, i32 noundef %64, i1 noundef zeroext false, ptr noundef %18) #6, !dbg !1590
  store i32 0, ptr %16, align 4, !dbg !1591
  br label %66, !dbg !1592

65:                                               ; preds = %56
  store i32 -14, ptr %16, align 4, !dbg !1593
  br label %66

66:                                               ; preds = %65, %61
  br label %67, !dbg !1595

67:                                               ; preds = %66, %55
  call void @llvm.dbg.label(metadata !1519), !dbg !1596
  %68 = load ptr, ptr %12, align 4, !dbg !1597
  %69 = getelementptr inbounds %struct.sys_bitarray, ptr %68, i32 0, i32 3, !dbg !1598
  %70 = getelementptr inbounds %struct.z_spinlock_key, ptr %15, i32 0, i32 0, !dbg !1599
  %71 = load [1 x i32], ptr %70, align 4, !dbg !1599
  store [1 x i32] %71, ptr %8, align 4
  store ptr %69, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !523, metadata !DIExpression()), !dbg !1600
  call void @llvm.dbg.declare(metadata ptr %8, metadata !528, metadata !DIExpression()), !dbg !1602
  %72 = load ptr, ptr %9, align 4, !dbg !1603
  %73 = load i32, ptr %8, align 4, !dbg !1604
  store i32 %73, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !534, metadata !DIExpression()), !dbg !1605
  %74 = load i32, ptr %4, align 4, !dbg !1607
  %75 = icmp ne i32 %74, 0, !dbg !1608
  br i1 %75, label %76, label %77, !dbg !1609

76:                                               ; preds = %67
  br label %arch_irq_unlock.exit, !dbg !1610

77:                                               ; preds = %67
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #7, !dbg !1611, !srcloc !548
  br label %arch_irq_unlock.exit, !dbg !1612

arch_irq_unlock.exit:                             ; preds = %76, %77
  %78 = load i32, ptr %16, align 4, !dbg !1613
  call void @llvm.lifetime.end.p0(i64 24, ptr %18) #7, !dbg !1614
  call void @llvm.lifetime.end.p0(i64 4, ptr %17) #7, !dbg !1614
  call void @llvm.lifetime.end.p0(i64 4, ptr %16) #7, !dbg !1614
  call void @llvm.lifetime.end.p0(i64 4, ptr %15) #7, !dbg !1614
  ret i32 %78, !dbg !1615
}

; Function Attrs: nounwind optsize
define hidden zeroext i1 @sys_bitarray_is_region_set(ptr noundef %0, i32 noundef %1, i32 noundef %2) #1 !dbg !1616 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1620, metadata !DIExpression()), !dbg !1623
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1621, metadata !DIExpression()), !dbg !1624
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1622, metadata !DIExpression()), !dbg !1625
  %7 = load ptr, ptr %4, align 4, !dbg !1626
  %8 = load i32, ptr %5, align 4, !dbg !1627
  %9 = load i32, ptr %6, align 4, !dbg !1628
  %10 = call zeroext i1 @is_region_set_clear(ptr noundef %7, i32 noundef %8, i32 noundef %9, i1 noundef zeroext true) #6, !dbg !1629
  ret i1 %10, !dbg !1630
}

; Function Attrs: nounwind optsize
define internal zeroext i1 @is_region_set_clear(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3) #1 !dbg !1631 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.z_spinlock_key, align 4
  %10 = alloca ptr, align 4
  %11 = alloca %struct.z_spinlock_key, align 4
  %12 = alloca ptr, align 4
  %13 = alloca ptr, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8, align 1
  %17 = alloca i8, align 1
  %18 = alloca %struct.bundle_data, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.z_spinlock_key, align 4
  store ptr %0, ptr %13, align 4
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1635, metadata !DIExpression()), !dbg !1644
  store i32 %1, ptr %14, align 4
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1636, metadata !DIExpression()), !dbg !1645
  store i32 %2, ptr %15, align 4
  call void @llvm.dbg.declare(metadata ptr %15, metadata !1637, metadata !DIExpression()), !dbg !1646
  %21 = zext i1 %3 to i8
  store i8 %21, ptr %16, align 1
  call void @llvm.dbg.declare(metadata ptr %16, metadata !1638, metadata !DIExpression()), !dbg !1647
  call void @llvm.lifetime.start.p0(i64 1, ptr %17) #7, !dbg !1648
  call void @llvm.dbg.declare(metadata ptr %17, metadata !1639, metadata !DIExpression()), !dbg !1649
  call void @llvm.lifetime.start.p0(i64 24, ptr %18) #7, !dbg !1650
  call void @llvm.dbg.declare(metadata ptr %18, metadata !1640, metadata !DIExpression()), !dbg !1651
  call void @llvm.lifetime.start.p0(i64 4, ptr %19) #7, !dbg !1652
  call void @llvm.dbg.declare(metadata ptr %19, metadata !1641, metadata !DIExpression()), !dbg !1653
  %22 = load i32, ptr %15, align 4, !dbg !1654
  %23 = load i32, ptr %14, align 4, !dbg !1655
  %24 = add i32 %22, %23, !dbg !1656
  %25 = sub i32 %24, 1, !dbg !1657
  store i32 %25, ptr %19, align 4, !dbg !1653
  call void @llvm.lifetime.start.p0(i64 4, ptr %20) #7, !dbg !1658
  call void @llvm.dbg.declare(metadata ptr %20, metadata !1642, metadata !DIExpression()), !dbg !1659
  %26 = load ptr, ptr %13, align 4, !dbg !1660
  %27 = getelementptr inbounds %struct.sys_bitarray, ptr %26, i32 0, i32 3, !dbg !1661
  store ptr %27, ptr %12, align 4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !454, metadata !DIExpression()), !dbg !1662
  %28 = load ptr, ptr %12, align 4, !dbg !1664
  call void @llvm.dbg.declare(metadata ptr %11, metadata !460, metadata !DIExpression()), !dbg !1665
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #7, !dbg !1666
  call void @llvm.dbg.declare(metadata ptr %8, metadata !471, metadata !DIExpression()), !dbg !1668
  %29 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #7, !dbg !1669, !srcloc !475
  store i32 %29, ptr %8, align 4, !dbg !1669
  %30 = load i32, ptr %8, align 4, !dbg !1670
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #7, !dbg !1671
  store i32 %30, ptr %11, align 4, !dbg !1672
  %31 = load ptr, ptr %12, align 4, !dbg !1673
  store ptr %31, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !480, metadata !DIExpression()), !dbg !1674
  %32 = load ptr, ptr %7, align 4, !dbg !1676
  %33 = load ptr, ptr %12, align 4, !dbg !1677
  store ptr %33, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !489, metadata !DIExpression()), !dbg !1678
  %34 = load ptr, ptr %6, align 4, !dbg !1680
  %35 = load i32, ptr %11, align 4, !dbg !1681
  %36 = getelementptr inbounds %struct.z_spinlock_key, ptr %20, i32 0, i32 0, !dbg !1682
  store i32 %35, ptr %36, align 4, !dbg !1682
  %37 = load i32, ptr %14, align 4, !dbg !1683
  %38 = icmp eq i32 %37, 0, !dbg !1685
  br i1 %38, label %57, label %39, !dbg !1686

39:                                               ; preds = %4
  %40 = load i32, ptr %14, align 4, !dbg !1687
  %41 = load ptr, ptr %13, align 4, !dbg !1688
  %42 = getelementptr inbounds %struct.sys_bitarray, ptr %41, i32 0, i32 0, !dbg !1689
  %43 = load i32, ptr %42, align 4, !dbg !1689
  %44 = icmp ugt i32 %40, %43, !dbg !1690
  br i1 %44, label %57, label %45, !dbg !1691

45:                                               ; preds = %39
  %46 = load i32, ptr %15, align 4, !dbg !1692
  %47 = load ptr, ptr %13, align 4, !dbg !1693
  %48 = getelementptr inbounds %struct.sys_bitarray, ptr %47, i32 0, i32 0, !dbg !1694
  %49 = load i32, ptr %48, align 4, !dbg !1694
  %50 = icmp uge i32 %46, %49, !dbg !1695
  br i1 %50, label %57, label %51, !dbg !1696

51:                                               ; preds = %45
  %52 = load i32, ptr %19, align 4, !dbg !1697
  %53 = load ptr, ptr %13, align 4, !dbg !1698
  %54 = getelementptr inbounds %struct.sys_bitarray, ptr %53, i32 0, i32 0, !dbg !1699
  %55 = load i32, ptr %54, align 4, !dbg !1699
  %56 = icmp uge i32 %52, %55, !dbg !1700
  br i1 %56, label %57, label %58, !dbg !1701

57:                                               ; preds = %51, %45, %39, %4
  store i8 0, ptr %17, align 1, !dbg !1702
  br label %66, !dbg !1704

58:                                               ; preds = %51
  %59 = load ptr, ptr %13, align 4, !dbg !1705
  %60 = load i32, ptr %15, align 4, !dbg !1706
  %61 = load i32, ptr %14, align 4, !dbg !1707
  %62 = load i8, ptr %16, align 1, !dbg !1708, !range !1205, !noundef !214
  %63 = trunc i8 %62 to i1, !dbg !1708
  %64 = call zeroext i1 @match_region(ptr noundef %59, i32 noundef %60, i32 noundef %61, i1 noundef zeroext %63, ptr noundef %18, ptr noundef null) #6, !dbg !1709
  %65 = zext i1 %64 to i8, !dbg !1710
  store i8 %65, ptr %17, align 1, !dbg !1710
  br label %66, !dbg !1711

66:                                               ; preds = %58, %57
  call void @llvm.dbg.label(metadata !1643), !dbg !1712
  %67 = load ptr, ptr %13, align 4, !dbg !1713
  %68 = getelementptr inbounds %struct.sys_bitarray, ptr %67, i32 0, i32 3, !dbg !1714
  %69 = getelementptr inbounds %struct.z_spinlock_key, ptr %20, i32 0, i32 0, !dbg !1715
  %70 = load [1 x i32], ptr %69, align 4, !dbg !1715
  store [1 x i32] %70, ptr %9, align 4
  store ptr %68, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !523, metadata !DIExpression()), !dbg !1716
  call void @llvm.dbg.declare(metadata ptr %9, metadata !528, metadata !DIExpression()), !dbg !1718
  %71 = load ptr, ptr %10, align 4, !dbg !1719
  %72 = load i32, ptr %9, align 4, !dbg !1720
  store i32 %72, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !534, metadata !DIExpression()), !dbg !1721
  %73 = load i32, ptr %5, align 4, !dbg !1723
  %74 = icmp ne i32 %73, 0, !dbg !1724
  br i1 %74, label %75, label %76, !dbg !1725

75:                                               ; preds = %66
  br label %arch_irq_unlock.exit, !dbg !1726

76:                                               ; preds = %66
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #7, !dbg !1727, !srcloc !548
  br label %arch_irq_unlock.exit, !dbg !1728

arch_irq_unlock.exit:                             ; preds = %75, %76
  %77 = load i8, ptr %17, align 1, !dbg !1729, !range !1205, !noundef !214
  %78 = trunc i8 %77 to i1, !dbg !1729
  call void @llvm.lifetime.end.p0(i64 4, ptr %20) #7, !dbg !1730
  call void @llvm.lifetime.end.p0(i64 4, ptr %19) #7, !dbg !1730
  call void @llvm.lifetime.end.p0(i64 24, ptr %18) #7, !dbg !1730
  call void @llvm.lifetime.end.p0(i64 1, ptr %17) #7, !dbg !1730
  ret i1 %78, !dbg !1731
}

; Function Attrs: nounwind optsize
define hidden zeroext i1 @sys_bitarray_is_region_cleared(ptr noundef %0, i32 noundef %1, i32 noundef %2) #1 !dbg !1732 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1734, metadata !DIExpression()), !dbg !1737
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1735, metadata !DIExpression()), !dbg !1738
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1736, metadata !DIExpression()), !dbg !1739
  %7 = load ptr, ptr %4, align 4, !dbg !1740
  %8 = load i32, ptr %5, align 4, !dbg !1741
  %9 = load i32, ptr %6, align 4, !dbg !1742
  %10 = call zeroext i1 @is_region_set_clear(ptr noundef %7, i32 noundef %8, i32 noundef %9, i1 noundef zeroext false) #6, !dbg !1743
  ret i1 %10, !dbg !1744
}

; Function Attrs: nounwind optsize
define hidden i32 @sys_bitarray_test_and_set_region(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3) #1 !dbg !1745 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.z_spinlock_key, align 4
  %10 = alloca ptr, align 4
  %11 = alloca %struct.z_spinlock_key, align 4
  %12 = alloca ptr, align 4
  %13 = alloca ptr, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8, align 1
  %17 = alloca i32, align 4
  %18 = alloca i8, align 1
  %19 = alloca %struct.bundle_data, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.z_spinlock_key, align 4
  store ptr %0, ptr %13, align 4
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1749, metadata !DIExpression()), !dbg !1759
  store i32 %1, ptr %14, align 4
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1750, metadata !DIExpression()), !dbg !1760
  store i32 %2, ptr %15, align 4
  call void @llvm.dbg.declare(metadata ptr %15, metadata !1751, metadata !DIExpression()), !dbg !1761
  %22 = zext i1 %3 to i8
  store i8 %22, ptr %16, align 1
  call void @llvm.dbg.declare(metadata ptr %16, metadata !1752, metadata !DIExpression()), !dbg !1762
  call void @llvm.lifetime.start.p0(i64 4, ptr %17) #7, !dbg !1763
  call void @llvm.dbg.declare(metadata ptr %17, metadata !1753, metadata !DIExpression()), !dbg !1764
  call void @llvm.lifetime.start.p0(i64 1, ptr %18) #7, !dbg !1765
  call void @llvm.dbg.declare(metadata ptr %18, metadata !1754, metadata !DIExpression()), !dbg !1766
  call void @llvm.lifetime.start.p0(i64 24, ptr %19) #7, !dbg !1767
  call void @llvm.dbg.declare(metadata ptr %19, metadata !1755, metadata !DIExpression()), !dbg !1768
  call void @llvm.lifetime.start.p0(i64 4, ptr %20) #7, !dbg !1769
  call void @llvm.dbg.declare(metadata ptr %20, metadata !1756, metadata !DIExpression()), !dbg !1770
  %23 = load i32, ptr %15, align 4, !dbg !1771
  %24 = load i32, ptr %14, align 4, !dbg !1772
  %25 = add i32 %23, %24, !dbg !1773
  %26 = sub i32 %25, 1, !dbg !1774
  store i32 %26, ptr %20, align 4, !dbg !1770
  call void @llvm.lifetime.start.p0(i64 4, ptr %21) #7, !dbg !1775
  call void @llvm.dbg.declare(metadata ptr %21, metadata !1757, metadata !DIExpression()), !dbg !1776
  %27 = load ptr, ptr %13, align 4, !dbg !1777
  %28 = getelementptr inbounds %struct.sys_bitarray, ptr %27, i32 0, i32 3, !dbg !1778
  store ptr %28, ptr %12, align 4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !454, metadata !DIExpression()), !dbg !1779
  %29 = load ptr, ptr %12, align 4, !dbg !1781
  call void @llvm.dbg.declare(metadata ptr %11, metadata !460, metadata !DIExpression()), !dbg !1782
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #7, !dbg !1783
  call void @llvm.dbg.declare(metadata ptr %8, metadata !471, metadata !DIExpression()), !dbg !1785
  %30 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #7, !dbg !1786, !srcloc !475
  store i32 %30, ptr %8, align 4, !dbg !1786
  %31 = load i32, ptr %8, align 4, !dbg !1787
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #7, !dbg !1788
  store i32 %31, ptr %11, align 4, !dbg !1789
  %32 = load ptr, ptr %12, align 4, !dbg !1790
  store ptr %32, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !480, metadata !DIExpression()), !dbg !1791
  %33 = load ptr, ptr %7, align 4, !dbg !1793
  %34 = load ptr, ptr %12, align 4, !dbg !1794
  store ptr %34, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !489, metadata !DIExpression()), !dbg !1795
  %35 = load ptr, ptr %6, align 4, !dbg !1797
  %36 = load i32, ptr %11, align 4, !dbg !1798
  %37 = getelementptr inbounds %struct.z_spinlock_key, ptr %21, i32 0, i32 0, !dbg !1799
  store i32 %36, ptr %37, align 4, !dbg !1799
  %38 = load i32, ptr %14, align 4, !dbg !1800
  %39 = icmp eq i32 %38, 0, !dbg !1802
  br i1 %39, label %58, label %40, !dbg !1803

40:                                               ; preds = %4
  %41 = load i32, ptr %14, align 4, !dbg !1804
  %42 = load ptr, ptr %13, align 4, !dbg !1805
  %43 = getelementptr inbounds %struct.sys_bitarray, ptr %42, i32 0, i32 0, !dbg !1806
  %44 = load i32, ptr %43, align 4, !dbg !1806
  %45 = icmp ugt i32 %41, %44, !dbg !1807
  br i1 %45, label %58, label %46, !dbg !1808

46:                                               ; preds = %40
  %47 = load i32, ptr %15, align 4, !dbg !1809
  %48 = load ptr, ptr %13, align 4, !dbg !1810
  %49 = getelementptr inbounds %struct.sys_bitarray, ptr %48, i32 0, i32 0, !dbg !1811
  %50 = load i32, ptr %49, align 4, !dbg !1811
  %51 = icmp uge i32 %47, %50, !dbg !1812
  br i1 %51, label %58, label %52, !dbg !1813

52:                                               ; preds = %46
  %53 = load i32, ptr %20, align 4, !dbg !1814
  %54 = load ptr, ptr %13, align 4, !dbg !1815
  %55 = getelementptr inbounds %struct.sys_bitarray, ptr %54, i32 0, i32 0, !dbg !1816
  %56 = load i32, ptr %55, align 4, !dbg !1816
  %57 = icmp uge i32 %53, %56, !dbg !1817
  br i1 %57, label %58, label %59, !dbg !1818

58:                                               ; preds = %52, %46, %40, %4
  store i32 -5, ptr %17, align 4, !dbg !1819
  br label %78, !dbg !1821

59:                                               ; preds = %52
  %60 = load ptr, ptr %13, align 4, !dbg !1822
  %61 = load i32, ptr %15, align 4, !dbg !1823
  %62 = load i32, ptr %14, align 4, !dbg !1824
  %63 = load i8, ptr %16, align 1, !dbg !1825, !range !1205, !noundef !214
  %64 = trunc i8 %63 to i1, !dbg !1825
  %65 = xor i1 %64, true, !dbg !1826
  %66 = call zeroext i1 @match_region(ptr noundef %60, i32 noundef %61, i32 noundef %62, i1 noundef zeroext %65, ptr noundef %19, ptr noundef null) #6, !dbg !1827
  %67 = zext i1 %66 to i8, !dbg !1828
  store i8 %67, ptr %18, align 1, !dbg !1828
  %68 = load i8, ptr %18, align 1, !dbg !1829, !range !1205, !noundef !214
  %69 = trunc i8 %68 to i1, !dbg !1829
  br i1 %69, label %70, label %76, !dbg !1831

70:                                               ; preds = %59
  %71 = load ptr, ptr %13, align 4, !dbg !1832
  %72 = load i32, ptr %15, align 4, !dbg !1834
  %73 = load i32, ptr %14, align 4, !dbg !1835
  %74 = load i8, ptr %16, align 1, !dbg !1836, !range !1205, !noundef !214
  %75 = trunc i8 %74 to i1, !dbg !1836
  call void @set_region(ptr noundef %71, i32 noundef %72, i32 noundef %73, i1 noundef zeroext %75, ptr noundef %19) #6, !dbg !1837
  store i32 0, ptr %17, align 4, !dbg !1838
  br label %77, !dbg !1839

76:                                               ; preds = %59
  store i32 -17, ptr %17, align 4, !dbg !1840
  br label %77

77:                                               ; preds = %76, %70
  br label %78, !dbg !1829

78:                                               ; preds = %77, %58
  call void @llvm.dbg.label(metadata !1758), !dbg !1842
  %79 = load ptr, ptr %13, align 4, !dbg !1843
  %80 = getelementptr inbounds %struct.sys_bitarray, ptr %79, i32 0, i32 3, !dbg !1844
  %81 = getelementptr inbounds %struct.z_spinlock_key, ptr %21, i32 0, i32 0, !dbg !1845
  %82 = load [1 x i32], ptr %81, align 4, !dbg !1845
  store [1 x i32] %82, ptr %9, align 4
  store ptr %80, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !523, metadata !DIExpression()), !dbg !1846
  call void @llvm.dbg.declare(metadata ptr %9, metadata !528, metadata !DIExpression()), !dbg !1848
  %83 = load ptr, ptr %10, align 4, !dbg !1849
  %84 = load i32, ptr %9, align 4, !dbg !1850
  store i32 %84, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !534, metadata !DIExpression()), !dbg !1851
  %85 = load i32, ptr %5, align 4, !dbg !1853
  %86 = icmp ne i32 %85, 0, !dbg !1854
  br i1 %86, label %87, label %88, !dbg !1855

87:                                               ; preds = %78
  br label %arch_irq_unlock.exit, !dbg !1856

88:                                               ; preds = %78
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #7, !dbg !1857, !srcloc !548
  br label %arch_irq_unlock.exit, !dbg !1858

arch_irq_unlock.exit:                             ; preds = %87, %88
  %89 = load i32, ptr %17, align 4, !dbg !1859
  call void @llvm.lifetime.end.p0(i64 4, ptr %21) #7, !dbg !1860
  call void @llvm.lifetime.end.p0(i64 4, ptr %20) #7, !dbg !1860
  call void @llvm.lifetime.end.p0(i64 24, ptr %19) #7, !dbg !1860
  call void @llvm.lifetime.end.p0(i64 1, ptr %18) #7, !dbg !1860
  call void @llvm.lifetime.end.p0(i64 4, ptr %17) #7, !dbg !1860
  ret i32 %89, !dbg !1861
}

; Function Attrs: nounwind optsize
define hidden i32 @sys_bitarray_set_region(ptr noundef %0, i32 noundef %1, i32 noundef %2) #1 !dbg !1862 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1864, metadata !DIExpression()), !dbg !1867
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1865, metadata !DIExpression()), !dbg !1868
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1866, metadata !DIExpression()), !dbg !1869
  %7 = load ptr, ptr %4, align 4, !dbg !1870
  %8 = load i32, ptr %5, align 4, !dbg !1871
  %9 = load i32, ptr %6, align 4, !dbg !1872
  %10 = call i32 @set_clear_region(ptr noundef %7, i32 noundef %8, i32 noundef %9, i1 noundef zeroext true) #6, !dbg !1873
  ret i32 %10, !dbg !1874
}

; Function Attrs: nounwind optsize
define internal i32 @set_clear_region(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3) #1 !dbg !1875 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.z_spinlock_key, align 4
  %10 = alloca ptr, align 4
  %11 = alloca %struct.z_spinlock_key, align 4
  %12 = alloca ptr, align 4
  %13 = alloca ptr, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8, align 1
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.z_spinlock_key, align 4
  store ptr %0, ptr %13, align 4
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1877, metadata !DIExpression()), !dbg !1885
  store i32 %1, ptr %14, align 4
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1878, metadata !DIExpression()), !dbg !1886
  store i32 %2, ptr %15, align 4
  call void @llvm.dbg.declare(metadata ptr %15, metadata !1879, metadata !DIExpression()), !dbg !1887
  %20 = zext i1 %3 to i8
  store i8 %20, ptr %16, align 1
  call void @llvm.dbg.declare(metadata ptr %16, metadata !1880, metadata !DIExpression()), !dbg !1888
  call void @llvm.lifetime.start.p0(i64 4, ptr %17) #7, !dbg !1889
  call void @llvm.dbg.declare(metadata ptr %17, metadata !1881, metadata !DIExpression()), !dbg !1890
  call void @llvm.lifetime.start.p0(i64 4, ptr %18) #7, !dbg !1891
  call void @llvm.dbg.declare(metadata ptr %18, metadata !1882, metadata !DIExpression()), !dbg !1892
  %21 = load i32, ptr %15, align 4, !dbg !1893
  %22 = load i32, ptr %14, align 4, !dbg !1894
  %23 = add i32 %21, %22, !dbg !1895
  %24 = sub i32 %23, 1, !dbg !1896
  store i32 %24, ptr %18, align 4, !dbg !1892
  call void @llvm.lifetime.start.p0(i64 4, ptr %19) #7, !dbg !1897
  call void @llvm.dbg.declare(metadata ptr %19, metadata !1883, metadata !DIExpression()), !dbg !1898
  %25 = load ptr, ptr %13, align 4, !dbg !1899
  %26 = getelementptr inbounds %struct.sys_bitarray, ptr %25, i32 0, i32 3, !dbg !1900
  store ptr %26, ptr %12, align 4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !454, metadata !DIExpression()), !dbg !1901
  %27 = load ptr, ptr %12, align 4, !dbg !1903
  call void @llvm.dbg.declare(metadata ptr %11, metadata !460, metadata !DIExpression()), !dbg !1904
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #7, !dbg !1905
  call void @llvm.dbg.declare(metadata ptr %8, metadata !471, metadata !DIExpression()), !dbg !1907
  %28 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #7, !dbg !1908, !srcloc !475
  store i32 %28, ptr %8, align 4, !dbg !1908
  %29 = load i32, ptr %8, align 4, !dbg !1909
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #7, !dbg !1910
  store i32 %29, ptr %11, align 4, !dbg !1911
  %30 = load ptr, ptr %12, align 4, !dbg !1912
  store ptr %30, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !480, metadata !DIExpression()), !dbg !1913
  %31 = load ptr, ptr %7, align 4, !dbg !1915
  %32 = load ptr, ptr %12, align 4, !dbg !1916
  store ptr %32, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !489, metadata !DIExpression()), !dbg !1917
  %33 = load ptr, ptr %6, align 4, !dbg !1919
  %34 = load i32, ptr %11, align 4, !dbg !1920
  %35 = getelementptr inbounds %struct.z_spinlock_key, ptr %19, i32 0, i32 0, !dbg !1921
  store i32 %34, ptr %35, align 4, !dbg !1921
  %36 = load i32, ptr %14, align 4, !dbg !1922
  %37 = icmp eq i32 %36, 0, !dbg !1924
  br i1 %37, label %56, label %38, !dbg !1925

38:                                               ; preds = %4
  %39 = load i32, ptr %14, align 4, !dbg !1926
  %40 = load ptr, ptr %13, align 4, !dbg !1927
  %41 = getelementptr inbounds %struct.sys_bitarray, ptr %40, i32 0, i32 0, !dbg !1928
  %42 = load i32, ptr %41, align 4, !dbg !1928
  %43 = icmp ugt i32 %39, %42, !dbg !1929
  br i1 %43, label %56, label %44, !dbg !1930

44:                                               ; preds = %38
  %45 = load i32, ptr %15, align 4, !dbg !1931
  %46 = load ptr, ptr %13, align 4, !dbg !1932
  %47 = getelementptr inbounds %struct.sys_bitarray, ptr %46, i32 0, i32 0, !dbg !1933
  %48 = load i32, ptr %47, align 4, !dbg !1933
  %49 = icmp uge i32 %45, %48, !dbg !1934
  br i1 %49, label %56, label %50, !dbg !1935

50:                                               ; preds = %44
  %51 = load i32, ptr %18, align 4, !dbg !1936
  %52 = load ptr, ptr %13, align 4, !dbg !1937
  %53 = getelementptr inbounds %struct.sys_bitarray, ptr %52, i32 0, i32 0, !dbg !1938
  %54 = load i32, ptr %53, align 4, !dbg !1938
  %55 = icmp uge i32 %51, %54, !dbg !1939
  br i1 %55, label %56, label %57, !dbg !1940

56:                                               ; preds = %50, %44, %38, %4
  store i32 -5, ptr %17, align 4, !dbg !1941
  br label %63, !dbg !1943

57:                                               ; preds = %50
  %58 = load ptr, ptr %13, align 4, !dbg !1944
  %59 = load i32, ptr %15, align 4, !dbg !1945
  %60 = load i32, ptr %14, align 4, !dbg !1946
  %61 = load i8, ptr %16, align 1, !dbg !1947, !range !1205, !noundef !214
  %62 = trunc i8 %61 to i1, !dbg !1947
  call void @set_region(ptr noundef %58, i32 noundef %59, i32 noundef %60, i1 noundef zeroext %62, ptr noundef null) #6, !dbg !1948
  store i32 0, ptr %17, align 4, !dbg !1949
  br label %63, !dbg !1950

63:                                               ; preds = %57, %56
  call void @llvm.dbg.label(metadata !1884), !dbg !1951
  %64 = load ptr, ptr %13, align 4, !dbg !1952
  %65 = getelementptr inbounds %struct.sys_bitarray, ptr %64, i32 0, i32 3, !dbg !1953
  %66 = getelementptr inbounds %struct.z_spinlock_key, ptr %19, i32 0, i32 0, !dbg !1954
  %67 = load [1 x i32], ptr %66, align 4, !dbg !1954
  store [1 x i32] %67, ptr %9, align 4
  store ptr %65, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !523, metadata !DIExpression()), !dbg !1955
  call void @llvm.dbg.declare(metadata ptr %9, metadata !528, metadata !DIExpression()), !dbg !1957
  %68 = load ptr, ptr %10, align 4, !dbg !1958
  %69 = load i32, ptr %9, align 4, !dbg !1959
  store i32 %69, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !534, metadata !DIExpression()), !dbg !1960
  %70 = load i32, ptr %5, align 4, !dbg !1962
  %71 = icmp ne i32 %70, 0, !dbg !1963
  br i1 %71, label %72, label %73, !dbg !1964

72:                                               ; preds = %63
  br label %arch_irq_unlock.exit, !dbg !1965

73:                                               ; preds = %63
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #7, !dbg !1966, !srcloc !548
  br label %arch_irq_unlock.exit, !dbg !1967

arch_irq_unlock.exit:                             ; preds = %72, %73
  %74 = load i32, ptr %17, align 4, !dbg !1968
  call void @llvm.lifetime.end.p0(i64 4, ptr %19) #7, !dbg !1969
  call void @llvm.lifetime.end.p0(i64 4, ptr %18) #7, !dbg !1969
  call void @llvm.lifetime.end.p0(i64 4, ptr %17) #7, !dbg !1969
  ret i32 %74, !dbg !1970
}

; Function Attrs: nounwind optsize
define hidden i32 @sys_bitarray_clear_region(ptr noundef %0, i32 noundef %1, i32 noundef %2) #1 !dbg !1971 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1973, metadata !DIExpression()), !dbg !1976
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1974, metadata !DIExpression()), !dbg !1977
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1975, metadata !DIExpression()), !dbg !1978
  %7 = load ptr, ptr %4, align 4, !dbg !1979
  %8 = load i32, ptr %5, align 4, !dbg !1980
  %9 = load i32, ptr %6, align 4, !dbg !1981
  %10 = call i32 @set_clear_region(ptr noundef %7, i32 noundef %8, i32 noundef %9, i1 noundef zeroext false) #6, !dbg !1982
  ret i32 %10, !dbg !1983
}

; Function Attrs: optsize
declare !dbg !1984 dso_local i64 @z_timeout_expires(ptr noundef) #5

; Function Attrs: optsize
declare !dbg !1989 dso_local i64 @z_timeout_remaining(ptr noundef) #5

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @sys_sflist_is_empty(ptr noundef %0) #0 !dbg !1990 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1995, metadata !DIExpression()), !dbg !1996
  %3 = load ptr, ptr %2, align 4, !dbg !1997
  %4 = call ptr @sys_sflist_peek_head(ptr noundef %3) #6, !dbg !1998
  %5 = icmp eq ptr %4, null, !dbg !1999
  ret i1 %5, !dbg !2000
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @sys_sflist_peek_head(ptr noundef %0) #0 !dbg !2001 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2005, metadata !DIExpression()), !dbg !2006
  %3 = load ptr, ptr %2, align 4, !dbg !2007
  %4 = getelementptr inbounds %struct._sflist, ptr %3, i32 0, i32 0, !dbg !2008
  %5 = load ptr, ptr %4, align 4, !dbg !2008
  ret ptr %5, !dbg !2009
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #2

; Function Attrs: nounwind optsize
define internal void @setup_bundle_data(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #1 !dbg !2010 {
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2014, metadata !DIExpression()), !dbg !2018
  store ptr %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2015, metadata !DIExpression()), !dbg !2019
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2016, metadata !DIExpression()), !dbg !2020
  store i32 %3, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2017, metadata !DIExpression()), !dbg !2021
  %9 = load i32, ptr %7, align 4, !dbg !2022
  %10 = udiv i32 %9, 32, !dbg !2023
  %11 = load ptr, ptr %6, align 4, !dbg !2024
  %12 = getelementptr inbounds %struct.bundle_data, ptr %11, i32 0, i32 0, !dbg !2025
  store i32 %10, ptr %12, align 4, !dbg !2026
  %13 = load i32, ptr %7, align 4, !dbg !2027
  %14 = urem i32 %13, 32, !dbg !2028
  %15 = load ptr, ptr %6, align 4, !dbg !2029
  %16 = getelementptr inbounds %struct.bundle_data, ptr %15, i32 0, i32 2, !dbg !2030
  store i32 %14, ptr %16, align 4, !dbg !2031
  %17 = load i32, ptr %7, align 4, !dbg !2032
  %18 = load i32, ptr %8, align 4, !dbg !2033
  %19 = add i32 %17, %18, !dbg !2034
  %20 = sub i32 %19, 1, !dbg !2035
  %21 = udiv i32 %20, 32, !dbg !2036
  %22 = load ptr, ptr %6, align 4, !dbg !2037
  %23 = getelementptr inbounds %struct.bundle_data, ptr %22, i32 0, i32 1, !dbg !2038
  store i32 %21, ptr %23, align 4, !dbg !2039
  %24 = load i32, ptr %7, align 4, !dbg !2040
  %25 = load i32, ptr %8, align 4, !dbg !2041
  %26 = add i32 %24, %25, !dbg !2042
  %27 = sub i32 %26, 1, !dbg !2043
  %28 = urem i32 %27, 32, !dbg !2044
  %29 = load ptr, ptr %6, align 4, !dbg !2045
  %30 = getelementptr inbounds %struct.bundle_data, ptr %29, i32 0, i32 3, !dbg !2046
  store i32 %28, ptr %30, align 4, !dbg !2047
  %31 = load ptr, ptr %6, align 4, !dbg !2048
  %32 = getelementptr inbounds %struct.bundle_data, ptr %31, i32 0, i32 2, !dbg !2049
  %33 = load i32, ptr %32, align 4, !dbg !2049
  %34 = shl i32 1, %33, !dbg !2050
  %35 = sub i32 %34, 1, !dbg !2051
  %36 = xor i32 %35, -1, !dbg !2052
  %37 = load ptr, ptr %6, align 4, !dbg !2053
  %38 = getelementptr inbounds %struct.bundle_data, ptr %37, i32 0, i32 4, !dbg !2054
  store i32 %36, ptr %38, align 4, !dbg !2055
  %39 = load ptr, ptr %6, align 4, !dbg !2056
  %40 = getelementptr inbounds %struct.bundle_data, ptr %39, i32 0, i32 3, !dbg !2057
  %41 = load i32, ptr %40, align 4, !dbg !2057
  %42 = shl i32 1, %41, !dbg !2058
  %43 = sub i32 %42, 1, !dbg !2059
  %44 = load ptr, ptr %6, align 4, !dbg !2060
  %45 = getelementptr inbounds %struct.bundle_data, ptr %44, i32 0, i32 3, !dbg !2061
  %46 = load i32, ptr %45, align 4, !dbg !2061
  %47 = shl i32 1, %46, !dbg !2062
  %48 = or i32 %43, %47, !dbg !2063
  %49 = load ptr, ptr %6, align 4, !dbg !2064
  %50 = getelementptr inbounds %struct.bundle_data, ptr %49, i32 0, i32 5, !dbg !2065
  store i32 %48, ptr %50, align 4, !dbg !2066
  %51 = load ptr, ptr %6, align 4, !dbg !2067
  %52 = getelementptr inbounds %struct.bundle_data, ptr %51, i32 0, i32 0, !dbg !2069
  %53 = load i32, ptr %52, align 4, !dbg !2069
  %54 = load ptr, ptr %6, align 4, !dbg !2070
  %55 = getelementptr inbounds %struct.bundle_data, ptr %54, i32 0, i32 1, !dbg !2071
  %56 = load i32, ptr %55, align 4, !dbg !2071
  %57 = icmp eq i32 %53, %56, !dbg !2072
  br i1 %57, label %58, label %66, !dbg !2073

58:                                               ; preds = %4
  %59 = load ptr, ptr %6, align 4, !dbg !2074
  %60 = getelementptr inbounds %struct.bundle_data, ptr %59, i32 0, i32 5, !dbg !2076
  %61 = load i32, ptr %60, align 4, !dbg !2076
  %62 = load ptr, ptr %6, align 4, !dbg !2077
  %63 = getelementptr inbounds %struct.bundle_data, ptr %62, i32 0, i32 4, !dbg !2078
  %64 = load i32, ptr %63, align 4, !dbg !2079
  %65 = and i32 %64, %61, !dbg !2079
  store i32 %65, ptr %63, align 4, !dbg !2079
  br label %66, !dbg !2080

66:                                               ; preds = %58, %4
  ret void, !dbg !2081
}

attributes #0 = { inlinehint nounwind optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { optsize }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!91, !92, !93, !94, !95, !96}
!llvm.ident = !{!97}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !86, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "bitarray.c", directory: "/home/sri/zephyrproject/zephyr/build")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "k_objects", file: !4, line: 29, baseType: !5, size: 8, elements: !6)
!4 = !DIFile(filename: "include/zephyr/sys/kobject.h", directory: "/home/sri/zephyrproject/zephyr")
!5 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!6 = !{!7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85}
!7 = !DIEnumerator(name: "K_OBJ_ANY", value: 0)
!8 = !DIEnumerator(name: "K_OBJ_MEM_SLAB", value: 1)
!9 = !DIEnumerator(name: "K_OBJ_MSGQ", value: 2)
!10 = !DIEnumerator(name: "K_OBJ_MUTEX", value: 3)
!11 = !DIEnumerator(name: "K_OBJ_PIPE", value: 4)
!12 = !DIEnumerator(name: "K_OBJ_QUEUE", value: 5)
!13 = !DIEnumerator(name: "K_OBJ_POLL_SIGNAL", value: 6)
!14 = !DIEnumerator(name: "K_OBJ_SEM", value: 7)
!15 = !DIEnumerator(name: "K_OBJ_STACK", value: 8)
!16 = !DIEnumerator(name: "K_OBJ_THREAD", value: 9)
!17 = !DIEnumerator(name: "K_OBJ_TIMER", value: 10)
!18 = !DIEnumerator(name: "K_OBJ_THREAD_STACK_ELEMENT", value: 11)
!19 = !DIEnumerator(name: "K_OBJ_NET_SOCKET", value: 12)
!20 = !DIEnumerator(name: "K_OBJ_NET_IF", value: 13)
!21 = !DIEnumerator(name: "K_OBJ_SYS_MUTEX", value: 14)
!22 = !DIEnumerator(name: "K_OBJ_FUTEX", value: 15)
!23 = !DIEnumerator(name: "K_OBJ_CONDVAR", value: 16)
!24 = !DIEnumerator(name: "K_OBJ_DRIVER_GPIO", value: 17)
!25 = !DIEnumerator(name: "K_OBJ_DRIVER_RESET", value: 18)
!26 = !DIEnumerator(name: "K_OBJ_DRIVER_UART", value: 19)
!27 = !DIEnumerator(name: "K_OBJ_DRIVER_CRYPTO", value: 20)
!28 = !DIEnumerator(name: "K_OBJ_DRIVER_ADC", value: 21)
!29 = !DIEnumerator(name: "K_OBJ_DRIVER_AUXDISPLAY", value: 22)
!30 = !DIEnumerator(name: "K_OBJ_DRIVER_BBRAM", value: 23)
!31 = !DIEnumerator(name: "K_OBJ_DRIVER_CAN", value: 24)
!32 = !DIEnumerator(name: "K_OBJ_DRIVER_CHARGER", value: 25)
!33 = !DIEnumerator(name: "K_OBJ_DRIVER_COREDUMP", value: 26)
!34 = !DIEnumerator(name: "K_OBJ_DRIVER_COUNTER", value: 27)
!35 = !DIEnumerator(name: "K_OBJ_DRIVER_DAC", value: 28)
!36 = !DIEnumerator(name: "K_OBJ_DRIVER_DAI", value: 29)
!37 = !DIEnumerator(name: "K_OBJ_DRIVER_DMA", value: 30)
!38 = !DIEnumerator(name: "K_OBJ_DRIVER_EDAC", value: 31)
!39 = !DIEnumerator(name: "K_OBJ_DRIVER_EEPROM", value: 32)
!40 = !DIEnumerator(name: "K_OBJ_DRIVER_FUEL_GAUGE_EMUL", value: 33)
!41 = !DIEnumerator(name: "K_OBJ_DRIVER_EMUL_SENSOR_BACKEND_API", value: 34)
!42 = !DIEnumerator(name: "K_OBJ_DRIVER_ENTROPY", value: 35)
!43 = !DIEnumerator(name: "K_OBJ_DRIVER_ESPI", value: 36)
!44 = !DIEnumerator(name: "K_OBJ_DRIVER_ESPI_SAF", value: 37)
!45 = !DIEnumerator(name: "K_OBJ_DRIVER_FLASH", value: 38)
!46 = !DIEnumerator(name: "K_OBJ_DRIVER_FPGA", value: 39)
!47 = !DIEnumerator(name: "K_OBJ_DRIVER_FUEL_GAUGE", value: 40)
!48 = !DIEnumerator(name: "K_OBJ_DRIVER_HWSPINLOCK", value: 41)
!49 = !DIEnumerator(name: "K_OBJ_DRIVER_I2C", value: 42)
!50 = !DIEnumerator(name: "K_OBJ_DRIVER_I2S", value: 43)
!51 = !DIEnumerator(name: "K_OBJ_DRIVER_I3C", value: 44)
!52 = !DIEnumerator(name: "K_OBJ_DRIVER_IPM", value: 45)
!53 = !DIEnumerator(name: "K_OBJ_DRIVER_KSCAN", value: 46)
!54 = !DIEnumerator(name: "K_OBJ_DRIVER_LED", value: 47)
!55 = !DIEnumerator(name: "K_OBJ_DRIVER_MBOX", value: 48)
!56 = !DIEnumerator(name: "K_OBJ_DRIVER_MDIO", value: 49)
!57 = !DIEnumerator(name: "K_OBJ_DRIVER_MIPI_DSI", value: 50)
!58 = !DIEnumerator(name: "K_OBJ_DRIVER_PECI", value: 51)
!59 = !DIEnumerator(name: "K_OBJ_DRIVER_PS2", value: 52)
!60 = !DIEnumerator(name: "K_OBJ_DRIVER_PTP_CLOCK", value: 53)
!61 = !DIEnumerator(name: "K_OBJ_DRIVER_PWM", value: 54)
!62 = !DIEnumerator(name: "K_OBJ_DRIVER_REGULATOR_PARENT", value: 55)
!63 = !DIEnumerator(name: "K_OBJ_DRIVER_REGULATOR", value: 56)
!64 = !DIEnumerator(name: "K_OBJ_DRIVER_RETAINED_MEM", value: 57)
!65 = !DIEnumerator(name: "K_OBJ_DRIVER_RTC", value: 58)
!66 = !DIEnumerator(name: "K_OBJ_DRIVER_SDHC", value: 59)
!67 = !DIEnumerator(name: "K_OBJ_DRIVER_SENSOR", value: 60)
!68 = !DIEnumerator(name: "K_OBJ_DRIVER_SMBUS", value: 61)
!69 = !DIEnumerator(name: "K_OBJ_DRIVER_SPI", value: 62)
!70 = !DIEnumerator(name: "K_OBJ_DRIVER_SYSCON", value: 63)
!71 = !DIEnumerator(name: "K_OBJ_DRIVER_W1", value: 64)
!72 = !DIEnumerator(name: "K_OBJ_DRIVER_WDT", value: 65)
!73 = !DIEnumerator(name: "K_OBJ_DRIVER_CAN_TRANSCEIVER", value: 66)
!74 = !DIEnumerator(name: "K_OBJ_DRIVER_UART_MUX", value: 67)
!75 = !DIEnumerator(name: "K_OBJ_DRIVER_ITS", value: 68)
!76 = !DIEnumerator(name: "K_OBJ_DRIVER_TGPIO", value: 69)
!77 = !DIEnumerator(name: "K_OBJ_DRIVER_PCIE_CTRL", value: 70)
!78 = !DIEnumerator(name: "K_OBJ_DRIVER_SVC", value: 71)
!79 = !DIEnumerator(name: "K_OBJ_DRIVER_BC12_EMUL", value: 72)
!80 = !DIEnumerator(name: "K_OBJ_DRIVER_BC12", value: 73)
!81 = !DIEnumerator(name: "K_OBJ_DRIVER_TCPC", value: 74)
!82 = !DIEnumerator(name: "K_OBJ_DRIVER_IVSHMEM", value: 75)
!83 = !DIEnumerator(name: "K_OBJ_DRIVER_EC_HOST_CMD_BACKEND_API", value: 76)
!84 = !DIEnumerator(name: "K_OBJ_DRIVER_ETHPHY", value: 77)
!85 = !DIEnumerator(name: "K_OBJ_LAST", value: 78)
!86 = !{!87, !88}
!87 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !89, line: 64, baseType: !90)
!89 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/stdint.h", directory: "")
!90 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!91 = !{i32 7, !"Dwarf Version", i32 4}
!92 = !{i32 2, !"Debug Info Version", i32 3}
!93 = !{i32 1, !"wchar_size", i32 4}
!94 = !{i32 1, !"static_rwdata", i32 1}
!95 = !{i32 1, !"enumsize_buildattr", i32 1}
!96 = !{i32 1, !"armlib_unavailable", i32 0}
!97 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
!98 = distinct !DISubprogram(name: "z_impl_k_object_access_grant", scope: !4, file: !4, line: 223, type: !99, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !220)
!99 = !DISubroutineType(types: !100)
!100 = !{null, !101, !103}
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 32)
!102 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 32)
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_thread", file: !105, line: 250, size: 896, elements: !106)
!105 = !DIFile(filename: "include/zephyr/kernel/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!106 = !{!107, !178, !191, !192, !193, !194, !215}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !104, file: !105, line: 252, baseType: !108, size: 384)
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_base", file: !105, line: 58, size: 384, elements: !109)
!109 = !{!110, !138, !146, !148, !149, !162, !163, !165}
!110 = !DIDerivedType(tag: DW_TAG_member, scope: !108, file: !105, line: 61, baseType: !111, size: 64)
!111 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !108, file: !105, line: 61, size: 64, elements: !112)
!112 = !{!113, !129}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_dlist", scope: !111, file: !105, line: 62, baseType: !114, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dnode_t", file: !115, line: 55, baseType: !116)
!115 = !DIFile(filename: "include/zephyr/sys/dlist.h", directory: "/home/sri/zephyrproject/zephyr")
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_dnode", file: !115, line: 37, size: 64, elements: !117)
!117 = !{!118, !124}
!118 = !DIDerivedType(tag: DW_TAG_member, scope: !116, file: !115, line: 38, baseType: !119, size: 32)
!119 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !116, file: !115, line: 38, size: 32, elements: !120)
!120 = !{!121, !123}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !119, file: !115, line: 39, baseType: !122, size: 32)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 32)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !119, file: !115, line: 40, baseType: !122, size: 32)
!124 = !DIDerivedType(tag: DW_TAG_member, scope: !116, file: !115, line: 42, baseType: !125, size: 32, offset: 32)
!125 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !116, file: !115, line: 42, size: 32, elements: !126)
!126 = !{!127, !128}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !125, file: !115, line: 43, baseType: !122, size: 32)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !125, file: !115, line: 44, baseType: !122, size: 32)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_rb", scope: !111, file: !105, line: 63, baseType: !130, size: 64)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rbnode", file: !131, line: 58, size: 64, elements: !132)
!131 = !DIFile(filename: "include/zephyr/sys/rb.h", directory: "/home/sri/zephyrproject/zephyr")
!132 = !{!133}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !130, file: !131, line: 60, baseType: !134, size: 64)
!134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 64, elements: !136)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 32)
!136 = !{!137}
!137 = !DISubrange(count: 2)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "pended_on", scope: !108, file: !105, line: 69, baseType: !139, size: 32, offset: 64)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 32)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "_wait_q_t", file: !141, line: 243, baseType: !142)
!141 = !DIFile(filename: "include/zephyr/kernel_structs.h", directory: "/home/sri/zephyrproject/zephyr")
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !141, line: 241, size: 64, elements: !143)
!143 = !{!144}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !142, file: !141, line: 242, baseType: !145, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dlist_t", file: !115, line: 51, baseType: !116)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "user_options", scope: !108, file: !105, line: 72, baseType: !147, size: 8, offset: 96)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !89, line: 62, baseType: !5)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "thread_state", scope: !108, file: !105, line: 75, baseType: !147, size: 8, offset: 104)
!149 = !DIDerivedType(tag: DW_TAG_member, scope: !108, file: !105, line: 91, baseType: !150, size: 16, offset: 112)
!150 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !108, file: !105, line: 91, size: 16, elements: !151)
!151 = !{!152, !159}
!152 = !DIDerivedType(tag: DW_TAG_member, scope: !150, file: !105, line: 92, baseType: !153, size: 16)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !150, file: !105, line: 92, size: 16, elements: !154)
!154 = !{!155, !158}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !153, file: !105, line: 97, baseType: !156, size: 8)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !89, line: 56, baseType: !157)
!157 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "sched_locked", scope: !153, file: !105, line: 98, baseType: !147, size: 8, offset: 8)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "preempt", scope: !150, file: !105, line: 101, baseType: !160, size: 16)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !89, line: 63, baseType: !161)
!161 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "order_key", scope: !108, file: !105, line: 108, baseType: !88, size: 32, offset: 128)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "swap_data", scope: !108, file: !105, line: 132, baseType: !164, size: 32, offset: 160)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !108, file: !105, line: 136, baseType: !166, size: 192, offset: 192)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_timeout", file: !141, line: 254, size: 192, elements: !167)
!167 = !{!168, !169, !175}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !166, file: !141, line: 255, baseType: !114, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !166, file: !141, line: 256, baseType: !170, size: 32, offset: 64)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "_timeout_func_t", file: !141, line: 252, baseType: !171)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 32)
!172 = !DISubroutineType(types: !173)
!173 = !{null, !174}
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 32)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "dticks", scope: !166, file: !141, line: 259, baseType: !176, size: 64, offset: 128)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !89, line: 59, baseType: !177)
!177 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "callee_saved", scope: !104, file: !105, line: 255, baseType: !179, size: 288, offset: 384)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_callee_saved", file: !180, line: 25, size: 288, elements: !181)
!180 = !DIFile(filename: "include/zephyr/arch/arm/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!181 = !{!182, !183, !184, !185, !186, !187, !188, !189, !190}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "v1", scope: !179, file: !180, line: 26, baseType: !88, size: 32)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "v2", scope: !179, file: !180, line: 27, baseType: !88, size: 32, offset: 32)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "v3", scope: !179, file: !180, line: 28, baseType: !88, size: 32, offset: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "v4", scope: !179, file: !180, line: 29, baseType: !88, size: 32, offset: 96)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "v5", scope: !179, file: !180, line: 30, baseType: !88, size: 32, offset: 128)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "v6", scope: !179, file: !180, line: 31, baseType: !88, size: 32, offset: 160)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "v7", scope: !179, file: !180, line: 32, baseType: !88, size: 32, offset: 192)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "v8", scope: !179, file: !180, line: 33, baseType: !88, size: 32, offset: 224)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "psp", scope: !179, file: !180, line: 34, baseType: !88, size: 32, offset: 256)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "init_data", scope: !104, file: !105, line: 258, baseType: !164, size: 32, offset: 672)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "join_queue", scope: !104, file: !105, line: 261, baseType: !140, size: 64, offset: 704)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "errno_var", scope: !104, file: !105, line: 302, baseType: !87, size: 32, offset: 768)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "resource_pool", scope: !104, file: !105, line: 333, baseType: !195, size: 32, offset: 800)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 32)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_heap", file: !197, line: 5291, size: 160, elements: !198)
!197 = !DIFile(filename: "include/zephyr/kernel.h", directory: "/home/sri/zephyrproject/zephyr")
!198 = !{!199, !210, !211}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !196, file: !197, line: 5292, baseType: !200, size: 96)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sys_heap", file: !201, line: 56, size: 96, elements: !202)
!201 = !DIFile(filename: "include/zephyr/sys/sys_heap.h", directory: "/home/sri/zephyrproject/zephyr")
!202 = !{!203, !206, !207}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !200, file: !201, line: 57, baseType: !204, size: 32)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 32)
!205 = !DICompositeType(tag: DW_TAG_structure_type, name: "z_heap", file: !201, line: 57, flags: DIFlagFwdDecl)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "init_mem", scope: !200, file: !201, line: 58, baseType: !164, size: 32, offset: 32)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "init_bytes", scope: !200, file: !201, line: 59, baseType: !208, size: 32, offset: 64)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !209, line: 53, baseType: !90)
!209 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/stdio.h", directory: "")
!210 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !196, file: !197, line: 5293, baseType: !140, size: 64, offset: 96)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !196, file: !197, line: 5294, baseType: !212, offset: 160)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_spinlock", file: !213, line: 45, elements: !214)
!213 = !DIFile(filename: "include/zephyr/spinlock.h", directory: "/home/sri/zephyrproject/zephyr")
!214 = !{}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !104, file: !105, line: 355, baseType: !216, size: 64, offset: 832)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_arch", file: !180, line: 60, size: 64, elements: !217)
!217 = !{!218, !219}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "basepri", scope: !216, file: !180, line: 63, baseType: !88, size: 32)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "swap_return_value", scope: !216, file: !180, line: 66, baseType: !88, size: 32, offset: 32)
!220 = !{!221, !222}
!221 = !DILocalVariable(name: "object", arg: 1, scope: !98, file: !4, line: 223, type: !101)
!222 = !DILocalVariable(name: "thread", arg: 2, scope: !98, file: !4, line: 224, type: !103)
!223 = !DILocation(line: 223, column: 61, scope: !98)
!224 = !DILocation(line: 224, column: 24, scope: !98)
!225 = !DILocation(line: 226, column: 9, scope: !98)
!226 = !DILocation(line: 227, column: 9, scope: !98)
!227 = !DILocation(line: 228, column: 1, scope: !98)
!228 = distinct !DISubprogram(name: "z_impl_k_object_release", scope: !4, file: !4, line: 243, type: !229, scopeLine: 244, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !231)
!229 = !DISubroutineType(types: !230)
!230 = !{null, !101}
!231 = !{!232}
!232 = !DILocalVariable(name: "object", arg: 1, scope: !228, file: !4, line: 243, type: !101)
!233 = !DILocation(line: 243, column: 56, scope: !228)
!234 = !DILocation(line: 245, column: 9, scope: !228)
!235 = !DILocation(line: 246, column: 1, scope: !228)
!236 = distinct !DISubprogram(name: "z_impl_k_object_alloc", scope: !4, file: !4, line: 359, type: !237, scopeLine: 360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !239)
!237 = !DISubroutineType(types: !238)
!238 = !{!164, !3}
!239 = !{!240}
!240 = !DILocalVariable(name: "otype", arg: 1, scope: !236, file: !4, line: 359, type: !3)
!241 = !DILocation(line: 359, column: 58, scope: !236)
!242 = !DILocation(line: 361, column: 9, scope: !236)
!243 = !DILocation(line: 363, column: 2, scope: !236)
!244 = distinct !DISubprogram(name: "z_impl_k_object_alloc_size", scope: !4, file: !4, line: 366, type: !245, scopeLine: 368, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !247)
!245 = !DISubroutineType(types: !246)
!246 = !{!164, !3, !208}
!247 = !{!248, !249}
!248 = !DILocalVariable(name: "otype", arg: 1, scope: !244, file: !4, line: 366, type: !3)
!249 = !DILocalVariable(name: "size", arg: 2, scope: !244, file: !4, line: 367, type: !208)
!250 = !DILocation(line: 366, column: 63, scope: !244)
!251 = !DILocation(line: 367, column: 13, scope: !244)
!252 = !DILocation(line: 369, column: 9, scope: !244)
!253 = !DILocation(line: 370, column: 9, scope: !244)
!254 = !DILocation(line: 372, column: 2, scope: !244)
!255 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_expires_ticks", scope: !197, file: !197, line: 656, type: !256, scopeLine: 658, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !262)
!256 = !DISubroutineType(types: !257)
!257 = !{!258, !260}
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_ticks_t", file: !259, line: 46, baseType: !176)
!259 = !DIFile(filename: "include/zephyr/sys_clock.h", directory: "/home/sri/zephyrproject/zephyr")
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 32)
!261 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !104)
!262 = !{!263}
!263 = !DILocalVariable(name: "t", arg: 1, scope: !255, file: !197, line: 657, type: !260)
!264 = !DILocation(line: 657, column: 30, scope: !255)
!265 = !DILocation(line: 659, column: 28, scope: !255)
!266 = !DILocation(line: 659, column: 31, scope: !255)
!267 = !DILocation(line: 659, column: 36, scope: !255)
!268 = !DILocation(line: 659, column: 9, scope: !255)
!269 = !DILocation(line: 659, column: 2, scope: !255)
!270 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_remaining_ticks", scope: !197, file: !197, line: 671, type: !256, scopeLine: 673, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !271)
!271 = !{!272}
!272 = !DILocalVariable(name: "t", arg: 1, scope: !270, file: !197, line: 672, type: !260)
!273 = !DILocation(line: 672, column: 30, scope: !270)
!274 = !DILocation(line: 674, column: 30, scope: !270)
!275 = !DILocation(line: 674, column: 33, scope: !270)
!276 = !DILocation(line: 674, column: 38, scope: !270)
!277 = !DILocation(line: 674, column: 9, scope: !270)
!278 = !DILocation(line: 674, column: 2, scope: !270)
!279 = distinct !DISubprogram(name: "z_impl_k_timer_expires_ticks", scope: !197, file: !197, line: 1634, type: !280, scopeLine: 1636, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !301)
!280 = !DISubroutineType(types: !281)
!281 = !{!258, !282}
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 32)
!283 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !284)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_timer", file: !197, line: 1439, size: 448, elements: !285)
!285 = !{!286, !287, !288, !293, !294, !299, !300}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !284, file: !197, line: 1445, baseType: !166, size: 192)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !284, file: !197, line: 1448, baseType: !140, size: 64, offset: 192)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_fn", scope: !284, file: !197, line: 1451, baseType: !289, size: 32, offset: 256)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 32)
!290 = !DISubroutineType(types: !291)
!291 = !{null, !292}
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 32)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "stop_fn", scope: !284, file: !197, line: 1454, baseType: !289, size: 32, offset: 288)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !284, file: !197, line: 1457, baseType: !295, size: 64, offset: 320)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_timeout_t", file: !259, line: 67, baseType: !296)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !259, line: 65, size: 64, elements: !297)
!297 = !{!298}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "ticks", scope: !296, file: !259, line: 66, baseType: !258, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !284, file: !197, line: 1460, baseType: !88, size: 32, offset: 384)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !284, file: !197, line: 1463, baseType: !164, size: 32, offset: 416)
!301 = !{!302}
!302 = !DILocalVariable(name: "timer", arg: 1, scope: !279, file: !197, line: 1635, type: !282)
!303 = !DILocation(line: 1635, column: 34, scope: !279)
!304 = !DILocation(line: 1637, column: 28, scope: !279)
!305 = !DILocation(line: 1637, column: 35, scope: !279)
!306 = !DILocation(line: 1637, column: 9, scope: !279)
!307 = !DILocation(line: 1637, column: 2, scope: !279)
!308 = distinct !DISubprogram(name: "z_impl_k_timer_remaining_ticks", scope: !197, file: !197, line: 1649, type: !280, scopeLine: 1651, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !309)
!309 = !{!310}
!310 = !DILocalVariable(name: "timer", arg: 1, scope: !308, file: !197, line: 1650, type: !282)
!311 = !DILocation(line: 1650, column: 34, scope: !308)
!312 = !DILocation(line: 1652, column: 30, scope: !308)
!313 = !DILocation(line: 1652, column: 37, scope: !308)
!314 = !DILocation(line: 1652, column: 9, scope: !308)
!315 = !DILocation(line: 1652, column: 2, scope: !308)
!316 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_set", scope: !197, file: !197, line: 1689, type: !317, scopeLine: 1691, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !319)
!317 = !DISubroutineType(types: !318)
!318 = !{null, !292, !164}
!319 = !{!320, !321}
!320 = !DILocalVariable(name: "timer", arg: 1, scope: !316, file: !197, line: 1689, type: !292)
!321 = !DILocalVariable(name: "user_data", arg: 2, scope: !316, file: !197, line: 1690, type: !164)
!322 = !DILocation(line: 1689, column: 65, scope: !316)
!323 = !DILocation(line: 1690, column: 19, scope: !316)
!324 = !DILocation(line: 1692, column: 21, scope: !316)
!325 = !DILocation(line: 1692, column: 2, scope: !316)
!326 = !DILocation(line: 1692, column: 9, scope: !316)
!327 = !DILocation(line: 1692, column: 19, scope: !316)
!328 = !DILocation(line: 1693, column: 1, scope: !316)
!329 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_get", scope: !197, file: !197, line: 1704, type: !330, scopeLine: 1705, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !332)
!330 = !DISubroutineType(types: !331)
!331 = !{!164, !282}
!332 = !{!333}
!333 = !DILocalVariable(name: "timer", arg: 1, scope: !329, file: !197, line: 1704, type: !282)
!334 = !DILocation(line: 1704, column: 72, scope: !329)
!335 = !DILocation(line: 1706, column: 9, scope: !329)
!336 = !DILocation(line: 1706, column: 16, scope: !329)
!337 = !DILocation(line: 1706, column: 2, scope: !329)
!338 = distinct !DISubprogram(name: "z_impl_k_queue_is_empty", scope: !197, file: !197, line: 2071, type: !339, scopeLine: 2072, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !359)
!339 = !DISubroutineType(types: !340)
!340 = !{!87, !341}
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 32)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_queue", file: !197, line: 1830, size: 128, elements: !343)
!343 = !{!344, !357, !358}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "data_q", scope: !342, file: !197, line: 1831, baseType: !345, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sflist_t", file: !346, line: 60, baseType: !347)
!346 = !DIFile(filename: "include/zephyr/sys/sflist.h", directory: "/home/sri/zephyrproject/zephyr")
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sflist", file: !346, line: 53, size: 64, elements: !348)
!348 = !{!349, !356}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !347, file: !346, line: 54, baseType: !350, size: 32)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 32)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sfnode_t", file: !346, line: 50, baseType: !352)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sfnode", file: !346, line: 44, size: 32, elements: !353)
!353 = !{!354}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "next_and_flags", scope: !352, file: !346, line: 45, baseType: !355, size: 32)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "unative_t", file: !346, line: 40, baseType: !88)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !347, file: !346, line: 55, baseType: !350, size: 32, offset: 32)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !342, file: !197, line: 1832, baseType: !212, offset: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !342, file: !197, line: 1833, baseType: !140, size: 64, offset: 64)
!359 = !{!360}
!360 = !DILocalVariable(name: "queue", arg: 1, scope: !338, file: !197, line: 2071, type: !341)
!361 = !DILocation(line: 2071, column: 59, scope: !338)
!362 = !DILocation(line: 2073, column: 35, scope: !338)
!363 = !DILocation(line: 2073, column: 42, scope: !338)
!364 = !DILocation(line: 2073, column: 14, scope: !338)
!365 = !DILocation(line: 2073, column: 9, scope: !338)
!366 = !DILocation(line: 2073, column: 2, scope: !338)
!367 = distinct !DISubprogram(name: "z_impl_k_sem_count_get", scope: !197, file: !197, line: 3209, type: !368, scopeLine: 3210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !376)
!368 = !DISubroutineType(types: !369)
!369 = !{!90, !370}
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 32)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sem", file: !197, line: 3092, size: 128, elements: !372)
!372 = !{!373, !374, !375}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !371, file: !197, line: 3093, baseType: !140, size: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !371, file: !197, line: 3094, baseType: !90, size: 32, offset: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !371, file: !197, line: 3095, baseType: !90, size: 32, offset: 96)
!376 = !{!377}
!377 = !DILocalVariable(name: "sem", arg: 1, scope: !367, file: !197, line: 3209, type: !370)
!378 = !DILocation(line: 3209, column: 65, scope: !367)
!379 = !DILocation(line: 3211, column: 9, scope: !367)
!380 = !DILocation(line: 3211, column: 14, scope: !367)
!381 = !DILocation(line: 3211, column: 2, scope: !367)
!382 = distinct !DISubprogram(name: "z_impl_k_msgq_num_free_get", scope: !197, file: !197, line: 4649, type: !383, scopeLine: 4650, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !400)
!383 = !DISubroutineType(types: !384)
!384 = !{!88, !385}
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 32)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_msgq", file: !197, line: 4390, size: 320, elements: !387)
!387 = !{!388, !389, !390, !391, !392, !395, !396, !397, !398, !399}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !386, file: !197, line: 4392, baseType: !140, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !386, file: !197, line: 4394, baseType: !212, offset: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "msg_size", scope: !386, file: !197, line: 4396, baseType: !208, size: 32, offset: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !386, file: !197, line: 4398, baseType: !88, size: 32, offset: 96)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_start", scope: !386, file: !197, line: 4400, baseType: !393, size: 32, offset: 128)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 32)
!394 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_end", scope: !386, file: !197, line: 4402, baseType: !393, size: 32, offset: 160)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "read_ptr", scope: !386, file: !197, line: 4404, baseType: !393, size: 32, offset: 192)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "write_ptr", scope: !386, file: !197, line: 4406, baseType: !393, size: 32, offset: 224)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "used_msgs", scope: !386, file: !197, line: 4408, baseType: !88, size: 32, offset: 256)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !386, file: !197, line: 4413, baseType: !147, size: 8, offset: 288)
!400 = !{!401}
!401 = !DILocalVariable(name: "msgq", arg: 1, scope: !382, file: !197, line: 4649, type: !385)
!402 = !DILocation(line: 4649, column: 66, scope: !382)
!403 = !DILocation(line: 4651, column: 9, scope: !382)
!404 = !DILocation(line: 4651, column: 15, scope: !382)
!405 = !DILocation(line: 4651, column: 26, scope: !382)
!406 = !DILocation(line: 4651, column: 32, scope: !382)
!407 = !DILocation(line: 4651, column: 24, scope: !382)
!408 = !DILocation(line: 4651, column: 2, scope: !382)
!409 = distinct !DISubprogram(name: "z_impl_k_msgq_num_used_get", scope: !197, file: !197, line: 4665, type: !383, scopeLine: 4666, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !410)
!410 = !{!411}
!411 = !DILocalVariable(name: "msgq", arg: 1, scope: !409, file: !197, line: 4665, type: !385)
!412 = !DILocation(line: 4665, column: 66, scope: !409)
!413 = !DILocation(line: 4667, column: 9, scope: !409)
!414 = !DILocation(line: 4667, column: 15, scope: !409)
!415 = !DILocation(line: 4667, column: 2, scope: !409)
!416 = distinct !DISubprogram(name: "sys_bitarray_set_bit", scope: !417, file: !417, line: 213, type: !418, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !430)
!417 = !DIFile(filename: "lib/os/bitarray.c", directory: "/home/sri/zephyrproject/zephyr")
!418 = !DISubroutineType(types: !419)
!419 = !{!87, !420, !208}
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 32)
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_bitarray_t", file: !422, line: 48, baseType: !423)
!422 = !DIFile(filename: "include/zephyr/sys/bitarray.h", directory: "/home/sri/zephyrproject/zephyr")
!423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sys_bitarray", file: !422, line: 32, size: 96, elements: !424)
!424 = !{!425, !426, !427, !429}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "num_bits", scope: !423, file: !422, line: 34, baseType: !88, size: 32)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "num_bundles", scope: !423, file: !422, line: 37, baseType: !88, size: 32, offset: 32)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "bundles", scope: !423, file: !422, line: 40, baseType: !428, size: 32, offset: 64)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 32)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !423, file: !422, line: 43, baseType: !212, offset: 96)
!430 = !{!431, !432, !433, !438, !439, !440, !441}
!431 = !DILocalVariable(name: "bitarray", arg: 1, scope: !416, file: !417, line: 213, type: !420)
!432 = !DILocalVariable(name: "bit", arg: 2, scope: !416, file: !417, line: 213, type: !208)
!433 = !DILocalVariable(name: "key", scope: !416, file: !417, line: 215, type: !434)
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_spinlock_key_t", file: !213, line: 108, baseType: !435)
!435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "z_spinlock_key", file: !213, line: 34, size: 32, elements: !436)
!436 = !{!437}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !435, file: !213, line: 35, baseType: !87, size: 32)
!438 = !DILocalVariable(name: "ret", scope: !416, file: !417, line: 216, type: !87)
!439 = !DILocalVariable(name: "idx", scope: !416, file: !417, line: 217, type: !208)
!440 = !DILocalVariable(name: "off", scope: !416, file: !417, line: 217, type: !208)
!441 = !DILabel(scope: !416, name: "out", file: !417, line: 236)
!442 = !DILocation(line: 213, column: 42, scope: !416)
!443 = !DILocation(line: 213, column: 59, scope: !416)
!444 = !DILocation(line: 215, column: 2, scope: !416)
!445 = !DILocation(line: 215, column: 19, scope: !416)
!446 = !DILocation(line: 216, column: 2, scope: !416)
!447 = !DILocation(line: 216, column: 6, scope: !416)
!448 = !DILocation(line: 217, column: 2, scope: !416)
!449 = !DILocation(line: 217, column: 9, scope: !416)
!450 = !DILocation(line: 217, column: 14, scope: !416)
!451 = !DILocation(line: 219, column: 8, scope: !416)
!452 = !DILocation(line: 219, column: 21, scope: !416)
!453 = !DILocation(line: 219, column: 31, scope: !416)
!454 = !DILocalVariable(name: "l", arg: 1, scope: !455, file: !213, line: 160, type: !458)
!455 = distinct !DISubprogram(name: "k_spin_lock", scope: !213, file: !213, line: 160, type: !456, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !459)
!456 = !DISubroutineType(types: !457)
!457 = !{!434, !458}
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 32)
!459 = !{!454, !460}
!460 = !DILocalVariable(name: "k", scope: !455, file: !213, line: 163, type: !434)
!461 = !DILocation(line: 160, column: 94, scope: !455, inlinedAt: !462)
!462 = distinct !DILocation(line: 219, column: 8, scope: !416)
!463 = !DILocation(line: 162, column: 9, scope: !455, inlinedAt: !462)
!464 = !DILocation(line: 163, column: 19, scope: !455, inlinedAt: !462)
!465 = !DILocation(line: 44, column: 2, scope: !466, inlinedAt: !472)
!466 = distinct !DISubprogram(name: "arch_irq_lock", scope: !467, file: !467, line: 42, type: !468, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !470)
!467 = !DIFile(filename: "include/zephyr/arch/arm/asm_inline_gcc.h", directory: "/home/sri/zephyrproject/zephyr")
!468 = !DISubroutineType(types: !469)
!469 = !{!90}
!470 = !{!471}
!471 = !DILocalVariable(name: "key", scope: !466, file: !467, line: 44, type: !90)
!472 = distinct !DILocation(line: 169, column: 10, scope: !455, inlinedAt: !462)
!473 = !DILocation(line: 44, column: 15, scope: !466, inlinedAt: !472)
!474 = !DILocation(line: 48, column: 2, scope: !466, inlinedAt: !472)
!475 = !{i64 82286}
!476 = !DILocation(line: 80, column: 9, scope: !466, inlinedAt: !472)
!477 = !DILocation(line: 81, column: 1, scope: !466, inlinedAt: !472)
!478 = !DILocation(line: 169, column: 8, scope: !455, inlinedAt: !462)
!479 = !DILocation(line: 171, column: 26, scope: !455, inlinedAt: !462)
!480 = !DILocalVariable(name: "l", arg: 1, scope: !481, file: !213, line: 110, type: !458)
!481 = distinct !DISubprogram(name: "z_spinlock_validate_pre", scope: !213, file: !213, line: 110, type: !482, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !484)
!482 = !DISubroutineType(types: !483)
!483 = !{null, !458}
!484 = !{!480}
!485 = !DILocation(line: 110, column: 94, scope: !481, inlinedAt: !486)
!486 = distinct !DILocation(line: 171, column: 2, scope: !455, inlinedAt: !462)
!487 = !DILocation(line: 112, column: 9, scope: !481, inlinedAt: !486)
!488 = !DILocation(line: 177, column: 27, scope: !455, inlinedAt: !462)
!489 = !DILocalVariable(name: "l", arg: 1, scope: !490, file: !213, line: 121, type: !458)
!490 = distinct !DISubprogram(name: "z_spinlock_validate_post", scope: !213, file: !213, line: 121, type: !482, scopeLine: 122, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !491)
!491 = !{!489}
!492 = !DILocation(line: 121, column: 95, scope: !490, inlinedAt: !493)
!493 = distinct !DILocation(line: 177, column: 2, scope: !455, inlinedAt: !462)
!494 = !DILocation(line: 123, column: 9, scope: !490, inlinedAt: !493)
!495 = !DILocation(line: 179, column: 2, scope: !455, inlinedAt: !462)
!496 = !DILocation(line: 224, column: 6, scope: !497)
!497 = distinct !DILexicalBlock(scope: !416, file: !417, line: 224, column: 6)
!498 = !DILocation(line: 224, column: 13, scope: !497)
!499 = !DILocation(line: 224, column: 23, scope: !497)
!500 = !DILocation(line: 224, column: 10, scope: !497)
!501 = !DILocation(line: 224, column: 6, scope: !416)
!502 = !DILocation(line: 225, column: 7, scope: !503)
!503 = distinct !DILexicalBlock(scope: !497, file: !417, line: 224, column: 33)
!504 = !DILocation(line: 226, column: 3, scope: !503)
!505 = !DILocation(line: 229, column: 8, scope: !416)
!506 = !DILocation(line: 229, column: 12, scope: !416)
!507 = !DILocation(line: 229, column: 6, scope: !416)
!508 = !DILocation(line: 230, column: 8, scope: !416)
!509 = !DILocation(line: 230, column: 12, scope: !416)
!510 = !DILocation(line: 230, column: 6, scope: !416)
!511 = !DILocation(line: 232, column: 37, scope: !416)
!512 = !DILocation(line: 232, column: 33, scope: !416)
!513 = !DILocation(line: 232, column: 2, scope: !416)
!514 = !DILocation(line: 232, column: 12, scope: !416)
!515 = !DILocation(line: 232, column: 20, scope: !416)
!516 = !DILocation(line: 232, column: 25, scope: !416)
!517 = !DILocation(line: 234, column: 6, scope: !416)
!518 = !DILocation(line: 234, column: 2, scope: !416)
!519 = !DILocation(line: 236, column: 1, scope: !416)
!520 = !DILocation(line: 237, column: 17, scope: !416)
!521 = !DILocation(line: 237, column: 27, scope: !416)
!522 = !DILocation(line: 237, column: 2, scope: !416)
!523 = !DILocalVariable(name: "l", arg: 1, scope: !524, file: !213, line: 235, type: !458)
!524 = distinct !DISubprogram(name: "k_spin_unlock", scope: !213, file: !213, line: 235, type: !525, scopeLine: 237, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !527)
!525 = !DISubroutineType(types: !526)
!526 = !{null, !458, !434}
!527 = !{!523, !528}
!528 = !DILocalVariable(name: "key", arg: 2, scope: !524, file: !213, line: 236, type: !434)
!529 = !DILocation(line: 235, column: 84, scope: !524, inlinedAt: !530)
!530 = distinct !DILocation(line: 237, column: 2, scope: !416)
!531 = !DILocation(line: 236, column: 23, scope: !524, inlinedAt: !530)
!532 = !DILocation(line: 238, column: 9, scope: !524, inlinedAt: !530)
!533 = !DILocation(line: 261, column: 22, scope: !524, inlinedAt: !530)
!534 = !DILocalVariable(name: "key", arg: 1, scope: !535, file: !467, line: 88, type: !90)
!535 = distinct !DISubprogram(name: "arch_irq_unlock", scope: !467, file: !467, line: 88, type: !536, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !538)
!536 = !DISubroutineType(types: !537)
!537 = !{null, !90}
!538 = !{!534}
!539 = !DILocation(line: 88, column: 80, scope: !535, inlinedAt: !540)
!540 = distinct !DILocation(line: 261, column: 2, scope: !524, inlinedAt: !530)
!541 = !DILocation(line: 91, column: 6, scope: !542, inlinedAt: !540)
!542 = distinct !DILexicalBlock(scope: !535, file: !467, line: 91, column: 6)
!543 = !DILocation(line: 91, column: 10, scope: !542, inlinedAt: !540)
!544 = !DILocation(line: 91, column: 6, scope: !535, inlinedAt: !540)
!545 = !DILocation(line: 92, column: 3, scope: !546, inlinedAt: !540)
!546 = distinct !DILexicalBlock(scope: !542, file: !467, line: 91, column: 17)
!547 = !DILocation(line: 94, column: 2, scope: !535, inlinedAt: !540)
!548 = !{i64 82590}
!549 = !DILocation(line: 114, column: 1, scope: !535, inlinedAt: !540)
!550 = !DILocation(line: 238, column: 9, scope: !416)
!551 = !DILocation(line: 239, column: 1, scope: !416)
!552 = !DILocation(line: 238, column: 2, scope: !416)
!553 = distinct !DISubprogram(name: "sys_bitarray_clear_bit", scope: !417, file: !417, line: 241, type: !418, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !554)
!554 = !{!555, !556, !557, !558, !559, !560, !561}
!555 = !DILocalVariable(name: "bitarray", arg: 1, scope: !553, file: !417, line: 241, type: !420)
!556 = !DILocalVariable(name: "bit", arg: 2, scope: !553, file: !417, line: 241, type: !208)
!557 = !DILocalVariable(name: "key", scope: !553, file: !417, line: 243, type: !434)
!558 = !DILocalVariable(name: "ret", scope: !553, file: !417, line: 244, type: !87)
!559 = !DILocalVariable(name: "idx", scope: !553, file: !417, line: 245, type: !208)
!560 = !DILocalVariable(name: "off", scope: !553, file: !417, line: 245, type: !208)
!561 = !DILabel(scope: !553, name: "out", file: !417, line: 264)
!562 = !DILocation(line: 241, column: 44, scope: !553)
!563 = !DILocation(line: 241, column: 61, scope: !553)
!564 = !DILocation(line: 243, column: 2, scope: !553)
!565 = !DILocation(line: 243, column: 19, scope: !553)
!566 = !DILocation(line: 244, column: 2, scope: !553)
!567 = !DILocation(line: 244, column: 6, scope: !553)
!568 = !DILocation(line: 245, column: 2, scope: !553)
!569 = !DILocation(line: 245, column: 9, scope: !553)
!570 = !DILocation(line: 245, column: 14, scope: !553)
!571 = !DILocation(line: 250, column: 8, scope: !553)
!572 = !DILocation(line: 250, column: 21, scope: !553)
!573 = !DILocation(line: 250, column: 31, scope: !553)
!574 = !DILocation(line: 160, column: 94, scope: !455, inlinedAt: !575)
!575 = distinct !DILocation(line: 250, column: 8, scope: !553)
!576 = !DILocation(line: 162, column: 9, scope: !455, inlinedAt: !575)
!577 = !DILocation(line: 163, column: 19, scope: !455, inlinedAt: !575)
!578 = !DILocation(line: 44, column: 2, scope: !466, inlinedAt: !579)
!579 = distinct !DILocation(line: 169, column: 10, scope: !455, inlinedAt: !575)
!580 = !DILocation(line: 44, column: 15, scope: !466, inlinedAt: !579)
!581 = !DILocation(line: 48, column: 2, scope: !466, inlinedAt: !579)
!582 = !DILocation(line: 80, column: 9, scope: !466, inlinedAt: !579)
!583 = !DILocation(line: 81, column: 1, scope: !466, inlinedAt: !579)
!584 = !DILocation(line: 169, column: 8, scope: !455, inlinedAt: !575)
!585 = !DILocation(line: 171, column: 26, scope: !455, inlinedAt: !575)
!586 = !DILocation(line: 110, column: 94, scope: !481, inlinedAt: !587)
!587 = distinct !DILocation(line: 171, column: 2, scope: !455, inlinedAt: !575)
!588 = !DILocation(line: 112, column: 9, scope: !481, inlinedAt: !587)
!589 = !DILocation(line: 177, column: 27, scope: !455, inlinedAt: !575)
!590 = !DILocation(line: 121, column: 95, scope: !490, inlinedAt: !591)
!591 = distinct !DILocation(line: 177, column: 2, scope: !455, inlinedAt: !575)
!592 = !DILocation(line: 123, column: 9, scope: !490, inlinedAt: !591)
!593 = !DILocation(line: 179, column: 2, scope: !455, inlinedAt: !575)
!594 = !DILocation(line: 252, column: 6, scope: !595)
!595 = distinct !DILexicalBlock(scope: !553, file: !417, line: 252, column: 6)
!596 = !DILocation(line: 252, column: 13, scope: !595)
!597 = !DILocation(line: 252, column: 23, scope: !595)
!598 = !DILocation(line: 252, column: 10, scope: !595)
!599 = !DILocation(line: 252, column: 6, scope: !553)
!600 = !DILocation(line: 253, column: 7, scope: !601)
!601 = distinct !DILexicalBlock(scope: !595, file: !417, line: 252, column: 33)
!602 = !DILocation(line: 254, column: 3, scope: !601)
!603 = !DILocation(line: 257, column: 8, scope: !553)
!604 = !DILocation(line: 257, column: 12, scope: !553)
!605 = !DILocation(line: 257, column: 6, scope: !553)
!606 = !DILocation(line: 258, column: 8, scope: !553)
!607 = !DILocation(line: 258, column: 12, scope: !553)
!608 = !DILocation(line: 258, column: 6, scope: !553)
!609 = !DILocation(line: 260, column: 38, scope: !553)
!610 = !DILocation(line: 260, column: 34, scope: !553)
!611 = !DILocation(line: 260, column: 28, scope: !553)
!612 = !DILocation(line: 260, column: 2, scope: !553)
!613 = !DILocation(line: 260, column: 12, scope: !553)
!614 = !DILocation(line: 260, column: 20, scope: !553)
!615 = !DILocation(line: 260, column: 25, scope: !553)
!616 = !DILocation(line: 262, column: 6, scope: !553)
!617 = !DILocation(line: 262, column: 2, scope: !553)
!618 = !DILocation(line: 264, column: 1, scope: !553)
!619 = !DILocation(line: 265, column: 17, scope: !553)
!620 = !DILocation(line: 265, column: 27, scope: !553)
!621 = !DILocation(line: 265, column: 2, scope: !553)
!622 = !DILocation(line: 235, column: 84, scope: !524, inlinedAt: !623)
!623 = distinct !DILocation(line: 265, column: 2, scope: !553)
!624 = !DILocation(line: 236, column: 23, scope: !524, inlinedAt: !623)
!625 = !DILocation(line: 238, column: 9, scope: !524, inlinedAt: !623)
!626 = !DILocation(line: 261, column: 22, scope: !524, inlinedAt: !623)
!627 = !DILocation(line: 88, column: 80, scope: !535, inlinedAt: !628)
!628 = distinct !DILocation(line: 261, column: 2, scope: !524, inlinedAt: !623)
!629 = !DILocation(line: 91, column: 6, scope: !542, inlinedAt: !628)
!630 = !DILocation(line: 91, column: 10, scope: !542, inlinedAt: !628)
!631 = !DILocation(line: 91, column: 6, scope: !535, inlinedAt: !628)
!632 = !DILocation(line: 92, column: 3, scope: !546, inlinedAt: !628)
!633 = !DILocation(line: 94, column: 2, scope: !535, inlinedAt: !628)
!634 = !DILocation(line: 114, column: 1, scope: !535, inlinedAt: !628)
!635 = !DILocation(line: 266, column: 9, scope: !553)
!636 = !DILocation(line: 267, column: 1, scope: !553)
!637 = !DILocation(line: 266, column: 2, scope: !553)
!638 = distinct !DISubprogram(name: "sys_bitarray_test_bit", scope: !417, file: !417, line: 269, type: !639, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !642)
!639 = !DISubroutineType(types: !640)
!640 = !{!87, !420, !208, !641}
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 32)
!642 = !{!643, !644, !645, !646, !647, !648, !649, !650}
!643 = !DILocalVariable(name: "bitarray", arg: 1, scope: !638, file: !417, line: 269, type: !420)
!644 = !DILocalVariable(name: "bit", arg: 2, scope: !638, file: !417, line: 269, type: !208)
!645 = !DILocalVariable(name: "val", arg: 3, scope: !638, file: !417, line: 269, type: !641)
!646 = !DILocalVariable(name: "key", scope: !638, file: !417, line: 271, type: !434)
!647 = !DILocalVariable(name: "ret", scope: !638, file: !417, line: 272, type: !87)
!648 = !DILocalVariable(name: "idx", scope: !638, file: !417, line: 273, type: !208)
!649 = !DILocalVariable(name: "off", scope: !638, file: !417, line: 273, type: !208)
!650 = !DILabel(scope: !638, name: "out", file: !417, line: 301)
!651 = !DILocation(line: 269, column: 43, scope: !638)
!652 = !DILocation(line: 269, column: 60, scope: !638)
!653 = !DILocation(line: 269, column: 70, scope: !638)
!654 = !DILocation(line: 271, column: 2, scope: !638)
!655 = !DILocation(line: 271, column: 19, scope: !638)
!656 = !DILocation(line: 272, column: 2, scope: !638)
!657 = !DILocation(line: 272, column: 6, scope: !638)
!658 = !DILocation(line: 273, column: 2, scope: !638)
!659 = !DILocation(line: 273, column: 9, scope: !638)
!660 = !DILocation(line: 273, column: 14, scope: !638)
!661 = !DILocation(line: 278, column: 8, scope: !638)
!662 = !DILocation(line: 278, column: 21, scope: !638)
!663 = !DILocation(line: 278, column: 31, scope: !638)
!664 = !DILocation(line: 160, column: 94, scope: !455, inlinedAt: !665)
!665 = distinct !DILocation(line: 278, column: 8, scope: !638)
!666 = !DILocation(line: 162, column: 9, scope: !455, inlinedAt: !665)
!667 = !DILocation(line: 163, column: 19, scope: !455, inlinedAt: !665)
!668 = !DILocation(line: 44, column: 2, scope: !466, inlinedAt: !669)
!669 = distinct !DILocation(line: 169, column: 10, scope: !455, inlinedAt: !665)
!670 = !DILocation(line: 44, column: 15, scope: !466, inlinedAt: !669)
!671 = !DILocation(line: 48, column: 2, scope: !466, inlinedAt: !669)
!672 = !DILocation(line: 80, column: 9, scope: !466, inlinedAt: !669)
!673 = !DILocation(line: 81, column: 1, scope: !466, inlinedAt: !669)
!674 = !DILocation(line: 169, column: 8, scope: !455, inlinedAt: !665)
!675 = !DILocation(line: 171, column: 26, scope: !455, inlinedAt: !665)
!676 = !DILocation(line: 110, column: 94, scope: !481, inlinedAt: !677)
!677 = distinct !DILocation(line: 171, column: 2, scope: !455, inlinedAt: !665)
!678 = !DILocation(line: 112, column: 9, scope: !481, inlinedAt: !677)
!679 = !DILocation(line: 177, column: 27, scope: !455, inlinedAt: !665)
!680 = !DILocation(line: 121, column: 95, scope: !490, inlinedAt: !681)
!681 = distinct !DILocation(line: 177, column: 2, scope: !455, inlinedAt: !665)
!682 = !DILocation(line: 123, column: 9, scope: !490, inlinedAt: !681)
!683 = !DILocation(line: 179, column: 2, scope: !455, inlinedAt: !665)
!684 = !DILocation(line: 280, column: 6, scope: !685)
!685 = distinct !DILexicalBlock(scope: !638, file: !417, line: 280, column: 6)
!686 = !DILocation(line: 280, column: 10, scope: !685)
!687 = !DILocation(line: 280, column: 6, scope: !638)
!688 = !DILocation(line: 281, column: 7, scope: !689)
!689 = distinct !DILexicalBlock(scope: !685, file: !417, line: 280, column: 16)
!690 = !DILocation(line: 282, column: 3, scope: !689)
!691 = !DILocation(line: 285, column: 6, scope: !692)
!692 = distinct !DILexicalBlock(scope: !638, file: !417, line: 285, column: 6)
!693 = !DILocation(line: 285, column: 13, scope: !692)
!694 = !DILocation(line: 285, column: 23, scope: !692)
!695 = !DILocation(line: 285, column: 10, scope: !692)
!696 = !DILocation(line: 285, column: 6, scope: !638)
!697 = !DILocation(line: 286, column: 7, scope: !698)
!698 = distinct !DILexicalBlock(scope: !692, file: !417, line: 285, column: 33)
!699 = !DILocation(line: 287, column: 3, scope: !698)
!700 = !DILocation(line: 290, column: 8, scope: !638)
!701 = !DILocation(line: 290, column: 12, scope: !638)
!702 = !DILocation(line: 290, column: 6, scope: !638)
!703 = !DILocation(line: 291, column: 8, scope: !638)
!704 = !DILocation(line: 291, column: 12, scope: !638)
!705 = !DILocation(line: 291, column: 6, scope: !638)
!706 = !DILocation(line: 293, column: 7, scope: !707)
!707 = distinct !DILexicalBlock(scope: !638, file: !417, line: 293, column: 6)
!708 = !DILocation(line: 293, column: 17, scope: !707)
!709 = !DILocation(line: 293, column: 25, scope: !707)
!710 = !DILocation(line: 293, column: 41, scope: !707)
!711 = !DILocation(line: 293, column: 37, scope: !707)
!712 = !DILocation(line: 293, column: 30, scope: !707)
!713 = !DILocation(line: 293, column: 48, scope: !707)
!714 = !DILocation(line: 293, column: 6, scope: !638)
!715 = !DILocation(line: 294, column: 4, scope: !716)
!716 = distinct !DILexicalBlock(scope: !707, file: !417, line: 293, column: 54)
!717 = !DILocation(line: 294, column: 8, scope: !716)
!718 = !DILocation(line: 295, column: 2, scope: !716)
!719 = !DILocation(line: 296, column: 4, scope: !720)
!720 = distinct !DILexicalBlock(scope: !707, file: !417, line: 295, column: 9)
!721 = !DILocation(line: 296, column: 8, scope: !720)
!722 = !DILocation(line: 299, column: 6, scope: !638)
!723 = !DILocation(line: 299, column: 2, scope: !638)
!724 = !DILocation(line: 301, column: 1, scope: !638)
!725 = !DILocation(line: 302, column: 17, scope: !638)
!726 = !DILocation(line: 302, column: 27, scope: !638)
!727 = !DILocation(line: 302, column: 2, scope: !638)
!728 = !DILocation(line: 235, column: 84, scope: !524, inlinedAt: !729)
!729 = distinct !DILocation(line: 302, column: 2, scope: !638)
!730 = !DILocation(line: 236, column: 23, scope: !524, inlinedAt: !729)
!731 = !DILocation(line: 238, column: 9, scope: !524, inlinedAt: !729)
!732 = !DILocation(line: 261, column: 22, scope: !524, inlinedAt: !729)
!733 = !DILocation(line: 88, column: 80, scope: !535, inlinedAt: !734)
!734 = distinct !DILocation(line: 261, column: 2, scope: !524, inlinedAt: !729)
!735 = !DILocation(line: 91, column: 6, scope: !542, inlinedAt: !734)
!736 = !DILocation(line: 91, column: 10, scope: !542, inlinedAt: !734)
!737 = !DILocation(line: 91, column: 6, scope: !535, inlinedAt: !734)
!738 = !DILocation(line: 92, column: 3, scope: !546, inlinedAt: !734)
!739 = !DILocation(line: 94, column: 2, scope: !535, inlinedAt: !734)
!740 = !DILocation(line: 114, column: 1, scope: !535, inlinedAt: !734)
!741 = !DILocation(line: 303, column: 9, scope: !638)
!742 = !DILocation(line: 304, column: 1, scope: !638)
!743 = !DILocation(line: 303, column: 2, scope: !638)
!744 = distinct !DISubprogram(name: "sys_bitarray_test_and_set_bit", scope: !417, file: !417, line: 306, type: !639, scopeLine: 307, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !745)
!745 = !{!746, !747, !748, !749, !750, !751, !752, !753}
!746 = !DILocalVariable(name: "bitarray", arg: 1, scope: !744, file: !417, line: 306, type: !420)
!747 = !DILocalVariable(name: "bit", arg: 2, scope: !744, file: !417, line: 306, type: !208)
!748 = !DILocalVariable(name: "prev_val", arg: 3, scope: !744, file: !417, line: 306, type: !641)
!749 = !DILocalVariable(name: "key", scope: !744, file: !417, line: 308, type: !434)
!750 = !DILocalVariable(name: "ret", scope: !744, file: !417, line: 309, type: !87)
!751 = !DILocalVariable(name: "idx", scope: !744, file: !417, line: 310, type: !208)
!752 = !DILocalVariable(name: "off", scope: !744, file: !417, line: 310, type: !208)
!753 = !DILabel(scope: !744, name: "out", file: !417, line: 340)
!754 = !DILocation(line: 306, column: 51, scope: !744)
!755 = !DILocation(line: 306, column: 68, scope: !744)
!756 = !DILocation(line: 306, column: 78, scope: !744)
!757 = !DILocation(line: 308, column: 2, scope: !744)
!758 = !DILocation(line: 308, column: 19, scope: !744)
!759 = !DILocation(line: 309, column: 2, scope: !744)
!760 = !DILocation(line: 309, column: 6, scope: !744)
!761 = !DILocation(line: 310, column: 2, scope: !744)
!762 = !DILocation(line: 310, column: 9, scope: !744)
!763 = !DILocation(line: 310, column: 14, scope: !744)
!764 = !DILocation(line: 315, column: 8, scope: !744)
!765 = !DILocation(line: 315, column: 21, scope: !744)
!766 = !DILocation(line: 315, column: 31, scope: !744)
!767 = !DILocation(line: 160, column: 94, scope: !455, inlinedAt: !768)
!768 = distinct !DILocation(line: 315, column: 8, scope: !744)
!769 = !DILocation(line: 162, column: 9, scope: !455, inlinedAt: !768)
!770 = !DILocation(line: 163, column: 19, scope: !455, inlinedAt: !768)
!771 = !DILocation(line: 44, column: 2, scope: !466, inlinedAt: !772)
!772 = distinct !DILocation(line: 169, column: 10, scope: !455, inlinedAt: !768)
!773 = !DILocation(line: 44, column: 15, scope: !466, inlinedAt: !772)
!774 = !DILocation(line: 48, column: 2, scope: !466, inlinedAt: !772)
!775 = !DILocation(line: 80, column: 9, scope: !466, inlinedAt: !772)
!776 = !DILocation(line: 81, column: 1, scope: !466, inlinedAt: !772)
!777 = !DILocation(line: 169, column: 8, scope: !455, inlinedAt: !768)
!778 = !DILocation(line: 171, column: 26, scope: !455, inlinedAt: !768)
!779 = !DILocation(line: 110, column: 94, scope: !481, inlinedAt: !780)
!780 = distinct !DILocation(line: 171, column: 2, scope: !455, inlinedAt: !768)
!781 = !DILocation(line: 112, column: 9, scope: !481, inlinedAt: !780)
!782 = !DILocation(line: 177, column: 27, scope: !455, inlinedAt: !768)
!783 = !DILocation(line: 121, column: 95, scope: !490, inlinedAt: !784)
!784 = distinct !DILocation(line: 177, column: 2, scope: !455, inlinedAt: !768)
!785 = !DILocation(line: 123, column: 9, scope: !490, inlinedAt: !784)
!786 = !DILocation(line: 179, column: 2, scope: !455, inlinedAt: !768)
!787 = !DILocation(line: 317, column: 6, scope: !788)
!788 = distinct !DILexicalBlock(scope: !744, file: !417, line: 317, column: 6)
!789 = !DILocation(line: 317, column: 15, scope: !788)
!790 = !DILocation(line: 317, column: 6, scope: !744)
!791 = !DILocation(line: 318, column: 7, scope: !792)
!792 = distinct !DILexicalBlock(scope: !788, file: !417, line: 317, column: 21)
!793 = !DILocation(line: 319, column: 3, scope: !792)
!794 = !DILocation(line: 322, column: 6, scope: !795)
!795 = distinct !DILexicalBlock(scope: !744, file: !417, line: 322, column: 6)
!796 = !DILocation(line: 322, column: 13, scope: !795)
!797 = !DILocation(line: 322, column: 23, scope: !795)
!798 = !DILocation(line: 322, column: 10, scope: !795)
!799 = !DILocation(line: 322, column: 6, scope: !744)
!800 = !DILocation(line: 323, column: 7, scope: !801)
!801 = distinct !DILexicalBlock(scope: !795, file: !417, line: 322, column: 33)
!802 = !DILocation(line: 324, column: 3, scope: !801)
!803 = !DILocation(line: 327, column: 8, scope: !744)
!804 = !DILocation(line: 327, column: 12, scope: !744)
!805 = !DILocation(line: 327, column: 6, scope: !744)
!806 = !DILocation(line: 328, column: 8, scope: !744)
!807 = !DILocation(line: 328, column: 12, scope: !744)
!808 = !DILocation(line: 328, column: 6, scope: !744)
!809 = !DILocation(line: 330, column: 7, scope: !810)
!810 = distinct !DILexicalBlock(scope: !744, file: !417, line: 330, column: 6)
!811 = !DILocation(line: 330, column: 17, scope: !810)
!812 = !DILocation(line: 330, column: 25, scope: !810)
!813 = !DILocation(line: 330, column: 41, scope: !810)
!814 = !DILocation(line: 330, column: 37, scope: !810)
!815 = !DILocation(line: 330, column: 30, scope: !810)
!816 = !DILocation(line: 330, column: 48, scope: !810)
!817 = !DILocation(line: 330, column: 6, scope: !744)
!818 = !DILocation(line: 331, column: 4, scope: !819)
!819 = distinct !DILexicalBlock(scope: !810, file: !417, line: 330, column: 54)
!820 = !DILocation(line: 331, column: 13, scope: !819)
!821 = !DILocation(line: 332, column: 2, scope: !819)
!822 = !DILocation(line: 333, column: 4, scope: !823)
!823 = distinct !DILexicalBlock(scope: !810, file: !417, line: 332, column: 9)
!824 = !DILocation(line: 333, column: 13, scope: !823)
!825 = !DILocation(line: 336, column: 37, scope: !744)
!826 = !DILocation(line: 336, column: 33, scope: !744)
!827 = !DILocation(line: 336, column: 2, scope: !744)
!828 = !DILocation(line: 336, column: 12, scope: !744)
!829 = !DILocation(line: 336, column: 20, scope: !744)
!830 = !DILocation(line: 336, column: 25, scope: !744)
!831 = !DILocation(line: 338, column: 6, scope: !744)
!832 = !DILocation(line: 338, column: 2, scope: !744)
!833 = !DILocation(line: 340, column: 1, scope: !744)
!834 = !DILocation(line: 341, column: 17, scope: !744)
!835 = !DILocation(line: 341, column: 27, scope: !744)
!836 = !DILocation(line: 341, column: 2, scope: !744)
!837 = !DILocation(line: 235, column: 84, scope: !524, inlinedAt: !838)
!838 = distinct !DILocation(line: 341, column: 2, scope: !744)
!839 = !DILocation(line: 236, column: 23, scope: !524, inlinedAt: !838)
!840 = !DILocation(line: 238, column: 9, scope: !524, inlinedAt: !838)
!841 = !DILocation(line: 261, column: 22, scope: !524, inlinedAt: !838)
!842 = !DILocation(line: 88, column: 80, scope: !535, inlinedAt: !843)
!843 = distinct !DILocation(line: 261, column: 2, scope: !524, inlinedAt: !838)
!844 = !DILocation(line: 91, column: 6, scope: !542, inlinedAt: !843)
!845 = !DILocation(line: 91, column: 10, scope: !542, inlinedAt: !843)
!846 = !DILocation(line: 91, column: 6, scope: !535, inlinedAt: !843)
!847 = !DILocation(line: 92, column: 3, scope: !546, inlinedAt: !843)
!848 = !DILocation(line: 94, column: 2, scope: !535, inlinedAt: !843)
!849 = !DILocation(line: 114, column: 1, scope: !535, inlinedAt: !843)
!850 = !DILocation(line: 342, column: 9, scope: !744)
!851 = !DILocation(line: 343, column: 1, scope: !744)
!852 = !DILocation(line: 342, column: 2, scope: !744)
!853 = distinct !DISubprogram(name: "sys_bitarray_test_and_clear_bit", scope: !417, file: !417, line: 345, type: !639, scopeLine: 346, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !854)
!854 = !{!855, !856, !857, !858, !859, !860, !861, !862}
!855 = !DILocalVariable(name: "bitarray", arg: 1, scope: !853, file: !417, line: 345, type: !420)
!856 = !DILocalVariable(name: "bit", arg: 2, scope: !853, file: !417, line: 345, type: !208)
!857 = !DILocalVariable(name: "prev_val", arg: 3, scope: !853, file: !417, line: 345, type: !641)
!858 = !DILocalVariable(name: "key", scope: !853, file: !417, line: 347, type: !434)
!859 = !DILocalVariable(name: "ret", scope: !853, file: !417, line: 348, type: !87)
!860 = !DILocalVariable(name: "idx", scope: !853, file: !417, line: 349, type: !208)
!861 = !DILocalVariable(name: "off", scope: !853, file: !417, line: 349, type: !208)
!862 = !DILabel(scope: !853, name: "out", file: !417, line: 379)
!863 = !DILocation(line: 345, column: 53, scope: !853)
!864 = !DILocation(line: 345, column: 70, scope: !853)
!865 = !DILocation(line: 345, column: 80, scope: !853)
!866 = !DILocation(line: 347, column: 2, scope: !853)
!867 = !DILocation(line: 347, column: 19, scope: !853)
!868 = !DILocation(line: 348, column: 2, scope: !853)
!869 = !DILocation(line: 348, column: 6, scope: !853)
!870 = !DILocation(line: 349, column: 2, scope: !853)
!871 = !DILocation(line: 349, column: 9, scope: !853)
!872 = !DILocation(line: 349, column: 14, scope: !853)
!873 = !DILocation(line: 354, column: 8, scope: !853)
!874 = !DILocation(line: 354, column: 21, scope: !853)
!875 = !DILocation(line: 354, column: 31, scope: !853)
!876 = !DILocation(line: 160, column: 94, scope: !455, inlinedAt: !877)
!877 = distinct !DILocation(line: 354, column: 8, scope: !853)
!878 = !DILocation(line: 162, column: 9, scope: !455, inlinedAt: !877)
!879 = !DILocation(line: 163, column: 19, scope: !455, inlinedAt: !877)
!880 = !DILocation(line: 44, column: 2, scope: !466, inlinedAt: !881)
!881 = distinct !DILocation(line: 169, column: 10, scope: !455, inlinedAt: !877)
!882 = !DILocation(line: 44, column: 15, scope: !466, inlinedAt: !881)
!883 = !DILocation(line: 48, column: 2, scope: !466, inlinedAt: !881)
!884 = !DILocation(line: 80, column: 9, scope: !466, inlinedAt: !881)
!885 = !DILocation(line: 81, column: 1, scope: !466, inlinedAt: !881)
!886 = !DILocation(line: 169, column: 8, scope: !455, inlinedAt: !877)
!887 = !DILocation(line: 171, column: 26, scope: !455, inlinedAt: !877)
!888 = !DILocation(line: 110, column: 94, scope: !481, inlinedAt: !889)
!889 = distinct !DILocation(line: 171, column: 2, scope: !455, inlinedAt: !877)
!890 = !DILocation(line: 112, column: 9, scope: !481, inlinedAt: !889)
!891 = !DILocation(line: 177, column: 27, scope: !455, inlinedAt: !877)
!892 = !DILocation(line: 121, column: 95, scope: !490, inlinedAt: !893)
!893 = distinct !DILocation(line: 177, column: 2, scope: !455, inlinedAt: !877)
!894 = !DILocation(line: 123, column: 9, scope: !490, inlinedAt: !893)
!895 = !DILocation(line: 179, column: 2, scope: !455, inlinedAt: !877)
!896 = !DILocation(line: 356, column: 6, scope: !897)
!897 = distinct !DILexicalBlock(scope: !853, file: !417, line: 356, column: 6)
!898 = !DILocation(line: 356, column: 15, scope: !897)
!899 = !DILocation(line: 356, column: 6, scope: !853)
!900 = !DILocation(line: 357, column: 7, scope: !901)
!901 = distinct !DILexicalBlock(scope: !897, file: !417, line: 356, column: 21)
!902 = !DILocation(line: 358, column: 3, scope: !901)
!903 = !DILocation(line: 361, column: 6, scope: !904)
!904 = distinct !DILexicalBlock(scope: !853, file: !417, line: 361, column: 6)
!905 = !DILocation(line: 361, column: 13, scope: !904)
!906 = !DILocation(line: 361, column: 23, scope: !904)
!907 = !DILocation(line: 361, column: 10, scope: !904)
!908 = !DILocation(line: 361, column: 6, scope: !853)
!909 = !DILocation(line: 362, column: 7, scope: !910)
!910 = distinct !DILexicalBlock(scope: !904, file: !417, line: 361, column: 33)
!911 = !DILocation(line: 363, column: 3, scope: !910)
!912 = !DILocation(line: 366, column: 8, scope: !853)
!913 = !DILocation(line: 366, column: 12, scope: !853)
!914 = !DILocation(line: 366, column: 6, scope: !853)
!915 = !DILocation(line: 367, column: 8, scope: !853)
!916 = !DILocation(line: 367, column: 12, scope: !853)
!917 = !DILocation(line: 367, column: 6, scope: !853)
!918 = !DILocation(line: 369, column: 7, scope: !919)
!919 = distinct !DILexicalBlock(scope: !853, file: !417, line: 369, column: 6)
!920 = !DILocation(line: 369, column: 17, scope: !919)
!921 = !DILocation(line: 369, column: 25, scope: !919)
!922 = !DILocation(line: 369, column: 41, scope: !919)
!923 = !DILocation(line: 369, column: 37, scope: !919)
!924 = !DILocation(line: 369, column: 30, scope: !919)
!925 = !DILocation(line: 369, column: 48, scope: !919)
!926 = !DILocation(line: 369, column: 6, scope: !853)
!927 = !DILocation(line: 370, column: 4, scope: !928)
!928 = distinct !DILexicalBlock(scope: !919, file: !417, line: 369, column: 54)
!929 = !DILocation(line: 370, column: 13, scope: !928)
!930 = !DILocation(line: 371, column: 2, scope: !928)
!931 = !DILocation(line: 372, column: 4, scope: !932)
!932 = distinct !DILexicalBlock(scope: !919, file: !417, line: 371, column: 9)
!933 = !DILocation(line: 372, column: 13, scope: !932)
!934 = !DILocation(line: 375, column: 38, scope: !853)
!935 = !DILocation(line: 375, column: 34, scope: !853)
!936 = !DILocation(line: 375, column: 28, scope: !853)
!937 = !DILocation(line: 375, column: 2, scope: !853)
!938 = !DILocation(line: 375, column: 12, scope: !853)
!939 = !DILocation(line: 375, column: 20, scope: !853)
!940 = !DILocation(line: 375, column: 25, scope: !853)
!941 = !DILocation(line: 377, column: 6, scope: !853)
!942 = !DILocation(line: 377, column: 2, scope: !853)
!943 = !DILocation(line: 379, column: 1, scope: !853)
!944 = !DILocation(line: 380, column: 17, scope: !853)
!945 = !DILocation(line: 380, column: 27, scope: !853)
!946 = !DILocation(line: 380, column: 2, scope: !853)
!947 = !DILocation(line: 235, column: 84, scope: !524, inlinedAt: !948)
!948 = distinct !DILocation(line: 380, column: 2, scope: !853)
!949 = !DILocation(line: 236, column: 23, scope: !524, inlinedAt: !948)
!950 = !DILocation(line: 238, column: 9, scope: !524, inlinedAt: !948)
!951 = !DILocation(line: 261, column: 22, scope: !524, inlinedAt: !948)
!952 = !DILocation(line: 88, column: 80, scope: !535, inlinedAt: !953)
!953 = distinct !DILocation(line: 261, column: 2, scope: !524, inlinedAt: !948)
!954 = !DILocation(line: 91, column: 6, scope: !542, inlinedAt: !953)
!955 = !DILocation(line: 91, column: 10, scope: !542, inlinedAt: !953)
!956 = !DILocation(line: 91, column: 6, scope: !535, inlinedAt: !953)
!957 = !DILocation(line: 92, column: 3, scope: !546, inlinedAt: !953)
!958 = !DILocation(line: 94, column: 2, scope: !535, inlinedAt: !953)
!959 = !DILocation(line: 114, column: 1, scope: !535, inlinedAt: !953)
!960 = !DILocation(line: 381, column: 9, scope: !853)
!961 = !DILocation(line: 382, column: 1, scope: !853)
!962 = !DILocation(line: 381, column: 2, scope: !853)
!963 = distinct !DISubprogram(name: "sys_bitarray_alloc", scope: !417, file: !417, line: 384, type: !964, scopeLine: 386, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !967)
!964 = !DISubroutineType(types: !965)
!965 = !{!87, !420, !208, !966}
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 32)
!967 = !{!968, !969, !970, !971, !972, !973, !974, !983, !984, !985, !986, !988}
!968 = !DILocalVariable(name: "bitarray", arg: 1, scope: !963, file: !417, line: 384, type: !420)
!969 = !DILocalVariable(name: "num_bits", arg: 2, scope: !963, file: !417, line: 384, type: !208)
!970 = !DILocalVariable(name: "offset", arg: 3, scope: !963, file: !417, line: 385, type: !966)
!971 = !DILocalVariable(name: "key", scope: !963, file: !417, line: 387, type: !434)
!972 = !DILocalVariable(name: "bit_idx", scope: !963, file: !417, line: 388, type: !88)
!973 = !DILocalVariable(name: "ret", scope: !963, file: !417, line: 389, type: !87)
!974 = !DILocalVariable(name: "bd", scope: !963, file: !417, line: 390, type: !975)
!975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bundle_data", file: !417, line: 18, size: 192, elements: !976)
!976 = !{!977, !978, !979, !980, !981, !982}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "sidx", scope: !975, file: !417, line: 20, baseType: !208, size: 32)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "eidx", scope: !975, file: !417, line: 20, baseType: !208, size: 32, offset: 32)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "soff", scope: !975, file: !417, line: 23, baseType: !208, size: 32, offset: 64)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "eoff", scope: !975, file: !417, line: 23, baseType: !208, size: 32, offset: 96)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "smask", scope: !975, file: !417, line: 26, baseType: !88, size: 32, offset: 128)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "emask", scope: !975, file: !417, line: 26, baseType: !88, size: 32, offset: 160)
!983 = !DILocalVariable(name: "off_start", scope: !963, file: !417, line: 391, type: !208)
!984 = !DILocalVariable(name: "off_end", scope: !963, file: !417, line: 391, type: !208)
!985 = !DILocalVariable(name: "mismatch", scope: !963, file: !417, line: 392, type: !208)
!986 = !DILocalVariable(name: "idx", scope: !987, file: !417, line: 417, type: !208)
!987 = distinct !DILexicalBlock(scope: !963, file: !417, line: 417, column: 2)
!988 = !DILabel(scope: !963, name: "out", file: !417, line: 451)
!989 = !DILocation(line: 384, column: 40, scope: !963)
!990 = !DILocation(line: 384, column: 57, scope: !963)
!991 = !DILocation(line: 385, column: 18, scope: !963)
!992 = !DILocation(line: 387, column: 2, scope: !963)
!993 = !DILocation(line: 387, column: 19, scope: !963)
!994 = !DILocation(line: 388, column: 2, scope: !963)
!995 = !DILocation(line: 388, column: 11, scope: !963)
!996 = !DILocation(line: 389, column: 2, scope: !963)
!997 = !DILocation(line: 389, column: 6, scope: !963)
!998 = !DILocation(line: 390, column: 2, scope: !963)
!999 = !DILocation(line: 390, column: 21, scope: !963)
!1000 = !DILocation(line: 391, column: 2, scope: !963)
!1001 = !DILocation(line: 391, column: 9, scope: !963)
!1002 = !DILocation(line: 391, column: 20, scope: !963)
!1003 = !DILocation(line: 392, column: 2, scope: !963)
!1004 = !DILocation(line: 392, column: 9, scope: !963)
!1005 = !DILocation(line: 397, column: 8, scope: !963)
!1006 = !DILocation(line: 397, column: 21, scope: !963)
!1007 = !DILocation(line: 397, column: 31, scope: !963)
!1008 = !DILocation(line: 160, column: 94, scope: !455, inlinedAt: !1009)
!1009 = distinct !DILocation(line: 397, column: 8, scope: !963)
!1010 = !DILocation(line: 162, column: 9, scope: !455, inlinedAt: !1009)
!1011 = !DILocation(line: 163, column: 19, scope: !455, inlinedAt: !1009)
!1012 = !DILocation(line: 44, column: 2, scope: !466, inlinedAt: !1013)
!1013 = distinct !DILocation(line: 169, column: 10, scope: !455, inlinedAt: !1009)
!1014 = !DILocation(line: 44, column: 15, scope: !466, inlinedAt: !1013)
!1015 = !DILocation(line: 48, column: 2, scope: !466, inlinedAt: !1013)
!1016 = !DILocation(line: 80, column: 9, scope: !466, inlinedAt: !1013)
!1017 = !DILocation(line: 81, column: 1, scope: !466, inlinedAt: !1013)
!1018 = !DILocation(line: 169, column: 8, scope: !455, inlinedAt: !1009)
!1019 = !DILocation(line: 171, column: 26, scope: !455, inlinedAt: !1009)
!1020 = !DILocation(line: 110, column: 94, scope: !481, inlinedAt: !1021)
!1021 = distinct !DILocation(line: 171, column: 2, scope: !455, inlinedAt: !1009)
!1022 = !DILocation(line: 112, column: 9, scope: !481, inlinedAt: !1021)
!1023 = !DILocation(line: 177, column: 27, scope: !455, inlinedAt: !1009)
!1024 = !DILocation(line: 121, column: 95, scope: !490, inlinedAt: !1025)
!1025 = distinct !DILocation(line: 177, column: 2, scope: !455, inlinedAt: !1009)
!1026 = !DILocation(line: 123, column: 9, scope: !490, inlinedAt: !1025)
!1027 = !DILocation(line: 179, column: 2, scope: !455, inlinedAt: !1009)
!1028 = !DILocation(line: 399, column: 6, scope: !1029)
!1029 = distinct !DILexicalBlock(scope: !963, file: !417, line: 399, column: 6)
!1030 = !DILocation(line: 399, column: 13, scope: !1029)
!1031 = !DILocation(line: 399, column: 6, scope: !963)
!1032 = !DILocation(line: 400, column: 7, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !1029, file: !417, line: 399, column: 19)
!1034 = !DILocation(line: 401, column: 3, scope: !1033)
!1035 = !DILocation(line: 404, column: 7, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !963, file: !417, line: 404, column: 6)
!1037 = !DILocation(line: 404, column: 16, scope: !1036)
!1038 = !DILocation(line: 404, column: 22, scope: !1036)
!1039 = !DILocation(line: 404, column: 26, scope: !1036)
!1040 = !DILocation(line: 404, column: 37, scope: !1036)
!1041 = !DILocation(line: 404, column: 47, scope: !1036)
!1042 = !DILocation(line: 404, column: 35, scope: !1036)
!1043 = !DILocation(line: 404, column: 6, scope: !963)
!1044 = !DILocation(line: 405, column: 7, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !1036, file: !417, line: 404, column: 58)
!1046 = !DILocation(line: 406, column: 3, scope: !1045)
!1047 = !DILocation(line: 409, column: 10, scope: !963)
!1048 = !DILocation(line: 417, column: 7, scope: !987)
!1049 = !DILocation(line: 417, column: 14, scope: !987)
!1050 = !DILocation(line: 417, column: 23, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !987, file: !417, line: 417, column: 2)
!1052 = !DILocation(line: 417, column: 29, scope: !1051)
!1053 = !DILocation(line: 417, column: 39, scope: !1051)
!1054 = !DILocation(line: 417, column: 27, scope: !1051)
!1055 = !DILocation(line: 417, column: 2, scope: !987)
!1056 = !DILocation(line: 418, column: 8, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !1058, file: !417, line: 418, column: 7)
!1058 = distinct !DILexicalBlock(scope: !1051, file: !417, line: 417, column: 59)
!1059 = !DILocation(line: 418, column: 18, scope: !1057)
!1060 = !DILocation(line: 418, column: 26, scope: !1057)
!1061 = !DILocation(line: 418, column: 7, scope: !1057)
!1062 = !DILocation(line: 418, column: 31, scope: !1057)
!1063 = !DILocation(line: 418, column: 7, scope: !1058)
!1064 = !DILocation(line: 420, column: 12, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !1057, file: !417, line: 418, column: 38)
!1066 = !DILocation(line: 421, column: 4, scope: !1065)
!1067 = !DILocation(line: 424, column: 7, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1058, file: !417, line: 424, column: 7)
!1069 = !DILocation(line: 424, column: 17, scope: !1068)
!1070 = !DILocation(line: 424, column: 25, scope: !1068)
!1071 = !DILocation(line: 424, column: 30, scope: !1068)
!1072 = !DILocation(line: 424, column: 7, scope: !1058)
!1073 = !DILocation(line: 426, column: 30, scope: !1074)
!1074 = distinct !DILexicalBlock(scope: !1068, file: !417, line: 424, column: 37)
!1075 = !DILocation(line: 426, column: 40, scope: !1074)
!1076 = !DILocation(line: 426, column: 48, scope: !1074)
!1077 = !DILocation(line: 426, column: 29, scope: !1074)
!1078 = !DILocalVariable(name: "op", arg: 1, scope: !1079, file: !1080, line: 53, type: !88)
!1079 = distinct !DISubprogram(name: "find_lsb_set", scope: !1080, file: !1080, line: 53, type: !1081, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1083)
!1080 = !DIFile(filename: "include/zephyr/arch/common/ffs.h", directory: "/home/sri/zephyrproject/zephyr")
!1081 = !DISubroutineType(types: !1082)
!1082 = !{!90, !88}
!1083 = !{!1078}
!1084 = !DILocation(line: 53, column: 81, scope: !1079, inlinedAt: !1085)
!1085 = distinct !DILocation(line: 426, column: 16, scope: !1074)
!1086 = !DILocation(line: 56, column: 23, scope: !1079, inlinedAt: !1085)
!1087 = !DILocation(line: 56, column: 9, scope: !1079, inlinedAt: !1085)
!1088 = !DILocation(line: 426, column: 54, scope: !1074)
!1089 = !DILocation(line: 426, column: 14, scope: !1074)
!1090 = !DILocation(line: 427, column: 15, scope: !1074)
!1091 = !DILocation(line: 427, column: 12, scope: !1074)
!1092 = !DILocation(line: 428, column: 3, scope: !1074)
!1093 = !DILocation(line: 430, column: 3, scope: !1058)
!1094 = !DILocation(line: 417, column: 55, scope: !1051)
!1095 = !DILocation(line: 417, column: 2, scope: !1051)
!1096 = distinct !{!1096, !1055, !1097}
!1097 = !DILocation(line: 431, column: 2, scope: !987)
!1098 = !DILocation(line: 433, column: 12, scope: !963)
!1099 = !DILocation(line: 433, column: 22, scope: !963)
!1100 = !DILocation(line: 433, column: 33, scope: !963)
!1101 = !DILocation(line: 433, column: 31, scope: !963)
!1102 = !DILocation(line: 433, column: 10, scope: !963)
!1103 = !DILocation(line: 434, column: 6, scope: !963)
!1104 = !DILocation(line: 435, column: 2, scope: !963)
!1105 = !DILocation(line: 435, column: 9, scope: !963)
!1106 = !DILocation(line: 435, column: 20, scope: !963)
!1107 = !DILocation(line: 435, column: 17, scope: !963)
!1108 = !DILocation(line: 436, column: 20, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !1110, file: !417, line: 436, column: 7)
!1110 = distinct !DILexicalBlock(scope: !963, file: !417, line: 435, column: 29)
!1111 = !DILocation(line: 436, column: 30, scope: !1109)
!1112 = !DILocation(line: 436, column: 39, scope: !1109)
!1113 = !DILocation(line: 436, column: 7, scope: !1109)
!1114 = !DILocation(line: 436, column: 7, scope: !1110)
!1115 = !DILocation(line: 438, column: 15, scope: !1116)
!1116 = distinct !DILexicalBlock(scope: !1109, file: !417, line: 437, column: 23)
!1117 = !DILocation(line: 438, column: 25, scope: !1116)
!1118 = !DILocation(line: 438, column: 34, scope: !1116)
!1119 = !DILocation(line: 438, column: 4, scope: !1116)
!1120 = !DILocation(line: 440, column: 14, scope: !1116)
!1121 = !DILocation(line: 440, column: 5, scope: !1116)
!1122 = !DILocation(line: 440, column: 12, scope: !1116)
!1123 = !DILocation(line: 441, column: 8, scope: !1116)
!1124 = !DILocation(line: 442, column: 4, scope: !1116)
!1125 = !DILocation(line: 448, column: 13, scope: !1110)
!1126 = !DILocation(line: 448, column: 22, scope: !1110)
!1127 = !DILocation(line: 448, column: 11, scope: !1110)
!1128 = distinct !{!1128, !1104, !1129}
!1129 = !DILocation(line: 449, column: 2, scope: !963)
!1130 = !DILocation(line: 451, column: 1, scope: !963)
!1131 = !DILocation(line: 452, column: 17, scope: !963)
!1132 = !DILocation(line: 452, column: 27, scope: !963)
!1133 = !DILocation(line: 452, column: 2, scope: !963)
!1134 = !DILocation(line: 235, column: 84, scope: !524, inlinedAt: !1135)
!1135 = distinct !DILocation(line: 452, column: 2, scope: !963)
!1136 = !DILocation(line: 236, column: 23, scope: !524, inlinedAt: !1135)
!1137 = !DILocation(line: 238, column: 9, scope: !524, inlinedAt: !1135)
!1138 = !DILocation(line: 261, column: 22, scope: !524, inlinedAt: !1135)
!1139 = !DILocation(line: 88, column: 80, scope: !535, inlinedAt: !1140)
!1140 = distinct !DILocation(line: 261, column: 2, scope: !524, inlinedAt: !1135)
!1141 = !DILocation(line: 91, column: 6, scope: !542, inlinedAt: !1140)
!1142 = !DILocation(line: 91, column: 10, scope: !542, inlinedAt: !1140)
!1143 = !DILocation(line: 91, column: 6, scope: !535, inlinedAt: !1140)
!1144 = !DILocation(line: 92, column: 3, scope: !546, inlinedAt: !1140)
!1145 = !DILocation(line: 94, column: 2, scope: !535, inlinedAt: !1140)
!1146 = !DILocation(line: 114, column: 1, scope: !535, inlinedAt: !1140)
!1147 = !DILocation(line: 453, column: 9, scope: !963)
!1148 = !DILocation(line: 454, column: 1, scope: !963)
!1149 = !DILocation(line: 453, column: 2, scope: !963)
!1150 = distinct !DISubprogram(name: "match_region", scope: !417, file: !417, line: 65, type: !1151, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1155)
!1151 = !DISubroutineType(types: !1152)
!1152 = !{!1153, !420, !208, !208, !1153, !1154, !966}
!1153 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 32)
!1155 = !{!1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168}
!1156 = !DILocalVariable(name: "bitarray", arg: 1, scope: !1150, file: !417, line: 65, type: !420)
!1157 = !DILocalVariable(name: "offset", arg: 2, scope: !1150, file: !417, line: 65, type: !208)
!1158 = !DILocalVariable(name: "num_bits", arg: 3, scope: !1150, file: !417, line: 66, type: !208)
!1159 = !DILocalVariable(name: "match_set", arg: 4, scope: !1150, file: !417, line: 66, type: !1153)
!1160 = !DILocalVariable(name: "bd", arg: 5, scope: !1150, file: !417, line: 67, type: !1154)
!1161 = !DILocalVariable(name: "mismatch", arg: 6, scope: !1150, file: !417, line: 68, type: !966)
!1162 = !DILocalVariable(name: "idx", scope: !1150, file: !417, line: 70, type: !208)
!1163 = !DILocalVariable(name: "bundle", scope: !1150, file: !417, line: 71, type: !88)
!1164 = !DILocalVariable(name: "mismatch_bundle", scope: !1150, file: !417, line: 72, type: !88)
!1165 = !DILocalVariable(name: "mismatch_bundle_idx", scope: !1150, file: !417, line: 73, type: !208)
!1166 = !DILocalVariable(name: "mismatch_bit_off", scope: !1150, file: !417, line: 74, type: !208)
!1167 = !DILabel(scope: !1150, name: "out", file: !417, line: 141)
!1168 = !DILabel(scope: !1150, name: "mismatch", file: !417, line: 145)
!1169 = !DILocation(line: 65, column: 43, scope: !1150)
!1170 = !DILocation(line: 65, column: 60, scope: !1150)
!1171 = !DILocation(line: 66, column: 12, scope: !1150)
!1172 = !DILocation(line: 66, column: 28, scope: !1150)
!1173 = !DILocation(line: 67, column: 25, scope: !1150)
!1174 = !DILocation(line: 68, column: 13, scope: !1150)
!1175 = !DILocation(line: 70, column: 2, scope: !1150)
!1176 = !DILocation(line: 70, column: 9, scope: !1150)
!1177 = !DILocation(line: 71, column: 2, scope: !1150)
!1178 = !DILocation(line: 71, column: 11, scope: !1150)
!1179 = !DILocation(line: 72, column: 2, scope: !1150)
!1180 = !DILocation(line: 72, column: 11, scope: !1150)
!1181 = !DILocation(line: 73, column: 2, scope: !1150)
!1182 = !DILocation(line: 73, column: 9, scope: !1150)
!1183 = !DILocation(line: 74, column: 2, scope: !1150)
!1184 = !DILocation(line: 74, column: 9, scope: !1150)
!1185 = !DILocation(line: 76, column: 20, scope: !1150)
!1186 = !DILocation(line: 76, column: 30, scope: !1150)
!1187 = !DILocation(line: 76, column: 34, scope: !1150)
!1188 = !DILocation(line: 76, column: 42, scope: !1150)
!1189 = !DILocation(line: 76, column: 2, scope: !1150)
!1190 = !DILocation(line: 78, column: 6, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1150, file: !417, line: 78, column: 6)
!1192 = !DILocation(line: 78, column: 10, scope: !1191)
!1193 = !DILocation(line: 78, column: 18, scope: !1191)
!1194 = !DILocation(line: 78, column: 22, scope: !1191)
!1195 = !DILocation(line: 78, column: 15, scope: !1191)
!1196 = !DILocation(line: 78, column: 6, scope: !1150)
!1197 = !DILocation(line: 79, column: 12, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1191, file: !417, line: 78, column: 28)
!1199 = !DILocation(line: 79, column: 22, scope: !1198)
!1200 = !DILocation(line: 79, column: 30, scope: !1198)
!1201 = !DILocation(line: 79, column: 34, scope: !1198)
!1202 = !DILocation(line: 79, column: 10, scope: !1198)
!1203 = !DILocation(line: 80, column: 8, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1198, file: !417, line: 80, column: 7)
!1205 = !{i8 0, i8 2}
!1206 = !DILocation(line: 80, column: 7, scope: !1198)
!1207 = !DILocation(line: 81, column: 14, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1204, file: !417, line: 80, column: 19)
!1209 = !DILocation(line: 81, column: 13, scope: !1208)
!1210 = !DILocation(line: 81, column: 11, scope: !1208)
!1211 = !DILocation(line: 82, column: 3, scope: !1208)
!1212 = !DILocation(line: 84, column: 8, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1198, file: !417, line: 84, column: 7)
!1214 = !DILocation(line: 84, column: 17, scope: !1213)
!1215 = !DILocation(line: 84, column: 21, scope: !1213)
!1216 = !DILocation(line: 84, column: 15, scope: !1213)
!1217 = !DILocation(line: 84, column: 31, scope: !1213)
!1218 = !DILocation(line: 84, column: 35, scope: !1213)
!1219 = !DILocation(line: 84, column: 28, scope: !1213)
!1220 = !DILocation(line: 84, column: 7, scope: !1198)
!1221 = !DILocation(line: 86, column: 23, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1213, file: !417, line: 84, column: 42)
!1223 = !DILocation(line: 86, column: 22, scope: !1222)
!1224 = !DILocation(line: 86, column: 32, scope: !1222)
!1225 = !DILocation(line: 86, column: 36, scope: !1222)
!1226 = !DILocation(line: 86, column: 30, scope: !1222)
!1227 = !DILocation(line: 86, column: 20, scope: !1222)
!1228 = !DILocation(line: 87, column: 26, scope: !1222)
!1229 = !DILocation(line: 87, column: 30, scope: !1222)
!1230 = !DILocation(line: 87, column: 24, scope: !1222)
!1231 = !DILocation(line: 88, column: 4, scope: !1222)
!1232 = !DILocation(line: 91, column: 4, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !1213, file: !417, line: 89, column: 10)
!1234 = !DILocation(line: 98, column: 11, scope: !1150)
!1235 = !DILocation(line: 98, column: 21, scope: !1150)
!1236 = !DILocation(line: 98, column: 29, scope: !1150)
!1237 = !DILocation(line: 98, column: 33, scope: !1150)
!1238 = !DILocation(line: 98, column: 9, scope: !1150)
!1239 = !DILocation(line: 99, column: 7, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1150, file: !417, line: 99, column: 6)
!1241 = !DILocation(line: 99, column: 6, scope: !1150)
!1242 = !DILocation(line: 100, column: 13, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1240, file: !417, line: 99, column: 18)
!1244 = !DILocation(line: 100, column: 12, scope: !1243)
!1245 = !DILocation(line: 100, column: 10, scope: !1243)
!1246 = !DILocation(line: 101, column: 2, scope: !1243)
!1247 = !DILocation(line: 103, column: 7, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1150, file: !417, line: 103, column: 6)
!1249 = !DILocation(line: 103, column: 16, scope: !1248)
!1250 = !DILocation(line: 103, column: 20, scope: !1248)
!1251 = !DILocation(line: 103, column: 14, scope: !1248)
!1252 = !DILocation(line: 103, column: 30, scope: !1248)
!1253 = !DILocation(line: 103, column: 34, scope: !1248)
!1254 = !DILocation(line: 103, column: 27, scope: !1248)
!1255 = !DILocation(line: 103, column: 6, scope: !1150)
!1256 = !DILocation(line: 105, column: 22, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1248, file: !417, line: 103, column: 41)
!1258 = !DILocation(line: 105, column: 21, scope: !1257)
!1259 = !DILocation(line: 105, column: 31, scope: !1257)
!1260 = !DILocation(line: 105, column: 35, scope: !1257)
!1261 = !DILocation(line: 105, column: 29, scope: !1257)
!1262 = !DILocation(line: 105, column: 19, scope: !1257)
!1263 = !DILocation(line: 106, column: 25, scope: !1257)
!1264 = !DILocation(line: 106, column: 29, scope: !1257)
!1265 = !DILocation(line: 106, column: 23, scope: !1257)
!1266 = !DILocation(line: 107, column: 3, scope: !1257)
!1267 = !DILocation(line: 111, column: 11, scope: !1150)
!1268 = !DILocation(line: 111, column: 21, scope: !1150)
!1269 = !DILocation(line: 111, column: 29, scope: !1150)
!1270 = !DILocation(line: 111, column: 33, scope: !1150)
!1271 = !DILocation(line: 111, column: 9, scope: !1150)
!1272 = !DILocation(line: 112, column: 7, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1150, file: !417, line: 112, column: 6)
!1274 = !DILocation(line: 112, column: 6, scope: !1150)
!1275 = !DILocation(line: 113, column: 13, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !1273, file: !417, line: 112, column: 18)
!1277 = !DILocation(line: 113, column: 12, scope: !1276)
!1278 = !DILocation(line: 113, column: 10, scope: !1276)
!1279 = !DILocation(line: 114, column: 2, scope: !1276)
!1280 = !DILocation(line: 116, column: 7, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !1150, file: !417, line: 116, column: 6)
!1282 = !DILocation(line: 116, column: 16, scope: !1281)
!1283 = !DILocation(line: 116, column: 20, scope: !1281)
!1284 = !DILocation(line: 116, column: 14, scope: !1281)
!1285 = !DILocation(line: 116, column: 30, scope: !1281)
!1286 = !DILocation(line: 116, column: 34, scope: !1281)
!1287 = !DILocation(line: 116, column: 27, scope: !1281)
!1288 = !DILocation(line: 116, column: 6, scope: !1150)
!1289 = !DILocation(line: 118, column: 22, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1281, file: !417, line: 116, column: 41)
!1291 = !DILocation(line: 118, column: 21, scope: !1290)
!1292 = !DILocation(line: 118, column: 31, scope: !1290)
!1293 = !DILocation(line: 118, column: 35, scope: !1290)
!1294 = !DILocation(line: 118, column: 29, scope: !1290)
!1295 = !DILocation(line: 118, column: 19, scope: !1290)
!1296 = !DILocation(line: 119, column: 25, scope: !1290)
!1297 = !DILocation(line: 119, column: 29, scope: !1290)
!1298 = !DILocation(line: 119, column: 23, scope: !1290)
!1299 = !DILocation(line: 120, column: 3, scope: !1290)
!1300 = !DILocation(line: 124, column: 13, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1150, file: !417, line: 124, column: 2)
!1302 = !DILocation(line: 124, column: 17, scope: !1301)
!1303 = !DILocation(line: 124, column: 22, scope: !1301)
!1304 = !DILocation(line: 124, column: 11, scope: !1301)
!1305 = !DILocation(line: 124, column: 7, scope: !1301)
!1306 = !DILocation(line: 124, column: 27, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1301, file: !417, line: 124, column: 2)
!1308 = !DILocation(line: 124, column: 33, scope: !1307)
!1309 = !DILocation(line: 124, column: 37, scope: !1307)
!1310 = !DILocation(line: 124, column: 31, scope: !1307)
!1311 = !DILocation(line: 124, column: 2, scope: !1301)
!1312 = !DILocation(line: 128, column: 12, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1307, file: !417, line: 124, column: 50)
!1314 = !DILocation(line: 128, column: 22, scope: !1313)
!1315 = !DILocation(line: 128, column: 30, scope: !1313)
!1316 = !DILocation(line: 128, column: 10, scope: !1313)
!1317 = !DILocation(line: 129, column: 7, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !1313, file: !417, line: 129, column: 7)
!1319 = !DILocation(line: 129, column: 7, scope: !1313)
!1320 = !DILocation(line: 130, column: 14, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1318, file: !417, line: 129, column: 18)
!1322 = !DILocation(line: 130, column: 13, scope: !1321)
!1323 = !DILocation(line: 130, column: 11, scope: !1321)
!1324 = !DILocation(line: 131, column: 3, scope: !1321)
!1325 = !DILocation(line: 133, column: 7, scope: !1326)
!1326 = distinct !DILexicalBlock(scope: !1313, file: !417, line: 133, column: 7)
!1327 = !DILocation(line: 133, column: 14, scope: !1326)
!1328 = !DILocation(line: 133, column: 7, scope: !1313)
!1329 = !DILocation(line: 135, column: 22, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1326, file: !417, line: 133, column: 21)
!1331 = !DILocation(line: 135, column: 20, scope: !1330)
!1332 = !DILocation(line: 136, column: 26, scope: !1330)
!1333 = !DILocation(line: 136, column: 24, scope: !1330)
!1334 = !DILocation(line: 137, column: 4, scope: !1330)
!1335 = !DILocation(line: 139, column: 2, scope: !1313)
!1336 = !DILocation(line: 124, column: 46, scope: !1307)
!1337 = !DILocation(line: 124, column: 2, scope: !1307)
!1338 = distinct !{!1338, !1311, !1339}
!1339 = !DILocation(line: 139, column: 2, scope: !1301)
!1340 = !DILocation(line: 141, column: 1, scope: !1150)
!1341 = !DILocation(line: 143, column: 2, scope: !1150)
!1342 = !DILocation(line: 145, column: 1, scope: !1150)
!1343 = !DILocation(line: 146, column: 6, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !1150, file: !417, line: 146, column: 6)
!1345 = !DILocation(line: 146, column: 15, scope: !1344)
!1346 = !DILocation(line: 146, column: 6, scope: !1150)
!1347 = !DILocation(line: 152, column: 35, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !1344, file: !417, line: 146, column: 21)
!1349 = !DILocation(line: 53, column: 81, scope: !1079, inlinedAt: !1350)
!1350 = distinct !DILocation(line: 152, column: 22, scope: !1348)
!1351 = !DILocation(line: 56, column: 23, scope: !1079, inlinedAt: !1350)
!1352 = !DILocation(line: 56, column: 9, scope: !1079, inlinedAt: !1350)
!1353 = !DILocation(line: 152, column: 52, scope: !1348)
!1354 = !DILocation(line: 152, column: 20, scope: !1348)
!1355 = !DILocation(line: 153, column: 23, scope: !1348)
!1356 = !DILocation(line: 153, column: 43, scope: !1348)
!1357 = !DILocation(line: 153, column: 20, scope: !1348)
!1358 = !DILocation(line: 155, column: 25, scope: !1348)
!1359 = !DILocation(line: 155, column: 4, scope: !1348)
!1360 = !DILocation(line: 155, column: 13, scope: !1348)
!1361 = !DILocation(line: 156, column: 2, scope: !1348)
!1362 = !DILocation(line: 157, column: 2, scope: !1150)
!1363 = !DILocation(line: 158, column: 1, scope: !1150)
!1364 = distinct !DISubprogram(name: "set_region", scope: !417, file: !417, line: 172, type: !1365, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1367)
!1365 = !DISubroutineType(types: !1366)
!1366 = !{null, !420, !208, !208, !1153, !1154}
!1367 = !{!1368, !1369, !1370, !1371, !1372, !1373, !1374}
!1368 = !DILocalVariable(name: "bitarray", arg: 1, scope: !1364, file: !417, line: 172, type: !420)
!1369 = !DILocalVariable(name: "offset", arg: 2, scope: !1364, file: !417, line: 172, type: !208)
!1370 = !DILocalVariable(name: "num_bits", arg: 3, scope: !1364, file: !417, line: 173, type: !208)
!1371 = !DILocalVariable(name: "to_set", arg: 4, scope: !1364, file: !417, line: 173, type: !1153)
!1372 = !DILocalVariable(name: "bd", arg: 5, scope: !1364, file: !417, line: 174, type: !1154)
!1373 = !DILocalVariable(name: "idx", scope: !1364, file: !417, line: 176, type: !208)
!1374 = !DILocalVariable(name: "bdata", scope: !1364, file: !417, line: 177, type: !975)
!1375 = !DILocation(line: 172, column: 40, scope: !1364)
!1376 = !DILocation(line: 172, column: 57, scope: !1364)
!1377 = !DILocation(line: 173, column: 17, scope: !1364)
!1378 = !DILocation(line: 173, column: 33, scope: !1364)
!1379 = !DILocation(line: 174, column: 30, scope: !1364)
!1380 = !DILocation(line: 176, column: 2, scope: !1364)
!1381 = !DILocation(line: 176, column: 9, scope: !1364)
!1382 = !DILocation(line: 177, column: 2, scope: !1364)
!1383 = !DILocation(line: 177, column: 21, scope: !1364)
!1384 = !DILocation(line: 179, column: 6, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !1364, file: !417, line: 179, column: 6)
!1386 = !DILocation(line: 179, column: 9, scope: !1385)
!1387 = !DILocation(line: 179, column: 6, scope: !1364)
!1388 = !DILocation(line: 180, column: 6, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !1385, file: !417, line: 179, column: 15)
!1390 = !DILocation(line: 181, column: 21, scope: !1389)
!1391 = !DILocation(line: 181, column: 31, scope: !1389)
!1392 = !DILocation(line: 181, column: 35, scope: !1389)
!1393 = !DILocation(line: 181, column: 43, scope: !1389)
!1394 = !DILocation(line: 181, column: 3, scope: !1389)
!1395 = !DILocation(line: 182, column: 2, scope: !1389)
!1396 = !DILocation(line: 184, column: 6, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1364, file: !417, line: 184, column: 6)
!1398 = !DILocation(line: 184, column: 10, scope: !1397)
!1399 = !DILocation(line: 184, column: 18, scope: !1397)
!1400 = !DILocation(line: 184, column: 22, scope: !1397)
!1401 = !DILocation(line: 184, column: 15, scope: !1397)
!1402 = !DILocation(line: 184, column: 6, scope: !1364)
!1403 = !DILocation(line: 186, column: 7, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !1405, file: !417, line: 186, column: 7)
!1405 = distinct !DILexicalBlock(scope: !1397, file: !417, line: 184, column: 28)
!1406 = !DILocation(line: 186, column: 7, scope: !1405)
!1407 = !DILocation(line: 187, column: 35, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1404, file: !417, line: 186, column: 15)
!1409 = !DILocation(line: 187, column: 39, scope: !1408)
!1410 = !DILocation(line: 187, column: 4, scope: !1408)
!1411 = !DILocation(line: 187, column: 14, scope: !1408)
!1412 = !DILocation(line: 187, column: 22, scope: !1408)
!1413 = !DILocation(line: 187, column: 26, scope: !1408)
!1414 = !DILocation(line: 187, column: 32, scope: !1408)
!1415 = !DILocation(line: 188, column: 3, scope: !1408)
!1416 = !DILocation(line: 189, column: 36, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !1404, file: !417, line: 188, column: 10)
!1418 = !DILocation(line: 189, column: 40, scope: !1417)
!1419 = !DILocation(line: 189, column: 35, scope: !1417)
!1420 = !DILocation(line: 189, column: 4, scope: !1417)
!1421 = !DILocation(line: 189, column: 14, scope: !1417)
!1422 = !DILocation(line: 189, column: 22, scope: !1417)
!1423 = !DILocation(line: 189, column: 26, scope: !1417)
!1424 = !DILocation(line: 189, column: 32, scope: !1417)
!1425 = !DILocation(line: 191, column: 2, scope: !1405)
!1426 = !DILocation(line: 197, column: 7, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !1428, file: !417, line: 197, column: 7)
!1428 = distinct !DILexicalBlock(scope: !1397, file: !417, line: 191, column: 9)
!1429 = !DILocation(line: 197, column: 7, scope: !1428)
!1430 = !DILocation(line: 198, column: 35, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1427, file: !417, line: 197, column: 15)
!1432 = !DILocation(line: 198, column: 39, scope: !1431)
!1433 = !DILocation(line: 198, column: 4, scope: !1431)
!1434 = !DILocation(line: 198, column: 14, scope: !1431)
!1435 = !DILocation(line: 198, column: 22, scope: !1431)
!1436 = !DILocation(line: 198, column: 26, scope: !1431)
!1437 = !DILocation(line: 198, column: 32, scope: !1431)
!1438 = !DILocation(line: 199, column: 35, scope: !1431)
!1439 = !DILocation(line: 199, column: 39, scope: !1431)
!1440 = !DILocation(line: 199, column: 4, scope: !1431)
!1441 = !DILocation(line: 199, column: 14, scope: !1431)
!1442 = !DILocation(line: 199, column: 22, scope: !1431)
!1443 = !DILocation(line: 199, column: 26, scope: !1431)
!1444 = !DILocation(line: 199, column: 32, scope: !1431)
!1445 = !DILocation(line: 200, column: 15, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !1431, file: !417, line: 200, column: 4)
!1447 = !DILocation(line: 200, column: 19, scope: !1446)
!1448 = !DILocation(line: 200, column: 24, scope: !1446)
!1449 = !DILocation(line: 200, column: 13, scope: !1446)
!1450 = !DILocation(line: 200, column: 9, scope: !1446)
!1451 = !DILocation(line: 200, column: 29, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1446, file: !417, line: 200, column: 4)
!1453 = !DILocation(line: 200, column: 35, scope: !1452)
!1454 = !DILocation(line: 200, column: 39, scope: !1452)
!1455 = !DILocation(line: 200, column: 33, scope: !1452)
!1456 = !DILocation(line: 200, column: 4, scope: !1446)
!1457 = !DILocation(line: 201, column: 5, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1452, file: !417, line: 200, column: 52)
!1459 = !DILocation(line: 201, column: 15, scope: !1458)
!1460 = !DILocation(line: 201, column: 23, scope: !1458)
!1461 = !DILocation(line: 201, column: 28, scope: !1458)
!1462 = !DILocation(line: 202, column: 4, scope: !1458)
!1463 = !DILocation(line: 200, column: 48, scope: !1452)
!1464 = !DILocation(line: 200, column: 4, scope: !1452)
!1465 = distinct !{!1465, !1456, !1466}
!1466 = !DILocation(line: 202, column: 4, scope: !1446)
!1467 = !DILocation(line: 203, column: 3, scope: !1431)
!1468 = !DILocation(line: 204, column: 36, scope: !1469)
!1469 = distinct !DILexicalBlock(scope: !1427, file: !417, line: 203, column: 10)
!1470 = !DILocation(line: 204, column: 40, scope: !1469)
!1471 = !DILocation(line: 204, column: 35, scope: !1469)
!1472 = !DILocation(line: 204, column: 4, scope: !1469)
!1473 = !DILocation(line: 204, column: 14, scope: !1469)
!1474 = !DILocation(line: 204, column: 22, scope: !1469)
!1475 = !DILocation(line: 204, column: 26, scope: !1469)
!1476 = !DILocation(line: 204, column: 32, scope: !1469)
!1477 = !DILocation(line: 205, column: 36, scope: !1469)
!1478 = !DILocation(line: 205, column: 40, scope: !1469)
!1479 = !DILocation(line: 205, column: 35, scope: !1469)
!1480 = !DILocation(line: 205, column: 4, scope: !1469)
!1481 = !DILocation(line: 205, column: 14, scope: !1469)
!1482 = !DILocation(line: 205, column: 22, scope: !1469)
!1483 = !DILocation(line: 205, column: 26, scope: !1469)
!1484 = !DILocation(line: 205, column: 32, scope: !1469)
!1485 = !DILocation(line: 206, column: 15, scope: !1486)
!1486 = distinct !DILexicalBlock(scope: !1469, file: !417, line: 206, column: 4)
!1487 = !DILocation(line: 206, column: 19, scope: !1486)
!1488 = !DILocation(line: 206, column: 24, scope: !1486)
!1489 = !DILocation(line: 206, column: 13, scope: !1486)
!1490 = !DILocation(line: 206, column: 9, scope: !1486)
!1491 = !DILocation(line: 206, column: 29, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1486, file: !417, line: 206, column: 4)
!1493 = !DILocation(line: 206, column: 35, scope: !1492)
!1494 = !DILocation(line: 206, column: 39, scope: !1492)
!1495 = !DILocation(line: 206, column: 33, scope: !1492)
!1496 = !DILocation(line: 206, column: 4, scope: !1486)
!1497 = !DILocation(line: 207, column: 5, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1492, file: !417, line: 206, column: 52)
!1499 = !DILocation(line: 207, column: 15, scope: !1498)
!1500 = !DILocation(line: 207, column: 23, scope: !1498)
!1501 = !DILocation(line: 207, column: 28, scope: !1498)
!1502 = !DILocation(line: 208, column: 4, scope: !1498)
!1503 = !DILocation(line: 206, column: 48, scope: !1492)
!1504 = !DILocation(line: 206, column: 4, scope: !1492)
!1505 = distinct !{!1505, !1496, !1506}
!1506 = !DILocation(line: 208, column: 4, scope: !1486)
!1507 = !DILocation(line: 211, column: 1, scope: !1364)
!1508 = distinct !DISubprogram(name: "sys_bitarray_free", scope: !417, file: !417, line: 456, type: !1509, scopeLine: 458, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1511)
!1509 = !DISubroutineType(types: !1510)
!1510 = !{!87, !420, !208, !208}
!1511 = !{!1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519}
!1512 = !DILocalVariable(name: "bitarray", arg: 1, scope: !1508, file: !417, line: 456, type: !420)
!1513 = !DILocalVariable(name: "num_bits", arg: 2, scope: !1508, file: !417, line: 456, type: !208)
!1514 = !DILocalVariable(name: "offset", arg: 3, scope: !1508, file: !417, line: 457, type: !208)
!1515 = !DILocalVariable(name: "key", scope: !1508, file: !417, line: 459, type: !434)
!1516 = !DILocalVariable(name: "ret", scope: !1508, file: !417, line: 460, type: !87)
!1517 = !DILocalVariable(name: "off_end", scope: !1508, file: !417, line: 461, type: !208)
!1518 = !DILocalVariable(name: "bd", scope: !1508, file: !417, line: 462, type: !975)
!1519 = !DILabel(scope: !1508, name: "out", file: !417, line: 488)
!1520 = !DILocation(line: 456, column: 39, scope: !1508)
!1521 = !DILocation(line: 456, column: 56, scope: !1508)
!1522 = !DILocation(line: 457, column: 16, scope: !1508)
!1523 = !DILocation(line: 459, column: 2, scope: !1508)
!1524 = !DILocation(line: 459, column: 19, scope: !1508)
!1525 = !DILocation(line: 460, column: 2, scope: !1508)
!1526 = !DILocation(line: 460, column: 6, scope: !1508)
!1527 = !DILocation(line: 461, column: 2, scope: !1508)
!1528 = !DILocation(line: 461, column: 9, scope: !1508)
!1529 = !DILocation(line: 461, column: 19, scope: !1508)
!1530 = !DILocation(line: 461, column: 28, scope: !1508)
!1531 = !DILocation(line: 461, column: 26, scope: !1508)
!1532 = !DILocation(line: 461, column: 37, scope: !1508)
!1533 = !DILocation(line: 462, column: 2, scope: !1508)
!1534 = !DILocation(line: 462, column: 21, scope: !1508)
!1535 = !DILocation(line: 467, column: 8, scope: !1508)
!1536 = !DILocation(line: 467, column: 21, scope: !1508)
!1537 = !DILocation(line: 467, column: 31, scope: !1508)
!1538 = !DILocation(line: 160, column: 94, scope: !455, inlinedAt: !1539)
!1539 = distinct !DILocation(line: 467, column: 8, scope: !1508)
!1540 = !DILocation(line: 162, column: 9, scope: !455, inlinedAt: !1539)
!1541 = !DILocation(line: 163, column: 19, scope: !455, inlinedAt: !1539)
!1542 = !DILocation(line: 44, column: 2, scope: !466, inlinedAt: !1543)
!1543 = distinct !DILocation(line: 169, column: 10, scope: !455, inlinedAt: !1539)
!1544 = !DILocation(line: 44, column: 15, scope: !466, inlinedAt: !1543)
!1545 = !DILocation(line: 48, column: 2, scope: !466, inlinedAt: !1543)
!1546 = !DILocation(line: 80, column: 9, scope: !466, inlinedAt: !1543)
!1547 = !DILocation(line: 81, column: 1, scope: !466, inlinedAt: !1543)
!1548 = !DILocation(line: 169, column: 8, scope: !455, inlinedAt: !1539)
!1549 = !DILocation(line: 171, column: 26, scope: !455, inlinedAt: !1539)
!1550 = !DILocation(line: 110, column: 94, scope: !481, inlinedAt: !1551)
!1551 = distinct !DILocation(line: 171, column: 2, scope: !455, inlinedAt: !1539)
!1552 = !DILocation(line: 112, column: 9, scope: !481, inlinedAt: !1551)
!1553 = !DILocation(line: 177, column: 27, scope: !455, inlinedAt: !1539)
!1554 = !DILocation(line: 121, column: 95, scope: !490, inlinedAt: !1555)
!1555 = distinct !DILocation(line: 177, column: 2, scope: !455, inlinedAt: !1539)
!1556 = !DILocation(line: 123, column: 9, scope: !490, inlinedAt: !1555)
!1557 = !DILocation(line: 179, column: 2, scope: !455, inlinedAt: !1539)
!1558 = !DILocation(line: 469, column: 7, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1508, file: !417, line: 469, column: 6)
!1560 = !DILocation(line: 469, column: 16, scope: !1559)
!1561 = !DILocation(line: 470, column: 6, scope: !1559)
!1562 = !DILocation(line: 470, column: 10, scope: !1559)
!1563 = !DILocation(line: 470, column: 21, scope: !1559)
!1564 = !DILocation(line: 470, column: 31, scope: !1559)
!1565 = !DILocation(line: 470, column: 19, scope: !1559)
!1566 = !DILocation(line: 471, column: 6, scope: !1559)
!1567 = !DILocation(line: 471, column: 10, scope: !1559)
!1568 = !DILocation(line: 471, column: 20, scope: !1559)
!1569 = !DILocation(line: 471, column: 30, scope: !1559)
!1570 = !DILocation(line: 471, column: 17, scope: !1559)
!1571 = !DILocation(line: 472, column: 6, scope: !1559)
!1572 = !DILocation(line: 472, column: 10, scope: !1559)
!1573 = !DILocation(line: 472, column: 21, scope: !1559)
!1574 = !DILocation(line: 472, column: 31, scope: !1559)
!1575 = !DILocation(line: 472, column: 18, scope: !1559)
!1576 = !DILocation(line: 469, column: 6, scope: !1508)
!1577 = !DILocation(line: 473, column: 7, scope: !1578)
!1578 = distinct !DILexicalBlock(scope: !1559, file: !417, line: 472, column: 42)
!1579 = !DILocation(line: 474, column: 3, scope: !1578)
!1580 = !DILocation(line: 481, column: 19, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !1508, file: !417, line: 481, column: 6)
!1582 = !DILocation(line: 481, column: 29, scope: !1581)
!1583 = !DILocation(line: 481, column: 37, scope: !1581)
!1584 = !DILocation(line: 481, column: 6, scope: !1581)
!1585 = !DILocation(line: 481, column: 6, scope: !1508)
!1586 = !DILocation(line: 482, column: 14, scope: !1587)
!1587 = distinct !DILexicalBlock(scope: !1581, file: !417, line: 481, column: 59)
!1588 = !DILocation(line: 482, column: 24, scope: !1587)
!1589 = !DILocation(line: 482, column: 32, scope: !1587)
!1590 = !DILocation(line: 482, column: 3, scope: !1587)
!1591 = !DILocation(line: 483, column: 7, scope: !1587)
!1592 = !DILocation(line: 484, column: 2, scope: !1587)
!1593 = !DILocation(line: 485, column: 7, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1581, file: !417, line: 484, column: 9)
!1595 = !DILocation(line: 481, column: 56, scope: !1581)
!1596 = !DILocation(line: 488, column: 1, scope: !1508)
!1597 = !DILocation(line: 489, column: 17, scope: !1508)
!1598 = !DILocation(line: 489, column: 27, scope: !1508)
!1599 = !DILocation(line: 489, column: 2, scope: !1508)
!1600 = !DILocation(line: 235, column: 84, scope: !524, inlinedAt: !1601)
!1601 = distinct !DILocation(line: 489, column: 2, scope: !1508)
!1602 = !DILocation(line: 236, column: 23, scope: !524, inlinedAt: !1601)
!1603 = !DILocation(line: 238, column: 9, scope: !524, inlinedAt: !1601)
!1604 = !DILocation(line: 261, column: 22, scope: !524, inlinedAt: !1601)
!1605 = !DILocation(line: 88, column: 80, scope: !535, inlinedAt: !1606)
!1606 = distinct !DILocation(line: 261, column: 2, scope: !524, inlinedAt: !1601)
!1607 = !DILocation(line: 91, column: 6, scope: !542, inlinedAt: !1606)
!1608 = !DILocation(line: 91, column: 10, scope: !542, inlinedAt: !1606)
!1609 = !DILocation(line: 91, column: 6, scope: !535, inlinedAt: !1606)
!1610 = !DILocation(line: 92, column: 3, scope: !546, inlinedAt: !1606)
!1611 = !DILocation(line: 94, column: 2, scope: !535, inlinedAt: !1606)
!1612 = !DILocation(line: 114, column: 1, scope: !535, inlinedAt: !1606)
!1613 = !DILocation(line: 490, column: 9, scope: !1508)
!1614 = !DILocation(line: 491, column: 1, scope: !1508)
!1615 = !DILocation(line: 490, column: 2, scope: !1508)
!1616 = distinct !DISubprogram(name: "sys_bitarray_is_region_set", scope: !417, file: !417, line: 519, type: !1617, scopeLine: 521, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1619)
!1617 = !DISubroutineType(types: !1618)
!1618 = !{!1153, !420, !208, !208}
!1619 = !{!1620, !1621, !1622}
!1620 = !DILocalVariable(name: "bitarray", arg: 1, scope: !1616, file: !417, line: 519, type: !420)
!1621 = !DILocalVariable(name: "num_bits", arg: 2, scope: !1616, file: !417, line: 519, type: !208)
!1622 = !DILocalVariable(name: "offset", arg: 3, scope: !1616, file: !417, line: 520, type: !208)
!1623 = !DILocation(line: 519, column: 50, scope: !1616)
!1624 = !DILocation(line: 519, column: 67, scope: !1616)
!1625 = !DILocation(line: 520, column: 12, scope: !1616)
!1626 = !DILocation(line: 522, column: 29, scope: !1616)
!1627 = !DILocation(line: 522, column: 39, scope: !1616)
!1628 = !DILocation(line: 522, column: 49, scope: !1616)
!1629 = !DILocation(line: 522, column: 9, scope: !1616)
!1630 = !DILocation(line: 522, column: 2, scope: !1616)
!1631 = distinct !DISubprogram(name: "is_region_set_clear", scope: !417, file: !417, line: 493, type: !1632, scopeLine: 495, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1634)
!1632 = !DISubroutineType(types: !1633)
!1633 = !{!1153, !420, !208, !208, !1153}
!1634 = !{!1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643}
!1635 = !DILocalVariable(name: "bitarray", arg: 1, scope: !1631, file: !417, line: 493, type: !420)
!1636 = !DILocalVariable(name: "num_bits", arg: 2, scope: !1631, file: !417, line: 493, type: !208)
!1637 = !DILocalVariable(name: "offset", arg: 3, scope: !1631, file: !417, line: 494, type: !208)
!1638 = !DILocalVariable(name: "to_set", arg: 4, scope: !1631, file: !417, line: 494, type: !1153)
!1639 = !DILocalVariable(name: "ret", scope: !1631, file: !417, line: 496, type: !1153)
!1640 = !DILocalVariable(name: "bd", scope: !1631, file: !417, line: 497, type: !975)
!1641 = !DILocalVariable(name: "off_end", scope: !1631, file: !417, line: 498, type: !208)
!1642 = !DILocalVariable(name: "key", scope: !1631, file: !417, line: 499, type: !434)
!1643 = !DILabel(scope: !1631, name: "out", file: !417, line: 514)
!1644 = !DILocation(line: 493, column: 50, scope: !1631)
!1645 = !DILocation(line: 493, column: 67, scope: !1631)
!1646 = !DILocation(line: 494, column: 12, scope: !1631)
!1647 = !DILocation(line: 494, column: 26, scope: !1631)
!1648 = !DILocation(line: 496, column: 2, scope: !1631)
!1649 = !DILocation(line: 496, column: 8, scope: !1631)
!1650 = !DILocation(line: 497, column: 2, scope: !1631)
!1651 = !DILocation(line: 497, column: 21, scope: !1631)
!1652 = !DILocation(line: 498, column: 2, scope: !1631)
!1653 = !DILocation(line: 498, column: 9, scope: !1631)
!1654 = !DILocation(line: 498, column: 19, scope: !1631)
!1655 = !DILocation(line: 498, column: 28, scope: !1631)
!1656 = !DILocation(line: 498, column: 26, scope: !1631)
!1657 = !DILocation(line: 498, column: 37, scope: !1631)
!1658 = !DILocation(line: 499, column: 2, scope: !1631)
!1659 = !DILocation(line: 499, column: 19, scope: !1631)
!1660 = !DILocation(line: 499, column: 38, scope: !1631)
!1661 = !DILocation(line: 499, column: 48, scope: !1631)
!1662 = !DILocation(line: 160, column: 94, scope: !455, inlinedAt: !1663)
!1663 = distinct !DILocation(line: 499, column: 25, scope: !1631)
!1664 = !DILocation(line: 162, column: 9, scope: !455, inlinedAt: !1663)
!1665 = !DILocation(line: 163, column: 19, scope: !455, inlinedAt: !1663)
!1666 = !DILocation(line: 44, column: 2, scope: !466, inlinedAt: !1667)
!1667 = distinct !DILocation(line: 169, column: 10, scope: !455, inlinedAt: !1663)
!1668 = !DILocation(line: 44, column: 15, scope: !466, inlinedAt: !1667)
!1669 = !DILocation(line: 48, column: 2, scope: !466, inlinedAt: !1667)
!1670 = !DILocation(line: 80, column: 9, scope: !466, inlinedAt: !1667)
!1671 = !DILocation(line: 81, column: 1, scope: !466, inlinedAt: !1667)
!1672 = !DILocation(line: 169, column: 8, scope: !455, inlinedAt: !1663)
!1673 = !DILocation(line: 171, column: 26, scope: !455, inlinedAt: !1663)
!1674 = !DILocation(line: 110, column: 94, scope: !481, inlinedAt: !1675)
!1675 = distinct !DILocation(line: 171, column: 2, scope: !455, inlinedAt: !1663)
!1676 = !DILocation(line: 112, column: 9, scope: !481, inlinedAt: !1675)
!1677 = !DILocation(line: 177, column: 27, scope: !455, inlinedAt: !1663)
!1678 = !DILocation(line: 121, column: 95, scope: !490, inlinedAt: !1679)
!1679 = distinct !DILocation(line: 177, column: 2, scope: !455, inlinedAt: !1663)
!1680 = !DILocation(line: 123, column: 9, scope: !490, inlinedAt: !1679)
!1681 = !DILocation(line: 179, column: 2, scope: !455, inlinedAt: !1663)
!1682 = !DILocation(line: 499, column: 25, scope: !1631)
!1683 = !DILocation(line: 504, column: 7, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1631, file: !417, line: 504, column: 6)
!1685 = !DILocation(line: 504, column: 16, scope: !1684)
!1686 = !DILocation(line: 505, column: 6, scope: !1684)
!1687 = !DILocation(line: 505, column: 10, scope: !1684)
!1688 = !DILocation(line: 505, column: 21, scope: !1684)
!1689 = !DILocation(line: 505, column: 31, scope: !1684)
!1690 = !DILocation(line: 505, column: 19, scope: !1684)
!1691 = !DILocation(line: 506, column: 6, scope: !1684)
!1692 = !DILocation(line: 506, column: 10, scope: !1684)
!1693 = !DILocation(line: 506, column: 20, scope: !1684)
!1694 = !DILocation(line: 506, column: 30, scope: !1684)
!1695 = !DILocation(line: 506, column: 17, scope: !1684)
!1696 = !DILocation(line: 507, column: 6, scope: !1684)
!1697 = !DILocation(line: 507, column: 10, scope: !1684)
!1698 = !DILocation(line: 507, column: 21, scope: !1684)
!1699 = !DILocation(line: 507, column: 31, scope: !1684)
!1700 = !DILocation(line: 507, column: 18, scope: !1684)
!1701 = !DILocation(line: 504, column: 6, scope: !1631)
!1702 = !DILocation(line: 508, column: 7, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !1684, file: !417, line: 507, column: 42)
!1704 = !DILocation(line: 509, column: 3, scope: !1703)
!1705 = !DILocation(line: 512, column: 21, scope: !1631)
!1706 = !DILocation(line: 512, column: 31, scope: !1631)
!1707 = !DILocation(line: 512, column: 39, scope: !1631)
!1708 = !DILocation(line: 512, column: 49, scope: !1631)
!1709 = !DILocation(line: 512, column: 8, scope: !1631)
!1710 = !DILocation(line: 512, column: 6, scope: !1631)
!1711 = !DILocation(line: 512, column: 2, scope: !1631)
!1712 = !DILocation(line: 514, column: 1, scope: !1631)
!1713 = !DILocation(line: 515, column: 17, scope: !1631)
!1714 = !DILocation(line: 515, column: 27, scope: !1631)
!1715 = !DILocation(line: 515, column: 2, scope: !1631)
!1716 = !DILocation(line: 235, column: 84, scope: !524, inlinedAt: !1717)
!1717 = distinct !DILocation(line: 515, column: 2, scope: !1631)
!1718 = !DILocation(line: 236, column: 23, scope: !524, inlinedAt: !1717)
!1719 = !DILocation(line: 238, column: 9, scope: !524, inlinedAt: !1717)
!1720 = !DILocation(line: 261, column: 22, scope: !524, inlinedAt: !1717)
!1721 = !DILocation(line: 88, column: 80, scope: !535, inlinedAt: !1722)
!1722 = distinct !DILocation(line: 261, column: 2, scope: !524, inlinedAt: !1717)
!1723 = !DILocation(line: 91, column: 6, scope: !542, inlinedAt: !1722)
!1724 = !DILocation(line: 91, column: 10, scope: !542, inlinedAt: !1722)
!1725 = !DILocation(line: 91, column: 6, scope: !535, inlinedAt: !1722)
!1726 = !DILocation(line: 92, column: 3, scope: !546, inlinedAt: !1722)
!1727 = !DILocation(line: 94, column: 2, scope: !535, inlinedAt: !1722)
!1728 = !DILocation(line: 114, column: 1, scope: !535, inlinedAt: !1722)
!1729 = !DILocation(line: 516, column: 9, scope: !1631)
!1730 = !DILocation(line: 517, column: 1, scope: !1631)
!1731 = !DILocation(line: 516, column: 2, scope: !1631)
!1732 = distinct !DISubprogram(name: "sys_bitarray_is_region_cleared", scope: !417, file: !417, line: 525, type: !1617, scopeLine: 527, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1733)
!1733 = !{!1734, !1735, !1736}
!1734 = !DILocalVariable(name: "bitarray", arg: 1, scope: !1732, file: !417, line: 525, type: !420)
!1735 = !DILocalVariable(name: "num_bits", arg: 2, scope: !1732, file: !417, line: 525, type: !208)
!1736 = !DILocalVariable(name: "offset", arg: 3, scope: !1732, file: !417, line: 526, type: !208)
!1737 = !DILocation(line: 525, column: 54, scope: !1732)
!1738 = !DILocation(line: 525, column: 71, scope: !1732)
!1739 = !DILocation(line: 526, column: 16, scope: !1732)
!1740 = !DILocation(line: 528, column: 29, scope: !1732)
!1741 = !DILocation(line: 528, column: 39, scope: !1732)
!1742 = !DILocation(line: 528, column: 49, scope: !1732)
!1743 = !DILocation(line: 528, column: 9, scope: !1732)
!1744 = !DILocation(line: 528, column: 2, scope: !1732)
!1745 = distinct !DISubprogram(name: "sys_bitarray_test_and_set_region", scope: !417, file: !417, line: 557, type: !1746, scopeLine: 559, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1748)
!1746 = !DISubroutineType(types: !1747)
!1747 = !{!87, !420, !208, !208, !1153}
!1748 = !{!1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758}
!1749 = !DILocalVariable(name: "bitarray", arg: 1, scope: !1745, file: !417, line: 557, type: !420)
!1750 = !DILocalVariable(name: "num_bits", arg: 2, scope: !1745, file: !417, line: 557, type: !208)
!1751 = !DILocalVariable(name: "offset", arg: 3, scope: !1745, file: !417, line: 558, type: !208)
!1752 = !DILocalVariable(name: "to_set", arg: 4, scope: !1745, file: !417, line: 558, type: !1153)
!1753 = !DILocalVariable(name: "ret", scope: !1745, file: !417, line: 560, type: !87)
!1754 = !DILocalVariable(name: "region_clear", scope: !1745, file: !417, line: 561, type: !1153)
!1755 = !DILocalVariable(name: "bd", scope: !1745, file: !417, line: 562, type: !975)
!1756 = !DILocalVariable(name: "off_end", scope: !1745, file: !417, line: 567, type: !208)
!1757 = !DILocalVariable(name: "key", scope: !1745, file: !417, line: 568, type: !434)
!1758 = !DILabel(scope: !1745, name: "out", file: !417, line: 587)
!1759 = !DILocation(line: 557, column: 54, scope: !1745)
!1760 = !DILocation(line: 557, column: 71, scope: !1745)
!1761 = !DILocation(line: 558, column: 17, scope: !1745)
!1762 = !DILocation(line: 558, column: 31, scope: !1745)
!1763 = !DILocation(line: 560, column: 2, scope: !1745)
!1764 = !DILocation(line: 560, column: 6, scope: !1745)
!1765 = !DILocation(line: 561, column: 2, scope: !1745)
!1766 = !DILocation(line: 561, column: 8, scope: !1745)
!1767 = !DILocation(line: 562, column: 2, scope: !1745)
!1768 = !DILocation(line: 562, column: 21, scope: !1745)
!1769 = !DILocation(line: 567, column: 2, scope: !1745)
!1770 = !DILocation(line: 567, column: 9, scope: !1745)
!1771 = !DILocation(line: 567, column: 19, scope: !1745)
!1772 = !DILocation(line: 567, column: 28, scope: !1745)
!1773 = !DILocation(line: 567, column: 26, scope: !1745)
!1774 = !DILocation(line: 567, column: 37, scope: !1745)
!1775 = !DILocation(line: 568, column: 2, scope: !1745)
!1776 = !DILocation(line: 568, column: 19, scope: !1745)
!1777 = !DILocation(line: 568, column: 38, scope: !1745)
!1778 = !DILocation(line: 568, column: 48, scope: !1745)
!1779 = !DILocation(line: 160, column: 94, scope: !455, inlinedAt: !1780)
!1780 = distinct !DILocation(line: 568, column: 25, scope: !1745)
!1781 = !DILocation(line: 162, column: 9, scope: !455, inlinedAt: !1780)
!1782 = !DILocation(line: 163, column: 19, scope: !455, inlinedAt: !1780)
!1783 = !DILocation(line: 44, column: 2, scope: !466, inlinedAt: !1784)
!1784 = distinct !DILocation(line: 169, column: 10, scope: !455, inlinedAt: !1780)
!1785 = !DILocation(line: 44, column: 15, scope: !466, inlinedAt: !1784)
!1786 = !DILocation(line: 48, column: 2, scope: !466, inlinedAt: !1784)
!1787 = !DILocation(line: 80, column: 9, scope: !466, inlinedAt: !1784)
!1788 = !DILocation(line: 81, column: 1, scope: !466, inlinedAt: !1784)
!1789 = !DILocation(line: 169, column: 8, scope: !455, inlinedAt: !1780)
!1790 = !DILocation(line: 171, column: 26, scope: !455, inlinedAt: !1780)
!1791 = !DILocation(line: 110, column: 94, scope: !481, inlinedAt: !1792)
!1792 = distinct !DILocation(line: 171, column: 2, scope: !455, inlinedAt: !1780)
!1793 = !DILocation(line: 112, column: 9, scope: !481, inlinedAt: !1792)
!1794 = !DILocation(line: 177, column: 27, scope: !455, inlinedAt: !1780)
!1795 = !DILocation(line: 121, column: 95, scope: !490, inlinedAt: !1796)
!1796 = distinct !DILocation(line: 177, column: 2, scope: !455, inlinedAt: !1780)
!1797 = !DILocation(line: 123, column: 9, scope: !490, inlinedAt: !1796)
!1798 = !DILocation(line: 179, column: 2, scope: !455, inlinedAt: !1780)
!1799 = !DILocation(line: 568, column: 25, scope: !1745)
!1800 = !DILocation(line: 571, column: 7, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1745, file: !417, line: 571, column: 6)
!1802 = !DILocation(line: 571, column: 16, scope: !1801)
!1803 = !DILocation(line: 572, column: 6, scope: !1801)
!1804 = !DILocation(line: 572, column: 10, scope: !1801)
!1805 = !DILocation(line: 572, column: 21, scope: !1801)
!1806 = !DILocation(line: 572, column: 31, scope: !1801)
!1807 = !DILocation(line: 572, column: 19, scope: !1801)
!1808 = !DILocation(line: 573, column: 6, scope: !1801)
!1809 = !DILocation(line: 573, column: 10, scope: !1801)
!1810 = !DILocation(line: 573, column: 20, scope: !1801)
!1811 = !DILocation(line: 573, column: 30, scope: !1801)
!1812 = !DILocation(line: 573, column: 17, scope: !1801)
!1813 = !DILocation(line: 574, column: 6, scope: !1801)
!1814 = !DILocation(line: 574, column: 10, scope: !1801)
!1815 = !DILocation(line: 574, column: 21, scope: !1801)
!1816 = !DILocation(line: 574, column: 31, scope: !1801)
!1817 = !DILocation(line: 574, column: 18, scope: !1801)
!1818 = !DILocation(line: 571, column: 6, scope: !1745)
!1819 = !DILocation(line: 575, column: 7, scope: !1820)
!1820 = distinct !DILexicalBlock(scope: !1801, file: !417, line: 574, column: 42)
!1821 = !DILocation(line: 576, column: 3, scope: !1820)
!1822 = !DILocation(line: 579, column: 30, scope: !1745)
!1823 = !DILocation(line: 579, column: 40, scope: !1745)
!1824 = !DILocation(line: 579, column: 48, scope: !1745)
!1825 = !DILocation(line: 579, column: 59, scope: !1745)
!1826 = !DILocation(line: 579, column: 58, scope: !1745)
!1827 = !DILocation(line: 579, column: 17, scope: !1745)
!1828 = !DILocation(line: 579, column: 15, scope: !1745)
!1829 = !DILocation(line: 580, column: 6, scope: !1830)
!1830 = distinct !DILexicalBlock(scope: !1745, file: !417, line: 580, column: 6)
!1831 = !DILocation(line: 580, column: 6, scope: !1745)
!1832 = !DILocation(line: 581, column: 14, scope: !1833)
!1833 = distinct !DILexicalBlock(scope: !1830, file: !417, line: 580, column: 20)
!1834 = !DILocation(line: 581, column: 24, scope: !1833)
!1835 = !DILocation(line: 581, column: 32, scope: !1833)
!1836 = !DILocation(line: 581, column: 42, scope: !1833)
!1837 = !DILocation(line: 581, column: 3, scope: !1833)
!1838 = !DILocation(line: 582, column: 7, scope: !1833)
!1839 = !DILocation(line: 583, column: 2, scope: !1833)
!1840 = !DILocation(line: 584, column: 7, scope: !1841)
!1841 = distinct !DILexicalBlock(scope: !1830, file: !417, line: 583, column: 9)
!1842 = !DILocation(line: 587, column: 1, scope: !1745)
!1843 = !DILocation(line: 588, column: 17, scope: !1745)
!1844 = !DILocation(line: 588, column: 27, scope: !1745)
!1845 = !DILocation(line: 588, column: 2, scope: !1745)
!1846 = !DILocation(line: 235, column: 84, scope: !524, inlinedAt: !1847)
!1847 = distinct !DILocation(line: 588, column: 2, scope: !1745)
!1848 = !DILocation(line: 236, column: 23, scope: !524, inlinedAt: !1847)
!1849 = !DILocation(line: 238, column: 9, scope: !524, inlinedAt: !1847)
!1850 = !DILocation(line: 261, column: 22, scope: !524, inlinedAt: !1847)
!1851 = !DILocation(line: 88, column: 80, scope: !535, inlinedAt: !1852)
!1852 = distinct !DILocation(line: 261, column: 2, scope: !524, inlinedAt: !1847)
!1853 = !DILocation(line: 91, column: 6, scope: !542, inlinedAt: !1852)
!1854 = !DILocation(line: 91, column: 10, scope: !542, inlinedAt: !1852)
!1855 = !DILocation(line: 91, column: 6, scope: !535, inlinedAt: !1852)
!1856 = !DILocation(line: 92, column: 3, scope: !546, inlinedAt: !1852)
!1857 = !DILocation(line: 94, column: 2, scope: !535, inlinedAt: !1852)
!1858 = !DILocation(line: 114, column: 1, scope: !535, inlinedAt: !1852)
!1859 = !DILocation(line: 589, column: 9, scope: !1745)
!1860 = !DILocation(line: 590, column: 1, scope: !1745)
!1861 = !DILocation(line: 589, column: 2, scope: !1745)
!1862 = distinct !DISubprogram(name: "sys_bitarray_set_region", scope: !417, file: !417, line: 592, type: !1509, scopeLine: 594, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1863)
!1863 = !{!1864, !1865, !1866}
!1864 = !DILocalVariable(name: "bitarray", arg: 1, scope: !1862, file: !417, line: 592, type: !420)
!1865 = !DILocalVariable(name: "num_bits", arg: 2, scope: !1862, file: !417, line: 592, type: !208)
!1866 = !DILocalVariable(name: "offset", arg: 3, scope: !1862, file: !417, line: 593, type: !208)
!1867 = !DILocation(line: 592, column: 45, scope: !1862)
!1868 = !DILocation(line: 592, column: 62, scope: !1862)
!1869 = !DILocation(line: 593, column: 15, scope: !1862)
!1870 = !DILocation(line: 595, column: 26, scope: !1862)
!1871 = !DILocation(line: 595, column: 36, scope: !1862)
!1872 = !DILocation(line: 595, column: 46, scope: !1862)
!1873 = !DILocation(line: 595, column: 9, scope: !1862)
!1874 = !DILocation(line: 595, column: 2, scope: !1862)
!1875 = distinct !DISubprogram(name: "set_clear_region", scope: !417, file: !417, line: 531, type: !1746, scopeLine: 533, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1876)
!1876 = !{!1877, !1878, !1879, !1880, !1881, !1882, !1883, !1884}
!1877 = !DILocalVariable(name: "bitarray", arg: 1, scope: !1875, file: !417, line: 531, type: !420)
!1878 = !DILocalVariable(name: "num_bits", arg: 2, scope: !1875, file: !417, line: 531, type: !208)
!1879 = !DILocalVariable(name: "offset", arg: 3, scope: !1875, file: !417, line: 532, type: !208)
!1880 = !DILocalVariable(name: "to_set", arg: 4, scope: !1875, file: !417, line: 532, type: !1153)
!1881 = !DILocalVariable(name: "ret", scope: !1875, file: !417, line: 534, type: !87)
!1882 = !DILocalVariable(name: "off_end", scope: !1875, file: !417, line: 535, type: !208)
!1883 = !DILocalVariable(name: "key", scope: !1875, file: !417, line: 536, type: !434)
!1884 = !DILabel(scope: !1875, name: "out", file: !417, line: 552)
!1885 = !DILocation(line: 531, column: 45, scope: !1875)
!1886 = !DILocation(line: 531, column: 62, scope: !1875)
!1887 = !DILocation(line: 532, column: 15, scope: !1875)
!1888 = !DILocation(line: 532, column: 29, scope: !1875)
!1889 = !DILocation(line: 534, column: 2, scope: !1875)
!1890 = !DILocation(line: 534, column: 6, scope: !1875)
!1891 = !DILocation(line: 535, column: 2, scope: !1875)
!1892 = !DILocation(line: 535, column: 9, scope: !1875)
!1893 = !DILocation(line: 535, column: 19, scope: !1875)
!1894 = !DILocation(line: 535, column: 28, scope: !1875)
!1895 = !DILocation(line: 535, column: 26, scope: !1875)
!1896 = !DILocation(line: 535, column: 37, scope: !1875)
!1897 = !DILocation(line: 536, column: 2, scope: !1875)
!1898 = !DILocation(line: 536, column: 19, scope: !1875)
!1899 = !DILocation(line: 536, column: 38, scope: !1875)
!1900 = !DILocation(line: 536, column: 48, scope: !1875)
!1901 = !DILocation(line: 160, column: 94, scope: !455, inlinedAt: !1902)
!1902 = distinct !DILocation(line: 536, column: 25, scope: !1875)
!1903 = !DILocation(line: 162, column: 9, scope: !455, inlinedAt: !1902)
!1904 = !DILocation(line: 163, column: 19, scope: !455, inlinedAt: !1902)
!1905 = !DILocation(line: 44, column: 2, scope: !466, inlinedAt: !1906)
!1906 = distinct !DILocation(line: 169, column: 10, scope: !455, inlinedAt: !1902)
!1907 = !DILocation(line: 44, column: 15, scope: !466, inlinedAt: !1906)
!1908 = !DILocation(line: 48, column: 2, scope: !466, inlinedAt: !1906)
!1909 = !DILocation(line: 80, column: 9, scope: !466, inlinedAt: !1906)
!1910 = !DILocation(line: 81, column: 1, scope: !466, inlinedAt: !1906)
!1911 = !DILocation(line: 169, column: 8, scope: !455, inlinedAt: !1902)
!1912 = !DILocation(line: 171, column: 26, scope: !455, inlinedAt: !1902)
!1913 = !DILocation(line: 110, column: 94, scope: !481, inlinedAt: !1914)
!1914 = distinct !DILocation(line: 171, column: 2, scope: !455, inlinedAt: !1902)
!1915 = !DILocation(line: 112, column: 9, scope: !481, inlinedAt: !1914)
!1916 = !DILocation(line: 177, column: 27, scope: !455, inlinedAt: !1902)
!1917 = !DILocation(line: 121, column: 95, scope: !490, inlinedAt: !1918)
!1918 = distinct !DILocation(line: 177, column: 2, scope: !455, inlinedAt: !1902)
!1919 = !DILocation(line: 123, column: 9, scope: !490, inlinedAt: !1918)
!1920 = !DILocation(line: 179, column: 2, scope: !455, inlinedAt: !1902)
!1921 = !DILocation(line: 536, column: 25, scope: !1875)
!1922 = !DILocation(line: 541, column: 7, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1875, file: !417, line: 541, column: 6)
!1924 = !DILocation(line: 541, column: 16, scope: !1923)
!1925 = !DILocation(line: 542, column: 6, scope: !1923)
!1926 = !DILocation(line: 542, column: 10, scope: !1923)
!1927 = !DILocation(line: 542, column: 21, scope: !1923)
!1928 = !DILocation(line: 542, column: 31, scope: !1923)
!1929 = !DILocation(line: 542, column: 19, scope: !1923)
!1930 = !DILocation(line: 543, column: 6, scope: !1923)
!1931 = !DILocation(line: 543, column: 10, scope: !1923)
!1932 = !DILocation(line: 543, column: 20, scope: !1923)
!1933 = !DILocation(line: 543, column: 30, scope: !1923)
!1934 = !DILocation(line: 543, column: 17, scope: !1923)
!1935 = !DILocation(line: 544, column: 6, scope: !1923)
!1936 = !DILocation(line: 544, column: 10, scope: !1923)
!1937 = !DILocation(line: 544, column: 21, scope: !1923)
!1938 = !DILocation(line: 544, column: 31, scope: !1923)
!1939 = !DILocation(line: 544, column: 18, scope: !1923)
!1940 = !DILocation(line: 541, column: 6, scope: !1875)
!1941 = !DILocation(line: 545, column: 7, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !1923, file: !417, line: 544, column: 42)
!1943 = !DILocation(line: 546, column: 3, scope: !1942)
!1944 = !DILocation(line: 549, column: 13, scope: !1875)
!1945 = !DILocation(line: 549, column: 23, scope: !1875)
!1946 = !DILocation(line: 549, column: 31, scope: !1875)
!1947 = !DILocation(line: 549, column: 41, scope: !1875)
!1948 = !DILocation(line: 549, column: 2, scope: !1875)
!1949 = !DILocation(line: 550, column: 6, scope: !1875)
!1950 = !DILocation(line: 550, column: 2, scope: !1875)
!1951 = !DILocation(line: 552, column: 1, scope: !1875)
!1952 = !DILocation(line: 553, column: 17, scope: !1875)
!1953 = !DILocation(line: 553, column: 27, scope: !1875)
!1954 = !DILocation(line: 553, column: 2, scope: !1875)
!1955 = !DILocation(line: 235, column: 84, scope: !524, inlinedAt: !1956)
!1956 = distinct !DILocation(line: 553, column: 2, scope: !1875)
!1957 = !DILocation(line: 236, column: 23, scope: !524, inlinedAt: !1956)
!1958 = !DILocation(line: 238, column: 9, scope: !524, inlinedAt: !1956)
!1959 = !DILocation(line: 261, column: 22, scope: !524, inlinedAt: !1956)
!1960 = !DILocation(line: 88, column: 80, scope: !535, inlinedAt: !1961)
!1961 = distinct !DILocation(line: 261, column: 2, scope: !524, inlinedAt: !1956)
!1962 = !DILocation(line: 91, column: 6, scope: !542, inlinedAt: !1961)
!1963 = !DILocation(line: 91, column: 10, scope: !542, inlinedAt: !1961)
!1964 = !DILocation(line: 91, column: 6, scope: !535, inlinedAt: !1961)
!1965 = !DILocation(line: 92, column: 3, scope: !546, inlinedAt: !1961)
!1966 = !DILocation(line: 94, column: 2, scope: !535, inlinedAt: !1961)
!1967 = !DILocation(line: 114, column: 1, scope: !535, inlinedAt: !1961)
!1968 = !DILocation(line: 554, column: 9, scope: !1875)
!1969 = !DILocation(line: 555, column: 1, scope: !1875)
!1970 = !DILocation(line: 554, column: 2, scope: !1875)
!1971 = distinct !DISubprogram(name: "sys_bitarray_clear_region", scope: !417, file: !417, line: 598, type: !1509, scopeLine: 600, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1972)
!1972 = !{!1973, !1974, !1975}
!1973 = !DILocalVariable(name: "bitarray", arg: 1, scope: !1971, file: !417, line: 598, type: !420)
!1974 = !DILocalVariable(name: "num_bits", arg: 2, scope: !1971, file: !417, line: 598, type: !208)
!1975 = !DILocalVariable(name: "offset", arg: 3, scope: !1971, file: !417, line: 599, type: !208)
!1976 = !DILocation(line: 598, column: 47, scope: !1971)
!1977 = !DILocation(line: 598, column: 64, scope: !1971)
!1978 = !DILocation(line: 599, column: 17, scope: !1971)
!1979 = !DILocation(line: 601, column: 26, scope: !1971)
!1980 = !DILocation(line: 601, column: 36, scope: !1971)
!1981 = !DILocation(line: 601, column: 46, scope: !1971)
!1982 = !DILocation(line: 601, column: 9, scope: !1971)
!1983 = !DILocation(line: 601, column: 2, scope: !1971)
!1984 = !DISubprogram(name: "z_timeout_expires", scope: !197, file: !197, line: 642, type: !1985, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !214)
!1985 = !DISubroutineType(types: !1986)
!1986 = !{!258, !1987}
!1987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1988, size: 32)
!1988 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !166)
!1989 = !DISubprogram(name: "z_timeout_remaining", scope: !197, file: !197, line: 643, type: !1985, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !214)
!1990 = distinct !DISubprogram(name: "sys_sflist_is_empty", scope: !346, file: !346, line: 335, type: !1991, scopeLine: 335, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1994)
!1991 = !DISubroutineType(types: !1992)
!1992 = !{!1153, !1993}
!1993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 32)
!1994 = !{!1995}
!1995 = !DILocalVariable(name: "list", arg: 1, scope: !1990, file: !346, line: 335, type: !1993)
!1996 = !DILocation(line: 335, column: 55, scope: !1990)
!1997 = !DILocation(line: 335, column: 92, scope: !1990)
!1998 = !DILocation(line: 335, column: 71, scope: !1990)
!1999 = !DILocation(line: 335, column: 98, scope: !1990)
!2000 = !DILocation(line: 335, column: 63, scope: !1990)
!2001 = distinct !DISubprogram(name: "sys_sflist_peek_head", scope: !346, file: !346, line: 255, type: !2002, scopeLine: 256, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2004)
!2002 = !DISubroutineType(types: !2003)
!2003 = !{!350, !1993}
!2004 = !{!2005}
!2005 = !DILocalVariable(name: "list", arg: 1, scope: !2001, file: !346, line: 255, type: !1993)
!2006 = !DILocation(line: 255, column: 64, scope: !2001)
!2007 = !DILocation(line: 257, column: 9, scope: !2001)
!2008 = !DILocation(line: 257, column: 15, scope: !2001)
!2009 = !DILocation(line: 257, column: 2, scope: !2001)
!2010 = distinct !DISubprogram(name: "setup_bundle_data", scope: !417, file: !417, line: 29, type: !2011, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2013)
!2011 = !DISubroutineType(types: !2012)
!2012 = !{null, !420, !1154, !208, !208}
!2013 = !{!2014, !2015, !2016, !2017}
!2014 = !DILocalVariable(name: "bitarray", arg: 1, scope: !2010, file: !417, line: 29, type: !420)
!2015 = !DILocalVariable(name: "bd", arg: 2, scope: !2010, file: !417, line: 30, type: !1154)
!2016 = !DILocalVariable(name: "offset", arg: 3, scope: !2010, file: !417, line: 31, type: !208)
!2017 = !DILocalVariable(name: "num_bits", arg: 4, scope: !2010, file: !417, line: 31, type: !208)
!2018 = !DILocation(line: 29, column: 47, scope: !2010)
!2019 = !DILocation(line: 30, column: 30, scope: !2010)
!2020 = !DILocation(line: 31, column: 17, scope: !2010)
!2021 = !DILocation(line: 31, column: 32, scope: !2010)
!2022 = !DILocation(line: 33, column: 13, scope: !2010)
!2023 = !DILocation(line: 33, column: 20, scope: !2010)
!2024 = !DILocation(line: 33, column: 2, scope: !2010)
!2025 = !DILocation(line: 33, column: 6, scope: !2010)
!2026 = !DILocation(line: 33, column: 11, scope: !2010)
!2027 = !DILocation(line: 34, column: 13, scope: !2010)
!2028 = !DILocation(line: 34, column: 20, scope: !2010)
!2029 = !DILocation(line: 34, column: 2, scope: !2010)
!2030 = !DILocation(line: 34, column: 6, scope: !2010)
!2031 = !DILocation(line: 34, column: 11, scope: !2010)
!2032 = !DILocation(line: 36, column: 14, scope: !2010)
!2033 = !DILocation(line: 36, column: 23, scope: !2010)
!2034 = !DILocation(line: 36, column: 21, scope: !2010)
!2035 = !DILocation(line: 36, column: 32, scope: !2010)
!2036 = !DILocation(line: 36, column: 37, scope: !2010)
!2037 = !DILocation(line: 36, column: 2, scope: !2010)
!2038 = !DILocation(line: 36, column: 6, scope: !2010)
!2039 = !DILocation(line: 36, column: 11, scope: !2010)
!2040 = !DILocation(line: 37, column: 14, scope: !2010)
!2041 = !DILocation(line: 37, column: 23, scope: !2010)
!2042 = !DILocation(line: 37, column: 21, scope: !2010)
!2043 = !DILocation(line: 37, column: 32, scope: !2010)
!2044 = !DILocation(line: 37, column: 37, scope: !2010)
!2045 = !DILocation(line: 37, column: 2, scope: !2010)
!2046 = !DILocation(line: 37, column: 6, scope: !2010)
!2047 = !DILocation(line: 37, column: 11, scope: !2010)
!2048 = !DILocation(line: 39, column: 25, scope: !2010)
!2049 = !DILocation(line: 39, column: 29, scope: !2010)
!2050 = !DILocation(line: 39, column: 21, scope: !2010)
!2051 = !DILocation(line: 39, column: 36, scope: !2010)
!2052 = !DILocation(line: 39, column: 14, scope: !2010)
!2053 = !DILocation(line: 39, column: 2, scope: !2010)
!2054 = !DILocation(line: 39, column: 6, scope: !2010)
!2055 = !DILocation(line: 39, column: 12, scope: !2010)
!2056 = !DILocation(line: 40, column: 24, scope: !2010)
!2057 = !DILocation(line: 40, column: 28, scope: !2010)
!2058 = !DILocation(line: 40, column: 20, scope: !2010)
!2059 = !DILocation(line: 40, column: 35, scope: !2010)
!2060 = !DILocation(line: 40, column: 51, scope: !2010)
!2061 = !DILocation(line: 40, column: 55, scope: !2010)
!2062 = !DILocation(line: 40, column: 47, scope: !2010)
!2063 = !DILocation(line: 40, column: 40, scope: !2010)
!2064 = !DILocation(line: 40, column: 2, scope: !2010)
!2065 = !DILocation(line: 40, column: 6, scope: !2010)
!2066 = !DILocation(line: 40, column: 12, scope: !2010)
!2067 = !DILocation(line: 42, column: 6, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !2010, file: !417, line: 42, column: 6)
!2069 = !DILocation(line: 42, column: 10, scope: !2068)
!2070 = !DILocation(line: 42, column: 18, scope: !2068)
!2071 = !DILocation(line: 42, column: 22, scope: !2068)
!2072 = !DILocation(line: 42, column: 15, scope: !2068)
!2073 = !DILocation(line: 42, column: 6, scope: !2010)
!2074 = !DILocation(line: 44, column: 16, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !2068, file: !417, line: 42, column: 28)
!2076 = !DILocation(line: 44, column: 20, scope: !2075)
!2077 = !DILocation(line: 44, column: 3, scope: !2075)
!2078 = !DILocation(line: 44, column: 7, scope: !2075)
!2079 = !DILocation(line: 44, column: 13, scope: !2075)
!2080 = !DILocation(line: 45, column: 2, scope: !2075)
!2081 = !DILocation(line: 46, column: 1, scope: !2010)
