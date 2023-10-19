; ModuleID = '../bc_files/work.bc'
source_filename = "/home/sri/zephyrproject/zephyr/kernel/work.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-arm-none-eabi"

%struct.k_spinlock = type {}
%struct.k_work_q = type { %struct.k_thread, %struct._slist, %struct._wait_q_t, %struct._wait_q_t, i32 }
%struct.k_thread = type { %struct._thread_base, %struct._callee_saved, ptr, %struct._wait_q_t, i32, ptr, %struct._thread_arch }
%struct._thread_base = type { %union.anon, ptr, i8, i8, %union.anon.2, i32, ptr, %struct._timeout }
%union.anon = type { %struct._dnode }
%struct._dnode = type { %union.anon.0, %union.anon.1 }
%union.anon.0 = type { ptr }
%union.anon.1 = type { ptr }
%union.anon.2 = type { i16 }
%struct._timeout = type { %struct._dnode, ptr, i64 }
%struct._callee_saved = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._thread_arch = type { i32, i32 }
%struct._slist = type { ptr, ptr }
%struct._wait_q_t = type { %struct._dnode }
%struct.z_kernel = type { [1 x %struct._cpu], %struct._ready_q }
%struct._cpu = type { i32, ptr, ptr, ptr, i8, %struct._cpu_arch }
%struct._cpu_arch = type {}
%struct._ready_q = type { ptr, %struct._dnode }
%struct.k_timer = type { %struct._timeout, %struct._wait_q_t, ptr, ptr, %struct.k_timeout_t, i32, ptr }
%struct.k_timeout_t = type { i64 }
%struct.k_queue = type { %struct._sflist, %struct.k_spinlock, %struct._wait_q_t }
%struct._sflist = type { ptr, ptr }
%struct.k_sem = type { %struct._wait_q_t, i32, i32 }
%struct.k_msgq = type { %struct._wait_q_t, %struct.k_spinlock, i32, i32, ptr, ptr, ptr, ptr, i32, i8 }
%struct.k_work = type { %struct._snode, ptr, ptr, i32 }
%struct._snode = type { ptr }
%struct.z_spinlock_key = type { i32 }
%struct.k_work_sync = type { %union.anon.3 }
%union.anon.3 = type { %struct.z_work_flusher }
%struct.z_work_flusher = type { %struct.k_work, %struct.k_sem }
%struct.z_work_canceller = type { %struct._snode, ptr, %struct.k_sem }
%struct.k_work_queue_config = type { ptr, i8 }
%struct.k_work_delayable = type { %struct.k_work, %struct._timeout, ptr }

@lock = internal global %struct.k_spinlock zeroinitializer, align 1, !dbg !0
@k_sys_work_q = external dso_local global %struct.k_work_q, align 8
@_kernel = external dso_local global %struct.z_kernel, align 4
@pending_cancels = internal global %struct._slist zeroinitializer, align 4, !dbg !291

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_k_object_access_grant(ptr noundef %0, ptr noundef %1) #0 !dbg !301 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !308, metadata !DIExpression()), !dbg !310
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !309, metadata !DIExpression()), !dbg !311
  %5 = load ptr, ptr %3, align 4, !dbg !312
  %6 = load ptr, ptr %4, align 4, !dbg !313
  ret void, !dbg !314
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_k_object_release(ptr noundef %0) #0 !dbg !315 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !319, metadata !DIExpression()), !dbg !320
  %3 = load ptr, ptr %2, align 4, !dbg !321
  ret void, !dbg !322
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_impl_k_object_alloc(i8 noundef zeroext %0) #0 !dbg !323 {
  %2 = alloca i8, align 1
  store i8 %0, ptr %2, align 1
  call void @llvm.dbg.declare(metadata ptr %2, metadata !327, metadata !DIExpression()), !dbg !328
  %3 = load i8, ptr %2, align 1, !dbg !329
  ret ptr null, !dbg !330
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_impl_k_object_alloc_size(i8 noundef zeroext %0, i32 noundef %1) #0 !dbg !331 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8 %0, ptr %3, align 1
  call void @llvm.dbg.declare(metadata ptr %3, metadata !335, metadata !DIExpression()), !dbg !337
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !336, metadata !DIExpression()), !dbg !338
  %5 = load i8, ptr %3, align 1, !dbg !339
  %6 = load i32, ptr %4, align 4, !dbg !340
  ret ptr null, !dbg !341
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_thread_timeout_expires_ticks(ptr noundef %0) #0 !dbg !342 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !348, metadata !DIExpression()), !dbg !349
  %3 = load ptr, ptr %2, align 4, !dbg !350
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !351
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !352
  %6 = call i64 @z_timeout_expires(ptr noundef %5) #7, !dbg !353
  ret i64 %6, !dbg !354
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_thread_timeout_remaining_ticks(ptr noundef %0) #0 !dbg !355 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !357, metadata !DIExpression()), !dbg !358
  %3 = load ptr, ptr %2, align 4, !dbg !359
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !360
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !361
  %6 = call i64 @z_timeout_remaining(ptr noundef %5) #7, !dbg !362
  ret i64 %6, !dbg !363
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_timer_expires_ticks(ptr noundef %0) #0 !dbg !364 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !387, metadata !DIExpression()), !dbg !388
  %3 = load ptr, ptr %2, align 4, !dbg !389
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !390
  %5 = call i64 @z_timeout_expires(ptr noundef %4) #7, !dbg !391
  ret i64 %5, !dbg !392
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_timer_remaining_ticks(ptr noundef %0) #0 !dbg !393 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !395, metadata !DIExpression()), !dbg !396
  %3 = load ptr, ptr %2, align 4, !dbg !397
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !398
  %5 = call i64 @z_timeout_remaining(ptr noundef %4) #7, !dbg !399
  ret i64 %5, !dbg !400
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_k_timer_user_data_set(ptr noundef %0, ptr noundef %1) #0 !dbg !401 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !405, metadata !DIExpression()), !dbg !407
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !406, metadata !DIExpression()), !dbg !408
  %5 = load ptr, ptr %4, align 4, !dbg !409
  %6 = load ptr, ptr %3, align 4, !dbg !410
  %7 = getelementptr inbounds %struct.k_timer, ptr %6, i32 0, i32 6, !dbg !411
  store ptr %5, ptr %7, align 4, !dbg !412
  ret void, !dbg !413
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_impl_k_timer_user_data_get(ptr noundef %0) #0 !dbg !414 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !418, metadata !DIExpression()), !dbg !419
  %3 = load ptr, ptr %2, align 4, !dbg !420
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 6, !dbg !421
  %5 = load ptr, ptr %4, align 4, !dbg !421
  ret ptr %5, !dbg !422
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_queue_is_empty(ptr noundef %0) #0 !dbg !423 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !445, metadata !DIExpression()), !dbg !446
  %3 = load ptr, ptr %2, align 4, !dbg !447
  %4 = getelementptr inbounds %struct.k_queue, ptr %3, i32 0, i32 0, !dbg !448
  %5 = call zeroext i1 @sys_sflist_is_empty(ptr noundef %4) #7, !dbg !449
  %6 = zext i1 %5 to i32, !dbg !450
  ret i32 %6, !dbg !451
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_sem_count_get(ptr noundef %0) #0 !dbg !452 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !457, metadata !DIExpression()), !dbg !458
  %3 = load ptr, ptr %2, align 4, !dbg !459
  %4 = getelementptr inbounds %struct.k_sem, ptr %3, i32 0, i32 1, !dbg !460
  %5 = load i32, ptr %4, align 4, !dbg !460
  ret i32 %5, !dbg !461
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_msgq_num_free_get(ptr noundef %0) #0 !dbg !462 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !479, metadata !DIExpression()), !dbg !480
  %3 = load ptr, ptr %2, align 4, !dbg !481
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 3, !dbg !482
  %5 = load i32, ptr %4, align 4, !dbg !482
  %6 = load ptr, ptr %2, align 4, !dbg !483
  %7 = getelementptr inbounds %struct.k_msgq, ptr %6, i32 0, i32 8, !dbg !484
  %8 = load i32, ptr %7, align 4, !dbg !484
  %9 = sub i32 %5, %8, !dbg !485
  ret i32 %9, !dbg !486
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_msgq_num_used_get(ptr noundef %0) #0 !dbg !487 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !489, metadata !DIExpression()), !dbg !490
  %3 = load ptr, ptr %2, align 4, !dbg !491
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 8, !dbg !492
  %5 = load i32, ptr %4, align 4, !dbg !492
  ret i32 %5, !dbg !493
}

; Function Attrs: nounwind optsize
define hidden void @k_work_init(ptr noundef %0, ptr noundef %1) #1 !dbg !494 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca %struct.k_work, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !498, metadata !DIExpression()), !dbg !500
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !499, metadata !DIExpression()), !dbg !501
  %6 = load ptr, ptr %3, align 4, !dbg !502
  %7 = getelementptr inbounds %struct.k_work, ptr %5, i32 0, i32 0, !dbg !503
  call void @llvm.memset.p0.i32(ptr align 4 %7, i8 0, i32 4, i1 false), !dbg !503
  %8 = getelementptr inbounds %struct.k_work, ptr %5, i32 0, i32 1, !dbg !503
  %9 = load ptr, ptr %4, align 4, !dbg !504
  store ptr %9, ptr %8, align 4, !dbg !503
  %10 = getelementptr inbounds %struct.k_work, ptr %5, i32 0, i32 2, !dbg !503
  store ptr null, ptr %10, align 4, !dbg !503
  %11 = getelementptr inbounds %struct.k_work, ptr %5, i32 0, i32 3, !dbg !503
  store i32 0, ptr %11, align 4, !dbg !503
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %6, ptr align 4 %5, i32 16, i1 false), !dbg !505
  br label %12, !dbg !506

12:                                               ; preds = %2
  br label %13, !dbg !507

13:                                               ; preds = %12
  ret void, !dbg !509
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: nounwind optsize
define hidden i32 @k_work_busy_get(ptr noundef %0) #1 !dbg !510 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.z_spinlock_key, align 4
  %7 = alloca ptr, align 4
  %8 = alloca %struct.z_spinlock_key, align 4
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  %11 = alloca %struct.z_spinlock_key, align 4
  %12 = alloca i32, align 4
  store ptr %0, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !516, metadata !DIExpression()), !dbg !523
  call void @llvm.lifetime.start.p0(i64 4, ptr %11) #8, !dbg !524
  call void @llvm.dbg.declare(metadata ptr %11, metadata !517, metadata !DIExpression()), !dbg !525
  store ptr @lock, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !526, metadata !DIExpression()), !dbg !533
  %13 = load ptr, ptr %9, align 4, !dbg !535
  call void @llvm.dbg.declare(metadata ptr %8, metadata !532, metadata !DIExpression()), !dbg !536
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #8, !dbg !537
  call void @llvm.dbg.declare(metadata ptr %5, metadata !543, metadata !DIExpression()), !dbg !545
  %14 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #8, !dbg !546, !srcloc !547
  store i32 %14, ptr %5, align 4, !dbg !546
  %15 = load i32, ptr %5, align 4, !dbg !548
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #8, !dbg !549
  store i32 %15, ptr %8, align 4, !dbg !550
  %16 = load ptr, ptr %9, align 4, !dbg !551
  store ptr %16, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !552, metadata !DIExpression()), !dbg !557
  %17 = load ptr, ptr %4, align 4, !dbg !559
  %18 = load ptr, ptr %9, align 4, !dbg !560
  store ptr %18, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !561, metadata !DIExpression()), !dbg !564
  %19 = load ptr, ptr %3, align 4, !dbg !566
  %20 = load i32, ptr %8, align 4, !dbg !567
  %21 = getelementptr inbounds %struct.z_spinlock_key, ptr %11, i32 0, i32 0, !dbg !568
  store i32 %20, ptr %21, align 4, !dbg !568
  call void @llvm.lifetime.start.p0(i64 4, ptr %12) #8, !dbg !569
  call void @llvm.dbg.declare(metadata ptr %12, metadata !522, metadata !DIExpression()), !dbg !570
  %22 = load ptr, ptr %10, align 4, !dbg !571
  %23 = call i32 @work_busy_get_locked(ptr noundef %22) #7, !dbg !572
  store i32 %23, ptr %12, align 4, !dbg !570
  %24 = getelementptr inbounds %struct.z_spinlock_key, ptr %11, i32 0, i32 0, !dbg !573
  %25 = load [1 x i32], ptr %24, align 4, !dbg !573
  store [1 x i32] %25, ptr %6, align 4
  store ptr @lock, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !574, metadata !DIExpression()), !dbg !580
  call void @llvm.dbg.declare(metadata ptr %6, metadata !579, metadata !DIExpression()), !dbg !582
  %26 = load ptr, ptr %7, align 4, !dbg !583
  %27 = load i32, ptr %6, align 4, !dbg !584
  store i32 %27, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !585, metadata !DIExpression()), !dbg !590
  %28 = load i32, ptr %2, align 4, !dbg !592
  %29 = icmp ne i32 %28, 0, !dbg !594
  br i1 %29, label %30, label %31, !dbg !595

30:                                               ; preds = %1
  br label %arch_irq_unlock.exit, !dbg !596

31:                                               ; preds = %1
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #8, !dbg !598, !srcloc !599
  br label %arch_irq_unlock.exit, !dbg !600

arch_irq_unlock.exit:                             ; preds = %30, %31
  %32 = load i32, ptr %12, align 4, !dbg !601
  call void @llvm.lifetime.end.p0(i64 4, ptr %12) #8, !dbg !602
  call void @llvm.lifetime.end.p0(i64 4, ptr %11) #8, !dbg !602
  ret i32 %32, !dbg !603
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: inlinehint nounwind optsize
define internal i32 @work_busy_get_locked(ptr noundef %0) #0 !dbg !604 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !606, metadata !DIExpression()), !dbg !607
  %3 = load ptr, ptr %2, align 4, !dbg !608
  %4 = getelementptr inbounds %struct.k_work, ptr %3, i32 0, i32 3, !dbg !609
  %5 = call i32 @flags_get(ptr noundef %4) #7, !dbg !610
  %6 = and i32 %5, 15, !dbg !611
  ret i32 %6, !dbg !612
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nounwind optsize
define hidden i32 @z_work_submit_to_queue(ptr noundef %0, ptr noundef %1) #1 !dbg !613 {
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
  store ptr %0, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !617, metadata !DIExpression()), !dbg !621
  store ptr %1, ptr %12, align 4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !618, metadata !DIExpression()), !dbg !622
  call void @llvm.lifetime.start.p0(i64 4, ptr %13) #8, !dbg !623
  call void @llvm.dbg.declare(metadata ptr %13, metadata !619, metadata !DIExpression()), !dbg !624
  store ptr @lock, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !526, metadata !DIExpression()), !dbg !625
  %15 = load ptr, ptr %10, align 4, !dbg !627
  call void @llvm.dbg.declare(metadata ptr %9, metadata !532, metadata !DIExpression()), !dbg !628
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #8, !dbg !629
  call void @llvm.dbg.declare(metadata ptr %6, metadata !543, metadata !DIExpression()), !dbg !631
  %16 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #8, !dbg !632, !srcloc !547
  store i32 %16, ptr %6, align 4, !dbg !632
  %17 = load i32, ptr %6, align 4, !dbg !633
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #8, !dbg !634
  store i32 %17, ptr %9, align 4, !dbg !635
  %18 = load ptr, ptr %10, align 4, !dbg !636
  store ptr %18, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !552, metadata !DIExpression()), !dbg !637
  %19 = load ptr, ptr %5, align 4, !dbg !639
  %20 = load ptr, ptr %10, align 4, !dbg !640
  store ptr %20, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !561, metadata !DIExpression()), !dbg !641
  %21 = load ptr, ptr %4, align 4, !dbg !643
  %22 = load i32, ptr %9, align 4, !dbg !644
  %23 = getelementptr inbounds %struct.z_spinlock_key, ptr %13, i32 0, i32 0, !dbg !645
  store i32 %22, ptr %23, align 4, !dbg !645
  call void @llvm.lifetime.start.p0(i64 4, ptr %14) #8, !dbg !646
  call void @llvm.dbg.declare(metadata ptr %14, metadata !620, metadata !DIExpression()), !dbg !647
  %24 = load ptr, ptr %12, align 4, !dbg !648
  %25 = call i32 @submit_to_queue_locked(ptr noundef %24, ptr noundef %11) #7, !dbg !649
  store i32 %25, ptr %14, align 4, !dbg !647
  %26 = getelementptr inbounds %struct.z_spinlock_key, ptr %13, i32 0, i32 0, !dbg !650
  %27 = load [1 x i32], ptr %26, align 4, !dbg !650
  store [1 x i32] %27, ptr %7, align 4
  store ptr @lock, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !574, metadata !DIExpression()), !dbg !651
  call void @llvm.dbg.declare(metadata ptr %7, metadata !579, metadata !DIExpression()), !dbg !653
  %28 = load ptr, ptr %8, align 4, !dbg !654
  %29 = load i32, ptr %7, align 4, !dbg !655
  store i32 %29, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !585, metadata !DIExpression()), !dbg !656
  %30 = load i32, ptr %3, align 4, !dbg !658
  %31 = icmp ne i32 %30, 0, !dbg !659
  br i1 %31, label %32, label %33, !dbg !660

32:                                               ; preds = %2
  br label %arch_irq_unlock.exit, !dbg !661

33:                                               ; preds = %2
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #8, !dbg !662, !srcloc !599
  br label %arch_irq_unlock.exit, !dbg !663

arch_irq_unlock.exit:                             ; preds = %32, %33
  %34 = load i32, ptr %14, align 4, !dbg !664
  call void @llvm.lifetime.end.p0(i64 4, ptr %14) #8, !dbg !665
  call void @llvm.lifetime.end.p0(i64 4, ptr %13) #8, !dbg !665
  ret i32 %34, !dbg !666
}

; Function Attrs: nounwind optsize
define internal i32 @submit_to_queue_locked(ptr noundef %0, ptr noundef %1) #1 !dbg !667 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !672, metadata !DIExpression()), !dbg !679
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !673, metadata !DIExpression()), !dbg !680
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #8, !dbg !681
  call void @llvm.dbg.declare(metadata ptr %5, metadata !674, metadata !DIExpression()), !dbg !682
  store i32 0, ptr %5, align 4, !dbg !682
  %7 = load ptr, ptr %3, align 4, !dbg !683
  %8 = getelementptr inbounds %struct.k_work, ptr %7, i32 0, i32 3, !dbg !684
  %9 = call zeroext i1 @flag_test(ptr noundef %8, i32 noundef 1) #7, !dbg !685
  br i1 %9, label %10, label %11, !dbg !686

10:                                               ; preds = %2
  store i32 -16, ptr %5, align 4, !dbg !687
  br label %52, !dbg !689

11:                                               ; preds = %2
  %12 = load ptr, ptr %3, align 4, !dbg !690
  %13 = getelementptr inbounds %struct.k_work, ptr %12, i32 0, i32 3, !dbg !691
  %14 = call zeroext i1 @flag_test(ptr noundef %13, i32 noundef 2) #7, !dbg !692
  br i1 %14, label %50, label %15, !dbg !693

15:                                               ; preds = %11
  store i32 1, ptr %5, align 4, !dbg !694
  %16 = load ptr, ptr %4, align 4, !dbg !695
  %17 = load ptr, ptr %16, align 4, !dbg !697
  %18 = icmp eq ptr %17, null, !dbg !698
  br i1 %18, label %19, label %24, !dbg !699

19:                                               ; preds = %15
  %20 = load ptr, ptr %3, align 4, !dbg !700
  %21 = getelementptr inbounds %struct.k_work, ptr %20, i32 0, i32 2, !dbg !702
  %22 = load ptr, ptr %21, align 4, !dbg !702
  %23 = load ptr, ptr %4, align 4, !dbg !703
  store ptr %22, ptr %23, align 4, !dbg !704
  br label %24, !dbg !705

24:                                               ; preds = %19, %15
  %25 = load ptr, ptr %3, align 4, !dbg !706
  %26 = getelementptr inbounds %struct.k_work, ptr %25, i32 0, i32 3, !dbg !708
  %27 = call zeroext i1 @flag_test(ptr noundef %26, i32 noundef 0) #7, !dbg !709
  br i1 %27, label %28, label %33, !dbg !710

28:                                               ; preds = %24
  %29 = load ptr, ptr %3, align 4, !dbg !711
  %30 = getelementptr inbounds %struct.k_work, ptr %29, i32 0, i32 2, !dbg !713
  %31 = load ptr, ptr %30, align 4, !dbg !713
  %32 = load ptr, ptr %4, align 4, !dbg !714
  store ptr %31, ptr %32, align 4, !dbg !715
  store i32 2, ptr %5, align 4, !dbg !716
  br label %33, !dbg !717

33:                                               ; preds = %28, %24
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #8, !dbg !718
  call void @llvm.dbg.declare(metadata ptr %6, metadata !675, metadata !DIExpression()), !dbg !719
  %34 = load ptr, ptr %4, align 4, !dbg !720
  %35 = load ptr, ptr %34, align 4, !dbg !721
  %36 = load ptr, ptr %3, align 4, !dbg !722
  %37 = call i32 @queue_submit_locked(ptr noundef %35, ptr noundef %36) #7, !dbg !723
  store i32 %37, ptr %6, align 4, !dbg !719
  %38 = load i32, ptr %6, align 4, !dbg !724
  %39 = icmp slt i32 %38, 0, !dbg !726
  br i1 %39, label %40, label %42, !dbg !727

40:                                               ; preds = %33
  %41 = load i32, ptr %6, align 4, !dbg !728
  store i32 %41, ptr %5, align 4, !dbg !730
  br label %49, !dbg !731

42:                                               ; preds = %33
  %43 = load ptr, ptr %3, align 4, !dbg !732
  %44 = getelementptr inbounds %struct.k_work, ptr %43, i32 0, i32 3, !dbg !734
  call void @flag_set(ptr noundef %44, i32 noundef 2) #7, !dbg !735
  %45 = load ptr, ptr %4, align 4, !dbg !736
  %46 = load ptr, ptr %45, align 4, !dbg !737
  %47 = load ptr, ptr %3, align 4, !dbg !738
  %48 = getelementptr inbounds %struct.k_work, ptr %47, i32 0, i32 2, !dbg !739
  store ptr %46, ptr %48, align 4, !dbg !740
  br label %49

49:                                               ; preds = %42, %40
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #8, !dbg !741
  br label %51, !dbg !742

50:                                               ; preds = %11
  br label %51

51:                                               ; preds = %50, %49
  br label %52

52:                                               ; preds = %51, %10
  %53 = load i32, ptr %5, align 4, !dbg !743
  %54 = icmp sle i32 %53, 0, !dbg !745
  br i1 %54, label %55, label %57, !dbg !746

55:                                               ; preds = %52
  %56 = load ptr, ptr %4, align 4, !dbg !747
  store ptr null, ptr %56, align 4, !dbg !749
  br label %57, !dbg !750

57:                                               ; preds = %55, %52
  %58 = load i32, ptr %5, align 4, !dbg !751
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #8, !dbg !752
  ret i32 %58, !dbg !753
}

; Function Attrs: nounwind optsize
define hidden i32 @k_work_submit_to_queue(ptr noundef %0, ptr noundef %1) #1 !dbg !754 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !756, metadata !DIExpression()), !dbg !759
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !757, metadata !DIExpression()), !dbg !760
  br label %6, !dbg !761

6:                                                ; preds = %2
  br label %7, !dbg !762

7:                                                ; preds = %6
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #8, !dbg !764
  call void @llvm.dbg.declare(metadata ptr %5, metadata !758, metadata !DIExpression()), !dbg !765
  %8 = load ptr, ptr %3, align 4, !dbg !766
  %9 = load ptr, ptr %4, align 4, !dbg !767
  %10 = call i32 @z_work_submit_to_queue(ptr noundef %8, ptr noundef %9) #7, !dbg !768
  store i32 %10, ptr %5, align 4, !dbg !765
  %11 = load i32, ptr %5, align 4, !dbg !769
  %12 = icmp sgt i32 %11, 0, !dbg !771
  br i1 %12, label %13, label %14, !dbg !772

13:                                               ; preds = %7
  call void @z_reschedule_unlocked() #7, !dbg !773
  br label %14, !dbg !775

14:                                               ; preds = %13, %7
  br label %15, !dbg !776

15:                                               ; preds = %14
  br label %16, !dbg !777

16:                                               ; preds = %15
  br label %17, !dbg !777

17:                                               ; preds = %16
  %18 = load i32, ptr %5, align 4, !dbg !779
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #8, !dbg !780
  ret i32 %18, !dbg !781
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_reschedule_unlocked() #0 !dbg !782 {
  %1 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %1) #8, !dbg !786
  call void @llvm.dbg.declare(metadata ptr %1, metadata !543, metadata !DIExpression()), !dbg !788
  %2 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #8, !dbg !789, !srcloc !547
  store i32 %2, ptr %1, align 4, !dbg !789
  %3 = load i32, ptr %1, align 4, !dbg !790
  call void @llvm.lifetime.end.p0(i64 4, ptr %1) #8, !dbg !791
  call void @z_reschedule_irqlock(i32 noundef %3) #7, !dbg !792
  ret void, !dbg !793
}

; Function Attrs: nounwind optsize
define hidden i32 @k_work_submit(ptr noundef %0) #1 !dbg !794 {
  %2 = alloca ptr, align 4
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !798, metadata !DIExpression()), !dbg !800
  br label %4, !dbg !801

4:                                                ; preds = %1
  br label %5, !dbg !802

5:                                                ; preds = %4
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #8, !dbg !804
  call void @llvm.dbg.declare(metadata ptr %3, metadata !799, metadata !DIExpression()), !dbg !805
  %6 = load ptr, ptr %2, align 4, !dbg !806
  %7 = call i32 @k_work_submit_to_queue(ptr noundef @k_sys_work_q, ptr noundef %6) #7, !dbg !807
  store i32 %7, ptr %3, align 4, !dbg !805
  br label %8, !dbg !808

8:                                                ; preds = %5
  br label %9, !dbg !809

9:                                                ; preds = %8
  br label %10, !dbg !809

10:                                               ; preds = %9
  %11 = load i32, ptr %3, align 4, !dbg !811
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #8, !dbg !812
  ret i32 %11, !dbg !813
}

; Function Attrs: nounwind optsize
define hidden zeroext i1 @k_work_flush(ptr noundef %0, ptr noundef %1) #1 !dbg !814 {
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
  %13 = alloca ptr, align 4
  %14 = alloca %struct.z_spinlock_key, align 4
  %15 = alloca i8, align 1
  %16 = alloca %struct.k_timeout_t, align 8
  store ptr %0, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !827, metadata !DIExpression()), !dbg !832
  store ptr %1, ptr %12, align 4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !828, metadata !DIExpression()), !dbg !833
  br label %17, !dbg !834

17:                                               ; preds = %2
  br label %18, !dbg !835

18:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 4, ptr %13) #8, !dbg !837
  call void @llvm.dbg.declare(metadata ptr %13, metadata !829, metadata !DIExpression()), !dbg !838
  %19 = load ptr, ptr %12, align 4, !dbg !839
  %20 = getelementptr inbounds %struct.k_work_sync, ptr %19, i32 0, i32 0, !dbg !840
  store ptr %20, ptr %13, align 4, !dbg !838
  call void @llvm.lifetime.start.p0(i64 4, ptr %14) #8, !dbg !841
  call void @llvm.dbg.declare(metadata ptr %14, metadata !830, metadata !DIExpression()), !dbg !842
  store ptr @lock, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !526, metadata !DIExpression()), !dbg !843
  %21 = load ptr, ptr %10, align 4, !dbg !845
  call void @llvm.dbg.declare(metadata ptr %9, metadata !532, metadata !DIExpression()), !dbg !846
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #8, !dbg !847
  call void @llvm.dbg.declare(metadata ptr %6, metadata !543, metadata !DIExpression()), !dbg !849
  %22 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #8, !dbg !850, !srcloc !547
  store i32 %22, ptr %6, align 4, !dbg !850
  %23 = load i32, ptr %6, align 4, !dbg !851
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #8, !dbg !852
  store i32 %23, ptr %9, align 4, !dbg !853
  %24 = load ptr, ptr %10, align 4, !dbg !854
  store ptr %24, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !552, metadata !DIExpression()), !dbg !855
  %25 = load ptr, ptr %5, align 4, !dbg !857
  %26 = load ptr, ptr %10, align 4, !dbg !858
  store ptr %26, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !561, metadata !DIExpression()), !dbg !859
  %27 = load ptr, ptr %4, align 4, !dbg !861
  %28 = load i32, ptr %9, align 4, !dbg !862
  %29 = getelementptr inbounds %struct.z_spinlock_key, ptr %14, i32 0, i32 0, !dbg !863
  store i32 %28, ptr %29, align 4, !dbg !863
  call void @llvm.lifetime.start.p0(i64 1, ptr %15) #8, !dbg !864
  call void @llvm.dbg.declare(metadata ptr %15, metadata !831, metadata !DIExpression()), !dbg !865
  %30 = load ptr, ptr %11, align 4, !dbg !866
  %31 = load ptr, ptr %13, align 4, !dbg !867
  %32 = call zeroext i1 @work_flush_locked(ptr noundef %30, ptr noundef %31) #7, !dbg !868
  %33 = zext i1 %32 to i8, !dbg !865
  store i8 %33, ptr %15, align 1, !dbg !865
  %34 = getelementptr inbounds %struct.z_spinlock_key, ptr %14, i32 0, i32 0, !dbg !869
  %35 = load [1 x i32], ptr %34, align 4, !dbg !869
  store [1 x i32] %35, ptr %7, align 4
  store ptr @lock, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !574, metadata !DIExpression()), !dbg !870
  call void @llvm.dbg.declare(metadata ptr %7, metadata !579, metadata !DIExpression()), !dbg !872
  %36 = load ptr, ptr %8, align 4, !dbg !873
  %37 = load i32, ptr %7, align 4, !dbg !874
  store i32 %37, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !585, metadata !DIExpression()), !dbg !875
  %38 = load i32, ptr %3, align 4, !dbg !877
  %39 = icmp ne i32 %38, 0, !dbg !878
  br i1 %39, label %40, label %41, !dbg !879

40:                                               ; preds = %18
  br label %arch_irq_unlock.exit, !dbg !880

41:                                               ; preds = %18
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #8, !dbg !881, !srcloc !599
  br label %arch_irq_unlock.exit, !dbg !882

arch_irq_unlock.exit:                             ; preds = %40, %41
  %42 = load i8, ptr %15, align 1, !dbg !883, !range !885, !noundef !248
  %43 = trunc i8 %42 to i1, !dbg !883
  br i1 %43, label %44, label %54, !dbg !886

44:                                               ; preds = %arch_irq_unlock.exit
  br label %45, !dbg !887

45:                                               ; preds = %44
  br label %46, !dbg !889

46:                                               ; preds = %45
  br label %47, !dbg !889

47:                                               ; preds = %46
  %48 = load ptr, ptr %13, align 4, !dbg !891
  %49 = getelementptr inbounds %struct.z_work_flusher, ptr %48, i32 0, i32 1, !dbg !892
  %50 = getelementptr inbounds %struct.k_timeout_t, ptr %16, i32 0, i32 0, !dbg !893
  store i64 -1, ptr %50, align 8, !dbg !893
  %51 = getelementptr inbounds %struct.k_timeout_t, ptr %16, i32 0, i32 0, !dbg !894
  %52 = load [1 x i64], ptr %51, align 8, !dbg !894
  %53 = call i32 @k_sem_take(ptr noundef %49, [1 x i64] %52) #7, !dbg !894
  br label %54, !dbg !895

54:                                               ; preds = %47, %arch_irq_unlock.exit
  br label %55, !dbg !896

55:                                               ; preds = %54
  br label %56, !dbg !897

56:                                               ; preds = %55
  br label %57, !dbg !897

57:                                               ; preds = %56
  %58 = load i8, ptr %15, align 1, !dbg !899, !range !885, !noundef !248
  %59 = trunc i8 %58 to i1, !dbg !899
  call void @llvm.lifetime.end.p0(i64 1, ptr %15) #8, !dbg !900
  call void @llvm.lifetime.end.p0(i64 4, ptr %14) #8, !dbg !900
  call void @llvm.lifetime.end.p0(i64 4, ptr %13) #8, !dbg !900
  ret i1 %59, !dbg !901
}

; Function Attrs: nounwind optsize
define internal zeroext i1 @work_flush_locked(ptr noundef %0, ptr noundef %1) #1 !dbg !902 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i8, align 1
  %6 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !906, metadata !DIExpression()), !dbg !912
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !907, metadata !DIExpression()), !dbg !913
  call void @llvm.lifetime.start.p0(i64 1, ptr %5) #8, !dbg !914
  call void @llvm.dbg.declare(metadata ptr %5, metadata !908, metadata !DIExpression()), !dbg !915
  %7 = load ptr, ptr %3, align 4, !dbg !916
  %8 = getelementptr inbounds %struct.k_work, ptr %7, i32 0, i32 3, !dbg !917
  %9 = call i32 @flags_get(ptr noundef %8) #7, !dbg !918
  %10 = and i32 %9, 5, !dbg !919
  %11 = icmp ne i32 %10, 0, !dbg !920
  %12 = zext i1 %11 to i8, !dbg !915
  store i8 %12, ptr %5, align 1, !dbg !915
  %13 = load i8, ptr %5, align 1, !dbg !921, !range !885, !noundef !248
  %14 = trunc i8 %13 to i1, !dbg !921
  br i1 %14, label %15, label %24, !dbg !922

15:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #8, !dbg !923
  call void @llvm.dbg.declare(metadata ptr %6, metadata !909, metadata !DIExpression()), !dbg !924
  %16 = load ptr, ptr %3, align 4, !dbg !925
  %17 = getelementptr inbounds %struct.k_work, ptr %16, i32 0, i32 2, !dbg !926
  %18 = load ptr, ptr %17, align 4, !dbg !926
  store ptr %18, ptr %6, align 4, !dbg !924
  %19 = load ptr, ptr %6, align 4, !dbg !927
  %20 = load ptr, ptr %3, align 4, !dbg !928
  %21 = load ptr, ptr %4, align 4, !dbg !929
  call void @queue_flusher_locked(ptr noundef %19, ptr noundef %20, ptr noundef %21) #7, !dbg !930
  %22 = load ptr, ptr %6, align 4, !dbg !931
  %23 = call zeroext i1 @notify_queue_locked(ptr noundef %22) #7, !dbg !932
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #8, !dbg !933
  br label %24, !dbg !934

24:                                               ; preds = %15, %2
  %25 = load i8, ptr %5, align 1, !dbg !935, !range !885, !noundef !248
  %26 = trunc i8 %25 to i1, !dbg !935
  call void @llvm.lifetime.end.p0(i64 1, ptr %5) #8, !dbg !936
  ret i1 %26, !dbg !937
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @k_sem_take(ptr noundef %0, [1 x i64] %1) #0 !dbg !938 {
  %3 = alloca %struct.k_timeout_t, align 8
  %4 = alloca ptr, align 4
  %5 = getelementptr inbounds %struct.k_timeout_t, ptr %3, i32 0, i32 0
  store [1 x i64] %1, ptr %5, align 8
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !943, metadata !DIExpression()), !dbg !945
  call void @llvm.dbg.declare(metadata ptr %3, metadata !944, metadata !DIExpression()), !dbg !946
  br label %6, !dbg !947

6:                                                ; preds = %2
  call void asm sideeffect "", "~{memory}"() #8, !dbg !948, !srcloc !950
  br label %7, !dbg !951

7:                                                ; preds = %6
  %8 = load ptr, ptr %4, align 4, !dbg !952
  %9 = getelementptr inbounds %struct.k_timeout_t, ptr %3, i32 0, i32 0, !dbg !953
  %10 = load [1 x i64], ptr %9, align 8, !dbg !953
  %11 = call i32 @z_impl_k_sem_take(ptr noundef %8, [1 x i64] %10) #7, !dbg !953
  ret i32 %11, !dbg !954
}

; Function Attrs: nounwind optsize
define hidden i32 @k_work_cancel(ptr noundef %0) #1 !dbg !955 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.z_spinlock_key, align 4
  %7 = alloca ptr, align 4
  %8 = alloca %struct.z_spinlock_key, align 4
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  %11 = alloca %struct.z_spinlock_key, align 4
  %12 = alloca i32, align 4
  store ptr %0, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !957, metadata !DIExpression()), !dbg !960
  br label %13, !dbg !961

13:                                               ; preds = %1
  br label %14, !dbg !962

14:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 4, ptr %11) #8, !dbg !964
  call void @llvm.dbg.declare(metadata ptr %11, metadata !958, metadata !DIExpression()), !dbg !965
  store ptr @lock, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !526, metadata !DIExpression()), !dbg !966
  %15 = load ptr, ptr %9, align 4, !dbg !968
  call void @llvm.dbg.declare(metadata ptr %8, metadata !532, metadata !DIExpression()), !dbg !969
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #8, !dbg !970
  call void @llvm.dbg.declare(metadata ptr %5, metadata !543, metadata !DIExpression()), !dbg !972
  %16 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #8, !dbg !973, !srcloc !547
  store i32 %16, ptr %5, align 4, !dbg !973
  %17 = load i32, ptr %5, align 4, !dbg !974
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #8, !dbg !975
  store i32 %17, ptr %8, align 4, !dbg !976
  %18 = load ptr, ptr %9, align 4, !dbg !977
  store ptr %18, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !552, metadata !DIExpression()), !dbg !978
  %19 = load ptr, ptr %4, align 4, !dbg !980
  %20 = load ptr, ptr %9, align 4, !dbg !981
  store ptr %20, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !561, metadata !DIExpression()), !dbg !982
  %21 = load ptr, ptr %3, align 4, !dbg !984
  %22 = load i32, ptr %8, align 4, !dbg !985
  %23 = getelementptr inbounds %struct.z_spinlock_key, ptr %11, i32 0, i32 0, !dbg !986
  store i32 %22, ptr %23, align 4, !dbg !986
  call void @llvm.lifetime.start.p0(i64 4, ptr %12) #8, !dbg !987
  call void @llvm.dbg.declare(metadata ptr %12, metadata !959, metadata !DIExpression()), !dbg !988
  %24 = load ptr, ptr %10, align 4, !dbg !989
  %25 = call i32 @cancel_async_locked(ptr noundef %24) #7, !dbg !990
  store i32 %25, ptr %12, align 4, !dbg !988
  %26 = getelementptr inbounds %struct.z_spinlock_key, ptr %11, i32 0, i32 0, !dbg !991
  %27 = load [1 x i32], ptr %26, align 4, !dbg !991
  store [1 x i32] %27, ptr %6, align 4
  store ptr @lock, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !574, metadata !DIExpression()), !dbg !992
  call void @llvm.dbg.declare(metadata ptr %6, metadata !579, metadata !DIExpression()), !dbg !994
  %28 = load ptr, ptr %7, align 4, !dbg !995
  %29 = load i32, ptr %6, align 4, !dbg !996
  store i32 %29, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !585, metadata !DIExpression()), !dbg !997
  %30 = load i32, ptr %2, align 4, !dbg !999
  %31 = icmp ne i32 %30, 0, !dbg !1000
  br i1 %31, label %32, label %33, !dbg !1001

32:                                               ; preds = %14
  br label %arch_irq_unlock.exit, !dbg !1002

33:                                               ; preds = %14
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #8, !dbg !1003, !srcloc !599
  br label %arch_irq_unlock.exit, !dbg !1004

arch_irq_unlock.exit:                             ; preds = %32, %33
  br label %34, !dbg !1005

34:                                               ; preds = %arch_irq_unlock.exit
  br label %35, !dbg !1006

35:                                               ; preds = %34
  br label %36, !dbg !1006

36:                                               ; preds = %35
  %37 = load i32, ptr %12, align 4, !dbg !1008
  call void @llvm.lifetime.end.p0(i64 4, ptr %12) #8, !dbg !1009
  call void @llvm.lifetime.end.p0(i64 4, ptr %11) #8, !dbg !1009
  ret i32 %37, !dbg !1010
}

; Function Attrs: nounwind optsize
define internal i32 @cancel_async_locked(ptr noundef %0) #1 !dbg !1011 {
  %2 = alloca ptr, align 4
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1013, metadata !DIExpression()), !dbg !1015
  %4 = load ptr, ptr %2, align 4, !dbg !1016
  %5 = getelementptr inbounds %struct.k_work, ptr %4, i32 0, i32 3, !dbg !1018
  %6 = call zeroext i1 @flag_test(ptr noundef %5, i32 noundef 1) #7, !dbg !1019
  br i1 %6, label %12, label %7, !dbg !1020

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 4, !dbg !1021
  %9 = getelementptr inbounds %struct.k_work, ptr %8, i32 0, i32 2, !dbg !1023
  %10 = load ptr, ptr %9, align 4, !dbg !1023
  %11 = load ptr, ptr %2, align 4, !dbg !1024
  call void @queue_remove_locked(ptr noundef %10, ptr noundef %11) #7, !dbg !1025
  br label %12, !dbg !1026

12:                                               ; preds = %7, %1
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #8, !dbg !1027
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1014, metadata !DIExpression()), !dbg !1028
  %13 = load ptr, ptr %2, align 4, !dbg !1029
  %14 = call i32 @work_busy_get_locked(ptr noundef %13) #7, !dbg !1030
  store i32 %14, ptr %3, align 4, !dbg !1028
  %15 = load i32, ptr %3, align 4, !dbg !1031
  %16 = icmp ne i32 %15, 0, !dbg !1033
  br i1 %16, label %17, label %22, !dbg !1034

17:                                               ; preds = %12
  %18 = load ptr, ptr %2, align 4, !dbg !1035
  %19 = getelementptr inbounds %struct.k_work, ptr %18, i32 0, i32 3, !dbg !1037
  call void @flag_set(ptr noundef %19, i32 noundef 1) #7, !dbg !1038
  %20 = load ptr, ptr %2, align 4, !dbg !1039
  %21 = call i32 @work_busy_get_locked(ptr noundef %20) #7, !dbg !1040
  store i32 %21, ptr %3, align 4, !dbg !1041
  br label %22, !dbg !1042

22:                                               ; preds = %17, %12
  %23 = load i32, ptr %3, align 4, !dbg !1043
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #8, !dbg !1044
  ret i32 %23, !dbg !1045
}

; Function Attrs: nounwind optsize
define hidden zeroext i1 @k_work_cancel_sync(ptr noundef %0, ptr noundef %1) #1 !dbg !1046 {
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
  %13 = alloca ptr, align 4
  %14 = alloca %struct.z_spinlock_key, align 4
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  %17 = alloca %struct.k_timeout_t, align 8
  store ptr %0, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1048, metadata !DIExpression()), !dbg !1054
  store ptr %1, ptr %12, align 4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1049, metadata !DIExpression()), !dbg !1055
  br label %18, !dbg !1056

18:                                               ; preds = %2
  br label %19, !dbg !1057

19:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 4, ptr %13) #8, !dbg !1059
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1050, metadata !DIExpression()), !dbg !1060
  %20 = load ptr, ptr %12, align 4, !dbg !1061
  %21 = getelementptr inbounds %struct.k_work_sync, ptr %20, i32 0, i32 0, !dbg !1062
  store ptr %21, ptr %13, align 4, !dbg !1060
  call void @llvm.lifetime.start.p0(i64 4, ptr %14) #8, !dbg !1063
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1051, metadata !DIExpression()), !dbg !1064
  store ptr @lock, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !526, metadata !DIExpression()), !dbg !1065
  %22 = load ptr, ptr %10, align 4, !dbg !1067
  call void @llvm.dbg.declare(metadata ptr %9, metadata !532, metadata !DIExpression()), !dbg !1068
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #8, !dbg !1069
  call void @llvm.dbg.declare(metadata ptr %6, metadata !543, metadata !DIExpression()), !dbg !1071
  %23 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #8, !dbg !1072, !srcloc !547
  store i32 %23, ptr %6, align 4, !dbg !1072
  %24 = load i32, ptr %6, align 4, !dbg !1073
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #8, !dbg !1074
  store i32 %24, ptr %9, align 4, !dbg !1075
  %25 = load ptr, ptr %10, align 4, !dbg !1076
  store ptr %25, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !552, metadata !DIExpression()), !dbg !1077
  %26 = load ptr, ptr %5, align 4, !dbg !1079
  %27 = load ptr, ptr %10, align 4, !dbg !1080
  store ptr %27, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !561, metadata !DIExpression()), !dbg !1081
  %28 = load ptr, ptr %4, align 4, !dbg !1083
  %29 = load i32, ptr %9, align 4, !dbg !1084
  %30 = getelementptr inbounds %struct.z_spinlock_key, ptr %14, i32 0, i32 0, !dbg !1085
  store i32 %29, ptr %30, align 4, !dbg !1085
  call void @llvm.lifetime.start.p0(i64 1, ptr %15) #8, !dbg !1086
  call void @llvm.dbg.declare(metadata ptr %15, metadata !1052, metadata !DIExpression()), !dbg !1087
  %31 = load ptr, ptr %11, align 4, !dbg !1088
  %32 = call i32 @work_busy_get_locked(ptr noundef %31) #7, !dbg !1089
  %33 = icmp ne i32 %32, 0, !dbg !1090
  %34 = zext i1 %33 to i8, !dbg !1087
  store i8 %34, ptr %15, align 1, !dbg !1087
  call void @llvm.lifetime.start.p0(i64 1, ptr %16) #8, !dbg !1091
  call void @llvm.dbg.declare(metadata ptr %16, metadata !1053, metadata !DIExpression()), !dbg !1092
  store i8 0, ptr %16, align 1, !dbg !1092
  %35 = load i8, ptr %15, align 1, !dbg !1093, !range !885, !noundef !248
  %36 = trunc i8 %35 to i1, !dbg !1093
  br i1 %36, label %37, label %44, !dbg !1095

37:                                               ; preds = %19
  %38 = load ptr, ptr %11, align 4, !dbg !1096
  %39 = call i32 @cancel_async_locked(ptr noundef %38) #7, !dbg !1098
  %40 = load ptr, ptr %11, align 4, !dbg !1099
  %41 = load ptr, ptr %13, align 4, !dbg !1100
  %42 = call zeroext i1 @cancel_sync_locked(ptr noundef %40, ptr noundef %41) #7, !dbg !1101
  %43 = zext i1 %42 to i8, !dbg !1102
  store i8 %43, ptr %16, align 1, !dbg !1102
  br label %44, !dbg !1103

44:                                               ; preds = %37, %19
  %45 = getelementptr inbounds %struct.z_spinlock_key, ptr %14, i32 0, i32 0, !dbg !1104
  %46 = load [1 x i32], ptr %45, align 4, !dbg !1104
  store [1 x i32] %46, ptr %7, align 4
  store ptr @lock, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !574, metadata !DIExpression()), !dbg !1105
  call void @llvm.dbg.declare(metadata ptr %7, metadata !579, metadata !DIExpression()), !dbg !1107
  %47 = load ptr, ptr %8, align 4, !dbg !1108
  %48 = load i32, ptr %7, align 4, !dbg !1109
  store i32 %48, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !585, metadata !DIExpression()), !dbg !1110
  %49 = load i32, ptr %3, align 4, !dbg !1112
  %50 = icmp ne i32 %49, 0, !dbg !1113
  br i1 %50, label %51, label %52, !dbg !1114

51:                                               ; preds = %44
  br label %arch_irq_unlock.exit, !dbg !1115

52:                                               ; preds = %44
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #8, !dbg !1116, !srcloc !599
  br label %arch_irq_unlock.exit, !dbg !1117

arch_irq_unlock.exit:                             ; preds = %51, %52
  %53 = load i8, ptr %16, align 1, !dbg !1118, !range !885, !noundef !248
  %54 = trunc i8 %53 to i1, !dbg !1118
  br i1 %54, label %55, label %65, !dbg !1120

55:                                               ; preds = %arch_irq_unlock.exit
  br label %56, !dbg !1121

56:                                               ; preds = %55
  br label %57, !dbg !1123

57:                                               ; preds = %56
  br label %58, !dbg !1123

58:                                               ; preds = %57
  %59 = load ptr, ptr %13, align 4, !dbg !1125
  %60 = getelementptr inbounds %struct.z_work_canceller, ptr %59, i32 0, i32 2, !dbg !1126
  %61 = getelementptr inbounds %struct.k_timeout_t, ptr %17, i32 0, i32 0, !dbg !1127
  store i64 -1, ptr %61, align 8, !dbg !1127
  %62 = getelementptr inbounds %struct.k_timeout_t, ptr %17, i32 0, i32 0, !dbg !1128
  %63 = load [1 x i64], ptr %62, align 8, !dbg !1128
  %64 = call i32 @k_sem_take(ptr noundef %60, [1 x i64] %63) #7, !dbg !1128
  br label %65, !dbg !1129

65:                                               ; preds = %58, %arch_irq_unlock.exit
  br label %66, !dbg !1130

66:                                               ; preds = %65
  br label %67, !dbg !1131

67:                                               ; preds = %66
  br label %68, !dbg !1131

68:                                               ; preds = %67
  %69 = load i8, ptr %15, align 1, !dbg !1133, !range !885, !noundef !248
  %70 = trunc i8 %69 to i1, !dbg !1133
  call void @llvm.lifetime.end.p0(i64 1, ptr %16) #8, !dbg !1134
  call void @llvm.lifetime.end.p0(i64 1, ptr %15) #8, !dbg !1134
  call void @llvm.lifetime.end.p0(i64 4, ptr %14) #8, !dbg !1134
  call void @llvm.lifetime.end.p0(i64 4, ptr %13) #8, !dbg !1134
  ret i1 %70, !dbg !1135
}

; Function Attrs: nounwind optsize
define internal zeroext i1 @cancel_sync_locked(ptr noundef %0, ptr noundef %1) #1 !dbg !1136 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i8, align 1
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1140, metadata !DIExpression()), !dbg !1143
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1141, metadata !DIExpression()), !dbg !1144
  call void @llvm.lifetime.start.p0(i64 1, ptr %5) #8, !dbg !1145
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1142, metadata !DIExpression()), !dbg !1146
  %6 = load ptr, ptr %3, align 4, !dbg !1147
  %7 = getelementptr inbounds %struct.k_work, ptr %6, i32 0, i32 3, !dbg !1148
  %8 = call zeroext i1 @flag_test(ptr noundef %7, i32 noundef 1) #7, !dbg !1149
  %9 = zext i1 %8 to i8, !dbg !1146
  store i8 %9, ptr %5, align 1, !dbg !1146
  %10 = load i8, ptr %5, align 1, !dbg !1150, !range !885, !noundef !248
  %11 = trunc i8 %10 to i1, !dbg !1150
  br i1 %11, label %12, label %15, !dbg !1152

12:                                               ; preds = %2
  %13 = load ptr, ptr %4, align 4, !dbg !1153
  %14 = load ptr, ptr %3, align 4, !dbg !1155
  call void @init_work_cancel(ptr noundef %13, ptr noundef %14) #7, !dbg !1156
  br label %15, !dbg !1157

15:                                               ; preds = %12, %2
  %16 = load i8, ptr %5, align 1, !dbg !1158, !range !885, !noundef !248
  %17 = trunc i8 %16 to i1, !dbg !1158
  call void @llvm.lifetime.end.p0(i64 1, ptr %5) #8, !dbg !1159
  ret i1 %17, !dbg !1160
}

; Function Attrs: nounwind optsize
define hidden void @k_work_queue_init(ptr noundef %0) #1 !dbg !1161 {
  %2 = alloca ptr, align 4
  %3 = alloca %struct.k_work_q, align 8
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1165, metadata !DIExpression()), !dbg !1166
  %4 = load ptr, ptr %2, align 4, !dbg !1167
  call void @llvm.memset.p0.i64(ptr align 8 %3, i8 0, i64 144, i1 false), !dbg !1168
  call void @llvm.memcpy.p0.p0.i32(ptr align 8 %4, ptr align 8 %3, i32 144, i1 false), !dbg !1168
  br label %5, !dbg !1169

5:                                                ; preds = %1
  br label %6, !dbg !1170

6:                                                ; preds = %5
  ret void, !dbg !1172
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nounwind optsize
define hidden void @k_work_queue_start(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) #1 !dbg !1173 {
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.k_timeout_t, align 8
  store ptr %0, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1194, metadata !DIExpression()), !dbg !1200
  store ptr %1, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1195, metadata !DIExpression()), !dbg !1201
  store i32 %2, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1196, metadata !DIExpression()), !dbg !1202
  store i32 %3, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1197, metadata !DIExpression()), !dbg !1203
  store ptr %4, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1198, metadata !DIExpression()), !dbg !1204
  call void @llvm.lifetime.start.p0(i64 4, ptr %11) #8, !dbg !1205
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1199, metadata !DIExpression()), !dbg !1206
  store i32 1, ptr %11, align 4, !dbg !1206
  br label %13, !dbg !1207

13:                                               ; preds = %5
  br label %14, !dbg !1208

14:                                               ; preds = %13
  br label %15, !dbg !1208

15:                                               ; preds = %14
  %16 = load ptr, ptr %6, align 4, !dbg !1210
  %17 = getelementptr inbounds %struct.k_work_q, ptr %16, i32 0, i32 1, !dbg !1211
  call void @sys_slist_init(ptr noundef %17) #7, !dbg !1212
  %18 = load ptr, ptr %6, align 4, !dbg !1213
  %19 = getelementptr inbounds %struct.k_work_q, ptr %18, i32 0, i32 2, !dbg !1214
  call void @z_waitq_init(ptr noundef %19) #7, !dbg !1215
  %20 = load ptr, ptr %6, align 4, !dbg !1216
  %21 = getelementptr inbounds %struct.k_work_q, ptr %20, i32 0, i32 3, !dbg !1217
  call void @z_waitq_init(ptr noundef %21) #7, !dbg !1218
  %22 = load ptr, ptr %10, align 4, !dbg !1219
  %23 = icmp ne ptr %22, null, !dbg !1221
  br i1 %23, label %24, label %32, !dbg !1222

24:                                               ; preds = %15
  %25 = load ptr, ptr %10, align 4, !dbg !1223
  %26 = getelementptr inbounds %struct.k_work_queue_config, ptr %25, i32 0, i32 1, !dbg !1224
  %27 = load i8, ptr %26, align 4, !dbg !1224, !range !885, !noundef !248
  %28 = trunc i8 %27 to i1, !dbg !1224
  br i1 %28, label %29, label %32, !dbg !1225

29:                                               ; preds = %24
  %30 = load i32, ptr %11, align 4, !dbg !1226
  %31 = or i32 %30, 256, !dbg !1226
  store i32 %31, ptr %11, align 4, !dbg !1226
  br label %32, !dbg !1228

32:                                               ; preds = %29, %24, %15
  %33 = load ptr, ptr %6, align 4, !dbg !1229
  %34 = getelementptr inbounds %struct.k_work_q, ptr %33, i32 0, i32 4, !dbg !1230
  %35 = load i32, ptr %11, align 4, !dbg !1231
  call void @flags_set(ptr noundef %34, i32 noundef %35) #7, !dbg !1232
  %36 = load ptr, ptr %6, align 4, !dbg !1233
  %37 = getelementptr inbounds %struct.k_work_q, ptr %36, i32 0, i32 0, !dbg !1234
  %38 = load ptr, ptr %7, align 4, !dbg !1235
  %39 = load i32, ptr %8, align 4, !dbg !1236
  %40 = load ptr, ptr %6, align 4, !dbg !1237
  %41 = load i32, ptr %9, align 4, !dbg !1238
  %42 = getelementptr inbounds %struct.k_timeout_t, ptr %12, i32 0, i32 0, !dbg !1239
  store i64 -1, ptr %42, align 8, !dbg !1239
  %43 = getelementptr inbounds %struct.k_timeout_t, ptr %12, i32 0, i32 0, !dbg !1240
  %44 = load [1 x i64], ptr %43, align 8, !dbg !1240
  %45 = call ptr @k_thread_create(ptr noundef %37, ptr noundef %38, i32 noundef %39, ptr noundef @work_queue_main, ptr noundef %40, ptr noundef null, ptr noundef null, i32 noundef %41, i32 noundef 0, [1 x i64] %44) #7, !dbg !1240
  %46 = load ptr, ptr %10, align 4, !dbg !1241
  %47 = icmp ne ptr %46, null, !dbg !1243
  br i1 %47, label %48, label %60, !dbg !1244

48:                                               ; preds = %32
  %49 = load ptr, ptr %10, align 4, !dbg !1245
  %50 = getelementptr inbounds %struct.k_work_queue_config, ptr %49, i32 0, i32 0, !dbg !1246
  %51 = load ptr, ptr %50, align 4, !dbg !1246
  %52 = icmp ne ptr %51, null, !dbg !1247
  br i1 %52, label %53, label %60, !dbg !1248

53:                                               ; preds = %48
  %54 = load ptr, ptr %6, align 4, !dbg !1249
  %55 = getelementptr inbounds %struct.k_work_q, ptr %54, i32 0, i32 0, !dbg !1251
  %56 = load ptr, ptr %10, align 4, !dbg !1252
  %57 = getelementptr inbounds %struct.k_work_queue_config, ptr %56, i32 0, i32 0, !dbg !1253
  %58 = load ptr, ptr %57, align 4, !dbg !1253
  %59 = call i32 @k_thread_name_set(ptr noundef %55, ptr noundef %58) #7, !dbg !1254
  br label %60, !dbg !1255

60:                                               ; preds = %53, %48, %32
  %61 = load ptr, ptr %6, align 4, !dbg !1256
  %62 = getelementptr inbounds %struct.k_work_q, ptr %61, i32 0, i32 0, !dbg !1257
  call void @k_thread_start(ptr noundef %62) #7, !dbg !1258
  br label %63, !dbg !1259

63:                                               ; preds = %60
  br label %64, !dbg !1260

64:                                               ; preds = %63
  br label %65, !dbg !1260

65:                                               ; preds = %64
  call void @llvm.lifetime.end.p0(i64 4, ptr %11) #8, !dbg !1262
  ret void, !dbg !1262
}

; Function Attrs: inlinehint nounwind optsize
define internal void @sys_slist_init(ptr noundef %0) #0 !dbg !1263 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1268, metadata !DIExpression()), !dbg !1269
  %3 = load ptr, ptr %2, align 4, !dbg !1270
  %4 = getelementptr inbounds %struct._slist, ptr %3, i32 0, i32 0, !dbg !1271
  store ptr null, ptr %4, align 4, !dbg !1272
  %5 = load ptr, ptr %2, align 4, !dbg !1273
  %6 = getelementptr inbounds %struct._slist, ptr %5, i32 0, i32 1, !dbg !1274
  store ptr null, ptr %6, align 4, !dbg !1275
  ret void, !dbg !1276
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_waitq_init(ptr noundef %0) #0 !dbg !1277 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1282, metadata !DIExpression()), !dbg !1283
  %3 = load ptr, ptr %2, align 4, !dbg !1284
  %4 = getelementptr inbounds %struct._wait_q_t, ptr %3, i32 0, i32 0, !dbg !1285
  call void @sys_dlist_init(ptr noundef %4) #7, !dbg !1286
  ret void, !dbg !1287
}

; Function Attrs: inlinehint nounwind optsize
define internal void @flags_set(ptr noundef %0, i32 noundef %1) #0 !dbg !1288 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1293, metadata !DIExpression()), !dbg !1295
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1294, metadata !DIExpression()), !dbg !1296
  %5 = load i32, ptr %4, align 4, !dbg !1297
  %6 = load ptr, ptr %3, align 4, !dbg !1298
  store i32 %5, ptr %6, align 4, !dbg !1299
  ret void, !dbg !1300
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @k_thread_create(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef %8, [1 x i64] %9) #0 !dbg !1301 {
  %11 = alloca %struct.k_timeout_t, align 8
  %12 = alloca ptr, align 4
  %13 = alloca ptr, align 4
  %14 = alloca i32, align 4
  %15 = alloca ptr, align 4
  %16 = alloca ptr, align 4
  %17 = alloca ptr, align 4
  %18 = alloca ptr, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = getelementptr inbounds %struct.k_timeout_t, ptr %11, i32 0, i32 0
  store [1 x i64] %9, ptr %21, align 8
  store ptr %0, ptr %12, align 4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1310, metadata !DIExpression()), !dbg !1320
  store ptr %1, ptr %13, align 4
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1311, metadata !DIExpression()), !dbg !1321
  store i32 %2, ptr %14, align 4
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1312, metadata !DIExpression()), !dbg !1322
  store ptr %3, ptr %15, align 4
  call void @llvm.dbg.declare(metadata ptr %15, metadata !1313, metadata !DIExpression()), !dbg !1323
  store ptr %4, ptr %16, align 4
  call void @llvm.dbg.declare(metadata ptr %16, metadata !1314, metadata !DIExpression()), !dbg !1324
  store ptr %5, ptr %17, align 4
  call void @llvm.dbg.declare(metadata ptr %17, metadata !1315, metadata !DIExpression()), !dbg !1325
  store ptr %6, ptr %18, align 4
  call void @llvm.dbg.declare(metadata ptr %18, metadata !1316, metadata !DIExpression()), !dbg !1326
  store i32 %7, ptr %19, align 4
  call void @llvm.dbg.declare(metadata ptr %19, metadata !1317, metadata !DIExpression()), !dbg !1327
  store i32 %8, ptr %20, align 4
  call void @llvm.dbg.declare(metadata ptr %20, metadata !1318, metadata !DIExpression()), !dbg !1328
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1319, metadata !DIExpression()), !dbg !1329
  br label %22, !dbg !1330

22:                                               ; preds = %10
  call void asm sideeffect "", "~{memory}"() #8, !dbg !1331, !srcloc !1333
  br label %23, !dbg !1334

23:                                               ; preds = %22
  %24 = load ptr, ptr %12, align 4, !dbg !1335
  %25 = load ptr, ptr %13, align 4, !dbg !1336
  %26 = load i32, ptr %14, align 4, !dbg !1337
  %27 = load ptr, ptr %15, align 4, !dbg !1338
  %28 = load ptr, ptr %16, align 4, !dbg !1339
  %29 = load ptr, ptr %17, align 4, !dbg !1340
  %30 = load ptr, ptr %18, align 4, !dbg !1341
  %31 = load i32, ptr %19, align 4, !dbg !1342
  %32 = load i32, ptr %20, align 4, !dbg !1343
  %33 = getelementptr inbounds %struct.k_timeout_t, ptr %11, i32 0, i32 0, !dbg !1344
  %34 = load [1 x i64], ptr %33, align 8, !dbg !1344
  %35 = call ptr @z_impl_k_thread_create(ptr noundef %24, ptr noundef %25, i32 noundef %26, ptr noundef %27, ptr noundef %28, ptr noundef %29, ptr noundef %30, i32 noundef %31, i32 noundef %32, [1 x i64] %34) #7, !dbg !1344
  ret ptr %35, !dbg !1345
}

; Function Attrs: nounwind optsize
define internal void @work_queue_main(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 !dbg !1346 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.z_spinlock_key, align 4
  %13 = alloca ptr, align 4
  %14 = alloca %struct.z_spinlock_key, align 4
  %15 = alloca ptr, align 4
  %16 = alloca %struct.z_spinlock_key, align 4
  %17 = alloca ptr, align 4
  %18 = alloca %struct.z_spinlock_key, align 4
  %19 = alloca ptr, align 4
  %20 = alloca ptr, align 4
  %21 = alloca ptr, align 4
  %22 = alloca ptr, align 4
  %23 = alloca ptr, align 4
  %24 = alloca ptr, align 4
  %25 = alloca ptr, align 4
  %26 = alloca ptr, align 4
  %27 = alloca %struct.z_spinlock_key, align 4
  %28 = alloca i8, align 1
  %29 = alloca ptr, align 4
  %30 = alloca %struct.k_timeout_t, align 8
  %31 = alloca i32, align 4
  %32 = alloca %struct.z_spinlock_key, align 4
  store ptr %0, ptr %20, align 4
  call void @llvm.dbg.declare(metadata ptr %20, metadata !1348, metadata !DIExpression()), !dbg !1358
  store ptr %1, ptr %21, align 4
  call void @llvm.dbg.declare(metadata ptr %21, metadata !1349, metadata !DIExpression()), !dbg !1359
  store ptr %2, ptr %22, align 4
  call void @llvm.dbg.declare(metadata ptr %22, metadata !1350, metadata !DIExpression()), !dbg !1360
  %33 = load ptr, ptr %21, align 4, !dbg !1361
  %34 = load ptr, ptr %22, align 4, !dbg !1362
  call void @llvm.lifetime.start.p0(i64 4, ptr %23) #8, !dbg !1363
  call void @llvm.dbg.declare(metadata ptr %23, metadata !1351, metadata !DIExpression()), !dbg !1364
  %35 = load ptr, ptr %20, align 4, !dbg !1365
  store ptr %35, ptr %23, align 4, !dbg !1364
  br label %36, !dbg !1366

36:                                               ; preds = %136, %134, %3
  br label %37, !dbg !1366

37:                                               ; preds = %36
  call void @llvm.lifetime.start.p0(i64 4, ptr %24) #8, !dbg !1367
  call void @llvm.dbg.declare(metadata ptr %24, metadata !1352, metadata !DIExpression()), !dbg !1368
  call void @llvm.lifetime.start.p0(i64 4, ptr %25) #8, !dbg !1369
  call void @llvm.dbg.declare(metadata ptr %25, metadata !1354, metadata !DIExpression()), !dbg !1370
  store ptr null, ptr %25, align 4, !dbg !1370
  call void @llvm.lifetime.start.p0(i64 4, ptr %26) #8, !dbg !1371
  call void @llvm.dbg.declare(metadata ptr %26, metadata !1355, metadata !DIExpression()), !dbg !1372
  store ptr null, ptr %26, align 4, !dbg !1372
  call void @llvm.lifetime.start.p0(i64 4, ptr %27) #8, !dbg !1373
  call void @llvm.dbg.declare(metadata ptr %27, metadata !1356, metadata !DIExpression()), !dbg !1374
  store ptr @lock, ptr %17, align 4
  call void @llvm.dbg.declare(metadata ptr %17, metadata !526, metadata !DIExpression()), !dbg !1375
  %38 = load ptr, ptr %17, align 4, !dbg !1377
  call void @llvm.dbg.declare(metadata ptr %16, metadata !532, metadata !DIExpression()), !dbg !1378
  call void @llvm.lifetime.start.p0(i64 4, ptr %11) #8, !dbg !1379
  call void @llvm.dbg.declare(metadata ptr %11, metadata !543, metadata !DIExpression()), !dbg !1381
  %39 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #8, !dbg !1382, !srcloc !547
  store i32 %39, ptr %11, align 4, !dbg !1382
  %40 = load i32, ptr %11, align 4, !dbg !1383
  call void @llvm.lifetime.end.p0(i64 4, ptr %11) #8, !dbg !1384
  store i32 %40, ptr %16, align 4, !dbg !1385
  %41 = load ptr, ptr %17, align 4, !dbg !1386
  store ptr %41, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !552, metadata !DIExpression()), !dbg !1387
  %42 = load ptr, ptr %9, align 4, !dbg !1389
  %43 = load ptr, ptr %17, align 4, !dbg !1390
  store ptr %43, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !561, metadata !DIExpression()), !dbg !1391
  %44 = load ptr, ptr %7, align 4, !dbg !1393
  %45 = load i32, ptr %16, align 4, !dbg !1394
  %46 = getelementptr inbounds %struct.z_spinlock_key, ptr %27, i32 0, i32 0, !dbg !1395
  store i32 %45, ptr %46, align 4, !dbg !1395
  call void @llvm.lifetime.start.p0(i64 1, ptr %28) #8, !dbg !1396
  call void @llvm.dbg.declare(metadata ptr %28, metadata !1357, metadata !DIExpression()), !dbg !1397
  %47 = load ptr, ptr %23, align 4, !dbg !1398
  %48 = getelementptr inbounds %struct.k_work_q, ptr %47, i32 0, i32 1, !dbg !1399
  %49 = call ptr @sys_slist_get(ptr noundef %48) #7, !dbg !1400
  store ptr %49, ptr %24, align 4, !dbg !1401
  %50 = load ptr, ptr %24, align 4, !dbg !1402
  %51 = icmp ne ptr %50, null, !dbg !1404
  br i1 %51, label %52, label %65, !dbg !1405

52:                                               ; preds = %37
  %53 = load ptr, ptr %23, align 4, !dbg !1406
  %54 = getelementptr inbounds %struct.k_work_q, ptr %53, i32 0, i32 4, !dbg !1408
  call void @flag_set(ptr noundef %54, i32 noundef 1) #7, !dbg !1409
  %55 = load ptr, ptr %24, align 4, !dbg !1410
  %56 = getelementptr inbounds i8, ptr %55, i32 0, !dbg !1412
  store ptr %56, ptr %29, align 4, !dbg !1413
  %57 = load ptr, ptr %29, align 4, !dbg !1414
  store ptr %57, ptr %25, align 4, !dbg !1415
  %58 = load ptr, ptr %25, align 4, !dbg !1416
  %59 = getelementptr inbounds %struct.k_work, ptr %58, i32 0, i32 3, !dbg !1417
  call void @flag_set(ptr noundef %59, i32 noundef 0) #7, !dbg !1418
  %60 = load ptr, ptr %25, align 4, !dbg !1419
  %61 = getelementptr inbounds %struct.k_work, ptr %60, i32 0, i32 3, !dbg !1420
  call void @flag_clear(ptr noundef %61, i32 noundef 2) #7, !dbg !1421
  %62 = load ptr, ptr %25, align 4, !dbg !1422
  %63 = getelementptr inbounds %struct.k_work, ptr %62, i32 0, i32 1, !dbg !1423
  %64 = load ptr, ptr %63, align 4, !dbg !1423
  store ptr %64, ptr %26, align 4, !dbg !1424
  br label %75, !dbg !1425

65:                                               ; preds = %37
  %66 = load ptr, ptr %23, align 4, !dbg !1426
  %67 = getelementptr inbounds %struct.k_work_q, ptr %66, i32 0, i32 4, !dbg !1428
  %68 = call zeroext i1 @flag_test_and_clear(ptr noundef %67, i32 noundef 2) #7, !dbg !1429
  br i1 %68, label %69, label %73, !dbg !1430

69:                                               ; preds = %65
  %70 = load ptr, ptr %23, align 4, !dbg !1431
  %71 = getelementptr inbounds %struct.k_work_q, ptr %70, i32 0, i32 3, !dbg !1433
  %72 = call zeroext i1 @z_sched_wake_all(ptr noundef %71, i32 noundef 1, ptr noundef null) #7, !dbg !1434
  br label %74, !dbg !1435

73:                                               ; preds = %65
  br label %74

74:                                               ; preds = %73, %69
  br label %75

75:                                               ; preds = %74, %52
  %76 = load ptr, ptr %25, align 4, !dbg !1436
  %77 = icmp eq ptr %76, null, !dbg !1438
  br i1 %77, label %78, label %87, !dbg !1439

78:                                               ; preds = %75
  %79 = load ptr, ptr %23, align 4, !dbg !1440
  %80 = getelementptr inbounds %struct.k_work_q, ptr %79, i32 0, i32 2, !dbg !1442
  %81 = getelementptr inbounds %struct.k_timeout_t, ptr %30, i32 0, i32 0, !dbg !1443
  store i64 -1, ptr %81, align 8, !dbg !1443
  %82 = getelementptr inbounds %struct.z_spinlock_key, ptr %27, i32 0, i32 0, !dbg !1444
  %83 = load [1 x i32], ptr %82, align 4, !dbg !1444
  %84 = getelementptr inbounds %struct.k_timeout_t, ptr %30, i32 0, i32 0, !dbg !1444
  %85 = load [1 x i64], ptr %84, align 8, !dbg !1444
  %86 = call i32 @z_sched_wait(ptr noundef @lock, [1 x i32] %83, ptr noundef %80, [1 x i64] %85, ptr noundef null) #7, !dbg !1444
  store i32 2, ptr %31, align 4
  br label %134, !dbg !1445, !llvm.loop !1446

87:                                               ; preds = %75
  %88 = getelementptr inbounds %struct.z_spinlock_key, ptr %27, i32 0, i32 0, !dbg !1448
  %89 = load [1 x i32], ptr %88, align 4, !dbg !1448
  store [1 x i32] %89, ptr %12, align 4
  store ptr @lock, ptr %13, align 4
  call void @llvm.dbg.declare(metadata ptr %13, metadata !574, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.declare(metadata ptr %12, metadata !579, metadata !DIExpression()), !dbg !1451
  %90 = load ptr, ptr %13, align 4, !dbg !1452
  %91 = load i32, ptr %12, align 4, !dbg !1453
  store i32 %91, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !585, metadata !DIExpression()), !dbg !1454
  %92 = load i32, ptr %5, align 4, !dbg !1456
  %93 = icmp ne i32 %92, 0, !dbg !1457
  br i1 %93, label %94, label %95, !dbg !1458

94:                                               ; preds = %87
  br label %arch_irq_unlock.exit, !dbg !1459

95:                                               ; preds = %87
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #8, !dbg !1460, !srcloc !599
  br label %arch_irq_unlock.exit, !dbg !1461

arch_irq_unlock.exit:                             ; preds = %94, %95
  %96 = load ptr, ptr %26, align 4, !dbg !1462
  %97 = load ptr, ptr %25, align 4, !dbg !1463
  call void %96(ptr noundef %97) #7, !dbg !1462
  call void @llvm.lifetime.start.p0(i64 4, ptr %32) #8, !dbg !1464
  store ptr @lock, ptr %19, align 4
  call void @llvm.dbg.declare(metadata ptr %19, metadata !526, metadata !DIExpression()), !dbg !1465
  %98 = load ptr, ptr %19, align 4, !dbg !1467
  call void @llvm.dbg.declare(metadata ptr %18, metadata !532, metadata !DIExpression()), !dbg !1468
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #8, !dbg !1469
  call void @llvm.dbg.declare(metadata ptr %10, metadata !543, metadata !DIExpression()), !dbg !1471
  %99 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #8, !dbg !1472, !srcloc !547
  store i32 %99, ptr %10, align 4, !dbg !1472
  %100 = load i32, ptr %10, align 4, !dbg !1473
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #8, !dbg !1474
  store i32 %100, ptr %18, align 4, !dbg !1475
  %101 = load ptr, ptr %19, align 4, !dbg !1476
  store ptr %101, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !552, metadata !DIExpression()), !dbg !1477
  %102 = load ptr, ptr %8, align 4, !dbg !1479
  %103 = load ptr, ptr %19, align 4, !dbg !1480
  store ptr %103, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !561, metadata !DIExpression()), !dbg !1481
  %104 = load ptr, ptr %6, align 4, !dbg !1483
  %105 = load i32, ptr %18, align 4, !dbg !1484
  %106 = getelementptr inbounds %struct.z_spinlock_key, ptr %32, i32 0, i32 0, !dbg !1464
  store i32 %105, ptr %106, align 4, !dbg !1464
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %27, ptr align 4 %32, i32 4, i1 false), !dbg !1464
  call void @llvm.lifetime.end.p0(i64 4, ptr %32) #8, !dbg !1464
  %107 = load ptr, ptr %25, align 4, !dbg !1485
  %108 = getelementptr inbounds %struct.k_work, ptr %107, i32 0, i32 3, !dbg !1486
  call void @flag_clear(ptr noundef %108, i32 noundef 0) #7, !dbg !1487
  %109 = load ptr, ptr %25, align 4, !dbg !1488
  %110 = getelementptr inbounds %struct.k_work, ptr %109, i32 0, i32 3, !dbg !1490
  %111 = call zeroext i1 @flag_test(ptr noundef %110, i32 noundef 1) #7, !dbg !1491
  br i1 %111, label %112, label %114, !dbg !1492

112:                                              ; preds = %arch_irq_unlock.exit
  %113 = load ptr, ptr %25, align 4, !dbg !1493
  call void @finalize_cancel_locked(ptr noundef %113) #7, !dbg !1495
  br label %114, !dbg !1496

114:                                              ; preds = %112, %arch_irq_unlock.exit
  %115 = load ptr, ptr %23, align 4, !dbg !1497
  %116 = getelementptr inbounds %struct.k_work_q, ptr %115, i32 0, i32 4, !dbg !1498
  call void @flag_clear(ptr noundef %116, i32 noundef 1) #7, !dbg !1499
  %117 = load ptr, ptr %23, align 4, !dbg !1500
  %118 = getelementptr inbounds %struct.k_work_q, ptr %117, i32 0, i32 4, !dbg !1501
  %119 = call zeroext i1 @flag_test(ptr noundef %118, i32 noundef 8) #7, !dbg !1502
  %120 = xor i1 %119, true, !dbg !1503
  %121 = zext i1 %120 to i8, !dbg !1504
  store i8 %121, ptr %28, align 1, !dbg !1504
  %122 = getelementptr inbounds %struct.z_spinlock_key, ptr %27, i32 0, i32 0, !dbg !1505
  %123 = load [1 x i32], ptr %122, align 4, !dbg !1505
  store [1 x i32] %123, ptr %14, align 4
  store ptr @lock, ptr %15, align 4
  call void @llvm.dbg.declare(metadata ptr %15, metadata !574, metadata !DIExpression()), !dbg !1506
  call void @llvm.dbg.declare(metadata ptr %14, metadata !579, metadata !DIExpression()), !dbg !1508
  %124 = load ptr, ptr %15, align 4, !dbg !1509
  %125 = load i32, ptr %14, align 4, !dbg !1510
  store i32 %125, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !585, metadata !DIExpression()), !dbg !1511
  %126 = load i32, ptr %4, align 4, !dbg !1513
  %127 = icmp ne i32 %126, 0, !dbg !1514
  br i1 %127, label %128, label %129, !dbg !1515

128:                                              ; preds = %114
  br label %arch_irq_unlock.exit1, !dbg !1516

129:                                              ; preds = %114
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #8, !dbg !1517, !srcloc !599
  br label %arch_irq_unlock.exit1, !dbg !1518

arch_irq_unlock.exit1:                            ; preds = %128, %129
  %130 = load i8, ptr %28, align 1, !dbg !1519, !range !885, !noundef !248
  %131 = trunc i8 %130 to i1, !dbg !1519
  br i1 %131, label %132, label %133, !dbg !1521

132:                                              ; preds = %arch_irq_unlock.exit1
  call void @k_yield() #7, !dbg !1522
  br label %133, !dbg !1524

133:                                              ; preds = %132, %arch_irq_unlock.exit1
  store i32 0, ptr %31, align 4, !dbg !1447
  br label %134, !dbg !1447

134:                                              ; preds = %133, %78
  call void @llvm.lifetime.end.p0(i64 1, ptr %28) #8, !dbg !1447
  call void @llvm.lifetime.end.p0(i64 4, ptr %27) #8, !dbg !1447
  call void @llvm.lifetime.end.p0(i64 4, ptr %26) #8, !dbg !1447
  call void @llvm.lifetime.end.p0(i64 4, ptr %25) #8, !dbg !1447
  call void @llvm.lifetime.end.p0(i64 4, ptr %24) #8, !dbg !1447
  %135 = load i32, ptr %31, align 4
  switch i32 %135, label %137 [
    i32 0, label %136
    i32 2, label %36
  ]

136:                                              ; preds = %134
  br label %36, !dbg !1366, !llvm.loop !1446

137:                                              ; preds = %134
  unreachable
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @k_thread_name_set(ptr noundef %0, ptr noundef %1) #0 !dbg !1525 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1529, metadata !DIExpression()), !dbg !1531
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1530, metadata !DIExpression()), !dbg !1532
  br label %5, !dbg !1533

5:                                                ; preds = %2
  call void asm sideeffect "", "~{memory}"() #8, !dbg !1534, !srcloc !1536
  br label %6, !dbg !1537

6:                                                ; preds = %5
  %7 = load ptr, ptr %3, align 4, !dbg !1538
  %8 = load ptr, ptr %4, align 4, !dbg !1539
  %9 = call i32 @z_impl_k_thread_name_set(ptr noundef %7, ptr noundef %8) #7, !dbg !1540
  ret i32 %9, !dbg !1541
}

; Function Attrs: inlinehint nounwind optsize
define internal void @k_thread_start(ptr noundef %0) #0 !dbg !1542 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1546, metadata !DIExpression()), !dbg !1547
  br label %3, !dbg !1548

3:                                                ; preds = %1
  call void asm sideeffect "", "~{memory}"() #8, !dbg !1549, !srcloc !1551
  br label %4, !dbg !1552

4:                                                ; preds = %3
  %5 = load ptr, ptr %2, align 4, !dbg !1553
  call void @z_impl_k_thread_start(ptr noundef %5) #7, !dbg !1554
  ret void, !dbg !1555
}

; Function Attrs: nounwind optsize
define hidden i32 @k_work_queue_drain(ptr noundef %0, i1 noundef zeroext %1) #1 !dbg !1556 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.z_spinlock_key, align 4
  %8 = alloca ptr, align 4
  %9 = alloca %struct.z_spinlock_key, align 4
  %10 = alloca ptr, align 4
  %11 = alloca ptr, align 4
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca %struct.z_spinlock_key, align 4
  %15 = alloca %struct.k_timeout_t, align 8
  store ptr %0, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1560, metadata !DIExpression()), !dbg !1564
  %16 = zext i1 %1 to i8
  store i8 %16, ptr %12, align 1
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1561, metadata !DIExpression()), !dbg !1565
  br label %17, !dbg !1566

17:                                               ; preds = %2
  br label %18, !dbg !1567

18:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 4, ptr %13) #8, !dbg !1569
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1562, metadata !DIExpression()), !dbg !1570
  store i32 0, ptr %13, align 4, !dbg !1570
  call void @llvm.lifetime.start.p0(i64 4, ptr %14) #8, !dbg !1571
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1563, metadata !DIExpression()), !dbg !1572
  store ptr @lock, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !526, metadata !DIExpression()), !dbg !1573
  %19 = load ptr, ptr %10, align 4, !dbg !1575
  call void @llvm.dbg.declare(metadata ptr %9, metadata !532, metadata !DIExpression()), !dbg !1576
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #8, !dbg !1577
  call void @llvm.dbg.declare(metadata ptr %6, metadata !543, metadata !DIExpression()), !dbg !1579
  %20 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #8, !dbg !1580, !srcloc !547
  store i32 %20, ptr %6, align 4, !dbg !1580
  %21 = load i32, ptr %6, align 4, !dbg !1581
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #8, !dbg !1582
  store i32 %21, ptr %9, align 4, !dbg !1583
  %22 = load ptr, ptr %10, align 4, !dbg !1584
  store ptr %22, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !552, metadata !DIExpression()), !dbg !1585
  %23 = load ptr, ptr %5, align 4, !dbg !1587
  %24 = load ptr, ptr %10, align 4, !dbg !1588
  store ptr %24, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !561, metadata !DIExpression()), !dbg !1589
  %25 = load ptr, ptr %4, align 4, !dbg !1591
  %26 = load i32, ptr %9, align 4, !dbg !1592
  %27 = getelementptr inbounds %struct.z_spinlock_key, ptr %14, i32 0, i32 0, !dbg !1593
  store i32 %26, ptr %27, align 4, !dbg !1593
  %28 = load ptr, ptr %11, align 4, !dbg !1594
  %29 = getelementptr inbounds %struct.k_work_q, ptr %28, i32 0, i32 4, !dbg !1596
  %30 = call i32 @flags_get(ptr noundef %29) #7, !dbg !1597
  %31 = and i32 %30, 6, !dbg !1598
  %32 = icmp ne i32 %31, 0, !dbg !1599
  br i1 %32, label %40, label %33, !dbg !1600

33:                                               ; preds = %18
  %34 = load i8, ptr %12, align 1, !dbg !1601, !range !885, !noundef !248
  %35 = trunc i8 %34 to i1, !dbg !1601
  br i1 %35, label %40, label %36, !dbg !1602

36:                                               ; preds = %33
  %37 = load ptr, ptr %11, align 4, !dbg !1603
  %38 = getelementptr inbounds %struct.k_work_q, ptr %37, i32 0, i32 1, !dbg !1604
  %39 = call zeroext i1 @sys_slist_is_empty(ptr noundef %38) #7, !dbg !1605
  br i1 %39, label %59, label %40, !dbg !1606

40:                                               ; preds = %36, %33, %18
  %41 = load ptr, ptr %11, align 4, !dbg !1607
  %42 = getelementptr inbounds %struct.k_work_q, ptr %41, i32 0, i32 4, !dbg !1609
  call void @flag_set(ptr noundef %42, i32 noundef 2) #7, !dbg !1610
  %43 = load i8, ptr %12, align 1, !dbg !1611, !range !885, !noundef !248
  %44 = trunc i8 %43 to i1, !dbg !1611
  br i1 %44, label %45, label %48, !dbg !1613

45:                                               ; preds = %40
  %46 = load ptr, ptr %11, align 4, !dbg !1614
  %47 = getelementptr inbounds %struct.k_work_q, ptr %46, i32 0, i32 4, !dbg !1616
  call void @flag_set(ptr noundef %47, i32 noundef 3) #7, !dbg !1617
  br label %48, !dbg !1618

48:                                               ; preds = %45, %40
  %49 = load ptr, ptr %11, align 4, !dbg !1619
  %50 = call zeroext i1 @notify_queue_locked(ptr noundef %49) #7, !dbg !1620
  %51 = load ptr, ptr %11, align 4, !dbg !1621
  %52 = getelementptr inbounds %struct.k_work_q, ptr %51, i32 0, i32 3, !dbg !1622
  %53 = getelementptr inbounds %struct.k_timeout_t, ptr %15, i32 0, i32 0, !dbg !1623
  store i64 -1, ptr %53, align 8, !dbg !1623
  %54 = getelementptr inbounds %struct.z_spinlock_key, ptr %14, i32 0, i32 0, !dbg !1624
  %55 = load [1 x i32], ptr %54, align 4, !dbg !1624
  %56 = getelementptr inbounds %struct.k_timeout_t, ptr %15, i32 0, i32 0, !dbg !1624
  %57 = load [1 x i64], ptr %56, align 8, !dbg !1624
  %58 = call i32 @z_sched_wait(ptr noundef @lock, [1 x i32] %55, ptr noundef %52, [1 x i64] %57, ptr noundef null) #7, !dbg !1624
  store i32 %58, ptr %13, align 4, !dbg !1625
  br label %68, !dbg !1626

59:                                               ; preds = %36
  %60 = getelementptr inbounds %struct.z_spinlock_key, ptr %14, i32 0, i32 0, !dbg !1627
  %61 = load [1 x i32], ptr %60, align 4, !dbg !1627
  store [1 x i32] %61, ptr %7, align 4
  store ptr @lock, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !574, metadata !DIExpression()), !dbg !1629
  call void @llvm.dbg.declare(metadata ptr %7, metadata !579, metadata !DIExpression()), !dbg !1631
  %62 = load ptr, ptr %8, align 4, !dbg !1632
  %63 = load i32, ptr %7, align 4, !dbg !1633
  store i32 %63, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !585, metadata !DIExpression()), !dbg !1634
  %64 = load i32, ptr %3, align 4, !dbg !1636
  %65 = icmp ne i32 %64, 0, !dbg !1637
  br i1 %65, label %66, label %67, !dbg !1638

66:                                               ; preds = %59
  br label %arch_irq_unlock.exit, !dbg !1639

67:                                               ; preds = %59
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #8, !dbg !1640, !srcloc !599
  br label %arch_irq_unlock.exit, !dbg !1641

arch_irq_unlock.exit:                             ; preds = %66, %67
  br label %68

68:                                               ; preds = %arch_irq_unlock.exit, %48
  br label %69, !dbg !1642

69:                                               ; preds = %68
  br label %70, !dbg !1643

70:                                               ; preds = %69
  br label %71, !dbg !1643

71:                                               ; preds = %70
  %72 = load i32, ptr %13, align 4, !dbg !1645
  call void @llvm.lifetime.end.p0(i64 4, ptr %14) #8, !dbg !1646
  call void @llvm.lifetime.end.p0(i64 4, ptr %13) #8, !dbg !1646
  ret i32 %72, !dbg !1647
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @flags_get(ptr noundef %0) #0 !dbg !1648 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1654, metadata !DIExpression()), !dbg !1655
  %3 = load ptr, ptr %2, align 4, !dbg !1656
  %4 = load i32, ptr %3, align 4, !dbg !1657
  ret i32 %4, !dbg !1658
}

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @sys_slist_is_empty(ptr noundef %0) #0 !dbg !1659 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1663, metadata !DIExpression()), !dbg !1664
  %3 = load ptr, ptr %2, align 4, !dbg !1665
  %4 = call ptr @sys_slist_peek_head(ptr noundef %3) #7, !dbg !1666
  %5 = icmp eq ptr %4, null, !dbg !1667
  ret i1 %5, !dbg !1668
}

; Function Attrs: inlinehint nounwind optsize
define internal void @flag_set(ptr noundef %0, i32 noundef %1) #0 !dbg !1669 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1671, metadata !DIExpression()), !dbg !1673
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1672, metadata !DIExpression()), !dbg !1674
  %5 = load i32, ptr %4, align 4, !dbg !1675
  %6 = shl i32 1, %5, !dbg !1676
  %7 = load ptr, ptr %3, align 4, !dbg !1677
  %8 = load i32, ptr %7, align 4, !dbg !1678
  %9 = or i32 %8, %6, !dbg !1678
  store i32 %9, ptr %7, align 4, !dbg !1678
  ret void, !dbg !1679
}

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @notify_queue_locked(ptr noundef %0) #0 !dbg !1680 {
  %2 = alloca ptr, align 4
  %3 = alloca i8, align 1
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1684, metadata !DIExpression()), !dbg !1686
  call void @llvm.lifetime.start.p0(i64 1, ptr %3) #8, !dbg !1687
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1685, metadata !DIExpression()), !dbg !1688
  store i8 0, ptr %3, align 1, !dbg !1688
  %4 = load ptr, ptr %2, align 4, !dbg !1689
  %5 = icmp ne ptr %4, null, !dbg !1691
  br i1 %5, label %6, label %11, !dbg !1692

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 4, !dbg !1693
  %8 = getelementptr inbounds %struct.k_work_q, ptr %7, i32 0, i32 2, !dbg !1695
  %9 = call zeroext i1 @z_sched_wake(ptr noundef %8, i32 noundef 0, ptr noundef null) #7, !dbg !1696
  %10 = zext i1 %9 to i8, !dbg !1697
  store i8 %10, ptr %3, align 1, !dbg !1697
  br label %11, !dbg !1698

11:                                               ; preds = %6, %1
  %12 = load i8, ptr %3, align 1, !dbg !1699, !range !885, !noundef !248
  %13 = trunc i8 %12 to i1, !dbg !1699
  call void @llvm.lifetime.end.p0(i64 1, ptr %3) #8, !dbg !1700
  ret i1 %13, !dbg !1701
}

; Function Attrs: optsize
declare !dbg !1702 dso_local i32 @z_sched_wait(ptr noundef, [1 x i32], ptr noundef, [1 x i64], ptr noundef) #6

; Function Attrs: nounwind optsize
define hidden i32 @k_work_queue_unplug(ptr noundef %0) #1 !dbg !1706 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.z_spinlock_key, align 4
  %7 = alloca ptr, align 4
  %8 = alloca %struct.z_spinlock_key, align 4
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.z_spinlock_key, align 4
  store ptr %0, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1710, metadata !DIExpression()), !dbg !1713
  br label %13, !dbg !1714

13:                                               ; preds = %1
  br label %14, !dbg !1715

14:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 4, ptr %11) #8, !dbg !1717
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1711, metadata !DIExpression()), !dbg !1718
  store i32 -120, ptr %11, align 4, !dbg !1718
  call void @llvm.lifetime.start.p0(i64 4, ptr %12) #8, !dbg !1719
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1712, metadata !DIExpression()), !dbg !1720
  store ptr @lock, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !526, metadata !DIExpression()), !dbg !1721
  %15 = load ptr, ptr %9, align 4, !dbg !1723
  call void @llvm.dbg.declare(metadata ptr %8, metadata !532, metadata !DIExpression()), !dbg !1724
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #8, !dbg !1725
  call void @llvm.dbg.declare(metadata ptr %5, metadata !543, metadata !DIExpression()), !dbg !1727
  %16 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #8, !dbg !1728, !srcloc !547
  store i32 %16, ptr %5, align 4, !dbg !1728
  %17 = load i32, ptr %5, align 4, !dbg !1729
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #8, !dbg !1730
  store i32 %17, ptr %8, align 4, !dbg !1731
  %18 = load ptr, ptr %9, align 4, !dbg !1732
  store ptr %18, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !552, metadata !DIExpression()), !dbg !1733
  %19 = load ptr, ptr %4, align 4, !dbg !1735
  %20 = load ptr, ptr %9, align 4, !dbg !1736
  store ptr %20, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !561, metadata !DIExpression()), !dbg !1737
  %21 = load ptr, ptr %3, align 4, !dbg !1739
  %22 = load i32, ptr %8, align 4, !dbg !1740
  %23 = getelementptr inbounds %struct.z_spinlock_key, ptr %12, i32 0, i32 0, !dbg !1741
  store i32 %22, ptr %23, align 4, !dbg !1741
  %24 = load ptr, ptr %10, align 4, !dbg !1742
  %25 = getelementptr inbounds %struct.k_work_q, ptr %24, i32 0, i32 4, !dbg !1744
  %26 = call zeroext i1 @flag_test_and_clear(ptr noundef %25, i32 noundef 3) #7, !dbg !1745
  br i1 %26, label %27, label %28, !dbg !1746

27:                                               ; preds = %14
  store i32 0, ptr %11, align 4, !dbg !1747
  br label %28, !dbg !1749

28:                                               ; preds = %27, %14
  %29 = getelementptr inbounds %struct.z_spinlock_key, ptr %12, i32 0, i32 0, !dbg !1750
  %30 = load [1 x i32], ptr %29, align 4, !dbg !1750
  store [1 x i32] %30, ptr %6, align 4
  store ptr @lock, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !574, metadata !DIExpression()), !dbg !1751
  call void @llvm.dbg.declare(metadata ptr %6, metadata !579, metadata !DIExpression()), !dbg !1753
  %31 = load ptr, ptr %7, align 4, !dbg !1754
  %32 = load i32, ptr %6, align 4, !dbg !1755
  store i32 %32, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !585, metadata !DIExpression()), !dbg !1756
  %33 = load i32, ptr %2, align 4, !dbg !1758
  %34 = icmp ne i32 %33, 0, !dbg !1759
  br i1 %34, label %35, label %36, !dbg !1760

35:                                               ; preds = %28
  br label %arch_irq_unlock.exit, !dbg !1761

36:                                               ; preds = %28
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #8, !dbg !1762, !srcloc !599
  br label %arch_irq_unlock.exit, !dbg !1763

arch_irq_unlock.exit:                             ; preds = %35, %36
  br label %37, !dbg !1764

37:                                               ; preds = %arch_irq_unlock.exit
  br label %38, !dbg !1765

38:                                               ; preds = %37
  br label %39, !dbg !1765

39:                                               ; preds = %38
  %40 = load i32, ptr %11, align 4, !dbg !1767
  call void @llvm.lifetime.end.p0(i64 4, ptr %12) #8, !dbg !1768
  call void @llvm.lifetime.end.p0(i64 4, ptr %11) #8, !dbg !1768
  ret i32 %40, !dbg !1769
}

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @flag_test_and_clear(ptr noundef %0, i32 noundef %1) #0 !dbg !1770 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1774, metadata !DIExpression()), !dbg !1777
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1775, metadata !DIExpression()), !dbg !1778
  call void @llvm.lifetime.start.p0(i64 1, ptr %5) #8, !dbg !1779
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1776, metadata !DIExpression()), !dbg !1780
  %6 = load ptr, ptr %3, align 4, !dbg !1781
  %7 = load i32, ptr %4, align 4, !dbg !1782
  %8 = call zeroext i1 @flag_test(ptr noundef %6, i32 noundef %7) #7, !dbg !1783
  %9 = zext i1 %8 to i8, !dbg !1780
  store i8 %9, ptr %5, align 1, !dbg !1780
  %10 = load ptr, ptr %3, align 4, !dbg !1784
  %11 = load i32, ptr %4, align 4, !dbg !1785
  call void @flag_clear(ptr noundef %10, i32 noundef %11) #7, !dbg !1786
  %12 = load i8, ptr %5, align 1, !dbg !1787, !range !885, !noundef !248
  %13 = trunc i8 %12 to i1, !dbg !1787
  call void @llvm.lifetime.end.p0(i64 1, ptr %5) #8, !dbg !1788
  ret i1 %13, !dbg !1789
}

; Function Attrs: nounwind optsize
define hidden void @k_work_init_delayable(ptr noundef %0, ptr noundef %1) #1 !dbg !1790 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca %struct.k_work_delayable, align 8
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1794, metadata !DIExpression()), !dbg !1796
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1795, metadata !DIExpression()), !dbg !1797
  %6 = load ptr, ptr %3, align 4, !dbg !1798
  call void @llvm.memset.p0.i64(ptr align 8 %5, i8 0, i64 48, i1 false), !dbg !1799
  %7 = getelementptr inbounds %struct.k_work_delayable, ptr %5, i32 0, i32 0, !dbg !1800
  %8 = getelementptr inbounds %struct.k_work, ptr %7, i32 0, i32 1, !dbg !1801
  %9 = load ptr, ptr %4, align 4, !dbg !1802
  store ptr %9, ptr %8, align 4, !dbg !1801
  %10 = getelementptr inbounds %struct.k_work, ptr %7, i32 0, i32 3, !dbg !1801
  store i32 256, ptr %10, align 4, !dbg !1801
  call void @llvm.memcpy.p0.p0.i32(ptr align 8 %6, ptr align 8 %5, i32 48, i1 false), !dbg !1799
  %11 = load ptr, ptr %3, align 4, !dbg !1803
  %12 = getelementptr inbounds %struct.k_work_delayable, ptr %11, i32 0, i32 1, !dbg !1804
  call void @z_init_timeout(ptr noundef %12) #7, !dbg !1805
  br label %13, !dbg !1806

13:                                               ; preds = %2
  br label %14, !dbg !1807

14:                                               ; preds = %13
  ret void, !dbg !1809
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_init_timeout(ptr noundef %0) #0 !dbg !1810 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1813, metadata !DIExpression()), !dbg !1814
  %3 = load ptr, ptr %2, align 4, !dbg !1815
  %4 = getelementptr inbounds %struct._timeout, ptr %3, i32 0, i32 0, !dbg !1816
  call void @sys_dnode_init(ptr noundef %4) #7, !dbg !1817
  ret void, !dbg !1818
}

; Function Attrs: nounwind optsize
define hidden i32 @k_work_delayable_busy_get(ptr noundef %0) #1 !dbg !1819 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.z_spinlock_key, align 4
  %7 = alloca ptr, align 4
  %8 = alloca %struct.z_spinlock_key, align 4
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  %11 = alloca %struct.z_spinlock_key, align 4
  %12 = alloca i32, align 4
  store ptr %0, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1825, metadata !DIExpression()), !dbg !1828
  call void @llvm.lifetime.start.p0(i64 4, ptr %11) #8, !dbg !1829
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1826, metadata !DIExpression()), !dbg !1830
  store ptr @lock, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !526, metadata !DIExpression()), !dbg !1831
  %13 = load ptr, ptr %9, align 4, !dbg !1833
  call void @llvm.dbg.declare(metadata ptr %8, metadata !532, metadata !DIExpression()), !dbg !1834
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #8, !dbg !1835
  call void @llvm.dbg.declare(metadata ptr %5, metadata !543, metadata !DIExpression()), !dbg !1837
  %14 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #8, !dbg !1838, !srcloc !547
  store i32 %14, ptr %5, align 4, !dbg !1838
  %15 = load i32, ptr %5, align 4, !dbg !1839
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #8, !dbg !1840
  store i32 %15, ptr %8, align 4, !dbg !1841
  %16 = load ptr, ptr %9, align 4, !dbg !1842
  store ptr %16, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !552, metadata !DIExpression()), !dbg !1843
  %17 = load ptr, ptr %4, align 4, !dbg !1845
  %18 = load ptr, ptr %9, align 4, !dbg !1846
  store ptr %18, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !561, metadata !DIExpression()), !dbg !1847
  %19 = load ptr, ptr %3, align 4, !dbg !1849
  %20 = load i32, ptr %8, align 4, !dbg !1850
  %21 = getelementptr inbounds %struct.z_spinlock_key, ptr %11, i32 0, i32 0, !dbg !1851
  store i32 %20, ptr %21, align 4, !dbg !1851
  call void @llvm.lifetime.start.p0(i64 4, ptr %12) #8, !dbg !1852
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1827, metadata !DIExpression()), !dbg !1853
  %22 = load ptr, ptr %10, align 4, !dbg !1854
  %23 = call i32 @work_delayable_busy_get_locked(ptr noundef %22) #7, !dbg !1855
  store i32 %23, ptr %12, align 4, !dbg !1853
  %24 = getelementptr inbounds %struct.z_spinlock_key, ptr %11, i32 0, i32 0, !dbg !1856
  %25 = load [1 x i32], ptr %24, align 4, !dbg !1856
  store [1 x i32] %25, ptr %6, align 4
  store ptr @lock, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !574, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.declare(metadata ptr %6, metadata !579, metadata !DIExpression()), !dbg !1859
  %26 = load ptr, ptr %7, align 4, !dbg !1860
  %27 = load i32, ptr %6, align 4, !dbg !1861
  store i32 %27, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !585, metadata !DIExpression()), !dbg !1862
  %28 = load i32, ptr %2, align 4, !dbg !1864
  %29 = icmp ne i32 %28, 0, !dbg !1865
  br i1 %29, label %30, label %31, !dbg !1866

30:                                               ; preds = %1
  br label %arch_irq_unlock.exit, !dbg !1867

31:                                               ; preds = %1
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #8, !dbg !1868, !srcloc !599
  br label %arch_irq_unlock.exit, !dbg !1869

arch_irq_unlock.exit:                             ; preds = %30, %31
  %32 = load i32, ptr %12, align 4, !dbg !1870
  call void @llvm.lifetime.end.p0(i64 4, ptr %12) #8, !dbg !1871
  call void @llvm.lifetime.end.p0(i64 4, ptr %11) #8, !dbg !1871
  ret i32 %32, !dbg !1872
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @work_delayable_busy_get_locked(ptr noundef %0) #0 !dbg !1873 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1875, metadata !DIExpression()), !dbg !1876
  %3 = load ptr, ptr %2, align 4, !dbg !1877
  %4 = getelementptr inbounds %struct.k_work_delayable, ptr %3, i32 0, i32 0, !dbg !1878
  %5 = getelementptr inbounds %struct.k_work, ptr %4, i32 0, i32 3, !dbg !1879
  %6 = call i32 @flags_get(ptr noundef %5) #7, !dbg !1880
  %7 = and i32 %6, 15, !dbg !1881
  ret i32 %7, !dbg !1882
}

; Function Attrs: nounwind optsize
define hidden i32 @k_work_schedule_for_queue(ptr noundef %0, ptr noundef %1, [1 x i64] %2) #1 !dbg !1883 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.z_spinlock_key, align 4
  %9 = alloca ptr, align 4
  %10 = alloca %struct.z_spinlock_key, align 4
  %11 = alloca ptr, align 4
  %12 = alloca %struct.k_timeout_t, align 8
  %13 = alloca ptr, align 4
  %14 = alloca ptr, align 4
  %15 = alloca ptr, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.z_spinlock_key, align 4
  %18 = getelementptr inbounds %struct.k_timeout_t, ptr %12, i32 0, i32 0
  store [1 x i64] %2, ptr %18, align 8
  store ptr %0, ptr %13, align 4
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1887, metadata !DIExpression()), !dbg !1893
  store ptr %1, ptr %14, align 4
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1888, metadata !DIExpression()), !dbg !1894
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1889, metadata !DIExpression()), !dbg !1895
  br label %19, !dbg !1896

19:                                               ; preds = %3
  br label %20, !dbg !1897

20:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 4, ptr %15) #8, !dbg !1899
  call void @llvm.dbg.declare(metadata ptr %15, metadata !1890, metadata !DIExpression()), !dbg !1900
  %21 = load ptr, ptr %14, align 4, !dbg !1901
  %22 = getelementptr inbounds %struct.k_work_delayable, ptr %21, i32 0, i32 0, !dbg !1902
  store ptr %22, ptr %15, align 4, !dbg !1900
  call void @llvm.lifetime.start.p0(i64 4, ptr %16) #8, !dbg !1903
  call void @llvm.dbg.declare(metadata ptr %16, metadata !1891, metadata !DIExpression()), !dbg !1904
  store i32 0, ptr %16, align 4, !dbg !1904
  call void @llvm.lifetime.start.p0(i64 4, ptr %17) #8, !dbg !1905
  call void @llvm.dbg.declare(metadata ptr %17, metadata !1892, metadata !DIExpression()), !dbg !1906
  store ptr @lock, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !526, metadata !DIExpression()), !dbg !1907
  %23 = load ptr, ptr %11, align 4, !dbg !1909
  call void @llvm.dbg.declare(metadata ptr %10, metadata !532, metadata !DIExpression()), !dbg !1910
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #8, !dbg !1911
  call void @llvm.dbg.declare(metadata ptr %7, metadata !543, metadata !DIExpression()), !dbg !1913
  %24 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #8, !dbg !1914, !srcloc !547
  store i32 %24, ptr %7, align 4, !dbg !1914
  %25 = load i32, ptr %7, align 4, !dbg !1915
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #8, !dbg !1916
  store i32 %25, ptr %10, align 4, !dbg !1917
  %26 = load ptr, ptr %11, align 4, !dbg !1918
  store ptr %26, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !552, metadata !DIExpression()), !dbg !1919
  %27 = load ptr, ptr %6, align 4, !dbg !1921
  %28 = load ptr, ptr %11, align 4, !dbg !1922
  store ptr %28, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !561, metadata !DIExpression()), !dbg !1923
  %29 = load ptr, ptr %5, align 4, !dbg !1925
  %30 = load i32, ptr %10, align 4, !dbg !1926
  %31 = getelementptr inbounds %struct.z_spinlock_key, ptr %17, i32 0, i32 0, !dbg !1927
  store i32 %30, ptr %31, align 4, !dbg !1927
  %32 = load ptr, ptr %15, align 4, !dbg !1928
  %33 = call i32 @work_busy_get_locked(ptr noundef %32) #7, !dbg !1930
  %34 = and i32 %33, -2, !dbg !1931
  %35 = icmp eq i32 %34, 0, !dbg !1932
  br i1 %35, label %36, label %41, !dbg !1933

36:                                               ; preds = %20
  %37 = load ptr, ptr %14, align 4, !dbg !1934
  %38 = getelementptr inbounds %struct.k_timeout_t, ptr %12, i32 0, i32 0, !dbg !1936
  %39 = load [1 x i64], ptr %38, align 8, !dbg !1936
  %40 = call i32 @schedule_for_queue_locked(ptr noundef %13, ptr noundef %37, [1 x i64] %39) #7, !dbg !1936
  store i32 %40, ptr %16, align 4, !dbg !1937
  br label %41, !dbg !1938

41:                                               ; preds = %36, %20
  %42 = getelementptr inbounds %struct.z_spinlock_key, ptr %17, i32 0, i32 0, !dbg !1939
  %43 = load [1 x i32], ptr %42, align 4, !dbg !1939
  store [1 x i32] %43, ptr %8, align 4
  store ptr @lock, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !574, metadata !DIExpression()), !dbg !1940
  call void @llvm.dbg.declare(metadata ptr %8, metadata !579, metadata !DIExpression()), !dbg !1942
  %44 = load ptr, ptr %9, align 4, !dbg !1943
  %45 = load i32, ptr %8, align 4, !dbg !1944
  store i32 %45, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !585, metadata !DIExpression()), !dbg !1945
  %46 = load i32, ptr %4, align 4, !dbg !1947
  %47 = icmp ne i32 %46, 0, !dbg !1948
  br i1 %47, label %48, label %49, !dbg !1949

48:                                               ; preds = %41
  br label %arch_irq_unlock.exit, !dbg !1950

49:                                               ; preds = %41
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #8, !dbg !1951, !srcloc !599
  br label %arch_irq_unlock.exit, !dbg !1952

arch_irq_unlock.exit:                             ; preds = %48, %49
  br label %50, !dbg !1953

50:                                               ; preds = %arch_irq_unlock.exit
  br label %51, !dbg !1954

51:                                               ; preds = %50
  br label %52, !dbg !1954

52:                                               ; preds = %51
  %53 = load i32, ptr %16, align 4, !dbg !1956
  call void @llvm.lifetime.end.p0(i64 4, ptr %17) #8, !dbg !1957
  call void @llvm.lifetime.end.p0(i64 4, ptr %16) #8, !dbg !1957
  call void @llvm.lifetime.end.p0(i64 4, ptr %15) #8, !dbg !1957
  ret i32 %53, !dbg !1958
}

; Function Attrs: nounwind optsize
define internal i32 @schedule_for_queue_locked(ptr noundef %0, ptr noundef %1, [1 x i64] %2) #1 !dbg !1959 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.k_timeout_t, align 8
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 4
  %10 = alloca %struct.k_timeout_t, align 8
  %11 = alloca i32, align 4
  %12 = getelementptr inbounds %struct.k_timeout_t, ptr %5, i32 0, i32 0
  store [1 x i64] %2, ptr %12, align 8
  store ptr %0, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1963, metadata !DIExpression()), !dbg !1968
  store ptr %1, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1964, metadata !DIExpression()), !dbg !1969
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1965, metadata !DIExpression()), !dbg !1970
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #8, !dbg !1971
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1966, metadata !DIExpression()), !dbg !1972
  store i32 1, ptr %8, align 4, !dbg !1972
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #8, !dbg !1973
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1967, metadata !DIExpression()), !dbg !1974
  %13 = load ptr, ptr %7, align 4, !dbg !1975
  %14 = getelementptr inbounds %struct.k_work_delayable, ptr %13, i32 0, i32 0, !dbg !1976
  store ptr %14, ptr %9, align 4, !dbg !1974
  %15 = getelementptr inbounds %struct.k_timeout_t, ptr %5, i32 0, i32 0, !dbg !1977
  %16 = load i64, ptr %15, align 8, !dbg !1977
  %17 = getelementptr inbounds %struct.k_timeout_t, ptr %10, i32 0, i32 0, !dbg !1979
  store i64 0, ptr %17, align 8, !dbg !1979
  %18 = icmp eq i64 %16, 0, !dbg !1980
  br i1 %18, label %19, label %23, !dbg !1981

19:                                               ; preds = %3
  %20 = load ptr, ptr %9, align 4, !dbg !1982
  %21 = load ptr, ptr %6, align 4, !dbg !1984
  %22 = call i32 @submit_to_queue_locked(ptr noundef %20, ptr noundef %21) #7, !dbg !1985
  store i32 %22, ptr %4, align 4, !dbg !1986
  store i32 1, ptr %11, align 4
  br label %35, !dbg !1986

23:                                               ; preds = %3
  %24 = load ptr, ptr %9, align 4, !dbg !1987
  %25 = getelementptr inbounds %struct.k_work, ptr %24, i32 0, i32 3, !dbg !1988
  call void @flag_set(ptr noundef %25, i32 noundef 3) #7, !dbg !1989
  %26 = load ptr, ptr %6, align 4, !dbg !1990
  %27 = load ptr, ptr %26, align 4, !dbg !1991
  %28 = load ptr, ptr %7, align 4, !dbg !1992
  %29 = getelementptr inbounds %struct.k_work_delayable, ptr %28, i32 0, i32 2, !dbg !1993
  store ptr %27, ptr %29, align 8, !dbg !1994
  %30 = load ptr, ptr %7, align 4, !dbg !1995
  %31 = getelementptr inbounds %struct.k_work_delayable, ptr %30, i32 0, i32 1, !dbg !1996
  %32 = getelementptr inbounds %struct.k_timeout_t, ptr %5, i32 0, i32 0, !dbg !1997
  %33 = load [1 x i64], ptr %32, align 8, !dbg !1997
  call void @z_add_timeout(ptr noundef %31, ptr noundef @work_timeout, [1 x i64] %33) #7, !dbg !1997
  %34 = load i32, ptr %8, align 4, !dbg !1998
  store i32 %34, ptr %4, align 4, !dbg !1999
  store i32 1, ptr %11, align 4
  br label %35, !dbg !1999

35:                                               ; preds = %23, %19
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #8, !dbg !2000
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #8, !dbg !2000
  %36 = load i32, ptr %4, align 4, !dbg !2000
  ret i32 %36, !dbg !2000
}

; Function Attrs: nounwind optsize
define hidden i32 @k_work_schedule(ptr noundef %0, [1 x i64] %1) #1 !dbg !2001 {
  %3 = alloca %struct.k_timeout_t, align 8
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.k_timeout_t, ptr %3, i32 0, i32 0
  store [1 x i64] %1, ptr %6, align 8
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2005, metadata !DIExpression()), !dbg !2008
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2006, metadata !DIExpression()), !dbg !2009
  br label %7, !dbg !2010

7:                                                ; preds = %2
  br label %8, !dbg !2011

8:                                                ; preds = %7
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #8, !dbg !2013
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2007, metadata !DIExpression()), !dbg !2014
  %9 = load ptr, ptr %4, align 4, !dbg !2015
  %10 = getelementptr inbounds %struct.k_timeout_t, ptr %3, i32 0, i32 0, !dbg !2016
  %11 = load [1 x i64], ptr %10, align 8, !dbg !2016
  %12 = call i32 @k_work_schedule_for_queue(ptr noundef @k_sys_work_q, ptr noundef %9, [1 x i64] %11) #7, !dbg !2016
  store i32 %12, ptr %5, align 4, !dbg !2014
  br label %13, !dbg !2017

13:                                               ; preds = %8
  br label %14, !dbg !2018

14:                                               ; preds = %13
  br label %15, !dbg !2018

15:                                               ; preds = %14
  %16 = load i32, ptr %5, align 4, !dbg !2020
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #8, !dbg !2021
  ret i32 %16, !dbg !2022
}

; Function Attrs: nounwind optsize
define hidden i32 @k_work_reschedule_for_queue(ptr noundef %0, ptr noundef %1, [1 x i64] %2) #1 !dbg !2023 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.z_spinlock_key, align 4
  %9 = alloca ptr, align 4
  %10 = alloca %struct.z_spinlock_key, align 4
  %11 = alloca ptr, align 4
  %12 = alloca %struct.k_timeout_t, align 8
  %13 = alloca ptr, align 4
  %14 = alloca ptr, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.z_spinlock_key, align 4
  %17 = getelementptr inbounds %struct.k_timeout_t, ptr %12, i32 0, i32 0
  store [1 x i64] %2, ptr %17, align 8
  store ptr %0, ptr %13, align 4
  call void @llvm.dbg.declare(metadata ptr %13, metadata !2025, metadata !DIExpression()), !dbg !2030
  store ptr %1, ptr %14, align 4
  call void @llvm.dbg.declare(metadata ptr %14, metadata !2026, metadata !DIExpression()), !dbg !2031
  call void @llvm.dbg.declare(metadata ptr %12, metadata !2027, metadata !DIExpression()), !dbg !2032
  br label %18, !dbg !2033

18:                                               ; preds = %3
  br label %19, !dbg !2034

19:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 4, ptr %15) #8, !dbg !2036
  call void @llvm.dbg.declare(metadata ptr %15, metadata !2028, metadata !DIExpression()), !dbg !2037
  store i32 0, ptr %15, align 4, !dbg !2037
  call void @llvm.lifetime.start.p0(i64 4, ptr %16) #8, !dbg !2038
  call void @llvm.dbg.declare(metadata ptr %16, metadata !2029, metadata !DIExpression()), !dbg !2039
  store ptr @lock, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !526, metadata !DIExpression()), !dbg !2040
  %20 = load ptr, ptr %11, align 4, !dbg !2042
  call void @llvm.dbg.declare(metadata ptr %10, metadata !532, metadata !DIExpression()), !dbg !2043
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #8, !dbg !2044
  call void @llvm.dbg.declare(metadata ptr %7, metadata !543, metadata !DIExpression()), !dbg !2046
  %21 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #8, !dbg !2047, !srcloc !547
  store i32 %21, ptr %7, align 4, !dbg !2047
  %22 = load i32, ptr %7, align 4, !dbg !2048
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #8, !dbg !2049
  store i32 %22, ptr %10, align 4, !dbg !2050
  %23 = load ptr, ptr %11, align 4, !dbg !2051
  store ptr %23, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !552, metadata !DIExpression()), !dbg !2052
  %24 = load ptr, ptr %6, align 4, !dbg !2054
  %25 = load ptr, ptr %11, align 4, !dbg !2055
  store ptr %25, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !561, metadata !DIExpression()), !dbg !2056
  %26 = load ptr, ptr %5, align 4, !dbg !2058
  %27 = load i32, ptr %10, align 4, !dbg !2059
  %28 = getelementptr inbounds %struct.z_spinlock_key, ptr %16, i32 0, i32 0, !dbg !2060
  store i32 %27, ptr %28, align 4, !dbg !2060
  %29 = load ptr, ptr %14, align 4, !dbg !2061
  %30 = call zeroext i1 @unschedule_locked(ptr noundef %29) #7, !dbg !2062
  %31 = load ptr, ptr %14, align 4, !dbg !2063
  %32 = getelementptr inbounds %struct.k_timeout_t, ptr %12, i32 0, i32 0, !dbg !2064
  %33 = load [1 x i64], ptr %32, align 8, !dbg !2064
  %34 = call i32 @schedule_for_queue_locked(ptr noundef %13, ptr noundef %31, [1 x i64] %33) #7, !dbg !2064
  store i32 %34, ptr %15, align 4, !dbg !2065
  %35 = getelementptr inbounds %struct.z_spinlock_key, ptr %16, i32 0, i32 0, !dbg !2066
  %36 = load [1 x i32], ptr %35, align 4, !dbg !2066
  store [1 x i32] %36, ptr %8, align 4
  store ptr @lock, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !574, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.declare(metadata ptr %8, metadata !579, metadata !DIExpression()), !dbg !2069
  %37 = load ptr, ptr %9, align 4, !dbg !2070
  %38 = load i32, ptr %8, align 4, !dbg !2071
  store i32 %38, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !585, metadata !DIExpression()), !dbg !2072
  %39 = load i32, ptr %4, align 4, !dbg !2074
  %40 = icmp ne i32 %39, 0, !dbg !2075
  br i1 %40, label %41, label %42, !dbg !2076

41:                                               ; preds = %19
  br label %arch_irq_unlock.exit, !dbg !2077

42:                                               ; preds = %19
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #8, !dbg !2078, !srcloc !599
  br label %arch_irq_unlock.exit, !dbg !2079

arch_irq_unlock.exit:                             ; preds = %41, %42
  br label %43, !dbg !2080

43:                                               ; preds = %arch_irq_unlock.exit
  br label %44, !dbg !2081

44:                                               ; preds = %43
  br label %45, !dbg !2081

45:                                               ; preds = %44
  %46 = load i32, ptr %15, align 4, !dbg !2083
  call void @llvm.lifetime.end.p0(i64 4, ptr %16) #8, !dbg !2084
  call void @llvm.lifetime.end.p0(i64 4, ptr %15) #8, !dbg !2084
  ret i32 %46, !dbg !2085
}

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @unschedule_locked(ptr noundef %0) #0 !dbg !2086 {
  %2 = alloca ptr, align 4
  %3 = alloca i8, align 1
  %4 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2090, metadata !DIExpression()), !dbg !2093
  call void @llvm.lifetime.start.p0(i64 1, ptr %3) #8, !dbg !2094
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2091, metadata !DIExpression()), !dbg !2095
  store i8 0, ptr %3, align 1, !dbg !2095
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #8, !dbg !2096
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2092, metadata !DIExpression()), !dbg !2097
  %5 = load ptr, ptr %2, align 4, !dbg !2098
  %6 = getelementptr inbounds %struct.k_work_delayable, ptr %5, i32 0, i32 0, !dbg !2099
  store ptr %6, ptr %4, align 4, !dbg !2097
  %7 = load ptr, ptr %4, align 4, !dbg !2100
  %8 = getelementptr inbounds %struct.k_work, ptr %7, i32 0, i32 3, !dbg !2102
  %9 = call zeroext i1 @flag_test_and_clear(ptr noundef %8, i32 noundef 3) #7, !dbg !2103
  br i1 %9, label %10, label %16, !dbg !2104

10:                                               ; preds = %1
  %11 = load ptr, ptr %2, align 4, !dbg !2105
  %12 = getelementptr inbounds %struct.k_work_delayable, ptr %11, i32 0, i32 1, !dbg !2107
  %13 = call i32 @z_abort_timeout(ptr noundef %12) #7, !dbg !2108
  %14 = icmp eq i32 %13, 0, !dbg !2109
  %15 = zext i1 %14 to i8, !dbg !2110
  store i8 %15, ptr %3, align 1, !dbg !2110
  br label %16, !dbg !2111

16:                                               ; preds = %10, %1
  %17 = load i8, ptr %3, align 1, !dbg !2112, !range !885, !noundef !248
  %18 = trunc i8 %17 to i1, !dbg !2112
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #8, !dbg !2113
  call void @llvm.lifetime.end.p0(i64 1, ptr %3) #8, !dbg !2113
  ret i1 %18, !dbg !2114
}

; Function Attrs: nounwind optsize
define hidden i32 @k_work_reschedule(ptr noundef %0, [1 x i64] %1) #1 !dbg !2115 {
  %3 = alloca %struct.k_timeout_t, align 8
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.k_timeout_t, ptr %3, i32 0, i32 0
  store [1 x i64] %1, ptr %6, align 8
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2117, metadata !DIExpression()), !dbg !2120
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2118, metadata !DIExpression()), !dbg !2121
  br label %7, !dbg !2122

7:                                                ; preds = %2
  br label %8, !dbg !2123

8:                                                ; preds = %7
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #8, !dbg !2125
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2119, metadata !DIExpression()), !dbg !2126
  %9 = load ptr, ptr %4, align 4, !dbg !2127
  %10 = getelementptr inbounds %struct.k_timeout_t, ptr %3, i32 0, i32 0, !dbg !2128
  %11 = load [1 x i64], ptr %10, align 8, !dbg !2128
  %12 = call i32 @k_work_reschedule_for_queue(ptr noundef @k_sys_work_q, ptr noundef %9, [1 x i64] %11) #7, !dbg !2128
  store i32 %12, ptr %5, align 4, !dbg !2126
  br label %13, !dbg !2129

13:                                               ; preds = %8
  br label %14, !dbg !2130

14:                                               ; preds = %13
  br label %15, !dbg !2130

15:                                               ; preds = %14
  %16 = load i32, ptr %5, align 4, !dbg !2132
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #8, !dbg !2133
  ret i32 %16, !dbg !2134
}

; Function Attrs: nounwind optsize
define hidden i32 @k_work_cancel_delayable(ptr noundef %0) #1 !dbg !2135 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.z_spinlock_key, align 4
  %7 = alloca ptr, align 4
  %8 = alloca %struct.z_spinlock_key, align 4
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  %11 = alloca %struct.z_spinlock_key, align 4
  %12 = alloca i32, align 4
  store ptr %0, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2139, metadata !DIExpression()), !dbg !2142
  br label %13, !dbg !2143

13:                                               ; preds = %1
  br label %14, !dbg !2144

14:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 4, ptr %11) #8, !dbg !2146
  call void @llvm.dbg.declare(metadata ptr %11, metadata !2140, metadata !DIExpression()), !dbg !2147
  store ptr @lock, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !526, metadata !DIExpression()), !dbg !2148
  %15 = load ptr, ptr %9, align 4, !dbg !2150
  call void @llvm.dbg.declare(metadata ptr %8, metadata !532, metadata !DIExpression()), !dbg !2151
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #8, !dbg !2152
  call void @llvm.dbg.declare(metadata ptr %5, metadata !543, metadata !DIExpression()), !dbg !2154
  %16 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #8, !dbg !2155, !srcloc !547
  store i32 %16, ptr %5, align 4, !dbg !2155
  %17 = load i32, ptr %5, align 4, !dbg !2156
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #8, !dbg !2157
  store i32 %17, ptr %8, align 4, !dbg !2158
  %18 = load ptr, ptr %9, align 4, !dbg !2159
  store ptr %18, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !552, metadata !DIExpression()), !dbg !2160
  %19 = load ptr, ptr %4, align 4, !dbg !2162
  %20 = load ptr, ptr %9, align 4, !dbg !2163
  store ptr %20, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !561, metadata !DIExpression()), !dbg !2164
  %21 = load ptr, ptr %3, align 4, !dbg !2166
  %22 = load i32, ptr %8, align 4, !dbg !2167
  %23 = getelementptr inbounds %struct.z_spinlock_key, ptr %11, i32 0, i32 0, !dbg !2168
  store i32 %22, ptr %23, align 4, !dbg !2168
  call void @llvm.lifetime.start.p0(i64 4, ptr %12) #8, !dbg !2169
  call void @llvm.dbg.declare(metadata ptr %12, metadata !2141, metadata !DIExpression()), !dbg !2170
  %24 = load ptr, ptr %10, align 4, !dbg !2171
  %25 = call i32 @cancel_delayable_async_locked(ptr noundef %24) #7, !dbg !2172
  store i32 %25, ptr %12, align 4, !dbg !2170
  %26 = getelementptr inbounds %struct.z_spinlock_key, ptr %11, i32 0, i32 0, !dbg !2173
  %27 = load [1 x i32], ptr %26, align 4, !dbg !2173
  store [1 x i32] %27, ptr %6, align 4
  store ptr @lock, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !574, metadata !DIExpression()), !dbg !2174
  call void @llvm.dbg.declare(metadata ptr %6, metadata !579, metadata !DIExpression()), !dbg !2176
  %28 = load ptr, ptr %7, align 4, !dbg !2177
  %29 = load i32, ptr %6, align 4, !dbg !2178
  store i32 %29, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !585, metadata !DIExpression()), !dbg !2179
  %30 = load i32, ptr %2, align 4, !dbg !2181
  %31 = icmp ne i32 %30, 0, !dbg !2182
  br i1 %31, label %32, label %33, !dbg !2183

32:                                               ; preds = %14
  br label %arch_irq_unlock.exit, !dbg !2184

33:                                               ; preds = %14
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #8, !dbg !2185, !srcloc !599
  br label %arch_irq_unlock.exit, !dbg !2186

arch_irq_unlock.exit:                             ; preds = %32, %33
  br label %34, !dbg !2187

34:                                               ; preds = %arch_irq_unlock.exit
  br label %35, !dbg !2188

35:                                               ; preds = %34
  br label %36, !dbg !2188

36:                                               ; preds = %35
  %37 = load i32, ptr %12, align 4, !dbg !2190
  call void @llvm.lifetime.end.p0(i64 4, ptr %12) #8, !dbg !2191
  call void @llvm.lifetime.end.p0(i64 4, ptr %11) #8, !dbg !2191
  ret i32 %37, !dbg !2192
}

; Function Attrs: nounwind optsize
define internal i32 @cancel_delayable_async_locked(ptr noundef %0) #1 !dbg !2193 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2195, metadata !DIExpression()), !dbg !2196
  %3 = load ptr, ptr %2, align 4, !dbg !2197
  %4 = call zeroext i1 @unschedule_locked(ptr noundef %3) #7, !dbg !2198
  %5 = load ptr, ptr %2, align 4, !dbg !2199
  %6 = getelementptr inbounds %struct.k_work_delayable, ptr %5, i32 0, i32 0, !dbg !2200
  %7 = call i32 @cancel_async_locked(ptr noundef %6) #7, !dbg !2201
  ret i32 %7, !dbg !2202
}

; Function Attrs: nounwind optsize
define hidden zeroext i1 @k_work_cancel_delayable_sync(ptr noundef %0, ptr noundef %1) #1 !dbg !2203 {
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
  %13 = alloca ptr, align 4
  %14 = alloca %struct.z_spinlock_key, align 4
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  %17 = alloca %struct.k_timeout_t, align 8
  store ptr %0, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !2207, metadata !DIExpression()), !dbg !2213
  store ptr %1, ptr %12, align 4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !2208, metadata !DIExpression()), !dbg !2214
  br label %18, !dbg !2215

18:                                               ; preds = %2
  br label %19, !dbg !2216

19:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 4, ptr %13) #8, !dbg !2218
  call void @llvm.dbg.declare(metadata ptr %13, metadata !2209, metadata !DIExpression()), !dbg !2219
  %20 = load ptr, ptr %12, align 4, !dbg !2220
  %21 = getelementptr inbounds %struct.k_work_sync, ptr %20, i32 0, i32 0, !dbg !2221
  store ptr %21, ptr %13, align 4, !dbg !2219
  call void @llvm.lifetime.start.p0(i64 4, ptr %14) #8, !dbg !2222
  call void @llvm.dbg.declare(metadata ptr %14, metadata !2210, metadata !DIExpression()), !dbg !2223
  store ptr @lock, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !526, metadata !DIExpression()), !dbg !2224
  %22 = load ptr, ptr %10, align 4, !dbg !2226
  call void @llvm.dbg.declare(metadata ptr %9, metadata !532, metadata !DIExpression()), !dbg !2227
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #8, !dbg !2228
  call void @llvm.dbg.declare(metadata ptr %6, metadata !543, metadata !DIExpression()), !dbg !2230
  %23 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #8, !dbg !2231, !srcloc !547
  store i32 %23, ptr %6, align 4, !dbg !2231
  %24 = load i32, ptr %6, align 4, !dbg !2232
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #8, !dbg !2233
  store i32 %24, ptr %9, align 4, !dbg !2234
  %25 = load ptr, ptr %10, align 4, !dbg !2235
  store ptr %25, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !552, metadata !DIExpression()), !dbg !2236
  %26 = load ptr, ptr %5, align 4, !dbg !2238
  %27 = load ptr, ptr %10, align 4, !dbg !2239
  store ptr %27, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !561, metadata !DIExpression()), !dbg !2240
  %28 = load ptr, ptr %4, align 4, !dbg !2242
  %29 = load i32, ptr %9, align 4, !dbg !2243
  %30 = getelementptr inbounds %struct.z_spinlock_key, ptr %14, i32 0, i32 0, !dbg !2244
  store i32 %29, ptr %30, align 4, !dbg !2244
  call void @llvm.lifetime.start.p0(i64 1, ptr %15) #8, !dbg !2245
  call void @llvm.dbg.declare(metadata ptr %15, metadata !2211, metadata !DIExpression()), !dbg !2246
  %31 = load ptr, ptr %11, align 4, !dbg !2247
  %32 = call i32 @work_delayable_busy_get_locked(ptr noundef %31) #7, !dbg !2248
  %33 = icmp ne i32 %32, 0, !dbg !2249
  %34 = zext i1 %33 to i8, !dbg !2246
  store i8 %34, ptr %15, align 1, !dbg !2246
  call void @llvm.lifetime.start.p0(i64 1, ptr %16) #8, !dbg !2250
  call void @llvm.dbg.declare(metadata ptr %16, metadata !2212, metadata !DIExpression()), !dbg !2251
  store i8 0, ptr %16, align 1, !dbg !2251
  %35 = load i8, ptr %15, align 1, !dbg !2252, !range !885, !noundef !248
  %36 = trunc i8 %35 to i1, !dbg !2252
  br i1 %36, label %37, label %45, !dbg !2254

37:                                               ; preds = %19
  %38 = load ptr, ptr %11, align 4, !dbg !2255
  %39 = call i32 @cancel_delayable_async_locked(ptr noundef %38) #7, !dbg !2257
  %40 = load ptr, ptr %11, align 4, !dbg !2258
  %41 = getelementptr inbounds %struct.k_work_delayable, ptr %40, i32 0, i32 0, !dbg !2259
  %42 = load ptr, ptr %13, align 4, !dbg !2260
  %43 = call zeroext i1 @cancel_sync_locked(ptr noundef %41, ptr noundef %42) #7, !dbg !2261
  %44 = zext i1 %43 to i8, !dbg !2262
  store i8 %44, ptr %16, align 1, !dbg !2262
  br label %45, !dbg !2263

45:                                               ; preds = %37, %19
  %46 = getelementptr inbounds %struct.z_spinlock_key, ptr %14, i32 0, i32 0, !dbg !2264
  %47 = load [1 x i32], ptr %46, align 4, !dbg !2264
  store [1 x i32] %47, ptr %7, align 4
  store ptr @lock, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !574, metadata !DIExpression()), !dbg !2265
  call void @llvm.dbg.declare(metadata ptr %7, metadata !579, metadata !DIExpression()), !dbg !2267
  %48 = load ptr, ptr %8, align 4, !dbg !2268
  %49 = load i32, ptr %7, align 4, !dbg !2269
  store i32 %49, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !585, metadata !DIExpression()), !dbg !2270
  %50 = load i32, ptr %3, align 4, !dbg !2272
  %51 = icmp ne i32 %50, 0, !dbg !2273
  br i1 %51, label %52, label %53, !dbg !2274

52:                                               ; preds = %45
  br label %arch_irq_unlock.exit, !dbg !2275

53:                                               ; preds = %45
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #8, !dbg !2276, !srcloc !599
  br label %arch_irq_unlock.exit, !dbg !2277

arch_irq_unlock.exit:                             ; preds = %52, %53
  %54 = load i8, ptr %16, align 1, !dbg !2278, !range !885, !noundef !248
  %55 = trunc i8 %54 to i1, !dbg !2278
  br i1 %55, label %56, label %63, !dbg !2280

56:                                               ; preds = %arch_irq_unlock.exit
  %57 = load ptr, ptr %13, align 4, !dbg !2281
  %58 = getelementptr inbounds %struct.z_work_canceller, ptr %57, i32 0, i32 2, !dbg !2283
  %59 = getelementptr inbounds %struct.k_timeout_t, ptr %17, i32 0, i32 0, !dbg !2284
  store i64 -1, ptr %59, align 8, !dbg !2284
  %60 = getelementptr inbounds %struct.k_timeout_t, ptr %17, i32 0, i32 0, !dbg !2285
  %61 = load [1 x i64], ptr %60, align 8, !dbg !2285
  %62 = call i32 @k_sem_take(ptr noundef %58, [1 x i64] %61) #7, !dbg !2285
  br label %63, !dbg !2286

63:                                               ; preds = %56, %arch_irq_unlock.exit
  br label %64, !dbg !2287

64:                                               ; preds = %63
  br label %65, !dbg !2288

65:                                               ; preds = %64
  br label %66, !dbg !2288

66:                                               ; preds = %65
  %67 = load i8, ptr %15, align 1, !dbg !2290, !range !885, !noundef !248
  %68 = trunc i8 %67 to i1, !dbg !2290
  call void @llvm.lifetime.end.p0(i64 1, ptr %16) #8, !dbg !2291
  call void @llvm.lifetime.end.p0(i64 1, ptr %15) #8, !dbg !2291
  call void @llvm.lifetime.end.p0(i64 4, ptr %14) #8, !dbg !2291
  call void @llvm.lifetime.end.p0(i64 4, ptr %13) #8, !dbg !2291
  ret i1 %68, !dbg !2292
}

; Function Attrs: nounwind optsize
define hidden zeroext i1 @k_work_flush_delayable(ptr noundef %0, ptr noundef %1) #1 !dbg !2293 {
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
  %14 = alloca i1, align 1
  %15 = alloca ptr, align 4
  %16 = alloca ptr, align 4
  %17 = alloca ptr, align 4
  %18 = alloca ptr, align 4
  %19 = alloca %struct.z_spinlock_key, align 4
  %20 = alloca i32, align 4
  %21 = alloca ptr, align 4
  %22 = alloca i8, align 1
  %23 = alloca %struct.k_timeout_t, align 8
  store ptr %0, ptr %15, align 4
  call void @llvm.dbg.declare(metadata ptr %15, metadata !2295, metadata !DIExpression()), !dbg !2304
  store ptr %1, ptr %16, align 4
  call void @llvm.dbg.declare(metadata ptr %16, metadata !2296, metadata !DIExpression()), !dbg !2305
  br label %24, !dbg !2306

24:                                               ; preds = %2
  br label %25, !dbg !2307

25:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 4, ptr %17) #8, !dbg !2309
  call void @llvm.dbg.declare(metadata ptr %17, metadata !2297, metadata !DIExpression()), !dbg !2310
  %26 = load ptr, ptr %15, align 4, !dbg !2311
  %27 = getelementptr inbounds %struct.k_work_delayable, ptr %26, i32 0, i32 0, !dbg !2312
  store ptr %27, ptr %17, align 4, !dbg !2310
  call void @llvm.lifetime.start.p0(i64 4, ptr %18) #8, !dbg !2313
  call void @llvm.dbg.declare(metadata ptr %18, metadata !2298, metadata !DIExpression()), !dbg !2314
  %28 = load ptr, ptr %16, align 4, !dbg !2315
  %29 = getelementptr inbounds %struct.k_work_sync, ptr %28, i32 0, i32 0, !dbg !2316
  store ptr %29, ptr %18, align 4, !dbg !2314
  call void @llvm.lifetime.start.p0(i64 4, ptr %19) #8, !dbg !2317
  call void @llvm.dbg.declare(metadata ptr %19, metadata !2299, metadata !DIExpression()), !dbg !2318
  store ptr @lock, ptr %13, align 4
  call void @llvm.dbg.declare(metadata ptr %13, metadata !526, metadata !DIExpression()), !dbg !2319
  %30 = load ptr, ptr %13, align 4, !dbg !2321
  call void @llvm.dbg.declare(metadata ptr %12, metadata !532, metadata !DIExpression()), !dbg !2322
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #8, !dbg !2323
  call void @llvm.dbg.declare(metadata ptr %7, metadata !543, metadata !DIExpression()), !dbg !2325
  %31 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #8, !dbg !2326, !srcloc !547
  store i32 %31, ptr %7, align 4, !dbg !2326
  %32 = load i32, ptr %7, align 4, !dbg !2327
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #8, !dbg !2328
  store i32 %32, ptr %12, align 4, !dbg !2329
  %33 = load ptr, ptr %13, align 4, !dbg !2330
  store ptr %33, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !552, metadata !DIExpression()), !dbg !2331
  %34 = load ptr, ptr %6, align 4, !dbg !2333
  %35 = load ptr, ptr %13, align 4, !dbg !2334
  store ptr %35, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !561, metadata !DIExpression()), !dbg !2335
  %36 = load ptr, ptr %5, align 4, !dbg !2337
  %37 = load i32, ptr %12, align 4, !dbg !2338
  %38 = getelementptr inbounds %struct.z_spinlock_key, ptr %19, i32 0, i32 0, !dbg !2339
  store i32 %37, ptr %38, align 4, !dbg !2339
  %39 = load ptr, ptr %17, align 4, !dbg !2340
  %40 = call i32 @work_busy_get_locked(ptr noundef %39) #7, !dbg !2342
  %41 = icmp eq i32 %40, 0, !dbg !2343
  br i1 %41, label %42, label %54, !dbg !2344

42:                                               ; preds = %25
  %43 = getelementptr inbounds %struct.z_spinlock_key, ptr %19, i32 0, i32 0, !dbg !2345
  %44 = load [1 x i32], ptr %43, align 4, !dbg !2345
  store [1 x i32] %44, ptr %8, align 4
  store ptr @lock, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !574, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.declare(metadata ptr %8, metadata !579, metadata !DIExpression()), !dbg !2349
  %45 = load ptr, ptr %9, align 4, !dbg !2350
  %46 = load i32, ptr %8, align 4, !dbg !2351
  store i32 %46, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !585, metadata !DIExpression()), !dbg !2352
  %47 = load i32, ptr %4, align 4, !dbg !2354
  %48 = icmp ne i32 %47, 0, !dbg !2355
  br i1 %48, label %49, label %50, !dbg !2356

49:                                               ; preds = %42
  br label %arch_irq_unlock.exit, !dbg !2357

50:                                               ; preds = %42
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #8, !dbg !2358, !srcloc !599
  br label %arch_irq_unlock.exit, !dbg !2359

arch_irq_unlock.exit:                             ; preds = %49, %50
  br label %51, !dbg !2360

51:                                               ; preds = %arch_irq_unlock.exit
  br label %52, !dbg !2361

52:                                               ; preds = %51
  br label %53, !dbg !2361

53:                                               ; preds = %52
  store i1 false, ptr %14, align 1, !dbg !2363
  store i32 1, ptr %20, align 4
  br label %91, !dbg !2363

54:                                               ; preds = %25
  %55 = load ptr, ptr %15, align 4, !dbg !2364
  %56 = call zeroext i1 @unschedule_locked(ptr noundef %55) #7, !dbg !2365
  br i1 %56, label %57, label %63, !dbg !2366

57:                                               ; preds = %54
  call void @llvm.lifetime.start.p0(i64 4, ptr %21) #8, !dbg !2367
  call void @llvm.dbg.declare(metadata ptr %21, metadata !2300, metadata !DIExpression()), !dbg !2368
  %58 = load ptr, ptr %15, align 4, !dbg !2369
  %59 = getelementptr inbounds %struct.k_work_delayable, ptr %58, i32 0, i32 2, !dbg !2370
  %60 = load ptr, ptr %59, align 8, !dbg !2370
  store ptr %60, ptr %21, align 4, !dbg !2368
  %61 = load ptr, ptr %17, align 4, !dbg !2371
  %62 = call i32 @submit_to_queue_locked(ptr noundef %61, ptr noundef %21) #7, !dbg !2372
  call void @llvm.lifetime.end.p0(i64 4, ptr %21) #8, !dbg !2373
  br label %63, !dbg !2374

63:                                               ; preds = %57, %54
  call void @llvm.lifetime.start.p0(i64 1, ptr %22) #8, !dbg !2375
  call void @llvm.dbg.declare(metadata ptr %22, metadata !2303, metadata !DIExpression()), !dbg !2376
  %64 = load ptr, ptr %17, align 4, !dbg !2377
  %65 = load ptr, ptr %18, align 4, !dbg !2378
  %66 = call zeroext i1 @work_flush_locked(ptr noundef %64, ptr noundef %65) #7, !dbg !2379
  %67 = zext i1 %66 to i8, !dbg !2376
  store i8 %67, ptr %22, align 1, !dbg !2376
  %68 = getelementptr inbounds %struct.z_spinlock_key, ptr %19, i32 0, i32 0, !dbg !2380
  %69 = load [1 x i32], ptr %68, align 4, !dbg !2380
  store [1 x i32] %69, ptr %10, align 4
  store ptr @lock, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !574, metadata !DIExpression()), !dbg !2381
  call void @llvm.dbg.declare(metadata ptr %10, metadata !579, metadata !DIExpression()), !dbg !2383
  %70 = load ptr, ptr %11, align 4, !dbg !2384
  %71 = load i32, ptr %10, align 4, !dbg !2385
  store i32 %71, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !585, metadata !DIExpression()), !dbg !2386
  %72 = load i32, ptr %3, align 4, !dbg !2388
  %73 = icmp ne i32 %72, 0, !dbg !2389
  br i1 %73, label %74, label %75, !dbg !2390

74:                                               ; preds = %63
  br label %arch_irq_unlock.exit1, !dbg !2391

75:                                               ; preds = %63
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #8, !dbg !2392, !srcloc !599
  br label %arch_irq_unlock.exit1, !dbg !2393

arch_irq_unlock.exit1:                            ; preds = %74, %75
  %76 = load i8, ptr %22, align 1, !dbg !2394, !range !885, !noundef !248
  %77 = trunc i8 %76 to i1, !dbg !2394
  br i1 %77, label %78, label %85, !dbg !2396

78:                                               ; preds = %arch_irq_unlock.exit1
  %79 = load ptr, ptr %18, align 4, !dbg !2397
  %80 = getelementptr inbounds %struct.z_work_flusher, ptr %79, i32 0, i32 1, !dbg !2399
  %81 = getelementptr inbounds %struct.k_timeout_t, ptr %23, i32 0, i32 0, !dbg !2400
  store i64 -1, ptr %81, align 8, !dbg !2400
  %82 = getelementptr inbounds %struct.k_timeout_t, ptr %23, i32 0, i32 0, !dbg !2401
  %83 = load [1 x i64], ptr %82, align 8, !dbg !2401
  %84 = call i32 @k_sem_take(ptr noundef %80, [1 x i64] %83) #7, !dbg !2401
  br label %85, !dbg !2402

85:                                               ; preds = %78, %arch_irq_unlock.exit1
  br label %86, !dbg !2403

86:                                               ; preds = %85
  br label %87, !dbg !2404

87:                                               ; preds = %86
  br label %88, !dbg !2404

88:                                               ; preds = %87
  %89 = load i8, ptr %22, align 1, !dbg !2406, !range !885, !noundef !248
  %90 = trunc i8 %89 to i1, !dbg !2406
  store i1 %90, ptr %14, align 1, !dbg !2407
  store i32 1, ptr %20, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr %22) #8, !dbg !2408
  br label %91

91:                                               ; preds = %88, %53
  call void @llvm.lifetime.end.p0(i64 4, ptr %19) #8, !dbg !2408
  call void @llvm.lifetime.end.p0(i64 4, ptr %18) #8, !dbg !2408
  call void @llvm.lifetime.end.p0(i64 4, ptr %17) #8, !dbg !2408
  %92 = load i1, ptr %14, align 1, !dbg !2408
  ret i1 %92, !dbg !2408
}

; Function Attrs: optsize
declare !dbg !2409 dso_local i64 @z_timeout_expires(ptr noundef) #6

; Function Attrs: optsize
declare !dbg !2414 dso_local i64 @z_timeout_remaining(ptr noundef) #6

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @sys_sflist_is_empty(ptr noundef %0) #0 !dbg !2415 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2420, metadata !DIExpression()), !dbg !2421
  %3 = load ptr, ptr %2, align 4, !dbg !2422
  %4 = call ptr @sys_sflist_peek_head(ptr noundef %3) #7, !dbg !2423
  %5 = icmp eq ptr %4, null, !dbg !2424
  ret i1 %5, !dbg !2425
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @sys_sflist_peek_head(ptr noundef %0) #0 !dbg !2426 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2430, metadata !DIExpression()), !dbg !2431
  %3 = load ptr, ptr %2, align 4, !dbg !2432
  %4 = getelementptr inbounds %struct._sflist, ptr %3, i32 0, i32 0, !dbg !2433
  %5 = load ptr, ptr %4, align 4, !dbg !2433
  ret ptr %5, !dbg !2434
}

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @flag_test(ptr noundef %0, i32 noundef %1) #0 !dbg !2435 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2439, metadata !DIExpression()), !dbg !2441
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2440, metadata !DIExpression()), !dbg !2442
  %5 = load ptr, ptr %3, align 4, !dbg !2443
  %6 = load i32, ptr %5, align 4, !dbg !2444
  %7 = load i32, ptr %4, align 4, !dbg !2445
  %8 = shl i32 1, %7, !dbg !2446
  %9 = and i32 %6, %8, !dbg !2447
  %10 = icmp ne i32 %9, 0, !dbg !2448
  ret i1 %10, !dbg !2449
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @queue_submit_locked(ptr noundef %0, ptr noundef %1) #0 !dbg !2450 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2452, metadata !DIExpression()), !dbg !2458
  store ptr %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2453, metadata !DIExpression()), !dbg !2459
  %10 = load ptr, ptr %4, align 4, !dbg !2460
  %11 = icmp eq ptr %10, null, !dbg !2462
  br i1 %11, label %12, label %13, !dbg !2463

12:                                               ; preds = %2
  store i32 -5, ptr %3, align 4, !dbg !2464
  br label %61, !dbg !2464

13:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #8, !dbg !2466
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2454, metadata !DIExpression()), !dbg !2467
  store i32 -16, ptr %6, align 4, !dbg !2467
  call void @llvm.lifetime.start.p0(i64 1, ptr %7) #8, !dbg !2468
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2455, metadata !DIExpression()), !dbg !2469
  %14 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !2470
  %15 = load ptr, ptr %4, align 4, !dbg !2471
  %16 = getelementptr inbounds %struct.k_work_q, ptr %15, i32 0, i32 0, !dbg !2472
  %17 = icmp eq ptr %14, %16, !dbg !2473
  br i1 %17, label %18, label %21, !dbg !2474

18:                                               ; preds = %13
  %19 = call zeroext i1 @k_is_in_isr() #7, !dbg !2475
  %20 = xor i1 %19, true, !dbg !2476
  br label %21

21:                                               ; preds = %18, %13
  %22 = phi i1 [ false, %13 ], [ %20, %18 ], !dbg !2477
  %23 = zext i1 %22 to i8, !dbg !2469
  store i8 %23, ptr %7, align 1, !dbg !2469
  call void @llvm.lifetime.start.p0(i64 1, ptr %8) #8, !dbg !2478
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2456, metadata !DIExpression()), !dbg !2479
  %24 = load ptr, ptr %4, align 4, !dbg !2480
  %25 = getelementptr inbounds %struct.k_work_q, ptr %24, i32 0, i32 4, !dbg !2481
  %26 = call zeroext i1 @flag_test(ptr noundef %25, i32 noundef 2) #7, !dbg !2482
  %27 = zext i1 %26 to i8, !dbg !2479
  store i8 %27, ptr %8, align 1, !dbg !2479
  call void @llvm.lifetime.start.p0(i64 1, ptr %9) #8, !dbg !2483
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2457, metadata !DIExpression()), !dbg !2484
  %28 = load ptr, ptr %4, align 4, !dbg !2485
  %29 = getelementptr inbounds %struct.k_work_q, ptr %28, i32 0, i32 4, !dbg !2486
  %30 = call zeroext i1 @flag_test(ptr noundef %29, i32 noundef 3) #7, !dbg !2487
  %31 = zext i1 %30 to i8, !dbg !2484
  store i8 %31, ptr %9, align 1, !dbg !2484
  %32 = load ptr, ptr %4, align 4, !dbg !2488
  %33 = getelementptr inbounds %struct.k_work_q, ptr %32, i32 0, i32 4, !dbg !2490
  %34 = call zeroext i1 @flag_test(ptr noundef %33, i32 noundef 0) #7, !dbg !2491
  br i1 %34, label %36, label %35, !dbg !2492

35:                                               ; preds = %21
  store i32 -19, ptr %6, align 4, !dbg !2493
  br label %59, !dbg !2495

36:                                               ; preds = %21
  %37 = load i8, ptr %8, align 1, !dbg !2496, !range !885, !noundef !248
  %38 = trunc i8 %37 to i1, !dbg !2496
  br i1 %38, label %39, label %43, !dbg !2498

39:                                               ; preds = %36
  %40 = load i8, ptr %7, align 1, !dbg !2499, !range !885, !noundef !248
  %41 = trunc i8 %40 to i1, !dbg !2499
  br i1 %41, label %43, label %42, !dbg !2500

42:                                               ; preds = %39
  store i32 -16, ptr %6, align 4, !dbg !2501
  br label %58, !dbg !2503

43:                                               ; preds = %39, %36
  %44 = load i8, ptr %9, align 1, !dbg !2504, !range !885, !noundef !248
  %45 = trunc i8 %44 to i1, !dbg !2504
  br i1 %45, label %46, label %50, !dbg !2506

46:                                               ; preds = %43
  %47 = load i8, ptr %8, align 1, !dbg !2507, !range !885, !noundef !248
  %48 = trunc i8 %47 to i1, !dbg !2507
  br i1 %48, label %50, label %49, !dbg !2508

49:                                               ; preds = %46
  store i32 -16, ptr %6, align 4, !dbg !2509
  br label %57, !dbg !2511

50:                                               ; preds = %46, %43
  %51 = load ptr, ptr %4, align 4, !dbg !2512
  %52 = getelementptr inbounds %struct.k_work_q, ptr %51, i32 0, i32 1, !dbg !2514
  %53 = load ptr, ptr %5, align 4, !dbg !2515
  %54 = getelementptr inbounds %struct.k_work, ptr %53, i32 0, i32 0, !dbg !2516
  call void @sys_slist_append(ptr noundef %52, ptr noundef %54) #7, !dbg !2517
  store i32 1, ptr %6, align 4, !dbg !2518
  %55 = load ptr, ptr %4, align 4, !dbg !2519
  %56 = call zeroext i1 @notify_queue_locked(ptr noundef %55) #7, !dbg !2520
  br label %57

57:                                               ; preds = %50, %49
  br label %58

58:                                               ; preds = %57, %42
  br label %59

59:                                               ; preds = %58, %35
  %60 = load i32, ptr %6, align 4, !dbg !2521
  store i32 %60, ptr %3, align 4, !dbg !2522
  call void @llvm.lifetime.end.p0(i64 1, ptr %9) #8, !dbg !2523
  call void @llvm.lifetime.end.p0(i64 1, ptr %8) #8, !dbg !2523
  call void @llvm.lifetime.end.p0(i64 1, ptr %7) #8, !dbg !2523
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #8, !dbg !2523
  br label %61

61:                                               ; preds = %59, %12
  %62 = load i32, ptr %3, align 4, !dbg !2523
  ret i32 %62, !dbg !2523
}

; Function Attrs: optsize
declare !dbg !2524 dso_local zeroext i1 @k_is_in_isr() #6

; Function Attrs: inlinehint nounwind optsize
define internal void @sys_slist_append(ptr noundef %0, ptr noundef %1) #0 !dbg !2527 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2531, metadata !DIExpression()), !dbg !2533
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2532, metadata !DIExpression()), !dbg !2534
  %5 = load ptr, ptr %4, align 4, !dbg !2535
  call void @z_snode_next_set(ptr noundef %5, ptr noundef null) #7, !dbg !2536
  %6 = load ptr, ptr %3, align 4, !dbg !2537
  %7 = call ptr @sys_slist_peek_tail(ptr noundef %6) #7, !dbg !2539
  %8 = icmp eq ptr %7, null, !dbg !2540
  br i1 %8, label %9, label %14, !dbg !2541

9:                                                ; preds = %2
  %10 = load ptr, ptr %3, align 4, !dbg !2542
  %11 = load ptr, ptr %4, align 4, !dbg !2544
  call void @z_slist_tail_set(ptr noundef %10, ptr noundef %11) #7, !dbg !2545
  %12 = load ptr, ptr %3, align 4, !dbg !2546
  %13 = load ptr, ptr %4, align 4, !dbg !2547
  call void @z_slist_head_set(ptr noundef %12, ptr noundef %13) #7, !dbg !2548
  br label %20, !dbg !2549

14:                                               ; preds = %2
  %15 = load ptr, ptr %3, align 4, !dbg !2550
  %16 = call ptr @sys_slist_peek_tail(ptr noundef %15) #7, !dbg !2552
  %17 = load ptr, ptr %4, align 4, !dbg !2553
  call void @z_snode_next_set(ptr noundef %16, ptr noundef %17) #7, !dbg !2554
  %18 = load ptr, ptr %3, align 4, !dbg !2555
  %19 = load ptr, ptr %4, align 4, !dbg !2556
  call void @z_slist_tail_set(ptr noundef %18, ptr noundef %19) #7, !dbg !2557
  br label %20

20:                                               ; preds = %14, %9
  ret void, !dbg !2558
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_snode_next_set(ptr noundef %0, ptr noundef %1) #0 !dbg !2559 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2563, metadata !DIExpression()), !dbg !2565
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2564, metadata !DIExpression()), !dbg !2566
  %5 = load ptr, ptr %4, align 4, !dbg !2567
  %6 = load ptr, ptr %3, align 4, !dbg !2568
  %7 = getelementptr inbounds %struct._snode, ptr %6, i32 0, i32 0, !dbg !2569
  store ptr %5, ptr %7, align 4, !dbg !2570
  ret void, !dbg !2571
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @sys_slist_peek_tail(ptr noundef %0) #0 !dbg !2572 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2576, metadata !DIExpression()), !dbg !2577
  %3 = load ptr, ptr %2, align 4, !dbg !2578
  %4 = getelementptr inbounds %struct._slist, ptr %3, i32 0, i32 1, !dbg !2579
  %5 = load ptr, ptr %4, align 4, !dbg !2579
  ret ptr %5, !dbg !2580
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_slist_tail_set(ptr noundef %0, ptr noundef %1) #0 !dbg !2581 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2583, metadata !DIExpression()), !dbg !2585
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2584, metadata !DIExpression()), !dbg !2586
  %5 = load ptr, ptr %4, align 4, !dbg !2587
  %6 = load ptr, ptr %3, align 4, !dbg !2588
  %7 = getelementptr inbounds %struct._slist, ptr %6, i32 0, i32 1, !dbg !2589
  store ptr %5, ptr %7, align 4, !dbg !2590
  ret void, !dbg !2591
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_slist_head_set(ptr noundef %0, ptr noundef %1) #0 !dbg !2592 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2594, metadata !DIExpression()), !dbg !2596
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2595, metadata !DIExpression()), !dbg !2597
  %5 = load ptr, ptr %4, align 4, !dbg !2598
  %6 = load ptr, ptr %3, align 4, !dbg !2599
  %7 = getelementptr inbounds %struct._slist, ptr %6, i32 0, i32 0, !dbg !2600
  store ptr %5, ptr %7, align 4, !dbg !2601
  ret void, !dbg !2602
}

; Function Attrs: optsize
declare !dbg !2603 dso_local void @z_reschedule_irqlock(i32 noundef) #6

; Function Attrs: nounwind optsize
define internal void @queue_flusher_locked(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 !dbg !2606 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i8, align 1
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2610, metadata !DIExpression()), !dbg !2615
  store ptr %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2611, metadata !DIExpression()), !dbg !2616
  store ptr %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2612, metadata !DIExpression()), !dbg !2617
  call void @llvm.lifetime.start.p0(i64 1, ptr %7) #8, !dbg !2618
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2613, metadata !DIExpression()), !dbg !2619
  store i8 0, ptr %7, align 1, !dbg !2619
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #8, !dbg !2620
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2614, metadata !DIExpression()), !dbg !2621
  %11 = load ptr, ptr %4, align 4, !dbg !2622
  %12 = getelementptr inbounds %struct.k_work_q, ptr %11, i32 0, i32 1, !dbg !2624
  %13 = call ptr @sys_slist_peek_head(ptr noundef %12) #7, !dbg !2625
  %14 = icmp ne ptr %13, null, !dbg !2625
  br i1 %14, label %15, label %21, !dbg !2626

15:                                               ; preds = %3
  %16 = load ptr, ptr %4, align 4, !dbg !2627
  %17 = getelementptr inbounds %struct.k_work_q, ptr %16, i32 0, i32 1, !dbg !2629
  %18 = call ptr @sys_slist_peek_head(ptr noundef %17) #7, !dbg !2630
  %19 = getelementptr inbounds i8, ptr %18, i32 0, !dbg !2631
  store ptr %19, ptr %9, align 4, !dbg !2632
  %20 = load ptr, ptr %9, align 4, !dbg !2633
  br label %22, !dbg !2626

21:                                               ; preds = %3
  br label %22, !dbg !2626

22:                                               ; preds = %21, %15
  %23 = phi ptr [ %20, %15 ], [ null, %21 ], !dbg !2626
  store ptr %23, ptr %8, align 4, !dbg !2634
  br label %24, !dbg !2635

24:                                               ; preds = %51, %22
  %25 = load ptr, ptr %8, align 4, !dbg !2636
  %26 = icmp ne ptr %25, null, !dbg !2638
  br i1 %26, label %27, label %53, !dbg !2639

27:                                               ; preds = %24
  %28 = load ptr, ptr %8, align 4, !dbg !2640
  %29 = load ptr, ptr %5, align 4, !dbg !2643
  %30 = icmp eq ptr %28, %29, !dbg !2644
  br i1 %30, label %31, label %32, !dbg !2645

31:                                               ; preds = %27
  store i8 1, ptr %7, align 1, !dbg !2646
  br label %53, !dbg !2648

32:                                               ; preds = %27
  br label %33, !dbg !2649

33:                                               ; preds = %32
  %34 = load ptr, ptr %8, align 4, !dbg !2650
  %35 = icmp ne ptr %34, null, !dbg !2651
  br i1 %35, label %36, label %50, !dbg !2651

36:                                               ; preds = %33
  %37 = load ptr, ptr %8, align 4, !dbg !2652
  %38 = getelementptr inbounds %struct.k_work, ptr %37, i32 0, i32 0, !dbg !2653
  %39 = call ptr @sys_slist_peek_next(ptr noundef %38) #7, !dbg !2654
  %40 = icmp ne ptr %39, null, !dbg !2654
  br i1 %40, label %41, label %47, !dbg !2655

41:                                               ; preds = %36
  %42 = load ptr, ptr %8, align 4, !dbg !2656
  %43 = getelementptr inbounds %struct.k_work, ptr %42, i32 0, i32 0, !dbg !2658
  %44 = call ptr @sys_slist_peek_next(ptr noundef %43) #7, !dbg !2659
  %45 = getelementptr inbounds i8, ptr %44, i32 0, !dbg !2660
  store ptr %45, ptr %10, align 4, !dbg !2661
  %46 = load ptr, ptr %10, align 4, !dbg !2662
  br label %48, !dbg !2655

47:                                               ; preds = %36
  br label %48, !dbg !2655

48:                                               ; preds = %47, %41
  %49 = phi ptr [ %46, %41 ], [ null, %47 ], !dbg !2655
  br label %51, !dbg !2651

50:                                               ; preds = %33
  br label %51, !dbg !2651

51:                                               ; preds = %50, %48
  %52 = phi ptr [ %49, %48 ], [ null, %50 ], !dbg !2651
  store ptr %52, ptr %8, align 4, !dbg !2663
  br label %24, !dbg !2664, !llvm.loop !2665

53:                                               ; preds = %31, %24
  %54 = load ptr, ptr %6, align 4, !dbg !2667
  call void @init_flusher(ptr noundef %54) #7, !dbg !2668
  %55 = load i8, ptr %7, align 1, !dbg !2669, !range !885, !noundef !248
  %56 = trunc i8 %55 to i1, !dbg !2669
  br i1 %56, label %57, label %65, !dbg !2671

57:                                               ; preds = %53
  %58 = load ptr, ptr %4, align 4, !dbg !2672
  %59 = getelementptr inbounds %struct.k_work_q, ptr %58, i32 0, i32 1, !dbg !2674
  %60 = load ptr, ptr %5, align 4, !dbg !2675
  %61 = getelementptr inbounds %struct.k_work, ptr %60, i32 0, i32 0, !dbg !2676
  %62 = load ptr, ptr %6, align 4, !dbg !2677
  %63 = getelementptr inbounds %struct.z_work_flusher, ptr %62, i32 0, i32 0, !dbg !2678
  %64 = getelementptr inbounds %struct.k_work, ptr %63, i32 0, i32 0, !dbg !2679
  call void @sys_slist_insert(ptr noundef %59, ptr noundef %61, ptr noundef %64) #7, !dbg !2680
  br label %71, !dbg !2681

65:                                               ; preds = %53
  %66 = load ptr, ptr %4, align 4, !dbg !2682
  %67 = getelementptr inbounds %struct.k_work_q, ptr %66, i32 0, i32 1, !dbg !2684
  %68 = load ptr, ptr %6, align 4, !dbg !2685
  %69 = getelementptr inbounds %struct.z_work_flusher, ptr %68, i32 0, i32 0, !dbg !2686
  %70 = getelementptr inbounds %struct.k_work, ptr %69, i32 0, i32 0, !dbg !2687
  call void @sys_slist_prepend(ptr noundef %67, ptr noundef %70) #7, !dbg !2688
  br label %71

71:                                               ; preds = %65, %57
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #8, !dbg !2689
  call void @llvm.lifetime.end.p0(i64 1, ptr %7) #8, !dbg !2689
  ret void, !dbg !2689
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @sys_slist_peek_head(ptr noundef %0) #0 !dbg !2690 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2692, metadata !DIExpression()), !dbg !2693
  %3 = load ptr, ptr %2, align 4, !dbg !2694
  %4 = getelementptr inbounds %struct._slist, ptr %3, i32 0, i32 0, !dbg !2695
  %5 = load ptr, ptr %4, align 4, !dbg !2695
  ret ptr %5, !dbg !2696
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @sys_slist_peek_next(ptr noundef %0) #0 !dbg !2697 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2701, metadata !DIExpression()), !dbg !2702
  %3 = load ptr, ptr %2, align 4, !dbg !2703
  %4 = icmp ne ptr %3, null, !dbg !2704
  br i1 %4, label %5, label %8, !dbg !2703

5:                                                ; preds = %1
  %6 = load ptr, ptr %2, align 4, !dbg !2705
  %7 = call ptr @sys_slist_peek_next_no_check(ptr noundef %6) #7, !dbg !2706
  br label %9, !dbg !2703

8:                                                ; preds = %1
  br label %9, !dbg !2703

9:                                                ; preds = %8, %5
  %10 = phi ptr [ %7, %5 ], [ null, %8 ], !dbg !2703
  ret ptr %10, !dbg !2707
}

; Function Attrs: inlinehint nounwind optsize
define internal void @init_flusher(ptr noundef %0) #0 !dbg !2708 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2712, metadata !DIExpression()), !dbg !2713
  %3 = load ptr, ptr %2, align 4, !dbg !2714
  %4 = getelementptr inbounds %struct.z_work_flusher, ptr %3, i32 0, i32 1, !dbg !2715
  %5 = call i32 @k_sem_init(ptr noundef %4, i32 noundef 0, i32 noundef 1) #7, !dbg !2716
  %6 = load ptr, ptr %2, align 4, !dbg !2717
  %7 = getelementptr inbounds %struct.z_work_flusher, ptr %6, i32 0, i32 0, !dbg !2718
  call void @k_work_init(ptr noundef %7, ptr noundef @handle_flush) #7, !dbg !2719
  ret void, !dbg !2720
}

; Function Attrs: inlinehint nounwind optsize
define internal void @sys_slist_insert(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !2721 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2725, metadata !DIExpression()), !dbg !2728
  store ptr %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2726, metadata !DIExpression()), !dbg !2729
  store ptr %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2727, metadata !DIExpression()), !dbg !2730
  %7 = load ptr, ptr %5, align 4, !dbg !2731
  %8 = icmp eq ptr %7, null, !dbg !2733
  br i1 %8, label %9, label %12, !dbg !2734

9:                                                ; preds = %3
  %10 = load ptr, ptr %4, align 4, !dbg !2735
  %11 = load ptr, ptr %6, align 4, !dbg !2737
  call void @sys_slist_prepend(ptr noundef %10, ptr noundef %11) #7, !dbg !2738
  br label %26, !dbg !2739

12:                                               ; preds = %3
  %13 = load ptr, ptr %5, align 4, !dbg !2740
  %14 = call ptr @z_snode_next_peek(ptr noundef %13) #7, !dbg !2742
  %15 = icmp eq ptr %14, null, !dbg !2743
  br i1 %15, label %16, label %19, !dbg !2744

16:                                               ; preds = %12
  %17 = load ptr, ptr %4, align 4, !dbg !2745
  %18 = load ptr, ptr %6, align 4, !dbg !2747
  call void @sys_slist_append(ptr noundef %17, ptr noundef %18) #7, !dbg !2748
  br label %25, !dbg !2749

19:                                               ; preds = %12
  %20 = load ptr, ptr %6, align 4, !dbg !2750
  %21 = load ptr, ptr %5, align 4, !dbg !2752
  %22 = call ptr @z_snode_next_peek(ptr noundef %21) #7, !dbg !2753
  call void @z_snode_next_set(ptr noundef %20, ptr noundef %22) #7, !dbg !2754
  %23 = load ptr, ptr %5, align 4, !dbg !2755
  %24 = load ptr, ptr %6, align 4, !dbg !2756
  call void @z_snode_next_set(ptr noundef %23, ptr noundef %24) #7, !dbg !2757
  br label %25

25:                                               ; preds = %19, %16
  br label %26

26:                                               ; preds = %25, %9
  ret void, !dbg !2758
}

; Function Attrs: inlinehint nounwind optsize
define internal void @sys_slist_prepend(ptr noundef %0, ptr noundef %1) #0 !dbg !2759 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2761, metadata !DIExpression()), !dbg !2763
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2762, metadata !DIExpression()), !dbg !2764
  %5 = load ptr, ptr %4, align 4, !dbg !2765
  %6 = load ptr, ptr %3, align 4, !dbg !2766
  %7 = call ptr @sys_slist_peek_head(ptr noundef %6) #7, !dbg !2767
  call void @z_snode_next_set(ptr noundef %5, ptr noundef %7) #7, !dbg !2768
  %8 = load ptr, ptr %3, align 4, !dbg !2769
  %9 = load ptr, ptr %4, align 4, !dbg !2770
  call void @z_slist_head_set(ptr noundef %8, ptr noundef %9) #7, !dbg !2771
  %10 = load ptr, ptr %3, align 4, !dbg !2772
  %11 = call ptr @sys_slist_peek_tail(ptr noundef %10) #7, !dbg !2774
  %12 = icmp eq ptr %11, null, !dbg !2775
  br i1 %12, label %13, label %17, !dbg !2776

13:                                               ; preds = %2
  %14 = load ptr, ptr %3, align 4, !dbg !2777
  %15 = load ptr, ptr %3, align 4, !dbg !2779
  %16 = call ptr @sys_slist_peek_head(ptr noundef %15) #7, !dbg !2780
  call void @z_slist_tail_set(ptr noundef %14, ptr noundef %16) #7, !dbg !2781
  br label %17, !dbg !2782

17:                                               ; preds = %13, %2
  ret void, !dbg !2783
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @sys_slist_peek_next_no_check(ptr noundef %0) #0 !dbg !2784 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2786, metadata !DIExpression()), !dbg !2787
  %3 = load ptr, ptr %2, align 4, !dbg !2788
  %4 = call ptr @z_snode_next_peek(ptr noundef %3) #7, !dbg !2789
  ret ptr %4, !dbg !2790
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_snode_next_peek(ptr noundef %0) #0 !dbg !2791 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2793, metadata !DIExpression()), !dbg !2794
  %3 = load ptr, ptr %2, align 4, !dbg !2795
  %4 = getelementptr inbounds %struct._snode, ptr %3, i32 0, i32 0, !dbg !2796
  %5 = load ptr, ptr %4, align 4, !dbg !2796
  ret ptr %5, !dbg !2797
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @k_sem_init(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 !dbg !2798 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2802, metadata !DIExpression()), !dbg !2805
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2803, metadata !DIExpression()), !dbg !2806
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2804, metadata !DIExpression()), !dbg !2807
  br label %7, !dbg !2808

7:                                                ; preds = %3
  call void asm sideeffect "", "~{memory}"() #8, !dbg !2809, !srcloc !2811
  br label %8, !dbg !2812

8:                                                ; preds = %7
  %9 = load ptr, ptr %4, align 4, !dbg !2813
  %10 = load i32, ptr %5, align 4, !dbg !2814
  %11 = load i32, ptr %6, align 4, !dbg !2815
  %12 = call i32 @z_impl_k_sem_init(ptr noundef %9, i32 noundef %10, i32 noundef %11) #7, !dbg !2816
  ret i32 %12, !dbg !2817
}

; Function Attrs: nounwind optsize
define internal void @handle_flush(ptr noundef %0) #1 !dbg !2818 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2820, metadata !DIExpression()), !dbg !2822
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #8, !dbg !2823
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2821, metadata !DIExpression()), !dbg !2824
  %5 = load ptr, ptr %2, align 4, !dbg !2825
  %6 = getelementptr inbounds i8, ptr %5, i32 0, !dbg !2827
  store ptr %6, ptr %4, align 4, !dbg !2828
  %7 = load ptr, ptr %4, align 4, !dbg !2829
  store ptr %7, ptr %3, align 4, !dbg !2824
  %8 = load ptr, ptr %3, align 4, !dbg !2830
  %9 = getelementptr inbounds %struct.z_work_flusher, ptr %8, i32 0, i32 1, !dbg !2831
  call void @k_sem_give(ptr noundef %9) #7, !dbg !2832
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #8, !dbg !2833
  ret void, !dbg !2833
}

; Function Attrs: optsize
declare !dbg !2834 dso_local i32 @z_impl_k_sem_init(ptr noundef, i32 noundef, i32 noundef) #6

; Function Attrs: inlinehint nounwind optsize
define internal void @k_sem_give(ptr noundef %0) #0 !dbg !2835 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2839, metadata !DIExpression()), !dbg !2840
  br label %3, !dbg !2841

3:                                                ; preds = %1
  call void asm sideeffect "", "~{memory}"() #8, !dbg !2842, !srcloc !2844
  br label %4, !dbg !2845

4:                                                ; preds = %3
  %5 = load ptr, ptr %2, align 4, !dbg !2846
  call void @z_impl_k_sem_give(ptr noundef %5) #7, !dbg !2847
  ret void, !dbg !2848
}

; Function Attrs: optsize
declare !dbg !2849 dso_local void @z_impl_k_sem_give(ptr noundef) #6

; Function Attrs: optsize
declare !dbg !2850 dso_local i32 @z_impl_k_sem_take(ptr noundef, [1 x i64]) #6

; Function Attrs: inlinehint nounwind optsize
define internal void @queue_remove_locked(ptr noundef %0, ptr noundef %1) #0 !dbg !2851 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2855, metadata !DIExpression()), !dbg !2857
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2856, metadata !DIExpression()), !dbg !2858
  %5 = load ptr, ptr %4, align 4, !dbg !2859
  %6 = getelementptr inbounds %struct.k_work, ptr %5, i32 0, i32 3, !dbg !2861
  %7 = call zeroext i1 @flag_test_and_clear(ptr noundef %6, i32 noundef 2) #7, !dbg !2862
  br i1 %7, label %8, label %14, !dbg !2863

8:                                                ; preds = %2
  %9 = load ptr, ptr %3, align 4, !dbg !2864
  %10 = getelementptr inbounds %struct.k_work_q, ptr %9, i32 0, i32 1, !dbg !2866
  %11 = load ptr, ptr %4, align 4, !dbg !2867
  %12 = getelementptr inbounds %struct.k_work, ptr %11, i32 0, i32 0, !dbg !2868
  %13 = call zeroext i1 @sys_slist_find_and_remove(ptr noundef %10, ptr noundef %12) #7, !dbg !2869
  br label %14, !dbg !2870

14:                                               ; preds = %8, %2
  ret void, !dbg !2871
}

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @sys_slist_find_and_remove(ptr noundef %0, ptr noundef %1) #0 !dbg !2872 {
  %3 = alloca i1, align 1
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2876, metadata !DIExpression()), !dbg !2880
  store ptr %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2877, metadata !DIExpression()), !dbg !2881
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #8, !dbg !2882
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2878, metadata !DIExpression()), !dbg !2883
  store ptr null, ptr %6, align 4, !dbg !2883
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #8, !dbg !2884
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2879, metadata !DIExpression()), !dbg !2885
  %9 = load ptr, ptr %4, align 4, !dbg !2886
  %10 = call ptr @sys_slist_peek_head(ptr noundef %9) #7, !dbg !2888
  store ptr %10, ptr %7, align 4, !dbg !2889
  br label %11, !dbg !2890

11:                                               ; preds = %24, %2
  %12 = load ptr, ptr %7, align 4, !dbg !2891
  %13 = icmp ne ptr %12, null, !dbg !2893
  br i1 %13, label %14, label %27, !dbg !2894

14:                                               ; preds = %11
  %15 = load ptr, ptr %7, align 4, !dbg !2895
  %16 = load ptr, ptr %5, align 4, !dbg !2898
  %17 = icmp eq ptr %15, %16, !dbg !2899
  br i1 %17, label %18, label %22, !dbg !2900

18:                                               ; preds = %14
  %19 = load ptr, ptr %4, align 4, !dbg !2901
  %20 = load ptr, ptr %6, align 4, !dbg !2903
  %21 = load ptr, ptr %5, align 4, !dbg !2904
  call void @sys_slist_remove(ptr noundef %19, ptr noundef %20, ptr noundef %21) #7, !dbg !2905
  store i1 true, ptr %3, align 1, !dbg !2906
  store i32 1, ptr %8, align 4
  br label %28, !dbg !2906

22:                                               ; preds = %14
  %23 = load ptr, ptr %7, align 4, !dbg !2907
  store ptr %23, ptr %6, align 4, !dbg !2908
  br label %24, !dbg !2909

24:                                               ; preds = %22
  %25 = load ptr, ptr %7, align 4, !dbg !2910
  %26 = call ptr @sys_slist_peek_next(ptr noundef %25) #7, !dbg !2911
  store ptr %26, ptr %7, align 4, !dbg !2912
  br label %11, !dbg !2913, !llvm.loop !2914

27:                                               ; preds = %11
  store i1 false, ptr %3, align 1, !dbg !2916
  store i32 1, ptr %8, align 4
  br label %28, !dbg !2916

28:                                               ; preds = %27, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #8, !dbg !2917
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #8, !dbg !2917
  %29 = load i1, ptr %3, align 1, !dbg !2917
  ret i1 %29, !dbg !2917
}

; Function Attrs: inlinehint nounwind optsize
define internal void @sys_slist_remove(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !2918 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2920, metadata !DIExpression()), !dbg !2923
  store ptr %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2921, metadata !DIExpression()), !dbg !2924
  store ptr %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2922, metadata !DIExpression()), !dbg !2925
  %7 = load ptr, ptr %5, align 4, !dbg !2926
  %8 = icmp eq ptr %7, null, !dbg !2928
  br i1 %8, label %9, label %22, !dbg !2929

9:                                                ; preds = %3
  %10 = load ptr, ptr %4, align 4, !dbg !2930
  %11 = load ptr, ptr %6, align 4, !dbg !2932
  %12 = call ptr @z_snode_next_peek(ptr noundef %11) #7, !dbg !2933
  call void @z_slist_head_set(ptr noundef %10, ptr noundef %12) #7, !dbg !2934
  %13 = load ptr, ptr %4, align 4, !dbg !2935
  %14 = call ptr @sys_slist_peek_tail(ptr noundef %13) #7, !dbg !2937
  %15 = load ptr, ptr %6, align 4, !dbg !2938
  %16 = icmp eq ptr %14, %15, !dbg !2939
  br i1 %16, label %17, label %21, !dbg !2940

17:                                               ; preds = %9
  %18 = load ptr, ptr %4, align 4, !dbg !2941
  %19 = load ptr, ptr %4, align 4, !dbg !2943
  %20 = call ptr @sys_slist_peek_head(ptr noundef %19) #7, !dbg !2944
  call void @z_slist_tail_set(ptr noundef %18, ptr noundef %20) #7, !dbg !2945
  br label %21, !dbg !2946

21:                                               ; preds = %17, %9
  br label %34, !dbg !2947

22:                                               ; preds = %3
  %23 = load ptr, ptr %5, align 4, !dbg !2948
  %24 = load ptr, ptr %6, align 4, !dbg !2950
  %25 = call ptr @z_snode_next_peek(ptr noundef %24) #7, !dbg !2951
  call void @z_snode_next_set(ptr noundef %23, ptr noundef %25) #7, !dbg !2952
  %26 = load ptr, ptr %4, align 4, !dbg !2953
  %27 = call ptr @sys_slist_peek_tail(ptr noundef %26) #7, !dbg !2955
  %28 = load ptr, ptr %6, align 4, !dbg !2956
  %29 = icmp eq ptr %27, %28, !dbg !2957
  br i1 %29, label %30, label %33, !dbg !2958

30:                                               ; preds = %22
  %31 = load ptr, ptr %4, align 4, !dbg !2959
  %32 = load ptr, ptr %5, align 4, !dbg !2961
  call void @z_slist_tail_set(ptr noundef %31, ptr noundef %32) #7, !dbg !2962
  br label %33, !dbg !2963

33:                                               ; preds = %30, %22
  br label %34

34:                                               ; preds = %33, %21
  %35 = load ptr, ptr %6, align 4, !dbg !2964
  call void @z_snode_next_set(ptr noundef %35, ptr noundef null) #7, !dbg !2965
  ret void, !dbg !2966
}

; Function Attrs: inlinehint nounwind optsize
define internal void @init_work_cancel(ptr noundef %0, ptr noundef %1) #0 !dbg !2967 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2971, metadata !DIExpression()), !dbg !2973
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2972, metadata !DIExpression()), !dbg !2974
  %5 = load ptr, ptr %3, align 4, !dbg !2975
  %6 = getelementptr inbounds %struct.z_work_canceller, ptr %5, i32 0, i32 2, !dbg !2976
  %7 = call i32 @k_sem_init(ptr noundef %6, i32 noundef 0, i32 noundef 1) #7, !dbg !2977
  %8 = load ptr, ptr %4, align 4, !dbg !2978
  %9 = load ptr, ptr %3, align 4, !dbg !2979
  %10 = getelementptr inbounds %struct.z_work_canceller, ptr %9, i32 0, i32 1, !dbg !2980
  store ptr %8, ptr %10, align 4, !dbg !2981
  %11 = load ptr, ptr %3, align 4, !dbg !2982
  %12 = getelementptr inbounds %struct.z_work_canceller, ptr %11, i32 0, i32 0, !dbg !2983
  call void @sys_slist_append(ptr noundef @pending_cancels, ptr noundef %12) #7, !dbg !2984
  ret void, !dbg !2985
}

; Function Attrs: inlinehint nounwind optsize
define internal void @sys_dlist_init(ptr noundef %0) #0 !dbg !2986 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2991, metadata !DIExpression()), !dbg !2992
  %3 = load ptr, ptr %2, align 4, !dbg !2993
  %4 = load ptr, ptr %2, align 4, !dbg !2994
  %5 = getelementptr inbounds %struct._dnode, ptr %4, i32 0, i32 0, !dbg !2995
  store ptr %3, ptr %5, align 4, !dbg !2996
  %6 = load ptr, ptr %2, align 4, !dbg !2997
  %7 = load ptr, ptr %2, align 4, !dbg !2998
  %8 = getelementptr inbounds %struct._dnode, ptr %7, i32 0, i32 1, !dbg !2999
  store ptr %6, ptr %8, align 4, !dbg !3000
  ret void, !dbg !3001
}

; Function Attrs: optsize
declare !dbg !3002 dso_local ptr @z_impl_k_thread_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, [1 x i64]) #6

; Function Attrs: inlinehint nounwind optsize
define internal ptr @sys_slist_get(ptr noundef %0) #0 !dbg !3003 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3005, metadata !DIExpression()), !dbg !3006
  %3 = load ptr, ptr %2, align 4, !dbg !3007
  %4 = call zeroext i1 @sys_slist_is_empty(ptr noundef %3) #7, !dbg !3008
  br i1 %4, label %5, label %6, !dbg !3008

5:                                                ; preds = %1
  br label %9, !dbg !3008

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 4, !dbg !3009
  %8 = call ptr @sys_slist_get_not_empty(ptr noundef %7) #7, !dbg !3010
  br label %9, !dbg !3008

9:                                                ; preds = %6, %5
  %10 = phi ptr [ null, %5 ], [ %8, %6 ], !dbg !3008
  ret ptr %10, !dbg !3011
}

; Function Attrs: inlinehint nounwind optsize
define internal void @flag_clear(ptr noundef %0, i32 noundef %1) #0 !dbg !3012 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3014, metadata !DIExpression()), !dbg !3016
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3015, metadata !DIExpression()), !dbg !3017
  %5 = load i32, ptr %4, align 4, !dbg !3018
  %6 = shl i32 1, %5, !dbg !3019
  %7 = xor i32 %6, -1, !dbg !3020
  %8 = load ptr, ptr %3, align 4, !dbg !3021
  %9 = load i32, ptr %8, align 4, !dbg !3022
  %10 = and i32 %9, %7, !dbg !3022
  store i32 %10, ptr %8, align 4, !dbg !3022
  ret void, !dbg !3023
}

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @z_sched_wake_all(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 !dbg !3024 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i8, align 1
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3028, metadata !DIExpression()), !dbg !3032
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3029, metadata !DIExpression()), !dbg !3033
  store ptr %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3030, metadata !DIExpression()), !dbg !3034
  call void @llvm.lifetime.start.p0(i64 1, ptr %7) #8, !dbg !3035
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3031, metadata !DIExpression()), !dbg !3036
  store i8 0, ptr %7, align 1, !dbg !3036
  br label %8, !dbg !3037

8:                                                ; preds = %13, %3
  %9 = load ptr, ptr %4, align 4, !dbg !3038
  %10 = load i32, ptr %5, align 4, !dbg !3039
  %11 = load ptr, ptr %6, align 4, !dbg !3040
  %12 = call zeroext i1 @z_sched_wake(ptr noundef %9, i32 noundef %10, ptr noundef %11) #7, !dbg !3041
  br i1 %12, label %13, label %14, !dbg !3037

13:                                               ; preds = %8
  store i8 1, ptr %7, align 1, !dbg !3042
  br label %8, !dbg !3037, !llvm.loop !3044

14:                                               ; preds = %8
  %15 = load i8, ptr %7, align 1, !dbg !3046, !range !885, !noundef !248
  %16 = trunc i8 %15 to i1, !dbg !3046
  call void @llvm.lifetime.end.p0(i64 1, ptr %7) #8, !dbg !3047
  ret i1 %16, !dbg !3048
}

; Function Attrs: nounwind optsize
define internal void @finalize_cancel_locked(ptr noundef %0) #1 !dbg !3049 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3051, metadata !DIExpression()), !dbg !3055
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #8, !dbg !3056
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3052, metadata !DIExpression()), !dbg !3057
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #8, !dbg !3056
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3053, metadata !DIExpression()), !dbg !3058
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #8, !dbg !3059
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3054, metadata !DIExpression()), !dbg !3060
  store ptr null, ptr %5, align 4, !dbg !3060
  %9 = load ptr, ptr %2, align 4, !dbg !3061
  %10 = getelementptr inbounds %struct.k_work, ptr %9, i32 0, i32 3, !dbg !3062
  call void @flag_clear(ptr noundef %10, i32 noundef 1) #7, !dbg !3063
  %11 = call ptr @sys_slist_peek_head(ptr noundef @pending_cancels) #7, !dbg !3064
  %12 = icmp ne ptr %11, null, !dbg !3064
  br i1 %12, label %13, label %17, !dbg !3066

13:                                               ; preds = %1
  %14 = call ptr @sys_slist_peek_head(ptr noundef @pending_cancels) #7, !dbg !3067
  %15 = getelementptr inbounds i8, ptr %14, i32 0, !dbg !3069
  store ptr %15, ptr %6, align 4, !dbg !3070
  %16 = load ptr, ptr %6, align 4, !dbg !3071
  br label %18, !dbg !3066

17:                                               ; preds = %1
  br label %18, !dbg !3066

18:                                               ; preds = %17, %13
  %19 = phi ptr [ %16, %13 ], [ null, %17 ], !dbg !3066
  store ptr %19, ptr %3, align 4, !dbg !3072
  %20 = load ptr, ptr %3, align 4, !dbg !3073
  %21 = icmp ne ptr %20, null, !dbg !3074
  br i1 %21, label %22, label %36, !dbg !3074

22:                                               ; preds = %18
  %23 = load ptr, ptr %3, align 4, !dbg !3075
  %24 = getelementptr inbounds %struct.z_work_canceller, ptr %23, i32 0, i32 0, !dbg !3076
  %25 = call ptr @sys_slist_peek_next(ptr noundef %24) #7, !dbg !3077
  %26 = icmp ne ptr %25, null, !dbg !3077
  br i1 %26, label %27, label %33, !dbg !3078

27:                                               ; preds = %22
  %28 = load ptr, ptr %3, align 4, !dbg !3079
  %29 = getelementptr inbounds %struct.z_work_canceller, ptr %28, i32 0, i32 0, !dbg !3081
  %30 = call ptr @sys_slist_peek_next(ptr noundef %29) #7, !dbg !3082
  %31 = getelementptr inbounds i8, ptr %30, i32 0, !dbg !3083
  store ptr %31, ptr %7, align 4, !dbg !3084
  %32 = load ptr, ptr %7, align 4, !dbg !3085
  br label %34, !dbg !3078

33:                                               ; preds = %22
  br label %34, !dbg !3078

34:                                               ; preds = %33, %27
  %35 = phi ptr [ %32, %27 ], [ null, %33 ], !dbg !3078
  br label %37, !dbg !3074

36:                                               ; preds = %18
  br label %37, !dbg !3074

37:                                               ; preds = %36, %34
  %38 = phi ptr [ %35, %34 ], [ null, %36 ], !dbg !3074
  store ptr %38, ptr %4, align 4, !dbg !3086
  br label %39, !dbg !3087

39:                                               ; preds = %77, %37
  %40 = load ptr, ptr %3, align 4, !dbg !3088
  %41 = icmp ne ptr %40, null, !dbg !3090
  br i1 %41, label %42, label %79, !dbg !3091

42:                                               ; preds = %39
  %43 = load ptr, ptr %3, align 4, !dbg !3092
  %44 = getelementptr inbounds %struct.z_work_canceller, ptr %43, i32 0, i32 1, !dbg !3095
  %45 = load ptr, ptr %44, align 4, !dbg !3095
  %46 = load ptr, ptr %2, align 4, !dbg !3096
  %47 = icmp eq ptr %45, %46, !dbg !3097
  br i1 %47, label %48, label %54, !dbg !3098

48:                                               ; preds = %42
  %49 = load ptr, ptr %5, align 4, !dbg !3099
  %50 = load ptr, ptr %3, align 4, !dbg !3101
  %51 = getelementptr inbounds %struct.z_work_canceller, ptr %50, i32 0, i32 0, !dbg !3102
  call void @sys_slist_remove(ptr noundef @pending_cancels, ptr noundef %49, ptr noundef %51) #7, !dbg !3103
  %52 = load ptr, ptr %3, align 4, !dbg !3104
  %53 = getelementptr inbounds %struct.z_work_canceller, ptr %52, i32 0, i32 2, !dbg !3105
  call void @k_sem_give(ptr noundef %53) #7, !dbg !3106
  br label %57, !dbg !3107

54:                                               ; preds = %42
  %55 = load ptr, ptr %3, align 4, !dbg !3108
  %56 = getelementptr inbounds %struct.z_work_canceller, ptr %55, i32 0, i32 0, !dbg !3110
  store ptr %56, ptr %5, align 4, !dbg !3111
  br label %57

57:                                               ; preds = %54, %48
  br label %58, !dbg !3112

58:                                               ; preds = %57
  %59 = load ptr, ptr %4, align 4, !dbg !3113
  store ptr %59, ptr %3, align 4, !dbg !3114
  %60 = load ptr, ptr %3, align 4, !dbg !3115
  %61 = icmp ne ptr %60, null, !dbg !3116
  br i1 %61, label %62, label %76, !dbg !3116

62:                                               ; preds = %58
  %63 = load ptr, ptr %3, align 4, !dbg !3117
  %64 = getelementptr inbounds %struct.z_work_canceller, ptr %63, i32 0, i32 0, !dbg !3118
  %65 = call ptr @sys_slist_peek_next(ptr noundef %64) #7, !dbg !3119
  %66 = icmp ne ptr %65, null, !dbg !3119
  br i1 %66, label %67, label %73, !dbg !3120

67:                                               ; preds = %62
  %68 = load ptr, ptr %3, align 4, !dbg !3121
  %69 = getelementptr inbounds %struct.z_work_canceller, ptr %68, i32 0, i32 0, !dbg !3123
  %70 = call ptr @sys_slist_peek_next(ptr noundef %69) #7, !dbg !3124
  %71 = getelementptr inbounds i8, ptr %70, i32 0, !dbg !3125
  store ptr %71, ptr %8, align 4, !dbg !3126
  %72 = load ptr, ptr %8, align 4, !dbg !3127
  br label %74, !dbg !3120

73:                                               ; preds = %62
  br label %74, !dbg !3120

74:                                               ; preds = %73, %67
  %75 = phi ptr [ %72, %67 ], [ null, %73 ], !dbg !3120
  br label %77, !dbg !3116

76:                                               ; preds = %58
  br label %77, !dbg !3116

77:                                               ; preds = %76, %74
  %78 = phi ptr [ %75, %74 ], [ null, %76 ], !dbg !3116
  store ptr %78, ptr %4, align 4, !dbg !3128
  br label %39, !dbg !3129, !llvm.loop !3130

79:                                               ; preds = %39
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #8, !dbg !3132
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #8, !dbg !3132
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #8, !dbg !3132
  ret void, !dbg !3132
}

; Function Attrs: inlinehint nounwind optsize
define internal void @k_yield() #0 !dbg !3133 {
  br label %1, !dbg !3134

1:                                                ; preds = %0
  call void asm sideeffect "", "~{memory}"() #8, !dbg !3135, !srcloc !3137
  br label %2, !dbg !3138

2:                                                ; preds = %1
  call void @z_impl_k_yield() #7, !dbg !3139
  ret void, !dbg !3140
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @sys_slist_get_not_empty(ptr noundef %0) #0 !dbg !3141 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3143, metadata !DIExpression()), !dbg !3145
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #8, !dbg !3146
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3144, metadata !DIExpression()), !dbg !3147
  %4 = load ptr, ptr %2, align 4, !dbg !3148
  %5 = call ptr @sys_slist_peek_head(ptr noundef %4) #7, !dbg !3149
  store ptr %5, ptr %3, align 4, !dbg !3147
  %6 = load ptr, ptr %2, align 4, !dbg !3150
  %7 = load ptr, ptr %3, align 4, !dbg !3151
  %8 = call ptr @z_snode_next_peek(ptr noundef %7) #7, !dbg !3152
  call void @z_slist_head_set(ptr noundef %6, ptr noundef %8) #7, !dbg !3153
  %9 = load ptr, ptr %2, align 4, !dbg !3154
  %10 = call ptr @sys_slist_peek_tail(ptr noundef %9) #7, !dbg !3156
  %11 = load ptr, ptr %3, align 4, !dbg !3157
  %12 = icmp eq ptr %10, %11, !dbg !3158
  br i1 %12, label %13, label %17, !dbg !3159

13:                                               ; preds = %1
  %14 = load ptr, ptr %2, align 4, !dbg !3160
  %15 = load ptr, ptr %2, align 4, !dbg !3162
  %16 = call ptr @sys_slist_peek_head(ptr noundef %15) #7, !dbg !3163
  call void @z_slist_tail_set(ptr noundef %14, ptr noundef %16) #7, !dbg !3164
  br label %17, !dbg !3165

17:                                               ; preds = %13, %1
  %18 = load ptr, ptr %3, align 4, !dbg !3166
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #8, !dbg !3167
  ret ptr %18, !dbg !3168
}

; Function Attrs: optsize
declare !dbg !3169 dso_local zeroext i1 @z_sched_wake(ptr noundef, i32 noundef, ptr noundef) #6

; Function Attrs: optsize
declare !dbg !3170 dso_local void @z_impl_k_yield() #6

; Function Attrs: optsize
declare !dbg !3171 dso_local i32 @z_impl_k_thread_name_set(ptr noundef, ptr noundef) #6

; Function Attrs: optsize
declare !dbg !3172 dso_local void @z_impl_k_thread_start(ptr noundef) #6

; Function Attrs: inlinehint nounwind optsize
define internal void @sys_dnode_init(ptr noundef %0) #0 !dbg !3173 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3177, metadata !DIExpression()), !dbg !3178
  %3 = load ptr, ptr %2, align 4, !dbg !3179
  %4 = getelementptr inbounds %struct._dnode, ptr %3, i32 0, i32 0, !dbg !3180
  store ptr null, ptr %4, align 4, !dbg !3181
  %5 = load ptr, ptr %2, align 4, !dbg !3182
  %6 = getelementptr inbounds %struct._dnode, ptr %5, i32 0, i32 1, !dbg !3183
  store ptr null, ptr %6, align 4, !dbg !3184
  ret void, !dbg !3185
}

; Function Attrs: optsize
declare !dbg !3186 dso_local void @z_add_timeout(ptr noundef, ptr noundef, [1 x i64]) #6

; Function Attrs: nounwind optsize
define internal void @work_timeout(ptr noundef %0) #1 !dbg !3189 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.z_spinlock_key, align 4
  %7 = alloca ptr, align 4
  %8 = alloca %struct.z_spinlock_key, align 4
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  %11 = alloca ptr, align 4
  %12 = alloca ptr, align 4
  %13 = alloca ptr, align 4
  %14 = alloca %struct.z_spinlock_key, align 4
  %15 = alloca ptr, align 4
  store ptr %0, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !3191, metadata !DIExpression()), !dbg !3196
  call void @llvm.lifetime.start.p0(i64 4, ptr %11) #8, !dbg !3197
  call void @llvm.dbg.declare(metadata ptr %11, metadata !3192, metadata !DIExpression()), !dbg !3198
  %16 = load ptr, ptr %10, align 4, !dbg !3199
  %17 = getelementptr inbounds i8, ptr %16, i32 -16, !dbg !3201
  store ptr %17, ptr %12, align 4, !dbg !3202
  %18 = load ptr, ptr %12, align 4, !dbg !3203
  store ptr %18, ptr %11, align 4, !dbg !3198
  call void @llvm.lifetime.start.p0(i64 4, ptr %13) #8, !dbg !3204
  call void @llvm.dbg.declare(metadata ptr %13, metadata !3193, metadata !DIExpression()), !dbg !3205
  %19 = load ptr, ptr %11, align 4, !dbg !3206
  %20 = getelementptr inbounds %struct.k_work_delayable, ptr %19, i32 0, i32 0, !dbg !3207
  store ptr %20, ptr %13, align 4, !dbg !3205
  call void @llvm.lifetime.start.p0(i64 4, ptr %14) #8, !dbg !3208
  call void @llvm.dbg.declare(metadata ptr %14, metadata !3194, metadata !DIExpression()), !dbg !3209
  store ptr @lock, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !526, metadata !DIExpression()), !dbg !3210
  %21 = load ptr, ptr %9, align 4, !dbg !3212
  call void @llvm.dbg.declare(metadata ptr %8, metadata !532, metadata !DIExpression()), !dbg !3213
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #8, !dbg !3214
  call void @llvm.dbg.declare(metadata ptr %5, metadata !543, metadata !DIExpression()), !dbg !3216
  %22 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #8, !dbg !3217, !srcloc !547
  store i32 %22, ptr %5, align 4, !dbg !3217
  %23 = load i32, ptr %5, align 4, !dbg !3218
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #8, !dbg !3219
  store i32 %23, ptr %8, align 4, !dbg !3220
  %24 = load ptr, ptr %9, align 4, !dbg !3221
  store ptr %24, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !552, metadata !DIExpression()), !dbg !3222
  %25 = load ptr, ptr %4, align 4, !dbg !3224
  %26 = load ptr, ptr %9, align 4, !dbg !3225
  store ptr %26, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !561, metadata !DIExpression()), !dbg !3226
  %27 = load ptr, ptr %3, align 4, !dbg !3228
  %28 = load i32, ptr %8, align 4, !dbg !3229
  %29 = getelementptr inbounds %struct.z_spinlock_key, ptr %14, i32 0, i32 0, !dbg !3230
  store i32 %28, ptr %29, align 4, !dbg !3230
  call void @llvm.lifetime.start.p0(i64 4, ptr %15) #8, !dbg !3231
  call void @llvm.dbg.declare(metadata ptr %15, metadata !3195, metadata !DIExpression()), !dbg !3232
  store ptr null, ptr %15, align 4, !dbg !3232
  %30 = load ptr, ptr %13, align 4, !dbg !3233
  %31 = getelementptr inbounds %struct.k_work, ptr %30, i32 0, i32 3, !dbg !3235
  %32 = call zeroext i1 @flag_test_and_clear(ptr noundef %31, i32 noundef 3) #7, !dbg !3236
  br i1 %32, label %33, label %39, !dbg !3237

33:                                               ; preds = %1
  %34 = load ptr, ptr %11, align 4, !dbg !3238
  %35 = getelementptr inbounds %struct.k_work_delayable, ptr %34, i32 0, i32 2, !dbg !3240
  %36 = load ptr, ptr %35, align 8, !dbg !3240
  store ptr %36, ptr %15, align 4, !dbg !3241
  %37 = load ptr, ptr %13, align 4, !dbg !3242
  %38 = call i32 @submit_to_queue_locked(ptr noundef %37, ptr noundef %15) #7, !dbg !3243
  br label %39, !dbg !3244

39:                                               ; preds = %33, %1
  %40 = getelementptr inbounds %struct.z_spinlock_key, ptr %14, i32 0, i32 0, !dbg !3245
  %41 = load [1 x i32], ptr %40, align 4, !dbg !3245
  store [1 x i32] %41, ptr %6, align 4
  store ptr @lock, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !574, metadata !DIExpression()), !dbg !3246
  call void @llvm.dbg.declare(metadata ptr %6, metadata !579, metadata !DIExpression()), !dbg !3248
  %42 = load ptr, ptr %7, align 4, !dbg !3249
  %43 = load i32, ptr %6, align 4, !dbg !3250
  store i32 %43, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !585, metadata !DIExpression()), !dbg !3251
  %44 = load i32, ptr %2, align 4, !dbg !3253
  %45 = icmp ne i32 %44, 0, !dbg !3254
  br i1 %45, label %46, label %47, !dbg !3255

46:                                               ; preds = %39
  br label %arch_irq_unlock.exit, !dbg !3256

47:                                               ; preds = %39
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #8, !dbg !3257, !srcloc !599
  br label %arch_irq_unlock.exit, !dbg !3258

arch_irq_unlock.exit:                             ; preds = %46, %47
  call void @llvm.lifetime.end.p0(i64 4, ptr %15) #8, !dbg !3259
  call void @llvm.lifetime.end.p0(i64 4, ptr %14) #8, !dbg !3259
  call void @llvm.lifetime.end.p0(i64 4, ptr %13) #8, !dbg !3259
  call void @llvm.lifetime.end.p0(i64 4, ptr %11) #8, !dbg !3259
  ret void, !dbg !3259
}

; Function Attrs: optsize
declare !dbg !3260 dso_local i32 @z_abort_timeout(ptr noundef) #6

attributes #0 = { inlinehint nounwind optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { optsize }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!294, !295, !296, !297, !298, !299}
!llvm.ident = !{!300}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "lock", scope: !2, file: !293, line: 63, type: !246, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !113, globals: !290, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "work.c", directory: "/home/sri/zephyrproject/zephyr/build")
!4 = !{!5, !30}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 3777, baseType: !7, size: 16, elements: !8)
!6 = !DIFile(filename: "include/zephyr/kernel.h", directory: "/home/sri/zephyrproject/zephyr")
!7 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29}
!9 = !DIEnumerator(name: "K_WORK_RUNNING_BIT", value: 0)
!10 = !DIEnumerator(name: "K_WORK_CANCELING_BIT", value: 1)
!11 = !DIEnumerator(name: "K_WORK_QUEUED_BIT", value: 2)
!12 = !DIEnumerator(name: "K_WORK_DELAYED_BIT", value: 3)
!13 = !DIEnumerator(name: "K_WORK_MASK", value: 15)
!14 = !DIEnumerator(name: "K_WORK_DELAYABLE_BIT", value: 8)
!15 = !DIEnumerator(name: "K_WORK_DELAYABLE", value: 256)
!16 = !DIEnumerator(name: "K_WORK_QUEUE_STARTED_BIT", value: 0)
!17 = !DIEnumerator(name: "K_WORK_QUEUE_STARTED", value: 1)
!18 = !DIEnumerator(name: "K_WORK_QUEUE_BUSY_BIT", value: 1)
!19 = !DIEnumerator(name: "K_WORK_QUEUE_BUSY", value: 2)
!20 = !DIEnumerator(name: "K_WORK_QUEUE_DRAIN_BIT", value: 2)
!21 = !DIEnumerator(name: "K_WORK_QUEUE_DRAIN", value: 4)
!22 = !DIEnumerator(name: "K_WORK_QUEUE_PLUGGED_BIT", value: 3)
!23 = !DIEnumerator(name: "K_WORK_QUEUE_PLUGGED", value: 8)
!24 = !DIEnumerator(name: "K_WORK_QUEUE_NO_YIELD_BIT", value: 8)
!25 = !DIEnumerator(name: "K_WORK_QUEUE_NO_YIELD", value: 256)
!26 = !DIEnumerator(name: "K_WORK_RUNNING", value: 1)
!27 = !DIEnumerator(name: "K_WORK_CANCELING", value: 2)
!28 = !DIEnumerator(name: "K_WORK_QUEUED", value: 4)
!29 = !DIEnumerator(name: "K_WORK_DELAYED", value: 8)
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "k_objects", file: !31, line: 29, baseType: !32, size: 8, elements: !33)
!31 = !DIFile(filename: "include/zephyr/sys/kobject.h", directory: "/home/sri/zephyrproject/zephyr")
!32 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!33 = !{!34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112}
!34 = !DIEnumerator(name: "K_OBJ_ANY", value: 0)
!35 = !DIEnumerator(name: "K_OBJ_MEM_SLAB", value: 1)
!36 = !DIEnumerator(name: "K_OBJ_MSGQ", value: 2)
!37 = !DIEnumerator(name: "K_OBJ_MUTEX", value: 3)
!38 = !DIEnumerator(name: "K_OBJ_PIPE", value: 4)
!39 = !DIEnumerator(name: "K_OBJ_QUEUE", value: 5)
!40 = !DIEnumerator(name: "K_OBJ_POLL_SIGNAL", value: 6)
!41 = !DIEnumerator(name: "K_OBJ_SEM", value: 7)
!42 = !DIEnumerator(name: "K_OBJ_STACK", value: 8)
!43 = !DIEnumerator(name: "K_OBJ_THREAD", value: 9)
!44 = !DIEnumerator(name: "K_OBJ_TIMER", value: 10)
!45 = !DIEnumerator(name: "K_OBJ_THREAD_STACK_ELEMENT", value: 11)
!46 = !DIEnumerator(name: "K_OBJ_NET_SOCKET", value: 12)
!47 = !DIEnumerator(name: "K_OBJ_NET_IF", value: 13)
!48 = !DIEnumerator(name: "K_OBJ_SYS_MUTEX", value: 14)
!49 = !DIEnumerator(name: "K_OBJ_FUTEX", value: 15)
!50 = !DIEnumerator(name: "K_OBJ_CONDVAR", value: 16)
!51 = !DIEnumerator(name: "K_OBJ_DRIVER_GPIO", value: 17)
!52 = !DIEnumerator(name: "K_OBJ_DRIVER_RESET", value: 18)
!53 = !DIEnumerator(name: "K_OBJ_DRIVER_UART", value: 19)
!54 = !DIEnumerator(name: "K_OBJ_DRIVER_CRYPTO", value: 20)
!55 = !DIEnumerator(name: "K_OBJ_DRIVER_ADC", value: 21)
!56 = !DIEnumerator(name: "K_OBJ_DRIVER_AUXDISPLAY", value: 22)
!57 = !DIEnumerator(name: "K_OBJ_DRIVER_BBRAM", value: 23)
!58 = !DIEnumerator(name: "K_OBJ_DRIVER_CAN", value: 24)
!59 = !DIEnumerator(name: "K_OBJ_DRIVER_CHARGER", value: 25)
!60 = !DIEnumerator(name: "K_OBJ_DRIVER_COREDUMP", value: 26)
!61 = !DIEnumerator(name: "K_OBJ_DRIVER_COUNTER", value: 27)
!62 = !DIEnumerator(name: "K_OBJ_DRIVER_DAC", value: 28)
!63 = !DIEnumerator(name: "K_OBJ_DRIVER_DAI", value: 29)
!64 = !DIEnumerator(name: "K_OBJ_DRIVER_DMA", value: 30)
!65 = !DIEnumerator(name: "K_OBJ_DRIVER_EDAC", value: 31)
!66 = !DIEnumerator(name: "K_OBJ_DRIVER_EEPROM", value: 32)
!67 = !DIEnumerator(name: "K_OBJ_DRIVER_FUEL_GAUGE_EMUL", value: 33)
!68 = !DIEnumerator(name: "K_OBJ_DRIVER_EMUL_SENSOR_BACKEND_API", value: 34)
!69 = !DIEnumerator(name: "K_OBJ_DRIVER_ENTROPY", value: 35)
!70 = !DIEnumerator(name: "K_OBJ_DRIVER_ESPI", value: 36)
!71 = !DIEnumerator(name: "K_OBJ_DRIVER_ESPI_SAF", value: 37)
!72 = !DIEnumerator(name: "K_OBJ_DRIVER_FLASH", value: 38)
!73 = !DIEnumerator(name: "K_OBJ_DRIVER_FPGA", value: 39)
!74 = !DIEnumerator(name: "K_OBJ_DRIVER_FUEL_GAUGE", value: 40)
!75 = !DIEnumerator(name: "K_OBJ_DRIVER_HWSPINLOCK", value: 41)
!76 = !DIEnumerator(name: "K_OBJ_DRIVER_I2C", value: 42)
!77 = !DIEnumerator(name: "K_OBJ_DRIVER_I2S", value: 43)
!78 = !DIEnumerator(name: "K_OBJ_DRIVER_I3C", value: 44)
!79 = !DIEnumerator(name: "K_OBJ_DRIVER_IPM", value: 45)
!80 = !DIEnumerator(name: "K_OBJ_DRIVER_KSCAN", value: 46)
!81 = !DIEnumerator(name: "K_OBJ_DRIVER_LED", value: 47)
!82 = !DIEnumerator(name: "K_OBJ_DRIVER_MBOX", value: 48)
!83 = !DIEnumerator(name: "K_OBJ_DRIVER_MDIO", value: 49)
!84 = !DIEnumerator(name: "K_OBJ_DRIVER_MIPI_DSI", value: 50)
!85 = !DIEnumerator(name: "K_OBJ_DRIVER_PECI", value: 51)
!86 = !DIEnumerator(name: "K_OBJ_DRIVER_PS2", value: 52)
!87 = !DIEnumerator(name: "K_OBJ_DRIVER_PTP_CLOCK", value: 53)
!88 = !DIEnumerator(name: "K_OBJ_DRIVER_PWM", value: 54)
!89 = !DIEnumerator(name: "K_OBJ_DRIVER_REGULATOR_PARENT", value: 55)
!90 = !DIEnumerator(name: "K_OBJ_DRIVER_REGULATOR", value: 56)
!91 = !DIEnumerator(name: "K_OBJ_DRIVER_RETAINED_MEM", value: 57)
!92 = !DIEnumerator(name: "K_OBJ_DRIVER_RTC", value: 58)
!93 = !DIEnumerator(name: "K_OBJ_DRIVER_SDHC", value: 59)
!94 = !DIEnumerator(name: "K_OBJ_DRIVER_SENSOR", value: 60)
!95 = !DIEnumerator(name: "K_OBJ_DRIVER_SMBUS", value: 61)
!96 = !DIEnumerator(name: "K_OBJ_DRIVER_SPI", value: 62)
!97 = !DIEnumerator(name: "K_OBJ_DRIVER_SYSCON", value: 63)
!98 = !DIEnumerator(name: "K_OBJ_DRIVER_W1", value: 64)
!99 = !DIEnumerator(name: "K_OBJ_DRIVER_WDT", value: 65)
!100 = !DIEnumerator(name: "K_OBJ_DRIVER_CAN_TRANSCEIVER", value: 66)
!101 = !DIEnumerator(name: "K_OBJ_DRIVER_UART_MUX", value: 67)
!102 = !DIEnumerator(name: "K_OBJ_DRIVER_ITS", value: 68)
!103 = !DIEnumerator(name: "K_OBJ_DRIVER_TGPIO", value: 69)
!104 = !DIEnumerator(name: "K_OBJ_DRIVER_PCIE_CTRL", value: 70)
!105 = !DIEnumerator(name: "K_OBJ_DRIVER_SVC", value: 71)
!106 = !DIEnumerator(name: "K_OBJ_DRIVER_BC12_EMUL", value: 72)
!107 = !DIEnumerator(name: "K_OBJ_DRIVER_BC12", value: 73)
!108 = !DIEnumerator(name: "K_OBJ_DRIVER_TCPC", value: 74)
!109 = !DIEnumerator(name: "K_OBJ_DRIVER_IVSHMEM", value: 75)
!110 = !DIEnumerator(name: "K_OBJ_DRIVER_EC_HOST_CMD_BACKEND_API", value: 76)
!111 = !DIEnumerator(name: "K_OBJ_DRIVER_ETHPHY", value: 77)
!112 = !DIEnumerator(name: "K_OBJ_LAST", value: 78)
!113 = !{!114, !119, !120, !121, !265, !267, !277, !137, !278, !284}
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_ticks_t", file: !115, line: 46, baseType: !116)
!115 = !DIFile(filename: "include/zephyr/sys_clock.h", directory: "/home/sri/zephyrproject/zephyr")
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !117, line: 59, baseType: !118)
!117 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/stdint.h", directory: "")
!118 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!120 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 32)
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_work", file: !6, line: 3849, size: 128, elements: !123)
!123 = !{!124, !131, !136, !264}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !122, file: !6, line: 3855, baseType: !125, size: 32)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_snode_t", file: !126, line: 39, baseType: !127)
!126 = !DIFile(filename: "include/zephyr/sys/slist.h", directory: "/home/sri/zephyrproject/zephyr")
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_snode", file: !126, line: 33, size: 32, elements: !128)
!128 = !{!129}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !127, file: !126, line: 34, baseType: !130, size: 32)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 32)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !122, file: !6, line: 3858, baseType: !132, size: 32, offset: 32)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_work_handler_t", file: !6, line: 3257, baseType: !133)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 32)
!134 = !DISubroutineType(types: !135)
!135 = !{null, !121}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !122, file: !6, line: 3861, baseType: !137, size: 32, offset: 64)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 32)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_work_q", file: !6, line: 3996, size: 1152, elements: !139)
!139 = !{!140, !254, !261, !262, !263}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !138, file: !6, line: 3998, baseType: !141, size: 896)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_thread", file: !142, line: 250, size: 896, elements: !143)
!142 = !DIFile(filename: "include/zephyr/kernel/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!143 = !{!144, !213, !226, !227, !228, !229, !249}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !141, file: !142, line: 252, baseType: !145, size: 384)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_base", file: !142, line: 58, size: 384, elements: !146)
!146 = !{!147, !175, !183, !185, !186, !198, !201, !202}
!147 = !DIDerivedType(tag: DW_TAG_member, scope: !145, file: !142, line: 61, baseType: !148, size: 64)
!148 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !145, file: !142, line: 61, size: 64, elements: !149)
!149 = !{!150, !166}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_dlist", scope: !148, file: !142, line: 62, baseType: !151, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dnode_t", file: !152, line: 55, baseType: !153)
!152 = !DIFile(filename: "include/zephyr/sys/dlist.h", directory: "/home/sri/zephyrproject/zephyr")
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_dnode", file: !152, line: 37, size: 64, elements: !154)
!154 = !{!155, !161}
!155 = !DIDerivedType(tag: DW_TAG_member, scope: !153, file: !152, line: 38, baseType: !156, size: 32)
!156 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !153, file: !152, line: 38, size: 32, elements: !157)
!157 = !{!158, !160}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !156, file: !152, line: 39, baseType: !159, size: 32)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 32)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !156, file: !152, line: 40, baseType: !159, size: 32)
!161 = !DIDerivedType(tag: DW_TAG_member, scope: !153, file: !152, line: 42, baseType: !162, size: 32, offset: 32)
!162 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !153, file: !152, line: 42, size: 32, elements: !163)
!163 = !{!164, !165}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !162, file: !152, line: 43, baseType: !159, size: 32)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !162, file: !152, line: 44, baseType: !159, size: 32)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_rb", scope: !148, file: !142, line: 63, baseType: !167, size: 64)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rbnode", file: !168, line: 58, size: 64, elements: !169)
!168 = !DIFile(filename: "include/zephyr/sys/rb.h", directory: "/home/sri/zephyrproject/zephyr")
!169 = !{!170}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !167, file: !168, line: 60, baseType: !171, size: 64)
!171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 64, elements: !173)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 32)
!173 = !{!174}
!174 = !DISubrange(count: 2)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "pended_on", scope: !145, file: !142, line: 69, baseType: !176, size: 32, offset: 64)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 32)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "_wait_q_t", file: !178, line: 243, baseType: !179)
!178 = !DIFile(filename: "include/zephyr/kernel_structs.h", directory: "/home/sri/zephyrproject/zephyr")
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !178, line: 241, size: 64, elements: !180)
!180 = !{!181}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !179, file: !178, line: 242, baseType: !182, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dlist_t", file: !152, line: 51, baseType: !153)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "user_options", scope: !145, file: !142, line: 72, baseType: !184, size: 8, offset: 96)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !117, line: 62, baseType: !32)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "thread_state", scope: !145, file: !142, line: 75, baseType: !184, size: 8, offset: 104)
!186 = !DIDerivedType(tag: DW_TAG_member, scope: !145, file: !142, line: 91, baseType: !187, size: 16, offset: 112)
!187 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !145, file: !142, line: 91, size: 16, elements: !188)
!188 = !{!189, !196}
!189 = !DIDerivedType(tag: DW_TAG_member, scope: !187, file: !142, line: 92, baseType: !190, size: 16)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !187, file: !142, line: 92, size: 16, elements: !191)
!191 = !{!192, !195}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !190, file: !142, line: 97, baseType: !193, size: 8)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !117, line: 56, baseType: !194)
!194 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "sched_locked", scope: !190, file: !142, line: 98, baseType: !184, size: 8, offset: 8)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "preempt", scope: !187, file: !142, line: 101, baseType: !197, size: 16)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !117, line: 63, baseType: !7)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "order_key", scope: !145, file: !142, line: 108, baseType: !199, size: 32, offset: 128)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !117, line: 64, baseType: !200)
!200 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "swap_data", scope: !145, file: !142, line: 132, baseType: !119, size: 32, offset: 160)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !145, file: !142, line: 136, baseType: !203, size: 192, offset: 192)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_timeout", file: !178, line: 254, size: 192, elements: !204)
!204 = !{!205, !206, !212}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !203, file: !178, line: 255, baseType: !151, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !203, file: !178, line: 256, baseType: !207, size: 32, offset: 64)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "_timeout_func_t", file: !178, line: 252, baseType: !208)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 32)
!209 = !DISubroutineType(types: !210)
!210 = !{null, !211}
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 32)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "dticks", scope: !203, file: !178, line: 259, baseType: !116, size: 64, offset: 128)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "callee_saved", scope: !141, file: !142, line: 255, baseType: !214, size: 288, offset: 384)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_callee_saved", file: !215, line: 25, size: 288, elements: !216)
!215 = !DIFile(filename: "include/zephyr/arch/arm/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!216 = !{!217, !218, !219, !220, !221, !222, !223, !224, !225}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "v1", scope: !214, file: !215, line: 26, baseType: !199, size: 32)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "v2", scope: !214, file: !215, line: 27, baseType: !199, size: 32, offset: 32)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "v3", scope: !214, file: !215, line: 28, baseType: !199, size: 32, offset: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "v4", scope: !214, file: !215, line: 29, baseType: !199, size: 32, offset: 96)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "v5", scope: !214, file: !215, line: 30, baseType: !199, size: 32, offset: 128)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "v6", scope: !214, file: !215, line: 31, baseType: !199, size: 32, offset: 160)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "v7", scope: !214, file: !215, line: 32, baseType: !199, size: 32, offset: 192)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "v8", scope: !214, file: !215, line: 33, baseType: !199, size: 32, offset: 224)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "psp", scope: !214, file: !215, line: 34, baseType: !199, size: 32, offset: 256)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "init_data", scope: !141, file: !142, line: 258, baseType: !119, size: 32, offset: 672)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "join_queue", scope: !141, file: !142, line: 261, baseType: !177, size: 64, offset: 704)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "errno_var", scope: !141, file: !142, line: 302, baseType: !120, size: 32, offset: 768)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "resource_pool", scope: !141, file: !142, line: 333, baseType: !230, size: 32, offset: 800)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 32)
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_heap", file: !6, line: 5291, size: 160, elements: !232)
!232 = !{!233, !244, !245}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !231, file: !6, line: 5292, baseType: !234, size: 96)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sys_heap", file: !235, line: 56, size: 96, elements: !236)
!235 = !DIFile(filename: "include/zephyr/sys/sys_heap.h", directory: "/home/sri/zephyrproject/zephyr")
!236 = !{!237, !240, !241}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !234, file: !235, line: 57, baseType: !238, size: 32)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 32)
!239 = !DICompositeType(tag: DW_TAG_structure_type, name: "z_heap", file: !235, line: 57, flags: DIFlagFwdDecl)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "init_mem", scope: !234, file: !235, line: 58, baseType: !119, size: 32, offset: 32)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "init_bytes", scope: !234, file: !235, line: 59, baseType: !242, size: 32, offset: 64)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !243, line: 46, baseType: !200)
!243 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/lib/clang/17/include/stddef.h", directory: "")
!244 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !231, file: !6, line: 5293, baseType: !177, size: 64, offset: 96)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !231, file: !6, line: 5294, baseType: !246, offset: 160)
!246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_spinlock", file: !247, line: 45, elements: !248)
!247 = !DIFile(filename: "include/zephyr/spinlock.h", directory: "/home/sri/zephyrproject/zephyr")
!248 = !{}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !141, file: !142, line: 355, baseType: !250, size: 64, offset: 832)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_arch", file: !215, line: 60, size: 64, elements: !251)
!251 = !{!252, !253}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "basepri", scope: !250, file: !215, line: 63, baseType: !199, size: 32)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "swap_return_value", scope: !250, file: !215, line: 66, baseType: !199, size: 32, offset: 32)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !138, file: !6, line: 4005, baseType: !255, size: 64, offset: 896)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_slist_t", file: !126, line: 49, baseType: !256)
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_slist", file: !126, line: 42, size: 64, elements: !257)
!257 = !{!258, !260}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !256, file: !126, line: 43, baseType: !259, size: 32)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 32)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !256, file: !126, line: 44, baseType: !259, size: 32, offset: 32)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "notifyq", scope: !138, file: !6, line: 4008, baseType: !177, size: 64, offset: 960)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "drainq", scope: !138, file: !6, line: 4011, baseType: !177, size: 64, offset: 1024)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !138, file: !6, line: 4014, baseType: !199, size: 32, offset: 1088)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !122, file: !6, line: 3869, baseType: !199, size: 32, offset: 96)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 32)
!266 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 32)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "z_work_flusher", file: !6, line: 3926, size: 256, elements: !269)
!269 = !{!270, !271}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !268, file: !6, line: 3927, baseType: !122, size: 128)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !268, file: !6, line: 3928, baseType: !272, size: 128, offset: 128)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sem", file: !6, line: 3092, size: 128, elements: !273)
!273 = !{!274, !275, !276}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !272, file: !6, line: 3093, baseType: !177, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !272, file: !6, line: 3094, baseType: !200, size: 32, offset: 64)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !272, file: !6, line: 3095, baseType: !200, size: 32, offset: 96)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 32)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 32)
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "z_work_canceller", file: !6, line: 3937, size: 192, elements: !280)
!280 = !{!281, !282, !283}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !279, file: !6, line: 3938, baseType: !125, size: 32)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !279, file: !6, line: 3939, baseType: !121, size: 32, offset: 32)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !279, file: !6, line: 3940, baseType: !272, size: 128, offset: 64)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 32)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_work_delayable", file: !6, line: 3877, size: 384, elements: !286)
!286 = !{!287, !288, !289}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !285, file: !6, line: 3879, baseType: !122, size: 128)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !285, file: !6, line: 3882, baseType: !203, size: 192, offset: 128)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !285, file: !6, line: 3885, baseType: !137, size: 32, offset: 320)
!290 = !{!0, !291}
!291 = !DIGlobalVariableExpression(var: !292, expr: !DIExpression())
!292 = distinct !DIGlobalVariable(name: "pending_cancels", scope: !2, file: !293, line: 81, type: !255, isLocal: true, isDefinition: true)
!293 = !DIFile(filename: "kernel/work.c", directory: "/home/sri/zephyrproject/zephyr")
!294 = !{i32 7, !"Dwarf Version", i32 4}
!295 = !{i32 2, !"Debug Info Version", i32 3}
!296 = !{i32 1, !"wchar_size", i32 4}
!297 = !{i32 1, !"static_rwdata", i32 1}
!298 = !{i32 1, !"enumsize_buildattr", i32 1}
!299 = !{i32 1, !"armlib_unavailable", i32 0}
!300 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
!301 = distinct !DISubprogram(name: "z_impl_k_object_access_grant", scope: !31, file: !31, line: 223, type: !302, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !307)
!302 = !DISubroutineType(types: !303)
!303 = !{null, !304, !306}
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 32)
!305 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 32)
!307 = !{!308, !309}
!308 = !DILocalVariable(name: "object", arg: 1, scope: !301, file: !31, line: 223, type: !304)
!309 = !DILocalVariable(name: "thread", arg: 2, scope: !301, file: !31, line: 224, type: !306)
!310 = !DILocation(line: 223, column: 61, scope: !301)
!311 = !DILocation(line: 224, column: 24, scope: !301)
!312 = !DILocation(line: 226, column: 9, scope: !301)
!313 = !DILocation(line: 227, column: 9, scope: !301)
!314 = !DILocation(line: 228, column: 1, scope: !301)
!315 = distinct !DISubprogram(name: "z_impl_k_object_release", scope: !31, file: !31, line: 243, type: !316, scopeLine: 244, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !318)
!316 = !DISubroutineType(types: !317)
!317 = !{null, !304}
!318 = !{!319}
!319 = !DILocalVariable(name: "object", arg: 1, scope: !315, file: !31, line: 243, type: !304)
!320 = !DILocation(line: 243, column: 56, scope: !315)
!321 = !DILocation(line: 245, column: 9, scope: !315)
!322 = !DILocation(line: 246, column: 1, scope: !315)
!323 = distinct !DISubprogram(name: "z_impl_k_object_alloc", scope: !31, file: !31, line: 359, type: !324, scopeLine: 360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !326)
!324 = !DISubroutineType(types: !325)
!325 = !{!119, !30}
!326 = !{!327}
!327 = !DILocalVariable(name: "otype", arg: 1, scope: !323, file: !31, line: 359, type: !30)
!328 = !DILocation(line: 359, column: 58, scope: !323)
!329 = !DILocation(line: 361, column: 9, scope: !323)
!330 = !DILocation(line: 363, column: 2, scope: !323)
!331 = distinct !DISubprogram(name: "z_impl_k_object_alloc_size", scope: !31, file: !31, line: 366, type: !332, scopeLine: 368, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !334)
!332 = !DISubroutineType(types: !333)
!333 = !{!119, !30, !242}
!334 = !{!335, !336}
!335 = !DILocalVariable(name: "otype", arg: 1, scope: !331, file: !31, line: 366, type: !30)
!336 = !DILocalVariable(name: "size", arg: 2, scope: !331, file: !31, line: 367, type: !242)
!337 = !DILocation(line: 366, column: 63, scope: !331)
!338 = !DILocation(line: 367, column: 13, scope: !331)
!339 = !DILocation(line: 369, column: 9, scope: !331)
!340 = !DILocation(line: 370, column: 9, scope: !331)
!341 = !DILocation(line: 372, column: 2, scope: !331)
!342 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_expires_ticks", scope: !6, file: !6, line: 656, type: !343, scopeLine: 658, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !347)
!343 = !DISubroutineType(types: !344)
!344 = !{!114, !345}
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 32)
!346 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !141)
!347 = !{!348}
!348 = !DILocalVariable(name: "t", arg: 1, scope: !342, file: !6, line: 657, type: !345)
!349 = !DILocation(line: 657, column: 30, scope: !342)
!350 = !DILocation(line: 659, column: 28, scope: !342)
!351 = !DILocation(line: 659, column: 31, scope: !342)
!352 = !DILocation(line: 659, column: 36, scope: !342)
!353 = !DILocation(line: 659, column: 9, scope: !342)
!354 = !DILocation(line: 659, column: 2, scope: !342)
!355 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_remaining_ticks", scope: !6, file: !6, line: 671, type: !343, scopeLine: 673, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !356)
!356 = !{!357}
!357 = !DILocalVariable(name: "t", arg: 1, scope: !355, file: !6, line: 672, type: !345)
!358 = !DILocation(line: 672, column: 30, scope: !355)
!359 = !DILocation(line: 674, column: 30, scope: !355)
!360 = !DILocation(line: 674, column: 33, scope: !355)
!361 = !DILocation(line: 674, column: 38, scope: !355)
!362 = !DILocation(line: 674, column: 9, scope: !355)
!363 = !DILocation(line: 674, column: 2, scope: !355)
!364 = distinct !DISubprogram(name: "z_impl_k_timer_expires_ticks", scope: !6, file: !6, line: 1634, type: !365, scopeLine: 1636, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !386)
!365 = !DISubroutineType(types: !366)
!366 = !{!114, !367}
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 32)
!368 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !369)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_timer", file: !6, line: 1439, size: 448, elements: !370)
!370 = !{!371, !372, !373, !378, !379, !384, !385}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !369, file: !6, line: 1445, baseType: !203, size: 192)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !369, file: !6, line: 1448, baseType: !177, size: 64, offset: 192)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_fn", scope: !369, file: !6, line: 1451, baseType: !374, size: 32, offset: 256)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 32)
!375 = !DISubroutineType(types: !376)
!376 = !{null, !377}
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 32)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "stop_fn", scope: !369, file: !6, line: 1454, baseType: !374, size: 32, offset: 288)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !369, file: !6, line: 1457, baseType: !380, size: 64, offset: 320)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_timeout_t", file: !115, line: 67, baseType: !381)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !115, line: 65, size: 64, elements: !382)
!382 = !{!383}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "ticks", scope: !381, file: !115, line: 66, baseType: !114, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !369, file: !6, line: 1460, baseType: !199, size: 32, offset: 384)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !369, file: !6, line: 1463, baseType: !119, size: 32, offset: 416)
!386 = !{!387}
!387 = !DILocalVariable(name: "timer", arg: 1, scope: !364, file: !6, line: 1635, type: !367)
!388 = !DILocation(line: 1635, column: 34, scope: !364)
!389 = !DILocation(line: 1637, column: 28, scope: !364)
!390 = !DILocation(line: 1637, column: 35, scope: !364)
!391 = !DILocation(line: 1637, column: 9, scope: !364)
!392 = !DILocation(line: 1637, column: 2, scope: !364)
!393 = distinct !DISubprogram(name: "z_impl_k_timer_remaining_ticks", scope: !6, file: !6, line: 1649, type: !365, scopeLine: 1651, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !394)
!394 = !{!395}
!395 = !DILocalVariable(name: "timer", arg: 1, scope: !393, file: !6, line: 1650, type: !367)
!396 = !DILocation(line: 1650, column: 34, scope: !393)
!397 = !DILocation(line: 1652, column: 30, scope: !393)
!398 = !DILocation(line: 1652, column: 37, scope: !393)
!399 = !DILocation(line: 1652, column: 9, scope: !393)
!400 = !DILocation(line: 1652, column: 2, scope: !393)
!401 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_set", scope: !6, file: !6, line: 1689, type: !402, scopeLine: 1691, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !404)
!402 = !DISubroutineType(types: !403)
!403 = !{null, !377, !119}
!404 = !{!405, !406}
!405 = !DILocalVariable(name: "timer", arg: 1, scope: !401, file: !6, line: 1689, type: !377)
!406 = !DILocalVariable(name: "user_data", arg: 2, scope: !401, file: !6, line: 1690, type: !119)
!407 = !DILocation(line: 1689, column: 65, scope: !401)
!408 = !DILocation(line: 1690, column: 19, scope: !401)
!409 = !DILocation(line: 1692, column: 21, scope: !401)
!410 = !DILocation(line: 1692, column: 2, scope: !401)
!411 = !DILocation(line: 1692, column: 9, scope: !401)
!412 = !DILocation(line: 1692, column: 19, scope: !401)
!413 = !DILocation(line: 1693, column: 1, scope: !401)
!414 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_get", scope: !6, file: !6, line: 1704, type: !415, scopeLine: 1705, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !417)
!415 = !DISubroutineType(types: !416)
!416 = !{!119, !367}
!417 = !{!418}
!418 = !DILocalVariable(name: "timer", arg: 1, scope: !414, file: !6, line: 1704, type: !367)
!419 = !DILocation(line: 1704, column: 72, scope: !414)
!420 = !DILocation(line: 1706, column: 9, scope: !414)
!421 = !DILocation(line: 1706, column: 16, scope: !414)
!422 = !DILocation(line: 1706, column: 2, scope: !414)
!423 = distinct !DISubprogram(name: "z_impl_k_queue_is_empty", scope: !6, file: !6, line: 2071, type: !424, scopeLine: 2072, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !444)
!424 = !DISubroutineType(types: !425)
!425 = !{!120, !426}
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 32)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_queue", file: !6, line: 1830, size: 128, elements: !428)
!428 = !{!429, !442, !443}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "data_q", scope: !427, file: !6, line: 1831, baseType: !430, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sflist_t", file: !431, line: 60, baseType: !432)
!431 = !DIFile(filename: "include/zephyr/sys/sflist.h", directory: "/home/sri/zephyrproject/zephyr")
!432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sflist", file: !431, line: 53, size: 64, elements: !433)
!433 = !{!434, !441}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !432, file: !431, line: 54, baseType: !435, size: 32)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 32)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sfnode_t", file: !431, line: 50, baseType: !437)
!437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sfnode", file: !431, line: 44, size: 32, elements: !438)
!438 = !{!439}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "next_and_flags", scope: !437, file: !431, line: 45, baseType: !440, size: 32)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "unative_t", file: !431, line: 40, baseType: !199)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !432, file: !431, line: 55, baseType: !435, size: 32, offset: 32)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !427, file: !6, line: 1832, baseType: !246, offset: 64)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !427, file: !6, line: 1833, baseType: !177, size: 64, offset: 64)
!444 = !{!445}
!445 = !DILocalVariable(name: "queue", arg: 1, scope: !423, file: !6, line: 2071, type: !426)
!446 = !DILocation(line: 2071, column: 59, scope: !423)
!447 = !DILocation(line: 2073, column: 35, scope: !423)
!448 = !DILocation(line: 2073, column: 42, scope: !423)
!449 = !DILocation(line: 2073, column: 14, scope: !423)
!450 = !DILocation(line: 2073, column: 9, scope: !423)
!451 = !DILocation(line: 2073, column: 2, scope: !423)
!452 = distinct !DISubprogram(name: "z_impl_k_sem_count_get", scope: !6, file: !6, line: 3209, type: !453, scopeLine: 3210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !456)
!453 = !DISubroutineType(types: !454)
!454 = !{!200, !455}
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 32)
!456 = !{!457}
!457 = !DILocalVariable(name: "sem", arg: 1, scope: !452, file: !6, line: 3209, type: !455)
!458 = !DILocation(line: 3209, column: 65, scope: !452)
!459 = !DILocation(line: 3211, column: 9, scope: !452)
!460 = !DILocation(line: 3211, column: 14, scope: !452)
!461 = !DILocation(line: 3211, column: 2, scope: !452)
!462 = distinct !DISubprogram(name: "z_impl_k_msgq_num_free_get", scope: !6, file: !6, line: 4649, type: !463, scopeLine: 4650, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !478)
!463 = !DISubroutineType(types: !464)
!464 = !{!199, !465}
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 32)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_msgq", file: !6, line: 4390, size: 320, elements: !467)
!467 = !{!468, !469, !470, !471, !472, !473, !474, !475, !476, !477}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !466, file: !6, line: 4392, baseType: !177, size: 64)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !466, file: !6, line: 4394, baseType: !246, offset: 64)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "msg_size", scope: !466, file: !6, line: 4396, baseType: !242, size: 32, offset: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !466, file: !6, line: 4398, baseType: !199, size: 32, offset: 96)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_start", scope: !466, file: !6, line: 4400, baseType: !265, size: 32, offset: 128)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_end", scope: !466, file: !6, line: 4402, baseType: !265, size: 32, offset: 160)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "read_ptr", scope: !466, file: !6, line: 4404, baseType: !265, size: 32, offset: 192)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "write_ptr", scope: !466, file: !6, line: 4406, baseType: !265, size: 32, offset: 224)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "used_msgs", scope: !466, file: !6, line: 4408, baseType: !199, size: 32, offset: 256)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !466, file: !6, line: 4413, baseType: !184, size: 8, offset: 288)
!478 = !{!479}
!479 = !DILocalVariable(name: "msgq", arg: 1, scope: !462, file: !6, line: 4649, type: !465)
!480 = !DILocation(line: 4649, column: 66, scope: !462)
!481 = !DILocation(line: 4651, column: 9, scope: !462)
!482 = !DILocation(line: 4651, column: 15, scope: !462)
!483 = !DILocation(line: 4651, column: 26, scope: !462)
!484 = !DILocation(line: 4651, column: 32, scope: !462)
!485 = !DILocation(line: 4651, column: 24, scope: !462)
!486 = !DILocation(line: 4651, column: 2, scope: !462)
!487 = distinct !DISubprogram(name: "z_impl_k_msgq_num_used_get", scope: !6, file: !6, line: 4665, type: !463, scopeLine: 4666, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !488)
!488 = !{!489}
!489 = !DILocalVariable(name: "msgq", arg: 1, scope: !487, file: !6, line: 4665, type: !465)
!490 = !DILocation(line: 4665, column: 66, scope: !487)
!491 = !DILocation(line: 4667, column: 9, scope: !487)
!492 = !DILocation(line: 4667, column: 15, scope: !487)
!493 = !DILocation(line: 4667, column: 2, scope: !487)
!494 = distinct !DISubprogram(name: "k_work_init", scope: !293, file: !293, line: 134, type: !495, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !497)
!495 = !DISubroutineType(types: !496)
!496 = !{null, !121, !132}
!497 = !{!498, !499}
!498 = !DILocalVariable(name: "work", arg: 1, scope: !494, file: !293, line: 134, type: !121)
!499 = !DILocalVariable(name: "handler", arg: 2, scope: !494, file: !293, line: 135, type: !132)
!500 = !DILocation(line: 134, column: 33, scope: !494)
!501 = !DILocation(line: 135, column: 22, scope: !494)
!502 = !DILocation(line: 140, column: 3, scope: !494)
!503 = !DILocation(line: 140, column: 25, scope: !494)
!504 = !DILocation(line: 140, column: 38, scope: !494)
!505 = !DILocation(line: 140, column: 10, scope: !494)
!506 = !DILocation(line: 142, column: 2, scope: !494)
!507 = !DILocation(line: 142, column: 7, scope: !508)
!508 = distinct !DILexicalBlock(scope: !494, file: !293, line: 142, column: 5)
!509 = !DILocation(line: 143, column: 1, scope: !494)
!510 = distinct !DISubprogram(name: "k_work_busy_get", scope: !293, file: !293, line: 150, type: !511, scopeLine: 151, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !515)
!511 = !DISubroutineType(types: !512)
!512 = !{!120, !513}
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 32)
!514 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !122)
!515 = !{!516, !517, !522}
!516 = !DILocalVariable(name: "work", arg: 1, scope: !510, file: !293, line: 150, type: !513)
!517 = !DILocalVariable(name: "key", scope: !510, file: !293, line: 152, type: !518)
!518 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_spinlock_key_t", file: !247, line: 108, baseType: !519)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "z_spinlock_key", file: !247, line: 34, size: 32, elements: !520)
!520 = !{!521}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !519, file: !247, line: 35, baseType: !120, size: 32)
!522 = !DILocalVariable(name: "ret", scope: !510, file: !293, line: 153, type: !120)
!523 = !DILocation(line: 150, column: 42, scope: !510)
!524 = !DILocation(line: 152, column: 2, scope: !510)
!525 = !DILocation(line: 152, column: 19, scope: !510)
!526 = !DILocalVariable(name: "l", arg: 1, scope: !527, file: !247, line: 160, type: !530)
!527 = distinct !DISubprogram(name: "k_spin_lock", scope: !247, file: !247, line: 160, type: !528, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !531)
!528 = !DISubroutineType(types: !529)
!529 = !{!518, !530}
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 32)
!531 = !{!526, !532}
!532 = !DILocalVariable(name: "k", scope: !527, file: !247, line: 163, type: !518)
!533 = !DILocation(line: 160, column: 94, scope: !527, inlinedAt: !534)
!534 = distinct !DILocation(line: 152, column: 25, scope: !510)
!535 = !DILocation(line: 162, column: 9, scope: !527, inlinedAt: !534)
!536 = !DILocation(line: 163, column: 19, scope: !527, inlinedAt: !534)
!537 = !DILocation(line: 44, column: 2, scope: !538, inlinedAt: !544)
!538 = distinct !DISubprogram(name: "arch_irq_lock", scope: !539, file: !539, line: 42, type: !540, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !542)
!539 = !DIFile(filename: "include/zephyr/arch/arm/asm_inline_gcc.h", directory: "/home/sri/zephyrproject/zephyr")
!540 = !DISubroutineType(types: !541)
!541 = !{!200}
!542 = !{!543}
!543 = !DILocalVariable(name: "key", scope: !538, file: !539, line: 44, type: !200)
!544 = distinct !DILocation(line: 169, column: 10, scope: !527, inlinedAt: !534)
!545 = !DILocation(line: 44, column: 15, scope: !538, inlinedAt: !544)
!546 = !DILocation(line: 48, column: 2, scope: !538, inlinedAt: !544)
!547 = !{i64 66942}
!548 = !DILocation(line: 80, column: 9, scope: !538, inlinedAt: !544)
!549 = !DILocation(line: 81, column: 1, scope: !538, inlinedAt: !544)
!550 = !DILocation(line: 169, column: 8, scope: !527, inlinedAt: !534)
!551 = !DILocation(line: 171, column: 26, scope: !527, inlinedAt: !534)
!552 = !DILocalVariable(name: "l", arg: 1, scope: !553, file: !247, line: 110, type: !530)
!553 = distinct !DISubprogram(name: "z_spinlock_validate_pre", scope: !247, file: !247, line: 110, type: !554, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !556)
!554 = !DISubroutineType(types: !555)
!555 = !{null, !530}
!556 = !{!552}
!557 = !DILocation(line: 110, column: 94, scope: !553, inlinedAt: !558)
!558 = distinct !DILocation(line: 171, column: 2, scope: !527, inlinedAt: !534)
!559 = !DILocation(line: 112, column: 9, scope: !553, inlinedAt: !558)
!560 = !DILocation(line: 177, column: 27, scope: !527, inlinedAt: !534)
!561 = !DILocalVariable(name: "l", arg: 1, scope: !562, file: !247, line: 121, type: !530)
!562 = distinct !DISubprogram(name: "z_spinlock_validate_post", scope: !247, file: !247, line: 121, type: !554, scopeLine: 122, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !563)
!563 = !{!561}
!564 = !DILocation(line: 121, column: 95, scope: !562, inlinedAt: !565)
!565 = distinct !DILocation(line: 177, column: 2, scope: !527, inlinedAt: !534)
!566 = !DILocation(line: 123, column: 9, scope: !562, inlinedAt: !565)
!567 = !DILocation(line: 179, column: 2, scope: !527, inlinedAt: !534)
!568 = !DILocation(line: 152, column: 25, scope: !510)
!569 = !DILocation(line: 153, column: 2, scope: !510)
!570 = !DILocation(line: 153, column: 6, scope: !510)
!571 = !DILocation(line: 153, column: 33, scope: !510)
!572 = !DILocation(line: 153, column: 12, scope: !510)
!573 = !DILocation(line: 155, column: 2, scope: !510)
!574 = !DILocalVariable(name: "l", arg: 1, scope: !575, file: !247, line: 235, type: !530)
!575 = distinct !DISubprogram(name: "k_spin_unlock", scope: !247, file: !247, line: 235, type: !576, scopeLine: 237, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !578)
!576 = !DISubroutineType(types: !577)
!577 = !{null, !530, !518}
!578 = !{!574, !579}
!579 = !DILocalVariable(name: "key", arg: 2, scope: !575, file: !247, line: 236, type: !518)
!580 = !DILocation(line: 235, column: 84, scope: !575, inlinedAt: !581)
!581 = distinct !DILocation(line: 155, column: 2, scope: !510)
!582 = !DILocation(line: 236, column: 23, scope: !575, inlinedAt: !581)
!583 = !DILocation(line: 238, column: 9, scope: !575, inlinedAt: !581)
!584 = !DILocation(line: 261, column: 22, scope: !575, inlinedAt: !581)
!585 = !DILocalVariable(name: "key", arg: 1, scope: !586, file: !539, line: 88, type: !200)
!586 = distinct !DISubprogram(name: "arch_irq_unlock", scope: !539, file: !539, line: 88, type: !587, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !589)
!587 = !DISubroutineType(types: !588)
!588 = !{null, !200}
!589 = !{!585}
!590 = !DILocation(line: 88, column: 80, scope: !586, inlinedAt: !591)
!591 = distinct !DILocation(line: 261, column: 2, scope: !575, inlinedAt: !581)
!592 = !DILocation(line: 91, column: 6, scope: !593, inlinedAt: !591)
!593 = distinct !DILexicalBlock(scope: !586, file: !539, line: 91, column: 6)
!594 = !DILocation(line: 91, column: 10, scope: !593, inlinedAt: !591)
!595 = !DILocation(line: 91, column: 6, scope: !586, inlinedAt: !591)
!596 = !DILocation(line: 92, column: 3, scope: !597, inlinedAt: !591)
!597 = distinct !DILexicalBlock(scope: !593, file: !539, line: 91, column: 17)
!598 = !DILocation(line: 94, column: 2, scope: !586, inlinedAt: !591)
!599 = !{i64 67246}
!600 = !DILocation(line: 114, column: 1, scope: !586, inlinedAt: !591)
!601 = !DILocation(line: 157, column: 9, scope: !510)
!602 = !DILocation(line: 158, column: 1, scope: !510)
!603 = !DILocation(line: 157, column: 2, scope: !510)
!604 = distinct !DISubprogram(name: "work_busy_get_locked", scope: !293, file: !293, line: 145, type: !511, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !605)
!605 = !{!606}
!606 = !DILocalVariable(name: "work", arg: 1, scope: !604, file: !293, line: 145, type: !513)
!607 = !DILocation(line: 145, column: 61, scope: !604)
!608 = !DILocation(line: 147, column: 20, scope: !604)
!609 = !DILocation(line: 147, column: 26, scope: !604)
!610 = !DILocation(line: 147, column: 9, scope: !604)
!611 = !DILocation(line: 147, column: 33, scope: !604)
!612 = !DILocation(line: 147, column: 2, scope: !604)
!613 = distinct !DISubprogram(name: "z_work_submit_to_queue", scope: !293, file: !293, line: 369, type: !614, scopeLine: 371, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !616)
!614 = !DISubroutineType(types: !615)
!615 = !{!120, !137, !121}
!616 = !{!617, !618, !619, !620}
!617 = !DILocalVariable(name: "queue", arg: 1, scope: !613, file: !293, line: 369, type: !137)
!618 = !DILocalVariable(name: "work", arg: 2, scope: !613, file: !293, line: 370, type: !121)
!619 = !DILocalVariable(name: "key", scope: !613, file: !293, line: 375, type: !518)
!620 = !DILocalVariable(name: "ret", scope: !613, file: !293, line: 377, type: !120)
!621 = !DILocation(line: 369, column: 45, scope: !613)
!622 = !DILocation(line: 370, column: 20, scope: !613)
!623 = !DILocation(line: 375, column: 2, scope: !613)
!624 = !DILocation(line: 375, column: 19, scope: !613)
!625 = !DILocation(line: 160, column: 94, scope: !527, inlinedAt: !626)
!626 = distinct !DILocation(line: 375, column: 25, scope: !613)
!627 = !DILocation(line: 162, column: 9, scope: !527, inlinedAt: !626)
!628 = !DILocation(line: 163, column: 19, scope: !527, inlinedAt: !626)
!629 = !DILocation(line: 44, column: 2, scope: !538, inlinedAt: !630)
!630 = distinct !DILocation(line: 169, column: 10, scope: !527, inlinedAt: !626)
!631 = !DILocation(line: 44, column: 15, scope: !538, inlinedAt: !630)
!632 = !DILocation(line: 48, column: 2, scope: !538, inlinedAt: !630)
!633 = !DILocation(line: 80, column: 9, scope: !538, inlinedAt: !630)
!634 = !DILocation(line: 81, column: 1, scope: !538, inlinedAt: !630)
!635 = !DILocation(line: 169, column: 8, scope: !527, inlinedAt: !626)
!636 = !DILocation(line: 171, column: 26, scope: !527, inlinedAt: !626)
!637 = !DILocation(line: 110, column: 94, scope: !553, inlinedAt: !638)
!638 = distinct !DILocation(line: 171, column: 2, scope: !527, inlinedAt: !626)
!639 = !DILocation(line: 112, column: 9, scope: !553, inlinedAt: !638)
!640 = !DILocation(line: 177, column: 27, scope: !527, inlinedAt: !626)
!641 = !DILocation(line: 121, column: 95, scope: !562, inlinedAt: !642)
!642 = distinct !DILocation(line: 177, column: 2, scope: !527, inlinedAt: !626)
!643 = !DILocation(line: 123, column: 9, scope: !562, inlinedAt: !642)
!644 = !DILocation(line: 179, column: 2, scope: !527, inlinedAt: !626)
!645 = !DILocation(line: 375, column: 25, scope: !613)
!646 = !DILocation(line: 377, column: 2, scope: !613)
!647 = !DILocation(line: 377, column: 6, scope: !613)
!648 = !DILocation(line: 377, column: 35, scope: !613)
!649 = !DILocation(line: 377, column: 12, scope: !613)
!650 = !DILocation(line: 379, column: 2, scope: !613)
!651 = !DILocation(line: 235, column: 84, scope: !575, inlinedAt: !652)
!652 = distinct !DILocation(line: 379, column: 2, scope: !613)
!653 = !DILocation(line: 236, column: 23, scope: !575, inlinedAt: !652)
!654 = !DILocation(line: 238, column: 9, scope: !575, inlinedAt: !652)
!655 = !DILocation(line: 261, column: 22, scope: !575, inlinedAt: !652)
!656 = !DILocation(line: 88, column: 80, scope: !586, inlinedAt: !657)
!657 = distinct !DILocation(line: 261, column: 2, scope: !575, inlinedAt: !652)
!658 = !DILocation(line: 91, column: 6, scope: !593, inlinedAt: !657)
!659 = !DILocation(line: 91, column: 10, scope: !593, inlinedAt: !657)
!660 = !DILocation(line: 91, column: 6, scope: !586, inlinedAt: !657)
!661 = !DILocation(line: 92, column: 3, scope: !597, inlinedAt: !657)
!662 = !DILocation(line: 94, column: 2, scope: !586, inlinedAt: !657)
!663 = !DILocation(line: 114, column: 1, scope: !586, inlinedAt: !657)
!664 = !DILocation(line: 381, column: 9, scope: !613)
!665 = !DILocation(line: 382, column: 1, scope: !613)
!666 = !DILocation(line: 381, column: 2, scope: !613)
!667 = distinct !DISubprogram(name: "submit_to_queue_locked", scope: !293, file: !293, line: 311, type: !668, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !671)
!668 = !DISubroutineType(types: !669)
!669 = !{!120, !121, !670}
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 32)
!671 = !{!672, !673, !674, !675}
!672 = !DILocalVariable(name: "work", arg: 1, scope: !667, file: !293, line: 311, type: !121)
!673 = !DILocalVariable(name: "queuep", arg: 2, scope: !667, file: !293, line: 312, type: !670)
!674 = !DILocalVariable(name: "ret", scope: !667, file: !293, line: 314, type: !120)
!675 = !DILocalVariable(name: "rc", scope: !676, file: !293, line: 339, type: !120)
!676 = distinct !DILexicalBlock(scope: !677, file: !293, line: 319, column: 58)
!677 = distinct !DILexicalBlock(scope: !678, file: !293, line: 319, column: 13)
!678 = distinct !DILexicalBlock(scope: !667, file: !293, line: 316, column: 6)
!679 = !DILocation(line: 311, column: 50, scope: !667)
!680 = !DILocation(line: 312, column: 25, scope: !667)
!681 = !DILocation(line: 314, column: 2, scope: !667)
!682 = !DILocation(line: 314, column: 6, scope: !667)
!683 = !DILocation(line: 316, column: 17, scope: !678)
!684 = !DILocation(line: 316, column: 23, scope: !678)
!685 = !DILocation(line: 316, column: 6, scope: !678)
!686 = !DILocation(line: 316, column: 6, scope: !667)
!687 = !DILocation(line: 318, column: 7, scope: !688)
!688 = distinct !DILexicalBlock(scope: !678, file: !293, line: 316, column: 53)
!689 = !DILocation(line: 319, column: 2, scope: !688)
!690 = !DILocation(line: 319, column: 25, scope: !677)
!691 = !DILocation(line: 319, column: 31, scope: !677)
!692 = !DILocation(line: 319, column: 14, scope: !677)
!693 = !DILocation(line: 319, column: 13, scope: !678)
!694 = !DILocation(line: 321, column: 7, scope: !676)
!695 = !DILocation(line: 325, column: 8, scope: !696)
!696 = distinct !DILexicalBlock(scope: !676, file: !293, line: 325, column: 7)
!697 = !DILocation(line: 325, column: 7, scope: !696)
!698 = !DILocation(line: 325, column: 15, scope: !696)
!699 = !DILocation(line: 325, column: 7, scope: !676)
!700 = !DILocation(line: 326, column: 14, scope: !701)
!701 = distinct !DILexicalBlock(scope: !696, file: !293, line: 325, column: 21)
!702 = !DILocation(line: 326, column: 20, scope: !701)
!703 = !DILocation(line: 326, column: 5, scope: !701)
!704 = !DILocation(line: 326, column: 12, scope: !701)
!705 = !DILocation(line: 327, column: 3, scope: !701)
!706 = !DILocation(line: 333, column: 18, scope: !707)
!707 = distinct !DILexicalBlock(scope: !676, file: !293, line: 333, column: 7)
!708 = !DILocation(line: 333, column: 24, scope: !707)
!709 = !DILocation(line: 333, column: 7, scope: !707)
!710 = !DILocation(line: 333, column: 7, scope: !676)
!711 = !DILocation(line: 335, column: 14, scope: !712)
!712 = distinct !DILexicalBlock(scope: !707, file: !293, line: 333, column: 52)
!713 = !DILocation(line: 335, column: 20, scope: !712)
!714 = !DILocation(line: 335, column: 5, scope: !712)
!715 = !DILocation(line: 335, column: 12, scope: !712)
!716 = !DILocation(line: 336, column: 8, scope: !712)
!717 = !DILocation(line: 337, column: 3, scope: !712)
!718 = !DILocation(line: 339, column: 3, scope: !676)
!719 = !DILocation(line: 339, column: 7, scope: !676)
!720 = !DILocation(line: 339, column: 33, scope: !676)
!721 = !DILocation(line: 339, column: 32, scope: !676)
!722 = !DILocation(line: 339, column: 41, scope: !676)
!723 = !DILocation(line: 339, column: 12, scope: !676)
!724 = !DILocation(line: 341, column: 7, scope: !725)
!725 = distinct !DILexicalBlock(scope: !676, file: !293, line: 341, column: 7)
!726 = !DILocation(line: 341, column: 10, scope: !725)
!727 = !DILocation(line: 341, column: 7, scope: !676)
!728 = !DILocation(line: 342, column: 10, scope: !729)
!729 = distinct !DILexicalBlock(scope: !725, file: !293, line: 341, column: 15)
!730 = !DILocation(line: 342, column: 8, scope: !729)
!731 = !DILocation(line: 343, column: 3, scope: !729)
!732 = !DILocation(line: 344, column: 14, scope: !733)
!733 = distinct !DILexicalBlock(scope: !725, file: !293, line: 343, column: 10)
!734 = !DILocation(line: 344, column: 20, scope: !733)
!735 = !DILocation(line: 344, column: 4, scope: !733)
!736 = !DILocation(line: 345, column: 19, scope: !733)
!737 = !DILocation(line: 345, column: 18, scope: !733)
!738 = !DILocation(line: 345, column: 4, scope: !733)
!739 = !DILocation(line: 345, column: 10, scope: !733)
!740 = !DILocation(line: 345, column: 16, scope: !733)
!741 = !DILocation(line: 347, column: 2, scope: !677)
!742 = !DILocation(line: 347, column: 2, scope: !676)
!743 = !DILocation(line: 351, column: 6, scope: !744)
!744 = distinct !DILexicalBlock(scope: !667, file: !293, line: 351, column: 6)
!745 = !DILocation(line: 351, column: 10, scope: !744)
!746 = !DILocation(line: 351, column: 6, scope: !667)
!747 = !DILocation(line: 352, column: 4, scope: !748)
!748 = distinct !DILexicalBlock(scope: !744, file: !293, line: 351, column: 16)
!749 = !DILocation(line: 352, column: 11, scope: !748)
!750 = !DILocation(line: 353, column: 2, scope: !748)
!751 = !DILocation(line: 355, column: 9, scope: !667)
!752 = !DILocation(line: 356, column: 1, scope: !667)
!753 = !DILocation(line: 355, column: 2, scope: !667)
!754 = distinct !DISubprogram(name: "k_work_submit_to_queue", scope: !293, file: !293, line: 384, type: !614, scopeLine: 386, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !755)
!755 = !{!756, !757, !758}
!756 = !DILocalVariable(name: "queue", arg: 1, scope: !754, file: !293, line: 384, type: !137)
!757 = !DILocalVariable(name: "work", arg: 2, scope: !754, file: !293, line: 385, type: !121)
!758 = !DILocalVariable(name: "ret", scope: !754, file: !293, line: 389, type: !120)
!759 = !DILocation(line: 384, column: 45, scope: !754)
!760 = !DILocation(line: 385, column: 23, scope: !754)
!761 = !DILocation(line: 387, column: 2, scope: !754)
!762 = !DILocation(line: 387, column: 7, scope: !763)
!763 = distinct !DILexicalBlock(scope: !754, file: !293, line: 387, column: 5)
!764 = !DILocation(line: 389, column: 2, scope: !754)
!765 = !DILocation(line: 389, column: 6, scope: !754)
!766 = !DILocation(line: 389, column: 35, scope: !754)
!767 = !DILocation(line: 389, column: 42, scope: !754)
!768 = !DILocation(line: 389, column: 12, scope: !754)
!769 = !DILocation(line: 396, column: 6, scope: !770)
!770 = distinct !DILexicalBlock(scope: !754, file: !293, line: 396, column: 6)
!771 = !DILocation(line: 396, column: 10, scope: !770)
!772 = !DILocation(line: 396, column: 6, scope: !754)
!773 = !DILocation(line: 397, column: 3, scope: !774)
!774 = distinct !DILexicalBlock(scope: !770, file: !293, line: 396, column: 15)
!775 = !DILocation(line: 398, column: 2, scope: !774)
!776 = !DILocation(line: 400, column: 2, scope: !754)
!777 = !DILocation(line: 400, column: 7, scope: !778)
!778 = distinct !DILexicalBlock(scope: !754, file: !293, line: 400, column: 5)
!779 = !DILocation(line: 402, column: 9, scope: !754)
!780 = !DILocation(line: 403, column: 1, scope: !754)
!781 = !DILocation(line: 402, column: 2, scope: !754)
!782 = distinct !DISubprogram(name: "z_reschedule_unlocked", scope: !783, file: !783, line: 75, type: !784, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !248)
!783 = !DIFile(filename: "kernel/include/ksched.h", directory: "/home/sri/zephyrproject/zephyr")
!784 = !DISubroutineType(types: !785)
!785 = !{null}
!786 = !DILocation(line: 44, column: 2, scope: !538, inlinedAt: !787)
!787 = distinct !DILocation(line: 77, column: 30, scope: !782)
!788 = !DILocation(line: 44, column: 15, scope: !538, inlinedAt: !787)
!789 = !DILocation(line: 48, column: 2, scope: !538, inlinedAt: !787)
!790 = !DILocation(line: 80, column: 9, scope: !538, inlinedAt: !787)
!791 = !DILocation(line: 81, column: 1, scope: !538, inlinedAt: !787)
!792 = !DILocation(line: 77, column: 9, scope: !782)
!793 = !DILocation(line: 78, column: 1, scope: !782)
!794 = distinct !DISubprogram(name: "k_work_submit", scope: !293, file: !293, line: 405, type: !795, scopeLine: 406, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !797)
!795 = !DISubroutineType(types: !796)
!796 = !{!120, !121}
!797 = !{!798, !799}
!798 = !DILocalVariable(name: "work", arg: 1, scope: !794, file: !293, line: 405, type: !121)
!799 = !DILocalVariable(name: "ret", scope: !794, file: !293, line: 409, type: !120)
!800 = !DILocation(line: 405, column: 34, scope: !794)
!801 = !DILocation(line: 407, column: 2, scope: !794)
!802 = !DILocation(line: 407, column: 7, scope: !803)
!803 = distinct !DILexicalBlock(scope: !794, file: !293, line: 407, column: 5)
!804 = !DILocation(line: 409, column: 2, scope: !794)
!805 = !DILocation(line: 409, column: 6, scope: !794)
!806 = !DILocation(line: 409, column: 50, scope: !794)
!807 = !DILocation(line: 409, column: 12, scope: !794)
!808 = !DILocation(line: 411, column: 2, scope: !794)
!809 = !DILocation(line: 411, column: 7, scope: !810)
!810 = distinct !DILexicalBlock(scope: !794, file: !293, line: 411, column: 5)
!811 = !DILocation(line: 413, column: 9, scope: !794)
!812 = !DILocation(line: 414, column: 1, scope: !794)
!813 = !DILocation(line: 413, column: 2, scope: !794)
!814 = distinct !DISubprogram(name: "k_work_flush", scope: !293, file: !293, line: 449, type: !815, scopeLine: 451, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !826)
!815 = !DISubroutineType(types: !816)
!816 = !{!817, !121, !818}
!817 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 32)
!819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_work_sync", file: !6, line: 3960, size: 256, elements: !820)
!820 = !{!821}
!821 = !DIDerivedType(tag: DW_TAG_member, scope: !819, file: !6, line: 3961, baseType: !822, size: 256)
!822 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !819, file: !6, line: 3961, size: 256, elements: !823)
!823 = !{!824, !825}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "flusher", scope: !822, file: !6, line: 3962, baseType: !268, size: 256)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "canceller", scope: !822, file: !6, line: 3963, baseType: !279, size: 192)
!826 = !{!827, !828, !829, !830, !831}
!827 = !DILocalVariable(name: "work", arg: 1, scope: !814, file: !293, line: 449, type: !121)
!828 = !DILocalVariable(name: "sync", arg: 2, scope: !814, file: !293, line: 450, type: !818)
!829 = !DILocalVariable(name: "flusher", scope: !814, file: !293, line: 462, type: !267)
!830 = !DILocalVariable(name: "key", scope: !814, file: !293, line: 463, type: !518)
!831 = !DILocalVariable(name: "need_flush", scope: !814, file: !293, line: 465, type: !817)
!832 = !DILocation(line: 449, column: 35, scope: !814)
!833 = !DILocation(line: 450, column: 25, scope: !814)
!834 = !DILocation(line: 460, column: 2, scope: !814)
!835 = !DILocation(line: 460, column: 7, scope: !836)
!836 = distinct !DILexicalBlock(scope: !814, file: !293, line: 460, column: 5)
!837 = !DILocation(line: 462, column: 2, scope: !814)
!838 = !DILocation(line: 462, column: 25, scope: !814)
!839 = !DILocation(line: 462, column: 36, scope: !814)
!840 = !DILocation(line: 462, column: 42, scope: !814)
!841 = !DILocation(line: 463, column: 2, scope: !814)
!842 = !DILocation(line: 463, column: 19, scope: !814)
!843 = !DILocation(line: 160, column: 94, scope: !527, inlinedAt: !844)
!844 = distinct !DILocation(line: 463, column: 25, scope: !814)
!845 = !DILocation(line: 162, column: 9, scope: !527, inlinedAt: !844)
!846 = !DILocation(line: 163, column: 19, scope: !527, inlinedAt: !844)
!847 = !DILocation(line: 44, column: 2, scope: !538, inlinedAt: !848)
!848 = distinct !DILocation(line: 169, column: 10, scope: !527, inlinedAt: !844)
!849 = !DILocation(line: 44, column: 15, scope: !538, inlinedAt: !848)
!850 = !DILocation(line: 48, column: 2, scope: !538, inlinedAt: !848)
!851 = !DILocation(line: 80, column: 9, scope: !538, inlinedAt: !848)
!852 = !DILocation(line: 81, column: 1, scope: !538, inlinedAt: !848)
!853 = !DILocation(line: 169, column: 8, scope: !527, inlinedAt: !844)
!854 = !DILocation(line: 171, column: 26, scope: !527, inlinedAt: !844)
!855 = !DILocation(line: 110, column: 94, scope: !553, inlinedAt: !856)
!856 = distinct !DILocation(line: 171, column: 2, scope: !527, inlinedAt: !844)
!857 = !DILocation(line: 112, column: 9, scope: !553, inlinedAt: !856)
!858 = !DILocation(line: 177, column: 27, scope: !527, inlinedAt: !844)
!859 = !DILocation(line: 121, column: 95, scope: !562, inlinedAt: !860)
!860 = distinct !DILocation(line: 177, column: 2, scope: !527, inlinedAt: !844)
!861 = !DILocation(line: 123, column: 9, scope: !562, inlinedAt: !860)
!862 = !DILocation(line: 179, column: 2, scope: !527, inlinedAt: !844)
!863 = !DILocation(line: 463, column: 25, scope: !814)
!864 = !DILocation(line: 465, column: 2, scope: !814)
!865 = !DILocation(line: 465, column: 8, scope: !814)
!866 = !DILocation(line: 465, column: 39, scope: !814)
!867 = !DILocation(line: 465, column: 45, scope: !814)
!868 = !DILocation(line: 465, column: 21, scope: !814)
!869 = !DILocation(line: 467, column: 2, scope: !814)
!870 = !DILocation(line: 235, column: 84, scope: !575, inlinedAt: !871)
!871 = distinct !DILocation(line: 467, column: 2, scope: !814)
!872 = !DILocation(line: 236, column: 23, scope: !575, inlinedAt: !871)
!873 = !DILocation(line: 238, column: 9, scope: !575, inlinedAt: !871)
!874 = !DILocation(line: 261, column: 22, scope: !575, inlinedAt: !871)
!875 = !DILocation(line: 88, column: 80, scope: !586, inlinedAt: !876)
!876 = distinct !DILocation(line: 261, column: 2, scope: !575, inlinedAt: !871)
!877 = !DILocation(line: 91, column: 6, scope: !593, inlinedAt: !876)
!878 = !DILocation(line: 91, column: 10, scope: !593, inlinedAt: !876)
!879 = !DILocation(line: 91, column: 6, scope: !586, inlinedAt: !876)
!880 = !DILocation(line: 92, column: 3, scope: !597, inlinedAt: !876)
!881 = !DILocation(line: 94, column: 2, scope: !586, inlinedAt: !876)
!882 = !DILocation(line: 114, column: 1, scope: !586, inlinedAt: !876)
!883 = !DILocation(line: 470, column: 6, scope: !884)
!884 = distinct !DILexicalBlock(scope: !814, file: !293, line: 470, column: 6)
!885 = !{i8 0, i8 2}
!886 = !DILocation(line: 470, column: 6, scope: !814)
!887 = !DILocation(line: 471, column: 3, scope: !888)
!888 = distinct !DILexicalBlock(scope: !884, file: !293, line: 470, column: 18)
!889 = !DILocation(line: 471, column: 8, scope: !890)
!890 = distinct !DILexicalBlock(scope: !888, file: !293, line: 471, column: 6)
!891 = !DILocation(line: 473, column: 15, scope: !888)
!892 = !DILocation(line: 473, column: 24, scope: !888)
!893 = !DILocation(line: 473, column: 44, scope: !888)
!894 = !DILocation(line: 473, column: 3, scope: !888)
!895 = !DILocation(line: 474, column: 2, scope: !888)
!896 = !DILocation(line: 476, column: 2, scope: !814)
!897 = !DILocation(line: 476, column: 7, scope: !898)
!898 = distinct !DILexicalBlock(scope: !814, file: !293, line: 476, column: 5)
!899 = !DILocation(line: 478, column: 9, scope: !814)
!900 = !DILocation(line: 479, column: 1, scope: !814)
!901 = !DILocation(line: 478, column: 2, scope: !814)
!902 = distinct !DISubprogram(name: "work_flush_locked", scope: !293, file: !293, line: 431, type: !903, scopeLine: 433, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !905)
!903 = !DISubroutineType(types: !904)
!904 = !{!817, !121, !267}
!905 = !{!906, !907, !908, !909}
!906 = !DILocalVariable(name: "work", arg: 1, scope: !902, file: !293, line: 431, type: !121)
!907 = !DILocalVariable(name: "flusher", arg: 2, scope: !902, file: !293, line: 432, type: !267)
!908 = !DILocalVariable(name: "need_flush", scope: !902, file: !293, line: 434, type: !817)
!909 = !DILocalVariable(name: "queue", scope: !910, file: !293, line: 438, type: !137)
!910 = distinct !DILexicalBlock(scope: !911, file: !293, line: 437, column: 18)
!911 = distinct !DILexicalBlock(scope: !902, file: !293, line: 437, column: 6)
!912 = !DILocation(line: 431, column: 47, scope: !902)
!913 = !DILocation(line: 432, column: 33, scope: !902)
!914 = !DILocation(line: 434, column: 2, scope: !902)
!915 = !DILocation(line: 434, column: 8, scope: !902)
!916 = !DILocation(line: 434, column: 33, scope: !902)
!917 = !DILocation(line: 434, column: 39, scope: !902)
!918 = !DILocation(line: 434, column: 22, scope: !902)
!919 = !DILocation(line: 435, column: 7, scope: !902)
!920 = !DILocation(line: 435, column: 43, scope: !902)
!921 = !DILocation(line: 437, column: 6, scope: !911)
!922 = !DILocation(line: 437, column: 6, scope: !902)
!923 = !DILocation(line: 438, column: 3, scope: !910)
!924 = !DILocation(line: 438, column: 20, scope: !910)
!925 = !DILocation(line: 438, column: 28, scope: !910)
!926 = !DILocation(line: 438, column: 34, scope: !910)
!927 = !DILocation(line: 442, column: 24, scope: !910)
!928 = !DILocation(line: 442, column: 31, scope: !910)
!929 = !DILocation(line: 442, column: 37, scope: !910)
!930 = !DILocation(line: 442, column: 3, scope: !910)
!931 = !DILocation(line: 443, column: 23, scope: !910)
!932 = !DILocation(line: 443, column: 3, scope: !910)
!933 = !DILocation(line: 444, column: 2, scope: !911)
!934 = !DILocation(line: 444, column: 2, scope: !910)
!935 = !DILocation(line: 446, column: 9, scope: !902)
!936 = !DILocation(line: 447, column: 1, scope: !902)
!937 = !DILocation(line: 446, column: 2, scope: !902)
!938 = distinct !DISubprogram(name: "k_sem_take", scope: !939, file: !939, line: 1093, type: !940, scopeLine: 1094, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !942)
!939 = !DIFile(filename: "zephyr/include/generated/syscalls/kernel.h", directory: "/home/sri/zephyrproject/zephyr/build")
!940 = !DISubroutineType(types: !941)
!941 = !{!120, !455, !380}
!942 = !{!943, !944}
!943 = !DILocalVariable(name: "sem", arg: 1, scope: !938, file: !939, line: 1093, type: !455)
!944 = !DILocalVariable(name: "timeout", arg: 2, scope: !938, file: !939, line: 1093, type: !380)
!945 = !DILocation(line: 1093, column: 45, scope: !938)
!946 = !DILocation(line: 1093, column: 62, scope: !938)
!947 = !DILocation(line: 1102, column: 2, scope: !938)
!948 = !DILocation(line: 1102, column: 7, scope: !949)
!949 = distinct !DILexicalBlock(scope: !938, file: !939, line: 1102, column: 5)
!950 = !{i64 150120}
!951 = !DILocation(line: 1102, column: 47, scope: !949)
!952 = !DILocation(line: 1103, column: 27, scope: !938)
!953 = !DILocation(line: 1103, column: 9, scope: !938)
!954 = !DILocation(line: 1103, column: 2, scope: !938)
!955 = distinct !DISubprogram(name: "k_work_cancel", scope: !293, file: !293, line: 544, type: !795, scopeLine: 545, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !956)
!956 = !{!957, !958, !959}
!957 = !DILocalVariable(name: "work", arg: 1, scope: !955, file: !293, line: 544, type: !121)
!958 = !DILocalVariable(name: "key", scope: !955, file: !293, line: 551, type: !518)
!959 = !DILocalVariable(name: "ret", scope: !955, file: !293, line: 552, type: !120)
!960 = !DILocation(line: 544, column: 34, scope: !955)
!961 = !DILocation(line: 549, column: 2, scope: !955)
!962 = !DILocation(line: 549, column: 7, scope: !963)
!963 = distinct !DILexicalBlock(scope: !955, file: !293, line: 549, column: 5)
!964 = !DILocation(line: 551, column: 2, scope: !955)
!965 = !DILocation(line: 551, column: 19, scope: !955)
!966 = !DILocation(line: 160, column: 94, scope: !527, inlinedAt: !967)
!967 = distinct !DILocation(line: 551, column: 25, scope: !955)
!968 = !DILocation(line: 162, column: 9, scope: !527, inlinedAt: !967)
!969 = !DILocation(line: 163, column: 19, scope: !527, inlinedAt: !967)
!970 = !DILocation(line: 44, column: 2, scope: !538, inlinedAt: !971)
!971 = distinct !DILocation(line: 169, column: 10, scope: !527, inlinedAt: !967)
!972 = !DILocation(line: 44, column: 15, scope: !538, inlinedAt: !971)
!973 = !DILocation(line: 48, column: 2, scope: !538, inlinedAt: !971)
!974 = !DILocation(line: 80, column: 9, scope: !538, inlinedAt: !971)
!975 = !DILocation(line: 81, column: 1, scope: !538, inlinedAt: !971)
!976 = !DILocation(line: 169, column: 8, scope: !527, inlinedAt: !967)
!977 = !DILocation(line: 171, column: 26, scope: !527, inlinedAt: !967)
!978 = !DILocation(line: 110, column: 94, scope: !553, inlinedAt: !979)
!979 = distinct !DILocation(line: 171, column: 2, scope: !527, inlinedAt: !967)
!980 = !DILocation(line: 112, column: 9, scope: !553, inlinedAt: !979)
!981 = !DILocation(line: 177, column: 27, scope: !527, inlinedAt: !967)
!982 = !DILocation(line: 121, column: 95, scope: !562, inlinedAt: !983)
!983 = distinct !DILocation(line: 177, column: 2, scope: !527, inlinedAt: !967)
!984 = !DILocation(line: 123, column: 9, scope: !562, inlinedAt: !983)
!985 = !DILocation(line: 179, column: 2, scope: !527, inlinedAt: !967)
!986 = !DILocation(line: 551, column: 25, scope: !955)
!987 = !DILocation(line: 552, column: 2, scope: !955)
!988 = !DILocation(line: 552, column: 6, scope: !955)
!989 = !DILocation(line: 552, column: 32, scope: !955)
!990 = !DILocation(line: 552, column: 12, scope: !955)
!991 = !DILocation(line: 554, column: 2, scope: !955)
!992 = !DILocation(line: 235, column: 84, scope: !575, inlinedAt: !993)
!993 = distinct !DILocation(line: 554, column: 2, scope: !955)
!994 = !DILocation(line: 236, column: 23, scope: !575, inlinedAt: !993)
!995 = !DILocation(line: 238, column: 9, scope: !575, inlinedAt: !993)
!996 = !DILocation(line: 261, column: 22, scope: !575, inlinedAt: !993)
!997 = !DILocation(line: 88, column: 80, scope: !586, inlinedAt: !998)
!998 = distinct !DILocation(line: 261, column: 2, scope: !575, inlinedAt: !993)
!999 = !DILocation(line: 91, column: 6, scope: !593, inlinedAt: !998)
!1000 = !DILocation(line: 91, column: 10, scope: !593, inlinedAt: !998)
!1001 = !DILocation(line: 91, column: 6, scope: !586, inlinedAt: !998)
!1002 = !DILocation(line: 92, column: 3, scope: !597, inlinedAt: !998)
!1003 = !DILocation(line: 94, column: 2, scope: !586, inlinedAt: !998)
!1004 = !DILocation(line: 114, column: 1, scope: !586, inlinedAt: !998)
!1005 = !DILocation(line: 556, column: 2, scope: !955)
!1006 = !DILocation(line: 556, column: 7, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !955, file: !293, line: 556, column: 5)
!1008 = !DILocation(line: 558, column: 9, scope: !955)
!1009 = !DILocation(line: 559, column: 1, scope: !955)
!1010 = !DILocation(line: 558, column: 2, scope: !955)
!1011 = distinct !DISubprogram(name: "cancel_async_locked", scope: !293, file: !293, line: 492, type: !795, scopeLine: 493, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1012)
!1012 = !{!1013, !1014}
!1013 = !DILocalVariable(name: "work", arg: 1, scope: !1011, file: !293, line: 492, type: !121)
!1014 = !DILocalVariable(name: "ret", scope: !1011, file: !293, line: 503, type: !120)
!1015 = !DILocation(line: 492, column: 47, scope: !1011)
!1016 = !DILocation(line: 495, column: 18, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !1011, file: !293, line: 495, column: 6)
!1018 = !DILocation(line: 495, column: 24, scope: !1017)
!1019 = !DILocation(line: 495, column: 7, scope: !1017)
!1020 = !DILocation(line: 495, column: 6, scope: !1011)
!1021 = !DILocation(line: 497, column: 23, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !1017, file: !293, line: 495, column: 54)
!1023 = !DILocation(line: 497, column: 29, scope: !1022)
!1024 = !DILocation(line: 497, column: 36, scope: !1022)
!1025 = !DILocation(line: 497, column: 3, scope: !1022)
!1026 = !DILocation(line: 498, column: 2, scope: !1022)
!1027 = !DILocation(line: 503, column: 2, scope: !1011)
!1028 = !DILocation(line: 503, column: 6, scope: !1011)
!1029 = !DILocation(line: 503, column: 33, scope: !1011)
!1030 = !DILocation(line: 503, column: 12, scope: !1011)
!1031 = !DILocation(line: 505, column: 6, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1011, file: !293, line: 505, column: 6)
!1033 = !DILocation(line: 505, column: 10, scope: !1032)
!1034 = !DILocation(line: 505, column: 6, scope: !1011)
!1035 = !DILocation(line: 506, column: 13, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !1032, file: !293, line: 505, column: 16)
!1037 = !DILocation(line: 506, column: 19, scope: !1036)
!1038 = !DILocation(line: 506, column: 3, scope: !1036)
!1039 = !DILocation(line: 507, column: 30, scope: !1036)
!1040 = !DILocation(line: 507, column: 9, scope: !1036)
!1041 = !DILocation(line: 507, column: 7, scope: !1036)
!1042 = !DILocation(line: 508, column: 2, scope: !1036)
!1043 = !DILocation(line: 510, column: 9, scope: !1011)
!1044 = !DILocation(line: 511, column: 1, scope: !1011)
!1045 = !DILocation(line: 510, column: 2, scope: !1011)
!1046 = distinct !DISubprogram(name: "k_work_cancel_sync", scope: !293, file: !293, line: 561, type: !815, scopeLine: 563, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1047)
!1047 = !{!1048, !1049, !1050, !1051, !1052, !1053}
!1048 = !DILocalVariable(name: "work", arg: 1, scope: !1046, file: !293, line: 561, type: !121)
!1049 = !DILocalVariable(name: "sync", arg: 2, scope: !1046, file: !293, line: 562, type: !818)
!1050 = !DILocalVariable(name: "canceller", scope: !1046, file: !293, line: 574, type: !278)
!1051 = !DILocalVariable(name: "key", scope: !1046, file: !293, line: 575, type: !518)
!1052 = !DILocalVariable(name: "pending", scope: !1046, file: !293, line: 576, type: !817)
!1053 = !DILocalVariable(name: "need_wait", scope: !1046, file: !293, line: 577, type: !817)
!1054 = !DILocation(line: 561, column: 41, scope: !1046)
!1055 = !DILocation(line: 562, column: 24, scope: !1046)
!1056 = !DILocation(line: 572, column: 2, scope: !1046)
!1057 = !DILocation(line: 572, column: 7, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !1046, file: !293, line: 572, column: 5)
!1059 = !DILocation(line: 574, column: 2, scope: !1046)
!1060 = !DILocation(line: 574, column: 27, scope: !1046)
!1061 = !DILocation(line: 574, column: 40, scope: !1046)
!1062 = !DILocation(line: 574, column: 46, scope: !1046)
!1063 = !DILocation(line: 575, column: 2, scope: !1046)
!1064 = !DILocation(line: 575, column: 19, scope: !1046)
!1065 = !DILocation(line: 160, column: 94, scope: !527, inlinedAt: !1066)
!1066 = distinct !DILocation(line: 575, column: 25, scope: !1046)
!1067 = !DILocation(line: 162, column: 9, scope: !527, inlinedAt: !1066)
!1068 = !DILocation(line: 163, column: 19, scope: !527, inlinedAt: !1066)
!1069 = !DILocation(line: 44, column: 2, scope: !538, inlinedAt: !1070)
!1070 = distinct !DILocation(line: 169, column: 10, scope: !527, inlinedAt: !1066)
!1071 = !DILocation(line: 44, column: 15, scope: !538, inlinedAt: !1070)
!1072 = !DILocation(line: 48, column: 2, scope: !538, inlinedAt: !1070)
!1073 = !DILocation(line: 80, column: 9, scope: !538, inlinedAt: !1070)
!1074 = !DILocation(line: 81, column: 1, scope: !538, inlinedAt: !1070)
!1075 = !DILocation(line: 169, column: 8, scope: !527, inlinedAt: !1066)
!1076 = !DILocation(line: 171, column: 26, scope: !527, inlinedAt: !1066)
!1077 = !DILocation(line: 110, column: 94, scope: !553, inlinedAt: !1078)
!1078 = distinct !DILocation(line: 171, column: 2, scope: !527, inlinedAt: !1066)
!1079 = !DILocation(line: 112, column: 9, scope: !553, inlinedAt: !1078)
!1080 = !DILocation(line: 177, column: 27, scope: !527, inlinedAt: !1066)
!1081 = !DILocation(line: 121, column: 95, scope: !562, inlinedAt: !1082)
!1082 = distinct !DILocation(line: 177, column: 2, scope: !527, inlinedAt: !1066)
!1083 = !DILocation(line: 123, column: 9, scope: !562, inlinedAt: !1082)
!1084 = !DILocation(line: 179, column: 2, scope: !527, inlinedAt: !1066)
!1085 = !DILocation(line: 575, column: 25, scope: !1046)
!1086 = !DILocation(line: 576, column: 2, scope: !1046)
!1087 = !DILocation(line: 576, column: 8, scope: !1046)
!1088 = !DILocation(line: 576, column: 40, scope: !1046)
!1089 = !DILocation(line: 576, column: 19, scope: !1046)
!1090 = !DILocation(line: 576, column: 46, scope: !1046)
!1091 = !DILocation(line: 577, column: 2, scope: !1046)
!1092 = !DILocation(line: 577, column: 8, scope: !1046)
!1093 = !DILocation(line: 579, column: 6, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !1046, file: !293, line: 579, column: 6)
!1095 = !DILocation(line: 579, column: 6, scope: !1046)
!1096 = !DILocation(line: 580, column: 29, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !1094, file: !293, line: 579, column: 15)
!1098 = !DILocation(line: 580, column: 9, scope: !1097)
!1099 = !DILocation(line: 581, column: 34, scope: !1097)
!1100 = !DILocation(line: 581, column: 40, scope: !1097)
!1101 = !DILocation(line: 581, column: 15, scope: !1097)
!1102 = !DILocation(line: 581, column: 13, scope: !1097)
!1103 = !DILocation(line: 582, column: 2, scope: !1097)
!1104 = !DILocation(line: 584, column: 2, scope: !1046)
!1105 = !DILocation(line: 235, column: 84, scope: !575, inlinedAt: !1106)
!1106 = distinct !DILocation(line: 584, column: 2, scope: !1046)
!1107 = !DILocation(line: 236, column: 23, scope: !575, inlinedAt: !1106)
!1108 = !DILocation(line: 238, column: 9, scope: !575, inlinedAt: !1106)
!1109 = !DILocation(line: 261, column: 22, scope: !575, inlinedAt: !1106)
!1110 = !DILocation(line: 88, column: 80, scope: !586, inlinedAt: !1111)
!1111 = distinct !DILocation(line: 261, column: 2, scope: !575, inlinedAt: !1106)
!1112 = !DILocation(line: 91, column: 6, scope: !593, inlinedAt: !1111)
!1113 = !DILocation(line: 91, column: 10, scope: !593, inlinedAt: !1111)
!1114 = !DILocation(line: 91, column: 6, scope: !586, inlinedAt: !1111)
!1115 = !DILocation(line: 92, column: 3, scope: !597, inlinedAt: !1111)
!1116 = !DILocation(line: 94, column: 2, scope: !586, inlinedAt: !1111)
!1117 = !DILocation(line: 114, column: 1, scope: !586, inlinedAt: !1111)
!1118 = !DILocation(line: 586, column: 6, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !1046, file: !293, line: 586, column: 6)
!1120 = !DILocation(line: 586, column: 6, scope: !1046)
!1121 = !DILocation(line: 587, column: 3, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !1119, file: !293, line: 586, column: 17)
!1123 = !DILocation(line: 587, column: 8, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1122, file: !293, line: 587, column: 6)
!1125 = !DILocation(line: 589, column: 15, scope: !1122)
!1126 = !DILocation(line: 589, column: 26, scope: !1122)
!1127 = !DILocation(line: 589, column: 46, scope: !1122)
!1128 = !DILocation(line: 589, column: 3, scope: !1122)
!1129 = !DILocation(line: 590, column: 2, scope: !1122)
!1130 = !DILocation(line: 592, column: 2, scope: !1046)
!1131 = !DILocation(line: 592, column: 7, scope: !1132)
!1132 = distinct !DILexicalBlock(scope: !1046, file: !293, line: 592, column: 5)
!1133 = !DILocation(line: 593, column: 9, scope: !1046)
!1134 = !DILocation(line: 594, column: 1, scope: !1046)
!1135 = !DILocation(line: 593, column: 2, scope: !1046)
!1136 = distinct !DISubprogram(name: "cancel_sync_locked", scope: !293, file: !293, line: 528, type: !1137, scopeLine: 530, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1139)
!1137 = !DISubroutineType(types: !1138)
!1138 = !{!817, !121, !278}
!1139 = !{!1140, !1141, !1142}
!1140 = !DILocalVariable(name: "work", arg: 1, scope: !1136, file: !293, line: 528, type: !121)
!1141 = !DILocalVariable(name: "canceller", arg: 2, scope: !1136, file: !293, line: 529, type: !278)
!1142 = !DILocalVariable(name: "ret", scope: !1136, file: !293, line: 531, type: !817)
!1143 = !DILocation(line: 528, column: 48, scope: !1136)
!1144 = !DILocation(line: 529, column: 36, scope: !1136)
!1145 = !DILocation(line: 531, column: 2, scope: !1136)
!1146 = !DILocation(line: 531, column: 8, scope: !1136)
!1147 = !DILocation(line: 531, column: 25, scope: !1136)
!1148 = !DILocation(line: 531, column: 31, scope: !1136)
!1149 = !DILocation(line: 531, column: 14, scope: !1136)
!1150 = !DILocation(line: 537, column: 6, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !1136, file: !293, line: 537, column: 6)
!1152 = !DILocation(line: 537, column: 6, scope: !1136)
!1153 = !DILocation(line: 538, column: 20, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !1151, file: !293, line: 537, column: 11)
!1155 = !DILocation(line: 538, column: 31, scope: !1154)
!1156 = !DILocation(line: 538, column: 3, scope: !1154)
!1157 = !DILocation(line: 539, column: 2, scope: !1154)
!1158 = !DILocation(line: 541, column: 9, scope: !1136)
!1159 = !DILocation(line: 542, column: 1, scope: !1136)
!1160 = !DILocation(line: 541, column: 2, scope: !1136)
!1161 = distinct !DISubprogram(name: "k_work_queue_init", scope: !293, file: !293, line: 699, type: !1162, scopeLine: 700, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1164)
!1162 = !DISubroutineType(types: !1163)
!1163 = !{null, !137}
!1164 = !{!1165}
!1165 = !DILocalVariable(name: "queue", arg: 1, scope: !1161, file: !293, line: 699, type: !137)
!1166 = !DILocation(line: 699, column: 41, scope: !1161)
!1167 = !DILocation(line: 703, column: 3, scope: !1161)
!1168 = !DILocation(line: 703, column: 11, scope: !1161)
!1169 = !DILocation(line: 707, column: 2, scope: !1161)
!1170 = !DILocation(line: 707, column: 7, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !1161, file: !293, line: 707, column: 5)
!1172 = !DILocation(line: 708, column: 1, scope: !1161)
!1173 = distinct !DISubprogram(name: "k_work_queue_start", scope: !293, file: !293, line: 710, type: !1174, scopeLine: 715, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1193)
!1174 = !DISubroutineType(types: !1175)
!1175 = !{null, !137, !1176, !1183, !120, !1185}
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 32)
!1177 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_thread_stack_t", file: !1178, line: 44, baseType: !1179)
!1178 = !DIFile(filename: "include/zephyr/sys/arch_interface.h", directory: "/home/sri/zephyrproject/zephyr")
!1179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "z_thread_stack_element", file: !1180, line: 47, size: 8, elements: !1181)
!1180 = !DIFile(filename: "include/zephyr/kernel/thread_stack.h", directory: "/home/sri/zephyrproject/zephyr")
!1181 = !{!1182}
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1179, file: !1180, line: 48, baseType: !266, size: 8)
!1183 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1184, line: 51, baseType: !200)
!1184 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/string.h", directory: "")
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 32)
!1186 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1187)
!1187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_work_queue_config", file: !6, line: 3973, size: 64, elements: !1188)
!1188 = !{!1189, !1192}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1187, file: !6, line: 3978, baseType: !1190, size: 32)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 32)
!1191 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !266)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "no_yield", scope: !1187, file: !6, line: 3992, baseType: !817, size: 8, offset: 32)
!1193 = !{!1194, !1195, !1196, !1197, !1198, !1199}
!1194 = !DILocalVariable(name: "queue", arg: 1, scope: !1173, file: !293, line: 710, type: !137)
!1195 = !DILocalVariable(name: "stack", arg: 2, scope: !1173, file: !293, line: 711, type: !1176)
!1196 = !DILocalVariable(name: "stack_size", arg: 3, scope: !1173, file: !293, line: 712, type: !1183)
!1197 = !DILocalVariable(name: "prio", arg: 4, scope: !1173, file: !293, line: 713, type: !120)
!1198 = !DILocalVariable(name: "cfg", arg: 5, scope: !1173, file: !293, line: 714, type: !1185)
!1199 = !DILocalVariable(name: "flags", scope: !1173, file: !293, line: 719, type: !199)
!1200 = !DILocation(line: 710, column: 42, scope: !1173)
!1201 = !DILocation(line: 711, column: 22, scope: !1173)
!1202 = !DILocation(line: 712, column: 11, scope: !1173)
!1203 = !DILocation(line: 713, column: 8, scope: !1173)
!1204 = !DILocation(line: 714, column: 38, scope: !1173)
!1205 = !DILocation(line: 719, column: 2, scope: !1173)
!1206 = !DILocation(line: 719, column: 11, scope: !1173)
!1207 = !DILocation(line: 721, column: 2, scope: !1173)
!1208 = !DILocation(line: 721, column: 7, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1173, file: !293, line: 721, column: 5)
!1210 = !DILocation(line: 723, column: 18, scope: !1173)
!1211 = !DILocation(line: 723, column: 25, scope: !1173)
!1212 = !DILocation(line: 723, column: 2, scope: !1173)
!1213 = !DILocation(line: 724, column: 16, scope: !1173)
!1214 = !DILocation(line: 724, column: 23, scope: !1173)
!1215 = !DILocation(line: 724, column: 2, scope: !1173)
!1216 = !DILocation(line: 725, column: 16, scope: !1173)
!1217 = !DILocation(line: 725, column: 23, scope: !1173)
!1218 = !DILocation(line: 725, column: 2, scope: !1173)
!1219 = !DILocation(line: 727, column: 7, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1173, file: !293, line: 727, column: 6)
!1221 = !DILocation(line: 727, column: 11, scope: !1220)
!1222 = !DILocation(line: 727, column: 17, scope: !1220)
!1223 = !DILocation(line: 727, column: 20, scope: !1220)
!1224 = !DILocation(line: 727, column: 25, scope: !1220)
!1225 = !DILocation(line: 727, column: 6, scope: !1173)
!1226 = !DILocation(line: 728, column: 9, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1220, file: !293, line: 727, column: 35)
!1228 = !DILocation(line: 729, column: 2, scope: !1227)
!1229 = !DILocation(line: 735, column: 13, scope: !1173)
!1230 = !DILocation(line: 735, column: 20, scope: !1173)
!1231 = !DILocation(line: 735, column: 27, scope: !1173)
!1232 = !DILocation(line: 735, column: 2, scope: !1173)
!1233 = !DILocation(line: 737, column: 25, scope: !1173)
!1234 = !DILocation(line: 737, column: 32, scope: !1173)
!1235 = !DILocation(line: 737, column: 40, scope: !1173)
!1236 = !DILocation(line: 737, column: 47, scope: !1173)
!1237 = !DILocation(line: 738, column: 27, scope: !1173)
!1238 = !DILocation(line: 739, column: 10, scope: !1173)
!1239 = !DILocation(line: 739, column: 34, scope: !1173)
!1240 = !DILocation(line: 737, column: 8, scope: !1173)
!1241 = !DILocation(line: 741, column: 7, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !1173, file: !293, line: 741, column: 6)
!1243 = !DILocation(line: 741, column: 11, scope: !1242)
!1244 = !DILocation(line: 741, column: 17, scope: !1242)
!1245 = !DILocation(line: 741, column: 21, scope: !1242)
!1246 = !DILocation(line: 741, column: 26, scope: !1242)
!1247 = !DILocation(line: 741, column: 31, scope: !1242)
!1248 = !DILocation(line: 741, column: 6, scope: !1173)
!1249 = !DILocation(line: 742, column: 22, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1242, file: !293, line: 741, column: 38)
!1251 = !DILocation(line: 742, column: 29, scope: !1250)
!1252 = !DILocation(line: 742, column: 37, scope: !1250)
!1253 = !DILocation(line: 742, column: 42, scope: !1250)
!1254 = !DILocation(line: 742, column: 3, scope: !1250)
!1255 = !DILocation(line: 743, column: 2, scope: !1250)
!1256 = !DILocation(line: 745, column: 18, scope: !1173)
!1257 = !DILocation(line: 745, column: 25, scope: !1173)
!1258 = !DILocation(line: 745, column: 2, scope: !1173)
!1259 = !DILocation(line: 747, column: 2, scope: !1173)
!1260 = !DILocation(line: 747, column: 7, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1173, file: !293, line: 747, column: 5)
!1262 = !DILocation(line: 748, column: 1, scope: !1173)
!1263 = distinct !DISubprogram(name: "sys_slist_init", scope: !126, file: !126, line: 199, type: !1264, scopeLine: 200, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1267)
!1264 = !DISubroutineType(types: !1265)
!1265 = !{null, !1266}
!1266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 32)
!1267 = !{!1268}
!1268 = !DILocalVariable(name: "list", arg: 1, scope: !1263, file: !126, line: 199, type: !1266)
!1269 = !DILocation(line: 199, column: 48, scope: !1263)
!1270 = !DILocation(line: 201, column: 2, scope: !1263)
!1271 = !DILocation(line: 201, column: 8, scope: !1263)
!1272 = !DILocation(line: 201, column: 13, scope: !1263)
!1273 = !DILocation(line: 202, column: 2, scope: !1263)
!1274 = !DILocation(line: 202, column: 8, scope: !1263)
!1275 = !DILocation(line: 202, column: 13, scope: !1263)
!1276 = !DILocation(line: 203, column: 1, scope: !1263)
!1277 = distinct !DISubprogram(name: "z_waitq_init", scope: !1278, file: !1278, line: 47, type: !1279, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1281)
!1278 = !DIFile(filename: "kernel/include/wait_q.h", directory: "/home/sri/zephyrproject/zephyr")
!1279 = !DISubroutineType(types: !1280)
!1280 = !{null, !176}
!1281 = !{!1282}
!1282 = !DILocalVariable(name: "w", arg: 1, scope: !1277, file: !1278, line: 47, type: !176)
!1283 = !DILocation(line: 47, column: 44, scope: !1277)
!1284 = !DILocation(line: 49, column: 18, scope: !1277)
!1285 = !DILocation(line: 49, column: 21, scope: !1277)
!1286 = !DILocation(line: 49, column: 2, scope: !1277)
!1287 = !DILocation(line: 50, column: 1, scope: !1277)
!1288 = distinct !DISubprogram(name: "flags_set", scope: !293, file: !293, line: 49, type: !1289, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1292)
!1289 = !DISubroutineType(types: !1290)
!1290 = !{null, !1291, !199}
!1291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 32)
!1292 = !{!1293, !1294}
!1293 = !DILocalVariable(name: "flagp", arg: 1, scope: !1288, file: !293, line: 49, type: !1291)
!1294 = !DILocalVariable(name: "flags", arg: 2, scope: !1288, file: !293, line: 50, type: !199)
!1295 = !DILocation(line: 49, column: 40, scope: !1288)
!1296 = !DILocation(line: 50, column: 18, scope: !1288)
!1297 = !DILocation(line: 52, column: 11, scope: !1288)
!1298 = !DILocation(line: 52, column: 3, scope: !1288)
!1299 = !DILocation(line: 52, column: 9, scope: !1288)
!1300 = !DILocation(line: 53, column: 1, scope: !1288)
!1301 = distinct !DISubprogram(name: "k_thread_create", scope: !939, file: !939, line: 59, type: !1302, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1309)
!1302 = !DISubroutineType(types: !1303)
!1303 = !{!1304, !306, !1176, !242, !1305, !119, !119, !119, !120, !199, !380}
!1304 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_tid_t", file: !142, line: 359, baseType: !306)
!1305 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_thread_entry_t", file: !1178, line: 46, baseType: !1306)
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1307, size: 32)
!1307 = !DISubroutineType(types: !1308)
!1308 = !{null, !119, !119, !119}
!1309 = !{!1310, !1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319}
!1310 = !DILocalVariable(name: "new_thread", arg: 1, scope: !1301, file: !939, line: 59, type: !306)
!1311 = !DILocalVariable(name: "stack", arg: 2, scope: !1301, file: !939, line: 59, type: !1176)
!1312 = !DILocalVariable(name: "stack_size", arg: 3, scope: !1301, file: !939, line: 59, type: !242)
!1313 = !DILocalVariable(name: "entry", arg: 4, scope: !1301, file: !939, line: 59, type: !1305)
!1314 = !DILocalVariable(name: "p1", arg: 5, scope: !1301, file: !939, line: 59, type: !119)
!1315 = !DILocalVariable(name: "p2", arg: 6, scope: !1301, file: !939, line: 59, type: !119)
!1316 = !DILocalVariable(name: "p3", arg: 7, scope: !1301, file: !939, line: 59, type: !119)
!1317 = !DILocalVariable(name: "prio", arg: 8, scope: !1301, file: !939, line: 59, type: !120)
!1318 = !DILocalVariable(name: "options", arg: 9, scope: !1301, file: !939, line: 59, type: !199)
!1319 = !DILocalVariable(name: "delay", arg: 10, scope: !1301, file: !939, line: 59, type: !380)
!1320 = !DILocation(line: 59, column: 57, scope: !1301)
!1321 = !DILocation(line: 59, column: 88, scope: !1301)
!1322 = !DILocation(line: 59, column: 102, scope: !1301)
!1323 = !DILocation(line: 59, column: 131, scope: !1301)
!1324 = !DILocation(line: 59, column: 145, scope: !1301)
!1325 = !DILocation(line: 59, column: 156, scope: !1301)
!1326 = !DILocation(line: 59, column: 167, scope: !1301)
!1327 = !DILocation(line: 59, column: 175, scope: !1301)
!1328 = !DILocation(line: 59, column: 190, scope: !1301)
!1329 = !DILocation(line: 59, column: 211, scope: !1301)
!1330 = !DILocation(line: 84, column: 2, scope: !1301)
!1331 = !DILocation(line: 84, column: 7, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1301, file: !939, line: 84, column: 5)
!1333 = !{i64 133295}
!1334 = !DILocation(line: 84, column: 47, scope: !1332)
!1335 = !DILocation(line: 85, column: 32, scope: !1301)
!1336 = !DILocation(line: 85, column: 44, scope: !1301)
!1337 = !DILocation(line: 85, column: 51, scope: !1301)
!1338 = !DILocation(line: 85, column: 63, scope: !1301)
!1339 = !DILocation(line: 85, column: 70, scope: !1301)
!1340 = !DILocation(line: 85, column: 74, scope: !1301)
!1341 = !DILocation(line: 85, column: 78, scope: !1301)
!1342 = !DILocation(line: 85, column: 82, scope: !1301)
!1343 = !DILocation(line: 85, column: 88, scope: !1301)
!1344 = !DILocation(line: 85, column: 9, scope: !1301)
!1345 = !DILocation(line: 85, column: 2, scope: !1301)
!1346 = distinct !DISubprogram(name: "work_queue_main", scope: !293, file: !293, line: 600, type: !1307, scopeLine: 601, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1347)
!1347 = !{!1348, !1349, !1350, !1351, !1352, !1354, !1355, !1356, !1357}
!1348 = !DILocalVariable(name: "workq_ptr", arg: 1, scope: !1346, file: !293, line: 600, type: !119)
!1349 = !DILocalVariable(name: "p2", arg: 2, scope: !1346, file: !293, line: 600, type: !119)
!1350 = !DILocalVariable(name: "p3", arg: 3, scope: !1346, file: !293, line: 600, type: !119)
!1351 = !DILocalVariable(name: "queue", scope: !1346, file: !293, line: 605, type: !137)
!1352 = !DILocalVariable(name: "node", scope: !1353, file: !293, line: 608, type: !259)
!1353 = distinct !DILexicalBlock(scope: !1346, file: !293, line: 607, column: 12)
!1354 = !DILocalVariable(name: "work", scope: !1353, file: !293, line: 609, type: !121)
!1355 = !DILocalVariable(name: "handler", scope: !1353, file: !293, line: 610, type: !132)
!1356 = !DILocalVariable(name: "key", scope: !1353, file: !293, line: 611, type: !518)
!1357 = !DILocalVariable(name: "yield", scope: !1353, file: !293, line: 612, type: !817)
!1358 = !DILocation(line: 600, column: 35, scope: !1346)
!1359 = !DILocation(line: 600, column: 52, scope: !1346)
!1360 = !DILocation(line: 600, column: 62, scope: !1346)
!1361 = !DILocation(line: 602, column: 9, scope: !1346)
!1362 = !DILocation(line: 603, column: 9, scope: !1346)
!1363 = !DILocation(line: 605, column: 2, scope: !1346)
!1364 = !DILocation(line: 605, column: 19, scope: !1346)
!1365 = !DILocation(line: 605, column: 46, scope: !1346)
!1366 = !DILocation(line: 607, column: 2, scope: !1346)
!1367 = !DILocation(line: 608, column: 3, scope: !1353)
!1368 = !DILocation(line: 608, column: 16, scope: !1353)
!1369 = !DILocation(line: 609, column: 3, scope: !1353)
!1370 = !DILocation(line: 609, column: 18, scope: !1353)
!1371 = !DILocation(line: 610, column: 3, scope: !1353)
!1372 = !DILocation(line: 610, column: 20, scope: !1353)
!1373 = !DILocation(line: 611, column: 3, scope: !1353)
!1374 = !DILocation(line: 611, column: 20, scope: !1353)
!1375 = !DILocation(line: 160, column: 94, scope: !527, inlinedAt: !1376)
!1376 = distinct !DILocation(line: 611, column: 26, scope: !1353)
!1377 = !DILocation(line: 162, column: 9, scope: !527, inlinedAt: !1376)
!1378 = !DILocation(line: 163, column: 19, scope: !527, inlinedAt: !1376)
!1379 = !DILocation(line: 44, column: 2, scope: !538, inlinedAt: !1380)
!1380 = distinct !DILocation(line: 169, column: 10, scope: !527, inlinedAt: !1376)
!1381 = !DILocation(line: 44, column: 15, scope: !538, inlinedAt: !1380)
!1382 = !DILocation(line: 48, column: 2, scope: !538, inlinedAt: !1380)
!1383 = !DILocation(line: 80, column: 9, scope: !538, inlinedAt: !1380)
!1384 = !DILocation(line: 81, column: 1, scope: !538, inlinedAt: !1380)
!1385 = !DILocation(line: 169, column: 8, scope: !527, inlinedAt: !1376)
!1386 = !DILocation(line: 171, column: 26, scope: !527, inlinedAt: !1376)
!1387 = !DILocation(line: 110, column: 94, scope: !553, inlinedAt: !1388)
!1388 = distinct !DILocation(line: 171, column: 2, scope: !527, inlinedAt: !1376)
!1389 = !DILocation(line: 112, column: 9, scope: !553, inlinedAt: !1388)
!1390 = !DILocation(line: 177, column: 27, scope: !527, inlinedAt: !1376)
!1391 = !DILocation(line: 121, column: 95, scope: !562, inlinedAt: !1392)
!1392 = distinct !DILocation(line: 177, column: 2, scope: !527, inlinedAt: !1376)
!1393 = !DILocation(line: 123, column: 9, scope: !562, inlinedAt: !1392)
!1394 = !DILocation(line: 179, column: 2, scope: !527, inlinedAt: !1376)
!1395 = !DILocation(line: 611, column: 26, scope: !1353)
!1396 = !DILocation(line: 612, column: 3, scope: !1353)
!1397 = !DILocation(line: 612, column: 9, scope: !1353)
!1398 = !DILocation(line: 615, column: 25, scope: !1353)
!1399 = !DILocation(line: 615, column: 32, scope: !1353)
!1400 = !DILocation(line: 615, column: 10, scope: !1353)
!1401 = !DILocation(line: 615, column: 8, scope: !1353)
!1402 = !DILocation(line: 616, column: 7, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !1353, file: !293, line: 616, column: 7)
!1404 = !DILocation(line: 616, column: 12, scope: !1403)
!1405 = !DILocation(line: 616, column: 7, scope: !1353)
!1406 = !DILocation(line: 620, column: 14, scope: !1407)
!1407 = distinct !DILexicalBlock(scope: !1403, file: !293, line: 616, column: 18)
!1408 = !DILocation(line: 620, column: 21, scope: !1407)
!1409 = !DILocation(line: 620, column: 4, scope: !1407)
!1410 = !DILocation(line: 621, column: 45, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !1407, file: !293, line: 621, column: 12)
!1412 = !DILocation(line: 621, column: 52, scope: !1411)
!1413 = !DILocation(line: 621, column: 12, scope: !1407)
!1414 = !DILocation(line: 621, column: 97, scope: !1411)
!1415 = !DILocation(line: 621, column: 9, scope: !1407)
!1416 = !DILocation(line: 622, column: 14, scope: !1407)
!1417 = !DILocation(line: 622, column: 20, scope: !1407)
!1418 = !DILocation(line: 622, column: 4, scope: !1407)
!1419 = !DILocation(line: 623, column: 16, scope: !1407)
!1420 = !DILocation(line: 623, column: 22, scope: !1407)
!1421 = !DILocation(line: 623, column: 4, scope: !1407)
!1422 = !DILocation(line: 637, column: 14, scope: !1407)
!1423 = !DILocation(line: 637, column: 20, scope: !1407)
!1424 = !DILocation(line: 637, column: 12, scope: !1407)
!1425 = !DILocation(line: 638, column: 3, scope: !1407)
!1426 = !DILocation(line: 638, column: 35, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !1403, file: !293, line: 638, column: 14)
!1428 = !DILocation(line: 638, column: 42, scope: !1427)
!1429 = !DILocation(line: 638, column: 14, scope: !1427)
!1430 = !DILocation(line: 638, column: 14, scope: !1403)
!1431 = !DILocation(line: 649, column: 28, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1427, file: !293, line: 639, column: 38)
!1433 = !DILocation(line: 649, column: 35, scope: !1432)
!1434 = !DILocation(line: 649, column: 10, scope: !1432)
!1435 = !DILocation(line: 650, column: 3, scope: !1432)
!1436 = !DILocation(line: 657, column: 7, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !1353, file: !293, line: 657, column: 7)
!1438 = !DILocation(line: 657, column: 12, scope: !1437)
!1439 = !DILocation(line: 657, column: 7, scope: !1353)
!1440 = !DILocation(line: 664, column: 36, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !1437, file: !293, line: 657, column: 18)
!1442 = !DILocation(line: 664, column: 43, scope: !1441)
!1443 = !DILocation(line: 665, column: 24, scope: !1441)
!1444 = !DILocation(line: 664, column: 10, scope: !1441)
!1445 = !DILocation(line: 666, column: 4, scope: !1441)
!1446 = distinct !{!1446, !1366, !1447}
!1447 = !DILocation(line: 696, column: 2, scope: !1346)
!1448 = !DILocation(line: 669, column: 3, scope: !1353)
!1449 = !DILocation(line: 235, column: 84, scope: !575, inlinedAt: !1450)
!1450 = distinct !DILocation(line: 669, column: 3, scope: !1353)
!1451 = !DILocation(line: 236, column: 23, scope: !575, inlinedAt: !1450)
!1452 = !DILocation(line: 238, column: 9, scope: !575, inlinedAt: !1450)
!1453 = !DILocation(line: 261, column: 22, scope: !575, inlinedAt: !1450)
!1454 = !DILocation(line: 88, column: 80, scope: !586, inlinedAt: !1455)
!1455 = distinct !DILocation(line: 261, column: 2, scope: !575, inlinedAt: !1450)
!1456 = !DILocation(line: 91, column: 6, scope: !593, inlinedAt: !1455)
!1457 = !DILocation(line: 91, column: 10, scope: !593, inlinedAt: !1455)
!1458 = !DILocation(line: 91, column: 6, scope: !586, inlinedAt: !1455)
!1459 = !DILocation(line: 92, column: 3, scope: !597, inlinedAt: !1455)
!1460 = !DILocation(line: 94, column: 2, scope: !586, inlinedAt: !1455)
!1461 = !DILocation(line: 114, column: 1, scope: !586, inlinedAt: !1455)
!1462 = !DILocation(line: 672, column: 3, scope: !1353)
!1463 = !DILocation(line: 672, column: 11, scope: !1353)
!1464 = !DILocation(line: 679, column: 9, scope: !1353)
!1465 = !DILocation(line: 160, column: 94, scope: !527, inlinedAt: !1466)
!1466 = distinct !DILocation(line: 679, column: 9, scope: !1353)
!1467 = !DILocation(line: 162, column: 9, scope: !527, inlinedAt: !1466)
!1468 = !DILocation(line: 163, column: 19, scope: !527, inlinedAt: !1466)
!1469 = !DILocation(line: 44, column: 2, scope: !538, inlinedAt: !1470)
!1470 = distinct !DILocation(line: 169, column: 10, scope: !527, inlinedAt: !1466)
!1471 = !DILocation(line: 44, column: 15, scope: !538, inlinedAt: !1470)
!1472 = !DILocation(line: 48, column: 2, scope: !538, inlinedAt: !1470)
!1473 = !DILocation(line: 80, column: 9, scope: !538, inlinedAt: !1470)
!1474 = !DILocation(line: 81, column: 1, scope: !538, inlinedAt: !1470)
!1475 = !DILocation(line: 169, column: 8, scope: !527, inlinedAt: !1466)
!1476 = !DILocation(line: 171, column: 26, scope: !527, inlinedAt: !1466)
!1477 = !DILocation(line: 110, column: 94, scope: !553, inlinedAt: !1478)
!1478 = distinct !DILocation(line: 171, column: 2, scope: !527, inlinedAt: !1466)
!1479 = !DILocation(line: 112, column: 9, scope: !553, inlinedAt: !1478)
!1480 = !DILocation(line: 177, column: 27, scope: !527, inlinedAt: !1466)
!1481 = !DILocation(line: 121, column: 95, scope: !562, inlinedAt: !1482)
!1482 = distinct !DILocation(line: 177, column: 2, scope: !527, inlinedAt: !1466)
!1483 = !DILocation(line: 123, column: 9, scope: !562, inlinedAt: !1482)
!1484 = !DILocation(line: 179, column: 2, scope: !527, inlinedAt: !1466)
!1485 = !DILocation(line: 681, column: 15, scope: !1353)
!1486 = !DILocation(line: 681, column: 21, scope: !1353)
!1487 = !DILocation(line: 681, column: 3, scope: !1353)
!1488 = !DILocation(line: 682, column: 18, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !1353, file: !293, line: 682, column: 7)
!1490 = !DILocation(line: 682, column: 24, scope: !1489)
!1491 = !DILocation(line: 682, column: 7, scope: !1489)
!1492 = !DILocation(line: 682, column: 7, scope: !1353)
!1493 = !DILocation(line: 683, column: 27, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1489, file: !293, line: 682, column: 54)
!1495 = !DILocation(line: 683, column: 4, scope: !1494)
!1496 = !DILocation(line: 684, column: 3, scope: !1494)
!1497 = !DILocation(line: 686, column: 15, scope: !1353)
!1498 = !DILocation(line: 686, column: 22, scope: !1353)
!1499 = !DILocation(line: 686, column: 3, scope: !1353)
!1500 = !DILocation(line: 687, column: 23, scope: !1353)
!1501 = !DILocation(line: 687, column: 30, scope: !1353)
!1502 = !DILocation(line: 687, column: 12, scope: !1353)
!1503 = !DILocation(line: 687, column: 11, scope: !1353)
!1504 = !DILocation(line: 687, column: 9, scope: !1353)
!1505 = !DILocation(line: 688, column: 3, scope: !1353)
!1506 = !DILocation(line: 235, column: 84, scope: !575, inlinedAt: !1507)
!1507 = distinct !DILocation(line: 688, column: 3, scope: !1353)
!1508 = !DILocation(line: 236, column: 23, scope: !575, inlinedAt: !1507)
!1509 = !DILocation(line: 238, column: 9, scope: !575, inlinedAt: !1507)
!1510 = !DILocation(line: 261, column: 22, scope: !575, inlinedAt: !1507)
!1511 = !DILocation(line: 88, column: 80, scope: !586, inlinedAt: !1512)
!1512 = distinct !DILocation(line: 261, column: 2, scope: !575, inlinedAt: !1507)
!1513 = !DILocation(line: 91, column: 6, scope: !593, inlinedAt: !1512)
!1514 = !DILocation(line: 91, column: 10, scope: !593, inlinedAt: !1512)
!1515 = !DILocation(line: 91, column: 6, scope: !586, inlinedAt: !1512)
!1516 = !DILocation(line: 92, column: 3, scope: !597, inlinedAt: !1512)
!1517 = !DILocation(line: 94, column: 2, scope: !586, inlinedAt: !1512)
!1518 = !DILocation(line: 114, column: 1, scope: !586, inlinedAt: !1512)
!1519 = !DILocation(line: 693, column: 7, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !1353, file: !293, line: 693, column: 7)
!1521 = !DILocation(line: 693, column: 7, scope: !1353)
!1522 = !DILocation(line: 694, column: 4, scope: !1523)
!1523 = distinct !DILexicalBlock(scope: !1520, file: !293, line: 693, column: 14)
!1524 = !DILocation(line: 695, column: 3, scope: !1523)
!1525 = distinct !DISubprogram(name: "k_thread_name_set", scope: !939, file: !939, line: 426, type: !1526, scopeLine: 427, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1528)
!1526 = !DISubroutineType(types: !1527)
!1527 = !{!120, !1304, !1190}
!1528 = !{!1529, !1530}
!1529 = !DILocalVariable(name: "thread", arg: 1, scope: !1525, file: !939, line: 426, type: !1304)
!1530 = !DILocalVariable(name: "str", arg: 2, scope: !1525, file: !939, line: 426, type: !1190)
!1531 = !DILocation(line: 426, column: 45, scope: !1525)
!1532 = !DILocation(line: 426, column: 66, scope: !1525)
!1533 = !DILocation(line: 435, column: 2, scope: !1525)
!1534 = !DILocation(line: 435, column: 7, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1525, file: !939, line: 435, column: 5)
!1536 = !{i64 138568}
!1537 = !DILocation(line: 435, column: 47, scope: !1535)
!1538 = !DILocation(line: 436, column: 34, scope: !1525)
!1539 = !DILocation(line: 436, column: 42, scope: !1525)
!1540 = !DILocation(line: 436, column: 9, scope: !1525)
!1541 = !DILocation(line: 436, column: 2, scope: !1525)
!1542 = distinct !DISubprogram(name: "k_thread_start", scope: !939, file: !939, line: 240, type: !1543, scopeLine: 241, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1545)
!1543 = !DISubroutineType(types: !1544)
!1544 = !{null, !1304}
!1545 = !{!1546}
!1546 = !DILocalVariable(name: "thread", arg: 1, scope: !1542, file: !939, line: 240, type: !1304)
!1547 = !DILocation(line: 240, column: 43, scope: !1542)
!1548 = !DILocation(line: 249, column: 2, scope: !1542)
!1549 = !DILocation(line: 249, column: 7, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1542, file: !939, line: 249, column: 5)
!1551 = !{i64 135587}
!1552 = !DILocation(line: 249, column: 47, scope: !1550)
!1553 = !DILocation(line: 250, column: 24, scope: !1542)
!1554 = !DILocation(line: 250, column: 2, scope: !1542)
!1555 = !DILocation(line: 251, column: 1, scope: !1542)
!1556 = distinct !DISubprogram(name: "k_work_queue_drain", scope: !293, file: !293, line: 750, type: !1557, scopeLine: 752, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1559)
!1557 = !DISubroutineType(types: !1558)
!1558 = !{!120, !137, !817}
!1559 = !{!1560, !1561, !1562, !1563}
!1560 = !DILocalVariable(name: "queue", arg: 1, scope: !1556, file: !293, line: 750, type: !137)
!1561 = !DILocalVariable(name: "plug", arg: 2, scope: !1556, file: !293, line: 751, type: !817)
!1562 = !DILocalVariable(name: "ret", scope: !1556, file: !293, line: 758, type: !120)
!1563 = !DILocalVariable(name: "key", scope: !1556, file: !293, line: 759, type: !518)
!1564 = !DILocation(line: 750, column: 41, scope: !1556)
!1565 = !DILocation(line: 751, column: 16, scope: !1556)
!1566 = !DILocation(line: 756, column: 2, scope: !1556)
!1567 = !DILocation(line: 756, column: 7, scope: !1568)
!1568 = distinct !DILexicalBlock(scope: !1556, file: !293, line: 756, column: 5)
!1569 = !DILocation(line: 758, column: 2, scope: !1556)
!1570 = !DILocation(line: 758, column: 6, scope: !1556)
!1571 = !DILocation(line: 759, column: 2, scope: !1556)
!1572 = !DILocation(line: 759, column: 19, scope: !1556)
!1573 = !DILocation(line: 160, column: 94, scope: !527, inlinedAt: !1574)
!1574 = distinct !DILocation(line: 759, column: 25, scope: !1556)
!1575 = !DILocation(line: 162, column: 9, scope: !527, inlinedAt: !1574)
!1576 = !DILocation(line: 163, column: 19, scope: !527, inlinedAt: !1574)
!1577 = !DILocation(line: 44, column: 2, scope: !538, inlinedAt: !1578)
!1578 = distinct !DILocation(line: 169, column: 10, scope: !527, inlinedAt: !1574)
!1579 = !DILocation(line: 44, column: 15, scope: !538, inlinedAt: !1578)
!1580 = !DILocation(line: 48, column: 2, scope: !538, inlinedAt: !1578)
!1581 = !DILocation(line: 80, column: 9, scope: !538, inlinedAt: !1578)
!1582 = !DILocation(line: 81, column: 1, scope: !538, inlinedAt: !1578)
!1583 = !DILocation(line: 169, column: 8, scope: !527, inlinedAt: !1574)
!1584 = !DILocation(line: 171, column: 26, scope: !527, inlinedAt: !1574)
!1585 = !DILocation(line: 110, column: 94, scope: !553, inlinedAt: !1586)
!1586 = distinct !DILocation(line: 171, column: 2, scope: !527, inlinedAt: !1574)
!1587 = !DILocation(line: 112, column: 9, scope: !553, inlinedAt: !1586)
!1588 = !DILocation(line: 177, column: 27, scope: !527, inlinedAt: !1574)
!1589 = !DILocation(line: 121, column: 95, scope: !562, inlinedAt: !1590)
!1590 = distinct !DILocation(line: 177, column: 2, scope: !527, inlinedAt: !1574)
!1591 = !DILocation(line: 123, column: 9, scope: !562, inlinedAt: !1590)
!1592 = !DILocation(line: 179, column: 2, scope: !527, inlinedAt: !1574)
!1593 = !DILocation(line: 759, column: 25, scope: !1556)
!1594 = !DILocation(line: 761, column: 19, scope: !1595)
!1595 = distinct !DILexicalBlock(scope: !1556, file: !293, line: 761, column: 6)
!1596 = !DILocation(line: 761, column: 26, scope: !1595)
!1597 = !DILocation(line: 761, column: 8, scope: !1595)
!1598 = !DILocation(line: 762, column: 8, scope: !1595)
!1599 = !DILocation(line: 762, column: 52, scope: !1595)
!1600 = !DILocation(line: 763, column: 6, scope: !1595)
!1601 = !DILocation(line: 763, column: 9, scope: !1595)
!1602 = !DILocation(line: 764, column: 6, scope: !1595)
!1603 = !DILocation(line: 764, column: 30, scope: !1595)
!1604 = !DILocation(line: 764, column: 37, scope: !1595)
!1605 = !DILocation(line: 764, column: 10, scope: !1595)
!1606 = !DILocation(line: 761, column: 6, scope: !1556)
!1607 = !DILocation(line: 765, column: 13, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1595, file: !293, line: 764, column: 47)
!1609 = !DILocation(line: 765, column: 20, scope: !1608)
!1610 = !DILocation(line: 765, column: 3, scope: !1608)
!1611 = !DILocation(line: 766, column: 7, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1608, file: !293, line: 766, column: 7)
!1613 = !DILocation(line: 766, column: 7, scope: !1608)
!1614 = !DILocation(line: 767, column: 14, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !1612, file: !293, line: 766, column: 13)
!1616 = !DILocation(line: 767, column: 21, scope: !1615)
!1617 = !DILocation(line: 767, column: 4, scope: !1615)
!1618 = !DILocation(line: 768, column: 3, scope: !1615)
!1619 = !DILocation(line: 770, column: 23, scope: !1608)
!1620 = !DILocation(line: 770, column: 3, scope: !1608)
!1621 = !DILocation(line: 771, column: 35, scope: !1608)
!1622 = !DILocation(line: 771, column: 42, scope: !1608)
!1623 = !DILocation(line: 772, column: 23, scope: !1608)
!1624 = !DILocation(line: 771, column: 9, scope: !1608)
!1625 = !DILocation(line: 771, column: 7, scope: !1608)
!1626 = !DILocation(line: 773, column: 2, scope: !1608)
!1627 = !DILocation(line: 774, column: 3, scope: !1628)
!1628 = distinct !DILexicalBlock(scope: !1595, file: !293, line: 773, column: 9)
!1629 = !DILocation(line: 235, column: 84, scope: !575, inlinedAt: !1630)
!1630 = distinct !DILocation(line: 774, column: 3, scope: !1628)
!1631 = !DILocation(line: 236, column: 23, scope: !575, inlinedAt: !1630)
!1632 = !DILocation(line: 238, column: 9, scope: !575, inlinedAt: !1630)
!1633 = !DILocation(line: 261, column: 22, scope: !575, inlinedAt: !1630)
!1634 = !DILocation(line: 88, column: 80, scope: !586, inlinedAt: !1635)
!1635 = distinct !DILocation(line: 261, column: 2, scope: !575, inlinedAt: !1630)
!1636 = !DILocation(line: 91, column: 6, scope: !593, inlinedAt: !1635)
!1637 = !DILocation(line: 91, column: 10, scope: !593, inlinedAt: !1635)
!1638 = !DILocation(line: 91, column: 6, scope: !586, inlinedAt: !1635)
!1639 = !DILocation(line: 92, column: 3, scope: !597, inlinedAt: !1635)
!1640 = !DILocation(line: 94, column: 2, scope: !586, inlinedAt: !1635)
!1641 = !DILocation(line: 114, column: 1, scope: !586, inlinedAt: !1635)
!1642 = !DILocation(line: 777, column: 2, scope: !1556)
!1643 = !DILocation(line: 777, column: 7, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !1556, file: !293, line: 777, column: 5)
!1645 = !DILocation(line: 779, column: 9, scope: !1556)
!1646 = !DILocation(line: 780, column: 1, scope: !1556)
!1647 = !DILocation(line: 779, column: 2, scope: !1556)
!1648 = distinct !DISubprogram(name: "flags_get", scope: !293, file: !293, line: 55, type: !1649, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1653)
!1649 = !DISubroutineType(types: !1650)
!1650 = !{!199, !1651}
!1651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1652, size: 32)
!1652 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !199)
!1653 = !{!1654}
!1654 = !DILocalVariable(name: "flagp", arg: 1, scope: !1648, file: !293, line: 55, type: !1651)
!1655 = !DILocation(line: 55, column: 50, scope: !1648)
!1656 = !DILocation(line: 57, column: 10, scope: !1648)
!1657 = !DILocation(line: 57, column: 9, scope: !1648)
!1658 = !DILocation(line: 57, column: 2, scope: !1648)
!1659 = distinct !DISubprogram(name: "sys_slist_is_empty", scope: !126, file: !126, line: 268, type: !1660, scopeLine: 268, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1662)
!1660 = !DISubroutineType(types: !1661)
!1661 = !{!817, !1266}
!1662 = !{!1663}
!1663 = !DILocalVariable(name: "list", arg: 1, scope: !1659, file: !126, line: 268, type: !1266)
!1664 = !DILocation(line: 268, column: 53, scope: !1659)
!1665 = !DILocation(line: 268, column: 89, scope: !1659)
!1666 = !DILocation(line: 268, column: 69, scope: !1659)
!1667 = !DILocation(line: 268, column: 95, scope: !1659)
!1668 = !DILocation(line: 268, column: 61, scope: !1659)
!1669 = distinct !DISubprogram(name: "flag_set", scope: !293, file: !293, line: 27, type: !1289, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1670)
!1670 = !{!1671, !1672}
!1671 = !DILocalVariable(name: "flagp", arg: 1, scope: !1669, file: !293, line: 27, type: !1291)
!1672 = !DILocalVariable(name: "bit", arg: 2, scope: !1669, file: !293, line: 28, type: !199)
!1673 = !DILocation(line: 27, column: 39, scope: !1669)
!1674 = !DILocation(line: 28, column: 17, scope: !1669)
!1675 = !DILocation(line: 30, column: 21, scope: !1669)
!1676 = !DILocation(line: 30, column: 17, scope: !1669)
!1677 = !DILocation(line: 30, column: 3, scope: !1669)
!1678 = !DILocation(line: 30, column: 9, scope: !1669)
!1679 = !DILocation(line: 31, column: 1, scope: !1669)
!1680 = distinct !DISubprogram(name: "notify_queue_locked", scope: !293, file: !293, line: 221, type: !1681, scopeLine: 222, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1683)
!1681 = !DISubroutineType(types: !1682)
!1682 = !{!817, !137}
!1683 = !{!1684, !1685}
!1684 = !DILocalVariable(name: "queue", arg: 1, scope: !1680, file: !293, line: 221, type: !137)
!1685 = !DILocalVariable(name: "rv", scope: !1680, file: !293, line: 223, type: !817)
!1686 = !DILocation(line: 221, column: 58, scope: !1680)
!1687 = !DILocation(line: 223, column: 2, scope: !1680)
!1688 = !DILocation(line: 223, column: 8, scope: !1680)
!1689 = !DILocation(line: 225, column: 6, scope: !1690)
!1690 = distinct !DILexicalBlock(scope: !1680, file: !293, line: 225, column: 6)
!1691 = !DILocation(line: 225, column: 12, scope: !1690)
!1692 = !DILocation(line: 225, column: 6, scope: !1680)
!1693 = !DILocation(line: 226, column: 22, scope: !1694)
!1694 = distinct !DILexicalBlock(scope: !1690, file: !293, line: 225, column: 18)
!1695 = !DILocation(line: 226, column: 29, scope: !1694)
!1696 = !DILocation(line: 226, column: 8, scope: !1694)
!1697 = !DILocation(line: 226, column: 6, scope: !1694)
!1698 = !DILocation(line: 227, column: 2, scope: !1694)
!1699 = !DILocation(line: 229, column: 9, scope: !1680)
!1700 = !DILocation(line: 230, column: 1, scope: !1680)
!1701 = !DILocation(line: 229, column: 2, scope: !1680)
!1702 = !DISubprogram(name: "z_sched_wait", scope: !783, file: !783, line: 368, type: !1703, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !248)
!1703 = !DISubroutineType(types: !1704)
!1704 = !{!120, !530, !518, !176, !380, !1705}
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 32)
!1706 = distinct !DISubprogram(name: "k_work_queue_unplug", scope: !293, file: !293, line: 782, type: !1707, scopeLine: 783, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1709)
!1707 = !DISubroutineType(types: !1708)
!1708 = !{!120, !137}
!1709 = !{!1710, !1711, !1712}
!1710 = !DILocalVariable(name: "queue", arg: 1, scope: !1706, file: !293, line: 782, type: !137)
!1711 = !DILocalVariable(name: "ret", scope: !1706, file: !293, line: 788, type: !120)
!1712 = !DILocalVariable(name: "key", scope: !1706, file: !293, line: 789, type: !518)
!1713 = !DILocation(line: 782, column: 42, scope: !1706)
!1714 = !DILocation(line: 786, column: 2, scope: !1706)
!1715 = !DILocation(line: 786, column: 7, scope: !1716)
!1716 = distinct !DILexicalBlock(scope: !1706, file: !293, line: 786, column: 5)
!1717 = !DILocation(line: 788, column: 2, scope: !1706)
!1718 = !DILocation(line: 788, column: 6, scope: !1706)
!1719 = !DILocation(line: 789, column: 2, scope: !1706)
!1720 = !DILocation(line: 789, column: 19, scope: !1706)
!1721 = !DILocation(line: 160, column: 94, scope: !527, inlinedAt: !1722)
!1722 = distinct !DILocation(line: 789, column: 25, scope: !1706)
!1723 = !DILocation(line: 162, column: 9, scope: !527, inlinedAt: !1722)
!1724 = !DILocation(line: 163, column: 19, scope: !527, inlinedAt: !1722)
!1725 = !DILocation(line: 44, column: 2, scope: !538, inlinedAt: !1726)
!1726 = distinct !DILocation(line: 169, column: 10, scope: !527, inlinedAt: !1722)
!1727 = !DILocation(line: 44, column: 15, scope: !538, inlinedAt: !1726)
!1728 = !DILocation(line: 48, column: 2, scope: !538, inlinedAt: !1726)
!1729 = !DILocation(line: 80, column: 9, scope: !538, inlinedAt: !1726)
!1730 = !DILocation(line: 81, column: 1, scope: !538, inlinedAt: !1726)
!1731 = !DILocation(line: 169, column: 8, scope: !527, inlinedAt: !1722)
!1732 = !DILocation(line: 171, column: 26, scope: !527, inlinedAt: !1722)
!1733 = !DILocation(line: 110, column: 94, scope: !553, inlinedAt: !1734)
!1734 = distinct !DILocation(line: 171, column: 2, scope: !527, inlinedAt: !1722)
!1735 = !DILocation(line: 112, column: 9, scope: !553, inlinedAt: !1734)
!1736 = !DILocation(line: 177, column: 27, scope: !527, inlinedAt: !1722)
!1737 = !DILocation(line: 121, column: 95, scope: !562, inlinedAt: !1738)
!1738 = distinct !DILocation(line: 177, column: 2, scope: !527, inlinedAt: !1722)
!1739 = !DILocation(line: 123, column: 9, scope: !562, inlinedAt: !1738)
!1740 = !DILocation(line: 179, column: 2, scope: !527, inlinedAt: !1722)
!1741 = !DILocation(line: 789, column: 25, scope: !1706)
!1742 = !DILocation(line: 791, column: 27, scope: !1743)
!1743 = distinct !DILexicalBlock(scope: !1706, file: !293, line: 791, column: 6)
!1744 = !DILocation(line: 791, column: 34, scope: !1743)
!1745 = !DILocation(line: 791, column: 6, scope: !1743)
!1746 = !DILocation(line: 791, column: 6, scope: !1706)
!1747 = !DILocation(line: 792, column: 7, scope: !1748)
!1748 = distinct !DILexicalBlock(scope: !1743, file: !293, line: 791, column: 68)
!1749 = !DILocation(line: 793, column: 2, scope: !1748)
!1750 = !DILocation(line: 795, column: 2, scope: !1706)
!1751 = !DILocation(line: 235, column: 84, scope: !575, inlinedAt: !1752)
!1752 = distinct !DILocation(line: 795, column: 2, scope: !1706)
!1753 = !DILocation(line: 236, column: 23, scope: !575, inlinedAt: !1752)
!1754 = !DILocation(line: 238, column: 9, scope: !575, inlinedAt: !1752)
!1755 = !DILocation(line: 261, column: 22, scope: !575, inlinedAt: !1752)
!1756 = !DILocation(line: 88, column: 80, scope: !586, inlinedAt: !1757)
!1757 = distinct !DILocation(line: 261, column: 2, scope: !575, inlinedAt: !1752)
!1758 = !DILocation(line: 91, column: 6, scope: !593, inlinedAt: !1757)
!1759 = !DILocation(line: 91, column: 10, scope: !593, inlinedAt: !1757)
!1760 = !DILocation(line: 91, column: 6, scope: !586, inlinedAt: !1757)
!1761 = !DILocation(line: 92, column: 3, scope: !597, inlinedAt: !1757)
!1762 = !DILocation(line: 94, column: 2, scope: !586, inlinedAt: !1757)
!1763 = !DILocation(line: 114, column: 1, scope: !586, inlinedAt: !1757)
!1764 = !DILocation(line: 797, column: 2, scope: !1706)
!1765 = !DILocation(line: 797, column: 7, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !1706, file: !293, line: 797, column: 5)
!1767 = !DILocation(line: 799, column: 9, scope: !1706)
!1768 = !DILocation(line: 800, column: 1, scope: !1706)
!1769 = !DILocation(line: 799, column: 2, scope: !1706)
!1770 = distinct !DISubprogram(name: "flag_test_and_clear", scope: !293, file: !293, line: 39, type: !1771, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1773)
!1771 = !DISubroutineType(types: !1772)
!1772 = !{!817, !1291, !120}
!1773 = !{!1774, !1775, !1776}
!1774 = !DILocalVariable(name: "flagp", arg: 1, scope: !1770, file: !293, line: 39, type: !1291)
!1775 = !DILocalVariable(name: "bit", arg: 2, scope: !1770, file: !293, line: 40, type: !120)
!1776 = !DILocalVariable(name: "ret", scope: !1770, file: !293, line: 42, type: !817)
!1777 = !DILocation(line: 39, column: 51, scope: !1770)
!1778 = !DILocation(line: 40, column: 16, scope: !1770)
!1779 = !DILocation(line: 42, column: 2, scope: !1770)
!1780 = !DILocation(line: 42, column: 8, scope: !1770)
!1781 = !DILocation(line: 42, column: 24, scope: !1770)
!1782 = !DILocation(line: 42, column: 31, scope: !1770)
!1783 = !DILocation(line: 42, column: 14, scope: !1770)
!1784 = !DILocation(line: 44, column: 13, scope: !1770)
!1785 = !DILocation(line: 44, column: 20, scope: !1770)
!1786 = !DILocation(line: 44, column: 2, scope: !1770)
!1787 = !DILocation(line: 46, column: 9, scope: !1770)
!1788 = !DILocation(line: 47, column: 1, scope: !1770)
!1789 = !DILocation(line: 46, column: 2, scope: !1770)
!1790 = distinct !DISubprogram(name: "k_work_init_delayable", scope: !293, file: !293, line: 833, type: !1791, scopeLine: 835, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1793)
!1791 = !DISubroutineType(types: !1792)
!1792 = !{null, !284, !132}
!1793 = !{!1794, !1795}
!1794 = !DILocalVariable(name: "dwork", arg: 1, scope: !1790, file: !293, line: 833, type: !284)
!1795 = !DILocalVariable(name: "handler", arg: 2, scope: !1790, file: !293, line: 834, type: !132)
!1796 = !DILocation(line: 833, column: 53, scope: !1790)
!1797 = !DILocation(line: 834, column: 25, scope: !1790)
!1798 = !DILocation(line: 839, column: 3, scope: !1790)
!1799 = !DILocation(line: 839, column: 11, scope: !1790)
!1800 = !DILocation(line: 839, column: 36, scope: !1790)
!1801 = !DILocation(line: 840, column: 11, scope: !1790)
!1802 = !DILocation(line: 841, column: 15, scope: !1790)
!1803 = !DILocation(line: 845, column: 18, scope: !1790)
!1804 = !DILocation(line: 845, column: 25, scope: !1790)
!1805 = !DILocation(line: 845, column: 2, scope: !1790)
!1806 = !DILocation(line: 847, column: 2, scope: !1790)
!1807 = !DILocation(line: 847, column: 7, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !1790, file: !293, line: 847, column: 5)
!1809 = !DILocation(line: 848, column: 1, scope: !1790)
!1810 = distinct !DISubprogram(name: "z_init_timeout", scope: !1811, file: !1811, line: 25, type: !209, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1812)
!1811 = !DIFile(filename: "kernel/include/timeout_q.h", directory: "/home/sri/zephyrproject/zephyr")
!1812 = !{!1813}
!1813 = !DILocalVariable(name: "to", arg: 1, scope: !1810, file: !1811, line: 25, type: !211)
!1814 = !DILocation(line: 25, column: 52, scope: !1810)
!1815 = !DILocation(line: 27, column: 18, scope: !1810)
!1816 = !DILocation(line: 27, column: 22, scope: !1810)
!1817 = !DILocation(line: 27, column: 2, scope: !1810)
!1818 = !DILocation(line: 28, column: 1, scope: !1810)
!1819 = distinct !DISubprogram(name: "k_work_delayable_busy_get", scope: !293, file: !293, line: 855, type: !1820, scopeLine: 856, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1824)
!1820 = !DISubroutineType(types: !1821)
!1821 = !{!120, !1822}
!1822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1823, size: 32)
!1823 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !285)
!1824 = !{!1825, !1826, !1827}
!1825 = !DILocalVariable(name: "dwork", arg: 1, scope: !1819, file: !293, line: 855, type: !1822)
!1826 = !DILocalVariable(name: "key", scope: !1819, file: !293, line: 857, type: !518)
!1827 = !DILocalVariable(name: "ret", scope: !1819, file: !293, line: 858, type: !120)
!1828 = !DILocation(line: 855, column: 62, scope: !1819)
!1829 = !DILocation(line: 857, column: 2, scope: !1819)
!1830 = !DILocation(line: 857, column: 19, scope: !1819)
!1831 = !DILocation(line: 160, column: 94, scope: !527, inlinedAt: !1832)
!1832 = distinct !DILocation(line: 857, column: 25, scope: !1819)
!1833 = !DILocation(line: 162, column: 9, scope: !527, inlinedAt: !1832)
!1834 = !DILocation(line: 163, column: 19, scope: !527, inlinedAt: !1832)
!1835 = !DILocation(line: 44, column: 2, scope: !538, inlinedAt: !1836)
!1836 = distinct !DILocation(line: 169, column: 10, scope: !527, inlinedAt: !1832)
!1837 = !DILocation(line: 44, column: 15, scope: !538, inlinedAt: !1836)
!1838 = !DILocation(line: 48, column: 2, scope: !538, inlinedAt: !1836)
!1839 = !DILocation(line: 80, column: 9, scope: !538, inlinedAt: !1836)
!1840 = !DILocation(line: 81, column: 1, scope: !538, inlinedAt: !1836)
!1841 = !DILocation(line: 169, column: 8, scope: !527, inlinedAt: !1832)
!1842 = !DILocation(line: 171, column: 26, scope: !527, inlinedAt: !1832)
!1843 = !DILocation(line: 110, column: 94, scope: !553, inlinedAt: !1844)
!1844 = distinct !DILocation(line: 171, column: 2, scope: !527, inlinedAt: !1832)
!1845 = !DILocation(line: 112, column: 9, scope: !553, inlinedAt: !1844)
!1846 = !DILocation(line: 177, column: 27, scope: !527, inlinedAt: !1832)
!1847 = !DILocation(line: 121, column: 95, scope: !562, inlinedAt: !1848)
!1848 = distinct !DILocation(line: 177, column: 2, scope: !527, inlinedAt: !1832)
!1849 = !DILocation(line: 123, column: 9, scope: !562, inlinedAt: !1848)
!1850 = !DILocation(line: 179, column: 2, scope: !527, inlinedAt: !1832)
!1851 = !DILocation(line: 857, column: 25, scope: !1819)
!1852 = !DILocation(line: 858, column: 2, scope: !1819)
!1853 = !DILocation(line: 858, column: 6, scope: !1819)
!1854 = !DILocation(line: 858, column: 43, scope: !1819)
!1855 = !DILocation(line: 858, column: 12, scope: !1819)
!1856 = !DILocation(line: 860, column: 2, scope: !1819)
!1857 = !DILocation(line: 235, column: 84, scope: !575, inlinedAt: !1858)
!1858 = distinct !DILocation(line: 860, column: 2, scope: !1819)
!1859 = !DILocation(line: 236, column: 23, scope: !575, inlinedAt: !1858)
!1860 = !DILocation(line: 238, column: 9, scope: !575, inlinedAt: !1858)
!1861 = !DILocation(line: 261, column: 22, scope: !575, inlinedAt: !1858)
!1862 = !DILocation(line: 88, column: 80, scope: !586, inlinedAt: !1863)
!1863 = distinct !DILocation(line: 261, column: 2, scope: !575, inlinedAt: !1858)
!1864 = !DILocation(line: 91, column: 6, scope: !593, inlinedAt: !1863)
!1865 = !DILocation(line: 91, column: 10, scope: !593, inlinedAt: !1863)
!1866 = !DILocation(line: 91, column: 6, scope: !586, inlinedAt: !1863)
!1867 = !DILocation(line: 92, column: 3, scope: !597, inlinedAt: !1863)
!1868 = !DILocation(line: 94, column: 2, scope: !586, inlinedAt: !1863)
!1869 = !DILocation(line: 114, column: 1, scope: !586, inlinedAt: !1863)
!1870 = !DILocation(line: 861, column: 9, scope: !1819)
!1871 = !DILocation(line: 862, column: 1, scope: !1819)
!1872 = !DILocation(line: 861, column: 2, scope: !1819)
!1873 = distinct !DISubprogram(name: "work_delayable_busy_get_locked", scope: !293, file: !293, line: 850, type: !1820, scopeLine: 851, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1874)
!1874 = !{!1875}
!1875 = !DILocalVariable(name: "dwork", arg: 1, scope: !1873, file: !293, line: 850, type: !1822)
!1876 = !DILocation(line: 850, column: 81, scope: !1873)
!1877 = !DILocation(line: 852, column: 20, scope: !1873)
!1878 = !DILocation(line: 852, column: 27, scope: !1873)
!1879 = !DILocation(line: 852, column: 32, scope: !1873)
!1880 = !DILocation(line: 852, column: 9, scope: !1873)
!1881 = !DILocation(line: 852, column: 39, scope: !1873)
!1882 = !DILocation(line: 852, column: 2, scope: !1873)
!1883 = distinct !DISubprogram(name: "k_work_schedule_for_queue", scope: !293, file: !293, line: 954, type: !1884, scopeLine: 957, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1886)
!1884 = !DISubroutineType(types: !1885)
!1885 = !{!120, !137, !284, !380}
!1886 = !{!1887, !1888, !1889, !1890, !1891, !1892}
!1887 = !DILocalVariable(name: "queue", arg: 1, scope: !1883, file: !293, line: 954, type: !137)
!1888 = !DILocalVariable(name: "dwork", arg: 2, scope: !1883, file: !293, line: 955, type: !284)
!1889 = !DILocalVariable(name: "delay", arg: 3, scope: !1883, file: !293, line: 956, type: !380)
!1890 = !DILocalVariable(name: "work", scope: !1883, file: !293, line: 962, type: !121)
!1891 = !DILocalVariable(name: "ret", scope: !1883, file: !293, line: 963, type: !120)
!1892 = !DILocalVariable(name: "key", scope: !1883, file: !293, line: 964, type: !518)
!1893 = !DILocation(line: 954, column: 48, scope: !1883)
!1894 = !DILocation(line: 955, column: 36, scope: !1883)
!1895 = !DILocation(line: 956, column: 23, scope: !1883)
!1896 = !DILocation(line: 960, column: 2, scope: !1883)
!1897 = !DILocation(line: 960, column: 7, scope: !1898)
!1898 = distinct !DILexicalBlock(scope: !1883, file: !293, line: 960, column: 5)
!1899 = !DILocation(line: 962, column: 2, scope: !1883)
!1900 = !DILocation(line: 962, column: 17, scope: !1883)
!1901 = !DILocation(line: 962, column: 25, scope: !1883)
!1902 = !DILocation(line: 962, column: 32, scope: !1883)
!1903 = !DILocation(line: 963, column: 2, scope: !1883)
!1904 = !DILocation(line: 963, column: 6, scope: !1883)
!1905 = !DILocation(line: 964, column: 2, scope: !1883)
!1906 = !DILocation(line: 964, column: 19, scope: !1883)
!1907 = !DILocation(line: 160, column: 94, scope: !527, inlinedAt: !1908)
!1908 = distinct !DILocation(line: 964, column: 25, scope: !1883)
!1909 = !DILocation(line: 162, column: 9, scope: !527, inlinedAt: !1908)
!1910 = !DILocation(line: 163, column: 19, scope: !527, inlinedAt: !1908)
!1911 = !DILocation(line: 44, column: 2, scope: !538, inlinedAt: !1912)
!1912 = distinct !DILocation(line: 169, column: 10, scope: !527, inlinedAt: !1908)
!1913 = !DILocation(line: 44, column: 15, scope: !538, inlinedAt: !1912)
!1914 = !DILocation(line: 48, column: 2, scope: !538, inlinedAt: !1912)
!1915 = !DILocation(line: 80, column: 9, scope: !538, inlinedAt: !1912)
!1916 = !DILocation(line: 81, column: 1, scope: !538, inlinedAt: !1912)
!1917 = !DILocation(line: 169, column: 8, scope: !527, inlinedAt: !1908)
!1918 = !DILocation(line: 171, column: 26, scope: !527, inlinedAt: !1908)
!1919 = !DILocation(line: 110, column: 94, scope: !553, inlinedAt: !1920)
!1920 = distinct !DILocation(line: 171, column: 2, scope: !527, inlinedAt: !1908)
!1921 = !DILocation(line: 112, column: 9, scope: !553, inlinedAt: !1920)
!1922 = !DILocation(line: 177, column: 27, scope: !527, inlinedAt: !1908)
!1923 = !DILocation(line: 121, column: 95, scope: !562, inlinedAt: !1924)
!1924 = distinct !DILocation(line: 177, column: 2, scope: !527, inlinedAt: !1908)
!1925 = !DILocation(line: 123, column: 9, scope: !562, inlinedAt: !1924)
!1926 = !DILocation(line: 179, column: 2, scope: !527, inlinedAt: !1908)
!1927 = !DILocation(line: 964, column: 25, scope: !1883)
!1928 = !DILocation(line: 967, column: 28, scope: !1929)
!1929 = distinct !DILexicalBlock(scope: !1883, file: !293, line: 967, column: 6)
!1930 = !DILocation(line: 967, column: 7, scope: !1929)
!1931 = !DILocation(line: 967, column: 34, scope: !1929)
!1932 = !DILocation(line: 967, column: 53, scope: !1929)
!1933 = !DILocation(line: 967, column: 6, scope: !1883)
!1934 = !DILocation(line: 968, column: 43, scope: !1935)
!1935 = distinct !DILexicalBlock(scope: !1929, file: !293, line: 967, column: 60)
!1936 = !DILocation(line: 968, column: 9, scope: !1935)
!1937 = !DILocation(line: 968, column: 7, scope: !1935)
!1938 = !DILocation(line: 969, column: 2, scope: !1935)
!1939 = !DILocation(line: 971, column: 2, scope: !1883)
!1940 = !DILocation(line: 235, column: 84, scope: !575, inlinedAt: !1941)
!1941 = distinct !DILocation(line: 971, column: 2, scope: !1883)
!1942 = !DILocation(line: 236, column: 23, scope: !575, inlinedAt: !1941)
!1943 = !DILocation(line: 238, column: 9, scope: !575, inlinedAt: !1941)
!1944 = !DILocation(line: 261, column: 22, scope: !575, inlinedAt: !1941)
!1945 = !DILocation(line: 88, column: 80, scope: !586, inlinedAt: !1946)
!1946 = distinct !DILocation(line: 261, column: 2, scope: !575, inlinedAt: !1941)
!1947 = !DILocation(line: 91, column: 6, scope: !593, inlinedAt: !1946)
!1948 = !DILocation(line: 91, column: 10, scope: !593, inlinedAt: !1946)
!1949 = !DILocation(line: 91, column: 6, scope: !586, inlinedAt: !1946)
!1950 = !DILocation(line: 92, column: 3, scope: !597, inlinedAt: !1946)
!1951 = !DILocation(line: 94, column: 2, scope: !586, inlinedAt: !1946)
!1952 = !DILocation(line: 114, column: 1, scope: !586, inlinedAt: !1946)
!1953 = !DILocation(line: 973, column: 2, scope: !1883)
!1954 = !DILocation(line: 973, column: 7, scope: !1955)
!1955 = distinct !DILexicalBlock(scope: !1883, file: !293, line: 973, column: 5)
!1956 = !DILocation(line: 975, column: 9, scope: !1883)
!1957 = !DILocation(line: 976, column: 1, scope: !1883)
!1958 = !DILocation(line: 975, column: 2, scope: !1883)
!1959 = distinct !DISubprogram(name: "schedule_for_queue_locked", scope: !293, file: !293, line: 887, type: !1960, scopeLine: 890, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1962)
!1960 = !DISubroutineType(types: !1961)
!1961 = !{!120, !670, !284, !380}
!1962 = !{!1963, !1964, !1965, !1966, !1967}
!1963 = !DILocalVariable(name: "queuep", arg: 1, scope: !1959, file: !293, line: 887, type: !670)
!1964 = !DILocalVariable(name: "dwork", arg: 2, scope: !1959, file: !293, line: 888, type: !284)
!1965 = !DILocalVariable(name: "delay", arg: 3, scope: !1959, file: !293, line: 889, type: !380)
!1966 = !DILocalVariable(name: "ret", scope: !1959, file: !293, line: 891, type: !120)
!1967 = !DILocalVariable(name: "work", scope: !1959, file: !293, line: 892, type: !121)
!1968 = !DILocation(line: 887, column: 56, scope: !1959)
!1969 = !DILocation(line: 888, column: 35, scope: !1959)
!1970 = !DILocation(line: 889, column: 22, scope: !1959)
!1971 = !DILocation(line: 891, column: 2, scope: !1959)
!1972 = !DILocation(line: 891, column: 6, scope: !1959)
!1973 = !DILocation(line: 892, column: 2, scope: !1959)
!1974 = !DILocation(line: 892, column: 17, scope: !1959)
!1975 = !DILocation(line: 892, column: 25, scope: !1959)
!1976 = !DILocation(line: 892, column: 32, scope: !1959)
!1977 = !DILocation(line: 894, column: 15, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !1959, file: !293, line: 894, column: 6)
!1979 = !DILocation(line: 894, column: 40, scope: !1978)
!1980 = !DILocation(line: 894, column: 21, scope: !1978)
!1981 = !DILocation(line: 894, column: 6, scope: !1959)
!1982 = !DILocation(line: 895, column: 33, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1978, file: !293, line: 894, column: 54)
!1984 = !DILocation(line: 895, column: 39, scope: !1983)
!1985 = !DILocation(line: 895, column: 10, scope: !1983)
!1986 = !DILocation(line: 895, column: 3, scope: !1983)
!1987 = !DILocation(line: 898, column: 12, scope: !1959)
!1988 = !DILocation(line: 898, column: 18, scope: !1959)
!1989 = !DILocation(line: 898, column: 2, scope: !1959)
!1990 = !DILocation(line: 899, column: 18, scope: !1959)
!1991 = !DILocation(line: 899, column: 17, scope: !1959)
!1992 = !DILocation(line: 899, column: 2, scope: !1959)
!1993 = !DILocation(line: 899, column: 9, scope: !1959)
!1994 = !DILocation(line: 899, column: 15, scope: !1959)
!1995 = !DILocation(line: 902, column: 17, scope: !1959)
!1996 = !DILocation(line: 902, column: 24, scope: !1959)
!1997 = !DILocation(line: 902, column: 2, scope: !1959)
!1998 = !DILocation(line: 904, column: 9, scope: !1959)
!1999 = !DILocation(line: 904, column: 2, scope: !1959)
!2000 = !DILocation(line: 905, column: 1, scope: !1959)
!2001 = distinct !DISubprogram(name: "k_work_schedule", scope: !293, file: !293, line: 978, type: !2002, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2004)
!2002 = !DISubroutineType(types: !2003)
!2003 = !{!120, !284, !380}
!2004 = !{!2005, !2006, !2007}
!2005 = !DILocalVariable(name: "dwork", arg: 1, scope: !2001, file: !293, line: 978, type: !284)
!2006 = !DILocalVariable(name: "delay", arg: 2, scope: !2001, file: !293, line: 979, type: !380)
!2007 = !DILocalVariable(name: "ret", scope: !2001, file: !293, line: 983, type: !120)
!2008 = !DILocation(line: 978, column: 46, scope: !2001)
!2009 = !DILocation(line: 979, column: 20, scope: !2001)
!2010 = !DILocation(line: 981, column: 2, scope: !2001)
!2011 = !DILocation(line: 981, column: 7, scope: !2012)
!2012 = distinct !DILexicalBlock(scope: !2001, file: !293, line: 981, column: 5)
!2013 = !DILocation(line: 983, column: 2, scope: !2001)
!2014 = !DILocation(line: 983, column: 6, scope: !2001)
!2015 = !DILocation(line: 983, column: 53, scope: !2001)
!2016 = !DILocation(line: 983, column: 12, scope: !2001)
!2017 = !DILocation(line: 985, column: 2, scope: !2001)
!2018 = !DILocation(line: 985, column: 7, scope: !2019)
!2019 = distinct !DILexicalBlock(scope: !2001, file: !293, line: 985, column: 5)
!2020 = !DILocation(line: 987, column: 9, scope: !2001)
!2021 = !DILocation(line: 988, column: 1, scope: !2001)
!2022 = !DILocation(line: 987, column: 2, scope: !2001)
!2023 = distinct !DISubprogram(name: "k_work_reschedule_for_queue", scope: !293, file: !293, line: 990, type: !1884, scopeLine: 993, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2024)
!2024 = !{!2025, !2026, !2027, !2028, !2029}
!2025 = !DILocalVariable(name: "queue", arg: 1, scope: !2023, file: !293, line: 990, type: !137)
!2026 = !DILocalVariable(name: "dwork", arg: 2, scope: !2023, file: !293, line: 991, type: !284)
!2027 = !DILocalVariable(name: "delay", arg: 3, scope: !2023, file: !293, line: 992, type: !380)
!2028 = !DILocalVariable(name: "ret", scope: !2023, file: !293, line: 998, type: !120)
!2029 = !DILocalVariable(name: "key", scope: !2023, file: !293, line: 999, type: !518)
!2030 = !DILocation(line: 990, column: 50, scope: !2023)
!2031 = !DILocation(line: 991, column: 31, scope: !2023)
!2032 = !DILocation(line: 992, column: 18, scope: !2023)
!2033 = !DILocation(line: 996, column: 2, scope: !2023)
!2034 = !DILocation(line: 996, column: 7, scope: !2035)
!2035 = distinct !DILexicalBlock(scope: !2023, file: !293, line: 996, column: 5)
!2036 = !DILocation(line: 998, column: 2, scope: !2023)
!2037 = !DILocation(line: 998, column: 6, scope: !2023)
!2038 = !DILocation(line: 999, column: 2, scope: !2023)
!2039 = !DILocation(line: 999, column: 19, scope: !2023)
!2040 = !DILocation(line: 160, column: 94, scope: !527, inlinedAt: !2041)
!2041 = distinct !DILocation(line: 999, column: 25, scope: !2023)
!2042 = !DILocation(line: 162, column: 9, scope: !527, inlinedAt: !2041)
!2043 = !DILocation(line: 163, column: 19, scope: !527, inlinedAt: !2041)
!2044 = !DILocation(line: 44, column: 2, scope: !538, inlinedAt: !2045)
!2045 = distinct !DILocation(line: 169, column: 10, scope: !527, inlinedAt: !2041)
!2046 = !DILocation(line: 44, column: 15, scope: !538, inlinedAt: !2045)
!2047 = !DILocation(line: 48, column: 2, scope: !538, inlinedAt: !2045)
!2048 = !DILocation(line: 80, column: 9, scope: !538, inlinedAt: !2045)
!2049 = !DILocation(line: 81, column: 1, scope: !538, inlinedAt: !2045)
!2050 = !DILocation(line: 169, column: 8, scope: !527, inlinedAt: !2041)
!2051 = !DILocation(line: 171, column: 26, scope: !527, inlinedAt: !2041)
!2052 = !DILocation(line: 110, column: 94, scope: !553, inlinedAt: !2053)
!2053 = distinct !DILocation(line: 171, column: 2, scope: !527, inlinedAt: !2041)
!2054 = !DILocation(line: 112, column: 9, scope: !553, inlinedAt: !2053)
!2055 = !DILocation(line: 177, column: 27, scope: !527, inlinedAt: !2041)
!2056 = !DILocation(line: 121, column: 95, scope: !562, inlinedAt: !2057)
!2057 = distinct !DILocation(line: 177, column: 2, scope: !527, inlinedAt: !2041)
!2058 = !DILocation(line: 123, column: 9, scope: !562, inlinedAt: !2057)
!2059 = !DILocation(line: 179, column: 2, scope: !527, inlinedAt: !2041)
!2060 = !DILocation(line: 999, column: 25, scope: !2023)
!2061 = !DILocation(line: 1002, column: 26, scope: !2023)
!2062 = !DILocation(line: 1002, column: 8, scope: !2023)
!2063 = !DILocation(line: 1005, column: 42, scope: !2023)
!2064 = !DILocation(line: 1005, column: 8, scope: !2023)
!2065 = !DILocation(line: 1005, column: 6, scope: !2023)
!2066 = !DILocation(line: 1007, column: 2, scope: !2023)
!2067 = !DILocation(line: 235, column: 84, scope: !575, inlinedAt: !2068)
!2068 = distinct !DILocation(line: 1007, column: 2, scope: !2023)
!2069 = !DILocation(line: 236, column: 23, scope: !575, inlinedAt: !2068)
!2070 = !DILocation(line: 238, column: 9, scope: !575, inlinedAt: !2068)
!2071 = !DILocation(line: 261, column: 22, scope: !575, inlinedAt: !2068)
!2072 = !DILocation(line: 88, column: 80, scope: !586, inlinedAt: !2073)
!2073 = distinct !DILocation(line: 261, column: 2, scope: !575, inlinedAt: !2068)
!2074 = !DILocation(line: 91, column: 6, scope: !593, inlinedAt: !2073)
!2075 = !DILocation(line: 91, column: 10, scope: !593, inlinedAt: !2073)
!2076 = !DILocation(line: 91, column: 6, scope: !586, inlinedAt: !2073)
!2077 = !DILocation(line: 92, column: 3, scope: !597, inlinedAt: !2073)
!2078 = !DILocation(line: 94, column: 2, scope: !586, inlinedAt: !2073)
!2079 = !DILocation(line: 114, column: 1, scope: !586, inlinedAt: !2073)
!2080 = !DILocation(line: 1009, column: 2, scope: !2023)
!2081 = !DILocation(line: 1009, column: 7, scope: !2082)
!2082 = distinct !DILexicalBlock(scope: !2023, file: !293, line: 1009, column: 5)
!2083 = !DILocation(line: 1011, column: 9, scope: !2023)
!2084 = !DILocation(line: 1012, column: 1, scope: !2023)
!2085 = !DILocation(line: 1011, column: 2, scope: !2023)
!2086 = distinct !DISubprogram(name: "unschedule_locked", scope: !293, file: !293, line: 919, type: !2087, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2089)
!2087 = !DISubroutineType(types: !2088)
!2088 = !{!817, !284}
!2089 = !{!2090, !2091, !2092}
!2090 = !DILocalVariable(name: "dwork", arg: 1, scope: !2086, file: !293, line: 919, type: !284)
!2091 = !DILocalVariable(name: "ret", scope: !2086, file: !293, line: 921, type: !817)
!2092 = !DILocalVariable(name: "work", scope: !2086, file: !293, line: 922, type: !121)
!2093 = !DILocation(line: 919, column: 64, scope: !2086)
!2094 = !DILocation(line: 921, column: 2, scope: !2086)
!2095 = !DILocation(line: 921, column: 8, scope: !2086)
!2096 = !DILocation(line: 922, column: 2, scope: !2086)
!2097 = !DILocation(line: 922, column: 17, scope: !2086)
!2098 = !DILocation(line: 922, column: 25, scope: !2086)
!2099 = !DILocation(line: 922, column: 32, scope: !2086)
!2100 = !DILocation(line: 929, column: 27, scope: !2101)
!2101 = distinct !DILexicalBlock(scope: !2086, file: !293, line: 929, column: 6)
!2102 = !DILocation(line: 929, column: 33, scope: !2101)
!2103 = !DILocation(line: 929, column: 6, scope: !2101)
!2104 = !DILocation(line: 929, column: 6, scope: !2086)
!2105 = !DILocation(line: 930, column: 26, scope: !2106)
!2106 = distinct !DILexicalBlock(scope: !2101, file: !293, line: 929, column: 61)
!2107 = !DILocation(line: 930, column: 33, scope: !2106)
!2108 = !DILocation(line: 930, column: 9, scope: !2106)
!2109 = !DILocation(line: 930, column: 42, scope: !2106)
!2110 = !DILocation(line: 930, column: 7, scope: !2106)
!2111 = !DILocation(line: 931, column: 2, scope: !2106)
!2112 = !DILocation(line: 933, column: 9, scope: !2086)
!2113 = !DILocation(line: 934, column: 1, scope: !2086)
!2114 = !DILocation(line: 933, column: 2, scope: !2086)
!2115 = distinct !DISubprogram(name: "k_work_reschedule", scope: !293, file: !293, line: 1014, type: !2002, scopeLine: 1016, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2116)
!2116 = !{!2117, !2118, !2119}
!2117 = !DILocalVariable(name: "dwork", arg: 1, scope: !2115, file: !293, line: 1014, type: !284)
!2118 = !DILocalVariable(name: "delay", arg: 2, scope: !2115, file: !293, line: 1015, type: !380)
!2119 = !DILocalVariable(name: "ret", scope: !2115, file: !293, line: 1019, type: !120)
!2120 = !DILocation(line: 1014, column: 48, scope: !2115)
!2121 = !DILocation(line: 1015, column: 22, scope: !2115)
!2122 = !DILocation(line: 1017, column: 2, scope: !2115)
!2123 = !DILocation(line: 1017, column: 7, scope: !2124)
!2124 = distinct !DILexicalBlock(scope: !2115, file: !293, line: 1017, column: 5)
!2125 = !DILocation(line: 1019, column: 2, scope: !2115)
!2126 = !DILocation(line: 1019, column: 6, scope: !2115)
!2127 = !DILocation(line: 1019, column: 55, scope: !2115)
!2128 = !DILocation(line: 1019, column: 12, scope: !2115)
!2129 = !DILocation(line: 1021, column: 2, scope: !2115)
!2130 = !DILocation(line: 1021, column: 7, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !2115, file: !293, line: 1021, column: 5)
!2132 = !DILocation(line: 1023, column: 9, scope: !2115)
!2133 = !DILocation(line: 1024, column: 1, scope: !2115)
!2134 = !DILocation(line: 1023, column: 2, scope: !2115)
!2135 = distinct !DISubprogram(name: "k_work_cancel_delayable", scope: !293, file: !293, line: 1026, type: !2136, scopeLine: 1027, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2138)
!2136 = !DISubroutineType(types: !2137)
!2137 = !{!120, !284}
!2138 = !{!2139, !2140, !2141}
!2139 = !DILocalVariable(name: "dwork", arg: 1, scope: !2135, file: !293, line: 1026, type: !284)
!2140 = !DILocalVariable(name: "key", scope: !2135, file: !293, line: 1032, type: !518)
!2141 = !DILocalVariable(name: "ret", scope: !2135, file: !293, line: 1033, type: !120)
!2142 = !DILocation(line: 1026, column: 54, scope: !2135)
!2143 = !DILocation(line: 1030, column: 2, scope: !2135)
!2144 = !DILocation(line: 1030, column: 7, scope: !2145)
!2145 = distinct !DILexicalBlock(scope: !2135, file: !293, line: 1030, column: 5)
!2146 = !DILocation(line: 1032, column: 2, scope: !2135)
!2147 = !DILocation(line: 1032, column: 19, scope: !2135)
!2148 = !DILocation(line: 160, column: 94, scope: !527, inlinedAt: !2149)
!2149 = distinct !DILocation(line: 1032, column: 25, scope: !2135)
!2150 = !DILocation(line: 162, column: 9, scope: !527, inlinedAt: !2149)
!2151 = !DILocation(line: 163, column: 19, scope: !527, inlinedAt: !2149)
!2152 = !DILocation(line: 44, column: 2, scope: !538, inlinedAt: !2153)
!2153 = distinct !DILocation(line: 169, column: 10, scope: !527, inlinedAt: !2149)
!2154 = !DILocation(line: 44, column: 15, scope: !538, inlinedAt: !2153)
!2155 = !DILocation(line: 48, column: 2, scope: !538, inlinedAt: !2153)
!2156 = !DILocation(line: 80, column: 9, scope: !538, inlinedAt: !2153)
!2157 = !DILocation(line: 81, column: 1, scope: !538, inlinedAt: !2153)
!2158 = !DILocation(line: 169, column: 8, scope: !527, inlinedAt: !2149)
!2159 = !DILocation(line: 171, column: 26, scope: !527, inlinedAt: !2149)
!2160 = !DILocation(line: 110, column: 94, scope: !553, inlinedAt: !2161)
!2161 = distinct !DILocation(line: 171, column: 2, scope: !527, inlinedAt: !2149)
!2162 = !DILocation(line: 112, column: 9, scope: !553, inlinedAt: !2161)
!2163 = !DILocation(line: 177, column: 27, scope: !527, inlinedAt: !2149)
!2164 = !DILocation(line: 121, column: 95, scope: !562, inlinedAt: !2165)
!2165 = distinct !DILocation(line: 177, column: 2, scope: !527, inlinedAt: !2149)
!2166 = !DILocation(line: 123, column: 9, scope: !562, inlinedAt: !2165)
!2167 = !DILocation(line: 179, column: 2, scope: !527, inlinedAt: !2149)
!2168 = !DILocation(line: 1032, column: 25, scope: !2135)
!2169 = !DILocation(line: 1033, column: 2, scope: !2135)
!2170 = !DILocation(line: 1033, column: 6, scope: !2135)
!2171 = !DILocation(line: 1033, column: 42, scope: !2135)
!2172 = !DILocation(line: 1033, column: 12, scope: !2135)
!2173 = !DILocation(line: 1035, column: 2, scope: !2135)
!2174 = !DILocation(line: 235, column: 84, scope: !575, inlinedAt: !2175)
!2175 = distinct !DILocation(line: 1035, column: 2, scope: !2135)
!2176 = !DILocation(line: 236, column: 23, scope: !575, inlinedAt: !2175)
!2177 = !DILocation(line: 238, column: 9, scope: !575, inlinedAt: !2175)
!2178 = !DILocation(line: 261, column: 22, scope: !575, inlinedAt: !2175)
!2179 = !DILocation(line: 88, column: 80, scope: !586, inlinedAt: !2180)
!2180 = distinct !DILocation(line: 261, column: 2, scope: !575, inlinedAt: !2175)
!2181 = !DILocation(line: 91, column: 6, scope: !593, inlinedAt: !2180)
!2182 = !DILocation(line: 91, column: 10, scope: !593, inlinedAt: !2180)
!2183 = !DILocation(line: 91, column: 6, scope: !586, inlinedAt: !2180)
!2184 = !DILocation(line: 92, column: 3, scope: !597, inlinedAt: !2180)
!2185 = !DILocation(line: 94, column: 2, scope: !586, inlinedAt: !2180)
!2186 = !DILocation(line: 114, column: 1, scope: !586, inlinedAt: !2180)
!2187 = !DILocation(line: 1037, column: 2, scope: !2135)
!2188 = !DILocation(line: 1037, column: 7, scope: !2189)
!2189 = distinct !DILexicalBlock(scope: !2135, file: !293, line: 1037, column: 5)
!2190 = !DILocation(line: 1039, column: 9, scope: !2135)
!2191 = !DILocation(line: 1040, column: 1, scope: !2135)
!2192 = !DILocation(line: 1039, column: 2, scope: !2135)
!2193 = distinct !DISubprogram(name: "cancel_delayable_async_locked", scope: !293, file: !293, line: 947, type: !2136, scopeLine: 948, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2194)
!2194 = !{!2195}
!2195 = !DILocalVariable(name: "dwork", arg: 1, scope: !2193, file: !293, line: 947, type: !284)
!2196 = !DILocation(line: 947, column: 67, scope: !2193)
!2197 = !DILocation(line: 949, column: 26, scope: !2193)
!2198 = !DILocation(line: 949, column: 8, scope: !2193)
!2199 = !DILocation(line: 951, column: 30, scope: !2193)
!2200 = !DILocation(line: 951, column: 37, scope: !2193)
!2201 = !DILocation(line: 951, column: 9, scope: !2193)
!2202 = !DILocation(line: 951, column: 2, scope: !2193)
!2203 = distinct !DISubprogram(name: "k_work_cancel_delayable_sync", scope: !293, file: !293, line: 1042, type: !2204, scopeLine: 1044, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2206)
!2204 = !DISubroutineType(types: !2205)
!2205 = !{!817, !284, !818}
!2206 = !{!2207, !2208, !2209, !2210, !2211, !2212}
!2207 = !DILocalVariable(name: "dwork", arg: 1, scope: !2203, file: !293, line: 1042, type: !284)
!2208 = !DILocalVariable(name: "sync", arg: 2, scope: !2203, file: !293, line: 1043, type: !818)
!2209 = !DILocalVariable(name: "canceller", scope: !2203, file: !293, line: 1054, type: !278)
!2210 = !DILocalVariable(name: "key", scope: !2203, file: !293, line: 1055, type: !518)
!2211 = !DILocalVariable(name: "pending", scope: !2203, file: !293, line: 1056, type: !817)
!2212 = !DILocalVariable(name: "need_wait", scope: !2203, file: !293, line: 1057, type: !817)
!2213 = !DILocation(line: 1042, column: 61, scope: !2203)
!2214 = !DILocation(line: 1043, column: 27, scope: !2203)
!2215 = !DILocation(line: 1052, column: 2, scope: !2203)
!2216 = !DILocation(line: 1052, column: 7, scope: !2217)
!2217 = distinct !DILexicalBlock(scope: !2203, file: !293, line: 1052, column: 5)
!2218 = !DILocation(line: 1054, column: 2, scope: !2203)
!2219 = !DILocation(line: 1054, column: 27, scope: !2203)
!2220 = !DILocation(line: 1054, column: 40, scope: !2203)
!2221 = !DILocation(line: 1054, column: 46, scope: !2203)
!2222 = !DILocation(line: 1055, column: 2, scope: !2203)
!2223 = !DILocation(line: 1055, column: 19, scope: !2203)
!2224 = !DILocation(line: 160, column: 94, scope: !527, inlinedAt: !2225)
!2225 = distinct !DILocation(line: 1055, column: 25, scope: !2203)
!2226 = !DILocation(line: 162, column: 9, scope: !527, inlinedAt: !2225)
!2227 = !DILocation(line: 163, column: 19, scope: !527, inlinedAt: !2225)
!2228 = !DILocation(line: 44, column: 2, scope: !538, inlinedAt: !2229)
!2229 = distinct !DILocation(line: 169, column: 10, scope: !527, inlinedAt: !2225)
!2230 = !DILocation(line: 44, column: 15, scope: !538, inlinedAt: !2229)
!2231 = !DILocation(line: 48, column: 2, scope: !538, inlinedAt: !2229)
!2232 = !DILocation(line: 80, column: 9, scope: !538, inlinedAt: !2229)
!2233 = !DILocation(line: 81, column: 1, scope: !538, inlinedAt: !2229)
!2234 = !DILocation(line: 169, column: 8, scope: !527, inlinedAt: !2225)
!2235 = !DILocation(line: 171, column: 26, scope: !527, inlinedAt: !2225)
!2236 = !DILocation(line: 110, column: 94, scope: !553, inlinedAt: !2237)
!2237 = distinct !DILocation(line: 171, column: 2, scope: !527, inlinedAt: !2225)
!2238 = !DILocation(line: 112, column: 9, scope: !553, inlinedAt: !2237)
!2239 = !DILocation(line: 177, column: 27, scope: !527, inlinedAt: !2225)
!2240 = !DILocation(line: 121, column: 95, scope: !562, inlinedAt: !2241)
!2241 = distinct !DILocation(line: 177, column: 2, scope: !527, inlinedAt: !2225)
!2242 = !DILocation(line: 123, column: 9, scope: !562, inlinedAt: !2241)
!2243 = !DILocation(line: 179, column: 2, scope: !527, inlinedAt: !2225)
!2244 = !DILocation(line: 1055, column: 25, scope: !2203)
!2245 = !DILocation(line: 1056, column: 2, scope: !2203)
!2246 = !DILocation(line: 1056, column: 8, scope: !2203)
!2247 = !DILocation(line: 1056, column: 50, scope: !2203)
!2248 = !DILocation(line: 1056, column: 19, scope: !2203)
!2249 = !DILocation(line: 1056, column: 57, scope: !2203)
!2250 = !DILocation(line: 1057, column: 2, scope: !2203)
!2251 = !DILocation(line: 1057, column: 8, scope: !2203)
!2252 = !DILocation(line: 1059, column: 6, scope: !2253)
!2253 = distinct !DILexicalBlock(scope: !2203, file: !293, line: 1059, column: 6)
!2254 = !DILocation(line: 1059, column: 6, scope: !2203)
!2255 = !DILocation(line: 1060, column: 39, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !2253, file: !293, line: 1059, column: 15)
!2257 = !DILocation(line: 1060, column: 9, scope: !2256)
!2258 = !DILocation(line: 1061, column: 35, scope: !2256)
!2259 = !DILocation(line: 1061, column: 42, scope: !2256)
!2260 = !DILocation(line: 1061, column: 48, scope: !2256)
!2261 = !DILocation(line: 1061, column: 15, scope: !2256)
!2262 = !DILocation(line: 1061, column: 13, scope: !2256)
!2263 = !DILocation(line: 1062, column: 2, scope: !2256)
!2264 = !DILocation(line: 1064, column: 2, scope: !2203)
!2265 = !DILocation(line: 235, column: 84, scope: !575, inlinedAt: !2266)
!2266 = distinct !DILocation(line: 1064, column: 2, scope: !2203)
!2267 = !DILocation(line: 236, column: 23, scope: !575, inlinedAt: !2266)
!2268 = !DILocation(line: 238, column: 9, scope: !575, inlinedAt: !2266)
!2269 = !DILocation(line: 261, column: 22, scope: !575, inlinedAt: !2266)
!2270 = !DILocation(line: 88, column: 80, scope: !586, inlinedAt: !2271)
!2271 = distinct !DILocation(line: 261, column: 2, scope: !575, inlinedAt: !2266)
!2272 = !DILocation(line: 91, column: 6, scope: !593, inlinedAt: !2271)
!2273 = !DILocation(line: 91, column: 10, scope: !593, inlinedAt: !2271)
!2274 = !DILocation(line: 91, column: 6, scope: !586, inlinedAt: !2271)
!2275 = !DILocation(line: 92, column: 3, scope: !597, inlinedAt: !2271)
!2276 = !DILocation(line: 94, column: 2, scope: !586, inlinedAt: !2271)
!2277 = !DILocation(line: 114, column: 1, scope: !586, inlinedAt: !2271)
!2278 = !DILocation(line: 1066, column: 6, scope: !2279)
!2279 = distinct !DILexicalBlock(scope: !2203, file: !293, line: 1066, column: 6)
!2280 = !DILocation(line: 1066, column: 6, scope: !2203)
!2281 = !DILocation(line: 1067, column: 15, scope: !2282)
!2282 = distinct !DILexicalBlock(scope: !2279, file: !293, line: 1066, column: 17)
!2283 = !DILocation(line: 1067, column: 26, scope: !2282)
!2284 = !DILocation(line: 1067, column: 46, scope: !2282)
!2285 = !DILocation(line: 1067, column: 3, scope: !2282)
!2286 = !DILocation(line: 1068, column: 2, scope: !2282)
!2287 = !DILocation(line: 1070, column: 2, scope: !2203)
!2288 = !DILocation(line: 1070, column: 7, scope: !2289)
!2289 = distinct !DILexicalBlock(scope: !2203, file: !293, line: 1070, column: 5)
!2290 = !DILocation(line: 1071, column: 9, scope: !2203)
!2291 = !DILocation(line: 1072, column: 1, scope: !2203)
!2292 = !DILocation(line: 1071, column: 2, scope: !2203)
!2293 = distinct !DISubprogram(name: "k_work_flush_delayable", scope: !293, file: !293, line: 1074, type: !2204, scopeLine: 1076, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2294)
!2294 = !{!2295, !2296, !2297, !2298, !2299, !2300, !2303}
!2295 = !DILocalVariable(name: "dwork", arg: 1, scope: !2293, file: !293, line: 1074, type: !284)
!2296 = !DILocalVariable(name: "sync", arg: 2, scope: !2293, file: !293, line: 1075, type: !818)
!2297 = !DILocalVariable(name: "work", scope: !2293, file: !293, line: 1086, type: !121)
!2298 = !DILocalVariable(name: "flusher", scope: !2293, file: !293, line: 1087, type: !267)
!2299 = !DILocalVariable(name: "key", scope: !2293, file: !293, line: 1088, type: !518)
!2300 = !DILocalVariable(name: "queue", scope: !2301, file: !293, line: 1103, type: !137)
!2301 = distinct !DILexicalBlock(scope: !2302, file: !293, line: 1102, column: 32)
!2302 = distinct !DILexicalBlock(scope: !2293, file: !293, line: 1102, column: 6)
!2303 = !DILocalVariable(name: "need_flush", scope: !2293, file: !293, line: 1109, type: !817)
!2304 = !DILocation(line: 1074, column: 55, scope: !2293)
!2305 = !DILocation(line: 1075, column: 28, scope: !2293)
!2306 = !DILocation(line: 1084, column: 2, scope: !2293)
!2307 = !DILocation(line: 1084, column: 7, scope: !2308)
!2308 = distinct !DILexicalBlock(scope: !2293, file: !293, line: 1084, column: 5)
!2309 = !DILocation(line: 1086, column: 2, scope: !2293)
!2310 = !DILocation(line: 1086, column: 17, scope: !2293)
!2311 = !DILocation(line: 1086, column: 25, scope: !2293)
!2312 = !DILocation(line: 1086, column: 32, scope: !2293)
!2313 = !DILocation(line: 1087, column: 2, scope: !2293)
!2314 = !DILocation(line: 1087, column: 25, scope: !2293)
!2315 = !DILocation(line: 1087, column: 36, scope: !2293)
!2316 = !DILocation(line: 1087, column: 42, scope: !2293)
!2317 = !DILocation(line: 1088, column: 2, scope: !2293)
!2318 = !DILocation(line: 1088, column: 19, scope: !2293)
!2319 = !DILocation(line: 160, column: 94, scope: !527, inlinedAt: !2320)
!2320 = distinct !DILocation(line: 1088, column: 25, scope: !2293)
!2321 = !DILocation(line: 162, column: 9, scope: !527, inlinedAt: !2320)
!2322 = !DILocation(line: 163, column: 19, scope: !527, inlinedAt: !2320)
!2323 = !DILocation(line: 44, column: 2, scope: !538, inlinedAt: !2324)
!2324 = distinct !DILocation(line: 169, column: 10, scope: !527, inlinedAt: !2320)
!2325 = !DILocation(line: 44, column: 15, scope: !538, inlinedAt: !2324)
!2326 = !DILocation(line: 48, column: 2, scope: !538, inlinedAt: !2324)
!2327 = !DILocation(line: 80, column: 9, scope: !538, inlinedAt: !2324)
!2328 = !DILocation(line: 81, column: 1, scope: !538, inlinedAt: !2324)
!2329 = !DILocation(line: 169, column: 8, scope: !527, inlinedAt: !2320)
!2330 = !DILocation(line: 171, column: 26, scope: !527, inlinedAt: !2320)
!2331 = !DILocation(line: 110, column: 94, scope: !553, inlinedAt: !2332)
!2332 = distinct !DILocation(line: 171, column: 2, scope: !527, inlinedAt: !2320)
!2333 = !DILocation(line: 112, column: 9, scope: !553, inlinedAt: !2332)
!2334 = !DILocation(line: 177, column: 27, scope: !527, inlinedAt: !2320)
!2335 = !DILocation(line: 121, column: 95, scope: !562, inlinedAt: !2336)
!2336 = distinct !DILocation(line: 177, column: 2, scope: !527, inlinedAt: !2320)
!2337 = !DILocation(line: 123, column: 9, scope: !562, inlinedAt: !2336)
!2338 = !DILocation(line: 179, column: 2, scope: !527, inlinedAt: !2320)
!2339 = !DILocation(line: 1088, column: 25, scope: !2293)
!2340 = !DILocation(line: 1091, column: 27, scope: !2341)
!2341 = distinct !DILexicalBlock(scope: !2293, file: !293, line: 1091, column: 6)
!2342 = !DILocation(line: 1091, column: 6, scope: !2341)
!2343 = !DILocation(line: 1091, column: 33, scope: !2341)
!2344 = !DILocation(line: 1091, column: 6, scope: !2293)
!2345 = !DILocation(line: 1092, column: 3, scope: !2346)
!2346 = distinct !DILexicalBlock(scope: !2341, file: !293, line: 1091, column: 40)
!2347 = !DILocation(line: 235, column: 84, scope: !575, inlinedAt: !2348)
!2348 = distinct !DILocation(line: 1092, column: 3, scope: !2346)
!2349 = !DILocation(line: 236, column: 23, scope: !575, inlinedAt: !2348)
!2350 = !DILocation(line: 238, column: 9, scope: !575, inlinedAt: !2348)
!2351 = !DILocation(line: 261, column: 22, scope: !575, inlinedAt: !2348)
!2352 = !DILocation(line: 88, column: 80, scope: !586, inlinedAt: !2353)
!2353 = distinct !DILocation(line: 261, column: 2, scope: !575, inlinedAt: !2348)
!2354 = !DILocation(line: 91, column: 6, scope: !593, inlinedAt: !2353)
!2355 = !DILocation(line: 91, column: 10, scope: !593, inlinedAt: !2353)
!2356 = !DILocation(line: 91, column: 6, scope: !586, inlinedAt: !2353)
!2357 = !DILocation(line: 92, column: 3, scope: !597, inlinedAt: !2353)
!2358 = !DILocation(line: 94, column: 2, scope: !586, inlinedAt: !2353)
!2359 = !DILocation(line: 114, column: 1, scope: !586, inlinedAt: !2353)
!2360 = !DILocation(line: 1094, column: 3, scope: !2346)
!2361 = !DILocation(line: 1094, column: 8, scope: !2362)
!2362 = distinct !DILexicalBlock(scope: !2346, file: !293, line: 1094, column: 6)
!2363 = !DILocation(line: 1096, column: 3, scope: !2346)
!2364 = !DILocation(line: 1102, column: 24, scope: !2302)
!2365 = !DILocation(line: 1102, column: 6, scope: !2302)
!2366 = !DILocation(line: 1102, column: 6, scope: !2293)
!2367 = !DILocation(line: 1103, column: 3, scope: !2301)
!2368 = !DILocation(line: 1103, column: 20, scope: !2301)
!2369 = !DILocation(line: 1103, column: 28, scope: !2301)
!2370 = !DILocation(line: 1103, column: 35, scope: !2301)
!2371 = !DILocation(line: 1105, column: 32, scope: !2301)
!2372 = !DILocation(line: 1105, column: 9, scope: !2301)
!2373 = !DILocation(line: 1106, column: 2, scope: !2302)
!2374 = !DILocation(line: 1106, column: 2, scope: !2301)
!2375 = !DILocation(line: 1109, column: 2, scope: !2293)
!2376 = !DILocation(line: 1109, column: 8, scope: !2293)
!2377 = !DILocation(line: 1109, column: 39, scope: !2293)
!2378 = !DILocation(line: 1109, column: 45, scope: !2293)
!2379 = !DILocation(line: 1109, column: 21, scope: !2293)
!2380 = !DILocation(line: 1111, column: 2, scope: !2293)
!2381 = !DILocation(line: 235, column: 84, scope: !575, inlinedAt: !2382)
!2382 = distinct !DILocation(line: 1111, column: 2, scope: !2293)
!2383 = !DILocation(line: 236, column: 23, scope: !575, inlinedAt: !2382)
!2384 = !DILocation(line: 238, column: 9, scope: !575, inlinedAt: !2382)
!2385 = !DILocation(line: 261, column: 22, scope: !575, inlinedAt: !2382)
!2386 = !DILocation(line: 88, column: 80, scope: !586, inlinedAt: !2387)
!2387 = distinct !DILocation(line: 261, column: 2, scope: !575, inlinedAt: !2382)
!2388 = !DILocation(line: 91, column: 6, scope: !593, inlinedAt: !2387)
!2389 = !DILocation(line: 91, column: 10, scope: !593, inlinedAt: !2387)
!2390 = !DILocation(line: 91, column: 6, scope: !586, inlinedAt: !2387)
!2391 = !DILocation(line: 92, column: 3, scope: !597, inlinedAt: !2387)
!2392 = !DILocation(line: 94, column: 2, scope: !586, inlinedAt: !2387)
!2393 = !DILocation(line: 114, column: 1, scope: !586, inlinedAt: !2387)
!2394 = !DILocation(line: 1114, column: 6, scope: !2395)
!2395 = distinct !DILexicalBlock(scope: !2293, file: !293, line: 1114, column: 6)
!2396 = !DILocation(line: 1114, column: 6, scope: !2293)
!2397 = !DILocation(line: 1115, column: 15, scope: !2398)
!2398 = distinct !DILexicalBlock(scope: !2395, file: !293, line: 1114, column: 18)
!2399 = !DILocation(line: 1115, column: 24, scope: !2398)
!2400 = !DILocation(line: 1115, column: 44, scope: !2398)
!2401 = !DILocation(line: 1115, column: 3, scope: !2398)
!2402 = !DILocation(line: 1116, column: 2, scope: !2398)
!2403 = !DILocation(line: 1118, column: 2, scope: !2293)
!2404 = !DILocation(line: 1118, column: 7, scope: !2405)
!2405 = distinct !DILexicalBlock(scope: !2293, file: !293, line: 1118, column: 5)
!2406 = !DILocation(line: 1120, column: 9, scope: !2293)
!2407 = !DILocation(line: 1120, column: 2, scope: !2293)
!2408 = !DILocation(line: 1121, column: 1, scope: !2293)
!2409 = !DISubprogram(name: "z_timeout_expires", scope: !6, file: !6, line: 642, type: !2410, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !248)
!2410 = !DISubroutineType(types: !2411)
!2411 = !{!114, !2412}
!2412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2413, size: 32)
!2413 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !203)
!2414 = !DISubprogram(name: "z_timeout_remaining", scope: !6, file: !6, line: 643, type: !2410, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !248)
!2415 = distinct !DISubprogram(name: "sys_sflist_is_empty", scope: !431, file: !431, line: 335, type: !2416, scopeLine: 335, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2419)
!2416 = !DISubroutineType(types: !2417)
!2417 = !{!817, !2418}
!2418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 32)
!2419 = !{!2420}
!2420 = !DILocalVariable(name: "list", arg: 1, scope: !2415, file: !431, line: 335, type: !2418)
!2421 = !DILocation(line: 335, column: 55, scope: !2415)
!2422 = !DILocation(line: 335, column: 92, scope: !2415)
!2423 = !DILocation(line: 335, column: 71, scope: !2415)
!2424 = !DILocation(line: 335, column: 98, scope: !2415)
!2425 = !DILocation(line: 335, column: 63, scope: !2415)
!2426 = distinct !DISubprogram(name: "sys_sflist_peek_head", scope: !431, file: !431, line: 255, type: !2427, scopeLine: 256, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2429)
!2427 = !DISubroutineType(types: !2428)
!2428 = !{!435, !2418}
!2429 = !{!2430}
!2430 = !DILocalVariable(name: "list", arg: 1, scope: !2426, file: !431, line: 255, type: !2418)
!2431 = !DILocation(line: 255, column: 64, scope: !2426)
!2432 = !DILocation(line: 257, column: 9, scope: !2426)
!2433 = !DILocation(line: 257, column: 15, scope: !2426)
!2434 = !DILocation(line: 257, column: 2, scope: !2426)
!2435 = distinct !DISubprogram(name: "flag_test", scope: !293, file: !293, line: 33, type: !2436, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2438)
!2436 = !DISubroutineType(types: !2437)
!2437 = !{!817, !1651, !199}
!2438 = !{!2439, !2440}
!2439 = !DILocalVariable(name: "flagp", arg: 1, scope: !2435, file: !293, line: 33, type: !1651)
!2440 = !DILocalVariable(name: "bit", arg: 2, scope: !2435, file: !293, line: 34, type: !199)
!2441 = !DILocation(line: 33, column: 47, scope: !2435)
!2442 = !DILocation(line: 34, column: 18, scope: !2435)
!2443 = !DILocation(line: 36, column: 11, scope: !2435)
!2444 = !DILocation(line: 36, column: 10, scope: !2435)
!2445 = !DILocation(line: 36, column: 28, scope: !2435)
!2446 = !DILocation(line: 36, column: 24, scope: !2435)
!2447 = !DILocation(line: 36, column: 17, scope: !2435)
!2448 = !DILocation(line: 36, column: 35, scope: !2435)
!2449 = !DILocation(line: 36, column: 2, scope: !2435)
!2450 = distinct !DISubprogram(name: "queue_submit_locked", scope: !293, file: !293, line: 251, type: !614, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2451)
!2451 = !{!2452, !2453, !2454, !2455, !2456, !2457}
!2452 = !DILocalVariable(name: "queue", arg: 1, scope: !2450, file: !293, line: 251, type: !137)
!2453 = !DILocalVariable(name: "work", arg: 2, scope: !2450, file: !293, line: 252, type: !121)
!2454 = !DILocalVariable(name: "ret", scope: !2450, file: !293, line: 258, type: !120)
!2455 = !DILocalVariable(name: "chained", scope: !2450, file: !293, line: 259, type: !817)
!2456 = !DILocalVariable(name: "draining", scope: !2450, file: !293, line: 260, type: !817)
!2457 = !DILocalVariable(name: "plugged", scope: !2450, file: !293, line: 261, type: !817)
!2458 = !DILocation(line: 251, column: 56, scope: !2450)
!2459 = !DILocation(line: 252, column: 26, scope: !2450)
!2460 = !DILocation(line: 254, column: 6, scope: !2461)
!2461 = distinct !DILexicalBlock(scope: !2450, file: !293, line: 254, column: 6)
!2462 = !DILocation(line: 254, column: 12, scope: !2461)
!2463 = !DILocation(line: 254, column: 6, scope: !2450)
!2464 = !DILocation(line: 255, column: 3, scope: !2465)
!2465 = distinct !DILexicalBlock(scope: !2461, file: !293, line: 254, column: 18)
!2466 = !DILocation(line: 258, column: 2, scope: !2450)
!2467 = !DILocation(line: 258, column: 6, scope: !2450)
!2468 = !DILocation(line: 259, column: 2, scope: !2450)
!2469 = !DILocation(line: 259, column: 8, scope: !2450)
!2470 = !DILocation(line: 259, column: 35, scope: !2450)
!2471 = !DILocation(line: 259, column: 47, scope: !2450)
!2472 = !DILocation(line: 259, column: 54, scope: !2450)
!2473 = !DILocation(line: 259, column: 43, scope: !2450)
!2474 = !DILocation(line: 259, column: 62, scope: !2450)
!2475 = !DILocation(line: 259, column: 66, scope: !2450)
!2476 = !DILocation(line: 259, column: 65, scope: !2450)
!2477 = !DILocation(line: 0, scope: !2450)
!2478 = !DILocation(line: 260, column: 2, scope: !2450)
!2479 = !DILocation(line: 260, column: 8, scope: !2450)
!2480 = !DILocation(line: 260, column: 30, scope: !2450)
!2481 = !DILocation(line: 260, column: 37, scope: !2450)
!2482 = !DILocation(line: 260, column: 19, scope: !2450)
!2483 = !DILocation(line: 261, column: 2, scope: !2450)
!2484 = !DILocation(line: 261, column: 8, scope: !2450)
!2485 = !DILocation(line: 261, column: 29, scope: !2450)
!2486 = !DILocation(line: 261, column: 36, scope: !2450)
!2487 = !DILocation(line: 261, column: 18, scope: !2450)
!2488 = !DILocation(line: 270, column: 18, scope: !2489)
!2489 = distinct !DILexicalBlock(scope: !2450, file: !293, line: 270, column: 6)
!2490 = !DILocation(line: 270, column: 25, scope: !2489)
!2491 = !DILocation(line: 270, column: 7, scope: !2489)
!2492 = !DILocation(line: 270, column: 6, scope: !2450)
!2493 = !DILocation(line: 271, column: 7, scope: !2494)
!2494 = distinct !DILexicalBlock(scope: !2489, file: !293, line: 270, column: 59)
!2495 = !DILocation(line: 272, column: 2, scope: !2494)
!2496 = !DILocation(line: 272, column: 13, scope: !2497)
!2497 = distinct !DILexicalBlock(scope: !2489, file: !293, line: 272, column: 13)
!2498 = !DILocation(line: 272, column: 22, scope: !2497)
!2499 = !DILocation(line: 272, column: 26, scope: !2497)
!2500 = !DILocation(line: 272, column: 13, scope: !2489)
!2501 = !DILocation(line: 273, column: 7, scope: !2502)
!2502 = distinct !DILexicalBlock(scope: !2497, file: !293, line: 272, column: 35)
!2503 = !DILocation(line: 274, column: 2, scope: !2502)
!2504 = !DILocation(line: 274, column: 13, scope: !2505)
!2505 = distinct !DILexicalBlock(scope: !2497, file: !293, line: 274, column: 13)
!2506 = !DILocation(line: 274, column: 21, scope: !2505)
!2507 = !DILocation(line: 274, column: 25, scope: !2505)
!2508 = !DILocation(line: 274, column: 13, scope: !2497)
!2509 = !DILocation(line: 275, column: 7, scope: !2510)
!2510 = distinct !DILexicalBlock(scope: !2505, file: !293, line: 274, column: 35)
!2511 = !DILocation(line: 276, column: 2, scope: !2510)
!2512 = !DILocation(line: 277, column: 21, scope: !2513)
!2513 = distinct !DILexicalBlock(scope: !2505, file: !293, line: 276, column: 9)
!2514 = !DILocation(line: 277, column: 28, scope: !2513)
!2515 = !DILocation(line: 277, column: 38, scope: !2513)
!2516 = !DILocation(line: 277, column: 44, scope: !2513)
!2517 = !DILocation(line: 277, column: 3, scope: !2513)
!2518 = !DILocation(line: 278, column: 7, scope: !2513)
!2519 = !DILocation(line: 279, column: 29, scope: !2513)
!2520 = !DILocation(line: 279, column: 9, scope: !2513)
!2521 = !DILocation(line: 282, column: 9, scope: !2450)
!2522 = !DILocation(line: 282, column: 2, scope: !2450)
!2523 = !DILocation(line: 283, column: 1, scope: !2450)
!2524 = !DISubprogram(name: "k_is_in_isr", scope: !6, file: !6, line: 1070, type: !2525, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !248)
!2525 = !DISubroutineType(types: !2526)
!2526 = !{!817}
!2527 = distinct !DISubprogram(name: "sys_slist_append", scope: !126, file: !126, line: 318, type: !2528, scopeLine: 318, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2530)
!2528 = !DISubroutineType(types: !2529)
!2529 = !{null, !1266, !259}
!2530 = !{!2531, !2532}
!2531 = !DILocalVariable(name: "list", arg: 1, scope: !2527, file: !126, line: 318, type: !1266)
!2532 = !DILocalVariable(name: "node", arg: 2, scope: !2527, file: !126, line: 318, type: !259)
!2533 = !DILocation(line: 318, column: 50, scope: !2527)
!2534 = !DILocation(line: 318, column: 69, scope: !2527)
!2535 = !DILocation(line: 318, column: 94, scope: !2527)
!2536 = !DILocation(line: 318, column: 77, scope: !2527)
!2537 = !DILocation(line: 318, column: 137, scope: !2538)
!2538 = distinct !DILexicalBlock(scope: !2527, file: !126, line: 318, column: 117)
!2539 = !DILocation(line: 318, column: 117, scope: !2538)
!2540 = !DILocation(line: 318, column: 143, scope: !2538)
!2541 = !DILocation(line: 318, column: 117, scope: !2527)
!2542 = !DILocation(line: 318, column: 177, scope: !2543)
!2543 = distinct !DILexicalBlock(scope: !2538, file: !126, line: 318, column: 158)
!2544 = !DILocation(line: 318, column: 183, scope: !2543)
!2545 = !DILocation(line: 318, column: 160, scope: !2543)
!2546 = !DILocation(line: 318, column: 207, scope: !2543)
!2547 = !DILocation(line: 318, column: 213, scope: !2543)
!2548 = !DILocation(line: 318, column: 190, scope: !2543)
!2549 = !DILocation(line: 318, column: 220, scope: !2543)
!2550 = !DILocation(line: 318, column: 267, scope: !2551)
!2551 = distinct !DILexicalBlock(scope: !2538, file: !126, line: 318, column: 227)
!2552 = !DILocation(line: 318, column: 247, scope: !2551)
!2553 = !DILocation(line: 318, column: 274, scope: !2551)
!2554 = !DILocation(line: 318, column: 229, scope: !2551)
!2555 = !DILocation(line: 318, column: 298, scope: !2551)
!2556 = !DILocation(line: 318, column: 304, scope: !2551)
!2557 = !DILocation(line: 318, column: 281, scope: !2551)
!2558 = !DILocation(line: 318, column: 313, scope: !2527)
!2559 = distinct !DISubprogram(name: "z_snode_next_set", scope: !126, file: !126, line: 216, type: !2560, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2562)
!2560 = !DISubroutineType(types: !2561)
!2561 = !{null, !259, !259}
!2562 = !{!2563, !2564}
!2563 = !DILocalVariable(name: "parent", arg: 1, scope: !2559, file: !126, line: 216, type: !259)
!2564 = !DILocalVariable(name: "child", arg: 2, scope: !2559, file: !126, line: 216, type: !259)
!2565 = !DILocation(line: 216, column: 50, scope: !2559)
!2566 = !DILocation(line: 216, column: 71, scope: !2559)
!2567 = !DILocation(line: 218, column: 17, scope: !2559)
!2568 = !DILocation(line: 218, column: 2, scope: !2559)
!2569 = !DILocation(line: 218, column: 10, scope: !2559)
!2570 = !DILocation(line: 218, column: 15, scope: !2559)
!2571 = !DILocation(line: 219, column: 1, scope: !2559)
!2572 = distinct !DISubprogram(name: "sys_slist_peek_tail", scope: !126, file: !126, line: 250, type: !2573, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2575)
!2573 = !DISubroutineType(types: !2574)
!2574 = !{!259, !1266}
!2575 = !{!2576}
!2576 = !DILocalVariable(name: "list", arg: 1, scope: !2572, file: !126, line: 250, type: !1266)
!2577 = !DILocation(line: 250, column: 61, scope: !2572)
!2578 = !DILocation(line: 252, column: 9, scope: !2572)
!2579 = !DILocation(line: 252, column: 15, scope: !2572)
!2580 = !DILocation(line: 252, column: 2, scope: !2572)
!2581 = distinct !DISubprogram(name: "z_slist_tail_set", scope: !126, file: !126, line: 226, type: !2528, scopeLine: 227, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2582)
!2582 = !{!2583, !2584}
!2583 = !DILocalVariable(name: "list", arg: 1, scope: !2581, file: !126, line: 226, type: !1266)
!2584 = !DILocalVariable(name: "node", arg: 2, scope: !2581, file: !126, line: 226, type: !259)
!2585 = !DILocation(line: 226, column: 50, scope: !2581)
!2586 = !DILocation(line: 226, column: 69, scope: !2581)
!2587 = !DILocation(line: 228, column: 15, scope: !2581)
!2588 = !DILocation(line: 228, column: 2, scope: !2581)
!2589 = !DILocation(line: 228, column: 8, scope: !2581)
!2590 = !DILocation(line: 228, column: 13, scope: !2581)
!2591 = !DILocation(line: 229, column: 1, scope: !2581)
!2592 = distinct !DISubprogram(name: "z_slist_head_set", scope: !126, file: !126, line: 221, type: !2528, scopeLine: 222, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2593)
!2593 = !{!2594, !2595}
!2594 = !DILocalVariable(name: "list", arg: 1, scope: !2592, file: !126, line: 221, type: !1266)
!2595 = !DILocalVariable(name: "node", arg: 2, scope: !2592, file: !126, line: 221, type: !259)
!2596 = !DILocation(line: 221, column: 50, scope: !2592)
!2597 = !DILocation(line: 221, column: 69, scope: !2592)
!2598 = !DILocation(line: 223, column: 15, scope: !2592)
!2599 = !DILocation(line: 223, column: 2, scope: !2592)
!2600 = !DILocation(line: 223, column: 8, scope: !2592)
!2601 = !DILocation(line: 223, column: 13, scope: !2592)
!2602 = !DILocation(line: 224, column: 1, scope: !2592)
!2603 = !DISubprogram(name: "z_reschedule_irqlock", scope: !783, file: !783, line: 52, type: !2604, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !248)
!2604 = !DISubroutineType(types: !2605)
!2605 = !{null, !199}
!2606 = distinct !DISubprogram(name: "queue_flusher_locked", scope: !293, file: !293, line: 171, type: !2607, scopeLine: 174, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2609)
!2607 = !DISubroutineType(types: !2608)
!2608 = !{null, !137, !121, !267}
!2609 = !{!2610, !2611, !2612, !2613, !2614}
!2610 = !DILocalVariable(name: "queue", arg: 1, scope: !2606, file: !293, line: 171, type: !137)
!2611 = !DILocalVariable(name: "work", arg: 2, scope: !2606, file: !293, line: 172, type: !121)
!2612 = !DILocalVariable(name: "flusher", arg: 3, scope: !2606, file: !293, line: 173, type: !267)
!2613 = !DILocalVariable(name: "in_list", scope: !2606, file: !293, line: 175, type: !817)
!2614 = !DILocalVariable(name: "wn", scope: !2606, file: !293, line: 176, type: !121)
!2615 = !DILocation(line: 171, column: 51, scope: !2606)
!2616 = !DILocation(line: 172, column: 21, scope: !2606)
!2617 = !DILocation(line: 173, column: 29, scope: !2606)
!2618 = !DILocation(line: 175, column: 2, scope: !2606)
!2619 = !DILocation(line: 175, column: 8, scope: !2606)
!2620 = !DILocation(line: 176, column: 2, scope: !2606)
!2621 = !DILocation(line: 176, column: 17, scope: !2606)
!2622 = !DILocation(line: 179, column: 35, scope: !2623)
!2623 = distinct !DILexicalBlock(scope: !2606, file: !293, line: 179, column: 2)
!2624 = !DILocation(line: 179, column: 42, scope: !2623)
!2625 = !DILocation(line: 179, column: 14, scope: !2623)
!2626 = !DILocation(line: 179, column: 13, scope: !2623)
!2627 = !DILocation(line: 179, column: 114, scope: !2628)
!2628 = distinct !DILexicalBlock(scope: !2623, file: !293, line: 179, column: 55)
!2629 = !DILocation(line: 179, column: 121, scope: !2628)
!2630 = !DILocation(line: 179, column: 93, scope: !2628)
!2631 = !DILocation(line: 179, column: 133, scope: !2628)
!2632 = !DILocation(line: 179, column: 55, scope: !2623)
!2633 = !DILocation(line: 179, column: 182, scope: !2628)
!2634 = !DILocation(line: 179, column: 10, scope: !2623)
!2635 = !DILocation(line: 179, column: 7, scope: !2623)
!2636 = !DILocation(line: 179, column: 191, scope: !2637)
!2637 = distinct !DILexicalBlock(scope: !2623, file: !293, line: 179, column: 2)
!2638 = !DILocation(line: 179, column: 194, scope: !2637)
!2639 = !DILocation(line: 179, column: 2, scope: !2623)
!2640 = !DILocation(line: 180, column: 7, scope: !2641)
!2641 = distinct !DILexicalBlock(scope: !2642, file: !293, line: 180, column: 7)
!2642 = distinct !DILexicalBlock(scope: !2637, file: !293, line: 179, column: 393)
!2643 = !DILocation(line: 180, column: 13, scope: !2641)
!2644 = !DILocation(line: 180, column: 10, scope: !2641)
!2645 = !DILocation(line: 180, column: 7, scope: !2642)
!2646 = !DILocation(line: 181, column: 12, scope: !2647)
!2647 = distinct !DILexicalBlock(scope: !2641, file: !293, line: 180, column: 19)
!2648 = !DILocation(line: 182, column: 4, scope: !2647)
!2649 = !DILocation(line: 184, column: 2, scope: !2642)
!2650 = !DILocation(line: 179, column: 207, scope: !2637)
!2651 = !DILocation(line: 179, column: 206, scope: !2637)
!2652 = !DILocation(line: 179, column: 238, scope: !2637)
!2653 = !DILocation(line: 179, column: 243, scope: !2637)
!2654 = !DILocation(line: 179, column: 215, scope: !2637)
!2655 = !DILocation(line: 179, column: 214, scope: !2637)
!2656 = !DILocation(line: 179, column: 315, scope: !2657)
!2657 = distinct !DILexicalBlock(scope: !2637, file: !293, line: 179, column: 254)
!2658 = !DILocation(line: 179, column: 320, scope: !2657)
!2659 = !DILocation(line: 179, column: 292, scope: !2657)
!2660 = !DILocation(line: 179, column: 330, scope: !2657)
!2661 = !DILocation(line: 179, column: 254, scope: !2637)
!2662 = !DILocation(line: 179, column: 379, scope: !2657)
!2663 = !DILocation(line: 179, column: 203, scope: !2637)
!2664 = !DILocation(line: 179, column: 2, scope: !2637)
!2665 = distinct !{!2665, !2639, !2666}
!2666 = !DILocation(line: 184, column: 2, scope: !2623)
!2667 = !DILocation(line: 186, column: 15, scope: !2606)
!2668 = !DILocation(line: 186, column: 2, scope: !2606)
!2669 = !DILocation(line: 187, column: 6, scope: !2670)
!2670 = distinct !DILexicalBlock(scope: !2606, file: !293, line: 187, column: 6)
!2671 = !DILocation(line: 187, column: 6, scope: !2606)
!2672 = !DILocation(line: 188, column: 21, scope: !2673)
!2673 = distinct !DILexicalBlock(scope: !2670, file: !293, line: 187, column: 15)
!2674 = !DILocation(line: 188, column: 28, scope: !2673)
!2675 = !DILocation(line: 188, column: 38, scope: !2673)
!2676 = !DILocation(line: 188, column: 44, scope: !2673)
!2677 = !DILocation(line: 189, column: 7, scope: !2673)
!2678 = !DILocation(line: 189, column: 16, scope: !2673)
!2679 = !DILocation(line: 189, column: 21, scope: !2673)
!2680 = !DILocation(line: 188, column: 3, scope: !2673)
!2681 = !DILocation(line: 190, column: 2, scope: !2673)
!2682 = !DILocation(line: 191, column: 22, scope: !2683)
!2683 = distinct !DILexicalBlock(scope: !2670, file: !293, line: 190, column: 9)
!2684 = !DILocation(line: 191, column: 29, scope: !2683)
!2685 = !DILocation(line: 191, column: 39, scope: !2683)
!2686 = !DILocation(line: 191, column: 48, scope: !2683)
!2687 = !DILocation(line: 191, column: 53, scope: !2683)
!2688 = !DILocation(line: 191, column: 3, scope: !2683)
!2689 = !DILocation(line: 193, column: 1, scope: !2606)
!2690 = distinct !DISubprogram(name: "sys_slist_peek_head", scope: !126, file: !126, line: 238, type: !2573, scopeLine: 239, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2691)
!2691 = !{!2692}
!2692 = !DILocalVariable(name: "list", arg: 1, scope: !2690, file: !126, line: 238, type: !1266)
!2693 = !DILocation(line: 238, column: 61, scope: !2690)
!2694 = !DILocation(line: 240, column: 9, scope: !2690)
!2695 = !DILocation(line: 240, column: 15, scope: !2690)
!2696 = !DILocation(line: 240, column: 2, scope: !2690)
!2697 = distinct !DISubprogram(name: "sys_slist_peek_next", scope: !126, file: !126, line: 292, type: !2698, scopeLine: 292, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2700)
!2698 = !DISubroutineType(types: !2699)
!2699 = !{!259, !259}
!2700 = !{!2701}
!2701 = !DILocalVariable(name: "node", arg: 1, scope: !2697, file: !126, line: 292, type: !259)
!2702 = !DILocation(line: 292, column: 62, scope: !2697)
!2703 = !DILocation(line: 292, column: 77, scope: !2697)
!2704 = !DILocation(line: 292, column: 82, scope: !2697)
!2705 = !DILocation(line: 292, column: 127, scope: !2697)
!2706 = !DILocation(line: 292, column: 98, scope: !2697)
!2707 = !DILocation(line: 292, column: 70, scope: !2697)
!2708 = distinct !DISubprogram(name: "init_flusher", scope: !293, file: !293, line: 74, type: !2709, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2711)
!2709 = !DISubroutineType(types: !2710)
!2710 = !{null, !267}
!2711 = !{!2712}
!2712 = !DILocalVariable(name: "flusher", arg: 1, scope: !2708, file: !293, line: 74, type: !267)
!2713 = !DILocation(line: 74, column: 56, scope: !2708)
!2714 = !DILocation(line: 76, column: 14, scope: !2708)
!2715 = !DILocation(line: 76, column: 23, scope: !2708)
!2716 = !DILocation(line: 76, column: 2, scope: !2708)
!2717 = !DILocation(line: 77, column: 15, scope: !2708)
!2718 = !DILocation(line: 77, column: 24, scope: !2708)
!2719 = !DILocation(line: 77, column: 2, scope: !2708)
!2720 = !DILocation(line: 78, column: 1, scope: !2708)
!2721 = distinct !DISubprogram(name: "sys_slist_insert", scope: !126, file: !126, line: 365, type: !2722, scopeLine: 365, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2724)
!2722 = !DISubroutineType(types: !2723)
!2723 = !{null, !1266, !259, !259}
!2724 = !{!2725, !2726, !2727}
!2725 = !DILocalVariable(name: "list", arg: 1, scope: !2721, file: !126, line: 365, type: !1266)
!2726 = !DILocalVariable(name: "prev", arg: 2, scope: !2721, file: !126, line: 365, type: !259)
!2727 = !DILocalVariable(name: "node", arg: 3, scope: !2721, file: !126, line: 365, type: !259)
!2728 = !DILocation(line: 365, column: 50, scope: !2721)
!2729 = !DILocation(line: 365, column: 69, scope: !2721)
!2730 = !DILocation(line: 365, column: 88, scope: !2721)
!2731 = !DILocation(line: 365, column: 100, scope: !2732)
!2732 = distinct !DILexicalBlock(scope: !2721, file: !126, line: 365, column: 100)
!2733 = !DILocation(line: 365, column: 105, scope: !2732)
!2734 = !DILocation(line: 365, column: 100, scope: !2721)
!2735 = !DILocation(line: 365, column: 140, scope: !2736)
!2736 = distinct !DILexicalBlock(scope: !2732, file: !126, line: 365, column: 120)
!2737 = !DILocation(line: 365, column: 146, scope: !2736)
!2738 = !DILocation(line: 365, column: 122, scope: !2736)
!2739 = !DILocation(line: 365, column: 153, scope: !2736)
!2740 = !DILocation(line: 365, column: 182, scope: !2741)
!2741 = distinct !DILexicalBlock(scope: !2732, file: !126, line: 365, column: 164)
!2742 = !DILocation(line: 365, column: 164, scope: !2741)
!2743 = !DILocation(line: 365, column: 188, scope: !2741)
!2744 = !DILocation(line: 365, column: 164, scope: !2732)
!2745 = !DILocation(line: 365, column: 222, scope: !2746)
!2746 = distinct !DILexicalBlock(scope: !2741, file: !126, line: 365, column: 203)
!2747 = !DILocation(line: 365, column: 228, scope: !2746)
!2748 = !DILocation(line: 365, column: 205, scope: !2746)
!2749 = !DILocation(line: 365, column: 235, scope: !2746)
!2750 = !DILocation(line: 365, column: 261, scope: !2751)
!2751 = distinct !DILexicalBlock(scope: !2741, file: !126, line: 365, column: 242)
!2752 = !DILocation(line: 365, column: 285, scope: !2751)
!2753 = !DILocation(line: 365, column: 267, scope: !2751)
!2754 = !DILocation(line: 365, column: 244, scope: !2751)
!2755 = !DILocation(line: 365, column: 310, scope: !2751)
!2756 = !DILocation(line: 365, column: 316, scope: !2751)
!2757 = !DILocation(line: 365, column: 293, scope: !2751)
!2758 = !DILocation(line: 365, column: 325, scope: !2721)
!2759 = distinct !DISubprogram(name: "sys_slist_prepend", scope: !126, file: !126, line: 305, type: !2528, scopeLine: 305, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2760)
!2760 = !{!2761, !2762}
!2761 = !DILocalVariable(name: "list", arg: 1, scope: !2759, file: !126, line: 305, type: !1266)
!2762 = !DILocalVariable(name: "node", arg: 2, scope: !2759, file: !126, line: 305, type: !259)
!2763 = !DILocation(line: 305, column: 51, scope: !2759)
!2764 = !DILocation(line: 305, column: 70, scope: !2759)
!2765 = !DILocation(line: 305, column: 95, scope: !2759)
!2766 = !DILocation(line: 305, column: 121, scope: !2759)
!2767 = !DILocation(line: 305, column: 101, scope: !2759)
!2768 = !DILocation(line: 305, column: 78, scope: !2759)
!2769 = !DILocation(line: 305, column: 146, scope: !2759)
!2770 = !DILocation(line: 305, column: 152, scope: !2759)
!2771 = !DILocation(line: 305, column: 129, scope: !2759)
!2772 = !DILocation(line: 305, column: 183, scope: !2773)
!2773 = distinct !DILexicalBlock(scope: !2759, file: !126, line: 305, column: 163)
!2774 = !DILocation(line: 305, column: 163, scope: !2773)
!2775 = !DILocation(line: 305, column: 189, scope: !2773)
!2776 = !DILocation(line: 305, column: 163, scope: !2759)
!2777 = !DILocation(line: 305, column: 223, scope: !2778)
!2778 = distinct !DILexicalBlock(scope: !2773, file: !126, line: 305, column: 204)
!2779 = !DILocation(line: 305, column: 249, scope: !2778)
!2780 = !DILocation(line: 305, column: 229, scope: !2778)
!2781 = !DILocation(line: 305, column: 206, scope: !2778)
!2782 = !DILocation(line: 305, column: 257, scope: !2778)
!2783 = !DILocation(line: 305, column: 259, scope: !2759)
!2784 = distinct !DISubprogram(name: "sys_slist_peek_next_no_check", scope: !126, file: !126, line: 281, type: !2698, scopeLine: 281, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2785)
!2785 = !{!2786}
!2786 = !DILocalVariable(name: "node", arg: 1, scope: !2784, file: !126, line: 281, type: !259)
!2787 = !DILocation(line: 281, column: 71, scope: !2784)
!2788 = !DILocation(line: 281, column: 104, scope: !2784)
!2789 = !DILocation(line: 281, column: 86, scope: !2784)
!2790 = !DILocation(line: 281, column: 79, scope: !2784)
!2791 = distinct !DISubprogram(name: "z_snode_next_peek", scope: !126, file: !126, line: 211, type: !2698, scopeLine: 212, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2792)
!2792 = !{!2793}
!2793 = !DILocalVariable(name: "node", arg: 1, scope: !2791, file: !126, line: 211, type: !259)
!2794 = !DILocation(line: 211, column: 59, scope: !2791)
!2795 = !DILocation(line: 213, column: 9, scope: !2791)
!2796 = !DILocation(line: 213, column: 15, scope: !2791)
!2797 = !DILocation(line: 213, column: 2, scope: !2791)
!2798 = distinct !DISubprogram(name: "k_sem_init", scope: !939, file: !939, line: 1075, type: !2799, scopeLine: 1076, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2801)
!2799 = !DISubroutineType(types: !2800)
!2800 = !{!120, !455, !200, !200}
!2801 = !{!2802, !2803, !2804}
!2802 = !DILocalVariable(name: "sem", arg: 1, scope: !2798, file: !939, line: 1075, type: !455)
!2803 = !DILocalVariable(name: "initial_count", arg: 2, scope: !2798, file: !939, line: 1075, type: !200)
!2804 = !DILocalVariable(name: "limit", arg: 3, scope: !2798, file: !939, line: 1075, type: !200)
!2805 = !DILocation(line: 1075, column: 45, scope: !2798)
!2806 = !DILocation(line: 1075, column: 63, scope: !2798)
!2807 = !DILocation(line: 1075, column: 91, scope: !2798)
!2808 = !DILocation(line: 1085, column: 2, scope: !2798)
!2809 = !DILocation(line: 1085, column: 7, scope: !2810)
!2810 = distinct !DILexicalBlock(scope: !2798, file: !939, line: 1085, column: 5)
!2811 = !{i64 149851}
!2812 = !DILocation(line: 1085, column: 47, scope: !2810)
!2813 = !DILocation(line: 1086, column: 27, scope: !2798)
!2814 = !DILocation(line: 1086, column: 32, scope: !2798)
!2815 = !DILocation(line: 1086, column: 47, scope: !2798)
!2816 = !DILocation(line: 1086, column: 9, scope: !2798)
!2817 = !DILocation(line: 1086, column: 2, scope: !2798)
!2818 = distinct !DISubprogram(name: "handle_flush", scope: !293, file: !293, line: 66, type: !134, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2819)
!2819 = !{!2820, !2821}
!2820 = !DILocalVariable(name: "work", arg: 1, scope: !2818, file: !293, line: 66, type: !121)
!2821 = !DILocalVariable(name: "flusher", scope: !2818, file: !293, line: 68, type: !267)
!2822 = !DILocation(line: 66, column: 41, scope: !2818)
!2823 = !DILocation(line: 68, column: 2, scope: !2818)
!2824 = !DILocation(line: 68, column: 25, scope: !2818)
!2825 = !DILocation(line: 69, column: 47, scope: !2826)
!2826 = distinct !DILexicalBlock(scope: !2818, file: !293, line: 69, column: 6)
!2827 = !DILocation(line: 69, column: 54, scope: !2826)
!2828 = !DILocation(line: 69, column: 6, scope: !2818)
!2829 = !DILocation(line: 69, column: 107, scope: !2826)
!2830 = !DILocation(line: 71, column: 14, scope: !2818)
!2831 = !DILocation(line: 71, column: 23, scope: !2818)
!2832 = !DILocation(line: 71, column: 2, scope: !2818)
!2833 = !DILocation(line: 72, column: 1, scope: !2818)
!2834 = !DISubprogram(name: "z_impl_k_sem_init", scope: !939, file: !939, line: 1072, type: !2799, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !248)
!2835 = distinct !DISubprogram(name: "k_sem_give", scope: !939, file: !939, line: 1110, type: !2836, scopeLine: 1111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2838)
!2836 = !DISubroutineType(types: !2837)
!2837 = !{null, !455}
!2838 = !{!2839}
!2839 = !DILocalVariable(name: "sem", arg: 1, scope: !2835, file: !939, line: 1110, type: !455)
!2840 = !DILocation(line: 1110, column: 46, scope: !2835)
!2841 = !DILocation(line: 1119, column: 2, scope: !2835)
!2842 = !DILocation(line: 1119, column: 7, scope: !2843)
!2843 = distinct !DILexicalBlock(scope: !2835, file: !939, line: 1119, column: 5)
!2844 = !{i64 150336}
!2845 = !DILocation(line: 1119, column: 47, scope: !2843)
!2846 = !DILocation(line: 1120, column: 20, scope: !2835)
!2847 = !DILocation(line: 1120, column: 2, scope: !2835)
!2848 = !DILocation(line: 1121, column: 1, scope: !2835)
!2849 = !DISubprogram(name: "z_impl_k_sem_give", scope: !939, file: !939, line: 1107, type: !2836, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !248)
!2850 = !DISubprogram(name: "z_impl_k_sem_take", scope: !939, file: !939, line: 1090, type: !940, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !248)
!2851 = distinct !DISubprogram(name: "queue_remove_locked", scope: !293, file: !293, line: 202, type: !2852, scopeLine: 204, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2854)
!2852 = !DISubroutineType(types: !2853)
!2853 = !{null, !137, !121}
!2854 = !{!2855, !2856}
!2855 = !DILocalVariable(name: "queue", arg: 1, scope: !2851, file: !293, line: 202, type: !137)
!2856 = !DILocalVariable(name: "work", arg: 2, scope: !2851, file: !293, line: 203, type: !121)
!2857 = !DILocation(line: 202, column: 57, scope: !2851)
!2858 = !DILocation(line: 203, column: 27, scope: !2851)
!2859 = !DILocation(line: 205, column: 27, scope: !2860)
!2860 = distinct !DILexicalBlock(scope: !2851, file: !293, line: 205, column: 6)
!2861 = !DILocation(line: 205, column: 33, scope: !2860)
!2862 = !DILocation(line: 205, column: 6, scope: !2860)
!2863 = !DILocation(line: 205, column: 6, scope: !2851)
!2864 = !DILocation(line: 206, column: 36, scope: !2865)
!2865 = distinct !DILexicalBlock(scope: !2860, file: !293, line: 205, column: 60)
!2866 = !DILocation(line: 206, column: 43, scope: !2865)
!2867 = !DILocation(line: 206, column: 53, scope: !2865)
!2868 = !DILocation(line: 206, column: 59, scope: !2865)
!2869 = !DILocation(line: 206, column: 9, scope: !2865)
!2870 = !DILocation(line: 207, column: 2, scope: !2865)
!2871 = !DILocation(line: 208, column: 1, scope: !2851)
!2872 = distinct !DISubprogram(name: "sys_slist_find_and_remove", scope: !126, file: !126, line: 435, type: !2873, scopeLine: 435, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2875)
!2873 = !DISubroutineType(types: !2874)
!2874 = !{!817, !1266, !259}
!2875 = !{!2876, !2877, !2878, !2879}
!2876 = !DILocalVariable(name: "list", arg: 1, scope: !2872, file: !126, line: 435, type: !1266)
!2877 = !DILocalVariable(name: "node", arg: 2, scope: !2872, file: !126, line: 435, type: !259)
!2878 = !DILocalVariable(name: "prev", scope: !2872, file: !126, line: 435, type: !259)
!2879 = !DILocalVariable(name: "test", scope: !2872, file: !126, line: 435, type: !259)
!2880 = !DILocation(line: 435, column: 60, scope: !2872)
!2881 = !DILocation(line: 435, column: 79, scope: !2872)
!2882 = !DILocation(line: 435, column: 87, scope: !2872)
!2883 = !DILocation(line: 435, column: 100, scope: !2872)
!2884 = !DILocation(line: 435, column: 119, scope: !2872)
!2885 = !DILocation(line: 435, column: 132, scope: !2872)
!2886 = !DILocation(line: 435, column: 170, scope: !2887)
!2887 = distinct !DILexicalBlock(scope: !2872, file: !126, line: 435, column: 138)
!2888 = !DILocation(line: 435, column: 150, scope: !2887)
!2889 = !DILocation(line: 435, column: 148, scope: !2887)
!2890 = !DILocation(line: 435, column: 143, scope: !2887)
!2891 = !DILocation(line: 435, column: 177, scope: !2892)
!2892 = distinct !DILexicalBlock(scope: !2887, file: !126, line: 435, column: 138)
!2893 = !DILocation(line: 435, column: 182, scope: !2892)
!2894 = !DILocation(line: 435, column: 138, scope: !2887)
!2895 = !DILocation(line: 435, column: 237, scope: !2896)
!2896 = distinct !DILexicalBlock(scope: !2897, file: !126, line: 435, column: 237)
!2897 = distinct !DILexicalBlock(scope: !2892, file: !126, line: 435, column: 231)
!2898 = !DILocation(line: 435, column: 245, scope: !2896)
!2899 = !DILocation(line: 435, column: 242, scope: !2896)
!2900 = !DILocation(line: 435, column: 237, scope: !2897)
!2901 = !DILocation(line: 435, column: 270, scope: !2902)
!2902 = distinct !DILexicalBlock(scope: !2896, file: !126, line: 435, column: 251)
!2903 = !DILocation(line: 435, column: 276, scope: !2902)
!2904 = !DILocation(line: 435, column: 282, scope: !2902)
!2905 = !DILocation(line: 435, column: 253, scope: !2902)
!2906 = !DILocation(line: 435, column: 289, scope: !2902)
!2907 = !DILocation(line: 435, column: 308, scope: !2897)
!2908 = !DILocation(line: 435, column: 306, scope: !2897)
!2909 = !DILocation(line: 435, column: 314, scope: !2897)
!2910 = !DILocation(line: 435, column: 224, scope: !2892)
!2911 = !DILocation(line: 435, column: 204, scope: !2892)
!2912 = !DILocation(line: 435, column: 202, scope: !2892)
!2913 = !DILocation(line: 435, column: 138, scope: !2892)
!2914 = distinct !{!2914, !2894, !2915}
!2915 = !DILocation(line: 435, column: 314, scope: !2887)
!2916 = !DILocation(line: 435, column: 316, scope: !2872)
!2917 = !DILocation(line: 435, column: 326, scope: !2872)
!2918 = distinct !DISubprogram(name: "sys_slist_remove", scope: !126, file: !126, line: 408, type: !2722, scopeLine: 408, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2919)
!2919 = !{!2920, !2921, !2922}
!2920 = !DILocalVariable(name: "list", arg: 1, scope: !2918, file: !126, line: 408, type: !1266)
!2921 = !DILocalVariable(name: "prev_node", arg: 2, scope: !2918, file: !126, line: 408, type: !259)
!2922 = !DILocalVariable(name: "node", arg: 3, scope: !2918, file: !126, line: 408, type: !259)
!2923 = !DILocation(line: 408, column: 50, scope: !2918)
!2924 = !DILocation(line: 408, column: 69, scope: !2918)
!2925 = !DILocation(line: 408, column: 93, scope: !2918)
!2926 = !DILocation(line: 408, column: 105, scope: !2927)
!2927 = distinct !DILexicalBlock(scope: !2918, file: !126, line: 408, column: 105)
!2928 = !DILocation(line: 408, column: 115, scope: !2927)
!2929 = !DILocation(line: 408, column: 105, scope: !2918)
!2930 = !DILocation(line: 408, column: 149, scope: !2931)
!2931 = distinct !DILexicalBlock(scope: !2927, file: !126, line: 408, column: 130)
!2932 = !DILocation(line: 408, column: 173, scope: !2931)
!2933 = !DILocation(line: 408, column: 155, scope: !2931)
!2934 = !DILocation(line: 408, column: 132, scope: !2931)
!2935 = !DILocation(line: 408, column: 205, scope: !2936)
!2936 = distinct !DILexicalBlock(scope: !2931, file: !126, line: 408, column: 185)
!2937 = !DILocation(line: 408, column: 185, scope: !2936)
!2938 = !DILocation(line: 408, column: 214, scope: !2936)
!2939 = !DILocation(line: 408, column: 211, scope: !2936)
!2940 = !DILocation(line: 408, column: 185, scope: !2931)
!2941 = !DILocation(line: 408, column: 239, scope: !2942)
!2942 = distinct !DILexicalBlock(scope: !2936, file: !126, line: 408, column: 220)
!2943 = !DILocation(line: 408, column: 265, scope: !2942)
!2944 = !DILocation(line: 408, column: 245, scope: !2942)
!2945 = !DILocation(line: 408, column: 222, scope: !2942)
!2946 = !DILocation(line: 408, column: 273, scope: !2942)
!2947 = !DILocation(line: 408, column: 275, scope: !2931)
!2948 = !DILocation(line: 408, column: 301, scope: !2949)
!2949 = distinct !DILexicalBlock(scope: !2927, file: !126, line: 408, column: 282)
!2950 = !DILocation(line: 408, column: 330, scope: !2949)
!2951 = !DILocation(line: 408, column: 312, scope: !2949)
!2952 = !DILocation(line: 408, column: 284, scope: !2949)
!2953 = !DILocation(line: 408, column: 362, scope: !2954)
!2954 = distinct !DILexicalBlock(scope: !2949, file: !126, line: 408, column: 342)
!2955 = !DILocation(line: 408, column: 342, scope: !2954)
!2956 = !DILocation(line: 408, column: 371, scope: !2954)
!2957 = !DILocation(line: 408, column: 368, scope: !2954)
!2958 = !DILocation(line: 408, column: 342, scope: !2949)
!2959 = !DILocation(line: 408, column: 396, scope: !2960)
!2960 = distinct !DILexicalBlock(scope: !2954, file: !126, line: 408, column: 377)
!2961 = !DILocation(line: 408, column: 402, scope: !2960)
!2962 = !DILocation(line: 408, column: 379, scope: !2960)
!2963 = !DILocation(line: 408, column: 414, scope: !2960)
!2964 = !DILocation(line: 408, column: 435, scope: !2918)
!2965 = !DILocation(line: 408, column: 418, scope: !2918)
!2966 = !DILocation(line: 408, column: 454, scope: !2918)
!2967 = distinct !DISubprogram(name: "init_work_cancel", scope: !293, file: !293, line: 91, type: !2968, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2970)
!2968 = !DISubroutineType(types: !2969)
!2969 = !{null, !278, !121}
!2970 = !{!2971, !2972}
!2971 = !DILocalVariable(name: "canceler", arg: 1, scope: !2967, file: !293, line: 91, type: !278)
!2972 = !DILocalVariable(name: "work", arg: 2, scope: !2967, file: !293, line: 92, type: !121)
!2973 = !DILocation(line: 91, column: 62, scope: !2967)
!2974 = !DILocation(line: 92, column: 24, scope: !2967)
!2975 = !DILocation(line: 94, column: 14, scope: !2967)
!2976 = !DILocation(line: 94, column: 24, scope: !2967)
!2977 = !DILocation(line: 94, column: 2, scope: !2967)
!2978 = !DILocation(line: 95, column: 19, scope: !2967)
!2979 = !DILocation(line: 95, column: 2, scope: !2967)
!2980 = !DILocation(line: 95, column: 12, scope: !2967)
!2981 = !DILocation(line: 95, column: 17, scope: !2967)
!2982 = !DILocation(line: 96, column: 38, scope: !2967)
!2983 = !DILocation(line: 96, column: 48, scope: !2967)
!2984 = !DILocation(line: 96, column: 2, scope: !2967)
!2985 = !DILocation(line: 97, column: 1, scope: !2967)
!2986 = distinct !DISubprogram(name: "sys_dlist_init", scope: !152, file: !152, line: 203, type: !2987, scopeLine: 204, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2990)
!2987 = !DISubroutineType(types: !2988)
!2988 = !{null, !2989}
!2989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 32)
!2990 = !{!2991}
!2991 = !DILocalVariable(name: "list", arg: 1, scope: !2986, file: !152, line: 203, type: !2989)
!2992 = !DILocation(line: 203, column: 48, scope: !2986)
!2993 = !DILocation(line: 205, column: 30, scope: !2986)
!2994 = !DILocation(line: 205, column: 2, scope: !2986)
!2995 = !DILocation(line: 205, column: 8, scope: !2986)
!2996 = !DILocation(line: 205, column: 13, scope: !2986)
!2997 = !DILocation(line: 206, column: 30, scope: !2986)
!2998 = !DILocation(line: 206, column: 2, scope: !2986)
!2999 = !DILocation(line: 206, column: 8, scope: !2986)
!3000 = !DILocation(line: 206, column: 13, scope: !2986)
!3001 = !DILocation(line: 207, column: 1, scope: !2986)
!3002 = !DISubprogram(name: "z_impl_k_thread_create", scope: !939, file: !939, line: 56, type: !1302, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !248)
!3003 = distinct !DISubprogram(name: "sys_slist_get", scope: !126, file: !126, line: 392, type: !2573, scopeLine: 392, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3004)
!3004 = !{!3005}
!3005 = !DILocalVariable(name: "list", arg: 1, scope: !3003, file: !126, line: 392, type: !1266)
!3006 = !DILocation(line: 392, column: 56, scope: !3003)
!3007 = !DILocation(line: 392, column: 90, scope: !3003)
!3008 = !DILocation(line: 392, column: 71, scope: !3003)
!3009 = !DILocation(line: 392, column: 135, scope: !3003)
!3010 = !DILocation(line: 392, column: 111, scope: !3003)
!3011 = !DILocation(line: 392, column: 64, scope: !3003)
!3012 = distinct !DISubprogram(name: "flag_clear", scope: !293, file: !293, line: 21, type: !1289, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3013)
!3013 = !{!3014, !3015}
!3014 = !DILocalVariable(name: "flagp", arg: 1, scope: !3012, file: !293, line: 21, type: !1291)
!3015 = !DILocalVariable(name: "bit", arg: 2, scope: !3012, file: !293, line: 22, type: !199)
!3016 = !DILocation(line: 21, column: 41, scope: !3012)
!3017 = !DILocation(line: 22, column: 19, scope: !3012)
!3018 = !DILocation(line: 24, column: 22, scope: !3012)
!3019 = !DILocation(line: 24, column: 18, scope: !3012)
!3020 = !DILocation(line: 24, column: 12, scope: !3012)
!3021 = !DILocation(line: 24, column: 3, scope: !3012)
!3022 = !DILocation(line: 24, column: 9, scope: !3012)
!3023 = !DILocation(line: 25, column: 1, scope: !3012)
!3024 = distinct !DISubprogram(name: "z_sched_wake_all", scope: !783, file: !783, line: 335, type: !3025, scopeLine: 337, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3027)
!3025 = !DISubroutineType(types: !3026)
!3026 = !{!817, !176, !120, !119}
!3027 = !{!3028, !3029, !3030, !3031}
!3028 = !DILocalVariable(name: "wait_q", arg: 1, scope: !3024, file: !783, line: 335, type: !176)
!3029 = !DILocalVariable(name: "swap_retval", arg: 2, scope: !3024, file: !783, line: 335, type: !120)
!3030 = !DILocalVariable(name: "swap_data", arg: 3, scope: !3024, file: !783, line: 336, type: !119)
!3031 = !DILocalVariable(name: "woken", scope: !3024, file: !783, line: 338, type: !817)
!3032 = !DILocation(line: 335, column: 49, scope: !3024)
!3033 = !DILocation(line: 335, column: 61, scope: !3024)
!3034 = !DILocation(line: 336, column: 15, scope: !3024)
!3035 = !DILocation(line: 338, column: 2, scope: !3024)
!3036 = !DILocation(line: 338, column: 8, scope: !3024)
!3037 = !DILocation(line: 340, column: 2, scope: !3024)
!3038 = !DILocation(line: 340, column: 22, scope: !3024)
!3039 = !DILocation(line: 340, column: 30, scope: !3024)
!3040 = !DILocation(line: 340, column: 43, scope: !3024)
!3041 = !DILocation(line: 340, column: 9, scope: !3024)
!3042 = !DILocation(line: 341, column: 9, scope: !3043)
!3043 = distinct !DILexicalBlock(scope: !3024, file: !783, line: 340, column: 55)
!3044 = distinct !{!3044, !3037, !3045}
!3045 = !DILocation(line: 342, column: 2, scope: !3024)
!3046 = !DILocation(line: 345, column: 9, scope: !3024)
!3047 = !DILocation(line: 346, column: 1, scope: !3024)
!3048 = !DILocation(line: 345, column: 2, scope: !3024)
!3049 = distinct !DISubprogram(name: "finalize_cancel_locked", scope: !293, file: !293, line: 109, type: !134, scopeLine: 110, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3050)
!3050 = !{!3051, !3052, !3053, !3054}
!3051 = !DILocalVariable(name: "work", arg: 1, scope: !3049, file: !293, line: 109, type: !121)
!3052 = !DILocalVariable(name: "wc", scope: !3049, file: !293, line: 111, type: !278)
!3053 = !DILocalVariable(name: "tmp", scope: !3049, file: !293, line: 111, type: !278)
!3054 = !DILocalVariable(name: "prev", scope: !3049, file: !293, line: 112, type: !259)
!3055 = !DILocation(line: 109, column: 51, scope: !3049)
!3056 = !DILocation(line: 111, column: 2, scope: !3049)
!3057 = !DILocation(line: 111, column: 27, scope: !3049)
!3058 = !DILocation(line: 111, column: 32, scope: !3049)
!3059 = !DILocation(line: 112, column: 2, scope: !3049)
!3060 = !DILocation(line: 112, column: 15, scope: !3049)
!3061 = !DILocation(line: 117, column: 14, scope: !3049)
!3062 = !DILocation(line: 117, column: 20, scope: !3049)
!3063 = !DILocation(line: 117, column: 2, scope: !3049)
!3064 = !DILocation(line: 124, column: 14, scope: !3065)
!3065 = distinct !DILexicalBlock(scope: !3049, file: !293, line: 124, column: 2)
!3066 = !DILocation(line: 124, column: 13, scope: !3065)
!3067 = !DILocation(line: 124, column: 94, scope: !3068)
!3068 = distinct !DILexicalBlock(scope: !3065, file: !293, line: 124, column: 56)
!3069 = !DILocation(line: 124, column: 135, scope: !3068)
!3070 = !DILocation(line: 124, column: 56, scope: !3065)
!3071 = !DILocation(line: 124, column: 184, scope: !3068)
!3072 = !DILocation(line: 124, column: 10, scope: !3065)
!3073 = !DILocation(line: 124, column: 201, scope: !3065)
!3074 = !DILocation(line: 124, column: 200, scope: !3065)
!3075 = !DILocation(line: 124, column: 232, scope: !3065)
!3076 = !DILocation(line: 124, column: 237, scope: !3065)
!3077 = !DILocation(line: 124, column: 209, scope: !3065)
!3078 = !DILocation(line: 124, column: 208, scope: !3065)
!3079 = !DILocation(line: 124, column: 309, scope: !3080)
!3080 = distinct !DILexicalBlock(scope: !3065, file: !293, line: 124, column: 248)
!3081 = !DILocation(line: 124, column: 314, scope: !3080)
!3082 = !DILocation(line: 124, column: 286, scope: !3080)
!3083 = !DILocation(line: 124, column: 324, scope: !3080)
!3084 = !DILocation(line: 124, column: 248, scope: !3065)
!3085 = !DILocation(line: 124, column: 373, scope: !3080)
!3086 = !DILocation(line: 124, column: 197, scope: !3065)
!3087 = !DILocation(line: 124, column: 7, scope: !3065)
!3088 = !DILocation(line: 124, column: 387, scope: !3089)
!3089 = distinct !DILexicalBlock(scope: !3065, file: !293, line: 124, column: 2)
!3090 = !DILocation(line: 124, column: 390, scope: !3089)
!3091 = !DILocation(line: 124, column: 2, scope: !3065)
!3092 = !DILocation(line: 125, column: 7, scope: !3093)
!3093 = distinct !DILexicalBlock(scope: !3094, file: !293, line: 125, column: 7)
!3094 = distinct !DILexicalBlock(scope: !3089, file: !293, line: 124, column: 600)
!3095 = !DILocation(line: 125, column: 11, scope: !3093)
!3096 = !DILocation(line: 125, column: 19, scope: !3093)
!3097 = !DILocation(line: 125, column: 16, scope: !3093)
!3098 = !DILocation(line: 125, column: 7, scope: !3094)
!3099 = !DILocation(line: 126, column: 39, scope: !3100)
!3100 = distinct !DILexicalBlock(scope: !3093, file: !293, line: 125, column: 25)
!3101 = !DILocation(line: 126, column: 46, scope: !3100)
!3102 = !DILocation(line: 126, column: 50, scope: !3100)
!3103 = !DILocation(line: 126, column: 4, scope: !3100)
!3104 = !DILocation(line: 127, column: 16, scope: !3100)
!3105 = !DILocation(line: 127, column: 20, scope: !3100)
!3106 = !DILocation(line: 127, column: 4, scope: !3100)
!3107 = !DILocation(line: 128, column: 3, scope: !3100)
!3108 = !DILocation(line: 129, column: 12, scope: !3109)
!3109 = distinct !DILexicalBlock(scope: !3093, file: !293, line: 128, column: 10)
!3110 = !DILocation(line: 129, column: 16, scope: !3109)
!3111 = !DILocation(line: 129, column: 9, scope: !3109)
!3112 = !DILocation(line: 131, column: 2, scope: !3094)
!3113 = !DILocation(line: 124, column: 401, scope: !3089)
!3114 = !DILocation(line: 124, column: 399, scope: !3089)
!3115 = !DILocation(line: 124, column: 414, scope: !3089)
!3116 = !DILocation(line: 124, column: 413, scope: !3089)
!3117 = !DILocation(line: 124, column: 445, scope: !3089)
!3118 = !DILocation(line: 124, column: 450, scope: !3089)
!3119 = !DILocation(line: 124, column: 422, scope: !3089)
!3120 = !DILocation(line: 124, column: 421, scope: !3089)
!3121 = !DILocation(line: 124, column: 522, scope: !3122)
!3122 = distinct !DILexicalBlock(scope: !3089, file: !293, line: 124, column: 461)
!3123 = !DILocation(line: 124, column: 527, scope: !3122)
!3124 = !DILocation(line: 124, column: 499, scope: !3122)
!3125 = !DILocation(line: 124, column: 537, scope: !3122)
!3126 = !DILocation(line: 124, column: 461, scope: !3089)
!3127 = !DILocation(line: 124, column: 586, scope: !3122)
!3128 = !DILocation(line: 124, column: 410, scope: !3089)
!3129 = !DILocation(line: 124, column: 2, scope: !3089)
!3130 = distinct !{!3130, !3091, !3131}
!3131 = !DILocation(line: 131, column: 2, scope: !3065)
!3132 = !DILocation(line: 132, column: 1, scope: !3049)
!3133 = distinct !DISubprogram(name: "k_yield", scope: !939, file: !939, line: 175, type: !784, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !248)
!3134 = !DILocation(line: 183, column: 2, scope: !3133)
!3135 = !DILocation(line: 183, column: 7, scope: !3136)
!3136 = distinct !DILexicalBlock(scope: !3133, file: !939, line: 183, column: 5)
!3137 = !{i64 134763}
!3138 = !DILocation(line: 183, column: 47, scope: !3136)
!3139 = !DILocation(line: 184, column: 2, scope: !3133)
!3140 = !DILocation(line: 185, column: 1, scope: !3133)
!3141 = distinct !DISubprogram(name: "sys_slist_get_not_empty", scope: !126, file: !126, line: 379, type: !2573, scopeLine: 379, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3142)
!3142 = !{!3143, !3144}
!3143 = !DILocalVariable(name: "list", arg: 1, scope: !3141, file: !126, line: 379, type: !1266)
!3144 = !DILocalVariable(name: "node", scope: !3141, file: !126, line: 379, type: !259)
!3145 = !DILocation(line: 379, column: 66, scope: !3141)
!3146 = !DILocation(line: 379, column: 74, scope: !3141)
!3147 = !DILocation(line: 379, column: 87, scope: !3141)
!3148 = !DILocation(line: 379, column: 114, scope: !3141)
!3149 = !DILocation(line: 379, column: 94, scope: !3141)
!3150 = !DILocation(line: 379, column: 138, scope: !3141)
!3151 = !DILocation(line: 379, column: 162, scope: !3141)
!3152 = !DILocation(line: 379, column: 144, scope: !3141)
!3153 = !DILocation(line: 379, column: 121, scope: !3141)
!3154 = !DILocation(line: 379, column: 194, scope: !3155)
!3155 = distinct !DILexicalBlock(scope: !3141, file: !126, line: 379, column: 174)
!3156 = !DILocation(line: 379, column: 174, scope: !3155)
!3157 = !DILocation(line: 379, column: 203, scope: !3155)
!3158 = !DILocation(line: 379, column: 200, scope: !3155)
!3159 = !DILocation(line: 379, column: 174, scope: !3141)
!3160 = !DILocation(line: 379, column: 228, scope: !3161)
!3161 = distinct !DILexicalBlock(scope: !3155, file: !126, line: 379, column: 209)
!3162 = !DILocation(line: 379, column: 254, scope: !3161)
!3163 = !DILocation(line: 379, column: 234, scope: !3161)
!3164 = !DILocation(line: 379, column: 211, scope: !3161)
!3165 = !DILocation(line: 379, column: 262, scope: !3161)
!3166 = !DILocation(line: 379, column: 271, scope: !3141)
!3167 = !DILocation(line: 379, column: 277, scope: !3141)
!3168 = !DILocation(line: 379, column: 264, scope: !3141)
!3169 = !DISubprogram(name: "z_sched_wake", scope: !783, file: !783, line: 309, type: !3025, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !248)
!3170 = !DISubprogram(name: "z_impl_k_yield", scope: !939, file: !939, line: 172, type: !784, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !248)
!3171 = !DISubprogram(name: "z_impl_k_thread_name_set", scope: !939, file: !939, line: 423, type: !1526, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !248)
!3172 = !DISubprogram(name: "z_impl_k_thread_start", scope: !939, file: !939, line: 237, type: !1543, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !248)
!3173 = distinct !DISubprogram(name: "sys_dnode_init", scope: !152, file: !152, line: 220, type: !3174, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3176)
!3174 = !DISubroutineType(types: !3175)
!3175 = !{null, !277}
!3176 = !{!3177}
!3177 = !DILocalVariable(name: "node", arg: 1, scope: !3173, file: !152, line: 220, type: !277)
!3178 = !DILocation(line: 220, column: 48, scope: !3173)
!3179 = !DILocation(line: 222, column: 2, scope: !3173)
!3180 = !DILocation(line: 222, column: 8, scope: !3173)
!3181 = !DILocation(line: 222, column: 13, scope: !3173)
!3182 = !DILocation(line: 223, column: 2, scope: !3173)
!3183 = !DILocation(line: 223, column: 8, scope: !3173)
!3184 = !DILocation(line: 223, column: 13, scope: !3173)
!3185 = !DILocation(line: 224, column: 1, scope: !3173)
!3186 = !DISubprogram(name: "z_add_timeout", scope: !1811, file: !1811, line: 30, type: !3187, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !248)
!3187 = !DISubroutineType(types: !3188)
!3188 = !{null, !211, !207, !380}
!3189 = distinct !DISubprogram(name: "work_timeout", scope: !293, file: !293, line: 810, type: !209, scopeLine: 811, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3190)
!3190 = !{!3191, !3192, !3193, !3194, !3195}
!3191 = !DILocalVariable(name: "to", arg: 1, scope: !3189, file: !293, line: 810, type: !211)
!3192 = !DILocalVariable(name: "dw", scope: !3189, file: !293, line: 812, type: !284)
!3193 = !DILocalVariable(name: "wp", scope: !3189, file: !293, line: 814, type: !121)
!3194 = !DILocalVariable(name: "key", scope: !3189, file: !293, line: 815, type: !518)
!3195 = !DILocalVariable(name: "queue", scope: !3189, file: !293, line: 816, type: !137)
!3196 = !DILocation(line: 810, column: 43, scope: !3189)
!3197 = !DILocation(line: 812, column: 2, scope: !3189)
!3198 = !DILocation(line: 812, column: 27, scope: !3189)
!3199 = !DILocation(line: 813, column: 49, scope: !3200)
!3200 = distinct !DILexicalBlock(scope: !3189, file: !293, line: 813, column: 6)
!3201 = !DILocation(line: 813, column: 54, scope: !3200)
!3202 = !DILocation(line: 813, column: 6, scope: !3189)
!3203 = !DILocation(line: 813, column: 112, scope: !3200)
!3204 = !DILocation(line: 814, column: 2, scope: !3189)
!3205 = !DILocation(line: 814, column: 17, scope: !3189)
!3206 = !DILocation(line: 814, column: 23, scope: !3189)
!3207 = !DILocation(line: 814, column: 27, scope: !3189)
!3208 = !DILocation(line: 815, column: 2, scope: !3189)
!3209 = !DILocation(line: 815, column: 19, scope: !3189)
!3210 = !DILocation(line: 160, column: 94, scope: !527, inlinedAt: !3211)
!3211 = distinct !DILocation(line: 815, column: 25, scope: !3189)
!3212 = !DILocation(line: 162, column: 9, scope: !527, inlinedAt: !3211)
!3213 = !DILocation(line: 163, column: 19, scope: !527, inlinedAt: !3211)
!3214 = !DILocation(line: 44, column: 2, scope: !538, inlinedAt: !3215)
!3215 = distinct !DILocation(line: 169, column: 10, scope: !527, inlinedAt: !3211)
!3216 = !DILocation(line: 44, column: 15, scope: !538, inlinedAt: !3215)
!3217 = !DILocation(line: 48, column: 2, scope: !538, inlinedAt: !3215)
!3218 = !DILocation(line: 80, column: 9, scope: !538, inlinedAt: !3215)
!3219 = !DILocation(line: 81, column: 1, scope: !538, inlinedAt: !3215)
!3220 = !DILocation(line: 169, column: 8, scope: !527, inlinedAt: !3211)
!3221 = !DILocation(line: 171, column: 26, scope: !527, inlinedAt: !3211)
!3222 = !DILocation(line: 110, column: 94, scope: !553, inlinedAt: !3223)
!3223 = distinct !DILocation(line: 171, column: 2, scope: !527, inlinedAt: !3211)
!3224 = !DILocation(line: 112, column: 9, scope: !553, inlinedAt: !3223)
!3225 = !DILocation(line: 177, column: 27, scope: !527, inlinedAt: !3211)
!3226 = !DILocation(line: 121, column: 95, scope: !562, inlinedAt: !3227)
!3227 = distinct !DILocation(line: 177, column: 2, scope: !527, inlinedAt: !3211)
!3228 = !DILocation(line: 123, column: 9, scope: !562, inlinedAt: !3227)
!3229 = !DILocation(line: 179, column: 2, scope: !527, inlinedAt: !3211)
!3230 = !DILocation(line: 815, column: 25, scope: !3189)
!3231 = !DILocation(line: 816, column: 2, scope: !3189)
!3232 = !DILocation(line: 816, column: 19, scope: !3189)
!3233 = !DILocation(line: 825, column: 27, scope: !3234)
!3234 = distinct !DILexicalBlock(scope: !3189, file: !293, line: 825, column: 6)
!3235 = !DILocation(line: 825, column: 31, scope: !3234)
!3236 = !DILocation(line: 825, column: 6, scope: !3234)
!3237 = !DILocation(line: 825, column: 6, scope: !3189)
!3238 = !DILocation(line: 826, column: 11, scope: !3239)
!3239 = distinct !DILexicalBlock(scope: !3234, file: !293, line: 825, column: 59)
!3240 = !DILocation(line: 826, column: 15, scope: !3239)
!3241 = !DILocation(line: 826, column: 9, scope: !3239)
!3242 = !DILocation(line: 827, column: 32, scope: !3239)
!3243 = !DILocation(line: 827, column: 9, scope: !3239)
!3244 = !DILocation(line: 828, column: 2, scope: !3239)
!3245 = !DILocation(line: 830, column: 2, scope: !3189)
!3246 = !DILocation(line: 235, column: 84, scope: !575, inlinedAt: !3247)
!3247 = distinct !DILocation(line: 830, column: 2, scope: !3189)
!3248 = !DILocation(line: 236, column: 23, scope: !575, inlinedAt: !3247)
!3249 = !DILocation(line: 238, column: 9, scope: !575, inlinedAt: !3247)
!3250 = !DILocation(line: 261, column: 22, scope: !575, inlinedAt: !3247)
!3251 = !DILocation(line: 88, column: 80, scope: !586, inlinedAt: !3252)
!3252 = distinct !DILocation(line: 261, column: 2, scope: !575, inlinedAt: !3247)
!3253 = !DILocation(line: 91, column: 6, scope: !593, inlinedAt: !3252)
!3254 = !DILocation(line: 91, column: 10, scope: !593, inlinedAt: !3252)
!3255 = !DILocation(line: 91, column: 6, scope: !586, inlinedAt: !3252)
!3256 = !DILocation(line: 92, column: 3, scope: !597, inlinedAt: !3252)
!3257 = !DILocation(line: 94, column: 2, scope: !586, inlinedAt: !3252)
!3258 = !DILocation(line: 114, column: 1, scope: !586, inlinedAt: !3252)
!3259 = !DILocation(line: 831, column: 1, scope: !3189)
!3260 = !DISubprogram(name: "z_abort_timeout", scope: !1811, file: !1811, line: 33, type: !3261, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !248)
!3261 = !DISubroutineType(types: !3262)
!3262 = !{!120, !211}
