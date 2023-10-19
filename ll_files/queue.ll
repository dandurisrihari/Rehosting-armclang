; ModuleID = '../bc_files/queue.bc'
source_filename = "/home/sri/zephyrproject/zephyr/kernel/queue.c"
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
%struct.alloc_node = type { %struct._sfnode, ptr }
%struct._sfnode = type { i32 }
%struct.z_spinlock_key = type { i32 }
%struct._slist = type { ptr, ptr }

@_kernel = external dso_local global %struct.z_kernel, align 4

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_k_object_access_grant(ptr noundef %0, ptr noundef %1) #0 !dbg !144 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !249, metadata !DIExpression()), !dbg !251
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !250, metadata !DIExpression()), !dbg !252
  %5 = load ptr, ptr %3, align 4, !dbg !253
  %6 = load ptr, ptr %4, align 4, !dbg !254
  ret void, !dbg !255
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_k_object_release(ptr noundef %0) #0 !dbg !256 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !260, metadata !DIExpression()), !dbg !261
  %3 = load ptr, ptr %2, align 4, !dbg !262
  ret void, !dbg !263
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_impl_k_object_alloc(i8 noundef zeroext %0) #0 !dbg !264 {
  %2 = alloca i8, align 1
  store i8 %0, ptr %2, align 1
  call void @llvm.dbg.declare(metadata ptr %2, metadata !268, metadata !DIExpression()), !dbg !269
  %3 = load i8, ptr %2, align 1, !dbg !270
  ret ptr null, !dbg !271
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_impl_k_object_alloc_size(i8 noundef zeroext %0, i32 noundef %1) #0 !dbg !272 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8 %0, ptr %3, align 1
  call void @llvm.dbg.declare(metadata ptr %3, metadata !276, metadata !DIExpression()), !dbg !278
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !277, metadata !DIExpression()), !dbg !279
  %5 = load i8, ptr %3, align 1, !dbg !280
  %6 = load i32, ptr %4, align 4, !dbg !281
  ret ptr null, !dbg !282
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_thread_timeout_expires_ticks(ptr noundef %0) #0 !dbg !283 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !291, metadata !DIExpression()), !dbg !292
  %3 = load ptr, ptr %2, align 4, !dbg !293
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !294
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !295
  %6 = call i64 @z_timeout_expires(ptr noundef %5) #7, !dbg !296
  ret i64 %6, !dbg !297
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_thread_timeout_remaining_ticks(ptr noundef %0) #0 !dbg !298 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !300, metadata !DIExpression()), !dbg !301
  %3 = load ptr, ptr %2, align 4, !dbg !302
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !303
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !304
  %6 = call i64 @z_timeout_remaining(ptr noundef %5) #7, !dbg !305
  ret i64 %6, !dbg !306
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_timer_expires_ticks(ptr noundef %0) #0 !dbg !307 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !330, metadata !DIExpression()), !dbg !331
  %3 = load ptr, ptr %2, align 4, !dbg !332
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !333
  %5 = call i64 @z_timeout_expires(ptr noundef %4) #7, !dbg !334
  ret i64 %5, !dbg !335
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_timer_remaining_ticks(ptr noundef %0) #0 !dbg !336 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !338, metadata !DIExpression()), !dbg !339
  %3 = load ptr, ptr %2, align 4, !dbg !340
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !341
  %5 = call i64 @z_timeout_remaining(ptr noundef %4) #7, !dbg !342
  ret i64 %5, !dbg !343
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_k_timer_user_data_set(ptr noundef %0, ptr noundef %1) #0 !dbg !344 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !348, metadata !DIExpression()), !dbg !350
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !349, metadata !DIExpression()), !dbg !351
  %5 = load ptr, ptr %4, align 4, !dbg !352
  %6 = load ptr, ptr %3, align 4, !dbg !353
  %7 = getelementptr inbounds %struct.k_timer, ptr %6, i32 0, i32 6, !dbg !354
  store ptr %5, ptr %7, align 4, !dbg !355
  ret void, !dbg !356
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_impl_k_timer_user_data_get(ptr noundef %0) #0 !dbg !357 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !361, metadata !DIExpression()), !dbg !362
  %3 = load ptr, ptr %2, align 4, !dbg !363
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 6, !dbg !364
  %5 = load ptr, ptr %4, align 4, !dbg !364
  ret ptr %5, !dbg !365
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_queue_is_empty(ptr noundef %0) #0 !dbg !366 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !381, metadata !DIExpression()), !dbg !382
  %3 = load ptr, ptr %2, align 4, !dbg !383
  %4 = getelementptr inbounds %struct.k_queue, ptr %3, i32 0, i32 0, !dbg !384
  %5 = call zeroext i1 @sys_sflist_is_empty(ptr noundef %4) #7, !dbg !385
  %6 = zext i1 %5 to i32, !dbg !386
  ret i32 %6, !dbg !387
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_sem_count_get(ptr noundef %0) #0 !dbg !388 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !398, metadata !DIExpression()), !dbg !399
  %3 = load ptr, ptr %2, align 4, !dbg !400
  %4 = getelementptr inbounds %struct.k_sem, ptr %3, i32 0, i32 1, !dbg !401
  %5 = load i32, ptr %4, align 4, !dbg !401
  ret i32 %5, !dbg !402
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_msgq_num_free_get(ptr noundef %0) #0 !dbg !403 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !420, metadata !DIExpression()), !dbg !421
  %3 = load ptr, ptr %2, align 4, !dbg !422
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 3, !dbg !423
  %5 = load i32, ptr %4, align 4, !dbg !423
  %6 = load ptr, ptr %2, align 4, !dbg !424
  %7 = getelementptr inbounds %struct.k_msgq, ptr %6, i32 0, i32 8, !dbg !425
  %8 = load i32, ptr %7, align 4, !dbg !425
  %9 = sub i32 %5, %8, !dbg !426
  ret i32 %9, !dbg !427
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_msgq_num_used_get(ptr noundef %0) #0 !dbg !428 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !430, metadata !DIExpression()), !dbg !431
  %3 = load ptr, ptr %2, align 4, !dbg !432
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 8, !dbg !433
  %5 = load i32, ptr %4, align 4, !dbg !433
  ret i32 %5, !dbg !434
}

; Function Attrs: nounwind optsize
define hidden ptr @z_queue_node_peek(ptr noundef %0, i1 noundef zeroext %1) #1 !dbg !435 {
  %3 = alloca ptr, align 4
  %4 = alloca i8, align 1
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !439, metadata !DIExpression()), !dbg !445
  %8 = zext i1 %1 to i8
  store i8 %8, ptr %4, align 1
  call void @llvm.dbg.declare(metadata ptr %4, metadata !440, metadata !DIExpression()), !dbg !446
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #8, !dbg !447
  call void @llvm.dbg.declare(metadata ptr %5, metadata !441, metadata !DIExpression()), !dbg !448
  %9 = load ptr, ptr %3, align 4, !dbg !449
  %10 = icmp ne ptr %9, null, !dbg !450
  br i1 %10, label %11, label %28, !dbg !451

11:                                               ; preds = %2
  %12 = load ptr, ptr %3, align 4, !dbg !452
  %13 = call zeroext i8 @sys_sfnode_flags_get(ptr noundef %12) #7, !dbg !453
  %14 = zext i8 %13 to i32, !dbg !453
  %15 = icmp ne i32 %14, 0, !dbg !454
  br i1 %15, label %16, label %28, !dbg !455

16:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #8, !dbg !456
  call void @llvm.dbg.declare(metadata ptr %6, metadata !442, metadata !DIExpression()), !dbg !457
  %17 = load ptr, ptr %3, align 4, !dbg !458
  %18 = getelementptr inbounds i8, ptr %17, i32 0, !dbg !460
  store ptr %18, ptr %7, align 4, !dbg !461
  %19 = load ptr, ptr %7, align 4, !dbg !462
  store ptr %19, ptr %6, align 4, !dbg !463
  %20 = load ptr, ptr %6, align 4, !dbg !464
  %21 = getelementptr inbounds %struct.alloc_node, ptr %20, i32 0, i32 1, !dbg !465
  %22 = load ptr, ptr %21, align 4, !dbg !465
  store ptr %22, ptr %5, align 4, !dbg !466
  %23 = load i8, ptr %4, align 1, !dbg !467, !range !469, !noundef !242
  %24 = trunc i8 %23 to i1, !dbg !467
  br i1 %24, label %25, label %27, !dbg !470

25:                                               ; preds = %16
  %26 = load ptr, ptr %6, align 4, !dbg !471
  call void @k_free(ptr noundef %26) #7, !dbg !473
  br label %27, !dbg !474

27:                                               ; preds = %25, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #8, !dbg !475
  br label %30, !dbg !476

28:                                               ; preds = %11, %2
  %29 = load ptr, ptr %3, align 4, !dbg !477
  store ptr %29, ptr %5, align 4, !dbg !479
  br label %30

30:                                               ; preds = %28, %27
  %31 = load ptr, ptr %5, align 4, !dbg !480
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #8, !dbg !481
  ret ptr %31, !dbg !482
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i8 @sys_sfnode_flags_get(ptr noundef %0) #0 !dbg !483 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !487, metadata !DIExpression()), !dbg !488
  %3 = load ptr, ptr %2, align 4, !dbg !489
  %4 = getelementptr inbounds %struct._sfnode, ptr %3, i32 0, i32 0, !dbg !490
  %5 = load i32, ptr %4, align 4, !dbg !490
  %6 = and i32 %5, 3, !dbg !491
  %7 = trunc i32 %6 to i8, !dbg !489
  ret i8 %7, !dbg !492
}

; Function Attrs: optsize
declare !dbg !493 dso_local void @k_free(ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind optsize
define hidden void @z_impl_k_queue_init(ptr noundef %0) #1 !dbg !496 {
  %2 = alloca ptr, align 4
  %3 = alloca %struct.k_spinlock, align 1
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !500, metadata !DIExpression()), !dbg !501
  %4 = load ptr, ptr %2, align 4, !dbg !502
  %5 = getelementptr inbounds %struct.k_queue, ptr %4, i32 0, i32 0, !dbg !503
  call void @sys_sflist_init(ptr noundef %5) #7, !dbg !504
  %6 = load ptr, ptr %2, align 4, !dbg !505
  %7 = getelementptr inbounds %struct.k_queue, ptr %6, i32 0, i32 1, !dbg !506
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %7, ptr align 1 %3, i32 0, i1 false), !dbg !507
  %8 = load ptr, ptr %2, align 4, !dbg !508
  %9 = getelementptr inbounds %struct.k_queue, ptr %8, i32 0, i32 2, !dbg !509
  call void @z_waitq_init(ptr noundef %9) #7, !dbg !510
  br label %10, !dbg !511

10:                                               ; preds = %1
  br label %11, !dbg !512

11:                                               ; preds = %10
  %12 = load ptr, ptr %2, align 4, !dbg !514
  call void @z_object_init(ptr noundef %12) #7, !dbg !515
  ret void, !dbg !516
}

; Function Attrs: inlinehint nounwind optsize
define internal void @sys_sflist_init(ptr noundef %0) #0 !dbg !517 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !522, metadata !DIExpression()), !dbg !523
  %3 = load ptr, ptr %2, align 4, !dbg !524
  %4 = getelementptr inbounds %struct._sflist, ptr %3, i32 0, i32 0, !dbg !525
  store ptr null, ptr %4, align 4, !dbg !526
  %5 = load ptr, ptr %2, align 4, !dbg !527
  %6 = getelementptr inbounds %struct._sflist, ptr %5, i32 0, i32 1, !dbg !528
  store ptr null, ptr %6, align 4, !dbg !529
  ret void, !dbg !530
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: inlinehint nounwind optsize
define internal void @z_waitq_init(ptr noundef %0) #0 !dbg !531 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !536, metadata !DIExpression()), !dbg !537
  %3 = load ptr, ptr %2, align 4, !dbg !538
  %4 = getelementptr inbounds %struct._wait_q_t, ptr %3, i32 0, i32 0, !dbg !539
  call void @sys_dlist_init(ptr noundef %4) #7, !dbg !540
  ret void, !dbg !541
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_object_init(ptr noundef %0) #0 !dbg !542 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !544, metadata !DIExpression()), !dbg !545
  %3 = load ptr, ptr %2, align 4, !dbg !546
  ret void, !dbg !547
}

; Function Attrs: nounwind optsize
define hidden void @z_impl_k_queue_cancel_wait(ptr noundef %0) #1 !dbg !548 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.z_spinlock_key, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca %struct.z_spinlock_key, align 4
  %9 = alloca ptr, align 4
  store ptr %0, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !550, metadata !DIExpression()), !dbg !557
  br label %10, !dbg !558

10:                                               ; preds = %1
  br label %11, !dbg !559

11:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #8, !dbg !561
  call void @llvm.dbg.declare(metadata ptr %8, metadata !551, metadata !DIExpression()), !dbg !562
  %12 = load ptr, ptr %7, align 4, !dbg !563
  %13 = getelementptr inbounds %struct.k_queue, ptr %12, i32 0, i32 1, !dbg !564
  store ptr %13, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !565, metadata !DIExpression()), !dbg !572
  %14 = load ptr, ptr %6, align 4, !dbg !574
  call void @llvm.dbg.declare(metadata ptr %5, metadata !571, metadata !DIExpression()), !dbg !575
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #8, !dbg !576
  call void @llvm.dbg.declare(metadata ptr %4, metadata !582, metadata !DIExpression()), !dbg !584
  %15 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #8, !dbg !585, !srcloc !586
  store i32 %15, ptr %4, align 4, !dbg !585
  %16 = load i32, ptr %4, align 4, !dbg !587
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #8, !dbg !588
  store i32 %16, ptr %5, align 4, !dbg !589
  %17 = load ptr, ptr %6, align 4, !dbg !590
  store ptr %17, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !591, metadata !DIExpression()), !dbg !596
  %18 = load ptr, ptr %3, align 4, !dbg !598
  %19 = load ptr, ptr %6, align 4, !dbg !599
  store ptr %19, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !600, metadata !DIExpression()), !dbg !603
  %20 = load ptr, ptr %2, align 4, !dbg !605
  %21 = load i32, ptr %5, align 4, !dbg !606
  %22 = getelementptr inbounds %struct.z_spinlock_key, ptr %8, i32 0, i32 0, !dbg !607
  store i32 %21, ptr %22, align 4, !dbg !607
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #8, !dbg !608
  call void @llvm.dbg.declare(metadata ptr %9, metadata !556, metadata !DIExpression()), !dbg !609
  %23 = load ptr, ptr %7, align 4, !dbg !610
  %24 = getelementptr inbounds %struct.k_queue, ptr %23, i32 0, i32 2, !dbg !611
  %25 = call ptr @z_unpend_first_thread(ptr noundef %24) #7, !dbg !612
  store ptr %25, ptr %9, align 4, !dbg !613
  %26 = load ptr, ptr %9, align 4, !dbg !614
  %27 = icmp ne ptr %26, null, !dbg !616
  br i1 %27, label %28, label %30, !dbg !617

28:                                               ; preds = %11
  %29 = load ptr, ptr %9, align 4, !dbg !618
  call void @prepare_thread_to_run(ptr noundef %29, ptr noundef null) #7, !dbg !620
  br label %30, !dbg !621

30:                                               ; preds = %28, %11
  %31 = load ptr, ptr %7, align 4, !dbg !622
  call void @handle_poll_events(ptr noundef %31, i32 noundef 8) #7, !dbg !623
  %32 = load ptr, ptr %7, align 4, !dbg !624
  %33 = getelementptr inbounds %struct.k_queue, ptr %32, i32 0, i32 1, !dbg !625
  %34 = getelementptr inbounds %struct.z_spinlock_key, ptr %8, i32 0, i32 0, !dbg !626
  %35 = load [1 x i32], ptr %34, align 4, !dbg !626
  call void @z_reschedule(ptr noundef %33, [1 x i32] %35) #7, !dbg !626
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #8, !dbg !627
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #8, !dbg !627
  ret void, !dbg !627
}

; Function Attrs: optsize
declare !dbg !628 dso_local ptr @z_unpend_first_thread(ptr noundef) #4

; Function Attrs: nounwind optsize
define internal void @prepare_thread_to_run(ptr noundef %0, ptr noundef %1) #1 !dbg !632 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  store ptr %0, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !636, metadata !DIExpression()), !dbg !638
  store ptr %1, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !637, metadata !DIExpression()), !dbg !639
  %10 = load ptr, ptr %8, align 4, !dbg !640
  %11 = load ptr, ptr %9, align 4, !dbg !641
  store ptr %10, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !642, metadata !DIExpression()), !dbg !650
  store i32 0, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !648, metadata !DIExpression()), !dbg !652
  store ptr %11, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !649, metadata !DIExpression()), !dbg !653
  %12 = load ptr, ptr %5, align 4, !dbg !654
  %13 = load i32, ptr %6, align 4, !dbg !655
  store ptr %12, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !656, metadata !DIExpression()), !dbg !663
  store i32 %13, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !662, metadata !DIExpression()), !dbg !665
  %14 = load i32, ptr %4, align 4, !dbg !666
  %15 = load ptr, ptr %3, align 4, !dbg !667
  %16 = getelementptr inbounds %struct.k_thread, ptr %15, i32 0, i32 6, !dbg !668
  %17 = getelementptr inbounds %struct._thread_arch, ptr %16, i32 0, i32 1, !dbg !669
  store i32 %14, ptr %17, align 4, !dbg !670
  %18 = load ptr, ptr %7, align 4, !dbg !671
  %19 = load ptr, ptr %5, align 4, !dbg !672
  %20 = getelementptr inbounds %struct._thread_base, ptr %19, i32 0, i32 6, !dbg !673
  store ptr %18, ptr %20, align 4, !dbg !674
  %21 = load ptr, ptr %8, align 4, !dbg !675
  call void @z_ready_thread(ptr noundef %21) #7, !dbg !676
  ret void, !dbg !677
}

; Function Attrs: inlinehint nounwind optsize
define internal void @handle_poll_events(ptr noundef %0, i32 noundef %1) #0 !dbg !678 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !682, metadata !DIExpression()), !dbg !684
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !683, metadata !DIExpression()), !dbg !685
  %5 = load ptr, ptr %3, align 4, !dbg !686
  %6 = load i32, ptr %4, align 4, !dbg !687
  ret void, !dbg !688
}

; Function Attrs: optsize
declare !dbg !689 dso_local void @z_reschedule(ptr noundef, [1 x i32]) #4

; Function Attrs: nounwind optsize
define hidden void @k_queue_insert(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 !dbg !692 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !696, metadata !DIExpression()), !dbg !699
  store ptr %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !697, metadata !DIExpression()), !dbg !700
  store ptr %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !698, metadata !DIExpression()), !dbg !701
  br label %7, !dbg !702

7:                                                ; preds = %3
  br label %8, !dbg !703

8:                                                ; preds = %7
  %9 = load ptr, ptr %4, align 4, !dbg !705
  %10 = load ptr, ptr %5, align 4, !dbg !706
  %11 = load ptr, ptr %6, align 4, !dbg !707
  %12 = call i32 @queue_insert(ptr noundef %9, ptr noundef %10, ptr noundef %11, i1 noundef zeroext false, i1 noundef zeroext false) #7, !dbg !708
  br label %13, !dbg !709

13:                                               ; preds = %8
  br label %14, !dbg !710

14:                                               ; preds = %13
  ret void, !dbg !712
}

; Function Attrs: nounwind optsize
define internal i32 @queue_insert(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3, i1 noundef zeroext %4) #1 !dbg !713 {
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.z_spinlock_key, align 4
  %11 = alloca ptr, align 4
  %12 = alloca %struct.z_spinlock_key, align 4
  %13 = alloca ptr, align 4
  %14 = alloca i32, align 4
  %15 = alloca ptr, align 4
  %16 = alloca ptr, align 4
  %17 = alloca ptr, align 4
  %18 = alloca i8, align 1
  %19 = alloca i8, align 1
  %20 = alloca ptr, align 4
  %21 = alloca %struct.z_spinlock_key, align 4
  %22 = alloca i32, align 4
  %23 = alloca ptr, align 4
  store ptr %0, ptr %15, align 4
  call void @llvm.dbg.declare(metadata ptr %15, metadata !718, metadata !DIExpression()), !dbg !728
  store ptr %1, ptr %16, align 4
  call void @llvm.dbg.declare(metadata ptr %16, metadata !719, metadata !DIExpression()), !dbg !729
  store ptr %2, ptr %17, align 4
  call void @llvm.dbg.declare(metadata ptr %17, metadata !720, metadata !DIExpression()), !dbg !730
  %24 = zext i1 %3 to i8
  store i8 %24, ptr %18, align 1
  call void @llvm.dbg.declare(metadata ptr %18, metadata !721, metadata !DIExpression()), !dbg !731
  %25 = zext i1 %4 to i8
  store i8 %25, ptr %19, align 1
  call void @llvm.dbg.declare(metadata ptr %19, metadata !722, metadata !DIExpression()), !dbg !732
  call void @llvm.lifetime.start.p0(i64 4, ptr %20) #8, !dbg !733
  call void @llvm.dbg.declare(metadata ptr %20, metadata !723, metadata !DIExpression()), !dbg !734
  call void @llvm.lifetime.start.p0(i64 4, ptr %21) #8, !dbg !735
  call void @llvm.dbg.declare(metadata ptr %21, metadata !724, metadata !DIExpression()), !dbg !736
  %26 = load ptr, ptr %15, align 4, !dbg !737
  %27 = getelementptr inbounds %struct.k_queue, ptr %26, i32 0, i32 1, !dbg !738
  store ptr %27, ptr %13, align 4
  call void @llvm.dbg.declare(metadata ptr %13, metadata !565, metadata !DIExpression()), !dbg !739
  %28 = load ptr, ptr %13, align 4, !dbg !741
  call void @llvm.dbg.declare(metadata ptr %12, metadata !571, metadata !DIExpression()), !dbg !742
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #8, !dbg !743
  call void @llvm.dbg.declare(metadata ptr %9, metadata !582, metadata !DIExpression()), !dbg !745
  %29 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #8, !dbg !746, !srcloc !586
  store i32 %29, ptr %9, align 4, !dbg !746
  %30 = load i32, ptr %9, align 4, !dbg !747
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #8, !dbg !748
  store i32 %30, ptr %12, align 4, !dbg !749
  %31 = load ptr, ptr %13, align 4, !dbg !750
  store ptr %31, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !591, metadata !DIExpression()), !dbg !751
  %32 = load ptr, ptr %8, align 4, !dbg !753
  %33 = load ptr, ptr %13, align 4, !dbg !754
  store ptr %33, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !600, metadata !DIExpression()), !dbg !755
  %34 = load ptr, ptr %7, align 4, !dbg !757
  %35 = load i32, ptr %12, align 4, !dbg !758
  %36 = getelementptr inbounds %struct.z_spinlock_key, ptr %21, i32 0, i32 0, !dbg !759
  store i32 %35, ptr %36, align 4, !dbg !759
  br label %37, !dbg !760

37:                                               ; preds = %5
  br label %38, !dbg !761

38:                                               ; preds = %37
  br label %39, !dbg !761

39:                                               ; preds = %38
  %40 = load i8, ptr %19, align 1, !dbg !763, !range !469, !noundef !242
  %41 = trunc i8 %40 to i1, !dbg !763
  br i1 %41, label %42, label %46, !dbg !765

42:                                               ; preds = %39
  %43 = load ptr, ptr %15, align 4, !dbg !766
  %44 = getelementptr inbounds %struct.k_queue, ptr %43, i32 0, i32 0, !dbg !768
  %45 = call ptr @sys_sflist_peek_tail(ptr noundef %44) #7, !dbg !769
  store ptr %45, ptr %16, align 4, !dbg !770
  br label %46, !dbg !771

46:                                               ; preds = %42, %39
  %47 = load ptr, ptr %15, align 4, !dbg !772
  %48 = getelementptr inbounds %struct.k_queue, ptr %47, i32 0, i32 2, !dbg !773
  %49 = call ptr @z_unpend_first_thread(ptr noundef %48) #7, !dbg !774
  store ptr %49, ptr %20, align 4, !dbg !775
  %50 = load ptr, ptr %20, align 4, !dbg !776
  %51 = icmp ne ptr %50, null, !dbg !778
  br i1 %51, label %52, label %65, !dbg !779

52:                                               ; preds = %46
  br label %53, !dbg !780

53:                                               ; preds = %52
  br label %54, !dbg !782

54:                                               ; preds = %53
  br label %55, !dbg !782

55:                                               ; preds = %54
  %56 = load ptr, ptr %20, align 4, !dbg !784
  %57 = load ptr, ptr %17, align 4, !dbg !785
  call void @prepare_thread_to_run(ptr noundef %56, ptr noundef %57) #7, !dbg !786
  %58 = load ptr, ptr %15, align 4, !dbg !787
  %59 = getelementptr inbounds %struct.k_queue, ptr %58, i32 0, i32 1, !dbg !788
  %60 = getelementptr inbounds %struct.z_spinlock_key, ptr %21, i32 0, i32 0, !dbg !789
  %61 = load [1 x i32], ptr %60, align 4, !dbg !789
  call void @z_reschedule(ptr noundef %59, [1 x i32] %61) #7, !dbg !789
  br label %62, !dbg !790

62:                                               ; preds = %55
  br label %63, !dbg !791

63:                                               ; preds = %62
  br label %64, !dbg !791

64:                                               ; preds = %63
  store i32 0, ptr %14, align 4, !dbg !793
  store i32 1, ptr %22, align 4
  br label %114, !dbg !793

65:                                               ; preds = %46
  %66 = load i8, ptr %18, align 1, !dbg !794, !range !469, !noundef !242
  %67 = trunc i8 %66 to i1, !dbg !794
  br i1 %67, label %68, label %96, !dbg !795

68:                                               ; preds = %65
  call void @llvm.lifetime.start.p0(i64 4, ptr %23) #8, !dbg !796
  call void @llvm.dbg.declare(metadata ptr %23, metadata !725, metadata !DIExpression()), !dbg !797
  %69 = call ptr @z_thread_malloc(i32 noundef 8) #7, !dbg !798
  store ptr %69, ptr %23, align 4, !dbg !799
  %70 = load ptr, ptr %23, align 4, !dbg !800
  %71 = icmp eq ptr %70, null, !dbg !802
  br i1 %71, label %72, label %86, !dbg !803

72:                                               ; preds = %68
  %73 = load ptr, ptr %15, align 4, !dbg !804
  %74 = getelementptr inbounds %struct.k_queue, ptr %73, i32 0, i32 1, !dbg !806
  %75 = getelementptr inbounds %struct.z_spinlock_key, ptr %21, i32 0, i32 0, !dbg !807
  %76 = load [1 x i32], ptr %75, align 4, !dbg !807
  store [1 x i32] %76, ptr %10, align 4
  store ptr %74, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !808, metadata !DIExpression()), !dbg !812
  call void @llvm.dbg.declare(metadata ptr %10, metadata !811, metadata !DIExpression()), !dbg !814
  %77 = load ptr, ptr %11, align 4, !dbg !815
  %78 = load i32, ptr %10, align 4, !dbg !816
  store i32 %78, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !817, metadata !DIExpression()), !dbg !822
  %79 = load i32, ptr %6, align 4, !dbg !824
  %80 = icmp ne i32 %79, 0, !dbg !826
  br i1 %80, label %81, label %82, !dbg !827

81:                                               ; preds = %72
  br label %arch_irq_unlock.exit, !dbg !828

82:                                               ; preds = %72
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #8, !dbg !830, !srcloc !831
  br label %arch_irq_unlock.exit, !dbg !832

arch_irq_unlock.exit:                             ; preds = %81, %82
  br label %83, !dbg !833

83:                                               ; preds = %arch_irq_unlock.exit
  br label %84, !dbg !834

84:                                               ; preds = %83
  br label %85, !dbg !834

85:                                               ; preds = %84
  store i32 -6, ptr %14, align 4, !dbg !836
  store i32 1, ptr %22, align 4
  br label %93, !dbg !836

86:                                               ; preds = %68
  %87 = load ptr, ptr %17, align 4, !dbg !837
  %88 = load ptr, ptr %23, align 4, !dbg !838
  %89 = getelementptr inbounds %struct.alloc_node, ptr %88, i32 0, i32 1, !dbg !839
  store ptr %87, ptr %89, align 4, !dbg !840
  %90 = load ptr, ptr %23, align 4, !dbg !841
  %91 = getelementptr inbounds %struct.alloc_node, ptr %90, i32 0, i32 0, !dbg !842
  call void @sys_sfnode_init(ptr noundef %91, i8 noundef zeroext 1) #7, !dbg !843
  %92 = load ptr, ptr %23, align 4, !dbg !844
  store ptr %92, ptr %17, align 4, !dbg !845
  store i32 0, ptr %22, align 4, !dbg !846
  br label %93, !dbg !846

93:                                               ; preds = %86, %85
  call void @llvm.lifetime.end.p0(i64 4, ptr %23) #8, !dbg !846
  %94 = load i32, ptr %22, align 4
  switch i32 %94, label %114 [
    i32 0, label %95
  ]

95:                                               ; preds = %93
  br label %98, !dbg !847

96:                                               ; preds = %65
  %97 = load ptr, ptr %17, align 4, !dbg !848
  call void @sys_sfnode_init(ptr noundef %97, i8 noundef zeroext 0) #7, !dbg !850
  br label %98

98:                                               ; preds = %96, %95
  br label %99, !dbg !851

99:                                               ; preds = %98
  br label %100, !dbg !852

100:                                              ; preds = %99
  br label %101, !dbg !852

101:                                              ; preds = %100
  %102 = load ptr, ptr %15, align 4, !dbg !854
  %103 = getelementptr inbounds %struct.k_queue, ptr %102, i32 0, i32 0, !dbg !855
  %104 = load ptr, ptr %16, align 4, !dbg !856
  %105 = load ptr, ptr %17, align 4, !dbg !857
  call void @sys_sflist_insert(ptr noundef %103, ptr noundef %104, ptr noundef %105) #7, !dbg !858
  %106 = load ptr, ptr %15, align 4, !dbg !859
  call void @handle_poll_events(ptr noundef %106, i32 noundef 4) #7, !dbg !860
  %107 = load ptr, ptr %15, align 4, !dbg !861
  %108 = getelementptr inbounds %struct.k_queue, ptr %107, i32 0, i32 1, !dbg !862
  %109 = getelementptr inbounds %struct.z_spinlock_key, ptr %21, i32 0, i32 0, !dbg !863
  %110 = load [1 x i32], ptr %109, align 4, !dbg !863
  call void @z_reschedule(ptr noundef %108, [1 x i32] %110) #7, !dbg !863
  br label %111, !dbg !864

111:                                              ; preds = %101
  br label %112, !dbg !865

112:                                              ; preds = %111
  br label %113, !dbg !865

113:                                              ; preds = %112
  store i32 0, ptr %14, align 4, !dbg !867
  store i32 1, ptr %22, align 4
  br label %114, !dbg !867

114:                                              ; preds = %113, %93, %64
  call void @llvm.lifetime.end.p0(i64 4, ptr %21) #8, !dbg !868
  call void @llvm.lifetime.end.p0(i64 4, ptr %20) #8, !dbg !868
  %115 = load i32, ptr %14, align 4, !dbg !868
  ret i32 %115, !dbg !868
}

; Function Attrs: nounwind optsize
define hidden void @k_queue_append(ptr noundef %0, ptr noundef %1) #1 !dbg !869 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !873, metadata !DIExpression()), !dbg !875
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !874, metadata !DIExpression()), !dbg !876
  br label %5, !dbg !877

5:                                                ; preds = %2
  br label %6, !dbg !878

6:                                                ; preds = %5
  %7 = load ptr, ptr %3, align 4, !dbg !880
  %8 = load ptr, ptr %4, align 4, !dbg !881
  %9 = call i32 @queue_insert(ptr noundef %7, ptr noundef null, ptr noundef %8, i1 noundef zeroext false, i1 noundef zeroext true) #7, !dbg !882
  br label %10, !dbg !883

10:                                               ; preds = %6
  br label %11, !dbg !884

11:                                               ; preds = %10
  ret void, !dbg !886
}

; Function Attrs: nounwind optsize
define hidden void @k_queue_prepend(ptr noundef %0, ptr noundef %1) #1 !dbg !887 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !889, metadata !DIExpression()), !dbg !891
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !890, metadata !DIExpression()), !dbg !892
  br label %5, !dbg !893

5:                                                ; preds = %2
  br label %6, !dbg !894

6:                                                ; preds = %5
  %7 = load ptr, ptr %3, align 4, !dbg !896
  %8 = load ptr, ptr %4, align 4, !dbg !897
  %9 = call i32 @queue_insert(ptr noundef %7, ptr noundef null, ptr noundef %8, i1 noundef zeroext false, i1 noundef zeroext false) #7, !dbg !898
  br label %10, !dbg !899

10:                                               ; preds = %6
  br label %11, !dbg !900

11:                                               ; preds = %10
  ret void, !dbg !902
}

; Function Attrs: nounwind optsize
define hidden i32 @z_impl_k_queue_alloc_append(ptr noundef %0, ptr noundef %1) #1 !dbg !903 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !907, metadata !DIExpression()), !dbg !910
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !908, metadata !DIExpression()), !dbg !911
  br label %6, !dbg !912

6:                                                ; preds = %2
  br label %7, !dbg !913

7:                                                ; preds = %6
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #8, !dbg !915
  call void @llvm.dbg.declare(metadata ptr %5, metadata !909, metadata !DIExpression()), !dbg !916
  %8 = load ptr, ptr %3, align 4, !dbg !917
  %9 = load ptr, ptr %4, align 4, !dbg !918
  %10 = call i32 @queue_insert(ptr noundef %8, ptr noundef null, ptr noundef %9, i1 noundef zeroext true, i1 noundef zeroext true) #7, !dbg !919
  store i32 %10, ptr %5, align 4, !dbg !916
  br label %11, !dbg !920

11:                                               ; preds = %7
  br label %12, !dbg !921

12:                                               ; preds = %11
  br label %13, !dbg !921

13:                                               ; preds = %12
  %14 = load i32, ptr %5, align 4, !dbg !923
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #8, !dbg !924
  ret i32 %14, !dbg !925
}

; Function Attrs: nounwind optsize
define hidden i32 @z_impl_k_queue_alloc_prepend(ptr noundef %0, ptr noundef %1) #1 !dbg !926 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !928, metadata !DIExpression()), !dbg !931
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !929, metadata !DIExpression()), !dbg !932
  br label %6, !dbg !933

6:                                                ; preds = %2
  br label %7, !dbg !934

7:                                                ; preds = %6
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #8, !dbg !936
  call void @llvm.dbg.declare(metadata ptr %5, metadata !930, metadata !DIExpression()), !dbg !937
  %8 = load ptr, ptr %3, align 4, !dbg !938
  %9 = load ptr, ptr %4, align 4, !dbg !939
  %10 = call i32 @queue_insert(ptr noundef %8, ptr noundef null, ptr noundef %9, i1 noundef zeroext true, i1 noundef zeroext false) #7, !dbg !940
  store i32 %10, ptr %5, align 4, !dbg !937
  br label %11, !dbg !941

11:                                               ; preds = %7
  br label %12, !dbg !942

12:                                               ; preds = %11
  br label %13, !dbg !942

13:                                               ; preds = %12
  %14 = load i32, ptr %5, align 4, !dbg !944
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #8, !dbg !945
  ret i32 %14, !dbg !946
}

; Function Attrs: nounwind optsize
define hidden i32 @k_queue_append_list(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 !dbg !947 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.z_spinlock_key, align 4
  %8 = alloca ptr, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 4
  %11 = alloca ptr, align 4
  %12 = alloca ptr, align 4
  %13 = alloca %struct.z_spinlock_key, align 4
  %14 = alloca ptr, align 4
  store ptr %0, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !951, metadata !DIExpression()), !dbg !956
  store ptr %1, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !952, metadata !DIExpression()), !dbg !957
  store ptr %2, ptr %12, align 4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !953, metadata !DIExpression()), !dbg !958
  br label %15, !dbg !959

15:                                               ; preds = %3
  br label %16, !dbg !960

16:                                               ; preds = %15
  %17 = load ptr, ptr %11, align 4, !dbg !962
  %18 = icmp eq ptr %17, null, !dbg !964
  br i1 %18, label %22, label %19, !dbg !965

19:                                               ; preds = %16
  %20 = load ptr, ptr %12, align 4, !dbg !966
  %21 = icmp eq ptr %20, null, !dbg !967
  br i1 %21, label %22, label %25, !dbg !968

22:                                               ; preds = %19, %16
  br label %23, !dbg !969

23:                                               ; preds = %22
  br label %24, !dbg !971

24:                                               ; preds = %23
  store i32 -5, ptr %9, align 4, !dbg !973
  br label %77, !dbg !973

25:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 4, ptr %13) #8, !dbg !974
  call void @llvm.dbg.declare(metadata ptr %13, metadata !954, metadata !DIExpression()), !dbg !975
  %26 = load ptr, ptr %10, align 4, !dbg !976
  %27 = getelementptr inbounds %struct.k_queue, ptr %26, i32 0, i32 1, !dbg !977
  store ptr %27, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !565, metadata !DIExpression()), !dbg !978
  %28 = load ptr, ptr %8, align 4, !dbg !980
  call void @llvm.dbg.declare(metadata ptr %7, metadata !571, metadata !DIExpression()), !dbg !981
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #8, !dbg !982
  call void @llvm.dbg.declare(metadata ptr %6, metadata !582, metadata !DIExpression()), !dbg !984
  %29 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #8, !dbg !985, !srcloc !586
  store i32 %29, ptr %6, align 4, !dbg !985
  %30 = load i32, ptr %6, align 4, !dbg !986
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #8, !dbg !987
  store i32 %30, ptr %7, align 4, !dbg !988
  %31 = load ptr, ptr %8, align 4, !dbg !989
  store ptr %31, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !591, metadata !DIExpression()), !dbg !990
  %32 = load ptr, ptr %5, align 4, !dbg !992
  %33 = load ptr, ptr %8, align 4, !dbg !993
  store ptr %33, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !600, metadata !DIExpression()), !dbg !994
  %34 = load ptr, ptr %4, align 4, !dbg !996
  %35 = load i32, ptr %7, align 4, !dbg !997
  %36 = getelementptr inbounds %struct.z_spinlock_key, ptr %13, i32 0, i32 0, !dbg !998
  store i32 %35, ptr %36, align 4, !dbg !998
  call void @llvm.lifetime.start.p0(i64 4, ptr %14) #8, !dbg !999
  call void @llvm.dbg.declare(metadata ptr %14, metadata !955, metadata !DIExpression()), !dbg !1000
  store ptr null, ptr %14, align 4, !dbg !1000
  %37 = load ptr, ptr %11, align 4, !dbg !1001
  %38 = icmp ne ptr %37, null, !dbg !1003
  br i1 %38, label %39, label %43, !dbg !1004

39:                                               ; preds = %25
  %40 = load ptr, ptr %10, align 4, !dbg !1005
  %41 = getelementptr inbounds %struct.k_queue, ptr %40, i32 0, i32 2, !dbg !1007
  %42 = call ptr @z_unpend_first_thread(ptr noundef %41) #7, !dbg !1008
  store ptr %42, ptr %14, align 4, !dbg !1009
  br label %43, !dbg !1010

43:                                               ; preds = %39, %25
  br label %44, !dbg !1011

44:                                               ; preds = %52, %43
  %45 = load ptr, ptr %11, align 4, !dbg !1012
  %46 = icmp ne ptr %45, null, !dbg !1013
  br i1 %46, label %47, label %50, !dbg !1014

47:                                               ; preds = %44
  %48 = load ptr, ptr %14, align 4, !dbg !1015
  %49 = icmp ne ptr %48, null, !dbg !1016
  br label %50

50:                                               ; preds = %47, %44
  %51 = phi i1 [ false, %44 ], [ %49, %47 ], !dbg !1017
  br i1 %51, label %52, label %60, !dbg !1011

52:                                               ; preds = %50
  %53 = load ptr, ptr %14, align 4, !dbg !1018
  %54 = load ptr, ptr %11, align 4, !dbg !1020
  call void @prepare_thread_to_run(ptr noundef %53, ptr noundef %54) #7, !dbg !1021
  %55 = load ptr, ptr %11, align 4, !dbg !1022
  %56 = load ptr, ptr %55, align 4, !dbg !1023
  store ptr %56, ptr %11, align 4, !dbg !1024
  %57 = load ptr, ptr %10, align 4, !dbg !1025
  %58 = getelementptr inbounds %struct.k_queue, ptr %57, i32 0, i32 2, !dbg !1026
  %59 = call ptr @z_unpend_first_thread(ptr noundef %58) #7, !dbg !1027
  store ptr %59, ptr %14, align 4, !dbg !1028
  br label %44, !dbg !1011, !llvm.loop !1029

60:                                               ; preds = %50
  %61 = load ptr, ptr %11, align 4, !dbg !1031
  %62 = icmp ne ptr %61, null, !dbg !1033
  br i1 %62, label %63, label %68, !dbg !1034

63:                                               ; preds = %60
  %64 = load ptr, ptr %10, align 4, !dbg !1035
  %65 = getelementptr inbounds %struct.k_queue, ptr %64, i32 0, i32 0, !dbg !1037
  %66 = load ptr, ptr %11, align 4, !dbg !1038
  %67 = load ptr, ptr %12, align 4, !dbg !1039
  call void @sys_sflist_append_list(ptr noundef %65, ptr noundef %66, ptr noundef %67) #7, !dbg !1040
  br label %68, !dbg !1041

68:                                               ; preds = %63, %60
  br label %69, !dbg !1042

69:                                               ; preds = %68
  br label %70, !dbg !1043

70:                                               ; preds = %69
  br label %71, !dbg !1043

71:                                               ; preds = %70
  %72 = load ptr, ptr %10, align 4, !dbg !1045
  call void @handle_poll_events(ptr noundef %72, i32 noundef 4) #7, !dbg !1046
  %73 = load ptr, ptr %10, align 4, !dbg !1047
  %74 = getelementptr inbounds %struct.k_queue, ptr %73, i32 0, i32 1, !dbg !1048
  %75 = getelementptr inbounds %struct.z_spinlock_key, ptr %13, i32 0, i32 0, !dbg !1049
  %76 = load [1 x i32], ptr %75, align 4, !dbg !1049
  call void @z_reschedule(ptr noundef %74, [1 x i32] %76) #7, !dbg !1049
  store i32 0, ptr %9, align 4, !dbg !1050
  call void @llvm.lifetime.end.p0(i64 4, ptr %14) #8, !dbg !1051
  call void @llvm.lifetime.end.p0(i64 4, ptr %13) #8, !dbg !1051
  br label %77

77:                                               ; preds = %71, %24
  %78 = load i32, ptr %9, align 4, !dbg !1051
  ret i32 %78, !dbg !1051
}

; Function Attrs: inlinehint nounwind optsize
define internal void @sys_sflist_append_list(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !1052 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1056, metadata !DIExpression()), !dbg !1059
  store ptr %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1057, metadata !DIExpression()), !dbg !1060
  store ptr %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1058, metadata !DIExpression()), !dbg !1061
  %7 = load ptr, ptr %5, align 4, !dbg !1062
  %8 = icmp ne ptr %7, null, !dbg !1064
  br i1 %8, label %9, label %26, !dbg !1065

9:                                                ; preds = %3
  %10 = load ptr, ptr %6, align 4, !dbg !1066
  %11 = icmp ne ptr %10, null, !dbg !1067
  br i1 %11, label %12, label %26, !dbg !1068

12:                                               ; preds = %9
  %13 = load ptr, ptr %4, align 4, !dbg !1069
  %14 = call ptr @sys_sflist_peek_tail(ptr noundef %13) #7, !dbg !1072
  %15 = icmp eq ptr %14, null, !dbg !1073
  br i1 %15, label %16, label %19, !dbg !1074

16:                                               ; preds = %12
  %17 = load ptr, ptr %4, align 4, !dbg !1075
  %18 = load ptr, ptr %5, align 4, !dbg !1077
  call void @z_sflist_head_set(ptr noundef %17, ptr noundef %18) #7, !dbg !1078
  br label %23, !dbg !1079

19:                                               ; preds = %12
  %20 = load ptr, ptr %4, align 4, !dbg !1080
  %21 = call ptr @sys_sflist_peek_tail(ptr noundef %20) #7, !dbg !1082
  %22 = load ptr, ptr %5, align 4, !dbg !1083
  call void @z_sfnode_next_set(ptr noundef %21, ptr noundef %22) #7, !dbg !1084
  br label %23

23:                                               ; preds = %19, %16
  %24 = load ptr, ptr %4, align 4, !dbg !1085
  %25 = load ptr, ptr %6, align 4, !dbg !1086
  call void @z_sflist_tail_set(ptr noundef %24, ptr noundef %25) #7, !dbg !1087
  br label %26, !dbg !1088

26:                                               ; preds = %23, %9, %3
  ret void, !dbg !1089
}

; Function Attrs: nounwind optsize
define hidden i32 @k_queue_merge_slist(ptr noundef %0, ptr noundef %1) #1 !dbg !1090 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1107, metadata !DIExpression()), !dbg !1110
  store ptr %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1108, metadata !DIExpression()), !dbg !1111
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #8, !dbg !1112
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1109, metadata !DIExpression()), !dbg !1113
  br label %8, !dbg !1114

8:                                                ; preds = %2
  br label %9, !dbg !1115

9:                                                ; preds = %8
  br label %10, !dbg !1115

10:                                               ; preds = %9
  %11 = load ptr, ptr %5, align 4, !dbg !1117
  %12 = call zeroext i1 @sys_slist_is_empty(ptr noundef %11) #7, !dbg !1119
  br i1 %12, label %13, label %17, !dbg !1120

13:                                               ; preds = %10
  br label %14, !dbg !1121

14:                                               ; preds = %13
  br label %15, !dbg !1123

15:                                               ; preds = %14
  br label %16, !dbg !1123

16:                                               ; preds = %15
  store i32 -5, ptr %3, align 4, !dbg !1125
  store i32 1, ptr %7, align 4
  br label %38, !dbg !1125

17:                                               ; preds = %10
  %18 = load ptr, ptr %4, align 4, !dbg !1126
  %19 = load ptr, ptr %5, align 4, !dbg !1127
  %20 = getelementptr inbounds %struct._slist, ptr %19, i32 0, i32 0, !dbg !1128
  %21 = load ptr, ptr %20, align 4, !dbg !1128
  %22 = load ptr, ptr %5, align 4, !dbg !1129
  %23 = getelementptr inbounds %struct._slist, ptr %22, i32 0, i32 1, !dbg !1130
  %24 = load ptr, ptr %23, align 4, !dbg !1130
  %25 = call i32 @k_queue_append_list(ptr noundef %18, ptr noundef %21, ptr noundef %24) #7, !dbg !1131
  store i32 %25, ptr %6, align 4, !dbg !1132
  %26 = load i32, ptr %6, align 4, !dbg !1133
  %27 = icmp ne i32 %26, 0, !dbg !1135
  br i1 %27, label %28, label %33, !dbg !1136

28:                                               ; preds = %17
  br label %29, !dbg !1137

29:                                               ; preds = %28
  br label %30, !dbg !1139

30:                                               ; preds = %29
  br label %31, !dbg !1139

31:                                               ; preds = %30
  %32 = load i32, ptr %6, align 4, !dbg !1141
  store i32 %32, ptr %3, align 4, !dbg !1142
  store i32 1, ptr %7, align 4
  br label %38, !dbg !1142

33:                                               ; preds = %17
  %34 = load ptr, ptr %5, align 4, !dbg !1143
  call void @sys_slist_init(ptr noundef %34) #7, !dbg !1144
  br label %35, !dbg !1145

35:                                               ; preds = %33
  br label %36, !dbg !1146

36:                                               ; preds = %35
  br label %37, !dbg !1146

37:                                               ; preds = %36
  store i32 0, ptr %3, align 4, !dbg !1148
  store i32 1, ptr %7, align 4
  br label %38, !dbg !1148

38:                                               ; preds = %37, %31, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #8, !dbg !1149
  %39 = load i32, ptr %3, align 4, !dbg !1149
  ret i32 %39, !dbg !1149
}

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @sys_slist_is_empty(ptr noundef %0) #0 !dbg !1150 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1154, metadata !DIExpression()), !dbg !1155
  %3 = load ptr, ptr %2, align 4, !dbg !1156
  %4 = call ptr @sys_slist_peek_head(ptr noundef %3) #7, !dbg !1157
  %5 = icmp eq ptr %4, null, !dbg !1158
  ret i1 %5, !dbg !1159
}

; Function Attrs: inlinehint nounwind optsize
define internal void @sys_slist_init(ptr noundef %0) #0 !dbg !1160 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1164, metadata !DIExpression()), !dbg !1165
  %3 = load ptr, ptr %2, align 4, !dbg !1166
  %4 = getelementptr inbounds %struct._slist, ptr %3, i32 0, i32 0, !dbg !1167
  store ptr null, ptr %4, align 4, !dbg !1168
  %5 = load ptr, ptr %2, align 4, !dbg !1169
  %6 = getelementptr inbounds %struct._slist, ptr %5, i32 0, i32 1, !dbg !1170
  store ptr null, ptr %6, align 4, !dbg !1171
  ret void, !dbg !1172
}

; Function Attrs: nounwind optsize
define hidden ptr @z_impl_k_queue_get(ptr noundef %0, [1 x i64] %1) #1 !dbg !1173 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.z_spinlock_key, align 4
  %9 = alloca ptr, align 4
  %10 = alloca %struct.z_spinlock_key, align 4
  %11 = alloca ptr, align 4
  %12 = alloca %struct.z_spinlock_key, align 4
  %13 = alloca ptr, align 4
  %14 = alloca ptr, align 4
  %15 = alloca %struct.k_timeout_t, align 8
  %16 = alloca ptr, align 4
  %17 = alloca %struct.z_spinlock_key, align 4
  %18 = alloca ptr, align 4
  %19 = alloca ptr, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.k_timeout_t, align 8
  %22 = alloca i32, align 4
  %23 = getelementptr inbounds %struct.k_timeout_t, ptr %15, i32 0, i32 0
  store [1 x i64] %1, ptr %23, align 8
  store ptr %0, ptr %16, align 4
  call void @llvm.dbg.declare(metadata ptr %16, metadata !1177, metadata !DIExpression()), !dbg !1185
  call void @llvm.dbg.declare(metadata ptr %15, metadata !1178, metadata !DIExpression()), !dbg !1186
  call void @llvm.lifetime.start.p0(i64 4, ptr %17) #8, !dbg !1187
  call void @llvm.dbg.declare(metadata ptr %17, metadata !1179, metadata !DIExpression()), !dbg !1188
  %24 = load ptr, ptr %16, align 4, !dbg !1189
  %25 = getelementptr inbounds %struct.k_queue, ptr %24, i32 0, i32 1, !dbg !1190
  store ptr %25, ptr %13, align 4
  call void @llvm.dbg.declare(metadata ptr %13, metadata !565, metadata !DIExpression()), !dbg !1191
  %26 = load ptr, ptr %13, align 4, !dbg !1193
  call void @llvm.dbg.declare(metadata ptr %12, metadata !571, metadata !DIExpression()), !dbg !1194
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #8, !dbg !1195
  call void @llvm.dbg.declare(metadata ptr %7, metadata !582, metadata !DIExpression()), !dbg !1197
  %27 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #8, !dbg !1198, !srcloc !586
  store i32 %27, ptr %7, align 4, !dbg !1198
  %28 = load i32, ptr %7, align 4, !dbg !1199
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #8, !dbg !1200
  store i32 %28, ptr %12, align 4, !dbg !1201
  %29 = load ptr, ptr %13, align 4, !dbg !1202
  store ptr %29, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !591, metadata !DIExpression()), !dbg !1203
  %30 = load ptr, ptr %6, align 4, !dbg !1205
  %31 = load ptr, ptr %13, align 4, !dbg !1206
  store ptr %31, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !600, metadata !DIExpression()), !dbg !1207
  %32 = load ptr, ptr %5, align 4, !dbg !1209
  %33 = load i32, ptr %12, align 4, !dbg !1210
  %34 = getelementptr inbounds %struct.z_spinlock_key, ptr %17, i32 0, i32 0, !dbg !1211
  store i32 %33, ptr %34, align 4, !dbg !1211
  call void @llvm.lifetime.start.p0(i64 4, ptr %18) #8, !dbg !1212
  call void @llvm.dbg.declare(metadata ptr %18, metadata !1180, metadata !DIExpression()), !dbg !1213
  br label %35, !dbg !1214

35:                                               ; preds = %2
  br label %36, !dbg !1215

36:                                               ; preds = %35
  br label %37, !dbg !1215

37:                                               ; preds = %36
  %38 = load ptr, ptr %16, align 4, !dbg !1217
  %39 = getelementptr inbounds %struct.k_queue, ptr %38, i32 0, i32 0, !dbg !1218
  %40 = call zeroext i1 @sys_sflist_is_empty(ptr noundef %39) #7, !dbg !1219
  %41 = xor i1 %40, true, !dbg !1220
  %42 = xor i1 %41, true, !dbg !1221
  %43 = xor i1 %42, true, !dbg !1222
  %44 = zext i1 %43 to i32, !dbg !1223
  %45 = call i32 @llvm.expect.i32(i32 %44, i32 1), !dbg !1224
  %46 = icmp ne i32 %45, 0, !dbg !1225
  br i1 %46, label %47, label %67, !dbg !1226

47:                                               ; preds = %37
  call void @llvm.lifetime.start.p0(i64 4, ptr %19) #8, !dbg !1227
  call void @llvm.dbg.declare(metadata ptr %19, metadata !1181, metadata !DIExpression()), !dbg !1228
  %48 = load ptr, ptr %16, align 4, !dbg !1229
  %49 = getelementptr inbounds %struct.k_queue, ptr %48, i32 0, i32 0, !dbg !1230
  %50 = call ptr @sys_sflist_get_not_empty(ptr noundef %49) #7, !dbg !1231
  store ptr %50, ptr %19, align 4, !dbg !1232
  %51 = load ptr, ptr %19, align 4, !dbg !1233
  %52 = call ptr @z_queue_node_peek(ptr noundef %51, i1 noundef zeroext true) #7, !dbg !1234
  store ptr %52, ptr %18, align 4, !dbg !1235
  %53 = load ptr, ptr %16, align 4, !dbg !1236
  %54 = getelementptr inbounds %struct.k_queue, ptr %53, i32 0, i32 1, !dbg !1237
  %55 = getelementptr inbounds %struct.z_spinlock_key, ptr %17, i32 0, i32 0, !dbg !1238
  %56 = load [1 x i32], ptr %55, align 4, !dbg !1238
  store [1 x i32] %56, ptr %8, align 4
  store ptr %54, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !808, metadata !DIExpression()), !dbg !1239
  call void @llvm.dbg.declare(metadata ptr %8, metadata !811, metadata !DIExpression()), !dbg !1241
  %57 = load ptr, ptr %9, align 4, !dbg !1242
  %58 = load i32, ptr %8, align 4, !dbg !1243
  store i32 %58, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !817, metadata !DIExpression()), !dbg !1244
  %59 = load i32, ptr %4, align 4, !dbg !1246
  %60 = icmp ne i32 %59, 0, !dbg !1247
  br i1 %60, label %61, label %62, !dbg !1248

61:                                               ; preds = %47
  br label %arch_irq_unlock.exit, !dbg !1249

62:                                               ; preds = %47
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #8, !dbg !1250, !srcloc !831
  br label %arch_irq_unlock.exit, !dbg !1251

arch_irq_unlock.exit:                             ; preds = %61, %62
  br label %63, !dbg !1252

63:                                               ; preds = %arch_irq_unlock.exit
  br label %64, !dbg !1253

64:                                               ; preds = %63
  br label %65, !dbg !1253

65:                                               ; preds = %64
  %66 = load ptr, ptr %18, align 4, !dbg !1255
  store ptr %66, ptr %14, align 4, !dbg !1256
  store i32 1, ptr %20, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %19) #8, !dbg !1257
  br label %112

67:                                               ; preds = %37
  br label %68, !dbg !1258

68:                                               ; preds = %67
  br label %69, !dbg !1259

69:                                               ; preds = %68
  br label %70, !dbg !1259

70:                                               ; preds = %69
  %71 = getelementptr inbounds %struct.k_timeout_t, ptr %15, i32 0, i32 0, !dbg !1261
  %72 = load i64, ptr %71, align 8, !dbg !1261
  %73 = getelementptr inbounds %struct.k_timeout_t, ptr %21, i32 0, i32 0, !dbg !1263
  store i64 0, ptr %73, align 8, !dbg !1263
  %74 = icmp eq i64 %72, 0, !dbg !1264
  br i1 %74, label %75, label %89, !dbg !1265

75:                                               ; preds = %70
  %76 = load ptr, ptr %16, align 4, !dbg !1266
  %77 = getelementptr inbounds %struct.k_queue, ptr %76, i32 0, i32 1, !dbg !1268
  %78 = getelementptr inbounds %struct.z_spinlock_key, ptr %17, i32 0, i32 0, !dbg !1269
  %79 = load [1 x i32], ptr %78, align 4, !dbg !1269
  store [1 x i32] %79, ptr %10, align 4
  store ptr %77, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !808, metadata !DIExpression()), !dbg !1270
  call void @llvm.dbg.declare(metadata ptr %10, metadata !811, metadata !DIExpression()), !dbg !1272
  %80 = load ptr, ptr %11, align 4, !dbg !1273
  %81 = load i32, ptr %10, align 4, !dbg !1274
  store i32 %81, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !817, metadata !DIExpression()), !dbg !1275
  %82 = load i32, ptr %3, align 4, !dbg !1277
  %83 = icmp ne i32 %82, 0, !dbg !1278
  br i1 %83, label %84, label %85, !dbg !1279

84:                                               ; preds = %75
  br label %arch_irq_unlock.exit1, !dbg !1280

85:                                               ; preds = %75
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #8, !dbg !1281, !srcloc !831
  br label %arch_irq_unlock.exit1, !dbg !1282

arch_irq_unlock.exit1:                            ; preds = %84, %85
  br label %86, !dbg !1283

86:                                               ; preds = %arch_irq_unlock.exit1
  br label %87, !dbg !1284

87:                                               ; preds = %86
  br label %88, !dbg !1284

88:                                               ; preds = %87
  store ptr null, ptr %14, align 4, !dbg !1286
  store i32 1, ptr %20, align 4
  br label %112, !dbg !1286

89:                                               ; preds = %70
  call void @llvm.lifetime.start.p0(i64 4, ptr %22) #8, !dbg !1287
  call void @llvm.dbg.declare(metadata ptr %22, metadata !1184, metadata !DIExpression()), !dbg !1288
  %90 = load ptr, ptr %16, align 4, !dbg !1289
  %91 = getelementptr inbounds %struct.k_queue, ptr %90, i32 0, i32 1, !dbg !1290
  %92 = load ptr, ptr %16, align 4, !dbg !1291
  %93 = getelementptr inbounds %struct.k_queue, ptr %92, i32 0, i32 2, !dbg !1292
  %94 = getelementptr inbounds %struct.z_spinlock_key, ptr %17, i32 0, i32 0, !dbg !1293
  %95 = load [1 x i32], ptr %94, align 4, !dbg !1293
  %96 = getelementptr inbounds %struct.k_timeout_t, ptr %15, i32 0, i32 0, !dbg !1293
  %97 = load [1 x i64], ptr %96, align 8, !dbg !1293
  %98 = call i32 @z_pend_curr(ptr noundef %91, [1 x i32] %95, ptr noundef %93, [1 x i64] %97) #7, !dbg !1293
  store i32 %98, ptr %22, align 4, !dbg !1288
  br label %99, !dbg !1294

99:                                               ; preds = %89
  br label %100, !dbg !1295

100:                                              ; preds = %99
  br label %101, !dbg !1295

101:                                              ; preds = %100
  %102 = load i32, ptr %22, align 4, !dbg !1297
  %103 = icmp ne i32 %102, 0, !dbg !1298
  br i1 %103, label %104, label %105, !dbg !1299

104:                                              ; preds = %101
  br label %110, !dbg !1299

105:                                              ; preds = %101
  %106 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !1300
  %107 = getelementptr inbounds %struct.k_thread, ptr %106, i32 0, i32 0, !dbg !1301
  %108 = getelementptr inbounds %struct._thread_base, ptr %107, i32 0, i32 6, !dbg !1302
  %109 = load ptr, ptr %108, align 4, !dbg !1302
  br label %110, !dbg !1299

110:                                              ; preds = %105, %104
  %111 = phi ptr [ null, %104 ], [ %109, %105 ], !dbg !1299
  store ptr %111, ptr %14, align 4, !dbg !1303
  store i32 1, ptr %20, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %22) #8, !dbg !1304
  br label %112

112:                                              ; preds = %110, %88, %65
  call void @llvm.lifetime.end.p0(i64 4, ptr %18) #8, !dbg !1304
  call void @llvm.lifetime.end.p0(i64 4, ptr %17) #8, !dbg !1304
  %113 = load ptr, ptr %14, align 4, !dbg !1304
  ret ptr %113, !dbg !1304
}

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @sys_sflist_is_empty(ptr noundef %0) #0 !dbg !1305 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1309, metadata !DIExpression()), !dbg !1310
  %3 = load ptr, ptr %2, align 4, !dbg !1311
  %4 = call ptr @sys_sflist_peek_head(ptr noundef %3) #7, !dbg !1312
  %5 = icmp eq ptr %4, null, !dbg !1313
  ret i1 %5, !dbg !1314
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i32 @llvm.expect.i32(i32, i32) #6

; Function Attrs: inlinehint nounwind optsize
define internal ptr @sys_sflist_get_not_empty(ptr noundef %0) #0 !dbg !1315 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1319, metadata !DIExpression()), !dbg !1321
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #8, !dbg !1322
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1320, metadata !DIExpression()), !dbg !1323
  %4 = load ptr, ptr %2, align 4, !dbg !1324
  %5 = call ptr @sys_sflist_peek_head(ptr noundef %4) #7, !dbg !1325
  store ptr %5, ptr %3, align 4, !dbg !1323
  %6 = load ptr, ptr %2, align 4, !dbg !1326
  %7 = load ptr, ptr %3, align 4, !dbg !1327
  %8 = call ptr @z_sfnode_next_peek(ptr noundef %7) #7, !dbg !1328
  call void @z_sflist_head_set(ptr noundef %6, ptr noundef %8) #7, !dbg !1329
  %9 = load ptr, ptr %2, align 4, !dbg !1330
  %10 = call ptr @sys_sflist_peek_tail(ptr noundef %9) #7, !dbg !1332
  %11 = load ptr, ptr %3, align 4, !dbg !1333
  %12 = icmp eq ptr %10, %11, !dbg !1334
  br i1 %12, label %13, label %17, !dbg !1335

13:                                               ; preds = %1
  %14 = load ptr, ptr %2, align 4, !dbg !1336
  %15 = load ptr, ptr %2, align 4, !dbg !1338
  %16 = call ptr @sys_sflist_peek_head(ptr noundef %15) #7, !dbg !1339
  call void @z_sflist_tail_set(ptr noundef %14, ptr noundef %16) #7, !dbg !1340
  br label %17, !dbg !1341

17:                                               ; preds = %13, %1
  %18 = load ptr, ptr %3, align 4, !dbg !1342
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #8, !dbg !1343
  ret ptr %18, !dbg !1344
}

; Function Attrs: optsize
declare !dbg !1345 dso_local i32 @z_pend_curr(ptr noundef, [1 x i32], ptr noundef, [1 x i64]) #4

; Function Attrs: nounwind optsize
define hidden zeroext i1 @k_queue_remove(ptr noundef %0, ptr noundef %1) #1 !dbg !1348 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i8, align 1
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1352, metadata !DIExpression()), !dbg !1355
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1353, metadata !DIExpression()), !dbg !1356
  br label %6, !dbg !1357

6:                                                ; preds = %2
  br label %7, !dbg !1358

7:                                                ; preds = %6
  call void @llvm.lifetime.start.p0(i64 1, ptr %5) #8, !dbg !1360
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1354, metadata !DIExpression()), !dbg !1361
  %8 = load ptr, ptr %3, align 4, !dbg !1362
  %9 = getelementptr inbounds %struct.k_queue, ptr %8, i32 0, i32 0, !dbg !1363
  %10 = load ptr, ptr %4, align 4, !dbg !1364
  %11 = call zeroext i1 @sys_sflist_find_and_remove(ptr noundef %9, ptr noundef %10) #7, !dbg !1365
  %12 = zext i1 %11 to i8, !dbg !1361
  store i8 %12, ptr %5, align 1, !dbg !1361
  br label %13, !dbg !1366

13:                                               ; preds = %7
  br label %14, !dbg !1367

14:                                               ; preds = %13
  br label %15, !dbg !1367

15:                                               ; preds = %14
  %16 = load i8, ptr %5, align 1, !dbg !1369, !range !469, !noundef !242
  %17 = trunc i8 %16 to i1, !dbg !1369
  call void @llvm.lifetime.end.p0(i64 1, ptr %5) #8, !dbg !1370
  ret i1 %17, !dbg !1371
}

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @sys_sflist_find_and_remove(ptr noundef %0, ptr noundef %1) #0 !dbg !1372 {
  %3 = alloca i1, align 1
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1376, metadata !DIExpression()), !dbg !1380
  store ptr %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1377, metadata !DIExpression()), !dbg !1381
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #8, !dbg !1382
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1378, metadata !DIExpression()), !dbg !1383
  store ptr null, ptr %6, align 4, !dbg !1383
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #8, !dbg !1384
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1379, metadata !DIExpression()), !dbg !1385
  %9 = load ptr, ptr %4, align 4, !dbg !1386
  %10 = call ptr @sys_sflist_peek_head(ptr noundef %9) #7, !dbg !1388
  store ptr %10, ptr %7, align 4, !dbg !1389
  br label %11, !dbg !1390

11:                                               ; preds = %24, %2
  %12 = load ptr, ptr %7, align 4, !dbg !1391
  %13 = icmp ne ptr %12, null, !dbg !1393
  br i1 %13, label %14, label %27, !dbg !1394

14:                                               ; preds = %11
  %15 = load ptr, ptr %7, align 4, !dbg !1395
  %16 = load ptr, ptr %5, align 4, !dbg !1398
  %17 = icmp eq ptr %15, %16, !dbg !1399
  br i1 %17, label %18, label %22, !dbg !1400

18:                                               ; preds = %14
  %19 = load ptr, ptr %4, align 4, !dbg !1401
  %20 = load ptr, ptr %6, align 4, !dbg !1403
  %21 = load ptr, ptr %5, align 4, !dbg !1404
  call void @sys_sflist_remove(ptr noundef %19, ptr noundef %20, ptr noundef %21) #7, !dbg !1405
  store i1 true, ptr %3, align 1, !dbg !1406
  store i32 1, ptr %8, align 4
  br label %28, !dbg !1406

22:                                               ; preds = %14
  %23 = load ptr, ptr %7, align 4, !dbg !1407
  store ptr %23, ptr %6, align 4, !dbg !1408
  br label %24, !dbg !1409

24:                                               ; preds = %22
  %25 = load ptr, ptr %7, align 4, !dbg !1410
  %26 = call ptr @sys_sflist_peek_next(ptr noundef %25) #7, !dbg !1411
  store ptr %26, ptr %7, align 4, !dbg !1412
  br label %11, !dbg !1413, !llvm.loop !1414

27:                                               ; preds = %11
  store i1 false, ptr %3, align 1, !dbg !1416
  store i32 1, ptr %8, align 4
  br label %28, !dbg !1416

28:                                               ; preds = %27, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #8, !dbg !1417
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #8, !dbg !1417
  %29 = load i1, ptr %3, align 1, !dbg !1417
  ret i1 %29, !dbg !1417
}

; Function Attrs: nounwind optsize
define hidden zeroext i1 @k_queue_unique_append(ptr noundef %0, ptr noundef %1) #1 !dbg !1418 {
  %3 = alloca i1, align 1
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1420, metadata !DIExpression()), !dbg !1423
  store ptr %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1421, metadata !DIExpression()), !dbg !1424
  br label %8, !dbg !1425

8:                                                ; preds = %2
  br label %9, !dbg !1426

9:                                                ; preds = %8
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #8, !dbg !1428
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1422, metadata !DIExpression()), !dbg !1429
  %10 = load ptr, ptr %4, align 4, !dbg !1430
  %11 = getelementptr inbounds %struct.k_queue, ptr %10, i32 0, i32 0, !dbg !1432
  %12 = call ptr @sys_sflist_peek_head(ptr noundef %11) #7, !dbg !1433
  store ptr %12, ptr %6, align 4, !dbg !1434
  br label %13, !dbg !1435

13:                                               ; preds = %25, %9
  %14 = load ptr, ptr %6, align 4, !dbg !1436
  %15 = icmp ne ptr %14, null, !dbg !1438
  br i1 %15, label %16, label %28, !dbg !1439

16:                                               ; preds = %13
  %17 = load ptr, ptr %6, align 4, !dbg !1440
  %18 = load ptr, ptr %5, align 4, !dbg !1443
  %19 = icmp eq ptr %17, %18, !dbg !1444
  br i1 %19, label %20, label %24, !dbg !1445

20:                                               ; preds = %16
  br label %21, !dbg !1446

21:                                               ; preds = %20
  br label %22, !dbg !1448

22:                                               ; preds = %21
  br label %23, !dbg !1448

23:                                               ; preds = %22
  store i1 false, ptr %3, align 1, !dbg !1450
  store i32 1, ptr %7, align 4
  br label %34, !dbg !1450

24:                                               ; preds = %16
  br label %25, !dbg !1451

25:                                               ; preds = %24
  %26 = load ptr, ptr %6, align 4, !dbg !1452
  %27 = call ptr @sys_sflist_peek_next(ptr noundef %26) #7, !dbg !1453
  store ptr %27, ptr %6, align 4, !dbg !1454
  br label %13, !dbg !1455, !llvm.loop !1456

28:                                               ; preds = %13
  %29 = load ptr, ptr %4, align 4, !dbg !1458
  %30 = load ptr, ptr %5, align 4, !dbg !1459
  call void @k_queue_append(ptr noundef %29, ptr noundef %30) #7, !dbg !1460
  br label %31, !dbg !1461

31:                                               ; preds = %28
  br label %32, !dbg !1462

32:                                               ; preds = %31
  br label %33, !dbg !1462

33:                                               ; preds = %32
  store i1 true, ptr %3, align 1, !dbg !1464
  store i32 1, ptr %7, align 4
  br label %34, !dbg !1464

34:                                               ; preds = %33, %23
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #8, !dbg !1465
  %35 = load i1, ptr %3, align 1, !dbg !1465
  ret i1 %35, !dbg !1465
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @sys_sflist_peek_head(ptr noundef %0) #0 !dbg !1466 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1468, metadata !DIExpression()), !dbg !1469
  %3 = load ptr, ptr %2, align 4, !dbg !1470
  %4 = getelementptr inbounds %struct._sflist, ptr %3, i32 0, i32 0, !dbg !1471
  %5 = load ptr, ptr %4, align 4, !dbg !1471
  ret ptr %5, !dbg !1472
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @sys_sflist_peek_next(ptr noundef %0) #0 !dbg !1473 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1477, metadata !DIExpression()), !dbg !1478
  %3 = load ptr, ptr %2, align 4, !dbg !1479
  %4 = icmp ne ptr %3, null, !dbg !1480
  br i1 %4, label %5, label %8, !dbg !1479

5:                                                ; preds = %1
  %6 = load ptr, ptr %2, align 4, !dbg !1481
  %7 = call ptr @sys_sflist_peek_next_no_check(ptr noundef %6) #7, !dbg !1482
  br label %9, !dbg !1479

8:                                                ; preds = %1
  br label %9, !dbg !1479

9:                                                ; preds = %8, %5
  %10 = phi ptr [ %7, %5 ], [ null, %8 ], !dbg !1479
  ret ptr %10, !dbg !1483
}

; Function Attrs: nounwind optsize
define hidden ptr @z_impl_k_queue_peek_head(ptr noundef %0) #1 !dbg !1484 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1488, metadata !DIExpression()), !dbg !1490
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #8, !dbg !1491
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1489, metadata !DIExpression()), !dbg !1492
  %4 = load ptr, ptr %2, align 4, !dbg !1493
  %5 = getelementptr inbounds %struct.k_queue, ptr %4, i32 0, i32 0, !dbg !1494
  %6 = call ptr @sys_sflist_peek_head(ptr noundef %5) #7, !dbg !1495
  %7 = call ptr @z_queue_node_peek(ptr noundef %6, i1 noundef zeroext false) #7, !dbg !1496
  store ptr %7, ptr %3, align 4, !dbg !1492
  br label %8, !dbg !1497

8:                                                ; preds = %1
  br label %9, !dbg !1498

9:                                                ; preds = %8
  br label %10, !dbg !1498

10:                                               ; preds = %9
  %11 = load ptr, ptr %3, align 4, !dbg !1500
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #8, !dbg !1501
  ret ptr %11, !dbg !1502
}

; Function Attrs: nounwind optsize
define hidden ptr @z_impl_k_queue_peek_tail(ptr noundef %0) #1 !dbg !1503 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1505, metadata !DIExpression()), !dbg !1507
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #8, !dbg !1508
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1506, metadata !DIExpression()), !dbg !1509
  %4 = load ptr, ptr %2, align 4, !dbg !1510
  %5 = getelementptr inbounds %struct.k_queue, ptr %4, i32 0, i32 0, !dbg !1511
  %6 = call ptr @sys_sflist_peek_tail(ptr noundef %5) #7, !dbg !1512
  %7 = call ptr @z_queue_node_peek(ptr noundef %6, i1 noundef zeroext false) #7, !dbg !1513
  store ptr %7, ptr %3, align 4, !dbg !1509
  br label %8, !dbg !1514

8:                                                ; preds = %1
  br label %9, !dbg !1515

9:                                                ; preds = %8
  br label %10, !dbg !1515

10:                                               ; preds = %9
  %11 = load ptr, ptr %3, align 4, !dbg !1517
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #8, !dbg !1518
  ret ptr %11, !dbg !1519
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @sys_sflist_peek_tail(ptr noundef %0) #0 !dbg !1520 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1522, metadata !DIExpression()), !dbg !1523
  %3 = load ptr, ptr %2, align 4, !dbg !1524
  %4 = getelementptr inbounds %struct._sflist, ptr %3, i32 0, i32 1, !dbg !1525
  %5 = load ptr, ptr %4, align 4, !dbg !1525
  ret ptr %5, !dbg !1526
}

; Function Attrs: optsize
declare !dbg !1527 dso_local i64 @z_timeout_expires(ptr noundef) #4

; Function Attrs: optsize
declare !dbg !1532 dso_local i64 @z_timeout_remaining(ptr noundef) #4

; Function Attrs: inlinehint nounwind optsize
define internal void @sys_dlist_init(ptr noundef %0) #0 !dbg !1533 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1538, metadata !DIExpression()), !dbg !1539
  %3 = load ptr, ptr %2, align 4, !dbg !1540
  %4 = load ptr, ptr %2, align 4, !dbg !1541
  %5 = getelementptr inbounds %struct._dnode, ptr %4, i32 0, i32 0, !dbg !1542
  store ptr %3, ptr %5, align 4, !dbg !1543
  %6 = load ptr, ptr %2, align 4, !dbg !1544
  %7 = load ptr, ptr %2, align 4, !dbg !1545
  %8 = getelementptr inbounds %struct._dnode, ptr %7, i32 0, i32 1, !dbg !1546
  store ptr %6, ptr %8, align 4, !dbg !1547
  ret void, !dbg !1548
}

; Function Attrs: optsize
declare !dbg !1549 dso_local void @z_ready_thread(ptr noundef) #4

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_thread_malloc(i32 noundef %0) #0 !dbg !1552 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1558, metadata !DIExpression()), !dbg !1559
  %3 = load i32, ptr %2, align 4, !dbg !1560
  %4 = call ptr @z_thread_aligned_alloc(i32 noundef 0, i32 noundef %3) #7, !dbg !1561
  ret ptr %4, !dbg !1562
}

; Function Attrs: inlinehint nounwind optsize
define internal void @sys_sfnode_init(ptr noundef %0, i8 noundef zeroext %1) #0 !dbg !1563 {
  %3 = alloca ptr, align 4
  %4 = alloca i8, align 1
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1567, metadata !DIExpression()), !dbg !1569
  store i8 %1, ptr %4, align 1
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1568, metadata !DIExpression()), !dbg !1570
  %5 = load i8, ptr %4, align 1, !dbg !1571
  %6 = zext i8 %5 to i32, !dbg !1571
  %7 = load ptr, ptr %3, align 4, !dbg !1572
  %8 = getelementptr inbounds %struct._sfnode, ptr %7, i32 0, i32 0, !dbg !1573
  store i32 %6, ptr %8, align 4, !dbg !1574
  ret void, !dbg !1575
}

; Function Attrs: inlinehint nounwind optsize
define internal void @sys_sflist_insert(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !1576 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1580, metadata !DIExpression()), !dbg !1583
  store ptr %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1581, metadata !DIExpression()), !dbg !1584
  store ptr %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1582, metadata !DIExpression()), !dbg !1585
  %7 = load ptr, ptr %5, align 4, !dbg !1586
  %8 = icmp eq ptr %7, null, !dbg !1588
  br i1 %8, label %9, label %12, !dbg !1589

9:                                                ; preds = %3
  %10 = load ptr, ptr %4, align 4, !dbg !1590
  %11 = load ptr, ptr %6, align 4, !dbg !1592
  call void @sys_sflist_prepend(ptr noundef %10, ptr noundef %11) #7, !dbg !1593
  br label %26, !dbg !1594

12:                                               ; preds = %3
  %13 = load ptr, ptr %5, align 4, !dbg !1595
  %14 = call ptr @z_sfnode_next_peek(ptr noundef %13) #7, !dbg !1597
  %15 = icmp eq ptr %14, null, !dbg !1598
  br i1 %15, label %16, label %19, !dbg !1599

16:                                               ; preds = %12
  %17 = load ptr, ptr %4, align 4, !dbg !1600
  %18 = load ptr, ptr %6, align 4, !dbg !1602
  call void @sys_sflist_append(ptr noundef %17, ptr noundef %18) #7, !dbg !1603
  br label %25, !dbg !1604

19:                                               ; preds = %12
  %20 = load ptr, ptr %6, align 4, !dbg !1605
  %21 = load ptr, ptr %5, align 4, !dbg !1607
  %22 = call ptr @z_sfnode_next_peek(ptr noundef %21) #7, !dbg !1608
  call void @z_sfnode_next_set(ptr noundef %20, ptr noundef %22) #7, !dbg !1609
  %23 = load ptr, ptr %5, align 4, !dbg !1610
  %24 = load ptr, ptr %6, align 4, !dbg !1611
  call void @z_sfnode_next_set(ptr noundef %23, ptr noundef %24) #7, !dbg !1612
  br label %25

25:                                               ; preds = %19, %16
  br label %26

26:                                               ; preds = %25, %9
  ret void, !dbg !1613
}

; Function Attrs: optsize
declare !dbg !1614 dso_local ptr @z_thread_aligned_alloc(i32 noundef, i32 noundef) #4

; Function Attrs: inlinehint nounwind optsize
define internal void @sys_sflist_prepend(ptr noundef %0, ptr noundef %1) #0 !dbg !1617 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1621, metadata !DIExpression()), !dbg !1623
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1622, metadata !DIExpression()), !dbg !1624
  %5 = load ptr, ptr %4, align 4, !dbg !1625
  %6 = load ptr, ptr %3, align 4, !dbg !1626
  %7 = call ptr @sys_sflist_peek_head(ptr noundef %6) #7, !dbg !1627
  call void @z_sfnode_next_set(ptr noundef %5, ptr noundef %7) #7, !dbg !1628
  %8 = load ptr, ptr %3, align 4, !dbg !1629
  %9 = load ptr, ptr %4, align 4, !dbg !1630
  call void @z_sflist_head_set(ptr noundef %8, ptr noundef %9) #7, !dbg !1631
  %10 = load ptr, ptr %3, align 4, !dbg !1632
  %11 = call ptr @sys_sflist_peek_tail(ptr noundef %10) #7, !dbg !1634
  %12 = icmp eq ptr %11, null, !dbg !1635
  br i1 %12, label %13, label %17, !dbg !1636

13:                                               ; preds = %2
  %14 = load ptr, ptr %3, align 4, !dbg !1637
  %15 = load ptr, ptr %3, align 4, !dbg !1639
  %16 = call ptr @sys_sflist_peek_head(ptr noundef %15) #7, !dbg !1640
  call void @z_sflist_tail_set(ptr noundef %14, ptr noundef %16) #7, !dbg !1641
  br label %17, !dbg !1642

17:                                               ; preds = %13, %2
  ret void, !dbg !1643
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_sfnode_next_peek(ptr noundef %0) #0 !dbg !1644 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1646, metadata !DIExpression()), !dbg !1647
  %3 = load ptr, ptr %2, align 4, !dbg !1648
  %4 = getelementptr inbounds %struct._sfnode, ptr %3, i32 0, i32 0, !dbg !1649
  %5 = load i32, ptr %4, align 4, !dbg !1649
  %6 = and i32 %5, -4, !dbg !1650
  %7 = inttoptr i32 %6 to ptr, !dbg !1651
  ret ptr %7, !dbg !1652
}

; Function Attrs: inlinehint nounwind optsize
define internal void @sys_sflist_append(ptr noundef %0, ptr noundef %1) #0 !dbg !1653 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1655, metadata !DIExpression()), !dbg !1657
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1656, metadata !DIExpression()), !dbg !1658
  %5 = load ptr, ptr %4, align 4, !dbg !1659
  call void @z_sfnode_next_set(ptr noundef %5, ptr noundef null) #7, !dbg !1660
  %6 = load ptr, ptr %3, align 4, !dbg !1661
  %7 = call ptr @sys_sflist_peek_tail(ptr noundef %6) #7, !dbg !1663
  %8 = icmp eq ptr %7, null, !dbg !1664
  br i1 %8, label %9, label %14, !dbg !1665

9:                                                ; preds = %2
  %10 = load ptr, ptr %3, align 4, !dbg !1666
  %11 = load ptr, ptr %4, align 4, !dbg !1668
  call void @z_sflist_tail_set(ptr noundef %10, ptr noundef %11) #7, !dbg !1669
  %12 = load ptr, ptr %3, align 4, !dbg !1670
  %13 = load ptr, ptr %4, align 4, !dbg !1671
  call void @z_sflist_head_set(ptr noundef %12, ptr noundef %13) #7, !dbg !1672
  br label %20, !dbg !1673

14:                                               ; preds = %2
  %15 = load ptr, ptr %3, align 4, !dbg !1674
  %16 = call ptr @sys_sflist_peek_tail(ptr noundef %15) #7, !dbg !1676
  %17 = load ptr, ptr %4, align 4, !dbg !1677
  call void @z_sfnode_next_set(ptr noundef %16, ptr noundef %17) #7, !dbg !1678
  %18 = load ptr, ptr %3, align 4, !dbg !1679
  %19 = load ptr, ptr %4, align 4, !dbg !1680
  call void @z_sflist_tail_set(ptr noundef %18, ptr noundef %19) #7, !dbg !1681
  br label %20

20:                                               ; preds = %14, %9
  ret void, !dbg !1682
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_sfnode_next_set(ptr noundef %0, ptr noundef %1) #0 !dbg !1683 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i8, align 1
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1687, metadata !DIExpression()), !dbg !1690
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1688, metadata !DIExpression()), !dbg !1691
  call void @llvm.lifetime.start.p0(i64 1, ptr %5) #8, !dbg !1692
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1689, metadata !DIExpression()), !dbg !1693
  %6 = load ptr, ptr %3, align 4, !dbg !1694
  %7 = call zeroext i8 @sys_sfnode_flags_get(ptr noundef %6) #7, !dbg !1695
  store i8 %7, ptr %5, align 1, !dbg !1693
  %8 = load i8, ptr %5, align 1, !dbg !1696
  %9 = zext i8 %8 to i32, !dbg !1696
  %10 = load ptr, ptr %4, align 4, !dbg !1697
  %11 = ptrtoint ptr %10 to i32, !dbg !1698
  %12 = or i32 %9, %11, !dbg !1699
  %13 = load ptr, ptr %3, align 4, !dbg !1700
  %14 = getelementptr inbounds %struct._sfnode, ptr %13, i32 0, i32 0, !dbg !1701
  store i32 %12, ptr %14, align 4, !dbg !1702
  call void @llvm.lifetime.end.p0(i64 1, ptr %5) #8, !dbg !1703
  ret void, !dbg !1703
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_sflist_head_set(ptr noundef %0, ptr noundef %1) #0 !dbg !1704 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1706, metadata !DIExpression()), !dbg !1708
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1707, metadata !DIExpression()), !dbg !1709
  %5 = load ptr, ptr %4, align 4, !dbg !1710
  %6 = load ptr, ptr %3, align 4, !dbg !1711
  %7 = getelementptr inbounds %struct._sflist, ptr %6, i32 0, i32 0, !dbg !1712
  store ptr %5, ptr %7, align 4, !dbg !1713
  ret void, !dbg !1714
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_sflist_tail_set(ptr noundef %0, ptr noundef %1) #0 !dbg !1715 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1717, metadata !DIExpression()), !dbg !1719
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1718, metadata !DIExpression()), !dbg !1720
  %5 = load ptr, ptr %4, align 4, !dbg !1721
  %6 = load ptr, ptr %3, align 4, !dbg !1722
  %7 = getelementptr inbounds %struct._sflist, ptr %6, i32 0, i32 1, !dbg !1723
  store ptr %5, ptr %7, align 4, !dbg !1724
  ret void, !dbg !1725
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @sys_slist_peek_head(ptr noundef %0) #0 !dbg !1726 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1730, metadata !DIExpression()), !dbg !1731
  %3 = load ptr, ptr %2, align 4, !dbg !1732
  %4 = getelementptr inbounds %struct._slist, ptr %3, i32 0, i32 0, !dbg !1733
  %5 = load ptr, ptr %4, align 4, !dbg !1733
  ret ptr %5, !dbg !1734
}

; Function Attrs: inlinehint nounwind optsize
define internal void @sys_sflist_remove(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !1735 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1737, metadata !DIExpression()), !dbg !1740
  store ptr %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1738, metadata !DIExpression()), !dbg !1741
  store ptr %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1739, metadata !DIExpression()), !dbg !1742
  %7 = load ptr, ptr %5, align 4, !dbg !1743
  %8 = icmp eq ptr %7, null, !dbg !1745
  br i1 %8, label %9, label %22, !dbg !1746

9:                                                ; preds = %3
  %10 = load ptr, ptr %4, align 4, !dbg !1747
  %11 = load ptr, ptr %6, align 4, !dbg !1749
  %12 = call ptr @z_sfnode_next_peek(ptr noundef %11) #7, !dbg !1750
  call void @z_sflist_head_set(ptr noundef %10, ptr noundef %12) #7, !dbg !1751
  %13 = load ptr, ptr %4, align 4, !dbg !1752
  %14 = call ptr @sys_sflist_peek_tail(ptr noundef %13) #7, !dbg !1754
  %15 = load ptr, ptr %6, align 4, !dbg !1755
  %16 = icmp eq ptr %14, %15, !dbg !1756
  br i1 %16, label %17, label %21, !dbg !1757

17:                                               ; preds = %9
  %18 = load ptr, ptr %4, align 4, !dbg !1758
  %19 = load ptr, ptr %4, align 4, !dbg !1760
  %20 = call ptr @sys_sflist_peek_head(ptr noundef %19) #7, !dbg !1761
  call void @z_sflist_tail_set(ptr noundef %18, ptr noundef %20) #7, !dbg !1762
  br label %21, !dbg !1763

21:                                               ; preds = %17, %9
  br label %34, !dbg !1764

22:                                               ; preds = %3
  %23 = load ptr, ptr %5, align 4, !dbg !1765
  %24 = load ptr, ptr %6, align 4, !dbg !1767
  %25 = call ptr @z_sfnode_next_peek(ptr noundef %24) #7, !dbg !1768
  call void @z_sfnode_next_set(ptr noundef %23, ptr noundef %25) #7, !dbg !1769
  %26 = load ptr, ptr %4, align 4, !dbg !1770
  %27 = call ptr @sys_sflist_peek_tail(ptr noundef %26) #7, !dbg !1772
  %28 = load ptr, ptr %6, align 4, !dbg !1773
  %29 = icmp eq ptr %27, %28, !dbg !1774
  br i1 %29, label %30, label %33, !dbg !1775

30:                                               ; preds = %22
  %31 = load ptr, ptr %4, align 4, !dbg !1776
  %32 = load ptr, ptr %5, align 4, !dbg !1778
  call void @z_sflist_tail_set(ptr noundef %31, ptr noundef %32) #7, !dbg !1779
  br label %33, !dbg !1780

33:                                               ; preds = %30, %22
  br label %34

34:                                               ; preds = %33, %21
  %35 = load ptr, ptr %6, align 4, !dbg !1781
  call void @z_sfnode_next_set(ptr noundef %35, ptr noundef null) #7, !dbg !1782
  ret void, !dbg !1783
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @sys_sflist_peek_next_no_check(ptr noundef %0) #0 !dbg !1784 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1786, metadata !DIExpression()), !dbg !1787
  %3 = load ptr, ptr %2, align 4, !dbg !1788
  %4 = call ptr @z_sfnode_next_peek(ptr noundef %3) #7, !dbg !1789
  ret ptr %4, !dbg !1790
}

attributes #0 = { inlinehint nounwind optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { optsize }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!137, !138, !139, !140, !141, !142}
!llvm.ident = !{!143}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !97, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "queue.c", directory: "/home/sri/zephyrproject/zephyr/build")
!2 = !{!3, !15}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_poll_states_bits", file: !4, line: 5541, baseType: !5, size: 8, elements: !6)
!4 = !DIFile(filename: "include/zephyr/kernel.h", directory: "/home/sri/zephyrproject/zephyr")
!5 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!6 = !{!7, !8, !9, !10, !11, !12, !13, !14}
!7 = !DIEnumerator(name: "_POLL_STATE_NOT_READY", value: 0)
!8 = !DIEnumerator(name: "_POLL_STATE_SIGNALED", value: 1)
!9 = !DIEnumerator(name: "_POLL_STATE_SEM_AVAILABLE", value: 2)
!10 = !DIEnumerator(name: "_POLL_STATE_DATA_AVAILABLE", value: 3)
!11 = !DIEnumerator(name: "_POLL_STATE_CANCELLED", value: 4)
!12 = !DIEnumerator(name: "_POLL_STATE_MSGQ_DATA_AVAILABLE", value: 5)
!13 = !DIEnumerator(name: "_POLL_STATE_PIPE_DATA_AVAILABLE", value: 6)
!14 = !DIEnumerator(name: "_POLL_NUM_STATES", value: 7)
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "k_objects", file: !16, line: 29, baseType: !5, size: 8, elements: !17)
!16 = !DIFile(filename: "include/zephyr/sys/kobject.h", directory: "/home/sri/zephyrproject/zephyr")
!17 = !{!18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96}
!18 = !DIEnumerator(name: "K_OBJ_ANY", value: 0)
!19 = !DIEnumerator(name: "K_OBJ_MEM_SLAB", value: 1)
!20 = !DIEnumerator(name: "K_OBJ_MSGQ", value: 2)
!21 = !DIEnumerator(name: "K_OBJ_MUTEX", value: 3)
!22 = !DIEnumerator(name: "K_OBJ_PIPE", value: 4)
!23 = !DIEnumerator(name: "K_OBJ_QUEUE", value: 5)
!24 = !DIEnumerator(name: "K_OBJ_POLL_SIGNAL", value: 6)
!25 = !DIEnumerator(name: "K_OBJ_SEM", value: 7)
!26 = !DIEnumerator(name: "K_OBJ_STACK", value: 8)
!27 = !DIEnumerator(name: "K_OBJ_THREAD", value: 9)
!28 = !DIEnumerator(name: "K_OBJ_TIMER", value: 10)
!29 = !DIEnumerator(name: "K_OBJ_THREAD_STACK_ELEMENT", value: 11)
!30 = !DIEnumerator(name: "K_OBJ_NET_SOCKET", value: 12)
!31 = !DIEnumerator(name: "K_OBJ_NET_IF", value: 13)
!32 = !DIEnumerator(name: "K_OBJ_SYS_MUTEX", value: 14)
!33 = !DIEnumerator(name: "K_OBJ_FUTEX", value: 15)
!34 = !DIEnumerator(name: "K_OBJ_CONDVAR", value: 16)
!35 = !DIEnumerator(name: "K_OBJ_DRIVER_GPIO", value: 17)
!36 = !DIEnumerator(name: "K_OBJ_DRIVER_RESET", value: 18)
!37 = !DIEnumerator(name: "K_OBJ_DRIVER_UART", value: 19)
!38 = !DIEnumerator(name: "K_OBJ_DRIVER_CRYPTO", value: 20)
!39 = !DIEnumerator(name: "K_OBJ_DRIVER_ADC", value: 21)
!40 = !DIEnumerator(name: "K_OBJ_DRIVER_AUXDISPLAY", value: 22)
!41 = !DIEnumerator(name: "K_OBJ_DRIVER_BBRAM", value: 23)
!42 = !DIEnumerator(name: "K_OBJ_DRIVER_CAN", value: 24)
!43 = !DIEnumerator(name: "K_OBJ_DRIVER_CHARGER", value: 25)
!44 = !DIEnumerator(name: "K_OBJ_DRIVER_COREDUMP", value: 26)
!45 = !DIEnumerator(name: "K_OBJ_DRIVER_COUNTER", value: 27)
!46 = !DIEnumerator(name: "K_OBJ_DRIVER_DAC", value: 28)
!47 = !DIEnumerator(name: "K_OBJ_DRIVER_DAI", value: 29)
!48 = !DIEnumerator(name: "K_OBJ_DRIVER_DMA", value: 30)
!49 = !DIEnumerator(name: "K_OBJ_DRIVER_EDAC", value: 31)
!50 = !DIEnumerator(name: "K_OBJ_DRIVER_EEPROM", value: 32)
!51 = !DIEnumerator(name: "K_OBJ_DRIVER_FUEL_GAUGE_EMUL", value: 33)
!52 = !DIEnumerator(name: "K_OBJ_DRIVER_EMUL_SENSOR_BACKEND_API", value: 34)
!53 = !DIEnumerator(name: "K_OBJ_DRIVER_ENTROPY", value: 35)
!54 = !DIEnumerator(name: "K_OBJ_DRIVER_ESPI", value: 36)
!55 = !DIEnumerator(name: "K_OBJ_DRIVER_ESPI_SAF", value: 37)
!56 = !DIEnumerator(name: "K_OBJ_DRIVER_FLASH", value: 38)
!57 = !DIEnumerator(name: "K_OBJ_DRIVER_FPGA", value: 39)
!58 = !DIEnumerator(name: "K_OBJ_DRIVER_FUEL_GAUGE", value: 40)
!59 = !DIEnumerator(name: "K_OBJ_DRIVER_HWSPINLOCK", value: 41)
!60 = !DIEnumerator(name: "K_OBJ_DRIVER_I2C", value: 42)
!61 = !DIEnumerator(name: "K_OBJ_DRIVER_I2S", value: 43)
!62 = !DIEnumerator(name: "K_OBJ_DRIVER_I3C", value: 44)
!63 = !DIEnumerator(name: "K_OBJ_DRIVER_IPM", value: 45)
!64 = !DIEnumerator(name: "K_OBJ_DRIVER_KSCAN", value: 46)
!65 = !DIEnumerator(name: "K_OBJ_DRIVER_LED", value: 47)
!66 = !DIEnumerator(name: "K_OBJ_DRIVER_MBOX", value: 48)
!67 = !DIEnumerator(name: "K_OBJ_DRIVER_MDIO", value: 49)
!68 = !DIEnumerator(name: "K_OBJ_DRIVER_MIPI_DSI", value: 50)
!69 = !DIEnumerator(name: "K_OBJ_DRIVER_PECI", value: 51)
!70 = !DIEnumerator(name: "K_OBJ_DRIVER_PS2", value: 52)
!71 = !DIEnumerator(name: "K_OBJ_DRIVER_PTP_CLOCK", value: 53)
!72 = !DIEnumerator(name: "K_OBJ_DRIVER_PWM", value: 54)
!73 = !DIEnumerator(name: "K_OBJ_DRIVER_REGULATOR_PARENT", value: 55)
!74 = !DIEnumerator(name: "K_OBJ_DRIVER_REGULATOR", value: 56)
!75 = !DIEnumerator(name: "K_OBJ_DRIVER_RETAINED_MEM", value: 57)
!76 = !DIEnumerator(name: "K_OBJ_DRIVER_RTC", value: 58)
!77 = !DIEnumerator(name: "K_OBJ_DRIVER_SDHC", value: 59)
!78 = !DIEnumerator(name: "K_OBJ_DRIVER_SENSOR", value: 60)
!79 = !DIEnumerator(name: "K_OBJ_DRIVER_SMBUS", value: 61)
!80 = !DIEnumerator(name: "K_OBJ_DRIVER_SPI", value: 62)
!81 = !DIEnumerator(name: "K_OBJ_DRIVER_SYSCON", value: 63)
!82 = !DIEnumerator(name: "K_OBJ_DRIVER_W1", value: 64)
!83 = !DIEnumerator(name: "K_OBJ_DRIVER_WDT", value: 65)
!84 = !DIEnumerator(name: "K_OBJ_DRIVER_CAN_TRANSCEIVER", value: 66)
!85 = !DIEnumerator(name: "K_OBJ_DRIVER_UART_MUX", value: 67)
!86 = !DIEnumerator(name: "K_OBJ_DRIVER_ITS", value: 68)
!87 = !DIEnumerator(name: "K_OBJ_DRIVER_TGPIO", value: 69)
!88 = !DIEnumerator(name: "K_OBJ_DRIVER_PCIE_CTRL", value: 70)
!89 = !DIEnumerator(name: "K_OBJ_DRIVER_SVC", value: 71)
!90 = !DIEnumerator(name: "K_OBJ_DRIVER_BC12_EMUL", value: 72)
!91 = !DIEnumerator(name: "K_OBJ_DRIVER_BC12", value: 73)
!92 = !DIEnumerator(name: "K_OBJ_DRIVER_TCPC", value: 74)
!93 = !DIEnumerator(name: "K_OBJ_DRIVER_IVSHMEM", value: 75)
!94 = !DIEnumerator(name: "K_OBJ_DRIVER_EC_HOST_CMD_BACKEND_API", value: 76)
!95 = !DIEnumerator(name: "K_OBJ_DRIVER_ETHPHY", value: 77)
!96 = !DIEnumerator(name: "K_OBJ_LAST", value: 78)
!97 = !{!98, !100, !115, !114, !117, !118, !119, !120, !121, !110}
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !99, line: 62, baseType: !5)
!99 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/stdint.h", directory: "")
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 32)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "alloc_node", file: !102, line: 25, size: 64, elements: !103)
!102 = !DIFile(filename: "kernel/queue.c", directory: "/home/sri/zephyrproject/zephyr")
!103 = !{!104, !113}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !101, file: !102, line: 26, baseType: !105, size: 32)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sfnode_t", file: !106, line: 50, baseType: !107)
!106 = !DIFile(filename: "include/zephyr/sys/sflist.h", directory: "/home/sri/zephyrproject/zephyr")
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sfnode", file: !106, line: 44, size: 32, elements: !108)
!108 = !{!109}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "next_and_flags", scope: !107, file: !106, line: 45, baseType: !110, size: 32)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "unative_t", file: !106, line: 40, baseType: !111)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !99, line: 64, baseType: !112)
!112 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !101, file: !102, line: 27, baseType: !114, size: 32, offset: 32)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 32)
!116 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 32)
!118 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 32)
!120 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 32)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dnode_t", file: !123, line: 55, baseType: !124)
!123 = !DIFile(filename: "include/zephyr/sys/dlist.h", directory: "/home/sri/zephyrproject/zephyr")
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_dnode", file: !123, line: 37, size: 64, elements: !125)
!125 = !{!126, !132}
!126 = !DIDerivedType(tag: DW_TAG_member, scope: !124, file: !123, line: 38, baseType: !127, size: 32)
!127 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !124, file: !123, line: 38, size: 32, elements: !128)
!128 = !{!129, !131}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !127, file: !123, line: 39, baseType: !130, size: 32)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 32)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !127, file: !123, line: 40, baseType: !130, size: 32)
!132 = !DIDerivedType(tag: DW_TAG_member, scope: !124, file: !123, line: 42, baseType: !133, size: 32, offset: 32)
!133 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !124, file: !123, line: 42, size: 32, elements: !134)
!134 = !{!135, !136}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !133, file: !123, line: 43, baseType: !130, size: 32)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !133, file: !123, line: 44, baseType: !130, size: 32)
!137 = !{i32 7, !"Dwarf Version", i32 4}
!138 = !{i32 2, !"Debug Info Version", i32 3}
!139 = !{i32 1, !"wchar_size", i32 4}
!140 = !{i32 1, !"static_rwdata", i32 1}
!141 = !{i32 1, !"enumsize_buildattr", i32 1}
!142 = !{i32 1, !"armlib_unavailable", i32 0}
!143 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
!144 = distinct !DISubprogram(name: "z_impl_k_object_access_grant", scope: !16, file: !16, line: 223, type: !145, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !248)
!145 = !DISubroutineType(types: !146)
!146 = !{null, !147, !149}
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 32)
!148 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 32)
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_thread", file: !151, line: 250, size: 896, elements: !152)
!151 = !DIFile(filename: "include/zephyr/kernel/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!152 = !{!153, !207, !220, !221, !222, !223, !243}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !150, file: !151, line: 252, baseType: !154, size: 384)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_base", file: !151, line: 58, size: 384, elements: !155)
!155 = !{!156, !169, !177, !178, !179, !192, !193, !194}
!156 = !DIDerivedType(tag: DW_TAG_member, scope: !154, file: !151, line: 61, baseType: !157, size: 64)
!157 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !154, file: !151, line: 61, size: 64, elements: !158)
!158 = !{!159, !160}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_dlist", scope: !157, file: !151, line: 62, baseType: !122, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_rb", scope: !157, file: !151, line: 63, baseType: !161, size: 64)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rbnode", file: !162, line: 58, size: 64, elements: !163)
!162 = !DIFile(filename: "include/zephyr/sys/rb.h", directory: "/home/sri/zephyrproject/zephyr")
!163 = !{!164}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !161, file: !162, line: 60, baseType: !165, size: 64)
!165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 64, elements: !167)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 32)
!167 = !{!168}
!168 = !DISubrange(count: 2)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "pended_on", scope: !154, file: !151, line: 69, baseType: !170, size: 32, offset: 64)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 32)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "_wait_q_t", file: !172, line: 243, baseType: !173)
!172 = !DIFile(filename: "include/zephyr/kernel_structs.h", directory: "/home/sri/zephyrproject/zephyr")
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !172, line: 241, size: 64, elements: !174)
!174 = !{!175}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !173, file: !172, line: 242, baseType: !176, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dlist_t", file: !123, line: 51, baseType: !124)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "user_options", scope: !154, file: !151, line: 72, baseType: !98, size: 8, offset: 96)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "thread_state", scope: !154, file: !151, line: 75, baseType: !98, size: 8, offset: 104)
!179 = !DIDerivedType(tag: DW_TAG_member, scope: !154, file: !151, line: 91, baseType: !180, size: 16, offset: 112)
!180 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !154, file: !151, line: 91, size: 16, elements: !181)
!181 = !{!182, !189}
!182 = !DIDerivedType(tag: DW_TAG_member, scope: !180, file: !151, line: 92, baseType: !183, size: 16)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !180, file: !151, line: 92, size: 16, elements: !184)
!184 = !{!185, !188}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !183, file: !151, line: 97, baseType: !186, size: 8)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !99, line: 56, baseType: !187)
!187 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "sched_locked", scope: !183, file: !151, line: 98, baseType: !98, size: 8, offset: 8)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "preempt", scope: !180, file: !151, line: 101, baseType: !190, size: 16)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !99, line: 63, baseType: !191)
!191 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "order_key", scope: !154, file: !151, line: 108, baseType: !111, size: 32, offset: 128)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "swap_data", scope: !154, file: !151, line: 132, baseType: !114, size: 32, offset: 160)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !154, file: !151, line: 136, baseType: !195, size: 192, offset: 192)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_timeout", file: !172, line: 254, size: 192, elements: !196)
!196 = !{!197, !198, !204}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !195, file: !172, line: 255, baseType: !122, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !195, file: !172, line: 256, baseType: !199, size: 32, offset: 64)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "_timeout_func_t", file: !172, line: 252, baseType: !200)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 32)
!201 = !DISubroutineType(types: !202)
!202 = !{null, !203}
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 32)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "dticks", scope: !195, file: !172, line: 259, baseType: !205, size: 64, offset: 128)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !99, line: 59, baseType: !206)
!206 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "callee_saved", scope: !150, file: !151, line: 255, baseType: !208, size: 288, offset: 384)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_callee_saved", file: !209, line: 25, size: 288, elements: !210)
!209 = !DIFile(filename: "include/zephyr/arch/arm/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!210 = !{!211, !212, !213, !214, !215, !216, !217, !218, !219}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "v1", scope: !208, file: !209, line: 26, baseType: !111, size: 32)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "v2", scope: !208, file: !209, line: 27, baseType: !111, size: 32, offset: 32)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "v3", scope: !208, file: !209, line: 28, baseType: !111, size: 32, offset: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "v4", scope: !208, file: !209, line: 29, baseType: !111, size: 32, offset: 96)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "v5", scope: !208, file: !209, line: 30, baseType: !111, size: 32, offset: 128)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "v6", scope: !208, file: !209, line: 31, baseType: !111, size: 32, offset: 160)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "v7", scope: !208, file: !209, line: 32, baseType: !111, size: 32, offset: 192)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "v8", scope: !208, file: !209, line: 33, baseType: !111, size: 32, offset: 224)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "psp", scope: !208, file: !209, line: 34, baseType: !111, size: 32, offset: 256)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "init_data", scope: !150, file: !151, line: 258, baseType: !114, size: 32, offset: 672)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "join_queue", scope: !150, file: !151, line: 261, baseType: !171, size: 64, offset: 704)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "errno_var", scope: !150, file: !151, line: 302, baseType: !120, size: 32, offset: 768)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "resource_pool", scope: !150, file: !151, line: 333, baseType: !224, size: 32, offset: 800)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 32)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_heap", file: !4, line: 5291, size: 160, elements: !226)
!226 = !{!227, !238, !239}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !225, file: !4, line: 5292, baseType: !228, size: 96)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sys_heap", file: !229, line: 56, size: 96, elements: !230)
!229 = !DIFile(filename: "include/zephyr/sys/sys_heap.h", directory: "/home/sri/zephyrproject/zephyr")
!230 = !{!231, !234, !235}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !228, file: !229, line: 57, baseType: !232, size: 32)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 32)
!233 = !DICompositeType(tag: DW_TAG_structure_type, name: "z_heap", file: !229, line: 57, flags: DIFlagFwdDecl)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "init_mem", scope: !228, file: !229, line: 58, baseType: !114, size: 32, offset: 32)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "init_bytes", scope: !228, file: !229, line: 59, baseType: !236, size: 32, offset: 64)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !237, line: 46, baseType: !112)
!237 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/lib/clang/17/include/stddef.h", directory: "")
!238 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !225, file: !4, line: 5293, baseType: !171, size: 64, offset: 96)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !225, file: !4, line: 5294, baseType: !240, offset: 160)
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_spinlock", file: !241, line: 45, elements: !242)
!241 = !DIFile(filename: "include/zephyr/spinlock.h", directory: "/home/sri/zephyrproject/zephyr")
!242 = !{}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !150, file: !151, line: 355, baseType: !244, size: 64, offset: 832)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_arch", file: !209, line: 60, size: 64, elements: !245)
!245 = !{!246, !247}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "basepri", scope: !244, file: !209, line: 63, baseType: !111, size: 32)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "swap_return_value", scope: !244, file: !209, line: 66, baseType: !111, size: 32, offset: 32)
!248 = !{!249, !250}
!249 = !DILocalVariable(name: "object", arg: 1, scope: !144, file: !16, line: 223, type: !147)
!250 = !DILocalVariable(name: "thread", arg: 2, scope: !144, file: !16, line: 224, type: !149)
!251 = !DILocation(line: 223, column: 61, scope: !144)
!252 = !DILocation(line: 224, column: 24, scope: !144)
!253 = !DILocation(line: 226, column: 9, scope: !144)
!254 = !DILocation(line: 227, column: 9, scope: !144)
!255 = !DILocation(line: 228, column: 1, scope: !144)
!256 = distinct !DISubprogram(name: "z_impl_k_object_release", scope: !16, file: !16, line: 243, type: !257, scopeLine: 244, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !259)
!257 = !DISubroutineType(types: !258)
!258 = !{null, !147}
!259 = !{!260}
!260 = !DILocalVariable(name: "object", arg: 1, scope: !256, file: !16, line: 243, type: !147)
!261 = !DILocation(line: 243, column: 56, scope: !256)
!262 = !DILocation(line: 245, column: 9, scope: !256)
!263 = !DILocation(line: 246, column: 1, scope: !256)
!264 = distinct !DISubprogram(name: "z_impl_k_object_alloc", scope: !16, file: !16, line: 359, type: !265, scopeLine: 360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !267)
!265 = !DISubroutineType(types: !266)
!266 = !{!114, !15}
!267 = !{!268}
!268 = !DILocalVariable(name: "otype", arg: 1, scope: !264, file: !16, line: 359, type: !15)
!269 = !DILocation(line: 359, column: 58, scope: !264)
!270 = !DILocation(line: 361, column: 9, scope: !264)
!271 = !DILocation(line: 363, column: 2, scope: !264)
!272 = distinct !DISubprogram(name: "z_impl_k_object_alloc_size", scope: !16, file: !16, line: 366, type: !273, scopeLine: 368, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !275)
!273 = !DISubroutineType(types: !274)
!274 = !{!114, !15, !236}
!275 = !{!276, !277}
!276 = !DILocalVariable(name: "otype", arg: 1, scope: !272, file: !16, line: 366, type: !15)
!277 = !DILocalVariable(name: "size", arg: 2, scope: !272, file: !16, line: 367, type: !236)
!278 = !DILocation(line: 366, column: 63, scope: !272)
!279 = !DILocation(line: 367, column: 13, scope: !272)
!280 = !DILocation(line: 369, column: 9, scope: !272)
!281 = !DILocation(line: 370, column: 9, scope: !272)
!282 = !DILocation(line: 372, column: 2, scope: !272)
!283 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_expires_ticks", scope: !4, file: !4, line: 656, type: !284, scopeLine: 658, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !290)
!284 = !DISubroutineType(types: !285)
!285 = !{!286, !288}
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_ticks_t", file: !287, line: 46, baseType: !205)
!287 = !DIFile(filename: "include/zephyr/sys_clock.h", directory: "/home/sri/zephyrproject/zephyr")
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 32)
!289 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !150)
!290 = !{!291}
!291 = !DILocalVariable(name: "t", arg: 1, scope: !283, file: !4, line: 657, type: !288)
!292 = !DILocation(line: 657, column: 30, scope: !283)
!293 = !DILocation(line: 659, column: 28, scope: !283)
!294 = !DILocation(line: 659, column: 31, scope: !283)
!295 = !DILocation(line: 659, column: 36, scope: !283)
!296 = !DILocation(line: 659, column: 9, scope: !283)
!297 = !DILocation(line: 659, column: 2, scope: !283)
!298 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_remaining_ticks", scope: !4, file: !4, line: 671, type: !284, scopeLine: 673, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !299)
!299 = !{!300}
!300 = !DILocalVariable(name: "t", arg: 1, scope: !298, file: !4, line: 672, type: !288)
!301 = !DILocation(line: 672, column: 30, scope: !298)
!302 = !DILocation(line: 674, column: 30, scope: !298)
!303 = !DILocation(line: 674, column: 33, scope: !298)
!304 = !DILocation(line: 674, column: 38, scope: !298)
!305 = !DILocation(line: 674, column: 9, scope: !298)
!306 = !DILocation(line: 674, column: 2, scope: !298)
!307 = distinct !DISubprogram(name: "z_impl_k_timer_expires_ticks", scope: !4, file: !4, line: 1634, type: !308, scopeLine: 1636, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !329)
!308 = !DISubroutineType(types: !309)
!309 = !{!286, !310}
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 32)
!311 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !312)
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_timer", file: !4, line: 1439, size: 448, elements: !313)
!313 = !{!314, !315, !316, !321, !322, !327, !328}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !312, file: !4, line: 1445, baseType: !195, size: 192)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !312, file: !4, line: 1448, baseType: !171, size: 64, offset: 192)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_fn", scope: !312, file: !4, line: 1451, baseType: !317, size: 32, offset: 256)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 32)
!318 = !DISubroutineType(types: !319)
!319 = !{null, !320}
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 32)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "stop_fn", scope: !312, file: !4, line: 1454, baseType: !317, size: 32, offset: 288)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !312, file: !4, line: 1457, baseType: !323, size: 64, offset: 320)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_timeout_t", file: !287, line: 67, baseType: !324)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !287, line: 65, size: 64, elements: !325)
!325 = !{!326}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "ticks", scope: !324, file: !287, line: 66, baseType: !286, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !312, file: !4, line: 1460, baseType: !111, size: 32, offset: 384)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !312, file: !4, line: 1463, baseType: !114, size: 32, offset: 416)
!329 = !{!330}
!330 = !DILocalVariable(name: "timer", arg: 1, scope: !307, file: !4, line: 1635, type: !310)
!331 = !DILocation(line: 1635, column: 34, scope: !307)
!332 = !DILocation(line: 1637, column: 28, scope: !307)
!333 = !DILocation(line: 1637, column: 35, scope: !307)
!334 = !DILocation(line: 1637, column: 9, scope: !307)
!335 = !DILocation(line: 1637, column: 2, scope: !307)
!336 = distinct !DISubprogram(name: "z_impl_k_timer_remaining_ticks", scope: !4, file: !4, line: 1649, type: !308, scopeLine: 1651, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !337)
!337 = !{!338}
!338 = !DILocalVariable(name: "timer", arg: 1, scope: !336, file: !4, line: 1650, type: !310)
!339 = !DILocation(line: 1650, column: 34, scope: !336)
!340 = !DILocation(line: 1652, column: 30, scope: !336)
!341 = !DILocation(line: 1652, column: 37, scope: !336)
!342 = !DILocation(line: 1652, column: 9, scope: !336)
!343 = !DILocation(line: 1652, column: 2, scope: !336)
!344 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_set", scope: !4, file: !4, line: 1689, type: !345, scopeLine: 1691, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !347)
!345 = !DISubroutineType(types: !346)
!346 = !{null, !320, !114}
!347 = !{!348, !349}
!348 = !DILocalVariable(name: "timer", arg: 1, scope: !344, file: !4, line: 1689, type: !320)
!349 = !DILocalVariable(name: "user_data", arg: 2, scope: !344, file: !4, line: 1690, type: !114)
!350 = !DILocation(line: 1689, column: 65, scope: !344)
!351 = !DILocation(line: 1690, column: 19, scope: !344)
!352 = !DILocation(line: 1692, column: 21, scope: !344)
!353 = !DILocation(line: 1692, column: 2, scope: !344)
!354 = !DILocation(line: 1692, column: 9, scope: !344)
!355 = !DILocation(line: 1692, column: 19, scope: !344)
!356 = !DILocation(line: 1693, column: 1, scope: !344)
!357 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_get", scope: !4, file: !4, line: 1704, type: !358, scopeLine: 1705, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !360)
!358 = !DISubroutineType(types: !359)
!359 = !{!114, !310}
!360 = !{!361}
!361 = !DILocalVariable(name: "timer", arg: 1, scope: !357, file: !4, line: 1704, type: !310)
!362 = !DILocation(line: 1704, column: 72, scope: !357)
!363 = !DILocation(line: 1706, column: 9, scope: !357)
!364 = !DILocation(line: 1706, column: 16, scope: !357)
!365 = !DILocation(line: 1706, column: 2, scope: !357)
!366 = distinct !DISubprogram(name: "z_impl_k_queue_is_empty", scope: !4, file: !4, line: 2071, type: !367, scopeLine: 2072, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !380)
!367 = !DISubroutineType(types: !368)
!368 = !{!120, !369}
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 32)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_queue", file: !4, line: 1830, size: 128, elements: !371)
!371 = !{!372, !378, !379}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "data_q", scope: !370, file: !4, line: 1831, baseType: !373, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sflist_t", file: !106, line: 60, baseType: !374)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sflist", file: !106, line: 53, size: 64, elements: !375)
!375 = !{!376, !377}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !374, file: !106, line: 54, baseType: !119, size: 32)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !374, file: !106, line: 55, baseType: !119, size: 32, offset: 32)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !370, file: !4, line: 1832, baseType: !240, offset: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !370, file: !4, line: 1833, baseType: !171, size: 64, offset: 64)
!380 = !{!381}
!381 = !DILocalVariable(name: "queue", arg: 1, scope: !366, file: !4, line: 2071, type: !369)
!382 = !DILocation(line: 2071, column: 59, scope: !366)
!383 = !DILocation(line: 2073, column: 35, scope: !366)
!384 = !DILocation(line: 2073, column: 42, scope: !366)
!385 = !DILocation(line: 2073, column: 14, scope: !366)
!386 = !DILocation(line: 2073, column: 9, scope: !366)
!387 = !DILocation(line: 2073, column: 2, scope: !366)
!388 = distinct !DISubprogram(name: "z_impl_k_sem_count_get", scope: !4, file: !4, line: 3209, type: !389, scopeLine: 3210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !397)
!389 = !DISubroutineType(types: !390)
!390 = !{!112, !391}
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 32)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sem", file: !4, line: 3092, size: 128, elements: !393)
!393 = !{!394, !395, !396}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !392, file: !4, line: 3093, baseType: !171, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !392, file: !4, line: 3094, baseType: !112, size: 32, offset: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !392, file: !4, line: 3095, baseType: !112, size: 32, offset: 96)
!397 = !{!398}
!398 = !DILocalVariable(name: "sem", arg: 1, scope: !388, file: !4, line: 3209, type: !391)
!399 = !DILocation(line: 3209, column: 65, scope: !388)
!400 = !DILocation(line: 3211, column: 9, scope: !388)
!401 = !DILocation(line: 3211, column: 14, scope: !388)
!402 = !DILocation(line: 3211, column: 2, scope: !388)
!403 = distinct !DISubprogram(name: "z_impl_k_msgq_num_free_get", scope: !4, file: !4, line: 4649, type: !404, scopeLine: 4650, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !419)
!404 = !DISubroutineType(types: !405)
!405 = !{!111, !406}
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 32)
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_msgq", file: !4, line: 4390, size: 320, elements: !408)
!408 = !{!409, !410, !411, !412, !413, !414, !415, !416, !417, !418}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !407, file: !4, line: 4392, baseType: !171, size: 64)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !407, file: !4, line: 4394, baseType: !240, offset: 64)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "msg_size", scope: !407, file: !4, line: 4396, baseType: !236, size: 32, offset: 64)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !407, file: !4, line: 4398, baseType: !111, size: 32, offset: 96)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_start", scope: !407, file: !4, line: 4400, baseType: !115, size: 32, offset: 128)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_end", scope: !407, file: !4, line: 4402, baseType: !115, size: 32, offset: 160)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "read_ptr", scope: !407, file: !4, line: 4404, baseType: !115, size: 32, offset: 192)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "write_ptr", scope: !407, file: !4, line: 4406, baseType: !115, size: 32, offset: 224)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "used_msgs", scope: !407, file: !4, line: 4408, baseType: !111, size: 32, offset: 256)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !407, file: !4, line: 4413, baseType: !98, size: 8, offset: 288)
!419 = !{!420}
!420 = !DILocalVariable(name: "msgq", arg: 1, scope: !403, file: !4, line: 4649, type: !406)
!421 = !DILocation(line: 4649, column: 66, scope: !403)
!422 = !DILocation(line: 4651, column: 9, scope: !403)
!423 = !DILocation(line: 4651, column: 15, scope: !403)
!424 = !DILocation(line: 4651, column: 26, scope: !403)
!425 = !DILocation(line: 4651, column: 32, scope: !403)
!426 = !DILocation(line: 4651, column: 24, scope: !403)
!427 = !DILocation(line: 4651, column: 2, scope: !403)
!428 = distinct !DISubprogram(name: "z_impl_k_msgq_num_used_get", scope: !4, file: !4, line: 4665, type: !404, scopeLine: 4666, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !429)
!429 = !{!430}
!430 = !DILocalVariable(name: "msgq", arg: 1, scope: !428, file: !4, line: 4665, type: !406)
!431 = !DILocation(line: 4665, column: 66, scope: !428)
!432 = !DILocation(line: 4667, column: 9, scope: !428)
!433 = !DILocation(line: 4667, column: 15, scope: !428)
!434 = !DILocation(line: 4667, column: 2, scope: !428)
!435 = distinct !DISubprogram(name: "z_queue_node_peek", scope: !102, file: !102, line: 30, type: !436, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !438)
!436 = !DISubroutineType(types: !437)
!437 = !{!114, !119, !118}
!438 = !{!439, !440, !441, !442}
!439 = !DILocalVariable(name: "node", arg: 1, scope: !435, file: !102, line: 30, type: !119)
!440 = !DILocalVariable(name: "needs_free", arg: 2, scope: !435, file: !102, line: 30, type: !118)
!441 = !DILocalVariable(name: "ret", scope: !435, file: !102, line: 32, type: !114)
!442 = !DILocalVariable(name: "anode", scope: !443, file: !102, line: 40, type: !100)
!443 = distinct !DILexicalBlock(scope: !444, file: !102, line: 34, column: 65)
!444 = distinct !DILexicalBlock(scope: !435, file: !102, line: 34, column: 6)
!445 = !DILocation(line: 30, column: 39, scope: !435)
!446 = !DILocation(line: 30, column: 51, scope: !435)
!447 = !DILocation(line: 32, column: 2, scope: !435)
!448 = !DILocation(line: 32, column: 8, scope: !435)
!449 = !DILocation(line: 34, column: 7, scope: !444)
!450 = !DILocation(line: 34, column: 12, scope: !444)
!451 = !DILocation(line: 34, column: 18, scope: !444)
!452 = !DILocation(line: 34, column: 43, scope: !444)
!453 = !DILocation(line: 34, column: 22, scope: !444)
!454 = !DILocation(line: 34, column: 49, scope: !444)
!455 = !DILocation(line: 34, column: 6, scope: !435)
!456 = !DILocation(line: 40, column: 3, scope: !443)
!457 = !DILocation(line: 40, column: 22, scope: !443)
!458 = !DILocation(line: 42, column: 49, scope: !459)
!459 = distinct !DILexicalBlock(scope: !443, file: !102, line: 42, column: 12)
!460 = !DILocation(line: 42, column: 56, scope: !459)
!461 = !DILocation(line: 42, column: 12, scope: !443)
!462 = !DILocation(line: 42, column: 105, scope: !459)
!463 = !DILocation(line: 42, column: 9, scope: !443)
!464 = !DILocation(line: 43, column: 9, scope: !443)
!465 = !DILocation(line: 43, column: 16, scope: !443)
!466 = !DILocation(line: 43, column: 7, scope: !443)
!467 = !DILocation(line: 44, column: 7, scope: !468)
!468 = distinct !DILexicalBlock(scope: !443, file: !102, line: 44, column: 7)
!469 = !{i8 0, i8 2}
!470 = !DILocation(line: 44, column: 7, scope: !443)
!471 = !DILocation(line: 45, column: 11, scope: !472)
!472 = distinct !DILexicalBlock(scope: !468, file: !102, line: 44, column: 19)
!473 = !DILocation(line: 45, column: 4, scope: !472)
!474 = !DILocation(line: 46, column: 3, scope: !472)
!475 = !DILocation(line: 47, column: 2, scope: !444)
!476 = !DILocation(line: 47, column: 2, scope: !443)
!477 = !DILocation(line: 52, column: 17, scope: !478)
!478 = distinct !DILexicalBlock(scope: !444, file: !102, line: 47, column: 9)
!479 = !DILocation(line: 52, column: 7, scope: !478)
!480 = !DILocation(line: 55, column: 9, scope: !435)
!481 = !DILocation(line: 56, column: 1, scope: !435)
!482 = !DILocation(line: 55, column: 2, scope: !435)
!483 = distinct !DISubprogram(name: "sys_sfnode_flags_get", scope: !106, file: !106, line: 282, type: !484, scopeLine: 283, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !486)
!484 = !DISubroutineType(types: !485)
!485 = !{!98, !119}
!486 = !{!487}
!487 = !DILocalVariable(name: "node", arg: 1, scope: !483, file: !106, line: 282, type: !119)
!488 = !DILocation(line: 282, column: 58, scope: !483)
!489 = !DILocation(line: 284, column: 9, scope: !483)
!490 = !DILocation(line: 284, column: 15, scope: !483)
!491 = !DILocation(line: 284, column: 30, scope: !483)
!492 = !DILocation(line: 284, column: 2, scope: !483)
!493 = !DISubprogram(name: "k_free", scope: !4, file: !4, line: 5490, type: !494, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !242)
!494 = !DISubroutineType(types: !495)
!495 = !{null, !114}
!496 = distinct !DISubprogram(name: "z_impl_k_queue_init", scope: !102, file: !102, line: 58, type: !497, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !499)
!497 = !DISubroutineType(types: !498)
!498 = !{null, !369}
!499 = !{!500}
!500 = !DILocalVariable(name: "queue", arg: 1, scope: !496, file: !102, line: 58, type: !369)
!501 = !DILocation(line: 58, column: 42, scope: !496)
!502 = !DILocation(line: 60, column: 19, scope: !496)
!503 = !DILocation(line: 60, column: 26, scope: !496)
!504 = !DILocation(line: 60, column: 2, scope: !496)
!505 = !DILocation(line: 61, column: 2, scope: !496)
!506 = !DILocation(line: 61, column: 9, scope: !496)
!507 = !DILocation(line: 61, column: 16, scope: !496)
!508 = !DILocation(line: 62, column: 16, scope: !496)
!509 = !DILocation(line: 62, column: 23, scope: !496)
!510 = !DILocation(line: 62, column: 2, scope: !496)
!511 = !DILocation(line: 67, column: 2, scope: !496)
!512 = !DILocation(line: 67, column: 7, scope: !513)
!513 = distinct !DILexicalBlock(scope: !496, file: !102, line: 67, column: 5)
!514 = !DILocation(line: 69, column: 16, scope: !496)
!515 = !DILocation(line: 69, column: 2, scope: !496)
!516 = !DILocation(line: 70, column: 1, scope: !496)
!517 = distinct !DISubprogram(name: "sys_sflist_init", scope: !106, file: !106, line: 210, type: !518, scopeLine: 211, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !521)
!518 = !DISubroutineType(types: !519)
!519 = !{null, !520}
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 32)
!521 = !{!522}
!522 = !DILocalVariable(name: "list", arg: 1, scope: !517, file: !106, line: 210, type: !520)
!523 = !DILocation(line: 210, column: 50, scope: !517)
!524 = !DILocation(line: 212, column: 2, scope: !517)
!525 = !DILocation(line: 212, column: 8, scope: !517)
!526 = !DILocation(line: 212, column: 13, scope: !517)
!527 = !DILocation(line: 213, column: 2, scope: !517)
!528 = !DILocation(line: 213, column: 8, scope: !517)
!529 = !DILocation(line: 213, column: 13, scope: !517)
!530 = !DILocation(line: 214, column: 1, scope: !517)
!531 = distinct !DISubprogram(name: "z_waitq_init", scope: !532, file: !532, line: 47, type: !533, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !535)
!532 = !DIFile(filename: "kernel/include/wait_q.h", directory: "/home/sri/zephyrproject/zephyr")
!533 = !DISubroutineType(types: !534)
!534 = !{null, !170}
!535 = !{!536}
!536 = !DILocalVariable(name: "w", arg: 1, scope: !531, file: !532, line: 47, type: !170)
!537 = !DILocation(line: 47, column: 44, scope: !531)
!538 = !DILocation(line: 49, column: 18, scope: !531)
!539 = !DILocation(line: 49, column: 21, scope: !531)
!540 = !DILocation(line: 49, column: 2, scope: !531)
!541 = !DILocation(line: 50, column: 1, scope: !531)
!542 = distinct !DISubprogram(name: "z_object_init", scope: !16, file: !16, line: 215, type: !257, scopeLine: 216, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !543)
!543 = !{!544}
!544 = !DILocalVariable(name: "obj", arg: 1, scope: !542, file: !16, line: 215, type: !147)
!545 = !DILocation(line: 215, column: 46, scope: !542)
!546 = !DILocation(line: 217, column: 9, scope: !542)
!547 = !DILocation(line: 218, column: 1, scope: !542)
!548 = distinct !DISubprogram(name: "z_impl_k_queue_cancel_wait", scope: !102, file: !102, line: 97, type: !497, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !549)
!549 = !{!550, !551, !556}
!550 = !DILocalVariable(name: "queue", arg: 1, scope: !548, file: !102, line: 97, type: !369)
!551 = !DILocalVariable(name: "key", scope: !548, file: !102, line: 101, type: !552)
!552 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_spinlock_key_t", file: !241, line: 108, baseType: !553)
!553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "z_spinlock_key", file: !241, line: 34, size: 32, elements: !554)
!554 = !{!555}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !553, file: !241, line: 35, baseType: !120, size: 32)
!556 = !DILocalVariable(name: "first_pending_thread", scope: !548, file: !102, line: 102, type: !149)
!557 = !DILocation(line: 97, column: 49, scope: !548)
!558 = !DILocation(line: 99, column: 2, scope: !548)
!559 = !DILocation(line: 99, column: 7, scope: !560)
!560 = distinct !DILexicalBlock(scope: !548, file: !102, line: 99, column: 5)
!561 = !DILocation(line: 101, column: 2, scope: !548)
!562 = !DILocation(line: 101, column: 19, scope: !548)
!563 = !DILocation(line: 101, column: 38, scope: !548)
!564 = !DILocation(line: 101, column: 45, scope: !548)
!565 = !DILocalVariable(name: "l", arg: 1, scope: !566, file: !241, line: 160, type: !569)
!566 = distinct !DISubprogram(name: "k_spin_lock", scope: !241, file: !241, line: 160, type: !567, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !570)
!567 = !DISubroutineType(types: !568)
!568 = !{!552, !569}
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 32)
!570 = !{!565, !571}
!571 = !DILocalVariable(name: "k", scope: !566, file: !241, line: 163, type: !552)
!572 = !DILocation(line: 160, column: 94, scope: !566, inlinedAt: !573)
!573 = distinct !DILocation(line: 101, column: 25, scope: !548)
!574 = !DILocation(line: 162, column: 9, scope: !566, inlinedAt: !573)
!575 = !DILocation(line: 163, column: 19, scope: !566, inlinedAt: !573)
!576 = !DILocation(line: 44, column: 2, scope: !577, inlinedAt: !583)
!577 = distinct !DISubprogram(name: "arch_irq_lock", scope: !578, file: !578, line: 42, type: !579, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !581)
!578 = !DIFile(filename: "include/zephyr/arch/arm/asm_inline_gcc.h", directory: "/home/sri/zephyrproject/zephyr")
!579 = !DISubroutineType(types: !580)
!580 = !{!112}
!581 = !{!582}
!582 = !DILocalVariable(name: "key", scope: !577, file: !578, line: 44, type: !112)
!583 = distinct !DILocation(line: 169, column: 10, scope: !566, inlinedAt: !573)
!584 = !DILocation(line: 44, column: 15, scope: !577, inlinedAt: !583)
!585 = !DILocation(line: 48, column: 2, scope: !577, inlinedAt: !583)
!586 = !{i64 66945}
!587 = !DILocation(line: 80, column: 9, scope: !577, inlinedAt: !583)
!588 = !DILocation(line: 81, column: 1, scope: !577, inlinedAt: !583)
!589 = !DILocation(line: 169, column: 8, scope: !566, inlinedAt: !573)
!590 = !DILocation(line: 171, column: 26, scope: !566, inlinedAt: !573)
!591 = !DILocalVariable(name: "l", arg: 1, scope: !592, file: !241, line: 110, type: !569)
!592 = distinct !DISubprogram(name: "z_spinlock_validate_pre", scope: !241, file: !241, line: 110, type: !593, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !595)
!593 = !DISubroutineType(types: !594)
!594 = !{null, !569}
!595 = !{!591}
!596 = !DILocation(line: 110, column: 94, scope: !592, inlinedAt: !597)
!597 = distinct !DILocation(line: 171, column: 2, scope: !566, inlinedAt: !573)
!598 = !DILocation(line: 112, column: 9, scope: !592, inlinedAt: !597)
!599 = !DILocation(line: 177, column: 27, scope: !566, inlinedAt: !573)
!600 = !DILocalVariable(name: "l", arg: 1, scope: !601, file: !241, line: 121, type: !569)
!601 = distinct !DISubprogram(name: "z_spinlock_validate_post", scope: !241, file: !241, line: 121, type: !593, scopeLine: 122, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !602)
!602 = !{!600}
!603 = !DILocation(line: 121, column: 95, scope: !601, inlinedAt: !604)
!604 = distinct !DILocation(line: 177, column: 2, scope: !566, inlinedAt: !573)
!605 = !DILocation(line: 123, column: 9, scope: !601, inlinedAt: !604)
!606 = !DILocation(line: 179, column: 2, scope: !566, inlinedAt: !573)
!607 = !DILocation(line: 101, column: 25, scope: !548)
!608 = !DILocation(line: 102, column: 2, scope: !548)
!609 = !DILocation(line: 102, column: 19, scope: !548)
!610 = !DILocation(line: 104, column: 48, scope: !548)
!611 = !DILocation(line: 104, column: 55, scope: !548)
!612 = !DILocation(line: 104, column: 25, scope: !548)
!613 = !DILocation(line: 104, column: 23, scope: !548)
!614 = !DILocation(line: 106, column: 6, scope: !615)
!615 = distinct !DILexicalBlock(scope: !548, file: !102, line: 106, column: 6)
!616 = !DILocation(line: 106, column: 27, scope: !615)
!617 = !DILocation(line: 106, column: 6, scope: !548)
!618 = !DILocation(line: 107, column: 25, scope: !619)
!619 = distinct !DILexicalBlock(scope: !615, file: !102, line: 106, column: 33)
!620 = !DILocation(line: 107, column: 3, scope: !619)
!621 = !DILocation(line: 108, column: 2, scope: !619)
!622 = !DILocation(line: 110, column: 21, scope: !548)
!623 = !DILocation(line: 110, column: 2, scope: !548)
!624 = !DILocation(line: 111, column: 16, scope: !548)
!625 = !DILocation(line: 111, column: 23, scope: !548)
!626 = !DILocation(line: 111, column: 2, scope: !548)
!627 = !DILocation(line: 112, column: 1, scope: !548)
!628 = !DISubprogram(name: "z_unpend_first_thread", scope: !629, file: !629, line: 53, type: !630, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !242)
!629 = !DIFile(filename: "kernel/include/ksched.h", directory: "/home/sri/zephyrproject/zephyr")
!630 = !DISubroutineType(types: !631)
!631 = !{!149, !170}
!632 = distinct !DISubprogram(name: "prepare_thread_to_run", scope: !102, file: !102, line: 81, type: !633, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !635)
!633 = !DISubroutineType(types: !634)
!634 = !{null, !149, !114}
!635 = !{!636, !637}
!636 = !DILocalVariable(name: "thread", arg: 1, scope: !632, file: !102, line: 81, type: !149)
!637 = !DILocalVariable(name: "data", arg: 2, scope: !632, file: !102, line: 81, type: !114)
!638 = !DILocation(line: 81, column: 52, scope: !632)
!639 = !DILocation(line: 81, column: 66, scope: !632)
!640 = !DILocation(line: 83, column: 38, scope: !632)
!641 = !DILocation(line: 83, column: 49, scope: !632)
!642 = !DILocalVariable(name: "thread", arg: 1, scope: !643, file: !644, line: 137, type: !149)
!643 = distinct !DISubprogram(name: "z_thread_return_value_set_with_data", scope: !644, file: !644, line: 137, type: !645, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !647)
!644 = !DIFile(filename: "kernel/include/kernel_internal.h", directory: "/home/sri/zephyrproject/zephyr")
!645 = !DISubroutineType(types: !646)
!646 = !{null, !149, !112, !114}
!647 = !{!642, !648, !649}
!648 = !DILocalVariable(name: "value", arg: 2, scope: !643, file: !644, line: 138, type: !112)
!649 = !DILocalVariable(name: "data", arg: 3, scope: !643, file: !644, line: 139, type: !114)
!650 = !DILocation(line: 137, column: 54, scope: !643, inlinedAt: !651)
!651 = distinct !DILocation(line: 83, column: 2, scope: !632)
!652 = !DILocation(line: 138, column: 21, scope: !643, inlinedAt: !651)
!653 = !DILocation(line: 139, column: 14, scope: !643, inlinedAt: !651)
!654 = !DILocation(line: 141, column: 31, scope: !643, inlinedAt: !651)
!655 = !DILocation(line: 141, column: 39, scope: !643, inlinedAt: !651)
!656 = !DILocalVariable(name: "thread", arg: 1, scope: !657, file: !658, line: 59, type: !149)
!657 = distinct !DISubprogram(name: "arch_thread_return_value_set", scope: !658, file: !658, line: 59, type: !659, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !661)
!658 = !DIFile(filename: "arch/arm/include/cortex_m/kernel_arch_func.h", directory: "/home/sri/zephyrproject/zephyr")
!659 = !DISubroutineType(types: !660)
!660 = !{null, !149, !112}
!661 = !{!656, !662}
!662 = !DILocalVariable(name: "value", arg: 2, scope: !657, file: !658, line: 59, type: !112)
!663 = !DILocation(line: 59, column: 47, scope: !657, inlinedAt: !664)
!664 = distinct !DILocation(line: 141, column: 2, scope: !643, inlinedAt: !651)
!665 = !DILocation(line: 59, column: 68, scope: !657, inlinedAt: !664)
!666 = !DILocation(line: 61, column: 35, scope: !657, inlinedAt: !664)
!667 = !DILocation(line: 61, column: 2, scope: !657, inlinedAt: !664)
!668 = !DILocation(line: 61, column: 10, scope: !657, inlinedAt: !664)
!669 = !DILocation(line: 61, column: 15, scope: !657, inlinedAt: !664)
!670 = !DILocation(line: 61, column: 33, scope: !657, inlinedAt: !664)
!671 = !DILocation(line: 142, column: 27, scope: !643, inlinedAt: !651)
!672 = !DILocation(line: 142, column: 2, scope: !643, inlinedAt: !651)
!673 = !DILocation(line: 142, column: 15, scope: !643, inlinedAt: !651)
!674 = !DILocation(line: 142, column: 25, scope: !643, inlinedAt: !651)
!675 = !DILocation(line: 84, column: 17, scope: !632)
!676 = !DILocation(line: 84, column: 2, scope: !632)
!677 = !DILocation(line: 85, column: 1, scope: !632)
!678 = distinct !DISubprogram(name: "handle_poll_events", scope: !102, file: !102, line: 87, type: !679, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !681)
!679 = !DISubroutineType(types: !680)
!680 = !{null, !369, !111}
!681 = !{!682, !683}
!682 = !DILocalVariable(name: "queue", arg: 1, scope: !678, file: !102, line: 87, type: !369)
!683 = !DILocalVariable(name: "state", arg: 2, scope: !678, file: !102, line: 87, type: !111)
!684 = !DILocation(line: 87, column: 55, scope: !678)
!685 = !DILocation(line: 87, column: 71, scope: !678)
!686 = !DILocation(line: 92, column: 9, scope: !678)
!687 = !DILocation(line: 93, column: 9, scope: !678)
!688 = !DILocation(line: 95, column: 1, scope: !678)
!689 = !DISubprogram(name: "z_reschedule", scope: !629, file: !629, line: 51, type: !690, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !242)
!690 = !DISubroutineType(types: !691)
!691 = !{null, !569, !552}
!692 = distinct !DISubprogram(name: "k_queue_insert", scope: !102, file: !102, line: 178, type: !693, scopeLine: 179, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !695)
!693 = !DISubroutineType(types: !694)
!694 = !{null, !369, !114, !114}
!695 = !{!696, !697, !698}
!696 = !DILocalVariable(name: "queue", arg: 1, scope: !692, file: !102, line: 178, type: !369)
!697 = !DILocalVariable(name: "prev", arg: 2, scope: !692, file: !102, line: 178, type: !114)
!698 = !DILocalVariable(name: "data", arg: 3, scope: !692, file: !102, line: 178, type: !114)
!699 = !DILocation(line: 178, column: 37, scope: !692)
!700 = !DILocation(line: 178, column: 50, scope: !692)
!701 = !DILocation(line: 178, column: 62, scope: !692)
!702 = !DILocation(line: 180, column: 2, scope: !692)
!703 = !DILocation(line: 180, column: 7, scope: !704)
!704 = distinct !DILexicalBlock(scope: !692, file: !102, line: 180, column: 5)
!705 = !DILocation(line: 182, column: 21, scope: !692)
!706 = !DILocation(line: 182, column: 28, scope: !692)
!707 = !DILocation(line: 182, column: 34, scope: !692)
!708 = !DILocation(line: 182, column: 8, scope: !692)
!709 = !DILocation(line: 184, column: 2, scope: !692)
!710 = !DILocation(line: 184, column: 7, scope: !711)
!711 = distinct !DILexicalBlock(scope: !692, file: !102, line: 184, column: 5)
!712 = !DILocation(line: 185, column: 1, scope: !692)
!713 = distinct !DISubprogram(name: "queue_insert", scope: !102, file: !102, line: 123, type: !714, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !717)
!714 = !DISubroutineType(types: !715)
!715 = !{!716, !369, !114, !114, !118, !118}
!716 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !99, line: 58, baseType: !120)
!717 = !{!718, !719, !720, !721, !722, !723, !724, !725}
!718 = !DILocalVariable(name: "queue", arg: 1, scope: !713, file: !102, line: 123, type: !369)
!719 = !DILocalVariable(name: "prev", arg: 2, scope: !713, file: !102, line: 123, type: !114)
!720 = !DILocalVariable(name: "data", arg: 3, scope: !713, file: !102, line: 123, type: !114)
!721 = !DILocalVariable(name: "alloc", arg: 4, scope: !713, file: !102, line: 124, type: !118)
!722 = !DILocalVariable(name: "is_append", arg: 5, scope: !713, file: !102, line: 124, type: !118)
!723 = !DILocalVariable(name: "first_pending_thread", scope: !713, file: !102, line: 126, type: !149)
!724 = !DILocalVariable(name: "key", scope: !713, file: !102, line: 127, type: !552)
!725 = !DILocalVariable(name: "anode", scope: !726, file: !102, line: 149, type: !100)
!726 = distinct !DILexicalBlock(scope: !727, file: !102, line: 148, column: 13)
!727 = distinct !DILexicalBlock(scope: !713, file: !102, line: 148, column: 6)
!728 = !DILocation(line: 123, column: 45, scope: !713)
!729 = !DILocation(line: 123, column: 58, scope: !713)
!730 = !DILocation(line: 123, column: 70, scope: !713)
!731 = !DILocation(line: 124, column: 14, scope: !713)
!732 = !DILocation(line: 124, column: 27, scope: !713)
!733 = !DILocation(line: 126, column: 2, scope: !713)
!734 = !DILocation(line: 126, column: 19, scope: !713)
!735 = !DILocation(line: 127, column: 2, scope: !713)
!736 = !DILocation(line: 127, column: 19, scope: !713)
!737 = !DILocation(line: 127, column: 38, scope: !713)
!738 = !DILocation(line: 127, column: 45, scope: !713)
!739 = !DILocation(line: 160, column: 94, scope: !566, inlinedAt: !740)
!740 = distinct !DILocation(line: 127, column: 25, scope: !713)
!741 = !DILocation(line: 162, column: 9, scope: !566, inlinedAt: !740)
!742 = !DILocation(line: 163, column: 19, scope: !566, inlinedAt: !740)
!743 = !DILocation(line: 44, column: 2, scope: !577, inlinedAt: !744)
!744 = distinct !DILocation(line: 169, column: 10, scope: !566, inlinedAt: !740)
!745 = !DILocation(line: 44, column: 15, scope: !577, inlinedAt: !744)
!746 = !DILocation(line: 48, column: 2, scope: !577, inlinedAt: !744)
!747 = !DILocation(line: 80, column: 9, scope: !577, inlinedAt: !744)
!748 = !DILocation(line: 81, column: 1, scope: !577, inlinedAt: !744)
!749 = !DILocation(line: 169, column: 8, scope: !566, inlinedAt: !740)
!750 = !DILocation(line: 171, column: 26, scope: !566, inlinedAt: !740)
!751 = !DILocation(line: 110, column: 94, scope: !592, inlinedAt: !752)
!752 = distinct !DILocation(line: 171, column: 2, scope: !566, inlinedAt: !740)
!753 = !DILocation(line: 112, column: 9, scope: !592, inlinedAt: !752)
!754 = !DILocation(line: 177, column: 27, scope: !566, inlinedAt: !740)
!755 = !DILocation(line: 121, column: 95, scope: !601, inlinedAt: !756)
!756 = distinct !DILocation(line: 177, column: 2, scope: !566, inlinedAt: !740)
!757 = !DILocation(line: 123, column: 9, scope: !601, inlinedAt: !756)
!758 = !DILocation(line: 179, column: 2, scope: !566, inlinedAt: !740)
!759 = !DILocation(line: 127, column: 25, scope: !713)
!760 = !DILocation(line: 129, column: 2, scope: !713)
!761 = !DILocation(line: 129, column: 7, scope: !762)
!762 = distinct !DILexicalBlock(scope: !713, file: !102, line: 129, column: 5)
!763 = !DILocation(line: 131, column: 6, scope: !764)
!764 = distinct !DILexicalBlock(scope: !713, file: !102, line: 131, column: 6)
!765 = !DILocation(line: 131, column: 6, scope: !713)
!766 = !DILocation(line: 132, column: 32, scope: !767)
!767 = distinct !DILexicalBlock(scope: !764, file: !102, line: 131, column: 17)
!768 = !DILocation(line: 132, column: 39, scope: !767)
!769 = !DILocation(line: 132, column: 10, scope: !767)
!770 = !DILocation(line: 132, column: 8, scope: !767)
!771 = !DILocation(line: 133, column: 2, scope: !767)
!772 = !DILocation(line: 134, column: 48, scope: !713)
!773 = !DILocation(line: 134, column: 55, scope: !713)
!774 = !DILocation(line: 134, column: 25, scope: !713)
!775 = !DILocation(line: 134, column: 23, scope: !713)
!776 = !DILocation(line: 136, column: 6, scope: !777)
!777 = distinct !DILexicalBlock(scope: !713, file: !102, line: 136, column: 6)
!778 = !DILocation(line: 136, column: 27, scope: !777)
!779 = !DILocation(line: 136, column: 6, scope: !713)
!780 = !DILocation(line: 137, column: 3, scope: !781)
!781 = distinct !DILexicalBlock(scope: !777, file: !102, line: 136, column: 33)
!782 = !DILocation(line: 137, column: 8, scope: !783)
!783 = distinct !DILexicalBlock(scope: !781, file: !102, line: 137, column: 6)
!784 = !DILocation(line: 139, column: 25, scope: !781)
!785 = !DILocation(line: 139, column: 47, scope: !781)
!786 = !DILocation(line: 139, column: 3, scope: !781)
!787 = !DILocation(line: 140, column: 17, scope: !781)
!788 = !DILocation(line: 140, column: 24, scope: !781)
!789 = !DILocation(line: 140, column: 3, scope: !781)
!790 = !DILocation(line: 142, column: 3, scope: !781)
!791 = !DILocation(line: 142, column: 8, scope: !792)
!792 = distinct !DILexicalBlock(scope: !781, file: !102, line: 142, column: 6)
!793 = !DILocation(line: 144, column: 3, scope: !781)
!794 = !DILocation(line: 148, column: 6, scope: !727)
!795 = !DILocation(line: 148, column: 6, scope: !713)
!796 = !DILocation(line: 149, column: 3, scope: !726)
!797 = !DILocation(line: 149, column: 22, scope: !726)
!798 = !DILocation(line: 151, column: 11, scope: !726)
!799 = !DILocation(line: 151, column: 9, scope: !726)
!800 = !DILocation(line: 152, column: 7, scope: !801)
!801 = distinct !DILexicalBlock(scope: !726, file: !102, line: 152, column: 7)
!802 = !DILocation(line: 152, column: 13, scope: !801)
!803 = !DILocation(line: 152, column: 7, scope: !726)
!804 = !DILocation(line: 153, column: 19, scope: !805)
!805 = distinct !DILexicalBlock(scope: !801, file: !102, line: 152, column: 19)
!806 = !DILocation(line: 153, column: 26, scope: !805)
!807 = !DILocation(line: 153, column: 4, scope: !805)
!808 = !DILocalVariable(name: "l", arg: 1, scope: !809, file: !241, line: 235, type: !569)
!809 = distinct !DISubprogram(name: "k_spin_unlock", scope: !241, file: !241, line: 235, type: !690, scopeLine: 237, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !810)
!810 = !{!808, !811}
!811 = !DILocalVariable(name: "key", arg: 2, scope: !809, file: !241, line: 236, type: !552)
!812 = !DILocation(line: 235, column: 84, scope: !809, inlinedAt: !813)
!813 = distinct !DILocation(line: 153, column: 4, scope: !805)
!814 = !DILocation(line: 236, column: 23, scope: !809, inlinedAt: !813)
!815 = !DILocation(line: 238, column: 9, scope: !809, inlinedAt: !813)
!816 = !DILocation(line: 261, column: 22, scope: !809, inlinedAt: !813)
!817 = !DILocalVariable(name: "key", arg: 1, scope: !818, file: !578, line: 88, type: !112)
!818 = distinct !DISubprogram(name: "arch_irq_unlock", scope: !578, file: !578, line: 88, type: !819, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !821)
!819 = !DISubroutineType(types: !820)
!820 = !{null, !112}
!821 = !{!817}
!822 = !DILocation(line: 88, column: 80, scope: !818, inlinedAt: !823)
!823 = distinct !DILocation(line: 261, column: 2, scope: !809, inlinedAt: !813)
!824 = !DILocation(line: 91, column: 6, scope: !825, inlinedAt: !823)
!825 = distinct !DILexicalBlock(scope: !818, file: !578, line: 91, column: 6)
!826 = !DILocation(line: 91, column: 10, scope: !825, inlinedAt: !823)
!827 = !DILocation(line: 91, column: 6, scope: !818, inlinedAt: !823)
!828 = !DILocation(line: 92, column: 3, scope: !829, inlinedAt: !823)
!829 = distinct !DILexicalBlock(scope: !825, file: !578, line: 91, column: 17)
!830 = !DILocation(line: 94, column: 2, scope: !818, inlinedAt: !823)
!831 = !{i64 67249}
!832 = !DILocation(line: 114, column: 1, scope: !818, inlinedAt: !823)
!833 = !DILocation(line: 155, column: 4, scope: !805)
!834 = !DILocation(line: 155, column: 9, scope: !835)
!835 = distinct !DILexicalBlock(scope: !805, file: !102, line: 155, column: 7)
!836 = !DILocation(line: 158, column: 4, scope: !805)
!837 = !DILocation(line: 160, column: 17, scope: !726)
!838 = !DILocation(line: 160, column: 3, scope: !726)
!839 = !DILocation(line: 160, column: 10, scope: !726)
!840 = !DILocation(line: 160, column: 15, scope: !726)
!841 = !DILocation(line: 161, column: 20, scope: !726)
!842 = !DILocation(line: 161, column: 27, scope: !726)
!843 = !DILocation(line: 161, column: 3, scope: !726)
!844 = !DILocation(line: 162, column: 10, scope: !726)
!845 = !DILocation(line: 162, column: 8, scope: !726)
!846 = !DILocation(line: 163, column: 2, scope: !727)
!847 = !DILocation(line: 163, column: 2, scope: !726)
!848 = !DILocation(line: 164, column: 19, scope: !849)
!849 = distinct !DILexicalBlock(scope: !727, file: !102, line: 163, column: 9)
!850 = !DILocation(line: 164, column: 3, scope: !849)
!851 = !DILocation(line: 167, column: 2, scope: !713)
!852 = !DILocation(line: 167, column: 7, scope: !853)
!853 = distinct !DILexicalBlock(scope: !713, file: !102, line: 167, column: 5)
!854 = !DILocation(line: 169, column: 21, scope: !713)
!855 = !DILocation(line: 169, column: 28, scope: !713)
!856 = !DILocation(line: 169, column: 36, scope: !713)
!857 = !DILocation(line: 169, column: 42, scope: !713)
!858 = !DILocation(line: 169, column: 2, scope: !713)
!859 = !DILocation(line: 170, column: 21, scope: !713)
!860 = !DILocation(line: 170, column: 2, scope: !713)
!861 = !DILocation(line: 171, column: 16, scope: !713)
!862 = !DILocation(line: 171, column: 23, scope: !713)
!863 = !DILocation(line: 171, column: 2, scope: !713)
!864 = !DILocation(line: 173, column: 2, scope: !713)
!865 = !DILocation(line: 173, column: 7, scope: !866)
!866 = distinct !DILexicalBlock(scope: !713, file: !102, line: 173, column: 5)
!867 = !DILocation(line: 175, column: 2, scope: !713)
!868 = !DILocation(line: 176, column: 1, scope: !713)
!869 = distinct !DISubprogram(name: "k_queue_append", scope: !102, file: !102, line: 187, type: !870, scopeLine: 188, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !872)
!870 = !DISubroutineType(types: !871)
!871 = !{null, !369, !114}
!872 = !{!873, !874}
!873 = !DILocalVariable(name: "queue", arg: 1, scope: !869, file: !102, line: 187, type: !369)
!874 = !DILocalVariable(name: "data", arg: 2, scope: !869, file: !102, line: 187, type: !114)
!875 = !DILocation(line: 187, column: 37, scope: !869)
!876 = !DILocation(line: 187, column: 50, scope: !869)
!877 = !DILocation(line: 189, column: 2, scope: !869)
!878 = !DILocation(line: 189, column: 7, scope: !879)
!879 = distinct !DILexicalBlock(scope: !869, file: !102, line: 189, column: 5)
!880 = !DILocation(line: 191, column: 21, scope: !869)
!881 = !DILocation(line: 191, column: 31, scope: !869)
!882 = !DILocation(line: 191, column: 8, scope: !869)
!883 = !DILocation(line: 193, column: 2, scope: !869)
!884 = !DILocation(line: 193, column: 7, scope: !885)
!885 = distinct !DILexicalBlock(scope: !869, file: !102, line: 193, column: 5)
!886 = !DILocation(line: 194, column: 1, scope: !869)
!887 = distinct !DISubprogram(name: "k_queue_prepend", scope: !102, file: !102, line: 196, type: !870, scopeLine: 197, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !888)
!888 = !{!889, !890}
!889 = !DILocalVariable(name: "queue", arg: 1, scope: !887, file: !102, line: 196, type: !369)
!890 = !DILocalVariable(name: "data", arg: 2, scope: !887, file: !102, line: 196, type: !114)
!891 = !DILocation(line: 196, column: 38, scope: !887)
!892 = !DILocation(line: 196, column: 51, scope: !887)
!893 = !DILocation(line: 198, column: 2, scope: !887)
!894 = !DILocation(line: 198, column: 7, scope: !895)
!895 = distinct !DILexicalBlock(scope: !887, file: !102, line: 198, column: 5)
!896 = !DILocation(line: 200, column: 21, scope: !887)
!897 = !DILocation(line: 200, column: 31, scope: !887)
!898 = !DILocation(line: 200, column: 8, scope: !887)
!899 = !DILocation(line: 202, column: 2, scope: !887)
!900 = !DILocation(line: 202, column: 7, scope: !901)
!901 = distinct !DILexicalBlock(scope: !887, file: !102, line: 202, column: 5)
!902 = !DILocation(line: 203, column: 1, scope: !887)
!903 = distinct !DISubprogram(name: "z_impl_k_queue_alloc_append", scope: !102, file: !102, line: 205, type: !904, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !906)
!904 = !DISubroutineType(types: !905)
!905 = !{!716, !369, !114}
!906 = !{!907, !908, !909}
!907 = !DILocalVariable(name: "queue", arg: 1, scope: !903, file: !102, line: 205, type: !369)
!908 = !DILocalVariable(name: "data", arg: 2, scope: !903, file: !102, line: 205, type: !114)
!909 = !DILocalVariable(name: "ret", scope: !903, file: !102, line: 209, type: !716)
!910 = !DILocation(line: 205, column: 53, scope: !903)
!911 = !DILocation(line: 205, column: 66, scope: !903)
!912 = !DILocation(line: 207, column: 2, scope: !903)
!913 = !DILocation(line: 207, column: 7, scope: !914)
!914 = distinct !DILexicalBlock(scope: !903, file: !102, line: 207, column: 5)
!915 = !DILocation(line: 209, column: 2, scope: !903)
!916 = !DILocation(line: 209, column: 10, scope: !903)
!917 = !DILocation(line: 209, column: 29, scope: !903)
!918 = !DILocation(line: 209, column: 39, scope: !903)
!919 = !DILocation(line: 209, column: 16, scope: !903)
!920 = !DILocation(line: 211, column: 2, scope: !903)
!921 = !DILocation(line: 211, column: 7, scope: !922)
!922 = distinct !DILexicalBlock(scope: !903, file: !102, line: 211, column: 5)
!923 = !DILocation(line: 213, column: 9, scope: !903)
!924 = !DILocation(line: 214, column: 1, scope: !903)
!925 = !DILocation(line: 213, column: 2, scope: !903)
!926 = distinct !DISubprogram(name: "z_impl_k_queue_alloc_prepend", scope: !102, file: !102, line: 226, type: !904, scopeLine: 227, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !927)
!927 = !{!928, !929, !930}
!928 = !DILocalVariable(name: "queue", arg: 1, scope: !926, file: !102, line: 226, type: !369)
!929 = !DILocalVariable(name: "data", arg: 2, scope: !926, file: !102, line: 226, type: !114)
!930 = !DILocalVariable(name: "ret", scope: !926, file: !102, line: 230, type: !716)
!931 = !DILocation(line: 226, column: 54, scope: !926)
!932 = !DILocation(line: 226, column: 67, scope: !926)
!933 = !DILocation(line: 228, column: 2, scope: !926)
!934 = !DILocation(line: 228, column: 7, scope: !935)
!935 = distinct !DILexicalBlock(scope: !926, file: !102, line: 228, column: 5)
!936 = !DILocation(line: 230, column: 2, scope: !926)
!937 = !DILocation(line: 230, column: 10, scope: !926)
!938 = !DILocation(line: 230, column: 29, scope: !926)
!939 = !DILocation(line: 230, column: 39, scope: !926)
!940 = !DILocation(line: 230, column: 16, scope: !926)
!941 = !DILocation(line: 232, column: 2, scope: !926)
!942 = !DILocation(line: 232, column: 7, scope: !943)
!943 = distinct !DILexicalBlock(scope: !926, file: !102, line: 232, column: 5)
!944 = !DILocation(line: 234, column: 9, scope: !926)
!945 = !DILocation(line: 235, column: 1, scope: !926)
!946 = !DILocation(line: 234, column: 2, scope: !926)
!947 = distinct !DISubprogram(name: "k_queue_append_list", scope: !102, file: !102, line: 247, type: !948, scopeLine: 248, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !950)
!948 = !DISubroutineType(types: !949)
!949 = !{!120, !369, !114, !114}
!950 = !{!951, !952, !953, !954, !955}
!951 = !DILocalVariable(name: "queue", arg: 1, scope: !947, file: !102, line: 247, type: !369)
!952 = !DILocalVariable(name: "head", arg: 2, scope: !947, file: !102, line: 247, type: !114)
!953 = !DILocalVariable(name: "tail", arg: 3, scope: !947, file: !102, line: 247, type: !114)
!954 = !DILocalVariable(name: "key", scope: !947, file: !102, line: 258, type: !552)
!955 = !DILocalVariable(name: "thread", scope: !947, file: !102, line: 259, type: !149)
!956 = !DILocation(line: 247, column: 41, scope: !947)
!957 = !DILocation(line: 247, column: 54, scope: !947)
!958 = !DILocation(line: 247, column: 66, scope: !947)
!959 = !DILocation(line: 249, column: 2, scope: !947)
!960 = !DILocation(line: 249, column: 7, scope: !961)
!961 = distinct !DILexicalBlock(scope: !947, file: !102, line: 249, column: 5)
!962 = !DILocation(line: 252, column: 6, scope: !963)
!963 = distinct !DILexicalBlock(scope: !947, file: !102, line: 252, column: 6)
!964 = !DILocation(line: 252, column: 11, scope: !963)
!965 = !DILocation(line: 252, column: 16, scope: !963)
!966 = !DILocation(line: 252, column: 19, scope: !963)
!967 = !DILocation(line: 252, column: 24, scope: !963)
!968 = !DILocation(line: 252, column: 6, scope: !947)
!969 = !DILocation(line: 253, column: 3, scope: !970)
!970 = distinct !DILexicalBlock(scope: !963, file: !102, line: 252, column: 30)
!971 = !DILocation(line: 253, column: 8, scope: !972)
!972 = distinct !DILexicalBlock(scope: !970, file: !102, line: 253, column: 6)
!973 = !DILocation(line: 255, column: 3, scope: !970)
!974 = !DILocation(line: 258, column: 2, scope: !947)
!975 = !DILocation(line: 258, column: 19, scope: !947)
!976 = !DILocation(line: 258, column: 38, scope: !947)
!977 = !DILocation(line: 258, column: 45, scope: !947)
!978 = !DILocation(line: 160, column: 94, scope: !566, inlinedAt: !979)
!979 = distinct !DILocation(line: 258, column: 25, scope: !947)
!980 = !DILocation(line: 162, column: 9, scope: !566, inlinedAt: !979)
!981 = !DILocation(line: 163, column: 19, scope: !566, inlinedAt: !979)
!982 = !DILocation(line: 44, column: 2, scope: !577, inlinedAt: !983)
!983 = distinct !DILocation(line: 169, column: 10, scope: !566, inlinedAt: !979)
!984 = !DILocation(line: 44, column: 15, scope: !577, inlinedAt: !983)
!985 = !DILocation(line: 48, column: 2, scope: !577, inlinedAt: !983)
!986 = !DILocation(line: 80, column: 9, scope: !577, inlinedAt: !983)
!987 = !DILocation(line: 81, column: 1, scope: !577, inlinedAt: !983)
!988 = !DILocation(line: 169, column: 8, scope: !566, inlinedAt: !979)
!989 = !DILocation(line: 171, column: 26, scope: !566, inlinedAt: !979)
!990 = !DILocation(line: 110, column: 94, scope: !592, inlinedAt: !991)
!991 = distinct !DILocation(line: 171, column: 2, scope: !566, inlinedAt: !979)
!992 = !DILocation(line: 112, column: 9, scope: !592, inlinedAt: !991)
!993 = !DILocation(line: 177, column: 27, scope: !566, inlinedAt: !979)
!994 = !DILocation(line: 121, column: 95, scope: !601, inlinedAt: !995)
!995 = distinct !DILocation(line: 177, column: 2, scope: !566, inlinedAt: !979)
!996 = !DILocation(line: 123, column: 9, scope: !601, inlinedAt: !995)
!997 = !DILocation(line: 179, column: 2, scope: !566, inlinedAt: !979)
!998 = !DILocation(line: 258, column: 25, scope: !947)
!999 = !DILocation(line: 259, column: 2, scope: !947)
!1000 = !DILocation(line: 259, column: 19, scope: !947)
!1001 = !DILocation(line: 261, column: 6, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !947, file: !102, line: 261, column: 6)
!1003 = !DILocation(line: 261, column: 11, scope: !1002)
!1004 = !DILocation(line: 261, column: 6, scope: !947)
!1005 = !DILocation(line: 262, column: 35, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !1002, file: !102, line: 261, column: 17)
!1007 = !DILocation(line: 262, column: 42, scope: !1006)
!1008 = !DILocation(line: 262, column: 12, scope: !1006)
!1009 = !DILocation(line: 262, column: 10, scope: !1006)
!1010 = !DILocation(line: 263, column: 2, scope: !1006)
!1011 = !DILocation(line: 265, column: 2, scope: !947)
!1012 = !DILocation(line: 265, column: 10, scope: !947)
!1013 = !DILocation(line: 265, column: 15, scope: !947)
!1014 = !DILocation(line: 265, column: 21, scope: !947)
!1015 = !DILocation(line: 265, column: 25, scope: !947)
!1016 = !DILocation(line: 265, column: 32, scope: !947)
!1017 = !DILocation(line: 0, scope: !947)
!1018 = !DILocation(line: 266, column: 25, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !947, file: !102, line: 265, column: 39)
!1020 = !DILocation(line: 266, column: 33, scope: !1019)
!1021 = !DILocation(line: 266, column: 3, scope: !1019)
!1022 = !DILocation(line: 267, column: 20, scope: !1019)
!1023 = !DILocation(line: 267, column: 10, scope: !1019)
!1024 = !DILocation(line: 267, column: 8, scope: !1019)
!1025 = !DILocation(line: 268, column: 35, scope: !1019)
!1026 = !DILocation(line: 268, column: 42, scope: !1019)
!1027 = !DILocation(line: 268, column: 12, scope: !1019)
!1028 = !DILocation(line: 268, column: 10, scope: !1019)
!1029 = distinct !{!1029, !1011, !1030}
!1030 = !DILocation(line: 269, column: 2, scope: !947)
!1031 = !DILocation(line: 271, column: 6, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !947, file: !102, line: 271, column: 6)
!1033 = !DILocation(line: 271, column: 11, scope: !1032)
!1034 = !DILocation(line: 271, column: 6, scope: !947)
!1035 = !DILocation(line: 272, column: 27, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !1032, file: !102, line: 271, column: 17)
!1037 = !DILocation(line: 272, column: 34, scope: !1036)
!1038 = !DILocation(line: 272, column: 42, scope: !1036)
!1039 = !DILocation(line: 272, column: 48, scope: !1036)
!1040 = !DILocation(line: 272, column: 3, scope: !1036)
!1041 = !DILocation(line: 273, column: 2, scope: !1036)
!1042 = !DILocation(line: 275, column: 2, scope: !947)
!1043 = !DILocation(line: 275, column: 7, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !947, file: !102, line: 275, column: 5)
!1045 = !DILocation(line: 277, column: 21, scope: !947)
!1046 = !DILocation(line: 277, column: 2, scope: !947)
!1047 = !DILocation(line: 278, column: 16, scope: !947)
!1048 = !DILocation(line: 278, column: 23, scope: !947)
!1049 = !DILocation(line: 278, column: 2, scope: !947)
!1050 = !DILocation(line: 279, column: 2, scope: !947)
!1051 = !DILocation(line: 280, column: 1, scope: !947)
!1052 = distinct !DISubprogram(name: "sys_sflist_append_list", scope: !106, file: !106, line: 403, type: !1053, scopeLine: 403, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1055)
!1053 = !DISubroutineType(types: !1054)
!1054 = !{null, !520, !114, !114}
!1055 = !{!1056, !1057, !1058}
!1056 = !DILocalVariable(name: "list", arg: 1, scope: !1052, file: !106, line: 403, type: !520)
!1057 = !DILocalVariable(name: "head", arg: 2, scope: !1052, file: !106, line: 403, type: !114)
!1058 = !DILocalVariable(name: "tail", arg: 3, scope: !1052, file: !106, line: 403, type: !114)
!1059 = !DILocation(line: 403, column: 57, scope: !1052)
!1060 = !DILocation(line: 403, column: 69, scope: !1052)
!1061 = !DILocation(line: 403, column: 81, scope: !1052)
!1062 = !DILocation(line: 403, column: 93, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1052, file: !106, line: 403, column: 93)
!1064 = !DILocation(line: 403, column: 98, scope: !1063)
!1065 = !DILocation(line: 403, column: 112, scope: !1063)
!1066 = !DILocation(line: 403, column: 115, scope: !1063)
!1067 = !DILocation(line: 403, column: 120, scope: !1063)
!1068 = !DILocation(line: 403, column: 93, scope: !1052)
!1069 = !DILocation(line: 403, column: 162, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !1071, file: !106, line: 403, column: 141)
!1071 = distinct !DILexicalBlock(scope: !1063, file: !106, line: 403, column: 135)
!1072 = !DILocation(line: 403, column: 141, scope: !1070)
!1073 = !DILocation(line: 403, column: 168, scope: !1070)
!1074 = !DILocation(line: 403, column: 141, scope: !1071)
!1075 = !DILocation(line: 403, column: 203, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1070, file: !106, line: 403, column: 183)
!1077 = !DILocation(line: 403, column: 225, scope: !1076)
!1078 = !DILocation(line: 403, column: 185, scope: !1076)
!1079 = !DILocation(line: 403, column: 232, scope: !1076)
!1080 = !DILocation(line: 403, column: 281, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !1070, file: !106, line: 403, column: 239)
!1082 = !DILocation(line: 403, column: 260, scope: !1081)
!1083 = !DILocation(line: 403, column: 304, scope: !1081)
!1084 = !DILocation(line: 403, column: 241, scope: !1081)
!1085 = !DILocation(line: 403, column: 331, scope: !1071)
!1086 = !DILocation(line: 403, column: 353, scope: !1071)
!1087 = !DILocation(line: 403, column: 313, scope: !1071)
!1088 = !DILocation(line: 403, column: 360, scope: !1071)
!1089 = !DILocation(line: 403, column: 362, scope: !1052)
!1090 = distinct !DISubprogram(name: "k_queue_merge_slist", scope: !102, file: !102, line: 282, type: !1091, scopeLine: 283, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1106)
!1091 = !DISubroutineType(types: !1092)
!1092 = !{!120, !369, !1093}
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 32)
!1094 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_slist_t", file: !1095, line: 49, baseType: !1096)
!1095 = !DIFile(filename: "include/zephyr/sys/slist.h", directory: "/home/sri/zephyrproject/zephyr")
!1096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_slist", file: !1095, line: 42, size: 64, elements: !1097)
!1097 = !{!1098, !1105}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1096, file: !1095, line: 43, baseType: !1099, size: 32)
!1099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1100, size: 32)
!1100 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_snode_t", file: !1095, line: 39, baseType: !1101)
!1101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_snode", file: !1095, line: 33, size: 32, elements: !1102)
!1102 = !{!1103}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1101, file: !1095, line: 34, baseType: !1104, size: 32)
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1101, size: 32)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1096, file: !1095, line: 44, baseType: !1099, size: 32, offset: 32)
!1106 = !{!1107, !1108, !1109}
!1107 = !DILocalVariable(name: "queue", arg: 1, scope: !1090, file: !102, line: 282, type: !369)
!1108 = !DILocalVariable(name: "list", arg: 2, scope: !1090, file: !102, line: 282, type: !1093)
!1109 = !DILocalVariable(name: "ret", scope: !1090, file: !102, line: 284, type: !120)
!1110 = !DILocation(line: 282, column: 41, scope: !1090)
!1111 = !DILocation(line: 282, column: 61, scope: !1090)
!1112 = !DILocation(line: 284, column: 2, scope: !1090)
!1113 = !DILocation(line: 284, column: 6, scope: !1090)
!1114 = !DILocation(line: 286, column: 2, scope: !1090)
!1115 = !DILocation(line: 286, column: 7, scope: !1116)
!1116 = distinct !DILexicalBlock(scope: !1090, file: !102, line: 286, column: 5)
!1117 = !DILocation(line: 289, column: 25, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !1090, file: !102, line: 289, column: 6)
!1119 = !DILocation(line: 289, column: 6, scope: !1118)
!1120 = !DILocation(line: 289, column: 6, scope: !1090)
!1121 = !DILocation(line: 290, column: 3, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !1118, file: !102, line: 289, column: 32)
!1123 = !DILocation(line: 290, column: 8, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1122, file: !102, line: 290, column: 6)
!1125 = !DILocation(line: 292, column: 3, scope: !1122)
!1126 = !DILocation(line: 304, column: 28, scope: !1090)
!1127 = !DILocation(line: 304, column: 35, scope: !1090)
!1128 = !DILocation(line: 304, column: 41, scope: !1090)
!1129 = !DILocation(line: 304, column: 47, scope: !1090)
!1130 = !DILocation(line: 304, column: 53, scope: !1090)
!1131 = !DILocation(line: 304, column: 8, scope: !1090)
!1132 = !DILocation(line: 304, column: 6, scope: !1090)
!1133 = !DILocation(line: 305, column: 6, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1090, file: !102, line: 305, column: 6)
!1135 = !DILocation(line: 305, column: 10, scope: !1134)
!1136 = !DILocation(line: 305, column: 6, scope: !1090)
!1137 = !DILocation(line: 306, column: 3, scope: !1138)
!1138 = distinct !DILexicalBlock(scope: !1134, file: !102, line: 305, column: 16)
!1139 = !DILocation(line: 306, column: 8, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1138, file: !102, line: 306, column: 6)
!1141 = !DILocation(line: 308, column: 10, scope: !1138)
!1142 = !DILocation(line: 308, column: 3, scope: !1138)
!1143 = !DILocation(line: 310, column: 17, scope: !1090)
!1144 = !DILocation(line: 310, column: 2, scope: !1090)
!1145 = !DILocation(line: 312, column: 2, scope: !1090)
!1146 = !DILocation(line: 312, column: 7, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1090, file: !102, line: 312, column: 5)
!1148 = !DILocation(line: 314, column: 2, scope: !1090)
!1149 = !DILocation(line: 315, column: 1, scope: !1090)
!1150 = distinct !DISubprogram(name: "sys_slist_is_empty", scope: !1095, file: !1095, line: 268, type: !1151, scopeLine: 268, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1153)
!1151 = !DISubroutineType(types: !1152)
!1152 = !{!118, !1093}
!1153 = !{!1154}
!1154 = !DILocalVariable(name: "list", arg: 1, scope: !1150, file: !1095, line: 268, type: !1093)
!1155 = !DILocation(line: 268, column: 53, scope: !1150)
!1156 = !DILocation(line: 268, column: 89, scope: !1150)
!1157 = !DILocation(line: 268, column: 69, scope: !1150)
!1158 = !DILocation(line: 268, column: 95, scope: !1150)
!1159 = !DILocation(line: 268, column: 61, scope: !1150)
!1160 = distinct !DISubprogram(name: "sys_slist_init", scope: !1095, file: !1095, line: 199, type: !1161, scopeLine: 200, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1163)
!1161 = !DISubroutineType(types: !1162)
!1162 = !{null, !1093}
!1163 = !{!1164}
!1164 = !DILocalVariable(name: "list", arg: 1, scope: !1160, file: !1095, line: 199, type: !1093)
!1165 = !DILocation(line: 199, column: 48, scope: !1160)
!1166 = !DILocation(line: 201, column: 2, scope: !1160)
!1167 = !DILocation(line: 201, column: 8, scope: !1160)
!1168 = !DILocation(line: 201, column: 13, scope: !1160)
!1169 = !DILocation(line: 202, column: 2, scope: !1160)
!1170 = !DILocation(line: 202, column: 8, scope: !1160)
!1171 = !DILocation(line: 202, column: 13, scope: !1160)
!1172 = !DILocation(line: 203, column: 1, scope: !1160)
!1173 = distinct !DISubprogram(name: "z_impl_k_queue_get", scope: !102, file: !102, line: 317, type: !1174, scopeLine: 318, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1176)
!1174 = !DISubroutineType(types: !1175)
!1175 = !{!114, !369, !323}
!1176 = !{!1177, !1178, !1179, !1180, !1181, !1184}
!1177 = !DILocalVariable(name: "queue", arg: 1, scope: !1173, file: !102, line: 317, type: !369)
!1178 = !DILocalVariable(name: "timeout", arg: 2, scope: !1173, file: !102, line: 317, type: !323)
!1179 = !DILocalVariable(name: "key", scope: !1173, file: !102, line: 319, type: !552)
!1180 = !DILocalVariable(name: "data", scope: !1173, file: !102, line: 320, type: !114)
!1181 = !DILocalVariable(name: "node", scope: !1182, file: !102, line: 325, type: !119)
!1182 = distinct !DILexicalBlock(scope: !1183, file: !102, line: 324, column: 84)
!1183 = distinct !DILexicalBlock(scope: !1173, file: !102, line: 324, column: 6)
!1184 = !DILocalVariable(name: "ret", scope: !1173, file: !102, line: 346, type: !120)
!1185 = !DILocation(line: 317, column: 42, scope: !1173)
!1186 = !DILocation(line: 317, column: 61, scope: !1173)
!1187 = !DILocation(line: 319, column: 2, scope: !1173)
!1188 = !DILocation(line: 319, column: 19, scope: !1173)
!1189 = !DILocation(line: 319, column: 38, scope: !1173)
!1190 = !DILocation(line: 319, column: 45, scope: !1173)
!1191 = !DILocation(line: 160, column: 94, scope: !566, inlinedAt: !1192)
!1192 = distinct !DILocation(line: 319, column: 25, scope: !1173)
!1193 = !DILocation(line: 162, column: 9, scope: !566, inlinedAt: !1192)
!1194 = !DILocation(line: 163, column: 19, scope: !566, inlinedAt: !1192)
!1195 = !DILocation(line: 44, column: 2, scope: !577, inlinedAt: !1196)
!1196 = distinct !DILocation(line: 169, column: 10, scope: !566, inlinedAt: !1192)
!1197 = !DILocation(line: 44, column: 15, scope: !577, inlinedAt: !1196)
!1198 = !DILocation(line: 48, column: 2, scope: !577, inlinedAt: !1196)
!1199 = !DILocation(line: 80, column: 9, scope: !577, inlinedAt: !1196)
!1200 = !DILocation(line: 81, column: 1, scope: !577, inlinedAt: !1196)
!1201 = !DILocation(line: 169, column: 8, scope: !566, inlinedAt: !1192)
!1202 = !DILocation(line: 171, column: 26, scope: !566, inlinedAt: !1192)
!1203 = !DILocation(line: 110, column: 94, scope: !592, inlinedAt: !1204)
!1204 = distinct !DILocation(line: 171, column: 2, scope: !566, inlinedAt: !1192)
!1205 = !DILocation(line: 112, column: 9, scope: !592, inlinedAt: !1204)
!1206 = !DILocation(line: 177, column: 27, scope: !566, inlinedAt: !1192)
!1207 = !DILocation(line: 121, column: 95, scope: !601, inlinedAt: !1208)
!1208 = distinct !DILocation(line: 177, column: 2, scope: !566, inlinedAt: !1192)
!1209 = !DILocation(line: 123, column: 9, scope: !601, inlinedAt: !1208)
!1210 = !DILocation(line: 179, column: 2, scope: !566, inlinedAt: !1192)
!1211 = !DILocation(line: 319, column: 25, scope: !1173)
!1212 = !DILocation(line: 320, column: 2, scope: !1173)
!1213 = !DILocation(line: 320, column: 8, scope: !1173)
!1214 = !DILocation(line: 322, column: 2, scope: !1173)
!1215 = !DILocation(line: 322, column: 7, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1173, file: !102, line: 322, column: 5)
!1217 = !DILocation(line: 324, column: 56, scope: !1183)
!1218 = !DILocation(line: 324, column: 63, scope: !1183)
!1219 = !DILocation(line: 324, column: 35, scope: !1183)
!1220 = !DILocation(line: 324, column: 34, scope: !1183)
!1221 = !DILocation(line: 324, column: 32, scope: !1183)
!1222 = !DILocation(line: 324, column: 31, scope: !1183)
!1223 = !DILocation(line: 324, column: 24, scope: !1183)
!1224 = !DILocation(line: 324, column: 7, scope: !1183)
!1225 = !DILocation(line: 324, column: 76, scope: !1183)
!1226 = !DILocation(line: 324, column: 6, scope: !1173)
!1227 = !DILocation(line: 325, column: 3, scope: !1182)
!1228 = !DILocation(line: 325, column: 17, scope: !1182)
!1229 = !DILocation(line: 327, column: 36, scope: !1182)
!1230 = !DILocation(line: 327, column: 43, scope: !1182)
!1231 = !DILocation(line: 327, column: 10, scope: !1182)
!1232 = !DILocation(line: 327, column: 8, scope: !1182)
!1233 = !DILocation(line: 328, column: 28, scope: !1182)
!1234 = !DILocation(line: 328, column: 10, scope: !1182)
!1235 = !DILocation(line: 328, column: 8, scope: !1182)
!1236 = !DILocation(line: 329, column: 18, scope: !1182)
!1237 = !DILocation(line: 329, column: 25, scope: !1182)
!1238 = !DILocation(line: 329, column: 3, scope: !1182)
!1239 = !DILocation(line: 235, column: 84, scope: !809, inlinedAt: !1240)
!1240 = distinct !DILocation(line: 329, column: 3, scope: !1182)
!1241 = !DILocation(line: 236, column: 23, scope: !809, inlinedAt: !1240)
!1242 = !DILocation(line: 238, column: 9, scope: !809, inlinedAt: !1240)
!1243 = !DILocation(line: 261, column: 22, scope: !809, inlinedAt: !1240)
!1244 = !DILocation(line: 88, column: 80, scope: !818, inlinedAt: !1245)
!1245 = distinct !DILocation(line: 261, column: 2, scope: !809, inlinedAt: !1240)
!1246 = !DILocation(line: 91, column: 6, scope: !825, inlinedAt: !1245)
!1247 = !DILocation(line: 91, column: 10, scope: !825, inlinedAt: !1245)
!1248 = !DILocation(line: 91, column: 6, scope: !818, inlinedAt: !1245)
!1249 = !DILocation(line: 92, column: 3, scope: !829, inlinedAt: !1245)
!1250 = !DILocation(line: 94, column: 2, scope: !818, inlinedAt: !1245)
!1251 = !DILocation(line: 114, column: 1, scope: !818, inlinedAt: !1245)
!1252 = !DILocation(line: 331, column: 3, scope: !1182)
!1253 = !DILocation(line: 331, column: 8, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !1182, file: !102, line: 331, column: 6)
!1255 = !DILocation(line: 333, column: 10, scope: !1182)
!1256 = !DILocation(line: 333, column: 3, scope: !1182)
!1257 = !DILocation(line: 334, column: 2, scope: !1183)
!1258 = !DILocation(line: 336, column: 2, scope: !1173)
!1259 = !DILocation(line: 336, column: 7, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !1173, file: !102, line: 336, column: 5)
!1261 = !DILocation(line: 338, column: 17, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1173, file: !102, line: 338, column: 6)
!1263 = !DILocation(line: 338, column: 42, scope: !1262)
!1264 = !DILocation(line: 338, column: 23, scope: !1262)
!1265 = !DILocation(line: 338, column: 6, scope: !1173)
!1266 = !DILocation(line: 339, column: 18, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !1262, file: !102, line: 338, column: 56)
!1268 = !DILocation(line: 339, column: 25, scope: !1267)
!1269 = !DILocation(line: 339, column: 3, scope: !1267)
!1270 = !DILocation(line: 235, column: 84, scope: !809, inlinedAt: !1271)
!1271 = distinct !DILocation(line: 339, column: 3, scope: !1267)
!1272 = !DILocation(line: 236, column: 23, scope: !809, inlinedAt: !1271)
!1273 = !DILocation(line: 238, column: 9, scope: !809, inlinedAt: !1271)
!1274 = !DILocation(line: 261, column: 22, scope: !809, inlinedAt: !1271)
!1275 = !DILocation(line: 88, column: 80, scope: !818, inlinedAt: !1276)
!1276 = distinct !DILocation(line: 261, column: 2, scope: !809, inlinedAt: !1271)
!1277 = !DILocation(line: 91, column: 6, scope: !825, inlinedAt: !1276)
!1278 = !DILocation(line: 91, column: 10, scope: !825, inlinedAt: !1276)
!1279 = !DILocation(line: 91, column: 6, scope: !818, inlinedAt: !1276)
!1280 = !DILocation(line: 92, column: 3, scope: !829, inlinedAt: !1276)
!1281 = !DILocation(line: 94, column: 2, scope: !818, inlinedAt: !1276)
!1282 = !DILocation(line: 114, column: 1, scope: !818, inlinedAt: !1276)
!1283 = !DILocation(line: 341, column: 3, scope: !1267)
!1284 = !DILocation(line: 341, column: 8, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1267, file: !102, line: 341, column: 6)
!1286 = !DILocation(line: 343, column: 3, scope: !1267)
!1287 = !DILocation(line: 346, column: 2, scope: !1173)
!1288 = !DILocation(line: 346, column: 6, scope: !1173)
!1289 = !DILocation(line: 346, column: 25, scope: !1173)
!1290 = !DILocation(line: 346, column: 32, scope: !1173)
!1291 = !DILocation(line: 346, column: 44, scope: !1173)
!1292 = !DILocation(line: 346, column: 51, scope: !1173)
!1293 = !DILocation(line: 346, column: 12, scope: !1173)
!1294 = !DILocation(line: 348, column: 2, scope: !1173)
!1295 = !DILocation(line: 348, column: 7, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1173, file: !102, line: 348, column: 5)
!1297 = !DILocation(line: 351, column: 10, scope: !1173)
!1298 = !DILocation(line: 351, column: 14, scope: !1173)
!1299 = !DILocation(line: 351, column: 9, scope: !1173)
!1300 = !DILocation(line: 351, column: 42, scope: !1173)
!1301 = !DILocation(line: 351, column: 51, scope: !1173)
!1302 = !DILocation(line: 351, column: 56, scope: !1173)
!1303 = !DILocation(line: 351, column: 2, scope: !1173)
!1304 = !DILocation(line: 352, column: 1, scope: !1173)
!1305 = distinct !DISubprogram(name: "sys_sflist_is_empty", scope: !106, file: !106, line: 335, type: !1306, scopeLine: 335, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1308)
!1306 = !DISubroutineType(types: !1307)
!1307 = !{!118, !520}
!1308 = !{!1309}
!1309 = !DILocalVariable(name: "list", arg: 1, scope: !1305, file: !106, line: 335, type: !520)
!1310 = !DILocation(line: 335, column: 55, scope: !1305)
!1311 = !DILocation(line: 335, column: 92, scope: !1305)
!1312 = !DILocation(line: 335, column: 71, scope: !1305)
!1313 = !DILocation(line: 335, column: 98, scope: !1305)
!1314 = !DILocation(line: 335, column: 63, scope: !1305)
!1315 = distinct !DISubprogram(name: "sys_sflist_get_not_empty", scope: !106, file: !106, line: 446, type: !1316, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1318)
!1316 = !DISubroutineType(types: !1317)
!1317 = !{!119, !520}
!1318 = !{!1319, !1320}
!1319 = !DILocalVariable(name: "list", arg: 1, scope: !1315, file: !106, line: 446, type: !520)
!1320 = !DILocalVariable(name: "node", scope: !1315, file: !106, line: 446, type: !119)
!1321 = !DILocation(line: 446, column: 69, scope: !1315)
!1322 = !DILocation(line: 446, column: 77, scope: !1315)
!1323 = !DILocation(line: 446, column: 91, scope: !1315)
!1324 = !DILocation(line: 446, column: 119, scope: !1315)
!1325 = !DILocation(line: 446, column: 98, scope: !1315)
!1326 = !DILocation(line: 446, column: 144, scope: !1315)
!1327 = !DILocation(line: 446, column: 169, scope: !1315)
!1328 = !DILocation(line: 446, column: 150, scope: !1315)
!1329 = !DILocation(line: 446, column: 126, scope: !1315)
!1330 = !DILocation(line: 446, column: 202, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1315, file: !106, line: 446, column: 181)
!1332 = !DILocation(line: 446, column: 181, scope: !1331)
!1333 = !DILocation(line: 446, column: 211, scope: !1331)
!1334 = !DILocation(line: 446, column: 208, scope: !1331)
!1335 = !DILocation(line: 446, column: 181, scope: !1315)
!1336 = !DILocation(line: 446, column: 237, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1331, file: !106, line: 446, column: 217)
!1338 = !DILocation(line: 446, column: 264, scope: !1337)
!1339 = !DILocation(line: 446, column: 243, scope: !1337)
!1340 = !DILocation(line: 446, column: 219, scope: !1337)
!1341 = !DILocation(line: 446, column: 272, scope: !1337)
!1342 = !DILocation(line: 446, column: 281, scope: !1315)
!1343 = !DILocation(line: 446, column: 287, scope: !1315)
!1344 = !DILocation(line: 446, column: 274, scope: !1315)
!1345 = !DISubprogram(name: "z_pend_curr", scope: !629, file: !629, line: 46, type: !1346, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !242)
!1346 = !DISubroutineType(types: !1347)
!1347 = !{!120, !569, !552, !170, !323}
!1348 = distinct !DISubprogram(name: "k_queue_remove", scope: !102, file: !102, line: 354, type: !1349, scopeLine: 355, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1351)
!1349 = !DISubroutineType(types: !1350)
!1350 = !{!118, !369, !114}
!1351 = !{!1352, !1353, !1354}
!1352 = !DILocalVariable(name: "queue", arg: 1, scope: !1348, file: !102, line: 354, type: !369)
!1353 = !DILocalVariable(name: "data", arg: 2, scope: !1348, file: !102, line: 354, type: !114)
!1354 = !DILocalVariable(name: "ret", scope: !1348, file: !102, line: 358, type: !118)
!1355 = !DILocation(line: 354, column: 38, scope: !1348)
!1356 = !DILocation(line: 354, column: 51, scope: !1348)
!1357 = !DILocation(line: 356, column: 2, scope: !1348)
!1358 = !DILocation(line: 356, column: 7, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1348, file: !102, line: 356, column: 5)
!1360 = !DILocation(line: 358, column: 2, scope: !1348)
!1361 = !DILocation(line: 358, column: 8, scope: !1348)
!1362 = !DILocation(line: 358, column: 42, scope: !1348)
!1363 = !DILocation(line: 358, column: 49, scope: !1348)
!1364 = !DILocation(line: 358, column: 73, scope: !1348)
!1365 = !DILocation(line: 358, column: 14, scope: !1348)
!1366 = !DILocation(line: 360, column: 2, scope: !1348)
!1367 = !DILocation(line: 360, column: 7, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1348, file: !102, line: 360, column: 5)
!1369 = !DILocation(line: 362, column: 9, scope: !1348)
!1370 = !DILocation(line: 363, column: 1, scope: !1348)
!1371 = !DILocation(line: 362, column: 2, scope: !1348)
!1372 = distinct !DISubprogram(name: "sys_sflist_find_and_remove", scope: !106, file: !106, line: 490, type: !1373, scopeLine: 490, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1375)
!1373 = !DISubroutineType(types: !1374)
!1374 = !{!118, !520, !119}
!1375 = !{!1376, !1377, !1378, !1379}
!1376 = !DILocalVariable(name: "list", arg: 1, scope: !1372, file: !106, line: 490, type: !520)
!1377 = !DILocalVariable(name: "node", arg: 2, scope: !1372, file: !106, line: 490, type: !119)
!1378 = !DILocalVariable(name: "prev", scope: !1372, file: !106, line: 490, type: !119)
!1379 = !DILocalVariable(name: "test", scope: !1372, file: !106, line: 490, type: !119)
!1380 = !DILocation(line: 490, column: 62, scope: !1372)
!1381 = !DILocation(line: 490, column: 82, scope: !1372)
!1382 = !DILocation(line: 490, column: 90, scope: !1372)
!1383 = !DILocation(line: 490, column: 104, scope: !1372)
!1384 = !DILocation(line: 490, column: 123, scope: !1372)
!1385 = !DILocation(line: 490, column: 137, scope: !1372)
!1386 = !DILocation(line: 490, column: 176, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !1372, file: !106, line: 490, column: 143)
!1388 = !DILocation(line: 490, column: 155, scope: !1387)
!1389 = !DILocation(line: 490, column: 153, scope: !1387)
!1390 = !DILocation(line: 490, column: 148, scope: !1387)
!1391 = !DILocation(line: 490, column: 183, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !1387, file: !106, line: 490, column: 143)
!1393 = !DILocation(line: 490, column: 188, scope: !1392)
!1394 = !DILocation(line: 490, column: 143, scope: !1387)
!1395 = !DILocation(line: 490, column: 244, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1397, file: !106, line: 490, column: 244)
!1397 = distinct !DILexicalBlock(scope: !1392, file: !106, line: 490, column: 238)
!1398 = !DILocation(line: 490, column: 252, scope: !1396)
!1399 = !DILocation(line: 490, column: 249, scope: !1396)
!1400 = !DILocation(line: 490, column: 244, scope: !1397)
!1401 = !DILocation(line: 490, column: 278, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1396, file: !106, line: 490, column: 258)
!1403 = !DILocation(line: 490, column: 284, scope: !1402)
!1404 = !DILocation(line: 490, column: 290, scope: !1402)
!1405 = !DILocation(line: 490, column: 260, scope: !1402)
!1406 = !DILocation(line: 490, column: 297, scope: !1402)
!1407 = !DILocation(line: 490, column: 316, scope: !1397)
!1408 = !DILocation(line: 490, column: 314, scope: !1397)
!1409 = !DILocation(line: 490, column: 322, scope: !1397)
!1410 = !DILocation(line: 490, column: 231, scope: !1392)
!1411 = !DILocation(line: 490, column: 210, scope: !1392)
!1412 = !DILocation(line: 490, column: 208, scope: !1392)
!1413 = !DILocation(line: 490, column: 143, scope: !1392)
!1414 = distinct !{!1414, !1394, !1415}
!1415 = !DILocation(line: 490, column: 322, scope: !1387)
!1416 = !DILocation(line: 490, column: 324, scope: !1372)
!1417 = !DILocation(line: 490, column: 334, scope: !1372)
!1418 = distinct !DISubprogram(name: "k_queue_unique_append", scope: !102, file: !102, line: 365, type: !1349, scopeLine: 366, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1419)
!1419 = !{!1420, !1421, !1422}
!1420 = !DILocalVariable(name: "queue", arg: 1, scope: !1418, file: !102, line: 365, type: !369)
!1421 = !DILocalVariable(name: "data", arg: 2, scope: !1418, file: !102, line: 365, type: !114)
!1422 = !DILocalVariable(name: "test", scope: !1418, file: !102, line: 369, type: !119)
!1423 = !DILocation(line: 365, column: 45, scope: !1418)
!1424 = !DILocation(line: 365, column: 58, scope: !1418)
!1425 = !DILocation(line: 367, column: 2, scope: !1418)
!1426 = !DILocation(line: 367, column: 7, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !1418, file: !102, line: 367, column: 5)
!1428 = !DILocation(line: 369, column: 2, scope: !1418)
!1429 = !DILocation(line: 369, column: 16, scope: !1418)
!1430 = !DILocation(line: 371, column: 36, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1418, file: !102, line: 371, column: 2)
!1432 = !DILocation(line: 371, column: 43, scope: !1431)
!1433 = !DILocation(line: 371, column: 14, scope: !1431)
!1434 = !DILocation(line: 371, column: 12, scope: !1431)
!1435 = !DILocation(line: 371, column: 7, scope: !1431)
!1436 = !DILocation(line: 371, column: 52, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !1431, file: !102, line: 371, column: 2)
!1438 = !DILocation(line: 371, column: 57, scope: !1437)
!1439 = !DILocation(line: 371, column: 2, scope: !1431)
!1440 = !DILocation(line: 372, column: 7, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !1442, file: !102, line: 372, column: 7)
!1442 = distinct !DILexicalBlock(scope: !1437, file: !102, line: 371, column: 98)
!1443 = !DILocation(line: 372, column: 32, scope: !1441)
!1444 = !DILocation(line: 372, column: 12, scope: !1441)
!1445 = !DILocation(line: 372, column: 7, scope: !1442)
!1446 = !DILocation(line: 373, column: 4, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !1441, file: !102, line: 372, column: 38)
!1448 = !DILocation(line: 373, column: 9, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1447, file: !102, line: 373, column: 7)
!1450 = !DILocation(line: 375, column: 4, scope: !1447)
!1451 = !DILocation(line: 377, column: 2, scope: !1442)
!1452 = !DILocation(line: 371, column: 91, scope: !1437)
!1453 = !DILocation(line: 371, column: 70, scope: !1437)
!1454 = !DILocation(line: 371, column: 68, scope: !1437)
!1455 = !DILocation(line: 371, column: 2, scope: !1437)
!1456 = distinct !{!1456, !1439, !1457}
!1457 = !DILocation(line: 377, column: 2, scope: !1431)
!1458 = !DILocation(line: 379, column: 17, scope: !1418)
!1459 = !DILocation(line: 379, column: 24, scope: !1418)
!1460 = !DILocation(line: 379, column: 2, scope: !1418)
!1461 = !DILocation(line: 381, column: 2, scope: !1418)
!1462 = !DILocation(line: 381, column: 7, scope: !1463)
!1463 = distinct !DILexicalBlock(scope: !1418, file: !102, line: 381, column: 5)
!1464 = !DILocation(line: 383, column: 2, scope: !1418)
!1465 = !DILocation(line: 384, column: 1, scope: !1418)
!1466 = distinct !DISubprogram(name: "sys_sflist_peek_head", scope: !106, file: !106, line: 255, type: !1316, scopeLine: 256, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1467)
!1467 = !{!1468}
!1468 = !DILocalVariable(name: "list", arg: 1, scope: !1466, file: !106, line: 255, type: !520)
!1469 = !DILocation(line: 255, column: 64, scope: !1466)
!1470 = !DILocation(line: 257, column: 9, scope: !1466)
!1471 = !DILocation(line: 257, column: 15, scope: !1466)
!1472 = !DILocation(line: 257, column: 2, scope: !1466)
!1473 = distinct !DISubprogram(name: "sys_sflist_peek_next", scope: !106, file: !106, line: 359, type: !1474, scopeLine: 359, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1476)
!1474 = !DISubroutineType(types: !1475)
!1475 = !{!119, !119}
!1476 = !{!1477}
!1477 = !DILocalVariable(name: "node", arg: 1, scope: !1473, file: !106, line: 359, type: !119)
!1478 = !DILocation(line: 359, column: 65, scope: !1473)
!1479 = !DILocation(line: 359, column: 80, scope: !1473)
!1480 = !DILocation(line: 359, column: 85, scope: !1473)
!1481 = !DILocation(line: 359, column: 131, scope: !1473)
!1482 = !DILocation(line: 359, column: 101, scope: !1473)
!1483 = !DILocation(line: 359, column: 73, scope: !1473)
!1484 = distinct !DISubprogram(name: "z_impl_k_queue_peek_head", scope: !102, file: !102, line: 386, type: !1485, scopeLine: 387, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1487)
!1485 = !DISubroutineType(types: !1486)
!1486 = !{!114, !369}
!1487 = !{!1488, !1489}
!1488 = !DILocalVariable(name: "queue", arg: 1, scope: !1484, file: !102, line: 386, type: !369)
!1489 = !DILocalVariable(name: "ret", scope: !1484, file: !102, line: 388, type: !114)
!1490 = !DILocation(line: 386, column: 48, scope: !1484)
!1491 = !DILocation(line: 388, column: 2, scope: !1484)
!1492 = !DILocation(line: 388, column: 8, scope: !1484)
!1493 = !DILocation(line: 388, column: 54, scope: !1484)
!1494 = !DILocation(line: 388, column: 61, scope: !1484)
!1495 = !DILocation(line: 388, column: 32, scope: !1484)
!1496 = !DILocation(line: 388, column: 14, scope: !1484)
!1497 = !DILocation(line: 390, column: 2, scope: !1484)
!1498 = !DILocation(line: 390, column: 7, scope: !1499)
!1499 = distinct !DILexicalBlock(scope: !1484, file: !102, line: 390, column: 5)
!1500 = !DILocation(line: 392, column: 9, scope: !1484)
!1501 = !DILocation(line: 393, column: 1, scope: !1484)
!1502 = !DILocation(line: 392, column: 2, scope: !1484)
!1503 = distinct !DISubprogram(name: "z_impl_k_queue_peek_tail", scope: !102, file: !102, line: 395, type: !1485, scopeLine: 396, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1504)
!1504 = !{!1505, !1506}
!1505 = !DILocalVariable(name: "queue", arg: 1, scope: !1503, file: !102, line: 395, type: !369)
!1506 = !DILocalVariable(name: "ret", scope: !1503, file: !102, line: 397, type: !114)
!1507 = !DILocation(line: 395, column: 48, scope: !1503)
!1508 = !DILocation(line: 397, column: 2, scope: !1503)
!1509 = !DILocation(line: 397, column: 8, scope: !1503)
!1510 = !DILocation(line: 397, column: 54, scope: !1503)
!1511 = !DILocation(line: 397, column: 61, scope: !1503)
!1512 = !DILocation(line: 397, column: 32, scope: !1503)
!1513 = !DILocation(line: 397, column: 14, scope: !1503)
!1514 = !DILocation(line: 399, column: 2, scope: !1503)
!1515 = !DILocation(line: 399, column: 7, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1503, file: !102, line: 399, column: 5)
!1517 = !DILocation(line: 401, column: 9, scope: !1503)
!1518 = !DILocation(line: 402, column: 1, scope: !1503)
!1519 = !DILocation(line: 401, column: 2, scope: !1503)
!1520 = distinct !DISubprogram(name: "sys_sflist_peek_tail", scope: !106, file: !106, line: 267, type: !1316, scopeLine: 268, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1521)
!1521 = !{!1522}
!1522 = !DILocalVariable(name: "list", arg: 1, scope: !1520, file: !106, line: 267, type: !520)
!1523 = !DILocation(line: 267, column: 64, scope: !1520)
!1524 = !DILocation(line: 269, column: 9, scope: !1520)
!1525 = !DILocation(line: 269, column: 15, scope: !1520)
!1526 = !DILocation(line: 269, column: 2, scope: !1520)
!1527 = !DISubprogram(name: "z_timeout_expires", scope: !4, file: !4, line: 642, type: !1528, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !242)
!1528 = !DISubroutineType(types: !1529)
!1529 = !{!286, !1530}
!1530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1531, size: 32)
!1531 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !195)
!1532 = !DISubprogram(name: "z_timeout_remaining", scope: !4, file: !4, line: 643, type: !1528, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !242)
!1533 = distinct !DISubprogram(name: "sys_dlist_init", scope: !123, file: !123, line: 203, type: !1534, scopeLine: 204, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1537)
!1534 = !DISubroutineType(types: !1535)
!1535 = !{null, !1536}
!1536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 32)
!1537 = !{!1538}
!1538 = !DILocalVariable(name: "list", arg: 1, scope: !1533, file: !123, line: 203, type: !1536)
!1539 = !DILocation(line: 203, column: 48, scope: !1533)
!1540 = !DILocation(line: 205, column: 30, scope: !1533)
!1541 = !DILocation(line: 205, column: 2, scope: !1533)
!1542 = !DILocation(line: 205, column: 8, scope: !1533)
!1543 = !DILocation(line: 205, column: 13, scope: !1533)
!1544 = !DILocation(line: 206, column: 30, scope: !1533)
!1545 = !DILocation(line: 206, column: 2, scope: !1533)
!1546 = !DILocation(line: 206, column: 8, scope: !1533)
!1547 = !DILocation(line: 206, column: 13, scope: !1533)
!1548 = !DILocation(line: 207, column: 1, scope: !1533)
!1549 = !DISubprogram(name: "z_ready_thread", scope: !629, file: !629, line: 65, type: !1550, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !242)
!1550 = !DISubroutineType(types: !1551)
!1551 = !{null, !149}
!1552 = distinct !DISubprogram(name: "z_thread_malloc", scope: !644, file: !644, line: 105, type: !1553, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1557)
!1553 = !DISubroutineType(types: !1554)
!1554 = !{!114, !1555}
!1555 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1556, line: 51, baseType: !112)
!1556 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/string.h", directory: "")
!1557 = !{!1558}
!1558 = !DILocalVariable(name: "size", arg: 1, scope: !1552, file: !644, line: 105, type: !1555)
!1559 = !DILocation(line: 105, column: 44, scope: !1552)
!1560 = !DILocation(line: 107, column: 35, scope: !1552)
!1561 = !DILocation(line: 107, column: 9, scope: !1552)
!1562 = !DILocation(line: 107, column: 2, scope: !1552)
!1563 = distinct !DISubprogram(name: "sys_sfnode_init", scope: !106, file: !106, line: 300, type: !1564, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1566)
!1564 = !DISubroutineType(types: !1565)
!1565 = !{null, !119, !98}
!1566 = !{!1567, !1568}
!1567 = !DILocalVariable(name: "node", arg: 1, scope: !1563, file: !106, line: 300, type: !119)
!1568 = !DILocalVariable(name: "flags", arg: 2, scope: !1563, file: !106, line: 300, type: !98)
!1569 = !DILocation(line: 300, column: 50, scope: !1563)
!1570 = !DILocation(line: 300, column: 64, scope: !1563)
!1571 = !DILocation(line: 303, column: 25, scope: !1563)
!1572 = !DILocation(line: 303, column: 2, scope: !1563)
!1573 = !DILocation(line: 303, column: 8, scope: !1563)
!1574 = !DILocation(line: 303, column: 23, scope: !1563)
!1575 = !DILocation(line: 304, column: 1, scope: !1563)
!1576 = distinct !DISubprogram(name: "sys_sflist_insert", scope: !106, file: !106, line: 432, type: !1577, scopeLine: 432, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1579)
!1577 = !DISubroutineType(types: !1578)
!1578 = !{null, !520, !119, !119}
!1579 = !{!1580, !1581, !1582}
!1580 = !DILocalVariable(name: "list", arg: 1, scope: !1576, file: !106, line: 432, type: !520)
!1581 = !DILocalVariable(name: "prev", arg: 2, scope: !1576, file: !106, line: 432, type: !119)
!1582 = !DILocalVariable(name: "node", arg: 3, scope: !1576, file: !106, line: 432, type: !119)
!1583 = !DILocation(line: 432, column: 52, scope: !1576)
!1584 = !DILocation(line: 432, column: 72, scope: !1576)
!1585 = !DILocation(line: 432, column: 92, scope: !1576)
!1586 = !DILocation(line: 432, column: 104, scope: !1587)
!1587 = distinct !DILexicalBlock(scope: !1576, file: !106, line: 432, column: 104)
!1588 = !DILocation(line: 432, column: 109, scope: !1587)
!1589 = !DILocation(line: 432, column: 104, scope: !1576)
!1590 = !DILocation(line: 432, column: 145, scope: !1591)
!1591 = distinct !DILexicalBlock(scope: !1587, file: !106, line: 432, column: 124)
!1592 = !DILocation(line: 432, column: 151, scope: !1591)
!1593 = !DILocation(line: 432, column: 126, scope: !1591)
!1594 = !DILocation(line: 432, column: 158, scope: !1591)
!1595 = !DILocation(line: 432, column: 188, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !1587, file: !106, line: 432, column: 169)
!1597 = !DILocation(line: 432, column: 169, scope: !1596)
!1598 = !DILocation(line: 432, column: 194, scope: !1596)
!1599 = !DILocation(line: 432, column: 169, scope: !1587)
!1600 = !DILocation(line: 432, column: 229, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1596, file: !106, line: 432, column: 209)
!1602 = !DILocation(line: 432, column: 235, scope: !1601)
!1603 = !DILocation(line: 432, column: 211, scope: !1601)
!1604 = !DILocation(line: 432, column: 242, scope: !1601)
!1605 = !DILocation(line: 432, column: 269, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1596, file: !106, line: 432, column: 249)
!1607 = !DILocation(line: 432, column: 294, scope: !1606)
!1608 = !DILocation(line: 432, column: 275, scope: !1606)
!1609 = !DILocation(line: 432, column: 251, scope: !1606)
!1610 = !DILocation(line: 432, column: 320, scope: !1606)
!1611 = !DILocation(line: 432, column: 326, scope: !1606)
!1612 = !DILocation(line: 432, column: 302, scope: !1606)
!1613 = !DILocation(line: 432, column: 335, scope: !1576)
!1614 = !DISubprogram(name: "z_thread_aligned_alloc", scope: !644, file: !644, line: 90, type: !1615, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !242)
!1615 = !DISubroutineType(types: !1616)
!1616 = !{!114, !1555, !1555}
!1617 = distinct !DISubprogram(name: "sys_sflist_prepend", scope: !106, file: !106, line: 372, type: !1618, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1620)
!1618 = !DISubroutineType(types: !1619)
!1619 = !{null, !520, !119}
!1620 = !{!1621, !1622}
!1621 = !DILocalVariable(name: "list", arg: 1, scope: !1617, file: !106, line: 372, type: !520)
!1622 = !DILocalVariable(name: "node", arg: 2, scope: !1617, file: !106, line: 372, type: !119)
!1623 = !DILocation(line: 372, column: 53, scope: !1617)
!1624 = !DILocation(line: 372, column: 73, scope: !1617)
!1625 = !DILocation(line: 372, column: 99, scope: !1617)
!1626 = !DILocation(line: 372, column: 126, scope: !1617)
!1627 = !DILocation(line: 372, column: 105, scope: !1617)
!1628 = !DILocation(line: 372, column: 81, scope: !1617)
!1629 = !DILocation(line: 372, column: 152, scope: !1617)
!1630 = !DILocation(line: 372, column: 158, scope: !1617)
!1631 = !DILocation(line: 372, column: 134, scope: !1617)
!1632 = !DILocation(line: 372, column: 190, scope: !1633)
!1633 = distinct !DILexicalBlock(scope: !1617, file: !106, line: 372, column: 169)
!1634 = !DILocation(line: 372, column: 169, scope: !1633)
!1635 = !DILocation(line: 372, column: 196, scope: !1633)
!1636 = !DILocation(line: 372, column: 169, scope: !1617)
!1637 = !DILocation(line: 372, column: 231, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !1633, file: !106, line: 372, column: 211)
!1639 = !DILocation(line: 372, column: 258, scope: !1638)
!1640 = !DILocation(line: 372, column: 237, scope: !1638)
!1641 = !DILocation(line: 372, column: 213, scope: !1638)
!1642 = !DILocation(line: 372, column: 266, scope: !1638)
!1643 = !DILocation(line: 372, column: 268, scope: !1617)
!1644 = distinct !DISubprogram(name: "z_sfnode_next_peek", scope: !106, file: !106, line: 223, type: !1474, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1645)
!1645 = !{!1646}
!1646 = !DILocalVariable(name: "node", arg: 1, scope: !1644, file: !106, line: 223, type: !119)
!1647 = !DILocation(line: 223, column: 62, scope: !1644)
!1648 = !DILocation(line: 225, column: 26, scope: !1644)
!1649 = !DILocation(line: 225, column: 32, scope: !1644)
!1650 = !DILocation(line: 225, column: 47, scope: !1644)
!1651 = !DILocation(line: 225, column: 9, scope: !1644)
!1652 = !DILocation(line: 225, column: 2, scope: !1644)
!1653 = distinct !DISubprogram(name: "sys_sflist_append", scope: !106, file: !106, line: 385, type: !1618, scopeLine: 385, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1654)
!1654 = !{!1655, !1656}
!1655 = !DILocalVariable(name: "list", arg: 1, scope: !1653, file: !106, line: 385, type: !520)
!1656 = !DILocalVariable(name: "node", arg: 2, scope: !1653, file: !106, line: 385, type: !119)
!1657 = !DILocation(line: 385, column: 52, scope: !1653)
!1658 = !DILocation(line: 385, column: 72, scope: !1653)
!1659 = !DILocation(line: 385, column: 98, scope: !1653)
!1660 = !DILocation(line: 385, column: 80, scope: !1653)
!1661 = !DILocation(line: 385, column: 142, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1653, file: !106, line: 385, column: 121)
!1663 = !DILocation(line: 385, column: 121, scope: !1662)
!1664 = !DILocation(line: 385, column: 148, scope: !1662)
!1665 = !DILocation(line: 385, column: 121, scope: !1653)
!1666 = !DILocation(line: 385, column: 183, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !1662, file: !106, line: 385, column: 163)
!1668 = !DILocation(line: 385, column: 189, scope: !1667)
!1669 = !DILocation(line: 385, column: 165, scope: !1667)
!1670 = !DILocation(line: 385, column: 214, scope: !1667)
!1671 = !DILocation(line: 385, column: 220, scope: !1667)
!1672 = !DILocation(line: 385, column: 196, scope: !1667)
!1673 = !DILocation(line: 385, column: 227, scope: !1667)
!1674 = !DILocation(line: 385, column: 276, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !1662, file: !106, line: 385, column: 234)
!1676 = !DILocation(line: 385, column: 255, scope: !1675)
!1677 = !DILocation(line: 385, column: 283, scope: !1675)
!1678 = !DILocation(line: 385, column: 236, scope: !1675)
!1679 = !DILocation(line: 385, column: 308, scope: !1675)
!1680 = !DILocation(line: 385, column: 314, scope: !1675)
!1681 = !DILocation(line: 385, column: 290, scope: !1675)
!1682 = !DILocation(line: 385, column: 323, scope: !1653)
!1683 = distinct !DISubprogram(name: "z_sfnode_next_set", scope: !106, file: !106, line: 230, type: !1684, scopeLine: 232, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1686)
!1684 = !DISubroutineType(types: !1685)
!1685 = !{null, !119, !119}
!1686 = !{!1687, !1688, !1689}
!1687 = !DILocalVariable(name: "parent", arg: 1, scope: !1683, file: !106, line: 230, type: !119)
!1688 = !DILocalVariable(name: "child", arg: 2, scope: !1683, file: !106, line: 231, type: !119)
!1689 = !DILocalVariable(name: "cur_flags", scope: !1683, file: !106, line: 233, type: !98)
!1690 = !DILocation(line: 230, column: 52, scope: !1683)
!1691 = !DILocation(line: 231, column: 26, scope: !1683)
!1692 = !DILocation(line: 233, column: 2, scope: !1683)
!1693 = !DILocation(line: 233, column: 10, scope: !1683)
!1694 = !DILocation(line: 233, column: 43, scope: !1683)
!1695 = !DILocation(line: 233, column: 22, scope: !1683)
!1696 = !DILocation(line: 235, column: 27, scope: !1683)
!1697 = !DILocation(line: 235, column: 50, scope: !1683)
!1698 = !DILocation(line: 235, column: 39, scope: !1683)
!1699 = !DILocation(line: 235, column: 37, scope: !1683)
!1700 = !DILocation(line: 235, column: 2, scope: !1683)
!1701 = !DILocation(line: 235, column: 10, scope: !1683)
!1702 = !DILocation(line: 235, column: 25, scope: !1683)
!1703 = !DILocation(line: 236, column: 1, scope: !1683)
!1704 = distinct !DISubprogram(name: "z_sflist_head_set", scope: !106, file: !106, line: 238, type: !1618, scopeLine: 239, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1705)
!1705 = !{!1706, !1707}
!1706 = !DILocalVariable(name: "list", arg: 1, scope: !1704, file: !106, line: 238, type: !520)
!1707 = !DILocalVariable(name: "node", arg: 2, scope: !1704, file: !106, line: 238, type: !119)
!1708 = !DILocation(line: 238, column: 52, scope: !1704)
!1709 = !DILocation(line: 238, column: 72, scope: !1704)
!1710 = !DILocation(line: 240, column: 15, scope: !1704)
!1711 = !DILocation(line: 240, column: 2, scope: !1704)
!1712 = !DILocation(line: 240, column: 8, scope: !1704)
!1713 = !DILocation(line: 240, column: 13, scope: !1704)
!1714 = !DILocation(line: 241, column: 1, scope: !1704)
!1715 = distinct !DISubprogram(name: "z_sflist_tail_set", scope: !106, file: !106, line: 243, type: !1618, scopeLine: 244, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1716)
!1716 = !{!1717, !1718}
!1717 = !DILocalVariable(name: "list", arg: 1, scope: !1715, file: !106, line: 243, type: !520)
!1718 = !DILocalVariable(name: "node", arg: 2, scope: !1715, file: !106, line: 243, type: !119)
!1719 = !DILocation(line: 243, column: 52, scope: !1715)
!1720 = !DILocation(line: 243, column: 72, scope: !1715)
!1721 = !DILocation(line: 245, column: 15, scope: !1715)
!1722 = !DILocation(line: 245, column: 2, scope: !1715)
!1723 = !DILocation(line: 245, column: 8, scope: !1715)
!1724 = !DILocation(line: 245, column: 13, scope: !1715)
!1725 = !DILocation(line: 246, column: 1, scope: !1715)
!1726 = distinct !DISubprogram(name: "sys_slist_peek_head", scope: !1095, file: !1095, line: 238, type: !1727, scopeLine: 239, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1729)
!1727 = !DISubroutineType(types: !1728)
!1728 = !{!1099, !1093}
!1729 = !{!1730}
!1730 = !DILocalVariable(name: "list", arg: 1, scope: !1726, file: !1095, line: 238, type: !1093)
!1731 = !DILocation(line: 238, column: 61, scope: !1726)
!1732 = !DILocation(line: 240, column: 9, scope: !1726)
!1733 = !DILocation(line: 240, column: 15, scope: !1726)
!1734 = !DILocation(line: 240, column: 2, scope: !1726)
!1735 = distinct !DISubprogram(name: "sys_sflist_remove", scope: !106, file: !106, line: 475, type: !1577, scopeLine: 475, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1736)
!1736 = !{!1737, !1738, !1739}
!1737 = !DILocalVariable(name: "list", arg: 1, scope: !1735, file: !106, line: 475, type: !520)
!1738 = !DILocalVariable(name: "prev_node", arg: 2, scope: !1735, file: !106, line: 475, type: !119)
!1739 = !DILocalVariable(name: "node", arg: 3, scope: !1735, file: !106, line: 475, type: !119)
!1740 = !DILocation(line: 475, column: 52, scope: !1735)
!1741 = !DILocation(line: 475, column: 72, scope: !1735)
!1742 = !DILocation(line: 475, column: 97, scope: !1735)
!1743 = !DILocation(line: 475, column: 109, scope: !1744)
!1744 = distinct !DILexicalBlock(scope: !1735, file: !106, line: 475, column: 109)
!1745 = !DILocation(line: 475, column: 119, scope: !1744)
!1746 = !DILocation(line: 475, column: 109, scope: !1735)
!1747 = !DILocation(line: 475, column: 154, scope: !1748)
!1748 = distinct !DILexicalBlock(scope: !1744, file: !106, line: 475, column: 134)
!1749 = !DILocation(line: 475, column: 179, scope: !1748)
!1750 = !DILocation(line: 475, column: 160, scope: !1748)
!1751 = !DILocation(line: 475, column: 136, scope: !1748)
!1752 = !DILocation(line: 475, column: 212, scope: !1753)
!1753 = distinct !DILexicalBlock(scope: !1748, file: !106, line: 475, column: 191)
!1754 = !DILocation(line: 475, column: 191, scope: !1753)
!1755 = !DILocation(line: 475, column: 221, scope: !1753)
!1756 = !DILocation(line: 475, column: 218, scope: !1753)
!1757 = !DILocation(line: 475, column: 191, scope: !1748)
!1758 = !DILocation(line: 475, column: 247, scope: !1759)
!1759 = distinct !DILexicalBlock(scope: !1753, file: !106, line: 475, column: 227)
!1760 = !DILocation(line: 475, column: 274, scope: !1759)
!1761 = !DILocation(line: 475, column: 253, scope: !1759)
!1762 = !DILocation(line: 475, column: 229, scope: !1759)
!1763 = !DILocation(line: 475, column: 282, scope: !1759)
!1764 = !DILocation(line: 475, column: 284, scope: !1748)
!1765 = !DILocation(line: 475, column: 311, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !1744, file: !106, line: 475, column: 291)
!1767 = !DILocation(line: 475, column: 341, scope: !1766)
!1768 = !DILocation(line: 475, column: 322, scope: !1766)
!1769 = !DILocation(line: 475, column: 293, scope: !1766)
!1770 = !DILocation(line: 475, column: 374, scope: !1771)
!1771 = distinct !DILexicalBlock(scope: !1766, file: !106, line: 475, column: 353)
!1772 = !DILocation(line: 475, column: 353, scope: !1771)
!1773 = !DILocation(line: 475, column: 383, scope: !1771)
!1774 = !DILocation(line: 475, column: 380, scope: !1771)
!1775 = !DILocation(line: 475, column: 353, scope: !1766)
!1776 = !DILocation(line: 475, column: 409, scope: !1777)
!1777 = distinct !DILexicalBlock(scope: !1771, file: !106, line: 475, column: 389)
!1778 = !DILocation(line: 475, column: 415, scope: !1777)
!1779 = !DILocation(line: 475, column: 391, scope: !1777)
!1780 = !DILocation(line: 475, column: 427, scope: !1777)
!1781 = !DILocation(line: 475, column: 449, scope: !1735)
!1782 = !DILocation(line: 475, column: 431, scope: !1735)
!1783 = !DILocation(line: 475, column: 468, scope: !1735)
!1784 = distinct !DISubprogram(name: "sys_sflist_peek_next_no_check", scope: !106, file: !106, line: 348, type: !1474, scopeLine: 348, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1785)
!1785 = !{!1786}
!1786 = !DILocalVariable(name: "node", arg: 1, scope: !1784, file: !106, line: 348, type: !119)
!1787 = !DILocation(line: 348, column: 74, scope: !1784)
!1788 = !DILocation(line: 348, column: 108, scope: !1784)
!1789 = !DILocation(line: 348, column: 89, scope: !1784)
!1790 = !DILocation(line: 348, column: 82, scope: !1784)
