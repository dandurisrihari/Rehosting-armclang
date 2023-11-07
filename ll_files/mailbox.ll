; ModuleID = '../bc_files/mailbox.bc'
source_filename = "/home/sri/zephyrproject/zephyr/kernel/mailbox.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-arm-none-eabi"

%struct.k_stack = type { %struct._wait_q_t, %struct.k_spinlock, ptr, ptr, ptr, i8 }
%struct._wait_q_t = type { %struct._dnode }
%struct._dnode = type { %union.anon.0, %union.anon.1 }
%union.anon.0 = type { ptr }
%union.anon.1 = type { ptr }
%struct.k_spinlock = type {}
%struct.init_entry = type { %union.init_function, ptr }
%union.init_function = type { ptr }
%struct.z_kernel = type { [1 x %struct._cpu], %struct._ready_q }
%struct._cpu = type { i32, ptr, ptr, ptr, i8, %struct._cpu_arch }
%struct._cpu_arch = type {}
%struct._ready_q = type { ptr, %struct._dnode }
%struct.k_mbox_async = type { %struct._thread_base, %struct.k_mbox_msg }
%struct._thread_base = type { %union.anon, ptr, i8, i8, %union.anon.2, i32, ptr, %struct._timeout }
%union.anon = type { %struct._dnode }
%union.anon.2 = type { i16 }
%struct._timeout = type { %struct._dnode, ptr, i64 }
%struct.k_mbox_msg = type { i32, i32, i32, ptr, ptr, %struct.k_mem_block, ptr, ptr, ptr, ptr }
%struct.k_mem_block = type { %union.anon.3 }
%union.anon.3 = type { %struct.k_mem_block_id }
%struct.k_mem_block_id = type { ptr, ptr }
%struct.k_thread = type { %struct._thread_base, %struct._callee_saved, ptr, %struct._wait_q_t, i32, ptr, %struct._thread_arch }
%struct._callee_saved = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._thread_arch = type { i32, i32 }
%struct.k_timer = type { %struct._timeout, %struct._wait_q_t, ptr, ptr, %struct.k_timeout_t, i32, ptr }
%struct.k_timeout_t = type { i64 }
%struct.k_queue = type { %struct._sflist, %struct.k_spinlock, %struct._wait_q_t }
%struct._sflist = type { ptr, ptr }
%struct.k_sem = type { %struct._wait_q_t, i32, i32 }
%struct.k_msgq = type { %struct._wait_q_t, %struct.k_spinlock, i32, i32, ptr, ptr, ptr, ptr, i32, i8 }
%struct.k_mbox = type { %struct._wait_q_t, %struct._wait_q_t, %struct.k_spinlock }
%struct.z_spinlock_key = type { i32 }
%struct.anon = type { i8, i8 }

@async_msg_free = hidden global %struct.k_stack { %struct._wait_q_t { %struct._dnode { %union.anon.0 { ptr @async_msg_free }, %union.anon.1 { ptr @async_msg_free } } }, %struct.k_spinlock zeroinitializer, ptr @_k_stack_buf_async_msg_free, ptr @_k_stack_buf_async_msg_free, ptr getelementptr (i8, ptr @_k_stack_buf_async_msg_free, i64 40), i8 0 }, section "._k_stack.static.async_msg_free_", align 4, !dbg !0
@_k_stack_buf_async_msg_free = hidden global [10 x i32] zeroinitializer, section ".noinit.\22ZEPHYR_BASE/kernel/mailbox.c\22.0", align 4, !dbg !278
@__init_init_mbox_module = internal constant %struct.init_entry { %union.init_function { ptr @init_mbox_module }, ptr null }, section ".z_init_PRE_KERNEL_130_0_", align 4, !dbg !257
@_kernel = external global %struct.z_kernel, align 4
@init_mbox_module.async_msg = internal global [10 x %struct.k_mbox_async] zeroinitializer, section ".noinit.\22ZEPHYR_BASE/kernel/mailbox.c\22.1", align 8, !dbg !283
@llvm.used = appending global [2 x ptr] [ptr @async_msg_free, ptr @__init_init_mbox_module], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_k_object_access_grant(ptr noundef %0, ptr noundef %1) #0 !dbg !304 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !309, metadata !DIExpression()), !dbg !310
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !311, metadata !DIExpression()), !dbg !312
  %5 = load ptr, ptr %3, align 4, !dbg !313
  %6 = load ptr, ptr %4, align 4, !dbg !314
  ret void, !dbg !315
}

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_k_object_release(ptr noundef %0) #0 !dbg !316 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !319, metadata !DIExpression()), !dbg !320
  %3 = load ptr, ptr %2, align 4, !dbg !321
  ret void, !dbg !322
}

; Function Attrs: noinline nounwind optnone
define internal ptr @z_impl_k_object_alloc(i8 noundef zeroext %0) #0 !dbg !323 {
  %2 = alloca i8, align 1
  store i8 %0, ptr %2, align 1
  call void @llvm.dbg.declare(metadata ptr %2, metadata !326, metadata !DIExpression()), !dbg !327
  %3 = load i8, ptr %2, align 1, !dbg !328
  ret ptr null, !dbg !329
}

; Function Attrs: noinline nounwind optnone
define internal ptr @z_impl_k_object_alloc_size(i8 noundef zeroext %0, i32 noundef %1) #0 !dbg !330 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8 %0, ptr %3, align 1
  call void @llvm.dbg.declare(metadata ptr %3, metadata !333, metadata !DIExpression()), !dbg !334
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !335, metadata !DIExpression()), !dbg !336
  %5 = load i8, ptr %3, align 1, !dbg !337
  %6 = load i32, ptr %4, align 4, !dbg !338
  ret ptr null, !dbg !339
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_thread_timeout_expires_ticks(ptr noundef %0) #0 !dbg !340 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !345, metadata !DIExpression()), !dbg !346
  %3 = load ptr, ptr %2, align 4, !dbg !347
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !348
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !349
  %6 = call i64 @z_timeout_expires(ptr noundef %5), !dbg !350
  ret i64 %6, !dbg !351
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_thread_timeout_remaining_ticks(ptr noundef %0) #0 !dbg !352 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !353, metadata !DIExpression()), !dbg !354
  %3 = load ptr, ptr %2, align 4, !dbg !355
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !356
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !357
  %6 = call i64 @z_timeout_remaining(ptr noundef %5), !dbg !358
  ret i64 %6, !dbg !359
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_timer_expires_ticks(ptr noundef %0) #0 !dbg !360 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !382, metadata !DIExpression()), !dbg !383
  %3 = load ptr, ptr %2, align 4, !dbg !384
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !385
  %5 = call i64 @z_timeout_expires(ptr noundef %4), !dbg !386
  ret i64 %5, !dbg !387
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_timer_remaining_ticks(ptr noundef %0) #0 !dbg !388 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !389, metadata !DIExpression()), !dbg !390
  %3 = load ptr, ptr %2, align 4, !dbg !391
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !392
  %5 = call i64 @z_timeout_remaining(ptr noundef %4), !dbg !393
  ret i64 %5, !dbg !394
}

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_k_timer_user_data_set(ptr noundef %0, ptr noundef %1) #0 !dbg !395 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !398, metadata !DIExpression()), !dbg !399
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !400, metadata !DIExpression()), !dbg !401
  %5 = load ptr, ptr %4, align 4, !dbg !402
  %6 = load ptr, ptr %3, align 4, !dbg !403
  %7 = getelementptr inbounds %struct.k_timer, ptr %6, i32 0, i32 6, !dbg !404
  store ptr %5, ptr %7, align 4, !dbg !405
  ret void, !dbg !406
}

; Function Attrs: noinline nounwind optnone
define internal ptr @z_impl_k_timer_user_data_get(ptr noundef %0) #0 !dbg !407 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !410, metadata !DIExpression()), !dbg !411
  %3 = load ptr, ptr %2, align 4, !dbg !412
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 6, !dbg !413
  %5 = load ptr, ptr %4, align 4, !dbg !413
  ret ptr %5, !dbg !414
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_queue_is_empty(ptr noundef %0) #0 !dbg !415 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !436, metadata !DIExpression()), !dbg !437
  %3 = load ptr, ptr %2, align 4, !dbg !438
  %4 = getelementptr inbounds %struct.k_queue, ptr %3, i32 0, i32 0, !dbg !439
  %5 = call zeroext i1 @sys_sflist_is_empty(ptr noundef %4), !dbg !440
  %6 = zext i1 %5 to i32, !dbg !441
  ret i32 %6, !dbg !442
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_sem_count_get(ptr noundef %0) #0 !dbg !443 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !446, metadata !DIExpression()), !dbg !447
  %3 = load ptr, ptr %2, align 4, !dbg !448
  %4 = getelementptr inbounds %struct.k_sem, ptr %3, i32 0, i32 1, !dbg !449
  %5 = load i32, ptr %4, align 4, !dbg !449
  ret i32 %5, !dbg !450
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_msgq_num_free_get(ptr noundef %0) #0 !dbg !451 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !467, metadata !DIExpression()), !dbg !468
  %3 = load ptr, ptr %2, align 4, !dbg !469
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 3, !dbg !470
  %5 = load i32, ptr %4, align 4, !dbg !470
  %6 = load ptr, ptr %2, align 4, !dbg !471
  %7 = getelementptr inbounds %struct.k_msgq, ptr %6, i32 0, i32 8, !dbg !472
  %8 = load i32, ptr %7, align 4, !dbg !472
  %9 = sub i32 %5, %8, !dbg !473
  ret i32 %9, !dbg !474
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_msgq_num_used_get(ptr noundef %0) #0 !dbg !475 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !476, metadata !DIExpression()), !dbg !477
  %3 = load ptr, ptr %2, align 4, !dbg !478
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 8, !dbg !479
  %5 = load i32, ptr %4, align 4, !dbg !479
  ret i32 %5, !dbg !480
}

; Function Attrs: noinline nounwind optnone
define internal i32 @init_mbox_module() #0 !dbg !285 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata ptr %1, metadata !481, metadata !DIExpression()), !dbg !482
  store i32 0, ptr %1, align 4, !dbg !483
  br label %2, !dbg !485

2:                                                ; preds = %13, %0
  %3 = load i32, ptr %1, align 4, !dbg !486
  %4 = icmp slt i32 %3, 10, !dbg !488
  br i1 %4, label %5, label %16, !dbg !489

5:                                                ; preds = %2
  %6 = load i32, ptr %1, align 4, !dbg !490
  %7 = getelementptr inbounds [10 x %struct.k_mbox_async], ptr @init_mbox_module.async_msg, i32 0, i32 %6, !dbg !492
  %8 = getelementptr inbounds %struct.k_mbox_async, ptr %7, i32 0, i32 0, !dbg !493
  call void @z_init_thread_base(ptr noundef %8, i32 noundef 0, i32 noundef 1, i32 noundef 0), !dbg !494
  %9 = load i32, ptr %1, align 4, !dbg !495
  %10 = getelementptr inbounds [10 x %struct.k_mbox_async], ptr @init_mbox_module.async_msg, i32 0, i32 %9, !dbg !496
  %11 = ptrtoint ptr %10 to i32, !dbg !497
  %12 = call i32 @k_stack_push(ptr noundef @async_msg_free, i32 noundef %11), !dbg !498
  br label %13, !dbg !499

13:                                               ; preds = %5
  %14 = load i32, ptr %1, align 4, !dbg !500
  %15 = add nsw i32 %14, 1, !dbg !500
  store i32 %15, ptr %1, align 4, !dbg !500
  br label %2, !dbg !501, !llvm.loop !502

16:                                               ; preds = %2
  ret i32 0, !dbg !504
}

; Function Attrs: noinline nounwind optnone
define hidden void @k_mbox_init(ptr noundef %0) #0 !dbg !505 {
  %2 = alloca ptr, align 4
  %3 = alloca %struct.k_spinlock, align 1
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !514, metadata !DIExpression()), !dbg !515
  %4 = load ptr, ptr %2, align 4, !dbg !516
  %5 = getelementptr inbounds %struct.k_mbox, ptr %4, i32 0, i32 0, !dbg !517
  call void @z_waitq_init(ptr noundef %5), !dbg !518
  %6 = load ptr, ptr %2, align 4, !dbg !519
  %7 = getelementptr inbounds %struct.k_mbox, ptr %6, i32 0, i32 1, !dbg !520
  call void @z_waitq_init(ptr noundef %7), !dbg !521
  %8 = load ptr, ptr %2, align 4, !dbg !522
  %9 = getelementptr inbounds %struct.k_mbox, ptr %8, i32 0, i32 2, !dbg !523
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %9, ptr align 1 %3, i32 0, i1 false), !dbg !524
  br label %10, !dbg !525

10:                                               ; preds = %1
  br label %11, !dbg !526

11:                                               ; preds = %10
  ret void, !dbg !528
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone
define internal void @z_waitq_init(ptr noundef %0) #0 !dbg !529 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !533, metadata !DIExpression()), !dbg !534
  %3 = load ptr, ptr %2, align 4, !dbg !535
  %4 = getelementptr inbounds %struct._wait_q_t, ptr %3, i32 0, i32 0, !dbg !536
  call void @sys_dlist_init(ptr noundef %4), !dbg !537
  ret void, !dbg !538
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: noinline nounwind optnone
define hidden i32 @k_mbox_put(ptr noundef %0, ptr noundef %1, [1 x i64] %2) #0 !dbg !539 {
  %4 = alloca %struct.k_timeout_t, align 8
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.k_timeout_t, ptr %4, i32 0, i32 0
  store [1 x i64] %2, ptr %8, align 8
  store ptr %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !542, metadata !DIExpression()), !dbg !543
  store ptr %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !544, metadata !DIExpression()), !dbg !545
  call void @llvm.dbg.declare(metadata ptr %4, metadata !546, metadata !DIExpression()), !dbg !547
  %9 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !548
  %10 = load ptr, ptr %6, align 4, !dbg !549
  %11 = getelementptr inbounds %struct.k_mbox_msg, ptr %10, i32 0, i32 8, !dbg !550
  store ptr %9, ptr %11, align 4, !dbg !551
  br label %12, !dbg !552

12:                                               ; preds = %3
  br label %13, !dbg !553

13:                                               ; preds = %12
  call void @llvm.dbg.declare(metadata ptr %7, metadata !555, metadata !DIExpression()), !dbg !556
  %14 = load ptr, ptr %5, align 4, !dbg !557
  %15 = load ptr, ptr %6, align 4, !dbg !558
  %16 = getelementptr inbounds %struct.k_timeout_t, ptr %4, i32 0, i32 0, !dbg !559
  %17 = load [1 x i64], ptr %16, align 8, !dbg !559
  %18 = call i32 @mbox_message_put(ptr noundef %14, ptr noundef %15, [1 x i64] %17), !dbg !559
  store i32 %18, ptr %7, align 4, !dbg !556
  br label %19, !dbg !560

19:                                               ; preds = %13
  br label %20, !dbg !561

20:                                               ; preds = %19
  %21 = load i32, ptr %7, align 4, !dbg !563
  ret i32 %21, !dbg !564
}

; Function Attrs: noinline nounwind optnone
define internal i32 @mbox_message_put(ptr noundef %0, ptr noundef %1, [1 x i64] %2) #0 !dbg !565 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.z_spinlock_key, align 4
  %12 = alloca ptr, align 4
  %13 = alloca %struct.z_spinlock_key, align 4
  %14 = alloca ptr, align 4
  %15 = alloca %struct.z_spinlock_key, align 4
  %16 = alloca ptr, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.k_timeout_t, align 8
  %19 = alloca ptr, align 4
  %20 = alloca ptr, align 4
  %21 = alloca ptr, align 4
  %22 = alloca ptr, align 4
  %23 = alloca ptr, align 4
  %24 = alloca %struct.z_spinlock_key, align 4
  %25 = alloca %struct.z_spinlock_key, align 4
  %26 = alloca ptr, align 4
  %27 = alloca i32, align 4
  %28 = alloca %struct.k_timeout_t, align 8
  %29 = alloca ptr, align 4
  %30 = alloca %struct.k_timeout_t, align 8
  %31 = alloca %struct.k_timeout_t, align 8
  %32 = alloca i32, align 4
  %33 = getelementptr inbounds %struct.k_timeout_t, ptr %18, i32 0, i32 0
  store [1 x i64] %2, ptr %33, align 8
  store ptr %0, ptr %19, align 4
  call void @llvm.dbg.declare(metadata ptr %19, metadata !566, metadata !DIExpression()), !dbg !567
  store ptr %1, ptr %20, align 4
  call void @llvm.dbg.declare(metadata ptr %20, metadata !568, metadata !DIExpression()), !dbg !569
  call void @llvm.dbg.declare(metadata ptr %18, metadata !570, metadata !DIExpression()), !dbg !571
  call void @llvm.dbg.declare(metadata ptr %21, metadata !572, metadata !DIExpression()), !dbg !573
  call void @llvm.dbg.declare(metadata ptr %22, metadata !574, metadata !DIExpression()), !dbg !575
  call void @llvm.dbg.declare(metadata ptr %23, metadata !576, metadata !DIExpression()), !dbg !577
  call void @llvm.dbg.declare(metadata ptr %24, metadata !578, metadata !DIExpression()), !dbg !583
  %34 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !584
  %35 = load ptr, ptr %20, align 4, !dbg !585
  %36 = getelementptr inbounds %struct.k_mbox_msg, ptr %35, i32 0, i32 6, !dbg !586
  store ptr %34, ptr %36, align 4, !dbg !587
  %37 = load ptr, ptr %20, align 4, !dbg !588
  %38 = getelementptr inbounds %struct.k_mbox_msg, ptr %37, i32 0, i32 8, !dbg !589
  %39 = load ptr, ptr %38, align 4, !dbg !589
  store ptr %39, ptr %21, align 4, !dbg !590
  %40 = load ptr, ptr %20, align 4, !dbg !591
  %41 = load ptr, ptr %21, align 4, !dbg !592
  %42 = getelementptr inbounds %struct.k_thread, ptr %41, i32 0, i32 0, !dbg !593
  %43 = getelementptr inbounds %struct._thread_base, ptr %42, i32 0, i32 6, !dbg !594
  store ptr %40, ptr %43, align 4, !dbg !595
  %44 = load ptr, ptr %19, align 4, !dbg !596
  %45 = getelementptr inbounds %struct.k_mbox, ptr %44, i32 0, i32 2, !dbg !597
  store ptr %45, ptr %16, align 4
  call void @llvm.dbg.declare(metadata ptr %16, metadata !598, metadata !DIExpression()), !dbg !603
  %46 = load ptr, ptr %16, align 4, !dbg !605
  call void @llvm.dbg.declare(metadata ptr %15, metadata !606, metadata !DIExpression()), !dbg !607
  call void @llvm.dbg.declare(metadata ptr %8, metadata !608, metadata !DIExpression()), !dbg !613
  %47 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #4, !dbg !615, !srcloc !616
  store i32 %47, ptr %8, align 4, !dbg !615
  %48 = load i32, ptr %8, align 4, !dbg !617
  store i32 %48, ptr %15, align 4, !dbg !618
  %49 = load ptr, ptr %16, align 4, !dbg !619
  store ptr %49, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !620, metadata !DIExpression()), !dbg !624
  %50 = load ptr, ptr %7, align 4, !dbg !626
  %51 = load ptr, ptr %16, align 4, !dbg !627
  store ptr %51, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !628, metadata !DIExpression()), !dbg !630
  %52 = load ptr, ptr %6, align 4, !dbg !632
  %53 = load i32, ptr %15, align 4, !dbg !633
  %54 = getelementptr inbounds %struct.z_spinlock_key, ptr %25, i32 0, i32 0, !dbg !634
  store i32 %53, ptr %54, align 4, !dbg !634
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %24, ptr align 4 %25, i32 4, i1 false), !dbg !634
  br label %55, !dbg !635

55:                                               ; preds = %3
  br label %56, !dbg !636

56:                                               ; preds = %55
  %57 = load ptr, ptr %19, align 4, !dbg !638
  %58 = getelementptr inbounds %struct.k_mbox, ptr %57, i32 0, i32 1, !dbg !640
  %59 = getelementptr inbounds %struct._wait_q_t, ptr %58, i32 0, i32 0, !dbg !641
  %60 = call ptr @sys_dlist_peek_head(ptr noundef %59), !dbg !642
  %61 = icmp ne ptr %60, null, !dbg !643
  br i1 %61, label %62, label %69, !dbg !644

62:                                               ; preds = %56
  %63 = load ptr, ptr %19, align 4, !dbg !645
  %64 = getelementptr inbounds %struct.k_mbox, ptr %63, i32 0, i32 1, !dbg !647
  %65 = getelementptr inbounds %struct._wait_q_t, ptr %64, i32 0, i32 0, !dbg !648
  %66 = call ptr @sys_dlist_peek_head(ptr noundef %65), !dbg !649
  %67 = getelementptr inbounds i8, ptr %66, i32 0, !dbg !650
  store ptr %67, ptr %26, align 4, !dbg !651
  %68 = load ptr, ptr %26, align 4, !dbg !652
  br label %70, !dbg !644

69:                                               ; preds = %56
  br label %70, !dbg !644

70:                                               ; preds = %69, %62
  %71 = phi ptr [ %68, %62 ], [ null, %69 ], !dbg !644
  store ptr %71, ptr %22, align 4, !dbg !653
  br label %72, !dbg !654

72:                                               ; preds = %145, %70
  %73 = load ptr, ptr %22, align 4, !dbg !655
  %74 = icmp ne ptr %73, null, !dbg !657
  br i1 %74, label %75, label %147, !dbg !658

75:                                               ; preds = %72
  %76 = load ptr, ptr %22, align 4, !dbg !659
  %77 = getelementptr inbounds %struct.k_thread, ptr %76, i32 0, i32 0, !dbg !661
  %78 = getelementptr inbounds %struct._thread_base, ptr %77, i32 0, i32 6, !dbg !662
  %79 = load ptr, ptr %78, align 4, !dbg !662
  store ptr %79, ptr %23, align 4, !dbg !663
  %80 = load ptr, ptr %20, align 4, !dbg !664
  %81 = load ptr, ptr %23, align 4, !dbg !666
  %82 = call i32 @mbox_message_match(ptr noundef %80, ptr noundef %81), !dbg !667
  %83 = icmp eq i32 %82, 0, !dbg !668
  br i1 %83, label %84, label %118, !dbg !669

84:                                               ; preds = %75
  %85 = load ptr, ptr %22, align 4, !dbg !670
  call void @z_unpend_thread(ptr noundef %85), !dbg !672
  %86 = load ptr, ptr %22, align 4, !dbg !673
  store ptr %86, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !674, metadata !DIExpression()), !dbg !679
  store i32 0, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !681, metadata !DIExpression()), !dbg !682
  %87 = load i32, ptr %10, align 4, !dbg !683
  %88 = load ptr, ptr %9, align 4, !dbg !684
  %89 = getelementptr inbounds %struct.k_thread, ptr %88, i32 0, i32 6, !dbg !685
  %90 = getelementptr inbounds %struct._thread_arch, ptr %89, i32 0, i32 1, !dbg !686
  store i32 %87, ptr %90, align 4, !dbg !687
  %91 = load ptr, ptr %22, align 4, !dbg !688
  call void @z_ready_thread(ptr noundef %91), !dbg !689
  %92 = load ptr, ptr %21, align 4, !dbg !690
  %93 = getelementptr inbounds %struct.k_thread, ptr %92, i32 0, i32 0, !dbg !692
  %94 = getelementptr inbounds %struct._thread_base, ptr %93, i32 0, i32 3, !dbg !693
  %95 = load i8, ptr %94, align 1, !dbg !693
  %96 = zext i8 %95 to i32, !dbg !690
  %97 = and i32 %96, 1, !dbg !694
  %98 = icmp ne i32 %97, 0, !dbg !695
  br i1 %98, label %99, label %104, !dbg !696

99:                                               ; preds = %84
  %100 = load ptr, ptr %19, align 4, !dbg !697
  %101 = getelementptr inbounds %struct.k_mbox, ptr %100, i32 0, i32 2, !dbg !699
  %102 = getelementptr inbounds %struct.z_spinlock_key, ptr %24, i32 0, i32 0, !dbg !700
  %103 = load [1 x i32], ptr %102, align 4, !dbg !700
  call void @z_reschedule(ptr noundef %101, [1 x i32] %103), !dbg !700
  store i32 0, ptr %17, align 4, !dbg !701
  br label %205, !dbg !701

104:                                              ; preds = %84
  br label %105, !dbg !702

105:                                              ; preds = %104
  br label %106, !dbg !703

106:                                              ; preds = %105
  call void @llvm.dbg.declare(metadata ptr %27, metadata !705, metadata !DIExpression()), !dbg !706
  %107 = load ptr, ptr %19, align 4, !dbg !707
  %108 = getelementptr inbounds %struct.k_mbox, ptr %107, i32 0, i32 2, !dbg !708
  %109 = getelementptr inbounds %struct.k_timeout_t, ptr %28, i32 0, i32 0, !dbg !709
  store i64 -1, ptr %109, align 8, !dbg !709
  %110 = getelementptr inbounds %struct.z_spinlock_key, ptr %24, i32 0, i32 0, !dbg !710
  %111 = load [1 x i32], ptr %110, align 4, !dbg !710
  %112 = getelementptr inbounds %struct.k_timeout_t, ptr %28, i32 0, i32 0, !dbg !710
  %113 = load [1 x i64], ptr %112, align 8, !dbg !710
  %114 = call i32 @z_pend_curr(ptr noundef %108, [1 x i32] %111, ptr noundef null, [1 x i64] %113), !dbg !710
  store i32 %114, ptr %27, align 4, !dbg !706
  br label %115, !dbg !711

115:                                              ; preds = %106
  br label %116, !dbg !712

116:                                              ; preds = %115
  %117 = load i32, ptr %27, align 4, !dbg !714
  store i32 %117, ptr %17, align 4, !dbg !715
  br label %205, !dbg !715

118:                                              ; preds = %75
  br label %119, !dbg !716

119:                                              ; preds = %118
  %120 = load ptr, ptr %22, align 4, !dbg !717
  %121 = icmp ne ptr %120, null, !dbg !718
  br i1 %121, label %122, label %144, !dbg !719

122:                                              ; preds = %119
  %123 = load ptr, ptr %19, align 4, !dbg !720
  %124 = getelementptr inbounds %struct.k_mbox, ptr %123, i32 0, i32 1, !dbg !721
  %125 = getelementptr inbounds %struct._wait_q_t, ptr %124, i32 0, i32 0, !dbg !722
  %126 = load ptr, ptr %22, align 4, !dbg !723
  %127 = getelementptr inbounds %struct.k_thread, ptr %126, i32 0, i32 0, !dbg !724
  %128 = getelementptr inbounds %struct._thread_base, ptr %127, i32 0, i32 0, !dbg !725
  %129 = call ptr @sys_dlist_peek_next(ptr noundef %125, ptr noundef %128), !dbg !726
  %130 = icmp ne ptr %129, null, !dbg !727
  br i1 %130, label %131, label %141, !dbg !728

131:                                              ; preds = %122
  %132 = load ptr, ptr %19, align 4, !dbg !729
  %133 = getelementptr inbounds %struct.k_mbox, ptr %132, i32 0, i32 1, !dbg !731
  %134 = getelementptr inbounds %struct._wait_q_t, ptr %133, i32 0, i32 0, !dbg !732
  %135 = load ptr, ptr %22, align 4, !dbg !733
  %136 = getelementptr inbounds %struct.k_thread, ptr %135, i32 0, i32 0, !dbg !734
  %137 = getelementptr inbounds %struct._thread_base, ptr %136, i32 0, i32 0, !dbg !735
  %138 = call ptr @sys_dlist_peek_next(ptr noundef %134, ptr noundef %137), !dbg !736
  %139 = getelementptr inbounds i8, ptr %138, i32 0, !dbg !737
  store ptr %139, ptr %29, align 4, !dbg !738
  %140 = load ptr, ptr %29, align 4, !dbg !739
  br label %142, !dbg !728

141:                                              ; preds = %122
  br label %142, !dbg !728

142:                                              ; preds = %141, %131
  %143 = phi ptr [ %140, %131 ], [ null, %141 ], !dbg !728
  br label %145, !dbg !719

144:                                              ; preds = %119
  br label %145, !dbg !719

145:                                              ; preds = %144, %142
  %146 = phi ptr [ %143, %142 ], [ null, %144 ], !dbg !719
  store ptr %146, ptr %22, align 4, !dbg !740
  br label %72, !dbg !741, !llvm.loop !742

147:                                              ; preds = %72
  %148 = getelementptr inbounds %struct.k_timeout_t, ptr %18, i32 0, i32 0, !dbg !744
  %149 = load i64, ptr %148, align 8, !dbg !744
  %150 = getelementptr inbounds %struct.k_timeout_t, ptr %30, i32 0, i32 0, !dbg !746
  store i64 0, ptr %150, align 8, !dbg !746
  %151 = icmp eq i64 %149, 0, !dbg !747
  br i1 %151, label %152, label %165, !dbg !748

152:                                              ; preds = %147
  br label %153, !dbg !749

153:                                              ; preds = %152
  br label %154, !dbg !751

154:                                              ; preds = %153
  %155 = load ptr, ptr %19, align 4, !dbg !753
  %156 = getelementptr inbounds %struct.k_mbox, ptr %155, i32 0, i32 2, !dbg !754
  %157 = getelementptr inbounds %struct.z_spinlock_key, ptr %24, i32 0, i32 0, !dbg !755
  %158 = load [1 x i32], ptr %157, align 4, !dbg !755
  store [1 x i32] %158, ptr %11, align 4
  store ptr %156, ptr %12, align 4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !756, metadata !DIExpression()), !dbg !760
  call void @llvm.dbg.declare(metadata ptr %11, metadata !762, metadata !DIExpression()), !dbg !763
  %159 = load ptr, ptr %12, align 4, !dbg !764
  %160 = load i32, ptr %11, align 4, !dbg !765
  store i32 %160, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !766, metadata !DIExpression()), !dbg !770
  %161 = load i32, ptr %5, align 4, !dbg !772
  %162 = icmp ne i32 %161, 0, !dbg !774
  br i1 %162, label %163, label %164, !dbg !775

163:                                              ; preds = %154
  br label %arch_irq_unlock.exit, !dbg !776

164:                                              ; preds = %154
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #4, !dbg !778, !srcloc !779
  br label %arch_irq_unlock.exit, !dbg !780

arch_irq_unlock.exit:                             ; preds = %163, %164
  store i32 -35, ptr %17, align 4, !dbg !781
  br label %205, !dbg !781

165:                                              ; preds = %147
  %166 = load ptr, ptr %21, align 4, !dbg !782
  %167 = getelementptr inbounds %struct.k_thread, ptr %166, i32 0, i32 0, !dbg !784
  %168 = getelementptr inbounds %struct._thread_base, ptr %167, i32 0, i32 3, !dbg !785
  %169 = load i8, ptr %168, align 1, !dbg !785
  %170 = zext i8 %169 to i32, !dbg !782
  %171 = and i32 %170, 1, !dbg !786
  %172 = icmp ne i32 %171, 0, !dbg !787
  br i1 %172, label %173, label %190, !dbg !788

173:                                              ; preds = %165
  %174 = load ptr, ptr %21, align 4, !dbg !789
  %175 = load ptr, ptr %19, align 4, !dbg !791
  %176 = getelementptr inbounds %struct.k_mbox, ptr %175, i32 0, i32 0, !dbg !792
  %177 = getelementptr inbounds %struct.k_timeout_t, ptr %31, i32 0, i32 0, !dbg !793
  store i64 -1, ptr %177, align 8, !dbg !793
  %178 = getelementptr inbounds %struct.k_timeout_t, ptr %31, i32 0, i32 0, !dbg !794
  %179 = load [1 x i64], ptr %178, align 8, !dbg !794
  call void @z_pend_thread(ptr noundef %174, ptr noundef %176, [1 x i64] %179), !dbg !794
  %180 = load ptr, ptr %19, align 4, !dbg !795
  %181 = getelementptr inbounds %struct.k_mbox, ptr %180, i32 0, i32 2, !dbg !796
  %182 = getelementptr inbounds %struct.z_spinlock_key, ptr %24, i32 0, i32 0, !dbg !797
  %183 = load [1 x i32], ptr %182, align 4, !dbg !797
  store [1 x i32] %183, ptr %13, align 4
  store ptr %181, ptr %14, align 4
  call void @llvm.dbg.declare(metadata ptr %14, metadata !756, metadata !DIExpression()), !dbg !798
  call void @llvm.dbg.declare(metadata ptr %13, metadata !762, metadata !DIExpression()), !dbg !800
  %184 = load ptr, ptr %14, align 4, !dbg !801
  %185 = load i32, ptr %13, align 4, !dbg !802
  store i32 %185, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !766, metadata !DIExpression()), !dbg !803
  %186 = load i32, ptr %4, align 4, !dbg !805
  %187 = icmp ne i32 %186, 0, !dbg !806
  br i1 %187, label %188, label %189, !dbg !807

188:                                              ; preds = %173
  br label %arch_irq_unlock.exit1, !dbg !808

189:                                              ; preds = %173
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #4, !dbg !809, !srcloc !779
  br label %arch_irq_unlock.exit1, !dbg !810

arch_irq_unlock.exit1:                            ; preds = %188, %189
  store i32 0, ptr %17, align 4, !dbg !811
  br label %205, !dbg !811

190:                                              ; preds = %165
  br label %191, !dbg !812

191:                                              ; preds = %190
  br label %192, !dbg !813

192:                                              ; preds = %191
  call void @llvm.dbg.declare(metadata ptr %32, metadata !815, metadata !DIExpression()), !dbg !816
  %193 = load ptr, ptr %19, align 4, !dbg !817
  %194 = getelementptr inbounds %struct.k_mbox, ptr %193, i32 0, i32 2, !dbg !818
  %195 = load ptr, ptr %19, align 4, !dbg !819
  %196 = getelementptr inbounds %struct.k_mbox, ptr %195, i32 0, i32 0, !dbg !820
  %197 = getelementptr inbounds %struct.z_spinlock_key, ptr %24, i32 0, i32 0, !dbg !821
  %198 = load [1 x i32], ptr %197, align 4, !dbg !821
  %199 = getelementptr inbounds %struct.k_timeout_t, ptr %18, i32 0, i32 0, !dbg !821
  %200 = load [1 x i64], ptr %199, align 8, !dbg !821
  %201 = call i32 @z_pend_curr(ptr noundef %194, [1 x i32] %198, ptr noundef %196, [1 x i64] %200), !dbg !821
  store i32 %201, ptr %32, align 4, !dbg !816
  br label %202, !dbg !822

202:                                              ; preds = %192
  br label %203, !dbg !823

203:                                              ; preds = %202
  %204 = load i32, ptr %32, align 4, !dbg !825
  store i32 %204, ptr %17, align 4, !dbg !826
  br label %205, !dbg !826

205:                                              ; preds = %203, %arch_irq_unlock.exit1, %arch_irq_unlock.exit, %116, %99
  %206 = load i32, ptr %17, align 4, !dbg !827
  ret i32 %206, !dbg !827
}

; Function Attrs: noinline nounwind optnone
define hidden void @k_mbox_async_put(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !828 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca %struct.k_timeout_t, align 8
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !831, metadata !DIExpression()), !dbg !832
  store ptr %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !833, metadata !DIExpression()), !dbg !834
  store ptr %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !835, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.declare(metadata ptr %7, metadata !837, metadata !DIExpression()), !dbg !838
  br label %9, !dbg !839

9:                                                ; preds = %3
  br label %10, !dbg !840

10:                                               ; preds = %9
  call void @mbox_async_alloc(ptr noundef %7), !dbg !842
  %11 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !843
  %12 = getelementptr inbounds %struct.k_thread, ptr %11, i32 0, i32 0, !dbg !844
  %13 = getelementptr inbounds %struct._thread_base, ptr %12, i32 0, i32 4, !dbg !845
  %14 = getelementptr inbounds %struct.anon, ptr %13, i32 0, i32 0, !dbg !845
  %15 = load i8, ptr %14, align 2, !dbg !845
  %16 = load ptr, ptr %7, align 4, !dbg !846
  %17 = getelementptr inbounds %struct.k_mbox_async, ptr %16, i32 0, i32 0, !dbg !847
  %18 = getelementptr inbounds %struct._thread_base, ptr %17, i32 0, i32 4, !dbg !848
  %19 = getelementptr inbounds %struct.anon, ptr %18, i32 0, i32 0, !dbg !848
  store i8 %15, ptr %19, align 2, !dbg !849
  %20 = load ptr, ptr %7, align 4, !dbg !850
  %21 = getelementptr inbounds %struct.k_mbox_async, ptr %20, i32 0, i32 1, !dbg !851
  %22 = load ptr, ptr %5, align 4, !dbg !852
  call void @llvm.memcpy.p0.p0.i32(ptr align 8 %21, ptr align 4 %22, i32 44, i1 false), !dbg !853
  %23 = load ptr, ptr %7, align 4, !dbg !854
  %24 = getelementptr inbounds %struct.k_mbox_async, ptr %23, i32 0, i32 0, !dbg !855
  %25 = load ptr, ptr %7, align 4, !dbg !856
  %26 = getelementptr inbounds %struct.k_mbox_async, ptr %25, i32 0, i32 1, !dbg !857
  %27 = getelementptr inbounds %struct.k_mbox_msg, ptr %26, i32 0, i32 8, !dbg !858
  store ptr %24, ptr %27, align 4, !dbg !859
  %28 = load ptr, ptr %6, align 4, !dbg !860
  %29 = load ptr, ptr %7, align 4, !dbg !861
  %30 = getelementptr inbounds %struct.k_mbox_async, ptr %29, i32 0, i32 1, !dbg !862
  %31 = getelementptr inbounds %struct.k_mbox_msg, ptr %30, i32 0, i32 9, !dbg !863
  store ptr %28, ptr %31, align 8, !dbg !864
  %32 = load ptr, ptr %4, align 4, !dbg !865
  %33 = load ptr, ptr %7, align 4, !dbg !866
  %34 = getelementptr inbounds %struct.k_mbox_async, ptr %33, i32 0, i32 1, !dbg !867
  %35 = getelementptr inbounds %struct.k_timeout_t, ptr %8, i32 0, i32 0, !dbg !868
  store i64 -1, ptr %35, align 8, !dbg !868
  %36 = getelementptr inbounds %struct.k_timeout_t, ptr %8, i32 0, i32 0, !dbg !869
  %37 = load [1 x i64], ptr %36, align 8, !dbg !869
  %38 = call i32 @mbox_message_put(ptr noundef %32, ptr noundef %34, [1 x i64] %37), !dbg !869
  br label %39, !dbg !870

39:                                               ; preds = %10
  br label %40, !dbg !871

40:                                               ; preds = %39
  ret void, !dbg !873
}

; Function Attrs: noinline nounwind optnone
define internal void @mbox_async_alloc(ptr noundef %0) #0 !dbg !874 {
  %2 = alloca ptr, align 4
  %3 = alloca %struct.k_timeout_t, align 8
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !878, metadata !DIExpression()), !dbg !879
  %4 = load ptr, ptr %2, align 4, !dbg !880
  %5 = getelementptr inbounds %struct.k_timeout_t, ptr %3, i32 0, i32 0, !dbg !881
  store i64 -1, ptr %5, align 8, !dbg !881
  %6 = getelementptr inbounds %struct.k_timeout_t, ptr %3, i32 0, i32 0, !dbg !882
  %7 = load [1 x i64], ptr %6, align 8, !dbg !882
  %8 = call i32 @k_stack_pop(ptr noundef @async_msg_free, ptr noundef %4, [1 x i64] %7), !dbg !882
  ret void, !dbg !883
}

; Function Attrs: noinline nounwind optnone
define hidden void @k_mbox_data_get(ptr noundef %0, ptr noundef %1) #0 !dbg !884 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !887, metadata !DIExpression()), !dbg !888
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !889, metadata !DIExpression()), !dbg !890
  %5 = load ptr, ptr %4, align 4, !dbg !891
  %6 = icmp eq ptr %5, null, !dbg !893
  br i1 %6, label %7, label %11, !dbg !894

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 4, !dbg !895
  %9 = getelementptr inbounds %struct.k_mbox_msg, ptr %8, i32 0, i32 1, !dbg !897
  store i32 0, ptr %9, align 4, !dbg !898
  %10 = load ptr, ptr %3, align 4, !dbg !899
  call void @mbox_message_dispose(ptr noundef %10), !dbg !900
  br label %31, !dbg !901

11:                                               ; preds = %2
  %12 = load ptr, ptr %3, align 4, !dbg !902
  %13 = getelementptr inbounds %struct.k_mbox_msg, ptr %12, i32 0, i32 3, !dbg !904
  %14 = load ptr, ptr %13, align 4, !dbg !904
  %15 = icmp ne ptr %14, null, !dbg !905
  br i1 %15, label %16, label %29, !dbg !906

16:                                               ; preds = %11
  %17 = load ptr, ptr %3, align 4, !dbg !907
  %18 = getelementptr inbounds %struct.k_mbox_msg, ptr %17, i32 0, i32 1, !dbg !908
  %19 = load i32, ptr %18, align 4, !dbg !908
  %20 = icmp ugt i32 %19, 0, !dbg !909
  br i1 %20, label %21, label %29, !dbg !910

21:                                               ; preds = %16
  %22 = load ptr, ptr %4, align 4, !dbg !911
  %23 = load ptr, ptr %3, align 4, !dbg !913
  %24 = getelementptr inbounds %struct.k_mbox_msg, ptr %23, i32 0, i32 3, !dbg !914
  %25 = load ptr, ptr %24, align 4, !dbg !914
  %26 = load ptr, ptr %3, align 4, !dbg !915
  %27 = getelementptr inbounds %struct.k_mbox_msg, ptr %26, i32 0, i32 1, !dbg !916
  %28 = load i32, ptr %27, align 4, !dbg !916
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %22, ptr align 1 %25, i32 %28, i1 false), !dbg !917
  br label %29, !dbg !918

29:                                               ; preds = %21, %16, %11
  %30 = load ptr, ptr %3, align 4, !dbg !919
  call void @mbox_message_dispose(ptr noundef %30), !dbg !920
  br label %31, !dbg !921

31:                                               ; preds = %29, %7
  ret void, !dbg !921
}

; Function Attrs: noinline nounwind optnone
define internal void @mbox_message_dispose(ptr noundef %0) #0 !dbg !922 {
  %2 = alloca ptr, align 4
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !925, metadata !DIExpression()), !dbg !926
  call void @llvm.dbg.declare(metadata ptr %5, metadata !927, metadata !DIExpression()), !dbg !928
  call void @llvm.dbg.declare(metadata ptr %6, metadata !929, metadata !DIExpression()), !dbg !930
  %8 = load ptr, ptr %4, align 4, !dbg !931
  %9 = getelementptr inbounds %struct.k_mbox_msg, ptr %8, i32 0, i32 8, !dbg !933
  %10 = load ptr, ptr %9, align 4, !dbg !933
  %11 = icmp eq ptr %10, null, !dbg !934
  br i1 %11, label %12, label %13, !dbg !935

12:                                               ; preds = %1
  br label %63, !dbg !936

13:                                               ; preds = %1
  %14 = load ptr, ptr %4, align 4, !dbg !938
  %15 = getelementptr inbounds %struct.k_mbox_msg, ptr %14, i32 0, i32 5, !dbg !940
  %16 = getelementptr inbounds %struct.k_mem_block, ptr %15, i32 0, i32 0, !dbg !941
  %17 = load ptr, ptr %16, align 4, !dbg !941
  %18 = icmp ne ptr %17, null, !dbg !942
  br i1 %18, label %19, label %23, !dbg !943

19:                                               ; preds = %13
  %20 = load ptr, ptr %4, align 4, !dbg !944
  %21 = getelementptr inbounds %struct.k_mbox_msg, ptr %20, i32 0, i32 5, !dbg !946
  %22 = getelementptr inbounds %struct.k_mem_block, ptr %21, i32 0, i32 0, !dbg !947
  store ptr null, ptr %22, align 4, !dbg !948
  br label %23, !dbg !949

23:                                               ; preds = %19, %13
  %24 = load ptr, ptr %4, align 4, !dbg !950
  %25 = getelementptr inbounds %struct.k_mbox_msg, ptr %24, i32 0, i32 8, !dbg !951
  %26 = load ptr, ptr %25, align 4, !dbg !951
  store ptr %26, ptr %5, align 4, !dbg !952
  %27 = load ptr, ptr %4, align 4, !dbg !953
  %28 = getelementptr inbounds %struct.k_mbox_msg, ptr %27, i32 0, i32 8, !dbg !954
  store ptr null, ptr %28, align 4, !dbg !955
  %29 = load ptr, ptr %5, align 4, !dbg !956
  %30 = getelementptr inbounds %struct.k_thread, ptr %29, i32 0, i32 0, !dbg !957
  %31 = getelementptr inbounds %struct._thread_base, ptr %30, i32 0, i32 6, !dbg !958
  %32 = load ptr, ptr %31, align 4, !dbg !958
  store ptr %32, ptr %6, align 4, !dbg !959
  %33 = load ptr, ptr %4, align 4, !dbg !960
  %34 = getelementptr inbounds %struct.k_mbox_msg, ptr %33, i32 0, i32 1, !dbg !961
  %35 = load i32, ptr %34, align 4, !dbg !961
  %36 = load ptr, ptr %6, align 4, !dbg !962
  %37 = getelementptr inbounds %struct.k_mbox_msg, ptr %36, i32 0, i32 1, !dbg !963
  store i32 %35, ptr %37, align 4, !dbg !964
  %38 = load ptr, ptr %5, align 4, !dbg !965
  %39 = getelementptr inbounds %struct.k_thread, ptr %38, i32 0, i32 0, !dbg !967
  %40 = getelementptr inbounds %struct._thread_base, ptr %39, i32 0, i32 3, !dbg !968
  %41 = load i8, ptr %40, align 1, !dbg !968
  %42 = zext i8 %41 to i32, !dbg !965
  %43 = and i32 %42, 1, !dbg !969
  %44 = icmp ne i32 %43, 0, !dbg !970
  br i1 %44, label %45, label %55, !dbg !971

45:                                               ; preds = %23
  call void @llvm.dbg.declare(metadata ptr %7, metadata !972, metadata !DIExpression()), !dbg !974
  %46 = load ptr, ptr %6, align 4, !dbg !975
  %47 = getelementptr inbounds %struct.k_mbox_msg, ptr %46, i32 0, i32 9, !dbg !976
  %48 = load ptr, ptr %47, align 4, !dbg !976
  store ptr %48, ptr %7, align 4, !dbg !974
  %49 = load ptr, ptr %5, align 4, !dbg !977
  call void @mbox_async_free(ptr noundef %49), !dbg !978
  %50 = load ptr, ptr %7, align 4, !dbg !979
  %51 = icmp ne ptr %50, null, !dbg !981
  br i1 %51, label %52, label %54, !dbg !982

52:                                               ; preds = %45
  %53 = load ptr, ptr %7, align 4, !dbg !983
  call void @k_sem_give(ptr noundef %53), !dbg !985
  br label %54, !dbg !986

54:                                               ; preds = %52, %45
  br label %63, !dbg !987

55:                                               ; preds = %23
  %56 = load ptr, ptr %5, align 4, !dbg !988
  store ptr %56, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !674, metadata !DIExpression()), !dbg !989
  store i32 0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !681, metadata !DIExpression()), !dbg !991
  %57 = load i32, ptr %3, align 4, !dbg !992
  %58 = load ptr, ptr %2, align 4, !dbg !993
  %59 = getelementptr inbounds %struct.k_thread, ptr %58, i32 0, i32 6, !dbg !994
  %60 = getelementptr inbounds %struct._thread_arch, ptr %59, i32 0, i32 1, !dbg !995
  store i32 %57, ptr %60, align 4, !dbg !996
  %61 = load ptr, ptr %5, align 4, !dbg !997
  call void @z_mark_thread_as_not_pending(ptr noundef %61), !dbg !998
  %62 = load ptr, ptr %5, align 4, !dbg !999
  call void @z_ready_thread(ptr noundef %62), !dbg !1000
  call void @z_reschedule_unlocked(), !dbg !1001
  br label %63, !dbg !1002

63:                                               ; preds = %55, %54, %12
  ret void, !dbg !1002
}

; Function Attrs: noinline nounwind optnone
define hidden i32 @k_mbox_get(ptr noundef %0, ptr noundef %1, ptr noundef %2, [1 x i64] %3) #0 !dbg !1003 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.z_spinlock_key, align 4
  %11 = alloca ptr, align 4
  %12 = alloca %struct.z_spinlock_key, align 4
  %13 = alloca ptr, align 4
  %14 = alloca %struct.z_spinlock_key, align 4
  %15 = alloca ptr, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.k_timeout_t, align 8
  %18 = alloca ptr, align 4
  %19 = alloca ptr, align 4
  %20 = alloca ptr, align 4
  %21 = alloca ptr, align 4
  %22 = alloca ptr, align 4
  %23 = alloca %struct.z_spinlock_key, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.z_spinlock_key, align 4
  %26 = alloca ptr, align 4
  %27 = alloca ptr, align 4
  %28 = alloca %struct.k_timeout_t, align 8
  %29 = getelementptr inbounds %struct.k_timeout_t, ptr %17, i32 0, i32 0
  store [1 x i64] %3, ptr %29, align 8
  store ptr %0, ptr %18, align 4
  call void @llvm.dbg.declare(metadata ptr %18, metadata !1006, metadata !DIExpression()), !dbg !1007
  store ptr %1, ptr %19, align 4
  call void @llvm.dbg.declare(metadata ptr %19, metadata !1008, metadata !DIExpression()), !dbg !1009
  store ptr %2, ptr %20, align 4
  call void @llvm.dbg.declare(metadata ptr %20, metadata !1010, metadata !DIExpression()), !dbg !1011
  call void @llvm.dbg.declare(metadata ptr %17, metadata !1012, metadata !DIExpression()), !dbg !1013
  call void @llvm.dbg.declare(metadata ptr %21, metadata !1014, metadata !DIExpression()), !dbg !1015
  call void @llvm.dbg.declare(metadata ptr %22, metadata !1016, metadata !DIExpression()), !dbg !1017
  call void @llvm.dbg.declare(metadata ptr %23, metadata !1018, metadata !DIExpression()), !dbg !1019
  call void @llvm.dbg.declare(metadata ptr %24, metadata !1020, metadata !DIExpression()), !dbg !1021
  %30 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !1022
  %31 = load ptr, ptr %19, align 4, !dbg !1023
  %32 = getelementptr inbounds %struct.k_mbox_msg, ptr %31, i32 0, i32 7, !dbg !1024
  store ptr %30, ptr %32, align 4, !dbg !1025
  %33 = load ptr, ptr %18, align 4, !dbg !1026
  %34 = getelementptr inbounds %struct.k_mbox, ptr %33, i32 0, i32 2, !dbg !1027
  store ptr %34, ptr %15, align 4
  call void @llvm.dbg.declare(metadata ptr %15, metadata !598, metadata !DIExpression()), !dbg !1028
  %35 = load ptr, ptr %15, align 4, !dbg !1030
  call void @llvm.dbg.declare(metadata ptr %14, metadata !606, metadata !DIExpression()), !dbg !1031
  call void @llvm.dbg.declare(metadata ptr %9, metadata !608, metadata !DIExpression()), !dbg !1032
  %36 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #4, !dbg !1034, !srcloc !616
  store i32 %36, ptr %9, align 4, !dbg !1034
  %37 = load i32, ptr %9, align 4, !dbg !1035
  store i32 %37, ptr %14, align 4, !dbg !1036
  %38 = load ptr, ptr %15, align 4, !dbg !1037
  store ptr %38, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !620, metadata !DIExpression()), !dbg !1038
  %39 = load ptr, ptr %8, align 4, !dbg !1040
  %40 = load ptr, ptr %15, align 4, !dbg !1041
  store ptr %40, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !628, metadata !DIExpression()), !dbg !1042
  %41 = load ptr, ptr %7, align 4, !dbg !1044
  %42 = load i32, ptr %14, align 4, !dbg !1045
  %43 = getelementptr inbounds %struct.z_spinlock_key, ptr %25, i32 0, i32 0, !dbg !1046
  store i32 %42, ptr %43, align 4, !dbg !1046
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %23, ptr align 4 %25, i32 4, i1 false), !dbg !1046
  br label %44, !dbg !1047

44:                                               ; preds = %4
  br label %45, !dbg !1048

45:                                               ; preds = %44
  %46 = load ptr, ptr %18, align 4, !dbg !1050
  %47 = getelementptr inbounds %struct.k_mbox, ptr %46, i32 0, i32 0, !dbg !1052
  %48 = getelementptr inbounds %struct._wait_q_t, ptr %47, i32 0, i32 0, !dbg !1053
  %49 = call ptr @sys_dlist_peek_head(ptr noundef %48), !dbg !1054
  %50 = icmp ne ptr %49, null, !dbg !1055
  br i1 %50, label %51, label %58, !dbg !1056

51:                                               ; preds = %45
  %52 = load ptr, ptr %18, align 4, !dbg !1057
  %53 = getelementptr inbounds %struct.k_mbox, ptr %52, i32 0, i32 0, !dbg !1059
  %54 = getelementptr inbounds %struct._wait_q_t, ptr %53, i32 0, i32 0, !dbg !1060
  %55 = call ptr @sys_dlist_peek_head(ptr noundef %54), !dbg !1061
  %56 = getelementptr inbounds i8, ptr %55, i32 0, !dbg !1062
  store ptr %56, ptr %26, align 4, !dbg !1063
  %57 = load ptr, ptr %26, align 4, !dbg !1064
  br label %59, !dbg !1056

58:                                               ; preds = %45
  br label %59, !dbg !1056

59:                                               ; preds = %58, %51
  %60 = phi ptr [ %57, %51 ], [ null, %58 ], !dbg !1056
  store ptr %60, ptr %21, align 4, !dbg !1065
  br label %61, !dbg !1066

61:                                               ; preds = %118, %59
  %62 = load ptr, ptr %21, align 4, !dbg !1067
  %63 = icmp ne ptr %62, null, !dbg !1069
  br i1 %63, label %64, label %120, !dbg !1070

64:                                               ; preds = %61
  %65 = load ptr, ptr %21, align 4, !dbg !1071
  %66 = getelementptr inbounds %struct.k_thread, ptr %65, i32 0, i32 0, !dbg !1073
  %67 = getelementptr inbounds %struct._thread_base, ptr %66, i32 0, i32 6, !dbg !1074
  %68 = load ptr, ptr %67, align 4, !dbg !1074
  store ptr %68, ptr %22, align 4, !dbg !1075
  %69 = load ptr, ptr %22, align 4, !dbg !1076
  %70 = load ptr, ptr %19, align 4, !dbg !1078
  %71 = call i32 @mbox_message_match(ptr noundef %69, ptr noundef %70), !dbg !1079
  %72 = icmp eq i32 %71, 0, !dbg !1080
  br i1 %72, label %73, label %91, !dbg !1081

73:                                               ; preds = %64
  %74 = load ptr, ptr %21, align 4, !dbg !1082
  call void @z_unpend_thread(ptr noundef %74), !dbg !1084
  %75 = load ptr, ptr %18, align 4, !dbg !1085
  %76 = getelementptr inbounds %struct.k_mbox, ptr %75, i32 0, i32 2, !dbg !1086
  %77 = getelementptr inbounds %struct.z_spinlock_key, ptr %23, i32 0, i32 0, !dbg !1087
  %78 = load [1 x i32], ptr %77, align 4, !dbg !1087
  store [1 x i32] %78, ptr %10, align 4
  store ptr %76, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !756, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.declare(metadata ptr %10, metadata !762, metadata !DIExpression()), !dbg !1090
  %79 = load ptr, ptr %11, align 4, !dbg !1091
  %80 = load i32, ptr %10, align 4, !dbg !1092
  store i32 %80, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !766, metadata !DIExpression()), !dbg !1093
  %81 = load i32, ptr %6, align 4, !dbg !1095
  %82 = icmp ne i32 %81, 0, !dbg !1096
  br i1 %82, label %83, label %84, !dbg !1097

83:                                               ; preds = %73
  br label %arch_irq_unlock.exit, !dbg !1098

84:                                               ; preds = %73
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #4, !dbg !1099, !srcloc !779
  br label %arch_irq_unlock.exit, !dbg !1100

arch_irq_unlock.exit:                             ; preds = %83, %84
  %85 = load ptr, ptr %19, align 4, !dbg !1101
  %86 = load ptr, ptr %20, align 4, !dbg !1102
  %87 = call i32 @mbox_message_data_check(ptr noundef %85, ptr noundef %86), !dbg !1103
  store i32 %87, ptr %24, align 4, !dbg !1104
  br label %88, !dbg !1105

88:                                               ; preds = %arch_irq_unlock.exit
  br label %89, !dbg !1106

89:                                               ; preds = %88
  %90 = load i32, ptr %24, align 4, !dbg !1108
  store i32 %90, ptr %16, align 4, !dbg !1109
  br label %164, !dbg !1109

91:                                               ; preds = %64
  br label %92, !dbg !1110

92:                                               ; preds = %91
  %93 = load ptr, ptr %21, align 4, !dbg !1111
  %94 = icmp ne ptr %93, null, !dbg !1112
  br i1 %94, label %95, label %117, !dbg !1113

95:                                               ; preds = %92
  %96 = load ptr, ptr %18, align 4, !dbg !1114
  %97 = getelementptr inbounds %struct.k_mbox, ptr %96, i32 0, i32 0, !dbg !1115
  %98 = getelementptr inbounds %struct._wait_q_t, ptr %97, i32 0, i32 0, !dbg !1116
  %99 = load ptr, ptr %21, align 4, !dbg !1117
  %100 = getelementptr inbounds %struct.k_thread, ptr %99, i32 0, i32 0, !dbg !1118
  %101 = getelementptr inbounds %struct._thread_base, ptr %100, i32 0, i32 0, !dbg !1119
  %102 = call ptr @sys_dlist_peek_next(ptr noundef %98, ptr noundef %101), !dbg !1120
  %103 = icmp ne ptr %102, null, !dbg !1121
  br i1 %103, label %104, label %114, !dbg !1122

104:                                              ; preds = %95
  %105 = load ptr, ptr %18, align 4, !dbg !1123
  %106 = getelementptr inbounds %struct.k_mbox, ptr %105, i32 0, i32 0, !dbg !1125
  %107 = getelementptr inbounds %struct._wait_q_t, ptr %106, i32 0, i32 0, !dbg !1126
  %108 = load ptr, ptr %21, align 4, !dbg !1127
  %109 = getelementptr inbounds %struct.k_thread, ptr %108, i32 0, i32 0, !dbg !1128
  %110 = getelementptr inbounds %struct._thread_base, ptr %109, i32 0, i32 0, !dbg !1129
  %111 = call ptr @sys_dlist_peek_next(ptr noundef %107, ptr noundef %110), !dbg !1130
  %112 = getelementptr inbounds i8, ptr %111, i32 0, !dbg !1131
  store ptr %112, ptr %27, align 4, !dbg !1132
  %113 = load ptr, ptr %27, align 4, !dbg !1133
  br label %115, !dbg !1122

114:                                              ; preds = %95
  br label %115, !dbg !1122

115:                                              ; preds = %114, %104
  %116 = phi ptr [ %113, %104 ], [ null, %114 ], !dbg !1122
  br label %118, !dbg !1113

117:                                              ; preds = %92
  br label %118, !dbg !1113

118:                                              ; preds = %117, %115
  %119 = phi ptr [ %116, %115 ], [ null, %117 ], !dbg !1113
  store ptr %119, ptr %21, align 4, !dbg !1134
  br label %61, !dbg !1135, !llvm.loop !1136

120:                                              ; preds = %61
  %121 = getelementptr inbounds %struct.k_timeout_t, ptr %17, i32 0, i32 0, !dbg !1138
  %122 = load i64, ptr %121, align 8, !dbg !1138
  %123 = getelementptr inbounds %struct.k_timeout_t, ptr %28, i32 0, i32 0, !dbg !1140
  store i64 0, ptr %123, align 8, !dbg !1140
  %124 = icmp eq i64 %122, 0, !dbg !1141
  br i1 %124, label %125, label %138, !dbg !1142

125:                                              ; preds = %120
  br label %126, !dbg !1143

126:                                              ; preds = %125
  br label %127, !dbg !1145

127:                                              ; preds = %126
  %128 = load ptr, ptr %18, align 4, !dbg !1147
  %129 = getelementptr inbounds %struct.k_mbox, ptr %128, i32 0, i32 2, !dbg !1148
  %130 = getelementptr inbounds %struct.z_spinlock_key, ptr %23, i32 0, i32 0, !dbg !1149
  %131 = load [1 x i32], ptr %130, align 4, !dbg !1149
  store [1 x i32] %131, ptr %12, align 4
  store ptr %129, ptr %13, align 4
  call void @llvm.dbg.declare(metadata ptr %13, metadata !756, metadata !DIExpression()), !dbg !1150
  call void @llvm.dbg.declare(metadata ptr %12, metadata !762, metadata !DIExpression()), !dbg !1152
  %132 = load ptr, ptr %13, align 4, !dbg !1153
  %133 = load i32, ptr %12, align 4, !dbg !1154
  store i32 %133, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !766, metadata !DIExpression()), !dbg !1155
  %134 = load i32, ptr %5, align 4, !dbg !1157
  %135 = icmp ne i32 %134, 0, !dbg !1158
  br i1 %135, label %136, label %137, !dbg !1159

136:                                              ; preds = %127
  br label %arch_irq_unlock.exit1, !dbg !1160

137:                                              ; preds = %127
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #4, !dbg !1161, !srcloc !779
  br label %arch_irq_unlock.exit1, !dbg !1162

arch_irq_unlock.exit1:                            ; preds = %136, %137
  store i32 -35, ptr %16, align 4, !dbg !1163
  br label %164, !dbg !1163

138:                                              ; preds = %120
  br label %139, !dbg !1164

139:                                              ; preds = %138
  br label %140, !dbg !1165

140:                                              ; preds = %139
  %141 = load ptr, ptr %19, align 4, !dbg !1167
  %142 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !1168
  %143 = getelementptr inbounds %struct.k_thread, ptr %142, i32 0, i32 0, !dbg !1169
  %144 = getelementptr inbounds %struct._thread_base, ptr %143, i32 0, i32 6, !dbg !1170
  store ptr %141, ptr %144, align 4, !dbg !1171
  %145 = load ptr, ptr %18, align 4, !dbg !1172
  %146 = getelementptr inbounds %struct.k_mbox, ptr %145, i32 0, i32 2, !dbg !1173
  %147 = load ptr, ptr %18, align 4, !dbg !1174
  %148 = getelementptr inbounds %struct.k_mbox, ptr %147, i32 0, i32 1, !dbg !1175
  %149 = getelementptr inbounds %struct.z_spinlock_key, ptr %23, i32 0, i32 0, !dbg !1176
  %150 = load [1 x i32], ptr %149, align 4, !dbg !1176
  %151 = getelementptr inbounds %struct.k_timeout_t, ptr %17, i32 0, i32 0, !dbg !1176
  %152 = load [1 x i64], ptr %151, align 8, !dbg !1176
  %153 = call i32 @z_pend_curr(ptr noundef %146, [1 x i32] %150, ptr noundef %148, [1 x i64] %152), !dbg !1176
  store i32 %153, ptr %24, align 4, !dbg !1177
  %154 = load i32, ptr %24, align 4, !dbg !1178
  %155 = icmp eq i32 %154, 0, !dbg !1180
  br i1 %155, label %156, label %160, !dbg !1181

156:                                              ; preds = %140
  %157 = load ptr, ptr %19, align 4, !dbg !1182
  %158 = load ptr, ptr %20, align 4, !dbg !1184
  %159 = call i32 @mbox_message_data_check(ptr noundef %157, ptr noundef %158), !dbg !1185
  store i32 %159, ptr %24, align 4, !dbg !1186
  br label %160, !dbg !1187

160:                                              ; preds = %156, %140
  br label %161, !dbg !1188

161:                                              ; preds = %160
  br label %162, !dbg !1189

162:                                              ; preds = %161
  %163 = load i32, ptr %24, align 4, !dbg !1191
  store i32 %163, ptr %16, align 4, !dbg !1192
  br label %164, !dbg !1192

164:                                              ; preds = %162, %arch_irq_unlock.exit1, %89
  %165 = load i32, ptr %16, align 4, !dbg !1193
  ret i32 %165, !dbg !1193
}

; Function Attrs: noinline nounwind optnone
define internal ptr @sys_dlist_peek_head(ptr noundef %0) #0 !dbg !1194 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1198, metadata !DIExpression()), !dbg !1199
  %3 = load ptr, ptr %2, align 4, !dbg !1200
  %4 = call zeroext i1 @sys_dlist_is_empty(ptr noundef %3), !dbg !1201
  br i1 %4, label %5, label %6, !dbg !1201

5:                                                ; preds = %1
  br label %10, !dbg !1201

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 4, !dbg !1202
  %8 = getelementptr inbounds %struct._dnode, ptr %7, i32 0, i32 0, !dbg !1203
  %9 = load ptr, ptr %8, align 4, !dbg !1203
  br label %10, !dbg !1201

10:                                               ; preds = %6, %5
  %11 = phi ptr [ null, %5 ], [ %9, %6 ], !dbg !1201
  ret ptr %11, !dbg !1204
}

; Function Attrs: noinline nounwind optnone
define internal i32 @mbox_message_match(ptr noundef %0, ptr noundef %1) #0 !dbg !1205 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1208, metadata !DIExpression()), !dbg !1209
  store ptr %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1210, metadata !DIExpression()), !dbg !1211
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1212, metadata !DIExpression()), !dbg !1213
  %7 = load ptr, ptr %4, align 4, !dbg !1214
  %8 = getelementptr inbounds %struct.k_mbox_msg, ptr %7, i32 0, i32 7, !dbg !1216
  %9 = load ptr, ptr %8, align 4, !dbg !1216
  %10 = icmp eq ptr %9, null, !dbg !1217
  br i1 %10, label %19, label %11, !dbg !1218

11:                                               ; preds = %2
  %12 = load ptr, ptr %4, align 4, !dbg !1219
  %13 = getelementptr inbounds %struct.k_mbox_msg, ptr %12, i32 0, i32 7, !dbg !1220
  %14 = load ptr, ptr %13, align 4, !dbg !1220
  %15 = load ptr, ptr %5, align 4, !dbg !1221
  %16 = getelementptr inbounds %struct.k_mbox_msg, ptr %15, i32 0, i32 7, !dbg !1222
  %17 = load ptr, ptr %16, align 4, !dbg !1222
  %18 = icmp eq ptr %14, %17, !dbg !1223
  br i1 %18, label %19, label %106, !dbg !1224

19:                                               ; preds = %11, %2
  %20 = load ptr, ptr %5, align 4, !dbg !1225
  %21 = getelementptr inbounds %struct.k_mbox_msg, ptr %20, i32 0, i32 6, !dbg !1226
  %22 = load ptr, ptr %21, align 4, !dbg !1226
  %23 = icmp eq ptr %22, null, !dbg !1227
  br i1 %23, label %32, label %24, !dbg !1228

24:                                               ; preds = %19
  %25 = load ptr, ptr %5, align 4, !dbg !1229
  %26 = getelementptr inbounds %struct.k_mbox_msg, ptr %25, i32 0, i32 6, !dbg !1230
  %27 = load ptr, ptr %26, align 4, !dbg !1230
  %28 = load ptr, ptr %4, align 4, !dbg !1231
  %29 = getelementptr inbounds %struct.k_mbox_msg, ptr %28, i32 0, i32 6, !dbg !1232
  %30 = load ptr, ptr %29, align 4, !dbg !1232
  %31 = icmp eq ptr %27, %30, !dbg !1233
  br i1 %31, label %32, label %106, !dbg !1234

32:                                               ; preds = %24, %19
  %33 = load ptr, ptr %4, align 4, !dbg !1235
  %34 = getelementptr inbounds %struct.k_mbox_msg, ptr %33, i32 0, i32 6, !dbg !1237
  %35 = load ptr, ptr %34, align 4, !dbg !1237
  %36 = load ptr, ptr %5, align 4, !dbg !1238
  %37 = getelementptr inbounds %struct.k_mbox_msg, ptr %36, i32 0, i32 6, !dbg !1239
  store ptr %35, ptr %37, align 4, !dbg !1240
  %38 = load ptr, ptr %5, align 4, !dbg !1241
  %39 = getelementptr inbounds %struct.k_mbox_msg, ptr %38, i32 0, i32 7, !dbg !1242
  %40 = load ptr, ptr %39, align 4, !dbg !1242
  %41 = load ptr, ptr %4, align 4, !dbg !1243
  %42 = getelementptr inbounds %struct.k_mbox_msg, ptr %41, i32 0, i32 7, !dbg !1244
  store ptr %40, ptr %42, align 4, !dbg !1245
  %43 = load ptr, ptr %5, align 4, !dbg !1246
  %44 = getelementptr inbounds %struct.k_mbox_msg, ptr %43, i32 0, i32 2, !dbg !1247
  %45 = load i32, ptr %44, align 4, !dbg !1247
  store i32 %45, ptr %6, align 4, !dbg !1248
  %46 = load ptr, ptr %4, align 4, !dbg !1249
  %47 = getelementptr inbounds %struct.k_mbox_msg, ptr %46, i32 0, i32 2, !dbg !1250
  %48 = load i32, ptr %47, align 4, !dbg !1250
  %49 = load ptr, ptr %5, align 4, !dbg !1251
  %50 = getelementptr inbounds %struct.k_mbox_msg, ptr %49, i32 0, i32 2, !dbg !1252
  store i32 %48, ptr %50, align 4, !dbg !1253
  %51 = load i32, ptr %6, align 4, !dbg !1254
  %52 = load ptr, ptr %4, align 4, !dbg !1255
  %53 = getelementptr inbounds %struct.k_mbox_msg, ptr %52, i32 0, i32 2, !dbg !1256
  store i32 %51, ptr %53, align 4, !dbg !1257
  %54 = load ptr, ptr %5, align 4, !dbg !1258
  %55 = getelementptr inbounds %struct.k_mbox_msg, ptr %54, i32 0, i32 1, !dbg !1260
  %56 = load i32, ptr %55, align 4, !dbg !1260
  %57 = load ptr, ptr %4, align 4, !dbg !1261
  %58 = getelementptr inbounds %struct.k_mbox_msg, ptr %57, i32 0, i32 1, !dbg !1262
  %59 = load i32, ptr %58, align 4, !dbg !1262
  %60 = icmp ugt i32 %56, %59, !dbg !1263
  br i1 %60, label %61, label %67, !dbg !1264

61:                                               ; preds = %32
  %62 = load ptr, ptr %4, align 4, !dbg !1265
  %63 = getelementptr inbounds %struct.k_mbox_msg, ptr %62, i32 0, i32 1, !dbg !1267
  %64 = load i32, ptr %63, align 4, !dbg !1267
  %65 = load ptr, ptr %5, align 4, !dbg !1268
  %66 = getelementptr inbounds %struct.k_mbox_msg, ptr %65, i32 0, i32 1, !dbg !1269
  store i32 %64, ptr %66, align 4, !dbg !1270
  br label %67, !dbg !1271

67:                                               ; preds = %61, %32
  %68 = load ptr, ptr %4, align 4, !dbg !1272
  %69 = getelementptr inbounds %struct.k_mbox_msg, ptr %68, i32 0, i32 3, !dbg !1273
  %70 = load ptr, ptr %69, align 4, !dbg !1273
  %71 = load ptr, ptr %5, align 4, !dbg !1274
  %72 = getelementptr inbounds %struct.k_mbox_msg, ptr %71, i32 0, i32 3, !dbg !1275
  store ptr %70, ptr %72, align 4, !dbg !1276
  %73 = load ptr, ptr %5, align 4, !dbg !1277
  %74 = getelementptr inbounds %struct.k_mbox_msg, ptr %73, i32 0, i32 5, !dbg !1278
  %75 = load ptr, ptr %4, align 4, !dbg !1279
  %76 = getelementptr inbounds %struct.k_mbox_msg, ptr %75, i32 0, i32 5, !dbg !1280
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %74, ptr align 4 %76, i32 8, i1 false), !dbg !1280
  %77 = load ptr, ptr %5, align 4, !dbg !1281
  %78 = getelementptr inbounds %struct.k_mbox_msg, ptr %77, i32 0, i32 3, !dbg !1283
  %79 = load ptr, ptr %78, align 4, !dbg !1283
  %80 = icmp ne ptr %79, null, !dbg !1284
  br i1 %80, label %81, label %85, !dbg !1285

81:                                               ; preds = %67
  %82 = load ptr, ptr %5, align 4, !dbg !1286
  %83 = getelementptr inbounds %struct.k_mbox_msg, ptr %82, i32 0, i32 5, !dbg !1288
  %84 = getelementptr inbounds %struct.k_mem_block, ptr %83, i32 0, i32 0, !dbg !1289
  store ptr null, ptr %84, align 4, !dbg !1290
  br label %100, !dbg !1291

85:                                               ; preds = %67
  %86 = load ptr, ptr %5, align 4, !dbg !1292
  %87 = getelementptr inbounds %struct.k_mbox_msg, ptr %86, i32 0, i32 5, !dbg !1294
  %88 = getelementptr inbounds %struct.k_mem_block, ptr %87, i32 0, i32 0, !dbg !1295
  %89 = load ptr, ptr %88, align 4, !dbg !1295
  %90 = icmp ne ptr %89, null, !dbg !1296
  br i1 %90, label %91, label %98, !dbg !1297

91:                                               ; preds = %85
  %92 = load ptr, ptr %5, align 4, !dbg !1298
  %93 = getelementptr inbounds %struct.k_mbox_msg, ptr %92, i32 0, i32 5, !dbg !1300
  %94 = getelementptr inbounds %struct.k_mem_block, ptr %93, i32 0, i32 0, !dbg !1301
  %95 = load ptr, ptr %94, align 4, !dbg !1301
  %96 = load ptr, ptr %5, align 4, !dbg !1302
  %97 = getelementptr inbounds %struct.k_mbox_msg, ptr %96, i32 0, i32 3, !dbg !1303
  store ptr %95, ptr %97, align 4, !dbg !1304
  br label %99, !dbg !1305

98:                                               ; preds = %85
  br label %99

99:                                               ; preds = %98, %91
  br label %100

100:                                              ; preds = %99, %81
  %101 = load ptr, ptr %4, align 4, !dbg !1306
  %102 = getelementptr inbounds %struct.k_mbox_msg, ptr %101, i32 0, i32 8, !dbg !1307
  %103 = load ptr, ptr %102, align 4, !dbg !1307
  %104 = load ptr, ptr %5, align 4, !dbg !1308
  %105 = getelementptr inbounds %struct.k_mbox_msg, ptr %104, i32 0, i32 8, !dbg !1309
  store ptr %103, ptr %105, align 4, !dbg !1310
  store i32 0, ptr %3, align 4, !dbg !1311
  br label %107, !dbg !1311

106:                                              ; preds = %24, %11
  store i32 -1, ptr %3, align 4, !dbg !1312
  br label %107, !dbg !1312

107:                                              ; preds = %106, %100
  %108 = load i32, ptr %3, align 4, !dbg !1313
  ret i32 %108, !dbg !1313
}

declare void @z_unpend_thread(ptr noundef) #3

; Function Attrs: noinline nounwind optnone
define internal i32 @mbox_message_data_check(ptr noundef %0, ptr noundef %1) #0 !dbg !1314 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1317, metadata !DIExpression()), !dbg !1318
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1319, metadata !DIExpression()), !dbg !1320
  %5 = load ptr, ptr %4, align 4, !dbg !1321
  %6 = icmp ne ptr %5, null, !dbg !1323
  br i1 %6, label %7, label %10, !dbg !1324

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 4, !dbg !1325
  %9 = load ptr, ptr %4, align 4, !dbg !1327
  call void @k_mbox_data_get(ptr noundef %8, ptr noundef %9), !dbg !1328
  br label %19, !dbg !1329

10:                                               ; preds = %2
  %11 = load ptr, ptr %3, align 4, !dbg !1330
  %12 = getelementptr inbounds %struct.k_mbox_msg, ptr %11, i32 0, i32 1, !dbg !1332
  %13 = load i32, ptr %12, align 4, !dbg !1332
  %14 = icmp eq i32 %13, 0, !dbg !1333
  br i1 %14, label %15, label %17, !dbg !1334

15:                                               ; preds = %10
  %16 = load ptr, ptr %3, align 4, !dbg !1335
  call void @mbox_message_dispose(ptr noundef %16), !dbg !1337
  br label %18, !dbg !1338

17:                                               ; preds = %10
  br label %18

18:                                               ; preds = %17, %15
  br label %19

19:                                               ; preds = %18, %7
  ret i32 0, !dbg !1339
}

; Function Attrs: noinline nounwind optnone
define internal ptr @sys_dlist_peek_next(ptr noundef %0, ptr noundef %1) #0 !dbg !1340 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1343, metadata !DIExpression()), !dbg !1344
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1345, metadata !DIExpression()), !dbg !1346
  %5 = load ptr, ptr %4, align 4, !dbg !1347
  %6 = icmp ne ptr %5, null, !dbg !1348
  br i1 %6, label %7, label %11, !dbg !1349

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 4, !dbg !1350
  %9 = load ptr, ptr %4, align 4, !dbg !1351
  %10 = call ptr @sys_dlist_peek_next_no_check(ptr noundef %8, ptr noundef %9), !dbg !1352
  br label %12, !dbg !1349

11:                                               ; preds = %2
  br label %12, !dbg !1349

12:                                               ; preds = %11, %7
  %13 = phi ptr [ %10, %7 ], [ null, %11 ], !dbg !1349
  ret ptr %13, !dbg !1353
}

declare i32 @z_pend_curr(ptr noundef, [1 x i32], ptr noundef, [1 x i64]) #3

declare i64 @z_timeout_expires(ptr noundef) #3

declare i64 @z_timeout_remaining(ptr noundef) #3

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @sys_sflist_is_empty(ptr noundef %0) #0 !dbg !1354 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1359, metadata !DIExpression()), !dbg !1360
  %3 = load ptr, ptr %2, align 4, !dbg !1361
  %4 = call ptr @sys_sflist_peek_head(ptr noundef %3), !dbg !1362
  %5 = icmp eq ptr %4, null, !dbg !1363
  ret i1 %5, !dbg !1364
}

; Function Attrs: noinline nounwind optnone
define internal ptr @sys_sflist_peek_head(ptr noundef %0) #0 !dbg !1365 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1368, metadata !DIExpression()), !dbg !1369
  %3 = load ptr, ptr %2, align 4, !dbg !1370
  %4 = getelementptr inbounds %struct._sflist, ptr %3, i32 0, i32 0, !dbg !1371
  %5 = load ptr, ptr %4, align 4, !dbg !1371
  ret ptr %5, !dbg !1372
}

declare void @z_init_thread_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #3

; Function Attrs: noinline nounwind optnone
define internal i32 @k_stack_push(ptr noundef %0, i32 noundef %1) #0 !dbg !1373 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1378, metadata !DIExpression()), !dbg !1379
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1380, metadata !DIExpression()), !dbg !1381
  br label %5, !dbg !1382

5:                                                ; preds = %2
  call void asm sideeffect "", "~{memory}"() #4, !dbg !1383, !srcloc !1385
  br label %6, !dbg !1386

6:                                                ; preds = %5
  %7 = load ptr, ptr %3, align 4, !dbg !1387
  %8 = load i32, ptr %4, align 4, !dbg !1388
  %9 = call i32 @z_impl_k_stack_push(ptr noundef %7, i32 noundef %8), !dbg !1389
  ret i32 %9, !dbg !1390
}

declare i32 @z_impl_k_stack_push(ptr noundef, i32 noundef) #3

; Function Attrs: noinline nounwind optnone
define internal void @sys_dlist_init(ptr noundef %0) #0 !dbg !1391 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1394, metadata !DIExpression()), !dbg !1395
  %3 = load ptr, ptr %2, align 4, !dbg !1396
  %4 = load ptr, ptr %2, align 4, !dbg !1397
  %5 = getelementptr inbounds %struct._dnode, ptr %4, i32 0, i32 0, !dbg !1398
  store ptr %3, ptr %5, align 4, !dbg !1399
  %6 = load ptr, ptr %2, align 4, !dbg !1400
  %7 = load ptr, ptr %2, align 4, !dbg !1401
  %8 = getelementptr inbounds %struct._dnode, ptr %7, i32 0, i32 1, !dbg !1402
  store ptr %6, ptr %8, align 4, !dbg !1403
  ret void, !dbg !1404
}

declare void @z_ready_thread(ptr noundef) #3

declare void @z_reschedule(ptr noundef, [1 x i32]) #3

declare void @z_pend_thread(ptr noundef, ptr noundef, [1 x i64]) #3

; Function Attrs: noinline nounwind optnone
define internal i32 @k_stack_pop(ptr noundef %0, ptr noundef %1, [1 x i64] %2) #0 !dbg !1405 {
  %4 = alloca %struct.k_timeout_t, align 8
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = getelementptr inbounds %struct.k_timeout_t, ptr %4, i32 0, i32 0
  store [1 x i64] %2, ptr %7, align 8
  store ptr %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1408, metadata !DIExpression()), !dbg !1409
  store ptr %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1410, metadata !DIExpression()), !dbg !1411
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1412, metadata !DIExpression()), !dbg !1413
  br label %8, !dbg !1414

8:                                                ; preds = %3
  call void asm sideeffect "", "~{memory}"() #4, !dbg !1415, !srcloc !1417
  br label %9, !dbg !1418

9:                                                ; preds = %8
  %10 = load ptr, ptr %5, align 4, !dbg !1419
  %11 = load ptr, ptr %6, align 4, !dbg !1420
  %12 = getelementptr inbounds %struct.k_timeout_t, ptr %4, i32 0, i32 0, !dbg !1421
  %13 = load [1 x i64], ptr %12, align 8, !dbg !1421
  %14 = call i32 @z_impl_k_stack_pop(ptr noundef %10, ptr noundef %11, [1 x i64] %13), !dbg !1421
  ret i32 %14, !dbg !1422
}

declare i32 @z_impl_k_stack_pop(ptr noundef, ptr noundef, [1 x i64]) #3

; Function Attrs: noinline nounwind optnone
define internal void @mbox_async_free(ptr noundef %0) #0 !dbg !1423 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1426, metadata !DIExpression()), !dbg !1427
  %3 = load ptr, ptr %2, align 4, !dbg !1428
  %4 = ptrtoint ptr %3 to i32, !dbg !1429
  %5 = call i32 @k_stack_push(ptr noundef @async_msg_free, i32 noundef %4), !dbg !1430
  ret void, !dbg !1431
}

; Function Attrs: noinline nounwind optnone
define internal void @k_sem_give(ptr noundef %0) #0 !dbg !1432 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1435, metadata !DIExpression()), !dbg !1436
  br label %3, !dbg !1437

3:                                                ; preds = %1
  call void asm sideeffect "", "~{memory}"() #4, !dbg !1438, !srcloc !1440
  br label %4, !dbg !1441

4:                                                ; preds = %3
  %5 = load ptr, ptr %2, align 4, !dbg !1442
  call void @z_impl_k_sem_give(ptr noundef %5), !dbg !1443
  ret void, !dbg !1444
}

; Function Attrs: noinline nounwind optnone
define internal void @z_mark_thread_as_not_pending(ptr noundef %0) #0 !dbg !1445 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1449, metadata !DIExpression()), !dbg !1450
  %3 = load ptr, ptr %2, align 4, !dbg !1451
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !1452
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 3, !dbg !1453
  %6 = load i8, ptr %5, align 1, !dbg !1454
  %7 = zext i8 %6 to i32, !dbg !1454
  %8 = and i32 %7, -3, !dbg !1454
  %9 = trunc i32 %8 to i8, !dbg !1454
  store i8 %9, ptr %5, align 1, !dbg !1454
  ret void, !dbg !1455
}

; Function Attrs: noinline nounwind optnone
define internal void @z_reschedule_unlocked() #0 !dbg !1456 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata ptr %1, metadata !608, metadata !DIExpression()), !dbg !1459
  %2 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #4, !dbg !1461, !srcloc !616
  store i32 %2, ptr %1, align 4, !dbg !1461
  %3 = load i32, ptr %1, align 4, !dbg !1462
  call void @z_reschedule_irqlock(i32 noundef %3), !dbg !1463
  ret void, !dbg !1464
}

declare void @z_impl_k_sem_give(ptr noundef) #3

declare void @z_reschedule_irqlock(i32 noundef) #3

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @sys_dlist_is_empty(ptr noundef %0) #0 !dbg !1465 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1468, metadata !DIExpression()), !dbg !1469
  %3 = load ptr, ptr %2, align 4, !dbg !1470
  %4 = getelementptr inbounds %struct._dnode, ptr %3, i32 0, i32 0, !dbg !1471
  %5 = load ptr, ptr %4, align 4, !dbg !1471
  %6 = load ptr, ptr %2, align 4, !dbg !1472
  %7 = icmp eq ptr %5, %6, !dbg !1473
  ret i1 %7, !dbg !1474
}

; Function Attrs: noinline nounwind optnone
define internal ptr @sys_dlist_peek_next_no_check(ptr noundef %0, ptr noundef %1) #0 !dbg !1475 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1476, metadata !DIExpression()), !dbg !1477
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1478, metadata !DIExpression()), !dbg !1479
  %5 = load ptr, ptr %4, align 4, !dbg !1480
  %6 = load ptr, ptr %3, align 4, !dbg !1481
  %7 = getelementptr inbounds %struct._dnode, ptr %6, i32 0, i32 1, !dbg !1482
  %8 = load ptr, ptr %7, align 4, !dbg !1482
  %9 = icmp eq ptr %5, %8, !dbg !1483
  br i1 %9, label %10, label %11, !dbg !1484

10:                                               ; preds = %2
  br label %15, !dbg !1484

11:                                               ; preds = %2
  %12 = load ptr, ptr %4, align 4, !dbg !1485
  %13 = getelementptr inbounds %struct._dnode, ptr %12, i32 0, i32 0, !dbg !1486
  %14 = load ptr, ptr %13, align 4, !dbg !1486
  br label %15, !dbg !1484

15:                                               ; preds = %11, %10
  %16 = phi ptr [ null, %10 ], [ %14, %11 ], !dbg !1484
  ret ptr %16, !dbg !1487
}

attributes #0 = { noinline nounwind optnone "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!295, !296, !297, !298, !299, !300, !301, !302}
!llvm.ident = !{!303}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "async_msg_free", scope: !2, file: !252, line: 36, type: !287, isLocal: false, isDefinition: true, align: 32)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !88, globals: !256, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "mailbox.c", directory: "/home/sri/zephyrproject/zephyr/build")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "k_objects", file: !6, line: 29, baseType: !7, size: 8, elements: !8)
!6 = !DIFile(filename: "include/zephyr/sys/kobject.h", directory: "/home/sri/zephyrproject/zephyr")
!7 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87}
!9 = !DIEnumerator(name: "K_OBJ_ANY", value: 0)
!10 = !DIEnumerator(name: "K_OBJ_MEM_SLAB", value: 1)
!11 = !DIEnumerator(name: "K_OBJ_MSGQ", value: 2)
!12 = !DIEnumerator(name: "K_OBJ_MUTEX", value: 3)
!13 = !DIEnumerator(name: "K_OBJ_PIPE", value: 4)
!14 = !DIEnumerator(name: "K_OBJ_QUEUE", value: 5)
!15 = !DIEnumerator(name: "K_OBJ_POLL_SIGNAL", value: 6)
!16 = !DIEnumerator(name: "K_OBJ_SEM", value: 7)
!17 = !DIEnumerator(name: "K_OBJ_STACK", value: 8)
!18 = !DIEnumerator(name: "K_OBJ_THREAD", value: 9)
!19 = !DIEnumerator(name: "K_OBJ_TIMER", value: 10)
!20 = !DIEnumerator(name: "K_OBJ_THREAD_STACK_ELEMENT", value: 11)
!21 = !DIEnumerator(name: "K_OBJ_NET_SOCKET", value: 12)
!22 = !DIEnumerator(name: "K_OBJ_NET_IF", value: 13)
!23 = !DIEnumerator(name: "K_OBJ_SYS_MUTEX", value: 14)
!24 = !DIEnumerator(name: "K_OBJ_FUTEX", value: 15)
!25 = !DIEnumerator(name: "K_OBJ_CONDVAR", value: 16)
!26 = !DIEnumerator(name: "K_OBJ_DRIVER_GPIO", value: 17)
!27 = !DIEnumerator(name: "K_OBJ_DRIVER_PWM", value: 18)
!28 = !DIEnumerator(name: "K_OBJ_DRIVER_RESET", value: 19)
!29 = !DIEnumerator(name: "K_OBJ_DRIVER_UART", value: 20)
!30 = !DIEnumerator(name: "K_OBJ_DRIVER_CRYPTO", value: 21)
!31 = !DIEnumerator(name: "K_OBJ_DRIVER_ADC", value: 22)
!32 = !DIEnumerator(name: "K_OBJ_DRIVER_AUXDISPLAY", value: 23)
!33 = !DIEnumerator(name: "K_OBJ_DRIVER_BBRAM", value: 24)
!34 = !DIEnumerator(name: "K_OBJ_DRIVER_CAN", value: 25)
!35 = !DIEnumerator(name: "K_OBJ_DRIVER_CHARGER", value: 26)
!36 = !DIEnumerator(name: "K_OBJ_DRIVER_COREDUMP", value: 27)
!37 = !DIEnumerator(name: "K_OBJ_DRIVER_COUNTER", value: 28)
!38 = !DIEnumerator(name: "K_OBJ_DRIVER_DAC", value: 29)
!39 = !DIEnumerator(name: "K_OBJ_DRIVER_DAI", value: 30)
!40 = !DIEnumerator(name: "K_OBJ_DRIVER_DMA", value: 31)
!41 = !DIEnumerator(name: "K_OBJ_DRIVER_EDAC", value: 32)
!42 = !DIEnumerator(name: "K_OBJ_DRIVER_EEPROM", value: 33)
!43 = !DIEnumerator(name: "K_OBJ_DRIVER_FUEL_GAUGE_EMUL", value: 34)
!44 = !DIEnumerator(name: "K_OBJ_DRIVER_EMUL_SENSOR_BACKEND_API", value: 35)
!45 = !DIEnumerator(name: "K_OBJ_DRIVER_ENTROPY", value: 36)
!46 = !DIEnumerator(name: "K_OBJ_DRIVER_ESPI", value: 37)
!47 = !DIEnumerator(name: "K_OBJ_DRIVER_ESPI_SAF", value: 38)
!48 = !DIEnumerator(name: "K_OBJ_DRIVER_FLASH", value: 39)
!49 = !DIEnumerator(name: "K_OBJ_DRIVER_FPGA", value: 40)
!50 = !DIEnumerator(name: "K_OBJ_DRIVER_FUEL_GAUGE", value: 41)
!51 = !DIEnumerator(name: "K_OBJ_DRIVER_HWSPINLOCK", value: 42)
!52 = !DIEnumerator(name: "K_OBJ_DRIVER_I2C", value: 43)
!53 = !DIEnumerator(name: "K_OBJ_DRIVER_I2S", value: 44)
!54 = !DIEnumerator(name: "K_OBJ_DRIVER_I3C", value: 45)
!55 = !DIEnumerator(name: "K_OBJ_DRIVER_IPM", value: 46)
!56 = !DIEnumerator(name: "K_OBJ_DRIVER_KSCAN", value: 47)
!57 = !DIEnumerator(name: "K_OBJ_DRIVER_LED", value: 48)
!58 = !DIEnumerator(name: "K_OBJ_DRIVER_MBOX", value: 49)
!59 = !DIEnumerator(name: "K_OBJ_DRIVER_MDIO", value: 50)
!60 = !DIEnumerator(name: "K_OBJ_DRIVER_MIPI_DSI", value: 51)
!61 = !DIEnumerator(name: "K_OBJ_DRIVER_PECI", value: 52)
!62 = !DIEnumerator(name: "K_OBJ_DRIVER_PS2", value: 53)
!63 = !DIEnumerator(name: "K_OBJ_DRIVER_PTP_CLOCK", value: 54)
!64 = !DIEnumerator(name: "K_OBJ_DRIVER_REGULATOR_PARENT", value: 55)
!65 = !DIEnumerator(name: "K_OBJ_DRIVER_REGULATOR", value: 56)
!66 = !DIEnumerator(name: "K_OBJ_DRIVER_RETAINED_MEM", value: 57)
!67 = !DIEnumerator(name: "K_OBJ_DRIVER_RTC", value: 58)
!68 = !DIEnumerator(name: "K_OBJ_DRIVER_SDHC", value: 59)
!69 = !DIEnumerator(name: "K_OBJ_DRIVER_SENSOR", value: 60)
!70 = !DIEnumerator(name: "K_OBJ_DRIVER_SMBUS", value: 61)
!71 = !DIEnumerator(name: "K_OBJ_DRIVER_SPI", value: 62)
!72 = !DIEnumerator(name: "K_OBJ_DRIVER_SYSCON", value: 63)
!73 = !DIEnumerator(name: "K_OBJ_DRIVER_W1", value: 64)
!74 = !DIEnumerator(name: "K_OBJ_DRIVER_WDT", value: 65)
!75 = !DIEnumerator(name: "K_OBJ_DRIVER_CAN_TRANSCEIVER", value: 66)
!76 = !DIEnumerator(name: "K_OBJ_DRIVER_UART_MUX", value: 67)
!77 = !DIEnumerator(name: "K_OBJ_DRIVER_ITS", value: 68)
!78 = !DIEnumerator(name: "K_OBJ_DRIVER_TGPIO", value: 69)
!79 = !DIEnumerator(name: "K_OBJ_DRIVER_PCIE_CTRL", value: 70)
!80 = !DIEnumerator(name: "K_OBJ_DRIVER_SVC", value: 71)
!81 = !DIEnumerator(name: "K_OBJ_DRIVER_BC12_EMUL", value: 72)
!82 = !DIEnumerator(name: "K_OBJ_DRIVER_BC12", value: 73)
!83 = !DIEnumerator(name: "K_OBJ_DRIVER_TCPC", value: 74)
!84 = !DIEnumerator(name: "K_OBJ_DRIVER_IVSHMEM", value: 75)
!85 = !DIEnumerator(name: "K_OBJ_DRIVER_EC_HOST_CMD_BACKEND_API", value: 76)
!86 = !DIEnumerator(name: "K_OBJ_DRIVER_ETHPHY", value: 77)
!87 = !DIEnumerator(name: "K_OBJ_LAST", value: 78)
!88 = !{!89, !210, !212, !214, !153, !183, !246, !248, !249, !250, !236}
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 32)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_thread", file: !91, line: 250, size: 896, elements: !92)
!91 = !DIFile(filename: "include/zephyr/kernel/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!92 = !{!93, !167, !180, !181, !182, !184, !205}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !90, file: !91, line: 252, baseType: !94, size: 384)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_base", file: !91, line: 58, size: 384, elements: !95)
!95 = !{!96, !124, !132, !135, !136, !149, !152, !154}
!96 = !DIDerivedType(tag: DW_TAG_member, scope: !94, file: !91, line: 61, baseType: !97, size: 64)
!97 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !94, file: !91, line: 61, size: 64, elements: !98)
!98 = !{!99, !115}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_dlist", scope: !97, file: !91, line: 62, baseType: !100, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dnode_t", file: !101, line: 55, baseType: !102)
!101 = !DIFile(filename: "include/zephyr/sys/dlist.h", directory: "/home/sri/zephyrproject/zephyr")
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_dnode", file: !101, line: 37, size: 64, elements: !103)
!103 = !{!104, !110}
!104 = !DIDerivedType(tag: DW_TAG_member, scope: !102, file: !101, line: 38, baseType: !105, size: 32)
!105 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !102, file: !101, line: 38, size: 32, elements: !106)
!106 = !{!107, !109}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !105, file: !101, line: 39, baseType: !108, size: 32)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 32)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !105, file: !101, line: 40, baseType: !108, size: 32)
!110 = !DIDerivedType(tag: DW_TAG_member, scope: !102, file: !101, line: 42, baseType: !111, size: 32, offset: 32)
!111 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !102, file: !101, line: 42, size: 32, elements: !112)
!112 = !{!113, !114}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !111, file: !101, line: 43, baseType: !108, size: 32)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !111, file: !101, line: 44, baseType: !108, size: 32)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_rb", scope: !97, file: !91, line: 63, baseType: !116, size: 64)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rbnode", file: !117, line: 58, size: 64, elements: !118)
!117 = !DIFile(filename: "include/zephyr/sys/rb.h", directory: "/home/sri/zephyrproject/zephyr")
!118 = !{!119}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !116, file: !117, line: 60, baseType: !120, size: 64)
!120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 64, elements: !122)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 32)
!122 = !{!123}
!123 = !DISubrange(count: 2)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "pended_on", scope: !94, file: !91, line: 69, baseType: !125, size: 32, offset: 64)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 32)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "_wait_q_t", file: !127, line: 243, baseType: !128)
!127 = !DIFile(filename: "include/zephyr/kernel_structs.h", directory: "/home/sri/zephyrproject/zephyr")
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !127, line: 241, size: 64, elements: !129)
!129 = !{!130}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !128, file: !127, line: 242, baseType: !131, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dlist_t", file: !101, line: 51, baseType: !102)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "user_options", scope: !94, file: !91, line: 72, baseType: !133, size: 8, offset: 96)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !134, line: 62, baseType: !7)
!134 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/stdint.h", directory: "")
!135 = !DIDerivedType(tag: DW_TAG_member, name: "thread_state", scope: !94, file: !91, line: 75, baseType: !133, size: 8, offset: 104)
!136 = !DIDerivedType(tag: DW_TAG_member, scope: !94, file: !91, line: 91, baseType: !137, size: 16, offset: 112)
!137 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !94, file: !91, line: 91, size: 16, elements: !138)
!138 = !{!139, !146}
!139 = !DIDerivedType(tag: DW_TAG_member, scope: !137, file: !91, line: 92, baseType: !140, size: 16)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !137, file: !91, line: 92, size: 16, elements: !141)
!141 = !{!142, !145}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !140, file: !91, line: 97, baseType: !143, size: 8)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !134, line: 56, baseType: !144)
!144 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "sched_locked", scope: !140, file: !91, line: 98, baseType: !133, size: 8, offset: 8)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "preempt", scope: !137, file: !91, line: 101, baseType: !147, size: 16)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !134, line: 63, baseType: !148)
!148 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "order_key", scope: !94, file: !91, line: 108, baseType: !150, size: 32, offset: 128)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !134, line: 64, baseType: !151)
!151 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "swap_data", scope: !94, file: !91, line: 132, baseType: !153, size: 32, offset: 160)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !94, file: !91, line: 136, baseType: !155, size: 192, offset: 192)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_timeout", file: !127, line: 254, size: 192, elements: !156)
!156 = !{!157, !158, !164}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !155, file: !127, line: 255, baseType: !100, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !155, file: !127, line: 256, baseType: !159, size: 32, offset: 64)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "_timeout_func_t", file: !127, line: 252, baseType: !160)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 32)
!161 = !DISubroutineType(types: !162)
!162 = !{null, !163}
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 32)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "dticks", scope: !155, file: !127, line: 259, baseType: !165, size: 64, offset: 128)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !134, line: 59, baseType: !166)
!166 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "callee_saved", scope: !90, file: !91, line: 255, baseType: !168, size: 288, offset: 384)
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_callee_saved", file: !169, line: 25, size: 288, elements: !170)
!169 = !DIFile(filename: "include/zephyr/arch/arm/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!170 = !{!171, !172, !173, !174, !175, !176, !177, !178, !179}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "v1", scope: !168, file: !169, line: 26, baseType: !150, size: 32)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "v2", scope: !168, file: !169, line: 27, baseType: !150, size: 32, offset: 32)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "v3", scope: !168, file: !169, line: 28, baseType: !150, size: 32, offset: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "v4", scope: !168, file: !169, line: 29, baseType: !150, size: 32, offset: 96)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "v5", scope: !168, file: !169, line: 30, baseType: !150, size: 32, offset: 128)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "v6", scope: !168, file: !169, line: 31, baseType: !150, size: 32, offset: 160)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "v7", scope: !168, file: !169, line: 32, baseType: !150, size: 32, offset: 192)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "v8", scope: !168, file: !169, line: 33, baseType: !150, size: 32, offset: 224)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "psp", scope: !168, file: !169, line: 34, baseType: !150, size: 32, offset: 256)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "init_data", scope: !90, file: !91, line: 258, baseType: !153, size: 32, offset: 672)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "join_queue", scope: !90, file: !91, line: 261, baseType: !126, size: 64, offset: 704)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "errno_var", scope: !90, file: !91, line: 302, baseType: !183, size: 32, offset: 768)
!183 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "resource_pool", scope: !90, file: !91, line: 333, baseType: !185, size: 32, offset: 800)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 32)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_heap", file: !187, line: 5291, size: 160, elements: !188)
!187 = !DIFile(filename: "include/zephyr/kernel.h", directory: "/home/sri/zephyrproject/zephyr")
!188 = !{!189, !200, !201}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !186, file: !187, line: 5292, baseType: !190, size: 96)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sys_heap", file: !191, line: 56, size: 96, elements: !192)
!191 = !DIFile(filename: "include/zephyr/sys/sys_heap.h", directory: "/home/sri/zephyrproject/zephyr")
!192 = !{!193, !196, !197}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !190, file: !191, line: 57, baseType: !194, size: 32)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 32)
!195 = !DICompositeType(tag: DW_TAG_structure_type, name: "z_heap", file: !191, line: 57, flags: DIFlagFwdDecl)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "init_mem", scope: !190, file: !191, line: 58, baseType: !153, size: 32, offset: 32)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "init_bytes", scope: !190, file: !191, line: 59, baseType: !198, size: 32, offset: 64)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !199, line: 46, baseType: !151)
!199 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/lib/clang/17/include/stddef.h", directory: "")
!200 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !186, file: !187, line: 5293, baseType: !126, size: 64, offset: 96)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !186, file: !187, line: 5294, baseType: !202, offset: 160)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_spinlock", file: !203, line: 45, elements: !204)
!203 = !DIFile(filename: "include/zephyr/spinlock.h", directory: "/home/sri/zephyrproject/zephyr")
!204 = !{}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !90, file: !91, line: 355, baseType: !206, size: 64, offset: 832)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_arch", file: !169, line: 60, size: 64, elements: !207)
!207 = !{!208, !209}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "basepri", scope: !206, file: !169, line: 63, baseType: !150, size: 32)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "swap_return_value", scope: !206, file: !169, line: 66, baseType: !150, size: 32, offset: 32)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_ticks_t", file: !211, line: 46, baseType: !165)
!211 = !DIFile(filename: "include/zephyr/sys_clock.h", directory: "/home/sri/zephyrproject/zephyr")
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 32)
!213 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 32)
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_mbox_msg", file: !187, line: 4682, size: 352, elements: !216)
!216 = !{!217, !218, !219, !220, !221, !222, !235, !237, !238, !239}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_mailbox", scope: !215, file: !187, line: 4684, baseType: !150, size: 32)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !215, file: !187, line: 4686, baseType: !198, size: 32, offset: 32)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !215, file: !187, line: 4688, baseType: !150, size: 32, offset: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "tx_data", scope: !215, file: !187, line: 4690, baseType: !153, size: 32, offset: 96)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "_rx_data", scope: !215, file: !187, line: 4692, baseType: !153, size: 32, offset: 128)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "tx_block", scope: !215, file: !187, line: 4694, baseType: !223, size: 64, offset: 160)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_mem_block", file: !224, line: 24, size: 64, elements: !225)
!224 = !DIFile(filename: "include/zephyr/kernel/mempool_heap.h", directory: "/home/sri/zephyrproject/zephyr")
!225 = !{!226}
!226 = !DIDerivedType(tag: DW_TAG_member, scope: !223, file: !224, line: 25, baseType: !227, size: 64)
!227 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !223, file: !224, line: 25, size: 64, elements: !228)
!228 = !{!229, !230}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !227, file: !224, line: 26, baseType: !153, size: 32)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !227, file: !224, line: 27, baseType: !231, size: 64)
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_mem_block_id", file: !224, line: 16, size: 64, elements: !232)
!232 = !{!233, !234}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !231, file: !224, line: 17, baseType: !153, size: 32)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !231, file: !224, line: 18, baseType: !185, size: 32, offset: 32)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "rx_source_thread", scope: !215, file: !187, line: 4696, baseType: !236, size: 32, offset: 224)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_tid_t", file: !91, line: 359, baseType: !89)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "tx_target_thread", scope: !215, file: !187, line: 4698, baseType: !236, size: 32, offset: 256)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "_syncing_thread", scope: !215, file: !187, line: 4700, baseType: !236, size: 32, offset: 288)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "_async_sem", scope: !215, file: !187, line: 4703, baseType: !240, size: 32, offset: 320)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 32)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sem", file: !187, line: 3092, size: 128, elements: !242)
!242 = !{!243, !244, !245}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !241, file: !187, line: 3093, baseType: !126, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !241, file: !187, line: 3094, baseType: !151, size: 32, offset: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !241, file: !187, line: 3095, baseType: !151, size: 32, offset: 96)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "stack_data_t", file: !187, line: 2738, baseType: !247)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !134, line: 102, baseType: !151)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 32)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 32)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 32)
!251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_mbox_async", file: !252, line: 30, size: 768, elements: !253)
!252 = !DIFile(filename: "kernel/mailbox.c", directory: "/home/sri/zephyrproject/zephyr")
!253 = !{!254, !255}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !251, file: !252, line: 31, baseType: !94, size: 384)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "tx_msg", scope: !251, file: !252, line: 32, baseType: !215, size: 352, offset: 384)
!256 = !{!0, !257, !278, !283}
!257 = !DIGlobalVariableExpression(var: !258, expr: !DIExpression())
!258 = distinct !DIGlobalVariable(name: "__init_init_mbox_module", scope: !2, file: !252, line: 88, type: !259, isLocal: true, isDefinition: true, align: 32)
!259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !260)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "init_entry", file: !261, line: 92, size: 64, elements: !262)
!261 = !DIFile(filename: "include/zephyr/init.h", directory: "/home/sri/zephyrproject/zephyr")
!262 = !{!263, !277}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "init_fn", scope: !260, file: !261, line: 94, baseType: !264, size: 32)
!264 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "init_function", file: !261, line: 59, size: 32, elements: !265)
!265 = !{!266, !270}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "sys", scope: !264, file: !261, line: 66, baseType: !267, size: 32)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 32)
!268 = !DISubroutineType(types: !269)
!269 = !{!183}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !264, file: !261, line: 75, baseType: !271, size: 32)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 32)
!272 = !DISubroutineType(types: !273)
!273 = !{!183, !274}
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 32)
!275 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !276)
!276 = !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !261, line: 50, flags: DIFlagFwdDecl)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !260, file: !261, line: 99, baseType: !274, size: 32, offset: 32)
!278 = !DIGlobalVariableExpression(var: !279, expr: !DIExpression())
!279 = distinct !DIGlobalVariable(name: "_k_stack_buf_async_msg_free", scope: !2, file: !252, line: 36, type: !280, isLocal: false, isDefinition: true)
!280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !246, size: 320, elements: !281)
!281 = !{!282}
!282 = !DISubrange(count: 10)
!283 = !DIGlobalVariableExpression(var: !284, expr: !DIExpression())
!284 = distinct !DIGlobalVariable(name: "async_msg", scope: !285, file: !252, line: 60, type: !286, isLocal: true, isDefinition: true)
!285 = distinct !DISubprogram(name: "init_mbox_module", scope: !252, file: !252, line: 57, type: !268, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !204)
!286 = !DICompositeType(tag: DW_TAG_array_type, baseType: !251, size: 7680, elements: !281)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_stack", file: !187, line: 2740, size: 192, elements: !288)
!288 = !{!289, !290, !291, !292, !293, !294}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !287, file: !187, line: 2741, baseType: !126, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !287, file: !187, line: 2742, baseType: !202, offset: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !287, file: !187, line: 2743, baseType: !249, size: 32, offset: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !287, file: !187, line: 2743, baseType: !249, size: 32, offset: 96)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !287, file: !187, line: 2743, baseType: !249, size: 32, offset: 128)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !287, file: !187, line: 2745, baseType: !133, size: 8, offset: 160)
!295 = !{i32 7, !"Dwarf Version", i32 4}
!296 = !{i32 2, !"Debug Info Version", i32 3}
!297 = !{i32 1, !"wchar_size", i32 4}
!298 = !{i32 1, !"static_rwdata", i32 1}
!299 = !{i32 1, !"enumsize_buildattr", i32 1}
!300 = !{i32 1, !"armlib_unavailable", i32 0}
!301 = !{i32 8, !"PIC Level", i32 2}
!302 = !{i32 7, !"PIE Level", i32 2}
!303 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
!304 = distinct !DISubprogram(name: "z_impl_k_object_access_grant", scope: !6, file: !6, line: 223, type: !305, scopeLine: 225, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !204)
!305 = !DISubroutineType(types: !306)
!306 = !{null, !307, !89}
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 32)
!308 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!309 = !DILocalVariable(name: "object", arg: 1, scope: !304, file: !6, line: 223, type: !307)
!310 = !DILocation(line: 223, column: 61, scope: !304)
!311 = !DILocalVariable(name: "thread", arg: 2, scope: !304, file: !6, line: 224, type: !89)
!312 = !DILocation(line: 224, column: 24, scope: !304)
!313 = !DILocation(line: 226, column: 9, scope: !304)
!314 = !DILocation(line: 227, column: 9, scope: !304)
!315 = !DILocation(line: 228, column: 1, scope: !304)
!316 = distinct !DISubprogram(name: "z_impl_k_object_release", scope: !6, file: !6, line: 243, type: !317, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !204)
!317 = !DISubroutineType(types: !318)
!318 = !{null, !307}
!319 = !DILocalVariable(name: "object", arg: 1, scope: !316, file: !6, line: 243, type: !307)
!320 = !DILocation(line: 243, column: 56, scope: !316)
!321 = !DILocation(line: 245, column: 9, scope: !316)
!322 = !DILocation(line: 246, column: 1, scope: !316)
!323 = distinct !DISubprogram(name: "z_impl_k_object_alloc", scope: !6, file: !6, line: 359, type: !324, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !204)
!324 = !DISubroutineType(types: !325)
!325 = !{!153, !5}
!326 = !DILocalVariable(name: "otype", arg: 1, scope: !323, file: !6, line: 359, type: !5)
!327 = !DILocation(line: 359, column: 58, scope: !323)
!328 = !DILocation(line: 361, column: 9, scope: !323)
!329 = !DILocation(line: 363, column: 2, scope: !323)
!330 = distinct !DISubprogram(name: "z_impl_k_object_alloc_size", scope: !6, file: !6, line: 366, type: !331, scopeLine: 368, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !204)
!331 = !DISubroutineType(types: !332)
!332 = !{!153, !5, !198}
!333 = !DILocalVariable(name: "otype", arg: 1, scope: !330, file: !6, line: 366, type: !5)
!334 = !DILocation(line: 366, column: 63, scope: !330)
!335 = !DILocalVariable(name: "size", arg: 2, scope: !330, file: !6, line: 367, type: !198)
!336 = !DILocation(line: 367, column: 13, scope: !330)
!337 = !DILocation(line: 369, column: 9, scope: !330)
!338 = !DILocation(line: 370, column: 9, scope: !330)
!339 = !DILocation(line: 372, column: 2, scope: !330)
!340 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_expires_ticks", scope: !187, file: !187, line: 656, type: !341, scopeLine: 658, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !204)
!341 = !DISubroutineType(types: !342)
!342 = !{!210, !343}
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 32)
!344 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !90)
!345 = !DILocalVariable(name: "t", arg: 1, scope: !340, file: !187, line: 657, type: !343)
!346 = !DILocation(line: 657, column: 30, scope: !340)
!347 = !DILocation(line: 659, column: 28, scope: !340)
!348 = !DILocation(line: 659, column: 31, scope: !340)
!349 = !DILocation(line: 659, column: 36, scope: !340)
!350 = !DILocation(line: 659, column: 9, scope: !340)
!351 = !DILocation(line: 659, column: 2, scope: !340)
!352 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_remaining_ticks", scope: !187, file: !187, line: 671, type: !341, scopeLine: 673, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !204)
!353 = !DILocalVariable(name: "t", arg: 1, scope: !352, file: !187, line: 672, type: !343)
!354 = !DILocation(line: 672, column: 30, scope: !352)
!355 = !DILocation(line: 674, column: 30, scope: !352)
!356 = !DILocation(line: 674, column: 33, scope: !352)
!357 = !DILocation(line: 674, column: 38, scope: !352)
!358 = !DILocation(line: 674, column: 9, scope: !352)
!359 = !DILocation(line: 674, column: 2, scope: !352)
!360 = distinct !DISubprogram(name: "z_impl_k_timer_expires_ticks", scope: !187, file: !187, line: 1634, type: !361, scopeLine: 1636, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !204)
!361 = !DISubroutineType(types: !362)
!362 = !{!210, !363}
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 32)
!364 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !365)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_timer", file: !187, line: 1439, size: 448, elements: !366)
!366 = !{!367, !368, !369, !374, !375, !380, !381}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !365, file: !187, line: 1445, baseType: !155, size: 192)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !365, file: !187, line: 1448, baseType: !126, size: 64, offset: 192)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_fn", scope: !365, file: !187, line: 1451, baseType: !370, size: 32, offset: 256)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 32)
!371 = !DISubroutineType(types: !372)
!372 = !{null, !373}
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 32)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "stop_fn", scope: !365, file: !187, line: 1454, baseType: !370, size: 32, offset: 288)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !365, file: !187, line: 1457, baseType: !376, size: 64, offset: 320)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_timeout_t", file: !211, line: 67, baseType: !377)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !211, line: 65, size: 64, elements: !378)
!378 = !{!379}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "ticks", scope: !377, file: !211, line: 66, baseType: !210, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !365, file: !187, line: 1460, baseType: !150, size: 32, offset: 384)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !365, file: !187, line: 1463, baseType: !153, size: 32, offset: 416)
!382 = !DILocalVariable(name: "timer", arg: 1, scope: !360, file: !187, line: 1635, type: !363)
!383 = !DILocation(line: 1635, column: 34, scope: !360)
!384 = !DILocation(line: 1637, column: 28, scope: !360)
!385 = !DILocation(line: 1637, column: 35, scope: !360)
!386 = !DILocation(line: 1637, column: 9, scope: !360)
!387 = !DILocation(line: 1637, column: 2, scope: !360)
!388 = distinct !DISubprogram(name: "z_impl_k_timer_remaining_ticks", scope: !187, file: !187, line: 1649, type: !361, scopeLine: 1651, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !204)
!389 = !DILocalVariable(name: "timer", arg: 1, scope: !388, file: !187, line: 1650, type: !363)
!390 = !DILocation(line: 1650, column: 34, scope: !388)
!391 = !DILocation(line: 1652, column: 30, scope: !388)
!392 = !DILocation(line: 1652, column: 37, scope: !388)
!393 = !DILocation(line: 1652, column: 9, scope: !388)
!394 = !DILocation(line: 1652, column: 2, scope: !388)
!395 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_set", scope: !187, file: !187, line: 1689, type: !396, scopeLine: 1691, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !204)
!396 = !DISubroutineType(types: !397)
!397 = !{null, !373, !153}
!398 = !DILocalVariable(name: "timer", arg: 1, scope: !395, file: !187, line: 1689, type: !373)
!399 = !DILocation(line: 1689, column: 65, scope: !395)
!400 = !DILocalVariable(name: "user_data", arg: 2, scope: !395, file: !187, line: 1690, type: !153)
!401 = !DILocation(line: 1690, column: 19, scope: !395)
!402 = !DILocation(line: 1692, column: 21, scope: !395)
!403 = !DILocation(line: 1692, column: 2, scope: !395)
!404 = !DILocation(line: 1692, column: 9, scope: !395)
!405 = !DILocation(line: 1692, column: 19, scope: !395)
!406 = !DILocation(line: 1693, column: 1, scope: !395)
!407 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_get", scope: !187, file: !187, line: 1704, type: !408, scopeLine: 1705, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !204)
!408 = !DISubroutineType(types: !409)
!409 = !{!153, !363}
!410 = !DILocalVariable(name: "timer", arg: 1, scope: !407, file: !187, line: 1704, type: !363)
!411 = !DILocation(line: 1704, column: 72, scope: !407)
!412 = !DILocation(line: 1706, column: 9, scope: !407)
!413 = !DILocation(line: 1706, column: 16, scope: !407)
!414 = !DILocation(line: 1706, column: 2, scope: !407)
!415 = distinct !DISubprogram(name: "z_impl_k_queue_is_empty", scope: !187, file: !187, line: 2071, type: !416, scopeLine: 2072, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !204)
!416 = !DISubroutineType(types: !417)
!417 = !{!183, !418}
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 32)
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_queue", file: !187, line: 1830, size: 128, elements: !420)
!420 = !{!421, !434, !435}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "data_q", scope: !419, file: !187, line: 1831, baseType: !422, size: 64)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sflist_t", file: !423, line: 60, baseType: !424)
!423 = !DIFile(filename: "include/zephyr/sys/sflist.h", directory: "/home/sri/zephyrproject/zephyr")
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sflist", file: !423, line: 53, size: 64, elements: !425)
!425 = !{!426, !433}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !424, file: !423, line: 54, baseType: !427, size: 32)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 32)
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sfnode_t", file: !423, line: 50, baseType: !429)
!429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sfnode", file: !423, line: 44, size: 32, elements: !430)
!430 = !{!431}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "next_and_flags", scope: !429, file: !423, line: 45, baseType: !432, size: 32)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "unative_t", file: !423, line: 40, baseType: !150)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !424, file: !423, line: 55, baseType: !427, size: 32, offset: 32)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !419, file: !187, line: 1832, baseType: !202, offset: 64)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !419, file: !187, line: 1833, baseType: !126, size: 64, offset: 64)
!436 = !DILocalVariable(name: "queue", arg: 1, scope: !415, file: !187, line: 2071, type: !418)
!437 = !DILocation(line: 2071, column: 59, scope: !415)
!438 = !DILocation(line: 2073, column: 35, scope: !415)
!439 = !DILocation(line: 2073, column: 42, scope: !415)
!440 = !DILocation(line: 2073, column: 14, scope: !415)
!441 = !DILocation(line: 2073, column: 9, scope: !415)
!442 = !DILocation(line: 2073, column: 2, scope: !415)
!443 = distinct !DISubprogram(name: "z_impl_k_sem_count_get", scope: !187, file: !187, line: 3209, type: !444, scopeLine: 3210, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !204)
!444 = !DISubroutineType(types: !445)
!445 = !{!151, !240}
!446 = !DILocalVariable(name: "sem", arg: 1, scope: !443, file: !187, line: 3209, type: !240)
!447 = !DILocation(line: 3209, column: 65, scope: !443)
!448 = !DILocation(line: 3211, column: 9, scope: !443)
!449 = !DILocation(line: 3211, column: 14, scope: !443)
!450 = !DILocation(line: 3211, column: 2, scope: !443)
!451 = distinct !DISubprogram(name: "z_impl_k_msgq_num_free_get", scope: !187, file: !187, line: 4649, type: !452, scopeLine: 4650, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !204)
!452 = !DISubroutineType(types: !453)
!453 = !{!150, !454}
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 32)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_msgq", file: !187, line: 4390, size: 320, elements: !456)
!456 = !{!457, !458, !459, !460, !461, !462, !463, !464, !465, !466}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !455, file: !187, line: 4392, baseType: !126, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !455, file: !187, line: 4394, baseType: !202, offset: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "msg_size", scope: !455, file: !187, line: 4396, baseType: !198, size: 32, offset: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !455, file: !187, line: 4398, baseType: !150, size: 32, offset: 96)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_start", scope: !455, file: !187, line: 4400, baseType: !212, size: 32, offset: 128)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_end", scope: !455, file: !187, line: 4402, baseType: !212, size: 32, offset: 160)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "read_ptr", scope: !455, file: !187, line: 4404, baseType: !212, size: 32, offset: 192)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "write_ptr", scope: !455, file: !187, line: 4406, baseType: !212, size: 32, offset: 224)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "used_msgs", scope: !455, file: !187, line: 4408, baseType: !150, size: 32, offset: 256)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !455, file: !187, line: 4413, baseType: !133, size: 8, offset: 288)
!467 = !DILocalVariable(name: "msgq", arg: 1, scope: !451, file: !187, line: 4649, type: !454)
!468 = !DILocation(line: 4649, column: 66, scope: !451)
!469 = !DILocation(line: 4651, column: 9, scope: !451)
!470 = !DILocation(line: 4651, column: 15, scope: !451)
!471 = !DILocation(line: 4651, column: 26, scope: !451)
!472 = !DILocation(line: 4651, column: 32, scope: !451)
!473 = !DILocation(line: 4651, column: 24, scope: !451)
!474 = !DILocation(line: 4651, column: 2, scope: !451)
!475 = distinct !DISubprogram(name: "z_impl_k_msgq_num_used_get", scope: !187, file: !187, line: 4665, type: !452, scopeLine: 4666, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !204)
!476 = !DILocalVariable(name: "msgq", arg: 1, scope: !475, file: !187, line: 4665, type: !454)
!477 = !DILocation(line: 4665, column: 66, scope: !475)
!478 = !DILocation(line: 4667, column: 9, scope: !475)
!479 = !DILocation(line: 4667, column: 15, scope: !475)
!480 = !DILocation(line: 4667, column: 2, scope: !475)
!481 = !DILocalVariable(name: "i", scope: !285, file: !252, line: 75, type: !183)
!482 = !DILocation(line: 75, column: 6, scope: !285)
!483 = !DILocation(line: 77, column: 9, scope: !484)
!484 = distinct !DILexicalBlock(scope: !285, file: !252, line: 77, column: 2)
!485 = !DILocation(line: 77, column: 7, scope: !484)
!486 = !DILocation(line: 77, column: 14, scope: !487)
!487 = distinct !DILexicalBlock(scope: !484, file: !252, line: 77, column: 2)
!488 = !DILocation(line: 77, column: 16, scope: !487)
!489 = !DILocation(line: 77, column: 2, scope: !484)
!490 = !DILocation(line: 78, column: 33, scope: !491)
!491 = distinct !DILexicalBlock(scope: !487, file: !252, line: 77, column: 27)
!492 = !DILocation(line: 78, column: 23, scope: !491)
!493 = !DILocation(line: 78, column: 36, scope: !491)
!494 = !DILocation(line: 78, column: 3, scope: !491)
!495 = !DILocation(line: 79, column: 58, scope: !491)
!496 = !DILocation(line: 79, column: 48, scope: !491)
!497 = !DILocation(line: 79, column: 33, scope: !491)
!498 = !DILocation(line: 79, column: 3, scope: !491)
!499 = !DILocation(line: 80, column: 2, scope: !491)
!500 = !DILocation(line: 77, column: 23, scope: !487)
!501 = !DILocation(line: 77, column: 2, scope: !487)
!502 = distinct !{!502, !489, !503}
!503 = !DILocation(line: 80, column: 2, scope: !484)
!504 = !DILocation(line: 85, column: 2, scope: !285)
!505 = distinct !DISubprogram(name: "k_mbox_init", scope: !252, file: !252, line: 92, type: !506, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !204)
!506 = !DISubroutineType(types: !507)
!507 = !{null, !508}
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 32)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_mbox", file: !187, line: 4710, size: 128, elements: !510)
!510 = !{!511, !512, !513}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "tx_msg_queue", scope: !509, file: !187, line: 4712, baseType: !126, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "rx_msg_queue", scope: !509, file: !187, line: 4714, baseType: !126, size: 64, offset: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !509, file: !187, line: 4715, baseType: !202, offset: 128)
!514 = !DILocalVariable(name: "mbox", arg: 1, scope: !505, file: !252, line: 92, type: !508)
!515 = !DILocation(line: 92, column: 33, scope: !505)
!516 = !DILocation(line: 94, column: 16, scope: !505)
!517 = !DILocation(line: 94, column: 22, scope: !505)
!518 = !DILocation(line: 94, column: 2, scope: !505)
!519 = !DILocation(line: 95, column: 16, scope: !505)
!520 = !DILocation(line: 95, column: 22, scope: !505)
!521 = !DILocation(line: 95, column: 2, scope: !505)
!522 = !DILocation(line: 96, column: 2, scope: !505)
!523 = !DILocation(line: 96, column: 8, scope: !505)
!524 = !DILocation(line: 96, column: 15, scope: !505)
!525 = !DILocation(line: 102, column: 2, scope: !505)
!526 = !DILocation(line: 102, column: 7, scope: !527)
!527 = distinct !DILexicalBlock(scope: !505, file: !252, line: 102, column: 5)
!528 = !DILocation(line: 103, column: 1, scope: !505)
!529 = distinct !DISubprogram(name: "z_waitq_init", scope: !530, file: !530, line: 47, type: !531, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !204)
!530 = !DIFile(filename: "kernel/include/wait_q.h", directory: "/home/sri/zephyrproject/zephyr")
!531 = !DISubroutineType(types: !532)
!532 = !{null, !125}
!533 = !DILocalVariable(name: "w", arg: 1, scope: !529, file: !530, line: 47, type: !125)
!534 = !DILocation(line: 47, column: 44, scope: !529)
!535 = !DILocation(line: 49, column: 18, scope: !529)
!536 = !DILocation(line: 49, column: 21, scope: !529)
!537 = !DILocation(line: 49, column: 2, scope: !529)
!538 = !DILocation(line: 50, column: 1, scope: !529)
!539 = distinct !DISubprogram(name: "k_mbox_put", scope: !252, file: !252, line: 313, type: !540, scopeLine: 315, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !204)
!540 = !DISubroutineType(types: !541)
!541 = !{!183, !508, !214, !376}
!542 = !DILocalVariable(name: "mbox", arg: 1, scope: !539, file: !252, line: 313, type: !508)
!543 = !DILocation(line: 313, column: 31, scope: !539)
!544 = !DILocalVariable(name: "tx_msg", arg: 2, scope: !539, file: !252, line: 313, type: !214)
!545 = !DILocation(line: 313, column: 56, scope: !539)
!546 = !DILocalVariable(name: "timeout", arg: 3, scope: !539, file: !252, line: 314, type: !376)
!547 = !DILocation(line: 314, column: 21, scope: !539)
!548 = !DILocation(line: 317, column: 44, scope: !539)
!549 = !DILocation(line: 317, column: 2, scope: !539)
!550 = !DILocation(line: 317, column: 10, scope: !539)
!551 = !DILocation(line: 317, column: 26, scope: !539)
!552 = !DILocation(line: 319, column: 2, scope: !539)
!553 = !DILocation(line: 319, column: 7, scope: !554)
!554 = distinct !DILexicalBlock(scope: !539, file: !252, line: 319, column: 5)
!555 = !DILocalVariable(name: "ret", scope: !539, file: !252, line: 321, type: !183)
!556 = !DILocation(line: 321, column: 6, scope: !539)
!557 = !DILocation(line: 321, column: 29, scope: !539)
!558 = !DILocation(line: 321, column: 35, scope: !539)
!559 = !DILocation(line: 321, column: 12, scope: !539)
!560 = !DILocation(line: 323, column: 2, scope: !539)
!561 = !DILocation(line: 323, column: 7, scope: !562)
!562 = distinct !DILexicalBlock(scope: !539, file: !252, line: 323, column: 5)
!563 = !DILocation(line: 325, column: 9, scope: !539)
!564 = !DILocation(line: 325, column: 2, scope: !539)
!565 = distinct !DISubprogram(name: "mbox_message_put", scope: !252, file: !252, line: 228, type: !540, scopeLine: 230, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !204)
!566 = !DILocalVariable(name: "mbox", arg: 1, scope: !565, file: !252, line: 228, type: !508)
!567 = !DILocation(line: 228, column: 44, scope: !565)
!568 = !DILocalVariable(name: "tx_msg", arg: 2, scope: !565, file: !252, line: 228, type: !214)
!569 = !DILocation(line: 228, column: 69, scope: !565)
!570 = !DILocalVariable(name: "timeout", arg: 3, scope: !565, file: !252, line: 229, type: !376)
!571 = !DILocation(line: 229, column: 21, scope: !565)
!572 = !DILocalVariable(name: "sending_thread", scope: !565, file: !252, line: 231, type: !89)
!573 = !DILocation(line: 231, column: 19, scope: !565)
!574 = !DILocalVariable(name: "receiving_thread", scope: !565, file: !252, line: 232, type: !89)
!575 = !DILocation(line: 232, column: 19, scope: !565)
!576 = !DILocalVariable(name: "rx_msg", scope: !565, file: !252, line: 233, type: !214)
!577 = !DILocation(line: 233, column: 21, scope: !565)
!578 = !DILocalVariable(name: "key", scope: !565, file: !252, line: 234, type: !579)
!579 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_spinlock_key_t", file: !203, line: 108, baseType: !580)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "z_spinlock_key", file: !203, line: 34, size: 32, elements: !581)
!581 = !{!582}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !580, file: !203, line: 35, baseType: !183, size: 32)
!583 = !DILocation(line: 234, column: 19, scope: !565)
!584 = !DILocation(line: 237, column: 45, scope: !565)
!585 = !DILocation(line: 237, column: 2, scope: !565)
!586 = !DILocation(line: 237, column: 10, scope: !565)
!587 = !DILocation(line: 237, column: 27, scope: !565)
!588 = !DILocation(line: 240, column: 19, scope: !565)
!589 = !DILocation(line: 240, column: 27, scope: !565)
!590 = !DILocation(line: 240, column: 17, scope: !565)
!591 = !DILocation(line: 241, column: 35, scope: !565)
!592 = !DILocation(line: 241, column: 2, scope: !565)
!593 = !DILocation(line: 241, column: 18, scope: !565)
!594 = !DILocation(line: 241, column: 23, scope: !565)
!595 = !DILocation(line: 241, column: 33, scope: !565)
!596 = !DILocation(line: 244, column: 21, scope: !565)
!597 = !DILocation(line: 244, column: 27, scope: !565)
!598 = !DILocalVariable(name: "l", arg: 1, scope: !599, file: !203, line: 160, type: !602)
!599 = distinct !DISubprogram(name: "k_spin_lock", scope: !203, file: !203, line: 160, type: !600, scopeLine: 161, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !204)
!600 = !DISubroutineType(types: !601)
!601 = !{!579, !602}
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 32)
!603 = !DILocation(line: 160, column: 94, scope: !599, inlinedAt: !604)
!604 = distinct !DILocation(line: 244, column: 8, scope: !565)
!605 = !DILocation(line: 162, column: 9, scope: !599, inlinedAt: !604)
!606 = !DILocalVariable(name: "k", scope: !599, file: !203, line: 163, type: !579)
!607 = !DILocation(line: 163, column: 19, scope: !599, inlinedAt: !604)
!608 = !DILocalVariable(name: "key", scope: !609, file: !610, line: 44, type: !151)
!609 = distinct !DISubprogram(name: "arch_irq_lock", scope: !610, file: !610, line: 42, type: !611, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !204)
!610 = !DIFile(filename: "include/zephyr/arch/arm/asm_inline_gcc.h", directory: "/home/sri/zephyrproject/zephyr")
!611 = !DISubroutineType(types: !612)
!612 = !{!151}
!613 = !DILocation(line: 44, column: 15, scope: !609, inlinedAt: !614)
!614 = distinct !DILocation(line: 169, column: 10, scope: !599, inlinedAt: !604)
!615 = !DILocation(line: 48, column: 2, scope: !609, inlinedAt: !614)
!616 = !{i64 66951}
!617 = !DILocation(line: 80, column: 9, scope: !609, inlinedAt: !614)
!618 = !DILocation(line: 169, column: 8, scope: !599, inlinedAt: !604)
!619 = !DILocation(line: 171, column: 26, scope: !599, inlinedAt: !604)
!620 = !DILocalVariable(name: "l", arg: 1, scope: !621, file: !203, line: 110, type: !602)
!621 = distinct !DISubprogram(name: "z_spinlock_validate_pre", scope: !203, file: !203, line: 110, type: !622, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !204)
!622 = !DISubroutineType(types: !623)
!623 = !{null, !602}
!624 = !DILocation(line: 110, column: 94, scope: !621, inlinedAt: !625)
!625 = distinct !DILocation(line: 171, column: 2, scope: !599, inlinedAt: !604)
!626 = !DILocation(line: 112, column: 9, scope: !621, inlinedAt: !625)
!627 = !DILocation(line: 177, column: 27, scope: !599, inlinedAt: !604)
!628 = !DILocalVariable(name: "l", arg: 1, scope: !629, file: !203, line: 121, type: !602)
!629 = distinct !DISubprogram(name: "z_spinlock_validate_post", scope: !203, file: !203, line: 121, type: !622, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !204)
!630 = !DILocation(line: 121, column: 95, scope: !629, inlinedAt: !631)
!631 = distinct !DILocation(line: 177, column: 2, scope: !599, inlinedAt: !604)
!632 = !DILocation(line: 123, column: 9, scope: !629, inlinedAt: !631)
!633 = !DILocation(line: 179, column: 2, scope: !599, inlinedAt: !604)
!634 = !DILocation(line: 244, column: 8, scope: !565)
!635 = !DILocation(line: 246, column: 2, scope: !565)
!636 = !DILocation(line: 246, column: 7, scope: !637)
!637 = distinct !DILexicalBlock(scope: !565, file: !252, line: 246, column: 5)
!638 = !DILocation(line: 248, column: 52, scope: !639)
!639 = distinct !DILexicalBlock(scope: !565, file: !252, line: 248, column: 2)
!640 = !DILocation(line: 248, column: 58, scope: !639)
!641 = !DILocation(line: 248, column: 73, scope: !639)
!642 = !DILocation(line: 248, column: 28, scope: !639)
!643 = !DILocation(line: 248, column: 81, scope: !639)
!644 = !DILocation(line: 248, column: 27, scope: !639)
!645 = !DILocation(line: 248, column: 163, scope: !646)
!646 = distinct !DILexicalBlock(scope: !639, file: !252, line: 248, column: 90)
!647 = !DILocation(line: 248, column: 169, scope: !646)
!648 = !DILocation(line: 248, column: 184, scope: !646)
!649 = !DILocation(line: 248, column: 139, scope: !646)
!650 = !DILocation(line: 248, column: 194, scope: !646)
!651 = !DILocation(line: 248, column: 90, scope: !639)
!652 = !DILocation(line: 248, column: 267, scope: !646)
!653 = !DILocation(line: 248, column: 24, scope: !639)
!654 = !DILocation(line: 248, column: 7, scope: !639)
!655 = !DILocation(line: 248, column: 276, scope: !656)
!656 = distinct !DILexicalBlock(scope: !639, file: !252, line: 248, column: 2)
!657 = !DILocation(line: 248, column: 293, scope: !656)
!658 = !DILocation(line: 248, column: 2, scope: !639)
!659 = !DILocation(line: 249, column: 33, scope: !660)
!660 = distinct !DILexicalBlock(scope: !656, file: !252, line: 248, column: 678)
!661 = !DILocation(line: 249, column: 51, scope: !660)
!662 = !DILocation(line: 249, column: 56, scope: !660)
!663 = !DILocation(line: 249, column: 10, scope: !660)
!664 = !DILocation(line: 251, column: 26, scope: !665)
!665 = distinct !DILexicalBlock(scope: !660, file: !252, line: 251, column: 7)
!666 = !DILocation(line: 251, column: 34, scope: !665)
!667 = !DILocation(line: 251, column: 7, scope: !665)
!668 = !DILocation(line: 251, column: 42, scope: !665)
!669 = !DILocation(line: 251, column: 7, scope: !660)
!670 = !DILocation(line: 253, column: 20, scope: !671)
!671 = distinct !DILexicalBlock(scope: !665, file: !252, line: 251, column: 48)
!672 = !DILocation(line: 253, column: 4, scope: !671)
!673 = !DILocation(line: 256, column: 33, scope: !671)
!674 = !DILocalVariable(name: "thread", arg: 1, scope: !675, file: !676, line: 59, type: !89)
!675 = distinct !DISubprogram(name: "arch_thread_return_value_set", scope: !676, file: !676, line: 59, type: !677, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !204)
!676 = !DIFile(filename: "arch/arm/include/cortex_m/kernel_arch_func.h", directory: "/home/sri/zephyrproject/zephyr")
!677 = !DISubroutineType(types: !678)
!678 = !{null, !89, !151}
!679 = !DILocation(line: 59, column: 47, scope: !675, inlinedAt: !680)
!680 = distinct !DILocation(line: 256, column: 4, scope: !671)
!681 = !DILocalVariable(name: "value", arg: 2, scope: !675, file: !676, line: 59, type: !151)
!682 = !DILocation(line: 59, column: 68, scope: !675, inlinedAt: !680)
!683 = !DILocation(line: 61, column: 35, scope: !675, inlinedAt: !680)
!684 = !DILocation(line: 61, column: 2, scope: !675, inlinedAt: !680)
!685 = !DILocation(line: 61, column: 10, scope: !675, inlinedAt: !680)
!686 = !DILocation(line: 61, column: 15, scope: !675, inlinedAt: !680)
!687 = !DILocation(line: 61, column: 33, scope: !675, inlinedAt: !680)
!688 = !DILocation(line: 257, column: 19, scope: !671)
!689 = !DILocation(line: 257, column: 4, scope: !671)
!690 = !DILocation(line: 267, column: 9, scope: !691)
!691 = distinct !DILexicalBlock(scope: !671, file: !252, line: 267, column: 8)
!692 = !DILocation(line: 267, column: 25, scope: !691)
!693 = !DILocation(line: 267, column: 30, scope: !691)
!694 = !DILocation(line: 267, column: 43, scope: !691)
!695 = !DILocation(line: 268, column: 8, scope: !691)
!696 = !DILocation(line: 267, column: 8, scope: !671)
!697 = !DILocation(line: 269, column: 19, scope: !698)
!698 = distinct !DILexicalBlock(scope: !691, file: !252, line: 268, column: 15)
!699 = !DILocation(line: 269, column: 25, scope: !698)
!700 = !DILocation(line: 269, column: 5, scope: !698)
!701 = !DILocation(line: 270, column: 5, scope: !698)
!702 = !DILocation(line: 273, column: 4, scope: !671)
!703 = !DILocation(line: 273, column: 9, scope: !704)
!704 = distinct !DILexicalBlock(scope: !671, file: !252, line: 273, column: 7)
!705 = !DILocalVariable(name: "ret", scope: !671, file: !252, line: 279, type: !183)
!706 = !DILocation(line: 279, column: 8, scope: !671)
!707 = !DILocation(line: 279, column: 27, scope: !671)
!708 = !DILocation(line: 279, column: 33, scope: !671)
!709 = !DILocation(line: 279, column: 62, scope: !671)
!710 = !DILocation(line: 279, column: 14, scope: !671)
!711 = !DILocation(line: 281, column: 4, scope: !671)
!712 = !DILocation(line: 281, column: 9, scope: !713)
!713 = distinct !DILexicalBlock(scope: !671, file: !252, line: 281, column: 7)
!714 = !DILocation(line: 283, column: 11, scope: !671)
!715 = !DILocation(line: 283, column: 4, scope: !671)
!716 = !DILocation(line: 285, column: 2, scope: !660)
!717 = !DILocation(line: 248, column: 320, scope: !656)
!718 = !DILocation(line: 248, column: 337, scope: !656)
!719 = !DILocation(line: 248, column: 319, scope: !656)
!720 = !DILocation(line: 248, column: 371, scope: !656)
!721 = !DILocation(line: 248, column: 377, scope: !656)
!722 = !DILocation(line: 248, column: 392, scope: !656)
!723 = !DILocation(line: 248, column: 402, scope: !656)
!724 = !DILocation(line: 248, column: 420, scope: !656)
!725 = !DILocation(line: 248, column: 425, scope: !656)
!726 = !DILocation(line: 248, column: 347, scope: !656)
!727 = !DILocation(line: 248, column: 439, scope: !656)
!728 = !DILocation(line: 248, column: 346, scope: !656)
!729 = !DILocation(line: 248, column: 521, scope: !730)
!730 = distinct !DILexicalBlock(scope: !656, file: !252, line: 248, column: 448)
!731 = !DILocation(line: 248, column: 527, scope: !730)
!732 = !DILocation(line: 248, column: 542, scope: !730)
!733 = !DILocation(line: 248, column: 552, scope: !730)
!734 = !DILocation(line: 248, column: 570, scope: !730)
!735 = !DILocation(line: 248, column: 575, scope: !730)
!736 = !DILocation(line: 248, column: 497, scope: !730)
!737 = !DILocation(line: 248, column: 591, scope: !730)
!738 = !DILocation(line: 248, column: 448, scope: !656)
!739 = !DILocation(line: 248, column: 664, scope: !730)
!740 = !DILocation(line: 248, column: 316, scope: !656)
!741 = !DILocation(line: 248, column: 2, scope: !656)
!742 = distinct !{!742, !658, !743}
!743 = !DILocation(line: 285, column: 2, scope: !639)
!744 = !DILocation(line: 288, column: 17, scope: !745)
!745 = distinct !DILexicalBlock(scope: !565, file: !252, line: 288, column: 6)
!746 = !DILocation(line: 288, column: 42, scope: !745)
!747 = !DILocation(line: 288, column: 23, scope: !745)
!748 = !DILocation(line: 288, column: 6, scope: !565)
!749 = !DILocation(line: 289, column: 3, scope: !750)
!750 = distinct !DILexicalBlock(scope: !745, file: !252, line: 288, column: 56)
!751 = !DILocation(line: 289, column: 8, scope: !752)
!752 = distinct !DILexicalBlock(scope: !750, file: !252, line: 289, column: 6)
!753 = !DILocation(line: 291, column: 18, scope: !750)
!754 = !DILocation(line: 291, column: 24, scope: !750)
!755 = !DILocation(line: 291, column: 3, scope: !750)
!756 = !DILocalVariable(name: "l", arg: 1, scope: !757, file: !203, line: 235, type: !602)
!757 = distinct !DISubprogram(name: "k_spin_unlock", scope: !203, file: !203, line: 235, type: !758, scopeLine: 237, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !204)
!758 = !DISubroutineType(types: !759)
!759 = !{null, !602, !579}
!760 = !DILocation(line: 235, column: 84, scope: !757, inlinedAt: !761)
!761 = distinct !DILocation(line: 291, column: 3, scope: !750)
!762 = !DILocalVariable(name: "key", arg: 2, scope: !757, file: !203, line: 236, type: !579)
!763 = !DILocation(line: 236, column: 23, scope: !757, inlinedAt: !761)
!764 = !DILocation(line: 238, column: 9, scope: !757, inlinedAt: !761)
!765 = !DILocation(line: 261, column: 22, scope: !757, inlinedAt: !761)
!766 = !DILocalVariable(name: "key", arg: 1, scope: !767, file: !610, line: 88, type: !151)
!767 = distinct !DISubprogram(name: "arch_irq_unlock", scope: !610, file: !610, line: 88, type: !768, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !204)
!768 = !DISubroutineType(types: !769)
!769 = !{null, !151}
!770 = !DILocation(line: 88, column: 80, scope: !767, inlinedAt: !771)
!771 = distinct !DILocation(line: 261, column: 2, scope: !757, inlinedAt: !761)
!772 = !DILocation(line: 91, column: 6, scope: !773, inlinedAt: !771)
!773 = distinct !DILexicalBlock(scope: !767, file: !610, line: 91, column: 6)
!774 = !DILocation(line: 91, column: 10, scope: !773, inlinedAt: !771)
!775 = !DILocation(line: 91, column: 6, scope: !767, inlinedAt: !771)
!776 = !DILocation(line: 92, column: 3, scope: !777, inlinedAt: !771)
!777 = distinct !DILexicalBlock(scope: !773, file: !610, line: 91, column: 17)
!778 = !DILocation(line: 94, column: 2, scope: !767, inlinedAt: !771)
!779 = !{i64 67255}
!780 = !DILocation(line: 114, column: 1, scope: !767, inlinedAt: !771)
!781 = !DILocation(line: 292, column: 3, scope: !750)
!782 = !DILocation(line: 297, column: 7, scope: !783)
!783 = distinct !DILexicalBlock(scope: !565, file: !252, line: 297, column: 6)
!784 = !DILocation(line: 297, column: 23, scope: !783)
!785 = !DILocation(line: 297, column: 28, scope: !783)
!786 = !DILocation(line: 297, column: 41, scope: !783)
!787 = !DILocation(line: 297, column: 59, scope: !783)
!788 = !DILocation(line: 297, column: 6, scope: !565)
!789 = !DILocation(line: 298, column: 17, scope: !790)
!790 = distinct !DILexicalBlock(scope: !783, file: !252, line: 297, column: 66)
!791 = !DILocation(line: 298, column: 34, scope: !790)
!792 = !DILocation(line: 298, column: 40, scope: !790)
!793 = !DILocation(line: 298, column: 69, scope: !790)
!794 = !DILocation(line: 298, column: 3, scope: !790)
!795 = !DILocation(line: 299, column: 18, scope: !790)
!796 = !DILocation(line: 299, column: 24, scope: !790)
!797 = !DILocation(line: 299, column: 3, scope: !790)
!798 = !DILocation(line: 235, column: 84, scope: !757, inlinedAt: !799)
!799 = distinct !DILocation(line: 299, column: 3, scope: !790)
!800 = !DILocation(line: 236, column: 23, scope: !757, inlinedAt: !799)
!801 = !DILocation(line: 238, column: 9, scope: !757, inlinedAt: !799)
!802 = !DILocation(line: 261, column: 22, scope: !757, inlinedAt: !799)
!803 = !DILocation(line: 88, column: 80, scope: !767, inlinedAt: !804)
!804 = distinct !DILocation(line: 261, column: 2, scope: !757, inlinedAt: !799)
!805 = !DILocation(line: 91, column: 6, scope: !773, inlinedAt: !804)
!806 = !DILocation(line: 91, column: 10, scope: !773, inlinedAt: !804)
!807 = !DILocation(line: 91, column: 6, scope: !767, inlinedAt: !804)
!808 = !DILocation(line: 92, column: 3, scope: !777, inlinedAt: !804)
!809 = !DILocation(line: 94, column: 2, scope: !767, inlinedAt: !804)
!810 = !DILocation(line: 114, column: 1, scope: !767, inlinedAt: !804)
!811 = !DILocation(line: 300, column: 3, scope: !790)
!812 = !DILocation(line: 303, column: 2, scope: !565)
!813 = !DILocation(line: 303, column: 7, scope: !814)
!814 = distinct !DILexicalBlock(scope: !565, file: !252, line: 303, column: 5)
!815 = !DILocalVariable(name: "ret", scope: !565, file: !252, line: 306, type: !183)
!816 = !DILocation(line: 306, column: 6, scope: !565)
!817 = !DILocation(line: 306, column: 25, scope: !565)
!818 = !DILocation(line: 306, column: 31, scope: !565)
!819 = !DILocation(line: 306, column: 43, scope: !565)
!820 = !DILocation(line: 306, column: 49, scope: !565)
!821 = !DILocation(line: 306, column: 12, scope: !565)
!822 = !DILocation(line: 308, column: 2, scope: !565)
!823 = !DILocation(line: 308, column: 7, scope: !824)
!824 = distinct !DILexicalBlock(scope: !565, file: !252, line: 308, column: 5)
!825 = !DILocation(line: 310, column: 9, scope: !565)
!826 = !DILocation(line: 310, column: 2, scope: !565)
!827 = !DILocation(line: 311, column: 1, scope: !565)
!828 = distinct !DISubprogram(name: "k_mbox_async_put", scope: !252, file: !252, line: 329, type: !829, scopeLine: 331, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !204)
!829 = !DISubroutineType(types: !830)
!830 = !{null, !508, !214, !240}
!831 = !DILocalVariable(name: "mbox", arg: 1, scope: !828, file: !252, line: 329, type: !508)
!832 = !DILocation(line: 329, column: 38, scope: !828)
!833 = !DILocalVariable(name: "tx_msg", arg: 2, scope: !828, file: !252, line: 329, type: !214)
!834 = !DILocation(line: 329, column: 63, scope: !828)
!835 = !DILocalVariable(name: "sem", arg: 3, scope: !828, file: !252, line: 330, type: !240)
!836 = !DILocation(line: 330, column: 23, scope: !828)
!837 = !DILocalVariable(name: "async", scope: !828, file: !252, line: 332, type: !250)
!838 = !DILocation(line: 332, column: 23, scope: !828)
!839 = !DILocation(line: 334, column: 2, scope: !828)
!840 = !DILocation(line: 334, column: 7, scope: !841)
!841 = distinct !DILexicalBlock(scope: !828, file: !252, line: 334, column: 5)
!842 = !DILocation(line: 340, column: 2, scope: !828)
!843 = !DILocation(line: 342, column: 39, scope: !828)
!844 = !DILocation(line: 342, column: 48, scope: !828)
!845 = !DILocation(line: 342, column: 53, scope: !828)
!846 = !DILocation(line: 342, column: 2, scope: !828)
!847 = !DILocation(line: 342, column: 9, scope: !828)
!848 = !DILocation(line: 342, column: 16, scope: !828)
!849 = !DILocation(line: 342, column: 21, scope: !828)
!850 = !DILocation(line: 344, column: 2, scope: !828)
!851 = !DILocation(line: 344, column: 9, scope: !828)
!852 = !DILocation(line: 344, column: 19, scope: !828)
!853 = !DILocation(line: 344, column: 18, scope: !828)
!854 = !DILocation(line: 345, column: 54, scope: !828)
!855 = !DILocation(line: 345, column: 61, scope: !828)
!856 = !DILocation(line: 345, column: 2, scope: !828)
!857 = !DILocation(line: 345, column: 9, scope: !828)
!858 = !DILocation(line: 345, column: 16, scope: !828)
!859 = !DILocation(line: 345, column: 32, scope: !828)
!860 = !DILocation(line: 346, column: 29, scope: !828)
!861 = !DILocation(line: 346, column: 2, scope: !828)
!862 = !DILocation(line: 346, column: 9, scope: !828)
!863 = !DILocation(line: 346, column: 16, scope: !828)
!864 = !DILocation(line: 346, column: 27, scope: !828)
!865 = !DILocation(line: 348, column: 25, scope: !828)
!866 = !DILocation(line: 348, column: 32, scope: !828)
!867 = !DILocation(line: 348, column: 39, scope: !828)
!868 = !DILocation(line: 348, column: 62, scope: !828)
!869 = !DILocation(line: 348, column: 8, scope: !828)
!870 = !DILocation(line: 349, column: 2, scope: !828)
!871 = !DILocation(line: 349, column: 7, scope: !872)
!872 = distinct !DILexicalBlock(scope: !828, file: !252, line: 349, column: 5)
!873 = !DILocation(line: 350, column: 1, scope: !828)
!874 = distinct !DISubprogram(name: "mbox_async_alloc", scope: !252, file: !252, line: 39, type: !875, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !204)
!875 = !DISubroutineType(types: !876)
!876 = !{null, !877}
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 32)
!878 = !DILocalVariable(name: "async", arg: 1, scope: !874, file: !252, line: 39, type: !877)
!879 = !DILocation(line: 39, column: 59, scope: !874)
!880 = !DILocation(line: 41, column: 53, scope: !874)
!881 = !DILocation(line: 41, column: 75, scope: !874)
!882 = !DILocation(line: 41, column: 8, scope: !874)
!883 = !DILocation(line: 42, column: 1, scope: !874)
!884 = distinct !DISubprogram(name: "k_mbox_data_get", scope: !252, file: !252, line: 353, type: !885, scopeLine: 354, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !204)
!885 = !DISubroutineType(types: !886)
!886 = !{null, !214, !153}
!887 = !DILocalVariable(name: "rx_msg", arg: 1, scope: !884, file: !252, line: 353, type: !214)
!888 = !DILocation(line: 353, column: 41, scope: !884)
!889 = !DILocalVariable(name: "buffer", arg: 2, scope: !884, file: !252, line: 353, type: !153)
!890 = !DILocation(line: 353, column: 55, scope: !884)
!891 = !DILocation(line: 356, column: 6, scope: !892)
!892 = distinct !DILexicalBlock(scope: !884, file: !252, line: 356, column: 6)
!893 = !DILocation(line: 356, column: 13, scope: !892)
!894 = !DILocation(line: 356, column: 6, scope: !884)
!895 = !DILocation(line: 357, column: 3, scope: !896)
!896 = distinct !DILexicalBlock(scope: !892, file: !252, line: 356, column: 19)
!897 = !DILocation(line: 357, column: 11, scope: !896)
!898 = !DILocation(line: 357, column: 16, scope: !896)
!899 = !DILocation(line: 358, column: 24, scope: !896)
!900 = !DILocation(line: 358, column: 3, scope: !896)
!901 = !DILocation(line: 359, column: 3, scope: !896)
!902 = !DILocation(line: 363, column: 7, scope: !903)
!903 = distinct !DILexicalBlock(scope: !884, file: !252, line: 363, column: 6)
!904 = !DILocation(line: 363, column: 15, scope: !903)
!905 = !DILocation(line: 363, column: 23, scope: !903)
!906 = !DILocation(line: 363, column: 29, scope: !903)
!907 = !DILocation(line: 363, column: 33, scope: !903)
!908 = !DILocation(line: 363, column: 41, scope: !903)
!909 = !DILocation(line: 363, column: 46, scope: !903)
!910 = !DILocation(line: 363, column: 6, scope: !884)
!911 = !DILocation(line: 364, column: 16, scope: !912)
!912 = distinct !DILexicalBlock(scope: !903, file: !252, line: 363, column: 53)
!913 = !DILocation(line: 364, column: 24, scope: !912)
!914 = !DILocation(line: 364, column: 32, scope: !912)
!915 = !DILocation(line: 364, column: 41, scope: !912)
!916 = !DILocation(line: 364, column: 49, scope: !912)
!917 = !DILocation(line: 364, column: 9, scope: !912)
!918 = !DILocation(line: 365, column: 2, scope: !912)
!919 = !DILocation(line: 366, column: 23, scope: !884)
!920 = !DILocation(line: 366, column: 2, scope: !884)
!921 = !DILocation(line: 367, column: 1, scope: !884)
!922 = distinct !DISubprogram(name: "mbox_message_dispose", scope: !252, file: !252, line: 169, type: !923, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !204)
!923 = !DISubroutineType(types: !924)
!924 = !{null, !214}
!925 = !DILocalVariable(name: "rx_msg", arg: 1, scope: !922, file: !252, line: 169, type: !214)
!926 = !DILocation(line: 169, column: 53, scope: !922)
!927 = !DILocalVariable(name: "sending_thread", scope: !922, file: !252, line: 171, type: !89)
!928 = !DILocation(line: 171, column: 19, scope: !922)
!929 = !DILocalVariable(name: "tx_msg", scope: !922, file: !252, line: 172, type: !214)
!930 = !DILocation(line: 172, column: 21, scope: !922)
!931 = !DILocation(line: 175, column: 6, scope: !932)
!932 = distinct !DILexicalBlock(scope: !922, file: !252, line: 175, column: 6)
!933 = !DILocation(line: 175, column: 14, scope: !932)
!934 = !DILocation(line: 175, column: 30, scope: !932)
!935 = !DILocation(line: 175, column: 6, scope: !922)
!936 = !DILocation(line: 176, column: 3, scope: !937)
!937 = distinct !DILexicalBlock(scope: !932, file: !252, line: 175, column: 36)
!938 = !DILocation(line: 179, column: 6, scope: !939)
!939 = distinct !DILexicalBlock(scope: !922, file: !252, line: 179, column: 6)
!940 = !DILocation(line: 179, column: 14, scope: !939)
!941 = !DILocation(line: 179, column: 23, scope: !939)
!942 = !DILocation(line: 179, column: 28, scope: !939)
!943 = !DILocation(line: 179, column: 6, scope: !922)
!944 = !DILocation(line: 180, column: 3, scope: !945)
!945 = distinct !DILexicalBlock(scope: !939, file: !252, line: 179, column: 34)
!946 = !DILocation(line: 180, column: 11, scope: !945)
!947 = !DILocation(line: 180, column: 20, scope: !945)
!948 = !DILocation(line: 180, column: 25, scope: !945)
!949 = !DILocation(line: 181, column: 2, scope: !945)
!950 = !DILocation(line: 184, column: 19, scope: !922)
!951 = !DILocation(line: 184, column: 27, scope: !922)
!952 = !DILocation(line: 184, column: 17, scope: !922)
!953 = !DILocation(line: 185, column: 2, scope: !922)
!954 = !DILocation(line: 185, column: 10, scope: !922)
!955 = !DILocation(line: 185, column: 26, scope: !922)
!956 = !DILocation(line: 186, column: 32, scope: !922)
!957 = !DILocation(line: 186, column: 48, scope: !922)
!958 = !DILocation(line: 186, column: 53, scope: !922)
!959 = !DILocation(line: 186, column: 9, scope: !922)
!960 = !DILocation(line: 189, column: 17, scope: !922)
!961 = !DILocation(line: 189, column: 25, scope: !922)
!962 = !DILocation(line: 189, column: 2, scope: !922)
!963 = !DILocation(line: 189, column: 10, scope: !922)
!964 = !DILocation(line: 189, column: 15, scope: !922)
!965 = !DILocation(line: 196, column: 7, scope: !966)
!966 = distinct !DILexicalBlock(scope: !922, file: !252, line: 196, column: 6)
!967 = !DILocation(line: 196, column: 23, scope: !966)
!968 = !DILocation(line: 196, column: 28, scope: !966)
!969 = !DILocation(line: 196, column: 41, scope: !966)
!970 = !DILocation(line: 196, column: 59, scope: !966)
!971 = !DILocation(line: 196, column: 6, scope: !922)
!972 = !DILocalVariable(name: "async_sem", scope: !973, file: !252, line: 197, type: !240)
!973 = distinct !DILexicalBlock(scope: !966, file: !252, line: 196, column: 66)
!974 = !DILocation(line: 197, column: 17, scope: !973)
!975 = !DILocation(line: 197, column: 29, scope: !973)
!976 = !DILocation(line: 197, column: 37, scope: !973)
!977 = !DILocation(line: 199, column: 42, scope: !973)
!978 = !DILocation(line: 199, column: 3, scope: !973)
!979 = !DILocation(line: 200, column: 7, scope: !980)
!980 = distinct !DILexicalBlock(scope: !973, file: !252, line: 200, column: 7)
!981 = !DILocation(line: 200, column: 17, scope: !980)
!982 = !DILocation(line: 200, column: 7, scope: !973)
!983 = !DILocation(line: 201, column: 15, scope: !984)
!984 = distinct !DILexicalBlock(scope: !980, file: !252, line: 200, column: 23)
!985 = !DILocation(line: 201, column: 4, scope: !984)
!986 = !DILocation(line: 202, column: 3, scope: !984)
!987 = !DILocation(line: 203, column: 3, scope: !973)
!988 = !DILocation(line: 208, column: 31, scope: !922)
!989 = !DILocation(line: 59, column: 47, scope: !675, inlinedAt: !990)
!990 = distinct !DILocation(line: 208, column: 2, scope: !922)
!991 = !DILocation(line: 59, column: 68, scope: !675, inlinedAt: !990)
!992 = !DILocation(line: 61, column: 35, scope: !675, inlinedAt: !990)
!993 = !DILocation(line: 61, column: 2, scope: !675, inlinedAt: !990)
!994 = !DILocation(line: 61, column: 10, scope: !675, inlinedAt: !990)
!995 = !DILocation(line: 61, column: 15, scope: !675, inlinedAt: !990)
!996 = !DILocation(line: 61, column: 33, scope: !675, inlinedAt: !990)
!997 = !DILocation(line: 209, column: 31, scope: !922)
!998 = !DILocation(line: 209, column: 2, scope: !922)
!999 = !DILocation(line: 210, column: 17, scope: !922)
!1000 = !DILocation(line: 210, column: 2, scope: !922)
!1001 = !DILocation(line: 211, column: 2, scope: !922)
!1002 = !DILocation(line: 212, column: 1, scope: !922)
!1003 = distinct !DISubprogram(name: "k_mbox_get", scope: !252, file: !252, line: 400, type: !1004, scopeLine: 402, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !204)
!1004 = !DISubroutineType(types: !1005)
!1005 = !{!183, !508, !214, !153, !376}
!1006 = !DILocalVariable(name: "mbox", arg: 1, scope: !1003, file: !252, line: 400, type: !508)
!1007 = !DILocation(line: 400, column: 31, scope: !1003)
!1008 = !DILocalVariable(name: "rx_msg", arg: 2, scope: !1003, file: !252, line: 400, type: !214)
!1009 = !DILocation(line: 400, column: 56, scope: !1003)
!1010 = !DILocalVariable(name: "buffer", arg: 3, scope: !1003, file: !252, line: 400, type: !153)
!1011 = !DILocation(line: 400, column: 70, scope: !1003)
!1012 = !DILocalVariable(name: "timeout", arg: 4, scope: !1003, file: !252, line: 401, type: !376)
!1013 = !DILocation(line: 401, column: 21, scope: !1003)
!1014 = !DILocalVariable(name: "sending_thread", scope: !1003, file: !252, line: 403, type: !89)
!1015 = !DILocation(line: 403, column: 19, scope: !1003)
!1016 = !DILocalVariable(name: "tx_msg", scope: !1003, file: !252, line: 404, type: !214)
!1017 = !DILocation(line: 404, column: 21, scope: !1003)
!1018 = !DILocalVariable(name: "key", scope: !1003, file: !252, line: 405, type: !579)
!1019 = !DILocation(line: 405, column: 19, scope: !1003)
!1020 = !DILocalVariable(name: "result", scope: !1003, file: !252, line: 406, type: !183)
!1021 = !DILocation(line: 406, column: 6, scope: !1003)
!1022 = !DILocation(line: 409, column: 45, scope: !1003)
!1023 = !DILocation(line: 409, column: 2, scope: !1003)
!1024 = !DILocation(line: 409, column: 10, scope: !1003)
!1025 = !DILocation(line: 409, column: 27, scope: !1003)
!1026 = !DILocation(line: 412, column: 21, scope: !1003)
!1027 = !DILocation(line: 412, column: 27, scope: !1003)
!1028 = !DILocation(line: 160, column: 94, scope: !599, inlinedAt: !1029)
!1029 = distinct !DILocation(line: 412, column: 8, scope: !1003)
!1030 = !DILocation(line: 162, column: 9, scope: !599, inlinedAt: !1029)
!1031 = !DILocation(line: 163, column: 19, scope: !599, inlinedAt: !1029)
!1032 = !DILocation(line: 44, column: 15, scope: !609, inlinedAt: !1033)
!1033 = distinct !DILocation(line: 169, column: 10, scope: !599, inlinedAt: !1029)
!1034 = !DILocation(line: 48, column: 2, scope: !609, inlinedAt: !1033)
!1035 = !DILocation(line: 80, column: 9, scope: !609, inlinedAt: !1033)
!1036 = !DILocation(line: 169, column: 8, scope: !599, inlinedAt: !1029)
!1037 = !DILocation(line: 171, column: 26, scope: !599, inlinedAt: !1029)
!1038 = !DILocation(line: 110, column: 94, scope: !621, inlinedAt: !1039)
!1039 = distinct !DILocation(line: 171, column: 2, scope: !599, inlinedAt: !1029)
!1040 = !DILocation(line: 112, column: 9, scope: !621, inlinedAt: !1039)
!1041 = !DILocation(line: 177, column: 27, scope: !599, inlinedAt: !1029)
!1042 = !DILocation(line: 121, column: 95, scope: !629, inlinedAt: !1043)
!1043 = distinct !DILocation(line: 177, column: 2, scope: !599, inlinedAt: !1029)
!1044 = !DILocation(line: 123, column: 9, scope: !629, inlinedAt: !1043)
!1045 = !DILocation(line: 179, column: 2, scope: !599, inlinedAt: !1029)
!1046 = !DILocation(line: 412, column: 8, scope: !1003)
!1047 = !DILocation(line: 414, column: 2, scope: !1003)
!1048 = !DILocation(line: 414, column: 7, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !1003, file: !252, line: 414, column: 5)
!1050 = !DILocation(line: 416, column: 50, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !1003, file: !252, line: 416, column: 2)
!1052 = !DILocation(line: 416, column: 56, scope: !1051)
!1053 = !DILocation(line: 416, column: 71, scope: !1051)
!1054 = !DILocation(line: 416, column: 26, scope: !1051)
!1055 = !DILocation(line: 416, column: 79, scope: !1051)
!1056 = !DILocation(line: 416, column: 25, scope: !1051)
!1057 = !DILocation(line: 416, column: 159, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !1051, file: !252, line: 416, column: 88)
!1059 = !DILocation(line: 416, column: 165, scope: !1058)
!1060 = !DILocation(line: 416, column: 180, scope: !1058)
!1061 = !DILocation(line: 416, column: 135, scope: !1058)
!1062 = !DILocation(line: 416, column: 190, scope: !1058)
!1063 = !DILocation(line: 416, column: 88, scope: !1051)
!1064 = !DILocation(line: 416, column: 261, scope: !1058)
!1065 = !DILocation(line: 416, column: 22, scope: !1051)
!1066 = !DILocation(line: 416, column: 7, scope: !1051)
!1067 = !DILocation(line: 416, column: 270, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1051, file: !252, line: 416, column: 2)
!1069 = !DILocation(line: 416, column: 285, scope: !1068)
!1070 = !DILocation(line: 416, column: 2, scope: !1051)
!1071 = !DILocation(line: 417, column: 33, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !1068, file: !252, line: 416, column: 658)
!1073 = !DILocation(line: 417, column: 49, scope: !1072)
!1074 = !DILocation(line: 417, column: 54, scope: !1072)
!1075 = !DILocation(line: 417, column: 10, scope: !1072)
!1076 = !DILocation(line: 419, column: 26, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !1072, file: !252, line: 419, column: 7)
!1078 = !DILocation(line: 419, column: 34, scope: !1077)
!1079 = !DILocation(line: 419, column: 7, scope: !1077)
!1080 = !DILocation(line: 419, column: 42, scope: !1077)
!1081 = !DILocation(line: 419, column: 7, scope: !1072)
!1082 = !DILocation(line: 421, column: 20, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1077, file: !252, line: 419, column: 48)
!1084 = !DILocation(line: 421, column: 4, scope: !1083)
!1085 = !DILocation(line: 423, column: 19, scope: !1083)
!1086 = !DILocation(line: 423, column: 25, scope: !1083)
!1087 = !DILocation(line: 423, column: 4, scope: !1083)
!1088 = !DILocation(line: 235, column: 84, scope: !757, inlinedAt: !1089)
!1089 = distinct !DILocation(line: 423, column: 4, scope: !1083)
!1090 = !DILocation(line: 236, column: 23, scope: !757, inlinedAt: !1089)
!1091 = !DILocation(line: 238, column: 9, scope: !757, inlinedAt: !1089)
!1092 = !DILocation(line: 261, column: 22, scope: !757, inlinedAt: !1089)
!1093 = !DILocation(line: 88, column: 80, scope: !767, inlinedAt: !1094)
!1094 = distinct !DILocation(line: 261, column: 2, scope: !757, inlinedAt: !1089)
!1095 = !DILocation(line: 91, column: 6, scope: !773, inlinedAt: !1094)
!1096 = !DILocation(line: 91, column: 10, scope: !773, inlinedAt: !1094)
!1097 = !DILocation(line: 91, column: 6, scope: !767, inlinedAt: !1094)
!1098 = !DILocation(line: 92, column: 3, scope: !777, inlinedAt: !1094)
!1099 = !DILocation(line: 94, column: 2, scope: !767, inlinedAt: !1094)
!1100 = !DILocation(line: 114, column: 1, scope: !767, inlinedAt: !1094)
!1101 = !DILocation(line: 426, column: 37, scope: !1083)
!1102 = !DILocation(line: 426, column: 45, scope: !1083)
!1103 = !DILocation(line: 426, column: 13, scope: !1083)
!1104 = !DILocation(line: 426, column: 11, scope: !1083)
!1105 = !DILocation(line: 428, column: 4, scope: !1083)
!1106 = !DILocation(line: 428, column: 9, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !1083, file: !252, line: 428, column: 7)
!1108 = !DILocation(line: 429, column: 11, scope: !1083)
!1109 = !DILocation(line: 429, column: 4, scope: !1083)
!1110 = !DILocation(line: 431, column: 2, scope: !1072)
!1111 = !DILocation(line: 416, column: 310, scope: !1068)
!1112 = !DILocation(line: 416, column: 325, scope: !1068)
!1113 = !DILocation(line: 416, column: 309, scope: !1068)
!1114 = !DILocation(line: 416, column: 359, scope: !1068)
!1115 = !DILocation(line: 416, column: 365, scope: !1068)
!1116 = !DILocation(line: 416, column: 380, scope: !1068)
!1117 = !DILocation(line: 416, column: 390, scope: !1068)
!1118 = !DILocation(line: 416, column: 406, scope: !1068)
!1119 = !DILocation(line: 416, column: 411, scope: !1068)
!1120 = !DILocation(line: 416, column: 335, scope: !1068)
!1121 = !DILocation(line: 416, column: 425, scope: !1068)
!1122 = !DILocation(line: 416, column: 334, scope: !1068)
!1123 = !DILocation(line: 416, column: 505, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1068, file: !252, line: 416, column: 434)
!1125 = !DILocation(line: 416, column: 511, scope: !1124)
!1126 = !DILocation(line: 416, column: 526, scope: !1124)
!1127 = !DILocation(line: 416, column: 536, scope: !1124)
!1128 = !DILocation(line: 416, column: 552, scope: !1124)
!1129 = !DILocation(line: 416, column: 557, scope: !1124)
!1130 = !DILocation(line: 416, column: 481, scope: !1124)
!1131 = !DILocation(line: 416, column: 573, scope: !1124)
!1132 = !DILocation(line: 416, column: 434, scope: !1068)
!1133 = !DILocation(line: 416, column: 644, scope: !1124)
!1134 = !DILocation(line: 416, column: 306, scope: !1068)
!1135 = !DILocation(line: 416, column: 2, scope: !1068)
!1136 = distinct !{!1136, !1070, !1137}
!1137 = !DILocation(line: 431, column: 2, scope: !1051)
!1138 = !DILocation(line: 435, column: 17, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !1003, file: !252, line: 435, column: 6)
!1140 = !DILocation(line: 435, column: 42, scope: !1139)
!1141 = !DILocation(line: 435, column: 23, scope: !1139)
!1142 = !DILocation(line: 435, column: 6, scope: !1003)
!1143 = !DILocation(line: 436, column: 3, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1139, file: !252, line: 435, column: 56)
!1145 = !DILocation(line: 436, column: 8, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1144, file: !252, line: 436, column: 6)
!1147 = !DILocation(line: 439, column: 18, scope: !1144)
!1148 = !DILocation(line: 439, column: 24, scope: !1144)
!1149 = !DILocation(line: 439, column: 3, scope: !1144)
!1150 = !DILocation(line: 235, column: 84, scope: !757, inlinedAt: !1151)
!1151 = distinct !DILocation(line: 439, column: 3, scope: !1144)
!1152 = !DILocation(line: 236, column: 23, scope: !757, inlinedAt: !1151)
!1153 = !DILocation(line: 238, column: 9, scope: !757, inlinedAt: !1151)
!1154 = !DILocation(line: 261, column: 22, scope: !757, inlinedAt: !1151)
!1155 = !DILocation(line: 88, column: 80, scope: !767, inlinedAt: !1156)
!1156 = distinct !DILocation(line: 261, column: 2, scope: !757, inlinedAt: !1151)
!1157 = !DILocation(line: 91, column: 6, scope: !773, inlinedAt: !1156)
!1158 = !DILocation(line: 91, column: 10, scope: !773, inlinedAt: !1156)
!1159 = !DILocation(line: 91, column: 6, scope: !767, inlinedAt: !1156)
!1160 = !DILocation(line: 92, column: 3, scope: !777, inlinedAt: !1156)
!1161 = !DILocation(line: 94, column: 2, scope: !767, inlinedAt: !1156)
!1162 = !DILocation(line: 114, column: 1, scope: !767, inlinedAt: !1156)
!1163 = !DILocation(line: 440, column: 3, scope: !1144)
!1164 = !DILocation(line: 443, column: 2, scope: !1003)
!1165 = !DILocation(line: 443, column: 7, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !1003, file: !252, line: 443, column: 5)
!1167 = !DILocation(line: 446, column: 44, scope: !1003)
!1168 = !DILocation(line: 446, column: 18, scope: !1003)
!1169 = !DILocation(line: 446, column: 27, scope: !1003)
!1170 = !DILocation(line: 446, column: 32, scope: !1003)
!1171 = !DILocation(line: 446, column: 42, scope: !1003)
!1172 = !DILocation(line: 447, column: 24, scope: !1003)
!1173 = !DILocation(line: 447, column: 30, scope: !1003)
!1174 = !DILocation(line: 447, column: 42, scope: !1003)
!1175 = !DILocation(line: 447, column: 48, scope: !1003)
!1176 = !DILocation(line: 447, column: 11, scope: !1003)
!1177 = !DILocation(line: 447, column: 9, scope: !1003)
!1178 = !DILocation(line: 450, column: 6, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1003, file: !252, line: 450, column: 6)
!1180 = !DILocation(line: 450, column: 13, scope: !1179)
!1181 = !DILocation(line: 450, column: 6, scope: !1003)
!1182 = !DILocation(line: 451, column: 36, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !1179, file: !252, line: 450, column: 19)
!1184 = !DILocation(line: 451, column: 44, scope: !1183)
!1185 = !DILocation(line: 451, column: 12, scope: !1183)
!1186 = !DILocation(line: 451, column: 10, scope: !1183)
!1187 = !DILocation(line: 452, column: 2, scope: !1183)
!1188 = !DILocation(line: 454, column: 2, scope: !1003)
!1189 = !DILocation(line: 454, column: 7, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1003, file: !252, line: 454, column: 5)
!1191 = !DILocation(line: 456, column: 9, scope: !1003)
!1192 = !DILocation(line: 456, column: 2, scope: !1003)
!1193 = !DILocation(line: 457, column: 1, scope: !1003)
!1194 = distinct !DISubprogram(name: "sys_dlist_peek_head", scope: !101, file: !101, line: 303, type: !1195, scopeLine: 304, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !204)
!1195 = !DISubroutineType(types: !1196)
!1196 = !{!248, !1197}
!1197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 32)
!1198 = !DILocalVariable(name: "list", arg: 1, scope: !1194, file: !101, line: 303, type: !1197)
!1199 = !DILocation(line: 303, column: 61, scope: !1194)
!1200 = !DILocation(line: 305, column: 28, scope: !1194)
!1201 = !DILocation(line: 305, column: 9, scope: !1194)
!1202 = !DILocation(line: 305, column: 49, scope: !1194)
!1203 = !DILocation(line: 305, column: 55, scope: !1194)
!1204 = !DILocation(line: 305, column: 2, scope: !1194)
!1205 = distinct !DISubprogram(name: "mbox_message_match", scope: !252, file: !252, line: 117, type: !1206, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !204)
!1206 = !DISubroutineType(types: !1207)
!1207 = !{!183, !214, !214}
!1208 = !DILocalVariable(name: "tx_msg", arg: 1, scope: !1205, file: !252, line: 117, type: !214)
!1209 = !DILocation(line: 117, column: 50, scope: !1205)
!1210 = !DILocalVariable(name: "rx_msg", arg: 2, scope: !1205, file: !252, line: 118, type: !214)
!1211 = !DILocation(line: 118, column: 30, scope: !1205)
!1212 = !DILocalVariable(name: "temp_info", scope: !1205, file: !252, line: 120, type: !150)
!1213 = !DILocation(line: 120, column: 11, scope: !1205)
!1214 = !DILocation(line: 122, column: 8, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !1205, file: !252, line: 122, column: 6)
!1216 = !DILocation(line: 122, column: 16, scope: !1215)
!1217 = !DILocation(line: 122, column: 33, scope: !1215)
!1218 = !DILocation(line: 122, column: 48, scope: !1215)
!1219 = !DILocation(line: 123, column: 8, scope: !1215)
!1220 = !DILocation(line: 123, column: 16, scope: !1215)
!1221 = !DILocation(line: 123, column: 36, scope: !1215)
!1222 = !DILocation(line: 123, column: 44, scope: !1215)
!1223 = !DILocation(line: 123, column: 33, scope: !1215)
!1224 = !DILocation(line: 123, column: 63, scope: !1215)
!1225 = !DILocation(line: 124, column: 8, scope: !1215)
!1226 = !DILocation(line: 124, column: 16, scope: !1215)
!1227 = !DILocation(line: 124, column: 33, scope: !1215)
!1228 = !DILocation(line: 124, column: 48, scope: !1215)
!1229 = !DILocation(line: 125, column: 8, scope: !1215)
!1230 = !DILocation(line: 125, column: 16, scope: !1215)
!1231 = !DILocation(line: 125, column: 36, scope: !1215)
!1232 = !DILocation(line: 125, column: 44, scope: !1215)
!1233 = !DILocation(line: 125, column: 33, scope: !1215)
!1234 = !DILocation(line: 122, column: 6, scope: !1205)
!1235 = !DILocation(line: 128, column: 30, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1215, file: !252, line: 125, column: 64)
!1237 = !DILocation(line: 128, column: 38, scope: !1236)
!1238 = !DILocation(line: 128, column: 3, scope: !1236)
!1239 = !DILocation(line: 128, column: 11, scope: !1236)
!1240 = !DILocation(line: 128, column: 28, scope: !1236)
!1241 = !DILocation(line: 129, column: 30, scope: !1236)
!1242 = !DILocation(line: 129, column: 38, scope: !1236)
!1243 = !DILocation(line: 129, column: 3, scope: !1236)
!1244 = !DILocation(line: 129, column: 11, scope: !1236)
!1245 = !DILocation(line: 129, column: 28, scope: !1236)
!1246 = !DILocation(line: 132, column: 15, scope: !1236)
!1247 = !DILocation(line: 132, column: 23, scope: !1236)
!1248 = !DILocation(line: 132, column: 13, scope: !1236)
!1249 = !DILocation(line: 133, column: 18, scope: !1236)
!1250 = !DILocation(line: 133, column: 26, scope: !1236)
!1251 = !DILocation(line: 133, column: 3, scope: !1236)
!1252 = !DILocation(line: 133, column: 11, scope: !1236)
!1253 = !DILocation(line: 133, column: 16, scope: !1236)
!1254 = !DILocation(line: 134, column: 18, scope: !1236)
!1255 = !DILocation(line: 134, column: 3, scope: !1236)
!1256 = !DILocation(line: 134, column: 11, scope: !1236)
!1257 = !DILocation(line: 134, column: 16, scope: !1236)
!1258 = !DILocation(line: 137, column: 7, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1236, file: !252, line: 137, column: 7)
!1260 = !DILocation(line: 137, column: 15, scope: !1259)
!1261 = !DILocation(line: 137, column: 22, scope: !1259)
!1262 = !DILocation(line: 137, column: 30, scope: !1259)
!1263 = !DILocation(line: 137, column: 20, scope: !1259)
!1264 = !DILocation(line: 137, column: 7, scope: !1236)
!1265 = !DILocation(line: 138, column: 19, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !1259, file: !252, line: 137, column: 36)
!1267 = !DILocation(line: 138, column: 27, scope: !1266)
!1268 = !DILocation(line: 138, column: 4, scope: !1266)
!1269 = !DILocation(line: 138, column: 12, scope: !1266)
!1270 = !DILocation(line: 138, column: 17, scope: !1266)
!1271 = !DILocation(line: 139, column: 3, scope: !1266)
!1272 = !DILocation(line: 142, column: 21, scope: !1236)
!1273 = !DILocation(line: 142, column: 29, scope: !1236)
!1274 = !DILocation(line: 142, column: 3, scope: !1236)
!1275 = !DILocation(line: 142, column: 11, scope: !1236)
!1276 = !DILocation(line: 142, column: 19, scope: !1236)
!1277 = !DILocation(line: 143, column: 3, scope: !1236)
!1278 = !DILocation(line: 143, column: 11, scope: !1236)
!1279 = !DILocation(line: 143, column: 22, scope: !1236)
!1280 = !DILocation(line: 143, column: 30, scope: !1236)
!1281 = !DILocation(line: 144, column: 7, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1236, file: !252, line: 144, column: 7)
!1283 = !DILocation(line: 144, column: 15, scope: !1282)
!1284 = !DILocation(line: 144, column: 23, scope: !1282)
!1285 = !DILocation(line: 144, column: 7, scope: !1236)
!1286 = !DILocation(line: 145, column: 4, scope: !1287)
!1287 = distinct !DILexicalBlock(scope: !1282, file: !252, line: 144, column: 29)
!1288 = !DILocation(line: 145, column: 12, scope: !1287)
!1289 = !DILocation(line: 145, column: 21, scope: !1287)
!1290 = !DILocation(line: 145, column: 26, scope: !1287)
!1291 = !DILocation(line: 146, column: 3, scope: !1287)
!1292 = !DILocation(line: 146, column: 14, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1282, file: !252, line: 146, column: 14)
!1294 = !DILocation(line: 146, column: 22, scope: !1293)
!1295 = !DILocation(line: 146, column: 31, scope: !1293)
!1296 = !DILocation(line: 146, column: 36, scope: !1293)
!1297 = !DILocation(line: 146, column: 14, scope: !1282)
!1298 = !DILocation(line: 147, column: 22, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1293, file: !252, line: 146, column: 42)
!1300 = !DILocation(line: 147, column: 30, scope: !1299)
!1301 = !DILocation(line: 147, column: 39, scope: !1299)
!1302 = !DILocation(line: 147, column: 4, scope: !1299)
!1303 = !DILocation(line: 147, column: 12, scope: !1299)
!1304 = !DILocation(line: 147, column: 20, scope: !1299)
!1305 = !DILocation(line: 148, column: 3, scope: !1299)
!1306 = !DILocation(line: 153, column: 29, scope: !1236)
!1307 = !DILocation(line: 153, column: 37, scope: !1236)
!1308 = !DILocation(line: 153, column: 3, scope: !1236)
!1309 = !DILocation(line: 153, column: 11, scope: !1236)
!1310 = !DILocation(line: 153, column: 27, scope: !1236)
!1311 = !DILocation(line: 155, column: 3, scope: !1236)
!1312 = !DILocation(line: 158, column: 2, scope: !1205)
!1313 = !DILocation(line: 159, column: 1, scope: !1205)
!1314 = distinct !DISubprogram(name: "mbox_message_data_check", scope: !252, file: !252, line: 385, type: !1315, scopeLine: 386, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !204)
!1315 = !DISubroutineType(types: !1316)
!1316 = !{!183, !214, !153}
!1317 = !DILocalVariable(name: "rx_msg", arg: 1, scope: !1314, file: !252, line: 385, type: !214)
!1318 = !DILocation(line: 385, column: 55, scope: !1314)
!1319 = !DILocalVariable(name: "buffer", arg: 2, scope: !1314, file: !252, line: 385, type: !153)
!1320 = !DILocation(line: 385, column: 69, scope: !1314)
!1321 = !DILocation(line: 387, column: 6, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1314, file: !252, line: 387, column: 6)
!1323 = !DILocation(line: 387, column: 13, scope: !1322)
!1324 = !DILocation(line: 387, column: 6, scope: !1314)
!1325 = !DILocation(line: 389, column: 19, scope: !1326)
!1326 = distinct !DILexicalBlock(scope: !1322, file: !252, line: 387, column: 19)
!1327 = !DILocation(line: 389, column: 27, scope: !1326)
!1328 = !DILocation(line: 389, column: 3, scope: !1326)
!1329 = !DILocation(line: 390, column: 2, scope: !1326)
!1330 = !DILocation(line: 390, column: 13, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1322, file: !252, line: 390, column: 13)
!1332 = !DILocation(line: 390, column: 21, scope: !1331)
!1333 = !DILocation(line: 390, column: 26, scope: !1331)
!1334 = !DILocation(line: 390, column: 13, scope: !1322)
!1335 = !DILocation(line: 392, column: 24, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1331, file: !252, line: 390, column: 33)
!1337 = !DILocation(line: 392, column: 3, scope: !1336)
!1338 = !DILocation(line: 393, column: 2, scope: !1336)
!1339 = !DILocation(line: 397, column: 2, scope: !1314)
!1340 = distinct !DISubprogram(name: "sys_dlist_peek_next", scope: !101, file: !101, line: 350, type: !1341, scopeLine: 352, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !204)
!1341 = !DISubroutineType(types: !1342)
!1342 = !{!248, !1197, !248}
!1343 = !DILocalVariable(name: "list", arg: 1, scope: !1340, file: !101, line: 350, type: !1197)
!1344 = !DILocation(line: 350, column: 61, scope: !1340)
!1345 = !DILocalVariable(name: "node", arg: 2, scope: !1340, file: !101, line: 351, type: !248)
!1346 = !DILocation(line: 351, column: 26, scope: !1340)
!1347 = !DILocation(line: 353, column: 10, scope: !1340)
!1348 = !DILocation(line: 353, column: 15, scope: !1340)
!1349 = !DILocation(line: 353, column: 9, scope: !1340)
!1350 = !DILocation(line: 353, column: 61, scope: !1340)
!1351 = !DILocation(line: 353, column: 67, scope: !1340)
!1352 = !DILocation(line: 353, column: 32, scope: !1340)
!1353 = !DILocation(line: 353, column: 2, scope: !1340)
!1354 = distinct !DISubprogram(name: "sys_sflist_is_empty", scope: !423, file: !423, line: 335, type: !1355, scopeLine: 335, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !204)
!1355 = !DISubroutineType(types: !1356)
!1356 = !{!1357, !1358}
!1357 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 32)
!1359 = !DILocalVariable(name: "list", arg: 1, scope: !1354, file: !423, line: 335, type: !1358)
!1360 = !DILocation(line: 335, column: 55, scope: !1354)
!1361 = !DILocation(line: 335, column: 92, scope: !1354)
!1362 = !DILocation(line: 335, column: 71, scope: !1354)
!1363 = !DILocation(line: 335, column: 98, scope: !1354)
!1364 = !DILocation(line: 335, column: 63, scope: !1354)
!1365 = distinct !DISubprogram(name: "sys_sflist_peek_head", scope: !423, file: !423, line: 255, type: !1366, scopeLine: 256, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !204)
!1366 = !DISubroutineType(types: !1367)
!1367 = !{!427, !1358}
!1368 = !DILocalVariable(name: "list", arg: 1, scope: !1365, file: !423, line: 255, type: !1358)
!1369 = !DILocation(line: 255, column: 64, scope: !1365)
!1370 = !DILocation(line: 257, column: 9, scope: !1365)
!1371 = !DILocation(line: 257, column: 15, scope: !1365)
!1372 = !DILocation(line: 257, column: 2, scope: !1365)
!1373 = distinct !DISubprogram(name: "k_stack_push", scope: !1374, file: !1374, line: 925, type: !1375, scopeLine: 926, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !204)
!1374 = !DIFile(filename: "zephyr/include/generated/syscalls/kernel.h", directory: "/home/sri/zephyrproject/zephyr/build")
!1375 = !DISubroutineType(types: !1376)
!1376 = !{!183, !1377, !246}
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 32)
!1378 = !DILocalVariable(name: "stack", arg: 1, scope: !1373, file: !1374, line: 925, type: !1377)
!1379 = !DILocation(line: 925, column: 49, scope: !1373)
!1380 = !DILocalVariable(name: "data", arg: 2, scope: !1373, file: !1374, line: 925, type: !246)
!1381 = !DILocation(line: 925, column: 69, scope: !1373)
!1382 = !DILocation(line: 934, column: 2, scope: !1373)
!1383 = !DILocation(line: 934, column: 7, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !1373, file: !1374, line: 934, column: 5)
!1385 = !{i64 147197}
!1386 = !DILocation(line: 934, column: 47, scope: !1384)
!1387 = !DILocation(line: 935, column: 29, scope: !1373)
!1388 = !DILocation(line: 935, column: 36, scope: !1373)
!1389 = !DILocation(line: 935, column: 9, scope: !1373)
!1390 = !DILocation(line: 935, column: 2, scope: !1373)
!1391 = distinct !DISubprogram(name: "sys_dlist_init", scope: !101, file: !101, line: 203, type: !1392, scopeLine: 204, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !204)
!1392 = !DISubroutineType(types: !1393)
!1393 = !{null, !1197}
!1394 = !DILocalVariable(name: "list", arg: 1, scope: !1391, file: !101, line: 203, type: !1197)
!1395 = !DILocation(line: 203, column: 48, scope: !1391)
!1396 = !DILocation(line: 205, column: 30, scope: !1391)
!1397 = !DILocation(line: 205, column: 2, scope: !1391)
!1398 = !DILocation(line: 205, column: 8, scope: !1391)
!1399 = !DILocation(line: 205, column: 13, scope: !1391)
!1400 = !DILocation(line: 206, column: 30, scope: !1391)
!1401 = !DILocation(line: 206, column: 2, scope: !1391)
!1402 = !DILocation(line: 206, column: 8, scope: !1391)
!1403 = !DILocation(line: 206, column: 13, scope: !1391)
!1404 = !DILocation(line: 207, column: 1, scope: !1391)
!1405 = distinct !DISubprogram(name: "k_stack_pop", scope: !1374, file: !1374, line: 942, type: !1406, scopeLine: 943, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !204)
!1406 = !DISubroutineType(types: !1407)
!1407 = !{!183, !1377, !249, !376}
!1408 = !DILocalVariable(name: "stack", arg: 1, scope: !1405, file: !1374, line: 942, type: !1377)
!1409 = !DILocation(line: 942, column: 48, scope: !1405)
!1410 = !DILocalVariable(name: "data", arg: 2, scope: !1405, file: !1374, line: 942, type: !249)
!1411 = !DILocation(line: 942, column: 70, scope: !1405)
!1412 = !DILocalVariable(name: "timeout", arg: 3, scope: !1405, file: !1374, line: 942, type: !376)
!1413 = !DILocation(line: 942, column: 88, scope: !1405)
!1414 = !DILocation(line: 952, column: 2, scope: !1405)
!1415 = !DILocation(line: 952, column: 7, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1405, file: !1374, line: 952, column: 5)
!1417 = !{i64 147587}
!1418 = !DILocation(line: 952, column: 47, scope: !1416)
!1419 = !DILocation(line: 953, column: 28, scope: !1405)
!1420 = !DILocation(line: 953, column: 35, scope: !1405)
!1421 = !DILocation(line: 953, column: 9, scope: !1405)
!1422 = !DILocation(line: 953, column: 2, scope: !1405)
!1423 = distinct !DISubprogram(name: "mbox_async_free", scope: !252, file: !252, line: 45, type: !1424, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !204)
!1424 = !DISubroutineType(types: !1425)
!1425 = !{null, !250}
!1426 = !DILocalVariable(name: "async", arg: 1, scope: !1423, file: !252, line: 45, type: !250)
!1427 = !DILocation(line: 45, column: 57, scope: !1423)
!1428 = !DILocation(line: 47, column: 46, scope: !1423)
!1429 = !DILocation(line: 47, column: 32, scope: !1423)
!1430 = !DILocation(line: 47, column: 2, scope: !1423)
!1431 = !DILocation(line: 48, column: 1, scope: !1423)
!1432 = distinct !DISubprogram(name: "k_sem_give", scope: !1374, file: !1374, line: 1110, type: !1433, scopeLine: 1111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !204)
!1433 = !DISubroutineType(types: !1434)
!1434 = !{null, !240}
!1435 = !DILocalVariable(name: "sem", arg: 1, scope: !1432, file: !1374, line: 1110, type: !240)
!1436 = !DILocation(line: 1110, column: 46, scope: !1432)
!1437 = !DILocation(line: 1119, column: 2, scope: !1432)
!1438 = !DILocation(line: 1119, column: 7, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1432, file: !1374, line: 1119, column: 5)
!1440 = !{i64 150345}
!1441 = !DILocation(line: 1119, column: 47, scope: !1439)
!1442 = !DILocation(line: 1120, column: 20, scope: !1432)
!1443 = !DILocation(line: 1120, column: 2, scope: !1432)
!1444 = !DILocation(line: 1121, column: 1, scope: !1432)
!1445 = distinct !DISubprogram(name: "z_mark_thread_as_not_pending", scope: !1446, file: !1446, line: 167, type: !1447, scopeLine: 168, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !204)
!1446 = !DIFile(filename: "kernel/include/ksched.h", directory: "/home/sri/zephyrproject/zephyr")
!1447 = !DISubroutineType(types: !1448)
!1448 = !{null, !89}
!1449 = !DILocalVariable(name: "thread", arg: 1, scope: !1445, file: !1446, line: 167, type: !89)
!1450 = !DILocation(line: 167, column: 66, scope: !1445)
!1451 = !DILocation(line: 169, column: 2, scope: !1445)
!1452 = !DILocation(line: 169, column: 10, scope: !1445)
!1453 = !DILocation(line: 169, column: 15, scope: !1445)
!1454 = !DILocation(line: 169, column: 28, scope: !1445)
!1455 = !DILocation(line: 170, column: 1, scope: !1445)
!1456 = distinct !DISubprogram(name: "z_reschedule_unlocked", scope: !1446, file: !1446, line: 75, type: !1457, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !204)
!1457 = !DISubroutineType(types: !1458)
!1458 = !{null}
!1459 = !DILocation(line: 44, column: 15, scope: !609, inlinedAt: !1460)
!1460 = distinct !DILocation(line: 77, column: 30, scope: !1456)
!1461 = !DILocation(line: 48, column: 2, scope: !609, inlinedAt: !1460)
!1462 = !DILocation(line: 80, column: 9, scope: !609, inlinedAt: !1460)
!1463 = !DILocation(line: 77, column: 9, scope: !1456)
!1464 = !DILocation(line: 78, column: 1, scope: !1456)
!1465 = distinct !DISubprogram(name: "sys_dlist_is_empty", scope: !101, file: !101, line: 275, type: !1466, scopeLine: 276, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !204)
!1466 = !DISubroutineType(types: !1467)
!1467 = !{!1357, !1197}
!1468 = !DILocalVariable(name: "list", arg: 1, scope: !1465, file: !101, line: 275, type: !1197)
!1469 = !DILocation(line: 275, column: 53, scope: !1465)
!1470 = !DILocation(line: 277, column: 9, scope: !1465)
!1471 = !DILocation(line: 277, column: 15, scope: !1465)
!1472 = !DILocation(line: 277, column: 23, scope: !1465)
!1473 = !DILocation(line: 277, column: 20, scope: !1465)
!1474 = !DILocation(line: 277, column: 2, scope: !1465)
!1475 = distinct !DISubprogram(name: "sys_dlist_peek_next_no_check", scope: !101, file: !101, line: 334, type: !1341, scopeLine: 336, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !204)
!1476 = !DILocalVariable(name: "list", arg: 1, scope: !1475, file: !101, line: 334, type: !1197)
!1477 = !DILocation(line: 334, column: 70, scope: !1475)
!1478 = !DILocalVariable(name: "node", arg: 2, scope: !1475, file: !101, line: 335, type: !248)
!1479 = !DILocation(line: 335, column: 21, scope: !1475)
!1480 = !DILocation(line: 337, column: 10, scope: !1475)
!1481 = !DILocation(line: 337, column: 18, scope: !1475)
!1482 = !DILocation(line: 337, column: 24, scope: !1475)
!1483 = !DILocation(line: 337, column: 15, scope: !1475)
!1484 = !DILocation(line: 337, column: 9, scope: !1475)
!1485 = !DILocation(line: 337, column: 45, scope: !1475)
!1486 = !DILocation(line: 337, column: 51, scope: !1475)
!1487 = !DILocation(line: 337, column: 2, scope: !1475)
