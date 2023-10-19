; ModuleID = '../bc_files/msg_q.bc'
source_filename = "/home/sri/zephyrproject/zephyr/kernel/msg_q.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-arm-none-eabi"

%struct.z_kernel = type { [1 x %struct._cpu], %struct._ready_q }
%struct._cpu = type { i32, ptr, ptr, ptr, i8, %struct._cpu_arch }
%struct._cpu_arch = type {}
%struct._ready_q = type { ptr, %struct._dnode }
%struct._dnode = type { %union.anon.0, %union.anon.1 }
%union.anon.0 = type { ptr }
%union.anon.1 = type { ptr }
%struct.k_thread = type { %struct._thread_base, %struct._callee_saved, ptr, %struct._wait_q_t, i32, ptr, %struct._thread_arch }
%struct._thread_base = type { %union.anon, ptr, i8, i8, %union.anon.2, i32, ptr, %struct._timeout }
%union.anon = type { %struct._dnode }
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
%struct.k_msgq_attrs = type { i32, i32, i32 }

@_kernel = external dso_local global %struct.z_kernel, align 4

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_k_object_access_grant(ptr noundef %0, ptr noundef %1) #0 !dbg !216 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !222, metadata !DIExpression()), !dbg !224
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !223, metadata !DIExpression()), !dbg !225
  %5 = load ptr, ptr %3, align 4, !dbg !226
  %6 = load ptr, ptr %4, align 4, !dbg !227
  ret void, !dbg !228
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_k_object_release(ptr noundef %0) #0 !dbg !229 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !233, metadata !DIExpression()), !dbg !234
  %3 = load ptr, ptr %2, align 4, !dbg !235
  ret void, !dbg !236
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_impl_k_object_alloc(i8 noundef zeroext %0) #0 !dbg !237 {
  %2 = alloca i8, align 1
  store i8 %0, ptr %2, align 1
  call void @llvm.dbg.declare(metadata ptr %2, metadata !241, metadata !DIExpression()), !dbg !242
  %3 = load i8, ptr %2, align 1, !dbg !243
  ret ptr null, !dbg !244
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_impl_k_object_alloc_size(i8 noundef zeroext %0, i32 noundef %1) #0 !dbg !245 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8 %0, ptr %3, align 1
  call void @llvm.dbg.declare(metadata ptr %3, metadata !249, metadata !DIExpression()), !dbg !251
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !250, metadata !DIExpression()), !dbg !252
  %5 = load i8, ptr %3, align 1, !dbg !253
  %6 = load i32, ptr %4, align 4, !dbg !254
  ret ptr null, !dbg !255
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_thread_timeout_expires_ticks(ptr noundef %0) #0 !dbg !256 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !264, metadata !DIExpression()), !dbg !265
  %3 = load ptr, ptr %2, align 4, !dbg !266
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !267
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !268
  %6 = call i64 @z_timeout_expires(ptr noundef %5) #6, !dbg !269
  ret i64 %6, !dbg !270
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_thread_timeout_remaining_ticks(ptr noundef %0) #0 !dbg !271 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !273, metadata !DIExpression()), !dbg !274
  %3 = load ptr, ptr %2, align 4, !dbg !275
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !276
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !277
  %6 = call i64 @z_timeout_remaining(ptr noundef %5) #6, !dbg !278
  ret i64 %6, !dbg !279
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_timer_expires_ticks(ptr noundef %0) #0 !dbg !280 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !303, metadata !DIExpression()), !dbg !304
  %3 = load ptr, ptr %2, align 4, !dbg !305
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !306
  %5 = call i64 @z_timeout_expires(ptr noundef %4) #6, !dbg !307
  ret i64 %5, !dbg !308
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_timer_remaining_ticks(ptr noundef %0) #0 !dbg !309 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !311, metadata !DIExpression()), !dbg !312
  %3 = load ptr, ptr %2, align 4, !dbg !313
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !314
  %5 = call i64 @z_timeout_remaining(ptr noundef %4) #6, !dbg !315
  ret i64 %5, !dbg !316
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_k_timer_user_data_set(ptr noundef %0, ptr noundef %1) #0 !dbg !317 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !321, metadata !DIExpression()), !dbg !323
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !322, metadata !DIExpression()), !dbg !324
  %5 = load ptr, ptr %4, align 4, !dbg !325
  %6 = load ptr, ptr %3, align 4, !dbg !326
  %7 = getelementptr inbounds %struct.k_timer, ptr %6, i32 0, i32 6, !dbg !327
  store ptr %5, ptr %7, align 4, !dbg !328
  ret void, !dbg !329
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_impl_k_timer_user_data_get(ptr noundef %0) #0 !dbg !330 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !334, metadata !DIExpression()), !dbg !335
  %3 = load ptr, ptr %2, align 4, !dbg !336
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 6, !dbg !337
  %5 = load ptr, ptr %4, align 4, !dbg !337
  ret ptr %5, !dbg !338
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_queue_is_empty(ptr noundef %0) #0 !dbg !339 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !361, metadata !DIExpression()), !dbg !362
  %3 = load ptr, ptr %2, align 4, !dbg !363
  %4 = getelementptr inbounds %struct.k_queue, ptr %3, i32 0, i32 0, !dbg !364
  %5 = call zeroext i1 @sys_sflist_is_empty(ptr noundef %4) #6, !dbg !365
  %6 = zext i1 %5 to i32, !dbg !366
  ret i32 %6, !dbg !367
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_sem_count_get(ptr noundef %0) #0 !dbg !368 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !378, metadata !DIExpression()), !dbg !379
  %3 = load ptr, ptr %2, align 4, !dbg !380
  %4 = getelementptr inbounds %struct.k_sem, ptr %3, i32 0, i32 1, !dbg !381
  %5 = load i32, ptr %4, align 4, !dbg !381
  ret i32 %5, !dbg !382
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_msgq_num_free_get(ptr noundef %0) #0 !dbg !383 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !402, metadata !DIExpression()), !dbg !403
  %3 = load ptr, ptr %2, align 4, !dbg !404
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 3, !dbg !405
  %5 = load i32, ptr %4, align 4, !dbg !405
  %6 = load ptr, ptr %2, align 4, !dbg !406
  %7 = getelementptr inbounds %struct.k_msgq, ptr %6, i32 0, i32 8, !dbg !407
  %8 = load i32, ptr %7, align 4, !dbg !407
  %9 = sub i32 %5, %8, !dbg !408
  ret i32 %9, !dbg !409
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_msgq_num_used_get(ptr noundef %0) #0 !dbg !410 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !412, metadata !DIExpression()), !dbg !413
  %3 = load ptr, ptr %2, align 4, !dbg !414
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 8, !dbg !415
  %5 = load i32, ptr %4, align 4, !dbg !415
  ret i32 %5, !dbg !416
}

; Function Attrs: nounwind optsize
define hidden void @k_msgq_init(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #1 !dbg !417 {
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.k_spinlock, align 1
  store ptr %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !424, metadata !DIExpression()), !dbg !428
  store ptr %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !425, metadata !DIExpression()), !dbg !429
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !426, metadata !DIExpression()), !dbg !430
  store i32 %3, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !427, metadata !DIExpression()), !dbg !431
  %10 = load i32, ptr %7, align 4, !dbg !432
  %11 = load ptr, ptr %5, align 4, !dbg !433
  %12 = getelementptr inbounds %struct.k_msgq, ptr %11, i32 0, i32 2, !dbg !434
  store i32 %10, ptr %12, align 4, !dbg !435
  %13 = load i32, ptr %8, align 4, !dbg !436
  %14 = load ptr, ptr %5, align 4, !dbg !437
  %15 = getelementptr inbounds %struct.k_msgq, ptr %14, i32 0, i32 3, !dbg !438
  store i32 %13, ptr %15, align 4, !dbg !439
  %16 = load ptr, ptr %6, align 4, !dbg !440
  %17 = load ptr, ptr %5, align 4, !dbg !441
  %18 = getelementptr inbounds %struct.k_msgq, ptr %17, i32 0, i32 4, !dbg !442
  store ptr %16, ptr %18, align 4, !dbg !443
  %19 = load ptr, ptr %6, align 4, !dbg !444
  %20 = load i32, ptr %8, align 4, !dbg !445
  %21 = load i32, ptr %7, align 4, !dbg !446
  %22 = mul i32 %20, %21, !dbg !447
  %23 = getelementptr inbounds i8, ptr %19, i32 %22, !dbg !448
  %24 = load ptr, ptr %5, align 4, !dbg !449
  %25 = getelementptr inbounds %struct.k_msgq, ptr %24, i32 0, i32 5, !dbg !450
  store ptr %23, ptr %25, align 4, !dbg !451
  %26 = load ptr, ptr %6, align 4, !dbg !452
  %27 = load ptr, ptr %5, align 4, !dbg !453
  %28 = getelementptr inbounds %struct.k_msgq, ptr %27, i32 0, i32 6, !dbg !454
  store ptr %26, ptr %28, align 4, !dbg !455
  %29 = load ptr, ptr %6, align 4, !dbg !456
  %30 = load ptr, ptr %5, align 4, !dbg !457
  %31 = getelementptr inbounds %struct.k_msgq, ptr %30, i32 0, i32 7, !dbg !458
  store ptr %29, ptr %31, align 4, !dbg !459
  %32 = load ptr, ptr %5, align 4, !dbg !460
  %33 = getelementptr inbounds %struct.k_msgq, ptr %32, i32 0, i32 8, !dbg !461
  store i32 0, ptr %33, align 4, !dbg !462
  %34 = load ptr, ptr %5, align 4, !dbg !463
  %35 = getelementptr inbounds %struct.k_msgq, ptr %34, i32 0, i32 9, !dbg !464
  store i8 0, ptr %35, align 4, !dbg !465
  %36 = load ptr, ptr %5, align 4, !dbg !466
  %37 = getelementptr inbounds %struct.k_msgq, ptr %36, i32 0, i32 0, !dbg !467
  call void @z_waitq_init(ptr noundef %37) #6, !dbg !468
  %38 = load ptr, ptr %5, align 4, !dbg !469
  %39 = getelementptr inbounds %struct.k_msgq, ptr %38, i32 0, i32 1, !dbg !470
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %39, ptr align 1 %9, i32 0, i1 false), !dbg !471
  br label %40, !dbg !472

40:                                               ; preds = %4
  br label %41, !dbg !473

41:                                               ; preds = %40
  %42 = load ptr, ptr %5, align 4, !dbg !475
  call void @z_object_init(ptr noundef %42) #6, !dbg !476
  ret void, !dbg !477
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: inlinehint nounwind optsize
define internal void @z_waitq_init(ptr noundef %0) #0 !dbg !478 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !483, metadata !DIExpression()), !dbg !484
  %3 = load ptr, ptr %2, align 4, !dbg !485
  %4 = getelementptr inbounds %struct._wait_q_t, ptr %3, i32 0, i32 0, !dbg !486
  call void @sys_dlist_init(ptr noundef %4) #6, !dbg !487
  ret void, !dbg !488
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: inlinehint nounwind optsize
define internal void @z_object_init(ptr noundef %0) #0 !dbg !489 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !491, metadata !DIExpression()), !dbg !492
  %3 = load ptr, ptr %2, align 4, !dbg !493
  ret void, !dbg !494
}

; Function Attrs: nounwind optsize
define hidden i32 @z_impl_k_msgq_alloc_init(ptr noundef %0, i32 noundef %1, i32 noundef %2) #1 !dbg !495 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !499, metadata !DIExpression()), !dbg !505
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !500, metadata !DIExpression()), !dbg !506
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !501, metadata !DIExpression()), !dbg !507
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #7, !dbg !508
  call void @llvm.dbg.declare(metadata ptr %7, metadata !502, metadata !DIExpression()), !dbg !509
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #7, !dbg !510
  call void @llvm.dbg.declare(metadata ptr %8, metadata !503, metadata !DIExpression()), !dbg !511
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #7, !dbg !512
  call void @llvm.dbg.declare(metadata ptr %9, metadata !504, metadata !DIExpression()), !dbg !513
  br label %10, !dbg !514

10:                                               ; preds = %3
  br label %11, !dbg !515

11:                                               ; preds = %10
  br label %12, !dbg !515

12:                                               ; preds = %11
  %13 = load i32, ptr %5, align 4, !dbg !517
  %14 = load i32, ptr %6, align 4, !dbg !519
  %15 = call zeroext i1 @size_mul_overflow(i32 noundef %13, i32 noundef %14, ptr noundef %9) #6, !dbg !520
  br i1 %15, label %16, label %17, !dbg !521

16:                                               ; preds = %12
  store i32 -5, ptr %8, align 4, !dbg !522
  br label %31, !dbg !524

17:                                               ; preds = %12
  %18 = load i32, ptr %9, align 4, !dbg !525
  %19 = call ptr @z_thread_malloc(i32 noundef %18) #6, !dbg !527
  store ptr %19, ptr %7, align 4, !dbg !528
  %20 = load ptr, ptr %7, align 4, !dbg !529
  %21 = icmp ne ptr %20, null, !dbg !531
  br i1 %21, label %22, label %29, !dbg !532

22:                                               ; preds = %17
  %23 = load ptr, ptr %4, align 4, !dbg !533
  %24 = load ptr, ptr %7, align 4, !dbg !535
  %25 = load i32, ptr %5, align 4, !dbg !536
  %26 = load i32, ptr %6, align 4, !dbg !537
  call void @k_msgq_init(ptr noundef %23, ptr noundef %24, i32 noundef %25, i32 noundef %26) #6, !dbg !538
  %27 = load ptr, ptr %4, align 4, !dbg !539
  %28 = getelementptr inbounds %struct.k_msgq, ptr %27, i32 0, i32 9, !dbg !540
  store i8 1, ptr %28, align 4, !dbg !541
  store i32 0, ptr %8, align 4, !dbg !542
  br label %30, !dbg !543

29:                                               ; preds = %17
  store i32 -6, ptr %8, align 4, !dbg !544
  br label %30

30:                                               ; preds = %29, %22
  br label %31

31:                                               ; preds = %30, %16
  br label %32, !dbg !546

32:                                               ; preds = %31
  br label %33, !dbg !547

33:                                               ; preds = %32
  br label %34, !dbg !547

34:                                               ; preds = %33
  %35 = load i32, ptr %8, align 4, !dbg !549
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #7, !dbg !550
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #7, !dbg !550
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #7, !dbg !550
  ret i32 %35, !dbg !551
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @size_mul_overflow(i32 noundef %0, i32 noundef %1, ptr noundef %2) #0 !dbg !552 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 4
  store i32 %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !559, metadata !DIExpression()), !dbg !562
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !560, metadata !DIExpression()), !dbg !563
  store ptr %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !561, metadata !DIExpression()), !dbg !564
  %7 = load i32, ptr %4, align 4, !dbg !565
  %8 = load i32, ptr %5, align 4, !dbg !566
  %9 = load ptr, ptr %6, align 4, !dbg !567
  %10 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %7, i32 %8), !dbg !568
  %11 = extractvalue { i32, i1 } %10, 1, !dbg !568
  %12 = extractvalue { i32, i1 } %10, 0, !dbg !568
  store i32 %12, ptr %9, align 4, !dbg !568
  ret i1 %11, !dbg !569
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_thread_malloc(i32 noundef %0) #0 !dbg !570 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !575, metadata !DIExpression()), !dbg !576
  %3 = load i32, ptr %2, align 4, !dbg !577
  %4 = call ptr @z_thread_aligned_alloc(i32 noundef 0, i32 noundef %3) #6, !dbg !578
  ret ptr %4, !dbg !579
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind optsize
define hidden i32 @k_msgq_cleanup(ptr noundef %0) #1 !dbg !580 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !584, metadata !DIExpression()), !dbg !585
  br label %4, !dbg !586

4:                                                ; preds = %1
  br label %5, !dbg !587

5:                                                ; preds = %4
  %6 = load ptr, ptr %3, align 4, !dbg !589
  %7 = getelementptr inbounds %struct.k_msgq, ptr %6, i32 0, i32 0, !dbg !591
  %8 = call ptr @z_waitq_head(ptr noundef %7) #6, !dbg !592
  %9 = icmp ne ptr %8, null, !dbg !593
  br i1 %9, label %10, label %13, !dbg !594

10:                                               ; preds = %5
  br label %11, !dbg !595

11:                                               ; preds = %10
  br label %12, !dbg !597

12:                                               ; preds = %11
  store i32 -16, ptr %2, align 4, !dbg !599
  br label %33, !dbg !599

13:                                               ; preds = %5
  %14 = load ptr, ptr %3, align 4, !dbg !600
  %15 = getelementptr inbounds %struct.k_msgq, ptr %14, i32 0, i32 9, !dbg !602
  %16 = load i8, ptr %15, align 4, !dbg !602
  %17 = zext i8 %16 to i32, !dbg !600
  %18 = and i32 %17, 1, !dbg !603
  %19 = icmp ne i32 %18, 0, !dbg !604
  br i1 %19, label %20, label %30, !dbg !605

20:                                               ; preds = %13
  %21 = load ptr, ptr %3, align 4, !dbg !606
  %22 = getelementptr inbounds %struct.k_msgq, ptr %21, i32 0, i32 4, !dbg !608
  %23 = load ptr, ptr %22, align 4, !dbg !608
  call void @k_free(ptr noundef %23) #6, !dbg !609
  %24 = load ptr, ptr %3, align 4, !dbg !610
  %25 = getelementptr inbounds %struct.k_msgq, ptr %24, i32 0, i32 9, !dbg !611
  %26 = load i8, ptr %25, align 4, !dbg !612
  %27 = zext i8 %26 to i32, !dbg !612
  %28 = and i32 %27, -2, !dbg !612
  %29 = trunc i32 %28 to i8, !dbg !612
  store i8 %29, ptr %25, align 4, !dbg !612
  br label %30, !dbg !613

30:                                               ; preds = %20, %13
  br label %31, !dbg !614

31:                                               ; preds = %30
  br label %32, !dbg !615

32:                                               ; preds = %31
  store i32 0, ptr %2, align 4, !dbg !617
  br label %33, !dbg !617

33:                                               ; preds = %32, %12
  %34 = load i32, ptr %2, align 4, !dbg !618
  ret i32 %34, !dbg !618
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_waitq_head(ptr noundef %0) #0 !dbg !619 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !623, metadata !DIExpression()), !dbg !624
  %3 = load ptr, ptr %2, align 4, !dbg !625
  %4 = getelementptr inbounds %struct._wait_q_t, ptr %3, i32 0, i32 0, !dbg !626
  %5 = call ptr @sys_dlist_peek_head(ptr noundef %4) #6, !dbg !627
  ret ptr %5, !dbg !628
}

; Function Attrs: optsize
declare !dbg !629 dso_local void @k_free(ptr noundef) #5

; Function Attrs: nounwind optsize
define hidden i32 @z_impl_k_msgq_put(ptr noundef %0, ptr noundef %1, [1 x i64] %2) #1 !dbg !632 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.z_spinlock_key, align 4
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.z_spinlock_key, align 4
  %13 = alloca ptr, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.k_timeout_t, align 8
  %16 = alloca ptr, align 4
  %17 = alloca ptr, align 4
  %18 = alloca ptr, align 4
  %19 = alloca %struct.z_spinlock_key, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.z_spinlock_key, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.k_timeout_t, align 8
  %24 = getelementptr inbounds %struct.k_timeout_t, ptr %15, i32 0, i32 0
  store [1 x i64] %2, ptr %24, align 8
  store ptr %0, ptr %16, align 4
  call void @llvm.dbg.declare(metadata ptr %16, metadata !636, metadata !DIExpression()), !dbg !646
  store ptr %1, ptr %17, align 4
  call void @llvm.dbg.declare(metadata ptr %17, metadata !637, metadata !DIExpression()), !dbg !647
  call void @llvm.dbg.declare(metadata ptr %15, metadata !638, metadata !DIExpression()), !dbg !648
  call void @llvm.lifetime.start.p0(i64 4, ptr %18) #7, !dbg !649
  call void @llvm.dbg.declare(metadata ptr %18, metadata !639, metadata !DIExpression()), !dbg !650
  call void @llvm.lifetime.start.p0(i64 4, ptr %19) #7, !dbg !651
  call void @llvm.dbg.declare(metadata ptr %19, metadata !640, metadata !DIExpression()), !dbg !652
  call void @llvm.lifetime.start.p0(i64 4, ptr %20) #7, !dbg !653
  call void @llvm.dbg.declare(metadata ptr %20, metadata !645, metadata !DIExpression()), !dbg !654
  call void @llvm.lifetime.start.p0(i64 4, ptr %21) #7, !dbg !655
  %25 = load ptr, ptr %16, align 4, !dbg !656
  %26 = getelementptr inbounds %struct.k_msgq, ptr %25, i32 0, i32 1, !dbg !657
  store ptr %26, ptr %13, align 4
  call void @llvm.dbg.declare(metadata ptr %13, metadata !658, metadata !DIExpression()), !dbg !665
  %27 = load ptr, ptr %13, align 4, !dbg !667
  call void @llvm.dbg.declare(metadata ptr %12, metadata !664, metadata !DIExpression()), !dbg !668
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #7, !dbg !669
  call void @llvm.dbg.declare(metadata ptr %7, metadata !675, metadata !DIExpression()), !dbg !677
  %28 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #7, !dbg !678, !srcloc !679
  store i32 %28, ptr %7, align 4, !dbg !678
  %29 = load i32, ptr %7, align 4, !dbg !680
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #7, !dbg !681
  store i32 %29, ptr %12, align 4, !dbg !682
  %30 = load ptr, ptr %13, align 4, !dbg !683
  store ptr %30, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !684, metadata !DIExpression()), !dbg !689
  %31 = load ptr, ptr %6, align 4, !dbg !691
  %32 = load ptr, ptr %13, align 4, !dbg !692
  store ptr %32, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !693, metadata !DIExpression()), !dbg !696
  %33 = load ptr, ptr %5, align 4, !dbg !698
  %34 = load i32, ptr %12, align 4, !dbg !699
  %35 = getelementptr inbounds %struct.z_spinlock_key, ptr %21, i32 0, i32 0, !dbg !655
  store i32 %34, ptr %35, align 4, !dbg !655
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %19, ptr align 4 %21, i32 4, i1 false), !dbg !655
  call void @llvm.lifetime.end.p0(i64 4, ptr %21) #7, !dbg !655
  br label %36, !dbg !700

36:                                               ; preds = %3
  br label %37, !dbg !701

37:                                               ; preds = %36
  br label %38, !dbg !701

38:                                               ; preds = %37
  %39 = load ptr, ptr %16, align 4, !dbg !703
  %40 = getelementptr inbounds %struct.k_msgq, ptr %39, i32 0, i32 8, !dbg !705
  %41 = load i32, ptr %40, align 4, !dbg !705
  %42 = load ptr, ptr %16, align 4, !dbg !706
  %43 = getelementptr inbounds %struct.k_msgq, ptr %42, i32 0, i32 3, !dbg !707
  %44 = load i32, ptr %43, align 4, !dbg !707
  %45 = icmp ult i32 %41, %44, !dbg !708
  br i1 %45, label %46, label %108, !dbg !709

46:                                               ; preds = %38
  %47 = load ptr, ptr %16, align 4, !dbg !710
  %48 = getelementptr inbounds %struct.k_msgq, ptr %47, i32 0, i32 0, !dbg !712
  %49 = call ptr @z_unpend_first_thread(ptr noundef %48) #6, !dbg !713
  store ptr %49, ptr %18, align 4, !dbg !714
  %50 = load ptr, ptr %18, align 4, !dbg !715
  %51 = icmp ne ptr %50, null, !dbg !717
  br i1 %51, label %52, label %74, !dbg !718

52:                                               ; preds = %46
  br label %53, !dbg !719

53:                                               ; preds = %52
  br label %54, !dbg !721

54:                                               ; preds = %53
  br label %55, !dbg !721

55:                                               ; preds = %54
  %56 = load ptr, ptr %18, align 4, !dbg !723
  %57 = getelementptr inbounds %struct.k_thread, ptr %56, i32 0, i32 0, !dbg !724
  %58 = getelementptr inbounds %struct._thread_base, ptr %57, i32 0, i32 6, !dbg !725
  %59 = load ptr, ptr %58, align 4, !dbg !725
  %60 = load ptr, ptr %17, align 4, !dbg !726
  %61 = load ptr, ptr %16, align 4, !dbg !727
  %62 = getelementptr inbounds %struct.k_msgq, ptr %61, i32 0, i32 2, !dbg !728
  %63 = load i32, ptr %62, align 4, !dbg !728
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %59, ptr align 1 %60, i32 %63, i1 false), !dbg !729
  %64 = load ptr, ptr %18, align 4, !dbg !730
  store ptr %64, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !731, metadata !DIExpression()), !dbg !738
  store i32 0, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !737, metadata !DIExpression()), !dbg !740
  %65 = load i32, ptr %11, align 4, !dbg !741
  %66 = load ptr, ptr %10, align 4, !dbg !742
  %67 = getelementptr inbounds %struct.k_thread, ptr %66, i32 0, i32 6, !dbg !743
  %68 = getelementptr inbounds %struct._thread_arch, ptr %67, i32 0, i32 1, !dbg !744
  store i32 %65, ptr %68, align 4, !dbg !745
  %69 = load ptr, ptr %18, align 4, !dbg !746
  call void @z_ready_thread(ptr noundef %69) #6, !dbg !747
  %70 = load ptr, ptr %16, align 4, !dbg !748
  %71 = getelementptr inbounds %struct.k_msgq, ptr %70, i32 0, i32 1, !dbg !749
  %72 = getelementptr inbounds %struct.z_spinlock_key, ptr %19, i32 0, i32 0, !dbg !750
  %73 = load [1 x i32], ptr %72, align 4, !dbg !750
  call void @z_reschedule(ptr noundef %71, [1 x i32] %73) #6, !dbg !750
  store i32 0, ptr %14, align 4, !dbg !751
  store i32 1, ptr %22, align 4
  br label %151, !dbg !751

74:                                               ; preds = %46
  %75 = load ptr, ptr %16, align 4, !dbg !752
  %76 = getelementptr inbounds %struct.k_msgq, ptr %75, i32 0, i32 7, !dbg !754
  %77 = load ptr, ptr %76, align 4, !dbg !754
  %78 = load ptr, ptr %17, align 4, !dbg !755
  %79 = load ptr, ptr %16, align 4, !dbg !756
  %80 = getelementptr inbounds %struct.k_msgq, ptr %79, i32 0, i32 2, !dbg !757
  %81 = load i32, ptr %80, align 4, !dbg !757
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %77, ptr align 1 %78, i32 %81, i1 false), !dbg !758
  %82 = load ptr, ptr %16, align 4, !dbg !759
  %83 = getelementptr inbounds %struct.k_msgq, ptr %82, i32 0, i32 2, !dbg !760
  %84 = load i32, ptr %83, align 4, !dbg !760
  %85 = load ptr, ptr %16, align 4, !dbg !761
  %86 = getelementptr inbounds %struct.k_msgq, ptr %85, i32 0, i32 7, !dbg !762
  %87 = load ptr, ptr %86, align 4, !dbg !763
  %88 = getelementptr inbounds i8, ptr %87, i32 %84, !dbg !763
  store ptr %88, ptr %86, align 4, !dbg !763
  %89 = load ptr, ptr %16, align 4, !dbg !764
  %90 = getelementptr inbounds %struct.k_msgq, ptr %89, i32 0, i32 7, !dbg !766
  %91 = load ptr, ptr %90, align 4, !dbg !766
  %92 = load ptr, ptr %16, align 4, !dbg !767
  %93 = getelementptr inbounds %struct.k_msgq, ptr %92, i32 0, i32 5, !dbg !768
  %94 = load ptr, ptr %93, align 4, !dbg !768
  %95 = icmp eq ptr %91, %94, !dbg !769
  br i1 %95, label %96, label %102, !dbg !770

96:                                               ; preds = %74
  %97 = load ptr, ptr %16, align 4, !dbg !771
  %98 = getelementptr inbounds %struct.k_msgq, ptr %97, i32 0, i32 4, !dbg !773
  %99 = load ptr, ptr %98, align 4, !dbg !773
  %100 = load ptr, ptr %16, align 4, !dbg !774
  %101 = getelementptr inbounds %struct.k_msgq, ptr %100, i32 0, i32 7, !dbg !775
  store ptr %99, ptr %101, align 4, !dbg !776
  br label %102, !dbg !777

102:                                              ; preds = %96, %74
  %103 = load ptr, ptr %16, align 4, !dbg !778
  %104 = getelementptr inbounds %struct.k_msgq, ptr %103, i32 0, i32 8, !dbg !779
  %105 = load i32, ptr %104, align 4, !dbg !780
  %106 = add i32 %105, 1, !dbg !780
  store i32 %106, ptr %104, align 4, !dbg !780
  br label %107

107:                                              ; preds = %102
  store i32 0, ptr %20, align 4, !dbg !781
  br label %136, !dbg !782

108:                                              ; preds = %38
  %109 = getelementptr inbounds %struct.k_timeout_t, ptr %15, i32 0, i32 0, !dbg !783
  %110 = load i64, ptr %109, align 8, !dbg !783
  %111 = getelementptr inbounds %struct.k_timeout_t, ptr %23, i32 0, i32 0, !dbg !785
  store i64 0, ptr %111, align 8, !dbg !785
  %112 = icmp eq i64 %110, 0, !dbg !786
  br i1 %112, label %113, label %114, !dbg !787

113:                                              ; preds = %108
  store i32 -35, ptr %20, align 4, !dbg !788
  br label %135, !dbg !790

114:                                              ; preds = %108
  br label %115, !dbg !791

115:                                              ; preds = %114
  br label %116, !dbg !793

116:                                              ; preds = %115
  br label %117, !dbg !793

117:                                              ; preds = %116
  %118 = load ptr, ptr %17, align 4, !dbg !795
  %119 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !796
  %120 = getelementptr inbounds %struct.k_thread, ptr %119, i32 0, i32 0, !dbg !797
  %121 = getelementptr inbounds %struct._thread_base, ptr %120, i32 0, i32 6, !dbg !798
  store ptr %118, ptr %121, align 4, !dbg !799
  %122 = load ptr, ptr %16, align 4, !dbg !800
  %123 = getelementptr inbounds %struct.k_msgq, ptr %122, i32 0, i32 1, !dbg !801
  %124 = load ptr, ptr %16, align 4, !dbg !802
  %125 = getelementptr inbounds %struct.k_msgq, ptr %124, i32 0, i32 0, !dbg !803
  %126 = getelementptr inbounds %struct.z_spinlock_key, ptr %19, i32 0, i32 0, !dbg !804
  %127 = load [1 x i32], ptr %126, align 4, !dbg !804
  %128 = getelementptr inbounds %struct.k_timeout_t, ptr %15, i32 0, i32 0, !dbg !804
  %129 = load [1 x i64], ptr %128, align 8, !dbg !804
  %130 = call i32 @z_pend_curr(ptr noundef %123, [1 x i32] %127, ptr noundef %125, [1 x i64] %129) #6, !dbg !804
  store i32 %130, ptr %20, align 4, !dbg !805
  br label %131, !dbg !806

131:                                              ; preds = %117
  br label %132, !dbg !807

132:                                              ; preds = %131
  br label %133, !dbg !807

133:                                              ; preds = %132
  %134 = load i32, ptr %20, align 4, !dbg !809
  store i32 %134, ptr %14, align 4, !dbg !810
  store i32 1, ptr %22, align 4
  br label %151, !dbg !810

135:                                              ; preds = %113
  br label %136

136:                                              ; preds = %135, %107
  br label %137, !dbg !811

137:                                              ; preds = %136
  br label %138, !dbg !812

138:                                              ; preds = %137
  br label %139, !dbg !812

139:                                              ; preds = %138
  %140 = load ptr, ptr %16, align 4, !dbg !814
  %141 = getelementptr inbounds %struct.k_msgq, ptr %140, i32 0, i32 1, !dbg !815
  %142 = getelementptr inbounds %struct.z_spinlock_key, ptr %19, i32 0, i32 0, !dbg !816
  %143 = load [1 x i32], ptr %142, align 4, !dbg !816
  store [1 x i32] %143, ptr %8, align 4
  store ptr %141, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !817, metadata !DIExpression()), !dbg !823
  call void @llvm.dbg.declare(metadata ptr %8, metadata !822, metadata !DIExpression()), !dbg !825
  %144 = load ptr, ptr %9, align 4, !dbg !826
  %145 = load i32, ptr %8, align 4, !dbg !827
  store i32 %145, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !828, metadata !DIExpression()), !dbg !833
  %146 = load i32, ptr %4, align 4, !dbg !835
  %147 = icmp ne i32 %146, 0, !dbg !837
  br i1 %147, label %148, label %149, !dbg !838

148:                                              ; preds = %139
  br label %arch_irq_unlock.exit, !dbg !839

149:                                              ; preds = %139
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #7, !dbg !841, !srcloc !842
  br label %arch_irq_unlock.exit, !dbg !843

arch_irq_unlock.exit:                             ; preds = %148, %149
  %150 = load i32, ptr %20, align 4, !dbg !844
  store i32 %150, ptr %14, align 4, !dbg !845
  store i32 1, ptr %22, align 4
  br label %151, !dbg !845

151:                                              ; preds = %arch_irq_unlock.exit, %133, %55
  call void @llvm.lifetime.end.p0(i64 4, ptr %20) #7, !dbg !846
  call void @llvm.lifetime.end.p0(i64 4, ptr %19) #7, !dbg !846
  call void @llvm.lifetime.end.p0(i64 4, ptr %18) #7, !dbg !846
  %152 = load i32, ptr %14, align 4, !dbg !846
  ret i32 %152, !dbg !846
}

; Function Attrs: optsize
declare !dbg !847 dso_local ptr @z_unpend_first_thread(ptr noundef) #5

; Function Attrs: optsize
declare !dbg !849 dso_local void @z_ready_thread(ptr noundef) #5

; Function Attrs: optsize
declare !dbg !852 dso_local void @z_reschedule(ptr noundef, [1 x i32]) #5

; Function Attrs: optsize
declare !dbg !853 dso_local i32 @z_pend_curr(ptr noundef, [1 x i32], ptr noundef, [1 x i64]) #5

; Function Attrs: nounwind optsize
define hidden void @z_impl_k_msgq_get_attrs(ptr noundef %0, ptr noundef %1) #1 !dbg !856 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !866, metadata !DIExpression()), !dbg !868
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !867, metadata !DIExpression()), !dbg !869
  %5 = load ptr, ptr %3, align 4, !dbg !870
  %6 = getelementptr inbounds %struct.k_msgq, ptr %5, i32 0, i32 2, !dbg !871
  %7 = load i32, ptr %6, align 4, !dbg !871
  %8 = load ptr, ptr %4, align 4, !dbg !872
  %9 = getelementptr inbounds %struct.k_msgq_attrs, ptr %8, i32 0, i32 0, !dbg !873
  store i32 %7, ptr %9, align 4, !dbg !874
  %10 = load ptr, ptr %3, align 4, !dbg !875
  %11 = getelementptr inbounds %struct.k_msgq, ptr %10, i32 0, i32 3, !dbg !876
  %12 = load i32, ptr %11, align 4, !dbg !876
  %13 = load ptr, ptr %4, align 4, !dbg !877
  %14 = getelementptr inbounds %struct.k_msgq_attrs, ptr %13, i32 0, i32 1, !dbg !878
  store i32 %12, ptr %14, align 4, !dbg !879
  %15 = load ptr, ptr %3, align 4, !dbg !880
  %16 = getelementptr inbounds %struct.k_msgq, ptr %15, i32 0, i32 8, !dbg !881
  %17 = load i32, ptr %16, align 4, !dbg !881
  %18 = load ptr, ptr %4, align 4, !dbg !882
  %19 = getelementptr inbounds %struct.k_msgq_attrs, ptr %18, i32 0, i32 2, !dbg !883
  store i32 %17, ptr %19, align 4, !dbg !884
  ret void, !dbg !885
}

; Function Attrs: nounwind optsize
define hidden i32 @z_impl_k_msgq_get(ptr noundef %0, ptr noundef %1, [1 x i64] %2) #1 !dbg !886 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.z_spinlock_key, align 4
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.z_spinlock_key, align 4
  %13 = alloca ptr, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.k_timeout_t, align 8
  %16 = alloca ptr, align 4
  %17 = alloca ptr, align 4
  %18 = alloca %struct.z_spinlock_key, align 4
  %19 = alloca ptr, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.z_spinlock_key, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.k_timeout_t, align 8
  %24 = getelementptr inbounds %struct.k_timeout_t, ptr %15, i32 0, i32 0
  store [1 x i64] %2, ptr %24, align 8
  store ptr %0, ptr %16, align 4
  call void @llvm.dbg.declare(metadata ptr %16, metadata !890, metadata !DIExpression()), !dbg !896
  store ptr %1, ptr %17, align 4
  call void @llvm.dbg.declare(metadata ptr %17, metadata !891, metadata !DIExpression()), !dbg !897
  call void @llvm.dbg.declare(metadata ptr %15, metadata !892, metadata !DIExpression()), !dbg !898
  call void @llvm.lifetime.start.p0(i64 4, ptr %18) #7, !dbg !899
  call void @llvm.dbg.declare(metadata ptr %18, metadata !893, metadata !DIExpression()), !dbg !900
  call void @llvm.lifetime.start.p0(i64 4, ptr %19) #7, !dbg !901
  call void @llvm.dbg.declare(metadata ptr %19, metadata !894, metadata !DIExpression()), !dbg !902
  call void @llvm.lifetime.start.p0(i64 4, ptr %20) #7, !dbg !903
  call void @llvm.dbg.declare(metadata ptr %20, metadata !895, metadata !DIExpression()), !dbg !904
  call void @llvm.lifetime.start.p0(i64 4, ptr %21) #7, !dbg !905
  %25 = load ptr, ptr %16, align 4, !dbg !906
  %26 = getelementptr inbounds %struct.k_msgq, ptr %25, i32 0, i32 1, !dbg !907
  store ptr %26, ptr %13, align 4
  call void @llvm.dbg.declare(metadata ptr %13, metadata !658, metadata !DIExpression()), !dbg !908
  %27 = load ptr, ptr %13, align 4, !dbg !910
  call void @llvm.dbg.declare(metadata ptr %12, metadata !664, metadata !DIExpression()), !dbg !911
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #7, !dbg !912
  call void @llvm.dbg.declare(metadata ptr %7, metadata !675, metadata !DIExpression()), !dbg !914
  %28 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #7, !dbg !915, !srcloc !679
  store i32 %28, ptr %7, align 4, !dbg !915
  %29 = load i32, ptr %7, align 4, !dbg !916
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #7, !dbg !917
  store i32 %29, ptr %12, align 4, !dbg !918
  %30 = load ptr, ptr %13, align 4, !dbg !919
  store ptr %30, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !684, metadata !DIExpression()), !dbg !920
  %31 = load ptr, ptr %6, align 4, !dbg !922
  %32 = load ptr, ptr %13, align 4, !dbg !923
  store ptr %32, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !693, metadata !DIExpression()), !dbg !924
  %33 = load ptr, ptr %5, align 4, !dbg !926
  %34 = load i32, ptr %12, align 4, !dbg !927
  %35 = getelementptr inbounds %struct.z_spinlock_key, ptr %21, i32 0, i32 0, !dbg !905
  store i32 %34, ptr %35, align 4, !dbg !905
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %18, ptr align 4 %21, i32 4, i1 false), !dbg !905
  call void @llvm.lifetime.end.p0(i64 4, ptr %21) #7, !dbg !905
  br label %36, !dbg !928

36:                                               ; preds = %3
  br label %37, !dbg !929

37:                                               ; preds = %36
  br label %38, !dbg !929

38:                                               ; preds = %37
  %39 = load ptr, ptr %16, align 4, !dbg !931
  %40 = getelementptr inbounds %struct.k_msgq, ptr %39, i32 0, i32 8, !dbg !933
  %41 = load i32, ptr %40, align 4, !dbg !933
  %42 = icmp ugt i32 %41, 0, !dbg !934
  br i1 %42, label %43, label %134, !dbg !935

43:                                               ; preds = %38
  %44 = load ptr, ptr %17, align 4, !dbg !936
  %45 = load ptr, ptr %16, align 4, !dbg !938
  %46 = getelementptr inbounds %struct.k_msgq, ptr %45, i32 0, i32 6, !dbg !939
  %47 = load ptr, ptr %46, align 4, !dbg !939
  %48 = load ptr, ptr %16, align 4, !dbg !940
  %49 = getelementptr inbounds %struct.k_msgq, ptr %48, i32 0, i32 2, !dbg !941
  %50 = load i32, ptr %49, align 4, !dbg !941
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %44, ptr align 1 %47, i32 %50, i1 false), !dbg !942
  %51 = load ptr, ptr %16, align 4, !dbg !943
  %52 = getelementptr inbounds %struct.k_msgq, ptr %51, i32 0, i32 2, !dbg !944
  %53 = load i32, ptr %52, align 4, !dbg !944
  %54 = load ptr, ptr %16, align 4, !dbg !945
  %55 = getelementptr inbounds %struct.k_msgq, ptr %54, i32 0, i32 6, !dbg !946
  %56 = load ptr, ptr %55, align 4, !dbg !947
  %57 = getelementptr inbounds i8, ptr %56, i32 %53, !dbg !947
  store ptr %57, ptr %55, align 4, !dbg !947
  %58 = load ptr, ptr %16, align 4, !dbg !948
  %59 = getelementptr inbounds %struct.k_msgq, ptr %58, i32 0, i32 6, !dbg !950
  %60 = load ptr, ptr %59, align 4, !dbg !950
  %61 = load ptr, ptr %16, align 4, !dbg !951
  %62 = getelementptr inbounds %struct.k_msgq, ptr %61, i32 0, i32 5, !dbg !952
  %63 = load ptr, ptr %62, align 4, !dbg !952
  %64 = icmp eq ptr %60, %63, !dbg !953
  br i1 %64, label %65, label %71, !dbg !954

65:                                               ; preds = %43
  %66 = load ptr, ptr %16, align 4, !dbg !955
  %67 = getelementptr inbounds %struct.k_msgq, ptr %66, i32 0, i32 4, !dbg !957
  %68 = load ptr, ptr %67, align 4, !dbg !957
  %69 = load ptr, ptr %16, align 4, !dbg !958
  %70 = getelementptr inbounds %struct.k_msgq, ptr %69, i32 0, i32 6, !dbg !959
  store ptr %68, ptr %70, align 4, !dbg !960
  br label %71, !dbg !961

71:                                               ; preds = %65, %43
  %72 = load ptr, ptr %16, align 4, !dbg !962
  %73 = getelementptr inbounds %struct.k_msgq, ptr %72, i32 0, i32 8, !dbg !963
  %74 = load i32, ptr %73, align 4, !dbg !964
  %75 = add i32 %74, -1, !dbg !964
  store i32 %75, ptr %73, align 4, !dbg !964
  %76 = load ptr, ptr %16, align 4, !dbg !965
  %77 = getelementptr inbounds %struct.k_msgq, ptr %76, i32 0, i32 0, !dbg !966
  %78 = call ptr @z_unpend_first_thread(ptr noundef %77) #6, !dbg !967
  store ptr %78, ptr %19, align 4, !dbg !968
  %79 = load ptr, ptr %19, align 4, !dbg !969
  %80 = icmp ne ptr %79, null, !dbg !971
  br i1 %80, label %81, label %133, !dbg !972

81:                                               ; preds = %71
  br label %82, !dbg !973

82:                                               ; preds = %81
  br label %83, !dbg !975

83:                                               ; preds = %82
  br label %84, !dbg !975

84:                                               ; preds = %83
  %85 = load ptr, ptr %16, align 4, !dbg !977
  %86 = getelementptr inbounds %struct.k_msgq, ptr %85, i32 0, i32 7, !dbg !978
  %87 = load ptr, ptr %86, align 4, !dbg !978
  %88 = load ptr, ptr %19, align 4, !dbg !979
  %89 = getelementptr inbounds %struct.k_thread, ptr %88, i32 0, i32 0, !dbg !980
  %90 = getelementptr inbounds %struct._thread_base, ptr %89, i32 0, i32 6, !dbg !981
  %91 = load ptr, ptr %90, align 4, !dbg !981
  %92 = load ptr, ptr %16, align 4, !dbg !982
  %93 = getelementptr inbounds %struct.k_msgq, ptr %92, i32 0, i32 2, !dbg !983
  %94 = load i32, ptr %93, align 4, !dbg !983
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %87, ptr align 1 %91, i32 %94, i1 false), !dbg !984
  %95 = load ptr, ptr %16, align 4, !dbg !985
  %96 = getelementptr inbounds %struct.k_msgq, ptr %95, i32 0, i32 2, !dbg !986
  %97 = load i32, ptr %96, align 4, !dbg !986
  %98 = load ptr, ptr %16, align 4, !dbg !987
  %99 = getelementptr inbounds %struct.k_msgq, ptr %98, i32 0, i32 7, !dbg !988
  %100 = load ptr, ptr %99, align 4, !dbg !989
  %101 = getelementptr inbounds i8, ptr %100, i32 %97, !dbg !989
  store ptr %101, ptr %99, align 4, !dbg !989
  %102 = load ptr, ptr %16, align 4, !dbg !990
  %103 = getelementptr inbounds %struct.k_msgq, ptr %102, i32 0, i32 7, !dbg !992
  %104 = load ptr, ptr %103, align 4, !dbg !992
  %105 = load ptr, ptr %16, align 4, !dbg !993
  %106 = getelementptr inbounds %struct.k_msgq, ptr %105, i32 0, i32 5, !dbg !994
  %107 = load ptr, ptr %106, align 4, !dbg !994
  %108 = icmp eq ptr %104, %107, !dbg !995
  br i1 %108, label %109, label %115, !dbg !996

109:                                              ; preds = %84
  %110 = load ptr, ptr %16, align 4, !dbg !997
  %111 = getelementptr inbounds %struct.k_msgq, ptr %110, i32 0, i32 4, !dbg !999
  %112 = load ptr, ptr %111, align 4, !dbg !999
  %113 = load ptr, ptr %16, align 4, !dbg !1000
  %114 = getelementptr inbounds %struct.k_msgq, ptr %113, i32 0, i32 7, !dbg !1001
  store ptr %112, ptr %114, align 4, !dbg !1002
  br label %115, !dbg !1003

115:                                              ; preds = %109, %84
  %116 = load ptr, ptr %16, align 4, !dbg !1004
  %117 = getelementptr inbounds %struct.k_msgq, ptr %116, i32 0, i32 8, !dbg !1005
  %118 = load i32, ptr %117, align 4, !dbg !1006
  %119 = add i32 %118, 1, !dbg !1006
  store i32 %119, ptr %117, align 4, !dbg !1006
  %120 = load ptr, ptr %19, align 4, !dbg !1007
  store ptr %120, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !731, metadata !DIExpression()), !dbg !1008
  store i32 0, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !737, metadata !DIExpression()), !dbg !1010
  %121 = load i32, ptr %11, align 4, !dbg !1011
  %122 = load ptr, ptr %10, align 4, !dbg !1012
  %123 = getelementptr inbounds %struct.k_thread, ptr %122, i32 0, i32 6, !dbg !1013
  %124 = getelementptr inbounds %struct._thread_arch, ptr %123, i32 0, i32 1, !dbg !1014
  store i32 %121, ptr %124, align 4, !dbg !1015
  %125 = load ptr, ptr %19, align 4, !dbg !1016
  call void @z_ready_thread(ptr noundef %125) #6, !dbg !1017
  %126 = load ptr, ptr %16, align 4, !dbg !1018
  %127 = getelementptr inbounds %struct.k_msgq, ptr %126, i32 0, i32 1, !dbg !1019
  %128 = getelementptr inbounds %struct.z_spinlock_key, ptr %18, i32 0, i32 0, !dbg !1020
  %129 = load [1 x i32], ptr %128, align 4, !dbg !1020
  call void @z_reschedule(ptr noundef %127, [1 x i32] %129) #6, !dbg !1020
  br label %130, !dbg !1021

130:                                              ; preds = %115
  br label %131, !dbg !1022

131:                                              ; preds = %130
  br label %132, !dbg !1022

132:                                              ; preds = %131
  store i32 0, ptr %14, align 4, !dbg !1024
  store i32 1, ptr %22, align 4
  br label %177, !dbg !1024

133:                                              ; preds = %71
  store i32 0, ptr %20, align 4, !dbg !1025
  br label %162, !dbg !1026

134:                                              ; preds = %38
  %135 = getelementptr inbounds %struct.k_timeout_t, ptr %15, i32 0, i32 0, !dbg !1027
  %136 = load i64, ptr %135, align 8, !dbg !1027
  %137 = getelementptr inbounds %struct.k_timeout_t, ptr %23, i32 0, i32 0, !dbg !1029
  store i64 0, ptr %137, align 8, !dbg !1029
  %138 = icmp eq i64 %136, 0, !dbg !1030
  br i1 %138, label %139, label %140, !dbg !1031

139:                                              ; preds = %134
  store i32 -35, ptr %20, align 4, !dbg !1032
  br label %161, !dbg !1034

140:                                              ; preds = %134
  br label %141, !dbg !1035

141:                                              ; preds = %140
  br label %142, !dbg !1037

142:                                              ; preds = %141
  br label %143, !dbg !1037

143:                                              ; preds = %142
  %144 = load ptr, ptr %17, align 4, !dbg !1039
  %145 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !1040
  %146 = getelementptr inbounds %struct.k_thread, ptr %145, i32 0, i32 0, !dbg !1041
  %147 = getelementptr inbounds %struct._thread_base, ptr %146, i32 0, i32 6, !dbg !1042
  store ptr %144, ptr %147, align 4, !dbg !1043
  %148 = load ptr, ptr %16, align 4, !dbg !1044
  %149 = getelementptr inbounds %struct.k_msgq, ptr %148, i32 0, i32 1, !dbg !1045
  %150 = load ptr, ptr %16, align 4, !dbg !1046
  %151 = getelementptr inbounds %struct.k_msgq, ptr %150, i32 0, i32 0, !dbg !1047
  %152 = getelementptr inbounds %struct.z_spinlock_key, ptr %18, i32 0, i32 0, !dbg !1048
  %153 = load [1 x i32], ptr %152, align 4, !dbg !1048
  %154 = getelementptr inbounds %struct.k_timeout_t, ptr %15, i32 0, i32 0, !dbg !1048
  %155 = load [1 x i64], ptr %154, align 8, !dbg !1048
  %156 = call i32 @z_pend_curr(ptr noundef %149, [1 x i32] %153, ptr noundef %151, [1 x i64] %155) #6, !dbg !1048
  store i32 %156, ptr %20, align 4, !dbg !1049
  br label %157, !dbg !1050

157:                                              ; preds = %143
  br label %158, !dbg !1051

158:                                              ; preds = %157
  br label %159, !dbg !1051

159:                                              ; preds = %158
  %160 = load i32, ptr %20, align 4, !dbg !1053
  store i32 %160, ptr %14, align 4, !dbg !1054
  store i32 1, ptr %22, align 4
  br label %177, !dbg !1054

161:                                              ; preds = %139
  br label %162

162:                                              ; preds = %161, %133
  br label %163, !dbg !1055

163:                                              ; preds = %162
  br label %164, !dbg !1056

164:                                              ; preds = %163
  br label %165, !dbg !1056

165:                                              ; preds = %164
  %166 = load ptr, ptr %16, align 4, !dbg !1058
  %167 = getelementptr inbounds %struct.k_msgq, ptr %166, i32 0, i32 1, !dbg !1059
  %168 = getelementptr inbounds %struct.z_spinlock_key, ptr %18, i32 0, i32 0, !dbg !1060
  %169 = load [1 x i32], ptr %168, align 4, !dbg !1060
  store [1 x i32] %169, ptr %8, align 4
  store ptr %167, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !817, metadata !DIExpression()), !dbg !1061
  call void @llvm.dbg.declare(metadata ptr %8, metadata !822, metadata !DIExpression()), !dbg !1063
  %170 = load ptr, ptr %9, align 4, !dbg !1064
  %171 = load i32, ptr %8, align 4, !dbg !1065
  store i32 %171, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !828, metadata !DIExpression()), !dbg !1066
  %172 = load i32, ptr %4, align 4, !dbg !1068
  %173 = icmp ne i32 %172, 0, !dbg !1069
  br i1 %173, label %174, label %175, !dbg !1070

174:                                              ; preds = %165
  br label %arch_irq_unlock.exit, !dbg !1071

175:                                              ; preds = %165
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #7, !dbg !1072, !srcloc !842
  br label %arch_irq_unlock.exit, !dbg !1073

arch_irq_unlock.exit:                             ; preds = %174, %175
  %176 = load i32, ptr %20, align 4, !dbg !1074
  store i32 %176, ptr %14, align 4, !dbg !1075
  store i32 1, ptr %22, align 4
  br label %177, !dbg !1075

177:                                              ; preds = %arch_irq_unlock.exit, %159, %132
  call void @llvm.lifetime.end.p0(i64 4, ptr %20) #7, !dbg !1076
  call void @llvm.lifetime.end.p0(i64 4, ptr %19) #7, !dbg !1076
  call void @llvm.lifetime.end.p0(i64 4, ptr %18) #7, !dbg !1076
  %178 = load i32, ptr %14, align 4, !dbg !1076
  ret i32 %178, !dbg !1076
}

; Function Attrs: nounwind optsize
define hidden i32 @z_impl_k_msgq_peek(ptr noundef %0, ptr noundef %1) #1 !dbg !1077 {
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
  %14 = alloca i32, align 4
  %15 = alloca %struct.z_spinlock_key, align 4
  store ptr %0, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1081, metadata !DIExpression()), !dbg !1085
  store ptr %1, ptr %12, align 4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1082, metadata !DIExpression()), !dbg !1086
  call void @llvm.lifetime.start.p0(i64 4, ptr %13) #7, !dbg !1087
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1083, metadata !DIExpression()), !dbg !1088
  call void @llvm.lifetime.start.p0(i64 4, ptr %14) #7, !dbg !1089
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1084, metadata !DIExpression()), !dbg !1090
  call void @llvm.lifetime.start.p0(i64 4, ptr %15) #7, !dbg !1091
  %16 = load ptr, ptr %11, align 4, !dbg !1092
  %17 = getelementptr inbounds %struct.k_msgq, ptr %16, i32 0, i32 1, !dbg !1093
  store ptr %17, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !658, metadata !DIExpression()), !dbg !1094
  %18 = load ptr, ptr %10, align 4, !dbg !1096
  call void @llvm.dbg.declare(metadata ptr %9, metadata !664, metadata !DIExpression()), !dbg !1097
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #7, !dbg !1098
  call void @llvm.dbg.declare(metadata ptr %6, metadata !675, metadata !DIExpression()), !dbg !1100
  %19 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #7, !dbg !1101, !srcloc !679
  store i32 %19, ptr %6, align 4, !dbg !1101
  %20 = load i32, ptr %6, align 4, !dbg !1102
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #7, !dbg !1103
  store i32 %20, ptr %9, align 4, !dbg !1104
  %21 = load ptr, ptr %10, align 4, !dbg !1105
  store ptr %21, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !684, metadata !DIExpression()), !dbg !1106
  %22 = load ptr, ptr %5, align 4, !dbg !1108
  %23 = load ptr, ptr %10, align 4, !dbg !1109
  store ptr %23, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !693, metadata !DIExpression()), !dbg !1110
  %24 = load ptr, ptr %4, align 4, !dbg !1112
  %25 = load i32, ptr %9, align 4, !dbg !1113
  %26 = getelementptr inbounds %struct.z_spinlock_key, ptr %15, i32 0, i32 0, !dbg !1091
  store i32 %25, ptr %26, align 4, !dbg !1091
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %13, ptr align 4 %15, i32 4, i1 false), !dbg !1091
  call void @llvm.lifetime.end.p0(i64 4, ptr %15) #7, !dbg !1091
  %27 = load ptr, ptr %11, align 4, !dbg !1114
  %28 = getelementptr inbounds %struct.k_msgq, ptr %27, i32 0, i32 8, !dbg !1116
  %29 = load i32, ptr %28, align 4, !dbg !1116
  %30 = icmp ugt i32 %29, 0, !dbg !1117
  br i1 %30, label %31, label %39, !dbg !1118

31:                                               ; preds = %2
  %32 = load ptr, ptr %12, align 4, !dbg !1119
  %33 = load ptr, ptr %11, align 4, !dbg !1121
  %34 = getelementptr inbounds %struct.k_msgq, ptr %33, i32 0, i32 6, !dbg !1122
  %35 = load ptr, ptr %34, align 4, !dbg !1122
  %36 = load ptr, ptr %11, align 4, !dbg !1123
  %37 = getelementptr inbounds %struct.k_msgq, ptr %36, i32 0, i32 2, !dbg !1124
  %38 = load i32, ptr %37, align 4, !dbg !1124
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %32, ptr align 1 %35, i32 %38, i1 false), !dbg !1125
  store i32 0, ptr %14, align 4, !dbg !1126
  br label %40, !dbg !1127

39:                                               ; preds = %2
  store i32 -35, ptr %14, align 4, !dbg !1128
  br label %40

40:                                               ; preds = %39, %31
  br label %41, !dbg !1130

41:                                               ; preds = %40
  br label %42, !dbg !1131

42:                                               ; preds = %41
  br label %43, !dbg !1131

43:                                               ; preds = %42
  %44 = load ptr, ptr %11, align 4, !dbg !1133
  %45 = getelementptr inbounds %struct.k_msgq, ptr %44, i32 0, i32 1, !dbg !1134
  %46 = getelementptr inbounds %struct.z_spinlock_key, ptr %13, i32 0, i32 0, !dbg !1135
  %47 = load [1 x i32], ptr %46, align 4, !dbg !1135
  store [1 x i32] %47, ptr %7, align 4
  store ptr %45, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !817, metadata !DIExpression()), !dbg !1136
  call void @llvm.dbg.declare(metadata ptr %7, metadata !822, metadata !DIExpression()), !dbg !1138
  %48 = load ptr, ptr %8, align 4, !dbg !1139
  %49 = load i32, ptr %7, align 4, !dbg !1140
  store i32 %49, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !828, metadata !DIExpression()), !dbg !1141
  %50 = load i32, ptr %3, align 4, !dbg !1143
  %51 = icmp ne i32 %50, 0, !dbg !1144
  br i1 %51, label %52, label %53, !dbg !1145

52:                                               ; preds = %43
  br label %arch_irq_unlock.exit, !dbg !1146

53:                                               ; preds = %43
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #7, !dbg !1147, !srcloc !842
  br label %arch_irq_unlock.exit, !dbg !1148

arch_irq_unlock.exit:                             ; preds = %52, %53
  %54 = load i32, ptr %14, align 4, !dbg !1149
  call void @llvm.lifetime.end.p0(i64 4, ptr %14) #7, !dbg !1150
  call void @llvm.lifetime.end.p0(i64 4, ptr %13) #7, !dbg !1150
  ret i32 %54, !dbg !1151
}

; Function Attrs: nounwind optsize
define hidden i32 @z_impl_k_msgq_peek_at(ptr noundef %0, ptr noundef %1, i32 noundef %2) #1 !dbg !1152 {
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
  %14 = alloca i32, align 4
  %15 = alloca %struct.z_spinlock_key, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca ptr, align 4
  %20 = alloca %struct.z_spinlock_key, align 4
  store ptr %0, ptr %12, align 4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1156, metadata !DIExpression()), !dbg !1164
  store ptr %1, ptr %13, align 4
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1157, metadata !DIExpression()), !dbg !1165
  store i32 %2, ptr %14, align 4
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1158, metadata !DIExpression()), !dbg !1166
  call void @llvm.lifetime.start.p0(i64 4, ptr %15) #7, !dbg !1167
  call void @llvm.dbg.declare(metadata ptr %15, metadata !1159, metadata !DIExpression()), !dbg !1168
  call void @llvm.lifetime.start.p0(i64 4, ptr %16) #7, !dbg !1169
  call void @llvm.dbg.declare(metadata ptr %16, metadata !1160, metadata !DIExpression()), !dbg !1170
  call void @llvm.lifetime.start.p0(i64 4, ptr %17) #7, !dbg !1171
  call void @llvm.dbg.declare(metadata ptr %17, metadata !1161, metadata !DIExpression()), !dbg !1172
  call void @llvm.lifetime.start.p0(i64 4, ptr %18) #7, !dbg !1173
  call void @llvm.dbg.declare(metadata ptr %18, metadata !1162, metadata !DIExpression()), !dbg !1174
  call void @llvm.lifetime.start.p0(i64 4, ptr %19) #7, !dbg !1175
  call void @llvm.dbg.declare(metadata ptr %19, metadata !1163, metadata !DIExpression()), !dbg !1176
  call void @llvm.lifetime.start.p0(i64 4, ptr %20) #7, !dbg !1177
  %21 = load ptr, ptr %12, align 4, !dbg !1178
  %22 = getelementptr inbounds %struct.k_msgq, ptr %21, i32 0, i32 1, !dbg !1179
  store ptr %22, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !658, metadata !DIExpression()), !dbg !1180
  %23 = load ptr, ptr %11, align 4, !dbg !1182
  call void @llvm.dbg.declare(metadata ptr %10, metadata !664, metadata !DIExpression()), !dbg !1183
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #7, !dbg !1184
  call void @llvm.dbg.declare(metadata ptr %7, metadata !675, metadata !DIExpression()), !dbg !1186
  %24 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #7, !dbg !1187, !srcloc !679
  store i32 %24, ptr %7, align 4, !dbg !1187
  %25 = load i32, ptr %7, align 4, !dbg !1188
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #7, !dbg !1189
  store i32 %25, ptr %10, align 4, !dbg !1190
  %26 = load ptr, ptr %11, align 4, !dbg !1191
  store ptr %26, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !684, metadata !DIExpression()), !dbg !1192
  %27 = load ptr, ptr %6, align 4, !dbg !1194
  %28 = load ptr, ptr %11, align 4, !dbg !1195
  store ptr %28, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !693, metadata !DIExpression()), !dbg !1196
  %29 = load ptr, ptr %5, align 4, !dbg !1198
  %30 = load i32, ptr %10, align 4, !dbg !1199
  %31 = getelementptr inbounds %struct.z_spinlock_key, ptr %20, i32 0, i32 0, !dbg !1177
  store i32 %30, ptr %31, align 4, !dbg !1177
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %15, ptr align 4 %20, i32 4, i1 false), !dbg !1177
  call void @llvm.lifetime.end.p0(i64 4, ptr %20) #7, !dbg !1177
  %32 = load ptr, ptr %12, align 4, !dbg !1200
  %33 = getelementptr inbounds %struct.k_msgq, ptr %32, i32 0, i32 8, !dbg !1202
  %34 = load i32, ptr %33, align 4, !dbg !1202
  %35 = load i32, ptr %14, align 4, !dbg !1203
  %36 = icmp ugt i32 %34, %35, !dbg !1204
  br i1 %36, label %37, label %73, !dbg !1205

37:                                               ; preds = %3
  %38 = load ptr, ptr %12, align 4, !dbg !1206
  %39 = getelementptr inbounds %struct.k_msgq, ptr %38, i32 0, i32 5, !dbg !1208
  %40 = load ptr, ptr %39, align 4, !dbg !1208
  %41 = load ptr, ptr %12, align 4, !dbg !1209
  %42 = getelementptr inbounds %struct.k_msgq, ptr %41, i32 0, i32 6, !dbg !1210
  %43 = load ptr, ptr %42, align 4, !dbg !1210
  %44 = ptrtoint ptr %40 to i32, !dbg !1211
  %45 = ptrtoint ptr %43 to i32, !dbg !1211
  %46 = sub i32 %44, %45, !dbg !1211
  store i32 %46, ptr %17, align 4, !dbg !1212
  %47 = load i32, ptr %14, align 4, !dbg !1213
  %48 = load ptr, ptr %12, align 4, !dbg !1214
  %49 = getelementptr inbounds %struct.k_msgq, ptr %48, i32 0, i32 2, !dbg !1215
  %50 = load i32, ptr %49, align 4, !dbg !1215
  %51 = mul i32 %47, %50, !dbg !1216
  store i32 %51, ptr %18, align 4, !dbg !1217
  %52 = load ptr, ptr %12, align 4, !dbg !1218
  %53 = getelementptr inbounds %struct.k_msgq, ptr %52, i32 0, i32 6, !dbg !1219
  %54 = load ptr, ptr %53, align 4, !dbg !1219
  store ptr %54, ptr %19, align 4, !dbg !1220
  %55 = load i32, ptr %17, align 4, !dbg !1221
  %56 = load i32, ptr %18, align 4, !dbg !1223
  %57 = icmp ule i32 %55, %56, !dbg !1224
  br i1 %57, label %58, label %65, !dbg !1225

58:                                               ; preds = %37
  %59 = load i32, ptr %17, align 4, !dbg !1226
  %60 = load i32, ptr %18, align 4, !dbg !1228
  %61 = sub i32 %60, %59, !dbg !1228
  store i32 %61, ptr %18, align 4, !dbg !1228
  %62 = load ptr, ptr %12, align 4, !dbg !1229
  %63 = getelementptr inbounds %struct.k_msgq, ptr %62, i32 0, i32 4, !dbg !1230
  %64 = load ptr, ptr %63, align 4, !dbg !1230
  store ptr %64, ptr %19, align 4, !dbg !1231
  br label %65, !dbg !1232

65:                                               ; preds = %58, %37
  %66 = load ptr, ptr %13, align 4, !dbg !1233
  %67 = load ptr, ptr %19, align 4, !dbg !1234
  %68 = load i32, ptr %18, align 4, !dbg !1235
  %69 = getelementptr inbounds i8, ptr %67, i32 %68, !dbg !1236
  %70 = load ptr, ptr %12, align 4, !dbg !1237
  %71 = getelementptr inbounds %struct.k_msgq, ptr %70, i32 0, i32 2, !dbg !1238
  %72 = load i32, ptr %71, align 4, !dbg !1238
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %66, ptr align 1 %69, i32 %72, i1 false), !dbg !1239
  store i32 0, ptr %16, align 4, !dbg !1240
  br label %74, !dbg !1241

73:                                               ; preds = %3
  store i32 -35, ptr %16, align 4, !dbg !1242
  br label %74

74:                                               ; preds = %73, %65
  br label %75, !dbg !1244

75:                                               ; preds = %74
  br label %76, !dbg !1245

76:                                               ; preds = %75
  br label %77, !dbg !1245

77:                                               ; preds = %76
  %78 = load ptr, ptr %12, align 4, !dbg !1247
  %79 = getelementptr inbounds %struct.k_msgq, ptr %78, i32 0, i32 1, !dbg !1248
  %80 = getelementptr inbounds %struct.z_spinlock_key, ptr %15, i32 0, i32 0, !dbg !1249
  %81 = load [1 x i32], ptr %80, align 4, !dbg !1249
  store [1 x i32] %81, ptr %8, align 4
  store ptr %79, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !817, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.declare(metadata ptr %8, metadata !822, metadata !DIExpression()), !dbg !1252
  %82 = load ptr, ptr %9, align 4, !dbg !1253
  %83 = load i32, ptr %8, align 4, !dbg !1254
  store i32 %83, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !828, metadata !DIExpression()), !dbg !1255
  %84 = load i32, ptr %4, align 4, !dbg !1257
  %85 = icmp ne i32 %84, 0, !dbg !1258
  br i1 %85, label %86, label %87, !dbg !1259

86:                                               ; preds = %77
  br label %arch_irq_unlock.exit, !dbg !1260

87:                                               ; preds = %77
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #7, !dbg !1261, !srcloc !842
  br label %arch_irq_unlock.exit, !dbg !1262

arch_irq_unlock.exit:                             ; preds = %86, %87
  %88 = load i32, ptr %16, align 4, !dbg !1263
  call void @llvm.lifetime.end.p0(i64 4, ptr %19) #7, !dbg !1264
  call void @llvm.lifetime.end.p0(i64 4, ptr %18) #7, !dbg !1264
  call void @llvm.lifetime.end.p0(i64 4, ptr %17) #7, !dbg !1264
  call void @llvm.lifetime.end.p0(i64 4, ptr %16) #7, !dbg !1264
  call void @llvm.lifetime.end.p0(i64 4, ptr %15) #7, !dbg !1264
  ret i32 %88, !dbg !1265
}

; Function Attrs: nounwind optsize
define hidden void @z_impl_k_msgq_purge(ptr noundef %0) #1 !dbg !1266 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.z_spinlock_key, align 4
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  %10 = alloca %struct.z_spinlock_key, align 4
  %11 = alloca ptr, align 4
  %12 = alloca %struct.z_spinlock_key, align 4
  store ptr %0, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1270, metadata !DIExpression()), !dbg !1273
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #7, !dbg !1274
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1271, metadata !DIExpression()), !dbg !1275
  call void @llvm.lifetime.start.p0(i64 4, ptr %11) #7, !dbg !1276
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1272, metadata !DIExpression()), !dbg !1277
  call void @llvm.lifetime.start.p0(i64 4, ptr %12) #7, !dbg !1278
  %13 = load ptr, ptr %9, align 4, !dbg !1279
  %14 = getelementptr inbounds %struct.k_msgq, ptr %13, i32 0, i32 1, !dbg !1280
  store ptr %14, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !658, metadata !DIExpression()), !dbg !1281
  %15 = load ptr, ptr %8, align 4, !dbg !1283
  call void @llvm.dbg.declare(metadata ptr %7, metadata !664, metadata !DIExpression()), !dbg !1284
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #7, !dbg !1285
  call void @llvm.dbg.declare(metadata ptr %4, metadata !675, metadata !DIExpression()), !dbg !1287
  %16 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #7, !dbg !1288, !srcloc !679
  store i32 %16, ptr %4, align 4, !dbg !1288
  %17 = load i32, ptr %4, align 4, !dbg !1289
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #7, !dbg !1290
  store i32 %17, ptr %7, align 4, !dbg !1291
  %18 = load ptr, ptr %8, align 4, !dbg !1292
  store ptr %18, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !684, metadata !DIExpression()), !dbg !1293
  %19 = load ptr, ptr %3, align 4, !dbg !1295
  %20 = load ptr, ptr %8, align 4, !dbg !1296
  store ptr %20, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !693, metadata !DIExpression()), !dbg !1297
  %21 = load ptr, ptr %2, align 4, !dbg !1299
  %22 = load i32, ptr %7, align 4, !dbg !1300
  %23 = getelementptr inbounds %struct.z_spinlock_key, ptr %12, i32 0, i32 0, !dbg !1278
  store i32 %22, ptr %23, align 4, !dbg !1278
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %10, ptr align 4 %12, i32 4, i1 false), !dbg !1278
  call void @llvm.lifetime.end.p0(i64 4, ptr %12) #7, !dbg !1278
  br label %24, !dbg !1301

24:                                               ; preds = %1
  br label %25, !dbg !1302

25:                                               ; preds = %24
  br label %26, !dbg !1302

26:                                               ; preds = %25
  br label %27, !dbg !1304

27:                                               ; preds = %32, %26
  %28 = load ptr, ptr %9, align 4, !dbg !1305
  %29 = getelementptr inbounds %struct.k_msgq, ptr %28, i32 0, i32 0, !dbg !1306
  %30 = call ptr @z_unpend_first_thread(ptr noundef %29) #6, !dbg !1307
  store ptr %30, ptr %11, align 4, !dbg !1308
  %31 = icmp ne ptr %30, null, !dbg !1309
  br i1 %31, label %32, label %39, !dbg !1304

32:                                               ; preds = %27
  %33 = load ptr, ptr %11, align 4, !dbg !1310
  store ptr %33, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !731, metadata !DIExpression()), !dbg !1312
  store i32 -35, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !737, metadata !DIExpression()), !dbg !1314
  %34 = load i32, ptr %6, align 4, !dbg !1315
  %35 = load ptr, ptr %5, align 4, !dbg !1316
  %36 = getelementptr inbounds %struct.k_thread, ptr %35, i32 0, i32 6, !dbg !1317
  %37 = getelementptr inbounds %struct._thread_arch, ptr %36, i32 0, i32 1, !dbg !1318
  store i32 %34, ptr %37, align 4, !dbg !1319
  %38 = load ptr, ptr %11, align 4, !dbg !1320
  call void @z_ready_thread(ptr noundef %38) #6, !dbg !1321
  br label %27, !dbg !1304, !llvm.loop !1322

39:                                               ; preds = %27
  %40 = load ptr, ptr %9, align 4, !dbg !1324
  %41 = getelementptr inbounds %struct.k_msgq, ptr %40, i32 0, i32 8, !dbg !1325
  store i32 0, ptr %41, align 4, !dbg !1326
  %42 = load ptr, ptr %9, align 4, !dbg !1327
  %43 = getelementptr inbounds %struct.k_msgq, ptr %42, i32 0, i32 7, !dbg !1328
  %44 = load ptr, ptr %43, align 4, !dbg !1328
  %45 = load ptr, ptr %9, align 4, !dbg !1329
  %46 = getelementptr inbounds %struct.k_msgq, ptr %45, i32 0, i32 6, !dbg !1330
  store ptr %44, ptr %46, align 4, !dbg !1331
  %47 = load ptr, ptr %9, align 4, !dbg !1332
  %48 = getelementptr inbounds %struct.k_msgq, ptr %47, i32 0, i32 1, !dbg !1333
  %49 = getelementptr inbounds %struct.z_spinlock_key, ptr %10, i32 0, i32 0, !dbg !1334
  %50 = load [1 x i32], ptr %49, align 4, !dbg !1334
  call void @z_reschedule(ptr noundef %48, [1 x i32] %50) #6, !dbg !1334
  call void @llvm.lifetime.end.p0(i64 4, ptr %11) #7, !dbg !1335
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #7, !dbg !1335
  ret void, !dbg !1335
}

; Function Attrs: optsize
declare !dbg !1336 dso_local i64 @z_timeout_expires(ptr noundef) #5

; Function Attrs: optsize
declare !dbg !1341 dso_local i64 @z_timeout_remaining(ptr noundef) #5

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @sys_sflist_is_empty(ptr noundef %0) #0 !dbg !1342 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1347, metadata !DIExpression()), !dbg !1348
  %3 = load ptr, ptr %2, align 4, !dbg !1349
  %4 = call ptr @sys_sflist_peek_head(ptr noundef %3) #6, !dbg !1350
  %5 = icmp eq ptr %4, null, !dbg !1351
  ret i1 %5, !dbg !1352
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @sys_sflist_peek_head(ptr noundef %0) #0 !dbg !1353 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1357, metadata !DIExpression()), !dbg !1358
  %3 = load ptr, ptr %2, align 4, !dbg !1359
  %4 = getelementptr inbounds %struct._sflist, ptr %3, i32 0, i32 0, !dbg !1360
  %5 = load ptr, ptr %4, align 4, !dbg !1360
  ret ptr %5, !dbg !1361
}

; Function Attrs: inlinehint nounwind optsize
define internal void @sys_dlist_init(ptr noundef %0) #0 !dbg !1362 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1367, metadata !DIExpression()), !dbg !1368
  %3 = load ptr, ptr %2, align 4, !dbg !1369
  %4 = load ptr, ptr %2, align 4, !dbg !1370
  %5 = getelementptr inbounds %struct._dnode, ptr %4, i32 0, i32 0, !dbg !1371
  store ptr %3, ptr %5, align 4, !dbg !1372
  %6 = load ptr, ptr %2, align 4, !dbg !1373
  %7 = load ptr, ptr %2, align 4, !dbg !1374
  %8 = getelementptr inbounds %struct._dnode, ptr %7, i32 0, i32 1, !dbg !1375
  store ptr %6, ptr %8, align 4, !dbg !1376
  ret void, !dbg !1377
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #2

; Function Attrs: optsize
declare !dbg !1378 dso_local ptr @z_thread_aligned_alloc(i32 noundef, i32 noundef) #5

; Function Attrs: inlinehint nounwind optsize
define internal ptr @sys_dlist_peek_head(ptr noundef %0) #0 !dbg !1381 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1385, metadata !DIExpression()), !dbg !1386
  %3 = load ptr, ptr %2, align 4, !dbg !1387
  %4 = call zeroext i1 @sys_dlist_is_empty(ptr noundef %3) #6, !dbg !1388
  br i1 %4, label %5, label %6, !dbg !1388

5:                                                ; preds = %1
  br label %10, !dbg !1388

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 4, !dbg !1389
  %8 = getelementptr inbounds %struct._dnode, ptr %7, i32 0, i32 0, !dbg !1390
  %9 = load ptr, ptr %8, align 4, !dbg !1390
  br label %10, !dbg !1388

10:                                               ; preds = %6, %5
  %11 = phi ptr [ null, %5 ], [ %9, %6 ], !dbg !1388
  ret ptr %11, !dbg !1391
}

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @sys_dlist_is_empty(ptr noundef %0) #0 !dbg !1392 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1396, metadata !DIExpression()), !dbg !1397
  %3 = load ptr, ptr %2, align 4, !dbg !1398
  %4 = getelementptr inbounds %struct._dnode, ptr %3, i32 0, i32 0, !dbg !1399
  %5 = load ptr, ptr %4, align 4, !dbg !1399
  %6 = load ptr, ptr %2, align 4, !dbg !1400
  %7 = icmp eq ptr %5, %6, !dbg !1401
  ret i1 %7, !dbg !1402
}

attributes #0 = { inlinehint nounwind optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { optsize }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!209, !210, !211, !212, !213, !214}
!llvm.ident = !{!215}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !86, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "msg_q.c", directory: "/home/sri/zephyrproject/zephyr/build")
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
!86 = !{!87, !88, !89, !105}
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!88 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 32)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dnode_t", file: !91, line: 55, baseType: !92)
!91 = !DIFile(filename: "include/zephyr/sys/dlist.h", directory: "/home/sri/zephyrproject/zephyr")
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_dnode", file: !91, line: 37, size: 64, elements: !93)
!93 = !{!94, !100}
!94 = !DIDerivedType(tag: DW_TAG_member, scope: !92, file: !91, line: 38, baseType: !95, size: 32)
!95 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !92, file: !91, line: 38, size: 32, elements: !96)
!96 = !{!97, !99}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !95, file: !91, line: 39, baseType: !98, size: 32)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 32)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !95, file: !91, line: 40, baseType: !98, size: 32)
!100 = !DIDerivedType(tag: DW_TAG_member, scope: !92, file: !91, line: 42, baseType: !101, size: 32, offset: 32)
!101 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !92, file: !91, line: 42, size: 32, elements: !102)
!102 = !{!103, !104}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !101, file: !91, line: 43, baseType: !98, size: 32)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !101, file: !91, line: 44, baseType: !98, size: 32)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 32)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_thread", file: !107, line: 250, size: 896, elements: !108)
!107 = !DIFile(filename: "include/zephyr/kernel/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!108 = !{!109, !167, !180, !181, !182, !183, !204}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !106, file: !107, line: 252, baseType: !110, size: 384)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_base", file: !107, line: 58, size: 384, elements: !111)
!111 = !{!112, !125, !133, !136, !137, !150, !153, !154}
!112 = !DIDerivedType(tag: DW_TAG_member, scope: !110, file: !107, line: 61, baseType: !113, size: 64)
!113 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !110, file: !107, line: 61, size: 64, elements: !114)
!114 = !{!115, !116}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_dlist", scope: !113, file: !107, line: 62, baseType: !90, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_rb", scope: !113, file: !107, line: 63, baseType: !117, size: 64)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rbnode", file: !118, line: 58, size: 64, elements: !119)
!118 = !DIFile(filename: "include/zephyr/sys/rb.h", directory: "/home/sri/zephyrproject/zephyr")
!119 = !{!120}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !117, file: !118, line: 60, baseType: !121, size: 64)
!121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 64, elements: !123)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 32)
!123 = !{!124}
!124 = !DISubrange(count: 2)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "pended_on", scope: !110, file: !107, line: 69, baseType: !126, size: 32, offset: 64)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 32)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "_wait_q_t", file: !128, line: 243, baseType: !129)
!128 = !DIFile(filename: "include/zephyr/kernel_structs.h", directory: "/home/sri/zephyrproject/zephyr")
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !128, line: 241, size: 64, elements: !130)
!130 = !{!131}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !129, file: !128, line: 242, baseType: !132, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dlist_t", file: !91, line: 51, baseType: !92)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "user_options", scope: !110, file: !107, line: 72, baseType: !134, size: 8, offset: 96)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !135, line: 62, baseType: !5)
!135 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/stdint.h", directory: "")
!136 = !DIDerivedType(tag: DW_TAG_member, name: "thread_state", scope: !110, file: !107, line: 75, baseType: !134, size: 8, offset: 104)
!137 = !DIDerivedType(tag: DW_TAG_member, scope: !110, file: !107, line: 91, baseType: !138, size: 16, offset: 112)
!138 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !110, file: !107, line: 91, size: 16, elements: !139)
!139 = !{!140, !147}
!140 = !DIDerivedType(tag: DW_TAG_member, scope: !138, file: !107, line: 92, baseType: !141, size: 16)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !138, file: !107, line: 92, size: 16, elements: !142)
!142 = !{!143, !146}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !141, file: !107, line: 97, baseType: !144, size: 8)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !135, line: 56, baseType: !145)
!145 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "sched_locked", scope: !141, file: !107, line: 98, baseType: !134, size: 8, offset: 8)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "preempt", scope: !138, file: !107, line: 101, baseType: !148, size: 16)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !135, line: 63, baseType: !149)
!149 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "order_key", scope: !110, file: !107, line: 108, baseType: !151, size: 32, offset: 128)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !135, line: 64, baseType: !152)
!152 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "swap_data", scope: !110, file: !107, line: 132, baseType: !87, size: 32, offset: 160)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !110, file: !107, line: 136, baseType: !155, size: 192, offset: 192)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_timeout", file: !128, line: 254, size: 192, elements: !156)
!156 = !{!157, !158, !164}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !155, file: !128, line: 255, baseType: !90, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !155, file: !128, line: 256, baseType: !159, size: 32, offset: 64)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "_timeout_func_t", file: !128, line: 252, baseType: !160)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 32)
!161 = !DISubroutineType(types: !162)
!162 = !{null, !163}
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 32)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "dticks", scope: !155, file: !128, line: 259, baseType: !165, size: 64, offset: 128)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !135, line: 59, baseType: !166)
!166 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "callee_saved", scope: !106, file: !107, line: 255, baseType: !168, size: 288, offset: 384)
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_callee_saved", file: !169, line: 25, size: 288, elements: !170)
!169 = !DIFile(filename: "include/zephyr/arch/arm/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!170 = !{!171, !172, !173, !174, !175, !176, !177, !178, !179}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "v1", scope: !168, file: !169, line: 26, baseType: !151, size: 32)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "v2", scope: !168, file: !169, line: 27, baseType: !151, size: 32, offset: 32)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "v3", scope: !168, file: !169, line: 28, baseType: !151, size: 32, offset: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "v4", scope: !168, file: !169, line: 29, baseType: !151, size: 32, offset: 96)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "v5", scope: !168, file: !169, line: 30, baseType: !151, size: 32, offset: 128)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "v6", scope: !168, file: !169, line: 31, baseType: !151, size: 32, offset: 160)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "v7", scope: !168, file: !169, line: 32, baseType: !151, size: 32, offset: 192)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "v8", scope: !168, file: !169, line: 33, baseType: !151, size: 32, offset: 224)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "psp", scope: !168, file: !169, line: 34, baseType: !151, size: 32, offset: 256)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "init_data", scope: !106, file: !107, line: 258, baseType: !87, size: 32, offset: 672)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "join_queue", scope: !106, file: !107, line: 261, baseType: !127, size: 64, offset: 704)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "errno_var", scope: !106, file: !107, line: 302, baseType: !88, size: 32, offset: 768)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "resource_pool", scope: !106, file: !107, line: 333, baseType: !184, size: 32, offset: 800)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 32)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_heap", file: !186, line: 5291, size: 160, elements: !187)
!186 = !DIFile(filename: "include/zephyr/kernel.h", directory: "/home/sri/zephyrproject/zephyr")
!187 = !{!188, !199, !200}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !185, file: !186, line: 5292, baseType: !189, size: 96)
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sys_heap", file: !190, line: 56, size: 96, elements: !191)
!190 = !DIFile(filename: "include/zephyr/sys/sys_heap.h", directory: "/home/sri/zephyrproject/zephyr")
!191 = !{!192, !195, !196}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !189, file: !190, line: 57, baseType: !193, size: 32)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 32)
!194 = !DICompositeType(tag: DW_TAG_structure_type, name: "z_heap", file: !190, line: 57, flags: DIFlagFwdDecl)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "init_mem", scope: !189, file: !190, line: 58, baseType: !87, size: 32, offset: 32)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "init_bytes", scope: !189, file: !190, line: 59, baseType: !197, size: 32, offset: 64)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !198, line: 46, baseType: !152)
!198 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/lib/clang/17/include/stddef.h", directory: "")
!199 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !185, file: !186, line: 5293, baseType: !127, size: 64, offset: 96)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !185, file: !186, line: 5294, baseType: !201, offset: 160)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_spinlock", file: !202, line: 45, elements: !203)
!202 = !DIFile(filename: "include/zephyr/spinlock.h", directory: "/home/sri/zephyrproject/zephyr")
!203 = !{}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !106, file: !107, line: 355, baseType: !205, size: 64, offset: 832)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_arch", file: !169, line: 60, size: 64, elements: !206)
!206 = !{!207, !208}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "basepri", scope: !205, file: !169, line: 63, baseType: !151, size: 32)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "swap_return_value", scope: !205, file: !169, line: 66, baseType: !151, size: 32, offset: 32)
!209 = !{i32 7, !"Dwarf Version", i32 4}
!210 = !{i32 2, !"Debug Info Version", i32 3}
!211 = !{i32 1, !"wchar_size", i32 4}
!212 = !{i32 1, !"static_rwdata", i32 1}
!213 = !{i32 1, !"enumsize_buildattr", i32 1}
!214 = !{i32 1, !"armlib_unavailable", i32 0}
!215 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
!216 = distinct !DISubprogram(name: "z_impl_k_object_access_grant", scope: !4, file: !4, line: 223, type: !217, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !221)
!217 = !DISubroutineType(types: !218)
!218 = !{null, !219, !105}
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 32)
!220 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!221 = !{!222, !223}
!222 = !DILocalVariable(name: "object", arg: 1, scope: !216, file: !4, line: 223, type: !219)
!223 = !DILocalVariable(name: "thread", arg: 2, scope: !216, file: !4, line: 224, type: !105)
!224 = !DILocation(line: 223, column: 61, scope: !216)
!225 = !DILocation(line: 224, column: 24, scope: !216)
!226 = !DILocation(line: 226, column: 9, scope: !216)
!227 = !DILocation(line: 227, column: 9, scope: !216)
!228 = !DILocation(line: 228, column: 1, scope: !216)
!229 = distinct !DISubprogram(name: "z_impl_k_object_release", scope: !4, file: !4, line: 243, type: !230, scopeLine: 244, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !232)
!230 = !DISubroutineType(types: !231)
!231 = !{null, !219}
!232 = !{!233}
!233 = !DILocalVariable(name: "object", arg: 1, scope: !229, file: !4, line: 243, type: !219)
!234 = !DILocation(line: 243, column: 56, scope: !229)
!235 = !DILocation(line: 245, column: 9, scope: !229)
!236 = !DILocation(line: 246, column: 1, scope: !229)
!237 = distinct !DISubprogram(name: "z_impl_k_object_alloc", scope: !4, file: !4, line: 359, type: !238, scopeLine: 360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !240)
!238 = !DISubroutineType(types: !239)
!239 = !{!87, !3}
!240 = !{!241}
!241 = !DILocalVariable(name: "otype", arg: 1, scope: !237, file: !4, line: 359, type: !3)
!242 = !DILocation(line: 359, column: 58, scope: !237)
!243 = !DILocation(line: 361, column: 9, scope: !237)
!244 = !DILocation(line: 363, column: 2, scope: !237)
!245 = distinct !DISubprogram(name: "z_impl_k_object_alloc_size", scope: !4, file: !4, line: 366, type: !246, scopeLine: 368, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !248)
!246 = !DISubroutineType(types: !247)
!247 = !{!87, !3, !197}
!248 = !{!249, !250}
!249 = !DILocalVariable(name: "otype", arg: 1, scope: !245, file: !4, line: 366, type: !3)
!250 = !DILocalVariable(name: "size", arg: 2, scope: !245, file: !4, line: 367, type: !197)
!251 = !DILocation(line: 366, column: 63, scope: !245)
!252 = !DILocation(line: 367, column: 13, scope: !245)
!253 = !DILocation(line: 369, column: 9, scope: !245)
!254 = !DILocation(line: 370, column: 9, scope: !245)
!255 = !DILocation(line: 372, column: 2, scope: !245)
!256 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_expires_ticks", scope: !186, file: !186, line: 656, type: !257, scopeLine: 658, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !263)
!257 = !DISubroutineType(types: !258)
!258 = !{!259, !261}
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_ticks_t", file: !260, line: 46, baseType: !165)
!260 = !DIFile(filename: "include/zephyr/sys_clock.h", directory: "/home/sri/zephyrproject/zephyr")
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 32)
!262 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !106)
!263 = !{!264}
!264 = !DILocalVariable(name: "t", arg: 1, scope: !256, file: !186, line: 657, type: !261)
!265 = !DILocation(line: 657, column: 30, scope: !256)
!266 = !DILocation(line: 659, column: 28, scope: !256)
!267 = !DILocation(line: 659, column: 31, scope: !256)
!268 = !DILocation(line: 659, column: 36, scope: !256)
!269 = !DILocation(line: 659, column: 9, scope: !256)
!270 = !DILocation(line: 659, column: 2, scope: !256)
!271 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_remaining_ticks", scope: !186, file: !186, line: 671, type: !257, scopeLine: 673, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !272)
!272 = !{!273}
!273 = !DILocalVariable(name: "t", arg: 1, scope: !271, file: !186, line: 672, type: !261)
!274 = !DILocation(line: 672, column: 30, scope: !271)
!275 = !DILocation(line: 674, column: 30, scope: !271)
!276 = !DILocation(line: 674, column: 33, scope: !271)
!277 = !DILocation(line: 674, column: 38, scope: !271)
!278 = !DILocation(line: 674, column: 9, scope: !271)
!279 = !DILocation(line: 674, column: 2, scope: !271)
!280 = distinct !DISubprogram(name: "z_impl_k_timer_expires_ticks", scope: !186, file: !186, line: 1634, type: !281, scopeLine: 1636, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !302)
!281 = !DISubroutineType(types: !282)
!282 = !{!259, !283}
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 32)
!284 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !285)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_timer", file: !186, line: 1439, size: 448, elements: !286)
!286 = !{!287, !288, !289, !294, !295, !300, !301}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !285, file: !186, line: 1445, baseType: !155, size: 192)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !285, file: !186, line: 1448, baseType: !127, size: 64, offset: 192)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_fn", scope: !285, file: !186, line: 1451, baseType: !290, size: 32, offset: 256)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 32)
!291 = !DISubroutineType(types: !292)
!292 = !{null, !293}
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 32)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "stop_fn", scope: !285, file: !186, line: 1454, baseType: !290, size: 32, offset: 288)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !285, file: !186, line: 1457, baseType: !296, size: 64, offset: 320)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_timeout_t", file: !260, line: 67, baseType: !297)
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !260, line: 65, size: 64, elements: !298)
!298 = !{!299}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "ticks", scope: !297, file: !260, line: 66, baseType: !259, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !285, file: !186, line: 1460, baseType: !151, size: 32, offset: 384)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !285, file: !186, line: 1463, baseType: !87, size: 32, offset: 416)
!302 = !{!303}
!303 = !DILocalVariable(name: "timer", arg: 1, scope: !280, file: !186, line: 1635, type: !283)
!304 = !DILocation(line: 1635, column: 34, scope: !280)
!305 = !DILocation(line: 1637, column: 28, scope: !280)
!306 = !DILocation(line: 1637, column: 35, scope: !280)
!307 = !DILocation(line: 1637, column: 9, scope: !280)
!308 = !DILocation(line: 1637, column: 2, scope: !280)
!309 = distinct !DISubprogram(name: "z_impl_k_timer_remaining_ticks", scope: !186, file: !186, line: 1649, type: !281, scopeLine: 1651, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!310 = !{!311}
!311 = !DILocalVariable(name: "timer", arg: 1, scope: !309, file: !186, line: 1650, type: !283)
!312 = !DILocation(line: 1650, column: 34, scope: !309)
!313 = !DILocation(line: 1652, column: 30, scope: !309)
!314 = !DILocation(line: 1652, column: 37, scope: !309)
!315 = !DILocation(line: 1652, column: 9, scope: !309)
!316 = !DILocation(line: 1652, column: 2, scope: !309)
!317 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_set", scope: !186, file: !186, line: 1689, type: !318, scopeLine: 1691, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !320)
!318 = !DISubroutineType(types: !319)
!319 = !{null, !293, !87}
!320 = !{!321, !322}
!321 = !DILocalVariable(name: "timer", arg: 1, scope: !317, file: !186, line: 1689, type: !293)
!322 = !DILocalVariable(name: "user_data", arg: 2, scope: !317, file: !186, line: 1690, type: !87)
!323 = !DILocation(line: 1689, column: 65, scope: !317)
!324 = !DILocation(line: 1690, column: 19, scope: !317)
!325 = !DILocation(line: 1692, column: 21, scope: !317)
!326 = !DILocation(line: 1692, column: 2, scope: !317)
!327 = !DILocation(line: 1692, column: 9, scope: !317)
!328 = !DILocation(line: 1692, column: 19, scope: !317)
!329 = !DILocation(line: 1693, column: 1, scope: !317)
!330 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_get", scope: !186, file: !186, line: 1704, type: !331, scopeLine: 1705, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !333)
!331 = !DISubroutineType(types: !332)
!332 = !{!87, !283}
!333 = !{!334}
!334 = !DILocalVariable(name: "timer", arg: 1, scope: !330, file: !186, line: 1704, type: !283)
!335 = !DILocation(line: 1704, column: 72, scope: !330)
!336 = !DILocation(line: 1706, column: 9, scope: !330)
!337 = !DILocation(line: 1706, column: 16, scope: !330)
!338 = !DILocation(line: 1706, column: 2, scope: !330)
!339 = distinct !DISubprogram(name: "z_impl_k_queue_is_empty", scope: !186, file: !186, line: 2071, type: !340, scopeLine: 2072, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !360)
!340 = !DISubroutineType(types: !341)
!341 = !{!88, !342}
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 32)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_queue", file: !186, line: 1830, size: 128, elements: !344)
!344 = !{!345, !358, !359}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "data_q", scope: !343, file: !186, line: 1831, baseType: !346, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sflist_t", file: !347, line: 60, baseType: !348)
!347 = !DIFile(filename: "include/zephyr/sys/sflist.h", directory: "/home/sri/zephyrproject/zephyr")
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sflist", file: !347, line: 53, size: 64, elements: !349)
!349 = !{!350, !357}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !348, file: !347, line: 54, baseType: !351, size: 32)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 32)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sfnode_t", file: !347, line: 50, baseType: !353)
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sfnode", file: !347, line: 44, size: 32, elements: !354)
!354 = !{!355}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "next_and_flags", scope: !353, file: !347, line: 45, baseType: !356, size: 32)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "unative_t", file: !347, line: 40, baseType: !151)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !348, file: !347, line: 55, baseType: !351, size: 32, offset: 32)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !343, file: !186, line: 1832, baseType: !201, offset: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !343, file: !186, line: 1833, baseType: !127, size: 64, offset: 64)
!360 = !{!361}
!361 = !DILocalVariable(name: "queue", arg: 1, scope: !339, file: !186, line: 2071, type: !342)
!362 = !DILocation(line: 2071, column: 59, scope: !339)
!363 = !DILocation(line: 2073, column: 35, scope: !339)
!364 = !DILocation(line: 2073, column: 42, scope: !339)
!365 = !DILocation(line: 2073, column: 14, scope: !339)
!366 = !DILocation(line: 2073, column: 9, scope: !339)
!367 = !DILocation(line: 2073, column: 2, scope: !339)
!368 = distinct !DISubprogram(name: "z_impl_k_sem_count_get", scope: !186, file: !186, line: 3209, type: !369, scopeLine: 3210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !377)
!369 = !DISubroutineType(types: !370)
!370 = !{!152, !371}
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 32)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sem", file: !186, line: 3092, size: 128, elements: !373)
!373 = !{!374, !375, !376}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !372, file: !186, line: 3093, baseType: !127, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !372, file: !186, line: 3094, baseType: !152, size: 32, offset: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !372, file: !186, line: 3095, baseType: !152, size: 32, offset: 96)
!377 = !{!378}
!378 = !DILocalVariable(name: "sem", arg: 1, scope: !368, file: !186, line: 3209, type: !371)
!379 = !DILocation(line: 3209, column: 65, scope: !368)
!380 = !DILocation(line: 3211, column: 9, scope: !368)
!381 = !DILocation(line: 3211, column: 14, scope: !368)
!382 = !DILocation(line: 3211, column: 2, scope: !368)
!383 = distinct !DISubprogram(name: "z_impl_k_msgq_num_free_get", scope: !186, file: !186, line: 4649, type: !384, scopeLine: 4650, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !401)
!384 = !DISubroutineType(types: !385)
!385 = !{!151, !386}
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 32)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_msgq", file: !186, line: 4390, size: 320, elements: !388)
!388 = !{!389, !390, !391, !392, !393, !396, !397, !398, !399, !400}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !387, file: !186, line: 4392, baseType: !127, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !387, file: !186, line: 4394, baseType: !201, offset: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "msg_size", scope: !387, file: !186, line: 4396, baseType: !197, size: 32, offset: 64)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !387, file: !186, line: 4398, baseType: !151, size: 32, offset: 96)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_start", scope: !387, file: !186, line: 4400, baseType: !394, size: 32, offset: 128)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 32)
!395 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_end", scope: !387, file: !186, line: 4402, baseType: !394, size: 32, offset: 160)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "read_ptr", scope: !387, file: !186, line: 4404, baseType: !394, size: 32, offset: 192)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "write_ptr", scope: !387, file: !186, line: 4406, baseType: !394, size: 32, offset: 224)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "used_msgs", scope: !387, file: !186, line: 4408, baseType: !151, size: 32, offset: 256)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !387, file: !186, line: 4413, baseType: !134, size: 8, offset: 288)
!401 = !{!402}
!402 = !DILocalVariable(name: "msgq", arg: 1, scope: !383, file: !186, line: 4649, type: !386)
!403 = !DILocation(line: 4649, column: 66, scope: !383)
!404 = !DILocation(line: 4651, column: 9, scope: !383)
!405 = !DILocation(line: 4651, column: 15, scope: !383)
!406 = !DILocation(line: 4651, column: 26, scope: !383)
!407 = !DILocation(line: 4651, column: 32, scope: !383)
!408 = !DILocation(line: 4651, column: 24, scope: !383)
!409 = !DILocation(line: 4651, column: 2, scope: !383)
!410 = distinct !DISubprogram(name: "z_impl_k_msgq_num_used_get", scope: !186, file: !186, line: 4665, type: !384, scopeLine: 4666, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !411)
!411 = !{!412}
!412 = !DILocalVariable(name: "msgq", arg: 1, scope: !410, file: !186, line: 4665, type: !386)
!413 = !DILocation(line: 4665, column: 66, scope: !410)
!414 = !DILocation(line: 4667, column: 9, scope: !410)
!415 = !DILocation(line: 4667, column: 15, scope: !410)
!416 = !DILocation(line: 4667, column: 2, scope: !410)
!417 = distinct !DISubprogram(name: "k_msgq_init", scope: !418, file: !418, line: 39, type: !419, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !423)
!418 = !DIFile(filename: "kernel/msg_q.c", directory: "/home/sri/zephyrproject/zephyr")
!419 = !DISubroutineType(types: !420)
!420 = !{null, !386, !394, !421, !151}
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !422, line: 51, baseType: !152)
!422 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/string.h", directory: "")
!423 = !{!424, !425, !426, !427}
!424 = !DILocalVariable(name: "msgq", arg: 1, scope: !417, file: !418, line: 39, type: !386)
!425 = !DILocalVariable(name: "buffer", arg: 2, scope: !417, file: !418, line: 39, type: !394)
!426 = !DILocalVariable(name: "msg_size", arg: 3, scope: !417, file: !418, line: 39, type: !421)
!427 = !DILocalVariable(name: "max_msgs", arg: 4, scope: !417, file: !418, line: 40, type: !151)
!428 = !DILocation(line: 39, column: 33, scope: !417)
!429 = !DILocation(line: 39, column: 45, scope: !417)
!430 = !DILocation(line: 39, column: 60, scope: !417)
!431 = !DILocation(line: 40, column: 13, scope: !417)
!432 = !DILocation(line: 42, column: 19, scope: !417)
!433 = !DILocation(line: 42, column: 2, scope: !417)
!434 = !DILocation(line: 42, column: 8, scope: !417)
!435 = !DILocation(line: 42, column: 17, scope: !417)
!436 = !DILocation(line: 43, column: 19, scope: !417)
!437 = !DILocation(line: 43, column: 2, scope: !417)
!438 = !DILocation(line: 43, column: 8, scope: !417)
!439 = !DILocation(line: 43, column: 17, scope: !417)
!440 = !DILocation(line: 44, column: 23, scope: !417)
!441 = !DILocation(line: 44, column: 2, scope: !417)
!442 = !DILocation(line: 44, column: 8, scope: !417)
!443 = !DILocation(line: 44, column: 21, scope: !417)
!444 = !DILocation(line: 45, column: 21, scope: !417)
!445 = !DILocation(line: 45, column: 31, scope: !417)
!446 = !DILocation(line: 45, column: 42, scope: !417)
!447 = !DILocation(line: 45, column: 40, scope: !417)
!448 = !DILocation(line: 45, column: 28, scope: !417)
!449 = !DILocation(line: 45, column: 2, scope: !417)
!450 = !DILocation(line: 45, column: 8, scope: !417)
!451 = !DILocation(line: 45, column: 19, scope: !417)
!452 = !DILocation(line: 46, column: 19, scope: !417)
!453 = !DILocation(line: 46, column: 2, scope: !417)
!454 = !DILocation(line: 46, column: 8, scope: !417)
!455 = !DILocation(line: 46, column: 17, scope: !417)
!456 = !DILocation(line: 47, column: 20, scope: !417)
!457 = !DILocation(line: 47, column: 2, scope: !417)
!458 = !DILocation(line: 47, column: 8, scope: !417)
!459 = !DILocation(line: 47, column: 18, scope: !417)
!460 = !DILocation(line: 48, column: 2, scope: !417)
!461 = !DILocation(line: 48, column: 8, scope: !417)
!462 = !DILocation(line: 48, column: 18, scope: !417)
!463 = !DILocation(line: 49, column: 2, scope: !417)
!464 = !DILocation(line: 49, column: 8, scope: !417)
!465 = !DILocation(line: 49, column: 14, scope: !417)
!466 = !DILocation(line: 50, column: 16, scope: !417)
!467 = !DILocation(line: 50, column: 22, scope: !417)
!468 = !DILocation(line: 50, column: 2, scope: !417)
!469 = !DILocation(line: 51, column: 2, scope: !417)
!470 = !DILocation(line: 51, column: 8, scope: !417)
!471 = !DILocation(line: 51, column: 15, scope: !417)
!472 = !DILocation(line: 60, column: 2, scope: !417)
!473 = !DILocation(line: 60, column: 7, scope: !474)
!474 = distinct !DILexicalBlock(scope: !417, file: !418, line: 60, column: 5)
!475 = !DILocation(line: 62, column: 16, scope: !417)
!476 = !DILocation(line: 62, column: 2, scope: !417)
!477 = !DILocation(line: 63, column: 1, scope: !417)
!478 = distinct !DISubprogram(name: "z_waitq_init", scope: !479, file: !479, line: 47, type: !480, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !482)
!479 = !DIFile(filename: "kernel/include/wait_q.h", directory: "/home/sri/zephyrproject/zephyr")
!480 = !DISubroutineType(types: !481)
!481 = !{null, !126}
!482 = !{!483}
!483 = !DILocalVariable(name: "w", arg: 1, scope: !478, file: !479, line: 47, type: !126)
!484 = !DILocation(line: 47, column: 44, scope: !478)
!485 = !DILocation(line: 49, column: 18, scope: !478)
!486 = !DILocation(line: 49, column: 21, scope: !478)
!487 = !DILocation(line: 49, column: 2, scope: !478)
!488 = !DILocation(line: 50, column: 1, scope: !478)
!489 = distinct !DISubprogram(name: "z_object_init", scope: !4, file: !4, line: 215, type: !230, scopeLine: 216, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !490)
!490 = !{!491}
!491 = !DILocalVariable(name: "obj", arg: 1, scope: !489, file: !4, line: 215, type: !219)
!492 = !DILocation(line: 215, column: 46, scope: !489)
!493 = !DILocation(line: 217, column: 9, scope: !489)
!494 = !DILocation(line: 218, column: 1, scope: !489)
!495 = distinct !DISubprogram(name: "z_impl_k_msgq_alloc_init", scope: !418, file: !418, line: 65, type: !496, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !498)
!496 = !DISubroutineType(types: !497)
!497 = !{!88, !386, !421, !151}
!498 = !{!499, !500, !501, !502, !503, !504}
!499 = !DILocalVariable(name: "msgq", arg: 1, scope: !495, file: !418, line: 65, type: !386)
!500 = !DILocalVariable(name: "msg_size", arg: 2, scope: !495, file: !418, line: 65, type: !421)
!501 = !DILocalVariable(name: "max_msgs", arg: 3, scope: !495, file: !418, line: 66, type: !151)
!502 = !DILocalVariable(name: "buffer", scope: !495, file: !418, line: 68, type: !87)
!503 = !DILocalVariable(name: "ret", scope: !495, file: !418, line: 69, type: !88)
!504 = !DILocalVariable(name: "total_size", scope: !495, file: !418, line: 70, type: !421)
!505 = !DILocation(line: 65, column: 45, scope: !495)
!506 = !DILocation(line: 65, column: 58, scope: !495)
!507 = !DILocation(line: 66, column: 17, scope: !495)
!508 = !DILocation(line: 68, column: 2, scope: !495)
!509 = !DILocation(line: 68, column: 8, scope: !495)
!510 = !DILocation(line: 69, column: 2, scope: !495)
!511 = !DILocation(line: 69, column: 6, scope: !495)
!512 = !DILocation(line: 70, column: 2, scope: !495)
!513 = !DILocation(line: 70, column: 9, scope: !495)
!514 = !DILocation(line: 72, column: 2, scope: !495)
!515 = !DILocation(line: 72, column: 7, scope: !516)
!516 = distinct !DILexicalBlock(scope: !495, file: !418, line: 72, column: 5)
!517 = !DILocation(line: 74, column: 24, scope: !518)
!518 = distinct !DILexicalBlock(scope: !495, file: !418, line: 74, column: 6)
!519 = !DILocation(line: 74, column: 34, scope: !518)
!520 = !DILocation(line: 74, column: 6, scope: !518)
!521 = !DILocation(line: 74, column: 6, scope: !495)
!522 = !DILocation(line: 75, column: 7, scope: !523)
!523 = distinct !DILexicalBlock(scope: !518, file: !418, line: 74, column: 58)
!524 = !DILocation(line: 76, column: 2, scope: !523)
!525 = !DILocation(line: 77, column: 28, scope: !526)
!526 = distinct !DILexicalBlock(scope: !518, file: !418, line: 76, column: 9)
!527 = !DILocation(line: 77, column: 12, scope: !526)
!528 = !DILocation(line: 77, column: 10, scope: !526)
!529 = !DILocation(line: 78, column: 7, scope: !530)
!530 = distinct !DILexicalBlock(scope: !526, file: !418, line: 78, column: 7)
!531 = !DILocation(line: 78, column: 14, scope: !530)
!532 = !DILocation(line: 78, column: 7, scope: !526)
!533 = !DILocation(line: 79, column: 16, scope: !534)
!534 = distinct !DILexicalBlock(scope: !530, file: !418, line: 78, column: 20)
!535 = !DILocation(line: 79, column: 22, scope: !534)
!536 = !DILocation(line: 79, column: 30, scope: !534)
!537 = !DILocation(line: 79, column: 40, scope: !534)
!538 = !DILocation(line: 79, column: 4, scope: !534)
!539 = !DILocation(line: 80, column: 4, scope: !534)
!540 = !DILocation(line: 80, column: 10, scope: !534)
!541 = !DILocation(line: 80, column: 16, scope: !534)
!542 = !DILocation(line: 81, column: 8, scope: !534)
!543 = !DILocation(line: 82, column: 3, scope: !534)
!544 = !DILocation(line: 83, column: 8, scope: !545)
!545 = distinct !DILexicalBlock(scope: !530, file: !418, line: 82, column: 10)
!546 = !DILocation(line: 87, column: 2, scope: !495)
!547 = !DILocation(line: 87, column: 7, scope: !548)
!548 = distinct !DILexicalBlock(scope: !495, file: !418, line: 87, column: 5)
!549 = !DILocation(line: 89, column: 9, scope: !495)
!550 = !DILocation(line: 90, column: 1, scope: !495)
!551 = !DILocation(line: 89, column: 2, scope: !495)
!552 = distinct !DISubprogram(name: "size_mul_overflow", scope: !553, file: !553, line: 105, type: !554, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !558)
!553 = !DIFile(filename: "include/zephyr/sys/math_extras_impl.h", directory: "/home/sri/zephyrproject/zephyr")
!554 = !DISubroutineType(types: !555)
!555 = !{!556, !421, !421, !557}
!556 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 32)
!558 = !{!559, !560, !561}
!559 = !DILocalVariable(name: "a", arg: 1, scope: !552, file: !553, line: 105, type: !421)
!560 = !DILocalVariable(name: "b", arg: 2, scope: !552, file: !553, line: 105, type: !421)
!561 = !DILocalVariable(name: "result", arg: 3, scope: !552, file: !553, line: 105, type: !557)
!562 = !DILocation(line: 105, column: 46, scope: !552)
!563 = !DILocation(line: 105, column: 56, scope: !552)
!564 = !DILocation(line: 105, column: 67, scope: !552)
!565 = !DILocation(line: 107, column: 32, scope: !552)
!566 = !DILocation(line: 107, column: 35, scope: !552)
!567 = !DILocation(line: 107, column: 38, scope: !552)
!568 = !DILocation(line: 107, column: 9, scope: !552)
!569 = !DILocation(line: 107, column: 2, scope: !552)
!570 = distinct !DISubprogram(name: "z_thread_malloc", scope: !571, file: !571, line: 105, type: !572, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !574)
!571 = !DIFile(filename: "kernel/include/kernel_internal.h", directory: "/home/sri/zephyrproject/zephyr")
!572 = !DISubroutineType(types: !573)
!573 = !{!87, !421}
!574 = !{!575}
!575 = !DILocalVariable(name: "size", arg: 1, scope: !570, file: !571, line: 105, type: !421)
!576 = !DILocation(line: 105, column: 44, scope: !570)
!577 = !DILocation(line: 107, column: 35, scope: !570)
!578 = !DILocation(line: 107, column: 9, scope: !570)
!579 = !DILocation(line: 107, column: 2, scope: !570)
!580 = distinct !DISubprogram(name: "k_msgq_cleanup", scope: !418, file: !418, line: 103, type: !581, scopeLine: 104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !583)
!581 = !DISubroutineType(types: !582)
!582 = !{!88, !386}
!583 = !{!584}
!584 = !DILocalVariable(name: "msgq", arg: 1, scope: !580, file: !418, line: 103, type: !386)
!585 = !DILocation(line: 103, column: 35, scope: !580)
!586 = !DILocation(line: 105, column: 2, scope: !580)
!587 = !DILocation(line: 105, column: 7, scope: !588)
!588 = distinct !DILexicalBlock(scope: !580, file: !418, line: 105, column: 5)
!589 = !DILocation(line: 107, column: 20, scope: !590)
!590 = distinct !DILexicalBlock(scope: !580, file: !418, line: 107, column: 6)
!591 = !DILocation(line: 107, column: 26, scope: !590)
!592 = !DILocation(line: 107, column: 6, scope: !590)
!593 = !DILocation(line: 107, column: 34, scope: !590)
!594 = !DILocation(line: 107, column: 6, scope: !580)
!595 = !DILocation(line: 108, column: 3, scope: !596)
!596 = distinct !DILexicalBlock(scope: !590, file: !418, line: 107, column: 40)
!597 = !DILocation(line: 108, column: 8, scope: !598)
!598 = distinct !DILexicalBlock(scope: !596, file: !418, line: 108, column: 6)
!599 = !DILocation(line: 110, column: 3, scope: !596)
!600 = !DILocation(line: 113, column: 7, scope: !601)
!601 = distinct !DILexicalBlock(scope: !580, file: !418, line: 113, column: 6)
!602 = !DILocation(line: 113, column: 13, scope: !601)
!603 = !DILocation(line: 113, column: 19, scope: !601)
!604 = !DILocation(line: 113, column: 35, scope: !601)
!605 = !DILocation(line: 113, column: 6, scope: !580)
!606 = !DILocation(line: 114, column: 10, scope: !607)
!607 = distinct !DILexicalBlock(scope: !601, file: !418, line: 113, column: 42)
!608 = !DILocation(line: 114, column: 16, scope: !607)
!609 = !DILocation(line: 114, column: 3, scope: !607)
!610 = !DILocation(line: 115, column: 3, scope: !607)
!611 = !DILocation(line: 115, column: 9, scope: !607)
!612 = !DILocation(line: 115, column: 15, scope: !607)
!613 = !DILocation(line: 116, column: 2, scope: !607)
!614 = !DILocation(line: 118, column: 2, scope: !580)
!615 = !DILocation(line: 118, column: 7, scope: !616)
!616 = distinct !DILexicalBlock(scope: !580, file: !418, line: 118, column: 5)
!617 = !DILocation(line: 120, column: 2, scope: !580)
!618 = !DILocation(line: 121, column: 1, scope: !580)
!619 = distinct !DISubprogram(name: "z_waitq_head", scope: !479, file: !479, line: 52, type: !620, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !622)
!620 = !DISubroutineType(types: !621)
!621 = !{!105, !126}
!622 = !{!623}
!623 = !DILocalVariable(name: "w", arg: 1, scope: !619, file: !479, line: 52, type: !126)
!624 = !DILocation(line: 52, column: 56, scope: !619)
!625 = !DILocation(line: 54, column: 49, scope: !619)
!626 = !DILocation(line: 54, column: 52, scope: !619)
!627 = !DILocation(line: 54, column: 28, scope: !619)
!628 = !DILocation(line: 54, column: 2, scope: !619)
!629 = !DISubprogram(name: "k_free", scope: !186, file: !186, line: 5490, type: !630, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !203)
!630 = !DISubroutineType(types: !631)
!631 = !{null, !87}
!632 = distinct !DISubprogram(name: "z_impl_k_msgq_put", scope: !418, file: !418, line: 124, type: !633, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !635)
!633 = !DISubroutineType(types: !634)
!634 = !{!88, !386, !219, !296}
!635 = !{!636, !637, !638, !639, !640, !645}
!636 = !DILocalVariable(name: "msgq", arg: 1, scope: !632, file: !418, line: 124, type: !386)
!637 = !DILocalVariable(name: "data", arg: 2, scope: !632, file: !418, line: 124, type: !219)
!638 = !DILocalVariable(name: "timeout", arg: 3, scope: !632, file: !418, line: 124, type: !296)
!639 = !DILocalVariable(name: "pending_thread", scope: !632, file: !418, line: 128, type: !105)
!640 = !DILocalVariable(name: "key", scope: !632, file: !418, line: 129, type: !641)
!641 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_spinlock_key_t", file: !202, line: 108, baseType: !642)
!642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "z_spinlock_key", file: !202, line: 34, size: 32, elements: !643)
!643 = !{!644}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !642, file: !202, line: 35, baseType: !88, size: 32)
!645 = !DILocalVariable(name: "result", scope: !632, file: !418, line: 130, type: !88)
!646 = !DILocation(line: 124, column: 38, scope: !632)
!647 = !DILocation(line: 124, column: 56, scope: !632)
!648 = !DILocation(line: 124, column: 74, scope: !632)
!649 = !DILocation(line: 128, column: 2, scope: !632)
!650 = !DILocation(line: 128, column: 19, scope: !632)
!651 = !DILocation(line: 129, column: 2, scope: !632)
!652 = !DILocation(line: 129, column: 19, scope: !632)
!653 = !DILocation(line: 130, column: 2, scope: !632)
!654 = !DILocation(line: 130, column: 6, scope: !632)
!655 = !DILocation(line: 132, column: 8, scope: !632)
!656 = !DILocation(line: 132, column: 21, scope: !632)
!657 = !DILocation(line: 132, column: 27, scope: !632)
!658 = !DILocalVariable(name: "l", arg: 1, scope: !659, file: !202, line: 160, type: !662)
!659 = distinct !DISubprogram(name: "k_spin_lock", scope: !202, file: !202, line: 160, type: !660, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !663)
!660 = !DISubroutineType(types: !661)
!661 = !{!641, !662}
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 32)
!663 = !{!658, !664}
!664 = !DILocalVariable(name: "k", scope: !659, file: !202, line: 163, type: !641)
!665 = !DILocation(line: 160, column: 94, scope: !659, inlinedAt: !666)
!666 = distinct !DILocation(line: 132, column: 8, scope: !632)
!667 = !DILocation(line: 162, column: 9, scope: !659, inlinedAt: !666)
!668 = !DILocation(line: 163, column: 19, scope: !659, inlinedAt: !666)
!669 = !DILocation(line: 44, column: 2, scope: !670, inlinedAt: !676)
!670 = distinct !DISubprogram(name: "arch_irq_lock", scope: !671, file: !671, line: 42, type: !672, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !674)
!671 = !DIFile(filename: "include/zephyr/arch/arm/asm_inline_gcc.h", directory: "/home/sri/zephyrproject/zephyr")
!672 = !DISubroutineType(types: !673)
!673 = !{!152}
!674 = !{!675}
!675 = !DILocalVariable(name: "key", scope: !670, file: !671, line: 44, type: !152)
!676 = distinct !DILocation(line: 169, column: 10, scope: !659, inlinedAt: !666)
!677 = !DILocation(line: 44, column: 15, scope: !670, inlinedAt: !676)
!678 = !DILocation(line: 48, column: 2, scope: !670, inlinedAt: !676)
!679 = !{i64 66945}
!680 = !DILocation(line: 80, column: 9, scope: !670, inlinedAt: !676)
!681 = !DILocation(line: 81, column: 1, scope: !670, inlinedAt: !676)
!682 = !DILocation(line: 169, column: 8, scope: !659, inlinedAt: !666)
!683 = !DILocation(line: 171, column: 26, scope: !659, inlinedAt: !666)
!684 = !DILocalVariable(name: "l", arg: 1, scope: !685, file: !202, line: 110, type: !662)
!685 = distinct !DISubprogram(name: "z_spinlock_validate_pre", scope: !202, file: !202, line: 110, type: !686, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !688)
!686 = !DISubroutineType(types: !687)
!687 = !{null, !662}
!688 = !{!684}
!689 = !DILocation(line: 110, column: 94, scope: !685, inlinedAt: !690)
!690 = distinct !DILocation(line: 171, column: 2, scope: !659, inlinedAt: !666)
!691 = !DILocation(line: 112, column: 9, scope: !685, inlinedAt: !690)
!692 = !DILocation(line: 177, column: 27, scope: !659, inlinedAt: !666)
!693 = !DILocalVariable(name: "l", arg: 1, scope: !694, file: !202, line: 121, type: !662)
!694 = distinct !DISubprogram(name: "z_spinlock_validate_post", scope: !202, file: !202, line: 121, type: !686, scopeLine: 122, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !695)
!695 = !{!693}
!696 = !DILocation(line: 121, column: 95, scope: !694, inlinedAt: !697)
!697 = distinct !DILocation(line: 177, column: 2, scope: !659, inlinedAt: !666)
!698 = !DILocation(line: 123, column: 9, scope: !694, inlinedAt: !697)
!699 = !DILocation(line: 179, column: 2, scope: !659, inlinedAt: !666)
!700 = !DILocation(line: 134, column: 2, scope: !632)
!701 = !DILocation(line: 134, column: 7, scope: !702)
!702 = distinct !DILexicalBlock(scope: !632, file: !418, line: 134, column: 5)
!703 = !DILocation(line: 136, column: 6, scope: !704)
!704 = distinct !DILexicalBlock(scope: !632, file: !418, line: 136, column: 6)
!705 = !DILocation(line: 136, column: 12, scope: !704)
!706 = !DILocation(line: 136, column: 24, scope: !704)
!707 = !DILocation(line: 136, column: 30, scope: !704)
!708 = !DILocation(line: 136, column: 22, scope: !704)
!709 = !DILocation(line: 136, column: 6, scope: !632)
!710 = !DILocation(line: 138, column: 43, scope: !711)
!711 = distinct !DILexicalBlock(scope: !704, file: !418, line: 136, column: 40)
!712 = !DILocation(line: 138, column: 49, scope: !711)
!713 = !DILocation(line: 138, column: 20, scope: !711)
!714 = !DILocation(line: 138, column: 18, scope: !711)
!715 = !DILocation(line: 139, column: 7, scope: !716)
!716 = distinct !DILexicalBlock(scope: !711, file: !418, line: 139, column: 7)
!717 = !DILocation(line: 139, column: 22, scope: !716)
!718 = !DILocation(line: 139, column: 7, scope: !711)
!719 = !DILocation(line: 140, column: 4, scope: !720)
!720 = distinct !DILexicalBlock(scope: !716, file: !418, line: 139, column: 28)
!721 = !DILocation(line: 140, column: 9, scope: !722)
!722 = distinct !DILexicalBlock(scope: !720, file: !418, line: 140, column: 7)
!723 = !DILocation(line: 143, column: 17, scope: !720)
!724 = !DILocation(line: 143, column: 33, scope: !720)
!725 = !DILocation(line: 143, column: 38, scope: !720)
!726 = !DILocation(line: 143, column: 49, scope: !720)
!727 = !DILocation(line: 144, column: 11, scope: !720)
!728 = !DILocation(line: 144, column: 17, scope: !720)
!729 = !DILocation(line: 143, column: 10, scope: !720)
!730 = !DILocation(line: 146, column: 33, scope: !720)
!731 = !DILocalVariable(name: "thread", arg: 1, scope: !732, file: !733, line: 59, type: !105)
!732 = distinct !DISubprogram(name: "arch_thread_return_value_set", scope: !733, file: !733, line: 59, type: !734, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !736)
!733 = !DIFile(filename: "arch/arm/include/cortex_m/kernel_arch_func.h", directory: "/home/sri/zephyrproject/zephyr")
!734 = !DISubroutineType(types: !735)
!735 = !{null, !105, !152}
!736 = !{!731, !737}
!737 = !DILocalVariable(name: "value", arg: 2, scope: !732, file: !733, line: 59, type: !152)
!738 = !DILocation(line: 59, column: 47, scope: !732, inlinedAt: !739)
!739 = distinct !DILocation(line: 146, column: 4, scope: !720)
!740 = !DILocation(line: 59, column: 68, scope: !732, inlinedAt: !739)
!741 = !DILocation(line: 61, column: 35, scope: !732, inlinedAt: !739)
!742 = !DILocation(line: 61, column: 2, scope: !732, inlinedAt: !739)
!743 = !DILocation(line: 61, column: 10, scope: !732, inlinedAt: !739)
!744 = !DILocation(line: 61, column: 15, scope: !732, inlinedAt: !739)
!745 = !DILocation(line: 61, column: 33, scope: !732, inlinedAt: !739)
!746 = !DILocation(line: 147, column: 19, scope: !720)
!747 = !DILocation(line: 147, column: 4, scope: !720)
!748 = !DILocation(line: 148, column: 18, scope: !720)
!749 = !DILocation(line: 148, column: 24, scope: !720)
!750 = !DILocation(line: 148, column: 4, scope: !720)
!751 = !DILocation(line: 149, column: 4, scope: !720)
!752 = !DILocation(line: 154, column: 17, scope: !753)
!753 = distinct !DILexicalBlock(scope: !716, file: !418, line: 150, column: 10)
!754 = !DILocation(line: 154, column: 23, scope: !753)
!755 = !DILocation(line: 154, column: 34, scope: !753)
!756 = !DILocation(line: 154, column: 40, scope: !753)
!757 = !DILocation(line: 154, column: 46, scope: !753)
!758 = !DILocation(line: 154, column: 10, scope: !753)
!759 = !DILocation(line: 155, column: 23, scope: !753)
!760 = !DILocation(line: 155, column: 29, scope: !753)
!761 = !DILocation(line: 155, column: 4, scope: !753)
!762 = !DILocation(line: 155, column: 10, scope: !753)
!763 = !DILocation(line: 155, column: 20, scope: !753)
!764 = !DILocation(line: 156, column: 8, scope: !765)
!765 = distinct !DILexicalBlock(scope: !753, file: !418, line: 156, column: 8)
!766 = !DILocation(line: 156, column: 14, scope: !765)
!767 = !DILocation(line: 156, column: 27, scope: !765)
!768 = !DILocation(line: 156, column: 33, scope: !765)
!769 = !DILocation(line: 156, column: 24, scope: !765)
!770 = !DILocation(line: 156, column: 8, scope: !753)
!771 = !DILocation(line: 157, column: 23, scope: !772)
!772 = distinct !DILexicalBlock(scope: !765, file: !418, line: 156, column: 45)
!773 = !DILocation(line: 157, column: 29, scope: !772)
!774 = !DILocation(line: 157, column: 5, scope: !772)
!775 = !DILocation(line: 157, column: 11, scope: !772)
!776 = !DILocation(line: 157, column: 21, scope: !772)
!777 = !DILocation(line: 158, column: 4, scope: !772)
!778 = !DILocation(line: 159, column: 4, scope: !753)
!779 = !DILocation(line: 159, column: 10, scope: !753)
!780 = !DILocation(line: 159, column: 19, scope: !753)
!781 = !DILocation(line: 164, column: 10, scope: !711)
!782 = !DILocation(line: 165, column: 2, scope: !711)
!783 = !DILocation(line: 165, column: 24, scope: !784)
!784 = distinct !DILexicalBlock(scope: !704, file: !418, line: 165, column: 13)
!785 = !DILocation(line: 165, column: 49, scope: !784)
!786 = !DILocation(line: 165, column: 30, scope: !784)
!787 = !DILocation(line: 165, column: 13, scope: !704)
!788 = !DILocation(line: 167, column: 10, scope: !789)
!789 = distinct !DILexicalBlock(scope: !784, file: !418, line: 165, column: 63)
!790 = !DILocation(line: 168, column: 2, scope: !789)
!791 = !DILocation(line: 169, column: 3, scope: !792)
!792 = distinct !DILexicalBlock(scope: !784, file: !418, line: 168, column: 9)
!793 = !DILocation(line: 169, column: 8, scope: !794)
!794 = distinct !DILexicalBlock(scope: !792, file: !418, line: 169, column: 6)
!795 = !DILocation(line: 172, column: 54, scope: !792)
!796 = !DILocation(line: 172, column: 19, scope: !792)
!797 = !DILocation(line: 172, column: 28, scope: !792)
!798 = !DILocation(line: 172, column: 33, scope: !792)
!799 = !DILocation(line: 172, column: 43, scope: !792)
!800 = !DILocation(line: 174, column: 25, scope: !792)
!801 = !DILocation(line: 174, column: 31, scope: !792)
!802 = !DILocation(line: 174, column: 43, scope: !792)
!803 = !DILocation(line: 174, column: 49, scope: !792)
!804 = !DILocation(line: 174, column: 12, scope: !792)
!805 = !DILocation(line: 174, column: 10, scope: !792)
!806 = !DILocation(line: 175, column: 3, scope: !792)
!807 = !DILocation(line: 175, column: 8, scope: !808)
!808 = distinct !DILexicalBlock(scope: !792, file: !418, line: 175, column: 6)
!809 = !DILocation(line: 176, column: 10, scope: !792)
!810 = !DILocation(line: 176, column: 3, scope: !792)
!811 = !DILocation(line: 179, column: 2, scope: !632)
!812 = !DILocation(line: 179, column: 7, scope: !813)
!813 = distinct !DILexicalBlock(scope: !632, file: !418, line: 179, column: 5)
!814 = !DILocation(line: 181, column: 17, scope: !632)
!815 = !DILocation(line: 181, column: 23, scope: !632)
!816 = !DILocation(line: 181, column: 2, scope: !632)
!817 = !DILocalVariable(name: "l", arg: 1, scope: !818, file: !202, line: 235, type: !662)
!818 = distinct !DISubprogram(name: "k_spin_unlock", scope: !202, file: !202, line: 235, type: !819, scopeLine: 237, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !821)
!819 = !DISubroutineType(types: !820)
!820 = !{null, !662, !641}
!821 = !{!817, !822}
!822 = !DILocalVariable(name: "key", arg: 2, scope: !818, file: !202, line: 236, type: !641)
!823 = !DILocation(line: 235, column: 84, scope: !818, inlinedAt: !824)
!824 = distinct !DILocation(line: 181, column: 2, scope: !632)
!825 = !DILocation(line: 236, column: 23, scope: !818, inlinedAt: !824)
!826 = !DILocation(line: 238, column: 9, scope: !818, inlinedAt: !824)
!827 = !DILocation(line: 261, column: 22, scope: !818, inlinedAt: !824)
!828 = !DILocalVariable(name: "key", arg: 1, scope: !829, file: !671, line: 88, type: !152)
!829 = distinct !DISubprogram(name: "arch_irq_unlock", scope: !671, file: !671, line: 88, type: !830, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !832)
!830 = !DISubroutineType(types: !831)
!831 = !{null, !152}
!832 = !{!828}
!833 = !DILocation(line: 88, column: 80, scope: !829, inlinedAt: !834)
!834 = distinct !DILocation(line: 261, column: 2, scope: !818, inlinedAt: !824)
!835 = !DILocation(line: 91, column: 6, scope: !836, inlinedAt: !834)
!836 = distinct !DILexicalBlock(scope: !829, file: !671, line: 91, column: 6)
!837 = !DILocation(line: 91, column: 10, scope: !836, inlinedAt: !834)
!838 = !DILocation(line: 91, column: 6, scope: !829, inlinedAt: !834)
!839 = !DILocation(line: 92, column: 3, scope: !840, inlinedAt: !834)
!840 = distinct !DILexicalBlock(scope: !836, file: !671, line: 91, column: 17)
!841 = !DILocation(line: 94, column: 2, scope: !829, inlinedAt: !834)
!842 = !{i64 67249}
!843 = !DILocation(line: 114, column: 1, scope: !829, inlinedAt: !834)
!844 = !DILocation(line: 183, column: 9, scope: !632)
!845 = !DILocation(line: 183, column: 2, scope: !632)
!846 = !DILocation(line: 184, column: 1, scope: !632)
!847 = !DISubprogram(name: "z_unpend_first_thread", scope: !848, file: !848, line: 53, type: !620, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !203)
!848 = !DIFile(filename: "kernel/include/ksched.h", directory: "/home/sri/zephyrproject/zephyr")
!849 = !DISubprogram(name: "z_ready_thread", scope: !848, file: !848, line: 65, type: !850, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !203)
!850 = !DISubroutineType(types: !851)
!851 = !{null, !105}
!852 = !DISubprogram(name: "z_reschedule", scope: !848, file: !848, line: 51, type: !819, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !203)
!853 = !DISubprogram(name: "z_pend_curr", scope: !848, file: !848, line: 46, type: !854, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !203)
!854 = !DISubroutineType(types: !855)
!855 = !{!88, !662, !641, !126, !296}
!856 = distinct !DISubprogram(name: "z_impl_k_msgq_get_attrs", scope: !418, file: !418, line: 198, type: !857, scopeLine: 199, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !865)
!857 = !DISubroutineType(types: !858)
!858 = !{null, !386, !859}
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 32)
!860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_msgq_attrs", file: !186, line: 4449, size: 96, elements: !861)
!861 = !{!862, !863, !864}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "msg_size", scope: !860, file: !186, line: 4451, baseType: !197, size: 32)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !860, file: !186, line: 4453, baseType: !151, size: 32, offset: 32)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "used_msgs", scope: !860, file: !186, line: 4455, baseType: !151, size: 32, offset: 64)
!865 = !{!866, !867}
!866 = !DILocalVariable(name: "msgq", arg: 1, scope: !856, file: !418, line: 198, type: !386)
!867 = !DILocalVariable(name: "attrs", arg: 2, scope: !856, file: !418, line: 198, type: !859)
!868 = !DILocation(line: 198, column: 45, scope: !856)
!869 = !DILocation(line: 198, column: 72, scope: !856)
!870 = !DILocation(line: 200, column: 20, scope: !856)
!871 = !DILocation(line: 200, column: 26, scope: !856)
!872 = !DILocation(line: 200, column: 2, scope: !856)
!873 = !DILocation(line: 200, column: 9, scope: !856)
!874 = !DILocation(line: 200, column: 18, scope: !856)
!875 = !DILocation(line: 201, column: 20, scope: !856)
!876 = !DILocation(line: 201, column: 26, scope: !856)
!877 = !DILocation(line: 201, column: 2, scope: !856)
!878 = !DILocation(line: 201, column: 9, scope: !856)
!879 = !DILocation(line: 201, column: 18, scope: !856)
!880 = !DILocation(line: 202, column: 21, scope: !856)
!881 = !DILocation(line: 202, column: 27, scope: !856)
!882 = !DILocation(line: 202, column: 2, scope: !856)
!883 = !DILocation(line: 202, column: 9, scope: !856)
!884 = !DILocation(line: 202, column: 19, scope: !856)
!885 = !DILocation(line: 203, column: 1, scope: !856)
!886 = distinct !DISubprogram(name: "z_impl_k_msgq_get", scope: !418, file: !418, line: 216, type: !887, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !889)
!887 = !DISubroutineType(types: !888)
!888 = !{!88, !386, !87, !296}
!889 = !{!890, !891, !892, !893, !894, !895}
!890 = !DILocalVariable(name: "msgq", arg: 1, scope: !886, file: !418, line: 216, type: !386)
!891 = !DILocalVariable(name: "data", arg: 2, scope: !886, file: !418, line: 216, type: !87)
!892 = !DILocalVariable(name: "timeout", arg: 3, scope: !886, file: !418, line: 216, type: !296)
!893 = !DILocalVariable(name: "key", scope: !886, file: !418, line: 220, type: !641)
!894 = !DILocalVariable(name: "pending_thread", scope: !886, file: !418, line: 221, type: !105)
!895 = !DILocalVariable(name: "result", scope: !886, file: !418, line: 222, type: !88)
!896 = !DILocation(line: 216, column: 38, scope: !886)
!897 = !DILocation(line: 216, column: 50, scope: !886)
!898 = !DILocation(line: 216, column: 68, scope: !886)
!899 = !DILocation(line: 220, column: 2, scope: !886)
!900 = !DILocation(line: 220, column: 19, scope: !886)
!901 = !DILocation(line: 221, column: 2, scope: !886)
!902 = !DILocation(line: 221, column: 19, scope: !886)
!903 = !DILocation(line: 222, column: 2, scope: !886)
!904 = !DILocation(line: 222, column: 6, scope: !886)
!905 = !DILocation(line: 224, column: 8, scope: !886)
!906 = !DILocation(line: 224, column: 21, scope: !886)
!907 = !DILocation(line: 224, column: 27, scope: !886)
!908 = !DILocation(line: 160, column: 94, scope: !659, inlinedAt: !909)
!909 = distinct !DILocation(line: 224, column: 8, scope: !886)
!910 = !DILocation(line: 162, column: 9, scope: !659, inlinedAt: !909)
!911 = !DILocation(line: 163, column: 19, scope: !659, inlinedAt: !909)
!912 = !DILocation(line: 44, column: 2, scope: !670, inlinedAt: !913)
!913 = distinct !DILocation(line: 169, column: 10, scope: !659, inlinedAt: !909)
!914 = !DILocation(line: 44, column: 15, scope: !670, inlinedAt: !913)
!915 = !DILocation(line: 48, column: 2, scope: !670, inlinedAt: !913)
!916 = !DILocation(line: 80, column: 9, scope: !670, inlinedAt: !913)
!917 = !DILocation(line: 81, column: 1, scope: !670, inlinedAt: !913)
!918 = !DILocation(line: 169, column: 8, scope: !659, inlinedAt: !909)
!919 = !DILocation(line: 171, column: 26, scope: !659, inlinedAt: !909)
!920 = !DILocation(line: 110, column: 94, scope: !685, inlinedAt: !921)
!921 = distinct !DILocation(line: 171, column: 2, scope: !659, inlinedAt: !909)
!922 = !DILocation(line: 112, column: 9, scope: !685, inlinedAt: !921)
!923 = !DILocation(line: 177, column: 27, scope: !659, inlinedAt: !909)
!924 = !DILocation(line: 121, column: 95, scope: !694, inlinedAt: !925)
!925 = distinct !DILocation(line: 177, column: 2, scope: !659, inlinedAt: !909)
!926 = !DILocation(line: 123, column: 9, scope: !694, inlinedAt: !925)
!927 = !DILocation(line: 179, column: 2, scope: !659, inlinedAt: !909)
!928 = !DILocation(line: 226, column: 2, scope: !886)
!929 = !DILocation(line: 226, column: 7, scope: !930)
!930 = distinct !DILexicalBlock(scope: !886, file: !418, line: 226, column: 5)
!931 = !DILocation(line: 228, column: 6, scope: !932)
!932 = distinct !DILexicalBlock(scope: !886, file: !418, line: 228, column: 6)
!933 = !DILocation(line: 228, column: 12, scope: !932)
!934 = !DILocation(line: 228, column: 22, scope: !932)
!935 = !DILocation(line: 228, column: 6, scope: !886)
!936 = !DILocation(line: 230, column: 16, scope: !937)
!937 = distinct !DILexicalBlock(scope: !932, file: !418, line: 228, column: 28)
!938 = !DILocation(line: 230, column: 22, scope: !937)
!939 = !DILocation(line: 230, column: 28, scope: !937)
!940 = !DILocation(line: 230, column: 38, scope: !937)
!941 = !DILocation(line: 230, column: 44, scope: !937)
!942 = !DILocation(line: 230, column: 9, scope: !937)
!943 = !DILocation(line: 231, column: 21, scope: !937)
!944 = !DILocation(line: 231, column: 27, scope: !937)
!945 = !DILocation(line: 231, column: 3, scope: !937)
!946 = !DILocation(line: 231, column: 9, scope: !937)
!947 = !DILocation(line: 231, column: 18, scope: !937)
!948 = !DILocation(line: 232, column: 7, scope: !949)
!949 = distinct !DILexicalBlock(scope: !937, file: !418, line: 232, column: 7)
!950 = !DILocation(line: 232, column: 13, scope: !949)
!951 = !DILocation(line: 232, column: 25, scope: !949)
!952 = !DILocation(line: 232, column: 31, scope: !949)
!953 = !DILocation(line: 232, column: 22, scope: !949)
!954 = !DILocation(line: 232, column: 7, scope: !937)
!955 = !DILocation(line: 233, column: 21, scope: !956)
!956 = distinct !DILexicalBlock(scope: !949, file: !418, line: 232, column: 43)
!957 = !DILocation(line: 233, column: 27, scope: !956)
!958 = !DILocation(line: 233, column: 4, scope: !956)
!959 = !DILocation(line: 233, column: 10, scope: !956)
!960 = !DILocation(line: 233, column: 19, scope: !956)
!961 = !DILocation(line: 234, column: 3, scope: !956)
!962 = !DILocation(line: 235, column: 3, scope: !937)
!963 = !DILocation(line: 235, column: 9, scope: !937)
!964 = !DILocation(line: 235, column: 18, scope: !937)
!965 = !DILocation(line: 238, column: 43, scope: !937)
!966 = !DILocation(line: 238, column: 49, scope: !937)
!967 = !DILocation(line: 238, column: 20, scope: !937)
!968 = !DILocation(line: 238, column: 18, scope: !937)
!969 = !DILocation(line: 239, column: 7, scope: !970)
!970 = distinct !DILexicalBlock(scope: !937, file: !418, line: 239, column: 7)
!971 = !DILocation(line: 239, column: 22, scope: !970)
!972 = !DILocation(line: 239, column: 7, scope: !937)
!973 = !DILocation(line: 240, column: 4, scope: !974)
!974 = distinct !DILexicalBlock(scope: !970, file: !418, line: 239, column: 28)
!975 = !DILocation(line: 240, column: 9, scope: !976)
!976 = distinct !DILexicalBlock(scope: !974, file: !418, line: 240, column: 7)
!977 = !DILocation(line: 245, column: 17, scope: !974)
!978 = !DILocation(line: 245, column: 23, scope: !974)
!979 = !DILocation(line: 245, column: 34, scope: !974)
!980 = !DILocation(line: 245, column: 50, scope: !974)
!981 = !DILocation(line: 245, column: 55, scope: !974)
!982 = !DILocation(line: 246, column: 11, scope: !974)
!983 = !DILocation(line: 246, column: 17, scope: !974)
!984 = !DILocation(line: 245, column: 10, scope: !974)
!985 = !DILocation(line: 247, column: 23, scope: !974)
!986 = !DILocation(line: 247, column: 29, scope: !974)
!987 = !DILocation(line: 247, column: 4, scope: !974)
!988 = !DILocation(line: 247, column: 10, scope: !974)
!989 = !DILocation(line: 247, column: 20, scope: !974)
!990 = !DILocation(line: 248, column: 8, scope: !991)
!991 = distinct !DILexicalBlock(scope: !974, file: !418, line: 248, column: 8)
!992 = !DILocation(line: 248, column: 14, scope: !991)
!993 = !DILocation(line: 248, column: 27, scope: !991)
!994 = !DILocation(line: 248, column: 33, scope: !991)
!995 = !DILocation(line: 248, column: 24, scope: !991)
!996 = !DILocation(line: 248, column: 8, scope: !974)
!997 = !DILocation(line: 249, column: 23, scope: !998)
!998 = distinct !DILexicalBlock(scope: !991, file: !418, line: 248, column: 45)
!999 = !DILocation(line: 249, column: 29, scope: !998)
!1000 = !DILocation(line: 249, column: 5, scope: !998)
!1001 = !DILocation(line: 249, column: 11, scope: !998)
!1002 = !DILocation(line: 249, column: 21, scope: !998)
!1003 = !DILocation(line: 250, column: 4, scope: !998)
!1004 = !DILocation(line: 251, column: 4, scope: !974)
!1005 = !DILocation(line: 251, column: 10, scope: !974)
!1006 = !DILocation(line: 251, column: 19, scope: !974)
!1007 = !DILocation(line: 254, column: 33, scope: !974)
!1008 = !DILocation(line: 59, column: 47, scope: !732, inlinedAt: !1009)
!1009 = distinct !DILocation(line: 254, column: 4, scope: !974)
!1010 = !DILocation(line: 59, column: 68, scope: !732, inlinedAt: !1009)
!1011 = !DILocation(line: 61, column: 35, scope: !732, inlinedAt: !1009)
!1012 = !DILocation(line: 61, column: 2, scope: !732, inlinedAt: !1009)
!1013 = !DILocation(line: 61, column: 10, scope: !732, inlinedAt: !1009)
!1014 = !DILocation(line: 61, column: 15, scope: !732, inlinedAt: !1009)
!1015 = !DILocation(line: 61, column: 33, scope: !732, inlinedAt: !1009)
!1016 = !DILocation(line: 255, column: 19, scope: !974)
!1017 = !DILocation(line: 255, column: 4, scope: !974)
!1018 = !DILocation(line: 256, column: 18, scope: !974)
!1019 = !DILocation(line: 256, column: 24, scope: !974)
!1020 = !DILocation(line: 256, column: 4, scope: !974)
!1021 = !DILocation(line: 258, column: 4, scope: !974)
!1022 = !DILocation(line: 258, column: 9, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !974, file: !418, line: 258, column: 7)
!1024 = !DILocation(line: 260, column: 4, scope: !974)
!1025 = !DILocation(line: 262, column: 10, scope: !937)
!1026 = !DILocation(line: 263, column: 2, scope: !937)
!1027 = !DILocation(line: 263, column: 24, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !932, file: !418, line: 263, column: 13)
!1029 = !DILocation(line: 263, column: 49, scope: !1028)
!1030 = !DILocation(line: 263, column: 30, scope: !1028)
!1031 = !DILocation(line: 263, column: 13, scope: !932)
!1032 = !DILocation(line: 265, column: 10, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !1028, file: !418, line: 263, column: 63)
!1034 = !DILocation(line: 266, column: 2, scope: !1033)
!1035 = !DILocation(line: 267, column: 3, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !1028, file: !418, line: 266, column: 9)
!1037 = !DILocation(line: 267, column: 8, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !1036, file: !418, line: 267, column: 6)
!1039 = !DILocation(line: 270, column: 45, scope: !1036)
!1040 = !DILocation(line: 270, column: 19, scope: !1036)
!1041 = !DILocation(line: 270, column: 28, scope: !1036)
!1042 = !DILocation(line: 270, column: 33, scope: !1036)
!1043 = !DILocation(line: 270, column: 43, scope: !1036)
!1044 = !DILocation(line: 272, column: 25, scope: !1036)
!1045 = !DILocation(line: 272, column: 31, scope: !1036)
!1046 = !DILocation(line: 272, column: 43, scope: !1036)
!1047 = !DILocation(line: 272, column: 49, scope: !1036)
!1048 = !DILocation(line: 272, column: 12, scope: !1036)
!1049 = !DILocation(line: 272, column: 10, scope: !1036)
!1050 = !DILocation(line: 273, column: 3, scope: !1036)
!1051 = !DILocation(line: 273, column: 8, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !1036, file: !418, line: 273, column: 6)
!1053 = !DILocation(line: 274, column: 10, scope: !1036)
!1054 = !DILocation(line: 274, column: 3, scope: !1036)
!1055 = !DILocation(line: 277, column: 2, scope: !886)
!1056 = !DILocation(line: 277, column: 7, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !886, file: !418, line: 277, column: 5)
!1058 = !DILocation(line: 279, column: 17, scope: !886)
!1059 = !DILocation(line: 279, column: 23, scope: !886)
!1060 = !DILocation(line: 279, column: 2, scope: !886)
!1061 = !DILocation(line: 235, column: 84, scope: !818, inlinedAt: !1062)
!1062 = distinct !DILocation(line: 279, column: 2, scope: !886)
!1063 = !DILocation(line: 236, column: 23, scope: !818, inlinedAt: !1062)
!1064 = !DILocation(line: 238, column: 9, scope: !818, inlinedAt: !1062)
!1065 = !DILocation(line: 261, column: 22, scope: !818, inlinedAt: !1062)
!1066 = !DILocation(line: 88, column: 80, scope: !829, inlinedAt: !1067)
!1067 = distinct !DILocation(line: 261, column: 2, scope: !818, inlinedAt: !1062)
!1068 = !DILocation(line: 91, column: 6, scope: !836, inlinedAt: !1067)
!1069 = !DILocation(line: 91, column: 10, scope: !836, inlinedAt: !1067)
!1070 = !DILocation(line: 91, column: 6, scope: !829, inlinedAt: !1067)
!1071 = !DILocation(line: 92, column: 3, scope: !840, inlinedAt: !1067)
!1072 = !DILocation(line: 94, column: 2, scope: !829, inlinedAt: !1067)
!1073 = !DILocation(line: 114, column: 1, scope: !829, inlinedAt: !1067)
!1074 = !DILocation(line: 281, column: 9, scope: !886)
!1075 = !DILocation(line: 281, column: 2, scope: !886)
!1076 = !DILocation(line: 282, column: 1, scope: !886)
!1077 = distinct !DISubprogram(name: "z_impl_k_msgq_peek", scope: !418, file: !418, line: 296, type: !1078, scopeLine: 297, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1080)
!1078 = !DISubroutineType(types: !1079)
!1079 = !{!88, !386, !87}
!1080 = !{!1081, !1082, !1083, !1084}
!1081 = !DILocalVariable(name: "msgq", arg: 1, scope: !1077, file: !418, line: 296, type: !386)
!1082 = !DILocalVariable(name: "data", arg: 2, scope: !1077, file: !418, line: 296, type: !87)
!1083 = !DILocalVariable(name: "key", scope: !1077, file: !418, line: 298, type: !641)
!1084 = !DILocalVariable(name: "result", scope: !1077, file: !418, line: 299, type: !88)
!1085 = !DILocation(line: 296, column: 39, scope: !1077)
!1086 = !DILocation(line: 296, column: 51, scope: !1077)
!1087 = !DILocation(line: 298, column: 2, scope: !1077)
!1088 = !DILocation(line: 298, column: 19, scope: !1077)
!1089 = !DILocation(line: 299, column: 2, scope: !1077)
!1090 = !DILocation(line: 299, column: 6, scope: !1077)
!1091 = !DILocation(line: 301, column: 8, scope: !1077)
!1092 = !DILocation(line: 301, column: 21, scope: !1077)
!1093 = !DILocation(line: 301, column: 27, scope: !1077)
!1094 = !DILocation(line: 160, column: 94, scope: !659, inlinedAt: !1095)
!1095 = distinct !DILocation(line: 301, column: 8, scope: !1077)
!1096 = !DILocation(line: 162, column: 9, scope: !659, inlinedAt: !1095)
!1097 = !DILocation(line: 163, column: 19, scope: !659, inlinedAt: !1095)
!1098 = !DILocation(line: 44, column: 2, scope: !670, inlinedAt: !1099)
!1099 = distinct !DILocation(line: 169, column: 10, scope: !659, inlinedAt: !1095)
!1100 = !DILocation(line: 44, column: 15, scope: !670, inlinedAt: !1099)
!1101 = !DILocation(line: 48, column: 2, scope: !670, inlinedAt: !1099)
!1102 = !DILocation(line: 80, column: 9, scope: !670, inlinedAt: !1099)
!1103 = !DILocation(line: 81, column: 1, scope: !670, inlinedAt: !1099)
!1104 = !DILocation(line: 169, column: 8, scope: !659, inlinedAt: !1095)
!1105 = !DILocation(line: 171, column: 26, scope: !659, inlinedAt: !1095)
!1106 = !DILocation(line: 110, column: 94, scope: !685, inlinedAt: !1107)
!1107 = distinct !DILocation(line: 171, column: 2, scope: !659, inlinedAt: !1095)
!1108 = !DILocation(line: 112, column: 9, scope: !685, inlinedAt: !1107)
!1109 = !DILocation(line: 177, column: 27, scope: !659, inlinedAt: !1095)
!1110 = !DILocation(line: 121, column: 95, scope: !694, inlinedAt: !1111)
!1111 = distinct !DILocation(line: 177, column: 2, scope: !659, inlinedAt: !1095)
!1112 = !DILocation(line: 123, column: 9, scope: !694, inlinedAt: !1111)
!1113 = !DILocation(line: 179, column: 2, scope: !659, inlinedAt: !1095)
!1114 = !DILocation(line: 303, column: 6, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !1077, file: !418, line: 303, column: 6)
!1116 = !DILocation(line: 303, column: 12, scope: !1115)
!1117 = !DILocation(line: 303, column: 22, scope: !1115)
!1118 = !DILocation(line: 303, column: 6, scope: !1077)
!1119 = !DILocation(line: 305, column: 16, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1115, file: !418, line: 303, column: 28)
!1121 = !DILocation(line: 305, column: 22, scope: !1120)
!1122 = !DILocation(line: 305, column: 28, scope: !1120)
!1123 = !DILocation(line: 305, column: 38, scope: !1120)
!1124 = !DILocation(line: 305, column: 44, scope: !1120)
!1125 = !DILocation(line: 305, column: 9, scope: !1120)
!1126 = !DILocation(line: 306, column: 10, scope: !1120)
!1127 = !DILocation(line: 307, column: 2, scope: !1120)
!1128 = !DILocation(line: 309, column: 10, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1115, file: !418, line: 307, column: 9)
!1130 = !DILocation(line: 312, column: 2, scope: !1077)
!1131 = !DILocation(line: 312, column: 7, scope: !1132)
!1132 = distinct !DILexicalBlock(scope: !1077, file: !418, line: 312, column: 5)
!1133 = !DILocation(line: 314, column: 17, scope: !1077)
!1134 = !DILocation(line: 314, column: 23, scope: !1077)
!1135 = !DILocation(line: 314, column: 2, scope: !1077)
!1136 = !DILocation(line: 235, column: 84, scope: !818, inlinedAt: !1137)
!1137 = distinct !DILocation(line: 314, column: 2, scope: !1077)
!1138 = !DILocation(line: 236, column: 23, scope: !818, inlinedAt: !1137)
!1139 = !DILocation(line: 238, column: 9, scope: !818, inlinedAt: !1137)
!1140 = !DILocation(line: 261, column: 22, scope: !818, inlinedAt: !1137)
!1141 = !DILocation(line: 88, column: 80, scope: !829, inlinedAt: !1142)
!1142 = distinct !DILocation(line: 261, column: 2, scope: !818, inlinedAt: !1137)
!1143 = !DILocation(line: 91, column: 6, scope: !836, inlinedAt: !1142)
!1144 = !DILocation(line: 91, column: 10, scope: !836, inlinedAt: !1142)
!1145 = !DILocation(line: 91, column: 6, scope: !829, inlinedAt: !1142)
!1146 = !DILocation(line: 92, column: 3, scope: !840, inlinedAt: !1142)
!1147 = !DILocation(line: 94, column: 2, scope: !829, inlinedAt: !1142)
!1148 = !DILocation(line: 114, column: 1, scope: !829, inlinedAt: !1142)
!1149 = !DILocation(line: 316, column: 9, scope: !1077)
!1150 = !DILocation(line: 317, column: 1, scope: !1077)
!1151 = !DILocation(line: 316, column: 2, scope: !1077)
!1152 = distinct !DISubprogram(name: "z_impl_k_msgq_peek_at", scope: !418, file: !418, line: 330, type: !1153, scopeLine: 331, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1155)
!1153 = !DISubroutineType(types: !1154)
!1154 = !{!88, !386, !87, !151}
!1155 = !{!1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163}
!1156 = !DILocalVariable(name: "msgq", arg: 1, scope: !1152, file: !418, line: 330, type: !386)
!1157 = !DILocalVariable(name: "data", arg: 2, scope: !1152, file: !418, line: 330, type: !87)
!1158 = !DILocalVariable(name: "idx", arg: 3, scope: !1152, file: !418, line: 330, type: !151)
!1159 = !DILocalVariable(name: "key", scope: !1152, file: !418, line: 332, type: !641)
!1160 = !DILocalVariable(name: "result", scope: !1152, file: !418, line: 333, type: !88)
!1161 = !DILocalVariable(name: "bytes_to_end", scope: !1152, file: !418, line: 334, type: !151)
!1162 = !DILocalVariable(name: "byte_offset", scope: !1152, file: !418, line: 335, type: !151)
!1163 = !DILocalVariable(name: "start_addr", scope: !1152, file: !418, line: 336, type: !394)
!1164 = !DILocation(line: 330, column: 42, scope: !1152)
!1165 = !DILocation(line: 330, column: 54, scope: !1152)
!1166 = !DILocation(line: 330, column: 69, scope: !1152)
!1167 = !DILocation(line: 332, column: 2, scope: !1152)
!1168 = !DILocation(line: 332, column: 19, scope: !1152)
!1169 = !DILocation(line: 333, column: 2, scope: !1152)
!1170 = !DILocation(line: 333, column: 6, scope: !1152)
!1171 = !DILocation(line: 334, column: 2, scope: !1152)
!1172 = !DILocation(line: 334, column: 11, scope: !1152)
!1173 = !DILocation(line: 335, column: 2, scope: !1152)
!1174 = !DILocation(line: 335, column: 11, scope: !1152)
!1175 = !DILocation(line: 336, column: 2, scope: !1152)
!1176 = !DILocation(line: 336, column: 8, scope: !1152)
!1177 = !DILocation(line: 338, column: 8, scope: !1152)
!1178 = !DILocation(line: 338, column: 21, scope: !1152)
!1179 = !DILocation(line: 338, column: 27, scope: !1152)
!1180 = !DILocation(line: 160, column: 94, scope: !659, inlinedAt: !1181)
!1181 = distinct !DILocation(line: 338, column: 8, scope: !1152)
!1182 = !DILocation(line: 162, column: 9, scope: !659, inlinedAt: !1181)
!1183 = !DILocation(line: 163, column: 19, scope: !659, inlinedAt: !1181)
!1184 = !DILocation(line: 44, column: 2, scope: !670, inlinedAt: !1185)
!1185 = distinct !DILocation(line: 169, column: 10, scope: !659, inlinedAt: !1181)
!1186 = !DILocation(line: 44, column: 15, scope: !670, inlinedAt: !1185)
!1187 = !DILocation(line: 48, column: 2, scope: !670, inlinedAt: !1185)
!1188 = !DILocation(line: 80, column: 9, scope: !670, inlinedAt: !1185)
!1189 = !DILocation(line: 81, column: 1, scope: !670, inlinedAt: !1185)
!1190 = !DILocation(line: 169, column: 8, scope: !659, inlinedAt: !1181)
!1191 = !DILocation(line: 171, column: 26, scope: !659, inlinedAt: !1181)
!1192 = !DILocation(line: 110, column: 94, scope: !685, inlinedAt: !1193)
!1193 = distinct !DILocation(line: 171, column: 2, scope: !659, inlinedAt: !1181)
!1194 = !DILocation(line: 112, column: 9, scope: !685, inlinedAt: !1193)
!1195 = !DILocation(line: 177, column: 27, scope: !659, inlinedAt: !1181)
!1196 = !DILocation(line: 121, column: 95, scope: !694, inlinedAt: !1197)
!1197 = distinct !DILocation(line: 177, column: 2, scope: !659, inlinedAt: !1181)
!1198 = !DILocation(line: 123, column: 9, scope: !694, inlinedAt: !1197)
!1199 = !DILocation(line: 179, column: 2, scope: !659, inlinedAt: !1181)
!1200 = !DILocation(line: 340, column: 6, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1152, file: !418, line: 340, column: 6)
!1202 = !DILocation(line: 340, column: 12, scope: !1201)
!1203 = !DILocation(line: 340, column: 24, scope: !1201)
!1204 = !DILocation(line: 340, column: 22, scope: !1201)
!1205 = !DILocation(line: 340, column: 6, scope: !1152)
!1206 = !DILocation(line: 341, column: 19, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !1201, file: !418, line: 340, column: 29)
!1208 = !DILocation(line: 341, column: 25, scope: !1207)
!1209 = !DILocation(line: 341, column: 38, scope: !1207)
!1210 = !DILocation(line: 341, column: 44, scope: !1207)
!1211 = !DILocation(line: 341, column: 36, scope: !1207)
!1212 = !DILocation(line: 341, column: 16, scope: !1207)
!1213 = !DILocation(line: 342, column: 17, scope: !1207)
!1214 = !DILocation(line: 342, column: 23, scope: !1207)
!1215 = !DILocation(line: 342, column: 29, scope: !1207)
!1216 = !DILocation(line: 342, column: 21, scope: !1207)
!1217 = !DILocation(line: 342, column: 15, scope: !1207)
!1218 = !DILocation(line: 343, column: 16, scope: !1207)
!1219 = !DILocation(line: 343, column: 22, scope: !1207)
!1220 = !DILocation(line: 343, column: 14, scope: !1207)
!1221 = !DILocation(line: 345, column: 7, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1207, file: !418, line: 345, column: 7)
!1223 = !DILocation(line: 345, column: 23, scope: !1222)
!1224 = !DILocation(line: 345, column: 20, scope: !1222)
!1225 = !DILocation(line: 345, column: 7, scope: !1207)
!1226 = !DILocation(line: 347, column: 19, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1222, file: !418, line: 345, column: 36)
!1228 = !DILocation(line: 347, column: 16, scope: !1227)
!1229 = !DILocation(line: 349, column: 17, scope: !1227)
!1230 = !DILocation(line: 349, column: 23, scope: !1227)
!1231 = !DILocation(line: 349, column: 15, scope: !1227)
!1232 = !DILocation(line: 350, column: 3, scope: !1227)
!1233 = !DILocation(line: 351, column: 16, scope: !1207)
!1234 = !DILocation(line: 351, column: 22, scope: !1207)
!1235 = !DILocation(line: 351, column: 35, scope: !1207)
!1236 = !DILocation(line: 351, column: 33, scope: !1207)
!1237 = !DILocation(line: 351, column: 48, scope: !1207)
!1238 = !DILocation(line: 351, column: 54, scope: !1207)
!1239 = !DILocation(line: 351, column: 9, scope: !1207)
!1240 = !DILocation(line: 352, column: 10, scope: !1207)
!1241 = !DILocation(line: 353, column: 2, scope: !1207)
!1242 = !DILocation(line: 355, column: 10, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1201, file: !418, line: 353, column: 9)
!1244 = !DILocation(line: 358, column: 2, scope: !1152)
!1245 = !DILocation(line: 358, column: 7, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1152, file: !418, line: 358, column: 5)
!1247 = !DILocation(line: 360, column: 17, scope: !1152)
!1248 = !DILocation(line: 360, column: 23, scope: !1152)
!1249 = !DILocation(line: 360, column: 2, scope: !1152)
!1250 = !DILocation(line: 235, column: 84, scope: !818, inlinedAt: !1251)
!1251 = distinct !DILocation(line: 360, column: 2, scope: !1152)
!1252 = !DILocation(line: 236, column: 23, scope: !818, inlinedAt: !1251)
!1253 = !DILocation(line: 238, column: 9, scope: !818, inlinedAt: !1251)
!1254 = !DILocation(line: 261, column: 22, scope: !818, inlinedAt: !1251)
!1255 = !DILocation(line: 88, column: 80, scope: !829, inlinedAt: !1256)
!1256 = distinct !DILocation(line: 261, column: 2, scope: !818, inlinedAt: !1251)
!1257 = !DILocation(line: 91, column: 6, scope: !836, inlinedAt: !1256)
!1258 = !DILocation(line: 91, column: 10, scope: !836, inlinedAt: !1256)
!1259 = !DILocation(line: 91, column: 6, scope: !829, inlinedAt: !1256)
!1260 = !DILocation(line: 92, column: 3, scope: !840, inlinedAt: !1256)
!1261 = !DILocation(line: 94, column: 2, scope: !829, inlinedAt: !1256)
!1262 = !DILocation(line: 114, column: 1, scope: !829, inlinedAt: !1256)
!1263 = !DILocation(line: 362, column: 9, scope: !1152)
!1264 = !DILocation(line: 363, column: 1, scope: !1152)
!1265 = !DILocation(line: 362, column: 2, scope: !1152)
!1266 = distinct !DISubprogram(name: "z_impl_k_msgq_purge", scope: !418, file: !418, line: 376, type: !1267, scopeLine: 377, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1269)
!1267 = !DISubroutineType(types: !1268)
!1268 = !{null, !386}
!1269 = !{!1270, !1271, !1272}
!1270 = !DILocalVariable(name: "msgq", arg: 1, scope: !1266, file: !418, line: 376, type: !386)
!1271 = !DILocalVariable(name: "key", scope: !1266, file: !418, line: 378, type: !641)
!1272 = !DILocalVariable(name: "pending_thread", scope: !1266, file: !418, line: 379, type: !105)
!1273 = !DILocation(line: 376, column: 41, scope: !1266)
!1274 = !DILocation(line: 378, column: 2, scope: !1266)
!1275 = !DILocation(line: 378, column: 19, scope: !1266)
!1276 = !DILocation(line: 379, column: 2, scope: !1266)
!1277 = !DILocation(line: 379, column: 19, scope: !1266)
!1278 = !DILocation(line: 381, column: 8, scope: !1266)
!1279 = !DILocation(line: 381, column: 21, scope: !1266)
!1280 = !DILocation(line: 381, column: 27, scope: !1266)
!1281 = !DILocation(line: 160, column: 94, scope: !659, inlinedAt: !1282)
!1282 = distinct !DILocation(line: 381, column: 8, scope: !1266)
!1283 = !DILocation(line: 162, column: 9, scope: !659, inlinedAt: !1282)
!1284 = !DILocation(line: 163, column: 19, scope: !659, inlinedAt: !1282)
!1285 = !DILocation(line: 44, column: 2, scope: !670, inlinedAt: !1286)
!1286 = distinct !DILocation(line: 169, column: 10, scope: !659, inlinedAt: !1282)
!1287 = !DILocation(line: 44, column: 15, scope: !670, inlinedAt: !1286)
!1288 = !DILocation(line: 48, column: 2, scope: !670, inlinedAt: !1286)
!1289 = !DILocation(line: 80, column: 9, scope: !670, inlinedAt: !1286)
!1290 = !DILocation(line: 81, column: 1, scope: !670, inlinedAt: !1286)
!1291 = !DILocation(line: 169, column: 8, scope: !659, inlinedAt: !1282)
!1292 = !DILocation(line: 171, column: 26, scope: !659, inlinedAt: !1282)
!1293 = !DILocation(line: 110, column: 94, scope: !685, inlinedAt: !1294)
!1294 = distinct !DILocation(line: 171, column: 2, scope: !659, inlinedAt: !1282)
!1295 = !DILocation(line: 112, column: 9, scope: !685, inlinedAt: !1294)
!1296 = !DILocation(line: 177, column: 27, scope: !659, inlinedAt: !1282)
!1297 = !DILocation(line: 121, column: 95, scope: !694, inlinedAt: !1298)
!1298 = distinct !DILocation(line: 177, column: 2, scope: !659, inlinedAt: !1282)
!1299 = !DILocation(line: 123, column: 9, scope: !694, inlinedAt: !1298)
!1300 = !DILocation(line: 179, column: 2, scope: !659, inlinedAt: !1282)
!1301 = !DILocation(line: 383, column: 2, scope: !1266)
!1302 = !DILocation(line: 383, column: 7, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !1266, file: !418, line: 383, column: 5)
!1304 = !DILocation(line: 386, column: 2, scope: !1266)
!1305 = !DILocation(line: 386, column: 50, scope: !1266)
!1306 = !DILocation(line: 386, column: 56, scope: !1266)
!1307 = !DILocation(line: 386, column: 27, scope: !1266)
!1308 = !DILocation(line: 386, column: 25, scope: !1266)
!1309 = !DILocation(line: 386, column: 65, scope: !1266)
!1310 = !DILocation(line: 387, column: 32, scope: !1311)
!1311 = distinct !DILexicalBlock(scope: !1266, file: !418, line: 386, column: 71)
!1312 = !DILocation(line: 59, column: 47, scope: !732, inlinedAt: !1313)
!1313 = distinct !DILocation(line: 387, column: 3, scope: !1311)
!1314 = !DILocation(line: 59, column: 68, scope: !732, inlinedAt: !1313)
!1315 = !DILocation(line: 61, column: 35, scope: !732, inlinedAt: !1313)
!1316 = !DILocation(line: 61, column: 2, scope: !732, inlinedAt: !1313)
!1317 = !DILocation(line: 61, column: 10, scope: !732, inlinedAt: !1313)
!1318 = !DILocation(line: 61, column: 15, scope: !732, inlinedAt: !1313)
!1319 = !DILocation(line: 61, column: 33, scope: !732, inlinedAt: !1313)
!1320 = !DILocation(line: 388, column: 18, scope: !1311)
!1321 = !DILocation(line: 388, column: 3, scope: !1311)
!1322 = distinct !{!1322, !1304, !1323}
!1323 = !DILocation(line: 389, column: 2, scope: !1266)
!1324 = !DILocation(line: 391, column: 2, scope: !1266)
!1325 = !DILocation(line: 391, column: 8, scope: !1266)
!1326 = !DILocation(line: 391, column: 18, scope: !1266)
!1327 = !DILocation(line: 392, column: 19, scope: !1266)
!1328 = !DILocation(line: 392, column: 25, scope: !1266)
!1329 = !DILocation(line: 392, column: 2, scope: !1266)
!1330 = !DILocation(line: 392, column: 8, scope: !1266)
!1331 = !DILocation(line: 392, column: 17, scope: !1266)
!1332 = !DILocation(line: 394, column: 16, scope: !1266)
!1333 = !DILocation(line: 394, column: 22, scope: !1266)
!1334 = !DILocation(line: 394, column: 2, scope: !1266)
!1335 = !DILocation(line: 395, column: 1, scope: !1266)
!1336 = !DISubprogram(name: "z_timeout_expires", scope: !186, file: !186, line: 642, type: !1337, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !203)
!1337 = !DISubroutineType(types: !1338)
!1338 = !{!259, !1339}
!1339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1340, size: 32)
!1340 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !155)
!1341 = !DISubprogram(name: "z_timeout_remaining", scope: !186, file: !186, line: 643, type: !1337, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !203)
!1342 = distinct !DISubprogram(name: "sys_sflist_is_empty", scope: !347, file: !347, line: 335, type: !1343, scopeLine: 335, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1346)
!1343 = !DISubroutineType(types: !1344)
!1344 = !{!556, !1345}
!1345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 32)
!1346 = !{!1347}
!1347 = !DILocalVariable(name: "list", arg: 1, scope: !1342, file: !347, line: 335, type: !1345)
!1348 = !DILocation(line: 335, column: 55, scope: !1342)
!1349 = !DILocation(line: 335, column: 92, scope: !1342)
!1350 = !DILocation(line: 335, column: 71, scope: !1342)
!1351 = !DILocation(line: 335, column: 98, scope: !1342)
!1352 = !DILocation(line: 335, column: 63, scope: !1342)
!1353 = distinct !DISubprogram(name: "sys_sflist_peek_head", scope: !347, file: !347, line: 255, type: !1354, scopeLine: 256, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1356)
!1354 = !DISubroutineType(types: !1355)
!1355 = !{!351, !1345}
!1356 = !{!1357}
!1357 = !DILocalVariable(name: "list", arg: 1, scope: !1353, file: !347, line: 255, type: !1345)
!1358 = !DILocation(line: 255, column: 64, scope: !1353)
!1359 = !DILocation(line: 257, column: 9, scope: !1353)
!1360 = !DILocation(line: 257, column: 15, scope: !1353)
!1361 = !DILocation(line: 257, column: 2, scope: !1353)
!1362 = distinct !DISubprogram(name: "sys_dlist_init", scope: !91, file: !91, line: 203, type: !1363, scopeLine: 204, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1366)
!1363 = !DISubroutineType(types: !1364)
!1364 = !{null, !1365}
!1365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 32)
!1366 = !{!1367}
!1367 = !DILocalVariable(name: "list", arg: 1, scope: !1362, file: !91, line: 203, type: !1365)
!1368 = !DILocation(line: 203, column: 48, scope: !1362)
!1369 = !DILocation(line: 205, column: 30, scope: !1362)
!1370 = !DILocation(line: 205, column: 2, scope: !1362)
!1371 = !DILocation(line: 205, column: 8, scope: !1362)
!1372 = !DILocation(line: 205, column: 13, scope: !1362)
!1373 = !DILocation(line: 206, column: 30, scope: !1362)
!1374 = !DILocation(line: 206, column: 2, scope: !1362)
!1375 = !DILocation(line: 206, column: 8, scope: !1362)
!1376 = !DILocation(line: 206, column: 13, scope: !1362)
!1377 = !DILocation(line: 207, column: 1, scope: !1362)
!1378 = !DISubprogram(name: "z_thread_aligned_alloc", scope: !571, file: !571, line: 90, type: !1379, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !203)
!1379 = !DISubroutineType(types: !1380)
!1380 = !{!87, !421, !421}
!1381 = distinct !DISubprogram(name: "sys_dlist_peek_head", scope: !91, file: !91, line: 303, type: !1382, scopeLine: 304, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1384)
!1382 = !DISubroutineType(types: !1383)
!1383 = !{!89, !1365}
!1384 = !{!1385}
!1385 = !DILocalVariable(name: "list", arg: 1, scope: !1381, file: !91, line: 303, type: !1365)
!1386 = !DILocation(line: 303, column: 61, scope: !1381)
!1387 = !DILocation(line: 305, column: 28, scope: !1381)
!1388 = !DILocation(line: 305, column: 9, scope: !1381)
!1389 = !DILocation(line: 305, column: 49, scope: !1381)
!1390 = !DILocation(line: 305, column: 55, scope: !1381)
!1391 = !DILocation(line: 305, column: 2, scope: !1381)
!1392 = distinct !DISubprogram(name: "sys_dlist_is_empty", scope: !91, file: !91, line: 275, type: !1393, scopeLine: 276, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1395)
!1393 = !DISubroutineType(types: !1394)
!1394 = !{!556, !1365}
!1395 = !{!1396}
!1396 = !DILocalVariable(name: "list", arg: 1, scope: !1392, file: !91, line: 275, type: !1365)
!1397 = !DILocation(line: 275, column: 53, scope: !1392)
!1398 = !DILocation(line: 277, column: 9, scope: !1392)
!1399 = !DILocation(line: 277, column: 15, scope: !1392)
!1400 = !DILocation(line: 277, column: 23, scope: !1392)
!1401 = !DILocation(line: 277, column: 20, scope: !1392)
!1402 = !DILocation(line: 277, column: 2, scope: !1392)
