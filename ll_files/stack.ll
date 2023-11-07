; ModuleID = '../bc_files/stack.bc'
source_filename = "/home/sri/zephyrproject/zephyr/kernel/stack.c"
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
%struct.k_stack = type { %struct._wait_q_t, %struct.k_spinlock, ptr, ptr, ptr, i8 }
%struct.z_spinlock_key = type { i32 }

@_kernel = external global %struct.z_kernel, align 4

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_k_object_access_grant(ptr noundef %0, ptr noundef %1) #0 !dbg !222 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !227, metadata !DIExpression()), !dbg !228
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !229, metadata !DIExpression()), !dbg !230
  %5 = load ptr, ptr %3, align 4, !dbg !231
  %6 = load ptr, ptr %4, align 4, !dbg !232
  ret void, !dbg !233
}

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_k_object_release(ptr noundef %0) #0 !dbg !234 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !237, metadata !DIExpression()), !dbg !238
  %3 = load ptr, ptr %2, align 4, !dbg !239
  ret void, !dbg !240
}

; Function Attrs: noinline nounwind optnone
define internal ptr @z_impl_k_object_alloc(i8 noundef zeroext %0) #0 !dbg !241 {
  %2 = alloca i8, align 1
  store i8 %0, ptr %2, align 1
  call void @llvm.dbg.declare(metadata ptr %2, metadata !244, metadata !DIExpression()), !dbg !245
  %3 = load i8, ptr %2, align 1, !dbg !246
  ret ptr null, !dbg !247
}

; Function Attrs: noinline nounwind optnone
define internal ptr @z_impl_k_object_alloc_size(i8 noundef zeroext %0, i32 noundef %1) #0 !dbg !248 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8 %0, ptr %3, align 1
  call void @llvm.dbg.declare(metadata ptr %3, metadata !251, metadata !DIExpression()), !dbg !252
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !253, metadata !DIExpression()), !dbg !254
  %5 = load i8, ptr %3, align 1, !dbg !255
  %6 = load i32, ptr %4, align 4, !dbg !256
  ret ptr null, !dbg !257
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_thread_timeout_expires_ticks(ptr noundef %0) #0 !dbg !258 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !265, metadata !DIExpression()), !dbg !266
  %3 = load ptr, ptr %2, align 4, !dbg !267
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !268
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !269
  %6 = call i64 @z_timeout_expires(ptr noundef %5), !dbg !270
  ret i64 %6, !dbg !271
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_thread_timeout_remaining_ticks(ptr noundef %0) #0 !dbg !272 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !273, metadata !DIExpression()), !dbg !274
  %3 = load ptr, ptr %2, align 4, !dbg !275
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !276
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !277
  %6 = call i64 @z_timeout_remaining(ptr noundef %5), !dbg !278
  ret i64 %6, !dbg !279
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_timer_expires_ticks(ptr noundef %0) #0 !dbg !280 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !302, metadata !DIExpression()), !dbg !303
  %3 = load ptr, ptr %2, align 4, !dbg !304
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !305
  %5 = call i64 @z_timeout_expires(ptr noundef %4), !dbg !306
  ret i64 %5, !dbg !307
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_timer_remaining_ticks(ptr noundef %0) #0 !dbg !308 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !309, metadata !DIExpression()), !dbg !310
  %3 = load ptr, ptr %2, align 4, !dbg !311
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !312
  %5 = call i64 @z_timeout_remaining(ptr noundef %4), !dbg !313
  ret i64 %5, !dbg !314
}

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_k_timer_user_data_set(ptr noundef %0, ptr noundef %1) #0 !dbg !315 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !318, metadata !DIExpression()), !dbg !319
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !320, metadata !DIExpression()), !dbg !321
  %5 = load ptr, ptr %4, align 4, !dbg !322
  %6 = load ptr, ptr %3, align 4, !dbg !323
  %7 = getelementptr inbounds %struct.k_timer, ptr %6, i32 0, i32 6, !dbg !324
  store ptr %5, ptr %7, align 4, !dbg !325
  ret void, !dbg !326
}

; Function Attrs: noinline nounwind optnone
define internal ptr @z_impl_k_timer_user_data_get(ptr noundef %0) #0 !dbg !327 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !330, metadata !DIExpression()), !dbg !331
  %3 = load ptr, ptr %2, align 4, !dbg !332
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 6, !dbg !333
  %5 = load ptr, ptr %4, align 4, !dbg !333
  ret ptr %5, !dbg !334
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_queue_is_empty(ptr noundef %0) #0 !dbg !335 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !356, metadata !DIExpression()), !dbg !357
  %3 = load ptr, ptr %2, align 4, !dbg !358
  %4 = getelementptr inbounds %struct.k_queue, ptr %3, i32 0, i32 0, !dbg !359
  %5 = call zeroext i1 @sys_sflist_is_empty(ptr noundef %4), !dbg !360
  %6 = zext i1 %5 to i32, !dbg !361
  ret i32 %6, !dbg !362
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_sem_count_get(ptr noundef %0) #0 !dbg !363 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !372, metadata !DIExpression()), !dbg !373
  %3 = load ptr, ptr %2, align 4, !dbg !374
  %4 = getelementptr inbounds %struct.k_sem, ptr %3, i32 0, i32 1, !dbg !375
  %5 = load i32, ptr %4, align 4, !dbg !375
  ret i32 %5, !dbg !376
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_msgq_num_free_get(ptr noundef %0) #0 !dbg !377 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !395, metadata !DIExpression()), !dbg !396
  %3 = load ptr, ptr %2, align 4, !dbg !397
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 3, !dbg !398
  %5 = load i32, ptr %4, align 4, !dbg !398
  %6 = load ptr, ptr %2, align 4, !dbg !399
  %7 = getelementptr inbounds %struct.k_msgq, ptr %6, i32 0, i32 8, !dbg !400
  %8 = load i32, ptr %7, align 4, !dbg !400
  %9 = sub i32 %5, %8, !dbg !401
  ret i32 %9, !dbg !402
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_msgq_num_used_get(ptr noundef %0) #0 !dbg !403 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !404, metadata !DIExpression()), !dbg !405
  %3 = load ptr, ptr %2, align 4, !dbg !406
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 8, !dbg !407
  %5 = load i32, ptr %4, align 4, !dbg !407
  ret i32 %5, !dbg !408
}

; Function Attrs: noinline nounwind optnone
define hidden void @k_stack_init(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 !dbg !409 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.k_spinlock, align 1
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !423, metadata !DIExpression()), !dbg !424
  store ptr %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !425, metadata !DIExpression()), !dbg !426
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !427, metadata !DIExpression()), !dbg !428
  %8 = load ptr, ptr %4, align 4, !dbg !429
  %9 = getelementptr inbounds %struct.k_stack, ptr %8, i32 0, i32 0, !dbg !430
  call void @z_waitq_init(ptr noundef %9), !dbg !431
  %10 = load ptr, ptr %4, align 4, !dbg !432
  %11 = getelementptr inbounds %struct.k_stack, ptr %10, i32 0, i32 1, !dbg !433
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %11, ptr align 1 %7, i32 0, i1 false), !dbg !434
  %12 = load ptr, ptr %5, align 4, !dbg !435
  %13 = load ptr, ptr %4, align 4, !dbg !436
  %14 = getelementptr inbounds %struct.k_stack, ptr %13, i32 0, i32 2, !dbg !437
  store ptr %12, ptr %14, align 4, !dbg !438
  %15 = load ptr, ptr %4, align 4, !dbg !439
  %16 = getelementptr inbounds %struct.k_stack, ptr %15, i32 0, i32 3, !dbg !440
  store ptr %12, ptr %16, align 4, !dbg !441
  %17 = load ptr, ptr %4, align 4, !dbg !442
  %18 = getelementptr inbounds %struct.k_stack, ptr %17, i32 0, i32 2, !dbg !443
  %19 = load ptr, ptr %18, align 4, !dbg !443
  %20 = load i32, ptr %6, align 4, !dbg !444
  %21 = getelementptr inbounds i32, ptr %19, i32 %20, !dbg !445
  %22 = load ptr, ptr %4, align 4, !dbg !446
  %23 = getelementptr inbounds %struct.k_stack, ptr %22, i32 0, i32 4, !dbg !447
  store ptr %21, ptr %23, align 4, !dbg !448
  br label %24, !dbg !449

24:                                               ; preds = %3
  br label %25, !dbg !450

25:                                               ; preds = %24
  %26 = load ptr, ptr %4, align 4, !dbg !452
  call void @z_object_init(ptr noundef %26), !dbg !453
  ret void, !dbg !454
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone
define internal void @z_waitq_init(ptr noundef %0) #0 !dbg !455 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !459, metadata !DIExpression()), !dbg !460
  %3 = load ptr, ptr %2, align 4, !dbg !461
  %4 = getelementptr inbounds %struct._wait_q_t, ptr %3, i32 0, i32 0, !dbg !462
  call void @sys_dlist_init(ptr noundef %4), !dbg !463
  ret void, !dbg !464
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: noinline nounwind optnone
define internal void @z_object_init(ptr noundef %0) #0 !dbg !465 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !466, metadata !DIExpression()), !dbg !467
  %3 = load ptr, ptr %2, align 4, !dbg !468
  ret void, !dbg !469
}

; Function Attrs: noinline nounwind optnone
define hidden i32 @z_impl_k_stack_alloc_init(ptr noundef %0, i32 noundef %1) #0 !dbg !470 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !473, metadata !DIExpression()), !dbg !474
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !475, metadata !DIExpression()), !dbg !476
  call void @llvm.dbg.declare(metadata ptr %5, metadata !477, metadata !DIExpression()), !dbg !478
  call void @llvm.dbg.declare(metadata ptr %6, metadata !479, metadata !DIExpression()), !dbg !480
  br label %7, !dbg !481

7:                                                ; preds = %2
  br label %8, !dbg !482

8:                                                ; preds = %7
  %9 = load i32, ptr %4, align 4, !dbg !484
  %10 = mul i32 %9, 4, !dbg !485
  %11 = call ptr @z_thread_malloc(i32 noundef %10), !dbg !486
  store ptr %11, ptr %5, align 4, !dbg !487
  %12 = load ptr, ptr %5, align 4, !dbg !488
  %13 = icmp ne ptr %12, null, !dbg !490
  br i1 %13, label %14, label %20, !dbg !491

14:                                               ; preds = %8
  %15 = load ptr, ptr %3, align 4, !dbg !492
  %16 = load ptr, ptr %5, align 4, !dbg !494
  %17 = load i32, ptr %4, align 4, !dbg !495
  call void @k_stack_init(ptr noundef %15, ptr noundef %16, i32 noundef %17), !dbg !496
  %18 = load ptr, ptr %3, align 4, !dbg !497
  %19 = getelementptr inbounds %struct.k_stack, ptr %18, i32 0, i32 5, !dbg !498
  store i8 1, ptr %19, align 4, !dbg !499
  store i32 0, ptr %6, align 4, !dbg !500
  br label %21, !dbg !501

20:                                               ; preds = %8
  store i32 -6, ptr %6, align 4, !dbg !502
  br label %21

21:                                               ; preds = %20, %14
  br label %22, !dbg !504

22:                                               ; preds = %21
  br label %23, !dbg !505

23:                                               ; preds = %22
  %24 = load i32, ptr %6, align 4, !dbg !507
  ret i32 %24, !dbg !508
}

; Function Attrs: noinline nounwind optnone
define internal ptr @z_thread_malloc(i32 noundef %0) #0 !dbg !509 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !515, metadata !DIExpression()), !dbg !516
  %3 = load i32, ptr %2, align 4, !dbg !517
  %4 = call ptr @z_thread_aligned_alloc(i32 noundef 0, i32 noundef %3), !dbg !518
  ret ptr %4, !dbg !519
}

; Function Attrs: noinline nounwind optnone
define hidden i32 @k_stack_cleanup(ptr noundef %0) #0 !dbg !520 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !523, metadata !DIExpression()), !dbg !524
  br label %4, !dbg !525

4:                                                ; preds = %1
  br label %5, !dbg !526

5:                                                ; preds = %4
  %6 = load ptr, ptr %3, align 4, !dbg !528
  %7 = getelementptr inbounds %struct.k_stack, ptr %6, i32 0, i32 0, !dbg !530
  %8 = call ptr @z_waitq_head(ptr noundef %7), !dbg !531
  %9 = icmp ne ptr %8, null, !dbg !532
  br i1 %9, label %10, label %13, !dbg !533

10:                                               ; preds = %5
  br label %11, !dbg !534

11:                                               ; preds = %10
  br label %12, !dbg !536

12:                                               ; preds = %11
  store i32 -11, ptr %2, align 4, !dbg !538
  br label %35, !dbg !538

13:                                               ; preds = %5
  %14 = load ptr, ptr %3, align 4, !dbg !539
  %15 = getelementptr inbounds %struct.k_stack, ptr %14, i32 0, i32 5, !dbg !541
  %16 = load i8, ptr %15, align 4, !dbg !541
  %17 = zext i8 %16 to i32, !dbg !539
  %18 = and i32 %17, 1, !dbg !542
  %19 = icmp ne i32 %18, 0, !dbg !543
  br i1 %19, label %20, label %32, !dbg !544

20:                                               ; preds = %13
  %21 = load ptr, ptr %3, align 4, !dbg !545
  %22 = getelementptr inbounds %struct.k_stack, ptr %21, i32 0, i32 2, !dbg !547
  %23 = load ptr, ptr %22, align 4, !dbg !547
  call void @k_free(ptr noundef %23), !dbg !548
  %24 = load ptr, ptr %3, align 4, !dbg !549
  %25 = getelementptr inbounds %struct.k_stack, ptr %24, i32 0, i32 2, !dbg !550
  store ptr null, ptr %25, align 4, !dbg !551
  %26 = load ptr, ptr %3, align 4, !dbg !552
  %27 = getelementptr inbounds %struct.k_stack, ptr %26, i32 0, i32 5, !dbg !553
  %28 = load i8, ptr %27, align 4, !dbg !554
  %29 = zext i8 %28 to i32, !dbg !554
  %30 = and i32 %29, -2, !dbg !554
  %31 = trunc i32 %30 to i8, !dbg !554
  store i8 %31, ptr %27, align 4, !dbg !554
  br label %32, !dbg !555

32:                                               ; preds = %20, %13
  br label %33, !dbg !556

33:                                               ; preds = %32
  br label %34, !dbg !557

34:                                               ; preds = %33
  store i32 0, ptr %2, align 4, !dbg !559
  br label %35, !dbg !559

35:                                               ; preds = %34, %12
  %36 = load i32, ptr %2, align 4, !dbg !560
  ret i32 %36, !dbg !560
}

; Function Attrs: noinline nounwind optnone
define internal ptr @z_waitq_head(ptr noundef %0) #0 !dbg !561 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !564, metadata !DIExpression()), !dbg !565
  %3 = load ptr, ptr %2, align 4, !dbg !566
  %4 = getelementptr inbounds %struct._wait_q_t, ptr %3, i32 0, i32 0, !dbg !567
  %5 = call ptr @sys_dlist_peek_head(ptr noundef %4), !dbg !568
  ret ptr %5, !dbg !569
}

declare void @k_free(ptr noundef) #3

; Function Attrs: noinline nounwind optnone
define hidden i32 @z_impl_k_stack_push(ptr noundef %0, i32 noundef %1) #0 !dbg !570 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.z_spinlock_key, align 4
  %10 = alloca ptr, align 4
  %11 = alloca ptr, align 4
  %12 = alloca i32, align 4
  %13 = alloca ptr, align 4
  %14 = alloca %struct.z_spinlock_key, align 4
  %15 = alloca ptr, align 4
  %16 = alloca ptr, align 4
  %17 = alloca i32, align 4
  %18 = alloca ptr, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.z_spinlock_key, align 4
  store ptr %0, ptr %16, align 4
  call void @llvm.dbg.declare(metadata ptr %16, metadata !573, metadata !DIExpression()), !dbg !574
  store i32 %1, ptr %17, align 4
  call void @llvm.dbg.declare(metadata ptr %17, metadata !575, metadata !DIExpression()), !dbg !576
  call void @llvm.dbg.declare(metadata ptr %18, metadata !577, metadata !DIExpression()), !dbg !578
  call void @llvm.dbg.declare(metadata ptr %19, metadata !579, metadata !DIExpression()), !dbg !580
  store i32 0, ptr %19, align 4, !dbg !580
  call void @llvm.dbg.declare(metadata ptr %20, metadata !581, metadata !DIExpression()), !dbg !586
  %21 = load ptr, ptr %16, align 4, !dbg !587
  %22 = getelementptr inbounds %struct.k_stack, ptr %21, i32 0, i32 1, !dbg !588
  store ptr %22, ptr %15, align 4
  call void @llvm.dbg.declare(metadata ptr %15, metadata !589, metadata !DIExpression()), !dbg !594
  %23 = load ptr, ptr %15, align 4, !dbg !596
  call void @llvm.dbg.declare(metadata ptr %14, metadata !597, metadata !DIExpression()), !dbg !598
  call void @llvm.dbg.declare(metadata ptr %8, metadata !599, metadata !DIExpression()), !dbg !604
  %24 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #4, !dbg !606, !srcloc !607
  store i32 %24, ptr %8, align 4, !dbg !606
  %25 = load i32, ptr %8, align 4, !dbg !608
  store i32 %25, ptr %14, align 4, !dbg !609
  %26 = load ptr, ptr %15, align 4, !dbg !610
  store ptr %26, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !611, metadata !DIExpression()), !dbg !615
  %27 = load ptr, ptr %7, align 4, !dbg !617
  %28 = load ptr, ptr %15, align 4, !dbg !618
  store ptr %28, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !619, metadata !DIExpression()), !dbg !621
  %29 = load ptr, ptr %6, align 4, !dbg !623
  %30 = load i32, ptr %14, align 4, !dbg !624
  %31 = getelementptr inbounds %struct.z_spinlock_key, ptr %20, i32 0, i32 0, !dbg !625
  store i32 %30, ptr %31, align 4, !dbg !625
  br label %32, !dbg !626

32:                                               ; preds = %2
  br label %33, !dbg !627

33:                                               ; preds = %32
  %34 = load ptr, ptr %16, align 4, !dbg !629
  %35 = getelementptr inbounds %struct.k_stack, ptr %34, i32 0, i32 3, !dbg !631
  %36 = load ptr, ptr %35, align 4, !dbg !631
  %37 = load ptr, ptr %16, align 4, !dbg !632
  %38 = getelementptr inbounds %struct.k_stack, ptr %37, i32 0, i32 4, !dbg !633
  %39 = load ptr, ptr %38, align 4, !dbg !633
  %40 = icmp eq ptr %36, %39, !dbg !634
  br i1 %40, label %41, label %42, !dbg !635

41:                                               ; preds = %33
  store i32 -6, ptr %19, align 4, !dbg !636
  br label %75, !dbg !638

42:                                               ; preds = %33
  %43 = load ptr, ptr %16, align 4, !dbg !639
  %44 = getelementptr inbounds %struct.k_stack, ptr %43, i32 0, i32 0, !dbg !640
  %45 = call ptr @z_unpend_first_thread(ptr noundef %44), !dbg !641
  store ptr %45, ptr %18, align 4, !dbg !642
  %46 = load ptr, ptr %18, align 4, !dbg !643
  %47 = icmp ne ptr %46, null, !dbg !645
  br i1 %47, label %48, label %66, !dbg !646

48:                                               ; preds = %42
  %49 = load ptr, ptr %18, align 4, !dbg !647
  %50 = load i32, ptr %17, align 4, !dbg !649
  %51 = inttoptr i32 %50 to ptr, !dbg !650
  store ptr %49, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !651, metadata !DIExpression()), !dbg !655
  store i32 0, ptr %12, align 4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !657, metadata !DIExpression()), !dbg !658
  store ptr %51, ptr %13, align 4
  call void @llvm.dbg.declare(metadata ptr %13, metadata !659, metadata !DIExpression()), !dbg !660
  %52 = load ptr, ptr %11, align 4, !dbg !661
  %53 = load i32, ptr %12, align 4, !dbg !662
  store ptr %52, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !663, metadata !DIExpression()), !dbg !668
  store i32 %53, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !670, metadata !DIExpression()), !dbg !671
  %54 = load i32, ptr %5, align 4, !dbg !672
  %55 = load ptr, ptr %4, align 4, !dbg !673
  %56 = getelementptr inbounds %struct.k_thread, ptr %55, i32 0, i32 6, !dbg !674
  %57 = getelementptr inbounds %struct._thread_arch, ptr %56, i32 0, i32 1, !dbg !675
  store i32 %54, ptr %57, align 4, !dbg !676
  %58 = load ptr, ptr %13, align 4, !dbg !677
  %59 = load ptr, ptr %11, align 4, !dbg !678
  %60 = getelementptr inbounds %struct._thread_base, ptr %59, i32 0, i32 6, !dbg !679
  store ptr %58, ptr %60, align 4, !dbg !680
  %61 = load ptr, ptr %18, align 4, !dbg !681
  call void @z_ready_thread(ptr noundef %61), !dbg !682
  %62 = load ptr, ptr %16, align 4, !dbg !683
  %63 = getelementptr inbounds %struct.k_stack, ptr %62, i32 0, i32 1, !dbg !684
  %64 = getelementptr inbounds %struct.z_spinlock_key, ptr %20, i32 0, i32 0, !dbg !685
  %65 = load [1 x i32], ptr %64, align 4, !dbg !685
  call void @z_reschedule(ptr noundef %63, [1 x i32] %65), !dbg !685
  br label %86, !dbg !686

66:                                               ; preds = %42
  %67 = load i32, ptr %17, align 4, !dbg !687
  %68 = load ptr, ptr %16, align 4, !dbg !689
  %69 = getelementptr inbounds %struct.k_stack, ptr %68, i32 0, i32 3, !dbg !690
  %70 = load ptr, ptr %69, align 4, !dbg !690
  store i32 %67, ptr %70, align 4, !dbg !691
  %71 = load ptr, ptr %16, align 4, !dbg !692
  %72 = getelementptr inbounds %struct.k_stack, ptr %71, i32 0, i32 3, !dbg !693
  %73 = load ptr, ptr %72, align 4, !dbg !694
  %74 = getelementptr inbounds i32, ptr %73, i32 1, !dbg !694
  store ptr %74, ptr %72, align 4, !dbg !694
  br label %75, !dbg !695

75:                                               ; preds = %66, %41
  call void @llvm.dbg.label(metadata !696), !dbg !697
  %76 = load ptr, ptr %16, align 4, !dbg !698
  %77 = getelementptr inbounds %struct.k_stack, ptr %76, i32 0, i32 1, !dbg !699
  %78 = getelementptr inbounds %struct.z_spinlock_key, ptr %20, i32 0, i32 0, !dbg !700
  %79 = load [1 x i32], ptr %78, align 4, !dbg !700
  store [1 x i32] %79, ptr %9, align 4
  store ptr %77, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !701, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.declare(metadata ptr %9, metadata !707, metadata !DIExpression()), !dbg !708
  %80 = load ptr, ptr %10, align 4, !dbg !709
  %81 = load i32, ptr %9, align 4, !dbg !710
  store i32 %81, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !711, metadata !DIExpression()), !dbg !715
  %82 = load i32, ptr %3, align 4, !dbg !717
  %83 = icmp ne i32 %82, 0, !dbg !719
  br i1 %83, label %84, label %85, !dbg !720

84:                                               ; preds = %75
  br label %arch_irq_unlock.exit, !dbg !721

85:                                               ; preds = %75
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #4, !dbg !723, !srcloc !724
  br label %arch_irq_unlock.exit, !dbg !725

arch_irq_unlock.exit:                             ; preds = %84, %85
  br label %86, !dbg !700

86:                                               ; preds = %arch_irq_unlock.exit, %48
  call void @llvm.dbg.label(metadata !726), !dbg !727
  br label %87, !dbg !728

87:                                               ; preds = %86
  br label %88, !dbg !729

88:                                               ; preds = %87
  %89 = load i32, ptr %19, align 4, !dbg !731
  ret i32 %89, !dbg !732
}

declare ptr @z_unpend_first_thread(ptr noundef) #3

declare void @z_ready_thread(ptr noundef) #3

declare void @z_reschedule(ptr noundef, [1 x i32]) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline nounwind optnone
define hidden i32 @z_impl_k_stack_pop(ptr noundef %0, ptr noundef %1, [1 x i64] %2) #0 !dbg !733 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.z_spinlock_key, align 4
  %10 = alloca ptr, align 4
  %11 = alloca %struct.z_spinlock_key, align 4
  %12 = alloca ptr, align 4
  %13 = alloca %struct.z_spinlock_key, align 4
  %14 = alloca ptr, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.k_timeout_t, align 8
  %17 = alloca ptr, align 4
  %18 = alloca ptr, align 4
  %19 = alloca %struct.z_spinlock_key, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.z_spinlock_key, align 4
  %22 = alloca %struct.k_timeout_t, align 8
  %23 = getelementptr inbounds %struct.k_timeout_t, ptr %16, i32 0, i32 0
  store [1 x i64] %2, ptr %23, align 8
  store ptr %0, ptr %17, align 4
  call void @llvm.dbg.declare(metadata ptr %17, metadata !736, metadata !DIExpression()), !dbg !737
  store ptr %1, ptr %18, align 4
  call void @llvm.dbg.declare(metadata ptr %18, metadata !738, metadata !DIExpression()), !dbg !739
  call void @llvm.dbg.declare(metadata ptr %16, metadata !740, metadata !DIExpression()), !dbg !741
  call void @llvm.dbg.declare(metadata ptr %19, metadata !742, metadata !DIExpression()), !dbg !743
  call void @llvm.dbg.declare(metadata ptr %20, metadata !744, metadata !DIExpression()), !dbg !745
  %24 = load ptr, ptr %17, align 4, !dbg !746
  %25 = getelementptr inbounds %struct.k_stack, ptr %24, i32 0, i32 1, !dbg !747
  store ptr %25, ptr %14, align 4
  call void @llvm.dbg.declare(metadata ptr %14, metadata !589, metadata !DIExpression()), !dbg !748
  %26 = load ptr, ptr %14, align 4, !dbg !750
  call void @llvm.dbg.declare(metadata ptr %13, metadata !597, metadata !DIExpression()), !dbg !751
  call void @llvm.dbg.declare(metadata ptr %8, metadata !599, metadata !DIExpression()), !dbg !752
  %27 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #4, !dbg !754, !srcloc !607
  store i32 %27, ptr %8, align 4, !dbg !754
  %28 = load i32, ptr %8, align 4, !dbg !755
  store i32 %28, ptr %13, align 4, !dbg !756
  %29 = load ptr, ptr %14, align 4, !dbg !757
  store ptr %29, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !611, metadata !DIExpression()), !dbg !758
  %30 = load ptr, ptr %7, align 4, !dbg !760
  %31 = load ptr, ptr %14, align 4, !dbg !761
  store ptr %31, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !619, metadata !DIExpression()), !dbg !762
  %32 = load ptr, ptr %6, align 4, !dbg !764
  %33 = load i32, ptr %13, align 4, !dbg !765
  %34 = getelementptr inbounds %struct.z_spinlock_key, ptr %21, i32 0, i32 0, !dbg !766
  store i32 %33, ptr %34, align 4, !dbg !766
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %19, ptr align 4 %21, i32 4, i1 false), !dbg !766
  br label %35, !dbg !767

35:                                               ; preds = %3
  br label %36, !dbg !768

36:                                               ; preds = %35
  %37 = load ptr, ptr %17, align 4, !dbg !770
  %38 = getelementptr inbounds %struct.k_stack, ptr %37, i32 0, i32 3, !dbg !772
  %39 = load ptr, ptr %38, align 4, !dbg !772
  %40 = load ptr, ptr %17, align 4, !dbg !773
  %41 = getelementptr inbounds %struct.k_stack, ptr %40, i32 0, i32 2, !dbg !774
  %42 = load ptr, ptr %41, align 4, !dbg !774
  %43 = icmp ugt ptr %39, %42, !dbg !775
  %44 = xor i1 %43, true, !dbg !776
  %45 = xor i1 %44, true, !dbg !777
  %46 = zext i1 %45 to i32, !dbg !778
  %47 = icmp ne i32 %46, 0, !dbg !779
  br i1 %47, label %48, label %70, !dbg !780

48:                                               ; preds = %36
  %49 = load ptr, ptr %17, align 4, !dbg !781
  %50 = getelementptr inbounds %struct.k_stack, ptr %49, i32 0, i32 3, !dbg !783
  %51 = load ptr, ptr %50, align 4, !dbg !784
  %52 = getelementptr inbounds i32, ptr %51, i32 -1, !dbg !784
  store ptr %52, ptr %50, align 4, !dbg !784
  %53 = load ptr, ptr %17, align 4, !dbg !785
  %54 = getelementptr inbounds %struct.k_stack, ptr %53, i32 0, i32 3, !dbg !786
  %55 = load ptr, ptr %54, align 4, !dbg !786
  %56 = load i32, ptr %55, align 4, !dbg !787
  %57 = load ptr, ptr %18, align 4, !dbg !788
  store i32 %56, ptr %57, align 4, !dbg !789
  %58 = load ptr, ptr %17, align 4, !dbg !790
  %59 = getelementptr inbounds %struct.k_stack, ptr %58, i32 0, i32 1, !dbg !791
  %60 = getelementptr inbounds %struct.z_spinlock_key, ptr %19, i32 0, i32 0, !dbg !792
  %61 = load [1 x i32], ptr %60, align 4, !dbg !792
  store [1 x i32] %61, ptr %9, align 4
  store ptr %59, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !701, metadata !DIExpression()), !dbg !793
  call void @llvm.dbg.declare(metadata ptr %9, metadata !707, metadata !DIExpression()), !dbg !795
  %62 = load ptr, ptr %10, align 4, !dbg !796
  %63 = load i32, ptr %9, align 4, !dbg !797
  store i32 %63, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !711, metadata !DIExpression()), !dbg !798
  %64 = load i32, ptr %5, align 4, !dbg !800
  %65 = icmp ne i32 %64, 0, !dbg !801
  br i1 %65, label %66, label %67, !dbg !802

66:                                               ; preds = %48
  br label %arch_irq_unlock.exit, !dbg !803

67:                                               ; preds = %48
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #4, !dbg !804, !srcloc !724
  br label %arch_irq_unlock.exit, !dbg !805

arch_irq_unlock.exit:                             ; preds = %66, %67
  br label %68, !dbg !806

68:                                               ; preds = %arch_irq_unlock.exit
  br label %69, !dbg !807

69:                                               ; preds = %68
  store i32 0, ptr %15, align 4, !dbg !809
  br label %114, !dbg !809

70:                                               ; preds = %36
  br label %71, !dbg !810

71:                                               ; preds = %70
  br label %72, !dbg !811

72:                                               ; preds = %71
  %73 = getelementptr inbounds %struct.k_timeout_t, ptr %16, i32 0, i32 0, !dbg !813
  %74 = load i64, ptr %73, align 8, !dbg !813
  %75 = getelementptr inbounds %struct.k_timeout_t, ptr %22, i32 0, i32 0, !dbg !815
  store i64 0, ptr %75, align 8, !dbg !815
  %76 = icmp eq i64 %74, 0, !dbg !816
  br i1 %76, label %77, label %90, !dbg !817

77:                                               ; preds = %72
  %78 = load ptr, ptr %17, align 4, !dbg !818
  %79 = getelementptr inbounds %struct.k_stack, ptr %78, i32 0, i32 1, !dbg !820
  %80 = getelementptr inbounds %struct.z_spinlock_key, ptr %19, i32 0, i32 0, !dbg !821
  %81 = load [1 x i32], ptr %80, align 4, !dbg !821
  store [1 x i32] %81, ptr %11, align 4
  store ptr %79, ptr %12, align 4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !701, metadata !DIExpression()), !dbg !822
  call void @llvm.dbg.declare(metadata ptr %11, metadata !707, metadata !DIExpression()), !dbg !824
  %82 = load ptr, ptr %12, align 4, !dbg !825
  %83 = load i32, ptr %11, align 4, !dbg !826
  store i32 %83, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !711, metadata !DIExpression()), !dbg !827
  %84 = load i32, ptr %4, align 4, !dbg !829
  %85 = icmp ne i32 %84, 0, !dbg !830
  br i1 %85, label %86, label %87, !dbg !831

86:                                               ; preds = %77
  br label %arch_irq_unlock.exit1, !dbg !832

87:                                               ; preds = %77
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #4, !dbg !833, !srcloc !724
  br label %arch_irq_unlock.exit1, !dbg !834

arch_irq_unlock.exit1:                            ; preds = %86, %87
  br label %88, !dbg !835

88:                                               ; preds = %arch_irq_unlock.exit1
  br label %89, !dbg !836

89:                                               ; preds = %88
  store i32 -16, ptr %15, align 4, !dbg !838
  br label %114, !dbg !838

90:                                               ; preds = %72
  %91 = load ptr, ptr %17, align 4, !dbg !839
  %92 = getelementptr inbounds %struct.k_stack, ptr %91, i32 0, i32 1, !dbg !840
  %93 = load ptr, ptr %17, align 4, !dbg !841
  %94 = getelementptr inbounds %struct.k_stack, ptr %93, i32 0, i32 0, !dbg !842
  %95 = getelementptr inbounds %struct.z_spinlock_key, ptr %19, i32 0, i32 0, !dbg !843
  %96 = load [1 x i32], ptr %95, align 4, !dbg !843
  %97 = getelementptr inbounds %struct.k_timeout_t, ptr %16, i32 0, i32 0, !dbg !843
  %98 = load [1 x i64], ptr %97, align 8, !dbg !843
  %99 = call i32 @z_pend_curr(ptr noundef %92, [1 x i32] %96, ptr noundef %94, [1 x i64] %98), !dbg !843
  store i32 %99, ptr %20, align 4, !dbg !844
  %100 = load i32, ptr %20, align 4, !dbg !845
  %101 = icmp eq i32 %100, -11, !dbg !847
  br i1 %101, label %102, label %105, !dbg !848

102:                                              ; preds = %90
  br label %103, !dbg !849

103:                                              ; preds = %102
  br label %104, !dbg !851

104:                                              ; preds = %103
  store i32 -11, ptr %15, align 4, !dbg !853
  br label %114, !dbg !853

105:                                              ; preds = %90
  %106 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !854
  %107 = getelementptr inbounds %struct.k_thread, ptr %106, i32 0, i32 0, !dbg !855
  %108 = getelementptr inbounds %struct._thread_base, ptr %107, i32 0, i32 6, !dbg !856
  %109 = load ptr, ptr %108, align 4, !dbg !856
  %110 = ptrtoint ptr %109 to i32, !dbg !857
  %111 = load ptr, ptr %18, align 4, !dbg !858
  store i32 %110, ptr %111, align 4, !dbg !859
  br label %112, !dbg !860

112:                                              ; preds = %105
  br label %113, !dbg !861

113:                                              ; preds = %112
  store i32 0, ptr %15, align 4, !dbg !863
  br label %114, !dbg !863

114:                                              ; preds = %113, %104, %89, %69
  %115 = load i32, ptr %15, align 4, !dbg !864
  ret i32 %115, !dbg !864
}

declare i32 @z_pend_curr(ptr noundef, [1 x i32], ptr noundef, [1 x i64]) #3

declare i64 @z_timeout_expires(ptr noundef) #3

declare i64 @z_timeout_remaining(ptr noundef) #3

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @sys_sflist_is_empty(ptr noundef %0) #0 !dbg !865 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !869, metadata !DIExpression()), !dbg !870
  %3 = load ptr, ptr %2, align 4, !dbg !871
  %4 = call ptr @sys_sflist_peek_head(ptr noundef %3), !dbg !872
  %5 = icmp eq ptr %4, null, !dbg !873
  ret i1 %5, !dbg !874
}

; Function Attrs: noinline nounwind optnone
define internal ptr @sys_sflist_peek_head(ptr noundef %0) #0 !dbg !875 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !878, metadata !DIExpression()), !dbg !879
  %3 = load ptr, ptr %2, align 4, !dbg !880
  %4 = getelementptr inbounds %struct._sflist, ptr %3, i32 0, i32 0, !dbg !881
  %5 = load ptr, ptr %4, align 4, !dbg !881
  ret ptr %5, !dbg !882
}

; Function Attrs: noinline nounwind optnone
define internal void @sys_dlist_init(ptr noundef %0) #0 !dbg !883 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !887, metadata !DIExpression()), !dbg !888
  %3 = load ptr, ptr %2, align 4, !dbg !889
  %4 = load ptr, ptr %2, align 4, !dbg !890
  %5 = getelementptr inbounds %struct._dnode, ptr %4, i32 0, i32 0, !dbg !891
  store ptr %3, ptr %5, align 4, !dbg !892
  %6 = load ptr, ptr %2, align 4, !dbg !893
  %7 = load ptr, ptr %2, align 4, !dbg !894
  %8 = getelementptr inbounds %struct._dnode, ptr %7, i32 0, i32 1, !dbg !895
  store ptr %6, ptr %8, align 4, !dbg !896
  ret void, !dbg !897
}

declare ptr @z_thread_aligned_alloc(i32 noundef, i32 noundef) #3

; Function Attrs: noinline nounwind optnone
define internal ptr @sys_dlist_peek_head(ptr noundef %0) #0 !dbg !898 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !901, metadata !DIExpression()), !dbg !902
  %3 = load ptr, ptr %2, align 4, !dbg !903
  %4 = call zeroext i1 @sys_dlist_is_empty(ptr noundef %3), !dbg !904
  br i1 %4, label %5, label %6, !dbg !904

5:                                                ; preds = %1
  br label %10, !dbg !904

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 4, !dbg !905
  %8 = getelementptr inbounds %struct._dnode, ptr %7, i32 0, i32 0, !dbg !906
  %9 = load ptr, ptr %8, align 4, !dbg !906
  br label %10, !dbg !904

10:                                               ; preds = %6, %5
  %11 = phi ptr [ null, %5 ], [ %9, %6 ], !dbg !904
  ret ptr %11, !dbg !907
}

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @sys_dlist_is_empty(ptr noundef %0) #0 !dbg !908 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !911, metadata !DIExpression()), !dbg !912
  %3 = load ptr, ptr %2, align 4, !dbg !913
  %4 = getelementptr inbounds %struct._dnode, ptr %3, i32 0, i32 0, !dbg !914
  %5 = load ptr, ptr %4, align 4, !dbg !914
  %6 = load ptr, ptr %2, align 4, !dbg !915
  %7 = icmp eq ptr %5, %6, !dbg !916
  ret i1 %7, !dbg !917
}

attributes #0 = { noinline nounwind optnone "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!213, !214, !215, !216, !217, !218, !219, !220}
!llvm.ident = !{!221}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !86, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "stack.c", directory: "/home/sri/zephyrproject/zephyr/build")
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
!86 = !{!87, !89, !91, !92, !93, !90, !97, !113}
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !88, line: 62, baseType: !5)
!88 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/stdint.h", directory: "")
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !88, line: 58, baseType: !90)
!90 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!92 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "stack_data_t", file: !94, line: 2738, baseType: !95)
!94 = !DIFile(filename: "include/zephyr/kernel.h", directory: "/home/sri/zephyrproject/zephyr")
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !88, line: 102, baseType: !96)
!96 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 32)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dnode_t", file: !99, line: 55, baseType: !100)
!99 = !DIFile(filename: "include/zephyr/sys/dlist.h", directory: "/home/sri/zephyrproject/zephyr")
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_dnode", file: !99, line: 37, size: 64, elements: !101)
!101 = !{!102, !108}
!102 = !DIDerivedType(tag: DW_TAG_member, scope: !100, file: !99, line: 38, baseType: !103, size: 32)
!103 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !100, file: !99, line: 38, size: 32, elements: !104)
!104 = !{!105, !107}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !103, file: !99, line: 39, baseType: !106, size: 32)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 32)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !103, file: !99, line: 40, baseType: !106, size: 32)
!108 = !DIDerivedType(tag: DW_TAG_member, scope: !100, file: !99, line: 42, baseType: !109, size: 32, offset: 32)
!109 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !100, file: !99, line: 42, size: 32, elements: !110)
!110 = !{!111, !112}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !109, file: !99, line: 43, baseType: !106, size: 32)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !109, file: !99, line: 44, baseType: !106, size: 32)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 32)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_thread", file: !115, line: 250, size: 896, elements: !116)
!115 = !DIFile(filename: "include/zephyr/kernel/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!116 = !{!117, !172, !185, !186, !187, !188, !208}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !114, file: !115, line: 252, baseType: !118, size: 384)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_base", file: !115, line: 58, size: 384, elements: !119)
!119 = !{!120, !133, !141, !142, !143, !156, !158, !159}
!120 = !DIDerivedType(tag: DW_TAG_member, scope: !118, file: !115, line: 61, baseType: !121, size: 64)
!121 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !118, file: !115, line: 61, size: 64, elements: !122)
!122 = !{!123, !124}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_dlist", scope: !121, file: !115, line: 62, baseType: !98, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_rb", scope: !121, file: !115, line: 63, baseType: !125, size: 64)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rbnode", file: !126, line: 58, size: 64, elements: !127)
!126 = !DIFile(filename: "include/zephyr/sys/rb.h", directory: "/home/sri/zephyrproject/zephyr")
!127 = !{!128}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !125, file: !126, line: 60, baseType: !129, size: 64)
!129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 64, elements: !131)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 32)
!131 = !{!132}
!132 = !DISubrange(count: 2)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "pended_on", scope: !118, file: !115, line: 69, baseType: !134, size: 32, offset: 64)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 32)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "_wait_q_t", file: !136, line: 243, baseType: !137)
!136 = !DIFile(filename: "include/zephyr/kernel_structs.h", directory: "/home/sri/zephyrproject/zephyr")
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !136, line: 241, size: 64, elements: !138)
!138 = !{!139}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !137, file: !136, line: 242, baseType: !140, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dlist_t", file: !99, line: 51, baseType: !100)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "user_options", scope: !118, file: !115, line: 72, baseType: !87, size: 8, offset: 96)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "thread_state", scope: !118, file: !115, line: 75, baseType: !87, size: 8, offset: 104)
!143 = !DIDerivedType(tag: DW_TAG_member, scope: !118, file: !115, line: 91, baseType: !144, size: 16, offset: 112)
!144 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !118, file: !115, line: 91, size: 16, elements: !145)
!145 = !{!146, !153}
!146 = !DIDerivedType(tag: DW_TAG_member, scope: !144, file: !115, line: 92, baseType: !147, size: 16)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !144, file: !115, line: 92, size: 16, elements: !148)
!148 = !{!149, !152}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !147, file: !115, line: 97, baseType: !150, size: 8)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !88, line: 56, baseType: !151)
!151 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "sched_locked", scope: !147, file: !115, line: 98, baseType: !87, size: 8, offset: 8)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "preempt", scope: !144, file: !115, line: 101, baseType: !154, size: 16)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !88, line: 63, baseType: !155)
!155 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "order_key", scope: !118, file: !115, line: 108, baseType: !157, size: 32, offset: 128)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !88, line: 64, baseType: !96)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "swap_data", scope: !118, file: !115, line: 132, baseType: !91, size: 32, offset: 160)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !118, file: !115, line: 136, baseType: !160, size: 192, offset: 192)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_timeout", file: !136, line: 254, size: 192, elements: !161)
!161 = !{!162, !163, !169}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !160, file: !136, line: 255, baseType: !98, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !160, file: !136, line: 256, baseType: !164, size: 32, offset: 64)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "_timeout_func_t", file: !136, line: 252, baseType: !165)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 32)
!166 = !DISubroutineType(types: !167)
!167 = !{null, !168}
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 32)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "dticks", scope: !160, file: !136, line: 259, baseType: !170, size: 64, offset: 128)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !88, line: 59, baseType: !171)
!171 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "callee_saved", scope: !114, file: !115, line: 255, baseType: !173, size: 288, offset: 384)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_callee_saved", file: !174, line: 25, size: 288, elements: !175)
!174 = !DIFile(filename: "include/zephyr/arch/arm/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!175 = !{!176, !177, !178, !179, !180, !181, !182, !183, !184}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "v1", scope: !173, file: !174, line: 26, baseType: !157, size: 32)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "v2", scope: !173, file: !174, line: 27, baseType: !157, size: 32, offset: 32)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "v3", scope: !173, file: !174, line: 28, baseType: !157, size: 32, offset: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "v4", scope: !173, file: !174, line: 29, baseType: !157, size: 32, offset: 96)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "v5", scope: !173, file: !174, line: 30, baseType: !157, size: 32, offset: 128)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "v6", scope: !173, file: !174, line: 31, baseType: !157, size: 32, offset: 160)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "v7", scope: !173, file: !174, line: 32, baseType: !157, size: 32, offset: 192)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "v8", scope: !173, file: !174, line: 33, baseType: !157, size: 32, offset: 224)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "psp", scope: !173, file: !174, line: 34, baseType: !157, size: 32, offset: 256)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "init_data", scope: !114, file: !115, line: 258, baseType: !91, size: 32, offset: 672)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "join_queue", scope: !114, file: !115, line: 261, baseType: !135, size: 64, offset: 704)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "errno_var", scope: !114, file: !115, line: 302, baseType: !90, size: 32, offset: 768)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "resource_pool", scope: !114, file: !115, line: 333, baseType: !189, size: 32, offset: 800)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 32)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_heap", file: !94, line: 5291, size: 160, elements: !191)
!191 = !{!192, !203, !204}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !190, file: !94, line: 5292, baseType: !193, size: 96)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sys_heap", file: !194, line: 56, size: 96, elements: !195)
!194 = !DIFile(filename: "include/zephyr/sys/sys_heap.h", directory: "/home/sri/zephyrproject/zephyr")
!195 = !{!196, !199, !200}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !193, file: !194, line: 57, baseType: !197, size: 32)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 32)
!198 = !DICompositeType(tag: DW_TAG_structure_type, name: "z_heap", file: !194, line: 57, flags: DIFlagFwdDecl)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "init_mem", scope: !193, file: !194, line: 58, baseType: !91, size: 32, offset: 32)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "init_bytes", scope: !193, file: !194, line: 59, baseType: !201, size: 32, offset: 64)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !202, line: 46, baseType: !96)
!202 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/lib/clang/17/include/stddef.h", directory: "")
!203 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !190, file: !94, line: 5293, baseType: !135, size: 64, offset: 96)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !190, file: !94, line: 5294, baseType: !205, offset: 160)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_spinlock", file: !206, line: 45, elements: !207)
!206 = !DIFile(filename: "include/zephyr/spinlock.h", directory: "/home/sri/zephyrproject/zephyr")
!207 = !{}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !114, file: !115, line: 355, baseType: !209, size: 64, offset: 832)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_arch", file: !174, line: 60, size: 64, elements: !210)
!210 = !{!211, !212}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "basepri", scope: !209, file: !174, line: 63, baseType: !157, size: 32)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "swap_return_value", scope: !209, file: !174, line: 66, baseType: !157, size: 32, offset: 32)
!213 = !{i32 7, !"Dwarf Version", i32 4}
!214 = !{i32 2, !"Debug Info Version", i32 3}
!215 = !{i32 1, !"wchar_size", i32 4}
!216 = !{i32 1, !"static_rwdata", i32 1}
!217 = !{i32 1, !"enumsize_buildattr", i32 1}
!218 = !{i32 1, !"armlib_unavailable", i32 0}
!219 = !{i32 8, !"PIC Level", i32 2}
!220 = !{i32 7, !"PIE Level", i32 2}
!221 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
!222 = distinct !DISubprogram(name: "z_impl_k_object_access_grant", scope: !4, file: !4, line: 223, type: !223, scopeLine: 225, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !207)
!223 = !DISubroutineType(types: !224)
!224 = !{null, !225, !113}
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 32)
!226 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!227 = !DILocalVariable(name: "object", arg: 1, scope: !222, file: !4, line: 223, type: !225)
!228 = !DILocation(line: 223, column: 61, scope: !222)
!229 = !DILocalVariable(name: "thread", arg: 2, scope: !222, file: !4, line: 224, type: !113)
!230 = !DILocation(line: 224, column: 24, scope: !222)
!231 = !DILocation(line: 226, column: 9, scope: !222)
!232 = !DILocation(line: 227, column: 9, scope: !222)
!233 = !DILocation(line: 228, column: 1, scope: !222)
!234 = distinct !DISubprogram(name: "z_impl_k_object_release", scope: !4, file: !4, line: 243, type: !235, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !207)
!235 = !DISubroutineType(types: !236)
!236 = !{null, !225}
!237 = !DILocalVariable(name: "object", arg: 1, scope: !234, file: !4, line: 243, type: !225)
!238 = !DILocation(line: 243, column: 56, scope: !234)
!239 = !DILocation(line: 245, column: 9, scope: !234)
!240 = !DILocation(line: 246, column: 1, scope: !234)
!241 = distinct !DISubprogram(name: "z_impl_k_object_alloc", scope: !4, file: !4, line: 359, type: !242, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !207)
!242 = !DISubroutineType(types: !243)
!243 = !{!91, !3}
!244 = !DILocalVariable(name: "otype", arg: 1, scope: !241, file: !4, line: 359, type: !3)
!245 = !DILocation(line: 359, column: 58, scope: !241)
!246 = !DILocation(line: 361, column: 9, scope: !241)
!247 = !DILocation(line: 363, column: 2, scope: !241)
!248 = distinct !DISubprogram(name: "z_impl_k_object_alloc_size", scope: !4, file: !4, line: 366, type: !249, scopeLine: 368, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !207)
!249 = !DISubroutineType(types: !250)
!250 = !{!91, !3, !201}
!251 = !DILocalVariable(name: "otype", arg: 1, scope: !248, file: !4, line: 366, type: !3)
!252 = !DILocation(line: 366, column: 63, scope: !248)
!253 = !DILocalVariable(name: "size", arg: 2, scope: !248, file: !4, line: 367, type: !201)
!254 = !DILocation(line: 367, column: 13, scope: !248)
!255 = !DILocation(line: 369, column: 9, scope: !248)
!256 = !DILocation(line: 370, column: 9, scope: !248)
!257 = !DILocation(line: 372, column: 2, scope: !248)
!258 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_expires_ticks", scope: !94, file: !94, line: 656, type: !259, scopeLine: 658, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !207)
!259 = !DISubroutineType(types: !260)
!260 = !{!261, !263}
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_ticks_t", file: !262, line: 46, baseType: !170)
!262 = !DIFile(filename: "include/zephyr/sys_clock.h", directory: "/home/sri/zephyrproject/zephyr")
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 32)
!264 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !114)
!265 = !DILocalVariable(name: "t", arg: 1, scope: !258, file: !94, line: 657, type: !263)
!266 = !DILocation(line: 657, column: 30, scope: !258)
!267 = !DILocation(line: 659, column: 28, scope: !258)
!268 = !DILocation(line: 659, column: 31, scope: !258)
!269 = !DILocation(line: 659, column: 36, scope: !258)
!270 = !DILocation(line: 659, column: 9, scope: !258)
!271 = !DILocation(line: 659, column: 2, scope: !258)
!272 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_remaining_ticks", scope: !94, file: !94, line: 671, type: !259, scopeLine: 673, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !207)
!273 = !DILocalVariable(name: "t", arg: 1, scope: !272, file: !94, line: 672, type: !263)
!274 = !DILocation(line: 672, column: 30, scope: !272)
!275 = !DILocation(line: 674, column: 30, scope: !272)
!276 = !DILocation(line: 674, column: 33, scope: !272)
!277 = !DILocation(line: 674, column: 38, scope: !272)
!278 = !DILocation(line: 674, column: 9, scope: !272)
!279 = !DILocation(line: 674, column: 2, scope: !272)
!280 = distinct !DISubprogram(name: "z_impl_k_timer_expires_ticks", scope: !94, file: !94, line: 1634, type: !281, scopeLine: 1636, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !207)
!281 = !DISubroutineType(types: !282)
!282 = !{!261, !283}
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 32)
!284 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !285)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_timer", file: !94, line: 1439, size: 448, elements: !286)
!286 = !{!287, !288, !289, !294, !295, !300, !301}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !285, file: !94, line: 1445, baseType: !160, size: 192)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !285, file: !94, line: 1448, baseType: !135, size: 64, offset: 192)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_fn", scope: !285, file: !94, line: 1451, baseType: !290, size: 32, offset: 256)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 32)
!291 = !DISubroutineType(types: !292)
!292 = !{null, !293}
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 32)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "stop_fn", scope: !285, file: !94, line: 1454, baseType: !290, size: 32, offset: 288)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !285, file: !94, line: 1457, baseType: !296, size: 64, offset: 320)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_timeout_t", file: !262, line: 67, baseType: !297)
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !262, line: 65, size: 64, elements: !298)
!298 = !{!299}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "ticks", scope: !297, file: !262, line: 66, baseType: !261, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !285, file: !94, line: 1460, baseType: !157, size: 32, offset: 384)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !285, file: !94, line: 1463, baseType: !91, size: 32, offset: 416)
!302 = !DILocalVariable(name: "timer", arg: 1, scope: !280, file: !94, line: 1635, type: !283)
!303 = !DILocation(line: 1635, column: 34, scope: !280)
!304 = !DILocation(line: 1637, column: 28, scope: !280)
!305 = !DILocation(line: 1637, column: 35, scope: !280)
!306 = !DILocation(line: 1637, column: 9, scope: !280)
!307 = !DILocation(line: 1637, column: 2, scope: !280)
!308 = distinct !DISubprogram(name: "z_impl_k_timer_remaining_ticks", scope: !94, file: !94, line: 1649, type: !281, scopeLine: 1651, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !207)
!309 = !DILocalVariable(name: "timer", arg: 1, scope: !308, file: !94, line: 1650, type: !283)
!310 = !DILocation(line: 1650, column: 34, scope: !308)
!311 = !DILocation(line: 1652, column: 30, scope: !308)
!312 = !DILocation(line: 1652, column: 37, scope: !308)
!313 = !DILocation(line: 1652, column: 9, scope: !308)
!314 = !DILocation(line: 1652, column: 2, scope: !308)
!315 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_set", scope: !94, file: !94, line: 1689, type: !316, scopeLine: 1691, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !207)
!316 = !DISubroutineType(types: !317)
!317 = !{null, !293, !91}
!318 = !DILocalVariable(name: "timer", arg: 1, scope: !315, file: !94, line: 1689, type: !293)
!319 = !DILocation(line: 1689, column: 65, scope: !315)
!320 = !DILocalVariable(name: "user_data", arg: 2, scope: !315, file: !94, line: 1690, type: !91)
!321 = !DILocation(line: 1690, column: 19, scope: !315)
!322 = !DILocation(line: 1692, column: 21, scope: !315)
!323 = !DILocation(line: 1692, column: 2, scope: !315)
!324 = !DILocation(line: 1692, column: 9, scope: !315)
!325 = !DILocation(line: 1692, column: 19, scope: !315)
!326 = !DILocation(line: 1693, column: 1, scope: !315)
!327 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_get", scope: !94, file: !94, line: 1704, type: !328, scopeLine: 1705, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !207)
!328 = !DISubroutineType(types: !329)
!329 = !{!91, !283}
!330 = !DILocalVariable(name: "timer", arg: 1, scope: !327, file: !94, line: 1704, type: !283)
!331 = !DILocation(line: 1704, column: 72, scope: !327)
!332 = !DILocation(line: 1706, column: 9, scope: !327)
!333 = !DILocation(line: 1706, column: 16, scope: !327)
!334 = !DILocation(line: 1706, column: 2, scope: !327)
!335 = distinct !DISubprogram(name: "z_impl_k_queue_is_empty", scope: !94, file: !94, line: 2071, type: !336, scopeLine: 2072, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !207)
!336 = !DISubroutineType(types: !337)
!337 = !{!90, !338}
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 32)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_queue", file: !94, line: 1830, size: 128, elements: !340)
!340 = !{!341, !354, !355}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "data_q", scope: !339, file: !94, line: 1831, baseType: !342, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sflist_t", file: !343, line: 60, baseType: !344)
!343 = !DIFile(filename: "include/zephyr/sys/sflist.h", directory: "/home/sri/zephyrproject/zephyr")
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sflist", file: !343, line: 53, size: 64, elements: !345)
!345 = !{!346, !353}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !344, file: !343, line: 54, baseType: !347, size: 32)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 32)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sfnode_t", file: !343, line: 50, baseType: !349)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sfnode", file: !343, line: 44, size: 32, elements: !350)
!350 = !{!351}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "next_and_flags", scope: !349, file: !343, line: 45, baseType: !352, size: 32)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "unative_t", file: !343, line: 40, baseType: !157)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !344, file: !343, line: 55, baseType: !347, size: 32, offset: 32)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !339, file: !94, line: 1832, baseType: !205, offset: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !339, file: !94, line: 1833, baseType: !135, size: 64, offset: 64)
!356 = !DILocalVariable(name: "queue", arg: 1, scope: !335, file: !94, line: 2071, type: !338)
!357 = !DILocation(line: 2071, column: 59, scope: !335)
!358 = !DILocation(line: 2073, column: 35, scope: !335)
!359 = !DILocation(line: 2073, column: 42, scope: !335)
!360 = !DILocation(line: 2073, column: 14, scope: !335)
!361 = !DILocation(line: 2073, column: 9, scope: !335)
!362 = !DILocation(line: 2073, column: 2, scope: !335)
!363 = distinct !DISubprogram(name: "z_impl_k_sem_count_get", scope: !94, file: !94, line: 3209, type: !364, scopeLine: 3210, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !207)
!364 = !DISubroutineType(types: !365)
!365 = !{!96, !366}
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 32)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sem", file: !94, line: 3092, size: 128, elements: !368)
!368 = !{!369, !370, !371}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !367, file: !94, line: 3093, baseType: !135, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !367, file: !94, line: 3094, baseType: !96, size: 32, offset: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !367, file: !94, line: 3095, baseType: !96, size: 32, offset: 96)
!372 = !DILocalVariable(name: "sem", arg: 1, scope: !363, file: !94, line: 3209, type: !366)
!373 = !DILocation(line: 3209, column: 65, scope: !363)
!374 = !DILocation(line: 3211, column: 9, scope: !363)
!375 = !DILocation(line: 3211, column: 14, scope: !363)
!376 = !DILocation(line: 3211, column: 2, scope: !363)
!377 = distinct !DISubprogram(name: "z_impl_k_msgq_num_free_get", scope: !94, file: !94, line: 4649, type: !378, scopeLine: 4650, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !207)
!378 = !DISubroutineType(types: !379)
!379 = !{!157, !380}
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 32)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_msgq", file: !94, line: 4390, size: 320, elements: !382)
!382 = !{!383, !384, !385, !386, !387, !390, !391, !392, !393, !394}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !381, file: !94, line: 4392, baseType: !135, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !381, file: !94, line: 4394, baseType: !205, offset: 64)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "msg_size", scope: !381, file: !94, line: 4396, baseType: !201, size: 32, offset: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !381, file: !94, line: 4398, baseType: !157, size: 32, offset: 96)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_start", scope: !381, file: !94, line: 4400, baseType: !388, size: 32, offset: 128)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 32)
!389 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_end", scope: !381, file: !94, line: 4402, baseType: !388, size: 32, offset: 160)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "read_ptr", scope: !381, file: !94, line: 4404, baseType: !388, size: 32, offset: 192)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "write_ptr", scope: !381, file: !94, line: 4406, baseType: !388, size: 32, offset: 224)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "used_msgs", scope: !381, file: !94, line: 4408, baseType: !157, size: 32, offset: 256)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !381, file: !94, line: 4413, baseType: !87, size: 8, offset: 288)
!395 = !DILocalVariable(name: "msgq", arg: 1, scope: !377, file: !94, line: 4649, type: !380)
!396 = !DILocation(line: 4649, column: 66, scope: !377)
!397 = !DILocation(line: 4651, column: 9, scope: !377)
!398 = !DILocation(line: 4651, column: 15, scope: !377)
!399 = !DILocation(line: 4651, column: 26, scope: !377)
!400 = !DILocation(line: 4651, column: 32, scope: !377)
!401 = !DILocation(line: 4651, column: 24, scope: !377)
!402 = !DILocation(line: 4651, column: 2, scope: !377)
!403 = distinct !DISubprogram(name: "z_impl_k_msgq_num_used_get", scope: !94, file: !94, line: 4665, type: !378, scopeLine: 4666, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !207)
!404 = !DILocalVariable(name: "msgq", arg: 1, scope: !403, file: !94, line: 4665, type: !380)
!405 = !DILocation(line: 4665, column: 66, scope: !403)
!406 = !DILocation(line: 4667, column: 9, scope: !403)
!407 = !DILocation(line: 4667, column: 15, scope: !403)
!408 = !DILocation(line: 4667, column: 2, scope: !403)
!409 = distinct !DISubprogram(name: "k_stack_init", scope: !410, file: !410, line: 26, type: !411, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !207)
!410 = !DIFile(filename: "kernel/stack.c", directory: "/home/sri/zephyrproject/zephyr")
!411 = !DISubroutineType(types: !412)
!412 = !{null, !413, !419, !157}
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 32)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_stack", file: !94, line: 2740, size: 192, elements: !415)
!415 = !{!416, !417, !418, !420, !421, !422}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !414, file: !94, line: 2741, baseType: !135, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !414, file: !94, line: 2742, baseType: !205, offset: 64)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !414, file: !94, line: 2743, baseType: !419, size: 32, offset: 64)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 32)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !414, file: !94, line: 2743, baseType: !419, size: 32, offset: 96)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !414, file: !94, line: 2743, baseType: !419, size: 32, offset: 128)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !414, file: !94, line: 2745, baseType: !87, size: 8, offset: 160)
!423 = !DILocalVariable(name: "stack", arg: 1, scope: !409, file: !410, line: 26, type: !413)
!424 = !DILocation(line: 26, column: 35, scope: !409)
!425 = !DILocalVariable(name: "buffer", arg: 2, scope: !409, file: !410, line: 26, type: !419)
!426 = !DILocation(line: 26, column: 56, scope: !409)
!427 = !DILocalVariable(name: "num_entries", arg: 3, scope: !409, file: !410, line: 27, type: !157)
!428 = !DILocation(line: 27, column: 14, scope: !409)
!429 = !DILocation(line: 29, column: 16, scope: !409)
!430 = !DILocation(line: 29, column: 23, scope: !409)
!431 = !DILocation(line: 29, column: 2, scope: !409)
!432 = !DILocation(line: 30, column: 2, scope: !409)
!433 = !DILocation(line: 30, column: 9, scope: !409)
!434 = !DILocation(line: 30, column: 16, scope: !409)
!435 = !DILocation(line: 31, column: 30, scope: !409)
!436 = !DILocation(line: 31, column: 16, scope: !409)
!437 = !DILocation(line: 31, column: 23, scope: !409)
!438 = !DILocation(line: 31, column: 28, scope: !409)
!439 = !DILocation(line: 31, column: 2, scope: !409)
!440 = !DILocation(line: 31, column: 9, scope: !409)
!441 = !DILocation(line: 31, column: 14, scope: !409)
!442 = !DILocation(line: 32, column: 15, scope: !409)
!443 = !DILocation(line: 32, column: 22, scope: !409)
!444 = !DILocation(line: 32, column: 29, scope: !409)
!445 = !DILocation(line: 32, column: 27, scope: !409)
!446 = !DILocation(line: 32, column: 2, scope: !409)
!447 = !DILocation(line: 32, column: 9, scope: !409)
!448 = !DILocation(line: 32, column: 13, scope: !409)
!449 = !DILocation(line: 34, column: 2, scope: !409)
!450 = !DILocation(line: 34, column: 7, scope: !451)
!451 = distinct !DILexicalBlock(scope: !409, file: !410, line: 34, column: 5)
!452 = !DILocation(line: 35, column: 16, scope: !409)
!453 = !DILocation(line: 35, column: 2, scope: !409)
!454 = !DILocation(line: 40, column: 1, scope: !409)
!455 = distinct !DISubprogram(name: "z_waitq_init", scope: !456, file: !456, line: 47, type: !457, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !207)
!456 = !DIFile(filename: "kernel/include/wait_q.h", directory: "/home/sri/zephyrproject/zephyr")
!457 = !DISubroutineType(types: !458)
!458 = !{null, !134}
!459 = !DILocalVariable(name: "w", arg: 1, scope: !455, file: !456, line: 47, type: !134)
!460 = !DILocation(line: 47, column: 44, scope: !455)
!461 = !DILocation(line: 49, column: 18, scope: !455)
!462 = !DILocation(line: 49, column: 21, scope: !455)
!463 = !DILocation(line: 49, column: 2, scope: !455)
!464 = !DILocation(line: 50, column: 1, scope: !455)
!465 = distinct !DISubprogram(name: "z_object_init", scope: !4, file: !4, line: 215, type: !235, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !207)
!466 = !DILocalVariable(name: "obj", arg: 1, scope: !465, file: !4, line: 215, type: !225)
!467 = !DILocation(line: 215, column: 46, scope: !465)
!468 = !DILocation(line: 217, column: 9, scope: !465)
!469 = !DILocation(line: 218, column: 1, scope: !465)
!470 = distinct !DISubprogram(name: "z_impl_k_stack_alloc_init", scope: !410, file: !410, line: 42, type: !471, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !207)
!471 = !DISubroutineType(types: !472)
!472 = !{!89, !413, !157}
!473 = !DILocalVariable(name: "stack", arg: 1, scope: !470, file: !410, line: 42, type: !413)
!474 = !DILocation(line: 42, column: 51, scope: !470)
!475 = !DILocalVariable(name: "num_entries", arg: 2, scope: !470, file: !410, line: 42, type: !157)
!476 = !DILocation(line: 42, column: 67, scope: !470)
!477 = !DILocalVariable(name: "buffer", scope: !470, file: !410, line: 44, type: !91)
!478 = !DILocation(line: 44, column: 8, scope: !470)
!479 = !DILocalVariable(name: "ret", scope: !470, file: !410, line: 45, type: !89)
!480 = !DILocation(line: 45, column: 10, scope: !470)
!481 = !DILocation(line: 47, column: 2, scope: !470)
!482 = !DILocation(line: 47, column: 7, scope: !483)
!483 = distinct !DILexicalBlock(scope: !470, file: !410, line: 47, column: 5)
!484 = !DILocation(line: 49, column: 27, scope: !470)
!485 = !DILocation(line: 49, column: 39, scope: !470)
!486 = !DILocation(line: 49, column: 11, scope: !470)
!487 = !DILocation(line: 49, column: 9, scope: !470)
!488 = !DILocation(line: 50, column: 6, scope: !489)
!489 = distinct !DILexicalBlock(scope: !470, file: !410, line: 50, column: 6)
!490 = !DILocation(line: 50, column: 13, scope: !489)
!491 = !DILocation(line: 50, column: 6, scope: !470)
!492 = !DILocation(line: 51, column: 16, scope: !493)
!493 = distinct !DILexicalBlock(scope: !489, file: !410, line: 50, column: 19)
!494 = !DILocation(line: 51, column: 23, scope: !493)
!495 = !DILocation(line: 51, column: 31, scope: !493)
!496 = !DILocation(line: 51, column: 3, scope: !493)
!497 = !DILocation(line: 52, column: 3, scope: !493)
!498 = !DILocation(line: 52, column: 10, scope: !493)
!499 = !DILocation(line: 52, column: 16, scope: !493)
!500 = !DILocation(line: 53, column: 7, scope: !493)
!501 = !DILocation(line: 54, column: 2, scope: !493)
!502 = !DILocation(line: 55, column: 7, scope: !503)
!503 = distinct !DILexicalBlock(scope: !489, file: !410, line: 54, column: 9)
!504 = !DILocation(line: 58, column: 2, scope: !470)
!505 = !DILocation(line: 58, column: 7, scope: !506)
!506 = distinct !DILexicalBlock(scope: !470, file: !410, line: 58, column: 5)
!507 = !DILocation(line: 60, column: 9, scope: !470)
!508 = !DILocation(line: 60, column: 2, scope: !470)
!509 = distinct !DISubprogram(name: "z_thread_malloc", scope: !510, file: !510, line: 105, type: !511, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !207)
!510 = !DIFile(filename: "kernel/include/kernel_internal.h", directory: "/home/sri/zephyrproject/zephyr")
!511 = !DISubroutineType(types: !512)
!512 = !{!91, !513}
!513 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !514, line: 51, baseType: !96)
!514 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/string.h", directory: "")
!515 = !DILocalVariable(name: "size", arg: 1, scope: !509, file: !510, line: 105, type: !513)
!516 = !DILocation(line: 105, column: 44, scope: !509)
!517 = !DILocation(line: 107, column: 35, scope: !509)
!518 = !DILocation(line: 107, column: 9, scope: !509)
!519 = !DILocation(line: 107, column: 2, scope: !509)
!520 = distinct !DISubprogram(name: "k_stack_cleanup", scope: !410, file: !410, line: 74, type: !521, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !207)
!521 = !DISubroutineType(types: !522)
!522 = !{!90, !413}
!523 = !DILocalVariable(name: "stack", arg: 1, scope: !520, file: !410, line: 74, type: !413)
!524 = !DILocation(line: 74, column: 37, scope: !520)
!525 = !DILocation(line: 76, column: 2, scope: !520)
!526 = !DILocation(line: 76, column: 7, scope: !527)
!527 = distinct !DILexicalBlock(scope: !520, file: !410, line: 76, column: 5)
!528 = !DILocation(line: 78, column: 20, scope: !529)
!529 = distinct !DILexicalBlock(scope: !520, file: !410, line: 78, column: 6)
!530 = !DILocation(line: 78, column: 27, scope: !529)
!531 = !DILocation(line: 78, column: 6, scope: !529)
!532 = !DILocation(line: 78, column: 35, scope: !529)
!533 = !DILocation(line: 78, column: 6, scope: !520)
!534 = !DILocation(line: 79, column: 3, scope: !535)
!535 = distinct !DILexicalBlock(scope: !529, file: !410, line: 78, column: 41)
!536 = !DILocation(line: 79, column: 8, scope: !537)
!537 = distinct !DILexicalBlock(scope: !535, file: !410, line: 79, column: 6)
!538 = !DILocation(line: 81, column: 3, scope: !535)
!539 = !DILocation(line: 84, column: 7, scope: !540)
!540 = distinct !DILexicalBlock(scope: !520, file: !410, line: 84, column: 6)
!541 = !DILocation(line: 84, column: 14, scope: !540)
!542 = !DILocation(line: 84, column: 20, scope: !540)
!543 = !DILocation(line: 84, column: 36, scope: !540)
!544 = !DILocation(line: 84, column: 6, scope: !520)
!545 = !DILocation(line: 85, column: 10, scope: !546)
!546 = distinct !DILexicalBlock(scope: !540, file: !410, line: 84, column: 51)
!547 = !DILocation(line: 85, column: 17, scope: !546)
!548 = !DILocation(line: 85, column: 3, scope: !546)
!549 = !DILocation(line: 86, column: 3, scope: !546)
!550 = !DILocation(line: 86, column: 10, scope: !546)
!551 = !DILocation(line: 86, column: 15, scope: !546)
!552 = !DILocation(line: 87, column: 3, scope: !546)
!553 = !DILocation(line: 87, column: 10, scope: !546)
!554 = !DILocation(line: 87, column: 16, scope: !546)
!555 = !DILocation(line: 88, column: 2, scope: !546)
!556 = !DILocation(line: 90, column: 2, scope: !520)
!557 = !DILocation(line: 90, column: 7, scope: !558)
!558 = distinct !DILexicalBlock(scope: !520, file: !410, line: 90, column: 5)
!559 = !DILocation(line: 92, column: 2, scope: !520)
!560 = !DILocation(line: 93, column: 1, scope: !520)
!561 = distinct !DISubprogram(name: "z_waitq_head", scope: !456, file: !456, line: 52, type: !562, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !207)
!562 = !DISubroutineType(types: !563)
!563 = !{!113, !134}
!564 = !DILocalVariable(name: "w", arg: 1, scope: !561, file: !456, line: 52, type: !134)
!565 = !DILocation(line: 52, column: 56, scope: !561)
!566 = !DILocation(line: 54, column: 49, scope: !561)
!567 = !DILocation(line: 54, column: 52, scope: !561)
!568 = !DILocation(line: 54, column: 28, scope: !561)
!569 = !DILocation(line: 54, column: 2, scope: !561)
!570 = distinct !DISubprogram(name: "z_impl_k_stack_push", scope: !410, file: !410, line: 95, type: !571, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !207)
!571 = !DISubroutineType(types: !572)
!572 = !{!90, !413, !93}
!573 = !DILocalVariable(name: "stack", arg: 1, scope: !570, file: !410, line: 95, type: !413)
!574 = !DILocation(line: 95, column: 41, scope: !570)
!575 = !DILocalVariable(name: "data", arg: 2, scope: !570, file: !410, line: 95, type: !93)
!576 = !DILocation(line: 95, column: 61, scope: !570)
!577 = !DILocalVariable(name: "first_pending_thread", scope: !570, file: !410, line: 97, type: !113)
!578 = !DILocation(line: 97, column: 19, scope: !570)
!579 = !DILocalVariable(name: "ret", scope: !570, file: !410, line: 98, type: !90)
!580 = !DILocation(line: 98, column: 6, scope: !570)
!581 = !DILocalVariable(name: "key", scope: !570, file: !410, line: 99, type: !582)
!582 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_spinlock_key_t", file: !206, line: 108, baseType: !583)
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "z_spinlock_key", file: !206, line: 34, size: 32, elements: !584)
!584 = !{!585}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !583, file: !206, line: 35, baseType: !90, size: 32)
!586 = !DILocation(line: 99, column: 19, scope: !570)
!587 = !DILocation(line: 99, column: 38, scope: !570)
!588 = !DILocation(line: 99, column: 45, scope: !570)
!589 = !DILocalVariable(name: "l", arg: 1, scope: !590, file: !206, line: 160, type: !593)
!590 = distinct !DISubprogram(name: "k_spin_lock", scope: !206, file: !206, line: 160, type: !591, scopeLine: 161, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !207)
!591 = !DISubroutineType(types: !592)
!592 = !{!582, !593}
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 32)
!594 = !DILocation(line: 160, column: 94, scope: !590, inlinedAt: !595)
!595 = distinct !DILocation(line: 99, column: 25, scope: !570)
!596 = !DILocation(line: 162, column: 9, scope: !590, inlinedAt: !595)
!597 = !DILocalVariable(name: "k", scope: !590, file: !206, line: 163, type: !582)
!598 = !DILocation(line: 163, column: 19, scope: !590, inlinedAt: !595)
!599 = !DILocalVariable(name: "key", scope: !600, file: !601, line: 44, type: !96)
!600 = distinct !DISubprogram(name: "arch_irq_lock", scope: !601, file: !601, line: 42, type: !602, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !207)
!601 = !DIFile(filename: "include/zephyr/arch/arm/asm_inline_gcc.h", directory: "/home/sri/zephyrproject/zephyr")
!602 = !DISubroutineType(types: !603)
!603 = !{!96}
!604 = !DILocation(line: 44, column: 15, scope: !600, inlinedAt: !605)
!605 = distinct !DILocation(line: 169, column: 10, scope: !590, inlinedAt: !595)
!606 = !DILocation(line: 48, column: 2, scope: !600, inlinedAt: !605)
!607 = !{i64 66945}
!608 = !DILocation(line: 80, column: 9, scope: !600, inlinedAt: !605)
!609 = !DILocation(line: 169, column: 8, scope: !590, inlinedAt: !595)
!610 = !DILocation(line: 171, column: 26, scope: !590, inlinedAt: !595)
!611 = !DILocalVariable(name: "l", arg: 1, scope: !612, file: !206, line: 110, type: !593)
!612 = distinct !DISubprogram(name: "z_spinlock_validate_pre", scope: !206, file: !206, line: 110, type: !613, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !207)
!613 = !DISubroutineType(types: !614)
!614 = !{null, !593}
!615 = !DILocation(line: 110, column: 94, scope: !612, inlinedAt: !616)
!616 = distinct !DILocation(line: 171, column: 2, scope: !590, inlinedAt: !595)
!617 = !DILocation(line: 112, column: 9, scope: !612, inlinedAt: !616)
!618 = !DILocation(line: 177, column: 27, scope: !590, inlinedAt: !595)
!619 = !DILocalVariable(name: "l", arg: 1, scope: !620, file: !206, line: 121, type: !593)
!620 = distinct !DISubprogram(name: "z_spinlock_validate_post", scope: !206, file: !206, line: 121, type: !613, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !207)
!621 = !DILocation(line: 121, column: 95, scope: !620, inlinedAt: !622)
!622 = distinct !DILocation(line: 177, column: 2, scope: !590, inlinedAt: !595)
!623 = !DILocation(line: 123, column: 9, scope: !620, inlinedAt: !622)
!624 = !DILocation(line: 179, column: 2, scope: !590, inlinedAt: !595)
!625 = !DILocation(line: 99, column: 25, scope: !570)
!626 = !DILocation(line: 101, column: 2, scope: !570)
!627 = !DILocation(line: 101, column: 7, scope: !628)
!628 = distinct !DILexicalBlock(scope: !570, file: !410, line: 101, column: 5)
!629 = !DILocation(line: 103, column: 6, scope: !630)
!630 = distinct !DILexicalBlock(scope: !570, file: !410, line: 103, column: 6)
!631 = !DILocation(line: 103, column: 13, scope: !630)
!632 = !DILocation(line: 103, column: 21, scope: !630)
!633 = !DILocation(line: 103, column: 28, scope: !630)
!634 = !DILocation(line: 103, column: 18, scope: !630)
!635 = !DILocation(line: 103, column: 6, scope: !570)
!636 = !DILocation(line: 104, column: 7, scope: !637)
!637 = distinct !DILexicalBlock(scope: !630, file: !410, line: 103, column: 33)
!638 = !DILocation(line: 105, column: 3, scope: !637)
!639 = !DILocation(line: 108, column: 48, scope: !570)
!640 = !DILocation(line: 108, column: 55, scope: !570)
!641 = !DILocation(line: 108, column: 25, scope: !570)
!642 = !DILocation(line: 108, column: 23, scope: !570)
!643 = !DILocation(line: 110, column: 6, scope: !644)
!644 = distinct !DILexicalBlock(scope: !570, file: !410, line: 110, column: 6)
!645 = !DILocation(line: 110, column: 27, scope: !644)
!646 = !DILocation(line: 110, column: 6, scope: !570)
!647 = !DILocation(line: 111, column: 39, scope: !648)
!648 = distinct !DILexicalBlock(scope: !644, file: !410, line: 110, column: 33)
!649 = !DILocation(line: 112, column: 21, scope: !648)
!650 = !DILocation(line: 112, column: 13, scope: !648)
!651 = !DILocalVariable(name: "thread", arg: 1, scope: !652, file: !510, line: 137, type: !113)
!652 = distinct !DISubprogram(name: "z_thread_return_value_set_with_data", scope: !510, file: !510, line: 137, type: !653, scopeLine: 140, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !207)
!653 = !DISubroutineType(types: !654)
!654 = !{null, !113, !96, !91}
!655 = !DILocation(line: 137, column: 54, scope: !652, inlinedAt: !656)
!656 = distinct !DILocation(line: 111, column: 3, scope: !648)
!657 = !DILocalVariable(name: "value", arg: 2, scope: !652, file: !510, line: 138, type: !96)
!658 = !DILocation(line: 138, column: 21, scope: !652, inlinedAt: !656)
!659 = !DILocalVariable(name: "data", arg: 3, scope: !652, file: !510, line: 139, type: !91)
!660 = !DILocation(line: 139, column: 14, scope: !652, inlinedAt: !656)
!661 = !DILocation(line: 141, column: 31, scope: !652, inlinedAt: !656)
!662 = !DILocation(line: 141, column: 39, scope: !652, inlinedAt: !656)
!663 = !DILocalVariable(name: "thread", arg: 1, scope: !664, file: !665, line: 59, type: !113)
!664 = distinct !DISubprogram(name: "arch_thread_return_value_set", scope: !665, file: !665, line: 59, type: !666, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !207)
!665 = !DIFile(filename: "arch/arm/include/cortex_m/kernel_arch_func.h", directory: "/home/sri/zephyrproject/zephyr")
!666 = !DISubroutineType(types: !667)
!667 = !{null, !113, !96}
!668 = !DILocation(line: 59, column: 47, scope: !664, inlinedAt: !669)
!669 = distinct !DILocation(line: 141, column: 2, scope: !652, inlinedAt: !656)
!670 = !DILocalVariable(name: "value", arg: 2, scope: !664, file: !665, line: 59, type: !96)
!671 = !DILocation(line: 59, column: 68, scope: !664, inlinedAt: !669)
!672 = !DILocation(line: 61, column: 35, scope: !664, inlinedAt: !669)
!673 = !DILocation(line: 61, column: 2, scope: !664, inlinedAt: !669)
!674 = !DILocation(line: 61, column: 10, scope: !664, inlinedAt: !669)
!675 = !DILocation(line: 61, column: 15, scope: !664, inlinedAt: !669)
!676 = !DILocation(line: 61, column: 33, scope: !664, inlinedAt: !669)
!677 = !DILocation(line: 142, column: 27, scope: !652, inlinedAt: !656)
!678 = !DILocation(line: 142, column: 2, scope: !652, inlinedAt: !656)
!679 = !DILocation(line: 142, column: 15, scope: !652, inlinedAt: !656)
!680 = !DILocation(line: 142, column: 25, scope: !652, inlinedAt: !656)
!681 = !DILocation(line: 114, column: 18, scope: !648)
!682 = !DILocation(line: 114, column: 3, scope: !648)
!683 = !DILocation(line: 115, column: 17, scope: !648)
!684 = !DILocation(line: 115, column: 24, scope: !648)
!685 = !DILocation(line: 115, column: 3, scope: !648)
!686 = !DILocation(line: 116, column: 3, scope: !648)
!687 = !DILocation(line: 118, column: 20, scope: !688)
!688 = distinct !DILexicalBlock(scope: !644, file: !410, line: 117, column: 9)
!689 = !DILocation(line: 118, column: 5, scope: !688)
!690 = !DILocation(line: 118, column: 12, scope: !688)
!691 = !DILocation(line: 118, column: 18, scope: !688)
!692 = !DILocation(line: 119, column: 3, scope: !688)
!693 = !DILocation(line: 119, column: 10, scope: !688)
!694 = !DILocation(line: 119, column: 14, scope: !688)
!695 = !DILocation(line: 120, column: 3, scope: !688)
!696 = !DILabel(scope: !570, name: "out", file: !410, line: 123)
!697 = !DILocation(line: 123, column: 1, scope: !570)
!698 = !DILocation(line: 124, column: 17, scope: !570)
!699 = !DILocation(line: 124, column: 24, scope: !570)
!700 = !DILocation(line: 124, column: 2, scope: !570)
!701 = !DILocalVariable(name: "l", arg: 1, scope: !702, file: !206, line: 235, type: !593)
!702 = distinct !DISubprogram(name: "k_spin_unlock", scope: !206, file: !206, line: 235, type: !703, scopeLine: 237, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !207)
!703 = !DISubroutineType(types: !704)
!704 = !{null, !593, !582}
!705 = !DILocation(line: 235, column: 84, scope: !702, inlinedAt: !706)
!706 = distinct !DILocation(line: 124, column: 2, scope: !570)
!707 = !DILocalVariable(name: "key", arg: 2, scope: !702, file: !206, line: 236, type: !582)
!708 = !DILocation(line: 236, column: 23, scope: !702, inlinedAt: !706)
!709 = !DILocation(line: 238, column: 9, scope: !702, inlinedAt: !706)
!710 = !DILocation(line: 261, column: 22, scope: !702, inlinedAt: !706)
!711 = !DILocalVariable(name: "key", arg: 1, scope: !712, file: !601, line: 88, type: !96)
!712 = distinct !DISubprogram(name: "arch_irq_unlock", scope: !601, file: !601, line: 88, type: !713, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !207)
!713 = !DISubroutineType(types: !714)
!714 = !{null, !96}
!715 = !DILocation(line: 88, column: 80, scope: !712, inlinedAt: !716)
!716 = distinct !DILocation(line: 261, column: 2, scope: !702, inlinedAt: !706)
!717 = !DILocation(line: 91, column: 6, scope: !718, inlinedAt: !716)
!718 = distinct !DILexicalBlock(scope: !712, file: !601, line: 91, column: 6)
!719 = !DILocation(line: 91, column: 10, scope: !718, inlinedAt: !716)
!720 = !DILocation(line: 91, column: 6, scope: !712, inlinedAt: !716)
!721 = !DILocation(line: 92, column: 3, scope: !722, inlinedAt: !716)
!722 = distinct !DILexicalBlock(scope: !718, file: !601, line: 91, column: 17)
!723 = !DILocation(line: 94, column: 2, scope: !712, inlinedAt: !716)
!724 = !{i64 67249}
!725 = !DILocation(line: 114, column: 1, scope: !712, inlinedAt: !716)
!726 = !DILabel(scope: !570, name: "end", file: !410, line: 126)
!727 = !DILocation(line: 126, column: 1, scope: !570)
!728 = !DILocation(line: 127, column: 2, scope: !570)
!729 = !DILocation(line: 127, column: 7, scope: !730)
!730 = distinct !DILexicalBlock(scope: !570, file: !410, line: 127, column: 5)
!731 = !DILocation(line: 129, column: 9, scope: !570)
!732 = !DILocation(line: 129, column: 2, scope: !570)
!733 = distinct !DISubprogram(name: "z_impl_k_stack_pop", scope: !410, file: !410, line: 142, type: !734, scopeLine: 144, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !207)
!734 = !DISubroutineType(types: !735)
!735 = !{!90, !413, !419, !296}
!736 = !DILocalVariable(name: "stack", arg: 1, scope: !733, file: !410, line: 142, type: !413)
!737 = !DILocation(line: 142, column: 40, scope: !733)
!738 = !DILocalVariable(name: "data", arg: 2, scope: !733, file: !410, line: 142, type: !419)
!739 = !DILocation(line: 142, column: 61, scope: !733)
!740 = !DILocalVariable(name: "timeout", arg: 3, scope: !733, file: !410, line: 143, type: !296)
!741 = !DILocation(line: 143, column: 22, scope: !733)
!742 = !DILocalVariable(name: "key", scope: !733, file: !410, line: 145, type: !582)
!743 = !DILocation(line: 145, column: 19, scope: !733)
!744 = !DILocalVariable(name: "result", scope: !733, file: !410, line: 146, type: !90)
!745 = !DILocation(line: 146, column: 6, scope: !733)
!746 = !DILocation(line: 148, column: 21, scope: !733)
!747 = !DILocation(line: 148, column: 28, scope: !733)
!748 = !DILocation(line: 160, column: 94, scope: !590, inlinedAt: !749)
!749 = distinct !DILocation(line: 148, column: 8, scope: !733)
!750 = !DILocation(line: 162, column: 9, scope: !590, inlinedAt: !749)
!751 = !DILocation(line: 163, column: 19, scope: !590, inlinedAt: !749)
!752 = !DILocation(line: 44, column: 15, scope: !600, inlinedAt: !753)
!753 = distinct !DILocation(line: 169, column: 10, scope: !590, inlinedAt: !749)
!754 = !DILocation(line: 48, column: 2, scope: !600, inlinedAt: !753)
!755 = !DILocation(line: 80, column: 9, scope: !600, inlinedAt: !753)
!756 = !DILocation(line: 169, column: 8, scope: !590, inlinedAt: !749)
!757 = !DILocation(line: 171, column: 26, scope: !590, inlinedAt: !749)
!758 = !DILocation(line: 110, column: 94, scope: !612, inlinedAt: !759)
!759 = distinct !DILocation(line: 171, column: 2, scope: !590, inlinedAt: !749)
!760 = !DILocation(line: 112, column: 9, scope: !612, inlinedAt: !759)
!761 = !DILocation(line: 177, column: 27, scope: !590, inlinedAt: !749)
!762 = !DILocation(line: 121, column: 95, scope: !620, inlinedAt: !763)
!763 = distinct !DILocation(line: 177, column: 2, scope: !590, inlinedAt: !749)
!764 = !DILocation(line: 123, column: 9, scope: !620, inlinedAt: !763)
!765 = !DILocation(line: 179, column: 2, scope: !590, inlinedAt: !749)
!766 = !DILocation(line: 148, column: 8, scope: !733)
!767 = !DILocation(line: 150, column: 2, scope: !733)
!768 = !DILocation(line: 150, column: 7, scope: !769)
!769 = distinct !DILexicalBlock(scope: !733, file: !410, line: 150, column: 5)
!770 = !DILocation(line: 152, column: 34, scope: !771)
!771 = distinct !DILexicalBlock(scope: !733, file: !410, line: 152, column: 6)
!772 = !DILocation(line: 152, column: 41, scope: !771)
!773 = !DILocation(line: 152, column: 48, scope: !771)
!774 = !DILocation(line: 152, column: 55, scope: !771)
!775 = !DILocation(line: 152, column: 46, scope: !771)
!776 = !DILocation(line: 152, column: 32, scope: !771)
!777 = !DILocation(line: 152, column: 31, scope: !771)
!778 = !DILocation(line: 152, column: 24, scope: !771)
!779 = !DILocation(line: 152, column: 65, scope: !771)
!780 = !DILocation(line: 152, column: 6, scope: !733)
!781 = !DILocation(line: 153, column: 3, scope: !782)
!782 = distinct !DILexicalBlock(scope: !771, file: !410, line: 152, column: 73)
!783 = !DILocation(line: 153, column: 10, scope: !782)
!784 = !DILocation(line: 153, column: 14, scope: !782)
!785 = !DILocation(line: 154, column: 13, scope: !782)
!786 = !DILocation(line: 154, column: 20, scope: !782)
!787 = !DILocation(line: 154, column: 11, scope: !782)
!788 = !DILocation(line: 154, column: 4, scope: !782)
!789 = !DILocation(line: 154, column: 9, scope: !782)
!790 = !DILocation(line: 155, column: 18, scope: !782)
!791 = !DILocation(line: 155, column: 25, scope: !782)
!792 = !DILocation(line: 155, column: 3, scope: !782)
!793 = !DILocation(line: 235, column: 84, scope: !702, inlinedAt: !794)
!794 = distinct !DILocation(line: 155, column: 3, scope: !782)
!795 = !DILocation(line: 236, column: 23, scope: !702, inlinedAt: !794)
!796 = !DILocation(line: 238, column: 9, scope: !702, inlinedAt: !794)
!797 = !DILocation(line: 261, column: 22, scope: !702, inlinedAt: !794)
!798 = !DILocation(line: 88, column: 80, scope: !712, inlinedAt: !799)
!799 = distinct !DILocation(line: 261, column: 2, scope: !702, inlinedAt: !794)
!800 = !DILocation(line: 91, column: 6, scope: !718, inlinedAt: !799)
!801 = !DILocation(line: 91, column: 10, scope: !718, inlinedAt: !799)
!802 = !DILocation(line: 91, column: 6, scope: !712, inlinedAt: !799)
!803 = !DILocation(line: 92, column: 3, scope: !722, inlinedAt: !799)
!804 = !DILocation(line: 94, column: 2, scope: !712, inlinedAt: !799)
!805 = !DILocation(line: 114, column: 1, scope: !712, inlinedAt: !799)
!806 = !DILocation(line: 157, column: 3, scope: !782)
!807 = !DILocation(line: 157, column: 8, scope: !808)
!808 = distinct !DILexicalBlock(scope: !782, file: !410, line: 157, column: 6)
!809 = !DILocation(line: 159, column: 3, scope: !782)
!810 = !DILocation(line: 162, column: 2, scope: !733)
!811 = !DILocation(line: 162, column: 7, scope: !812)
!812 = distinct !DILexicalBlock(scope: !733, file: !410, line: 162, column: 5)
!813 = !DILocation(line: 164, column: 17, scope: !814)
!814 = distinct !DILexicalBlock(scope: !733, file: !410, line: 164, column: 6)
!815 = !DILocation(line: 164, column: 42, scope: !814)
!816 = !DILocation(line: 164, column: 23, scope: !814)
!817 = !DILocation(line: 164, column: 6, scope: !733)
!818 = !DILocation(line: 165, column: 18, scope: !819)
!819 = distinct !DILexicalBlock(scope: !814, file: !410, line: 164, column: 56)
!820 = !DILocation(line: 165, column: 25, scope: !819)
!821 = !DILocation(line: 165, column: 3, scope: !819)
!822 = !DILocation(line: 235, column: 84, scope: !702, inlinedAt: !823)
!823 = distinct !DILocation(line: 165, column: 3, scope: !819)
!824 = !DILocation(line: 236, column: 23, scope: !702, inlinedAt: !823)
!825 = !DILocation(line: 238, column: 9, scope: !702, inlinedAt: !823)
!826 = !DILocation(line: 261, column: 22, scope: !702, inlinedAt: !823)
!827 = !DILocation(line: 88, column: 80, scope: !712, inlinedAt: !828)
!828 = distinct !DILocation(line: 261, column: 2, scope: !702, inlinedAt: !823)
!829 = !DILocation(line: 91, column: 6, scope: !718, inlinedAt: !828)
!830 = !DILocation(line: 91, column: 10, scope: !718, inlinedAt: !828)
!831 = !DILocation(line: 91, column: 6, scope: !712, inlinedAt: !828)
!832 = !DILocation(line: 92, column: 3, scope: !722, inlinedAt: !828)
!833 = !DILocation(line: 94, column: 2, scope: !712, inlinedAt: !828)
!834 = !DILocation(line: 114, column: 1, scope: !712, inlinedAt: !828)
!835 = !DILocation(line: 167, column: 3, scope: !819)
!836 = !DILocation(line: 167, column: 8, scope: !837)
!837 = distinct !DILexicalBlock(scope: !819, file: !410, line: 167, column: 6)
!838 = !DILocation(line: 169, column: 3, scope: !819)
!839 = !DILocation(line: 172, column: 24, scope: !733)
!840 = !DILocation(line: 172, column: 31, scope: !733)
!841 = !DILocation(line: 172, column: 43, scope: !733)
!842 = !DILocation(line: 172, column: 50, scope: !733)
!843 = !DILocation(line: 172, column: 11, scope: !733)
!844 = !DILocation(line: 172, column: 9, scope: !733)
!845 = !DILocation(line: 173, column: 6, scope: !846)
!846 = distinct !DILexicalBlock(scope: !733, file: !410, line: 173, column: 6)
!847 = !DILocation(line: 173, column: 13, scope: !846)
!848 = !DILocation(line: 173, column: 6, scope: !733)
!849 = !DILocation(line: 174, column: 3, scope: !850)
!850 = distinct !DILexicalBlock(scope: !846, file: !410, line: 173, column: 21)
!851 = !DILocation(line: 174, column: 8, scope: !852)
!852 = distinct !DILexicalBlock(scope: !850, file: !410, line: 174, column: 6)
!853 = !DILocation(line: 176, column: 3, scope: !850)
!854 = !DILocation(line: 179, column: 40, scope: !733)
!855 = !DILocation(line: 179, column: 49, scope: !733)
!856 = !DILocation(line: 179, column: 54, scope: !733)
!857 = !DILocation(line: 179, column: 10, scope: !733)
!858 = !DILocation(line: 179, column: 3, scope: !733)
!859 = !DILocation(line: 179, column: 8, scope: !733)
!860 = !DILocation(line: 181, column: 2, scope: !733)
!861 = !DILocation(line: 181, column: 7, scope: !862)
!862 = distinct !DILexicalBlock(scope: !733, file: !410, line: 181, column: 5)
!863 = !DILocation(line: 183, column: 2, scope: !733)
!864 = !DILocation(line: 184, column: 1, scope: !733)
!865 = distinct !DISubprogram(name: "sys_sflist_is_empty", scope: !343, file: !343, line: 335, type: !866, scopeLine: 335, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !207)
!866 = !DISubroutineType(types: !867)
!867 = !{!92, !868}
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 32)
!869 = !DILocalVariable(name: "list", arg: 1, scope: !865, file: !343, line: 335, type: !868)
!870 = !DILocation(line: 335, column: 55, scope: !865)
!871 = !DILocation(line: 335, column: 92, scope: !865)
!872 = !DILocation(line: 335, column: 71, scope: !865)
!873 = !DILocation(line: 335, column: 98, scope: !865)
!874 = !DILocation(line: 335, column: 63, scope: !865)
!875 = distinct !DISubprogram(name: "sys_sflist_peek_head", scope: !343, file: !343, line: 255, type: !876, scopeLine: 256, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !207)
!876 = !DISubroutineType(types: !877)
!877 = !{!347, !868}
!878 = !DILocalVariable(name: "list", arg: 1, scope: !875, file: !343, line: 255, type: !868)
!879 = !DILocation(line: 255, column: 64, scope: !875)
!880 = !DILocation(line: 257, column: 9, scope: !875)
!881 = !DILocation(line: 257, column: 15, scope: !875)
!882 = !DILocation(line: 257, column: 2, scope: !875)
!883 = distinct !DISubprogram(name: "sys_dlist_init", scope: !99, file: !99, line: 203, type: !884, scopeLine: 204, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !207)
!884 = !DISubroutineType(types: !885)
!885 = !{null, !886}
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 32)
!887 = !DILocalVariable(name: "list", arg: 1, scope: !883, file: !99, line: 203, type: !886)
!888 = !DILocation(line: 203, column: 48, scope: !883)
!889 = !DILocation(line: 205, column: 30, scope: !883)
!890 = !DILocation(line: 205, column: 2, scope: !883)
!891 = !DILocation(line: 205, column: 8, scope: !883)
!892 = !DILocation(line: 205, column: 13, scope: !883)
!893 = !DILocation(line: 206, column: 30, scope: !883)
!894 = !DILocation(line: 206, column: 2, scope: !883)
!895 = !DILocation(line: 206, column: 8, scope: !883)
!896 = !DILocation(line: 206, column: 13, scope: !883)
!897 = !DILocation(line: 207, column: 1, scope: !883)
!898 = distinct !DISubprogram(name: "sys_dlist_peek_head", scope: !99, file: !99, line: 303, type: !899, scopeLine: 304, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !207)
!899 = !DISubroutineType(types: !900)
!900 = !{!97, !886}
!901 = !DILocalVariable(name: "list", arg: 1, scope: !898, file: !99, line: 303, type: !886)
!902 = !DILocation(line: 303, column: 61, scope: !898)
!903 = !DILocation(line: 305, column: 28, scope: !898)
!904 = !DILocation(line: 305, column: 9, scope: !898)
!905 = !DILocation(line: 305, column: 49, scope: !898)
!906 = !DILocation(line: 305, column: 55, scope: !898)
!907 = !DILocation(line: 305, column: 2, scope: !898)
!908 = distinct !DISubprogram(name: "sys_dlist_is_empty", scope: !99, file: !99, line: 275, type: !909, scopeLine: 276, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !207)
!909 = !DISubroutineType(types: !910)
!910 = !{!92, !886}
!911 = !DILocalVariable(name: "list", arg: 1, scope: !908, file: !99, line: 275, type: !886)
!912 = !DILocation(line: 275, column: 53, scope: !908)
!913 = !DILocation(line: 277, column: 9, scope: !908)
!914 = !DILocation(line: 277, column: 15, scope: !908)
!915 = !DILocation(line: 277, column: 23, scope: !908)
!916 = !DILocation(line: 277, column: 20, scope: !908)
!917 = !DILocation(line: 277, column: 2, scope: !908)
