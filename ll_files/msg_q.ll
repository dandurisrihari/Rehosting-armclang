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

@_kernel = external global %struct.z_kernel, align 4

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_k_object_access_grant(ptr noundef %0, ptr noundef %1) #0 !dbg !218 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !223, metadata !DIExpression()), !dbg !224
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !225, metadata !DIExpression()), !dbg !226
  %5 = load ptr, ptr %3, align 4, !dbg !227
  %6 = load ptr, ptr %4, align 4, !dbg !228
  ret void, !dbg !229
}

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_k_object_release(ptr noundef %0) #0 !dbg !230 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !233, metadata !DIExpression()), !dbg !234
  %3 = load ptr, ptr %2, align 4, !dbg !235
  ret void, !dbg !236
}

; Function Attrs: noinline nounwind optnone
define internal ptr @z_impl_k_object_alloc(i8 noundef zeroext %0) #0 !dbg !237 {
  %2 = alloca i8, align 1
  store i8 %0, ptr %2, align 1
  call void @llvm.dbg.declare(metadata ptr %2, metadata !240, metadata !DIExpression()), !dbg !241
  %3 = load i8, ptr %2, align 1, !dbg !242
  ret ptr null, !dbg !243
}

; Function Attrs: noinline nounwind optnone
define internal ptr @z_impl_k_object_alloc_size(i8 noundef zeroext %0, i32 noundef %1) #0 !dbg !244 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8 %0, ptr %3, align 1
  call void @llvm.dbg.declare(metadata ptr %3, metadata !247, metadata !DIExpression()), !dbg !248
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !249, metadata !DIExpression()), !dbg !250
  %5 = load i8, ptr %3, align 1, !dbg !251
  %6 = load i32, ptr %4, align 4, !dbg !252
  ret ptr null, !dbg !253
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_thread_timeout_expires_ticks(ptr noundef %0) #0 !dbg !254 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !261, metadata !DIExpression()), !dbg !262
  %3 = load ptr, ptr %2, align 4, !dbg !263
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !264
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !265
  %6 = call i64 @z_timeout_expires(ptr noundef %5), !dbg !266
  ret i64 %6, !dbg !267
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_thread_timeout_remaining_ticks(ptr noundef %0) #0 !dbg !268 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !269, metadata !DIExpression()), !dbg !270
  %3 = load ptr, ptr %2, align 4, !dbg !271
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !272
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !273
  %6 = call i64 @z_timeout_remaining(ptr noundef %5), !dbg !274
  ret i64 %6, !dbg !275
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_timer_expires_ticks(ptr noundef %0) #0 !dbg !276 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !298, metadata !DIExpression()), !dbg !299
  %3 = load ptr, ptr %2, align 4, !dbg !300
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !301
  %5 = call i64 @z_timeout_expires(ptr noundef %4), !dbg !302
  ret i64 %5, !dbg !303
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_timer_remaining_ticks(ptr noundef %0) #0 !dbg !304 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !305, metadata !DIExpression()), !dbg !306
  %3 = load ptr, ptr %2, align 4, !dbg !307
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !308
  %5 = call i64 @z_timeout_remaining(ptr noundef %4), !dbg !309
  ret i64 %5, !dbg !310
}

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_k_timer_user_data_set(ptr noundef %0, ptr noundef %1) #0 !dbg !311 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !314, metadata !DIExpression()), !dbg !315
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !316, metadata !DIExpression()), !dbg !317
  %5 = load ptr, ptr %4, align 4, !dbg !318
  %6 = load ptr, ptr %3, align 4, !dbg !319
  %7 = getelementptr inbounds %struct.k_timer, ptr %6, i32 0, i32 6, !dbg !320
  store ptr %5, ptr %7, align 4, !dbg !321
  ret void, !dbg !322
}

; Function Attrs: noinline nounwind optnone
define internal ptr @z_impl_k_timer_user_data_get(ptr noundef %0) #0 !dbg !323 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !326, metadata !DIExpression()), !dbg !327
  %3 = load ptr, ptr %2, align 4, !dbg !328
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 6, !dbg !329
  %5 = load ptr, ptr %4, align 4, !dbg !329
  ret ptr %5, !dbg !330
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_queue_is_empty(ptr noundef %0) #0 !dbg !331 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !352, metadata !DIExpression()), !dbg !353
  %3 = load ptr, ptr %2, align 4, !dbg !354
  %4 = getelementptr inbounds %struct.k_queue, ptr %3, i32 0, i32 0, !dbg !355
  %5 = call zeroext i1 @sys_sflist_is_empty(ptr noundef %4), !dbg !356
  %6 = zext i1 %5 to i32, !dbg !357
  ret i32 %6, !dbg !358
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_sem_count_get(ptr noundef %0) #0 !dbg !359 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !368, metadata !DIExpression()), !dbg !369
  %3 = load ptr, ptr %2, align 4, !dbg !370
  %4 = getelementptr inbounds %struct.k_sem, ptr %3, i32 0, i32 1, !dbg !371
  %5 = load i32, ptr %4, align 4, !dbg !371
  ret i32 %5, !dbg !372
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_msgq_num_free_get(ptr noundef %0) #0 !dbg !373 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !391, metadata !DIExpression()), !dbg !392
  %3 = load ptr, ptr %2, align 4, !dbg !393
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 3, !dbg !394
  %5 = load i32, ptr %4, align 4, !dbg !394
  %6 = load ptr, ptr %2, align 4, !dbg !395
  %7 = getelementptr inbounds %struct.k_msgq, ptr %6, i32 0, i32 8, !dbg !396
  %8 = load i32, ptr %7, align 4, !dbg !396
  %9 = sub i32 %5, %8, !dbg !397
  ret i32 %9, !dbg !398
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_msgq_num_used_get(ptr noundef %0) #0 !dbg !399 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !400, metadata !DIExpression()), !dbg !401
  %3 = load ptr, ptr %2, align 4, !dbg !402
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 8, !dbg !403
  %5 = load i32, ptr %4, align 4, !dbg !403
  ret i32 %5, !dbg !404
}

; Function Attrs: noinline nounwind optnone
define hidden void @k_msgq_init(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 !dbg !405 {
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.k_spinlock, align 1
  store ptr %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !411, metadata !DIExpression()), !dbg !412
  store ptr %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !413, metadata !DIExpression()), !dbg !414
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !415, metadata !DIExpression()), !dbg !416
  store i32 %3, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !417, metadata !DIExpression()), !dbg !418
  %10 = load i32, ptr %7, align 4, !dbg !419
  %11 = load ptr, ptr %5, align 4, !dbg !420
  %12 = getelementptr inbounds %struct.k_msgq, ptr %11, i32 0, i32 2, !dbg !421
  store i32 %10, ptr %12, align 4, !dbg !422
  %13 = load i32, ptr %8, align 4, !dbg !423
  %14 = load ptr, ptr %5, align 4, !dbg !424
  %15 = getelementptr inbounds %struct.k_msgq, ptr %14, i32 0, i32 3, !dbg !425
  store i32 %13, ptr %15, align 4, !dbg !426
  %16 = load ptr, ptr %6, align 4, !dbg !427
  %17 = load ptr, ptr %5, align 4, !dbg !428
  %18 = getelementptr inbounds %struct.k_msgq, ptr %17, i32 0, i32 4, !dbg !429
  store ptr %16, ptr %18, align 4, !dbg !430
  %19 = load ptr, ptr %6, align 4, !dbg !431
  %20 = load i32, ptr %8, align 4, !dbg !432
  %21 = load i32, ptr %7, align 4, !dbg !433
  %22 = mul i32 %20, %21, !dbg !434
  %23 = getelementptr inbounds i8, ptr %19, i32 %22, !dbg !435
  %24 = load ptr, ptr %5, align 4, !dbg !436
  %25 = getelementptr inbounds %struct.k_msgq, ptr %24, i32 0, i32 5, !dbg !437
  store ptr %23, ptr %25, align 4, !dbg !438
  %26 = load ptr, ptr %6, align 4, !dbg !439
  %27 = load ptr, ptr %5, align 4, !dbg !440
  %28 = getelementptr inbounds %struct.k_msgq, ptr %27, i32 0, i32 6, !dbg !441
  store ptr %26, ptr %28, align 4, !dbg !442
  %29 = load ptr, ptr %6, align 4, !dbg !443
  %30 = load ptr, ptr %5, align 4, !dbg !444
  %31 = getelementptr inbounds %struct.k_msgq, ptr %30, i32 0, i32 7, !dbg !445
  store ptr %29, ptr %31, align 4, !dbg !446
  %32 = load ptr, ptr %5, align 4, !dbg !447
  %33 = getelementptr inbounds %struct.k_msgq, ptr %32, i32 0, i32 8, !dbg !448
  store i32 0, ptr %33, align 4, !dbg !449
  %34 = load ptr, ptr %5, align 4, !dbg !450
  %35 = getelementptr inbounds %struct.k_msgq, ptr %34, i32 0, i32 9, !dbg !451
  store i8 0, ptr %35, align 4, !dbg !452
  %36 = load ptr, ptr %5, align 4, !dbg !453
  %37 = getelementptr inbounds %struct.k_msgq, ptr %36, i32 0, i32 0, !dbg !454
  call void @z_waitq_init(ptr noundef %37), !dbg !455
  %38 = load ptr, ptr %5, align 4, !dbg !456
  %39 = getelementptr inbounds %struct.k_msgq, ptr %38, i32 0, i32 1, !dbg !457
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %39, ptr align 1 %9, i32 0, i1 false), !dbg !458
  br label %40, !dbg !459

40:                                               ; preds = %4
  br label %41, !dbg !460

41:                                               ; preds = %40
  %42 = load ptr, ptr %5, align 4, !dbg !462
  call void @z_object_init(ptr noundef %42), !dbg !463
  ret void, !dbg !464
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone
define internal void @z_waitq_init(ptr noundef %0) #0 !dbg !465 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !469, metadata !DIExpression()), !dbg !470
  %3 = load ptr, ptr %2, align 4, !dbg !471
  %4 = getelementptr inbounds %struct._wait_q_t, ptr %3, i32 0, i32 0, !dbg !472
  call void @sys_dlist_init(ptr noundef %4), !dbg !473
  ret void, !dbg !474
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: noinline nounwind optnone
define internal void @z_object_init(ptr noundef %0) #0 !dbg !475 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !476, metadata !DIExpression()), !dbg !477
  %3 = load ptr, ptr %2, align 4, !dbg !478
  ret void, !dbg !479
}

; Function Attrs: noinline nounwind optnone
define hidden i32 @z_impl_k_msgq_alloc_init(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 !dbg !480 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !483, metadata !DIExpression()), !dbg !484
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !485, metadata !DIExpression()), !dbg !486
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !487, metadata !DIExpression()), !dbg !488
  call void @llvm.dbg.declare(metadata ptr %7, metadata !489, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.declare(metadata ptr %8, metadata !491, metadata !DIExpression()), !dbg !492
  call void @llvm.dbg.declare(metadata ptr %9, metadata !493, metadata !DIExpression()), !dbg !494
  br label %10, !dbg !495

10:                                               ; preds = %3
  br label %11, !dbg !496

11:                                               ; preds = %10
  %12 = load i32, ptr %5, align 4, !dbg !498
  %13 = load i32, ptr %6, align 4, !dbg !500
  %14 = call zeroext i1 @size_mul_overflow(i32 noundef %12, i32 noundef %13, ptr noundef %9), !dbg !501
  br i1 %14, label %15, label %16, !dbg !502

15:                                               ; preds = %11
  store i32 -5, ptr %8, align 4, !dbg !503
  br label %30, !dbg !505

16:                                               ; preds = %11
  %17 = load i32, ptr %9, align 4, !dbg !506
  %18 = call ptr @z_thread_malloc(i32 noundef %17), !dbg !508
  store ptr %18, ptr %7, align 4, !dbg !509
  %19 = load ptr, ptr %7, align 4, !dbg !510
  %20 = icmp ne ptr %19, null, !dbg !512
  br i1 %20, label %21, label %28, !dbg !513

21:                                               ; preds = %16
  %22 = load ptr, ptr %4, align 4, !dbg !514
  %23 = load ptr, ptr %7, align 4, !dbg !516
  %24 = load i32, ptr %5, align 4, !dbg !517
  %25 = load i32, ptr %6, align 4, !dbg !518
  call void @k_msgq_init(ptr noundef %22, ptr noundef %23, i32 noundef %24, i32 noundef %25), !dbg !519
  %26 = load ptr, ptr %4, align 4, !dbg !520
  %27 = getelementptr inbounds %struct.k_msgq, ptr %26, i32 0, i32 9, !dbg !521
  store i8 1, ptr %27, align 4, !dbg !522
  store i32 0, ptr %8, align 4, !dbg !523
  br label %29, !dbg !524

28:                                               ; preds = %16
  store i32 -6, ptr %8, align 4, !dbg !525
  br label %29

29:                                               ; preds = %28, %21
  br label %30

30:                                               ; preds = %29, %15
  br label %31, !dbg !527

31:                                               ; preds = %30
  br label %32, !dbg !528

32:                                               ; preds = %31
  %33 = load i32, ptr %8, align 4, !dbg !530
  ret i32 %33, !dbg !531
}

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @size_mul_overflow(i32 noundef %0, i32 noundef %1, ptr noundef %2) #0 !dbg !532 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 4
  store i32 %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !538, metadata !DIExpression()), !dbg !539
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !540, metadata !DIExpression()), !dbg !541
  store ptr %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !542, metadata !DIExpression()), !dbg !543
  %7 = load i32, ptr %4, align 4, !dbg !544
  %8 = load i32, ptr %5, align 4, !dbg !545
  %9 = load ptr, ptr %6, align 4, !dbg !546
  %10 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %7, i32 %8), !dbg !547
  %11 = extractvalue { i32, i1 } %10, 1, !dbg !547
  %12 = extractvalue { i32, i1 } %10, 0, !dbg !547
  store i32 %12, ptr %9, align 4, !dbg !547
  ret i1 %11, !dbg !548
}

; Function Attrs: noinline nounwind optnone
define internal ptr @z_thread_malloc(i32 noundef %0) #0 !dbg !549 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !553, metadata !DIExpression()), !dbg !554
  %3 = load i32, ptr %2, align 4, !dbg !555
  %4 = call ptr @z_thread_aligned_alloc(i32 noundef 0, i32 noundef %3), !dbg !556
  ret ptr %4, !dbg !557
}

; Function Attrs: noinline nounwind optnone
define hidden i32 @k_msgq_cleanup(ptr noundef %0) #0 !dbg !558 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !561, metadata !DIExpression()), !dbg !562
  br label %4, !dbg !563

4:                                                ; preds = %1
  br label %5, !dbg !564

5:                                                ; preds = %4
  %6 = load ptr, ptr %3, align 4, !dbg !566
  %7 = getelementptr inbounds %struct.k_msgq, ptr %6, i32 0, i32 0, !dbg !568
  %8 = call ptr @z_waitq_head(ptr noundef %7), !dbg !569
  %9 = icmp ne ptr %8, null, !dbg !570
  br i1 %9, label %10, label %13, !dbg !571

10:                                               ; preds = %5
  br label %11, !dbg !572

11:                                               ; preds = %10
  br label %12, !dbg !574

12:                                               ; preds = %11
  store i32 -16, ptr %2, align 4, !dbg !576
  br label %33, !dbg !576

13:                                               ; preds = %5
  %14 = load ptr, ptr %3, align 4, !dbg !577
  %15 = getelementptr inbounds %struct.k_msgq, ptr %14, i32 0, i32 9, !dbg !579
  %16 = load i8, ptr %15, align 4, !dbg !579
  %17 = zext i8 %16 to i32, !dbg !577
  %18 = and i32 %17, 1, !dbg !580
  %19 = icmp ne i32 %18, 0, !dbg !581
  br i1 %19, label %20, label %30, !dbg !582

20:                                               ; preds = %13
  %21 = load ptr, ptr %3, align 4, !dbg !583
  %22 = getelementptr inbounds %struct.k_msgq, ptr %21, i32 0, i32 4, !dbg !585
  %23 = load ptr, ptr %22, align 4, !dbg !585
  call void @k_free(ptr noundef %23), !dbg !586
  %24 = load ptr, ptr %3, align 4, !dbg !587
  %25 = getelementptr inbounds %struct.k_msgq, ptr %24, i32 0, i32 9, !dbg !588
  %26 = load i8, ptr %25, align 4, !dbg !589
  %27 = zext i8 %26 to i32, !dbg !589
  %28 = and i32 %27, -2, !dbg !589
  %29 = trunc i32 %28 to i8, !dbg !589
  store i8 %29, ptr %25, align 4, !dbg !589
  br label %30, !dbg !590

30:                                               ; preds = %20, %13
  br label %31, !dbg !591

31:                                               ; preds = %30
  br label %32, !dbg !592

32:                                               ; preds = %31
  store i32 0, ptr %2, align 4, !dbg !594
  br label %33, !dbg !594

33:                                               ; preds = %32, %12
  %34 = load i32, ptr %2, align 4, !dbg !595
  ret i32 %34, !dbg !595
}

; Function Attrs: noinline nounwind optnone
define internal ptr @z_waitq_head(ptr noundef %0) #0 !dbg !596 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !599, metadata !DIExpression()), !dbg !600
  %3 = load ptr, ptr %2, align 4, !dbg !601
  %4 = getelementptr inbounds %struct._wait_q_t, ptr %3, i32 0, i32 0, !dbg !602
  %5 = call ptr @sys_dlist_peek_head(ptr noundef %4), !dbg !603
  ret ptr %5, !dbg !604
}

declare void @k_free(ptr noundef) #3

; Function Attrs: noinline nounwind optnone
define hidden i32 @z_impl_k_msgq_put(ptr noundef %0, ptr noundef %1, [1 x i64] %2) #0 !dbg !605 {
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
  %22 = alloca %struct.k_timeout_t, align 8
  %23 = getelementptr inbounds %struct.k_timeout_t, ptr %15, i32 0, i32 0
  store [1 x i64] %2, ptr %23, align 8
  store ptr %0, ptr %16, align 4
  call void @llvm.dbg.declare(metadata ptr %16, metadata !608, metadata !DIExpression()), !dbg !609
  store ptr %1, ptr %17, align 4
  call void @llvm.dbg.declare(metadata ptr %17, metadata !610, metadata !DIExpression()), !dbg !611
  call void @llvm.dbg.declare(metadata ptr %15, metadata !612, metadata !DIExpression()), !dbg !613
  call void @llvm.dbg.declare(metadata ptr %18, metadata !614, metadata !DIExpression()), !dbg !615
  call void @llvm.dbg.declare(metadata ptr %19, metadata !616, metadata !DIExpression()), !dbg !621
  call void @llvm.dbg.declare(metadata ptr %20, metadata !622, metadata !DIExpression()), !dbg !623
  %24 = load ptr, ptr %16, align 4, !dbg !624
  %25 = getelementptr inbounds %struct.k_msgq, ptr %24, i32 0, i32 1, !dbg !625
  store ptr %25, ptr %13, align 4
  call void @llvm.dbg.declare(metadata ptr %13, metadata !626, metadata !DIExpression()), !dbg !631
  %26 = load ptr, ptr %13, align 4, !dbg !633
  call void @llvm.dbg.declare(metadata ptr %12, metadata !634, metadata !DIExpression()), !dbg !635
  call void @llvm.dbg.declare(metadata ptr %7, metadata !636, metadata !DIExpression()), !dbg !641
  %27 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #4, !dbg !643, !srcloc !644
  store i32 %27, ptr %7, align 4, !dbg !643
  %28 = load i32, ptr %7, align 4, !dbg !645
  store i32 %28, ptr %12, align 4, !dbg !646
  %29 = load ptr, ptr %13, align 4, !dbg !647
  store ptr %29, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !648, metadata !DIExpression()), !dbg !652
  %30 = load ptr, ptr %6, align 4, !dbg !654
  %31 = load ptr, ptr %13, align 4, !dbg !655
  store ptr %31, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !656, metadata !DIExpression()), !dbg !658
  %32 = load ptr, ptr %5, align 4, !dbg !660
  %33 = load i32, ptr %12, align 4, !dbg !661
  %34 = getelementptr inbounds %struct.z_spinlock_key, ptr %21, i32 0, i32 0, !dbg !662
  store i32 %33, ptr %34, align 4, !dbg !662
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %19, ptr align 4 %21, i32 4, i1 false), !dbg !662
  br label %35, !dbg !663

35:                                               ; preds = %3
  br label %36, !dbg !664

36:                                               ; preds = %35
  %37 = load ptr, ptr %16, align 4, !dbg !666
  %38 = getelementptr inbounds %struct.k_msgq, ptr %37, i32 0, i32 8, !dbg !668
  %39 = load i32, ptr %38, align 4, !dbg !668
  %40 = load ptr, ptr %16, align 4, !dbg !669
  %41 = getelementptr inbounds %struct.k_msgq, ptr %40, i32 0, i32 3, !dbg !670
  %42 = load i32, ptr %41, align 4, !dbg !670
  %43 = icmp ult i32 %39, %42, !dbg !671
  br i1 %43, label %44, label %105, !dbg !672

44:                                               ; preds = %36
  %45 = load ptr, ptr %16, align 4, !dbg !673
  %46 = getelementptr inbounds %struct.k_msgq, ptr %45, i32 0, i32 0, !dbg !675
  %47 = call ptr @z_unpend_first_thread(ptr noundef %46), !dbg !676
  store ptr %47, ptr %18, align 4, !dbg !677
  %48 = load ptr, ptr %18, align 4, !dbg !678
  %49 = icmp ne ptr %48, null, !dbg !680
  br i1 %49, label %50, label %71, !dbg !681

50:                                               ; preds = %44
  br label %51, !dbg !682

51:                                               ; preds = %50
  br label %52, !dbg !684

52:                                               ; preds = %51
  %53 = load ptr, ptr %18, align 4, !dbg !686
  %54 = getelementptr inbounds %struct.k_thread, ptr %53, i32 0, i32 0, !dbg !687
  %55 = getelementptr inbounds %struct._thread_base, ptr %54, i32 0, i32 6, !dbg !688
  %56 = load ptr, ptr %55, align 4, !dbg !688
  %57 = load ptr, ptr %17, align 4, !dbg !689
  %58 = load ptr, ptr %16, align 4, !dbg !690
  %59 = getelementptr inbounds %struct.k_msgq, ptr %58, i32 0, i32 2, !dbg !691
  %60 = load i32, ptr %59, align 4, !dbg !691
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %56, ptr align 1 %57, i32 %60, i1 false), !dbg !692
  %61 = load ptr, ptr %18, align 4, !dbg !693
  store ptr %61, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !694, metadata !DIExpression()), !dbg !699
  store i32 0, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !701, metadata !DIExpression()), !dbg !702
  %62 = load i32, ptr %11, align 4, !dbg !703
  %63 = load ptr, ptr %10, align 4, !dbg !704
  %64 = getelementptr inbounds %struct.k_thread, ptr %63, i32 0, i32 6, !dbg !705
  %65 = getelementptr inbounds %struct._thread_arch, ptr %64, i32 0, i32 1, !dbg !706
  store i32 %62, ptr %65, align 4, !dbg !707
  %66 = load ptr, ptr %18, align 4, !dbg !708
  call void @z_ready_thread(ptr noundef %66), !dbg !709
  %67 = load ptr, ptr %16, align 4, !dbg !710
  %68 = getelementptr inbounds %struct.k_msgq, ptr %67, i32 0, i32 1, !dbg !711
  %69 = getelementptr inbounds %struct.z_spinlock_key, ptr %19, i32 0, i32 0, !dbg !712
  %70 = load [1 x i32], ptr %69, align 4, !dbg !712
  call void @z_reschedule(ptr noundef %68, [1 x i32] %70), !dbg !712
  store i32 0, ptr %14, align 4, !dbg !713
  br label %145, !dbg !713

71:                                               ; preds = %44
  %72 = load ptr, ptr %16, align 4, !dbg !714
  %73 = getelementptr inbounds %struct.k_msgq, ptr %72, i32 0, i32 7, !dbg !716
  %74 = load ptr, ptr %73, align 4, !dbg !716
  %75 = load ptr, ptr %17, align 4, !dbg !717
  %76 = load ptr, ptr %16, align 4, !dbg !718
  %77 = getelementptr inbounds %struct.k_msgq, ptr %76, i32 0, i32 2, !dbg !719
  %78 = load i32, ptr %77, align 4, !dbg !719
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %74, ptr align 1 %75, i32 %78, i1 false), !dbg !720
  %79 = load ptr, ptr %16, align 4, !dbg !721
  %80 = getelementptr inbounds %struct.k_msgq, ptr %79, i32 0, i32 2, !dbg !722
  %81 = load i32, ptr %80, align 4, !dbg !722
  %82 = load ptr, ptr %16, align 4, !dbg !723
  %83 = getelementptr inbounds %struct.k_msgq, ptr %82, i32 0, i32 7, !dbg !724
  %84 = load ptr, ptr %83, align 4, !dbg !725
  %85 = getelementptr inbounds i8, ptr %84, i32 %81, !dbg !725
  store ptr %85, ptr %83, align 4, !dbg !725
  %86 = load ptr, ptr %16, align 4, !dbg !726
  %87 = getelementptr inbounds %struct.k_msgq, ptr %86, i32 0, i32 7, !dbg !728
  %88 = load ptr, ptr %87, align 4, !dbg !728
  %89 = load ptr, ptr %16, align 4, !dbg !729
  %90 = getelementptr inbounds %struct.k_msgq, ptr %89, i32 0, i32 5, !dbg !730
  %91 = load ptr, ptr %90, align 4, !dbg !730
  %92 = icmp eq ptr %88, %91, !dbg !731
  br i1 %92, label %93, label %99, !dbg !732

93:                                               ; preds = %71
  %94 = load ptr, ptr %16, align 4, !dbg !733
  %95 = getelementptr inbounds %struct.k_msgq, ptr %94, i32 0, i32 4, !dbg !735
  %96 = load ptr, ptr %95, align 4, !dbg !735
  %97 = load ptr, ptr %16, align 4, !dbg !736
  %98 = getelementptr inbounds %struct.k_msgq, ptr %97, i32 0, i32 7, !dbg !737
  store ptr %96, ptr %98, align 4, !dbg !738
  br label %99, !dbg !739

99:                                               ; preds = %93, %71
  %100 = load ptr, ptr %16, align 4, !dbg !740
  %101 = getelementptr inbounds %struct.k_msgq, ptr %100, i32 0, i32 8, !dbg !741
  %102 = load i32, ptr %101, align 4, !dbg !742
  %103 = add i32 %102, 1, !dbg !742
  store i32 %103, ptr %101, align 4, !dbg !742
  br label %104

104:                                              ; preds = %99
  store i32 0, ptr %20, align 4, !dbg !743
  br label %131, !dbg !744

105:                                              ; preds = %36
  %106 = getelementptr inbounds %struct.k_timeout_t, ptr %15, i32 0, i32 0, !dbg !745
  %107 = load i64, ptr %106, align 8, !dbg !745
  %108 = getelementptr inbounds %struct.k_timeout_t, ptr %22, i32 0, i32 0, !dbg !747
  store i64 0, ptr %108, align 8, !dbg !747
  %109 = icmp eq i64 %107, 0, !dbg !748
  br i1 %109, label %110, label %111, !dbg !749

110:                                              ; preds = %105
  store i32 -35, ptr %20, align 4, !dbg !750
  br label %130, !dbg !752

111:                                              ; preds = %105
  br label %112, !dbg !753

112:                                              ; preds = %111
  br label %113, !dbg !755

113:                                              ; preds = %112
  %114 = load ptr, ptr %17, align 4, !dbg !757
  %115 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !758
  %116 = getelementptr inbounds %struct.k_thread, ptr %115, i32 0, i32 0, !dbg !759
  %117 = getelementptr inbounds %struct._thread_base, ptr %116, i32 0, i32 6, !dbg !760
  store ptr %114, ptr %117, align 4, !dbg !761
  %118 = load ptr, ptr %16, align 4, !dbg !762
  %119 = getelementptr inbounds %struct.k_msgq, ptr %118, i32 0, i32 1, !dbg !763
  %120 = load ptr, ptr %16, align 4, !dbg !764
  %121 = getelementptr inbounds %struct.k_msgq, ptr %120, i32 0, i32 0, !dbg !765
  %122 = getelementptr inbounds %struct.z_spinlock_key, ptr %19, i32 0, i32 0, !dbg !766
  %123 = load [1 x i32], ptr %122, align 4, !dbg !766
  %124 = getelementptr inbounds %struct.k_timeout_t, ptr %15, i32 0, i32 0, !dbg !766
  %125 = load [1 x i64], ptr %124, align 8, !dbg !766
  %126 = call i32 @z_pend_curr(ptr noundef %119, [1 x i32] %123, ptr noundef %121, [1 x i64] %125), !dbg !766
  store i32 %126, ptr %20, align 4, !dbg !767
  br label %127, !dbg !768

127:                                              ; preds = %113
  br label %128, !dbg !769

128:                                              ; preds = %127
  %129 = load i32, ptr %20, align 4, !dbg !771
  store i32 %129, ptr %14, align 4, !dbg !772
  br label %145, !dbg !772

130:                                              ; preds = %110
  br label %131

131:                                              ; preds = %130, %104
  br label %132, !dbg !773

132:                                              ; preds = %131
  br label %133, !dbg !774

133:                                              ; preds = %132
  %134 = load ptr, ptr %16, align 4, !dbg !776
  %135 = getelementptr inbounds %struct.k_msgq, ptr %134, i32 0, i32 1, !dbg !777
  %136 = getelementptr inbounds %struct.z_spinlock_key, ptr %19, i32 0, i32 0, !dbg !778
  %137 = load [1 x i32], ptr %136, align 4, !dbg !778
  store [1 x i32] %137, ptr %8, align 4
  store ptr %135, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !779, metadata !DIExpression()), !dbg !783
  call void @llvm.dbg.declare(metadata ptr %8, metadata !785, metadata !DIExpression()), !dbg !786
  %138 = load ptr, ptr %9, align 4, !dbg !787
  %139 = load i32, ptr %8, align 4, !dbg !788
  store i32 %139, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !789, metadata !DIExpression()), !dbg !793
  %140 = load i32, ptr %4, align 4, !dbg !795
  %141 = icmp ne i32 %140, 0, !dbg !797
  br i1 %141, label %142, label %143, !dbg !798

142:                                              ; preds = %133
  br label %arch_irq_unlock.exit, !dbg !799

143:                                              ; preds = %133
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #4, !dbg !801, !srcloc !802
  br label %arch_irq_unlock.exit, !dbg !803

arch_irq_unlock.exit:                             ; preds = %142, %143
  %144 = load i32, ptr %20, align 4, !dbg !804
  store i32 %144, ptr %14, align 4, !dbg !805
  br label %145, !dbg !805

145:                                              ; preds = %arch_irq_unlock.exit, %128, %52
  %146 = load i32, ptr %14, align 4, !dbg !806
  ret i32 %146, !dbg !806
}

declare ptr @z_unpend_first_thread(ptr noundef) #3

declare void @z_ready_thread(ptr noundef) #3

declare void @z_reschedule(ptr noundef, [1 x i32]) #3

declare i32 @z_pend_curr(ptr noundef, [1 x i32], ptr noundef, [1 x i64]) #3

; Function Attrs: noinline nounwind optnone
define hidden void @z_impl_k_msgq_get_attrs(ptr noundef %0, ptr noundef %1) #0 !dbg !807 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !816, metadata !DIExpression()), !dbg !817
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !818, metadata !DIExpression()), !dbg !819
  %5 = load ptr, ptr %3, align 4, !dbg !820
  %6 = getelementptr inbounds %struct.k_msgq, ptr %5, i32 0, i32 2, !dbg !821
  %7 = load i32, ptr %6, align 4, !dbg !821
  %8 = load ptr, ptr %4, align 4, !dbg !822
  %9 = getelementptr inbounds %struct.k_msgq_attrs, ptr %8, i32 0, i32 0, !dbg !823
  store i32 %7, ptr %9, align 4, !dbg !824
  %10 = load ptr, ptr %3, align 4, !dbg !825
  %11 = getelementptr inbounds %struct.k_msgq, ptr %10, i32 0, i32 3, !dbg !826
  %12 = load i32, ptr %11, align 4, !dbg !826
  %13 = load ptr, ptr %4, align 4, !dbg !827
  %14 = getelementptr inbounds %struct.k_msgq_attrs, ptr %13, i32 0, i32 1, !dbg !828
  store i32 %12, ptr %14, align 4, !dbg !829
  %15 = load ptr, ptr %3, align 4, !dbg !830
  %16 = getelementptr inbounds %struct.k_msgq, ptr %15, i32 0, i32 8, !dbg !831
  %17 = load i32, ptr %16, align 4, !dbg !831
  %18 = load ptr, ptr %4, align 4, !dbg !832
  %19 = getelementptr inbounds %struct.k_msgq_attrs, ptr %18, i32 0, i32 2, !dbg !833
  store i32 %17, ptr %19, align 4, !dbg !834
  ret void, !dbg !835
}

; Function Attrs: noinline nounwind optnone
define hidden i32 @z_impl_k_msgq_get(ptr noundef %0, ptr noundef %1, [1 x i64] %2) #0 !dbg !836 {
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
  %22 = alloca %struct.k_timeout_t, align 8
  %23 = getelementptr inbounds %struct.k_timeout_t, ptr %15, i32 0, i32 0
  store [1 x i64] %2, ptr %23, align 8
  store ptr %0, ptr %16, align 4
  call void @llvm.dbg.declare(metadata ptr %16, metadata !839, metadata !DIExpression()), !dbg !840
  store ptr %1, ptr %17, align 4
  call void @llvm.dbg.declare(metadata ptr %17, metadata !841, metadata !DIExpression()), !dbg !842
  call void @llvm.dbg.declare(metadata ptr %15, metadata !843, metadata !DIExpression()), !dbg !844
  call void @llvm.dbg.declare(metadata ptr %18, metadata !845, metadata !DIExpression()), !dbg !846
  call void @llvm.dbg.declare(metadata ptr %19, metadata !847, metadata !DIExpression()), !dbg !848
  call void @llvm.dbg.declare(metadata ptr %20, metadata !849, metadata !DIExpression()), !dbg !850
  %24 = load ptr, ptr %16, align 4, !dbg !851
  %25 = getelementptr inbounds %struct.k_msgq, ptr %24, i32 0, i32 1, !dbg !852
  store ptr %25, ptr %13, align 4
  call void @llvm.dbg.declare(metadata ptr %13, metadata !626, metadata !DIExpression()), !dbg !853
  %26 = load ptr, ptr %13, align 4, !dbg !855
  call void @llvm.dbg.declare(metadata ptr %12, metadata !634, metadata !DIExpression()), !dbg !856
  call void @llvm.dbg.declare(metadata ptr %7, metadata !636, metadata !DIExpression()), !dbg !857
  %27 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #4, !dbg !859, !srcloc !644
  store i32 %27, ptr %7, align 4, !dbg !859
  %28 = load i32, ptr %7, align 4, !dbg !860
  store i32 %28, ptr %12, align 4, !dbg !861
  %29 = load ptr, ptr %13, align 4, !dbg !862
  store ptr %29, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !648, metadata !DIExpression()), !dbg !863
  %30 = load ptr, ptr %6, align 4, !dbg !865
  %31 = load ptr, ptr %13, align 4, !dbg !866
  store ptr %31, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !656, metadata !DIExpression()), !dbg !867
  %32 = load ptr, ptr %5, align 4, !dbg !869
  %33 = load i32, ptr %12, align 4, !dbg !870
  %34 = getelementptr inbounds %struct.z_spinlock_key, ptr %21, i32 0, i32 0, !dbg !871
  store i32 %33, ptr %34, align 4, !dbg !871
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %18, ptr align 4 %21, i32 4, i1 false), !dbg !871
  br label %35, !dbg !872

35:                                               ; preds = %3
  br label %36, !dbg !873

36:                                               ; preds = %35
  %37 = load ptr, ptr %16, align 4, !dbg !875
  %38 = getelementptr inbounds %struct.k_msgq, ptr %37, i32 0, i32 8, !dbg !877
  %39 = load i32, ptr %38, align 4, !dbg !877
  %40 = icmp ugt i32 %39, 0, !dbg !878
  br i1 %40, label %41, label %130, !dbg !879

41:                                               ; preds = %36
  %42 = load ptr, ptr %17, align 4, !dbg !880
  %43 = load ptr, ptr %16, align 4, !dbg !882
  %44 = getelementptr inbounds %struct.k_msgq, ptr %43, i32 0, i32 6, !dbg !883
  %45 = load ptr, ptr %44, align 4, !dbg !883
  %46 = load ptr, ptr %16, align 4, !dbg !884
  %47 = getelementptr inbounds %struct.k_msgq, ptr %46, i32 0, i32 2, !dbg !885
  %48 = load i32, ptr %47, align 4, !dbg !885
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %42, ptr align 1 %45, i32 %48, i1 false), !dbg !886
  %49 = load ptr, ptr %16, align 4, !dbg !887
  %50 = getelementptr inbounds %struct.k_msgq, ptr %49, i32 0, i32 2, !dbg !888
  %51 = load i32, ptr %50, align 4, !dbg !888
  %52 = load ptr, ptr %16, align 4, !dbg !889
  %53 = getelementptr inbounds %struct.k_msgq, ptr %52, i32 0, i32 6, !dbg !890
  %54 = load ptr, ptr %53, align 4, !dbg !891
  %55 = getelementptr inbounds i8, ptr %54, i32 %51, !dbg !891
  store ptr %55, ptr %53, align 4, !dbg !891
  %56 = load ptr, ptr %16, align 4, !dbg !892
  %57 = getelementptr inbounds %struct.k_msgq, ptr %56, i32 0, i32 6, !dbg !894
  %58 = load ptr, ptr %57, align 4, !dbg !894
  %59 = load ptr, ptr %16, align 4, !dbg !895
  %60 = getelementptr inbounds %struct.k_msgq, ptr %59, i32 0, i32 5, !dbg !896
  %61 = load ptr, ptr %60, align 4, !dbg !896
  %62 = icmp eq ptr %58, %61, !dbg !897
  br i1 %62, label %63, label %69, !dbg !898

63:                                               ; preds = %41
  %64 = load ptr, ptr %16, align 4, !dbg !899
  %65 = getelementptr inbounds %struct.k_msgq, ptr %64, i32 0, i32 4, !dbg !901
  %66 = load ptr, ptr %65, align 4, !dbg !901
  %67 = load ptr, ptr %16, align 4, !dbg !902
  %68 = getelementptr inbounds %struct.k_msgq, ptr %67, i32 0, i32 6, !dbg !903
  store ptr %66, ptr %68, align 4, !dbg !904
  br label %69, !dbg !905

69:                                               ; preds = %63, %41
  %70 = load ptr, ptr %16, align 4, !dbg !906
  %71 = getelementptr inbounds %struct.k_msgq, ptr %70, i32 0, i32 8, !dbg !907
  %72 = load i32, ptr %71, align 4, !dbg !908
  %73 = add i32 %72, -1, !dbg !908
  store i32 %73, ptr %71, align 4, !dbg !908
  %74 = load ptr, ptr %16, align 4, !dbg !909
  %75 = getelementptr inbounds %struct.k_msgq, ptr %74, i32 0, i32 0, !dbg !910
  %76 = call ptr @z_unpend_first_thread(ptr noundef %75), !dbg !911
  store ptr %76, ptr %19, align 4, !dbg !912
  %77 = load ptr, ptr %19, align 4, !dbg !913
  %78 = icmp ne ptr %77, null, !dbg !915
  br i1 %78, label %79, label %129, !dbg !916

79:                                               ; preds = %69
  br label %80, !dbg !917

80:                                               ; preds = %79
  br label %81, !dbg !919

81:                                               ; preds = %80
  %82 = load ptr, ptr %16, align 4, !dbg !921
  %83 = getelementptr inbounds %struct.k_msgq, ptr %82, i32 0, i32 7, !dbg !922
  %84 = load ptr, ptr %83, align 4, !dbg !922
  %85 = load ptr, ptr %19, align 4, !dbg !923
  %86 = getelementptr inbounds %struct.k_thread, ptr %85, i32 0, i32 0, !dbg !924
  %87 = getelementptr inbounds %struct._thread_base, ptr %86, i32 0, i32 6, !dbg !925
  %88 = load ptr, ptr %87, align 4, !dbg !925
  %89 = load ptr, ptr %16, align 4, !dbg !926
  %90 = getelementptr inbounds %struct.k_msgq, ptr %89, i32 0, i32 2, !dbg !927
  %91 = load i32, ptr %90, align 4, !dbg !927
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %84, ptr align 1 %88, i32 %91, i1 false), !dbg !928
  %92 = load ptr, ptr %16, align 4, !dbg !929
  %93 = getelementptr inbounds %struct.k_msgq, ptr %92, i32 0, i32 2, !dbg !930
  %94 = load i32, ptr %93, align 4, !dbg !930
  %95 = load ptr, ptr %16, align 4, !dbg !931
  %96 = getelementptr inbounds %struct.k_msgq, ptr %95, i32 0, i32 7, !dbg !932
  %97 = load ptr, ptr %96, align 4, !dbg !933
  %98 = getelementptr inbounds i8, ptr %97, i32 %94, !dbg !933
  store ptr %98, ptr %96, align 4, !dbg !933
  %99 = load ptr, ptr %16, align 4, !dbg !934
  %100 = getelementptr inbounds %struct.k_msgq, ptr %99, i32 0, i32 7, !dbg !936
  %101 = load ptr, ptr %100, align 4, !dbg !936
  %102 = load ptr, ptr %16, align 4, !dbg !937
  %103 = getelementptr inbounds %struct.k_msgq, ptr %102, i32 0, i32 5, !dbg !938
  %104 = load ptr, ptr %103, align 4, !dbg !938
  %105 = icmp eq ptr %101, %104, !dbg !939
  br i1 %105, label %106, label %112, !dbg !940

106:                                              ; preds = %81
  %107 = load ptr, ptr %16, align 4, !dbg !941
  %108 = getelementptr inbounds %struct.k_msgq, ptr %107, i32 0, i32 4, !dbg !943
  %109 = load ptr, ptr %108, align 4, !dbg !943
  %110 = load ptr, ptr %16, align 4, !dbg !944
  %111 = getelementptr inbounds %struct.k_msgq, ptr %110, i32 0, i32 7, !dbg !945
  store ptr %109, ptr %111, align 4, !dbg !946
  br label %112, !dbg !947

112:                                              ; preds = %106, %81
  %113 = load ptr, ptr %16, align 4, !dbg !948
  %114 = getelementptr inbounds %struct.k_msgq, ptr %113, i32 0, i32 8, !dbg !949
  %115 = load i32, ptr %114, align 4, !dbg !950
  %116 = add i32 %115, 1, !dbg !950
  store i32 %116, ptr %114, align 4, !dbg !950
  %117 = load ptr, ptr %19, align 4, !dbg !951
  store ptr %117, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !694, metadata !DIExpression()), !dbg !952
  store i32 0, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !701, metadata !DIExpression()), !dbg !954
  %118 = load i32, ptr %11, align 4, !dbg !955
  %119 = load ptr, ptr %10, align 4, !dbg !956
  %120 = getelementptr inbounds %struct.k_thread, ptr %119, i32 0, i32 6, !dbg !957
  %121 = getelementptr inbounds %struct._thread_arch, ptr %120, i32 0, i32 1, !dbg !958
  store i32 %118, ptr %121, align 4, !dbg !959
  %122 = load ptr, ptr %19, align 4, !dbg !960
  call void @z_ready_thread(ptr noundef %122), !dbg !961
  %123 = load ptr, ptr %16, align 4, !dbg !962
  %124 = getelementptr inbounds %struct.k_msgq, ptr %123, i32 0, i32 1, !dbg !963
  %125 = getelementptr inbounds %struct.z_spinlock_key, ptr %18, i32 0, i32 0, !dbg !964
  %126 = load [1 x i32], ptr %125, align 4, !dbg !964
  call void @z_reschedule(ptr noundef %124, [1 x i32] %126), !dbg !964
  br label %127, !dbg !965

127:                                              ; preds = %112
  br label %128, !dbg !966

128:                                              ; preds = %127
  store i32 0, ptr %14, align 4, !dbg !968
  br label %170, !dbg !968

129:                                              ; preds = %69
  store i32 0, ptr %20, align 4, !dbg !969
  br label %156, !dbg !970

130:                                              ; preds = %36
  %131 = getelementptr inbounds %struct.k_timeout_t, ptr %15, i32 0, i32 0, !dbg !971
  %132 = load i64, ptr %131, align 8, !dbg !971
  %133 = getelementptr inbounds %struct.k_timeout_t, ptr %22, i32 0, i32 0, !dbg !973
  store i64 0, ptr %133, align 8, !dbg !973
  %134 = icmp eq i64 %132, 0, !dbg !974
  br i1 %134, label %135, label %136, !dbg !975

135:                                              ; preds = %130
  store i32 -35, ptr %20, align 4, !dbg !976
  br label %155, !dbg !978

136:                                              ; preds = %130
  br label %137, !dbg !979

137:                                              ; preds = %136
  br label %138, !dbg !981

138:                                              ; preds = %137
  %139 = load ptr, ptr %17, align 4, !dbg !983
  %140 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !984
  %141 = getelementptr inbounds %struct.k_thread, ptr %140, i32 0, i32 0, !dbg !985
  %142 = getelementptr inbounds %struct._thread_base, ptr %141, i32 0, i32 6, !dbg !986
  store ptr %139, ptr %142, align 4, !dbg !987
  %143 = load ptr, ptr %16, align 4, !dbg !988
  %144 = getelementptr inbounds %struct.k_msgq, ptr %143, i32 0, i32 1, !dbg !989
  %145 = load ptr, ptr %16, align 4, !dbg !990
  %146 = getelementptr inbounds %struct.k_msgq, ptr %145, i32 0, i32 0, !dbg !991
  %147 = getelementptr inbounds %struct.z_spinlock_key, ptr %18, i32 0, i32 0, !dbg !992
  %148 = load [1 x i32], ptr %147, align 4, !dbg !992
  %149 = getelementptr inbounds %struct.k_timeout_t, ptr %15, i32 0, i32 0, !dbg !992
  %150 = load [1 x i64], ptr %149, align 8, !dbg !992
  %151 = call i32 @z_pend_curr(ptr noundef %144, [1 x i32] %148, ptr noundef %146, [1 x i64] %150), !dbg !992
  store i32 %151, ptr %20, align 4, !dbg !993
  br label %152, !dbg !994

152:                                              ; preds = %138
  br label %153, !dbg !995

153:                                              ; preds = %152
  %154 = load i32, ptr %20, align 4, !dbg !997
  store i32 %154, ptr %14, align 4, !dbg !998
  br label %170, !dbg !998

155:                                              ; preds = %135
  br label %156

156:                                              ; preds = %155, %129
  br label %157, !dbg !999

157:                                              ; preds = %156
  br label %158, !dbg !1000

158:                                              ; preds = %157
  %159 = load ptr, ptr %16, align 4, !dbg !1002
  %160 = getelementptr inbounds %struct.k_msgq, ptr %159, i32 0, i32 1, !dbg !1003
  %161 = getelementptr inbounds %struct.z_spinlock_key, ptr %18, i32 0, i32 0, !dbg !1004
  %162 = load [1 x i32], ptr %161, align 4, !dbg !1004
  store [1 x i32] %162, ptr %8, align 4
  store ptr %160, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !779, metadata !DIExpression()), !dbg !1005
  call void @llvm.dbg.declare(metadata ptr %8, metadata !785, metadata !DIExpression()), !dbg !1007
  %163 = load ptr, ptr %9, align 4, !dbg !1008
  %164 = load i32, ptr %8, align 4, !dbg !1009
  store i32 %164, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !789, metadata !DIExpression()), !dbg !1010
  %165 = load i32, ptr %4, align 4, !dbg !1012
  %166 = icmp ne i32 %165, 0, !dbg !1013
  br i1 %166, label %167, label %168, !dbg !1014

167:                                              ; preds = %158
  br label %arch_irq_unlock.exit, !dbg !1015

168:                                              ; preds = %158
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #4, !dbg !1016, !srcloc !802
  br label %arch_irq_unlock.exit, !dbg !1017

arch_irq_unlock.exit:                             ; preds = %167, %168
  %169 = load i32, ptr %20, align 4, !dbg !1018
  store i32 %169, ptr %14, align 4, !dbg !1019
  br label %170, !dbg !1019

170:                                              ; preds = %arch_irq_unlock.exit, %153, %128
  %171 = load i32, ptr %14, align 4, !dbg !1020
  ret i32 %171, !dbg !1020
}

; Function Attrs: noinline nounwind optnone
define hidden i32 @z_impl_k_msgq_peek(ptr noundef %0, ptr noundef %1) #0 !dbg !1021 {
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
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1024, metadata !DIExpression()), !dbg !1025
  store ptr %1, ptr %12, align 4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1026, metadata !DIExpression()), !dbg !1027
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1028, metadata !DIExpression()), !dbg !1029
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1030, metadata !DIExpression()), !dbg !1031
  %16 = load ptr, ptr %11, align 4, !dbg !1032
  %17 = getelementptr inbounds %struct.k_msgq, ptr %16, i32 0, i32 1, !dbg !1033
  store ptr %17, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !626, metadata !DIExpression()), !dbg !1034
  %18 = load ptr, ptr %10, align 4, !dbg !1036
  call void @llvm.dbg.declare(metadata ptr %9, metadata !634, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.declare(metadata ptr %6, metadata !636, metadata !DIExpression()), !dbg !1038
  %19 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #4, !dbg !1040, !srcloc !644
  store i32 %19, ptr %6, align 4, !dbg !1040
  %20 = load i32, ptr %6, align 4, !dbg !1041
  store i32 %20, ptr %9, align 4, !dbg !1042
  %21 = load ptr, ptr %10, align 4, !dbg !1043
  store ptr %21, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !648, metadata !DIExpression()), !dbg !1044
  %22 = load ptr, ptr %5, align 4, !dbg !1046
  %23 = load ptr, ptr %10, align 4, !dbg !1047
  store ptr %23, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !656, metadata !DIExpression()), !dbg !1048
  %24 = load ptr, ptr %4, align 4, !dbg !1050
  %25 = load i32, ptr %9, align 4, !dbg !1051
  %26 = getelementptr inbounds %struct.z_spinlock_key, ptr %15, i32 0, i32 0, !dbg !1052
  store i32 %25, ptr %26, align 4, !dbg !1052
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %13, ptr align 4 %15, i32 4, i1 false), !dbg !1052
  %27 = load ptr, ptr %11, align 4, !dbg !1053
  %28 = getelementptr inbounds %struct.k_msgq, ptr %27, i32 0, i32 8, !dbg !1055
  %29 = load i32, ptr %28, align 4, !dbg !1055
  %30 = icmp ugt i32 %29, 0, !dbg !1056
  br i1 %30, label %31, label %39, !dbg !1057

31:                                               ; preds = %2
  %32 = load ptr, ptr %12, align 4, !dbg !1058
  %33 = load ptr, ptr %11, align 4, !dbg !1060
  %34 = getelementptr inbounds %struct.k_msgq, ptr %33, i32 0, i32 6, !dbg !1061
  %35 = load ptr, ptr %34, align 4, !dbg !1061
  %36 = load ptr, ptr %11, align 4, !dbg !1062
  %37 = getelementptr inbounds %struct.k_msgq, ptr %36, i32 0, i32 2, !dbg !1063
  %38 = load i32, ptr %37, align 4, !dbg !1063
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %32, ptr align 1 %35, i32 %38, i1 false), !dbg !1064
  store i32 0, ptr %14, align 4, !dbg !1065
  br label %40, !dbg !1066

39:                                               ; preds = %2
  store i32 -35, ptr %14, align 4, !dbg !1067
  br label %40

40:                                               ; preds = %39, %31
  br label %41, !dbg !1069

41:                                               ; preds = %40
  br label %42, !dbg !1070

42:                                               ; preds = %41
  %43 = load ptr, ptr %11, align 4, !dbg !1072
  %44 = getelementptr inbounds %struct.k_msgq, ptr %43, i32 0, i32 1, !dbg !1073
  %45 = getelementptr inbounds %struct.z_spinlock_key, ptr %13, i32 0, i32 0, !dbg !1074
  %46 = load [1 x i32], ptr %45, align 4, !dbg !1074
  store [1 x i32] %46, ptr %7, align 4
  store ptr %44, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !779, metadata !DIExpression()), !dbg !1075
  call void @llvm.dbg.declare(metadata ptr %7, metadata !785, metadata !DIExpression()), !dbg !1077
  %47 = load ptr, ptr %8, align 4, !dbg !1078
  %48 = load i32, ptr %7, align 4, !dbg !1079
  store i32 %48, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !789, metadata !DIExpression()), !dbg !1080
  %49 = load i32, ptr %3, align 4, !dbg !1082
  %50 = icmp ne i32 %49, 0, !dbg !1083
  br i1 %50, label %51, label %52, !dbg !1084

51:                                               ; preds = %42
  br label %arch_irq_unlock.exit, !dbg !1085

52:                                               ; preds = %42
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #4, !dbg !1086, !srcloc !802
  br label %arch_irq_unlock.exit, !dbg !1087

arch_irq_unlock.exit:                             ; preds = %51, %52
  %53 = load i32, ptr %14, align 4, !dbg !1088
  ret i32 %53, !dbg !1089
}

; Function Attrs: noinline nounwind optnone
define hidden i32 @z_impl_k_msgq_peek_at(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 !dbg !1090 {
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
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1093, metadata !DIExpression()), !dbg !1094
  store ptr %1, ptr %13, align 4
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1095, metadata !DIExpression()), !dbg !1096
  store i32 %2, ptr %14, align 4
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1097, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.declare(metadata ptr %15, metadata !1099, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.declare(metadata ptr %16, metadata !1101, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.declare(metadata ptr %17, metadata !1103, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.declare(metadata ptr %18, metadata !1105, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.declare(metadata ptr %19, metadata !1107, metadata !DIExpression()), !dbg !1108
  %21 = load ptr, ptr %12, align 4, !dbg !1109
  %22 = getelementptr inbounds %struct.k_msgq, ptr %21, i32 0, i32 1, !dbg !1110
  store ptr %22, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !626, metadata !DIExpression()), !dbg !1111
  %23 = load ptr, ptr %11, align 4, !dbg !1113
  call void @llvm.dbg.declare(metadata ptr %10, metadata !634, metadata !DIExpression()), !dbg !1114
  call void @llvm.dbg.declare(metadata ptr %7, metadata !636, metadata !DIExpression()), !dbg !1115
  %24 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #4, !dbg !1117, !srcloc !644
  store i32 %24, ptr %7, align 4, !dbg !1117
  %25 = load i32, ptr %7, align 4, !dbg !1118
  store i32 %25, ptr %10, align 4, !dbg !1119
  %26 = load ptr, ptr %11, align 4, !dbg !1120
  store ptr %26, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !648, metadata !DIExpression()), !dbg !1121
  %27 = load ptr, ptr %6, align 4, !dbg !1123
  %28 = load ptr, ptr %11, align 4, !dbg !1124
  store ptr %28, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !656, metadata !DIExpression()), !dbg !1125
  %29 = load ptr, ptr %5, align 4, !dbg !1127
  %30 = load i32, ptr %10, align 4, !dbg !1128
  %31 = getelementptr inbounds %struct.z_spinlock_key, ptr %20, i32 0, i32 0, !dbg !1129
  store i32 %30, ptr %31, align 4, !dbg !1129
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %15, ptr align 4 %20, i32 4, i1 false), !dbg !1129
  %32 = load ptr, ptr %12, align 4, !dbg !1130
  %33 = getelementptr inbounds %struct.k_msgq, ptr %32, i32 0, i32 8, !dbg !1132
  %34 = load i32, ptr %33, align 4, !dbg !1132
  %35 = load i32, ptr %14, align 4, !dbg !1133
  %36 = icmp ugt i32 %34, %35, !dbg !1134
  br i1 %36, label %37, label %73, !dbg !1135

37:                                               ; preds = %3
  %38 = load ptr, ptr %12, align 4, !dbg !1136
  %39 = getelementptr inbounds %struct.k_msgq, ptr %38, i32 0, i32 5, !dbg !1138
  %40 = load ptr, ptr %39, align 4, !dbg !1138
  %41 = load ptr, ptr %12, align 4, !dbg !1139
  %42 = getelementptr inbounds %struct.k_msgq, ptr %41, i32 0, i32 6, !dbg !1140
  %43 = load ptr, ptr %42, align 4, !dbg !1140
  %44 = ptrtoint ptr %40 to i32, !dbg !1141
  %45 = ptrtoint ptr %43 to i32, !dbg !1141
  %46 = sub i32 %44, %45, !dbg !1141
  store i32 %46, ptr %17, align 4, !dbg !1142
  %47 = load i32, ptr %14, align 4, !dbg !1143
  %48 = load ptr, ptr %12, align 4, !dbg !1144
  %49 = getelementptr inbounds %struct.k_msgq, ptr %48, i32 0, i32 2, !dbg !1145
  %50 = load i32, ptr %49, align 4, !dbg !1145
  %51 = mul i32 %47, %50, !dbg !1146
  store i32 %51, ptr %18, align 4, !dbg !1147
  %52 = load ptr, ptr %12, align 4, !dbg !1148
  %53 = getelementptr inbounds %struct.k_msgq, ptr %52, i32 0, i32 6, !dbg !1149
  %54 = load ptr, ptr %53, align 4, !dbg !1149
  store ptr %54, ptr %19, align 4, !dbg !1150
  %55 = load i32, ptr %17, align 4, !dbg !1151
  %56 = load i32, ptr %18, align 4, !dbg !1153
  %57 = icmp ule i32 %55, %56, !dbg !1154
  br i1 %57, label %58, label %65, !dbg !1155

58:                                               ; preds = %37
  %59 = load i32, ptr %17, align 4, !dbg !1156
  %60 = load i32, ptr %18, align 4, !dbg !1158
  %61 = sub i32 %60, %59, !dbg !1158
  store i32 %61, ptr %18, align 4, !dbg !1158
  %62 = load ptr, ptr %12, align 4, !dbg !1159
  %63 = getelementptr inbounds %struct.k_msgq, ptr %62, i32 0, i32 4, !dbg !1160
  %64 = load ptr, ptr %63, align 4, !dbg !1160
  store ptr %64, ptr %19, align 4, !dbg !1161
  br label %65, !dbg !1162

65:                                               ; preds = %58, %37
  %66 = load ptr, ptr %13, align 4, !dbg !1163
  %67 = load ptr, ptr %19, align 4, !dbg !1164
  %68 = load i32, ptr %18, align 4, !dbg !1165
  %69 = getelementptr inbounds i8, ptr %67, i32 %68, !dbg !1166
  %70 = load ptr, ptr %12, align 4, !dbg !1167
  %71 = getelementptr inbounds %struct.k_msgq, ptr %70, i32 0, i32 2, !dbg !1168
  %72 = load i32, ptr %71, align 4, !dbg !1168
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %66, ptr align 1 %69, i32 %72, i1 false), !dbg !1169
  store i32 0, ptr %16, align 4, !dbg !1170
  br label %74, !dbg !1171

73:                                               ; preds = %3
  store i32 -35, ptr %16, align 4, !dbg !1172
  br label %74

74:                                               ; preds = %73, %65
  br label %75, !dbg !1174

75:                                               ; preds = %74
  br label %76, !dbg !1175

76:                                               ; preds = %75
  %77 = load ptr, ptr %12, align 4, !dbg !1177
  %78 = getelementptr inbounds %struct.k_msgq, ptr %77, i32 0, i32 1, !dbg !1178
  %79 = getelementptr inbounds %struct.z_spinlock_key, ptr %15, i32 0, i32 0, !dbg !1179
  %80 = load [1 x i32], ptr %79, align 4, !dbg !1179
  store [1 x i32] %80, ptr %8, align 4
  store ptr %78, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !779, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.declare(metadata ptr %8, metadata !785, metadata !DIExpression()), !dbg !1182
  %81 = load ptr, ptr %9, align 4, !dbg !1183
  %82 = load i32, ptr %8, align 4, !dbg !1184
  store i32 %82, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !789, metadata !DIExpression()), !dbg !1185
  %83 = load i32, ptr %4, align 4, !dbg !1187
  %84 = icmp ne i32 %83, 0, !dbg !1188
  br i1 %84, label %85, label %86, !dbg !1189

85:                                               ; preds = %76
  br label %arch_irq_unlock.exit, !dbg !1190

86:                                               ; preds = %76
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #4, !dbg !1191, !srcloc !802
  br label %arch_irq_unlock.exit, !dbg !1192

arch_irq_unlock.exit:                             ; preds = %85, %86
  %87 = load i32, ptr %16, align 4, !dbg !1193
  ret i32 %87, !dbg !1194
}

; Function Attrs: noinline nounwind optnone
define hidden void @z_impl_k_msgq_purge(ptr noundef %0) #0 !dbg !1195 {
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
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1198, metadata !DIExpression()), !dbg !1199
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1200, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1202, metadata !DIExpression()), !dbg !1203
  %13 = load ptr, ptr %9, align 4, !dbg !1204
  %14 = getelementptr inbounds %struct.k_msgq, ptr %13, i32 0, i32 1, !dbg !1205
  store ptr %14, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !626, metadata !DIExpression()), !dbg !1206
  %15 = load ptr, ptr %8, align 4, !dbg !1208
  call void @llvm.dbg.declare(metadata ptr %7, metadata !634, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.declare(metadata ptr %4, metadata !636, metadata !DIExpression()), !dbg !1210
  %16 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #4, !dbg !1212, !srcloc !644
  store i32 %16, ptr %4, align 4, !dbg !1212
  %17 = load i32, ptr %4, align 4, !dbg !1213
  store i32 %17, ptr %7, align 4, !dbg !1214
  %18 = load ptr, ptr %8, align 4, !dbg !1215
  store ptr %18, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !648, metadata !DIExpression()), !dbg !1216
  %19 = load ptr, ptr %3, align 4, !dbg !1218
  %20 = load ptr, ptr %8, align 4, !dbg !1219
  store ptr %20, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !656, metadata !DIExpression()), !dbg !1220
  %21 = load ptr, ptr %2, align 4, !dbg !1222
  %22 = load i32, ptr %7, align 4, !dbg !1223
  %23 = getelementptr inbounds %struct.z_spinlock_key, ptr %12, i32 0, i32 0, !dbg !1224
  store i32 %22, ptr %23, align 4, !dbg !1224
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %10, ptr align 4 %12, i32 4, i1 false), !dbg !1224
  br label %24, !dbg !1225

24:                                               ; preds = %1
  br label %25, !dbg !1226

25:                                               ; preds = %24
  br label %26, !dbg !1228

26:                                               ; preds = %31, %25
  %27 = load ptr, ptr %9, align 4, !dbg !1229
  %28 = getelementptr inbounds %struct.k_msgq, ptr %27, i32 0, i32 0, !dbg !1230
  %29 = call ptr @z_unpend_first_thread(ptr noundef %28), !dbg !1231
  store ptr %29, ptr %11, align 4, !dbg !1232
  %30 = icmp ne ptr %29, null, !dbg !1233
  br i1 %30, label %31, label %38, !dbg !1228

31:                                               ; preds = %26
  %32 = load ptr, ptr %11, align 4, !dbg !1234
  store ptr %32, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !694, metadata !DIExpression()), !dbg !1236
  store i32 -35, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !701, metadata !DIExpression()), !dbg !1238
  %33 = load i32, ptr %6, align 4, !dbg !1239
  %34 = load ptr, ptr %5, align 4, !dbg !1240
  %35 = getelementptr inbounds %struct.k_thread, ptr %34, i32 0, i32 6, !dbg !1241
  %36 = getelementptr inbounds %struct._thread_arch, ptr %35, i32 0, i32 1, !dbg !1242
  store i32 %33, ptr %36, align 4, !dbg !1243
  %37 = load ptr, ptr %11, align 4, !dbg !1244
  call void @z_ready_thread(ptr noundef %37), !dbg !1245
  br label %26, !dbg !1228, !llvm.loop !1246

38:                                               ; preds = %26
  %39 = load ptr, ptr %9, align 4, !dbg !1248
  %40 = getelementptr inbounds %struct.k_msgq, ptr %39, i32 0, i32 8, !dbg !1249
  store i32 0, ptr %40, align 4, !dbg !1250
  %41 = load ptr, ptr %9, align 4, !dbg !1251
  %42 = getelementptr inbounds %struct.k_msgq, ptr %41, i32 0, i32 7, !dbg !1252
  %43 = load ptr, ptr %42, align 4, !dbg !1252
  %44 = load ptr, ptr %9, align 4, !dbg !1253
  %45 = getelementptr inbounds %struct.k_msgq, ptr %44, i32 0, i32 6, !dbg !1254
  store ptr %43, ptr %45, align 4, !dbg !1255
  %46 = load ptr, ptr %9, align 4, !dbg !1256
  %47 = getelementptr inbounds %struct.k_msgq, ptr %46, i32 0, i32 1, !dbg !1257
  %48 = getelementptr inbounds %struct.z_spinlock_key, ptr %10, i32 0, i32 0, !dbg !1258
  %49 = load [1 x i32], ptr %48, align 4, !dbg !1258
  call void @z_reschedule(ptr noundef %47, [1 x i32] %49), !dbg !1258
  ret void, !dbg !1259
}

declare i64 @z_timeout_expires(ptr noundef) #3

declare i64 @z_timeout_remaining(ptr noundef) #3

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @sys_sflist_is_empty(ptr noundef %0) #0 !dbg !1260 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1264, metadata !DIExpression()), !dbg !1265
  %3 = load ptr, ptr %2, align 4, !dbg !1266
  %4 = call ptr @sys_sflist_peek_head(ptr noundef %3), !dbg !1267
  %5 = icmp eq ptr %4, null, !dbg !1268
  ret i1 %5, !dbg !1269
}

; Function Attrs: noinline nounwind optnone
define internal ptr @sys_sflist_peek_head(ptr noundef %0) #0 !dbg !1270 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1273, metadata !DIExpression()), !dbg !1274
  %3 = load ptr, ptr %2, align 4, !dbg !1275
  %4 = getelementptr inbounds %struct._sflist, ptr %3, i32 0, i32 0, !dbg !1276
  %5 = load ptr, ptr %4, align 4, !dbg !1276
  ret ptr %5, !dbg !1277
}

; Function Attrs: noinline nounwind optnone
define internal void @sys_dlist_init(ptr noundef %0) #0 !dbg !1278 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1282, metadata !DIExpression()), !dbg !1283
  %3 = load ptr, ptr %2, align 4, !dbg !1284
  %4 = load ptr, ptr %2, align 4, !dbg !1285
  %5 = getelementptr inbounds %struct._dnode, ptr %4, i32 0, i32 0, !dbg !1286
  store ptr %3, ptr %5, align 4, !dbg !1287
  %6 = load ptr, ptr %2, align 4, !dbg !1288
  %7 = load ptr, ptr %2, align 4, !dbg !1289
  %8 = getelementptr inbounds %struct._dnode, ptr %7, i32 0, i32 1, !dbg !1290
  store ptr %6, ptr %8, align 4, !dbg !1291
  ret void, !dbg !1292
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #1

declare ptr @z_thread_aligned_alloc(i32 noundef, i32 noundef) #3

; Function Attrs: noinline nounwind optnone
define internal ptr @sys_dlist_peek_head(ptr noundef %0) #0 !dbg !1293 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1296, metadata !DIExpression()), !dbg !1297
  %3 = load ptr, ptr %2, align 4, !dbg !1298
  %4 = call zeroext i1 @sys_dlist_is_empty(ptr noundef %3), !dbg !1299
  br i1 %4, label %5, label %6, !dbg !1299

5:                                                ; preds = %1
  br label %10, !dbg !1299

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 4, !dbg !1300
  %8 = getelementptr inbounds %struct._dnode, ptr %7, i32 0, i32 0, !dbg !1301
  %9 = load ptr, ptr %8, align 4, !dbg !1301
  br label %10, !dbg !1299

10:                                               ; preds = %6, %5
  %11 = phi ptr [ null, %5 ], [ %9, %6 ], !dbg !1299
  ret ptr %11, !dbg !1302
}

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @sys_dlist_is_empty(ptr noundef %0) #0 !dbg !1303 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1306, metadata !DIExpression()), !dbg !1307
  %3 = load ptr, ptr %2, align 4, !dbg !1308
  %4 = getelementptr inbounds %struct._dnode, ptr %3, i32 0, i32 0, !dbg !1309
  %5 = load ptr, ptr %4, align 4, !dbg !1309
  %6 = load ptr, ptr %2, align 4, !dbg !1310
  %7 = icmp eq ptr %5, %6, !dbg !1311
  ret i1 %7, !dbg !1312
}

attributes #0 = { noinline nounwind optnone "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!209, !210, !211, !212, !213, !214, !215, !216}
!llvm.ident = !{!217}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !86, splitDebugInlining: false, nameTableKind: None)
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
!25 = !DIEnumerator(name: "K_OBJ_DRIVER_PWM", value: 18)
!26 = !DIEnumerator(name: "K_OBJ_DRIVER_RESET", value: 19)
!27 = !DIEnumerator(name: "K_OBJ_DRIVER_UART", value: 20)
!28 = !DIEnumerator(name: "K_OBJ_DRIVER_CRYPTO", value: 21)
!29 = !DIEnumerator(name: "K_OBJ_DRIVER_ADC", value: 22)
!30 = !DIEnumerator(name: "K_OBJ_DRIVER_AUXDISPLAY", value: 23)
!31 = !DIEnumerator(name: "K_OBJ_DRIVER_BBRAM", value: 24)
!32 = !DIEnumerator(name: "K_OBJ_DRIVER_CAN", value: 25)
!33 = !DIEnumerator(name: "K_OBJ_DRIVER_CHARGER", value: 26)
!34 = !DIEnumerator(name: "K_OBJ_DRIVER_COREDUMP", value: 27)
!35 = !DIEnumerator(name: "K_OBJ_DRIVER_COUNTER", value: 28)
!36 = !DIEnumerator(name: "K_OBJ_DRIVER_DAC", value: 29)
!37 = !DIEnumerator(name: "K_OBJ_DRIVER_DAI", value: 30)
!38 = !DIEnumerator(name: "K_OBJ_DRIVER_DMA", value: 31)
!39 = !DIEnumerator(name: "K_OBJ_DRIVER_EDAC", value: 32)
!40 = !DIEnumerator(name: "K_OBJ_DRIVER_EEPROM", value: 33)
!41 = !DIEnumerator(name: "K_OBJ_DRIVER_FUEL_GAUGE_EMUL", value: 34)
!42 = !DIEnumerator(name: "K_OBJ_DRIVER_EMUL_SENSOR_BACKEND_API", value: 35)
!43 = !DIEnumerator(name: "K_OBJ_DRIVER_ENTROPY", value: 36)
!44 = !DIEnumerator(name: "K_OBJ_DRIVER_ESPI", value: 37)
!45 = !DIEnumerator(name: "K_OBJ_DRIVER_ESPI_SAF", value: 38)
!46 = !DIEnumerator(name: "K_OBJ_DRIVER_FLASH", value: 39)
!47 = !DIEnumerator(name: "K_OBJ_DRIVER_FPGA", value: 40)
!48 = !DIEnumerator(name: "K_OBJ_DRIVER_FUEL_GAUGE", value: 41)
!49 = !DIEnumerator(name: "K_OBJ_DRIVER_HWSPINLOCK", value: 42)
!50 = !DIEnumerator(name: "K_OBJ_DRIVER_I2C", value: 43)
!51 = !DIEnumerator(name: "K_OBJ_DRIVER_I2S", value: 44)
!52 = !DIEnumerator(name: "K_OBJ_DRIVER_I3C", value: 45)
!53 = !DIEnumerator(name: "K_OBJ_DRIVER_IPM", value: 46)
!54 = !DIEnumerator(name: "K_OBJ_DRIVER_KSCAN", value: 47)
!55 = !DIEnumerator(name: "K_OBJ_DRIVER_LED", value: 48)
!56 = !DIEnumerator(name: "K_OBJ_DRIVER_MBOX", value: 49)
!57 = !DIEnumerator(name: "K_OBJ_DRIVER_MDIO", value: 50)
!58 = !DIEnumerator(name: "K_OBJ_DRIVER_MIPI_DSI", value: 51)
!59 = !DIEnumerator(name: "K_OBJ_DRIVER_PECI", value: 52)
!60 = !DIEnumerator(name: "K_OBJ_DRIVER_PS2", value: 53)
!61 = !DIEnumerator(name: "K_OBJ_DRIVER_PTP_CLOCK", value: 54)
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
!215 = !{i32 8, !"PIC Level", i32 2}
!216 = !{i32 7, !"PIE Level", i32 2}
!217 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
!218 = distinct !DISubprogram(name: "z_impl_k_object_access_grant", scope: !4, file: !4, line: 223, type: !219, scopeLine: 225, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !203)
!219 = !DISubroutineType(types: !220)
!220 = !{null, !221, !105}
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 32)
!222 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!223 = !DILocalVariable(name: "object", arg: 1, scope: !218, file: !4, line: 223, type: !221)
!224 = !DILocation(line: 223, column: 61, scope: !218)
!225 = !DILocalVariable(name: "thread", arg: 2, scope: !218, file: !4, line: 224, type: !105)
!226 = !DILocation(line: 224, column: 24, scope: !218)
!227 = !DILocation(line: 226, column: 9, scope: !218)
!228 = !DILocation(line: 227, column: 9, scope: !218)
!229 = !DILocation(line: 228, column: 1, scope: !218)
!230 = distinct !DISubprogram(name: "z_impl_k_object_release", scope: !4, file: !4, line: 243, type: !231, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !203)
!231 = !DISubroutineType(types: !232)
!232 = !{null, !221}
!233 = !DILocalVariable(name: "object", arg: 1, scope: !230, file: !4, line: 243, type: !221)
!234 = !DILocation(line: 243, column: 56, scope: !230)
!235 = !DILocation(line: 245, column: 9, scope: !230)
!236 = !DILocation(line: 246, column: 1, scope: !230)
!237 = distinct !DISubprogram(name: "z_impl_k_object_alloc", scope: !4, file: !4, line: 359, type: !238, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !203)
!238 = !DISubroutineType(types: !239)
!239 = !{!87, !3}
!240 = !DILocalVariable(name: "otype", arg: 1, scope: !237, file: !4, line: 359, type: !3)
!241 = !DILocation(line: 359, column: 58, scope: !237)
!242 = !DILocation(line: 361, column: 9, scope: !237)
!243 = !DILocation(line: 363, column: 2, scope: !237)
!244 = distinct !DISubprogram(name: "z_impl_k_object_alloc_size", scope: !4, file: !4, line: 366, type: !245, scopeLine: 368, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !203)
!245 = !DISubroutineType(types: !246)
!246 = !{!87, !3, !197}
!247 = !DILocalVariable(name: "otype", arg: 1, scope: !244, file: !4, line: 366, type: !3)
!248 = !DILocation(line: 366, column: 63, scope: !244)
!249 = !DILocalVariable(name: "size", arg: 2, scope: !244, file: !4, line: 367, type: !197)
!250 = !DILocation(line: 367, column: 13, scope: !244)
!251 = !DILocation(line: 369, column: 9, scope: !244)
!252 = !DILocation(line: 370, column: 9, scope: !244)
!253 = !DILocation(line: 372, column: 2, scope: !244)
!254 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_expires_ticks", scope: !186, file: !186, line: 656, type: !255, scopeLine: 658, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !203)
!255 = !DISubroutineType(types: !256)
!256 = !{!257, !259}
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_ticks_t", file: !258, line: 46, baseType: !165)
!258 = !DIFile(filename: "include/zephyr/sys_clock.h", directory: "/home/sri/zephyrproject/zephyr")
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 32)
!260 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !106)
!261 = !DILocalVariable(name: "t", arg: 1, scope: !254, file: !186, line: 657, type: !259)
!262 = !DILocation(line: 657, column: 30, scope: !254)
!263 = !DILocation(line: 659, column: 28, scope: !254)
!264 = !DILocation(line: 659, column: 31, scope: !254)
!265 = !DILocation(line: 659, column: 36, scope: !254)
!266 = !DILocation(line: 659, column: 9, scope: !254)
!267 = !DILocation(line: 659, column: 2, scope: !254)
!268 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_remaining_ticks", scope: !186, file: !186, line: 671, type: !255, scopeLine: 673, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !203)
!269 = !DILocalVariable(name: "t", arg: 1, scope: !268, file: !186, line: 672, type: !259)
!270 = !DILocation(line: 672, column: 30, scope: !268)
!271 = !DILocation(line: 674, column: 30, scope: !268)
!272 = !DILocation(line: 674, column: 33, scope: !268)
!273 = !DILocation(line: 674, column: 38, scope: !268)
!274 = !DILocation(line: 674, column: 9, scope: !268)
!275 = !DILocation(line: 674, column: 2, scope: !268)
!276 = distinct !DISubprogram(name: "z_impl_k_timer_expires_ticks", scope: !186, file: !186, line: 1634, type: !277, scopeLine: 1636, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !203)
!277 = !DISubroutineType(types: !278)
!278 = !{!257, !279}
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 32)
!280 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !281)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_timer", file: !186, line: 1439, size: 448, elements: !282)
!282 = !{!283, !284, !285, !290, !291, !296, !297}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !281, file: !186, line: 1445, baseType: !155, size: 192)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !281, file: !186, line: 1448, baseType: !127, size: 64, offset: 192)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_fn", scope: !281, file: !186, line: 1451, baseType: !286, size: 32, offset: 256)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 32)
!287 = !DISubroutineType(types: !288)
!288 = !{null, !289}
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 32)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "stop_fn", scope: !281, file: !186, line: 1454, baseType: !286, size: 32, offset: 288)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !281, file: !186, line: 1457, baseType: !292, size: 64, offset: 320)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_timeout_t", file: !258, line: 67, baseType: !293)
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !258, line: 65, size: 64, elements: !294)
!294 = !{!295}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "ticks", scope: !293, file: !258, line: 66, baseType: !257, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !281, file: !186, line: 1460, baseType: !151, size: 32, offset: 384)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !281, file: !186, line: 1463, baseType: !87, size: 32, offset: 416)
!298 = !DILocalVariable(name: "timer", arg: 1, scope: !276, file: !186, line: 1635, type: !279)
!299 = !DILocation(line: 1635, column: 34, scope: !276)
!300 = !DILocation(line: 1637, column: 28, scope: !276)
!301 = !DILocation(line: 1637, column: 35, scope: !276)
!302 = !DILocation(line: 1637, column: 9, scope: !276)
!303 = !DILocation(line: 1637, column: 2, scope: !276)
!304 = distinct !DISubprogram(name: "z_impl_k_timer_remaining_ticks", scope: !186, file: !186, line: 1649, type: !277, scopeLine: 1651, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !203)
!305 = !DILocalVariable(name: "timer", arg: 1, scope: !304, file: !186, line: 1650, type: !279)
!306 = !DILocation(line: 1650, column: 34, scope: !304)
!307 = !DILocation(line: 1652, column: 30, scope: !304)
!308 = !DILocation(line: 1652, column: 37, scope: !304)
!309 = !DILocation(line: 1652, column: 9, scope: !304)
!310 = !DILocation(line: 1652, column: 2, scope: !304)
!311 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_set", scope: !186, file: !186, line: 1689, type: !312, scopeLine: 1691, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !203)
!312 = !DISubroutineType(types: !313)
!313 = !{null, !289, !87}
!314 = !DILocalVariable(name: "timer", arg: 1, scope: !311, file: !186, line: 1689, type: !289)
!315 = !DILocation(line: 1689, column: 65, scope: !311)
!316 = !DILocalVariable(name: "user_data", arg: 2, scope: !311, file: !186, line: 1690, type: !87)
!317 = !DILocation(line: 1690, column: 19, scope: !311)
!318 = !DILocation(line: 1692, column: 21, scope: !311)
!319 = !DILocation(line: 1692, column: 2, scope: !311)
!320 = !DILocation(line: 1692, column: 9, scope: !311)
!321 = !DILocation(line: 1692, column: 19, scope: !311)
!322 = !DILocation(line: 1693, column: 1, scope: !311)
!323 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_get", scope: !186, file: !186, line: 1704, type: !324, scopeLine: 1705, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !203)
!324 = !DISubroutineType(types: !325)
!325 = !{!87, !279}
!326 = !DILocalVariable(name: "timer", arg: 1, scope: !323, file: !186, line: 1704, type: !279)
!327 = !DILocation(line: 1704, column: 72, scope: !323)
!328 = !DILocation(line: 1706, column: 9, scope: !323)
!329 = !DILocation(line: 1706, column: 16, scope: !323)
!330 = !DILocation(line: 1706, column: 2, scope: !323)
!331 = distinct !DISubprogram(name: "z_impl_k_queue_is_empty", scope: !186, file: !186, line: 2071, type: !332, scopeLine: 2072, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !203)
!332 = !DISubroutineType(types: !333)
!333 = !{!88, !334}
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 32)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_queue", file: !186, line: 1830, size: 128, elements: !336)
!336 = !{!337, !350, !351}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "data_q", scope: !335, file: !186, line: 1831, baseType: !338, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sflist_t", file: !339, line: 60, baseType: !340)
!339 = !DIFile(filename: "include/zephyr/sys/sflist.h", directory: "/home/sri/zephyrproject/zephyr")
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sflist", file: !339, line: 53, size: 64, elements: !341)
!341 = !{!342, !349}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !340, file: !339, line: 54, baseType: !343, size: 32)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 32)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sfnode_t", file: !339, line: 50, baseType: !345)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sfnode", file: !339, line: 44, size: 32, elements: !346)
!346 = !{!347}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "next_and_flags", scope: !345, file: !339, line: 45, baseType: !348, size: 32)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "unative_t", file: !339, line: 40, baseType: !151)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !340, file: !339, line: 55, baseType: !343, size: 32, offset: 32)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !335, file: !186, line: 1832, baseType: !201, offset: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !335, file: !186, line: 1833, baseType: !127, size: 64, offset: 64)
!352 = !DILocalVariable(name: "queue", arg: 1, scope: !331, file: !186, line: 2071, type: !334)
!353 = !DILocation(line: 2071, column: 59, scope: !331)
!354 = !DILocation(line: 2073, column: 35, scope: !331)
!355 = !DILocation(line: 2073, column: 42, scope: !331)
!356 = !DILocation(line: 2073, column: 14, scope: !331)
!357 = !DILocation(line: 2073, column: 9, scope: !331)
!358 = !DILocation(line: 2073, column: 2, scope: !331)
!359 = distinct !DISubprogram(name: "z_impl_k_sem_count_get", scope: !186, file: !186, line: 3209, type: !360, scopeLine: 3210, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !203)
!360 = !DISubroutineType(types: !361)
!361 = !{!152, !362}
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 32)
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sem", file: !186, line: 3092, size: 128, elements: !364)
!364 = !{!365, !366, !367}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !363, file: !186, line: 3093, baseType: !127, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !363, file: !186, line: 3094, baseType: !152, size: 32, offset: 64)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !363, file: !186, line: 3095, baseType: !152, size: 32, offset: 96)
!368 = !DILocalVariable(name: "sem", arg: 1, scope: !359, file: !186, line: 3209, type: !362)
!369 = !DILocation(line: 3209, column: 65, scope: !359)
!370 = !DILocation(line: 3211, column: 9, scope: !359)
!371 = !DILocation(line: 3211, column: 14, scope: !359)
!372 = !DILocation(line: 3211, column: 2, scope: !359)
!373 = distinct !DISubprogram(name: "z_impl_k_msgq_num_free_get", scope: !186, file: !186, line: 4649, type: !374, scopeLine: 4650, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !203)
!374 = !DISubroutineType(types: !375)
!375 = !{!151, !376}
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 32)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_msgq", file: !186, line: 4390, size: 320, elements: !378)
!378 = !{!379, !380, !381, !382, !383, !386, !387, !388, !389, !390}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !377, file: !186, line: 4392, baseType: !127, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !377, file: !186, line: 4394, baseType: !201, offset: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "msg_size", scope: !377, file: !186, line: 4396, baseType: !197, size: 32, offset: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !377, file: !186, line: 4398, baseType: !151, size: 32, offset: 96)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_start", scope: !377, file: !186, line: 4400, baseType: !384, size: 32, offset: 128)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 32)
!385 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_end", scope: !377, file: !186, line: 4402, baseType: !384, size: 32, offset: 160)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "read_ptr", scope: !377, file: !186, line: 4404, baseType: !384, size: 32, offset: 192)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "write_ptr", scope: !377, file: !186, line: 4406, baseType: !384, size: 32, offset: 224)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "used_msgs", scope: !377, file: !186, line: 4408, baseType: !151, size: 32, offset: 256)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !377, file: !186, line: 4413, baseType: !134, size: 8, offset: 288)
!391 = !DILocalVariable(name: "msgq", arg: 1, scope: !373, file: !186, line: 4649, type: !376)
!392 = !DILocation(line: 4649, column: 66, scope: !373)
!393 = !DILocation(line: 4651, column: 9, scope: !373)
!394 = !DILocation(line: 4651, column: 15, scope: !373)
!395 = !DILocation(line: 4651, column: 26, scope: !373)
!396 = !DILocation(line: 4651, column: 32, scope: !373)
!397 = !DILocation(line: 4651, column: 24, scope: !373)
!398 = !DILocation(line: 4651, column: 2, scope: !373)
!399 = distinct !DISubprogram(name: "z_impl_k_msgq_num_used_get", scope: !186, file: !186, line: 4665, type: !374, scopeLine: 4666, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !203)
!400 = !DILocalVariable(name: "msgq", arg: 1, scope: !399, file: !186, line: 4665, type: !376)
!401 = !DILocation(line: 4665, column: 66, scope: !399)
!402 = !DILocation(line: 4667, column: 9, scope: !399)
!403 = !DILocation(line: 4667, column: 15, scope: !399)
!404 = !DILocation(line: 4667, column: 2, scope: !399)
!405 = distinct !DISubprogram(name: "k_msgq_init", scope: !406, file: !406, line: 39, type: !407, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !203)
!406 = !DIFile(filename: "kernel/msg_q.c", directory: "/home/sri/zephyrproject/zephyr")
!407 = !DISubroutineType(types: !408)
!408 = !{null, !376, !384, !409, !151}
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !410, line: 51, baseType: !152)
!410 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/string.h", directory: "")
!411 = !DILocalVariable(name: "msgq", arg: 1, scope: !405, file: !406, line: 39, type: !376)
!412 = !DILocation(line: 39, column: 33, scope: !405)
!413 = !DILocalVariable(name: "buffer", arg: 2, scope: !405, file: !406, line: 39, type: !384)
!414 = !DILocation(line: 39, column: 45, scope: !405)
!415 = !DILocalVariable(name: "msg_size", arg: 3, scope: !405, file: !406, line: 39, type: !409)
!416 = !DILocation(line: 39, column: 60, scope: !405)
!417 = !DILocalVariable(name: "max_msgs", arg: 4, scope: !405, file: !406, line: 40, type: !151)
!418 = !DILocation(line: 40, column: 13, scope: !405)
!419 = !DILocation(line: 42, column: 19, scope: !405)
!420 = !DILocation(line: 42, column: 2, scope: !405)
!421 = !DILocation(line: 42, column: 8, scope: !405)
!422 = !DILocation(line: 42, column: 17, scope: !405)
!423 = !DILocation(line: 43, column: 19, scope: !405)
!424 = !DILocation(line: 43, column: 2, scope: !405)
!425 = !DILocation(line: 43, column: 8, scope: !405)
!426 = !DILocation(line: 43, column: 17, scope: !405)
!427 = !DILocation(line: 44, column: 23, scope: !405)
!428 = !DILocation(line: 44, column: 2, scope: !405)
!429 = !DILocation(line: 44, column: 8, scope: !405)
!430 = !DILocation(line: 44, column: 21, scope: !405)
!431 = !DILocation(line: 45, column: 21, scope: !405)
!432 = !DILocation(line: 45, column: 31, scope: !405)
!433 = !DILocation(line: 45, column: 42, scope: !405)
!434 = !DILocation(line: 45, column: 40, scope: !405)
!435 = !DILocation(line: 45, column: 28, scope: !405)
!436 = !DILocation(line: 45, column: 2, scope: !405)
!437 = !DILocation(line: 45, column: 8, scope: !405)
!438 = !DILocation(line: 45, column: 19, scope: !405)
!439 = !DILocation(line: 46, column: 19, scope: !405)
!440 = !DILocation(line: 46, column: 2, scope: !405)
!441 = !DILocation(line: 46, column: 8, scope: !405)
!442 = !DILocation(line: 46, column: 17, scope: !405)
!443 = !DILocation(line: 47, column: 20, scope: !405)
!444 = !DILocation(line: 47, column: 2, scope: !405)
!445 = !DILocation(line: 47, column: 8, scope: !405)
!446 = !DILocation(line: 47, column: 18, scope: !405)
!447 = !DILocation(line: 48, column: 2, scope: !405)
!448 = !DILocation(line: 48, column: 8, scope: !405)
!449 = !DILocation(line: 48, column: 18, scope: !405)
!450 = !DILocation(line: 49, column: 2, scope: !405)
!451 = !DILocation(line: 49, column: 8, scope: !405)
!452 = !DILocation(line: 49, column: 14, scope: !405)
!453 = !DILocation(line: 50, column: 16, scope: !405)
!454 = !DILocation(line: 50, column: 22, scope: !405)
!455 = !DILocation(line: 50, column: 2, scope: !405)
!456 = !DILocation(line: 51, column: 2, scope: !405)
!457 = !DILocation(line: 51, column: 8, scope: !405)
!458 = !DILocation(line: 51, column: 15, scope: !405)
!459 = !DILocation(line: 60, column: 2, scope: !405)
!460 = !DILocation(line: 60, column: 7, scope: !461)
!461 = distinct !DILexicalBlock(scope: !405, file: !406, line: 60, column: 5)
!462 = !DILocation(line: 62, column: 16, scope: !405)
!463 = !DILocation(line: 62, column: 2, scope: !405)
!464 = !DILocation(line: 63, column: 1, scope: !405)
!465 = distinct !DISubprogram(name: "z_waitq_init", scope: !466, file: !466, line: 47, type: !467, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !203)
!466 = !DIFile(filename: "kernel/include/wait_q.h", directory: "/home/sri/zephyrproject/zephyr")
!467 = !DISubroutineType(types: !468)
!468 = !{null, !126}
!469 = !DILocalVariable(name: "w", arg: 1, scope: !465, file: !466, line: 47, type: !126)
!470 = !DILocation(line: 47, column: 44, scope: !465)
!471 = !DILocation(line: 49, column: 18, scope: !465)
!472 = !DILocation(line: 49, column: 21, scope: !465)
!473 = !DILocation(line: 49, column: 2, scope: !465)
!474 = !DILocation(line: 50, column: 1, scope: !465)
!475 = distinct !DISubprogram(name: "z_object_init", scope: !4, file: !4, line: 215, type: !231, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !203)
!476 = !DILocalVariable(name: "obj", arg: 1, scope: !475, file: !4, line: 215, type: !221)
!477 = !DILocation(line: 215, column: 46, scope: !475)
!478 = !DILocation(line: 217, column: 9, scope: !475)
!479 = !DILocation(line: 218, column: 1, scope: !475)
!480 = distinct !DISubprogram(name: "z_impl_k_msgq_alloc_init", scope: !406, file: !406, line: 65, type: !481, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !203)
!481 = !DISubroutineType(types: !482)
!482 = !{!88, !376, !409, !151}
!483 = !DILocalVariable(name: "msgq", arg: 1, scope: !480, file: !406, line: 65, type: !376)
!484 = !DILocation(line: 65, column: 45, scope: !480)
!485 = !DILocalVariable(name: "msg_size", arg: 2, scope: !480, file: !406, line: 65, type: !409)
!486 = !DILocation(line: 65, column: 58, scope: !480)
!487 = !DILocalVariable(name: "max_msgs", arg: 3, scope: !480, file: !406, line: 66, type: !151)
!488 = !DILocation(line: 66, column: 17, scope: !480)
!489 = !DILocalVariable(name: "buffer", scope: !480, file: !406, line: 68, type: !87)
!490 = !DILocation(line: 68, column: 8, scope: !480)
!491 = !DILocalVariable(name: "ret", scope: !480, file: !406, line: 69, type: !88)
!492 = !DILocation(line: 69, column: 6, scope: !480)
!493 = !DILocalVariable(name: "total_size", scope: !480, file: !406, line: 70, type: !409)
!494 = !DILocation(line: 70, column: 9, scope: !480)
!495 = !DILocation(line: 72, column: 2, scope: !480)
!496 = !DILocation(line: 72, column: 7, scope: !497)
!497 = distinct !DILexicalBlock(scope: !480, file: !406, line: 72, column: 5)
!498 = !DILocation(line: 74, column: 24, scope: !499)
!499 = distinct !DILexicalBlock(scope: !480, file: !406, line: 74, column: 6)
!500 = !DILocation(line: 74, column: 34, scope: !499)
!501 = !DILocation(line: 74, column: 6, scope: !499)
!502 = !DILocation(line: 74, column: 6, scope: !480)
!503 = !DILocation(line: 75, column: 7, scope: !504)
!504 = distinct !DILexicalBlock(scope: !499, file: !406, line: 74, column: 58)
!505 = !DILocation(line: 76, column: 2, scope: !504)
!506 = !DILocation(line: 77, column: 28, scope: !507)
!507 = distinct !DILexicalBlock(scope: !499, file: !406, line: 76, column: 9)
!508 = !DILocation(line: 77, column: 12, scope: !507)
!509 = !DILocation(line: 77, column: 10, scope: !507)
!510 = !DILocation(line: 78, column: 7, scope: !511)
!511 = distinct !DILexicalBlock(scope: !507, file: !406, line: 78, column: 7)
!512 = !DILocation(line: 78, column: 14, scope: !511)
!513 = !DILocation(line: 78, column: 7, scope: !507)
!514 = !DILocation(line: 79, column: 16, scope: !515)
!515 = distinct !DILexicalBlock(scope: !511, file: !406, line: 78, column: 20)
!516 = !DILocation(line: 79, column: 22, scope: !515)
!517 = !DILocation(line: 79, column: 30, scope: !515)
!518 = !DILocation(line: 79, column: 40, scope: !515)
!519 = !DILocation(line: 79, column: 4, scope: !515)
!520 = !DILocation(line: 80, column: 4, scope: !515)
!521 = !DILocation(line: 80, column: 10, scope: !515)
!522 = !DILocation(line: 80, column: 16, scope: !515)
!523 = !DILocation(line: 81, column: 8, scope: !515)
!524 = !DILocation(line: 82, column: 3, scope: !515)
!525 = !DILocation(line: 83, column: 8, scope: !526)
!526 = distinct !DILexicalBlock(scope: !511, file: !406, line: 82, column: 10)
!527 = !DILocation(line: 87, column: 2, scope: !480)
!528 = !DILocation(line: 87, column: 7, scope: !529)
!529 = distinct !DILexicalBlock(scope: !480, file: !406, line: 87, column: 5)
!530 = !DILocation(line: 89, column: 9, scope: !480)
!531 = !DILocation(line: 89, column: 2, scope: !480)
!532 = distinct !DISubprogram(name: "size_mul_overflow", scope: !533, file: !533, line: 105, type: !534, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !203)
!533 = !DIFile(filename: "include/zephyr/sys/math_extras_impl.h", directory: "/home/sri/zephyrproject/zephyr")
!534 = !DISubroutineType(types: !535)
!535 = !{!536, !409, !409, !537}
!536 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 32)
!538 = !DILocalVariable(name: "a", arg: 1, scope: !532, file: !533, line: 105, type: !409)
!539 = !DILocation(line: 105, column: 46, scope: !532)
!540 = !DILocalVariable(name: "b", arg: 2, scope: !532, file: !533, line: 105, type: !409)
!541 = !DILocation(line: 105, column: 56, scope: !532)
!542 = !DILocalVariable(name: "result", arg: 3, scope: !532, file: !533, line: 105, type: !537)
!543 = !DILocation(line: 105, column: 67, scope: !532)
!544 = !DILocation(line: 107, column: 32, scope: !532)
!545 = !DILocation(line: 107, column: 35, scope: !532)
!546 = !DILocation(line: 107, column: 38, scope: !532)
!547 = !DILocation(line: 107, column: 9, scope: !532)
!548 = !DILocation(line: 107, column: 2, scope: !532)
!549 = distinct !DISubprogram(name: "z_thread_malloc", scope: !550, file: !550, line: 105, type: !551, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !203)
!550 = !DIFile(filename: "kernel/include/kernel_internal.h", directory: "/home/sri/zephyrproject/zephyr")
!551 = !DISubroutineType(types: !552)
!552 = !{!87, !409}
!553 = !DILocalVariable(name: "size", arg: 1, scope: !549, file: !550, line: 105, type: !409)
!554 = !DILocation(line: 105, column: 44, scope: !549)
!555 = !DILocation(line: 107, column: 35, scope: !549)
!556 = !DILocation(line: 107, column: 9, scope: !549)
!557 = !DILocation(line: 107, column: 2, scope: !549)
!558 = distinct !DISubprogram(name: "k_msgq_cleanup", scope: !406, file: !406, line: 103, type: !559, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !203)
!559 = !DISubroutineType(types: !560)
!560 = !{!88, !376}
!561 = !DILocalVariable(name: "msgq", arg: 1, scope: !558, file: !406, line: 103, type: !376)
!562 = !DILocation(line: 103, column: 35, scope: !558)
!563 = !DILocation(line: 105, column: 2, scope: !558)
!564 = !DILocation(line: 105, column: 7, scope: !565)
!565 = distinct !DILexicalBlock(scope: !558, file: !406, line: 105, column: 5)
!566 = !DILocation(line: 107, column: 20, scope: !567)
!567 = distinct !DILexicalBlock(scope: !558, file: !406, line: 107, column: 6)
!568 = !DILocation(line: 107, column: 26, scope: !567)
!569 = !DILocation(line: 107, column: 6, scope: !567)
!570 = !DILocation(line: 107, column: 34, scope: !567)
!571 = !DILocation(line: 107, column: 6, scope: !558)
!572 = !DILocation(line: 108, column: 3, scope: !573)
!573 = distinct !DILexicalBlock(scope: !567, file: !406, line: 107, column: 40)
!574 = !DILocation(line: 108, column: 8, scope: !575)
!575 = distinct !DILexicalBlock(scope: !573, file: !406, line: 108, column: 6)
!576 = !DILocation(line: 110, column: 3, scope: !573)
!577 = !DILocation(line: 113, column: 7, scope: !578)
!578 = distinct !DILexicalBlock(scope: !558, file: !406, line: 113, column: 6)
!579 = !DILocation(line: 113, column: 13, scope: !578)
!580 = !DILocation(line: 113, column: 19, scope: !578)
!581 = !DILocation(line: 113, column: 35, scope: !578)
!582 = !DILocation(line: 113, column: 6, scope: !558)
!583 = !DILocation(line: 114, column: 10, scope: !584)
!584 = distinct !DILexicalBlock(scope: !578, file: !406, line: 113, column: 42)
!585 = !DILocation(line: 114, column: 16, scope: !584)
!586 = !DILocation(line: 114, column: 3, scope: !584)
!587 = !DILocation(line: 115, column: 3, scope: !584)
!588 = !DILocation(line: 115, column: 9, scope: !584)
!589 = !DILocation(line: 115, column: 15, scope: !584)
!590 = !DILocation(line: 116, column: 2, scope: !584)
!591 = !DILocation(line: 118, column: 2, scope: !558)
!592 = !DILocation(line: 118, column: 7, scope: !593)
!593 = distinct !DILexicalBlock(scope: !558, file: !406, line: 118, column: 5)
!594 = !DILocation(line: 120, column: 2, scope: !558)
!595 = !DILocation(line: 121, column: 1, scope: !558)
!596 = distinct !DISubprogram(name: "z_waitq_head", scope: !466, file: !466, line: 52, type: !597, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !203)
!597 = !DISubroutineType(types: !598)
!598 = !{!105, !126}
!599 = !DILocalVariable(name: "w", arg: 1, scope: !596, file: !466, line: 52, type: !126)
!600 = !DILocation(line: 52, column: 56, scope: !596)
!601 = !DILocation(line: 54, column: 49, scope: !596)
!602 = !DILocation(line: 54, column: 52, scope: !596)
!603 = !DILocation(line: 54, column: 28, scope: !596)
!604 = !DILocation(line: 54, column: 2, scope: !596)
!605 = distinct !DISubprogram(name: "z_impl_k_msgq_put", scope: !406, file: !406, line: 124, type: !606, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !203)
!606 = !DISubroutineType(types: !607)
!607 = !{!88, !376, !221, !292}
!608 = !DILocalVariable(name: "msgq", arg: 1, scope: !605, file: !406, line: 124, type: !376)
!609 = !DILocation(line: 124, column: 38, scope: !605)
!610 = !DILocalVariable(name: "data", arg: 2, scope: !605, file: !406, line: 124, type: !221)
!611 = !DILocation(line: 124, column: 56, scope: !605)
!612 = !DILocalVariable(name: "timeout", arg: 3, scope: !605, file: !406, line: 124, type: !292)
!613 = !DILocation(line: 124, column: 74, scope: !605)
!614 = !DILocalVariable(name: "pending_thread", scope: !605, file: !406, line: 128, type: !105)
!615 = !DILocation(line: 128, column: 19, scope: !605)
!616 = !DILocalVariable(name: "key", scope: !605, file: !406, line: 129, type: !617)
!617 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_spinlock_key_t", file: !202, line: 108, baseType: !618)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "z_spinlock_key", file: !202, line: 34, size: 32, elements: !619)
!619 = !{!620}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !618, file: !202, line: 35, baseType: !88, size: 32)
!621 = !DILocation(line: 129, column: 19, scope: !605)
!622 = !DILocalVariable(name: "result", scope: !605, file: !406, line: 130, type: !88)
!623 = !DILocation(line: 130, column: 6, scope: !605)
!624 = !DILocation(line: 132, column: 21, scope: !605)
!625 = !DILocation(line: 132, column: 27, scope: !605)
!626 = !DILocalVariable(name: "l", arg: 1, scope: !627, file: !202, line: 160, type: !630)
!627 = distinct !DISubprogram(name: "k_spin_lock", scope: !202, file: !202, line: 160, type: !628, scopeLine: 161, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !203)
!628 = !DISubroutineType(types: !629)
!629 = !{!617, !630}
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 32)
!631 = !DILocation(line: 160, column: 94, scope: !627, inlinedAt: !632)
!632 = distinct !DILocation(line: 132, column: 8, scope: !605)
!633 = !DILocation(line: 162, column: 9, scope: !627, inlinedAt: !632)
!634 = !DILocalVariable(name: "k", scope: !627, file: !202, line: 163, type: !617)
!635 = !DILocation(line: 163, column: 19, scope: !627, inlinedAt: !632)
!636 = !DILocalVariable(name: "key", scope: !637, file: !638, line: 44, type: !152)
!637 = distinct !DISubprogram(name: "arch_irq_lock", scope: !638, file: !638, line: 42, type: !639, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !203)
!638 = !DIFile(filename: "include/zephyr/arch/arm/asm_inline_gcc.h", directory: "/home/sri/zephyrproject/zephyr")
!639 = !DISubroutineType(types: !640)
!640 = !{!152}
!641 = !DILocation(line: 44, column: 15, scope: !637, inlinedAt: !642)
!642 = distinct !DILocation(line: 169, column: 10, scope: !627, inlinedAt: !632)
!643 = !DILocation(line: 48, column: 2, scope: !637, inlinedAt: !642)
!644 = !{i64 66945}
!645 = !DILocation(line: 80, column: 9, scope: !637, inlinedAt: !642)
!646 = !DILocation(line: 169, column: 8, scope: !627, inlinedAt: !632)
!647 = !DILocation(line: 171, column: 26, scope: !627, inlinedAt: !632)
!648 = !DILocalVariable(name: "l", arg: 1, scope: !649, file: !202, line: 110, type: !630)
!649 = distinct !DISubprogram(name: "z_spinlock_validate_pre", scope: !202, file: !202, line: 110, type: !650, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !203)
!650 = !DISubroutineType(types: !651)
!651 = !{null, !630}
!652 = !DILocation(line: 110, column: 94, scope: !649, inlinedAt: !653)
!653 = distinct !DILocation(line: 171, column: 2, scope: !627, inlinedAt: !632)
!654 = !DILocation(line: 112, column: 9, scope: !649, inlinedAt: !653)
!655 = !DILocation(line: 177, column: 27, scope: !627, inlinedAt: !632)
!656 = !DILocalVariable(name: "l", arg: 1, scope: !657, file: !202, line: 121, type: !630)
!657 = distinct !DISubprogram(name: "z_spinlock_validate_post", scope: !202, file: !202, line: 121, type: !650, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !203)
!658 = !DILocation(line: 121, column: 95, scope: !657, inlinedAt: !659)
!659 = distinct !DILocation(line: 177, column: 2, scope: !627, inlinedAt: !632)
!660 = !DILocation(line: 123, column: 9, scope: !657, inlinedAt: !659)
!661 = !DILocation(line: 179, column: 2, scope: !627, inlinedAt: !632)
!662 = !DILocation(line: 132, column: 8, scope: !605)
!663 = !DILocation(line: 134, column: 2, scope: !605)
!664 = !DILocation(line: 134, column: 7, scope: !665)
!665 = distinct !DILexicalBlock(scope: !605, file: !406, line: 134, column: 5)
!666 = !DILocation(line: 136, column: 6, scope: !667)
!667 = distinct !DILexicalBlock(scope: !605, file: !406, line: 136, column: 6)
!668 = !DILocation(line: 136, column: 12, scope: !667)
!669 = !DILocation(line: 136, column: 24, scope: !667)
!670 = !DILocation(line: 136, column: 30, scope: !667)
!671 = !DILocation(line: 136, column: 22, scope: !667)
!672 = !DILocation(line: 136, column: 6, scope: !605)
!673 = !DILocation(line: 138, column: 43, scope: !674)
!674 = distinct !DILexicalBlock(scope: !667, file: !406, line: 136, column: 40)
!675 = !DILocation(line: 138, column: 49, scope: !674)
!676 = !DILocation(line: 138, column: 20, scope: !674)
!677 = !DILocation(line: 138, column: 18, scope: !674)
!678 = !DILocation(line: 139, column: 7, scope: !679)
!679 = distinct !DILexicalBlock(scope: !674, file: !406, line: 139, column: 7)
!680 = !DILocation(line: 139, column: 22, scope: !679)
!681 = !DILocation(line: 139, column: 7, scope: !674)
!682 = !DILocation(line: 140, column: 4, scope: !683)
!683 = distinct !DILexicalBlock(scope: !679, file: !406, line: 139, column: 28)
!684 = !DILocation(line: 140, column: 9, scope: !685)
!685 = distinct !DILexicalBlock(scope: !683, file: !406, line: 140, column: 7)
!686 = !DILocation(line: 143, column: 17, scope: !683)
!687 = !DILocation(line: 143, column: 33, scope: !683)
!688 = !DILocation(line: 143, column: 38, scope: !683)
!689 = !DILocation(line: 143, column: 49, scope: !683)
!690 = !DILocation(line: 144, column: 11, scope: !683)
!691 = !DILocation(line: 144, column: 17, scope: !683)
!692 = !DILocation(line: 143, column: 10, scope: !683)
!693 = !DILocation(line: 146, column: 33, scope: !683)
!694 = !DILocalVariable(name: "thread", arg: 1, scope: !695, file: !696, line: 59, type: !105)
!695 = distinct !DISubprogram(name: "arch_thread_return_value_set", scope: !696, file: !696, line: 59, type: !697, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !203)
!696 = !DIFile(filename: "arch/arm/include/cortex_m/kernel_arch_func.h", directory: "/home/sri/zephyrproject/zephyr")
!697 = !DISubroutineType(types: !698)
!698 = !{null, !105, !152}
!699 = !DILocation(line: 59, column: 47, scope: !695, inlinedAt: !700)
!700 = distinct !DILocation(line: 146, column: 4, scope: !683)
!701 = !DILocalVariable(name: "value", arg: 2, scope: !695, file: !696, line: 59, type: !152)
!702 = !DILocation(line: 59, column: 68, scope: !695, inlinedAt: !700)
!703 = !DILocation(line: 61, column: 35, scope: !695, inlinedAt: !700)
!704 = !DILocation(line: 61, column: 2, scope: !695, inlinedAt: !700)
!705 = !DILocation(line: 61, column: 10, scope: !695, inlinedAt: !700)
!706 = !DILocation(line: 61, column: 15, scope: !695, inlinedAt: !700)
!707 = !DILocation(line: 61, column: 33, scope: !695, inlinedAt: !700)
!708 = !DILocation(line: 147, column: 19, scope: !683)
!709 = !DILocation(line: 147, column: 4, scope: !683)
!710 = !DILocation(line: 148, column: 18, scope: !683)
!711 = !DILocation(line: 148, column: 24, scope: !683)
!712 = !DILocation(line: 148, column: 4, scope: !683)
!713 = !DILocation(line: 149, column: 4, scope: !683)
!714 = !DILocation(line: 154, column: 17, scope: !715)
!715 = distinct !DILexicalBlock(scope: !679, file: !406, line: 150, column: 10)
!716 = !DILocation(line: 154, column: 23, scope: !715)
!717 = !DILocation(line: 154, column: 34, scope: !715)
!718 = !DILocation(line: 154, column: 40, scope: !715)
!719 = !DILocation(line: 154, column: 46, scope: !715)
!720 = !DILocation(line: 154, column: 10, scope: !715)
!721 = !DILocation(line: 155, column: 23, scope: !715)
!722 = !DILocation(line: 155, column: 29, scope: !715)
!723 = !DILocation(line: 155, column: 4, scope: !715)
!724 = !DILocation(line: 155, column: 10, scope: !715)
!725 = !DILocation(line: 155, column: 20, scope: !715)
!726 = !DILocation(line: 156, column: 8, scope: !727)
!727 = distinct !DILexicalBlock(scope: !715, file: !406, line: 156, column: 8)
!728 = !DILocation(line: 156, column: 14, scope: !727)
!729 = !DILocation(line: 156, column: 27, scope: !727)
!730 = !DILocation(line: 156, column: 33, scope: !727)
!731 = !DILocation(line: 156, column: 24, scope: !727)
!732 = !DILocation(line: 156, column: 8, scope: !715)
!733 = !DILocation(line: 157, column: 23, scope: !734)
!734 = distinct !DILexicalBlock(scope: !727, file: !406, line: 156, column: 45)
!735 = !DILocation(line: 157, column: 29, scope: !734)
!736 = !DILocation(line: 157, column: 5, scope: !734)
!737 = !DILocation(line: 157, column: 11, scope: !734)
!738 = !DILocation(line: 157, column: 21, scope: !734)
!739 = !DILocation(line: 158, column: 4, scope: !734)
!740 = !DILocation(line: 159, column: 4, scope: !715)
!741 = !DILocation(line: 159, column: 10, scope: !715)
!742 = !DILocation(line: 159, column: 19, scope: !715)
!743 = !DILocation(line: 164, column: 10, scope: !674)
!744 = !DILocation(line: 165, column: 2, scope: !674)
!745 = !DILocation(line: 165, column: 24, scope: !746)
!746 = distinct !DILexicalBlock(scope: !667, file: !406, line: 165, column: 13)
!747 = !DILocation(line: 165, column: 49, scope: !746)
!748 = !DILocation(line: 165, column: 30, scope: !746)
!749 = !DILocation(line: 165, column: 13, scope: !667)
!750 = !DILocation(line: 167, column: 10, scope: !751)
!751 = distinct !DILexicalBlock(scope: !746, file: !406, line: 165, column: 63)
!752 = !DILocation(line: 168, column: 2, scope: !751)
!753 = !DILocation(line: 169, column: 3, scope: !754)
!754 = distinct !DILexicalBlock(scope: !746, file: !406, line: 168, column: 9)
!755 = !DILocation(line: 169, column: 8, scope: !756)
!756 = distinct !DILexicalBlock(scope: !754, file: !406, line: 169, column: 6)
!757 = !DILocation(line: 172, column: 54, scope: !754)
!758 = !DILocation(line: 172, column: 19, scope: !754)
!759 = !DILocation(line: 172, column: 28, scope: !754)
!760 = !DILocation(line: 172, column: 33, scope: !754)
!761 = !DILocation(line: 172, column: 43, scope: !754)
!762 = !DILocation(line: 174, column: 25, scope: !754)
!763 = !DILocation(line: 174, column: 31, scope: !754)
!764 = !DILocation(line: 174, column: 43, scope: !754)
!765 = !DILocation(line: 174, column: 49, scope: !754)
!766 = !DILocation(line: 174, column: 12, scope: !754)
!767 = !DILocation(line: 174, column: 10, scope: !754)
!768 = !DILocation(line: 175, column: 3, scope: !754)
!769 = !DILocation(line: 175, column: 8, scope: !770)
!770 = distinct !DILexicalBlock(scope: !754, file: !406, line: 175, column: 6)
!771 = !DILocation(line: 176, column: 10, scope: !754)
!772 = !DILocation(line: 176, column: 3, scope: !754)
!773 = !DILocation(line: 179, column: 2, scope: !605)
!774 = !DILocation(line: 179, column: 7, scope: !775)
!775 = distinct !DILexicalBlock(scope: !605, file: !406, line: 179, column: 5)
!776 = !DILocation(line: 181, column: 17, scope: !605)
!777 = !DILocation(line: 181, column: 23, scope: !605)
!778 = !DILocation(line: 181, column: 2, scope: !605)
!779 = !DILocalVariable(name: "l", arg: 1, scope: !780, file: !202, line: 235, type: !630)
!780 = distinct !DISubprogram(name: "k_spin_unlock", scope: !202, file: !202, line: 235, type: !781, scopeLine: 237, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !203)
!781 = !DISubroutineType(types: !782)
!782 = !{null, !630, !617}
!783 = !DILocation(line: 235, column: 84, scope: !780, inlinedAt: !784)
!784 = distinct !DILocation(line: 181, column: 2, scope: !605)
!785 = !DILocalVariable(name: "key", arg: 2, scope: !780, file: !202, line: 236, type: !617)
!786 = !DILocation(line: 236, column: 23, scope: !780, inlinedAt: !784)
!787 = !DILocation(line: 238, column: 9, scope: !780, inlinedAt: !784)
!788 = !DILocation(line: 261, column: 22, scope: !780, inlinedAt: !784)
!789 = !DILocalVariable(name: "key", arg: 1, scope: !790, file: !638, line: 88, type: !152)
!790 = distinct !DISubprogram(name: "arch_irq_unlock", scope: !638, file: !638, line: 88, type: !791, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !203)
!791 = !DISubroutineType(types: !792)
!792 = !{null, !152}
!793 = !DILocation(line: 88, column: 80, scope: !790, inlinedAt: !794)
!794 = distinct !DILocation(line: 261, column: 2, scope: !780, inlinedAt: !784)
!795 = !DILocation(line: 91, column: 6, scope: !796, inlinedAt: !794)
!796 = distinct !DILexicalBlock(scope: !790, file: !638, line: 91, column: 6)
!797 = !DILocation(line: 91, column: 10, scope: !796, inlinedAt: !794)
!798 = !DILocation(line: 91, column: 6, scope: !790, inlinedAt: !794)
!799 = !DILocation(line: 92, column: 3, scope: !800, inlinedAt: !794)
!800 = distinct !DILexicalBlock(scope: !796, file: !638, line: 91, column: 17)
!801 = !DILocation(line: 94, column: 2, scope: !790, inlinedAt: !794)
!802 = !{i64 67249}
!803 = !DILocation(line: 114, column: 1, scope: !790, inlinedAt: !794)
!804 = !DILocation(line: 183, column: 9, scope: !605)
!805 = !DILocation(line: 183, column: 2, scope: !605)
!806 = !DILocation(line: 184, column: 1, scope: !605)
!807 = distinct !DISubprogram(name: "z_impl_k_msgq_get_attrs", scope: !406, file: !406, line: 198, type: !808, scopeLine: 199, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !203)
!808 = !DISubroutineType(types: !809)
!809 = !{null, !376, !810}
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 32)
!811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_msgq_attrs", file: !186, line: 4449, size: 96, elements: !812)
!812 = !{!813, !814, !815}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "msg_size", scope: !811, file: !186, line: 4451, baseType: !197, size: 32)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !811, file: !186, line: 4453, baseType: !151, size: 32, offset: 32)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "used_msgs", scope: !811, file: !186, line: 4455, baseType: !151, size: 32, offset: 64)
!816 = !DILocalVariable(name: "msgq", arg: 1, scope: !807, file: !406, line: 198, type: !376)
!817 = !DILocation(line: 198, column: 45, scope: !807)
!818 = !DILocalVariable(name: "attrs", arg: 2, scope: !807, file: !406, line: 198, type: !810)
!819 = !DILocation(line: 198, column: 72, scope: !807)
!820 = !DILocation(line: 200, column: 20, scope: !807)
!821 = !DILocation(line: 200, column: 26, scope: !807)
!822 = !DILocation(line: 200, column: 2, scope: !807)
!823 = !DILocation(line: 200, column: 9, scope: !807)
!824 = !DILocation(line: 200, column: 18, scope: !807)
!825 = !DILocation(line: 201, column: 20, scope: !807)
!826 = !DILocation(line: 201, column: 26, scope: !807)
!827 = !DILocation(line: 201, column: 2, scope: !807)
!828 = !DILocation(line: 201, column: 9, scope: !807)
!829 = !DILocation(line: 201, column: 18, scope: !807)
!830 = !DILocation(line: 202, column: 21, scope: !807)
!831 = !DILocation(line: 202, column: 27, scope: !807)
!832 = !DILocation(line: 202, column: 2, scope: !807)
!833 = !DILocation(line: 202, column: 9, scope: !807)
!834 = !DILocation(line: 202, column: 19, scope: !807)
!835 = !DILocation(line: 203, column: 1, scope: !807)
!836 = distinct !DISubprogram(name: "z_impl_k_msgq_get", scope: !406, file: !406, line: 216, type: !837, scopeLine: 217, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !203)
!837 = !DISubroutineType(types: !838)
!838 = !{!88, !376, !87, !292}
!839 = !DILocalVariable(name: "msgq", arg: 1, scope: !836, file: !406, line: 216, type: !376)
!840 = !DILocation(line: 216, column: 38, scope: !836)
!841 = !DILocalVariable(name: "data", arg: 2, scope: !836, file: !406, line: 216, type: !87)
!842 = !DILocation(line: 216, column: 50, scope: !836)
!843 = !DILocalVariable(name: "timeout", arg: 3, scope: !836, file: !406, line: 216, type: !292)
!844 = !DILocation(line: 216, column: 68, scope: !836)
!845 = !DILocalVariable(name: "key", scope: !836, file: !406, line: 220, type: !617)
!846 = !DILocation(line: 220, column: 19, scope: !836)
!847 = !DILocalVariable(name: "pending_thread", scope: !836, file: !406, line: 221, type: !105)
!848 = !DILocation(line: 221, column: 19, scope: !836)
!849 = !DILocalVariable(name: "result", scope: !836, file: !406, line: 222, type: !88)
!850 = !DILocation(line: 222, column: 6, scope: !836)
!851 = !DILocation(line: 224, column: 21, scope: !836)
!852 = !DILocation(line: 224, column: 27, scope: !836)
!853 = !DILocation(line: 160, column: 94, scope: !627, inlinedAt: !854)
!854 = distinct !DILocation(line: 224, column: 8, scope: !836)
!855 = !DILocation(line: 162, column: 9, scope: !627, inlinedAt: !854)
!856 = !DILocation(line: 163, column: 19, scope: !627, inlinedAt: !854)
!857 = !DILocation(line: 44, column: 15, scope: !637, inlinedAt: !858)
!858 = distinct !DILocation(line: 169, column: 10, scope: !627, inlinedAt: !854)
!859 = !DILocation(line: 48, column: 2, scope: !637, inlinedAt: !858)
!860 = !DILocation(line: 80, column: 9, scope: !637, inlinedAt: !858)
!861 = !DILocation(line: 169, column: 8, scope: !627, inlinedAt: !854)
!862 = !DILocation(line: 171, column: 26, scope: !627, inlinedAt: !854)
!863 = !DILocation(line: 110, column: 94, scope: !649, inlinedAt: !864)
!864 = distinct !DILocation(line: 171, column: 2, scope: !627, inlinedAt: !854)
!865 = !DILocation(line: 112, column: 9, scope: !649, inlinedAt: !864)
!866 = !DILocation(line: 177, column: 27, scope: !627, inlinedAt: !854)
!867 = !DILocation(line: 121, column: 95, scope: !657, inlinedAt: !868)
!868 = distinct !DILocation(line: 177, column: 2, scope: !627, inlinedAt: !854)
!869 = !DILocation(line: 123, column: 9, scope: !657, inlinedAt: !868)
!870 = !DILocation(line: 179, column: 2, scope: !627, inlinedAt: !854)
!871 = !DILocation(line: 224, column: 8, scope: !836)
!872 = !DILocation(line: 226, column: 2, scope: !836)
!873 = !DILocation(line: 226, column: 7, scope: !874)
!874 = distinct !DILexicalBlock(scope: !836, file: !406, line: 226, column: 5)
!875 = !DILocation(line: 228, column: 6, scope: !876)
!876 = distinct !DILexicalBlock(scope: !836, file: !406, line: 228, column: 6)
!877 = !DILocation(line: 228, column: 12, scope: !876)
!878 = !DILocation(line: 228, column: 22, scope: !876)
!879 = !DILocation(line: 228, column: 6, scope: !836)
!880 = !DILocation(line: 230, column: 16, scope: !881)
!881 = distinct !DILexicalBlock(scope: !876, file: !406, line: 228, column: 28)
!882 = !DILocation(line: 230, column: 22, scope: !881)
!883 = !DILocation(line: 230, column: 28, scope: !881)
!884 = !DILocation(line: 230, column: 38, scope: !881)
!885 = !DILocation(line: 230, column: 44, scope: !881)
!886 = !DILocation(line: 230, column: 9, scope: !881)
!887 = !DILocation(line: 231, column: 21, scope: !881)
!888 = !DILocation(line: 231, column: 27, scope: !881)
!889 = !DILocation(line: 231, column: 3, scope: !881)
!890 = !DILocation(line: 231, column: 9, scope: !881)
!891 = !DILocation(line: 231, column: 18, scope: !881)
!892 = !DILocation(line: 232, column: 7, scope: !893)
!893 = distinct !DILexicalBlock(scope: !881, file: !406, line: 232, column: 7)
!894 = !DILocation(line: 232, column: 13, scope: !893)
!895 = !DILocation(line: 232, column: 25, scope: !893)
!896 = !DILocation(line: 232, column: 31, scope: !893)
!897 = !DILocation(line: 232, column: 22, scope: !893)
!898 = !DILocation(line: 232, column: 7, scope: !881)
!899 = !DILocation(line: 233, column: 21, scope: !900)
!900 = distinct !DILexicalBlock(scope: !893, file: !406, line: 232, column: 43)
!901 = !DILocation(line: 233, column: 27, scope: !900)
!902 = !DILocation(line: 233, column: 4, scope: !900)
!903 = !DILocation(line: 233, column: 10, scope: !900)
!904 = !DILocation(line: 233, column: 19, scope: !900)
!905 = !DILocation(line: 234, column: 3, scope: !900)
!906 = !DILocation(line: 235, column: 3, scope: !881)
!907 = !DILocation(line: 235, column: 9, scope: !881)
!908 = !DILocation(line: 235, column: 18, scope: !881)
!909 = !DILocation(line: 238, column: 43, scope: !881)
!910 = !DILocation(line: 238, column: 49, scope: !881)
!911 = !DILocation(line: 238, column: 20, scope: !881)
!912 = !DILocation(line: 238, column: 18, scope: !881)
!913 = !DILocation(line: 239, column: 7, scope: !914)
!914 = distinct !DILexicalBlock(scope: !881, file: !406, line: 239, column: 7)
!915 = !DILocation(line: 239, column: 22, scope: !914)
!916 = !DILocation(line: 239, column: 7, scope: !881)
!917 = !DILocation(line: 240, column: 4, scope: !918)
!918 = distinct !DILexicalBlock(scope: !914, file: !406, line: 239, column: 28)
!919 = !DILocation(line: 240, column: 9, scope: !920)
!920 = distinct !DILexicalBlock(scope: !918, file: !406, line: 240, column: 7)
!921 = !DILocation(line: 245, column: 17, scope: !918)
!922 = !DILocation(line: 245, column: 23, scope: !918)
!923 = !DILocation(line: 245, column: 34, scope: !918)
!924 = !DILocation(line: 245, column: 50, scope: !918)
!925 = !DILocation(line: 245, column: 55, scope: !918)
!926 = !DILocation(line: 246, column: 11, scope: !918)
!927 = !DILocation(line: 246, column: 17, scope: !918)
!928 = !DILocation(line: 245, column: 10, scope: !918)
!929 = !DILocation(line: 247, column: 23, scope: !918)
!930 = !DILocation(line: 247, column: 29, scope: !918)
!931 = !DILocation(line: 247, column: 4, scope: !918)
!932 = !DILocation(line: 247, column: 10, scope: !918)
!933 = !DILocation(line: 247, column: 20, scope: !918)
!934 = !DILocation(line: 248, column: 8, scope: !935)
!935 = distinct !DILexicalBlock(scope: !918, file: !406, line: 248, column: 8)
!936 = !DILocation(line: 248, column: 14, scope: !935)
!937 = !DILocation(line: 248, column: 27, scope: !935)
!938 = !DILocation(line: 248, column: 33, scope: !935)
!939 = !DILocation(line: 248, column: 24, scope: !935)
!940 = !DILocation(line: 248, column: 8, scope: !918)
!941 = !DILocation(line: 249, column: 23, scope: !942)
!942 = distinct !DILexicalBlock(scope: !935, file: !406, line: 248, column: 45)
!943 = !DILocation(line: 249, column: 29, scope: !942)
!944 = !DILocation(line: 249, column: 5, scope: !942)
!945 = !DILocation(line: 249, column: 11, scope: !942)
!946 = !DILocation(line: 249, column: 21, scope: !942)
!947 = !DILocation(line: 250, column: 4, scope: !942)
!948 = !DILocation(line: 251, column: 4, scope: !918)
!949 = !DILocation(line: 251, column: 10, scope: !918)
!950 = !DILocation(line: 251, column: 19, scope: !918)
!951 = !DILocation(line: 254, column: 33, scope: !918)
!952 = !DILocation(line: 59, column: 47, scope: !695, inlinedAt: !953)
!953 = distinct !DILocation(line: 254, column: 4, scope: !918)
!954 = !DILocation(line: 59, column: 68, scope: !695, inlinedAt: !953)
!955 = !DILocation(line: 61, column: 35, scope: !695, inlinedAt: !953)
!956 = !DILocation(line: 61, column: 2, scope: !695, inlinedAt: !953)
!957 = !DILocation(line: 61, column: 10, scope: !695, inlinedAt: !953)
!958 = !DILocation(line: 61, column: 15, scope: !695, inlinedAt: !953)
!959 = !DILocation(line: 61, column: 33, scope: !695, inlinedAt: !953)
!960 = !DILocation(line: 255, column: 19, scope: !918)
!961 = !DILocation(line: 255, column: 4, scope: !918)
!962 = !DILocation(line: 256, column: 18, scope: !918)
!963 = !DILocation(line: 256, column: 24, scope: !918)
!964 = !DILocation(line: 256, column: 4, scope: !918)
!965 = !DILocation(line: 258, column: 4, scope: !918)
!966 = !DILocation(line: 258, column: 9, scope: !967)
!967 = distinct !DILexicalBlock(scope: !918, file: !406, line: 258, column: 7)
!968 = !DILocation(line: 260, column: 4, scope: !918)
!969 = !DILocation(line: 262, column: 10, scope: !881)
!970 = !DILocation(line: 263, column: 2, scope: !881)
!971 = !DILocation(line: 263, column: 24, scope: !972)
!972 = distinct !DILexicalBlock(scope: !876, file: !406, line: 263, column: 13)
!973 = !DILocation(line: 263, column: 49, scope: !972)
!974 = !DILocation(line: 263, column: 30, scope: !972)
!975 = !DILocation(line: 263, column: 13, scope: !876)
!976 = !DILocation(line: 265, column: 10, scope: !977)
!977 = distinct !DILexicalBlock(scope: !972, file: !406, line: 263, column: 63)
!978 = !DILocation(line: 266, column: 2, scope: !977)
!979 = !DILocation(line: 267, column: 3, scope: !980)
!980 = distinct !DILexicalBlock(scope: !972, file: !406, line: 266, column: 9)
!981 = !DILocation(line: 267, column: 8, scope: !982)
!982 = distinct !DILexicalBlock(scope: !980, file: !406, line: 267, column: 6)
!983 = !DILocation(line: 270, column: 45, scope: !980)
!984 = !DILocation(line: 270, column: 19, scope: !980)
!985 = !DILocation(line: 270, column: 28, scope: !980)
!986 = !DILocation(line: 270, column: 33, scope: !980)
!987 = !DILocation(line: 270, column: 43, scope: !980)
!988 = !DILocation(line: 272, column: 25, scope: !980)
!989 = !DILocation(line: 272, column: 31, scope: !980)
!990 = !DILocation(line: 272, column: 43, scope: !980)
!991 = !DILocation(line: 272, column: 49, scope: !980)
!992 = !DILocation(line: 272, column: 12, scope: !980)
!993 = !DILocation(line: 272, column: 10, scope: !980)
!994 = !DILocation(line: 273, column: 3, scope: !980)
!995 = !DILocation(line: 273, column: 8, scope: !996)
!996 = distinct !DILexicalBlock(scope: !980, file: !406, line: 273, column: 6)
!997 = !DILocation(line: 274, column: 10, scope: !980)
!998 = !DILocation(line: 274, column: 3, scope: !980)
!999 = !DILocation(line: 277, column: 2, scope: !836)
!1000 = !DILocation(line: 277, column: 7, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !836, file: !406, line: 277, column: 5)
!1002 = !DILocation(line: 279, column: 17, scope: !836)
!1003 = !DILocation(line: 279, column: 23, scope: !836)
!1004 = !DILocation(line: 279, column: 2, scope: !836)
!1005 = !DILocation(line: 235, column: 84, scope: !780, inlinedAt: !1006)
!1006 = distinct !DILocation(line: 279, column: 2, scope: !836)
!1007 = !DILocation(line: 236, column: 23, scope: !780, inlinedAt: !1006)
!1008 = !DILocation(line: 238, column: 9, scope: !780, inlinedAt: !1006)
!1009 = !DILocation(line: 261, column: 22, scope: !780, inlinedAt: !1006)
!1010 = !DILocation(line: 88, column: 80, scope: !790, inlinedAt: !1011)
!1011 = distinct !DILocation(line: 261, column: 2, scope: !780, inlinedAt: !1006)
!1012 = !DILocation(line: 91, column: 6, scope: !796, inlinedAt: !1011)
!1013 = !DILocation(line: 91, column: 10, scope: !796, inlinedAt: !1011)
!1014 = !DILocation(line: 91, column: 6, scope: !790, inlinedAt: !1011)
!1015 = !DILocation(line: 92, column: 3, scope: !800, inlinedAt: !1011)
!1016 = !DILocation(line: 94, column: 2, scope: !790, inlinedAt: !1011)
!1017 = !DILocation(line: 114, column: 1, scope: !790, inlinedAt: !1011)
!1018 = !DILocation(line: 281, column: 9, scope: !836)
!1019 = !DILocation(line: 281, column: 2, scope: !836)
!1020 = !DILocation(line: 282, column: 1, scope: !836)
!1021 = distinct !DISubprogram(name: "z_impl_k_msgq_peek", scope: !406, file: !406, line: 296, type: !1022, scopeLine: 297, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !203)
!1022 = !DISubroutineType(types: !1023)
!1023 = !{!88, !376, !87}
!1024 = !DILocalVariable(name: "msgq", arg: 1, scope: !1021, file: !406, line: 296, type: !376)
!1025 = !DILocation(line: 296, column: 39, scope: !1021)
!1026 = !DILocalVariable(name: "data", arg: 2, scope: !1021, file: !406, line: 296, type: !87)
!1027 = !DILocation(line: 296, column: 51, scope: !1021)
!1028 = !DILocalVariable(name: "key", scope: !1021, file: !406, line: 298, type: !617)
!1029 = !DILocation(line: 298, column: 19, scope: !1021)
!1030 = !DILocalVariable(name: "result", scope: !1021, file: !406, line: 299, type: !88)
!1031 = !DILocation(line: 299, column: 6, scope: !1021)
!1032 = !DILocation(line: 301, column: 21, scope: !1021)
!1033 = !DILocation(line: 301, column: 27, scope: !1021)
!1034 = !DILocation(line: 160, column: 94, scope: !627, inlinedAt: !1035)
!1035 = distinct !DILocation(line: 301, column: 8, scope: !1021)
!1036 = !DILocation(line: 162, column: 9, scope: !627, inlinedAt: !1035)
!1037 = !DILocation(line: 163, column: 19, scope: !627, inlinedAt: !1035)
!1038 = !DILocation(line: 44, column: 15, scope: !637, inlinedAt: !1039)
!1039 = distinct !DILocation(line: 169, column: 10, scope: !627, inlinedAt: !1035)
!1040 = !DILocation(line: 48, column: 2, scope: !637, inlinedAt: !1039)
!1041 = !DILocation(line: 80, column: 9, scope: !637, inlinedAt: !1039)
!1042 = !DILocation(line: 169, column: 8, scope: !627, inlinedAt: !1035)
!1043 = !DILocation(line: 171, column: 26, scope: !627, inlinedAt: !1035)
!1044 = !DILocation(line: 110, column: 94, scope: !649, inlinedAt: !1045)
!1045 = distinct !DILocation(line: 171, column: 2, scope: !627, inlinedAt: !1035)
!1046 = !DILocation(line: 112, column: 9, scope: !649, inlinedAt: !1045)
!1047 = !DILocation(line: 177, column: 27, scope: !627, inlinedAt: !1035)
!1048 = !DILocation(line: 121, column: 95, scope: !657, inlinedAt: !1049)
!1049 = distinct !DILocation(line: 177, column: 2, scope: !627, inlinedAt: !1035)
!1050 = !DILocation(line: 123, column: 9, scope: !657, inlinedAt: !1049)
!1051 = !DILocation(line: 179, column: 2, scope: !627, inlinedAt: !1035)
!1052 = !DILocation(line: 301, column: 8, scope: !1021)
!1053 = !DILocation(line: 303, column: 6, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !1021, file: !406, line: 303, column: 6)
!1055 = !DILocation(line: 303, column: 12, scope: !1054)
!1056 = !DILocation(line: 303, column: 22, scope: !1054)
!1057 = !DILocation(line: 303, column: 6, scope: !1021)
!1058 = !DILocation(line: 305, column: 16, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1054, file: !406, line: 303, column: 28)
!1060 = !DILocation(line: 305, column: 22, scope: !1059)
!1061 = !DILocation(line: 305, column: 28, scope: !1059)
!1062 = !DILocation(line: 305, column: 38, scope: !1059)
!1063 = !DILocation(line: 305, column: 44, scope: !1059)
!1064 = !DILocation(line: 305, column: 9, scope: !1059)
!1065 = !DILocation(line: 306, column: 10, scope: !1059)
!1066 = !DILocation(line: 307, column: 2, scope: !1059)
!1067 = !DILocation(line: 309, column: 10, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1054, file: !406, line: 307, column: 9)
!1069 = !DILocation(line: 312, column: 2, scope: !1021)
!1070 = !DILocation(line: 312, column: 7, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !1021, file: !406, line: 312, column: 5)
!1072 = !DILocation(line: 314, column: 17, scope: !1021)
!1073 = !DILocation(line: 314, column: 23, scope: !1021)
!1074 = !DILocation(line: 314, column: 2, scope: !1021)
!1075 = !DILocation(line: 235, column: 84, scope: !780, inlinedAt: !1076)
!1076 = distinct !DILocation(line: 314, column: 2, scope: !1021)
!1077 = !DILocation(line: 236, column: 23, scope: !780, inlinedAt: !1076)
!1078 = !DILocation(line: 238, column: 9, scope: !780, inlinedAt: !1076)
!1079 = !DILocation(line: 261, column: 22, scope: !780, inlinedAt: !1076)
!1080 = !DILocation(line: 88, column: 80, scope: !790, inlinedAt: !1081)
!1081 = distinct !DILocation(line: 261, column: 2, scope: !780, inlinedAt: !1076)
!1082 = !DILocation(line: 91, column: 6, scope: !796, inlinedAt: !1081)
!1083 = !DILocation(line: 91, column: 10, scope: !796, inlinedAt: !1081)
!1084 = !DILocation(line: 91, column: 6, scope: !790, inlinedAt: !1081)
!1085 = !DILocation(line: 92, column: 3, scope: !800, inlinedAt: !1081)
!1086 = !DILocation(line: 94, column: 2, scope: !790, inlinedAt: !1081)
!1087 = !DILocation(line: 114, column: 1, scope: !790, inlinedAt: !1081)
!1088 = !DILocation(line: 316, column: 9, scope: !1021)
!1089 = !DILocation(line: 316, column: 2, scope: !1021)
!1090 = distinct !DISubprogram(name: "z_impl_k_msgq_peek_at", scope: !406, file: !406, line: 330, type: !1091, scopeLine: 331, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !203)
!1091 = !DISubroutineType(types: !1092)
!1092 = !{!88, !376, !87, !151}
!1093 = !DILocalVariable(name: "msgq", arg: 1, scope: !1090, file: !406, line: 330, type: !376)
!1094 = !DILocation(line: 330, column: 42, scope: !1090)
!1095 = !DILocalVariable(name: "data", arg: 2, scope: !1090, file: !406, line: 330, type: !87)
!1096 = !DILocation(line: 330, column: 54, scope: !1090)
!1097 = !DILocalVariable(name: "idx", arg: 3, scope: !1090, file: !406, line: 330, type: !151)
!1098 = !DILocation(line: 330, column: 69, scope: !1090)
!1099 = !DILocalVariable(name: "key", scope: !1090, file: !406, line: 332, type: !617)
!1100 = !DILocation(line: 332, column: 19, scope: !1090)
!1101 = !DILocalVariable(name: "result", scope: !1090, file: !406, line: 333, type: !88)
!1102 = !DILocation(line: 333, column: 6, scope: !1090)
!1103 = !DILocalVariable(name: "bytes_to_end", scope: !1090, file: !406, line: 334, type: !151)
!1104 = !DILocation(line: 334, column: 11, scope: !1090)
!1105 = !DILocalVariable(name: "byte_offset", scope: !1090, file: !406, line: 335, type: !151)
!1106 = !DILocation(line: 335, column: 11, scope: !1090)
!1107 = !DILocalVariable(name: "start_addr", scope: !1090, file: !406, line: 336, type: !384)
!1108 = !DILocation(line: 336, column: 8, scope: !1090)
!1109 = !DILocation(line: 338, column: 21, scope: !1090)
!1110 = !DILocation(line: 338, column: 27, scope: !1090)
!1111 = !DILocation(line: 160, column: 94, scope: !627, inlinedAt: !1112)
!1112 = distinct !DILocation(line: 338, column: 8, scope: !1090)
!1113 = !DILocation(line: 162, column: 9, scope: !627, inlinedAt: !1112)
!1114 = !DILocation(line: 163, column: 19, scope: !627, inlinedAt: !1112)
!1115 = !DILocation(line: 44, column: 15, scope: !637, inlinedAt: !1116)
!1116 = distinct !DILocation(line: 169, column: 10, scope: !627, inlinedAt: !1112)
!1117 = !DILocation(line: 48, column: 2, scope: !637, inlinedAt: !1116)
!1118 = !DILocation(line: 80, column: 9, scope: !637, inlinedAt: !1116)
!1119 = !DILocation(line: 169, column: 8, scope: !627, inlinedAt: !1112)
!1120 = !DILocation(line: 171, column: 26, scope: !627, inlinedAt: !1112)
!1121 = !DILocation(line: 110, column: 94, scope: !649, inlinedAt: !1122)
!1122 = distinct !DILocation(line: 171, column: 2, scope: !627, inlinedAt: !1112)
!1123 = !DILocation(line: 112, column: 9, scope: !649, inlinedAt: !1122)
!1124 = !DILocation(line: 177, column: 27, scope: !627, inlinedAt: !1112)
!1125 = !DILocation(line: 121, column: 95, scope: !657, inlinedAt: !1126)
!1126 = distinct !DILocation(line: 177, column: 2, scope: !627, inlinedAt: !1112)
!1127 = !DILocation(line: 123, column: 9, scope: !657, inlinedAt: !1126)
!1128 = !DILocation(line: 179, column: 2, scope: !627, inlinedAt: !1112)
!1129 = !DILocation(line: 338, column: 8, scope: !1090)
!1130 = !DILocation(line: 340, column: 6, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1090, file: !406, line: 340, column: 6)
!1132 = !DILocation(line: 340, column: 12, scope: !1131)
!1133 = !DILocation(line: 340, column: 24, scope: !1131)
!1134 = !DILocation(line: 340, column: 22, scope: !1131)
!1135 = !DILocation(line: 340, column: 6, scope: !1090)
!1136 = !DILocation(line: 341, column: 19, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1131, file: !406, line: 340, column: 29)
!1138 = !DILocation(line: 341, column: 25, scope: !1137)
!1139 = !DILocation(line: 341, column: 38, scope: !1137)
!1140 = !DILocation(line: 341, column: 44, scope: !1137)
!1141 = !DILocation(line: 341, column: 36, scope: !1137)
!1142 = !DILocation(line: 341, column: 16, scope: !1137)
!1143 = !DILocation(line: 342, column: 17, scope: !1137)
!1144 = !DILocation(line: 342, column: 23, scope: !1137)
!1145 = !DILocation(line: 342, column: 29, scope: !1137)
!1146 = !DILocation(line: 342, column: 21, scope: !1137)
!1147 = !DILocation(line: 342, column: 15, scope: !1137)
!1148 = !DILocation(line: 343, column: 16, scope: !1137)
!1149 = !DILocation(line: 343, column: 22, scope: !1137)
!1150 = !DILocation(line: 343, column: 14, scope: !1137)
!1151 = !DILocation(line: 345, column: 7, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1137, file: !406, line: 345, column: 7)
!1153 = !DILocation(line: 345, column: 23, scope: !1152)
!1154 = !DILocation(line: 345, column: 20, scope: !1152)
!1155 = !DILocation(line: 345, column: 7, scope: !1137)
!1156 = !DILocation(line: 347, column: 19, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1152, file: !406, line: 345, column: 36)
!1158 = !DILocation(line: 347, column: 16, scope: !1157)
!1159 = !DILocation(line: 349, column: 17, scope: !1157)
!1160 = !DILocation(line: 349, column: 23, scope: !1157)
!1161 = !DILocation(line: 349, column: 15, scope: !1157)
!1162 = !DILocation(line: 350, column: 3, scope: !1157)
!1163 = !DILocation(line: 351, column: 16, scope: !1137)
!1164 = !DILocation(line: 351, column: 22, scope: !1137)
!1165 = !DILocation(line: 351, column: 35, scope: !1137)
!1166 = !DILocation(line: 351, column: 33, scope: !1137)
!1167 = !DILocation(line: 351, column: 48, scope: !1137)
!1168 = !DILocation(line: 351, column: 54, scope: !1137)
!1169 = !DILocation(line: 351, column: 9, scope: !1137)
!1170 = !DILocation(line: 352, column: 10, scope: !1137)
!1171 = !DILocation(line: 353, column: 2, scope: !1137)
!1172 = !DILocation(line: 355, column: 10, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !1131, file: !406, line: 353, column: 9)
!1174 = !DILocation(line: 358, column: 2, scope: !1090)
!1175 = !DILocation(line: 358, column: 7, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1090, file: !406, line: 358, column: 5)
!1177 = !DILocation(line: 360, column: 17, scope: !1090)
!1178 = !DILocation(line: 360, column: 23, scope: !1090)
!1179 = !DILocation(line: 360, column: 2, scope: !1090)
!1180 = !DILocation(line: 235, column: 84, scope: !780, inlinedAt: !1181)
!1181 = distinct !DILocation(line: 360, column: 2, scope: !1090)
!1182 = !DILocation(line: 236, column: 23, scope: !780, inlinedAt: !1181)
!1183 = !DILocation(line: 238, column: 9, scope: !780, inlinedAt: !1181)
!1184 = !DILocation(line: 261, column: 22, scope: !780, inlinedAt: !1181)
!1185 = !DILocation(line: 88, column: 80, scope: !790, inlinedAt: !1186)
!1186 = distinct !DILocation(line: 261, column: 2, scope: !780, inlinedAt: !1181)
!1187 = !DILocation(line: 91, column: 6, scope: !796, inlinedAt: !1186)
!1188 = !DILocation(line: 91, column: 10, scope: !796, inlinedAt: !1186)
!1189 = !DILocation(line: 91, column: 6, scope: !790, inlinedAt: !1186)
!1190 = !DILocation(line: 92, column: 3, scope: !800, inlinedAt: !1186)
!1191 = !DILocation(line: 94, column: 2, scope: !790, inlinedAt: !1186)
!1192 = !DILocation(line: 114, column: 1, scope: !790, inlinedAt: !1186)
!1193 = !DILocation(line: 362, column: 9, scope: !1090)
!1194 = !DILocation(line: 362, column: 2, scope: !1090)
!1195 = distinct !DISubprogram(name: "z_impl_k_msgq_purge", scope: !406, file: !406, line: 376, type: !1196, scopeLine: 377, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !203)
!1196 = !DISubroutineType(types: !1197)
!1197 = !{null, !376}
!1198 = !DILocalVariable(name: "msgq", arg: 1, scope: !1195, file: !406, line: 376, type: !376)
!1199 = !DILocation(line: 376, column: 41, scope: !1195)
!1200 = !DILocalVariable(name: "key", scope: !1195, file: !406, line: 378, type: !617)
!1201 = !DILocation(line: 378, column: 19, scope: !1195)
!1202 = !DILocalVariable(name: "pending_thread", scope: !1195, file: !406, line: 379, type: !105)
!1203 = !DILocation(line: 379, column: 19, scope: !1195)
!1204 = !DILocation(line: 381, column: 21, scope: !1195)
!1205 = !DILocation(line: 381, column: 27, scope: !1195)
!1206 = !DILocation(line: 160, column: 94, scope: !627, inlinedAt: !1207)
!1207 = distinct !DILocation(line: 381, column: 8, scope: !1195)
!1208 = !DILocation(line: 162, column: 9, scope: !627, inlinedAt: !1207)
!1209 = !DILocation(line: 163, column: 19, scope: !627, inlinedAt: !1207)
!1210 = !DILocation(line: 44, column: 15, scope: !637, inlinedAt: !1211)
!1211 = distinct !DILocation(line: 169, column: 10, scope: !627, inlinedAt: !1207)
!1212 = !DILocation(line: 48, column: 2, scope: !637, inlinedAt: !1211)
!1213 = !DILocation(line: 80, column: 9, scope: !637, inlinedAt: !1211)
!1214 = !DILocation(line: 169, column: 8, scope: !627, inlinedAt: !1207)
!1215 = !DILocation(line: 171, column: 26, scope: !627, inlinedAt: !1207)
!1216 = !DILocation(line: 110, column: 94, scope: !649, inlinedAt: !1217)
!1217 = distinct !DILocation(line: 171, column: 2, scope: !627, inlinedAt: !1207)
!1218 = !DILocation(line: 112, column: 9, scope: !649, inlinedAt: !1217)
!1219 = !DILocation(line: 177, column: 27, scope: !627, inlinedAt: !1207)
!1220 = !DILocation(line: 121, column: 95, scope: !657, inlinedAt: !1221)
!1221 = distinct !DILocation(line: 177, column: 2, scope: !627, inlinedAt: !1207)
!1222 = !DILocation(line: 123, column: 9, scope: !657, inlinedAt: !1221)
!1223 = !DILocation(line: 179, column: 2, scope: !627, inlinedAt: !1207)
!1224 = !DILocation(line: 381, column: 8, scope: !1195)
!1225 = !DILocation(line: 383, column: 2, scope: !1195)
!1226 = !DILocation(line: 383, column: 7, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1195, file: !406, line: 383, column: 5)
!1228 = !DILocation(line: 386, column: 2, scope: !1195)
!1229 = !DILocation(line: 386, column: 50, scope: !1195)
!1230 = !DILocation(line: 386, column: 56, scope: !1195)
!1231 = !DILocation(line: 386, column: 27, scope: !1195)
!1232 = !DILocation(line: 386, column: 25, scope: !1195)
!1233 = !DILocation(line: 386, column: 65, scope: !1195)
!1234 = !DILocation(line: 387, column: 32, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1195, file: !406, line: 386, column: 71)
!1236 = !DILocation(line: 59, column: 47, scope: !695, inlinedAt: !1237)
!1237 = distinct !DILocation(line: 387, column: 3, scope: !1235)
!1238 = !DILocation(line: 59, column: 68, scope: !695, inlinedAt: !1237)
!1239 = !DILocation(line: 61, column: 35, scope: !695, inlinedAt: !1237)
!1240 = !DILocation(line: 61, column: 2, scope: !695, inlinedAt: !1237)
!1241 = !DILocation(line: 61, column: 10, scope: !695, inlinedAt: !1237)
!1242 = !DILocation(line: 61, column: 15, scope: !695, inlinedAt: !1237)
!1243 = !DILocation(line: 61, column: 33, scope: !695, inlinedAt: !1237)
!1244 = !DILocation(line: 388, column: 18, scope: !1235)
!1245 = !DILocation(line: 388, column: 3, scope: !1235)
!1246 = distinct !{!1246, !1228, !1247}
!1247 = !DILocation(line: 389, column: 2, scope: !1195)
!1248 = !DILocation(line: 391, column: 2, scope: !1195)
!1249 = !DILocation(line: 391, column: 8, scope: !1195)
!1250 = !DILocation(line: 391, column: 18, scope: !1195)
!1251 = !DILocation(line: 392, column: 19, scope: !1195)
!1252 = !DILocation(line: 392, column: 25, scope: !1195)
!1253 = !DILocation(line: 392, column: 2, scope: !1195)
!1254 = !DILocation(line: 392, column: 8, scope: !1195)
!1255 = !DILocation(line: 392, column: 17, scope: !1195)
!1256 = !DILocation(line: 394, column: 16, scope: !1195)
!1257 = !DILocation(line: 394, column: 22, scope: !1195)
!1258 = !DILocation(line: 394, column: 2, scope: !1195)
!1259 = !DILocation(line: 395, column: 1, scope: !1195)
!1260 = distinct !DISubprogram(name: "sys_sflist_is_empty", scope: !339, file: !339, line: 335, type: !1261, scopeLine: 335, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !203)
!1261 = !DISubroutineType(types: !1262)
!1262 = !{!536, !1263}
!1263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 32)
!1264 = !DILocalVariable(name: "list", arg: 1, scope: !1260, file: !339, line: 335, type: !1263)
!1265 = !DILocation(line: 335, column: 55, scope: !1260)
!1266 = !DILocation(line: 335, column: 92, scope: !1260)
!1267 = !DILocation(line: 335, column: 71, scope: !1260)
!1268 = !DILocation(line: 335, column: 98, scope: !1260)
!1269 = !DILocation(line: 335, column: 63, scope: !1260)
!1270 = distinct !DISubprogram(name: "sys_sflist_peek_head", scope: !339, file: !339, line: 255, type: !1271, scopeLine: 256, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !203)
!1271 = !DISubroutineType(types: !1272)
!1272 = !{!343, !1263}
!1273 = !DILocalVariable(name: "list", arg: 1, scope: !1270, file: !339, line: 255, type: !1263)
!1274 = !DILocation(line: 255, column: 64, scope: !1270)
!1275 = !DILocation(line: 257, column: 9, scope: !1270)
!1276 = !DILocation(line: 257, column: 15, scope: !1270)
!1277 = !DILocation(line: 257, column: 2, scope: !1270)
!1278 = distinct !DISubprogram(name: "sys_dlist_init", scope: !91, file: !91, line: 203, type: !1279, scopeLine: 204, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !203)
!1279 = !DISubroutineType(types: !1280)
!1280 = !{null, !1281}
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 32)
!1282 = !DILocalVariable(name: "list", arg: 1, scope: !1278, file: !91, line: 203, type: !1281)
!1283 = !DILocation(line: 203, column: 48, scope: !1278)
!1284 = !DILocation(line: 205, column: 30, scope: !1278)
!1285 = !DILocation(line: 205, column: 2, scope: !1278)
!1286 = !DILocation(line: 205, column: 8, scope: !1278)
!1287 = !DILocation(line: 205, column: 13, scope: !1278)
!1288 = !DILocation(line: 206, column: 30, scope: !1278)
!1289 = !DILocation(line: 206, column: 2, scope: !1278)
!1290 = !DILocation(line: 206, column: 8, scope: !1278)
!1291 = !DILocation(line: 206, column: 13, scope: !1278)
!1292 = !DILocation(line: 207, column: 1, scope: !1278)
!1293 = distinct !DISubprogram(name: "sys_dlist_peek_head", scope: !91, file: !91, line: 303, type: !1294, scopeLine: 304, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !203)
!1294 = !DISubroutineType(types: !1295)
!1295 = !{!89, !1281}
!1296 = !DILocalVariable(name: "list", arg: 1, scope: !1293, file: !91, line: 303, type: !1281)
!1297 = !DILocation(line: 303, column: 61, scope: !1293)
!1298 = !DILocation(line: 305, column: 28, scope: !1293)
!1299 = !DILocation(line: 305, column: 9, scope: !1293)
!1300 = !DILocation(line: 305, column: 49, scope: !1293)
!1301 = !DILocation(line: 305, column: 55, scope: !1293)
!1302 = !DILocation(line: 305, column: 2, scope: !1293)
!1303 = distinct !DISubprogram(name: "sys_dlist_is_empty", scope: !91, file: !91, line: 275, type: !1304, scopeLine: 276, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !203)
!1304 = !DISubroutineType(types: !1305)
!1305 = !{!536, !1281}
!1306 = !DILocalVariable(name: "list", arg: 1, scope: !1303, file: !91, line: 275, type: !1281)
!1307 = !DILocation(line: 275, column: 53, scope: !1303)
!1308 = !DILocation(line: 277, column: 9, scope: !1303)
!1309 = !DILocation(line: 277, column: 15, scope: !1303)
!1310 = !DILocation(line: 277, column: 23, scope: !1303)
!1311 = !DILocation(line: 277, column: 20, scope: !1303)
!1312 = !DILocation(line: 277, column: 2, scope: !1303)
