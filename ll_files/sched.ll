; ModuleID = '../bc_files/sched.bc'
source_filename = "/home/sri/zephyrproject/zephyr/kernel/sched.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-arm-none-eabi"

%struct.z_kernel = type { [1 x %struct._cpu], %struct._ready_q }
%struct._cpu = type { i32, ptr, ptr, ptr, i8, %struct._cpu_arch }
%struct._cpu_arch = type {}
%struct._ready_q = type { ptr, %struct._dnode }
%struct._dnode = type { %union.anon.0, %union.anon.1 }
%union.anon.0 = type { ptr }
%union.anon.1 = type { ptr }
%struct._timeout = type { %struct._dnode, ptr, i64 }
%struct.k_spinlock = type {}
%struct.k_thread = type { %struct._thread_base, %struct._callee_saved, ptr, %struct._wait_q_t, i32, ptr, %struct._thread_arch }
%struct._thread_base = type { %union.anon, ptr, i8, i8, %union.anon.2, i32, ptr, %struct._timeout }
%union.anon = type { %struct._dnode }
%union.anon.2 = type { i16 }
%struct._callee_saved = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._wait_q_t = type { %struct._dnode }
%struct._thread_arch = type { i32, i32 }
%struct.k_timer = type { %struct._timeout, %struct._wait_q_t, ptr, ptr, %struct.k_timeout_t, i32, ptr }
%struct.k_timeout_t = type { i64 }
%struct.k_queue = type { %struct._sflist, %struct.k_spinlock, %struct._wait_q_t }
%struct._sflist = type { ptr, ptr }
%struct.k_sem = type { %struct._wait_q_t, i32, i32 }
%struct.k_msgq = type { %struct._wait_q_t, %struct.k_spinlock, i32, i32, ptr, ptr, ptr, ptr, i32, i8 }
%struct.anon = type { i8, i8 }
%struct.z_spinlock_key = type { i32 }
%struct._rb_foreach = type { ptr, ptr, i32 }
%struct._priq_rb = type { %struct.rbtree, i32 }
%struct.rbtree = type { ptr, ptr, i32 }
%struct._priq_mq = type { [32 x %struct._dnode], i32 }

@_kernel = external dso_local global %struct.z_kernel, align 4
@slice_timeouts = internal global [1 x %struct._timeout] zeroinitializer, align 8, !dbg !0
@slice_expired = internal global [1 x i8] zeroinitializer, align 1, !dbg !233
@sched_spinlock = hidden global %struct.k_spinlock zeroinitializer, align 1, !dbg !230
@slice_ticks = internal global i32 0, align 4, !dbg !241
@slice_max_prio = internal global i32 0, align 4, !dbg !243
@pending_current = internal global ptr null, align 4, !dbg !239
@z_sys_post_kernel = external dso_local global i8, align 1
@z_idle_threads = external dso_local global [1 x %struct.k_thread], align 8

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_k_object_access_grant(ptr noundef %0, ptr noundef %1) #0 !dbg !253 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !259, metadata !DIExpression()), !dbg !261
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !260, metadata !DIExpression()), !dbg !262
  %5 = load ptr, ptr %3, align 4, !dbg !263
  %6 = load ptr, ptr %4, align 4, !dbg !264
  ret void, !dbg !265
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_k_object_release(ptr noundef %0) #0 !dbg !266 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !270, metadata !DIExpression()), !dbg !271
  %3 = load ptr, ptr %2, align 4, !dbg !272
  ret void, !dbg !273
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_impl_k_object_alloc(i8 noundef zeroext %0) #0 !dbg !274 {
  %2 = alloca i8, align 1
  store i8 %0, ptr %2, align 1
  call void @llvm.dbg.declare(metadata ptr %2, metadata !278, metadata !DIExpression()), !dbg !279
  %3 = load i8, ptr %2, align 1, !dbg !280
  ret ptr null, !dbg !281
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_impl_k_object_alloc_size(i8 noundef zeroext %0, i32 noundef %1) #0 !dbg !282 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8 %0, ptr %3, align 1
  call void @llvm.dbg.declare(metadata ptr %3, metadata !286, metadata !DIExpression()), !dbg !288
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !287, metadata !DIExpression()), !dbg !289
  %5 = load i8, ptr %3, align 1, !dbg !290
  %6 = load i32, ptr %4, align 4, !dbg !291
  ret ptr null, !dbg !292
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_thread_timeout_expires_ticks(ptr noundef %0) #0 !dbg !293 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !299, metadata !DIExpression()), !dbg !300
  %3 = load ptr, ptr %2, align 4, !dbg !301
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !302
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !303
  %6 = call i64 @z_timeout_expires(ptr noundef %5) #7, !dbg !304
  ret i64 %6, !dbg !305
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_thread_timeout_remaining_ticks(ptr noundef %0) #0 !dbg !306 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !308, metadata !DIExpression()), !dbg !309
  %3 = load ptr, ptr %2, align 4, !dbg !310
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !311
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !312
  %6 = call i64 @z_timeout_remaining(ptr noundef %5) #7, !dbg !313
  ret i64 %6, !dbg !314
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_timer_expires_ticks(ptr noundef %0) #0 !dbg !315 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !338, metadata !DIExpression()), !dbg !339
  %3 = load ptr, ptr %2, align 4, !dbg !340
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !341
  %5 = call i64 @z_timeout_expires(ptr noundef %4) #7, !dbg !342
  ret i64 %5, !dbg !343
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_timer_remaining_ticks(ptr noundef %0) #0 !dbg !344 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !346, metadata !DIExpression()), !dbg !347
  %3 = load ptr, ptr %2, align 4, !dbg !348
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !349
  %5 = call i64 @z_timeout_remaining(ptr noundef %4) #7, !dbg !350
  ret i64 %5, !dbg !351
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_k_timer_user_data_set(ptr noundef %0, ptr noundef %1) #0 !dbg !352 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !356, metadata !DIExpression()), !dbg !358
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !357, metadata !DIExpression()), !dbg !359
  %5 = load ptr, ptr %4, align 4, !dbg !360
  %6 = load ptr, ptr %3, align 4, !dbg !361
  %7 = getelementptr inbounds %struct.k_timer, ptr %6, i32 0, i32 6, !dbg !362
  store ptr %5, ptr %7, align 4, !dbg !363
  ret void, !dbg !364
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_impl_k_timer_user_data_get(ptr noundef %0) #0 !dbg !365 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !369, metadata !DIExpression()), !dbg !370
  %3 = load ptr, ptr %2, align 4, !dbg !371
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 6, !dbg !372
  %5 = load ptr, ptr %4, align 4, !dbg !372
  ret ptr %5, !dbg !373
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_queue_is_empty(ptr noundef %0) #0 !dbg !374 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !396, metadata !DIExpression()), !dbg !397
  %3 = load ptr, ptr %2, align 4, !dbg !398
  %4 = getelementptr inbounds %struct.k_queue, ptr %3, i32 0, i32 0, !dbg !399
  %5 = call zeroext i1 @sys_sflist_is_empty(ptr noundef %4) #7, !dbg !400
  %6 = zext i1 %5 to i32, !dbg !401
  ret i32 %6, !dbg !402
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_sem_count_get(ptr noundef %0) #0 !dbg !403 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !413, metadata !DIExpression()), !dbg !414
  %3 = load ptr, ptr %2, align 4, !dbg !415
  %4 = getelementptr inbounds %struct.k_sem, ptr %3, i32 0, i32 1, !dbg !416
  %5 = load i32, ptr %4, align 4, !dbg !416
  ret i32 %5, !dbg !417
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_msgq_num_free_get(ptr noundef %0) #0 !dbg !418 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !435, metadata !DIExpression()), !dbg !436
  %3 = load ptr, ptr %2, align 4, !dbg !437
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 3, !dbg !438
  %5 = load i32, ptr %4, align 4, !dbg !438
  %6 = load ptr, ptr %2, align 4, !dbg !439
  %7 = getelementptr inbounds %struct.k_msgq, ptr %6, i32 0, i32 8, !dbg !440
  %8 = load i32, ptr %7, align 4, !dbg !440
  %9 = sub i32 %5, %8, !dbg !441
  ret i32 %9, !dbg !442
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_msgq_num_used_get(ptr noundef %0) #0 !dbg !443 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !445, metadata !DIExpression()), !dbg !446
  %3 = load ptr, ptr %2, align 4, !dbg !447
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 8, !dbg !448
  %5 = load i32, ptr %4, align 4, !dbg !448
  ret i32 %5, !dbg !449
}

; Function Attrs: nounwind optsize
define hidden i32 @z_sched_prio_cmp(ptr noundef %0, ptr noundef %1) #1 !dbg !450 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !454, metadata !DIExpression()), !dbg !458
  store ptr %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !455, metadata !DIExpression()), !dbg !459
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #8, !dbg !460
  call void @llvm.dbg.declare(metadata ptr %6, metadata !456, metadata !DIExpression()), !dbg !461
  %9 = load ptr, ptr %4, align 4, !dbg !462
  %10 = getelementptr inbounds %struct.k_thread, ptr %9, i32 0, i32 0, !dbg !463
  %11 = getelementptr inbounds %struct._thread_base, ptr %10, i32 0, i32 4, !dbg !464
  %12 = getelementptr inbounds %struct.anon, ptr %11, i32 0, i32 0, !dbg !464
  %13 = load i8, ptr %12, align 2, !dbg !464
  %14 = sext i8 %13 to i32, !dbg !462
  store i32 %14, ptr %6, align 4, !dbg !461
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #8, !dbg !465
  call void @llvm.dbg.declare(metadata ptr %7, metadata !457, metadata !DIExpression()), !dbg !466
  %15 = load ptr, ptr %5, align 4, !dbg !467
  %16 = getelementptr inbounds %struct.k_thread, ptr %15, i32 0, i32 0, !dbg !468
  %17 = getelementptr inbounds %struct._thread_base, ptr %16, i32 0, i32 4, !dbg !469
  %18 = getelementptr inbounds %struct.anon, ptr %17, i32 0, i32 0, !dbg !469
  %19 = load i8, ptr %18, align 2, !dbg !469
  %20 = sext i8 %19 to i32, !dbg !467
  store i32 %20, ptr %7, align 4, !dbg !466
  %21 = load i32, ptr %6, align 4, !dbg !470
  %22 = load i32, ptr %7, align 4, !dbg !472
  %23 = icmp ne i32 %21, %22, !dbg !473
  br i1 %23, label %24, label %28, !dbg !474

24:                                               ; preds = %2
  %25 = load i32, ptr %7, align 4, !dbg !475
  %26 = load i32, ptr %6, align 4, !dbg !477
  %27 = sub nsw i32 %25, %26, !dbg !478
  store i32 %27, ptr %3, align 4, !dbg !479
  store i32 1, ptr %8, align 4
  br label %29, !dbg !479

28:                                               ; preds = %2
  store i32 0, ptr %3, align 4, !dbg !480
  store i32 1, ptr %8, align 4
  br label %29, !dbg !480

29:                                               ; preds = %28, %24
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #8, !dbg !481
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #8, !dbg !481
  %30 = load i32, ptr %3, align 4, !dbg !481
  ret i32 %30, !dbg !481
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind optsize
define hidden void @z_reset_time_slice(ptr noundef %0) #1 !dbg !482 {
  %2 = alloca ptr, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.k_timeout_t, align 8
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !486, metadata !DIExpression()), !dbg !488
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #8, !dbg !489
  call void @llvm.dbg.declare(metadata ptr %3, metadata !487, metadata !DIExpression()), !dbg !490
  %5 = load i8, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 4), align 4, !dbg !491
  %6 = zext i8 %5 to i32, !dbg !492
  store i32 %6, ptr %3, align 4, !dbg !490
  %7 = load i32, ptr %3, align 4, !dbg !493
  %8 = getelementptr inbounds [1 x %struct._timeout], ptr @slice_timeouts, i32 0, i32 %7, !dbg !494
  %9 = call i32 @z_abort_timeout(ptr noundef %8) #7, !dbg !495
  %10 = load i32, ptr %3, align 4, !dbg !496
  %11 = getelementptr inbounds [1 x i8], ptr @slice_expired, i32 0, i32 %10, !dbg !497
  store i8 0, ptr %11, align 1, !dbg !498
  %12 = load ptr, ptr %2, align 4, !dbg !499
  %13 = call zeroext i1 @sliceable(ptr noundef %12) #7, !dbg !501
  br i1 %13, label %14, label %24, !dbg !502

14:                                               ; preds = %1
  %15 = load i32, ptr %3, align 4, !dbg !503
  %16 = getelementptr inbounds [1 x %struct._timeout], ptr @slice_timeouts, i32 0, i32 %15, !dbg !505
  %17 = getelementptr inbounds %struct.k_timeout_t, ptr %4, i32 0, i32 0, !dbg !506
  %18 = load ptr, ptr %2, align 4, !dbg !507
  %19 = call i32 @slice_time(ptr noundef %18) #7, !dbg !508
  %20 = sub nsw i32 %19, 1, !dbg !509
  %21 = sext i32 %20 to i64, !dbg !510
  store i64 %21, ptr %17, align 8, !dbg !506
  %22 = getelementptr inbounds %struct.k_timeout_t, ptr %4, i32 0, i32 0, !dbg !511
  %23 = load [1 x i64], ptr %22, align 8, !dbg !511
  call void @z_add_timeout(ptr noundef %16, ptr noundef @slice_timeout, [1 x i64] %23) #7, !dbg !511
  br label %24, !dbg !512

24:                                               ; preds = %14, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #8, !dbg !513
  ret void, !dbg !513
}

; Function Attrs: optsize
declare !dbg !514 dso_local i32 @z_abort_timeout(ptr noundef) #4

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @sliceable(ptr noundef %0) #0 !dbg !518 {
  %2 = alloca ptr, align 4
  %3 = alloca i8, align 1
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !522, metadata !DIExpression()), !dbg !524
  call void @llvm.lifetime.start.p0(i64 1, ptr %3) #8, !dbg !525
  call void @llvm.dbg.declare(metadata ptr %3, metadata !523, metadata !DIExpression()), !dbg !526
  %4 = load ptr, ptr %2, align 4, !dbg !527
  %5 = call i32 @is_preempt(ptr noundef %4) #7, !dbg !528
  %6 = icmp ne i32 %5, 0, !dbg !528
  br i1 %6, label %7, label %27, !dbg !529

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 4, !dbg !530
  %9 = call i32 @slice_time(ptr noundef %8) #7, !dbg !531
  %10 = icmp ne i32 %9, 0, !dbg !532
  br i1 %10, label %11, label %27, !dbg !533

11:                                               ; preds = %7
  %12 = load ptr, ptr %2, align 4, !dbg !534
  %13 = getelementptr inbounds %struct.k_thread, ptr %12, i32 0, i32 0, !dbg !535
  %14 = getelementptr inbounds %struct._thread_base, ptr %13, i32 0, i32 4, !dbg !536
  %15 = getelementptr inbounds %struct.anon, ptr %14, i32 0, i32 0, !dbg !536
  %16 = load i8, ptr %15, align 2, !dbg !536
  %17 = sext i8 %16 to i32, !dbg !534
  %18 = load i32, ptr @slice_max_prio, align 4, !dbg !537
  %19 = call zeroext i1 @z_is_prio_higher(i32 noundef %17, i32 noundef %18) #7, !dbg !538
  br i1 %19, label %27, label %20, !dbg !539

20:                                               ; preds = %11
  %21 = load ptr, ptr %2, align 4, !dbg !540
  %22 = call zeroext i1 @z_is_thread_prevented_from_running(ptr noundef %21) #7, !dbg !541
  br i1 %22, label %27, label %23, !dbg !542

23:                                               ; preds = %20
  %24 = load ptr, ptr %2, align 4, !dbg !543
  %25 = call zeroext i1 @z_is_idle_thread_object(ptr noundef %24) #7, !dbg !544
  %26 = xor i1 %25, true, !dbg !545
  br label %27

27:                                               ; preds = %23, %20, %11, %7, %1
  %28 = phi i1 [ false, %20 ], [ false, %11 ], [ false, %7 ], [ false, %1 ], [ %26, %23 ], !dbg !546
  %29 = zext i1 %28 to i8, !dbg !526
  store i8 %29, ptr %3, align 1, !dbg !526
  %30 = load i8, ptr %3, align 1, !dbg !547, !range !548, !noundef !213
  %31 = trunc i8 %30 to i1, !dbg !547
  call void @llvm.lifetime.end.p0(i64 1, ptr %3) #8, !dbg !549
  ret i1 %31, !dbg !550
}

; Function Attrs: optsize
declare !dbg !551 dso_local void @z_add_timeout(ptr noundef, ptr noundef, [1 x i64]) #4

; Function Attrs: nounwind optsize
define internal void @slice_timeout(ptr noundef %0) #1 !dbg !554 {
  %2 = alloca ptr, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !556, metadata !DIExpression()), !dbg !558
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #8, !dbg !559
  call void @llvm.dbg.declare(metadata ptr %3, metadata !557, metadata !DIExpression()), !dbg !560
  %5 = load ptr, ptr %2, align 4, !dbg !561
  %6 = ptrtoint ptr %5 to i32, !dbg !563
  %7 = sub i32 %6, ptrtoint (ptr @slice_timeouts to i32), !dbg !563
  %8 = sdiv exact i32 %7, 24, !dbg !563
  store i32 %8, ptr %4, align 4, !dbg !564
  %9 = load i32, ptr %4, align 4, !dbg !566
  store i32 %9, ptr %3, align 4, !dbg !560
  %10 = load i32, ptr %3, align 4, !dbg !567
  %11 = getelementptr inbounds [1 x i8], ptr @slice_expired, i32 0, i32 %10, !dbg !568
  store i8 1, ptr %11, align 1, !dbg !569
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #8, !dbg !570
  ret void, !dbg !570
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @slice_time(ptr noundef %0) #0 !dbg !571 {
  %2 = alloca ptr, align 4
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !575, metadata !DIExpression()), !dbg !577
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #8, !dbg !578
  call void @llvm.dbg.declare(metadata ptr %3, metadata !576, metadata !DIExpression()), !dbg !579
  %4 = load i32, ptr @slice_ticks, align 4, !dbg !580
  store i32 %4, ptr %3, align 4, !dbg !579
  %5 = load ptr, ptr %2, align 4, !dbg !581
  %6 = load i32, ptr %3, align 4, !dbg !582
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #8, !dbg !583
  ret i32 %6, !dbg !584
}

; Function Attrs: nounwind optsize
define hidden void @k_sched_time_slice_set(i32 noundef %0, i32 noundef %1) #1 !dbg !585 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.z_spinlock_key, align 4
  %8 = alloca ptr, align 4
  %9 = alloca %struct.z_spinlock_key, align 4
  %10 = alloca ptr, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.z_spinlock_key, align 4
  %14 = alloca %struct.z_spinlock_key, align 4
  store i32 %0, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !589, metadata !DIExpression()), !dbg !598
  store i32 %1, ptr %12, align 4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !590, metadata !DIExpression()), !dbg !599
  call void @llvm.lifetime.start.p0(i64 4, ptr %13) #8, !dbg !600
  call void @llvm.dbg.declare(metadata ptr %13, metadata !591, metadata !DIExpression()), !dbg !601
  call void @llvm.memset.p0.i32(ptr align 4 %13, i8 0, i32 4, i1 false), !dbg !601
  call void @llvm.lifetime.start.p0(i64 4, ptr %14) #8, !dbg !600
  call void @llvm.dbg.declare(metadata ptr %14, metadata !597, metadata !DIExpression()), !dbg !602
  store ptr @sched_spinlock, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !603, metadata !DIExpression()), !dbg !610
  %15 = load ptr, ptr %10, align 4, !dbg !612
  call void @llvm.dbg.declare(metadata ptr %9, metadata !609, metadata !DIExpression()), !dbg !613
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #8, !dbg !614
  call void @llvm.dbg.declare(metadata ptr %5, metadata !620, metadata !DIExpression()), !dbg !622
  %16 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #8, !dbg !623, !srcloc !624
  store i32 %16, ptr %5, align 4, !dbg !623
  %17 = load i32, ptr %5, align 4, !dbg !625
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #8, !dbg !626
  store i32 %17, ptr %9, align 4, !dbg !627
  %18 = load ptr, ptr %10, align 4, !dbg !628
  store ptr %18, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !629, metadata !DIExpression()), !dbg !634
  %19 = load ptr, ptr %4, align 4, !dbg !636
  %20 = load ptr, ptr %10, align 4, !dbg !637
  store ptr %20, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !638, metadata !DIExpression()), !dbg !641
  %21 = load ptr, ptr %3, align 4, !dbg !643
  %22 = load i32, ptr %9, align 4, !dbg !644
  %23 = getelementptr inbounds %struct.z_spinlock_key, ptr %14, i32 0, i32 0, !dbg !645
  store i32 %22, ptr %23, align 4, !dbg !645
  br label %24, !dbg !600

24:                                               ; preds = %arch_irq_unlock.exit, %2
  %25 = getelementptr inbounds %struct.z_spinlock_key, ptr %13, i32 0, i32 0, !dbg !646
  %26 = load i32, ptr %25, align 4, !dbg !646
  %27 = icmp ne i32 %26, 0, !dbg !648
  %28 = xor i1 %27, true, !dbg !648
  br i1 %28, label %30, label %29, !dbg !649

29:                                               ; preds = %24
  call void @llvm.lifetime.end.p0(i64 4, ptr %14) #8, !dbg !650
  call void @llvm.lifetime.end.p0(i64 4, ptr %13) #8, !dbg !650
  br label %45

30:                                               ; preds = %24
  %31 = load i32, ptr %11, align 4, !dbg !651
  %32 = mul i32 %31, 10, !dbg !653
  store i32 %32, ptr @slice_ticks, align 4, !dbg !654
  %33 = load i32, ptr %12, align 4, !dbg !655
  store i32 %33, ptr @slice_max_prio, align 4, !dbg !656
  %34 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !657
  call void @z_reset_time_slice(ptr noundef %34) #7, !dbg !658
  br label %35, !dbg !659

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.z_spinlock_key, ptr %14, i32 0, i32 0, !dbg !660
  %37 = load [1 x i32], ptr %36, align 4, !dbg !660
  store [1 x i32] %37, ptr %7, align 4
  store ptr @sched_spinlock, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !661, metadata !DIExpression()), !dbg !667
  call void @llvm.dbg.declare(metadata ptr %7, metadata !666, metadata !DIExpression()), !dbg !669
  %38 = load ptr, ptr %8, align 4, !dbg !670
  %39 = load i32, ptr %7, align 4, !dbg !671
  store i32 %39, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !672, metadata !DIExpression()), !dbg !677
  %40 = load i32, ptr %6, align 4, !dbg !679
  %41 = icmp ne i32 %40, 0, !dbg !681
  br i1 %41, label %42, label %43, !dbg !682

42:                                               ; preds = %35
  br label %arch_irq_unlock.exit, !dbg !683

43:                                               ; preds = %35
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #8, !dbg !685, !srcloc !686
  br label %arch_irq_unlock.exit, !dbg !687

arch_irq_unlock.exit:                             ; preds = %42, %43
  %44 = getelementptr inbounds %struct.z_spinlock_key, ptr %13, i32 0, i32 0, !dbg !688
  store i32 1, ptr %44, align 4, !dbg !689
  br label %24, !dbg !650, !llvm.loop !690

45:                                               ; preds = %29
  ret void, !dbg !692
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: nounwind optsize
define hidden void @z_time_slice() #1 !dbg !693 {
  %1 = alloca ptr, align 4
  %2 = alloca ptr, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.z_spinlock_key, align 4
  %7 = alloca ptr, align 4
  %8 = alloca %struct.z_spinlock_key, align 4
  %9 = alloca ptr, align 4
  %10 = alloca %struct.z_spinlock_key, align 4
  %11 = alloca ptr, align 4
  %12 = alloca %struct.z_spinlock_key, align 4
  %13 = alloca ptr, align 4
  %14 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %12) #8, !dbg !699
  call void @llvm.dbg.declare(metadata ptr %12, metadata !697, metadata !DIExpression()), !dbg !700
  store ptr @sched_spinlock, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !603, metadata !DIExpression()), !dbg !701
  %15 = load ptr, ptr %11, align 4, !dbg !703
  call void @llvm.dbg.declare(metadata ptr %10, metadata !609, metadata !DIExpression()), !dbg !704
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #8, !dbg !705
  call void @llvm.dbg.declare(metadata ptr %3, metadata !620, metadata !DIExpression()), !dbg !707
  %16 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #8, !dbg !708, !srcloc !624
  store i32 %16, ptr %3, align 4, !dbg !708
  %17 = load i32, ptr %3, align 4, !dbg !709
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #8, !dbg !710
  store i32 %17, ptr %10, align 4, !dbg !711
  %18 = load ptr, ptr %11, align 4, !dbg !712
  store ptr %18, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !629, metadata !DIExpression()), !dbg !713
  %19 = load ptr, ptr %2, align 4, !dbg !715
  %20 = load ptr, ptr %11, align 4, !dbg !716
  store ptr %20, ptr %1, align 4
  call void @llvm.dbg.declare(metadata ptr %1, metadata !638, metadata !DIExpression()), !dbg !717
  %21 = load ptr, ptr %1, align 4, !dbg !719
  %22 = load i32, ptr %10, align 4, !dbg !720
  %23 = getelementptr inbounds %struct.z_spinlock_key, ptr %12, i32 0, i32 0, !dbg !721
  store i32 %22, ptr %23, align 4, !dbg !721
  call void @llvm.lifetime.start.p0(i64 4, ptr %13) #8, !dbg !722
  call void @llvm.dbg.declare(metadata ptr %13, metadata !698, metadata !DIExpression()), !dbg !723
  %24 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !724
  store ptr %24, ptr %13, align 4, !dbg !723
  %25 = load ptr, ptr @pending_current, align 4, !dbg !725
  %26 = load ptr, ptr %13, align 4, !dbg !727
  %27 = icmp eq ptr %25, %26, !dbg !728
  br i1 %27, label %28, label %38, !dbg !729

28:                                               ; preds = %0
  %29 = load ptr, ptr %13, align 4, !dbg !730
  call void @z_reset_time_slice(ptr noundef %29) #7, !dbg !732
  %30 = getelementptr inbounds %struct.z_spinlock_key, ptr %12, i32 0, i32 0, !dbg !733
  %31 = load [1 x i32], ptr %30, align 4, !dbg !733
  store [1 x i32] %31, ptr %6, align 4
  store ptr @sched_spinlock, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !661, metadata !DIExpression()), !dbg !734
  call void @llvm.dbg.declare(metadata ptr %6, metadata !666, metadata !DIExpression()), !dbg !736
  %32 = load ptr, ptr %7, align 4, !dbg !737
  %33 = load i32, ptr %6, align 4, !dbg !738
  store i32 %33, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !672, metadata !DIExpression()), !dbg !739
  %34 = load i32, ptr %5, align 4, !dbg !741
  %35 = icmp ne i32 %34, 0, !dbg !742
  br i1 %35, label %36, label %37, !dbg !743

36:                                               ; preds = %28
  br label %arch_irq_unlock.exit, !dbg !744

37:                                               ; preds = %28
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #8, !dbg !745, !srcloc !686
  br label %arch_irq_unlock.exit, !dbg !746

arch_irq_unlock.exit:                             ; preds = %36, %37
  store i32 1, ptr %14, align 4
  br label %63, !dbg !747

38:                                               ; preds = %0
  store ptr null, ptr @pending_current, align 4, !dbg !748
  %39 = load i8, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 4), align 4, !dbg !749
  %40 = zext i8 %39 to i32, !dbg !751
  %41 = getelementptr inbounds [1 x i8], ptr @slice_expired, i32 0, i32 %40, !dbg !751
  %42 = load i8, ptr %41, align 1, !dbg !751, !range !548, !noundef !213
  %43 = trunc i8 %42 to i1, !dbg !751
  br i1 %43, label %44, label %54, !dbg !752

44:                                               ; preds = %38
  %45 = load ptr, ptr %13, align 4, !dbg !753
  %46 = call zeroext i1 @sliceable(ptr noundef %45) #7, !dbg !754
  br i1 %46, label %47, label %54, !dbg !755

47:                                               ; preds = %44
  %48 = load ptr, ptr %13, align 4, !dbg !756
  %49 = call zeroext i1 @z_is_thread_prevented_from_running(ptr noundef %48) #7, !dbg !759
  br i1 %49, label %52, label %50, !dbg !760

50:                                               ; preds = %47
  %51 = load ptr, ptr %13, align 4, !dbg !761
  call void @move_thread_to_end_of_prio_q(ptr noundef %51) #7, !dbg !763
  br label %52, !dbg !764

52:                                               ; preds = %50, %47
  %53 = load ptr, ptr %13, align 4, !dbg !765
  call void @z_reset_time_slice(ptr noundef %53) #7, !dbg !766
  br label %54, !dbg !767

54:                                               ; preds = %52, %44, %38
  %55 = getelementptr inbounds %struct.z_spinlock_key, ptr %12, i32 0, i32 0, !dbg !768
  %56 = load [1 x i32], ptr %55, align 4, !dbg !768
  store [1 x i32] %56, ptr %8, align 4
  store ptr @sched_spinlock, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !661, metadata !DIExpression()), !dbg !769
  call void @llvm.dbg.declare(metadata ptr %8, metadata !666, metadata !DIExpression()), !dbg !771
  %57 = load ptr, ptr %9, align 4, !dbg !772
  %58 = load i32, ptr %8, align 4, !dbg !773
  store i32 %58, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !672, metadata !DIExpression()), !dbg !774
  %59 = load i32, ptr %4, align 4, !dbg !776
  %60 = icmp ne i32 %59, 0, !dbg !777
  br i1 %60, label %61, label %62, !dbg !778

61:                                               ; preds = %54
  br label %arch_irq_unlock.exit1, !dbg !779

62:                                               ; preds = %54
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #8, !dbg !780, !srcloc !686
  br label %arch_irq_unlock.exit1, !dbg !781

arch_irq_unlock.exit1:                            ; preds = %61, %62
  store i32 0, ptr %14, align 4, !dbg !782
  br label %63, !dbg !782

63:                                               ; preds = %arch_irq_unlock.exit1, %arch_irq_unlock.exit
  call void @llvm.lifetime.end.p0(i64 4, ptr %13) #8, !dbg !782
  call void @llvm.lifetime.end.p0(i64 4, ptr %12) #8, !dbg !782
  %64 = load i32, ptr %14, align 4
  switch i32 %64, label %66 [
    i32 0, label %65
    i32 1, label %65
  ]

65:                                               ; preds = %63, %63
  ret void, !dbg !782

66:                                               ; preds = %63
  unreachable
}

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @z_is_thread_prevented_from_running(ptr noundef %0) #0 !dbg !783 {
  %2 = alloca ptr, align 4
  %3 = alloca i8, align 1
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !786, metadata !DIExpression()), !dbg !788
  call void @llvm.lifetime.start.p0(i64 1, ptr %3) #8, !dbg !789
  call void @llvm.dbg.declare(metadata ptr %3, metadata !787, metadata !DIExpression()), !dbg !790
  %4 = load ptr, ptr %2, align 4, !dbg !791
  %5 = getelementptr inbounds %struct.k_thread, ptr %4, i32 0, i32 0, !dbg !792
  %6 = getelementptr inbounds %struct._thread_base, ptr %5, i32 0, i32 3, !dbg !793
  %7 = load i8, ptr %6, align 1, !dbg !793
  store i8 %7, ptr %3, align 1, !dbg !790
  %8 = load i8, ptr %3, align 1, !dbg !794
  %9 = zext i8 %8 to i32, !dbg !794
  %10 = and i32 %9, 31, !dbg !795
  %11 = icmp ne i32 %10, 0, !dbg !796
  call void @llvm.lifetime.end.p0(i64 1, ptr %3) #8, !dbg !797
  ret i1 %11, !dbg !798
}

; Function Attrs: nounwind optsize
define internal void @move_thread_to_end_of_prio_q(ptr noundef %0) #1 !dbg !799 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  %11 = alloca ptr, align 4
  %12 = alloca ptr, align 4
  %13 = alloca ptr, align 4
  %14 = alloca ptr, align 4
  store ptr %0, ptr %14, align 4
  call void @llvm.dbg.declare(metadata ptr %14, metadata !801, metadata !DIExpression()), !dbg !802
  %15 = load ptr, ptr %14, align 4, !dbg !803
  %16 = call zeroext i1 @z_is_thread_queued(ptr noundef %15) #7, !dbg !805
  br i1 %16, label %17, label %32, !dbg !806

17:                                               ; preds = %1
  %18 = load ptr, ptr %14, align 4, !dbg !807
  store ptr %18, ptr %13, align 4
  call void @llvm.dbg.declare(metadata ptr %13, metadata !809, metadata !DIExpression()), !dbg !812
  %19 = load ptr, ptr %13, align 4, !dbg !814
  %20 = getelementptr inbounds %struct._thread_base, ptr %19, i32 0, i32 3, !dbg !815
  %21 = load i8, ptr %20, align 1, !dbg !816
  %22 = zext i8 %21 to i32, !dbg !816
  %23 = and i32 %22, -129, !dbg !816
  %24 = trunc i32 %23 to i8, !dbg !816
  store i8 %24, ptr %20, align 1, !dbg !816
  %25 = load ptr, ptr %13, align 4, !dbg !817
  %26 = call zeroext i1 @should_queue_thread(ptr noundef %25) #7, !dbg !819
  br i1 %26, label %27, label %dequeue_thread.exit, !dbg !820

27:                                               ; preds = %17
  %28 = load ptr, ptr %13, align 4, !dbg !821
  store ptr %28, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !823, metadata !DIExpression()), !dbg !826
  %29 = load ptr, ptr %11, align 4, !dbg !828
  store ptr %29, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !829, metadata !DIExpression()), !dbg !834
  %30 = load ptr, ptr %10, align 4, !dbg !836
  %31 = load ptr, ptr %11, align 4, !dbg !837
  call void @z_priq_dumb_remove(ptr noundef getelementptr inbounds (%struct.z_kernel, ptr @_kernel, i32 0, i32 1, i32 1), ptr noundef %31) #7, !dbg !838
  br label %dequeue_thread.exit, !dbg !839

dequeue_thread.exit:                              ; preds = %17, %27
  br label %32, !dbg !840

32:                                               ; preds = %dequeue_thread.exit, %1
  %33 = load ptr, ptr %14, align 4, !dbg !841
  store ptr %33, ptr %12, align 4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !842, metadata !DIExpression()), !dbg !845
  %34 = load ptr, ptr %12, align 4, !dbg !847
  %35 = getelementptr inbounds %struct._thread_base, ptr %34, i32 0, i32 3, !dbg !848
  %36 = load i8, ptr %35, align 1, !dbg !849
  %37 = zext i8 %36 to i32, !dbg !849
  %38 = or i32 %37, 128, !dbg !849
  %39 = trunc i32 %38 to i8, !dbg !849
  store i8 %39, ptr %35, align 1, !dbg !849
  %40 = load ptr, ptr %12, align 4, !dbg !850
  %41 = call zeroext i1 @should_queue_thread(ptr noundef %40) #7, !dbg !852
  br i1 %41, label %42, label %queue_thread.exit, !dbg !853

42:                                               ; preds = %32
  %43 = load ptr, ptr %12, align 4, !dbg !854
  store ptr %43, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !856, metadata !DIExpression()), !dbg !859
  %44 = load ptr, ptr %9, align 4, !dbg !861
  store ptr %44, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !829, metadata !DIExpression()), !dbg !862
  %45 = load ptr, ptr %8, align 4, !dbg !864
  %46 = load ptr, ptr %9, align 4, !dbg !865
  store ptr getelementptr inbounds (%struct.z_kernel, ptr @_kernel, i32 0, i32 1, i32 1), ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !866, metadata !DIExpression()), !dbg !874
  store ptr %46, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !872, metadata !DIExpression()), !dbg !876
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #8, !dbg !877
  call void @llvm.dbg.declare(metadata ptr %4, metadata !873, metadata !DIExpression()), !dbg !878
  %47 = load ptr, ptr %2, align 4, !dbg !879
  %48 = call ptr @sys_dlist_peek_head(ptr noundef %47) #7, !dbg !881
  %49 = icmp ne ptr %48, null, !dbg !882
  br i1 %49, label %50, label %54, !dbg !883

50:                                               ; preds = %42
  %51 = load ptr, ptr %2, align 4, !dbg !884
  %52 = call ptr @sys_dlist_peek_head(ptr noundef %51) #7, !dbg !886
  store ptr %52, ptr %5, align 4, !dbg !887
  %53 = load ptr, ptr %5, align 4, !dbg !888
  br label %55, !dbg !883

54:                                               ; preds = %42
  br label %55, !dbg !883

55:                                               ; preds = %54, %50
  %56 = phi ptr [ %53, %50 ], [ null, %54 ], !dbg !883
  store ptr %56, ptr %4, align 4, !dbg !889
  br label %57, !dbg !890

57:                                               ; preds = %85, %55
  %58 = load ptr, ptr %4, align 4, !dbg !891
  %59 = icmp ne ptr %58, null, !dbg !893
  br i1 %59, label %60, label %87, !dbg !894

60:                                               ; preds = %57
  %61 = load ptr, ptr %3, align 4, !dbg !895
  %62 = load ptr, ptr %4, align 4, !dbg !898
  %63 = call i32 @z_sched_prio_cmp(ptr noundef %61, ptr noundef %62) #7, !dbg !899
  %64 = icmp sgt i32 %63, 0, !dbg !900
  br i1 %64, label %65, label %68, !dbg !901

65:                                               ; preds = %60
  %66 = load ptr, ptr %4, align 4, !dbg !902
  %67 = load ptr, ptr %3, align 4, !dbg !904
  call void @sys_dlist_insert(ptr noundef %66, ptr noundef %67) #7, !dbg !905
  store i32 1, ptr %6, align 4
  br label %z_priq_dumb_add.exit, !dbg !906

68:                                               ; preds = %60
  %69 = load ptr, ptr %4, align 4, !dbg !907
  %70 = icmp ne ptr %69, null, !dbg !908
  br i1 %70, label %71, label %84, !dbg !909

71:                                               ; preds = %68
  %72 = load ptr, ptr %2, align 4, !dbg !910
  %73 = load ptr, ptr %4, align 4, !dbg !911
  %74 = call ptr @sys_dlist_peek_next(ptr noundef %72, ptr noundef %73) #7, !dbg !912
  %75 = icmp ne ptr %74, null, !dbg !913
  br i1 %75, label %76, label %81, !dbg !914

76:                                               ; preds = %71
  %77 = load ptr, ptr %2, align 4, !dbg !915
  %78 = load ptr, ptr %4, align 4, !dbg !917
  %79 = call ptr @sys_dlist_peek_next(ptr noundef %77, ptr noundef %78) #7, !dbg !918
  store ptr %79, ptr %7, align 4, !dbg !919
  %80 = load ptr, ptr %7, align 4, !dbg !920
  br label %82, !dbg !914

81:                                               ; preds = %71
  br label %82, !dbg !914

82:                                               ; preds = %81, %76
  %83 = phi ptr [ %80, %76 ], [ null, %81 ], !dbg !914
  br label %85, !dbg !909

84:                                               ; preds = %68
  br label %85, !dbg !909

85:                                               ; preds = %84, %82
  %86 = phi ptr [ %83, %82 ], [ null, %84 ], !dbg !909
  store ptr %86, ptr %4, align 4, !dbg !921
  br label %57, !dbg !922, !llvm.loop !923

87:                                               ; preds = %57
  %88 = load ptr, ptr %2, align 4, !dbg !925
  %89 = load ptr, ptr %3, align 4, !dbg !926
  call void @sys_dlist_append(ptr noundef %88, ptr noundef %89) #7, !dbg !927
  store i32 0, ptr %6, align 4, !dbg !928
  br label %z_priq_dumb_add.exit, !dbg !928

z_priq_dumb_add.exit:                             ; preds = %65, %87
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #8, !dbg !928
  %90 = load i32, ptr %6, align 4
  br label %queue_thread.exit, !dbg !929

queue_thread.exit:                                ; preds = %32, %z_priq_dumb_add.exit
  %91 = load ptr, ptr %14, align 4, !dbg !930
  %92 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !931
  %93 = icmp eq ptr %91, %92, !dbg !932
  %94 = zext i1 %93 to i32, !dbg !932
  call void @update_cache(i32 noundef %94) #7, !dbg !933
  ret void, !dbg !934
}

; Function Attrs: nounwind optsize
define hidden void @z_ready_thread(ptr noundef %0) #1 !dbg !935 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.z_spinlock_key, align 4
  %7 = alloca ptr, align 4
  %8 = alloca %struct.z_spinlock_key, align 4
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  %11 = alloca %struct.z_spinlock_key, align 4
  %12 = alloca %struct.z_spinlock_key, align 4
  store ptr %0, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !937, metadata !DIExpression()), !dbg !941
  call void @llvm.lifetime.start.p0(i64 4, ptr %11) #8, !dbg !942
  call void @llvm.dbg.declare(metadata ptr %11, metadata !938, metadata !DIExpression()), !dbg !943
  call void @llvm.memset.p0.i32(ptr align 4 %11, i8 0, i32 4, i1 false), !dbg !943
  call void @llvm.lifetime.start.p0(i64 4, ptr %12) #8, !dbg !942
  call void @llvm.dbg.declare(metadata ptr %12, metadata !940, metadata !DIExpression()), !dbg !944
  store ptr @sched_spinlock, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !603, metadata !DIExpression()), !dbg !945
  %13 = load ptr, ptr %9, align 4, !dbg !947
  call void @llvm.dbg.declare(metadata ptr %8, metadata !609, metadata !DIExpression()), !dbg !948
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #8, !dbg !949
  call void @llvm.dbg.declare(metadata ptr %4, metadata !620, metadata !DIExpression()), !dbg !951
  %14 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #8, !dbg !952, !srcloc !624
  store i32 %14, ptr %4, align 4, !dbg !952
  %15 = load i32, ptr %4, align 4, !dbg !953
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #8, !dbg !954
  store i32 %15, ptr %8, align 4, !dbg !955
  %16 = load ptr, ptr %9, align 4, !dbg !956
  store ptr %16, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !629, metadata !DIExpression()), !dbg !957
  %17 = load ptr, ptr %3, align 4, !dbg !959
  %18 = load ptr, ptr %9, align 4, !dbg !960
  store ptr %18, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !638, metadata !DIExpression()), !dbg !961
  %19 = load ptr, ptr %2, align 4, !dbg !963
  %20 = load i32, ptr %8, align 4, !dbg !964
  %21 = getelementptr inbounds %struct.z_spinlock_key, ptr %12, i32 0, i32 0, !dbg !965
  store i32 %20, ptr %21, align 4, !dbg !965
  br label %22, !dbg !942

22:                                               ; preds = %arch_irq_unlock.exit, %1
  %23 = getelementptr inbounds %struct.z_spinlock_key, ptr %11, i32 0, i32 0, !dbg !966
  %24 = load i32, ptr %23, align 4, !dbg !966
  %25 = icmp ne i32 %24, 0, !dbg !968
  %26 = xor i1 %25, true, !dbg !968
  br i1 %26, label %28, label %27, !dbg !969

27:                                               ; preds = %22
  call void @llvm.lifetime.end.p0(i64 4, ptr %12) #8, !dbg !970
  call void @llvm.lifetime.end.p0(i64 4, ptr %11) #8, !dbg !970
  br label %44

28:                                               ; preds = %22
  %29 = load ptr, ptr %10, align 4, !dbg !971
  %30 = call zeroext i1 @thread_active_elsewhere(ptr noundef %29) #7, !dbg !974
  br i1 %30, label %33, label %31, !dbg !975

31:                                               ; preds = %28
  %32 = load ptr, ptr %10, align 4, !dbg !976
  call void @ready_thread(ptr noundef %32) #7, !dbg !978
  br label %33, !dbg !979

33:                                               ; preds = %31, %28
  br label %34, !dbg !980

34:                                               ; preds = %33
  %35 = getelementptr inbounds %struct.z_spinlock_key, ptr %12, i32 0, i32 0, !dbg !981
  %36 = load [1 x i32], ptr %35, align 4, !dbg !981
  store [1 x i32] %36, ptr %6, align 4
  store ptr @sched_spinlock, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !661, metadata !DIExpression()), !dbg !982
  call void @llvm.dbg.declare(metadata ptr %6, metadata !666, metadata !DIExpression()), !dbg !984
  %37 = load ptr, ptr %7, align 4, !dbg !985
  %38 = load i32, ptr %6, align 4, !dbg !986
  store i32 %38, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !672, metadata !DIExpression()), !dbg !987
  %39 = load i32, ptr %5, align 4, !dbg !989
  %40 = icmp ne i32 %39, 0, !dbg !990
  br i1 %40, label %41, label %42, !dbg !991

41:                                               ; preds = %34
  br label %arch_irq_unlock.exit, !dbg !992

42:                                               ; preds = %34
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #8, !dbg !993, !srcloc !686
  br label %arch_irq_unlock.exit, !dbg !994

arch_irq_unlock.exit:                             ; preds = %41, %42
  %43 = getelementptr inbounds %struct.z_spinlock_key, ptr %11, i32 0, i32 0, !dbg !995
  store i32 1, ptr %43, align 4, !dbg !996
  br label %22, !dbg !970, !llvm.loop !997

44:                                               ; preds = %27
  ret void, !dbg !999
}

; Function Attrs: nounwind optsize
define internal zeroext i1 @thread_active_elsewhere(ptr noundef %0) #1 !dbg !1000 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1002, metadata !DIExpression()), !dbg !1003
  %3 = load ptr, ptr %2, align 4, !dbg !1004
  ret i1 false, !dbg !1005
}

; Function Attrs: nounwind optsize
define internal void @ready_thread(ptr noundef %0) #1 !dbg !1006 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  %11 = alloca ptr, align 4
  store ptr %0, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1008, metadata !DIExpression()), !dbg !1009
  %12 = load ptr, ptr %11, align 4, !dbg !1010
  %13 = call zeroext i1 @z_is_thread_queued(ptr noundef %12) #7, !dbg !1012
  br i1 %13, label %78, label %14, !dbg !1013

14:                                               ; preds = %1
  %15 = load ptr, ptr %11, align 4, !dbg !1014
  %16 = call zeroext i1 @z_is_thread_ready(ptr noundef %15) #7, !dbg !1015
  br i1 %16, label %17, label %78, !dbg !1016

17:                                               ; preds = %14
  br label %18, !dbg !1017

18:                                               ; preds = %17
  br label %19, !dbg !1019

19:                                               ; preds = %18
  %20 = load ptr, ptr %11, align 4, !dbg !1021
  store ptr %20, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !842, metadata !DIExpression()), !dbg !1022
  %21 = load ptr, ptr %10, align 4, !dbg !1024
  %22 = getelementptr inbounds %struct._thread_base, ptr %21, i32 0, i32 3, !dbg !1025
  %23 = load i8, ptr %22, align 1, !dbg !1026
  %24 = zext i8 %23 to i32, !dbg !1026
  %25 = or i32 %24, 128, !dbg !1026
  %26 = trunc i32 %25 to i8, !dbg !1026
  store i8 %26, ptr %22, align 1, !dbg !1026
  %27 = load ptr, ptr %10, align 4, !dbg !1027
  %28 = call zeroext i1 @should_queue_thread(ptr noundef %27) #7, !dbg !1028
  br i1 %28, label %29, label %queue_thread.exit, !dbg !1029

29:                                               ; preds = %19
  %30 = load ptr, ptr %10, align 4, !dbg !1030
  store ptr %30, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !856, metadata !DIExpression()), !dbg !1031
  %31 = load ptr, ptr %9, align 4, !dbg !1033
  store ptr %31, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !829, metadata !DIExpression()), !dbg !1034
  %32 = load ptr, ptr %8, align 4, !dbg !1036
  %33 = load ptr, ptr %9, align 4, !dbg !1037
  store ptr getelementptr inbounds (%struct.z_kernel, ptr @_kernel, i32 0, i32 1, i32 1), ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !866, metadata !DIExpression()), !dbg !1038
  store ptr %33, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !872, metadata !DIExpression()), !dbg !1040
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #8, !dbg !1041
  call void @llvm.dbg.declare(metadata ptr %4, metadata !873, metadata !DIExpression()), !dbg !1042
  %34 = load ptr, ptr %2, align 4, !dbg !1043
  %35 = call ptr @sys_dlist_peek_head(ptr noundef %34) #7, !dbg !1044
  %36 = icmp ne ptr %35, null, !dbg !1045
  br i1 %36, label %37, label %41, !dbg !1046

37:                                               ; preds = %29
  %38 = load ptr, ptr %2, align 4, !dbg !1047
  %39 = call ptr @sys_dlist_peek_head(ptr noundef %38) #7, !dbg !1048
  store ptr %39, ptr %5, align 4, !dbg !1049
  %40 = load ptr, ptr %5, align 4, !dbg !1050
  br label %42, !dbg !1046

41:                                               ; preds = %29
  br label %42, !dbg !1046

42:                                               ; preds = %41, %37
  %43 = phi ptr [ %40, %37 ], [ null, %41 ], !dbg !1046
  store ptr %43, ptr %4, align 4, !dbg !1051
  br label %44, !dbg !1052

44:                                               ; preds = %72, %42
  %45 = load ptr, ptr %4, align 4, !dbg !1053
  %46 = icmp ne ptr %45, null, !dbg !1054
  br i1 %46, label %47, label %74, !dbg !1055

47:                                               ; preds = %44
  %48 = load ptr, ptr %3, align 4, !dbg !1056
  %49 = load ptr, ptr %4, align 4, !dbg !1057
  %50 = call i32 @z_sched_prio_cmp(ptr noundef %48, ptr noundef %49) #7, !dbg !1058
  %51 = icmp sgt i32 %50, 0, !dbg !1059
  br i1 %51, label %52, label %55, !dbg !1060

52:                                               ; preds = %47
  %53 = load ptr, ptr %4, align 4, !dbg !1061
  %54 = load ptr, ptr %3, align 4, !dbg !1062
  call void @sys_dlist_insert(ptr noundef %53, ptr noundef %54) #7, !dbg !1063
  store i32 1, ptr %6, align 4
  br label %z_priq_dumb_add.exit, !dbg !1064

55:                                               ; preds = %47
  %56 = load ptr, ptr %4, align 4, !dbg !1065
  %57 = icmp ne ptr %56, null, !dbg !1066
  br i1 %57, label %58, label %71, !dbg !1067

58:                                               ; preds = %55
  %59 = load ptr, ptr %2, align 4, !dbg !1068
  %60 = load ptr, ptr %4, align 4, !dbg !1069
  %61 = call ptr @sys_dlist_peek_next(ptr noundef %59, ptr noundef %60) #7, !dbg !1070
  %62 = icmp ne ptr %61, null, !dbg !1071
  br i1 %62, label %63, label %68, !dbg !1072

63:                                               ; preds = %58
  %64 = load ptr, ptr %2, align 4, !dbg !1073
  %65 = load ptr, ptr %4, align 4, !dbg !1074
  %66 = call ptr @sys_dlist_peek_next(ptr noundef %64, ptr noundef %65) #7, !dbg !1075
  store ptr %66, ptr %7, align 4, !dbg !1076
  %67 = load ptr, ptr %7, align 4, !dbg !1077
  br label %69, !dbg !1072

68:                                               ; preds = %58
  br label %69, !dbg !1072

69:                                               ; preds = %68, %63
  %70 = phi ptr [ %67, %63 ], [ null, %68 ], !dbg !1072
  br label %72, !dbg !1067

71:                                               ; preds = %55
  br label %72, !dbg !1067

72:                                               ; preds = %71, %69
  %73 = phi ptr [ %70, %69 ], [ null, %71 ], !dbg !1067
  store ptr %73, ptr %4, align 4, !dbg !1078
  br label %44, !dbg !1079, !llvm.loop !1080

74:                                               ; preds = %44
  %75 = load ptr, ptr %2, align 4, !dbg !1082
  %76 = load ptr, ptr %3, align 4, !dbg !1083
  call void @sys_dlist_append(ptr noundef %75, ptr noundef %76) #7, !dbg !1084
  store i32 0, ptr %6, align 4, !dbg !1085
  br label %z_priq_dumb_add.exit, !dbg !1085

z_priq_dumb_add.exit:                             ; preds = %52, %74
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #8, !dbg !1085
  %77 = load i32, ptr %6, align 4
  br label %queue_thread.exit, !dbg !1086

queue_thread.exit:                                ; preds = %19, %z_priq_dumb_add.exit
  call void @update_cache(i32 noundef 0) #7, !dbg !1087
  call void @flag_ipi() #7, !dbg !1088
  br label %78, !dbg !1089

78:                                               ; preds = %queue_thread.exit, %14, %1
  ret void, !dbg !1090
}

; Function Attrs: nounwind optsize
define hidden void @z_move_thread_to_end_of_prio_q(ptr noundef %0) #1 !dbg !1091 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.z_spinlock_key, align 4
  %7 = alloca ptr, align 4
  %8 = alloca %struct.z_spinlock_key, align 4
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  %11 = alloca %struct.z_spinlock_key, align 4
  %12 = alloca %struct.z_spinlock_key, align 4
  store ptr %0, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1093, metadata !DIExpression()), !dbg !1097
  call void @llvm.lifetime.start.p0(i64 4, ptr %11) #8, !dbg !1098
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1094, metadata !DIExpression()), !dbg !1099
  call void @llvm.memset.p0.i32(ptr align 4 %11, i8 0, i32 4, i1 false), !dbg !1099
  call void @llvm.lifetime.start.p0(i64 4, ptr %12) #8, !dbg !1098
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1096, metadata !DIExpression()), !dbg !1100
  store ptr @sched_spinlock, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !603, metadata !DIExpression()), !dbg !1101
  %13 = load ptr, ptr %9, align 4, !dbg !1103
  call void @llvm.dbg.declare(metadata ptr %8, metadata !609, metadata !DIExpression()), !dbg !1104
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #8, !dbg !1105
  call void @llvm.dbg.declare(metadata ptr %4, metadata !620, metadata !DIExpression()), !dbg !1107
  %14 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #8, !dbg !1108, !srcloc !624
  store i32 %14, ptr %4, align 4, !dbg !1108
  %15 = load i32, ptr %4, align 4, !dbg !1109
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #8, !dbg !1110
  store i32 %15, ptr %8, align 4, !dbg !1111
  %16 = load ptr, ptr %9, align 4, !dbg !1112
  store ptr %16, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !629, metadata !DIExpression()), !dbg !1113
  %17 = load ptr, ptr %3, align 4, !dbg !1115
  %18 = load ptr, ptr %9, align 4, !dbg !1116
  store ptr %18, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !638, metadata !DIExpression()), !dbg !1117
  %19 = load ptr, ptr %2, align 4, !dbg !1119
  %20 = load i32, ptr %8, align 4, !dbg !1120
  %21 = getelementptr inbounds %struct.z_spinlock_key, ptr %12, i32 0, i32 0, !dbg !1121
  store i32 %20, ptr %21, align 4, !dbg !1121
  br label %22, !dbg !1098

22:                                               ; preds = %arch_irq_unlock.exit, %1
  %23 = getelementptr inbounds %struct.z_spinlock_key, ptr %11, i32 0, i32 0, !dbg !1122
  %24 = load i32, ptr %23, align 4, !dbg !1122
  %25 = icmp ne i32 %24, 0, !dbg !1124
  %26 = xor i1 %25, true, !dbg !1124
  br i1 %26, label %28, label %27, !dbg !1125

27:                                               ; preds = %22
  call void @llvm.lifetime.end.p0(i64 4, ptr %12) #8, !dbg !1126
  call void @llvm.lifetime.end.p0(i64 4, ptr %11) #8, !dbg !1126
  br label %40

28:                                               ; preds = %22
  %29 = load ptr, ptr %10, align 4, !dbg !1127
  call void @move_thread_to_end_of_prio_q(ptr noundef %29) #7, !dbg !1129
  br label %30, !dbg !1130

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.z_spinlock_key, ptr %12, i32 0, i32 0, !dbg !1131
  %32 = load [1 x i32], ptr %31, align 4, !dbg !1131
  store [1 x i32] %32, ptr %6, align 4
  store ptr @sched_spinlock, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !661, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.declare(metadata ptr %6, metadata !666, metadata !DIExpression()), !dbg !1134
  %33 = load ptr, ptr %7, align 4, !dbg !1135
  %34 = load i32, ptr %6, align 4, !dbg !1136
  store i32 %34, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !672, metadata !DIExpression()), !dbg !1137
  %35 = load i32, ptr %5, align 4, !dbg !1139
  %36 = icmp ne i32 %35, 0, !dbg !1140
  br i1 %36, label %37, label %38, !dbg !1141

37:                                               ; preds = %30
  br label %arch_irq_unlock.exit, !dbg !1142

38:                                               ; preds = %30
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #8, !dbg !1143, !srcloc !686
  br label %arch_irq_unlock.exit, !dbg !1144

arch_irq_unlock.exit:                             ; preds = %37, %38
  %39 = getelementptr inbounds %struct.z_spinlock_key, ptr %11, i32 0, i32 0, !dbg !1145
  store i32 1, ptr %39, align 4, !dbg !1146
  br label %22, !dbg !1126, !llvm.loop !1147

40:                                               ; preds = %27
  ret void, !dbg !1149
}

; Function Attrs: nounwind optsize
define hidden void @z_sched_start(ptr noundef %0) #1 !dbg !1150 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.z_spinlock_key, align 4
  %7 = alloca ptr, align 4
  %8 = alloca %struct.z_spinlock_key, align 4
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  %11 = alloca %struct.z_spinlock_key, align 4
  %12 = alloca i32, align 4
  store ptr %0, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1152, metadata !DIExpression()), !dbg !1154
  call void @llvm.lifetime.start.p0(i64 4, ptr %11) #8, !dbg !1155
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1153, metadata !DIExpression()), !dbg !1156
  store ptr @sched_spinlock, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !603, metadata !DIExpression()), !dbg !1157
  %13 = load ptr, ptr %9, align 4, !dbg !1159
  call void @llvm.dbg.declare(metadata ptr %8, metadata !609, metadata !DIExpression()), !dbg !1160
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #8, !dbg !1161
  call void @llvm.dbg.declare(metadata ptr %4, metadata !620, metadata !DIExpression()), !dbg !1163
  %14 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #8, !dbg !1164, !srcloc !624
  store i32 %14, ptr %4, align 4, !dbg !1164
  %15 = load i32, ptr %4, align 4, !dbg !1165
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #8, !dbg !1166
  store i32 %15, ptr %8, align 4, !dbg !1167
  %16 = load ptr, ptr %9, align 4, !dbg !1168
  store ptr %16, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !629, metadata !DIExpression()), !dbg !1169
  %17 = load ptr, ptr %3, align 4, !dbg !1171
  %18 = load ptr, ptr %9, align 4, !dbg !1172
  store ptr %18, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !638, metadata !DIExpression()), !dbg !1173
  %19 = load ptr, ptr %2, align 4, !dbg !1175
  %20 = load i32, ptr %8, align 4, !dbg !1176
  %21 = getelementptr inbounds %struct.z_spinlock_key, ptr %11, i32 0, i32 0, !dbg !1177
  store i32 %20, ptr %21, align 4, !dbg !1177
  %22 = load ptr, ptr %10, align 4, !dbg !1178
  %23 = call zeroext i1 @z_has_thread_started(ptr noundef %22) #7, !dbg !1180
  br i1 %23, label %24, label %33, !dbg !1181

24:                                               ; preds = %1
  %25 = getelementptr inbounds %struct.z_spinlock_key, ptr %11, i32 0, i32 0, !dbg !1182
  %26 = load [1 x i32], ptr %25, align 4, !dbg !1182
  store [1 x i32] %26, ptr %6, align 4
  store ptr @sched_spinlock, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !661, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.declare(metadata ptr %6, metadata !666, metadata !DIExpression()), !dbg !1186
  %27 = load ptr, ptr %7, align 4, !dbg !1187
  %28 = load i32, ptr %6, align 4, !dbg !1188
  store i32 %28, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !672, metadata !DIExpression()), !dbg !1189
  %29 = load i32, ptr %5, align 4, !dbg !1191
  %30 = icmp ne i32 %29, 0, !dbg !1192
  br i1 %30, label %31, label %32, !dbg !1193

31:                                               ; preds = %24
  br label %arch_irq_unlock.exit, !dbg !1194

32:                                               ; preds = %24
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #8, !dbg !1195, !srcloc !686
  br label %arch_irq_unlock.exit, !dbg !1196

arch_irq_unlock.exit:                             ; preds = %31, %32
  store i32 1, ptr %12, align 4
  br label %38, !dbg !1197

33:                                               ; preds = %1
  %34 = load ptr, ptr %10, align 4, !dbg !1198
  call void @z_mark_thread_as_started(ptr noundef %34) #7, !dbg !1199
  %35 = load ptr, ptr %10, align 4, !dbg !1200
  call void @ready_thread(ptr noundef %35) #7, !dbg !1201
  %36 = getelementptr inbounds %struct.z_spinlock_key, ptr %11, i32 0, i32 0, !dbg !1202
  %37 = load [1 x i32], ptr %36, align 4, !dbg !1202
  call void @z_reschedule(ptr noundef @sched_spinlock, [1 x i32] %37) #7, !dbg !1202
  store i32 0, ptr %12, align 4, !dbg !1203
  br label %38, !dbg !1203

38:                                               ; preds = %33, %arch_irq_unlock.exit
  call void @llvm.lifetime.end.p0(i64 4, ptr %11) #8, !dbg !1203
  %39 = load i32, ptr %12, align 4
  switch i32 %39, label %41 [
    i32 0, label %40
    i32 1, label %40
  ]

40:                                               ; preds = %38, %38
  ret void, !dbg !1203

41:                                               ; preds = %38
  unreachable
}

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @z_has_thread_started(ptr noundef %0) #0 !dbg !1204 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1206, metadata !DIExpression()), !dbg !1207
  %3 = load ptr, ptr %2, align 4, !dbg !1208
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !1209
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 3, !dbg !1210
  %6 = load i8, ptr %5, align 1, !dbg !1210
  %7 = zext i8 %6 to i32, !dbg !1208
  %8 = and i32 %7, 4, !dbg !1211
  %9 = icmp eq i32 %8, 0, !dbg !1212
  ret i1 %9, !dbg !1213
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_mark_thread_as_started(ptr noundef %0) #0 !dbg !1214 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1216, metadata !DIExpression()), !dbg !1217
  %3 = load ptr, ptr %2, align 4, !dbg !1218
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !1219
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 3, !dbg !1220
  %6 = load i8, ptr %5, align 1, !dbg !1221
  %7 = zext i8 %6 to i32, !dbg !1221
  %8 = and i32 %7, -5, !dbg !1221
  %9 = trunc i32 %8 to i8, !dbg !1221
  store i8 %9, ptr %5, align 1, !dbg !1221
  ret void, !dbg !1222
}

; Function Attrs: nounwind optsize
define hidden void @z_reschedule(ptr noundef %0, [1 x i32] %1) #1 !dbg !1223 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 4
  %5 = alloca %struct.z_spinlock_key, align 4
  %6 = alloca ptr, align 4
  %7 = alloca %struct.z_spinlock_key, align 4
  %8 = alloca ptr, align 4
  %9 = alloca %struct.z_spinlock_key, align 4
  %10 = alloca ptr, align 4
  %11 = getelementptr inbounds %struct.z_spinlock_key, ptr %9, i32 0, i32 0
  store [1 x i32] %1, ptr %11, align 4
  store ptr %0, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1225, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1226, metadata !DIExpression()), !dbg !1228
  %12 = getelementptr inbounds %struct.z_spinlock_key, ptr %9, i32 0, i32 0, !dbg !1229
  %13 = load i32, ptr %12, align 4, !dbg !1229
  %14 = call zeroext i1 @resched(i32 noundef %13) #7, !dbg !1231
  br i1 %14, label %15, label %25, !dbg !1232

15:                                               ; preds = %2
  %16 = call zeroext i1 @need_swap() #7, !dbg !1233
  br i1 %16, label %17, label %25, !dbg !1234

17:                                               ; preds = %15
  %18 = load ptr, ptr %10, align 4, !dbg !1235
  %19 = getelementptr inbounds %struct.z_spinlock_key, ptr %9, i32 0, i32 0, !dbg !1237
  %20 = load [1 x i32], ptr %19, align 4, !dbg !1237
  store [1 x i32] %20, ptr %5, align 4
  store ptr %18, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1238, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1244, metadata !DIExpression()), !dbg !1247
  %21 = load ptr, ptr %6, align 4, !dbg !1248
  store ptr %21, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1249, metadata !DIExpression()), !dbg !1252
  %22 = load ptr, ptr %4, align 4, !dbg !1254
  %23 = load i32, ptr %5, align 4, !dbg !1255
  %24 = call i32 @z_swap_irqlock(i32 noundef %23) #7, !dbg !1256
  br label %35, !dbg !1257

25:                                               ; preds = %15, %2
  %26 = load ptr, ptr %10, align 4, !dbg !1258
  %27 = getelementptr inbounds %struct.z_spinlock_key, ptr %9, i32 0, i32 0, !dbg !1260
  %28 = load [1 x i32], ptr %27, align 4, !dbg !1260
  store [1 x i32] %28, ptr %7, align 4
  store ptr %26, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !661, metadata !DIExpression()), !dbg !1261
  call void @llvm.dbg.declare(metadata ptr %7, metadata !666, metadata !DIExpression()), !dbg !1263
  %29 = load ptr, ptr %8, align 4, !dbg !1264
  %30 = load i32, ptr %7, align 4, !dbg !1265
  store i32 %30, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !672, metadata !DIExpression()), !dbg !1266
  %31 = load i32, ptr %3, align 4, !dbg !1268
  %32 = icmp ne i32 %31, 0, !dbg !1269
  br i1 %32, label %33, label %34, !dbg !1270

33:                                               ; preds = %25
  br label %arch_irq_unlock.exit, !dbg !1271

34:                                               ; preds = %25
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #8, !dbg !1272, !srcloc !686
  br label %arch_irq_unlock.exit, !dbg !1273

arch_irq_unlock.exit:                             ; preds = %33, %34
  call void @signal_pending_ipi() #7, !dbg !1274
  br label %35

35:                                               ; preds = %arch_irq_unlock.exit, %17
  ret void, !dbg !1275
}

; Function Attrs: nounwind optsize
define hidden void @z_impl_k_thread_suspend(ptr noundef %0) #1 !dbg !1276 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 4
  %9 = alloca %struct.z_spinlock_key, align 4
  %10 = alloca ptr, align 4
  %11 = alloca %struct.z_spinlock_key, align 4
  %12 = alloca ptr, align 4
  %13 = alloca ptr, align 4
  %14 = alloca %struct.z_spinlock_key, align 4
  %15 = alloca %struct.z_spinlock_key, align 4
  store ptr %0, ptr %13, align 4
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1278, metadata !DIExpression()), !dbg !1282
  br label %16, !dbg !1283

16:                                               ; preds = %1
  br label %17, !dbg !1284

17:                                               ; preds = %16
  %18 = load ptr, ptr %13, align 4, !dbg !1286
  %19 = call i32 @z_abort_thread_timeout(ptr noundef %18) #7, !dbg !1287
  call void @llvm.lifetime.start.p0(i64 4, ptr %14) #8, !dbg !1288
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1279, metadata !DIExpression()), !dbg !1289
  call void @llvm.memset.p0.i32(ptr align 4 %14, i8 0, i32 4, i1 false), !dbg !1289
  call void @llvm.lifetime.start.p0(i64 4, ptr %15) #8, !dbg !1288
  call void @llvm.dbg.declare(metadata ptr %15, metadata !1281, metadata !DIExpression()), !dbg !1290
  store ptr @sched_spinlock, ptr %12, align 4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !603, metadata !DIExpression()), !dbg !1291
  %20 = load ptr, ptr %12, align 4, !dbg !1293
  call void @llvm.dbg.declare(metadata ptr %11, metadata !609, metadata !DIExpression()), !dbg !1294
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #8, !dbg !1295
  call void @llvm.dbg.declare(metadata ptr %6, metadata !620, metadata !DIExpression()), !dbg !1297
  %21 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #8, !dbg !1298, !srcloc !624
  store i32 %21, ptr %6, align 4, !dbg !1298
  %22 = load i32, ptr %6, align 4, !dbg !1299
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #8, !dbg !1300
  store i32 %22, ptr %11, align 4, !dbg !1301
  %23 = load ptr, ptr %12, align 4, !dbg !1302
  store ptr %23, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !629, metadata !DIExpression()), !dbg !1303
  %24 = load ptr, ptr %5, align 4, !dbg !1305
  %25 = load ptr, ptr %12, align 4, !dbg !1306
  store ptr %25, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !638, metadata !DIExpression()), !dbg !1307
  %26 = load ptr, ptr %4, align 4, !dbg !1309
  %27 = load i32, ptr %11, align 4, !dbg !1310
  %28 = getelementptr inbounds %struct.z_spinlock_key, ptr %15, i32 0, i32 0, !dbg !1311
  store i32 %27, ptr %28, align 4, !dbg !1311
  br label %29, !dbg !1288

29:                                               ; preds = %arch_irq_unlock.exit, %17
  %30 = getelementptr inbounds %struct.z_spinlock_key, ptr %14, i32 0, i32 0, !dbg !1312
  %31 = load i32, ptr %30, align 4, !dbg !1312
  %32 = icmp ne i32 %31, 0, !dbg !1314
  %33 = xor i1 %32, true, !dbg !1314
  br i1 %33, label %35, label %34, !dbg !1315

34:                                               ; preds = %29
  call void @llvm.lifetime.end.p0(i64 4, ptr %15) #8, !dbg !1316
  call void @llvm.lifetime.end.p0(i64 4, ptr %14) #8, !dbg !1316
  br label %69

35:                                               ; preds = %29
  %36 = load ptr, ptr %13, align 4, !dbg !1317
  %37 = call zeroext i1 @z_is_thread_queued(ptr noundef %36) #7, !dbg !1320
  br i1 %37, label %38, label %53, !dbg !1321

38:                                               ; preds = %35
  %39 = load ptr, ptr %13, align 4, !dbg !1322
  store ptr %39, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !809, metadata !DIExpression()), !dbg !1324
  %40 = load ptr, ptr %8, align 4, !dbg !1326
  %41 = getelementptr inbounds %struct._thread_base, ptr %40, i32 0, i32 3, !dbg !1327
  %42 = load i8, ptr %41, align 1, !dbg !1328
  %43 = zext i8 %42 to i32, !dbg !1328
  %44 = and i32 %43, -129, !dbg !1328
  %45 = trunc i32 %44 to i8, !dbg !1328
  store i8 %45, ptr %41, align 1, !dbg !1328
  %46 = load ptr, ptr %8, align 4, !dbg !1329
  %47 = call zeroext i1 @should_queue_thread(ptr noundef %46) #7, !dbg !1330
  br i1 %47, label %48, label %dequeue_thread.exit, !dbg !1331

48:                                               ; preds = %38
  %49 = load ptr, ptr %8, align 4, !dbg !1332
  store ptr %49, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !823, metadata !DIExpression()), !dbg !1333
  %50 = load ptr, ptr %3, align 4, !dbg !1335
  store ptr %50, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !829, metadata !DIExpression()), !dbg !1336
  %51 = load ptr, ptr %2, align 4, !dbg !1338
  %52 = load ptr, ptr %3, align 4, !dbg !1339
  call void @z_priq_dumb_remove(ptr noundef getelementptr inbounds (%struct.z_kernel, ptr @_kernel, i32 0, i32 1, i32 1), ptr noundef %52) #7, !dbg !1340
  br label %dequeue_thread.exit, !dbg !1341

dequeue_thread.exit:                              ; preds = %38, %48
  br label %53, !dbg !1342

53:                                               ; preds = %dequeue_thread.exit, %35
  %54 = load ptr, ptr %13, align 4, !dbg !1343
  call void @z_mark_thread_as_suspended(ptr noundef %54) #7, !dbg !1344
  %55 = load ptr, ptr %13, align 4, !dbg !1345
  %56 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !1346
  %57 = icmp eq ptr %55, %56, !dbg !1347
  %58 = zext i1 %57 to i32, !dbg !1347
  call void @update_cache(i32 noundef %58) #7, !dbg !1348
  br label %59, !dbg !1349

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct.z_spinlock_key, ptr %15, i32 0, i32 0, !dbg !1350
  %61 = load [1 x i32], ptr %60, align 4, !dbg !1350
  store [1 x i32] %61, ptr %9, align 4
  store ptr @sched_spinlock, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !661, metadata !DIExpression()), !dbg !1351
  call void @llvm.dbg.declare(metadata ptr %9, metadata !666, metadata !DIExpression()), !dbg !1353
  %62 = load ptr, ptr %10, align 4, !dbg !1354
  %63 = load i32, ptr %9, align 4, !dbg !1355
  store i32 %63, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !672, metadata !DIExpression()), !dbg !1356
  %64 = load i32, ptr %7, align 4, !dbg !1358
  %65 = icmp ne i32 %64, 0, !dbg !1359
  br i1 %65, label %66, label %67, !dbg !1360

66:                                               ; preds = %59
  br label %arch_irq_unlock.exit, !dbg !1361

67:                                               ; preds = %59
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #8, !dbg !1362, !srcloc !686
  br label %arch_irq_unlock.exit, !dbg !1363

arch_irq_unlock.exit:                             ; preds = %66, %67
  %68 = getelementptr inbounds %struct.z_spinlock_key, ptr %14, i32 0, i32 0, !dbg !1364
  store i32 1, ptr %68, align 4, !dbg !1365
  br label %29, !dbg !1316, !llvm.loop !1366

69:                                               ; preds = %34
  %70 = load ptr, ptr %13, align 4, !dbg !1368
  %71 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !1370
  %72 = icmp eq ptr %70, %71, !dbg !1371
  br i1 %72, label %73, label %74, !dbg !1372

73:                                               ; preds = %69
  call void @z_reschedule_unlocked() #7, !dbg !1373
  br label %74, !dbg !1375

74:                                               ; preds = %73, %69
  br label %75, !dbg !1376

75:                                               ; preds = %74
  br label %76, !dbg !1377

76:                                               ; preds = %75
  ret void, !dbg !1379
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_abort_thread_timeout(ptr noundef %0) #0 !dbg !1380 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1382, metadata !DIExpression()), !dbg !1383
  %3 = load ptr, ptr %2, align 4, !dbg !1384
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !1385
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !1386
  %6 = call i32 @z_abort_timeout(ptr noundef %5) #7, !dbg !1387
  ret i32 %6, !dbg !1388
}

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @z_is_thread_queued(ptr noundef %0) #0 !dbg !1389 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1391, metadata !DIExpression()), !dbg !1392
  %3 = load ptr, ptr %2, align 4, !dbg !1393
  %4 = call zeroext i1 @z_is_thread_state_set(ptr noundef %3, i32 noundef 128) #7, !dbg !1394
  ret i1 %4, !dbg !1395
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_mark_thread_as_suspended(ptr noundef %0) #0 !dbg !1396 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1398, metadata !DIExpression()), !dbg !1399
  %3 = load ptr, ptr %2, align 4, !dbg !1400
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !1401
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 3, !dbg !1402
  %6 = load i8, ptr %5, align 1, !dbg !1403
  %7 = zext i8 %6 to i32, !dbg !1403
  %8 = or i32 %7, 16, !dbg !1403
  %9 = trunc i32 %8 to i8, !dbg !1403
  store i8 %9, ptr %5, align 1, !dbg !1403
  br label %10, !dbg !1404

10:                                               ; preds = %1
  br label %11, !dbg !1405

11:                                               ; preds = %10
  ret void, !dbg !1407
}

; Function Attrs: nounwind optsize
define internal void @update_cache(i32 noundef %0) #1 !dbg !1408 {
  %2 = alloca i1, align 1
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 4
  store i32 %0, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1412, metadata !DIExpression()), !dbg !1414
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #8, !dbg !1415
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1413, metadata !DIExpression()), !dbg !1416
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #8, !dbg !1417
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1422, metadata !DIExpression()), !dbg !1424
  %8 = call ptr @z_priq_dumb_best(ptr noundef getelementptr inbounds (%struct.z_kernel, ptr @_kernel, i32 0, i32 1, i32 1)) #7, !dbg !1425
  store ptr %8, ptr %5, align 4, !dbg !1424
  %9 = load ptr, ptr %5, align 4, !dbg !1428
  %10 = icmp ne ptr %9, null, !dbg !1429
  br i1 %10, label %11, label %13, !dbg !1430

11:                                               ; preds = %1
  %12 = load ptr, ptr %5, align 4, !dbg !1431
  br label %next_up.exit, !dbg !1430

13:                                               ; preds = %1
  %14 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 3), align 4, !dbg !1432
  br label %next_up.exit, !dbg !1430

next_up.exit:                                     ; preds = %11, %13
  %15 = phi ptr [ %12, %11 ], [ %14, %13 ], !dbg !1430
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #8, !dbg !1433
  store ptr %15, ptr %7, align 4, !dbg !1416
  %16 = load ptr, ptr %7, align 4, !dbg !1434
  %17 = load i32, ptr %6, align 4, !dbg !1436
  store ptr %16, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1437, metadata !DIExpression()), !dbg !1443
  store i32 %17, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1442, metadata !DIExpression()), !dbg !1445
  %18 = load i32, ptr %4, align 4, !dbg !1446
  %19 = icmp ne i32 %18, 0, !dbg !1448
  br i1 %19, label %20, label %21, !dbg !1449

20:                                               ; preds = %next_up.exit
  store i1 true, ptr %2, align 1, !dbg !1450
  br label %should_preempt.exit, !dbg !1450

21:                                               ; preds = %next_up.exit
  %22 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !1452
  %23 = call zeroext i1 @z_is_thread_prevented_from_running(ptr noundef %22) #7, !dbg !1454
  br i1 %23, label %24, label %25, !dbg !1455

24:                                               ; preds = %21
  store i1 true, ptr %2, align 1, !dbg !1456
  br label %should_preempt.exit, !dbg !1456

25:                                               ; preds = %21
  %26 = load ptr, ptr %3, align 4, !dbg !1458
  %27 = call zeroext i1 @z_is_thread_timeout_active(ptr noundef %26) #7, !dbg !1460
  br i1 %27, label %28, label %29, !dbg !1461

28:                                               ; preds = %25
  store i1 true, ptr %2, align 1, !dbg !1462
  br label %should_preempt.exit, !dbg !1462

29:                                               ; preds = %25
  %30 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !1464
  %31 = call i32 @is_preempt(ptr noundef %30) #7, !dbg !1466
  %32 = icmp ne i32 %31, 0, !dbg !1466
  br i1 %32, label %37, label %33, !dbg !1467

33:                                               ; preds = %29
  %34 = load ptr, ptr %3, align 4, !dbg !1468
  %35 = call i32 @is_metairq(ptr noundef %34) #7, !dbg !1469
  %36 = icmp ne i32 %35, 0, !dbg !1469
  br i1 %36, label %37, label %38, !dbg !1470

37:                                               ; preds = %33, %29
  store i1 true, ptr %2, align 1, !dbg !1471
  br label %should_preempt.exit, !dbg !1471

38:                                               ; preds = %33
  store i1 false, ptr %2, align 1, !dbg !1473
  br label %should_preempt.exit, !dbg !1473

should_preempt.exit:                              ; preds = %20, %24, %28, %37, %38
  %39 = load i1, ptr %2, align 1, !dbg !1474
  br i1 %39, label %40, label %49, !dbg !1475

40:                                               ; preds = %should_preempt.exit
  %41 = load ptr, ptr %7, align 4, !dbg !1476
  %42 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !1479
  %43 = icmp ne ptr %41, %42, !dbg !1480
  br i1 %43, label %44, label %46, !dbg !1481

44:                                               ; preds = %40
  %45 = load ptr, ptr %7, align 4, !dbg !1482
  call void @z_reset_time_slice(ptr noundef %45) #7, !dbg !1484
  br label %46, !dbg !1485

46:                                               ; preds = %44, %40
  %47 = load ptr, ptr %7, align 4, !dbg !1486
  call void @update_metairq_preempt(ptr noundef %47) #7, !dbg !1487
  %48 = load ptr, ptr %7, align 4, !dbg !1488
  store ptr %48, ptr getelementptr inbounds (%struct.z_kernel, ptr @_kernel, i32 0, i32 1), align 4, !dbg !1489
  br label %51, !dbg !1490

49:                                               ; preds = %should_preempt.exit
  %50 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !1491
  store ptr %50, ptr getelementptr inbounds (%struct.z_kernel, ptr @_kernel, i32 0, i32 1), align 4, !dbg !1493
  br label %51

51:                                               ; preds = %49, %46
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #8, !dbg !1494
  ret void, !dbg !1494
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_reschedule_unlocked() #0 !dbg !1495 {
  %1 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %1) #8, !dbg !1496
  call void @llvm.dbg.declare(metadata ptr %1, metadata !620, metadata !DIExpression()), !dbg !1498
  %2 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #8, !dbg !1499, !srcloc !624
  store i32 %2, ptr %1, align 4, !dbg !1499
  %3 = load i32, ptr %1, align 4, !dbg !1500
  call void @llvm.lifetime.end.p0(i64 4, ptr %1) #8, !dbg !1501
  call void @z_reschedule_irqlock(i32 noundef %3) #7, !dbg !1502
  ret void, !dbg !1503
}

; Function Attrs: nounwind optsize
define hidden void @z_impl_k_thread_resume(ptr noundef %0) #1 !dbg !1504 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.z_spinlock_key, align 4
  %7 = alloca ptr, align 4
  %8 = alloca %struct.z_spinlock_key, align 4
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  %11 = alloca %struct.z_spinlock_key, align 4
  %12 = alloca i32, align 4
  store ptr %0, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1506, metadata !DIExpression()), !dbg !1508
  br label %13, !dbg !1509

13:                                               ; preds = %1
  br label %14, !dbg !1510

14:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 4, ptr %11) #8, !dbg !1512
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1507, metadata !DIExpression()), !dbg !1513
  store ptr @sched_spinlock, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !603, metadata !DIExpression()), !dbg !1514
  %15 = load ptr, ptr %9, align 4, !dbg !1516
  call void @llvm.dbg.declare(metadata ptr %8, metadata !609, metadata !DIExpression()), !dbg !1517
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #8, !dbg !1518
  call void @llvm.dbg.declare(metadata ptr %4, metadata !620, metadata !DIExpression()), !dbg !1520
  %16 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #8, !dbg !1521, !srcloc !624
  store i32 %16, ptr %4, align 4, !dbg !1521
  %17 = load i32, ptr %4, align 4, !dbg !1522
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #8, !dbg !1523
  store i32 %17, ptr %8, align 4, !dbg !1524
  %18 = load ptr, ptr %9, align 4, !dbg !1525
  store ptr %18, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !629, metadata !DIExpression()), !dbg !1526
  %19 = load ptr, ptr %3, align 4, !dbg !1528
  %20 = load ptr, ptr %9, align 4, !dbg !1529
  store ptr %20, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !638, metadata !DIExpression()), !dbg !1530
  %21 = load ptr, ptr %2, align 4, !dbg !1532
  %22 = load i32, ptr %8, align 4, !dbg !1533
  %23 = getelementptr inbounds %struct.z_spinlock_key, ptr %11, i32 0, i32 0, !dbg !1534
  store i32 %22, ptr %23, align 4, !dbg !1534
  %24 = load ptr, ptr %10, align 4, !dbg !1535
  %25 = call zeroext i1 @z_is_thread_suspended(ptr noundef %24) #7, !dbg !1537
  br i1 %25, label %35, label %26, !dbg !1538

26:                                               ; preds = %14
  %27 = getelementptr inbounds %struct.z_spinlock_key, ptr %11, i32 0, i32 0, !dbg !1539
  %28 = load [1 x i32], ptr %27, align 4, !dbg !1539
  store [1 x i32] %28, ptr %6, align 4
  store ptr @sched_spinlock, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !661, metadata !DIExpression()), !dbg !1541
  call void @llvm.dbg.declare(metadata ptr %6, metadata !666, metadata !DIExpression()), !dbg !1543
  %29 = load ptr, ptr %7, align 4, !dbg !1544
  %30 = load i32, ptr %6, align 4, !dbg !1545
  store i32 %30, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !672, metadata !DIExpression()), !dbg !1546
  %31 = load i32, ptr %5, align 4, !dbg !1548
  %32 = icmp ne i32 %31, 0, !dbg !1549
  br i1 %32, label %33, label %34, !dbg !1550

33:                                               ; preds = %26
  br label %arch_irq_unlock.exit, !dbg !1551

34:                                               ; preds = %26
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #8, !dbg !1552, !srcloc !686
  br label %arch_irq_unlock.exit, !dbg !1553

arch_irq_unlock.exit:                             ; preds = %33, %34
  store i32 1, ptr %12, align 4
  br label %43, !dbg !1554

35:                                               ; preds = %14
  %36 = load ptr, ptr %10, align 4, !dbg !1555
  call void @z_mark_thread_as_not_suspended(ptr noundef %36) #7, !dbg !1556
  %37 = load ptr, ptr %10, align 4, !dbg !1557
  call void @ready_thread(ptr noundef %37) #7, !dbg !1558
  %38 = getelementptr inbounds %struct.z_spinlock_key, ptr %11, i32 0, i32 0, !dbg !1559
  %39 = load [1 x i32], ptr %38, align 4, !dbg !1559
  call void @z_reschedule(ptr noundef @sched_spinlock, [1 x i32] %39) #7, !dbg !1559
  br label %40, !dbg !1560

40:                                               ; preds = %35
  br label %41, !dbg !1561

41:                                               ; preds = %40
  br label %42, !dbg !1561

42:                                               ; preds = %41
  store i32 0, ptr %12, align 4, !dbg !1563
  br label %43, !dbg !1563

43:                                               ; preds = %42, %arch_irq_unlock.exit
  call void @llvm.lifetime.end.p0(i64 4, ptr %11) #8, !dbg !1563
  %44 = load i32, ptr %12, align 4
  switch i32 %44, label %46 [
    i32 0, label %45
    i32 1, label %45
  ]

45:                                               ; preds = %43, %43
  ret void, !dbg !1563

46:                                               ; preds = %43
  unreachable
}

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @z_is_thread_suspended(ptr noundef %0) #0 !dbg !1564 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1566, metadata !DIExpression()), !dbg !1567
  %3 = load ptr, ptr %2, align 4, !dbg !1568
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !1569
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 3, !dbg !1570
  %6 = load i8, ptr %5, align 1, !dbg !1570
  %7 = zext i8 %6 to i32, !dbg !1568
  %8 = and i32 %7, 16, !dbg !1571
  %9 = icmp ne i32 %8, 0, !dbg !1572
  ret i1 %9, !dbg !1573
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_mark_thread_as_not_suspended(ptr noundef %0) #0 !dbg !1574 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1576, metadata !DIExpression()), !dbg !1577
  %3 = load ptr, ptr %2, align 4, !dbg !1578
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !1579
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 3, !dbg !1580
  %6 = load i8, ptr %5, align 1, !dbg !1581
  %7 = zext i8 %6 to i32, !dbg !1581
  %8 = and i32 %7, -17, !dbg !1581
  %9 = trunc i32 %8 to i8, !dbg !1581
  store i8 %9, ptr %5, align 1, !dbg !1581
  br label %10, !dbg !1582

10:                                               ; preds = %1
  br label %11, !dbg !1583

11:                                               ; preds = %10
  ret void, !dbg !1585
}

; Function Attrs: nounwind optsize
define hidden void @z_pend_thread(ptr noundef %0, ptr noundef %1, [1 x i64] %2) #1 !dbg !1586 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.z_spinlock_key, align 4
  %9 = alloca ptr, align 4
  %10 = alloca %struct.z_spinlock_key, align 4
  %11 = alloca ptr, align 4
  %12 = alloca %struct.k_timeout_t, align 8
  %13 = alloca ptr, align 4
  %14 = alloca ptr, align 4
  %15 = alloca %struct.z_spinlock_key, align 4
  %16 = alloca %struct.z_spinlock_key, align 4
  %17 = getelementptr inbounds %struct.k_timeout_t, ptr %12, i32 0, i32 0
  store [1 x i64] %2, ptr %17, align 8
  store ptr %0, ptr %13, align 4
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1590, metadata !DIExpression()), !dbg !1596
  store ptr %1, ptr %14, align 4
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1591, metadata !DIExpression()), !dbg !1597
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1592, metadata !DIExpression()), !dbg !1598
  call void @llvm.lifetime.start.p0(i64 4, ptr %15) #8, !dbg !1599
  call void @llvm.dbg.declare(metadata ptr %15, metadata !1593, metadata !DIExpression()), !dbg !1600
  call void @llvm.memset.p0.i32(ptr align 4 %15, i8 0, i32 4, i1 false), !dbg !1600
  call void @llvm.lifetime.start.p0(i64 4, ptr %16) #8, !dbg !1599
  call void @llvm.dbg.declare(metadata ptr %16, metadata !1595, metadata !DIExpression()), !dbg !1601
  store ptr @sched_spinlock, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !603, metadata !DIExpression()), !dbg !1602
  %18 = load ptr, ptr %11, align 4, !dbg !1604
  call void @llvm.dbg.declare(metadata ptr %10, metadata !609, metadata !DIExpression()), !dbg !1605
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #8, !dbg !1606
  call void @llvm.dbg.declare(metadata ptr %6, metadata !620, metadata !DIExpression()), !dbg !1608
  %19 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #8, !dbg !1609, !srcloc !624
  store i32 %19, ptr %6, align 4, !dbg !1609
  %20 = load i32, ptr %6, align 4, !dbg !1610
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #8, !dbg !1611
  store i32 %20, ptr %10, align 4, !dbg !1612
  %21 = load ptr, ptr %11, align 4, !dbg !1613
  store ptr %21, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !629, metadata !DIExpression()), !dbg !1614
  %22 = load ptr, ptr %5, align 4, !dbg !1616
  %23 = load ptr, ptr %11, align 4, !dbg !1617
  store ptr %23, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !638, metadata !DIExpression()), !dbg !1618
  %24 = load ptr, ptr %4, align 4, !dbg !1620
  %25 = load i32, ptr %10, align 4, !dbg !1621
  %26 = getelementptr inbounds %struct.z_spinlock_key, ptr %16, i32 0, i32 0, !dbg !1622
  store i32 %25, ptr %26, align 4, !dbg !1622
  br label %27, !dbg !1599

27:                                               ; preds = %arch_irq_unlock.exit, %3
  %28 = getelementptr inbounds %struct.z_spinlock_key, ptr %15, i32 0, i32 0, !dbg !1623
  %29 = load i32, ptr %28, align 4, !dbg !1623
  %30 = icmp ne i32 %29, 0, !dbg !1625
  %31 = xor i1 %30, true, !dbg !1625
  br i1 %31, label %33, label %32, !dbg !1626

32:                                               ; preds = %27
  call void @llvm.lifetime.end.p0(i64 4, ptr %16) #8, !dbg !1627
  call void @llvm.lifetime.end.p0(i64 4, ptr %15) #8, !dbg !1627
  br label %48

33:                                               ; preds = %27
  %34 = load ptr, ptr %13, align 4, !dbg !1628
  %35 = load ptr, ptr %14, align 4, !dbg !1630
  %36 = getelementptr inbounds %struct.k_timeout_t, ptr %12, i32 0, i32 0, !dbg !1631
  %37 = load [1 x i64], ptr %36, align 8, !dbg !1631
  call void @pend_locked(ptr noundef %34, ptr noundef %35, [1 x i64] %37) #7, !dbg !1631
  br label %38, !dbg !1632

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.z_spinlock_key, ptr %16, i32 0, i32 0, !dbg !1633
  %40 = load [1 x i32], ptr %39, align 4, !dbg !1633
  store [1 x i32] %40, ptr %8, align 4
  store ptr @sched_spinlock, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !661, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.declare(metadata ptr %8, metadata !666, metadata !DIExpression()), !dbg !1636
  %41 = load ptr, ptr %9, align 4, !dbg !1637
  %42 = load i32, ptr %8, align 4, !dbg !1638
  store i32 %42, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !672, metadata !DIExpression()), !dbg !1639
  %43 = load i32, ptr %7, align 4, !dbg !1641
  %44 = icmp ne i32 %43, 0, !dbg !1642
  br i1 %44, label %45, label %46, !dbg !1643

45:                                               ; preds = %38
  br label %arch_irq_unlock.exit, !dbg !1644

46:                                               ; preds = %38
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #8, !dbg !1645, !srcloc !686
  br label %arch_irq_unlock.exit, !dbg !1646

arch_irq_unlock.exit:                             ; preds = %45, %46
  %47 = getelementptr inbounds %struct.z_spinlock_key, ptr %15, i32 0, i32 0, !dbg !1647
  store i32 1, ptr %47, align 4, !dbg !1648
  br label %27, !dbg !1627, !llvm.loop !1649

48:                                               ; preds = %32
  ret void, !dbg !1651
}

; Function Attrs: nounwind optsize
define internal void @pend_locked(ptr noundef %0, ptr noundef %1, [1 x i64] %2) #1 !dbg !1652 {
  %4 = alloca %struct.k_timeout_t, align 8
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = getelementptr inbounds %struct.k_timeout_t, ptr %4, i32 0, i32 0
  store [1 x i64] %2, ptr %7, align 8
  store ptr %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1654, metadata !DIExpression()), !dbg !1657
  store ptr %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1655, metadata !DIExpression()), !dbg !1658
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1656, metadata !DIExpression()), !dbg !1659
  %8 = load ptr, ptr %5, align 4, !dbg !1660
  %9 = load ptr, ptr %6, align 4, !dbg !1661
  call void @add_to_waitq_locked(ptr noundef %8, ptr noundef %9) #7, !dbg !1662
  %10 = load ptr, ptr %5, align 4, !dbg !1663
  %11 = getelementptr inbounds %struct.k_timeout_t, ptr %4, i32 0, i32 0, !dbg !1664
  %12 = load [1 x i64], ptr %11, align 8, !dbg !1664
  call void @add_thread_timeout(ptr noundef %10, [1 x i64] %12) #7, !dbg !1664
  ret void, !dbg !1665
}

; Function Attrs: alwaysinline nounwind optsize
define hidden void @z_unpend_thread_no_timeout(ptr noundef %0) #6 !dbg !1666 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.z_spinlock_key, align 4
  %7 = alloca ptr, align 4
  %8 = alloca %struct.z_spinlock_key, align 4
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  %11 = alloca %struct.z_spinlock_key, align 4
  %12 = alloca %struct.z_spinlock_key, align 4
  store ptr %0, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1668, metadata !DIExpression()), !dbg !1672
  call void @llvm.lifetime.start.p0(i64 4, ptr %11) #8, !dbg !1673
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1669, metadata !DIExpression()), !dbg !1674
  call void @llvm.memset.p0.i32(ptr align 4 %11, i8 0, i32 4, i1 false), !dbg !1674
  call void @llvm.lifetime.start.p0(i64 4, ptr %12) #8, !dbg !1673
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1671, metadata !DIExpression()), !dbg !1675
  store ptr @sched_spinlock, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !603, metadata !DIExpression()), !dbg !1676
  %13 = load ptr, ptr %9, align 4, !dbg !1678
  call void @llvm.dbg.declare(metadata ptr %8, metadata !609, metadata !DIExpression()), !dbg !1679
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #8, !dbg !1680
  call void @llvm.dbg.declare(metadata ptr %4, metadata !620, metadata !DIExpression()), !dbg !1682
  %14 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #8, !dbg !1683, !srcloc !624
  store i32 %14, ptr %4, align 4, !dbg !1683
  %15 = load i32, ptr %4, align 4, !dbg !1684
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #8, !dbg !1685
  store i32 %15, ptr %8, align 4, !dbg !1686
  %16 = load ptr, ptr %9, align 4, !dbg !1687
  store ptr %16, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !629, metadata !DIExpression()), !dbg !1688
  %17 = load ptr, ptr %3, align 4, !dbg !1690
  %18 = load ptr, ptr %9, align 4, !dbg !1691
  store ptr %18, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !638, metadata !DIExpression()), !dbg !1692
  %19 = load ptr, ptr %2, align 4, !dbg !1694
  %20 = load i32, ptr %8, align 4, !dbg !1695
  %21 = getelementptr inbounds %struct.z_spinlock_key, ptr %12, i32 0, i32 0, !dbg !1696
  store i32 %20, ptr %21, align 4, !dbg !1696
  br label %22, !dbg !1673

22:                                               ; preds = %arch_irq_unlock.exit, %1
  %23 = getelementptr inbounds %struct.z_spinlock_key, ptr %11, i32 0, i32 0, !dbg !1697
  %24 = load i32, ptr %23, align 4, !dbg !1697
  %25 = icmp ne i32 %24, 0, !dbg !1699
  %26 = xor i1 %25, true, !dbg !1699
  br i1 %26, label %28, label %27, !dbg !1700

27:                                               ; preds = %22
  call void @llvm.lifetime.end.p0(i64 4, ptr %12) #8, !dbg !1701
  call void @llvm.lifetime.end.p0(i64 4, ptr %11) #8, !dbg !1701
  br label %47

28:                                               ; preds = %22
  %29 = load ptr, ptr %10, align 4, !dbg !1702
  %30 = getelementptr inbounds %struct.k_thread, ptr %29, i32 0, i32 0, !dbg !1705
  %31 = getelementptr inbounds %struct._thread_base, ptr %30, i32 0, i32 1, !dbg !1706
  %32 = load ptr, ptr %31, align 8, !dbg !1706
  %33 = icmp ne ptr %32, null, !dbg !1707
  br i1 %33, label %34, label %36, !dbg !1708

34:                                               ; preds = %28
  %35 = load ptr, ptr %10, align 4, !dbg !1709
  call void @unpend_thread_no_timeout(ptr noundef %35) #7, !dbg !1711
  br label %36, !dbg !1712

36:                                               ; preds = %34, %28
  br label %37, !dbg !1713

37:                                               ; preds = %36
  %38 = getelementptr inbounds %struct.z_spinlock_key, ptr %12, i32 0, i32 0, !dbg !1714
  %39 = load [1 x i32], ptr %38, align 4, !dbg !1714
  store [1 x i32] %39, ptr %6, align 4
  store ptr @sched_spinlock, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !661, metadata !DIExpression()), !dbg !1715
  call void @llvm.dbg.declare(metadata ptr %6, metadata !666, metadata !DIExpression()), !dbg !1717
  %40 = load ptr, ptr %7, align 4, !dbg !1718
  %41 = load i32, ptr %6, align 4, !dbg !1719
  store i32 %41, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !672, metadata !DIExpression()), !dbg !1720
  %42 = load i32, ptr %5, align 4, !dbg !1722
  %43 = icmp ne i32 %42, 0, !dbg !1723
  br i1 %43, label %44, label %45, !dbg !1724

44:                                               ; preds = %37
  br label %arch_irq_unlock.exit, !dbg !1725

45:                                               ; preds = %37
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #8, !dbg !1726, !srcloc !686
  br label %arch_irq_unlock.exit, !dbg !1727

arch_irq_unlock.exit:                             ; preds = %44, %45
  %46 = getelementptr inbounds %struct.z_spinlock_key, ptr %11, i32 0, i32 0, !dbg !1728
  store i32 1, ptr %46, align 4, !dbg !1729
  br label %22, !dbg !1701, !llvm.loop !1730

47:                                               ; preds = %27
  ret void, !dbg !1732
}

; Function Attrs: inlinehint nounwind optsize
define internal void @unpend_thread_no_timeout(ptr noundef %0) #0 !dbg !1733 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1735, metadata !DIExpression()), !dbg !1736
  %3 = load ptr, ptr %2, align 4, !dbg !1737
  %4 = call ptr @pended_on_thread(ptr noundef %3) #7, !dbg !1738
  %5 = getelementptr inbounds %struct._wait_q_t, ptr %4, i32 0, i32 0, !dbg !1739
  %6 = load ptr, ptr %2, align 4, !dbg !1740
  call void @z_priq_dumb_remove(ptr noundef %5, ptr noundef %6) #7, !dbg !1741
  %7 = load ptr, ptr %2, align 4, !dbg !1742
  call void @z_mark_thread_as_not_pending(ptr noundef %7) #7, !dbg !1743
  %8 = load ptr, ptr %2, align 4, !dbg !1744
  %9 = getelementptr inbounds %struct.k_thread, ptr %8, i32 0, i32 0, !dbg !1745
  %10 = getelementptr inbounds %struct._thread_base, ptr %9, i32 0, i32 1, !dbg !1746
  store ptr null, ptr %10, align 8, !dbg !1747
  ret void, !dbg !1748
}

; Function Attrs: nounwind optsize
define hidden void @z_sched_wake_thread(ptr noundef %0, i1 noundef zeroext %1) #1 !dbg !1749 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.z_spinlock_key, align 4
  %8 = alloca ptr, align 4
  %9 = alloca %struct.z_spinlock_key, align 4
  %10 = alloca ptr, align 4
  %11 = alloca ptr, align 4
  %12 = alloca i8, align 1
  %13 = alloca %struct.z_spinlock_key, align 4
  %14 = alloca %struct.z_spinlock_key, align 4
  %15 = alloca i8, align 1
  store ptr %0, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1753, metadata !DIExpression()), !dbg !1761
  %16 = zext i1 %1 to i8
  store i8 %16, ptr %12, align 1
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1754, metadata !DIExpression()), !dbg !1762
  call void @llvm.lifetime.start.p0(i64 4, ptr %13) #8, !dbg !1763
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1755, metadata !DIExpression()), !dbg !1764
  call void @llvm.memset.p0.i32(ptr align 4 %13, i8 0, i32 4, i1 false), !dbg !1764
  call void @llvm.lifetime.start.p0(i64 4, ptr %14) #8, !dbg !1763
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1757, metadata !DIExpression()), !dbg !1765
  store ptr @sched_spinlock, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !603, metadata !DIExpression()), !dbg !1766
  %17 = load ptr, ptr %10, align 4, !dbg !1768
  call void @llvm.dbg.declare(metadata ptr %9, metadata !609, metadata !DIExpression()), !dbg !1769
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #8, !dbg !1770
  call void @llvm.dbg.declare(metadata ptr %5, metadata !620, metadata !DIExpression()), !dbg !1772
  %18 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #8, !dbg !1773, !srcloc !624
  store i32 %18, ptr %5, align 4, !dbg !1773
  %19 = load i32, ptr %5, align 4, !dbg !1774
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #8, !dbg !1775
  store i32 %19, ptr %9, align 4, !dbg !1776
  %20 = load ptr, ptr %10, align 4, !dbg !1777
  store ptr %20, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !629, metadata !DIExpression()), !dbg !1778
  %21 = load ptr, ptr %4, align 4, !dbg !1780
  %22 = load ptr, ptr %10, align 4, !dbg !1781
  store ptr %22, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !638, metadata !DIExpression()), !dbg !1782
  %23 = load ptr, ptr %3, align 4, !dbg !1784
  %24 = load i32, ptr %9, align 4, !dbg !1785
  %25 = getelementptr inbounds %struct.z_spinlock_key, ptr %14, i32 0, i32 0, !dbg !1786
  store i32 %24, ptr %25, align 4, !dbg !1786
  br label %26, !dbg !1763

26:                                               ; preds = %arch_irq_unlock.exit, %2
  %27 = getelementptr inbounds %struct.z_spinlock_key, ptr %13, i32 0, i32 0, !dbg !1787
  %28 = load i32, ptr %27, align 4, !dbg !1787
  %29 = icmp ne i32 %28, 0, !dbg !1788
  %30 = xor i1 %29, true, !dbg !1788
  br i1 %30, label %32, label %31, !dbg !1789

31:                                               ; preds = %26
  call void @llvm.lifetime.end.p0(i64 4, ptr %14) #8, !dbg !1790
  call void @llvm.lifetime.end.p0(i64 4, ptr %13) #8, !dbg !1790
  br label %80

32:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(i64 1, ptr %15) #8, !dbg !1791
  call void @llvm.dbg.declare(metadata ptr %15, metadata !1758, metadata !DIExpression()), !dbg !1792
  %33 = load ptr, ptr %11, align 4, !dbg !1793
  %34 = getelementptr inbounds %struct.k_thread, ptr %33, i32 0, i32 0, !dbg !1794
  %35 = getelementptr inbounds %struct._thread_base, ptr %34, i32 0, i32 3, !dbg !1795
  %36 = load i8, ptr %35, align 1, !dbg !1795
  %37 = zext i8 %36 to i32, !dbg !1793
  %38 = and i32 %37, 8, !dbg !1796
  %39 = icmp ne i32 %38, 0, !dbg !1796
  br i1 %39, label %48, label %40, !dbg !1797

40:                                               ; preds = %32
  %41 = load ptr, ptr %11, align 4, !dbg !1798
  %42 = getelementptr inbounds %struct.k_thread, ptr %41, i32 0, i32 0, !dbg !1799
  %43 = getelementptr inbounds %struct._thread_base, ptr %42, i32 0, i32 3, !dbg !1800
  %44 = load i8, ptr %43, align 1, !dbg !1800
  %45 = zext i8 %44 to i32, !dbg !1798
  %46 = and i32 %45, 32, !dbg !1801
  %47 = icmp ne i32 %46, 0, !dbg !1797
  br label %48, !dbg !1797

48:                                               ; preds = %40, %32
  %49 = phi i1 [ true, %32 ], [ %47, %40 ]
  %50 = zext i1 %49 to i8, !dbg !1792
  store i8 %50, ptr %15, align 1, !dbg !1792
  %51 = load i8, ptr %15, align 1, !dbg !1802, !range !548, !noundef !213
  %52 = trunc i8 %51 to i1, !dbg !1802
  br i1 %52, label %69, label %53, !dbg !1804

53:                                               ; preds = %48
  %54 = load ptr, ptr %11, align 4, !dbg !1805
  %55 = getelementptr inbounds %struct.k_thread, ptr %54, i32 0, i32 0, !dbg !1808
  %56 = getelementptr inbounds %struct._thread_base, ptr %55, i32 0, i32 1, !dbg !1809
  %57 = load ptr, ptr %56, align 8, !dbg !1809
  %58 = icmp ne ptr %57, null, !dbg !1810
  br i1 %58, label %59, label %61, !dbg !1811

59:                                               ; preds = %53
  %60 = load ptr, ptr %11, align 4, !dbg !1812
  call void @unpend_thread_no_timeout(ptr noundef %60) #7, !dbg !1814
  br label %61, !dbg !1815

61:                                               ; preds = %59, %53
  %62 = load ptr, ptr %11, align 4, !dbg !1816
  call void @z_mark_thread_as_started(ptr noundef %62) #7, !dbg !1817
  %63 = load i8, ptr %12, align 1, !dbg !1818, !range !548, !noundef !213
  %64 = trunc i8 %63 to i1, !dbg !1818
  br i1 %64, label %65, label %67, !dbg !1820

65:                                               ; preds = %61
  %66 = load ptr, ptr %11, align 4, !dbg !1821
  call void @z_mark_thread_as_not_suspended(ptr noundef %66) #7, !dbg !1823
  br label %67, !dbg !1824

67:                                               ; preds = %65, %61
  %68 = load ptr, ptr %11, align 4, !dbg !1825
  call void @ready_thread(ptr noundef %68) #7, !dbg !1826
  br label %69, !dbg !1827

69:                                               ; preds = %67, %48
  call void @llvm.lifetime.end.p0(i64 1, ptr %15) #8, !dbg !1828
  br label %70, !dbg !1829

70:                                               ; preds = %69
  %71 = getelementptr inbounds %struct.z_spinlock_key, ptr %14, i32 0, i32 0, !dbg !1830
  %72 = load [1 x i32], ptr %71, align 4, !dbg !1830
  store [1 x i32] %72, ptr %7, align 4
  store ptr @sched_spinlock, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !661, metadata !DIExpression()), !dbg !1831
  call void @llvm.dbg.declare(metadata ptr %7, metadata !666, metadata !DIExpression()), !dbg !1833
  %73 = load ptr, ptr %8, align 4, !dbg !1834
  %74 = load i32, ptr %7, align 4, !dbg !1835
  store i32 %74, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !672, metadata !DIExpression()), !dbg !1836
  %75 = load i32, ptr %6, align 4, !dbg !1838
  %76 = icmp ne i32 %75, 0, !dbg !1839
  br i1 %76, label %77, label %78, !dbg !1840

77:                                               ; preds = %70
  br label %arch_irq_unlock.exit, !dbg !1841

78:                                               ; preds = %70
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #8, !dbg !1842, !srcloc !686
  br label %arch_irq_unlock.exit, !dbg !1843

arch_irq_unlock.exit:                             ; preds = %77, %78
  %79 = getelementptr inbounds %struct.z_spinlock_key, ptr %13, i32 0, i32 0, !dbg !1844
  store i32 1, ptr %79, align 4, !dbg !1845
  br label %26, !dbg !1790, !llvm.loop !1846

80:                                               ; preds = %31
  ret void, !dbg !1848
}

; Function Attrs: nounwind optsize
define hidden void @z_thread_timeout(ptr noundef %0) #1 !dbg !1849 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1851, metadata !DIExpression()), !dbg !1853
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #8, !dbg !1854
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1852, metadata !DIExpression()), !dbg !1855
  %5 = load ptr, ptr %2, align 4, !dbg !1856
  %6 = getelementptr inbounds i8, ptr %5, i32 -24, !dbg !1858
  store ptr %6, ptr %4, align 4, !dbg !1859
  %7 = load ptr, ptr %4, align 4, !dbg !1860
  store ptr %7, ptr %3, align 4, !dbg !1855
  %8 = load ptr, ptr %3, align 4, !dbg !1861
  call void @z_sched_wake_thread(ptr noundef %8, i1 noundef zeroext true) #7, !dbg !1862
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #8, !dbg !1863
  ret void, !dbg !1863
}

; Function Attrs: nounwind optsize
define hidden i32 @z_pend_curr_irqlock(i32 noundef %0, ptr noundef %1, [1 x i64] %2) #1 !dbg !1864 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.z_spinlock_key, align 4
  %9 = alloca ptr, align 4
  %10 = alloca %struct.z_spinlock_key, align 4
  %11 = alloca ptr, align 4
  %12 = alloca %struct.k_timeout_t, align 8
  %13 = alloca i32, align 4
  %14 = alloca ptr, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.z_spinlock_key, align 4
  %17 = alloca %struct.z_spinlock_key, align 4
  %18 = getelementptr inbounds %struct.k_timeout_t, ptr %12, i32 0, i32 0
  store [1 x i64] %2, ptr %18, align 8
  store i32 %0, ptr %13, align 4
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1868, metadata !DIExpression()), !dbg !1875
  store ptr %1, ptr %14, align 4
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1869, metadata !DIExpression()), !dbg !1876
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1870, metadata !DIExpression()), !dbg !1877
  %19 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !1878
  %20 = load ptr, ptr %14, align 4, !dbg !1879
  %21 = getelementptr inbounds %struct.k_timeout_t, ptr %12, i32 0, i32 0, !dbg !1880
  %22 = load [1 x i64], ptr %21, align 8, !dbg !1880
  call void @pend_locked(ptr noundef %19, ptr noundef %20, [1 x i64] %22) #7, !dbg !1880
  %23 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !1881
  store ptr %23, ptr @pending_current, align 4, !dbg !1882
  call void @llvm.lifetime.start.p0(i64 4, ptr %15) #8, !dbg !1883
  call void @llvm.dbg.declare(metadata ptr %15, metadata !1871, metadata !DIExpression()), !dbg !1884
  %24 = load i32, ptr %13, align 4, !dbg !1885
  %25 = call i32 @z_swap_irqlock(i32 noundef %24) #7, !dbg !1886
  store i32 %25, ptr %15, align 4, !dbg !1884
  call void @llvm.lifetime.start.p0(i64 4, ptr %16) #8, !dbg !1887
  call void @llvm.dbg.declare(metadata ptr %16, metadata !1872, metadata !DIExpression()), !dbg !1888
  call void @llvm.memset.p0.i32(ptr align 4 %16, i8 0, i32 4, i1 false), !dbg !1888
  call void @llvm.lifetime.start.p0(i64 4, ptr %17) #8, !dbg !1887
  call void @llvm.dbg.declare(metadata ptr %17, metadata !1874, metadata !DIExpression()), !dbg !1889
  store ptr @sched_spinlock, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !603, metadata !DIExpression()), !dbg !1890
  %26 = load ptr, ptr %11, align 4, !dbg !1892
  call void @llvm.dbg.declare(metadata ptr %10, metadata !609, metadata !DIExpression()), !dbg !1893
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #8, !dbg !1894
  call void @llvm.dbg.declare(metadata ptr %6, metadata !620, metadata !DIExpression()), !dbg !1896
  %27 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #8, !dbg !1897, !srcloc !624
  store i32 %27, ptr %6, align 4, !dbg !1897
  %28 = load i32, ptr %6, align 4, !dbg !1898
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #8, !dbg !1899
  store i32 %28, ptr %10, align 4, !dbg !1900
  %29 = load ptr, ptr %11, align 4, !dbg !1901
  store ptr %29, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !629, metadata !DIExpression()), !dbg !1902
  %30 = load ptr, ptr %5, align 4, !dbg !1904
  %31 = load ptr, ptr %11, align 4, !dbg !1905
  store ptr %31, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !638, metadata !DIExpression()), !dbg !1906
  %32 = load ptr, ptr %4, align 4, !dbg !1908
  %33 = load i32, ptr %10, align 4, !dbg !1909
  %34 = getelementptr inbounds %struct.z_spinlock_key, ptr %17, i32 0, i32 0, !dbg !1910
  store i32 %33, ptr %34, align 4, !dbg !1910
  br label %35, !dbg !1887

35:                                               ; preds = %arch_irq_unlock.exit, %3
  %36 = getelementptr inbounds %struct.z_spinlock_key, ptr %16, i32 0, i32 0, !dbg !1911
  %37 = load i32, ptr %36, align 4, !dbg !1911
  %38 = icmp ne i32 %37, 0, !dbg !1913
  %39 = xor i1 %38, true, !dbg !1913
  br i1 %39, label %41, label %40, !dbg !1914

40:                                               ; preds = %35
  call void @llvm.lifetime.end.p0(i64 4, ptr %17) #8, !dbg !1915
  call void @llvm.lifetime.end.p0(i64 4, ptr %16) #8, !dbg !1915
  br label %57

41:                                               ; preds = %35
  %42 = load ptr, ptr @pending_current, align 4, !dbg !1916
  %43 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !1919
  %44 = icmp eq ptr %42, %43, !dbg !1920
  br i1 %44, label %45, label %46, !dbg !1921

45:                                               ; preds = %41
  store ptr null, ptr @pending_current, align 4, !dbg !1922
  br label %46, !dbg !1924

46:                                               ; preds = %45, %41
  br label %47, !dbg !1925

47:                                               ; preds = %46
  %48 = getelementptr inbounds %struct.z_spinlock_key, ptr %17, i32 0, i32 0, !dbg !1926
  %49 = load [1 x i32], ptr %48, align 4, !dbg !1926
  store [1 x i32] %49, ptr %8, align 4
  store ptr @sched_spinlock, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !661, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.declare(metadata ptr %8, metadata !666, metadata !DIExpression()), !dbg !1929
  %50 = load ptr, ptr %9, align 4, !dbg !1930
  %51 = load i32, ptr %8, align 4, !dbg !1931
  store i32 %51, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !672, metadata !DIExpression()), !dbg !1932
  %52 = load i32, ptr %7, align 4, !dbg !1934
  %53 = icmp ne i32 %52, 0, !dbg !1935
  br i1 %53, label %54, label %55, !dbg !1936

54:                                               ; preds = %47
  br label %arch_irq_unlock.exit, !dbg !1937

55:                                               ; preds = %47
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #8, !dbg !1938, !srcloc !686
  br label %arch_irq_unlock.exit, !dbg !1939

arch_irq_unlock.exit:                             ; preds = %54, %55
  %56 = getelementptr inbounds %struct.z_spinlock_key, ptr %16, i32 0, i32 0, !dbg !1940
  store i32 1, ptr %56, align 4, !dbg !1941
  br label %35, !dbg !1915, !llvm.loop !1942

57:                                               ; preds = %40
  %58 = load i32, ptr %15, align 4, !dbg !1944
  call void @llvm.lifetime.end.p0(i64 4, ptr %15) #8, !dbg !1945
  ret i32 %58, !dbg !1946
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_swap_irqlock(i32 noundef %0) #0 !dbg !1947 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1951, metadata !DIExpression()), !dbg !1953
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #8, !dbg !1954
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1952, metadata !DIExpression()), !dbg !1955
  %4 = load i32, ptr %2, align 4, !dbg !1956
  %5 = call i32 @arch_swap(i32 noundef %4) #7, !dbg !1957
  store i32 %5, ptr %3, align 4, !dbg !1958
  %6 = load i32, ptr %3, align 4, !dbg !1959
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #8, !dbg !1960
  ret i32 %6, !dbg !1961
}

; Function Attrs: nounwind optsize
define hidden i32 @z_pend_curr(ptr noundef %0, [1 x i32] %1, ptr noundef %2, [1 x i64] %3) #1 !dbg !1962 {
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 4
  %9 = alloca %struct.z_spinlock_key, align 4
  %10 = alloca ptr, align 4
  %11 = alloca ptr, align 4
  %12 = alloca %struct.z_spinlock_key, align 4
  %13 = alloca ptr, align 4
  %14 = alloca %struct.z_spinlock_key, align 4
  %15 = alloca %struct.k_timeout_t, align 8
  %16 = alloca ptr, align 4
  %17 = alloca ptr, align 4
  %18 = alloca %struct.z_spinlock_key, align 4
  %19 = getelementptr inbounds %struct.z_spinlock_key, ptr %14, i32 0, i32 0
  store [1 x i32] %1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.k_timeout_t, ptr %15, i32 0, i32 0
  store [1 x i64] %3, ptr %20, align 8
  store ptr %0, ptr %16, align 4
  call void @llvm.dbg.declare(metadata ptr %16, metadata !1966, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1967, metadata !DIExpression()), !dbg !1971
  store ptr %2, ptr %17, align 4
  call void @llvm.dbg.declare(metadata ptr %17, metadata !1968, metadata !DIExpression()), !dbg !1972
  call void @llvm.dbg.declare(metadata ptr %15, metadata !1969, metadata !DIExpression()), !dbg !1973
  %21 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !1974
  store ptr %21, ptr @pending_current, align 4, !dbg !1975
  store ptr @sched_spinlock, ptr %13, align 4
  call void @llvm.dbg.declare(metadata ptr %13, metadata !603, metadata !DIExpression()), !dbg !1976
  %22 = load ptr, ptr %13, align 4, !dbg !1978
  call void @llvm.dbg.declare(metadata ptr %12, metadata !609, metadata !DIExpression()), !dbg !1979
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #8, !dbg !1980
  call void @llvm.dbg.declare(metadata ptr %7, metadata !620, metadata !DIExpression()), !dbg !1982
  %23 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #8, !dbg !1983, !srcloc !624
  store i32 %23, ptr %7, align 4, !dbg !1983
  %24 = load i32, ptr %7, align 4, !dbg !1984
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #8, !dbg !1985
  store i32 %24, ptr %12, align 4, !dbg !1986
  %25 = load ptr, ptr %13, align 4, !dbg !1987
  store ptr %25, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !629, metadata !DIExpression()), !dbg !1988
  %26 = load ptr, ptr %6, align 4, !dbg !1990
  %27 = load ptr, ptr %13, align 4, !dbg !1991
  store ptr %27, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !638, metadata !DIExpression()), !dbg !1992
  %28 = load ptr, ptr %5, align 4, !dbg !1994
  %29 = load i32, ptr %12, align 4, !dbg !1995
  %30 = getelementptr inbounds %struct.z_spinlock_key, ptr %18, i32 0, i32 0, !dbg !1996
  store i32 %29, ptr %30, align 4, !dbg !1996
  %31 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !1997
  %32 = load ptr, ptr %17, align 4, !dbg !1998
  %33 = getelementptr inbounds %struct.k_timeout_t, ptr %15, i32 0, i32 0, !dbg !1999
  %34 = load [1 x i64], ptr %33, align 8, !dbg !1999
  call void @pend_locked(ptr noundef %31, ptr noundef %32, [1 x i64] %34) #7, !dbg !1999
  %35 = load ptr, ptr %16, align 4, !dbg !2000
  store ptr %35, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1249, metadata !DIExpression()), !dbg !2001
  %36 = load ptr, ptr %11, align 4, !dbg !2003
  %37 = getelementptr inbounds %struct.z_spinlock_key, ptr %14, i32 0, i32 0, !dbg !2004
  %38 = load [1 x i32], ptr %37, align 4, !dbg !2004
  store [1 x i32] %38, ptr %9, align 4
  store ptr @sched_spinlock, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1238, metadata !DIExpression()), !dbg !2005
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1244, metadata !DIExpression()), !dbg !2007
  %39 = load ptr, ptr %10, align 4, !dbg !2008
  store ptr %39, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1249, metadata !DIExpression()), !dbg !2009
  %40 = load ptr, ptr %8, align 4, !dbg !2011
  %41 = load i32, ptr %9, align 4, !dbg !2012
  %42 = call i32 @z_swap_irqlock(i32 noundef %41) #7, !dbg !2013
  ret i32 %42, !dbg !2014
}

; Function Attrs: nounwind optsize
define hidden ptr @z_unpend1_no_timeout(ptr noundef %0) #1 !dbg !2015 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.z_spinlock_key, align 4
  %7 = alloca ptr, align 4
  %8 = alloca %struct.z_spinlock_key, align 4
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  %11 = alloca ptr, align 4
  %12 = alloca %struct.z_spinlock_key, align 4
  %13 = alloca %struct.z_spinlock_key, align 4
  store ptr %0, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2019, metadata !DIExpression()), !dbg !2024
  call void @llvm.lifetime.start.p0(i64 4, ptr %11) #8, !dbg !2025
  call void @llvm.dbg.declare(metadata ptr %11, metadata !2020, metadata !DIExpression()), !dbg !2026
  store ptr null, ptr %11, align 4, !dbg !2026
  call void @llvm.lifetime.start.p0(i64 4, ptr %12) #8, !dbg !2027
  call void @llvm.dbg.declare(metadata ptr %12, metadata !2021, metadata !DIExpression()), !dbg !2028
  call void @llvm.memset.p0.i32(ptr align 4 %12, i8 0, i32 4, i1 false), !dbg !2028
  call void @llvm.lifetime.start.p0(i64 4, ptr %13) #8, !dbg !2027
  call void @llvm.dbg.declare(metadata ptr %13, metadata !2023, metadata !DIExpression()), !dbg !2029
  store ptr @sched_spinlock, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !603, metadata !DIExpression()), !dbg !2030
  %14 = load ptr, ptr %9, align 4, !dbg !2032
  call void @llvm.dbg.declare(metadata ptr %8, metadata !609, metadata !DIExpression()), !dbg !2033
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #8, !dbg !2034
  call void @llvm.dbg.declare(metadata ptr %4, metadata !620, metadata !DIExpression()), !dbg !2036
  %15 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #8, !dbg !2037, !srcloc !624
  store i32 %15, ptr %4, align 4, !dbg !2037
  %16 = load i32, ptr %4, align 4, !dbg !2038
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #8, !dbg !2039
  store i32 %16, ptr %8, align 4, !dbg !2040
  %17 = load ptr, ptr %9, align 4, !dbg !2041
  store ptr %17, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !629, metadata !DIExpression()), !dbg !2042
  %18 = load ptr, ptr %3, align 4, !dbg !2044
  %19 = load ptr, ptr %9, align 4, !dbg !2045
  store ptr %19, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !638, metadata !DIExpression()), !dbg !2046
  %20 = load ptr, ptr %2, align 4, !dbg !2048
  %21 = load i32, ptr %8, align 4, !dbg !2049
  %22 = getelementptr inbounds %struct.z_spinlock_key, ptr %13, i32 0, i32 0, !dbg !2050
  store i32 %21, ptr %22, align 4, !dbg !2050
  br label %23, !dbg !2027

23:                                               ; preds = %arch_irq_unlock.exit, %1
  %24 = getelementptr inbounds %struct.z_spinlock_key, ptr %12, i32 0, i32 0, !dbg !2051
  %25 = load i32, ptr %24, align 4, !dbg !2051
  %26 = icmp ne i32 %25, 0, !dbg !2053
  %27 = xor i1 %26, true, !dbg !2053
  br i1 %27, label %29, label %28, !dbg !2054

28:                                               ; preds = %23
  call void @llvm.lifetime.end.p0(i64 4, ptr %13) #8, !dbg !2055
  call void @llvm.lifetime.end.p0(i64 4, ptr %12) #8, !dbg !2055
  br label %48

29:                                               ; preds = %23
  %30 = load ptr, ptr %10, align 4, !dbg !2056
  %31 = getelementptr inbounds %struct._wait_q_t, ptr %30, i32 0, i32 0, !dbg !2058
  %32 = call ptr @z_priq_dumb_best(ptr noundef %31) #7, !dbg !2059
  store ptr %32, ptr %11, align 4, !dbg !2060
  %33 = load ptr, ptr %11, align 4, !dbg !2061
  %34 = icmp ne ptr %33, null, !dbg !2063
  br i1 %34, label %35, label %37, !dbg !2064

35:                                               ; preds = %29
  %36 = load ptr, ptr %11, align 4, !dbg !2065
  call void @unpend_thread_no_timeout(ptr noundef %36) #7, !dbg !2067
  br label %37, !dbg !2068

37:                                               ; preds = %35, %29
  br label %38, !dbg !2069

38:                                               ; preds = %37
  %39 = getelementptr inbounds %struct.z_spinlock_key, ptr %13, i32 0, i32 0, !dbg !2070
  %40 = load [1 x i32], ptr %39, align 4, !dbg !2070
  store [1 x i32] %40, ptr %6, align 4
  store ptr @sched_spinlock, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !661, metadata !DIExpression()), !dbg !2071
  call void @llvm.dbg.declare(metadata ptr %6, metadata !666, metadata !DIExpression()), !dbg !2073
  %41 = load ptr, ptr %7, align 4, !dbg !2074
  %42 = load i32, ptr %6, align 4, !dbg !2075
  store i32 %42, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !672, metadata !DIExpression()), !dbg !2076
  %43 = load i32, ptr %5, align 4, !dbg !2078
  %44 = icmp ne i32 %43, 0, !dbg !2079
  br i1 %44, label %45, label %46, !dbg !2080

45:                                               ; preds = %38
  br label %arch_irq_unlock.exit, !dbg !2081

46:                                               ; preds = %38
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #8, !dbg !2082, !srcloc !686
  br label %arch_irq_unlock.exit, !dbg !2083

arch_irq_unlock.exit:                             ; preds = %45, %46
  %47 = getelementptr inbounds %struct.z_spinlock_key, ptr %12, i32 0, i32 0, !dbg !2084
  store i32 1, ptr %47, align 4, !dbg !2085
  br label %23, !dbg !2055, !llvm.loop !2086

48:                                               ; preds = %28
  %49 = load ptr, ptr %11, align 4, !dbg !2088
  call void @llvm.lifetime.end.p0(i64 4, ptr %11) #8, !dbg !2089
  ret ptr %49, !dbg !2090
}

; Function Attrs: nounwind optsize
define hidden ptr @z_priq_dumb_best(ptr noundef %0) #1 !dbg !2091 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2095, metadata !DIExpression()), !dbg !2098
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #8, !dbg !2099
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2096, metadata !DIExpression()), !dbg !2100
  store ptr null, ptr %3, align 4, !dbg !2100
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #8, !dbg !2101
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2097, metadata !DIExpression()), !dbg !2102
  %6 = load ptr, ptr %2, align 4, !dbg !2103
  %7 = call ptr @sys_dlist_peek_head(ptr noundef %6) #7, !dbg !2104
  store ptr %7, ptr %4, align 4, !dbg !2102
  %8 = load ptr, ptr %4, align 4, !dbg !2105
  %9 = icmp ne ptr %8, null, !dbg !2107
  br i1 %9, label %10, label %14, !dbg !2108

10:                                               ; preds = %1
  %11 = load ptr, ptr %4, align 4, !dbg !2109
  %12 = getelementptr inbounds i8, ptr %11, i32 0, !dbg !2112
  store ptr %12, ptr %5, align 4, !dbg !2113
  %13 = load ptr, ptr %5, align 4, !dbg !2114
  store ptr %13, ptr %3, align 4, !dbg !2115
  br label %14, !dbg !2116

14:                                               ; preds = %10, %1
  %15 = load ptr, ptr %3, align 4, !dbg !2117
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #8, !dbg !2118
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #8, !dbg !2118
  ret ptr %15, !dbg !2119
}

; Function Attrs: nounwind optsize
define hidden ptr @z_unpend_first_thread(ptr noundef %0) #1 !dbg !2120 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.z_spinlock_key, align 4
  %7 = alloca ptr, align 4
  %8 = alloca %struct.z_spinlock_key, align 4
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  %11 = alloca ptr, align 4
  %12 = alloca %struct.z_spinlock_key, align 4
  %13 = alloca %struct.z_spinlock_key, align 4
  store ptr %0, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2122, metadata !DIExpression()), !dbg !2127
  call void @llvm.lifetime.start.p0(i64 4, ptr %11) #8, !dbg !2128
  call void @llvm.dbg.declare(metadata ptr %11, metadata !2123, metadata !DIExpression()), !dbg !2129
  store ptr null, ptr %11, align 4, !dbg !2129
  call void @llvm.lifetime.start.p0(i64 4, ptr %12) #8, !dbg !2130
  call void @llvm.dbg.declare(metadata ptr %12, metadata !2124, metadata !DIExpression()), !dbg !2131
  call void @llvm.memset.p0.i32(ptr align 4 %12, i8 0, i32 4, i1 false), !dbg !2131
  call void @llvm.lifetime.start.p0(i64 4, ptr %13) #8, !dbg !2130
  call void @llvm.dbg.declare(metadata ptr %13, metadata !2126, metadata !DIExpression()), !dbg !2132
  store ptr @sched_spinlock, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !603, metadata !DIExpression()), !dbg !2133
  %14 = load ptr, ptr %9, align 4, !dbg !2135
  call void @llvm.dbg.declare(metadata ptr %8, metadata !609, metadata !DIExpression()), !dbg !2136
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #8, !dbg !2137
  call void @llvm.dbg.declare(metadata ptr %4, metadata !620, metadata !DIExpression()), !dbg !2139
  %15 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #8, !dbg !2140, !srcloc !624
  store i32 %15, ptr %4, align 4, !dbg !2140
  %16 = load i32, ptr %4, align 4, !dbg !2141
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #8, !dbg !2142
  store i32 %16, ptr %8, align 4, !dbg !2143
  %17 = load ptr, ptr %9, align 4, !dbg !2144
  store ptr %17, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !629, metadata !DIExpression()), !dbg !2145
  %18 = load ptr, ptr %3, align 4, !dbg !2147
  %19 = load ptr, ptr %9, align 4, !dbg !2148
  store ptr %19, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !638, metadata !DIExpression()), !dbg !2149
  %20 = load ptr, ptr %2, align 4, !dbg !2151
  %21 = load i32, ptr %8, align 4, !dbg !2152
  %22 = getelementptr inbounds %struct.z_spinlock_key, ptr %13, i32 0, i32 0, !dbg !2153
  store i32 %21, ptr %22, align 4, !dbg !2153
  br label %23, !dbg !2130

23:                                               ; preds = %arch_irq_unlock.exit, %1
  %24 = getelementptr inbounds %struct.z_spinlock_key, ptr %12, i32 0, i32 0, !dbg !2154
  %25 = load i32, ptr %24, align 4, !dbg !2154
  %26 = icmp ne i32 %25, 0, !dbg !2156
  %27 = xor i1 %26, true, !dbg !2156
  br i1 %27, label %29, label %28, !dbg !2157

28:                                               ; preds = %23
  call void @llvm.lifetime.end.p0(i64 4, ptr %13) #8, !dbg !2158
  call void @llvm.lifetime.end.p0(i64 4, ptr %12) #8, !dbg !2158
  br label %50

29:                                               ; preds = %23
  %30 = load ptr, ptr %10, align 4, !dbg !2159
  %31 = getelementptr inbounds %struct._wait_q_t, ptr %30, i32 0, i32 0, !dbg !2161
  %32 = call ptr @z_priq_dumb_best(ptr noundef %31) #7, !dbg !2162
  store ptr %32, ptr %11, align 4, !dbg !2163
  %33 = load ptr, ptr %11, align 4, !dbg !2164
  %34 = icmp ne ptr %33, null, !dbg !2166
  br i1 %34, label %35, label %39, !dbg !2167

35:                                               ; preds = %29
  %36 = load ptr, ptr %11, align 4, !dbg !2168
  call void @unpend_thread_no_timeout(ptr noundef %36) #7, !dbg !2170
  %37 = load ptr, ptr %11, align 4, !dbg !2171
  %38 = call i32 @z_abort_thread_timeout(ptr noundef %37) #7, !dbg !2172
  br label %39, !dbg !2173

39:                                               ; preds = %35, %29
  br label %40, !dbg !2174

40:                                               ; preds = %39
  %41 = getelementptr inbounds %struct.z_spinlock_key, ptr %13, i32 0, i32 0, !dbg !2175
  %42 = load [1 x i32], ptr %41, align 4, !dbg !2175
  store [1 x i32] %42, ptr %6, align 4
  store ptr @sched_spinlock, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !661, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.declare(metadata ptr %6, metadata !666, metadata !DIExpression()), !dbg !2178
  %43 = load ptr, ptr %7, align 4, !dbg !2179
  %44 = load i32, ptr %6, align 4, !dbg !2180
  store i32 %44, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !672, metadata !DIExpression()), !dbg !2181
  %45 = load i32, ptr %5, align 4, !dbg !2183
  %46 = icmp ne i32 %45, 0, !dbg !2184
  br i1 %46, label %47, label %48, !dbg !2185

47:                                               ; preds = %40
  br label %arch_irq_unlock.exit, !dbg !2186

48:                                               ; preds = %40
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #8, !dbg !2187, !srcloc !686
  br label %arch_irq_unlock.exit, !dbg !2188

arch_irq_unlock.exit:                             ; preds = %47, %48
  %49 = getelementptr inbounds %struct.z_spinlock_key, ptr %12, i32 0, i32 0, !dbg !2189
  store i32 1, ptr %49, align 4, !dbg !2190
  br label %23, !dbg !2158, !llvm.loop !2191

50:                                               ; preds = %28
  %51 = load ptr, ptr %11, align 4, !dbg !2193
  call void @llvm.lifetime.end.p0(i64 4, ptr %11) #8, !dbg !2194
  ret ptr %51, !dbg !2195
}

; Function Attrs: nounwind optsize
define hidden void @z_unpend_thread(ptr noundef %0) #1 !dbg !2196 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.z_spinlock_key, align 4
  %7 = alloca ptr, align 4
  %8 = alloca %struct.z_spinlock_key, align 4
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  %11 = alloca %struct.z_spinlock_key, align 4
  %12 = alloca %struct.z_spinlock_key, align 4
  %13 = alloca ptr, align 4
  store ptr %0, ptr %13, align 4
  call void @llvm.dbg.declare(metadata ptr %13, metadata !2198, metadata !DIExpression()), !dbg !2199
  %14 = load ptr, ptr %13, align 4, !dbg !2200
  store ptr %14, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1668, metadata !DIExpression()), !dbg !2201
  call void @llvm.lifetime.start.p0(i64 4, ptr %11) #8, !dbg !2203
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1669, metadata !DIExpression()), !dbg !2204
  call void @llvm.memset.p0.i32(ptr align 4 %11, i8 0, i32 4, i1 false), !dbg !2204
  call void @llvm.lifetime.start.p0(i64 4, ptr %12) #8, !dbg !2203
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1671, metadata !DIExpression()), !dbg !2205
  store ptr @sched_spinlock, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !603, metadata !DIExpression()), !dbg !2206
  %15 = load ptr, ptr %9, align 4, !dbg !2208
  call void @llvm.dbg.declare(metadata ptr %8, metadata !609, metadata !DIExpression()), !dbg !2209
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #8, !dbg !2210
  call void @llvm.dbg.declare(metadata ptr %4, metadata !620, metadata !DIExpression()), !dbg !2212
  %16 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #8, !dbg !2213, !srcloc !624
  store i32 %16, ptr %4, align 4, !dbg !2213
  %17 = load i32, ptr %4, align 4, !dbg !2214
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #8, !dbg !2215
  store i32 %17, ptr %8, align 4, !dbg !2216
  %18 = load ptr, ptr %9, align 4, !dbg !2217
  store ptr %18, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !629, metadata !DIExpression()), !dbg !2218
  %19 = load ptr, ptr %3, align 4, !dbg !2220
  %20 = load ptr, ptr %9, align 4, !dbg !2221
  store ptr %20, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !638, metadata !DIExpression()), !dbg !2222
  %21 = load ptr, ptr %2, align 4, !dbg !2224
  %22 = load i32, ptr %8, align 4, !dbg !2225
  store i32 %22, ptr %12, align 4, !dbg !2226
  br label %23, !dbg !2203

23:                                               ; preds = %arch_irq_unlock.exit, %1
  %24 = load i32, ptr %11, align 4, !dbg !2227
  %25 = icmp ne i32 %24, 0, !dbg !2228
  %26 = xor i1 %25, true, !dbg !2228
  br i1 %26, label %27, label %z_unpend_thread_no_timeout.exit, !dbg !2229

27:                                               ; preds = %23
  %28 = load ptr, ptr %10, align 4, !dbg !2230
  %29 = getelementptr inbounds %struct._thread_base, ptr %28, i32 0, i32 1, !dbg !2231
  %30 = load ptr, ptr %29, align 8, !dbg !2231
  %31 = icmp ne ptr %30, null, !dbg !2232
  br i1 %31, label %32, label %34, !dbg !2233

32:                                               ; preds = %27
  %33 = load ptr, ptr %10, align 4, !dbg !2234
  call void @unpend_thread_no_timeout(ptr noundef %33) #7, !dbg !2235
  br label %34, !dbg !2236

34:                                               ; preds = %32, %27
  %35 = load [1 x i32], ptr %12, align 4, !dbg !2237
  store [1 x i32] %35, ptr %6, align 4
  store ptr @sched_spinlock, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !661, metadata !DIExpression()), !dbg !2238
  call void @llvm.dbg.declare(metadata ptr %6, metadata !666, metadata !DIExpression()), !dbg !2240
  %36 = load ptr, ptr %7, align 4, !dbg !2241
  %37 = load i32, ptr %6, align 4, !dbg !2242
  store i32 %37, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !672, metadata !DIExpression()), !dbg !2243
  %38 = load i32, ptr %5, align 4, !dbg !2245
  %39 = icmp ne i32 %38, 0, !dbg !2246
  br i1 %39, label %40, label %41, !dbg !2247

40:                                               ; preds = %34
  br label %arch_irq_unlock.exit, !dbg !2248

41:                                               ; preds = %34
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #8, !dbg !2249, !srcloc !686
  br label %arch_irq_unlock.exit, !dbg !2250

arch_irq_unlock.exit:                             ; preds = %40, %41
  store i32 1, ptr %11, align 4, !dbg !2251
  br label %23, !dbg !2252, !llvm.loop !2253

z_unpend_thread_no_timeout.exit:                  ; preds = %23
  call void @llvm.lifetime.end.p0(i64 4, ptr %12) #8, !dbg !2252
  call void @llvm.lifetime.end.p0(i64 4, ptr %11) #8, !dbg !2252
  %42 = load ptr, ptr %13, align 4, !dbg !2255
  %43 = call i32 @z_abort_thread_timeout(ptr noundef %42) #7, !dbg !2256
  ret void, !dbg !2257
}

; Function Attrs: nounwind optsize
define hidden zeroext i1 @z_set_prio(ptr noundef %0, i32 noundef %1) #1 !dbg !2258 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  %11 = alloca ptr, align 4
  %12 = alloca ptr, align 4
  %13 = alloca ptr, align 4
  %14 = alloca ptr, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca ptr, align 4
  %18 = alloca ptr, align 4
  %19 = alloca %struct.z_spinlock_key, align 4
  %20 = alloca ptr, align 4
  %21 = alloca %struct.z_spinlock_key, align 4
  %22 = alloca ptr, align 4
  %23 = alloca ptr, align 4
  %24 = alloca i32, align 4
  %25 = alloca i8, align 1
  %26 = alloca %struct.z_spinlock_key, align 4
  %27 = alloca %struct.z_spinlock_key, align 4
  store ptr %0, ptr %23, align 4
  call void @llvm.dbg.declare(metadata ptr %23, metadata !2260, metadata !DIExpression()), !dbg !2266
  store i32 %1, ptr %24, align 4
  call void @llvm.dbg.declare(metadata ptr %24, metadata !2261, metadata !DIExpression()), !dbg !2267
  call void @llvm.lifetime.start.p0(i64 1, ptr %25) #8, !dbg !2268
  call void @llvm.dbg.declare(metadata ptr %25, metadata !2262, metadata !DIExpression()), !dbg !2269
  store i8 0, ptr %25, align 1, !dbg !2269
  call void @llvm.lifetime.start.p0(i64 4, ptr %26) #8, !dbg !2270
  call void @llvm.dbg.declare(metadata ptr %26, metadata !2263, metadata !DIExpression()), !dbg !2271
  call void @llvm.memset.p0.i32(ptr align 4 %26, i8 0, i32 4, i1 false), !dbg !2271
  call void @llvm.lifetime.start.p0(i64 4, ptr %27) #8, !dbg !2270
  call void @llvm.dbg.declare(metadata ptr %27, metadata !2265, metadata !DIExpression()), !dbg !2272
  store ptr @sched_spinlock, ptr %22, align 4
  call void @llvm.dbg.declare(metadata ptr %22, metadata !603, metadata !DIExpression()), !dbg !2273
  %28 = load ptr, ptr %22, align 4, !dbg !2275
  call void @llvm.dbg.declare(metadata ptr %21, metadata !609, metadata !DIExpression()), !dbg !2276
  call void @llvm.lifetime.start.p0(i64 4, ptr %15) #8, !dbg !2277
  call void @llvm.dbg.declare(metadata ptr %15, metadata !620, metadata !DIExpression()), !dbg !2279
  %29 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #8, !dbg !2280, !srcloc !624
  store i32 %29, ptr %15, align 4, !dbg !2280
  %30 = load i32, ptr %15, align 4, !dbg !2281
  call void @llvm.lifetime.end.p0(i64 4, ptr %15) #8, !dbg !2282
  store i32 %30, ptr %21, align 4, !dbg !2283
  %31 = load ptr, ptr %22, align 4, !dbg !2284
  store ptr %31, ptr %14, align 4
  call void @llvm.dbg.declare(metadata ptr %14, metadata !629, metadata !DIExpression()), !dbg !2285
  %32 = load ptr, ptr %14, align 4, !dbg !2287
  %33 = load ptr, ptr %22, align 4, !dbg !2288
  store ptr %33, ptr %13, align 4
  call void @llvm.dbg.declare(metadata ptr %13, metadata !638, metadata !DIExpression()), !dbg !2289
  %34 = load ptr, ptr %13, align 4, !dbg !2291
  %35 = load i32, ptr %21, align 4, !dbg !2292
  %36 = getelementptr inbounds %struct.z_spinlock_key, ptr %27, i32 0, i32 0, !dbg !2293
  store i32 %35, ptr %36, align 4, !dbg !2293
  br label %37, !dbg !2270

37:                                               ; preds = %arch_irq_unlock.exit, %2
  %38 = getelementptr inbounds %struct.z_spinlock_key, ptr %26, i32 0, i32 0, !dbg !2294
  %39 = load i32, ptr %38, align 4, !dbg !2294
  %40 = icmp ne i32 %39, 0, !dbg !2296
  %41 = xor i1 %40, true, !dbg !2296
  br i1 %41, label %43, label %42, !dbg !2297

42:                                               ; preds = %37
  call void @llvm.lifetime.end.p0(i64 4, ptr %27) #8, !dbg !2298
  call void @llvm.lifetime.end.p0(i64 4, ptr %26) #8, !dbg !2298
  br label %146

43:                                               ; preds = %37
  %44 = load ptr, ptr %23, align 4, !dbg !2299
  %45 = call zeroext i1 @z_is_thread_ready(ptr noundef %44) #7, !dbg !2301
  %46 = zext i1 %45 to i8, !dbg !2302
  store i8 %46, ptr %25, align 1, !dbg !2302
  %47 = load i8, ptr %25, align 1, !dbg !2303, !range !548, !noundef !213
  %48 = trunc i8 %47 to i1, !dbg !2303
  br i1 %48, label %49, label %128, !dbg !2305

49:                                               ; preds = %43
  %50 = load ptr, ptr %23, align 4, !dbg !2306
  store ptr %50, ptr %18, align 4
  call void @llvm.dbg.declare(metadata ptr %18, metadata !809, metadata !DIExpression()), !dbg !2310
  %51 = load ptr, ptr %18, align 4, !dbg !2312
  %52 = getelementptr inbounds %struct._thread_base, ptr %51, i32 0, i32 3, !dbg !2313
  %53 = load i8, ptr %52, align 1, !dbg !2314
  %54 = zext i8 %53 to i32, !dbg !2314
  %55 = and i32 %54, -129, !dbg !2314
  %56 = trunc i32 %55 to i8, !dbg !2314
  store i8 %56, ptr %52, align 1, !dbg !2314
  %57 = load ptr, ptr %18, align 4, !dbg !2315
  %58 = call zeroext i1 @should_queue_thread(ptr noundef %57) #7, !dbg !2316
  br i1 %58, label %59, label %dequeue_thread.exit, !dbg !2317

59:                                               ; preds = %49
  %60 = load ptr, ptr %18, align 4, !dbg !2318
  store ptr %60, ptr %12, align 4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !823, metadata !DIExpression()), !dbg !2319
  %61 = load ptr, ptr %12, align 4, !dbg !2321
  store ptr %61, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !829, metadata !DIExpression()), !dbg !2322
  %62 = load ptr, ptr %11, align 4, !dbg !2324
  %63 = load ptr, ptr %12, align 4, !dbg !2325
  call void @z_priq_dumb_remove(ptr noundef getelementptr inbounds (%struct.z_kernel, ptr @_kernel, i32 0, i32 1, i32 1), ptr noundef %63) #7, !dbg !2326
  br label %dequeue_thread.exit, !dbg !2327

dequeue_thread.exit:                              ; preds = %49, %59
  %64 = load i32, ptr %24, align 4, !dbg !2328
  %65 = trunc i32 %64 to i8, !dbg !2328
  %66 = load ptr, ptr %23, align 4, !dbg !2329
  %67 = getelementptr inbounds %struct.k_thread, ptr %66, i32 0, i32 0, !dbg !2330
  %68 = getelementptr inbounds %struct._thread_base, ptr %67, i32 0, i32 4, !dbg !2331
  %69 = getelementptr inbounds %struct.anon, ptr %68, i32 0, i32 0, !dbg !2331
  store i8 %65, ptr %69, align 2, !dbg !2332
  %70 = load ptr, ptr %23, align 4, !dbg !2333
  store ptr %70, ptr %17, align 4
  call void @llvm.dbg.declare(metadata ptr %17, metadata !842, metadata !DIExpression()), !dbg !2334
  %71 = load ptr, ptr %17, align 4, !dbg !2336
  %72 = getelementptr inbounds %struct._thread_base, ptr %71, i32 0, i32 3, !dbg !2337
  %73 = load i8, ptr %72, align 1, !dbg !2338
  %74 = zext i8 %73 to i32, !dbg !2338
  %75 = or i32 %74, 128, !dbg !2338
  %76 = trunc i32 %75 to i8, !dbg !2338
  store i8 %76, ptr %72, align 1, !dbg !2338
  %77 = load ptr, ptr %17, align 4, !dbg !2339
  %78 = call zeroext i1 @should_queue_thread(ptr noundef %77) #7, !dbg !2340
  br i1 %78, label %79, label %queue_thread.exit, !dbg !2341

79:                                               ; preds = %dequeue_thread.exit
  %80 = load ptr, ptr %17, align 4, !dbg !2342
  store ptr %80, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !856, metadata !DIExpression()), !dbg !2343
  %81 = load ptr, ptr %10, align 4, !dbg !2345
  store ptr %81, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !829, metadata !DIExpression()), !dbg !2346
  %82 = load ptr, ptr %9, align 4, !dbg !2348
  %83 = load ptr, ptr %10, align 4, !dbg !2349
  store ptr getelementptr inbounds (%struct.z_kernel, ptr @_kernel, i32 0, i32 1, i32 1), ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !866, metadata !DIExpression()), !dbg !2350
  store ptr %83, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !872, metadata !DIExpression()), !dbg !2352
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #8, !dbg !2353
  call void @llvm.dbg.declare(metadata ptr %5, metadata !873, metadata !DIExpression()), !dbg !2354
  %84 = load ptr, ptr %3, align 4, !dbg !2355
  %85 = call ptr @sys_dlist_peek_head(ptr noundef %84) #7, !dbg !2356
  %86 = icmp ne ptr %85, null, !dbg !2357
  br i1 %86, label %87, label %91, !dbg !2358

87:                                               ; preds = %79
  %88 = load ptr, ptr %3, align 4, !dbg !2359
  %89 = call ptr @sys_dlist_peek_head(ptr noundef %88) #7, !dbg !2360
  store ptr %89, ptr %6, align 4, !dbg !2361
  %90 = load ptr, ptr %6, align 4, !dbg !2362
  br label %92, !dbg !2358

91:                                               ; preds = %79
  br label %92, !dbg !2358

92:                                               ; preds = %91, %87
  %93 = phi ptr [ %90, %87 ], [ null, %91 ], !dbg !2358
  store ptr %93, ptr %5, align 4, !dbg !2363
  br label %94, !dbg !2364

94:                                               ; preds = %122, %92
  %95 = load ptr, ptr %5, align 4, !dbg !2365
  %96 = icmp ne ptr %95, null, !dbg !2366
  br i1 %96, label %97, label %124, !dbg !2367

97:                                               ; preds = %94
  %98 = load ptr, ptr %4, align 4, !dbg !2368
  %99 = load ptr, ptr %5, align 4, !dbg !2369
  %100 = call i32 @z_sched_prio_cmp(ptr noundef %98, ptr noundef %99) #7, !dbg !2370
  %101 = icmp sgt i32 %100, 0, !dbg !2371
  br i1 %101, label %102, label %105, !dbg !2372

102:                                              ; preds = %97
  %103 = load ptr, ptr %5, align 4, !dbg !2373
  %104 = load ptr, ptr %4, align 4, !dbg !2374
  call void @sys_dlist_insert(ptr noundef %103, ptr noundef %104) #7, !dbg !2375
  store i32 1, ptr %7, align 4
  br label %z_priq_dumb_add.exit, !dbg !2376

105:                                              ; preds = %97
  %106 = load ptr, ptr %5, align 4, !dbg !2377
  %107 = icmp ne ptr %106, null, !dbg !2378
  br i1 %107, label %108, label %121, !dbg !2379

108:                                              ; preds = %105
  %109 = load ptr, ptr %3, align 4, !dbg !2380
  %110 = load ptr, ptr %5, align 4, !dbg !2381
  %111 = call ptr @sys_dlist_peek_next(ptr noundef %109, ptr noundef %110) #7, !dbg !2382
  %112 = icmp ne ptr %111, null, !dbg !2383
  br i1 %112, label %113, label %118, !dbg !2384

113:                                              ; preds = %108
  %114 = load ptr, ptr %3, align 4, !dbg !2385
  %115 = load ptr, ptr %5, align 4, !dbg !2386
  %116 = call ptr @sys_dlist_peek_next(ptr noundef %114, ptr noundef %115) #7, !dbg !2387
  store ptr %116, ptr %8, align 4, !dbg !2388
  %117 = load ptr, ptr %8, align 4, !dbg !2389
  br label %119, !dbg !2384

118:                                              ; preds = %108
  br label %119, !dbg !2384

119:                                              ; preds = %118, %113
  %120 = phi ptr [ %117, %113 ], [ null, %118 ], !dbg !2384
  br label %122, !dbg !2379

121:                                              ; preds = %105
  br label %122, !dbg !2379

122:                                              ; preds = %121, %119
  %123 = phi ptr [ %120, %119 ], [ null, %121 ], !dbg !2379
  store ptr %123, ptr %5, align 4, !dbg !2390
  br label %94, !dbg !2391, !llvm.loop !2392

124:                                              ; preds = %94
  %125 = load ptr, ptr %3, align 4, !dbg !2394
  %126 = load ptr, ptr %4, align 4, !dbg !2395
  call void @sys_dlist_append(ptr noundef %125, ptr noundef %126) #7, !dbg !2396
  store i32 0, ptr %7, align 4, !dbg !2397
  br label %z_priq_dumb_add.exit, !dbg !2397

z_priq_dumb_add.exit:                             ; preds = %102, %124
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #8, !dbg !2397
  %127 = load i32, ptr %7, align 4
  br label %queue_thread.exit, !dbg !2398

queue_thread.exit:                                ; preds = %dequeue_thread.exit, %z_priq_dumb_add.exit
  call void @update_cache(i32 noundef 1) #7, !dbg !2399
  br label %135, !dbg !2400

128:                                              ; preds = %43
  %129 = load i32, ptr %24, align 4, !dbg !2401
  %130 = trunc i32 %129 to i8, !dbg !2401
  %131 = load ptr, ptr %23, align 4, !dbg !2403
  %132 = getelementptr inbounds %struct.k_thread, ptr %131, i32 0, i32 0, !dbg !2404
  %133 = getelementptr inbounds %struct._thread_base, ptr %132, i32 0, i32 4, !dbg !2405
  %134 = getelementptr inbounds %struct.anon, ptr %133, i32 0, i32 0, !dbg !2405
  store i8 %130, ptr %134, align 2, !dbg !2406
  br label %135

135:                                              ; preds = %128, %queue_thread.exit
  br label %136, !dbg !2407

136:                                              ; preds = %135
  %137 = getelementptr inbounds %struct.z_spinlock_key, ptr %27, i32 0, i32 0, !dbg !2408
  %138 = load [1 x i32], ptr %137, align 4, !dbg !2408
  store [1 x i32] %138, ptr %19, align 4
  store ptr @sched_spinlock, ptr %20, align 4
  call void @llvm.dbg.declare(metadata ptr %20, metadata !661, metadata !DIExpression()), !dbg !2409
  call void @llvm.dbg.declare(metadata ptr %19, metadata !666, metadata !DIExpression()), !dbg !2411
  %139 = load ptr, ptr %20, align 4, !dbg !2412
  %140 = load i32, ptr %19, align 4, !dbg !2413
  store i32 %140, ptr %16, align 4
  call void @llvm.dbg.declare(metadata ptr %16, metadata !672, metadata !DIExpression()), !dbg !2414
  %141 = load i32, ptr %16, align 4, !dbg !2416
  %142 = icmp ne i32 %141, 0, !dbg !2417
  br i1 %142, label %143, label %144, !dbg !2418

143:                                              ; preds = %136
  br label %arch_irq_unlock.exit, !dbg !2419

144:                                              ; preds = %136
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #8, !dbg !2420, !srcloc !686
  br label %arch_irq_unlock.exit, !dbg !2421

arch_irq_unlock.exit:                             ; preds = %143, %144
  %145 = getelementptr inbounds %struct.z_spinlock_key, ptr %26, i32 0, i32 0, !dbg !2422
  store i32 1, ptr %145, align 4, !dbg !2423
  br label %37, !dbg !2298, !llvm.loop !2424

146:                                              ; preds = %42
  br label %147, !dbg !2426

147:                                              ; preds = %146
  br label %148, !dbg !2427

148:                                              ; preds = %147
  br label %149, !dbg !2427

149:                                              ; preds = %148
  %150 = load i8, ptr %25, align 1, !dbg !2429, !range !548, !noundef !213
  %151 = trunc i8 %150 to i1, !dbg !2429
  call void @llvm.lifetime.end.p0(i64 1, ptr %25) #8, !dbg !2430
  ret i1 %151, !dbg !2431
}

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @z_is_thread_ready(ptr noundef %0) #0 !dbg !2432 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2434, metadata !DIExpression()), !dbg !2435
  %3 = load ptr, ptr %2, align 4, !dbg !2436
  %4 = call zeroext i1 @z_is_thread_prevented_from_running(ptr noundef %3) #7, !dbg !2437
  %5 = zext i1 %4 to i32, !dbg !2438
  %6 = icmp ne i32 %5, 0, !dbg !2439
  br i1 %6, label %10, label %7, !dbg !2440

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 4, !dbg !2441
  %9 = call zeroext i1 @z_is_thread_timeout_active(ptr noundef %8) #7, !dbg !2442
  br label %10, !dbg !2440

10:                                               ; preds = %7, %1
  %11 = phi i1 [ true, %1 ], [ %9, %7 ]
  %12 = xor i1 %11, true, !dbg !2443
  ret i1 %12, !dbg !2444
}

; Function Attrs: nounwind optsize
define hidden void @z_thread_priority_set(ptr noundef %0, i32 noundef %1) #1 !dbg !2445 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2449, metadata !DIExpression()), !dbg !2452
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2450, metadata !DIExpression()), !dbg !2453
  call void @llvm.lifetime.start.p0(i64 1, ptr %5) #8, !dbg !2454
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2451, metadata !DIExpression()), !dbg !2455
  %6 = load ptr, ptr %3, align 4, !dbg !2456
  %7 = load i32, ptr %4, align 4, !dbg !2457
  %8 = call zeroext i1 @z_set_prio(ptr noundef %6, i32 noundef %7) #7, !dbg !2458
  %9 = zext i1 %8 to i8, !dbg !2455
  store i8 %9, ptr %5, align 1, !dbg !2455
  call void @flag_ipi() #7, !dbg !2459
  %10 = load i8, ptr %5, align 1, !dbg !2460, !range !548, !noundef !213
  %11 = trunc i8 %10 to i1, !dbg !2460
  br i1 %11, label %12, label %21, !dbg !2462

12:                                               ; preds = %2
  %13 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !2463
  %14 = getelementptr inbounds %struct.k_thread, ptr %13, i32 0, i32 0, !dbg !2464
  %15 = getelementptr inbounds %struct._thread_base, ptr %14, i32 0, i32 4, !dbg !2465
  %16 = getelementptr inbounds %struct.anon, ptr %15, i32 0, i32 1, !dbg !2465
  %17 = load i8, ptr %16, align 1, !dbg !2465
  %18 = zext i8 %17 to i32, !dbg !2466
  %19 = icmp eq i32 %18, 0, !dbg !2467
  br i1 %19, label %20, label %21, !dbg !2468

20:                                               ; preds = %12
  call void @z_reschedule_unlocked() #7, !dbg !2469
  br label %21, !dbg !2471

21:                                               ; preds = %20, %12, %2
  call void @llvm.lifetime.end.p0(i64 1, ptr %5) #8, !dbg !2472
  ret void, !dbg !2472
}

; Function Attrs: nounwind optsize
define internal void @flag_ipi() #1 !dbg !2473 {
  ret void, !dbg !2474
}

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @resched(i32 noundef %0) #0 !dbg !2475 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2479, metadata !DIExpression()), !dbg !2480
  %5 = load i32, ptr %4, align 4, !dbg !2481
  store i32 %5, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2482, metadata !DIExpression()), !dbg !2487
  %6 = load i32, ptr %3, align 4, !dbg !2489
  %7 = icmp eq i32 %6, 0, !dbg !2490
  br i1 %7, label %8, label %15, !dbg !2491

8:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 4, ptr %2) #8, !dbg !2492
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2498, metadata !DIExpression()), !dbg !2505
  %9 = call i32 asm sideeffect "MRS $0, ipsr", "=r"() #8, !dbg !2506, !srcloc !2507
  store i32 %9, ptr %2, align 4, !dbg !2506
  %10 = load i32, ptr %2, align 4, !dbg !2508
  call void @llvm.lifetime.end.p0(i64 4, ptr %2) #8, !dbg !2509
  %11 = icmp ne i32 %10, 0, !dbg !2510
  %12 = zext i1 %11 to i64, !dbg !2510
  %13 = select i1 %11, i32 1, i32 0, !dbg !2510
  %14 = xor i1 %11, true, !dbg !2511
  br label %15

15:                                               ; preds = %8, %1
  %16 = phi i1 [ false, %1 ], [ %14, %8 ], !dbg !2512
  ret i1 %16, !dbg !2513
}

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @need_swap() #0 !dbg !2514 {
  %1 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %1) #8, !dbg !2517
  call void @llvm.dbg.declare(metadata ptr %1, metadata !2516, metadata !DIExpression()), !dbg !2518
  %2 = load ptr, ptr getelementptr inbounds (%struct.z_kernel, ptr @_kernel, i32 0, i32 1), align 4, !dbg !2519
  store ptr %2, ptr %1, align 4, !dbg !2520
  %3 = load ptr, ptr %1, align 4, !dbg !2521
  %4 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !2522
  %5 = icmp ne ptr %3, %4, !dbg !2523
  call void @llvm.lifetime.end.p0(i64 4, ptr %1) #8, !dbg !2524
  ret i1 %5, !dbg !2525
}

; Function Attrs: nounwind optsize
define internal void @signal_pending_ipi() #1 !dbg !2526 {
  ret void, !dbg !2527
}

; Function Attrs: nounwind optsize
define hidden void @z_reschedule_irqlock(i32 noundef %0) #1 !dbg !2528 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2532, metadata !DIExpression()), !dbg !2533
  %4 = load i32, ptr %3, align 4, !dbg !2534
  %5 = call zeroext i1 @resched(i32 noundef %4) #7, !dbg !2536
  br i1 %5, label %6, label %9, !dbg !2537

6:                                                ; preds = %1
  %7 = load i32, ptr %3, align 4, !dbg !2538
  %8 = call i32 @z_swap_irqlock(i32 noundef %7) #7, !dbg !2540
  br label %15, !dbg !2541

9:                                                ; preds = %1
  %10 = load i32, ptr %3, align 4, !dbg !2542
  store i32 %10, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !672, metadata !DIExpression()), !dbg !2544
  %11 = load i32, ptr %2, align 4, !dbg !2546
  %12 = icmp ne i32 %11, 0, !dbg !2547
  br i1 %12, label %13, label %14, !dbg !2548

13:                                               ; preds = %9
  br label %arch_irq_unlock.exit, !dbg !2549

14:                                               ; preds = %9
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #8, !dbg !2550, !srcloc !686
  br label %arch_irq_unlock.exit, !dbg !2551

arch_irq_unlock.exit:                             ; preds = %13, %14
  call void @signal_pending_ipi() #7, !dbg !2552
  br label %15

15:                                               ; preds = %arch_irq_unlock.exit, %6
  ret void, !dbg !2553
}

; Function Attrs: nounwind optsize
define hidden void @k_sched_lock() #1 !dbg !2554 {
  %1 = alloca ptr, align 4
  %2 = alloca ptr, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.z_spinlock_key, align 4
  %6 = alloca ptr, align 4
  %7 = alloca %struct.z_spinlock_key, align 4
  %8 = alloca ptr, align 4
  %9 = alloca %struct.z_spinlock_key, align 4
  %10 = alloca %struct.z_spinlock_key, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #8, !dbg !2559
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2556, metadata !DIExpression()), !dbg !2560
  call void @llvm.memset.p0.i32(ptr align 4 %9, i8 0, i32 4, i1 false), !dbg !2560
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #8, !dbg !2559
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2558, metadata !DIExpression()), !dbg !2561
  store ptr @sched_spinlock, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !603, metadata !DIExpression()), !dbg !2562
  %11 = load ptr, ptr %8, align 4, !dbg !2564
  call void @llvm.dbg.declare(metadata ptr %7, metadata !609, metadata !DIExpression()), !dbg !2565
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #8, !dbg !2566
  call void @llvm.dbg.declare(metadata ptr %3, metadata !620, metadata !DIExpression()), !dbg !2568
  %12 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #8, !dbg !2569, !srcloc !624
  store i32 %12, ptr %3, align 4, !dbg !2569
  %13 = load i32, ptr %3, align 4, !dbg !2570
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #8, !dbg !2571
  store i32 %13, ptr %7, align 4, !dbg !2572
  %14 = load ptr, ptr %8, align 4, !dbg !2573
  store ptr %14, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !629, metadata !DIExpression()), !dbg !2574
  %15 = load ptr, ptr %2, align 4, !dbg !2576
  %16 = load ptr, ptr %8, align 4, !dbg !2577
  store ptr %16, ptr %1, align 4
  call void @llvm.dbg.declare(metadata ptr %1, metadata !638, metadata !DIExpression()), !dbg !2578
  %17 = load ptr, ptr %1, align 4, !dbg !2580
  %18 = load i32, ptr %7, align 4, !dbg !2581
  %19 = getelementptr inbounds %struct.z_spinlock_key, ptr %10, i32 0, i32 0, !dbg !2582
  store i32 %18, ptr %19, align 4, !dbg !2582
  br label %20, !dbg !2559

20:                                               ; preds = %arch_irq_unlock.exit, %0
  %21 = getelementptr inbounds %struct.z_spinlock_key, ptr %9, i32 0, i32 0, !dbg !2583
  %22 = load i32, ptr %21, align 4, !dbg !2583
  %23 = icmp ne i32 %22, 0, !dbg !2585
  %24 = xor i1 %23, true, !dbg !2585
  br i1 %24, label %26, label %25, !dbg !2586

25:                                               ; preds = %20
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #8, !dbg !2587
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #8, !dbg !2587
  br label %40

26:                                               ; preds = %20
  br label %27, !dbg !2588

27:                                               ; preds = %26
  br label %28, !dbg !2590

28:                                               ; preds = %27
  br label %29, !dbg !2590

29:                                               ; preds = %28
  call void @z_sched_lock() #7, !dbg !2592
  br label %30, !dbg !2593

30:                                               ; preds = %29
  %31 = getelementptr inbounds %struct.z_spinlock_key, ptr %10, i32 0, i32 0, !dbg !2594
  %32 = load [1 x i32], ptr %31, align 4, !dbg !2594
  store [1 x i32] %32, ptr %5, align 4
  store ptr @sched_spinlock, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !661, metadata !DIExpression()), !dbg !2595
  call void @llvm.dbg.declare(metadata ptr %5, metadata !666, metadata !DIExpression()), !dbg !2597
  %33 = load ptr, ptr %6, align 4, !dbg !2598
  %34 = load i32, ptr %5, align 4, !dbg !2599
  store i32 %34, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !672, metadata !DIExpression()), !dbg !2600
  %35 = load i32, ptr %4, align 4, !dbg !2602
  %36 = icmp ne i32 %35, 0, !dbg !2603
  br i1 %36, label %37, label %38, !dbg !2604

37:                                               ; preds = %30
  br label %arch_irq_unlock.exit, !dbg !2605

38:                                               ; preds = %30
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #8, !dbg !2606, !srcloc !686
  br label %arch_irq_unlock.exit, !dbg !2607

arch_irq_unlock.exit:                             ; preds = %37, %38
  %39 = getelementptr inbounds %struct.z_spinlock_key, ptr %9, i32 0, i32 0, !dbg !2608
  store i32 1, ptr %39, align 4, !dbg !2609
  br label %20, !dbg !2587, !llvm.loop !2610

40:                                               ; preds = %25
  ret void, !dbg !2612
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_sched_lock() #0 !dbg !2613 {
  %1 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !2614
  %2 = getelementptr inbounds %struct.k_thread, ptr %1, i32 0, i32 0, !dbg !2615
  %3 = getelementptr inbounds %struct._thread_base, ptr %2, i32 0, i32 4, !dbg !2616
  %4 = getelementptr inbounds %struct.anon, ptr %3, i32 0, i32 1, !dbg !2616
  %5 = load i8, ptr %4, align 1, !dbg !2617
  %6 = add i8 %5, -1, !dbg !2617
  store i8 %6, ptr %4, align 1, !dbg !2617
  br label %7, !dbg !2618

7:                                                ; preds = %0
  call void asm sideeffect "", "~{memory}"() #8, !dbg !2619, !srcloc !2621
  br label %8, !dbg !2622

8:                                                ; preds = %7
  ret void, !dbg !2623
}

; Function Attrs: nounwind optsize
define hidden void @k_sched_unlock() #1 !dbg !2624 {
  %1 = alloca ptr, align 4
  %2 = alloca ptr, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.z_spinlock_key, align 4
  %6 = alloca ptr, align 4
  %7 = alloca %struct.z_spinlock_key, align 4
  %8 = alloca ptr, align 4
  %9 = alloca %struct.z_spinlock_key, align 4
  %10 = alloca %struct.z_spinlock_key, align 4
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #8, !dbg !2629
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2626, metadata !DIExpression()), !dbg !2630
  call void @llvm.memset.p0.i32(ptr align 4 %9, i8 0, i32 4, i1 false), !dbg !2630
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #8, !dbg !2629
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2628, metadata !DIExpression()), !dbg !2631
  store ptr @sched_spinlock, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !603, metadata !DIExpression()), !dbg !2632
  %14 = load ptr, ptr %8, align 4, !dbg !2634
  call void @llvm.dbg.declare(metadata ptr %7, metadata !609, metadata !DIExpression()), !dbg !2635
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #8, !dbg !2636
  call void @llvm.dbg.declare(metadata ptr %3, metadata !620, metadata !DIExpression()), !dbg !2638
  %15 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #8, !dbg !2639, !srcloc !624
  store i32 %15, ptr %3, align 4, !dbg !2639
  %16 = load i32, ptr %3, align 4, !dbg !2640
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #8, !dbg !2641
  store i32 %16, ptr %7, align 4, !dbg !2642
  %17 = load ptr, ptr %8, align 4, !dbg !2643
  store ptr %17, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !629, metadata !DIExpression()), !dbg !2644
  %18 = load ptr, ptr %2, align 4, !dbg !2646
  %19 = load ptr, ptr %8, align 4, !dbg !2647
  store ptr %19, ptr %1, align 4
  call void @llvm.dbg.declare(metadata ptr %1, metadata !638, metadata !DIExpression()), !dbg !2648
  %20 = load ptr, ptr %1, align 4, !dbg !2650
  %21 = load i32, ptr %7, align 4, !dbg !2651
  %22 = getelementptr inbounds %struct.z_spinlock_key, ptr %10, i32 0, i32 0, !dbg !2652
  store i32 %21, ptr %22, align 4, !dbg !2652
  br label %23, !dbg !2629

23:                                               ; preds = %arch_irq_unlock.exit, %0
  %24 = getelementptr inbounds %struct.z_spinlock_key, ptr %9, i32 0, i32 0, !dbg !2653
  %25 = load i32, ptr %24, align 4, !dbg !2653
  %26 = icmp ne i32 %25, 0, !dbg !2655
  %27 = xor i1 %26, true, !dbg !2655
  br i1 %27, label %29, label %28, !dbg !2656

28:                                               ; preds = %23
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #8, !dbg !2657
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #8, !dbg !2657
  br label %46

29:                                               ; preds = %23
  %30 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !2658
  %31 = getelementptr inbounds %struct.k_thread, ptr %30, i32 0, i32 0, !dbg !2660
  %32 = getelementptr inbounds %struct._thread_base, ptr %31, i32 0, i32 4, !dbg !2661
  %33 = getelementptr inbounds %struct.anon, ptr %32, i32 0, i32 1, !dbg !2661
  %34 = load i8, ptr %33, align 1, !dbg !2662
  %35 = add i8 %34, 1, !dbg !2662
  store i8 %35, ptr %33, align 1, !dbg !2662
  call void @update_cache(i32 noundef 0) #7, !dbg !2663
  br label %36, !dbg !2664

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.z_spinlock_key, ptr %10, i32 0, i32 0, !dbg !2665
  %38 = load [1 x i32], ptr %37, align 4, !dbg !2665
  store [1 x i32] %38, ptr %5, align 4
  store ptr @sched_spinlock, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !661, metadata !DIExpression()), !dbg !2666
  call void @llvm.dbg.declare(metadata ptr %5, metadata !666, metadata !DIExpression()), !dbg !2668
  %39 = load ptr, ptr %6, align 4, !dbg !2669
  %40 = load i32, ptr %5, align 4, !dbg !2670
  store i32 %40, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !672, metadata !DIExpression()), !dbg !2671
  %41 = load i32, ptr %4, align 4, !dbg !2673
  %42 = icmp ne i32 %41, 0, !dbg !2674
  br i1 %42, label %43, label %44, !dbg !2675

43:                                               ; preds = %36
  br label %arch_irq_unlock.exit, !dbg !2676

44:                                               ; preds = %36
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #8, !dbg !2677, !srcloc !686
  br label %arch_irq_unlock.exit, !dbg !2678

arch_irq_unlock.exit:                             ; preds = %43, %44
  %45 = getelementptr inbounds %struct.z_spinlock_key, ptr %9, i32 0, i32 0, !dbg !2679
  store i32 1, ptr %45, align 4, !dbg !2680
  br label %23, !dbg !2657, !llvm.loop !2681

46:                                               ; preds = %28
  br label %47, !dbg !2683

47:                                               ; preds = %46
  br label %48, !dbg !2684

48:                                               ; preds = %47
  br label %49, !dbg !2688

49:                                               ; preds = %48
  br label %50, !dbg !2689

50:                                               ; preds = %49
  call void @z_reschedule_unlocked() #7, !dbg !2691
  ret void, !dbg !2692
}

; Function Attrs: nounwind optsize
define hidden ptr @z_swap_next_thread() #1 !dbg !2693 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.z_kernel, ptr @_kernel, i32 0, i32 1), align 4, !dbg !2694
  ret ptr %1, !dbg !2695
}

; Function Attrs: nounwind optsize
define hidden void @z_priq_dumb_remove(ptr noundef %0, ptr noundef %1) #1 !dbg !2696 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2698, metadata !DIExpression()), !dbg !2700
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2699, metadata !DIExpression()), !dbg !2701
  %5 = load ptr, ptr %3, align 4, !dbg !2702
  %6 = load ptr, ptr %4, align 4, !dbg !2703
  %7 = getelementptr inbounds %struct.k_thread, ptr %6, i32 0, i32 0, !dbg !2704
  %8 = getelementptr inbounds %struct._thread_base, ptr %7, i32 0, i32 0, !dbg !2705
  call void @sys_dlist_remove(ptr noundef %8) #7, !dbg !2706
  ret void, !dbg !2707
}

; Function Attrs: inlinehint nounwind optsize
define internal void @sys_dlist_remove(ptr noundef %0) #0 !dbg !2708 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2712, metadata !DIExpression()), !dbg !2716
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #8, !dbg !2717
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2713, metadata !DIExpression()), !dbg !2718
  %5 = load ptr, ptr %2, align 4, !dbg !2719
  %6 = getelementptr inbounds %struct._dnode, ptr %5, i32 0, i32 1, !dbg !2720
  %7 = load ptr, ptr %6, align 4, !dbg !2720
  store ptr %7, ptr %3, align 4, !dbg !2718
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #8, !dbg !2721
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2715, metadata !DIExpression()), !dbg !2722
  %8 = load ptr, ptr %2, align 4, !dbg !2723
  %9 = getelementptr inbounds %struct._dnode, ptr %8, i32 0, i32 0, !dbg !2724
  %10 = load ptr, ptr %9, align 4, !dbg !2724
  store ptr %10, ptr %4, align 4, !dbg !2722
  %11 = load ptr, ptr %4, align 4, !dbg !2725
  %12 = load ptr, ptr %3, align 4, !dbg !2726
  %13 = getelementptr inbounds %struct._dnode, ptr %12, i32 0, i32 0, !dbg !2727
  store ptr %11, ptr %13, align 4, !dbg !2728
  %14 = load ptr, ptr %3, align 4, !dbg !2729
  %15 = load ptr, ptr %4, align 4, !dbg !2730
  %16 = getelementptr inbounds %struct._dnode, ptr %15, i32 0, i32 1, !dbg !2731
  store ptr %14, ptr %16, align 4, !dbg !2732
  %17 = load ptr, ptr %2, align 4, !dbg !2733
  call void @sys_dnode_init(ptr noundef %17) #7, !dbg !2734
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #8, !dbg !2735
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #8, !dbg !2735
  ret void, !dbg !2735
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @sys_dlist_peek_head(ptr noundef %0) #0 !dbg !2736 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2740, metadata !DIExpression()), !dbg !2741
  %3 = load ptr, ptr %2, align 4, !dbg !2742
  %4 = call zeroext i1 @sys_dlist_is_empty(ptr noundef %3) #7, !dbg !2743
  br i1 %4, label %5, label %6, !dbg !2743

5:                                                ; preds = %1
  br label %10, !dbg !2743

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 4, !dbg !2744
  %8 = getelementptr inbounds %struct._dnode, ptr %7, i32 0, i32 0, !dbg !2745
  %9 = load ptr, ptr %8, align 4, !dbg !2745
  br label %10, !dbg !2743

10:                                               ; preds = %6, %5
  %11 = phi ptr [ null, %5 ], [ %9, %6 ], !dbg !2743
  ret ptr %11, !dbg !2746
}

; Function Attrs: nounwind optsize
define hidden zeroext i1 @z_priq_rb_lessthan(ptr noundef %0, ptr noundef %1) #1 !dbg !2747 {
  %3 = alloca i1, align 1
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  %11 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2751, metadata !DIExpression()), !dbg !2756
  store ptr %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2752, metadata !DIExpression()), !dbg !2757
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #8, !dbg !2758
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2753, metadata !DIExpression()), !dbg !2759
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #8, !dbg !2758
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2754, metadata !DIExpression()), !dbg !2760
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #8, !dbg !2761
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2755, metadata !DIExpression()), !dbg !2762
  %12 = load ptr, ptr %4, align 4, !dbg !2763
  %13 = getelementptr inbounds i8, ptr %12, i32 0, !dbg !2765
  store ptr %13, ptr %9, align 4, !dbg !2766
  %14 = load ptr, ptr %9, align 4, !dbg !2767
  store ptr %14, ptr %6, align 4, !dbg !2768
  %15 = load ptr, ptr %5, align 4, !dbg !2769
  %16 = getelementptr inbounds i8, ptr %15, i32 0, !dbg !2771
  store ptr %16, ptr %10, align 4, !dbg !2772
  %17 = load ptr, ptr %10, align 4, !dbg !2773
  store ptr %17, ptr %7, align 4, !dbg !2774
  %18 = load ptr, ptr %6, align 4, !dbg !2775
  %19 = load ptr, ptr %7, align 4, !dbg !2776
  %20 = call i32 @z_sched_prio_cmp(ptr noundef %18, ptr noundef %19) #7, !dbg !2777
  store i32 %20, ptr %8, align 4, !dbg !2778
  %21 = load i32, ptr %8, align 4, !dbg !2779
  %22 = icmp sgt i32 %21, 0, !dbg !2781
  br i1 %22, label %23, label %24, !dbg !2782

23:                                               ; preds = %2
  store i1 true, ptr %3, align 1, !dbg !2783
  store i32 1, ptr %11, align 4
  br label %41, !dbg !2783

24:                                               ; preds = %2
  %25 = load i32, ptr %8, align 4, !dbg !2785
  %26 = icmp slt i32 %25, 0, !dbg !2787
  br i1 %26, label %27, label %28, !dbg !2788

27:                                               ; preds = %24
  store i1 false, ptr %3, align 1, !dbg !2789
  store i32 1, ptr %11, align 4
  br label %41, !dbg !2789

28:                                               ; preds = %24
  %29 = load ptr, ptr %6, align 4, !dbg !2791
  %30 = getelementptr inbounds %struct.k_thread, ptr %29, i32 0, i32 0, !dbg !2793
  %31 = getelementptr inbounds %struct._thread_base, ptr %30, i32 0, i32 5, !dbg !2794
  %32 = load i32, ptr %31, align 8, !dbg !2794
  %33 = load ptr, ptr %7, align 4, !dbg !2795
  %34 = getelementptr inbounds %struct.k_thread, ptr %33, i32 0, i32 0, !dbg !2796
  %35 = getelementptr inbounds %struct._thread_base, ptr %34, i32 0, i32 5, !dbg !2797
  %36 = load i32, ptr %35, align 8, !dbg !2797
  %37 = icmp ult i32 %32, %36, !dbg !2798
  %38 = zext i1 %37 to i64, !dbg !2791
  %39 = select i1 %37, i32 1, i32 0, !dbg !2791
  %40 = icmp ne i32 %39, 0, !dbg !2791
  store i1 %40, ptr %3, align 1, !dbg !2799
  store i32 1, ptr %11, align 4
  br label %41, !dbg !2799

41:                                               ; preds = %28, %27, %23
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #8, !dbg !2800
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #8, !dbg !2800
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #8, !dbg !2800
  %42 = load i1, ptr %3, align 1, !dbg !2800
  ret i1 %42, !dbg !2800
}

; Function Attrs: nounwind optsize
define hidden void @z_priq_rb_add(ptr noundef %0, ptr noundef %1) #1 !dbg !2801 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca %struct._rb_foreach, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2818, metadata !DIExpression()), !dbg !2833
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2819, metadata !DIExpression()), !dbg !2834
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #8, !dbg !2835
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2820, metadata !DIExpression()), !dbg !2836
  %10 = load ptr, ptr %3, align 4, !dbg !2837
  %11 = getelementptr inbounds %struct._priq_rb, ptr %10, i32 0, i32 1, !dbg !2838
  %12 = load i32, ptr %11, align 4, !dbg !2839
  %13 = add nsw i32 %12, 1, !dbg !2839
  store i32 %13, ptr %11, align 4, !dbg !2839
  %14 = load ptr, ptr %4, align 4, !dbg !2840
  %15 = getelementptr inbounds %struct.k_thread, ptr %14, i32 0, i32 0, !dbg !2841
  %16 = getelementptr inbounds %struct._thread_base, ptr %15, i32 0, i32 5, !dbg !2842
  store i32 %12, ptr %16, align 8, !dbg !2843
  %17 = load ptr, ptr %3, align 4, !dbg !2844
  %18 = getelementptr inbounds %struct._priq_rb, ptr %17, i32 0, i32 1, !dbg !2845
  %19 = load i32, ptr %18, align 4, !dbg !2845
  %20 = icmp ne i32 %19, 0, !dbg !2844
  br i1 %20, label %62, label %21, !dbg !2846

21:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 12, ptr %6) #8, !dbg !2847
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2821, metadata !DIExpression()), !dbg !2848
  %22 = getelementptr inbounds %struct._rb_foreach, ptr %6, i32 0, i32 0, !dbg !2849
  %23 = load ptr, ptr %3, align 4, !dbg !2850
  %24 = getelementptr inbounds %struct._priq_rb, ptr %23, i32 0, i32 0, !dbg !2851
  %25 = getelementptr inbounds %struct.rbtree, ptr %24, i32 0, i32 2, !dbg !2852
  %26 = load i32, ptr %25, align 4, !dbg !2852
  %27 = mul i32 %26, 4, !dbg !2853
  %28 = alloca i8, i32 %27, align 8, !dbg !2854
  store ptr %28, ptr %22, align 4, !dbg !2849
  %29 = getelementptr inbounds %struct._rb_foreach, ptr %6, i32 0, i32 1, !dbg !2849
  %30 = load ptr, ptr %3, align 4, !dbg !2855
  %31 = getelementptr inbounds %struct._priq_rb, ptr %30, i32 0, i32 0, !dbg !2856
  %32 = getelementptr inbounds %struct.rbtree, ptr %31, i32 0, i32 2, !dbg !2857
  %33 = load i32, ptr %32, align 4, !dbg !2857
  %34 = mul i32 %33, 1, !dbg !2858
  %35 = alloca i8, i32 %34, align 8, !dbg !2859
  store ptr %35, ptr %29, align 4, !dbg !2849
  %36 = getelementptr inbounds %struct._rb_foreach, ptr %6, i32 0, i32 2, !dbg !2849
  store i32 -1, ptr %36, align 4, !dbg !2849
  br label %37, !dbg !2847

37:                                               ; preds = %53, %21
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #8, !dbg !2860
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2830, metadata !DIExpression()), !dbg !2861
  %38 = load ptr, ptr %3, align 4, !dbg !2862
  %39 = getelementptr inbounds %struct._priq_rb, ptr %38, i32 0, i32 0, !dbg !2863
  %40 = call ptr @z_rb_foreach_next(ptr noundef %39, ptr noundef %6) #7, !dbg !2864
  store ptr %40, ptr %7, align 4, !dbg !2861
  %41 = load ptr, ptr %7, align 4, !dbg !2865
  %42 = icmp ne ptr %41, null, !dbg !2865
  br i1 %42, label %43, label %47, !dbg !2865

43:                                               ; preds = %37
  %44 = load ptr, ptr %7, align 4, !dbg !2866
  %45 = getelementptr inbounds i8, ptr %44, i32 0, !dbg !2868
  store ptr %45, ptr %9, align 4, !dbg !2869
  %46 = load ptr, ptr %9, align 4, !dbg !2870
  br label %48, !dbg !2865

47:                                               ; preds = %37
  br label %48, !dbg !2865

48:                                               ; preds = %47, %43
  %49 = phi ptr [ %46, %43 ], [ null, %47 ], !dbg !2865
  store ptr %49, ptr %5, align 4, !dbg !2871
  store ptr %49, ptr %8, align 4, !dbg !2860
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #8, !dbg !2872
  %50 = load ptr, ptr %8, align 4, !dbg !2873
  %51 = icmp ne ptr %50, null, !dbg !2874
  br i1 %51, label %53, label %52, !dbg !2875

52:                                               ; preds = %48
  call void @llvm.lifetime.end.p0(i64 12, ptr %6) #8, !dbg !2876
  br label %61

53:                                               ; preds = %48
  %54 = load ptr, ptr %3, align 4, !dbg !2877
  %55 = getelementptr inbounds %struct._priq_rb, ptr %54, i32 0, i32 1, !dbg !2879
  %56 = load i32, ptr %55, align 4, !dbg !2880
  %57 = add nsw i32 %56, 1, !dbg !2880
  store i32 %57, ptr %55, align 4, !dbg !2880
  %58 = load ptr, ptr %5, align 4, !dbg !2881
  %59 = getelementptr inbounds %struct.k_thread, ptr %58, i32 0, i32 0, !dbg !2882
  %60 = getelementptr inbounds %struct._thread_base, ptr %59, i32 0, i32 5, !dbg !2883
  store i32 %56, ptr %60, align 8, !dbg !2884
  br label %37, !dbg !2876, !llvm.loop !2885

61:                                               ; preds = %52
  br label %62, !dbg !2887

62:                                               ; preds = %61, %2
  %63 = load ptr, ptr %3, align 4, !dbg !2888
  %64 = getelementptr inbounds %struct._priq_rb, ptr %63, i32 0, i32 0, !dbg !2889
  %65 = load ptr, ptr %4, align 4, !dbg !2890
  %66 = getelementptr inbounds %struct.k_thread, ptr %65, i32 0, i32 0, !dbg !2891
  %67 = getelementptr inbounds %struct._thread_base, ptr %66, i32 0, i32 0, !dbg !2892
  call void @rb_insert(ptr noundef %64, ptr noundef %67) #7, !dbg !2893
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #8, !dbg !2894
  ret void, !dbg !2894
}

; Function Attrs: optsize
declare !dbg !2895 dso_local ptr @z_rb_foreach_next(ptr noundef, ptr noundef) #4

; Function Attrs: optsize
declare !dbg !2900 dso_local void @rb_insert(ptr noundef, ptr noundef) #4

; Function Attrs: nounwind optsize
define hidden void @z_priq_rb_remove(ptr noundef %0, ptr noundef %1) #1 !dbg !2903 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2905, metadata !DIExpression()), !dbg !2907
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2906, metadata !DIExpression()), !dbg !2908
  %5 = load ptr, ptr %3, align 4, !dbg !2909
  %6 = getelementptr inbounds %struct._priq_rb, ptr %5, i32 0, i32 0, !dbg !2910
  %7 = load ptr, ptr %4, align 4, !dbg !2911
  %8 = getelementptr inbounds %struct.k_thread, ptr %7, i32 0, i32 0, !dbg !2912
  %9 = getelementptr inbounds %struct._thread_base, ptr %8, i32 0, i32 0, !dbg !2913
  call void @rb_remove(ptr noundef %6, ptr noundef %9) #7, !dbg !2914
  %10 = load ptr, ptr %3, align 4, !dbg !2915
  %11 = getelementptr inbounds %struct._priq_rb, ptr %10, i32 0, i32 0, !dbg !2917
  %12 = getelementptr inbounds %struct.rbtree, ptr %11, i32 0, i32 0, !dbg !2918
  %13 = load ptr, ptr %12, align 4, !dbg !2918
  %14 = icmp ne ptr %13, null, !dbg !2915
  br i1 %14, label %18, label %15, !dbg !2919

15:                                               ; preds = %2
  %16 = load ptr, ptr %3, align 4, !dbg !2920
  %17 = getelementptr inbounds %struct._priq_rb, ptr %16, i32 0, i32 1, !dbg !2922
  store i32 0, ptr %17, align 4, !dbg !2923
  br label %18, !dbg !2924

18:                                               ; preds = %15, %2
  ret void, !dbg !2925
}

; Function Attrs: optsize
declare !dbg !2926 dso_local void @rb_remove(ptr noundef, ptr noundef) #4

; Function Attrs: nounwind optsize
define hidden ptr @z_priq_rb_best(ptr noundef %0) #1 !dbg !2927 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2931, metadata !DIExpression()), !dbg !2934
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #8, !dbg !2935
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2932, metadata !DIExpression()), !dbg !2936
  store ptr null, ptr %3, align 4, !dbg !2936
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #8, !dbg !2937
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2933, metadata !DIExpression()), !dbg !2938
  %6 = load ptr, ptr %2, align 4, !dbg !2939
  %7 = getelementptr inbounds %struct._priq_rb, ptr %6, i32 0, i32 0, !dbg !2940
  %8 = call ptr @rb_get_min(ptr noundef %7) #7, !dbg !2941
  store ptr %8, ptr %4, align 4, !dbg !2938
  %9 = load ptr, ptr %4, align 4, !dbg !2942
  %10 = icmp ne ptr %9, null, !dbg !2944
  br i1 %10, label %11, label %15, !dbg !2945

11:                                               ; preds = %1
  %12 = load ptr, ptr %4, align 4, !dbg !2946
  %13 = getelementptr inbounds i8, ptr %12, i32 0, !dbg !2949
  store ptr %13, ptr %5, align 4, !dbg !2950
  %14 = load ptr, ptr %5, align 4, !dbg !2951
  store ptr %14, ptr %3, align 4, !dbg !2952
  br label %15, !dbg !2953

15:                                               ; preds = %11, %1
  %16 = load ptr, ptr %3, align 4, !dbg !2954
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #8, !dbg !2955
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #8, !dbg !2955
  ret ptr %16, !dbg !2956
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @rb_get_min(ptr noundef %0) #0 !dbg !2957 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2961, metadata !DIExpression()), !dbg !2962
  %3 = load ptr, ptr %2, align 4, !dbg !2963
  %4 = call ptr @z_rb_get_minmax(ptr noundef %3, i8 noundef zeroext 0) #7, !dbg !2964
  ret ptr %4, !dbg !2965
}

; Function Attrs: nounwind optsize
define hidden ptr @z_priq_mq_best(ptr noundef %0) #1 !dbg !2966 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2978, metadata !DIExpression()), !dbg !2982
  %8 = load ptr, ptr %3, align 4, !dbg !2983
  %9 = getelementptr inbounds %struct._priq_mq, ptr %8, i32 0, i32 1, !dbg !2985
  %10 = load i32, ptr %9, align 4, !dbg !2985
  %11 = icmp ne i32 %10, 0, !dbg !2983
  br i1 %11, label %13, label %12, !dbg !2986

12:                                               ; preds = %1
  store ptr null, ptr %2, align 4, !dbg !2987
  br label %31, !dbg !2987

13:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #8, !dbg !2989
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2979, metadata !DIExpression()), !dbg !2990
  store ptr null, ptr %4, align 4, !dbg !2990
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #8, !dbg !2991
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2980, metadata !DIExpression()), !dbg !2992
  %14 = load ptr, ptr %3, align 4, !dbg !2993
  %15 = getelementptr inbounds %struct._priq_mq, ptr %14, i32 0, i32 0, !dbg !2994
  %16 = load ptr, ptr %3, align 4, !dbg !2995
  %17 = getelementptr inbounds %struct._priq_mq, ptr %16, i32 0, i32 1, !dbg !2996
  %18 = load i32, ptr %17, align 4, !dbg !2996
  %19 = call i32 @llvm.cttz.i32(i32 %18, i1 false), !dbg !2997
  %20 = getelementptr inbounds [32 x %struct._dnode], ptr %15, i32 0, i32 %19, !dbg !2993
  store ptr %20, ptr %5, align 4, !dbg !2992
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #8, !dbg !2998
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2981, metadata !DIExpression()), !dbg !2999
  %21 = load ptr, ptr %5, align 4, !dbg !3000
  %22 = call ptr @sys_dlist_peek_head(ptr noundef %21) #7, !dbg !3001
  store ptr %22, ptr %6, align 4, !dbg !2999
  %23 = load ptr, ptr %6, align 4, !dbg !3002
  %24 = icmp ne ptr %23, null, !dbg !3004
  br i1 %24, label %25, label %29, !dbg !3005

25:                                               ; preds = %13
  %26 = load ptr, ptr %6, align 4, !dbg !3006
  %27 = getelementptr inbounds i8, ptr %26, i32 0, !dbg !3009
  store ptr %27, ptr %7, align 4, !dbg !3010
  %28 = load ptr, ptr %7, align 4, !dbg !3011
  store ptr %28, ptr %4, align 4, !dbg !3012
  br label %29, !dbg !3013

29:                                               ; preds = %25, %13
  %30 = load ptr, ptr %4, align 4, !dbg !3014
  store ptr %30, ptr %2, align 4, !dbg !3015
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #8, !dbg !3016
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #8, !dbg !3016
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #8, !dbg !3016
  br label %31

31:                                               ; preds = %29, %12
  %32 = load ptr, ptr %2, align 4, !dbg !3016
  ret ptr %32, !dbg !3016
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #2

; Function Attrs: nounwind optsize
define hidden i32 @z_unpend_all(ptr noundef %0) #1 !dbg !3017 {
  %2 = alloca ptr, align 4
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3021, metadata !DIExpression()), !dbg !3024
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #8, !dbg !3025
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3022, metadata !DIExpression()), !dbg !3026
  store i32 0, ptr %3, align 4, !dbg !3026
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #8, !dbg !3027
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3023, metadata !DIExpression()), !dbg !3028
  br label %5, !dbg !3029

5:                                                ; preds = %9, %1
  %6 = load ptr, ptr %2, align 4, !dbg !3030
  %7 = call ptr @z_waitq_head(ptr noundef %6) #7, !dbg !3031
  store ptr %7, ptr %4, align 4, !dbg !3032
  %8 = icmp ne ptr %7, null, !dbg !3033
  br i1 %8, label %9, label %12, !dbg !3029

9:                                                ; preds = %5
  %10 = load ptr, ptr %4, align 4, !dbg !3034
  call void @z_unpend_thread(ptr noundef %10) #7, !dbg !3036
  %11 = load ptr, ptr %4, align 4, !dbg !3037
  call void @z_ready_thread(ptr noundef %11) #7, !dbg !3038
  store i32 1, ptr %3, align 4, !dbg !3039
  br label %5, !dbg !3029, !llvm.loop !3040

12:                                               ; preds = %5
  %13 = load i32, ptr %3, align 4, !dbg !3042
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #8, !dbg !3043
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #8, !dbg !3043
  ret i32 %13, !dbg !3044
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_waitq_head(ptr noundef %0) #0 !dbg !3045 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3048, metadata !DIExpression()), !dbg !3049
  %3 = load ptr, ptr %2, align 4, !dbg !3050
  %4 = getelementptr inbounds %struct._wait_q_t, ptr %3, i32 0, i32 0, !dbg !3051
  %5 = call ptr @sys_dlist_peek_head(ptr noundef %4) #7, !dbg !3052
  ret ptr %5, !dbg !3053
}

; Function Attrs: nounwind optsize
define hidden void @init_ready_q(ptr noundef %0) #1 !dbg !3054 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3063, metadata !DIExpression()), !dbg !3064
  %3 = load ptr, ptr %2, align 4, !dbg !3065
  %4 = getelementptr inbounds %struct._ready_q, ptr %3, i32 0, i32 1, !dbg !3066
  call void @sys_dlist_init(ptr noundef %4) #7, !dbg !3067
  ret void, !dbg !3068
}

; Function Attrs: inlinehint nounwind optsize
define internal void @sys_dlist_init(ptr noundef %0) #0 !dbg !3069 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3073, metadata !DIExpression()), !dbg !3074
  %3 = load ptr, ptr %2, align 4, !dbg !3075
  %4 = load ptr, ptr %2, align 4, !dbg !3076
  %5 = getelementptr inbounds %struct._dnode, ptr %4, i32 0, i32 0, !dbg !3077
  store ptr %3, ptr %5, align 4, !dbg !3078
  %6 = load ptr, ptr %2, align 4, !dbg !3079
  %7 = load ptr, ptr %2, align 4, !dbg !3080
  %8 = getelementptr inbounds %struct._dnode, ptr %7, i32 0, i32 1, !dbg !3081
  store ptr %6, ptr %8, align 4, !dbg !3082
  ret void, !dbg !3083
}

; Function Attrs: nounwind optsize
define hidden void @z_sched_init() #1 !dbg !3084 {
  call void @init_ready_q(ptr noundef getelementptr inbounds (%struct.z_kernel, ptr @_kernel, i32 0, i32 1)) #7, !dbg !3085
  ret void, !dbg !3086
}

; Function Attrs: nounwind optsize
define hidden i32 @z_impl_k_thread_priority_get(ptr noundef %0) #1 !dbg !3087 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3092, metadata !DIExpression()), !dbg !3093
  %3 = load ptr, ptr %2, align 4, !dbg !3094
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !3095
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 4, !dbg !3096
  %6 = getelementptr inbounds %struct.anon, ptr %5, i32 0, i32 0, !dbg !3096
  %7 = load i8, ptr %6, align 2, !dbg !3096
  %8 = sext i8 %7 to i32, !dbg !3094
  ret i32 %8, !dbg !3097
}

; Function Attrs: nounwind optsize
define hidden void @z_impl_k_thread_priority_set(ptr noundef %0, i32 noundef %1) #1 !dbg !3098 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3102, metadata !DIExpression()), !dbg !3105
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3103, metadata !DIExpression()), !dbg !3106
  br label %6, !dbg !3107

6:                                                ; preds = %2
  br label %7, !dbg !3108

7:                                                ; preds = %6
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #8, !dbg !3110
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3104, metadata !DIExpression()), !dbg !3111
  %8 = load ptr, ptr %3, align 4, !dbg !3112
  store ptr %8, ptr %5, align 4, !dbg !3111
  %9 = load ptr, ptr %5, align 4, !dbg !3113
  %10 = load i32, ptr %4, align 4, !dbg !3114
  call void @z_thread_priority_set(ptr noundef %9, i32 noundef %10) #7, !dbg !3115
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #8, !dbg !3116
  ret void, !dbg !3116
}

; Function Attrs: nounwind optsize
define hidden zeroext i1 @k_can_yield() #1 !dbg !3117 {
  %1 = call zeroext i1 @k_is_pre_kernel() #7, !dbg !3118
  br i1 %1, label %7, label %2, !dbg !3119

2:                                                ; preds = %0
  %3 = call zeroext i1 @k_is_in_isr() #7, !dbg !3120
  br i1 %3, label %7, label %4, !dbg !3121

4:                                                ; preds = %2
  %5 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !3122
  %6 = call zeroext i1 @z_is_idle_thread_object(ptr noundef %5) #7, !dbg !3123
  br label %7, !dbg !3121

7:                                                ; preds = %4, %2, %0
  %8 = phi i1 [ true, %2 ], [ true, %0 ], [ %6, %4 ]
  %9 = xor i1 %8, true, !dbg !3124
  ret i1 %9, !dbg !3125
}

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @k_is_pre_kernel() #0 !dbg !3126 {
  %1 = load i8, ptr @z_sys_post_kernel, align 1, !dbg !3127, !range !548, !noundef !213
  %2 = trunc i8 %1 to i1, !dbg !3127
  %3 = xor i1 %2, true, !dbg !3128
  ret i1 %3, !dbg !3129
}

; Function Attrs: optsize
declare !dbg !3130 dso_local zeroext i1 @k_is_in_isr() #4

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @z_is_idle_thread_object(ptr noundef %0) #0 !dbg !3131 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3133, metadata !DIExpression()), !dbg !3134
  %3 = load ptr, ptr %2, align 4, !dbg !3135
  %4 = icmp eq ptr %3, @z_idle_threads, !dbg !3136
  ret i1 %4, !dbg !3137
}

; Function Attrs: nounwind optsize
define hidden void @z_impl_k_yield() #1 !dbg !3138 {
  %1 = alloca ptr, align 4
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  %11 = alloca ptr, align 4
  %12 = alloca ptr, align 4
  %13 = alloca i32, align 4
  %14 = alloca ptr, align 4
  %15 = alloca ptr, align 4
  %16 = alloca %struct.z_spinlock_key, align 4
  %17 = alloca ptr, align 4
  %18 = alloca ptr, align 4
  %19 = alloca %struct.z_spinlock_key, align 4
  %20 = alloca ptr, align 4
  %21 = alloca %struct.z_spinlock_key, align 4
  br label %22, !dbg !3141

22:                                               ; preds = %0
  br label %23, !dbg !3142

23:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 4, ptr %21) #8, !dbg !3144
  call void @llvm.dbg.declare(metadata ptr %21, metadata !3140, metadata !DIExpression()), !dbg !3145
  store ptr @sched_spinlock, ptr %20, align 4
  call void @llvm.dbg.declare(metadata ptr %20, metadata !603, metadata !DIExpression()), !dbg !3146
  %24 = load ptr, ptr %20, align 4, !dbg !3148
  call void @llvm.dbg.declare(metadata ptr %19, metadata !609, metadata !DIExpression()), !dbg !3149
  call void @llvm.lifetime.start.p0(i64 4, ptr %13) #8, !dbg !3150
  call void @llvm.dbg.declare(metadata ptr %13, metadata !620, metadata !DIExpression()), !dbg !3152
  %25 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #8, !dbg !3153, !srcloc !624
  store i32 %25, ptr %13, align 4, !dbg !3153
  %26 = load i32, ptr %13, align 4, !dbg !3154
  call void @llvm.lifetime.end.p0(i64 4, ptr %13) #8, !dbg !3155
  store i32 %26, ptr %19, align 4, !dbg !3156
  %27 = load ptr, ptr %20, align 4, !dbg !3157
  store ptr %27, ptr %12, align 4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !629, metadata !DIExpression()), !dbg !3158
  %28 = load ptr, ptr %12, align 4, !dbg !3160
  %29 = load ptr, ptr %20, align 4, !dbg !3161
  store ptr %29, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !638, metadata !DIExpression()), !dbg !3162
  %30 = load ptr, ptr %11, align 4, !dbg !3164
  %31 = load i32, ptr %19, align 4, !dbg !3165
  %32 = getelementptr inbounds %struct.z_spinlock_key, ptr %21, i32 0, i32 0, !dbg !3166
  store i32 %31, ptr %32, align 4, !dbg !3166
  %33 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !3167
  store ptr %33, ptr %18, align 4
  call void @llvm.dbg.declare(metadata ptr %18, metadata !809, metadata !DIExpression()), !dbg !3170
  %34 = load ptr, ptr %18, align 4, !dbg !3172
  %35 = getelementptr inbounds %struct._thread_base, ptr %34, i32 0, i32 3, !dbg !3173
  %36 = load i8, ptr %35, align 1, !dbg !3174
  %37 = zext i8 %36 to i32, !dbg !3174
  %38 = and i32 %37, -129, !dbg !3174
  %39 = trunc i32 %38 to i8, !dbg !3174
  store i8 %39, ptr %35, align 1, !dbg !3174
  %40 = load ptr, ptr %18, align 4, !dbg !3175
  %41 = call zeroext i1 @should_queue_thread(ptr noundef %40) #7, !dbg !3176
  br i1 %41, label %42, label %dequeue_thread.exit, !dbg !3177

42:                                               ; preds = %23
  %43 = load ptr, ptr %18, align 4, !dbg !3178
  store ptr %43, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !823, metadata !DIExpression()), !dbg !3179
  %44 = load ptr, ptr %10, align 4, !dbg !3181
  store ptr %44, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !829, metadata !DIExpression()), !dbg !3182
  %45 = load ptr, ptr %9, align 4, !dbg !3184
  %46 = load ptr, ptr %10, align 4, !dbg !3185
  call void @z_priq_dumb_remove(ptr noundef getelementptr inbounds (%struct.z_kernel, ptr @_kernel, i32 0, i32 1, i32 1), ptr noundef %46) #7, !dbg !3186
  br label %dequeue_thread.exit, !dbg !3187

dequeue_thread.exit:                              ; preds = %23, %42
  %47 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !3188
  store ptr %47, ptr %14, align 4
  call void @llvm.dbg.declare(metadata ptr %14, metadata !842, metadata !DIExpression()), !dbg !3189
  %48 = load ptr, ptr %14, align 4, !dbg !3191
  %49 = getelementptr inbounds %struct._thread_base, ptr %48, i32 0, i32 3, !dbg !3192
  %50 = load i8, ptr %49, align 1, !dbg !3193
  %51 = zext i8 %50 to i32, !dbg !3193
  %52 = or i32 %51, 128, !dbg !3193
  %53 = trunc i32 %52 to i8, !dbg !3193
  store i8 %53, ptr %49, align 1, !dbg !3193
  %54 = load ptr, ptr %14, align 4, !dbg !3194
  %55 = call zeroext i1 @should_queue_thread(ptr noundef %54) #7, !dbg !3195
  br i1 %55, label %56, label %queue_thread.exit, !dbg !3196

56:                                               ; preds = %dequeue_thread.exit
  %57 = load ptr, ptr %14, align 4, !dbg !3197
  store ptr %57, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !856, metadata !DIExpression()), !dbg !3198
  %58 = load ptr, ptr %8, align 4, !dbg !3200
  store ptr %58, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !829, metadata !DIExpression()), !dbg !3201
  %59 = load ptr, ptr %7, align 4, !dbg !3203
  %60 = load ptr, ptr %8, align 4, !dbg !3204
  store ptr getelementptr inbounds (%struct.z_kernel, ptr @_kernel, i32 0, i32 1, i32 1), ptr %1, align 4
  call void @llvm.dbg.declare(metadata ptr %1, metadata !866, metadata !DIExpression()), !dbg !3205
  store ptr %60, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !872, metadata !DIExpression()), !dbg !3207
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #8, !dbg !3208
  call void @llvm.dbg.declare(metadata ptr %3, metadata !873, metadata !DIExpression()), !dbg !3209
  %61 = load ptr, ptr %1, align 4, !dbg !3210
  %62 = call ptr @sys_dlist_peek_head(ptr noundef %61) #7, !dbg !3211
  %63 = icmp ne ptr %62, null, !dbg !3212
  br i1 %63, label %64, label %68, !dbg !3213

64:                                               ; preds = %56
  %65 = load ptr, ptr %1, align 4, !dbg !3214
  %66 = call ptr @sys_dlist_peek_head(ptr noundef %65) #7, !dbg !3215
  store ptr %66, ptr %4, align 4, !dbg !3216
  %67 = load ptr, ptr %4, align 4, !dbg !3217
  br label %69, !dbg !3213

68:                                               ; preds = %56
  br label %69, !dbg !3213

69:                                               ; preds = %68, %64
  %70 = phi ptr [ %67, %64 ], [ null, %68 ], !dbg !3213
  store ptr %70, ptr %3, align 4, !dbg !3218
  br label %71, !dbg !3219

71:                                               ; preds = %99, %69
  %72 = load ptr, ptr %3, align 4, !dbg !3220
  %73 = icmp ne ptr %72, null, !dbg !3221
  br i1 %73, label %74, label %101, !dbg !3222

74:                                               ; preds = %71
  %75 = load ptr, ptr %2, align 4, !dbg !3223
  %76 = load ptr, ptr %3, align 4, !dbg !3224
  %77 = call i32 @z_sched_prio_cmp(ptr noundef %75, ptr noundef %76) #7, !dbg !3225
  %78 = icmp sgt i32 %77, 0, !dbg !3226
  br i1 %78, label %79, label %82, !dbg !3227

79:                                               ; preds = %74
  %80 = load ptr, ptr %3, align 4, !dbg !3228
  %81 = load ptr, ptr %2, align 4, !dbg !3229
  call void @sys_dlist_insert(ptr noundef %80, ptr noundef %81) #7, !dbg !3230
  store i32 1, ptr %5, align 4
  br label %z_priq_dumb_add.exit, !dbg !3231

82:                                               ; preds = %74
  %83 = load ptr, ptr %3, align 4, !dbg !3232
  %84 = icmp ne ptr %83, null, !dbg !3233
  br i1 %84, label %85, label %98, !dbg !3234

85:                                               ; preds = %82
  %86 = load ptr, ptr %1, align 4, !dbg !3235
  %87 = load ptr, ptr %3, align 4, !dbg !3236
  %88 = call ptr @sys_dlist_peek_next(ptr noundef %86, ptr noundef %87) #7, !dbg !3237
  %89 = icmp ne ptr %88, null, !dbg !3238
  br i1 %89, label %90, label %95, !dbg !3239

90:                                               ; preds = %85
  %91 = load ptr, ptr %1, align 4, !dbg !3240
  %92 = load ptr, ptr %3, align 4, !dbg !3241
  %93 = call ptr @sys_dlist_peek_next(ptr noundef %91, ptr noundef %92) #7, !dbg !3242
  store ptr %93, ptr %6, align 4, !dbg !3243
  %94 = load ptr, ptr %6, align 4, !dbg !3244
  br label %96, !dbg !3239

95:                                               ; preds = %85
  br label %96, !dbg !3239

96:                                               ; preds = %95, %90
  %97 = phi ptr [ %94, %90 ], [ null, %95 ], !dbg !3239
  br label %99, !dbg !3234

98:                                               ; preds = %82
  br label %99, !dbg !3234

99:                                               ; preds = %98, %96
  %100 = phi ptr [ %97, %96 ], [ null, %98 ], !dbg !3234
  store ptr %100, ptr %3, align 4, !dbg !3245
  br label %71, !dbg !3246, !llvm.loop !3247

101:                                              ; preds = %71
  %102 = load ptr, ptr %1, align 4, !dbg !3249
  %103 = load ptr, ptr %2, align 4, !dbg !3250
  call void @sys_dlist_append(ptr noundef %102, ptr noundef %103) #7, !dbg !3251
  store i32 0, ptr %5, align 4, !dbg !3252
  br label %z_priq_dumb_add.exit, !dbg !3252

z_priq_dumb_add.exit:                             ; preds = %79, %101
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #8, !dbg !3252
  %104 = load i32, ptr %5, align 4
  br label %queue_thread.exit, !dbg !3253

queue_thread.exit:                                ; preds = %dequeue_thread.exit, %z_priq_dumb_add.exit
  call void @update_cache(i32 noundef 1) #7, !dbg !3254
  %105 = getelementptr inbounds %struct.z_spinlock_key, ptr %21, i32 0, i32 0, !dbg !3255
  %106 = load [1 x i32], ptr %105, align 4, !dbg !3255
  store [1 x i32] %106, ptr %16, align 4
  store ptr @sched_spinlock, ptr %17, align 4
  call void @llvm.dbg.declare(metadata ptr %17, metadata !1238, metadata !DIExpression()), !dbg !3256
  call void @llvm.dbg.declare(metadata ptr %16, metadata !1244, metadata !DIExpression()), !dbg !3258
  %107 = load ptr, ptr %17, align 4, !dbg !3259
  store ptr %107, ptr %15, align 4
  call void @llvm.dbg.declare(metadata ptr %15, metadata !1249, metadata !DIExpression()), !dbg !3260
  %108 = load ptr, ptr %15, align 4, !dbg !3262
  %109 = load i32, ptr %16, align 4, !dbg !3263
  %110 = call i32 @z_swap_irqlock(i32 noundef %109) #7, !dbg !3264
  call void @llvm.lifetime.end.p0(i64 4, ptr %21) #8, !dbg !3265
  ret void, !dbg !3265
}

; Function Attrs: nounwind optsize
define hidden i32 @z_impl_k_sleep([1 x i64] %0) #1 !dbg !3266 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.k_timeout_t, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.k_timeout_t, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.k_timeout_t, ptr %3, i32 0, i32 0
  store [1 x i64] %0, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3270, metadata !DIExpression()), !dbg !3273
  call void @llvm.lifetime.start.p0(i64 8, ptr %4) #8, !dbg !3274
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3271, metadata !DIExpression()), !dbg !3275
  br label %9, !dbg !3276

9:                                                ; preds = %1
  br label %10, !dbg !3277

10:                                               ; preds = %9
  br label %11, !dbg !3277

11:                                               ; preds = %10
  %12 = getelementptr inbounds %struct.k_timeout_t, ptr %3, i32 0, i32 0, !dbg !3279
  %13 = load i64, ptr %12, align 8, !dbg !3279
  %14 = getelementptr inbounds %struct.k_timeout_t, ptr %5, i32 0, i32 0, !dbg !3281
  store i64 -1, ptr %14, align 8, !dbg !3281
  %15 = icmp eq i64 %13, -1, !dbg !3282
  br i1 %15, label %16, label %21, !dbg !3283

16:                                               ; preds = %11
  %17 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !3284
  call void @k_thread_suspend(ptr noundef %17) #7, !dbg !3286
  br label %18, !dbg !3287

18:                                               ; preds = %16
  br label %19, !dbg !3288

19:                                               ; preds = %18
  br label %20, !dbg !3288

20:                                               ; preds = %19
  store i32 -1, ptr %2, align 4, !dbg !3290
  store i32 1, ptr %6, align 4
  br label %35, !dbg !3290

21:                                               ; preds = %11
  %22 = getelementptr inbounds %struct.k_timeout_t, ptr %3, i32 0, i32 0, !dbg !3291
  %23 = load i64, ptr %22, align 8, !dbg !3291
  store i64 %23, ptr %4, align 8, !dbg !3292
  %24 = load i64, ptr %4, align 8, !dbg !3293
  %25 = call i32 @z_tick_sleep(i64 noundef %24) #7, !dbg !3294
  %26 = sext i32 %25 to i64, !dbg !3294
  store i64 %26, ptr %4, align 8, !dbg !3295
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #8, !dbg !3296
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3272, metadata !DIExpression()), !dbg !3297
  %27 = load i64, ptr %4, align 8, !dbg !3298
  %28 = add i64 %27, 0, !dbg !3299
  %29 = udiv i64 %28, 10, !dbg !3300
  %30 = trunc i64 %29 to i32, !dbg !3301
  store i32 %30, ptr %7, align 4, !dbg !3297
  br label %31, !dbg !3302

31:                                               ; preds = %21
  br label %32, !dbg !3303

32:                                               ; preds = %31
  br label %33, !dbg !3303

33:                                               ; preds = %32
  %34 = load i32, ptr %7, align 4, !dbg !3305
  store i32 %34, ptr %2, align 4, !dbg !3306
  store i32 1, ptr %6, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #8, !dbg !3307
  br label %35

35:                                               ; preds = %33, %20
  call void @llvm.lifetime.end.p0(i64 8, ptr %4) #8, !dbg !3307
  %36 = load i32, ptr %2, align 4, !dbg !3307
  ret i32 %36, !dbg !3307
}

; Function Attrs: inlinehint nounwind optsize
define internal void @k_thread_suspend(ptr noundef %0) #0 !dbg !3308 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3313, metadata !DIExpression()), !dbg !3314
  br label %3, !dbg !3315

3:                                                ; preds = %1
  call void asm sideeffect "", "~{memory}"() #8, !dbg !3316, !srcloc !3318
  br label %4, !dbg !3319

4:                                                ; preds = %3
  %5 = load ptr, ptr %2, align 4, !dbg !3320
  call void @z_impl_k_thread_suspend(ptr noundef %5) #7, !dbg !3321
  ret void, !dbg !3322
}

; Function Attrs: nounwind optsize
define internal i32 @z_tick_sleep(i64 noundef %0) #1 !dbg !3323 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = alloca %struct.z_spinlock_key, align 4
  %7 = alloca ptr, align 4
  %8 = alloca %struct.z_spinlock_key, align 4
  %9 = alloca ptr, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  %15 = alloca ptr, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.k_timeout_t, align 8
  %18 = alloca %struct.z_spinlock_key, align 4
  store i64 %0, ptr %11, align 8
  call void @llvm.dbg.declare(metadata ptr %11, metadata !3327, metadata !DIExpression()), !dbg !3331
  call void @llvm.lifetime.start.p0(i64 4, ptr %12) #8, !dbg !3332
  call void @llvm.dbg.declare(metadata ptr %12, metadata !3328, metadata !DIExpression()), !dbg !3333
  br label %19, !dbg !3334

19:                                               ; preds = %1
  br label %21, !dbg !3335

20:                                               ; No predecessors!
  br label %21, !dbg !3339

21:                                               ; preds = %20, %19
  %22 = load i64, ptr %11, align 8, !dbg !3340
  %23 = icmp eq i64 %22, 0, !dbg !3342
  br i1 %23, label %24, label %25, !dbg !3343

24:                                               ; preds = %21
  call void @k_yield() #7, !dbg !3344
  store i32 0, ptr %10, align 4, !dbg !3346
  store i32 1, ptr %16, align 4
  br label %75, !dbg !3346

25:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 8, ptr %17) #8, !dbg !3347
  call void @llvm.dbg.declare(metadata ptr %17, metadata !3329, metadata !DIExpression()), !dbg !3348
  %26 = getelementptr inbounds %struct.k_timeout_t, ptr %17, i32 0, i32 0, !dbg !3349
  %27 = load i64, ptr %11, align 8, !dbg !3350
  store i64 %27, ptr %26, align 8, !dbg !3349
  %28 = load i64, ptr %11, align 8, !dbg !3351
  %29 = sub nsw i64 -2, %28, !dbg !3353
  %30 = icmp sle i64 %29, 0, !dbg !3354
  br i1 %30, label %31, label %37, !dbg !3355

31:                                               ; preds = %25
  %32 = load i64, ptr %11, align 8, !dbg !3356
  %33 = call i32 @sys_clock_tick_get_32() #7, !dbg !3358
  %34 = zext i32 %33 to i64, !dbg !3358
  %35 = add nsw i64 %32, %34, !dbg !3359
  %36 = trunc i64 %35 to i32, !dbg !3356
  store i32 %36, ptr %12, align 4, !dbg !3360
  br label %41, !dbg !3361

37:                                               ; preds = %25
  %38 = load i64, ptr %11, align 8, !dbg !3362
  %39 = sub nsw i64 -2, %38, !dbg !3364
  %40 = trunc i64 %39 to i32, !dbg !3365
  store i32 %40, ptr %12, align 4, !dbg !3366
  br label %41

41:                                               ; preds = %37, %31
  call void @llvm.lifetime.start.p0(i64 4, ptr %18) #8, !dbg !3367
  call void @llvm.dbg.declare(metadata ptr %18, metadata !3330, metadata !DIExpression()), !dbg !3368
  store ptr @sched_spinlock, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !603, metadata !DIExpression()), !dbg !3369
  %42 = load ptr, ptr %9, align 4, !dbg !3371
  call void @llvm.dbg.declare(metadata ptr %8, metadata !609, metadata !DIExpression()), !dbg !3372
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #8, !dbg !3373
  call void @llvm.dbg.declare(metadata ptr %4, metadata !620, metadata !DIExpression()), !dbg !3375
  %43 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #8, !dbg !3376, !srcloc !624
  store i32 %43, ptr %4, align 4, !dbg !3376
  %44 = load i32, ptr %4, align 4, !dbg !3377
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #8, !dbg !3378
  store i32 %44, ptr %8, align 4, !dbg !3379
  %45 = load ptr, ptr %9, align 4, !dbg !3380
  store ptr %45, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !629, metadata !DIExpression()), !dbg !3381
  %46 = load ptr, ptr %3, align 4, !dbg !3383
  %47 = load ptr, ptr %9, align 4, !dbg !3384
  store ptr %47, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !638, metadata !DIExpression()), !dbg !3385
  %48 = load ptr, ptr %2, align 4, !dbg !3387
  %49 = load i32, ptr %8, align 4, !dbg !3388
  %50 = getelementptr inbounds %struct.z_spinlock_key, ptr %18, i32 0, i32 0, !dbg !3389
  store i32 %49, ptr %50, align 4, !dbg !3389
  %51 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !3390
  store ptr %51, ptr @pending_current, align 4, !dbg !3391
  %52 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !3392
  call void @unready_thread(ptr noundef %52) #7, !dbg !3393
  %53 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !3394
  %54 = getelementptr inbounds %struct.k_timeout_t, ptr %17, i32 0, i32 0, !dbg !3395
  %55 = load [1 x i64], ptr %54, align 8, !dbg !3395
  call void @z_add_thread_timeout(ptr noundef %53, [1 x i64] %55) #7, !dbg !3395
  %56 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !3396
  call void @z_mark_thread_as_suspended(ptr noundef %56) #7, !dbg !3397
  %57 = getelementptr inbounds %struct.z_spinlock_key, ptr %18, i32 0, i32 0, !dbg !3398
  %58 = load [1 x i32], ptr %57, align 4, !dbg !3398
  store [1 x i32] %58, ptr %6, align 4
  store ptr @sched_spinlock, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1238, metadata !DIExpression()), !dbg !3399
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1244, metadata !DIExpression()), !dbg !3401
  %59 = load ptr, ptr %7, align 4, !dbg !3402
  store ptr %59, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1249, metadata !DIExpression()), !dbg !3403
  %60 = load ptr, ptr %5, align 4, !dbg !3405
  %61 = load i32, ptr %6, align 4, !dbg !3406
  %62 = call i32 @z_swap_irqlock(i32 noundef %61) #7, !dbg !3407
  %63 = load i32, ptr %12, align 4, !dbg !3408
  %64 = zext i32 %63 to i64, !dbg !3409
  %65 = call i32 @sys_clock_tick_get_32() #7, !dbg !3410
  %66 = zext i32 %65 to i64, !dbg !3410
  %67 = sub nsw i64 %64, %66, !dbg !3411
  store i64 %67, ptr %11, align 8, !dbg !3412
  %68 = load i64, ptr %11, align 8, !dbg !3413
  %69 = icmp sgt i64 %68, 0, !dbg !3415
  br i1 %69, label %70, label %73, !dbg !3416

70:                                               ; preds = %41
  %71 = load i64, ptr %11, align 8, !dbg !3417
  %72 = trunc i64 %71 to i32, !dbg !3417
  store i32 %72, ptr %10, align 4, !dbg !3419
  store i32 1, ptr %16, align 4
  br label %74, !dbg !3419

73:                                               ; preds = %41
  store i32 0, ptr %10, align 4, !dbg !3420
  store i32 1, ptr %16, align 4
  br label %74, !dbg !3420

74:                                               ; preds = %73, %70
  call void @llvm.lifetime.end.p0(i64 4, ptr %18) #8, !dbg !3421
  call void @llvm.lifetime.end.p0(i64 8, ptr %17) #8, !dbg !3421
  br label %75

75:                                               ; preds = %74, %24
  call void @llvm.lifetime.end.p0(i64 4, ptr %12) #8, !dbg !3421
  %76 = load i32, ptr %10, align 4, !dbg !3421
  ret i32 %76, !dbg !3421
}

; Function Attrs: nounwind optsize
define hidden i32 @z_impl_k_usleep(i32 noundef %0) #1 !dbg !3422 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3426, metadata !DIExpression()), !dbg !3428
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #8, !dbg !3429
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3427, metadata !DIExpression()), !dbg !3430
  br label %4, !dbg !3431

4:                                                ; preds = %1
  br label %5, !dbg !3432

5:                                                ; preds = %4
  br label %6, !dbg !3432

6:                                                ; preds = %5
  %7 = load i32, ptr %2, align 4, !dbg !3434
  %8 = sext i32 %7 to i64, !dbg !3435
  %9 = add i64 %8, 99, !dbg !3436
  %10 = udiv i64 %9, 100, !dbg !3437
  %11 = trunc i64 %10 to i32, !dbg !3438
  store i32 %11, ptr %3, align 4, !dbg !3439
  %12 = load i32, ptr %3, align 4, !dbg !3440
  %13 = sext i32 %12 to i64, !dbg !3440
  %14 = call i32 @z_tick_sleep(i64 noundef %13) #7, !dbg !3441
  store i32 %14, ptr %3, align 4, !dbg !3442
  br label %15, !dbg !3443

15:                                               ; preds = %6
  br label %16, !dbg !3444

16:                                               ; preds = %15
  br label %17, !dbg !3444

17:                                               ; preds = %16
  %18 = load i32, ptr %3, align 4, !dbg !3446
  %19 = sext i32 %18 to i64, !dbg !3447
  %20 = mul i64 %19, 100, !dbg !3448
  %21 = trunc i64 %20 to i32, !dbg !3449
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #8, !dbg !3450
  ret i32 %21, !dbg !3451
}

; Function Attrs: nounwind optsize
define hidden void @z_impl_k_wakeup(ptr noundef %0) #1 !dbg !3452 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3454, metadata !DIExpression()), !dbg !3455
  br label %4, !dbg !3456

4:                                                ; preds = %1
  br label %5, !dbg !3457

5:                                                ; preds = %4
  %6 = load ptr, ptr %3, align 4, !dbg !3459
  %7 = call zeroext i1 @z_is_thread_pending(ptr noundef %6) #7, !dbg !3461
  br i1 %7, label %8, label %9, !dbg !3462

8:                                                ; preds = %5
  br label %31, !dbg !3463

9:                                                ; preds = %5
  %10 = load ptr, ptr %3, align 4, !dbg !3465
  %11 = call i32 @z_abort_thread_timeout(ptr noundef %10) #7, !dbg !3467
  %12 = icmp slt i32 %11, 0, !dbg !3468
  br i1 %12, label %13, label %22, !dbg !3469

13:                                               ; preds = %9
  %14 = load ptr, ptr %3, align 4, !dbg !3470
  %15 = getelementptr inbounds %struct.k_thread, ptr %14, i32 0, i32 0, !dbg !3473
  %16 = getelementptr inbounds %struct._thread_base, ptr %15, i32 0, i32 3, !dbg !3474
  %17 = load i8, ptr %16, align 1, !dbg !3474
  %18 = zext i8 %17 to i32, !dbg !3470
  %19 = icmp ne i32 %18, 16, !dbg !3475
  br i1 %19, label %20, label %21, !dbg !3476

20:                                               ; preds = %13
  br label %31, !dbg !3477

21:                                               ; preds = %13
  br label %22, !dbg !3479

22:                                               ; preds = %21, %9
  %23 = load ptr, ptr %3, align 4, !dbg !3480
  call void @z_mark_thread_as_not_suspended(ptr noundef %23) #7, !dbg !3481
  %24 = load ptr, ptr %3, align 4, !dbg !3482
  call void @z_ready_thread(ptr noundef %24) #7, !dbg !3483
  call void @flag_ipi() #7, !dbg !3484
  call void @llvm.lifetime.start.p0(i64 4, ptr %2) #8, !dbg !3485
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2498, metadata !DIExpression()), !dbg !3489
  %25 = call i32 asm sideeffect "MRS $0, ipsr", "=r"() #8, !dbg !3490, !srcloc !2507
  store i32 %25, ptr %2, align 4, !dbg !3490
  %26 = load i32, ptr %2, align 4, !dbg !3491
  call void @llvm.lifetime.end.p0(i64 4, ptr %2) #8, !dbg !3492
  %27 = icmp ne i32 %26, 0, !dbg !3493
  %28 = zext i1 %27 to i64, !dbg !3493
  %29 = select i1 %27, i32 1, i32 0, !dbg !3493
  br i1 %27, label %31, label %30, !dbg !3494

30:                                               ; preds = %22
  call void @z_reschedule_unlocked() #7, !dbg !3495
  br label %31, !dbg !3497

31:                                               ; preds = %8, %20, %30, %22
  ret void, !dbg !3498
}

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @z_is_thread_pending(ptr noundef %0) #0 !dbg !3499 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3501, metadata !DIExpression()), !dbg !3502
  %3 = load ptr, ptr %2, align 4, !dbg !3503
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !3504
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 3, !dbg !3505
  %6 = load i8, ptr %5, align 1, !dbg !3505
  %7 = zext i8 %6 to i32, !dbg !3503
  %8 = and i32 %7, 2, !dbg !3506
  %9 = icmp ne i32 %8, 0, !dbg !3507
  ret i1 %9, !dbg !3508
}

; Function Attrs: nounwind optsize
define hidden ptr @z_impl_k_sched_current_thread_query() #1 !dbg !3509 {
  %1 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %1) #8, !dbg !3514
  call void @llvm.dbg.declare(metadata ptr %1, metadata !3513, metadata !DIExpression()), !dbg !3515
  %2 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !3516
  store ptr %2, ptr %1, align 4, !dbg !3515
  %3 = load ptr, ptr %1, align 4, !dbg !3517
  call void @llvm.lifetime.end.p0(i64 4, ptr %1) #8, !dbg !3518
  ret ptr %3, !dbg !3519
}

; Function Attrs: nounwind optsize
define hidden i32 @z_impl_k_is_preempt_thread() #1 !dbg !3520 {
  %1 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %1) #8, !dbg !3523
  call void @llvm.dbg.declare(metadata ptr %1, metadata !2498, metadata !DIExpression()), !dbg !3526
  %2 = call i32 asm sideeffect "MRS $0, ipsr", "=r"() #8, !dbg !3527, !srcloc !2507
  store i32 %2, ptr %1, align 4, !dbg !3527
  %3 = load i32, ptr %1, align 4, !dbg !3528
  call void @llvm.lifetime.end.p0(i64 4, ptr %1) #8, !dbg !3529
  %4 = icmp ne i32 %3, 0, !dbg !3530
  %5 = zext i1 %4 to i64, !dbg !3530
  %6 = select i1 %4, i32 1, i32 0, !dbg !3530
  br i1 %4, label %11, label %7, !dbg !3531

7:                                                ; preds = %0
  %8 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !3532
  %9 = call i32 @is_preempt(ptr noundef %8) #7, !dbg !3533
  %10 = icmp ne i32 %9, 0, !dbg !3531
  br label %11

11:                                               ; preds = %7, %0
  %12 = phi i1 [ false, %0 ], [ %10, %7 ], !dbg !3534
  %13 = zext i1 %12 to i32, !dbg !3531
  ret i32 %13, !dbg !3535
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @is_preempt(ptr noundef %0) #0 !dbg !3536 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3538, metadata !DIExpression()), !dbg !3539
  %3 = load ptr, ptr %2, align 4, !dbg !3540
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !3541
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 4, !dbg !3542
  %6 = load i16, ptr %5, align 2, !dbg !3542
  %7 = zext i16 %6 to i32, !dbg !3540
  %8 = icmp ule i32 %7, 127, !dbg !3543
  %9 = zext i1 %8 to i32, !dbg !3543
  ret i32 %9, !dbg !3544
}

; Function Attrs: nounwind optsize
define hidden void @z_thread_abort(ptr noundef %0) #1 !dbg !3545 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 4
  %10 = alloca %struct.z_spinlock_key, align 4
  %11 = alloca ptr, align 4
  %12 = alloca %struct.z_spinlock_key, align 4
  %13 = alloca ptr, align 4
  %14 = alloca %struct.z_spinlock_key, align 4
  %15 = alloca ptr, align 4
  %16 = alloca %struct.z_spinlock_key, align 4
  %17 = alloca ptr, align 4
  %18 = alloca %struct.z_spinlock_key, align 4
  %19 = alloca ptr, align 4
  %20 = alloca ptr, align 4
  %21 = alloca %struct.z_spinlock_key, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store ptr %0, ptr %20, align 4
  call void @llvm.dbg.declare(metadata ptr %20, metadata !3547, metadata !DIExpression()), !dbg !3552
  call void @llvm.lifetime.start.p0(i64 4, ptr %21) #8, !dbg !3553
  call void @llvm.dbg.declare(metadata ptr %21, metadata !3548, metadata !DIExpression()), !dbg !3554
  store ptr @sched_spinlock, ptr %19, align 4
  call void @llvm.dbg.declare(metadata ptr %19, metadata !603, metadata !DIExpression()), !dbg !3555
  %24 = load ptr, ptr %19, align 4, !dbg !3557
  call void @llvm.dbg.declare(metadata ptr %18, metadata !609, metadata !DIExpression()), !dbg !3558
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #8, !dbg !3559
  call void @llvm.dbg.declare(metadata ptr %5, metadata !620, metadata !DIExpression()), !dbg !3561
  %25 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #8, !dbg !3562, !srcloc !624
  store i32 %25, ptr %5, align 4, !dbg !3562
  %26 = load i32, ptr %5, align 4, !dbg !3563
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #8, !dbg !3564
  store i32 %26, ptr %18, align 4, !dbg !3565
  %27 = load ptr, ptr %19, align 4, !dbg !3566
  store ptr %27, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !629, metadata !DIExpression()), !dbg !3567
  %28 = load ptr, ptr %4, align 4, !dbg !3569
  %29 = load ptr, ptr %19, align 4, !dbg !3570
  store ptr %29, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !638, metadata !DIExpression()), !dbg !3571
  %30 = load ptr, ptr %3, align 4, !dbg !3573
  %31 = load i32, ptr %18, align 4, !dbg !3574
  %32 = getelementptr inbounds %struct.z_spinlock_key, ptr %21, i32 0, i32 0, !dbg !3575
  store i32 %31, ptr %32, align 4, !dbg !3575
  %33 = load ptr, ptr %20, align 4, !dbg !3576
  %34 = getelementptr inbounds %struct.k_thread, ptr %33, i32 0, i32 0, !dbg !3577
  %35 = getelementptr inbounds %struct._thread_base, ptr %34, i32 0, i32 2, !dbg !3578
  %36 = load i8, ptr %35, align 4, !dbg !3578
  %37 = zext i8 %36 to i32, !dbg !3576
  %38 = and i32 %37, 1, !dbg !3579
  %39 = icmp ne i32 %38, 0, !dbg !3580
  br i1 %39, label %40, label %53, !dbg !3581

40:                                               ; preds = %1
  %41 = getelementptr inbounds %struct.z_spinlock_key, ptr %21, i32 0, i32 0, !dbg !3582
  %42 = load [1 x i32], ptr %41, align 4, !dbg !3582
  store [1 x i32] %42, ptr %12, align 4
  store ptr @sched_spinlock, ptr %13, align 4
  call void @llvm.dbg.declare(metadata ptr %13, metadata !661, metadata !DIExpression()), !dbg !3583
  call void @llvm.dbg.declare(metadata ptr %12, metadata !666, metadata !DIExpression()), !dbg !3585
  %43 = load ptr, ptr %13, align 4, !dbg !3586
  %44 = load i32, ptr %12, align 4, !dbg !3587
  store i32 %44, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !672, metadata !DIExpression()), !dbg !3588
  %45 = load i32, ptr %8, align 4, !dbg !3590
  %46 = icmp ne i32 %45, 0, !dbg !3591
  br i1 %46, label %47, label %48, !dbg !3592

47:                                               ; preds = %40
  br label %arch_irq_unlock.exit, !dbg !3593

48:                                               ; preds = %40
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #8, !dbg !3594, !srcloc !686
  br label %arch_irq_unlock.exit, !dbg !3595

arch_irq_unlock.exit:                             ; preds = %47, %48
  call void @llvm.lifetime.start.p0(i64 4, ptr %22) #8, !dbg !3596
  call void @llvm.dbg.declare(metadata ptr %22, metadata !3549, metadata !DIExpression()), !dbg !3597
  store i32 4, ptr %22, align 4, !dbg !3597
  br label %49, !dbg !3598

49:                                               ; preds = %arch_irq_unlock.exit
  %50 = load i32, ptr %22, align 4, !dbg !3599
  call void asm sideeffect "cpsie i\0A\09svc $1\0A\09", "{r0},i,~{memory}"(i32 %50, i32 2) #8, !dbg !3601, !srcloc !3602
  br label %51, !dbg !3603

51:                                               ; preds = %49
  br label %52, !dbg !3603

52:                                               ; preds = %51
  store i32 1, ptr %23, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %22) #8, !dbg !3604
  br label %97

53:                                               ; preds = %1
  %54 = load ptr, ptr %20, align 4, !dbg !3605
  %55 = getelementptr inbounds %struct.k_thread, ptr %54, i32 0, i32 0, !dbg !3607
  %56 = getelementptr inbounds %struct._thread_base, ptr %55, i32 0, i32 3, !dbg !3608
  %57 = load i8, ptr %56, align 1, !dbg !3608
  %58 = zext i8 %57 to i32, !dbg !3605
  %59 = and i32 %58, 8, !dbg !3609
  %60 = icmp ne i32 %59, 0, !dbg !3610
  br i1 %60, label %61, label %70, !dbg !3611

61:                                               ; preds = %53
  %62 = getelementptr inbounds %struct.z_spinlock_key, ptr %21, i32 0, i32 0, !dbg !3612
  %63 = load [1 x i32], ptr %62, align 4, !dbg !3612
  store [1 x i32] %63, ptr %14, align 4
  store ptr @sched_spinlock, ptr %15, align 4
  call void @llvm.dbg.declare(metadata ptr %15, metadata !661, metadata !DIExpression()), !dbg !3614
  call void @llvm.dbg.declare(metadata ptr %14, metadata !666, metadata !DIExpression()), !dbg !3616
  %64 = load ptr, ptr %15, align 4, !dbg !3617
  %65 = load i32, ptr %14, align 4, !dbg !3618
  store i32 %65, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !672, metadata !DIExpression()), !dbg !3619
  %66 = load i32, ptr %7, align 4, !dbg !3621
  %67 = icmp ne i32 %66, 0, !dbg !3622
  br i1 %67, label %68, label %69, !dbg !3623

68:                                               ; preds = %61
  br label %arch_irq_unlock.exit1, !dbg !3624

69:                                               ; preds = %61
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #8, !dbg !3625, !srcloc !686
  br label %arch_irq_unlock.exit1, !dbg !3626

arch_irq_unlock.exit1:                            ; preds = %68, %69
  store i32 1, ptr %23, align 4
  br label %97, !dbg !3627

70:                                               ; preds = %53
  %71 = load ptr, ptr %20, align 4, !dbg !3628
  call void @end_thread(ptr noundef %71) #7, !dbg !3629
  %72 = load ptr, ptr %20, align 4, !dbg !3630
  %73 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !3632
  %74 = icmp eq ptr %72, %73, !dbg !3633
  br i1 %74, label %75, label %88, !dbg !3634

75:                                               ; preds = %70
  call void @llvm.lifetime.start.p0(i64 4, ptr %2) #8, !dbg !3635
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2498, metadata !DIExpression()), !dbg !3638
  %76 = call i32 asm sideeffect "MRS $0, ipsr", "=r"() #8, !dbg !3639, !srcloc !2507
  store i32 %76, ptr %2, align 4, !dbg !3639
  %77 = load i32, ptr %2, align 4, !dbg !3640
  call void @llvm.lifetime.end.p0(i64 4, ptr %2) #8, !dbg !3641
  %78 = icmp ne i32 %77, 0, !dbg !3642
  %79 = zext i1 %78 to i64, !dbg !3642
  %80 = select i1 %78, i32 1, i32 0, !dbg !3642
  br i1 %78, label %88, label %81, !dbg !3643

81:                                               ; preds = %75
  %82 = getelementptr inbounds %struct.z_spinlock_key, ptr %21, i32 0, i32 0, !dbg !3644
  %83 = load [1 x i32], ptr %82, align 4, !dbg !3644
  store [1 x i32] %83, ptr %10, align 4
  store ptr @sched_spinlock, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1238, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1244, metadata !DIExpression()), !dbg !3648
  %84 = load ptr, ptr %11, align 4, !dbg !3649
  store ptr %84, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1249, metadata !DIExpression()), !dbg !3650
  %85 = load ptr, ptr %9, align 4, !dbg !3652
  %86 = load i32, ptr %10, align 4, !dbg !3653
  %87 = call i32 @z_swap_irqlock(i32 noundef %86) #7, !dbg !3654
  br label %88, !dbg !3655

88:                                               ; preds = %81, %75, %70
  %89 = getelementptr inbounds %struct.z_spinlock_key, ptr %21, i32 0, i32 0, !dbg !3656
  %90 = load [1 x i32], ptr %89, align 4, !dbg !3656
  store [1 x i32] %90, ptr %16, align 4
  store ptr @sched_spinlock, ptr %17, align 4
  call void @llvm.dbg.declare(metadata ptr %17, metadata !661, metadata !DIExpression()), !dbg !3657
  call void @llvm.dbg.declare(metadata ptr %16, metadata !666, metadata !DIExpression()), !dbg !3659
  %91 = load ptr, ptr %17, align 4, !dbg !3660
  %92 = load i32, ptr %16, align 4, !dbg !3661
  store i32 %92, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !672, metadata !DIExpression()), !dbg !3662
  %93 = load i32, ptr %6, align 4, !dbg !3664
  %94 = icmp ne i32 %93, 0, !dbg !3665
  br i1 %94, label %95, label %96, !dbg !3666

95:                                               ; preds = %88
  br label %arch_irq_unlock.exit2, !dbg !3667

96:                                               ; preds = %88
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #8, !dbg !3668, !srcloc !686
  br label %arch_irq_unlock.exit2, !dbg !3669

arch_irq_unlock.exit2:                            ; preds = %95, %96
  store i32 0, ptr %23, align 4, !dbg !3670
  br label %97, !dbg !3670

97:                                               ; preds = %arch_irq_unlock.exit2, %arch_irq_unlock.exit1, %52
  call void @llvm.lifetime.end.p0(i64 4, ptr %21) #8, !dbg !3670
  %98 = load i32, ptr %23, align 4
  switch i32 %98, label %100 [
    i32 0, label %99
    i32 1, label %99
  ]

99:                                               ; preds = %97, %97
  ret void, !dbg !3670

100:                                              ; preds = %97
  unreachable
}

; Function Attrs: nounwind optsize
define internal void @end_thread(ptr noundef %0) #1 !dbg !3671 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  store ptr %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3673, metadata !DIExpression()), !dbg !3674
  %6 = load ptr, ptr %5, align 4, !dbg !3675
  %7 = getelementptr inbounds %struct.k_thread, ptr %6, i32 0, i32 0, !dbg !3677
  %8 = getelementptr inbounds %struct._thread_base, ptr %7, i32 0, i32 3, !dbg !3678
  %9 = load i8, ptr %8, align 1, !dbg !3678
  %10 = zext i8 %9 to i32, !dbg !3675
  %11 = and i32 %10, 8, !dbg !3679
  %12 = icmp eq i32 %11, 0, !dbg !3680
  br i1 %12, label %13, label %62, !dbg !3681

13:                                               ; preds = %1
  %14 = load ptr, ptr %5, align 4, !dbg !3682
  %15 = getelementptr inbounds %struct.k_thread, ptr %14, i32 0, i32 0, !dbg !3684
  %16 = getelementptr inbounds %struct._thread_base, ptr %15, i32 0, i32 3, !dbg !3685
  %17 = load i8, ptr %16, align 1, !dbg !3686
  %18 = zext i8 %17 to i32, !dbg !3686
  %19 = or i32 %18, 8, !dbg !3686
  %20 = trunc i32 %19 to i8, !dbg !3686
  store i8 %20, ptr %16, align 1, !dbg !3686
  %21 = load ptr, ptr %5, align 4, !dbg !3687
  %22 = getelementptr inbounds %struct.k_thread, ptr %21, i32 0, i32 0, !dbg !3688
  %23 = getelementptr inbounds %struct._thread_base, ptr %22, i32 0, i32 3, !dbg !3689
  %24 = load i8, ptr %23, align 1, !dbg !3690
  %25 = zext i8 %24 to i32, !dbg !3690
  %26 = and i32 %25, -33, !dbg !3690
  %27 = trunc i32 %26 to i8, !dbg !3690
  store i8 %27, ptr %23, align 1, !dbg !3690
  %28 = load ptr, ptr %5, align 4, !dbg !3691
  %29 = call zeroext i1 @z_is_thread_queued(ptr noundef %28) #7, !dbg !3693
  br i1 %29, label %30, label %45, !dbg !3694

30:                                               ; preds = %13
  %31 = load ptr, ptr %5, align 4, !dbg !3695
  store ptr %31, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !809, metadata !DIExpression()), !dbg !3697
  %32 = load ptr, ptr %4, align 4, !dbg !3699
  %33 = getelementptr inbounds %struct._thread_base, ptr %32, i32 0, i32 3, !dbg !3700
  %34 = load i8, ptr %33, align 1, !dbg !3701
  %35 = zext i8 %34 to i32, !dbg !3701
  %36 = and i32 %35, -129, !dbg !3701
  %37 = trunc i32 %36 to i8, !dbg !3701
  store i8 %37, ptr %33, align 1, !dbg !3701
  %38 = load ptr, ptr %4, align 4, !dbg !3702
  %39 = call zeroext i1 @should_queue_thread(ptr noundef %38) #7, !dbg !3703
  br i1 %39, label %40, label %dequeue_thread.exit, !dbg !3704

40:                                               ; preds = %30
  %41 = load ptr, ptr %4, align 4, !dbg !3705
  store ptr %41, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !823, metadata !DIExpression()), !dbg !3706
  %42 = load ptr, ptr %3, align 4, !dbg !3708
  store ptr %42, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !829, metadata !DIExpression()), !dbg !3709
  %43 = load ptr, ptr %2, align 4, !dbg !3711
  %44 = load ptr, ptr %3, align 4, !dbg !3712
  call void @z_priq_dumb_remove(ptr noundef getelementptr inbounds (%struct.z_kernel, ptr @_kernel, i32 0, i32 1, i32 1), ptr noundef %44) #7, !dbg !3713
  br label %dequeue_thread.exit, !dbg !3714

dequeue_thread.exit:                              ; preds = %30, %40
  br label %45, !dbg !3715

45:                                               ; preds = %dequeue_thread.exit, %13
  %46 = load ptr, ptr %5, align 4, !dbg !3716
  %47 = getelementptr inbounds %struct.k_thread, ptr %46, i32 0, i32 0, !dbg !3718
  %48 = getelementptr inbounds %struct._thread_base, ptr %47, i32 0, i32 1, !dbg !3719
  %49 = load ptr, ptr %48, align 8, !dbg !3719
  %50 = icmp ne ptr %49, null, !dbg !3720
  br i1 %50, label %51, label %53, !dbg !3721

51:                                               ; preds = %45
  %52 = load ptr, ptr %5, align 4, !dbg !3722
  call void @unpend_thread_no_timeout(ptr noundef %52) #7, !dbg !3724
  br label %53, !dbg !3725

53:                                               ; preds = %51, %45
  %54 = load ptr, ptr %5, align 4, !dbg !3726
  %55 = call i32 @z_abort_thread_timeout(ptr noundef %54) #7, !dbg !3727
  %56 = load ptr, ptr %5, align 4, !dbg !3728
  %57 = getelementptr inbounds %struct.k_thread, ptr %56, i32 0, i32 3, !dbg !3729
  call void @unpend_all(ptr noundef %57) #7, !dbg !3730
  call void @update_cache(i32 noundef 1) #7, !dbg !3731
  br label %58, !dbg !3732

58:                                               ; preds = %53
  br label %59, !dbg !3733

59:                                               ; preds = %58
  br label %60, !dbg !3735

60:                                               ; preds = %59
  br label %61, !dbg !3736

61:                                               ; preds = %60
  br label %62, !dbg !3738

62:                                               ; preds = %61, %1
  ret void, !dbg !3739
}

; Function Attrs: nounwind optsize
define hidden i32 @z_impl_k_thread_join(ptr noundef %0, [1 x i64] %1) #1 !dbg !3740 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 4
  %8 = alloca %struct.z_spinlock_key, align 4
  %9 = alloca ptr, align 4
  %10 = alloca %struct.z_spinlock_key, align 4
  %11 = alloca ptr, align 4
  %12 = alloca %struct.z_spinlock_key, align 4
  %13 = alloca ptr, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.k_timeout_t, align 8
  %16 = alloca ptr, align 4
  %17 = alloca %struct.z_spinlock_key, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.k_timeout_t, align 8
  %20 = alloca i32, align 4
  %21 = getelementptr inbounds %struct.k_timeout_t, ptr %15, i32 0, i32 0
  store [1 x i64] %1, ptr %21, align 8
  store ptr %0, ptr %16, align 4
  call void @llvm.dbg.declare(metadata ptr %16, metadata !3744, metadata !DIExpression()), !dbg !3748
  call void @llvm.dbg.declare(metadata ptr %15, metadata !3745, metadata !DIExpression()), !dbg !3749
  call void @llvm.lifetime.start.p0(i64 4, ptr %17) #8, !dbg !3750
  call void @llvm.dbg.declare(metadata ptr %17, metadata !3746, metadata !DIExpression()), !dbg !3751
  store ptr @sched_spinlock, ptr %13, align 4
  call void @llvm.dbg.declare(metadata ptr %13, metadata !603, metadata !DIExpression()), !dbg !3752
  %22 = load ptr, ptr %13, align 4, !dbg !3754
  call void @llvm.dbg.declare(metadata ptr %12, metadata !609, metadata !DIExpression()), !dbg !3755
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #8, !dbg !3756
  call void @llvm.dbg.declare(metadata ptr %5, metadata !620, metadata !DIExpression()), !dbg !3758
  %23 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #8, !dbg !3759, !srcloc !624
  store i32 %23, ptr %5, align 4, !dbg !3759
  %24 = load i32, ptr %5, align 4, !dbg !3760
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #8, !dbg !3761
  store i32 %24, ptr %12, align 4, !dbg !3762
  %25 = load ptr, ptr %13, align 4, !dbg !3763
  store ptr %25, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !629, metadata !DIExpression()), !dbg !3764
  %26 = load ptr, ptr %4, align 4, !dbg !3766
  %27 = load ptr, ptr %13, align 4, !dbg !3767
  store ptr %27, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !638, metadata !DIExpression()), !dbg !3768
  %28 = load ptr, ptr %3, align 4, !dbg !3770
  %29 = load i32, ptr %12, align 4, !dbg !3771
  %30 = getelementptr inbounds %struct.z_spinlock_key, ptr %17, i32 0, i32 0, !dbg !3772
  store i32 %29, ptr %30, align 4, !dbg !3772
  call void @llvm.lifetime.start.p0(i64 4, ptr %18) #8, !dbg !3773
  call void @llvm.dbg.declare(metadata ptr %18, metadata !3747, metadata !DIExpression()), !dbg !3774
  store i32 0, ptr %18, align 4, !dbg !3774
  br label %31, !dbg !3775

31:                                               ; preds = %2
  br label %32, !dbg !3776

32:                                               ; preds = %31
  br label %33, !dbg !3776

33:                                               ; preds = %32
  %34 = load ptr, ptr %16, align 4, !dbg !3778
  %35 = getelementptr inbounds %struct.k_thread, ptr %34, i32 0, i32 0, !dbg !3780
  %36 = getelementptr inbounds %struct._thread_base, ptr %35, i32 0, i32 3, !dbg !3781
  %37 = load i8, ptr %36, align 1, !dbg !3781
  %38 = zext i8 %37 to i32, !dbg !3778
  %39 = and i32 %38, 8, !dbg !3782
  %40 = icmp ne i32 %39, 0, !dbg !3783
  br i1 %40, label %41, label %43, !dbg !3784

41:                                               ; preds = %33
  %42 = load ptr, ptr %16, align 4, !dbg !3785
  call void @z_sched_switch_spin(ptr noundef %42) #7, !dbg !3787
  store i32 0, ptr %18, align 4, !dbg !3788
  br label %84, !dbg !3789

43:                                               ; preds = %33
  %44 = getelementptr inbounds %struct.k_timeout_t, ptr %15, i32 0, i32 0, !dbg !3790
  %45 = load i64, ptr %44, align 8, !dbg !3790
  %46 = getelementptr inbounds %struct.k_timeout_t, ptr %19, i32 0, i32 0, !dbg !3792
  store i64 0, ptr %46, align 8, !dbg !3792
  %47 = icmp eq i64 %45, 0, !dbg !3793
  br i1 %47, label %48, label %49, !dbg !3794

48:                                               ; preds = %43
  store i32 -16, ptr %18, align 4, !dbg !3795
  br label %83, !dbg !3797

49:                                               ; preds = %43
  %50 = load ptr, ptr %16, align 4, !dbg !3798
  %51 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !3800
  %52 = icmp eq ptr %50, %51, !dbg !3801
  br i1 %52, label %61, label %53, !dbg !3802

53:                                               ; preds = %49
  %54 = load ptr, ptr %16, align 4, !dbg !3803
  %55 = getelementptr inbounds %struct.k_thread, ptr %54, i32 0, i32 0, !dbg !3804
  %56 = getelementptr inbounds %struct._thread_base, ptr %55, i32 0, i32 1, !dbg !3805
  %57 = load ptr, ptr %56, align 8, !dbg !3805
  %58 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !3806
  %59 = getelementptr inbounds %struct.k_thread, ptr %58, i32 0, i32 3, !dbg !3807
  %60 = icmp eq ptr %57, %59, !dbg !3808
  br i1 %60, label %61, label %62, !dbg !3809

61:                                               ; preds = %53, %49
  store i32 -45, ptr %18, align 4, !dbg !3810
  br label %82, !dbg !3812

62:                                               ; preds = %53
  %63 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !3813
  %64 = load ptr, ptr %16, align 4, !dbg !3815
  %65 = getelementptr inbounds %struct.k_thread, ptr %64, i32 0, i32 3, !dbg !3816
  call void @add_to_waitq_locked(ptr noundef %63, ptr noundef %65) #7, !dbg !3817
  %66 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !3818
  %67 = getelementptr inbounds %struct.k_timeout_t, ptr %15, i32 0, i32 0, !dbg !3819
  %68 = load [1 x i64], ptr %67, align 8, !dbg !3819
  call void @add_thread_timeout(ptr noundef %66, [1 x i64] %68) #7, !dbg !3819
  br label %69, !dbg !3820

69:                                               ; preds = %62
  br label %70, !dbg !3821

70:                                               ; preds = %69
  br label %71, !dbg !3821

71:                                               ; preds = %70
  %72 = getelementptr inbounds %struct.z_spinlock_key, ptr %17, i32 0, i32 0, !dbg !3823
  %73 = load [1 x i32], ptr %72, align 4, !dbg !3823
  store [1 x i32] %73, ptr %8, align 4
  store ptr @sched_spinlock, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1238, metadata !DIExpression()), !dbg !3824
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1244, metadata !DIExpression()), !dbg !3826
  %74 = load ptr, ptr %9, align 4, !dbg !3827
  store ptr %74, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1249, metadata !DIExpression()), !dbg !3828
  %75 = load ptr, ptr %7, align 4, !dbg !3830
  %76 = load i32, ptr %8, align 4, !dbg !3831
  %77 = call i32 @z_swap_irqlock(i32 noundef %76) #7, !dbg !3832
  store i32 %77, ptr %18, align 4, !dbg !3833
  br label %78, !dbg !3834

78:                                               ; preds = %71
  br label %79, !dbg !3835

79:                                               ; preds = %78
  br label %80, !dbg !3835

80:                                               ; preds = %79
  %81 = load i32, ptr %18, align 4, !dbg !3837
  store i32 %81, ptr %14, align 4, !dbg !3838
  store i32 1, ptr %20, align 4
  br label %97, !dbg !3838

82:                                               ; preds = %61
  br label %83

83:                                               ; preds = %82, %48
  br label %84

84:                                               ; preds = %83, %41
  br label %85, !dbg !3839

85:                                               ; preds = %84
  br label %86, !dbg !3840

86:                                               ; preds = %85
  br label %87, !dbg !3840

87:                                               ; preds = %86
  %88 = getelementptr inbounds %struct.z_spinlock_key, ptr %17, i32 0, i32 0, !dbg !3842
  %89 = load [1 x i32], ptr %88, align 4, !dbg !3842
  store [1 x i32] %89, ptr %10, align 4
  store ptr @sched_spinlock, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !661, metadata !DIExpression()), !dbg !3843
  call void @llvm.dbg.declare(metadata ptr %10, metadata !666, metadata !DIExpression()), !dbg !3845
  %90 = load ptr, ptr %11, align 4, !dbg !3846
  %91 = load i32, ptr %10, align 4, !dbg !3847
  store i32 %91, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !672, metadata !DIExpression()), !dbg !3848
  %92 = load i32, ptr %6, align 4, !dbg !3850
  %93 = icmp ne i32 %92, 0, !dbg !3851
  br i1 %93, label %94, label %95, !dbg !3852

94:                                               ; preds = %87
  br label %arch_irq_unlock.exit, !dbg !3853

95:                                               ; preds = %87
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #8, !dbg !3854, !srcloc !686
  br label %arch_irq_unlock.exit, !dbg !3855

arch_irq_unlock.exit:                             ; preds = %94, %95
  %96 = load i32, ptr %18, align 4, !dbg !3856
  store i32 %96, ptr %14, align 4, !dbg !3857
  store i32 1, ptr %20, align 4
  br label %97, !dbg !3857

97:                                               ; preds = %arch_irq_unlock.exit, %80
  call void @llvm.lifetime.end.p0(i64 4, ptr %18) #8, !dbg !3858
  call void @llvm.lifetime.end.p0(i64 4, ptr %17) #8, !dbg !3858
  %98 = load i32, ptr %14, align 4, !dbg !3858
  ret i32 %98, !dbg !3858
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_sched_switch_spin(ptr noundef %0) #0 !dbg !3859 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3861, metadata !DIExpression()), !dbg !3862
  %3 = load ptr, ptr %2, align 4, !dbg !3863
  ret void, !dbg !3864
}

; Function Attrs: nounwind optsize
define internal void @add_to_waitq_locked(ptr noundef %0, ptr noundef %1) #1 !dbg !3865 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  store ptr %0, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !3869, metadata !DIExpression()), !dbg !3871
  store ptr %1, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !3870, metadata !DIExpression()), !dbg !3872
  %11 = load ptr, ptr %9, align 4, !dbg !3873
  call void @unready_thread(ptr noundef %11) #7, !dbg !3874
  %12 = load ptr, ptr %9, align 4, !dbg !3875
  call void @z_mark_thread_as_pending(ptr noundef %12) #7, !dbg !3876
  br label %13, !dbg !3877

13:                                               ; preds = %2
  br label %14, !dbg !3878

14:                                               ; preds = %13
  %15 = load ptr, ptr %10, align 4, !dbg !3880
  %16 = icmp ne ptr %15, null, !dbg !3882
  br i1 %16, label %17, label %69, !dbg !3883

17:                                               ; preds = %14
  %18 = load ptr, ptr %10, align 4, !dbg !3884
  %19 = load ptr, ptr %9, align 4, !dbg !3886
  %20 = getelementptr inbounds %struct.k_thread, ptr %19, i32 0, i32 0, !dbg !3887
  %21 = getelementptr inbounds %struct._thread_base, ptr %20, i32 0, i32 1, !dbg !3888
  store ptr %18, ptr %21, align 8, !dbg !3889
  %22 = load ptr, ptr %10, align 4, !dbg !3890
  %23 = getelementptr inbounds %struct._wait_q_t, ptr %22, i32 0, i32 0, !dbg !3891
  %24 = load ptr, ptr %9, align 4, !dbg !3892
  store ptr %23, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !866, metadata !DIExpression()), !dbg !3893
  store ptr %24, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !872, metadata !DIExpression()), !dbg !3895
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #8, !dbg !3896
  call void @llvm.dbg.declare(metadata ptr %5, metadata !873, metadata !DIExpression()), !dbg !3897
  %25 = load ptr, ptr %3, align 4, !dbg !3898
  %26 = call ptr @sys_dlist_peek_head(ptr noundef %25) #7, !dbg !3899
  %27 = icmp ne ptr %26, null, !dbg !3900
  br i1 %27, label %28, label %32, !dbg !3901

28:                                               ; preds = %17
  %29 = load ptr, ptr %3, align 4, !dbg !3902
  %30 = call ptr @sys_dlist_peek_head(ptr noundef %29) #7, !dbg !3903
  store ptr %30, ptr %6, align 4, !dbg !3904
  %31 = load ptr, ptr %6, align 4, !dbg !3905
  br label %33, !dbg !3901

32:                                               ; preds = %17
  br label %33, !dbg !3901

33:                                               ; preds = %32, %28
  %34 = phi ptr [ %31, %28 ], [ null, %32 ], !dbg !3901
  store ptr %34, ptr %5, align 4, !dbg !3906
  br label %35, !dbg !3907

35:                                               ; preds = %63, %33
  %36 = load ptr, ptr %5, align 4, !dbg !3908
  %37 = icmp ne ptr %36, null, !dbg !3909
  br i1 %37, label %38, label %65, !dbg !3910

38:                                               ; preds = %35
  %39 = load ptr, ptr %4, align 4, !dbg !3911
  %40 = load ptr, ptr %5, align 4, !dbg !3912
  %41 = call i32 @z_sched_prio_cmp(ptr noundef %39, ptr noundef %40) #7, !dbg !3913
  %42 = icmp sgt i32 %41, 0, !dbg !3914
  br i1 %42, label %43, label %46, !dbg !3915

43:                                               ; preds = %38
  %44 = load ptr, ptr %5, align 4, !dbg !3916
  %45 = load ptr, ptr %4, align 4, !dbg !3917
  call void @sys_dlist_insert(ptr noundef %44, ptr noundef %45) #7, !dbg !3918
  store i32 1, ptr %7, align 4
  br label %z_priq_dumb_add.exit, !dbg !3919

46:                                               ; preds = %38
  %47 = load ptr, ptr %5, align 4, !dbg !3920
  %48 = icmp ne ptr %47, null, !dbg !3921
  br i1 %48, label %49, label %62, !dbg !3922

49:                                               ; preds = %46
  %50 = load ptr, ptr %3, align 4, !dbg !3923
  %51 = load ptr, ptr %5, align 4, !dbg !3924
  %52 = call ptr @sys_dlist_peek_next(ptr noundef %50, ptr noundef %51) #7, !dbg !3925
  %53 = icmp ne ptr %52, null, !dbg !3926
  br i1 %53, label %54, label %59, !dbg !3927

54:                                               ; preds = %49
  %55 = load ptr, ptr %3, align 4, !dbg !3928
  %56 = load ptr, ptr %5, align 4, !dbg !3929
  %57 = call ptr @sys_dlist_peek_next(ptr noundef %55, ptr noundef %56) #7, !dbg !3930
  store ptr %57, ptr %8, align 4, !dbg !3931
  %58 = load ptr, ptr %8, align 4, !dbg !3932
  br label %60, !dbg !3927

59:                                               ; preds = %49
  br label %60, !dbg !3927

60:                                               ; preds = %59, %54
  %61 = phi ptr [ %58, %54 ], [ null, %59 ], !dbg !3927
  br label %63, !dbg !3922

62:                                               ; preds = %46
  br label %63, !dbg !3922

63:                                               ; preds = %62, %60
  %64 = phi ptr [ %61, %60 ], [ null, %62 ], !dbg !3922
  store ptr %64, ptr %5, align 4, !dbg !3933
  br label %35, !dbg !3934, !llvm.loop !3935

65:                                               ; preds = %35
  %66 = load ptr, ptr %3, align 4, !dbg !3937
  %67 = load ptr, ptr %4, align 4, !dbg !3938
  call void @sys_dlist_append(ptr noundef %66, ptr noundef %67) #7, !dbg !3939
  store i32 0, ptr %7, align 4, !dbg !3940
  br label %z_priq_dumb_add.exit, !dbg !3940

z_priq_dumb_add.exit:                             ; preds = %43, %65
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #8, !dbg !3940
  %68 = load i32, ptr %7, align 4
  br label %69, !dbg !3941

69:                                               ; preds = %z_priq_dumb_add.exit, %14
  ret void, !dbg !3942
}

; Function Attrs: nounwind optsize
define internal void @add_thread_timeout(ptr noundef %0, [1 x i64] %1) #1 !dbg !3943 {
  %3 = alloca %struct.k_timeout_t, align 8
  %4 = alloca ptr, align 4
  %5 = alloca %struct.k_timeout_t, align 8
  %6 = getelementptr inbounds %struct.k_timeout_t, ptr %3, i32 0, i32 0
  store [1 x i64] %1, ptr %6, align 8
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3947, metadata !DIExpression()), !dbg !3949
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3948, metadata !DIExpression()), !dbg !3950
  %7 = getelementptr inbounds %struct.k_timeout_t, ptr %3, i32 0, i32 0, !dbg !3951
  %8 = load i64, ptr %7, align 8, !dbg !3951
  %9 = getelementptr inbounds %struct.k_timeout_t, ptr %5, i32 0, i32 0, !dbg !3953
  store i64 -1, ptr %9, align 8, !dbg !3953
  %10 = icmp eq i64 %8, -1, !dbg !3954
  br i1 %10, label %15, label %11, !dbg !3955

11:                                               ; preds = %2
  %12 = load ptr, ptr %4, align 4, !dbg !3956
  %13 = getelementptr inbounds %struct.k_timeout_t, ptr %3, i32 0, i32 0, !dbg !3958
  %14 = load [1 x i64], ptr %13, align 8, !dbg !3958
  call void @z_add_thread_timeout(ptr noundef %12, [1 x i64] %14) #7, !dbg !3958
  br label %15, !dbg !3959

15:                                               ; preds = %11, %2
  ret void, !dbg !3960
}

; Function Attrs: nounwind optsize
define hidden zeroext i1 @z_sched_wake(ptr noundef %0, i32 noundef %1, ptr noundef %2) #1 !dbg !3961 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 4
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.z_spinlock_key, align 4
  %14 = alloca ptr, align 4
  %15 = alloca %struct.z_spinlock_key, align 4
  %16 = alloca ptr, align 4
  %17 = alloca ptr, align 4
  %18 = alloca i32, align 4
  %19 = alloca ptr, align 4
  %20 = alloca ptr, align 4
  %21 = alloca i8, align 1
  %22 = alloca %struct.z_spinlock_key, align 4
  %23 = alloca %struct.z_spinlock_key, align 4
  store ptr %0, ptr %17, align 4
  call void @llvm.dbg.declare(metadata ptr %17, metadata !3965, metadata !DIExpression()), !dbg !3973
  store i32 %1, ptr %18, align 4
  call void @llvm.dbg.declare(metadata ptr %18, metadata !3966, metadata !DIExpression()), !dbg !3974
  store ptr %2, ptr %19, align 4
  call void @llvm.dbg.declare(metadata ptr %19, metadata !3967, metadata !DIExpression()), !dbg !3975
  call void @llvm.lifetime.start.p0(i64 4, ptr %20) #8, !dbg !3976
  call void @llvm.dbg.declare(metadata ptr %20, metadata !3968, metadata !DIExpression()), !dbg !3977
  call void @llvm.lifetime.start.p0(i64 1, ptr %21) #8, !dbg !3978
  call void @llvm.dbg.declare(metadata ptr %21, metadata !3969, metadata !DIExpression()), !dbg !3979
  store i8 0, ptr %21, align 1, !dbg !3979
  call void @llvm.lifetime.start.p0(i64 4, ptr %22) #8, !dbg !3980
  call void @llvm.dbg.declare(metadata ptr %22, metadata !3970, metadata !DIExpression()), !dbg !3981
  call void @llvm.memset.p0.i32(ptr align 4 %22, i8 0, i32 4, i1 false), !dbg !3981
  call void @llvm.lifetime.start.p0(i64 4, ptr %23) #8, !dbg !3980
  call void @llvm.dbg.declare(metadata ptr %23, metadata !3972, metadata !DIExpression()), !dbg !3982
  store ptr @sched_spinlock, ptr %16, align 4
  call void @llvm.dbg.declare(metadata ptr %16, metadata !603, metadata !DIExpression()), !dbg !3983
  %24 = load ptr, ptr %16, align 4, !dbg !3985
  call void @llvm.dbg.declare(metadata ptr %15, metadata !609, metadata !DIExpression()), !dbg !3986
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #8, !dbg !3987
  call void @llvm.dbg.declare(metadata ptr %8, metadata !620, metadata !DIExpression()), !dbg !3989
  %25 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #8, !dbg !3990, !srcloc !624
  store i32 %25, ptr %8, align 4, !dbg !3990
  %26 = load i32, ptr %8, align 4, !dbg !3991
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #8, !dbg !3992
  store i32 %26, ptr %15, align 4, !dbg !3993
  %27 = load ptr, ptr %16, align 4, !dbg !3994
  store ptr %27, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !629, metadata !DIExpression()), !dbg !3995
  %28 = load ptr, ptr %7, align 4, !dbg !3997
  %29 = load ptr, ptr %16, align 4, !dbg !3998
  store ptr %29, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !638, metadata !DIExpression()), !dbg !3999
  %30 = load ptr, ptr %6, align 4, !dbg !4001
  %31 = load i32, ptr %15, align 4, !dbg !4002
  %32 = getelementptr inbounds %struct.z_spinlock_key, ptr %23, i32 0, i32 0, !dbg !4003
  store i32 %31, ptr %32, align 4, !dbg !4003
  br label %33, !dbg !3980

33:                                               ; preds = %arch_irq_unlock.exit, %3
  %34 = getelementptr inbounds %struct.z_spinlock_key, ptr %22, i32 0, i32 0, !dbg !4004
  %35 = load i32, ptr %34, align 4, !dbg !4004
  %36 = icmp ne i32 %35, 0, !dbg !4006
  %37 = xor i1 %36, true, !dbg !4006
  br i1 %37, label %39, label %38, !dbg !4007

38:                                               ; preds = %33
  call void @llvm.lifetime.end.p0(i64 4, ptr %23) #8, !dbg !4008
  call void @llvm.lifetime.end.p0(i64 4, ptr %22) #8, !dbg !4008
  br label %73

39:                                               ; preds = %33
  %40 = load ptr, ptr %17, align 4, !dbg !4009
  %41 = getelementptr inbounds %struct._wait_q_t, ptr %40, i32 0, i32 0, !dbg !4011
  %42 = call ptr @z_priq_dumb_best(ptr noundef %41) #7, !dbg !4012
  store ptr %42, ptr %20, align 4, !dbg !4013
  %43 = load ptr, ptr %20, align 4, !dbg !4014
  %44 = icmp ne ptr %43, null, !dbg !4016
  br i1 %44, label %45, label %62, !dbg !4017

45:                                               ; preds = %39
  %46 = load ptr, ptr %20, align 4, !dbg !4018
  %47 = load i32, ptr %18, align 4, !dbg !4020
  %48 = load ptr, ptr %19, align 4, !dbg !4021
  store ptr %46, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !4022, metadata !DIExpression()), !dbg !4030
  store i32 %47, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !4028, metadata !DIExpression()), !dbg !4032
  store ptr %48, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !4029, metadata !DIExpression()), !dbg !4033
  %49 = load ptr, ptr %9, align 4, !dbg !4034
  %50 = load i32, ptr %10, align 4, !dbg !4035
  store ptr %49, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4036, metadata !DIExpression()), !dbg !4043
  store i32 %50, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4042, metadata !DIExpression()), !dbg !4045
  %51 = load i32, ptr %5, align 4, !dbg !4046
  %52 = load ptr, ptr %4, align 4, !dbg !4047
  %53 = getelementptr inbounds %struct.k_thread, ptr %52, i32 0, i32 6, !dbg !4048
  %54 = getelementptr inbounds %struct._thread_arch, ptr %53, i32 0, i32 1, !dbg !4049
  store i32 %51, ptr %54, align 4, !dbg !4050
  %55 = load ptr, ptr %11, align 4, !dbg !4051
  %56 = load ptr, ptr %9, align 4, !dbg !4052
  %57 = getelementptr inbounds %struct._thread_base, ptr %56, i32 0, i32 6, !dbg !4053
  store ptr %55, ptr %57, align 4, !dbg !4054
  %58 = load ptr, ptr %20, align 4, !dbg !4055
  call void @unpend_thread_no_timeout(ptr noundef %58) #7, !dbg !4056
  %59 = load ptr, ptr %20, align 4, !dbg !4057
  %60 = call i32 @z_abort_thread_timeout(ptr noundef %59) #7, !dbg !4058
  %61 = load ptr, ptr %20, align 4, !dbg !4059
  call void @ready_thread(ptr noundef %61) #7, !dbg !4060
  store i8 1, ptr %21, align 1, !dbg !4061
  br label %62, !dbg !4062

62:                                               ; preds = %45, %39
  br label %63, !dbg !4063

63:                                               ; preds = %62
  %64 = getelementptr inbounds %struct.z_spinlock_key, ptr %23, i32 0, i32 0, !dbg !4064
  %65 = load [1 x i32], ptr %64, align 4, !dbg !4064
  store [1 x i32] %65, ptr %13, align 4
  store ptr @sched_spinlock, ptr %14, align 4
  call void @llvm.dbg.declare(metadata ptr %14, metadata !661, metadata !DIExpression()), !dbg !4065
  call void @llvm.dbg.declare(metadata ptr %13, metadata !666, metadata !DIExpression()), !dbg !4067
  %66 = load ptr, ptr %14, align 4, !dbg !4068
  %67 = load i32, ptr %13, align 4, !dbg !4069
  store i32 %67, ptr %12, align 4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !672, metadata !DIExpression()), !dbg !4070
  %68 = load i32, ptr %12, align 4, !dbg !4072
  %69 = icmp ne i32 %68, 0, !dbg !4073
  br i1 %69, label %70, label %71, !dbg !4074

70:                                               ; preds = %63
  br label %arch_irq_unlock.exit, !dbg !4075

71:                                               ; preds = %63
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #8, !dbg !4076, !srcloc !686
  br label %arch_irq_unlock.exit, !dbg !4077

arch_irq_unlock.exit:                             ; preds = %70, %71
  %72 = getelementptr inbounds %struct.z_spinlock_key, ptr %22, i32 0, i32 0, !dbg !4078
  store i32 1, ptr %72, align 4, !dbg !4079
  br label %33, !dbg !4008, !llvm.loop !4080

73:                                               ; preds = %38
  %74 = load i8, ptr %21, align 1, !dbg !4082, !range !548, !noundef !213
  %75 = trunc i8 %74 to i1, !dbg !4082
  call void @llvm.lifetime.end.p0(i64 1, ptr %21) #8, !dbg !4083
  call void @llvm.lifetime.end.p0(i64 4, ptr %20) #8, !dbg !4083
  ret i1 %75, !dbg !4084
}

; Function Attrs: nounwind optsize
define hidden i32 @z_sched_wait(ptr noundef %0, [1 x i32] %1, ptr noundef %2, [1 x i64] %3, ptr noundef %4) #1 !dbg !4085 {
  %6 = alloca %struct.z_spinlock_key, align 4
  %7 = alloca %struct.k_timeout_t, align 8
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  %11 = alloca i32, align 4
  %12 = getelementptr inbounds %struct.z_spinlock_key, ptr %6, i32 0, i32 0
  store [1 x i32] %1, ptr %12, align 4
  %13 = getelementptr inbounds %struct.k_timeout_t, ptr %7, i32 0, i32 0
  store [1 x i64] %3, ptr %13, align 8
  store ptr %0, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !4090, metadata !DIExpression()), !dbg !4096
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4091, metadata !DIExpression()), !dbg !4097
  store ptr %2, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !4092, metadata !DIExpression()), !dbg !4098
  call void @llvm.dbg.declare(metadata ptr %7, metadata !4093, metadata !DIExpression()), !dbg !4099
  store ptr %4, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !4094, metadata !DIExpression()), !dbg !4100
  call void @llvm.lifetime.start.p0(i64 4, ptr %11) #8, !dbg !4101
  call void @llvm.dbg.declare(metadata ptr %11, metadata !4095, metadata !DIExpression()), !dbg !4102
  %14 = load ptr, ptr %8, align 4, !dbg !4103
  %15 = load ptr, ptr %9, align 4, !dbg !4104
  %16 = getelementptr inbounds %struct.z_spinlock_key, ptr %6, i32 0, i32 0, !dbg !4105
  %17 = load [1 x i32], ptr %16, align 4, !dbg !4105
  %18 = getelementptr inbounds %struct.k_timeout_t, ptr %7, i32 0, i32 0, !dbg !4105
  %19 = load [1 x i64], ptr %18, align 8, !dbg !4105
  %20 = call i32 @z_pend_curr(ptr noundef %14, [1 x i32] %17, ptr noundef %15, [1 x i64] %19) #7, !dbg !4105
  store i32 %20, ptr %11, align 4, !dbg !4102
  %21 = load ptr, ptr %10, align 4, !dbg !4106
  %22 = icmp ne ptr %21, null, !dbg !4108
  br i1 %22, label %23, label %29, !dbg !4109

23:                                               ; preds = %5
  %24 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !4110
  %25 = getelementptr inbounds %struct.k_thread, ptr %24, i32 0, i32 0, !dbg !4112
  %26 = getelementptr inbounds %struct._thread_base, ptr %25, i32 0, i32 6, !dbg !4113
  %27 = load ptr, ptr %26, align 4, !dbg !4113
  %28 = load ptr, ptr %10, align 4, !dbg !4114
  store ptr %27, ptr %28, align 4, !dbg !4115
  br label %29, !dbg !4116

29:                                               ; preds = %23, %5
  %30 = load i32, ptr %11, align 4, !dbg !4117
  call void @llvm.lifetime.end.p0(i64 4, ptr %11) #8, !dbg !4118
  ret i32 %30, !dbg !4119
}

; Function Attrs: nounwind optsize
define hidden i32 @z_sched_waitq_walk(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 !dbg !4120 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.z_spinlock_key, align 4
  %9 = alloca ptr, align 4
  %10 = alloca %struct.z_spinlock_key, align 4
  %11 = alloca ptr, align 4
  %12 = alloca ptr, align 4
  %13 = alloca ptr, align 4
  %14 = alloca ptr, align 4
  %15 = alloca ptr, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.z_spinlock_key, align 4
  %18 = alloca %struct.z_spinlock_key, align 4
  %19 = alloca ptr, align 4
  %20 = alloca ptr, align 4
  store ptr %0, ptr %12, align 4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !4127, metadata !DIExpression()), !dbg !4135
  store ptr %1, ptr %13, align 4
  call void @llvm.dbg.declare(metadata ptr %13, metadata !4128, metadata !DIExpression()), !dbg !4136
  store ptr %2, ptr %14, align 4
  call void @llvm.dbg.declare(metadata ptr %14, metadata !4129, metadata !DIExpression()), !dbg !4137
  call void @llvm.lifetime.start.p0(i64 4, ptr %15) #8, !dbg !4138
  call void @llvm.dbg.declare(metadata ptr %15, metadata !4130, metadata !DIExpression()), !dbg !4139
  call void @llvm.lifetime.start.p0(i64 4, ptr %16) #8, !dbg !4140
  call void @llvm.dbg.declare(metadata ptr %16, metadata !4131, metadata !DIExpression()), !dbg !4141
  store i32 0, ptr %16, align 4, !dbg !4141
  call void @llvm.lifetime.start.p0(i64 4, ptr %17) #8, !dbg !4142
  call void @llvm.dbg.declare(metadata ptr %17, metadata !4132, metadata !DIExpression()), !dbg !4143
  call void @llvm.memset.p0.i32(ptr align 4 %17, i8 0, i32 4, i1 false), !dbg !4143
  call void @llvm.lifetime.start.p0(i64 4, ptr %18) #8, !dbg !4142
  call void @llvm.dbg.declare(metadata ptr %18, metadata !4134, metadata !DIExpression()), !dbg !4144
  store ptr @sched_spinlock, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !603, metadata !DIExpression()), !dbg !4145
  %21 = load ptr, ptr %11, align 4, !dbg !4147
  call void @llvm.dbg.declare(metadata ptr %10, metadata !609, metadata !DIExpression()), !dbg !4148
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #8, !dbg !4149
  call void @llvm.dbg.declare(metadata ptr %6, metadata !620, metadata !DIExpression()), !dbg !4151
  %22 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #8, !dbg !4152, !srcloc !624
  store i32 %22, ptr %6, align 4, !dbg !4152
  %23 = load i32, ptr %6, align 4, !dbg !4153
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #8, !dbg !4154
  store i32 %23, ptr %10, align 4, !dbg !4155
  %24 = load ptr, ptr %11, align 4, !dbg !4156
  store ptr %24, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !629, metadata !DIExpression()), !dbg !4157
  %25 = load ptr, ptr %5, align 4, !dbg !4159
  %26 = load ptr, ptr %11, align 4, !dbg !4160
  store ptr %26, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !638, metadata !DIExpression()), !dbg !4161
  %27 = load ptr, ptr %4, align 4, !dbg !4163
  %28 = load i32, ptr %10, align 4, !dbg !4164
  %29 = getelementptr inbounds %struct.z_spinlock_key, ptr %18, i32 0, i32 0, !dbg !4165
  store i32 %28, ptr %29, align 4, !dbg !4165
  br label %30, !dbg !4142

30:                                               ; preds = %arch_irq_unlock.exit, %3
  %31 = getelementptr inbounds %struct.z_spinlock_key, ptr %17, i32 0, i32 0, !dbg !4166
  %32 = load i32, ptr %31, align 4, !dbg !4166
  %33 = icmp ne i32 %32, 0, !dbg !4168
  %34 = xor i1 %33, true, !dbg !4168
  br i1 %34, label %36, label %35, !dbg !4169

35:                                               ; preds = %30
  call void @llvm.lifetime.end.p0(i64 4, ptr %18) #8, !dbg !4170
  call void @llvm.lifetime.end.p0(i64 4, ptr %17) #8, !dbg !4170
  br label %99

36:                                               ; preds = %30
  %37 = load ptr, ptr %12, align 4, !dbg !4171
  %38 = getelementptr inbounds %struct._wait_q_t, ptr %37, i32 0, i32 0, !dbg !4174
  %39 = call ptr @sys_dlist_peek_head(ptr noundef %38) #7, !dbg !4175
  %40 = icmp ne ptr %39, null, !dbg !4176
  br i1 %40, label %41, label %47, !dbg !4177

41:                                               ; preds = %36
  %42 = load ptr, ptr %12, align 4, !dbg !4178
  %43 = getelementptr inbounds %struct._wait_q_t, ptr %42, i32 0, i32 0, !dbg !4180
  %44 = call ptr @sys_dlist_peek_head(ptr noundef %43) #7, !dbg !4181
  %45 = getelementptr inbounds i8, ptr %44, i32 0, !dbg !4182
  store ptr %45, ptr %19, align 4, !dbg !4183
  %46 = load ptr, ptr %19, align 4, !dbg !4184
  br label %48, !dbg !4177

47:                                               ; preds = %36
  br label %48, !dbg !4177

48:                                               ; preds = %47, %41
  %49 = phi ptr [ %46, %41 ], [ null, %47 ], !dbg !4177
  store ptr %49, ptr %15, align 4, !dbg !4185
  br label %50, !dbg !4186

50:                                               ; preds = %86, %48
  %51 = load ptr, ptr %15, align 4, !dbg !4187
  %52 = icmp ne ptr %51, null, !dbg !4189
  br i1 %52, label %53, label %88, !dbg !4190

53:                                               ; preds = %50
  %54 = load ptr, ptr %13, align 4, !dbg !4191
  %55 = load ptr, ptr %15, align 4, !dbg !4193
  %56 = load ptr, ptr %14, align 4, !dbg !4194
  %57 = call i32 %54(ptr noundef %55, ptr noundef %56) #7, !dbg !4191
  store i32 %57, ptr %16, align 4, !dbg !4195
  %58 = load i32, ptr %16, align 4, !dbg !4196
  %59 = icmp ne i32 %58, 0, !dbg !4198
  br i1 %59, label %60, label %61, !dbg !4199

60:                                               ; preds = %53
  br label %88, !dbg !4200

61:                                               ; preds = %53
  br label %62, !dbg !4202

62:                                               ; preds = %61
  %63 = load ptr, ptr %15, align 4, !dbg !4203
  %64 = icmp ne ptr %63, null, !dbg !4204
  br i1 %64, label %65, label %85, !dbg !4205

65:                                               ; preds = %62
  %66 = load ptr, ptr %12, align 4, !dbg !4206
  %67 = getelementptr inbounds %struct._wait_q_t, ptr %66, i32 0, i32 0, !dbg !4207
  %68 = load ptr, ptr %15, align 4, !dbg !4208
  %69 = getelementptr inbounds %struct.k_thread, ptr %68, i32 0, i32 0, !dbg !4209
  %70 = getelementptr inbounds %struct._thread_base, ptr %69, i32 0, i32 0, !dbg !4210
  %71 = call ptr @sys_dlist_peek_next(ptr noundef %67, ptr noundef %70) #7, !dbg !4211
  %72 = icmp ne ptr %71, null, !dbg !4212
  br i1 %72, label %73, label %82, !dbg !4213

73:                                               ; preds = %65
  %74 = load ptr, ptr %12, align 4, !dbg !4214
  %75 = getelementptr inbounds %struct._wait_q_t, ptr %74, i32 0, i32 0, !dbg !4216
  %76 = load ptr, ptr %15, align 4, !dbg !4217
  %77 = getelementptr inbounds %struct.k_thread, ptr %76, i32 0, i32 0, !dbg !4218
  %78 = getelementptr inbounds %struct._thread_base, ptr %77, i32 0, i32 0, !dbg !4219
  %79 = call ptr @sys_dlist_peek_next(ptr noundef %75, ptr noundef %78) #7, !dbg !4220
  %80 = getelementptr inbounds i8, ptr %79, i32 0, !dbg !4221
  store ptr %80, ptr %20, align 4, !dbg !4222
  %81 = load ptr, ptr %20, align 4, !dbg !4223
  br label %83, !dbg !4213

82:                                               ; preds = %65
  br label %83, !dbg !4213

83:                                               ; preds = %82, %73
  %84 = phi ptr [ %81, %73 ], [ null, %82 ], !dbg !4213
  br label %86, !dbg !4205

85:                                               ; preds = %62
  br label %86, !dbg !4205

86:                                               ; preds = %85, %83
  %87 = phi ptr [ %84, %83 ], [ null, %85 ], !dbg !4205
  store ptr %87, ptr %15, align 4, !dbg !4224
  br label %50, !dbg !4225, !llvm.loop !4226

88:                                               ; preds = %60, %50
  br label %89, !dbg !4228

89:                                               ; preds = %88
  %90 = getelementptr inbounds %struct.z_spinlock_key, ptr %18, i32 0, i32 0, !dbg !4229
  %91 = load [1 x i32], ptr %90, align 4, !dbg !4229
  store [1 x i32] %91, ptr %8, align 4
  store ptr @sched_spinlock, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !661, metadata !DIExpression()), !dbg !4230
  call void @llvm.dbg.declare(metadata ptr %8, metadata !666, metadata !DIExpression()), !dbg !4232
  %92 = load ptr, ptr %9, align 4, !dbg !4233
  %93 = load i32, ptr %8, align 4, !dbg !4234
  store i32 %93, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !672, metadata !DIExpression()), !dbg !4235
  %94 = load i32, ptr %7, align 4, !dbg !4237
  %95 = icmp ne i32 %94, 0, !dbg !4238
  br i1 %95, label %96, label %97, !dbg !4239

96:                                               ; preds = %89
  br label %arch_irq_unlock.exit, !dbg !4240

97:                                               ; preds = %89
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #8, !dbg !4241, !srcloc !686
  br label %arch_irq_unlock.exit, !dbg !4242

arch_irq_unlock.exit:                             ; preds = %96, %97
  %98 = getelementptr inbounds %struct.z_spinlock_key, ptr %17, i32 0, i32 0, !dbg !4243
  store i32 1, ptr %98, align 4, !dbg !4244
  br label %30, !dbg !4170, !llvm.loop !4245

99:                                               ; preds = %35
  %100 = load i32, ptr %16, align 4, !dbg !4247
  call void @llvm.lifetime.end.p0(i64 4, ptr %16) #8, !dbg !4248
  call void @llvm.lifetime.end.p0(i64 4, ptr %15) #8, !dbg !4248
  ret i32 %100, !dbg !4249
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @sys_dlist_peek_next(ptr noundef %0, ptr noundef %1) #0 !dbg !4250 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4254, metadata !DIExpression()), !dbg !4256
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4255, metadata !DIExpression()), !dbg !4257
  %5 = load ptr, ptr %4, align 4, !dbg !4258
  %6 = icmp ne ptr %5, null, !dbg !4259
  br i1 %6, label %7, label %11, !dbg !4260

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 4, !dbg !4261
  %9 = load ptr, ptr %4, align 4, !dbg !4262
  %10 = call ptr @sys_dlist_peek_next_no_check(ptr noundef %8, ptr noundef %9) #7, !dbg !4263
  br label %12, !dbg !4260

11:                                               ; preds = %2
  br label %12, !dbg !4260

12:                                               ; preds = %11, %7
  %13 = phi ptr [ %10, %7 ], [ null, %11 ], !dbg !4260
  ret ptr %13, !dbg !4264
}

; Function Attrs: optsize
declare !dbg !4265 dso_local i64 @z_timeout_expires(ptr noundef) #4

; Function Attrs: optsize
declare !dbg !4270 dso_local i64 @z_timeout_remaining(ptr noundef) #4

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @sys_sflist_is_empty(ptr noundef %0) #0 !dbg !4271 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4276, metadata !DIExpression()), !dbg !4277
  %3 = load ptr, ptr %2, align 4, !dbg !4278
  %4 = call ptr @sys_sflist_peek_head(ptr noundef %3) #7, !dbg !4279
  %5 = icmp eq ptr %4, null, !dbg !4280
  ret i1 %5, !dbg !4281
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @sys_sflist_peek_head(ptr noundef %0) #0 !dbg !4282 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4286, metadata !DIExpression()), !dbg !4287
  %3 = load ptr, ptr %2, align 4, !dbg !4288
  %4 = getelementptr inbounds %struct._sflist, ptr %3, i32 0, i32 0, !dbg !4289
  %5 = load ptr, ptr %4, align 4, !dbg !4289
  ret ptr %5, !dbg !4290
}

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @z_is_prio_higher(i32 noundef %0, i32 noundef %1) #0 !dbg !4291 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4295, metadata !DIExpression()), !dbg !4297
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4296, metadata !DIExpression()), !dbg !4298
  %5 = load i32, ptr %3, align 4, !dbg !4299
  %6 = load i32, ptr %4, align 4, !dbg !4300
  %7 = call zeroext i1 @z_is_prio1_higher_than_prio2(i32 noundef %5, i32 noundef %6) #7, !dbg !4301
  ret i1 %7, !dbg !4302
}

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @z_is_prio1_higher_than_prio2(i32 noundef %0, i32 noundef %1) #0 !dbg !4303 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4305, metadata !DIExpression()), !dbg !4307
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4306, metadata !DIExpression()), !dbg !4308
  %5 = load i32, ptr %3, align 4, !dbg !4309
  %6 = load i32, ptr %4, align 4, !dbg !4310
  %7 = icmp slt i32 %5, %6, !dbg !4311
  ret i1 %7, !dbg !4312
}

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @z_is_thread_state_set(ptr noundef %0, i32 noundef %1) #0 !dbg !4313 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4317, metadata !DIExpression()), !dbg !4319
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4318, metadata !DIExpression()), !dbg !4320
  %5 = load ptr, ptr %3, align 4, !dbg !4321
  %6 = getelementptr inbounds %struct.k_thread, ptr %5, i32 0, i32 0, !dbg !4322
  %7 = getelementptr inbounds %struct._thread_base, ptr %6, i32 0, i32 3, !dbg !4323
  %8 = load i8, ptr %7, align 1, !dbg !4323
  %9 = zext i8 %8 to i32, !dbg !4321
  %10 = load i32, ptr %4, align 4, !dbg !4324
  %11 = and i32 %9, %10, !dbg !4325
  %12 = icmp ne i32 %11, 0, !dbg !4326
  ret i1 %12, !dbg !4327
}

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @should_queue_thread(ptr noundef %0) #0 !dbg !4328 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4330, metadata !DIExpression()), !dbg !4331
  ret i1 true, !dbg !4332
}

; Function Attrs: nounwind optsize
define internal void @update_metairq_preempt(ptr noundef %0) #1 !dbg !4333 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4335, metadata !DIExpression()), !dbg !4336
  %3 = load ptr, ptr %2, align 4, !dbg !4337
  ret void, !dbg !4338
}

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @z_is_thread_timeout_active(ptr noundef %0) #0 !dbg !4339 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4341, metadata !DIExpression()), !dbg !4342
  %3 = load ptr, ptr %2, align 4, !dbg !4343
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !4344
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !4345
  %6 = call zeroext i1 @z_is_inactive_timeout(ptr noundef %5) #7, !dbg !4346
  %7 = xor i1 %6, true, !dbg !4347
  ret i1 %7, !dbg !4348
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @is_metairq(ptr noundef %0) #0 !dbg !4349 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4351, metadata !DIExpression()), !dbg !4352
  %3 = load ptr, ptr %2, align 4, !dbg !4353
  ret i32 0, !dbg !4354
}

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @z_is_inactive_timeout(ptr noundef %0) #0 !dbg !4355 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4359, metadata !DIExpression()), !dbg !4360
  %3 = load ptr, ptr %2, align 4, !dbg !4361
  %4 = getelementptr inbounds %struct._timeout, ptr %3, i32 0, i32 0, !dbg !4362
  %5 = call zeroext i1 @sys_dnode_is_linked(ptr noundef %4) #7, !dbg !4363
  %6 = xor i1 %5, true, !dbg !4364
  ret i1 %6, !dbg !4365
}

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @sys_dnode_is_linked(ptr noundef %0) #0 !dbg !4366 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4372, metadata !DIExpression()), !dbg !4373
  %3 = load ptr, ptr %2, align 4, !dbg !4374
  %4 = getelementptr inbounds %struct._dnode, ptr %3, i32 0, i32 0, !dbg !4375
  %5 = load ptr, ptr %4, align 4, !dbg !4375
  %6 = icmp ne ptr %5, null, !dbg !4376
  ret i1 %6, !dbg !4377
}

; Function Attrs: nounwind optsize
define internal ptr @pended_on_thread(ptr noundef %0) #1 !dbg !4378 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4382, metadata !DIExpression()), !dbg !4383
  %3 = load ptr, ptr %2, align 4, !dbg !4384
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !4385
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 1, !dbg !4386
  %6 = load ptr, ptr %5, align 8, !dbg !4386
  ret ptr %6, !dbg !4387
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_mark_thread_as_not_pending(ptr noundef %0) #0 !dbg !4388 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4390, metadata !DIExpression()), !dbg !4391
  %3 = load ptr, ptr %2, align 4, !dbg !4392
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !4393
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 3, !dbg !4394
  %6 = load i8, ptr %5, align 1, !dbg !4395
  %7 = zext i8 %6 to i32, !dbg !4395
  %8 = and i32 %7, -3, !dbg !4395
  %9 = trunc i32 %8 to i8, !dbg !4395
  store i8 %9, ptr %5, align 1, !dbg !4395
  ret void, !dbg !4396
}

; Function Attrs: optsize
declare !dbg !4397 dso_local i32 @arch_swap(i32 noundef) #4

; Function Attrs: inlinehint nounwind optsize
define internal void @sys_dlist_insert(ptr noundef %0, ptr noundef %1) #0 !dbg !4398 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4402, metadata !DIExpression()), !dbg !4405
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4403, metadata !DIExpression()), !dbg !4406
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #8, !dbg !4407
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4404, metadata !DIExpression()), !dbg !4408
  %6 = load ptr, ptr %3, align 4, !dbg !4409
  %7 = getelementptr inbounds %struct._dnode, ptr %6, i32 0, i32 1, !dbg !4410
  %8 = load ptr, ptr %7, align 4, !dbg !4410
  store ptr %8, ptr %5, align 4, !dbg !4408
  %9 = load ptr, ptr %5, align 4, !dbg !4411
  %10 = load ptr, ptr %4, align 4, !dbg !4412
  %11 = getelementptr inbounds %struct._dnode, ptr %10, i32 0, i32 1, !dbg !4413
  store ptr %9, ptr %11, align 4, !dbg !4414
  %12 = load ptr, ptr %3, align 4, !dbg !4415
  %13 = load ptr, ptr %4, align 4, !dbg !4416
  %14 = getelementptr inbounds %struct._dnode, ptr %13, i32 0, i32 0, !dbg !4417
  store ptr %12, ptr %14, align 4, !dbg !4418
  %15 = load ptr, ptr %4, align 4, !dbg !4419
  %16 = load ptr, ptr %5, align 4, !dbg !4420
  %17 = getelementptr inbounds %struct._dnode, ptr %16, i32 0, i32 0, !dbg !4421
  store ptr %15, ptr %17, align 4, !dbg !4422
  %18 = load ptr, ptr %4, align 4, !dbg !4423
  %19 = load ptr, ptr %3, align 4, !dbg !4424
  %20 = getelementptr inbounds %struct._dnode, ptr %19, i32 0, i32 1, !dbg !4425
  store ptr %18, ptr %20, align 4, !dbg !4426
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #8, !dbg !4427
  ret void, !dbg !4427
}

; Function Attrs: inlinehint nounwind optsize
define internal void @sys_dlist_append(ptr noundef %0, ptr noundef %1) #0 !dbg !4428 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4432, metadata !DIExpression()), !dbg !4435
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4433, metadata !DIExpression()), !dbg !4436
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #8, !dbg !4437
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4434, metadata !DIExpression()), !dbg !4438
  %6 = load ptr, ptr %3, align 4, !dbg !4439
  %7 = getelementptr inbounds %struct._dnode, ptr %6, i32 0, i32 1, !dbg !4440
  %8 = load ptr, ptr %7, align 4, !dbg !4440
  store ptr %8, ptr %5, align 4, !dbg !4438
  %9 = load ptr, ptr %3, align 4, !dbg !4441
  %10 = load ptr, ptr %4, align 4, !dbg !4442
  %11 = getelementptr inbounds %struct._dnode, ptr %10, i32 0, i32 0, !dbg !4443
  store ptr %9, ptr %11, align 4, !dbg !4444
  %12 = load ptr, ptr %5, align 4, !dbg !4445
  %13 = load ptr, ptr %4, align 4, !dbg !4446
  %14 = getelementptr inbounds %struct._dnode, ptr %13, i32 0, i32 1, !dbg !4447
  store ptr %12, ptr %14, align 4, !dbg !4448
  %15 = load ptr, ptr %4, align 4, !dbg !4449
  %16 = load ptr, ptr %5, align 4, !dbg !4450
  %17 = getelementptr inbounds %struct._dnode, ptr %16, i32 0, i32 0, !dbg !4451
  store ptr %15, ptr %17, align 4, !dbg !4452
  %18 = load ptr, ptr %4, align 4, !dbg !4453
  %19 = load ptr, ptr %3, align 4, !dbg !4454
  %20 = getelementptr inbounds %struct._dnode, ptr %19, i32 0, i32 1, !dbg !4455
  store ptr %18, ptr %20, align 4, !dbg !4456
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #8, !dbg !4457
  ret void, !dbg !4457
}

; Function Attrs: inlinehint nounwind optsize
define internal void @sys_dnode_init(ptr noundef %0) #0 !dbg !4458 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4460, metadata !DIExpression()), !dbg !4461
  %3 = load ptr, ptr %2, align 4, !dbg !4462
  %4 = getelementptr inbounds %struct._dnode, ptr %3, i32 0, i32 0, !dbg !4463
  store ptr null, ptr %4, align 4, !dbg !4464
  %5 = load ptr, ptr %2, align 4, !dbg !4465
  %6 = getelementptr inbounds %struct._dnode, ptr %5, i32 0, i32 1, !dbg !4466
  store ptr null, ptr %6, align 4, !dbg !4467
  ret void, !dbg !4468
}

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @sys_dlist_is_empty(ptr noundef %0) #0 !dbg !4469 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4473, metadata !DIExpression()), !dbg !4474
  %3 = load ptr, ptr %2, align 4, !dbg !4475
  %4 = getelementptr inbounds %struct._dnode, ptr %3, i32 0, i32 0, !dbg !4476
  %5 = load ptr, ptr %4, align 4, !dbg !4476
  %6 = load ptr, ptr %2, align 4, !dbg !4477
  %7 = icmp eq ptr %5, %6, !dbg !4478
  ret i1 %7, !dbg !4479
}

; Function Attrs: optsize
declare !dbg !4480 dso_local ptr @z_rb_get_minmax(ptr noundef, i8 noundef zeroext) #4

; Function Attrs: inlinehint nounwind optsize
define internal void @k_yield() #0 !dbg !4483 {
  br label %1, !dbg !4484

1:                                                ; preds = %0
  call void asm sideeffect "", "~{memory}"() #8, !dbg !4485, !srcloc !4487
  br label %2, !dbg !4488

2:                                                ; preds = %1
  call void @z_impl_k_yield() #7, !dbg !4489
  ret void, !dbg !4490
}

; Function Attrs: optsize
declare !dbg !4491 dso_local i32 @sys_clock_tick_get_32() #4

; Function Attrs: nounwind optsize
define internal void @unready_thread(ptr noundef %0) #1 !dbg !4492 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  store ptr %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4494, metadata !DIExpression()), !dbg !4495
  %6 = load ptr, ptr %5, align 4, !dbg !4496
  %7 = call zeroext i1 @z_is_thread_queued(ptr noundef %6) #7, !dbg !4498
  br i1 %7, label %8, label %23, !dbg !4499

8:                                                ; preds = %1
  %9 = load ptr, ptr %5, align 4, !dbg !4500
  store ptr %9, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !809, metadata !DIExpression()), !dbg !4502
  %10 = load ptr, ptr %4, align 4, !dbg !4504
  %11 = getelementptr inbounds %struct._thread_base, ptr %10, i32 0, i32 3, !dbg !4505
  %12 = load i8, ptr %11, align 1, !dbg !4506
  %13 = zext i8 %12 to i32, !dbg !4506
  %14 = and i32 %13, -129, !dbg !4506
  %15 = trunc i32 %14 to i8, !dbg !4506
  store i8 %15, ptr %11, align 1, !dbg !4506
  %16 = load ptr, ptr %4, align 4, !dbg !4507
  %17 = call zeroext i1 @should_queue_thread(ptr noundef %16) #7, !dbg !4508
  br i1 %17, label %18, label %dequeue_thread.exit, !dbg !4509

18:                                               ; preds = %8
  %19 = load ptr, ptr %4, align 4, !dbg !4510
  store ptr %19, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !823, metadata !DIExpression()), !dbg !4511
  %20 = load ptr, ptr %3, align 4, !dbg !4513
  store ptr %20, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !829, metadata !DIExpression()), !dbg !4514
  %21 = load ptr, ptr %2, align 4, !dbg !4516
  %22 = load ptr, ptr %3, align 4, !dbg !4517
  call void @z_priq_dumb_remove(ptr noundef getelementptr inbounds (%struct.z_kernel, ptr @_kernel, i32 0, i32 1, i32 1), ptr noundef %22) #7, !dbg !4518
  br label %dequeue_thread.exit, !dbg !4519

dequeue_thread.exit:                              ; preds = %8, %18
  br label %23, !dbg !4520

23:                                               ; preds = %dequeue_thread.exit, %1
  %24 = load ptr, ptr %5, align 4, !dbg !4521
  %25 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !4522
  %26 = icmp eq ptr %24, %25, !dbg !4523
  %27 = zext i1 %26 to i32, !dbg !4523
  call void @update_cache(i32 noundef %27) #7, !dbg !4524
  ret void, !dbg !4525
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_add_thread_timeout(ptr noundef %0, [1 x i64] %1) #0 !dbg !4526 {
  %3 = alloca %struct.k_timeout_t, align 8
  %4 = alloca ptr, align 4
  %5 = getelementptr inbounds %struct.k_timeout_t, ptr %3, i32 0, i32 0
  store [1 x i64] %1, ptr %5, align 8
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4528, metadata !DIExpression()), !dbg !4530
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4529, metadata !DIExpression()), !dbg !4531
  %6 = load ptr, ptr %4, align 4, !dbg !4532
  %7 = getelementptr inbounds %struct.k_thread, ptr %6, i32 0, i32 0, !dbg !4533
  %8 = getelementptr inbounds %struct._thread_base, ptr %7, i32 0, i32 7, !dbg !4534
  %9 = getelementptr inbounds %struct.k_timeout_t, ptr %3, i32 0, i32 0, !dbg !4535
  %10 = load [1 x i64], ptr %9, align 8, !dbg !4535
  call void @z_add_timeout(ptr noundef %8, ptr noundef @z_thread_timeout, [1 x i64] %10) #7, !dbg !4535
  ret void, !dbg !4536
}

; Function Attrs: inlinehint nounwind optsize
define internal void @unpend_all(ptr noundef %0) #0 !dbg !4537 {
  %2 = alloca ptr, align 4
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4541, metadata !DIExpression()), !dbg !4543
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #8, !dbg !4544
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4542, metadata !DIExpression()), !dbg !4545
  br label %6, !dbg !4546

6:                                                ; preds = %10, %1
  %7 = load ptr, ptr %4, align 4, !dbg !4547
  %8 = call ptr @z_waitq_head(ptr noundef %7) #7, !dbg !4548
  store ptr %8, ptr %5, align 4, !dbg !4549
  %9 = icmp ne ptr %8, null, !dbg !4550
  br i1 %9, label %10, label %20, !dbg !4546

10:                                               ; preds = %6
  %11 = load ptr, ptr %5, align 4, !dbg !4551
  call void @unpend_thread_no_timeout(ptr noundef %11) #7, !dbg !4553
  %12 = load ptr, ptr %5, align 4, !dbg !4554
  %13 = call i32 @z_abort_thread_timeout(ptr noundef %12) #7, !dbg !4555
  %14 = load ptr, ptr %5, align 4, !dbg !4556
  store ptr %14, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4036, metadata !DIExpression()), !dbg !4557
  store i32 0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4042, metadata !DIExpression()), !dbg !4559
  %15 = load i32, ptr %3, align 4, !dbg !4560
  %16 = load ptr, ptr %2, align 4, !dbg !4561
  %17 = getelementptr inbounds %struct.k_thread, ptr %16, i32 0, i32 6, !dbg !4562
  %18 = getelementptr inbounds %struct._thread_arch, ptr %17, i32 0, i32 1, !dbg !4563
  store i32 %15, ptr %18, align 4, !dbg !4564
  %19 = load ptr, ptr %5, align 4, !dbg !4565
  call void @ready_thread(ptr noundef %19) #7, !dbg !4566
  br label %6, !dbg !4546, !llvm.loop !4567

20:                                               ; preds = %6
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #8, !dbg !4569
  ret void, !dbg !4569
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_mark_thread_as_pending(ptr noundef %0) #0 !dbg !4570 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4572, metadata !DIExpression()), !dbg !4573
  %3 = load ptr, ptr %2, align 4, !dbg !4574
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !4575
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 3, !dbg !4576
  %6 = load i8, ptr %5, align 1, !dbg !4577
  %7 = zext i8 %6 to i32, !dbg !4577
  %8 = or i32 %7, 2, !dbg !4577
  %9 = trunc i32 %8 to i8, !dbg !4577
  store i8 %9, ptr %5, align 1, !dbg !4577
  ret void, !dbg !4578
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @sys_dlist_peek_next_no_check(ptr noundef %0, ptr noundef %1) #0 !dbg !4579 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4581, metadata !DIExpression()), !dbg !4583
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4582, metadata !DIExpression()), !dbg !4584
  %5 = load ptr, ptr %4, align 4, !dbg !4585
  %6 = load ptr, ptr %3, align 4, !dbg !4586
  %7 = getelementptr inbounds %struct._dnode, ptr %6, i32 0, i32 1, !dbg !4587
  %8 = load ptr, ptr %7, align 4, !dbg !4587
  %9 = icmp eq ptr %5, %8, !dbg !4588
  br i1 %9, label %10, label %11, !dbg !4589

10:                                               ; preds = %2
  br label %15, !dbg !4589

11:                                               ; preds = %2
  %12 = load ptr, ptr %4, align 4, !dbg !4590
  %13 = getelementptr inbounds %struct._dnode, ptr %12, i32 0, i32 0, !dbg !4591
  %14 = load ptr, ptr %13, align 4, !dbg !4591
  br label %15, !dbg !4589

15:                                               ; preds = %11, %10
  %16 = phi ptr [ null, %10 ], [ %14, %11 ], !dbg !4589
  ret ptr %16, !dbg !4592
}

attributes #0 = { inlinehint nounwind optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { alwaysinline nounwind optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { optsize }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!246, !247, !248, !249, !250, !251}
!llvm.ident = !{!252}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "slice_timeouts", scope: !2, file: !232, line: 428, type: !245, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !97, globals: !229, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "sched.c", directory: "/home/sri/zephyrproject/zephyr/build")
!4 = !{!5, !15}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "k_fatal_error_reason", file: !6, line: 24, baseType: !7, size: 8, elements: !8)
!6 = !DIFile(filename: "include/zephyr/fatal_types.h", directory: "/home/sri/zephyrproject/zephyr")
!7 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!8 = !{!9, !10, !11, !12, !13, !14}
!9 = !DIEnumerator(name: "K_ERR_CPU_EXCEPTION", value: 0)
!10 = !DIEnumerator(name: "K_ERR_SPURIOUS_IRQ", value: 1)
!11 = !DIEnumerator(name: "K_ERR_STACK_CHK_FAIL", value: 2)
!12 = !DIEnumerator(name: "K_ERR_KERNEL_OOPS", value: 3)
!13 = !DIEnumerator(name: "K_ERR_KERNEL_PANIC", value: 4)
!14 = !DIEnumerator(name: "K_ERR_ARCH_START", value: 16)
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "k_objects", file: !16, line: 29, baseType: !7, size: 8, elements: !17)
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
!97 = !{!98, !101, !219, !221, !222, !223, !225, !226, !162, !192, !172, !228}
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !99, line: 64, baseType: !100)
!99 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/stdint.h", directory: "")
!100 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 32)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_thread", file: !103, line: 250, size: 896, elements: !104)
!103 = !DIFile(filename: "include/zephyr/kernel/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!104 = !{!105, !176, !189, !190, !191, !193, !214}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !102, file: !103, line: 252, baseType: !106, size: 384)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_base", file: !103, line: 58, size: 384, elements: !107)
!107 = !{!108, !136, !144, !146, !147, !160, !161, !163}
!108 = !DIDerivedType(tag: DW_TAG_member, scope: !106, file: !103, line: 61, baseType: !109, size: 64)
!109 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !106, file: !103, line: 61, size: 64, elements: !110)
!110 = !{!111, !127}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_dlist", scope: !109, file: !103, line: 62, baseType: !112, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dnode_t", file: !113, line: 55, baseType: !114)
!113 = !DIFile(filename: "include/zephyr/sys/dlist.h", directory: "/home/sri/zephyrproject/zephyr")
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_dnode", file: !113, line: 37, size: 64, elements: !115)
!115 = !{!116, !122}
!116 = !DIDerivedType(tag: DW_TAG_member, scope: !114, file: !113, line: 38, baseType: !117, size: 32)
!117 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !114, file: !113, line: 38, size: 32, elements: !118)
!118 = !{!119, !121}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !117, file: !113, line: 39, baseType: !120, size: 32)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 32)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !117, file: !113, line: 40, baseType: !120, size: 32)
!122 = !DIDerivedType(tag: DW_TAG_member, scope: !114, file: !113, line: 42, baseType: !123, size: 32, offset: 32)
!123 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !114, file: !113, line: 42, size: 32, elements: !124)
!124 = !{!125, !126}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !123, file: !113, line: 43, baseType: !120, size: 32)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !123, file: !113, line: 44, baseType: !120, size: 32)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_rb", scope: !109, file: !103, line: 63, baseType: !128, size: 64)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rbnode", file: !129, line: 58, size: 64, elements: !130)
!129 = !DIFile(filename: "include/zephyr/sys/rb.h", directory: "/home/sri/zephyrproject/zephyr")
!130 = !{!131}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !128, file: !129, line: 60, baseType: !132, size: 64)
!132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 64, elements: !134)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 32)
!134 = !{!135}
!135 = !DISubrange(count: 2)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "pended_on", scope: !106, file: !103, line: 69, baseType: !137, size: 32, offset: 64)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 32)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "_wait_q_t", file: !139, line: 243, baseType: !140)
!139 = !DIFile(filename: "include/zephyr/kernel_structs.h", directory: "/home/sri/zephyrproject/zephyr")
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !139, line: 241, size: 64, elements: !141)
!141 = !{!142}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !140, file: !139, line: 242, baseType: !143, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dlist_t", file: !113, line: 51, baseType: !114)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "user_options", scope: !106, file: !103, line: 72, baseType: !145, size: 8, offset: 96)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !99, line: 62, baseType: !7)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "thread_state", scope: !106, file: !103, line: 75, baseType: !145, size: 8, offset: 104)
!147 = !DIDerivedType(tag: DW_TAG_member, scope: !106, file: !103, line: 91, baseType: !148, size: 16, offset: 112)
!148 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !106, file: !103, line: 91, size: 16, elements: !149)
!149 = !{!150, !157}
!150 = !DIDerivedType(tag: DW_TAG_member, scope: !148, file: !103, line: 92, baseType: !151, size: 16)
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !148, file: !103, line: 92, size: 16, elements: !152)
!152 = !{!153, !156}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !151, file: !103, line: 97, baseType: !154, size: 8)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !99, line: 56, baseType: !155)
!155 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "sched_locked", scope: !151, file: !103, line: 98, baseType: !145, size: 8, offset: 8)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "preempt", scope: !148, file: !103, line: 101, baseType: !158, size: 16)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !99, line: 63, baseType: !159)
!159 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "order_key", scope: !106, file: !103, line: 108, baseType: !98, size: 32, offset: 128)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "swap_data", scope: !106, file: !103, line: 132, baseType: !162, size: 32, offset: 160)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !106, file: !103, line: 136, baseType: !164, size: 192, offset: 192)
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_timeout", file: !139, line: 254, size: 192, elements: !165)
!165 = !{!166, !167, !173}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !164, file: !139, line: 255, baseType: !112, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !164, file: !139, line: 256, baseType: !168, size: 32, offset: 64)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "_timeout_func_t", file: !139, line: 252, baseType: !169)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 32)
!170 = !DISubroutineType(types: !171)
!171 = !{null, !172}
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 32)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "dticks", scope: !164, file: !139, line: 259, baseType: !174, size: 64, offset: 128)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !99, line: 59, baseType: !175)
!175 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "callee_saved", scope: !102, file: !103, line: 255, baseType: !177, size: 288, offset: 384)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_callee_saved", file: !178, line: 25, size: 288, elements: !179)
!178 = !DIFile(filename: "include/zephyr/arch/arm/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!179 = !{!180, !181, !182, !183, !184, !185, !186, !187, !188}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "v1", scope: !177, file: !178, line: 26, baseType: !98, size: 32)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "v2", scope: !177, file: !178, line: 27, baseType: !98, size: 32, offset: 32)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "v3", scope: !177, file: !178, line: 28, baseType: !98, size: 32, offset: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "v4", scope: !177, file: !178, line: 29, baseType: !98, size: 32, offset: 96)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "v5", scope: !177, file: !178, line: 30, baseType: !98, size: 32, offset: 128)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "v6", scope: !177, file: !178, line: 31, baseType: !98, size: 32, offset: 160)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "v7", scope: !177, file: !178, line: 32, baseType: !98, size: 32, offset: 192)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "v8", scope: !177, file: !178, line: 33, baseType: !98, size: 32, offset: 224)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "psp", scope: !177, file: !178, line: 34, baseType: !98, size: 32, offset: 256)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "init_data", scope: !102, file: !103, line: 258, baseType: !162, size: 32, offset: 672)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "join_queue", scope: !102, file: !103, line: 261, baseType: !138, size: 64, offset: 704)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "errno_var", scope: !102, file: !103, line: 302, baseType: !192, size: 32, offset: 768)
!192 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "resource_pool", scope: !102, file: !103, line: 333, baseType: !194, size: 32, offset: 800)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 32)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_heap", file: !196, line: 5291, size: 160, elements: !197)
!196 = !DIFile(filename: "include/zephyr/kernel.h", directory: "/home/sri/zephyrproject/zephyr")
!197 = !{!198, !209, !210}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !195, file: !196, line: 5292, baseType: !199, size: 96)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sys_heap", file: !200, line: 56, size: 96, elements: !201)
!200 = !DIFile(filename: "include/zephyr/sys/sys_heap.h", directory: "/home/sri/zephyrproject/zephyr")
!201 = !{!202, !205, !206}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !199, file: !200, line: 57, baseType: !203, size: 32)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 32)
!204 = !DICompositeType(tag: DW_TAG_structure_type, name: "z_heap", file: !200, line: 57, flags: DIFlagFwdDecl)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "init_mem", scope: !199, file: !200, line: 58, baseType: !162, size: 32, offset: 32)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "init_bytes", scope: !199, file: !200, line: 59, baseType: !207, size: 32, offset: 64)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !208, line: 46, baseType: !100)
!208 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/lib/clang/17/include/stddef.h", directory: "")
!209 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !195, file: !196, line: 5293, baseType: !138, size: 64, offset: 96)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !195, file: !196, line: 5294, baseType: !211, offset: 160)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_spinlock", file: !212, line: 45, elements: !213)
!212 = !DIFile(filename: "include/zephyr/spinlock.h", directory: "/home/sri/zephyrproject/zephyr")
!213 = !{}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !102, file: !103, line: 355, baseType: !215, size: 64, offset: 832)
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_arch", file: !178, line: 60, size: 64, elements: !216)
!216 = !{!217, !218}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "basepri", scope: !215, file: !178, line: 63, baseType: !98, size: 32)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "swap_return_value", scope: !215, file: !178, line: 66, baseType: !98, size: 32, offset: 32)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 32)
!220 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 32)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 32)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_ticks_t", file: !224, line: 46, baseType: !174)
!224 = !DIFile(filename: "include/zephyr/sys_clock.h", directory: "/home/sri/zephyrproject/zephyr")
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !99, line: 58, baseType: !192)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !99, line: 65, baseType: !227)
!227 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 32)
!229 = !{!230, !0, !233, !239, !241, !243}
!230 = !DIGlobalVariableExpression(var: !231, expr: !DIExpression())
!231 = distinct !DIGlobalVariable(name: "sched_spinlock", scope: !2, file: !232, line: 57, type: !211, isLocal: false, isDefinition: true)
!232 = !DIFile(filename: "kernel/sched.c", directory: "/home/sri/zephyrproject/zephyr")
!233 = !DIGlobalVariableExpression(var: !234, expr: !DIExpression())
!234 = distinct !DIGlobalVariable(name: "slice_expired", scope: !2, file: !232, line: 429, type: !235, isLocal: true, isDefinition: true)
!235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !236, size: 8, elements: !237)
!236 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!237 = !{!238}
!238 = !DISubrange(count: 1)
!239 = !DIGlobalVariableExpression(var: !240, expr: !DIExpression())
!240 = distinct !DIGlobalVariable(name: "pending_current", scope: !2, file: !232, line: 437, type: !101, isLocal: true, isDefinition: true)
!241 = !DIGlobalVariableExpression(var: !242, expr: !DIExpression())
!242 = distinct !DIGlobalVariable(name: "slice_ticks", scope: !2, file: !232, line: 426, type: !192, isLocal: true, isDefinition: true)
!243 = !DIGlobalVariableExpression(var: !244, expr: !DIExpression())
!244 = distinct !DIGlobalVariable(name: "slice_max_prio", scope: !2, file: !232, line: 427, type: !192, isLocal: true, isDefinition: true)
!245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 192, elements: !237)
!246 = !{i32 7, !"Dwarf Version", i32 4}
!247 = !{i32 2, !"Debug Info Version", i32 3}
!248 = !{i32 1, !"wchar_size", i32 4}
!249 = !{i32 1, !"static_rwdata", i32 1}
!250 = !{i32 1, !"enumsize_buildattr", i32 1}
!251 = !{i32 1, !"armlib_unavailable", i32 0}
!252 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
!253 = distinct !DISubprogram(name: "z_impl_k_object_access_grant", scope: !16, file: !16, line: 223, type: !254, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !258)
!254 = !DISubroutineType(types: !255)
!255 = !{null, !256, !101}
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 32)
!257 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!258 = !{!259, !260}
!259 = !DILocalVariable(name: "object", arg: 1, scope: !253, file: !16, line: 223, type: !256)
!260 = !DILocalVariable(name: "thread", arg: 2, scope: !253, file: !16, line: 224, type: !101)
!261 = !DILocation(line: 223, column: 61, scope: !253)
!262 = !DILocation(line: 224, column: 24, scope: !253)
!263 = !DILocation(line: 226, column: 9, scope: !253)
!264 = !DILocation(line: 227, column: 9, scope: !253)
!265 = !DILocation(line: 228, column: 1, scope: !253)
!266 = distinct !DISubprogram(name: "z_impl_k_object_release", scope: !16, file: !16, line: 243, type: !267, scopeLine: 244, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !269)
!267 = !DISubroutineType(types: !268)
!268 = !{null, !256}
!269 = !{!270}
!270 = !DILocalVariable(name: "object", arg: 1, scope: !266, file: !16, line: 243, type: !256)
!271 = !DILocation(line: 243, column: 56, scope: !266)
!272 = !DILocation(line: 245, column: 9, scope: !266)
!273 = !DILocation(line: 246, column: 1, scope: !266)
!274 = distinct !DISubprogram(name: "z_impl_k_object_alloc", scope: !16, file: !16, line: 359, type: !275, scopeLine: 360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !277)
!275 = !DISubroutineType(types: !276)
!276 = !{!162, !15}
!277 = !{!278}
!278 = !DILocalVariable(name: "otype", arg: 1, scope: !274, file: !16, line: 359, type: !15)
!279 = !DILocation(line: 359, column: 58, scope: !274)
!280 = !DILocation(line: 361, column: 9, scope: !274)
!281 = !DILocation(line: 363, column: 2, scope: !274)
!282 = distinct !DISubprogram(name: "z_impl_k_object_alloc_size", scope: !16, file: !16, line: 366, type: !283, scopeLine: 368, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !285)
!283 = !DISubroutineType(types: !284)
!284 = !{!162, !15, !207}
!285 = !{!286, !287}
!286 = !DILocalVariable(name: "otype", arg: 1, scope: !282, file: !16, line: 366, type: !15)
!287 = !DILocalVariable(name: "size", arg: 2, scope: !282, file: !16, line: 367, type: !207)
!288 = !DILocation(line: 366, column: 63, scope: !282)
!289 = !DILocation(line: 367, column: 13, scope: !282)
!290 = !DILocation(line: 369, column: 9, scope: !282)
!291 = !DILocation(line: 370, column: 9, scope: !282)
!292 = !DILocation(line: 372, column: 2, scope: !282)
!293 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_expires_ticks", scope: !196, file: !196, line: 656, type: !294, scopeLine: 658, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !298)
!294 = !DISubroutineType(types: !295)
!295 = !{!223, !296}
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 32)
!297 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !102)
!298 = !{!299}
!299 = !DILocalVariable(name: "t", arg: 1, scope: !293, file: !196, line: 657, type: !296)
!300 = !DILocation(line: 657, column: 30, scope: !293)
!301 = !DILocation(line: 659, column: 28, scope: !293)
!302 = !DILocation(line: 659, column: 31, scope: !293)
!303 = !DILocation(line: 659, column: 36, scope: !293)
!304 = !DILocation(line: 659, column: 9, scope: !293)
!305 = !DILocation(line: 659, column: 2, scope: !293)
!306 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_remaining_ticks", scope: !196, file: !196, line: 671, type: !294, scopeLine: 673, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !307)
!307 = !{!308}
!308 = !DILocalVariable(name: "t", arg: 1, scope: !306, file: !196, line: 672, type: !296)
!309 = !DILocation(line: 672, column: 30, scope: !306)
!310 = !DILocation(line: 674, column: 30, scope: !306)
!311 = !DILocation(line: 674, column: 33, scope: !306)
!312 = !DILocation(line: 674, column: 38, scope: !306)
!313 = !DILocation(line: 674, column: 9, scope: !306)
!314 = !DILocation(line: 674, column: 2, scope: !306)
!315 = distinct !DISubprogram(name: "z_impl_k_timer_expires_ticks", scope: !196, file: !196, line: 1634, type: !316, scopeLine: 1636, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !337)
!316 = !DISubroutineType(types: !317)
!317 = !{!223, !318}
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 32)
!319 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !320)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_timer", file: !196, line: 1439, size: 448, elements: !321)
!321 = !{!322, !323, !324, !329, !330, !335, !336}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !320, file: !196, line: 1445, baseType: !164, size: 192)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !320, file: !196, line: 1448, baseType: !138, size: 64, offset: 192)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_fn", scope: !320, file: !196, line: 1451, baseType: !325, size: 32, offset: 256)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 32)
!326 = !DISubroutineType(types: !327)
!327 = !{null, !328}
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 32)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "stop_fn", scope: !320, file: !196, line: 1454, baseType: !325, size: 32, offset: 288)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !320, file: !196, line: 1457, baseType: !331, size: 64, offset: 320)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_timeout_t", file: !224, line: 67, baseType: !332)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !224, line: 65, size: 64, elements: !333)
!333 = !{!334}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "ticks", scope: !332, file: !224, line: 66, baseType: !223, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !320, file: !196, line: 1460, baseType: !98, size: 32, offset: 384)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !320, file: !196, line: 1463, baseType: !162, size: 32, offset: 416)
!337 = !{!338}
!338 = !DILocalVariable(name: "timer", arg: 1, scope: !315, file: !196, line: 1635, type: !318)
!339 = !DILocation(line: 1635, column: 34, scope: !315)
!340 = !DILocation(line: 1637, column: 28, scope: !315)
!341 = !DILocation(line: 1637, column: 35, scope: !315)
!342 = !DILocation(line: 1637, column: 9, scope: !315)
!343 = !DILocation(line: 1637, column: 2, scope: !315)
!344 = distinct !DISubprogram(name: "z_impl_k_timer_remaining_ticks", scope: !196, file: !196, line: 1649, type: !316, scopeLine: 1651, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !345)
!345 = !{!346}
!346 = !DILocalVariable(name: "timer", arg: 1, scope: !344, file: !196, line: 1650, type: !318)
!347 = !DILocation(line: 1650, column: 34, scope: !344)
!348 = !DILocation(line: 1652, column: 30, scope: !344)
!349 = !DILocation(line: 1652, column: 37, scope: !344)
!350 = !DILocation(line: 1652, column: 9, scope: !344)
!351 = !DILocation(line: 1652, column: 2, scope: !344)
!352 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_set", scope: !196, file: !196, line: 1689, type: !353, scopeLine: 1691, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !355)
!353 = !DISubroutineType(types: !354)
!354 = !{null, !328, !162}
!355 = !{!356, !357}
!356 = !DILocalVariable(name: "timer", arg: 1, scope: !352, file: !196, line: 1689, type: !328)
!357 = !DILocalVariable(name: "user_data", arg: 2, scope: !352, file: !196, line: 1690, type: !162)
!358 = !DILocation(line: 1689, column: 65, scope: !352)
!359 = !DILocation(line: 1690, column: 19, scope: !352)
!360 = !DILocation(line: 1692, column: 21, scope: !352)
!361 = !DILocation(line: 1692, column: 2, scope: !352)
!362 = !DILocation(line: 1692, column: 9, scope: !352)
!363 = !DILocation(line: 1692, column: 19, scope: !352)
!364 = !DILocation(line: 1693, column: 1, scope: !352)
!365 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_get", scope: !196, file: !196, line: 1704, type: !366, scopeLine: 1705, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !368)
!366 = !DISubroutineType(types: !367)
!367 = !{!162, !318}
!368 = !{!369}
!369 = !DILocalVariable(name: "timer", arg: 1, scope: !365, file: !196, line: 1704, type: !318)
!370 = !DILocation(line: 1704, column: 72, scope: !365)
!371 = !DILocation(line: 1706, column: 9, scope: !365)
!372 = !DILocation(line: 1706, column: 16, scope: !365)
!373 = !DILocation(line: 1706, column: 2, scope: !365)
!374 = distinct !DISubprogram(name: "z_impl_k_queue_is_empty", scope: !196, file: !196, line: 2071, type: !375, scopeLine: 2072, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !395)
!375 = !DISubroutineType(types: !376)
!376 = !{!192, !377}
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 32)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_queue", file: !196, line: 1830, size: 128, elements: !379)
!379 = !{!380, !393, !394}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "data_q", scope: !378, file: !196, line: 1831, baseType: !381, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sflist_t", file: !382, line: 60, baseType: !383)
!382 = !DIFile(filename: "include/zephyr/sys/sflist.h", directory: "/home/sri/zephyrproject/zephyr")
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sflist", file: !382, line: 53, size: 64, elements: !384)
!384 = !{!385, !392}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !383, file: !382, line: 54, baseType: !386, size: 32)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 32)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sfnode_t", file: !382, line: 50, baseType: !388)
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sfnode", file: !382, line: 44, size: 32, elements: !389)
!389 = !{!390}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "next_and_flags", scope: !388, file: !382, line: 45, baseType: !391, size: 32)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "unative_t", file: !382, line: 40, baseType: !98)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !383, file: !382, line: 55, baseType: !386, size: 32, offset: 32)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !378, file: !196, line: 1832, baseType: !211, offset: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !378, file: !196, line: 1833, baseType: !138, size: 64, offset: 64)
!395 = !{!396}
!396 = !DILocalVariable(name: "queue", arg: 1, scope: !374, file: !196, line: 2071, type: !377)
!397 = !DILocation(line: 2071, column: 59, scope: !374)
!398 = !DILocation(line: 2073, column: 35, scope: !374)
!399 = !DILocation(line: 2073, column: 42, scope: !374)
!400 = !DILocation(line: 2073, column: 14, scope: !374)
!401 = !DILocation(line: 2073, column: 9, scope: !374)
!402 = !DILocation(line: 2073, column: 2, scope: !374)
!403 = distinct !DISubprogram(name: "z_impl_k_sem_count_get", scope: !196, file: !196, line: 3209, type: !404, scopeLine: 3210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !412)
!404 = !DISubroutineType(types: !405)
!405 = !{!100, !406}
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 32)
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sem", file: !196, line: 3092, size: 128, elements: !408)
!408 = !{!409, !410, !411}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !407, file: !196, line: 3093, baseType: !138, size: 64)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !407, file: !196, line: 3094, baseType: !100, size: 32, offset: 64)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !407, file: !196, line: 3095, baseType: !100, size: 32, offset: 96)
!412 = !{!413}
!413 = !DILocalVariable(name: "sem", arg: 1, scope: !403, file: !196, line: 3209, type: !406)
!414 = !DILocation(line: 3209, column: 65, scope: !403)
!415 = !DILocation(line: 3211, column: 9, scope: !403)
!416 = !DILocation(line: 3211, column: 14, scope: !403)
!417 = !DILocation(line: 3211, column: 2, scope: !403)
!418 = distinct !DISubprogram(name: "z_impl_k_msgq_num_free_get", scope: !196, file: !196, line: 4649, type: !419, scopeLine: 4650, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !434)
!419 = !DISubroutineType(types: !420)
!420 = !{!98, !421}
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 32)
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_msgq", file: !196, line: 4390, size: 320, elements: !423)
!423 = !{!424, !425, !426, !427, !428, !429, !430, !431, !432, !433}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !422, file: !196, line: 4392, baseType: !138, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !422, file: !196, line: 4394, baseType: !211, offset: 64)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "msg_size", scope: !422, file: !196, line: 4396, baseType: !207, size: 32, offset: 64)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !422, file: !196, line: 4398, baseType: !98, size: 32, offset: 96)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_start", scope: !422, file: !196, line: 4400, baseType: !219, size: 32, offset: 128)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_end", scope: !422, file: !196, line: 4402, baseType: !219, size: 32, offset: 160)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "read_ptr", scope: !422, file: !196, line: 4404, baseType: !219, size: 32, offset: 192)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "write_ptr", scope: !422, file: !196, line: 4406, baseType: !219, size: 32, offset: 224)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "used_msgs", scope: !422, file: !196, line: 4408, baseType: !98, size: 32, offset: 256)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !422, file: !196, line: 4413, baseType: !145, size: 8, offset: 288)
!434 = !{!435}
!435 = !DILocalVariable(name: "msgq", arg: 1, scope: !418, file: !196, line: 4649, type: !421)
!436 = !DILocation(line: 4649, column: 66, scope: !418)
!437 = !DILocation(line: 4651, column: 9, scope: !418)
!438 = !DILocation(line: 4651, column: 15, scope: !418)
!439 = !DILocation(line: 4651, column: 26, scope: !418)
!440 = !DILocation(line: 4651, column: 32, scope: !418)
!441 = !DILocation(line: 4651, column: 24, scope: !418)
!442 = !DILocation(line: 4651, column: 2, scope: !418)
!443 = distinct !DISubprogram(name: "z_impl_k_msgq_num_used_get", scope: !196, file: !196, line: 4665, type: !419, scopeLine: 4666, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !444)
!444 = !{!445}
!445 = !DILocalVariable(name: "msgq", arg: 1, scope: !443, file: !196, line: 4665, type: !421)
!446 = !DILocation(line: 4665, column: 66, scope: !443)
!447 = !DILocation(line: 4667, column: 9, scope: !443)
!448 = !DILocation(line: 4667, column: 15, scope: !443)
!449 = !DILocation(line: 4667, column: 2, scope: !443)
!450 = distinct !DISubprogram(name: "z_sched_prio_cmp", scope: !232, file: !232, line: 100, type: !451, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !453)
!451 = !DISubroutineType(types: !452)
!452 = !{!225, !101, !101}
!453 = !{!454, !455, !456, !457}
!454 = !DILocalVariable(name: "thread_1", arg: 1, scope: !450, file: !232, line: 100, type: !101)
!455 = !DILocalVariable(name: "thread_2", arg: 2, scope: !450, file: !232, line: 101, type: !101)
!456 = !DILocalVariable(name: "b1", scope: !450, file: !232, line: 104, type: !225)
!457 = !DILocalVariable(name: "b2", scope: !450, file: !232, line: 105, type: !225)
!458 = !DILocation(line: 100, column: 43, scope: !450)
!459 = !DILocation(line: 101, column: 19, scope: !450)
!460 = !DILocation(line: 104, column: 2, scope: !450)
!461 = !DILocation(line: 104, column: 10, scope: !450)
!462 = !DILocation(line: 104, column: 15, scope: !450)
!463 = !DILocation(line: 104, column: 25, scope: !450)
!464 = !DILocation(line: 104, column: 30, scope: !450)
!465 = !DILocation(line: 105, column: 2, scope: !450)
!466 = !DILocation(line: 105, column: 10, scope: !450)
!467 = !DILocation(line: 105, column: 15, scope: !450)
!468 = !DILocation(line: 105, column: 25, scope: !450)
!469 = !DILocation(line: 105, column: 30, scope: !450)
!470 = !DILocation(line: 107, column: 6, scope: !471)
!471 = distinct !DILexicalBlock(scope: !450, file: !232, line: 107, column: 6)
!472 = !DILocation(line: 107, column: 12, scope: !471)
!473 = !DILocation(line: 107, column: 9, scope: !471)
!474 = !DILocation(line: 107, column: 6, scope: !450)
!475 = !DILocation(line: 108, column: 10, scope: !476)
!476 = distinct !DILexicalBlock(scope: !471, file: !232, line: 107, column: 16)
!477 = !DILocation(line: 108, column: 15, scope: !476)
!478 = !DILocation(line: 108, column: 13, scope: !476)
!479 = !DILocation(line: 108, column: 3, scope: !476)
!480 = !DILocation(line: 131, column: 2, scope: !450)
!481 = !DILocation(line: 132, column: 1, scope: !450)
!482 = distinct !DISubprogram(name: "z_reset_time_slice", scope: !232, file: !232, line: 484, type: !483, scopeLine: 485, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !485)
!483 = !DISubroutineType(types: !484)
!484 = !{null, !101}
!485 = !{!486, !487}
!486 = !DILocalVariable(name: "curr", arg: 1, scope: !482, file: !232, line: 484, type: !101)
!487 = !DILocalVariable(name: "cpu", scope: !482, file: !232, line: 486, type: !192)
!488 = !DILocation(line: 484, column: 42, scope: !482)
!489 = !DILocation(line: 486, column: 2, scope: !482)
!490 = !DILocation(line: 486, column: 6, scope: !482)
!491 = !DILocation(line: 486, column: 32, scope: !482)
!492 = !DILocation(line: 486, column: 12, scope: !482)
!493 = !DILocation(line: 488, column: 34, scope: !482)
!494 = !DILocation(line: 488, column: 19, scope: !482)
!495 = !DILocation(line: 488, column: 2, scope: !482)
!496 = !DILocation(line: 489, column: 16, scope: !482)
!497 = !DILocation(line: 489, column: 2, scope: !482)
!498 = !DILocation(line: 489, column: 21, scope: !482)
!499 = !DILocation(line: 490, column: 16, scope: !500)
!500 = distinct !DILexicalBlock(scope: !482, file: !232, line: 490, column: 6)
!501 = !DILocation(line: 490, column: 6, scope: !500)
!502 = !DILocation(line: 490, column: 6, scope: !482)
!503 = !DILocation(line: 491, column: 33, scope: !504)
!504 = distinct !DILexicalBlock(scope: !500, file: !232, line: 490, column: 23)
!505 = !DILocation(line: 491, column: 18, scope: !504)
!506 = !DILocation(line: 492, column: 25, scope: !504)
!507 = !DILocation(line: 492, column: 48, scope: !504)
!508 = !DILocation(line: 492, column: 37, scope: !504)
!509 = !DILocation(line: 492, column: 54, scope: !504)
!510 = !DILocation(line: 492, column: 36, scope: !504)
!511 = !DILocation(line: 491, column: 3, scope: !504)
!512 = !DILocation(line: 493, column: 2, scope: !504)
!513 = !DILocation(line: 494, column: 1, scope: !482)
!514 = !DISubprogram(name: "z_abort_timeout", scope: !515, file: !515, line: 33, type: !516, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !213)
!515 = !DIFile(filename: "kernel/include/timeout_q.h", directory: "/home/sri/zephyrproject/zephyr")
!516 = !DISubroutineType(types: !517)
!517 = !{!192, !172}
!518 = distinct !DISubprogram(name: "sliceable", scope: !232, file: !232, line: 454, type: !519, scopeLine: 455, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !521)
!519 = !DISubroutineType(types: !520)
!520 = !{!236, !101}
!521 = !{!522, !523}
!522 = !DILocalVariable(name: "thread", arg: 1, scope: !518, file: !232, line: 454, type: !101)
!523 = !DILocalVariable(name: "ret", scope: !518, file: !232, line: 456, type: !236)
!524 = !DILocation(line: 454, column: 48, scope: !518)
!525 = !DILocation(line: 456, column: 2, scope: !518)
!526 = !DILocation(line: 456, column: 8, scope: !518)
!527 = !DILocation(line: 456, column: 25, scope: !518)
!528 = !DILocation(line: 456, column: 14, scope: !518)
!529 = !DILocation(line: 457, column: 3, scope: !518)
!530 = !DILocation(line: 457, column: 17, scope: !518)
!531 = !DILocation(line: 457, column: 6, scope: !518)
!532 = !DILocation(line: 457, column: 25, scope: !518)
!533 = !DILocation(line: 458, column: 3, scope: !518)
!534 = !DILocation(line: 458, column: 24, scope: !518)
!535 = !DILocation(line: 458, column: 32, scope: !518)
!536 = !DILocation(line: 458, column: 37, scope: !518)
!537 = !DILocation(line: 458, column: 43, scope: !518)
!538 = !DILocation(line: 458, column: 7, scope: !518)
!539 = !DILocation(line: 459, column: 3, scope: !518)
!540 = !DILocation(line: 459, column: 42, scope: !518)
!541 = !DILocation(line: 459, column: 7, scope: !518)
!542 = !DILocation(line: 460, column: 3, scope: !518)
!543 = !DILocation(line: 460, column: 31, scope: !518)
!544 = !DILocation(line: 460, column: 7, scope: !518)
!545 = !DILocation(line: 460, column: 6, scope: !518)
!546 = !DILocation(line: 0, scope: !518)
!547 = !DILocation(line: 466, column: 9, scope: !518)
!548 = !{i8 0, i8 2}
!549 = !DILocation(line: 467, column: 1, scope: !518)
!550 = !DILocation(line: 466, column: 2, scope: !518)
!551 = !DISubprogram(name: "z_add_timeout", scope: !515, file: !515, line: 30, type: !552, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !213)
!552 = !DISubroutineType(types: !553)
!553 = !{null, !172, !168, !331}
!554 = distinct !DISubprogram(name: "slice_timeout", scope: !232, file: !232, line: 469, type: !170, scopeLine: 470, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !555)
!555 = !{!556, !557}
!556 = !DILocalVariable(name: "t", arg: 1, scope: !554, file: !232, line: 469, type: !172)
!557 = !DILocalVariable(name: "cpu", scope: !554, file: !232, line: 471, type: !192)
!558 = !DILocation(line: 469, column: 44, scope: !554)
!559 = !DILocation(line: 471, column: 2, scope: !554)
!560 = !DILocation(line: 471, column: 6, scope: !554)
!561 = !DILocation(line: 471, column: 56, scope: !562)
!562 = distinct !DILexicalBlock(scope: !554, file: !232, line: 471, column: 13)
!563 = !DILocation(line: 471, column: 59, scope: !562)
!564 = !DILocation(line: 471, column: 17, scope: !565)
!565 = distinct !DILexicalBlock(scope: !562, file: !232, line: 471, column: 15)
!566 = !DILocation(line: 471, column: 79, scope: !562)
!567 = !DILocation(line: 473, column: 16, scope: !554)
!568 = !DILocation(line: 473, column: 2, scope: !554)
!569 = !DILocation(line: 473, column: 21, scope: !554)
!570 = !DILocation(line: 482, column: 1, scope: !554)
!571 = distinct !DISubprogram(name: "slice_time", scope: !232, file: !232, line: 440, type: !572, scopeLine: 441, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !574)
!572 = !DISubroutineType(types: !573)
!573 = !{!192, !101}
!574 = !{!575, !576}
!575 = !DILocalVariable(name: "thread", arg: 1, scope: !571, file: !232, line: 440, type: !101)
!576 = !DILocalVariable(name: "ret", scope: !571, file: !232, line: 442, type: !192)
!577 = !DILocation(line: 440, column: 47, scope: !571)
!578 = !DILocation(line: 442, column: 2, scope: !571)
!579 = !DILocation(line: 442, column: 6, scope: !571)
!580 = !DILocation(line: 442, column: 12, scope: !571)
!581 = !DILocation(line: 449, column: 9, scope: !571)
!582 = !DILocation(line: 451, column: 9, scope: !571)
!583 = !DILocation(line: 452, column: 1, scope: !571)
!584 = !DILocation(line: 451, column: 2, scope: !571)
!585 = distinct !DISubprogram(name: "k_sched_time_slice_set", scope: !232, file: !232, line: 496, type: !586, scopeLine: 497, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !588)
!586 = !DISubroutineType(types: !587)
!587 = !{null, !225, !192}
!588 = !{!589, !590, !591, !597}
!589 = !DILocalVariable(name: "slice", arg: 1, scope: !585, file: !232, line: 496, type: !225)
!590 = !DILocalVariable(name: "prio", arg: 2, scope: !585, file: !232, line: 496, type: !192)
!591 = !DILocalVariable(name: "__i", scope: !592, file: !232, line: 498, type: !593)
!592 = distinct !DILexicalBlock(scope: !585, file: !232, line: 498, column: 2)
!593 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_spinlock_key_t", file: !212, line: 108, baseType: !594)
!594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "z_spinlock_key", file: !212, line: 34, size: 32, elements: !595)
!595 = !{!596}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !594, file: !212, line: 35, baseType: !192, size: 32)
!597 = !DILocalVariable(name: "__key", scope: !592, file: !232, line: 498, type: !593)
!598 = !DILocation(line: 496, column: 37, scope: !585)
!599 = !DILocation(line: 496, column: 48, scope: !585)
!600 = !DILocation(line: 498, column: 7, scope: !592)
!601 = !DILocation(line: 498, column: 24, scope: !592)
!602 = !DILocation(line: 498, column: 34, scope: !592)
!603 = !DILocalVariable(name: "l", arg: 1, scope: !604, file: !212, line: 160, type: !607)
!604 = distinct !DISubprogram(name: "k_spin_lock", scope: !212, file: !212, line: 160, type: !605, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !608)
!605 = !DISubroutineType(types: !606)
!606 = !{!593, !607}
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 32)
!608 = !{!603, !609}
!609 = !DILocalVariable(name: "k", scope: !604, file: !212, line: 163, type: !593)
!610 = !DILocation(line: 160, column: 94, scope: !604, inlinedAt: !611)
!611 = distinct !DILocation(line: 498, column: 42, scope: !592)
!612 = !DILocation(line: 162, column: 9, scope: !604, inlinedAt: !611)
!613 = !DILocation(line: 163, column: 19, scope: !604, inlinedAt: !611)
!614 = !DILocation(line: 44, column: 2, scope: !615, inlinedAt: !621)
!615 = distinct !DISubprogram(name: "arch_irq_lock", scope: !616, file: !616, line: 42, type: !617, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !619)
!616 = !DIFile(filename: "include/zephyr/arch/arm/asm_inline_gcc.h", directory: "/home/sri/zephyrproject/zephyr")
!617 = !DISubroutineType(types: !618)
!618 = !{!100}
!619 = !{!620}
!620 = !DILocalVariable(name: "key", scope: !615, file: !616, line: 44, type: !100)
!621 = distinct !DILocation(line: 169, column: 10, scope: !604, inlinedAt: !611)
!622 = !DILocation(line: 44, column: 15, scope: !615, inlinedAt: !621)
!623 = !DILocation(line: 48, column: 2, scope: !615, inlinedAt: !621)
!624 = !{i64 66897}
!625 = !DILocation(line: 80, column: 9, scope: !615, inlinedAt: !621)
!626 = !DILocation(line: 81, column: 1, scope: !615, inlinedAt: !621)
!627 = !DILocation(line: 169, column: 8, scope: !604, inlinedAt: !611)
!628 = !DILocation(line: 171, column: 26, scope: !604, inlinedAt: !611)
!629 = !DILocalVariable(name: "l", arg: 1, scope: !630, file: !212, line: 110, type: !607)
!630 = distinct !DISubprogram(name: "z_spinlock_validate_pre", scope: !212, file: !212, line: 110, type: !631, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !633)
!631 = !DISubroutineType(types: !632)
!632 = !{null, !607}
!633 = !{!629}
!634 = !DILocation(line: 110, column: 94, scope: !630, inlinedAt: !635)
!635 = distinct !DILocation(line: 171, column: 2, scope: !604, inlinedAt: !611)
!636 = !DILocation(line: 112, column: 9, scope: !630, inlinedAt: !635)
!637 = !DILocation(line: 177, column: 27, scope: !604, inlinedAt: !611)
!638 = !DILocalVariable(name: "l", arg: 1, scope: !639, file: !212, line: 121, type: !607)
!639 = distinct !DISubprogram(name: "z_spinlock_validate_post", scope: !212, file: !212, line: 121, type: !631, scopeLine: 122, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !640)
!640 = !{!638}
!641 = !DILocation(line: 121, column: 95, scope: !639, inlinedAt: !642)
!642 = distinct !DILocation(line: 177, column: 2, scope: !604, inlinedAt: !611)
!643 = !DILocation(line: 123, column: 9, scope: !639, inlinedAt: !642)
!644 = !DILocation(line: 179, column: 2, scope: !604, inlinedAt: !611)
!645 = !DILocation(line: 498, column: 42, scope: !592)
!646 = !DILocation(line: 498, column: 77, scope: !647)
!647 = distinct !DILexicalBlock(scope: !592, file: !232, line: 498, column: 2)
!648 = !DILocation(line: 498, column: 72, scope: !647)
!649 = !DILocation(line: 498, column: 2, scope: !592)
!650 = !DILocation(line: 498, column: 2, scope: !647)
!651 = !DILocation(line: 499, column: 520, scope: !652)
!652 = distinct !DILexicalBlock(scope: !647, file: !232, line: 498, column: 134)
!653 = !DILocation(line: 499, column: 526, scope: !652)
!654 = !DILocation(line: 499, column: 15, scope: !652)
!655 = !DILocation(line: 500, column: 20, scope: !652)
!656 = !DILocation(line: 500, column: 18, scope: !652)
!657 = !DILocation(line: 501, column: 38, scope: !652)
!658 = !DILocation(line: 501, column: 3, scope: !652)
!659 = !DILocation(line: 502, column: 2, scope: !652)
!660 = !DILocation(line: 498, column: 82, scope: !647)
!661 = !DILocalVariable(name: "l", arg: 1, scope: !662, file: !212, line: 235, type: !607)
!662 = distinct !DISubprogram(name: "k_spin_unlock", scope: !212, file: !212, line: 235, type: !663, scopeLine: 237, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !665)
!663 = !DISubroutineType(types: !664)
!664 = !{null, !607, !593}
!665 = !{!661, !666}
!666 = !DILocalVariable(name: "key", arg: 2, scope: !662, file: !212, line: 236, type: !593)
!667 = !DILocation(line: 235, column: 84, scope: !662, inlinedAt: !668)
!668 = distinct !DILocation(line: 498, column: 82, scope: !647)
!669 = !DILocation(line: 236, column: 23, scope: !662, inlinedAt: !668)
!670 = !DILocation(line: 238, column: 9, scope: !662, inlinedAt: !668)
!671 = !DILocation(line: 261, column: 22, scope: !662, inlinedAt: !668)
!672 = !DILocalVariable(name: "key", arg: 1, scope: !673, file: !616, line: 88, type: !100)
!673 = distinct !DISubprogram(name: "arch_irq_unlock", scope: !616, file: !616, line: 88, type: !674, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !676)
!674 = !DISubroutineType(types: !675)
!675 = !{null, !100}
!676 = !{!672}
!677 = !DILocation(line: 88, column: 80, scope: !673, inlinedAt: !678)
!678 = distinct !DILocation(line: 261, column: 2, scope: !662, inlinedAt: !668)
!679 = !DILocation(line: 91, column: 6, scope: !680, inlinedAt: !678)
!680 = distinct !DILexicalBlock(scope: !673, file: !616, line: 91, column: 6)
!681 = !DILocation(line: 91, column: 10, scope: !680, inlinedAt: !678)
!682 = !DILocation(line: 91, column: 6, scope: !673, inlinedAt: !678)
!683 = !DILocation(line: 92, column: 3, scope: !684, inlinedAt: !678)
!684 = distinct !DILexicalBlock(scope: !680, file: !616, line: 91, column: 17)
!685 = !DILocation(line: 94, column: 2, scope: !673, inlinedAt: !678)
!686 = !{i64 67201}
!687 = !DILocation(line: 114, column: 1, scope: !673, inlinedAt: !678)
!688 = !DILocation(line: 498, column: 125, scope: !647)
!689 = !DILocation(line: 498, column: 129, scope: !647)
!690 = distinct !{!690, !649, !691}
!691 = !DILocation(line: 502, column: 2, scope: !592)
!692 = !DILocation(line: 503, column: 1, scope: !585)
!693 = distinct !DISubprogram(name: "z_time_slice", scope: !232, file: !232, line: 518, type: !694, scopeLine: 519, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !696)
!694 = !DISubroutineType(types: !695)
!695 = !{null}
!696 = !{!697, !698}
!697 = !DILocalVariable(name: "key", scope: !693, file: !232, line: 520, type: !593)
!698 = !DILocalVariable(name: "curr", scope: !693, file: !232, line: 521, type: !101)
!699 = !DILocation(line: 520, column: 2, scope: !693)
!700 = !DILocation(line: 520, column: 19, scope: !693)
!701 = !DILocation(line: 160, column: 94, scope: !604, inlinedAt: !702)
!702 = distinct !DILocation(line: 520, column: 25, scope: !693)
!703 = !DILocation(line: 162, column: 9, scope: !604, inlinedAt: !702)
!704 = !DILocation(line: 163, column: 19, scope: !604, inlinedAt: !702)
!705 = !DILocation(line: 44, column: 2, scope: !615, inlinedAt: !706)
!706 = distinct !DILocation(line: 169, column: 10, scope: !604, inlinedAt: !702)
!707 = !DILocation(line: 44, column: 15, scope: !615, inlinedAt: !706)
!708 = !DILocation(line: 48, column: 2, scope: !615, inlinedAt: !706)
!709 = !DILocation(line: 80, column: 9, scope: !615, inlinedAt: !706)
!710 = !DILocation(line: 81, column: 1, scope: !615, inlinedAt: !706)
!711 = !DILocation(line: 169, column: 8, scope: !604, inlinedAt: !702)
!712 = !DILocation(line: 171, column: 26, scope: !604, inlinedAt: !702)
!713 = !DILocation(line: 110, column: 94, scope: !630, inlinedAt: !714)
!714 = distinct !DILocation(line: 171, column: 2, scope: !604, inlinedAt: !702)
!715 = !DILocation(line: 112, column: 9, scope: !630, inlinedAt: !714)
!716 = !DILocation(line: 177, column: 27, scope: !604, inlinedAt: !702)
!717 = !DILocation(line: 121, column: 95, scope: !639, inlinedAt: !718)
!718 = distinct !DILocation(line: 177, column: 2, scope: !604, inlinedAt: !702)
!719 = !DILocation(line: 123, column: 9, scope: !639, inlinedAt: !718)
!720 = !DILocation(line: 179, column: 2, scope: !604, inlinedAt: !702)
!721 = !DILocation(line: 520, column: 25, scope: !693)
!722 = !DILocation(line: 521, column: 2, scope: !693)
!723 = !DILocation(line: 521, column: 19, scope: !693)
!724 = !DILocation(line: 521, column: 42, scope: !693)
!725 = !DILocation(line: 524, column: 6, scope: !726)
!726 = distinct !DILexicalBlock(scope: !693, file: !232, line: 524, column: 6)
!727 = !DILocation(line: 524, column: 25, scope: !726)
!728 = !DILocation(line: 524, column: 22, scope: !726)
!729 = !DILocation(line: 524, column: 6, scope: !693)
!730 = !DILocation(line: 525, column: 22, scope: !731)
!731 = distinct !DILexicalBlock(scope: !726, file: !232, line: 524, column: 31)
!732 = !DILocation(line: 525, column: 3, scope: !731)
!733 = !DILocation(line: 526, column: 3, scope: !731)
!734 = !DILocation(line: 235, column: 84, scope: !662, inlinedAt: !735)
!735 = distinct !DILocation(line: 526, column: 3, scope: !731)
!736 = !DILocation(line: 236, column: 23, scope: !662, inlinedAt: !735)
!737 = !DILocation(line: 238, column: 9, scope: !662, inlinedAt: !735)
!738 = !DILocation(line: 261, column: 22, scope: !662, inlinedAt: !735)
!739 = !DILocation(line: 88, column: 80, scope: !673, inlinedAt: !740)
!740 = distinct !DILocation(line: 261, column: 2, scope: !662, inlinedAt: !735)
!741 = !DILocation(line: 91, column: 6, scope: !680, inlinedAt: !740)
!742 = !DILocation(line: 91, column: 10, scope: !680, inlinedAt: !740)
!743 = !DILocation(line: 91, column: 6, scope: !673, inlinedAt: !740)
!744 = !DILocation(line: 92, column: 3, scope: !684, inlinedAt: !740)
!745 = !DILocation(line: 94, column: 2, scope: !673, inlinedAt: !740)
!746 = !DILocation(line: 114, column: 1, scope: !673, inlinedAt: !740)
!747 = !DILocation(line: 527, column: 3, scope: !731)
!748 = !DILocation(line: 529, column: 18, scope: !693)
!749 = !DILocation(line: 532, column: 40, scope: !750)
!750 = distinct !DILexicalBlock(scope: !693, file: !232, line: 532, column: 6)
!751 = !DILocation(line: 532, column: 6, scope: !750)
!752 = !DILocation(line: 532, column: 44, scope: !750)
!753 = !DILocation(line: 532, column: 57, scope: !750)
!754 = !DILocation(line: 532, column: 47, scope: !750)
!755 = !DILocation(line: 532, column: 6, scope: !693)
!756 = !DILocation(line: 540, column: 43, scope: !757)
!757 = distinct !DILexicalBlock(scope: !758, file: !232, line: 540, column: 7)
!758 = distinct !DILexicalBlock(scope: !750, file: !232, line: 532, column: 64)
!759 = !DILocation(line: 540, column: 8, scope: !757)
!760 = !DILocation(line: 540, column: 7, scope: !758)
!761 = !DILocation(line: 541, column: 33, scope: !762)
!762 = distinct !DILexicalBlock(scope: !757, file: !232, line: 540, column: 50)
!763 = !DILocation(line: 541, column: 4, scope: !762)
!764 = !DILocation(line: 542, column: 3, scope: !762)
!765 = !DILocation(line: 543, column: 22, scope: !758)
!766 = !DILocation(line: 543, column: 3, scope: !758)
!767 = !DILocation(line: 544, column: 2, scope: !758)
!768 = !DILocation(line: 545, column: 2, scope: !693)
!769 = !DILocation(line: 235, column: 84, scope: !662, inlinedAt: !770)
!770 = distinct !DILocation(line: 545, column: 2, scope: !693)
!771 = !DILocation(line: 236, column: 23, scope: !662, inlinedAt: !770)
!772 = !DILocation(line: 238, column: 9, scope: !662, inlinedAt: !770)
!773 = !DILocation(line: 261, column: 22, scope: !662, inlinedAt: !770)
!774 = !DILocation(line: 88, column: 80, scope: !673, inlinedAt: !775)
!775 = distinct !DILocation(line: 261, column: 2, scope: !662, inlinedAt: !770)
!776 = !DILocation(line: 91, column: 6, scope: !680, inlinedAt: !775)
!777 = !DILocation(line: 91, column: 10, scope: !680, inlinedAt: !775)
!778 = !DILocation(line: 91, column: 6, scope: !673, inlinedAt: !775)
!779 = !DILocation(line: 92, column: 3, scope: !684, inlinedAt: !775)
!780 = !DILocation(line: 94, column: 2, scope: !673, inlinedAt: !775)
!781 = !DILocation(line: 114, column: 1, scope: !673, inlinedAt: !775)
!782 = !DILocation(line: 546, column: 1, scope: !693)
!783 = distinct !DISubprogram(name: "z_is_thread_prevented_from_running", scope: !784, file: !784, line: 108, type: !519, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !785)
!784 = !DIFile(filename: "kernel/include/ksched.h", directory: "/home/sri/zephyrproject/zephyr")
!785 = !{!786, !787}
!786 = !DILocalVariable(name: "thread", arg: 1, scope: !783, file: !784, line: 108, type: !101)
!787 = !DILocalVariable(name: "state", scope: !783, file: !784, line: 110, type: !145)
!788 = !DILocation(line: 108, column: 73, scope: !783)
!789 = !DILocation(line: 110, column: 2, scope: !783)
!790 = !DILocation(line: 110, column: 10, scope: !783)
!791 = !DILocation(line: 110, column: 18, scope: !783)
!792 = !DILocation(line: 110, column: 26, scope: !783)
!793 = !DILocation(line: 110, column: 31, scope: !783)
!794 = !DILocation(line: 112, column: 10, scope: !783)
!795 = !DILocation(line: 112, column: 16, scope: !783)
!796 = !DILocation(line: 113, column: 39, scope: !783)
!797 = !DILocation(line: 115, column: 1, scope: !783)
!798 = !DILocation(line: 112, column: 2, scope: !783)
!799 = distinct !DISubprogram(name: "move_thread_to_end_of_prio_q", scope: !232, file: !232, line: 406, type: !483, scopeLine: 407, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !800)
!800 = !{!801}
!801 = !DILocalVariable(name: "thread", arg: 1, scope: !799, file: !232, line: 406, type: !101)
!802 = !DILocation(line: 406, column: 59, scope: !799)
!803 = !DILocation(line: 408, column: 25, scope: !804)
!804 = distinct !DILexicalBlock(scope: !799, file: !232, line: 408, column: 6)
!805 = !DILocation(line: 408, column: 6, scope: !804)
!806 = !DILocation(line: 408, column: 6, scope: !799)
!807 = !DILocation(line: 409, column: 18, scope: !808)
!808 = distinct !DILexicalBlock(scope: !804, file: !232, line: 408, column: 34)
!809 = !DILocalVariable(name: "thread", arg: 1, scope: !810, file: !232, line: 274, type: !101)
!810 = distinct !DISubprogram(name: "dequeue_thread", scope: !232, file: !232, line: 274, type: !483, scopeLine: 275, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !811)
!811 = !{!809}
!812 = !DILocation(line: 274, column: 83, scope: !810, inlinedAt: !813)
!813 = distinct !DILocation(line: 409, column: 3, scope: !808)
!814 = !DILocation(line: 276, column: 2, scope: !810, inlinedAt: !813)
!815 = !DILocation(line: 276, column: 15, scope: !810, inlinedAt: !813)
!816 = !DILocation(line: 276, column: 28, scope: !810, inlinedAt: !813)
!817 = !DILocation(line: 277, column: 26, scope: !818, inlinedAt: !813)
!818 = distinct !DILexicalBlock(scope: !810, file: !232, line: 277, column: 6)
!819 = !DILocation(line: 277, column: 6, scope: !818, inlinedAt: !813)
!820 = !DILocation(line: 277, column: 6, scope: !810, inlinedAt: !813)
!821 = !DILocation(line: 278, column: 15, scope: !822, inlinedAt: !813)
!822 = distinct !DILexicalBlock(scope: !818, file: !232, line: 277, column: 35)
!823 = !DILocalVariable(name: "thread", arg: 1, scope: !824, file: !232, line: 242, type: !101)
!824 = distinct !DISubprogram(name: "runq_remove", scope: !232, file: !232, line: 242, type: !483, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !825)
!825 = !{!823}
!826 = !DILocation(line: 242, column: 80, scope: !824, inlinedAt: !827)
!827 = distinct !DILocation(line: 278, column: 3, scope: !822, inlinedAt: !813)
!828 = !DILocation(line: 244, column: 33, scope: !824, inlinedAt: !827)
!829 = !DILocalVariable(name: "thread", arg: 1, scope: !830, file: !232, line: 208, type: !101)
!830 = distinct !DISubprogram(name: "thread_runq", scope: !232, file: !232, line: 208, type: !831, scopeLine: 209, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !833)
!831 = !DISubroutineType(types: !832)
!832 = !{!162, !101}
!833 = !{!829}
!834 = !DILocation(line: 208, column: 81, scope: !830, inlinedAt: !835)
!835 = distinct !DILocation(line: 244, column: 21, scope: !824, inlinedAt: !827)
!836 = !DILocation(line: 223, column: 9, scope: !830, inlinedAt: !835)
!837 = !DILocation(line: 244, column: 42, scope: !824, inlinedAt: !827)
!838 = !DILocation(line: 244, column: 2, scope: !824, inlinedAt: !827)
!839 = !DILocation(line: 279, column: 2, scope: !822, inlinedAt: !813)
!840 = !DILocation(line: 410, column: 2, scope: !808)
!841 = !DILocation(line: 411, column: 15, scope: !799)
!842 = !DILocalVariable(name: "thread", arg: 1, scope: !843, file: !232, line: 260, type: !101)
!843 = distinct !DISubprogram(name: "queue_thread", scope: !232, file: !232, line: 260, type: !483, scopeLine: 261, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !844)
!844 = !{!842}
!845 = !DILocation(line: 260, column: 81, scope: !843, inlinedAt: !846)
!846 = distinct !DILocation(line: 411, column: 2, scope: !799)
!847 = !DILocation(line: 262, column: 2, scope: !843, inlinedAt: !846)
!848 = !DILocation(line: 262, column: 15, scope: !843, inlinedAt: !846)
!849 = !DILocation(line: 262, column: 28, scope: !843, inlinedAt: !846)
!850 = !DILocation(line: 263, column: 26, scope: !851, inlinedAt: !846)
!851 = distinct !DILexicalBlock(scope: !843, file: !232, line: 263, column: 6)
!852 = !DILocation(line: 263, column: 6, scope: !851, inlinedAt: !846)
!853 = !DILocation(line: 263, column: 6, scope: !843, inlinedAt: !846)
!854 = !DILocation(line: 264, column: 12, scope: !855, inlinedAt: !846)
!855 = distinct !DILexicalBlock(scope: !851, file: !232, line: 263, column: 35)
!856 = !DILocalVariable(name: "thread", arg: 1, scope: !857, file: !232, line: 237, type: !101)
!857 = distinct !DISubprogram(name: "runq_add", scope: !232, file: !232, line: 237, type: !483, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !858)
!858 = !{!856}
!859 = !DILocation(line: 237, column: 77, scope: !857, inlinedAt: !860)
!860 = distinct !DILocation(line: 264, column: 3, scope: !855, inlinedAt: !846)
!861 = !DILocation(line: 239, column: 30, scope: !857, inlinedAt: !860)
!862 = !DILocation(line: 208, column: 81, scope: !830, inlinedAt: !863)
!863 = distinct !DILocation(line: 239, column: 18, scope: !857, inlinedAt: !860)
!864 = !DILocation(line: 223, column: 9, scope: !830, inlinedAt: !863)
!865 = !DILocation(line: 239, column: 39, scope: !857, inlinedAt: !860)
!866 = !DILocalVariable(name: "pq", arg: 1, scope: !867, file: !232, line: 189, type: !870)
!867 = distinct !DISubprogram(name: "z_priq_dumb_add", scope: !232, file: !232, line: 189, type: !868, scopeLine: 191, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !871)
!868 = !DISubroutineType(types: !869)
!869 = !{null, !870, !101}
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 32)
!871 = !{!866, !872, !873}
!872 = !DILocalVariable(name: "thread", arg: 2, scope: !867, file: !232, line: 190, type: !101)
!873 = !DILocalVariable(name: "t", scope: !867, file: !232, line: 192, type: !101)
!874 = !DILocation(line: 189, column: 80, scope: !867, inlinedAt: !875)
!875 = distinct !DILocation(line: 239, column: 2, scope: !857, inlinedAt: !860)
!876 = !DILocation(line: 190, column: 25, scope: !867, inlinedAt: !875)
!877 = !DILocation(line: 192, column: 2, scope: !867, inlinedAt: !875)
!878 = !DILocation(line: 192, column: 19, scope: !867, inlinedAt: !875)
!879 = !DILocation(line: 196, column: 33, scope: !880, inlinedAt: !875)
!880 = distinct !DILexicalBlock(scope: !867, file: !232, line: 196, column: 2)
!881 = !DILocation(line: 196, column: 13, scope: !880, inlinedAt: !875)
!882 = !DILocation(line: 196, column: 37, scope: !880, inlinedAt: !875)
!883 = !DILocation(line: 196, column: 12, scope: !880, inlinedAt: !875)
!884 = !DILocation(line: 196, column: 100, scope: !885, inlinedAt: !875)
!885 = distinct !DILexicalBlock(scope: !880, file: !232, line: 196, column: 46)
!886 = !DILocation(line: 196, column: 80, scope: !885, inlinedAt: !875)
!887 = !DILocation(line: 196, column: 46, scope: !880, inlinedAt: !875)
!888 = !DILocation(line: 196, column: 164, scope: !885, inlinedAt: !875)
!889 = !DILocation(line: 196, column: 9, scope: !880, inlinedAt: !875)
!890 = !DILocation(line: 196, column: 7, scope: !880, inlinedAt: !875)
!891 = !DILocation(line: 196, column: 173, scope: !892, inlinedAt: !875)
!892 = distinct !DILexicalBlock(scope: !880, file: !232, line: 196, column: 2)
!893 = !DILocation(line: 196, column: 175, scope: !892, inlinedAt: !875)
!894 = !DILocation(line: 196, column: 2, scope: !880, inlinedAt: !875)
!895 = !DILocation(line: 197, column: 24, scope: !896, inlinedAt: !875)
!896 = distinct !DILexicalBlock(scope: !897, file: !232, line: 197, column: 7)
!897 = distinct !DILexicalBlock(scope: !892, file: !232, line: 196, column: 412)
!898 = !DILocation(line: 197, column: 32, scope: !896, inlinedAt: !875)
!899 = !DILocation(line: 197, column: 7, scope: !896, inlinedAt: !875)
!900 = !DILocation(line: 197, column: 35, scope: !896, inlinedAt: !875)
!901 = !DILocation(line: 197, column: 7, scope: !897, inlinedAt: !875)
!902 = !DILocation(line: 198, column: 22, scope: !903, inlinedAt: !875)
!903 = distinct !DILexicalBlock(scope: !896, file: !232, line: 197, column: 40)
!904 = !DILocation(line: 199, column: 8, scope: !903, inlinedAt: !875)
!905 = !DILocation(line: 198, column: 4, scope: !903, inlinedAt: !875)
!906 = !DILocation(line: 200, column: 4, scope: !903, inlinedAt: !875)
!907 = !DILocation(line: 196, column: 187, scope: !892, inlinedAt: !875)
!908 = !DILocation(line: 196, column: 189, scope: !892, inlinedAt: !875)
!909 = !DILocation(line: 196, column: 186, scope: !892, inlinedAt: !875)
!910 = !DILocation(line: 196, column: 219, scope: !892, inlinedAt: !875)
!911 = !DILocation(line: 196, column: 225, scope: !892, inlinedAt: !875)
!912 = !DILocation(line: 196, column: 199, scope: !892, inlinedAt: !875)
!913 = !DILocation(line: 196, column: 247, scope: !892, inlinedAt: !875)
!914 = !DILocation(line: 196, column: 198, scope: !892, inlinedAt: !875)
!915 = !DILocation(line: 196, column: 310, scope: !916, inlinedAt: !875)
!916 = distinct !DILexicalBlock(scope: !892, file: !232, line: 196, column: 256)
!917 = !DILocation(line: 196, column: 316, scope: !916, inlinedAt: !875)
!918 = !DILocation(line: 196, column: 290, scope: !916, inlinedAt: !875)
!919 = !DILocation(line: 196, column: 256, scope: !892, inlinedAt: !875)
!920 = !DILocation(line: 196, column: 398, scope: !916, inlinedAt: !875)
!921 = !DILocation(line: 196, column: 183, scope: !892, inlinedAt: !875)
!922 = !DILocation(line: 196, column: 2, scope: !892, inlinedAt: !875)
!923 = distinct !{!923, !894, !924}
!924 = !DILocation(line: 202, column: 2, scope: !880, inlinedAt: !875)
!925 = !DILocation(line: 204, column: 19, scope: !867, inlinedAt: !875)
!926 = !DILocation(line: 204, column: 24, scope: !867, inlinedAt: !875)
!927 = !DILocation(line: 204, column: 2, scope: !867, inlinedAt: !875)
!928 = !DILocation(line: 205, column: 1, scope: !867, inlinedAt: !875)
!929 = !DILocation(line: 265, column: 2, scope: !855, inlinedAt: !846)
!930 = !DILocation(line: 412, column: 15, scope: !799)
!931 = !DILocation(line: 412, column: 41, scope: !799)
!932 = !DILocation(line: 412, column: 22, scope: !799)
!933 = !DILocation(line: 412, column: 2, scope: !799)
!934 = !DILocation(line: 413, column: 1, scope: !799)
!935 = distinct !DISubprogram(name: "z_ready_thread", scope: !232, file: !232, line: 638, type: !483, scopeLine: 639, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !936)
!936 = !{!937, !938, !940}
!937 = !DILocalVariable(name: "thread", arg: 1, scope: !935, file: !232, line: 638, type: !101)
!938 = !DILocalVariable(name: "__i", scope: !939, file: !232, line: 640, type: !593)
!939 = distinct !DILexicalBlock(scope: !935, file: !232, line: 640, column: 2)
!940 = !DILocalVariable(name: "__key", scope: !939, file: !232, line: 640, type: !593)
!941 = !DILocation(line: 638, column: 38, scope: !935)
!942 = !DILocation(line: 640, column: 7, scope: !939)
!943 = !DILocation(line: 640, column: 24, scope: !939)
!944 = !DILocation(line: 640, column: 34, scope: !939)
!945 = !DILocation(line: 160, column: 94, scope: !604, inlinedAt: !946)
!946 = distinct !DILocation(line: 640, column: 42, scope: !939)
!947 = !DILocation(line: 162, column: 9, scope: !604, inlinedAt: !946)
!948 = !DILocation(line: 163, column: 19, scope: !604, inlinedAt: !946)
!949 = !DILocation(line: 44, column: 2, scope: !615, inlinedAt: !950)
!950 = distinct !DILocation(line: 169, column: 10, scope: !604, inlinedAt: !946)
!951 = !DILocation(line: 44, column: 15, scope: !615, inlinedAt: !950)
!952 = !DILocation(line: 48, column: 2, scope: !615, inlinedAt: !950)
!953 = !DILocation(line: 80, column: 9, scope: !615, inlinedAt: !950)
!954 = !DILocation(line: 81, column: 1, scope: !615, inlinedAt: !950)
!955 = !DILocation(line: 169, column: 8, scope: !604, inlinedAt: !946)
!956 = !DILocation(line: 171, column: 26, scope: !604, inlinedAt: !946)
!957 = !DILocation(line: 110, column: 94, scope: !630, inlinedAt: !958)
!958 = distinct !DILocation(line: 171, column: 2, scope: !604, inlinedAt: !946)
!959 = !DILocation(line: 112, column: 9, scope: !630, inlinedAt: !958)
!960 = !DILocation(line: 177, column: 27, scope: !604, inlinedAt: !946)
!961 = !DILocation(line: 121, column: 95, scope: !639, inlinedAt: !962)
!962 = distinct !DILocation(line: 177, column: 2, scope: !604, inlinedAt: !946)
!963 = !DILocation(line: 123, column: 9, scope: !639, inlinedAt: !962)
!964 = !DILocation(line: 179, column: 2, scope: !604, inlinedAt: !946)
!965 = !DILocation(line: 640, column: 42, scope: !939)
!966 = !DILocation(line: 640, column: 77, scope: !967)
!967 = distinct !DILexicalBlock(scope: !939, file: !232, line: 640, column: 2)
!968 = !DILocation(line: 640, column: 72, scope: !967)
!969 = !DILocation(line: 640, column: 2, scope: !939)
!970 = !DILocation(line: 640, column: 2, scope: !967)
!971 = !DILocation(line: 641, column: 32, scope: !972)
!972 = distinct !DILexicalBlock(scope: !973, file: !232, line: 641, column: 7)
!973 = distinct !DILexicalBlock(scope: !967, file: !232, line: 640, column: 134)
!974 = !DILocation(line: 641, column: 8, scope: !972)
!975 = !DILocation(line: 641, column: 7, scope: !973)
!976 = !DILocation(line: 642, column: 17, scope: !977)
!977 = distinct !DILexicalBlock(scope: !972, file: !232, line: 641, column: 41)
!978 = !DILocation(line: 642, column: 4, scope: !977)
!979 = !DILocation(line: 643, column: 3, scope: !977)
!980 = !DILocation(line: 644, column: 2, scope: !973)
!981 = !DILocation(line: 640, column: 82, scope: !967)
!982 = !DILocation(line: 235, column: 84, scope: !662, inlinedAt: !983)
!983 = distinct !DILocation(line: 640, column: 82, scope: !967)
!984 = !DILocation(line: 236, column: 23, scope: !662, inlinedAt: !983)
!985 = !DILocation(line: 238, column: 9, scope: !662, inlinedAt: !983)
!986 = !DILocation(line: 261, column: 22, scope: !662, inlinedAt: !983)
!987 = !DILocation(line: 88, column: 80, scope: !673, inlinedAt: !988)
!988 = distinct !DILocation(line: 261, column: 2, scope: !662, inlinedAt: !983)
!989 = !DILocation(line: 91, column: 6, scope: !680, inlinedAt: !988)
!990 = !DILocation(line: 91, column: 10, scope: !680, inlinedAt: !988)
!991 = !DILocation(line: 91, column: 6, scope: !673, inlinedAt: !988)
!992 = !DILocation(line: 92, column: 3, scope: !684, inlinedAt: !988)
!993 = !DILocation(line: 94, column: 2, scope: !673, inlinedAt: !988)
!994 = !DILocation(line: 114, column: 1, scope: !673, inlinedAt: !988)
!995 = !DILocation(line: 640, column: 125, scope: !967)
!996 = !DILocation(line: 640, column: 129, scope: !967)
!997 = distinct !{!997, !969, !998}
!998 = !DILocation(line: 644, column: 2, scope: !939)
!999 = !DILocation(line: 645, column: 1, scope: !935)
!1000 = distinct !DISubprogram(name: "thread_active_elsewhere", scope: !232, file: !232, line: 598, type: !519, scopeLine: 599, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1001)
!1001 = !{!1002}
!1002 = !DILocalVariable(name: "thread", arg: 1, scope: !1000, file: !232, line: 598, type: !101)
!1003 = !DILocation(line: 598, column: 55, scope: !1000)
!1004 = !DILocation(line: 616, column: 9, scope: !1000)
!1005 = !DILocation(line: 617, column: 2, scope: !1000)
!1006 = distinct !DISubprogram(name: "ready_thread", scope: !232, file: !232, line: 620, type: !483, scopeLine: 621, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1007)
!1007 = !{!1008}
!1008 = !DILocalVariable(name: "thread", arg: 1, scope: !1006, file: !232, line: 620, type: !101)
!1009 = !DILocation(line: 620, column: 43, scope: !1006)
!1010 = !DILocation(line: 629, column: 26, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !1006, file: !232, line: 629, column: 6)
!1012 = !DILocation(line: 629, column: 7, scope: !1011)
!1013 = !DILocation(line: 629, column: 34, scope: !1011)
!1014 = !DILocation(line: 629, column: 55, scope: !1011)
!1015 = !DILocation(line: 629, column: 37, scope: !1011)
!1016 = !DILocation(line: 629, column: 6, scope: !1006)
!1017 = !DILocation(line: 630, column: 3, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !1011, file: !232, line: 629, column: 64)
!1019 = !DILocation(line: 630, column: 8, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !1018, file: !232, line: 630, column: 6)
!1021 = !DILocation(line: 632, column: 16, scope: !1018)
!1022 = !DILocation(line: 260, column: 81, scope: !843, inlinedAt: !1023)
!1023 = distinct !DILocation(line: 632, column: 3, scope: !1018)
!1024 = !DILocation(line: 262, column: 2, scope: !843, inlinedAt: !1023)
!1025 = !DILocation(line: 262, column: 15, scope: !843, inlinedAt: !1023)
!1026 = !DILocation(line: 262, column: 28, scope: !843, inlinedAt: !1023)
!1027 = !DILocation(line: 263, column: 26, scope: !851, inlinedAt: !1023)
!1028 = !DILocation(line: 263, column: 6, scope: !851, inlinedAt: !1023)
!1029 = !DILocation(line: 263, column: 6, scope: !843, inlinedAt: !1023)
!1030 = !DILocation(line: 264, column: 12, scope: !855, inlinedAt: !1023)
!1031 = !DILocation(line: 237, column: 77, scope: !857, inlinedAt: !1032)
!1032 = distinct !DILocation(line: 264, column: 3, scope: !855, inlinedAt: !1023)
!1033 = !DILocation(line: 239, column: 30, scope: !857, inlinedAt: !1032)
!1034 = !DILocation(line: 208, column: 81, scope: !830, inlinedAt: !1035)
!1035 = distinct !DILocation(line: 239, column: 18, scope: !857, inlinedAt: !1032)
!1036 = !DILocation(line: 223, column: 9, scope: !830, inlinedAt: !1035)
!1037 = !DILocation(line: 239, column: 39, scope: !857, inlinedAt: !1032)
!1038 = !DILocation(line: 189, column: 80, scope: !867, inlinedAt: !1039)
!1039 = distinct !DILocation(line: 239, column: 2, scope: !857, inlinedAt: !1032)
!1040 = !DILocation(line: 190, column: 25, scope: !867, inlinedAt: !1039)
!1041 = !DILocation(line: 192, column: 2, scope: !867, inlinedAt: !1039)
!1042 = !DILocation(line: 192, column: 19, scope: !867, inlinedAt: !1039)
!1043 = !DILocation(line: 196, column: 33, scope: !880, inlinedAt: !1039)
!1044 = !DILocation(line: 196, column: 13, scope: !880, inlinedAt: !1039)
!1045 = !DILocation(line: 196, column: 37, scope: !880, inlinedAt: !1039)
!1046 = !DILocation(line: 196, column: 12, scope: !880, inlinedAt: !1039)
!1047 = !DILocation(line: 196, column: 100, scope: !885, inlinedAt: !1039)
!1048 = !DILocation(line: 196, column: 80, scope: !885, inlinedAt: !1039)
!1049 = !DILocation(line: 196, column: 46, scope: !880, inlinedAt: !1039)
!1050 = !DILocation(line: 196, column: 164, scope: !885, inlinedAt: !1039)
!1051 = !DILocation(line: 196, column: 9, scope: !880, inlinedAt: !1039)
!1052 = !DILocation(line: 196, column: 7, scope: !880, inlinedAt: !1039)
!1053 = !DILocation(line: 196, column: 173, scope: !892, inlinedAt: !1039)
!1054 = !DILocation(line: 196, column: 175, scope: !892, inlinedAt: !1039)
!1055 = !DILocation(line: 196, column: 2, scope: !880, inlinedAt: !1039)
!1056 = !DILocation(line: 197, column: 24, scope: !896, inlinedAt: !1039)
!1057 = !DILocation(line: 197, column: 32, scope: !896, inlinedAt: !1039)
!1058 = !DILocation(line: 197, column: 7, scope: !896, inlinedAt: !1039)
!1059 = !DILocation(line: 197, column: 35, scope: !896, inlinedAt: !1039)
!1060 = !DILocation(line: 197, column: 7, scope: !897, inlinedAt: !1039)
!1061 = !DILocation(line: 198, column: 22, scope: !903, inlinedAt: !1039)
!1062 = !DILocation(line: 199, column: 8, scope: !903, inlinedAt: !1039)
!1063 = !DILocation(line: 198, column: 4, scope: !903, inlinedAt: !1039)
!1064 = !DILocation(line: 200, column: 4, scope: !903, inlinedAt: !1039)
!1065 = !DILocation(line: 196, column: 187, scope: !892, inlinedAt: !1039)
!1066 = !DILocation(line: 196, column: 189, scope: !892, inlinedAt: !1039)
!1067 = !DILocation(line: 196, column: 186, scope: !892, inlinedAt: !1039)
!1068 = !DILocation(line: 196, column: 219, scope: !892, inlinedAt: !1039)
!1069 = !DILocation(line: 196, column: 225, scope: !892, inlinedAt: !1039)
!1070 = !DILocation(line: 196, column: 199, scope: !892, inlinedAt: !1039)
!1071 = !DILocation(line: 196, column: 247, scope: !892, inlinedAt: !1039)
!1072 = !DILocation(line: 196, column: 198, scope: !892, inlinedAt: !1039)
!1073 = !DILocation(line: 196, column: 310, scope: !916, inlinedAt: !1039)
!1074 = !DILocation(line: 196, column: 316, scope: !916, inlinedAt: !1039)
!1075 = !DILocation(line: 196, column: 290, scope: !916, inlinedAt: !1039)
!1076 = !DILocation(line: 196, column: 256, scope: !892, inlinedAt: !1039)
!1077 = !DILocation(line: 196, column: 398, scope: !916, inlinedAt: !1039)
!1078 = !DILocation(line: 196, column: 183, scope: !892, inlinedAt: !1039)
!1079 = !DILocation(line: 196, column: 2, scope: !892, inlinedAt: !1039)
!1080 = distinct !{!1080, !1055, !1081}
!1081 = !DILocation(line: 202, column: 2, scope: !880, inlinedAt: !1039)
!1082 = !DILocation(line: 204, column: 19, scope: !867, inlinedAt: !1039)
!1083 = !DILocation(line: 204, column: 24, scope: !867, inlinedAt: !1039)
!1084 = !DILocation(line: 204, column: 2, scope: !867, inlinedAt: !1039)
!1085 = !DILocation(line: 205, column: 1, scope: !867, inlinedAt: !1039)
!1086 = !DILocation(line: 265, column: 2, scope: !855, inlinedAt: !1023)
!1087 = !DILocation(line: 633, column: 3, scope: !1018)
!1088 = !DILocation(line: 634, column: 3, scope: !1018)
!1089 = !DILocation(line: 635, column: 2, scope: !1018)
!1090 = !DILocation(line: 636, column: 1, scope: !1006)
!1091 = distinct !DISubprogram(name: "z_move_thread_to_end_of_prio_q", scope: !232, file: !232, line: 647, type: !483, scopeLine: 648, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1092)
!1092 = !{!1093, !1094, !1096}
!1093 = !DILocalVariable(name: "thread", arg: 1, scope: !1091, file: !232, line: 647, type: !101)
!1094 = !DILocalVariable(name: "__i", scope: !1095, file: !232, line: 649, type: !593)
!1095 = distinct !DILexicalBlock(scope: !1091, file: !232, line: 649, column: 2)
!1096 = !DILocalVariable(name: "__key", scope: !1095, file: !232, line: 649, type: !593)
!1097 = !DILocation(line: 647, column: 54, scope: !1091)
!1098 = !DILocation(line: 649, column: 7, scope: !1095)
!1099 = !DILocation(line: 649, column: 24, scope: !1095)
!1100 = !DILocation(line: 649, column: 34, scope: !1095)
!1101 = !DILocation(line: 160, column: 94, scope: !604, inlinedAt: !1102)
!1102 = distinct !DILocation(line: 649, column: 42, scope: !1095)
!1103 = !DILocation(line: 162, column: 9, scope: !604, inlinedAt: !1102)
!1104 = !DILocation(line: 163, column: 19, scope: !604, inlinedAt: !1102)
!1105 = !DILocation(line: 44, column: 2, scope: !615, inlinedAt: !1106)
!1106 = distinct !DILocation(line: 169, column: 10, scope: !604, inlinedAt: !1102)
!1107 = !DILocation(line: 44, column: 15, scope: !615, inlinedAt: !1106)
!1108 = !DILocation(line: 48, column: 2, scope: !615, inlinedAt: !1106)
!1109 = !DILocation(line: 80, column: 9, scope: !615, inlinedAt: !1106)
!1110 = !DILocation(line: 81, column: 1, scope: !615, inlinedAt: !1106)
!1111 = !DILocation(line: 169, column: 8, scope: !604, inlinedAt: !1102)
!1112 = !DILocation(line: 171, column: 26, scope: !604, inlinedAt: !1102)
!1113 = !DILocation(line: 110, column: 94, scope: !630, inlinedAt: !1114)
!1114 = distinct !DILocation(line: 171, column: 2, scope: !604, inlinedAt: !1102)
!1115 = !DILocation(line: 112, column: 9, scope: !630, inlinedAt: !1114)
!1116 = !DILocation(line: 177, column: 27, scope: !604, inlinedAt: !1102)
!1117 = !DILocation(line: 121, column: 95, scope: !639, inlinedAt: !1118)
!1118 = distinct !DILocation(line: 177, column: 2, scope: !604, inlinedAt: !1102)
!1119 = !DILocation(line: 123, column: 9, scope: !639, inlinedAt: !1118)
!1120 = !DILocation(line: 179, column: 2, scope: !604, inlinedAt: !1102)
!1121 = !DILocation(line: 649, column: 42, scope: !1095)
!1122 = !DILocation(line: 649, column: 77, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1095, file: !232, line: 649, column: 2)
!1124 = !DILocation(line: 649, column: 72, scope: !1123)
!1125 = !DILocation(line: 649, column: 2, scope: !1095)
!1126 = !DILocation(line: 649, column: 2, scope: !1123)
!1127 = !DILocation(line: 650, column: 32, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !1123, file: !232, line: 649, column: 134)
!1129 = !DILocation(line: 650, column: 3, scope: !1128)
!1130 = !DILocation(line: 651, column: 2, scope: !1128)
!1131 = !DILocation(line: 649, column: 82, scope: !1123)
!1132 = !DILocation(line: 235, column: 84, scope: !662, inlinedAt: !1133)
!1133 = distinct !DILocation(line: 649, column: 82, scope: !1123)
!1134 = !DILocation(line: 236, column: 23, scope: !662, inlinedAt: !1133)
!1135 = !DILocation(line: 238, column: 9, scope: !662, inlinedAt: !1133)
!1136 = !DILocation(line: 261, column: 22, scope: !662, inlinedAt: !1133)
!1137 = !DILocation(line: 88, column: 80, scope: !673, inlinedAt: !1138)
!1138 = distinct !DILocation(line: 261, column: 2, scope: !662, inlinedAt: !1133)
!1139 = !DILocation(line: 91, column: 6, scope: !680, inlinedAt: !1138)
!1140 = !DILocation(line: 91, column: 10, scope: !680, inlinedAt: !1138)
!1141 = !DILocation(line: 91, column: 6, scope: !673, inlinedAt: !1138)
!1142 = !DILocation(line: 92, column: 3, scope: !684, inlinedAt: !1138)
!1143 = !DILocation(line: 94, column: 2, scope: !673, inlinedAt: !1138)
!1144 = !DILocation(line: 114, column: 1, scope: !673, inlinedAt: !1138)
!1145 = !DILocation(line: 649, column: 125, scope: !1123)
!1146 = !DILocation(line: 649, column: 129, scope: !1123)
!1147 = distinct !{!1147, !1125, !1148}
!1148 = !DILocation(line: 651, column: 2, scope: !1095)
!1149 = !DILocation(line: 652, column: 1, scope: !1091)
!1150 = distinct !DISubprogram(name: "z_sched_start", scope: !232, file: !232, line: 654, type: !483, scopeLine: 655, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1151)
!1151 = !{!1152, !1153}
!1152 = !DILocalVariable(name: "thread", arg: 1, scope: !1150, file: !232, line: 654, type: !101)
!1153 = !DILocalVariable(name: "key", scope: !1150, file: !232, line: 656, type: !593)
!1154 = !DILocation(line: 654, column: 37, scope: !1150)
!1155 = !DILocation(line: 656, column: 2, scope: !1150)
!1156 = !DILocation(line: 656, column: 19, scope: !1150)
!1157 = !DILocation(line: 160, column: 94, scope: !604, inlinedAt: !1158)
!1158 = distinct !DILocation(line: 656, column: 25, scope: !1150)
!1159 = !DILocation(line: 162, column: 9, scope: !604, inlinedAt: !1158)
!1160 = !DILocation(line: 163, column: 19, scope: !604, inlinedAt: !1158)
!1161 = !DILocation(line: 44, column: 2, scope: !615, inlinedAt: !1162)
!1162 = distinct !DILocation(line: 169, column: 10, scope: !604, inlinedAt: !1158)
!1163 = !DILocation(line: 44, column: 15, scope: !615, inlinedAt: !1162)
!1164 = !DILocation(line: 48, column: 2, scope: !615, inlinedAt: !1162)
!1165 = !DILocation(line: 80, column: 9, scope: !615, inlinedAt: !1162)
!1166 = !DILocation(line: 81, column: 1, scope: !615, inlinedAt: !1162)
!1167 = !DILocation(line: 169, column: 8, scope: !604, inlinedAt: !1158)
!1168 = !DILocation(line: 171, column: 26, scope: !604, inlinedAt: !1158)
!1169 = !DILocation(line: 110, column: 94, scope: !630, inlinedAt: !1170)
!1170 = distinct !DILocation(line: 171, column: 2, scope: !604, inlinedAt: !1158)
!1171 = !DILocation(line: 112, column: 9, scope: !630, inlinedAt: !1170)
!1172 = !DILocation(line: 177, column: 27, scope: !604, inlinedAt: !1158)
!1173 = !DILocation(line: 121, column: 95, scope: !639, inlinedAt: !1174)
!1174 = distinct !DILocation(line: 177, column: 2, scope: !604, inlinedAt: !1158)
!1175 = !DILocation(line: 123, column: 9, scope: !639, inlinedAt: !1174)
!1176 = !DILocation(line: 179, column: 2, scope: !604, inlinedAt: !1158)
!1177 = !DILocation(line: 656, column: 25, scope: !1150)
!1178 = !DILocation(line: 658, column: 27, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1150, file: !232, line: 658, column: 6)
!1180 = !DILocation(line: 658, column: 6, scope: !1179)
!1181 = !DILocation(line: 658, column: 6, scope: !1150)
!1182 = !DILocation(line: 659, column: 3, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !1179, file: !232, line: 658, column: 36)
!1184 = !DILocation(line: 235, column: 84, scope: !662, inlinedAt: !1185)
!1185 = distinct !DILocation(line: 659, column: 3, scope: !1183)
!1186 = !DILocation(line: 236, column: 23, scope: !662, inlinedAt: !1185)
!1187 = !DILocation(line: 238, column: 9, scope: !662, inlinedAt: !1185)
!1188 = !DILocation(line: 261, column: 22, scope: !662, inlinedAt: !1185)
!1189 = !DILocation(line: 88, column: 80, scope: !673, inlinedAt: !1190)
!1190 = distinct !DILocation(line: 261, column: 2, scope: !662, inlinedAt: !1185)
!1191 = !DILocation(line: 91, column: 6, scope: !680, inlinedAt: !1190)
!1192 = !DILocation(line: 91, column: 10, scope: !680, inlinedAt: !1190)
!1193 = !DILocation(line: 91, column: 6, scope: !673, inlinedAt: !1190)
!1194 = !DILocation(line: 92, column: 3, scope: !684, inlinedAt: !1190)
!1195 = !DILocation(line: 94, column: 2, scope: !673, inlinedAt: !1190)
!1196 = !DILocation(line: 114, column: 1, scope: !673, inlinedAt: !1190)
!1197 = !DILocation(line: 660, column: 3, scope: !1183)
!1198 = !DILocation(line: 663, column: 27, scope: !1150)
!1199 = !DILocation(line: 663, column: 2, scope: !1150)
!1200 = !DILocation(line: 664, column: 15, scope: !1150)
!1201 = !DILocation(line: 664, column: 2, scope: !1150)
!1202 = !DILocation(line: 665, column: 2, scope: !1150)
!1203 = !DILocation(line: 666, column: 1, scope: !1150)
!1204 = distinct !DISubprogram(name: "z_has_thread_started", scope: !784, file: !784, line: 128, type: !519, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1205)
!1205 = !{!1206}
!1206 = !DILocalVariable(name: "thread", arg: 1, scope: !1204, file: !784, line: 128, type: !101)
!1207 = !DILocation(line: 128, column: 59, scope: !1204)
!1208 = !DILocation(line: 130, column: 10, scope: !1204)
!1209 = !DILocation(line: 130, column: 18, scope: !1204)
!1210 = !DILocation(line: 130, column: 23, scope: !1204)
!1211 = !DILocation(line: 130, column: 36, scope: !1204)
!1212 = !DILocation(line: 130, column: 54, scope: !1204)
!1213 = !DILocation(line: 130, column: 2, scope: !1204)
!1214 = distinct !DISubprogram(name: "z_mark_thread_as_started", scope: !784, file: !784, line: 157, type: !483, scopeLine: 158, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1215)
!1215 = !{!1216}
!1216 = !DILocalVariable(name: "thread", arg: 1, scope: !1214, file: !784, line: 157, type: !101)
!1217 = !DILocation(line: 157, column: 62, scope: !1214)
!1218 = !DILocation(line: 159, column: 2, scope: !1214)
!1219 = !DILocation(line: 159, column: 10, scope: !1214)
!1220 = !DILocation(line: 159, column: 15, scope: !1214)
!1221 = !DILocation(line: 159, column: 28, scope: !1214)
!1222 = !DILocation(line: 160, column: 1, scope: !1214)
!1223 = distinct !DISubprogram(name: "z_reschedule", scope: !232, file: !232, line: 991, type: !663, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1224)
!1224 = !{!1225, !1226}
!1225 = !DILocalVariable(name: "lock", arg: 1, scope: !1223, file: !232, line: 991, type: !607)
!1226 = !DILocalVariable(name: "key", arg: 2, scope: !1223, file: !232, line: 991, type: !593)
!1227 = !DILocation(line: 991, column: 38, scope: !1223)
!1228 = !DILocation(line: 991, column: 61, scope: !1223)
!1229 = !DILocation(line: 993, column: 18, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1223, file: !232, line: 993, column: 6)
!1231 = !DILocation(line: 993, column: 6, scope: !1230)
!1232 = !DILocation(line: 993, column: 23, scope: !1230)
!1233 = !DILocation(line: 993, column: 26, scope: !1230)
!1234 = !DILocation(line: 993, column: 6, scope: !1223)
!1235 = !DILocation(line: 994, column: 10, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1230, file: !232, line: 993, column: 39)
!1237 = !DILocation(line: 994, column: 3, scope: !1236)
!1238 = !DILocalVariable(name: "lock", arg: 1, scope: !1239, file: !1240, line: 217, type: !607)
!1239 = distinct !DISubprogram(name: "z_swap", scope: !1240, file: !1240, line: 217, type: !1241, scopeLine: 218, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1243)
!1240 = !DIFile(filename: "kernel/include/kswap.h", directory: "/home/sri/zephyrproject/zephyr")
!1241 = !DISubroutineType(types: !1242)
!1242 = !{!192, !607, !593}
!1243 = !{!1238, !1244}
!1244 = !DILocalVariable(name: "key", arg: 2, scope: !1239, file: !1240, line: 217, type: !593)
!1245 = !DILocation(line: 217, column: 76, scope: !1239, inlinedAt: !1246)
!1246 = distinct !DILocation(line: 994, column: 3, scope: !1236)
!1247 = !DILocation(line: 217, column: 99, scope: !1239, inlinedAt: !1246)
!1248 = !DILocation(line: 219, column: 17, scope: !1239, inlinedAt: !1246)
!1249 = !DILocalVariable(name: "l", arg: 1, scope: !1250, file: !212, line: 283, type: !607)
!1250 = distinct !DISubprogram(name: "k_spin_release", scope: !212, file: !212, line: 283, type: !631, scopeLine: 284, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1251)
!1251 = !{!1249}
!1252 = !DILocation(line: 283, column: 85, scope: !1250, inlinedAt: !1253)
!1253 = distinct !DILocation(line: 219, column: 2, scope: !1239, inlinedAt: !1246)
!1254 = !DILocation(line: 285, column: 9, scope: !1250, inlinedAt: !1253)
!1255 = !DILocation(line: 220, column: 28, scope: !1239, inlinedAt: !1246)
!1256 = !DILocation(line: 220, column: 9, scope: !1239, inlinedAt: !1246)
!1257 = !DILocation(line: 995, column: 2, scope: !1236)
!1258 = !DILocation(line: 996, column: 17, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1230, file: !232, line: 995, column: 9)
!1260 = !DILocation(line: 996, column: 3, scope: !1259)
!1261 = !DILocation(line: 235, column: 84, scope: !662, inlinedAt: !1262)
!1262 = distinct !DILocation(line: 996, column: 3, scope: !1259)
!1263 = !DILocation(line: 236, column: 23, scope: !662, inlinedAt: !1262)
!1264 = !DILocation(line: 238, column: 9, scope: !662, inlinedAt: !1262)
!1265 = !DILocation(line: 261, column: 22, scope: !662, inlinedAt: !1262)
!1266 = !DILocation(line: 88, column: 80, scope: !673, inlinedAt: !1267)
!1267 = distinct !DILocation(line: 261, column: 2, scope: !662, inlinedAt: !1262)
!1268 = !DILocation(line: 91, column: 6, scope: !680, inlinedAt: !1267)
!1269 = !DILocation(line: 91, column: 10, scope: !680, inlinedAt: !1267)
!1270 = !DILocation(line: 91, column: 6, scope: !673, inlinedAt: !1267)
!1271 = !DILocation(line: 92, column: 3, scope: !684, inlinedAt: !1267)
!1272 = !DILocation(line: 94, column: 2, scope: !673, inlinedAt: !1267)
!1273 = !DILocation(line: 114, column: 1, scope: !673, inlinedAt: !1267)
!1274 = !DILocation(line: 997, column: 3, scope: !1259)
!1275 = !DILocation(line: 999, column: 1, scope: !1223)
!1276 = distinct !DISubprogram(name: "z_impl_k_thread_suspend", scope: !232, file: !232, line: 668, type: !483, scopeLine: 669, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1277)
!1277 = !{!1278, !1279, !1281}
!1278 = !DILocalVariable(name: "thread", arg: 1, scope: !1276, file: !232, line: 668, type: !101)
!1279 = !DILocalVariable(name: "__i", scope: !1280, file: !232, line: 674, type: !593)
!1280 = distinct !DILexicalBlock(scope: !1276, file: !232, line: 674, column: 2)
!1281 = !DILocalVariable(name: "__key", scope: !1280, file: !232, line: 674, type: !593)
!1282 = !DILocation(line: 668, column: 47, scope: !1276)
!1283 = !DILocation(line: 670, column: 2, scope: !1276)
!1284 = !DILocation(line: 670, column: 7, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1276, file: !232, line: 670, column: 5)
!1286 = !DILocation(line: 672, column: 31, scope: !1276)
!1287 = !DILocation(line: 672, column: 8, scope: !1276)
!1288 = !DILocation(line: 674, column: 7, scope: !1280)
!1289 = !DILocation(line: 674, column: 24, scope: !1280)
!1290 = !DILocation(line: 674, column: 34, scope: !1280)
!1291 = !DILocation(line: 160, column: 94, scope: !604, inlinedAt: !1292)
!1292 = distinct !DILocation(line: 674, column: 42, scope: !1280)
!1293 = !DILocation(line: 162, column: 9, scope: !604, inlinedAt: !1292)
!1294 = !DILocation(line: 163, column: 19, scope: !604, inlinedAt: !1292)
!1295 = !DILocation(line: 44, column: 2, scope: !615, inlinedAt: !1296)
!1296 = distinct !DILocation(line: 169, column: 10, scope: !604, inlinedAt: !1292)
!1297 = !DILocation(line: 44, column: 15, scope: !615, inlinedAt: !1296)
!1298 = !DILocation(line: 48, column: 2, scope: !615, inlinedAt: !1296)
!1299 = !DILocation(line: 80, column: 9, scope: !615, inlinedAt: !1296)
!1300 = !DILocation(line: 81, column: 1, scope: !615, inlinedAt: !1296)
!1301 = !DILocation(line: 169, column: 8, scope: !604, inlinedAt: !1292)
!1302 = !DILocation(line: 171, column: 26, scope: !604, inlinedAt: !1292)
!1303 = !DILocation(line: 110, column: 94, scope: !630, inlinedAt: !1304)
!1304 = distinct !DILocation(line: 171, column: 2, scope: !604, inlinedAt: !1292)
!1305 = !DILocation(line: 112, column: 9, scope: !630, inlinedAt: !1304)
!1306 = !DILocation(line: 177, column: 27, scope: !604, inlinedAt: !1292)
!1307 = !DILocation(line: 121, column: 95, scope: !639, inlinedAt: !1308)
!1308 = distinct !DILocation(line: 177, column: 2, scope: !604, inlinedAt: !1292)
!1309 = !DILocation(line: 123, column: 9, scope: !639, inlinedAt: !1308)
!1310 = !DILocation(line: 179, column: 2, scope: !604, inlinedAt: !1292)
!1311 = !DILocation(line: 674, column: 42, scope: !1280)
!1312 = !DILocation(line: 674, column: 77, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1280, file: !232, line: 674, column: 2)
!1314 = !DILocation(line: 674, column: 72, scope: !1313)
!1315 = !DILocation(line: 674, column: 2, scope: !1280)
!1316 = !DILocation(line: 674, column: 2, scope: !1313)
!1317 = !DILocation(line: 675, column: 26, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !1319, file: !232, line: 675, column: 7)
!1319 = distinct !DILexicalBlock(scope: !1313, file: !232, line: 674, column: 134)
!1320 = !DILocation(line: 675, column: 7, scope: !1318)
!1321 = !DILocation(line: 675, column: 7, scope: !1319)
!1322 = !DILocation(line: 676, column: 19, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1318, file: !232, line: 675, column: 35)
!1324 = !DILocation(line: 274, column: 83, scope: !810, inlinedAt: !1325)
!1325 = distinct !DILocation(line: 676, column: 4, scope: !1323)
!1326 = !DILocation(line: 276, column: 2, scope: !810, inlinedAt: !1325)
!1327 = !DILocation(line: 276, column: 15, scope: !810, inlinedAt: !1325)
!1328 = !DILocation(line: 276, column: 28, scope: !810, inlinedAt: !1325)
!1329 = !DILocation(line: 277, column: 26, scope: !818, inlinedAt: !1325)
!1330 = !DILocation(line: 277, column: 6, scope: !818, inlinedAt: !1325)
!1331 = !DILocation(line: 277, column: 6, scope: !810, inlinedAt: !1325)
!1332 = !DILocation(line: 278, column: 15, scope: !822, inlinedAt: !1325)
!1333 = !DILocation(line: 242, column: 80, scope: !824, inlinedAt: !1334)
!1334 = distinct !DILocation(line: 278, column: 3, scope: !822, inlinedAt: !1325)
!1335 = !DILocation(line: 244, column: 33, scope: !824, inlinedAt: !1334)
!1336 = !DILocation(line: 208, column: 81, scope: !830, inlinedAt: !1337)
!1337 = distinct !DILocation(line: 244, column: 21, scope: !824, inlinedAt: !1334)
!1338 = !DILocation(line: 223, column: 9, scope: !830, inlinedAt: !1337)
!1339 = !DILocation(line: 244, column: 42, scope: !824, inlinedAt: !1334)
!1340 = !DILocation(line: 244, column: 2, scope: !824, inlinedAt: !1334)
!1341 = !DILocation(line: 279, column: 2, scope: !822, inlinedAt: !1325)
!1342 = !DILocation(line: 677, column: 3, scope: !1323)
!1343 = !DILocation(line: 678, column: 30, scope: !1319)
!1344 = !DILocation(line: 678, column: 3, scope: !1319)
!1345 = !DILocation(line: 679, column: 16, scope: !1319)
!1346 = !DILocation(line: 679, column: 42, scope: !1319)
!1347 = !DILocation(line: 679, column: 23, scope: !1319)
!1348 = !DILocation(line: 679, column: 3, scope: !1319)
!1349 = !DILocation(line: 680, column: 2, scope: !1319)
!1350 = !DILocation(line: 674, column: 82, scope: !1313)
!1351 = !DILocation(line: 235, column: 84, scope: !662, inlinedAt: !1352)
!1352 = distinct !DILocation(line: 674, column: 82, scope: !1313)
!1353 = !DILocation(line: 236, column: 23, scope: !662, inlinedAt: !1352)
!1354 = !DILocation(line: 238, column: 9, scope: !662, inlinedAt: !1352)
!1355 = !DILocation(line: 261, column: 22, scope: !662, inlinedAt: !1352)
!1356 = !DILocation(line: 88, column: 80, scope: !673, inlinedAt: !1357)
!1357 = distinct !DILocation(line: 261, column: 2, scope: !662, inlinedAt: !1352)
!1358 = !DILocation(line: 91, column: 6, scope: !680, inlinedAt: !1357)
!1359 = !DILocation(line: 91, column: 10, scope: !680, inlinedAt: !1357)
!1360 = !DILocation(line: 91, column: 6, scope: !673, inlinedAt: !1357)
!1361 = !DILocation(line: 92, column: 3, scope: !684, inlinedAt: !1357)
!1362 = !DILocation(line: 94, column: 2, scope: !673, inlinedAt: !1357)
!1363 = !DILocation(line: 114, column: 1, scope: !673, inlinedAt: !1357)
!1364 = !DILocation(line: 674, column: 125, scope: !1313)
!1365 = !DILocation(line: 674, column: 129, scope: !1313)
!1366 = distinct !{!1366, !1315, !1367}
!1367 = !DILocation(line: 680, column: 2, scope: !1280)
!1368 = !DILocation(line: 682, column: 6, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1276, file: !232, line: 682, column: 6)
!1370 = !DILocation(line: 682, column: 32, scope: !1369)
!1371 = !DILocation(line: 682, column: 13, scope: !1369)
!1372 = !DILocation(line: 682, column: 6, scope: !1276)
!1373 = !DILocation(line: 683, column: 3, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !1369, file: !232, line: 682, column: 41)
!1375 = !DILocation(line: 684, column: 2, scope: !1374)
!1376 = !DILocation(line: 686, column: 2, scope: !1276)
!1377 = !DILocation(line: 686, column: 7, scope: !1378)
!1378 = distinct !DILexicalBlock(scope: !1276, file: !232, line: 686, column: 5)
!1379 = !DILocation(line: 687, column: 1, scope: !1276)
!1380 = distinct !DISubprogram(name: "z_abort_thread_timeout", scope: !515, file: !515, line: 52, type: !572, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1381)
!1381 = !{!1382}
!1382 = !DILocalVariable(name: "thread", arg: 1, scope: !1380, file: !515, line: 52, type: !101)
!1383 = !DILocation(line: 52, column: 59, scope: !1380)
!1384 = !DILocation(line: 54, column: 26, scope: !1380)
!1385 = !DILocation(line: 54, column: 34, scope: !1380)
!1386 = !DILocation(line: 54, column: 39, scope: !1380)
!1387 = !DILocation(line: 54, column: 9, scope: !1380)
!1388 = !DILocation(line: 54, column: 2, scope: !1380)
!1389 = distinct !DISubprogram(name: "z_is_thread_queued", scope: !784, file: !784, line: 138, type: !519, scopeLine: 139, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1390)
!1390 = !{!1391}
!1391 = !DILocalVariable(name: "thread", arg: 1, scope: !1389, file: !784, line: 138, type: !101)
!1392 = !DILocation(line: 138, column: 57, scope: !1389)
!1393 = !DILocation(line: 140, column: 31, scope: !1389)
!1394 = !DILocation(line: 140, column: 9, scope: !1389)
!1395 = !DILocation(line: 140, column: 2, scope: !1389)
!1396 = distinct !DISubprogram(name: "z_mark_thread_as_suspended", scope: !784, file: !784, line: 143, type: !483, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1397)
!1397 = !{!1398}
!1398 = !DILocalVariable(name: "thread", arg: 1, scope: !1396, file: !784, line: 143, type: !101)
!1399 = !DILocation(line: 143, column: 64, scope: !1396)
!1400 = !DILocation(line: 145, column: 2, scope: !1396)
!1401 = !DILocation(line: 145, column: 10, scope: !1396)
!1402 = !DILocation(line: 145, column: 15, scope: !1396)
!1403 = !DILocation(line: 145, column: 28, scope: !1396)
!1404 = !DILocation(line: 147, column: 2, scope: !1396)
!1405 = !DILocation(line: 147, column: 7, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1396, file: !784, line: 147, column: 5)
!1407 = !DILocation(line: 148, column: 1, scope: !1396)
!1408 = distinct !DISubprogram(name: "update_cache", scope: !232, file: !232, line: 570, type: !1409, scopeLine: 571, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1411)
!1409 = !DISubroutineType(types: !1410)
!1410 = !{null, !192}
!1411 = !{!1412, !1413}
!1412 = !DILocalVariable(name: "preempt_ok", arg: 1, scope: !1408, file: !232, line: 570, type: !192)
!1413 = !DILocalVariable(name: "thread", scope: !1408, file: !232, line: 573, type: !101)
!1414 = !DILocation(line: 570, column: 30, scope: !1408)
!1415 = !DILocation(line: 573, column: 2, scope: !1408)
!1416 = !DILocation(line: 573, column: 19, scope: !1408)
!1417 = !DILocation(line: 330, column: 2, scope: !1418, inlinedAt: !1423)
!1418 = distinct !DISubprogram(name: "next_up", scope: !232, file: !232, line: 322, type: !1419, scopeLine: 323, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1421)
!1419 = !DISubroutineType(types: !1420)
!1420 = !{!101}
!1421 = !{!1422}
!1422 = !DILocalVariable(name: "thread", scope: !1418, file: !232, line: 330, type: !101)
!1423 = distinct !DILocation(line: 573, column: 28, scope: !1408)
!1424 = !DILocation(line: 330, column: 19, scope: !1418, inlinedAt: !1423)
!1425 = !DILocation(line: 249, column: 9, scope: !1426, inlinedAt: !1427)
!1426 = distinct !DISubprogram(name: "runq_best", scope: !232, file: !232, line: 247, type: !1419, scopeLine: 248, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !213)
!1427 = distinct !DILocation(line: 330, column: 28, scope: !1418, inlinedAt: !1423)
!1428 = !DILocation(line: 357, column: 10, scope: !1418, inlinedAt: !1423)
!1429 = !DILocation(line: 357, column: 17, scope: !1418, inlinedAt: !1423)
!1430 = !DILocation(line: 357, column: 9, scope: !1418, inlinedAt: !1423)
!1431 = !DILocation(line: 357, column: 25, scope: !1418, inlinedAt: !1423)
!1432 = !DILocation(line: 357, column: 54, scope: !1418, inlinedAt: !1423)
!1433 = !DILocation(line: 404, column: 1, scope: !1418, inlinedAt: !1423)
!1434 = !DILocation(line: 575, column: 21, scope: !1435)
!1435 = distinct !DILexicalBlock(scope: !1408, file: !232, line: 575, column: 6)
!1436 = !DILocation(line: 575, column: 29, scope: !1435)
!1437 = !DILocalVariable(name: "thread", arg: 1, scope: !1438, file: !232, line: 134, type: !101)
!1438 = distinct !DISubprogram(name: "should_preempt", scope: !232, file: !232, line: 134, type: !1439, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1441)
!1439 = !DISubroutineType(types: !1440)
!1440 = !{!236, !101, !192}
!1441 = !{!1437, !1442}
!1442 = !DILocalVariable(name: "preempt_ok", arg: 2, scope: !1438, file: !232, line: 135, type: !192)
!1443 = !DILocation(line: 134, column: 84, scope: !1438, inlinedAt: !1444)
!1444 = distinct !DILocation(line: 575, column: 6, scope: !1435)
!1445 = !DILocation(line: 135, column: 11, scope: !1438, inlinedAt: !1444)
!1446 = !DILocation(line: 140, column: 6, scope: !1447, inlinedAt: !1444)
!1447 = distinct !DILexicalBlock(scope: !1438, file: !232, line: 140, column: 6)
!1448 = !DILocation(line: 140, column: 17, scope: !1447, inlinedAt: !1444)
!1449 = !DILocation(line: 140, column: 6, scope: !1438, inlinedAt: !1444)
!1450 = !DILocation(line: 141, column: 3, scope: !1451, inlinedAt: !1444)
!1451 = distinct !DILexicalBlock(scope: !1447, file: !232, line: 140, column: 23)
!1452 = !DILocation(line: 147, column: 57, scope: !1453, inlinedAt: !1444)
!1453 = distinct !DILexicalBlock(scope: !1438, file: !232, line: 147, column: 6)
!1454 = !DILocation(line: 147, column: 6, scope: !1453, inlinedAt: !1444)
!1455 = !DILocation(line: 147, column: 6, scope: !1438, inlinedAt: !1444)
!1456 = !DILocation(line: 148, column: 3, scope: !1457, inlinedAt: !1444)
!1457 = distinct !DILexicalBlock(scope: !1453, file: !232, line: 147, column: 67)
!1458 = !DILocation(line: 157, column: 36, scope: !1459, inlinedAt: !1444)
!1459 = distinct !DILexicalBlock(scope: !1438, file: !232, line: 156, column: 6)
!1460 = !DILocation(line: 157, column: 9, scope: !1459, inlinedAt: !1444)
!1461 = !DILocation(line: 156, column: 6, scope: !1438, inlinedAt: !1444)
!1462 = !DILocation(line: 158, column: 3, scope: !1463, inlinedAt: !1444)
!1463 = distinct !DILexicalBlock(scope: !1459, file: !232, line: 157, column: 45)
!1464 = !DILocation(line: 164, column: 33, scope: !1465, inlinedAt: !1444)
!1465 = distinct !DILexicalBlock(scope: !1438, file: !232, line: 164, column: 6)
!1466 = !DILocation(line: 164, column: 6, scope: !1465, inlinedAt: !1444)
!1467 = !DILocation(line: 164, column: 42, scope: !1465, inlinedAt: !1444)
!1468 = !DILocation(line: 164, column: 56, scope: !1465, inlinedAt: !1444)
!1469 = !DILocation(line: 164, column: 45, scope: !1465, inlinedAt: !1444)
!1470 = !DILocation(line: 164, column: 6, scope: !1438, inlinedAt: !1444)
!1471 = !DILocation(line: 165, column: 3, scope: !1472, inlinedAt: !1444)
!1472 = distinct !DILexicalBlock(scope: !1465, file: !232, line: 164, column: 65)
!1473 = !DILocation(line: 168, column: 2, scope: !1438, inlinedAt: !1444)
!1474 = !DILocation(line: 169, column: 1, scope: !1438, inlinedAt: !1444)
!1475 = !DILocation(line: 575, column: 6, scope: !1408)
!1476 = !DILocation(line: 577, column: 7, scope: !1477)
!1477 = distinct !DILexicalBlock(scope: !1478, file: !232, line: 577, column: 7)
!1478 = distinct !DILexicalBlock(scope: !1435, file: !232, line: 575, column: 42)
!1479 = !DILocation(line: 577, column: 33, scope: !1477)
!1480 = !DILocation(line: 577, column: 14, scope: !1477)
!1481 = !DILocation(line: 577, column: 7, scope: !1478)
!1482 = !DILocation(line: 578, column: 23, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !1477, file: !232, line: 577, column: 42)
!1484 = !DILocation(line: 578, column: 4, scope: !1483)
!1485 = !DILocation(line: 579, column: 3, scope: !1483)
!1486 = !DILocation(line: 581, column: 26, scope: !1478)
!1487 = !DILocation(line: 581, column: 3, scope: !1478)
!1488 = !DILocation(line: 582, column: 27, scope: !1478)
!1489 = !DILocation(line: 582, column: 25, scope: !1478)
!1490 = !DILocation(line: 583, column: 2, scope: !1478)
!1491 = !DILocation(line: 584, column: 43, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1435, file: !232, line: 583, column: 9)
!1493 = !DILocation(line: 584, column: 25, scope: !1492)
!1494 = !DILocation(line: 596, column: 1, scope: !1408)
!1495 = distinct !DISubprogram(name: "z_reschedule_unlocked", scope: !784, file: !784, line: 75, type: !694, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !213)
!1496 = !DILocation(line: 44, column: 2, scope: !615, inlinedAt: !1497)
!1497 = distinct !DILocation(line: 77, column: 30, scope: !1495)
!1498 = !DILocation(line: 44, column: 15, scope: !615, inlinedAt: !1497)
!1499 = !DILocation(line: 48, column: 2, scope: !615, inlinedAt: !1497)
!1500 = !DILocation(line: 80, column: 9, scope: !615, inlinedAt: !1497)
!1501 = !DILocation(line: 81, column: 1, scope: !615, inlinedAt: !1497)
!1502 = !DILocation(line: 77, column: 9, scope: !1495)
!1503 = !DILocation(line: 78, column: 1, scope: !1495)
!1504 = distinct !DISubprogram(name: "z_impl_k_thread_resume", scope: !232, file: !232, line: 698, type: !483, scopeLine: 699, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1505)
!1505 = !{!1506, !1507}
!1506 = !DILocalVariable(name: "thread", arg: 1, scope: !1504, file: !232, line: 698, type: !101)
!1507 = !DILocalVariable(name: "key", scope: !1504, file: !232, line: 702, type: !593)
!1508 = !DILocation(line: 698, column: 46, scope: !1504)
!1509 = !DILocation(line: 700, column: 2, scope: !1504)
!1510 = !DILocation(line: 700, column: 7, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1504, file: !232, line: 700, column: 5)
!1512 = !DILocation(line: 702, column: 2, scope: !1504)
!1513 = !DILocation(line: 702, column: 19, scope: !1504)
!1514 = !DILocation(line: 160, column: 94, scope: !604, inlinedAt: !1515)
!1515 = distinct !DILocation(line: 702, column: 25, scope: !1504)
!1516 = !DILocation(line: 162, column: 9, scope: !604, inlinedAt: !1515)
!1517 = !DILocation(line: 163, column: 19, scope: !604, inlinedAt: !1515)
!1518 = !DILocation(line: 44, column: 2, scope: !615, inlinedAt: !1519)
!1519 = distinct !DILocation(line: 169, column: 10, scope: !604, inlinedAt: !1515)
!1520 = !DILocation(line: 44, column: 15, scope: !615, inlinedAt: !1519)
!1521 = !DILocation(line: 48, column: 2, scope: !615, inlinedAt: !1519)
!1522 = !DILocation(line: 80, column: 9, scope: !615, inlinedAt: !1519)
!1523 = !DILocation(line: 81, column: 1, scope: !615, inlinedAt: !1519)
!1524 = !DILocation(line: 169, column: 8, scope: !604, inlinedAt: !1515)
!1525 = !DILocation(line: 171, column: 26, scope: !604, inlinedAt: !1515)
!1526 = !DILocation(line: 110, column: 94, scope: !630, inlinedAt: !1527)
!1527 = distinct !DILocation(line: 171, column: 2, scope: !604, inlinedAt: !1515)
!1528 = !DILocation(line: 112, column: 9, scope: !630, inlinedAt: !1527)
!1529 = !DILocation(line: 177, column: 27, scope: !604, inlinedAt: !1515)
!1530 = !DILocation(line: 121, column: 95, scope: !639, inlinedAt: !1531)
!1531 = distinct !DILocation(line: 177, column: 2, scope: !604, inlinedAt: !1515)
!1532 = !DILocation(line: 123, column: 9, scope: !639, inlinedAt: !1531)
!1533 = !DILocation(line: 179, column: 2, scope: !604, inlinedAt: !1515)
!1534 = !DILocation(line: 702, column: 25, scope: !1504)
!1535 = !DILocation(line: 705, column: 29, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !1504, file: !232, line: 705, column: 6)
!1537 = !DILocation(line: 705, column: 7, scope: !1536)
!1538 = !DILocation(line: 705, column: 6, scope: !1504)
!1539 = !DILocation(line: 706, column: 3, scope: !1540)
!1540 = distinct !DILexicalBlock(scope: !1536, file: !232, line: 705, column: 38)
!1541 = !DILocation(line: 235, column: 84, scope: !662, inlinedAt: !1542)
!1542 = distinct !DILocation(line: 706, column: 3, scope: !1540)
!1543 = !DILocation(line: 236, column: 23, scope: !662, inlinedAt: !1542)
!1544 = !DILocation(line: 238, column: 9, scope: !662, inlinedAt: !1542)
!1545 = !DILocation(line: 261, column: 22, scope: !662, inlinedAt: !1542)
!1546 = !DILocation(line: 88, column: 80, scope: !673, inlinedAt: !1547)
!1547 = distinct !DILocation(line: 261, column: 2, scope: !662, inlinedAt: !1542)
!1548 = !DILocation(line: 91, column: 6, scope: !680, inlinedAt: !1547)
!1549 = !DILocation(line: 91, column: 10, scope: !680, inlinedAt: !1547)
!1550 = !DILocation(line: 91, column: 6, scope: !673, inlinedAt: !1547)
!1551 = !DILocation(line: 92, column: 3, scope: !684, inlinedAt: !1547)
!1552 = !DILocation(line: 94, column: 2, scope: !673, inlinedAt: !1547)
!1553 = !DILocation(line: 114, column: 1, scope: !673, inlinedAt: !1547)
!1554 = !DILocation(line: 707, column: 3, scope: !1540)
!1555 = !DILocation(line: 710, column: 33, scope: !1504)
!1556 = !DILocation(line: 710, column: 2, scope: !1504)
!1557 = !DILocation(line: 711, column: 15, scope: !1504)
!1558 = !DILocation(line: 711, column: 2, scope: !1504)
!1559 = !DILocation(line: 713, column: 2, scope: !1504)
!1560 = !DILocation(line: 715, column: 2, scope: !1504)
!1561 = !DILocation(line: 715, column: 7, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !1504, file: !232, line: 715, column: 5)
!1563 = !DILocation(line: 716, column: 1, scope: !1504)
!1564 = distinct !DISubprogram(name: "z_is_thread_suspended", scope: !784, file: !784, line: 98, type: !519, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1565)
!1565 = !{!1566}
!1566 = !DILocalVariable(name: "thread", arg: 1, scope: !1564, file: !784, line: 98, type: !101)
!1567 = !DILocation(line: 98, column: 60, scope: !1564)
!1568 = !DILocation(line: 100, column: 10, scope: !1564)
!1569 = !DILocation(line: 100, column: 18, scope: !1564)
!1570 = !DILocation(line: 100, column: 23, scope: !1564)
!1571 = !DILocation(line: 100, column: 36, scope: !1564)
!1572 = !DILocation(line: 100, column: 54, scope: !1564)
!1573 = !DILocation(line: 100, column: 2, scope: !1564)
!1574 = distinct !DISubprogram(name: "z_mark_thread_as_not_suspended", scope: !784, file: !784, line: 150, type: !483, scopeLine: 151, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1575)
!1575 = !{!1576}
!1576 = !DILocalVariable(name: "thread", arg: 1, scope: !1574, file: !784, line: 150, type: !101)
!1577 = !DILocation(line: 150, column: 68, scope: !1574)
!1578 = !DILocation(line: 152, column: 2, scope: !1574)
!1579 = !DILocation(line: 152, column: 10, scope: !1574)
!1580 = !DILocation(line: 152, column: 15, scope: !1574)
!1581 = !DILocation(line: 152, column: 28, scope: !1574)
!1582 = !DILocation(line: 154, column: 2, scope: !1574)
!1583 = !DILocation(line: 154, column: 7, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1574, file: !784, line: 154, column: 5)
!1585 = !DILocation(line: 155, column: 1, scope: !1574)
!1586 = distinct !DISubprogram(name: "z_pend_thread", scope: !232, file: !232, line: 773, type: !1587, scopeLine: 775, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1589)
!1587 = !DISubroutineType(types: !1588)
!1588 = !{null, !101, !137, !331}
!1589 = !{!1590, !1591, !1592, !1593, !1595}
!1590 = !DILocalVariable(name: "thread", arg: 1, scope: !1586, file: !232, line: 773, type: !101)
!1591 = !DILocalVariable(name: "wait_q", arg: 2, scope: !1586, file: !232, line: 773, type: !137)
!1592 = !DILocalVariable(name: "timeout", arg: 3, scope: !1586, file: !232, line: 774, type: !331)
!1593 = !DILocalVariable(name: "__i", scope: !1594, file: !232, line: 777, type: !593)
!1594 = distinct !DILexicalBlock(scope: !1586, file: !232, line: 777, column: 2)
!1595 = !DILocalVariable(name: "__key", scope: !1594, file: !232, line: 777, type: !593)
!1596 = !DILocation(line: 773, column: 37, scope: !1586)
!1597 = !DILocation(line: 773, column: 56, scope: !1586)
!1598 = !DILocation(line: 774, column: 18, scope: !1586)
!1599 = !DILocation(line: 777, column: 7, scope: !1594)
!1600 = !DILocation(line: 777, column: 24, scope: !1594)
!1601 = !DILocation(line: 777, column: 34, scope: !1594)
!1602 = !DILocation(line: 160, column: 94, scope: !604, inlinedAt: !1603)
!1603 = distinct !DILocation(line: 777, column: 42, scope: !1594)
!1604 = !DILocation(line: 162, column: 9, scope: !604, inlinedAt: !1603)
!1605 = !DILocation(line: 163, column: 19, scope: !604, inlinedAt: !1603)
!1606 = !DILocation(line: 44, column: 2, scope: !615, inlinedAt: !1607)
!1607 = distinct !DILocation(line: 169, column: 10, scope: !604, inlinedAt: !1603)
!1608 = !DILocation(line: 44, column: 15, scope: !615, inlinedAt: !1607)
!1609 = !DILocation(line: 48, column: 2, scope: !615, inlinedAt: !1607)
!1610 = !DILocation(line: 80, column: 9, scope: !615, inlinedAt: !1607)
!1611 = !DILocation(line: 81, column: 1, scope: !615, inlinedAt: !1607)
!1612 = !DILocation(line: 169, column: 8, scope: !604, inlinedAt: !1603)
!1613 = !DILocation(line: 171, column: 26, scope: !604, inlinedAt: !1603)
!1614 = !DILocation(line: 110, column: 94, scope: !630, inlinedAt: !1615)
!1615 = distinct !DILocation(line: 171, column: 2, scope: !604, inlinedAt: !1603)
!1616 = !DILocation(line: 112, column: 9, scope: !630, inlinedAt: !1615)
!1617 = !DILocation(line: 177, column: 27, scope: !604, inlinedAt: !1603)
!1618 = !DILocation(line: 121, column: 95, scope: !639, inlinedAt: !1619)
!1619 = distinct !DILocation(line: 177, column: 2, scope: !604, inlinedAt: !1603)
!1620 = !DILocation(line: 123, column: 9, scope: !639, inlinedAt: !1619)
!1621 = !DILocation(line: 179, column: 2, scope: !604, inlinedAt: !1603)
!1622 = !DILocation(line: 777, column: 42, scope: !1594)
!1623 = !DILocation(line: 777, column: 77, scope: !1624)
!1624 = distinct !DILexicalBlock(scope: !1594, file: !232, line: 777, column: 2)
!1625 = !DILocation(line: 777, column: 72, scope: !1624)
!1626 = !DILocation(line: 777, column: 2, scope: !1594)
!1627 = !DILocation(line: 777, column: 2, scope: !1624)
!1628 = !DILocation(line: 778, column: 15, scope: !1629)
!1629 = distinct !DILexicalBlock(scope: !1624, file: !232, line: 777, column: 134)
!1630 = !DILocation(line: 778, column: 23, scope: !1629)
!1631 = !DILocation(line: 778, column: 3, scope: !1629)
!1632 = !DILocation(line: 779, column: 2, scope: !1629)
!1633 = !DILocation(line: 777, column: 82, scope: !1624)
!1634 = !DILocation(line: 235, column: 84, scope: !662, inlinedAt: !1635)
!1635 = distinct !DILocation(line: 777, column: 82, scope: !1624)
!1636 = !DILocation(line: 236, column: 23, scope: !662, inlinedAt: !1635)
!1637 = !DILocation(line: 238, column: 9, scope: !662, inlinedAt: !1635)
!1638 = !DILocation(line: 261, column: 22, scope: !662, inlinedAt: !1635)
!1639 = !DILocation(line: 88, column: 80, scope: !673, inlinedAt: !1640)
!1640 = distinct !DILocation(line: 261, column: 2, scope: !662, inlinedAt: !1635)
!1641 = !DILocation(line: 91, column: 6, scope: !680, inlinedAt: !1640)
!1642 = !DILocation(line: 91, column: 10, scope: !680, inlinedAt: !1640)
!1643 = !DILocation(line: 91, column: 6, scope: !673, inlinedAt: !1640)
!1644 = !DILocation(line: 92, column: 3, scope: !684, inlinedAt: !1640)
!1645 = !DILocation(line: 94, column: 2, scope: !673, inlinedAt: !1640)
!1646 = !DILocation(line: 114, column: 1, scope: !673, inlinedAt: !1640)
!1647 = !DILocation(line: 777, column: 125, scope: !1624)
!1648 = !DILocation(line: 777, column: 129, scope: !1624)
!1649 = distinct !{!1649, !1626, !1650}
!1650 = !DILocation(line: 779, column: 2, scope: !1594)
!1651 = !DILocation(line: 780, column: 1, scope: !1586)
!1652 = distinct !DISubprogram(name: "pend_locked", scope: !232, file: !232, line: 763, type: !1587, scopeLine: 765, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1653)
!1653 = !{!1654, !1655, !1656}
!1654 = !DILocalVariable(name: "thread", arg: 1, scope: !1652, file: !232, line: 763, type: !101)
!1655 = !DILocalVariable(name: "wait_q", arg: 2, scope: !1652, file: !232, line: 763, type: !137)
!1656 = !DILocalVariable(name: "timeout", arg: 3, scope: !1652, file: !232, line: 764, type: !331)
!1657 = !DILocation(line: 763, column: 42, scope: !1652)
!1658 = !DILocation(line: 763, column: 61, scope: !1652)
!1659 = !DILocation(line: 764, column: 16, scope: !1652)
!1660 = !DILocation(line: 769, column: 22, scope: !1652)
!1661 = !DILocation(line: 769, column: 30, scope: !1652)
!1662 = !DILocation(line: 769, column: 2, scope: !1652)
!1663 = !DILocation(line: 770, column: 21, scope: !1652)
!1664 = !DILocation(line: 770, column: 2, scope: !1652)
!1665 = !DILocation(line: 771, column: 1, scope: !1652)
!1666 = distinct !DISubprogram(name: "z_unpend_thread_no_timeout", scope: !232, file: !232, line: 789, type: !483, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1667)
!1667 = !{!1668, !1669, !1671}
!1668 = !DILocalVariable(name: "thread", arg: 1, scope: !1666, file: !232, line: 789, type: !101)
!1669 = !DILocalVariable(name: "__i", scope: !1670, file: !232, line: 791, type: !593)
!1670 = distinct !DILexicalBlock(scope: !1666, file: !232, line: 791, column: 2)
!1671 = !DILocalVariable(name: "__key", scope: !1670, file: !232, line: 791, type: !593)
!1672 = !DILocation(line: 789, column: 88, scope: !1666)
!1673 = !DILocation(line: 791, column: 7, scope: !1670)
!1674 = !DILocation(line: 791, column: 24, scope: !1670)
!1675 = !DILocation(line: 791, column: 34, scope: !1670)
!1676 = !DILocation(line: 160, column: 94, scope: !604, inlinedAt: !1677)
!1677 = distinct !DILocation(line: 791, column: 42, scope: !1670)
!1678 = !DILocation(line: 162, column: 9, scope: !604, inlinedAt: !1677)
!1679 = !DILocation(line: 163, column: 19, scope: !604, inlinedAt: !1677)
!1680 = !DILocation(line: 44, column: 2, scope: !615, inlinedAt: !1681)
!1681 = distinct !DILocation(line: 169, column: 10, scope: !604, inlinedAt: !1677)
!1682 = !DILocation(line: 44, column: 15, scope: !615, inlinedAt: !1681)
!1683 = !DILocation(line: 48, column: 2, scope: !615, inlinedAt: !1681)
!1684 = !DILocation(line: 80, column: 9, scope: !615, inlinedAt: !1681)
!1685 = !DILocation(line: 81, column: 1, scope: !615, inlinedAt: !1681)
!1686 = !DILocation(line: 169, column: 8, scope: !604, inlinedAt: !1677)
!1687 = !DILocation(line: 171, column: 26, scope: !604, inlinedAt: !1677)
!1688 = !DILocation(line: 110, column: 94, scope: !630, inlinedAt: !1689)
!1689 = distinct !DILocation(line: 171, column: 2, scope: !604, inlinedAt: !1677)
!1690 = !DILocation(line: 112, column: 9, scope: !630, inlinedAt: !1689)
!1691 = !DILocation(line: 177, column: 27, scope: !604, inlinedAt: !1677)
!1692 = !DILocation(line: 121, column: 95, scope: !639, inlinedAt: !1693)
!1693 = distinct !DILocation(line: 177, column: 2, scope: !604, inlinedAt: !1677)
!1694 = !DILocation(line: 123, column: 9, scope: !639, inlinedAt: !1693)
!1695 = !DILocation(line: 179, column: 2, scope: !604, inlinedAt: !1677)
!1696 = !DILocation(line: 791, column: 42, scope: !1670)
!1697 = !DILocation(line: 791, column: 77, scope: !1698)
!1698 = distinct !DILexicalBlock(scope: !1670, file: !232, line: 791, column: 2)
!1699 = !DILocation(line: 791, column: 72, scope: !1698)
!1700 = !DILocation(line: 791, column: 2, scope: !1670)
!1701 = !DILocation(line: 791, column: 2, scope: !1698)
!1702 = !DILocation(line: 792, column: 7, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !1704, file: !232, line: 792, column: 7)
!1704 = distinct !DILexicalBlock(scope: !1698, file: !232, line: 791, column: 134)
!1705 = !DILocation(line: 792, column: 15, scope: !1703)
!1706 = !DILocation(line: 792, column: 20, scope: !1703)
!1707 = !DILocation(line: 792, column: 30, scope: !1703)
!1708 = !DILocation(line: 792, column: 7, scope: !1704)
!1709 = !DILocation(line: 793, column: 29, scope: !1710)
!1710 = distinct !DILexicalBlock(scope: !1703, file: !232, line: 792, column: 36)
!1711 = !DILocation(line: 793, column: 4, scope: !1710)
!1712 = !DILocation(line: 794, column: 3, scope: !1710)
!1713 = !DILocation(line: 795, column: 2, scope: !1704)
!1714 = !DILocation(line: 791, column: 82, scope: !1698)
!1715 = !DILocation(line: 235, column: 84, scope: !662, inlinedAt: !1716)
!1716 = distinct !DILocation(line: 791, column: 82, scope: !1698)
!1717 = !DILocation(line: 236, column: 23, scope: !662, inlinedAt: !1716)
!1718 = !DILocation(line: 238, column: 9, scope: !662, inlinedAt: !1716)
!1719 = !DILocation(line: 261, column: 22, scope: !662, inlinedAt: !1716)
!1720 = !DILocation(line: 88, column: 80, scope: !673, inlinedAt: !1721)
!1721 = distinct !DILocation(line: 261, column: 2, scope: !662, inlinedAt: !1716)
!1722 = !DILocation(line: 91, column: 6, scope: !680, inlinedAt: !1721)
!1723 = !DILocation(line: 91, column: 10, scope: !680, inlinedAt: !1721)
!1724 = !DILocation(line: 91, column: 6, scope: !673, inlinedAt: !1721)
!1725 = !DILocation(line: 92, column: 3, scope: !684, inlinedAt: !1721)
!1726 = !DILocation(line: 94, column: 2, scope: !673, inlinedAt: !1721)
!1727 = !DILocation(line: 114, column: 1, scope: !673, inlinedAt: !1721)
!1728 = !DILocation(line: 791, column: 125, scope: !1698)
!1729 = !DILocation(line: 791, column: 129, scope: !1698)
!1730 = distinct !{!1730, !1700, !1731}
!1731 = !DILocation(line: 795, column: 2, scope: !1670)
!1732 = !DILocation(line: 796, column: 1, scope: !1666)
!1733 = distinct !DISubprogram(name: "unpend_thread_no_timeout", scope: !232, file: !232, line: 782, type: !483, scopeLine: 783, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1734)
!1734 = !{!1735}
!1735 = !DILocalVariable(name: "thread", arg: 1, scope: !1733, file: !232, line: 782, type: !101)
!1736 = !DILocation(line: 782, column: 62, scope: !1733)
!1737 = !DILocation(line: 784, column: 39, scope: !1733)
!1738 = !DILocation(line: 784, column: 22, scope: !1733)
!1739 = !DILocation(line: 784, column: 48, scope: !1733)
!1740 = !DILocation(line: 784, column: 55, scope: !1733)
!1741 = !DILocation(line: 784, column: 2, scope: !1733)
!1742 = !DILocation(line: 785, column: 31, scope: !1733)
!1743 = !DILocation(line: 785, column: 2, scope: !1733)
!1744 = !DILocation(line: 786, column: 2, scope: !1733)
!1745 = !DILocation(line: 786, column: 10, scope: !1733)
!1746 = !DILocation(line: 786, column: 15, scope: !1733)
!1747 = !DILocation(line: 786, column: 25, scope: !1733)
!1748 = !DILocation(line: 787, column: 1, scope: !1733)
!1749 = distinct !DISubprogram(name: "z_sched_wake_thread", scope: !232, file: !232, line: 798, type: !1750, scopeLine: 799, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1752)
!1750 = !DISubroutineType(types: !1751)
!1751 = !{null, !101, !236}
!1752 = !{!1753, !1754, !1755, !1757, !1758}
!1753 = !DILocalVariable(name: "thread", arg: 1, scope: !1749, file: !232, line: 798, type: !101)
!1754 = !DILocalVariable(name: "is_timeout", arg: 2, scope: !1749, file: !232, line: 798, type: !236)
!1755 = !DILocalVariable(name: "__i", scope: !1756, file: !232, line: 800, type: !593)
!1756 = distinct !DILexicalBlock(scope: !1749, file: !232, line: 800, column: 2)
!1757 = !DILocalVariable(name: "__key", scope: !1756, file: !232, line: 800, type: !593)
!1758 = !DILocalVariable(name: "killed", scope: !1759, file: !232, line: 801, type: !236)
!1759 = distinct !DILexicalBlock(scope: !1760, file: !232, line: 800, column: 134)
!1760 = distinct !DILexicalBlock(scope: !1756, file: !232, line: 800, column: 2)
!1761 = !DILocation(line: 798, column: 43, scope: !1749)
!1762 = !DILocation(line: 798, column: 57, scope: !1749)
!1763 = !DILocation(line: 800, column: 7, scope: !1756)
!1764 = !DILocation(line: 800, column: 24, scope: !1756)
!1765 = !DILocation(line: 800, column: 34, scope: !1756)
!1766 = !DILocation(line: 160, column: 94, scope: !604, inlinedAt: !1767)
!1767 = distinct !DILocation(line: 800, column: 42, scope: !1756)
!1768 = !DILocation(line: 162, column: 9, scope: !604, inlinedAt: !1767)
!1769 = !DILocation(line: 163, column: 19, scope: !604, inlinedAt: !1767)
!1770 = !DILocation(line: 44, column: 2, scope: !615, inlinedAt: !1771)
!1771 = distinct !DILocation(line: 169, column: 10, scope: !604, inlinedAt: !1767)
!1772 = !DILocation(line: 44, column: 15, scope: !615, inlinedAt: !1771)
!1773 = !DILocation(line: 48, column: 2, scope: !615, inlinedAt: !1771)
!1774 = !DILocation(line: 80, column: 9, scope: !615, inlinedAt: !1771)
!1775 = !DILocation(line: 81, column: 1, scope: !615, inlinedAt: !1771)
!1776 = !DILocation(line: 169, column: 8, scope: !604, inlinedAt: !1767)
!1777 = !DILocation(line: 171, column: 26, scope: !604, inlinedAt: !1767)
!1778 = !DILocation(line: 110, column: 94, scope: !630, inlinedAt: !1779)
!1779 = distinct !DILocation(line: 171, column: 2, scope: !604, inlinedAt: !1767)
!1780 = !DILocation(line: 112, column: 9, scope: !630, inlinedAt: !1779)
!1781 = !DILocation(line: 177, column: 27, scope: !604, inlinedAt: !1767)
!1782 = !DILocation(line: 121, column: 95, scope: !639, inlinedAt: !1783)
!1783 = distinct !DILocation(line: 177, column: 2, scope: !604, inlinedAt: !1767)
!1784 = !DILocation(line: 123, column: 9, scope: !639, inlinedAt: !1783)
!1785 = !DILocation(line: 179, column: 2, scope: !604, inlinedAt: !1767)
!1786 = !DILocation(line: 800, column: 42, scope: !1756)
!1787 = !DILocation(line: 800, column: 77, scope: !1760)
!1788 = !DILocation(line: 800, column: 72, scope: !1760)
!1789 = !DILocation(line: 800, column: 2, scope: !1756)
!1790 = !DILocation(line: 800, column: 2, scope: !1760)
!1791 = !DILocation(line: 801, column: 3, scope: !1759)
!1792 = !DILocation(line: 801, column: 9, scope: !1759)
!1793 = !DILocation(line: 801, column: 20, scope: !1759)
!1794 = !DILocation(line: 801, column: 28, scope: !1759)
!1795 = !DILocation(line: 801, column: 33, scope: !1759)
!1796 = !DILocation(line: 801, column: 46, scope: !1759)
!1797 = !DILocation(line: 801, column: 64, scope: !1759)
!1798 = !DILocation(line: 802, column: 12, scope: !1759)
!1799 = !DILocation(line: 802, column: 20, scope: !1759)
!1800 = !DILocation(line: 802, column: 25, scope: !1759)
!1801 = !DILocation(line: 802, column: 38, scope: !1759)
!1802 = !DILocation(line: 814, column: 8, scope: !1803)
!1803 = distinct !DILexicalBlock(scope: !1759, file: !232, line: 814, column: 7)
!1804 = !DILocation(line: 814, column: 7, scope: !1759)
!1805 = !DILocation(line: 816, column: 8, scope: !1806)
!1806 = distinct !DILexicalBlock(scope: !1807, file: !232, line: 816, column: 8)
!1807 = distinct !DILexicalBlock(scope: !1803, file: !232, line: 814, column: 16)
!1808 = !DILocation(line: 816, column: 16, scope: !1806)
!1809 = !DILocation(line: 816, column: 21, scope: !1806)
!1810 = !DILocation(line: 816, column: 31, scope: !1806)
!1811 = !DILocation(line: 816, column: 8, scope: !1807)
!1812 = !DILocation(line: 817, column: 30, scope: !1813)
!1813 = distinct !DILexicalBlock(scope: !1806, file: !232, line: 816, column: 37)
!1814 = !DILocation(line: 817, column: 5, scope: !1813)
!1815 = !DILocation(line: 818, column: 4, scope: !1813)
!1816 = !DILocation(line: 819, column: 29, scope: !1807)
!1817 = !DILocation(line: 819, column: 4, scope: !1807)
!1818 = !DILocation(line: 820, column: 8, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !1807, file: !232, line: 820, column: 8)
!1820 = !DILocation(line: 820, column: 8, scope: !1807)
!1821 = !DILocation(line: 821, column: 36, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !1819, file: !232, line: 820, column: 20)
!1823 = !DILocation(line: 821, column: 5, scope: !1822)
!1824 = !DILocation(line: 822, column: 4, scope: !1822)
!1825 = !DILocation(line: 823, column: 17, scope: !1807)
!1826 = !DILocation(line: 823, column: 4, scope: !1807)
!1827 = !DILocation(line: 824, column: 3, scope: !1807)
!1828 = !DILocation(line: 825, column: 2, scope: !1760)
!1829 = !DILocation(line: 825, column: 2, scope: !1759)
!1830 = !DILocation(line: 800, column: 82, scope: !1760)
!1831 = !DILocation(line: 235, column: 84, scope: !662, inlinedAt: !1832)
!1832 = distinct !DILocation(line: 800, column: 82, scope: !1760)
!1833 = !DILocation(line: 236, column: 23, scope: !662, inlinedAt: !1832)
!1834 = !DILocation(line: 238, column: 9, scope: !662, inlinedAt: !1832)
!1835 = !DILocation(line: 261, column: 22, scope: !662, inlinedAt: !1832)
!1836 = !DILocation(line: 88, column: 80, scope: !673, inlinedAt: !1837)
!1837 = distinct !DILocation(line: 261, column: 2, scope: !662, inlinedAt: !1832)
!1838 = !DILocation(line: 91, column: 6, scope: !680, inlinedAt: !1837)
!1839 = !DILocation(line: 91, column: 10, scope: !680, inlinedAt: !1837)
!1840 = !DILocation(line: 91, column: 6, scope: !673, inlinedAt: !1837)
!1841 = !DILocation(line: 92, column: 3, scope: !684, inlinedAt: !1837)
!1842 = !DILocation(line: 94, column: 2, scope: !673, inlinedAt: !1837)
!1843 = !DILocation(line: 114, column: 1, scope: !673, inlinedAt: !1837)
!1844 = !DILocation(line: 800, column: 125, scope: !1760)
!1845 = !DILocation(line: 800, column: 129, scope: !1760)
!1846 = distinct !{!1846, !1789, !1847}
!1847 = !DILocation(line: 825, column: 2, scope: !1756)
!1848 = !DILocation(line: 827, column: 1, scope: !1749)
!1849 = distinct !DISubprogram(name: "z_thread_timeout", scope: !232, file: !232, line: 831, type: !170, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1850)
!1850 = !{!1851, !1852}
!1851 = !DILocalVariable(name: "timeout", arg: 1, scope: !1849, file: !232, line: 831, type: !172)
!1852 = !DILocalVariable(name: "thread", scope: !1849, file: !232, line: 833, type: !101)
!1853 = !DILocation(line: 831, column: 40, scope: !1849)
!1854 = !DILocation(line: 833, column: 2, scope: !1849)
!1855 = !DILocation(line: 833, column: 19, scope: !1849)
!1856 = !DILocation(line: 833, column: 64, scope: !1857)
!1857 = distinct !DILexicalBlock(scope: !1849, file: !232, line: 833, column: 29)
!1858 = !DILocation(line: 833, column: 74, scope: !1857)
!1859 = !DILocation(line: 833, column: 29, scope: !1849)
!1860 = !DILocation(line: 833, column: 129, scope: !1857)
!1861 = !DILocation(line: 836, column: 22, scope: !1849)
!1862 = !DILocation(line: 836, column: 2, scope: !1849)
!1863 = !DILocation(line: 837, column: 1, scope: !1849)
!1864 = distinct !DISubprogram(name: "z_pend_curr_irqlock", scope: !232, file: !232, line: 840, type: !1865, scopeLine: 841, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1867)
!1865 = !DISubroutineType(types: !1866)
!1866 = !{!192, !98, !137, !331}
!1867 = !{!1868, !1869, !1870, !1871, !1872, !1874}
!1868 = !DILocalVariable(name: "key", arg: 1, scope: !1864, file: !232, line: 840, type: !98)
!1869 = !DILocalVariable(name: "wait_q", arg: 2, scope: !1864, file: !232, line: 840, type: !137)
!1870 = !DILocalVariable(name: "timeout", arg: 3, scope: !1864, file: !232, line: 840, type: !331)
!1871 = !DILocalVariable(name: "ret", scope: !1864, file: !232, line: 852, type: !192)
!1872 = !DILocalVariable(name: "__i", scope: !1873, file: !232, line: 853, type: !593)
!1873 = distinct !DILexicalBlock(scope: !1864, file: !232, line: 853, column: 2)
!1874 = !DILocalVariable(name: "__key", scope: !1873, file: !232, line: 853, type: !593)
!1875 = !DILocation(line: 840, column: 34, scope: !1864)
!1876 = !DILocation(line: 840, column: 50, scope: !1864)
!1877 = !DILocation(line: 840, column: 70, scope: !1864)
!1878 = !DILocation(line: 847, column: 30, scope: !1864)
!1879 = !DILocation(line: 847, column: 39, scope: !1864)
!1880 = !DILocation(line: 847, column: 2, scope: !1864)
!1881 = !DILocation(line: 850, column: 36, scope: !1864)
!1882 = !DILocation(line: 850, column: 18, scope: !1864)
!1883 = !DILocation(line: 852, column: 2, scope: !1864)
!1884 = !DILocation(line: 852, column: 6, scope: !1864)
!1885 = !DILocation(line: 852, column: 27, scope: !1864)
!1886 = !DILocation(line: 852, column: 12, scope: !1864)
!1887 = !DILocation(line: 853, column: 7, scope: !1873)
!1888 = !DILocation(line: 853, column: 24, scope: !1873)
!1889 = !DILocation(line: 853, column: 34, scope: !1873)
!1890 = !DILocation(line: 160, column: 94, scope: !604, inlinedAt: !1891)
!1891 = distinct !DILocation(line: 853, column: 42, scope: !1873)
!1892 = !DILocation(line: 162, column: 9, scope: !604, inlinedAt: !1891)
!1893 = !DILocation(line: 163, column: 19, scope: !604, inlinedAt: !1891)
!1894 = !DILocation(line: 44, column: 2, scope: !615, inlinedAt: !1895)
!1895 = distinct !DILocation(line: 169, column: 10, scope: !604, inlinedAt: !1891)
!1896 = !DILocation(line: 44, column: 15, scope: !615, inlinedAt: !1895)
!1897 = !DILocation(line: 48, column: 2, scope: !615, inlinedAt: !1895)
!1898 = !DILocation(line: 80, column: 9, scope: !615, inlinedAt: !1895)
!1899 = !DILocation(line: 81, column: 1, scope: !615, inlinedAt: !1895)
!1900 = !DILocation(line: 169, column: 8, scope: !604, inlinedAt: !1891)
!1901 = !DILocation(line: 171, column: 26, scope: !604, inlinedAt: !1891)
!1902 = !DILocation(line: 110, column: 94, scope: !630, inlinedAt: !1903)
!1903 = distinct !DILocation(line: 171, column: 2, scope: !604, inlinedAt: !1891)
!1904 = !DILocation(line: 112, column: 9, scope: !630, inlinedAt: !1903)
!1905 = !DILocation(line: 177, column: 27, scope: !604, inlinedAt: !1891)
!1906 = !DILocation(line: 121, column: 95, scope: !639, inlinedAt: !1907)
!1907 = distinct !DILocation(line: 177, column: 2, scope: !604, inlinedAt: !1891)
!1908 = !DILocation(line: 123, column: 9, scope: !639, inlinedAt: !1907)
!1909 = !DILocation(line: 179, column: 2, scope: !604, inlinedAt: !1891)
!1910 = !DILocation(line: 853, column: 42, scope: !1873)
!1911 = !DILocation(line: 853, column: 77, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1873, file: !232, line: 853, column: 2)
!1913 = !DILocation(line: 853, column: 72, scope: !1912)
!1914 = !DILocation(line: 853, column: 2, scope: !1873)
!1915 = !DILocation(line: 853, column: 2, scope: !1912)
!1916 = !DILocation(line: 854, column: 7, scope: !1917)
!1917 = distinct !DILexicalBlock(scope: !1918, file: !232, line: 854, column: 7)
!1918 = distinct !DILexicalBlock(scope: !1912, file: !232, line: 853, column: 134)
!1919 = !DILocation(line: 854, column: 42, scope: !1917)
!1920 = !DILocation(line: 854, column: 23, scope: !1917)
!1921 = !DILocation(line: 854, column: 7, scope: !1918)
!1922 = !DILocation(line: 855, column: 20, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1917, file: !232, line: 854, column: 51)
!1924 = !DILocation(line: 856, column: 3, scope: !1923)
!1925 = !DILocation(line: 857, column: 2, scope: !1918)
!1926 = !DILocation(line: 853, column: 82, scope: !1912)
!1927 = !DILocation(line: 235, column: 84, scope: !662, inlinedAt: !1928)
!1928 = distinct !DILocation(line: 853, column: 82, scope: !1912)
!1929 = !DILocation(line: 236, column: 23, scope: !662, inlinedAt: !1928)
!1930 = !DILocation(line: 238, column: 9, scope: !662, inlinedAt: !1928)
!1931 = !DILocation(line: 261, column: 22, scope: !662, inlinedAt: !1928)
!1932 = !DILocation(line: 88, column: 80, scope: !673, inlinedAt: !1933)
!1933 = distinct !DILocation(line: 261, column: 2, scope: !662, inlinedAt: !1928)
!1934 = !DILocation(line: 91, column: 6, scope: !680, inlinedAt: !1933)
!1935 = !DILocation(line: 91, column: 10, scope: !680, inlinedAt: !1933)
!1936 = !DILocation(line: 91, column: 6, scope: !673, inlinedAt: !1933)
!1937 = !DILocation(line: 92, column: 3, scope: !684, inlinedAt: !1933)
!1938 = !DILocation(line: 94, column: 2, scope: !673, inlinedAt: !1933)
!1939 = !DILocation(line: 114, column: 1, scope: !673, inlinedAt: !1933)
!1940 = !DILocation(line: 853, column: 125, scope: !1912)
!1941 = !DILocation(line: 853, column: 129, scope: !1912)
!1942 = distinct !{!1942, !1914, !1943}
!1943 = !DILocation(line: 857, column: 2, scope: !1873)
!1944 = !DILocation(line: 858, column: 9, scope: !1864)
!1945 = !DILocation(line: 862, column: 1, scope: !1864)
!1946 = !DILocation(line: 858, column: 2, scope: !1864)
!1947 = distinct !DISubprogram(name: "z_swap_irqlock", scope: !1240, file: !1240, line: 205, type: !1948, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1950)
!1948 = !DISubroutineType(types: !1949)
!1949 = !{!192, !100}
!1950 = !{!1951, !1952}
!1951 = !DILocalVariable(name: "key", arg: 1, scope: !1947, file: !1240, line: 205, type: !100)
!1952 = !DILocalVariable(name: "ret", scope: !1947, file: !1240, line: 207, type: !192)
!1953 = !DILocation(line: 205, column: 47, scope: !1947)
!1954 = !DILocation(line: 207, column: 2, scope: !1947)
!1955 = !DILocation(line: 207, column: 6, scope: !1947)
!1956 = !DILocation(line: 209, column: 18, scope: !1947)
!1957 = !DILocation(line: 209, column: 8, scope: !1947)
!1958 = !DILocation(line: 209, column: 6, scope: !1947)
!1959 = !DILocation(line: 210, column: 9, scope: !1947)
!1960 = !DILocation(line: 211, column: 1, scope: !1947)
!1961 = !DILocation(line: 210, column: 2, scope: !1947)
!1962 = distinct !DISubprogram(name: "z_pend_curr", scope: !232, file: !232, line: 864, type: !1963, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1965)
!1963 = !DISubroutineType(types: !1964)
!1964 = !{!192, !607, !593, !137, !331}
!1965 = !{!1966, !1967, !1968, !1969}
!1966 = !DILocalVariable(name: "lock", arg: 1, scope: !1962, file: !232, line: 864, type: !607)
!1967 = !DILocalVariable(name: "key", arg: 2, scope: !1962, file: !232, line: 864, type: !593)
!1968 = !DILocalVariable(name: "wait_q", arg: 3, scope: !1962, file: !232, line: 865, type: !137)
!1969 = !DILocalVariable(name: "timeout", arg: 4, scope: !1962, file: !232, line: 865, type: !331)
!1970 = !DILocation(line: 864, column: 36, scope: !1962)
!1971 = !DILocation(line: 864, column: 59, scope: !1962)
!1972 = !DILocation(line: 865, column: 20, scope: !1962)
!1973 = !DILocation(line: 865, column: 40, scope: !1962)
!1974 = !DILocation(line: 868, column: 36, scope: !1962)
!1975 = !DILocation(line: 868, column: 18, scope: !1962)
!1976 = !DILocation(line: 160, column: 94, scope: !604, inlinedAt: !1977)
!1977 = distinct !DILocation(line: 880, column: 9, scope: !1962)
!1978 = !DILocation(line: 162, column: 9, scope: !604, inlinedAt: !1977)
!1979 = !DILocation(line: 163, column: 19, scope: !604, inlinedAt: !1977)
!1980 = !DILocation(line: 44, column: 2, scope: !615, inlinedAt: !1981)
!1981 = distinct !DILocation(line: 169, column: 10, scope: !604, inlinedAt: !1977)
!1982 = !DILocation(line: 44, column: 15, scope: !615, inlinedAt: !1981)
!1983 = !DILocation(line: 48, column: 2, scope: !615, inlinedAt: !1981)
!1984 = !DILocation(line: 80, column: 9, scope: !615, inlinedAt: !1981)
!1985 = !DILocation(line: 81, column: 1, scope: !615, inlinedAt: !1981)
!1986 = !DILocation(line: 169, column: 8, scope: !604, inlinedAt: !1977)
!1987 = !DILocation(line: 171, column: 26, scope: !604, inlinedAt: !1977)
!1988 = !DILocation(line: 110, column: 94, scope: !630, inlinedAt: !1989)
!1989 = distinct !DILocation(line: 171, column: 2, scope: !604, inlinedAt: !1977)
!1990 = !DILocation(line: 112, column: 9, scope: !630, inlinedAt: !1989)
!1991 = !DILocation(line: 177, column: 27, scope: !604, inlinedAt: !1977)
!1992 = !DILocation(line: 121, column: 95, scope: !639, inlinedAt: !1993)
!1993 = distinct !DILocation(line: 177, column: 2, scope: !604, inlinedAt: !1977)
!1994 = !DILocation(line: 123, column: 9, scope: !639, inlinedAt: !1993)
!1995 = !DILocation(line: 179, column: 2, scope: !604, inlinedAt: !1977)
!1996 = !DILocation(line: 880, column: 9, scope: !1962)
!1997 = !DILocation(line: 881, column: 30, scope: !1962)
!1998 = !DILocation(line: 881, column: 39, scope: !1962)
!1999 = !DILocation(line: 881, column: 2, scope: !1962)
!2000 = !DILocation(line: 882, column: 17, scope: !1962)
!2001 = !DILocation(line: 283, column: 85, scope: !1250, inlinedAt: !2002)
!2002 = distinct !DILocation(line: 882, column: 2, scope: !1962)
!2003 = !DILocation(line: 285, column: 9, scope: !1250, inlinedAt: !2002)
!2004 = !DILocation(line: 883, column: 9, scope: !1962)
!2005 = !DILocation(line: 217, column: 76, scope: !1239, inlinedAt: !2006)
!2006 = distinct !DILocation(line: 883, column: 9, scope: !1962)
!2007 = !DILocation(line: 217, column: 99, scope: !1239, inlinedAt: !2006)
!2008 = !DILocation(line: 219, column: 17, scope: !1239, inlinedAt: !2006)
!2009 = !DILocation(line: 283, column: 85, scope: !1250, inlinedAt: !2010)
!2010 = distinct !DILocation(line: 219, column: 2, scope: !1239, inlinedAt: !2006)
!2011 = !DILocation(line: 285, column: 9, scope: !1250, inlinedAt: !2010)
!2012 = !DILocation(line: 220, column: 28, scope: !1239, inlinedAt: !2006)
!2013 = !DILocation(line: 220, column: 9, scope: !1239, inlinedAt: !2006)
!2014 = !DILocation(line: 883, column: 2, scope: !1962)
!2015 = distinct !DISubprogram(name: "z_unpend1_no_timeout", scope: !232, file: !232, line: 886, type: !2016, scopeLine: 887, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2018)
!2016 = !DISubroutineType(types: !2017)
!2017 = !{!101, !137}
!2018 = !{!2019, !2020, !2021, !2023}
!2019 = !DILocalVariable(name: "wait_q", arg: 1, scope: !2015, file: !232, line: 886, type: !137)
!2020 = !DILocalVariable(name: "thread", scope: !2015, file: !232, line: 888, type: !101)
!2021 = !DILocalVariable(name: "__i", scope: !2022, file: !232, line: 890, type: !593)
!2022 = distinct !DILexicalBlock(scope: !2015, file: !232, line: 890, column: 2)
!2023 = !DILocalVariable(name: "__key", scope: !2022, file: !232, line: 890, type: !593)
!2024 = !DILocation(line: 886, column: 50, scope: !2015)
!2025 = !DILocation(line: 888, column: 2, scope: !2015)
!2026 = !DILocation(line: 888, column: 19, scope: !2015)
!2027 = !DILocation(line: 890, column: 7, scope: !2022)
!2028 = !DILocation(line: 890, column: 24, scope: !2022)
!2029 = !DILocation(line: 890, column: 34, scope: !2022)
!2030 = !DILocation(line: 160, column: 94, scope: !604, inlinedAt: !2031)
!2031 = distinct !DILocation(line: 890, column: 42, scope: !2022)
!2032 = !DILocation(line: 162, column: 9, scope: !604, inlinedAt: !2031)
!2033 = !DILocation(line: 163, column: 19, scope: !604, inlinedAt: !2031)
!2034 = !DILocation(line: 44, column: 2, scope: !615, inlinedAt: !2035)
!2035 = distinct !DILocation(line: 169, column: 10, scope: !604, inlinedAt: !2031)
!2036 = !DILocation(line: 44, column: 15, scope: !615, inlinedAt: !2035)
!2037 = !DILocation(line: 48, column: 2, scope: !615, inlinedAt: !2035)
!2038 = !DILocation(line: 80, column: 9, scope: !615, inlinedAt: !2035)
!2039 = !DILocation(line: 81, column: 1, scope: !615, inlinedAt: !2035)
!2040 = !DILocation(line: 169, column: 8, scope: !604, inlinedAt: !2031)
!2041 = !DILocation(line: 171, column: 26, scope: !604, inlinedAt: !2031)
!2042 = !DILocation(line: 110, column: 94, scope: !630, inlinedAt: !2043)
!2043 = distinct !DILocation(line: 171, column: 2, scope: !604, inlinedAt: !2031)
!2044 = !DILocation(line: 112, column: 9, scope: !630, inlinedAt: !2043)
!2045 = !DILocation(line: 177, column: 27, scope: !604, inlinedAt: !2031)
!2046 = !DILocation(line: 121, column: 95, scope: !639, inlinedAt: !2047)
!2047 = distinct !DILocation(line: 177, column: 2, scope: !604, inlinedAt: !2031)
!2048 = !DILocation(line: 123, column: 9, scope: !639, inlinedAt: !2047)
!2049 = !DILocation(line: 179, column: 2, scope: !604, inlinedAt: !2031)
!2050 = !DILocation(line: 890, column: 42, scope: !2022)
!2051 = !DILocation(line: 890, column: 77, scope: !2052)
!2052 = distinct !DILexicalBlock(scope: !2022, file: !232, line: 890, column: 2)
!2053 = !DILocation(line: 890, column: 72, scope: !2052)
!2054 = !DILocation(line: 890, column: 2, scope: !2022)
!2055 = !DILocation(line: 890, column: 2, scope: !2052)
!2056 = !DILocation(line: 891, column: 30, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !2052, file: !232, line: 890, column: 134)
!2058 = !DILocation(line: 891, column: 38, scope: !2057)
!2059 = !DILocation(line: 891, column: 12, scope: !2057)
!2060 = !DILocation(line: 891, column: 10, scope: !2057)
!2061 = !DILocation(line: 893, column: 7, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !2057, file: !232, line: 893, column: 7)
!2063 = !DILocation(line: 893, column: 14, scope: !2062)
!2064 = !DILocation(line: 893, column: 7, scope: !2057)
!2065 = !DILocation(line: 894, column: 29, scope: !2066)
!2066 = distinct !DILexicalBlock(scope: !2062, file: !232, line: 893, column: 20)
!2067 = !DILocation(line: 894, column: 4, scope: !2066)
!2068 = !DILocation(line: 895, column: 3, scope: !2066)
!2069 = !DILocation(line: 896, column: 2, scope: !2057)
!2070 = !DILocation(line: 890, column: 82, scope: !2052)
!2071 = !DILocation(line: 235, column: 84, scope: !662, inlinedAt: !2072)
!2072 = distinct !DILocation(line: 890, column: 82, scope: !2052)
!2073 = !DILocation(line: 236, column: 23, scope: !662, inlinedAt: !2072)
!2074 = !DILocation(line: 238, column: 9, scope: !662, inlinedAt: !2072)
!2075 = !DILocation(line: 261, column: 22, scope: !662, inlinedAt: !2072)
!2076 = !DILocation(line: 88, column: 80, scope: !673, inlinedAt: !2077)
!2077 = distinct !DILocation(line: 261, column: 2, scope: !662, inlinedAt: !2072)
!2078 = !DILocation(line: 91, column: 6, scope: !680, inlinedAt: !2077)
!2079 = !DILocation(line: 91, column: 10, scope: !680, inlinedAt: !2077)
!2080 = !DILocation(line: 91, column: 6, scope: !673, inlinedAt: !2077)
!2081 = !DILocation(line: 92, column: 3, scope: !684, inlinedAt: !2077)
!2082 = !DILocation(line: 94, column: 2, scope: !673, inlinedAt: !2077)
!2083 = !DILocation(line: 114, column: 1, scope: !673, inlinedAt: !2077)
!2084 = !DILocation(line: 890, column: 125, scope: !2052)
!2085 = !DILocation(line: 890, column: 129, scope: !2052)
!2086 = distinct !{!2086, !2054, !2087}
!2087 = !DILocation(line: 896, column: 2, scope: !2022)
!2088 = !DILocation(line: 898, column: 9, scope: !2015)
!2089 = !DILocation(line: 899, column: 1, scope: !2015)
!2090 = !DILocation(line: 898, column: 2, scope: !2015)
!2091 = distinct !DISubprogram(name: "z_priq_dumb_best", scope: !232, file: !232, line: 1170, type: !2092, scopeLine: 1171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2094)
!2092 = !DISubroutineType(types: !2093)
!2093 = !{!101, !870}
!2094 = !{!2095, !2096, !2097}
!2095 = !DILocalVariable(name: "pq", arg: 1, scope: !2091, file: !232, line: 1170, type: !870)
!2096 = !DILocalVariable(name: "thread", scope: !2091, file: !232, line: 1172, type: !101)
!2097 = !DILocalVariable(name: "n", scope: !2091, file: !232, line: 1173, type: !228)
!2098 = !DILocation(line: 1170, column: 48, scope: !2091)
!2099 = !DILocation(line: 1172, column: 2, scope: !2091)
!2100 = !DILocation(line: 1172, column: 19, scope: !2091)
!2101 = !DILocation(line: 1173, column: 2, scope: !2091)
!2102 = !DILocation(line: 1173, column: 15, scope: !2091)
!2103 = !DILocation(line: 1173, column: 39, scope: !2091)
!2104 = !DILocation(line: 1173, column: 19, scope: !2091)
!2105 = !DILocation(line: 1175, column: 6, scope: !2106)
!2106 = distinct !DILexicalBlock(scope: !2091, file: !232, line: 1175, column: 6)
!2107 = !DILocation(line: 1175, column: 8, scope: !2106)
!2108 = !DILocation(line: 1175, column: 6, scope: !2091)
!2109 = !DILocation(line: 1176, column: 48, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !2111, file: !232, line: 1176, column: 13)
!2111 = distinct !DILexicalBlock(scope: !2106, file: !232, line: 1175, column: 14)
!2112 = !DILocation(line: 1176, column: 52, scope: !2110)
!2113 = !DILocation(line: 1176, column: 13, scope: !2111)
!2114 = !DILocation(line: 1176, column: 111, scope: !2110)
!2115 = !DILocation(line: 1176, column: 10, scope: !2111)
!2116 = !DILocation(line: 1177, column: 2, scope: !2111)
!2117 = !DILocation(line: 1178, column: 9, scope: !2091)
!2118 = !DILocation(line: 1179, column: 1, scope: !2091)
!2119 = !DILocation(line: 1178, column: 2, scope: !2091)
!2120 = distinct !DISubprogram(name: "z_unpend_first_thread", scope: !232, file: !232, line: 901, type: !2016, scopeLine: 902, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2121)
!2121 = !{!2122, !2123, !2124, !2126}
!2122 = !DILocalVariable(name: "wait_q", arg: 1, scope: !2120, file: !232, line: 901, type: !137)
!2123 = !DILocalVariable(name: "thread", scope: !2120, file: !232, line: 903, type: !101)
!2124 = !DILocalVariable(name: "__i", scope: !2125, file: !232, line: 905, type: !593)
!2125 = distinct !DILexicalBlock(scope: !2120, file: !232, line: 905, column: 2)
!2126 = !DILocalVariable(name: "__key", scope: !2125, file: !232, line: 905, type: !593)
!2127 = !DILocation(line: 901, column: 51, scope: !2120)
!2128 = !DILocation(line: 903, column: 2, scope: !2120)
!2129 = !DILocation(line: 903, column: 19, scope: !2120)
!2130 = !DILocation(line: 905, column: 7, scope: !2125)
!2131 = !DILocation(line: 905, column: 24, scope: !2125)
!2132 = !DILocation(line: 905, column: 34, scope: !2125)
!2133 = !DILocation(line: 160, column: 94, scope: !604, inlinedAt: !2134)
!2134 = distinct !DILocation(line: 905, column: 42, scope: !2125)
!2135 = !DILocation(line: 162, column: 9, scope: !604, inlinedAt: !2134)
!2136 = !DILocation(line: 163, column: 19, scope: !604, inlinedAt: !2134)
!2137 = !DILocation(line: 44, column: 2, scope: !615, inlinedAt: !2138)
!2138 = distinct !DILocation(line: 169, column: 10, scope: !604, inlinedAt: !2134)
!2139 = !DILocation(line: 44, column: 15, scope: !615, inlinedAt: !2138)
!2140 = !DILocation(line: 48, column: 2, scope: !615, inlinedAt: !2138)
!2141 = !DILocation(line: 80, column: 9, scope: !615, inlinedAt: !2138)
!2142 = !DILocation(line: 81, column: 1, scope: !615, inlinedAt: !2138)
!2143 = !DILocation(line: 169, column: 8, scope: !604, inlinedAt: !2134)
!2144 = !DILocation(line: 171, column: 26, scope: !604, inlinedAt: !2134)
!2145 = !DILocation(line: 110, column: 94, scope: !630, inlinedAt: !2146)
!2146 = distinct !DILocation(line: 171, column: 2, scope: !604, inlinedAt: !2134)
!2147 = !DILocation(line: 112, column: 9, scope: !630, inlinedAt: !2146)
!2148 = !DILocation(line: 177, column: 27, scope: !604, inlinedAt: !2134)
!2149 = !DILocation(line: 121, column: 95, scope: !639, inlinedAt: !2150)
!2150 = distinct !DILocation(line: 177, column: 2, scope: !604, inlinedAt: !2134)
!2151 = !DILocation(line: 123, column: 9, scope: !639, inlinedAt: !2150)
!2152 = !DILocation(line: 179, column: 2, scope: !604, inlinedAt: !2134)
!2153 = !DILocation(line: 905, column: 42, scope: !2125)
!2154 = !DILocation(line: 905, column: 77, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !2125, file: !232, line: 905, column: 2)
!2156 = !DILocation(line: 905, column: 72, scope: !2155)
!2157 = !DILocation(line: 905, column: 2, scope: !2125)
!2158 = !DILocation(line: 905, column: 2, scope: !2155)
!2159 = !DILocation(line: 906, column: 30, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !2155, file: !232, line: 905, column: 134)
!2161 = !DILocation(line: 906, column: 38, scope: !2160)
!2162 = !DILocation(line: 906, column: 12, scope: !2160)
!2163 = !DILocation(line: 906, column: 10, scope: !2160)
!2164 = !DILocation(line: 908, column: 7, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !2160, file: !232, line: 908, column: 7)
!2166 = !DILocation(line: 908, column: 14, scope: !2165)
!2167 = !DILocation(line: 908, column: 7, scope: !2160)
!2168 = !DILocation(line: 909, column: 29, scope: !2169)
!2169 = distinct !DILexicalBlock(scope: !2165, file: !232, line: 908, column: 20)
!2170 = !DILocation(line: 909, column: 4, scope: !2169)
!2171 = !DILocation(line: 910, column: 33, scope: !2169)
!2172 = !DILocation(line: 910, column: 10, scope: !2169)
!2173 = !DILocation(line: 911, column: 3, scope: !2169)
!2174 = !DILocation(line: 912, column: 2, scope: !2160)
!2175 = !DILocation(line: 905, column: 82, scope: !2155)
!2176 = !DILocation(line: 235, column: 84, scope: !662, inlinedAt: !2177)
!2177 = distinct !DILocation(line: 905, column: 82, scope: !2155)
!2178 = !DILocation(line: 236, column: 23, scope: !662, inlinedAt: !2177)
!2179 = !DILocation(line: 238, column: 9, scope: !662, inlinedAt: !2177)
!2180 = !DILocation(line: 261, column: 22, scope: !662, inlinedAt: !2177)
!2181 = !DILocation(line: 88, column: 80, scope: !673, inlinedAt: !2182)
!2182 = distinct !DILocation(line: 261, column: 2, scope: !662, inlinedAt: !2177)
!2183 = !DILocation(line: 91, column: 6, scope: !680, inlinedAt: !2182)
!2184 = !DILocation(line: 91, column: 10, scope: !680, inlinedAt: !2182)
!2185 = !DILocation(line: 91, column: 6, scope: !673, inlinedAt: !2182)
!2186 = !DILocation(line: 92, column: 3, scope: !684, inlinedAt: !2182)
!2187 = !DILocation(line: 94, column: 2, scope: !673, inlinedAt: !2182)
!2188 = !DILocation(line: 114, column: 1, scope: !673, inlinedAt: !2182)
!2189 = !DILocation(line: 905, column: 125, scope: !2155)
!2190 = !DILocation(line: 905, column: 129, scope: !2155)
!2191 = distinct !{!2191, !2157, !2192}
!2192 = !DILocation(line: 912, column: 2, scope: !2125)
!2193 = !DILocation(line: 914, column: 9, scope: !2120)
!2194 = !DILocation(line: 915, column: 1, scope: !2120)
!2195 = !DILocation(line: 914, column: 2, scope: !2120)
!2196 = distinct !DISubprogram(name: "z_unpend_thread", scope: !232, file: !232, line: 917, type: !483, scopeLine: 918, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2197)
!2197 = !{!2198}
!2198 = !DILocalVariable(name: "thread", arg: 1, scope: !2196, file: !232, line: 917, type: !101)
!2199 = !DILocation(line: 917, column: 39, scope: !2196)
!2200 = !DILocation(line: 919, column: 29, scope: !2196)
!2201 = !DILocation(line: 789, column: 88, scope: !1666, inlinedAt: !2202)
!2202 = distinct !DILocation(line: 919, column: 2, scope: !2196)
!2203 = !DILocation(line: 791, column: 7, scope: !1670, inlinedAt: !2202)
!2204 = !DILocation(line: 791, column: 24, scope: !1670, inlinedAt: !2202)
!2205 = !DILocation(line: 791, column: 34, scope: !1670, inlinedAt: !2202)
!2206 = !DILocation(line: 160, column: 94, scope: !604, inlinedAt: !2207)
!2207 = distinct !DILocation(line: 791, column: 42, scope: !1670, inlinedAt: !2202)
!2208 = !DILocation(line: 162, column: 9, scope: !604, inlinedAt: !2207)
!2209 = !DILocation(line: 163, column: 19, scope: !604, inlinedAt: !2207)
!2210 = !DILocation(line: 44, column: 2, scope: !615, inlinedAt: !2211)
!2211 = distinct !DILocation(line: 169, column: 10, scope: !604, inlinedAt: !2207)
!2212 = !DILocation(line: 44, column: 15, scope: !615, inlinedAt: !2211)
!2213 = !DILocation(line: 48, column: 2, scope: !615, inlinedAt: !2211)
!2214 = !DILocation(line: 80, column: 9, scope: !615, inlinedAt: !2211)
!2215 = !DILocation(line: 81, column: 1, scope: !615, inlinedAt: !2211)
!2216 = !DILocation(line: 169, column: 8, scope: !604, inlinedAt: !2207)
!2217 = !DILocation(line: 171, column: 26, scope: !604, inlinedAt: !2207)
!2218 = !DILocation(line: 110, column: 94, scope: !630, inlinedAt: !2219)
!2219 = distinct !DILocation(line: 171, column: 2, scope: !604, inlinedAt: !2207)
!2220 = !DILocation(line: 112, column: 9, scope: !630, inlinedAt: !2219)
!2221 = !DILocation(line: 177, column: 27, scope: !604, inlinedAt: !2207)
!2222 = !DILocation(line: 121, column: 95, scope: !639, inlinedAt: !2223)
!2223 = distinct !DILocation(line: 177, column: 2, scope: !604, inlinedAt: !2207)
!2224 = !DILocation(line: 123, column: 9, scope: !639, inlinedAt: !2223)
!2225 = !DILocation(line: 179, column: 2, scope: !604, inlinedAt: !2207)
!2226 = !DILocation(line: 791, column: 42, scope: !1670, inlinedAt: !2202)
!2227 = !DILocation(line: 791, column: 77, scope: !1698, inlinedAt: !2202)
!2228 = !DILocation(line: 791, column: 72, scope: !1698, inlinedAt: !2202)
!2229 = !DILocation(line: 791, column: 2, scope: !1670, inlinedAt: !2202)
!2230 = !DILocation(line: 792, column: 7, scope: !1703, inlinedAt: !2202)
!2231 = !DILocation(line: 792, column: 20, scope: !1703, inlinedAt: !2202)
!2232 = !DILocation(line: 792, column: 30, scope: !1703, inlinedAt: !2202)
!2233 = !DILocation(line: 792, column: 7, scope: !1704, inlinedAt: !2202)
!2234 = !DILocation(line: 793, column: 29, scope: !1710, inlinedAt: !2202)
!2235 = !DILocation(line: 793, column: 4, scope: !1710, inlinedAt: !2202)
!2236 = !DILocation(line: 794, column: 3, scope: !1710, inlinedAt: !2202)
!2237 = !DILocation(line: 791, column: 82, scope: !1698, inlinedAt: !2202)
!2238 = !DILocation(line: 235, column: 84, scope: !662, inlinedAt: !2239)
!2239 = distinct !DILocation(line: 791, column: 82, scope: !1698, inlinedAt: !2202)
!2240 = !DILocation(line: 236, column: 23, scope: !662, inlinedAt: !2239)
!2241 = !DILocation(line: 238, column: 9, scope: !662, inlinedAt: !2239)
!2242 = !DILocation(line: 261, column: 22, scope: !662, inlinedAt: !2239)
!2243 = !DILocation(line: 88, column: 80, scope: !673, inlinedAt: !2244)
!2244 = distinct !DILocation(line: 261, column: 2, scope: !662, inlinedAt: !2239)
!2245 = !DILocation(line: 91, column: 6, scope: !680, inlinedAt: !2244)
!2246 = !DILocation(line: 91, column: 10, scope: !680, inlinedAt: !2244)
!2247 = !DILocation(line: 91, column: 6, scope: !673, inlinedAt: !2244)
!2248 = !DILocation(line: 92, column: 3, scope: !684, inlinedAt: !2244)
!2249 = !DILocation(line: 94, column: 2, scope: !673, inlinedAt: !2244)
!2250 = !DILocation(line: 114, column: 1, scope: !673, inlinedAt: !2244)
!2251 = !DILocation(line: 791, column: 129, scope: !1698, inlinedAt: !2202)
!2252 = !DILocation(line: 791, column: 2, scope: !1698, inlinedAt: !2202)
!2253 = distinct !{!2253, !2229, !2254}
!2254 = !DILocation(line: 795, column: 2, scope: !1670, inlinedAt: !2202)
!2255 = !DILocation(line: 920, column: 31, scope: !2196)
!2256 = !DILocation(line: 920, column: 8, scope: !2196)
!2257 = !DILocation(line: 921, column: 1, scope: !2196)
!2258 = distinct !DISubprogram(name: "z_set_prio", scope: !232, file: !232, line: 926, type: !1439, scopeLine: 927, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2259)
!2259 = !{!2260, !2261, !2262, !2263, !2265}
!2260 = !DILocalVariable(name: "thread", arg: 1, scope: !2258, file: !232, line: 926, type: !101)
!2261 = !DILocalVariable(name: "prio", arg: 2, scope: !2258, file: !232, line: 926, type: !192)
!2262 = !DILocalVariable(name: "need_sched", scope: !2258, file: !232, line: 928, type: !236)
!2263 = !DILocalVariable(name: "__i", scope: !2264, file: !232, line: 930, type: !593)
!2264 = distinct !DILexicalBlock(scope: !2258, file: !232, line: 930, column: 2)
!2265 = !DILocalVariable(name: "__key", scope: !2264, file: !232, line: 930, type: !593)
!2266 = !DILocation(line: 926, column: 35, scope: !2258)
!2267 = !DILocation(line: 926, column: 47, scope: !2258)
!2268 = !DILocation(line: 928, column: 2, scope: !2258)
!2269 = !DILocation(line: 928, column: 8, scope: !2258)
!2270 = !DILocation(line: 930, column: 7, scope: !2264)
!2271 = !DILocation(line: 930, column: 24, scope: !2264)
!2272 = !DILocation(line: 930, column: 34, scope: !2264)
!2273 = !DILocation(line: 160, column: 94, scope: !604, inlinedAt: !2274)
!2274 = distinct !DILocation(line: 930, column: 42, scope: !2264)
!2275 = !DILocation(line: 162, column: 9, scope: !604, inlinedAt: !2274)
!2276 = !DILocation(line: 163, column: 19, scope: !604, inlinedAt: !2274)
!2277 = !DILocation(line: 44, column: 2, scope: !615, inlinedAt: !2278)
!2278 = distinct !DILocation(line: 169, column: 10, scope: !604, inlinedAt: !2274)
!2279 = !DILocation(line: 44, column: 15, scope: !615, inlinedAt: !2278)
!2280 = !DILocation(line: 48, column: 2, scope: !615, inlinedAt: !2278)
!2281 = !DILocation(line: 80, column: 9, scope: !615, inlinedAt: !2278)
!2282 = !DILocation(line: 81, column: 1, scope: !615, inlinedAt: !2278)
!2283 = !DILocation(line: 169, column: 8, scope: !604, inlinedAt: !2274)
!2284 = !DILocation(line: 171, column: 26, scope: !604, inlinedAt: !2274)
!2285 = !DILocation(line: 110, column: 94, scope: !630, inlinedAt: !2286)
!2286 = distinct !DILocation(line: 171, column: 2, scope: !604, inlinedAt: !2274)
!2287 = !DILocation(line: 112, column: 9, scope: !630, inlinedAt: !2286)
!2288 = !DILocation(line: 177, column: 27, scope: !604, inlinedAt: !2274)
!2289 = !DILocation(line: 121, column: 95, scope: !639, inlinedAt: !2290)
!2290 = distinct !DILocation(line: 177, column: 2, scope: !604, inlinedAt: !2274)
!2291 = !DILocation(line: 123, column: 9, scope: !639, inlinedAt: !2290)
!2292 = !DILocation(line: 179, column: 2, scope: !604, inlinedAt: !2274)
!2293 = !DILocation(line: 930, column: 42, scope: !2264)
!2294 = !DILocation(line: 930, column: 77, scope: !2295)
!2295 = distinct !DILexicalBlock(scope: !2264, file: !232, line: 930, column: 2)
!2296 = !DILocation(line: 930, column: 72, scope: !2295)
!2297 = !DILocation(line: 930, column: 2, scope: !2264)
!2298 = !DILocation(line: 930, column: 2, scope: !2295)
!2299 = !DILocation(line: 931, column: 34, scope: !2300)
!2300 = distinct !DILexicalBlock(scope: !2295, file: !232, line: 930, column: 134)
!2301 = !DILocation(line: 931, column: 16, scope: !2300)
!2302 = !DILocation(line: 931, column: 14, scope: !2300)
!2303 = !DILocation(line: 933, column: 7, scope: !2304)
!2304 = distinct !DILexicalBlock(scope: !2300, file: !232, line: 933, column: 7)
!2305 = !DILocation(line: 933, column: 7, scope: !2300)
!2306 = !DILocation(line: 936, column: 20, scope: !2307)
!2307 = distinct !DILexicalBlock(scope: !2308, file: !232, line: 935, column: 42)
!2308 = distinct !DILexicalBlock(scope: !2309, file: !232, line: 935, column: 8)
!2309 = distinct !DILexicalBlock(scope: !2304, file: !232, line: 933, column: 19)
!2310 = !DILocation(line: 274, column: 83, scope: !810, inlinedAt: !2311)
!2311 = distinct !DILocation(line: 936, column: 5, scope: !2307)
!2312 = !DILocation(line: 276, column: 2, scope: !810, inlinedAt: !2311)
!2313 = !DILocation(line: 276, column: 15, scope: !810, inlinedAt: !2311)
!2314 = !DILocation(line: 276, column: 28, scope: !810, inlinedAt: !2311)
!2315 = !DILocation(line: 277, column: 26, scope: !818, inlinedAt: !2311)
!2316 = !DILocation(line: 277, column: 6, scope: !818, inlinedAt: !2311)
!2317 = !DILocation(line: 277, column: 6, scope: !810, inlinedAt: !2311)
!2318 = !DILocation(line: 278, column: 15, scope: !822, inlinedAt: !2311)
!2319 = !DILocation(line: 242, column: 80, scope: !824, inlinedAt: !2320)
!2320 = distinct !DILocation(line: 278, column: 3, scope: !822, inlinedAt: !2311)
!2321 = !DILocation(line: 244, column: 33, scope: !824, inlinedAt: !2320)
!2322 = !DILocation(line: 208, column: 81, scope: !830, inlinedAt: !2323)
!2323 = distinct !DILocation(line: 244, column: 21, scope: !824, inlinedAt: !2320)
!2324 = !DILocation(line: 223, column: 9, scope: !830, inlinedAt: !2323)
!2325 = !DILocation(line: 244, column: 42, scope: !824, inlinedAt: !2320)
!2326 = !DILocation(line: 244, column: 2, scope: !824, inlinedAt: !2320)
!2327 = !DILocation(line: 279, column: 2, scope: !822, inlinedAt: !2311)
!2328 = !DILocation(line: 937, column: 25, scope: !2307)
!2329 = !DILocation(line: 937, column: 5, scope: !2307)
!2330 = !DILocation(line: 937, column: 13, scope: !2307)
!2331 = !DILocation(line: 937, column: 18, scope: !2307)
!2332 = !DILocation(line: 937, column: 23, scope: !2307)
!2333 = !DILocation(line: 938, column: 18, scope: !2307)
!2334 = !DILocation(line: 260, column: 81, scope: !843, inlinedAt: !2335)
!2335 = distinct !DILocation(line: 938, column: 5, scope: !2307)
!2336 = !DILocation(line: 262, column: 2, scope: !843, inlinedAt: !2335)
!2337 = !DILocation(line: 262, column: 15, scope: !843, inlinedAt: !2335)
!2338 = !DILocation(line: 262, column: 28, scope: !843, inlinedAt: !2335)
!2339 = !DILocation(line: 263, column: 26, scope: !851, inlinedAt: !2335)
!2340 = !DILocation(line: 263, column: 6, scope: !851, inlinedAt: !2335)
!2341 = !DILocation(line: 263, column: 6, scope: !843, inlinedAt: !2335)
!2342 = !DILocation(line: 264, column: 12, scope: !855, inlinedAt: !2335)
!2343 = !DILocation(line: 237, column: 77, scope: !857, inlinedAt: !2344)
!2344 = distinct !DILocation(line: 264, column: 3, scope: !855, inlinedAt: !2335)
!2345 = !DILocation(line: 239, column: 30, scope: !857, inlinedAt: !2344)
!2346 = !DILocation(line: 208, column: 81, scope: !830, inlinedAt: !2347)
!2347 = distinct !DILocation(line: 239, column: 18, scope: !857, inlinedAt: !2344)
!2348 = !DILocation(line: 223, column: 9, scope: !830, inlinedAt: !2347)
!2349 = !DILocation(line: 239, column: 39, scope: !857, inlinedAt: !2344)
!2350 = !DILocation(line: 189, column: 80, scope: !867, inlinedAt: !2351)
!2351 = distinct !DILocation(line: 239, column: 2, scope: !857, inlinedAt: !2344)
!2352 = !DILocation(line: 190, column: 25, scope: !867, inlinedAt: !2351)
!2353 = !DILocation(line: 192, column: 2, scope: !867, inlinedAt: !2351)
!2354 = !DILocation(line: 192, column: 19, scope: !867, inlinedAt: !2351)
!2355 = !DILocation(line: 196, column: 33, scope: !880, inlinedAt: !2351)
!2356 = !DILocation(line: 196, column: 13, scope: !880, inlinedAt: !2351)
!2357 = !DILocation(line: 196, column: 37, scope: !880, inlinedAt: !2351)
!2358 = !DILocation(line: 196, column: 12, scope: !880, inlinedAt: !2351)
!2359 = !DILocation(line: 196, column: 100, scope: !885, inlinedAt: !2351)
!2360 = !DILocation(line: 196, column: 80, scope: !885, inlinedAt: !2351)
!2361 = !DILocation(line: 196, column: 46, scope: !880, inlinedAt: !2351)
!2362 = !DILocation(line: 196, column: 164, scope: !885, inlinedAt: !2351)
!2363 = !DILocation(line: 196, column: 9, scope: !880, inlinedAt: !2351)
!2364 = !DILocation(line: 196, column: 7, scope: !880, inlinedAt: !2351)
!2365 = !DILocation(line: 196, column: 173, scope: !892, inlinedAt: !2351)
!2366 = !DILocation(line: 196, column: 175, scope: !892, inlinedAt: !2351)
!2367 = !DILocation(line: 196, column: 2, scope: !880, inlinedAt: !2351)
!2368 = !DILocation(line: 197, column: 24, scope: !896, inlinedAt: !2351)
!2369 = !DILocation(line: 197, column: 32, scope: !896, inlinedAt: !2351)
!2370 = !DILocation(line: 197, column: 7, scope: !896, inlinedAt: !2351)
!2371 = !DILocation(line: 197, column: 35, scope: !896, inlinedAt: !2351)
!2372 = !DILocation(line: 197, column: 7, scope: !897, inlinedAt: !2351)
!2373 = !DILocation(line: 198, column: 22, scope: !903, inlinedAt: !2351)
!2374 = !DILocation(line: 199, column: 8, scope: !903, inlinedAt: !2351)
!2375 = !DILocation(line: 198, column: 4, scope: !903, inlinedAt: !2351)
!2376 = !DILocation(line: 200, column: 4, scope: !903, inlinedAt: !2351)
!2377 = !DILocation(line: 196, column: 187, scope: !892, inlinedAt: !2351)
!2378 = !DILocation(line: 196, column: 189, scope: !892, inlinedAt: !2351)
!2379 = !DILocation(line: 196, column: 186, scope: !892, inlinedAt: !2351)
!2380 = !DILocation(line: 196, column: 219, scope: !892, inlinedAt: !2351)
!2381 = !DILocation(line: 196, column: 225, scope: !892, inlinedAt: !2351)
!2382 = !DILocation(line: 196, column: 199, scope: !892, inlinedAt: !2351)
!2383 = !DILocation(line: 196, column: 247, scope: !892, inlinedAt: !2351)
!2384 = !DILocation(line: 196, column: 198, scope: !892, inlinedAt: !2351)
!2385 = !DILocation(line: 196, column: 310, scope: !916, inlinedAt: !2351)
!2386 = !DILocation(line: 196, column: 316, scope: !916, inlinedAt: !2351)
!2387 = !DILocation(line: 196, column: 290, scope: !916, inlinedAt: !2351)
!2388 = !DILocation(line: 196, column: 256, scope: !892, inlinedAt: !2351)
!2389 = !DILocation(line: 196, column: 398, scope: !916, inlinedAt: !2351)
!2390 = !DILocation(line: 196, column: 183, scope: !892, inlinedAt: !2351)
!2391 = !DILocation(line: 196, column: 2, scope: !892, inlinedAt: !2351)
!2392 = distinct !{!2392, !2367, !2393}
!2393 = !DILocation(line: 202, column: 2, scope: !880, inlinedAt: !2351)
!2394 = !DILocation(line: 204, column: 19, scope: !867, inlinedAt: !2351)
!2395 = !DILocation(line: 204, column: 24, scope: !867, inlinedAt: !2351)
!2396 = !DILocation(line: 204, column: 2, scope: !867, inlinedAt: !2351)
!2397 = !DILocation(line: 205, column: 1, scope: !867, inlinedAt: !2351)
!2398 = !DILocation(line: 265, column: 2, scope: !855, inlinedAt: !2335)
!2399 = !DILocation(line: 942, column: 4, scope: !2309)
!2400 = !DILocation(line: 943, column: 3, scope: !2309)
!2401 = !DILocation(line: 944, column: 24, scope: !2402)
!2402 = distinct !DILexicalBlock(scope: !2304, file: !232, line: 943, column: 10)
!2403 = !DILocation(line: 944, column: 4, scope: !2402)
!2404 = !DILocation(line: 944, column: 12, scope: !2402)
!2405 = !DILocation(line: 944, column: 17, scope: !2402)
!2406 = !DILocation(line: 944, column: 22, scope: !2402)
!2407 = !DILocation(line: 946, column: 2, scope: !2300)
!2408 = !DILocation(line: 930, column: 82, scope: !2295)
!2409 = !DILocation(line: 235, column: 84, scope: !662, inlinedAt: !2410)
!2410 = distinct !DILocation(line: 930, column: 82, scope: !2295)
!2411 = !DILocation(line: 236, column: 23, scope: !662, inlinedAt: !2410)
!2412 = !DILocation(line: 238, column: 9, scope: !662, inlinedAt: !2410)
!2413 = !DILocation(line: 261, column: 22, scope: !662, inlinedAt: !2410)
!2414 = !DILocation(line: 88, column: 80, scope: !673, inlinedAt: !2415)
!2415 = distinct !DILocation(line: 261, column: 2, scope: !662, inlinedAt: !2410)
!2416 = !DILocation(line: 91, column: 6, scope: !680, inlinedAt: !2415)
!2417 = !DILocation(line: 91, column: 10, scope: !680, inlinedAt: !2415)
!2418 = !DILocation(line: 91, column: 6, scope: !673, inlinedAt: !2415)
!2419 = !DILocation(line: 92, column: 3, scope: !684, inlinedAt: !2415)
!2420 = !DILocation(line: 94, column: 2, scope: !673, inlinedAt: !2415)
!2421 = !DILocation(line: 114, column: 1, scope: !673, inlinedAt: !2415)
!2422 = !DILocation(line: 930, column: 125, scope: !2295)
!2423 = !DILocation(line: 930, column: 129, scope: !2295)
!2424 = distinct !{!2424, !2297, !2425}
!2425 = !DILocation(line: 946, column: 2, scope: !2264)
!2426 = !DILocation(line: 948, column: 2, scope: !2258)
!2427 = !DILocation(line: 948, column: 7, scope: !2428)
!2428 = distinct !DILexicalBlock(scope: !2258, file: !232, line: 948, column: 5)
!2429 = !DILocation(line: 950, column: 9, scope: !2258)
!2430 = !DILocation(line: 951, column: 1, scope: !2258)
!2431 = !DILocation(line: 950, column: 2, scope: !2258)
!2432 = distinct !DISubprogram(name: "z_is_thread_ready", scope: !784, file: !784, line: 122, type: !519, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2433)
!2433 = !{!2434}
!2434 = !DILocalVariable(name: "thread", arg: 1, scope: !2432, file: !784, line: 122, type: !101)
!2435 = !DILocation(line: 122, column: 56, scope: !2432)
!2436 = !DILocation(line: 124, column: 47, scope: !2432)
!2437 = !DILocation(line: 124, column: 12, scope: !2432)
!2438 = !DILocation(line: 124, column: 11, scope: !2432)
!2439 = !DILocation(line: 124, column: 56, scope: !2432)
!2440 = !DILocation(line: 124, column: 62, scope: !2432)
!2441 = !DILocation(line: 125, column: 31, scope: !2432)
!2442 = !DILocation(line: 125, column: 4, scope: !2432)
!2443 = !DILocation(line: 124, column: 9, scope: !2432)
!2444 = !DILocation(line: 124, column: 2, scope: !2432)
!2445 = distinct !DISubprogram(name: "z_thread_priority_set", scope: !232, file: !232, line: 953, type: !2446, scopeLine: 954, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2448)
!2446 = !DISubroutineType(types: !2447)
!2447 = !{null, !101, !192}
!2448 = !{!2449, !2450, !2451}
!2449 = !DILocalVariable(name: "thread", arg: 1, scope: !2445, file: !232, line: 953, type: !101)
!2450 = !DILocalVariable(name: "prio", arg: 2, scope: !2445, file: !232, line: 953, type: !192)
!2451 = !DILocalVariable(name: "need_sched", scope: !2445, file: !232, line: 955, type: !236)
!2452 = !DILocation(line: 953, column: 45, scope: !2445)
!2453 = !DILocation(line: 953, column: 57, scope: !2445)
!2454 = !DILocation(line: 955, column: 2, scope: !2445)
!2455 = !DILocation(line: 955, column: 8, scope: !2445)
!2456 = !DILocation(line: 955, column: 32, scope: !2445)
!2457 = !DILocation(line: 955, column: 40, scope: !2445)
!2458 = !DILocation(line: 955, column: 21, scope: !2445)
!2459 = !DILocation(line: 957, column: 2, scope: !2445)
!2460 = !DILocation(line: 959, column: 6, scope: !2461)
!2461 = distinct !DILexicalBlock(scope: !2445, file: !232, line: 959, column: 6)
!2462 = !DILocation(line: 959, column: 17, scope: !2461)
!2463 = !DILocation(line: 959, column: 36, scope: !2461)
!2464 = !DILocation(line: 959, column: 45, scope: !2461)
!2465 = !DILocation(line: 959, column: 50, scope: !2461)
!2466 = !DILocation(line: 959, column: 20, scope: !2461)
!2467 = !DILocation(line: 959, column: 63, scope: !2461)
!2468 = !DILocation(line: 959, column: 6, scope: !2445)
!2469 = !DILocation(line: 960, column: 3, scope: !2470)
!2470 = distinct !DILexicalBlock(scope: !2461, file: !232, line: 959, column: 70)
!2471 = !DILocation(line: 961, column: 2, scope: !2470)
!2472 = !DILocation(line: 962, column: 1, scope: !2445)
!2473 = distinct !DISubprogram(name: "flag_ipi", scope: !232, file: !232, line: 415, type: !694, scopeLine: 416, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !213)
!2474 = !DILocation(line: 422, column: 1, scope: !2473)
!2475 = distinct !DISubprogram(name: "resched", scope: !232, file: !232, line: 964, type: !2476, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2478)
!2476 = !DISubroutineType(types: !2477)
!2477 = !{!236, !98}
!2478 = !{!2479}
!2479 = !DILocalVariable(name: "key", arg: 1, scope: !2475, file: !232, line: 964, type: !98)
!2480 = !DILocation(line: 964, column: 38, scope: !2475)
!2481 = !DILocation(line: 970, column: 27, scope: !2475)
!2482 = !DILocalVariable(name: "key", arg: 1, scope: !2483, file: !616, line: 116, type: !100)
!2483 = distinct !DISubprogram(name: "arch_irq_unlocked", scope: !616, file: !616, line: 116, type: !2484, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2486)
!2484 = !DISubroutineType(types: !2485)
!2485 = !{!236, !100}
!2486 = !{!2482}
!2487 = !DILocation(line: 116, column: 83, scope: !2483, inlinedAt: !2488)
!2488 = distinct !DILocation(line: 970, column: 9, scope: !2475)
!2489 = !DILocation(line: 119, column: 9, scope: !2483, inlinedAt: !2488)
!2490 = !DILocation(line: 119, column: 13, scope: !2483, inlinedAt: !2488)
!2491 = !DILocation(line: 970, column: 32, scope: !2475)
!2492 = !DILocation(line: 820, column: 3, scope: !2493, inlinedAt: !2499)
!2493 = distinct !DISubprogram(name: "__get_IPSR", scope: !2494, file: !2494, line: 818, type: !2495, scopeLine: 819, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2497)
!2494 = !DIFile(filename: "modules/hal/cmsis/CMSIS/Core/Include/cmsis_armclang.h", directory: "/home/sri/zephyrproject")
!2495 = !DISubroutineType(types: !2496)
!2496 = !{!98}
!2497 = !{!2498}
!2498 = !DILocalVariable(name: "result", scope: !2493, file: !2494, line: 820, type: !98)
!2499 = distinct !DILocation(line: 48, column: 10, scope: !2500, inlinedAt: !2504)
!2500 = distinct !DISubprogram(name: "arch_is_in_isr", scope: !2501, file: !2501, line: 46, type: !2502, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !213)
!2501 = !DIFile(filename: "arch/arm/include/cortex_m/exc.h", directory: "/home/sri/zephyrproject/zephyr")
!2502 = !DISubroutineType(types: !2503)
!2503 = !{!236}
!2504 = distinct !DILocation(line: 970, column: 36, scope: !2475)
!2505 = !DILocation(line: 820, column: 12, scope: !2493, inlinedAt: !2499)
!2506 = !DILocation(line: 822, column: 3, scope: !2493, inlinedAt: !2499)
!2507 = !{i64 168201}
!2508 = !DILocation(line: 823, column: 10, scope: !2493, inlinedAt: !2499)
!2509 = !DILocation(line: 824, column: 1, scope: !2493, inlinedAt: !2499)
!2510 = !DILocation(line: 48, column: 9, scope: !2500, inlinedAt: !2504)
!2511 = !DILocation(line: 970, column: 35, scope: !2475)
!2512 = !DILocation(line: 0, scope: !2475)
!2513 = !DILocation(line: 970, column: 2, scope: !2475)
!2514 = distinct !DISubprogram(name: "need_swap", scope: !232, file: !232, line: 977, type: !2502, scopeLine: 978, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2515)
!2515 = !{!2516}
!2516 = !DILocalVariable(name: "new_thread", scope: !2514, file: !232, line: 983, type: !101)
!2517 = !DILocation(line: 983, column: 2, scope: !2514)
!2518 = !DILocation(line: 983, column: 19, scope: !2514)
!2519 = !DILocation(line: 986, column: 31, scope: !2514)
!2520 = !DILocation(line: 986, column: 13, scope: !2514)
!2521 = !DILocation(line: 987, column: 9, scope: !2514)
!2522 = !DILocation(line: 987, column: 39, scope: !2514)
!2523 = !DILocation(line: 987, column: 20, scope: !2514)
!2524 = !DILocation(line: 989, column: 1, scope: !2514)
!2525 = !DILocation(line: 987, column: 2, scope: !2514)
!2526 = distinct !DISubprogram(name: "signal_pending_ipi", scope: !232, file: !232, line: 282, type: !694, scopeLine: 283, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !213)
!2527 = !DILocation(line: 299, column: 1, scope: !2526)
!2528 = distinct !DISubprogram(name: "z_reschedule_irqlock", scope: !232, file: !232, line: 1001, type: !2529, scopeLine: 1002, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2531)
!2529 = !DISubroutineType(types: !2530)
!2530 = !{null, !98}
!2531 = !{!2532}
!2532 = !DILocalVariable(name: "key", arg: 1, scope: !2528, file: !232, line: 1001, type: !98)
!2533 = !DILocation(line: 1001, column: 36, scope: !2528)
!2534 = !DILocation(line: 1003, column: 14, scope: !2535)
!2535 = distinct !DILexicalBlock(scope: !2528, file: !232, line: 1003, column: 6)
!2536 = !DILocation(line: 1003, column: 6, scope: !2535)
!2537 = !DILocation(line: 1003, column: 6, scope: !2528)
!2538 = !DILocation(line: 1004, column: 18, scope: !2539)
!2539 = distinct !DILexicalBlock(scope: !2535, file: !232, line: 1003, column: 20)
!2540 = !DILocation(line: 1004, column: 3, scope: !2539)
!2541 = !DILocation(line: 1005, column: 2, scope: !2539)
!2542 = !DILocation(line: 1006, column: 19, scope: !2543)
!2543 = distinct !DILexicalBlock(scope: !2535, file: !232, line: 1005, column: 9)
!2544 = !DILocation(line: 88, column: 80, scope: !673, inlinedAt: !2545)
!2545 = distinct !DILocation(line: 1006, column: 3, scope: !2543)
!2546 = !DILocation(line: 91, column: 6, scope: !680, inlinedAt: !2545)
!2547 = !DILocation(line: 91, column: 10, scope: !680, inlinedAt: !2545)
!2548 = !DILocation(line: 91, column: 6, scope: !673, inlinedAt: !2545)
!2549 = !DILocation(line: 92, column: 3, scope: !684, inlinedAt: !2545)
!2550 = !DILocation(line: 94, column: 2, scope: !673, inlinedAt: !2545)
!2551 = !DILocation(line: 114, column: 1, scope: !673, inlinedAt: !2545)
!2552 = !DILocation(line: 1007, column: 3, scope: !2543)
!2553 = !DILocation(line: 1009, column: 1, scope: !2528)
!2554 = distinct !DISubprogram(name: "k_sched_lock", scope: !232, file: !232, line: 1011, type: !694, scopeLine: 1012, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2555)
!2555 = !{!2556, !2558}
!2556 = !DILocalVariable(name: "__i", scope: !2557, file: !232, line: 1013, type: !593)
!2557 = distinct !DILexicalBlock(scope: !2554, file: !232, line: 1013, column: 2)
!2558 = !DILocalVariable(name: "__key", scope: !2557, file: !232, line: 1013, type: !593)
!2559 = !DILocation(line: 1013, column: 7, scope: !2557)
!2560 = !DILocation(line: 1013, column: 24, scope: !2557)
!2561 = !DILocation(line: 1013, column: 34, scope: !2557)
!2562 = !DILocation(line: 160, column: 94, scope: !604, inlinedAt: !2563)
!2563 = distinct !DILocation(line: 1013, column: 42, scope: !2557)
!2564 = !DILocation(line: 162, column: 9, scope: !604, inlinedAt: !2563)
!2565 = !DILocation(line: 163, column: 19, scope: !604, inlinedAt: !2563)
!2566 = !DILocation(line: 44, column: 2, scope: !615, inlinedAt: !2567)
!2567 = distinct !DILocation(line: 169, column: 10, scope: !604, inlinedAt: !2563)
!2568 = !DILocation(line: 44, column: 15, scope: !615, inlinedAt: !2567)
!2569 = !DILocation(line: 48, column: 2, scope: !615, inlinedAt: !2567)
!2570 = !DILocation(line: 80, column: 9, scope: !615, inlinedAt: !2567)
!2571 = !DILocation(line: 81, column: 1, scope: !615, inlinedAt: !2567)
!2572 = !DILocation(line: 169, column: 8, scope: !604, inlinedAt: !2563)
!2573 = !DILocation(line: 171, column: 26, scope: !604, inlinedAt: !2563)
!2574 = !DILocation(line: 110, column: 94, scope: !630, inlinedAt: !2575)
!2575 = distinct !DILocation(line: 171, column: 2, scope: !604, inlinedAt: !2563)
!2576 = !DILocation(line: 112, column: 9, scope: !630, inlinedAt: !2575)
!2577 = !DILocation(line: 177, column: 27, scope: !604, inlinedAt: !2563)
!2578 = !DILocation(line: 121, column: 95, scope: !639, inlinedAt: !2579)
!2579 = distinct !DILocation(line: 177, column: 2, scope: !604, inlinedAt: !2563)
!2580 = !DILocation(line: 123, column: 9, scope: !639, inlinedAt: !2579)
!2581 = !DILocation(line: 179, column: 2, scope: !604, inlinedAt: !2563)
!2582 = !DILocation(line: 1013, column: 42, scope: !2557)
!2583 = !DILocation(line: 1013, column: 77, scope: !2584)
!2584 = distinct !DILexicalBlock(scope: !2557, file: !232, line: 1013, column: 2)
!2585 = !DILocation(line: 1013, column: 72, scope: !2584)
!2586 = !DILocation(line: 1013, column: 2, scope: !2557)
!2587 = !DILocation(line: 1013, column: 2, scope: !2584)
!2588 = !DILocation(line: 1014, column: 3, scope: !2589)
!2589 = distinct !DILexicalBlock(scope: !2584, file: !232, line: 1013, column: 134)
!2590 = !DILocation(line: 1014, column: 8, scope: !2591)
!2591 = distinct !DILexicalBlock(scope: !2589, file: !232, line: 1014, column: 6)
!2592 = !DILocation(line: 1016, column: 3, scope: !2589)
!2593 = !DILocation(line: 1017, column: 2, scope: !2589)
!2594 = !DILocation(line: 1013, column: 82, scope: !2584)
!2595 = !DILocation(line: 235, column: 84, scope: !662, inlinedAt: !2596)
!2596 = distinct !DILocation(line: 1013, column: 82, scope: !2584)
!2597 = !DILocation(line: 236, column: 23, scope: !662, inlinedAt: !2596)
!2598 = !DILocation(line: 238, column: 9, scope: !662, inlinedAt: !2596)
!2599 = !DILocation(line: 261, column: 22, scope: !662, inlinedAt: !2596)
!2600 = !DILocation(line: 88, column: 80, scope: !673, inlinedAt: !2601)
!2601 = distinct !DILocation(line: 261, column: 2, scope: !662, inlinedAt: !2596)
!2602 = !DILocation(line: 91, column: 6, scope: !680, inlinedAt: !2601)
!2603 = !DILocation(line: 91, column: 10, scope: !680, inlinedAt: !2601)
!2604 = !DILocation(line: 91, column: 6, scope: !673, inlinedAt: !2601)
!2605 = !DILocation(line: 92, column: 3, scope: !684, inlinedAt: !2601)
!2606 = !DILocation(line: 94, column: 2, scope: !673, inlinedAt: !2601)
!2607 = !DILocation(line: 114, column: 1, scope: !673, inlinedAt: !2601)
!2608 = !DILocation(line: 1013, column: 125, scope: !2584)
!2609 = !DILocation(line: 1013, column: 129, scope: !2584)
!2610 = distinct !{!2610, !2586, !2611}
!2611 = !DILocation(line: 1017, column: 2, scope: !2557)
!2612 = !DILocation(line: 1018, column: 1, scope: !2554)
!2613 = distinct !DISubprogram(name: "z_sched_lock", scope: !784, file: !784, line: 253, type: !694, scopeLine: 254, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !213)
!2614 = !DILocation(line: 258, column: 20, scope: !2613)
!2615 = !DILocation(line: 258, column: 29, scope: !2613)
!2616 = !DILocation(line: 258, column: 34, scope: !2613)
!2617 = !DILocation(line: 258, column: 2, scope: !2613)
!2618 = !DILocation(line: 260, column: 2, scope: !2613)
!2619 = !DILocation(line: 260, column: 7, scope: !2620)
!2620 = distinct !DILexicalBlock(scope: !2613, file: !784, line: 260, column: 5)
!2621 = !{i64 327991}
!2622 = !DILocation(line: 260, column: 47, scope: !2620)
!2623 = !DILocation(line: 261, column: 1, scope: !2613)
!2624 = distinct !DISubprogram(name: "k_sched_unlock", scope: !232, file: !232, line: 1020, type: !694, scopeLine: 1021, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2625)
!2625 = !{!2626, !2628}
!2626 = !DILocalVariable(name: "__i", scope: !2627, file: !232, line: 1022, type: !593)
!2627 = distinct !DILexicalBlock(scope: !2624, file: !232, line: 1022, column: 2)
!2628 = !DILocalVariable(name: "__key", scope: !2627, file: !232, line: 1022, type: !593)
!2629 = !DILocation(line: 1022, column: 7, scope: !2627)
!2630 = !DILocation(line: 1022, column: 24, scope: !2627)
!2631 = !DILocation(line: 1022, column: 34, scope: !2627)
!2632 = !DILocation(line: 160, column: 94, scope: !604, inlinedAt: !2633)
!2633 = distinct !DILocation(line: 1022, column: 42, scope: !2627)
!2634 = !DILocation(line: 162, column: 9, scope: !604, inlinedAt: !2633)
!2635 = !DILocation(line: 163, column: 19, scope: !604, inlinedAt: !2633)
!2636 = !DILocation(line: 44, column: 2, scope: !615, inlinedAt: !2637)
!2637 = distinct !DILocation(line: 169, column: 10, scope: !604, inlinedAt: !2633)
!2638 = !DILocation(line: 44, column: 15, scope: !615, inlinedAt: !2637)
!2639 = !DILocation(line: 48, column: 2, scope: !615, inlinedAt: !2637)
!2640 = !DILocation(line: 80, column: 9, scope: !615, inlinedAt: !2637)
!2641 = !DILocation(line: 81, column: 1, scope: !615, inlinedAt: !2637)
!2642 = !DILocation(line: 169, column: 8, scope: !604, inlinedAt: !2633)
!2643 = !DILocation(line: 171, column: 26, scope: !604, inlinedAt: !2633)
!2644 = !DILocation(line: 110, column: 94, scope: !630, inlinedAt: !2645)
!2645 = distinct !DILocation(line: 171, column: 2, scope: !604, inlinedAt: !2633)
!2646 = !DILocation(line: 112, column: 9, scope: !630, inlinedAt: !2645)
!2647 = !DILocation(line: 177, column: 27, scope: !604, inlinedAt: !2633)
!2648 = !DILocation(line: 121, column: 95, scope: !639, inlinedAt: !2649)
!2649 = distinct !DILocation(line: 177, column: 2, scope: !604, inlinedAt: !2633)
!2650 = !DILocation(line: 123, column: 9, scope: !639, inlinedAt: !2649)
!2651 = !DILocation(line: 179, column: 2, scope: !604, inlinedAt: !2633)
!2652 = !DILocation(line: 1022, column: 42, scope: !2627)
!2653 = !DILocation(line: 1022, column: 77, scope: !2654)
!2654 = distinct !DILexicalBlock(scope: !2627, file: !232, line: 1022, column: 2)
!2655 = !DILocation(line: 1022, column: 72, scope: !2654)
!2656 = !DILocation(line: 1022, column: 2, scope: !2627)
!2657 = !DILocation(line: 1022, column: 2, scope: !2654)
!2658 = !DILocation(line: 1026, column: 21, scope: !2659)
!2659 = distinct !DILexicalBlock(scope: !2654, file: !232, line: 1022, column: 134)
!2660 = !DILocation(line: 1026, column: 30, scope: !2659)
!2661 = !DILocation(line: 1026, column: 35, scope: !2659)
!2662 = !DILocation(line: 1026, column: 3, scope: !2659)
!2663 = !DILocation(line: 1027, column: 3, scope: !2659)
!2664 = !DILocation(line: 1028, column: 2, scope: !2659)
!2665 = !DILocation(line: 1022, column: 82, scope: !2654)
!2666 = !DILocation(line: 235, column: 84, scope: !662, inlinedAt: !2667)
!2667 = distinct !DILocation(line: 1022, column: 82, scope: !2654)
!2668 = !DILocation(line: 236, column: 23, scope: !662, inlinedAt: !2667)
!2669 = !DILocation(line: 238, column: 9, scope: !662, inlinedAt: !2667)
!2670 = !DILocation(line: 261, column: 22, scope: !662, inlinedAt: !2667)
!2671 = !DILocation(line: 88, column: 80, scope: !673, inlinedAt: !2672)
!2672 = distinct !DILocation(line: 261, column: 2, scope: !662, inlinedAt: !2667)
!2673 = !DILocation(line: 91, column: 6, scope: !680, inlinedAt: !2672)
!2674 = !DILocation(line: 91, column: 10, scope: !680, inlinedAt: !2672)
!2675 = !DILocation(line: 91, column: 6, scope: !673, inlinedAt: !2672)
!2676 = !DILocation(line: 92, column: 3, scope: !684, inlinedAt: !2672)
!2677 = !DILocation(line: 94, column: 2, scope: !673, inlinedAt: !2672)
!2678 = !DILocation(line: 114, column: 1, scope: !673, inlinedAt: !2672)
!2679 = !DILocation(line: 1022, column: 125, scope: !2654)
!2680 = !DILocation(line: 1022, column: 129, scope: !2654)
!2681 = distinct !{!2681, !2656, !2682}
!2682 = !DILocation(line: 1028, column: 2, scope: !2627)
!2683 = !DILocation(line: 1030, column: 2, scope: !2624)
!2684 = !DILocation(line: 1030, column: 88, scope: !2685)
!2685 = distinct !DILexicalBlock(scope: !2686, file: !232, line: 1030, column: 86)
!2686 = distinct !DILexicalBlock(scope: !2687, file: !232, line: 1030, column: 11)
!2687 = distinct !DILexicalBlock(scope: !2624, file: !232, line: 1030, column: 5)
!2688 = !DILocation(line: 1033, column: 2, scope: !2624)
!2689 = !DILocation(line: 1033, column: 7, scope: !2690)
!2690 = distinct !DILexicalBlock(scope: !2624, file: !232, line: 1033, column: 5)
!2691 = !DILocation(line: 1035, column: 2, scope: !2624)
!2692 = !DILocation(line: 1036, column: 1, scope: !2624)
!2693 = distinct !DISubprogram(name: "z_swap_next_thread", scope: !232, file: !232, line: 1038, type: !1419, scopeLine: 1039, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !213)
!2694 = !DILocation(line: 1052, column: 25, scope: !2693)
!2695 = !DILocation(line: 1052, column: 2, scope: !2693)
!2696 = distinct !DISubprogram(name: "z_priq_dumb_remove", scope: !232, file: !232, line: 1161, type: !868, scopeLine: 1162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2697)
!2697 = !{!2698, !2699}
!2698 = !DILocalVariable(name: "pq", arg: 1, scope: !2696, file: !232, line: 1161, type: !870)
!2699 = !DILocalVariable(name: "thread", arg: 2, scope: !2696, file: !232, line: 1161, type: !101)
!2700 = !DILocation(line: 1161, column: 38, scope: !2696)
!2701 = !DILocation(line: 1161, column: 59, scope: !2696)
!2702 = !DILocation(line: 1163, column: 9, scope: !2696)
!2703 = !DILocation(line: 1167, column: 20, scope: !2696)
!2704 = !DILocation(line: 1167, column: 28, scope: !2696)
!2705 = !DILocation(line: 1167, column: 33, scope: !2696)
!2706 = !DILocation(line: 1167, column: 2, scope: !2696)
!2707 = !DILocation(line: 1168, column: 1, scope: !2696)
!2708 = distinct !DISubprogram(name: "sys_dlist_remove", scope: !113, file: !113, line: 505, type: !2709, scopeLine: 506, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2711)
!2709 = !DISubroutineType(types: !2710)
!2710 = !{null, !228}
!2711 = !{!2712, !2713, !2715}
!2712 = !DILocalVariable(name: "node", arg: 1, scope: !2708, file: !113, line: 505, type: !228)
!2713 = !DILocalVariable(name: "prev", scope: !2708, file: !113, line: 507, type: !2714)
!2714 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !228)
!2715 = !DILocalVariable(name: "next", scope: !2708, file: !113, line: 508, type: !2714)
!2716 = !DILocation(line: 505, column: 50, scope: !2708)
!2717 = !DILocation(line: 507, column: 2, scope: !2708)
!2718 = !DILocation(line: 507, column: 21, scope: !2708)
!2719 = !DILocation(line: 507, column: 28, scope: !2708)
!2720 = !DILocation(line: 507, column: 34, scope: !2708)
!2721 = !DILocation(line: 508, column: 2, scope: !2708)
!2722 = !DILocation(line: 508, column: 21, scope: !2708)
!2723 = !DILocation(line: 508, column: 28, scope: !2708)
!2724 = !DILocation(line: 508, column: 34, scope: !2708)
!2725 = !DILocation(line: 510, column: 15, scope: !2708)
!2726 = !DILocation(line: 510, column: 2, scope: !2708)
!2727 = !DILocation(line: 510, column: 8, scope: !2708)
!2728 = !DILocation(line: 510, column: 13, scope: !2708)
!2729 = !DILocation(line: 511, column: 15, scope: !2708)
!2730 = !DILocation(line: 511, column: 2, scope: !2708)
!2731 = !DILocation(line: 511, column: 8, scope: !2708)
!2732 = !DILocation(line: 511, column: 13, scope: !2708)
!2733 = !DILocation(line: 512, column: 17, scope: !2708)
!2734 = !DILocation(line: 512, column: 2, scope: !2708)
!2735 = !DILocation(line: 513, column: 1, scope: !2708)
!2736 = distinct !DISubprogram(name: "sys_dlist_peek_head", scope: !113, file: !113, line: 303, type: !2737, scopeLine: 304, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2739)
!2737 = !DISubroutineType(types: !2738)
!2738 = !{!228, !870}
!2739 = !{!2740}
!2740 = !DILocalVariable(name: "list", arg: 1, scope: !2736, file: !113, line: 303, type: !870)
!2741 = !DILocation(line: 303, column: 61, scope: !2736)
!2742 = !DILocation(line: 305, column: 28, scope: !2736)
!2743 = !DILocation(line: 305, column: 9, scope: !2736)
!2744 = !DILocation(line: 305, column: 49, scope: !2736)
!2745 = !DILocation(line: 305, column: 55, scope: !2736)
!2746 = !DILocation(line: 305, column: 2, scope: !2736)
!2747 = distinct !DISubprogram(name: "z_priq_rb_lessthan", scope: !232, file: !232, line: 1181, type: !2748, scopeLine: 1182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2750)
!2748 = !DISubroutineType(types: !2749)
!2749 = !{!236, !133, !133}
!2750 = !{!2751, !2752, !2753, !2754, !2755}
!2751 = !DILocalVariable(name: "a", arg: 1, scope: !2747, file: !232, line: 1181, type: !133)
!2752 = !DILocalVariable(name: "b", arg: 2, scope: !2747, file: !232, line: 1181, type: !133)
!2753 = !DILocalVariable(name: "thread_a", scope: !2747, file: !232, line: 1183, type: !101)
!2754 = !DILocalVariable(name: "thread_b", scope: !2747, file: !232, line: 1183, type: !101)
!2755 = !DILocalVariable(name: "cmp", scope: !2747, file: !232, line: 1184, type: !225)
!2756 = !DILocation(line: 1181, column: 41, scope: !2747)
!2757 = !DILocation(line: 1181, column: 59, scope: !2747)
!2758 = !DILocation(line: 1183, column: 2, scope: !2747)
!2759 = !DILocation(line: 1183, column: 19, scope: !2747)
!2760 = !DILocation(line: 1183, column: 30, scope: !2747)
!2761 = !DILocation(line: 1184, column: 2, scope: !2747)
!2762 = !DILocation(line: 1184, column: 10, scope: !2747)
!2763 = !DILocation(line: 1186, column: 49, scope: !2764)
!2764 = distinct !DILexicalBlock(scope: !2747, file: !232, line: 1186, column: 14)
!2765 = !DILocation(line: 1186, column: 53, scope: !2764)
!2766 = !DILocation(line: 1186, column: 14, scope: !2747)
!2767 = !DILocation(line: 1186, column: 109, scope: !2764)
!2768 = !DILocation(line: 1186, column: 11, scope: !2747)
!2769 = !DILocation(line: 1187, column: 49, scope: !2770)
!2770 = distinct !DILexicalBlock(scope: !2747, file: !232, line: 1187, column: 14)
!2771 = !DILocation(line: 1187, column: 53, scope: !2770)
!2772 = !DILocation(line: 1187, column: 14, scope: !2747)
!2773 = !DILocation(line: 1187, column: 109, scope: !2770)
!2774 = !DILocation(line: 1187, column: 11, scope: !2747)
!2775 = !DILocation(line: 1189, column: 25, scope: !2747)
!2776 = !DILocation(line: 1189, column: 35, scope: !2747)
!2777 = !DILocation(line: 1189, column: 8, scope: !2747)
!2778 = !DILocation(line: 1189, column: 6, scope: !2747)
!2779 = !DILocation(line: 1191, column: 6, scope: !2780)
!2780 = distinct !DILexicalBlock(scope: !2747, file: !232, line: 1191, column: 6)
!2781 = !DILocation(line: 1191, column: 10, scope: !2780)
!2782 = !DILocation(line: 1191, column: 6, scope: !2747)
!2783 = !DILocation(line: 1192, column: 3, scope: !2784)
!2784 = distinct !DILexicalBlock(scope: !2780, file: !232, line: 1191, column: 15)
!2785 = !DILocation(line: 1193, column: 13, scope: !2786)
!2786 = distinct !DILexicalBlock(scope: !2780, file: !232, line: 1193, column: 13)
!2787 = !DILocation(line: 1193, column: 17, scope: !2786)
!2788 = !DILocation(line: 1193, column: 13, scope: !2780)
!2789 = !DILocation(line: 1194, column: 3, scope: !2790)
!2790 = distinct !DILexicalBlock(scope: !2786, file: !232, line: 1193, column: 22)
!2791 = !DILocation(line: 1196, column: 10, scope: !2792)
!2792 = distinct !DILexicalBlock(scope: !2786, file: !232, line: 1195, column: 9)
!2793 = !DILocation(line: 1196, column: 20, scope: !2792)
!2794 = !DILocation(line: 1196, column: 25, scope: !2792)
!2795 = !DILocation(line: 1196, column: 37, scope: !2792)
!2796 = !DILocation(line: 1196, column: 47, scope: !2792)
!2797 = !DILocation(line: 1196, column: 52, scope: !2792)
!2798 = !DILocation(line: 1196, column: 35, scope: !2792)
!2799 = !DILocation(line: 1196, column: 3, scope: !2792)
!2800 = !DILocation(line: 1199, column: 1, scope: !2747)
!2801 = distinct !DISubprogram(name: "z_priq_rb_add", scope: !232, file: !232, line: 1201, type: !2802, scopeLine: 1202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2817)
!2802 = !DISubroutineType(types: !2803)
!2803 = !{null, !2804, !101}
!2804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2805, size: 32)
!2805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_priq_rb", file: !2806, line: 37, size: 128, elements: !2807)
!2806 = !DIFile(filename: "include/zephyr/kernel/internal/sched_priq.h", directory: "/home/sri/zephyrproject/zephyr")
!2807 = !{!2808, !2816}
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "tree", scope: !2805, file: !2806, line: 38, baseType: !2809, size: 96)
!2809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rbtree", file: !129, line: 91, size: 96, elements: !2810)
!2810 = !{!2811, !2812, !2815}
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2809, file: !129, line: 93, baseType: !133, size: 32)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "lessthan_fn", scope: !2809, file: !129, line: 95, baseType: !2813, size: 32, offset: 32)
!2813 = !DIDerivedType(tag: DW_TAG_typedef, name: "rb_lessthan_t", file: !129, line: 86, baseType: !2814)
!2814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2748, size: 32)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "max_depth", scope: !2809, file: !129, line: 97, baseType: !192, size: 32, offset: 64)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "next_order_key", scope: !2805, file: !2806, line: 39, baseType: !192, size: 32, offset: 96)
!2817 = !{!2818, !2819, !2820, !2821, !2830}
!2818 = !DILocalVariable(name: "pq", arg: 1, scope: !2801, file: !232, line: 1201, type: !2804)
!2819 = !DILocalVariable(name: "thread", arg: 2, scope: !2801, file: !232, line: 1201, type: !101)
!2820 = !DILocalVariable(name: "t", scope: !2801, file: !232, line: 1203, type: !101)
!2821 = !DILocalVariable(name: "__f", scope: !2822, file: !232, line: 1216, type: !2825)
!2822 = distinct !DILexicalBlock(scope: !2823, file: !232, line: 1216, column: 3)
!2823 = distinct !DILexicalBlock(scope: !2824, file: !232, line: 1215, column: 27)
!2824 = distinct !DILexicalBlock(scope: !2801, file: !232, line: 1215, column: 6)
!2825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rb_foreach", file: !129, line: 172, size: 96, elements: !2826)
!2826 = !{!2827, !2828, !2829}
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2825, file: !129, line: 173, baseType: !221, size: 32)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "is_left", scope: !2825, file: !129, line: 174, baseType: !222, size: 32, offset: 32)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !2825, file: !129, line: 175, baseType: !225, size: 32, offset: 64)
!2830 = !DILocalVariable(name: "n", scope: !2831, file: !232, line: 1216, type: !133)
!2831 = distinct !DILexicalBlock(scope: !2832, file: !232, line: 1216, column: 227)
!2832 = distinct !DILexicalBlock(scope: !2822, file: !232, line: 1216, column: 3)
!2833 = !DILocation(line: 1201, column: 37, scope: !2801)
!2834 = !DILocation(line: 1201, column: 58, scope: !2801)
!2835 = !DILocation(line: 1203, column: 2, scope: !2801)
!2836 = !DILocation(line: 1203, column: 19, scope: !2801)
!2837 = !DILocation(line: 1207, column: 27, scope: !2801)
!2838 = !DILocation(line: 1207, column: 31, scope: !2801)
!2839 = !DILocation(line: 1207, column: 45, scope: !2801)
!2840 = !DILocation(line: 1207, column: 2, scope: !2801)
!2841 = !DILocation(line: 1207, column: 10, scope: !2801)
!2842 = !DILocation(line: 1207, column: 15, scope: !2801)
!2843 = !DILocation(line: 1207, column: 25, scope: !2801)
!2844 = !DILocation(line: 1215, column: 7, scope: !2824)
!2845 = !DILocation(line: 1215, column: 11, scope: !2824)
!2846 = !DILocation(line: 1215, column: 6, scope: !2801)
!2847 = !DILocation(line: 1216, column: 8, scope: !2822)
!2848 = !DILocation(line: 1216, column: 27, scope: !2822)
!2849 = !DILocation(line: 1216, column: 33, scope: !2822)
!2850 = !DILocation(line: 1216, column: 82, scope: !2822)
!2851 = !DILocation(line: 1216, column: 86, scope: !2822)
!2852 = !DILocation(line: 1216, column: 93, scope: !2822)
!2853 = !DILocation(line: 1216, column: 103, scope: !2822)
!2854 = !DILocation(line: 1216, column: 63, scope: !2822)
!2855 = !DILocation(line: 1216, column: 172, scope: !2822)
!2856 = !DILocation(line: 1216, column: 176, scope: !2822)
!2857 = !DILocation(line: 1216, column: 183, scope: !2822)
!2858 = !DILocation(line: 1216, column: 193, scope: !2822)
!2859 = !DILocation(line: 1216, column: 153, scope: !2822)
!2860 = !DILocation(line: 1216, column: 228, scope: !2831)
!2861 = !DILocation(line: 1216, column: 243, scope: !2831)
!2862 = !DILocation(line: 1216, column: 266, scope: !2831)
!2863 = !DILocation(line: 1216, column: 270, scope: !2831)
!2864 = !DILocation(line: 1216, column: 247, scope: !2831)
!2865 = !DILocation(line: 1216, column: 287, scope: !2831)
!2866 = !DILocation(line: 1216, column: 328, scope: !2867)
!2867 = distinct !DILexicalBlock(scope: !2831, file: !232, line: 1216, column: 292)
!2868 = !DILocation(line: 1216, column: 332, scope: !2867)
!2869 = !DILocation(line: 1216, column: 292, scope: !2831)
!2870 = !DILocation(line: 1216, column: 389, scope: !2867)
!2871 = !DILocation(line: 1216, column: 285, scope: !2831)
!2872 = !DILocation(line: 1216, column: 397, scope: !2832)
!2873 = !DILocation(line: 1216, column: 397, scope: !2831)
!2874 = !DILocation(line: 1216, column: 400, scope: !2832)
!2875 = !DILocation(line: 1216, column: 3, scope: !2822)
!2876 = !DILocation(line: 1216, column: 3, scope: !2832)
!2877 = !DILocation(line: 1217, column: 24, scope: !2878)
!2878 = distinct !DILexicalBlock(scope: !2832, file: !232, line: 1216, column: 408)
!2879 = !DILocation(line: 1217, column: 28, scope: !2878)
!2880 = !DILocation(line: 1217, column: 42, scope: !2878)
!2881 = !DILocation(line: 1217, column: 4, scope: !2878)
!2882 = !DILocation(line: 1217, column: 7, scope: !2878)
!2883 = !DILocation(line: 1217, column: 12, scope: !2878)
!2884 = !DILocation(line: 1217, column: 22, scope: !2878)
!2885 = distinct !{!2885, !2875, !2886}
!2886 = !DILocation(line: 1218, column: 3, scope: !2822)
!2887 = !DILocation(line: 1219, column: 2, scope: !2823)
!2888 = !DILocation(line: 1221, column: 13, scope: !2801)
!2889 = !DILocation(line: 1221, column: 17, scope: !2801)
!2890 = !DILocation(line: 1221, column: 24, scope: !2801)
!2891 = !DILocation(line: 1221, column: 32, scope: !2801)
!2892 = !DILocation(line: 1221, column: 37, scope: !2801)
!2893 = !DILocation(line: 1221, column: 2, scope: !2801)
!2894 = !DILocation(line: 1222, column: 1, scope: !2801)
!2895 = !DISubprogram(name: "z_rb_foreach_next", scope: !129, file: !129, line: 193, type: !2896, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !213)
!2896 = !DISubroutineType(types: !2897)
!2897 = !{!133, !2898, !2899}
!2898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2809, size: 32)
!2899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2825, size: 32)
!2900 = !DISubprogram(name: "rb_insert", scope: !129, file: !129, line: 122, type: !2901, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !213)
!2901 = !DISubroutineType(types: !2902)
!2902 = !{null, !2898, !133}
!2903 = distinct !DISubprogram(name: "z_priq_rb_remove", scope: !232, file: !232, line: 1224, type: !2802, scopeLine: 1225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2904)
!2904 = !{!2905, !2906}
!2905 = !DILocalVariable(name: "pq", arg: 1, scope: !2903, file: !232, line: 1224, type: !2804)
!2906 = !DILocalVariable(name: "thread", arg: 2, scope: !2903, file: !232, line: 1224, type: !101)
!2907 = !DILocation(line: 1224, column: 40, scope: !2903)
!2908 = !DILocation(line: 1224, column: 61, scope: !2903)
!2909 = !DILocation(line: 1228, column: 13, scope: !2903)
!2910 = !DILocation(line: 1228, column: 17, scope: !2903)
!2911 = !DILocation(line: 1228, column: 24, scope: !2903)
!2912 = !DILocation(line: 1228, column: 32, scope: !2903)
!2913 = !DILocation(line: 1228, column: 37, scope: !2903)
!2914 = !DILocation(line: 1228, column: 2, scope: !2903)
!2915 = !DILocation(line: 1230, column: 7, scope: !2916)
!2916 = distinct !DILexicalBlock(scope: !2903, file: !232, line: 1230, column: 6)
!2917 = !DILocation(line: 1230, column: 11, scope: !2916)
!2918 = !DILocation(line: 1230, column: 16, scope: !2916)
!2919 = !DILocation(line: 1230, column: 6, scope: !2903)
!2920 = !DILocation(line: 1231, column: 3, scope: !2921)
!2921 = distinct !DILexicalBlock(scope: !2916, file: !232, line: 1230, column: 22)
!2922 = !DILocation(line: 1231, column: 7, scope: !2921)
!2923 = !DILocation(line: 1231, column: 22, scope: !2921)
!2924 = !DILocation(line: 1232, column: 2, scope: !2921)
!2925 = !DILocation(line: 1233, column: 1, scope: !2903)
!2926 = !DISubprogram(name: "rb_remove", scope: !129, file: !129, line: 127, type: !2901, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !213)
!2927 = distinct !DISubprogram(name: "z_priq_rb_best", scope: !232, file: !232, line: 1235, type: !2928, scopeLine: 1236, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2930)
!2928 = !DISubroutineType(types: !2929)
!2929 = !{!101, !2804}
!2930 = !{!2931, !2932, !2933}
!2931 = !DILocalVariable(name: "pq", arg: 1, scope: !2927, file: !232, line: 1235, type: !2804)
!2932 = !DILocalVariable(name: "thread", scope: !2927, file: !232, line: 1237, type: !101)
!2933 = !DILocalVariable(name: "n", scope: !2927, file: !232, line: 1238, type: !133)
!2934 = !DILocation(line: 1235, column: 50, scope: !2927)
!2935 = !DILocation(line: 1237, column: 2, scope: !2927)
!2936 = !DILocation(line: 1237, column: 19, scope: !2927)
!2937 = !DILocation(line: 1238, column: 2, scope: !2927)
!2938 = !DILocation(line: 1238, column: 17, scope: !2927)
!2939 = !DILocation(line: 1238, column: 33, scope: !2927)
!2940 = !DILocation(line: 1238, column: 37, scope: !2927)
!2941 = !DILocation(line: 1238, column: 21, scope: !2927)
!2942 = !DILocation(line: 1240, column: 6, scope: !2943)
!2943 = distinct !DILexicalBlock(scope: !2927, file: !232, line: 1240, column: 6)
!2944 = !DILocation(line: 1240, column: 8, scope: !2943)
!2945 = !DILocation(line: 1240, column: 6, scope: !2927)
!2946 = !DILocation(line: 1241, column: 48, scope: !2947)
!2947 = distinct !DILexicalBlock(scope: !2948, file: !232, line: 1241, column: 13)
!2948 = distinct !DILexicalBlock(scope: !2943, file: !232, line: 1240, column: 14)
!2949 = !DILocation(line: 1241, column: 52, scope: !2947)
!2950 = !DILocation(line: 1241, column: 13, scope: !2948)
!2951 = !DILocation(line: 1241, column: 108, scope: !2947)
!2952 = !DILocation(line: 1241, column: 10, scope: !2948)
!2953 = !DILocation(line: 1242, column: 2, scope: !2948)
!2954 = !DILocation(line: 1243, column: 9, scope: !2927)
!2955 = !DILocation(line: 1244, column: 1, scope: !2927)
!2956 = !DILocation(line: 1243, column: 2, scope: !2927)
!2957 = distinct !DISubprogram(name: "rb_get_min", scope: !129, file: !129, line: 132, type: !2958, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2960)
!2958 = !DISubroutineType(types: !2959)
!2959 = !{!133, !2898}
!2960 = !{!2961}
!2961 = !DILocalVariable(name: "tree", arg: 1, scope: !2957, file: !129, line: 132, type: !2898)
!2962 = !DILocation(line: 132, column: 56, scope: !2957)
!2963 = !DILocation(line: 134, column: 25, scope: !2957)
!2964 = !DILocation(line: 134, column: 9, scope: !2957)
!2965 = !DILocation(line: 134, column: 2, scope: !2957)
!2966 = distinct !DISubprogram(name: "z_priq_mq_best", scope: !232, file: !232, line: 1272, type: !2967, scopeLine: 1273, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2977)
!2967 = !DISubroutineType(types: !2968)
!2968 = !{!101, !2969}
!2969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2970, size: 32)
!2970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_priq_mq", file: !2806, line: 53, size: 2080, elements: !2971)
!2971 = !{!2972, !2976}
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "queues", scope: !2970, file: !2806, line: 54, baseType: !2973, size: 2048)
!2973 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 2048, elements: !2974)
!2974 = !{!2975}
!2975 = !DISubrange(count: 32)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "bitmask", scope: !2970, file: !2806, line: 55, baseType: !100, size: 32, offset: 2048)
!2977 = !{!2978, !2979, !2980, !2981}
!2978 = !DILocalVariable(name: "pq", arg: 1, scope: !2966, file: !232, line: 1272, type: !2969)
!2979 = !DILocalVariable(name: "thread", scope: !2966, file: !232, line: 1278, type: !101)
!2980 = !DILocalVariable(name: "l", scope: !2966, file: !232, line: 1279, type: !870)
!2981 = !DILocalVariable(name: "n", scope: !2966, file: !232, line: 1280, type: !228)
!2982 = !DILocation(line: 1272, column: 50, scope: !2966)
!2983 = !DILocation(line: 1274, column: 7, scope: !2984)
!2984 = distinct !DILexicalBlock(scope: !2966, file: !232, line: 1274, column: 6)
!2985 = !DILocation(line: 1274, column: 11, scope: !2984)
!2986 = !DILocation(line: 1274, column: 6, scope: !2966)
!2987 = !DILocation(line: 1275, column: 3, scope: !2988)
!2988 = distinct !DILexicalBlock(scope: !2984, file: !232, line: 1274, column: 20)
!2989 = !DILocation(line: 1278, column: 2, scope: !2966)
!2990 = !DILocation(line: 1278, column: 19, scope: !2966)
!2991 = !DILocation(line: 1279, column: 2, scope: !2966)
!2992 = !DILocation(line: 1279, column: 15, scope: !2966)
!2993 = !DILocation(line: 1279, column: 20, scope: !2966)
!2994 = !DILocation(line: 1279, column: 24, scope: !2966)
!2995 = !DILocation(line: 1279, column: 45, scope: !2966)
!2996 = !DILocation(line: 1279, column: 49, scope: !2966)
!2997 = !DILocation(line: 1279, column: 31, scope: !2966)
!2998 = !DILocation(line: 1280, column: 2, scope: !2966)
!2999 = !DILocation(line: 1280, column: 15, scope: !2966)
!3000 = !DILocation(line: 1280, column: 39, scope: !2966)
!3001 = !DILocation(line: 1280, column: 19, scope: !2966)
!3002 = !DILocation(line: 1282, column: 6, scope: !3003)
!3003 = distinct !DILexicalBlock(scope: !2966, file: !232, line: 1282, column: 6)
!3004 = !DILocation(line: 1282, column: 8, scope: !3003)
!3005 = !DILocation(line: 1282, column: 6, scope: !2966)
!3006 = !DILocation(line: 1283, column: 48, scope: !3007)
!3007 = distinct !DILexicalBlock(scope: !3008, file: !232, line: 1283, column: 13)
!3008 = distinct !DILexicalBlock(scope: !3003, file: !232, line: 1282, column: 14)
!3009 = !DILocation(line: 1283, column: 52, scope: !3007)
!3010 = !DILocation(line: 1283, column: 13, scope: !3008)
!3011 = !DILocation(line: 1283, column: 111, scope: !3007)
!3012 = !DILocation(line: 1283, column: 10, scope: !3008)
!3013 = !DILocation(line: 1284, column: 2, scope: !3008)
!3014 = !DILocation(line: 1285, column: 9, scope: !2966)
!3015 = !DILocation(line: 1285, column: 2, scope: !2966)
!3016 = !DILocation(line: 1286, column: 1, scope: !2966)
!3017 = distinct !DISubprogram(name: "z_unpend_all", scope: !232, file: !232, line: 1288, type: !3018, scopeLine: 1289, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3020)
!3018 = !DISubroutineType(types: !3019)
!3019 = !{!192, !137}
!3020 = !{!3021, !3022, !3023}
!3021 = !DILocalVariable(name: "wait_q", arg: 1, scope: !3017, file: !232, line: 1288, type: !137)
!3022 = !DILocalVariable(name: "need_sched", scope: !3017, file: !232, line: 1290, type: !192)
!3023 = !DILocalVariable(name: "thread", scope: !3017, file: !232, line: 1291, type: !101)
!3024 = !DILocation(line: 1288, column: 29, scope: !3017)
!3025 = !DILocation(line: 1290, column: 2, scope: !3017)
!3026 = !DILocation(line: 1290, column: 6, scope: !3017)
!3027 = !DILocation(line: 1291, column: 2, scope: !3017)
!3028 = !DILocation(line: 1291, column: 19, scope: !3017)
!3029 = !DILocation(line: 1293, column: 2, scope: !3017)
!3030 = !DILocation(line: 1293, column: 32, scope: !3017)
!3031 = !DILocation(line: 1293, column: 19, scope: !3017)
!3032 = !DILocation(line: 1293, column: 17, scope: !3017)
!3033 = !DILocation(line: 1293, column: 41, scope: !3017)
!3034 = !DILocation(line: 1294, column: 19, scope: !3035)
!3035 = distinct !DILexicalBlock(scope: !3017, file: !232, line: 1293, column: 47)
!3036 = !DILocation(line: 1294, column: 3, scope: !3035)
!3037 = !DILocation(line: 1295, column: 18, scope: !3035)
!3038 = !DILocation(line: 1295, column: 3, scope: !3035)
!3039 = !DILocation(line: 1296, column: 14, scope: !3035)
!3040 = distinct !{!3040, !3029, !3041}
!3041 = !DILocation(line: 1297, column: 2, scope: !3017)
!3042 = !DILocation(line: 1299, column: 9, scope: !3017)
!3043 = !DILocation(line: 1300, column: 1, scope: !3017)
!3044 = !DILocation(line: 1299, column: 2, scope: !3017)
!3045 = distinct !DISubprogram(name: "z_waitq_head", scope: !3046, file: !3046, line: 52, type: !2016, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3047)
!3046 = !DIFile(filename: "kernel/include/wait_q.h", directory: "/home/sri/zephyrproject/zephyr")
!3047 = !{!3048}
!3048 = !DILocalVariable(name: "w", arg: 1, scope: !3045, file: !3046, line: 52, type: !137)
!3049 = !DILocation(line: 52, column: 56, scope: !3045)
!3050 = !DILocation(line: 54, column: 49, scope: !3045)
!3051 = !DILocation(line: 54, column: 52, scope: !3045)
!3052 = !DILocation(line: 54, column: 28, scope: !3045)
!3053 = !DILocation(line: 54, column: 2, scope: !3045)
!3054 = distinct !DISubprogram(name: "init_ready_q", scope: !232, file: !232, line: 1302, type: !3055, scopeLine: 1303, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3062)
!3055 = !DISubroutineType(types: !3056)
!3056 = !{null, !3057}
!3057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3058, size: 32)
!3058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ready_q", file: !139, line: 84, size: 96, elements: !3059)
!3059 = !{!3060, !3061}
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !3058, file: !139, line: 87, baseType: !101, size: 32)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "runq", scope: !3058, file: !139, line: 91, baseType: !143, size: 64, offset: 32)
!3062 = !{!3063}
!3063 = !DILocalVariable(name: "rq", arg: 1, scope: !3054, file: !232, line: 1302, type: !3057)
!3064 = !DILocation(line: 1302, column: 36, scope: !3054)
!3065 = !DILocation(line: 1315, column: 18, scope: !3054)
!3066 = !DILocation(line: 1315, column: 22, scope: !3054)
!3067 = !DILocation(line: 1315, column: 2, scope: !3054)
!3068 = !DILocation(line: 1317, column: 1, scope: !3054)
!3069 = distinct !DISubprogram(name: "sys_dlist_init", scope: !113, file: !113, line: 203, type: !3070, scopeLine: 204, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3072)
!3070 = !DISubroutineType(types: !3071)
!3071 = !{null, !870}
!3072 = !{!3073}
!3073 = !DILocalVariable(name: "list", arg: 1, scope: !3069, file: !113, line: 203, type: !870)
!3074 = !DILocation(line: 203, column: 48, scope: !3069)
!3075 = !DILocation(line: 205, column: 30, scope: !3069)
!3076 = !DILocation(line: 205, column: 2, scope: !3069)
!3077 = !DILocation(line: 205, column: 8, scope: !3069)
!3078 = !DILocation(line: 205, column: 13, scope: !3069)
!3079 = !DILocation(line: 206, column: 30, scope: !3069)
!3080 = !DILocation(line: 206, column: 2, scope: !3069)
!3081 = !DILocation(line: 206, column: 8, scope: !3069)
!3082 = !DILocation(line: 206, column: 13, scope: !3069)
!3083 = !DILocation(line: 207, column: 1, scope: !3069)
!3084 = distinct !DISubprogram(name: "z_sched_init", scope: !232, file: !232, line: 1319, type: !694, scopeLine: 1320, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !213)
!3085 = !DILocation(line: 1326, column: 2, scope: !3084)
!3086 = !DILocation(line: 1328, column: 1, scope: !3084)
!3087 = distinct !DISubprogram(name: "z_impl_k_thread_priority_get", scope: !232, file: !232, line: 1330, type: !3088, scopeLine: 1331, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3091)
!3088 = !DISubroutineType(types: !3089)
!3089 = !{!192, !3090}
!3090 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_tid_t", file: !103, line: 359, baseType: !101)
!3091 = !{!3092}
!3092 = !DILocalVariable(name: "thread", arg: 1, scope: !3087, file: !232, line: 1330, type: !3090)
!3093 = !DILocation(line: 1330, column: 42, scope: !3087)
!3094 = !DILocation(line: 1332, column: 9, scope: !3087)
!3095 = !DILocation(line: 1332, column: 17, scope: !3087)
!3096 = !DILocation(line: 1332, column: 22, scope: !3087)
!3097 = !DILocation(line: 1332, column: 2, scope: !3087)
!3098 = distinct !DISubprogram(name: "z_impl_k_thread_priority_set", scope: !232, file: !232, line: 1344, type: !3099, scopeLine: 1345, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3101)
!3099 = !DISubroutineType(types: !3100)
!3100 = !{null, !3090, !192}
!3101 = !{!3102, !3103, !3104}
!3102 = !DILocalVariable(name: "thread", arg: 1, scope: !3098, file: !232, line: 1344, type: !3090)
!3103 = !DILocalVariable(name: "prio", arg: 2, scope: !3098, file: !232, line: 1344, type: !192)
!3104 = !DILocalVariable(name: "th", scope: !3098, file: !232, line: 1353, type: !101)
!3105 = !DILocation(line: 1344, column: 43, scope: !3098)
!3106 = !DILocation(line: 1344, column: 55, scope: !3098)
!3107 = !DILocation(line: 1350, column: 2, scope: !3098)
!3108 = !DILocation(line: 1350, column: 12, scope: !3109)
!3109 = distinct !DILexicalBlock(scope: !3098, file: !232, line: 1350, column: 5)
!3110 = !DILocation(line: 1353, column: 2, scope: !3098)
!3111 = !DILocation(line: 1353, column: 19, scope: !3098)
!3112 = !DILocation(line: 1353, column: 43, scope: !3098)
!3113 = !DILocation(line: 1355, column: 24, scope: !3098)
!3114 = !DILocation(line: 1355, column: 28, scope: !3098)
!3115 = !DILocation(line: 1355, column: 2, scope: !3098)
!3116 = !DILocation(line: 1356, column: 1, scope: !3098)
!3117 = distinct !DISubprogram(name: "k_can_yield", scope: !232, file: !232, line: 1403, type: !2502, scopeLine: 1404, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !213)
!3118 = !DILocation(line: 1405, column: 11, scope: !3117)
!3119 = !DILocation(line: 1405, column: 29, scope: !3117)
!3120 = !DILocation(line: 1405, column: 32, scope: !3117)
!3121 = !DILocation(line: 1405, column: 46, scope: !3117)
!3122 = !DILocation(line: 1406, column: 44, scope: !3117)
!3123 = !DILocation(line: 1406, column: 4, scope: !3117)
!3124 = !DILocation(line: 1405, column: 9, scope: !3117)
!3125 = !DILocation(line: 1405, column: 2, scope: !3117)
!3126 = distinct !DISubprogram(name: "k_is_pre_kernel", scope: !196, file: !196, line: 1101, type: !2502, scopeLine: 1102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !213)
!3127 = !DILocation(line: 1105, column: 10, scope: !3126)
!3128 = !DILocation(line: 1105, column: 9, scope: !3126)
!3129 = !DILocation(line: 1105, column: 2, scope: !3126)
!3130 = !DISubprogram(name: "k_is_in_isr", scope: !196, file: !196, line: 1070, type: !2502, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !213)
!3131 = distinct !DISubprogram(name: "z_is_idle_thread_object", scope: !784, file: !784, line: 85, type: !519, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3132)
!3132 = !{!3133}
!3133 = !DILocalVariable(name: "thread", arg: 1, scope: !3131, file: !784, line: 85, type: !101)
!3134 = !DILocation(line: 85, column: 62, scope: !3131)
!3135 = !DILocation(line: 91, column: 9, scope: !3131)
!3136 = !DILocation(line: 91, column: 16, scope: !3131)
!3137 = !DILocation(line: 91, column: 2, scope: !3131)
!3138 = distinct !DISubprogram(name: "z_impl_k_yield", scope: !232, file: !232, line: 1409, type: !694, scopeLine: 1410, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3139)
!3139 = !{!3140}
!3140 = !DILocalVariable(name: "key", scope: !3138, file: !232, line: 1415, type: !593)
!3141 = !DILocation(line: 1413, column: 2, scope: !3138)
!3142 = !DILocation(line: 1413, column: 7, scope: !3143)
!3143 = distinct !DILexicalBlock(scope: !3138, file: !232, line: 1413, column: 5)
!3144 = !DILocation(line: 1415, column: 2, scope: !3138)
!3145 = !DILocation(line: 1415, column: 19, scope: !3138)
!3146 = !DILocation(line: 160, column: 94, scope: !604, inlinedAt: !3147)
!3147 = distinct !DILocation(line: 1415, column: 25, scope: !3138)
!3148 = !DILocation(line: 162, column: 9, scope: !604, inlinedAt: !3147)
!3149 = !DILocation(line: 163, column: 19, scope: !604, inlinedAt: !3147)
!3150 = !DILocation(line: 44, column: 2, scope: !615, inlinedAt: !3151)
!3151 = distinct !DILocation(line: 169, column: 10, scope: !604, inlinedAt: !3147)
!3152 = !DILocation(line: 44, column: 15, scope: !615, inlinedAt: !3151)
!3153 = !DILocation(line: 48, column: 2, scope: !615, inlinedAt: !3151)
!3154 = !DILocation(line: 80, column: 9, scope: !615, inlinedAt: !3151)
!3155 = !DILocation(line: 81, column: 1, scope: !615, inlinedAt: !3151)
!3156 = !DILocation(line: 169, column: 8, scope: !604, inlinedAt: !3147)
!3157 = !DILocation(line: 171, column: 26, scope: !604, inlinedAt: !3147)
!3158 = !DILocation(line: 110, column: 94, scope: !630, inlinedAt: !3159)
!3159 = distinct !DILocation(line: 171, column: 2, scope: !604, inlinedAt: !3147)
!3160 = !DILocation(line: 112, column: 9, scope: !630, inlinedAt: !3159)
!3161 = !DILocation(line: 177, column: 27, scope: !604, inlinedAt: !3147)
!3162 = !DILocation(line: 121, column: 95, scope: !639, inlinedAt: !3163)
!3163 = distinct !DILocation(line: 177, column: 2, scope: !604, inlinedAt: !3147)
!3164 = !DILocation(line: 123, column: 9, scope: !639, inlinedAt: !3163)
!3165 = !DILocation(line: 179, column: 2, scope: !604, inlinedAt: !3147)
!3166 = !DILocation(line: 1415, column: 25, scope: !3138)
!3167 = !DILocation(line: 1419, column: 34, scope: !3168)
!3168 = distinct !DILexicalBlock(scope: !3169, file: !232, line: 1418, column: 51)
!3169 = distinct !DILexicalBlock(scope: !3138, file: !232, line: 1417, column: 6)
!3170 = !DILocation(line: 274, column: 83, scope: !810, inlinedAt: !3171)
!3171 = distinct !DILocation(line: 1419, column: 3, scope: !3168)
!3172 = !DILocation(line: 276, column: 2, scope: !810, inlinedAt: !3171)
!3173 = !DILocation(line: 276, column: 15, scope: !810, inlinedAt: !3171)
!3174 = !DILocation(line: 276, column: 28, scope: !810, inlinedAt: !3171)
!3175 = !DILocation(line: 277, column: 26, scope: !818, inlinedAt: !3171)
!3176 = !DILocation(line: 277, column: 6, scope: !818, inlinedAt: !3171)
!3177 = !DILocation(line: 277, column: 6, scope: !810, inlinedAt: !3171)
!3178 = !DILocation(line: 278, column: 15, scope: !822, inlinedAt: !3171)
!3179 = !DILocation(line: 242, column: 80, scope: !824, inlinedAt: !3180)
!3180 = distinct !DILocation(line: 278, column: 3, scope: !822, inlinedAt: !3171)
!3181 = !DILocation(line: 244, column: 33, scope: !824, inlinedAt: !3180)
!3182 = !DILocation(line: 208, column: 81, scope: !830, inlinedAt: !3183)
!3183 = distinct !DILocation(line: 244, column: 21, scope: !824, inlinedAt: !3180)
!3184 = !DILocation(line: 223, column: 9, scope: !830, inlinedAt: !3183)
!3185 = !DILocation(line: 244, column: 42, scope: !824, inlinedAt: !3180)
!3186 = !DILocation(line: 244, column: 2, scope: !824, inlinedAt: !3180)
!3187 = !DILocation(line: 279, column: 2, scope: !822, inlinedAt: !3171)
!3188 = !DILocation(line: 1421, column: 31, scope: !3138)
!3189 = !DILocation(line: 260, column: 81, scope: !843, inlinedAt: !3190)
!3190 = distinct !DILocation(line: 1421, column: 2, scope: !3138)
!3191 = !DILocation(line: 262, column: 2, scope: !843, inlinedAt: !3190)
!3192 = !DILocation(line: 262, column: 15, scope: !843, inlinedAt: !3190)
!3193 = !DILocation(line: 262, column: 28, scope: !843, inlinedAt: !3190)
!3194 = !DILocation(line: 263, column: 26, scope: !851, inlinedAt: !3190)
!3195 = !DILocation(line: 263, column: 6, scope: !851, inlinedAt: !3190)
!3196 = !DILocation(line: 263, column: 6, scope: !843, inlinedAt: !3190)
!3197 = !DILocation(line: 264, column: 12, scope: !855, inlinedAt: !3190)
!3198 = !DILocation(line: 237, column: 77, scope: !857, inlinedAt: !3199)
!3199 = distinct !DILocation(line: 264, column: 3, scope: !855, inlinedAt: !3190)
!3200 = !DILocation(line: 239, column: 30, scope: !857, inlinedAt: !3199)
!3201 = !DILocation(line: 208, column: 81, scope: !830, inlinedAt: !3202)
!3202 = distinct !DILocation(line: 239, column: 18, scope: !857, inlinedAt: !3199)
!3203 = !DILocation(line: 223, column: 9, scope: !830, inlinedAt: !3202)
!3204 = !DILocation(line: 239, column: 39, scope: !857, inlinedAt: !3199)
!3205 = !DILocation(line: 189, column: 80, scope: !867, inlinedAt: !3206)
!3206 = distinct !DILocation(line: 239, column: 2, scope: !857, inlinedAt: !3199)
!3207 = !DILocation(line: 190, column: 25, scope: !867, inlinedAt: !3206)
!3208 = !DILocation(line: 192, column: 2, scope: !867, inlinedAt: !3206)
!3209 = !DILocation(line: 192, column: 19, scope: !867, inlinedAt: !3206)
!3210 = !DILocation(line: 196, column: 33, scope: !880, inlinedAt: !3206)
!3211 = !DILocation(line: 196, column: 13, scope: !880, inlinedAt: !3206)
!3212 = !DILocation(line: 196, column: 37, scope: !880, inlinedAt: !3206)
!3213 = !DILocation(line: 196, column: 12, scope: !880, inlinedAt: !3206)
!3214 = !DILocation(line: 196, column: 100, scope: !885, inlinedAt: !3206)
!3215 = !DILocation(line: 196, column: 80, scope: !885, inlinedAt: !3206)
!3216 = !DILocation(line: 196, column: 46, scope: !880, inlinedAt: !3206)
!3217 = !DILocation(line: 196, column: 164, scope: !885, inlinedAt: !3206)
!3218 = !DILocation(line: 196, column: 9, scope: !880, inlinedAt: !3206)
!3219 = !DILocation(line: 196, column: 7, scope: !880, inlinedAt: !3206)
!3220 = !DILocation(line: 196, column: 173, scope: !892, inlinedAt: !3206)
!3221 = !DILocation(line: 196, column: 175, scope: !892, inlinedAt: !3206)
!3222 = !DILocation(line: 196, column: 2, scope: !880, inlinedAt: !3206)
!3223 = !DILocation(line: 197, column: 24, scope: !896, inlinedAt: !3206)
!3224 = !DILocation(line: 197, column: 32, scope: !896, inlinedAt: !3206)
!3225 = !DILocation(line: 197, column: 7, scope: !896, inlinedAt: !3206)
!3226 = !DILocation(line: 197, column: 35, scope: !896, inlinedAt: !3206)
!3227 = !DILocation(line: 197, column: 7, scope: !897, inlinedAt: !3206)
!3228 = !DILocation(line: 198, column: 22, scope: !903, inlinedAt: !3206)
!3229 = !DILocation(line: 199, column: 8, scope: !903, inlinedAt: !3206)
!3230 = !DILocation(line: 198, column: 4, scope: !903, inlinedAt: !3206)
!3231 = !DILocation(line: 200, column: 4, scope: !903, inlinedAt: !3206)
!3232 = !DILocation(line: 196, column: 187, scope: !892, inlinedAt: !3206)
!3233 = !DILocation(line: 196, column: 189, scope: !892, inlinedAt: !3206)
!3234 = !DILocation(line: 196, column: 186, scope: !892, inlinedAt: !3206)
!3235 = !DILocation(line: 196, column: 219, scope: !892, inlinedAt: !3206)
!3236 = !DILocation(line: 196, column: 225, scope: !892, inlinedAt: !3206)
!3237 = !DILocation(line: 196, column: 199, scope: !892, inlinedAt: !3206)
!3238 = !DILocation(line: 196, column: 247, scope: !892, inlinedAt: !3206)
!3239 = !DILocation(line: 196, column: 198, scope: !892, inlinedAt: !3206)
!3240 = !DILocation(line: 196, column: 310, scope: !916, inlinedAt: !3206)
!3241 = !DILocation(line: 196, column: 316, scope: !916, inlinedAt: !3206)
!3242 = !DILocation(line: 196, column: 290, scope: !916, inlinedAt: !3206)
!3243 = !DILocation(line: 196, column: 256, scope: !892, inlinedAt: !3206)
!3244 = !DILocation(line: 196, column: 398, scope: !916, inlinedAt: !3206)
!3245 = !DILocation(line: 196, column: 183, scope: !892, inlinedAt: !3206)
!3246 = !DILocation(line: 196, column: 2, scope: !892, inlinedAt: !3206)
!3247 = distinct !{!3247, !3222, !3248}
!3248 = !DILocation(line: 202, column: 2, scope: !880, inlinedAt: !3206)
!3249 = !DILocation(line: 204, column: 19, scope: !867, inlinedAt: !3206)
!3250 = !DILocation(line: 204, column: 24, scope: !867, inlinedAt: !3206)
!3251 = !DILocation(line: 204, column: 2, scope: !867, inlinedAt: !3206)
!3252 = !DILocation(line: 205, column: 1, scope: !867, inlinedAt: !3206)
!3253 = !DILocation(line: 265, column: 2, scope: !855, inlinedAt: !3190)
!3254 = !DILocation(line: 1422, column: 2, scope: !3138)
!3255 = !DILocation(line: 1423, column: 2, scope: !3138)
!3256 = !DILocation(line: 217, column: 76, scope: !1239, inlinedAt: !3257)
!3257 = distinct !DILocation(line: 1423, column: 2, scope: !3138)
!3258 = !DILocation(line: 217, column: 99, scope: !1239, inlinedAt: !3257)
!3259 = !DILocation(line: 219, column: 17, scope: !1239, inlinedAt: !3257)
!3260 = !DILocation(line: 283, column: 85, scope: !1250, inlinedAt: !3261)
!3261 = distinct !DILocation(line: 219, column: 2, scope: !1239, inlinedAt: !3257)
!3262 = !DILocation(line: 285, column: 9, scope: !1250, inlinedAt: !3261)
!3263 = !DILocation(line: 220, column: 28, scope: !1239, inlinedAt: !3257)
!3264 = !DILocation(line: 220, column: 9, scope: !1239, inlinedAt: !3257)
!3265 = !DILocation(line: 1424, column: 1, scope: !3138)
!3266 = distinct !DISubprogram(name: "z_impl_k_sleep", scope: !232, file: !232, line: 1478, type: !3267, scopeLine: 1479, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3269)
!3267 = !DISubroutineType(types: !3268)
!3268 = !{!225, !331}
!3269 = !{!3270, !3271, !3272}
!3270 = !DILocalVariable(name: "timeout", arg: 1, scope: !3266, file: !232, line: 1478, type: !331)
!3271 = !DILocalVariable(name: "ticks", scope: !3266, file: !232, line: 1480, type: !223)
!3272 = !DILocalVariable(name: "ret", scope: !3266, file: !232, line: 1499, type: !225)
!3273 = !DILocation(line: 1478, column: 36, scope: !3266)
!3274 = !DILocation(line: 1480, column: 2, scope: !3266)
!3275 = !DILocation(line: 1480, column: 12, scope: !3266)
!3276 = !DILocation(line: 1484, column: 2, scope: !3266)
!3277 = !DILocation(line: 1484, column: 7, scope: !3278)
!3278 = distinct !DILexicalBlock(scope: !3266, file: !232, line: 1484, column: 5)
!3279 = !DILocation(line: 1487, column: 17, scope: !3280)
!3280 = distinct !DILexicalBlock(scope: !3266, file: !232, line: 1487, column: 6)
!3281 = !DILocation(line: 1487, column: 42, scope: !3280)
!3282 = !DILocation(line: 1487, column: 23, scope: !3280)
!3283 = !DILocation(line: 1487, column: 6, scope: !3266)
!3284 = !DILocation(line: 1488, column: 36, scope: !3285)
!3285 = distinct !DILexicalBlock(scope: !3280, file: !232, line: 1487, column: 84)
!3286 = !DILocation(line: 1488, column: 3, scope: !3285)
!3287 = !DILocation(line: 1490, column: 3, scope: !3285)
!3288 = !DILocation(line: 1490, column: 8, scope: !3289)
!3289 = distinct !DILexicalBlock(scope: !3285, file: !232, line: 1490, column: 6)
!3290 = !DILocation(line: 1492, column: 3, scope: !3285)
!3291 = !DILocation(line: 1495, column: 18, scope: !3266)
!3292 = !DILocation(line: 1495, column: 8, scope: !3266)
!3293 = !DILocation(line: 1497, column: 23, scope: !3266)
!3294 = !DILocation(line: 1497, column: 10, scope: !3266)
!3295 = !DILocation(line: 1497, column: 8, scope: !3266)
!3296 = !DILocation(line: 1499, column: 2, scope: !3266)
!3297 = !DILocation(line: 1499, column: 10, scope: !3266)
!3298 = !DILocation(line: 1499, column: 128, scope: !3266)
!3299 = !DILocation(line: 1499, column: 135, scope: !3266)
!3300 = !DILocation(line: 1499, column: 204, scope: !3266)
!3301 = !DILocation(line: 1499, column: 16, scope: !3266)
!3302 = !DILocation(line: 1501, column: 2, scope: !3266)
!3303 = !DILocation(line: 1501, column: 7, scope: !3304)
!3304 = distinct !DILexicalBlock(scope: !3266, file: !232, line: 1501, column: 5)
!3305 = !DILocation(line: 1503, column: 9, scope: !3266)
!3306 = !DILocation(line: 1503, column: 2, scope: !3266)
!3307 = !DILocation(line: 1504, column: 1, scope: !3266)
!3308 = distinct !DISubprogram(name: "k_thread_suspend", scope: !3309, file: !3309, line: 345, type: !3310, scopeLine: 346, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3312)
!3309 = !DIFile(filename: "zephyr/include/generated/syscalls/kernel.h", directory: "/home/sri/zephyrproject/zephyr/build")
!3310 = !DISubroutineType(types: !3311)
!3311 = !{null, !3090}
!3312 = !{!3313}
!3313 = !DILocalVariable(name: "thread", arg: 1, scope: !3308, file: !3309, line: 345, type: !3090)
!3314 = !DILocation(line: 345, column: 45, scope: !3308)
!3315 = !DILocation(line: 354, column: 2, scope: !3308)
!3316 = !DILocation(line: 354, column: 7, scope: !3317)
!3317 = distinct !DILexicalBlock(scope: !3308, file: !3309, line: 354, column: 5)
!3318 = !{i64 137413}
!3319 = !DILocation(line: 354, column: 47, scope: !3317)
!3320 = !DILocation(line: 355, column: 26, scope: !3308)
!3321 = !DILocation(line: 355, column: 2, scope: !3308)
!3322 = !DILocation(line: 356, column: 1, scope: !3308)
!3323 = distinct !DISubprogram(name: "z_tick_sleep", scope: !232, file: !232, line: 1434, type: !3324, scopeLine: 1435, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3326)
!3324 = !DISubroutineType(types: !3325)
!3325 = !{!225, !223}
!3326 = !{!3327, !3328, !3329, !3330}
!3327 = !DILocalVariable(name: "ticks", arg: 1, scope: !3323, file: !232, line: 1434, type: !223)
!3328 = !DILocalVariable(name: "expected_wakeup_ticks", scope: !3323, file: !232, line: 1437, type: !98)
!3329 = !DILocalVariable(name: "timeout", scope: !3323, file: !232, line: 1449, type: !331)
!3330 = !DILocalVariable(name: "key", scope: !3323, file: !232, line: 1456, type: !593)
!3331 = !DILocation(line: 1434, column: 39, scope: !3323)
!3332 = !DILocation(line: 1437, column: 2, scope: !3323)
!3333 = !DILocation(line: 1437, column: 11, scope: !3323)
!3334 = !DILocation(line: 1441, column: 2, scope: !3323)
!3335 = !DILocation(line: 1441, column: 88, scope: !3336)
!3336 = distinct !DILexicalBlock(scope: !3337, file: !232, line: 1441, column: 86)
!3337 = distinct !DILexicalBlock(scope: !3338, file: !232, line: 1441, column: 11)
!3338 = distinct !DILexicalBlock(scope: !3323, file: !232, line: 1441, column: 5)
!3339 = !DILocation(line: 1441, column: 433, scope: !3338)
!3340 = !DILocation(line: 1444, column: 6, scope: !3341)
!3341 = distinct !DILexicalBlock(scope: !3323, file: !232, line: 1444, column: 6)
!3342 = !DILocation(line: 1444, column: 12, scope: !3341)
!3343 = !DILocation(line: 1444, column: 6, scope: !3323)
!3344 = !DILocation(line: 1445, column: 3, scope: !3345)
!3345 = distinct !DILexicalBlock(scope: !3341, file: !232, line: 1444, column: 18)
!3346 = !DILocation(line: 1446, column: 3, scope: !3345)
!3347 = !DILocation(line: 1449, column: 2, scope: !3323)
!3348 = !DILocation(line: 1449, column: 14, scope: !3323)
!3349 = !DILocation(line: 1449, column: 39, scope: !3323)
!3350 = !DILocation(line: 1449, column: 51, scope: !3323)
!3351 = !DILocation(line: 1450, column: 31, scope: !3352)
!3352 = distinct !DILexicalBlock(scope: !3323, file: !232, line: 1450, column: 6)
!3353 = !DILocation(line: 1450, column: 28, scope: !3352)
!3354 = !DILocation(line: 1450, column: 39, scope: !3352)
!3355 = !DILocation(line: 1450, column: 6, scope: !3323)
!3356 = !DILocation(line: 1451, column: 27, scope: !3357)
!3357 = distinct !DILexicalBlock(scope: !3352, file: !232, line: 1450, column: 45)
!3358 = !DILocation(line: 1451, column: 35, scope: !3357)
!3359 = !DILocation(line: 1451, column: 33, scope: !3357)
!3360 = !DILocation(line: 1451, column: 25, scope: !3357)
!3361 = !DILocation(line: 1452, column: 2, scope: !3357)
!3362 = !DILocation(line: 1453, column: 52, scope: !3363)
!3363 = distinct !DILexicalBlock(scope: !3352, file: !232, line: 1452, column: 9)
!3364 = !DILocation(line: 1453, column: 49, scope: !3363)
!3365 = !DILocation(line: 1453, column: 27, scope: !3363)
!3366 = !DILocation(line: 1453, column: 25, scope: !3363)
!3367 = !DILocation(line: 1456, column: 2, scope: !3323)
!3368 = !DILocation(line: 1456, column: 19, scope: !3323)
!3369 = !DILocation(line: 160, column: 94, scope: !604, inlinedAt: !3370)
!3370 = distinct !DILocation(line: 1456, column: 25, scope: !3323)
!3371 = !DILocation(line: 162, column: 9, scope: !604, inlinedAt: !3370)
!3372 = !DILocation(line: 163, column: 19, scope: !604, inlinedAt: !3370)
!3373 = !DILocation(line: 44, column: 2, scope: !615, inlinedAt: !3374)
!3374 = distinct !DILocation(line: 169, column: 10, scope: !604, inlinedAt: !3370)
!3375 = !DILocation(line: 44, column: 15, scope: !615, inlinedAt: !3374)
!3376 = !DILocation(line: 48, column: 2, scope: !615, inlinedAt: !3374)
!3377 = !DILocation(line: 80, column: 9, scope: !615, inlinedAt: !3374)
!3378 = !DILocation(line: 81, column: 1, scope: !615, inlinedAt: !3374)
!3379 = !DILocation(line: 169, column: 8, scope: !604, inlinedAt: !3370)
!3380 = !DILocation(line: 171, column: 26, scope: !604, inlinedAt: !3370)
!3381 = !DILocation(line: 110, column: 94, scope: !630, inlinedAt: !3382)
!3382 = distinct !DILocation(line: 171, column: 2, scope: !604, inlinedAt: !3370)
!3383 = !DILocation(line: 112, column: 9, scope: !630, inlinedAt: !3382)
!3384 = !DILocation(line: 177, column: 27, scope: !604, inlinedAt: !3370)
!3385 = !DILocation(line: 121, column: 95, scope: !639, inlinedAt: !3386)
!3386 = distinct !DILocation(line: 177, column: 2, scope: !604, inlinedAt: !3370)
!3387 = !DILocation(line: 123, column: 9, scope: !639, inlinedAt: !3386)
!3388 = !DILocation(line: 179, column: 2, scope: !604, inlinedAt: !3370)
!3389 = !DILocation(line: 1456, column: 25, scope: !3323)
!3390 = !DILocation(line: 1459, column: 36, scope: !3323)
!3391 = !DILocation(line: 1459, column: 18, scope: !3323)
!3392 = !DILocation(line: 1461, column: 33, scope: !3323)
!3393 = !DILocation(line: 1461, column: 2, scope: !3323)
!3394 = !DILocation(line: 1462, column: 39, scope: !3323)
!3395 = !DILocation(line: 1462, column: 2, scope: !3323)
!3396 = !DILocation(line: 1463, column: 45, scope: !3323)
!3397 = !DILocation(line: 1463, column: 2, scope: !3323)
!3398 = !DILocation(line: 1465, column: 8, scope: !3323)
!3399 = !DILocation(line: 217, column: 76, scope: !1239, inlinedAt: !3400)
!3400 = distinct !DILocation(line: 1465, column: 8, scope: !3323)
!3401 = !DILocation(line: 217, column: 99, scope: !1239, inlinedAt: !3400)
!3402 = !DILocation(line: 219, column: 17, scope: !1239, inlinedAt: !3400)
!3403 = !DILocation(line: 283, column: 85, scope: !1250, inlinedAt: !3404)
!3404 = distinct !DILocation(line: 219, column: 2, scope: !1239, inlinedAt: !3400)
!3405 = !DILocation(line: 285, column: 9, scope: !1250, inlinedAt: !3404)
!3406 = !DILocation(line: 220, column: 28, scope: !1239, inlinedAt: !3400)
!3407 = !DILocation(line: 220, column: 9, scope: !1239, inlinedAt: !3400)
!3408 = !DILocation(line: 1469, column: 21, scope: !3323)
!3409 = !DILocation(line: 1469, column: 10, scope: !3323)
!3410 = !DILocation(line: 1469, column: 45, scope: !3323)
!3411 = !DILocation(line: 1469, column: 43, scope: !3323)
!3412 = !DILocation(line: 1469, column: 8, scope: !3323)
!3413 = !DILocation(line: 1470, column: 6, scope: !3414)
!3414 = distinct !DILexicalBlock(scope: !3323, file: !232, line: 1470, column: 6)
!3415 = !DILocation(line: 1470, column: 12, scope: !3414)
!3416 = !DILocation(line: 1470, column: 6, scope: !3323)
!3417 = !DILocation(line: 1471, column: 10, scope: !3418)
!3418 = distinct !DILexicalBlock(scope: !3414, file: !232, line: 1470, column: 17)
!3419 = !DILocation(line: 1471, column: 3, scope: !3418)
!3420 = !DILocation(line: 1475, column: 2, scope: !3323)
!3421 = !DILocation(line: 1476, column: 1, scope: !3323)
!3422 = distinct !DISubprogram(name: "z_impl_k_usleep", scope: !232, file: !232, line: 1514, type: !3423, scopeLine: 1515, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3425)
!3423 = !DISubroutineType(types: !3424)
!3424 = !{!225, !192}
!3425 = !{!3426, !3427}
!3426 = !DILocalVariable(name: "us", arg: 1, scope: !3422, file: !232, line: 1514, type: !192)
!3427 = !DILocalVariable(name: "ticks", scope: !3422, file: !232, line: 1516, type: !225)
!3428 = !DILocation(line: 1514, column: 29, scope: !3422)
!3429 = !DILocation(line: 1516, column: 2, scope: !3422)
!3430 = !DILocation(line: 1516, column: 10, scope: !3422)
!3431 = !DILocation(line: 1518, column: 2, scope: !3422)
!3432 = !DILocation(line: 1518, column: 7, scope: !3433)
!3433 = distinct !DILexicalBlock(scope: !3422, file: !232, line: 1518, column: 5)
!3434 = !DILocation(line: 1520, column: 128, scope: !3422)
!3435 = !DILocation(line: 1520, column: 116, scope: !3422)
!3436 = !DILocation(line: 1520, column: 132, scope: !3422)
!3437 = !DILocation(line: 1520, column: 207, scope: !3422)
!3438 = !DILocation(line: 1520, column: 10, scope: !3422)
!3439 = !DILocation(line: 1520, column: 8, scope: !3422)
!3440 = !DILocation(line: 1521, column: 23, scope: !3422)
!3441 = !DILocation(line: 1521, column: 10, scope: !3422)
!3442 = !DILocation(line: 1521, column: 8, scope: !3422)
!3443 = !DILocation(line: 1523, column: 2, scope: !3422)
!3444 = !DILocation(line: 1523, column: 7, scope: !3445)
!3445 = distinct !DILexicalBlock(scope: !3422, file: !232, line: 1523, column: 5)
!3446 = !DILocation(line: 1525, column: 303, scope: !3422)
!3447 = !DILocation(line: 1525, column: 291, scope: !3422)
!3448 = !DILocation(line: 1525, column: 309, scope: !3422)
!3449 = !DILocation(line: 1525, column: 9, scope: !3422)
!3450 = !DILocation(line: 1526, column: 1, scope: !3422)
!3451 = !DILocation(line: 1525, column: 2, scope: !3422)
!3452 = distinct !DISubprogram(name: "z_impl_k_wakeup", scope: !232, file: !232, line: 1536, type: !3310, scopeLine: 1537, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3453)
!3453 = !{!3454}
!3454 = !DILocalVariable(name: "thread", arg: 1, scope: !3452, file: !232, line: 1536, type: !3090)
!3455 = !DILocation(line: 1536, column: 30, scope: !3452)
!3456 = !DILocation(line: 1538, column: 2, scope: !3452)
!3457 = !DILocation(line: 1538, column: 7, scope: !3458)
!3458 = distinct !DILexicalBlock(scope: !3452, file: !232, line: 1538, column: 5)
!3459 = !DILocation(line: 1540, column: 26, scope: !3460)
!3460 = distinct !DILexicalBlock(scope: !3452, file: !232, line: 1540, column: 6)
!3461 = !DILocation(line: 1540, column: 6, scope: !3460)
!3462 = !DILocation(line: 1540, column: 6, scope: !3452)
!3463 = !DILocation(line: 1541, column: 3, scope: !3464)
!3464 = distinct !DILexicalBlock(scope: !3460, file: !232, line: 1540, column: 35)
!3465 = !DILocation(line: 1544, column: 29, scope: !3466)
!3466 = distinct !DILexicalBlock(scope: !3452, file: !232, line: 1544, column: 6)
!3467 = !DILocation(line: 1544, column: 6, scope: !3466)
!3468 = !DILocation(line: 1544, column: 37, scope: !3466)
!3469 = !DILocation(line: 1544, column: 6, scope: !3452)
!3470 = !DILocation(line: 1546, column: 7, scope: !3471)
!3471 = distinct !DILexicalBlock(scope: !3472, file: !232, line: 1546, column: 7)
!3472 = distinct !DILexicalBlock(scope: !3466, file: !232, line: 1544, column: 42)
!3473 = !DILocation(line: 1546, column: 15, scope: !3471)
!3474 = !DILocation(line: 1546, column: 20, scope: !3471)
!3475 = !DILocation(line: 1546, column: 33, scope: !3471)
!3476 = !DILocation(line: 1546, column: 7, scope: !3472)
!3477 = !DILocation(line: 1547, column: 4, scope: !3478)
!3478 = distinct !DILexicalBlock(scope: !3471, file: !232, line: 1546, column: 52)
!3479 = !DILocation(line: 1549, column: 2, scope: !3472)
!3480 = !DILocation(line: 1551, column: 33, scope: !3452)
!3481 = !DILocation(line: 1551, column: 2, scope: !3452)
!3482 = !DILocation(line: 1552, column: 17, scope: !3452)
!3483 = !DILocation(line: 1552, column: 2, scope: !3452)
!3484 = !DILocation(line: 1554, column: 2, scope: !3452)
!3485 = !DILocation(line: 820, column: 3, scope: !2493, inlinedAt: !3486)
!3486 = distinct !DILocation(line: 48, column: 10, scope: !2500, inlinedAt: !3487)
!3487 = distinct !DILocation(line: 1556, column: 7, scope: !3488)
!3488 = distinct !DILexicalBlock(scope: !3452, file: !232, line: 1556, column: 6)
!3489 = !DILocation(line: 820, column: 12, scope: !2493, inlinedAt: !3486)
!3490 = !DILocation(line: 822, column: 3, scope: !2493, inlinedAt: !3486)
!3491 = !DILocation(line: 823, column: 10, scope: !2493, inlinedAt: !3486)
!3492 = !DILocation(line: 824, column: 1, scope: !2493, inlinedAt: !3486)
!3493 = !DILocation(line: 48, column: 9, scope: !2500, inlinedAt: !3487)
!3494 = !DILocation(line: 1556, column: 6, scope: !3452)
!3495 = !DILocation(line: 1557, column: 3, scope: !3496)
!3496 = distinct !DILexicalBlock(scope: !3488, file: !232, line: 1556, column: 25)
!3497 = !DILocation(line: 1558, column: 2, scope: !3496)
!3498 = !DILocation(line: 1559, column: 1, scope: !3452)
!3499 = distinct !DISubprogram(name: "z_is_thread_pending", scope: !784, file: !784, line: 103, type: !519, scopeLine: 104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3500)
!3500 = !{!3501}
!3501 = !DILocalVariable(name: "thread", arg: 1, scope: !3499, file: !784, line: 103, type: !101)
!3502 = !DILocation(line: 103, column: 58, scope: !3499)
!3503 = !DILocation(line: 105, column: 10, scope: !3499)
!3504 = !DILocation(line: 105, column: 18, scope: !3499)
!3505 = !DILocation(line: 105, column: 23, scope: !3499)
!3506 = !DILocation(line: 105, column: 36, scope: !3499)
!3507 = !DILocation(line: 105, column: 54, scope: !3499)
!3508 = !DILocation(line: 105, column: 2, scope: !3499)
!3509 = distinct !DISubprogram(name: "z_impl_k_sched_current_thread_query", scope: !232, file: !232, line: 1592, type: !3510, scopeLine: 1593, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3512)
!3510 = !DISubroutineType(types: !3511)
!3511 = !{!3090}
!3512 = !{!3513}
!3513 = !DILocalVariable(name: "ret", scope: !3509, file: !232, line: 1602, type: !3090)
!3514 = !DILocation(line: 1602, column: 2, scope: !3509)
!3515 = !DILocation(line: 1602, column: 10, scope: !3509)
!3516 = !DILocation(line: 1602, column: 36, scope: !3509)
!3517 = !DILocation(line: 1607, column: 9, scope: !3509)
!3518 = !DILocation(line: 1608, column: 1, scope: !3509)
!3519 = !DILocation(line: 1607, column: 2, scope: !3509)
!3520 = distinct !DISubprogram(name: "z_impl_k_is_preempt_thread", scope: !232, file: !232, line: 1618, type: !3521, scopeLine: 1619, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !213)
!3521 = !DISubroutineType(types: !3522)
!3522 = !{!192}
!3523 = !DILocation(line: 820, column: 3, scope: !2493, inlinedAt: !3524)
!3524 = distinct !DILocation(line: 48, column: 10, scope: !2500, inlinedAt: !3525)
!3525 = distinct !DILocation(line: 1620, column: 10, scope: !3520)
!3526 = !DILocation(line: 820, column: 12, scope: !2493, inlinedAt: !3524)
!3527 = !DILocation(line: 822, column: 3, scope: !2493, inlinedAt: !3524)
!3528 = !DILocation(line: 823, column: 10, scope: !2493, inlinedAt: !3524)
!3529 = !DILocation(line: 824, column: 1, scope: !2493, inlinedAt: !3524)
!3530 = !DILocation(line: 48, column: 9, scope: !2500, inlinedAt: !3525)
!3531 = !DILocation(line: 1620, column: 27, scope: !3520)
!3532 = !DILocation(line: 1620, column: 57, scope: !3520)
!3533 = !DILocation(line: 1620, column: 30, scope: !3520)
!3534 = !DILocation(line: 0, scope: !3520)
!3535 = !DILocation(line: 1620, column: 2, scope: !3520)
!3536 = distinct !DISubprogram(name: "is_preempt", scope: !232, file: !232, line: 63, type: !572, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3537)
!3537 = !{!3538}
!3538 = !DILocalVariable(name: "thread", arg: 1, scope: !3536, file: !232, line: 63, type: !101)
!3539 = !DILocation(line: 63, column: 47, scope: !3536)
!3540 = !DILocation(line: 66, column: 9, scope: !3536)
!3541 = !DILocation(line: 66, column: 17, scope: !3536)
!3542 = !DILocation(line: 66, column: 22, scope: !3536)
!3543 = !DILocation(line: 66, column: 30, scope: !3536)
!3544 = !DILocation(line: 66, column: 2, scope: !3536)
!3545 = distinct !DISubprogram(name: "z_thread_abort", scope: !232, file: !232, line: 1761, type: !483, scopeLine: 1762, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3546)
!3546 = !{!3547, !3548, !3549}
!3547 = !DILocalVariable(name: "thread", arg: 1, scope: !3545, file: !232, line: 1761, type: !101)
!3548 = !DILocalVariable(name: "key", scope: !3545, file: !232, line: 1763, type: !593)
!3549 = !DILocalVariable(name: "r0", scope: !3550, file: !232, line: 1768, type: !98)
!3550 = distinct !DILexicalBlock(scope: !3551, file: !232, line: 1765, column: 57)
!3551 = distinct !DILexicalBlock(scope: !3545, file: !232, line: 1765, column: 6)
!3552 = !DILocation(line: 1761, column: 38, scope: !3545)
!3553 = !DILocation(line: 1763, column: 2, scope: !3545)
!3554 = !DILocation(line: 1763, column: 19, scope: !3545)
!3555 = !DILocation(line: 160, column: 94, scope: !604, inlinedAt: !3556)
!3556 = distinct !DILocation(line: 1763, column: 25, scope: !3545)
!3557 = !DILocation(line: 162, column: 9, scope: !604, inlinedAt: !3556)
!3558 = !DILocation(line: 163, column: 19, scope: !604, inlinedAt: !3556)
!3559 = !DILocation(line: 44, column: 2, scope: !615, inlinedAt: !3560)
!3560 = distinct !DILocation(line: 169, column: 10, scope: !604, inlinedAt: !3556)
!3561 = !DILocation(line: 44, column: 15, scope: !615, inlinedAt: !3560)
!3562 = !DILocation(line: 48, column: 2, scope: !615, inlinedAt: !3560)
!3563 = !DILocation(line: 80, column: 9, scope: !615, inlinedAt: !3560)
!3564 = !DILocation(line: 81, column: 1, scope: !615, inlinedAt: !3560)
!3565 = !DILocation(line: 169, column: 8, scope: !604, inlinedAt: !3556)
!3566 = !DILocation(line: 171, column: 26, scope: !604, inlinedAt: !3556)
!3567 = !DILocation(line: 110, column: 94, scope: !630, inlinedAt: !3568)
!3568 = distinct !DILocation(line: 171, column: 2, scope: !604, inlinedAt: !3556)
!3569 = !DILocation(line: 112, column: 9, scope: !630, inlinedAt: !3568)
!3570 = !DILocation(line: 177, column: 27, scope: !604, inlinedAt: !3556)
!3571 = !DILocation(line: 121, column: 95, scope: !639, inlinedAt: !3572)
!3572 = distinct !DILocation(line: 177, column: 2, scope: !604, inlinedAt: !3556)
!3573 = !DILocation(line: 123, column: 9, scope: !639, inlinedAt: !3572)
!3574 = !DILocation(line: 179, column: 2, scope: !604, inlinedAt: !3556)
!3575 = !DILocation(line: 1763, column: 25, scope: !3545)
!3576 = !DILocation(line: 1765, column: 7, scope: !3551)
!3577 = !DILocation(line: 1765, column: 15, scope: !3551)
!3578 = !DILocation(line: 1765, column: 20, scope: !3551)
!3579 = !DILocation(line: 1765, column: 33, scope: !3551)
!3580 = !DILocation(line: 1765, column: 51, scope: !3551)
!3581 = !DILocation(line: 1765, column: 6, scope: !3545)
!3582 = !DILocation(line: 1766, column: 3, scope: !3550)
!3583 = !DILocation(line: 235, column: 84, scope: !662, inlinedAt: !3584)
!3584 = distinct !DILocation(line: 1766, column: 3, scope: !3550)
!3585 = !DILocation(line: 236, column: 23, scope: !662, inlinedAt: !3584)
!3586 = !DILocation(line: 238, column: 9, scope: !662, inlinedAt: !3584)
!3587 = !DILocation(line: 261, column: 22, scope: !662, inlinedAt: !3584)
!3588 = !DILocation(line: 88, column: 80, scope: !673, inlinedAt: !3589)
!3589 = distinct !DILocation(line: 261, column: 2, scope: !662, inlinedAt: !3584)
!3590 = !DILocation(line: 91, column: 6, scope: !680, inlinedAt: !3589)
!3591 = !DILocation(line: 91, column: 10, scope: !680, inlinedAt: !3589)
!3592 = !DILocation(line: 91, column: 6, scope: !673, inlinedAt: !3589)
!3593 = !DILocation(line: 92, column: 3, scope: !684, inlinedAt: !3589)
!3594 = !DILocation(line: 94, column: 2, scope: !673, inlinedAt: !3589)
!3595 = !DILocation(line: 114, column: 1, scope: !673, inlinedAt: !3589)
!3596 = !DILocation(line: 1768, column: 3, scope: !3550)
!3597 = !DILocation(line: 1768, column: 21, scope: !3550)
!3598 = !DILocation(line: 1768, column: 60, scope: !3550)
!3599 = !DILocation(line: 1768, column: 123, scope: !3600)
!3600 = distinct !DILexicalBlock(scope: !3550, file: !232, line: 1768, column: 63)
!3601 = !DILocation(line: 1768, column: 65, scope: !3600)
!3602 = !{i64 457792, i64 457802, i64 457818}
!3603 = !DILocation(line: 1768, column: 154, scope: !3600)
!3604 = !DILocation(line: 1770, column: 2, scope: !3551)
!3605 = !DILocation(line: 1772, column: 7, scope: !3606)
!3606 = distinct !DILexicalBlock(scope: !3545, file: !232, line: 1772, column: 6)
!3607 = !DILocation(line: 1772, column: 15, scope: !3606)
!3608 = !DILocation(line: 1772, column: 20, scope: !3606)
!3609 = !DILocation(line: 1772, column: 33, scope: !3606)
!3610 = !DILocation(line: 1772, column: 51, scope: !3606)
!3611 = !DILocation(line: 1772, column: 6, scope: !3545)
!3612 = !DILocation(line: 1773, column: 3, scope: !3613)
!3613 = distinct !DILexicalBlock(scope: !3606, file: !232, line: 1772, column: 58)
!3614 = !DILocation(line: 235, column: 84, scope: !662, inlinedAt: !3615)
!3615 = distinct !DILocation(line: 1773, column: 3, scope: !3613)
!3616 = !DILocation(line: 236, column: 23, scope: !662, inlinedAt: !3615)
!3617 = !DILocation(line: 238, column: 9, scope: !662, inlinedAt: !3615)
!3618 = !DILocation(line: 261, column: 22, scope: !662, inlinedAt: !3615)
!3619 = !DILocation(line: 88, column: 80, scope: !673, inlinedAt: !3620)
!3620 = distinct !DILocation(line: 261, column: 2, scope: !662, inlinedAt: !3615)
!3621 = !DILocation(line: 91, column: 6, scope: !680, inlinedAt: !3620)
!3622 = !DILocation(line: 91, column: 10, scope: !680, inlinedAt: !3620)
!3623 = !DILocation(line: 91, column: 6, scope: !673, inlinedAt: !3620)
!3624 = !DILocation(line: 92, column: 3, scope: !684, inlinedAt: !3620)
!3625 = !DILocation(line: 94, column: 2, scope: !673, inlinedAt: !3620)
!3626 = !DILocation(line: 114, column: 1, scope: !673, inlinedAt: !3620)
!3627 = !DILocation(line: 1774, column: 3, scope: !3613)
!3628 = !DILocation(line: 1818, column: 13, scope: !3545)
!3629 = !DILocation(line: 1818, column: 2, scope: !3545)
!3630 = !DILocation(line: 1819, column: 6, scope: !3631)
!3631 = distinct !DILexicalBlock(scope: !3545, file: !232, line: 1819, column: 6)
!3632 = !DILocation(line: 1819, column: 32, scope: !3631)
!3633 = !DILocation(line: 1819, column: 13, scope: !3631)
!3634 = !DILocation(line: 1819, column: 40, scope: !3631)
!3635 = !DILocation(line: 820, column: 3, scope: !2493, inlinedAt: !3636)
!3636 = distinct !DILocation(line: 48, column: 10, scope: !2500, inlinedAt: !3637)
!3637 = distinct !DILocation(line: 1819, column: 44, scope: !3631)
!3638 = !DILocation(line: 820, column: 12, scope: !2493, inlinedAt: !3636)
!3639 = !DILocation(line: 822, column: 3, scope: !2493, inlinedAt: !3636)
!3640 = !DILocation(line: 823, column: 10, scope: !2493, inlinedAt: !3636)
!3641 = !DILocation(line: 824, column: 1, scope: !2493, inlinedAt: !3636)
!3642 = !DILocation(line: 48, column: 9, scope: !2500, inlinedAt: !3637)
!3643 = !DILocation(line: 1819, column: 6, scope: !3545)
!3644 = !DILocation(line: 1820, column: 3, scope: !3645)
!3645 = distinct !DILexicalBlock(scope: !3631, file: !232, line: 1819, column: 62)
!3646 = !DILocation(line: 217, column: 76, scope: !1239, inlinedAt: !3647)
!3647 = distinct !DILocation(line: 1820, column: 3, scope: !3645)
!3648 = !DILocation(line: 217, column: 99, scope: !1239, inlinedAt: !3647)
!3649 = !DILocation(line: 219, column: 17, scope: !1239, inlinedAt: !3647)
!3650 = !DILocation(line: 283, column: 85, scope: !1250, inlinedAt: !3651)
!3651 = distinct !DILocation(line: 219, column: 2, scope: !1239, inlinedAt: !3647)
!3652 = !DILocation(line: 285, column: 9, scope: !1250, inlinedAt: !3651)
!3653 = !DILocation(line: 220, column: 28, scope: !1239, inlinedAt: !3647)
!3654 = !DILocation(line: 220, column: 9, scope: !1239, inlinedAt: !3647)
!3655 = !DILocation(line: 1822, column: 2, scope: !3645)
!3656 = !DILocation(line: 1823, column: 2, scope: !3545)
!3657 = !DILocation(line: 235, column: 84, scope: !662, inlinedAt: !3658)
!3658 = distinct !DILocation(line: 1823, column: 2, scope: !3545)
!3659 = !DILocation(line: 236, column: 23, scope: !662, inlinedAt: !3658)
!3660 = !DILocation(line: 238, column: 9, scope: !662, inlinedAt: !3658)
!3661 = !DILocation(line: 261, column: 22, scope: !662, inlinedAt: !3658)
!3662 = !DILocation(line: 88, column: 80, scope: !673, inlinedAt: !3663)
!3663 = distinct !DILocation(line: 261, column: 2, scope: !662, inlinedAt: !3658)
!3664 = !DILocation(line: 91, column: 6, scope: !680, inlinedAt: !3663)
!3665 = !DILocation(line: 91, column: 10, scope: !680, inlinedAt: !3663)
!3666 = !DILocation(line: 91, column: 6, scope: !673, inlinedAt: !3663)
!3667 = !DILocation(line: 92, column: 3, scope: !684, inlinedAt: !3663)
!3668 = !DILocation(line: 94, column: 2, scope: !673, inlinedAt: !3663)
!3669 = !DILocation(line: 114, column: 1, scope: !673, inlinedAt: !3663)
!3670 = !DILocation(line: 1824, column: 1, scope: !3545)
!3671 = distinct !DISubprogram(name: "end_thread", scope: !232, file: !232, line: 1715, type: !483, scopeLine: 1716, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3672)
!3672 = !{!3673}
!3673 = !DILocalVariable(name: "thread", arg: 1, scope: !3671, file: !232, line: 1715, type: !101)
!3674 = !DILocation(line: 1715, column: 41, scope: !3671)
!3675 = !DILocation(line: 1720, column: 7, scope: !3676)
!3676 = distinct !DILexicalBlock(scope: !3671, file: !232, line: 1720, column: 6)
!3677 = !DILocation(line: 1720, column: 15, scope: !3676)
!3678 = !DILocation(line: 1720, column: 20, scope: !3676)
!3679 = !DILocation(line: 1720, column: 33, scope: !3676)
!3680 = !DILocation(line: 1720, column: 51, scope: !3676)
!3681 = !DILocation(line: 1720, column: 6, scope: !3671)
!3682 = !DILocation(line: 1721, column: 3, scope: !3683)
!3683 = distinct !DILexicalBlock(scope: !3676, file: !232, line: 1720, column: 58)
!3684 = !DILocation(line: 1721, column: 11, scope: !3683)
!3685 = !DILocation(line: 1721, column: 16, scope: !3683)
!3686 = !DILocation(line: 1721, column: 29, scope: !3683)
!3687 = !DILocation(line: 1722, column: 3, scope: !3683)
!3688 = !DILocation(line: 1722, column: 11, scope: !3683)
!3689 = !DILocation(line: 1722, column: 16, scope: !3683)
!3690 = !DILocation(line: 1722, column: 29, scope: !3683)
!3691 = !DILocation(line: 1723, column: 26, scope: !3692)
!3692 = distinct !DILexicalBlock(scope: !3683, file: !232, line: 1723, column: 7)
!3693 = !DILocation(line: 1723, column: 7, scope: !3692)
!3694 = !DILocation(line: 1723, column: 7, scope: !3683)
!3695 = !DILocation(line: 1724, column: 19, scope: !3696)
!3696 = distinct !DILexicalBlock(scope: !3692, file: !232, line: 1723, column: 35)
!3697 = !DILocation(line: 274, column: 83, scope: !810, inlinedAt: !3698)
!3698 = distinct !DILocation(line: 1724, column: 4, scope: !3696)
!3699 = !DILocation(line: 276, column: 2, scope: !810, inlinedAt: !3698)
!3700 = !DILocation(line: 276, column: 15, scope: !810, inlinedAt: !3698)
!3701 = !DILocation(line: 276, column: 28, scope: !810, inlinedAt: !3698)
!3702 = !DILocation(line: 277, column: 26, scope: !818, inlinedAt: !3698)
!3703 = !DILocation(line: 277, column: 6, scope: !818, inlinedAt: !3698)
!3704 = !DILocation(line: 277, column: 6, scope: !810, inlinedAt: !3698)
!3705 = !DILocation(line: 278, column: 15, scope: !822, inlinedAt: !3698)
!3706 = !DILocation(line: 242, column: 80, scope: !824, inlinedAt: !3707)
!3707 = distinct !DILocation(line: 278, column: 3, scope: !822, inlinedAt: !3698)
!3708 = !DILocation(line: 244, column: 33, scope: !824, inlinedAt: !3707)
!3709 = !DILocation(line: 208, column: 81, scope: !830, inlinedAt: !3710)
!3710 = distinct !DILocation(line: 244, column: 21, scope: !824, inlinedAt: !3707)
!3711 = !DILocation(line: 223, column: 9, scope: !830, inlinedAt: !3710)
!3712 = !DILocation(line: 244, column: 42, scope: !824, inlinedAt: !3707)
!3713 = !DILocation(line: 244, column: 2, scope: !824, inlinedAt: !3707)
!3714 = !DILocation(line: 279, column: 2, scope: !822, inlinedAt: !3698)
!3715 = !DILocation(line: 1725, column: 3, scope: !3696)
!3716 = !DILocation(line: 1726, column: 7, scope: !3717)
!3717 = distinct !DILexicalBlock(scope: !3683, file: !232, line: 1726, column: 7)
!3718 = !DILocation(line: 1726, column: 15, scope: !3717)
!3719 = !DILocation(line: 1726, column: 20, scope: !3717)
!3720 = !DILocation(line: 1726, column: 30, scope: !3717)
!3721 = !DILocation(line: 1726, column: 7, scope: !3683)
!3722 = !DILocation(line: 1727, column: 29, scope: !3723)
!3723 = distinct !DILexicalBlock(scope: !3717, file: !232, line: 1726, column: 36)
!3724 = !DILocation(line: 1727, column: 4, scope: !3723)
!3725 = !DILocation(line: 1728, column: 3, scope: !3723)
!3726 = !DILocation(line: 1729, column: 32, scope: !3683)
!3727 = !DILocation(line: 1729, column: 9, scope: !3683)
!3728 = !DILocation(line: 1730, column: 15, scope: !3683)
!3729 = !DILocation(line: 1730, column: 23, scope: !3683)
!3730 = !DILocation(line: 1730, column: 3, scope: !3683)
!3731 = !DILocation(line: 1731, column: 3, scope: !3683)
!3732 = !DILocation(line: 1737, column: 3, scope: !3683)
!3733 = !DILocation(line: 1737, column: 8, scope: !3734)
!3734 = distinct !DILexicalBlock(scope: !3683, file: !232, line: 1737, column: 6)
!3735 = !DILocation(line: 1739, column: 3, scope: !3683)
!3736 = !DILocation(line: 1739, column: 8, scope: !3737)
!3737 = distinct !DILexicalBlock(scope: !3683, file: !232, line: 1739, column: 6)
!3738 = !DILocation(line: 1758, column: 2, scope: !3683)
!3739 = !DILocation(line: 1759, column: 1, scope: !3671)
!3740 = distinct !DISubprogram(name: "z_impl_k_thread_join", scope: !232, file: !232, line: 1837, type: !3741, scopeLine: 1838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3743)
!3741 = !DISubroutineType(types: !3742)
!3742 = !{!192, !101, !331}
!3743 = !{!3744, !3745, !3746, !3747}
!3744 = !DILocalVariable(name: "thread", arg: 1, scope: !3740, file: !232, line: 1837, type: !101)
!3745 = !DILocalVariable(name: "timeout", arg: 2, scope: !3740, file: !232, line: 1837, type: !331)
!3746 = !DILocalVariable(name: "key", scope: !3740, file: !232, line: 1839, type: !593)
!3747 = !DILocalVariable(name: "ret", scope: !3740, file: !232, line: 1840, type: !192)
!3748 = !DILocation(line: 1837, column: 43, scope: !3740)
!3749 = !DILocation(line: 1837, column: 63, scope: !3740)
!3750 = !DILocation(line: 1839, column: 2, scope: !3740)
!3751 = !DILocation(line: 1839, column: 19, scope: !3740)
!3752 = !DILocation(line: 160, column: 94, scope: !604, inlinedAt: !3753)
!3753 = distinct !DILocation(line: 1839, column: 25, scope: !3740)
!3754 = !DILocation(line: 162, column: 9, scope: !604, inlinedAt: !3753)
!3755 = !DILocation(line: 163, column: 19, scope: !604, inlinedAt: !3753)
!3756 = !DILocation(line: 44, column: 2, scope: !615, inlinedAt: !3757)
!3757 = distinct !DILocation(line: 169, column: 10, scope: !604, inlinedAt: !3753)
!3758 = !DILocation(line: 44, column: 15, scope: !615, inlinedAt: !3757)
!3759 = !DILocation(line: 48, column: 2, scope: !615, inlinedAt: !3757)
!3760 = !DILocation(line: 80, column: 9, scope: !615, inlinedAt: !3757)
!3761 = !DILocation(line: 81, column: 1, scope: !615, inlinedAt: !3757)
!3762 = !DILocation(line: 169, column: 8, scope: !604, inlinedAt: !3753)
!3763 = !DILocation(line: 171, column: 26, scope: !604, inlinedAt: !3753)
!3764 = !DILocation(line: 110, column: 94, scope: !630, inlinedAt: !3765)
!3765 = distinct !DILocation(line: 171, column: 2, scope: !604, inlinedAt: !3753)
!3766 = !DILocation(line: 112, column: 9, scope: !630, inlinedAt: !3765)
!3767 = !DILocation(line: 177, column: 27, scope: !604, inlinedAt: !3753)
!3768 = !DILocation(line: 121, column: 95, scope: !639, inlinedAt: !3769)
!3769 = distinct !DILocation(line: 177, column: 2, scope: !604, inlinedAt: !3753)
!3770 = !DILocation(line: 123, column: 9, scope: !639, inlinedAt: !3769)
!3771 = !DILocation(line: 179, column: 2, scope: !604, inlinedAt: !3753)
!3772 = !DILocation(line: 1839, column: 25, scope: !3740)
!3773 = !DILocation(line: 1840, column: 2, scope: !3740)
!3774 = !DILocation(line: 1840, column: 6, scope: !3740)
!3775 = !DILocation(line: 1842, column: 2, scope: !3740)
!3776 = !DILocation(line: 1842, column: 7, scope: !3777)
!3777 = distinct !DILexicalBlock(scope: !3740, file: !232, line: 1842, column: 5)
!3778 = !DILocation(line: 1844, column: 7, scope: !3779)
!3779 = distinct !DILexicalBlock(scope: !3740, file: !232, line: 1844, column: 6)
!3780 = !DILocation(line: 1844, column: 15, scope: !3779)
!3781 = !DILocation(line: 1844, column: 20, scope: !3779)
!3782 = !DILocation(line: 1844, column: 33, scope: !3779)
!3783 = !DILocation(line: 1844, column: 51, scope: !3779)
!3784 = !DILocation(line: 1844, column: 6, scope: !3740)
!3785 = !DILocation(line: 1845, column: 23, scope: !3786)
!3786 = distinct !DILexicalBlock(scope: !3779, file: !232, line: 1844, column: 58)
!3787 = !DILocation(line: 1845, column: 3, scope: !3786)
!3788 = !DILocation(line: 1846, column: 7, scope: !3786)
!3789 = !DILocation(line: 1847, column: 2, scope: !3786)
!3790 = !DILocation(line: 1847, column: 24, scope: !3791)
!3791 = distinct !DILexicalBlock(scope: !3779, file: !232, line: 1847, column: 13)
!3792 = !DILocation(line: 1847, column: 49, scope: !3791)
!3793 = !DILocation(line: 1847, column: 30, scope: !3791)
!3794 = !DILocation(line: 1847, column: 13, scope: !3779)
!3795 = !DILocation(line: 1848, column: 7, scope: !3796)
!3796 = distinct !DILexicalBlock(scope: !3791, file: !232, line: 1847, column: 63)
!3797 = !DILocation(line: 1849, column: 2, scope: !3796)
!3798 = !DILocation(line: 1849, column: 14, scope: !3799)
!3799 = distinct !DILexicalBlock(scope: !3791, file: !232, line: 1849, column: 13)
!3800 = !DILocation(line: 1849, column: 40, scope: !3799)
!3801 = !DILocation(line: 1849, column: 21, scope: !3799)
!3802 = !DILocation(line: 1849, column: 49, scope: !3799)
!3803 = !DILocation(line: 1850, column: 7, scope: !3799)
!3804 = !DILocation(line: 1850, column: 15, scope: !3799)
!3805 = !DILocation(line: 1850, column: 20, scope: !3799)
!3806 = !DILocation(line: 1850, column: 50, scope: !3799)
!3807 = !DILocation(line: 1850, column: 59, scope: !3799)
!3808 = !DILocation(line: 1850, column: 30, scope: !3799)
!3809 = !DILocation(line: 1849, column: 13, scope: !3791)
!3810 = !DILocation(line: 1851, column: 7, scope: !3811)
!3811 = distinct !DILexicalBlock(scope: !3799, file: !232, line: 1850, column: 72)
!3812 = !DILocation(line: 1852, column: 2, scope: !3811)
!3813 = !DILocation(line: 1854, column: 39, scope: !3814)
!3814 = distinct !DILexicalBlock(scope: !3799, file: !232, line: 1852, column: 9)
!3815 = !DILocation(line: 1854, column: 49, scope: !3814)
!3816 = !DILocation(line: 1854, column: 57, scope: !3814)
!3817 = !DILocation(line: 1854, column: 3, scope: !3814)
!3818 = !DILocation(line: 1855, column: 38, scope: !3814)
!3819 = !DILocation(line: 1855, column: 3, scope: !3814)
!3820 = !DILocation(line: 1857, column: 3, scope: !3814)
!3821 = !DILocation(line: 1857, column: 8, scope: !3822)
!3822 = distinct !DILexicalBlock(scope: !3814, file: !232, line: 1857, column: 6)
!3823 = !DILocation(line: 1858, column: 9, scope: !3814)
!3824 = !DILocation(line: 217, column: 76, scope: !1239, inlinedAt: !3825)
!3825 = distinct !DILocation(line: 1858, column: 9, scope: !3814)
!3826 = !DILocation(line: 217, column: 99, scope: !1239, inlinedAt: !3825)
!3827 = !DILocation(line: 219, column: 17, scope: !1239, inlinedAt: !3825)
!3828 = !DILocation(line: 283, column: 85, scope: !1250, inlinedAt: !3829)
!3829 = distinct !DILocation(line: 219, column: 2, scope: !1239, inlinedAt: !3825)
!3830 = !DILocation(line: 285, column: 9, scope: !1250, inlinedAt: !3829)
!3831 = !DILocation(line: 220, column: 28, scope: !1239, inlinedAt: !3825)
!3832 = !DILocation(line: 220, column: 9, scope: !1239, inlinedAt: !3825)
!3833 = !DILocation(line: 1858, column: 7, scope: !3814)
!3834 = !DILocation(line: 1859, column: 3, scope: !3814)
!3835 = !DILocation(line: 1859, column: 8, scope: !3836)
!3836 = distinct !DILexicalBlock(scope: !3814, file: !232, line: 1859, column: 6)
!3837 = !DILocation(line: 1861, column: 10, scope: !3814)
!3838 = !DILocation(line: 1861, column: 3, scope: !3814)
!3839 = !DILocation(line: 1864, column: 2, scope: !3740)
!3840 = !DILocation(line: 1864, column: 7, scope: !3841)
!3841 = distinct !DILexicalBlock(scope: !3740, file: !232, line: 1864, column: 5)
!3842 = !DILocation(line: 1866, column: 2, scope: !3740)
!3843 = !DILocation(line: 235, column: 84, scope: !662, inlinedAt: !3844)
!3844 = distinct !DILocation(line: 1866, column: 2, scope: !3740)
!3845 = !DILocation(line: 236, column: 23, scope: !662, inlinedAt: !3844)
!3846 = !DILocation(line: 238, column: 9, scope: !662, inlinedAt: !3844)
!3847 = !DILocation(line: 261, column: 22, scope: !662, inlinedAt: !3844)
!3848 = !DILocation(line: 88, column: 80, scope: !673, inlinedAt: !3849)
!3849 = distinct !DILocation(line: 261, column: 2, scope: !662, inlinedAt: !3844)
!3850 = !DILocation(line: 91, column: 6, scope: !680, inlinedAt: !3849)
!3851 = !DILocation(line: 91, column: 10, scope: !680, inlinedAt: !3849)
!3852 = !DILocation(line: 91, column: 6, scope: !673, inlinedAt: !3849)
!3853 = !DILocation(line: 92, column: 3, scope: !684, inlinedAt: !3849)
!3854 = !DILocation(line: 94, column: 2, scope: !673, inlinedAt: !3849)
!3855 = !DILocation(line: 114, column: 1, scope: !673, inlinedAt: !3849)
!3856 = !DILocation(line: 1867, column: 9, scope: !3740)
!3857 = !DILocation(line: 1867, column: 2, scope: !3740)
!3858 = !DILocation(line: 1868, column: 1, scope: !3740)
!3859 = distinct !DISubprogram(name: "z_sched_switch_spin", scope: !1240, file: !1240, line: 200, type: !483, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3860)
!3860 = !{!3861}
!3861 = !DILocalVariable(name: "thread", arg: 1, scope: !3859, file: !1240, line: 200, type: !101)
!3862 = !DILocation(line: 200, column: 57, scope: !3859)
!3863 = !DILocation(line: 202, column: 9, scope: !3859)
!3864 = !DILocation(line: 203, column: 1, scope: !3859)
!3865 = distinct !DISubprogram(name: "add_to_waitq_locked", scope: !232, file: !232, line: 743, type: !3866, scopeLine: 744, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3868)
!3866 = !DISubroutineType(types: !3867)
!3867 = !{null, !101, !137}
!3868 = !{!3869, !3870}
!3869 = !DILocalVariable(name: "thread", arg: 1, scope: !3865, file: !232, line: 743, type: !101)
!3870 = !DILocalVariable(name: "wait_q", arg: 2, scope: !3865, file: !232, line: 743, type: !137)
!3871 = !DILocation(line: 743, column: 50, scope: !3865)
!3872 = !DILocation(line: 743, column: 69, scope: !3865)
!3873 = !DILocation(line: 745, column: 17, scope: !3865)
!3874 = !DILocation(line: 745, column: 2, scope: !3865)
!3875 = !DILocation(line: 746, column: 27, scope: !3865)
!3876 = !DILocation(line: 746, column: 2, scope: !3865)
!3877 = !DILocation(line: 748, column: 2, scope: !3865)
!3878 = !DILocation(line: 748, column: 7, scope: !3879)
!3879 = distinct !DILexicalBlock(scope: !3865, file: !232, line: 748, column: 5)
!3880 = !DILocation(line: 750, column: 6, scope: !3881)
!3881 = distinct !DILexicalBlock(scope: !3865, file: !232, line: 750, column: 6)
!3882 = !DILocation(line: 750, column: 13, scope: !3881)
!3883 = !DILocation(line: 750, column: 6, scope: !3865)
!3884 = !DILocation(line: 751, column: 28, scope: !3885)
!3885 = distinct !DILexicalBlock(scope: !3881, file: !232, line: 750, column: 19)
!3886 = !DILocation(line: 751, column: 3, scope: !3885)
!3887 = !DILocation(line: 751, column: 11, scope: !3885)
!3888 = !DILocation(line: 751, column: 16, scope: !3885)
!3889 = !DILocation(line: 751, column: 26, scope: !3885)
!3890 = !DILocation(line: 752, column: 20, scope: !3885)
!3891 = !DILocation(line: 752, column: 28, scope: !3885)
!3892 = !DILocation(line: 752, column: 35, scope: !3885)
!3893 = !DILocation(line: 189, column: 80, scope: !867, inlinedAt: !3894)
!3894 = distinct !DILocation(line: 752, column: 3, scope: !3885)
!3895 = !DILocation(line: 190, column: 25, scope: !867, inlinedAt: !3894)
!3896 = !DILocation(line: 192, column: 2, scope: !867, inlinedAt: !3894)
!3897 = !DILocation(line: 192, column: 19, scope: !867, inlinedAt: !3894)
!3898 = !DILocation(line: 196, column: 33, scope: !880, inlinedAt: !3894)
!3899 = !DILocation(line: 196, column: 13, scope: !880, inlinedAt: !3894)
!3900 = !DILocation(line: 196, column: 37, scope: !880, inlinedAt: !3894)
!3901 = !DILocation(line: 196, column: 12, scope: !880, inlinedAt: !3894)
!3902 = !DILocation(line: 196, column: 100, scope: !885, inlinedAt: !3894)
!3903 = !DILocation(line: 196, column: 80, scope: !885, inlinedAt: !3894)
!3904 = !DILocation(line: 196, column: 46, scope: !880, inlinedAt: !3894)
!3905 = !DILocation(line: 196, column: 164, scope: !885, inlinedAt: !3894)
!3906 = !DILocation(line: 196, column: 9, scope: !880, inlinedAt: !3894)
!3907 = !DILocation(line: 196, column: 7, scope: !880, inlinedAt: !3894)
!3908 = !DILocation(line: 196, column: 173, scope: !892, inlinedAt: !3894)
!3909 = !DILocation(line: 196, column: 175, scope: !892, inlinedAt: !3894)
!3910 = !DILocation(line: 196, column: 2, scope: !880, inlinedAt: !3894)
!3911 = !DILocation(line: 197, column: 24, scope: !896, inlinedAt: !3894)
!3912 = !DILocation(line: 197, column: 32, scope: !896, inlinedAt: !3894)
!3913 = !DILocation(line: 197, column: 7, scope: !896, inlinedAt: !3894)
!3914 = !DILocation(line: 197, column: 35, scope: !896, inlinedAt: !3894)
!3915 = !DILocation(line: 197, column: 7, scope: !897, inlinedAt: !3894)
!3916 = !DILocation(line: 198, column: 22, scope: !903, inlinedAt: !3894)
!3917 = !DILocation(line: 199, column: 8, scope: !903, inlinedAt: !3894)
!3918 = !DILocation(line: 198, column: 4, scope: !903, inlinedAt: !3894)
!3919 = !DILocation(line: 200, column: 4, scope: !903, inlinedAt: !3894)
!3920 = !DILocation(line: 196, column: 187, scope: !892, inlinedAt: !3894)
!3921 = !DILocation(line: 196, column: 189, scope: !892, inlinedAt: !3894)
!3922 = !DILocation(line: 196, column: 186, scope: !892, inlinedAt: !3894)
!3923 = !DILocation(line: 196, column: 219, scope: !892, inlinedAt: !3894)
!3924 = !DILocation(line: 196, column: 225, scope: !892, inlinedAt: !3894)
!3925 = !DILocation(line: 196, column: 199, scope: !892, inlinedAt: !3894)
!3926 = !DILocation(line: 196, column: 247, scope: !892, inlinedAt: !3894)
!3927 = !DILocation(line: 196, column: 198, scope: !892, inlinedAt: !3894)
!3928 = !DILocation(line: 196, column: 310, scope: !916, inlinedAt: !3894)
!3929 = !DILocation(line: 196, column: 316, scope: !916, inlinedAt: !3894)
!3930 = !DILocation(line: 196, column: 290, scope: !916, inlinedAt: !3894)
!3931 = !DILocation(line: 196, column: 256, scope: !892, inlinedAt: !3894)
!3932 = !DILocation(line: 196, column: 398, scope: !916, inlinedAt: !3894)
!3933 = !DILocation(line: 196, column: 183, scope: !892, inlinedAt: !3894)
!3934 = !DILocation(line: 196, column: 2, scope: !892, inlinedAt: !3894)
!3935 = distinct !{!3935, !3910, !3936}
!3936 = !DILocation(line: 202, column: 2, scope: !880, inlinedAt: !3894)
!3937 = !DILocation(line: 204, column: 19, scope: !867, inlinedAt: !3894)
!3938 = !DILocation(line: 204, column: 24, scope: !867, inlinedAt: !3894)
!3939 = !DILocation(line: 204, column: 2, scope: !867, inlinedAt: !3894)
!3940 = !DILocation(line: 205, column: 1, scope: !867, inlinedAt: !3894)
!3941 = !DILocation(line: 753, column: 2, scope: !3885)
!3942 = !DILocation(line: 754, column: 1, scope: !3865)
!3943 = distinct !DISubprogram(name: "add_thread_timeout", scope: !232, file: !232, line: 756, type: !3944, scopeLine: 757, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3946)
!3944 = !DISubroutineType(types: !3945)
!3945 = !{null, !101, !331}
!3946 = !{!3947, !3948}
!3947 = !DILocalVariable(name: "thread", arg: 1, scope: !3943, file: !232, line: 756, type: !101)
!3948 = !DILocalVariable(name: "timeout", arg: 2, scope: !3943, file: !232, line: 756, type: !331)
!3949 = !DILocation(line: 756, column: 49, scope: !3943)
!3950 = !DILocation(line: 756, column: 69, scope: !3943)
!3951 = !DILocation(line: 758, column: 18, scope: !3952)
!3952 = distinct !DILexicalBlock(scope: !3943, file: !232, line: 758, column: 6)
!3953 = !DILocation(line: 758, column: 43, scope: !3952)
!3954 = !DILocation(line: 758, column: 24, scope: !3952)
!3955 = !DILocation(line: 758, column: 6, scope: !3943)
!3956 = !DILocation(line: 759, column: 24, scope: !3957)
!3957 = distinct !DILexicalBlock(scope: !3952, file: !232, line: 758, column: 85)
!3958 = !DILocation(line: 759, column: 3, scope: !3957)
!3959 = !DILocation(line: 760, column: 2, scope: !3957)
!3960 = !DILocation(line: 761, column: 1, scope: !3943)
!3961 = distinct !DISubprogram(name: "z_sched_wake", scope: !232, file: !232, line: 1926, type: !3962, scopeLine: 1927, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3964)
!3962 = !DISubroutineType(types: !3963)
!3963 = !{!236, !137, !192, !162}
!3964 = !{!3965, !3966, !3967, !3968, !3969, !3970, !3972}
!3965 = !DILocalVariable(name: "wait_q", arg: 1, scope: !3961, file: !232, line: 1926, type: !137)
!3966 = !DILocalVariable(name: "swap_retval", arg: 2, scope: !3961, file: !232, line: 1926, type: !192)
!3967 = !DILocalVariable(name: "swap_data", arg: 3, scope: !3961, file: !232, line: 1926, type: !162)
!3968 = !DILocalVariable(name: "thread", scope: !3961, file: !232, line: 1928, type: !101)
!3969 = !DILocalVariable(name: "ret", scope: !3961, file: !232, line: 1929, type: !236)
!3970 = !DILocalVariable(name: "__i", scope: !3971, file: !232, line: 1931, type: !593)
!3971 = distinct !DILexicalBlock(scope: !3961, file: !232, line: 1931, column: 2)
!3972 = !DILocalVariable(name: "__key", scope: !3971, file: !232, line: 1931, type: !593)
!3973 = !DILocation(line: 1926, column: 31, scope: !3961)
!3974 = !DILocation(line: 1926, column: 43, scope: !3961)
!3975 = !DILocation(line: 1926, column: 62, scope: !3961)
!3976 = !DILocation(line: 1928, column: 2, scope: !3961)
!3977 = !DILocation(line: 1928, column: 19, scope: !3961)
!3978 = !DILocation(line: 1929, column: 2, scope: !3961)
!3979 = !DILocation(line: 1929, column: 8, scope: !3961)
!3980 = !DILocation(line: 1931, column: 7, scope: !3971)
!3981 = !DILocation(line: 1931, column: 24, scope: !3971)
!3982 = !DILocation(line: 1931, column: 34, scope: !3971)
!3983 = !DILocation(line: 160, column: 94, scope: !604, inlinedAt: !3984)
!3984 = distinct !DILocation(line: 1931, column: 42, scope: !3971)
!3985 = !DILocation(line: 162, column: 9, scope: !604, inlinedAt: !3984)
!3986 = !DILocation(line: 163, column: 19, scope: !604, inlinedAt: !3984)
!3987 = !DILocation(line: 44, column: 2, scope: !615, inlinedAt: !3988)
!3988 = distinct !DILocation(line: 169, column: 10, scope: !604, inlinedAt: !3984)
!3989 = !DILocation(line: 44, column: 15, scope: !615, inlinedAt: !3988)
!3990 = !DILocation(line: 48, column: 2, scope: !615, inlinedAt: !3988)
!3991 = !DILocation(line: 80, column: 9, scope: !615, inlinedAt: !3988)
!3992 = !DILocation(line: 81, column: 1, scope: !615, inlinedAt: !3988)
!3993 = !DILocation(line: 169, column: 8, scope: !604, inlinedAt: !3984)
!3994 = !DILocation(line: 171, column: 26, scope: !604, inlinedAt: !3984)
!3995 = !DILocation(line: 110, column: 94, scope: !630, inlinedAt: !3996)
!3996 = distinct !DILocation(line: 171, column: 2, scope: !604, inlinedAt: !3984)
!3997 = !DILocation(line: 112, column: 9, scope: !630, inlinedAt: !3996)
!3998 = !DILocation(line: 177, column: 27, scope: !604, inlinedAt: !3984)
!3999 = !DILocation(line: 121, column: 95, scope: !639, inlinedAt: !4000)
!4000 = distinct !DILocation(line: 177, column: 2, scope: !604, inlinedAt: !3984)
!4001 = !DILocation(line: 123, column: 9, scope: !639, inlinedAt: !4000)
!4002 = !DILocation(line: 179, column: 2, scope: !604, inlinedAt: !3984)
!4003 = !DILocation(line: 1931, column: 42, scope: !3971)
!4004 = !DILocation(line: 1931, column: 77, scope: !4005)
!4005 = distinct !DILexicalBlock(scope: !3971, file: !232, line: 1931, column: 2)
!4006 = !DILocation(line: 1931, column: 72, scope: !4005)
!4007 = !DILocation(line: 1931, column: 2, scope: !3971)
!4008 = !DILocation(line: 1931, column: 2, scope: !4005)
!4009 = !DILocation(line: 1932, column: 30, scope: !4010)
!4010 = distinct !DILexicalBlock(scope: !4005, file: !232, line: 1931, column: 134)
!4011 = !DILocation(line: 1932, column: 38, scope: !4010)
!4012 = !DILocation(line: 1932, column: 12, scope: !4010)
!4013 = !DILocation(line: 1932, column: 10, scope: !4010)
!4014 = !DILocation(line: 1934, column: 7, scope: !4015)
!4015 = distinct !DILexicalBlock(scope: !4010, file: !232, line: 1934, column: 7)
!4016 = !DILocation(line: 1934, column: 14, scope: !4015)
!4017 = !DILocation(line: 1934, column: 7, scope: !4010)
!4018 = !DILocation(line: 1935, column: 40, scope: !4019)
!4019 = distinct !DILexicalBlock(scope: !4015, file: !232, line: 1934, column: 20)
!4020 = !DILocation(line: 1936, column: 12, scope: !4019)
!4021 = !DILocation(line: 1937, column: 12, scope: !4019)
!4022 = !DILocalVariable(name: "thread", arg: 1, scope: !4023, file: !4024, line: 137, type: !101)
!4023 = distinct !DISubprogram(name: "z_thread_return_value_set_with_data", scope: !4024, file: !4024, line: 137, type: !4025, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4027)
!4024 = !DIFile(filename: "kernel/include/kernel_internal.h", directory: "/home/sri/zephyrproject/zephyr")
!4025 = !DISubroutineType(types: !4026)
!4026 = !{null, !101, !100, !162}
!4027 = !{!4022, !4028, !4029}
!4028 = !DILocalVariable(name: "value", arg: 2, scope: !4023, file: !4024, line: 138, type: !100)
!4029 = !DILocalVariable(name: "data", arg: 3, scope: !4023, file: !4024, line: 139, type: !162)
!4030 = !DILocation(line: 137, column: 54, scope: !4023, inlinedAt: !4031)
!4031 = distinct !DILocation(line: 1935, column: 4, scope: !4019)
!4032 = !DILocation(line: 138, column: 21, scope: !4023, inlinedAt: !4031)
!4033 = !DILocation(line: 139, column: 14, scope: !4023, inlinedAt: !4031)
!4034 = !DILocation(line: 141, column: 31, scope: !4023, inlinedAt: !4031)
!4035 = !DILocation(line: 141, column: 39, scope: !4023, inlinedAt: !4031)
!4036 = !DILocalVariable(name: "thread", arg: 1, scope: !4037, file: !4038, line: 59, type: !101)
!4037 = distinct !DISubprogram(name: "arch_thread_return_value_set", scope: !4038, file: !4038, line: 59, type: !4039, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4041)
!4038 = !DIFile(filename: "arch/arm/include/cortex_m/kernel_arch_func.h", directory: "/home/sri/zephyrproject/zephyr")
!4039 = !DISubroutineType(types: !4040)
!4040 = !{null, !101, !100}
!4041 = !{!4036, !4042}
!4042 = !DILocalVariable(name: "value", arg: 2, scope: !4037, file: !4038, line: 59, type: !100)
!4043 = !DILocation(line: 59, column: 47, scope: !4037, inlinedAt: !4044)
!4044 = distinct !DILocation(line: 141, column: 2, scope: !4023, inlinedAt: !4031)
!4045 = !DILocation(line: 59, column: 68, scope: !4037, inlinedAt: !4044)
!4046 = !DILocation(line: 61, column: 35, scope: !4037, inlinedAt: !4044)
!4047 = !DILocation(line: 61, column: 2, scope: !4037, inlinedAt: !4044)
!4048 = !DILocation(line: 61, column: 10, scope: !4037, inlinedAt: !4044)
!4049 = !DILocation(line: 61, column: 15, scope: !4037, inlinedAt: !4044)
!4050 = !DILocation(line: 61, column: 33, scope: !4037, inlinedAt: !4044)
!4051 = !DILocation(line: 142, column: 27, scope: !4023, inlinedAt: !4031)
!4052 = !DILocation(line: 142, column: 2, scope: !4023, inlinedAt: !4031)
!4053 = !DILocation(line: 142, column: 15, scope: !4023, inlinedAt: !4031)
!4054 = !DILocation(line: 142, column: 25, scope: !4023, inlinedAt: !4031)
!4055 = !DILocation(line: 1938, column: 29, scope: !4019)
!4056 = !DILocation(line: 1938, column: 4, scope: !4019)
!4057 = !DILocation(line: 1939, column: 33, scope: !4019)
!4058 = !DILocation(line: 1939, column: 10, scope: !4019)
!4059 = !DILocation(line: 1940, column: 17, scope: !4019)
!4060 = !DILocation(line: 1940, column: 4, scope: !4019)
!4061 = !DILocation(line: 1941, column: 8, scope: !4019)
!4062 = !DILocation(line: 1942, column: 3, scope: !4019)
!4063 = !DILocation(line: 1943, column: 2, scope: !4010)
!4064 = !DILocation(line: 1931, column: 82, scope: !4005)
!4065 = !DILocation(line: 235, column: 84, scope: !662, inlinedAt: !4066)
!4066 = distinct !DILocation(line: 1931, column: 82, scope: !4005)
!4067 = !DILocation(line: 236, column: 23, scope: !662, inlinedAt: !4066)
!4068 = !DILocation(line: 238, column: 9, scope: !662, inlinedAt: !4066)
!4069 = !DILocation(line: 261, column: 22, scope: !662, inlinedAt: !4066)
!4070 = !DILocation(line: 88, column: 80, scope: !673, inlinedAt: !4071)
!4071 = distinct !DILocation(line: 261, column: 2, scope: !662, inlinedAt: !4066)
!4072 = !DILocation(line: 91, column: 6, scope: !680, inlinedAt: !4071)
!4073 = !DILocation(line: 91, column: 10, scope: !680, inlinedAt: !4071)
!4074 = !DILocation(line: 91, column: 6, scope: !673, inlinedAt: !4071)
!4075 = !DILocation(line: 92, column: 3, scope: !684, inlinedAt: !4071)
!4076 = !DILocation(line: 94, column: 2, scope: !673, inlinedAt: !4071)
!4077 = !DILocation(line: 114, column: 1, scope: !673, inlinedAt: !4071)
!4078 = !DILocation(line: 1931, column: 125, scope: !4005)
!4079 = !DILocation(line: 1931, column: 129, scope: !4005)
!4080 = distinct !{!4080, !4007, !4081}
!4081 = !DILocation(line: 1943, column: 2, scope: !3971)
!4082 = !DILocation(line: 1945, column: 9, scope: !3961)
!4083 = !DILocation(line: 1946, column: 1, scope: !3961)
!4084 = !DILocation(line: 1945, column: 2, scope: !3961)
!4085 = distinct !DISubprogram(name: "z_sched_wait", scope: !232, file: !232, line: 1948, type: !4086, scopeLine: 1950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4089)
!4086 = !DISubroutineType(types: !4087)
!4087 = !{!192, !607, !593, !137, !331, !4088}
!4088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 32)
!4089 = !{!4090, !4091, !4092, !4093, !4094, !4095}
!4090 = !DILocalVariable(name: "lock", arg: 1, scope: !4085, file: !232, line: 1948, type: !607)
!4091 = !DILocalVariable(name: "key", arg: 2, scope: !4085, file: !232, line: 1948, type: !593)
!4092 = !DILocalVariable(name: "wait_q", arg: 3, scope: !4085, file: !232, line: 1949, type: !137)
!4093 = !DILocalVariable(name: "timeout", arg: 4, scope: !4085, file: !232, line: 1949, type: !331)
!4094 = !DILocalVariable(name: "data", arg: 5, scope: !4085, file: !232, line: 1949, type: !4088)
!4095 = !DILocalVariable(name: "ret", scope: !4085, file: !232, line: 1951, type: !192)
!4096 = !DILocation(line: 1948, column: 37, scope: !4085)
!4097 = !DILocation(line: 1948, column: 60, scope: !4085)
!4098 = !DILocation(line: 1949, column: 15, scope: !4085)
!4099 = !DILocation(line: 1949, column: 35, scope: !4085)
!4100 = !DILocation(line: 1949, column: 51, scope: !4085)
!4101 = !DILocation(line: 1951, column: 2, scope: !4085)
!4102 = !DILocation(line: 1951, column: 6, scope: !4085)
!4103 = !DILocation(line: 1951, column: 24, scope: !4085)
!4104 = !DILocation(line: 1951, column: 35, scope: !4085)
!4105 = !DILocation(line: 1951, column: 12, scope: !4085)
!4106 = !DILocation(line: 1953, column: 6, scope: !4107)
!4107 = distinct !DILexicalBlock(scope: !4085, file: !232, line: 1953, column: 6)
!4108 = !DILocation(line: 1953, column: 11, scope: !4107)
!4109 = !DILocation(line: 1953, column: 6, scope: !4085)
!4110 = !DILocation(line: 1954, column: 27, scope: !4111)
!4111 = distinct !DILexicalBlock(scope: !4107, file: !232, line: 1953, column: 17)
!4112 = !DILocation(line: 1954, column: 36, scope: !4111)
!4113 = !DILocation(line: 1954, column: 41, scope: !4111)
!4114 = !DILocation(line: 1954, column: 4, scope: !4111)
!4115 = !DILocation(line: 1954, column: 9, scope: !4111)
!4116 = !DILocation(line: 1955, column: 2, scope: !4111)
!4117 = !DILocation(line: 1956, column: 9, scope: !4085)
!4118 = !DILocation(line: 1957, column: 1, scope: !4085)
!4119 = !DILocation(line: 1956, column: 2, scope: !4085)
!4120 = distinct !DISubprogram(name: "z_sched_waitq_walk", scope: !232, file: !232, line: 1959, type: !4121, scopeLine: 1961, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4126)
!4121 = !DISubroutineType(types: !4122)
!4122 = !{!192, !137, !4123, !162}
!4123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4124, size: 32)
!4124 = !DISubroutineType(types: !4125)
!4125 = !{!192, !101, !162}
!4126 = !{!4127, !4128, !4129, !4130, !4131, !4132, !4134}
!4127 = !DILocalVariable(name: "wait_q", arg: 1, scope: !4120, file: !232, line: 1959, type: !137)
!4128 = !DILocalVariable(name: "func", arg: 2, scope: !4120, file: !232, line: 1960, type: !4123)
!4129 = !DILocalVariable(name: "data", arg: 3, scope: !4120, file: !232, line: 1960, type: !162)
!4130 = !DILocalVariable(name: "thread", scope: !4120, file: !232, line: 1962, type: !101)
!4131 = !DILocalVariable(name: "status", scope: !4120, file: !232, line: 1963, type: !192)
!4132 = !DILocalVariable(name: "__i", scope: !4133, file: !232, line: 1965, type: !593)
!4133 = distinct !DILexicalBlock(scope: !4120, file: !232, line: 1965, column: 2)
!4134 = !DILocalVariable(name: "__key", scope: !4133, file: !232, line: 1965, type: !593)
!4135 = !DILocation(line: 1959, column: 35, scope: !4120)
!4136 = !DILocation(line: 1960, column: 16, scope: !4120)
!4137 = !DILocation(line: 1960, column: 56, scope: !4120)
!4138 = !DILocation(line: 1962, column: 2, scope: !4120)
!4139 = !DILocation(line: 1962, column: 19, scope: !4120)
!4140 = !DILocation(line: 1963, column: 2, scope: !4120)
!4141 = !DILocation(line: 1963, column: 6, scope: !4120)
!4142 = !DILocation(line: 1965, column: 7, scope: !4133)
!4143 = !DILocation(line: 1965, column: 24, scope: !4133)
!4144 = !DILocation(line: 1965, column: 34, scope: !4133)
!4145 = !DILocation(line: 160, column: 94, scope: !604, inlinedAt: !4146)
!4146 = distinct !DILocation(line: 1965, column: 42, scope: !4133)
!4147 = !DILocation(line: 162, column: 9, scope: !604, inlinedAt: !4146)
!4148 = !DILocation(line: 163, column: 19, scope: !604, inlinedAt: !4146)
!4149 = !DILocation(line: 44, column: 2, scope: !615, inlinedAt: !4150)
!4150 = distinct !DILocation(line: 169, column: 10, scope: !604, inlinedAt: !4146)
!4151 = !DILocation(line: 44, column: 15, scope: !615, inlinedAt: !4150)
!4152 = !DILocation(line: 48, column: 2, scope: !615, inlinedAt: !4150)
!4153 = !DILocation(line: 80, column: 9, scope: !615, inlinedAt: !4150)
!4154 = !DILocation(line: 81, column: 1, scope: !615, inlinedAt: !4150)
!4155 = !DILocation(line: 169, column: 8, scope: !604, inlinedAt: !4146)
!4156 = !DILocation(line: 171, column: 26, scope: !604, inlinedAt: !4146)
!4157 = !DILocation(line: 110, column: 94, scope: !630, inlinedAt: !4158)
!4158 = distinct !DILocation(line: 171, column: 2, scope: !604, inlinedAt: !4146)
!4159 = !DILocation(line: 112, column: 9, scope: !630, inlinedAt: !4158)
!4160 = !DILocation(line: 177, column: 27, scope: !604, inlinedAt: !4146)
!4161 = !DILocation(line: 121, column: 95, scope: !639, inlinedAt: !4162)
!4162 = distinct !DILocation(line: 177, column: 2, scope: !604, inlinedAt: !4146)
!4163 = !DILocation(line: 123, column: 9, scope: !639, inlinedAt: !4162)
!4164 = !DILocation(line: 179, column: 2, scope: !604, inlinedAt: !4146)
!4165 = !DILocation(line: 1965, column: 42, scope: !4133)
!4166 = !DILocation(line: 1965, column: 77, scope: !4167)
!4167 = distinct !DILexicalBlock(scope: !4133, file: !232, line: 1965, column: 2)
!4168 = !DILocation(line: 1965, column: 72, scope: !4167)
!4169 = !DILocation(line: 1965, column: 2, scope: !4133)
!4170 = !DILocation(line: 1965, column: 2, scope: !4167)
!4171 = !DILocation(line: 1966, column: 42, scope: !4172)
!4172 = distinct !DILexicalBlock(scope: !4173, file: !232, line: 1966, column: 3)
!4173 = distinct !DILexicalBlock(scope: !4167, file: !232, line: 1965, column: 134)
!4174 = !DILocation(line: 1966, column: 51, scope: !4172)
!4175 = !DILocation(line: 1966, column: 19, scope: !4172)
!4176 = !DILocation(line: 1966, column: 59, scope: !4172)
!4177 = !DILocation(line: 1966, column: 18, scope: !4172)
!4178 = !DILocation(line: 1966, column: 130, scope: !4179)
!4179 = distinct !DILexicalBlock(scope: !4172, file: !232, line: 1966, column: 68)
!4180 = !DILocation(line: 1966, column: 139, scope: !4179)
!4181 = !DILocation(line: 1966, column: 107, scope: !4179)
!4182 = !DILocation(line: 1966, column: 149, scope: !4179)
!4183 = !DILocation(line: 1966, column: 68, scope: !4172)
!4184 = !DILocation(line: 1966, column: 212, scope: !4179)
!4185 = !DILocation(line: 1966, column: 15, scope: !4172)
!4186 = !DILocation(line: 1966, column: 8, scope: !4172)
!4187 = !DILocation(line: 1966, column: 221, scope: !4188)
!4188 = distinct !DILexicalBlock(scope: !4172, file: !232, line: 1966, column: 3)
!4189 = !DILocation(line: 1966, column: 228, scope: !4188)
!4190 = !DILocation(line: 1966, column: 3, scope: !4172)
!4191 = !DILocation(line: 1974, column: 13, scope: !4192)
!4192 = distinct !DILexicalBlock(scope: !4188, file: !232, line: 1966, column: 527)
!4193 = !DILocation(line: 1974, column: 18, scope: !4192)
!4194 = !DILocation(line: 1974, column: 26, scope: !4192)
!4195 = !DILocation(line: 1974, column: 11, scope: !4192)
!4196 = !DILocation(line: 1975, column: 8, scope: !4197)
!4197 = distinct !DILexicalBlock(scope: !4192, file: !232, line: 1975, column: 8)
!4198 = !DILocation(line: 1975, column: 15, scope: !4197)
!4199 = !DILocation(line: 1975, column: 8, scope: !4192)
!4200 = !DILocation(line: 1976, column: 5, scope: !4201)
!4201 = distinct !DILexicalBlock(scope: !4197, file: !232, line: 1975, column: 21)
!4202 = !DILocation(line: 1978, column: 3, scope: !4192)
!4203 = !DILocation(line: 1966, column: 245, scope: !4188)
!4204 = !DILocation(line: 1966, column: 252, scope: !4188)
!4205 = !DILocation(line: 1966, column: 244, scope: !4188)
!4206 = !DILocation(line: 1966, column: 285, scope: !4188)
!4207 = !DILocation(line: 1966, column: 294, scope: !4188)
!4208 = !DILocation(line: 1966, column: 304, scope: !4188)
!4209 = !DILocation(line: 1966, column: 312, scope: !4188)
!4210 = !DILocation(line: 1966, column: 317, scope: !4188)
!4211 = !DILocation(line: 1966, column: 262, scope: !4188)
!4212 = !DILocation(line: 1966, column: 331, scope: !4188)
!4213 = !DILocation(line: 1966, column: 261, scope: !4188)
!4214 = !DILocation(line: 1966, column: 402, scope: !4215)
!4215 = distinct !DILexicalBlock(scope: !4188, file: !232, line: 1966, column: 340)
!4216 = !DILocation(line: 1966, column: 411, scope: !4215)
!4217 = !DILocation(line: 1966, column: 421, scope: !4215)
!4218 = !DILocation(line: 1966, column: 429, scope: !4215)
!4219 = !DILocation(line: 1966, column: 434, scope: !4215)
!4220 = !DILocation(line: 1966, column: 379, scope: !4215)
!4221 = !DILocation(line: 1966, column: 450, scope: !4215)
!4222 = !DILocation(line: 1966, column: 340, scope: !4188)
!4223 = !DILocation(line: 1966, column: 513, scope: !4215)
!4224 = !DILocation(line: 1966, column: 241, scope: !4188)
!4225 = !DILocation(line: 1966, column: 3, scope: !4188)
!4226 = distinct !{!4226, !4190, !4227}
!4227 = !DILocation(line: 1978, column: 3, scope: !4172)
!4228 = !DILocation(line: 1979, column: 2, scope: !4173)
!4229 = !DILocation(line: 1965, column: 82, scope: !4167)
!4230 = !DILocation(line: 235, column: 84, scope: !662, inlinedAt: !4231)
!4231 = distinct !DILocation(line: 1965, column: 82, scope: !4167)
!4232 = !DILocation(line: 236, column: 23, scope: !662, inlinedAt: !4231)
!4233 = !DILocation(line: 238, column: 9, scope: !662, inlinedAt: !4231)
!4234 = !DILocation(line: 261, column: 22, scope: !662, inlinedAt: !4231)
!4235 = !DILocation(line: 88, column: 80, scope: !673, inlinedAt: !4236)
!4236 = distinct !DILocation(line: 261, column: 2, scope: !662, inlinedAt: !4231)
!4237 = !DILocation(line: 91, column: 6, scope: !680, inlinedAt: !4236)
!4238 = !DILocation(line: 91, column: 10, scope: !680, inlinedAt: !4236)
!4239 = !DILocation(line: 91, column: 6, scope: !673, inlinedAt: !4236)
!4240 = !DILocation(line: 92, column: 3, scope: !684, inlinedAt: !4236)
!4241 = !DILocation(line: 94, column: 2, scope: !673, inlinedAt: !4236)
!4242 = !DILocation(line: 114, column: 1, scope: !673, inlinedAt: !4236)
!4243 = !DILocation(line: 1965, column: 125, scope: !4167)
!4244 = !DILocation(line: 1965, column: 129, scope: !4167)
!4245 = distinct !{!4245, !4169, !4246}
!4246 = !DILocation(line: 1979, column: 2, scope: !4133)
!4247 = !DILocation(line: 1981, column: 9, scope: !4120)
!4248 = !DILocation(line: 1982, column: 1, scope: !4120)
!4249 = !DILocation(line: 1981, column: 2, scope: !4120)
!4250 = distinct !DISubprogram(name: "sys_dlist_peek_next", scope: !113, file: !113, line: 350, type: !4251, scopeLine: 352, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4253)
!4251 = !DISubroutineType(types: !4252)
!4252 = !{!228, !870, !228}
!4253 = !{!4254, !4255}
!4254 = !DILocalVariable(name: "list", arg: 1, scope: !4250, file: !113, line: 350, type: !870)
!4255 = !DILocalVariable(name: "node", arg: 2, scope: !4250, file: !113, line: 351, type: !228)
!4256 = !DILocation(line: 350, column: 61, scope: !4250)
!4257 = !DILocation(line: 351, column: 26, scope: !4250)
!4258 = !DILocation(line: 353, column: 10, scope: !4250)
!4259 = !DILocation(line: 353, column: 15, scope: !4250)
!4260 = !DILocation(line: 353, column: 9, scope: !4250)
!4261 = !DILocation(line: 353, column: 61, scope: !4250)
!4262 = !DILocation(line: 353, column: 67, scope: !4250)
!4263 = !DILocation(line: 353, column: 32, scope: !4250)
!4264 = !DILocation(line: 353, column: 2, scope: !4250)
!4265 = !DISubprogram(name: "z_timeout_expires", scope: !196, file: !196, line: 642, type: !4266, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !213)
!4266 = !DISubroutineType(types: !4267)
!4267 = !{!223, !4268}
!4268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4269, size: 32)
!4269 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !164)
!4270 = !DISubprogram(name: "z_timeout_remaining", scope: !196, file: !196, line: 643, type: !4266, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !213)
!4271 = distinct !DISubprogram(name: "sys_sflist_is_empty", scope: !382, file: !382, line: 335, type: !4272, scopeLine: 335, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4275)
!4272 = !DISubroutineType(types: !4273)
!4273 = !{!236, !4274}
!4274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 32)
!4275 = !{!4276}
!4276 = !DILocalVariable(name: "list", arg: 1, scope: !4271, file: !382, line: 335, type: !4274)
!4277 = !DILocation(line: 335, column: 55, scope: !4271)
!4278 = !DILocation(line: 335, column: 92, scope: !4271)
!4279 = !DILocation(line: 335, column: 71, scope: !4271)
!4280 = !DILocation(line: 335, column: 98, scope: !4271)
!4281 = !DILocation(line: 335, column: 63, scope: !4271)
!4282 = distinct !DISubprogram(name: "sys_sflist_peek_head", scope: !382, file: !382, line: 255, type: !4283, scopeLine: 256, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4285)
!4283 = !DISubroutineType(types: !4284)
!4284 = !{!386, !4274}
!4285 = !{!4286}
!4286 = !DILocalVariable(name: "list", arg: 1, scope: !4282, file: !382, line: 255, type: !4274)
!4287 = !DILocation(line: 255, column: 64, scope: !4282)
!4288 = !DILocation(line: 257, column: 9, scope: !4282)
!4289 = !DILocation(line: 257, column: 15, scope: !4282)
!4290 = !DILocation(line: 257, column: 2, scope: !4282)
!4291 = distinct !DISubprogram(name: "z_is_prio_higher", scope: !784, file: !784, line: 213, type: !4292, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4294)
!4292 = !DISubroutineType(types: !4293)
!4293 = !{!236, !192, !192}
!4294 = !{!4295, !4296}
!4295 = !DILocalVariable(name: "prio", arg: 1, scope: !4291, file: !784, line: 213, type: !192)
!4296 = !DILocalVariable(name: "test_prio", arg: 2, scope: !4291, file: !784, line: 213, type: !192)
!4297 = !DILocation(line: 213, column: 42, scope: !4291)
!4298 = !DILocation(line: 213, column: 52, scope: !4291)
!4299 = !DILocation(line: 215, column: 38, scope: !4291)
!4300 = !DILocation(line: 215, column: 44, scope: !4291)
!4301 = !DILocation(line: 215, column: 9, scope: !4291)
!4302 = !DILocation(line: 215, column: 2, scope: !4291)
!4303 = distinct !DISubprogram(name: "z_is_prio1_higher_than_prio2", scope: !784, file: !784, line: 208, type: !4292, scopeLine: 209, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4304)
!4304 = !{!4305, !4306}
!4305 = !DILocalVariable(name: "prio1", arg: 1, scope: !4303, file: !784, line: 208, type: !192)
!4306 = !DILocalVariable(name: "prio2", arg: 2, scope: !4303, file: !784, line: 208, type: !192)
!4307 = !DILocation(line: 208, column: 54, scope: !4303)
!4308 = !DILocation(line: 208, column: 65, scope: !4303)
!4309 = !DILocation(line: 210, column: 9, scope: !4303)
!4310 = !DILocation(line: 210, column: 17, scope: !4303)
!4311 = !DILocation(line: 210, column: 15, scope: !4303)
!4312 = !DILocation(line: 210, column: 2, scope: !4303)
!4313 = distinct !DISubprogram(name: "z_is_thread_state_set", scope: !784, file: !784, line: 133, type: !4314, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4316)
!4314 = !DISubroutineType(types: !4315)
!4315 = !{!236, !101, !98}
!4316 = !{!4317, !4318}
!4317 = !DILocalVariable(name: "thread", arg: 1, scope: !4313, file: !784, line: 133, type: !101)
!4318 = !DILocalVariable(name: "state", arg: 2, scope: !4313, file: !784, line: 133, type: !98)
!4319 = !DILocation(line: 133, column: 60, scope: !4313)
!4320 = !DILocation(line: 133, column: 77, scope: !4313)
!4321 = !DILocation(line: 135, column: 10, scope: !4313)
!4322 = !DILocation(line: 135, column: 18, scope: !4313)
!4323 = !DILocation(line: 135, column: 23, scope: !4313)
!4324 = !DILocation(line: 135, column: 38, scope: !4313)
!4325 = !DILocation(line: 135, column: 36, scope: !4313)
!4326 = !DILocation(line: 135, column: 45, scope: !4313)
!4327 = !DILocation(line: 135, column: 2, scope: !4313)
!4328 = distinct !DISubprogram(name: "should_queue_thread", scope: !232, file: !232, line: 255, type: !519, scopeLine: 256, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4329)
!4329 = !{!4330}
!4330 = !DILocalVariable(name: "th", arg: 1, scope: !4328, file: !232, line: 255, type: !101)
!4331 = !DILocation(line: 255, column: 58, scope: !4328)
!4332 = !DILocation(line: 257, column: 2, scope: !4328)
!4333 = distinct !DISubprogram(name: "update_metairq_preempt", scope: !232, file: !232, line: 553, type: !483, scopeLine: 554, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4334)
!4334 = !{!4335}
!4335 = !DILocalVariable(name: "thread", arg: 1, scope: !4333, file: !232, line: 553, type: !101)
!4336 = !DILocation(line: 553, column: 53, scope: !4333)
!4337 = !DILocation(line: 566, column: 9, scope: !4333)
!4338 = !DILocation(line: 568, column: 1, scope: !4333)
!4339 = distinct !DISubprogram(name: "z_is_thread_timeout_active", scope: !784, file: !784, line: 117, type: !519, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4340)
!4340 = !{!4341}
!4341 = !DILocalVariable(name: "thread", arg: 1, scope: !4339, file: !784, line: 117, type: !101)
!4342 = !DILocation(line: 117, column: 65, scope: !4339)
!4343 = !DILocation(line: 119, column: 33, scope: !4339)
!4344 = !DILocation(line: 119, column: 41, scope: !4339)
!4345 = !DILocation(line: 119, column: 46, scope: !4339)
!4346 = !DILocation(line: 119, column: 10, scope: !4339)
!4347 = !DILocation(line: 119, column: 9, scope: !4339)
!4348 = !DILocation(line: 119, column: 2, scope: !4339)
!4349 = distinct !DISubprogram(name: "is_metairq", scope: !232, file: !232, line: 74, type: !572, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4350)
!4350 = !{!4351}
!4351 = !DILocalVariable(name: "thread", arg: 1, scope: !4349, file: !232, line: 74, type: !101)
!4352 = !DILocation(line: 74, column: 47, scope: !4349)
!4353 = !DILocation(line: 80, column: 9, scope: !4349)
!4354 = !DILocation(line: 81, column: 2, scope: !4349)
!4355 = distinct !DISubprogram(name: "z_is_inactive_timeout", scope: !515, file: !515, line: 35, type: !4356, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4358)
!4356 = !DISubroutineType(types: !4357)
!4357 = !{!236, !4268}
!4358 = !{!4359}
!4359 = !DILocalVariable(name: "to", arg: 1, scope: !4355, file: !515, line: 35, type: !4268)
!4360 = !DILocation(line: 35, column: 66, scope: !4355)
!4361 = !DILocation(line: 37, column: 31, scope: !4355)
!4362 = !DILocation(line: 37, column: 35, scope: !4355)
!4363 = !DILocation(line: 37, column: 10, scope: !4355)
!4364 = !DILocation(line: 37, column: 9, scope: !4355)
!4365 = !DILocation(line: 37, column: 2, scope: !4355)
!4366 = distinct !DISubprogram(name: "sys_dnode_is_linked", scope: !113, file: !113, line: 234, type: !4367, scopeLine: 235, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4371)
!4367 = !DISubroutineType(types: !4368)
!4368 = !{!236, !4369}
!4369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4370, size: 32)
!4370 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !112)
!4371 = !{!4372}
!4372 = !DILocalVariable(name: "node", arg: 1, scope: !4366, file: !113, line: 234, type: !4369)
!4373 = !DILocation(line: 234, column: 60, scope: !4366)
!4374 = !DILocation(line: 236, column: 9, scope: !4366)
!4375 = !DILocation(line: 236, column: 15, scope: !4366)
!4376 = !DILocation(line: 236, column: 20, scope: !4366)
!4377 = !DILocation(line: 236, column: 2, scope: !4366)
!4378 = distinct !DISubprogram(name: "pended_on_thread", scope: !232, file: !232, line: 727, type: !4379, scopeLine: 728, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4381)
!4379 = !DISubroutineType(types: !4380)
!4380 = !{!137, !101}
!4381 = !{!4382}
!4382 = !DILocalVariable(name: "thread", arg: 1, scope: !4378, file: !232, line: 727, type: !101)
!4383 = !DILocation(line: 727, column: 53, scope: !4378)
!4384 = !DILocation(line: 731, column: 9, scope: !4378)
!4385 = !DILocation(line: 731, column: 17, scope: !4378)
!4386 = !DILocation(line: 731, column: 22, scope: !4378)
!4387 = !DILocation(line: 731, column: 2, scope: !4378)
!4388 = distinct !DISubprogram(name: "z_mark_thread_as_not_pending", scope: !784, file: !784, line: 167, type: !483, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4389)
!4389 = !{!4390}
!4390 = !DILocalVariable(name: "thread", arg: 1, scope: !4388, file: !784, line: 167, type: !101)
!4391 = !DILocation(line: 167, column: 66, scope: !4388)
!4392 = !DILocation(line: 169, column: 2, scope: !4388)
!4393 = !DILocation(line: 169, column: 10, scope: !4388)
!4394 = !DILocation(line: 169, column: 15, scope: !4388)
!4395 = !DILocation(line: 169, column: 28, scope: !4388)
!4396 = !DILocation(line: 170, column: 1, scope: !4388)
!4397 = !DISubprogram(name: "arch_swap", scope: !1240, file: !1240, line: 198, type: !1948, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !213)
!4398 = distinct !DISubprogram(name: "sys_dlist_insert", scope: !113, file: !113, line: 452, type: !4399, scopeLine: 453, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4401)
!4399 = !DISubroutineType(types: !4400)
!4400 = !{null, !228, !228}
!4401 = !{!4402, !4403, !4404}
!4402 = !DILocalVariable(name: "successor", arg: 1, scope: !4398, file: !113, line: 452, type: !228)
!4403 = !DILocalVariable(name: "node", arg: 2, scope: !4398, file: !113, line: 452, type: !228)
!4404 = !DILocalVariable(name: "prev", scope: !4398, file: !113, line: 454, type: !2714)
!4405 = !DILocation(line: 452, column: 50, scope: !4398)
!4406 = !DILocation(line: 452, column: 74, scope: !4398)
!4407 = !DILocation(line: 454, column: 2, scope: !4398)
!4408 = !DILocation(line: 454, column: 21, scope: !4398)
!4409 = !DILocation(line: 454, column: 28, scope: !4398)
!4410 = !DILocation(line: 454, column: 39, scope: !4398)
!4411 = !DILocation(line: 456, column: 15, scope: !4398)
!4412 = !DILocation(line: 456, column: 2, scope: !4398)
!4413 = !DILocation(line: 456, column: 8, scope: !4398)
!4414 = !DILocation(line: 456, column: 13, scope: !4398)
!4415 = !DILocation(line: 457, column: 15, scope: !4398)
!4416 = !DILocation(line: 457, column: 2, scope: !4398)
!4417 = !DILocation(line: 457, column: 8, scope: !4398)
!4418 = !DILocation(line: 457, column: 13, scope: !4398)
!4419 = !DILocation(line: 458, column: 15, scope: !4398)
!4420 = !DILocation(line: 458, column: 2, scope: !4398)
!4421 = !DILocation(line: 458, column: 8, scope: !4398)
!4422 = !DILocation(line: 458, column: 13, scope: !4398)
!4423 = !DILocation(line: 459, column: 20, scope: !4398)
!4424 = !DILocation(line: 459, column: 2, scope: !4398)
!4425 = !DILocation(line: 459, column: 13, scope: !4398)
!4426 = !DILocation(line: 459, column: 18, scope: !4398)
!4427 = !DILocation(line: 460, column: 1, scope: !4398)
!4428 = distinct !DISubprogram(name: "sys_dlist_append", scope: !113, file: !113, line: 413, type: !4429, scopeLine: 414, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4431)
!4429 = !DISubroutineType(types: !4430)
!4430 = !{null, !870, !228}
!4431 = !{!4432, !4433, !4434}
!4432 = !DILocalVariable(name: "list", arg: 1, scope: !4428, file: !113, line: 413, type: !870)
!4433 = !DILocalVariable(name: "node", arg: 2, scope: !4428, file: !113, line: 413, type: !228)
!4434 = !DILocalVariable(name: "tail", scope: !4428, file: !113, line: 415, type: !2714)
!4435 = !DILocation(line: 413, column: 50, scope: !4428)
!4436 = !DILocation(line: 413, column: 69, scope: !4428)
!4437 = !DILocation(line: 415, column: 2, scope: !4428)
!4438 = !DILocation(line: 415, column: 21, scope: !4428)
!4439 = !DILocation(line: 415, column: 28, scope: !4428)
!4440 = !DILocation(line: 415, column: 34, scope: !4428)
!4441 = !DILocation(line: 417, column: 15, scope: !4428)
!4442 = !DILocation(line: 417, column: 2, scope: !4428)
!4443 = !DILocation(line: 417, column: 8, scope: !4428)
!4444 = !DILocation(line: 417, column: 13, scope: !4428)
!4445 = !DILocation(line: 418, column: 15, scope: !4428)
!4446 = !DILocation(line: 418, column: 2, scope: !4428)
!4447 = !DILocation(line: 418, column: 8, scope: !4428)
!4448 = !DILocation(line: 418, column: 13, scope: !4428)
!4449 = !DILocation(line: 420, column: 15, scope: !4428)
!4450 = !DILocation(line: 420, column: 2, scope: !4428)
!4451 = !DILocation(line: 420, column: 8, scope: !4428)
!4452 = !DILocation(line: 420, column: 13, scope: !4428)
!4453 = !DILocation(line: 421, column: 15, scope: !4428)
!4454 = !DILocation(line: 421, column: 2, scope: !4428)
!4455 = !DILocation(line: 421, column: 8, scope: !4428)
!4456 = !DILocation(line: 421, column: 13, scope: !4428)
!4457 = !DILocation(line: 422, column: 1, scope: !4428)
!4458 = distinct !DISubprogram(name: "sys_dnode_init", scope: !113, file: !113, line: 220, type: !2709, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4459)
!4459 = !{!4460}
!4460 = !DILocalVariable(name: "node", arg: 1, scope: !4458, file: !113, line: 220, type: !228)
!4461 = !DILocation(line: 220, column: 48, scope: !4458)
!4462 = !DILocation(line: 222, column: 2, scope: !4458)
!4463 = !DILocation(line: 222, column: 8, scope: !4458)
!4464 = !DILocation(line: 222, column: 13, scope: !4458)
!4465 = !DILocation(line: 223, column: 2, scope: !4458)
!4466 = !DILocation(line: 223, column: 8, scope: !4458)
!4467 = !DILocation(line: 223, column: 13, scope: !4458)
!4468 = !DILocation(line: 224, column: 1, scope: !4458)
!4469 = distinct !DISubprogram(name: "sys_dlist_is_empty", scope: !113, file: !113, line: 275, type: !4470, scopeLine: 276, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4472)
!4470 = !DISubroutineType(types: !4471)
!4471 = !{!236, !870}
!4472 = !{!4473}
!4473 = !DILocalVariable(name: "list", arg: 1, scope: !4469, file: !113, line: 275, type: !870)
!4474 = !DILocation(line: 275, column: 53, scope: !4469)
!4475 = !DILocation(line: 277, column: 9, scope: !4469)
!4476 = !DILocation(line: 277, column: 15, scope: !4469)
!4477 = !DILocation(line: 277, column: 23, scope: !4469)
!4478 = !DILocation(line: 277, column: 20, scope: !4469)
!4479 = !DILocation(line: 277, column: 2, scope: !4469)
!4480 = !DISubprogram(name: "z_rb_get_minmax", scope: !129, file: !129, line: 117, type: !4481, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !213)
!4481 = !DISubroutineType(types: !4482)
!4482 = !{!133, !2898, !145}
!4483 = distinct !DISubprogram(name: "k_yield", scope: !3309, file: !3309, line: 175, type: !694, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !213)
!4484 = !DILocation(line: 183, column: 2, scope: !4483)
!4485 = !DILocation(line: 183, column: 7, scope: !4486)
!4486 = distinct !DILexicalBlock(scope: !4483, file: !3309, line: 183, column: 5)
!4487 = !{i64 134718}
!4488 = !DILocation(line: 183, column: 47, scope: !4486)
!4489 = !DILocation(line: 184, column: 2, scope: !4483)
!4490 = !DILocation(line: 185, column: 1, scope: !4483)
!4491 = !DISubprogram(name: "sys_clock_tick_get_32", scope: !224, file: !224, line: 191, type: !2495, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !213)
!4492 = distinct !DISubprogram(name: "unready_thread", scope: !232, file: !232, line: 734, type: !483, scopeLine: 735, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4493)
!4493 = !{!4494}
!4494 = !DILocalVariable(name: "thread", arg: 1, scope: !4492, file: !232, line: 734, type: !101)
!4495 = !DILocation(line: 734, column: 45, scope: !4492)
!4496 = !DILocation(line: 736, column: 25, scope: !4497)
!4497 = distinct !DILexicalBlock(scope: !4492, file: !232, line: 736, column: 6)
!4498 = !DILocation(line: 736, column: 6, scope: !4497)
!4499 = !DILocation(line: 736, column: 6, scope: !4492)
!4500 = !DILocation(line: 737, column: 18, scope: !4501)
!4501 = distinct !DILexicalBlock(scope: !4497, file: !232, line: 736, column: 34)
!4502 = !DILocation(line: 274, column: 83, scope: !810, inlinedAt: !4503)
!4503 = distinct !DILocation(line: 737, column: 3, scope: !4501)
!4504 = !DILocation(line: 276, column: 2, scope: !810, inlinedAt: !4503)
!4505 = !DILocation(line: 276, column: 15, scope: !810, inlinedAt: !4503)
!4506 = !DILocation(line: 276, column: 28, scope: !810, inlinedAt: !4503)
!4507 = !DILocation(line: 277, column: 26, scope: !818, inlinedAt: !4503)
!4508 = !DILocation(line: 277, column: 6, scope: !818, inlinedAt: !4503)
!4509 = !DILocation(line: 277, column: 6, scope: !810, inlinedAt: !4503)
!4510 = !DILocation(line: 278, column: 15, scope: !822, inlinedAt: !4503)
!4511 = !DILocation(line: 242, column: 80, scope: !824, inlinedAt: !4512)
!4512 = distinct !DILocation(line: 278, column: 3, scope: !822, inlinedAt: !4503)
!4513 = !DILocation(line: 244, column: 33, scope: !824, inlinedAt: !4512)
!4514 = !DILocation(line: 208, column: 81, scope: !830, inlinedAt: !4515)
!4515 = distinct !DILocation(line: 244, column: 21, scope: !824, inlinedAt: !4512)
!4516 = !DILocation(line: 223, column: 9, scope: !830, inlinedAt: !4515)
!4517 = !DILocation(line: 244, column: 42, scope: !824, inlinedAt: !4512)
!4518 = !DILocation(line: 244, column: 2, scope: !824, inlinedAt: !4512)
!4519 = !DILocation(line: 279, column: 2, scope: !822, inlinedAt: !4503)
!4520 = !DILocation(line: 738, column: 2, scope: !4501)
!4521 = !DILocation(line: 739, column: 15, scope: !4492)
!4522 = !DILocation(line: 739, column: 41, scope: !4492)
!4523 = !DILocation(line: 739, column: 22, scope: !4492)
!4524 = !DILocation(line: 739, column: 2, scope: !4492)
!4525 = !DILocation(line: 740, column: 1, scope: !4492)
!4526 = distinct !DISubprogram(name: "z_add_thread_timeout", scope: !515, file: !515, line: 47, type: !3944, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4527)
!4527 = !{!4528, !4529}
!4528 = !DILocalVariable(name: "thread", arg: 1, scope: !4526, file: !515, line: 47, type: !101)
!4529 = !DILocalVariable(name: "ticks", arg: 2, scope: !4526, file: !515, line: 47, type: !331)
!4530 = !DILocation(line: 47, column: 58, scope: !4526)
!4531 = !DILocation(line: 47, column: 78, scope: !4526)
!4532 = !DILocation(line: 49, column: 17, scope: !4526)
!4533 = !DILocation(line: 49, column: 25, scope: !4526)
!4534 = !DILocation(line: 49, column: 30, scope: !4526)
!4535 = !DILocation(line: 49, column: 2, scope: !4526)
!4536 = !DILocation(line: 50, column: 1, scope: !4526)
!4537 = distinct !DISubprogram(name: "unpend_all", scope: !232, file: !232, line: 1699, type: !4538, scopeLine: 1700, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4540)
!4538 = !DISubroutineType(types: !4539)
!4539 = !{null, !137}
!4540 = !{!4541, !4542}
!4541 = !DILocalVariable(name: "wait_q", arg: 1, scope: !4537, file: !232, line: 1699, type: !137)
!4542 = !DILocalVariable(name: "thread", scope: !4537, file: !232, line: 1701, type: !101)
!4543 = !DILocation(line: 1699, column: 42, scope: !4537)
!4544 = !DILocation(line: 1701, column: 2, scope: !4537)
!4545 = !DILocation(line: 1701, column: 19, scope: !4537)
!4546 = !DILocation(line: 1703, column: 2, scope: !4537)
!4547 = !DILocation(line: 1703, column: 32, scope: !4537)
!4548 = !DILocation(line: 1703, column: 19, scope: !4537)
!4549 = !DILocation(line: 1703, column: 17, scope: !4537)
!4550 = !DILocation(line: 1703, column: 41, scope: !4537)
!4551 = !DILocation(line: 1704, column: 28, scope: !4552)
!4552 = distinct !DILexicalBlock(scope: !4537, file: !232, line: 1703, column: 47)
!4553 = !DILocation(line: 1704, column: 3, scope: !4552)
!4554 = !DILocation(line: 1705, column: 32, scope: !4552)
!4555 = !DILocation(line: 1705, column: 9, scope: !4552)
!4556 = !DILocation(line: 1706, column: 32, scope: !4552)
!4557 = !DILocation(line: 59, column: 47, scope: !4037, inlinedAt: !4558)
!4558 = distinct !DILocation(line: 1706, column: 3, scope: !4552)
!4559 = !DILocation(line: 59, column: 68, scope: !4037, inlinedAt: !4558)
!4560 = !DILocation(line: 61, column: 35, scope: !4037, inlinedAt: !4558)
!4561 = !DILocation(line: 61, column: 2, scope: !4037, inlinedAt: !4558)
!4562 = !DILocation(line: 61, column: 10, scope: !4037, inlinedAt: !4558)
!4563 = !DILocation(line: 61, column: 15, scope: !4037, inlinedAt: !4558)
!4564 = !DILocation(line: 61, column: 33, scope: !4037, inlinedAt: !4558)
!4565 = !DILocation(line: 1707, column: 16, scope: !4552)
!4566 = !DILocation(line: 1707, column: 3, scope: !4552)
!4567 = distinct !{!4567, !4546, !4568}
!4568 = !DILocation(line: 1708, column: 2, scope: !4537)
!4569 = !DILocation(line: 1709, column: 1, scope: !4537)
!4570 = distinct !DISubprogram(name: "z_mark_thread_as_pending", scope: !784, file: !784, line: 162, type: !483, scopeLine: 163, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4571)
!4571 = !{!4572}
!4572 = !DILocalVariable(name: "thread", arg: 1, scope: !4570, file: !784, line: 162, type: !101)
!4573 = !DILocation(line: 162, column: 62, scope: !4570)
!4574 = !DILocation(line: 164, column: 2, scope: !4570)
!4575 = !DILocation(line: 164, column: 10, scope: !4570)
!4576 = !DILocation(line: 164, column: 15, scope: !4570)
!4577 = !DILocation(line: 164, column: 28, scope: !4570)
!4578 = !DILocation(line: 165, column: 1, scope: !4570)
!4579 = distinct !DISubprogram(name: "sys_dlist_peek_next_no_check", scope: !113, file: !113, line: 334, type: !4251, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4580)
!4580 = !{!4581, !4582}
!4581 = !DILocalVariable(name: "list", arg: 1, scope: !4579, file: !113, line: 334, type: !870)
!4582 = !DILocalVariable(name: "node", arg: 2, scope: !4579, file: !113, line: 335, type: !228)
!4583 = !DILocation(line: 334, column: 70, scope: !4579)
!4584 = !DILocation(line: 335, column: 21, scope: !4579)
!4585 = !DILocation(line: 337, column: 10, scope: !4579)
!4586 = !DILocation(line: 337, column: 18, scope: !4579)
!4587 = !DILocation(line: 337, column: 24, scope: !4579)
!4588 = !DILocation(line: 337, column: 15, scope: !4579)
!4589 = !DILocation(line: 337, column: 9, scope: !4579)
!4590 = !DILocation(line: 337, column: 45, scope: !4579)
!4591 = !DILocation(line: 337, column: 51, scope: !4579)
!4592 = !DILocation(line: 337, column: 2, scope: !4579)
