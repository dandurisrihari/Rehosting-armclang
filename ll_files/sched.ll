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

@_kernel = external global %struct.z_kernel, align 4
@slice_timeouts = internal global [1 x %struct._timeout] zeroinitializer, align 8, !dbg !0
@slice_expired = internal global [1 x i8] zeroinitializer, align 1, !dbg !233
@sched_spinlock = hidden global %struct.k_spinlock zeroinitializer, align 1, !dbg !230
@slice_ticks = internal global i32 0, align 4, !dbg !241
@slice_max_prio = internal global i32 0, align 4, !dbg !243
@pending_current = internal global ptr null, align 4, !dbg !239
@z_sys_post_kernel = external global i8, align 1
@z_idle_threads = external global [1 x %struct.k_thread], align 8

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_k_object_access_grant(ptr noundef %0, ptr noundef %1) #0 !dbg !255 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !260, metadata !DIExpression()), !dbg !261
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !262, metadata !DIExpression()), !dbg !263
  %5 = load ptr, ptr %3, align 4, !dbg !264
  %6 = load ptr, ptr %4, align 4, !dbg !265
  ret void, !dbg !266
}

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_k_object_release(ptr noundef %0) #0 !dbg !267 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !270, metadata !DIExpression()), !dbg !271
  %3 = load ptr, ptr %2, align 4, !dbg !272
  ret void, !dbg !273
}

; Function Attrs: noinline nounwind optnone
define internal ptr @z_impl_k_object_alloc(i8 noundef zeroext %0) #0 !dbg !274 {
  %2 = alloca i8, align 1
  store i8 %0, ptr %2, align 1
  call void @llvm.dbg.declare(metadata ptr %2, metadata !277, metadata !DIExpression()), !dbg !278
  %3 = load i8, ptr %2, align 1, !dbg !279
  ret ptr null, !dbg !280
}

; Function Attrs: noinline nounwind optnone
define internal ptr @z_impl_k_object_alloc_size(i8 noundef zeroext %0, i32 noundef %1) #0 !dbg !281 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8 %0, ptr %3, align 1
  call void @llvm.dbg.declare(metadata ptr %3, metadata !284, metadata !DIExpression()), !dbg !285
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !286, metadata !DIExpression()), !dbg !287
  %5 = load i8, ptr %3, align 1, !dbg !288
  %6 = load i32, ptr %4, align 4, !dbg !289
  ret ptr null, !dbg !290
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_thread_timeout_expires_ticks(ptr noundef %0) #0 !dbg !291 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !296, metadata !DIExpression()), !dbg !297
  %3 = load ptr, ptr %2, align 4, !dbg !298
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !299
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !300
  %6 = call i64 @z_timeout_expires(ptr noundef %5), !dbg !301
  ret i64 %6, !dbg !302
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_thread_timeout_remaining_ticks(ptr noundef %0) #0 !dbg !303 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !304, metadata !DIExpression()), !dbg !305
  %3 = load ptr, ptr %2, align 4, !dbg !306
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !307
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !308
  %6 = call i64 @z_timeout_remaining(ptr noundef %5), !dbg !309
  ret i64 %6, !dbg !310
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_timer_expires_ticks(ptr noundef %0) #0 !dbg !311 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !333, metadata !DIExpression()), !dbg !334
  %3 = load ptr, ptr %2, align 4, !dbg !335
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !336
  %5 = call i64 @z_timeout_expires(ptr noundef %4), !dbg !337
  ret i64 %5, !dbg !338
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_timer_remaining_ticks(ptr noundef %0) #0 !dbg !339 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !340, metadata !DIExpression()), !dbg !341
  %3 = load ptr, ptr %2, align 4, !dbg !342
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !343
  %5 = call i64 @z_timeout_remaining(ptr noundef %4), !dbg !344
  ret i64 %5, !dbg !345
}

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_k_timer_user_data_set(ptr noundef %0, ptr noundef %1) #0 !dbg !346 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !349, metadata !DIExpression()), !dbg !350
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !351, metadata !DIExpression()), !dbg !352
  %5 = load ptr, ptr %4, align 4, !dbg !353
  %6 = load ptr, ptr %3, align 4, !dbg !354
  %7 = getelementptr inbounds %struct.k_timer, ptr %6, i32 0, i32 6, !dbg !355
  store ptr %5, ptr %7, align 4, !dbg !356
  ret void, !dbg !357
}

; Function Attrs: noinline nounwind optnone
define internal ptr @z_impl_k_timer_user_data_get(ptr noundef %0) #0 !dbg !358 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !361, metadata !DIExpression()), !dbg !362
  %3 = load ptr, ptr %2, align 4, !dbg !363
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 6, !dbg !364
  %5 = load ptr, ptr %4, align 4, !dbg !364
  ret ptr %5, !dbg !365
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_queue_is_empty(ptr noundef %0) #0 !dbg !366 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !387, metadata !DIExpression()), !dbg !388
  %3 = load ptr, ptr %2, align 4, !dbg !389
  %4 = getelementptr inbounds %struct.k_queue, ptr %3, i32 0, i32 0, !dbg !390
  %5 = call zeroext i1 @sys_sflist_is_empty(ptr noundef %4), !dbg !391
  %6 = zext i1 %5 to i32, !dbg !392
  ret i32 %6, !dbg !393
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_sem_count_get(ptr noundef %0) #0 !dbg !394 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !403, metadata !DIExpression()), !dbg !404
  %3 = load ptr, ptr %2, align 4, !dbg !405
  %4 = getelementptr inbounds %struct.k_sem, ptr %3, i32 0, i32 1, !dbg !406
  %5 = load i32, ptr %4, align 4, !dbg !406
  ret i32 %5, !dbg !407
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_msgq_num_free_get(ptr noundef %0) #0 !dbg !408 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !424, metadata !DIExpression()), !dbg !425
  %3 = load ptr, ptr %2, align 4, !dbg !426
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 3, !dbg !427
  %5 = load i32, ptr %4, align 4, !dbg !427
  %6 = load ptr, ptr %2, align 4, !dbg !428
  %7 = getelementptr inbounds %struct.k_msgq, ptr %6, i32 0, i32 8, !dbg !429
  %8 = load i32, ptr %7, align 4, !dbg !429
  %9 = sub i32 %5, %8, !dbg !430
  ret i32 %9, !dbg !431
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_msgq_num_used_get(ptr noundef %0) #0 !dbg !432 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !433, metadata !DIExpression()), !dbg !434
  %3 = load ptr, ptr %2, align 4, !dbg !435
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 8, !dbg !436
  %5 = load i32, ptr %4, align 4, !dbg !436
  ret i32 %5, !dbg !437
}

; Function Attrs: noinline nounwind optnone
define hidden i32 @z_sched_prio_cmp(ptr noundef %0, ptr noundef %1) #0 !dbg !438 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !441, metadata !DIExpression()), !dbg !442
  store ptr %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !443, metadata !DIExpression()), !dbg !444
  call void @llvm.dbg.declare(metadata ptr %6, metadata !445, metadata !DIExpression()), !dbg !446
  %8 = load ptr, ptr %4, align 4, !dbg !447
  %9 = getelementptr inbounds %struct.k_thread, ptr %8, i32 0, i32 0, !dbg !448
  %10 = getelementptr inbounds %struct._thread_base, ptr %9, i32 0, i32 4, !dbg !449
  %11 = getelementptr inbounds %struct.anon, ptr %10, i32 0, i32 0, !dbg !449
  %12 = load i8, ptr %11, align 2, !dbg !449
  %13 = sext i8 %12 to i32, !dbg !447
  store i32 %13, ptr %6, align 4, !dbg !446
  call void @llvm.dbg.declare(metadata ptr %7, metadata !450, metadata !DIExpression()), !dbg !451
  %14 = load ptr, ptr %5, align 4, !dbg !452
  %15 = getelementptr inbounds %struct.k_thread, ptr %14, i32 0, i32 0, !dbg !453
  %16 = getelementptr inbounds %struct._thread_base, ptr %15, i32 0, i32 4, !dbg !454
  %17 = getelementptr inbounds %struct.anon, ptr %16, i32 0, i32 0, !dbg !454
  %18 = load i8, ptr %17, align 2, !dbg !454
  %19 = sext i8 %18 to i32, !dbg !452
  store i32 %19, ptr %7, align 4, !dbg !451
  %20 = load i32, ptr %6, align 4, !dbg !455
  %21 = load i32, ptr %7, align 4, !dbg !457
  %22 = icmp ne i32 %20, %21, !dbg !458
  br i1 %22, label %23, label %27, !dbg !459

23:                                               ; preds = %2
  %24 = load i32, ptr %7, align 4, !dbg !460
  %25 = load i32, ptr %6, align 4, !dbg !462
  %26 = sub nsw i32 %24, %25, !dbg !463
  store i32 %26, ptr %3, align 4, !dbg !464
  br label %28, !dbg !464

27:                                               ; preds = %2
  store i32 0, ptr %3, align 4, !dbg !465
  br label %28, !dbg !465

28:                                               ; preds = %27, %23
  %29 = load i32, ptr %3, align 4, !dbg !466
  ret i32 %29, !dbg !466
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone
define hidden void @z_reset_time_slice(ptr noundef %0) #0 !dbg !467 {
  %2 = alloca ptr, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.k_timeout_t, align 8
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !470, metadata !DIExpression()), !dbg !471
  call void @llvm.dbg.declare(metadata ptr %3, metadata !472, metadata !DIExpression()), !dbg !473
  %5 = load i8, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 4), align 4, !dbg !474
  %6 = zext i8 %5 to i32, !dbg !475
  store i32 %6, ptr %3, align 4, !dbg !473
  %7 = load i32, ptr %3, align 4, !dbg !476
  %8 = getelementptr inbounds [1 x %struct._timeout], ptr @slice_timeouts, i32 0, i32 %7, !dbg !477
  %9 = call i32 @z_abort_timeout(ptr noundef %8), !dbg !478
  %10 = load i32, ptr %3, align 4, !dbg !479
  %11 = getelementptr inbounds [1 x i8], ptr @slice_expired, i32 0, i32 %10, !dbg !480
  store i8 0, ptr %11, align 1, !dbg !481
  %12 = load ptr, ptr %2, align 4, !dbg !482
  %13 = call zeroext i1 @sliceable(ptr noundef %12), !dbg !484
  br i1 %13, label %14, label %24, !dbg !485

14:                                               ; preds = %1
  %15 = load i32, ptr %3, align 4, !dbg !486
  %16 = getelementptr inbounds [1 x %struct._timeout], ptr @slice_timeouts, i32 0, i32 %15, !dbg !488
  %17 = getelementptr inbounds %struct.k_timeout_t, ptr %4, i32 0, i32 0, !dbg !489
  %18 = load ptr, ptr %2, align 4, !dbg !490
  %19 = call i32 @slice_time(ptr noundef %18), !dbg !491
  %20 = sub nsw i32 %19, 1, !dbg !492
  %21 = sext i32 %20 to i64, !dbg !493
  store i64 %21, ptr %17, align 8, !dbg !489
  %22 = getelementptr inbounds %struct.k_timeout_t, ptr %4, i32 0, i32 0, !dbg !494
  %23 = load [1 x i64], ptr %22, align 8, !dbg !494
  call void @z_add_timeout(ptr noundef %16, ptr noundef @slice_timeout, [1 x i64] %23), !dbg !494
  br label %24, !dbg !495

24:                                               ; preds = %14, %1
  ret void, !dbg !496
}

declare i32 @z_abort_timeout(ptr noundef) #2

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @sliceable(ptr noundef %0) #0 !dbg !497 {
  %2 = alloca ptr, align 4
  %3 = alloca i8, align 1
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !500, metadata !DIExpression()), !dbg !501
  call void @llvm.dbg.declare(metadata ptr %3, metadata !502, metadata !DIExpression()), !dbg !503
  %4 = load ptr, ptr %2, align 4, !dbg !504
  %5 = call i32 @is_preempt(ptr noundef %4), !dbg !505
  %6 = icmp ne i32 %5, 0, !dbg !505
  br i1 %6, label %7, label %27, !dbg !506

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 4, !dbg !507
  %9 = call i32 @slice_time(ptr noundef %8), !dbg !508
  %10 = icmp ne i32 %9, 0, !dbg !509
  br i1 %10, label %11, label %27, !dbg !510

11:                                               ; preds = %7
  %12 = load ptr, ptr %2, align 4, !dbg !511
  %13 = getelementptr inbounds %struct.k_thread, ptr %12, i32 0, i32 0, !dbg !512
  %14 = getelementptr inbounds %struct._thread_base, ptr %13, i32 0, i32 4, !dbg !513
  %15 = getelementptr inbounds %struct.anon, ptr %14, i32 0, i32 0, !dbg !513
  %16 = load i8, ptr %15, align 2, !dbg !513
  %17 = sext i8 %16 to i32, !dbg !511
  %18 = load i32, ptr @slice_max_prio, align 4, !dbg !514
  %19 = call zeroext i1 @z_is_prio_higher(i32 noundef %17, i32 noundef %18), !dbg !515
  br i1 %19, label %27, label %20, !dbg !516

20:                                               ; preds = %11
  %21 = load ptr, ptr %2, align 4, !dbg !517
  %22 = call zeroext i1 @z_is_thread_prevented_from_running(ptr noundef %21), !dbg !518
  br i1 %22, label %27, label %23, !dbg !519

23:                                               ; preds = %20
  %24 = load ptr, ptr %2, align 4, !dbg !520
  %25 = call zeroext i1 @z_is_idle_thread_object(ptr noundef %24), !dbg !521
  %26 = xor i1 %25, true, !dbg !522
  br label %27

27:                                               ; preds = %23, %20, %11, %7, %1
  %28 = phi i1 [ false, %20 ], [ false, %11 ], [ false, %7 ], [ false, %1 ], [ %26, %23 ], !dbg !523
  %29 = zext i1 %28 to i8, !dbg !503
  store i8 %29, ptr %3, align 1, !dbg !503
  %30 = load i8, ptr %3, align 1, !dbg !524
  %31 = trunc i8 %30 to i1, !dbg !524
  ret i1 %31, !dbg !525
}

declare void @z_add_timeout(ptr noundef, ptr noundef, [1 x i64]) #2

; Function Attrs: noinline nounwind optnone
define internal void @slice_timeout(ptr noundef %0) #0 !dbg !526 {
  %2 = alloca ptr, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !527, metadata !DIExpression()), !dbg !528
  call void @llvm.dbg.declare(metadata ptr %3, metadata !529, metadata !DIExpression()), !dbg !530
  %5 = load ptr, ptr %2, align 4, !dbg !531
  %6 = ptrtoint ptr %5 to i32, !dbg !533
  %7 = sub i32 %6, ptrtoint (ptr @slice_timeouts to i32), !dbg !533
  %8 = sdiv exact i32 %7, 24, !dbg !533
  store i32 %8, ptr %4, align 4, !dbg !534
  %9 = load i32, ptr %4, align 4, !dbg !536
  store i32 %9, ptr %3, align 4, !dbg !530
  %10 = load i32, ptr %3, align 4, !dbg !537
  %11 = getelementptr inbounds [1 x i8], ptr @slice_expired, i32 0, i32 %10, !dbg !538
  store i8 1, ptr %11, align 1, !dbg !539
  ret void, !dbg !540
}

; Function Attrs: noinline nounwind optnone
define internal i32 @slice_time(ptr noundef %0) #0 !dbg !541 {
  %2 = alloca ptr, align 4
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !544, metadata !DIExpression()), !dbg !545
  call void @llvm.dbg.declare(metadata ptr %3, metadata !546, metadata !DIExpression()), !dbg !547
  %4 = load i32, ptr @slice_ticks, align 4, !dbg !548
  store i32 %4, ptr %3, align 4, !dbg !547
  %5 = load ptr, ptr %2, align 4, !dbg !549
  %6 = load i32, ptr %3, align 4, !dbg !550
  ret i32 %6, !dbg !551
}

; Function Attrs: noinline nounwind optnone
define hidden void @k_sched_time_slice_set(i32 noundef %0, i32 noundef %1) #0 !dbg !552 {
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
  call void @llvm.dbg.declare(metadata ptr %11, metadata !555, metadata !DIExpression()), !dbg !556
  store i32 %1, ptr %12, align 4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !557, metadata !DIExpression()), !dbg !558
  call void @llvm.dbg.declare(metadata ptr %13, metadata !559, metadata !DIExpression()), !dbg !565
  call void @llvm.memset.p0.i32(ptr align 4 %13, i8 0, i32 4, i1 false), !dbg !565
  call void @llvm.dbg.declare(metadata ptr %14, metadata !566, metadata !DIExpression()), !dbg !567
  store ptr @sched_spinlock, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !568, metadata !DIExpression()), !dbg !573
  %15 = load ptr, ptr %10, align 4, !dbg !575
  call void @llvm.dbg.declare(metadata ptr %9, metadata !576, metadata !DIExpression()), !dbg !577
  call void @llvm.dbg.declare(metadata ptr %5, metadata !578, metadata !DIExpression()), !dbg !583
  %16 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #5, !dbg !585, !srcloc !586
  store i32 %16, ptr %5, align 4, !dbg !585
  %17 = load i32, ptr %5, align 4, !dbg !587
  store i32 %17, ptr %9, align 4, !dbg !588
  %18 = load ptr, ptr %10, align 4, !dbg !589
  store ptr %18, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !590, metadata !DIExpression()), !dbg !594
  %19 = load ptr, ptr %4, align 4, !dbg !596
  %20 = load ptr, ptr %10, align 4, !dbg !597
  store ptr %20, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !598, metadata !DIExpression()), !dbg !600
  %21 = load ptr, ptr %3, align 4, !dbg !602
  %22 = load i32, ptr %9, align 4, !dbg !603
  %23 = getelementptr inbounds %struct.z_spinlock_key, ptr %14, i32 0, i32 0, !dbg !604
  store i32 %22, ptr %23, align 4, !dbg !604
  br label %24, !dbg !605

24:                                               ; preds = %arch_irq_unlock.exit, %2
  %25 = getelementptr inbounds %struct.z_spinlock_key, ptr %13, i32 0, i32 0, !dbg !606
  %26 = load i32, ptr %25, align 4, !dbg !606
  %27 = icmp ne i32 %26, 0, !dbg !608
  %28 = xor i1 %27, true, !dbg !608
  br i1 %28, label %29, label %44, !dbg !609

29:                                               ; preds = %24
  %30 = load i32, ptr %11, align 4, !dbg !610
  %31 = mul i32 %30, 10, !dbg !612
  store i32 %31, ptr @slice_ticks, align 4, !dbg !613
  %32 = load i32, ptr %12, align 4, !dbg !614
  store i32 %32, ptr @slice_max_prio, align 4, !dbg !615
  %33 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !616
  call void @z_reset_time_slice(ptr noundef %33), !dbg !617
  br label %34, !dbg !618

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.z_spinlock_key, ptr %14, i32 0, i32 0, !dbg !619
  %36 = load [1 x i32], ptr %35, align 4, !dbg !619
  store [1 x i32] %36, ptr %7, align 4
  store ptr @sched_spinlock, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !620, metadata !DIExpression()), !dbg !624
  call void @llvm.dbg.declare(metadata ptr %7, metadata !626, metadata !DIExpression()), !dbg !627
  %37 = load ptr, ptr %8, align 4, !dbg !628
  %38 = load i32, ptr %7, align 4, !dbg !629
  store i32 %38, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !630, metadata !DIExpression()), !dbg !634
  %39 = load i32, ptr %6, align 4, !dbg !636
  %40 = icmp ne i32 %39, 0, !dbg !638
  br i1 %40, label %41, label %42, !dbg !639

41:                                               ; preds = %34
  br label %arch_irq_unlock.exit, !dbg !640

42:                                               ; preds = %34
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #5, !dbg !642, !srcloc !643
  br label %arch_irq_unlock.exit, !dbg !644

arch_irq_unlock.exit:                             ; preds = %41, %42
  %43 = getelementptr inbounds %struct.z_spinlock_key, ptr %13, i32 0, i32 0, !dbg !645
  store i32 1, ptr %43, align 4, !dbg !646
  br label %24, !dbg !647, !llvm.loop !648

44:                                               ; preds = %24
  ret void, !dbg !650
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: noinline nounwind optnone
define hidden void @z_time_slice() #0 !dbg !651 {
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
  call void @llvm.dbg.declare(metadata ptr %12, metadata !654, metadata !DIExpression()), !dbg !655
  store ptr @sched_spinlock, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !568, metadata !DIExpression()), !dbg !656
  %14 = load ptr, ptr %11, align 4, !dbg !658
  call void @llvm.dbg.declare(metadata ptr %10, metadata !576, metadata !DIExpression()), !dbg !659
  call void @llvm.dbg.declare(metadata ptr %3, metadata !578, metadata !DIExpression()), !dbg !660
  %15 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #5, !dbg !662, !srcloc !586
  store i32 %15, ptr %3, align 4, !dbg !662
  %16 = load i32, ptr %3, align 4, !dbg !663
  store i32 %16, ptr %10, align 4, !dbg !664
  %17 = load ptr, ptr %11, align 4, !dbg !665
  store ptr %17, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !590, metadata !DIExpression()), !dbg !666
  %18 = load ptr, ptr %2, align 4, !dbg !668
  %19 = load ptr, ptr %11, align 4, !dbg !669
  store ptr %19, ptr %1, align 4
  call void @llvm.dbg.declare(metadata ptr %1, metadata !598, metadata !DIExpression()), !dbg !670
  %20 = load ptr, ptr %1, align 4, !dbg !672
  %21 = load i32, ptr %10, align 4, !dbg !673
  %22 = getelementptr inbounds %struct.z_spinlock_key, ptr %12, i32 0, i32 0, !dbg !674
  store i32 %21, ptr %22, align 4, !dbg !674
  call void @llvm.dbg.declare(metadata ptr %13, metadata !675, metadata !DIExpression()), !dbg !676
  %23 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !677
  store ptr %23, ptr %13, align 4, !dbg !676
  %24 = load ptr, ptr @pending_current, align 4, !dbg !678
  %25 = load ptr, ptr %13, align 4, !dbg !680
  %26 = icmp eq ptr %24, %25, !dbg !681
  br i1 %26, label %27, label %37, !dbg !682

27:                                               ; preds = %0
  %28 = load ptr, ptr %13, align 4, !dbg !683
  call void @z_reset_time_slice(ptr noundef %28), !dbg !685
  %29 = getelementptr inbounds %struct.z_spinlock_key, ptr %12, i32 0, i32 0, !dbg !686
  %30 = load [1 x i32], ptr %29, align 4, !dbg !686
  store [1 x i32] %30, ptr %6, align 4
  store ptr @sched_spinlock, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !620, metadata !DIExpression()), !dbg !687
  call void @llvm.dbg.declare(metadata ptr %6, metadata !626, metadata !DIExpression()), !dbg !689
  %31 = load ptr, ptr %7, align 4, !dbg !690
  %32 = load i32, ptr %6, align 4, !dbg !691
  store i32 %32, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !630, metadata !DIExpression()), !dbg !692
  %33 = load i32, ptr %5, align 4, !dbg !694
  %34 = icmp ne i32 %33, 0, !dbg !695
  br i1 %34, label %35, label %36, !dbg !696

35:                                               ; preds = %27
  br label %arch_irq_unlock.exit, !dbg !697

36:                                               ; preds = %27
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #5, !dbg !698, !srcloc !643
  br label %arch_irq_unlock.exit, !dbg !699

arch_irq_unlock.exit:                             ; preds = %35, %36
  br label %62, !dbg !700

37:                                               ; preds = %0
  store ptr null, ptr @pending_current, align 4, !dbg !701
  %38 = load i8, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 4), align 4, !dbg !702
  %39 = zext i8 %38 to i32, !dbg !704
  %40 = getelementptr inbounds [1 x i8], ptr @slice_expired, i32 0, i32 %39, !dbg !704
  %41 = load i8, ptr %40, align 1, !dbg !704
  %42 = trunc i8 %41 to i1, !dbg !704
  br i1 %42, label %43, label %53, !dbg !705

43:                                               ; preds = %37
  %44 = load ptr, ptr %13, align 4, !dbg !706
  %45 = call zeroext i1 @sliceable(ptr noundef %44), !dbg !707
  br i1 %45, label %46, label %53, !dbg !708

46:                                               ; preds = %43
  %47 = load ptr, ptr %13, align 4, !dbg !709
  %48 = call zeroext i1 @z_is_thread_prevented_from_running(ptr noundef %47), !dbg !712
  br i1 %48, label %51, label %49, !dbg !713

49:                                               ; preds = %46
  %50 = load ptr, ptr %13, align 4, !dbg !714
  call void @move_thread_to_end_of_prio_q(ptr noundef %50), !dbg !716
  br label %51, !dbg !717

51:                                               ; preds = %49, %46
  %52 = load ptr, ptr %13, align 4, !dbg !718
  call void @z_reset_time_slice(ptr noundef %52), !dbg !719
  br label %53, !dbg !720

53:                                               ; preds = %51, %43, %37
  %54 = getelementptr inbounds %struct.z_spinlock_key, ptr %12, i32 0, i32 0, !dbg !721
  %55 = load [1 x i32], ptr %54, align 4, !dbg !721
  store [1 x i32] %55, ptr %8, align 4
  store ptr @sched_spinlock, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !620, metadata !DIExpression()), !dbg !722
  call void @llvm.dbg.declare(metadata ptr %8, metadata !626, metadata !DIExpression()), !dbg !724
  %56 = load ptr, ptr %9, align 4, !dbg !725
  %57 = load i32, ptr %8, align 4, !dbg !726
  store i32 %57, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !630, metadata !DIExpression()), !dbg !727
  %58 = load i32, ptr %4, align 4, !dbg !729
  %59 = icmp ne i32 %58, 0, !dbg !730
  br i1 %59, label %60, label %61, !dbg !731

60:                                               ; preds = %53
  br label %arch_irq_unlock.exit1, !dbg !732

61:                                               ; preds = %53
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #5, !dbg !733, !srcloc !643
  br label %arch_irq_unlock.exit1, !dbg !734

arch_irq_unlock.exit1:                            ; preds = %60, %61
  br label %62, !dbg !735

62:                                               ; preds = %arch_irq_unlock.exit1, %arch_irq_unlock.exit
  ret void, !dbg !735
}

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @z_is_thread_prevented_from_running(ptr noundef %0) #0 !dbg !736 {
  %2 = alloca ptr, align 4
  %3 = alloca i8, align 1
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !738, metadata !DIExpression()), !dbg !739
  call void @llvm.dbg.declare(metadata ptr %3, metadata !740, metadata !DIExpression()), !dbg !741
  %4 = load ptr, ptr %2, align 4, !dbg !742
  %5 = getelementptr inbounds %struct.k_thread, ptr %4, i32 0, i32 0, !dbg !743
  %6 = getelementptr inbounds %struct._thread_base, ptr %5, i32 0, i32 3, !dbg !744
  %7 = load i8, ptr %6, align 1, !dbg !744
  store i8 %7, ptr %3, align 1, !dbg !741
  %8 = load i8, ptr %3, align 1, !dbg !745
  %9 = zext i8 %8 to i32, !dbg !745
  %10 = and i32 %9, 31, !dbg !746
  %11 = icmp ne i32 %10, 0, !dbg !747
  ret i1 %11, !dbg !748
}

; Function Attrs: noinline nounwind optnone
define internal void @move_thread_to_end_of_prio_q(ptr noundef %0) #0 !dbg !749 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  %11 = alloca ptr, align 4
  %12 = alloca ptr, align 4
  %13 = alloca ptr, align 4
  store ptr %0, ptr %13, align 4
  call void @llvm.dbg.declare(metadata ptr %13, metadata !750, metadata !DIExpression()), !dbg !751
  %14 = load ptr, ptr %13, align 4, !dbg !752
  %15 = call zeroext i1 @z_is_thread_queued(ptr noundef %14), !dbg !754
  br i1 %15, label %16, label %31, !dbg !755

16:                                               ; preds = %1
  %17 = load ptr, ptr %13, align 4, !dbg !756
  store ptr %17, ptr %12, align 4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !758, metadata !DIExpression()), !dbg !760
  %18 = load ptr, ptr %12, align 4, !dbg !762
  %19 = getelementptr inbounds %struct._thread_base, ptr %18, i32 0, i32 3, !dbg !763
  %20 = load i8, ptr %19, align 1, !dbg !764
  %21 = zext i8 %20 to i32, !dbg !764
  %22 = and i32 %21, -129, !dbg !764
  %23 = trunc i32 %22 to i8, !dbg !764
  store i8 %23, ptr %19, align 1, !dbg !764
  %24 = load ptr, ptr %12, align 4, !dbg !765
  %25 = call zeroext i1 @should_queue_thread(ptr noundef %24), !dbg !767
  br i1 %25, label %26, label %dequeue_thread.exit, !dbg !768

26:                                               ; preds = %16
  %27 = load ptr, ptr %12, align 4, !dbg !769
  store ptr %27, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !771, metadata !DIExpression()), !dbg !773
  %28 = load ptr, ptr %10, align 4, !dbg !775
  store ptr %28, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !776, metadata !DIExpression()), !dbg !780
  %29 = load ptr, ptr %9, align 4, !dbg !782
  %30 = load ptr, ptr %10, align 4, !dbg !783
  call void @z_priq_dumb_remove(ptr noundef getelementptr inbounds (%struct.z_kernel, ptr @_kernel, i32 0, i32 1, i32 1), ptr noundef %30), !dbg !784
  br label %dequeue_thread.exit, !dbg !785

dequeue_thread.exit:                              ; preds = %16, %26
  br label %31, !dbg !786

31:                                               ; preds = %dequeue_thread.exit, %1
  %32 = load ptr, ptr %13, align 4, !dbg !787
  store ptr %32, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !788, metadata !DIExpression()), !dbg !790
  %33 = load ptr, ptr %11, align 4, !dbg !792
  %34 = getelementptr inbounds %struct._thread_base, ptr %33, i32 0, i32 3, !dbg !793
  %35 = load i8, ptr %34, align 1, !dbg !794
  %36 = zext i8 %35 to i32, !dbg !794
  %37 = or i32 %36, 128, !dbg !794
  %38 = trunc i32 %37 to i8, !dbg !794
  store i8 %38, ptr %34, align 1, !dbg !794
  %39 = load ptr, ptr %11, align 4, !dbg !795
  %40 = call zeroext i1 @should_queue_thread(ptr noundef %39), !dbg !797
  br i1 %40, label %41, label %queue_thread.exit, !dbg !798

41:                                               ; preds = %31
  %42 = load ptr, ptr %11, align 4, !dbg !799
  store ptr %42, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !801, metadata !DIExpression()), !dbg !803
  %43 = load ptr, ptr %8, align 4, !dbg !805
  store ptr %43, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !776, metadata !DIExpression()), !dbg !806
  %44 = load ptr, ptr %7, align 4, !dbg !808
  %45 = load ptr, ptr %8, align 4, !dbg !809
  store ptr getelementptr inbounds (%struct.z_kernel, ptr @_kernel, i32 0, i32 1, i32 1), ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !810, metadata !DIExpression()), !dbg !815
  store ptr %45, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !817, metadata !DIExpression()), !dbg !818
  call void @llvm.dbg.declare(metadata ptr %4, metadata !819, metadata !DIExpression()), !dbg !820
  %46 = load ptr, ptr %2, align 4, !dbg !821
  %47 = call ptr @sys_dlist_peek_head(ptr noundef %46), !dbg !823
  %48 = icmp ne ptr %47, null, !dbg !824
  br i1 %48, label %49, label %53, !dbg !825

49:                                               ; preds = %41
  %50 = load ptr, ptr %2, align 4, !dbg !826
  %51 = call ptr @sys_dlist_peek_head(ptr noundef %50), !dbg !828
  store ptr %51, ptr %5, align 4, !dbg !829
  %52 = load ptr, ptr %5, align 4, !dbg !830
  br label %54, !dbg !825

53:                                               ; preds = %41
  br label %54, !dbg !825

54:                                               ; preds = %53, %49
  %55 = phi ptr [ %52, %49 ], [ null, %53 ], !dbg !825
  store ptr %55, ptr %4, align 4, !dbg !831
  br label %56, !dbg !832

56:                                               ; preds = %84, %54
  %57 = load ptr, ptr %4, align 4, !dbg !833
  %58 = icmp ne ptr %57, null, !dbg !835
  br i1 %58, label %59, label %86, !dbg !836

59:                                               ; preds = %56
  %60 = load ptr, ptr %3, align 4, !dbg !837
  %61 = load ptr, ptr %4, align 4, !dbg !840
  %62 = call i32 @z_sched_prio_cmp(ptr noundef %60, ptr noundef %61), !dbg !841
  %63 = icmp sgt i32 %62, 0, !dbg !842
  br i1 %63, label %64, label %67, !dbg !843

64:                                               ; preds = %59
  %65 = load ptr, ptr %4, align 4, !dbg !844
  %66 = load ptr, ptr %3, align 4, !dbg !846
  call void @sys_dlist_insert(ptr noundef %65, ptr noundef %66), !dbg !847
  br label %z_priq_dumb_add.exit, !dbg !848

67:                                               ; preds = %59
  %68 = load ptr, ptr %4, align 4, !dbg !849
  %69 = icmp ne ptr %68, null, !dbg !850
  br i1 %69, label %70, label %83, !dbg !851

70:                                               ; preds = %67
  %71 = load ptr, ptr %2, align 4, !dbg !852
  %72 = load ptr, ptr %4, align 4, !dbg !853
  %73 = call ptr @sys_dlist_peek_next(ptr noundef %71, ptr noundef %72), !dbg !854
  %74 = icmp ne ptr %73, null, !dbg !855
  br i1 %74, label %75, label %80, !dbg !856

75:                                               ; preds = %70
  %76 = load ptr, ptr %2, align 4, !dbg !857
  %77 = load ptr, ptr %4, align 4, !dbg !859
  %78 = call ptr @sys_dlist_peek_next(ptr noundef %76, ptr noundef %77), !dbg !860
  store ptr %78, ptr %6, align 4, !dbg !861
  %79 = load ptr, ptr %6, align 4, !dbg !862
  br label %81, !dbg !856

80:                                               ; preds = %70
  br label %81, !dbg !856

81:                                               ; preds = %80, %75
  %82 = phi ptr [ %79, %75 ], [ null, %80 ], !dbg !856
  br label %84, !dbg !851

83:                                               ; preds = %67
  br label %84, !dbg !851

84:                                               ; preds = %83, %81
  %85 = phi ptr [ %82, %81 ], [ null, %83 ], !dbg !851
  store ptr %85, ptr %4, align 4, !dbg !863
  br label %56, !dbg !864, !llvm.loop !865

86:                                               ; preds = %56
  %87 = load ptr, ptr %2, align 4, !dbg !867
  %88 = load ptr, ptr %3, align 4, !dbg !868
  call void @sys_dlist_append(ptr noundef %87, ptr noundef %88), !dbg !869
  br label %z_priq_dumb_add.exit, !dbg !870

z_priq_dumb_add.exit:                             ; preds = %64, %86
  br label %queue_thread.exit, !dbg !871

queue_thread.exit:                                ; preds = %31, %z_priq_dumb_add.exit
  %89 = load ptr, ptr %13, align 4, !dbg !872
  %90 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !873
  %91 = icmp eq ptr %89, %90, !dbg !874
  %92 = zext i1 %91 to i32, !dbg !874
  call void @update_cache(i32 noundef %92), !dbg !875
  ret void, !dbg !876
}

; Function Attrs: noinline nounwind optnone
define hidden void @z_ready_thread(ptr noundef %0) #0 !dbg !877 {
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
  call void @llvm.dbg.declare(metadata ptr %10, metadata !878, metadata !DIExpression()), !dbg !879
  call void @llvm.dbg.declare(metadata ptr %11, metadata !880, metadata !DIExpression()), !dbg !882
  call void @llvm.memset.p0.i32(ptr align 4 %11, i8 0, i32 4, i1 false), !dbg !882
  call void @llvm.dbg.declare(metadata ptr %12, metadata !883, metadata !DIExpression()), !dbg !884
  store ptr @sched_spinlock, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !568, metadata !DIExpression()), !dbg !885
  %13 = load ptr, ptr %9, align 4, !dbg !887
  call void @llvm.dbg.declare(metadata ptr %8, metadata !576, metadata !DIExpression()), !dbg !888
  call void @llvm.dbg.declare(metadata ptr %4, metadata !578, metadata !DIExpression()), !dbg !889
  %14 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #5, !dbg !891, !srcloc !586
  store i32 %14, ptr %4, align 4, !dbg !891
  %15 = load i32, ptr %4, align 4, !dbg !892
  store i32 %15, ptr %8, align 4, !dbg !893
  %16 = load ptr, ptr %9, align 4, !dbg !894
  store ptr %16, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !590, metadata !DIExpression()), !dbg !895
  %17 = load ptr, ptr %3, align 4, !dbg !897
  %18 = load ptr, ptr %9, align 4, !dbg !898
  store ptr %18, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !598, metadata !DIExpression()), !dbg !899
  %19 = load ptr, ptr %2, align 4, !dbg !901
  %20 = load i32, ptr %8, align 4, !dbg !902
  %21 = getelementptr inbounds %struct.z_spinlock_key, ptr %12, i32 0, i32 0, !dbg !903
  store i32 %20, ptr %21, align 4, !dbg !903
  br label %22, !dbg !904

22:                                               ; preds = %arch_irq_unlock.exit, %1
  %23 = getelementptr inbounds %struct.z_spinlock_key, ptr %11, i32 0, i32 0, !dbg !905
  %24 = load i32, ptr %23, align 4, !dbg !905
  %25 = icmp ne i32 %24, 0, !dbg !907
  %26 = xor i1 %25, true, !dbg !907
  br i1 %26, label %27, label %43, !dbg !908

27:                                               ; preds = %22
  %28 = load ptr, ptr %10, align 4, !dbg !909
  %29 = call zeroext i1 @thread_active_elsewhere(ptr noundef %28), !dbg !912
  br i1 %29, label %32, label %30, !dbg !913

30:                                               ; preds = %27
  %31 = load ptr, ptr %10, align 4, !dbg !914
  call void @ready_thread(ptr noundef %31), !dbg !916
  br label %32, !dbg !917

32:                                               ; preds = %30, %27
  br label %33, !dbg !918

33:                                               ; preds = %32
  %34 = getelementptr inbounds %struct.z_spinlock_key, ptr %12, i32 0, i32 0, !dbg !919
  %35 = load [1 x i32], ptr %34, align 4, !dbg !919
  store [1 x i32] %35, ptr %6, align 4
  store ptr @sched_spinlock, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !620, metadata !DIExpression()), !dbg !920
  call void @llvm.dbg.declare(metadata ptr %6, metadata !626, metadata !DIExpression()), !dbg !922
  %36 = load ptr, ptr %7, align 4, !dbg !923
  %37 = load i32, ptr %6, align 4, !dbg !924
  store i32 %37, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !630, metadata !DIExpression()), !dbg !925
  %38 = load i32, ptr %5, align 4, !dbg !927
  %39 = icmp ne i32 %38, 0, !dbg !928
  br i1 %39, label %40, label %41, !dbg !929

40:                                               ; preds = %33
  br label %arch_irq_unlock.exit, !dbg !930

41:                                               ; preds = %33
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #5, !dbg !931, !srcloc !643
  br label %arch_irq_unlock.exit, !dbg !932

arch_irq_unlock.exit:                             ; preds = %40, %41
  %42 = getelementptr inbounds %struct.z_spinlock_key, ptr %11, i32 0, i32 0, !dbg !933
  store i32 1, ptr %42, align 4, !dbg !934
  br label %22, !dbg !935, !llvm.loop !936

43:                                               ; preds = %22
  ret void, !dbg !938
}

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @thread_active_elsewhere(ptr noundef %0) #0 !dbg !939 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !940, metadata !DIExpression()), !dbg !941
  %3 = load ptr, ptr %2, align 4, !dbg !942
  ret i1 false, !dbg !943
}

; Function Attrs: noinline nounwind optnone
define internal void @ready_thread(ptr noundef %0) #0 !dbg !944 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  store ptr %0, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !945, metadata !DIExpression()), !dbg !946
  %11 = load ptr, ptr %10, align 4, !dbg !947
  %12 = call zeroext i1 @z_is_thread_queued(ptr noundef %11), !dbg !949
  br i1 %12, label %76, label %13, !dbg !950

13:                                               ; preds = %1
  %14 = load ptr, ptr %10, align 4, !dbg !951
  %15 = call zeroext i1 @z_is_thread_ready(ptr noundef %14), !dbg !952
  br i1 %15, label %16, label %76, !dbg !953

16:                                               ; preds = %13
  br label %17, !dbg !954

17:                                               ; preds = %16
  br label %18, !dbg !956

18:                                               ; preds = %17
  %19 = load ptr, ptr %10, align 4, !dbg !958
  store ptr %19, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !788, metadata !DIExpression()), !dbg !959
  %20 = load ptr, ptr %9, align 4, !dbg !961
  %21 = getelementptr inbounds %struct._thread_base, ptr %20, i32 0, i32 3, !dbg !962
  %22 = load i8, ptr %21, align 1, !dbg !963
  %23 = zext i8 %22 to i32, !dbg !963
  %24 = or i32 %23, 128, !dbg !963
  %25 = trunc i32 %24 to i8, !dbg !963
  store i8 %25, ptr %21, align 1, !dbg !963
  %26 = load ptr, ptr %9, align 4, !dbg !964
  %27 = call zeroext i1 @should_queue_thread(ptr noundef %26), !dbg !965
  br i1 %27, label %28, label %queue_thread.exit, !dbg !966

28:                                               ; preds = %18
  %29 = load ptr, ptr %9, align 4, !dbg !967
  store ptr %29, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !801, metadata !DIExpression()), !dbg !968
  %30 = load ptr, ptr %8, align 4, !dbg !970
  store ptr %30, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !776, metadata !DIExpression()), !dbg !971
  %31 = load ptr, ptr %7, align 4, !dbg !973
  %32 = load ptr, ptr %8, align 4, !dbg !974
  store ptr getelementptr inbounds (%struct.z_kernel, ptr @_kernel, i32 0, i32 1, i32 1), ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !810, metadata !DIExpression()), !dbg !975
  store ptr %32, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !817, metadata !DIExpression()), !dbg !977
  call void @llvm.dbg.declare(metadata ptr %4, metadata !819, metadata !DIExpression()), !dbg !978
  %33 = load ptr, ptr %2, align 4, !dbg !979
  %34 = call ptr @sys_dlist_peek_head(ptr noundef %33), !dbg !980
  %35 = icmp ne ptr %34, null, !dbg !981
  br i1 %35, label %36, label %40, !dbg !982

36:                                               ; preds = %28
  %37 = load ptr, ptr %2, align 4, !dbg !983
  %38 = call ptr @sys_dlist_peek_head(ptr noundef %37), !dbg !984
  store ptr %38, ptr %5, align 4, !dbg !985
  %39 = load ptr, ptr %5, align 4, !dbg !986
  br label %41, !dbg !982

40:                                               ; preds = %28
  br label %41, !dbg !982

41:                                               ; preds = %40, %36
  %42 = phi ptr [ %39, %36 ], [ null, %40 ], !dbg !982
  store ptr %42, ptr %4, align 4, !dbg !987
  br label %43, !dbg !988

43:                                               ; preds = %71, %41
  %44 = load ptr, ptr %4, align 4, !dbg !989
  %45 = icmp ne ptr %44, null, !dbg !990
  br i1 %45, label %46, label %73, !dbg !991

46:                                               ; preds = %43
  %47 = load ptr, ptr %3, align 4, !dbg !992
  %48 = load ptr, ptr %4, align 4, !dbg !993
  %49 = call i32 @z_sched_prio_cmp(ptr noundef %47, ptr noundef %48), !dbg !994
  %50 = icmp sgt i32 %49, 0, !dbg !995
  br i1 %50, label %51, label %54, !dbg !996

51:                                               ; preds = %46
  %52 = load ptr, ptr %4, align 4, !dbg !997
  %53 = load ptr, ptr %3, align 4, !dbg !998
  call void @sys_dlist_insert(ptr noundef %52, ptr noundef %53), !dbg !999
  br label %z_priq_dumb_add.exit, !dbg !1000

54:                                               ; preds = %46
  %55 = load ptr, ptr %4, align 4, !dbg !1001
  %56 = icmp ne ptr %55, null, !dbg !1002
  br i1 %56, label %57, label %70, !dbg !1003

57:                                               ; preds = %54
  %58 = load ptr, ptr %2, align 4, !dbg !1004
  %59 = load ptr, ptr %4, align 4, !dbg !1005
  %60 = call ptr @sys_dlist_peek_next(ptr noundef %58, ptr noundef %59), !dbg !1006
  %61 = icmp ne ptr %60, null, !dbg !1007
  br i1 %61, label %62, label %67, !dbg !1008

62:                                               ; preds = %57
  %63 = load ptr, ptr %2, align 4, !dbg !1009
  %64 = load ptr, ptr %4, align 4, !dbg !1010
  %65 = call ptr @sys_dlist_peek_next(ptr noundef %63, ptr noundef %64), !dbg !1011
  store ptr %65, ptr %6, align 4, !dbg !1012
  %66 = load ptr, ptr %6, align 4, !dbg !1013
  br label %68, !dbg !1008

67:                                               ; preds = %57
  br label %68, !dbg !1008

68:                                               ; preds = %67, %62
  %69 = phi ptr [ %66, %62 ], [ null, %67 ], !dbg !1008
  br label %71, !dbg !1003

70:                                               ; preds = %54
  br label %71, !dbg !1003

71:                                               ; preds = %70, %68
  %72 = phi ptr [ %69, %68 ], [ null, %70 ], !dbg !1003
  store ptr %72, ptr %4, align 4, !dbg !1014
  br label %43, !dbg !1015, !llvm.loop !1016

73:                                               ; preds = %43
  %74 = load ptr, ptr %2, align 4, !dbg !1018
  %75 = load ptr, ptr %3, align 4, !dbg !1019
  call void @sys_dlist_append(ptr noundef %74, ptr noundef %75), !dbg !1020
  br label %z_priq_dumb_add.exit, !dbg !1021

z_priq_dumb_add.exit:                             ; preds = %51, %73
  br label %queue_thread.exit, !dbg !1022

queue_thread.exit:                                ; preds = %18, %z_priq_dumb_add.exit
  call void @update_cache(i32 noundef 0), !dbg !1023
  call void @flag_ipi(), !dbg !1024
  br label %76, !dbg !1025

76:                                               ; preds = %queue_thread.exit, %13, %1
  ret void, !dbg !1026
}

; Function Attrs: noinline nounwind optnone
define hidden void @z_move_thread_to_end_of_prio_q(ptr noundef %0) #0 !dbg !1027 {
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
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1028, metadata !DIExpression()), !dbg !1029
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1030, metadata !DIExpression()), !dbg !1032
  call void @llvm.memset.p0.i32(ptr align 4 %11, i8 0, i32 4, i1 false), !dbg !1032
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1033, metadata !DIExpression()), !dbg !1034
  store ptr @sched_spinlock, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !568, metadata !DIExpression()), !dbg !1035
  %13 = load ptr, ptr %9, align 4, !dbg !1037
  call void @llvm.dbg.declare(metadata ptr %8, metadata !576, metadata !DIExpression()), !dbg !1038
  call void @llvm.dbg.declare(metadata ptr %4, metadata !578, metadata !DIExpression()), !dbg !1039
  %14 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #5, !dbg !1041, !srcloc !586
  store i32 %14, ptr %4, align 4, !dbg !1041
  %15 = load i32, ptr %4, align 4, !dbg !1042
  store i32 %15, ptr %8, align 4, !dbg !1043
  %16 = load ptr, ptr %9, align 4, !dbg !1044
  store ptr %16, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !590, metadata !DIExpression()), !dbg !1045
  %17 = load ptr, ptr %3, align 4, !dbg !1047
  %18 = load ptr, ptr %9, align 4, !dbg !1048
  store ptr %18, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !598, metadata !DIExpression()), !dbg !1049
  %19 = load ptr, ptr %2, align 4, !dbg !1051
  %20 = load i32, ptr %8, align 4, !dbg !1052
  %21 = getelementptr inbounds %struct.z_spinlock_key, ptr %12, i32 0, i32 0, !dbg !1053
  store i32 %20, ptr %21, align 4, !dbg !1053
  br label %22, !dbg !1054

22:                                               ; preds = %arch_irq_unlock.exit, %1
  %23 = getelementptr inbounds %struct.z_spinlock_key, ptr %11, i32 0, i32 0, !dbg !1055
  %24 = load i32, ptr %23, align 4, !dbg !1055
  %25 = icmp ne i32 %24, 0, !dbg !1057
  %26 = xor i1 %25, true, !dbg !1057
  br i1 %26, label %27, label %39, !dbg !1058

27:                                               ; preds = %22
  %28 = load ptr, ptr %10, align 4, !dbg !1059
  call void @move_thread_to_end_of_prio_q(ptr noundef %28), !dbg !1061
  br label %29, !dbg !1062

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.z_spinlock_key, ptr %12, i32 0, i32 0, !dbg !1063
  %31 = load [1 x i32], ptr %30, align 4, !dbg !1063
  store [1 x i32] %31, ptr %6, align 4
  store ptr @sched_spinlock, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !620, metadata !DIExpression()), !dbg !1064
  call void @llvm.dbg.declare(metadata ptr %6, metadata !626, metadata !DIExpression()), !dbg !1066
  %32 = load ptr, ptr %7, align 4, !dbg !1067
  %33 = load i32, ptr %6, align 4, !dbg !1068
  store i32 %33, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !630, metadata !DIExpression()), !dbg !1069
  %34 = load i32, ptr %5, align 4, !dbg !1071
  %35 = icmp ne i32 %34, 0, !dbg !1072
  br i1 %35, label %36, label %37, !dbg !1073

36:                                               ; preds = %29
  br label %arch_irq_unlock.exit, !dbg !1074

37:                                               ; preds = %29
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #5, !dbg !1075, !srcloc !643
  br label %arch_irq_unlock.exit, !dbg !1076

arch_irq_unlock.exit:                             ; preds = %36, %37
  %38 = getelementptr inbounds %struct.z_spinlock_key, ptr %11, i32 0, i32 0, !dbg !1077
  store i32 1, ptr %38, align 4, !dbg !1078
  br label %22, !dbg !1079, !llvm.loop !1080

39:                                               ; preds = %22
  ret void, !dbg !1082
}

; Function Attrs: noinline nounwind optnone
define hidden void @z_sched_start(ptr noundef %0) #0 !dbg !1083 {
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
  store ptr %0, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1084, metadata !DIExpression()), !dbg !1085
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1086, metadata !DIExpression()), !dbg !1087
  store ptr @sched_spinlock, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !568, metadata !DIExpression()), !dbg !1088
  %12 = load ptr, ptr %9, align 4, !dbg !1090
  call void @llvm.dbg.declare(metadata ptr %8, metadata !576, metadata !DIExpression()), !dbg !1091
  call void @llvm.dbg.declare(metadata ptr %4, metadata !578, metadata !DIExpression()), !dbg !1092
  %13 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #5, !dbg !1094, !srcloc !586
  store i32 %13, ptr %4, align 4, !dbg !1094
  %14 = load i32, ptr %4, align 4, !dbg !1095
  store i32 %14, ptr %8, align 4, !dbg !1096
  %15 = load ptr, ptr %9, align 4, !dbg !1097
  store ptr %15, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !590, metadata !DIExpression()), !dbg !1098
  %16 = load ptr, ptr %3, align 4, !dbg !1100
  %17 = load ptr, ptr %9, align 4, !dbg !1101
  store ptr %17, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !598, metadata !DIExpression()), !dbg !1102
  %18 = load ptr, ptr %2, align 4, !dbg !1104
  %19 = load i32, ptr %8, align 4, !dbg !1105
  %20 = getelementptr inbounds %struct.z_spinlock_key, ptr %11, i32 0, i32 0, !dbg !1106
  store i32 %19, ptr %20, align 4, !dbg !1106
  %21 = load ptr, ptr %10, align 4, !dbg !1107
  %22 = call zeroext i1 @z_has_thread_started(ptr noundef %21), !dbg !1109
  br i1 %22, label %23, label %32, !dbg !1110

23:                                               ; preds = %1
  %24 = getelementptr inbounds %struct.z_spinlock_key, ptr %11, i32 0, i32 0, !dbg !1111
  %25 = load [1 x i32], ptr %24, align 4, !dbg !1111
  store [1 x i32] %25, ptr %6, align 4
  store ptr @sched_spinlock, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !620, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.declare(metadata ptr %6, metadata !626, metadata !DIExpression()), !dbg !1115
  %26 = load ptr, ptr %7, align 4, !dbg !1116
  %27 = load i32, ptr %6, align 4, !dbg !1117
  store i32 %27, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !630, metadata !DIExpression()), !dbg !1118
  %28 = load i32, ptr %5, align 4, !dbg !1120
  %29 = icmp ne i32 %28, 0, !dbg !1121
  br i1 %29, label %30, label %31, !dbg !1122

30:                                               ; preds = %23
  br label %arch_irq_unlock.exit, !dbg !1123

31:                                               ; preds = %23
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #5, !dbg !1124, !srcloc !643
  br label %arch_irq_unlock.exit, !dbg !1125

arch_irq_unlock.exit:                             ; preds = %30, %31
  br label %37, !dbg !1126

32:                                               ; preds = %1
  %33 = load ptr, ptr %10, align 4, !dbg !1127
  call void @z_mark_thread_as_started(ptr noundef %33), !dbg !1128
  %34 = load ptr, ptr %10, align 4, !dbg !1129
  call void @ready_thread(ptr noundef %34), !dbg !1130
  %35 = getelementptr inbounds %struct.z_spinlock_key, ptr %11, i32 0, i32 0, !dbg !1131
  %36 = load [1 x i32], ptr %35, align 4, !dbg !1131
  call void @z_reschedule(ptr noundef @sched_spinlock, [1 x i32] %36), !dbg !1131
  br label %37, !dbg !1132

37:                                               ; preds = %32, %arch_irq_unlock.exit
  ret void, !dbg !1132
}

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @z_has_thread_started(ptr noundef %0) #0 !dbg !1133 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1134, metadata !DIExpression()), !dbg !1135
  %3 = load ptr, ptr %2, align 4, !dbg !1136
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !1137
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 3, !dbg !1138
  %6 = load i8, ptr %5, align 1, !dbg !1138
  %7 = zext i8 %6 to i32, !dbg !1136
  %8 = and i32 %7, 4, !dbg !1139
  %9 = icmp eq i32 %8, 0, !dbg !1140
  ret i1 %9, !dbg !1141
}

; Function Attrs: noinline nounwind optnone
define internal void @z_mark_thread_as_started(ptr noundef %0) #0 !dbg !1142 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1143, metadata !DIExpression()), !dbg !1144
  %3 = load ptr, ptr %2, align 4, !dbg !1145
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !1146
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 3, !dbg !1147
  %6 = load i8, ptr %5, align 1, !dbg !1148
  %7 = zext i8 %6 to i32, !dbg !1148
  %8 = and i32 %7, -5, !dbg !1148
  %9 = trunc i32 %8 to i8, !dbg !1148
  store i8 %9, ptr %5, align 1, !dbg !1148
  ret void, !dbg !1149
}

; Function Attrs: noinline nounwind optnone
define hidden void @z_reschedule(ptr noundef %0, [1 x i32] %1) #0 !dbg !1150 {
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
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1151, metadata !DIExpression()), !dbg !1152
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1153, metadata !DIExpression()), !dbg !1154
  %12 = getelementptr inbounds %struct.z_spinlock_key, ptr %9, i32 0, i32 0, !dbg !1155
  %13 = load i32, ptr %12, align 4, !dbg !1155
  %14 = call zeroext i1 @resched(i32 noundef %13), !dbg !1157
  br i1 %14, label %15, label %25, !dbg !1158

15:                                               ; preds = %2
  %16 = call zeroext i1 @need_swap(), !dbg !1159
  br i1 %16, label %17, label %25, !dbg !1160

17:                                               ; preds = %15
  %18 = load ptr, ptr %10, align 4, !dbg !1161
  %19 = getelementptr inbounds %struct.z_spinlock_key, ptr %9, i32 0, i32 0, !dbg !1163
  %20 = load [1 x i32], ptr %19, align 4, !dbg !1163
  store [1 x i32] %20, ptr %5, align 4
  store ptr %18, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1164, metadata !DIExpression()), !dbg !1169
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1171, metadata !DIExpression()), !dbg !1172
  %21 = load ptr, ptr %6, align 4, !dbg !1173
  store ptr %21, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1174, metadata !DIExpression()), !dbg !1176
  %22 = load ptr, ptr %4, align 4, !dbg !1178
  %23 = load i32, ptr %5, align 4, !dbg !1179
  %24 = call i32 @z_swap_irqlock(i32 noundef %23), !dbg !1180
  br label %35, !dbg !1181

25:                                               ; preds = %15, %2
  %26 = load ptr, ptr %10, align 4, !dbg !1182
  %27 = getelementptr inbounds %struct.z_spinlock_key, ptr %9, i32 0, i32 0, !dbg !1184
  %28 = load [1 x i32], ptr %27, align 4, !dbg !1184
  store [1 x i32] %28, ptr %7, align 4
  store ptr %26, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !620, metadata !DIExpression()), !dbg !1185
  call void @llvm.dbg.declare(metadata ptr %7, metadata !626, metadata !DIExpression()), !dbg !1187
  %29 = load ptr, ptr %8, align 4, !dbg !1188
  %30 = load i32, ptr %7, align 4, !dbg !1189
  store i32 %30, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !630, metadata !DIExpression()), !dbg !1190
  %31 = load i32, ptr %3, align 4, !dbg !1192
  %32 = icmp ne i32 %31, 0, !dbg !1193
  br i1 %32, label %33, label %34, !dbg !1194

33:                                               ; preds = %25
  br label %arch_irq_unlock.exit, !dbg !1195

34:                                               ; preds = %25
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #5, !dbg !1196, !srcloc !643
  br label %arch_irq_unlock.exit, !dbg !1197

arch_irq_unlock.exit:                             ; preds = %33, %34
  call void @signal_pending_ipi(), !dbg !1198
  br label %35

35:                                               ; preds = %arch_irq_unlock.exit, %17
  ret void, !dbg !1199
}

; Function Attrs: noinline nounwind optnone
define hidden void @z_impl_k_thread_suspend(ptr noundef %0) #0 !dbg !1200 {
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
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1201, metadata !DIExpression()), !dbg !1202
  br label %16, !dbg !1203

16:                                               ; preds = %1
  br label %17, !dbg !1204

17:                                               ; preds = %16
  %18 = load ptr, ptr %13, align 4, !dbg !1206
  %19 = call i32 @z_abort_thread_timeout(ptr noundef %18), !dbg !1207
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1208, metadata !DIExpression()), !dbg !1210
  call void @llvm.memset.p0.i32(ptr align 4 %14, i8 0, i32 4, i1 false), !dbg !1210
  call void @llvm.dbg.declare(metadata ptr %15, metadata !1211, metadata !DIExpression()), !dbg !1212
  store ptr @sched_spinlock, ptr %12, align 4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !568, metadata !DIExpression()), !dbg !1213
  %20 = load ptr, ptr %12, align 4, !dbg !1215
  call void @llvm.dbg.declare(metadata ptr %11, metadata !576, metadata !DIExpression()), !dbg !1216
  call void @llvm.dbg.declare(metadata ptr %6, metadata !578, metadata !DIExpression()), !dbg !1217
  %21 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #5, !dbg !1219, !srcloc !586
  store i32 %21, ptr %6, align 4, !dbg !1219
  %22 = load i32, ptr %6, align 4, !dbg !1220
  store i32 %22, ptr %11, align 4, !dbg !1221
  %23 = load ptr, ptr %12, align 4, !dbg !1222
  store ptr %23, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !590, metadata !DIExpression()), !dbg !1223
  %24 = load ptr, ptr %5, align 4, !dbg !1225
  %25 = load ptr, ptr %12, align 4, !dbg !1226
  store ptr %25, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !598, metadata !DIExpression()), !dbg !1227
  %26 = load ptr, ptr %4, align 4, !dbg !1229
  %27 = load i32, ptr %11, align 4, !dbg !1230
  %28 = getelementptr inbounds %struct.z_spinlock_key, ptr %15, i32 0, i32 0, !dbg !1231
  store i32 %27, ptr %28, align 4, !dbg !1231
  br label %29, !dbg !1232

29:                                               ; preds = %arch_irq_unlock.exit, %17
  %30 = getelementptr inbounds %struct.z_spinlock_key, ptr %14, i32 0, i32 0, !dbg !1233
  %31 = load i32, ptr %30, align 4, !dbg !1233
  %32 = icmp ne i32 %31, 0, !dbg !1235
  %33 = xor i1 %32, true, !dbg !1235
  br i1 %33, label %34, label %68, !dbg !1236

34:                                               ; preds = %29
  %35 = load ptr, ptr %13, align 4, !dbg !1237
  %36 = call zeroext i1 @z_is_thread_queued(ptr noundef %35), !dbg !1240
  br i1 %36, label %37, label %52, !dbg !1241

37:                                               ; preds = %34
  %38 = load ptr, ptr %13, align 4, !dbg !1242
  store ptr %38, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !758, metadata !DIExpression()), !dbg !1244
  %39 = load ptr, ptr %8, align 4, !dbg !1246
  %40 = getelementptr inbounds %struct._thread_base, ptr %39, i32 0, i32 3, !dbg !1247
  %41 = load i8, ptr %40, align 1, !dbg !1248
  %42 = zext i8 %41 to i32, !dbg !1248
  %43 = and i32 %42, -129, !dbg !1248
  %44 = trunc i32 %43 to i8, !dbg !1248
  store i8 %44, ptr %40, align 1, !dbg !1248
  %45 = load ptr, ptr %8, align 4, !dbg !1249
  %46 = call zeroext i1 @should_queue_thread(ptr noundef %45), !dbg !1250
  br i1 %46, label %47, label %dequeue_thread.exit, !dbg !1251

47:                                               ; preds = %37
  %48 = load ptr, ptr %8, align 4, !dbg !1252
  store ptr %48, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !771, metadata !DIExpression()), !dbg !1253
  %49 = load ptr, ptr %3, align 4, !dbg !1255
  store ptr %49, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !776, metadata !DIExpression()), !dbg !1256
  %50 = load ptr, ptr %2, align 4, !dbg !1258
  %51 = load ptr, ptr %3, align 4, !dbg !1259
  call void @z_priq_dumb_remove(ptr noundef getelementptr inbounds (%struct.z_kernel, ptr @_kernel, i32 0, i32 1, i32 1), ptr noundef %51), !dbg !1260
  br label %dequeue_thread.exit, !dbg !1261

dequeue_thread.exit:                              ; preds = %37, %47
  br label %52, !dbg !1262

52:                                               ; preds = %dequeue_thread.exit, %34
  %53 = load ptr, ptr %13, align 4, !dbg !1263
  call void @z_mark_thread_as_suspended(ptr noundef %53), !dbg !1264
  %54 = load ptr, ptr %13, align 4, !dbg !1265
  %55 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !1266
  %56 = icmp eq ptr %54, %55, !dbg !1267
  %57 = zext i1 %56 to i32, !dbg !1267
  call void @update_cache(i32 noundef %57), !dbg !1268
  br label %58, !dbg !1269

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.z_spinlock_key, ptr %15, i32 0, i32 0, !dbg !1270
  %60 = load [1 x i32], ptr %59, align 4, !dbg !1270
  store [1 x i32] %60, ptr %9, align 4
  store ptr @sched_spinlock, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !620, metadata !DIExpression()), !dbg !1271
  call void @llvm.dbg.declare(metadata ptr %9, metadata !626, metadata !DIExpression()), !dbg !1273
  %61 = load ptr, ptr %10, align 4, !dbg !1274
  %62 = load i32, ptr %9, align 4, !dbg !1275
  store i32 %62, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !630, metadata !DIExpression()), !dbg !1276
  %63 = load i32, ptr %7, align 4, !dbg !1278
  %64 = icmp ne i32 %63, 0, !dbg !1279
  br i1 %64, label %65, label %66, !dbg !1280

65:                                               ; preds = %58
  br label %arch_irq_unlock.exit, !dbg !1281

66:                                               ; preds = %58
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #5, !dbg !1282, !srcloc !643
  br label %arch_irq_unlock.exit, !dbg !1283

arch_irq_unlock.exit:                             ; preds = %65, %66
  %67 = getelementptr inbounds %struct.z_spinlock_key, ptr %14, i32 0, i32 0, !dbg !1284
  store i32 1, ptr %67, align 4, !dbg !1285
  br label %29, !dbg !1286, !llvm.loop !1287

68:                                               ; preds = %29
  %69 = load ptr, ptr %13, align 4, !dbg !1289
  %70 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !1291
  %71 = icmp eq ptr %69, %70, !dbg !1292
  br i1 %71, label %72, label %73, !dbg !1293

72:                                               ; preds = %68
  call void @z_reschedule_unlocked(), !dbg !1294
  br label %73, !dbg !1296

73:                                               ; preds = %72, %68
  br label %74, !dbg !1297

74:                                               ; preds = %73
  br label %75, !dbg !1298

75:                                               ; preds = %74
  ret void, !dbg !1300
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_abort_thread_timeout(ptr noundef %0) #0 !dbg !1301 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1303, metadata !DIExpression()), !dbg !1304
  %3 = load ptr, ptr %2, align 4, !dbg !1305
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !1306
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !1307
  %6 = call i32 @z_abort_timeout(ptr noundef %5), !dbg !1308
  ret i32 %6, !dbg !1309
}

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @z_is_thread_queued(ptr noundef %0) #0 !dbg !1310 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1311, metadata !DIExpression()), !dbg !1312
  %3 = load ptr, ptr %2, align 4, !dbg !1313
  %4 = call zeroext i1 @z_is_thread_state_set(ptr noundef %3, i32 noundef 128), !dbg !1314
  ret i1 %4, !dbg !1315
}

; Function Attrs: noinline nounwind optnone
define internal void @z_mark_thread_as_suspended(ptr noundef %0) #0 !dbg !1316 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1317, metadata !DIExpression()), !dbg !1318
  %3 = load ptr, ptr %2, align 4, !dbg !1319
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !1320
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 3, !dbg !1321
  %6 = load i8, ptr %5, align 1, !dbg !1322
  %7 = zext i8 %6 to i32, !dbg !1322
  %8 = or i32 %7, 16, !dbg !1322
  %9 = trunc i32 %8 to i8, !dbg !1322
  store i8 %9, ptr %5, align 1, !dbg !1322
  br label %10, !dbg !1323

10:                                               ; preds = %1
  br label %11, !dbg !1324

11:                                               ; preds = %10
  ret void, !dbg !1326
}

; Function Attrs: noinline nounwind optnone
define internal void @update_cache(i32 noundef %0) #0 !dbg !1327 {
  %2 = alloca i1, align 1
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 4
  store i32 %0, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1330, metadata !DIExpression()), !dbg !1331
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1332, metadata !DIExpression()), !dbg !1333
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1334, metadata !DIExpression()), !dbg !1338
  %8 = call ptr @z_priq_dumb_best(ptr noundef getelementptr inbounds (%struct.z_kernel, ptr @_kernel, i32 0, i32 1, i32 1)), !dbg !1340
  store ptr %8, ptr %5, align 4, !dbg !1338
  %9 = load ptr, ptr %5, align 4, !dbg !1343
  %10 = icmp ne ptr %9, null, !dbg !1344
  br i1 %10, label %11, label %13, !dbg !1345

11:                                               ; preds = %1
  %12 = load ptr, ptr %5, align 4, !dbg !1346
  br label %next_up.exit, !dbg !1345

13:                                               ; preds = %1
  %14 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 3), align 4, !dbg !1347
  br label %next_up.exit, !dbg !1345

next_up.exit:                                     ; preds = %11, %13
  %15 = phi ptr [ %12, %11 ], [ %14, %13 ], !dbg !1345
  store ptr %15, ptr %7, align 4, !dbg !1333
  %16 = load ptr, ptr %7, align 4, !dbg !1348
  %17 = load i32, ptr %6, align 4, !dbg !1350
  store ptr %16, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1351, metadata !DIExpression()), !dbg !1355
  store i32 %17, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1357, metadata !DIExpression()), !dbg !1358
  %18 = load i32, ptr %4, align 4, !dbg !1359
  %19 = icmp ne i32 %18, 0, !dbg !1361
  br i1 %19, label %20, label %21, !dbg !1362

20:                                               ; preds = %next_up.exit
  store i1 true, ptr %2, align 1, !dbg !1363
  br label %should_preempt.exit, !dbg !1363

21:                                               ; preds = %next_up.exit
  %22 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !1365
  %23 = call zeroext i1 @z_is_thread_prevented_from_running(ptr noundef %22), !dbg !1367
  br i1 %23, label %24, label %25, !dbg !1368

24:                                               ; preds = %21
  store i1 true, ptr %2, align 1, !dbg !1369
  br label %should_preempt.exit, !dbg !1369

25:                                               ; preds = %21
  %26 = load ptr, ptr %3, align 4, !dbg !1371
  %27 = call zeroext i1 @z_is_thread_timeout_active(ptr noundef %26), !dbg !1373
  br i1 %27, label %28, label %29, !dbg !1374

28:                                               ; preds = %25
  store i1 true, ptr %2, align 1, !dbg !1375
  br label %should_preempt.exit, !dbg !1375

29:                                               ; preds = %25
  %30 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !1377
  %31 = call i32 @is_preempt(ptr noundef %30), !dbg !1379
  %32 = icmp ne i32 %31, 0, !dbg !1379
  br i1 %32, label %37, label %33, !dbg !1380

33:                                               ; preds = %29
  %34 = load ptr, ptr %3, align 4, !dbg !1381
  %35 = call i32 @is_metairq(ptr noundef %34), !dbg !1382
  %36 = icmp ne i32 %35, 0, !dbg !1382
  br i1 %36, label %37, label %38, !dbg !1383

37:                                               ; preds = %33, %29
  store i1 true, ptr %2, align 1, !dbg !1384
  br label %should_preempt.exit, !dbg !1384

38:                                               ; preds = %33
  store i1 false, ptr %2, align 1, !dbg !1386
  br label %should_preempt.exit, !dbg !1386

should_preempt.exit:                              ; preds = %20, %24, %28, %37, %38
  %39 = load i1, ptr %2, align 1, !dbg !1387
  br i1 %39, label %40, label %49, !dbg !1388

40:                                               ; preds = %should_preempt.exit
  %41 = load ptr, ptr %7, align 4, !dbg !1389
  %42 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !1392
  %43 = icmp ne ptr %41, %42, !dbg !1393
  br i1 %43, label %44, label %46, !dbg !1394

44:                                               ; preds = %40
  %45 = load ptr, ptr %7, align 4, !dbg !1395
  call void @z_reset_time_slice(ptr noundef %45), !dbg !1397
  br label %46, !dbg !1398

46:                                               ; preds = %44, %40
  %47 = load ptr, ptr %7, align 4, !dbg !1399
  call void @update_metairq_preempt(ptr noundef %47), !dbg !1400
  %48 = load ptr, ptr %7, align 4, !dbg !1401
  store ptr %48, ptr getelementptr inbounds (%struct.z_kernel, ptr @_kernel, i32 0, i32 1), align 4, !dbg !1402
  br label %51, !dbg !1403

49:                                               ; preds = %should_preempt.exit
  %50 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !1404
  store ptr %50, ptr getelementptr inbounds (%struct.z_kernel, ptr @_kernel, i32 0, i32 1), align 4, !dbg !1406
  br label %51

51:                                               ; preds = %49, %46
  ret void, !dbg !1407
}

; Function Attrs: noinline nounwind optnone
define internal void @z_reschedule_unlocked() #0 !dbg !1408 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata ptr %1, metadata !578, metadata !DIExpression()), !dbg !1409
  %2 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #5, !dbg !1411, !srcloc !586
  store i32 %2, ptr %1, align 4, !dbg !1411
  %3 = load i32, ptr %1, align 4, !dbg !1412
  call void @z_reschedule_irqlock(i32 noundef %3), !dbg !1413
  ret void, !dbg !1414
}

; Function Attrs: noinline nounwind optnone
define hidden void @z_impl_k_thread_resume(ptr noundef %0) #0 !dbg !1415 {
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
  store ptr %0, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1416, metadata !DIExpression()), !dbg !1417
  br label %12, !dbg !1418

12:                                               ; preds = %1
  br label %13, !dbg !1419

13:                                               ; preds = %12
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1421, metadata !DIExpression()), !dbg !1422
  store ptr @sched_spinlock, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !568, metadata !DIExpression()), !dbg !1423
  %14 = load ptr, ptr %9, align 4, !dbg !1425
  call void @llvm.dbg.declare(metadata ptr %8, metadata !576, metadata !DIExpression()), !dbg !1426
  call void @llvm.dbg.declare(metadata ptr %4, metadata !578, metadata !DIExpression()), !dbg !1427
  %15 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #5, !dbg !1429, !srcloc !586
  store i32 %15, ptr %4, align 4, !dbg !1429
  %16 = load i32, ptr %4, align 4, !dbg !1430
  store i32 %16, ptr %8, align 4, !dbg !1431
  %17 = load ptr, ptr %9, align 4, !dbg !1432
  store ptr %17, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !590, metadata !DIExpression()), !dbg !1433
  %18 = load ptr, ptr %3, align 4, !dbg !1435
  %19 = load ptr, ptr %9, align 4, !dbg !1436
  store ptr %19, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !598, metadata !DIExpression()), !dbg !1437
  %20 = load ptr, ptr %2, align 4, !dbg !1439
  %21 = load i32, ptr %8, align 4, !dbg !1440
  %22 = getelementptr inbounds %struct.z_spinlock_key, ptr %11, i32 0, i32 0, !dbg !1441
  store i32 %21, ptr %22, align 4, !dbg !1441
  %23 = load ptr, ptr %10, align 4, !dbg !1442
  %24 = call zeroext i1 @z_is_thread_suspended(ptr noundef %23), !dbg !1444
  br i1 %24, label %34, label %25, !dbg !1445

25:                                               ; preds = %13
  %26 = getelementptr inbounds %struct.z_spinlock_key, ptr %11, i32 0, i32 0, !dbg !1446
  %27 = load [1 x i32], ptr %26, align 4, !dbg !1446
  store [1 x i32] %27, ptr %6, align 4
  store ptr @sched_spinlock, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !620, metadata !DIExpression()), !dbg !1448
  call void @llvm.dbg.declare(metadata ptr %6, metadata !626, metadata !DIExpression()), !dbg !1450
  %28 = load ptr, ptr %7, align 4, !dbg !1451
  %29 = load i32, ptr %6, align 4, !dbg !1452
  store i32 %29, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !630, metadata !DIExpression()), !dbg !1453
  %30 = load i32, ptr %5, align 4, !dbg !1455
  %31 = icmp ne i32 %30, 0, !dbg !1456
  br i1 %31, label %32, label %33, !dbg !1457

32:                                               ; preds = %25
  br label %arch_irq_unlock.exit, !dbg !1458

33:                                               ; preds = %25
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #5, !dbg !1459, !srcloc !643
  br label %arch_irq_unlock.exit, !dbg !1460

arch_irq_unlock.exit:                             ; preds = %32, %33
  br label %40, !dbg !1461

34:                                               ; preds = %13
  %35 = load ptr, ptr %10, align 4, !dbg !1462
  call void @z_mark_thread_as_not_suspended(ptr noundef %35), !dbg !1463
  %36 = load ptr, ptr %10, align 4, !dbg !1464
  call void @ready_thread(ptr noundef %36), !dbg !1465
  %37 = getelementptr inbounds %struct.z_spinlock_key, ptr %11, i32 0, i32 0, !dbg !1466
  %38 = load [1 x i32], ptr %37, align 4, !dbg !1466
  call void @z_reschedule(ptr noundef @sched_spinlock, [1 x i32] %38), !dbg !1466
  br label %39, !dbg !1467

39:                                               ; preds = %34
  br label %40, !dbg !1468

40:                                               ; preds = %arch_irq_unlock.exit, %39
  ret void, !dbg !1470
}

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @z_is_thread_suspended(ptr noundef %0) #0 !dbg !1471 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1472, metadata !DIExpression()), !dbg !1473
  %3 = load ptr, ptr %2, align 4, !dbg !1474
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !1475
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 3, !dbg !1476
  %6 = load i8, ptr %5, align 1, !dbg !1476
  %7 = zext i8 %6 to i32, !dbg !1474
  %8 = and i32 %7, 16, !dbg !1477
  %9 = icmp ne i32 %8, 0, !dbg !1478
  ret i1 %9, !dbg !1479
}

; Function Attrs: noinline nounwind optnone
define internal void @z_mark_thread_as_not_suspended(ptr noundef %0) #0 !dbg !1480 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1481, metadata !DIExpression()), !dbg !1482
  %3 = load ptr, ptr %2, align 4, !dbg !1483
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !1484
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 3, !dbg !1485
  %6 = load i8, ptr %5, align 1, !dbg !1486
  %7 = zext i8 %6 to i32, !dbg !1486
  %8 = and i32 %7, -17, !dbg !1486
  %9 = trunc i32 %8 to i8, !dbg !1486
  store i8 %9, ptr %5, align 1, !dbg !1486
  br label %10, !dbg !1487

10:                                               ; preds = %1
  br label %11, !dbg !1488

11:                                               ; preds = %10
  ret void, !dbg !1490
}

; Function Attrs: noinline nounwind optnone
define hidden void @z_pend_thread(ptr noundef %0, ptr noundef %1, [1 x i64] %2) #0 !dbg !1491 {
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
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1494, metadata !DIExpression()), !dbg !1495
  store ptr %1, ptr %14, align 4
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1496, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1498, metadata !DIExpression()), !dbg !1499
  call void @llvm.dbg.declare(metadata ptr %15, metadata !1500, metadata !DIExpression()), !dbg !1502
  call void @llvm.memset.p0.i32(ptr align 4 %15, i8 0, i32 4, i1 false), !dbg !1502
  call void @llvm.dbg.declare(metadata ptr %16, metadata !1503, metadata !DIExpression()), !dbg !1504
  store ptr @sched_spinlock, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !568, metadata !DIExpression()), !dbg !1505
  %18 = load ptr, ptr %11, align 4, !dbg !1507
  call void @llvm.dbg.declare(metadata ptr %10, metadata !576, metadata !DIExpression()), !dbg !1508
  call void @llvm.dbg.declare(metadata ptr %6, metadata !578, metadata !DIExpression()), !dbg !1509
  %19 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #5, !dbg !1511, !srcloc !586
  store i32 %19, ptr %6, align 4, !dbg !1511
  %20 = load i32, ptr %6, align 4, !dbg !1512
  store i32 %20, ptr %10, align 4, !dbg !1513
  %21 = load ptr, ptr %11, align 4, !dbg !1514
  store ptr %21, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !590, metadata !DIExpression()), !dbg !1515
  %22 = load ptr, ptr %5, align 4, !dbg !1517
  %23 = load ptr, ptr %11, align 4, !dbg !1518
  store ptr %23, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !598, metadata !DIExpression()), !dbg !1519
  %24 = load ptr, ptr %4, align 4, !dbg !1521
  %25 = load i32, ptr %10, align 4, !dbg !1522
  %26 = getelementptr inbounds %struct.z_spinlock_key, ptr %16, i32 0, i32 0, !dbg !1523
  store i32 %25, ptr %26, align 4, !dbg !1523
  br label %27, !dbg !1524

27:                                               ; preds = %arch_irq_unlock.exit, %3
  %28 = getelementptr inbounds %struct.z_spinlock_key, ptr %15, i32 0, i32 0, !dbg !1525
  %29 = load i32, ptr %28, align 4, !dbg !1525
  %30 = icmp ne i32 %29, 0, !dbg !1527
  %31 = xor i1 %30, true, !dbg !1527
  br i1 %31, label %32, label %47, !dbg !1528

32:                                               ; preds = %27
  %33 = load ptr, ptr %13, align 4, !dbg !1529
  %34 = load ptr, ptr %14, align 4, !dbg !1531
  %35 = getelementptr inbounds %struct.k_timeout_t, ptr %12, i32 0, i32 0, !dbg !1532
  %36 = load [1 x i64], ptr %35, align 8, !dbg !1532
  call void @pend_locked(ptr noundef %33, ptr noundef %34, [1 x i64] %36), !dbg !1532
  br label %37, !dbg !1533

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.z_spinlock_key, ptr %16, i32 0, i32 0, !dbg !1534
  %39 = load [1 x i32], ptr %38, align 4, !dbg !1534
  store [1 x i32] %39, ptr %8, align 4
  store ptr @sched_spinlock, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !620, metadata !DIExpression()), !dbg !1535
  call void @llvm.dbg.declare(metadata ptr %8, metadata !626, metadata !DIExpression()), !dbg !1537
  %40 = load ptr, ptr %9, align 4, !dbg !1538
  %41 = load i32, ptr %8, align 4, !dbg !1539
  store i32 %41, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !630, metadata !DIExpression()), !dbg !1540
  %42 = load i32, ptr %7, align 4, !dbg !1542
  %43 = icmp ne i32 %42, 0, !dbg !1543
  br i1 %43, label %44, label %45, !dbg !1544

44:                                               ; preds = %37
  br label %arch_irq_unlock.exit, !dbg !1545

45:                                               ; preds = %37
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #5, !dbg !1546, !srcloc !643
  br label %arch_irq_unlock.exit, !dbg !1547

arch_irq_unlock.exit:                             ; preds = %44, %45
  %46 = getelementptr inbounds %struct.z_spinlock_key, ptr %15, i32 0, i32 0, !dbg !1548
  store i32 1, ptr %46, align 4, !dbg !1549
  br label %27, !dbg !1550, !llvm.loop !1551

47:                                               ; preds = %27
  ret void, !dbg !1553
}

; Function Attrs: noinline nounwind optnone
define internal void @pend_locked(ptr noundef %0, ptr noundef %1, [1 x i64] %2) #0 !dbg !1554 {
  %4 = alloca %struct.k_timeout_t, align 8
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = getelementptr inbounds %struct.k_timeout_t, ptr %4, i32 0, i32 0
  store [1 x i64] %2, ptr %7, align 8
  store ptr %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1555, metadata !DIExpression()), !dbg !1556
  store ptr %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1557, metadata !DIExpression()), !dbg !1558
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1559, metadata !DIExpression()), !dbg !1560
  %8 = load ptr, ptr %5, align 4, !dbg !1561
  %9 = load ptr, ptr %6, align 4, !dbg !1562
  call void @add_to_waitq_locked(ptr noundef %8, ptr noundef %9), !dbg !1563
  %10 = load ptr, ptr %5, align 4, !dbg !1564
  %11 = getelementptr inbounds %struct.k_timeout_t, ptr %4, i32 0, i32 0, !dbg !1565
  %12 = load [1 x i64], ptr %11, align 8, !dbg !1565
  call void @add_thread_timeout(ptr noundef %10, [1 x i64] %12), !dbg !1565
  ret void, !dbg !1566
}

; Function Attrs: alwaysinline nounwind
define hidden void @z_unpend_thread_no_timeout(ptr noundef %0) #4 !dbg !1567 {
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
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1568, metadata !DIExpression()), !dbg !1569
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1570, metadata !DIExpression()), !dbg !1572
  call void @llvm.memset.p0.i32(ptr align 4 %11, i8 0, i32 4, i1 false), !dbg !1572
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1573, metadata !DIExpression()), !dbg !1574
  store ptr @sched_spinlock, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !568, metadata !DIExpression()), !dbg !1575
  %13 = load ptr, ptr %9, align 4, !dbg !1577
  call void @llvm.dbg.declare(metadata ptr %8, metadata !576, metadata !DIExpression()), !dbg !1578
  call void @llvm.dbg.declare(metadata ptr %4, metadata !578, metadata !DIExpression()), !dbg !1579
  %14 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #5, !dbg !1581, !srcloc !586
  store i32 %14, ptr %4, align 4, !dbg !1581
  %15 = load i32, ptr %4, align 4, !dbg !1582
  store i32 %15, ptr %8, align 4, !dbg !1583
  %16 = load ptr, ptr %9, align 4, !dbg !1584
  store ptr %16, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !590, metadata !DIExpression()), !dbg !1585
  %17 = load ptr, ptr %3, align 4, !dbg !1587
  %18 = load ptr, ptr %9, align 4, !dbg !1588
  store ptr %18, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !598, metadata !DIExpression()), !dbg !1589
  %19 = load ptr, ptr %2, align 4, !dbg !1591
  %20 = load i32, ptr %8, align 4, !dbg !1592
  %21 = getelementptr inbounds %struct.z_spinlock_key, ptr %12, i32 0, i32 0, !dbg !1593
  store i32 %20, ptr %21, align 4, !dbg !1593
  br label %22, !dbg !1594

22:                                               ; preds = %arch_irq_unlock.exit, %1
  %23 = getelementptr inbounds %struct.z_spinlock_key, ptr %11, i32 0, i32 0, !dbg !1595
  %24 = load i32, ptr %23, align 4, !dbg !1595
  %25 = icmp ne i32 %24, 0, !dbg !1597
  %26 = xor i1 %25, true, !dbg !1597
  br i1 %26, label %27, label %46, !dbg !1598

27:                                               ; preds = %22
  %28 = load ptr, ptr %10, align 4, !dbg !1599
  %29 = getelementptr inbounds %struct.k_thread, ptr %28, i32 0, i32 0, !dbg !1602
  %30 = getelementptr inbounds %struct._thread_base, ptr %29, i32 0, i32 1, !dbg !1603
  %31 = load ptr, ptr %30, align 8, !dbg !1603
  %32 = icmp ne ptr %31, null, !dbg !1604
  br i1 %32, label %33, label %35, !dbg !1605

33:                                               ; preds = %27
  %34 = load ptr, ptr %10, align 4, !dbg !1606
  call void @unpend_thread_no_timeout(ptr noundef %34), !dbg !1608
  br label %35, !dbg !1609

35:                                               ; preds = %33, %27
  br label %36, !dbg !1610

36:                                               ; preds = %35
  %37 = getelementptr inbounds %struct.z_spinlock_key, ptr %12, i32 0, i32 0, !dbg !1611
  %38 = load [1 x i32], ptr %37, align 4, !dbg !1611
  store [1 x i32] %38, ptr %6, align 4
  store ptr @sched_spinlock, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !620, metadata !DIExpression()), !dbg !1612
  call void @llvm.dbg.declare(metadata ptr %6, metadata !626, metadata !DIExpression()), !dbg !1614
  %39 = load ptr, ptr %7, align 4, !dbg !1615
  %40 = load i32, ptr %6, align 4, !dbg !1616
  store i32 %40, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !630, metadata !DIExpression()), !dbg !1617
  %41 = load i32, ptr %5, align 4, !dbg !1619
  %42 = icmp ne i32 %41, 0, !dbg !1620
  br i1 %42, label %43, label %44, !dbg !1621

43:                                               ; preds = %36
  br label %arch_irq_unlock.exit, !dbg !1622

44:                                               ; preds = %36
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #5, !dbg !1623, !srcloc !643
  br label %arch_irq_unlock.exit, !dbg !1624

arch_irq_unlock.exit:                             ; preds = %43, %44
  %45 = getelementptr inbounds %struct.z_spinlock_key, ptr %11, i32 0, i32 0, !dbg !1625
  store i32 1, ptr %45, align 4, !dbg !1626
  br label %22, !dbg !1627, !llvm.loop !1628

46:                                               ; preds = %22
  ret void, !dbg !1630
}

; Function Attrs: noinline nounwind optnone
define internal void @unpend_thread_no_timeout(ptr noundef %0) #0 !dbg !1631 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1632, metadata !DIExpression()), !dbg !1633
  %3 = load ptr, ptr %2, align 4, !dbg !1634
  %4 = call ptr @pended_on_thread(ptr noundef %3), !dbg !1635
  %5 = getelementptr inbounds %struct._wait_q_t, ptr %4, i32 0, i32 0, !dbg !1636
  %6 = load ptr, ptr %2, align 4, !dbg !1637
  call void @z_priq_dumb_remove(ptr noundef %5, ptr noundef %6), !dbg !1638
  %7 = load ptr, ptr %2, align 4, !dbg !1639
  call void @z_mark_thread_as_not_pending(ptr noundef %7), !dbg !1640
  %8 = load ptr, ptr %2, align 4, !dbg !1641
  %9 = getelementptr inbounds %struct.k_thread, ptr %8, i32 0, i32 0, !dbg !1642
  %10 = getelementptr inbounds %struct._thread_base, ptr %9, i32 0, i32 1, !dbg !1643
  store ptr null, ptr %10, align 8, !dbg !1644
  ret void, !dbg !1645
}

; Function Attrs: noinline nounwind optnone
define hidden void @z_sched_wake_thread(ptr noundef %0, i1 noundef zeroext %1) #0 !dbg !1646 {
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
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1649, metadata !DIExpression()), !dbg !1650
  %16 = zext i1 %1 to i8
  store i8 %16, ptr %12, align 1
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1651, metadata !DIExpression()), !dbg !1652
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1653, metadata !DIExpression()), !dbg !1655
  call void @llvm.memset.p0.i32(ptr align 4 %13, i8 0, i32 4, i1 false), !dbg !1655
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1656, metadata !DIExpression()), !dbg !1657
  store ptr @sched_spinlock, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !568, metadata !DIExpression()), !dbg !1658
  %17 = load ptr, ptr %10, align 4, !dbg !1660
  call void @llvm.dbg.declare(metadata ptr %9, metadata !576, metadata !DIExpression()), !dbg !1661
  call void @llvm.dbg.declare(metadata ptr %5, metadata !578, metadata !DIExpression()), !dbg !1662
  %18 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #5, !dbg !1664, !srcloc !586
  store i32 %18, ptr %5, align 4, !dbg !1664
  %19 = load i32, ptr %5, align 4, !dbg !1665
  store i32 %19, ptr %9, align 4, !dbg !1666
  %20 = load ptr, ptr %10, align 4, !dbg !1667
  store ptr %20, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !590, metadata !DIExpression()), !dbg !1668
  %21 = load ptr, ptr %4, align 4, !dbg !1670
  %22 = load ptr, ptr %10, align 4, !dbg !1671
  store ptr %22, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !598, metadata !DIExpression()), !dbg !1672
  %23 = load ptr, ptr %3, align 4, !dbg !1674
  %24 = load i32, ptr %9, align 4, !dbg !1675
  %25 = getelementptr inbounds %struct.z_spinlock_key, ptr %14, i32 0, i32 0, !dbg !1676
  store i32 %24, ptr %25, align 4, !dbg !1676
  br label %26, !dbg !1677

26:                                               ; preds = %arch_irq_unlock.exit, %2
  %27 = getelementptr inbounds %struct.z_spinlock_key, ptr %13, i32 0, i32 0, !dbg !1678
  %28 = load i32, ptr %27, align 4, !dbg !1678
  %29 = icmp ne i32 %28, 0, !dbg !1680
  %30 = xor i1 %29, true, !dbg !1680
  br i1 %30, label %31, label %79, !dbg !1681

31:                                               ; preds = %26
  call void @llvm.dbg.declare(metadata ptr %15, metadata !1682, metadata !DIExpression()), !dbg !1684
  %32 = load ptr, ptr %11, align 4, !dbg !1685
  %33 = getelementptr inbounds %struct.k_thread, ptr %32, i32 0, i32 0, !dbg !1686
  %34 = getelementptr inbounds %struct._thread_base, ptr %33, i32 0, i32 3, !dbg !1687
  %35 = load i8, ptr %34, align 1, !dbg !1687
  %36 = zext i8 %35 to i32, !dbg !1685
  %37 = and i32 %36, 8, !dbg !1688
  %38 = icmp ne i32 %37, 0, !dbg !1688
  br i1 %38, label %47, label %39, !dbg !1689

39:                                               ; preds = %31
  %40 = load ptr, ptr %11, align 4, !dbg !1690
  %41 = getelementptr inbounds %struct.k_thread, ptr %40, i32 0, i32 0, !dbg !1691
  %42 = getelementptr inbounds %struct._thread_base, ptr %41, i32 0, i32 3, !dbg !1692
  %43 = load i8, ptr %42, align 1, !dbg !1692
  %44 = zext i8 %43 to i32, !dbg !1690
  %45 = and i32 %44, 32, !dbg !1693
  %46 = icmp ne i32 %45, 0, !dbg !1689
  br label %47, !dbg !1689

47:                                               ; preds = %39, %31
  %48 = phi i1 [ true, %31 ], [ %46, %39 ]
  %49 = zext i1 %48 to i8, !dbg !1684
  store i8 %49, ptr %15, align 1, !dbg !1684
  %50 = load i8, ptr %15, align 1, !dbg !1694
  %51 = trunc i8 %50 to i1, !dbg !1694
  br i1 %51, label %68, label %52, !dbg !1696

52:                                               ; preds = %47
  %53 = load ptr, ptr %11, align 4, !dbg !1697
  %54 = getelementptr inbounds %struct.k_thread, ptr %53, i32 0, i32 0, !dbg !1700
  %55 = getelementptr inbounds %struct._thread_base, ptr %54, i32 0, i32 1, !dbg !1701
  %56 = load ptr, ptr %55, align 8, !dbg !1701
  %57 = icmp ne ptr %56, null, !dbg !1702
  br i1 %57, label %58, label %60, !dbg !1703

58:                                               ; preds = %52
  %59 = load ptr, ptr %11, align 4, !dbg !1704
  call void @unpend_thread_no_timeout(ptr noundef %59), !dbg !1706
  br label %60, !dbg !1707

60:                                               ; preds = %58, %52
  %61 = load ptr, ptr %11, align 4, !dbg !1708
  call void @z_mark_thread_as_started(ptr noundef %61), !dbg !1709
  %62 = load i8, ptr %12, align 1, !dbg !1710
  %63 = trunc i8 %62 to i1, !dbg !1710
  br i1 %63, label %64, label %66, !dbg !1712

64:                                               ; preds = %60
  %65 = load ptr, ptr %11, align 4, !dbg !1713
  call void @z_mark_thread_as_not_suspended(ptr noundef %65), !dbg !1715
  br label %66, !dbg !1716

66:                                               ; preds = %64, %60
  %67 = load ptr, ptr %11, align 4, !dbg !1717
  call void @ready_thread(ptr noundef %67), !dbg !1718
  br label %68, !dbg !1719

68:                                               ; preds = %66, %47
  br label %69, !dbg !1720

69:                                               ; preds = %68
  %70 = getelementptr inbounds %struct.z_spinlock_key, ptr %14, i32 0, i32 0, !dbg !1721
  %71 = load [1 x i32], ptr %70, align 4, !dbg !1721
  store [1 x i32] %71, ptr %7, align 4
  store ptr @sched_spinlock, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !620, metadata !DIExpression()), !dbg !1722
  call void @llvm.dbg.declare(metadata ptr %7, metadata !626, metadata !DIExpression()), !dbg !1724
  %72 = load ptr, ptr %8, align 4, !dbg !1725
  %73 = load i32, ptr %7, align 4, !dbg !1726
  store i32 %73, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !630, metadata !DIExpression()), !dbg !1727
  %74 = load i32, ptr %6, align 4, !dbg !1729
  %75 = icmp ne i32 %74, 0, !dbg !1730
  br i1 %75, label %76, label %77, !dbg !1731

76:                                               ; preds = %69
  br label %arch_irq_unlock.exit, !dbg !1732

77:                                               ; preds = %69
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #5, !dbg !1733, !srcloc !643
  br label %arch_irq_unlock.exit, !dbg !1734

arch_irq_unlock.exit:                             ; preds = %76, %77
  %78 = getelementptr inbounds %struct.z_spinlock_key, ptr %13, i32 0, i32 0, !dbg !1735
  store i32 1, ptr %78, align 4, !dbg !1736
  br label %26, !dbg !1737, !llvm.loop !1738

79:                                               ; preds = %26
  ret void, !dbg !1740
}

; Function Attrs: noinline nounwind optnone
define hidden void @z_thread_timeout(ptr noundef %0) #0 !dbg !1741 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1742, metadata !DIExpression()), !dbg !1743
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1744, metadata !DIExpression()), !dbg !1745
  %5 = load ptr, ptr %2, align 4, !dbg !1746
  %6 = getelementptr inbounds i8, ptr %5, i32 -24, !dbg !1748
  store ptr %6, ptr %4, align 4, !dbg !1749
  %7 = load ptr, ptr %4, align 4, !dbg !1750
  store ptr %7, ptr %3, align 4, !dbg !1745
  %8 = load ptr, ptr %3, align 4, !dbg !1751
  call void @z_sched_wake_thread(ptr noundef %8, i1 noundef zeroext true), !dbg !1752
  ret void, !dbg !1753
}

; Function Attrs: noinline nounwind optnone
define hidden i32 @z_pend_curr_irqlock(i32 noundef %0, ptr noundef %1, [1 x i64] %2) #0 !dbg !1754 {
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
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1757, metadata !DIExpression()), !dbg !1758
  store ptr %1, ptr %14, align 4
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1759, metadata !DIExpression()), !dbg !1760
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1761, metadata !DIExpression()), !dbg !1762
  %19 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !1763
  %20 = load ptr, ptr %14, align 4, !dbg !1764
  %21 = getelementptr inbounds %struct.k_timeout_t, ptr %12, i32 0, i32 0, !dbg !1765
  %22 = load [1 x i64], ptr %21, align 8, !dbg !1765
  call void @pend_locked(ptr noundef %19, ptr noundef %20, [1 x i64] %22), !dbg !1765
  %23 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !1766
  store ptr %23, ptr @pending_current, align 4, !dbg !1767
  call void @llvm.dbg.declare(metadata ptr %15, metadata !1768, metadata !DIExpression()), !dbg !1769
  %24 = load i32, ptr %13, align 4, !dbg !1770
  %25 = call i32 @z_swap_irqlock(i32 noundef %24), !dbg !1771
  store i32 %25, ptr %15, align 4, !dbg !1769
  call void @llvm.dbg.declare(metadata ptr %16, metadata !1772, metadata !DIExpression()), !dbg !1774
  call void @llvm.memset.p0.i32(ptr align 4 %16, i8 0, i32 4, i1 false), !dbg !1774
  call void @llvm.dbg.declare(metadata ptr %17, metadata !1775, metadata !DIExpression()), !dbg !1776
  store ptr @sched_spinlock, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !568, metadata !DIExpression()), !dbg !1777
  %26 = load ptr, ptr %11, align 4, !dbg !1779
  call void @llvm.dbg.declare(metadata ptr %10, metadata !576, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.declare(metadata ptr %6, metadata !578, metadata !DIExpression()), !dbg !1781
  %27 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #5, !dbg !1783, !srcloc !586
  store i32 %27, ptr %6, align 4, !dbg !1783
  %28 = load i32, ptr %6, align 4, !dbg !1784
  store i32 %28, ptr %10, align 4, !dbg !1785
  %29 = load ptr, ptr %11, align 4, !dbg !1786
  store ptr %29, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !590, metadata !DIExpression()), !dbg !1787
  %30 = load ptr, ptr %5, align 4, !dbg !1789
  %31 = load ptr, ptr %11, align 4, !dbg !1790
  store ptr %31, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !598, metadata !DIExpression()), !dbg !1791
  %32 = load ptr, ptr %4, align 4, !dbg !1793
  %33 = load i32, ptr %10, align 4, !dbg !1794
  %34 = getelementptr inbounds %struct.z_spinlock_key, ptr %17, i32 0, i32 0, !dbg !1795
  store i32 %33, ptr %34, align 4, !dbg !1795
  br label %35, !dbg !1796

35:                                               ; preds = %arch_irq_unlock.exit, %3
  %36 = getelementptr inbounds %struct.z_spinlock_key, ptr %16, i32 0, i32 0, !dbg !1797
  %37 = load i32, ptr %36, align 4, !dbg !1797
  %38 = icmp ne i32 %37, 0, !dbg !1799
  %39 = xor i1 %38, true, !dbg !1799
  br i1 %39, label %40, label %56, !dbg !1800

40:                                               ; preds = %35
  %41 = load ptr, ptr @pending_current, align 4, !dbg !1801
  %42 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !1804
  %43 = icmp eq ptr %41, %42, !dbg !1805
  br i1 %43, label %44, label %45, !dbg !1806

44:                                               ; preds = %40
  store ptr null, ptr @pending_current, align 4, !dbg !1807
  br label %45, !dbg !1809

45:                                               ; preds = %44, %40
  br label %46, !dbg !1810

46:                                               ; preds = %45
  %47 = getelementptr inbounds %struct.z_spinlock_key, ptr %17, i32 0, i32 0, !dbg !1811
  %48 = load [1 x i32], ptr %47, align 4, !dbg !1811
  store [1 x i32] %48, ptr %8, align 4
  store ptr @sched_spinlock, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !620, metadata !DIExpression()), !dbg !1812
  call void @llvm.dbg.declare(metadata ptr %8, metadata !626, metadata !DIExpression()), !dbg !1814
  %49 = load ptr, ptr %9, align 4, !dbg !1815
  %50 = load i32, ptr %8, align 4, !dbg !1816
  store i32 %50, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !630, metadata !DIExpression()), !dbg !1817
  %51 = load i32, ptr %7, align 4, !dbg !1819
  %52 = icmp ne i32 %51, 0, !dbg !1820
  br i1 %52, label %53, label %54, !dbg !1821

53:                                               ; preds = %46
  br label %arch_irq_unlock.exit, !dbg !1822

54:                                               ; preds = %46
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #5, !dbg !1823, !srcloc !643
  br label %arch_irq_unlock.exit, !dbg !1824

arch_irq_unlock.exit:                             ; preds = %53, %54
  %55 = getelementptr inbounds %struct.z_spinlock_key, ptr %16, i32 0, i32 0, !dbg !1825
  store i32 1, ptr %55, align 4, !dbg !1826
  br label %35, !dbg !1827, !llvm.loop !1828

56:                                               ; preds = %35
  %57 = load i32, ptr %15, align 4, !dbg !1830
  ret i32 %57, !dbg !1831
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_swap_irqlock(i32 noundef %0) #0 !dbg !1832 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1835, metadata !DIExpression()), !dbg !1836
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1837, metadata !DIExpression()), !dbg !1838
  %4 = load i32, ptr %2, align 4, !dbg !1839
  %5 = call i32 @arch_swap(i32 noundef %4), !dbg !1840
  store i32 %5, ptr %3, align 4, !dbg !1841
  %6 = load i32, ptr %3, align 4, !dbg !1842
  ret i32 %6, !dbg !1843
}

; Function Attrs: noinline nounwind optnone
define hidden i32 @z_pend_curr(ptr noundef %0, [1 x i32] %1, ptr noundef %2, [1 x i64] %3) #0 !dbg !1844 {
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
  call void @llvm.dbg.declare(metadata ptr %16, metadata !1847, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1849, metadata !DIExpression()), !dbg !1850
  store ptr %2, ptr %17, align 4
  call void @llvm.dbg.declare(metadata ptr %17, metadata !1851, metadata !DIExpression()), !dbg !1852
  call void @llvm.dbg.declare(metadata ptr %15, metadata !1853, metadata !DIExpression()), !dbg !1854
  %21 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !1855
  store ptr %21, ptr @pending_current, align 4, !dbg !1856
  store ptr @sched_spinlock, ptr %13, align 4
  call void @llvm.dbg.declare(metadata ptr %13, metadata !568, metadata !DIExpression()), !dbg !1857
  %22 = load ptr, ptr %13, align 4, !dbg !1859
  call void @llvm.dbg.declare(metadata ptr %12, metadata !576, metadata !DIExpression()), !dbg !1860
  call void @llvm.dbg.declare(metadata ptr %7, metadata !578, metadata !DIExpression()), !dbg !1861
  %23 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #5, !dbg !1863, !srcloc !586
  store i32 %23, ptr %7, align 4, !dbg !1863
  %24 = load i32, ptr %7, align 4, !dbg !1864
  store i32 %24, ptr %12, align 4, !dbg !1865
  %25 = load ptr, ptr %13, align 4, !dbg !1866
  store ptr %25, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !590, metadata !DIExpression()), !dbg !1867
  %26 = load ptr, ptr %6, align 4, !dbg !1869
  %27 = load ptr, ptr %13, align 4, !dbg !1870
  store ptr %27, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !598, metadata !DIExpression()), !dbg !1871
  %28 = load ptr, ptr %5, align 4, !dbg !1873
  %29 = load i32, ptr %12, align 4, !dbg !1874
  %30 = getelementptr inbounds %struct.z_spinlock_key, ptr %18, i32 0, i32 0, !dbg !1875
  store i32 %29, ptr %30, align 4, !dbg !1875
  %31 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !1876
  %32 = load ptr, ptr %17, align 4, !dbg !1877
  %33 = getelementptr inbounds %struct.k_timeout_t, ptr %15, i32 0, i32 0, !dbg !1878
  %34 = load [1 x i64], ptr %33, align 8, !dbg !1878
  call void @pend_locked(ptr noundef %31, ptr noundef %32, [1 x i64] %34), !dbg !1878
  %35 = load ptr, ptr %16, align 4, !dbg !1879
  store ptr %35, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1174, metadata !DIExpression()), !dbg !1880
  %36 = load ptr, ptr %11, align 4, !dbg !1882
  %37 = getelementptr inbounds %struct.z_spinlock_key, ptr %14, i32 0, i32 0, !dbg !1883
  %38 = load [1 x i32], ptr %37, align 4, !dbg !1883
  store [1 x i32] %38, ptr %9, align 4
  store ptr @sched_spinlock, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1164, metadata !DIExpression()), !dbg !1884
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1171, metadata !DIExpression()), !dbg !1886
  %39 = load ptr, ptr %10, align 4, !dbg !1887
  store ptr %39, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1174, metadata !DIExpression()), !dbg !1888
  %40 = load ptr, ptr %8, align 4, !dbg !1890
  %41 = load i32, ptr %9, align 4, !dbg !1891
  %42 = call i32 @z_swap_irqlock(i32 noundef %41), !dbg !1892
  ret i32 %42, !dbg !1893
}

; Function Attrs: noinline nounwind optnone
define hidden ptr @z_unpend1_no_timeout(ptr noundef %0) #0 !dbg !1894 {
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
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1897, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1899, metadata !DIExpression()), !dbg !1900
  store ptr null, ptr %11, align 4, !dbg !1900
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1901, metadata !DIExpression()), !dbg !1903
  call void @llvm.memset.p0.i32(ptr align 4 %12, i8 0, i32 4, i1 false), !dbg !1903
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1904, metadata !DIExpression()), !dbg !1905
  store ptr @sched_spinlock, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !568, metadata !DIExpression()), !dbg !1906
  %14 = load ptr, ptr %9, align 4, !dbg !1908
  call void @llvm.dbg.declare(metadata ptr %8, metadata !576, metadata !DIExpression()), !dbg !1909
  call void @llvm.dbg.declare(metadata ptr %4, metadata !578, metadata !DIExpression()), !dbg !1910
  %15 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #5, !dbg !1912, !srcloc !586
  store i32 %15, ptr %4, align 4, !dbg !1912
  %16 = load i32, ptr %4, align 4, !dbg !1913
  store i32 %16, ptr %8, align 4, !dbg !1914
  %17 = load ptr, ptr %9, align 4, !dbg !1915
  store ptr %17, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !590, metadata !DIExpression()), !dbg !1916
  %18 = load ptr, ptr %3, align 4, !dbg !1918
  %19 = load ptr, ptr %9, align 4, !dbg !1919
  store ptr %19, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !598, metadata !DIExpression()), !dbg !1920
  %20 = load ptr, ptr %2, align 4, !dbg !1922
  %21 = load i32, ptr %8, align 4, !dbg !1923
  %22 = getelementptr inbounds %struct.z_spinlock_key, ptr %13, i32 0, i32 0, !dbg !1924
  store i32 %21, ptr %22, align 4, !dbg !1924
  br label %23, !dbg !1925

23:                                               ; preds = %arch_irq_unlock.exit, %1
  %24 = getelementptr inbounds %struct.z_spinlock_key, ptr %12, i32 0, i32 0, !dbg !1926
  %25 = load i32, ptr %24, align 4, !dbg !1926
  %26 = icmp ne i32 %25, 0, !dbg !1928
  %27 = xor i1 %26, true, !dbg !1928
  br i1 %27, label %28, label %47, !dbg !1929

28:                                               ; preds = %23
  %29 = load ptr, ptr %10, align 4, !dbg !1930
  %30 = getelementptr inbounds %struct._wait_q_t, ptr %29, i32 0, i32 0, !dbg !1932
  %31 = call ptr @z_priq_dumb_best(ptr noundef %30), !dbg !1933
  store ptr %31, ptr %11, align 4, !dbg !1934
  %32 = load ptr, ptr %11, align 4, !dbg !1935
  %33 = icmp ne ptr %32, null, !dbg !1937
  br i1 %33, label %34, label %36, !dbg !1938

34:                                               ; preds = %28
  %35 = load ptr, ptr %11, align 4, !dbg !1939
  call void @unpend_thread_no_timeout(ptr noundef %35), !dbg !1941
  br label %36, !dbg !1942

36:                                               ; preds = %34, %28
  br label %37, !dbg !1943

37:                                               ; preds = %36
  %38 = getelementptr inbounds %struct.z_spinlock_key, ptr %13, i32 0, i32 0, !dbg !1944
  %39 = load [1 x i32], ptr %38, align 4, !dbg !1944
  store [1 x i32] %39, ptr %6, align 4
  store ptr @sched_spinlock, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !620, metadata !DIExpression()), !dbg !1945
  call void @llvm.dbg.declare(metadata ptr %6, metadata !626, metadata !DIExpression()), !dbg !1947
  %40 = load ptr, ptr %7, align 4, !dbg !1948
  %41 = load i32, ptr %6, align 4, !dbg !1949
  store i32 %41, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !630, metadata !DIExpression()), !dbg !1950
  %42 = load i32, ptr %5, align 4, !dbg !1952
  %43 = icmp ne i32 %42, 0, !dbg !1953
  br i1 %43, label %44, label %45, !dbg !1954

44:                                               ; preds = %37
  br label %arch_irq_unlock.exit, !dbg !1955

45:                                               ; preds = %37
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #5, !dbg !1956, !srcloc !643
  br label %arch_irq_unlock.exit, !dbg !1957

arch_irq_unlock.exit:                             ; preds = %44, %45
  %46 = getelementptr inbounds %struct.z_spinlock_key, ptr %12, i32 0, i32 0, !dbg !1958
  store i32 1, ptr %46, align 4, !dbg !1959
  br label %23, !dbg !1960, !llvm.loop !1961

47:                                               ; preds = %23
  %48 = load ptr, ptr %11, align 4, !dbg !1963
  ret ptr %48, !dbg !1964
}

; Function Attrs: noinline nounwind optnone
define hidden ptr @z_priq_dumb_best(ptr noundef %0) #0 !dbg !1965 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1968, metadata !DIExpression()), !dbg !1969
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1970, metadata !DIExpression()), !dbg !1971
  store ptr null, ptr %3, align 4, !dbg !1971
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1972, metadata !DIExpression()), !dbg !1973
  %6 = load ptr, ptr %2, align 4, !dbg !1974
  %7 = call ptr @sys_dlist_peek_head(ptr noundef %6), !dbg !1975
  store ptr %7, ptr %4, align 4, !dbg !1973
  %8 = load ptr, ptr %4, align 4, !dbg !1976
  %9 = icmp ne ptr %8, null, !dbg !1978
  br i1 %9, label %10, label %14, !dbg !1979

10:                                               ; preds = %1
  %11 = load ptr, ptr %4, align 4, !dbg !1980
  %12 = getelementptr inbounds i8, ptr %11, i32 0, !dbg !1983
  store ptr %12, ptr %5, align 4, !dbg !1984
  %13 = load ptr, ptr %5, align 4, !dbg !1985
  store ptr %13, ptr %3, align 4, !dbg !1986
  br label %14, !dbg !1987

14:                                               ; preds = %10, %1
  %15 = load ptr, ptr %3, align 4, !dbg !1988
  ret ptr %15, !dbg !1989
}

; Function Attrs: noinline nounwind optnone
define hidden ptr @z_unpend_first_thread(ptr noundef %0) #0 !dbg !1990 {
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
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1991, metadata !DIExpression()), !dbg !1992
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1993, metadata !DIExpression()), !dbg !1994
  store ptr null, ptr %11, align 4, !dbg !1994
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1995, metadata !DIExpression()), !dbg !1997
  call void @llvm.memset.p0.i32(ptr align 4 %12, i8 0, i32 4, i1 false), !dbg !1997
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1998, metadata !DIExpression()), !dbg !1999
  store ptr @sched_spinlock, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !568, metadata !DIExpression()), !dbg !2000
  %14 = load ptr, ptr %9, align 4, !dbg !2002
  call void @llvm.dbg.declare(metadata ptr %8, metadata !576, metadata !DIExpression()), !dbg !2003
  call void @llvm.dbg.declare(metadata ptr %4, metadata !578, metadata !DIExpression()), !dbg !2004
  %15 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #5, !dbg !2006, !srcloc !586
  store i32 %15, ptr %4, align 4, !dbg !2006
  %16 = load i32, ptr %4, align 4, !dbg !2007
  store i32 %16, ptr %8, align 4, !dbg !2008
  %17 = load ptr, ptr %9, align 4, !dbg !2009
  store ptr %17, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !590, metadata !DIExpression()), !dbg !2010
  %18 = load ptr, ptr %3, align 4, !dbg !2012
  %19 = load ptr, ptr %9, align 4, !dbg !2013
  store ptr %19, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !598, metadata !DIExpression()), !dbg !2014
  %20 = load ptr, ptr %2, align 4, !dbg !2016
  %21 = load i32, ptr %8, align 4, !dbg !2017
  %22 = getelementptr inbounds %struct.z_spinlock_key, ptr %13, i32 0, i32 0, !dbg !2018
  store i32 %21, ptr %22, align 4, !dbg !2018
  br label %23, !dbg !2019

23:                                               ; preds = %arch_irq_unlock.exit, %1
  %24 = getelementptr inbounds %struct.z_spinlock_key, ptr %12, i32 0, i32 0, !dbg !2020
  %25 = load i32, ptr %24, align 4, !dbg !2020
  %26 = icmp ne i32 %25, 0, !dbg !2022
  %27 = xor i1 %26, true, !dbg !2022
  br i1 %27, label %28, label %49, !dbg !2023

28:                                               ; preds = %23
  %29 = load ptr, ptr %10, align 4, !dbg !2024
  %30 = getelementptr inbounds %struct._wait_q_t, ptr %29, i32 0, i32 0, !dbg !2026
  %31 = call ptr @z_priq_dumb_best(ptr noundef %30), !dbg !2027
  store ptr %31, ptr %11, align 4, !dbg !2028
  %32 = load ptr, ptr %11, align 4, !dbg !2029
  %33 = icmp ne ptr %32, null, !dbg !2031
  br i1 %33, label %34, label %38, !dbg !2032

34:                                               ; preds = %28
  %35 = load ptr, ptr %11, align 4, !dbg !2033
  call void @unpend_thread_no_timeout(ptr noundef %35), !dbg !2035
  %36 = load ptr, ptr %11, align 4, !dbg !2036
  %37 = call i32 @z_abort_thread_timeout(ptr noundef %36), !dbg !2037
  br label %38, !dbg !2038

38:                                               ; preds = %34, %28
  br label %39, !dbg !2039

39:                                               ; preds = %38
  %40 = getelementptr inbounds %struct.z_spinlock_key, ptr %13, i32 0, i32 0, !dbg !2040
  %41 = load [1 x i32], ptr %40, align 4, !dbg !2040
  store [1 x i32] %41, ptr %6, align 4
  store ptr @sched_spinlock, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !620, metadata !DIExpression()), !dbg !2041
  call void @llvm.dbg.declare(metadata ptr %6, metadata !626, metadata !DIExpression()), !dbg !2043
  %42 = load ptr, ptr %7, align 4, !dbg !2044
  %43 = load i32, ptr %6, align 4, !dbg !2045
  store i32 %43, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !630, metadata !DIExpression()), !dbg !2046
  %44 = load i32, ptr %5, align 4, !dbg !2048
  %45 = icmp ne i32 %44, 0, !dbg !2049
  br i1 %45, label %46, label %47, !dbg !2050

46:                                               ; preds = %39
  br label %arch_irq_unlock.exit, !dbg !2051

47:                                               ; preds = %39
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #5, !dbg !2052, !srcloc !643
  br label %arch_irq_unlock.exit, !dbg !2053

arch_irq_unlock.exit:                             ; preds = %46, %47
  %48 = getelementptr inbounds %struct.z_spinlock_key, ptr %12, i32 0, i32 0, !dbg !2054
  store i32 1, ptr %48, align 4, !dbg !2055
  br label %23, !dbg !2056, !llvm.loop !2057

49:                                               ; preds = %23
  %50 = load ptr, ptr %11, align 4, !dbg !2059
  ret ptr %50, !dbg !2060
}

; Function Attrs: noinline nounwind optnone
define hidden void @z_unpend_thread(ptr noundef %0) #0 !dbg !2061 {
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
  call void @llvm.dbg.declare(metadata ptr %13, metadata !2062, metadata !DIExpression()), !dbg !2063
  %14 = load ptr, ptr %13, align 4, !dbg !2064
  store ptr %14, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1568, metadata !DIExpression()), !dbg !2065
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1570, metadata !DIExpression()), !dbg !2067
  call void @llvm.memset.p0.i32(ptr align 4 %11, i8 0, i32 4, i1 false), !dbg !2067
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1573, metadata !DIExpression()), !dbg !2068
  store ptr @sched_spinlock, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !568, metadata !DIExpression()), !dbg !2069
  %15 = load ptr, ptr %9, align 4, !dbg !2071
  call void @llvm.dbg.declare(metadata ptr %8, metadata !576, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.declare(metadata ptr %4, metadata !578, metadata !DIExpression()), !dbg !2073
  %16 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #5, !dbg !2075, !srcloc !586
  store i32 %16, ptr %4, align 4, !dbg !2075
  %17 = load i32, ptr %4, align 4, !dbg !2076
  store i32 %17, ptr %8, align 4, !dbg !2077
  %18 = load ptr, ptr %9, align 4, !dbg !2078
  store ptr %18, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !590, metadata !DIExpression()), !dbg !2079
  %19 = load ptr, ptr %3, align 4, !dbg !2081
  %20 = load ptr, ptr %9, align 4, !dbg !2082
  store ptr %20, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !598, metadata !DIExpression()), !dbg !2083
  %21 = load ptr, ptr %2, align 4, !dbg !2085
  %22 = load i32, ptr %8, align 4, !dbg !2086
  store i32 %22, ptr %12, align 4, !dbg !2087
  br label %23, !dbg !2088

23:                                               ; preds = %arch_irq_unlock.exit, %1
  %24 = load i32, ptr %11, align 4, !dbg !2089
  %25 = icmp ne i32 %24, 0, !dbg !2090
  %26 = xor i1 %25, true, !dbg !2090
  br i1 %26, label %27, label %z_unpend_thread_no_timeout.exit, !dbg !2091

27:                                               ; preds = %23
  %28 = load ptr, ptr %10, align 4, !dbg !2092
  %29 = getelementptr inbounds %struct._thread_base, ptr %28, i32 0, i32 1, !dbg !2093
  %30 = load ptr, ptr %29, align 8, !dbg !2093
  %31 = icmp ne ptr %30, null, !dbg !2094
  br i1 %31, label %32, label %34, !dbg !2095

32:                                               ; preds = %27
  %33 = load ptr, ptr %10, align 4, !dbg !2096
  call void @unpend_thread_no_timeout(ptr noundef %33), !dbg !2097
  br label %34, !dbg !2098

34:                                               ; preds = %32, %27
  %35 = load [1 x i32], ptr %12, align 4, !dbg !2099
  store [1 x i32] %35, ptr %6, align 4
  store ptr @sched_spinlock, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !620, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.declare(metadata ptr %6, metadata !626, metadata !DIExpression()), !dbg !2102
  %36 = load ptr, ptr %7, align 4, !dbg !2103
  %37 = load i32, ptr %6, align 4, !dbg !2104
  store i32 %37, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !630, metadata !DIExpression()), !dbg !2105
  %38 = load i32, ptr %5, align 4, !dbg !2107
  %39 = icmp ne i32 %38, 0, !dbg !2108
  br i1 %39, label %40, label %41, !dbg !2109

40:                                               ; preds = %34
  br label %arch_irq_unlock.exit, !dbg !2110

41:                                               ; preds = %34
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #5, !dbg !2111, !srcloc !643
  br label %arch_irq_unlock.exit, !dbg !2112

arch_irq_unlock.exit:                             ; preds = %40, %41
  store i32 1, ptr %11, align 4, !dbg !2113
  br label %23, !dbg !2114, !llvm.loop !2115

z_unpend_thread_no_timeout.exit:                  ; preds = %23
  %42 = load ptr, ptr %13, align 4, !dbg !2117
  %43 = call i32 @z_abort_thread_timeout(ptr noundef %42), !dbg !2118
  ret void, !dbg !2119
}

; Function Attrs: noinline nounwind optnone
define hidden zeroext i1 @z_set_prio(ptr noundef %0, i32 noundef %1) #0 !dbg !2120 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  %11 = alloca ptr, align 4
  %12 = alloca ptr, align 4
  %13 = alloca ptr, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca ptr, align 4
  %17 = alloca ptr, align 4
  %18 = alloca %struct.z_spinlock_key, align 4
  %19 = alloca ptr, align 4
  %20 = alloca %struct.z_spinlock_key, align 4
  %21 = alloca ptr, align 4
  %22 = alloca ptr, align 4
  %23 = alloca i32, align 4
  %24 = alloca i8, align 1
  %25 = alloca %struct.z_spinlock_key, align 4
  %26 = alloca %struct.z_spinlock_key, align 4
  store ptr %0, ptr %22, align 4
  call void @llvm.dbg.declare(metadata ptr %22, metadata !2121, metadata !DIExpression()), !dbg !2122
  store i32 %1, ptr %23, align 4
  call void @llvm.dbg.declare(metadata ptr %23, metadata !2123, metadata !DIExpression()), !dbg !2124
  call void @llvm.dbg.declare(metadata ptr %24, metadata !2125, metadata !DIExpression()), !dbg !2126
  store i8 0, ptr %24, align 1, !dbg !2126
  call void @llvm.dbg.declare(metadata ptr %25, metadata !2127, metadata !DIExpression()), !dbg !2129
  call void @llvm.memset.p0.i32(ptr align 4 %25, i8 0, i32 4, i1 false), !dbg !2129
  call void @llvm.dbg.declare(metadata ptr %26, metadata !2130, metadata !DIExpression()), !dbg !2131
  store ptr @sched_spinlock, ptr %21, align 4
  call void @llvm.dbg.declare(metadata ptr %21, metadata !568, metadata !DIExpression()), !dbg !2132
  %27 = load ptr, ptr %21, align 4, !dbg !2134
  call void @llvm.dbg.declare(metadata ptr %20, metadata !576, metadata !DIExpression()), !dbg !2135
  call void @llvm.dbg.declare(metadata ptr %14, metadata !578, metadata !DIExpression()), !dbg !2136
  %28 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #5, !dbg !2138, !srcloc !586
  store i32 %28, ptr %14, align 4, !dbg !2138
  %29 = load i32, ptr %14, align 4, !dbg !2139
  store i32 %29, ptr %20, align 4, !dbg !2140
  %30 = load ptr, ptr %21, align 4, !dbg !2141
  store ptr %30, ptr %13, align 4
  call void @llvm.dbg.declare(metadata ptr %13, metadata !590, metadata !DIExpression()), !dbg !2142
  %31 = load ptr, ptr %13, align 4, !dbg !2144
  %32 = load ptr, ptr %21, align 4, !dbg !2145
  store ptr %32, ptr %12, align 4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !598, metadata !DIExpression()), !dbg !2146
  %33 = load ptr, ptr %12, align 4, !dbg !2148
  %34 = load i32, ptr %20, align 4, !dbg !2149
  %35 = getelementptr inbounds %struct.z_spinlock_key, ptr %26, i32 0, i32 0, !dbg !2150
  store i32 %34, ptr %35, align 4, !dbg !2150
  br label %36, !dbg !2151

36:                                               ; preds = %arch_irq_unlock.exit, %2
  %37 = getelementptr inbounds %struct.z_spinlock_key, ptr %25, i32 0, i32 0, !dbg !2152
  %38 = load i32, ptr %37, align 4, !dbg !2152
  %39 = icmp ne i32 %38, 0, !dbg !2154
  %40 = xor i1 %39, true, !dbg !2154
  br i1 %40, label %41, label %143, !dbg !2155

41:                                               ; preds = %36
  %42 = load ptr, ptr %22, align 4, !dbg !2156
  %43 = call zeroext i1 @z_is_thread_ready(ptr noundef %42), !dbg !2158
  %44 = zext i1 %43 to i8, !dbg !2159
  store i8 %44, ptr %24, align 1, !dbg !2159
  %45 = load i8, ptr %24, align 1, !dbg !2160
  %46 = trunc i8 %45 to i1, !dbg !2160
  br i1 %46, label %47, label %125, !dbg !2162

47:                                               ; preds = %41
  %48 = load ptr, ptr %22, align 4, !dbg !2163
  store ptr %48, ptr %17, align 4
  call void @llvm.dbg.declare(metadata ptr %17, metadata !758, metadata !DIExpression()), !dbg !2167
  %49 = load ptr, ptr %17, align 4, !dbg !2169
  %50 = getelementptr inbounds %struct._thread_base, ptr %49, i32 0, i32 3, !dbg !2170
  %51 = load i8, ptr %50, align 1, !dbg !2171
  %52 = zext i8 %51 to i32, !dbg !2171
  %53 = and i32 %52, -129, !dbg !2171
  %54 = trunc i32 %53 to i8, !dbg !2171
  store i8 %54, ptr %50, align 1, !dbg !2171
  %55 = load ptr, ptr %17, align 4, !dbg !2172
  %56 = call zeroext i1 @should_queue_thread(ptr noundef %55), !dbg !2173
  br i1 %56, label %57, label %dequeue_thread.exit, !dbg !2174

57:                                               ; preds = %47
  %58 = load ptr, ptr %17, align 4, !dbg !2175
  store ptr %58, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !771, metadata !DIExpression()), !dbg !2176
  %59 = load ptr, ptr %11, align 4, !dbg !2178
  store ptr %59, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !776, metadata !DIExpression()), !dbg !2179
  %60 = load ptr, ptr %10, align 4, !dbg !2181
  %61 = load ptr, ptr %11, align 4, !dbg !2182
  call void @z_priq_dumb_remove(ptr noundef getelementptr inbounds (%struct.z_kernel, ptr @_kernel, i32 0, i32 1, i32 1), ptr noundef %61), !dbg !2183
  br label %dequeue_thread.exit, !dbg !2184

dequeue_thread.exit:                              ; preds = %47, %57
  %62 = load i32, ptr %23, align 4, !dbg !2185
  %63 = trunc i32 %62 to i8, !dbg !2185
  %64 = load ptr, ptr %22, align 4, !dbg !2186
  %65 = getelementptr inbounds %struct.k_thread, ptr %64, i32 0, i32 0, !dbg !2187
  %66 = getelementptr inbounds %struct._thread_base, ptr %65, i32 0, i32 4, !dbg !2188
  %67 = getelementptr inbounds %struct.anon, ptr %66, i32 0, i32 0, !dbg !2188
  store i8 %63, ptr %67, align 2, !dbg !2189
  %68 = load ptr, ptr %22, align 4, !dbg !2190
  store ptr %68, ptr %16, align 4
  call void @llvm.dbg.declare(metadata ptr %16, metadata !788, metadata !DIExpression()), !dbg !2191
  %69 = load ptr, ptr %16, align 4, !dbg !2193
  %70 = getelementptr inbounds %struct._thread_base, ptr %69, i32 0, i32 3, !dbg !2194
  %71 = load i8, ptr %70, align 1, !dbg !2195
  %72 = zext i8 %71 to i32, !dbg !2195
  %73 = or i32 %72, 128, !dbg !2195
  %74 = trunc i32 %73 to i8, !dbg !2195
  store i8 %74, ptr %70, align 1, !dbg !2195
  %75 = load ptr, ptr %16, align 4, !dbg !2196
  %76 = call zeroext i1 @should_queue_thread(ptr noundef %75), !dbg !2197
  br i1 %76, label %77, label %queue_thread.exit, !dbg !2198

77:                                               ; preds = %dequeue_thread.exit
  %78 = load ptr, ptr %16, align 4, !dbg !2199
  store ptr %78, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !801, metadata !DIExpression()), !dbg !2200
  %79 = load ptr, ptr %9, align 4, !dbg !2202
  store ptr %79, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !776, metadata !DIExpression()), !dbg !2203
  %80 = load ptr, ptr %8, align 4, !dbg !2205
  %81 = load ptr, ptr %9, align 4, !dbg !2206
  store ptr getelementptr inbounds (%struct.z_kernel, ptr @_kernel, i32 0, i32 1, i32 1), ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !810, metadata !DIExpression()), !dbg !2207
  store ptr %81, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !817, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.declare(metadata ptr %5, metadata !819, metadata !DIExpression()), !dbg !2210
  %82 = load ptr, ptr %3, align 4, !dbg !2211
  %83 = call ptr @sys_dlist_peek_head(ptr noundef %82), !dbg !2212
  %84 = icmp ne ptr %83, null, !dbg !2213
  br i1 %84, label %85, label %89, !dbg !2214

85:                                               ; preds = %77
  %86 = load ptr, ptr %3, align 4, !dbg !2215
  %87 = call ptr @sys_dlist_peek_head(ptr noundef %86), !dbg !2216
  store ptr %87, ptr %6, align 4, !dbg !2217
  %88 = load ptr, ptr %6, align 4, !dbg !2218
  br label %90, !dbg !2214

89:                                               ; preds = %77
  br label %90, !dbg !2214

90:                                               ; preds = %89, %85
  %91 = phi ptr [ %88, %85 ], [ null, %89 ], !dbg !2214
  store ptr %91, ptr %5, align 4, !dbg !2219
  br label %92, !dbg !2220

92:                                               ; preds = %120, %90
  %93 = load ptr, ptr %5, align 4, !dbg !2221
  %94 = icmp ne ptr %93, null, !dbg !2222
  br i1 %94, label %95, label %122, !dbg !2223

95:                                               ; preds = %92
  %96 = load ptr, ptr %4, align 4, !dbg !2224
  %97 = load ptr, ptr %5, align 4, !dbg !2225
  %98 = call i32 @z_sched_prio_cmp(ptr noundef %96, ptr noundef %97), !dbg !2226
  %99 = icmp sgt i32 %98, 0, !dbg !2227
  br i1 %99, label %100, label %103, !dbg !2228

100:                                              ; preds = %95
  %101 = load ptr, ptr %5, align 4, !dbg !2229
  %102 = load ptr, ptr %4, align 4, !dbg !2230
  call void @sys_dlist_insert(ptr noundef %101, ptr noundef %102), !dbg !2231
  br label %z_priq_dumb_add.exit, !dbg !2232

103:                                              ; preds = %95
  %104 = load ptr, ptr %5, align 4, !dbg !2233
  %105 = icmp ne ptr %104, null, !dbg !2234
  br i1 %105, label %106, label %119, !dbg !2235

106:                                              ; preds = %103
  %107 = load ptr, ptr %3, align 4, !dbg !2236
  %108 = load ptr, ptr %5, align 4, !dbg !2237
  %109 = call ptr @sys_dlist_peek_next(ptr noundef %107, ptr noundef %108), !dbg !2238
  %110 = icmp ne ptr %109, null, !dbg !2239
  br i1 %110, label %111, label %116, !dbg !2240

111:                                              ; preds = %106
  %112 = load ptr, ptr %3, align 4, !dbg !2241
  %113 = load ptr, ptr %5, align 4, !dbg !2242
  %114 = call ptr @sys_dlist_peek_next(ptr noundef %112, ptr noundef %113), !dbg !2243
  store ptr %114, ptr %7, align 4, !dbg !2244
  %115 = load ptr, ptr %7, align 4, !dbg !2245
  br label %117, !dbg !2240

116:                                              ; preds = %106
  br label %117, !dbg !2240

117:                                              ; preds = %116, %111
  %118 = phi ptr [ %115, %111 ], [ null, %116 ], !dbg !2240
  br label %120, !dbg !2235

119:                                              ; preds = %103
  br label %120, !dbg !2235

120:                                              ; preds = %119, %117
  %121 = phi ptr [ %118, %117 ], [ null, %119 ], !dbg !2235
  store ptr %121, ptr %5, align 4, !dbg !2246
  br label %92, !dbg !2247, !llvm.loop !2248

122:                                              ; preds = %92
  %123 = load ptr, ptr %3, align 4, !dbg !2250
  %124 = load ptr, ptr %4, align 4, !dbg !2251
  call void @sys_dlist_append(ptr noundef %123, ptr noundef %124), !dbg !2252
  br label %z_priq_dumb_add.exit, !dbg !2253

z_priq_dumb_add.exit:                             ; preds = %100, %122
  br label %queue_thread.exit, !dbg !2254

queue_thread.exit:                                ; preds = %dequeue_thread.exit, %z_priq_dumb_add.exit
  call void @update_cache(i32 noundef 1), !dbg !2255
  br label %132, !dbg !2256

125:                                              ; preds = %41
  %126 = load i32, ptr %23, align 4, !dbg !2257
  %127 = trunc i32 %126 to i8, !dbg !2257
  %128 = load ptr, ptr %22, align 4, !dbg !2259
  %129 = getelementptr inbounds %struct.k_thread, ptr %128, i32 0, i32 0, !dbg !2260
  %130 = getelementptr inbounds %struct._thread_base, ptr %129, i32 0, i32 4, !dbg !2261
  %131 = getelementptr inbounds %struct.anon, ptr %130, i32 0, i32 0, !dbg !2261
  store i8 %127, ptr %131, align 2, !dbg !2262
  br label %132

132:                                              ; preds = %125, %queue_thread.exit
  br label %133, !dbg !2263

133:                                              ; preds = %132
  %134 = getelementptr inbounds %struct.z_spinlock_key, ptr %26, i32 0, i32 0, !dbg !2264
  %135 = load [1 x i32], ptr %134, align 4, !dbg !2264
  store [1 x i32] %135, ptr %18, align 4
  store ptr @sched_spinlock, ptr %19, align 4
  call void @llvm.dbg.declare(metadata ptr %19, metadata !620, metadata !DIExpression()), !dbg !2265
  call void @llvm.dbg.declare(metadata ptr %18, metadata !626, metadata !DIExpression()), !dbg !2267
  %136 = load ptr, ptr %19, align 4, !dbg !2268
  %137 = load i32, ptr %18, align 4, !dbg !2269
  store i32 %137, ptr %15, align 4
  call void @llvm.dbg.declare(metadata ptr %15, metadata !630, metadata !DIExpression()), !dbg !2270
  %138 = load i32, ptr %15, align 4, !dbg !2272
  %139 = icmp ne i32 %138, 0, !dbg !2273
  br i1 %139, label %140, label %141, !dbg !2274

140:                                              ; preds = %133
  br label %arch_irq_unlock.exit, !dbg !2275

141:                                              ; preds = %133
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #5, !dbg !2276, !srcloc !643
  br label %arch_irq_unlock.exit, !dbg !2277

arch_irq_unlock.exit:                             ; preds = %140, %141
  %142 = getelementptr inbounds %struct.z_spinlock_key, ptr %25, i32 0, i32 0, !dbg !2278
  store i32 1, ptr %142, align 4, !dbg !2279
  br label %36, !dbg !2280, !llvm.loop !2281

143:                                              ; preds = %36
  br label %144, !dbg !2283

144:                                              ; preds = %143
  br label %145, !dbg !2284

145:                                              ; preds = %144
  %146 = load i8, ptr %24, align 1, !dbg !2286
  %147 = trunc i8 %146 to i1, !dbg !2286
  ret i1 %147, !dbg !2287
}

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @z_is_thread_ready(ptr noundef %0) #0 !dbg !2288 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2289, metadata !DIExpression()), !dbg !2290
  %3 = load ptr, ptr %2, align 4, !dbg !2291
  %4 = call zeroext i1 @z_is_thread_prevented_from_running(ptr noundef %3), !dbg !2292
  %5 = zext i1 %4 to i32, !dbg !2293
  %6 = icmp ne i32 %5, 0, !dbg !2294
  br i1 %6, label %10, label %7, !dbg !2295

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 4, !dbg !2296
  %9 = call zeroext i1 @z_is_thread_timeout_active(ptr noundef %8), !dbg !2297
  br label %10, !dbg !2295

10:                                               ; preds = %7, %1
  %11 = phi i1 [ true, %1 ], [ %9, %7 ]
  %12 = xor i1 %11, true, !dbg !2298
  ret i1 %12, !dbg !2299
}

; Function Attrs: noinline nounwind optnone
define hidden void @z_thread_priority_set(ptr noundef %0, i32 noundef %1) #0 !dbg !2300 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2303, metadata !DIExpression()), !dbg !2304
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2305, metadata !DIExpression()), !dbg !2306
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2307, metadata !DIExpression()), !dbg !2308
  %6 = load ptr, ptr %3, align 4, !dbg !2309
  %7 = load i32, ptr %4, align 4, !dbg !2310
  %8 = call zeroext i1 @z_set_prio(ptr noundef %6, i32 noundef %7), !dbg !2311
  %9 = zext i1 %8 to i8, !dbg !2308
  store i8 %9, ptr %5, align 1, !dbg !2308
  call void @flag_ipi(), !dbg !2312
  %10 = load i8, ptr %5, align 1, !dbg !2313
  %11 = trunc i8 %10 to i1, !dbg !2313
  br i1 %11, label %12, label %21, !dbg !2315

12:                                               ; preds = %2
  %13 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !2316
  %14 = getelementptr inbounds %struct.k_thread, ptr %13, i32 0, i32 0, !dbg !2317
  %15 = getelementptr inbounds %struct._thread_base, ptr %14, i32 0, i32 4, !dbg !2318
  %16 = getelementptr inbounds %struct.anon, ptr %15, i32 0, i32 1, !dbg !2318
  %17 = load i8, ptr %16, align 1, !dbg !2318
  %18 = zext i8 %17 to i32, !dbg !2319
  %19 = icmp eq i32 %18, 0, !dbg !2320
  br i1 %19, label %20, label %21, !dbg !2321

20:                                               ; preds = %12
  call void @z_reschedule_unlocked(), !dbg !2322
  br label %21, !dbg !2324

21:                                               ; preds = %20, %12, %2
  ret void, !dbg !2325
}

; Function Attrs: noinline nounwind optnone
define internal void @flag_ipi() #0 !dbg !2326 {
  ret void, !dbg !2327
}

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @resched(i32 noundef %0) #0 !dbg !2328 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2331, metadata !DIExpression()), !dbg !2332
  %5 = load i32, ptr %4, align 4, !dbg !2333
  store i32 %5, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2334, metadata !DIExpression()), !dbg !2338
  %6 = load i32, ptr %3, align 4, !dbg !2340
  %7 = icmp eq i32 %6, 0, !dbg !2341
  br i1 %7, label %8, label %15, !dbg !2342

8:                                                ; preds = %1
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2343, metadata !DIExpression()), !dbg !2348
  %9 = call i32 asm sideeffect "MRS $0, ipsr", "=r"() #5, !dbg !2355, !srcloc !2356
  store i32 %9, ptr %2, align 4, !dbg !2355
  %10 = load i32, ptr %2, align 4, !dbg !2357
  %11 = icmp ne i32 %10, 0, !dbg !2358
  %12 = zext i1 %11 to i64, !dbg !2358
  %13 = select i1 %11, i32 1, i32 0, !dbg !2358
  %14 = xor i1 %11, true, !dbg !2359
  br label %15

15:                                               ; preds = %8, %1
  %16 = phi i1 [ false, %1 ], [ %14, %8 ], !dbg !2360
  ret i1 %16, !dbg !2361
}

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @need_swap() #0 !dbg !2362 {
  %1 = alloca ptr, align 4
  call void @llvm.dbg.declare(metadata ptr %1, metadata !2363, metadata !DIExpression()), !dbg !2364
  %2 = load ptr, ptr getelementptr inbounds (%struct.z_kernel, ptr @_kernel, i32 0, i32 1), align 4, !dbg !2365
  store ptr %2, ptr %1, align 4, !dbg !2366
  %3 = load ptr, ptr %1, align 4, !dbg !2367
  %4 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !2368
  %5 = icmp ne ptr %3, %4, !dbg !2369
  ret i1 %5, !dbg !2370
}

; Function Attrs: noinline nounwind optnone
define internal void @signal_pending_ipi() #0 !dbg !2371 {
  ret void, !dbg !2372
}

; Function Attrs: noinline nounwind optnone
define hidden void @z_reschedule_irqlock(i32 noundef %0) #0 !dbg !2373 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2376, metadata !DIExpression()), !dbg !2377
  %4 = load i32, ptr %3, align 4, !dbg !2378
  %5 = call zeroext i1 @resched(i32 noundef %4), !dbg !2380
  br i1 %5, label %6, label %9, !dbg !2381

6:                                                ; preds = %1
  %7 = load i32, ptr %3, align 4, !dbg !2382
  %8 = call i32 @z_swap_irqlock(i32 noundef %7), !dbg !2384
  br label %15, !dbg !2385

9:                                                ; preds = %1
  %10 = load i32, ptr %3, align 4, !dbg !2386
  store i32 %10, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !630, metadata !DIExpression()), !dbg !2388
  %11 = load i32, ptr %2, align 4, !dbg !2390
  %12 = icmp ne i32 %11, 0, !dbg !2391
  br i1 %12, label %13, label %14, !dbg !2392

13:                                               ; preds = %9
  br label %arch_irq_unlock.exit, !dbg !2393

14:                                               ; preds = %9
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #5, !dbg !2394, !srcloc !643
  br label %arch_irq_unlock.exit, !dbg !2395

arch_irq_unlock.exit:                             ; preds = %13, %14
  call void @signal_pending_ipi(), !dbg !2396
  br label %15

15:                                               ; preds = %arch_irq_unlock.exit, %6
  ret void, !dbg !2397
}

; Function Attrs: noinline nounwind optnone
define hidden void @k_sched_lock() #0 !dbg !2398 {
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
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2399, metadata !DIExpression()), !dbg !2401
  call void @llvm.memset.p0.i32(ptr align 4 %9, i8 0, i32 4, i1 false), !dbg !2401
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2402, metadata !DIExpression()), !dbg !2403
  store ptr @sched_spinlock, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !568, metadata !DIExpression()), !dbg !2404
  %11 = load ptr, ptr %8, align 4, !dbg !2406
  call void @llvm.dbg.declare(metadata ptr %7, metadata !576, metadata !DIExpression()), !dbg !2407
  call void @llvm.dbg.declare(metadata ptr %3, metadata !578, metadata !DIExpression()), !dbg !2408
  %12 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #5, !dbg !2410, !srcloc !586
  store i32 %12, ptr %3, align 4, !dbg !2410
  %13 = load i32, ptr %3, align 4, !dbg !2411
  store i32 %13, ptr %7, align 4, !dbg !2412
  %14 = load ptr, ptr %8, align 4, !dbg !2413
  store ptr %14, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !590, metadata !DIExpression()), !dbg !2414
  %15 = load ptr, ptr %2, align 4, !dbg !2416
  %16 = load ptr, ptr %8, align 4, !dbg !2417
  store ptr %16, ptr %1, align 4
  call void @llvm.dbg.declare(metadata ptr %1, metadata !598, metadata !DIExpression()), !dbg !2418
  %17 = load ptr, ptr %1, align 4, !dbg !2420
  %18 = load i32, ptr %7, align 4, !dbg !2421
  %19 = getelementptr inbounds %struct.z_spinlock_key, ptr %10, i32 0, i32 0, !dbg !2422
  store i32 %18, ptr %19, align 4, !dbg !2422
  br label %20, !dbg !2423

20:                                               ; preds = %arch_irq_unlock.exit, %0
  %21 = getelementptr inbounds %struct.z_spinlock_key, ptr %9, i32 0, i32 0, !dbg !2424
  %22 = load i32, ptr %21, align 4, !dbg !2424
  %23 = icmp ne i32 %22, 0, !dbg !2426
  %24 = xor i1 %23, true, !dbg !2426
  br i1 %24, label %25, label %38, !dbg !2427

25:                                               ; preds = %20
  br label %26, !dbg !2428

26:                                               ; preds = %25
  br label %27, !dbg !2430

27:                                               ; preds = %26
  call void @z_sched_lock(), !dbg !2432
  br label %28, !dbg !2433

28:                                               ; preds = %27
  %29 = getelementptr inbounds %struct.z_spinlock_key, ptr %10, i32 0, i32 0, !dbg !2434
  %30 = load [1 x i32], ptr %29, align 4, !dbg !2434
  store [1 x i32] %30, ptr %5, align 4
  store ptr @sched_spinlock, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !620, metadata !DIExpression()), !dbg !2435
  call void @llvm.dbg.declare(metadata ptr %5, metadata !626, metadata !DIExpression()), !dbg !2437
  %31 = load ptr, ptr %6, align 4, !dbg !2438
  %32 = load i32, ptr %5, align 4, !dbg !2439
  store i32 %32, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !630, metadata !DIExpression()), !dbg !2440
  %33 = load i32, ptr %4, align 4, !dbg !2442
  %34 = icmp ne i32 %33, 0, !dbg !2443
  br i1 %34, label %35, label %36, !dbg !2444

35:                                               ; preds = %28
  br label %arch_irq_unlock.exit, !dbg !2445

36:                                               ; preds = %28
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #5, !dbg !2446, !srcloc !643
  br label %arch_irq_unlock.exit, !dbg !2447

arch_irq_unlock.exit:                             ; preds = %35, %36
  %37 = getelementptr inbounds %struct.z_spinlock_key, ptr %9, i32 0, i32 0, !dbg !2448
  store i32 1, ptr %37, align 4, !dbg !2449
  br label %20, !dbg !2450, !llvm.loop !2451

38:                                               ; preds = %20
  ret void, !dbg !2453
}

; Function Attrs: noinline nounwind optnone
define internal void @z_sched_lock() #0 !dbg !2454 {
  %1 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !2455
  %2 = getelementptr inbounds %struct.k_thread, ptr %1, i32 0, i32 0, !dbg !2456
  %3 = getelementptr inbounds %struct._thread_base, ptr %2, i32 0, i32 4, !dbg !2457
  %4 = getelementptr inbounds %struct.anon, ptr %3, i32 0, i32 1, !dbg !2457
  %5 = load i8, ptr %4, align 1, !dbg !2458
  %6 = add i8 %5, -1, !dbg !2458
  store i8 %6, ptr %4, align 1, !dbg !2458
  br label %7, !dbg !2459

7:                                                ; preds = %0
  call void asm sideeffect "", "~{memory}"() #5, !dbg !2460, !srcloc !2462
  br label %8, !dbg !2463

8:                                                ; preds = %7
  ret void, !dbg !2464
}

; Function Attrs: noinline nounwind optnone
define hidden void @k_sched_unlock() #0 !dbg !2465 {
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
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2466, metadata !DIExpression()), !dbg !2468
  call void @llvm.memset.p0.i32(ptr align 4 %9, i8 0, i32 4, i1 false), !dbg !2468
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2469, metadata !DIExpression()), !dbg !2470
  store ptr @sched_spinlock, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !568, metadata !DIExpression()), !dbg !2471
  %14 = load ptr, ptr %8, align 4, !dbg !2473
  call void @llvm.dbg.declare(metadata ptr %7, metadata !576, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.declare(metadata ptr %3, metadata !578, metadata !DIExpression()), !dbg !2475
  %15 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #5, !dbg !2477, !srcloc !586
  store i32 %15, ptr %3, align 4, !dbg !2477
  %16 = load i32, ptr %3, align 4, !dbg !2478
  store i32 %16, ptr %7, align 4, !dbg !2479
  %17 = load ptr, ptr %8, align 4, !dbg !2480
  store ptr %17, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !590, metadata !DIExpression()), !dbg !2481
  %18 = load ptr, ptr %2, align 4, !dbg !2483
  %19 = load ptr, ptr %8, align 4, !dbg !2484
  store ptr %19, ptr %1, align 4
  call void @llvm.dbg.declare(metadata ptr %1, metadata !598, metadata !DIExpression()), !dbg !2485
  %20 = load ptr, ptr %1, align 4, !dbg !2487
  %21 = load i32, ptr %7, align 4, !dbg !2488
  %22 = getelementptr inbounds %struct.z_spinlock_key, ptr %10, i32 0, i32 0, !dbg !2489
  store i32 %21, ptr %22, align 4, !dbg !2489
  br label %23, !dbg !2490

23:                                               ; preds = %arch_irq_unlock.exit, %0
  %24 = getelementptr inbounds %struct.z_spinlock_key, ptr %9, i32 0, i32 0, !dbg !2491
  %25 = load i32, ptr %24, align 4, !dbg !2491
  %26 = icmp ne i32 %25, 0, !dbg !2493
  %27 = xor i1 %26, true, !dbg !2493
  br i1 %27, label %28, label %45, !dbg !2494

28:                                               ; preds = %23
  %29 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !2495
  %30 = getelementptr inbounds %struct.k_thread, ptr %29, i32 0, i32 0, !dbg !2497
  %31 = getelementptr inbounds %struct._thread_base, ptr %30, i32 0, i32 4, !dbg !2498
  %32 = getelementptr inbounds %struct.anon, ptr %31, i32 0, i32 1, !dbg !2498
  %33 = load i8, ptr %32, align 1, !dbg !2499
  %34 = add i8 %33, 1, !dbg !2499
  store i8 %34, ptr %32, align 1, !dbg !2499
  call void @update_cache(i32 noundef 0), !dbg !2500
  br label %35, !dbg !2501

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.z_spinlock_key, ptr %10, i32 0, i32 0, !dbg !2502
  %37 = load [1 x i32], ptr %36, align 4, !dbg !2502
  store [1 x i32] %37, ptr %5, align 4
  store ptr @sched_spinlock, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !620, metadata !DIExpression()), !dbg !2503
  call void @llvm.dbg.declare(metadata ptr %5, metadata !626, metadata !DIExpression()), !dbg !2505
  %38 = load ptr, ptr %6, align 4, !dbg !2506
  %39 = load i32, ptr %5, align 4, !dbg !2507
  store i32 %39, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !630, metadata !DIExpression()), !dbg !2508
  %40 = load i32, ptr %4, align 4, !dbg !2510
  %41 = icmp ne i32 %40, 0, !dbg !2511
  br i1 %41, label %42, label %43, !dbg !2512

42:                                               ; preds = %35
  br label %arch_irq_unlock.exit, !dbg !2513

43:                                               ; preds = %35
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #5, !dbg !2514, !srcloc !643
  br label %arch_irq_unlock.exit, !dbg !2515

arch_irq_unlock.exit:                             ; preds = %42, %43
  %44 = getelementptr inbounds %struct.z_spinlock_key, ptr %9, i32 0, i32 0, !dbg !2516
  store i32 1, ptr %44, align 4, !dbg !2517
  br label %23, !dbg !2518, !llvm.loop !2519

45:                                               ; preds = %23
  br label %46, !dbg !2521

46:                                               ; preds = %45
  br label %47, !dbg !2522

47:                                               ; preds = %46
  br label %48, !dbg !2526

48:                                               ; preds = %47
  br label %49, !dbg !2527

49:                                               ; preds = %48
  call void @z_reschedule_unlocked(), !dbg !2529
  ret void, !dbg !2530
}

; Function Attrs: noinline nounwind optnone
define hidden ptr @z_swap_next_thread() #0 !dbg !2531 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.z_kernel, ptr @_kernel, i32 0, i32 1), align 4, !dbg !2532
  ret ptr %1, !dbg !2533
}

; Function Attrs: noinline nounwind optnone
define hidden void @z_priq_dumb_remove(ptr noundef %0, ptr noundef %1) #0 !dbg !2534 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2535, metadata !DIExpression()), !dbg !2536
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2537, metadata !DIExpression()), !dbg !2538
  %5 = load ptr, ptr %3, align 4, !dbg !2539
  %6 = load ptr, ptr %4, align 4, !dbg !2540
  %7 = getelementptr inbounds %struct.k_thread, ptr %6, i32 0, i32 0, !dbg !2541
  %8 = getelementptr inbounds %struct._thread_base, ptr %7, i32 0, i32 0, !dbg !2542
  call void @sys_dlist_remove(ptr noundef %8), !dbg !2543
  ret void, !dbg !2544
}

; Function Attrs: noinline nounwind optnone
define internal void @sys_dlist_remove(ptr noundef %0) #0 !dbg !2545 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2548, metadata !DIExpression()), !dbg !2549
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2550, metadata !DIExpression()), !dbg !2552
  %5 = load ptr, ptr %2, align 4, !dbg !2553
  %6 = getelementptr inbounds %struct._dnode, ptr %5, i32 0, i32 1, !dbg !2554
  %7 = load ptr, ptr %6, align 4, !dbg !2554
  store ptr %7, ptr %3, align 4, !dbg !2552
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2555, metadata !DIExpression()), !dbg !2556
  %8 = load ptr, ptr %2, align 4, !dbg !2557
  %9 = getelementptr inbounds %struct._dnode, ptr %8, i32 0, i32 0, !dbg !2558
  %10 = load ptr, ptr %9, align 4, !dbg !2558
  store ptr %10, ptr %4, align 4, !dbg !2556
  %11 = load ptr, ptr %4, align 4, !dbg !2559
  %12 = load ptr, ptr %3, align 4, !dbg !2560
  %13 = getelementptr inbounds %struct._dnode, ptr %12, i32 0, i32 0, !dbg !2561
  store ptr %11, ptr %13, align 4, !dbg !2562
  %14 = load ptr, ptr %3, align 4, !dbg !2563
  %15 = load ptr, ptr %4, align 4, !dbg !2564
  %16 = getelementptr inbounds %struct._dnode, ptr %15, i32 0, i32 1, !dbg !2565
  store ptr %14, ptr %16, align 4, !dbg !2566
  %17 = load ptr, ptr %2, align 4, !dbg !2567
  call void @sys_dnode_init(ptr noundef %17), !dbg !2568
  ret void, !dbg !2569
}

; Function Attrs: noinline nounwind optnone
define internal ptr @sys_dlist_peek_head(ptr noundef %0) #0 !dbg !2570 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2573, metadata !DIExpression()), !dbg !2574
  %3 = load ptr, ptr %2, align 4, !dbg !2575
  %4 = call zeroext i1 @sys_dlist_is_empty(ptr noundef %3), !dbg !2576
  br i1 %4, label %5, label %6, !dbg !2576

5:                                                ; preds = %1
  br label %10, !dbg !2576

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 4, !dbg !2577
  %8 = getelementptr inbounds %struct._dnode, ptr %7, i32 0, i32 0, !dbg !2578
  %9 = load ptr, ptr %8, align 4, !dbg !2578
  br label %10, !dbg !2576

10:                                               ; preds = %6, %5
  %11 = phi ptr [ null, %5 ], [ %9, %6 ], !dbg !2576
  ret ptr %11, !dbg !2579
}

; Function Attrs: noinline nounwind optnone
define hidden zeroext i1 @z_priq_rb_lessthan(ptr noundef %0, ptr noundef %1) #0 !dbg !2580 {
  %3 = alloca i1, align 1
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2583, metadata !DIExpression()), !dbg !2584
  store ptr %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2585, metadata !DIExpression()), !dbg !2586
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2587, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2589, metadata !DIExpression()), !dbg !2590
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2591, metadata !DIExpression()), !dbg !2592
  %11 = load ptr, ptr %4, align 4, !dbg !2593
  %12 = getelementptr inbounds i8, ptr %11, i32 0, !dbg !2595
  store ptr %12, ptr %9, align 4, !dbg !2596
  %13 = load ptr, ptr %9, align 4, !dbg !2597
  store ptr %13, ptr %6, align 4, !dbg !2598
  %14 = load ptr, ptr %5, align 4, !dbg !2599
  %15 = getelementptr inbounds i8, ptr %14, i32 0, !dbg !2601
  store ptr %15, ptr %10, align 4, !dbg !2602
  %16 = load ptr, ptr %10, align 4, !dbg !2603
  store ptr %16, ptr %7, align 4, !dbg !2604
  %17 = load ptr, ptr %6, align 4, !dbg !2605
  %18 = load ptr, ptr %7, align 4, !dbg !2606
  %19 = call i32 @z_sched_prio_cmp(ptr noundef %17, ptr noundef %18), !dbg !2607
  store i32 %19, ptr %8, align 4, !dbg !2608
  %20 = load i32, ptr %8, align 4, !dbg !2609
  %21 = icmp sgt i32 %20, 0, !dbg !2611
  br i1 %21, label %22, label %23, !dbg !2612

22:                                               ; preds = %2
  store i1 true, ptr %3, align 1, !dbg !2613
  br label %40, !dbg !2613

23:                                               ; preds = %2
  %24 = load i32, ptr %8, align 4, !dbg !2615
  %25 = icmp slt i32 %24, 0, !dbg !2617
  br i1 %25, label %26, label %27, !dbg !2618

26:                                               ; preds = %23
  store i1 false, ptr %3, align 1, !dbg !2619
  br label %40, !dbg !2619

27:                                               ; preds = %23
  %28 = load ptr, ptr %6, align 4, !dbg !2621
  %29 = getelementptr inbounds %struct.k_thread, ptr %28, i32 0, i32 0, !dbg !2623
  %30 = getelementptr inbounds %struct._thread_base, ptr %29, i32 0, i32 5, !dbg !2624
  %31 = load i32, ptr %30, align 8, !dbg !2624
  %32 = load ptr, ptr %7, align 4, !dbg !2625
  %33 = getelementptr inbounds %struct.k_thread, ptr %32, i32 0, i32 0, !dbg !2626
  %34 = getelementptr inbounds %struct._thread_base, ptr %33, i32 0, i32 5, !dbg !2627
  %35 = load i32, ptr %34, align 8, !dbg !2627
  %36 = icmp ult i32 %31, %35, !dbg !2628
  %37 = zext i1 %36 to i64, !dbg !2621
  %38 = select i1 %36, i32 1, i32 0, !dbg !2621
  %39 = icmp ne i32 %38, 0, !dbg !2621
  store i1 %39, ptr %3, align 1, !dbg !2629
  br label %40, !dbg !2629

40:                                               ; preds = %27, %26, %22
  %41 = load i1, ptr %3, align 1, !dbg !2630
  ret i1 %41, !dbg !2630
}

; Function Attrs: noinline nounwind optnone
define hidden void @z_priq_rb_add(ptr noundef %0, ptr noundef %1) #0 !dbg !2631 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca %struct._rb_foreach, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2647, metadata !DIExpression()), !dbg !2648
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2649, metadata !DIExpression()), !dbg !2650
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2651, metadata !DIExpression()), !dbg !2652
  %10 = load ptr, ptr %3, align 4, !dbg !2653
  %11 = getelementptr inbounds %struct._priq_rb, ptr %10, i32 0, i32 1, !dbg !2654
  %12 = load i32, ptr %11, align 4, !dbg !2655
  %13 = add nsw i32 %12, 1, !dbg !2655
  store i32 %13, ptr %11, align 4, !dbg !2655
  %14 = load ptr, ptr %4, align 4, !dbg !2656
  %15 = getelementptr inbounds %struct.k_thread, ptr %14, i32 0, i32 0, !dbg !2657
  %16 = getelementptr inbounds %struct._thread_base, ptr %15, i32 0, i32 5, !dbg !2658
  store i32 %12, ptr %16, align 8, !dbg !2659
  %17 = load ptr, ptr %3, align 4, !dbg !2660
  %18 = getelementptr inbounds %struct._priq_rb, ptr %17, i32 0, i32 1, !dbg !2662
  %19 = load i32, ptr %18, align 4, !dbg !2662
  %20 = icmp ne i32 %19, 0, !dbg !2660
  br i1 %20, label %61, label %21, !dbg !2663

21:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2664, metadata !DIExpression()), !dbg !2672
  %22 = getelementptr inbounds %struct._rb_foreach, ptr %6, i32 0, i32 0, !dbg !2673
  %23 = load ptr, ptr %3, align 4, !dbg !2674
  %24 = getelementptr inbounds %struct._priq_rb, ptr %23, i32 0, i32 0, !dbg !2675
  %25 = getelementptr inbounds %struct.rbtree, ptr %24, i32 0, i32 2, !dbg !2676
  %26 = load i32, ptr %25, align 4, !dbg !2676
  %27 = mul i32 %26, 4, !dbg !2677
  %28 = alloca i8, i32 %27, align 8, !dbg !2678
  store ptr %28, ptr %22, align 4, !dbg !2673
  %29 = getelementptr inbounds %struct._rb_foreach, ptr %6, i32 0, i32 1, !dbg !2673
  %30 = load ptr, ptr %3, align 4, !dbg !2679
  %31 = getelementptr inbounds %struct._priq_rb, ptr %30, i32 0, i32 0, !dbg !2680
  %32 = getelementptr inbounds %struct.rbtree, ptr %31, i32 0, i32 2, !dbg !2681
  %33 = load i32, ptr %32, align 4, !dbg !2681
  %34 = mul i32 %33, 1, !dbg !2682
  %35 = alloca i8, i32 %34, align 8, !dbg !2683
  store ptr %35, ptr %29, align 4, !dbg !2673
  %36 = getelementptr inbounds %struct._rb_foreach, ptr %6, i32 0, i32 2, !dbg !2673
  store i32 -1, ptr %36, align 4, !dbg !2673
  br label %37, !dbg !2684

37:                                               ; preds = %52, %21
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2685, metadata !DIExpression()), !dbg !2688
  %38 = load ptr, ptr %3, align 4, !dbg !2689
  %39 = getelementptr inbounds %struct._priq_rb, ptr %38, i32 0, i32 0, !dbg !2690
  %40 = call ptr @z_rb_foreach_next(ptr noundef %39, ptr noundef %6), !dbg !2691
  store ptr %40, ptr %7, align 4, !dbg !2688
  %41 = load ptr, ptr %7, align 4, !dbg !2692
  %42 = icmp ne ptr %41, null, !dbg !2692
  br i1 %42, label %43, label %47, !dbg !2692

43:                                               ; preds = %37
  %44 = load ptr, ptr %7, align 4, !dbg !2693
  %45 = getelementptr inbounds i8, ptr %44, i32 0, !dbg !2695
  store ptr %45, ptr %9, align 4, !dbg !2696
  %46 = load ptr, ptr %9, align 4, !dbg !2697
  br label %48, !dbg !2692

47:                                               ; preds = %37
  br label %48, !dbg !2692

48:                                               ; preds = %47, %43
  %49 = phi ptr [ %46, %43 ], [ null, %47 ], !dbg !2692
  store ptr %49, ptr %5, align 4, !dbg !2698
  store ptr %49, ptr %8, align 4, !dbg !2699
  %50 = load ptr, ptr %8, align 4, !dbg !2700
  %51 = icmp ne ptr %50, null, !dbg !2701
  br i1 %51, label %52, label %60, !dbg !2702

52:                                               ; preds = %48
  %53 = load ptr, ptr %3, align 4, !dbg !2703
  %54 = getelementptr inbounds %struct._priq_rb, ptr %53, i32 0, i32 1, !dbg !2705
  %55 = load i32, ptr %54, align 4, !dbg !2706
  %56 = add nsw i32 %55, 1, !dbg !2706
  store i32 %56, ptr %54, align 4, !dbg !2706
  %57 = load ptr, ptr %5, align 4, !dbg !2707
  %58 = getelementptr inbounds %struct.k_thread, ptr %57, i32 0, i32 0, !dbg !2708
  %59 = getelementptr inbounds %struct._thread_base, ptr %58, i32 0, i32 5, !dbg !2709
  store i32 %55, ptr %59, align 8, !dbg !2710
  br label %37, !dbg !2711, !llvm.loop !2712

60:                                               ; preds = %48
  br label %61, !dbg !2714

61:                                               ; preds = %60, %2
  %62 = load ptr, ptr %3, align 4, !dbg !2715
  %63 = getelementptr inbounds %struct._priq_rb, ptr %62, i32 0, i32 0, !dbg !2716
  %64 = load ptr, ptr %4, align 4, !dbg !2717
  %65 = getelementptr inbounds %struct.k_thread, ptr %64, i32 0, i32 0, !dbg !2718
  %66 = getelementptr inbounds %struct._thread_base, ptr %65, i32 0, i32 0, !dbg !2719
  call void @rb_insert(ptr noundef %63, ptr noundef %66), !dbg !2720
  ret void, !dbg !2721
}

declare ptr @z_rb_foreach_next(ptr noundef, ptr noundef) #2

declare void @rb_insert(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone
define hidden void @z_priq_rb_remove(ptr noundef %0, ptr noundef %1) #0 !dbg !2722 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2723, metadata !DIExpression()), !dbg !2724
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2725, metadata !DIExpression()), !dbg !2726
  %5 = load ptr, ptr %3, align 4, !dbg !2727
  %6 = getelementptr inbounds %struct._priq_rb, ptr %5, i32 0, i32 0, !dbg !2728
  %7 = load ptr, ptr %4, align 4, !dbg !2729
  %8 = getelementptr inbounds %struct.k_thread, ptr %7, i32 0, i32 0, !dbg !2730
  %9 = getelementptr inbounds %struct._thread_base, ptr %8, i32 0, i32 0, !dbg !2731
  call void @rb_remove(ptr noundef %6, ptr noundef %9), !dbg !2732
  %10 = load ptr, ptr %3, align 4, !dbg !2733
  %11 = getelementptr inbounds %struct._priq_rb, ptr %10, i32 0, i32 0, !dbg !2735
  %12 = getelementptr inbounds %struct.rbtree, ptr %11, i32 0, i32 0, !dbg !2736
  %13 = load ptr, ptr %12, align 4, !dbg !2736
  %14 = icmp ne ptr %13, null, !dbg !2733
  br i1 %14, label %18, label %15, !dbg !2737

15:                                               ; preds = %2
  %16 = load ptr, ptr %3, align 4, !dbg !2738
  %17 = getelementptr inbounds %struct._priq_rb, ptr %16, i32 0, i32 1, !dbg !2740
  store i32 0, ptr %17, align 4, !dbg !2741
  br label %18, !dbg !2742

18:                                               ; preds = %15, %2
  ret void, !dbg !2743
}

declare void @rb_remove(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone
define hidden ptr @z_priq_rb_best(ptr noundef %0) #0 !dbg !2744 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2747, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2749, metadata !DIExpression()), !dbg !2750
  store ptr null, ptr %3, align 4, !dbg !2750
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2751, metadata !DIExpression()), !dbg !2752
  %6 = load ptr, ptr %2, align 4, !dbg !2753
  %7 = getelementptr inbounds %struct._priq_rb, ptr %6, i32 0, i32 0, !dbg !2754
  %8 = call ptr @rb_get_min(ptr noundef %7), !dbg !2755
  store ptr %8, ptr %4, align 4, !dbg !2752
  %9 = load ptr, ptr %4, align 4, !dbg !2756
  %10 = icmp ne ptr %9, null, !dbg !2758
  br i1 %10, label %11, label %15, !dbg !2759

11:                                               ; preds = %1
  %12 = load ptr, ptr %4, align 4, !dbg !2760
  %13 = getelementptr inbounds i8, ptr %12, i32 0, !dbg !2763
  store ptr %13, ptr %5, align 4, !dbg !2764
  %14 = load ptr, ptr %5, align 4, !dbg !2765
  store ptr %14, ptr %3, align 4, !dbg !2766
  br label %15, !dbg !2767

15:                                               ; preds = %11, %1
  %16 = load ptr, ptr %3, align 4, !dbg !2768
  ret ptr %16, !dbg !2769
}

; Function Attrs: noinline nounwind optnone
define internal ptr @rb_get_min(ptr noundef %0) #0 !dbg !2770 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2774, metadata !DIExpression()), !dbg !2775
  %3 = load ptr, ptr %2, align 4, !dbg !2776
  %4 = call ptr @z_rb_get_minmax(ptr noundef %3, i8 noundef zeroext 0), !dbg !2777
  ret ptr %4, !dbg !2778
}

; Function Attrs: noinline nounwind optnone
define hidden ptr @z_priq_mq_best(ptr noundef %0) #0 !dbg !2779 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2790, metadata !DIExpression()), !dbg !2791
  %8 = load ptr, ptr %3, align 4, !dbg !2792
  %9 = getelementptr inbounds %struct._priq_mq, ptr %8, i32 0, i32 1, !dbg !2794
  %10 = load i32, ptr %9, align 4, !dbg !2794
  %11 = icmp ne i32 %10, 0, !dbg !2792
  br i1 %11, label %13, label %12, !dbg !2795

12:                                               ; preds = %1
  store ptr null, ptr %2, align 4, !dbg !2796
  br label %31, !dbg !2796

13:                                               ; preds = %1
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2798, metadata !DIExpression()), !dbg !2799
  store ptr null, ptr %4, align 4, !dbg !2799
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2800, metadata !DIExpression()), !dbg !2801
  %14 = load ptr, ptr %3, align 4, !dbg !2802
  %15 = getelementptr inbounds %struct._priq_mq, ptr %14, i32 0, i32 0, !dbg !2803
  %16 = load ptr, ptr %3, align 4, !dbg !2804
  %17 = getelementptr inbounds %struct._priq_mq, ptr %16, i32 0, i32 1, !dbg !2805
  %18 = load i32, ptr %17, align 4, !dbg !2805
  %19 = call i32 @llvm.cttz.i32(i32 %18, i1 false), !dbg !2806
  %20 = getelementptr inbounds [32 x %struct._dnode], ptr %15, i32 0, i32 %19, !dbg !2802
  store ptr %20, ptr %5, align 4, !dbg !2801
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2807, metadata !DIExpression()), !dbg !2808
  %21 = load ptr, ptr %5, align 4, !dbg !2809
  %22 = call ptr @sys_dlist_peek_head(ptr noundef %21), !dbg !2810
  store ptr %22, ptr %6, align 4, !dbg !2808
  %23 = load ptr, ptr %6, align 4, !dbg !2811
  %24 = icmp ne ptr %23, null, !dbg !2813
  br i1 %24, label %25, label %29, !dbg !2814

25:                                               ; preds = %13
  %26 = load ptr, ptr %6, align 4, !dbg !2815
  %27 = getelementptr inbounds i8, ptr %26, i32 0, !dbg !2818
  store ptr %27, ptr %7, align 4, !dbg !2819
  %28 = load ptr, ptr %7, align 4, !dbg !2820
  store ptr %28, ptr %4, align 4, !dbg !2821
  br label %29, !dbg !2822

29:                                               ; preds = %25, %13
  %30 = load ptr, ptr %4, align 4, !dbg !2823
  store ptr %30, ptr %2, align 4, !dbg !2824
  br label %31, !dbg !2824

31:                                               ; preds = %29, %12
  %32 = load ptr, ptr %2, align 4, !dbg !2825
  ret ptr %32, !dbg !2825
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #1

; Function Attrs: noinline nounwind optnone
define hidden i32 @z_unpend_all(ptr noundef %0) #0 !dbg !2826 {
  %2 = alloca ptr, align 4
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2829, metadata !DIExpression()), !dbg !2830
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2831, metadata !DIExpression()), !dbg !2832
  store i32 0, ptr %3, align 4, !dbg !2832
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2833, metadata !DIExpression()), !dbg !2834
  br label %5, !dbg !2835

5:                                                ; preds = %9, %1
  %6 = load ptr, ptr %2, align 4, !dbg !2836
  %7 = call ptr @z_waitq_head(ptr noundef %6), !dbg !2837
  store ptr %7, ptr %4, align 4, !dbg !2838
  %8 = icmp ne ptr %7, null, !dbg !2839
  br i1 %8, label %9, label %12, !dbg !2835

9:                                                ; preds = %5
  %10 = load ptr, ptr %4, align 4, !dbg !2840
  call void @z_unpend_thread(ptr noundef %10), !dbg !2842
  %11 = load ptr, ptr %4, align 4, !dbg !2843
  call void @z_ready_thread(ptr noundef %11), !dbg !2844
  store i32 1, ptr %3, align 4, !dbg !2845
  br label %5, !dbg !2835, !llvm.loop !2846

12:                                               ; preds = %5
  %13 = load i32, ptr %3, align 4, !dbg !2848
  ret i32 %13, !dbg !2849
}

; Function Attrs: noinline nounwind optnone
define internal ptr @z_waitq_head(ptr noundef %0) #0 !dbg !2850 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2852, metadata !DIExpression()), !dbg !2853
  %3 = load ptr, ptr %2, align 4, !dbg !2854
  %4 = getelementptr inbounds %struct._wait_q_t, ptr %3, i32 0, i32 0, !dbg !2855
  %5 = call ptr @sys_dlist_peek_head(ptr noundef %4), !dbg !2856
  ret ptr %5, !dbg !2857
}

; Function Attrs: noinline nounwind optnone
define hidden void @init_ready_q(ptr noundef %0) #0 !dbg !2858 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2866, metadata !DIExpression()), !dbg !2867
  %3 = load ptr, ptr %2, align 4, !dbg !2868
  %4 = getelementptr inbounds %struct._ready_q, ptr %3, i32 0, i32 1, !dbg !2869
  call void @sys_dlist_init(ptr noundef %4), !dbg !2870
  ret void, !dbg !2871
}

; Function Attrs: noinline nounwind optnone
define internal void @sys_dlist_init(ptr noundef %0) #0 !dbg !2872 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2875, metadata !DIExpression()), !dbg !2876
  %3 = load ptr, ptr %2, align 4, !dbg !2877
  %4 = load ptr, ptr %2, align 4, !dbg !2878
  %5 = getelementptr inbounds %struct._dnode, ptr %4, i32 0, i32 0, !dbg !2879
  store ptr %3, ptr %5, align 4, !dbg !2880
  %6 = load ptr, ptr %2, align 4, !dbg !2881
  %7 = load ptr, ptr %2, align 4, !dbg !2882
  %8 = getelementptr inbounds %struct._dnode, ptr %7, i32 0, i32 1, !dbg !2883
  store ptr %6, ptr %8, align 4, !dbg !2884
  ret void, !dbg !2885
}

; Function Attrs: noinline nounwind optnone
define hidden void @z_sched_init() #0 !dbg !2886 {
  call void @init_ready_q(ptr noundef getelementptr inbounds (%struct.z_kernel, ptr @_kernel, i32 0, i32 1)), !dbg !2887
  ret void, !dbg !2888
}

; Function Attrs: noinline nounwind optnone
define hidden i32 @z_impl_k_thread_priority_get(ptr noundef %0) #0 !dbg !2889 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2893, metadata !DIExpression()), !dbg !2894
  %3 = load ptr, ptr %2, align 4, !dbg !2895
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !2896
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 4, !dbg !2897
  %6 = getelementptr inbounds %struct.anon, ptr %5, i32 0, i32 0, !dbg !2897
  %7 = load i8, ptr %6, align 2, !dbg !2897
  %8 = sext i8 %7 to i32, !dbg !2895
  ret i32 %8, !dbg !2898
}

; Function Attrs: noinline nounwind optnone
define hidden void @z_impl_k_thread_priority_set(ptr noundef %0, i32 noundef %1) #0 !dbg !2899 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2902, metadata !DIExpression()), !dbg !2903
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2904, metadata !DIExpression()), !dbg !2905
  br label %6, !dbg !2906

6:                                                ; preds = %2
  br label %7, !dbg !2907

7:                                                ; preds = %6
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2909, metadata !DIExpression()), !dbg !2910
  %8 = load ptr, ptr %3, align 4, !dbg !2911
  store ptr %8, ptr %5, align 4, !dbg !2910
  %9 = load ptr, ptr %5, align 4, !dbg !2912
  %10 = load i32, ptr %4, align 4, !dbg !2913
  call void @z_thread_priority_set(ptr noundef %9, i32 noundef %10), !dbg !2914
  ret void, !dbg !2915
}

; Function Attrs: noinline nounwind optnone
define hidden zeroext i1 @k_can_yield() #0 !dbg !2916 {
  %1 = call zeroext i1 @k_is_pre_kernel(), !dbg !2917
  br i1 %1, label %7, label %2, !dbg !2918

2:                                                ; preds = %0
  %3 = call zeroext i1 @k_is_in_isr(), !dbg !2919
  br i1 %3, label %7, label %4, !dbg !2920

4:                                                ; preds = %2
  %5 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !2921
  %6 = call zeroext i1 @z_is_idle_thread_object(ptr noundef %5), !dbg !2922
  br label %7, !dbg !2920

7:                                                ; preds = %4, %2, %0
  %8 = phi i1 [ true, %2 ], [ true, %0 ], [ %6, %4 ]
  %9 = xor i1 %8, true, !dbg !2923
  ret i1 %9, !dbg !2924
}

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @k_is_pre_kernel() #0 !dbg !2925 {
  %1 = load i8, ptr @z_sys_post_kernel, align 1, !dbg !2926
  %2 = trunc i8 %1 to i1, !dbg !2926
  %3 = xor i1 %2, true, !dbg !2927
  ret i1 %3, !dbg !2928
}

declare zeroext i1 @k_is_in_isr() #2

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @z_is_idle_thread_object(ptr noundef %0) #0 !dbg !2929 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2930, metadata !DIExpression()), !dbg !2931
  %3 = load ptr, ptr %2, align 4, !dbg !2932
  %4 = icmp eq ptr %3, @z_idle_threads, !dbg !2933
  ret i1 %4, !dbg !2934
}

; Function Attrs: noinline nounwind optnone
define hidden void @z_impl_k_yield() #0 !dbg !2935 {
  %1 = alloca ptr, align 4
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  %11 = alloca ptr, align 4
  %12 = alloca i32, align 4
  %13 = alloca ptr, align 4
  %14 = alloca ptr, align 4
  %15 = alloca %struct.z_spinlock_key, align 4
  %16 = alloca ptr, align 4
  %17 = alloca ptr, align 4
  %18 = alloca %struct.z_spinlock_key, align 4
  %19 = alloca ptr, align 4
  %20 = alloca %struct.z_spinlock_key, align 4
  br label %21, !dbg !2936

21:                                               ; preds = %0
  br label %22, !dbg !2937

22:                                               ; preds = %21
  call void @llvm.dbg.declare(metadata ptr %20, metadata !2939, metadata !DIExpression()), !dbg !2940
  store ptr @sched_spinlock, ptr %19, align 4
  call void @llvm.dbg.declare(metadata ptr %19, metadata !568, metadata !DIExpression()), !dbg !2941
  %23 = load ptr, ptr %19, align 4, !dbg !2943
  call void @llvm.dbg.declare(metadata ptr %18, metadata !576, metadata !DIExpression()), !dbg !2944
  call void @llvm.dbg.declare(metadata ptr %12, metadata !578, metadata !DIExpression()), !dbg !2945
  %24 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #5, !dbg !2947, !srcloc !586
  store i32 %24, ptr %12, align 4, !dbg !2947
  %25 = load i32, ptr %12, align 4, !dbg !2948
  store i32 %25, ptr %18, align 4, !dbg !2949
  %26 = load ptr, ptr %19, align 4, !dbg !2950
  store ptr %26, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !590, metadata !DIExpression()), !dbg !2951
  %27 = load ptr, ptr %11, align 4, !dbg !2953
  %28 = load ptr, ptr %19, align 4, !dbg !2954
  store ptr %28, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !598, metadata !DIExpression()), !dbg !2955
  %29 = load ptr, ptr %10, align 4, !dbg !2957
  %30 = load i32, ptr %18, align 4, !dbg !2958
  %31 = getelementptr inbounds %struct.z_spinlock_key, ptr %20, i32 0, i32 0, !dbg !2959
  store i32 %30, ptr %31, align 4, !dbg !2959
  %32 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !2960
  store ptr %32, ptr %17, align 4
  call void @llvm.dbg.declare(metadata ptr %17, metadata !758, metadata !DIExpression()), !dbg !2963
  %33 = load ptr, ptr %17, align 4, !dbg !2965
  %34 = getelementptr inbounds %struct._thread_base, ptr %33, i32 0, i32 3, !dbg !2966
  %35 = load i8, ptr %34, align 1, !dbg !2967
  %36 = zext i8 %35 to i32, !dbg !2967
  %37 = and i32 %36, -129, !dbg !2967
  %38 = trunc i32 %37 to i8, !dbg !2967
  store i8 %38, ptr %34, align 1, !dbg !2967
  %39 = load ptr, ptr %17, align 4, !dbg !2968
  %40 = call zeroext i1 @should_queue_thread(ptr noundef %39), !dbg !2969
  br i1 %40, label %41, label %dequeue_thread.exit, !dbg !2970

41:                                               ; preds = %22
  %42 = load ptr, ptr %17, align 4, !dbg !2971
  store ptr %42, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !771, metadata !DIExpression()), !dbg !2972
  %43 = load ptr, ptr %9, align 4, !dbg !2974
  store ptr %43, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !776, metadata !DIExpression()), !dbg !2975
  %44 = load ptr, ptr %8, align 4, !dbg !2977
  %45 = load ptr, ptr %9, align 4, !dbg !2978
  call void @z_priq_dumb_remove(ptr noundef getelementptr inbounds (%struct.z_kernel, ptr @_kernel, i32 0, i32 1, i32 1), ptr noundef %45), !dbg !2979
  br label %dequeue_thread.exit, !dbg !2980

dequeue_thread.exit:                              ; preds = %22, %41
  %46 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !2981
  store ptr %46, ptr %13, align 4
  call void @llvm.dbg.declare(metadata ptr %13, metadata !788, metadata !DIExpression()), !dbg !2982
  %47 = load ptr, ptr %13, align 4, !dbg !2984
  %48 = getelementptr inbounds %struct._thread_base, ptr %47, i32 0, i32 3, !dbg !2985
  %49 = load i8, ptr %48, align 1, !dbg !2986
  %50 = zext i8 %49 to i32, !dbg !2986
  %51 = or i32 %50, 128, !dbg !2986
  %52 = trunc i32 %51 to i8, !dbg !2986
  store i8 %52, ptr %48, align 1, !dbg !2986
  %53 = load ptr, ptr %13, align 4, !dbg !2987
  %54 = call zeroext i1 @should_queue_thread(ptr noundef %53), !dbg !2988
  br i1 %54, label %55, label %queue_thread.exit, !dbg !2989

55:                                               ; preds = %dequeue_thread.exit
  %56 = load ptr, ptr %13, align 4, !dbg !2990
  store ptr %56, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !801, metadata !DIExpression()), !dbg !2991
  %57 = load ptr, ptr %7, align 4, !dbg !2993
  store ptr %57, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !776, metadata !DIExpression()), !dbg !2994
  %58 = load ptr, ptr %6, align 4, !dbg !2996
  %59 = load ptr, ptr %7, align 4, !dbg !2997
  store ptr getelementptr inbounds (%struct.z_kernel, ptr @_kernel, i32 0, i32 1, i32 1), ptr %1, align 4
  call void @llvm.dbg.declare(metadata ptr %1, metadata !810, metadata !DIExpression()), !dbg !2998
  store ptr %59, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !817, metadata !DIExpression()), !dbg !3000
  call void @llvm.dbg.declare(metadata ptr %3, metadata !819, metadata !DIExpression()), !dbg !3001
  %60 = load ptr, ptr %1, align 4, !dbg !3002
  %61 = call ptr @sys_dlist_peek_head(ptr noundef %60), !dbg !3003
  %62 = icmp ne ptr %61, null, !dbg !3004
  br i1 %62, label %63, label %67, !dbg !3005

63:                                               ; preds = %55
  %64 = load ptr, ptr %1, align 4, !dbg !3006
  %65 = call ptr @sys_dlist_peek_head(ptr noundef %64), !dbg !3007
  store ptr %65, ptr %4, align 4, !dbg !3008
  %66 = load ptr, ptr %4, align 4, !dbg !3009
  br label %68, !dbg !3005

67:                                               ; preds = %55
  br label %68, !dbg !3005

68:                                               ; preds = %67, %63
  %69 = phi ptr [ %66, %63 ], [ null, %67 ], !dbg !3005
  store ptr %69, ptr %3, align 4, !dbg !3010
  br label %70, !dbg !3011

70:                                               ; preds = %98, %68
  %71 = load ptr, ptr %3, align 4, !dbg !3012
  %72 = icmp ne ptr %71, null, !dbg !3013
  br i1 %72, label %73, label %100, !dbg !3014

73:                                               ; preds = %70
  %74 = load ptr, ptr %2, align 4, !dbg !3015
  %75 = load ptr, ptr %3, align 4, !dbg !3016
  %76 = call i32 @z_sched_prio_cmp(ptr noundef %74, ptr noundef %75), !dbg !3017
  %77 = icmp sgt i32 %76, 0, !dbg !3018
  br i1 %77, label %78, label %81, !dbg !3019

78:                                               ; preds = %73
  %79 = load ptr, ptr %3, align 4, !dbg !3020
  %80 = load ptr, ptr %2, align 4, !dbg !3021
  call void @sys_dlist_insert(ptr noundef %79, ptr noundef %80), !dbg !3022
  br label %z_priq_dumb_add.exit, !dbg !3023

81:                                               ; preds = %73
  %82 = load ptr, ptr %3, align 4, !dbg !3024
  %83 = icmp ne ptr %82, null, !dbg !3025
  br i1 %83, label %84, label %97, !dbg !3026

84:                                               ; preds = %81
  %85 = load ptr, ptr %1, align 4, !dbg !3027
  %86 = load ptr, ptr %3, align 4, !dbg !3028
  %87 = call ptr @sys_dlist_peek_next(ptr noundef %85, ptr noundef %86), !dbg !3029
  %88 = icmp ne ptr %87, null, !dbg !3030
  br i1 %88, label %89, label %94, !dbg !3031

89:                                               ; preds = %84
  %90 = load ptr, ptr %1, align 4, !dbg !3032
  %91 = load ptr, ptr %3, align 4, !dbg !3033
  %92 = call ptr @sys_dlist_peek_next(ptr noundef %90, ptr noundef %91), !dbg !3034
  store ptr %92, ptr %5, align 4, !dbg !3035
  %93 = load ptr, ptr %5, align 4, !dbg !3036
  br label %95, !dbg !3031

94:                                               ; preds = %84
  br label %95, !dbg !3031

95:                                               ; preds = %94, %89
  %96 = phi ptr [ %93, %89 ], [ null, %94 ], !dbg !3031
  br label %98, !dbg !3026

97:                                               ; preds = %81
  br label %98, !dbg !3026

98:                                               ; preds = %97, %95
  %99 = phi ptr [ %96, %95 ], [ null, %97 ], !dbg !3026
  store ptr %99, ptr %3, align 4, !dbg !3037
  br label %70, !dbg !3038, !llvm.loop !3039

100:                                              ; preds = %70
  %101 = load ptr, ptr %1, align 4, !dbg !3041
  %102 = load ptr, ptr %2, align 4, !dbg !3042
  call void @sys_dlist_append(ptr noundef %101, ptr noundef %102), !dbg !3043
  br label %z_priq_dumb_add.exit, !dbg !3044

z_priq_dumb_add.exit:                             ; preds = %78, %100
  br label %queue_thread.exit, !dbg !3045

queue_thread.exit:                                ; preds = %dequeue_thread.exit, %z_priq_dumb_add.exit
  call void @update_cache(i32 noundef 1), !dbg !3046
  %103 = getelementptr inbounds %struct.z_spinlock_key, ptr %20, i32 0, i32 0, !dbg !3047
  %104 = load [1 x i32], ptr %103, align 4, !dbg !3047
  store [1 x i32] %104, ptr %15, align 4
  store ptr @sched_spinlock, ptr %16, align 4
  call void @llvm.dbg.declare(metadata ptr %16, metadata !1164, metadata !DIExpression()), !dbg !3048
  call void @llvm.dbg.declare(metadata ptr %15, metadata !1171, metadata !DIExpression()), !dbg !3050
  %105 = load ptr, ptr %16, align 4, !dbg !3051
  store ptr %105, ptr %14, align 4
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1174, metadata !DIExpression()), !dbg !3052
  %106 = load ptr, ptr %14, align 4, !dbg !3054
  %107 = load i32, ptr %15, align 4, !dbg !3055
  %108 = call i32 @z_swap_irqlock(i32 noundef %107), !dbg !3056
  ret void, !dbg !3057
}

; Function Attrs: noinline nounwind optnone
define hidden i32 @z_impl_k_sleep([1 x i64] %0) #0 !dbg !3058 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.k_timeout_t, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.k_timeout_t, align 8
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.k_timeout_t, ptr %3, i32 0, i32 0
  store [1 x i64] %0, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3061, metadata !DIExpression()), !dbg !3062
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3063, metadata !DIExpression()), !dbg !3064
  br label %8, !dbg !3065

8:                                                ; preds = %1
  br label %9, !dbg !3066

9:                                                ; preds = %8
  %10 = getelementptr inbounds %struct.k_timeout_t, ptr %3, i32 0, i32 0, !dbg !3068
  %11 = load i64, ptr %10, align 8, !dbg !3068
  %12 = getelementptr inbounds %struct.k_timeout_t, ptr %5, i32 0, i32 0, !dbg !3070
  store i64 -1, ptr %12, align 8, !dbg !3070
  %13 = icmp eq i64 %11, -1, !dbg !3071
  br i1 %13, label %14, label %18, !dbg !3072

14:                                               ; preds = %9
  %15 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !3073
  call void @k_thread_suspend(ptr noundef %15), !dbg !3075
  br label %16, !dbg !3076

16:                                               ; preds = %14
  br label %17, !dbg !3077

17:                                               ; preds = %16
  store i32 -1, ptr %2, align 4, !dbg !3079
  br label %31, !dbg !3079

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.k_timeout_t, ptr %3, i32 0, i32 0, !dbg !3080
  %20 = load i64, ptr %19, align 8, !dbg !3080
  store i64 %20, ptr %4, align 8, !dbg !3081
  %21 = load i64, ptr %4, align 8, !dbg !3082
  %22 = call i32 @z_tick_sleep(i64 noundef %21), !dbg !3083
  %23 = sext i32 %22 to i64, !dbg !3083
  store i64 %23, ptr %4, align 8, !dbg !3084
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3085, metadata !DIExpression()), !dbg !3086
  %24 = load i64, ptr %4, align 8, !dbg !3087
  %25 = add i64 %24, 0, !dbg !3088
  %26 = udiv i64 %25, 10, !dbg !3089
  %27 = trunc i64 %26 to i32, !dbg !3090
  store i32 %27, ptr %6, align 4, !dbg !3086
  br label %28, !dbg !3091

28:                                               ; preds = %18
  br label %29, !dbg !3092

29:                                               ; preds = %28
  %30 = load i32, ptr %6, align 4, !dbg !3094
  store i32 %30, ptr %2, align 4, !dbg !3095
  br label %31, !dbg !3095

31:                                               ; preds = %29, %17
  %32 = load i32, ptr %2, align 4, !dbg !3096
  ret i32 %32, !dbg !3096
}

; Function Attrs: noinline nounwind optnone
define internal void @k_thread_suspend(ptr noundef %0) #0 !dbg !3097 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3101, metadata !DIExpression()), !dbg !3102
  br label %3, !dbg !3103

3:                                                ; preds = %1
  call void asm sideeffect "", "~{memory}"() #5, !dbg !3104, !srcloc !3106
  br label %4, !dbg !3107

4:                                                ; preds = %3
  %5 = load ptr, ptr %2, align 4, !dbg !3108
  call void @z_impl_k_thread_suspend(ptr noundef %5), !dbg !3109
  ret void, !dbg !3110
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_tick_sleep(i64 noundef %0) #0 !dbg !3111 {
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
  %16 = alloca %struct.k_timeout_t, align 8
  %17 = alloca %struct.z_spinlock_key, align 4
  store i64 %0, ptr %11, align 8
  call void @llvm.dbg.declare(metadata ptr %11, metadata !3114, metadata !DIExpression()), !dbg !3115
  call void @llvm.dbg.declare(metadata ptr %12, metadata !3116, metadata !DIExpression()), !dbg !3117
  br label %18, !dbg !3118

18:                                               ; preds = %1
  br label %19, !dbg !3119

19:                                               ; preds = %18
  %20 = load i64, ptr %11, align 8, !dbg !3123
  %21 = icmp eq i64 %20, 0, !dbg !3125
  br i1 %21, label %22, label %23, !dbg !3126

22:                                               ; preds = %19
  call void @k_yield(), !dbg !3127
  store i32 0, ptr %10, align 4, !dbg !3129
  br label %72, !dbg !3129

23:                                               ; preds = %19
  call void @llvm.dbg.declare(metadata ptr %16, metadata !3130, metadata !DIExpression()), !dbg !3131
  %24 = getelementptr inbounds %struct.k_timeout_t, ptr %16, i32 0, i32 0, !dbg !3132
  %25 = load i64, ptr %11, align 8, !dbg !3133
  store i64 %25, ptr %24, align 8, !dbg !3132
  %26 = load i64, ptr %11, align 8, !dbg !3134
  %27 = sub nsw i64 -2, %26, !dbg !3136
  %28 = icmp sle i64 %27, 0, !dbg !3137
  br i1 %28, label %29, label %35, !dbg !3138

29:                                               ; preds = %23
  %30 = load i64, ptr %11, align 8, !dbg !3139
  %31 = call i32 @sys_clock_tick_get_32(), !dbg !3141
  %32 = zext i32 %31 to i64, !dbg !3141
  %33 = add nsw i64 %30, %32, !dbg !3142
  %34 = trunc i64 %33 to i32, !dbg !3139
  store i32 %34, ptr %12, align 4, !dbg !3143
  br label %39, !dbg !3144

35:                                               ; preds = %23
  %36 = load i64, ptr %11, align 8, !dbg !3145
  %37 = sub nsw i64 -2, %36, !dbg !3147
  %38 = trunc i64 %37 to i32, !dbg !3148
  store i32 %38, ptr %12, align 4, !dbg !3149
  br label %39

39:                                               ; preds = %35, %29
  call void @llvm.dbg.declare(metadata ptr %17, metadata !3150, metadata !DIExpression()), !dbg !3151
  store ptr @sched_spinlock, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !568, metadata !DIExpression()), !dbg !3152
  %40 = load ptr, ptr %9, align 4, !dbg !3154
  call void @llvm.dbg.declare(metadata ptr %8, metadata !576, metadata !DIExpression()), !dbg !3155
  call void @llvm.dbg.declare(metadata ptr %4, metadata !578, metadata !DIExpression()), !dbg !3156
  %41 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #5, !dbg !3158, !srcloc !586
  store i32 %41, ptr %4, align 4, !dbg !3158
  %42 = load i32, ptr %4, align 4, !dbg !3159
  store i32 %42, ptr %8, align 4, !dbg !3160
  %43 = load ptr, ptr %9, align 4, !dbg !3161
  store ptr %43, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !590, metadata !DIExpression()), !dbg !3162
  %44 = load ptr, ptr %3, align 4, !dbg !3164
  %45 = load ptr, ptr %9, align 4, !dbg !3165
  store ptr %45, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !598, metadata !DIExpression()), !dbg !3166
  %46 = load ptr, ptr %2, align 4, !dbg !3168
  %47 = load i32, ptr %8, align 4, !dbg !3169
  %48 = getelementptr inbounds %struct.z_spinlock_key, ptr %17, i32 0, i32 0, !dbg !3170
  store i32 %47, ptr %48, align 4, !dbg !3170
  %49 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !3171
  store ptr %49, ptr @pending_current, align 4, !dbg !3172
  %50 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !3173
  call void @unready_thread(ptr noundef %50), !dbg !3174
  %51 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !3175
  %52 = getelementptr inbounds %struct.k_timeout_t, ptr %16, i32 0, i32 0, !dbg !3176
  %53 = load [1 x i64], ptr %52, align 8, !dbg !3176
  call void @z_add_thread_timeout(ptr noundef %51, [1 x i64] %53), !dbg !3176
  %54 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !3177
  call void @z_mark_thread_as_suspended(ptr noundef %54), !dbg !3178
  %55 = getelementptr inbounds %struct.z_spinlock_key, ptr %17, i32 0, i32 0, !dbg !3179
  %56 = load [1 x i32], ptr %55, align 4, !dbg !3179
  store [1 x i32] %56, ptr %6, align 4
  store ptr @sched_spinlock, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1164, metadata !DIExpression()), !dbg !3180
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1171, metadata !DIExpression()), !dbg !3182
  %57 = load ptr, ptr %7, align 4, !dbg !3183
  store ptr %57, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1174, metadata !DIExpression()), !dbg !3184
  %58 = load ptr, ptr %5, align 4, !dbg !3186
  %59 = load i32, ptr %6, align 4, !dbg !3187
  %60 = call i32 @z_swap_irqlock(i32 noundef %59), !dbg !3188
  %61 = load i32, ptr %12, align 4, !dbg !3189
  %62 = zext i32 %61 to i64, !dbg !3190
  %63 = call i32 @sys_clock_tick_get_32(), !dbg !3191
  %64 = zext i32 %63 to i64, !dbg !3191
  %65 = sub nsw i64 %62, %64, !dbg !3192
  store i64 %65, ptr %11, align 8, !dbg !3193
  %66 = load i64, ptr %11, align 8, !dbg !3194
  %67 = icmp sgt i64 %66, 0, !dbg !3196
  br i1 %67, label %68, label %71, !dbg !3197

68:                                               ; preds = %39
  %69 = load i64, ptr %11, align 8, !dbg !3198
  %70 = trunc i64 %69 to i32, !dbg !3198
  store i32 %70, ptr %10, align 4, !dbg !3200
  br label %72, !dbg !3200

71:                                               ; preds = %39
  store i32 0, ptr %10, align 4, !dbg !3201
  br label %72, !dbg !3201

72:                                               ; preds = %71, %68, %22
  %73 = load i32, ptr %10, align 4, !dbg !3202
  ret i32 %73, !dbg !3202
}

; Function Attrs: noinline nounwind optnone
define hidden i32 @z_impl_k_usleep(i32 noundef %0) #0 !dbg !3203 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3206, metadata !DIExpression()), !dbg !3207
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3208, metadata !DIExpression()), !dbg !3209
  br label %4, !dbg !3210

4:                                                ; preds = %1
  br label %5, !dbg !3211

5:                                                ; preds = %4
  %6 = load i32, ptr %2, align 4, !dbg !3213
  %7 = sext i32 %6 to i64, !dbg !3214
  %8 = add i64 %7, 99, !dbg !3215
  %9 = udiv i64 %8, 100, !dbg !3216
  %10 = trunc i64 %9 to i32, !dbg !3217
  store i32 %10, ptr %3, align 4, !dbg !3218
  %11 = load i32, ptr %3, align 4, !dbg !3219
  %12 = sext i32 %11 to i64, !dbg !3219
  %13 = call i32 @z_tick_sleep(i64 noundef %12), !dbg !3220
  store i32 %13, ptr %3, align 4, !dbg !3221
  br label %14, !dbg !3222

14:                                               ; preds = %5
  br label %15, !dbg !3223

15:                                               ; preds = %14
  %16 = load i32, ptr %3, align 4, !dbg !3225
  %17 = sext i32 %16 to i64, !dbg !3226
  %18 = mul i64 %17, 100, !dbg !3227
  %19 = trunc i64 %18 to i32, !dbg !3228
  ret i32 %19, !dbg !3229
}

; Function Attrs: noinline nounwind optnone
define hidden void @z_impl_k_wakeup(ptr noundef %0) #0 !dbg !3230 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3231, metadata !DIExpression()), !dbg !3232
  br label %4, !dbg !3233

4:                                                ; preds = %1
  br label %5, !dbg !3234

5:                                                ; preds = %4
  %6 = load ptr, ptr %3, align 4, !dbg !3236
  %7 = call zeroext i1 @z_is_thread_pending(ptr noundef %6), !dbg !3238
  br i1 %7, label %8, label %9, !dbg !3239

8:                                                ; preds = %5
  br label %31, !dbg !3240

9:                                                ; preds = %5
  %10 = load ptr, ptr %3, align 4, !dbg !3242
  %11 = call i32 @z_abort_thread_timeout(ptr noundef %10), !dbg !3244
  %12 = icmp slt i32 %11, 0, !dbg !3245
  br i1 %12, label %13, label %22, !dbg !3246

13:                                               ; preds = %9
  %14 = load ptr, ptr %3, align 4, !dbg !3247
  %15 = getelementptr inbounds %struct.k_thread, ptr %14, i32 0, i32 0, !dbg !3250
  %16 = getelementptr inbounds %struct._thread_base, ptr %15, i32 0, i32 3, !dbg !3251
  %17 = load i8, ptr %16, align 1, !dbg !3251
  %18 = zext i8 %17 to i32, !dbg !3247
  %19 = icmp ne i32 %18, 16, !dbg !3252
  br i1 %19, label %20, label %21, !dbg !3253

20:                                               ; preds = %13
  br label %31, !dbg !3254

21:                                               ; preds = %13
  br label %22, !dbg !3256

22:                                               ; preds = %21, %9
  %23 = load ptr, ptr %3, align 4, !dbg !3257
  call void @z_mark_thread_as_not_suspended(ptr noundef %23), !dbg !3258
  %24 = load ptr, ptr %3, align 4, !dbg !3259
  call void @z_ready_thread(ptr noundef %24), !dbg !3260
  call void @flag_ipi(), !dbg !3261
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2343, metadata !DIExpression()), !dbg !3262
  %25 = call i32 asm sideeffect "MRS $0, ipsr", "=r"() #5, !dbg !3266, !srcloc !2356
  store i32 %25, ptr %2, align 4, !dbg !3266
  %26 = load i32, ptr %2, align 4, !dbg !3267
  %27 = icmp ne i32 %26, 0, !dbg !3268
  %28 = zext i1 %27 to i64, !dbg !3268
  %29 = select i1 %27, i32 1, i32 0, !dbg !3268
  br i1 %27, label %31, label %30, !dbg !3269

30:                                               ; preds = %22
  call void @z_reschedule_unlocked(), !dbg !3270
  br label %31, !dbg !3272

31:                                               ; preds = %8, %20, %30, %22
  ret void, !dbg !3273
}

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @z_is_thread_pending(ptr noundef %0) #0 !dbg !3274 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3275, metadata !DIExpression()), !dbg !3276
  %3 = load ptr, ptr %2, align 4, !dbg !3277
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !3278
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 3, !dbg !3279
  %6 = load i8, ptr %5, align 1, !dbg !3279
  %7 = zext i8 %6 to i32, !dbg !3277
  %8 = and i32 %7, 2, !dbg !3280
  %9 = icmp ne i32 %8, 0, !dbg !3281
  ret i1 %9, !dbg !3282
}

; Function Attrs: noinline nounwind optnone
define hidden ptr @z_impl_k_sched_current_thread_query() #0 !dbg !3283 {
  %1 = alloca ptr, align 4
  call void @llvm.dbg.declare(metadata ptr %1, metadata !3286, metadata !DIExpression()), !dbg !3287
  %2 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !3288
  store ptr %2, ptr %1, align 4, !dbg !3287
  %3 = load ptr, ptr %1, align 4, !dbg !3289
  ret ptr %3, !dbg !3290
}

; Function Attrs: noinline nounwind optnone
define hidden i32 @z_impl_k_is_preempt_thread() #0 !dbg !3291 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata ptr %1, metadata !2343, metadata !DIExpression()), !dbg !3294
  %2 = call i32 asm sideeffect "MRS $0, ipsr", "=r"() #5, !dbg !3297, !srcloc !2356
  store i32 %2, ptr %1, align 4, !dbg !3297
  %3 = load i32, ptr %1, align 4, !dbg !3298
  %4 = icmp ne i32 %3, 0, !dbg !3299
  %5 = zext i1 %4 to i64, !dbg !3299
  %6 = select i1 %4, i32 1, i32 0, !dbg !3299
  br i1 %4, label %11, label %7, !dbg !3300

7:                                                ; preds = %0
  %8 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !3301
  %9 = call i32 @is_preempt(ptr noundef %8), !dbg !3302
  %10 = icmp ne i32 %9, 0, !dbg !3300
  br label %11

11:                                               ; preds = %7, %0
  %12 = phi i1 [ false, %0 ], [ %10, %7 ], !dbg !3303
  %13 = zext i1 %12 to i32, !dbg !3300
  ret i32 %13, !dbg !3304
}

; Function Attrs: noinline nounwind optnone
define internal i32 @is_preempt(ptr noundef %0) #0 !dbg !3305 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3306, metadata !DIExpression()), !dbg !3307
  %3 = load ptr, ptr %2, align 4, !dbg !3308
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !3309
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 4, !dbg !3310
  %6 = load i16, ptr %5, align 2, !dbg !3310
  %7 = zext i16 %6 to i32, !dbg !3308
  %8 = icmp ule i32 %7, 127, !dbg !3311
  %9 = zext i1 %8 to i32, !dbg !3311
  ret i32 %9, !dbg !3312
}

; Function Attrs: noinline nounwind optnone
define hidden void @z_thread_abort(ptr noundef %0) #0 !dbg !3313 {
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
  store ptr %0, ptr %20, align 4
  call void @llvm.dbg.declare(metadata ptr %20, metadata !3314, metadata !DIExpression()), !dbg !3315
  call void @llvm.dbg.declare(metadata ptr %21, metadata !3316, metadata !DIExpression()), !dbg !3317
  store ptr @sched_spinlock, ptr %19, align 4
  call void @llvm.dbg.declare(metadata ptr %19, metadata !568, metadata !DIExpression()), !dbg !3318
  %23 = load ptr, ptr %19, align 4, !dbg !3320
  call void @llvm.dbg.declare(metadata ptr %18, metadata !576, metadata !DIExpression()), !dbg !3321
  call void @llvm.dbg.declare(metadata ptr %5, metadata !578, metadata !DIExpression()), !dbg !3322
  %24 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #5, !dbg !3324, !srcloc !586
  store i32 %24, ptr %5, align 4, !dbg !3324
  %25 = load i32, ptr %5, align 4, !dbg !3325
  store i32 %25, ptr %18, align 4, !dbg !3326
  %26 = load ptr, ptr %19, align 4, !dbg !3327
  store ptr %26, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !590, metadata !DIExpression()), !dbg !3328
  %27 = load ptr, ptr %4, align 4, !dbg !3330
  %28 = load ptr, ptr %19, align 4, !dbg !3331
  store ptr %28, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !598, metadata !DIExpression()), !dbg !3332
  %29 = load ptr, ptr %3, align 4, !dbg !3334
  %30 = load i32, ptr %18, align 4, !dbg !3335
  %31 = getelementptr inbounds %struct.z_spinlock_key, ptr %21, i32 0, i32 0, !dbg !3336
  store i32 %30, ptr %31, align 4, !dbg !3336
  %32 = load ptr, ptr %20, align 4, !dbg !3337
  %33 = getelementptr inbounds %struct.k_thread, ptr %32, i32 0, i32 0, !dbg !3339
  %34 = getelementptr inbounds %struct._thread_base, ptr %33, i32 0, i32 2, !dbg !3340
  %35 = load i8, ptr %34, align 4, !dbg !3340
  %36 = zext i8 %35 to i32, !dbg !3337
  %37 = and i32 %36, 1, !dbg !3341
  %38 = icmp ne i32 %37, 0, !dbg !3342
  br i1 %38, label %39, label %51, !dbg !3343

39:                                               ; preds = %1
  %40 = getelementptr inbounds %struct.z_spinlock_key, ptr %21, i32 0, i32 0, !dbg !3344
  %41 = load [1 x i32], ptr %40, align 4, !dbg !3344
  store [1 x i32] %41, ptr %12, align 4
  store ptr @sched_spinlock, ptr %13, align 4
  call void @llvm.dbg.declare(metadata ptr %13, metadata !620, metadata !DIExpression()), !dbg !3346
  call void @llvm.dbg.declare(metadata ptr %12, metadata !626, metadata !DIExpression()), !dbg !3348
  %42 = load ptr, ptr %13, align 4, !dbg !3349
  %43 = load i32, ptr %12, align 4, !dbg !3350
  store i32 %43, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !630, metadata !DIExpression()), !dbg !3351
  %44 = load i32, ptr %8, align 4, !dbg !3353
  %45 = icmp ne i32 %44, 0, !dbg !3354
  br i1 %45, label %46, label %47, !dbg !3355

46:                                               ; preds = %39
  br label %arch_irq_unlock.exit, !dbg !3356

47:                                               ; preds = %39
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #5, !dbg !3357, !srcloc !643
  br label %arch_irq_unlock.exit, !dbg !3358

arch_irq_unlock.exit:                             ; preds = %46, %47
  call void @llvm.dbg.declare(metadata ptr %22, metadata !3359, metadata !DIExpression()), !dbg !3360
  store i32 4, ptr %22, align 4, !dbg !3360
  br label %48, !dbg !3361

48:                                               ; preds = %arch_irq_unlock.exit
  %49 = load i32, ptr %22, align 4, !dbg !3362
  call void asm sideeffect "cpsie i\0A\09svc $1\0A\09", "{r0},i,~{memory}"(i32 %49, i32 2) #5, !dbg !3364, !srcloc !3365
  br label %50, !dbg !3366

50:                                               ; preds = %48
  br label %95, !dbg !3367

51:                                               ; preds = %1
  %52 = load ptr, ptr %20, align 4, !dbg !3368
  %53 = getelementptr inbounds %struct.k_thread, ptr %52, i32 0, i32 0, !dbg !3370
  %54 = getelementptr inbounds %struct._thread_base, ptr %53, i32 0, i32 3, !dbg !3371
  %55 = load i8, ptr %54, align 1, !dbg !3371
  %56 = zext i8 %55 to i32, !dbg !3368
  %57 = and i32 %56, 8, !dbg !3372
  %58 = icmp ne i32 %57, 0, !dbg !3373
  br i1 %58, label %59, label %68, !dbg !3374

59:                                               ; preds = %51
  %60 = getelementptr inbounds %struct.z_spinlock_key, ptr %21, i32 0, i32 0, !dbg !3375
  %61 = load [1 x i32], ptr %60, align 4, !dbg !3375
  store [1 x i32] %61, ptr %14, align 4
  store ptr @sched_spinlock, ptr %15, align 4
  call void @llvm.dbg.declare(metadata ptr %15, metadata !620, metadata !DIExpression()), !dbg !3377
  call void @llvm.dbg.declare(metadata ptr %14, metadata !626, metadata !DIExpression()), !dbg !3379
  %62 = load ptr, ptr %15, align 4, !dbg !3380
  %63 = load i32, ptr %14, align 4, !dbg !3381
  store i32 %63, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !630, metadata !DIExpression()), !dbg !3382
  %64 = load i32, ptr %7, align 4, !dbg !3384
  %65 = icmp ne i32 %64, 0, !dbg !3385
  br i1 %65, label %66, label %67, !dbg !3386

66:                                               ; preds = %59
  br label %arch_irq_unlock.exit1, !dbg !3387

67:                                               ; preds = %59
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #5, !dbg !3388, !srcloc !643
  br label %arch_irq_unlock.exit1, !dbg !3389

arch_irq_unlock.exit1:                            ; preds = %66, %67
  br label %95, !dbg !3390

68:                                               ; preds = %51
  %69 = load ptr, ptr %20, align 4, !dbg !3391
  call void @end_thread(ptr noundef %69), !dbg !3392
  %70 = load ptr, ptr %20, align 4, !dbg !3393
  %71 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !3395
  %72 = icmp eq ptr %70, %71, !dbg !3396
  br i1 %72, label %73, label %86, !dbg !3397

73:                                               ; preds = %68
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2343, metadata !DIExpression()), !dbg !3398
  %74 = call i32 asm sideeffect "MRS $0, ipsr", "=r"() #5, !dbg !3401, !srcloc !2356
  store i32 %74, ptr %2, align 4, !dbg !3401
  %75 = load i32, ptr %2, align 4, !dbg !3402
  %76 = icmp ne i32 %75, 0, !dbg !3403
  %77 = zext i1 %76 to i64, !dbg !3403
  %78 = select i1 %76, i32 1, i32 0, !dbg !3403
  br i1 %76, label %86, label %79, !dbg !3404

79:                                               ; preds = %73
  %80 = getelementptr inbounds %struct.z_spinlock_key, ptr %21, i32 0, i32 0, !dbg !3405
  %81 = load [1 x i32], ptr %80, align 4, !dbg !3405
  store [1 x i32] %81, ptr %10, align 4
  store ptr @sched_spinlock, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1164, metadata !DIExpression()), !dbg !3407
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1171, metadata !DIExpression()), !dbg !3409
  %82 = load ptr, ptr %11, align 4, !dbg !3410
  store ptr %82, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1174, metadata !DIExpression()), !dbg !3411
  %83 = load ptr, ptr %9, align 4, !dbg !3413
  %84 = load i32, ptr %10, align 4, !dbg !3414
  %85 = call i32 @z_swap_irqlock(i32 noundef %84), !dbg !3415
  br label %86, !dbg !3416

86:                                               ; preds = %79, %73, %68
  %87 = getelementptr inbounds %struct.z_spinlock_key, ptr %21, i32 0, i32 0, !dbg !3417
  %88 = load [1 x i32], ptr %87, align 4, !dbg !3417
  store [1 x i32] %88, ptr %16, align 4
  store ptr @sched_spinlock, ptr %17, align 4
  call void @llvm.dbg.declare(metadata ptr %17, metadata !620, metadata !DIExpression()), !dbg !3418
  call void @llvm.dbg.declare(metadata ptr %16, metadata !626, metadata !DIExpression()), !dbg !3420
  %89 = load ptr, ptr %17, align 4, !dbg !3421
  %90 = load i32, ptr %16, align 4, !dbg !3422
  store i32 %90, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !630, metadata !DIExpression()), !dbg !3423
  %91 = load i32, ptr %6, align 4, !dbg !3425
  %92 = icmp ne i32 %91, 0, !dbg !3426
  br i1 %92, label %93, label %94, !dbg !3427

93:                                               ; preds = %86
  br label %arch_irq_unlock.exit2, !dbg !3428

94:                                               ; preds = %86
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #5, !dbg !3429, !srcloc !643
  br label %arch_irq_unlock.exit2, !dbg !3430

arch_irq_unlock.exit2:                            ; preds = %93, %94
  br label %95, !dbg !3431

95:                                               ; preds = %arch_irq_unlock.exit2, %arch_irq_unlock.exit1, %50
  ret void, !dbg !3431
}

; Function Attrs: noinline nounwind optnone
define internal void @end_thread(ptr noundef %0) #0 !dbg !3432 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  store ptr %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3433, metadata !DIExpression()), !dbg !3434
  %6 = load ptr, ptr %5, align 4, !dbg !3435
  %7 = getelementptr inbounds %struct.k_thread, ptr %6, i32 0, i32 0, !dbg !3437
  %8 = getelementptr inbounds %struct._thread_base, ptr %7, i32 0, i32 3, !dbg !3438
  %9 = load i8, ptr %8, align 1, !dbg !3438
  %10 = zext i8 %9 to i32, !dbg !3435
  %11 = and i32 %10, 8, !dbg !3439
  %12 = icmp eq i32 %11, 0, !dbg !3440
  br i1 %12, label %13, label %62, !dbg !3441

13:                                               ; preds = %1
  %14 = load ptr, ptr %5, align 4, !dbg !3442
  %15 = getelementptr inbounds %struct.k_thread, ptr %14, i32 0, i32 0, !dbg !3444
  %16 = getelementptr inbounds %struct._thread_base, ptr %15, i32 0, i32 3, !dbg !3445
  %17 = load i8, ptr %16, align 1, !dbg !3446
  %18 = zext i8 %17 to i32, !dbg !3446
  %19 = or i32 %18, 8, !dbg !3446
  %20 = trunc i32 %19 to i8, !dbg !3446
  store i8 %20, ptr %16, align 1, !dbg !3446
  %21 = load ptr, ptr %5, align 4, !dbg !3447
  %22 = getelementptr inbounds %struct.k_thread, ptr %21, i32 0, i32 0, !dbg !3448
  %23 = getelementptr inbounds %struct._thread_base, ptr %22, i32 0, i32 3, !dbg !3449
  %24 = load i8, ptr %23, align 1, !dbg !3450
  %25 = zext i8 %24 to i32, !dbg !3450
  %26 = and i32 %25, -33, !dbg !3450
  %27 = trunc i32 %26 to i8, !dbg !3450
  store i8 %27, ptr %23, align 1, !dbg !3450
  %28 = load ptr, ptr %5, align 4, !dbg !3451
  %29 = call zeroext i1 @z_is_thread_queued(ptr noundef %28), !dbg !3453
  br i1 %29, label %30, label %45, !dbg !3454

30:                                               ; preds = %13
  %31 = load ptr, ptr %5, align 4, !dbg !3455
  store ptr %31, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !758, metadata !DIExpression()), !dbg !3457
  %32 = load ptr, ptr %4, align 4, !dbg !3459
  %33 = getelementptr inbounds %struct._thread_base, ptr %32, i32 0, i32 3, !dbg !3460
  %34 = load i8, ptr %33, align 1, !dbg !3461
  %35 = zext i8 %34 to i32, !dbg !3461
  %36 = and i32 %35, -129, !dbg !3461
  %37 = trunc i32 %36 to i8, !dbg !3461
  store i8 %37, ptr %33, align 1, !dbg !3461
  %38 = load ptr, ptr %4, align 4, !dbg !3462
  %39 = call zeroext i1 @should_queue_thread(ptr noundef %38), !dbg !3463
  br i1 %39, label %40, label %dequeue_thread.exit, !dbg !3464

40:                                               ; preds = %30
  %41 = load ptr, ptr %4, align 4, !dbg !3465
  store ptr %41, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !771, metadata !DIExpression()), !dbg !3466
  %42 = load ptr, ptr %3, align 4, !dbg !3468
  store ptr %42, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !776, metadata !DIExpression()), !dbg !3469
  %43 = load ptr, ptr %2, align 4, !dbg !3471
  %44 = load ptr, ptr %3, align 4, !dbg !3472
  call void @z_priq_dumb_remove(ptr noundef getelementptr inbounds (%struct.z_kernel, ptr @_kernel, i32 0, i32 1, i32 1), ptr noundef %44), !dbg !3473
  br label %dequeue_thread.exit, !dbg !3474

dequeue_thread.exit:                              ; preds = %30, %40
  br label %45, !dbg !3475

45:                                               ; preds = %dequeue_thread.exit, %13
  %46 = load ptr, ptr %5, align 4, !dbg !3476
  %47 = getelementptr inbounds %struct.k_thread, ptr %46, i32 0, i32 0, !dbg !3478
  %48 = getelementptr inbounds %struct._thread_base, ptr %47, i32 0, i32 1, !dbg !3479
  %49 = load ptr, ptr %48, align 8, !dbg !3479
  %50 = icmp ne ptr %49, null, !dbg !3480
  br i1 %50, label %51, label %53, !dbg !3481

51:                                               ; preds = %45
  %52 = load ptr, ptr %5, align 4, !dbg !3482
  call void @unpend_thread_no_timeout(ptr noundef %52), !dbg !3484
  br label %53, !dbg !3485

53:                                               ; preds = %51, %45
  %54 = load ptr, ptr %5, align 4, !dbg !3486
  %55 = call i32 @z_abort_thread_timeout(ptr noundef %54), !dbg !3487
  %56 = load ptr, ptr %5, align 4, !dbg !3488
  %57 = getelementptr inbounds %struct.k_thread, ptr %56, i32 0, i32 3, !dbg !3489
  call void @unpend_all(ptr noundef %57), !dbg !3490
  call void @update_cache(i32 noundef 1), !dbg !3491
  br label %58, !dbg !3492

58:                                               ; preds = %53
  br label %59, !dbg !3493

59:                                               ; preds = %58
  br label %60, !dbg !3495

60:                                               ; preds = %59
  br label %61, !dbg !3496

61:                                               ; preds = %60
  br label %62, !dbg !3498

62:                                               ; preds = %61, %1
  ret void, !dbg !3499
}

; Function Attrs: noinline nounwind optnone
define hidden i32 @z_impl_k_thread_join(ptr noundef %0, [1 x i64] %1) #0 !dbg !3500 {
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
  %20 = getelementptr inbounds %struct.k_timeout_t, ptr %15, i32 0, i32 0
  store [1 x i64] %1, ptr %20, align 8
  store ptr %0, ptr %16, align 4
  call void @llvm.dbg.declare(metadata ptr %16, metadata !3503, metadata !DIExpression()), !dbg !3504
  call void @llvm.dbg.declare(metadata ptr %15, metadata !3505, metadata !DIExpression()), !dbg !3506
  call void @llvm.dbg.declare(metadata ptr %17, metadata !3507, metadata !DIExpression()), !dbg !3508
  store ptr @sched_spinlock, ptr %13, align 4
  call void @llvm.dbg.declare(metadata ptr %13, metadata !568, metadata !DIExpression()), !dbg !3509
  %21 = load ptr, ptr %13, align 4, !dbg !3511
  call void @llvm.dbg.declare(metadata ptr %12, metadata !576, metadata !DIExpression()), !dbg !3512
  call void @llvm.dbg.declare(metadata ptr %5, metadata !578, metadata !DIExpression()), !dbg !3513
  %22 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #5, !dbg !3515, !srcloc !586
  store i32 %22, ptr %5, align 4, !dbg !3515
  %23 = load i32, ptr %5, align 4, !dbg !3516
  store i32 %23, ptr %12, align 4, !dbg !3517
  %24 = load ptr, ptr %13, align 4, !dbg !3518
  store ptr %24, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !590, metadata !DIExpression()), !dbg !3519
  %25 = load ptr, ptr %4, align 4, !dbg !3521
  %26 = load ptr, ptr %13, align 4, !dbg !3522
  store ptr %26, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !598, metadata !DIExpression()), !dbg !3523
  %27 = load ptr, ptr %3, align 4, !dbg !3525
  %28 = load i32, ptr %12, align 4, !dbg !3526
  %29 = getelementptr inbounds %struct.z_spinlock_key, ptr %17, i32 0, i32 0, !dbg !3527
  store i32 %28, ptr %29, align 4, !dbg !3527
  call void @llvm.dbg.declare(metadata ptr %18, metadata !3528, metadata !DIExpression()), !dbg !3529
  store i32 0, ptr %18, align 4, !dbg !3529
  br label %30, !dbg !3530

30:                                               ; preds = %2
  br label %31, !dbg !3531

31:                                               ; preds = %30
  %32 = load ptr, ptr %16, align 4, !dbg !3533
  %33 = getelementptr inbounds %struct.k_thread, ptr %32, i32 0, i32 0, !dbg !3535
  %34 = getelementptr inbounds %struct._thread_base, ptr %33, i32 0, i32 3, !dbg !3536
  %35 = load i8, ptr %34, align 1, !dbg !3536
  %36 = zext i8 %35 to i32, !dbg !3533
  %37 = and i32 %36, 8, !dbg !3537
  %38 = icmp ne i32 %37, 0, !dbg !3538
  br i1 %38, label %39, label %41, !dbg !3539

39:                                               ; preds = %31
  %40 = load ptr, ptr %16, align 4, !dbg !3540
  call void @z_sched_switch_spin(ptr noundef %40), !dbg !3542
  store i32 0, ptr %18, align 4, !dbg !3543
  br label %80, !dbg !3544

41:                                               ; preds = %31
  %42 = getelementptr inbounds %struct.k_timeout_t, ptr %15, i32 0, i32 0, !dbg !3545
  %43 = load i64, ptr %42, align 8, !dbg !3545
  %44 = getelementptr inbounds %struct.k_timeout_t, ptr %19, i32 0, i32 0, !dbg !3547
  store i64 0, ptr %44, align 8, !dbg !3547
  %45 = icmp eq i64 %43, 0, !dbg !3548
  br i1 %45, label %46, label %47, !dbg !3549

46:                                               ; preds = %41
  store i32 -16, ptr %18, align 4, !dbg !3550
  br label %79, !dbg !3552

47:                                               ; preds = %41
  %48 = load ptr, ptr %16, align 4, !dbg !3553
  %49 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !3555
  %50 = icmp eq ptr %48, %49, !dbg !3556
  br i1 %50, label %59, label %51, !dbg !3557

51:                                               ; preds = %47
  %52 = load ptr, ptr %16, align 4, !dbg !3558
  %53 = getelementptr inbounds %struct.k_thread, ptr %52, i32 0, i32 0, !dbg !3559
  %54 = getelementptr inbounds %struct._thread_base, ptr %53, i32 0, i32 1, !dbg !3560
  %55 = load ptr, ptr %54, align 8, !dbg !3560
  %56 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !3561
  %57 = getelementptr inbounds %struct.k_thread, ptr %56, i32 0, i32 3, !dbg !3562
  %58 = icmp eq ptr %55, %57, !dbg !3563
  br i1 %58, label %59, label %60, !dbg !3564

59:                                               ; preds = %51, %47
  store i32 -45, ptr %18, align 4, !dbg !3565
  br label %78, !dbg !3567

60:                                               ; preds = %51
  %61 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !3568
  %62 = load ptr, ptr %16, align 4, !dbg !3570
  %63 = getelementptr inbounds %struct.k_thread, ptr %62, i32 0, i32 3, !dbg !3571
  call void @add_to_waitq_locked(ptr noundef %61, ptr noundef %63), !dbg !3572
  %64 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !3573
  %65 = getelementptr inbounds %struct.k_timeout_t, ptr %15, i32 0, i32 0, !dbg !3574
  %66 = load [1 x i64], ptr %65, align 8, !dbg !3574
  call void @add_thread_timeout(ptr noundef %64, [1 x i64] %66), !dbg !3574
  br label %67, !dbg !3575

67:                                               ; preds = %60
  br label %68, !dbg !3576

68:                                               ; preds = %67
  %69 = getelementptr inbounds %struct.z_spinlock_key, ptr %17, i32 0, i32 0, !dbg !3578
  %70 = load [1 x i32], ptr %69, align 4, !dbg !3578
  store [1 x i32] %70, ptr %8, align 4
  store ptr @sched_spinlock, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1164, metadata !DIExpression()), !dbg !3579
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1171, metadata !DIExpression()), !dbg !3581
  %71 = load ptr, ptr %9, align 4, !dbg !3582
  store ptr %71, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1174, metadata !DIExpression()), !dbg !3583
  %72 = load ptr, ptr %7, align 4, !dbg !3585
  %73 = load i32, ptr %8, align 4, !dbg !3586
  %74 = call i32 @z_swap_irqlock(i32 noundef %73), !dbg !3587
  store i32 %74, ptr %18, align 4, !dbg !3588
  br label %75, !dbg !3589

75:                                               ; preds = %68
  br label %76, !dbg !3590

76:                                               ; preds = %75
  %77 = load i32, ptr %18, align 4, !dbg !3592
  store i32 %77, ptr %14, align 4, !dbg !3593
  br label %92, !dbg !3593

78:                                               ; preds = %59
  br label %79

79:                                               ; preds = %78, %46
  br label %80

80:                                               ; preds = %79, %39
  br label %81, !dbg !3594

81:                                               ; preds = %80
  br label %82, !dbg !3595

82:                                               ; preds = %81
  %83 = getelementptr inbounds %struct.z_spinlock_key, ptr %17, i32 0, i32 0, !dbg !3597
  %84 = load [1 x i32], ptr %83, align 4, !dbg !3597
  store [1 x i32] %84, ptr %10, align 4
  store ptr @sched_spinlock, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !620, metadata !DIExpression()), !dbg !3598
  call void @llvm.dbg.declare(metadata ptr %10, metadata !626, metadata !DIExpression()), !dbg !3600
  %85 = load ptr, ptr %11, align 4, !dbg !3601
  %86 = load i32, ptr %10, align 4, !dbg !3602
  store i32 %86, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !630, metadata !DIExpression()), !dbg !3603
  %87 = load i32, ptr %6, align 4, !dbg !3605
  %88 = icmp ne i32 %87, 0, !dbg !3606
  br i1 %88, label %89, label %90, !dbg !3607

89:                                               ; preds = %82
  br label %arch_irq_unlock.exit, !dbg !3608

90:                                               ; preds = %82
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #5, !dbg !3609, !srcloc !643
  br label %arch_irq_unlock.exit, !dbg !3610

arch_irq_unlock.exit:                             ; preds = %89, %90
  %91 = load i32, ptr %18, align 4, !dbg !3611
  store i32 %91, ptr %14, align 4, !dbg !3612
  br label %92, !dbg !3612

92:                                               ; preds = %arch_irq_unlock.exit, %76
  %93 = load i32, ptr %14, align 4, !dbg !3613
  ret i32 %93, !dbg !3613
}

; Function Attrs: noinline nounwind optnone
define internal void @z_sched_switch_spin(ptr noundef %0) #0 !dbg !3614 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3615, metadata !DIExpression()), !dbg !3616
  %3 = load ptr, ptr %2, align 4, !dbg !3617
  ret void, !dbg !3618
}

; Function Attrs: noinline nounwind optnone
define internal void @add_to_waitq_locked(ptr noundef %0, ptr noundef %1) #0 !dbg !3619 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  store ptr %0, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !3622, metadata !DIExpression()), !dbg !3623
  store ptr %1, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !3624, metadata !DIExpression()), !dbg !3625
  %10 = load ptr, ptr %8, align 4, !dbg !3626
  call void @unready_thread(ptr noundef %10), !dbg !3627
  %11 = load ptr, ptr %8, align 4, !dbg !3628
  call void @z_mark_thread_as_pending(ptr noundef %11), !dbg !3629
  br label %12, !dbg !3630

12:                                               ; preds = %2
  br label %13, !dbg !3631

13:                                               ; preds = %12
  %14 = load ptr, ptr %9, align 4, !dbg !3633
  %15 = icmp ne ptr %14, null, !dbg !3635
  br i1 %15, label %16, label %67, !dbg !3636

16:                                               ; preds = %13
  %17 = load ptr, ptr %9, align 4, !dbg !3637
  %18 = load ptr, ptr %8, align 4, !dbg !3639
  %19 = getelementptr inbounds %struct.k_thread, ptr %18, i32 0, i32 0, !dbg !3640
  %20 = getelementptr inbounds %struct._thread_base, ptr %19, i32 0, i32 1, !dbg !3641
  store ptr %17, ptr %20, align 8, !dbg !3642
  %21 = load ptr, ptr %9, align 4, !dbg !3643
  %22 = getelementptr inbounds %struct._wait_q_t, ptr %21, i32 0, i32 0, !dbg !3644
  %23 = load ptr, ptr %8, align 4, !dbg !3645
  store ptr %22, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !810, metadata !DIExpression()), !dbg !3646
  store ptr %23, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !817, metadata !DIExpression()), !dbg !3648
  call void @llvm.dbg.declare(metadata ptr %5, metadata !819, metadata !DIExpression()), !dbg !3649
  %24 = load ptr, ptr %3, align 4, !dbg !3650
  %25 = call ptr @sys_dlist_peek_head(ptr noundef %24), !dbg !3651
  %26 = icmp ne ptr %25, null, !dbg !3652
  br i1 %26, label %27, label %31, !dbg !3653

27:                                               ; preds = %16
  %28 = load ptr, ptr %3, align 4, !dbg !3654
  %29 = call ptr @sys_dlist_peek_head(ptr noundef %28), !dbg !3655
  store ptr %29, ptr %6, align 4, !dbg !3656
  %30 = load ptr, ptr %6, align 4, !dbg !3657
  br label %32, !dbg !3653

31:                                               ; preds = %16
  br label %32, !dbg !3653

32:                                               ; preds = %31, %27
  %33 = phi ptr [ %30, %27 ], [ null, %31 ], !dbg !3653
  store ptr %33, ptr %5, align 4, !dbg !3658
  br label %34, !dbg !3659

34:                                               ; preds = %62, %32
  %35 = load ptr, ptr %5, align 4, !dbg !3660
  %36 = icmp ne ptr %35, null, !dbg !3661
  br i1 %36, label %37, label %64, !dbg !3662

37:                                               ; preds = %34
  %38 = load ptr, ptr %4, align 4, !dbg !3663
  %39 = load ptr, ptr %5, align 4, !dbg !3664
  %40 = call i32 @z_sched_prio_cmp(ptr noundef %38, ptr noundef %39), !dbg !3665
  %41 = icmp sgt i32 %40, 0, !dbg !3666
  br i1 %41, label %42, label %45, !dbg !3667

42:                                               ; preds = %37
  %43 = load ptr, ptr %5, align 4, !dbg !3668
  %44 = load ptr, ptr %4, align 4, !dbg !3669
  call void @sys_dlist_insert(ptr noundef %43, ptr noundef %44), !dbg !3670
  br label %z_priq_dumb_add.exit, !dbg !3671

45:                                               ; preds = %37
  %46 = load ptr, ptr %5, align 4, !dbg !3672
  %47 = icmp ne ptr %46, null, !dbg !3673
  br i1 %47, label %48, label %61, !dbg !3674

48:                                               ; preds = %45
  %49 = load ptr, ptr %3, align 4, !dbg !3675
  %50 = load ptr, ptr %5, align 4, !dbg !3676
  %51 = call ptr @sys_dlist_peek_next(ptr noundef %49, ptr noundef %50), !dbg !3677
  %52 = icmp ne ptr %51, null, !dbg !3678
  br i1 %52, label %53, label %58, !dbg !3679

53:                                               ; preds = %48
  %54 = load ptr, ptr %3, align 4, !dbg !3680
  %55 = load ptr, ptr %5, align 4, !dbg !3681
  %56 = call ptr @sys_dlist_peek_next(ptr noundef %54, ptr noundef %55), !dbg !3682
  store ptr %56, ptr %7, align 4, !dbg !3683
  %57 = load ptr, ptr %7, align 4, !dbg !3684
  br label %59, !dbg !3679

58:                                               ; preds = %48
  br label %59, !dbg !3679

59:                                               ; preds = %58, %53
  %60 = phi ptr [ %57, %53 ], [ null, %58 ], !dbg !3679
  br label %62, !dbg !3674

61:                                               ; preds = %45
  br label %62, !dbg !3674

62:                                               ; preds = %61, %59
  %63 = phi ptr [ %60, %59 ], [ null, %61 ], !dbg !3674
  store ptr %63, ptr %5, align 4, !dbg !3685
  br label %34, !dbg !3686, !llvm.loop !3687

64:                                               ; preds = %34
  %65 = load ptr, ptr %3, align 4, !dbg !3689
  %66 = load ptr, ptr %4, align 4, !dbg !3690
  call void @sys_dlist_append(ptr noundef %65, ptr noundef %66), !dbg !3691
  br label %z_priq_dumb_add.exit, !dbg !3692

z_priq_dumb_add.exit:                             ; preds = %42, %64
  br label %67, !dbg !3693

67:                                               ; preds = %z_priq_dumb_add.exit, %13
  ret void, !dbg !3694
}

; Function Attrs: noinline nounwind optnone
define internal void @add_thread_timeout(ptr noundef %0, [1 x i64] %1) #0 !dbg !3695 {
  %3 = alloca %struct.k_timeout_t, align 8
  %4 = alloca ptr, align 4
  %5 = alloca %struct.k_timeout_t, align 8
  %6 = getelementptr inbounds %struct.k_timeout_t, ptr %3, i32 0, i32 0
  store [1 x i64] %1, ptr %6, align 8
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3698, metadata !DIExpression()), !dbg !3699
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3700, metadata !DIExpression()), !dbg !3701
  %7 = getelementptr inbounds %struct.k_timeout_t, ptr %3, i32 0, i32 0, !dbg !3702
  %8 = load i64, ptr %7, align 8, !dbg !3702
  %9 = getelementptr inbounds %struct.k_timeout_t, ptr %5, i32 0, i32 0, !dbg !3704
  store i64 -1, ptr %9, align 8, !dbg !3704
  %10 = icmp eq i64 %8, -1, !dbg !3705
  br i1 %10, label %15, label %11, !dbg !3706

11:                                               ; preds = %2
  %12 = load ptr, ptr %4, align 4, !dbg !3707
  %13 = getelementptr inbounds %struct.k_timeout_t, ptr %3, i32 0, i32 0, !dbg !3709
  %14 = load [1 x i64], ptr %13, align 8, !dbg !3709
  call void @z_add_thread_timeout(ptr noundef %12, [1 x i64] %14), !dbg !3709
  br label %15, !dbg !3710

15:                                               ; preds = %11, %2
  ret void, !dbg !3711
}

; Function Attrs: noinline nounwind optnone
define hidden zeroext i1 @z_sched_wake(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 !dbg !3712 {
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
  call void @llvm.dbg.declare(metadata ptr %17, metadata !3715, metadata !DIExpression()), !dbg !3716
  store i32 %1, ptr %18, align 4
  call void @llvm.dbg.declare(metadata ptr %18, metadata !3717, metadata !DIExpression()), !dbg !3718
  store ptr %2, ptr %19, align 4
  call void @llvm.dbg.declare(metadata ptr %19, metadata !3719, metadata !DIExpression()), !dbg !3720
  call void @llvm.dbg.declare(metadata ptr %20, metadata !3721, metadata !DIExpression()), !dbg !3722
  call void @llvm.dbg.declare(metadata ptr %21, metadata !3723, metadata !DIExpression()), !dbg !3724
  store i8 0, ptr %21, align 1, !dbg !3724
  call void @llvm.dbg.declare(metadata ptr %22, metadata !3725, metadata !DIExpression()), !dbg !3727
  call void @llvm.memset.p0.i32(ptr align 4 %22, i8 0, i32 4, i1 false), !dbg !3727
  call void @llvm.dbg.declare(metadata ptr %23, metadata !3728, metadata !DIExpression()), !dbg !3729
  store ptr @sched_spinlock, ptr %16, align 4
  call void @llvm.dbg.declare(metadata ptr %16, metadata !568, metadata !DIExpression()), !dbg !3730
  %24 = load ptr, ptr %16, align 4, !dbg !3732
  call void @llvm.dbg.declare(metadata ptr %15, metadata !576, metadata !DIExpression()), !dbg !3733
  call void @llvm.dbg.declare(metadata ptr %8, metadata !578, metadata !DIExpression()), !dbg !3734
  %25 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #5, !dbg !3736, !srcloc !586
  store i32 %25, ptr %8, align 4, !dbg !3736
  %26 = load i32, ptr %8, align 4, !dbg !3737
  store i32 %26, ptr %15, align 4, !dbg !3738
  %27 = load ptr, ptr %16, align 4, !dbg !3739
  store ptr %27, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !590, metadata !DIExpression()), !dbg !3740
  %28 = load ptr, ptr %7, align 4, !dbg !3742
  %29 = load ptr, ptr %16, align 4, !dbg !3743
  store ptr %29, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !598, metadata !DIExpression()), !dbg !3744
  %30 = load ptr, ptr %6, align 4, !dbg !3746
  %31 = load i32, ptr %15, align 4, !dbg !3747
  %32 = getelementptr inbounds %struct.z_spinlock_key, ptr %23, i32 0, i32 0, !dbg !3748
  store i32 %31, ptr %32, align 4, !dbg !3748
  br label %33, !dbg !3749

33:                                               ; preds = %arch_irq_unlock.exit, %3
  %34 = getelementptr inbounds %struct.z_spinlock_key, ptr %22, i32 0, i32 0, !dbg !3750
  %35 = load i32, ptr %34, align 4, !dbg !3750
  %36 = icmp ne i32 %35, 0, !dbg !3752
  %37 = xor i1 %36, true, !dbg !3752
  br i1 %37, label %38, label %72, !dbg !3753

38:                                               ; preds = %33
  %39 = load ptr, ptr %17, align 4, !dbg !3754
  %40 = getelementptr inbounds %struct._wait_q_t, ptr %39, i32 0, i32 0, !dbg !3756
  %41 = call ptr @z_priq_dumb_best(ptr noundef %40), !dbg !3757
  store ptr %41, ptr %20, align 4, !dbg !3758
  %42 = load ptr, ptr %20, align 4, !dbg !3759
  %43 = icmp ne ptr %42, null, !dbg !3761
  br i1 %43, label %44, label %61, !dbg !3762

44:                                               ; preds = %38
  %45 = load ptr, ptr %20, align 4, !dbg !3763
  %46 = load i32, ptr %18, align 4, !dbg !3765
  %47 = load ptr, ptr %19, align 4, !dbg !3766
  store ptr %45, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !3767, metadata !DIExpression()), !dbg !3772
  store i32 %46, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !3774, metadata !DIExpression()), !dbg !3775
  store ptr %47, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !3776, metadata !DIExpression()), !dbg !3777
  %48 = load ptr, ptr %9, align 4, !dbg !3778
  %49 = load i32, ptr %10, align 4, !dbg !3779
  store ptr %48, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3780, metadata !DIExpression()), !dbg !3785
  store i32 %49, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3787, metadata !DIExpression()), !dbg !3788
  %50 = load i32, ptr %5, align 4, !dbg !3789
  %51 = load ptr, ptr %4, align 4, !dbg !3790
  %52 = getelementptr inbounds %struct.k_thread, ptr %51, i32 0, i32 6, !dbg !3791
  %53 = getelementptr inbounds %struct._thread_arch, ptr %52, i32 0, i32 1, !dbg !3792
  store i32 %50, ptr %53, align 4, !dbg !3793
  %54 = load ptr, ptr %11, align 4, !dbg !3794
  %55 = load ptr, ptr %9, align 4, !dbg !3795
  %56 = getelementptr inbounds %struct._thread_base, ptr %55, i32 0, i32 6, !dbg !3796
  store ptr %54, ptr %56, align 4, !dbg !3797
  %57 = load ptr, ptr %20, align 4, !dbg !3798
  call void @unpend_thread_no_timeout(ptr noundef %57), !dbg !3799
  %58 = load ptr, ptr %20, align 4, !dbg !3800
  %59 = call i32 @z_abort_thread_timeout(ptr noundef %58), !dbg !3801
  %60 = load ptr, ptr %20, align 4, !dbg !3802
  call void @ready_thread(ptr noundef %60), !dbg !3803
  store i8 1, ptr %21, align 1, !dbg !3804
  br label %61, !dbg !3805

61:                                               ; preds = %44, %38
  br label %62, !dbg !3806

62:                                               ; preds = %61
  %63 = getelementptr inbounds %struct.z_spinlock_key, ptr %23, i32 0, i32 0, !dbg !3807
  %64 = load [1 x i32], ptr %63, align 4, !dbg !3807
  store [1 x i32] %64, ptr %13, align 4
  store ptr @sched_spinlock, ptr %14, align 4
  call void @llvm.dbg.declare(metadata ptr %14, metadata !620, metadata !DIExpression()), !dbg !3808
  call void @llvm.dbg.declare(metadata ptr %13, metadata !626, metadata !DIExpression()), !dbg !3810
  %65 = load ptr, ptr %14, align 4, !dbg !3811
  %66 = load i32, ptr %13, align 4, !dbg !3812
  store i32 %66, ptr %12, align 4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !630, metadata !DIExpression()), !dbg !3813
  %67 = load i32, ptr %12, align 4, !dbg !3815
  %68 = icmp ne i32 %67, 0, !dbg !3816
  br i1 %68, label %69, label %70, !dbg !3817

69:                                               ; preds = %62
  br label %arch_irq_unlock.exit, !dbg !3818

70:                                               ; preds = %62
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #5, !dbg !3819, !srcloc !643
  br label %arch_irq_unlock.exit, !dbg !3820

arch_irq_unlock.exit:                             ; preds = %69, %70
  %71 = getelementptr inbounds %struct.z_spinlock_key, ptr %22, i32 0, i32 0, !dbg !3821
  store i32 1, ptr %71, align 4, !dbg !3822
  br label %33, !dbg !3823, !llvm.loop !3824

72:                                               ; preds = %33
  %73 = load i8, ptr %21, align 1, !dbg !3826
  %74 = trunc i8 %73 to i1, !dbg !3826
  ret i1 %74, !dbg !3827
}

; Function Attrs: noinline nounwind optnone
define hidden i32 @z_sched_wait(ptr noundef %0, [1 x i32] %1, ptr noundef %2, [1 x i64] %3, ptr noundef %4) #0 !dbg !3828 {
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
  call void @llvm.dbg.declare(metadata ptr %8, metadata !3832, metadata !DIExpression()), !dbg !3833
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3834, metadata !DIExpression()), !dbg !3835
  store ptr %2, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !3836, metadata !DIExpression()), !dbg !3837
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3838, metadata !DIExpression()), !dbg !3839
  store ptr %4, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !3840, metadata !DIExpression()), !dbg !3841
  call void @llvm.dbg.declare(metadata ptr %11, metadata !3842, metadata !DIExpression()), !dbg !3843
  %14 = load ptr, ptr %8, align 4, !dbg !3844
  %15 = load ptr, ptr %9, align 4, !dbg !3845
  %16 = getelementptr inbounds %struct.z_spinlock_key, ptr %6, i32 0, i32 0, !dbg !3846
  %17 = load [1 x i32], ptr %16, align 4, !dbg !3846
  %18 = getelementptr inbounds %struct.k_timeout_t, ptr %7, i32 0, i32 0, !dbg !3846
  %19 = load [1 x i64], ptr %18, align 8, !dbg !3846
  %20 = call i32 @z_pend_curr(ptr noundef %14, [1 x i32] %17, ptr noundef %15, [1 x i64] %19), !dbg !3846
  store i32 %20, ptr %11, align 4, !dbg !3843
  %21 = load ptr, ptr %10, align 4, !dbg !3847
  %22 = icmp ne ptr %21, null, !dbg !3849
  br i1 %22, label %23, label %29, !dbg !3850

23:                                               ; preds = %5
  %24 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !3851
  %25 = getelementptr inbounds %struct.k_thread, ptr %24, i32 0, i32 0, !dbg !3853
  %26 = getelementptr inbounds %struct._thread_base, ptr %25, i32 0, i32 6, !dbg !3854
  %27 = load ptr, ptr %26, align 4, !dbg !3854
  %28 = load ptr, ptr %10, align 4, !dbg !3855
  store ptr %27, ptr %28, align 4, !dbg !3856
  br label %29, !dbg !3857

29:                                               ; preds = %23, %5
  %30 = load i32, ptr %11, align 4, !dbg !3858
  ret i32 %30, !dbg !3859
}

; Function Attrs: noinline nounwind optnone
define hidden i32 @z_sched_waitq_walk(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !3860 {
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
  call void @llvm.dbg.declare(metadata ptr %12, metadata !3866, metadata !DIExpression()), !dbg !3867
  store ptr %1, ptr %13, align 4
  call void @llvm.dbg.declare(metadata ptr %13, metadata !3868, metadata !DIExpression()), !dbg !3869
  store ptr %2, ptr %14, align 4
  call void @llvm.dbg.declare(metadata ptr %14, metadata !3870, metadata !DIExpression()), !dbg !3871
  call void @llvm.dbg.declare(metadata ptr %15, metadata !3872, metadata !DIExpression()), !dbg !3873
  call void @llvm.dbg.declare(metadata ptr %16, metadata !3874, metadata !DIExpression()), !dbg !3875
  store i32 0, ptr %16, align 4, !dbg !3875
  call void @llvm.dbg.declare(metadata ptr %17, metadata !3876, metadata !DIExpression()), !dbg !3878
  call void @llvm.memset.p0.i32(ptr align 4 %17, i8 0, i32 4, i1 false), !dbg !3878
  call void @llvm.dbg.declare(metadata ptr %18, metadata !3879, metadata !DIExpression()), !dbg !3880
  store ptr @sched_spinlock, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !568, metadata !DIExpression()), !dbg !3881
  %21 = load ptr, ptr %11, align 4, !dbg !3883
  call void @llvm.dbg.declare(metadata ptr %10, metadata !576, metadata !DIExpression()), !dbg !3884
  call void @llvm.dbg.declare(metadata ptr %6, metadata !578, metadata !DIExpression()), !dbg !3885
  %22 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #5, !dbg !3887, !srcloc !586
  store i32 %22, ptr %6, align 4, !dbg !3887
  %23 = load i32, ptr %6, align 4, !dbg !3888
  store i32 %23, ptr %10, align 4, !dbg !3889
  %24 = load ptr, ptr %11, align 4, !dbg !3890
  store ptr %24, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !590, metadata !DIExpression()), !dbg !3891
  %25 = load ptr, ptr %5, align 4, !dbg !3893
  %26 = load ptr, ptr %11, align 4, !dbg !3894
  store ptr %26, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !598, metadata !DIExpression()), !dbg !3895
  %27 = load ptr, ptr %4, align 4, !dbg !3897
  %28 = load i32, ptr %10, align 4, !dbg !3898
  %29 = getelementptr inbounds %struct.z_spinlock_key, ptr %18, i32 0, i32 0, !dbg !3899
  store i32 %28, ptr %29, align 4, !dbg !3899
  br label %30, !dbg !3900

30:                                               ; preds = %arch_irq_unlock.exit, %3
  %31 = getelementptr inbounds %struct.z_spinlock_key, ptr %17, i32 0, i32 0, !dbg !3901
  %32 = load i32, ptr %31, align 4, !dbg !3901
  %33 = icmp ne i32 %32, 0, !dbg !3903
  %34 = xor i1 %33, true, !dbg !3903
  br i1 %34, label %35, label %98, !dbg !3904

35:                                               ; preds = %30
  %36 = load ptr, ptr %12, align 4, !dbg !3905
  %37 = getelementptr inbounds %struct._wait_q_t, ptr %36, i32 0, i32 0, !dbg !3908
  %38 = call ptr @sys_dlist_peek_head(ptr noundef %37), !dbg !3909
  %39 = icmp ne ptr %38, null, !dbg !3910
  br i1 %39, label %40, label %46, !dbg !3911

40:                                               ; preds = %35
  %41 = load ptr, ptr %12, align 4, !dbg !3912
  %42 = getelementptr inbounds %struct._wait_q_t, ptr %41, i32 0, i32 0, !dbg !3914
  %43 = call ptr @sys_dlist_peek_head(ptr noundef %42), !dbg !3915
  %44 = getelementptr inbounds i8, ptr %43, i32 0, !dbg !3916
  store ptr %44, ptr %19, align 4, !dbg !3917
  %45 = load ptr, ptr %19, align 4, !dbg !3918
  br label %47, !dbg !3911

46:                                               ; preds = %35
  br label %47, !dbg !3911

47:                                               ; preds = %46, %40
  %48 = phi ptr [ %45, %40 ], [ null, %46 ], !dbg !3911
  store ptr %48, ptr %15, align 4, !dbg !3919
  br label %49, !dbg !3920

49:                                               ; preds = %85, %47
  %50 = load ptr, ptr %15, align 4, !dbg !3921
  %51 = icmp ne ptr %50, null, !dbg !3923
  br i1 %51, label %52, label %87, !dbg !3924

52:                                               ; preds = %49
  %53 = load ptr, ptr %13, align 4, !dbg !3925
  %54 = load ptr, ptr %15, align 4, !dbg !3927
  %55 = load ptr, ptr %14, align 4, !dbg !3928
  %56 = call i32 %53(ptr noundef %54, ptr noundef %55), !dbg !3925
  store i32 %56, ptr %16, align 4, !dbg !3929
  %57 = load i32, ptr %16, align 4, !dbg !3930
  %58 = icmp ne i32 %57, 0, !dbg !3932
  br i1 %58, label %59, label %60, !dbg !3933

59:                                               ; preds = %52
  br label %87, !dbg !3934

60:                                               ; preds = %52
  br label %61, !dbg !3936

61:                                               ; preds = %60
  %62 = load ptr, ptr %15, align 4, !dbg !3937
  %63 = icmp ne ptr %62, null, !dbg !3938
  br i1 %63, label %64, label %84, !dbg !3939

64:                                               ; preds = %61
  %65 = load ptr, ptr %12, align 4, !dbg !3940
  %66 = getelementptr inbounds %struct._wait_q_t, ptr %65, i32 0, i32 0, !dbg !3941
  %67 = load ptr, ptr %15, align 4, !dbg !3942
  %68 = getelementptr inbounds %struct.k_thread, ptr %67, i32 0, i32 0, !dbg !3943
  %69 = getelementptr inbounds %struct._thread_base, ptr %68, i32 0, i32 0, !dbg !3944
  %70 = call ptr @sys_dlist_peek_next(ptr noundef %66, ptr noundef %69), !dbg !3945
  %71 = icmp ne ptr %70, null, !dbg !3946
  br i1 %71, label %72, label %81, !dbg !3947

72:                                               ; preds = %64
  %73 = load ptr, ptr %12, align 4, !dbg !3948
  %74 = getelementptr inbounds %struct._wait_q_t, ptr %73, i32 0, i32 0, !dbg !3950
  %75 = load ptr, ptr %15, align 4, !dbg !3951
  %76 = getelementptr inbounds %struct.k_thread, ptr %75, i32 0, i32 0, !dbg !3952
  %77 = getelementptr inbounds %struct._thread_base, ptr %76, i32 0, i32 0, !dbg !3953
  %78 = call ptr @sys_dlist_peek_next(ptr noundef %74, ptr noundef %77), !dbg !3954
  %79 = getelementptr inbounds i8, ptr %78, i32 0, !dbg !3955
  store ptr %79, ptr %20, align 4, !dbg !3956
  %80 = load ptr, ptr %20, align 4, !dbg !3957
  br label %82, !dbg !3947

81:                                               ; preds = %64
  br label %82, !dbg !3947

82:                                               ; preds = %81, %72
  %83 = phi ptr [ %80, %72 ], [ null, %81 ], !dbg !3947
  br label %85, !dbg !3939

84:                                               ; preds = %61
  br label %85, !dbg !3939

85:                                               ; preds = %84, %82
  %86 = phi ptr [ %83, %82 ], [ null, %84 ], !dbg !3939
  store ptr %86, ptr %15, align 4, !dbg !3958
  br label %49, !dbg !3959, !llvm.loop !3960

87:                                               ; preds = %59, %49
  br label %88, !dbg !3962

88:                                               ; preds = %87
  %89 = getelementptr inbounds %struct.z_spinlock_key, ptr %18, i32 0, i32 0, !dbg !3963
  %90 = load [1 x i32], ptr %89, align 4, !dbg !3963
  store [1 x i32] %90, ptr %8, align 4
  store ptr @sched_spinlock, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !620, metadata !DIExpression()), !dbg !3964
  call void @llvm.dbg.declare(metadata ptr %8, metadata !626, metadata !DIExpression()), !dbg !3966
  %91 = load ptr, ptr %9, align 4, !dbg !3967
  %92 = load i32, ptr %8, align 4, !dbg !3968
  store i32 %92, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !630, metadata !DIExpression()), !dbg !3969
  %93 = load i32, ptr %7, align 4, !dbg !3971
  %94 = icmp ne i32 %93, 0, !dbg !3972
  br i1 %94, label %95, label %96, !dbg !3973

95:                                               ; preds = %88
  br label %arch_irq_unlock.exit, !dbg !3974

96:                                               ; preds = %88
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #5, !dbg !3975, !srcloc !643
  br label %arch_irq_unlock.exit, !dbg !3976

arch_irq_unlock.exit:                             ; preds = %95, %96
  %97 = getelementptr inbounds %struct.z_spinlock_key, ptr %17, i32 0, i32 0, !dbg !3977
  store i32 1, ptr %97, align 4, !dbg !3978
  br label %30, !dbg !3979, !llvm.loop !3980

98:                                               ; preds = %30
  %99 = load i32, ptr %16, align 4, !dbg !3982
  ret i32 %99, !dbg !3983
}

; Function Attrs: noinline nounwind optnone
define internal ptr @sys_dlist_peek_next(ptr noundef %0, ptr noundef %1) #0 !dbg !3984 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3987, metadata !DIExpression()), !dbg !3988
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3989, metadata !DIExpression()), !dbg !3990
  %5 = load ptr, ptr %4, align 4, !dbg !3991
  %6 = icmp ne ptr %5, null, !dbg !3992
  br i1 %6, label %7, label %11, !dbg !3993

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 4, !dbg !3994
  %9 = load ptr, ptr %4, align 4, !dbg !3995
  %10 = call ptr @sys_dlist_peek_next_no_check(ptr noundef %8, ptr noundef %9), !dbg !3996
  br label %12, !dbg !3993

11:                                               ; preds = %2
  br label %12, !dbg !3993

12:                                               ; preds = %11, %7
  %13 = phi ptr [ %10, %7 ], [ null, %11 ], !dbg !3993
  ret ptr %13, !dbg !3997
}

declare i64 @z_timeout_expires(ptr noundef) #2

declare i64 @z_timeout_remaining(ptr noundef) #2

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @sys_sflist_is_empty(ptr noundef %0) #0 !dbg !3998 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4002, metadata !DIExpression()), !dbg !4003
  %3 = load ptr, ptr %2, align 4, !dbg !4004
  %4 = call ptr @sys_sflist_peek_head(ptr noundef %3), !dbg !4005
  %5 = icmp eq ptr %4, null, !dbg !4006
  ret i1 %5, !dbg !4007
}

; Function Attrs: noinline nounwind optnone
define internal ptr @sys_sflist_peek_head(ptr noundef %0) #0 !dbg !4008 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4011, metadata !DIExpression()), !dbg !4012
  %3 = load ptr, ptr %2, align 4, !dbg !4013
  %4 = getelementptr inbounds %struct._sflist, ptr %3, i32 0, i32 0, !dbg !4014
  %5 = load ptr, ptr %4, align 4, !dbg !4014
  ret ptr %5, !dbg !4015
}

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @z_is_prio_higher(i32 noundef %0, i32 noundef %1) #0 !dbg !4016 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4019, metadata !DIExpression()), !dbg !4020
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4021, metadata !DIExpression()), !dbg !4022
  %5 = load i32, ptr %3, align 4, !dbg !4023
  %6 = load i32, ptr %4, align 4, !dbg !4024
  %7 = call zeroext i1 @z_is_prio1_higher_than_prio2(i32 noundef %5, i32 noundef %6), !dbg !4025
  ret i1 %7, !dbg !4026
}

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @z_is_prio1_higher_than_prio2(i32 noundef %0, i32 noundef %1) #0 !dbg !4027 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4028, metadata !DIExpression()), !dbg !4029
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4030, metadata !DIExpression()), !dbg !4031
  %5 = load i32, ptr %3, align 4, !dbg !4032
  %6 = load i32, ptr %4, align 4, !dbg !4033
  %7 = icmp slt i32 %5, %6, !dbg !4034
  ret i1 %7, !dbg !4035
}

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @z_is_thread_state_set(ptr noundef %0, i32 noundef %1) #0 !dbg !4036 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4039, metadata !DIExpression()), !dbg !4040
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4041, metadata !DIExpression()), !dbg !4042
  %5 = load ptr, ptr %3, align 4, !dbg !4043
  %6 = getelementptr inbounds %struct.k_thread, ptr %5, i32 0, i32 0, !dbg !4044
  %7 = getelementptr inbounds %struct._thread_base, ptr %6, i32 0, i32 3, !dbg !4045
  %8 = load i8, ptr %7, align 1, !dbg !4045
  %9 = zext i8 %8 to i32, !dbg !4043
  %10 = load i32, ptr %4, align 4, !dbg !4046
  %11 = and i32 %9, %10, !dbg !4047
  %12 = icmp ne i32 %11, 0, !dbg !4048
  ret i1 %12, !dbg !4049
}

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @should_queue_thread(ptr noundef %0) #0 !dbg !4050 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4051, metadata !DIExpression()), !dbg !4052
  ret i1 true, !dbg !4053
}

; Function Attrs: noinline nounwind optnone
define internal void @update_metairq_preempt(ptr noundef %0) #0 !dbg !4054 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4055, metadata !DIExpression()), !dbg !4056
  %3 = load ptr, ptr %2, align 4, !dbg !4057
  ret void, !dbg !4058
}

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @z_is_thread_timeout_active(ptr noundef %0) #0 !dbg !4059 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4060, metadata !DIExpression()), !dbg !4061
  %3 = load ptr, ptr %2, align 4, !dbg !4062
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !4063
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !4064
  %6 = call zeroext i1 @z_is_inactive_timeout(ptr noundef %5), !dbg !4065
  %7 = xor i1 %6, true, !dbg !4066
  ret i1 %7, !dbg !4067
}

; Function Attrs: noinline nounwind optnone
define internal i32 @is_metairq(ptr noundef %0) #0 !dbg !4068 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4069, metadata !DIExpression()), !dbg !4070
  %3 = load ptr, ptr %2, align 4, !dbg !4071
  ret i32 0, !dbg !4072
}

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @z_is_inactive_timeout(ptr noundef %0) #0 !dbg !4073 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4078, metadata !DIExpression()), !dbg !4079
  %3 = load ptr, ptr %2, align 4, !dbg !4080
  %4 = getelementptr inbounds %struct._timeout, ptr %3, i32 0, i32 0, !dbg !4081
  %5 = call zeroext i1 @sys_dnode_is_linked(ptr noundef %4), !dbg !4082
  %6 = xor i1 %5, true, !dbg !4083
  ret i1 %6, !dbg !4084
}

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @sys_dnode_is_linked(ptr noundef %0) #0 !dbg !4085 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4090, metadata !DIExpression()), !dbg !4091
  %3 = load ptr, ptr %2, align 4, !dbg !4092
  %4 = getelementptr inbounds %struct._dnode, ptr %3, i32 0, i32 0, !dbg !4093
  %5 = load ptr, ptr %4, align 4, !dbg !4093
  %6 = icmp ne ptr %5, null, !dbg !4094
  ret i1 %6, !dbg !4095
}

; Function Attrs: noinline nounwind optnone
define internal ptr @pended_on_thread(ptr noundef %0) #0 !dbg !4096 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4099, metadata !DIExpression()), !dbg !4100
  %3 = load ptr, ptr %2, align 4, !dbg !4101
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !4102
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 1, !dbg !4103
  %6 = load ptr, ptr %5, align 8, !dbg !4103
  ret ptr %6, !dbg !4104
}

; Function Attrs: noinline nounwind optnone
define internal void @z_mark_thread_as_not_pending(ptr noundef %0) #0 !dbg !4105 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4106, metadata !DIExpression()), !dbg !4107
  %3 = load ptr, ptr %2, align 4, !dbg !4108
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !4109
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 3, !dbg !4110
  %6 = load i8, ptr %5, align 1, !dbg !4111
  %7 = zext i8 %6 to i32, !dbg !4111
  %8 = and i32 %7, -3, !dbg !4111
  %9 = trunc i32 %8 to i8, !dbg !4111
  store i8 %9, ptr %5, align 1, !dbg !4111
  ret void, !dbg !4112
}

declare i32 @arch_swap(i32 noundef) #2

; Function Attrs: noinline nounwind optnone
define internal void @sys_dlist_insert(ptr noundef %0, ptr noundef %1) #0 !dbg !4113 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4116, metadata !DIExpression()), !dbg !4117
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4118, metadata !DIExpression()), !dbg !4119
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4120, metadata !DIExpression()), !dbg !4121
  %6 = load ptr, ptr %3, align 4, !dbg !4122
  %7 = getelementptr inbounds %struct._dnode, ptr %6, i32 0, i32 1, !dbg !4123
  %8 = load ptr, ptr %7, align 4, !dbg !4123
  store ptr %8, ptr %5, align 4, !dbg !4121
  %9 = load ptr, ptr %5, align 4, !dbg !4124
  %10 = load ptr, ptr %4, align 4, !dbg !4125
  %11 = getelementptr inbounds %struct._dnode, ptr %10, i32 0, i32 1, !dbg !4126
  store ptr %9, ptr %11, align 4, !dbg !4127
  %12 = load ptr, ptr %3, align 4, !dbg !4128
  %13 = load ptr, ptr %4, align 4, !dbg !4129
  %14 = getelementptr inbounds %struct._dnode, ptr %13, i32 0, i32 0, !dbg !4130
  store ptr %12, ptr %14, align 4, !dbg !4131
  %15 = load ptr, ptr %4, align 4, !dbg !4132
  %16 = load ptr, ptr %5, align 4, !dbg !4133
  %17 = getelementptr inbounds %struct._dnode, ptr %16, i32 0, i32 0, !dbg !4134
  store ptr %15, ptr %17, align 4, !dbg !4135
  %18 = load ptr, ptr %4, align 4, !dbg !4136
  %19 = load ptr, ptr %3, align 4, !dbg !4137
  %20 = getelementptr inbounds %struct._dnode, ptr %19, i32 0, i32 1, !dbg !4138
  store ptr %18, ptr %20, align 4, !dbg !4139
  ret void, !dbg !4140
}

; Function Attrs: noinline nounwind optnone
define internal void @sys_dlist_append(ptr noundef %0, ptr noundef %1) #0 !dbg !4141 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4144, metadata !DIExpression()), !dbg !4145
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4146, metadata !DIExpression()), !dbg !4147
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4148, metadata !DIExpression()), !dbg !4149
  %6 = load ptr, ptr %3, align 4, !dbg !4150
  %7 = getelementptr inbounds %struct._dnode, ptr %6, i32 0, i32 1, !dbg !4151
  %8 = load ptr, ptr %7, align 4, !dbg !4151
  store ptr %8, ptr %5, align 4, !dbg !4149
  %9 = load ptr, ptr %3, align 4, !dbg !4152
  %10 = load ptr, ptr %4, align 4, !dbg !4153
  %11 = getelementptr inbounds %struct._dnode, ptr %10, i32 0, i32 0, !dbg !4154
  store ptr %9, ptr %11, align 4, !dbg !4155
  %12 = load ptr, ptr %5, align 4, !dbg !4156
  %13 = load ptr, ptr %4, align 4, !dbg !4157
  %14 = getelementptr inbounds %struct._dnode, ptr %13, i32 0, i32 1, !dbg !4158
  store ptr %12, ptr %14, align 4, !dbg !4159
  %15 = load ptr, ptr %4, align 4, !dbg !4160
  %16 = load ptr, ptr %5, align 4, !dbg !4161
  %17 = getelementptr inbounds %struct._dnode, ptr %16, i32 0, i32 0, !dbg !4162
  store ptr %15, ptr %17, align 4, !dbg !4163
  %18 = load ptr, ptr %4, align 4, !dbg !4164
  %19 = load ptr, ptr %3, align 4, !dbg !4165
  %20 = getelementptr inbounds %struct._dnode, ptr %19, i32 0, i32 1, !dbg !4166
  store ptr %18, ptr %20, align 4, !dbg !4167
  ret void, !dbg !4168
}

; Function Attrs: noinline nounwind optnone
define internal void @sys_dnode_init(ptr noundef %0) #0 !dbg !4169 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4170, metadata !DIExpression()), !dbg !4171
  %3 = load ptr, ptr %2, align 4, !dbg !4172
  %4 = getelementptr inbounds %struct._dnode, ptr %3, i32 0, i32 0, !dbg !4173
  store ptr null, ptr %4, align 4, !dbg !4174
  %5 = load ptr, ptr %2, align 4, !dbg !4175
  %6 = getelementptr inbounds %struct._dnode, ptr %5, i32 0, i32 1, !dbg !4176
  store ptr null, ptr %6, align 4, !dbg !4177
  ret void, !dbg !4178
}

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @sys_dlist_is_empty(ptr noundef %0) #0 !dbg !4179 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4182, metadata !DIExpression()), !dbg !4183
  %3 = load ptr, ptr %2, align 4, !dbg !4184
  %4 = getelementptr inbounds %struct._dnode, ptr %3, i32 0, i32 0, !dbg !4185
  %5 = load ptr, ptr %4, align 4, !dbg !4185
  %6 = load ptr, ptr %2, align 4, !dbg !4186
  %7 = icmp eq ptr %5, %6, !dbg !4187
  ret i1 %7, !dbg !4188
}

declare ptr @z_rb_get_minmax(ptr noundef, i8 noundef zeroext) #2

; Function Attrs: noinline nounwind optnone
define internal void @k_yield() #0 !dbg !4189 {
  br label %1, !dbg !4190

1:                                                ; preds = %0
  call void asm sideeffect "", "~{memory}"() #5, !dbg !4191, !srcloc !4193
  br label %2, !dbg !4194

2:                                                ; preds = %1
  call void @z_impl_k_yield(), !dbg !4195
  ret void, !dbg !4196
}

declare i32 @sys_clock_tick_get_32() #2

; Function Attrs: noinline nounwind optnone
define internal void @unready_thread(ptr noundef %0) #0 !dbg !4197 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  store ptr %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4198, metadata !DIExpression()), !dbg !4199
  %6 = load ptr, ptr %5, align 4, !dbg !4200
  %7 = call zeroext i1 @z_is_thread_queued(ptr noundef %6), !dbg !4202
  br i1 %7, label %8, label %23, !dbg !4203

8:                                                ; preds = %1
  %9 = load ptr, ptr %5, align 4, !dbg !4204
  store ptr %9, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !758, metadata !DIExpression()), !dbg !4206
  %10 = load ptr, ptr %4, align 4, !dbg !4208
  %11 = getelementptr inbounds %struct._thread_base, ptr %10, i32 0, i32 3, !dbg !4209
  %12 = load i8, ptr %11, align 1, !dbg !4210
  %13 = zext i8 %12 to i32, !dbg !4210
  %14 = and i32 %13, -129, !dbg !4210
  %15 = trunc i32 %14 to i8, !dbg !4210
  store i8 %15, ptr %11, align 1, !dbg !4210
  %16 = load ptr, ptr %4, align 4, !dbg !4211
  %17 = call zeroext i1 @should_queue_thread(ptr noundef %16), !dbg !4212
  br i1 %17, label %18, label %dequeue_thread.exit, !dbg !4213

18:                                               ; preds = %8
  %19 = load ptr, ptr %4, align 4, !dbg !4214
  store ptr %19, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !771, metadata !DIExpression()), !dbg !4215
  %20 = load ptr, ptr %3, align 4, !dbg !4217
  store ptr %20, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !776, metadata !DIExpression()), !dbg !4218
  %21 = load ptr, ptr %2, align 4, !dbg !4220
  %22 = load ptr, ptr %3, align 4, !dbg !4221
  call void @z_priq_dumb_remove(ptr noundef getelementptr inbounds (%struct.z_kernel, ptr @_kernel, i32 0, i32 1, i32 1), ptr noundef %22), !dbg !4222
  br label %dequeue_thread.exit, !dbg !4223

dequeue_thread.exit:                              ; preds = %8, %18
  br label %23, !dbg !4224

23:                                               ; preds = %dequeue_thread.exit, %1
  %24 = load ptr, ptr %5, align 4, !dbg !4225
  %25 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !4226
  %26 = icmp eq ptr %24, %25, !dbg !4227
  %27 = zext i1 %26 to i32, !dbg !4227
  call void @update_cache(i32 noundef %27), !dbg !4228
  ret void, !dbg !4229
}

; Function Attrs: noinline nounwind optnone
define internal void @z_add_thread_timeout(ptr noundef %0, [1 x i64] %1) #0 !dbg !4230 {
  %3 = alloca %struct.k_timeout_t, align 8
  %4 = alloca ptr, align 4
  %5 = getelementptr inbounds %struct.k_timeout_t, ptr %3, i32 0, i32 0
  store [1 x i64] %1, ptr %5, align 8
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4231, metadata !DIExpression()), !dbg !4232
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4233, metadata !DIExpression()), !dbg !4234
  %6 = load ptr, ptr %4, align 4, !dbg !4235
  %7 = getelementptr inbounds %struct.k_thread, ptr %6, i32 0, i32 0, !dbg !4236
  %8 = getelementptr inbounds %struct._thread_base, ptr %7, i32 0, i32 7, !dbg !4237
  %9 = getelementptr inbounds %struct.k_timeout_t, ptr %3, i32 0, i32 0, !dbg !4238
  %10 = load [1 x i64], ptr %9, align 8, !dbg !4238
  call void @z_add_timeout(ptr noundef %8, ptr noundef @z_thread_timeout, [1 x i64] %10), !dbg !4238
  ret void, !dbg !4239
}

; Function Attrs: noinline nounwind optnone
define internal void @unpend_all(ptr noundef %0) #0 !dbg !4240 {
  %2 = alloca ptr, align 4
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4243, metadata !DIExpression()), !dbg !4244
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4245, metadata !DIExpression()), !dbg !4246
  br label %6, !dbg !4247

6:                                                ; preds = %10, %1
  %7 = load ptr, ptr %4, align 4, !dbg !4248
  %8 = call ptr @z_waitq_head(ptr noundef %7), !dbg !4249
  store ptr %8, ptr %5, align 4, !dbg !4250
  %9 = icmp ne ptr %8, null, !dbg !4251
  br i1 %9, label %10, label %20, !dbg !4247

10:                                               ; preds = %6
  %11 = load ptr, ptr %5, align 4, !dbg !4252
  call void @unpend_thread_no_timeout(ptr noundef %11), !dbg !4254
  %12 = load ptr, ptr %5, align 4, !dbg !4255
  %13 = call i32 @z_abort_thread_timeout(ptr noundef %12), !dbg !4256
  %14 = load ptr, ptr %5, align 4, !dbg !4257
  store ptr %14, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3780, metadata !DIExpression()), !dbg !4258
  store i32 0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3787, metadata !DIExpression()), !dbg !4260
  %15 = load i32, ptr %3, align 4, !dbg !4261
  %16 = load ptr, ptr %2, align 4, !dbg !4262
  %17 = getelementptr inbounds %struct.k_thread, ptr %16, i32 0, i32 6, !dbg !4263
  %18 = getelementptr inbounds %struct._thread_arch, ptr %17, i32 0, i32 1, !dbg !4264
  store i32 %15, ptr %18, align 4, !dbg !4265
  %19 = load ptr, ptr %5, align 4, !dbg !4266
  call void @ready_thread(ptr noundef %19), !dbg !4267
  br label %6, !dbg !4247, !llvm.loop !4268

20:                                               ; preds = %6
  ret void, !dbg !4270
}

; Function Attrs: noinline nounwind optnone
define internal void @z_mark_thread_as_pending(ptr noundef %0) #0 !dbg !4271 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4272, metadata !DIExpression()), !dbg !4273
  %3 = load ptr, ptr %2, align 4, !dbg !4274
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !4275
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 3, !dbg !4276
  %6 = load i8, ptr %5, align 1, !dbg !4277
  %7 = zext i8 %6 to i32, !dbg !4277
  %8 = or i32 %7, 2, !dbg !4277
  %9 = trunc i32 %8 to i8, !dbg !4277
  store i8 %9, ptr %5, align 1, !dbg !4277
  ret void, !dbg !4278
}

; Function Attrs: noinline nounwind optnone
define internal ptr @sys_dlist_peek_next_no_check(ptr noundef %0, ptr noundef %1) #0 !dbg !4279 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4280, metadata !DIExpression()), !dbg !4281
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4282, metadata !DIExpression()), !dbg !4283
  %5 = load ptr, ptr %4, align 4, !dbg !4284
  %6 = load ptr, ptr %3, align 4, !dbg !4285
  %7 = getelementptr inbounds %struct._dnode, ptr %6, i32 0, i32 1, !dbg !4286
  %8 = load ptr, ptr %7, align 4, !dbg !4286
  %9 = icmp eq ptr %5, %8, !dbg !4287
  br i1 %9, label %10, label %11, !dbg !4288

10:                                               ; preds = %2
  br label %15, !dbg !4288

11:                                               ; preds = %2
  %12 = load ptr, ptr %4, align 4, !dbg !4289
  %13 = getelementptr inbounds %struct._dnode, ptr %12, i32 0, i32 0, !dbg !4290
  %14 = load ptr, ptr %13, align 4, !dbg !4290
  br label %15, !dbg !4288

15:                                               ; preds = %11, %10
  %16 = phi ptr [ null, %10 ], [ %14, %11 ], !dbg !4288
  ret ptr %16, !dbg !4291
}

attributes #0 = { noinline nounwind optnone "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { alwaysinline nounwind "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!246, !247, !248, !249, !250, !251, !252, !253}
!llvm.ident = !{!254}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "slice_timeouts", scope: !2, file: !232, line: 428, type: !245, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !97, globals: !229, splitDebugInlining: false, nameTableKind: None)
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
!36 = !DIEnumerator(name: "K_OBJ_DRIVER_PWM", value: 18)
!37 = !DIEnumerator(name: "K_OBJ_DRIVER_RESET", value: 19)
!38 = !DIEnumerator(name: "K_OBJ_DRIVER_UART", value: 20)
!39 = !DIEnumerator(name: "K_OBJ_DRIVER_CRYPTO", value: 21)
!40 = !DIEnumerator(name: "K_OBJ_DRIVER_ADC", value: 22)
!41 = !DIEnumerator(name: "K_OBJ_DRIVER_AUXDISPLAY", value: 23)
!42 = !DIEnumerator(name: "K_OBJ_DRIVER_BBRAM", value: 24)
!43 = !DIEnumerator(name: "K_OBJ_DRIVER_CAN", value: 25)
!44 = !DIEnumerator(name: "K_OBJ_DRIVER_CHARGER", value: 26)
!45 = !DIEnumerator(name: "K_OBJ_DRIVER_COREDUMP", value: 27)
!46 = !DIEnumerator(name: "K_OBJ_DRIVER_COUNTER", value: 28)
!47 = !DIEnumerator(name: "K_OBJ_DRIVER_DAC", value: 29)
!48 = !DIEnumerator(name: "K_OBJ_DRIVER_DAI", value: 30)
!49 = !DIEnumerator(name: "K_OBJ_DRIVER_DMA", value: 31)
!50 = !DIEnumerator(name: "K_OBJ_DRIVER_EDAC", value: 32)
!51 = !DIEnumerator(name: "K_OBJ_DRIVER_EEPROM", value: 33)
!52 = !DIEnumerator(name: "K_OBJ_DRIVER_FUEL_GAUGE_EMUL", value: 34)
!53 = !DIEnumerator(name: "K_OBJ_DRIVER_EMUL_SENSOR_BACKEND_API", value: 35)
!54 = !DIEnumerator(name: "K_OBJ_DRIVER_ENTROPY", value: 36)
!55 = !DIEnumerator(name: "K_OBJ_DRIVER_ESPI", value: 37)
!56 = !DIEnumerator(name: "K_OBJ_DRIVER_ESPI_SAF", value: 38)
!57 = !DIEnumerator(name: "K_OBJ_DRIVER_FLASH", value: 39)
!58 = !DIEnumerator(name: "K_OBJ_DRIVER_FPGA", value: 40)
!59 = !DIEnumerator(name: "K_OBJ_DRIVER_FUEL_GAUGE", value: 41)
!60 = !DIEnumerator(name: "K_OBJ_DRIVER_HWSPINLOCK", value: 42)
!61 = !DIEnumerator(name: "K_OBJ_DRIVER_I2C", value: 43)
!62 = !DIEnumerator(name: "K_OBJ_DRIVER_I2S", value: 44)
!63 = !DIEnumerator(name: "K_OBJ_DRIVER_I3C", value: 45)
!64 = !DIEnumerator(name: "K_OBJ_DRIVER_IPM", value: 46)
!65 = !DIEnumerator(name: "K_OBJ_DRIVER_KSCAN", value: 47)
!66 = !DIEnumerator(name: "K_OBJ_DRIVER_LED", value: 48)
!67 = !DIEnumerator(name: "K_OBJ_DRIVER_MBOX", value: 49)
!68 = !DIEnumerator(name: "K_OBJ_DRIVER_MDIO", value: 50)
!69 = !DIEnumerator(name: "K_OBJ_DRIVER_MIPI_DSI", value: 51)
!70 = !DIEnumerator(name: "K_OBJ_DRIVER_PECI", value: 52)
!71 = !DIEnumerator(name: "K_OBJ_DRIVER_PS2", value: 53)
!72 = !DIEnumerator(name: "K_OBJ_DRIVER_PTP_CLOCK", value: 54)
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
!252 = !{i32 8, !"PIC Level", i32 2}
!253 = !{i32 7, !"PIE Level", i32 2}
!254 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
!255 = distinct !DISubprogram(name: "z_impl_k_object_access_grant", scope: !16, file: !16, line: 223, type: !256, scopeLine: 225, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !213)
!256 = !DISubroutineType(types: !257)
!257 = !{null, !258, !101}
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 32)
!259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!260 = !DILocalVariable(name: "object", arg: 1, scope: !255, file: !16, line: 223, type: !258)
!261 = !DILocation(line: 223, column: 61, scope: !255)
!262 = !DILocalVariable(name: "thread", arg: 2, scope: !255, file: !16, line: 224, type: !101)
!263 = !DILocation(line: 224, column: 24, scope: !255)
!264 = !DILocation(line: 226, column: 9, scope: !255)
!265 = !DILocation(line: 227, column: 9, scope: !255)
!266 = !DILocation(line: 228, column: 1, scope: !255)
!267 = distinct !DISubprogram(name: "z_impl_k_object_release", scope: !16, file: !16, line: 243, type: !268, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !213)
!268 = !DISubroutineType(types: !269)
!269 = !{null, !258}
!270 = !DILocalVariable(name: "object", arg: 1, scope: !267, file: !16, line: 243, type: !258)
!271 = !DILocation(line: 243, column: 56, scope: !267)
!272 = !DILocation(line: 245, column: 9, scope: !267)
!273 = !DILocation(line: 246, column: 1, scope: !267)
!274 = distinct !DISubprogram(name: "z_impl_k_object_alloc", scope: !16, file: !16, line: 359, type: !275, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !213)
!275 = !DISubroutineType(types: !276)
!276 = !{!162, !15}
!277 = !DILocalVariable(name: "otype", arg: 1, scope: !274, file: !16, line: 359, type: !15)
!278 = !DILocation(line: 359, column: 58, scope: !274)
!279 = !DILocation(line: 361, column: 9, scope: !274)
!280 = !DILocation(line: 363, column: 2, scope: !274)
!281 = distinct !DISubprogram(name: "z_impl_k_object_alloc_size", scope: !16, file: !16, line: 366, type: !282, scopeLine: 368, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !213)
!282 = !DISubroutineType(types: !283)
!283 = !{!162, !15, !207}
!284 = !DILocalVariable(name: "otype", arg: 1, scope: !281, file: !16, line: 366, type: !15)
!285 = !DILocation(line: 366, column: 63, scope: !281)
!286 = !DILocalVariable(name: "size", arg: 2, scope: !281, file: !16, line: 367, type: !207)
!287 = !DILocation(line: 367, column: 13, scope: !281)
!288 = !DILocation(line: 369, column: 9, scope: !281)
!289 = !DILocation(line: 370, column: 9, scope: !281)
!290 = !DILocation(line: 372, column: 2, scope: !281)
!291 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_expires_ticks", scope: !196, file: !196, line: 656, type: !292, scopeLine: 658, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !213)
!292 = !DISubroutineType(types: !293)
!293 = !{!223, !294}
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 32)
!295 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !102)
!296 = !DILocalVariable(name: "t", arg: 1, scope: !291, file: !196, line: 657, type: !294)
!297 = !DILocation(line: 657, column: 30, scope: !291)
!298 = !DILocation(line: 659, column: 28, scope: !291)
!299 = !DILocation(line: 659, column: 31, scope: !291)
!300 = !DILocation(line: 659, column: 36, scope: !291)
!301 = !DILocation(line: 659, column: 9, scope: !291)
!302 = !DILocation(line: 659, column: 2, scope: !291)
!303 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_remaining_ticks", scope: !196, file: !196, line: 671, type: !292, scopeLine: 673, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !213)
!304 = !DILocalVariable(name: "t", arg: 1, scope: !303, file: !196, line: 672, type: !294)
!305 = !DILocation(line: 672, column: 30, scope: !303)
!306 = !DILocation(line: 674, column: 30, scope: !303)
!307 = !DILocation(line: 674, column: 33, scope: !303)
!308 = !DILocation(line: 674, column: 38, scope: !303)
!309 = !DILocation(line: 674, column: 9, scope: !303)
!310 = !DILocation(line: 674, column: 2, scope: !303)
!311 = distinct !DISubprogram(name: "z_impl_k_timer_expires_ticks", scope: !196, file: !196, line: 1634, type: !312, scopeLine: 1636, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !213)
!312 = !DISubroutineType(types: !313)
!313 = !{!223, !314}
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 32)
!315 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !316)
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_timer", file: !196, line: 1439, size: 448, elements: !317)
!317 = !{!318, !319, !320, !325, !326, !331, !332}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !316, file: !196, line: 1445, baseType: !164, size: 192)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !316, file: !196, line: 1448, baseType: !138, size: 64, offset: 192)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_fn", scope: !316, file: !196, line: 1451, baseType: !321, size: 32, offset: 256)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 32)
!322 = !DISubroutineType(types: !323)
!323 = !{null, !324}
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 32)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "stop_fn", scope: !316, file: !196, line: 1454, baseType: !321, size: 32, offset: 288)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !316, file: !196, line: 1457, baseType: !327, size: 64, offset: 320)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_timeout_t", file: !224, line: 67, baseType: !328)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !224, line: 65, size: 64, elements: !329)
!329 = !{!330}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "ticks", scope: !328, file: !224, line: 66, baseType: !223, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !316, file: !196, line: 1460, baseType: !98, size: 32, offset: 384)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !316, file: !196, line: 1463, baseType: !162, size: 32, offset: 416)
!333 = !DILocalVariable(name: "timer", arg: 1, scope: !311, file: !196, line: 1635, type: !314)
!334 = !DILocation(line: 1635, column: 34, scope: !311)
!335 = !DILocation(line: 1637, column: 28, scope: !311)
!336 = !DILocation(line: 1637, column: 35, scope: !311)
!337 = !DILocation(line: 1637, column: 9, scope: !311)
!338 = !DILocation(line: 1637, column: 2, scope: !311)
!339 = distinct !DISubprogram(name: "z_impl_k_timer_remaining_ticks", scope: !196, file: !196, line: 1649, type: !312, scopeLine: 1651, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !213)
!340 = !DILocalVariable(name: "timer", arg: 1, scope: !339, file: !196, line: 1650, type: !314)
!341 = !DILocation(line: 1650, column: 34, scope: !339)
!342 = !DILocation(line: 1652, column: 30, scope: !339)
!343 = !DILocation(line: 1652, column: 37, scope: !339)
!344 = !DILocation(line: 1652, column: 9, scope: !339)
!345 = !DILocation(line: 1652, column: 2, scope: !339)
!346 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_set", scope: !196, file: !196, line: 1689, type: !347, scopeLine: 1691, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !213)
!347 = !DISubroutineType(types: !348)
!348 = !{null, !324, !162}
!349 = !DILocalVariable(name: "timer", arg: 1, scope: !346, file: !196, line: 1689, type: !324)
!350 = !DILocation(line: 1689, column: 65, scope: !346)
!351 = !DILocalVariable(name: "user_data", arg: 2, scope: !346, file: !196, line: 1690, type: !162)
!352 = !DILocation(line: 1690, column: 19, scope: !346)
!353 = !DILocation(line: 1692, column: 21, scope: !346)
!354 = !DILocation(line: 1692, column: 2, scope: !346)
!355 = !DILocation(line: 1692, column: 9, scope: !346)
!356 = !DILocation(line: 1692, column: 19, scope: !346)
!357 = !DILocation(line: 1693, column: 1, scope: !346)
!358 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_get", scope: !196, file: !196, line: 1704, type: !359, scopeLine: 1705, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !213)
!359 = !DISubroutineType(types: !360)
!360 = !{!162, !314}
!361 = !DILocalVariable(name: "timer", arg: 1, scope: !358, file: !196, line: 1704, type: !314)
!362 = !DILocation(line: 1704, column: 72, scope: !358)
!363 = !DILocation(line: 1706, column: 9, scope: !358)
!364 = !DILocation(line: 1706, column: 16, scope: !358)
!365 = !DILocation(line: 1706, column: 2, scope: !358)
!366 = distinct !DISubprogram(name: "z_impl_k_queue_is_empty", scope: !196, file: !196, line: 2071, type: !367, scopeLine: 2072, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !213)
!367 = !DISubroutineType(types: !368)
!368 = !{!192, !369}
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 32)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_queue", file: !196, line: 1830, size: 128, elements: !371)
!371 = !{!372, !385, !386}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "data_q", scope: !370, file: !196, line: 1831, baseType: !373, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sflist_t", file: !374, line: 60, baseType: !375)
!374 = !DIFile(filename: "include/zephyr/sys/sflist.h", directory: "/home/sri/zephyrproject/zephyr")
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sflist", file: !374, line: 53, size: 64, elements: !376)
!376 = !{!377, !384}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !375, file: !374, line: 54, baseType: !378, size: 32)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 32)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sfnode_t", file: !374, line: 50, baseType: !380)
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sfnode", file: !374, line: 44, size: 32, elements: !381)
!381 = !{!382}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "next_and_flags", scope: !380, file: !374, line: 45, baseType: !383, size: 32)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "unative_t", file: !374, line: 40, baseType: !98)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !375, file: !374, line: 55, baseType: !378, size: 32, offset: 32)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !370, file: !196, line: 1832, baseType: !211, offset: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !370, file: !196, line: 1833, baseType: !138, size: 64, offset: 64)
!387 = !DILocalVariable(name: "queue", arg: 1, scope: !366, file: !196, line: 2071, type: !369)
!388 = !DILocation(line: 2071, column: 59, scope: !366)
!389 = !DILocation(line: 2073, column: 35, scope: !366)
!390 = !DILocation(line: 2073, column: 42, scope: !366)
!391 = !DILocation(line: 2073, column: 14, scope: !366)
!392 = !DILocation(line: 2073, column: 9, scope: !366)
!393 = !DILocation(line: 2073, column: 2, scope: !366)
!394 = distinct !DISubprogram(name: "z_impl_k_sem_count_get", scope: !196, file: !196, line: 3209, type: !395, scopeLine: 3210, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !213)
!395 = !DISubroutineType(types: !396)
!396 = !{!100, !397}
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 32)
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sem", file: !196, line: 3092, size: 128, elements: !399)
!399 = !{!400, !401, !402}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !398, file: !196, line: 3093, baseType: !138, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !398, file: !196, line: 3094, baseType: !100, size: 32, offset: 64)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !398, file: !196, line: 3095, baseType: !100, size: 32, offset: 96)
!403 = !DILocalVariable(name: "sem", arg: 1, scope: !394, file: !196, line: 3209, type: !397)
!404 = !DILocation(line: 3209, column: 65, scope: !394)
!405 = !DILocation(line: 3211, column: 9, scope: !394)
!406 = !DILocation(line: 3211, column: 14, scope: !394)
!407 = !DILocation(line: 3211, column: 2, scope: !394)
!408 = distinct !DISubprogram(name: "z_impl_k_msgq_num_free_get", scope: !196, file: !196, line: 4649, type: !409, scopeLine: 4650, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !213)
!409 = !DISubroutineType(types: !410)
!410 = !{!98, !411}
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 32)
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_msgq", file: !196, line: 4390, size: 320, elements: !413)
!413 = !{!414, !415, !416, !417, !418, !419, !420, !421, !422, !423}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !412, file: !196, line: 4392, baseType: !138, size: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !412, file: !196, line: 4394, baseType: !211, offset: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "msg_size", scope: !412, file: !196, line: 4396, baseType: !207, size: 32, offset: 64)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !412, file: !196, line: 4398, baseType: !98, size: 32, offset: 96)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_start", scope: !412, file: !196, line: 4400, baseType: !219, size: 32, offset: 128)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_end", scope: !412, file: !196, line: 4402, baseType: !219, size: 32, offset: 160)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "read_ptr", scope: !412, file: !196, line: 4404, baseType: !219, size: 32, offset: 192)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "write_ptr", scope: !412, file: !196, line: 4406, baseType: !219, size: 32, offset: 224)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "used_msgs", scope: !412, file: !196, line: 4408, baseType: !98, size: 32, offset: 256)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !412, file: !196, line: 4413, baseType: !145, size: 8, offset: 288)
!424 = !DILocalVariable(name: "msgq", arg: 1, scope: !408, file: !196, line: 4649, type: !411)
!425 = !DILocation(line: 4649, column: 66, scope: !408)
!426 = !DILocation(line: 4651, column: 9, scope: !408)
!427 = !DILocation(line: 4651, column: 15, scope: !408)
!428 = !DILocation(line: 4651, column: 26, scope: !408)
!429 = !DILocation(line: 4651, column: 32, scope: !408)
!430 = !DILocation(line: 4651, column: 24, scope: !408)
!431 = !DILocation(line: 4651, column: 2, scope: !408)
!432 = distinct !DISubprogram(name: "z_impl_k_msgq_num_used_get", scope: !196, file: !196, line: 4665, type: !409, scopeLine: 4666, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !213)
!433 = !DILocalVariable(name: "msgq", arg: 1, scope: !432, file: !196, line: 4665, type: !411)
!434 = !DILocation(line: 4665, column: 66, scope: !432)
!435 = !DILocation(line: 4667, column: 9, scope: !432)
!436 = !DILocation(line: 4667, column: 15, scope: !432)
!437 = !DILocation(line: 4667, column: 2, scope: !432)
!438 = distinct !DISubprogram(name: "z_sched_prio_cmp", scope: !232, file: !232, line: 100, type: !439, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !213)
!439 = !DISubroutineType(types: !440)
!440 = !{!225, !101, !101}
!441 = !DILocalVariable(name: "thread_1", arg: 1, scope: !438, file: !232, line: 100, type: !101)
!442 = !DILocation(line: 100, column: 43, scope: !438)
!443 = !DILocalVariable(name: "thread_2", arg: 2, scope: !438, file: !232, line: 101, type: !101)
!444 = !DILocation(line: 101, column: 19, scope: !438)
!445 = !DILocalVariable(name: "b1", scope: !438, file: !232, line: 104, type: !225)
!446 = !DILocation(line: 104, column: 10, scope: !438)
!447 = !DILocation(line: 104, column: 15, scope: !438)
!448 = !DILocation(line: 104, column: 25, scope: !438)
!449 = !DILocation(line: 104, column: 30, scope: !438)
!450 = !DILocalVariable(name: "b2", scope: !438, file: !232, line: 105, type: !225)
!451 = !DILocation(line: 105, column: 10, scope: !438)
!452 = !DILocation(line: 105, column: 15, scope: !438)
!453 = !DILocation(line: 105, column: 25, scope: !438)
!454 = !DILocation(line: 105, column: 30, scope: !438)
!455 = !DILocation(line: 107, column: 6, scope: !456)
!456 = distinct !DILexicalBlock(scope: !438, file: !232, line: 107, column: 6)
!457 = !DILocation(line: 107, column: 12, scope: !456)
!458 = !DILocation(line: 107, column: 9, scope: !456)
!459 = !DILocation(line: 107, column: 6, scope: !438)
!460 = !DILocation(line: 108, column: 10, scope: !461)
!461 = distinct !DILexicalBlock(scope: !456, file: !232, line: 107, column: 16)
!462 = !DILocation(line: 108, column: 15, scope: !461)
!463 = !DILocation(line: 108, column: 13, scope: !461)
!464 = !DILocation(line: 108, column: 3, scope: !461)
!465 = !DILocation(line: 131, column: 2, scope: !438)
!466 = !DILocation(line: 132, column: 1, scope: !438)
!467 = distinct !DISubprogram(name: "z_reset_time_slice", scope: !232, file: !232, line: 484, type: !468, scopeLine: 485, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !213)
!468 = !DISubroutineType(types: !469)
!469 = !{null, !101}
!470 = !DILocalVariable(name: "curr", arg: 1, scope: !467, file: !232, line: 484, type: !101)
!471 = !DILocation(line: 484, column: 42, scope: !467)
!472 = !DILocalVariable(name: "cpu", scope: !467, file: !232, line: 486, type: !192)
!473 = !DILocation(line: 486, column: 6, scope: !467)
!474 = !DILocation(line: 486, column: 32, scope: !467)
!475 = !DILocation(line: 486, column: 12, scope: !467)
!476 = !DILocation(line: 488, column: 34, scope: !467)
!477 = !DILocation(line: 488, column: 19, scope: !467)
!478 = !DILocation(line: 488, column: 2, scope: !467)
!479 = !DILocation(line: 489, column: 16, scope: !467)
!480 = !DILocation(line: 489, column: 2, scope: !467)
!481 = !DILocation(line: 489, column: 21, scope: !467)
!482 = !DILocation(line: 490, column: 16, scope: !483)
!483 = distinct !DILexicalBlock(scope: !467, file: !232, line: 490, column: 6)
!484 = !DILocation(line: 490, column: 6, scope: !483)
!485 = !DILocation(line: 490, column: 6, scope: !467)
!486 = !DILocation(line: 491, column: 33, scope: !487)
!487 = distinct !DILexicalBlock(scope: !483, file: !232, line: 490, column: 23)
!488 = !DILocation(line: 491, column: 18, scope: !487)
!489 = !DILocation(line: 492, column: 25, scope: !487)
!490 = !DILocation(line: 492, column: 48, scope: !487)
!491 = !DILocation(line: 492, column: 37, scope: !487)
!492 = !DILocation(line: 492, column: 54, scope: !487)
!493 = !DILocation(line: 492, column: 36, scope: !487)
!494 = !DILocation(line: 491, column: 3, scope: !487)
!495 = !DILocation(line: 493, column: 2, scope: !487)
!496 = !DILocation(line: 494, column: 1, scope: !467)
!497 = distinct !DISubprogram(name: "sliceable", scope: !232, file: !232, line: 454, type: !498, scopeLine: 455, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !213)
!498 = !DISubroutineType(types: !499)
!499 = !{!236, !101}
!500 = !DILocalVariable(name: "thread", arg: 1, scope: !497, file: !232, line: 454, type: !101)
!501 = !DILocation(line: 454, column: 48, scope: !497)
!502 = !DILocalVariable(name: "ret", scope: !497, file: !232, line: 456, type: !236)
!503 = !DILocation(line: 456, column: 8, scope: !497)
!504 = !DILocation(line: 456, column: 25, scope: !497)
!505 = !DILocation(line: 456, column: 14, scope: !497)
!506 = !DILocation(line: 457, column: 3, scope: !497)
!507 = !DILocation(line: 457, column: 17, scope: !497)
!508 = !DILocation(line: 457, column: 6, scope: !497)
!509 = !DILocation(line: 457, column: 25, scope: !497)
!510 = !DILocation(line: 458, column: 3, scope: !497)
!511 = !DILocation(line: 458, column: 24, scope: !497)
!512 = !DILocation(line: 458, column: 32, scope: !497)
!513 = !DILocation(line: 458, column: 37, scope: !497)
!514 = !DILocation(line: 458, column: 43, scope: !497)
!515 = !DILocation(line: 458, column: 7, scope: !497)
!516 = !DILocation(line: 459, column: 3, scope: !497)
!517 = !DILocation(line: 459, column: 42, scope: !497)
!518 = !DILocation(line: 459, column: 7, scope: !497)
!519 = !DILocation(line: 460, column: 3, scope: !497)
!520 = !DILocation(line: 460, column: 31, scope: !497)
!521 = !DILocation(line: 460, column: 7, scope: !497)
!522 = !DILocation(line: 460, column: 6, scope: !497)
!523 = !DILocation(line: 0, scope: !497)
!524 = !DILocation(line: 466, column: 9, scope: !497)
!525 = !DILocation(line: 466, column: 2, scope: !497)
!526 = distinct !DISubprogram(name: "slice_timeout", scope: !232, file: !232, line: 469, type: !170, scopeLine: 470, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !213)
!527 = !DILocalVariable(name: "t", arg: 1, scope: !526, file: !232, line: 469, type: !172)
!528 = !DILocation(line: 469, column: 44, scope: !526)
!529 = !DILocalVariable(name: "cpu", scope: !526, file: !232, line: 471, type: !192)
!530 = !DILocation(line: 471, column: 6, scope: !526)
!531 = !DILocation(line: 471, column: 56, scope: !532)
!532 = distinct !DILexicalBlock(scope: !526, file: !232, line: 471, column: 13)
!533 = !DILocation(line: 471, column: 59, scope: !532)
!534 = !DILocation(line: 471, column: 17, scope: !535)
!535 = distinct !DILexicalBlock(scope: !532, file: !232, line: 471, column: 15)
!536 = !DILocation(line: 471, column: 79, scope: !532)
!537 = !DILocation(line: 473, column: 16, scope: !526)
!538 = !DILocation(line: 473, column: 2, scope: !526)
!539 = !DILocation(line: 473, column: 21, scope: !526)
!540 = !DILocation(line: 482, column: 1, scope: !526)
!541 = distinct !DISubprogram(name: "slice_time", scope: !232, file: !232, line: 440, type: !542, scopeLine: 441, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !213)
!542 = !DISubroutineType(types: !543)
!543 = !{!192, !101}
!544 = !DILocalVariable(name: "thread", arg: 1, scope: !541, file: !232, line: 440, type: !101)
!545 = !DILocation(line: 440, column: 47, scope: !541)
!546 = !DILocalVariable(name: "ret", scope: !541, file: !232, line: 442, type: !192)
!547 = !DILocation(line: 442, column: 6, scope: !541)
!548 = !DILocation(line: 442, column: 12, scope: !541)
!549 = !DILocation(line: 449, column: 9, scope: !541)
!550 = !DILocation(line: 451, column: 9, scope: !541)
!551 = !DILocation(line: 451, column: 2, scope: !541)
!552 = distinct !DISubprogram(name: "k_sched_time_slice_set", scope: !232, file: !232, line: 496, type: !553, scopeLine: 497, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !213)
!553 = !DISubroutineType(types: !554)
!554 = !{null, !225, !192}
!555 = !DILocalVariable(name: "slice", arg: 1, scope: !552, file: !232, line: 496, type: !225)
!556 = !DILocation(line: 496, column: 37, scope: !552)
!557 = !DILocalVariable(name: "prio", arg: 2, scope: !552, file: !232, line: 496, type: !192)
!558 = !DILocation(line: 496, column: 48, scope: !552)
!559 = !DILocalVariable(name: "__i", scope: !560, file: !232, line: 498, type: !561)
!560 = distinct !DILexicalBlock(scope: !552, file: !232, line: 498, column: 2)
!561 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_spinlock_key_t", file: !212, line: 108, baseType: !562)
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "z_spinlock_key", file: !212, line: 34, size: 32, elements: !563)
!563 = !{!564}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !562, file: !212, line: 35, baseType: !192, size: 32)
!565 = !DILocation(line: 498, column: 24, scope: !560)
!566 = !DILocalVariable(name: "__key", scope: !560, file: !232, line: 498, type: !561)
!567 = !DILocation(line: 498, column: 34, scope: !560)
!568 = !DILocalVariable(name: "l", arg: 1, scope: !569, file: !212, line: 160, type: !572)
!569 = distinct !DISubprogram(name: "k_spin_lock", scope: !212, file: !212, line: 160, type: !570, scopeLine: 161, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !213)
!570 = !DISubroutineType(types: !571)
!571 = !{!561, !572}
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 32)
!573 = !DILocation(line: 160, column: 94, scope: !569, inlinedAt: !574)
!574 = distinct !DILocation(line: 498, column: 42, scope: !560)
!575 = !DILocation(line: 162, column: 9, scope: !569, inlinedAt: !574)
!576 = !DILocalVariable(name: "k", scope: !569, file: !212, line: 163, type: !561)
!577 = !DILocation(line: 163, column: 19, scope: !569, inlinedAt: !574)
!578 = !DILocalVariable(name: "key", scope: !579, file: !580, line: 44, type: !100)
!579 = distinct !DISubprogram(name: "arch_irq_lock", scope: !580, file: !580, line: 42, type: !581, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !213)
!580 = !DIFile(filename: "include/zephyr/arch/arm/asm_inline_gcc.h", directory: "/home/sri/zephyrproject/zephyr")
!581 = !DISubroutineType(types: !582)
!582 = !{!100}
!583 = !DILocation(line: 44, column: 15, scope: !579, inlinedAt: !584)
!584 = distinct !DILocation(line: 169, column: 10, scope: !569, inlinedAt: !574)
!585 = !DILocation(line: 48, column: 2, scope: !579, inlinedAt: !584)
!586 = !{i64 66897}
!587 = !DILocation(line: 80, column: 9, scope: !579, inlinedAt: !584)
!588 = !DILocation(line: 169, column: 8, scope: !569, inlinedAt: !574)
!589 = !DILocation(line: 171, column: 26, scope: !569, inlinedAt: !574)
!590 = !DILocalVariable(name: "l", arg: 1, scope: !591, file: !212, line: 110, type: !572)
!591 = distinct !DISubprogram(name: "z_spinlock_validate_pre", scope: !212, file: !212, line: 110, type: !592, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !213)
!592 = !DISubroutineType(types: !593)
!593 = !{null, !572}
!594 = !DILocation(line: 110, column: 94, scope: !591, inlinedAt: !595)
!595 = distinct !DILocation(line: 171, column: 2, scope: !569, inlinedAt: !574)
!596 = !DILocation(line: 112, column: 9, scope: !591, inlinedAt: !595)
!597 = !DILocation(line: 177, column: 27, scope: !569, inlinedAt: !574)
!598 = !DILocalVariable(name: "l", arg: 1, scope: !599, file: !212, line: 121, type: !572)
!599 = distinct !DISubprogram(name: "z_spinlock_validate_post", scope: !212, file: !212, line: 121, type: !592, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !213)
!600 = !DILocation(line: 121, column: 95, scope: !599, inlinedAt: !601)
!601 = distinct !DILocation(line: 177, column: 2, scope: !569, inlinedAt: !574)
!602 = !DILocation(line: 123, column: 9, scope: !599, inlinedAt: !601)
!603 = !DILocation(line: 179, column: 2, scope: !569, inlinedAt: !574)
!604 = !DILocation(line: 498, column: 42, scope: !560)
!605 = !DILocation(line: 498, column: 7, scope: !560)
!606 = !DILocation(line: 498, column: 77, scope: !607)
!607 = distinct !DILexicalBlock(scope: !560, file: !232, line: 498, column: 2)
!608 = !DILocation(line: 498, column: 72, scope: !607)
!609 = !DILocation(line: 498, column: 2, scope: !560)
!610 = !DILocation(line: 499, column: 520, scope: !611)
!611 = distinct !DILexicalBlock(scope: !607, file: !232, line: 498, column: 134)
!612 = !DILocation(line: 499, column: 526, scope: !611)
!613 = !DILocation(line: 499, column: 15, scope: !611)
!614 = !DILocation(line: 500, column: 20, scope: !611)
!615 = !DILocation(line: 500, column: 18, scope: !611)
!616 = !DILocation(line: 501, column: 38, scope: !611)
!617 = !DILocation(line: 501, column: 3, scope: !611)
!618 = !DILocation(line: 502, column: 2, scope: !611)
!619 = !DILocation(line: 498, column: 82, scope: !607)
!620 = !DILocalVariable(name: "l", arg: 1, scope: !621, file: !212, line: 235, type: !572)
!621 = distinct !DISubprogram(name: "k_spin_unlock", scope: !212, file: !212, line: 235, type: !622, scopeLine: 237, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !213)
!622 = !DISubroutineType(types: !623)
!623 = !{null, !572, !561}
!624 = !DILocation(line: 235, column: 84, scope: !621, inlinedAt: !625)
!625 = distinct !DILocation(line: 498, column: 82, scope: !607)
!626 = !DILocalVariable(name: "key", arg: 2, scope: !621, file: !212, line: 236, type: !561)
!627 = !DILocation(line: 236, column: 23, scope: !621, inlinedAt: !625)
!628 = !DILocation(line: 238, column: 9, scope: !621, inlinedAt: !625)
!629 = !DILocation(line: 261, column: 22, scope: !621, inlinedAt: !625)
!630 = !DILocalVariable(name: "key", arg: 1, scope: !631, file: !580, line: 88, type: !100)
!631 = distinct !DISubprogram(name: "arch_irq_unlock", scope: !580, file: !580, line: 88, type: !632, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !213)
!632 = !DISubroutineType(types: !633)
!633 = !{null, !100}
!634 = !DILocation(line: 88, column: 80, scope: !631, inlinedAt: !635)
!635 = distinct !DILocation(line: 261, column: 2, scope: !621, inlinedAt: !625)
!636 = !DILocation(line: 91, column: 6, scope: !637, inlinedAt: !635)
!637 = distinct !DILexicalBlock(scope: !631, file: !580, line: 91, column: 6)
!638 = !DILocation(line: 91, column: 10, scope: !637, inlinedAt: !635)
!639 = !DILocation(line: 91, column: 6, scope: !631, inlinedAt: !635)
!640 = !DILocation(line: 92, column: 3, scope: !641, inlinedAt: !635)
!641 = distinct !DILexicalBlock(scope: !637, file: !580, line: 91, column: 17)
!642 = !DILocation(line: 94, column: 2, scope: !631, inlinedAt: !635)
!643 = !{i64 67201}
!644 = !DILocation(line: 114, column: 1, scope: !631, inlinedAt: !635)
!645 = !DILocation(line: 498, column: 125, scope: !607)
!646 = !DILocation(line: 498, column: 129, scope: !607)
!647 = !DILocation(line: 498, column: 2, scope: !607)
!648 = distinct !{!648, !609, !649}
!649 = !DILocation(line: 502, column: 2, scope: !560)
!650 = !DILocation(line: 503, column: 1, scope: !552)
!651 = distinct !DISubprogram(name: "z_time_slice", scope: !232, file: !232, line: 518, type: !652, scopeLine: 519, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !213)
!652 = !DISubroutineType(types: !653)
!653 = !{null}
!654 = !DILocalVariable(name: "key", scope: !651, file: !232, line: 520, type: !561)
!655 = !DILocation(line: 520, column: 19, scope: !651)
!656 = !DILocation(line: 160, column: 94, scope: !569, inlinedAt: !657)
!657 = distinct !DILocation(line: 520, column: 25, scope: !651)
!658 = !DILocation(line: 162, column: 9, scope: !569, inlinedAt: !657)
!659 = !DILocation(line: 163, column: 19, scope: !569, inlinedAt: !657)
!660 = !DILocation(line: 44, column: 15, scope: !579, inlinedAt: !661)
!661 = distinct !DILocation(line: 169, column: 10, scope: !569, inlinedAt: !657)
!662 = !DILocation(line: 48, column: 2, scope: !579, inlinedAt: !661)
!663 = !DILocation(line: 80, column: 9, scope: !579, inlinedAt: !661)
!664 = !DILocation(line: 169, column: 8, scope: !569, inlinedAt: !657)
!665 = !DILocation(line: 171, column: 26, scope: !569, inlinedAt: !657)
!666 = !DILocation(line: 110, column: 94, scope: !591, inlinedAt: !667)
!667 = distinct !DILocation(line: 171, column: 2, scope: !569, inlinedAt: !657)
!668 = !DILocation(line: 112, column: 9, scope: !591, inlinedAt: !667)
!669 = !DILocation(line: 177, column: 27, scope: !569, inlinedAt: !657)
!670 = !DILocation(line: 121, column: 95, scope: !599, inlinedAt: !671)
!671 = distinct !DILocation(line: 177, column: 2, scope: !569, inlinedAt: !657)
!672 = !DILocation(line: 123, column: 9, scope: !599, inlinedAt: !671)
!673 = !DILocation(line: 179, column: 2, scope: !569, inlinedAt: !657)
!674 = !DILocation(line: 520, column: 25, scope: !651)
!675 = !DILocalVariable(name: "curr", scope: !651, file: !232, line: 521, type: !101)
!676 = !DILocation(line: 521, column: 19, scope: !651)
!677 = !DILocation(line: 521, column: 42, scope: !651)
!678 = !DILocation(line: 524, column: 6, scope: !679)
!679 = distinct !DILexicalBlock(scope: !651, file: !232, line: 524, column: 6)
!680 = !DILocation(line: 524, column: 25, scope: !679)
!681 = !DILocation(line: 524, column: 22, scope: !679)
!682 = !DILocation(line: 524, column: 6, scope: !651)
!683 = !DILocation(line: 525, column: 22, scope: !684)
!684 = distinct !DILexicalBlock(scope: !679, file: !232, line: 524, column: 31)
!685 = !DILocation(line: 525, column: 3, scope: !684)
!686 = !DILocation(line: 526, column: 3, scope: !684)
!687 = !DILocation(line: 235, column: 84, scope: !621, inlinedAt: !688)
!688 = distinct !DILocation(line: 526, column: 3, scope: !684)
!689 = !DILocation(line: 236, column: 23, scope: !621, inlinedAt: !688)
!690 = !DILocation(line: 238, column: 9, scope: !621, inlinedAt: !688)
!691 = !DILocation(line: 261, column: 22, scope: !621, inlinedAt: !688)
!692 = !DILocation(line: 88, column: 80, scope: !631, inlinedAt: !693)
!693 = distinct !DILocation(line: 261, column: 2, scope: !621, inlinedAt: !688)
!694 = !DILocation(line: 91, column: 6, scope: !637, inlinedAt: !693)
!695 = !DILocation(line: 91, column: 10, scope: !637, inlinedAt: !693)
!696 = !DILocation(line: 91, column: 6, scope: !631, inlinedAt: !693)
!697 = !DILocation(line: 92, column: 3, scope: !641, inlinedAt: !693)
!698 = !DILocation(line: 94, column: 2, scope: !631, inlinedAt: !693)
!699 = !DILocation(line: 114, column: 1, scope: !631, inlinedAt: !693)
!700 = !DILocation(line: 527, column: 3, scope: !684)
!701 = !DILocation(line: 529, column: 18, scope: !651)
!702 = !DILocation(line: 532, column: 40, scope: !703)
!703 = distinct !DILexicalBlock(scope: !651, file: !232, line: 532, column: 6)
!704 = !DILocation(line: 532, column: 6, scope: !703)
!705 = !DILocation(line: 532, column: 44, scope: !703)
!706 = !DILocation(line: 532, column: 57, scope: !703)
!707 = !DILocation(line: 532, column: 47, scope: !703)
!708 = !DILocation(line: 532, column: 6, scope: !651)
!709 = !DILocation(line: 540, column: 43, scope: !710)
!710 = distinct !DILexicalBlock(scope: !711, file: !232, line: 540, column: 7)
!711 = distinct !DILexicalBlock(scope: !703, file: !232, line: 532, column: 64)
!712 = !DILocation(line: 540, column: 8, scope: !710)
!713 = !DILocation(line: 540, column: 7, scope: !711)
!714 = !DILocation(line: 541, column: 33, scope: !715)
!715 = distinct !DILexicalBlock(scope: !710, file: !232, line: 540, column: 50)
!716 = !DILocation(line: 541, column: 4, scope: !715)
!717 = !DILocation(line: 542, column: 3, scope: !715)
!718 = !DILocation(line: 543, column: 22, scope: !711)
!719 = !DILocation(line: 543, column: 3, scope: !711)
!720 = !DILocation(line: 544, column: 2, scope: !711)
!721 = !DILocation(line: 545, column: 2, scope: !651)
!722 = !DILocation(line: 235, column: 84, scope: !621, inlinedAt: !723)
!723 = distinct !DILocation(line: 545, column: 2, scope: !651)
!724 = !DILocation(line: 236, column: 23, scope: !621, inlinedAt: !723)
!725 = !DILocation(line: 238, column: 9, scope: !621, inlinedAt: !723)
!726 = !DILocation(line: 261, column: 22, scope: !621, inlinedAt: !723)
!727 = !DILocation(line: 88, column: 80, scope: !631, inlinedAt: !728)
!728 = distinct !DILocation(line: 261, column: 2, scope: !621, inlinedAt: !723)
!729 = !DILocation(line: 91, column: 6, scope: !637, inlinedAt: !728)
!730 = !DILocation(line: 91, column: 10, scope: !637, inlinedAt: !728)
!731 = !DILocation(line: 91, column: 6, scope: !631, inlinedAt: !728)
!732 = !DILocation(line: 92, column: 3, scope: !641, inlinedAt: !728)
!733 = !DILocation(line: 94, column: 2, scope: !631, inlinedAt: !728)
!734 = !DILocation(line: 114, column: 1, scope: !631, inlinedAt: !728)
!735 = !DILocation(line: 546, column: 1, scope: !651)
!736 = distinct !DISubprogram(name: "z_is_thread_prevented_from_running", scope: !737, file: !737, line: 108, type: !498, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !213)
!737 = !DIFile(filename: "kernel/include/ksched.h", directory: "/home/sri/zephyrproject/zephyr")
!738 = !DILocalVariable(name: "thread", arg: 1, scope: !736, file: !737, line: 108, type: !101)
!739 = !DILocation(line: 108, column: 73, scope: !736)
!740 = !DILocalVariable(name: "state", scope: !736, file: !737, line: 110, type: !145)
!741 = !DILocation(line: 110, column: 10, scope: !736)
!742 = !DILocation(line: 110, column: 18, scope: !736)
!743 = !DILocation(line: 110, column: 26, scope: !736)
!744 = !DILocation(line: 110, column: 31, scope: !736)
!745 = !DILocation(line: 112, column: 10, scope: !736)
!746 = !DILocation(line: 112, column: 16, scope: !736)
!747 = !DILocation(line: 113, column: 39, scope: !736)
!748 = !DILocation(line: 112, column: 2, scope: !736)
!749 = distinct !DISubprogram(name: "move_thread_to_end_of_prio_q", scope: !232, file: !232, line: 406, type: !468, scopeLine: 407, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !213)
!750 = !DILocalVariable(name: "thread", arg: 1, scope: !749, file: !232, line: 406, type: !101)
!751 = !DILocation(line: 406, column: 59, scope: !749)
!752 = !DILocation(line: 408, column: 25, scope: !753)
!753 = distinct !DILexicalBlock(scope: !749, file: !232, line: 408, column: 6)
!754 = !DILocation(line: 408, column: 6, scope: !753)
!755 = !DILocation(line: 408, column: 6, scope: !749)
!756 = !DILocation(line: 409, column: 18, scope: !757)
!757 = distinct !DILexicalBlock(scope: !753, file: !232, line: 408, column: 34)
!758 = !DILocalVariable(name: "thread", arg: 1, scope: !759, file: !232, line: 274, type: !101)
!759 = distinct !DISubprogram(name: "dequeue_thread", scope: !232, file: !232, line: 274, type: !468, scopeLine: 275, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !213)
!760 = !DILocation(line: 274, column: 83, scope: !759, inlinedAt: !761)
!761 = distinct !DILocation(line: 409, column: 3, scope: !757)
!762 = !DILocation(line: 276, column: 2, scope: !759, inlinedAt: !761)
!763 = !DILocation(line: 276, column: 15, scope: !759, inlinedAt: !761)
!764 = !DILocation(line: 276, column: 28, scope: !759, inlinedAt: !761)
!765 = !DILocation(line: 277, column: 26, scope: !766, inlinedAt: !761)
!766 = distinct !DILexicalBlock(scope: !759, file: !232, line: 277, column: 6)
!767 = !DILocation(line: 277, column: 6, scope: !766, inlinedAt: !761)
!768 = !DILocation(line: 277, column: 6, scope: !759, inlinedAt: !761)
!769 = !DILocation(line: 278, column: 15, scope: !770, inlinedAt: !761)
!770 = distinct !DILexicalBlock(scope: !766, file: !232, line: 277, column: 35)
!771 = !DILocalVariable(name: "thread", arg: 1, scope: !772, file: !232, line: 242, type: !101)
!772 = distinct !DISubprogram(name: "runq_remove", scope: !232, file: !232, line: 242, type: !468, scopeLine: 243, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !213)
!773 = !DILocation(line: 242, column: 80, scope: !772, inlinedAt: !774)
!774 = distinct !DILocation(line: 278, column: 3, scope: !770, inlinedAt: !761)
!775 = !DILocation(line: 244, column: 33, scope: !772, inlinedAt: !774)
!776 = !DILocalVariable(name: "thread", arg: 1, scope: !777, file: !232, line: 208, type: !101)
!777 = distinct !DISubprogram(name: "thread_runq", scope: !232, file: !232, line: 208, type: !778, scopeLine: 209, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !213)
!778 = !DISubroutineType(types: !779)
!779 = !{!162, !101}
!780 = !DILocation(line: 208, column: 81, scope: !777, inlinedAt: !781)
!781 = distinct !DILocation(line: 244, column: 21, scope: !772, inlinedAt: !774)
!782 = !DILocation(line: 223, column: 9, scope: !777, inlinedAt: !781)
!783 = !DILocation(line: 244, column: 42, scope: !772, inlinedAt: !774)
!784 = !DILocation(line: 244, column: 2, scope: !772, inlinedAt: !774)
!785 = !DILocation(line: 279, column: 2, scope: !770, inlinedAt: !761)
!786 = !DILocation(line: 410, column: 2, scope: !757)
!787 = !DILocation(line: 411, column: 15, scope: !749)
!788 = !DILocalVariable(name: "thread", arg: 1, scope: !789, file: !232, line: 260, type: !101)
!789 = distinct !DISubprogram(name: "queue_thread", scope: !232, file: !232, line: 260, type: !468, scopeLine: 261, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !213)
!790 = !DILocation(line: 260, column: 81, scope: !789, inlinedAt: !791)
!791 = distinct !DILocation(line: 411, column: 2, scope: !749)
!792 = !DILocation(line: 262, column: 2, scope: !789, inlinedAt: !791)
!793 = !DILocation(line: 262, column: 15, scope: !789, inlinedAt: !791)
!794 = !DILocation(line: 262, column: 28, scope: !789, inlinedAt: !791)
!795 = !DILocation(line: 263, column: 26, scope: !796, inlinedAt: !791)
!796 = distinct !DILexicalBlock(scope: !789, file: !232, line: 263, column: 6)
!797 = !DILocation(line: 263, column: 6, scope: !796, inlinedAt: !791)
!798 = !DILocation(line: 263, column: 6, scope: !789, inlinedAt: !791)
!799 = !DILocation(line: 264, column: 12, scope: !800, inlinedAt: !791)
!800 = distinct !DILexicalBlock(scope: !796, file: !232, line: 263, column: 35)
!801 = !DILocalVariable(name: "thread", arg: 1, scope: !802, file: !232, line: 237, type: !101)
!802 = distinct !DISubprogram(name: "runq_add", scope: !232, file: !232, line: 237, type: !468, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !213)
!803 = !DILocation(line: 237, column: 77, scope: !802, inlinedAt: !804)
!804 = distinct !DILocation(line: 264, column: 3, scope: !800, inlinedAt: !791)
!805 = !DILocation(line: 239, column: 30, scope: !802, inlinedAt: !804)
!806 = !DILocation(line: 208, column: 81, scope: !777, inlinedAt: !807)
!807 = distinct !DILocation(line: 239, column: 18, scope: !802, inlinedAt: !804)
!808 = !DILocation(line: 223, column: 9, scope: !777, inlinedAt: !807)
!809 = !DILocation(line: 239, column: 39, scope: !802, inlinedAt: !804)
!810 = !DILocalVariable(name: "pq", arg: 1, scope: !811, file: !232, line: 189, type: !814)
!811 = distinct !DISubprogram(name: "z_priq_dumb_add", scope: !232, file: !232, line: 189, type: !812, scopeLine: 191, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !213)
!812 = !DISubroutineType(types: !813)
!813 = !{null, !814, !101}
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 32)
!815 = !DILocation(line: 189, column: 80, scope: !811, inlinedAt: !816)
!816 = distinct !DILocation(line: 239, column: 2, scope: !802, inlinedAt: !804)
!817 = !DILocalVariable(name: "thread", arg: 2, scope: !811, file: !232, line: 190, type: !101)
!818 = !DILocation(line: 190, column: 25, scope: !811, inlinedAt: !816)
!819 = !DILocalVariable(name: "t", scope: !811, file: !232, line: 192, type: !101)
!820 = !DILocation(line: 192, column: 19, scope: !811, inlinedAt: !816)
!821 = !DILocation(line: 196, column: 33, scope: !822, inlinedAt: !816)
!822 = distinct !DILexicalBlock(scope: !811, file: !232, line: 196, column: 2)
!823 = !DILocation(line: 196, column: 13, scope: !822, inlinedAt: !816)
!824 = !DILocation(line: 196, column: 37, scope: !822, inlinedAt: !816)
!825 = !DILocation(line: 196, column: 12, scope: !822, inlinedAt: !816)
!826 = !DILocation(line: 196, column: 100, scope: !827, inlinedAt: !816)
!827 = distinct !DILexicalBlock(scope: !822, file: !232, line: 196, column: 46)
!828 = !DILocation(line: 196, column: 80, scope: !827, inlinedAt: !816)
!829 = !DILocation(line: 196, column: 46, scope: !822, inlinedAt: !816)
!830 = !DILocation(line: 196, column: 164, scope: !827, inlinedAt: !816)
!831 = !DILocation(line: 196, column: 9, scope: !822, inlinedAt: !816)
!832 = !DILocation(line: 196, column: 7, scope: !822, inlinedAt: !816)
!833 = !DILocation(line: 196, column: 173, scope: !834, inlinedAt: !816)
!834 = distinct !DILexicalBlock(scope: !822, file: !232, line: 196, column: 2)
!835 = !DILocation(line: 196, column: 175, scope: !834, inlinedAt: !816)
!836 = !DILocation(line: 196, column: 2, scope: !822, inlinedAt: !816)
!837 = !DILocation(line: 197, column: 24, scope: !838, inlinedAt: !816)
!838 = distinct !DILexicalBlock(scope: !839, file: !232, line: 197, column: 7)
!839 = distinct !DILexicalBlock(scope: !834, file: !232, line: 196, column: 412)
!840 = !DILocation(line: 197, column: 32, scope: !838, inlinedAt: !816)
!841 = !DILocation(line: 197, column: 7, scope: !838, inlinedAt: !816)
!842 = !DILocation(line: 197, column: 35, scope: !838, inlinedAt: !816)
!843 = !DILocation(line: 197, column: 7, scope: !839, inlinedAt: !816)
!844 = !DILocation(line: 198, column: 22, scope: !845, inlinedAt: !816)
!845 = distinct !DILexicalBlock(scope: !838, file: !232, line: 197, column: 40)
!846 = !DILocation(line: 199, column: 8, scope: !845, inlinedAt: !816)
!847 = !DILocation(line: 198, column: 4, scope: !845, inlinedAt: !816)
!848 = !DILocation(line: 200, column: 4, scope: !845, inlinedAt: !816)
!849 = !DILocation(line: 196, column: 187, scope: !834, inlinedAt: !816)
!850 = !DILocation(line: 196, column: 189, scope: !834, inlinedAt: !816)
!851 = !DILocation(line: 196, column: 186, scope: !834, inlinedAt: !816)
!852 = !DILocation(line: 196, column: 219, scope: !834, inlinedAt: !816)
!853 = !DILocation(line: 196, column: 225, scope: !834, inlinedAt: !816)
!854 = !DILocation(line: 196, column: 199, scope: !834, inlinedAt: !816)
!855 = !DILocation(line: 196, column: 247, scope: !834, inlinedAt: !816)
!856 = !DILocation(line: 196, column: 198, scope: !834, inlinedAt: !816)
!857 = !DILocation(line: 196, column: 310, scope: !858, inlinedAt: !816)
!858 = distinct !DILexicalBlock(scope: !834, file: !232, line: 196, column: 256)
!859 = !DILocation(line: 196, column: 316, scope: !858, inlinedAt: !816)
!860 = !DILocation(line: 196, column: 290, scope: !858, inlinedAt: !816)
!861 = !DILocation(line: 196, column: 256, scope: !834, inlinedAt: !816)
!862 = !DILocation(line: 196, column: 398, scope: !858, inlinedAt: !816)
!863 = !DILocation(line: 196, column: 183, scope: !834, inlinedAt: !816)
!864 = !DILocation(line: 196, column: 2, scope: !834, inlinedAt: !816)
!865 = distinct !{!865, !836, !866}
!866 = !DILocation(line: 202, column: 2, scope: !822, inlinedAt: !816)
!867 = !DILocation(line: 204, column: 19, scope: !811, inlinedAt: !816)
!868 = !DILocation(line: 204, column: 24, scope: !811, inlinedAt: !816)
!869 = !DILocation(line: 204, column: 2, scope: !811, inlinedAt: !816)
!870 = !DILocation(line: 205, column: 1, scope: !811, inlinedAt: !816)
!871 = !DILocation(line: 265, column: 2, scope: !800, inlinedAt: !791)
!872 = !DILocation(line: 412, column: 15, scope: !749)
!873 = !DILocation(line: 412, column: 41, scope: !749)
!874 = !DILocation(line: 412, column: 22, scope: !749)
!875 = !DILocation(line: 412, column: 2, scope: !749)
!876 = !DILocation(line: 413, column: 1, scope: !749)
!877 = distinct !DISubprogram(name: "z_ready_thread", scope: !232, file: !232, line: 638, type: !468, scopeLine: 639, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !213)
!878 = !DILocalVariable(name: "thread", arg: 1, scope: !877, file: !232, line: 638, type: !101)
!879 = !DILocation(line: 638, column: 38, scope: !877)
!880 = !DILocalVariable(name: "__i", scope: !881, file: !232, line: 640, type: !561)
!881 = distinct !DILexicalBlock(scope: !877, file: !232, line: 640, column: 2)
!882 = !DILocation(line: 640, column: 24, scope: !881)
!883 = !DILocalVariable(name: "__key", scope: !881, file: !232, line: 640, type: !561)
!884 = !DILocation(line: 640, column: 34, scope: !881)
!885 = !DILocation(line: 160, column: 94, scope: !569, inlinedAt: !886)
!886 = distinct !DILocation(line: 640, column: 42, scope: !881)
!887 = !DILocation(line: 162, column: 9, scope: !569, inlinedAt: !886)
!888 = !DILocation(line: 163, column: 19, scope: !569, inlinedAt: !886)
!889 = !DILocation(line: 44, column: 15, scope: !579, inlinedAt: !890)
!890 = distinct !DILocation(line: 169, column: 10, scope: !569, inlinedAt: !886)
!891 = !DILocation(line: 48, column: 2, scope: !579, inlinedAt: !890)
!892 = !DILocation(line: 80, column: 9, scope: !579, inlinedAt: !890)
!893 = !DILocation(line: 169, column: 8, scope: !569, inlinedAt: !886)
!894 = !DILocation(line: 171, column: 26, scope: !569, inlinedAt: !886)
!895 = !DILocation(line: 110, column: 94, scope: !591, inlinedAt: !896)
!896 = distinct !DILocation(line: 171, column: 2, scope: !569, inlinedAt: !886)
!897 = !DILocation(line: 112, column: 9, scope: !591, inlinedAt: !896)
!898 = !DILocation(line: 177, column: 27, scope: !569, inlinedAt: !886)
!899 = !DILocation(line: 121, column: 95, scope: !599, inlinedAt: !900)
!900 = distinct !DILocation(line: 177, column: 2, scope: !569, inlinedAt: !886)
!901 = !DILocation(line: 123, column: 9, scope: !599, inlinedAt: !900)
!902 = !DILocation(line: 179, column: 2, scope: !569, inlinedAt: !886)
!903 = !DILocation(line: 640, column: 42, scope: !881)
!904 = !DILocation(line: 640, column: 7, scope: !881)
!905 = !DILocation(line: 640, column: 77, scope: !906)
!906 = distinct !DILexicalBlock(scope: !881, file: !232, line: 640, column: 2)
!907 = !DILocation(line: 640, column: 72, scope: !906)
!908 = !DILocation(line: 640, column: 2, scope: !881)
!909 = !DILocation(line: 641, column: 32, scope: !910)
!910 = distinct !DILexicalBlock(scope: !911, file: !232, line: 641, column: 7)
!911 = distinct !DILexicalBlock(scope: !906, file: !232, line: 640, column: 134)
!912 = !DILocation(line: 641, column: 8, scope: !910)
!913 = !DILocation(line: 641, column: 7, scope: !911)
!914 = !DILocation(line: 642, column: 17, scope: !915)
!915 = distinct !DILexicalBlock(scope: !910, file: !232, line: 641, column: 41)
!916 = !DILocation(line: 642, column: 4, scope: !915)
!917 = !DILocation(line: 643, column: 3, scope: !915)
!918 = !DILocation(line: 644, column: 2, scope: !911)
!919 = !DILocation(line: 640, column: 82, scope: !906)
!920 = !DILocation(line: 235, column: 84, scope: !621, inlinedAt: !921)
!921 = distinct !DILocation(line: 640, column: 82, scope: !906)
!922 = !DILocation(line: 236, column: 23, scope: !621, inlinedAt: !921)
!923 = !DILocation(line: 238, column: 9, scope: !621, inlinedAt: !921)
!924 = !DILocation(line: 261, column: 22, scope: !621, inlinedAt: !921)
!925 = !DILocation(line: 88, column: 80, scope: !631, inlinedAt: !926)
!926 = distinct !DILocation(line: 261, column: 2, scope: !621, inlinedAt: !921)
!927 = !DILocation(line: 91, column: 6, scope: !637, inlinedAt: !926)
!928 = !DILocation(line: 91, column: 10, scope: !637, inlinedAt: !926)
!929 = !DILocation(line: 91, column: 6, scope: !631, inlinedAt: !926)
!930 = !DILocation(line: 92, column: 3, scope: !641, inlinedAt: !926)
!931 = !DILocation(line: 94, column: 2, scope: !631, inlinedAt: !926)
!932 = !DILocation(line: 114, column: 1, scope: !631, inlinedAt: !926)
!933 = !DILocation(line: 640, column: 125, scope: !906)
!934 = !DILocation(line: 640, column: 129, scope: !906)
!935 = !DILocation(line: 640, column: 2, scope: !906)
!936 = distinct !{!936, !908, !937}
!937 = !DILocation(line: 644, column: 2, scope: !881)
!938 = !DILocation(line: 645, column: 1, scope: !877)
!939 = distinct !DISubprogram(name: "thread_active_elsewhere", scope: !232, file: !232, line: 598, type: !498, scopeLine: 599, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !213)
!940 = !DILocalVariable(name: "thread", arg: 1, scope: !939, file: !232, line: 598, type: !101)
!941 = !DILocation(line: 598, column: 55, scope: !939)
!942 = !DILocation(line: 616, column: 9, scope: !939)
!943 = !DILocation(line: 617, column: 2, scope: !939)
!944 = distinct !DISubprogram(name: "ready_thread", scope: !232, file: !232, line: 620, type: !468, scopeLine: 621, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !213)
!945 = !DILocalVariable(name: "thread", arg: 1, scope: !944, file: !232, line: 620, type: !101)
!946 = !DILocation(line: 620, column: 43, scope: !944)
!947 = !DILocation(line: 629, column: 26, scope: !948)
!948 = distinct !DILexicalBlock(scope: !944, file: !232, line: 629, column: 6)
!949 = !DILocation(line: 629, column: 7, scope: !948)
!950 = !DILocation(line: 629, column: 34, scope: !948)
!951 = !DILocation(line: 629, column: 55, scope: !948)
!952 = !DILocation(line: 629, column: 37, scope: !948)
!953 = !DILocation(line: 629, column: 6, scope: !944)
!954 = !DILocation(line: 630, column: 3, scope: !955)
!955 = distinct !DILexicalBlock(scope: !948, file: !232, line: 629, column: 64)
!956 = !DILocation(line: 630, column: 8, scope: !957)
!957 = distinct !DILexicalBlock(scope: !955, file: !232, line: 630, column: 6)
!958 = !DILocation(line: 632, column: 16, scope: !955)
!959 = !DILocation(line: 260, column: 81, scope: !789, inlinedAt: !960)
!960 = distinct !DILocation(line: 632, column: 3, scope: !955)
!961 = !DILocation(line: 262, column: 2, scope: !789, inlinedAt: !960)
!962 = !DILocation(line: 262, column: 15, scope: !789, inlinedAt: !960)
!963 = !DILocation(line: 262, column: 28, scope: !789, inlinedAt: !960)
!964 = !DILocation(line: 263, column: 26, scope: !796, inlinedAt: !960)
!965 = !DILocation(line: 263, column: 6, scope: !796, inlinedAt: !960)
!966 = !DILocation(line: 263, column: 6, scope: !789, inlinedAt: !960)
!967 = !DILocation(line: 264, column: 12, scope: !800, inlinedAt: !960)
!968 = !DILocation(line: 237, column: 77, scope: !802, inlinedAt: !969)
!969 = distinct !DILocation(line: 264, column: 3, scope: !800, inlinedAt: !960)
!970 = !DILocation(line: 239, column: 30, scope: !802, inlinedAt: !969)
!971 = !DILocation(line: 208, column: 81, scope: !777, inlinedAt: !972)
!972 = distinct !DILocation(line: 239, column: 18, scope: !802, inlinedAt: !969)
!973 = !DILocation(line: 223, column: 9, scope: !777, inlinedAt: !972)
!974 = !DILocation(line: 239, column: 39, scope: !802, inlinedAt: !969)
!975 = !DILocation(line: 189, column: 80, scope: !811, inlinedAt: !976)
!976 = distinct !DILocation(line: 239, column: 2, scope: !802, inlinedAt: !969)
!977 = !DILocation(line: 190, column: 25, scope: !811, inlinedAt: !976)
!978 = !DILocation(line: 192, column: 19, scope: !811, inlinedAt: !976)
!979 = !DILocation(line: 196, column: 33, scope: !822, inlinedAt: !976)
!980 = !DILocation(line: 196, column: 13, scope: !822, inlinedAt: !976)
!981 = !DILocation(line: 196, column: 37, scope: !822, inlinedAt: !976)
!982 = !DILocation(line: 196, column: 12, scope: !822, inlinedAt: !976)
!983 = !DILocation(line: 196, column: 100, scope: !827, inlinedAt: !976)
!984 = !DILocation(line: 196, column: 80, scope: !827, inlinedAt: !976)
!985 = !DILocation(line: 196, column: 46, scope: !822, inlinedAt: !976)
!986 = !DILocation(line: 196, column: 164, scope: !827, inlinedAt: !976)
!987 = !DILocation(line: 196, column: 9, scope: !822, inlinedAt: !976)
!988 = !DILocation(line: 196, column: 7, scope: !822, inlinedAt: !976)
!989 = !DILocation(line: 196, column: 173, scope: !834, inlinedAt: !976)
!990 = !DILocation(line: 196, column: 175, scope: !834, inlinedAt: !976)
!991 = !DILocation(line: 196, column: 2, scope: !822, inlinedAt: !976)
!992 = !DILocation(line: 197, column: 24, scope: !838, inlinedAt: !976)
!993 = !DILocation(line: 197, column: 32, scope: !838, inlinedAt: !976)
!994 = !DILocation(line: 197, column: 7, scope: !838, inlinedAt: !976)
!995 = !DILocation(line: 197, column: 35, scope: !838, inlinedAt: !976)
!996 = !DILocation(line: 197, column: 7, scope: !839, inlinedAt: !976)
!997 = !DILocation(line: 198, column: 22, scope: !845, inlinedAt: !976)
!998 = !DILocation(line: 199, column: 8, scope: !845, inlinedAt: !976)
!999 = !DILocation(line: 198, column: 4, scope: !845, inlinedAt: !976)
!1000 = !DILocation(line: 200, column: 4, scope: !845, inlinedAt: !976)
!1001 = !DILocation(line: 196, column: 187, scope: !834, inlinedAt: !976)
!1002 = !DILocation(line: 196, column: 189, scope: !834, inlinedAt: !976)
!1003 = !DILocation(line: 196, column: 186, scope: !834, inlinedAt: !976)
!1004 = !DILocation(line: 196, column: 219, scope: !834, inlinedAt: !976)
!1005 = !DILocation(line: 196, column: 225, scope: !834, inlinedAt: !976)
!1006 = !DILocation(line: 196, column: 199, scope: !834, inlinedAt: !976)
!1007 = !DILocation(line: 196, column: 247, scope: !834, inlinedAt: !976)
!1008 = !DILocation(line: 196, column: 198, scope: !834, inlinedAt: !976)
!1009 = !DILocation(line: 196, column: 310, scope: !858, inlinedAt: !976)
!1010 = !DILocation(line: 196, column: 316, scope: !858, inlinedAt: !976)
!1011 = !DILocation(line: 196, column: 290, scope: !858, inlinedAt: !976)
!1012 = !DILocation(line: 196, column: 256, scope: !834, inlinedAt: !976)
!1013 = !DILocation(line: 196, column: 398, scope: !858, inlinedAt: !976)
!1014 = !DILocation(line: 196, column: 183, scope: !834, inlinedAt: !976)
!1015 = !DILocation(line: 196, column: 2, scope: !834, inlinedAt: !976)
!1016 = distinct !{!1016, !991, !1017}
!1017 = !DILocation(line: 202, column: 2, scope: !822, inlinedAt: !976)
!1018 = !DILocation(line: 204, column: 19, scope: !811, inlinedAt: !976)
!1019 = !DILocation(line: 204, column: 24, scope: !811, inlinedAt: !976)
!1020 = !DILocation(line: 204, column: 2, scope: !811, inlinedAt: !976)
!1021 = !DILocation(line: 205, column: 1, scope: !811, inlinedAt: !976)
!1022 = !DILocation(line: 265, column: 2, scope: !800, inlinedAt: !960)
!1023 = !DILocation(line: 633, column: 3, scope: !955)
!1024 = !DILocation(line: 634, column: 3, scope: !955)
!1025 = !DILocation(line: 635, column: 2, scope: !955)
!1026 = !DILocation(line: 636, column: 1, scope: !944)
!1027 = distinct !DISubprogram(name: "z_move_thread_to_end_of_prio_q", scope: !232, file: !232, line: 647, type: !468, scopeLine: 648, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !213)
!1028 = !DILocalVariable(name: "thread", arg: 1, scope: !1027, file: !232, line: 647, type: !101)
!1029 = !DILocation(line: 647, column: 54, scope: !1027)
!1030 = !DILocalVariable(name: "__i", scope: !1031, file: !232, line: 649, type: !561)
!1031 = distinct !DILexicalBlock(scope: !1027, file: !232, line: 649, column: 2)
!1032 = !DILocation(line: 649, column: 24, scope: !1031)
!1033 = !DILocalVariable(name: "__key", scope: !1031, file: !232, line: 649, type: !561)
!1034 = !DILocation(line: 649, column: 34, scope: !1031)
!1035 = !DILocation(line: 160, column: 94, scope: !569, inlinedAt: !1036)
!1036 = distinct !DILocation(line: 649, column: 42, scope: !1031)
!1037 = !DILocation(line: 162, column: 9, scope: !569, inlinedAt: !1036)
!1038 = !DILocation(line: 163, column: 19, scope: !569, inlinedAt: !1036)
!1039 = !DILocation(line: 44, column: 15, scope: !579, inlinedAt: !1040)
!1040 = distinct !DILocation(line: 169, column: 10, scope: !569, inlinedAt: !1036)
!1041 = !DILocation(line: 48, column: 2, scope: !579, inlinedAt: !1040)
!1042 = !DILocation(line: 80, column: 9, scope: !579, inlinedAt: !1040)
!1043 = !DILocation(line: 169, column: 8, scope: !569, inlinedAt: !1036)
!1044 = !DILocation(line: 171, column: 26, scope: !569, inlinedAt: !1036)
!1045 = !DILocation(line: 110, column: 94, scope: !591, inlinedAt: !1046)
!1046 = distinct !DILocation(line: 171, column: 2, scope: !569, inlinedAt: !1036)
!1047 = !DILocation(line: 112, column: 9, scope: !591, inlinedAt: !1046)
!1048 = !DILocation(line: 177, column: 27, scope: !569, inlinedAt: !1036)
!1049 = !DILocation(line: 121, column: 95, scope: !599, inlinedAt: !1050)
!1050 = distinct !DILocation(line: 177, column: 2, scope: !569, inlinedAt: !1036)
!1051 = !DILocation(line: 123, column: 9, scope: !599, inlinedAt: !1050)
!1052 = !DILocation(line: 179, column: 2, scope: !569, inlinedAt: !1036)
!1053 = !DILocation(line: 649, column: 42, scope: !1031)
!1054 = !DILocation(line: 649, column: 7, scope: !1031)
!1055 = !DILocation(line: 649, column: 77, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1031, file: !232, line: 649, column: 2)
!1057 = !DILocation(line: 649, column: 72, scope: !1056)
!1058 = !DILocation(line: 649, column: 2, scope: !1031)
!1059 = !DILocation(line: 650, column: 32, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1056, file: !232, line: 649, column: 134)
!1061 = !DILocation(line: 650, column: 3, scope: !1060)
!1062 = !DILocation(line: 651, column: 2, scope: !1060)
!1063 = !DILocation(line: 649, column: 82, scope: !1056)
!1064 = !DILocation(line: 235, column: 84, scope: !621, inlinedAt: !1065)
!1065 = distinct !DILocation(line: 649, column: 82, scope: !1056)
!1066 = !DILocation(line: 236, column: 23, scope: !621, inlinedAt: !1065)
!1067 = !DILocation(line: 238, column: 9, scope: !621, inlinedAt: !1065)
!1068 = !DILocation(line: 261, column: 22, scope: !621, inlinedAt: !1065)
!1069 = !DILocation(line: 88, column: 80, scope: !631, inlinedAt: !1070)
!1070 = distinct !DILocation(line: 261, column: 2, scope: !621, inlinedAt: !1065)
!1071 = !DILocation(line: 91, column: 6, scope: !637, inlinedAt: !1070)
!1072 = !DILocation(line: 91, column: 10, scope: !637, inlinedAt: !1070)
!1073 = !DILocation(line: 91, column: 6, scope: !631, inlinedAt: !1070)
!1074 = !DILocation(line: 92, column: 3, scope: !641, inlinedAt: !1070)
!1075 = !DILocation(line: 94, column: 2, scope: !631, inlinedAt: !1070)
!1076 = !DILocation(line: 114, column: 1, scope: !631, inlinedAt: !1070)
!1077 = !DILocation(line: 649, column: 125, scope: !1056)
!1078 = !DILocation(line: 649, column: 129, scope: !1056)
!1079 = !DILocation(line: 649, column: 2, scope: !1056)
!1080 = distinct !{!1080, !1058, !1081}
!1081 = !DILocation(line: 651, column: 2, scope: !1031)
!1082 = !DILocation(line: 652, column: 1, scope: !1027)
!1083 = distinct !DISubprogram(name: "z_sched_start", scope: !232, file: !232, line: 654, type: !468, scopeLine: 655, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !213)
!1084 = !DILocalVariable(name: "thread", arg: 1, scope: !1083, file: !232, line: 654, type: !101)
!1085 = !DILocation(line: 654, column: 37, scope: !1083)
!1086 = !DILocalVariable(name: "key", scope: !1083, file: !232, line: 656, type: !561)
!1087 = !DILocation(line: 656, column: 19, scope: !1083)
!1088 = !DILocation(line: 160, column: 94, scope: !569, inlinedAt: !1089)
!1089 = distinct !DILocation(line: 656, column: 25, scope: !1083)
!1090 = !DILocation(line: 162, column: 9, scope: !569, inlinedAt: !1089)
!1091 = !DILocation(line: 163, column: 19, scope: !569, inlinedAt: !1089)
!1092 = !DILocation(line: 44, column: 15, scope: !579, inlinedAt: !1093)
!1093 = distinct !DILocation(line: 169, column: 10, scope: !569, inlinedAt: !1089)
!1094 = !DILocation(line: 48, column: 2, scope: !579, inlinedAt: !1093)
!1095 = !DILocation(line: 80, column: 9, scope: !579, inlinedAt: !1093)
!1096 = !DILocation(line: 169, column: 8, scope: !569, inlinedAt: !1089)
!1097 = !DILocation(line: 171, column: 26, scope: !569, inlinedAt: !1089)
!1098 = !DILocation(line: 110, column: 94, scope: !591, inlinedAt: !1099)
!1099 = distinct !DILocation(line: 171, column: 2, scope: !569, inlinedAt: !1089)
!1100 = !DILocation(line: 112, column: 9, scope: !591, inlinedAt: !1099)
!1101 = !DILocation(line: 177, column: 27, scope: !569, inlinedAt: !1089)
!1102 = !DILocation(line: 121, column: 95, scope: !599, inlinedAt: !1103)
!1103 = distinct !DILocation(line: 177, column: 2, scope: !569, inlinedAt: !1089)
!1104 = !DILocation(line: 123, column: 9, scope: !599, inlinedAt: !1103)
!1105 = !DILocation(line: 179, column: 2, scope: !569, inlinedAt: !1089)
!1106 = !DILocation(line: 656, column: 25, scope: !1083)
!1107 = !DILocation(line: 658, column: 27, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1083, file: !232, line: 658, column: 6)
!1109 = !DILocation(line: 658, column: 6, scope: !1108)
!1110 = !DILocation(line: 658, column: 6, scope: !1083)
!1111 = !DILocation(line: 659, column: 3, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !1108, file: !232, line: 658, column: 36)
!1113 = !DILocation(line: 235, column: 84, scope: !621, inlinedAt: !1114)
!1114 = distinct !DILocation(line: 659, column: 3, scope: !1112)
!1115 = !DILocation(line: 236, column: 23, scope: !621, inlinedAt: !1114)
!1116 = !DILocation(line: 238, column: 9, scope: !621, inlinedAt: !1114)
!1117 = !DILocation(line: 261, column: 22, scope: !621, inlinedAt: !1114)
!1118 = !DILocation(line: 88, column: 80, scope: !631, inlinedAt: !1119)
!1119 = distinct !DILocation(line: 261, column: 2, scope: !621, inlinedAt: !1114)
!1120 = !DILocation(line: 91, column: 6, scope: !637, inlinedAt: !1119)
!1121 = !DILocation(line: 91, column: 10, scope: !637, inlinedAt: !1119)
!1122 = !DILocation(line: 91, column: 6, scope: !631, inlinedAt: !1119)
!1123 = !DILocation(line: 92, column: 3, scope: !641, inlinedAt: !1119)
!1124 = !DILocation(line: 94, column: 2, scope: !631, inlinedAt: !1119)
!1125 = !DILocation(line: 114, column: 1, scope: !631, inlinedAt: !1119)
!1126 = !DILocation(line: 660, column: 3, scope: !1112)
!1127 = !DILocation(line: 663, column: 27, scope: !1083)
!1128 = !DILocation(line: 663, column: 2, scope: !1083)
!1129 = !DILocation(line: 664, column: 15, scope: !1083)
!1130 = !DILocation(line: 664, column: 2, scope: !1083)
!1131 = !DILocation(line: 665, column: 2, scope: !1083)
!1132 = !DILocation(line: 666, column: 1, scope: !1083)
!1133 = distinct !DISubprogram(name: "z_has_thread_started", scope: !737, file: !737, line: 128, type: !498, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !213)
!1134 = !DILocalVariable(name: "thread", arg: 1, scope: !1133, file: !737, line: 128, type: !101)
!1135 = !DILocation(line: 128, column: 59, scope: !1133)
!1136 = !DILocation(line: 130, column: 10, scope: !1133)
!1137 = !DILocation(line: 130, column: 18, scope: !1133)
!1138 = !DILocation(line: 130, column: 23, scope: !1133)
!1139 = !DILocation(line: 130, column: 36, scope: !1133)
!1140 = !DILocation(line: 130, column: 54, scope: !1133)
!1141 = !DILocation(line: 130, column: 2, scope: !1133)
!1142 = distinct !DISubprogram(name: "z_mark_thread_as_started", scope: !737, file: !737, line: 157, type: !468, scopeLine: 158, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !213)
!1143 = !DILocalVariable(name: "thread", arg: 1, scope: !1142, file: !737, line: 157, type: !101)
!1144 = !DILocation(line: 157, column: 62, scope: !1142)
!1145 = !DILocation(line: 159, column: 2, scope: !1142)
!1146 = !DILocation(line: 159, column: 10, scope: !1142)
!1147 = !DILocation(line: 159, column: 15, scope: !1142)
!1148 = !DILocation(line: 159, column: 28, scope: !1142)
!1149 = !DILocation(line: 160, column: 1, scope: !1142)
!1150 = distinct !DISubprogram(name: "z_reschedule", scope: !232, file: !232, line: 991, type: !622, scopeLine: 992, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !213)
!1151 = !DILocalVariable(name: "lock", arg: 1, scope: !1150, file: !232, line: 991, type: !572)
!1152 = !DILocation(line: 991, column: 38, scope: !1150)
!1153 = !DILocalVariable(name: "key", arg: 2, scope: !1150, file: !232, line: 991, type: !561)
!1154 = !DILocation(line: 991, column: 61, scope: !1150)
!1155 = !DILocation(line: 993, column: 18, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !1150, file: !232, line: 993, column: 6)
!1157 = !DILocation(line: 993, column: 6, scope: !1156)
!1158 = !DILocation(line: 993, column: 23, scope: !1156)
!1159 = !DILocation(line: 993, column: 26, scope: !1156)
!1160 = !DILocation(line: 993, column: 6, scope: !1150)
!1161 = !DILocation(line: 994, column: 10, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1156, file: !232, line: 993, column: 39)
!1163 = !DILocation(line: 994, column: 3, scope: !1162)
!1164 = !DILocalVariable(name: "lock", arg: 1, scope: !1165, file: !1166, line: 217, type: !572)
!1165 = distinct !DISubprogram(name: "z_swap", scope: !1166, file: !1166, line: 217, type: !1167, scopeLine: 218, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !213)
!1166 = !DIFile(filename: "kernel/include/kswap.h", directory: "/home/sri/zephyrproject/zephyr")
!1167 = !DISubroutineType(types: !1168)
!1168 = !{!192, !572, !561}
!1169 = !DILocation(line: 217, column: 76, scope: !1165, inlinedAt: !1170)
!1170 = distinct !DILocation(line: 994, column: 3, scope: !1162)
!1171 = !DILocalVariable(name: "key", arg: 2, scope: !1165, file: !1166, line: 217, type: !561)
!1172 = !DILocation(line: 217, column: 99, scope: !1165, inlinedAt: !1170)
!1173 = !DILocation(line: 219, column: 17, scope: !1165, inlinedAt: !1170)
!1174 = !DILocalVariable(name: "l", arg: 1, scope: !1175, file: !212, line: 283, type: !572)
!1175 = distinct !DISubprogram(name: "k_spin_release", scope: !212, file: !212, line: 283, type: !592, scopeLine: 284, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !213)
!1176 = !DILocation(line: 283, column: 85, scope: !1175, inlinedAt: !1177)
!1177 = distinct !DILocation(line: 219, column: 2, scope: !1165, inlinedAt: !1170)
!1178 = !DILocation(line: 285, column: 9, scope: !1175, inlinedAt: !1177)
!1179 = !DILocation(line: 220, column: 28, scope: !1165, inlinedAt: !1170)
!1180 = !DILocation(line: 220, column: 9, scope: !1165, inlinedAt: !1170)
!1181 = !DILocation(line: 995, column: 2, scope: !1162)
!1182 = !DILocation(line: 996, column: 17, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !1156, file: !232, line: 995, column: 9)
!1184 = !DILocation(line: 996, column: 3, scope: !1183)
!1185 = !DILocation(line: 235, column: 84, scope: !621, inlinedAt: !1186)
!1186 = distinct !DILocation(line: 996, column: 3, scope: !1183)
!1187 = !DILocation(line: 236, column: 23, scope: !621, inlinedAt: !1186)
!1188 = !DILocation(line: 238, column: 9, scope: !621, inlinedAt: !1186)
!1189 = !DILocation(line: 261, column: 22, scope: !621, inlinedAt: !1186)
!1190 = !DILocation(line: 88, column: 80, scope: !631, inlinedAt: !1191)
!1191 = distinct !DILocation(line: 261, column: 2, scope: !621, inlinedAt: !1186)
!1192 = !DILocation(line: 91, column: 6, scope: !637, inlinedAt: !1191)
!1193 = !DILocation(line: 91, column: 10, scope: !637, inlinedAt: !1191)
!1194 = !DILocation(line: 91, column: 6, scope: !631, inlinedAt: !1191)
!1195 = !DILocation(line: 92, column: 3, scope: !641, inlinedAt: !1191)
!1196 = !DILocation(line: 94, column: 2, scope: !631, inlinedAt: !1191)
!1197 = !DILocation(line: 114, column: 1, scope: !631, inlinedAt: !1191)
!1198 = !DILocation(line: 997, column: 3, scope: !1183)
!1199 = !DILocation(line: 999, column: 1, scope: !1150)
!1200 = distinct !DISubprogram(name: "z_impl_k_thread_suspend", scope: !232, file: !232, line: 668, type: !468, scopeLine: 669, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !213)
!1201 = !DILocalVariable(name: "thread", arg: 1, scope: !1200, file: !232, line: 668, type: !101)
!1202 = !DILocation(line: 668, column: 47, scope: !1200)
!1203 = !DILocation(line: 670, column: 2, scope: !1200)
!1204 = !DILocation(line: 670, column: 7, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !1200, file: !232, line: 670, column: 5)
!1206 = !DILocation(line: 672, column: 31, scope: !1200)
!1207 = !DILocation(line: 672, column: 8, scope: !1200)
!1208 = !DILocalVariable(name: "__i", scope: !1209, file: !232, line: 674, type: !561)
!1209 = distinct !DILexicalBlock(scope: !1200, file: !232, line: 674, column: 2)
!1210 = !DILocation(line: 674, column: 24, scope: !1209)
!1211 = !DILocalVariable(name: "__key", scope: !1209, file: !232, line: 674, type: !561)
!1212 = !DILocation(line: 674, column: 34, scope: !1209)
!1213 = !DILocation(line: 160, column: 94, scope: !569, inlinedAt: !1214)
!1214 = distinct !DILocation(line: 674, column: 42, scope: !1209)
!1215 = !DILocation(line: 162, column: 9, scope: !569, inlinedAt: !1214)
!1216 = !DILocation(line: 163, column: 19, scope: !569, inlinedAt: !1214)
!1217 = !DILocation(line: 44, column: 15, scope: !579, inlinedAt: !1218)
!1218 = distinct !DILocation(line: 169, column: 10, scope: !569, inlinedAt: !1214)
!1219 = !DILocation(line: 48, column: 2, scope: !579, inlinedAt: !1218)
!1220 = !DILocation(line: 80, column: 9, scope: !579, inlinedAt: !1218)
!1221 = !DILocation(line: 169, column: 8, scope: !569, inlinedAt: !1214)
!1222 = !DILocation(line: 171, column: 26, scope: !569, inlinedAt: !1214)
!1223 = !DILocation(line: 110, column: 94, scope: !591, inlinedAt: !1224)
!1224 = distinct !DILocation(line: 171, column: 2, scope: !569, inlinedAt: !1214)
!1225 = !DILocation(line: 112, column: 9, scope: !591, inlinedAt: !1224)
!1226 = !DILocation(line: 177, column: 27, scope: !569, inlinedAt: !1214)
!1227 = !DILocation(line: 121, column: 95, scope: !599, inlinedAt: !1228)
!1228 = distinct !DILocation(line: 177, column: 2, scope: !569, inlinedAt: !1214)
!1229 = !DILocation(line: 123, column: 9, scope: !599, inlinedAt: !1228)
!1230 = !DILocation(line: 179, column: 2, scope: !569, inlinedAt: !1214)
!1231 = !DILocation(line: 674, column: 42, scope: !1209)
!1232 = !DILocation(line: 674, column: 7, scope: !1209)
!1233 = !DILocation(line: 674, column: 77, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !1209, file: !232, line: 674, column: 2)
!1235 = !DILocation(line: 674, column: 72, scope: !1234)
!1236 = !DILocation(line: 674, column: 2, scope: !1209)
!1237 = !DILocation(line: 675, column: 26, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1239, file: !232, line: 675, column: 7)
!1239 = distinct !DILexicalBlock(scope: !1234, file: !232, line: 674, column: 134)
!1240 = !DILocation(line: 675, column: 7, scope: !1238)
!1241 = !DILocation(line: 675, column: 7, scope: !1239)
!1242 = !DILocation(line: 676, column: 19, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1238, file: !232, line: 675, column: 35)
!1244 = !DILocation(line: 274, column: 83, scope: !759, inlinedAt: !1245)
!1245 = distinct !DILocation(line: 676, column: 4, scope: !1243)
!1246 = !DILocation(line: 276, column: 2, scope: !759, inlinedAt: !1245)
!1247 = !DILocation(line: 276, column: 15, scope: !759, inlinedAt: !1245)
!1248 = !DILocation(line: 276, column: 28, scope: !759, inlinedAt: !1245)
!1249 = !DILocation(line: 277, column: 26, scope: !766, inlinedAt: !1245)
!1250 = !DILocation(line: 277, column: 6, scope: !766, inlinedAt: !1245)
!1251 = !DILocation(line: 277, column: 6, scope: !759, inlinedAt: !1245)
!1252 = !DILocation(line: 278, column: 15, scope: !770, inlinedAt: !1245)
!1253 = !DILocation(line: 242, column: 80, scope: !772, inlinedAt: !1254)
!1254 = distinct !DILocation(line: 278, column: 3, scope: !770, inlinedAt: !1245)
!1255 = !DILocation(line: 244, column: 33, scope: !772, inlinedAt: !1254)
!1256 = !DILocation(line: 208, column: 81, scope: !777, inlinedAt: !1257)
!1257 = distinct !DILocation(line: 244, column: 21, scope: !772, inlinedAt: !1254)
!1258 = !DILocation(line: 223, column: 9, scope: !777, inlinedAt: !1257)
!1259 = !DILocation(line: 244, column: 42, scope: !772, inlinedAt: !1254)
!1260 = !DILocation(line: 244, column: 2, scope: !772, inlinedAt: !1254)
!1261 = !DILocation(line: 279, column: 2, scope: !770, inlinedAt: !1245)
!1262 = !DILocation(line: 677, column: 3, scope: !1243)
!1263 = !DILocation(line: 678, column: 30, scope: !1239)
!1264 = !DILocation(line: 678, column: 3, scope: !1239)
!1265 = !DILocation(line: 679, column: 16, scope: !1239)
!1266 = !DILocation(line: 679, column: 42, scope: !1239)
!1267 = !DILocation(line: 679, column: 23, scope: !1239)
!1268 = !DILocation(line: 679, column: 3, scope: !1239)
!1269 = !DILocation(line: 680, column: 2, scope: !1239)
!1270 = !DILocation(line: 674, column: 82, scope: !1234)
!1271 = !DILocation(line: 235, column: 84, scope: !621, inlinedAt: !1272)
!1272 = distinct !DILocation(line: 674, column: 82, scope: !1234)
!1273 = !DILocation(line: 236, column: 23, scope: !621, inlinedAt: !1272)
!1274 = !DILocation(line: 238, column: 9, scope: !621, inlinedAt: !1272)
!1275 = !DILocation(line: 261, column: 22, scope: !621, inlinedAt: !1272)
!1276 = !DILocation(line: 88, column: 80, scope: !631, inlinedAt: !1277)
!1277 = distinct !DILocation(line: 261, column: 2, scope: !621, inlinedAt: !1272)
!1278 = !DILocation(line: 91, column: 6, scope: !637, inlinedAt: !1277)
!1279 = !DILocation(line: 91, column: 10, scope: !637, inlinedAt: !1277)
!1280 = !DILocation(line: 91, column: 6, scope: !631, inlinedAt: !1277)
!1281 = !DILocation(line: 92, column: 3, scope: !641, inlinedAt: !1277)
!1282 = !DILocation(line: 94, column: 2, scope: !631, inlinedAt: !1277)
!1283 = !DILocation(line: 114, column: 1, scope: !631, inlinedAt: !1277)
!1284 = !DILocation(line: 674, column: 125, scope: !1234)
!1285 = !DILocation(line: 674, column: 129, scope: !1234)
!1286 = !DILocation(line: 674, column: 2, scope: !1234)
!1287 = distinct !{!1287, !1236, !1288}
!1288 = !DILocation(line: 680, column: 2, scope: !1209)
!1289 = !DILocation(line: 682, column: 6, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1200, file: !232, line: 682, column: 6)
!1291 = !DILocation(line: 682, column: 32, scope: !1290)
!1292 = !DILocation(line: 682, column: 13, scope: !1290)
!1293 = !DILocation(line: 682, column: 6, scope: !1200)
!1294 = !DILocation(line: 683, column: 3, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1290, file: !232, line: 682, column: 41)
!1296 = !DILocation(line: 684, column: 2, scope: !1295)
!1297 = !DILocation(line: 686, column: 2, scope: !1200)
!1298 = !DILocation(line: 686, column: 7, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1200, file: !232, line: 686, column: 5)
!1300 = !DILocation(line: 687, column: 1, scope: !1200)
!1301 = distinct !DISubprogram(name: "z_abort_thread_timeout", scope: !1302, file: !1302, line: 52, type: !542, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !213)
!1302 = !DIFile(filename: "kernel/include/timeout_q.h", directory: "/home/sri/zephyrproject/zephyr")
!1303 = !DILocalVariable(name: "thread", arg: 1, scope: !1301, file: !1302, line: 52, type: !101)
!1304 = !DILocation(line: 52, column: 59, scope: !1301)
!1305 = !DILocation(line: 54, column: 26, scope: !1301)
!1306 = !DILocation(line: 54, column: 34, scope: !1301)
!1307 = !DILocation(line: 54, column: 39, scope: !1301)
!1308 = !DILocation(line: 54, column: 9, scope: !1301)
!1309 = !DILocation(line: 54, column: 2, scope: !1301)
!1310 = distinct !DISubprogram(name: "z_is_thread_queued", scope: !737, file: !737, line: 138, type: !498, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !213)
!1311 = !DILocalVariable(name: "thread", arg: 1, scope: !1310, file: !737, line: 138, type: !101)
!1312 = !DILocation(line: 138, column: 57, scope: !1310)
!1313 = !DILocation(line: 140, column: 31, scope: !1310)
!1314 = !DILocation(line: 140, column: 9, scope: !1310)
!1315 = !DILocation(line: 140, column: 2, scope: !1310)
!1316 = distinct !DISubprogram(name: "z_mark_thread_as_suspended", scope: !737, file: !737, line: 143, type: !468, scopeLine: 144, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !213)
!1317 = !DILocalVariable(name: "thread", arg: 1, scope: !1316, file: !737, line: 143, type: !101)
!1318 = !DILocation(line: 143, column: 64, scope: !1316)
!1319 = !DILocation(line: 145, column: 2, scope: !1316)
!1320 = !DILocation(line: 145, column: 10, scope: !1316)
!1321 = !DILocation(line: 145, column: 15, scope: !1316)
!1322 = !DILocation(line: 145, column: 28, scope: !1316)
!1323 = !DILocation(line: 147, column: 2, scope: !1316)
!1324 = !DILocation(line: 147, column: 7, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1316, file: !737, line: 147, column: 5)
!1326 = !DILocation(line: 148, column: 1, scope: !1316)
!1327 = distinct !DISubprogram(name: "update_cache", scope: !232, file: !232, line: 570, type: !1328, scopeLine: 571, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !213)
!1328 = !DISubroutineType(types: !1329)
!1329 = !{null, !192}
!1330 = !DILocalVariable(name: "preempt_ok", arg: 1, scope: !1327, file: !232, line: 570, type: !192)
!1331 = !DILocation(line: 570, column: 30, scope: !1327)
!1332 = !DILocalVariable(name: "thread", scope: !1327, file: !232, line: 573, type: !101)
!1333 = !DILocation(line: 573, column: 19, scope: !1327)
!1334 = !DILocalVariable(name: "thread", scope: !1335, file: !232, line: 330, type: !101)
!1335 = distinct !DISubprogram(name: "next_up", scope: !232, file: !232, line: 322, type: !1336, scopeLine: 323, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !213)
!1336 = !DISubroutineType(types: !1337)
!1337 = !{!101}
!1338 = !DILocation(line: 330, column: 19, scope: !1335, inlinedAt: !1339)
!1339 = distinct !DILocation(line: 573, column: 28, scope: !1327)
!1340 = !DILocation(line: 249, column: 9, scope: !1341, inlinedAt: !1342)
!1341 = distinct !DISubprogram(name: "runq_best", scope: !232, file: !232, line: 247, type: !1336, scopeLine: 248, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !213)
!1342 = distinct !DILocation(line: 330, column: 28, scope: !1335, inlinedAt: !1339)
!1343 = !DILocation(line: 357, column: 10, scope: !1335, inlinedAt: !1339)
!1344 = !DILocation(line: 357, column: 17, scope: !1335, inlinedAt: !1339)
!1345 = !DILocation(line: 357, column: 9, scope: !1335, inlinedAt: !1339)
!1346 = !DILocation(line: 357, column: 25, scope: !1335, inlinedAt: !1339)
!1347 = !DILocation(line: 357, column: 54, scope: !1335, inlinedAt: !1339)
!1348 = !DILocation(line: 575, column: 21, scope: !1349)
!1349 = distinct !DILexicalBlock(scope: !1327, file: !232, line: 575, column: 6)
!1350 = !DILocation(line: 575, column: 29, scope: !1349)
!1351 = !DILocalVariable(name: "thread", arg: 1, scope: !1352, file: !232, line: 134, type: !101)
!1352 = distinct !DISubprogram(name: "should_preempt", scope: !232, file: !232, line: 134, type: !1353, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !213)
!1353 = !DISubroutineType(types: !1354)
!1354 = !{!236, !101, !192}
!1355 = !DILocation(line: 134, column: 84, scope: !1352, inlinedAt: !1356)
!1356 = distinct !DILocation(line: 575, column: 6, scope: !1349)
!1357 = !DILocalVariable(name: "preempt_ok", arg: 2, scope: !1352, file: !232, line: 135, type: !192)
!1358 = !DILocation(line: 135, column: 11, scope: !1352, inlinedAt: !1356)
!1359 = !DILocation(line: 140, column: 6, scope: !1360, inlinedAt: !1356)
!1360 = distinct !DILexicalBlock(scope: !1352, file: !232, line: 140, column: 6)
!1361 = !DILocation(line: 140, column: 17, scope: !1360, inlinedAt: !1356)
!1362 = !DILocation(line: 140, column: 6, scope: !1352, inlinedAt: !1356)
!1363 = !DILocation(line: 141, column: 3, scope: !1364, inlinedAt: !1356)
!1364 = distinct !DILexicalBlock(scope: !1360, file: !232, line: 140, column: 23)
!1365 = !DILocation(line: 147, column: 57, scope: !1366, inlinedAt: !1356)
!1366 = distinct !DILexicalBlock(scope: !1352, file: !232, line: 147, column: 6)
!1367 = !DILocation(line: 147, column: 6, scope: !1366, inlinedAt: !1356)
!1368 = !DILocation(line: 147, column: 6, scope: !1352, inlinedAt: !1356)
!1369 = !DILocation(line: 148, column: 3, scope: !1370, inlinedAt: !1356)
!1370 = distinct !DILexicalBlock(scope: !1366, file: !232, line: 147, column: 67)
!1371 = !DILocation(line: 157, column: 36, scope: !1372, inlinedAt: !1356)
!1372 = distinct !DILexicalBlock(scope: !1352, file: !232, line: 156, column: 6)
!1373 = !DILocation(line: 157, column: 9, scope: !1372, inlinedAt: !1356)
!1374 = !DILocation(line: 156, column: 6, scope: !1352, inlinedAt: !1356)
!1375 = !DILocation(line: 158, column: 3, scope: !1376, inlinedAt: !1356)
!1376 = distinct !DILexicalBlock(scope: !1372, file: !232, line: 157, column: 45)
!1377 = !DILocation(line: 164, column: 33, scope: !1378, inlinedAt: !1356)
!1378 = distinct !DILexicalBlock(scope: !1352, file: !232, line: 164, column: 6)
!1379 = !DILocation(line: 164, column: 6, scope: !1378, inlinedAt: !1356)
!1380 = !DILocation(line: 164, column: 42, scope: !1378, inlinedAt: !1356)
!1381 = !DILocation(line: 164, column: 56, scope: !1378, inlinedAt: !1356)
!1382 = !DILocation(line: 164, column: 45, scope: !1378, inlinedAt: !1356)
!1383 = !DILocation(line: 164, column: 6, scope: !1352, inlinedAt: !1356)
!1384 = !DILocation(line: 165, column: 3, scope: !1385, inlinedAt: !1356)
!1385 = distinct !DILexicalBlock(scope: !1378, file: !232, line: 164, column: 65)
!1386 = !DILocation(line: 168, column: 2, scope: !1352, inlinedAt: !1356)
!1387 = !DILocation(line: 169, column: 1, scope: !1352, inlinedAt: !1356)
!1388 = !DILocation(line: 575, column: 6, scope: !1327)
!1389 = !DILocation(line: 577, column: 7, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1391, file: !232, line: 577, column: 7)
!1391 = distinct !DILexicalBlock(scope: !1349, file: !232, line: 575, column: 42)
!1392 = !DILocation(line: 577, column: 33, scope: !1390)
!1393 = !DILocation(line: 577, column: 14, scope: !1390)
!1394 = !DILocation(line: 577, column: 7, scope: !1391)
!1395 = !DILocation(line: 578, column: 23, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1390, file: !232, line: 577, column: 42)
!1397 = !DILocation(line: 578, column: 4, scope: !1396)
!1398 = !DILocation(line: 579, column: 3, scope: !1396)
!1399 = !DILocation(line: 581, column: 26, scope: !1391)
!1400 = !DILocation(line: 581, column: 3, scope: !1391)
!1401 = !DILocation(line: 582, column: 27, scope: !1391)
!1402 = !DILocation(line: 582, column: 25, scope: !1391)
!1403 = !DILocation(line: 583, column: 2, scope: !1391)
!1404 = !DILocation(line: 584, column: 43, scope: !1405)
!1405 = distinct !DILexicalBlock(scope: !1349, file: !232, line: 583, column: 9)
!1406 = !DILocation(line: 584, column: 25, scope: !1405)
!1407 = !DILocation(line: 596, column: 1, scope: !1327)
!1408 = distinct !DISubprogram(name: "z_reschedule_unlocked", scope: !737, file: !737, line: 75, type: !652, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !213)
!1409 = !DILocation(line: 44, column: 15, scope: !579, inlinedAt: !1410)
!1410 = distinct !DILocation(line: 77, column: 30, scope: !1408)
!1411 = !DILocation(line: 48, column: 2, scope: !579, inlinedAt: !1410)
!1412 = !DILocation(line: 80, column: 9, scope: !579, inlinedAt: !1410)
!1413 = !DILocation(line: 77, column: 9, scope: !1408)
!1414 = !DILocation(line: 78, column: 1, scope: !1408)
!1415 = distinct !DISubprogram(name: "z_impl_k_thread_resume", scope: !232, file: !232, line: 698, type: !468, scopeLine: 699, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !213)
!1416 = !DILocalVariable(name: "thread", arg: 1, scope: !1415, file: !232, line: 698, type: !101)
!1417 = !DILocation(line: 698, column: 46, scope: !1415)
!1418 = !DILocation(line: 700, column: 2, scope: !1415)
!1419 = !DILocation(line: 700, column: 7, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1415, file: !232, line: 700, column: 5)
!1421 = !DILocalVariable(name: "key", scope: !1415, file: !232, line: 702, type: !561)
!1422 = !DILocation(line: 702, column: 19, scope: !1415)
!1423 = !DILocation(line: 160, column: 94, scope: !569, inlinedAt: !1424)
!1424 = distinct !DILocation(line: 702, column: 25, scope: !1415)
!1425 = !DILocation(line: 162, column: 9, scope: !569, inlinedAt: !1424)
!1426 = !DILocation(line: 163, column: 19, scope: !569, inlinedAt: !1424)
!1427 = !DILocation(line: 44, column: 15, scope: !579, inlinedAt: !1428)
!1428 = distinct !DILocation(line: 169, column: 10, scope: !569, inlinedAt: !1424)
!1429 = !DILocation(line: 48, column: 2, scope: !579, inlinedAt: !1428)
!1430 = !DILocation(line: 80, column: 9, scope: !579, inlinedAt: !1428)
!1431 = !DILocation(line: 169, column: 8, scope: !569, inlinedAt: !1424)
!1432 = !DILocation(line: 171, column: 26, scope: !569, inlinedAt: !1424)
!1433 = !DILocation(line: 110, column: 94, scope: !591, inlinedAt: !1434)
!1434 = distinct !DILocation(line: 171, column: 2, scope: !569, inlinedAt: !1424)
!1435 = !DILocation(line: 112, column: 9, scope: !591, inlinedAt: !1434)
!1436 = !DILocation(line: 177, column: 27, scope: !569, inlinedAt: !1424)
!1437 = !DILocation(line: 121, column: 95, scope: !599, inlinedAt: !1438)
!1438 = distinct !DILocation(line: 177, column: 2, scope: !569, inlinedAt: !1424)
!1439 = !DILocation(line: 123, column: 9, scope: !599, inlinedAt: !1438)
!1440 = !DILocation(line: 179, column: 2, scope: !569, inlinedAt: !1424)
!1441 = !DILocation(line: 702, column: 25, scope: !1415)
!1442 = !DILocation(line: 705, column: 29, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1415, file: !232, line: 705, column: 6)
!1444 = !DILocation(line: 705, column: 7, scope: !1443)
!1445 = !DILocation(line: 705, column: 6, scope: !1415)
!1446 = !DILocation(line: 706, column: 3, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !1443, file: !232, line: 705, column: 38)
!1448 = !DILocation(line: 235, column: 84, scope: !621, inlinedAt: !1449)
!1449 = distinct !DILocation(line: 706, column: 3, scope: !1447)
!1450 = !DILocation(line: 236, column: 23, scope: !621, inlinedAt: !1449)
!1451 = !DILocation(line: 238, column: 9, scope: !621, inlinedAt: !1449)
!1452 = !DILocation(line: 261, column: 22, scope: !621, inlinedAt: !1449)
!1453 = !DILocation(line: 88, column: 80, scope: !631, inlinedAt: !1454)
!1454 = distinct !DILocation(line: 261, column: 2, scope: !621, inlinedAt: !1449)
!1455 = !DILocation(line: 91, column: 6, scope: !637, inlinedAt: !1454)
!1456 = !DILocation(line: 91, column: 10, scope: !637, inlinedAt: !1454)
!1457 = !DILocation(line: 91, column: 6, scope: !631, inlinedAt: !1454)
!1458 = !DILocation(line: 92, column: 3, scope: !641, inlinedAt: !1454)
!1459 = !DILocation(line: 94, column: 2, scope: !631, inlinedAt: !1454)
!1460 = !DILocation(line: 114, column: 1, scope: !631, inlinedAt: !1454)
!1461 = !DILocation(line: 707, column: 3, scope: !1447)
!1462 = !DILocation(line: 710, column: 33, scope: !1415)
!1463 = !DILocation(line: 710, column: 2, scope: !1415)
!1464 = !DILocation(line: 711, column: 15, scope: !1415)
!1465 = !DILocation(line: 711, column: 2, scope: !1415)
!1466 = !DILocation(line: 713, column: 2, scope: !1415)
!1467 = !DILocation(line: 715, column: 2, scope: !1415)
!1468 = !DILocation(line: 715, column: 7, scope: !1469)
!1469 = distinct !DILexicalBlock(scope: !1415, file: !232, line: 715, column: 5)
!1470 = !DILocation(line: 716, column: 1, scope: !1415)
!1471 = distinct !DISubprogram(name: "z_is_thread_suspended", scope: !737, file: !737, line: 98, type: !498, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !213)
!1472 = !DILocalVariable(name: "thread", arg: 1, scope: !1471, file: !737, line: 98, type: !101)
!1473 = !DILocation(line: 98, column: 60, scope: !1471)
!1474 = !DILocation(line: 100, column: 10, scope: !1471)
!1475 = !DILocation(line: 100, column: 18, scope: !1471)
!1476 = !DILocation(line: 100, column: 23, scope: !1471)
!1477 = !DILocation(line: 100, column: 36, scope: !1471)
!1478 = !DILocation(line: 100, column: 54, scope: !1471)
!1479 = !DILocation(line: 100, column: 2, scope: !1471)
!1480 = distinct !DISubprogram(name: "z_mark_thread_as_not_suspended", scope: !737, file: !737, line: 150, type: !468, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !213)
!1481 = !DILocalVariable(name: "thread", arg: 1, scope: !1480, file: !737, line: 150, type: !101)
!1482 = !DILocation(line: 150, column: 68, scope: !1480)
!1483 = !DILocation(line: 152, column: 2, scope: !1480)
!1484 = !DILocation(line: 152, column: 10, scope: !1480)
!1485 = !DILocation(line: 152, column: 15, scope: !1480)
!1486 = !DILocation(line: 152, column: 28, scope: !1480)
!1487 = !DILocation(line: 154, column: 2, scope: !1480)
!1488 = !DILocation(line: 154, column: 7, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !1480, file: !737, line: 154, column: 5)
!1490 = !DILocation(line: 155, column: 1, scope: !1480)
!1491 = distinct !DISubprogram(name: "z_pend_thread", scope: !232, file: !232, line: 773, type: !1492, scopeLine: 775, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !213)
!1492 = !DISubroutineType(types: !1493)
!1493 = !{null, !101, !137, !327}
!1494 = !DILocalVariable(name: "thread", arg: 1, scope: !1491, file: !232, line: 773, type: !101)
!1495 = !DILocation(line: 773, column: 37, scope: !1491)
!1496 = !DILocalVariable(name: "wait_q", arg: 2, scope: !1491, file: !232, line: 773, type: !137)
!1497 = !DILocation(line: 773, column: 56, scope: !1491)
!1498 = !DILocalVariable(name: "timeout", arg: 3, scope: !1491, file: !232, line: 774, type: !327)
!1499 = !DILocation(line: 774, column: 18, scope: !1491)
!1500 = !DILocalVariable(name: "__i", scope: !1501, file: !232, line: 777, type: !561)
!1501 = distinct !DILexicalBlock(scope: !1491, file: !232, line: 777, column: 2)
!1502 = !DILocation(line: 777, column: 24, scope: !1501)
!1503 = !DILocalVariable(name: "__key", scope: !1501, file: !232, line: 777, type: !561)
!1504 = !DILocation(line: 777, column: 34, scope: !1501)
!1505 = !DILocation(line: 160, column: 94, scope: !569, inlinedAt: !1506)
!1506 = distinct !DILocation(line: 777, column: 42, scope: !1501)
!1507 = !DILocation(line: 162, column: 9, scope: !569, inlinedAt: !1506)
!1508 = !DILocation(line: 163, column: 19, scope: !569, inlinedAt: !1506)
!1509 = !DILocation(line: 44, column: 15, scope: !579, inlinedAt: !1510)
!1510 = distinct !DILocation(line: 169, column: 10, scope: !569, inlinedAt: !1506)
!1511 = !DILocation(line: 48, column: 2, scope: !579, inlinedAt: !1510)
!1512 = !DILocation(line: 80, column: 9, scope: !579, inlinedAt: !1510)
!1513 = !DILocation(line: 169, column: 8, scope: !569, inlinedAt: !1506)
!1514 = !DILocation(line: 171, column: 26, scope: !569, inlinedAt: !1506)
!1515 = !DILocation(line: 110, column: 94, scope: !591, inlinedAt: !1516)
!1516 = distinct !DILocation(line: 171, column: 2, scope: !569, inlinedAt: !1506)
!1517 = !DILocation(line: 112, column: 9, scope: !591, inlinedAt: !1516)
!1518 = !DILocation(line: 177, column: 27, scope: !569, inlinedAt: !1506)
!1519 = !DILocation(line: 121, column: 95, scope: !599, inlinedAt: !1520)
!1520 = distinct !DILocation(line: 177, column: 2, scope: !569, inlinedAt: !1506)
!1521 = !DILocation(line: 123, column: 9, scope: !599, inlinedAt: !1520)
!1522 = !DILocation(line: 179, column: 2, scope: !569, inlinedAt: !1506)
!1523 = !DILocation(line: 777, column: 42, scope: !1501)
!1524 = !DILocation(line: 777, column: 7, scope: !1501)
!1525 = !DILocation(line: 777, column: 77, scope: !1526)
!1526 = distinct !DILexicalBlock(scope: !1501, file: !232, line: 777, column: 2)
!1527 = !DILocation(line: 777, column: 72, scope: !1526)
!1528 = !DILocation(line: 777, column: 2, scope: !1501)
!1529 = !DILocation(line: 778, column: 15, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1526, file: !232, line: 777, column: 134)
!1531 = !DILocation(line: 778, column: 23, scope: !1530)
!1532 = !DILocation(line: 778, column: 3, scope: !1530)
!1533 = !DILocation(line: 779, column: 2, scope: !1530)
!1534 = !DILocation(line: 777, column: 82, scope: !1526)
!1535 = !DILocation(line: 235, column: 84, scope: !621, inlinedAt: !1536)
!1536 = distinct !DILocation(line: 777, column: 82, scope: !1526)
!1537 = !DILocation(line: 236, column: 23, scope: !621, inlinedAt: !1536)
!1538 = !DILocation(line: 238, column: 9, scope: !621, inlinedAt: !1536)
!1539 = !DILocation(line: 261, column: 22, scope: !621, inlinedAt: !1536)
!1540 = !DILocation(line: 88, column: 80, scope: !631, inlinedAt: !1541)
!1541 = distinct !DILocation(line: 261, column: 2, scope: !621, inlinedAt: !1536)
!1542 = !DILocation(line: 91, column: 6, scope: !637, inlinedAt: !1541)
!1543 = !DILocation(line: 91, column: 10, scope: !637, inlinedAt: !1541)
!1544 = !DILocation(line: 91, column: 6, scope: !631, inlinedAt: !1541)
!1545 = !DILocation(line: 92, column: 3, scope: !641, inlinedAt: !1541)
!1546 = !DILocation(line: 94, column: 2, scope: !631, inlinedAt: !1541)
!1547 = !DILocation(line: 114, column: 1, scope: !631, inlinedAt: !1541)
!1548 = !DILocation(line: 777, column: 125, scope: !1526)
!1549 = !DILocation(line: 777, column: 129, scope: !1526)
!1550 = !DILocation(line: 777, column: 2, scope: !1526)
!1551 = distinct !{!1551, !1528, !1552}
!1552 = !DILocation(line: 779, column: 2, scope: !1501)
!1553 = !DILocation(line: 780, column: 1, scope: !1491)
!1554 = distinct !DISubprogram(name: "pend_locked", scope: !232, file: !232, line: 763, type: !1492, scopeLine: 765, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !213)
!1555 = !DILocalVariable(name: "thread", arg: 1, scope: !1554, file: !232, line: 763, type: !101)
!1556 = !DILocation(line: 763, column: 42, scope: !1554)
!1557 = !DILocalVariable(name: "wait_q", arg: 2, scope: !1554, file: !232, line: 763, type: !137)
!1558 = !DILocation(line: 763, column: 61, scope: !1554)
!1559 = !DILocalVariable(name: "timeout", arg: 3, scope: !1554, file: !232, line: 764, type: !327)
!1560 = !DILocation(line: 764, column: 16, scope: !1554)
!1561 = !DILocation(line: 769, column: 22, scope: !1554)
!1562 = !DILocation(line: 769, column: 30, scope: !1554)
!1563 = !DILocation(line: 769, column: 2, scope: !1554)
!1564 = !DILocation(line: 770, column: 21, scope: !1554)
!1565 = !DILocation(line: 770, column: 2, scope: !1554)
!1566 = !DILocation(line: 771, column: 1, scope: !1554)
!1567 = distinct !DISubprogram(name: "z_unpend_thread_no_timeout", scope: !232, file: !232, line: 789, type: !468, scopeLine: 790, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !213)
!1568 = !DILocalVariable(name: "thread", arg: 1, scope: !1567, file: !232, line: 789, type: !101)
!1569 = !DILocation(line: 789, column: 88, scope: !1567)
!1570 = !DILocalVariable(name: "__i", scope: !1571, file: !232, line: 791, type: !561)
!1571 = distinct !DILexicalBlock(scope: !1567, file: !232, line: 791, column: 2)
!1572 = !DILocation(line: 791, column: 24, scope: !1571)
!1573 = !DILocalVariable(name: "__key", scope: !1571, file: !232, line: 791, type: !561)
!1574 = !DILocation(line: 791, column: 34, scope: !1571)
!1575 = !DILocation(line: 160, column: 94, scope: !569, inlinedAt: !1576)
!1576 = distinct !DILocation(line: 791, column: 42, scope: !1571)
!1577 = !DILocation(line: 162, column: 9, scope: !569, inlinedAt: !1576)
!1578 = !DILocation(line: 163, column: 19, scope: !569, inlinedAt: !1576)
!1579 = !DILocation(line: 44, column: 15, scope: !579, inlinedAt: !1580)
!1580 = distinct !DILocation(line: 169, column: 10, scope: !569, inlinedAt: !1576)
!1581 = !DILocation(line: 48, column: 2, scope: !579, inlinedAt: !1580)
!1582 = !DILocation(line: 80, column: 9, scope: !579, inlinedAt: !1580)
!1583 = !DILocation(line: 169, column: 8, scope: !569, inlinedAt: !1576)
!1584 = !DILocation(line: 171, column: 26, scope: !569, inlinedAt: !1576)
!1585 = !DILocation(line: 110, column: 94, scope: !591, inlinedAt: !1586)
!1586 = distinct !DILocation(line: 171, column: 2, scope: !569, inlinedAt: !1576)
!1587 = !DILocation(line: 112, column: 9, scope: !591, inlinedAt: !1586)
!1588 = !DILocation(line: 177, column: 27, scope: !569, inlinedAt: !1576)
!1589 = !DILocation(line: 121, column: 95, scope: !599, inlinedAt: !1590)
!1590 = distinct !DILocation(line: 177, column: 2, scope: !569, inlinedAt: !1576)
!1591 = !DILocation(line: 123, column: 9, scope: !599, inlinedAt: !1590)
!1592 = !DILocation(line: 179, column: 2, scope: !569, inlinedAt: !1576)
!1593 = !DILocation(line: 791, column: 42, scope: !1571)
!1594 = !DILocation(line: 791, column: 7, scope: !1571)
!1595 = !DILocation(line: 791, column: 77, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !1571, file: !232, line: 791, column: 2)
!1597 = !DILocation(line: 791, column: 72, scope: !1596)
!1598 = !DILocation(line: 791, column: 2, scope: !1571)
!1599 = !DILocation(line: 792, column: 7, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !1601, file: !232, line: 792, column: 7)
!1601 = distinct !DILexicalBlock(scope: !1596, file: !232, line: 791, column: 134)
!1602 = !DILocation(line: 792, column: 15, scope: !1600)
!1603 = !DILocation(line: 792, column: 20, scope: !1600)
!1604 = !DILocation(line: 792, column: 30, scope: !1600)
!1605 = !DILocation(line: 792, column: 7, scope: !1601)
!1606 = !DILocation(line: 793, column: 29, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !1600, file: !232, line: 792, column: 36)
!1608 = !DILocation(line: 793, column: 4, scope: !1607)
!1609 = !DILocation(line: 794, column: 3, scope: !1607)
!1610 = !DILocation(line: 795, column: 2, scope: !1601)
!1611 = !DILocation(line: 791, column: 82, scope: !1596)
!1612 = !DILocation(line: 235, column: 84, scope: !621, inlinedAt: !1613)
!1613 = distinct !DILocation(line: 791, column: 82, scope: !1596)
!1614 = !DILocation(line: 236, column: 23, scope: !621, inlinedAt: !1613)
!1615 = !DILocation(line: 238, column: 9, scope: !621, inlinedAt: !1613)
!1616 = !DILocation(line: 261, column: 22, scope: !621, inlinedAt: !1613)
!1617 = !DILocation(line: 88, column: 80, scope: !631, inlinedAt: !1618)
!1618 = distinct !DILocation(line: 261, column: 2, scope: !621, inlinedAt: !1613)
!1619 = !DILocation(line: 91, column: 6, scope: !637, inlinedAt: !1618)
!1620 = !DILocation(line: 91, column: 10, scope: !637, inlinedAt: !1618)
!1621 = !DILocation(line: 91, column: 6, scope: !631, inlinedAt: !1618)
!1622 = !DILocation(line: 92, column: 3, scope: !641, inlinedAt: !1618)
!1623 = !DILocation(line: 94, column: 2, scope: !631, inlinedAt: !1618)
!1624 = !DILocation(line: 114, column: 1, scope: !631, inlinedAt: !1618)
!1625 = !DILocation(line: 791, column: 125, scope: !1596)
!1626 = !DILocation(line: 791, column: 129, scope: !1596)
!1627 = !DILocation(line: 791, column: 2, scope: !1596)
!1628 = distinct !{!1628, !1598, !1629}
!1629 = !DILocation(line: 795, column: 2, scope: !1571)
!1630 = !DILocation(line: 796, column: 1, scope: !1567)
!1631 = distinct !DISubprogram(name: "unpend_thread_no_timeout", scope: !232, file: !232, line: 782, type: !468, scopeLine: 783, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !213)
!1632 = !DILocalVariable(name: "thread", arg: 1, scope: !1631, file: !232, line: 782, type: !101)
!1633 = !DILocation(line: 782, column: 62, scope: !1631)
!1634 = !DILocation(line: 784, column: 39, scope: !1631)
!1635 = !DILocation(line: 784, column: 22, scope: !1631)
!1636 = !DILocation(line: 784, column: 48, scope: !1631)
!1637 = !DILocation(line: 784, column: 55, scope: !1631)
!1638 = !DILocation(line: 784, column: 2, scope: !1631)
!1639 = !DILocation(line: 785, column: 31, scope: !1631)
!1640 = !DILocation(line: 785, column: 2, scope: !1631)
!1641 = !DILocation(line: 786, column: 2, scope: !1631)
!1642 = !DILocation(line: 786, column: 10, scope: !1631)
!1643 = !DILocation(line: 786, column: 15, scope: !1631)
!1644 = !DILocation(line: 786, column: 25, scope: !1631)
!1645 = !DILocation(line: 787, column: 1, scope: !1631)
!1646 = distinct !DISubprogram(name: "z_sched_wake_thread", scope: !232, file: !232, line: 798, type: !1647, scopeLine: 799, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !213)
!1647 = !DISubroutineType(types: !1648)
!1648 = !{null, !101, !236}
!1649 = !DILocalVariable(name: "thread", arg: 1, scope: !1646, file: !232, line: 798, type: !101)
!1650 = !DILocation(line: 798, column: 43, scope: !1646)
!1651 = !DILocalVariable(name: "is_timeout", arg: 2, scope: !1646, file: !232, line: 798, type: !236)
!1652 = !DILocation(line: 798, column: 57, scope: !1646)
!1653 = !DILocalVariable(name: "__i", scope: !1654, file: !232, line: 800, type: !561)
!1654 = distinct !DILexicalBlock(scope: !1646, file: !232, line: 800, column: 2)
!1655 = !DILocation(line: 800, column: 24, scope: !1654)
!1656 = !DILocalVariable(name: "__key", scope: !1654, file: !232, line: 800, type: !561)
!1657 = !DILocation(line: 800, column: 34, scope: !1654)
!1658 = !DILocation(line: 160, column: 94, scope: !569, inlinedAt: !1659)
!1659 = distinct !DILocation(line: 800, column: 42, scope: !1654)
!1660 = !DILocation(line: 162, column: 9, scope: !569, inlinedAt: !1659)
!1661 = !DILocation(line: 163, column: 19, scope: !569, inlinedAt: !1659)
!1662 = !DILocation(line: 44, column: 15, scope: !579, inlinedAt: !1663)
!1663 = distinct !DILocation(line: 169, column: 10, scope: !569, inlinedAt: !1659)
!1664 = !DILocation(line: 48, column: 2, scope: !579, inlinedAt: !1663)
!1665 = !DILocation(line: 80, column: 9, scope: !579, inlinedAt: !1663)
!1666 = !DILocation(line: 169, column: 8, scope: !569, inlinedAt: !1659)
!1667 = !DILocation(line: 171, column: 26, scope: !569, inlinedAt: !1659)
!1668 = !DILocation(line: 110, column: 94, scope: !591, inlinedAt: !1669)
!1669 = distinct !DILocation(line: 171, column: 2, scope: !569, inlinedAt: !1659)
!1670 = !DILocation(line: 112, column: 9, scope: !591, inlinedAt: !1669)
!1671 = !DILocation(line: 177, column: 27, scope: !569, inlinedAt: !1659)
!1672 = !DILocation(line: 121, column: 95, scope: !599, inlinedAt: !1673)
!1673 = distinct !DILocation(line: 177, column: 2, scope: !569, inlinedAt: !1659)
!1674 = !DILocation(line: 123, column: 9, scope: !599, inlinedAt: !1673)
!1675 = !DILocation(line: 179, column: 2, scope: !569, inlinedAt: !1659)
!1676 = !DILocation(line: 800, column: 42, scope: !1654)
!1677 = !DILocation(line: 800, column: 7, scope: !1654)
!1678 = !DILocation(line: 800, column: 77, scope: !1679)
!1679 = distinct !DILexicalBlock(scope: !1654, file: !232, line: 800, column: 2)
!1680 = !DILocation(line: 800, column: 72, scope: !1679)
!1681 = !DILocation(line: 800, column: 2, scope: !1654)
!1682 = !DILocalVariable(name: "killed", scope: !1683, file: !232, line: 801, type: !236)
!1683 = distinct !DILexicalBlock(scope: !1679, file: !232, line: 800, column: 134)
!1684 = !DILocation(line: 801, column: 9, scope: !1683)
!1685 = !DILocation(line: 801, column: 20, scope: !1683)
!1686 = !DILocation(line: 801, column: 28, scope: !1683)
!1687 = !DILocation(line: 801, column: 33, scope: !1683)
!1688 = !DILocation(line: 801, column: 46, scope: !1683)
!1689 = !DILocation(line: 801, column: 64, scope: !1683)
!1690 = !DILocation(line: 802, column: 12, scope: !1683)
!1691 = !DILocation(line: 802, column: 20, scope: !1683)
!1692 = !DILocation(line: 802, column: 25, scope: !1683)
!1693 = !DILocation(line: 802, column: 38, scope: !1683)
!1694 = !DILocation(line: 814, column: 8, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !1683, file: !232, line: 814, column: 7)
!1696 = !DILocation(line: 814, column: 7, scope: !1683)
!1697 = !DILocation(line: 816, column: 8, scope: !1698)
!1698 = distinct !DILexicalBlock(scope: !1699, file: !232, line: 816, column: 8)
!1699 = distinct !DILexicalBlock(scope: !1695, file: !232, line: 814, column: 16)
!1700 = !DILocation(line: 816, column: 16, scope: !1698)
!1701 = !DILocation(line: 816, column: 21, scope: !1698)
!1702 = !DILocation(line: 816, column: 31, scope: !1698)
!1703 = !DILocation(line: 816, column: 8, scope: !1699)
!1704 = !DILocation(line: 817, column: 30, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1698, file: !232, line: 816, column: 37)
!1706 = !DILocation(line: 817, column: 5, scope: !1705)
!1707 = !DILocation(line: 818, column: 4, scope: !1705)
!1708 = !DILocation(line: 819, column: 29, scope: !1699)
!1709 = !DILocation(line: 819, column: 4, scope: !1699)
!1710 = !DILocation(line: 820, column: 8, scope: !1711)
!1711 = distinct !DILexicalBlock(scope: !1699, file: !232, line: 820, column: 8)
!1712 = !DILocation(line: 820, column: 8, scope: !1699)
!1713 = !DILocation(line: 821, column: 36, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !1711, file: !232, line: 820, column: 20)
!1715 = !DILocation(line: 821, column: 5, scope: !1714)
!1716 = !DILocation(line: 822, column: 4, scope: !1714)
!1717 = !DILocation(line: 823, column: 17, scope: !1699)
!1718 = !DILocation(line: 823, column: 4, scope: !1699)
!1719 = !DILocation(line: 824, column: 3, scope: !1699)
!1720 = !DILocation(line: 825, column: 2, scope: !1683)
!1721 = !DILocation(line: 800, column: 82, scope: !1679)
!1722 = !DILocation(line: 235, column: 84, scope: !621, inlinedAt: !1723)
!1723 = distinct !DILocation(line: 800, column: 82, scope: !1679)
!1724 = !DILocation(line: 236, column: 23, scope: !621, inlinedAt: !1723)
!1725 = !DILocation(line: 238, column: 9, scope: !621, inlinedAt: !1723)
!1726 = !DILocation(line: 261, column: 22, scope: !621, inlinedAt: !1723)
!1727 = !DILocation(line: 88, column: 80, scope: !631, inlinedAt: !1728)
!1728 = distinct !DILocation(line: 261, column: 2, scope: !621, inlinedAt: !1723)
!1729 = !DILocation(line: 91, column: 6, scope: !637, inlinedAt: !1728)
!1730 = !DILocation(line: 91, column: 10, scope: !637, inlinedAt: !1728)
!1731 = !DILocation(line: 91, column: 6, scope: !631, inlinedAt: !1728)
!1732 = !DILocation(line: 92, column: 3, scope: !641, inlinedAt: !1728)
!1733 = !DILocation(line: 94, column: 2, scope: !631, inlinedAt: !1728)
!1734 = !DILocation(line: 114, column: 1, scope: !631, inlinedAt: !1728)
!1735 = !DILocation(line: 800, column: 125, scope: !1679)
!1736 = !DILocation(line: 800, column: 129, scope: !1679)
!1737 = !DILocation(line: 800, column: 2, scope: !1679)
!1738 = distinct !{!1738, !1681, !1739}
!1739 = !DILocation(line: 825, column: 2, scope: !1654)
!1740 = !DILocation(line: 827, column: 1, scope: !1646)
!1741 = distinct !DISubprogram(name: "z_thread_timeout", scope: !232, file: !232, line: 831, type: !170, scopeLine: 832, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !213)
!1742 = !DILocalVariable(name: "timeout", arg: 1, scope: !1741, file: !232, line: 831, type: !172)
!1743 = !DILocation(line: 831, column: 40, scope: !1741)
!1744 = !DILocalVariable(name: "thread", scope: !1741, file: !232, line: 833, type: !101)
!1745 = !DILocation(line: 833, column: 19, scope: !1741)
!1746 = !DILocation(line: 833, column: 64, scope: !1747)
!1747 = distinct !DILexicalBlock(scope: !1741, file: !232, line: 833, column: 29)
!1748 = !DILocation(line: 833, column: 74, scope: !1747)
!1749 = !DILocation(line: 833, column: 29, scope: !1741)
!1750 = !DILocation(line: 833, column: 129, scope: !1747)
!1751 = !DILocation(line: 836, column: 22, scope: !1741)
!1752 = !DILocation(line: 836, column: 2, scope: !1741)
!1753 = !DILocation(line: 837, column: 1, scope: !1741)
!1754 = distinct !DISubprogram(name: "z_pend_curr_irqlock", scope: !232, file: !232, line: 840, type: !1755, scopeLine: 841, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !213)
!1755 = !DISubroutineType(types: !1756)
!1756 = !{!192, !98, !137, !327}
!1757 = !DILocalVariable(name: "key", arg: 1, scope: !1754, file: !232, line: 840, type: !98)
!1758 = !DILocation(line: 840, column: 34, scope: !1754)
!1759 = !DILocalVariable(name: "wait_q", arg: 2, scope: !1754, file: !232, line: 840, type: !137)
!1760 = !DILocation(line: 840, column: 50, scope: !1754)
!1761 = !DILocalVariable(name: "timeout", arg: 3, scope: !1754, file: !232, line: 840, type: !327)
!1762 = !DILocation(line: 840, column: 70, scope: !1754)
!1763 = !DILocation(line: 847, column: 30, scope: !1754)
!1764 = !DILocation(line: 847, column: 39, scope: !1754)
!1765 = !DILocation(line: 847, column: 2, scope: !1754)
!1766 = !DILocation(line: 850, column: 36, scope: !1754)
!1767 = !DILocation(line: 850, column: 18, scope: !1754)
!1768 = !DILocalVariable(name: "ret", scope: !1754, file: !232, line: 852, type: !192)
!1769 = !DILocation(line: 852, column: 6, scope: !1754)
!1770 = !DILocation(line: 852, column: 27, scope: !1754)
!1771 = !DILocation(line: 852, column: 12, scope: !1754)
!1772 = !DILocalVariable(name: "__i", scope: !1773, file: !232, line: 853, type: !561)
!1773 = distinct !DILexicalBlock(scope: !1754, file: !232, line: 853, column: 2)
!1774 = !DILocation(line: 853, column: 24, scope: !1773)
!1775 = !DILocalVariable(name: "__key", scope: !1773, file: !232, line: 853, type: !561)
!1776 = !DILocation(line: 853, column: 34, scope: !1773)
!1777 = !DILocation(line: 160, column: 94, scope: !569, inlinedAt: !1778)
!1778 = distinct !DILocation(line: 853, column: 42, scope: !1773)
!1779 = !DILocation(line: 162, column: 9, scope: !569, inlinedAt: !1778)
!1780 = !DILocation(line: 163, column: 19, scope: !569, inlinedAt: !1778)
!1781 = !DILocation(line: 44, column: 15, scope: !579, inlinedAt: !1782)
!1782 = distinct !DILocation(line: 169, column: 10, scope: !569, inlinedAt: !1778)
!1783 = !DILocation(line: 48, column: 2, scope: !579, inlinedAt: !1782)
!1784 = !DILocation(line: 80, column: 9, scope: !579, inlinedAt: !1782)
!1785 = !DILocation(line: 169, column: 8, scope: !569, inlinedAt: !1778)
!1786 = !DILocation(line: 171, column: 26, scope: !569, inlinedAt: !1778)
!1787 = !DILocation(line: 110, column: 94, scope: !591, inlinedAt: !1788)
!1788 = distinct !DILocation(line: 171, column: 2, scope: !569, inlinedAt: !1778)
!1789 = !DILocation(line: 112, column: 9, scope: !591, inlinedAt: !1788)
!1790 = !DILocation(line: 177, column: 27, scope: !569, inlinedAt: !1778)
!1791 = !DILocation(line: 121, column: 95, scope: !599, inlinedAt: !1792)
!1792 = distinct !DILocation(line: 177, column: 2, scope: !569, inlinedAt: !1778)
!1793 = !DILocation(line: 123, column: 9, scope: !599, inlinedAt: !1792)
!1794 = !DILocation(line: 179, column: 2, scope: !569, inlinedAt: !1778)
!1795 = !DILocation(line: 853, column: 42, scope: !1773)
!1796 = !DILocation(line: 853, column: 7, scope: !1773)
!1797 = !DILocation(line: 853, column: 77, scope: !1798)
!1798 = distinct !DILexicalBlock(scope: !1773, file: !232, line: 853, column: 2)
!1799 = !DILocation(line: 853, column: 72, scope: !1798)
!1800 = !DILocation(line: 853, column: 2, scope: !1773)
!1801 = !DILocation(line: 854, column: 7, scope: !1802)
!1802 = distinct !DILexicalBlock(scope: !1803, file: !232, line: 854, column: 7)
!1803 = distinct !DILexicalBlock(scope: !1798, file: !232, line: 853, column: 134)
!1804 = !DILocation(line: 854, column: 42, scope: !1802)
!1805 = !DILocation(line: 854, column: 23, scope: !1802)
!1806 = !DILocation(line: 854, column: 7, scope: !1803)
!1807 = !DILocation(line: 855, column: 20, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !1802, file: !232, line: 854, column: 51)
!1809 = !DILocation(line: 856, column: 3, scope: !1808)
!1810 = !DILocation(line: 857, column: 2, scope: !1803)
!1811 = !DILocation(line: 853, column: 82, scope: !1798)
!1812 = !DILocation(line: 235, column: 84, scope: !621, inlinedAt: !1813)
!1813 = distinct !DILocation(line: 853, column: 82, scope: !1798)
!1814 = !DILocation(line: 236, column: 23, scope: !621, inlinedAt: !1813)
!1815 = !DILocation(line: 238, column: 9, scope: !621, inlinedAt: !1813)
!1816 = !DILocation(line: 261, column: 22, scope: !621, inlinedAt: !1813)
!1817 = !DILocation(line: 88, column: 80, scope: !631, inlinedAt: !1818)
!1818 = distinct !DILocation(line: 261, column: 2, scope: !621, inlinedAt: !1813)
!1819 = !DILocation(line: 91, column: 6, scope: !637, inlinedAt: !1818)
!1820 = !DILocation(line: 91, column: 10, scope: !637, inlinedAt: !1818)
!1821 = !DILocation(line: 91, column: 6, scope: !631, inlinedAt: !1818)
!1822 = !DILocation(line: 92, column: 3, scope: !641, inlinedAt: !1818)
!1823 = !DILocation(line: 94, column: 2, scope: !631, inlinedAt: !1818)
!1824 = !DILocation(line: 114, column: 1, scope: !631, inlinedAt: !1818)
!1825 = !DILocation(line: 853, column: 125, scope: !1798)
!1826 = !DILocation(line: 853, column: 129, scope: !1798)
!1827 = !DILocation(line: 853, column: 2, scope: !1798)
!1828 = distinct !{!1828, !1800, !1829}
!1829 = !DILocation(line: 857, column: 2, scope: !1773)
!1830 = !DILocation(line: 858, column: 9, scope: !1754)
!1831 = !DILocation(line: 858, column: 2, scope: !1754)
!1832 = distinct !DISubprogram(name: "z_swap_irqlock", scope: !1166, file: !1166, line: 205, type: !1833, scopeLine: 206, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !213)
!1833 = !DISubroutineType(types: !1834)
!1834 = !{!192, !100}
!1835 = !DILocalVariable(name: "key", arg: 1, scope: !1832, file: !1166, line: 205, type: !100)
!1836 = !DILocation(line: 205, column: 47, scope: !1832)
!1837 = !DILocalVariable(name: "ret", scope: !1832, file: !1166, line: 207, type: !192)
!1838 = !DILocation(line: 207, column: 6, scope: !1832)
!1839 = !DILocation(line: 209, column: 18, scope: !1832)
!1840 = !DILocation(line: 209, column: 8, scope: !1832)
!1841 = !DILocation(line: 209, column: 6, scope: !1832)
!1842 = !DILocation(line: 210, column: 9, scope: !1832)
!1843 = !DILocation(line: 210, column: 2, scope: !1832)
!1844 = distinct !DISubprogram(name: "z_pend_curr", scope: !232, file: !232, line: 864, type: !1845, scopeLine: 866, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !213)
!1845 = !DISubroutineType(types: !1846)
!1846 = !{!192, !572, !561, !137, !327}
!1847 = !DILocalVariable(name: "lock", arg: 1, scope: !1844, file: !232, line: 864, type: !572)
!1848 = !DILocation(line: 864, column: 36, scope: !1844)
!1849 = !DILocalVariable(name: "key", arg: 2, scope: !1844, file: !232, line: 864, type: !561)
!1850 = !DILocation(line: 864, column: 59, scope: !1844)
!1851 = !DILocalVariable(name: "wait_q", arg: 3, scope: !1844, file: !232, line: 865, type: !137)
!1852 = !DILocation(line: 865, column: 20, scope: !1844)
!1853 = !DILocalVariable(name: "timeout", arg: 4, scope: !1844, file: !232, line: 865, type: !327)
!1854 = !DILocation(line: 865, column: 40, scope: !1844)
!1855 = !DILocation(line: 868, column: 36, scope: !1844)
!1856 = !DILocation(line: 868, column: 18, scope: !1844)
!1857 = !DILocation(line: 160, column: 94, scope: !569, inlinedAt: !1858)
!1858 = distinct !DILocation(line: 880, column: 9, scope: !1844)
!1859 = !DILocation(line: 162, column: 9, scope: !569, inlinedAt: !1858)
!1860 = !DILocation(line: 163, column: 19, scope: !569, inlinedAt: !1858)
!1861 = !DILocation(line: 44, column: 15, scope: !579, inlinedAt: !1862)
!1862 = distinct !DILocation(line: 169, column: 10, scope: !569, inlinedAt: !1858)
!1863 = !DILocation(line: 48, column: 2, scope: !579, inlinedAt: !1862)
!1864 = !DILocation(line: 80, column: 9, scope: !579, inlinedAt: !1862)
!1865 = !DILocation(line: 169, column: 8, scope: !569, inlinedAt: !1858)
!1866 = !DILocation(line: 171, column: 26, scope: !569, inlinedAt: !1858)
!1867 = !DILocation(line: 110, column: 94, scope: !591, inlinedAt: !1868)
!1868 = distinct !DILocation(line: 171, column: 2, scope: !569, inlinedAt: !1858)
!1869 = !DILocation(line: 112, column: 9, scope: !591, inlinedAt: !1868)
!1870 = !DILocation(line: 177, column: 27, scope: !569, inlinedAt: !1858)
!1871 = !DILocation(line: 121, column: 95, scope: !599, inlinedAt: !1872)
!1872 = distinct !DILocation(line: 177, column: 2, scope: !569, inlinedAt: !1858)
!1873 = !DILocation(line: 123, column: 9, scope: !599, inlinedAt: !1872)
!1874 = !DILocation(line: 179, column: 2, scope: !569, inlinedAt: !1858)
!1875 = !DILocation(line: 880, column: 9, scope: !1844)
!1876 = !DILocation(line: 881, column: 30, scope: !1844)
!1877 = !DILocation(line: 881, column: 39, scope: !1844)
!1878 = !DILocation(line: 881, column: 2, scope: !1844)
!1879 = !DILocation(line: 882, column: 17, scope: !1844)
!1880 = !DILocation(line: 283, column: 85, scope: !1175, inlinedAt: !1881)
!1881 = distinct !DILocation(line: 882, column: 2, scope: !1844)
!1882 = !DILocation(line: 285, column: 9, scope: !1175, inlinedAt: !1881)
!1883 = !DILocation(line: 883, column: 9, scope: !1844)
!1884 = !DILocation(line: 217, column: 76, scope: !1165, inlinedAt: !1885)
!1885 = distinct !DILocation(line: 883, column: 9, scope: !1844)
!1886 = !DILocation(line: 217, column: 99, scope: !1165, inlinedAt: !1885)
!1887 = !DILocation(line: 219, column: 17, scope: !1165, inlinedAt: !1885)
!1888 = !DILocation(line: 283, column: 85, scope: !1175, inlinedAt: !1889)
!1889 = distinct !DILocation(line: 219, column: 2, scope: !1165, inlinedAt: !1885)
!1890 = !DILocation(line: 285, column: 9, scope: !1175, inlinedAt: !1889)
!1891 = !DILocation(line: 220, column: 28, scope: !1165, inlinedAt: !1885)
!1892 = !DILocation(line: 220, column: 9, scope: !1165, inlinedAt: !1885)
!1893 = !DILocation(line: 883, column: 2, scope: !1844)
!1894 = distinct !DISubprogram(name: "z_unpend1_no_timeout", scope: !232, file: !232, line: 886, type: !1895, scopeLine: 887, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !213)
!1895 = !DISubroutineType(types: !1896)
!1896 = !{!101, !137}
!1897 = !DILocalVariable(name: "wait_q", arg: 1, scope: !1894, file: !232, line: 886, type: !137)
!1898 = !DILocation(line: 886, column: 50, scope: !1894)
!1899 = !DILocalVariable(name: "thread", scope: !1894, file: !232, line: 888, type: !101)
!1900 = !DILocation(line: 888, column: 19, scope: !1894)
!1901 = !DILocalVariable(name: "__i", scope: !1902, file: !232, line: 890, type: !561)
!1902 = distinct !DILexicalBlock(scope: !1894, file: !232, line: 890, column: 2)
!1903 = !DILocation(line: 890, column: 24, scope: !1902)
!1904 = !DILocalVariable(name: "__key", scope: !1902, file: !232, line: 890, type: !561)
!1905 = !DILocation(line: 890, column: 34, scope: !1902)
!1906 = !DILocation(line: 160, column: 94, scope: !569, inlinedAt: !1907)
!1907 = distinct !DILocation(line: 890, column: 42, scope: !1902)
!1908 = !DILocation(line: 162, column: 9, scope: !569, inlinedAt: !1907)
!1909 = !DILocation(line: 163, column: 19, scope: !569, inlinedAt: !1907)
!1910 = !DILocation(line: 44, column: 15, scope: !579, inlinedAt: !1911)
!1911 = distinct !DILocation(line: 169, column: 10, scope: !569, inlinedAt: !1907)
!1912 = !DILocation(line: 48, column: 2, scope: !579, inlinedAt: !1911)
!1913 = !DILocation(line: 80, column: 9, scope: !579, inlinedAt: !1911)
!1914 = !DILocation(line: 169, column: 8, scope: !569, inlinedAt: !1907)
!1915 = !DILocation(line: 171, column: 26, scope: !569, inlinedAt: !1907)
!1916 = !DILocation(line: 110, column: 94, scope: !591, inlinedAt: !1917)
!1917 = distinct !DILocation(line: 171, column: 2, scope: !569, inlinedAt: !1907)
!1918 = !DILocation(line: 112, column: 9, scope: !591, inlinedAt: !1917)
!1919 = !DILocation(line: 177, column: 27, scope: !569, inlinedAt: !1907)
!1920 = !DILocation(line: 121, column: 95, scope: !599, inlinedAt: !1921)
!1921 = distinct !DILocation(line: 177, column: 2, scope: !569, inlinedAt: !1907)
!1922 = !DILocation(line: 123, column: 9, scope: !599, inlinedAt: !1921)
!1923 = !DILocation(line: 179, column: 2, scope: !569, inlinedAt: !1907)
!1924 = !DILocation(line: 890, column: 42, scope: !1902)
!1925 = !DILocation(line: 890, column: 7, scope: !1902)
!1926 = !DILocation(line: 890, column: 77, scope: !1927)
!1927 = distinct !DILexicalBlock(scope: !1902, file: !232, line: 890, column: 2)
!1928 = !DILocation(line: 890, column: 72, scope: !1927)
!1929 = !DILocation(line: 890, column: 2, scope: !1902)
!1930 = !DILocation(line: 891, column: 30, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1927, file: !232, line: 890, column: 134)
!1932 = !DILocation(line: 891, column: 38, scope: !1931)
!1933 = !DILocation(line: 891, column: 12, scope: !1931)
!1934 = !DILocation(line: 891, column: 10, scope: !1931)
!1935 = !DILocation(line: 893, column: 7, scope: !1936)
!1936 = distinct !DILexicalBlock(scope: !1931, file: !232, line: 893, column: 7)
!1937 = !DILocation(line: 893, column: 14, scope: !1936)
!1938 = !DILocation(line: 893, column: 7, scope: !1931)
!1939 = !DILocation(line: 894, column: 29, scope: !1940)
!1940 = distinct !DILexicalBlock(scope: !1936, file: !232, line: 893, column: 20)
!1941 = !DILocation(line: 894, column: 4, scope: !1940)
!1942 = !DILocation(line: 895, column: 3, scope: !1940)
!1943 = !DILocation(line: 896, column: 2, scope: !1931)
!1944 = !DILocation(line: 890, column: 82, scope: !1927)
!1945 = !DILocation(line: 235, column: 84, scope: !621, inlinedAt: !1946)
!1946 = distinct !DILocation(line: 890, column: 82, scope: !1927)
!1947 = !DILocation(line: 236, column: 23, scope: !621, inlinedAt: !1946)
!1948 = !DILocation(line: 238, column: 9, scope: !621, inlinedAt: !1946)
!1949 = !DILocation(line: 261, column: 22, scope: !621, inlinedAt: !1946)
!1950 = !DILocation(line: 88, column: 80, scope: !631, inlinedAt: !1951)
!1951 = distinct !DILocation(line: 261, column: 2, scope: !621, inlinedAt: !1946)
!1952 = !DILocation(line: 91, column: 6, scope: !637, inlinedAt: !1951)
!1953 = !DILocation(line: 91, column: 10, scope: !637, inlinedAt: !1951)
!1954 = !DILocation(line: 91, column: 6, scope: !631, inlinedAt: !1951)
!1955 = !DILocation(line: 92, column: 3, scope: !641, inlinedAt: !1951)
!1956 = !DILocation(line: 94, column: 2, scope: !631, inlinedAt: !1951)
!1957 = !DILocation(line: 114, column: 1, scope: !631, inlinedAt: !1951)
!1958 = !DILocation(line: 890, column: 125, scope: !1927)
!1959 = !DILocation(line: 890, column: 129, scope: !1927)
!1960 = !DILocation(line: 890, column: 2, scope: !1927)
!1961 = distinct !{!1961, !1929, !1962}
!1962 = !DILocation(line: 896, column: 2, scope: !1902)
!1963 = !DILocation(line: 898, column: 9, scope: !1894)
!1964 = !DILocation(line: 898, column: 2, scope: !1894)
!1965 = distinct !DISubprogram(name: "z_priq_dumb_best", scope: !232, file: !232, line: 1170, type: !1966, scopeLine: 1171, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !213)
!1966 = !DISubroutineType(types: !1967)
!1967 = !{!101, !814}
!1968 = !DILocalVariable(name: "pq", arg: 1, scope: !1965, file: !232, line: 1170, type: !814)
!1969 = !DILocation(line: 1170, column: 48, scope: !1965)
!1970 = !DILocalVariable(name: "thread", scope: !1965, file: !232, line: 1172, type: !101)
!1971 = !DILocation(line: 1172, column: 19, scope: !1965)
!1972 = !DILocalVariable(name: "n", scope: !1965, file: !232, line: 1173, type: !228)
!1973 = !DILocation(line: 1173, column: 15, scope: !1965)
!1974 = !DILocation(line: 1173, column: 39, scope: !1965)
!1975 = !DILocation(line: 1173, column: 19, scope: !1965)
!1976 = !DILocation(line: 1175, column: 6, scope: !1977)
!1977 = distinct !DILexicalBlock(scope: !1965, file: !232, line: 1175, column: 6)
!1978 = !DILocation(line: 1175, column: 8, scope: !1977)
!1979 = !DILocation(line: 1175, column: 6, scope: !1965)
!1980 = !DILocation(line: 1176, column: 48, scope: !1981)
!1981 = distinct !DILexicalBlock(scope: !1982, file: !232, line: 1176, column: 13)
!1982 = distinct !DILexicalBlock(scope: !1977, file: !232, line: 1175, column: 14)
!1983 = !DILocation(line: 1176, column: 52, scope: !1981)
!1984 = !DILocation(line: 1176, column: 13, scope: !1982)
!1985 = !DILocation(line: 1176, column: 111, scope: !1981)
!1986 = !DILocation(line: 1176, column: 10, scope: !1982)
!1987 = !DILocation(line: 1177, column: 2, scope: !1982)
!1988 = !DILocation(line: 1178, column: 9, scope: !1965)
!1989 = !DILocation(line: 1178, column: 2, scope: !1965)
!1990 = distinct !DISubprogram(name: "z_unpend_first_thread", scope: !232, file: !232, line: 901, type: !1895, scopeLine: 902, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !213)
!1991 = !DILocalVariable(name: "wait_q", arg: 1, scope: !1990, file: !232, line: 901, type: !137)
!1992 = !DILocation(line: 901, column: 51, scope: !1990)
!1993 = !DILocalVariable(name: "thread", scope: !1990, file: !232, line: 903, type: !101)
!1994 = !DILocation(line: 903, column: 19, scope: !1990)
!1995 = !DILocalVariable(name: "__i", scope: !1996, file: !232, line: 905, type: !561)
!1996 = distinct !DILexicalBlock(scope: !1990, file: !232, line: 905, column: 2)
!1997 = !DILocation(line: 905, column: 24, scope: !1996)
!1998 = !DILocalVariable(name: "__key", scope: !1996, file: !232, line: 905, type: !561)
!1999 = !DILocation(line: 905, column: 34, scope: !1996)
!2000 = !DILocation(line: 160, column: 94, scope: !569, inlinedAt: !2001)
!2001 = distinct !DILocation(line: 905, column: 42, scope: !1996)
!2002 = !DILocation(line: 162, column: 9, scope: !569, inlinedAt: !2001)
!2003 = !DILocation(line: 163, column: 19, scope: !569, inlinedAt: !2001)
!2004 = !DILocation(line: 44, column: 15, scope: !579, inlinedAt: !2005)
!2005 = distinct !DILocation(line: 169, column: 10, scope: !569, inlinedAt: !2001)
!2006 = !DILocation(line: 48, column: 2, scope: !579, inlinedAt: !2005)
!2007 = !DILocation(line: 80, column: 9, scope: !579, inlinedAt: !2005)
!2008 = !DILocation(line: 169, column: 8, scope: !569, inlinedAt: !2001)
!2009 = !DILocation(line: 171, column: 26, scope: !569, inlinedAt: !2001)
!2010 = !DILocation(line: 110, column: 94, scope: !591, inlinedAt: !2011)
!2011 = distinct !DILocation(line: 171, column: 2, scope: !569, inlinedAt: !2001)
!2012 = !DILocation(line: 112, column: 9, scope: !591, inlinedAt: !2011)
!2013 = !DILocation(line: 177, column: 27, scope: !569, inlinedAt: !2001)
!2014 = !DILocation(line: 121, column: 95, scope: !599, inlinedAt: !2015)
!2015 = distinct !DILocation(line: 177, column: 2, scope: !569, inlinedAt: !2001)
!2016 = !DILocation(line: 123, column: 9, scope: !599, inlinedAt: !2015)
!2017 = !DILocation(line: 179, column: 2, scope: !569, inlinedAt: !2001)
!2018 = !DILocation(line: 905, column: 42, scope: !1996)
!2019 = !DILocation(line: 905, column: 7, scope: !1996)
!2020 = !DILocation(line: 905, column: 77, scope: !2021)
!2021 = distinct !DILexicalBlock(scope: !1996, file: !232, line: 905, column: 2)
!2022 = !DILocation(line: 905, column: 72, scope: !2021)
!2023 = !DILocation(line: 905, column: 2, scope: !1996)
!2024 = !DILocation(line: 906, column: 30, scope: !2025)
!2025 = distinct !DILexicalBlock(scope: !2021, file: !232, line: 905, column: 134)
!2026 = !DILocation(line: 906, column: 38, scope: !2025)
!2027 = !DILocation(line: 906, column: 12, scope: !2025)
!2028 = !DILocation(line: 906, column: 10, scope: !2025)
!2029 = !DILocation(line: 908, column: 7, scope: !2030)
!2030 = distinct !DILexicalBlock(scope: !2025, file: !232, line: 908, column: 7)
!2031 = !DILocation(line: 908, column: 14, scope: !2030)
!2032 = !DILocation(line: 908, column: 7, scope: !2025)
!2033 = !DILocation(line: 909, column: 29, scope: !2034)
!2034 = distinct !DILexicalBlock(scope: !2030, file: !232, line: 908, column: 20)
!2035 = !DILocation(line: 909, column: 4, scope: !2034)
!2036 = !DILocation(line: 910, column: 33, scope: !2034)
!2037 = !DILocation(line: 910, column: 10, scope: !2034)
!2038 = !DILocation(line: 911, column: 3, scope: !2034)
!2039 = !DILocation(line: 912, column: 2, scope: !2025)
!2040 = !DILocation(line: 905, column: 82, scope: !2021)
!2041 = !DILocation(line: 235, column: 84, scope: !621, inlinedAt: !2042)
!2042 = distinct !DILocation(line: 905, column: 82, scope: !2021)
!2043 = !DILocation(line: 236, column: 23, scope: !621, inlinedAt: !2042)
!2044 = !DILocation(line: 238, column: 9, scope: !621, inlinedAt: !2042)
!2045 = !DILocation(line: 261, column: 22, scope: !621, inlinedAt: !2042)
!2046 = !DILocation(line: 88, column: 80, scope: !631, inlinedAt: !2047)
!2047 = distinct !DILocation(line: 261, column: 2, scope: !621, inlinedAt: !2042)
!2048 = !DILocation(line: 91, column: 6, scope: !637, inlinedAt: !2047)
!2049 = !DILocation(line: 91, column: 10, scope: !637, inlinedAt: !2047)
!2050 = !DILocation(line: 91, column: 6, scope: !631, inlinedAt: !2047)
!2051 = !DILocation(line: 92, column: 3, scope: !641, inlinedAt: !2047)
!2052 = !DILocation(line: 94, column: 2, scope: !631, inlinedAt: !2047)
!2053 = !DILocation(line: 114, column: 1, scope: !631, inlinedAt: !2047)
!2054 = !DILocation(line: 905, column: 125, scope: !2021)
!2055 = !DILocation(line: 905, column: 129, scope: !2021)
!2056 = !DILocation(line: 905, column: 2, scope: !2021)
!2057 = distinct !{!2057, !2023, !2058}
!2058 = !DILocation(line: 912, column: 2, scope: !1996)
!2059 = !DILocation(line: 914, column: 9, scope: !1990)
!2060 = !DILocation(line: 914, column: 2, scope: !1990)
!2061 = distinct !DISubprogram(name: "z_unpend_thread", scope: !232, file: !232, line: 917, type: !468, scopeLine: 918, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !213)
!2062 = !DILocalVariable(name: "thread", arg: 1, scope: !2061, file: !232, line: 917, type: !101)
!2063 = !DILocation(line: 917, column: 39, scope: !2061)
!2064 = !DILocation(line: 919, column: 29, scope: !2061)
!2065 = !DILocation(line: 789, column: 88, scope: !1567, inlinedAt: !2066)
!2066 = distinct !DILocation(line: 919, column: 2, scope: !2061)
!2067 = !DILocation(line: 791, column: 24, scope: !1571, inlinedAt: !2066)
!2068 = !DILocation(line: 791, column: 34, scope: !1571, inlinedAt: !2066)
!2069 = !DILocation(line: 160, column: 94, scope: !569, inlinedAt: !2070)
!2070 = distinct !DILocation(line: 791, column: 42, scope: !1571, inlinedAt: !2066)
!2071 = !DILocation(line: 162, column: 9, scope: !569, inlinedAt: !2070)
!2072 = !DILocation(line: 163, column: 19, scope: !569, inlinedAt: !2070)
!2073 = !DILocation(line: 44, column: 15, scope: !579, inlinedAt: !2074)
!2074 = distinct !DILocation(line: 169, column: 10, scope: !569, inlinedAt: !2070)
!2075 = !DILocation(line: 48, column: 2, scope: !579, inlinedAt: !2074)
!2076 = !DILocation(line: 80, column: 9, scope: !579, inlinedAt: !2074)
!2077 = !DILocation(line: 169, column: 8, scope: !569, inlinedAt: !2070)
!2078 = !DILocation(line: 171, column: 26, scope: !569, inlinedAt: !2070)
!2079 = !DILocation(line: 110, column: 94, scope: !591, inlinedAt: !2080)
!2080 = distinct !DILocation(line: 171, column: 2, scope: !569, inlinedAt: !2070)
!2081 = !DILocation(line: 112, column: 9, scope: !591, inlinedAt: !2080)
!2082 = !DILocation(line: 177, column: 27, scope: !569, inlinedAt: !2070)
!2083 = !DILocation(line: 121, column: 95, scope: !599, inlinedAt: !2084)
!2084 = distinct !DILocation(line: 177, column: 2, scope: !569, inlinedAt: !2070)
!2085 = !DILocation(line: 123, column: 9, scope: !599, inlinedAt: !2084)
!2086 = !DILocation(line: 179, column: 2, scope: !569, inlinedAt: !2070)
!2087 = !DILocation(line: 791, column: 42, scope: !1571, inlinedAt: !2066)
!2088 = !DILocation(line: 791, column: 7, scope: !1571, inlinedAt: !2066)
!2089 = !DILocation(line: 791, column: 77, scope: !1596, inlinedAt: !2066)
!2090 = !DILocation(line: 791, column: 72, scope: !1596, inlinedAt: !2066)
!2091 = !DILocation(line: 791, column: 2, scope: !1571, inlinedAt: !2066)
!2092 = !DILocation(line: 792, column: 7, scope: !1600, inlinedAt: !2066)
!2093 = !DILocation(line: 792, column: 20, scope: !1600, inlinedAt: !2066)
!2094 = !DILocation(line: 792, column: 30, scope: !1600, inlinedAt: !2066)
!2095 = !DILocation(line: 792, column: 7, scope: !1601, inlinedAt: !2066)
!2096 = !DILocation(line: 793, column: 29, scope: !1607, inlinedAt: !2066)
!2097 = !DILocation(line: 793, column: 4, scope: !1607, inlinedAt: !2066)
!2098 = !DILocation(line: 794, column: 3, scope: !1607, inlinedAt: !2066)
!2099 = !DILocation(line: 791, column: 82, scope: !1596, inlinedAt: !2066)
!2100 = !DILocation(line: 235, column: 84, scope: !621, inlinedAt: !2101)
!2101 = distinct !DILocation(line: 791, column: 82, scope: !1596, inlinedAt: !2066)
!2102 = !DILocation(line: 236, column: 23, scope: !621, inlinedAt: !2101)
!2103 = !DILocation(line: 238, column: 9, scope: !621, inlinedAt: !2101)
!2104 = !DILocation(line: 261, column: 22, scope: !621, inlinedAt: !2101)
!2105 = !DILocation(line: 88, column: 80, scope: !631, inlinedAt: !2106)
!2106 = distinct !DILocation(line: 261, column: 2, scope: !621, inlinedAt: !2101)
!2107 = !DILocation(line: 91, column: 6, scope: !637, inlinedAt: !2106)
!2108 = !DILocation(line: 91, column: 10, scope: !637, inlinedAt: !2106)
!2109 = !DILocation(line: 91, column: 6, scope: !631, inlinedAt: !2106)
!2110 = !DILocation(line: 92, column: 3, scope: !641, inlinedAt: !2106)
!2111 = !DILocation(line: 94, column: 2, scope: !631, inlinedAt: !2106)
!2112 = !DILocation(line: 114, column: 1, scope: !631, inlinedAt: !2106)
!2113 = !DILocation(line: 791, column: 129, scope: !1596, inlinedAt: !2066)
!2114 = !DILocation(line: 791, column: 2, scope: !1596, inlinedAt: !2066)
!2115 = distinct !{!2115, !2091, !2116}
!2116 = !DILocation(line: 795, column: 2, scope: !1571, inlinedAt: !2066)
!2117 = !DILocation(line: 920, column: 31, scope: !2061)
!2118 = !DILocation(line: 920, column: 8, scope: !2061)
!2119 = !DILocation(line: 921, column: 1, scope: !2061)
!2120 = distinct !DISubprogram(name: "z_set_prio", scope: !232, file: !232, line: 926, type: !1353, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !213)
!2121 = !DILocalVariable(name: "thread", arg: 1, scope: !2120, file: !232, line: 926, type: !101)
!2122 = !DILocation(line: 926, column: 35, scope: !2120)
!2123 = !DILocalVariable(name: "prio", arg: 2, scope: !2120, file: !232, line: 926, type: !192)
!2124 = !DILocation(line: 926, column: 47, scope: !2120)
!2125 = !DILocalVariable(name: "need_sched", scope: !2120, file: !232, line: 928, type: !236)
!2126 = !DILocation(line: 928, column: 8, scope: !2120)
!2127 = !DILocalVariable(name: "__i", scope: !2128, file: !232, line: 930, type: !561)
!2128 = distinct !DILexicalBlock(scope: !2120, file: !232, line: 930, column: 2)
!2129 = !DILocation(line: 930, column: 24, scope: !2128)
!2130 = !DILocalVariable(name: "__key", scope: !2128, file: !232, line: 930, type: !561)
!2131 = !DILocation(line: 930, column: 34, scope: !2128)
!2132 = !DILocation(line: 160, column: 94, scope: !569, inlinedAt: !2133)
!2133 = distinct !DILocation(line: 930, column: 42, scope: !2128)
!2134 = !DILocation(line: 162, column: 9, scope: !569, inlinedAt: !2133)
!2135 = !DILocation(line: 163, column: 19, scope: !569, inlinedAt: !2133)
!2136 = !DILocation(line: 44, column: 15, scope: !579, inlinedAt: !2137)
!2137 = distinct !DILocation(line: 169, column: 10, scope: !569, inlinedAt: !2133)
!2138 = !DILocation(line: 48, column: 2, scope: !579, inlinedAt: !2137)
!2139 = !DILocation(line: 80, column: 9, scope: !579, inlinedAt: !2137)
!2140 = !DILocation(line: 169, column: 8, scope: !569, inlinedAt: !2133)
!2141 = !DILocation(line: 171, column: 26, scope: !569, inlinedAt: !2133)
!2142 = !DILocation(line: 110, column: 94, scope: !591, inlinedAt: !2143)
!2143 = distinct !DILocation(line: 171, column: 2, scope: !569, inlinedAt: !2133)
!2144 = !DILocation(line: 112, column: 9, scope: !591, inlinedAt: !2143)
!2145 = !DILocation(line: 177, column: 27, scope: !569, inlinedAt: !2133)
!2146 = !DILocation(line: 121, column: 95, scope: !599, inlinedAt: !2147)
!2147 = distinct !DILocation(line: 177, column: 2, scope: !569, inlinedAt: !2133)
!2148 = !DILocation(line: 123, column: 9, scope: !599, inlinedAt: !2147)
!2149 = !DILocation(line: 179, column: 2, scope: !569, inlinedAt: !2133)
!2150 = !DILocation(line: 930, column: 42, scope: !2128)
!2151 = !DILocation(line: 930, column: 7, scope: !2128)
!2152 = !DILocation(line: 930, column: 77, scope: !2153)
!2153 = distinct !DILexicalBlock(scope: !2128, file: !232, line: 930, column: 2)
!2154 = !DILocation(line: 930, column: 72, scope: !2153)
!2155 = !DILocation(line: 930, column: 2, scope: !2128)
!2156 = !DILocation(line: 931, column: 34, scope: !2157)
!2157 = distinct !DILexicalBlock(scope: !2153, file: !232, line: 930, column: 134)
!2158 = !DILocation(line: 931, column: 16, scope: !2157)
!2159 = !DILocation(line: 931, column: 14, scope: !2157)
!2160 = !DILocation(line: 933, column: 7, scope: !2161)
!2161 = distinct !DILexicalBlock(scope: !2157, file: !232, line: 933, column: 7)
!2162 = !DILocation(line: 933, column: 7, scope: !2157)
!2163 = !DILocation(line: 936, column: 20, scope: !2164)
!2164 = distinct !DILexicalBlock(scope: !2165, file: !232, line: 935, column: 42)
!2165 = distinct !DILexicalBlock(scope: !2166, file: !232, line: 935, column: 8)
!2166 = distinct !DILexicalBlock(scope: !2161, file: !232, line: 933, column: 19)
!2167 = !DILocation(line: 274, column: 83, scope: !759, inlinedAt: !2168)
!2168 = distinct !DILocation(line: 936, column: 5, scope: !2164)
!2169 = !DILocation(line: 276, column: 2, scope: !759, inlinedAt: !2168)
!2170 = !DILocation(line: 276, column: 15, scope: !759, inlinedAt: !2168)
!2171 = !DILocation(line: 276, column: 28, scope: !759, inlinedAt: !2168)
!2172 = !DILocation(line: 277, column: 26, scope: !766, inlinedAt: !2168)
!2173 = !DILocation(line: 277, column: 6, scope: !766, inlinedAt: !2168)
!2174 = !DILocation(line: 277, column: 6, scope: !759, inlinedAt: !2168)
!2175 = !DILocation(line: 278, column: 15, scope: !770, inlinedAt: !2168)
!2176 = !DILocation(line: 242, column: 80, scope: !772, inlinedAt: !2177)
!2177 = distinct !DILocation(line: 278, column: 3, scope: !770, inlinedAt: !2168)
!2178 = !DILocation(line: 244, column: 33, scope: !772, inlinedAt: !2177)
!2179 = !DILocation(line: 208, column: 81, scope: !777, inlinedAt: !2180)
!2180 = distinct !DILocation(line: 244, column: 21, scope: !772, inlinedAt: !2177)
!2181 = !DILocation(line: 223, column: 9, scope: !777, inlinedAt: !2180)
!2182 = !DILocation(line: 244, column: 42, scope: !772, inlinedAt: !2177)
!2183 = !DILocation(line: 244, column: 2, scope: !772, inlinedAt: !2177)
!2184 = !DILocation(line: 279, column: 2, scope: !770, inlinedAt: !2168)
!2185 = !DILocation(line: 937, column: 25, scope: !2164)
!2186 = !DILocation(line: 937, column: 5, scope: !2164)
!2187 = !DILocation(line: 937, column: 13, scope: !2164)
!2188 = !DILocation(line: 937, column: 18, scope: !2164)
!2189 = !DILocation(line: 937, column: 23, scope: !2164)
!2190 = !DILocation(line: 938, column: 18, scope: !2164)
!2191 = !DILocation(line: 260, column: 81, scope: !789, inlinedAt: !2192)
!2192 = distinct !DILocation(line: 938, column: 5, scope: !2164)
!2193 = !DILocation(line: 262, column: 2, scope: !789, inlinedAt: !2192)
!2194 = !DILocation(line: 262, column: 15, scope: !789, inlinedAt: !2192)
!2195 = !DILocation(line: 262, column: 28, scope: !789, inlinedAt: !2192)
!2196 = !DILocation(line: 263, column: 26, scope: !796, inlinedAt: !2192)
!2197 = !DILocation(line: 263, column: 6, scope: !796, inlinedAt: !2192)
!2198 = !DILocation(line: 263, column: 6, scope: !789, inlinedAt: !2192)
!2199 = !DILocation(line: 264, column: 12, scope: !800, inlinedAt: !2192)
!2200 = !DILocation(line: 237, column: 77, scope: !802, inlinedAt: !2201)
!2201 = distinct !DILocation(line: 264, column: 3, scope: !800, inlinedAt: !2192)
!2202 = !DILocation(line: 239, column: 30, scope: !802, inlinedAt: !2201)
!2203 = !DILocation(line: 208, column: 81, scope: !777, inlinedAt: !2204)
!2204 = distinct !DILocation(line: 239, column: 18, scope: !802, inlinedAt: !2201)
!2205 = !DILocation(line: 223, column: 9, scope: !777, inlinedAt: !2204)
!2206 = !DILocation(line: 239, column: 39, scope: !802, inlinedAt: !2201)
!2207 = !DILocation(line: 189, column: 80, scope: !811, inlinedAt: !2208)
!2208 = distinct !DILocation(line: 239, column: 2, scope: !802, inlinedAt: !2201)
!2209 = !DILocation(line: 190, column: 25, scope: !811, inlinedAt: !2208)
!2210 = !DILocation(line: 192, column: 19, scope: !811, inlinedAt: !2208)
!2211 = !DILocation(line: 196, column: 33, scope: !822, inlinedAt: !2208)
!2212 = !DILocation(line: 196, column: 13, scope: !822, inlinedAt: !2208)
!2213 = !DILocation(line: 196, column: 37, scope: !822, inlinedAt: !2208)
!2214 = !DILocation(line: 196, column: 12, scope: !822, inlinedAt: !2208)
!2215 = !DILocation(line: 196, column: 100, scope: !827, inlinedAt: !2208)
!2216 = !DILocation(line: 196, column: 80, scope: !827, inlinedAt: !2208)
!2217 = !DILocation(line: 196, column: 46, scope: !822, inlinedAt: !2208)
!2218 = !DILocation(line: 196, column: 164, scope: !827, inlinedAt: !2208)
!2219 = !DILocation(line: 196, column: 9, scope: !822, inlinedAt: !2208)
!2220 = !DILocation(line: 196, column: 7, scope: !822, inlinedAt: !2208)
!2221 = !DILocation(line: 196, column: 173, scope: !834, inlinedAt: !2208)
!2222 = !DILocation(line: 196, column: 175, scope: !834, inlinedAt: !2208)
!2223 = !DILocation(line: 196, column: 2, scope: !822, inlinedAt: !2208)
!2224 = !DILocation(line: 197, column: 24, scope: !838, inlinedAt: !2208)
!2225 = !DILocation(line: 197, column: 32, scope: !838, inlinedAt: !2208)
!2226 = !DILocation(line: 197, column: 7, scope: !838, inlinedAt: !2208)
!2227 = !DILocation(line: 197, column: 35, scope: !838, inlinedAt: !2208)
!2228 = !DILocation(line: 197, column: 7, scope: !839, inlinedAt: !2208)
!2229 = !DILocation(line: 198, column: 22, scope: !845, inlinedAt: !2208)
!2230 = !DILocation(line: 199, column: 8, scope: !845, inlinedAt: !2208)
!2231 = !DILocation(line: 198, column: 4, scope: !845, inlinedAt: !2208)
!2232 = !DILocation(line: 200, column: 4, scope: !845, inlinedAt: !2208)
!2233 = !DILocation(line: 196, column: 187, scope: !834, inlinedAt: !2208)
!2234 = !DILocation(line: 196, column: 189, scope: !834, inlinedAt: !2208)
!2235 = !DILocation(line: 196, column: 186, scope: !834, inlinedAt: !2208)
!2236 = !DILocation(line: 196, column: 219, scope: !834, inlinedAt: !2208)
!2237 = !DILocation(line: 196, column: 225, scope: !834, inlinedAt: !2208)
!2238 = !DILocation(line: 196, column: 199, scope: !834, inlinedAt: !2208)
!2239 = !DILocation(line: 196, column: 247, scope: !834, inlinedAt: !2208)
!2240 = !DILocation(line: 196, column: 198, scope: !834, inlinedAt: !2208)
!2241 = !DILocation(line: 196, column: 310, scope: !858, inlinedAt: !2208)
!2242 = !DILocation(line: 196, column: 316, scope: !858, inlinedAt: !2208)
!2243 = !DILocation(line: 196, column: 290, scope: !858, inlinedAt: !2208)
!2244 = !DILocation(line: 196, column: 256, scope: !834, inlinedAt: !2208)
!2245 = !DILocation(line: 196, column: 398, scope: !858, inlinedAt: !2208)
!2246 = !DILocation(line: 196, column: 183, scope: !834, inlinedAt: !2208)
!2247 = !DILocation(line: 196, column: 2, scope: !834, inlinedAt: !2208)
!2248 = distinct !{!2248, !2223, !2249}
!2249 = !DILocation(line: 202, column: 2, scope: !822, inlinedAt: !2208)
!2250 = !DILocation(line: 204, column: 19, scope: !811, inlinedAt: !2208)
!2251 = !DILocation(line: 204, column: 24, scope: !811, inlinedAt: !2208)
!2252 = !DILocation(line: 204, column: 2, scope: !811, inlinedAt: !2208)
!2253 = !DILocation(line: 205, column: 1, scope: !811, inlinedAt: !2208)
!2254 = !DILocation(line: 265, column: 2, scope: !800, inlinedAt: !2192)
!2255 = !DILocation(line: 942, column: 4, scope: !2166)
!2256 = !DILocation(line: 943, column: 3, scope: !2166)
!2257 = !DILocation(line: 944, column: 24, scope: !2258)
!2258 = distinct !DILexicalBlock(scope: !2161, file: !232, line: 943, column: 10)
!2259 = !DILocation(line: 944, column: 4, scope: !2258)
!2260 = !DILocation(line: 944, column: 12, scope: !2258)
!2261 = !DILocation(line: 944, column: 17, scope: !2258)
!2262 = !DILocation(line: 944, column: 22, scope: !2258)
!2263 = !DILocation(line: 946, column: 2, scope: !2157)
!2264 = !DILocation(line: 930, column: 82, scope: !2153)
!2265 = !DILocation(line: 235, column: 84, scope: !621, inlinedAt: !2266)
!2266 = distinct !DILocation(line: 930, column: 82, scope: !2153)
!2267 = !DILocation(line: 236, column: 23, scope: !621, inlinedAt: !2266)
!2268 = !DILocation(line: 238, column: 9, scope: !621, inlinedAt: !2266)
!2269 = !DILocation(line: 261, column: 22, scope: !621, inlinedAt: !2266)
!2270 = !DILocation(line: 88, column: 80, scope: !631, inlinedAt: !2271)
!2271 = distinct !DILocation(line: 261, column: 2, scope: !621, inlinedAt: !2266)
!2272 = !DILocation(line: 91, column: 6, scope: !637, inlinedAt: !2271)
!2273 = !DILocation(line: 91, column: 10, scope: !637, inlinedAt: !2271)
!2274 = !DILocation(line: 91, column: 6, scope: !631, inlinedAt: !2271)
!2275 = !DILocation(line: 92, column: 3, scope: !641, inlinedAt: !2271)
!2276 = !DILocation(line: 94, column: 2, scope: !631, inlinedAt: !2271)
!2277 = !DILocation(line: 114, column: 1, scope: !631, inlinedAt: !2271)
!2278 = !DILocation(line: 930, column: 125, scope: !2153)
!2279 = !DILocation(line: 930, column: 129, scope: !2153)
!2280 = !DILocation(line: 930, column: 2, scope: !2153)
!2281 = distinct !{!2281, !2155, !2282}
!2282 = !DILocation(line: 946, column: 2, scope: !2128)
!2283 = !DILocation(line: 948, column: 2, scope: !2120)
!2284 = !DILocation(line: 948, column: 7, scope: !2285)
!2285 = distinct !DILexicalBlock(scope: !2120, file: !232, line: 948, column: 5)
!2286 = !DILocation(line: 950, column: 9, scope: !2120)
!2287 = !DILocation(line: 950, column: 2, scope: !2120)
!2288 = distinct !DISubprogram(name: "z_is_thread_ready", scope: !737, file: !737, line: 122, type: !498, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !213)
!2289 = !DILocalVariable(name: "thread", arg: 1, scope: !2288, file: !737, line: 122, type: !101)
!2290 = !DILocation(line: 122, column: 56, scope: !2288)
!2291 = !DILocation(line: 124, column: 47, scope: !2288)
!2292 = !DILocation(line: 124, column: 12, scope: !2288)
!2293 = !DILocation(line: 124, column: 11, scope: !2288)
!2294 = !DILocation(line: 124, column: 56, scope: !2288)
!2295 = !DILocation(line: 124, column: 62, scope: !2288)
!2296 = !DILocation(line: 125, column: 31, scope: !2288)
!2297 = !DILocation(line: 125, column: 4, scope: !2288)
!2298 = !DILocation(line: 124, column: 9, scope: !2288)
!2299 = !DILocation(line: 124, column: 2, scope: !2288)
!2300 = distinct !DISubprogram(name: "z_thread_priority_set", scope: !232, file: !232, line: 953, type: !2301, scopeLine: 954, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !213)
!2301 = !DISubroutineType(types: !2302)
!2302 = !{null, !101, !192}
!2303 = !DILocalVariable(name: "thread", arg: 1, scope: !2300, file: !232, line: 953, type: !101)
!2304 = !DILocation(line: 953, column: 45, scope: !2300)
!2305 = !DILocalVariable(name: "prio", arg: 2, scope: !2300, file: !232, line: 953, type: !192)
!2306 = !DILocation(line: 953, column: 57, scope: !2300)
!2307 = !DILocalVariable(name: "need_sched", scope: !2300, file: !232, line: 955, type: !236)
!2308 = !DILocation(line: 955, column: 8, scope: !2300)
!2309 = !DILocation(line: 955, column: 32, scope: !2300)
!2310 = !DILocation(line: 955, column: 40, scope: !2300)
!2311 = !DILocation(line: 955, column: 21, scope: !2300)
!2312 = !DILocation(line: 957, column: 2, scope: !2300)
!2313 = !DILocation(line: 959, column: 6, scope: !2314)
!2314 = distinct !DILexicalBlock(scope: !2300, file: !232, line: 959, column: 6)
!2315 = !DILocation(line: 959, column: 17, scope: !2314)
!2316 = !DILocation(line: 959, column: 36, scope: !2314)
!2317 = !DILocation(line: 959, column: 45, scope: !2314)
!2318 = !DILocation(line: 959, column: 50, scope: !2314)
!2319 = !DILocation(line: 959, column: 20, scope: !2314)
!2320 = !DILocation(line: 959, column: 63, scope: !2314)
!2321 = !DILocation(line: 959, column: 6, scope: !2300)
!2322 = !DILocation(line: 960, column: 3, scope: !2323)
!2323 = distinct !DILexicalBlock(scope: !2314, file: !232, line: 959, column: 70)
!2324 = !DILocation(line: 961, column: 2, scope: !2323)
!2325 = !DILocation(line: 962, column: 1, scope: !2300)
!2326 = distinct !DISubprogram(name: "flag_ipi", scope: !232, file: !232, line: 415, type: !652, scopeLine: 416, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !213)
!2327 = !DILocation(line: 422, column: 1, scope: !2326)
!2328 = distinct !DISubprogram(name: "resched", scope: !232, file: !232, line: 964, type: !2329, scopeLine: 965, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !213)
!2329 = !DISubroutineType(types: !2330)
!2330 = !{!236, !98}
!2331 = !DILocalVariable(name: "key", arg: 1, scope: !2328, file: !232, line: 964, type: !98)
!2332 = !DILocation(line: 964, column: 38, scope: !2328)
!2333 = !DILocation(line: 970, column: 27, scope: !2328)
!2334 = !DILocalVariable(name: "key", arg: 1, scope: !2335, file: !580, line: 116, type: !100)
!2335 = distinct !DISubprogram(name: "arch_irq_unlocked", scope: !580, file: !580, line: 116, type: !2336, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !213)
!2336 = !DISubroutineType(types: !2337)
!2337 = !{!236, !100}
!2338 = !DILocation(line: 116, column: 83, scope: !2335, inlinedAt: !2339)
!2339 = distinct !DILocation(line: 970, column: 9, scope: !2328)
!2340 = !DILocation(line: 119, column: 9, scope: !2335, inlinedAt: !2339)
!2341 = !DILocation(line: 119, column: 13, scope: !2335, inlinedAt: !2339)
!2342 = !DILocation(line: 970, column: 32, scope: !2328)
!2343 = !DILocalVariable(name: "result", scope: !2344, file: !2345, line: 820, type: !98)
!2344 = distinct !DISubprogram(name: "__get_IPSR", scope: !2345, file: !2345, line: 818, type: !2346, scopeLine: 819, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !213)
!2345 = !DIFile(filename: "modules/hal/cmsis/CMSIS/Core/Include/cmsis_armclang.h", directory: "/home/sri/zephyrproject")
!2346 = !DISubroutineType(types: !2347)
!2347 = !{!98}
!2348 = !DILocation(line: 820, column: 12, scope: !2344, inlinedAt: !2349)
!2349 = distinct !DILocation(line: 48, column: 10, scope: !2350, inlinedAt: !2354)
!2350 = distinct !DISubprogram(name: "arch_is_in_isr", scope: !2351, file: !2351, line: 46, type: !2352, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !213)
!2351 = !DIFile(filename: "arch/arm/include/cortex_m/exc.h", directory: "/home/sri/zephyrproject/zephyr")
!2352 = !DISubroutineType(types: !2353)
!2353 = !{!236}
!2354 = distinct !DILocation(line: 970, column: 36, scope: !2328)
!2355 = !DILocation(line: 822, column: 3, scope: !2344, inlinedAt: !2349)
!2356 = !{i64 168201}
!2357 = !DILocation(line: 823, column: 10, scope: !2344, inlinedAt: !2349)
!2358 = !DILocation(line: 48, column: 9, scope: !2350, inlinedAt: !2354)
!2359 = !DILocation(line: 970, column: 35, scope: !2328)
!2360 = !DILocation(line: 0, scope: !2328)
!2361 = !DILocation(line: 970, column: 2, scope: !2328)
!2362 = distinct !DISubprogram(name: "need_swap", scope: !232, file: !232, line: 977, type: !2352, scopeLine: 978, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !213)
!2363 = !DILocalVariable(name: "new_thread", scope: !2362, file: !232, line: 983, type: !101)
!2364 = !DILocation(line: 983, column: 19, scope: !2362)
!2365 = !DILocation(line: 986, column: 31, scope: !2362)
!2366 = !DILocation(line: 986, column: 13, scope: !2362)
!2367 = !DILocation(line: 987, column: 9, scope: !2362)
!2368 = !DILocation(line: 987, column: 39, scope: !2362)
!2369 = !DILocation(line: 987, column: 20, scope: !2362)
!2370 = !DILocation(line: 987, column: 2, scope: !2362)
!2371 = distinct !DISubprogram(name: "signal_pending_ipi", scope: !232, file: !232, line: 282, type: !652, scopeLine: 283, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !213)
!2372 = !DILocation(line: 299, column: 1, scope: !2371)
!2373 = distinct !DISubprogram(name: "z_reschedule_irqlock", scope: !232, file: !232, line: 1001, type: !2374, scopeLine: 1002, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !213)
!2374 = !DISubroutineType(types: !2375)
!2375 = !{null, !98}
!2376 = !DILocalVariable(name: "key", arg: 1, scope: !2373, file: !232, line: 1001, type: !98)
!2377 = !DILocation(line: 1001, column: 36, scope: !2373)
!2378 = !DILocation(line: 1003, column: 14, scope: !2379)
!2379 = distinct !DILexicalBlock(scope: !2373, file: !232, line: 1003, column: 6)
!2380 = !DILocation(line: 1003, column: 6, scope: !2379)
!2381 = !DILocation(line: 1003, column: 6, scope: !2373)
!2382 = !DILocation(line: 1004, column: 18, scope: !2383)
!2383 = distinct !DILexicalBlock(scope: !2379, file: !232, line: 1003, column: 20)
!2384 = !DILocation(line: 1004, column: 3, scope: !2383)
!2385 = !DILocation(line: 1005, column: 2, scope: !2383)
!2386 = !DILocation(line: 1006, column: 19, scope: !2387)
!2387 = distinct !DILexicalBlock(scope: !2379, file: !232, line: 1005, column: 9)
!2388 = !DILocation(line: 88, column: 80, scope: !631, inlinedAt: !2389)
!2389 = distinct !DILocation(line: 1006, column: 3, scope: !2387)
!2390 = !DILocation(line: 91, column: 6, scope: !637, inlinedAt: !2389)
!2391 = !DILocation(line: 91, column: 10, scope: !637, inlinedAt: !2389)
!2392 = !DILocation(line: 91, column: 6, scope: !631, inlinedAt: !2389)
!2393 = !DILocation(line: 92, column: 3, scope: !641, inlinedAt: !2389)
!2394 = !DILocation(line: 94, column: 2, scope: !631, inlinedAt: !2389)
!2395 = !DILocation(line: 114, column: 1, scope: !631, inlinedAt: !2389)
!2396 = !DILocation(line: 1007, column: 3, scope: !2387)
!2397 = !DILocation(line: 1009, column: 1, scope: !2373)
!2398 = distinct !DISubprogram(name: "k_sched_lock", scope: !232, file: !232, line: 1011, type: !652, scopeLine: 1012, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !213)
!2399 = !DILocalVariable(name: "__i", scope: !2400, file: !232, line: 1013, type: !561)
!2400 = distinct !DILexicalBlock(scope: !2398, file: !232, line: 1013, column: 2)
!2401 = !DILocation(line: 1013, column: 24, scope: !2400)
!2402 = !DILocalVariable(name: "__key", scope: !2400, file: !232, line: 1013, type: !561)
!2403 = !DILocation(line: 1013, column: 34, scope: !2400)
!2404 = !DILocation(line: 160, column: 94, scope: !569, inlinedAt: !2405)
!2405 = distinct !DILocation(line: 1013, column: 42, scope: !2400)
!2406 = !DILocation(line: 162, column: 9, scope: !569, inlinedAt: !2405)
!2407 = !DILocation(line: 163, column: 19, scope: !569, inlinedAt: !2405)
!2408 = !DILocation(line: 44, column: 15, scope: !579, inlinedAt: !2409)
!2409 = distinct !DILocation(line: 169, column: 10, scope: !569, inlinedAt: !2405)
!2410 = !DILocation(line: 48, column: 2, scope: !579, inlinedAt: !2409)
!2411 = !DILocation(line: 80, column: 9, scope: !579, inlinedAt: !2409)
!2412 = !DILocation(line: 169, column: 8, scope: !569, inlinedAt: !2405)
!2413 = !DILocation(line: 171, column: 26, scope: !569, inlinedAt: !2405)
!2414 = !DILocation(line: 110, column: 94, scope: !591, inlinedAt: !2415)
!2415 = distinct !DILocation(line: 171, column: 2, scope: !569, inlinedAt: !2405)
!2416 = !DILocation(line: 112, column: 9, scope: !591, inlinedAt: !2415)
!2417 = !DILocation(line: 177, column: 27, scope: !569, inlinedAt: !2405)
!2418 = !DILocation(line: 121, column: 95, scope: !599, inlinedAt: !2419)
!2419 = distinct !DILocation(line: 177, column: 2, scope: !569, inlinedAt: !2405)
!2420 = !DILocation(line: 123, column: 9, scope: !599, inlinedAt: !2419)
!2421 = !DILocation(line: 179, column: 2, scope: !569, inlinedAt: !2405)
!2422 = !DILocation(line: 1013, column: 42, scope: !2400)
!2423 = !DILocation(line: 1013, column: 7, scope: !2400)
!2424 = !DILocation(line: 1013, column: 77, scope: !2425)
!2425 = distinct !DILexicalBlock(scope: !2400, file: !232, line: 1013, column: 2)
!2426 = !DILocation(line: 1013, column: 72, scope: !2425)
!2427 = !DILocation(line: 1013, column: 2, scope: !2400)
!2428 = !DILocation(line: 1014, column: 3, scope: !2429)
!2429 = distinct !DILexicalBlock(scope: !2425, file: !232, line: 1013, column: 134)
!2430 = !DILocation(line: 1014, column: 8, scope: !2431)
!2431 = distinct !DILexicalBlock(scope: !2429, file: !232, line: 1014, column: 6)
!2432 = !DILocation(line: 1016, column: 3, scope: !2429)
!2433 = !DILocation(line: 1017, column: 2, scope: !2429)
!2434 = !DILocation(line: 1013, column: 82, scope: !2425)
!2435 = !DILocation(line: 235, column: 84, scope: !621, inlinedAt: !2436)
!2436 = distinct !DILocation(line: 1013, column: 82, scope: !2425)
!2437 = !DILocation(line: 236, column: 23, scope: !621, inlinedAt: !2436)
!2438 = !DILocation(line: 238, column: 9, scope: !621, inlinedAt: !2436)
!2439 = !DILocation(line: 261, column: 22, scope: !621, inlinedAt: !2436)
!2440 = !DILocation(line: 88, column: 80, scope: !631, inlinedAt: !2441)
!2441 = distinct !DILocation(line: 261, column: 2, scope: !621, inlinedAt: !2436)
!2442 = !DILocation(line: 91, column: 6, scope: !637, inlinedAt: !2441)
!2443 = !DILocation(line: 91, column: 10, scope: !637, inlinedAt: !2441)
!2444 = !DILocation(line: 91, column: 6, scope: !631, inlinedAt: !2441)
!2445 = !DILocation(line: 92, column: 3, scope: !641, inlinedAt: !2441)
!2446 = !DILocation(line: 94, column: 2, scope: !631, inlinedAt: !2441)
!2447 = !DILocation(line: 114, column: 1, scope: !631, inlinedAt: !2441)
!2448 = !DILocation(line: 1013, column: 125, scope: !2425)
!2449 = !DILocation(line: 1013, column: 129, scope: !2425)
!2450 = !DILocation(line: 1013, column: 2, scope: !2425)
!2451 = distinct !{!2451, !2427, !2452}
!2452 = !DILocation(line: 1017, column: 2, scope: !2400)
!2453 = !DILocation(line: 1018, column: 1, scope: !2398)
!2454 = distinct !DISubprogram(name: "z_sched_lock", scope: !737, file: !737, line: 253, type: !652, scopeLine: 254, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !213)
!2455 = !DILocation(line: 258, column: 20, scope: !2454)
!2456 = !DILocation(line: 258, column: 29, scope: !2454)
!2457 = !DILocation(line: 258, column: 34, scope: !2454)
!2458 = !DILocation(line: 258, column: 2, scope: !2454)
!2459 = !DILocation(line: 260, column: 2, scope: !2454)
!2460 = !DILocation(line: 260, column: 7, scope: !2461)
!2461 = distinct !DILexicalBlock(scope: !2454, file: !737, line: 260, column: 5)
!2462 = !{i64 327991}
!2463 = !DILocation(line: 260, column: 47, scope: !2461)
!2464 = !DILocation(line: 261, column: 1, scope: !2454)
!2465 = distinct !DISubprogram(name: "k_sched_unlock", scope: !232, file: !232, line: 1020, type: !652, scopeLine: 1021, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !213)
!2466 = !DILocalVariable(name: "__i", scope: !2467, file: !232, line: 1022, type: !561)
!2467 = distinct !DILexicalBlock(scope: !2465, file: !232, line: 1022, column: 2)
!2468 = !DILocation(line: 1022, column: 24, scope: !2467)
!2469 = !DILocalVariable(name: "__key", scope: !2467, file: !232, line: 1022, type: !561)
!2470 = !DILocation(line: 1022, column: 34, scope: !2467)
!2471 = !DILocation(line: 160, column: 94, scope: !569, inlinedAt: !2472)
!2472 = distinct !DILocation(line: 1022, column: 42, scope: !2467)
!2473 = !DILocation(line: 162, column: 9, scope: !569, inlinedAt: !2472)
!2474 = !DILocation(line: 163, column: 19, scope: !569, inlinedAt: !2472)
!2475 = !DILocation(line: 44, column: 15, scope: !579, inlinedAt: !2476)
!2476 = distinct !DILocation(line: 169, column: 10, scope: !569, inlinedAt: !2472)
!2477 = !DILocation(line: 48, column: 2, scope: !579, inlinedAt: !2476)
!2478 = !DILocation(line: 80, column: 9, scope: !579, inlinedAt: !2476)
!2479 = !DILocation(line: 169, column: 8, scope: !569, inlinedAt: !2472)
!2480 = !DILocation(line: 171, column: 26, scope: !569, inlinedAt: !2472)
!2481 = !DILocation(line: 110, column: 94, scope: !591, inlinedAt: !2482)
!2482 = distinct !DILocation(line: 171, column: 2, scope: !569, inlinedAt: !2472)
!2483 = !DILocation(line: 112, column: 9, scope: !591, inlinedAt: !2482)
!2484 = !DILocation(line: 177, column: 27, scope: !569, inlinedAt: !2472)
!2485 = !DILocation(line: 121, column: 95, scope: !599, inlinedAt: !2486)
!2486 = distinct !DILocation(line: 177, column: 2, scope: !569, inlinedAt: !2472)
!2487 = !DILocation(line: 123, column: 9, scope: !599, inlinedAt: !2486)
!2488 = !DILocation(line: 179, column: 2, scope: !569, inlinedAt: !2472)
!2489 = !DILocation(line: 1022, column: 42, scope: !2467)
!2490 = !DILocation(line: 1022, column: 7, scope: !2467)
!2491 = !DILocation(line: 1022, column: 77, scope: !2492)
!2492 = distinct !DILexicalBlock(scope: !2467, file: !232, line: 1022, column: 2)
!2493 = !DILocation(line: 1022, column: 72, scope: !2492)
!2494 = !DILocation(line: 1022, column: 2, scope: !2467)
!2495 = !DILocation(line: 1026, column: 21, scope: !2496)
!2496 = distinct !DILexicalBlock(scope: !2492, file: !232, line: 1022, column: 134)
!2497 = !DILocation(line: 1026, column: 30, scope: !2496)
!2498 = !DILocation(line: 1026, column: 35, scope: !2496)
!2499 = !DILocation(line: 1026, column: 3, scope: !2496)
!2500 = !DILocation(line: 1027, column: 3, scope: !2496)
!2501 = !DILocation(line: 1028, column: 2, scope: !2496)
!2502 = !DILocation(line: 1022, column: 82, scope: !2492)
!2503 = !DILocation(line: 235, column: 84, scope: !621, inlinedAt: !2504)
!2504 = distinct !DILocation(line: 1022, column: 82, scope: !2492)
!2505 = !DILocation(line: 236, column: 23, scope: !621, inlinedAt: !2504)
!2506 = !DILocation(line: 238, column: 9, scope: !621, inlinedAt: !2504)
!2507 = !DILocation(line: 261, column: 22, scope: !621, inlinedAt: !2504)
!2508 = !DILocation(line: 88, column: 80, scope: !631, inlinedAt: !2509)
!2509 = distinct !DILocation(line: 261, column: 2, scope: !621, inlinedAt: !2504)
!2510 = !DILocation(line: 91, column: 6, scope: !637, inlinedAt: !2509)
!2511 = !DILocation(line: 91, column: 10, scope: !637, inlinedAt: !2509)
!2512 = !DILocation(line: 91, column: 6, scope: !631, inlinedAt: !2509)
!2513 = !DILocation(line: 92, column: 3, scope: !641, inlinedAt: !2509)
!2514 = !DILocation(line: 94, column: 2, scope: !631, inlinedAt: !2509)
!2515 = !DILocation(line: 114, column: 1, scope: !631, inlinedAt: !2509)
!2516 = !DILocation(line: 1022, column: 125, scope: !2492)
!2517 = !DILocation(line: 1022, column: 129, scope: !2492)
!2518 = !DILocation(line: 1022, column: 2, scope: !2492)
!2519 = distinct !{!2519, !2494, !2520}
!2520 = !DILocation(line: 1028, column: 2, scope: !2467)
!2521 = !DILocation(line: 1030, column: 2, scope: !2465)
!2522 = !DILocation(line: 1030, column: 86, scope: !2523)
!2523 = distinct !DILexicalBlock(scope: !2524, file: !232, line: 1030, column: 84)
!2524 = distinct !DILexicalBlock(scope: !2525, file: !232, line: 1030, column: 11)
!2525 = distinct !DILexicalBlock(scope: !2465, file: !232, line: 1030, column: 5)
!2526 = !DILocation(line: 1033, column: 2, scope: !2465)
!2527 = !DILocation(line: 1033, column: 7, scope: !2528)
!2528 = distinct !DILexicalBlock(scope: !2465, file: !232, line: 1033, column: 5)
!2529 = !DILocation(line: 1035, column: 2, scope: !2465)
!2530 = !DILocation(line: 1036, column: 1, scope: !2465)
!2531 = distinct !DISubprogram(name: "z_swap_next_thread", scope: !232, file: !232, line: 1038, type: !1336, scopeLine: 1039, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !213)
!2532 = !DILocation(line: 1052, column: 25, scope: !2531)
!2533 = !DILocation(line: 1052, column: 2, scope: !2531)
!2534 = distinct !DISubprogram(name: "z_priq_dumb_remove", scope: !232, file: !232, line: 1161, type: !812, scopeLine: 1162, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !213)
!2535 = !DILocalVariable(name: "pq", arg: 1, scope: !2534, file: !232, line: 1161, type: !814)
!2536 = !DILocation(line: 1161, column: 38, scope: !2534)
!2537 = !DILocalVariable(name: "thread", arg: 2, scope: !2534, file: !232, line: 1161, type: !101)
!2538 = !DILocation(line: 1161, column: 59, scope: !2534)
!2539 = !DILocation(line: 1163, column: 9, scope: !2534)
!2540 = !DILocation(line: 1167, column: 20, scope: !2534)
!2541 = !DILocation(line: 1167, column: 28, scope: !2534)
!2542 = !DILocation(line: 1167, column: 33, scope: !2534)
!2543 = !DILocation(line: 1167, column: 2, scope: !2534)
!2544 = !DILocation(line: 1168, column: 1, scope: !2534)
!2545 = distinct !DISubprogram(name: "sys_dlist_remove", scope: !113, file: !113, line: 505, type: !2546, scopeLine: 506, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !213)
!2546 = !DISubroutineType(types: !2547)
!2547 = !{null, !228}
!2548 = !DILocalVariable(name: "node", arg: 1, scope: !2545, file: !113, line: 505, type: !228)
!2549 = !DILocation(line: 505, column: 50, scope: !2545)
!2550 = !DILocalVariable(name: "prev", scope: !2545, file: !113, line: 507, type: !2551)
!2551 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !228)
!2552 = !DILocation(line: 507, column: 21, scope: !2545)
!2553 = !DILocation(line: 507, column: 28, scope: !2545)
!2554 = !DILocation(line: 507, column: 34, scope: !2545)
!2555 = !DILocalVariable(name: "next", scope: !2545, file: !113, line: 508, type: !2551)
!2556 = !DILocation(line: 508, column: 21, scope: !2545)
!2557 = !DILocation(line: 508, column: 28, scope: !2545)
!2558 = !DILocation(line: 508, column: 34, scope: !2545)
!2559 = !DILocation(line: 510, column: 15, scope: !2545)
!2560 = !DILocation(line: 510, column: 2, scope: !2545)
!2561 = !DILocation(line: 510, column: 8, scope: !2545)
!2562 = !DILocation(line: 510, column: 13, scope: !2545)
!2563 = !DILocation(line: 511, column: 15, scope: !2545)
!2564 = !DILocation(line: 511, column: 2, scope: !2545)
!2565 = !DILocation(line: 511, column: 8, scope: !2545)
!2566 = !DILocation(line: 511, column: 13, scope: !2545)
!2567 = !DILocation(line: 512, column: 17, scope: !2545)
!2568 = !DILocation(line: 512, column: 2, scope: !2545)
!2569 = !DILocation(line: 513, column: 1, scope: !2545)
!2570 = distinct !DISubprogram(name: "sys_dlist_peek_head", scope: !113, file: !113, line: 303, type: !2571, scopeLine: 304, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !213)
!2571 = !DISubroutineType(types: !2572)
!2572 = !{!228, !814}
!2573 = !DILocalVariable(name: "list", arg: 1, scope: !2570, file: !113, line: 303, type: !814)
!2574 = !DILocation(line: 303, column: 61, scope: !2570)
!2575 = !DILocation(line: 305, column: 28, scope: !2570)
!2576 = !DILocation(line: 305, column: 9, scope: !2570)
!2577 = !DILocation(line: 305, column: 49, scope: !2570)
!2578 = !DILocation(line: 305, column: 55, scope: !2570)
!2579 = !DILocation(line: 305, column: 2, scope: !2570)
!2580 = distinct !DISubprogram(name: "z_priq_rb_lessthan", scope: !232, file: !232, line: 1181, type: !2581, scopeLine: 1182, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !213)
!2581 = !DISubroutineType(types: !2582)
!2582 = !{!236, !133, !133}
!2583 = !DILocalVariable(name: "a", arg: 1, scope: !2580, file: !232, line: 1181, type: !133)
!2584 = !DILocation(line: 1181, column: 41, scope: !2580)
!2585 = !DILocalVariable(name: "b", arg: 2, scope: !2580, file: !232, line: 1181, type: !133)
!2586 = !DILocation(line: 1181, column: 59, scope: !2580)
!2587 = !DILocalVariable(name: "thread_a", scope: !2580, file: !232, line: 1183, type: !101)
!2588 = !DILocation(line: 1183, column: 19, scope: !2580)
!2589 = !DILocalVariable(name: "thread_b", scope: !2580, file: !232, line: 1183, type: !101)
!2590 = !DILocation(line: 1183, column: 30, scope: !2580)
!2591 = !DILocalVariable(name: "cmp", scope: !2580, file: !232, line: 1184, type: !225)
!2592 = !DILocation(line: 1184, column: 10, scope: !2580)
!2593 = !DILocation(line: 1186, column: 49, scope: !2594)
!2594 = distinct !DILexicalBlock(scope: !2580, file: !232, line: 1186, column: 14)
!2595 = !DILocation(line: 1186, column: 53, scope: !2594)
!2596 = !DILocation(line: 1186, column: 14, scope: !2580)
!2597 = !DILocation(line: 1186, column: 109, scope: !2594)
!2598 = !DILocation(line: 1186, column: 11, scope: !2580)
!2599 = !DILocation(line: 1187, column: 49, scope: !2600)
!2600 = distinct !DILexicalBlock(scope: !2580, file: !232, line: 1187, column: 14)
!2601 = !DILocation(line: 1187, column: 53, scope: !2600)
!2602 = !DILocation(line: 1187, column: 14, scope: !2580)
!2603 = !DILocation(line: 1187, column: 109, scope: !2600)
!2604 = !DILocation(line: 1187, column: 11, scope: !2580)
!2605 = !DILocation(line: 1189, column: 25, scope: !2580)
!2606 = !DILocation(line: 1189, column: 35, scope: !2580)
!2607 = !DILocation(line: 1189, column: 8, scope: !2580)
!2608 = !DILocation(line: 1189, column: 6, scope: !2580)
!2609 = !DILocation(line: 1191, column: 6, scope: !2610)
!2610 = distinct !DILexicalBlock(scope: !2580, file: !232, line: 1191, column: 6)
!2611 = !DILocation(line: 1191, column: 10, scope: !2610)
!2612 = !DILocation(line: 1191, column: 6, scope: !2580)
!2613 = !DILocation(line: 1192, column: 3, scope: !2614)
!2614 = distinct !DILexicalBlock(scope: !2610, file: !232, line: 1191, column: 15)
!2615 = !DILocation(line: 1193, column: 13, scope: !2616)
!2616 = distinct !DILexicalBlock(scope: !2610, file: !232, line: 1193, column: 13)
!2617 = !DILocation(line: 1193, column: 17, scope: !2616)
!2618 = !DILocation(line: 1193, column: 13, scope: !2610)
!2619 = !DILocation(line: 1194, column: 3, scope: !2620)
!2620 = distinct !DILexicalBlock(scope: !2616, file: !232, line: 1193, column: 22)
!2621 = !DILocation(line: 1196, column: 10, scope: !2622)
!2622 = distinct !DILexicalBlock(scope: !2616, file: !232, line: 1195, column: 9)
!2623 = !DILocation(line: 1196, column: 20, scope: !2622)
!2624 = !DILocation(line: 1196, column: 25, scope: !2622)
!2625 = !DILocation(line: 1196, column: 37, scope: !2622)
!2626 = !DILocation(line: 1196, column: 47, scope: !2622)
!2627 = !DILocation(line: 1196, column: 52, scope: !2622)
!2628 = !DILocation(line: 1196, column: 35, scope: !2622)
!2629 = !DILocation(line: 1196, column: 3, scope: !2622)
!2630 = !DILocation(line: 1199, column: 1, scope: !2580)
!2631 = distinct !DISubprogram(name: "z_priq_rb_add", scope: !232, file: !232, line: 1201, type: !2632, scopeLine: 1202, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !213)
!2632 = !DISubroutineType(types: !2633)
!2633 = !{null, !2634, !101}
!2634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2635, size: 32)
!2635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_priq_rb", file: !2636, line: 37, size: 128, elements: !2637)
!2636 = !DIFile(filename: "include/zephyr/kernel/internal/sched_priq.h", directory: "/home/sri/zephyrproject/zephyr")
!2637 = !{!2638, !2646}
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "tree", scope: !2635, file: !2636, line: 38, baseType: !2639, size: 96)
!2639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rbtree", file: !129, line: 91, size: 96, elements: !2640)
!2640 = !{!2641, !2642, !2645}
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2639, file: !129, line: 93, baseType: !133, size: 32)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "lessthan_fn", scope: !2639, file: !129, line: 95, baseType: !2643, size: 32, offset: 32)
!2643 = !DIDerivedType(tag: DW_TAG_typedef, name: "rb_lessthan_t", file: !129, line: 86, baseType: !2644)
!2644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2581, size: 32)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "max_depth", scope: !2639, file: !129, line: 97, baseType: !192, size: 32, offset: 64)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "next_order_key", scope: !2635, file: !2636, line: 39, baseType: !192, size: 32, offset: 96)
!2647 = !DILocalVariable(name: "pq", arg: 1, scope: !2631, file: !232, line: 1201, type: !2634)
!2648 = !DILocation(line: 1201, column: 37, scope: !2631)
!2649 = !DILocalVariable(name: "thread", arg: 2, scope: !2631, file: !232, line: 1201, type: !101)
!2650 = !DILocation(line: 1201, column: 58, scope: !2631)
!2651 = !DILocalVariable(name: "t", scope: !2631, file: !232, line: 1203, type: !101)
!2652 = !DILocation(line: 1203, column: 19, scope: !2631)
!2653 = !DILocation(line: 1207, column: 27, scope: !2631)
!2654 = !DILocation(line: 1207, column: 31, scope: !2631)
!2655 = !DILocation(line: 1207, column: 45, scope: !2631)
!2656 = !DILocation(line: 1207, column: 2, scope: !2631)
!2657 = !DILocation(line: 1207, column: 10, scope: !2631)
!2658 = !DILocation(line: 1207, column: 15, scope: !2631)
!2659 = !DILocation(line: 1207, column: 25, scope: !2631)
!2660 = !DILocation(line: 1215, column: 7, scope: !2661)
!2661 = distinct !DILexicalBlock(scope: !2631, file: !232, line: 1215, column: 6)
!2662 = !DILocation(line: 1215, column: 11, scope: !2661)
!2663 = !DILocation(line: 1215, column: 6, scope: !2631)
!2664 = !DILocalVariable(name: "__f", scope: !2665, file: !232, line: 1216, type: !2667)
!2665 = distinct !DILexicalBlock(scope: !2666, file: !232, line: 1216, column: 3)
!2666 = distinct !DILexicalBlock(scope: !2661, file: !232, line: 1215, column: 27)
!2667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rb_foreach", file: !129, line: 172, size: 96, elements: !2668)
!2668 = !{!2669, !2670, !2671}
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2667, file: !129, line: 173, baseType: !221, size: 32)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "is_left", scope: !2667, file: !129, line: 174, baseType: !222, size: 32, offset: 32)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !2667, file: !129, line: 175, baseType: !225, size: 32, offset: 64)
!2672 = !DILocation(line: 1216, column: 27, scope: !2665)
!2673 = !DILocation(line: 1216, column: 33, scope: !2665)
!2674 = !DILocation(line: 1216, column: 82, scope: !2665)
!2675 = !DILocation(line: 1216, column: 86, scope: !2665)
!2676 = !DILocation(line: 1216, column: 93, scope: !2665)
!2677 = !DILocation(line: 1216, column: 103, scope: !2665)
!2678 = !DILocation(line: 1216, column: 63, scope: !2665)
!2679 = !DILocation(line: 1216, column: 172, scope: !2665)
!2680 = !DILocation(line: 1216, column: 176, scope: !2665)
!2681 = !DILocation(line: 1216, column: 183, scope: !2665)
!2682 = !DILocation(line: 1216, column: 193, scope: !2665)
!2683 = !DILocation(line: 1216, column: 153, scope: !2665)
!2684 = !DILocation(line: 1216, column: 8, scope: !2665)
!2685 = !DILocalVariable(name: "n", scope: !2686, file: !232, line: 1216, type: !133)
!2686 = distinct !DILexicalBlock(scope: !2687, file: !232, line: 1216, column: 227)
!2687 = distinct !DILexicalBlock(scope: !2665, file: !232, line: 1216, column: 3)
!2688 = !DILocation(line: 1216, column: 243, scope: !2686)
!2689 = !DILocation(line: 1216, column: 266, scope: !2686)
!2690 = !DILocation(line: 1216, column: 270, scope: !2686)
!2691 = !DILocation(line: 1216, column: 247, scope: !2686)
!2692 = !DILocation(line: 1216, column: 287, scope: !2686)
!2693 = !DILocation(line: 1216, column: 328, scope: !2694)
!2694 = distinct !DILexicalBlock(scope: !2686, file: !232, line: 1216, column: 292)
!2695 = !DILocation(line: 1216, column: 332, scope: !2694)
!2696 = !DILocation(line: 1216, column: 292, scope: !2686)
!2697 = !DILocation(line: 1216, column: 389, scope: !2694)
!2698 = !DILocation(line: 1216, column: 285, scope: !2686)
!2699 = !DILocation(line: 1216, column: 228, scope: !2686)
!2700 = !DILocation(line: 1216, column: 397, scope: !2686)
!2701 = !DILocation(line: 1216, column: 400, scope: !2687)
!2702 = !DILocation(line: 1216, column: 3, scope: !2665)
!2703 = !DILocation(line: 1217, column: 24, scope: !2704)
!2704 = distinct !DILexicalBlock(scope: !2687, file: !232, line: 1216, column: 408)
!2705 = !DILocation(line: 1217, column: 28, scope: !2704)
!2706 = !DILocation(line: 1217, column: 42, scope: !2704)
!2707 = !DILocation(line: 1217, column: 4, scope: !2704)
!2708 = !DILocation(line: 1217, column: 7, scope: !2704)
!2709 = !DILocation(line: 1217, column: 12, scope: !2704)
!2710 = !DILocation(line: 1217, column: 22, scope: !2704)
!2711 = !DILocation(line: 1216, column: 3, scope: !2687)
!2712 = distinct !{!2712, !2702, !2713}
!2713 = !DILocation(line: 1218, column: 3, scope: !2665)
!2714 = !DILocation(line: 1219, column: 2, scope: !2666)
!2715 = !DILocation(line: 1221, column: 13, scope: !2631)
!2716 = !DILocation(line: 1221, column: 17, scope: !2631)
!2717 = !DILocation(line: 1221, column: 24, scope: !2631)
!2718 = !DILocation(line: 1221, column: 32, scope: !2631)
!2719 = !DILocation(line: 1221, column: 37, scope: !2631)
!2720 = !DILocation(line: 1221, column: 2, scope: !2631)
!2721 = !DILocation(line: 1222, column: 1, scope: !2631)
!2722 = distinct !DISubprogram(name: "z_priq_rb_remove", scope: !232, file: !232, line: 1224, type: !2632, scopeLine: 1225, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !213)
!2723 = !DILocalVariable(name: "pq", arg: 1, scope: !2722, file: !232, line: 1224, type: !2634)
!2724 = !DILocation(line: 1224, column: 40, scope: !2722)
!2725 = !DILocalVariable(name: "thread", arg: 2, scope: !2722, file: !232, line: 1224, type: !101)
!2726 = !DILocation(line: 1224, column: 61, scope: !2722)
!2727 = !DILocation(line: 1228, column: 13, scope: !2722)
!2728 = !DILocation(line: 1228, column: 17, scope: !2722)
!2729 = !DILocation(line: 1228, column: 24, scope: !2722)
!2730 = !DILocation(line: 1228, column: 32, scope: !2722)
!2731 = !DILocation(line: 1228, column: 37, scope: !2722)
!2732 = !DILocation(line: 1228, column: 2, scope: !2722)
!2733 = !DILocation(line: 1230, column: 7, scope: !2734)
!2734 = distinct !DILexicalBlock(scope: !2722, file: !232, line: 1230, column: 6)
!2735 = !DILocation(line: 1230, column: 11, scope: !2734)
!2736 = !DILocation(line: 1230, column: 16, scope: !2734)
!2737 = !DILocation(line: 1230, column: 6, scope: !2722)
!2738 = !DILocation(line: 1231, column: 3, scope: !2739)
!2739 = distinct !DILexicalBlock(scope: !2734, file: !232, line: 1230, column: 22)
!2740 = !DILocation(line: 1231, column: 7, scope: !2739)
!2741 = !DILocation(line: 1231, column: 22, scope: !2739)
!2742 = !DILocation(line: 1232, column: 2, scope: !2739)
!2743 = !DILocation(line: 1233, column: 1, scope: !2722)
!2744 = distinct !DISubprogram(name: "z_priq_rb_best", scope: !232, file: !232, line: 1235, type: !2745, scopeLine: 1236, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !213)
!2745 = !DISubroutineType(types: !2746)
!2746 = !{!101, !2634}
!2747 = !DILocalVariable(name: "pq", arg: 1, scope: !2744, file: !232, line: 1235, type: !2634)
!2748 = !DILocation(line: 1235, column: 50, scope: !2744)
!2749 = !DILocalVariable(name: "thread", scope: !2744, file: !232, line: 1237, type: !101)
!2750 = !DILocation(line: 1237, column: 19, scope: !2744)
!2751 = !DILocalVariable(name: "n", scope: !2744, file: !232, line: 1238, type: !133)
!2752 = !DILocation(line: 1238, column: 17, scope: !2744)
!2753 = !DILocation(line: 1238, column: 33, scope: !2744)
!2754 = !DILocation(line: 1238, column: 37, scope: !2744)
!2755 = !DILocation(line: 1238, column: 21, scope: !2744)
!2756 = !DILocation(line: 1240, column: 6, scope: !2757)
!2757 = distinct !DILexicalBlock(scope: !2744, file: !232, line: 1240, column: 6)
!2758 = !DILocation(line: 1240, column: 8, scope: !2757)
!2759 = !DILocation(line: 1240, column: 6, scope: !2744)
!2760 = !DILocation(line: 1241, column: 48, scope: !2761)
!2761 = distinct !DILexicalBlock(scope: !2762, file: !232, line: 1241, column: 13)
!2762 = distinct !DILexicalBlock(scope: !2757, file: !232, line: 1240, column: 14)
!2763 = !DILocation(line: 1241, column: 52, scope: !2761)
!2764 = !DILocation(line: 1241, column: 13, scope: !2762)
!2765 = !DILocation(line: 1241, column: 108, scope: !2761)
!2766 = !DILocation(line: 1241, column: 10, scope: !2762)
!2767 = !DILocation(line: 1242, column: 2, scope: !2762)
!2768 = !DILocation(line: 1243, column: 9, scope: !2744)
!2769 = !DILocation(line: 1243, column: 2, scope: !2744)
!2770 = distinct !DISubprogram(name: "rb_get_min", scope: !129, file: !129, line: 132, type: !2771, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !213)
!2771 = !DISubroutineType(types: !2772)
!2772 = !{!133, !2773}
!2773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2639, size: 32)
!2774 = !DILocalVariable(name: "tree", arg: 1, scope: !2770, file: !129, line: 132, type: !2773)
!2775 = !DILocation(line: 132, column: 56, scope: !2770)
!2776 = !DILocation(line: 134, column: 25, scope: !2770)
!2777 = !DILocation(line: 134, column: 9, scope: !2770)
!2778 = !DILocation(line: 134, column: 2, scope: !2770)
!2779 = distinct !DISubprogram(name: "z_priq_mq_best", scope: !232, file: !232, line: 1272, type: !2780, scopeLine: 1273, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !213)
!2780 = !DISubroutineType(types: !2781)
!2781 = !{!101, !2782}
!2782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2783, size: 32)
!2783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_priq_mq", file: !2636, line: 53, size: 2080, elements: !2784)
!2784 = !{!2785, !2789}
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "queues", scope: !2783, file: !2636, line: 54, baseType: !2786, size: 2048)
!2786 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 2048, elements: !2787)
!2787 = !{!2788}
!2788 = !DISubrange(count: 32)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "bitmask", scope: !2783, file: !2636, line: 55, baseType: !100, size: 32, offset: 2048)
!2790 = !DILocalVariable(name: "pq", arg: 1, scope: !2779, file: !232, line: 1272, type: !2782)
!2791 = !DILocation(line: 1272, column: 50, scope: !2779)
!2792 = !DILocation(line: 1274, column: 7, scope: !2793)
!2793 = distinct !DILexicalBlock(scope: !2779, file: !232, line: 1274, column: 6)
!2794 = !DILocation(line: 1274, column: 11, scope: !2793)
!2795 = !DILocation(line: 1274, column: 6, scope: !2779)
!2796 = !DILocation(line: 1275, column: 3, scope: !2797)
!2797 = distinct !DILexicalBlock(scope: !2793, file: !232, line: 1274, column: 20)
!2798 = !DILocalVariable(name: "thread", scope: !2779, file: !232, line: 1278, type: !101)
!2799 = !DILocation(line: 1278, column: 19, scope: !2779)
!2800 = !DILocalVariable(name: "l", scope: !2779, file: !232, line: 1279, type: !814)
!2801 = !DILocation(line: 1279, column: 15, scope: !2779)
!2802 = !DILocation(line: 1279, column: 20, scope: !2779)
!2803 = !DILocation(line: 1279, column: 24, scope: !2779)
!2804 = !DILocation(line: 1279, column: 45, scope: !2779)
!2805 = !DILocation(line: 1279, column: 49, scope: !2779)
!2806 = !DILocation(line: 1279, column: 31, scope: !2779)
!2807 = !DILocalVariable(name: "n", scope: !2779, file: !232, line: 1280, type: !228)
!2808 = !DILocation(line: 1280, column: 15, scope: !2779)
!2809 = !DILocation(line: 1280, column: 39, scope: !2779)
!2810 = !DILocation(line: 1280, column: 19, scope: !2779)
!2811 = !DILocation(line: 1282, column: 6, scope: !2812)
!2812 = distinct !DILexicalBlock(scope: !2779, file: !232, line: 1282, column: 6)
!2813 = !DILocation(line: 1282, column: 8, scope: !2812)
!2814 = !DILocation(line: 1282, column: 6, scope: !2779)
!2815 = !DILocation(line: 1283, column: 48, scope: !2816)
!2816 = distinct !DILexicalBlock(scope: !2817, file: !232, line: 1283, column: 13)
!2817 = distinct !DILexicalBlock(scope: !2812, file: !232, line: 1282, column: 14)
!2818 = !DILocation(line: 1283, column: 52, scope: !2816)
!2819 = !DILocation(line: 1283, column: 13, scope: !2817)
!2820 = !DILocation(line: 1283, column: 111, scope: !2816)
!2821 = !DILocation(line: 1283, column: 10, scope: !2817)
!2822 = !DILocation(line: 1284, column: 2, scope: !2817)
!2823 = !DILocation(line: 1285, column: 9, scope: !2779)
!2824 = !DILocation(line: 1285, column: 2, scope: !2779)
!2825 = !DILocation(line: 1286, column: 1, scope: !2779)
!2826 = distinct !DISubprogram(name: "z_unpend_all", scope: !232, file: !232, line: 1288, type: !2827, scopeLine: 1289, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !213)
!2827 = !DISubroutineType(types: !2828)
!2828 = !{!192, !137}
!2829 = !DILocalVariable(name: "wait_q", arg: 1, scope: !2826, file: !232, line: 1288, type: !137)
!2830 = !DILocation(line: 1288, column: 29, scope: !2826)
!2831 = !DILocalVariable(name: "need_sched", scope: !2826, file: !232, line: 1290, type: !192)
!2832 = !DILocation(line: 1290, column: 6, scope: !2826)
!2833 = !DILocalVariable(name: "thread", scope: !2826, file: !232, line: 1291, type: !101)
!2834 = !DILocation(line: 1291, column: 19, scope: !2826)
!2835 = !DILocation(line: 1293, column: 2, scope: !2826)
!2836 = !DILocation(line: 1293, column: 32, scope: !2826)
!2837 = !DILocation(line: 1293, column: 19, scope: !2826)
!2838 = !DILocation(line: 1293, column: 17, scope: !2826)
!2839 = !DILocation(line: 1293, column: 41, scope: !2826)
!2840 = !DILocation(line: 1294, column: 19, scope: !2841)
!2841 = distinct !DILexicalBlock(scope: !2826, file: !232, line: 1293, column: 47)
!2842 = !DILocation(line: 1294, column: 3, scope: !2841)
!2843 = !DILocation(line: 1295, column: 18, scope: !2841)
!2844 = !DILocation(line: 1295, column: 3, scope: !2841)
!2845 = !DILocation(line: 1296, column: 14, scope: !2841)
!2846 = distinct !{!2846, !2835, !2847}
!2847 = !DILocation(line: 1297, column: 2, scope: !2826)
!2848 = !DILocation(line: 1299, column: 9, scope: !2826)
!2849 = !DILocation(line: 1299, column: 2, scope: !2826)
!2850 = distinct !DISubprogram(name: "z_waitq_head", scope: !2851, file: !2851, line: 52, type: !1895, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !213)
!2851 = !DIFile(filename: "kernel/include/wait_q.h", directory: "/home/sri/zephyrproject/zephyr")
!2852 = !DILocalVariable(name: "w", arg: 1, scope: !2850, file: !2851, line: 52, type: !137)
!2853 = !DILocation(line: 52, column: 56, scope: !2850)
!2854 = !DILocation(line: 54, column: 49, scope: !2850)
!2855 = !DILocation(line: 54, column: 52, scope: !2850)
!2856 = !DILocation(line: 54, column: 28, scope: !2850)
!2857 = !DILocation(line: 54, column: 2, scope: !2850)
!2858 = distinct !DISubprogram(name: "init_ready_q", scope: !232, file: !232, line: 1302, type: !2859, scopeLine: 1303, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !213)
!2859 = !DISubroutineType(types: !2860)
!2860 = !{null, !2861}
!2861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2862, size: 32)
!2862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ready_q", file: !139, line: 84, size: 96, elements: !2863)
!2863 = !{!2864, !2865}
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !2862, file: !139, line: 87, baseType: !101, size: 32)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "runq", scope: !2862, file: !139, line: 91, baseType: !143, size: 64, offset: 32)
!2866 = !DILocalVariable(name: "rq", arg: 1, scope: !2858, file: !232, line: 1302, type: !2861)
!2867 = !DILocation(line: 1302, column: 36, scope: !2858)
!2868 = !DILocation(line: 1315, column: 18, scope: !2858)
!2869 = !DILocation(line: 1315, column: 22, scope: !2858)
!2870 = !DILocation(line: 1315, column: 2, scope: !2858)
!2871 = !DILocation(line: 1317, column: 1, scope: !2858)
!2872 = distinct !DISubprogram(name: "sys_dlist_init", scope: !113, file: !113, line: 203, type: !2873, scopeLine: 204, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !213)
!2873 = !DISubroutineType(types: !2874)
!2874 = !{null, !814}
!2875 = !DILocalVariable(name: "list", arg: 1, scope: !2872, file: !113, line: 203, type: !814)
!2876 = !DILocation(line: 203, column: 48, scope: !2872)
!2877 = !DILocation(line: 205, column: 30, scope: !2872)
!2878 = !DILocation(line: 205, column: 2, scope: !2872)
!2879 = !DILocation(line: 205, column: 8, scope: !2872)
!2880 = !DILocation(line: 205, column: 13, scope: !2872)
!2881 = !DILocation(line: 206, column: 30, scope: !2872)
!2882 = !DILocation(line: 206, column: 2, scope: !2872)
!2883 = !DILocation(line: 206, column: 8, scope: !2872)
!2884 = !DILocation(line: 206, column: 13, scope: !2872)
!2885 = !DILocation(line: 207, column: 1, scope: !2872)
!2886 = distinct !DISubprogram(name: "z_sched_init", scope: !232, file: !232, line: 1319, type: !652, scopeLine: 1320, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !213)
!2887 = !DILocation(line: 1326, column: 2, scope: !2886)
!2888 = !DILocation(line: 1328, column: 1, scope: !2886)
!2889 = distinct !DISubprogram(name: "z_impl_k_thread_priority_get", scope: !232, file: !232, line: 1330, type: !2890, scopeLine: 1331, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !213)
!2890 = !DISubroutineType(types: !2891)
!2891 = !{!192, !2892}
!2892 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_tid_t", file: !103, line: 359, baseType: !101)
!2893 = !DILocalVariable(name: "thread", arg: 1, scope: !2889, file: !232, line: 1330, type: !2892)
!2894 = !DILocation(line: 1330, column: 42, scope: !2889)
!2895 = !DILocation(line: 1332, column: 9, scope: !2889)
!2896 = !DILocation(line: 1332, column: 17, scope: !2889)
!2897 = !DILocation(line: 1332, column: 22, scope: !2889)
!2898 = !DILocation(line: 1332, column: 2, scope: !2889)
!2899 = distinct !DISubprogram(name: "z_impl_k_thread_priority_set", scope: !232, file: !232, line: 1344, type: !2900, scopeLine: 1345, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !213)
!2900 = !DISubroutineType(types: !2901)
!2901 = !{null, !2892, !192}
!2902 = !DILocalVariable(name: "thread", arg: 1, scope: !2899, file: !232, line: 1344, type: !2892)
!2903 = !DILocation(line: 1344, column: 43, scope: !2899)
!2904 = !DILocalVariable(name: "prio", arg: 2, scope: !2899, file: !232, line: 1344, type: !192)
!2905 = !DILocation(line: 1344, column: 55, scope: !2899)
!2906 = !DILocation(line: 1350, column: 2, scope: !2899)
!2907 = !DILocation(line: 1350, column: 12, scope: !2908)
!2908 = distinct !DILexicalBlock(scope: !2899, file: !232, line: 1350, column: 5)
!2909 = !DILocalVariable(name: "th", scope: !2899, file: !232, line: 1353, type: !101)
!2910 = !DILocation(line: 1353, column: 19, scope: !2899)
!2911 = !DILocation(line: 1353, column: 43, scope: !2899)
!2912 = !DILocation(line: 1355, column: 24, scope: !2899)
!2913 = !DILocation(line: 1355, column: 28, scope: !2899)
!2914 = !DILocation(line: 1355, column: 2, scope: !2899)
!2915 = !DILocation(line: 1356, column: 1, scope: !2899)
!2916 = distinct !DISubprogram(name: "k_can_yield", scope: !232, file: !232, line: 1403, type: !2352, scopeLine: 1404, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !213)
!2917 = !DILocation(line: 1405, column: 11, scope: !2916)
!2918 = !DILocation(line: 1405, column: 29, scope: !2916)
!2919 = !DILocation(line: 1405, column: 32, scope: !2916)
!2920 = !DILocation(line: 1405, column: 46, scope: !2916)
!2921 = !DILocation(line: 1406, column: 44, scope: !2916)
!2922 = !DILocation(line: 1406, column: 4, scope: !2916)
!2923 = !DILocation(line: 1405, column: 9, scope: !2916)
!2924 = !DILocation(line: 1405, column: 2, scope: !2916)
!2925 = distinct !DISubprogram(name: "k_is_pre_kernel", scope: !196, file: !196, line: 1101, type: !2352, scopeLine: 1102, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !213)
!2926 = !DILocation(line: 1105, column: 10, scope: !2925)
!2927 = !DILocation(line: 1105, column: 9, scope: !2925)
!2928 = !DILocation(line: 1105, column: 2, scope: !2925)
!2929 = distinct !DISubprogram(name: "z_is_idle_thread_object", scope: !737, file: !737, line: 85, type: !498, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !213)
!2930 = !DILocalVariable(name: "thread", arg: 1, scope: !2929, file: !737, line: 85, type: !101)
!2931 = !DILocation(line: 85, column: 62, scope: !2929)
!2932 = !DILocation(line: 91, column: 9, scope: !2929)
!2933 = !DILocation(line: 91, column: 16, scope: !2929)
!2934 = !DILocation(line: 91, column: 2, scope: !2929)
!2935 = distinct !DISubprogram(name: "z_impl_k_yield", scope: !232, file: !232, line: 1409, type: !652, scopeLine: 1410, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !213)
!2936 = !DILocation(line: 1413, column: 2, scope: !2935)
!2937 = !DILocation(line: 1413, column: 7, scope: !2938)
!2938 = distinct !DILexicalBlock(scope: !2935, file: !232, line: 1413, column: 5)
!2939 = !DILocalVariable(name: "key", scope: !2935, file: !232, line: 1415, type: !561)
!2940 = !DILocation(line: 1415, column: 19, scope: !2935)
!2941 = !DILocation(line: 160, column: 94, scope: !569, inlinedAt: !2942)
!2942 = distinct !DILocation(line: 1415, column: 25, scope: !2935)
!2943 = !DILocation(line: 162, column: 9, scope: !569, inlinedAt: !2942)
!2944 = !DILocation(line: 163, column: 19, scope: !569, inlinedAt: !2942)
!2945 = !DILocation(line: 44, column: 15, scope: !579, inlinedAt: !2946)
!2946 = distinct !DILocation(line: 169, column: 10, scope: !569, inlinedAt: !2942)
!2947 = !DILocation(line: 48, column: 2, scope: !579, inlinedAt: !2946)
!2948 = !DILocation(line: 80, column: 9, scope: !579, inlinedAt: !2946)
!2949 = !DILocation(line: 169, column: 8, scope: !569, inlinedAt: !2942)
!2950 = !DILocation(line: 171, column: 26, scope: !569, inlinedAt: !2942)
!2951 = !DILocation(line: 110, column: 94, scope: !591, inlinedAt: !2952)
!2952 = distinct !DILocation(line: 171, column: 2, scope: !569, inlinedAt: !2942)
!2953 = !DILocation(line: 112, column: 9, scope: !591, inlinedAt: !2952)
!2954 = !DILocation(line: 177, column: 27, scope: !569, inlinedAt: !2942)
!2955 = !DILocation(line: 121, column: 95, scope: !599, inlinedAt: !2956)
!2956 = distinct !DILocation(line: 177, column: 2, scope: !569, inlinedAt: !2942)
!2957 = !DILocation(line: 123, column: 9, scope: !599, inlinedAt: !2956)
!2958 = !DILocation(line: 179, column: 2, scope: !569, inlinedAt: !2942)
!2959 = !DILocation(line: 1415, column: 25, scope: !2935)
!2960 = !DILocation(line: 1419, column: 34, scope: !2961)
!2961 = distinct !DILexicalBlock(scope: !2962, file: !232, line: 1418, column: 51)
!2962 = distinct !DILexicalBlock(scope: !2935, file: !232, line: 1417, column: 6)
!2963 = !DILocation(line: 274, column: 83, scope: !759, inlinedAt: !2964)
!2964 = distinct !DILocation(line: 1419, column: 3, scope: !2961)
!2965 = !DILocation(line: 276, column: 2, scope: !759, inlinedAt: !2964)
!2966 = !DILocation(line: 276, column: 15, scope: !759, inlinedAt: !2964)
!2967 = !DILocation(line: 276, column: 28, scope: !759, inlinedAt: !2964)
!2968 = !DILocation(line: 277, column: 26, scope: !766, inlinedAt: !2964)
!2969 = !DILocation(line: 277, column: 6, scope: !766, inlinedAt: !2964)
!2970 = !DILocation(line: 277, column: 6, scope: !759, inlinedAt: !2964)
!2971 = !DILocation(line: 278, column: 15, scope: !770, inlinedAt: !2964)
!2972 = !DILocation(line: 242, column: 80, scope: !772, inlinedAt: !2973)
!2973 = distinct !DILocation(line: 278, column: 3, scope: !770, inlinedAt: !2964)
!2974 = !DILocation(line: 244, column: 33, scope: !772, inlinedAt: !2973)
!2975 = !DILocation(line: 208, column: 81, scope: !777, inlinedAt: !2976)
!2976 = distinct !DILocation(line: 244, column: 21, scope: !772, inlinedAt: !2973)
!2977 = !DILocation(line: 223, column: 9, scope: !777, inlinedAt: !2976)
!2978 = !DILocation(line: 244, column: 42, scope: !772, inlinedAt: !2973)
!2979 = !DILocation(line: 244, column: 2, scope: !772, inlinedAt: !2973)
!2980 = !DILocation(line: 279, column: 2, scope: !770, inlinedAt: !2964)
!2981 = !DILocation(line: 1421, column: 31, scope: !2935)
!2982 = !DILocation(line: 260, column: 81, scope: !789, inlinedAt: !2983)
!2983 = distinct !DILocation(line: 1421, column: 2, scope: !2935)
!2984 = !DILocation(line: 262, column: 2, scope: !789, inlinedAt: !2983)
!2985 = !DILocation(line: 262, column: 15, scope: !789, inlinedAt: !2983)
!2986 = !DILocation(line: 262, column: 28, scope: !789, inlinedAt: !2983)
!2987 = !DILocation(line: 263, column: 26, scope: !796, inlinedAt: !2983)
!2988 = !DILocation(line: 263, column: 6, scope: !796, inlinedAt: !2983)
!2989 = !DILocation(line: 263, column: 6, scope: !789, inlinedAt: !2983)
!2990 = !DILocation(line: 264, column: 12, scope: !800, inlinedAt: !2983)
!2991 = !DILocation(line: 237, column: 77, scope: !802, inlinedAt: !2992)
!2992 = distinct !DILocation(line: 264, column: 3, scope: !800, inlinedAt: !2983)
!2993 = !DILocation(line: 239, column: 30, scope: !802, inlinedAt: !2992)
!2994 = !DILocation(line: 208, column: 81, scope: !777, inlinedAt: !2995)
!2995 = distinct !DILocation(line: 239, column: 18, scope: !802, inlinedAt: !2992)
!2996 = !DILocation(line: 223, column: 9, scope: !777, inlinedAt: !2995)
!2997 = !DILocation(line: 239, column: 39, scope: !802, inlinedAt: !2992)
!2998 = !DILocation(line: 189, column: 80, scope: !811, inlinedAt: !2999)
!2999 = distinct !DILocation(line: 239, column: 2, scope: !802, inlinedAt: !2992)
!3000 = !DILocation(line: 190, column: 25, scope: !811, inlinedAt: !2999)
!3001 = !DILocation(line: 192, column: 19, scope: !811, inlinedAt: !2999)
!3002 = !DILocation(line: 196, column: 33, scope: !822, inlinedAt: !2999)
!3003 = !DILocation(line: 196, column: 13, scope: !822, inlinedAt: !2999)
!3004 = !DILocation(line: 196, column: 37, scope: !822, inlinedAt: !2999)
!3005 = !DILocation(line: 196, column: 12, scope: !822, inlinedAt: !2999)
!3006 = !DILocation(line: 196, column: 100, scope: !827, inlinedAt: !2999)
!3007 = !DILocation(line: 196, column: 80, scope: !827, inlinedAt: !2999)
!3008 = !DILocation(line: 196, column: 46, scope: !822, inlinedAt: !2999)
!3009 = !DILocation(line: 196, column: 164, scope: !827, inlinedAt: !2999)
!3010 = !DILocation(line: 196, column: 9, scope: !822, inlinedAt: !2999)
!3011 = !DILocation(line: 196, column: 7, scope: !822, inlinedAt: !2999)
!3012 = !DILocation(line: 196, column: 173, scope: !834, inlinedAt: !2999)
!3013 = !DILocation(line: 196, column: 175, scope: !834, inlinedAt: !2999)
!3014 = !DILocation(line: 196, column: 2, scope: !822, inlinedAt: !2999)
!3015 = !DILocation(line: 197, column: 24, scope: !838, inlinedAt: !2999)
!3016 = !DILocation(line: 197, column: 32, scope: !838, inlinedAt: !2999)
!3017 = !DILocation(line: 197, column: 7, scope: !838, inlinedAt: !2999)
!3018 = !DILocation(line: 197, column: 35, scope: !838, inlinedAt: !2999)
!3019 = !DILocation(line: 197, column: 7, scope: !839, inlinedAt: !2999)
!3020 = !DILocation(line: 198, column: 22, scope: !845, inlinedAt: !2999)
!3021 = !DILocation(line: 199, column: 8, scope: !845, inlinedAt: !2999)
!3022 = !DILocation(line: 198, column: 4, scope: !845, inlinedAt: !2999)
!3023 = !DILocation(line: 200, column: 4, scope: !845, inlinedAt: !2999)
!3024 = !DILocation(line: 196, column: 187, scope: !834, inlinedAt: !2999)
!3025 = !DILocation(line: 196, column: 189, scope: !834, inlinedAt: !2999)
!3026 = !DILocation(line: 196, column: 186, scope: !834, inlinedAt: !2999)
!3027 = !DILocation(line: 196, column: 219, scope: !834, inlinedAt: !2999)
!3028 = !DILocation(line: 196, column: 225, scope: !834, inlinedAt: !2999)
!3029 = !DILocation(line: 196, column: 199, scope: !834, inlinedAt: !2999)
!3030 = !DILocation(line: 196, column: 247, scope: !834, inlinedAt: !2999)
!3031 = !DILocation(line: 196, column: 198, scope: !834, inlinedAt: !2999)
!3032 = !DILocation(line: 196, column: 310, scope: !858, inlinedAt: !2999)
!3033 = !DILocation(line: 196, column: 316, scope: !858, inlinedAt: !2999)
!3034 = !DILocation(line: 196, column: 290, scope: !858, inlinedAt: !2999)
!3035 = !DILocation(line: 196, column: 256, scope: !834, inlinedAt: !2999)
!3036 = !DILocation(line: 196, column: 398, scope: !858, inlinedAt: !2999)
!3037 = !DILocation(line: 196, column: 183, scope: !834, inlinedAt: !2999)
!3038 = !DILocation(line: 196, column: 2, scope: !834, inlinedAt: !2999)
!3039 = distinct !{!3039, !3014, !3040}
!3040 = !DILocation(line: 202, column: 2, scope: !822, inlinedAt: !2999)
!3041 = !DILocation(line: 204, column: 19, scope: !811, inlinedAt: !2999)
!3042 = !DILocation(line: 204, column: 24, scope: !811, inlinedAt: !2999)
!3043 = !DILocation(line: 204, column: 2, scope: !811, inlinedAt: !2999)
!3044 = !DILocation(line: 205, column: 1, scope: !811, inlinedAt: !2999)
!3045 = !DILocation(line: 265, column: 2, scope: !800, inlinedAt: !2983)
!3046 = !DILocation(line: 1422, column: 2, scope: !2935)
!3047 = !DILocation(line: 1423, column: 2, scope: !2935)
!3048 = !DILocation(line: 217, column: 76, scope: !1165, inlinedAt: !3049)
!3049 = distinct !DILocation(line: 1423, column: 2, scope: !2935)
!3050 = !DILocation(line: 217, column: 99, scope: !1165, inlinedAt: !3049)
!3051 = !DILocation(line: 219, column: 17, scope: !1165, inlinedAt: !3049)
!3052 = !DILocation(line: 283, column: 85, scope: !1175, inlinedAt: !3053)
!3053 = distinct !DILocation(line: 219, column: 2, scope: !1165, inlinedAt: !3049)
!3054 = !DILocation(line: 285, column: 9, scope: !1175, inlinedAt: !3053)
!3055 = !DILocation(line: 220, column: 28, scope: !1165, inlinedAt: !3049)
!3056 = !DILocation(line: 220, column: 9, scope: !1165, inlinedAt: !3049)
!3057 = !DILocation(line: 1424, column: 1, scope: !2935)
!3058 = distinct !DISubprogram(name: "z_impl_k_sleep", scope: !232, file: !232, line: 1478, type: !3059, scopeLine: 1479, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !213)
!3059 = !DISubroutineType(types: !3060)
!3060 = !{!225, !327}
!3061 = !DILocalVariable(name: "timeout", arg: 1, scope: !3058, file: !232, line: 1478, type: !327)
!3062 = !DILocation(line: 1478, column: 36, scope: !3058)
!3063 = !DILocalVariable(name: "ticks", scope: !3058, file: !232, line: 1480, type: !223)
!3064 = !DILocation(line: 1480, column: 12, scope: !3058)
!3065 = !DILocation(line: 1484, column: 2, scope: !3058)
!3066 = !DILocation(line: 1484, column: 7, scope: !3067)
!3067 = distinct !DILexicalBlock(scope: !3058, file: !232, line: 1484, column: 5)
!3068 = !DILocation(line: 1487, column: 17, scope: !3069)
!3069 = distinct !DILexicalBlock(scope: !3058, file: !232, line: 1487, column: 6)
!3070 = !DILocation(line: 1487, column: 42, scope: !3069)
!3071 = !DILocation(line: 1487, column: 23, scope: !3069)
!3072 = !DILocation(line: 1487, column: 6, scope: !3058)
!3073 = !DILocation(line: 1488, column: 36, scope: !3074)
!3074 = distinct !DILexicalBlock(scope: !3069, file: !232, line: 1487, column: 84)
!3075 = !DILocation(line: 1488, column: 3, scope: !3074)
!3076 = !DILocation(line: 1490, column: 3, scope: !3074)
!3077 = !DILocation(line: 1490, column: 8, scope: !3078)
!3078 = distinct !DILexicalBlock(scope: !3074, file: !232, line: 1490, column: 6)
!3079 = !DILocation(line: 1492, column: 3, scope: !3074)
!3080 = !DILocation(line: 1495, column: 18, scope: !3058)
!3081 = !DILocation(line: 1495, column: 8, scope: !3058)
!3082 = !DILocation(line: 1497, column: 23, scope: !3058)
!3083 = !DILocation(line: 1497, column: 10, scope: !3058)
!3084 = !DILocation(line: 1497, column: 8, scope: !3058)
!3085 = !DILocalVariable(name: "ret", scope: !3058, file: !232, line: 1499, type: !225)
!3086 = !DILocation(line: 1499, column: 10, scope: !3058)
!3087 = !DILocation(line: 1499, column: 128, scope: !3058)
!3088 = !DILocation(line: 1499, column: 135, scope: !3058)
!3089 = !DILocation(line: 1499, column: 204, scope: !3058)
!3090 = !DILocation(line: 1499, column: 16, scope: !3058)
!3091 = !DILocation(line: 1501, column: 2, scope: !3058)
!3092 = !DILocation(line: 1501, column: 7, scope: !3093)
!3093 = distinct !DILexicalBlock(scope: !3058, file: !232, line: 1501, column: 5)
!3094 = !DILocation(line: 1503, column: 9, scope: !3058)
!3095 = !DILocation(line: 1503, column: 2, scope: !3058)
!3096 = !DILocation(line: 1504, column: 1, scope: !3058)
!3097 = distinct !DISubprogram(name: "k_thread_suspend", scope: !3098, file: !3098, line: 345, type: !3099, scopeLine: 346, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !213)
!3098 = !DIFile(filename: "zephyr/include/generated/syscalls/kernel.h", directory: "/home/sri/zephyrproject/zephyr/build")
!3099 = !DISubroutineType(types: !3100)
!3100 = !{null, !2892}
!3101 = !DILocalVariable(name: "thread", arg: 1, scope: !3097, file: !3098, line: 345, type: !2892)
!3102 = !DILocation(line: 345, column: 45, scope: !3097)
!3103 = !DILocation(line: 354, column: 2, scope: !3097)
!3104 = !DILocation(line: 354, column: 7, scope: !3105)
!3105 = distinct !DILexicalBlock(scope: !3097, file: !3098, line: 354, column: 5)
!3106 = !{i64 137413}
!3107 = !DILocation(line: 354, column: 47, scope: !3105)
!3108 = !DILocation(line: 355, column: 26, scope: !3097)
!3109 = !DILocation(line: 355, column: 2, scope: !3097)
!3110 = !DILocation(line: 356, column: 1, scope: !3097)
!3111 = distinct !DISubprogram(name: "z_tick_sleep", scope: !232, file: !232, line: 1434, type: !3112, scopeLine: 1435, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !213)
!3112 = !DISubroutineType(types: !3113)
!3113 = !{!225, !223}
!3114 = !DILocalVariable(name: "ticks", arg: 1, scope: !3111, file: !232, line: 1434, type: !223)
!3115 = !DILocation(line: 1434, column: 39, scope: !3111)
!3116 = !DILocalVariable(name: "expected_wakeup_ticks", scope: !3111, file: !232, line: 1437, type: !98)
!3117 = !DILocation(line: 1437, column: 11, scope: !3111)
!3118 = !DILocation(line: 1441, column: 2, scope: !3111)
!3119 = !DILocation(line: 1441, column: 86, scope: !3120)
!3120 = distinct !DILexicalBlock(scope: !3121, file: !232, line: 1441, column: 84)
!3121 = distinct !DILexicalBlock(scope: !3122, file: !232, line: 1441, column: 11)
!3122 = distinct !DILexicalBlock(scope: !3111, file: !232, line: 1441, column: 5)
!3123 = !DILocation(line: 1444, column: 6, scope: !3124)
!3124 = distinct !DILexicalBlock(scope: !3111, file: !232, line: 1444, column: 6)
!3125 = !DILocation(line: 1444, column: 12, scope: !3124)
!3126 = !DILocation(line: 1444, column: 6, scope: !3111)
!3127 = !DILocation(line: 1445, column: 3, scope: !3128)
!3128 = distinct !DILexicalBlock(scope: !3124, file: !232, line: 1444, column: 18)
!3129 = !DILocation(line: 1446, column: 3, scope: !3128)
!3130 = !DILocalVariable(name: "timeout", scope: !3111, file: !232, line: 1449, type: !327)
!3131 = !DILocation(line: 1449, column: 14, scope: !3111)
!3132 = !DILocation(line: 1449, column: 39, scope: !3111)
!3133 = !DILocation(line: 1449, column: 51, scope: !3111)
!3134 = !DILocation(line: 1450, column: 31, scope: !3135)
!3135 = distinct !DILexicalBlock(scope: !3111, file: !232, line: 1450, column: 6)
!3136 = !DILocation(line: 1450, column: 28, scope: !3135)
!3137 = !DILocation(line: 1450, column: 39, scope: !3135)
!3138 = !DILocation(line: 1450, column: 6, scope: !3111)
!3139 = !DILocation(line: 1451, column: 27, scope: !3140)
!3140 = distinct !DILexicalBlock(scope: !3135, file: !232, line: 1450, column: 45)
!3141 = !DILocation(line: 1451, column: 35, scope: !3140)
!3142 = !DILocation(line: 1451, column: 33, scope: !3140)
!3143 = !DILocation(line: 1451, column: 25, scope: !3140)
!3144 = !DILocation(line: 1452, column: 2, scope: !3140)
!3145 = !DILocation(line: 1453, column: 52, scope: !3146)
!3146 = distinct !DILexicalBlock(scope: !3135, file: !232, line: 1452, column: 9)
!3147 = !DILocation(line: 1453, column: 49, scope: !3146)
!3148 = !DILocation(line: 1453, column: 27, scope: !3146)
!3149 = !DILocation(line: 1453, column: 25, scope: !3146)
!3150 = !DILocalVariable(name: "key", scope: !3111, file: !232, line: 1456, type: !561)
!3151 = !DILocation(line: 1456, column: 19, scope: !3111)
!3152 = !DILocation(line: 160, column: 94, scope: !569, inlinedAt: !3153)
!3153 = distinct !DILocation(line: 1456, column: 25, scope: !3111)
!3154 = !DILocation(line: 162, column: 9, scope: !569, inlinedAt: !3153)
!3155 = !DILocation(line: 163, column: 19, scope: !569, inlinedAt: !3153)
!3156 = !DILocation(line: 44, column: 15, scope: !579, inlinedAt: !3157)
!3157 = distinct !DILocation(line: 169, column: 10, scope: !569, inlinedAt: !3153)
!3158 = !DILocation(line: 48, column: 2, scope: !579, inlinedAt: !3157)
!3159 = !DILocation(line: 80, column: 9, scope: !579, inlinedAt: !3157)
!3160 = !DILocation(line: 169, column: 8, scope: !569, inlinedAt: !3153)
!3161 = !DILocation(line: 171, column: 26, scope: !569, inlinedAt: !3153)
!3162 = !DILocation(line: 110, column: 94, scope: !591, inlinedAt: !3163)
!3163 = distinct !DILocation(line: 171, column: 2, scope: !569, inlinedAt: !3153)
!3164 = !DILocation(line: 112, column: 9, scope: !591, inlinedAt: !3163)
!3165 = !DILocation(line: 177, column: 27, scope: !569, inlinedAt: !3153)
!3166 = !DILocation(line: 121, column: 95, scope: !599, inlinedAt: !3167)
!3167 = distinct !DILocation(line: 177, column: 2, scope: !569, inlinedAt: !3153)
!3168 = !DILocation(line: 123, column: 9, scope: !599, inlinedAt: !3167)
!3169 = !DILocation(line: 179, column: 2, scope: !569, inlinedAt: !3153)
!3170 = !DILocation(line: 1456, column: 25, scope: !3111)
!3171 = !DILocation(line: 1459, column: 36, scope: !3111)
!3172 = !DILocation(line: 1459, column: 18, scope: !3111)
!3173 = !DILocation(line: 1461, column: 33, scope: !3111)
!3174 = !DILocation(line: 1461, column: 2, scope: !3111)
!3175 = !DILocation(line: 1462, column: 39, scope: !3111)
!3176 = !DILocation(line: 1462, column: 2, scope: !3111)
!3177 = !DILocation(line: 1463, column: 45, scope: !3111)
!3178 = !DILocation(line: 1463, column: 2, scope: !3111)
!3179 = !DILocation(line: 1465, column: 8, scope: !3111)
!3180 = !DILocation(line: 217, column: 76, scope: !1165, inlinedAt: !3181)
!3181 = distinct !DILocation(line: 1465, column: 8, scope: !3111)
!3182 = !DILocation(line: 217, column: 99, scope: !1165, inlinedAt: !3181)
!3183 = !DILocation(line: 219, column: 17, scope: !1165, inlinedAt: !3181)
!3184 = !DILocation(line: 283, column: 85, scope: !1175, inlinedAt: !3185)
!3185 = distinct !DILocation(line: 219, column: 2, scope: !1165, inlinedAt: !3181)
!3186 = !DILocation(line: 285, column: 9, scope: !1175, inlinedAt: !3185)
!3187 = !DILocation(line: 220, column: 28, scope: !1165, inlinedAt: !3181)
!3188 = !DILocation(line: 220, column: 9, scope: !1165, inlinedAt: !3181)
!3189 = !DILocation(line: 1469, column: 21, scope: !3111)
!3190 = !DILocation(line: 1469, column: 10, scope: !3111)
!3191 = !DILocation(line: 1469, column: 45, scope: !3111)
!3192 = !DILocation(line: 1469, column: 43, scope: !3111)
!3193 = !DILocation(line: 1469, column: 8, scope: !3111)
!3194 = !DILocation(line: 1470, column: 6, scope: !3195)
!3195 = distinct !DILexicalBlock(scope: !3111, file: !232, line: 1470, column: 6)
!3196 = !DILocation(line: 1470, column: 12, scope: !3195)
!3197 = !DILocation(line: 1470, column: 6, scope: !3111)
!3198 = !DILocation(line: 1471, column: 10, scope: !3199)
!3199 = distinct !DILexicalBlock(scope: !3195, file: !232, line: 1470, column: 17)
!3200 = !DILocation(line: 1471, column: 3, scope: !3199)
!3201 = !DILocation(line: 1475, column: 2, scope: !3111)
!3202 = !DILocation(line: 1476, column: 1, scope: !3111)
!3203 = distinct !DISubprogram(name: "z_impl_k_usleep", scope: !232, file: !232, line: 1514, type: !3204, scopeLine: 1515, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !213)
!3204 = !DISubroutineType(types: !3205)
!3205 = !{!225, !192}
!3206 = !DILocalVariable(name: "us", arg: 1, scope: !3203, file: !232, line: 1514, type: !192)
!3207 = !DILocation(line: 1514, column: 29, scope: !3203)
!3208 = !DILocalVariable(name: "ticks", scope: !3203, file: !232, line: 1516, type: !225)
!3209 = !DILocation(line: 1516, column: 10, scope: !3203)
!3210 = !DILocation(line: 1518, column: 2, scope: !3203)
!3211 = !DILocation(line: 1518, column: 7, scope: !3212)
!3212 = distinct !DILexicalBlock(scope: !3203, file: !232, line: 1518, column: 5)
!3213 = !DILocation(line: 1520, column: 128, scope: !3203)
!3214 = !DILocation(line: 1520, column: 116, scope: !3203)
!3215 = !DILocation(line: 1520, column: 132, scope: !3203)
!3216 = !DILocation(line: 1520, column: 207, scope: !3203)
!3217 = !DILocation(line: 1520, column: 10, scope: !3203)
!3218 = !DILocation(line: 1520, column: 8, scope: !3203)
!3219 = !DILocation(line: 1521, column: 23, scope: !3203)
!3220 = !DILocation(line: 1521, column: 10, scope: !3203)
!3221 = !DILocation(line: 1521, column: 8, scope: !3203)
!3222 = !DILocation(line: 1523, column: 2, scope: !3203)
!3223 = !DILocation(line: 1523, column: 7, scope: !3224)
!3224 = distinct !DILexicalBlock(scope: !3203, file: !232, line: 1523, column: 5)
!3225 = !DILocation(line: 1525, column: 303, scope: !3203)
!3226 = !DILocation(line: 1525, column: 291, scope: !3203)
!3227 = !DILocation(line: 1525, column: 309, scope: !3203)
!3228 = !DILocation(line: 1525, column: 9, scope: !3203)
!3229 = !DILocation(line: 1525, column: 2, scope: !3203)
!3230 = distinct !DISubprogram(name: "z_impl_k_wakeup", scope: !232, file: !232, line: 1536, type: !3099, scopeLine: 1537, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !213)
!3231 = !DILocalVariable(name: "thread", arg: 1, scope: !3230, file: !232, line: 1536, type: !2892)
!3232 = !DILocation(line: 1536, column: 30, scope: !3230)
!3233 = !DILocation(line: 1538, column: 2, scope: !3230)
!3234 = !DILocation(line: 1538, column: 7, scope: !3235)
!3235 = distinct !DILexicalBlock(scope: !3230, file: !232, line: 1538, column: 5)
!3236 = !DILocation(line: 1540, column: 26, scope: !3237)
!3237 = distinct !DILexicalBlock(scope: !3230, file: !232, line: 1540, column: 6)
!3238 = !DILocation(line: 1540, column: 6, scope: !3237)
!3239 = !DILocation(line: 1540, column: 6, scope: !3230)
!3240 = !DILocation(line: 1541, column: 3, scope: !3241)
!3241 = distinct !DILexicalBlock(scope: !3237, file: !232, line: 1540, column: 35)
!3242 = !DILocation(line: 1544, column: 29, scope: !3243)
!3243 = distinct !DILexicalBlock(scope: !3230, file: !232, line: 1544, column: 6)
!3244 = !DILocation(line: 1544, column: 6, scope: !3243)
!3245 = !DILocation(line: 1544, column: 37, scope: !3243)
!3246 = !DILocation(line: 1544, column: 6, scope: !3230)
!3247 = !DILocation(line: 1546, column: 7, scope: !3248)
!3248 = distinct !DILexicalBlock(scope: !3249, file: !232, line: 1546, column: 7)
!3249 = distinct !DILexicalBlock(scope: !3243, file: !232, line: 1544, column: 42)
!3250 = !DILocation(line: 1546, column: 15, scope: !3248)
!3251 = !DILocation(line: 1546, column: 20, scope: !3248)
!3252 = !DILocation(line: 1546, column: 33, scope: !3248)
!3253 = !DILocation(line: 1546, column: 7, scope: !3249)
!3254 = !DILocation(line: 1547, column: 4, scope: !3255)
!3255 = distinct !DILexicalBlock(scope: !3248, file: !232, line: 1546, column: 52)
!3256 = !DILocation(line: 1549, column: 2, scope: !3249)
!3257 = !DILocation(line: 1551, column: 33, scope: !3230)
!3258 = !DILocation(line: 1551, column: 2, scope: !3230)
!3259 = !DILocation(line: 1552, column: 17, scope: !3230)
!3260 = !DILocation(line: 1552, column: 2, scope: !3230)
!3261 = !DILocation(line: 1554, column: 2, scope: !3230)
!3262 = !DILocation(line: 820, column: 12, scope: !2344, inlinedAt: !3263)
!3263 = distinct !DILocation(line: 48, column: 10, scope: !2350, inlinedAt: !3264)
!3264 = distinct !DILocation(line: 1556, column: 7, scope: !3265)
!3265 = distinct !DILexicalBlock(scope: !3230, file: !232, line: 1556, column: 6)
!3266 = !DILocation(line: 822, column: 3, scope: !2344, inlinedAt: !3263)
!3267 = !DILocation(line: 823, column: 10, scope: !2344, inlinedAt: !3263)
!3268 = !DILocation(line: 48, column: 9, scope: !2350, inlinedAt: !3264)
!3269 = !DILocation(line: 1556, column: 6, scope: !3230)
!3270 = !DILocation(line: 1557, column: 3, scope: !3271)
!3271 = distinct !DILexicalBlock(scope: !3265, file: !232, line: 1556, column: 25)
!3272 = !DILocation(line: 1558, column: 2, scope: !3271)
!3273 = !DILocation(line: 1559, column: 1, scope: !3230)
!3274 = distinct !DISubprogram(name: "z_is_thread_pending", scope: !737, file: !737, line: 103, type: !498, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !213)
!3275 = !DILocalVariable(name: "thread", arg: 1, scope: !3274, file: !737, line: 103, type: !101)
!3276 = !DILocation(line: 103, column: 58, scope: !3274)
!3277 = !DILocation(line: 105, column: 10, scope: !3274)
!3278 = !DILocation(line: 105, column: 18, scope: !3274)
!3279 = !DILocation(line: 105, column: 23, scope: !3274)
!3280 = !DILocation(line: 105, column: 36, scope: !3274)
!3281 = !DILocation(line: 105, column: 54, scope: !3274)
!3282 = !DILocation(line: 105, column: 2, scope: !3274)
!3283 = distinct !DISubprogram(name: "z_impl_k_sched_current_thread_query", scope: !232, file: !232, line: 1592, type: !3284, scopeLine: 1593, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !213)
!3284 = !DISubroutineType(types: !3285)
!3285 = !{!2892}
!3286 = !DILocalVariable(name: "ret", scope: !3283, file: !232, line: 1602, type: !2892)
!3287 = !DILocation(line: 1602, column: 10, scope: !3283)
!3288 = !DILocation(line: 1602, column: 36, scope: !3283)
!3289 = !DILocation(line: 1607, column: 9, scope: !3283)
!3290 = !DILocation(line: 1607, column: 2, scope: !3283)
!3291 = distinct !DISubprogram(name: "z_impl_k_is_preempt_thread", scope: !232, file: !232, line: 1618, type: !3292, scopeLine: 1619, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !213)
!3292 = !DISubroutineType(types: !3293)
!3293 = !{!192}
!3294 = !DILocation(line: 820, column: 12, scope: !2344, inlinedAt: !3295)
!3295 = distinct !DILocation(line: 48, column: 10, scope: !2350, inlinedAt: !3296)
!3296 = distinct !DILocation(line: 1620, column: 10, scope: !3291)
!3297 = !DILocation(line: 822, column: 3, scope: !2344, inlinedAt: !3295)
!3298 = !DILocation(line: 823, column: 10, scope: !2344, inlinedAt: !3295)
!3299 = !DILocation(line: 48, column: 9, scope: !2350, inlinedAt: !3296)
!3300 = !DILocation(line: 1620, column: 27, scope: !3291)
!3301 = !DILocation(line: 1620, column: 57, scope: !3291)
!3302 = !DILocation(line: 1620, column: 30, scope: !3291)
!3303 = !DILocation(line: 0, scope: !3291)
!3304 = !DILocation(line: 1620, column: 2, scope: !3291)
!3305 = distinct !DISubprogram(name: "is_preempt", scope: !232, file: !232, line: 63, type: !542, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !213)
!3306 = !DILocalVariable(name: "thread", arg: 1, scope: !3305, file: !232, line: 63, type: !101)
!3307 = !DILocation(line: 63, column: 47, scope: !3305)
!3308 = !DILocation(line: 66, column: 9, scope: !3305)
!3309 = !DILocation(line: 66, column: 17, scope: !3305)
!3310 = !DILocation(line: 66, column: 22, scope: !3305)
!3311 = !DILocation(line: 66, column: 30, scope: !3305)
!3312 = !DILocation(line: 66, column: 2, scope: !3305)
!3313 = distinct !DISubprogram(name: "z_thread_abort", scope: !232, file: !232, line: 1761, type: !468, scopeLine: 1762, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !213)
!3314 = !DILocalVariable(name: "thread", arg: 1, scope: !3313, file: !232, line: 1761, type: !101)
!3315 = !DILocation(line: 1761, column: 38, scope: !3313)
!3316 = !DILocalVariable(name: "key", scope: !3313, file: !232, line: 1763, type: !561)
!3317 = !DILocation(line: 1763, column: 19, scope: !3313)
!3318 = !DILocation(line: 160, column: 94, scope: !569, inlinedAt: !3319)
!3319 = distinct !DILocation(line: 1763, column: 25, scope: !3313)
!3320 = !DILocation(line: 162, column: 9, scope: !569, inlinedAt: !3319)
!3321 = !DILocation(line: 163, column: 19, scope: !569, inlinedAt: !3319)
!3322 = !DILocation(line: 44, column: 15, scope: !579, inlinedAt: !3323)
!3323 = distinct !DILocation(line: 169, column: 10, scope: !569, inlinedAt: !3319)
!3324 = !DILocation(line: 48, column: 2, scope: !579, inlinedAt: !3323)
!3325 = !DILocation(line: 80, column: 9, scope: !579, inlinedAt: !3323)
!3326 = !DILocation(line: 169, column: 8, scope: !569, inlinedAt: !3319)
!3327 = !DILocation(line: 171, column: 26, scope: !569, inlinedAt: !3319)
!3328 = !DILocation(line: 110, column: 94, scope: !591, inlinedAt: !3329)
!3329 = distinct !DILocation(line: 171, column: 2, scope: !569, inlinedAt: !3319)
!3330 = !DILocation(line: 112, column: 9, scope: !591, inlinedAt: !3329)
!3331 = !DILocation(line: 177, column: 27, scope: !569, inlinedAt: !3319)
!3332 = !DILocation(line: 121, column: 95, scope: !599, inlinedAt: !3333)
!3333 = distinct !DILocation(line: 177, column: 2, scope: !569, inlinedAt: !3319)
!3334 = !DILocation(line: 123, column: 9, scope: !599, inlinedAt: !3333)
!3335 = !DILocation(line: 179, column: 2, scope: !569, inlinedAt: !3319)
!3336 = !DILocation(line: 1763, column: 25, scope: !3313)
!3337 = !DILocation(line: 1765, column: 7, scope: !3338)
!3338 = distinct !DILexicalBlock(scope: !3313, file: !232, line: 1765, column: 6)
!3339 = !DILocation(line: 1765, column: 15, scope: !3338)
!3340 = !DILocation(line: 1765, column: 20, scope: !3338)
!3341 = !DILocation(line: 1765, column: 33, scope: !3338)
!3342 = !DILocation(line: 1765, column: 51, scope: !3338)
!3343 = !DILocation(line: 1765, column: 6, scope: !3313)
!3344 = !DILocation(line: 1766, column: 3, scope: !3345)
!3345 = distinct !DILexicalBlock(scope: !3338, file: !232, line: 1765, column: 57)
!3346 = !DILocation(line: 235, column: 84, scope: !621, inlinedAt: !3347)
!3347 = distinct !DILocation(line: 1766, column: 3, scope: !3345)
!3348 = !DILocation(line: 236, column: 23, scope: !621, inlinedAt: !3347)
!3349 = !DILocation(line: 238, column: 9, scope: !621, inlinedAt: !3347)
!3350 = !DILocation(line: 261, column: 22, scope: !621, inlinedAt: !3347)
!3351 = !DILocation(line: 88, column: 80, scope: !631, inlinedAt: !3352)
!3352 = distinct !DILocation(line: 261, column: 2, scope: !621, inlinedAt: !3347)
!3353 = !DILocation(line: 91, column: 6, scope: !637, inlinedAt: !3352)
!3354 = !DILocation(line: 91, column: 10, scope: !637, inlinedAt: !3352)
!3355 = !DILocation(line: 91, column: 6, scope: !631, inlinedAt: !3352)
!3356 = !DILocation(line: 92, column: 3, scope: !641, inlinedAt: !3352)
!3357 = !DILocation(line: 94, column: 2, scope: !631, inlinedAt: !3352)
!3358 = !DILocation(line: 114, column: 1, scope: !631, inlinedAt: !3352)
!3359 = !DILocalVariable(name: "r0", scope: !3345, file: !232, line: 1768, type: !98)
!3360 = !DILocation(line: 1768, column: 21, scope: !3345)
!3361 = !DILocation(line: 1768, column: 60, scope: !3345)
!3362 = !DILocation(line: 1768, column: 123, scope: !3363)
!3363 = distinct !DILexicalBlock(scope: !3345, file: !232, line: 1768, column: 63)
!3364 = !DILocation(line: 1768, column: 65, scope: !3363)
!3365 = !{i64 384325, i64 384335, i64 384351}
!3366 = !DILocation(line: 1768, column: 154, scope: !3363)
!3367 = !DILocation(line: 1769, column: 3, scope: !3345)
!3368 = !DILocation(line: 1772, column: 7, scope: !3369)
!3369 = distinct !DILexicalBlock(scope: !3313, file: !232, line: 1772, column: 6)
!3370 = !DILocation(line: 1772, column: 15, scope: !3369)
!3371 = !DILocation(line: 1772, column: 20, scope: !3369)
!3372 = !DILocation(line: 1772, column: 33, scope: !3369)
!3373 = !DILocation(line: 1772, column: 51, scope: !3369)
!3374 = !DILocation(line: 1772, column: 6, scope: !3313)
!3375 = !DILocation(line: 1773, column: 3, scope: !3376)
!3376 = distinct !DILexicalBlock(scope: !3369, file: !232, line: 1772, column: 58)
!3377 = !DILocation(line: 235, column: 84, scope: !621, inlinedAt: !3378)
!3378 = distinct !DILocation(line: 1773, column: 3, scope: !3376)
!3379 = !DILocation(line: 236, column: 23, scope: !621, inlinedAt: !3378)
!3380 = !DILocation(line: 238, column: 9, scope: !621, inlinedAt: !3378)
!3381 = !DILocation(line: 261, column: 22, scope: !621, inlinedAt: !3378)
!3382 = !DILocation(line: 88, column: 80, scope: !631, inlinedAt: !3383)
!3383 = distinct !DILocation(line: 261, column: 2, scope: !621, inlinedAt: !3378)
!3384 = !DILocation(line: 91, column: 6, scope: !637, inlinedAt: !3383)
!3385 = !DILocation(line: 91, column: 10, scope: !637, inlinedAt: !3383)
!3386 = !DILocation(line: 91, column: 6, scope: !631, inlinedAt: !3383)
!3387 = !DILocation(line: 92, column: 3, scope: !641, inlinedAt: !3383)
!3388 = !DILocation(line: 94, column: 2, scope: !631, inlinedAt: !3383)
!3389 = !DILocation(line: 114, column: 1, scope: !631, inlinedAt: !3383)
!3390 = !DILocation(line: 1774, column: 3, scope: !3376)
!3391 = !DILocation(line: 1818, column: 13, scope: !3313)
!3392 = !DILocation(line: 1818, column: 2, scope: !3313)
!3393 = !DILocation(line: 1819, column: 6, scope: !3394)
!3394 = distinct !DILexicalBlock(scope: !3313, file: !232, line: 1819, column: 6)
!3395 = !DILocation(line: 1819, column: 32, scope: !3394)
!3396 = !DILocation(line: 1819, column: 13, scope: !3394)
!3397 = !DILocation(line: 1819, column: 40, scope: !3394)
!3398 = !DILocation(line: 820, column: 12, scope: !2344, inlinedAt: !3399)
!3399 = distinct !DILocation(line: 48, column: 10, scope: !2350, inlinedAt: !3400)
!3400 = distinct !DILocation(line: 1819, column: 44, scope: !3394)
!3401 = !DILocation(line: 822, column: 3, scope: !2344, inlinedAt: !3399)
!3402 = !DILocation(line: 823, column: 10, scope: !2344, inlinedAt: !3399)
!3403 = !DILocation(line: 48, column: 9, scope: !2350, inlinedAt: !3400)
!3404 = !DILocation(line: 1819, column: 6, scope: !3313)
!3405 = !DILocation(line: 1820, column: 3, scope: !3406)
!3406 = distinct !DILexicalBlock(scope: !3394, file: !232, line: 1819, column: 62)
!3407 = !DILocation(line: 217, column: 76, scope: !1165, inlinedAt: !3408)
!3408 = distinct !DILocation(line: 1820, column: 3, scope: !3406)
!3409 = !DILocation(line: 217, column: 99, scope: !1165, inlinedAt: !3408)
!3410 = !DILocation(line: 219, column: 17, scope: !1165, inlinedAt: !3408)
!3411 = !DILocation(line: 283, column: 85, scope: !1175, inlinedAt: !3412)
!3412 = distinct !DILocation(line: 219, column: 2, scope: !1165, inlinedAt: !3408)
!3413 = !DILocation(line: 285, column: 9, scope: !1175, inlinedAt: !3412)
!3414 = !DILocation(line: 220, column: 28, scope: !1165, inlinedAt: !3408)
!3415 = !DILocation(line: 220, column: 9, scope: !1165, inlinedAt: !3408)
!3416 = !DILocation(line: 1822, column: 2, scope: !3406)
!3417 = !DILocation(line: 1823, column: 2, scope: !3313)
!3418 = !DILocation(line: 235, column: 84, scope: !621, inlinedAt: !3419)
!3419 = distinct !DILocation(line: 1823, column: 2, scope: !3313)
!3420 = !DILocation(line: 236, column: 23, scope: !621, inlinedAt: !3419)
!3421 = !DILocation(line: 238, column: 9, scope: !621, inlinedAt: !3419)
!3422 = !DILocation(line: 261, column: 22, scope: !621, inlinedAt: !3419)
!3423 = !DILocation(line: 88, column: 80, scope: !631, inlinedAt: !3424)
!3424 = distinct !DILocation(line: 261, column: 2, scope: !621, inlinedAt: !3419)
!3425 = !DILocation(line: 91, column: 6, scope: !637, inlinedAt: !3424)
!3426 = !DILocation(line: 91, column: 10, scope: !637, inlinedAt: !3424)
!3427 = !DILocation(line: 91, column: 6, scope: !631, inlinedAt: !3424)
!3428 = !DILocation(line: 92, column: 3, scope: !641, inlinedAt: !3424)
!3429 = !DILocation(line: 94, column: 2, scope: !631, inlinedAt: !3424)
!3430 = !DILocation(line: 114, column: 1, scope: !631, inlinedAt: !3424)
!3431 = !DILocation(line: 1824, column: 1, scope: !3313)
!3432 = distinct !DISubprogram(name: "end_thread", scope: !232, file: !232, line: 1715, type: !468, scopeLine: 1716, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !213)
!3433 = !DILocalVariable(name: "thread", arg: 1, scope: !3432, file: !232, line: 1715, type: !101)
!3434 = !DILocation(line: 1715, column: 41, scope: !3432)
!3435 = !DILocation(line: 1720, column: 7, scope: !3436)
!3436 = distinct !DILexicalBlock(scope: !3432, file: !232, line: 1720, column: 6)
!3437 = !DILocation(line: 1720, column: 15, scope: !3436)
!3438 = !DILocation(line: 1720, column: 20, scope: !3436)
!3439 = !DILocation(line: 1720, column: 33, scope: !3436)
!3440 = !DILocation(line: 1720, column: 51, scope: !3436)
!3441 = !DILocation(line: 1720, column: 6, scope: !3432)
!3442 = !DILocation(line: 1721, column: 3, scope: !3443)
!3443 = distinct !DILexicalBlock(scope: !3436, file: !232, line: 1720, column: 58)
!3444 = !DILocation(line: 1721, column: 11, scope: !3443)
!3445 = !DILocation(line: 1721, column: 16, scope: !3443)
!3446 = !DILocation(line: 1721, column: 29, scope: !3443)
!3447 = !DILocation(line: 1722, column: 3, scope: !3443)
!3448 = !DILocation(line: 1722, column: 11, scope: !3443)
!3449 = !DILocation(line: 1722, column: 16, scope: !3443)
!3450 = !DILocation(line: 1722, column: 29, scope: !3443)
!3451 = !DILocation(line: 1723, column: 26, scope: !3452)
!3452 = distinct !DILexicalBlock(scope: !3443, file: !232, line: 1723, column: 7)
!3453 = !DILocation(line: 1723, column: 7, scope: !3452)
!3454 = !DILocation(line: 1723, column: 7, scope: !3443)
!3455 = !DILocation(line: 1724, column: 19, scope: !3456)
!3456 = distinct !DILexicalBlock(scope: !3452, file: !232, line: 1723, column: 35)
!3457 = !DILocation(line: 274, column: 83, scope: !759, inlinedAt: !3458)
!3458 = distinct !DILocation(line: 1724, column: 4, scope: !3456)
!3459 = !DILocation(line: 276, column: 2, scope: !759, inlinedAt: !3458)
!3460 = !DILocation(line: 276, column: 15, scope: !759, inlinedAt: !3458)
!3461 = !DILocation(line: 276, column: 28, scope: !759, inlinedAt: !3458)
!3462 = !DILocation(line: 277, column: 26, scope: !766, inlinedAt: !3458)
!3463 = !DILocation(line: 277, column: 6, scope: !766, inlinedAt: !3458)
!3464 = !DILocation(line: 277, column: 6, scope: !759, inlinedAt: !3458)
!3465 = !DILocation(line: 278, column: 15, scope: !770, inlinedAt: !3458)
!3466 = !DILocation(line: 242, column: 80, scope: !772, inlinedAt: !3467)
!3467 = distinct !DILocation(line: 278, column: 3, scope: !770, inlinedAt: !3458)
!3468 = !DILocation(line: 244, column: 33, scope: !772, inlinedAt: !3467)
!3469 = !DILocation(line: 208, column: 81, scope: !777, inlinedAt: !3470)
!3470 = distinct !DILocation(line: 244, column: 21, scope: !772, inlinedAt: !3467)
!3471 = !DILocation(line: 223, column: 9, scope: !777, inlinedAt: !3470)
!3472 = !DILocation(line: 244, column: 42, scope: !772, inlinedAt: !3467)
!3473 = !DILocation(line: 244, column: 2, scope: !772, inlinedAt: !3467)
!3474 = !DILocation(line: 279, column: 2, scope: !770, inlinedAt: !3458)
!3475 = !DILocation(line: 1725, column: 3, scope: !3456)
!3476 = !DILocation(line: 1726, column: 7, scope: !3477)
!3477 = distinct !DILexicalBlock(scope: !3443, file: !232, line: 1726, column: 7)
!3478 = !DILocation(line: 1726, column: 15, scope: !3477)
!3479 = !DILocation(line: 1726, column: 20, scope: !3477)
!3480 = !DILocation(line: 1726, column: 30, scope: !3477)
!3481 = !DILocation(line: 1726, column: 7, scope: !3443)
!3482 = !DILocation(line: 1727, column: 29, scope: !3483)
!3483 = distinct !DILexicalBlock(scope: !3477, file: !232, line: 1726, column: 36)
!3484 = !DILocation(line: 1727, column: 4, scope: !3483)
!3485 = !DILocation(line: 1728, column: 3, scope: !3483)
!3486 = !DILocation(line: 1729, column: 32, scope: !3443)
!3487 = !DILocation(line: 1729, column: 9, scope: !3443)
!3488 = !DILocation(line: 1730, column: 15, scope: !3443)
!3489 = !DILocation(line: 1730, column: 23, scope: !3443)
!3490 = !DILocation(line: 1730, column: 3, scope: !3443)
!3491 = !DILocation(line: 1731, column: 3, scope: !3443)
!3492 = !DILocation(line: 1737, column: 3, scope: !3443)
!3493 = !DILocation(line: 1737, column: 8, scope: !3494)
!3494 = distinct !DILexicalBlock(scope: !3443, file: !232, line: 1737, column: 6)
!3495 = !DILocation(line: 1739, column: 3, scope: !3443)
!3496 = !DILocation(line: 1739, column: 8, scope: !3497)
!3497 = distinct !DILexicalBlock(scope: !3443, file: !232, line: 1739, column: 6)
!3498 = !DILocation(line: 1758, column: 2, scope: !3443)
!3499 = !DILocation(line: 1759, column: 1, scope: !3432)
!3500 = distinct !DISubprogram(name: "z_impl_k_thread_join", scope: !232, file: !232, line: 1837, type: !3501, scopeLine: 1838, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !213)
!3501 = !DISubroutineType(types: !3502)
!3502 = !{!192, !101, !327}
!3503 = !DILocalVariable(name: "thread", arg: 1, scope: !3500, file: !232, line: 1837, type: !101)
!3504 = !DILocation(line: 1837, column: 43, scope: !3500)
!3505 = !DILocalVariable(name: "timeout", arg: 2, scope: !3500, file: !232, line: 1837, type: !327)
!3506 = !DILocation(line: 1837, column: 63, scope: !3500)
!3507 = !DILocalVariable(name: "key", scope: !3500, file: !232, line: 1839, type: !561)
!3508 = !DILocation(line: 1839, column: 19, scope: !3500)
!3509 = !DILocation(line: 160, column: 94, scope: !569, inlinedAt: !3510)
!3510 = distinct !DILocation(line: 1839, column: 25, scope: !3500)
!3511 = !DILocation(line: 162, column: 9, scope: !569, inlinedAt: !3510)
!3512 = !DILocation(line: 163, column: 19, scope: !569, inlinedAt: !3510)
!3513 = !DILocation(line: 44, column: 15, scope: !579, inlinedAt: !3514)
!3514 = distinct !DILocation(line: 169, column: 10, scope: !569, inlinedAt: !3510)
!3515 = !DILocation(line: 48, column: 2, scope: !579, inlinedAt: !3514)
!3516 = !DILocation(line: 80, column: 9, scope: !579, inlinedAt: !3514)
!3517 = !DILocation(line: 169, column: 8, scope: !569, inlinedAt: !3510)
!3518 = !DILocation(line: 171, column: 26, scope: !569, inlinedAt: !3510)
!3519 = !DILocation(line: 110, column: 94, scope: !591, inlinedAt: !3520)
!3520 = distinct !DILocation(line: 171, column: 2, scope: !569, inlinedAt: !3510)
!3521 = !DILocation(line: 112, column: 9, scope: !591, inlinedAt: !3520)
!3522 = !DILocation(line: 177, column: 27, scope: !569, inlinedAt: !3510)
!3523 = !DILocation(line: 121, column: 95, scope: !599, inlinedAt: !3524)
!3524 = distinct !DILocation(line: 177, column: 2, scope: !569, inlinedAt: !3510)
!3525 = !DILocation(line: 123, column: 9, scope: !599, inlinedAt: !3524)
!3526 = !DILocation(line: 179, column: 2, scope: !569, inlinedAt: !3510)
!3527 = !DILocation(line: 1839, column: 25, scope: !3500)
!3528 = !DILocalVariable(name: "ret", scope: !3500, file: !232, line: 1840, type: !192)
!3529 = !DILocation(line: 1840, column: 6, scope: !3500)
!3530 = !DILocation(line: 1842, column: 2, scope: !3500)
!3531 = !DILocation(line: 1842, column: 7, scope: !3532)
!3532 = distinct !DILexicalBlock(scope: !3500, file: !232, line: 1842, column: 5)
!3533 = !DILocation(line: 1844, column: 7, scope: !3534)
!3534 = distinct !DILexicalBlock(scope: !3500, file: !232, line: 1844, column: 6)
!3535 = !DILocation(line: 1844, column: 15, scope: !3534)
!3536 = !DILocation(line: 1844, column: 20, scope: !3534)
!3537 = !DILocation(line: 1844, column: 33, scope: !3534)
!3538 = !DILocation(line: 1844, column: 51, scope: !3534)
!3539 = !DILocation(line: 1844, column: 6, scope: !3500)
!3540 = !DILocation(line: 1845, column: 23, scope: !3541)
!3541 = distinct !DILexicalBlock(scope: !3534, file: !232, line: 1844, column: 58)
!3542 = !DILocation(line: 1845, column: 3, scope: !3541)
!3543 = !DILocation(line: 1846, column: 7, scope: !3541)
!3544 = !DILocation(line: 1847, column: 2, scope: !3541)
!3545 = !DILocation(line: 1847, column: 24, scope: !3546)
!3546 = distinct !DILexicalBlock(scope: !3534, file: !232, line: 1847, column: 13)
!3547 = !DILocation(line: 1847, column: 49, scope: !3546)
!3548 = !DILocation(line: 1847, column: 30, scope: !3546)
!3549 = !DILocation(line: 1847, column: 13, scope: !3534)
!3550 = !DILocation(line: 1848, column: 7, scope: !3551)
!3551 = distinct !DILexicalBlock(scope: !3546, file: !232, line: 1847, column: 63)
!3552 = !DILocation(line: 1849, column: 2, scope: !3551)
!3553 = !DILocation(line: 1849, column: 14, scope: !3554)
!3554 = distinct !DILexicalBlock(scope: !3546, file: !232, line: 1849, column: 13)
!3555 = !DILocation(line: 1849, column: 40, scope: !3554)
!3556 = !DILocation(line: 1849, column: 21, scope: !3554)
!3557 = !DILocation(line: 1849, column: 49, scope: !3554)
!3558 = !DILocation(line: 1850, column: 7, scope: !3554)
!3559 = !DILocation(line: 1850, column: 15, scope: !3554)
!3560 = !DILocation(line: 1850, column: 20, scope: !3554)
!3561 = !DILocation(line: 1850, column: 50, scope: !3554)
!3562 = !DILocation(line: 1850, column: 59, scope: !3554)
!3563 = !DILocation(line: 1850, column: 30, scope: !3554)
!3564 = !DILocation(line: 1849, column: 13, scope: !3546)
!3565 = !DILocation(line: 1851, column: 7, scope: !3566)
!3566 = distinct !DILexicalBlock(scope: !3554, file: !232, line: 1850, column: 72)
!3567 = !DILocation(line: 1852, column: 2, scope: !3566)
!3568 = !DILocation(line: 1854, column: 39, scope: !3569)
!3569 = distinct !DILexicalBlock(scope: !3554, file: !232, line: 1852, column: 9)
!3570 = !DILocation(line: 1854, column: 49, scope: !3569)
!3571 = !DILocation(line: 1854, column: 57, scope: !3569)
!3572 = !DILocation(line: 1854, column: 3, scope: !3569)
!3573 = !DILocation(line: 1855, column: 38, scope: !3569)
!3574 = !DILocation(line: 1855, column: 3, scope: !3569)
!3575 = !DILocation(line: 1857, column: 3, scope: !3569)
!3576 = !DILocation(line: 1857, column: 8, scope: !3577)
!3577 = distinct !DILexicalBlock(scope: !3569, file: !232, line: 1857, column: 6)
!3578 = !DILocation(line: 1858, column: 9, scope: !3569)
!3579 = !DILocation(line: 217, column: 76, scope: !1165, inlinedAt: !3580)
!3580 = distinct !DILocation(line: 1858, column: 9, scope: !3569)
!3581 = !DILocation(line: 217, column: 99, scope: !1165, inlinedAt: !3580)
!3582 = !DILocation(line: 219, column: 17, scope: !1165, inlinedAt: !3580)
!3583 = !DILocation(line: 283, column: 85, scope: !1175, inlinedAt: !3584)
!3584 = distinct !DILocation(line: 219, column: 2, scope: !1165, inlinedAt: !3580)
!3585 = !DILocation(line: 285, column: 9, scope: !1175, inlinedAt: !3584)
!3586 = !DILocation(line: 220, column: 28, scope: !1165, inlinedAt: !3580)
!3587 = !DILocation(line: 220, column: 9, scope: !1165, inlinedAt: !3580)
!3588 = !DILocation(line: 1858, column: 7, scope: !3569)
!3589 = !DILocation(line: 1859, column: 3, scope: !3569)
!3590 = !DILocation(line: 1859, column: 8, scope: !3591)
!3591 = distinct !DILexicalBlock(scope: !3569, file: !232, line: 1859, column: 6)
!3592 = !DILocation(line: 1861, column: 10, scope: !3569)
!3593 = !DILocation(line: 1861, column: 3, scope: !3569)
!3594 = !DILocation(line: 1864, column: 2, scope: !3500)
!3595 = !DILocation(line: 1864, column: 7, scope: !3596)
!3596 = distinct !DILexicalBlock(scope: !3500, file: !232, line: 1864, column: 5)
!3597 = !DILocation(line: 1866, column: 2, scope: !3500)
!3598 = !DILocation(line: 235, column: 84, scope: !621, inlinedAt: !3599)
!3599 = distinct !DILocation(line: 1866, column: 2, scope: !3500)
!3600 = !DILocation(line: 236, column: 23, scope: !621, inlinedAt: !3599)
!3601 = !DILocation(line: 238, column: 9, scope: !621, inlinedAt: !3599)
!3602 = !DILocation(line: 261, column: 22, scope: !621, inlinedAt: !3599)
!3603 = !DILocation(line: 88, column: 80, scope: !631, inlinedAt: !3604)
!3604 = distinct !DILocation(line: 261, column: 2, scope: !621, inlinedAt: !3599)
!3605 = !DILocation(line: 91, column: 6, scope: !637, inlinedAt: !3604)
!3606 = !DILocation(line: 91, column: 10, scope: !637, inlinedAt: !3604)
!3607 = !DILocation(line: 91, column: 6, scope: !631, inlinedAt: !3604)
!3608 = !DILocation(line: 92, column: 3, scope: !641, inlinedAt: !3604)
!3609 = !DILocation(line: 94, column: 2, scope: !631, inlinedAt: !3604)
!3610 = !DILocation(line: 114, column: 1, scope: !631, inlinedAt: !3604)
!3611 = !DILocation(line: 1867, column: 9, scope: !3500)
!3612 = !DILocation(line: 1867, column: 2, scope: !3500)
!3613 = !DILocation(line: 1868, column: 1, scope: !3500)
!3614 = distinct !DISubprogram(name: "z_sched_switch_spin", scope: !1166, file: !1166, line: 200, type: !468, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !213)
!3615 = !DILocalVariable(name: "thread", arg: 1, scope: !3614, file: !1166, line: 200, type: !101)
!3616 = !DILocation(line: 200, column: 57, scope: !3614)
!3617 = !DILocation(line: 202, column: 9, scope: !3614)
!3618 = !DILocation(line: 203, column: 1, scope: !3614)
!3619 = distinct !DISubprogram(name: "add_to_waitq_locked", scope: !232, file: !232, line: 743, type: !3620, scopeLine: 744, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !213)
!3620 = !DISubroutineType(types: !3621)
!3621 = !{null, !101, !137}
!3622 = !DILocalVariable(name: "thread", arg: 1, scope: !3619, file: !232, line: 743, type: !101)
!3623 = !DILocation(line: 743, column: 50, scope: !3619)
!3624 = !DILocalVariable(name: "wait_q", arg: 2, scope: !3619, file: !232, line: 743, type: !137)
!3625 = !DILocation(line: 743, column: 69, scope: !3619)
!3626 = !DILocation(line: 745, column: 17, scope: !3619)
!3627 = !DILocation(line: 745, column: 2, scope: !3619)
!3628 = !DILocation(line: 746, column: 27, scope: !3619)
!3629 = !DILocation(line: 746, column: 2, scope: !3619)
!3630 = !DILocation(line: 748, column: 2, scope: !3619)
!3631 = !DILocation(line: 748, column: 7, scope: !3632)
!3632 = distinct !DILexicalBlock(scope: !3619, file: !232, line: 748, column: 5)
!3633 = !DILocation(line: 750, column: 6, scope: !3634)
!3634 = distinct !DILexicalBlock(scope: !3619, file: !232, line: 750, column: 6)
!3635 = !DILocation(line: 750, column: 13, scope: !3634)
!3636 = !DILocation(line: 750, column: 6, scope: !3619)
!3637 = !DILocation(line: 751, column: 28, scope: !3638)
!3638 = distinct !DILexicalBlock(scope: !3634, file: !232, line: 750, column: 19)
!3639 = !DILocation(line: 751, column: 3, scope: !3638)
!3640 = !DILocation(line: 751, column: 11, scope: !3638)
!3641 = !DILocation(line: 751, column: 16, scope: !3638)
!3642 = !DILocation(line: 751, column: 26, scope: !3638)
!3643 = !DILocation(line: 752, column: 20, scope: !3638)
!3644 = !DILocation(line: 752, column: 28, scope: !3638)
!3645 = !DILocation(line: 752, column: 35, scope: !3638)
!3646 = !DILocation(line: 189, column: 80, scope: !811, inlinedAt: !3647)
!3647 = distinct !DILocation(line: 752, column: 3, scope: !3638)
!3648 = !DILocation(line: 190, column: 25, scope: !811, inlinedAt: !3647)
!3649 = !DILocation(line: 192, column: 19, scope: !811, inlinedAt: !3647)
!3650 = !DILocation(line: 196, column: 33, scope: !822, inlinedAt: !3647)
!3651 = !DILocation(line: 196, column: 13, scope: !822, inlinedAt: !3647)
!3652 = !DILocation(line: 196, column: 37, scope: !822, inlinedAt: !3647)
!3653 = !DILocation(line: 196, column: 12, scope: !822, inlinedAt: !3647)
!3654 = !DILocation(line: 196, column: 100, scope: !827, inlinedAt: !3647)
!3655 = !DILocation(line: 196, column: 80, scope: !827, inlinedAt: !3647)
!3656 = !DILocation(line: 196, column: 46, scope: !822, inlinedAt: !3647)
!3657 = !DILocation(line: 196, column: 164, scope: !827, inlinedAt: !3647)
!3658 = !DILocation(line: 196, column: 9, scope: !822, inlinedAt: !3647)
!3659 = !DILocation(line: 196, column: 7, scope: !822, inlinedAt: !3647)
!3660 = !DILocation(line: 196, column: 173, scope: !834, inlinedAt: !3647)
!3661 = !DILocation(line: 196, column: 175, scope: !834, inlinedAt: !3647)
!3662 = !DILocation(line: 196, column: 2, scope: !822, inlinedAt: !3647)
!3663 = !DILocation(line: 197, column: 24, scope: !838, inlinedAt: !3647)
!3664 = !DILocation(line: 197, column: 32, scope: !838, inlinedAt: !3647)
!3665 = !DILocation(line: 197, column: 7, scope: !838, inlinedAt: !3647)
!3666 = !DILocation(line: 197, column: 35, scope: !838, inlinedAt: !3647)
!3667 = !DILocation(line: 197, column: 7, scope: !839, inlinedAt: !3647)
!3668 = !DILocation(line: 198, column: 22, scope: !845, inlinedAt: !3647)
!3669 = !DILocation(line: 199, column: 8, scope: !845, inlinedAt: !3647)
!3670 = !DILocation(line: 198, column: 4, scope: !845, inlinedAt: !3647)
!3671 = !DILocation(line: 200, column: 4, scope: !845, inlinedAt: !3647)
!3672 = !DILocation(line: 196, column: 187, scope: !834, inlinedAt: !3647)
!3673 = !DILocation(line: 196, column: 189, scope: !834, inlinedAt: !3647)
!3674 = !DILocation(line: 196, column: 186, scope: !834, inlinedAt: !3647)
!3675 = !DILocation(line: 196, column: 219, scope: !834, inlinedAt: !3647)
!3676 = !DILocation(line: 196, column: 225, scope: !834, inlinedAt: !3647)
!3677 = !DILocation(line: 196, column: 199, scope: !834, inlinedAt: !3647)
!3678 = !DILocation(line: 196, column: 247, scope: !834, inlinedAt: !3647)
!3679 = !DILocation(line: 196, column: 198, scope: !834, inlinedAt: !3647)
!3680 = !DILocation(line: 196, column: 310, scope: !858, inlinedAt: !3647)
!3681 = !DILocation(line: 196, column: 316, scope: !858, inlinedAt: !3647)
!3682 = !DILocation(line: 196, column: 290, scope: !858, inlinedAt: !3647)
!3683 = !DILocation(line: 196, column: 256, scope: !834, inlinedAt: !3647)
!3684 = !DILocation(line: 196, column: 398, scope: !858, inlinedAt: !3647)
!3685 = !DILocation(line: 196, column: 183, scope: !834, inlinedAt: !3647)
!3686 = !DILocation(line: 196, column: 2, scope: !834, inlinedAt: !3647)
!3687 = distinct !{!3687, !3662, !3688}
!3688 = !DILocation(line: 202, column: 2, scope: !822, inlinedAt: !3647)
!3689 = !DILocation(line: 204, column: 19, scope: !811, inlinedAt: !3647)
!3690 = !DILocation(line: 204, column: 24, scope: !811, inlinedAt: !3647)
!3691 = !DILocation(line: 204, column: 2, scope: !811, inlinedAt: !3647)
!3692 = !DILocation(line: 205, column: 1, scope: !811, inlinedAt: !3647)
!3693 = !DILocation(line: 753, column: 2, scope: !3638)
!3694 = !DILocation(line: 754, column: 1, scope: !3619)
!3695 = distinct !DISubprogram(name: "add_thread_timeout", scope: !232, file: !232, line: 756, type: !3696, scopeLine: 757, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !213)
!3696 = !DISubroutineType(types: !3697)
!3697 = !{null, !101, !327}
!3698 = !DILocalVariable(name: "thread", arg: 1, scope: !3695, file: !232, line: 756, type: !101)
!3699 = !DILocation(line: 756, column: 49, scope: !3695)
!3700 = !DILocalVariable(name: "timeout", arg: 2, scope: !3695, file: !232, line: 756, type: !327)
!3701 = !DILocation(line: 756, column: 69, scope: !3695)
!3702 = !DILocation(line: 758, column: 18, scope: !3703)
!3703 = distinct !DILexicalBlock(scope: !3695, file: !232, line: 758, column: 6)
!3704 = !DILocation(line: 758, column: 43, scope: !3703)
!3705 = !DILocation(line: 758, column: 24, scope: !3703)
!3706 = !DILocation(line: 758, column: 6, scope: !3695)
!3707 = !DILocation(line: 759, column: 24, scope: !3708)
!3708 = distinct !DILexicalBlock(scope: !3703, file: !232, line: 758, column: 85)
!3709 = !DILocation(line: 759, column: 3, scope: !3708)
!3710 = !DILocation(line: 760, column: 2, scope: !3708)
!3711 = !DILocation(line: 761, column: 1, scope: !3695)
!3712 = distinct !DISubprogram(name: "z_sched_wake", scope: !232, file: !232, line: 1926, type: !3713, scopeLine: 1927, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !213)
!3713 = !DISubroutineType(types: !3714)
!3714 = !{!236, !137, !192, !162}
!3715 = !DILocalVariable(name: "wait_q", arg: 1, scope: !3712, file: !232, line: 1926, type: !137)
!3716 = !DILocation(line: 1926, column: 31, scope: !3712)
!3717 = !DILocalVariable(name: "swap_retval", arg: 2, scope: !3712, file: !232, line: 1926, type: !192)
!3718 = !DILocation(line: 1926, column: 43, scope: !3712)
!3719 = !DILocalVariable(name: "swap_data", arg: 3, scope: !3712, file: !232, line: 1926, type: !162)
!3720 = !DILocation(line: 1926, column: 62, scope: !3712)
!3721 = !DILocalVariable(name: "thread", scope: !3712, file: !232, line: 1928, type: !101)
!3722 = !DILocation(line: 1928, column: 19, scope: !3712)
!3723 = !DILocalVariable(name: "ret", scope: !3712, file: !232, line: 1929, type: !236)
!3724 = !DILocation(line: 1929, column: 8, scope: !3712)
!3725 = !DILocalVariable(name: "__i", scope: !3726, file: !232, line: 1931, type: !561)
!3726 = distinct !DILexicalBlock(scope: !3712, file: !232, line: 1931, column: 2)
!3727 = !DILocation(line: 1931, column: 24, scope: !3726)
!3728 = !DILocalVariable(name: "__key", scope: !3726, file: !232, line: 1931, type: !561)
!3729 = !DILocation(line: 1931, column: 34, scope: !3726)
!3730 = !DILocation(line: 160, column: 94, scope: !569, inlinedAt: !3731)
!3731 = distinct !DILocation(line: 1931, column: 42, scope: !3726)
!3732 = !DILocation(line: 162, column: 9, scope: !569, inlinedAt: !3731)
!3733 = !DILocation(line: 163, column: 19, scope: !569, inlinedAt: !3731)
!3734 = !DILocation(line: 44, column: 15, scope: !579, inlinedAt: !3735)
!3735 = distinct !DILocation(line: 169, column: 10, scope: !569, inlinedAt: !3731)
!3736 = !DILocation(line: 48, column: 2, scope: !579, inlinedAt: !3735)
!3737 = !DILocation(line: 80, column: 9, scope: !579, inlinedAt: !3735)
!3738 = !DILocation(line: 169, column: 8, scope: !569, inlinedAt: !3731)
!3739 = !DILocation(line: 171, column: 26, scope: !569, inlinedAt: !3731)
!3740 = !DILocation(line: 110, column: 94, scope: !591, inlinedAt: !3741)
!3741 = distinct !DILocation(line: 171, column: 2, scope: !569, inlinedAt: !3731)
!3742 = !DILocation(line: 112, column: 9, scope: !591, inlinedAt: !3741)
!3743 = !DILocation(line: 177, column: 27, scope: !569, inlinedAt: !3731)
!3744 = !DILocation(line: 121, column: 95, scope: !599, inlinedAt: !3745)
!3745 = distinct !DILocation(line: 177, column: 2, scope: !569, inlinedAt: !3731)
!3746 = !DILocation(line: 123, column: 9, scope: !599, inlinedAt: !3745)
!3747 = !DILocation(line: 179, column: 2, scope: !569, inlinedAt: !3731)
!3748 = !DILocation(line: 1931, column: 42, scope: !3726)
!3749 = !DILocation(line: 1931, column: 7, scope: !3726)
!3750 = !DILocation(line: 1931, column: 77, scope: !3751)
!3751 = distinct !DILexicalBlock(scope: !3726, file: !232, line: 1931, column: 2)
!3752 = !DILocation(line: 1931, column: 72, scope: !3751)
!3753 = !DILocation(line: 1931, column: 2, scope: !3726)
!3754 = !DILocation(line: 1932, column: 30, scope: !3755)
!3755 = distinct !DILexicalBlock(scope: !3751, file: !232, line: 1931, column: 134)
!3756 = !DILocation(line: 1932, column: 38, scope: !3755)
!3757 = !DILocation(line: 1932, column: 12, scope: !3755)
!3758 = !DILocation(line: 1932, column: 10, scope: !3755)
!3759 = !DILocation(line: 1934, column: 7, scope: !3760)
!3760 = distinct !DILexicalBlock(scope: !3755, file: !232, line: 1934, column: 7)
!3761 = !DILocation(line: 1934, column: 14, scope: !3760)
!3762 = !DILocation(line: 1934, column: 7, scope: !3755)
!3763 = !DILocation(line: 1935, column: 40, scope: !3764)
!3764 = distinct !DILexicalBlock(scope: !3760, file: !232, line: 1934, column: 20)
!3765 = !DILocation(line: 1936, column: 12, scope: !3764)
!3766 = !DILocation(line: 1937, column: 12, scope: !3764)
!3767 = !DILocalVariable(name: "thread", arg: 1, scope: !3768, file: !3769, line: 137, type: !101)
!3768 = distinct !DISubprogram(name: "z_thread_return_value_set_with_data", scope: !3769, file: !3769, line: 137, type: !3770, scopeLine: 140, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !213)
!3769 = !DIFile(filename: "kernel/include/kernel_internal.h", directory: "/home/sri/zephyrproject/zephyr")
!3770 = !DISubroutineType(types: !3771)
!3771 = !{null, !101, !100, !162}
!3772 = !DILocation(line: 137, column: 54, scope: !3768, inlinedAt: !3773)
!3773 = distinct !DILocation(line: 1935, column: 4, scope: !3764)
!3774 = !DILocalVariable(name: "value", arg: 2, scope: !3768, file: !3769, line: 138, type: !100)
!3775 = !DILocation(line: 138, column: 21, scope: !3768, inlinedAt: !3773)
!3776 = !DILocalVariable(name: "data", arg: 3, scope: !3768, file: !3769, line: 139, type: !162)
!3777 = !DILocation(line: 139, column: 14, scope: !3768, inlinedAt: !3773)
!3778 = !DILocation(line: 141, column: 31, scope: !3768, inlinedAt: !3773)
!3779 = !DILocation(line: 141, column: 39, scope: !3768, inlinedAt: !3773)
!3780 = !DILocalVariable(name: "thread", arg: 1, scope: !3781, file: !3782, line: 59, type: !101)
!3781 = distinct !DISubprogram(name: "arch_thread_return_value_set", scope: !3782, file: !3782, line: 59, type: !3783, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !213)
!3782 = !DIFile(filename: "arch/arm/include/cortex_m/kernel_arch_func.h", directory: "/home/sri/zephyrproject/zephyr")
!3783 = !DISubroutineType(types: !3784)
!3784 = !{null, !101, !100}
!3785 = !DILocation(line: 59, column: 47, scope: !3781, inlinedAt: !3786)
!3786 = distinct !DILocation(line: 141, column: 2, scope: !3768, inlinedAt: !3773)
!3787 = !DILocalVariable(name: "value", arg: 2, scope: !3781, file: !3782, line: 59, type: !100)
!3788 = !DILocation(line: 59, column: 68, scope: !3781, inlinedAt: !3786)
!3789 = !DILocation(line: 61, column: 35, scope: !3781, inlinedAt: !3786)
!3790 = !DILocation(line: 61, column: 2, scope: !3781, inlinedAt: !3786)
!3791 = !DILocation(line: 61, column: 10, scope: !3781, inlinedAt: !3786)
!3792 = !DILocation(line: 61, column: 15, scope: !3781, inlinedAt: !3786)
!3793 = !DILocation(line: 61, column: 33, scope: !3781, inlinedAt: !3786)
!3794 = !DILocation(line: 142, column: 27, scope: !3768, inlinedAt: !3773)
!3795 = !DILocation(line: 142, column: 2, scope: !3768, inlinedAt: !3773)
!3796 = !DILocation(line: 142, column: 15, scope: !3768, inlinedAt: !3773)
!3797 = !DILocation(line: 142, column: 25, scope: !3768, inlinedAt: !3773)
!3798 = !DILocation(line: 1938, column: 29, scope: !3764)
!3799 = !DILocation(line: 1938, column: 4, scope: !3764)
!3800 = !DILocation(line: 1939, column: 33, scope: !3764)
!3801 = !DILocation(line: 1939, column: 10, scope: !3764)
!3802 = !DILocation(line: 1940, column: 17, scope: !3764)
!3803 = !DILocation(line: 1940, column: 4, scope: !3764)
!3804 = !DILocation(line: 1941, column: 8, scope: !3764)
!3805 = !DILocation(line: 1942, column: 3, scope: !3764)
!3806 = !DILocation(line: 1943, column: 2, scope: !3755)
!3807 = !DILocation(line: 1931, column: 82, scope: !3751)
!3808 = !DILocation(line: 235, column: 84, scope: !621, inlinedAt: !3809)
!3809 = distinct !DILocation(line: 1931, column: 82, scope: !3751)
!3810 = !DILocation(line: 236, column: 23, scope: !621, inlinedAt: !3809)
!3811 = !DILocation(line: 238, column: 9, scope: !621, inlinedAt: !3809)
!3812 = !DILocation(line: 261, column: 22, scope: !621, inlinedAt: !3809)
!3813 = !DILocation(line: 88, column: 80, scope: !631, inlinedAt: !3814)
!3814 = distinct !DILocation(line: 261, column: 2, scope: !621, inlinedAt: !3809)
!3815 = !DILocation(line: 91, column: 6, scope: !637, inlinedAt: !3814)
!3816 = !DILocation(line: 91, column: 10, scope: !637, inlinedAt: !3814)
!3817 = !DILocation(line: 91, column: 6, scope: !631, inlinedAt: !3814)
!3818 = !DILocation(line: 92, column: 3, scope: !641, inlinedAt: !3814)
!3819 = !DILocation(line: 94, column: 2, scope: !631, inlinedAt: !3814)
!3820 = !DILocation(line: 114, column: 1, scope: !631, inlinedAt: !3814)
!3821 = !DILocation(line: 1931, column: 125, scope: !3751)
!3822 = !DILocation(line: 1931, column: 129, scope: !3751)
!3823 = !DILocation(line: 1931, column: 2, scope: !3751)
!3824 = distinct !{!3824, !3753, !3825}
!3825 = !DILocation(line: 1943, column: 2, scope: !3726)
!3826 = !DILocation(line: 1945, column: 9, scope: !3712)
!3827 = !DILocation(line: 1945, column: 2, scope: !3712)
!3828 = distinct !DISubprogram(name: "z_sched_wait", scope: !232, file: !232, line: 1948, type: !3829, scopeLine: 1950, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !213)
!3829 = !DISubroutineType(types: !3830)
!3830 = !{!192, !572, !561, !137, !327, !3831}
!3831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 32)
!3832 = !DILocalVariable(name: "lock", arg: 1, scope: !3828, file: !232, line: 1948, type: !572)
!3833 = !DILocation(line: 1948, column: 37, scope: !3828)
!3834 = !DILocalVariable(name: "key", arg: 2, scope: !3828, file: !232, line: 1948, type: !561)
!3835 = !DILocation(line: 1948, column: 60, scope: !3828)
!3836 = !DILocalVariable(name: "wait_q", arg: 3, scope: !3828, file: !232, line: 1949, type: !137)
!3837 = !DILocation(line: 1949, column: 15, scope: !3828)
!3838 = !DILocalVariable(name: "timeout", arg: 4, scope: !3828, file: !232, line: 1949, type: !327)
!3839 = !DILocation(line: 1949, column: 35, scope: !3828)
!3840 = !DILocalVariable(name: "data", arg: 5, scope: !3828, file: !232, line: 1949, type: !3831)
!3841 = !DILocation(line: 1949, column: 51, scope: !3828)
!3842 = !DILocalVariable(name: "ret", scope: !3828, file: !232, line: 1951, type: !192)
!3843 = !DILocation(line: 1951, column: 6, scope: !3828)
!3844 = !DILocation(line: 1951, column: 24, scope: !3828)
!3845 = !DILocation(line: 1951, column: 35, scope: !3828)
!3846 = !DILocation(line: 1951, column: 12, scope: !3828)
!3847 = !DILocation(line: 1953, column: 6, scope: !3848)
!3848 = distinct !DILexicalBlock(scope: !3828, file: !232, line: 1953, column: 6)
!3849 = !DILocation(line: 1953, column: 11, scope: !3848)
!3850 = !DILocation(line: 1953, column: 6, scope: !3828)
!3851 = !DILocation(line: 1954, column: 27, scope: !3852)
!3852 = distinct !DILexicalBlock(scope: !3848, file: !232, line: 1953, column: 17)
!3853 = !DILocation(line: 1954, column: 36, scope: !3852)
!3854 = !DILocation(line: 1954, column: 41, scope: !3852)
!3855 = !DILocation(line: 1954, column: 4, scope: !3852)
!3856 = !DILocation(line: 1954, column: 9, scope: !3852)
!3857 = !DILocation(line: 1955, column: 2, scope: !3852)
!3858 = !DILocation(line: 1956, column: 9, scope: !3828)
!3859 = !DILocation(line: 1956, column: 2, scope: !3828)
!3860 = distinct !DISubprogram(name: "z_sched_waitq_walk", scope: !232, file: !232, line: 1959, type: !3861, scopeLine: 1961, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !213)
!3861 = !DISubroutineType(types: !3862)
!3862 = !{!192, !137, !3863, !162}
!3863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3864, size: 32)
!3864 = !DISubroutineType(types: !3865)
!3865 = !{!192, !101, !162}
!3866 = !DILocalVariable(name: "wait_q", arg: 1, scope: !3860, file: !232, line: 1959, type: !137)
!3867 = !DILocation(line: 1959, column: 35, scope: !3860)
!3868 = !DILocalVariable(name: "func", arg: 2, scope: !3860, file: !232, line: 1960, type: !3863)
!3869 = !DILocation(line: 1960, column: 16, scope: !3860)
!3870 = !DILocalVariable(name: "data", arg: 3, scope: !3860, file: !232, line: 1960, type: !162)
!3871 = !DILocation(line: 1960, column: 56, scope: !3860)
!3872 = !DILocalVariable(name: "thread", scope: !3860, file: !232, line: 1962, type: !101)
!3873 = !DILocation(line: 1962, column: 19, scope: !3860)
!3874 = !DILocalVariable(name: "status", scope: !3860, file: !232, line: 1963, type: !192)
!3875 = !DILocation(line: 1963, column: 6, scope: !3860)
!3876 = !DILocalVariable(name: "__i", scope: !3877, file: !232, line: 1965, type: !561)
!3877 = distinct !DILexicalBlock(scope: !3860, file: !232, line: 1965, column: 2)
!3878 = !DILocation(line: 1965, column: 24, scope: !3877)
!3879 = !DILocalVariable(name: "__key", scope: !3877, file: !232, line: 1965, type: !561)
!3880 = !DILocation(line: 1965, column: 34, scope: !3877)
!3881 = !DILocation(line: 160, column: 94, scope: !569, inlinedAt: !3882)
!3882 = distinct !DILocation(line: 1965, column: 42, scope: !3877)
!3883 = !DILocation(line: 162, column: 9, scope: !569, inlinedAt: !3882)
!3884 = !DILocation(line: 163, column: 19, scope: !569, inlinedAt: !3882)
!3885 = !DILocation(line: 44, column: 15, scope: !579, inlinedAt: !3886)
!3886 = distinct !DILocation(line: 169, column: 10, scope: !569, inlinedAt: !3882)
!3887 = !DILocation(line: 48, column: 2, scope: !579, inlinedAt: !3886)
!3888 = !DILocation(line: 80, column: 9, scope: !579, inlinedAt: !3886)
!3889 = !DILocation(line: 169, column: 8, scope: !569, inlinedAt: !3882)
!3890 = !DILocation(line: 171, column: 26, scope: !569, inlinedAt: !3882)
!3891 = !DILocation(line: 110, column: 94, scope: !591, inlinedAt: !3892)
!3892 = distinct !DILocation(line: 171, column: 2, scope: !569, inlinedAt: !3882)
!3893 = !DILocation(line: 112, column: 9, scope: !591, inlinedAt: !3892)
!3894 = !DILocation(line: 177, column: 27, scope: !569, inlinedAt: !3882)
!3895 = !DILocation(line: 121, column: 95, scope: !599, inlinedAt: !3896)
!3896 = distinct !DILocation(line: 177, column: 2, scope: !569, inlinedAt: !3882)
!3897 = !DILocation(line: 123, column: 9, scope: !599, inlinedAt: !3896)
!3898 = !DILocation(line: 179, column: 2, scope: !569, inlinedAt: !3882)
!3899 = !DILocation(line: 1965, column: 42, scope: !3877)
!3900 = !DILocation(line: 1965, column: 7, scope: !3877)
!3901 = !DILocation(line: 1965, column: 77, scope: !3902)
!3902 = distinct !DILexicalBlock(scope: !3877, file: !232, line: 1965, column: 2)
!3903 = !DILocation(line: 1965, column: 72, scope: !3902)
!3904 = !DILocation(line: 1965, column: 2, scope: !3877)
!3905 = !DILocation(line: 1966, column: 42, scope: !3906)
!3906 = distinct !DILexicalBlock(scope: !3907, file: !232, line: 1966, column: 3)
!3907 = distinct !DILexicalBlock(scope: !3902, file: !232, line: 1965, column: 134)
!3908 = !DILocation(line: 1966, column: 51, scope: !3906)
!3909 = !DILocation(line: 1966, column: 19, scope: !3906)
!3910 = !DILocation(line: 1966, column: 59, scope: !3906)
!3911 = !DILocation(line: 1966, column: 18, scope: !3906)
!3912 = !DILocation(line: 1966, column: 130, scope: !3913)
!3913 = distinct !DILexicalBlock(scope: !3906, file: !232, line: 1966, column: 68)
!3914 = !DILocation(line: 1966, column: 139, scope: !3913)
!3915 = !DILocation(line: 1966, column: 107, scope: !3913)
!3916 = !DILocation(line: 1966, column: 149, scope: !3913)
!3917 = !DILocation(line: 1966, column: 68, scope: !3906)
!3918 = !DILocation(line: 1966, column: 212, scope: !3913)
!3919 = !DILocation(line: 1966, column: 15, scope: !3906)
!3920 = !DILocation(line: 1966, column: 8, scope: !3906)
!3921 = !DILocation(line: 1966, column: 221, scope: !3922)
!3922 = distinct !DILexicalBlock(scope: !3906, file: !232, line: 1966, column: 3)
!3923 = !DILocation(line: 1966, column: 228, scope: !3922)
!3924 = !DILocation(line: 1966, column: 3, scope: !3906)
!3925 = !DILocation(line: 1974, column: 13, scope: !3926)
!3926 = distinct !DILexicalBlock(scope: !3922, file: !232, line: 1966, column: 527)
!3927 = !DILocation(line: 1974, column: 18, scope: !3926)
!3928 = !DILocation(line: 1974, column: 26, scope: !3926)
!3929 = !DILocation(line: 1974, column: 11, scope: !3926)
!3930 = !DILocation(line: 1975, column: 8, scope: !3931)
!3931 = distinct !DILexicalBlock(scope: !3926, file: !232, line: 1975, column: 8)
!3932 = !DILocation(line: 1975, column: 15, scope: !3931)
!3933 = !DILocation(line: 1975, column: 8, scope: !3926)
!3934 = !DILocation(line: 1976, column: 5, scope: !3935)
!3935 = distinct !DILexicalBlock(scope: !3931, file: !232, line: 1975, column: 21)
!3936 = !DILocation(line: 1978, column: 3, scope: !3926)
!3937 = !DILocation(line: 1966, column: 245, scope: !3922)
!3938 = !DILocation(line: 1966, column: 252, scope: !3922)
!3939 = !DILocation(line: 1966, column: 244, scope: !3922)
!3940 = !DILocation(line: 1966, column: 285, scope: !3922)
!3941 = !DILocation(line: 1966, column: 294, scope: !3922)
!3942 = !DILocation(line: 1966, column: 304, scope: !3922)
!3943 = !DILocation(line: 1966, column: 312, scope: !3922)
!3944 = !DILocation(line: 1966, column: 317, scope: !3922)
!3945 = !DILocation(line: 1966, column: 262, scope: !3922)
!3946 = !DILocation(line: 1966, column: 331, scope: !3922)
!3947 = !DILocation(line: 1966, column: 261, scope: !3922)
!3948 = !DILocation(line: 1966, column: 402, scope: !3949)
!3949 = distinct !DILexicalBlock(scope: !3922, file: !232, line: 1966, column: 340)
!3950 = !DILocation(line: 1966, column: 411, scope: !3949)
!3951 = !DILocation(line: 1966, column: 421, scope: !3949)
!3952 = !DILocation(line: 1966, column: 429, scope: !3949)
!3953 = !DILocation(line: 1966, column: 434, scope: !3949)
!3954 = !DILocation(line: 1966, column: 379, scope: !3949)
!3955 = !DILocation(line: 1966, column: 450, scope: !3949)
!3956 = !DILocation(line: 1966, column: 340, scope: !3922)
!3957 = !DILocation(line: 1966, column: 513, scope: !3949)
!3958 = !DILocation(line: 1966, column: 241, scope: !3922)
!3959 = !DILocation(line: 1966, column: 3, scope: !3922)
!3960 = distinct !{!3960, !3924, !3961}
!3961 = !DILocation(line: 1978, column: 3, scope: !3906)
!3962 = !DILocation(line: 1979, column: 2, scope: !3907)
!3963 = !DILocation(line: 1965, column: 82, scope: !3902)
!3964 = !DILocation(line: 235, column: 84, scope: !621, inlinedAt: !3965)
!3965 = distinct !DILocation(line: 1965, column: 82, scope: !3902)
!3966 = !DILocation(line: 236, column: 23, scope: !621, inlinedAt: !3965)
!3967 = !DILocation(line: 238, column: 9, scope: !621, inlinedAt: !3965)
!3968 = !DILocation(line: 261, column: 22, scope: !621, inlinedAt: !3965)
!3969 = !DILocation(line: 88, column: 80, scope: !631, inlinedAt: !3970)
!3970 = distinct !DILocation(line: 261, column: 2, scope: !621, inlinedAt: !3965)
!3971 = !DILocation(line: 91, column: 6, scope: !637, inlinedAt: !3970)
!3972 = !DILocation(line: 91, column: 10, scope: !637, inlinedAt: !3970)
!3973 = !DILocation(line: 91, column: 6, scope: !631, inlinedAt: !3970)
!3974 = !DILocation(line: 92, column: 3, scope: !641, inlinedAt: !3970)
!3975 = !DILocation(line: 94, column: 2, scope: !631, inlinedAt: !3970)
!3976 = !DILocation(line: 114, column: 1, scope: !631, inlinedAt: !3970)
!3977 = !DILocation(line: 1965, column: 125, scope: !3902)
!3978 = !DILocation(line: 1965, column: 129, scope: !3902)
!3979 = !DILocation(line: 1965, column: 2, scope: !3902)
!3980 = distinct !{!3980, !3904, !3981}
!3981 = !DILocation(line: 1979, column: 2, scope: !3877)
!3982 = !DILocation(line: 1981, column: 9, scope: !3860)
!3983 = !DILocation(line: 1981, column: 2, scope: !3860)
!3984 = distinct !DISubprogram(name: "sys_dlist_peek_next", scope: !113, file: !113, line: 350, type: !3985, scopeLine: 352, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !213)
!3985 = !DISubroutineType(types: !3986)
!3986 = !{!228, !814, !228}
!3987 = !DILocalVariable(name: "list", arg: 1, scope: !3984, file: !113, line: 350, type: !814)
!3988 = !DILocation(line: 350, column: 61, scope: !3984)
!3989 = !DILocalVariable(name: "node", arg: 2, scope: !3984, file: !113, line: 351, type: !228)
!3990 = !DILocation(line: 351, column: 26, scope: !3984)
!3991 = !DILocation(line: 353, column: 10, scope: !3984)
!3992 = !DILocation(line: 353, column: 15, scope: !3984)
!3993 = !DILocation(line: 353, column: 9, scope: !3984)
!3994 = !DILocation(line: 353, column: 61, scope: !3984)
!3995 = !DILocation(line: 353, column: 67, scope: !3984)
!3996 = !DILocation(line: 353, column: 32, scope: !3984)
!3997 = !DILocation(line: 353, column: 2, scope: !3984)
!3998 = distinct !DISubprogram(name: "sys_sflist_is_empty", scope: !374, file: !374, line: 335, type: !3999, scopeLine: 335, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !213)
!3999 = !DISubroutineType(types: !4000)
!4000 = !{!236, !4001}
!4001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 32)
!4002 = !DILocalVariable(name: "list", arg: 1, scope: !3998, file: !374, line: 335, type: !4001)
!4003 = !DILocation(line: 335, column: 55, scope: !3998)
!4004 = !DILocation(line: 335, column: 92, scope: !3998)
!4005 = !DILocation(line: 335, column: 71, scope: !3998)
!4006 = !DILocation(line: 335, column: 98, scope: !3998)
!4007 = !DILocation(line: 335, column: 63, scope: !3998)
!4008 = distinct !DISubprogram(name: "sys_sflist_peek_head", scope: !374, file: !374, line: 255, type: !4009, scopeLine: 256, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !213)
!4009 = !DISubroutineType(types: !4010)
!4010 = !{!378, !4001}
!4011 = !DILocalVariable(name: "list", arg: 1, scope: !4008, file: !374, line: 255, type: !4001)
!4012 = !DILocation(line: 255, column: 64, scope: !4008)
!4013 = !DILocation(line: 257, column: 9, scope: !4008)
!4014 = !DILocation(line: 257, column: 15, scope: !4008)
!4015 = !DILocation(line: 257, column: 2, scope: !4008)
!4016 = distinct !DISubprogram(name: "z_is_prio_higher", scope: !737, file: !737, line: 213, type: !4017, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !213)
!4017 = !DISubroutineType(types: !4018)
!4018 = !{!236, !192, !192}
!4019 = !DILocalVariable(name: "prio", arg: 1, scope: !4016, file: !737, line: 213, type: !192)
!4020 = !DILocation(line: 213, column: 42, scope: !4016)
!4021 = !DILocalVariable(name: "test_prio", arg: 2, scope: !4016, file: !737, line: 213, type: !192)
!4022 = !DILocation(line: 213, column: 52, scope: !4016)
!4023 = !DILocation(line: 215, column: 38, scope: !4016)
!4024 = !DILocation(line: 215, column: 44, scope: !4016)
!4025 = !DILocation(line: 215, column: 9, scope: !4016)
!4026 = !DILocation(line: 215, column: 2, scope: !4016)
!4027 = distinct !DISubprogram(name: "z_is_prio1_higher_than_prio2", scope: !737, file: !737, line: 208, type: !4017, scopeLine: 209, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !213)
!4028 = !DILocalVariable(name: "prio1", arg: 1, scope: !4027, file: !737, line: 208, type: !192)
!4029 = !DILocation(line: 208, column: 54, scope: !4027)
!4030 = !DILocalVariable(name: "prio2", arg: 2, scope: !4027, file: !737, line: 208, type: !192)
!4031 = !DILocation(line: 208, column: 65, scope: !4027)
!4032 = !DILocation(line: 210, column: 9, scope: !4027)
!4033 = !DILocation(line: 210, column: 17, scope: !4027)
!4034 = !DILocation(line: 210, column: 15, scope: !4027)
!4035 = !DILocation(line: 210, column: 2, scope: !4027)
!4036 = distinct !DISubprogram(name: "z_is_thread_state_set", scope: !737, file: !737, line: 133, type: !4037, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !213)
!4037 = !DISubroutineType(types: !4038)
!4038 = !{!236, !101, !98}
!4039 = !DILocalVariable(name: "thread", arg: 1, scope: !4036, file: !737, line: 133, type: !101)
!4040 = !DILocation(line: 133, column: 60, scope: !4036)
!4041 = !DILocalVariable(name: "state", arg: 2, scope: !4036, file: !737, line: 133, type: !98)
!4042 = !DILocation(line: 133, column: 77, scope: !4036)
!4043 = !DILocation(line: 135, column: 10, scope: !4036)
!4044 = !DILocation(line: 135, column: 18, scope: !4036)
!4045 = !DILocation(line: 135, column: 23, scope: !4036)
!4046 = !DILocation(line: 135, column: 38, scope: !4036)
!4047 = !DILocation(line: 135, column: 36, scope: !4036)
!4048 = !DILocation(line: 135, column: 45, scope: !4036)
!4049 = !DILocation(line: 135, column: 2, scope: !4036)
!4050 = distinct !DISubprogram(name: "should_queue_thread", scope: !232, file: !232, line: 255, type: !498, scopeLine: 256, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !213)
!4051 = !DILocalVariable(name: "th", arg: 1, scope: !4050, file: !232, line: 255, type: !101)
!4052 = !DILocation(line: 255, column: 58, scope: !4050)
!4053 = !DILocation(line: 257, column: 2, scope: !4050)
!4054 = distinct !DISubprogram(name: "update_metairq_preempt", scope: !232, file: !232, line: 553, type: !468, scopeLine: 554, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !213)
!4055 = !DILocalVariable(name: "thread", arg: 1, scope: !4054, file: !232, line: 553, type: !101)
!4056 = !DILocation(line: 553, column: 53, scope: !4054)
!4057 = !DILocation(line: 566, column: 9, scope: !4054)
!4058 = !DILocation(line: 568, column: 1, scope: !4054)
!4059 = distinct !DISubprogram(name: "z_is_thread_timeout_active", scope: !737, file: !737, line: 117, type: !498, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !213)
!4060 = !DILocalVariable(name: "thread", arg: 1, scope: !4059, file: !737, line: 117, type: !101)
!4061 = !DILocation(line: 117, column: 65, scope: !4059)
!4062 = !DILocation(line: 119, column: 33, scope: !4059)
!4063 = !DILocation(line: 119, column: 41, scope: !4059)
!4064 = !DILocation(line: 119, column: 46, scope: !4059)
!4065 = !DILocation(line: 119, column: 10, scope: !4059)
!4066 = !DILocation(line: 119, column: 9, scope: !4059)
!4067 = !DILocation(line: 119, column: 2, scope: !4059)
!4068 = distinct !DISubprogram(name: "is_metairq", scope: !232, file: !232, line: 74, type: !542, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !213)
!4069 = !DILocalVariable(name: "thread", arg: 1, scope: !4068, file: !232, line: 74, type: !101)
!4070 = !DILocation(line: 74, column: 47, scope: !4068)
!4071 = !DILocation(line: 80, column: 9, scope: !4068)
!4072 = !DILocation(line: 81, column: 2, scope: !4068)
!4073 = distinct !DISubprogram(name: "z_is_inactive_timeout", scope: !1302, file: !1302, line: 35, type: !4074, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !213)
!4074 = !DISubroutineType(types: !4075)
!4075 = !{!236, !4076}
!4076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4077, size: 32)
!4077 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !164)
!4078 = !DILocalVariable(name: "to", arg: 1, scope: !4073, file: !1302, line: 35, type: !4076)
!4079 = !DILocation(line: 35, column: 66, scope: !4073)
!4080 = !DILocation(line: 37, column: 31, scope: !4073)
!4081 = !DILocation(line: 37, column: 35, scope: !4073)
!4082 = !DILocation(line: 37, column: 10, scope: !4073)
!4083 = !DILocation(line: 37, column: 9, scope: !4073)
!4084 = !DILocation(line: 37, column: 2, scope: !4073)
!4085 = distinct !DISubprogram(name: "sys_dnode_is_linked", scope: !113, file: !113, line: 234, type: !4086, scopeLine: 235, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !213)
!4086 = !DISubroutineType(types: !4087)
!4087 = !{!236, !4088}
!4088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4089, size: 32)
!4089 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !112)
!4090 = !DILocalVariable(name: "node", arg: 1, scope: !4085, file: !113, line: 234, type: !4088)
!4091 = !DILocation(line: 234, column: 60, scope: !4085)
!4092 = !DILocation(line: 236, column: 9, scope: !4085)
!4093 = !DILocation(line: 236, column: 15, scope: !4085)
!4094 = !DILocation(line: 236, column: 20, scope: !4085)
!4095 = !DILocation(line: 236, column: 2, scope: !4085)
!4096 = distinct !DISubprogram(name: "pended_on_thread", scope: !232, file: !232, line: 727, type: !4097, scopeLine: 728, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !213)
!4097 = !DISubroutineType(types: !4098)
!4098 = !{!137, !101}
!4099 = !DILocalVariable(name: "thread", arg: 1, scope: !4096, file: !232, line: 727, type: !101)
!4100 = !DILocation(line: 727, column: 53, scope: !4096)
!4101 = !DILocation(line: 731, column: 9, scope: !4096)
!4102 = !DILocation(line: 731, column: 17, scope: !4096)
!4103 = !DILocation(line: 731, column: 22, scope: !4096)
!4104 = !DILocation(line: 731, column: 2, scope: !4096)
!4105 = distinct !DISubprogram(name: "z_mark_thread_as_not_pending", scope: !737, file: !737, line: 167, type: !468, scopeLine: 168, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !213)
!4106 = !DILocalVariable(name: "thread", arg: 1, scope: !4105, file: !737, line: 167, type: !101)
!4107 = !DILocation(line: 167, column: 66, scope: !4105)
!4108 = !DILocation(line: 169, column: 2, scope: !4105)
!4109 = !DILocation(line: 169, column: 10, scope: !4105)
!4110 = !DILocation(line: 169, column: 15, scope: !4105)
!4111 = !DILocation(line: 169, column: 28, scope: !4105)
!4112 = !DILocation(line: 170, column: 1, scope: !4105)
!4113 = distinct !DISubprogram(name: "sys_dlist_insert", scope: !113, file: !113, line: 452, type: !4114, scopeLine: 453, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !213)
!4114 = !DISubroutineType(types: !4115)
!4115 = !{null, !228, !228}
!4116 = !DILocalVariable(name: "successor", arg: 1, scope: !4113, file: !113, line: 452, type: !228)
!4117 = !DILocation(line: 452, column: 50, scope: !4113)
!4118 = !DILocalVariable(name: "node", arg: 2, scope: !4113, file: !113, line: 452, type: !228)
!4119 = !DILocation(line: 452, column: 74, scope: !4113)
!4120 = !DILocalVariable(name: "prev", scope: !4113, file: !113, line: 454, type: !2551)
!4121 = !DILocation(line: 454, column: 21, scope: !4113)
!4122 = !DILocation(line: 454, column: 28, scope: !4113)
!4123 = !DILocation(line: 454, column: 39, scope: !4113)
!4124 = !DILocation(line: 456, column: 15, scope: !4113)
!4125 = !DILocation(line: 456, column: 2, scope: !4113)
!4126 = !DILocation(line: 456, column: 8, scope: !4113)
!4127 = !DILocation(line: 456, column: 13, scope: !4113)
!4128 = !DILocation(line: 457, column: 15, scope: !4113)
!4129 = !DILocation(line: 457, column: 2, scope: !4113)
!4130 = !DILocation(line: 457, column: 8, scope: !4113)
!4131 = !DILocation(line: 457, column: 13, scope: !4113)
!4132 = !DILocation(line: 458, column: 15, scope: !4113)
!4133 = !DILocation(line: 458, column: 2, scope: !4113)
!4134 = !DILocation(line: 458, column: 8, scope: !4113)
!4135 = !DILocation(line: 458, column: 13, scope: !4113)
!4136 = !DILocation(line: 459, column: 20, scope: !4113)
!4137 = !DILocation(line: 459, column: 2, scope: !4113)
!4138 = !DILocation(line: 459, column: 13, scope: !4113)
!4139 = !DILocation(line: 459, column: 18, scope: !4113)
!4140 = !DILocation(line: 460, column: 1, scope: !4113)
!4141 = distinct !DISubprogram(name: "sys_dlist_append", scope: !113, file: !113, line: 413, type: !4142, scopeLine: 414, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !213)
!4142 = !DISubroutineType(types: !4143)
!4143 = !{null, !814, !228}
!4144 = !DILocalVariable(name: "list", arg: 1, scope: !4141, file: !113, line: 413, type: !814)
!4145 = !DILocation(line: 413, column: 50, scope: !4141)
!4146 = !DILocalVariable(name: "node", arg: 2, scope: !4141, file: !113, line: 413, type: !228)
!4147 = !DILocation(line: 413, column: 69, scope: !4141)
!4148 = !DILocalVariable(name: "tail", scope: !4141, file: !113, line: 415, type: !2551)
!4149 = !DILocation(line: 415, column: 21, scope: !4141)
!4150 = !DILocation(line: 415, column: 28, scope: !4141)
!4151 = !DILocation(line: 415, column: 34, scope: !4141)
!4152 = !DILocation(line: 417, column: 15, scope: !4141)
!4153 = !DILocation(line: 417, column: 2, scope: !4141)
!4154 = !DILocation(line: 417, column: 8, scope: !4141)
!4155 = !DILocation(line: 417, column: 13, scope: !4141)
!4156 = !DILocation(line: 418, column: 15, scope: !4141)
!4157 = !DILocation(line: 418, column: 2, scope: !4141)
!4158 = !DILocation(line: 418, column: 8, scope: !4141)
!4159 = !DILocation(line: 418, column: 13, scope: !4141)
!4160 = !DILocation(line: 420, column: 15, scope: !4141)
!4161 = !DILocation(line: 420, column: 2, scope: !4141)
!4162 = !DILocation(line: 420, column: 8, scope: !4141)
!4163 = !DILocation(line: 420, column: 13, scope: !4141)
!4164 = !DILocation(line: 421, column: 15, scope: !4141)
!4165 = !DILocation(line: 421, column: 2, scope: !4141)
!4166 = !DILocation(line: 421, column: 8, scope: !4141)
!4167 = !DILocation(line: 421, column: 13, scope: !4141)
!4168 = !DILocation(line: 422, column: 1, scope: !4141)
!4169 = distinct !DISubprogram(name: "sys_dnode_init", scope: !113, file: !113, line: 220, type: !2546, scopeLine: 221, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !213)
!4170 = !DILocalVariable(name: "node", arg: 1, scope: !4169, file: !113, line: 220, type: !228)
!4171 = !DILocation(line: 220, column: 48, scope: !4169)
!4172 = !DILocation(line: 222, column: 2, scope: !4169)
!4173 = !DILocation(line: 222, column: 8, scope: !4169)
!4174 = !DILocation(line: 222, column: 13, scope: !4169)
!4175 = !DILocation(line: 223, column: 2, scope: !4169)
!4176 = !DILocation(line: 223, column: 8, scope: !4169)
!4177 = !DILocation(line: 223, column: 13, scope: !4169)
!4178 = !DILocation(line: 224, column: 1, scope: !4169)
!4179 = distinct !DISubprogram(name: "sys_dlist_is_empty", scope: !113, file: !113, line: 275, type: !4180, scopeLine: 276, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !213)
!4180 = !DISubroutineType(types: !4181)
!4181 = !{!236, !814}
!4182 = !DILocalVariable(name: "list", arg: 1, scope: !4179, file: !113, line: 275, type: !814)
!4183 = !DILocation(line: 275, column: 53, scope: !4179)
!4184 = !DILocation(line: 277, column: 9, scope: !4179)
!4185 = !DILocation(line: 277, column: 15, scope: !4179)
!4186 = !DILocation(line: 277, column: 23, scope: !4179)
!4187 = !DILocation(line: 277, column: 20, scope: !4179)
!4188 = !DILocation(line: 277, column: 2, scope: !4179)
!4189 = distinct !DISubprogram(name: "k_yield", scope: !3098, file: !3098, line: 175, type: !652, scopeLine: 176, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !213)
!4190 = !DILocation(line: 183, column: 2, scope: !4189)
!4191 = !DILocation(line: 183, column: 7, scope: !4192)
!4192 = distinct !DILexicalBlock(scope: !4189, file: !3098, line: 183, column: 5)
!4193 = !{i64 134718}
!4194 = !DILocation(line: 183, column: 47, scope: !4192)
!4195 = !DILocation(line: 184, column: 2, scope: !4189)
!4196 = !DILocation(line: 185, column: 1, scope: !4189)
!4197 = distinct !DISubprogram(name: "unready_thread", scope: !232, file: !232, line: 734, type: !468, scopeLine: 735, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !213)
!4198 = !DILocalVariable(name: "thread", arg: 1, scope: !4197, file: !232, line: 734, type: !101)
!4199 = !DILocation(line: 734, column: 45, scope: !4197)
!4200 = !DILocation(line: 736, column: 25, scope: !4201)
!4201 = distinct !DILexicalBlock(scope: !4197, file: !232, line: 736, column: 6)
!4202 = !DILocation(line: 736, column: 6, scope: !4201)
!4203 = !DILocation(line: 736, column: 6, scope: !4197)
!4204 = !DILocation(line: 737, column: 18, scope: !4205)
!4205 = distinct !DILexicalBlock(scope: !4201, file: !232, line: 736, column: 34)
!4206 = !DILocation(line: 274, column: 83, scope: !759, inlinedAt: !4207)
!4207 = distinct !DILocation(line: 737, column: 3, scope: !4205)
!4208 = !DILocation(line: 276, column: 2, scope: !759, inlinedAt: !4207)
!4209 = !DILocation(line: 276, column: 15, scope: !759, inlinedAt: !4207)
!4210 = !DILocation(line: 276, column: 28, scope: !759, inlinedAt: !4207)
!4211 = !DILocation(line: 277, column: 26, scope: !766, inlinedAt: !4207)
!4212 = !DILocation(line: 277, column: 6, scope: !766, inlinedAt: !4207)
!4213 = !DILocation(line: 277, column: 6, scope: !759, inlinedAt: !4207)
!4214 = !DILocation(line: 278, column: 15, scope: !770, inlinedAt: !4207)
!4215 = !DILocation(line: 242, column: 80, scope: !772, inlinedAt: !4216)
!4216 = distinct !DILocation(line: 278, column: 3, scope: !770, inlinedAt: !4207)
!4217 = !DILocation(line: 244, column: 33, scope: !772, inlinedAt: !4216)
!4218 = !DILocation(line: 208, column: 81, scope: !777, inlinedAt: !4219)
!4219 = distinct !DILocation(line: 244, column: 21, scope: !772, inlinedAt: !4216)
!4220 = !DILocation(line: 223, column: 9, scope: !777, inlinedAt: !4219)
!4221 = !DILocation(line: 244, column: 42, scope: !772, inlinedAt: !4216)
!4222 = !DILocation(line: 244, column: 2, scope: !772, inlinedAt: !4216)
!4223 = !DILocation(line: 279, column: 2, scope: !770, inlinedAt: !4207)
!4224 = !DILocation(line: 738, column: 2, scope: !4205)
!4225 = !DILocation(line: 739, column: 15, scope: !4197)
!4226 = !DILocation(line: 739, column: 41, scope: !4197)
!4227 = !DILocation(line: 739, column: 22, scope: !4197)
!4228 = !DILocation(line: 739, column: 2, scope: !4197)
!4229 = !DILocation(line: 740, column: 1, scope: !4197)
!4230 = distinct !DISubprogram(name: "z_add_thread_timeout", scope: !1302, file: !1302, line: 47, type: !3696, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !213)
!4231 = !DILocalVariable(name: "thread", arg: 1, scope: !4230, file: !1302, line: 47, type: !101)
!4232 = !DILocation(line: 47, column: 58, scope: !4230)
!4233 = !DILocalVariable(name: "ticks", arg: 2, scope: !4230, file: !1302, line: 47, type: !327)
!4234 = !DILocation(line: 47, column: 78, scope: !4230)
!4235 = !DILocation(line: 49, column: 17, scope: !4230)
!4236 = !DILocation(line: 49, column: 25, scope: !4230)
!4237 = !DILocation(line: 49, column: 30, scope: !4230)
!4238 = !DILocation(line: 49, column: 2, scope: !4230)
!4239 = !DILocation(line: 50, column: 1, scope: !4230)
!4240 = distinct !DISubprogram(name: "unpend_all", scope: !232, file: !232, line: 1699, type: !4241, scopeLine: 1700, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !213)
!4241 = !DISubroutineType(types: !4242)
!4242 = !{null, !137}
!4243 = !DILocalVariable(name: "wait_q", arg: 1, scope: !4240, file: !232, line: 1699, type: !137)
!4244 = !DILocation(line: 1699, column: 42, scope: !4240)
!4245 = !DILocalVariable(name: "thread", scope: !4240, file: !232, line: 1701, type: !101)
!4246 = !DILocation(line: 1701, column: 19, scope: !4240)
!4247 = !DILocation(line: 1703, column: 2, scope: !4240)
!4248 = !DILocation(line: 1703, column: 32, scope: !4240)
!4249 = !DILocation(line: 1703, column: 19, scope: !4240)
!4250 = !DILocation(line: 1703, column: 17, scope: !4240)
!4251 = !DILocation(line: 1703, column: 41, scope: !4240)
!4252 = !DILocation(line: 1704, column: 28, scope: !4253)
!4253 = distinct !DILexicalBlock(scope: !4240, file: !232, line: 1703, column: 47)
!4254 = !DILocation(line: 1704, column: 3, scope: !4253)
!4255 = !DILocation(line: 1705, column: 32, scope: !4253)
!4256 = !DILocation(line: 1705, column: 9, scope: !4253)
!4257 = !DILocation(line: 1706, column: 32, scope: !4253)
!4258 = !DILocation(line: 59, column: 47, scope: !3781, inlinedAt: !4259)
!4259 = distinct !DILocation(line: 1706, column: 3, scope: !4253)
!4260 = !DILocation(line: 59, column: 68, scope: !3781, inlinedAt: !4259)
!4261 = !DILocation(line: 61, column: 35, scope: !3781, inlinedAt: !4259)
!4262 = !DILocation(line: 61, column: 2, scope: !3781, inlinedAt: !4259)
!4263 = !DILocation(line: 61, column: 10, scope: !3781, inlinedAt: !4259)
!4264 = !DILocation(line: 61, column: 15, scope: !3781, inlinedAt: !4259)
!4265 = !DILocation(line: 61, column: 33, scope: !3781, inlinedAt: !4259)
!4266 = !DILocation(line: 1707, column: 16, scope: !4253)
!4267 = !DILocation(line: 1707, column: 3, scope: !4253)
!4268 = distinct !{!4268, !4247, !4269}
!4269 = !DILocation(line: 1708, column: 2, scope: !4240)
!4270 = !DILocation(line: 1709, column: 1, scope: !4240)
!4271 = distinct !DISubprogram(name: "z_mark_thread_as_pending", scope: !737, file: !737, line: 162, type: !468, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !213)
!4272 = !DILocalVariable(name: "thread", arg: 1, scope: !4271, file: !737, line: 162, type: !101)
!4273 = !DILocation(line: 162, column: 62, scope: !4271)
!4274 = !DILocation(line: 164, column: 2, scope: !4271)
!4275 = !DILocation(line: 164, column: 10, scope: !4271)
!4276 = !DILocation(line: 164, column: 15, scope: !4271)
!4277 = !DILocation(line: 164, column: 28, scope: !4271)
!4278 = !DILocation(line: 165, column: 1, scope: !4271)
!4279 = distinct !DISubprogram(name: "sys_dlist_peek_next_no_check", scope: !113, file: !113, line: 334, type: !3985, scopeLine: 336, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !213)
!4280 = !DILocalVariable(name: "list", arg: 1, scope: !4279, file: !113, line: 334, type: !814)
!4281 = !DILocation(line: 334, column: 70, scope: !4279)
!4282 = !DILocalVariable(name: "node", arg: 2, scope: !4279, file: !113, line: 335, type: !228)
!4283 = !DILocation(line: 335, column: 21, scope: !4279)
!4284 = !DILocation(line: 337, column: 10, scope: !4279)
!4285 = !DILocation(line: 337, column: 18, scope: !4279)
!4286 = !DILocation(line: 337, column: 24, scope: !4279)
!4287 = !DILocation(line: 337, column: 15, scope: !4279)
!4288 = !DILocation(line: 337, column: 9, scope: !4279)
!4289 = !DILocation(line: 337, column: 45, scope: !4279)
!4290 = !DILocation(line: 337, column: 51, scope: !4279)
!4291 = !DILocation(line: 337, column: 2, scope: !4279)
