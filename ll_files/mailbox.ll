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
@_kernel = external dso_local global %struct.z_kernel, align 4
@init_mbox_module.async_msg = internal global [10 x %struct.k_mbox_async] zeroinitializer, section ".noinit.\22ZEPHYR_BASE/kernel/mailbox.c\22.1", align 8, !dbg !283
@llvm.used = appending global [2 x ptr] [ptr @async_msg_free, ptr @__init_init_mbox_module], section "llvm.metadata"

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_k_object_access_grant(ptr noundef %0, ptr noundef %1) #0 !dbg !304 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !310, metadata !DIExpression()), !dbg !312
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !311, metadata !DIExpression()), !dbg !313
  %5 = load ptr, ptr %3, align 4, !dbg !314
  %6 = load ptr, ptr %4, align 4, !dbg !315
  ret void, !dbg !316
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_k_object_release(ptr noundef %0) #0 !dbg !317 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !321, metadata !DIExpression()), !dbg !322
  %3 = load ptr, ptr %2, align 4, !dbg !323
  ret void, !dbg !324
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_impl_k_object_alloc(i8 noundef zeroext %0) #0 !dbg !325 {
  %2 = alloca i8, align 1
  store i8 %0, ptr %2, align 1
  call void @llvm.dbg.declare(metadata ptr %2, metadata !329, metadata !DIExpression()), !dbg !330
  %3 = load i8, ptr %2, align 1, !dbg !331
  ret ptr null, !dbg !332
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_impl_k_object_alloc_size(i8 noundef zeroext %0, i32 noundef %1) #0 !dbg !333 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8 %0, ptr %3, align 1
  call void @llvm.dbg.declare(metadata ptr %3, metadata !337, metadata !DIExpression()), !dbg !339
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !338, metadata !DIExpression()), !dbg !340
  %5 = load i8, ptr %3, align 1, !dbg !341
  %6 = load i32, ptr %4, align 4, !dbg !342
  ret ptr null, !dbg !343
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_thread_timeout_expires_ticks(ptr noundef %0) #0 !dbg !344 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !350, metadata !DIExpression()), !dbg !351
  %3 = load ptr, ptr %2, align 4, !dbg !352
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !353
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !354
  %6 = call i64 @z_timeout_expires(ptr noundef %5) #6, !dbg !355
  ret i64 %6, !dbg !356
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_thread_timeout_remaining_ticks(ptr noundef %0) #0 !dbg !357 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !359, metadata !DIExpression()), !dbg !360
  %3 = load ptr, ptr %2, align 4, !dbg !361
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !362
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !363
  %6 = call i64 @z_timeout_remaining(ptr noundef %5) #6, !dbg !364
  ret i64 %6, !dbg !365
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_timer_expires_ticks(ptr noundef %0) #0 !dbg !366 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !389, metadata !DIExpression()), !dbg !390
  %3 = load ptr, ptr %2, align 4, !dbg !391
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !392
  %5 = call i64 @z_timeout_expires(ptr noundef %4) #6, !dbg !393
  ret i64 %5, !dbg !394
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_timer_remaining_ticks(ptr noundef %0) #0 !dbg !395 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !397, metadata !DIExpression()), !dbg !398
  %3 = load ptr, ptr %2, align 4, !dbg !399
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !400
  %5 = call i64 @z_timeout_remaining(ptr noundef %4) #6, !dbg !401
  ret i64 %5, !dbg !402
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_k_timer_user_data_set(ptr noundef %0, ptr noundef %1) #0 !dbg !403 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !407, metadata !DIExpression()), !dbg !409
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !408, metadata !DIExpression()), !dbg !410
  %5 = load ptr, ptr %4, align 4, !dbg !411
  %6 = load ptr, ptr %3, align 4, !dbg !412
  %7 = getelementptr inbounds %struct.k_timer, ptr %6, i32 0, i32 6, !dbg !413
  store ptr %5, ptr %7, align 4, !dbg !414
  ret void, !dbg !415
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_impl_k_timer_user_data_get(ptr noundef %0) #0 !dbg !416 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !420, metadata !DIExpression()), !dbg !421
  %3 = load ptr, ptr %2, align 4, !dbg !422
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 6, !dbg !423
  %5 = load ptr, ptr %4, align 4, !dbg !423
  ret ptr %5, !dbg !424
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_queue_is_empty(ptr noundef %0) #0 !dbg !425 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !447, metadata !DIExpression()), !dbg !448
  %3 = load ptr, ptr %2, align 4, !dbg !449
  %4 = getelementptr inbounds %struct.k_queue, ptr %3, i32 0, i32 0, !dbg !450
  %5 = call zeroext i1 @sys_sflist_is_empty(ptr noundef %4) #6, !dbg !451
  %6 = zext i1 %5 to i32, !dbg !452
  ret i32 %6, !dbg !453
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_sem_count_get(ptr noundef %0) #0 !dbg !454 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !458, metadata !DIExpression()), !dbg !459
  %3 = load ptr, ptr %2, align 4, !dbg !460
  %4 = getelementptr inbounds %struct.k_sem, ptr %3, i32 0, i32 1, !dbg !461
  %5 = load i32, ptr %4, align 4, !dbg !461
  ret i32 %5, !dbg !462
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_msgq_num_free_get(ptr noundef %0) #0 !dbg !463 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !480, metadata !DIExpression()), !dbg !481
  %3 = load ptr, ptr %2, align 4, !dbg !482
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 3, !dbg !483
  %5 = load i32, ptr %4, align 4, !dbg !483
  %6 = load ptr, ptr %2, align 4, !dbg !484
  %7 = getelementptr inbounds %struct.k_msgq, ptr %6, i32 0, i32 8, !dbg !485
  %8 = load i32, ptr %7, align 4, !dbg !485
  %9 = sub i32 %5, %8, !dbg !486
  ret i32 %9, !dbg !487
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_msgq_num_used_get(ptr noundef %0) #0 !dbg !488 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !490, metadata !DIExpression()), !dbg !491
  %3 = load ptr, ptr %2, align 4, !dbg !492
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 8, !dbg !493
  %5 = load i32, ptr %4, align 4, !dbg !493
  ret i32 %5, !dbg !494
}

; Function Attrs: nounwind optsize
define internal i32 @init_mbox_module() #1 !dbg !285 {
  %1 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %1) #7, !dbg !495
  call void @llvm.dbg.declare(metadata ptr %1, metadata !287, metadata !DIExpression()), !dbg !496
  store i32 0, ptr %1, align 4, !dbg !497
  br label %2, !dbg !499

2:                                                ; preds = %13, %0
  %3 = load i32, ptr %1, align 4, !dbg !500
  %4 = icmp slt i32 %3, 10, !dbg !502
  br i1 %4, label %5, label %16, !dbg !503

5:                                                ; preds = %2
  %6 = load i32, ptr %1, align 4, !dbg !504
  %7 = getelementptr inbounds [10 x %struct.k_mbox_async], ptr @init_mbox_module.async_msg, i32 0, i32 %6, !dbg !506
  %8 = getelementptr inbounds %struct.k_mbox_async, ptr %7, i32 0, i32 0, !dbg !507
  call void @z_init_thread_base(ptr noundef %8, i32 noundef 0, i32 noundef 1, i32 noundef 0) #6, !dbg !508
  %9 = load i32, ptr %1, align 4, !dbg !509
  %10 = getelementptr inbounds [10 x %struct.k_mbox_async], ptr @init_mbox_module.async_msg, i32 0, i32 %9, !dbg !510
  %11 = ptrtoint ptr %10 to i32, !dbg !511
  %12 = call i32 @k_stack_push(ptr noundef @async_msg_free, i32 noundef %11) #6, !dbg !512
  br label %13, !dbg !513

13:                                               ; preds = %5
  %14 = load i32, ptr %1, align 4, !dbg !514
  %15 = add nsw i32 %14, 1, !dbg !514
  store i32 %15, ptr %1, align 4, !dbg !514
  br label %2, !dbg !515, !llvm.loop !516

16:                                               ; preds = %2
  call void @llvm.lifetime.end.p0(i64 4, ptr %1) #7, !dbg !518
  ret i32 0, !dbg !519
}

; Function Attrs: nounwind optsize
define hidden void @k_mbox_init(ptr noundef %0) #1 !dbg !520 {
  %2 = alloca ptr, align 4
  %3 = alloca %struct.k_spinlock, align 1
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !530, metadata !DIExpression()), !dbg !531
  %4 = load ptr, ptr %2, align 4, !dbg !532
  %5 = getelementptr inbounds %struct.k_mbox, ptr %4, i32 0, i32 0, !dbg !533
  call void @z_waitq_init(ptr noundef %5) #6, !dbg !534
  %6 = load ptr, ptr %2, align 4, !dbg !535
  %7 = getelementptr inbounds %struct.k_mbox, ptr %6, i32 0, i32 1, !dbg !536
  call void @z_waitq_init(ptr noundef %7) #6, !dbg !537
  %8 = load ptr, ptr %2, align 4, !dbg !538
  %9 = getelementptr inbounds %struct.k_mbox, ptr %8, i32 0, i32 2, !dbg !539
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %9, ptr align 1 %3, i32 0, i1 false), !dbg !540
  br label %10, !dbg !541

10:                                               ; preds = %1
  br label %11, !dbg !542

11:                                               ; preds = %10
  ret void, !dbg !544
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: inlinehint nounwind optsize
define internal void @z_waitq_init(ptr noundef %0) #0 !dbg !545 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !550, metadata !DIExpression()), !dbg !551
  %3 = load ptr, ptr %2, align 4, !dbg !552
  %4 = getelementptr inbounds %struct._wait_q_t, ptr %3, i32 0, i32 0, !dbg !553
  call void @sys_dlist_init(ptr noundef %4) #6, !dbg !554
  ret void, !dbg !555
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: nounwind optsize
define hidden i32 @k_mbox_put(ptr noundef %0, ptr noundef %1, [1 x i64] %2) #1 !dbg !556 {
  %4 = alloca %struct.k_timeout_t, align 8
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.k_timeout_t, ptr %4, i32 0, i32 0
  store [1 x i64] %2, ptr %8, align 8
  store ptr %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !560, metadata !DIExpression()), !dbg !564
  store ptr %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !561, metadata !DIExpression()), !dbg !565
  call void @llvm.dbg.declare(metadata ptr %4, metadata !562, metadata !DIExpression()), !dbg !566
  %9 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !567
  %10 = load ptr, ptr %6, align 4, !dbg !568
  %11 = getelementptr inbounds %struct.k_mbox_msg, ptr %10, i32 0, i32 8, !dbg !569
  store ptr %9, ptr %11, align 4, !dbg !570
  br label %12, !dbg !571

12:                                               ; preds = %3
  br label %13, !dbg !572

13:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #7, !dbg !574
  call void @llvm.dbg.declare(metadata ptr %7, metadata !563, metadata !DIExpression()), !dbg !575
  %14 = load ptr, ptr %5, align 4, !dbg !576
  %15 = load ptr, ptr %6, align 4, !dbg !577
  %16 = getelementptr inbounds %struct.k_timeout_t, ptr %4, i32 0, i32 0, !dbg !578
  %17 = load [1 x i64], ptr %16, align 8, !dbg !578
  %18 = call i32 @mbox_message_put(ptr noundef %14, ptr noundef %15, [1 x i64] %17) #6, !dbg !578
  store i32 %18, ptr %7, align 4, !dbg !575
  br label %19, !dbg !579

19:                                               ; preds = %13
  br label %20, !dbg !580

20:                                               ; preds = %19
  br label %21, !dbg !580

21:                                               ; preds = %20
  %22 = load i32, ptr %7, align 4, !dbg !582
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #7, !dbg !583
  ret i32 %22, !dbg !584
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind optsize
define internal i32 @mbox_message_put(ptr noundef %0, ptr noundef %1, [1 x i64] %2) #1 !dbg !585 {
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
  %28 = alloca i32, align 4
  %29 = alloca %struct.k_timeout_t, align 8
  %30 = alloca ptr, align 4
  %31 = alloca %struct.k_timeout_t, align 8
  %32 = alloca %struct.k_timeout_t, align 8
  %33 = alloca i32, align 4
  %34 = getelementptr inbounds %struct.k_timeout_t, ptr %18, i32 0, i32 0
  store [1 x i64] %2, ptr %34, align 8
  store ptr %0, ptr %19, align 4
  call void @llvm.dbg.declare(metadata ptr %19, metadata !587, metadata !DIExpression()), !dbg !605
  store ptr %1, ptr %20, align 4
  call void @llvm.dbg.declare(metadata ptr %20, metadata !588, metadata !DIExpression()), !dbg !606
  call void @llvm.dbg.declare(metadata ptr %18, metadata !589, metadata !DIExpression()), !dbg !607
  call void @llvm.lifetime.start.p0(i64 4, ptr %21) #7, !dbg !608
  call void @llvm.dbg.declare(metadata ptr %21, metadata !590, metadata !DIExpression()), !dbg !609
  call void @llvm.lifetime.start.p0(i64 4, ptr %22) #7, !dbg !610
  call void @llvm.dbg.declare(metadata ptr %22, metadata !591, metadata !DIExpression()), !dbg !611
  call void @llvm.lifetime.start.p0(i64 4, ptr %23) #7, !dbg !612
  call void @llvm.dbg.declare(metadata ptr %23, metadata !592, metadata !DIExpression()), !dbg !613
  call void @llvm.lifetime.start.p0(i64 4, ptr %24) #7, !dbg !614
  call void @llvm.dbg.declare(metadata ptr %24, metadata !593, metadata !DIExpression()), !dbg !615
  %35 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !616
  %36 = load ptr, ptr %20, align 4, !dbg !617
  %37 = getelementptr inbounds %struct.k_mbox_msg, ptr %36, i32 0, i32 6, !dbg !618
  store ptr %35, ptr %37, align 4, !dbg !619
  %38 = load ptr, ptr %20, align 4, !dbg !620
  %39 = getelementptr inbounds %struct.k_mbox_msg, ptr %38, i32 0, i32 8, !dbg !621
  %40 = load ptr, ptr %39, align 4, !dbg !621
  store ptr %40, ptr %21, align 4, !dbg !622
  %41 = load ptr, ptr %20, align 4, !dbg !623
  %42 = load ptr, ptr %21, align 4, !dbg !624
  %43 = getelementptr inbounds %struct.k_thread, ptr %42, i32 0, i32 0, !dbg !625
  %44 = getelementptr inbounds %struct._thread_base, ptr %43, i32 0, i32 6, !dbg !626
  store ptr %41, ptr %44, align 4, !dbg !627
  call void @llvm.lifetime.start.p0(i64 4, ptr %25) #7, !dbg !628
  %45 = load ptr, ptr %19, align 4, !dbg !629
  %46 = getelementptr inbounds %struct.k_mbox, ptr %45, i32 0, i32 2, !dbg !630
  store ptr %46, ptr %16, align 4
  call void @llvm.dbg.declare(metadata ptr %16, metadata !631, metadata !DIExpression()), !dbg !638
  %47 = load ptr, ptr %16, align 4, !dbg !640
  call void @llvm.dbg.declare(metadata ptr %15, metadata !637, metadata !DIExpression()), !dbg !641
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #7, !dbg !642
  call void @llvm.dbg.declare(metadata ptr %8, metadata !648, metadata !DIExpression()), !dbg !650
  %48 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #7, !dbg !651, !srcloc !652
  store i32 %48, ptr %8, align 4, !dbg !651
  %49 = load i32, ptr %8, align 4, !dbg !653
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #7, !dbg !654
  store i32 %49, ptr %15, align 4, !dbg !655
  %50 = load ptr, ptr %16, align 4, !dbg !656
  store ptr %50, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !657, metadata !DIExpression()), !dbg !662
  %51 = load ptr, ptr %7, align 4, !dbg !664
  %52 = load ptr, ptr %16, align 4, !dbg !665
  store ptr %52, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !666, metadata !DIExpression()), !dbg !669
  %53 = load ptr, ptr %6, align 4, !dbg !671
  %54 = load i32, ptr %15, align 4, !dbg !672
  %55 = getelementptr inbounds %struct.z_spinlock_key, ptr %25, i32 0, i32 0, !dbg !628
  store i32 %54, ptr %55, align 4, !dbg !628
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %24, ptr align 4 %25, i32 4, i1 false), !dbg !628
  call void @llvm.lifetime.end.p0(i64 4, ptr %25) #7, !dbg !628
  br label %56, !dbg !673

56:                                               ; preds = %3
  br label %57, !dbg !674

57:                                               ; preds = %56
  br label %58, !dbg !674

58:                                               ; preds = %57
  %59 = load ptr, ptr %19, align 4, !dbg !676
  %60 = getelementptr inbounds %struct.k_mbox, ptr %59, i32 0, i32 1, !dbg !677
  %61 = getelementptr inbounds %struct._wait_q_t, ptr %60, i32 0, i32 0, !dbg !678
  %62 = call ptr @sys_dlist_peek_head(ptr noundef %61) #6, !dbg !679
  %63 = icmp ne ptr %62, null, !dbg !680
  br i1 %63, label %64, label %71, !dbg !681

64:                                               ; preds = %58
  %65 = load ptr, ptr %19, align 4, !dbg !682
  %66 = getelementptr inbounds %struct.k_mbox, ptr %65, i32 0, i32 1, !dbg !684
  %67 = getelementptr inbounds %struct._wait_q_t, ptr %66, i32 0, i32 0, !dbg !685
  %68 = call ptr @sys_dlist_peek_head(ptr noundef %67) #6, !dbg !686
  %69 = getelementptr inbounds i8, ptr %68, i32 0, !dbg !687
  store ptr %69, ptr %26, align 4, !dbg !688
  %70 = load ptr, ptr %26, align 4, !dbg !689
  br label %72, !dbg !681

71:                                               ; preds = %58
  br label %72, !dbg !681

72:                                               ; preds = %71, %64
  %73 = phi ptr [ %70, %64 ], [ null, %71 ], !dbg !681
  store ptr %73, ptr %22, align 4, !dbg !690
  br label %74, !dbg !691

74:                                               ; preds = %149, %72
  %75 = load ptr, ptr %22, align 4, !dbg !692
  %76 = icmp ne ptr %75, null, !dbg !693
  br i1 %76, label %77, label %151, !dbg !694

77:                                               ; preds = %74
  %78 = load ptr, ptr %22, align 4, !dbg !695
  %79 = getelementptr inbounds %struct.k_thread, ptr %78, i32 0, i32 0, !dbg !696
  %80 = getelementptr inbounds %struct._thread_base, ptr %79, i32 0, i32 6, !dbg !697
  %81 = load ptr, ptr %80, align 4, !dbg !697
  store ptr %81, ptr %23, align 4, !dbg !698
  %82 = load ptr, ptr %20, align 4, !dbg !699
  %83 = load ptr, ptr %23, align 4, !dbg !700
  %84 = call i32 @mbox_message_match(ptr noundef %82, ptr noundef %83) #6, !dbg !701
  %85 = icmp eq i32 %84, 0, !dbg !702
  br i1 %85, label %86, label %122, !dbg !703

86:                                               ; preds = %77
  %87 = load ptr, ptr %22, align 4, !dbg !704
  call void @z_unpend_thread(ptr noundef %87) #6, !dbg !705
  %88 = load ptr, ptr %22, align 4, !dbg !706
  store ptr %88, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !707, metadata !DIExpression()), !dbg !714
  store i32 0, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !713, metadata !DIExpression()), !dbg !716
  %89 = load i32, ptr %10, align 4, !dbg !717
  %90 = load ptr, ptr %9, align 4, !dbg !718
  %91 = getelementptr inbounds %struct.k_thread, ptr %90, i32 0, i32 6, !dbg !719
  %92 = getelementptr inbounds %struct._thread_arch, ptr %91, i32 0, i32 1, !dbg !720
  store i32 %89, ptr %92, align 4, !dbg !721
  %93 = load ptr, ptr %22, align 4, !dbg !722
  call void @z_ready_thread(ptr noundef %93) #6, !dbg !723
  %94 = load ptr, ptr %21, align 4, !dbg !724
  %95 = getelementptr inbounds %struct.k_thread, ptr %94, i32 0, i32 0, !dbg !726
  %96 = getelementptr inbounds %struct._thread_base, ptr %95, i32 0, i32 3, !dbg !727
  %97 = load i8, ptr %96, align 1, !dbg !727
  %98 = zext i8 %97 to i32, !dbg !724
  %99 = and i32 %98, 1, !dbg !728
  %100 = icmp ne i32 %99, 0, !dbg !729
  br i1 %100, label %101, label %106, !dbg !730

101:                                              ; preds = %86
  %102 = load ptr, ptr %19, align 4, !dbg !731
  %103 = getelementptr inbounds %struct.k_mbox, ptr %102, i32 0, i32 2, !dbg !733
  %104 = getelementptr inbounds %struct.z_spinlock_key, ptr %24, i32 0, i32 0, !dbg !734
  %105 = load [1 x i32], ptr %104, align 4, !dbg !734
  call void @z_reschedule(ptr noundef %103, [1 x i32] %105) #6, !dbg !734
  store i32 0, ptr %17, align 4, !dbg !735
  store i32 1, ptr %27, align 4
  br label %212, !dbg !735

106:                                              ; preds = %86
  br label %107, !dbg !736

107:                                              ; preds = %106
  br label %108, !dbg !737

108:                                              ; preds = %107
  br label %109, !dbg !737

109:                                              ; preds = %108
  call void @llvm.lifetime.start.p0(i64 4, ptr %28) #7, !dbg !739
  call void @llvm.dbg.declare(metadata ptr %28, metadata !598, metadata !DIExpression()), !dbg !740
  %110 = load ptr, ptr %19, align 4, !dbg !741
  %111 = getelementptr inbounds %struct.k_mbox, ptr %110, i32 0, i32 2, !dbg !742
  %112 = getelementptr inbounds %struct.k_timeout_t, ptr %29, i32 0, i32 0, !dbg !743
  store i64 -1, ptr %112, align 8, !dbg !743
  %113 = getelementptr inbounds %struct.z_spinlock_key, ptr %24, i32 0, i32 0, !dbg !744
  %114 = load [1 x i32], ptr %113, align 4, !dbg !744
  %115 = getelementptr inbounds %struct.k_timeout_t, ptr %29, i32 0, i32 0, !dbg !744
  %116 = load [1 x i64], ptr %115, align 8, !dbg !744
  %117 = call i32 @z_pend_curr(ptr noundef %111, [1 x i32] %114, ptr noundef null, [1 x i64] %116) #6, !dbg !744
  store i32 %117, ptr %28, align 4, !dbg !740
  br label %118, !dbg !745

118:                                              ; preds = %109
  br label %119, !dbg !746

119:                                              ; preds = %118
  br label %120, !dbg !746

120:                                              ; preds = %119
  %121 = load i32, ptr %28, align 4, !dbg !748
  store i32 %121, ptr %17, align 4, !dbg !749
  store i32 1, ptr %27, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %28) #7, !dbg !750
  br label %212

122:                                              ; preds = %77
  br label %123, !dbg !751

123:                                              ; preds = %122
  %124 = load ptr, ptr %22, align 4, !dbg !752
  %125 = icmp ne ptr %124, null, !dbg !753
  br i1 %125, label %126, label %148, !dbg !754

126:                                              ; preds = %123
  %127 = load ptr, ptr %19, align 4, !dbg !755
  %128 = getelementptr inbounds %struct.k_mbox, ptr %127, i32 0, i32 1, !dbg !756
  %129 = getelementptr inbounds %struct._wait_q_t, ptr %128, i32 0, i32 0, !dbg !757
  %130 = load ptr, ptr %22, align 4, !dbg !758
  %131 = getelementptr inbounds %struct.k_thread, ptr %130, i32 0, i32 0, !dbg !759
  %132 = getelementptr inbounds %struct._thread_base, ptr %131, i32 0, i32 0, !dbg !760
  %133 = call ptr @sys_dlist_peek_next(ptr noundef %129, ptr noundef %132) #6, !dbg !761
  %134 = icmp ne ptr %133, null, !dbg !762
  br i1 %134, label %135, label %145, !dbg !763

135:                                              ; preds = %126
  %136 = load ptr, ptr %19, align 4, !dbg !764
  %137 = getelementptr inbounds %struct.k_mbox, ptr %136, i32 0, i32 1, !dbg !766
  %138 = getelementptr inbounds %struct._wait_q_t, ptr %137, i32 0, i32 0, !dbg !767
  %139 = load ptr, ptr %22, align 4, !dbg !768
  %140 = getelementptr inbounds %struct.k_thread, ptr %139, i32 0, i32 0, !dbg !769
  %141 = getelementptr inbounds %struct._thread_base, ptr %140, i32 0, i32 0, !dbg !770
  %142 = call ptr @sys_dlist_peek_next(ptr noundef %138, ptr noundef %141) #6, !dbg !771
  %143 = getelementptr inbounds i8, ptr %142, i32 0, !dbg !772
  store ptr %143, ptr %30, align 4, !dbg !773
  %144 = load ptr, ptr %30, align 4, !dbg !774
  br label %146, !dbg !763

145:                                              ; preds = %126
  br label %146, !dbg !763

146:                                              ; preds = %145, %135
  %147 = phi ptr [ %144, %135 ], [ null, %145 ], !dbg !763
  br label %149, !dbg !754

148:                                              ; preds = %123
  br label %149, !dbg !754

149:                                              ; preds = %148, %146
  %150 = phi ptr [ %147, %146 ], [ null, %148 ], !dbg !754
  store ptr %150, ptr %22, align 4, !dbg !775
  br label %74, !dbg !776, !llvm.loop !777

151:                                              ; preds = %74
  %152 = getelementptr inbounds %struct.k_timeout_t, ptr %18, i32 0, i32 0, !dbg !779
  %153 = load i64, ptr %152, align 8, !dbg !779
  %154 = getelementptr inbounds %struct.k_timeout_t, ptr %31, i32 0, i32 0, !dbg !781
  store i64 0, ptr %154, align 8, !dbg !781
  %155 = icmp eq i64 %153, 0, !dbg !782
  br i1 %155, label %156, label %170, !dbg !783

156:                                              ; preds = %151
  br label %157, !dbg !784

157:                                              ; preds = %156
  br label %158, !dbg !786

158:                                              ; preds = %157
  br label %159, !dbg !786

159:                                              ; preds = %158
  %160 = load ptr, ptr %19, align 4, !dbg !788
  %161 = getelementptr inbounds %struct.k_mbox, ptr %160, i32 0, i32 2, !dbg !789
  %162 = getelementptr inbounds %struct.z_spinlock_key, ptr %24, i32 0, i32 0, !dbg !790
  %163 = load [1 x i32], ptr %162, align 4, !dbg !790
  store [1 x i32] %163, ptr %11, align 4
  store ptr %161, ptr %12, align 4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !791, metadata !DIExpression()), !dbg !797
  call void @llvm.dbg.declare(metadata ptr %11, metadata !796, metadata !DIExpression()), !dbg !799
  %164 = load ptr, ptr %12, align 4, !dbg !800
  %165 = load i32, ptr %11, align 4, !dbg !801
  store i32 %165, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !802, metadata !DIExpression()), !dbg !807
  %166 = load i32, ptr %5, align 4, !dbg !809
  %167 = icmp ne i32 %166, 0, !dbg !811
  br i1 %167, label %168, label %169, !dbg !812

168:                                              ; preds = %159
  br label %arch_irq_unlock.exit, !dbg !813

169:                                              ; preds = %159
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #7, !dbg !815, !srcloc !816
  br label %arch_irq_unlock.exit, !dbg !817

arch_irq_unlock.exit:                             ; preds = %168, %169
  store i32 -35, ptr %17, align 4, !dbg !818
  store i32 1, ptr %27, align 4
  br label %212, !dbg !818

170:                                              ; preds = %151
  %171 = load ptr, ptr %21, align 4, !dbg !819
  %172 = getelementptr inbounds %struct.k_thread, ptr %171, i32 0, i32 0, !dbg !821
  %173 = getelementptr inbounds %struct._thread_base, ptr %172, i32 0, i32 3, !dbg !822
  %174 = load i8, ptr %173, align 1, !dbg !822
  %175 = zext i8 %174 to i32, !dbg !819
  %176 = and i32 %175, 1, !dbg !823
  %177 = icmp ne i32 %176, 0, !dbg !824
  br i1 %177, label %178, label %195, !dbg !825

178:                                              ; preds = %170
  %179 = load ptr, ptr %21, align 4, !dbg !826
  %180 = load ptr, ptr %19, align 4, !dbg !828
  %181 = getelementptr inbounds %struct.k_mbox, ptr %180, i32 0, i32 0, !dbg !829
  %182 = getelementptr inbounds %struct.k_timeout_t, ptr %32, i32 0, i32 0, !dbg !830
  store i64 -1, ptr %182, align 8, !dbg !830
  %183 = getelementptr inbounds %struct.k_timeout_t, ptr %32, i32 0, i32 0, !dbg !831
  %184 = load [1 x i64], ptr %183, align 8, !dbg !831
  call void @z_pend_thread(ptr noundef %179, ptr noundef %181, [1 x i64] %184) #6, !dbg !831
  %185 = load ptr, ptr %19, align 4, !dbg !832
  %186 = getelementptr inbounds %struct.k_mbox, ptr %185, i32 0, i32 2, !dbg !833
  %187 = getelementptr inbounds %struct.z_spinlock_key, ptr %24, i32 0, i32 0, !dbg !834
  %188 = load [1 x i32], ptr %187, align 4, !dbg !834
  store [1 x i32] %188, ptr %13, align 4
  store ptr %186, ptr %14, align 4
  call void @llvm.dbg.declare(metadata ptr %14, metadata !791, metadata !DIExpression()), !dbg !835
  call void @llvm.dbg.declare(metadata ptr %13, metadata !796, metadata !DIExpression()), !dbg !837
  %189 = load ptr, ptr %14, align 4, !dbg !838
  %190 = load i32, ptr %13, align 4, !dbg !839
  store i32 %190, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !802, metadata !DIExpression()), !dbg !840
  %191 = load i32, ptr %4, align 4, !dbg !842
  %192 = icmp ne i32 %191, 0, !dbg !843
  br i1 %192, label %193, label %194, !dbg !844

193:                                              ; preds = %178
  br label %arch_irq_unlock.exit1, !dbg !845

194:                                              ; preds = %178
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #7, !dbg !846, !srcloc !816
  br label %arch_irq_unlock.exit1, !dbg !847

arch_irq_unlock.exit1:                            ; preds = %193, %194
  store i32 0, ptr %17, align 4, !dbg !848
  store i32 1, ptr %27, align 4
  br label %212, !dbg !848

195:                                              ; preds = %170
  br label %196, !dbg !849

196:                                              ; preds = %195
  br label %197, !dbg !850

197:                                              ; preds = %196
  br label %198, !dbg !850

198:                                              ; preds = %197
  call void @llvm.lifetime.start.p0(i64 4, ptr %33) #7, !dbg !852
  call void @llvm.dbg.declare(metadata ptr %33, metadata !604, metadata !DIExpression()), !dbg !853
  %199 = load ptr, ptr %19, align 4, !dbg !854
  %200 = getelementptr inbounds %struct.k_mbox, ptr %199, i32 0, i32 2, !dbg !855
  %201 = load ptr, ptr %19, align 4, !dbg !856
  %202 = getelementptr inbounds %struct.k_mbox, ptr %201, i32 0, i32 0, !dbg !857
  %203 = getelementptr inbounds %struct.z_spinlock_key, ptr %24, i32 0, i32 0, !dbg !858
  %204 = load [1 x i32], ptr %203, align 4, !dbg !858
  %205 = getelementptr inbounds %struct.k_timeout_t, ptr %18, i32 0, i32 0, !dbg !858
  %206 = load [1 x i64], ptr %205, align 8, !dbg !858
  %207 = call i32 @z_pend_curr(ptr noundef %200, [1 x i32] %204, ptr noundef %202, [1 x i64] %206) #6, !dbg !858
  store i32 %207, ptr %33, align 4, !dbg !853
  br label %208, !dbg !859

208:                                              ; preds = %198
  br label %209, !dbg !860

209:                                              ; preds = %208
  br label %210, !dbg !860

210:                                              ; preds = %209
  %211 = load i32, ptr %33, align 4, !dbg !862
  store i32 %211, ptr %17, align 4, !dbg !863
  store i32 1, ptr %27, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %33) #7, !dbg !864
  br label %212

212:                                              ; preds = %210, %arch_irq_unlock.exit1, %arch_irq_unlock.exit, %120, %101
  call void @llvm.lifetime.end.p0(i64 4, ptr %24) #7, !dbg !864
  call void @llvm.lifetime.end.p0(i64 4, ptr %23) #7, !dbg !864
  call void @llvm.lifetime.end.p0(i64 4, ptr %22) #7, !dbg !864
  call void @llvm.lifetime.end.p0(i64 4, ptr %21) #7, !dbg !864
  %213 = load i32, ptr %17, align 4, !dbg !864
  ret i32 %213, !dbg !864
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind optsize
define hidden void @k_mbox_async_put(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 !dbg !865 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca %struct.k_timeout_t, align 8
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !869, metadata !DIExpression()), !dbg !873
  store ptr %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !870, metadata !DIExpression()), !dbg !874
  store ptr %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !871, metadata !DIExpression()), !dbg !875
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #7, !dbg !876
  call void @llvm.dbg.declare(metadata ptr %7, metadata !872, metadata !DIExpression()), !dbg !877
  br label %9, !dbg !878

9:                                                ; preds = %3
  br label %10, !dbg !879

10:                                               ; preds = %9
  br label %11, !dbg !879

11:                                               ; preds = %10
  call void @mbox_async_alloc(ptr noundef %7) #6, !dbg !881
  %12 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !882
  %13 = getelementptr inbounds %struct.k_thread, ptr %12, i32 0, i32 0, !dbg !883
  %14 = getelementptr inbounds %struct._thread_base, ptr %13, i32 0, i32 4, !dbg !884
  %15 = getelementptr inbounds %struct.anon, ptr %14, i32 0, i32 0, !dbg !884
  %16 = load i8, ptr %15, align 2, !dbg !884
  %17 = load ptr, ptr %7, align 4, !dbg !885
  %18 = getelementptr inbounds %struct.k_mbox_async, ptr %17, i32 0, i32 0, !dbg !886
  %19 = getelementptr inbounds %struct._thread_base, ptr %18, i32 0, i32 4, !dbg !887
  %20 = getelementptr inbounds %struct.anon, ptr %19, i32 0, i32 0, !dbg !887
  store i8 %16, ptr %20, align 2, !dbg !888
  %21 = load ptr, ptr %7, align 4, !dbg !889
  %22 = getelementptr inbounds %struct.k_mbox_async, ptr %21, i32 0, i32 1, !dbg !890
  %23 = load ptr, ptr %5, align 4, !dbg !891
  call void @llvm.memcpy.p0.p0.i32(ptr align 8 %22, ptr align 4 %23, i32 44, i1 false), !dbg !892
  %24 = load ptr, ptr %7, align 4, !dbg !893
  %25 = getelementptr inbounds %struct.k_mbox_async, ptr %24, i32 0, i32 0, !dbg !894
  %26 = load ptr, ptr %7, align 4, !dbg !895
  %27 = getelementptr inbounds %struct.k_mbox_async, ptr %26, i32 0, i32 1, !dbg !896
  %28 = getelementptr inbounds %struct.k_mbox_msg, ptr %27, i32 0, i32 8, !dbg !897
  store ptr %25, ptr %28, align 4, !dbg !898
  %29 = load ptr, ptr %6, align 4, !dbg !899
  %30 = load ptr, ptr %7, align 4, !dbg !900
  %31 = getelementptr inbounds %struct.k_mbox_async, ptr %30, i32 0, i32 1, !dbg !901
  %32 = getelementptr inbounds %struct.k_mbox_msg, ptr %31, i32 0, i32 9, !dbg !902
  store ptr %29, ptr %32, align 8, !dbg !903
  %33 = load ptr, ptr %4, align 4, !dbg !904
  %34 = load ptr, ptr %7, align 4, !dbg !905
  %35 = getelementptr inbounds %struct.k_mbox_async, ptr %34, i32 0, i32 1, !dbg !906
  %36 = getelementptr inbounds %struct.k_timeout_t, ptr %8, i32 0, i32 0, !dbg !907
  store i64 -1, ptr %36, align 8, !dbg !907
  %37 = getelementptr inbounds %struct.k_timeout_t, ptr %8, i32 0, i32 0, !dbg !908
  %38 = load [1 x i64], ptr %37, align 8, !dbg !908
  %39 = call i32 @mbox_message_put(ptr noundef %33, ptr noundef %35, [1 x i64] %38) #6, !dbg !908
  br label %40, !dbg !909

40:                                               ; preds = %11
  br label %41, !dbg !910

41:                                               ; preds = %40
  br label %42, !dbg !910

42:                                               ; preds = %41
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #7, !dbg !912
  ret void, !dbg !912
}

; Function Attrs: inlinehint nounwind optsize
define internal void @mbox_async_alloc(ptr noundef %0) #0 !dbg !913 {
  %2 = alloca ptr, align 4
  %3 = alloca %struct.k_timeout_t, align 8
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !918, metadata !DIExpression()), !dbg !919
  %4 = load ptr, ptr %2, align 4, !dbg !920
  %5 = getelementptr inbounds %struct.k_timeout_t, ptr %3, i32 0, i32 0, !dbg !921
  store i64 -1, ptr %5, align 8, !dbg !921
  %6 = getelementptr inbounds %struct.k_timeout_t, ptr %3, i32 0, i32 0, !dbg !922
  %7 = load [1 x i64], ptr %6, align 8, !dbg !922
  %8 = call i32 @k_stack_pop(ptr noundef @async_msg_free, ptr noundef %4, [1 x i64] %7) #6, !dbg !922
  ret void, !dbg !923
}

; Function Attrs: nounwind optsize
define hidden void @k_mbox_data_get(ptr noundef %0, ptr noundef %1) #1 !dbg !924 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !928, metadata !DIExpression()), !dbg !930
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !929, metadata !DIExpression()), !dbg !931
  %5 = load ptr, ptr %4, align 4, !dbg !932
  %6 = icmp eq ptr %5, null, !dbg !934
  br i1 %6, label %7, label %11, !dbg !935

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 4, !dbg !936
  %9 = getelementptr inbounds %struct.k_mbox_msg, ptr %8, i32 0, i32 1, !dbg !938
  store i32 0, ptr %9, align 4, !dbg !939
  %10 = load ptr, ptr %3, align 4, !dbg !940
  call void @mbox_message_dispose(ptr noundef %10) #6, !dbg !941
  br label %31, !dbg !942

11:                                               ; preds = %2
  %12 = load ptr, ptr %3, align 4, !dbg !943
  %13 = getelementptr inbounds %struct.k_mbox_msg, ptr %12, i32 0, i32 3, !dbg !945
  %14 = load ptr, ptr %13, align 4, !dbg !945
  %15 = icmp ne ptr %14, null, !dbg !946
  br i1 %15, label %16, label %29, !dbg !947

16:                                               ; preds = %11
  %17 = load ptr, ptr %3, align 4, !dbg !948
  %18 = getelementptr inbounds %struct.k_mbox_msg, ptr %17, i32 0, i32 1, !dbg !949
  %19 = load i32, ptr %18, align 4, !dbg !949
  %20 = icmp ugt i32 %19, 0, !dbg !950
  br i1 %20, label %21, label %29, !dbg !951

21:                                               ; preds = %16
  %22 = load ptr, ptr %4, align 4, !dbg !952
  %23 = load ptr, ptr %3, align 4, !dbg !954
  %24 = getelementptr inbounds %struct.k_mbox_msg, ptr %23, i32 0, i32 3, !dbg !955
  %25 = load ptr, ptr %24, align 4, !dbg !955
  %26 = load ptr, ptr %3, align 4, !dbg !956
  %27 = getelementptr inbounds %struct.k_mbox_msg, ptr %26, i32 0, i32 1, !dbg !957
  %28 = load i32, ptr %27, align 4, !dbg !957
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %22, ptr align 1 %25, i32 %28, i1 false), !dbg !958
  br label %29, !dbg !959

29:                                               ; preds = %21, %16, %11
  %30 = load ptr, ptr %3, align 4, !dbg !960
  call void @mbox_message_dispose(ptr noundef %30) #6, !dbg !961
  br label %31, !dbg !962

31:                                               ; preds = %29, %7
  ret void, !dbg !962
}

; Function Attrs: nounwind optsize
define internal void @mbox_message_dispose(ptr noundef %0) #1 !dbg !963 {
  %2 = alloca ptr, align 4
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !967, metadata !DIExpression()), !dbg !973
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #7, !dbg !974
  call void @llvm.dbg.declare(metadata ptr %5, metadata !968, metadata !DIExpression()), !dbg !975
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #7, !dbg !976
  call void @llvm.dbg.declare(metadata ptr %6, metadata !969, metadata !DIExpression()), !dbg !977
  %9 = load ptr, ptr %4, align 4, !dbg !978
  %10 = getelementptr inbounds %struct.k_mbox_msg, ptr %9, i32 0, i32 8, !dbg !980
  %11 = load ptr, ptr %10, align 4, !dbg !980
  %12 = icmp eq ptr %11, null, !dbg !981
  br i1 %12, label %13, label %14, !dbg !982

13:                                               ; preds = %1
  store i32 1, ptr %7, align 4
  br label %64, !dbg !983

14:                                               ; preds = %1
  %15 = load ptr, ptr %4, align 4, !dbg !985
  %16 = getelementptr inbounds %struct.k_mbox_msg, ptr %15, i32 0, i32 5, !dbg !987
  %17 = getelementptr inbounds %struct.k_mem_block, ptr %16, i32 0, i32 0, !dbg !988
  %18 = load ptr, ptr %17, align 4, !dbg !988
  %19 = icmp ne ptr %18, null, !dbg !989
  br i1 %19, label %20, label %24, !dbg !990

20:                                               ; preds = %14
  %21 = load ptr, ptr %4, align 4, !dbg !991
  %22 = getelementptr inbounds %struct.k_mbox_msg, ptr %21, i32 0, i32 5, !dbg !993
  %23 = getelementptr inbounds %struct.k_mem_block, ptr %22, i32 0, i32 0, !dbg !994
  store ptr null, ptr %23, align 4, !dbg !995
  br label %24, !dbg !996

24:                                               ; preds = %20, %14
  %25 = load ptr, ptr %4, align 4, !dbg !997
  %26 = getelementptr inbounds %struct.k_mbox_msg, ptr %25, i32 0, i32 8, !dbg !998
  %27 = load ptr, ptr %26, align 4, !dbg !998
  store ptr %27, ptr %5, align 4, !dbg !999
  %28 = load ptr, ptr %4, align 4, !dbg !1000
  %29 = getelementptr inbounds %struct.k_mbox_msg, ptr %28, i32 0, i32 8, !dbg !1001
  store ptr null, ptr %29, align 4, !dbg !1002
  %30 = load ptr, ptr %5, align 4, !dbg !1003
  %31 = getelementptr inbounds %struct.k_thread, ptr %30, i32 0, i32 0, !dbg !1004
  %32 = getelementptr inbounds %struct._thread_base, ptr %31, i32 0, i32 6, !dbg !1005
  %33 = load ptr, ptr %32, align 4, !dbg !1005
  store ptr %33, ptr %6, align 4, !dbg !1006
  %34 = load ptr, ptr %4, align 4, !dbg !1007
  %35 = getelementptr inbounds %struct.k_mbox_msg, ptr %34, i32 0, i32 1, !dbg !1008
  %36 = load i32, ptr %35, align 4, !dbg !1008
  %37 = load ptr, ptr %6, align 4, !dbg !1009
  %38 = getelementptr inbounds %struct.k_mbox_msg, ptr %37, i32 0, i32 1, !dbg !1010
  store i32 %36, ptr %38, align 4, !dbg !1011
  %39 = load ptr, ptr %5, align 4, !dbg !1012
  %40 = getelementptr inbounds %struct.k_thread, ptr %39, i32 0, i32 0, !dbg !1013
  %41 = getelementptr inbounds %struct._thread_base, ptr %40, i32 0, i32 3, !dbg !1014
  %42 = load i8, ptr %41, align 1, !dbg !1014
  %43 = zext i8 %42 to i32, !dbg !1012
  %44 = and i32 %43, 1, !dbg !1015
  %45 = icmp ne i32 %44, 0, !dbg !1016
  br i1 %45, label %46, label %56, !dbg !1017

46:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #7, !dbg !1018
  call void @llvm.dbg.declare(metadata ptr %8, metadata !970, metadata !DIExpression()), !dbg !1019
  %47 = load ptr, ptr %6, align 4, !dbg !1020
  %48 = getelementptr inbounds %struct.k_mbox_msg, ptr %47, i32 0, i32 9, !dbg !1021
  %49 = load ptr, ptr %48, align 4, !dbg !1021
  store ptr %49, ptr %8, align 4, !dbg !1019
  %50 = load ptr, ptr %5, align 4, !dbg !1022
  call void @mbox_async_free(ptr noundef %50) #6, !dbg !1023
  %51 = load ptr, ptr %8, align 4, !dbg !1024
  %52 = icmp ne ptr %51, null, !dbg !1026
  br i1 %52, label %53, label %55, !dbg !1027

53:                                               ; preds = %46
  %54 = load ptr, ptr %8, align 4, !dbg !1028
  call void @k_sem_give(ptr noundef %54) #6, !dbg !1030
  br label %55, !dbg !1031

55:                                               ; preds = %53, %46
  store i32 1, ptr %7, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #7, !dbg !1032
  br label %64

56:                                               ; preds = %24
  %57 = load ptr, ptr %5, align 4, !dbg !1033
  store ptr %57, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !707, metadata !DIExpression()), !dbg !1034
  store i32 0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !713, metadata !DIExpression()), !dbg !1036
  %58 = load i32, ptr %3, align 4, !dbg !1037
  %59 = load ptr, ptr %2, align 4, !dbg !1038
  %60 = getelementptr inbounds %struct.k_thread, ptr %59, i32 0, i32 6, !dbg !1039
  %61 = getelementptr inbounds %struct._thread_arch, ptr %60, i32 0, i32 1, !dbg !1040
  store i32 %58, ptr %61, align 4, !dbg !1041
  %62 = load ptr, ptr %5, align 4, !dbg !1042
  call void @z_mark_thread_as_not_pending(ptr noundef %62) #6, !dbg !1043
  %63 = load ptr, ptr %5, align 4, !dbg !1044
  call void @z_ready_thread(ptr noundef %63) #6, !dbg !1045
  call void @z_reschedule_unlocked() #6, !dbg !1046
  store i32 0, ptr %7, align 4, !dbg !1047
  br label %64, !dbg !1047

64:                                               ; preds = %56, %55, %13
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #7, !dbg !1047
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #7, !dbg !1047
  %65 = load i32, ptr %7, align 4
  switch i32 %65, label %67 [
    i32 0, label %66
    i32 1, label %66
  ]

66:                                               ; preds = %64, %64
  ret void, !dbg !1047

67:                                               ; preds = %64
  unreachable
}

; Function Attrs: nounwind optsize
define hidden i32 @k_mbox_get(ptr noundef %0, ptr noundef %1, ptr noundef %2, [1 x i64] %3) #1 !dbg !1048 {
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
  %27 = alloca i32, align 4
  %28 = alloca ptr, align 4
  %29 = alloca %struct.k_timeout_t, align 8
  %30 = getelementptr inbounds %struct.k_timeout_t, ptr %17, i32 0, i32 0
  store [1 x i64] %3, ptr %30, align 8
  store ptr %0, ptr %18, align 4
  call void @llvm.dbg.declare(metadata ptr %18, metadata !1052, metadata !DIExpression()), !dbg !1060
  store ptr %1, ptr %19, align 4
  call void @llvm.dbg.declare(metadata ptr %19, metadata !1053, metadata !DIExpression()), !dbg !1061
  store ptr %2, ptr %20, align 4
  call void @llvm.dbg.declare(metadata ptr %20, metadata !1054, metadata !DIExpression()), !dbg !1062
  call void @llvm.dbg.declare(metadata ptr %17, metadata !1055, metadata !DIExpression()), !dbg !1063
  call void @llvm.lifetime.start.p0(i64 4, ptr %21) #7, !dbg !1064
  call void @llvm.dbg.declare(metadata ptr %21, metadata !1056, metadata !DIExpression()), !dbg !1065
  call void @llvm.lifetime.start.p0(i64 4, ptr %22) #7, !dbg !1066
  call void @llvm.dbg.declare(metadata ptr %22, metadata !1057, metadata !DIExpression()), !dbg !1067
  call void @llvm.lifetime.start.p0(i64 4, ptr %23) #7, !dbg !1068
  call void @llvm.dbg.declare(metadata ptr %23, metadata !1058, metadata !DIExpression()), !dbg !1069
  call void @llvm.lifetime.start.p0(i64 4, ptr %24) #7, !dbg !1070
  call void @llvm.dbg.declare(metadata ptr %24, metadata !1059, metadata !DIExpression()), !dbg !1071
  %31 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !1072
  %32 = load ptr, ptr %19, align 4, !dbg !1073
  %33 = getelementptr inbounds %struct.k_mbox_msg, ptr %32, i32 0, i32 7, !dbg !1074
  store ptr %31, ptr %33, align 4, !dbg !1075
  call void @llvm.lifetime.start.p0(i64 4, ptr %25) #7, !dbg !1076
  %34 = load ptr, ptr %18, align 4, !dbg !1077
  %35 = getelementptr inbounds %struct.k_mbox, ptr %34, i32 0, i32 2, !dbg !1078
  store ptr %35, ptr %15, align 4
  call void @llvm.dbg.declare(metadata ptr %15, metadata !631, metadata !DIExpression()), !dbg !1079
  %36 = load ptr, ptr %15, align 4, !dbg !1081
  call void @llvm.dbg.declare(metadata ptr %14, metadata !637, metadata !DIExpression()), !dbg !1082
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #7, !dbg !1083
  call void @llvm.dbg.declare(metadata ptr %9, metadata !648, metadata !DIExpression()), !dbg !1085
  %37 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #7, !dbg !1086, !srcloc !652
  store i32 %37, ptr %9, align 4, !dbg !1086
  %38 = load i32, ptr %9, align 4, !dbg !1087
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #7, !dbg !1088
  store i32 %38, ptr %14, align 4, !dbg !1089
  %39 = load ptr, ptr %15, align 4, !dbg !1090
  store ptr %39, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !657, metadata !DIExpression()), !dbg !1091
  %40 = load ptr, ptr %8, align 4, !dbg !1093
  %41 = load ptr, ptr %15, align 4, !dbg !1094
  store ptr %41, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !666, metadata !DIExpression()), !dbg !1095
  %42 = load ptr, ptr %7, align 4, !dbg !1097
  %43 = load i32, ptr %14, align 4, !dbg !1098
  %44 = getelementptr inbounds %struct.z_spinlock_key, ptr %25, i32 0, i32 0, !dbg !1076
  store i32 %43, ptr %44, align 4, !dbg !1076
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %23, ptr align 4 %25, i32 4, i1 false), !dbg !1076
  call void @llvm.lifetime.end.p0(i64 4, ptr %25) #7, !dbg !1076
  br label %45, !dbg !1099

45:                                               ; preds = %4
  br label %46, !dbg !1100

46:                                               ; preds = %45
  br label %47, !dbg !1100

47:                                               ; preds = %46
  %48 = load ptr, ptr %18, align 4, !dbg !1102
  %49 = getelementptr inbounds %struct.k_mbox, ptr %48, i32 0, i32 0, !dbg !1104
  %50 = getelementptr inbounds %struct._wait_q_t, ptr %49, i32 0, i32 0, !dbg !1105
  %51 = call ptr @sys_dlist_peek_head(ptr noundef %50) #6, !dbg !1106
  %52 = icmp ne ptr %51, null, !dbg !1107
  br i1 %52, label %53, label %60, !dbg !1108

53:                                               ; preds = %47
  %54 = load ptr, ptr %18, align 4, !dbg !1109
  %55 = getelementptr inbounds %struct.k_mbox, ptr %54, i32 0, i32 0, !dbg !1111
  %56 = getelementptr inbounds %struct._wait_q_t, ptr %55, i32 0, i32 0, !dbg !1112
  %57 = call ptr @sys_dlist_peek_head(ptr noundef %56) #6, !dbg !1113
  %58 = getelementptr inbounds i8, ptr %57, i32 0, !dbg !1114
  store ptr %58, ptr %26, align 4, !dbg !1115
  %59 = load ptr, ptr %26, align 4, !dbg !1116
  br label %61, !dbg !1108

60:                                               ; preds = %47
  br label %61, !dbg !1108

61:                                               ; preds = %60, %53
  %62 = phi ptr [ %59, %53 ], [ null, %60 ], !dbg !1108
  store ptr %62, ptr %21, align 4, !dbg !1117
  br label %63, !dbg !1118

63:                                               ; preds = %121, %61
  %64 = load ptr, ptr %21, align 4, !dbg !1119
  %65 = icmp ne ptr %64, null, !dbg !1121
  br i1 %65, label %66, label %123, !dbg !1122

66:                                               ; preds = %63
  %67 = load ptr, ptr %21, align 4, !dbg !1123
  %68 = getelementptr inbounds %struct.k_thread, ptr %67, i32 0, i32 0, !dbg !1125
  %69 = getelementptr inbounds %struct._thread_base, ptr %68, i32 0, i32 6, !dbg !1126
  %70 = load ptr, ptr %69, align 4, !dbg !1126
  store ptr %70, ptr %22, align 4, !dbg !1127
  %71 = load ptr, ptr %22, align 4, !dbg !1128
  %72 = load ptr, ptr %19, align 4, !dbg !1130
  %73 = call i32 @mbox_message_match(ptr noundef %71, ptr noundef %72) #6, !dbg !1131
  %74 = icmp eq i32 %73, 0, !dbg !1132
  br i1 %74, label %75, label %94, !dbg !1133

75:                                               ; preds = %66
  %76 = load ptr, ptr %21, align 4, !dbg !1134
  call void @z_unpend_thread(ptr noundef %76) #6, !dbg !1136
  %77 = load ptr, ptr %18, align 4, !dbg !1137
  %78 = getelementptr inbounds %struct.k_mbox, ptr %77, i32 0, i32 2, !dbg !1138
  %79 = getelementptr inbounds %struct.z_spinlock_key, ptr %23, i32 0, i32 0, !dbg !1139
  %80 = load [1 x i32], ptr %79, align 4, !dbg !1139
  store [1 x i32] %80, ptr %10, align 4
  store ptr %78, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !791, metadata !DIExpression()), !dbg !1140
  call void @llvm.dbg.declare(metadata ptr %10, metadata !796, metadata !DIExpression()), !dbg !1142
  %81 = load ptr, ptr %11, align 4, !dbg !1143
  %82 = load i32, ptr %10, align 4, !dbg !1144
  store i32 %82, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !802, metadata !DIExpression()), !dbg !1145
  %83 = load i32, ptr %6, align 4, !dbg !1147
  %84 = icmp ne i32 %83, 0, !dbg !1148
  br i1 %84, label %85, label %86, !dbg !1149

85:                                               ; preds = %75
  br label %arch_irq_unlock.exit, !dbg !1150

86:                                               ; preds = %75
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #7, !dbg !1151, !srcloc !816
  br label %arch_irq_unlock.exit, !dbg !1152

arch_irq_unlock.exit:                             ; preds = %85, %86
  %87 = load ptr, ptr %19, align 4, !dbg !1153
  %88 = load ptr, ptr %20, align 4, !dbg !1154
  %89 = call i32 @mbox_message_data_check(ptr noundef %87, ptr noundef %88) #6, !dbg !1155
  store i32 %89, ptr %24, align 4, !dbg !1156
  br label %90, !dbg !1157

90:                                               ; preds = %arch_irq_unlock.exit
  br label %91, !dbg !1158

91:                                               ; preds = %90
  br label %92, !dbg !1158

92:                                               ; preds = %91
  %93 = load i32, ptr %24, align 4, !dbg !1160
  store i32 %93, ptr %16, align 4, !dbg !1161
  store i32 1, ptr %27, align 4
  br label %170, !dbg !1161

94:                                               ; preds = %66
  br label %95, !dbg !1162

95:                                               ; preds = %94
  %96 = load ptr, ptr %21, align 4, !dbg !1163
  %97 = icmp ne ptr %96, null, !dbg !1164
  br i1 %97, label %98, label %120, !dbg !1165

98:                                               ; preds = %95
  %99 = load ptr, ptr %18, align 4, !dbg !1166
  %100 = getelementptr inbounds %struct.k_mbox, ptr %99, i32 0, i32 0, !dbg !1167
  %101 = getelementptr inbounds %struct._wait_q_t, ptr %100, i32 0, i32 0, !dbg !1168
  %102 = load ptr, ptr %21, align 4, !dbg !1169
  %103 = getelementptr inbounds %struct.k_thread, ptr %102, i32 0, i32 0, !dbg !1170
  %104 = getelementptr inbounds %struct._thread_base, ptr %103, i32 0, i32 0, !dbg !1171
  %105 = call ptr @sys_dlist_peek_next(ptr noundef %101, ptr noundef %104) #6, !dbg !1172
  %106 = icmp ne ptr %105, null, !dbg !1173
  br i1 %106, label %107, label %117, !dbg !1174

107:                                              ; preds = %98
  %108 = load ptr, ptr %18, align 4, !dbg !1175
  %109 = getelementptr inbounds %struct.k_mbox, ptr %108, i32 0, i32 0, !dbg !1177
  %110 = getelementptr inbounds %struct._wait_q_t, ptr %109, i32 0, i32 0, !dbg !1178
  %111 = load ptr, ptr %21, align 4, !dbg !1179
  %112 = getelementptr inbounds %struct.k_thread, ptr %111, i32 0, i32 0, !dbg !1180
  %113 = getelementptr inbounds %struct._thread_base, ptr %112, i32 0, i32 0, !dbg !1181
  %114 = call ptr @sys_dlist_peek_next(ptr noundef %110, ptr noundef %113) #6, !dbg !1182
  %115 = getelementptr inbounds i8, ptr %114, i32 0, !dbg !1183
  store ptr %115, ptr %28, align 4, !dbg !1184
  %116 = load ptr, ptr %28, align 4, !dbg !1185
  br label %118, !dbg !1174

117:                                              ; preds = %98
  br label %118, !dbg !1174

118:                                              ; preds = %117, %107
  %119 = phi ptr [ %116, %107 ], [ null, %117 ], !dbg !1174
  br label %121, !dbg !1165

120:                                              ; preds = %95
  br label %121, !dbg !1165

121:                                              ; preds = %120, %118
  %122 = phi ptr [ %119, %118 ], [ null, %120 ], !dbg !1165
  store ptr %122, ptr %21, align 4, !dbg !1186
  br label %63, !dbg !1187, !llvm.loop !1188

123:                                              ; preds = %63
  %124 = getelementptr inbounds %struct.k_timeout_t, ptr %17, i32 0, i32 0, !dbg !1190
  %125 = load i64, ptr %124, align 8, !dbg !1190
  %126 = getelementptr inbounds %struct.k_timeout_t, ptr %29, i32 0, i32 0, !dbg !1192
  store i64 0, ptr %126, align 8, !dbg !1192
  %127 = icmp eq i64 %125, 0, !dbg !1193
  br i1 %127, label %128, label %142, !dbg !1194

128:                                              ; preds = %123
  br label %129, !dbg !1195

129:                                              ; preds = %128
  br label %130, !dbg !1197

130:                                              ; preds = %129
  br label %131, !dbg !1197

131:                                              ; preds = %130
  %132 = load ptr, ptr %18, align 4, !dbg !1199
  %133 = getelementptr inbounds %struct.k_mbox, ptr %132, i32 0, i32 2, !dbg !1200
  %134 = getelementptr inbounds %struct.z_spinlock_key, ptr %23, i32 0, i32 0, !dbg !1201
  %135 = load [1 x i32], ptr %134, align 4, !dbg !1201
  store [1 x i32] %135, ptr %12, align 4
  store ptr %133, ptr %13, align 4
  call void @llvm.dbg.declare(metadata ptr %13, metadata !791, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.declare(metadata ptr %12, metadata !796, metadata !DIExpression()), !dbg !1204
  %136 = load ptr, ptr %13, align 4, !dbg !1205
  %137 = load i32, ptr %12, align 4, !dbg !1206
  store i32 %137, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !802, metadata !DIExpression()), !dbg !1207
  %138 = load i32, ptr %5, align 4, !dbg !1209
  %139 = icmp ne i32 %138, 0, !dbg !1210
  br i1 %139, label %140, label %141, !dbg !1211

140:                                              ; preds = %131
  br label %arch_irq_unlock.exit1, !dbg !1212

141:                                              ; preds = %131
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #7, !dbg !1213, !srcloc !816
  br label %arch_irq_unlock.exit1, !dbg !1214

arch_irq_unlock.exit1:                            ; preds = %140, %141
  store i32 -35, ptr %16, align 4, !dbg !1215
  store i32 1, ptr %27, align 4
  br label %170, !dbg !1215

142:                                              ; preds = %123
  br label %143, !dbg !1216

143:                                              ; preds = %142
  br label %144, !dbg !1217

144:                                              ; preds = %143
  br label %145, !dbg !1217

145:                                              ; preds = %144
  %146 = load ptr, ptr %19, align 4, !dbg !1219
  %147 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !1220
  %148 = getelementptr inbounds %struct.k_thread, ptr %147, i32 0, i32 0, !dbg !1221
  %149 = getelementptr inbounds %struct._thread_base, ptr %148, i32 0, i32 6, !dbg !1222
  store ptr %146, ptr %149, align 4, !dbg !1223
  %150 = load ptr, ptr %18, align 4, !dbg !1224
  %151 = getelementptr inbounds %struct.k_mbox, ptr %150, i32 0, i32 2, !dbg !1225
  %152 = load ptr, ptr %18, align 4, !dbg !1226
  %153 = getelementptr inbounds %struct.k_mbox, ptr %152, i32 0, i32 1, !dbg !1227
  %154 = getelementptr inbounds %struct.z_spinlock_key, ptr %23, i32 0, i32 0, !dbg !1228
  %155 = load [1 x i32], ptr %154, align 4, !dbg !1228
  %156 = getelementptr inbounds %struct.k_timeout_t, ptr %17, i32 0, i32 0, !dbg !1228
  %157 = load [1 x i64], ptr %156, align 8, !dbg !1228
  %158 = call i32 @z_pend_curr(ptr noundef %151, [1 x i32] %155, ptr noundef %153, [1 x i64] %157) #6, !dbg !1228
  store i32 %158, ptr %24, align 4, !dbg !1229
  %159 = load i32, ptr %24, align 4, !dbg !1230
  %160 = icmp eq i32 %159, 0, !dbg !1232
  br i1 %160, label %161, label %165, !dbg !1233

161:                                              ; preds = %145
  %162 = load ptr, ptr %19, align 4, !dbg !1234
  %163 = load ptr, ptr %20, align 4, !dbg !1236
  %164 = call i32 @mbox_message_data_check(ptr noundef %162, ptr noundef %163) #6, !dbg !1237
  store i32 %164, ptr %24, align 4, !dbg !1238
  br label %165, !dbg !1239

165:                                              ; preds = %161, %145
  br label %166, !dbg !1240

166:                                              ; preds = %165
  br label %167, !dbg !1241

167:                                              ; preds = %166
  br label %168, !dbg !1241

168:                                              ; preds = %167
  %169 = load i32, ptr %24, align 4, !dbg !1243
  store i32 %169, ptr %16, align 4, !dbg !1244
  store i32 1, ptr %27, align 4
  br label %170, !dbg !1244

170:                                              ; preds = %168, %arch_irq_unlock.exit1, %92
  call void @llvm.lifetime.end.p0(i64 4, ptr %24) #7, !dbg !1245
  call void @llvm.lifetime.end.p0(i64 4, ptr %23) #7, !dbg !1245
  call void @llvm.lifetime.end.p0(i64 4, ptr %22) #7, !dbg !1245
  call void @llvm.lifetime.end.p0(i64 4, ptr %21) #7, !dbg !1245
  %171 = load i32, ptr %16, align 4, !dbg !1245
  ret i32 %171, !dbg !1245
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @sys_dlist_peek_head(ptr noundef %0) #0 !dbg !1246 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1251, metadata !DIExpression()), !dbg !1252
  %3 = load ptr, ptr %2, align 4, !dbg !1253
  %4 = call zeroext i1 @sys_dlist_is_empty(ptr noundef %3) #6, !dbg !1254
  br i1 %4, label %5, label %6, !dbg !1254

5:                                                ; preds = %1
  br label %10, !dbg !1254

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 4, !dbg !1255
  %8 = getelementptr inbounds %struct._dnode, ptr %7, i32 0, i32 0, !dbg !1256
  %9 = load ptr, ptr %8, align 4, !dbg !1256
  br label %10, !dbg !1254

10:                                               ; preds = %6, %5
  %11 = phi ptr [ null, %5 ], [ %9, %6 ], !dbg !1254
  ret ptr %11, !dbg !1257
}

; Function Attrs: nounwind optsize
define internal i32 @mbox_message_match(ptr noundef %0, ptr noundef %1) #1 !dbg !1258 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1262, metadata !DIExpression()), !dbg !1265
  store ptr %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1263, metadata !DIExpression()), !dbg !1266
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #7, !dbg !1267
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1264, metadata !DIExpression()), !dbg !1268
  %8 = load ptr, ptr %4, align 4, !dbg !1269
  %9 = getelementptr inbounds %struct.k_mbox_msg, ptr %8, i32 0, i32 7, !dbg !1271
  %10 = load ptr, ptr %9, align 4, !dbg !1271
  %11 = icmp eq ptr %10, null, !dbg !1272
  br i1 %11, label %20, label %12, !dbg !1273

12:                                               ; preds = %2
  %13 = load ptr, ptr %4, align 4, !dbg !1274
  %14 = getelementptr inbounds %struct.k_mbox_msg, ptr %13, i32 0, i32 7, !dbg !1275
  %15 = load ptr, ptr %14, align 4, !dbg !1275
  %16 = load ptr, ptr %5, align 4, !dbg !1276
  %17 = getelementptr inbounds %struct.k_mbox_msg, ptr %16, i32 0, i32 7, !dbg !1277
  %18 = load ptr, ptr %17, align 4, !dbg !1277
  %19 = icmp eq ptr %15, %18, !dbg !1278
  br i1 %19, label %20, label %107, !dbg !1279

20:                                               ; preds = %12, %2
  %21 = load ptr, ptr %5, align 4, !dbg !1280
  %22 = getelementptr inbounds %struct.k_mbox_msg, ptr %21, i32 0, i32 6, !dbg !1281
  %23 = load ptr, ptr %22, align 4, !dbg !1281
  %24 = icmp eq ptr %23, null, !dbg !1282
  br i1 %24, label %33, label %25, !dbg !1283

25:                                               ; preds = %20
  %26 = load ptr, ptr %5, align 4, !dbg !1284
  %27 = getelementptr inbounds %struct.k_mbox_msg, ptr %26, i32 0, i32 6, !dbg !1285
  %28 = load ptr, ptr %27, align 4, !dbg !1285
  %29 = load ptr, ptr %4, align 4, !dbg !1286
  %30 = getelementptr inbounds %struct.k_mbox_msg, ptr %29, i32 0, i32 6, !dbg !1287
  %31 = load ptr, ptr %30, align 4, !dbg !1287
  %32 = icmp eq ptr %28, %31, !dbg !1288
  br i1 %32, label %33, label %107, !dbg !1289

33:                                               ; preds = %25, %20
  %34 = load ptr, ptr %4, align 4, !dbg !1290
  %35 = getelementptr inbounds %struct.k_mbox_msg, ptr %34, i32 0, i32 6, !dbg !1292
  %36 = load ptr, ptr %35, align 4, !dbg !1292
  %37 = load ptr, ptr %5, align 4, !dbg !1293
  %38 = getelementptr inbounds %struct.k_mbox_msg, ptr %37, i32 0, i32 6, !dbg !1294
  store ptr %36, ptr %38, align 4, !dbg !1295
  %39 = load ptr, ptr %5, align 4, !dbg !1296
  %40 = getelementptr inbounds %struct.k_mbox_msg, ptr %39, i32 0, i32 7, !dbg !1297
  %41 = load ptr, ptr %40, align 4, !dbg !1297
  %42 = load ptr, ptr %4, align 4, !dbg !1298
  %43 = getelementptr inbounds %struct.k_mbox_msg, ptr %42, i32 0, i32 7, !dbg !1299
  store ptr %41, ptr %43, align 4, !dbg !1300
  %44 = load ptr, ptr %5, align 4, !dbg !1301
  %45 = getelementptr inbounds %struct.k_mbox_msg, ptr %44, i32 0, i32 2, !dbg !1302
  %46 = load i32, ptr %45, align 4, !dbg !1302
  store i32 %46, ptr %6, align 4, !dbg !1303
  %47 = load ptr, ptr %4, align 4, !dbg !1304
  %48 = getelementptr inbounds %struct.k_mbox_msg, ptr %47, i32 0, i32 2, !dbg !1305
  %49 = load i32, ptr %48, align 4, !dbg !1305
  %50 = load ptr, ptr %5, align 4, !dbg !1306
  %51 = getelementptr inbounds %struct.k_mbox_msg, ptr %50, i32 0, i32 2, !dbg !1307
  store i32 %49, ptr %51, align 4, !dbg !1308
  %52 = load i32, ptr %6, align 4, !dbg !1309
  %53 = load ptr, ptr %4, align 4, !dbg !1310
  %54 = getelementptr inbounds %struct.k_mbox_msg, ptr %53, i32 0, i32 2, !dbg !1311
  store i32 %52, ptr %54, align 4, !dbg !1312
  %55 = load ptr, ptr %5, align 4, !dbg !1313
  %56 = getelementptr inbounds %struct.k_mbox_msg, ptr %55, i32 0, i32 1, !dbg !1315
  %57 = load i32, ptr %56, align 4, !dbg !1315
  %58 = load ptr, ptr %4, align 4, !dbg !1316
  %59 = getelementptr inbounds %struct.k_mbox_msg, ptr %58, i32 0, i32 1, !dbg !1317
  %60 = load i32, ptr %59, align 4, !dbg !1317
  %61 = icmp ugt i32 %57, %60, !dbg !1318
  br i1 %61, label %62, label %68, !dbg !1319

62:                                               ; preds = %33
  %63 = load ptr, ptr %4, align 4, !dbg !1320
  %64 = getelementptr inbounds %struct.k_mbox_msg, ptr %63, i32 0, i32 1, !dbg !1322
  %65 = load i32, ptr %64, align 4, !dbg !1322
  %66 = load ptr, ptr %5, align 4, !dbg !1323
  %67 = getelementptr inbounds %struct.k_mbox_msg, ptr %66, i32 0, i32 1, !dbg !1324
  store i32 %65, ptr %67, align 4, !dbg !1325
  br label %68, !dbg !1326

68:                                               ; preds = %62, %33
  %69 = load ptr, ptr %4, align 4, !dbg !1327
  %70 = getelementptr inbounds %struct.k_mbox_msg, ptr %69, i32 0, i32 3, !dbg !1328
  %71 = load ptr, ptr %70, align 4, !dbg !1328
  %72 = load ptr, ptr %5, align 4, !dbg !1329
  %73 = getelementptr inbounds %struct.k_mbox_msg, ptr %72, i32 0, i32 3, !dbg !1330
  store ptr %71, ptr %73, align 4, !dbg !1331
  %74 = load ptr, ptr %5, align 4, !dbg !1332
  %75 = getelementptr inbounds %struct.k_mbox_msg, ptr %74, i32 0, i32 5, !dbg !1333
  %76 = load ptr, ptr %4, align 4, !dbg !1334
  %77 = getelementptr inbounds %struct.k_mbox_msg, ptr %76, i32 0, i32 5, !dbg !1335
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %75, ptr align 4 %77, i32 8, i1 false), !dbg !1335
  %78 = load ptr, ptr %5, align 4, !dbg !1336
  %79 = getelementptr inbounds %struct.k_mbox_msg, ptr %78, i32 0, i32 3, !dbg !1338
  %80 = load ptr, ptr %79, align 4, !dbg !1338
  %81 = icmp ne ptr %80, null, !dbg !1339
  br i1 %81, label %82, label %86, !dbg !1340

82:                                               ; preds = %68
  %83 = load ptr, ptr %5, align 4, !dbg !1341
  %84 = getelementptr inbounds %struct.k_mbox_msg, ptr %83, i32 0, i32 5, !dbg !1343
  %85 = getelementptr inbounds %struct.k_mem_block, ptr %84, i32 0, i32 0, !dbg !1344
  store ptr null, ptr %85, align 4, !dbg !1345
  br label %101, !dbg !1346

86:                                               ; preds = %68
  %87 = load ptr, ptr %5, align 4, !dbg !1347
  %88 = getelementptr inbounds %struct.k_mbox_msg, ptr %87, i32 0, i32 5, !dbg !1349
  %89 = getelementptr inbounds %struct.k_mem_block, ptr %88, i32 0, i32 0, !dbg !1350
  %90 = load ptr, ptr %89, align 4, !dbg !1350
  %91 = icmp ne ptr %90, null, !dbg !1351
  br i1 %91, label %92, label %99, !dbg !1352

92:                                               ; preds = %86
  %93 = load ptr, ptr %5, align 4, !dbg !1353
  %94 = getelementptr inbounds %struct.k_mbox_msg, ptr %93, i32 0, i32 5, !dbg !1355
  %95 = getelementptr inbounds %struct.k_mem_block, ptr %94, i32 0, i32 0, !dbg !1356
  %96 = load ptr, ptr %95, align 4, !dbg !1356
  %97 = load ptr, ptr %5, align 4, !dbg !1357
  %98 = getelementptr inbounds %struct.k_mbox_msg, ptr %97, i32 0, i32 3, !dbg !1358
  store ptr %96, ptr %98, align 4, !dbg !1359
  br label %100, !dbg !1360

99:                                               ; preds = %86
  br label %100

100:                                              ; preds = %99, %92
  br label %101

101:                                              ; preds = %100, %82
  %102 = load ptr, ptr %4, align 4, !dbg !1361
  %103 = getelementptr inbounds %struct.k_mbox_msg, ptr %102, i32 0, i32 8, !dbg !1362
  %104 = load ptr, ptr %103, align 4, !dbg !1362
  %105 = load ptr, ptr %5, align 4, !dbg !1363
  %106 = getelementptr inbounds %struct.k_mbox_msg, ptr %105, i32 0, i32 8, !dbg !1364
  store ptr %104, ptr %106, align 4, !dbg !1365
  store i32 0, ptr %3, align 4, !dbg !1366
  store i32 1, ptr %7, align 4
  br label %108, !dbg !1366

107:                                              ; preds = %25, %12
  store i32 -1, ptr %3, align 4, !dbg !1367
  store i32 1, ptr %7, align 4
  br label %108, !dbg !1367

108:                                              ; preds = %107, %101
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #7, !dbg !1368
  %109 = load i32, ptr %3, align 4, !dbg !1368
  ret i32 %109, !dbg !1368
}

; Function Attrs: optsize
declare !dbg !1369 dso_local void @z_unpend_thread(ptr noundef) #5

; Function Attrs: nounwind optsize
define internal i32 @mbox_message_data_check(ptr noundef %0, ptr noundef %1) #1 !dbg !1373 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1377, metadata !DIExpression()), !dbg !1379
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1378, metadata !DIExpression()), !dbg !1380
  %5 = load ptr, ptr %4, align 4, !dbg !1381
  %6 = icmp ne ptr %5, null, !dbg !1383
  br i1 %6, label %7, label %10, !dbg !1384

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 4, !dbg !1385
  %9 = load ptr, ptr %4, align 4, !dbg !1387
  call void @k_mbox_data_get(ptr noundef %8, ptr noundef %9) #6, !dbg !1388
  br label %19, !dbg !1389

10:                                               ; preds = %2
  %11 = load ptr, ptr %3, align 4, !dbg !1390
  %12 = getelementptr inbounds %struct.k_mbox_msg, ptr %11, i32 0, i32 1, !dbg !1392
  %13 = load i32, ptr %12, align 4, !dbg !1392
  %14 = icmp eq i32 %13, 0, !dbg !1393
  br i1 %14, label %15, label %17, !dbg !1394

15:                                               ; preds = %10
  %16 = load ptr, ptr %3, align 4, !dbg !1395
  call void @mbox_message_dispose(ptr noundef %16) #6, !dbg !1397
  br label %18, !dbg !1398

17:                                               ; preds = %10
  br label %18

18:                                               ; preds = %17, %15
  br label %19

19:                                               ; preds = %18, %7
  ret i32 0, !dbg !1399
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @sys_dlist_peek_next(ptr noundef %0, ptr noundef %1) #0 !dbg !1400 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1404, metadata !DIExpression()), !dbg !1406
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1405, metadata !DIExpression()), !dbg !1407
  %5 = load ptr, ptr %4, align 4, !dbg !1408
  %6 = icmp ne ptr %5, null, !dbg !1409
  br i1 %6, label %7, label %11, !dbg !1410

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 4, !dbg !1411
  %9 = load ptr, ptr %4, align 4, !dbg !1412
  %10 = call ptr @sys_dlist_peek_next_no_check(ptr noundef %8, ptr noundef %9) #6, !dbg !1413
  br label %12, !dbg !1410

11:                                               ; preds = %2
  br label %12, !dbg !1410

12:                                               ; preds = %11, %7
  %13 = phi ptr [ %10, %7 ], [ null, %11 ], !dbg !1410
  ret ptr %13, !dbg !1414
}

; Function Attrs: optsize
declare !dbg !1415 dso_local i32 @z_pend_curr(ptr noundef, [1 x i32], ptr noundef, [1 x i64]) #5

; Function Attrs: optsize
declare !dbg !1418 dso_local i64 @z_timeout_expires(ptr noundef) #5

; Function Attrs: optsize
declare !dbg !1423 dso_local i64 @z_timeout_remaining(ptr noundef) #5

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @sys_sflist_is_empty(ptr noundef %0) #0 !dbg !1424 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1430, metadata !DIExpression()), !dbg !1431
  %3 = load ptr, ptr %2, align 4, !dbg !1432
  %4 = call ptr @sys_sflist_peek_head(ptr noundef %3) #6, !dbg !1433
  %5 = icmp eq ptr %4, null, !dbg !1434
  ret i1 %5, !dbg !1435
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @sys_sflist_peek_head(ptr noundef %0) #0 !dbg !1436 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1440, metadata !DIExpression()), !dbg !1441
  %3 = load ptr, ptr %2, align 4, !dbg !1442
  %4 = getelementptr inbounds %struct._sflist, ptr %3, i32 0, i32 0, !dbg !1443
  %5 = load ptr, ptr %4, align 4, !dbg !1443
  ret ptr %5, !dbg !1444
}

; Function Attrs: optsize
declare !dbg !1445 dso_local void @z_init_thread_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #5

; Function Attrs: inlinehint nounwind optsize
define internal i32 @k_stack_push(ptr noundef %0, i32 noundef %1) #0 !dbg !1450 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1456, metadata !DIExpression()), !dbg !1458
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1457, metadata !DIExpression()), !dbg !1459
  br label %5, !dbg !1460

5:                                                ; preds = %2
  call void asm sideeffect "", "~{memory}"() #7, !dbg !1461, !srcloc !1463
  br label %6, !dbg !1464

6:                                                ; preds = %5
  %7 = load ptr, ptr %3, align 4, !dbg !1465
  %8 = load i32, ptr %4, align 4, !dbg !1466
  %9 = call i32 @z_impl_k_stack_push(ptr noundef %7, i32 noundef %8) #6, !dbg !1467
  ret i32 %9, !dbg !1468
}

; Function Attrs: optsize
declare !dbg !1469 dso_local i32 @z_impl_k_stack_push(ptr noundef, i32 noundef) #5

; Function Attrs: inlinehint nounwind optsize
define internal void @sys_dlist_init(ptr noundef %0) #0 !dbg !1470 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1474, metadata !DIExpression()), !dbg !1475
  %3 = load ptr, ptr %2, align 4, !dbg !1476
  %4 = load ptr, ptr %2, align 4, !dbg !1477
  %5 = getelementptr inbounds %struct._dnode, ptr %4, i32 0, i32 0, !dbg !1478
  store ptr %3, ptr %5, align 4, !dbg !1479
  %6 = load ptr, ptr %2, align 4, !dbg !1480
  %7 = load ptr, ptr %2, align 4, !dbg !1481
  %8 = getelementptr inbounds %struct._dnode, ptr %7, i32 0, i32 1, !dbg !1482
  store ptr %6, ptr %8, align 4, !dbg !1483
  ret void, !dbg !1484
}

; Function Attrs: optsize
declare !dbg !1485 dso_local void @z_ready_thread(ptr noundef) #5

; Function Attrs: optsize
declare !dbg !1486 dso_local void @z_reschedule(ptr noundef, [1 x i32]) #5

; Function Attrs: optsize
declare !dbg !1487 dso_local void @z_pend_thread(ptr noundef, ptr noundef, [1 x i64]) #5

; Function Attrs: inlinehint nounwind optsize
define internal i32 @k_stack_pop(ptr noundef %0, ptr noundef %1, [1 x i64] %2) #0 !dbg !1490 {
  %4 = alloca %struct.k_timeout_t, align 8
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = getelementptr inbounds %struct.k_timeout_t, ptr %4, i32 0, i32 0
  store [1 x i64] %2, ptr %7, align 8
  store ptr %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1494, metadata !DIExpression()), !dbg !1497
  store ptr %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1495, metadata !DIExpression()), !dbg !1498
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1496, metadata !DIExpression()), !dbg !1499
  br label %8, !dbg !1500

8:                                                ; preds = %3
  call void asm sideeffect "", "~{memory}"() #7, !dbg !1501, !srcloc !1503
  br label %9, !dbg !1504

9:                                                ; preds = %8
  %10 = load ptr, ptr %5, align 4, !dbg !1505
  %11 = load ptr, ptr %6, align 4, !dbg !1506
  %12 = getelementptr inbounds %struct.k_timeout_t, ptr %4, i32 0, i32 0, !dbg !1507
  %13 = load [1 x i64], ptr %12, align 8, !dbg !1507
  %14 = call i32 @z_impl_k_stack_pop(ptr noundef %10, ptr noundef %11, [1 x i64] %13) #6, !dbg !1507
  ret i32 %14, !dbg !1508
}

; Function Attrs: optsize
declare !dbg !1509 dso_local i32 @z_impl_k_stack_pop(ptr noundef, ptr noundef, [1 x i64]) #5

; Function Attrs: inlinehint nounwind optsize
define internal void @mbox_async_free(ptr noundef %0) #0 !dbg !1510 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1514, metadata !DIExpression()), !dbg !1515
  %3 = load ptr, ptr %2, align 4, !dbg !1516
  %4 = ptrtoint ptr %3 to i32, !dbg !1517
  %5 = call i32 @k_stack_push(ptr noundef @async_msg_free, i32 noundef %4) #6, !dbg !1518
  ret void, !dbg !1519
}

; Function Attrs: inlinehint nounwind optsize
define internal void @k_sem_give(ptr noundef %0) #0 !dbg !1520 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1524, metadata !DIExpression()), !dbg !1525
  br label %3, !dbg !1526

3:                                                ; preds = %1
  call void asm sideeffect "", "~{memory}"() #7, !dbg !1527, !srcloc !1529
  br label %4, !dbg !1530

4:                                                ; preds = %3
  %5 = load ptr, ptr %2, align 4, !dbg !1531
  call void @z_impl_k_sem_give(ptr noundef %5) #6, !dbg !1532
  ret void, !dbg !1533
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_mark_thread_as_not_pending(ptr noundef %0) #0 !dbg !1534 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1536, metadata !DIExpression()), !dbg !1537
  %3 = load ptr, ptr %2, align 4, !dbg !1538
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !1539
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 3, !dbg !1540
  %6 = load i8, ptr %5, align 1, !dbg !1541
  %7 = zext i8 %6 to i32, !dbg !1541
  %8 = and i32 %7, -3, !dbg !1541
  %9 = trunc i32 %8 to i8, !dbg !1541
  store i8 %9, ptr %5, align 1, !dbg !1541
  ret void, !dbg !1542
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_reschedule_unlocked() #0 !dbg !1543 {
  %1 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %1) #7, !dbg !1546
  call void @llvm.dbg.declare(metadata ptr %1, metadata !648, metadata !DIExpression()), !dbg !1548
  %2 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #7, !dbg !1549, !srcloc !652
  store i32 %2, ptr %1, align 4, !dbg !1549
  %3 = load i32, ptr %1, align 4, !dbg !1550
  call void @llvm.lifetime.end.p0(i64 4, ptr %1) #7, !dbg !1551
  call void @z_reschedule_irqlock(i32 noundef %3) #6, !dbg !1552
  ret void, !dbg !1553
}

; Function Attrs: optsize
declare !dbg !1554 dso_local void @z_impl_k_sem_give(ptr noundef) #5

; Function Attrs: optsize
declare !dbg !1555 dso_local void @z_reschedule_irqlock(i32 noundef) #5

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @sys_dlist_is_empty(ptr noundef %0) #0 !dbg !1558 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1562, metadata !DIExpression()), !dbg !1563
  %3 = load ptr, ptr %2, align 4, !dbg !1564
  %4 = getelementptr inbounds %struct._dnode, ptr %3, i32 0, i32 0, !dbg !1565
  %5 = load ptr, ptr %4, align 4, !dbg !1565
  %6 = load ptr, ptr %2, align 4, !dbg !1566
  %7 = icmp eq ptr %5, %6, !dbg !1567
  ret i1 %7, !dbg !1568
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @sys_dlist_peek_next_no_check(ptr noundef %0, ptr noundef %1) #0 !dbg !1569 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1571, metadata !DIExpression()), !dbg !1573
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1572, metadata !DIExpression()), !dbg !1574
  %5 = load ptr, ptr %4, align 4, !dbg !1575
  %6 = load ptr, ptr %3, align 4, !dbg !1576
  %7 = getelementptr inbounds %struct._dnode, ptr %6, i32 0, i32 1, !dbg !1577
  %8 = load ptr, ptr %7, align 4, !dbg !1577
  %9 = icmp eq ptr %5, %8, !dbg !1578
  br i1 %9, label %10, label %11, !dbg !1579

10:                                               ; preds = %2
  br label %15, !dbg !1579

11:                                               ; preds = %2
  %12 = load ptr, ptr %4, align 4, !dbg !1580
  %13 = getelementptr inbounds %struct._dnode, ptr %12, i32 0, i32 0, !dbg !1581
  %14 = load ptr, ptr %13, align 4, !dbg !1581
  br label %15, !dbg !1579

15:                                               ; preds = %11, %10
  %16 = phi ptr [ null, %10 ], [ %14, %11 ], !dbg !1579
  ret ptr %16, !dbg !1582
}

attributes #0 = { inlinehint nounwind optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { optsize }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!297, !298, !299, !300, !301, !302}
!llvm.ident = !{!303}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "async_msg_free", scope: !2, file: !252, line: 36, type: !289, isLocal: false, isDefinition: true, align: 32)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !88, globals: !256, splitDebugInlining: false, nameTableKind: None)
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
!27 = !DIEnumerator(name: "K_OBJ_DRIVER_RESET", value: 18)
!28 = !DIEnumerator(name: "K_OBJ_DRIVER_UART", value: 19)
!29 = !DIEnumerator(name: "K_OBJ_DRIVER_CRYPTO", value: 20)
!30 = !DIEnumerator(name: "K_OBJ_DRIVER_ADC", value: 21)
!31 = !DIEnumerator(name: "K_OBJ_DRIVER_AUXDISPLAY", value: 22)
!32 = !DIEnumerator(name: "K_OBJ_DRIVER_BBRAM", value: 23)
!33 = !DIEnumerator(name: "K_OBJ_DRIVER_CAN", value: 24)
!34 = !DIEnumerator(name: "K_OBJ_DRIVER_CHARGER", value: 25)
!35 = !DIEnumerator(name: "K_OBJ_DRIVER_COREDUMP", value: 26)
!36 = !DIEnumerator(name: "K_OBJ_DRIVER_COUNTER", value: 27)
!37 = !DIEnumerator(name: "K_OBJ_DRIVER_DAC", value: 28)
!38 = !DIEnumerator(name: "K_OBJ_DRIVER_DAI", value: 29)
!39 = !DIEnumerator(name: "K_OBJ_DRIVER_DMA", value: 30)
!40 = !DIEnumerator(name: "K_OBJ_DRIVER_EDAC", value: 31)
!41 = !DIEnumerator(name: "K_OBJ_DRIVER_EEPROM", value: 32)
!42 = !DIEnumerator(name: "K_OBJ_DRIVER_FUEL_GAUGE_EMUL", value: 33)
!43 = !DIEnumerator(name: "K_OBJ_DRIVER_EMUL_SENSOR_BACKEND_API", value: 34)
!44 = !DIEnumerator(name: "K_OBJ_DRIVER_ENTROPY", value: 35)
!45 = !DIEnumerator(name: "K_OBJ_DRIVER_ESPI", value: 36)
!46 = !DIEnumerator(name: "K_OBJ_DRIVER_ESPI_SAF", value: 37)
!47 = !DIEnumerator(name: "K_OBJ_DRIVER_FLASH", value: 38)
!48 = !DIEnumerator(name: "K_OBJ_DRIVER_FPGA", value: 39)
!49 = !DIEnumerator(name: "K_OBJ_DRIVER_FUEL_GAUGE", value: 40)
!50 = !DIEnumerator(name: "K_OBJ_DRIVER_HWSPINLOCK", value: 41)
!51 = !DIEnumerator(name: "K_OBJ_DRIVER_I2C", value: 42)
!52 = !DIEnumerator(name: "K_OBJ_DRIVER_I2S", value: 43)
!53 = !DIEnumerator(name: "K_OBJ_DRIVER_I3C", value: 44)
!54 = !DIEnumerator(name: "K_OBJ_DRIVER_IPM", value: 45)
!55 = !DIEnumerator(name: "K_OBJ_DRIVER_KSCAN", value: 46)
!56 = !DIEnumerator(name: "K_OBJ_DRIVER_LED", value: 47)
!57 = !DIEnumerator(name: "K_OBJ_DRIVER_MBOX", value: 48)
!58 = !DIEnumerator(name: "K_OBJ_DRIVER_MDIO", value: 49)
!59 = !DIEnumerator(name: "K_OBJ_DRIVER_MIPI_DSI", value: 50)
!60 = !DIEnumerator(name: "K_OBJ_DRIVER_PECI", value: 51)
!61 = !DIEnumerator(name: "K_OBJ_DRIVER_PS2", value: 52)
!62 = !DIEnumerator(name: "K_OBJ_DRIVER_PTP_CLOCK", value: 53)
!63 = !DIEnumerator(name: "K_OBJ_DRIVER_PWM", value: 54)
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
!284 = distinct !DIGlobalVariable(name: "async_msg", scope: !285, file: !252, line: 60, type: !288, isLocal: true, isDefinition: true)
!285 = distinct !DISubprogram(name: "init_mbox_module", scope: !252, file: !252, line: 57, type: !268, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !286)
!286 = !{!287}
!287 = !DILocalVariable(name: "i", scope: !285, file: !252, line: 75, type: !183)
!288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !251, size: 7680, elements: !281)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_stack", file: !187, line: 2740, size: 192, elements: !290)
!290 = !{!291, !292, !293, !294, !295, !296}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !289, file: !187, line: 2741, baseType: !126, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !289, file: !187, line: 2742, baseType: !202, offset: 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !289, file: !187, line: 2743, baseType: !249, size: 32, offset: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !289, file: !187, line: 2743, baseType: !249, size: 32, offset: 96)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !289, file: !187, line: 2743, baseType: !249, size: 32, offset: 128)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !289, file: !187, line: 2745, baseType: !133, size: 8, offset: 160)
!297 = !{i32 7, !"Dwarf Version", i32 4}
!298 = !{i32 2, !"Debug Info Version", i32 3}
!299 = !{i32 1, !"wchar_size", i32 4}
!300 = !{i32 1, !"static_rwdata", i32 1}
!301 = !{i32 1, !"enumsize_buildattr", i32 1}
!302 = !{i32 1, !"armlib_unavailable", i32 0}
!303 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
!304 = distinct !DISubprogram(name: "z_impl_k_object_access_grant", scope: !6, file: !6, line: 223, type: !305, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !309)
!305 = !DISubroutineType(types: !306)
!306 = !{null, !307, !89}
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 32)
!308 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!309 = !{!310, !311}
!310 = !DILocalVariable(name: "object", arg: 1, scope: !304, file: !6, line: 223, type: !307)
!311 = !DILocalVariable(name: "thread", arg: 2, scope: !304, file: !6, line: 224, type: !89)
!312 = !DILocation(line: 223, column: 61, scope: !304)
!313 = !DILocation(line: 224, column: 24, scope: !304)
!314 = !DILocation(line: 226, column: 9, scope: !304)
!315 = !DILocation(line: 227, column: 9, scope: !304)
!316 = !DILocation(line: 228, column: 1, scope: !304)
!317 = distinct !DISubprogram(name: "z_impl_k_object_release", scope: !6, file: !6, line: 243, type: !318, scopeLine: 244, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !320)
!318 = !DISubroutineType(types: !319)
!319 = !{null, !307}
!320 = !{!321}
!321 = !DILocalVariable(name: "object", arg: 1, scope: !317, file: !6, line: 243, type: !307)
!322 = !DILocation(line: 243, column: 56, scope: !317)
!323 = !DILocation(line: 245, column: 9, scope: !317)
!324 = !DILocation(line: 246, column: 1, scope: !317)
!325 = distinct !DISubprogram(name: "z_impl_k_object_alloc", scope: !6, file: !6, line: 359, type: !326, scopeLine: 360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !328)
!326 = !DISubroutineType(types: !327)
!327 = !{!153, !5}
!328 = !{!329}
!329 = !DILocalVariable(name: "otype", arg: 1, scope: !325, file: !6, line: 359, type: !5)
!330 = !DILocation(line: 359, column: 58, scope: !325)
!331 = !DILocation(line: 361, column: 9, scope: !325)
!332 = !DILocation(line: 363, column: 2, scope: !325)
!333 = distinct !DISubprogram(name: "z_impl_k_object_alloc_size", scope: !6, file: !6, line: 366, type: !334, scopeLine: 368, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !336)
!334 = !DISubroutineType(types: !335)
!335 = !{!153, !5, !198}
!336 = !{!337, !338}
!337 = !DILocalVariable(name: "otype", arg: 1, scope: !333, file: !6, line: 366, type: !5)
!338 = !DILocalVariable(name: "size", arg: 2, scope: !333, file: !6, line: 367, type: !198)
!339 = !DILocation(line: 366, column: 63, scope: !333)
!340 = !DILocation(line: 367, column: 13, scope: !333)
!341 = !DILocation(line: 369, column: 9, scope: !333)
!342 = !DILocation(line: 370, column: 9, scope: !333)
!343 = !DILocation(line: 372, column: 2, scope: !333)
!344 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_expires_ticks", scope: !187, file: !187, line: 656, type: !345, scopeLine: 658, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !349)
!345 = !DISubroutineType(types: !346)
!346 = !{!210, !347}
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 32)
!348 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !90)
!349 = !{!350}
!350 = !DILocalVariable(name: "t", arg: 1, scope: !344, file: !187, line: 657, type: !347)
!351 = !DILocation(line: 657, column: 30, scope: !344)
!352 = !DILocation(line: 659, column: 28, scope: !344)
!353 = !DILocation(line: 659, column: 31, scope: !344)
!354 = !DILocation(line: 659, column: 36, scope: !344)
!355 = !DILocation(line: 659, column: 9, scope: !344)
!356 = !DILocation(line: 659, column: 2, scope: !344)
!357 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_remaining_ticks", scope: !187, file: !187, line: 671, type: !345, scopeLine: 673, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !358)
!358 = !{!359}
!359 = !DILocalVariable(name: "t", arg: 1, scope: !357, file: !187, line: 672, type: !347)
!360 = !DILocation(line: 672, column: 30, scope: !357)
!361 = !DILocation(line: 674, column: 30, scope: !357)
!362 = !DILocation(line: 674, column: 33, scope: !357)
!363 = !DILocation(line: 674, column: 38, scope: !357)
!364 = !DILocation(line: 674, column: 9, scope: !357)
!365 = !DILocation(line: 674, column: 2, scope: !357)
!366 = distinct !DISubprogram(name: "z_impl_k_timer_expires_ticks", scope: !187, file: !187, line: 1634, type: !367, scopeLine: 1636, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !388)
!367 = !DISubroutineType(types: !368)
!368 = !{!210, !369}
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 32)
!370 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !371)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_timer", file: !187, line: 1439, size: 448, elements: !372)
!372 = !{!373, !374, !375, !380, !381, !386, !387}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !371, file: !187, line: 1445, baseType: !155, size: 192)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !371, file: !187, line: 1448, baseType: !126, size: 64, offset: 192)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_fn", scope: !371, file: !187, line: 1451, baseType: !376, size: 32, offset: 256)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 32)
!377 = !DISubroutineType(types: !378)
!378 = !{null, !379}
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 32)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "stop_fn", scope: !371, file: !187, line: 1454, baseType: !376, size: 32, offset: 288)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !371, file: !187, line: 1457, baseType: !382, size: 64, offset: 320)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_timeout_t", file: !211, line: 67, baseType: !383)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !211, line: 65, size: 64, elements: !384)
!384 = !{!385}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "ticks", scope: !383, file: !211, line: 66, baseType: !210, size: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !371, file: !187, line: 1460, baseType: !150, size: 32, offset: 384)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !371, file: !187, line: 1463, baseType: !153, size: 32, offset: 416)
!388 = !{!389}
!389 = !DILocalVariable(name: "timer", arg: 1, scope: !366, file: !187, line: 1635, type: !369)
!390 = !DILocation(line: 1635, column: 34, scope: !366)
!391 = !DILocation(line: 1637, column: 28, scope: !366)
!392 = !DILocation(line: 1637, column: 35, scope: !366)
!393 = !DILocation(line: 1637, column: 9, scope: !366)
!394 = !DILocation(line: 1637, column: 2, scope: !366)
!395 = distinct !DISubprogram(name: "z_impl_k_timer_remaining_ticks", scope: !187, file: !187, line: 1649, type: !367, scopeLine: 1651, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !396)
!396 = !{!397}
!397 = !DILocalVariable(name: "timer", arg: 1, scope: !395, file: !187, line: 1650, type: !369)
!398 = !DILocation(line: 1650, column: 34, scope: !395)
!399 = !DILocation(line: 1652, column: 30, scope: !395)
!400 = !DILocation(line: 1652, column: 37, scope: !395)
!401 = !DILocation(line: 1652, column: 9, scope: !395)
!402 = !DILocation(line: 1652, column: 2, scope: !395)
!403 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_set", scope: !187, file: !187, line: 1689, type: !404, scopeLine: 1691, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !406)
!404 = !DISubroutineType(types: !405)
!405 = !{null, !379, !153}
!406 = !{!407, !408}
!407 = !DILocalVariable(name: "timer", arg: 1, scope: !403, file: !187, line: 1689, type: !379)
!408 = !DILocalVariable(name: "user_data", arg: 2, scope: !403, file: !187, line: 1690, type: !153)
!409 = !DILocation(line: 1689, column: 65, scope: !403)
!410 = !DILocation(line: 1690, column: 19, scope: !403)
!411 = !DILocation(line: 1692, column: 21, scope: !403)
!412 = !DILocation(line: 1692, column: 2, scope: !403)
!413 = !DILocation(line: 1692, column: 9, scope: !403)
!414 = !DILocation(line: 1692, column: 19, scope: !403)
!415 = !DILocation(line: 1693, column: 1, scope: !403)
!416 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_get", scope: !187, file: !187, line: 1704, type: !417, scopeLine: 1705, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !419)
!417 = !DISubroutineType(types: !418)
!418 = !{!153, !369}
!419 = !{!420}
!420 = !DILocalVariable(name: "timer", arg: 1, scope: !416, file: !187, line: 1704, type: !369)
!421 = !DILocation(line: 1704, column: 72, scope: !416)
!422 = !DILocation(line: 1706, column: 9, scope: !416)
!423 = !DILocation(line: 1706, column: 16, scope: !416)
!424 = !DILocation(line: 1706, column: 2, scope: !416)
!425 = distinct !DISubprogram(name: "z_impl_k_queue_is_empty", scope: !187, file: !187, line: 2071, type: !426, scopeLine: 2072, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !446)
!426 = !DISubroutineType(types: !427)
!427 = !{!183, !428}
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 32)
!429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_queue", file: !187, line: 1830, size: 128, elements: !430)
!430 = !{!431, !444, !445}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "data_q", scope: !429, file: !187, line: 1831, baseType: !432, size: 64)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sflist_t", file: !433, line: 60, baseType: !434)
!433 = !DIFile(filename: "include/zephyr/sys/sflist.h", directory: "/home/sri/zephyrproject/zephyr")
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sflist", file: !433, line: 53, size: 64, elements: !435)
!435 = !{!436, !443}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !434, file: !433, line: 54, baseType: !437, size: 32)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 32)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sfnode_t", file: !433, line: 50, baseType: !439)
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sfnode", file: !433, line: 44, size: 32, elements: !440)
!440 = !{!441}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "next_and_flags", scope: !439, file: !433, line: 45, baseType: !442, size: 32)
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "unative_t", file: !433, line: 40, baseType: !150)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !434, file: !433, line: 55, baseType: !437, size: 32, offset: 32)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !429, file: !187, line: 1832, baseType: !202, offset: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !429, file: !187, line: 1833, baseType: !126, size: 64, offset: 64)
!446 = !{!447}
!447 = !DILocalVariable(name: "queue", arg: 1, scope: !425, file: !187, line: 2071, type: !428)
!448 = !DILocation(line: 2071, column: 59, scope: !425)
!449 = !DILocation(line: 2073, column: 35, scope: !425)
!450 = !DILocation(line: 2073, column: 42, scope: !425)
!451 = !DILocation(line: 2073, column: 14, scope: !425)
!452 = !DILocation(line: 2073, column: 9, scope: !425)
!453 = !DILocation(line: 2073, column: 2, scope: !425)
!454 = distinct !DISubprogram(name: "z_impl_k_sem_count_get", scope: !187, file: !187, line: 3209, type: !455, scopeLine: 3210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !457)
!455 = !DISubroutineType(types: !456)
!456 = !{!151, !240}
!457 = !{!458}
!458 = !DILocalVariable(name: "sem", arg: 1, scope: !454, file: !187, line: 3209, type: !240)
!459 = !DILocation(line: 3209, column: 65, scope: !454)
!460 = !DILocation(line: 3211, column: 9, scope: !454)
!461 = !DILocation(line: 3211, column: 14, scope: !454)
!462 = !DILocation(line: 3211, column: 2, scope: !454)
!463 = distinct !DISubprogram(name: "z_impl_k_msgq_num_free_get", scope: !187, file: !187, line: 4649, type: !464, scopeLine: 4650, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !479)
!464 = !DISubroutineType(types: !465)
!465 = !{!150, !466}
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 32)
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_msgq", file: !187, line: 4390, size: 320, elements: !468)
!468 = !{!469, !470, !471, !472, !473, !474, !475, !476, !477, !478}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !467, file: !187, line: 4392, baseType: !126, size: 64)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !467, file: !187, line: 4394, baseType: !202, offset: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "msg_size", scope: !467, file: !187, line: 4396, baseType: !198, size: 32, offset: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !467, file: !187, line: 4398, baseType: !150, size: 32, offset: 96)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_start", scope: !467, file: !187, line: 4400, baseType: !212, size: 32, offset: 128)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_end", scope: !467, file: !187, line: 4402, baseType: !212, size: 32, offset: 160)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "read_ptr", scope: !467, file: !187, line: 4404, baseType: !212, size: 32, offset: 192)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "write_ptr", scope: !467, file: !187, line: 4406, baseType: !212, size: 32, offset: 224)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "used_msgs", scope: !467, file: !187, line: 4408, baseType: !150, size: 32, offset: 256)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !467, file: !187, line: 4413, baseType: !133, size: 8, offset: 288)
!479 = !{!480}
!480 = !DILocalVariable(name: "msgq", arg: 1, scope: !463, file: !187, line: 4649, type: !466)
!481 = !DILocation(line: 4649, column: 66, scope: !463)
!482 = !DILocation(line: 4651, column: 9, scope: !463)
!483 = !DILocation(line: 4651, column: 15, scope: !463)
!484 = !DILocation(line: 4651, column: 26, scope: !463)
!485 = !DILocation(line: 4651, column: 32, scope: !463)
!486 = !DILocation(line: 4651, column: 24, scope: !463)
!487 = !DILocation(line: 4651, column: 2, scope: !463)
!488 = distinct !DISubprogram(name: "z_impl_k_msgq_num_used_get", scope: !187, file: !187, line: 4665, type: !464, scopeLine: 4666, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !489)
!489 = !{!490}
!490 = !DILocalVariable(name: "msgq", arg: 1, scope: !488, file: !187, line: 4665, type: !466)
!491 = !DILocation(line: 4665, column: 66, scope: !488)
!492 = !DILocation(line: 4667, column: 9, scope: !488)
!493 = !DILocation(line: 4667, column: 15, scope: !488)
!494 = !DILocation(line: 4667, column: 2, scope: !488)
!495 = !DILocation(line: 75, column: 2, scope: !285)
!496 = !DILocation(line: 75, column: 6, scope: !285)
!497 = !DILocation(line: 77, column: 9, scope: !498)
!498 = distinct !DILexicalBlock(scope: !285, file: !252, line: 77, column: 2)
!499 = !DILocation(line: 77, column: 7, scope: !498)
!500 = !DILocation(line: 77, column: 14, scope: !501)
!501 = distinct !DILexicalBlock(scope: !498, file: !252, line: 77, column: 2)
!502 = !DILocation(line: 77, column: 16, scope: !501)
!503 = !DILocation(line: 77, column: 2, scope: !498)
!504 = !DILocation(line: 78, column: 33, scope: !505)
!505 = distinct !DILexicalBlock(scope: !501, file: !252, line: 77, column: 27)
!506 = !DILocation(line: 78, column: 23, scope: !505)
!507 = !DILocation(line: 78, column: 36, scope: !505)
!508 = !DILocation(line: 78, column: 3, scope: !505)
!509 = !DILocation(line: 79, column: 58, scope: !505)
!510 = !DILocation(line: 79, column: 48, scope: !505)
!511 = !DILocation(line: 79, column: 33, scope: !505)
!512 = !DILocation(line: 79, column: 3, scope: !505)
!513 = !DILocation(line: 80, column: 2, scope: !505)
!514 = !DILocation(line: 77, column: 23, scope: !501)
!515 = !DILocation(line: 77, column: 2, scope: !501)
!516 = distinct !{!516, !503, !517}
!517 = !DILocation(line: 80, column: 2, scope: !498)
!518 = !DILocation(line: 86, column: 1, scope: !285)
!519 = !DILocation(line: 85, column: 2, scope: !285)
!520 = distinct !DISubprogram(name: "k_mbox_init", scope: !252, file: !252, line: 92, type: !521, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !529)
!521 = !DISubroutineType(types: !522)
!522 = !{null, !523}
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 32)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_mbox", file: !187, line: 4710, size: 128, elements: !525)
!525 = !{!526, !527, !528}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "tx_msg_queue", scope: !524, file: !187, line: 4712, baseType: !126, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "rx_msg_queue", scope: !524, file: !187, line: 4714, baseType: !126, size: 64, offset: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !524, file: !187, line: 4715, baseType: !202, offset: 128)
!529 = !{!530}
!530 = !DILocalVariable(name: "mbox", arg: 1, scope: !520, file: !252, line: 92, type: !523)
!531 = !DILocation(line: 92, column: 33, scope: !520)
!532 = !DILocation(line: 94, column: 16, scope: !520)
!533 = !DILocation(line: 94, column: 22, scope: !520)
!534 = !DILocation(line: 94, column: 2, scope: !520)
!535 = !DILocation(line: 95, column: 16, scope: !520)
!536 = !DILocation(line: 95, column: 22, scope: !520)
!537 = !DILocation(line: 95, column: 2, scope: !520)
!538 = !DILocation(line: 96, column: 2, scope: !520)
!539 = !DILocation(line: 96, column: 8, scope: !520)
!540 = !DILocation(line: 96, column: 15, scope: !520)
!541 = !DILocation(line: 102, column: 2, scope: !520)
!542 = !DILocation(line: 102, column: 7, scope: !543)
!543 = distinct !DILexicalBlock(scope: !520, file: !252, line: 102, column: 5)
!544 = !DILocation(line: 103, column: 1, scope: !520)
!545 = distinct !DISubprogram(name: "z_waitq_init", scope: !546, file: !546, line: 47, type: !547, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !549)
!546 = !DIFile(filename: "kernel/include/wait_q.h", directory: "/home/sri/zephyrproject/zephyr")
!547 = !DISubroutineType(types: !548)
!548 = !{null, !125}
!549 = !{!550}
!550 = !DILocalVariable(name: "w", arg: 1, scope: !545, file: !546, line: 47, type: !125)
!551 = !DILocation(line: 47, column: 44, scope: !545)
!552 = !DILocation(line: 49, column: 18, scope: !545)
!553 = !DILocation(line: 49, column: 21, scope: !545)
!554 = !DILocation(line: 49, column: 2, scope: !545)
!555 = !DILocation(line: 50, column: 1, scope: !545)
!556 = distinct !DISubprogram(name: "k_mbox_put", scope: !252, file: !252, line: 313, type: !557, scopeLine: 315, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !559)
!557 = !DISubroutineType(types: !558)
!558 = !{!183, !523, !214, !382}
!559 = !{!560, !561, !562, !563}
!560 = !DILocalVariable(name: "mbox", arg: 1, scope: !556, file: !252, line: 313, type: !523)
!561 = !DILocalVariable(name: "tx_msg", arg: 2, scope: !556, file: !252, line: 313, type: !214)
!562 = !DILocalVariable(name: "timeout", arg: 3, scope: !556, file: !252, line: 314, type: !382)
!563 = !DILocalVariable(name: "ret", scope: !556, file: !252, line: 321, type: !183)
!564 = !DILocation(line: 313, column: 31, scope: !556)
!565 = !DILocation(line: 313, column: 56, scope: !556)
!566 = !DILocation(line: 314, column: 21, scope: !556)
!567 = !DILocation(line: 317, column: 44, scope: !556)
!568 = !DILocation(line: 317, column: 2, scope: !556)
!569 = !DILocation(line: 317, column: 10, scope: !556)
!570 = !DILocation(line: 317, column: 26, scope: !556)
!571 = !DILocation(line: 319, column: 2, scope: !556)
!572 = !DILocation(line: 319, column: 7, scope: !573)
!573 = distinct !DILexicalBlock(scope: !556, file: !252, line: 319, column: 5)
!574 = !DILocation(line: 321, column: 2, scope: !556)
!575 = !DILocation(line: 321, column: 6, scope: !556)
!576 = !DILocation(line: 321, column: 29, scope: !556)
!577 = !DILocation(line: 321, column: 35, scope: !556)
!578 = !DILocation(line: 321, column: 12, scope: !556)
!579 = !DILocation(line: 323, column: 2, scope: !556)
!580 = !DILocation(line: 323, column: 7, scope: !581)
!581 = distinct !DILexicalBlock(scope: !556, file: !252, line: 323, column: 5)
!582 = !DILocation(line: 325, column: 9, scope: !556)
!583 = !DILocation(line: 326, column: 1, scope: !556)
!584 = !DILocation(line: 325, column: 2, scope: !556)
!585 = distinct !DISubprogram(name: "mbox_message_put", scope: !252, file: !252, line: 228, type: !557, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !586)
!586 = !{!587, !588, !589, !590, !591, !592, !593, !598, !604}
!587 = !DILocalVariable(name: "mbox", arg: 1, scope: !585, file: !252, line: 228, type: !523)
!588 = !DILocalVariable(name: "tx_msg", arg: 2, scope: !585, file: !252, line: 228, type: !214)
!589 = !DILocalVariable(name: "timeout", arg: 3, scope: !585, file: !252, line: 229, type: !382)
!590 = !DILocalVariable(name: "sending_thread", scope: !585, file: !252, line: 231, type: !89)
!591 = !DILocalVariable(name: "receiving_thread", scope: !585, file: !252, line: 232, type: !89)
!592 = !DILocalVariable(name: "rx_msg", scope: !585, file: !252, line: 233, type: !214)
!593 = !DILocalVariable(name: "key", scope: !585, file: !252, line: 234, type: !594)
!594 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_spinlock_key_t", file: !203, line: 108, baseType: !595)
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "z_spinlock_key", file: !203, line: 34, size: 32, elements: !596)
!596 = !{!597}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !595, file: !203, line: 35, baseType: !183, size: 32)
!598 = !DILocalVariable(name: "ret", scope: !599, file: !252, line: 279, type: !183)
!599 = distinct !DILexicalBlock(scope: !600, file: !252, line: 251, column: 48)
!600 = distinct !DILexicalBlock(scope: !601, file: !252, line: 251, column: 7)
!601 = distinct !DILexicalBlock(scope: !602, file: !252, line: 248, column: 678)
!602 = distinct !DILexicalBlock(scope: !603, file: !252, line: 248, column: 2)
!603 = distinct !DILexicalBlock(scope: !585, file: !252, line: 248, column: 2)
!604 = !DILocalVariable(name: "ret", scope: !585, file: !252, line: 306, type: !183)
!605 = !DILocation(line: 228, column: 44, scope: !585)
!606 = !DILocation(line: 228, column: 69, scope: !585)
!607 = !DILocation(line: 229, column: 21, scope: !585)
!608 = !DILocation(line: 231, column: 2, scope: !585)
!609 = !DILocation(line: 231, column: 19, scope: !585)
!610 = !DILocation(line: 232, column: 2, scope: !585)
!611 = !DILocation(line: 232, column: 19, scope: !585)
!612 = !DILocation(line: 233, column: 2, scope: !585)
!613 = !DILocation(line: 233, column: 21, scope: !585)
!614 = !DILocation(line: 234, column: 2, scope: !585)
!615 = !DILocation(line: 234, column: 19, scope: !585)
!616 = !DILocation(line: 237, column: 45, scope: !585)
!617 = !DILocation(line: 237, column: 2, scope: !585)
!618 = !DILocation(line: 237, column: 10, scope: !585)
!619 = !DILocation(line: 237, column: 27, scope: !585)
!620 = !DILocation(line: 240, column: 19, scope: !585)
!621 = !DILocation(line: 240, column: 27, scope: !585)
!622 = !DILocation(line: 240, column: 17, scope: !585)
!623 = !DILocation(line: 241, column: 35, scope: !585)
!624 = !DILocation(line: 241, column: 2, scope: !585)
!625 = !DILocation(line: 241, column: 18, scope: !585)
!626 = !DILocation(line: 241, column: 23, scope: !585)
!627 = !DILocation(line: 241, column: 33, scope: !585)
!628 = !DILocation(line: 244, column: 8, scope: !585)
!629 = !DILocation(line: 244, column: 21, scope: !585)
!630 = !DILocation(line: 244, column: 27, scope: !585)
!631 = !DILocalVariable(name: "l", arg: 1, scope: !632, file: !203, line: 160, type: !635)
!632 = distinct !DISubprogram(name: "k_spin_lock", scope: !203, file: !203, line: 160, type: !633, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !636)
!633 = !DISubroutineType(types: !634)
!634 = !{!594, !635}
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 32)
!636 = !{!631, !637}
!637 = !DILocalVariable(name: "k", scope: !632, file: !203, line: 163, type: !594)
!638 = !DILocation(line: 160, column: 94, scope: !632, inlinedAt: !639)
!639 = distinct !DILocation(line: 244, column: 8, scope: !585)
!640 = !DILocation(line: 162, column: 9, scope: !632, inlinedAt: !639)
!641 = !DILocation(line: 163, column: 19, scope: !632, inlinedAt: !639)
!642 = !DILocation(line: 44, column: 2, scope: !643, inlinedAt: !649)
!643 = distinct !DISubprogram(name: "arch_irq_lock", scope: !644, file: !644, line: 42, type: !645, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !647)
!644 = !DIFile(filename: "include/zephyr/arch/arm/asm_inline_gcc.h", directory: "/home/sri/zephyrproject/zephyr")
!645 = !DISubroutineType(types: !646)
!646 = !{!151}
!647 = !{!648}
!648 = !DILocalVariable(name: "key", scope: !643, file: !644, line: 44, type: !151)
!649 = distinct !DILocation(line: 169, column: 10, scope: !632, inlinedAt: !639)
!650 = !DILocation(line: 44, column: 15, scope: !643, inlinedAt: !649)
!651 = !DILocation(line: 48, column: 2, scope: !643, inlinedAt: !649)
!652 = !{i64 66951}
!653 = !DILocation(line: 80, column: 9, scope: !643, inlinedAt: !649)
!654 = !DILocation(line: 81, column: 1, scope: !643, inlinedAt: !649)
!655 = !DILocation(line: 169, column: 8, scope: !632, inlinedAt: !639)
!656 = !DILocation(line: 171, column: 26, scope: !632, inlinedAt: !639)
!657 = !DILocalVariable(name: "l", arg: 1, scope: !658, file: !203, line: 110, type: !635)
!658 = distinct !DISubprogram(name: "z_spinlock_validate_pre", scope: !203, file: !203, line: 110, type: !659, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !661)
!659 = !DISubroutineType(types: !660)
!660 = !{null, !635}
!661 = !{!657}
!662 = !DILocation(line: 110, column: 94, scope: !658, inlinedAt: !663)
!663 = distinct !DILocation(line: 171, column: 2, scope: !632, inlinedAt: !639)
!664 = !DILocation(line: 112, column: 9, scope: !658, inlinedAt: !663)
!665 = !DILocation(line: 177, column: 27, scope: !632, inlinedAt: !639)
!666 = !DILocalVariable(name: "l", arg: 1, scope: !667, file: !203, line: 121, type: !635)
!667 = distinct !DISubprogram(name: "z_spinlock_validate_post", scope: !203, file: !203, line: 121, type: !659, scopeLine: 122, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !668)
!668 = !{!666}
!669 = !DILocation(line: 121, column: 95, scope: !667, inlinedAt: !670)
!670 = distinct !DILocation(line: 177, column: 2, scope: !632, inlinedAt: !639)
!671 = !DILocation(line: 123, column: 9, scope: !667, inlinedAt: !670)
!672 = !DILocation(line: 179, column: 2, scope: !632, inlinedAt: !639)
!673 = !DILocation(line: 246, column: 2, scope: !585)
!674 = !DILocation(line: 246, column: 7, scope: !675)
!675 = distinct !DILexicalBlock(scope: !585, file: !252, line: 246, column: 5)
!676 = !DILocation(line: 248, column: 52, scope: !603)
!677 = !DILocation(line: 248, column: 58, scope: !603)
!678 = !DILocation(line: 248, column: 73, scope: !603)
!679 = !DILocation(line: 248, column: 28, scope: !603)
!680 = !DILocation(line: 248, column: 81, scope: !603)
!681 = !DILocation(line: 248, column: 27, scope: !603)
!682 = !DILocation(line: 248, column: 163, scope: !683)
!683 = distinct !DILexicalBlock(scope: !603, file: !252, line: 248, column: 90)
!684 = !DILocation(line: 248, column: 169, scope: !683)
!685 = !DILocation(line: 248, column: 184, scope: !683)
!686 = !DILocation(line: 248, column: 139, scope: !683)
!687 = !DILocation(line: 248, column: 194, scope: !683)
!688 = !DILocation(line: 248, column: 90, scope: !603)
!689 = !DILocation(line: 248, column: 267, scope: !683)
!690 = !DILocation(line: 248, column: 24, scope: !603)
!691 = !DILocation(line: 248, column: 7, scope: !603)
!692 = !DILocation(line: 248, column: 276, scope: !602)
!693 = !DILocation(line: 248, column: 293, scope: !602)
!694 = !DILocation(line: 248, column: 2, scope: !603)
!695 = !DILocation(line: 249, column: 33, scope: !601)
!696 = !DILocation(line: 249, column: 51, scope: !601)
!697 = !DILocation(line: 249, column: 56, scope: !601)
!698 = !DILocation(line: 249, column: 10, scope: !601)
!699 = !DILocation(line: 251, column: 26, scope: !600)
!700 = !DILocation(line: 251, column: 34, scope: !600)
!701 = !DILocation(line: 251, column: 7, scope: !600)
!702 = !DILocation(line: 251, column: 42, scope: !600)
!703 = !DILocation(line: 251, column: 7, scope: !601)
!704 = !DILocation(line: 253, column: 20, scope: !599)
!705 = !DILocation(line: 253, column: 4, scope: !599)
!706 = !DILocation(line: 256, column: 33, scope: !599)
!707 = !DILocalVariable(name: "thread", arg: 1, scope: !708, file: !709, line: 59, type: !89)
!708 = distinct !DISubprogram(name: "arch_thread_return_value_set", scope: !709, file: !709, line: 59, type: !710, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !712)
!709 = !DIFile(filename: "arch/arm/include/cortex_m/kernel_arch_func.h", directory: "/home/sri/zephyrproject/zephyr")
!710 = !DISubroutineType(types: !711)
!711 = !{null, !89, !151}
!712 = !{!707, !713}
!713 = !DILocalVariable(name: "value", arg: 2, scope: !708, file: !709, line: 59, type: !151)
!714 = !DILocation(line: 59, column: 47, scope: !708, inlinedAt: !715)
!715 = distinct !DILocation(line: 256, column: 4, scope: !599)
!716 = !DILocation(line: 59, column: 68, scope: !708, inlinedAt: !715)
!717 = !DILocation(line: 61, column: 35, scope: !708, inlinedAt: !715)
!718 = !DILocation(line: 61, column: 2, scope: !708, inlinedAt: !715)
!719 = !DILocation(line: 61, column: 10, scope: !708, inlinedAt: !715)
!720 = !DILocation(line: 61, column: 15, scope: !708, inlinedAt: !715)
!721 = !DILocation(line: 61, column: 33, scope: !708, inlinedAt: !715)
!722 = !DILocation(line: 257, column: 19, scope: !599)
!723 = !DILocation(line: 257, column: 4, scope: !599)
!724 = !DILocation(line: 267, column: 9, scope: !725)
!725 = distinct !DILexicalBlock(scope: !599, file: !252, line: 267, column: 8)
!726 = !DILocation(line: 267, column: 25, scope: !725)
!727 = !DILocation(line: 267, column: 30, scope: !725)
!728 = !DILocation(line: 267, column: 43, scope: !725)
!729 = !DILocation(line: 268, column: 8, scope: !725)
!730 = !DILocation(line: 267, column: 8, scope: !599)
!731 = !DILocation(line: 269, column: 19, scope: !732)
!732 = distinct !DILexicalBlock(scope: !725, file: !252, line: 268, column: 15)
!733 = !DILocation(line: 269, column: 25, scope: !732)
!734 = !DILocation(line: 269, column: 5, scope: !732)
!735 = !DILocation(line: 270, column: 5, scope: !732)
!736 = !DILocation(line: 273, column: 4, scope: !599)
!737 = !DILocation(line: 273, column: 9, scope: !738)
!738 = distinct !DILexicalBlock(scope: !599, file: !252, line: 273, column: 7)
!739 = !DILocation(line: 279, column: 4, scope: !599)
!740 = !DILocation(line: 279, column: 8, scope: !599)
!741 = !DILocation(line: 279, column: 27, scope: !599)
!742 = !DILocation(line: 279, column: 33, scope: !599)
!743 = !DILocation(line: 279, column: 62, scope: !599)
!744 = !DILocation(line: 279, column: 14, scope: !599)
!745 = !DILocation(line: 281, column: 4, scope: !599)
!746 = !DILocation(line: 281, column: 9, scope: !747)
!747 = distinct !DILexicalBlock(scope: !599, file: !252, line: 281, column: 7)
!748 = !DILocation(line: 283, column: 11, scope: !599)
!749 = !DILocation(line: 283, column: 4, scope: !599)
!750 = !DILocation(line: 284, column: 3, scope: !600)
!751 = !DILocation(line: 285, column: 2, scope: !601)
!752 = !DILocation(line: 248, column: 320, scope: !602)
!753 = !DILocation(line: 248, column: 337, scope: !602)
!754 = !DILocation(line: 248, column: 319, scope: !602)
!755 = !DILocation(line: 248, column: 371, scope: !602)
!756 = !DILocation(line: 248, column: 377, scope: !602)
!757 = !DILocation(line: 248, column: 392, scope: !602)
!758 = !DILocation(line: 248, column: 402, scope: !602)
!759 = !DILocation(line: 248, column: 420, scope: !602)
!760 = !DILocation(line: 248, column: 425, scope: !602)
!761 = !DILocation(line: 248, column: 347, scope: !602)
!762 = !DILocation(line: 248, column: 439, scope: !602)
!763 = !DILocation(line: 248, column: 346, scope: !602)
!764 = !DILocation(line: 248, column: 521, scope: !765)
!765 = distinct !DILexicalBlock(scope: !602, file: !252, line: 248, column: 448)
!766 = !DILocation(line: 248, column: 527, scope: !765)
!767 = !DILocation(line: 248, column: 542, scope: !765)
!768 = !DILocation(line: 248, column: 552, scope: !765)
!769 = !DILocation(line: 248, column: 570, scope: !765)
!770 = !DILocation(line: 248, column: 575, scope: !765)
!771 = !DILocation(line: 248, column: 497, scope: !765)
!772 = !DILocation(line: 248, column: 591, scope: !765)
!773 = !DILocation(line: 248, column: 448, scope: !602)
!774 = !DILocation(line: 248, column: 664, scope: !765)
!775 = !DILocation(line: 248, column: 316, scope: !602)
!776 = !DILocation(line: 248, column: 2, scope: !602)
!777 = distinct !{!777, !694, !778}
!778 = !DILocation(line: 285, column: 2, scope: !603)
!779 = !DILocation(line: 288, column: 17, scope: !780)
!780 = distinct !DILexicalBlock(scope: !585, file: !252, line: 288, column: 6)
!781 = !DILocation(line: 288, column: 42, scope: !780)
!782 = !DILocation(line: 288, column: 23, scope: !780)
!783 = !DILocation(line: 288, column: 6, scope: !585)
!784 = !DILocation(line: 289, column: 3, scope: !785)
!785 = distinct !DILexicalBlock(scope: !780, file: !252, line: 288, column: 56)
!786 = !DILocation(line: 289, column: 8, scope: !787)
!787 = distinct !DILexicalBlock(scope: !785, file: !252, line: 289, column: 6)
!788 = !DILocation(line: 291, column: 18, scope: !785)
!789 = !DILocation(line: 291, column: 24, scope: !785)
!790 = !DILocation(line: 291, column: 3, scope: !785)
!791 = !DILocalVariable(name: "l", arg: 1, scope: !792, file: !203, line: 235, type: !635)
!792 = distinct !DISubprogram(name: "k_spin_unlock", scope: !203, file: !203, line: 235, type: !793, scopeLine: 237, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !795)
!793 = !DISubroutineType(types: !794)
!794 = !{null, !635, !594}
!795 = !{!791, !796}
!796 = !DILocalVariable(name: "key", arg: 2, scope: !792, file: !203, line: 236, type: !594)
!797 = !DILocation(line: 235, column: 84, scope: !792, inlinedAt: !798)
!798 = distinct !DILocation(line: 291, column: 3, scope: !785)
!799 = !DILocation(line: 236, column: 23, scope: !792, inlinedAt: !798)
!800 = !DILocation(line: 238, column: 9, scope: !792, inlinedAt: !798)
!801 = !DILocation(line: 261, column: 22, scope: !792, inlinedAt: !798)
!802 = !DILocalVariable(name: "key", arg: 1, scope: !803, file: !644, line: 88, type: !151)
!803 = distinct !DISubprogram(name: "arch_irq_unlock", scope: !644, file: !644, line: 88, type: !804, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !806)
!804 = !DISubroutineType(types: !805)
!805 = !{null, !151}
!806 = !{!802}
!807 = !DILocation(line: 88, column: 80, scope: !803, inlinedAt: !808)
!808 = distinct !DILocation(line: 261, column: 2, scope: !792, inlinedAt: !798)
!809 = !DILocation(line: 91, column: 6, scope: !810, inlinedAt: !808)
!810 = distinct !DILexicalBlock(scope: !803, file: !644, line: 91, column: 6)
!811 = !DILocation(line: 91, column: 10, scope: !810, inlinedAt: !808)
!812 = !DILocation(line: 91, column: 6, scope: !803, inlinedAt: !808)
!813 = !DILocation(line: 92, column: 3, scope: !814, inlinedAt: !808)
!814 = distinct !DILexicalBlock(scope: !810, file: !644, line: 91, column: 17)
!815 = !DILocation(line: 94, column: 2, scope: !803, inlinedAt: !808)
!816 = !{i64 67255}
!817 = !DILocation(line: 114, column: 1, scope: !803, inlinedAt: !808)
!818 = !DILocation(line: 292, column: 3, scope: !785)
!819 = !DILocation(line: 297, column: 7, scope: !820)
!820 = distinct !DILexicalBlock(scope: !585, file: !252, line: 297, column: 6)
!821 = !DILocation(line: 297, column: 23, scope: !820)
!822 = !DILocation(line: 297, column: 28, scope: !820)
!823 = !DILocation(line: 297, column: 41, scope: !820)
!824 = !DILocation(line: 297, column: 59, scope: !820)
!825 = !DILocation(line: 297, column: 6, scope: !585)
!826 = !DILocation(line: 298, column: 17, scope: !827)
!827 = distinct !DILexicalBlock(scope: !820, file: !252, line: 297, column: 66)
!828 = !DILocation(line: 298, column: 34, scope: !827)
!829 = !DILocation(line: 298, column: 40, scope: !827)
!830 = !DILocation(line: 298, column: 69, scope: !827)
!831 = !DILocation(line: 298, column: 3, scope: !827)
!832 = !DILocation(line: 299, column: 18, scope: !827)
!833 = !DILocation(line: 299, column: 24, scope: !827)
!834 = !DILocation(line: 299, column: 3, scope: !827)
!835 = !DILocation(line: 235, column: 84, scope: !792, inlinedAt: !836)
!836 = distinct !DILocation(line: 299, column: 3, scope: !827)
!837 = !DILocation(line: 236, column: 23, scope: !792, inlinedAt: !836)
!838 = !DILocation(line: 238, column: 9, scope: !792, inlinedAt: !836)
!839 = !DILocation(line: 261, column: 22, scope: !792, inlinedAt: !836)
!840 = !DILocation(line: 88, column: 80, scope: !803, inlinedAt: !841)
!841 = distinct !DILocation(line: 261, column: 2, scope: !792, inlinedAt: !836)
!842 = !DILocation(line: 91, column: 6, scope: !810, inlinedAt: !841)
!843 = !DILocation(line: 91, column: 10, scope: !810, inlinedAt: !841)
!844 = !DILocation(line: 91, column: 6, scope: !803, inlinedAt: !841)
!845 = !DILocation(line: 92, column: 3, scope: !814, inlinedAt: !841)
!846 = !DILocation(line: 94, column: 2, scope: !803, inlinedAt: !841)
!847 = !DILocation(line: 114, column: 1, scope: !803, inlinedAt: !841)
!848 = !DILocation(line: 300, column: 3, scope: !827)
!849 = !DILocation(line: 303, column: 2, scope: !585)
!850 = !DILocation(line: 303, column: 7, scope: !851)
!851 = distinct !DILexicalBlock(scope: !585, file: !252, line: 303, column: 5)
!852 = !DILocation(line: 306, column: 2, scope: !585)
!853 = !DILocation(line: 306, column: 6, scope: !585)
!854 = !DILocation(line: 306, column: 25, scope: !585)
!855 = !DILocation(line: 306, column: 31, scope: !585)
!856 = !DILocation(line: 306, column: 43, scope: !585)
!857 = !DILocation(line: 306, column: 49, scope: !585)
!858 = !DILocation(line: 306, column: 12, scope: !585)
!859 = !DILocation(line: 308, column: 2, scope: !585)
!860 = !DILocation(line: 308, column: 7, scope: !861)
!861 = distinct !DILexicalBlock(scope: !585, file: !252, line: 308, column: 5)
!862 = !DILocation(line: 310, column: 9, scope: !585)
!863 = !DILocation(line: 310, column: 2, scope: !585)
!864 = !DILocation(line: 311, column: 1, scope: !585)
!865 = distinct !DISubprogram(name: "k_mbox_async_put", scope: !252, file: !252, line: 329, type: !866, scopeLine: 331, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !868)
!866 = !DISubroutineType(types: !867)
!867 = !{null, !523, !214, !240}
!868 = !{!869, !870, !871, !872}
!869 = !DILocalVariable(name: "mbox", arg: 1, scope: !865, file: !252, line: 329, type: !523)
!870 = !DILocalVariable(name: "tx_msg", arg: 2, scope: !865, file: !252, line: 329, type: !214)
!871 = !DILocalVariable(name: "sem", arg: 3, scope: !865, file: !252, line: 330, type: !240)
!872 = !DILocalVariable(name: "async", scope: !865, file: !252, line: 332, type: !250)
!873 = !DILocation(line: 329, column: 38, scope: !865)
!874 = !DILocation(line: 329, column: 63, scope: !865)
!875 = !DILocation(line: 330, column: 23, scope: !865)
!876 = !DILocation(line: 332, column: 2, scope: !865)
!877 = !DILocation(line: 332, column: 23, scope: !865)
!878 = !DILocation(line: 334, column: 2, scope: !865)
!879 = !DILocation(line: 334, column: 7, scope: !880)
!880 = distinct !DILexicalBlock(scope: !865, file: !252, line: 334, column: 5)
!881 = !DILocation(line: 340, column: 2, scope: !865)
!882 = !DILocation(line: 342, column: 39, scope: !865)
!883 = !DILocation(line: 342, column: 48, scope: !865)
!884 = !DILocation(line: 342, column: 53, scope: !865)
!885 = !DILocation(line: 342, column: 2, scope: !865)
!886 = !DILocation(line: 342, column: 9, scope: !865)
!887 = !DILocation(line: 342, column: 16, scope: !865)
!888 = !DILocation(line: 342, column: 21, scope: !865)
!889 = !DILocation(line: 344, column: 2, scope: !865)
!890 = !DILocation(line: 344, column: 9, scope: !865)
!891 = !DILocation(line: 344, column: 19, scope: !865)
!892 = !DILocation(line: 344, column: 18, scope: !865)
!893 = !DILocation(line: 345, column: 54, scope: !865)
!894 = !DILocation(line: 345, column: 61, scope: !865)
!895 = !DILocation(line: 345, column: 2, scope: !865)
!896 = !DILocation(line: 345, column: 9, scope: !865)
!897 = !DILocation(line: 345, column: 16, scope: !865)
!898 = !DILocation(line: 345, column: 32, scope: !865)
!899 = !DILocation(line: 346, column: 29, scope: !865)
!900 = !DILocation(line: 346, column: 2, scope: !865)
!901 = !DILocation(line: 346, column: 9, scope: !865)
!902 = !DILocation(line: 346, column: 16, scope: !865)
!903 = !DILocation(line: 346, column: 27, scope: !865)
!904 = !DILocation(line: 348, column: 25, scope: !865)
!905 = !DILocation(line: 348, column: 32, scope: !865)
!906 = !DILocation(line: 348, column: 39, scope: !865)
!907 = !DILocation(line: 348, column: 62, scope: !865)
!908 = !DILocation(line: 348, column: 8, scope: !865)
!909 = !DILocation(line: 349, column: 2, scope: !865)
!910 = !DILocation(line: 349, column: 7, scope: !911)
!911 = distinct !DILexicalBlock(scope: !865, file: !252, line: 349, column: 5)
!912 = !DILocation(line: 350, column: 1, scope: !865)
!913 = distinct !DISubprogram(name: "mbox_async_alloc", scope: !252, file: !252, line: 39, type: !914, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !917)
!914 = !DISubroutineType(types: !915)
!915 = !{null, !916}
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 32)
!917 = !{!918}
!918 = !DILocalVariable(name: "async", arg: 1, scope: !913, file: !252, line: 39, type: !916)
!919 = !DILocation(line: 39, column: 59, scope: !913)
!920 = !DILocation(line: 41, column: 53, scope: !913)
!921 = !DILocation(line: 41, column: 75, scope: !913)
!922 = !DILocation(line: 41, column: 8, scope: !913)
!923 = !DILocation(line: 42, column: 1, scope: !913)
!924 = distinct !DISubprogram(name: "k_mbox_data_get", scope: !252, file: !252, line: 353, type: !925, scopeLine: 354, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !927)
!925 = !DISubroutineType(types: !926)
!926 = !{null, !214, !153}
!927 = !{!928, !929}
!928 = !DILocalVariable(name: "rx_msg", arg: 1, scope: !924, file: !252, line: 353, type: !214)
!929 = !DILocalVariable(name: "buffer", arg: 2, scope: !924, file: !252, line: 353, type: !153)
!930 = !DILocation(line: 353, column: 41, scope: !924)
!931 = !DILocation(line: 353, column: 55, scope: !924)
!932 = !DILocation(line: 356, column: 6, scope: !933)
!933 = distinct !DILexicalBlock(scope: !924, file: !252, line: 356, column: 6)
!934 = !DILocation(line: 356, column: 13, scope: !933)
!935 = !DILocation(line: 356, column: 6, scope: !924)
!936 = !DILocation(line: 357, column: 3, scope: !937)
!937 = distinct !DILexicalBlock(scope: !933, file: !252, line: 356, column: 19)
!938 = !DILocation(line: 357, column: 11, scope: !937)
!939 = !DILocation(line: 357, column: 16, scope: !937)
!940 = !DILocation(line: 358, column: 24, scope: !937)
!941 = !DILocation(line: 358, column: 3, scope: !937)
!942 = !DILocation(line: 359, column: 3, scope: !937)
!943 = !DILocation(line: 363, column: 7, scope: !944)
!944 = distinct !DILexicalBlock(scope: !924, file: !252, line: 363, column: 6)
!945 = !DILocation(line: 363, column: 15, scope: !944)
!946 = !DILocation(line: 363, column: 23, scope: !944)
!947 = !DILocation(line: 363, column: 29, scope: !944)
!948 = !DILocation(line: 363, column: 33, scope: !944)
!949 = !DILocation(line: 363, column: 41, scope: !944)
!950 = !DILocation(line: 363, column: 46, scope: !944)
!951 = !DILocation(line: 363, column: 6, scope: !924)
!952 = !DILocation(line: 364, column: 16, scope: !953)
!953 = distinct !DILexicalBlock(scope: !944, file: !252, line: 363, column: 53)
!954 = !DILocation(line: 364, column: 24, scope: !953)
!955 = !DILocation(line: 364, column: 32, scope: !953)
!956 = !DILocation(line: 364, column: 41, scope: !953)
!957 = !DILocation(line: 364, column: 49, scope: !953)
!958 = !DILocation(line: 364, column: 9, scope: !953)
!959 = !DILocation(line: 365, column: 2, scope: !953)
!960 = !DILocation(line: 366, column: 23, scope: !924)
!961 = !DILocation(line: 366, column: 2, scope: !924)
!962 = !DILocation(line: 367, column: 1, scope: !924)
!963 = distinct !DISubprogram(name: "mbox_message_dispose", scope: !252, file: !252, line: 169, type: !964, scopeLine: 170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !966)
!964 = !DISubroutineType(types: !965)
!965 = !{null, !214}
!966 = !{!967, !968, !969, !970}
!967 = !DILocalVariable(name: "rx_msg", arg: 1, scope: !963, file: !252, line: 169, type: !214)
!968 = !DILocalVariable(name: "sending_thread", scope: !963, file: !252, line: 171, type: !89)
!969 = !DILocalVariable(name: "tx_msg", scope: !963, file: !252, line: 172, type: !214)
!970 = !DILocalVariable(name: "async_sem", scope: !971, file: !252, line: 197, type: !240)
!971 = distinct !DILexicalBlock(scope: !972, file: !252, line: 196, column: 66)
!972 = distinct !DILexicalBlock(scope: !963, file: !252, line: 196, column: 6)
!973 = !DILocation(line: 169, column: 53, scope: !963)
!974 = !DILocation(line: 171, column: 2, scope: !963)
!975 = !DILocation(line: 171, column: 19, scope: !963)
!976 = !DILocation(line: 172, column: 2, scope: !963)
!977 = !DILocation(line: 172, column: 21, scope: !963)
!978 = !DILocation(line: 175, column: 6, scope: !979)
!979 = distinct !DILexicalBlock(scope: !963, file: !252, line: 175, column: 6)
!980 = !DILocation(line: 175, column: 14, scope: !979)
!981 = !DILocation(line: 175, column: 30, scope: !979)
!982 = !DILocation(line: 175, column: 6, scope: !963)
!983 = !DILocation(line: 176, column: 3, scope: !984)
!984 = distinct !DILexicalBlock(scope: !979, file: !252, line: 175, column: 36)
!985 = !DILocation(line: 179, column: 6, scope: !986)
!986 = distinct !DILexicalBlock(scope: !963, file: !252, line: 179, column: 6)
!987 = !DILocation(line: 179, column: 14, scope: !986)
!988 = !DILocation(line: 179, column: 23, scope: !986)
!989 = !DILocation(line: 179, column: 28, scope: !986)
!990 = !DILocation(line: 179, column: 6, scope: !963)
!991 = !DILocation(line: 180, column: 3, scope: !992)
!992 = distinct !DILexicalBlock(scope: !986, file: !252, line: 179, column: 34)
!993 = !DILocation(line: 180, column: 11, scope: !992)
!994 = !DILocation(line: 180, column: 20, scope: !992)
!995 = !DILocation(line: 180, column: 25, scope: !992)
!996 = !DILocation(line: 181, column: 2, scope: !992)
!997 = !DILocation(line: 184, column: 19, scope: !963)
!998 = !DILocation(line: 184, column: 27, scope: !963)
!999 = !DILocation(line: 184, column: 17, scope: !963)
!1000 = !DILocation(line: 185, column: 2, scope: !963)
!1001 = !DILocation(line: 185, column: 10, scope: !963)
!1002 = !DILocation(line: 185, column: 26, scope: !963)
!1003 = !DILocation(line: 186, column: 32, scope: !963)
!1004 = !DILocation(line: 186, column: 48, scope: !963)
!1005 = !DILocation(line: 186, column: 53, scope: !963)
!1006 = !DILocation(line: 186, column: 9, scope: !963)
!1007 = !DILocation(line: 189, column: 17, scope: !963)
!1008 = !DILocation(line: 189, column: 25, scope: !963)
!1009 = !DILocation(line: 189, column: 2, scope: !963)
!1010 = !DILocation(line: 189, column: 10, scope: !963)
!1011 = !DILocation(line: 189, column: 15, scope: !963)
!1012 = !DILocation(line: 196, column: 7, scope: !972)
!1013 = !DILocation(line: 196, column: 23, scope: !972)
!1014 = !DILocation(line: 196, column: 28, scope: !972)
!1015 = !DILocation(line: 196, column: 41, scope: !972)
!1016 = !DILocation(line: 196, column: 59, scope: !972)
!1017 = !DILocation(line: 196, column: 6, scope: !963)
!1018 = !DILocation(line: 197, column: 3, scope: !971)
!1019 = !DILocation(line: 197, column: 17, scope: !971)
!1020 = !DILocation(line: 197, column: 29, scope: !971)
!1021 = !DILocation(line: 197, column: 37, scope: !971)
!1022 = !DILocation(line: 199, column: 42, scope: !971)
!1023 = !DILocation(line: 199, column: 3, scope: !971)
!1024 = !DILocation(line: 200, column: 7, scope: !1025)
!1025 = distinct !DILexicalBlock(scope: !971, file: !252, line: 200, column: 7)
!1026 = !DILocation(line: 200, column: 17, scope: !1025)
!1027 = !DILocation(line: 200, column: 7, scope: !971)
!1028 = !DILocation(line: 201, column: 15, scope: !1029)
!1029 = distinct !DILexicalBlock(scope: !1025, file: !252, line: 200, column: 23)
!1030 = !DILocation(line: 201, column: 4, scope: !1029)
!1031 = !DILocation(line: 202, column: 3, scope: !1029)
!1032 = !DILocation(line: 204, column: 2, scope: !972)
!1033 = !DILocation(line: 208, column: 31, scope: !963)
!1034 = !DILocation(line: 59, column: 47, scope: !708, inlinedAt: !1035)
!1035 = distinct !DILocation(line: 208, column: 2, scope: !963)
!1036 = !DILocation(line: 59, column: 68, scope: !708, inlinedAt: !1035)
!1037 = !DILocation(line: 61, column: 35, scope: !708, inlinedAt: !1035)
!1038 = !DILocation(line: 61, column: 2, scope: !708, inlinedAt: !1035)
!1039 = !DILocation(line: 61, column: 10, scope: !708, inlinedAt: !1035)
!1040 = !DILocation(line: 61, column: 15, scope: !708, inlinedAt: !1035)
!1041 = !DILocation(line: 61, column: 33, scope: !708, inlinedAt: !1035)
!1042 = !DILocation(line: 209, column: 31, scope: !963)
!1043 = !DILocation(line: 209, column: 2, scope: !963)
!1044 = !DILocation(line: 210, column: 17, scope: !963)
!1045 = !DILocation(line: 210, column: 2, scope: !963)
!1046 = !DILocation(line: 211, column: 2, scope: !963)
!1047 = !DILocation(line: 212, column: 1, scope: !963)
!1048 = distinct !DISubprogram(name: "k_mbox_get", scope: !252, file: !252, line: 400, type: !1049, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1051)
!1049 = !DISubroutineType(types: !1050)
!1050 = !{!183, !523, !214, !153, !382}
!1051 = !{!1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059}
!1052 = !DILocalVariable(name: "mbox", arg: 1, scope: !1048, file: !252, line: 400, type: !523)
!1053 = !DILocalVariable(name: "rx_msg", arg: 2, scope: !1048, file: !252, line: 400, type: !214)
!1054 = !DILocalVariable(name: "buffer", arg: 3, scope: !1048, file: !252, line: 400, type: !153)
!1055 = !DILocalVariable(name: "timeout", arg: 4, scope: !1048, file: !252, line: 401, type: !382)
!1056 = !DILocalVariable(name: "sending_thread", scope: !1048, file: !252, line: 403, type: !89)
!1057 = !DILocalVariable(name: "tx_msg", scope: !1048, file: !252, line: 404, type: !214)
!1058 = !DILocalVariable(name: "key", scope: !1048, file: !252, line: 405, type: !594)
!1059 = !DILocalVariable(name: "result", scope: !1048, file: !252, line: 406, type: !183)
!1060 = !DILocation(line: 400, column: 31, scope: !1048)
!1061 = !DILocation(line: 400, column: 56, scope: !1048)
!1062 = !DILocation(line: 400, column: 70, scope: !1048)
!1063 = !DILocation(line: 401, column: 21, scope: !1048)
!1064 = !DILocation(line: 403, column: 2, scope: !1048)
!1065 = !DILocation(line: 403, column: 19, scope: !1048)
!1066 = !DILocation(line: 404, column: 2, scope: !1048)
!1067 = !DILocation(line: 404, column: 21, scope: !1048)
!1068 = !DILocation(line: 405, column: 2, scope: !1048)
!1069 = !DILocation(line: 405, column: 19, scope: !1048)
!1070 = !DILocation(line: 406, column: 2, scope: !1048)
!1071 = !DILocation(line: 406, column: 6, scope: !1048)
!1072 = !DILocation(line: 409, column: 45, scope: !1048)
!1073 = !DILocation(line: 409, column: 2, scope: !1048)
!1074 = !DILocation(line: 409, column: 10, scope: !1048)
!1075 = !DILocation(line: 409, column: 27, scope: !1048)
!1076 = !DILocation(line: 412, column: 8, scope: !1048)
!1077 = !DILocation(line: 412, column: 21, scope: !1048)
!1078 = !DILocation(line: 412, column: 27, scope: !1048)
!1079 = !DILocation(line: 160, column: 94, scope: !632, inlinedAt: !1080)
!1080 = distinct !DILocation(line: 412, column: 8, scope: !1048)
!1081 = !DILocation(line: 162, column: 9, scope: !632, inlinedAt: !1080)
!1082 = !DILocation(line: 163, column: 19, scope: !632, inlinedAt: !1080)
!1083 = !DILocation(line: 44, column: 2, scope: !643, inlinedAt: !1084)
!1084 = distinct !DILocation(line: 169, column: 10, scope: !632, inlinedAt: !1080)
!1085 = !DILocation(line: 44, column: 15, scope: !643, inlinedAt: !1084)
!1086 = !DILocation(line: 48, column: 2, scope: !643, inlinedAt: !1084)
!1087 = !DILocation(line: 80, column: 9, scope: !643, inlinedAt: !1084)
!1088 = !DILocation(line: 81, column: 1, scope: !643, inlinedAt: !1084)
!1089 = !DILocation(line: 169, column: 8, scope: !632, inlinedAt: !1080)
!1090 = !DILocation(line: 171, column: 26, scope: !632, inlinedAt: !1080)
!1091 = !DILocation(line: 110, column: 94, scope: !658, inlinedAt: !1092)
!1092 = distinct !DILocation(line: 171, column: 2, scope: !632, inlinedAt: !1080)
!1093 = !DILocation(line: 112, column: 9, scope: !658, inlinedAt: !1092)
!1094 = !DILocation(line: 177, column: 27, scope: !632, inlinedAt: !1080)
!1095 = !DILocation(line: 121, column: 95, scope: !667, inlinedAt: !1096)
!1096 = distinct !DILocation(line: 177, column: 2, scope: !632, inlinedAt: !1080)
!1097 = !DILocation(line: 123, column: 9, scope: !667, inlinedAt: !1096)
!1098 = !DILocation(line: 179, column: 2, scope: !632, inlinedAt: !1080)
!1099 = !DILocation(line: 414, column: 2, scope: !1048)
!1100 = !DILocation(line: 414, column: 7, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1048, file: !252, line: 414, column: 5)
!1102 = !DILocation(line: 416, column: 50, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1048, file: !252, line: 416, column: 2)
!1104 = !DILocation(line: 416, column: 56, scope: !1103)
!1105 = !DILocation(line: 416, column: 71, scope: !1103)
!1106 = !DILocation(line: 416, column: 26, scope: !1103)
!1107 = !DILocation(line: 416, column: 79, scope: !1103)
!1108 = !DILocation(line: 416, column: 25, scope: !1103)
!1109 = !DILocation(line: 416, column: 159, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !1103, file: !252, line: 416, column: 88)
!1111 = !DILocation(line: 416, column: 165, scope: !1110)
!1112 = !DILocation(line: 416, column: 180, scope: !1110)
!1113 = !DILocation(line: 416, column: 135, scope: !1110)
!1114 = !DILocation(line: 416, column: 190, scope: !1110)
!1115 = !DILocation(line: 416, column: 88, scope: !1103)
!1116 = !DILocation(line: 416, column: 261, scope: !1110)
!1117 = !DILocation(line: 416, column: 22, scope: !1103)
!1118 = !DILocation(line: 416, column: 7, scope: !1103)
!1119 = !DILocation(line: 416, column: 270, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1103, file: !252, line: 416, column: 2)
!1121 = !DILocation(line: 416, column: 285, scope: !1120)
!1122 = !DILocation(line: 416, column: 2, scope: !1103)
!1123 = !DILocation(line: 417, column: 33, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1120, file: !252, line: 416, column: 658)
!1125 = !DILocation(line: 417, column: 49, scope: !1124)
!1126 = !DILocation(line: 417, column: 54, scope: !1124)
!1127 = !DILocation(line: 417, column: 10, scope: !1124)
!1128 = !DILocation(line: 419, column: 26, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1124, file: !252, line: 419, column: 7)
!1130 = !DILocation(line: 419, column: 34, scope: !1129)
!1131 = !DILocation(line: 419, column: 7, scope: !1129)
!1132 = !DILocation(line: 419, column: 42, scope: !1129)
!1133 = !DILocation(line: 419, column: 7, scope: !1124)
!1134 = !DILocation(line: 421, column: 20, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1129, file: !252, line: 419, column: 48)
!1136 = !DILocation(line: 421, column: 4, scope: !1135)
!1137 = !DILocation(line: 423, column: 19, scope: !1135)
!1138 = !DILocation(line: 423, column: 25, scope: !1135)
!1139 = !DILocation(line: 423, column: 4, scope: !1135)
!1140 = !DILocation(line: 235, column: 84, scope: !792, inlinedAt: !1141)
!1141 = distinct !DILocation(line: 423, column: 4, scope: !1135)
!1142 = !DILocation(line: 236, column: 23, scope: !792, inlinedAt: !1141)
!1143 = !DILocation(line: 238, column: 9, scope: !792, inlinedAt: !1141)
!1144 = !DILocation(line: 261, column: 22, scope: !792, inlinedAt: !1141)
!1145 = !DILocation(line: 88, column: 80, scope: !803, inlinedAt: !1146)
!1146 = distinct !DILocation(line: 261, column: 2, scope: !792, inlinedAt: !1141)
!1147 = !DILocation(line: 91, column: 6, scope: !810, inlinedAt: !1146)
!1148 = !DILocation(line: 91, column: 10, scope: !810, inlinedAt: !1146)
!1149 = !DILocation(line: 91, column: 6, scope: !803, inlinedAt: !1146)
!1150 = !DILocation(line: 92, column: 3, scope: !814, inlinedAt: !1146)
!1151 = !DILocation(line: 94, column: 2, scope: !803, inlinedAt: !1146)
!1152 = !DILocation(line: 114, column: 1, scope: !803, inlinedAt: !1146)
!1153 = !DILocation(line: 426, column: 37, scope: !1135)
!1154 = !DILocation(line: 426, column: 45, scope: !1135)
!1155 = !DILocation(line: 426, column: 13, scope: !1135)
!1156 = !DILocation(line: 426, column: 11, scope: !1135)
!1157 = !DILocation(line: 428, column: 4, scope: !1135)
!1158 = !DILocation(line: 428, column: 9, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !1135, file: !252, line: 428, column: 7)
!1160 = !DILocation(line: 429, column: 11, scope: !1135)
!1161 = !DILocation(line: 429, column: 4, scope: !1135)
!1162 = !DILocation(line: 431, column: 2, scope: !1124)
!1163 = !DILocation(line: 416, column: 310, scope: !1120)
!1164 = !DILocation(line: 416, column: 325, scope: !1120)
!1165 = !DILocation(line: 416, column: 309, scope: !1120)
!1166 = !DILocation(line: 416, column: 359, scope: !1120)
!1167 = !DILocation(line: 416, column: 365, scope: !1120)
!1168 = !DILocation(line: 416, column: 380, scope: !1120)
!1169 = !DILocation(line: 416, column: 390, scope: !1120)
!1170 = !DILocation(line: 416, column: 406, scope: !1120)
!1171 = !DILocation(line: 416, column: 411, scope: !1120)
!1172 = !DILocation(line: 416, column: 335, scope: !1120)
!1173 = !DILocation(line: 416, column: 425, scope: !1120)
!1174 = !DILocation(line: 416, column: 334, scope: !1120)
!1175 = !DILocation(line: 416, column: 505, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1120, file: !252, line: 416, column: 434)
!1177 = !DILocation(line: 416, column: 511, scope: !1176)
!1178 = !DILocation(line: 416, column: 526, scope: !1176)
!1179 = !DILocation(line: 416, column: 536, scope: !1176)
!1180 = !DILocation(line: 416, column: 552, scope: !1176)
!1181 = !DILocation(line: 416, column: 557, scope: !1176)
!1182 = !DILocation(line: 416, column: 481, scope: !1176)
!1183 = !DILocation(line: 416, column: 573, scope: !1176)
!1184 = !DILocation(line: 416, column: 434, scope: !1120)
!1185 = !DILocation(line: 416, column: 644, scope: !1176)
!1186 = !DILocation(line: 416, column: 306, scope: !1120)
!1187 = !DILocation(line: 416, column: 2, scope: !1120)
!1188 = distinct !{!1188, !1122, !1189}
!1189 = !DILocation(line: 431, column: 2, scope: !1103)
!1190 = !DILocation(line: 435, column: 17, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1048, file: !252, line: 435, column: 6)
!1192 = !DILocation(line: 435, column: 42, scope: !1191)
!1193 = !DILocation(line: 435, column: 23, scope: !1191)
!1194 = !DILocation(line: 435, column: 6, scope: !1048)
!1195 = !DILocation(line: 436, column: 3, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !1191, file: !252, line: 435, column: 56)
!1197 = !DILocation(line: 436, column: 8, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1196, file: !252, line: 436, column: 6)
!1199 = !DILocation(line: 439, column: 18, scope: !1196)
!1200 = !DILocation(line: 439, column: 24, scope: !1196)
!1201 = !DILocation(line: 439, column: 3, scope: !1196)
!1202 = !DILocation(line: 235, column: 84, scope: !792, inlinedAt: !1203)
!1203 = distinct !DILocation(line: 439, column: 3, scope: !1196)
!1204 = !DILocation(line: 236, column: 23, scope: !792, inlinedAt: !1203)
!1205 = !DILocation(line: 238, column: 9, scope: !792, inlinedAt: !1203)
!1206 = !DILocation(line: 261, column: 22, scope: !792, inlinedAt: !1203)
!1207 = !DILocation(line: 88, column: 80, scope: !803, inlinedAt: !1208)
!1208 = distinct !DILocation(line: 261, column: 2, scope: !792, inlinedAt: !1203)
!1209 = !DILocation(line: 91, column: 6, scope: !810, inlinedAt: !1208)
!1210 = !DILocation(line: 91, column: 10, scope: !810, inlinedAt: !1208)
!1211 = !DILocation(line: 91, column: 6, scope: !803, inlinedAt: !1208)
!1212 = !DILocation(line: 92, column: 3, scope: !814, inlinedAt: !1208)
!1213 = !DILocation(line: 94, column: 2, scope: !803, inlinedAt: !1208)
!1214 = !DILocation(line: 114, column: 1, scope: !803, inlinedAt: !1208)
!1215 = !DILocation(line: 440, column: 3, scope: !1196)
!1216 = !DILocation(line: 443, column: 2, scope: !1048)
!1217 = !DILocation(line: 443, column: 7, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1048, file: !252, line: 443, column: 5)
!1219 = !DILocation(line: 446, column: 44, scope: !1048)
!1220 = !DILocation(line: 446, column: 18, scope: !1048)
!1221 = !DILocation(line: 446, column: 27, scope: !1048)
!1222 = !DILocation(line: 446, column: 32, scope: !1048)
!1223 = !DILocation(line: 446, column: 42, scope: !1048)
!1224 = !DILocation(line: 447, column: 24, scope: !1048)
!1225 = !DILocation(line: 447, column: 30, scope: !1048)
!1226 = !DILocation(line: 447, column: 42, scope: !1048)
!1227 = !DILocation(line: 447, column: 48, scope: !1048)
!1228 = !DILocation(line: 447, column: 11, scope: !1048)
!1229 = !DILocation(line: 447, column: 9, scope: !1048)
!1230 = !DILocation(line: 450, column: 6, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1048, file: !252, line: 450, column: 6)
!1232 = !DILocation(line: 450, column: 13, scope: !1231)
!1233 = !DILocation(line: 450, column: 6, scope: !1048)
!1234 = !DILocation(line: 451, column: 36, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1231, file: !252, line: 450, column: 19)
!1236 = !DILocation(line: 451, column: 44, scope: !1235)
!1237 = !DILocation(line: 451, column: 12, scope: !1235)
!1238 = !DILocation(line: 451, column: 10, scope: !1235)
!1239 = !DILocation(line: 452, column: 2, scope: !1235)
!1240 = !DILocation(line: 454, column: 2, scope: !1048)
!1241 = !DILocation(line: 454, column: 7, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !1048, file: !252, line: 454, column: 5)
!1243 = !DILocation(line: 456, column: 9, scope: !1048)
!1244 = !DILocation(line: 456, column: 2, scope: !1048)
!1245 = !DILocation(line: 457, column: 1, scope: !1048)
!1246 = distinct !DISubprogram(name: "sys_dlist_peek_head", scope: !101, file: !101, line: 303, type: !1247, scopeLine: 304, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1250)
!1247 = !DISubroutineType(types: !1248)
!1248 = !{!248, !1249}
!1249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 32)
!1250 = !{!1251}
!1251 = !DILocalVariable(name: "list", arg: 1, scope: !1246, file: !101, line: 303, type: !1249)
!1252 = !DILocation(line: 303, column: 61, scope: !1246)
!1253 = !DILocation(line: 305, column: 28, scope: !1246)
!1254 = !DILocation(line: 305, column: 9, scope: !1246)
!1255 = !DILocation(line: 305, column: 49, scope: !1246)
!1256 = !DILocation(line: 305, column: 55, scope: !1246)
!1257 = !DILocation(line: 305, column: 2, scope: !1246)
!1258 = distinct !DISubprogram(name: "mbox_message_match", scope: !252, file: !252, line: 117, type: !1259, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1261)
!1259 = !DISubroutineType(types: !1260)
!1260 = !{!183, !214, !214}
!1261 = !{!1262, !1263, !1264}
!1262 = !DILocalVariable(name: "tx_msg", arg: 1, scope: !1258, file: !252, line: 117, type: !214)
!1263 = !DILocalVariable(name: "rx_msg", arg: 2, scope: !1258, file: !252, line: 118, type: !214)
!1264 = !DILocalVariable(name: "temp_info", scope: !1258, file: !252, line: 120, type: !150)
!1265 = !DILocation(line: 117, column: 50, scope: !1258)
!1266 = !DILocation(line: 118, column: 30, scope: !1258)
!1267 = !DILocation(line: 120, column: 2, scope: !1258)
!1268 = !DILocation(line: 120, column: 11, scope: !1258)
!1269 = !DILocation(line: 122, column: 8, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1258, file: !252, line: 122, column: 6)
!1271 = !DILocation(line: 122, column: 16, scope: !1270)
!1272 = !DILocation(line: 122, column: 33, scope: !1270)
!1273 = !DILocation(line: 122, column: 48, scope: !1270)
!1274 = !DILocation(line: 123, column: 8, scope: !1270)
!1275 = !DILocation(line: 123, column: 16, scope: !1270)
!1276 = !DILocation(line: 123, column: 36, scope: !1270)
!1277 = !DILocation(line: 123, column: 44, scope: !1270)
!1278 = !DILocation(line: 123, column: 33, scope: !1270)
!1279 = !DILocation(line: 123, column: 63, scope: !1270)
!1280 = !DILocation(line: 124, column: 8, scope: !1270)
!1281 = !DILocation(line: 124, column: 16, scope: !1270)
!1282 = !DILocation(line: 124, column: 33, scope: !1270)
!1283 = !DILocation(line: 124, column: 48, scope: !1270)
!1284 = !DILocation(line: 125, column: 8, scope: !1270)
!1285 = !DILocation(line: 125, column: 16, scope: !1270)
!1286 = !DILocation(line: 125, column: 36, scope: !1270)
!1287 = !DILocation(line: 125, column: 44, scope: !1270)
!1288 = !DILocation(line: 125, column: 33, scope: !1270)
!1289 = !DILocation(line: 122, column: 6, scope: !1258)
!1290 = !DILocation(line: 128, column: 30, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !1270, file: !252, line: 125, column: 64)
!1292 = !DILocation(line: 128, column: 38, scope: !1291)
!1293 = !DILocation(line: 128, column: 3, scope: !1291)
!1294 = !DILocation(line: 128, column: 11, scope: !1291)
!1295 = !DILocation(line: 128, column: 28, scope: !1291)
!1296 = !DILocation(line: 129, column: 30, scope: !1291)
!1297 = !DILocation(line: 129, column: 38, scope: !1291)
!1298 = !DILocation(line: 129, column: 3, scope: !1291)
!1299 = !DILocation(line: 129, column: 11, scope: !1291)
!1300 = !DILocation(line: 129, column: 28, scope: !1291)
!1301 = !DILocation(line: 132, column: 15, scope: !1291)
!1302 = !DILocation(line: 132, column: 23, scope: !1291)
!1303 = !DILocation(line: 132, column: 13, scope: !1291)
!1304 = !DILocation(line: 133, column: 18, scope: !1291)
!1305 = !DILocation(line: 133, column: 26, scope: !1291)
!1306 = !DILocation(line: 133, column: 3, scope: !1291)
!1307 = !DILocation(line: 133, column: 11, scope: !1291)
!1308 = !DILocation(line: 133, column: 16, scope: !1291)
!1309 = !DILocation(line: 134, column: 18, scope: !1291)
!1310 = !DILocation(line: 134, column: 3, scope: !1291)
!1311 = !DILocation(line: 134, column: 11, scope: !1291)
!1312 = !DILocation(line: 134, column: 16, scope: !1291)
!1313 = !DILocation(line: 137, column: 7, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1291, file: !252, line: 137, column: 7)
!1315 = !DILocation(line: 137, column: 15, scope: !1314)
!1316 = !DILocation(line: 137, column: 22, scope: !1314)
!1317 = !DILocation(line: 137, column: 30, scope: !1314)
!1318 = !DILocation(line: 137, column: 20, scope: !1314)
!1319 = !DILocation(line: 137, column: 7, scope: !1291)
!1320 = !DILocation(line: 138, column: 19, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1314, file: !252, line: 137, column: 36)
!1322 = !DILocation(line: 138, column: 27, scope: !1321)
!1323 = !DILocation(line: 138, column: 4, scope: !1321)
!1324 = !DILocation(line: 138, column: 12, scope: !1321)
!1325 = !DILocation(line: 138, column: 17, scope: !1321)
!1326 = !DILocation(line: 139, column: 3, scope: !1321)
!1327 = !DILocation(line: 142, column: 21, scope: !1291)
!1328 = !DILocation(line: 142, column: 29, scope: !1291)
!1329 = !DILocation(line: 142, column: 3, scope: !1291)
!1330 = !DILocation(line: 142, column: 11, scope: !1291)
!1331 = !DILocation(line: 142, column: 19, scope: !1291)
!1332 = !DILocation(line: 143, column: 3, scope: !1291)
!1333 = !DILocation(line: 143, column: 11, scope: !1291)
!1334 = !DILocation(line: 143, column: 22, scope: !1291)
!1335 = !DILocation(line: 143, column: 30, scope: !1291)
!1336 = !DILocation(line: 144, column: 7, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1291, file: !252, line: 144, column: 7)
!1338 = !DILocation(line: 144, column: 15, scope: !1337)
!1339 = !DILocation(line: 144, column: 23, scope: !1337)
!1340 = !DILocation(line: 144, column: 7, scope: !1291)
!1341 = !DILocation(line: 145, column: 4, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1337, file: !252, line: 144, column: 29)
!1343 = !DILocation(line: 145, column: 12, scope: !1342)
!1344 = !DILocation(line: 145, column: 21, scope: !1342)
!1345 = !DILocation(line: 145, column: 26, scope: !1342)
!1346 = !DILocation(line: 146, column: 3, scope: !1342)
!1347 = !DILocation(line: 146, column: 14, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !1337, file: !252, line: 146, column: 14)
!1349 = !DILocation(line: 146, column: 22, scope: !1348)
!1350 = !DILocation(line: 146, column: 31, scope: !1348)
!1351 = !DILocation(line: 146, column: 36, scope: !1348)
!1352 = !DILocation(line: 146, column: 14, scope: !1337)
!1353 = !DILocation(line: 147, column: 22, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1348, file: !252, line: 146, column: 42)
!1355 = !DILocation(line: 147, column: 30, scope: !1354)
!1356 = !DILocation(line: 147, column: 39, scope: !1354)
!1357 = !DILocation(line: 147, column: 4, scope: !1354)
!1358 = !DILocation(line: 147, column: 12, scope: !1354)
!1359 = !DILocation(line: 147, column: 20, scope: !1354)
!1360 = !DILocation(line: 148, column: 3, scope: !1354)
!1361 = !DILocation(line: 153, column: 29, scope: !1291)
!1362 = !DILocation(line: 153, column: 37, scope: !1291)
!1363 = !DILocation(line: 153, column: 3, scope: !1291)
!1364 = !DILocation(line: 153, column: 11, scope: !1291)
!1365 = !DILocation(line: 153, column: 27, scope: !1291)
!1366 = !DILocation(line: 155, column: 3, scope: !1291)
!1367 = !DILocation(line: 158, column: 2, scope: !1258)
!1368 = !DILocation(line: 159, column: 1, scope: !1258)
!1369 = !DISubprogram(name: "z_unpend_thread", scope: !1370, file: !1370, line: 54, type: !1371, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !204)
!1370 = !DIFile(filename: "kernel/include/ksched.h", directory: "/home/sri/zephyrproject/zephyr")
!1371 = !DISubroutineType(types: !1372)
!1372 = !{null, !89}
!1373 = distinct !DISubprogram(name: "mbox_message_data_check", scope: !252, file: !252, line: 385, type: !1374, scopeLine: 386, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1376)
!1374 = !DISubroutineType(types: !1375)
!1375 = !{!183, !214, !153}
!1376 = !{!1377, !1378}
!1377 = !DILocalVariable(name: "rx_msg", arg: 1, scope: !1373, file: !252, line: 385, type: !214)
!1378 = !DILocalVariable(name: "buffer", arg: 2, scope: !1373, file: !252, line: 385, type: !153)
!1379 = !DILocation(line: 385, column: 55, scope: !1373)
!1380 = !DILocation(line: 385, column: 69, scope: !1373)
!1381 = !DILocation(line: 387, column: 6, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !1373, file: !252, line: 387, column: 6)
!1383 = !DILocation(line: 387, column: 13, scope: !1382)
!1384 = !DILocation(line: 387, column: 6, scope: !1373)
!1385 = !DILocation(line: 389, column: 19, scope: !1386)
!1386 = distinct !DILexicalBlock(scope: !1382, file: !252, line: 387, column: 19)
!1387 = !DILocation(line: 389, column: 27, scope: !1386)
!1388 = !DILocation(line: 389, column: 3, scope: !1386)
!1389 = !DILocation(line: 390, column: 2, scope: !1386)
!1390 = !DILocation(line: 390, column: 13, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1382, file: !252, line: 390, column: 13)
!1392 = !DILocation(line: 390, column: 21, scope: !1391)
!1393 = !DILocation(line: 390, column: 26, scope: !1391)
!1394 = !DILocation(line: 390, column: 13, scope: !1382)
!1395 = !DILocation(line: 392, column: 24, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1391, file: !252, line: 390, column: 33)
!1397 = !DILocation(line: 392, column: 3, scope: !1396)
!1398 = !DILocation(line: 393, column: 2, scope: !1396)
!1399 = !DILocation(line: 397, column: 2, scope: !1373)
!1400 = distinct !DISubprogram(name: "sys_dlist_peek_next", scope: !101, file: !101, line: 350, type: !1401, scopeLine: 352, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1403)
!1401 = !DISubroutineType(types: !1402)
!1402 = !{!248, !1249, !248}
!1403 = !{!1404, !1405}
!1404 = !DILocalVariable(name: "list", arg: 1, scope: !1400, file: !101, line: 350, type: !1249)
!1405 = !DILocalVariable(name: "node", arg: 2, scope: !1400, file: !101, line: 351, type: !248)
!1406 = !DILocation(line: 350, column: 61, scope: !1400)
!1407 = !DILocation(line: 351, column: 26, scope: !1400)
!1408 = !DILocation(line: 353, column: 10, scope: !1400)
!1409 = !DILocation(line: 353, column: 15, scope: !1400)
!1410 = !DILocation(line: 353, column: 9, scope: !1400)
!1411 = !DILocation(line: 353, column: 61, scope: !1400)
!1412 = !DILocation(line: 353, column: 67, scope: !1400)
!1413 = !DILocation(line: 353, column: 32, scope: !1400)
!1414 = !DILocation(line: 353, column: 2, scope: !1400)
!1415 = !DISubprogram(name: "z_pend_curr", scope: !1370, file: !1370, line: 46, type: !1416, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !204)
!1416 = !DISubroutineType(types: !1417)
!1417 = !{!183, !635, !594, !125, !382}
!1418 = !DISubprogram(name: "z_timeout_expires", scope: !187, file: !187, line: 642, type: !1419, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !204)
!1419 = !DISubroutineType(types: !1420)
!1420 = !{!210, !1421}
!1421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1422, size: 32)
!1422 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !155)
!1423 = !DISubprogram(name: "z_timeout_remaining", scope: !187, file: !187, line: 643, type: !1419, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !204)
!1424 = distinct !DISubprogram(name: "sys_sflist_is_empty", scope: !433, file: !433, line: 335, type: !1425, scopeLine: 335, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1429)
!1425 = !DISubroutineType(types: !1426)
!1426 = !{!1427, !1428}
!1427 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 32)
!1429 = !{!1430}
!1430 = !DILocalVariable(name: "list", arg: 1, scope: !1424, file: !433, line: 335, type: !1428)
!1431 = !DILocation(line: 335, column: 55, scope: !1424)
!1432 = !DILocation(line: 335, column: 92, scope: !1424)
!1433 = !DILocation(line: 335, column: 71, scope: !1424)
!1434 = !DILocation(line: 335, column: 98, scope: !1424)
!1435 = !DILocation(line: 335, column: 63, scope: !1424)
!1436 = distinct !DISubprogram(name: "sys_sflist_peek_head", scope: !433, file: !433, line: 255, type: !1437, scopeLine: 256, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1439)
!1437 = !DISubroutineType(types: !1438)
!1438 = !{!437, !1428}
!1439 = !{!1440}
!1440 = !DILocalVariable(name: "list", arg: 1, scope: !1436, file: !433, line: 255, type: !1428)
!1441 = !DILocation(line: 255, column: 64, scope: !1436)
!1442 = !DILocation(line: 257, column: 9, scope: !1436)
!1443 = !DILocation(line: 257, column: 15, scope: !1436)
!1444 = !DILocation(line: 257, column: 2, scope: !1436)
!1445 = !DISubprogram(name: "z_init_thread_base", scope: !1446, file: !1446, line: 28, type: !1447, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !204)
!1446 = !DIFile(filename: "kernel/include/kernel_internal.h", directory: "/home/sri/zephyrproject/zephyr")
!1447 = !DISubroutineType(types: !1448)
!1448 = !{null, !1449, !183, !150, !151}
!1449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 32)
!1450 = distinct !DISubprogram(name: "k_stack_push", scope: !1451, file: !1451, line: 925, type: !1452, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1455)
!1451 = !DIFile(filename: "zephyr/include/generated/syscalls/kernel.h", directory: "/home/sri/zephyrproject/zephyr/build")
!1452 = !DISubroutineType(types: !1453)
!1453 = !{!183, !1454, !246}
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 32)
!1455 = !{!1456, !1457}
!1456 = !DILocalVariable(name: "stack", arg: 1, scope: !1450, file: !1451, line: 925, type: !1454)
!1457 = !DILocalVariable(name: "data", arg: 2, scope: !1450, file: !1451, line: 925, type: !246)
!1458 = !DILocation(line: 925, column: 49, scope: !1450)
!1459 = !DILocation(line: 925, column: 69, scope: !1450)
!1460 = !DILocation(line: 934, column: 2, scope: !1450)
!1461 = !DILocation(line: 934, column: 7, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1450, file: !1451, line: 934, column: 5)
!1463 = !{i64 147197}
!1464 = !DILocation(line: 934, column: 47, scope: !1462)
!1465 = !DILocation(line: 935, column: 29, scope: !1450)
!1466 = !DILocation(line: 935, column: 36, scope: !1450)
!1467 = !DILocation(line: 935, column: 9, scope: !1450)
!1468 = !DILocation(line: 935, column: 2, scope: !1450)
!1469 = !DISubprogram(name: "z_impl_k_stack_push", scope: !1451, file: !1451, line: 922, type: !1452, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !204)
!1470 = distinct !DISubprogram(name: "sys_dlist_init", scope: !101, file: !101, line: 203, type: !1471, scopeLine: 204, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1473)
!1471 = !DISubroutineType(types: !1472)
!1472 = !{null, !1249}
!1473 = !{!1474}
!1474 = !DILocalVariable(name: "list", arg: 1, scope: !1470, file: !101, line: 203, type: !1249)
!1475 = !DILocation(line: 203, column: 48, scope: !1470)
!1476 = !DILocation(line: 205, column: 30, scope: !1470)
!1477 = !DILocation(line: 205, column: 2, scope: !1470)
!1478 = !DILocation(line: 205, column: 8, scope: !1470)
!1479 = !DILocation(line: 205, column: 13, scope: !1470)
!1480 = !DILocation(line: 206, column: 30, scope: !1470)
!1481 = !DILocation(line: 206, column: 2, scope: !1470)
!1482 = !DILocation(line: 206, column: 8, scope: !1470)
!1483 = !DILocation(line: 206, column: 13, scope: !1470)
!1484 = !DILocation(line: 207, column: 1, scope: !1470)
!1485 = !DISubprogram(name: "z_ready_thread", scope: !1370, file: !1370, line: 65, type: !1371, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !204)
!1486 = !DISubprogram(name: "z_reschedule", scope: !1370, file: !1370, line: 51, type: !793, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !204)
!1487 = !DISubprogram(name: "z_pend_thread", scope: !1370, file: !1370, line: 49, type: !1488, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !204)
!1488 = !DISubroutineType(types: !1489)
!1489 = !{null, !89, !125, !382}
!1490 = distinct !DISubprogram(name: "k_stack_pop", scope: !1451, file: !1451, line: 942, type: !1491, scopeLine: 943, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1493)
!1491 = !DISubroutineType(types: !1492)
!1492 = !{!183, !1454, !249, !382}
!1493 = !{!1494, !1495, !1496}
!1494 = !DILocalVariable(name: "stack", arg: 1, scope: !1490, file: !1451, line: 942, type: !1454)
!1495 = !DILocalVariable(name: "data", arg: 2, scope: !1490, file: !1451, line: 942, type: !249)
!1496 = !DILocalVariable(name: "timeout", arg: 3, scope: !1490, file: !1451, line: 942, type: !382)
!1497 = !DILocation(line: 942, column: 48, scope: !1490)
!1498 = !DILocation(line: 942, column: 70, scope: !1490)
!1499 = !DILocation(line: 942, column: 88, scope: !1490)
!1500 = !DILocation(line: 952, column: 2, scope: !1490)
!1501 = !DILocation(line: 952, column: 7, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1490, file: !1451, line: 952, column: 5)
!1503 = !{i64 147587}
!1504 = !DILocation(line: 952, column: 47, scope: !1502)
!1505 = !DILocation(line: 953, column: 28, scope: !1490)
!1506 = !DILocation(line: 953, column: 35, scope: !1490)
!1507 = !DILocation(line: 953, column: 9, scope: !1490)
!1508 = !DILocation(line: 953, column: 2, scope: !1490)
!1509 = !DISubprogram(name: "z_impl_k_stack_pop", scope: !1451, file: !1451, line: 939, type: !1491, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !204)
!1510 = distinct !DISubprogram(name: "mbox_async_free", scope: !252, file: !252, line: 45, type: !1511, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1513)
!1511 = !DISubroutineType(types: !1512)
!1512 = !{null, !250}
!1513 = !{!1514}
!1514 = !DILocalVariable(name: "async", arg: 1, scope: !1510, file: !252, line: 45, type: !250)
!1515 = !DILocation(line: 45, column: 57, scope: !1510)
!1516 = !DILocation(line: 47, column: 46, scope: !1510)
!1517 = !DILocation(line: 47, column: 32, scope: !1510)
!1518 = !DILocation(line: 47, column: 2, scope: !1510)
!1519 = !DILocation(line: 48, column: 1, scope: !1510)
!1520 = distinct !DISubprogram(name: "k_sem_give", scope: !1451, file: !1451, line: 1110, type: !1521, scopeLine: 1111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1523)
!1521 = !DISubroutineType(types: !1522)
!1522 = !{null, !240}
!1523 = !{!1524}
!1524 = !DILocalVariable(name: "sem", arg: 1, scope: !1520, file: !1451, line: 1110, type: !240)
!1525 = !DILocation(line: 1110, column: 46, scope: !1520)
!1526 = !DILocation(line: 1119, column: 2, scope: !1520)
!1527 = !DILocation(line: 1119, column: 7, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !1520, file: !1451, line: 1119, column: 5)
!1529 = !{i64 150345}
!1530 = !DILocation(line: 1119, column: 47, scope: !1528)
!1531 = !DILocation(line: 1120, column: 20, scope: !1520)
!1532 = !DILocation(line: 1120, column: 2, scope: !1520)
!1533 = !DILocation(line: 1121, column: 1, scope: !1520)
!1534 = distinct !DISubprogram(name: "z_mark_thread_as_not_pending", scope: !1370, file: !1370, line: 167, type: !1371, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1535)
!1535 = !{!1536}
!1536 = !DILocalVariable(name: "thread", arg: 1, scope: !1534, file: !1370, line: 167, type: !89)
!1537 = !DILocation(line: 167, column: 66, scope: !1534)
!1538 = !DILocation(line: 169, column: 2, scope: !1534)
!1539 = !DILocation(line: 169, column: 10, scope: !1534)
!1540 = !DILocation(line: 169, column: 15, scope: !1534)
!1541 = !DILocation(line: 169, column: 28, scope: !1534)
!1542 = !DILocation(line: 170, column: 1, scope: !1534)
!1543 = distinct !DISubprogram(name: "z_reschedule_unlocked", scope: !1370, file: !1370, line: 75, type: !1544, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !204)
!1544 = !DISubroutineType(types: !1545)
!1545 = !{null}
!1546 = !DILocation(line: 44, column: 2, scope: !643, inlinedAt: !1547)
!1547 = distinct !DILocation(line: 77, column: 30, scope: !1543)
!1548 = !DILocation(line: 44, column: 15, scope: !643, inlinedAt: !1547)
!1549 = !DILocation(line: 48, column: 2, scope: !643, inlinedAt: !1547)
!1550 = !DILocation(line: 80, column: 9, scope: !643, inlinedAt: !1547)
!1551 = !DILocation(line: 81, column: 1, scope: !643, inlinedAt: !1547)
!1552 = !DILocation(line: 77, column: 9, scope: !1543)
!1553 = !DILocation(line: 78, column: 1, scope: !1543)
!1554 = !DISubprogram(name: "z_impl_k_sem_give", scope: !1451, file: !1451, line: 1107, type: !1521, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !204)
!1555 = !DISubprogram(name: "z_reschedule_irqlock", scope: !1370, file: !1370, line: 52, type: !1556, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !204)
!1556 = !DISubroutineType(types: !1557)
!1557 = !{null, !150}
!1558 = distinct !DISubprogram(name: "sys_dlist_is_empty", scope: !101, file: !101, line: 275, type: !1559, scopeLine: 276, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1561)
!1559 = !DISubroutineType(types: !1560)
!1560 = !{!1427, !1249}
!1561 = !{!1562}
!1562 = !DILocalVariable(name: "list", arg: 1, scope: !1558, file: !101, line: 275, type: !1249)
!1563 = !DILocation(line: 275, column: 53, scope: !1558)
!1564 = !DILocation(line: 277, column: 9, scope: !1558)
!1565 = !DILocation(line: 277, column: 15, scope: !1558)
!1566 = !DILocation(line: 277, column: 23, scope: !1558)
!1567 = !DILocation(line: 277, column: 20, scope: !1558)
!1568 = !DILocation(line: 277, column: 2, scope: !1558)
!1569 = distinct !DISubprogram(name: "sys_dlist_peek_next_no_check", scope: !101, file: !101, line: 334, type: !1401, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1570)
!1570 = !{!1571, !1572}
!1571 = !DILocalVariable(name: "list", arg: 1, scope: !1569, file: !101, line: 334, type: !1249)
!1572 = !DILocalVariable(name: "node", arg: 2, scope: !1569, file: !101, line: 335, type: !248)
!1573 = !DILocation(line: 334, column: 70, scope: !1569)
!1574 = !DILocation(line: 335, column: 21, scope: !1569)
!1575 = !DILocation(line: 337, column: 10, scope: !1569)
!1576 = !DILocation(line: 337, column: 18, scope: !1569)
!1577 = !DILocation(line: 337, column: 24, scope: !1569)
!1578 = !DILocation(line: 337, column: 15, scope: !1569)
!1579 = !DILocation(line: 337, column: 9, scope: !1569)
!1580 = !DILocation(line: 337, column: 45, scope: !1569)
!1581 = !DILocation(line: 337, column: 51, scope: !1569)
!1582 = !DILocation(line: 337, column: 2, scope: !1569)
