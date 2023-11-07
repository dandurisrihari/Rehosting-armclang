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
@k_sys_work_q = external global %struct.k_work_q, align 8
@_kernel = external global %struct.z_kernel, align 4
@pending_cancels = internal global %struct._slist zeroinitializer, align 4, !dbg !291

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_k_object_access_grant(ptr noundef %0, ptr noundef %1) #0 !dbg !303 {
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
  call void @llvm.dbg.declare(metadata ptr %2, metadata !447, metadata !DIExpression()), !dbg !448
  %3 = load ptr, ptr %2, align 4, !dbg !449
  %4 = getelementptr inbounds %struct.k_sem, ptr %3, i32 0, i32 1, !dbg !450
  %5 = load i32, ptr %4, align 4, !dbg !450
  ret i32 %5, !dbg !451
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_msgq_num_free_get(ptr noundef %0) #0 !dbg !452 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !468, metadata !DIExpression()), !dbg !469
  %3 = load ptr, ptr %2, align 4, !dbg !470
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 3, !dbg !471
  %5 = load i32, ptr %4, align 4, !dbg !471
  %6 = load ptr, ptr %2, align 4, !dbg !472
  %7 = getelementptr inbounds %struct.k_msgq, ptr %6, i32 0, i32 8, !dbg !473
  %8 = load i32, ptr %7, align 4, !dbg !473
  %9 = sub i32 %5, %8, !dbg !474
  ret i32 %9, !dbg !475
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_msgq_num_used_get(ptr noundef %0) #0 !dbg !476 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !477, metadata !DIExpression()), !dbg !478
  %3 = load ptr, ptr %2, align 4, !dbg !479
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 8, !dbg !480
  %5 = load i32, ptr %4, align 4, !dbg !480
  ret i32 %5, !dbg !481
}

; Function Attrs: noinline nounwind optnone
define hidden void @k_work_init(ptr noundef %0, ptr noundef %1) #0 !dbg !482 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca %struct.k_work, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !485, metadata !DIExpression()), !dbg !486
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !487, metadata !DIExpression()), !dbg !488
  %6 = load ptr, ptr %3, align 4, !dbg !489
  %7 = getelementptr inbounds %struct.k_work, ptr %5, i32 0, i32 0, !dbg !490
  call void @llvm.memset.p0.i32(ptr align 4 %7, i8 0, i32 4, i1 false), !dbg !490
  %8 = getelementptr inbounds %struct.k_work, ptr %5, i32 0, i32 1, !dbg !490
  %9 = load ptr, ptr %4, align 4, !dbg !491
  store ptr %9, ptr %8, align 4, !dbg !490
  %10 = getelementptr inbounds %struct.k_work, ptr %5, i32 0, i32 2, !dbg !490
  store ptr null, ptr %10, align 4, !dbg !490
  %11 = getelementptr inbounds %struct.k_work, ptr %5, i32 0, i32 3, !dbg !490
  store i32 0, ptr %11, align 4, !dbg !490
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %6, ptr align 4 %5, i32 16, i1 false), !dbg !492
  br label %12, !dbg !493

12:                                               ; preds = %2
  br label %13, !dbg !494

13:                                               ; preds = %12
  ret void, !dbg !496
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: noinline nounwind optnone
define hidden i32 @k_work_busy_get(ptr noundef %0) #0 !dbg !497 {
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
  call void @llvm.dbg.declare(metadata ptr %10, metadata !502, metadata !DIExpression()), !dbg !503
  call void @llvm.dbg.declare(metadata ptr %11, metadata !504, metadata !DIExpression()), !dbg !509
  store ptr @lock, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !510, metadata !DIExpression()), !dbg !515
  %13 = load ptr, ptr %9, align 4, !dbg !517
  call void @llvm.dbg.declare(metadata ptr %8, metadata !518, metadata !DIExpression()), !dbg !519
  call void @llvm.dbg.declare(metadata ptr %5, metadata !520, metadata !DIExpression()), !dbg !525
  %14 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #5, !dbg !527, !srcloc !528
  store i32 %14, ptr %5, align 4, !dbg !527
  %15 = load i32, ptr %5, align 4, !dbg !529
  store i32 %15, ptr %8, align 4, !dbg !530
  %16 = load ptr, ptr %9, align 4, !dbg !531
  store ptr %16, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !532, metadata !DIExpression()), !dbg !536
  %17 = load ptr, ptr %4, align 4, !dbg !538
  %18 = load ptr, ptr %9, align 4, !dbg !539
  store ptr %18, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !540, metadata !DIExpression()), !dbg !542
  %19 = load ptr, ptr %3, align 4, !dbg !544
  %20 = load i32, ptr %8, align 4, !dbg !545
  %21 = getelementptr inbounds %struct.z_spinlock_key, ptr %11, i32 0, i32 0, !dbg !546
  store i32 %20, ptr %21, align 4, !dbg !546
  call void @llvm.dbg.declare(metadata ptr %12, metadata !547, metadata !DIExpression()), !dbg !548
  %22 = load ptr, ptr %10, align 4, !dbg !549
  %23 = call i32 @work_busy_get_locked(ptr noundef %22), !dbg !550
  store i32 %23, ptr %12, align 4, !dbg !548
  %24 = getelementptr inbounds %struct.z_spinlock_key, ptr %11, i32 0, i32 0, !dbg !551
  %25 = load [1 x i32], ptr %24, align 4, !dbg !551
  store [1 x i32] %25, ptr %6, align 4
  store ptr @lock, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !552, metadata !DIExpression()), !dbg !556
  call void @llvm.dbg.declare(metadata ptr %6, metadata !558, metadata !DIExpression()), !dbg !559
  %26 = load ptr, ptr %7, align 4, !dbg !560
  %27 = load i32, ptr %6, align 4, !dbg !561
  store i32 %27, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !562, metadata !DIExpression()), !dbg !566
  %28 = load i32, ptr %2, align 4, !dbg !568
  %29 = icmp ne i32 %28, 0, !dbg !570
  br i1 %29, label %30, label %31, !dbg !571

30:                                               ; preds = %1
  br label %arch_irq_unlock.exit, !dbg !572

31:                                               ; preds = %1
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #5, !dbg !574, !srcloc !575
  br label %arch_irq_unlock.exit, !dbg !576

arch_irq_unlock.exit:                             ; preds = %30, %31
  %32 = load i32, ptr %12, align 4, !dbg !577
  ret i32 %32, !dbg !578
}

; Function Attrs: noinline nounwind optnone
define internal i32 @work_busy_get_locked(ptr noundef %0) #0 !dbg !579 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !580, metadata !DIExpression()), !dbg !581
  %3 = load ptr, ptr %2, align 4, !dbg !582
  %4 = getelementptr inbounds %struct.k_work, ptr %3, i32 0, i32 3, !dbg !583
  %5 = call i32 @flags_get(ptr noundef %4), !dbg !584
  %6 = and i32 %5, 15, !dbg !585
  ret i32 %6, !dbg !586
}

; Function Attrs: noinline nounwind optnone
define hidden i32 @z_work_submit_to_queue(ptr noundef %0, ptr noundef %1) #0 !dbg !587 {
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
  call void @llvm.dbg.declare(metadata ptr %11, metadata !590, metadata !DIExpression()), !dbg !591
  store ptr %1, ptr %12, align 4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !592, metadata !DIExpression()), !dbg !593
  call void @llvm.dbg.declare(metadata ptr %13, metadata !594, metadata !DIExpression()), !dbg !595
  store ptr @lock, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !510, metadata !DIExpression()), !dbg !596
  %15 = load ptr, ptr %10, align 4, !dbg !598
  call void @llvm.dbg.declare(metadata ptr %9, metadata !518, metadata !DIExpression()), !dbg !599
  call void @llvm.dbg.declare(metadata ptr %6, metadata !520, metadata !DIExpression()), !dbg !600
  %16 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #5, !dbg !602, !srcloc !528
  store i32 %16, ptr %6, align 4, !dbg !602
  %17 = load i32, ptr %6, align 4, !dbg !603
  store i32 %17, ptr %9, align 4, !dbg !604
  %18 = load ptr, ptr %10, align 4, !dbg !605
  store ptr %18, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !532, metadata !DIExpression()), !dbg !606
  %19 = load ptr, ptr %5, align 4, !dbg !608
  %20 = load ptr, ptr %10, align 4, !dbg !609
  store ptr %20, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !540, metadata !DIExpression()), !dbg !610
  %21 = load ptr, ptr %4, align 4, !dbg !612
  %22 = load i32, ptr %9, align 4, !dbg !613
  %23 = getelementptr inbounds %struct.z_spinlock_key, ptr %13, i32 0, i32 0, !dbg !614
  store i32 %22, ptr %23, align 4, !dbg !614
  call void @llvm.dbg.declare(metadata ptr %14, metadata !615, metadata !DIExpression()), !dbg !616
  %24 = load ptr, ptr %12, align 4, !dbg !617
  %25 = call i32 @submit_to_queue_locked(ptr noundef %24, ptr noundef %11), !dbg !618
  store i32 %25, ptr %14, align 4, !dbg !616
  %26 = getelementptr inbounds %struct.z_spinlock_key, ptr %13, i32 0, i32 0, !dbg !619
  %27 = load [1 x i32], ptr %26, align 4, !dbg !619
  store [1 x i32] %27, ptr %7, align 4
  store ptr @lock, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !552, metadata !DIExpression()), !dbg !620
  call void @llvm.dbg.declare(metadata ptr %7, metadata !558, metadata !DIExpression()), !dbg !622
  %28 = load ptr, ptr %8, align 4, !dbg !623
  %29 = load i32, ptr %7, align 4, !dbg !624
  store i32 %29, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !562, metadata !DIExpression()), !dbg !625
  %30 = load i32, ptr %3, align 4, !dbg !627
  %31 = icmp ne i32 %30, 0, !dbg !628
  br i1 %31, label %32, label %33, !dbg !629

32:                                               ; preds = %2
  br label %arch_irq_unlock.exit, !dbg !630

33:                                               ; preds = %2
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #5, !dbg !631, !srcloc !575
  br label %arch_irq_unlock.exit, !dbg !632

arch_irq_unlock.exit:                             ; preds = %32, %33
  %34 = load i32, ptr %14, align 4, !dbg !633
  ret i32 %34, !dbg !634
}

; Function Attrs: noinline nounwind optnone
define internal i32 @submit_to_queue_locked(ptr noundef %0, ptr noundef %1) #0 !dbg !635 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !639, metadata !DIExpression()), !dbg !640
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !641, metadata !DIExpression()), !dbg !642
  call void @llvm.dbg.declare(metadata ptr %5, metadata !643, metadata !DIExpression()), !dbg !644
  store i32 0, ptr %5, align 4, !dbg !644
  %7 = load ptr, ptr %3, align 4, !dbg !645
  %8 = getelementptr inbounds %struct.k_work, ptr %7, i32 0, i32 3, !dbg !647
  %9 = call zeroext i1 @flag_test(ptr noundef %8, i32 noundef 1), !dbg !648
  br i1 %9, label %10, label %11, !dbg !649

10:                                               ; preds = %2
  store i32 -16, ptr %5, align 4, !dbg !650
  br label %52, !dbg !652

11:                                               ; preds = %2
  %12 = load ptr, ptr %3, align 4, !dbg !653
  %13 = getelementptr inbounds %struct.k_work, ptr %12, i32 0, i32 3, !dbg !655
  %14 = call zeroext i1 @flag_test(ptr noundef %13, i32 noundef 2), !dbg !656
  br i1 %14, label %50, label %15, !dbg !657

15:                                               ; preds = %11
  store i32 1, ptr %5, align 4, !dbg !658
  %16 = load ptr, ptr %4, align 4, !dbg !660
  %17 = load ptr, ptr %16, align 4, !dbg !662
  %18 = icmp eq ptr %17, null, !dbg !663
  br i1 %18, label %19, label %24, !dbg !664

19:                                               ; preds = %15
  %20 = load ptr, ptr %3, align 4, !dbg !665
  %21 = getelementptr inbounds %struct.k_work, ptr %20, i32 0, i32 2, !dbg !667
  %22 = load ptr, ptr %21, align 4, !dbg !667
  %23 = load ptr, ptr %4, align 4, !dbg !668
  store ptr %22, ptr %23, align 4, !dbg !669
  br label %24, !dbg !670

24:                                               ; preds = %19, %15
  %25 = load ptr, ptr %3, align 4, !dbg !671
  %26 = getelementptr inbounds %struct.k_work, ptr %25, i32 0, i32 3, !dbg !673
  %27 = call zeroext i1 @flag_test(ptr noundef %26, i32 noundef 0), !dbg !674
  br i1 %27, label %28, label %33, !dbg !675

28:                                               ; preds = %24
  %29 = load ptr, ptr %3, align 4, !dbg !676
  %30 = getelementptr inbounds %struct.k_work, ptr %29, i32 0, i32 2, !dbg !678
  %31 = load ptr, ptr %30, align 4, !dbg !678
  %32 = load ptr, ptr %4, align 4, !dbg !679
  store ptr %31, ptr %32, align 4, !dbg !680
  store i32 2, ptr %5, align 4, !dbg !681
  br label %33, !dbg !682

33:                                               ; preds = %28, %24
  call void @llvm.dbg.declare(metadata ptr %6, metadata !683, metadata !DIExpression()), !dbg !684
  %34 = load ptr, ptr %4, align 4, !dbg !685
  %35 = load ptr, ptr %34, align 4, !dbg !686
  %36 = load ptr, ptr %3, align 4, !dbg !687
  %37 = call i32 @queue_submit_locked(ptr noundef %35, ptr noundef %36), !dbg !688
  store i32 %37, ptr %6, align 4, !dbg !684
  %38 = load i32, ptr %6, align 4, !dbg !689
  %39 = icmp slt i32 %38, 0, !dbg !691
  br i1 %39, label %40, label %42, !dbg !692

40:                                               ; preds = %33
  %41 = load i32, ptr %6, align 4, !dbg !693
  store i32 %41, ptr %5, align 4, !dbg !695
  br label %49, !dbg !696

42:                                               ; preds = %33
  %43 = load ptr, ptr %3, align 4, !dbg !697
  %44 = getelementptr inbounds %struct.k_work, ptr %43, i32 0, i32 3, !dbg !699
  call void @flag_set(ptr noundef %44, i32 noundef 2), !dbg !700
  %45 = load ptr, ptr %4, align 4, !dbg !701
  %46 = load ptr, ptr %45, align 4, !dbg !702
  %47 = load ptr, ptr %3, align 4, !dbg !703
  %48 = getelementptr inbounds %struct.k_work, ptr %47, i32 0, i32 2, !dbg !704
  store ptr %46, ptr %48, align 4, !dbg !705
  br label %49

49:                                               ; preds = %42, %40
  br label %51, !dbg !706

50:                                               ; preds = %11
  br label %51

51:                                               ; preds = %50, %49
  br label %52

52:                                               ; preds = %51, %10
  %53 = load i32, ptr %5, align 4, !dbg !707
  %54 = icmp sle i32 %53, 0, !dbg !709
  br i1 %54, label %55, label %57, !dbg !710

55:                                               ; preds = %52
  %56 = load ptr, ptr %4, align 4, !dbg !711
  store ptr null, ptr %56, align 4, !dbg !713
  br label %57, !dbg !714

57:                                               ; preds = %55, %52
  %58 = load i32, ptr %5, align 4, !dbg !715
  ret i32 %58, !dbg !716
}

; Function Attrs: noinline nounwind optnone
define hidden i32 @k_work_submit_to_queue(ptr noundef %0, ptr noundef %1) #0 !dbg !717 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !718, metadata !DIExpression()), !dbg !719
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !720, metadata !DIExpression()), !dbg !721
  br label %6, !dbg !722

6:                                                ; preds = %2
  br label %7, !dbg !723

7:                                                ; preds = %6
  call void @llvm.dbg.declare(metadata ptr %5, metadata !725, metadata !DIExpression()), !dbg !726
  %8 = load ptr, ptr %3, align 4, !dbg !727
  %9 = load ptr, ptr %4, align 4, !dbg !728
  %10 = call i32 @z_work_submit_to_queue(ptr noundef %8, ptr noundef %9), !dbg !729
  store i32 %10, ptr %5, align 4, !dbg !726
  %11 = load i32, ptr %5, align 4, !dbg !730
  %12 = icmp sgt i32 %11, 0, !dbg !732
  br i1 %12, label %13, label %14, !dbg !733

13:                                               ; preds = %7
  call void @z_reschedule_unlocked(), !dbg !734
  br label %14, !dbg !736

14:                                               ; preds = %13, %7
  br label %15, !dbg !737

15:                                               ; preds = %14
  br label %16, !dbg !738

16:                                               ; preds = %15
  %17 = load i32, ptr %5, align 4, !dbg !740
  ret i32 %17, !dbg !741
}

; Function Attrs: noinline nounwind optnone
define internal void @z_reschedule_unlocked() #0 !dbg !742 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata ptr %1, metadata !520, metadata !DIExpression()), !dbg !746
  %2 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #5, !dbg !748, !srcloc !528
  store i32 %2, ptr %1, align 4, !dbg !748
  %3 = load i32, ptr %1, align 4, !dbg !749
  call void @z_reschedule_irqlock(i32 noundef %3), !dbg !750
  ret void, !dbg !751
}

; Function Attrs: noinline nounwind optnone
define hidden i32 @k_work_submit(ptr noundef %0) #0 !dbg !752 {
  %2 = alloca ptr, align 4
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !755, metadata !DIExpression()), !dbg !756
  br label %4, !dbg !757

4:                                                ; preds = %1
  br label %5, !dbg !758

5:                                                ; preds = %4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !760, metadata !DIExpression()), !dbg !761
  %6 = load ptr, ptr %2, align 4, !dbg !762
  %7 = call i32 @k_work_submit_to_queue(ptr noundef @k_sys_work_q, ptr noundef %6), !dbg !763
  store i32 %7, ptr %3, align 4, !dbg !761
  br label %8, !dbg !764

8:                                                ; preds = %5
  br label %9, !dbg !765

9:                                                ; preds = %8
  %10 = load i32, ptr %3, align 4, !dbg !767
  ret i32 %10, !dbg !768
}

; Function Attrs: noinline nounwind optnone
define hidden zeroext i1 @k_work_flush(ptr noundef %0, ptr noundef %1) #0 !dbg !769 {
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
  call void @llvm.dbg.declare(metadata ptr %11, metadata !781, metadata !DIExpression()), !dbg !782
  store ptr %1, ptr %12, align 4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !783, metadata !DIExpression()), !dbg !784
  br label %17, !dbg !785

17:                                               ; preds = %2
  br label %18, !dbg !786

18:                                               ; preds = %17
  call void @llvm.dbg.declare(metadata ptr %13, metadata !788, metadata !DIExpression()), !dbg !789
  %19 = load ptr, ptr %12, align 4, !dbg !790
  %20 = getelementptr inbounds %struct.k_work_sync, ptr %19, i32 0, i32 0, !dbg !791
  store ptr %20, ptr %13, align 4, !dbg !789
  call void @llvm.dbg.declare(metadata ptr %14, metadata !792, metadata !DIExpression()), !dbg !793
  store ptr @lock, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !510, metadata !DIExpression()), !dbg !794
  %21 = load ptr, ptr %10, align 4, !dbg !796
  call void @llvm.dbg.declare(metadata ptr %9, metadata !518, metadata !DIExpression()), !dbg !797
  call void @llvm.dbg.declare(metadata ptr %6, metadata !520, metadata !DIExpression()), !dbg !798
  %22 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #5, !dbg !800, !srcloc !528
  store i32 %22, ptr %6, align 4, !dbg !800
  %23 = load i32, ptr %6, align 4, !dbg !801
  store i32 %23, ptr %9, align 4, !dbg !802
  %24 = load ptr, ptr %10, align 4, !dbg !803
  store ptr %24, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !532, metadata !DIExpression()), !dbg !804
  %25 = load ptr, ptr %5, align 4, !dbg !806
  %26 = load ptr, ptr %10, align 4, !dbg !807
  store ptr %26, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !540, metadata !DIExpression()), !dbg !808
  %27 = load ptr, ptr %4, align 4, !dbg !810
  %28 = load i32, ptr %9, align 4, !dbg !811
  %29 = getelementptr inbounds %struct.z_spinlock_key, ptr %14, i32 0, i32 0, !dbg !812
  store i32 %28, ptr %29, align 4, !dbg !812
  call void @llvm.dbg.declare(metadata ptr %15, metadata !813, metadata !DIExpression()), !dbg !814
  %30 = load ptr, ptr %11, align 4, !dbg !815
  %31 = load ptr, ptr %13, align 4, !dbg !816
  %32 = call zeroext i1 @work_flush_locked(ptr noundef %30, ptr noundef %31), !dbg !817
  %33 = zext i1 %32 to i8, !dbg !814
  store i8 %33, ptr %15, align 1, !dbg !814
  %34 = getelementptr inbounds %struct.z_spinlock_key, ptr %14, i32 0, i32 0, !dbg !818
  %35 = load [1 x i32], ptr %34, align 4, !dbg !818
  store [1 x i32] %35, ptr %7, align 4
  store ptr @lock, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !552, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.declare(metadata ptr %7, metadata !558, metadata !DIExpression()), !dbg !821
  %36 = load ptr, ptr %8, align 4, !dbg !822
  %37 = load i32, ptr %7, align 4, !dbg !823
  store i32 %37, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !562, metadata !DIExpression()), !dbg !824
  %38 = load i32, ptr %3, align 4, !dbg !826
  %39 = icmp ne i32 %38, 0, !dbg !827
  br i1 %39, label %40, label %41, !dbg !828

40:                                               ; preds = %18
  br label %arch_irq_unlock.exit, !dbg !829

41:                                               ; preds = %18
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #5, !dbg !830, !srcloc !575
  br label %arch_irq_unlock.exit, !dbg !831

arch_irq_unlock.exit:                             ; preds = %40, %41
  %42 = load i8, ptr %15, align 1, !dbg !832
  %43 = trunc i8 %42 to i1, !dbg !832
  br i1 %43, label %44, label %53, !dbg !834

44:                                               ; preds = %arch_irq_unlock.exit
  br label %45, !dbg !835

45:                                               ; preds = %44
  br label %46, !dbg !837

46:                                               ; preds = %45
  %47 = load ptr, ptr %13, align 4, !dbg !839
  %48 = getelementptr inbounds %struct.z_work_flusher, ptr %47, i32 0, i32 1, !dbg !840
  %49 = getelementptr inbounds %struct.k_timeout_t, ptr %16, i32 0, i32 0, !dbg !841
  store i64 -1, ptr %49, align 8, !dbg !841
  %50 = getelementptr inbounds %struct.k_timeout_t, ptr %16, i32 0, i32 0, !dbg !842
  %51 = load [1 x i64], ptr %50, align 8, !dbg !842
  %52 = call i32 @k_sem_take(ptr noundef %48, [1 x i64] %51), !dbg !842
  br label %53, !dbg !843

53:                                               ; preds = %46, %arch_irq_unlock.exit
  br label %54, !dbg !844

54:                                               ; preds = %53
  br label %55, !dbg !845

55:                                               ; preds = %54
  %56 = load i8, ptr %15, align 1, !dbg !847
  %57 = trunc i8 %56 to i1, !dbg !847
  ret i1 %57, !dbg !848
}

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @work_flush_locked(ptr noundef %0, ptr noundef %1) #0 !dbg !849 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i8, align 1
  %6 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !852, metadata !DIExpression()), !dbg !853
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !854, metadata !DIExpression()), !dbg !855
  call void @llvm.dbg.declare(metadata ptr %5, metadata !856, metadata !DIExpression()), !dbg !857
  %7 = load ptr, ptr %3, align 4, !dbg !858
  %8 = getelementptr inbounds %struct.k_work, ptr %7, i32 0, i32 3, !dbg !859
  %9 = call i32 @flags_get(ptr noundef %8), !dbg !860
  %10 = and i32 %9, 5, !dbg !861
  %11 = icmp ne i32 %10, 0, !dbg !862
  %12 = zext i1 %11 to i8, !dbg !857
  store i8 %12, ptr %5, align 1, !dbg !857
  %13 = load i8, ptr %5, align 1, !dbg !863
  %14 = trunc i8 %13 to i1, !dbg !863
  br i1 %14, label %15, label %24, !dbg !865

15:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata ptr %6, metadata !866, metadata !DIExpression()), !dbg !868
  %16 = load ptr, ptr %3, align 4, !dbg !869
  %17 = getelementptr inbounds %struct.k_work, ptr %16, i32 0, i32 2, !dbg !870
  %18 = load ptr, ptr %17, align 4, !dbg !870
  store ptr %18, ptr %6, align 4, !dbg !868
  %19 = load ptr, ptr %6, align 4, !dbg !871
  %20 = load ptr, ptr %3, align 4, !dbg !872
  %21 = load ptr, ptr %4, align 4, !dbg !873
  call void @queue_flusher_locked(ptr noundef %19, ptr noundef %20, ptr noundef %21), !dbg !874
  %22 = load ptr, ptr %6, align 4, !dbg !875
  %23 = call zeroext i1 @notify_queue_locked(ptr noundef %22), !dbg !876
  br label %24, !dbg !877

24:                                               ; preds = %15, %2
  %25 = load i8, ptr %5, align 1, !dbg !878
  %26 = trunc i8 %25 to i1, !dbg !878
  ret i1 %26, !dbg !879
}

; Function Attrs: noinline nounwind optnone
define internal i32 @k_sem_take(ptr noundef %0, [1 x i64] %1) #0 !dbg !880 {
  %3 = alloca %struct.k_timeout_t, align 8
  %4 = alloca ptr, align 4
  %5 = getelementptr inbounds %struct.k_timeout_t, ptr %3, i32 0, i32 0
  store [1 x i64] %1, ptr %5, align 8
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !884, metadata !DIExpression()), !dbg !885
  call void @llvm.dbg.declare(metadata ptr %3, metadata !886, metadata !DIExpression()), !dbg !887
  br label %6, !dbg !888

6:                                                ; preds = %2
  call void asm sideeffect "", "~{memory}"() #5, !dbg !889, !srcloc !891
  br label %7, !dbg !892

7:                                                ; preds = %6
  %8 = load ptr, ptr %4, align 4, !dbg !893
  %9 = getelementptr inbounds %struct.k_timeout_t, ptr %3, i32 0, i32 0, !dbg !894
  %10 = load [1 x i64], ptr %9, align 8, !dbg !894
  %11 = call i32 @z_impl_k_sem_take(ptr noundef %8, [1 x i64] %10), !dbg !894
  ret i32 %11, !dbg !895
}

; Function Attrs: noinline nounwind optnone
define hidden i32 @k_work_cancel(ptr noundef %0) #0 !dbg !896 {
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
  call void @llvm.dbg.declare(metadata ptr %10, metadata !897, metadata !DIExpression()), !dbg !898
  br label %13, !dbg !899

13:                                               ; preds = %1
  br label %14, !dbg !900

14:                                               ; preds = %13
  call void @llvm.dbg.declare(metadata ptr %11, metadata !902, metadata !DIExpression()), !dbg !903
  store ptr @lock, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !510, metadata !DIExpression()), !dbg !904
  %15 = load ptr, ptr %9, align 4, !dbg !906
  call void @llvm.dbg.declare(metadata ptr %8, metadata !518, metadata !DIExpression()), !dbg !907
  call void @llvm.dbg.declare(metadata ptr %5, metadata !520, metadata !DIExpression()), !dbg !908
  %16 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #5, !dbg !910, !srcloc !528
  store i32 %16, ptr %5, align 4, !dbg !910
  %17 = load i32, ptr %5, align 4, !dbg !911
  store i32 %17, ptr %8, align 4, !dbg !912
  %18 = load ptr, ptr %9, align 4, !dbg !913
  store ptr %18, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !532, metadata !DIExpression()), !dbg !914
  %19 = load ptr, ptr %4, align 4, !dbg !916
  %20 = load ptr, ptr %9, align 4, !dbg !917
  store ptr %20, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !540, metadata !DIExpression()), !dbg !918
  %21 = load ptr, ptr %3, align 4, !dbg !920
  %22 = load i32, ptr %8, align 4, !dbg !921
  %23 = getelementptr inbounds %struct.z_spinlock_key, ptr %11, i32 0, i32 0, !dbg !922
  store i32 %22, ptr %23, align 4, !dbg !922
  call void @llvm.dbg.declare(metadata ptr %12, metadata !923, metadata !DIExpression()), !dbg !924
  %24 = load ptr, ptr %10, align 4, !dbg !925
  %25 = call i32 @cancel_async_locked(ptr noundef %24), !dbg !926
  store i32 %25, ptr %12, align 4, !dbg !924
  %26 = getelementptr inbounds %struct.z_spinlock_key, ptr %11, i32 0, i32 0, !dbg !927
  %27 = load [1 x i32], ptr %26, align 4, !dbg !927
  store [1 x i32] %27, ptr %6, align 4
  store ptr @lock, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !552, metadata !DIExpression()), !dbg !928
  call void @llvm.dbg.declare(metadata ptr %6, metadata !558, metadata !DIExpression()), !dbg !930
  %28 = load ptr, ptr %7, align 4, !dbg !931
  %29 = load i32, ptr %6, align 4, !dbg !932
  store i32 %29, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !562, metadata !DIExpression()), !dbg !933
  %30 = load i32, ptr %2, align 4, !dbg !935
  %31 = icmp ne i32 %30, 0, !dbg !936
  br i1 %31, label %32, label %33, !dbg !937

32:                                               ; preds = %14
  br label %arch_irq_unlock.exit, !dbg !938

33:                                               ; preds = %14
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #5, !dbg !939, !srcloc !575
  br label %arch_irq_unlock.exit, !dbg !940

arch_irq_unlock.exit:                             ; preds = %32, %33
  br label %34, !dbg !941

34:                                               ; preds = %arch_irq_unlock.exit
  br label %35, !dbg !942

35:                                               ; preds = %34
  %36 = load i32, ptr %12, align 4, !dbg !944
  ret i32 %36, !dbg !945
}

; Function Attrs: noinline nounwind optnone
define internal i32 @cancel_async_locked(ptr noundef %0) #0 !dbg !946 {
  %2 = alloca ptr, align 4
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !947, metadata !DIExpression()), !dbg !948
  %4 = load ptr, ptr %2, align 4, !dbg !949
  %5 = getelementptr inbounds %struct.k_work, ptr %4, i32 0, i32 3, !dbg !951
  %6 = call zeroext i1 @flag_test(ptr noundef %5, i32 noundef 1), !dbg !952
  br i1 %6, label %12, label %7, !dbg !953

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 4, !dbg !954
  %9 = getelementptr inbounds %struct.k_work, ptr %8, i32 0, i32 2, !dbg !956
  %10 = load ptr, ptr %9, align 4, !dbg !956
  %11 = load ptr, ptr %2, align 4, !dbg !957
  call void @queue_remove_locked(ptr noundef %10, ptr noundef %11), !dbg !958
  br label %12, !dbg !959

12:                                               ; preds = %7, %1
  call void @llvm.dbg.declare(metadata ptr %3, metadata !960, metadata !DIExpression()), !dbg !961
  %13 = load ptr, ptr %2, align 4, !dbg !962
  %14 = call i32 @work_busy_get_locked(ptr noundef %13), !dbg !963
  store i32 %14, ptr %3, align 4, !dbg !961
  %15 = load i32, ptr %3, align 4, !dbg !964
  %16 = icmp ne i32 %15, 0, !dbg !966
  br i1 %16, label %17, label %22, !dbg !967

17:                                               ; preds = %12
  %18 = load ptr, ptr %2, align 4, !dbg !968
  %19 = getelementptr inbounds %struct.k_work, ptr %18, i32 0, i32 3, !dbg !970
  call void @flag_set(ptr noundef %19, i32 noundef 1), !dbg !971
  %20 = load ptr, ptr %2, align 4, !dbg !972
  %21 = call i32 @work_busy_get_locked(ptr noundef %20), !dbg !973
  store i32 %21, ptr %3, align 4, !dbg !974
  br label %22, !dbg !975

22:                                               ; preds = %17, %12
  %23 = load i32, ptr %3, align 4, !dbg !976
  ret i32 %23, !dbg !977
}

; Function Attrs: noinline nounwind optnone
define hidden zeroext i1 @k_work_cancel_sync(ptr noundef %0, ptr noundef %1) #0 !dbg !978 {
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
  call void @llvm.dbg.declare(metadata ptr %11, metadata !979, metadata !DIExpression()), !dbg !980
  store ptr %1, ptr %12, align 4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !981, metadata !DIExpression()), !dbg !982
  br label %18, !dbg !983

18:                                               ; preds = %2
  br label %19, !dbg !984

19:                                               ; preds = %18
  call void @llvm.dbg.declare(metadata ptr %13, metadata !986, metadata !DIExpression()), !dbg !987
  %20 = load ptr, ptr %12, align 4, !dbg !988
  %21 = getelementptr inbounds %struct.k_work_sync, ptr %20, i32 0, i32 0, !dbg !989
  store ptr %21, ptr %13, align 4, !dbg !987
  call void @llvm.dbg.declare(metadata ptr %14, metadata !990, metadata !DIExpression()), !dbg !991
  store ptr @lock, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !510, metadata !DIExpression()), !dbg !992
  %22 = load ptr, ptr %10, align 4, !dbg !994
  call void @llvm.dbg.declare(metadata ptr %9, metadata !518, metadata !DIExpression()), !dbg !995
  call void @llvm.dbg.declare(metadata ptr %6, metadata !520, metadata !DIExpression()), !dbg !996
  %23 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #5, !dbg !998, !srcloc !528
  store i32 %23, ptr %6, align 4, !dbg !998
  %24 = load i32, ptr %6, align 4, !dbg !999
  store i32 %24, ptr %9, align 4, !dbg !1000
  %25 = load ptr, ptr %10, align 4, !dbg !1001
  store ptr %25, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !532, metadata !DIExpression()), !dbg !1002
  %26 = load ptr, ptr %5, align 4, !dbg !1004
  %27 = load ptr, ptr %10, align 4, !dbg !1005
  store ptr %27, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !540, metadata !DIExpression()), !dbg !1006
  %28 = load ptr, ptr %4, align 4, !dbg !1008
  %29 = load i32, ptr %9, align 4, !dbg !1009
  %30 = getelementptr inbounds %struct.z_spinlock_key, ptr %14, i32 0, i32 0, !dbg !1010
  store i32 %29, ptr %30, align 4, !dbg !1010
  call void @llvm.dbg.declare(metadata ptr %15, metadata !1011, metadata !DIExpression()), !dbg !1012
  %31 = load ptr, ptr %11, align 4, !dbg !1013
  %32 = call i32 @work_busy_get_locked(ptr noundef %31), !dbg !1014
  %33 = icmp ne i32 %32, 0, !dbg !1015
  %34 = zext i1 %33 to i8, !dbg !1012
  store i8 %34, ptr %15, align 1, !dbg !1012
  call void @llvm.dbg.declare(metadata ptr %16, metadata !1016, metadata !DIExpression()), !dbg !1017
  store i8 0, ptr %16, align 1, !dbg !1017
  %35 = load i8, ptr %15, align 1, !dbg !1018
  %36 = trunc i8 %35 to i1, !dbg !1018
  br i1 %36, label %37, label %44, !dbg !1020

37:                                               ; preds = %19
  %38 = load ptr, ptr %11, align 4, !dbg !1021
  %39 = call i32 @cancel_async_locked(ptr noundef %38), !dbg !1023
  %40 = load ptr, ptr %11, align 4, !dbg !1024
  %41 = load ptr, ptr %13, align 4, !dbg !1025
  %42 = call zeroext i1 @cancel_sync_locked(ptr noundef %40, ptr noundef %41), !dbg !1026
  %43 = zext i1 %42 to i8, !dbg !1027
  store i8 %43, ptr %16, align 1, !dbg !1027
  br label %44, !dbg !1028

44:                                               ; preds = %37, %19
  %45 = getelementptr inbounds %struct.z_spinlock_key, ptr %14, i32 0, i32 0, !dbg !1029
  %46 = load [1 x i32], ptr %45, align 4, !dbg !1029
  store [1 x i32] %46, ptr %7, align 4
  store ptr @lock, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !552, metadata !DIExpression()), !dbg !1030
  call void @llvm.dbg.declare(metadata ptr %7, metadata !558, metadata !DIExpression()), !dbg !1032
  %47 = load ptr, ptr %8, align 4, !dbg !1033
  %48 = load i32, ptr %7, align 4, !dbg !1034
  store i32 %48, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !562, metadata !DIExpression()), !dbg !1035
  %49 = load i32, ptr %3, align 4, !dbg !1037
  %50 = icmp ne i32 %49, 0, !dbg !1038
  br i1 %50, label %51, label %52, !dbg !1039

51:                                               ; preds = %44
  br label %arch_irq_unlock.exit, !dbg !1040

52:                                               ; preds = %44
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #5, !dbg !1041, !srcloc !575
  br label %arch_irq_unlock.exit, !dbg !1042

arch_irq_unlock.exit:                             ; preds = %51, %52
  %53 = load i8, ptr %16, align 1, !dbg !1043
  %54 = trunc i8 %53 to i1, !dbg !1043
  br i1 %54, label %55, label %64, !dbg !1045

55:                                               ; preds = %arch_irq_unlock.exit
  br label %56, !dbg !1046

56:                                               ; preds = %55
  br label %57, !dbg !1048

57:                                               ; preds = %56
  %58 = load ptr, ptr %13, align 4, !dbg !1050
  %59 = getelementptr inbounds %struct.z_work_canceller, ptr %58, i32 0, i32 2, !dbg !1051
  %60 = getelementptr inbounds %struct.k_timeout_t, ptr %17, i32 0, i32 0, !dbg !1052
  store i64 -1, ptr %60, align 8, !dbg !1052
  %61 = getelementptr inbounds %struct.k_timeout_t, ptr %17, i32 0, i32 0, !dbg !1053
  %62 = load [1 x i64], ptr %61, align 8, !dbg !1053
  %63 = call i32 @k_sem_take(ptr noundef %59, [1 x i64] %62), !dbg !1053
  br label %64, !dbg !1054

64:                                               ; preds = %57, %arch_irq_unlock.exit
  br label %65, !dbg !1055

65:                                               ; preds = %64
  br label %66, !dbg !1056

66:                                               ; preds = %65
  %67 = load i8, ptr %15, align 1, !dbg !1058
  %68 = trunc i8 %67 to i1, !dbg !1058
  ret i1 %68, !dbg !1059
}

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @cancel_sync_locked(ptr noundef %0, ptr noundef %1) #0 !dbg !1060 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i8, align 1
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1063, metadata !DIExpression()), !dbg !1064
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1065, metadata !DIExpression()), !dbg !1066
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1067, metadata !DIExpression()), !dbg !1068
  %6 = load ptr, ptr %3, align 4, !dbg !1069
  %7 = getelementptr inbounds %struct.k_work, ptr %6, i32 0, i32 3, !dbg !1070
  %8 = call zeroext i1 @flag_test(ptr noundef %7, i32 noundef 1), !dbg !1071
  %9 = zext i1 %8 to i8, !dbg !1068
  store i8 %9, ptr %5, align 1, !dbg !1068
  %10 = load i8, ptr %5, align 1, !dbg !1072
  %11 = trunc i8 %10 to i1, !dbg !1072
  br i1 %11, label %12, label %15, !dbg !1074

12:                                               ; preds = %2
  %13 = load ptr, ptr %4, align 4, !dbg !1075
  %14 = load ptr, ptr %3, align 4, !dbg !1077
  call void @init_work_cancel(ptr noundef %13, ptr noundef %14), !dbg !1078
  br label %15, !dbg !1079

15:                                               ; preds = %12, %2
  %16 = load i8, ptr %5, align 1, !dbg !1080
  %17 = trunc i8 %16 to i1, !dbg !1080
  ret i1 %17, !dbg !1081
}

; Function Attrs: noinline nounwind optnone
define hidden void @k_work_queue_init(ptr noundef %0) #0 !dbg !1082 {
  %2 = alloca ptr, align 4
  %3 = alloca %struct.k_work_q, align 8
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1085, metadata !DIExpression()), !dbg !1086
  %4 = load ptr, ptr %2, align 4, !dbg !1087
  call void @llvm.memset.p0.i64(ptr align 8 %3, i8 0, i64 144, i1 false), !dbg !1088
  call void @llvm.memcpy.p0.p0.i32(ptr align 8 %4, ptr align 8 %3, i32 144, i1 false), !dbg !1088
  br label %5, !dbg !1089

5:                                                ; preds = %1
  br label %6, !dbg !1090

6:                                                ; preds = %5
  ret void, !dbg !1092
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline nounwind optnone
define hidden void @k_work_queue_start(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) #0 !dbg !1093 {
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.k_timeout_t, align 8
  store ptr %0, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1113, metadata !DIExpression()), !dbg !1114
  store ptr %1, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1115, metadata !DIExpression()), !dbg !1116
  store i32 %2, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1117, metadata !DIExpression()), !dbg !1118
  store i32 %3, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1119, metadata !DIExpression()), !dbg !1120
  store ptr %4, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1121, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1123, metadata !DIExpression()), !dbg !1124
  store i32 1, ptr %11, align 4, !dbg !1124
  br label %13, !dbg !1125

13:                                               ; preds = %5
  br label %14, !dbg !1126

14:                                               ; preds = %13
  %15 = load ptr, ptr %6, align 4, !dbg !1128
  %16 = getelementptr inbounds %struct.k_work_q, ptr %15, i32 0, i32 1, !dbg !1129
  call void @sys_slist_init(ptr noundef %16), !dbg !1130
  %17 = load ptr, ptr %6, align 4, !dbg !1131
  %18 = getelementptr inbounds %struct.k_work_q, ptr %17, i32 0, i32 2, !dbg !1132
  call void @z_waitq_init(ptr noundef %18), !dbg !1133
  %19 = load ptr, ptr %6, align 4, !dbg !1134
  %20 = getelementptr inbounds %struct.k_work_q, ptr %19, i32 0, i32 3, !dbg !1135
  call void @z_waitq_init(ptr noundef %20), !dbg !1136
  %21 = load ptr, ptr %10, align 4, !dbg !1137
  %22 = icmp ne ptr %21, null, !dbg !1139
  br i1 %22, label %23, label %31, !dbg !1140

23:                                               ; preds = %14
  %24 = load ptr, ptr %10, align 4, !dbg !1141
  %25 = getelementptr inbounds %struct.k_work_queue_config, ptr %24, i32 0, i32 1, !dbg !1142
  %26 = load i8, ptr %25, align 4, !dbg !1142
  %27 = trunc i8 %26 to i1, !dbg !1142
  br i1 %27, label %28, label %31, !dbg !1143

28:                                               ; preds = %23
  %29 = load i32, ptr %11, align 4, !dbg !1144
  %30 = or i32 %29, 256, !dbg !1144
  store i32 %30, ptr %11, align 4, !dbg !1144
  br label %31, !dbg !1146

31:                                               ; preds = %28, %23, %14
  %32 = load ptr, ptr %6, align 4, !dbg !1147
  %33 = getelementptr inbounds %struct.k_work_q, ptr %32, i32 0, i32 4, !dbg !1148
  %34 = load i32, ptr %11, align 4, !dbg !1149
  call void @flags_set(ptr noundef %33, i32 noundef %34), !dbg !1150
  %35 = load ptr, ptr %6, align 4, !dbg !1151
  %36 = getelementptr inbounds %struct.k_work_q, ptr %35, i32 0, i32 0, !dbg !1152
  %37 = load ptr, ptr %7, align 4, !dbg !1153
  %38 = load i32, ptr %8, align 4, !dbg !1154
  %39 = load ptr, ptr %6, align 4, !dbg !1155
  %40 = load i32, ptr %9, align 4, !dbg !1156
  %41 = getelementptr inbounds %struct.k_timeout_t, ptr %12, i32 0, i32 0, !dbg !1157
  store i64 -1, ptr %41, align 8, !dbg !1157
  %42 = getelementptr inbounds %struct.k_timeout_t, ptr %12, i32 0, i32 0, !dbg !1158
  %43 = load [1 x i64], ptr %42, align 8, !dbg !1158
  %44 = call ptr @k_thread_create(ptr noundef %36, ptr noundef %37, i32 noundef %38, ptr noundef @work_queue_main, ptr noundef %39, ptr noundef null, ptr noundef null, i32 noundef %40, i32 noundef 0, [1 x i64] %43), !dbg !1158
  %45 = load ptr, ptr %10, align 4, !dbg !1159
  %46 = icmp ne ptr %45, null, !dbg !1161
  br i1 %46, label %47, label %59, !dbg !1162

47:                                               ; preds = %31
  %48 = load ptr, ptr %10, align 4, !dbg !1163
  %49 = getelementptr inbounds %struct.k_work_queue_config, ptr %48, i32 0, i32 0, !dbg !1164
  %50 = load ptr, ptr %49, align 4, !dbg !1164
  %51 = icmp ne ptr %50, null, !dbg !1165
  br i1 %51, label %52, label %59, !dbg !1166

52:                                               ; preds = %47
  %53 = load ptr, ptr %6, align 4, !dbg !1167
  %54 = getelementptr inbounds %struct.k_work_q, ptr %53, i32 0, i32 0, !dbg !1169
  %55 = load ptr, ptr %10, align 4, !dbg !1170
  %56 = getelementptr inbounds %struct.k_work_queue_config, ptr %55, i32 0, i32 0, !dbg !1171
  %57 = load ptr, ptr %56, align 4, !dbg !1171
  %58 = call i32 @k_thread_name_set(ptr noundef %54, ptr noundef %57), !dbg !1172
  br label %59, !dbg !1173

59:                                               ; preds = %52, %47, %31
  %60 = load ptr, ptr %6, align 4, !dbg !1174
  %61 = getelementptr inbounds %struct.k_work_q, ptr %60, i32 0, i32 0, !dbg !1175
  call void @k_thread_start(ptr noundef %61), !dbg !1176
  br label %62, !dbg !1177

62:                                               ; preds = %59
  br label %63, !dbg !1178

63:                                               ; preds = %62
  ret void, !dbg !1180
}

; Function Attrs: noinline nounwind optnone
define internal void @sys_slist_init(ptr noundef %0) #0 !dbg !1181 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1185, metadata !DIExpression()), !dbg !1186
  %3 = load ptr, ptr %2, align 4, !dbg !1187
  %4 = getelementptr inbounds %struct._slist, ptr %3, i32 0, i32 0, !dbg !1188
  store ptr null, ptr %4, align 4, !dbg !1189
  %5 = load ptr, ptr %2, align 4, !dbg !1190
  %6 = getelementptr inbounds %struct._slist, ptr %5, i32 0, i32 1, !dbg !1191
  store ptr null, ptr %6, align 4, !dbg !1192
  ret void, !dbg !1193
}

; Function Attrs: noinline nounwind optnone
define internal void @z_waitq_init(ptr noundef %0) #0 !dbg !1194 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1198, metadata !DIExpression()), !dbg !1199
  %3 = load ptr, ptr %2, align 4, !dbg !1200
  %4 = getelementptr inbounds %struct._wait_q_t, ptr %3, i32 0, i32 0, !dbg !1201
  call void @sys_dlist_init(ptr noundef %4), !dbg !1202
  ret void, !dbg !1203
}

; Function Attrs: noinline nounwind optnone
define internal void @flags_set(ptr noundef %0, i32 noundef %1) #0 !dbg !1204 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1208, metadata !DIExpression()), !dbg !1209
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1210, metadata !DIExpression()), !dbg !1211
  %5 = load i32, ptr %4, align 4, !dbg !1212
  %6 = load ptr, ptr %3, align 4, !dbg !1213
  store i32 %5, ptr %6, align 4, !dbg !1214
  ret void, !dbg !1215
}

; Function Attrs: noinline nounwind optnone
define internal ptr @k_thread_create(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef %8, [1 x i64] %9) #0 !dbg !1216 {
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
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1224, metadata !DIExpression()), !dbg !1225
  store ptr %1, ptr %13, align 4
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1226, metadata !DIExpression()), !dbg !1227
  store i32 %2, ptr %14, align 4
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1228, metadata !DIExpression()), !dbg !1229
  store ptr %3, ptr %15, align 4
  call void @llvm.dbg.declare(metadata ptr %15, metadata !1230, metadata !DIExpression()), !dbg !1231
  store ptr %4, ptr %16, align 4
  call void @llvm.dbg.declare(metadata ptr %16, metadata !1232, metadata !DIExpression()), !dbg !1233
  store ptr %5, ptr %17, align 4
  call void @llvm.dbg.declare(metadata ptr %17, metadata !1234, metadata !DIExpression()), !dbg !1235
  store ptr %6, ptr %18, align 4
  call void @llvm.dbg.declare(metadata ptr %18, metadata !1236, metadata !DIExpression()), !dbg !1237
  store i32 %7, ptr %19, align 4
  call void @llvm.dbg.declare(metadata ptr %19, metadata !1238, metadata !DIExpression()), !dbg !1239
  store i32 %8, ptr %20, align 4
  call void @llvm.dbg.declare(metadata ptr %20, metadata !1240, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1242, metadata !DIExpression()), !dbg !1243
  br label %22, !dbg !1244

22:                                               ; preds = %10
  call void asm sideeffect "", "~{memory}"() #5, !dbg !1245, !srcloc !1247
  br label %23, !dbg !1248

23:                                               ; preds = %22
  %24 = load ptr, ptr %12, align 4, !dbg !1249
  %25 = load ptr, ptr %13, align 4, !dbg !1250
  %26 = load i32, ptr %14, align 4, !dbg !1251
  %27 = load ptr, ptr %15, align 4, !dbg !1252
  %28 = load ptr, ptr %16, align 4, !dbg !1253
  %29 = load ptr, ptr %17, align 4, !dbg !1254
  %30 = load ptr, ptr %18, align 4, !dbg !1255
  %31 = load i32, ptr %19, align 4, !dbg !1256
  %32 = load i32, ptr %20, align 4, !dbg !1257
  %33 = getelementptr inbounds %struct.k_timeout_t, ptr %11, i32 0, i32 0, !dbg !1258
  %34 = load [1 x i64], ptr %33, align 8, !dbg !1258
  %35 = call ptr @z_impl_k_thread_create(ptr noundef %24, ptr noundef %25, i32 noundef %26, ptr noundef %27, ptr noundef %28, ptr noundef %29, ptr noundef %30, i32 noundef %31, i32 noundef %32, [1 x i64] %34), !dbg !1258
  ret ptr %35, !dbg !1259
}

; Function Attrs: noinline nounwind optnone
define internal void @work_queue_main(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !1260 {
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
  %31 = alloca %struct.z_spinlock_key, align 4
  store ptr %0, ptr %20, align 4
  call void @llvm.dbg.declare(metadata ptr %20, metadata !1261, metadata !DIExpression()), !dbg !1262
  store ptr %1, ptr %21, align 4
  call void @llvm.dbg.declare(metadata ptr %21, metadata !1263, metadata !DIExpression()), !dbg !1264
  store ptr %2, ptr %22, align 4
  call void @llvm.dbg.declare(metadata ptr %22, metadata !1265, metadata !DIExpression()), !dbg !1266
  %32 = load ptr, ptr %21, align 4, !dbg !1267
  %33 = load ptr, ptr %22, align 4, !dbg !1268
  call void @llvm.dbg.declare(metadata ptr %23, metadata !1269, metadata !DIExpression()), !dbg !1270
  %34 = load ptr, ptr %20, align 4, !dbg !1271
  store ptr %34, ptr %23, align 4, !dbg !1270
  br label %35, !dbg !1272

35:                                               ; preds = %3, %76, %131
  call void @llvm.dbg.declare(metadata ptr %24, metadata !1273, metadata !DIExpression()), !dbg !1275
  call void @llvm.dbg.declare(metadata ptr %25, metadata !1276, metadata !DIExpression()), !dbg !1277
  store ptr null, ptr %25, align 4, !dbg !1277
  call void @llvm.dbg.declare(metadata ptr %26, metadata !1278, metadata !DIExpression()), !dbg !1279
  store ptr null, ptr %26, align 4, !dbg !1279
  call void @llvm.dbg.declare(metadata ptr %27, metadata !1280, metadata !DIExpression()), !dbg !1281
  store ptr @lock, ptr %17, align 4
  call void @llvm.dbg.declare(metadata ptr %17, metadata !510, metadata !DIExpression()), !dbg !1282
  %36 = load ptr, ptr %17, align 4, !dbg !1284
  call void @llvm.dbg.declare(metadata ptr %16, metadata !518, metadata !DIExpression()), !dbg !1285
  call void @llvm.dbg.declare(metadata ptr %11, metadata !520, metadata !DIExpression()), !dbg !1286
  %37 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #5, !dbg !1288, !srcloc !528
  store i32 %37, ptr %11, align 4, !dbg !1288
  %38 = load i32, ptr %11, align 4, !dbg !1289
  store i32 %38, ptr %16, align 4, !dbg !1290
  %39 = load ptr, ptr %17, align 4, !dbg !1291
  store ptr %39, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !532, metadata !DIExpression()), !dbg !1292
  %40 = load ptr, ptr %9, align 4, !dbg !1294
  %41 = load ptr, ptr %17, align 4, !dbg !1295
  store ptr %41, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !540, metadata !DIExpression()), !dbg !1296
  %42 = load ptr, ptr %7, align 4, !dbg !1298
  %43 = load i32, ptr %16, align 4, !dbg !1299
  %44 = getelementptr inbounds %struct.z_spinlock_key, ptr %27, i32 0, i32 0, !dbg !1300
  store i32 %43, ptr %44, align 4, !dbg !1300
  call void @llvm.dbg.declare(metadata ptr %28, metadata !1301, metadata !DIExpression()), !dbg !1302
  %45 = load ptr, ptr %23, align 4, !dbg !1303
  %46 = getelementptr inbounds %struct.k_work_q, ptr %45, i32 0, i32 1, !dbg !1304
  %47 = call ptr @sys_slist_get(ptr noundef %46), !dbg !1305
  store ptr %47, ptr %24, align 4, !dbg !1306
  %48 = load ptr, ptr %24, align 4, !dbg !1307
  %49 = icmp ne ptr %48, null, !dbg !1309
  br i1 %49, label %50, label %63, !dbg !1310

50:                                               ; preds = %35
  %51 = load ptr, ptr %23, align 4, !dbg !1311
  %52 = getelementptr inbounds %struct.k_work_q, ptr %51, i32 0, i32 4, !dbg !1313
  call void @flag_set(ptr noundef %52, i32 noundef 1), !dbg !1314
  %53 = load ptr, ptr %24, align 4, !dbg !1315
  %54 = getelementptr inbounds i8, ptr %53, i32 0, !dbg !1317
  store ptr %54, ptr %29, align 4, !dbg !1318
  %55 = load ptr, ptr %29, align 4, !dbg !1319
  store ptr %55, ptr %25, align 4, !dbg !1320
  %56 = load ptr, ptr %25, align 4, !dbg !1321
  %57 = getelementptr inbounds %struct.k_work, ptr %56, i32 0, i32 3, !dbg !1322
  call void @flag_set(ptr noundef %57, i32 noundef 0), !dbg !1323
  %58 = load ptr, ptr %25, align 4, !dbg !1324
  %59 = getelementptr inbounds %struct.k_work, ptr %58, i32 0, i32 3, !dbg !1325
  call void @flag_clear(ptr noundef %59, i32 noundef 2), !dbg !1326
  %60 = load ptr, ptr %25, align 4, !dbg !1327
  %61 = getelementptr inbounds %struct.k_work, ptr %60, i32 0, i32 1, !dbg !1328
  %62 = load ptr, ptr %61, align 4, !dbg !1328
  store ptr %62, ptr %26, align 4, !dbg !1329
  br label %73, !dbg !1330

63:                                               ; preds = %35
  %64 = load ptr, ptr %23, align 4, !dbg !1331
  %65 = getelementptr inbounds %struct.k_work_q, ptr %64, i32 0, i32 4, !dbg !1333
  %66 = call zeroext i1 @flag_test_and_clear(ptr noundef %65, i32 noundef 2), !dbg !1334
  br i1 %66, label %67, label %71, !dbg !1335

67:                                               ; preds = %63
  %68 = load ptr, ptr %23, align 4, !dbg !1336
  %69 = getelementptr inbounds %struct.k_work_q, ptr %68, i32 0, i32 3, !dbg !1338
  %70 = call zeroext i1 @z_sched_wake_all(ptr noundef %69, i32 noundef 1, ptr noundef null), !dbg !1339
  br label %72, !dbg !1340

71:                                               ; preds = %63
  br label %72

72:                                               ; preds = %71, %67
  br label %73

73:                                               ; preds = %72, %50
  %74 = load ptr, ptr %25, align 4, !dbg !1341
  %75 = icmp eq ptr %74, null, !dbg !1343
  br i1 %75, label %76, label %85, !dbg !1344

76:                                               ; preds = %73
  %77 = load ptr, ptr %23, align 4, !dbg !1345
  %78 = getelementptr inbounds %struct.k_work_q, ptr %77, i32 0, i32 2, !dbg !1347
  %79 = getelementptr inbounds %struct.k_timeout_t, ptr %30, i32 0, i32 0, !dbg !1348
  store i64 -1, ptr %79, align 8, !dbg !1348
  %80 = getelementptr inbounds %struct.z_spinlock_key, ptr %27, i32 0, i32 0, !dbg !1349
  %81 = load [1 x i32], ptr %80, align 4, !dbg !1349
  %82 = getelementptr inbounds %struct.k_timeout_t, ptr %30, i32 0, i32 0, !dbg !1349
  %83 = load [1 x i64], ptr %82, align 8, !dbg !1349
  %84 = call i32 @z_sched_wait(ptr noundef @lock, [1 x i32] %81, ptr noundef %78, [1 x i64] %83, ptr noundef null), !dbg !1349
  br label %35, !dbg !1350, !llvm.loop !1351

85:                                               ; preds = %73
  %86 = getelementptr inbounds %struct.z_spinlock_key, ptr %27, i32 0, i32 0, !dbg !1353
  %87 = load [1 x i32], ptr %86, align 4, !dbg !1353
  store [1 x i32] %87, ptr %12, align 4
  store ptr @lock, ptr %13, align 4
  call void @llvm.dbg.declare(metadata ptr %13, metadata !552, metadata !DIExpression()), !dbg !1354
  call void @llvm.dbg.declare(metadata ptr %12, metadata !558, metadata !DIExpression()), !dbg !1356
  %88 = load ptr, ptr %13, align 4, !dbg !1357
  %89 = load i32, ptr %12, align 4, !dbg !1358
  store i32 %89, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !562, metadata !DIExpression()), !dbg !1359
  %90 = load i32, ptr %5, align 4, !dbg !1361
  %91 = icmp ne i32 %90, 0, !dbg !1362
  br i1 %91, label %92, label %93, !dbg !1363

92:                                               ; preds = %85
  br label %arch_irq_unlock.exit, !dbg !1364

93:                                               ; preds = %85
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #5, !dbg !1365, !srcloc !575
  br label %arch_irq_unlock.exit, !dbg !1366

arch_irq_unlock.exit:                             ; preds = %92, %93
  %94 = load ptr, ptr %26, align 4, !dbg !1367
  %95 = load ptr, ptr %25, align 4, !dbg !1368
  call void %94(ptr noundef %95), !dbg !1367
  store ptr @lock, ptr %19, align 4
  call void @llvm.dbg.declare(metadata ptr %19, metadata !510, metadata !DIExpression()), !dbg !1369
  %96 = load ptr, ptr %19, align 4, !dbg !1371
  call void @llvm.dbg.declare(metadata ptr %18, metadata !518, metadata !DIExpression()), !dbg !1372
  call void @llvm.dbg.declare(metadata ptr %10, metadata !520, metadata !DIExpression()), !dbg !1373
  %97 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #5, !dbg !1375, !srcloc !528
  store i32 %97, ptr %10, align 4, !dbg !1375
  %98 = load i32, ptr %10, align 4, !dbg !1376
  store i32 %98, ptr %18, align 4, !dbg !1377
  %99 = load ptr, ptr %19, align 4, !dbg !1378
  store ptr %99, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !532, metadata !DIExpression()), !dbg !1379
  %100 = load ptr, ptr %8, align 4, !dbg !1381
  %101 = load ptr, ptr %19, align 4, !dbg !1382
  store ptr %101, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !540, metadata !DIExpression()), !dbg !1383
  %102 = load ptr, ptr %6, align 4, !dbg !1385
  %103 = load i32, ptr %18, align 4, !dbg !1386
  %104 = getelementptr inbounds %struct.z_spinlock_key, ptr %31, i32 0, i32 0, !dbg !1387
  store i32 %103, ptr %104, align 4, !dbg !1387
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %27, ptr align 4 %31, i32 4, i1 false), !dbg !1387
  %105 = load ptr, ptr %25, align 4, !dbg !1388
  %106 = getelementptr inbounds %struct.k_work, ptr %105, i32 0, i32 3, !dbg !1389
  call void @flag_clear(ptr noundef %106, i32 noundef 0), !dbg !1390
  %107 = load ptr, ptr %25, align 4, !dbg !1391
  %108 = getelementptr inbounds %struct.k_work, ptr %107, i32 0, i32 3, !dbg !1393
  %109 = call zeroext i1 @flag_test(ptr noundef %108, i32 noundef 1), !dbg !1394
  br i1 %109, label %110, label %112, !dbg !1395

110:                                              ; preds = %arch_irq_unlock.exit
  %111 = load ptr, ptr %25, align 4, !dbg !1396
  call void @finalize_cancel_locked(ptr noundef %111), !dbg !1398
  br label %112, !dbg !1399

112:                                              ; preds = %110, %arch_irq_unlock.exit
  %113 = load ptr, ptr %23, align 4, !dbg !1400
  %114 = getelementptr inbounds %struct.k_work_q, ptr %113, i32 0, i32 4, !dbg !1401
  call void @flag_clear(ptr noundef %114, i32 noundef 1), !dbg !1402
  %115 = load ptr, ptr %23, align 4, !dbg !1403
  %116 = getelementptr inbounds %struct.k_work_q, ptr %115, i32 0, i32 4, !dbg !1404
  %117 = call zeroext i1 @flag_test(ptr noundef %116, i32 noundef 8), !dbg !1405
  %118 = xor i1 %117, true, !dbg !1406
  %119 = zext i1 %118 to i8, !dbg !1407
  store i8 %119, ptr %28, align 1, !dbg !1407
  %120 = getelementptr inbounds %struct.z_spinlock_key, ptr %27, i32 0, i32 0, !dbg !1408
  %121 = load [1 x i32], ptr %120, align 4, !dbg !1408
  store [1 x i32] %121, ptr %14, align 4
  store ptr @lock, ptr %15, align 4
  call void @llvm.dbg.declare(metadata ptr %15, metadata !552, metadata !DIExpression()), !dbg !1409
  call void @llvm.dbg.declare(metadata ptr %14, metadata !558, metadata !DIExpression()), !dbg !1411
  %122 = load ptr, ptr %15, align 4, !dbg !1412
  %123 = load i32, ptr %14, align 4, !dbg !1413
  store i32 %123, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !562, metadata !DIExpression()), !dbg !1414
  %124 = load i32, ptr %4, align 4, !dbg !1416
  %125 = icmp ne i32 %124, 0, !dbg !1417
  br i1 %125, label %126, label %127, !dbg !1418

126:                                              ; preds = %112
  br label %arch_irq_unlock.exit1, !dbg !1419

127:                                              ; preds = %112
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #5, !dbg !1420, !srcloc !575
  br label %arch_irq_unlock.exit1, !dbg !1421

arch_irq_unlock.exit1:                            ; preds = %126, %127
  %128 = load i8, ptr %28, align 1, !dbg !1422
  %129 = trunc i8 %128 to i1, !dbg !1422
  br i1 %129, label %130, label %131, !dbg !1424

130:                                              ; preds = %arch_irq_unlock.exit1
  call void @k_yield(), !dbg !1425
  br label %131, !dbg !1427

131:                                              ; preds = %130, %arch_irq_unlock.exit1
  br label %35, !dbg !1272, !llvm.loop !1351
}

; Function Attrs: noinline nounwind optnone
define internal i32 @k_thread_name_set(ptr noundef %0, ptr noundef %1) #0 !dbg !1428 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1431, metadata !DIExpression()), !dbg !1432
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1433, metadata !DIExpression()), !dbg !1434
  br label %5, !dbg !1435

5:                                                ; preds = %2
  call void asm sideeffect "", "~{memory}"() #5, !dbg !1436, !srcloc !1438
  br label %6, !dbg !1439

6:                                                ; preds = %5
  %7 = load ptr, ptr %3, align 4, !dbg !1440
  %8 = load ptr, ptr %4, align 4, !dbg !1441
  %9 = call i32 @z_impl_k_thread_name_set(ptr noundef %7, ptr noundef %8), !dbg !1442
  ret i32 %9, !dbg !1443
}

; Function Attrs: noinline nounwind optnone
define internal void @k_thread_start(ptr noundef %0) #0 !dbg !1444 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1447, metadata !DIExpression()), !dbg !1448
  br label %3, !dbg !1449

3:                                                ; preds = %1
  call void asm sideeffect "", "~{memory}"() #5, !dbg !1450, !srcloc !1452
  br label %4, !dbg !1453

4:                                                ; preds = %3
  %5 = load ptr, ptr %2, align 4, !dbg !1454
  call void @z_impl_k_thread_start(ptr noundef %5), !dbg !1455
  ret void, !dbg !1456
}

; Function Attrs: noinline nounwind optnone
define hidden i32 @k_work_queue_drain(ptr noundef %0, i1 noundef zeroext %1) #0 !dbg !1457 {
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
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1460, metadata !DIExpression()), !dbg !1461
  %16 = zext i1 %1 to i8
  store i8 %16, ptr %12, align 1
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1462, metadata !DIExpression()), !dbg !1463
  br label %17, !dbg !1464

17:                                               ; preds = %2
  br label %18, !dbg !1465

18:                                               ; preds = %17
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1467, metadata !DIExpression()), !dbg !1468
  store i32 0, ptr %13, align 4, !dbg !1468
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1469, metadata !DIExpression()), !dbg !1470
  store ptr @lock, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !510, metadata !DIExpression()), !dbg !1471
  %19 = load ptr, ptr %10, align 4, !dbg !1473
  call void @llvm.dbg.declare(metadata ptr %9, metadata !518, metadata !DIExpression()), !dbg !1474
  call void @llvm.dbg.declare(metadata ptr %6, metadata !520, metadata !DIExpression()), !dbg !1475
  %20 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #5, !dbg !1477, !srcloc !528
  store i32 %20, ptr %6, align 4, !dbg !1477
  %21 = load i32, ptr %6, align 4, !dbg !1478
  store i32 %21, ptr %9, align 4, !dbg !1479
  %22 = load ptr, ptr %10, align 4, !dbg !1480
  store ptr %22, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !532, metadata !DIExpression()), !dbg !1481
  %23 = load ptr, ptr %5, align 4, !dbg !1483
  %24 = load ptr, ptr %10, align 4, !dbg !1484
  store ptr %24, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !540, metadata !DIExpression()), !dbg !1485
  %25 = load ptr, ptr %4, align 4, !dbg !1487
  %26 = load i32, ptr %9, align 4, !dbg !1488
  %27 = getelementptr inbounds %struct.z_spinlock_key, ptr %14, i32 0, i32 0, !dbg !1489
  store i32 %26, ptr %27, align 4, !dbg !1489
  %28 = load ptr, ptr %11, align 4, !dbg !1490
  %29 = getelementptr inbounds %struct.k_work_q, ptr %28, i32 0, i32 4, !dbg !1492
  %30 = call i32 @flags_get(ptr noundef %29), !dbg !1493
  %31 = and i32 %30, 6, !dbg !1494
  %32 = icmp ne i32 %31, 0, !dbg !1495
  br i1 %32, label %40, label %33, !dbg !1496

33:                                               ; preds = %18
  %34 = load i8, ptr %12, align 1, !dbg !1497
  %35 = trunc i8 %34 to i1, !dbg !1497
  br i1 %35, label %40, label %36, !dbg !1498

36:                                               ; preds = %33
  %37 = load ptr, ptr %11, align 4, !dbg !1499
  %38 = getelementptr inbounds %struct.k_work_q, ptr %37, i32 0, i32 1, !dbg !1500
  %39 = call zeroext i1 @sys_slist_is_empty(ptr noundef %38), !dbg !1501
  br i1 %39, label %59, label %40, !dbg !1502

40:                                               ; preds = %36, %33, %18
  %41 = load ptr, ptr %11, align 4, !dbg !1503
  %42 = getelementptr inbounds %struct.k_work_q, ptr %41, i32 0, i32 4, !dbg !1505
  call void @flag_set(ptr noundef %42, i32 noundef 2), !dbg !1506
  %43 = load i8, ptr %12, align 1, !dbg !1507
  %44 = trunc i8 %43 to i1, !dbg !1507
  br i1 %44, label %45, label %48, !dbg !1509

45:                                               ; preds = %40
  %46 = load ptr, ptr %11, align 4, !dbg !1510
  %47 = getelementptr inbounds %struct.k_work_q, ptr %46, i32 0, i32 4, !dbg !1512
  call void @flag_set(ptr noundef %47, i32 noundef 3), !dbg !1513
  br label %48, !dbg !1514

48:                                               ; preds = %45, %40
  %49 = load ptr, ptr %11, align 4, !dbg !1515
  %50 = call zeroext i1 @notify_queue_locked(ptr noundef %49), !dbg !1516
  %51 = load ptr, ptr %11, align 4, !dbg !1517
  %52 = getelementptr inbounds %struct.k_work_q, ptr %51, i32 0, i32 3, !dbg !1518
  %53 = getelementptr inbounds %struct.k_timeout_t, ptr %15, i32 0, i32 0, !dbg !1519
  store i64 -1, ptr %53, align 8, !dbg !1519
  %54 = getelementptr inbounds %struct.z_spinlock_key, ptr %14, i32 0, i32 0, !dbg !1520
  %55 = load [1 x i32], ptr %54, align 4, !dbg !1520
  %56 = getelementptr inbounds %struct.k_timeout_t, ptr %15, i32 0, i32 0, !dbg !1520
  %57 = load [1 x i64], ptr %56, align 8, !dbg !1520
  %58 = call i32 @z_sched_wait(ptr noundef @lock, [1 x i32] %55, ptr noundef %52, [1 x i64] %57, ptr noundef null), !dbg !1520
  store i32 %58, ptr %13, align 4, !dbg !1521
  br label %68, !dbg !1522

59:                                               ; preds = %36
  %60 = getelementptr inbounds %struct.z_spinlock_key, ptr %14, i32 0, i32 0, !dbg !1523
  %61 = load [1 x i32], ptr %60, align 4, !dbg !1523
  store [1 x i32] %61, ptr %7, align 4
  store ptr @lock, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !552, metadata !DIExpression()), !dbg !1525
  call void @llvm.dbg.declare(metadata ptr %7, metadata !558, metadata !DIExpression()), !dbg !1527
  %62 = load ptr, ptr %8, align 4, !dbg !1528
  %63 = load i32, ptr %7, align 4, !dbg !1529
  store i32 %63, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !562, metadata !DIExpression()), !dbg !1530
  %64 = load i32, ptr %3, align 4, !dbg !1532
  %65 = icmp ne i32 %64, 0, !dbg !1533
  br i1 %65, label %66, label %67, !dbg !1534

66:                                               ; preds = %59
  br label %arch_irq_unlock.exit, !dbg !1535

67:                                               ; preds = %59
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #5, !dbg !1536, !srcloc !575
  br label %arch_irq_unlock.exit, !dbg !1537

arch_irq_unlock.exit:                             ; preds = %66, %67
  br label %68

68:                                               ; preds = %arch_irq_unlock.exit, %48
  br label %69, !dbg !1538

69:                                               ; preds = %68
  br label %70, !dbg !1539

70:                                               ; preds = %69
  %71 = load i32, ptr %13, align 4, !dbg !1541
  ret i32 %71, !dbg !1542
}

; Function Attrs: noinline nounwind optnone
define internal i32 @flags_get(ptr noundef %0) #0 !dbg !1543 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1548, metadata !DIExpression()), !dbg !1549
  %3 = load ptr, ptr %2, align 4, !dbg !1550
  %4 = load i32, ptr %3, align 4, !dbg !1551
  ret i32 %4, !dbg !1552
}

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @sys_slist_is_empty(ptr noundef %0) #0 !dbg !1553 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1556, metadata !DIExpression()), !dbg !1557
  %3 = load ptr, ptr %2, align 4, !dbg !1558
  %4 = call ptr @sys_slist_peek_head(ptr noundef %3), !dbg !1559
  %5 = icmp eq ptr %4, null, !dbg !1560
  ret i1 %5, !dbg !1561
}

; Function Attrs: noinline nounwind optnone
define internal void @flag_set(ptr noundef %0, i32 noundef %1) #0 !dbg !1562 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1563, metadata !DIExpression()), !dbg !1564
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1565, metadata !DIExpression()), !dbg !1566
  %5 = load i32, ptr %4, align 4, !dbg !1567
  %6 = shl i32 1, %5, !dbg !1568
  %7 = load ptr, ptr %3, align 4, !dbg !1569
  %8 = load i32, ptr %7, align 4, !dbg !1570
  %9 = or i32 %8, %6, !dbg !1570
  store i32 %9, ptr %7, align 4, !dbg !1570
  ret void, !dbg !1571
}

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @notify_queue_locked(ptr noundef %0) #0 !dbg !1572 {
  %2 = alloca ptr, align 4
  %3 = alloca i8, align 1
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1575, metadata !DIExpression()), !dbg !1576
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1577, metadata !DIExpression()), !dbg !1578
  store i8 0, ptr %3, align 1, !dbg !1578
  %4 = load ptr, ptr %2, align 4, !dbg !1579
  %5 = icmp ne ptr %4, null, !dbg !1581
  br i1 %5, label %6, label %11, !dbg !1582

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 4, !dbg !1583
  %8 = getelementptr inbounds %struct.k_work_q, ptr %7, i32 0, i32 2, !dbg !1585
  %9 = call zeroext i1 @z_sched_wake(ptr noundef %8, i32 noundef 0, ptr noundef null), !dbg !1586
  %10 = zext i1 %9 to i8, !dbg !1587
  store i8 %10, ptr %3, align 1, !dbg !1587
  br label %11, !dbg !1588

11:                                               ; preds = %6, %1
  %12 = load i8, ptr %3, align 1, !dbg !1589
  %13 = trunc i8 %12 to i1, !dbg !1589
  ret i1 %13, !dbg !1590
}

declare i32 @z_sched_wait(ptr noundef, [1 x i32], ptr noundef, [1 x i64], ptr noundef) #4

; Function Attrs: noinline nounwind optnone
define hidden i32 @k_work_queue_unplug(ptr noundef %0) #0 !dbg !1591 {
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
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1594, metadata !DIExpression()), !dbg !1595
  br label %13, !dbg !1596

13:                                               ; preds = %1
  br label %14, !dbg !1597

14:                                               ; preds = %13
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1599, metadata !DIExpression()), !dbg !1600
  store i32 -120, ptr %11, align 4, !dbg !1600
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1601, metadata !DIExpression()), !dbg !1602
  store ptr @lock, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !510, metadata !DIExpression()), !dbg !1603
  %15 = load ptr, ptr %9, align 4, !dbg !1605
  call void @llvm.dbg.declare(metadata ptr %8, metadata !518, metadata !DIExpression()), !dbg !1606
  call void @llvm.dbg.declare(metadata ptr %5, metadata !520, metadata !DIExpression()), !dbg !1607
  %16 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #5, !dbg !1609, !srcloc !528
  store i32 %16, ptr %5, align 4, !dbg !1609
  %17 = load i32, ptr %5, align 4, !dbg !1610
  store i32 %17, ptr %8, align 4, !dbg !1611
  %18 = load ptr, ptr %9, align 4, !dbg !1612
  store ptr %18, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !532, metadata !DIExpression()), !dbg !1613
  %19 = load ptr, ptr %4, align 4, !dbg !1615
  %20 = load ptr, ptr %9, align 4, !dbg !1616
  store ptr %20, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !540, metadata !DIExpression()), !dbg !1617
  %21 = load ptr, ptr %3, align 4, !dbg !1619
  %22 = load i32, ptr %8, align 4, !dbg !1620
  %23 = getelementptr inbounds %struct.z_spinlock_key, ptr %12, i32 0, i32 0, !dbg !1621
  store i32 %22, ptr %23, align 4, !dbg !1621
  %24 = load ptr, ptr %10, align 4, !dbg !1622
  %25 = getelementptr inbounds %struct.k_work_q, ptr %24, i32 0, i32 4, !dbg !1624
  %26 = call zeroext i1 @flag_test_and_clear(ptr noundef %25, i32 noundef 3), !dbg !1625
  br i1 %26, label %27, label %28, !dbg !1626

27:                                               ; preds = %14
  store i32 0, ptr %11, align 4, !dbg !1627
  br label %28, !dbg !1629

28:                                               ; preds = %27, %14
  %29 = getelementptr inbounds %struct.z_spinlock_key, ptr %12, i32 0, i32 0, !dbg !1630
  %30 = load [1 x i32], ptr %29, align 4, !dbg !1630
  store [1 x i32] %30, ptr %6, align 4
  store ptr @lock, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !552, metadata !DIExpression()), !dbg !1631
  call void @llvm.dbg.declare(metadata ptr %6, metadata !558, metadata !DIExpression()), !dbg !1633
  %31 = load ptr, ptr %7, align 4, !dbg !1634
  %32 = load i32, ptr %6, align 4, !dbg !1635
  store i32 %32, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !562, metadata !DIExpression()), !dbg !1636
  %33 = load i32, ptr %2, align 4, !dbg !1638
  %34 = icmp ne i32 %33, 0, !dbg !1639
  br i1 %34, label %35, label %36, !dbg !1640

35:                                               ; preds = %28
  br label %arch_irq_unlock.exit, !dbg !1641

36:                                               ; preds = %28
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #5, !dbg !1642, !srcloc !575
  br label %arch_irq_unlock.exit, !dbg !1643

arch_irq_unlock.exit:                             ; preds = %35, %36
  br label %37, !dbg !1644

37:                                               ; preds = %arch_irq_unlock.exit
  br label %38, !dbg !1645

38:                                               ; preds = %37
  %39 = load i32, ptr %11, align 4, !dbg !1647
  ret i32 %39, !dbg !1648
}

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @flag_test_and_clear(ptr noundef %0, i32 noundef %1) #0 !dbg !1649 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1652, metadata !DIExpression()), !dbg !1653
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1654, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1656, metadata !DIExpression()), !dbg !1657
  %6 = load ptr, ptr %3, align 4, !dbg !1658
  %7 = load i32, ptr %4, align 4, !dbg !1659
  %8 = call zeroext i1 @flag_test(ptr noundef %6, i32 noundef %7), !dbg !1660
  %9 = zext i1 %8 to i8, !dbg !1657
  store i8 %9, ptr %5, align 1, !dbg !1657
  %10 = load ptr, ptr %3, align 4, !dbg !1661
  %11 = load i32, ptr %4, align 4, !dbg !1662
  call void @flag_clear(ptr noundef %10, i32 noundef %11), !dbg !1663
  %12 = load i8, ptr %5, align 1, !dbg !1664
  %13 = trunc i8 %12 to i1, !dbg !1664
  ret i1 %13, !dbg !1665
}

; Function Attrs: noinline nounwind optnone
define hidden void @k_work_init_delayable(ptr noundef %0, ptr noundef %1) #0 !dbg !1666 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca %struct.k_work_delayable, align 8
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1669, metadata !DIExpression()), !dbg !1670
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1671, metadata !DIExpression()), !dbg !1672
  %6 = load ptr, ptr %3, align 4, !dbg !1673
  call void @llvm.memset.p0.i64(ptr align 8 %5, i8 0, i64 48, i1 false), !dbg !1674
  %7 = getelementptr inbounds %struct.k_work_delayable, ptr %5, i32 0, i32 0, !dbg !1675
  %8 = getelementptr inbounds %struct.k_work, ptr %7, i32 0, i32 1, !dbg !1676
  %9 = load ptr, ptr %4, align 4, !dbg !1677
  store ptr %9, ptr %8, align 4, !dbg !1676
  %10 = getelementptr inbounds %struct.k_work, ptr %7, i32 0, i32 3, !dbg !1676
  store i32 256, ptr %10, align 4, !dbg !1676
  call void @llvm.memcpy.p0.p0.i32(ptr align 8 %6, ptr align 8 %5, i32 48, i1 false), !dbg !1674
  %11 = load ptr, ptr %3, align 4, !dbg !1678
  %12 = getelementptr inbounds %struct.k_work_delayable, ptr %11, i32 0, i32 1, !dbg !1679
  call void @z_init_timeout(ptr noundef %12), !dbg !1680
  br label %13, !dbg !1681

13:                                               ; preds = %2
  br label %14, !dbg !1682

14:                                               ; preds = %13
  ret void, !dbg !1684
}

; Function Attrs: noinline nounwind optnone
define internal void @z_init_timeout(ptr noundef %0) #0 !dbg !1685 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1687, metadata !DIExpression()), !dbg !1688
  %3 = load ptr, ptr %2, align 4, !dbg !1689
  %4 = getelementptr inbounds %struct._timeout, ptr %3, i32 0, i32 0, !dbg !1690
  call void @sys_dnode_init(ptr noundef %4), !dbg !1691
  ret void, !dbg !1692
}

; Function Attrs: noinline nounwind optnone
define hidden i32 @k_work_delayable_busy_get(ptr noundef %0) #0 !dbg !1693 {
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
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1698, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1700, metadata !DIExpression()), !dbg !1701
  store ptr @lock, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !510, metadata !DIExpression()), !dbg !1702
  %13 = load ptr, ptr %9, align 4, !dbg !1704
  call void @llvm.dbg.declare(metadata ptr %8, metadata !518, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.declare(metadata ptr %5, metadata !520, metadata !DIExpression()), !dbg !1706
  %14 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #5, !dbg !1708, !srcloc !528
  store i32 %14, ptr %5, align 4, !dbg !1708
  %15 = load i32, ptr %5, align 4, !dbg !1709
  store i32 %15, ptr %8, align 4, !dbg !1710
  %16 = load ptr, ptr %9, align 4, !dbg !1711
  store ptr %16, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !532, metadata !DIExpression()), !dbg !1712
  %17 = load ptr, ptr %4, align 4, !dbg !1714
  %18 = load ptr, ptr %9, align 4, !dbg !1715
  store ptr %18, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !540, metadata !DIExpression()), !dbg !1716
  %19 = load ptr, ptr %3, align 4, !dbg !1718
  %20 = load i32, ptr %8, align 4, !dbg !1719
  %21 = getelementptr inbounds %struct.z_spinlock_key, ptr %11, i32 0, i32 0, !dbg !1720
  store i32 %20, ptr %21, align 4, !dbg !1720
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1721, metadata !DIExpression()), !dbg !1722
  %22 = load ptr, ptr %10, align 4, !dbg !1723
  %23 = call i32 @work_delayable_busy_get_locked(ptr noundef %22), !dbg !1724
  store i32 %23, ptr %12, align 4, !dbg !1722
  %24 = getelementptr inbounds %struct.z_spinlock_key, ptr %11, i32 0, i32 0, !dbg !1725
  %25 = load [1 x i32], ptr %24, align 4, !dbg !1725
  store [1 x i32] %25, ptr %6, align 4
  store ptr @lock, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !552, metadata !DIExpression()), !dbg !1726
  call void @llvm.dbg.declare(metadata ptr %6, metadata !558, metadata !DIExpression()), !dbg !1728
  %26 = load ptr, ptr %7, align 4, !dbg !1729
  %27 = load i32, ptr %6, align 4, !dbg !1730
  store i32 %27, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !562, metadata !DIExpression()), !dbg !1731
  %28 = load i32, ptr %2, align 4, !dbg !1733
  %29 = icmp ne i32 %28, 0, !dbg !1734
  br i1 %29, label %30, label %31, !dbg !1735

30:                                               ; preds = %1
  br label %arch_irq_unlock.exit, !dbg !1736

31:                                               ; preds = %1
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #5, !dbg !1737, !srcloc !575
  br label %arch_irq_unlock.exit, !dbg !1738

arch_irq_unlock.exit:                             ; preds = %30, %31
  %32 = load i32, ptr %12, align 4, !dbg !1739
  ret i32 %32, !dbg !1740
}

; Function Attrs: noinline nounwind optnone
define internal i32 @work_delayable_busy_get_locked(ptr noundef %0) #0 !dbg !1741 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1742, metadata !DIExpression()), !dbg !1743
  %3 = load ptr, ptr %2, align 4, !dbg !1744
  %4 = getelementptr inbounds %struct.k_work_delayable, ptr %3, i32 0, i32 0, !dbg !1745
  %5 = getelementptr inbounds %struct.k_work, ptr %4, i32 0, i32 3, !dbg !1746
  %6 = call i32 @flags_get(ptr noundef %5), !dbg !1747
  %7 = and i32 %6, 15, !dbg !1748
  ret i32 %7, !dbg !1749
}

; Function Attrs: noinline nounwind optnone
define hidden i32 @k_work_schedule_for_queue(ptr noundef %0, ptr noundef %1, [1 x i64] %2) #0 !dbg !1750 {
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
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1753, metadata !DIExpression()), !dbg !1754
  store ptr %1, ptr %14, align 4
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1755, metadata !DIExpression()), !dbg !1756
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1757, metadata !DIExpression()), !dbg !1758
  br label %19, !dbg !1759

19:                                               ; preds = %3
  br label %20, !dbg !1760

20:                                               ; preds = %19
  call void @llvm.dbg.declare(metadata ptr %15, metadata !1762, metadata !DIExpression()), !dbg !1763
  %21 = load ptr, ptr %14, align 4, !dbg !1764
  %22 = getelementptr inbounds %struct.k_work_delayable, ptr %21, i32 0, i32 0, !dbg !1765
  store ptr %22, ptr %15, align 4, !dbg !1763
  call void @llvm.dbg.declare(metadata ptr %16, metadata !1766, metadata !DIExpression()), !dbg !1767
  store i32 0, ptr %16, align 4, !dbg !1767
  call void @llvm.dbg.declare(metadata ptr %17, metadata !1768, metadata !DIExpression()), !dbg !1769
  store ptr @lock, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !510, metadata !DIExpression()), !dbg !1770
  %23 = load ptr, ptr %11, align 4, !dbg !1772
  call void @llvm.dbg.declare(metadata ptr %10, metadata !518, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.declare(metadata ptr %7, metadata !520, metadata !DIExpression()), !dbg !1774
  %24 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #5, !dbg !1776, !srcloc !528
  store i32 %24, ptr %7, align 4, !dbg !1776
  %25 = load i32, ptr %7, align 4, !dbg !1777
  store i32 %25, ptr %10, align 4, !dbg !1778
  %26 = load ptr, ptr %11, align 4, !dbg !1779
  store ptr %26, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !532, metadata !DIExpression()), !dbg !1780
  %27 = load ptr, ptr %6, align 4, !dbg !1782
  %28 = load ptr, ptr %11, align 4, !dbg !1783
  store ptr %28, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !540, metadata !DIExpression()), !dbg !1784
  %29 = load ptr, ptr %5, align 4, !dbg !1786
  %30 = load i32, ptr %10, align 4, !dbg !1787
  %31 = getelementptr inbounds %struct.z_spinlock_key, ptr %17, i32 0, i32 0, !dbg !1788
  store i32 %30, ptr %31, align 4, !dbg !1788
  %32 = load ptr, ptr %15, align 4, !dbg !1789
  %33 = call i32 @work_busy_get_locked(ptr noundef %32), !dbg !1791
  %34 = and i32 %33, -2, !dbg !1792
  %35 = icmp eq i32 %34, 0, !dbg !1793
  br i1 %35, label %36, label %41, !dbg !1794

36:                                               ; preds = %20
  %37 = load ptr, ptr %14, align 4, !dbg !1795
  %38 = getelementptr inbounds %struct.k_timeout_t, ptr %12, i32 0, i32 0, !dbg !1797
  %39 = load [1 x i64], ptr %38, align 8, !dbg !1797
  %40 = call i32 @schedule_for_queue_locked(ptr noundef %13, ptr noundef %37, [1 x i64] %39), !dbg !1797
  store i32 %40, ptr %16, align 4, !dbg !1798
  br label %41, !dbg !1799

41:                                               ; preds = %36, %20
  %42 = getelementptr inbounds %struct.z_spinlock_key, ptr %17, i32 0, i32 0, !dbg !1800
  %43 = load [1 x i32], ptr %42, align 4, !dbg !1800
  store [1 x i32] %43, ptr %8, align 4
  store ptr @lock, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !552, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.declare(metadata ptr %8, metadata !558, metadata !DIExpression()), !dbg !1803
  %44 = load ptr, ptr %9, align 4, !dbg !1804
  %45 = load i32, ptr %8, align 4, !dbg !1805
  store i32 %45, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !562, metadata !DIExpression()), !dbg !1806
  %46 = load i32, ptr %4, align 4, !dbg !1808
  %47 = icmp ne i32 %46, 0, !dbg !1809
  br i1 %47, label %48, label %49, !dbg !1810

48:                                               ; preds = %41
  br label %arch_irq_unlock.exit, !dbg !1811

49:                                               ; preds = %41
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #5, !dbg !1812, !srcloc !575
  br label %arch_irq_unlock.exit, !dbg !1813

arch_irq_unlock.exit:                             ; preds = %48, %49
  br label %50, !dbg !1814

50:                                               ; preds = %arch_irq_unlock.exit
  br label %51, !dbg !1815

51:                                               ; preds = %50
  %52 = load i32, ptr %16, align 4, !dbg !1817
  ret i32 %52, !dbg !1818
}

; Function Attrs: noinline nounwind optnone
define internal i32 @schedule_for_queue_locked(ptr noundef %0, ptr noundef %1, [1 x i64] %2) #0 !dbg !1819 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.k_timeout_t, align 8
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 4
  %10 = alloca %struct.k_timeout_t, align 8
  %11 = getelementptr inbounds %struct.k_timeout_t, ptr %5, i32 0, i32 0
  store [1 x i64] %2, ptr %11, align 8
  store ptr %0, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1822, metadata !DIExpression()), !dbg !1823
  store ptr %1, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1824, metadata !DIExpression()), !dbg !1825
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1826, metadata !DIExpression()), !dbg !1827
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1828, metadata !DIExpression()), !dbg !1829
  store i32 1, ptr %8, align 4, !dbg !1829
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1830, metadata !DIExpression()), !dbg !1831
  %12 = load ptr, ptr %7, align 4, !dbg !1832
  %13 = getelementptr inbounds %struct.k_work_delayable, ptr %12, i32 0, i32 0, !dbg !1833
  store ptr %13, ptr %9, align 4, !dbg !1831
  %14 = getelementptr inbounds %struct.k_timeout_t, ptr %5, i32 0, i32 0, !dbg !1834
  %15 = load i64, ptr %14, align 8, !dbg !1834
  %16 = getelementptr inbounds %struct.k_timeout_t, ptr %10, i32 0, i32 0, !dbg !1836
  store i64 0, ptr %16, align 8, !dbg !1836
  %17 = icmp eq i64 %15, 0, !dbg !1837
  br i1 %17, label %18, label %22, !dbg !1838

18:                                               ; preds = %3
  %19 = load ptr, ptr %9, align 4, !dbg !1839
  %20 = load ptr, ptr %6, align 4, !dbg !1841
  %21 = call i32 @submit_to_queue_locked(ptr noundef %19, ptr noundef %20), !dbg !1842
  store i32 %21, ptr %4, align 4, !dbg !1843
  br label %34, !dbg !1843

22:                                               ; preds = %3
  %23 = load ptr, ptr %9, align 4, !dbg !1844
  %24 = getelementptr inbounds %struct.k_work, ptr %23, i32 0, i32 3, !dbg !1845
  call void @flag_set(ptr noundef %24, i32 noundef 3), !dbg !1846
  %25 = load ptr, ptr %6, align 4, !dbg !1847
  %26 = load ptr, ptr %25, align 4, !dbg !1848
  %27 = load ptr, ptr %7, align 4, !dbg !1849
  %28 = getelementptr inbounds %struct.k_work_delayable, ptr %27, i32 0, i32 2, !dbg !1850
  store ptr %26, ptr %28, align 8, !dbg !1851
  %29 = load ptr, ptr %7, align 4, !dbg !1852
  %30 = getelementptr inbounds %struct.k_work_delayable, ptr %29, i32 0, i32 1, !dbg !1853
  %31 = getelementptr inbounds %struct.k_timeout_t, ptr %5, i32 0, i32 0, !dbg !1854
  %32 = load [1 x i64], ptr %31, align 8, !dbg !1854
  call void @z_add_timeout(ptr noundef %30, ptr noundef @work_timeout, [1 x i64] %32), !dbg !1854
  %33 = load i32, ptr %8, align 4, !dbg !1855
  store i32 %33, ptr %4, align 4, !dbg !1856
  br label %34, !dbg !1856

34:                                               ; preds = %22, %18
  %35 = load i32, ptr %4, align 4, !dbg !1857
  ret i32 %35, !dbg !1857
}

; Function Attrs: noinline nounwind optnone
define hidden i32 @k_work_schedule(ptr noundef %0, [1 x i64] %1) #0 !dbg !1858 {
  %3 = alloca %struct.k_timeout_t, align 8
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.k_timeout_t, ptr %3, i32 0, i32 0
  store [1 x i64] %1, ptr %6, align 8
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1861, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1863, metadata !DIExpression()), !dbg !1864
  br label %7, !dbg !1865

7:                                                ; preds = %2
  br label %8, !dbg !1866

8:                                                ; preds = %7
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1868, metadata !DIExpression()), !dbg !1869
  %9 = load ptr, ptr %4, align 4, !dbg !1870
  %10 = getelementptr inbounds %struct.k_timeout_t, ptr %3, i32 0, i32 0, !dbg !1871
  %11 = load [1 x i64], ptr %10, align 8, !dbg !1871
  %12 = call i32 @k_work_schedule_for_queue(ptr noundef @k_sys_work_q, ptr noundef %9, [1 x i64] %11), !dbg !1871
  store i32 %12, ptr %5, align 4, !dbg !1869
  br label %13, !dbg !1872

13:                                               ; preds = %8
  br label %14, !dbg !1873

14:                                               ; preds = %13
  %15 = load i32, ptr %5, align 4, !dbg !1875
  ret i32 %15, !dbg !1876
}

; Function Attrs: noinline nounwind optnone
define hidden i32 @k_work_reschedule_for_queue(ptr noundef %0, ptr noundef %1, [1 x i64] %2) #0 !dbg !1877 {
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
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1878, metadata !DIExpression()), !dbg !1879
  store ptr %1, ptr %14, align 4
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1880, metadata !DIExpression()), !dbg !1881
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1882, metadata !DIExpression()), !dbg !1883
  br label %18, !dbg !1884

18:                                               ; preds = %3
  br label %19, !dbg !1885

19:                                               ; preds = %18
  call void @llvm.dbg.declare(metadata ptr %15, metadata !1887, metadata !DIExpression()), !dbg !1888
  store i32 0, ptr %15, align 4, !dbg !1888
  call void @llvm.dbg.declare(metadata ptr %16, metadata !1889, metadata !DIExpression()), !dbg !1890
  store ptr @lock, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !510, metadata !DIExpression()), !dbg !1891
  %20 = load ptr, ptr %11, align 4, !dbg !1893
  call void @llvm.dbg.declare(metadata ptr %10, metadata !518, metadata !DIExpression()), !dbg !1894
  call void @llvm.dbg.declare(metadata ptr %7, metadata !520, metadata !DIExpression()), !dbg !1895
  %21 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #5, !dbg !1897, !srcloc !528
  store i32 %21, ptr %7, align 4, !dbg !1897
  %22 = load i32, ptr %7, align 4, !dbg !1898
  store i32 %22, ptr %10, align 4, !dbg !1899
  %23 = load ptr, ptr %11, align 4, !dbg !1900
  store ptr %23, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !532, metadata !DIExpression()), !dbg !1901
  %24 = load ptr, ptr %6, align 4, !dbg !1903
  %25 = load ptr, ptr %11, align 4, !dbg !1904
  store ptr %25, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !540, metadata !DIExpression()), !dbg !1905
  %26 = load ptr, ptr %5, align 4, !dbg !1907
  %27 = load i32, ptr %10, align 4, !dbg !1908
  %28 = getelementptr inbounds %struct.z_spinlock_key, ptr %16, i32 0, i32 0, !dbg !1909
  store i32 %27, ptr %28, align 4, !dbg !1909
  %29 = load ptr, ptr %14, align 4, !dbg !1910
  %30 = call zeroext i1 @unschedule_locked(ptr noundef %29), !dbg !1911
  %31 = load ptr, ptr %14, align 4, !dbg !1912
  %32 = getelementptr inbounds %struct.k_timeout_t, ptr %12, i32 0, i32 0, !dbg !1913
  %33 = load [1 x i64], ptr %32, align 8, !dbg !1913
  %34 = call i32 @schedule_for_queue_locked(ptr noundef %13, ptr noundef %31, [1 x i64] %33), !dbg !1913
  store i32 %34, ptr %15, align 4, !dbg !1914
  %35 = getelementptr inbounds %struct.z_spinlock_key, ptr %16, i32 0, i32 0, !dbg !1915
  %36 = load [1 x i32], ptr %35, align 4, !dbg !1915
  store [1 x i32] %36, ptr %8, align 4
  store ptr @lock, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !552, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.declare(metadata ptr %8, metadata !558, metadata !DIExpression()), !dbg !1918
  %37 = load ptr, ptr %9, align 4, !dbg !1919
  %38 = load i32, ptr %8, align 4, !dbg !1920
  store i32 %38, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !562, metadata !DIExpression()), !dbg !1921
  %39 = load i32, ptr %4, align 4, !dbg !1923
  %40 = icmp ne i32 %39, 0, !dbg !1924
  br i1 %40, label %41, label %42, !dbg !1925

41:                                               ; preds = %19
  br label %arch_irq_unlock.exit, !dbg !1926

42:                                               ; preds = %19
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #5, !dbg !1927, !srcloc !575
  br label %arch_irq_unlock.exit, !dbg !1928

arch_irq_unlock.exit:                             ; preds = %41, %42
  br label %43, !dbg !1929

43:                                               ; preds = %arch_irq_unlock.exit
  br label %44, !dbg !1930

44:                                               ; preds = %43
  %45 = load i32, ptr %15, align 4, !dbg !1932
  ret i32 %45, !dbg !1933
}

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @unschedule_locked(ptr noundef %0) #0 !dbg !1934 {
  %2 = alloca ptr, align 4
  %3 = alloca i8, align 1
  %4 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1937, metadata !DIExpression()), !dbg !1938
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1939, metadata !DIExpression()), !dbg !1940
  store i8 0, ptr %3, align 1, !dbg !1940
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1941, metadata !DIExpression()), !dbg !1942
  %5 = load ptr, ptr %2, align 4, !dbg !1943
  %6 = getelementptr inbounds %struct.k_work_delayable, ptr %5, i32 0, i32 0, !dbg !1944
  store ptr %6, ptr %4, align 4, !dbg !1942
  %7 = load ptr, ptr %4, align 4, !dbg !1945
  %8 = getelementptr inbounds %struct.k_work, ptr %7, i32 0, i32 3, !dbg !1947
  %9 = call zeroext i1 @flag_test_and_clear(ptr noundef %8, i32 noundef 3), !dbg !1948
  br i1 %9, label %10, label %16, !dbg !1949

10:                                               ; preds = %1
  %11 = load ptr, ptr %2, align 4, !dbg !1950
  %12 = getelementptr inbounds %struct.k_work_delayable, ptr %11, i32 0, i32 1, !dbg !1952
  %13 = call i32 @z_abort_timeout(ptr noundef %12), !dbg !1953
  %14 = icmp eq i32 %13, 0, !dbg !1954
  %15 = zext i1 %14 to i8, !dbg !1955
  store i8 %15, ptr %3, align 1, !dbg !1955
  br label %16, !dbg !1956

16:                                               ; preds = %10, %1
  %17 = load i8, ptr %3, align 1, !dbg !1957
  %18 = trunc i8 %17 to i1, !dbg !1957
  ret i1 %18, !dbg !1958
}

; Function Attrs: noinline nounwind optnone
define hidden i32 @k_work_reschedule(ptr noundef %0, [1 x i64] %1) #0 !dbg !1959 {
  %3 = alloca %struct.k_timeout_t, align 8
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.k_timeout_t, ptr %3, i32 0, i32 0
  store [1 x i64] %1, ptr %6, align 8
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1960, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1962, metadata !DIExpression()), !dbg !1963
  br label %7, !dbg !1964

7:                                                ; preds = %2
  br label %8, !dbg !1965

8:                                                ; preds = %7
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1967, metadata !DIExpression()), !dbg !1968
  %9 = load ptr, ptr %4, align 4, !dbg !1969
  %10 = getelementptr inbounds %struct.k_timeout_t, ptr %3, i32 0, i32 0, !dbg !1970
  %11 = load [1 x i64], ptr %10, align 8, !dbg !1970
  %12 = call i32 @k_work_reschedule_for_queue(ptr noundef @k_sys_work_q, ptr noundef %9, [1 x i64] %11), !dbg !1970
  store i32 %12, ptr %5, align 4, !dbg !1968
  br label %13, !dbg !1971

13:                                               ; preds = %8
  br label %14, !dbg !1972

14:                                               ; preds = %13
  %15 = load i32, ptr %5, align 4, !dbg !1974
  ret i32 %15, !dbg !1975
}

; Function Attrs: noinline nounwind optnone
define hidden i32 @k_work_cancel_delayable(ptr noundef %0) #0 !dbg !1976 {
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
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1979, metadata !DIExpression()), !dbg !1980
  br label %13, !dbg !1981

13:                                               ; preds = %1
  br label %14, !dbg !1982

14:                                               ; preds = %13
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1984, metadata !DIExpression()), !dbg !1985
  store ptr @lock, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !510, metadata !DIExpression()), !dbg !1986
  %15 = load ptr, ptr %9, align 4, !dbg !1988
  call void @llvm.dbg.declare(metadata ptr %8, metadata !518, metadata !DIExpression()), !dbg !1989
  call void @llvm.dbg.declare(metadata ptr %5, metadata !520, metadata !DIExpression()), !dbg !1990
  %16 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #5, !dbg !1992, !srcloc !528
  store i32 %16, ptr %5, align 4, !dbg !1992
  %17 = load i32, ptr %5, align 4, !dbg !1993
  store i32 %17, ptr %8, align 4, !dbg !1994
  %18 = load ptr, ptr %9, align 4, !dbg !1995
  store ptr %18, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !532, metadata !DIExpression()), !dbg !1996
  %19 = load ptr, ptr %4, align 4, !dbg !1998
  %20 = load ptr, ptr %9, align 4, !dbg !1999
  store ptr %20, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !540, metadata !DIExpression()), !dbg !2000
  %21 = load ptr, ptr %3, align 4, !dbg !2002
  %22 = load i32, ptr %8, align 4, !dbg !2003
  %23 = getelementptr inbounds %struct.z_spinlock_key, ptr %11, i32 0, i32 0, !dbg !2004
  store i32 %22, ptr %23, align 4, !dbg !2004
  call void @llvm.dbg.declare(metadata ptr %12, metadata !2005, metadata !DIExpression()), !dbg !2006
  %24 = load ptr, ptr %10, align 4, !dbg !2007
  %25 = call i32 @cancel_delayable_async_locked(ptr noundef %24), !dbg !2008
  store i32 %25, ptr %12, align 4, !dbg !2006
  %26 = getelementptr inbounds %struct.z_spinlock_key, ptr %11, i32 0, i32 0, !dbg !2009
  %27 = load [1 x i32], ptr %26, align 4, !dbg !2009
  store [1 x i32] %27, ptr %6, align 4
  store ptr @lock, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !552, metadata !DIExpression()), !dbg !2010
  call void @llvm.dbg.declare(metadata ptr %6, metadata !558, metadata !DIExpression()), !dbg !2012
  %28 = load ptr, ptr %7, align 4, !dbg !2013
  %29 = load i32, ptr %6, align 4, !dbg !2014
  store i32 %29, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !562, metadata !DIExpression()), !dbg !2015
  %30 = load i32, ptr %2, align 4, !dbg !2017
  %31 = icmp ne i32 %30, 0, !dbg !2018
  br i1 %31, label %32, label %33, !dbg !2019

32:                                               ; preds = %14
  br label %arch_irq_unlock.exit, !dbg !2020

33:                                               ; preds = %14
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #5, !dbg !2021, !srcloc !575
  br label %arch_irq_unlock.exit, !dbg !2022

arch_irq_unlock.exit:                             ; preds = %32, %33
  br label %34, !dbg !2023

34:                                               ; preds = %arch_irq_unlock.exit
  br label %35, !dbg !2024

35:                                               ; preds = %34
  %36 = load i32, ptr %12, align 4, !dbg !2026
  ret i32 %36, !dbg !2027
}

; Function Attrs: noinline nounwind optnone
define internal i32 @cancel_delayable_async_locked(ptr noundef %0) #0 !dbg !2028 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2029, metadata !DIExpression()), !dbg !2030
  %3 = load ptr, ptr %2, align 4, !dbg !2031
  %4 = call zeroext i1 @unschedule_locked(ptr noundef %3), !dbg !2032
  %5 = load ptr, ptr %2, align 4, !dbg !2033
  %6 = getelementptr inbounds %struct.k_work_delayable, ptr %5, i32 0, i32 0, !dbg !2034
  %7 = call i32 @cancel_async_locked(ptr noundef %6), !dbg !2035
  ret i32 %7, !dbg !2036
}

; Function Attrs: noinline nounwind optnone
define hidden zeroext i1 @k_work_cancel_delayable_sync(ptr noundef %0, ptr noundef %1) #0 !dbg !2037 {
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
  call void @llvm.dbg.declare(metadata ptr %11, metadata !2040, metadata !DIExpression()), !dbg !2041
  store ptr %1, ptr %12, align 4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !2042, metadata !DIExpression()), !dbg !2043
  br label %18, !dbg !2044

18:                                               ; preds = %2
  br label %19, !dbg !2045

19:                                               ; preds = %18
  call void @llvm.dbg.declare(metadata ptr %13, metadata !2047, metadata !DIExpression()), !dbg !2048
  %20 = load ptr, ptr %12, align 4, !dbg !2049
  %21 = getelementptr inbounds %struct.k_work_sync, ptr %20, i32 0, i32 0, !dbg !2050
  store ptr %21, ptr %13, align 4, !dbg !2048
  call void @llvm.dbg.declare(metadata ptr %14, metadata !2051, metadata !DIExpression()), !dbg !2052
  store ptr @lock, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !510, metadata !DIExpression()), !dbg !2053
  %22 = load ptr, ptr %10, align 4, !dbg !2055
  call void @llvm.dbg.declare(metadata ptr %9, metadata !518, metadata !DIExpression()), !dbg !2056
  call void @llvm.dbg.declare(metadata ptr %6, metadata !520, metadata !DIExpression()), !dbg !2057
  %23 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #5, !dbg !2059, !srcloc !528
  store i32 %23, ptr %6, align 4, !dbg !2059
  %24 = load i32, ptr %6, align 4, !dbg !2060
  store i32 %24, ptr %9, align 4, !dbg !2061
  %25 = load ptr, ptr %10, align 4, !dbg !2062
  store ptr %25, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !532, metadata !DIExpression()), !dbg !2063
  %26 = load ptr, ptr %5, align 4, !dbg !2065
  %27 = load ptr, ptr %10, align 4, !dbg !2066
  store ptr %27, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !540, metadata !DIExpression()), !dbg !2067
  %28 = load ptr, ptr %4, align 4, !dbg !2069
  %29 = load i32, ptr %9, align 4, !dbg !2070
  %30 = getelementptr inbounds %struct.z_spinlock_key, ptr %14, i32 0, i32 0, !dbg !2071
  store i32 %29, ptr %30, align 4, !dbg !2071
  call void @llvm.dbg.declare(metadata ptr %15, metadata !2072, metadata !DIExpression()), !dbg !2073
  %31 = load ptr, ptr %11, align 4, !dbg !2074
  %32 = call i32 @work_delayable_busy_get_locked(ptr noundef %31), !dbg !2075
  %33 = icmp ne i32 %32, 0, !dbg !2076
  %34 = zext i1 %33 to i8, !dbg !2073
  store i8 %34, ptr %15, align 1, !dbg !2073
  call void @llvm.dbg.declare(metadata ptr %16, metadata !2077, metadata !DIExpression()), !dbg !2078
  store i8 0, ptr %16, align 1, !dbg !2078
  %35 = load i8, ptr %15, align 1, !dbg !2079
  %36 = trunc i8 %35 to i1, !dbg !2079
  br i1 %36, label %37, label %45, !dbg !2081

37:                                               ; preds = %19
  %38 = load ptr, ptr %11, align 4, !dbg !2082
  %39 = call i32 @cancel_delayable_async_locked(ptr noundef %38), !dbg !2084
  %40 = load ptr, ptr %11, align 4, !dbg !2085
  %41 = getelementptr inbounds %struct.k_work_delayable, ptr %40, i32 0, i32 0, !dbg !2086
  %42 = load ptr, ptr %13, align 4, !dbg !2087
  %43 = call zeroext i1 @cancel_sync_locked(ptr noundef %41, ptr noundef %42), !dbg !2088
  %44 = zext i1 %43 to i8, !dbg !2089
  store i8 %44, ptr %16, align 1, !dbg !2089
  br label %45, !dbg !2090

45:                                               ; preds = %37, %19
  %46 = getelementptr inbounds %struct.z_spinlock_key, ptr %14, i32 0, i32 0, !dbg !2091
  %47 = load [1 x i32], ptr %46, align 4, !dbg !2091
  store [1 x i32] %47, ptr %7, align 4
  store ptr @lock, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !552, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.declare(metadata ptr %7, metadata !558, metadata !DIExpression()), !dbg !2094
  %48 = load ptr, ptr %8, align 4, !dbg !2095
  %49 = load i32, ptr %7, align 4, !dbg !2096
  store i32 %49, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !562, metadata !DIExpression()), !dbg !2097
  %50 = load i32, ptr %3, align 4, !dbg !2099
  %51 = icmp ne i32 %50, 0, !dbg !2100
  br i1 %51, label %52, label %53, !dbg !2101

52:                                               ; preds = %45
  br label %arch_irq_unlock.exit, !dbg !2102

53:                                               ; preds = %45
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #5, !dbg !2103, !srcloc !575
  br label %arch_irq_unlock.exit, !dbg !2104

arch_irq_unlock.exit:                             ; preds = %52, %53
  %54 = load i8, ptr %16, align 1, !dbg !2105
  %55 = trunc i8 %54 to i1, !dbg !2105
  br i1 %55, label %56, label %63, !dbg !2107

56:                                               ; preds = %arch_irq_unlock.exit
  %57 = load ptr, ptr %13, align 4, !dbg !2108
  %58 = getelementptr inbounds %struct.z_work_canceller, ptr %57, i32 0, i32 2, !dbg !2110
  %59 = getelementptr inbounds %struct.k_timeout_t, ptr %17, i32 0, i32 0, !dbg !2111
  store i64 -1, ptr %59, align 8, !dbg !2111
  %60 = getelementptr inbounds %struct.k_timeout_t, ptr %17, i32 0, i32 0, !dbg !2112
  %61 = load [1 x i64], ptr %60, align 8, !dbg !2112
  %62 = call i32 @k_sem_take(ptr noundef %58, [1 x i64] %61), !dbg !2112
  br label %63, !dbg !2113

63:                                               ; preds = %56, %arch_irq_unlock.exit
  br label %64, !dbg !2114

64:                                               ; preds = %63
  br label %65, !dbg !2115

65:                                               ; preds = %64
  %66 = load i8, ptr %15, align 1, !dbg !2117
  %67 = trunc i8 %66 to i1, !dbg !2117
  ret i1 %67, !dbg !2118
}

; Function Attrs: noinline nounwind optnone
define hidden zeroext i1 @k_work_flush_delayable(ptr noundef %0, ptr noundef %1) #0 !dbg !2119 {
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
  %20 = alloca ptr, align 4
  %21 = alloca i8, align 1
  %22 = alloca %struct.k_timeout_t, align 8
  store ptr %0, ptr %15, align 4
  call void @llvm.dbg.declare(metadata ptr %15, metadata !2120, metadata !DIExpression()), !dbg !2121
  store ptr %1, ptr %16, align 4
  call void @llvm.dbg.declare(metadata ptr %16, metadata !2122, metadata !DIExpression()), !dbg !2123
  br label %23, !dbg !2124

23:                                               ; preds = %2
  br label %24, !dbg !2125

24:                                               ; preds = %23
  call void @llvm.dbg.declare(metadata ptr %17, metadata !2127, metadata !DIExpression()), !dbg !2128
  %25 = load ptr, ptr %15, align 4, !dbg !2129
  %26 = getelementptr inbounds %struct.k_work_delayable, ptr %25, i32 0, i32 0, !dbg !2130
  store ptr %26, ptr %17, align 4, !dbg !2128
  call void @llvm.dbg.declare(metadata ptr %18, metadata !2131, metadata !DIExpression()), !dbg !2132
  %27 = load ptr, ptr %16, align 4, !dbg !2133
  %28 = getelementptr inbounds %struct.k_work_sync, ptr %27, i32 0, i32 0, !dbg !2134
  store ptr %28, ptr %18, align 4, !dbg !2132
  call void @llvm.dbg.declare(metadata ptr %19, metadata !2135, metadata !DIExpression()), !dbg !2136
  store ptr @lock, ptr %13, align 4
  call void @llvm.dbg.declare(metadata ptr %13, metadata !510, metadata !DIExpression()), !dbg !2137
  %29 = load ptr, ptr %13, align 4, !dbg !2139
  call void @llvm.dbg.declare(metadata ptr %12, metadata !518, metadata !DIExpression()), !dbg !2140
  call void @llvm.dbg.declare(metadata ptr %7, metadata !520, metadata !DIExpression()), !dbg !2141
  %30 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #5, !dbg !2143, !srcloc !528
  store i32 %30, ptr %7, align 4, !dbg !2143
  %31 = load i32, ptr %7, align 4, !dbg !2144
  store i32 %31, ptr %12, align 4, !dbg !2145
  %32 = load ptr, ptr %13, align 4, !dbg !2146
  store ptr %32, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !532, metadata !DIExpression()), !dbg !2147
  %33 = load ptr, ptr %6, align 4, !dbg !2149
  %34 = load ptr, ptr %13, align 4, !dbg !2150
  store ptr %34, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !540, metadata !DIExpression()), !dbg !2151
  %35 = load ptr, ptr %5, align 4, !dbg !2153
  %36 = load i32, ptr %12, align 4, !dbg !2154
  %37 = getelementptr inbounds %struct.z_spinlock_key, ptr %19, i32 0, i32 0, !dbg !2155
  store i32 %36, ptr %37, align 4, !dbg !2155
  %38 = load ptr, ptr %17, align 4, !dbg !2156
  %39 = call i32 @work_busy_get_locked(ptr noundef %38), !dbg !2158
  %40 = icmp eq i32 %39, 0, !dbg !2159
  br i1 %40, label %41, label %52, !dbg !2160

41:                                               ; preds = %24
  %42 = getelementptr inbounds %struct.z_spinlock_key, ptr %19, i32 0, i32 0, !dbg !2161
  %43 = load [1 x i32], ptr %42, align 4, !dbg !2161
  store [1 x i32] %43, ptr %8, align 4
  store ptr @lock, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !552, metadata !DIExpression()), !dbg !2163
  call void @llvm.dbg.declare(metadata ptr %8, metadata !558, metadata !DIExpression()), !dbg !2165
  %44 = load ptr, ptr %9, align 4, !dbg !2166
  %45 = load i32, ptr %8, align 4, !dbg !2167
  store i32 %45, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !562, metadata !DIExpression()), !dbg !2168
  %46 = load i32, ptr %4, align 4, !dbg !2170
  %47 = icmp ne i32 %46, 0, !dbg !2171
  br i1 %47, label %48, label %49, !dbg !2172

48:                                               ; preds = %41
  br label %arch_irq_unlock.exit, !dbg !2173

49:                                               ; preds = %41
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #5, !dbg !2174, !srcloc !575
  br label %arch_irq_unlock.exit, !dbg !2175

arch_irq_unlock.exit:                             ; preds = %48, %49
  br label %50, !dbg !2176

50:                                               ; preds = %arch_irq_unlock.exit
  br label %51, !dbg !2177

51:                                               ; preds = %50
  store i1 false, ptr %14, align 1, !dbg !2179
  br label %88, !dbg !2179

52:                                               ; preds = %24
  %53 = load ptr, ptr %15, align 4, !dbg !2180
  %54 = call zeroext i1 @unschedule_locked(ptr noundef %53), !dbg !2182
  br i1 %54, label %55, label %61, !dbg !2183

55:                                               ; preds = %52
  call void @llvm.dbg.declare(metadata ptr %20, metadata !2184, metadata !DIExpression()), !dbg !2186
  %56 = load ptr, ptr %15, align 4, !dbg !2187
  %57 = getelementptr inbounds %struct.k_work_delayable, ptr %56, i32 0, i32 2, !dbg !2188
  %58 = load ptr, ptr %57, align 8, !dbg !2188
  store ptr %58, ptr %20, align 4, !dbg !2186
  %59 = load ptr, ptr %17, align 4, !dbg !2189
  %60 = call i32 @submit_to_queue_locked(ptr noundef %59, ptr noundef %20), !dbg !2190
  br label %61, !dbg !2191

61:                                               ; preds = %55, %52
  call void @llvm.dbg.declare(metadata ptr %21, metadata !2192, metadata !DIExpression()), !dbg !2193
  %62 = load ptr, ptr %17, align 4, !dbg !2194
  %63 = load ptr, ptr %18, align 4, !dbg !2195
  %64 = call zeroext i1 @work_flush_locked(ptr noundef %62, ptr noundef %63), !dbg !2196
  %65 = zext i1 %64 to i8, !dbg !2193
  store i8 %65, ptr %21, align 1, !dbg !2193
  %66 = getelementptr inbounds %struct.z_spinlock_key, ptr %19, i32 0, i32 0, !dbg !2197
  %67 = load [1 x i32], ptr %66, align 4, !dbg !2197
  store [1 x i32] %67, ptr %10, align 4
  store ptr @lock, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !552, metadata !DIExpression()), !dbg !2198
  call void @llvm.dbg.declare(metadata ptr %10, metadata !558, metadata !DIExpression()), !dbg !2200
  %68 = load ptr, ptr %11, align 4, !dbg !2201
  %69 = load i32, ptr %10, align 4, !dbg !2202
  store i32 %69, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !562, metadata !DIExpression()), !dbg !2203
  %70 = load i32, ptr %3, align 4, !dbg !2205
  %71 = icmp ne i32 %70, 0, !dbg !2206
  br i1 %71, label %72, label %73, !dbg !2207

72:                                               ; preds = %61
  br label %arch_irq_unlock.exit1, !dbg !2208

73:                                               ; preds = %61
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #5, !dbg !2209, !srcloc !575
  br label %arch_irq_unlock.exit1, !dbg !2210

arch_irq_unlock.exit1:                            ; preds = %72, %73
  %74 = load i8, ptr %21, align 1, !dbg !2211
  %75 = trunc i8 %74 to i1, !dbg !2211
  br i1 %75, label %76, label %83, !dbg !2213

76:                                               ; preds = %arch_irq_unlock.exit1
  %77 = load ptr, ptr %18, align 4, !dbg !2214
  %78 = getelementptr inbounds %struct.z_work_flusher, ptr %77, i32 0, i32 1, !dbg !2216
  %79 = getelementptr inbounds %struct.k_timeout_t, ptr %22, i32 0, i32 0, !dbg !2217
  store i64 -1, ptr %79, align 8, !dbg !2217
  %80 = getelementptr inbounds %struct.k_timeout_t, ptr %22, i32 0, i32 0, !dbg !2218
  %81 = load [1 x i64], ptr %80, align 8, !dbg !2218
  %82 = call i32 @k_sem_take(ptr noundef %78, [1 x i64] %81), !dbg !2218
  br label %83, !dbg !2219

83:                                               ; preds = %76, %arch_irq_unlock.exit1
  br label %84, !dbg !2220

84:                                               ; preds = %83
  br label %85, !dbg !2221

85:                                               ; preds = %84
  %86 = load i8, ptr %21, align 1, !dbg !2223
  %87 = trunc i8 %86 to i1, !dbg !2223
  store i1 %87, ptr %14, align 1, !dbg !2224
  br label %88, !dbg !2224

88:                                               ; preds = %85, %51
  %89 = load i1, ptr %14, align 1, !dbg !2225
  ret i1 %89, !dbg !2225
}

declare i64 @z_timeout_expires(ptr noundef) #4

declare i64 @z_timeout_remaining(ptr noundef) #4

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @sys_sflist_is_empty(ptr noundef %0) #0 !dbg !2226 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2230, metadata !DIExpression()), !dbg !2231
  %3 = load ptr, ptr %2, align 4, !dbg !2232
  %4 = call ptr @sys_sflist_peek_head(ptr noundef %3), !dbg !2233
  %5 = icmp eq ptr %4, null, !dbg !2234
  ret i1 %5, !dbg !2235
}

; Function Attrs: noinline nounwind optnone
define internal ptr @sys_sflist_peek_head(ptr noundef %0) #0 !dbg !2236 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2239, metadata !DIExpression()), !dbg !2240
  %3 = load ptr, ptr %2, align 4, !dbg !2241
  %4 = getelementptr inbounds %struct._sflist, ptr %3, i32 0, i32 0, !dbg !2242
  %5 = load ptr, ptr %4, align 4, !dbg !2242
  ret ptr %5, !dbg !2243
}

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @flag_test(ptr noundef %0, i32 noundef %1) #0 !dbg !2244 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2247, metadata !DIExpression()), !dbg !2248
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2249, metadata !DIExpression()), !dbg !2250
  %5 = load ptr, ptr %3, align 4, !dbg !2251
  %6 = load i32, ptr %5, align 4, !dbg !2252
  %7 = load i32, ptr %4, align 4, !dbg !2253
  %8 = shl i32 1, %7, !dbg !2254
  %9 = and i32 %6, %8, !dbg !2255
  %10 = icmp ne i32 %9, 0, !dbg !2256
  ret i1 %10, !dbg !2257
}

; Function Attrs: noinline nounwind optnone
define internal i32 @queue_submit_locked(ptr noundef %0, ptr noundef %1) #0 !dbg !2258 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2259, metadata !DIExpression()), !dbg !2260
  store ptr %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2261, metadata !DIExpression()), !dbg !2262
  %10 = load ptr, ptr %4, align 4, !dbg !2263
  %11 = icmp eq ptr %10, null, !dbg !2265
  br i1 %11, label %12, label %13, !dbg !2266

12:                                               ; preds = %2
  store i32 -5, ptr %3, align 4, !dbg !2267
  br label %61, !dbg !2267

13:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2269, metadata !DIExpression()), !dbg !2270
  store i32 -16, ptr %6, align 4, !dbg !2270
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2271, metadata !DIExpression()), !dbg !2272
  %14 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !2273
  %15 = load ptr, ptr %4, align 4, !dbg !2274
  %16 = getelementptr inbounds %struct.k_work_q, ptr %15, i32 0, i32 0, !dbg !2275
  %17 = icmp eq ptr %14, %16, !dbg !2276
  br i1 %17, label %18, label %21, !dbg !2277

18:                                               ; preds = %13
  %19 = call zeroext i1 @k_is_in_isr(), !dbg !2278
  %20 = xor i1 %19, true, !dbg !2279
  br label %21

21:                                               ; preds = %18, %13
  %22 = phi i1 [ false, %13 ], [ %20, %18 ], !dbg !2280
  %23 = zext i1 %22 to i8, !dbg !2272
  store i8 %23, ptr %7, align 1, !dbg !2272
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2281, metadata !DIExpression()), !dbg !2282
  %24 = load ptr, ptr %4, align 4, !dbg !2283
  %25 = getelementptr inbounds %struct.k_work_q, ptr %24, i32 0, i32 4, !dbg !2284
  %26 = call zeroext i1 @flag_test(ptr noundef %25, i32 noundef 2), !dbg !2285
  %27 = zext i1 %26 to i8, !dbg !2282
  store i8 %27, ptr %8, align 1, !dbg !2282
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2286, metadata !DIExpression()), !dbg !2287
  %28 = load ptr, ptr %4, align 4, !dbg !2288
  %29 = getelementptr inbounds %struct.k_work_q, ptr %28, i32 0, i32 4, !dbg !2289
  %30 = call zeroext i1 @flag_test(ptr noundef %29, i32 noundef 3), !dbg !2290
  %31 = zext i1 %30 to i8, !dbg !2287
  store i8 %31, ptr %9, align 1, !dbg !2287
  %32 = load ptr, ptr %4, align 4, !dbg !2291
  %33 = getelementptr inbounds %struct.k_work_q, ptr %32, i32 0, i32 4, !dbg !2293
  %34 = call zeroext i1 @flag_test(ptr noundef %33, i32 noundef 0), !dbg !2294
  br i1 %34, label %36, label %35, !dbg !2295

35:                                               ; preds = %21
  store i32 -19, ptr %6, align 4, !dbg !2296
  br label %59, !dbg !2298

36:                                               ; preds = %21
  %37 = load i8, ptr %8, align 1, !dbg !2299
  %38 = trunc i8 %37 to i1, !dbg !2299
  br i1 %38, label %39, label %43, !dbg !2301

39:                                               ; preds = %36
  %40 = load i8, ptr %7, align 1, !dbg !2302
  %41 = trunc i8 %40 to i1, !dbg !2302
  br i1 %41, label %43, label %42, !dbg !2303

42:                                               ; preds = %39
  store i32 -16, ptr %6, align 4, !dbg !2304
  br label %58, !dbg !2306

43:                                               ; preds = %39, %36
  %44 = load i8, ptr %9, align 1, !dbg !2307
  %45 = trunc i8 %44 to i1, !dbg !2307
  br i1 %45, label %46, label %50, !dbg !2309

46:                                               ; preds = %43
  %47 = load i8, ptr %8, align 1, !dbg !2310
  %48 = trunc i8 %47 to i1, !dbg !2310
  br i1 %48, label %50, label %49, !dbg !2311

49:                                               ; preds = %46
  store i32 -16, ptr %6, align 4, !dbg !2312
  br label %57, !dbg !2314

50:                                               ; preds = %46, %43
  %51 = load ptr, ptr %4, align 4, !dbg !2315
  %52 = getelementptr inbounds %struct.k_work_q, ptr %51, i32 0, i32 1, !dbg !2317
  %53 = load ptr, ptr %5, align 4, !dbg !2318
  %54 = getelementptr inbounds %struct.k_work, ptr %53, i32 0, i32 0, !dbg !2319
  call void @sys_slist_append(ptr noundef %52, ptr noundef %54), !dbg !2320
  store i32 1, ptr %6, align 4, !dbg !2321
  %55 = load ptr, ptr %4, align 4, !dbg !2322
  %56 = call zeroext i1 @notify_queue_locked(ptr noundef %55), !dbg !2323
  br label %57

57:                                               ; preds = %50, %49
  br label %58

58:                                               ; preds = %57, %42
  br label %59

59:                                               ; preds = %58, %35
  %60 = load i32, ptr %6, align 4, !dbg !2324
  store i32 %60, ptr %3, align 4, !dbg !2325
  br label %61, !dbg !2325

61:                                               ; preds = %59, %12
  %62 = load i32, ptr %3, align 4, !dbg !2326
  ret i32 %62, !dbg !2326
}

declare zeroext i1 @k_is_in_isr() #4

; Function Attrs: noinline nounwind optnone
define internal void @sys_slist_append(ptr noundef %0, ptr noundef %1) #0 !dbg !2327 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2330, metadata !DIExpression()), !dbg !2331
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2332, metadata !DIExpression()), !dbg !2333
  %5 = load ptr, ptr %4, align 4, !dbg !2334
  call void @z_snode_next_set(ptr noundef %5, ptr noundef null), !dbg !2335
  %6 = load ptr, ptr %3, align 4, !dbg !2336
  %7 = call ptr @sys_slist_peek_tail(ptr noundef %6), !dbg !2338
  %8 = icmp eq ptr %7, null, !dbg !2339
  br i1 %8, label %9, label %14, !dbg !2340

9:                                                ; preds = %2
  %10 = load ptr, ptr %3, align 4, !dbg !2341
  %11 = load ptr, ptr %4, align 4, !dbg !2343
  call void @z_slist_tail_set(ptr noundef %10, ptr noundef %11), !dbg !2344
  %12 = load ptr, ptr %3, align 4, !dbg !2345
  %13 = load ptr, ptr %4, align 4, !dbg !2346
  call void @z_slist_head_set(ptr noundef %12, ptr noundef %13), !dbg !2347
  br label %20, !dbg !2348

14:                                               ; preds = %2
  %15 = load ptr, ptr %3, align 4, !dbg !2349
  %16 = call ptr @sys_slist_peek_tail(ptr noundef %15), !dbg !2351
  %17 = load ptr, ptr %4, align 4, !dbg !2352
  call void @z_snode_next_set(ptr noundef %16, ptr noundef %17), !dbg !2353
  %18 = load ptr, ptr %3, align 4, !dbg !2354
  %19 = load ptr, ptr %4, align 4, !dbg !2355
  call void @z_slist_tail_set(ptr noundef %18, ptr noundef %19), !dbg !2356
  br label %20

20:                                               ; preds = %14, %9
  ret void, !dbg !2357
}

; Function Attrs: noinline nounwind optnone
define internal void @z_snode_next_set(ptr noundef %0, ptr noundef %1) #0 !dbg !2358 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2361, metadata !DIExpression()), !dbg !2362
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2363, metadata !DIExpression()), !dbg !2364
  %5 = load ptr, ptr %4, align 4, !dbg !2365
  %6 = load ptr, ptr %3, align 4, !dbg !2366
  %7 = getelementptr inbounds %struct._snode, ptr %6, i32 0, i32 0, !dbg !2367
  store ptr %5, ptr %7, align 4, !dbg !2368
  ret void, !dbg !2369
}

; Function Attrs: noinline nounwind optnone
define internal ptr @sys_slist_peek_tail(ptr noundef %0) #0 !dbg !2370 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2373, metadata !DIExpression()), !dbg !2374
  %3 = load ptr, ptr %2, align 4, !dbg !2375
  %4 = getelementptr inbounds %struct._slist, ptr %3, i32 0, i32 1, !dbg !2376
  %5 = load ptr, ptr %4, align 4, !dbg !2376
  ret ptr %5, !dbg !2377
}

; Function Attrs: noinline nounwind optnone
define internal void @z_slist_tail_set(ptr noundef %0, ptr noundef %1) #0 !dbg !2378 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2379, metadata !DIExpression()), !dbg !2380
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2381, metadata !DIExpression()), !dbg !2382
  %5 = load ptr, ptr %4, align 4, !dbg !2383
  %6 = load ptr, ptr %3, align 4, !dbg !2384
  %7 = getelementptr inbounds %struct._slist, ptr %6, i32 0, i32 1, !dbg !2385
  store ptr %5, ptr %7, align 4, !dbg !2386
  ret void, !dbg !2387
}

; Function Attrs: noinline nounwind optnone
define internal void @z_slist_head_set(ptr noundef %0, ptr noundef %1) #0 !dbg !2388 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2389, metadata !DIExpression()), !dbg !2390
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2391, metadata !DIExpression()), !dbg !2392
  %5 = load ptr, ptr %4, align 4, !dbg !2393
  %6 = load ptr, ptr %3, align 4, !dbg !2394
  %7 = getelementptr inbounds %struct._slist, ptr %6, i32 0, i32 0, !dbg !2395
  store ptr %5, ptr %7, align 4, !dbg !2396
  ret void, !dbg !2397
}

declare void @z_reschedule_irqlock(i32 noundef) #4

; Function Attrs: noinline nounwind optnone
define internal void @queue_flusher_locked(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !2398 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i8, align 1
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2401, metadata !DIExpression()), !dbg !2402
  store ptr %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2403, metadata !DIExpression()), !dbg !2404
  store ptr %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2405, metadata !DIExpression()), !dbg !2406
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2407, metadata !DIExpression()), !dbg !2408
  store i8 0, ptr %7, align 1, !dbg !2408
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2409, metadata !DIExpression()), !dbg !2410
  %11 = load ptr, ptr %4, align 4, !dbg !2411
  %12 = getelementptr inbounds %struct.k_work_q, ptr %11, i32 0, i32 1, !dbg !2413
  %13 = call ptr @sys_slist_peek_head(ptr noundef %12), !dbg !2414
  %14 = icmp ne ptr %13, null, !dbg !2414
  br i1 %14, label %15, label %21, !dbg !2415

15:                                               ; preds = %3
  %16 = load ptr, ptr %4, align 4, !dbg !2416
  %17 = getelementptr inbounds %struct.k_work_q, ptr %16, i32 0, i32 1, !dbg !2418
  %18 = call ptr @sys_slist_peek_head(ptr noundef %17), !dbg !2419
  %19 = getelementptr inbounds i8, ptr %18, i32 0, !dbg !2420
  store ptr %19, ptr %9, align 4, !dbg !2421
  %20 = load ptr, ptr %9, align 4, !dbg !2422
  br label %22, !dbg !2415

21:                                               ; preds = %3
  br label %22, !dbg !2415

22:                                               ; preds = %21, %15
  %23 = phi ptr [ %20, %15 ], [ null, %21 ], !dbg !2415
  store ptr %23, ptr %8, align 4, !dbg !2423
  br label %24, !dbg !2424

24:                                               ; preds = %51, %22
  %25 = load ptr, ptr %8, align 4, !dbg !2425
  %26 = icmp ne ptr %25, null, !dbg !2427
  br i1 %26, label %27, label %53, !dbg !2428

27:                                               ; preds = %24
  %28 = load ptr, ptr %8, align 4, !dbg !2429
  %29 = load ptr, ptr %5, align 4, !dbg !2432
  %30 = icmp eq ptr %28, %29, !dbg !2433
  br i1 %30, label %31, label %32, !dbg !2434

31:                                               ; preds = %27
  store i8 1, ptr %7, align 1, !dbg !2435
  br label %53, !dbg !2437

32:                                               ; preds = %27
  br label %33, !dbg !2438

33:                                               ; preds = %32
  %34 = load ptr, ptr %8, align 4, !dbg !2439
  %35 = icmp ne ptr %34, null, !dbg !2440
  br i1 %35, label %36, label %50, !dbg !2440

36:                                               ; preds = %33
  %37 = load ptr, ptr %8, align 4, !dbg !2441
  %38 = getelementptr inbounds %struct.k_work, ptr %37, i32 0, i32 0, !dbg !2442
  %39 = call ptr @sys_slist_peek_next(ptr noundef %38), !dbg !2443
  %40 = icmp ne ptr %39, null, !dbg !2443
  br i1 %40, label %41, label %47, !dbg !2444

41:                                               ; preds = %36
  %42 = load ptr, ptr %8, align 4, !dbg !2445
  %43 = getelementptr inbounds %struct.k_work, ptr %42, i32 0, i32 0, !dbg !2447
  %44 = call ptr @sys_slist_peek_next(ptr noundef %43), !dbg !2448
  %45 = getelementptr inbounds i8, ptr %44, i32 0, !dbg !2449
  store ptr %45, ptr %10, align 4, !dbg !2450
  %46 = load ptr, ptr %10, align 4, !dbg !2451
  br label %48, !dbg !2444

47:                                               ; preds = %36
  br label %48, !dbg !2444

48:                                               ; preds = %47, %41
  %49 = phi ptr [ %46, %41 ], [ null, %47 ], !dbg !2444
  br label %51, !dbg !2440

50:                                               ; preds = %33
  br label %51, !dbg !2440

51:                                               ; preds = %50, %48
  %52 = phi ptr [ %49, %48 ], [ null, %50 ], !dbg !2440
  store ptr %52, ptr %8, align 4, !dbg !2452
  br label %24, !dbg !2453, !llvm.loop !2454

53:                                               ; preds = %31, %24
  %54 = load ptr, ptr %6, align 4, !dbg !2456
  call void @init_flusher(ptr noundef %54), !dbg !2457
  %55 = load i8, ptr %7, align 1, !dbg !2458
  %56 = trunc i8 %55 to i1, !dbg !2458
  br i1 %56, label %57, label %65, !dbg !2460

57:                                               ; preds = %53
  %58 = load ptr, ptr %4, align 4, !dbg !2461
  %59 = getelementptr inbounds %struct.k_work_q, ptr %58, i32 0, i32 1, !dbg !2463
  %60 = load ptr, ptr %5, align 4, !dbg !2464
  %61 = getelementptr inbounds %struct.k_work, ptr %60, i32 0, i32 0, !dbg !2465
  %62 = load ptr, ptr %6, align 4, !dbg !2466
  %63 = getelementptr inbounds %struct.z_work_flusher, ptr %62, i32 0, i32 0, !dbg !2467
  %64 = getelementptr inbounds %struct.k_work, ptr %63, i32 0, i32 0, !dbg !2468
  call void @sys_slist_insert(ptr noundef %59, ptr noundef %61, ptr noundef %64), !dbg !2469
  br label %71, !dbg !2470

65:                                               ; preds = %53
  %66 = load ptr, ptr %4, align 4, !dbg !2471
  %67 = getelementptr inbounds %struct.k_work_q, ptr %66, i32 0, i32 1, !dbg !2473
  %68 = load ptr, ptr %6, align 4, !dbg !2474
  %69 = getelementptr inbounds %struct.z_work_flusher, ptr %68, i32 0, i32 0, !dbg !2475
  %70 = getelementptr inbounds %struct.k_work, ptr %69, i32 0, i32 0, !dbg !2476
  call void @sys_slist_prepend(ptr noundef %67, ptr noundef %70), !dbg !2477
  br label %71

71:                                               ; preds = %65, %57
  ret void, !dbg !2478
}

; Function Attrs: noinline nounwind optnone
define internal ptr @sys_slist_peek_head(ptr noundef %0) #0 !dbg !2479 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2480, metadata !DIExpression()), !dbg !2481
  %3 = load ptr, ptr %2, align 4, !dbg !2482
  %4 = getelementptr inbounds %struct._slist, ptr %3, i32 0, i32 0, !dbg !2483
  %5 = load ptr, ptr %4, align 4, !dbg !2483
  ret ptr %5, !dbg !2484
}

; Function Attrs: noinline nounwind optnone
define internal ptr @sys_slist_peek_next(ptr noundef %0) #0 !dbg !2485 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2488, metadata !DIExpression()), !dbg !2489
  %3 = load ptr, ptr %2, align 4, !dbg !2490
  %4 = icmp ne ptr %3, null, !dbg !2491
  br i1 %4, label %5, label %8, !dbg !2490

5:                                                ; preds = %1
  %6 = load ptr, ptr %2, align 4, !dbg !2492
  %7 = call ptr @sys_slist_peek_next_no_check(ptr noundef %6), !dbg !2493
  br label %9, !dbg !2490

8:                                                ; preds = %1
  br label %9, !dbg !2490

9:                                                ; preds = %8, %5
  %10 = phi ptr [ %7, %5 ], [ null, %8 ], !dbg !2490
  ret ptr %10, !dbg !2494
}

; Function Attrs: noinline nounwind optnone
define internal void @init_flusher(ptr noundef %0) #0 !dbg !2495 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2498, metadata !DIExpression()), !dbg !2499
  %3 = load ptr, ptr %2, align 4, !dbg !2500
  %4 = getelementptr inbounds %struct.z_work_flusher, ptr %3, i32 0, i32 1, !dbg !2501
  %5 = call i32 @k_sem_init(ptr noundef %4, i32 noundef 0, i32 noundef 1), !dbg !2502
  %6 = load ptr, ptr %2, align 4, !dbg !2503
  %7 = getelementptr inbounds %struct.z_work_flusher, ptr %6, i32 0, i32 0, !dbg !2504
  call void @k_work_init(ptr noundef %7, ptr noundef @handle_flush), !dbg !2505
  ret void, !dbg !2506
}

; Function Attrs: noinline nounwind optnone
define internal void @sys_slist_insert(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !2507 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2510, metadata !DIExpression()), !dbg !2511
  store ptr %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2512, metadata !DIExpression()), !dbg !2513
  store ptr %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2514, metadata !DIExpression()), !dbg !2515
  %7 = load ptr, ptr %5, align 4, !dbg !2516
  %8 = icmp eq ptr %7, null, !dbg !2518
  br i1 %8, label %9, label %12, !dbg !2519

9:                                                ; preds = %3
  %10 = load ptr, ptr %4, align 4, !dbg !2520
  %11 = load ptr, ptr %6, align 4, !dbg !2522
  call void @sys_slist_prepend(ptr noundef %10, ptr noundef %11), !dbg !2523
  br label %26, !dbg !2524

12:                                               ; preds = %3
  %13 = load ptr, ptr %5, align 4, !dbg !2525
  %14 = call ptr @z_snode_next_peek(ptr noundef %13), !dbg !2527
  %15 = icmp eq ptr %14, null, !dbg !2528
  br i1 %15, label %16, label %19, !dbg !2529

16:                                               ; preds = %12
  %17 = load ptr, ptr %4, align 4, !dbg !2530
  %18 = load ptr, ptr %6, align 4, !dbg !2532
  call void @sys_slist_append(ptr noundef %17, ptr noundef %18), !dbg !2533
  br label %25, !dbg !2534

19:                                               ; preds = %12
  %20 = load ptr, ptr %6, align 4, !dbg !2535
  %21 = load ptr, ptr %5, align 4, !dbg !2537
  %22 = call ptr @z_snode_next_peek(ptr noundef %21), !dbg !2538
  call void @z_snode_next_set(ptr noundef %20, ptr noundef %22), !dbg !2539
  %23 = load ptr, ptr %5, align 4, !dbg !2540
  %24 = load ptr, ptr %6, align 4, !dbg !2541
  call void @z_snode_next_set(ptr noundef %23, ptr noundef %24), !dbg !2542
  br label %25

25:                                               ; preds = %19, %16
  br label %26

26:                                               ; preds = %25, %9
  ret void, !dbg !2543
}

; Function Attrs: noinline nounwind optnone
define internal void @sys_slist_prepend(ptr noundef %0, ptr noundef %1) #0 !dbg !2544 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2545, metadata !DIExpression()), !dbg !2546
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2547, metadata !DIExpression()), !dbg !2548
  %5 = load ptr, ptr %4, align 4, !dbg !2549
  %6 = load ptr, ptr %3, align 4, !dbg !2550
  %7 = call ptr @sys_slist_peek_head(ptr noundef %6), !dbg !2551
  call void @z_snode_next_set(ptr noundef %5, ptr noundef %7), !dbg !2552
  %8 = load ptr, ptr %3, align 4, !dbg !2553
  %9 = load ptr, ptr %4, align 4, !dbg !2554
  call void @z_slist_head_set(ptr noundef %8, ptr noundef %9), !dbg !2555
  %10 = load ptr, ptr %3, align 4, !dbg !2556
  %11 = call ptr @sys_slist_peek_tail(ptr noundef %10), !dbg !2558
  %12 = icmp eq ptr %11, null, !dbg !2559
  br i1 %12, label %13, label %17, !dbg !2560

13:                                               ; preds = %2
  %14 = load ptr, ptr %3, align 4, !dbg !2561
  %15 = load ptr, ptr %3, align 4, !dbg !2563
  %16 = call ptr @sys_slist_peek_head(ptr noundef %15), !dbg !2564
  call void @z_slist_tail_set(ptr noundef %14, ptr noundef %16), !dbg !2565
  br label %17, !dbg !2566

17:                                               ; preds = %13, %2
  ret void, !dbg !2567
}

; Function Attrs: noinline nounwind optnone
define internal ptr @sys_slist_peek_next_no_check(ptr noundef %0) #0 !dbg !2568 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2569, metadata !DIExpression()), !dbg !2570
  %3 = load ptr, ptr %2, align 4, !dbg !2571
  %4 = call ptr @z_snode_next_peek(ptr noundef %3), !dbg !2572
  ret ptr %4, !dbg !2573
}

; Function Attrs: noinline nounwind optnone
define internal ptr @z_snode_next_peek(ptr noundef %0) #0 !dbg !2574 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2575, metadata !DIExpression()), !dbg !2576
  %3 = load ptr, ptr %2, align 4, !dbg !2577
  %4 = getelementptr inbounds %struct._snode, ptr %3, i32 0, i32 0, !dbg !2578
  %5 = load ptr, ptr %4, align 4, !dbg !2578
  ret ptr %5, !dbg !2579
}

; Function Attrs: noinline nounwind optnone
define internal i32 @k_sem_init(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 !dbg !2580 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2583, metadata !DIExpression()), !dbg !2584
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2585, metadata !DIExpression()), !dbg !2586
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2587, metadata !DIExpression()), !dbg !2588
  br label %7, !dbg !2589

7:                                                ; preds = %3
  call void asm sideeffect "", "~{memory}"() #5, !dbg !2590, !srcloc !2592
  br label %8, !dbg !2593

8:                                                ; preds = %7
  %9 = load ptr, ptr %4, align 4, !dbg !2594
  %10 = load i32, ptr %5, align 4, !dbg !2595
  %11 = load i32, ptr %6, align 4, !dbg !2596
  %12 = call i32 @z_impl_k_sem_init(ptr noundef %9, i32 noundef %10, i32 noundef %11), !dbg !2597
  ret i32 %12, !dbg !2598
}

; Function Attrs: noinline nounwind optnone
define internal void @handle_flush(ptr noundef %0) #0 !dbg !2599 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2600, metadata !DIExpression()), !dbg !2601
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2602, metadata !DIExpression()), !dbg !2603
  %5 = load ptr, ptr %2, align 4, !dbg !2604
  %6 = getelementptr inbounds i8, ptr %5, i32 0, !dbg !2606
  store ptr %6, ptr %4, align 4, !dbg !2607
  %7 = load ptr, ptr %4, align 4, !dbg !2608
  store ptr %7, ptr %3, align 4, !dbg !2603
  %8 = load ptr, ptr %3, align 4, !dbg !2609
  %9 = getelementptr inbounds %struct.z_work_flusher, ptr %8, i32 0, i32 1, !dbg !2610
  call void @k_sem_give(ptr noundef %9), !dbg !2611
  ret void, !dbg !2612
}

declare i32 @z_impl_k_sem_init(ptr noundef, i32 noundef, i32 noundef) #4

; Function Attrs: noinline nounwind optnone
define internal void @k_sem_give(ptr noundef %0) #0 !dbg !2613 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2616, metadata !DIExpression()), !dbg !2617
  br label %3, !dbg !2618

3:                                                ; preds = %1
  call void asm sideeffect "", "~{memory}"() #5, !dbg !2619, !srcloc !2621
  br label %4, !dbg !2622

4:                                                ; preds = %3
  %5 = load ptr, ptr %2, align 4, !dbg !2623
  call void @z_impl_k_sem_give(ptr noundef %5), !dbg !2624
  ret void, !dbg !2625
}

declare void @z_impl_k_sem_give(ptr noundef) #4

declare i32 @z_impl_k_sem_take(ptr noundef, [1 x i64]) #4

; Function Attrs: noinline nounwind optnone
define internal void @queue_remove_locked(ptr noundef %0, ptr noundef %1) #0 !dbg !2626 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2629, metadata !DIExpression()), !dbg !2630
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2631, metadata !DIExpression()), !dbg !2632
  %5 = load ptr, ptr %4, align 4, !dbg !2633
  %6 = getelementptr inbounds %struct.k_work, ptr %5, i32 0, i32 3, !dbg !2635
  %7 = call zeroext i1 @flag_test_and_clear(ptr noundef %6, i32 noundef 2), !dbg !2636
  br i1 %7, label %8, label %14, !dbg !2637

8:                                                ; preds = %2
  %9 = load ptr, ptr %3, align 4, !dbg !2638
  %10 = getelementptr inbounds %struct.k_work_q, ptr %9, i32 0, i32 1, !dbg !2640
  %11 = load ptr, ptr %4, align 4, !dbg !2641
  %12 = getelementptr inbounds %struct.k_work, ptr %11, i32 0, i32 0, !dbg !2642
  %13 = call zeroext i1 @sys_slist_find_and_remove(ptr noundef %10, ptr noundef %12), !dbg !2643
  br label %14, !dbg !2644

14:                                               ; preds = %8, %2
  ret void, !dbg !2645
}

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @sys_slist_find_and_remove(ptr noundef %0, ptr noundef %1) #0 !dbg !2646 {
  %3 = alloca i1, align 1
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2649, metadata !DIExpression()), !dbg !2650
  store ptr %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2651, metadata !DIExpression()), !dbg !2652
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2653, metadata !DIExpression()), !dbg !2654
  store ptr null, ptr %6, align 4, !dbg !2654
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2655, metadata !DIExpression()), !dbg !2656
  %8 = load ptr, ptr %4, align 4, !dbg !2657
  %9 = call ptr @sys_slist_peek_head(ptr noundef %8), !dbg !2659
  store ptr %9, ptr %7, align 4, !dbg !2660
  br label %10, !dbg !2661

10:                                               ; preds = %23, %2
  %11 = load ptr, ptr %7, align 4, !dbg !2662
  %12 = icmp ne ptr %11, null, !dbg !2664
  br i1 %12, label %13, label %26, !dbg !2665

13:                                               ; preds = %10
  %14 = load ptr, ptr %7, align 4, !dbg !2666
  %15 = load ptr, ptr %5, align 4, !dbg !2669
  %16 = icmp eq ptr %14, %15, !dbg !2670
  br i1 %16, label %17, label %21, !dbg !2671

17:                                               ; preds = %13
  %18 = load ptr, ptr %4, align 4, !dbg !2672
  %19 = load ptr, ptr %6, align 4, !dbg !2674
  %20 = load ptr, ptr %5, align 4, !dbg !2675
  call void @sys_slist_remove(ptr noundef %18, ptr noundef %19, ptr noundef %20), !dbg !2676
  store i1 true, ptr %3, align 1, !dbg !2677
  br label %27, !dbg !2677

21:                                               ; preds = %13
  %22 = load ptr, ptr %7, align 4, !dbg !2678
  store ptr %22, ptr %6, align 4, !dbg !2679
  br label %23, !dbg !2680

23:                                               ; preds = %21
  %24 = load ptr, ptr %7, align 4, !dbg !2681
  %25 = call ptr @sys_slist_peek_next(ptr noundef %24), !dbg !2682
  store ptr %25, ptr %7, align 4, !dbg !2683
  br label %10, !dbg !2684, !llvm.loop !2685

26:                                               ; preds = %10
  store i1 false, ptr %3, align 1, !dbg !2687
  br label %27, !dbg !2687

27:                                               ; preds = %26, %17
  %28 = load i1, ptr %3, align 1, !dbg !2688
  ret i1 %28, !dbg !2688
}

; Function Attrs: noinline nounwind optnone
define internal void @sys_slist_remove(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !2689 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2690, metadata !DIExpression()), !dbg !2691
  store ptr %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2692, metadata !DIExpression()), !dbg !2693
  store ptr %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2694, metadata !DIExpression()), !dbg !2695
  %7 = load ptr, ptr %5, align 4, !dbg !2696
  %8 = icmp eq ptr %7, null, !dbg !2698
  br i1 %8, label %9, label %22, !dbg !2699

9:                                                ; preds = %3
  %10 = load ptr, ptr %4, align 4, !dbg !2700
  %11 = load ptr, ptr %6, align 4, !dbg !2702
  %12 = call ptr @z_snode_next_peek(ptr noundef %11), !dbg !2703
  call void @z_slist_head_set(ptr noundef %10, ptr noundef %12), !dbg !2704
  %13 = load ptr, ptr %4, align 4, !dbg !2705
  %14 = call ptr @sys_slist_peek_tail(ptr noundef %13), !dbg !2707
  %15 = load ptr, ptr %6, align 4, !dbg !2708
  %16 = icmp eq ptr %14, %15, !dbg !2709
  br i1 %16, label %17, label %21, !dbg !2710

17:                                               ; preds = %9
  %18 = load ptr, ptr %4, align 4, !dbg !2711
  %19 = load ptr, ptr %4, align 4, !dbg !2713
  %20 = call ptr @sys_slist_peek_head(ptr noundef %19), !dbg !2714
  call void @z_slist_tail_set(ptr noundef %18, ptr noundef %20), !dbg !2715
  br label %21, !dbg !2716

21:                                               ; preds = %17, %9
  br label %34, !dbg !2717

22:                                               ; preds = %3
  %23 = load ptr, ptr %5, align 4, !dbg !2718
  %24 = load ptr, ptr %6, align 4, !dbg !2720
  %25 = call ptr @z_snode_next_peek(ptr noundef %24), !dbg !2721
  call void @z_snode_next_set(ptr noundef %23, ptr noundef %25), !dbg !2722
  %26 = load ptr, ptr %4, align 4, !dbg !2723
  %27 = call ptr @sys_slist_peek_tail(ptr noundef %26), !dbg !2725
  %28 = load ptr, ptr %6, align 4, !dbg !2726
  %29 = icmp eq ptr %27, %28, !dbg !2727
  br i1 %29, label %30, label %33, !dbg !2728

30:                                               ; preds = %22
  %31 = load ptr, ptr %4, align 4, !dbg !2729
  %32 = load ptr, ptr %5, align 4, !dbg !2731
  call void @z_slist_tail_set(ptr noundef %31, ptr noundef %32), !dbg !2732
  br label %33, !dbg !2733

33:                                               ; preds = %30, %22
  br label %34

34:                                               ; preds = %33, %21
  %35 = load ptr, ptr %6, align 4, !dbg !2734
  call void @z_snode_next_set(ptr noundef %35, ptr noundef null), !dbg !2735
  ret void, !dbg !2736
}

; Function Attrs: noinline nounwind optnone
define internal void @init_work_cancel(ptr noundef %0, ptr noundef %1) #0 !dbg !2737 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2740, metadata !DIExpression()), !dbg !2741
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2742, metadata !DIExpression()), !dbg !2743
  %5 = load ptr, ptr %3, align 4, !dbg !2744
  %6 = getelementptr inbounds %struct.z_work_canceller, ptr %5, i32 0, i32 2, !dbg !2745
  %7 = call i32 @k_sem_init(ptr noundef %6, i32 noundef 0, i32 noundef 1), !dbg !2746
  %8 = load ptr, ptr %4, align 4, !dbg !2747
  %9 = load ptr, ptr %3, align 4, !dbg !2748
  %10 = getelementptr inbounds %struct.z_work_canceller, ptr %9, i32 0, i32 1, !dbg !2749
  store ptr %8, ptr %10, align 4, !dbg !2750
  %11 = load ptr, ptr %3, align 4, !dbg !2751
  %12 = getelementptr inbounds %struct.z_work_canceller, ptr %11, i32 0, i32 0, !dbg !2752
  call void @sys_slist_append(ptr noundef @pending_cancels, ptr noundef %12), !dbg !2753
  ret void, !dbg !2754
}

; Function Attrs: noinline nounwind optnone
define internal void @sys_dlist_init(ptr noundef %0) #0 !dbg !2755 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2759, metadata !DIExpression()), !dbg !2760
  %3 = load ptr, ptr %2, align 4, !dbg !2761
  %4 = load ptr, ptr %2, align 4, !dbg !2762
  %5 = getelementptr inbounds %struct._dnode, ptr %4, i32 0, i32 0, !dbg !2763
  store ptr %3, ptr %5, align 4, !dbg !2764
  %6 = load ptr, ptr %2, align 4, !dbg !2765
  %7 = load ptr, ptr %2, align 4, !dbg !2766
  %8 = getelementptr inbounds %struct._dnode, ptr %7, i32 0, i32 1, !dbg !2767
  store ptr %6, ptr %8, align 4, !dbg !2768
  ret void, !dbg !2769
}

declare ptr @z_impl_k_thread_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, [1 x i64]) #4

; Function Attrs: noinline nounwind optnone
define internal ptr @sys_slist_get(ptr noundef %0) #0 !dbg !2770 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2771, metadata !DIExpression()), !dbg !2772
  %3 = load ptr, ptr %2, align 4, !dbg !2773
  %4 = call zeroext i1 @sys_slist_is_empty(ptr noundef %3), !dbg !2774
  br i1 %4, label %5, label %6, !dbg !2774

5:                                                ; preds = %1
  br label %9, !dbg !2774

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 4, !dbg !2775
  %8 = call ptr @sys_slist_get_not_empty(ptr noundef %7), !dbg !2776
  br label %9, !dbg !2774

9:                                                ; preds = %6, %5
  %10 = phi ptr [ null, %5 ], [ %8, %6 ], !dbg !2774
  ret ptr %10, !dbg !2777
}

; Function Attrs: noinline nounwind optnone
define internal void @flag_clear(ptr noundef %0, i32 noundef %1) #0 !dbg !2778 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2779, metadata !DIExpression()), !dbg !2780
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2781, metadata !DIExpression()), !dbg !2782
  %5 = load i32, ptr %4, align 4, !dbg !2783
  %6 = shl i32 1, %5, !dbg !2784
  %7 = xor i32 %6, -1, !dbg !2785
  %8 = load ptr, ptr %3, align 4, !dbg !2786
  %9 = load i32, ptr %8, align 4, !dbg !2787
  %10 = and i32 %9, %7, !dbg !2787
  store i32 %10, ptr %8, align 4, !dbg !2787
  ret void, !dbg !2788
}

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @z_sched_wake_all(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 !dbg !2789 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i8, align 1
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2792, metadata !DIExpression()), !dbg !2793
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2794, metadata !DIExpression()), !dbg !2795
  store ptr %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2796, metadata !DIExpression()), !dbg !2797
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2798, metadata !DIExpression()), !dbg !2799
  store i8 0, ptr %7, align 1, !dbg !2799
  br label %8, !dbg !2800

8:                                                ; preds = %13, %3
  %9 = load ptr, ptr %4, align 4, !dbg !2801
  %10 = load i32, ptr %5, align 4, !dbg !2802
  %11 = load ptr, ptr %6, align 4, !dbg !2803
  %12 = call zeroext i1 @z_sched_wake(ptr noundef %9, i32 noundef %10, ptr noundef %11), !dbg !2804
  br i1 %12, label %13, label %14, !dbg !2800

13:                                               ; preds = %8
  store i8 1, ptr %7, align 1, !dbg !2805
  br label %8, !dbg !2800, !llvm.loop !2807

14:                                               ; preds = %8
  %15 = load i8, ptr %7, align 1, !dbg !2809
  %16 = trunc i8 %15 to i1, !dbg !2809
  ret i1 %16, !dbg !2810
}

; Function Attrs: noinline nounwind optnone
define internal void @finalize_cancel_locked(ptr noundef %0) #0 !dbg !2811 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2812, metadata !DIExpression()), !dbg !2813
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2814, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2816, metadata !DIExpression()), !dbg !2817
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2818, metadata !DIExpression()), !dbg !2819
  store ptr null, ptr %5, align 4, !dbg !2819
  %9 = load ptr, ptr %2, align 4, !dbg !2820
  %10 = getelementptr inbounds %struct.k_work, ptr %9, i32 0, i32 3, !dbg !2821
  call void @flag_clear(ptr noundef %10, i32 noundef 1), !dbg !2822
  %11 = call ptr @sys_slist_peek_head(ptr noundef @pending_cancels), !dbg !2823
  %12 = icmp ne ptr %11, null, !dbg !2823
  br i1 %12, label %13, label %17, !dbg !2825

13:                                               ; preds = %1
  %14 = call ptr @sys_slist_peek_head(ptr noundef @pending_cancels), !dbg !2826
  %15 = getelementptr inbounds i8, ptr %14, i32 0, !dbg !2828
  store ptr %15, ptr %6, align 4, !dbg !2829
  %16 = load ptr, ptr %6, align 4, !dbg !2830
  br label %18, !dbg !2825

17:                                               ; preds = %1
  br label %18, !dbg !2825

18:                                               ; preds = %17, %13
  %19 = phi ptr [ %16, %13 ], [ null, %17 ], !dbg !2825
  store ptr %19, ptr %3, align 4, !dbg !2831
  %20 = load ptr, ptr %3, align 4, !dbg !2832
  %21 = icmp ne ptr %20, null, !dbg !2833
  br i1 %21, label %22, label %36, !dbg !2833

22:                                               ; preds = %18
  %23 = load ptr, ptr %3, align 4, !dbg !2834
  %24 = getelementptr inbounds %struct.z_work_canceller, ptr %23, i32 0, i32 0, !dbg !2835
  %25 = call ptr @sys_slist_peek_next(ptr noundef %24), !dbg !2836
  %26 = icmp ne ptr %25, null, !dbg !2836
  br i1 %26, label %27, label %33, !dbg !2837

27:                                               ; preds = %22
  %28 = load ptr, ptr %3, align 4, !dbg !2838
  %29 = getelementptr inbounds %struct.z_work_canceller, ptr %28, i32 0, i32 0, !dbg !2840
  %30 = call ptr @sys_slist_peek_next(ptr noundef %29), !dbg !2841
  %31 = getelementptr inbounds i8, ptr %30, i32 0, !dbg !2842
  store ptr %31, ptr %7, align 4, !dbg !2843
  %32 = load ptr, ptr %7, align 4, !dbg !2844
  br label %34, !dbg !2837

33:                                               ; preds = %22
  br label %34, !dbg !2837

34:                                               ; preds = %33, %27
  %35 = phi ptr [ %32, %27 ], [ null, %33 ], !dbg !2837
  br label %37, !dbg !2833

36:                                               ; preds = %18
  br label %37, !dbg !2833

37:                                               ; preds = %36, %34
  %38 = phi ptr [ %35, %34 ], [ null, %36 ], !dbg !2833
  store ptr %38, ptr %4, align 4, !dbg !2845
  br label %39, !dbg !2846

39:                                               ; preds = %77, %37
  %40 = load ptr, ptr %3, align 4, !dbg !2847
  %41 = icmp ne ptr %40, null, !dbg !2849
  br i1 %41, label %42, label %79, !dbg !2850

42:                                               ; preds = %39
  %43 = load ptr, ptr %3, align 4, !dbg !2851
  %44 = getelementptr inbounds %struct.z_work_canceller, ptr %43, i32 0, i32 1, !dbg !2854
  %45 = load ptr, ptr %44, align 4, !dbg !2854
  %46 = load ptr, ptr %2, align 4, !dbg !2855
  %47 = icmp eq ptr %45, %46, !dbg !2856
  br i1 %47, label %48, label %54, !dbg !2857

48:                                               ; preds = %42
  %49 = load ptr, ptr %5, align 4, !dbg !2858
  %50 = load ptr, ptr %3, align 4, !dbg !2860
  %51 = getelementptr inbounds %struct.z_work_canceller, ptr %50, i32 0, i32 0, !dbg !2861
  call void @sys_slist_remove(ptr noundef @pending_cancels, ptr noundef %49, ptr noundef %51), !dbg !2862
  %52 = load ptr, ptr %3, align 4, !dbg !2863
  %53 = getelementptr inbounds %struct.z_work_canceller, ptr %52, i32 0, i32 2, !dbg !2864
  call void @k_sem_give(ptr noundef %53), !dbg !2865
  br label %57, !dbg !2866

54:                                               ; preds = %42
  %55 = load ptr, ptr %3, align 4, !dbg !2867
  %56 = getelementptr inbounds %struct.z_work_canceller, ptr %55, i32 0, i32 0, !dbg !2869
  store ptr %56, ptr %5, align 4, !dbg !2870
  br label %57

57:                                               ; preds = %54, %48
  br label %58, !dbg !2871

58:                                               ; preds = %57
  %59 = load ptr, ptr %4, align 4, !dbg !2872
  store ptr %59, ptr %3, align 4, !dbg !2873
  %60 = load ptr, ptr %3, align 4, !dbg !2874
  %61 = icmp ne ptr %60, null, !dbg !2875
  br i1 %61, label %62, label %76, !dbg !2875

62:                                               ; preds = %58
  %63 = load ptr, ptr %3, align 4, !dbg !2876
  %64 = getelementptr inbounds %struct.z_work_canceller, ptr %63, i32 0, i32 0, !dbg !2877
  %65 = call ptr @sys_slist_peek_next(ptr noundef %64), !dbg !2878
  %66 = icmp ne ptr %65, null, !dbg !2878
  br i1 %66, label %67, label %73, !dbg !2879

67:                                               ; preds = %62
  %68 = load ptr, ptr %3, align 4, !dbg !2880
  %69 = getelementptr inbounds %struct.z_work_canceller, ptr %68, i32 0, i32 0, !dbg !2882
  %70 = call ptr @sys_slist_peek_next(ptr noundef %69), !dbg !2883
  %71 = getelementptr inbounds i8, ptr %70, i32 0, !dbg !2884
  store ptr %71, ptr %8, align 4, !dbg !2885
  %72 = load ptr, ptr %8, align 4, !dbg !2886
  br label %74, !dbg !2879

73:                                               ; preds = %62
  br label %74, !dbg !2879

74:                                               ; preds = %73, %67
  %75 = phi ptr [ %72, %67 ], [ null, %73 ], !dbg !2879
  br label %77, !dbg !2875

76:                                               ; preds = %58
  br label %77, !dbg !2875

77:                                               ; preds = %76, %74
  %78 = phi ptr [ %75, %74 ], [ null, %76 ], !dbg !2875
  store ptr %78, ptr %4, align 4, !dbg !2887
  br label %39, !dbg !2888, !llvm.loop !2889

79:                                               ; preds = %39
  ret void, !dbg !2891
}

; Function Attrs: noinline nounwind optnone
define internal void @k_yield() #0 !dbg !2892 {
  br label %1, !dbg !2893

1:                                                ; preds = %0
  call void asm sideeffect "", "~{memory}"() #5, !dbg !2894, !srcloc !2896
  br label %2, !dbg !2897

2:                                                ; preds = %1
  call void @z_impl_k_yield(), !dbg !2898
  ret void, !dbg !2899
}

; Function Attrs: noinline nounwind optnone
define internal ptr @sys_slist_get_not_empty(ptr noundef %0) #0 !dbg !2900 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2901, metadata !DIExpression()), !dbg !2902
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2903, metadata !DIExpression()), !dbg !2904
  %4 = load ptr, ptr %2, align 4, !dbg !2905
  %5 = call ptr @sys_slist_peek_head(ptr noundef %4), !dbg !2906
  store ptr %5, ptr %3, align 4, !dbg !2904
  %6 = load ptr, ptr %2, align 4, !dbg !2907
  %7 = load ptr, ptr %3, align 4, !dbg !2908
  %8 = call ptr @z_snode_next_peek(ptr noundef %7), !dbg !2909
  call void @z_slist_head_set(ptr noundef %6, ptr noundef %8), !dbg !2910
  %9 = load ptr, ptr %2, align 4, !dbg !2911
  %10 = call ptr @sys_slist_peek_tail(ptr noundef %9), !dbg !2913
  %11 = load ptr, ptr %3, align 4, !dbg !2914
  %12 = icmp eq ptr %10, %11, !dbg !2915
  br i1 %12, label %13, label %17, !dbg !2916

13:                                               ; preds = %1
  %14 = load ptr, ptr %2, align 4, !dbg !2917
  %15 = load ptr, ptr %2, align 4, !dbg !2919
  %16 = call ptr @sys_slist_peek_head(ptr noundef %15), !dbg !2920
  call void @z_slist_tail_set(ptr noundef %14, ptr noundef %16), !dbg !2921
  br label %17, !dbg !2922

17:                                               ; preds = %13, %1
  %18 = load ptr, ptr %3, align 4, !dbg !2923
  ret ptr %18, !dbg !2924
}

declare zeroext i1 @z_sched_wake(ptr noundef, i32 noundef, ptr noundef) #4

declare void @z_impl_k_yield() #4

declare i32 @z_impl_k_thread_name_set(ptr noundef, ptr noundef) #4

declare void @z_impl_k_thread_start(ptr noundef) #4

; Function Attrs: noinline nounwind optnone
define internal void @sys_dnode_init(ptr noundef %0) #0 !dbg !2925 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2928, metadata !DIExpression()), !dbg !2929
  %3 = load ptr, ptr %2, align 4, !dbg !2930
  %4 = getelementptr inbounds %struct._dnode, ptr %3, i32 0, i32 0, !dbg !2931
  store ptr null, ptr %4, align 4, !dbg !2932
  %5 = load ptr, ptr %2, align 4, !dbg !2933
  %6 = getelementptr inbounds %struct._dnode, ptr %5, i32 0, i32 1, !dbg !2934
  store ptr null, ptr %6, align 4, !dbg !2935
  ret void, !dbg !2936
}

declare void @z_add_timeout(ptr noundef, ptr noundef, [1 x i64]) #4

; Function Attrs: noinline nounwind optnone
define internal void @work_timeout(ptr noundef %0) #0 !dbg !2937 {
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
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2938, metadata !DIExpression()), !dbg !2939
  call void @llvm.dbg.declare(metadata ptr %11, metadata !2940, metadata !DIExpression()), !dbg !2941
  %16 = load ptr, ptr %10, align 4, !dbg !2942
  %17 = getelementptr inbounds i8, ptr %16, i32 -16, !dbg !2944
  store ptr %17, ptr %12, align 4, !dbg !2945
  %18 = load ptr, ptr %12, align 4, !dbg !2946
  store ptr %18, ptr %11, align 4, !dbg !2941
  call void @llvm.dbg.declare(metadata ptr %13, metadata !2947, metadata !DIExpression()), !dbg !2948
  %19 = load ptr, ptr %11, align 4, !dbg !2949
  %20 = getelementptr inbounds %struct.k_work_delayable, ptr %19, i32 0, i32 0, !dbg !2950
  store ptr %20, ptr %13, align 4, !dbg !2948
  call void @llvm.dbg.declare(metadata ptr %14, metadata !2951, metadata !DIExpression()), !dbg !2952
  store ptr @lock, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !510, metadata !DIExpression()), !dbg !2953
  %21 = load ptr, ptr %9, align 4, !dbg !2955
  call void @llvm.dbg.declare(metadata ptr %8, metadata !518, metadata !DIExpression()), !dbg !2956
  call void @llvm.dbg.declare(metadata ptr %5, metadata !520, metadata !DIExpression()), !dbg !2957
  %22 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #5, !dbg !2959, !srcloc !528
  store i32 %22, ptr %5, align 4, !dbg !2959
  %23 = load i32, ptr %5, align 4, !dbg !2960
  store i32 %23, ptr %8, align 4, !dbg !2961
  %24 = load ptr, ptr %9, align 4, !dbg !2962
  store ptr %24, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !532, metadata !DIExpression()), !dbg !2963
  %25 = load ptr, ptr %4, align 4, !dbg !2965
  %26 = load ptr, ptr %9, align 4, !dbg !2966
  store ptr %26, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !540, metadata !DIExpression()), !dbg !2967
  %27 = load ptr, ptr %3, align 4, !dbg !2969
  %28 = load i32, ptr %8, align 4, !dbg !2970
  %29 = getelementptr inbounds %struct.z_spinlock_key, ptr %14, i32 0, i32 0, !dbg !2971
  store i32 %28, ptr %29, align 4, !dbg !2971
  call void @llvm.dbg.declare(metadata ptr %15, metadata !2972, metadata !DIExpression()), !dbg !2973
  store ptr null, ptr %15, align 4, !dbg !2973
  %30 = load ptr, ptr %13, align 4, !dbg !2974
  %31 = getelementptr inbounds %struct.k_work, ptr %30, i32 0, i32 3, !dbg !2976
  %32 = call zeroext i1 @flag_test_and_clear(ptr noundef %31, i32 noundef 3), !dbg !2977
  br i1 %32, label %33, label %39, !dbg !2978

33:                                               ; preds = %1
  %34 = load ptr, ptr %11, align 4, !dbg !2979
  %35 = getelementptr inbounds %struct.k_work_delayable, ptr %34, i32 0, i32 2, !dbg !2981
  %36 = load ptr, ptr %35, align 8, !dbg !2981
  store ptr %36, ptr %15, align 4, !dbg !2982
  %37 = load ptr, ptr %13, align 4, !dbg !2983
  %38 = call i32 @submit_to_queue_locked(ptr noundef %37, ptr noundef %15), !dbg !2984
  br label %39, !dbg !2985

39:                                               ; preds = %33, %1
  %40 = getelementptr inbounds %struct.z_spinlock_key, ptr %14, i32 0, i32 0, !dbg !2986
  %41 = load [1 x i32], ptr %40, align 4, !dbg !2986
  store [1 x i32] %41, ptr %6, align 4
  store ptr @lock, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !552, metadata !DIExpression()), !dbg !2987
  call void @llvm.dbg.declare(metadata ptr %6, metadata !558, metadata !DIExpression()), !dbg !2989
  %42 = load ptr, ptr %7, align 4, !dbg !2990
  %43 = load i32, ptr %6, align 4, !dbg !2991
  store i32 %43, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !562, metadata !DIExpression()), !dbg !2992
  %44 = load i32, ptr %2, align 4, !dbg !2994
  %45 = icmp ne i32 %44, 0, !dbg !2995
  br i1 %45, label %46, label %47, !dbg !2996

46:                                               ; preds = %39
  br label %arch_irq_unlock.exit, !dbg !2997

47:                                               ; preds = %39
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #5, !dbg !2998, !srcloc !575
  br label %arch_irq_unlock.exit, !dbg !2999

arch_irq_unlock.exit:                             ; preds = %46, %47
  ret void, !dbg !3000
}

declare i32 @z_abort_timeout(ptr noundef) #4

attributes #0 = { noinline nounwind optnone "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!294, !295, !296, !297, !298, !299, !300, !301}
!llvm.ident = !{!302}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "lock", scope: !2, file: !293, line: 63, type: !246, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !113, globals: !290, splitDebugInlining: false, nameTableKind: None)
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
!52 = !DIEnumerator(name: "K_OBJ_DRIVER_PWM", value: 18)
!53 = !DIEnumerator(name: "K_OBJ_DRIVER_RESET", value: 19)
!54 = !DIEnumerator(name: "K_OBJ_DRIVER_UART", value: 20)
!55 = !DIEnumerator(name: "K_OBJ_DRIVER_CRYPTO", value: 21)
!56 = !DIEnumerator(name: "K_OBJ_DRIVER_ADC", value: 22)
!57 = !DIEnumerator(name: "K_OBJ_DRIVER_AUXDISPLAY", value: 23)
!58 = !DIEnumerator(name: "K_OBJ_DRIVER_BBRAM", value: 24)
!59 = !DIEnumerator(name: "K_OBJ_DRIVER_CAN", value: 25)
!60 = !DIEnumerator(name: "K_OBJ_DRIVER_CHARGER", value: 26)
!61 = !DIEnumerator(name: "K_OBJ_DRIVER_COREDUMP", value: 27)
!62 = !DIEnumerator(name: "K_OBJ_DRIVER_COUNTER", value: 28)
!63 = !DIEnumerator(name: "K_OBJ_DRIVER_DAC", value: 29)
!64 = !DIEnumerator(name: "K_OBJ_DRIVER_DAI", value: 30)
!65 = !DIEnumerator(name: "K_OBJ_DRIVER_DMA", value: 31)
!66 = !DIEnumerator(name: "K_OBJ_DRIVER_EDAC", value: 32)
!67 = !DIEnumerator(name: "K_OBJ_DRIVER_EEPROM", value: 33)
!68 = !DIEnumerator(name: "K_OBJ_DRIVER_FUEL_GAUGE_EMUL", value: 34)
!69 = !DIEnumerator(name: "K_OBJ_DRIVER_EMUL_SENSOR_BACKEND_API", value: 35)
!70 = !DIEnumerator(name: "K_OBJ_DRIVER_ENTROPY", value: 36)
!71 = !DIEnumerator(name: "K_OBJ_DRIVER_ESPI", value: 37)
!72 = !DIEnumerator(name: "K_OBJ_DRIVER_ESPI_SAF", value: 38)
!73 = !DIEnumerator(name: "K_OBJ_DRIVER_FLASH", value: 39)
!74 = !DIEnumerator(name: "K_OBJ_DRIVER_FPGA", value: 40)
!75 = !DIEnumerator(name: "K_OBJ_DRIVER_FUEL_GAUGE", value: 41)
!76 = !DIEnumerator(name: "K_OBJ_DRIVER_HWSPINLOCK", value: 42)
!77 = !DIEnumerator(name: "K_OBJ_DRIVER_I2C", value: 43)
!78 = !DIEnumerator(name: "K_OBJ_DRIVER_I2S", value: 44)
!79 = !DIEnumerator(name: "K_OBJ_DRIVER_I3C", value: 45)
!80 = !DIEnumerator(name: "K_OBJ_DRIVER_IPM", value: 46)
!81 = !DIEnumerator(name: "K_OBJ_DRIVER_KSCAN", value: 47)
!82 = !DIEnumerator(name: "K_OBJ_DRIVER_LED", value: 48)
!83 = !DIEnumerator(name: "K_OBJ_DRIVER_MBOX", value: 49)
!84 = !DIEnumerator(name: "K_OBJ_DRIVER_MDIO", value: 50)
!85 = !DIEnumerator(name: "K_OBJ_DRIVER_MIPI_DSI", value: 51)
!86 = !DIEnumerator(name: "K_OBJ_DRIVER_PECI", value: 52)
!87 = !DIEnumerator(name: "K_OBJ_DRIVER_PS2", value: 53)
!88 = !DIEnumerator(name: "K_OBJ_DRIVER_PTP_CLOCK", value: 54)
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
!300 = !{i32 8, !"PIC Level", i32 2}
!301 = !{i32 7, !"PIE Level", i32 2}
!302 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
!303 = distinct !DISubprogram(name: "z_impl_k_object_access_grant", scope: !31, file: !31, line: 223, type: !304, scopeLine: 225, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!304 = !DISubroutineType(types: !305)
!305 = !{null, !306, !308}
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 32)
!307 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 32)
!309 = !DILocalVariable(name: "object", arg: 1, scope: !303, file: !31, line: 223, type: !306)
!310 = !DILocation(line: 223, column: 61, scope: !303)
!311 = !DILocalVariable(name: "thread", arg: 2, scope: !303, file: !31, line: 224, type: !308)
!312 = !DILocation(line: 224, column: 24, scope: !303)
!313 = !DILocation(line: 226, column: 9, scope: !303)
!314 = !DILocation(line: 227, column: 9, scope: !303)
!315 = !DILocation(line: 228, column: 1, scope: !303)
!316 = distinct !DISubprogram(name: "z_impl_k_object_release", scope: !31, file: !31, line: 243, type: !317, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!317 = !DISubroutineType(types: !318)
!318 = !{null, !306}
!319 = !DILocalVariable(name: "object", arg: 1, scope: !316, file: !31, line: 243, type: !306)
!320 = !DILocation(line: 243, column: 56, scope: !316)
!321 = !DILocation(line: 245, column: 9, scope: !316)
!322 = !DILocation(line: 246, column: 1, scope: !316)
!323 = distinct !DISubprogram(name: "z_impl_k_object_alloc", scope: !31, file: !31, line: 359, type: !324, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!324 = !DISubroutineType(types: !325)
!325 = !{!119, !30}
!326 = !DILocalVariable(name: "otype", arg: 1, scope: !323, file: !31, line: 359, type: !30)
!327 = !DILocation(line: 359, column: 58, scope: !323)
!328 = !DILocation(line: 361, column: 9, scope: !323)
!329 = !DILocation(line: 363, column: 2, scope: !323)
!330 = distinct !DISubprogram(name: "z_impl_k_object_alloc_size", scope: !31, file: !31, line: 366, type: !331, scopeLine: 368, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!331 = !DISubroutineType(types: !332)
!332 = !{!119, !30, !242}
!333 = !DILocalVariable(name: "otype", arg: 1, scope: !330, file: !31, line: 366, type: !30)
!334 = !DILocation(line: 366, column: 63, scope: !330)
!335 = !DILocalVariable(name: "size", arg: 2, scope: !330, file: !31, line: 367, type: !242)
!336 = !DILocation(line: 367, column: 13, scope: !330)
!337 = !DILocation(line: 369, column: 9, scope: !330)
!338 = !DILocation(line: 370, column: 9, scope: !330)
!339 = !DILocation(line: 372, column: 2, scope: !330)
!340 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_expires_ticks", scope: !6, file: !6, line: 656, type: !341, scopeLine: 658, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!341 = !DISubroutineType(types: !342)
!342 = !{!114, !343}
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 32)
!344 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !141)
!345 = !DILocalVariable(name: "t", arg: 1, scope: !340, file: !6, line: 657, type: !343)
!346 = !DILocation(line: 657, column: 30, scope: !340)
!347 = !DILocation(line: 659, column: 28, scope: !340)
!348 = !DILocation(line: 659, column: 31, scope: !340)
!349 = !DILocation(line: 659, column: 36, scope: !340)
!350 = !DILocation(line: 659, column: 9, scope: !340)
!351 = !DILocation(line: 659, column: 2, scope: !340)
!352 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_remaining_ticks", scope: !6, file: !6, line: 671, type: !341, scopeLine: 673, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!353 = !DILocalVariable(name: "t", arg: 1, scope: !352, file: !6, line: 672, type: !343)
!354 = !DILocation(line: 672, column: 30, scope: !352)
!355 = !DILocation(line: 674, column: 30, scope: !352)
!356 = !DILocation(line: 674, column: 33, scope: !352)
!357 = !DILocation(line: 674, column: 38, scope: !352)
!358 = !DILocation(line: 674, column: 9, scope: !352)
!359 = !DILocation(line: 674, column: 2, scope: !352)
!360 = distinct !DISubprogram(name: "z_impl_k_timer_expires_ticks", scope: !6, file: !6, line: 1634, type: !361, scopeLine: 1636, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!361 = !DISubroutineType(types: !362)
!362 = !{!114, !363}
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 32)
!364 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !365)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_timer", file: !6, line: 1439, size: 448, elements: !366)
!366 = !{!367, !368, !369, !374, !375, !380, !381}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !365, file: !6, line: 1445, baseType: !203, size: 192)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !365, file: !6, line: 1448, baseType: !177, size: 64, offset: 192)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_fn", scope: !365, file: !6, line: 1451, baseType: !370, size: 32, offset: 256)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 32)
!371 = !DISubroutineType(types: !372)
!372 = !{null, !373}
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 32)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "stop_fn", scope: !365, file: !6, line: 1454, baseType: !370, size: 32, offset: 288)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !365, file: !6, line: 1457, baseType: !376, size: 64, offset: 320)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_timeout_t", file: !115, line: 67, baseType: !377)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !115, line: 65, size: 64, elements: !378)
!378 = !{!379}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "ticks", scope: !377, file: !115, line: 66, baseType: !114, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !365, file: !6, line: 1460, baseType: !199, size: 32, offset: 384)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !365, file: !6, line: 1463, baseType: !119, size: 32, offset: 416)
!382 = !DILocalVariable(name: "timer", arg: 1, scope: !360, file: !6, line: 1635, type: !363)
!383 = !DILocation(line: 1635, column: 34, scope: !360)
!384 = !DILocation(line: 1637, column: 28, scope: !360)
!385 = !DILocation(line: 1637, column: 35, scope: !360)
!386 = !DILocation(line: 1637, column: 9, scope: !360)
!387 = !DILocation(line: 1637, column: 2, scope: !360)
!388 = distinct !DISubprogram(name: "z_impl_k_timer_remaining_ticks", scope: !6, file: !6, line: 1649, type: !361, scopeLine: 1651, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!389 = !DILocalVariable(name: "timer", arg: 1, scope: !388, file: !6, line: 1650, type: !363)
!390 = !DILocation(line: 1650, column: 34, scope: !388)
!391 = !DILocation(line: 1652, column: 30, scope: !388)
!392 = !DILocation(line: 1652, column: 37, scope: !388)
!393 = !DILocation(line: 1652, column: 9, scope: !388)
!394 = !DILocation(line: 1652, column: 2, scope: !388)
!395 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_set", scope: !6, file: !6, line: 1689, type: !396, scopeLine: 1691, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!396 = !DISubroutineType(types: !397)
!397 = !{null, !373, !119}
!398 = !DILocalVariable(name: "timer", arg: 1, scope: !395, file: !6, line: 1689, type: !373)
!399 = !DILocation(line: 1689, column: 65, scope: !395)
!400 = !DILocalVariable(name: "user_data", arg: 2, scope: !395, file: !6, line: 1690, type: !119)
!401 = !DILocation(line: 1690, column: 19, scope: !395)
!402 = !DILocation(line: 1692, column: 21, scope: !395)
!403 = !DILocation(line: 1692, column: 2, scope: !395)
!404 = !DILocation(line: 1692, column: 9, scope: !395)
!405 = !DILocation(line: 1692, column: 19, scope: !395)
!406 = !DILocation(line: 1693, column: 1, scope: !395)
!407 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_get", scope: !6, file: !6, line: 1704, type: !408, scopeLine: 1705, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!408 = !DISubroutineType(types: !409)
!409 = !{!119, !363}
!410 = !DILocalVariable(name: "timer", arg: 1, scope: !407, file: !6, line: 1704, type: !363)
!411 = !DILocation(line: 1704, column: 72, scope: !407)
!412 = !DILocation(line: 1706, column: 9, scope: !407)
!413 = !DILocation(line: 1706, column: 16, scope: !407)
!414 = !DILocation(line: 1706, column: 2, scope: !407)
!415 = distinct !DISubprogram(name: "z_impl_k_queue_is_empty", scope: !6, file: !6, line: 2071, type: !416, scopeLine: 2072, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!416 = !DISubroutineType(types: !417)
!417 = !{!120, !418}
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 32)
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_queue", file: !6, line: 1830, size: 128, elements: !420)
!420 = !{!421, !434, !435}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "data_q", scope: !419, file: !6, line: 1831, baseType: !422, size: 64)
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
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "unative_t", file: !423, line: 40, baseType: !199)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !424, file: !423, line: 55, baseType: !427, size: 32, offset: 32)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !419, file: !6, line: 1832, baseType: !246, offset: 64)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !419, file: !6, line: 1833, baseType: !177, size: 64, offset: 64)
!436 = !DILocalVariable(name: "queue", arg: 1, scope: !415, file: !6, line: 2071, type: !418)
!437 = !DILocation(line: 2071, column: 59, scope: !415)
!438 = !DILocation(line: 2073, column: 35, scope: !415)
!439 = !DILocation(line: 2073, column: 42, scope: !415)
!440 = !DILocation(line: 2073, column: 14, scope: !415)
!441 = !DILocation(line: 2073, column: 9, scope: !415)
!442 = !DILocation(line: 2073, column: 2, scope: !415)
!443 = distinct !DISubprogram(name: "z_impl_k_sem_count_get", scope: !6, file: !6, line: 3209, type: !444, scopeLine: 3210, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!444 = !DISubroutineType(types: !445)
!445 = !{!200, !446}
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 32)
!447 = !DILocalVariable(name: "sem", arg: 1, scope: !443, file: !6, line: 3209, type: !446)
!448 = !DILocation(line: 3209, column: 65, scope: !443)
!449 = !DILocation(line: 3211, column: 9, scope: !443)
!450 = !DILocation(line: 3211, column: 14, scope: !443)
!451 = !DILocation(line: 3211, column: 2, scope: !443)
!452 = distinct !DISubprogram(name: "z_impl_k_msgq_num_free_get", scope: !6, file: !6, line: 4649, type: !453, scopeLine: 4650, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!453 = !DISubroutineType(types: !454)
!454 = !{!199, !455}
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 32)
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_msgq", file: !6, line: 4390, size: 320, elements: !457)
!457 = !{!458, !459, !460, !461, !462, !463, !464, !465, !466, !467}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !456, file: !6, line: 4392, baseType: !177, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !456, file: !6, line: 4394, baseType: !246, offset: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "msg_size", scope: !456, file: !6, line: 4396, baseType: !242, size: 32, offset: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !456, file: !6, line: 4398, baseType: !199, size: 32, offset: 96)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_start", scope: !456, file: !6, line: 4400, baseType: !265, size: 32, offset: 128)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_end", scope: !456, file: !6, line: 4402, baseType: !265, size: 32, offset: 160)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "read_ptr", scope: !456, file: !6, line: 4404, baseType: !265, size: 32, offset: 192)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "write_ptr", scope: !456, file: !6, line: 4406, baseType: !265, size: 32, offset: 224)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "used_msgs", scope: !456, file: !6, line: 4408, baseType: !199, size: 32, offset: 256)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !456, file: !6, line: 4413, baseType: !184, size: 8, offset: 288)
!468 = !DILocalVariable(name: "msgq", arg: 1, scope: !452, file: !6, line: 4649, type: !455)
!469 = !DILocation(line: 4649, column: 66, scope: !452)
!470 = !DILocation(line: 4651, column: 9, scope: !452)
!471 = !DILocation(line: 4651, column: 15, scope: !452)
!472 = !DILocation(line: 4651, column: 26, scope: !452)
!473 = !DILocation(line: 4651, column: 32, scope: !452)
!474 = !DILocation(line: 4651, column: 24, scope: !452)
!475 = !DILocation(line: 4651, column: 2, scope: !452)
!476 = distinct !DISubprogram(name: "z_impl_k_msgq_num_used_get", scope: !6, file: !6, line: 4665, type: !453, scopeLine: 4666, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!477 = !DILocalVariable(name: "msgq", arg: 1, scope: !476, file: !6, line: 4665, type: !455)
!478 = !DILocation(line: 4665, column: 66, scope: !476)
!479 = !DILocation(line: 4667, column: 9, scope: !476)
!480 = !DILocation(line: 4667, column: 15, scope: !476)
!481 = !DILocation(line: 4667, column: 2, scope: !476)
!482 = distinct !DISubprogram(name: "k_work_init", scope: !293, file: !293, line: 134, type: !483, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !248)
!483 = !DISubroutineType(types: !484)
!484 = !{null, !121, !132}
!485 = !DILocalVariable(name: "work", arg: 1, scope: !482, file: !293, line: 134, type: !121)
!486 = !DILocation(line: 134, column: 33, scope: !482)
!487 = !DILocalVariable(name: "handler", arg: 2, scope: !482, file: !293, line: 135, type: !132)
!488 = !DILocation(line: 135, column: 22, scope: !482)
!489 = !DILocation(line: 140, column: 3, scope: !482)
!490 = !DILocation(line: 140, column: 25, scope: !482)
!491 = !DILocation(line: 140, column: 38, scope: !482)
!492 = !DILocation(line: 140, column: 10, scope: !482)
!493 = !DILocation(line: 142, column: 2, scope: !482)
!494 = !DILocation(line: 142, column: 7, scope: !495)
!495 = distinct !DILexicalBlock(scope: !482, file: !293, line: 142, column: 5)
!496 = !DILocation(line: 143, column: 1, scope: !482)
!497 = distinct !DISubprogram(name: "k_work_busy_get", scope: !293, file: !293, line: 150, type: !498, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !248)
!498 = !DISubroutineType(types: !499)
!499 = !{!120, !500}
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 32)
!501 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !122)
!502 = !DILocalVariable(name: "work", arg: 1, scope: !497, file: !293, line: 150, type: !500)
!503 = !DILocation(line: 150, column: 42, scope: !497)
!504 = !DILocalVariable(name: "key", scope: !497, file: !293, line: 152, type: !505)
!505 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_spinlock_key_t", file: !247, line: 108, baseType: !506)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "z_spinlock_key", file: !247, line: 34, size: 32, elements: !507)
!507 = !{!508}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !506, file: !247, line: 35, baseType: !120, size: 32)
!509 = !DILocation(line: 152, column: 19, scope: !497)
!510 = !DILocalVariable(name: "l", arg: 1, scope: !511, file: !247, line: 160, type: !514)
!511 = distinct !DISubprogram(name: "k_spin_lock", scope: !247, file: !247, line: 160, type: !512, scopeLine: 161, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!512 = !DISubroutineType(types: !513)
!513 = !{!505, !514}
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 32)
!515 = !DILocation(line: 160, column: 94, scope: !511, inlinedAt: !516)
!516 = distinct !DILocation(line: 152, column: 25, scope: !497)
!517 = !DILocation(line: 162, column: 9, scope: !511, inlinedAt: !516)
!518 = !DILocalVariable(name: "k", scope: !511, file: !247, line: 163, type: !505)
!519 = !DILocation(line: 163, column: 19, scope: !511, inlinedAt: !516)
!520 = !DILocalVariable(name: "key", scope: !521, file: !522, line: 44, type: !200)
!521 = distinct !DISubprogram(name: "arch_irq_lock", scope: !522, file: !522, line: 42, type: !523, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!522 = !DIFile(filename: "include/zephyr/arch/arm/asm_inline_gcc.h", directory: "/home/sri/zephyrproject/zephyr")
!523 = !DISubroutineType(types: !524)
!524 = !{!200}
!525 = !DILocation(line: 44, column: 15, scope: !521, inlinedAt: !526)
!526 = distinct !DILocation(line: 169, column: 10, scope: !511, inlinedAt: !516)
!527 = !DILocation(line: 48, column: 2, scope: !521, inlinedAt: !526)
!528 = !{i64 66942}
!529 = !DILocation(line: 80, column: 9, scope: !521, inlinedAt: !526)
!530 = !DILocation(line: 169, column: 8, scope: !511, inlinedAt: !516)
!531 = !DILocation(line: 171, column: 26, scope: !511, inlinedAt: !516)
!532 = !DILocalVariable(name: "l", arg: 1, scope: !533, file: !247, line: 110, type: !514)
!533 = distinct !DISubprogram(name: "z_spinlock_validate_pre", scope: !247, file: !247, line: 110, type: !534, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!534 = !DISubroutineType(types: !535)
!535 = !{null, !514}
!536 = !DILocation(line: 110, column: 94, scope: !533, inlinedAt: !537)
!537 = distinct !DILocation(line: 171, column: 2, scope: !511, inlinedAt: !516)
!538 = !DILocation(line: 112, column: 9, scope: !533, inlinedAt: !537)
!539 = !DILocation(line: 177, column: 27, scope: !511, inlinedAt: !516)
!540 = !DILocalVariable(name: "l", arg: 1, scope: !541, file: !247, line: 121, type: !514)
!541 = distinct !DISubprogram(name: "z_spinlock_validate_post", scope: !247, file: !247, line: 121, type: !534, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!542 = !DILocation(line: 121, column: 95, scope: !541, inlinedAt: !543)
!543 = distinct !DILocation(line: 177, column: 2, scope: !511, inlinedAt: !516)
!544 = !DILocation(line: 123, column: 9, scope: !541, inlinedAt: !543)
!545 = !DILocation(line: 179, column: 2, scope: !511, inlinedAt: !516)
!546 = !DILocation(line: 152, column: 25, scope: !497)
!547 = !DILocalVariable(name: "ret", scope: !497, file: !293, line: 153, type: !120)
!548 = !DILocation(line: 153, column: 6, scope: !497)
!549 = !DILocation(line: 153, column: 33, scope: !497)
!550 = !DILocation(line: 153, column: 12, scope: !497)
!551 = !DILocation(line: 155, column: 2, scope: !497)
!552 = !DILocalVariable(name: "l", arg: 1, scope: !553, file: !247, line: 235, type: !514)
!553 = distinct !DISubprogram(name: "k_spin_unlock", scope: !247, file: !247, line: 235, type: !554, scopeLine: 237, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!554 = !DISubroutineType(types: !555)
!555 = !{null, !514, !505}
!556 = !DILocation(line: 235, column: 84, scope: !553, inlinedAt: !557)
!557 = distinct !DILocation(line: 155, column: 2, scope: !497)
!558 = !DILocalVariable(name: "key", arg: 2, scope: !553, file: !247, line: 236, type: !505)
!559 = !DILocation(line: 236, column: 23, scope: !553, inlinedAt: !557)
!560 = !DILocation(line: 238, column: 9, scope: !553, inlinedAt: !557)
!561 = !DILocation(line: 261, column: 22, scope: !553, inlinedAt: !557)
!562 = !DILocalVariable(name: "key", arg: 1, scope: !563, file: !522, line: 88, type: !200)
!563 = distinct !DISubprogram(name: "arch_irq_unlock", scope: !522, file: !522, line: 88, type: !564, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!564 = !DISubroutineType(types: !565)
!565 = !{null, !200}
!566 = !DILocation(line: 88, column: 80, scope: !563, inlinedAt: !567)
!567 = distinct !DILocation(line: 261, column: 2, scope: !553, inlinedAt: !557)
!568 = !DILocation(line: 91, column: 6, scope: !569, inlinedAt: !567)
!569 = distinct !DILexicalBlock(scope: !563, file: !522, line: 91, column: 6)
!570 = !DILocation(line: 91, column: 10, scope: !569, inlinedAt: !567)
!571 = !DILocation(line: 91, column: 6, scope: !563, inlinedAt: !567)
!572 = !DILocation(line: 92, column: 3, scope: !573, inlinedAt: !567)
!573 = distinct !DILexicalBlock(scope: !569, file: !522, line: 91, column: 17)
!574 = !DILocation(line: 94, column: 2, scope: !563, inlinedAt: !567)
!575 = !{i64 67246}
!576 = !DILocation(line: 114, column: 1, scope: !563, inlinedAt: !567)
!577 = !DILocation(line: 157, column: 9, scope: !497)
!578 = !DILocation(line: 157, column: 2, scope: !497)
!579 = distinct !DISubprogram(name: "work_busy_get_locked", scope: !293, file: !293, line: 145, type: !498, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!580 = !DILocalVariable(name: "work", arg: 1, scope: !579, file: !293, line: 145, type: !500)
!581 = !DILocation(line: 145, column: 61, scope: !579)
!582 = !DILocation(line: 147, column: 20, scope: !579)
!583 = !DILocation(line: 147, column: 26, scope: !579)
!584 = !DILocation(line: 147, column: 9, scope: !579)
!585 = !DILocation(line: 147, column: 33, scope: !579)
!586 = !DILocation(line: 147, column: 2, scope: !579)
!587 = distinct !DISubprogram(name: "z_work_submit_to_queue", scope: !293, file: !293, line: 369, type: !588, scopeLine: 371, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !248)
!588 = !DISubroutineType(types: !589)
!589 = !{!120, !137, !121}
!590 = !DILocalVariable(name: "queue", arg: 1, scope: !587, file: !293, line: 369, type: !137)
!591 = !DILocation(line: 369, column: 45, scope: !587)
!592 = !DILocalVariable(name: "work", arg: 2, scope: !587, file: !293, line: 370, type: !121)
!593 = !DILocation(line: 370, column: 20, scope: !587)
!594 = !DILocalVariable(name: "key", scope: !587, file: !293, line: 375, type: !505)
!595 = !DILocation(line: 375, column: 19, scope: !587)
!596 = !DILocation(line: 160, column: 94, scope: !511, inlinedAt: !597)
!597 = distinct !DILocation(line: 375, column: 25, scope: !587)
!598 = !DILocation(line: 162, column: 9, scope: !511, inlinedAt: !597)
!599 = !DILocation(line: 163, column: 19, scope: !511, inlinedAt: !597)
!600 = !DILocation(line: 44, column: 15, scope: !521, inlinedAt: !601)
!601 = distinct !DILocation(line: 169, column: 10, scope: !511, inlinedAt: !597)
!602 = !DILocation(line: 48, column: 2, scope: !521, inlinedAt: !601)
!603 = !DILocation(line: 80, column: 9, scope: !521, inlinedAt: !601)
!604 = !DILocation(line: 169, column: 8, scope: !511, inlinedAt: !597)
!605 = !DILocation(line: 171, column: 26, scope: !511, inlinedAt: !597)
!606 = !DILocation(line: 110, column: 94, scope: !533, inlinedAt: !607)
!607 = distinct !DILocation(line: 171, column: 2, scope: !511, inlinedAt: !597)
!608 = !DILocation(line: 112, column: 9, scope: !533, inlinedAt: !607)
!609 = !DILocation(line: 177, column: 27, scope: !511, inlinedAt: !597)
!610 = !DILocation(line: 121, column: 95, scope: !541, inlinedAt: !611)
!611 = distinct !DILocation(line: 177, column: 2, scope: !511, inlinedAt: !597)
!612 = !DILocation(line: 123, column: 9, scope: !541, inlinedAt: !611)
!613 = !DILocation(line: 179, column: 2, scope: !511, inlinedAt: !597)
!614 = !DILocation(line: 375, column: 25, scope: !587)
!615 = !DILocalVariable(name: "ret", scope: !587, file: !293, line: 377, type: !120)
!616 = !DILocation(line: 377, column: 6, scope: !587)
!617 = !DILocation(line: 377, column: 35, scope: !587)
!618 = !DILocation(line: 377, column: 12, scope: !587)
!619 = !DILocation(line: 379, column: 2, scope: !587)
!620 = !DILocation(line: 235, column: 84, scope: !553, inlinedAt: !621)
!621 = distinct !DILocation(line: 379, column: 2, scope: !587)
!622 = !DILocation(line: 236, column: 23, scope: !553, inlinedAt: !621)
!623 = !DILocation(line: 238, column: 9, scope: !553, inlinedAt: !621)
!624 = !DILocation(line: 261, column: 22, scope: !553, inlinedAt: !621)
!625 = !DILocation(line: 88, column: 80, scope: !563, inlinedAt: !626)
!626 = distinct !DILocation(line: 261, column: 2, scope: !553, inlinedAt: !621)
!627 = !DILocation(line: 91, column: 6, scope: !569, inlinedAt: !626)
!628 = !DILocation(line: 91, column: 10, scope: !569, inlinedAt: !626)
!629 = !DILocation(line: 91, column: 6, scope: !563, inlinedAt: !626)
!630 = !DILocation(line: 92, column: 3, scope: !573, inlinedAt: !626)
!631 = !DILocation(line: 94, column: 2, scope: !563, inlinedAt: !626)
!632 = !DILocation(line: 114, column: 1, scope: !563, inlinedAt: !626)
!633 = !DILocation(line: 381, column: 9, scope: !587)
!634 = !DILocation(line: 381, column: 2, scope: !587)
!635 = distinct !DISubprogram(name: "submit_to_queue_locked", scope: !293, file: !293, line: 311, type: !636, scopeLine: 313, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!636 = !DISubroutineType(types: !637)
!637 = !{!120, !121, !638}
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 32)
!639 = !DILocalVariable(name: "work", arg: 1, scope: !635, file: !293, line: 311, type: !121)
!640 = !DILocation(line: 311, column: 50, scope: !635)
!641 = !DILocalVariable(name: "queuep", arg: 2, scope: !635, file: !293, line: 312, type: !638)
!642 = !DILocation(line: 312, column: 25, scope: !635)
!643 = !DILocalVariable(name: "ret", scope: !635, file: !293, line: 314, type: !120)
!644 = !DILocation(line: 314, column: 6, scope: !635)
!645 = !DILocation(line: 316, column: 17, scope: !646)
!646 = distinct !DILexicalBlock(scope: !635, file: !293, line: 316, column: 6)
!647 = !DILocation(line: 316, column: 23, scope: !646)
!648 = !DILocation(line: 316, column: 6, scope: !646)
!649 = !DILocation(line: 316, column: 6, scope: !635)
!650 = !DILocation(line: 318, column: 7, scope: !651)
!651 = distinct !DILexicalBlock(scope: !646, file: !293, line: 316, column: 53)
!652 = !DILocation(line: 319, column: 2, scope: !651)
!653 = !DILocation(line: 319, column: 25, scope: !654)
!654 = distinct !DILexicalBlock(scope: !646, file: !293, line: 319, column: 13)
!655 = !DILocation(line: 319, column: 31, scope: !654)
!656 = !DILocation(line: 319, column: 14, scope: !654)
!657 = !DILocation(line: 319, column: 13, scope: !646)
!658 = !DILocation(line: 321, column: 7, scope: !659)
!659 = distinct !DILexicalBlock(scope: !654, file: !293, line: 319, column: 58)
!660 = !DILocation(line: 325, column: 8, scope: !661)
!661 = distinct !DILexicalBlock(scope: !659, file: !293, line: 325, column: 7)
!662 = !DILocation(line: 325, column: 7, scope: !661)
!663 = !DILocation(line: 325, column: 15, scope: !661)
!664 = !DILocation(line: 325, column: 7, scope: !659)
!665 = !DILocation(line: 326, column: 14, scope: !666)
!666 = distinct !DILexicalBlock(scope: !661, file: !293, line: 325, column: 21)
!667 = !DILocation(line: 326, column: 20, scope: !666)
!668 = !DILocation(line: 326, column: 5, scope: !666)
!669 = !DILocation(line: 326, column: 12, scope: !666)
!670 = !DILocation(line: 327, column: 3, scope: !666)
!671 = !DILocation(line: 333, column: 18, scope: !672)
!672 = distinct !DILexicalBlock(scope: !659, file: !293, line: 333, column: 7)
!673 = !DILocation(line: 333, column: 24, scope: !672)
!674 = !DILocation(line: 333, column: 7, scope: !672)
!675 = !DILocation(line: 333, column: 7, scope: !659)
!676 = !DILocation(line: 335, column: 14, scope: !677)
!677 = distinct !DILexicalBlock(scope: !672, file: !293, line: 333, column: 52)
!678 = !DILocation(line: 335, column: 20, scope: !677)
!679 = !DILocation(line: 335, column: 5, scope: !677)
!680 = !DILocation(line: 335, column: 12, scope: !677)
!681 = !DILocation(line: 336, column: 8, scope: !677)
!682 = !DILocation(line: 337, column: 3, scope: !677)
!683 = !DILocalVariable(name: "rc", scope: !659, file: !293, line: 339, type: !120)
!684 = !DILocation(line: 339, column: 7, scope: !659)
!685 = !DILocation(line: 339, column: 33, scope: !659)
!686 = !DILocation(line: 339, column: 32, scope: !659)
!687 = !DILocation(line: 339, column: 41, scope: !659)
!688 = !DILocation(line: 339, column: 12, scope: !659)
!689 = !DILocation(line: 341, column: 7, scope: !690)
!690 = distinct !DILexicalBlock(scope: !659, file: !293, line: 341, column: 7)
!691 = !DILocation(line: 341, column: 10, scope: !690)
!692 = !DILocation(line: 341, column: 7, scope: !659)
!693 = !DILocation(line: 342, column: 10, scope: !694)
!694 = distinct !DILexicalBlock(scope: !690, file: !293, line: 341, column: 15)
!695 = !DILocation(line: 342, column: 8, scope: !694)
!696 = !DILocation(line: 343, column: 3, scope: !694)
!697 = !DILocation(line: 344, column: 14, scope: !698)
!698 = distinct !DILexicalBlock(scope: !690, file: !293, line: 343, column: 10)
!699 = !DILocation(line: 344, column: 20, scope: !698)
!700 = !DILocation(line: 344, column: 4, scope: !698)
!701 = !DILocation(line: 345, column: 19, scope: !698)
!702 = !DILocation(line: 345, column: 18, scope: !698)
!703 = !DILocation(line: 345, column: 4, scope: !698)
!704 = !DILocation(line: 345, column: 10, scope: !698)
!705 = !DILocation(line: 345, column: 16, scope: !698)
!706 = !DILocation(line: 347, column: 2, scope: !659)
!707 = !DILocation(line: 351, column: 6, scope: !708)
!708 = distinct !DILexicalBlock(scope: !635, file: !293, line: 351, column: 6)
!709 = !DILocation(line: 351, column: 10, scope: !708)
!710 = !DILocation(line: 351, column: 6, scope: !635)
!711 = !DILocation(line: 352, column: 4, scope: !712)
!712 = distinct !DILexicalBlock(scope: !708, file: !293, line: 351, column: 16)
!713 = !DILocation(line: 352, column: 11, scope: !712)
!714 = !DILocation(line: 353, column: 2, scope: !712)
!715 = !DILocation(line: 355, column: 9, scope: !635)
!716 = !DILocation(line: 355, column: 2, scope: !635)
!717 = distinct !DISubprogram(name: "k_work_submit_to_queue", scope: !293, file: !293, line: 384, type: !588, scopeLine: 386, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !248)
!718 = !DILocalVariable(name: "queue", arg: 1, scope: !717, file: !293, line: 384, type: !137)
!719 = !DILocation(line: 384, column: 45, scope: !717)
!720 = !DILocalVariable(name: "work", arg: 2, scope: !717, file: !293, line: 385, type: !121)
!721 = !DILocation(line: 385, column: 23, scope: !717)
!722 = !DILocation(line: 387, column: 2, scope: !717)
!723 = !DILocation(line: 387, column: 7, scope: !724)
!724 = distinct !DILexicalBlock(scope: !717, file: !293, line: 387, column: 5)
!725 = !DILocalVariable(name: "ret", scope: !717, file: !293, line: 389, type: !120)
!726 = !DILocation(line: 389, column: 6, scope: !717)
!727 = !DILocation(line: 389, column: 35, scope: !717)
!728 = !DILocation(line: 389, column: 42, scope: !717)
!729 = !DILocation(line: 389, column: 12, scope: !717)
!730 = !DILocation(line: 396, column: 6, scope: !731)
!731 = distinct !DILexicalBlock(scope: !717, file: !293, line: 396, column: 6)
!732 = !DILocation(line: 396, column: 10, scope: !731)
!733 = !DILocation(line: 396, column: 6, scope: !717)
!734 = !DILocation(line: 397, column: 3, scope: !735)
!735 = distinct !DILexicalBlock(scope: !731, file: !293, line: 396, column: 15)
!736 = !DILocation(line: 398, column: 2, scope: !735)
!737 = !DILocation(line: 400, column: 2, scope: !717)
!738 = !DILocation(line: 400, column: 7, scope: !739)
!739 = distinct !DILexicalBlock(scope: !717, file: !293, line: 400, column: 5)
!740 = !DILocation(line: 402, column: 9, scope: !717)
!741 = !DILocation(line: 402, column: 2, scope: !717)
!742 = distinct !DISubprogram(name: "z_reschedule_unlocked", scope: !743, file: !743, line: 75, type: !744, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!743 = !DIFile(filename: "kernel/include/ksched.h", directory: "/home/sri/zephyrproject/zephyr")
!744 = !DISubroutineType(types: !745)
!745 = !{null}
!746 = !DILocation(line: 44, column: 15, scope: !521, inlinedAt: !747)
!747 = distinct !DILocation(line: 77, column: 30, scope: !742)
!748 = !DILocation(line: 48, column: 2, scope: !521, inlinedAt: !747)
!749 = !DILocation(line: 80, column: 9, scope: !521, inlinedAt: !747)
!750 = !DILocation(line: 77, column: 9, scope: !742)
!751 = !DILocation(line: 78, column: 1, scope: !742)
!752 = distinct !DISubprogram(name: "k_work_submit", scope: !293, file: !293, line: 405, type: !753, scopeLine: 406, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !248)
!753 = !DISubroutineType(types: !754)
!754 = !{!120, !121}
!755 = !DILocalVariable(name: "work", arg: 1, scope: !752, file: !293, line: 405, type: !121)
!756 = !DILocation(line: 405, column: 34, scope: !752)
!757 = !DILocation(line: 407, column: 2, scope: !752)
!758 = !DILocation(line: 407, column: 7, scope: !759)
!759 = distinct !DILexicalBlock(scope: !752, file: !293, line: 407, column: 5)
!760 = !DILocalVariable(name: "ret", scope: !752, file: !293, line: 409, type: !120)
!761 = !DILocation(line: 409, column: 6, scope: !752)
!762 = !DILocation(line: 409, column: 50, scope: !752)
!763 = !DILocation(line: 409, column: 12, scope: !752)
!764 = !DILocation(line: 411, column: 2, scope: !752)
!765 = !DILocation(line: 411, column: 7, scope: !766)
!766 = distinct !DILexicalBlock(scope: !752, file: !293, line: 411, column: 5)
!767 = !DILocation(line: 413, column: 9, scope: !752)
!768 = !DILocation(line: 413, column: 2, scope: !752)
!769 = distinct !DISubprogram(name: "k_work_flush", scope: !293, file: !293, line: 449, type: !770, scopeLine: 451, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !248)
!770 = !DISubroutineType(types: !771)
!771 = !{!772, !121, !773}
!772 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 32)
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_work_sync", file: !6, line: 3960, size: 256, elements: !775)
!775 = !{!776}
!776 = !DIDerivedType(tag: DW_TAG_member, scope: !774, file: !6, line: 3961, baseType: !777, size: 256)
!777 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !774, file: !6, line: 3961, size: 256, elements: !778)
!778 = !{!779, !780}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "flusher", scope: !777, file: !6, line: 3962, baseType: !268, size: 256)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "canceller", scope: !777, file: !6, line: 3963, baseType: !279, size: 192)
!781 = !DILocalVariable(name: "work", arg: 1, scope: !769, file: !293, line: 449, type: !121)
!782 = !DILocation(line: 449, column: 35, scope: !769)
!783 = !DILocalVariable(name: "sync", arg: 2, scope: !769, file: !293, line: 450, type: !773)
!784 = !DILocation(line: 450, column: 25, scope: !769)
!785 = !DILocation(line: 460, column: 2, scope: !769)
!786 = !DILocation(line: 460, column: 7, scope: !787)
!787 = distinct !DILexicalBlock(scope: !769, file: !293, line: 460, column: 5)
!788 = !DILocalVariable(name: "flusher", scope: !769, file: !293, line: 462, type: !267)
!789 = !DILocation(line: 462, column: 25, scope: !769)
!790 = !DILocation(line: 462, column: 36, scope: !769)
!791 = !DILocation(line: 462, column: 42, scope: !769)
!792 = !DILocalVariable(name: "key", scope: !769, file: !293, line: 463, type: !505)
!793 = !DILocation(line: 463, column: 19, scope: !769)
!794 = !DILocation(line: 160, column: 94, scope: !511, inlinedAt: !795)
!795 = distinct !DILocation(line: 463, column: 25, scope: !769)
!796 = !DILocation(line: 162, column: 9, scope: !511, inlinedAt: !795)
!797 = !DILocation(line: 163, column: 19, scope: !511, inlinedAt: !795)
!798 = !DILocation(line: 44, column: 15, scope: !521, inlinedAt: !799)
!799 = distinct !DILocation(line: 169, column: 10, scope: !511, inlinedAt: !795)
!800 = !DILocation(line: 48, column: 2, scope: !521, inlinedAt: !799)
!801 = !DILocation(line: 80, column: 9, scope: !521, inlinedAt: !799)
!802 = !DILocation(line: 169, column: 8, scope: !511, inlinedAt: !795)
!803 = !DILocation(line: 171, column: 26, scope: !511, inlinedAt: !795)
!804 = !DILocation(line: 110, column: 94, scope: !533, inlinedAt: !805)
!805 = distinct !DILocation(line: 171, column: 2, scope: !511, inlinedAt: !795)
!806 = !DILocation(line: 112, column: 9, scope: !533, inlinedAt: !805)
!807 = !DILocation(line: 177, column: 27, scope: !511, inlinedAt: !795)
!808 = !DILocation(line: 121, column: 95, scope: !541, inlinedAt: !809)
!809 = distinct !DILocation(line: 177, column: 2, scope: !511, inlinedAt: !795)
!810 = !DILocation(line: 123, column: 9, scope: !541, inlinedAt: !809)
!811 = !DILocation(line: 179, column: 2, scope: !511, inlinedAt: !795)
!812 = !DILocation(line: 463, column: 25, scope: !769)
!813 = !DILocalVariable(name: "need_flush", scope: !769, file: !293, line: 465, type: !772)
!814 = !DILocation(line: 465, column: 8, scope: !769)
!815 = !DILocation(line: 465, column: 39, scope: !769)
!816 = !DILocation(line: 465, column: 45, scope: !769)
!817 = !DILocation(line: 465, column: 21, scope: !769)
!818 = !DILocation(line: 467, column: 2, scope: !769)
!819 = !DILocation(line: 235, column: 84, scope: !553, inlinedAt: !820)
!820 = distinct !DILocation(line: 467, column: 2, scope: !769)
!821 = !DILocation(line: 236, column: 23, scope: !553, inlinedAt: !820)
!822 = !DILocation(line: 238, column: 9, scope: !553, inlinedAt: !820)
!823 = !DILocation(line: 261, column: 22, scope: !553, inlinedAt: !820)
!824 = !DILocation(line: 88, column: 80, scope: !563, inlinedAt: !825)
!825 = distinct !DILocation(line: 261, column: 2, scope: !553, inlinedAt: !820)
!826 = !DILocation(line: 91, column: 6, scope: !569, inlinedAt: !825)
!827 = !DILocation(line: 91, column: 10, scope: !569, inlinedAt: !825)
!828 = !DILocation(line: 91, column: 6, scope: !563, inlinedAt: !825)
!829 = !DILocation(line: 92, column: 3, scope: !573, inlinedAt: !825)
!830 = !DILocation(line: 94, column: 2, scope: !563, inlinedAt: !825)
!831 = !DILocation(line: 114, column: 1, scope: !563, inlinedAt: !825)
!832 = !DILocation(line: 470, column: 6, scope: !833)
!833 = distinct !DILexicalBlock(scope: !769, file: !293, line: 470, column: 6)
!834 = !DILocation(line: 470, column: 6, scope: !769)
!835 = !DILocation(line: 471, column: 3, scope: !836)
!836 = distinct !DILexicalBlock(scope: !833, file: !293, line: 470, column: 18)
!837 = !DILocation(line: 471, column: 8, scope: !838)
!838 = distinct !DILexicalBlock(scope: !836, file: !293, line: 471, column: 6)
!839 = !DILocation(line: 473, column: 15, scope: !836)
!840 = !DILocation(line: 473, column: 24, scope: !836)
!841 = !DILocation(line: 473, column: 44, scope: !836)
!842 = !DILocation(line: 473, column: 3, scope: !836)
!843 = !DILocation(line: 474, column: 2, scope: !836)
!844 = !DILocation(line: 476, column: 2, scope: !769)
!845 = !DILocation(line: 476, column: 7, scope: !846)
!846 = distinct !DILexicalBlock(scope: !769, file: !293, line: 476, column: 5)
!847 = !DILocation(line: 478, column: 9, scope: !769)
!848 = !DILocation(line: 478, column: 2, scope: !769)
!849 = distinct !DISubprogram(name: "work_flush_locked", scope: !293, file: !293, line: 431, type: !850, scopeLine: 433, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!850 = !DISubroutineType(types: !851)
!851 = !{!772, !121, !267}
!852 = !DILocalVariable(name: "work", arg: 1, scope: !849, file: !293, line: 431, type: !121)
!853 = !DILocation(line: 431, column: 47, scope: !849)
!854 = !DILocalVariable(name: "flusher", arg: 2, scope: !849, file: !293, line: 432, type: !267)
!855 = !DILocation(line: 432, column: 33, scope: !849)
!856 = !DILocalVariable(name: "need_flush", scope: !849, file: !293, line: 434, type: !772)
!857 = !DILocation(line: 434, column: 8, scope: !849)
!858 = !DILocation(line: 434, column: 33, scope: !849)
!859 = !DILocation(line: 434, column: 39, scope: !849)
!860 = !DILocation(line: 434, column: 22, scope: !849)
!861 = !DILocation(line: 435, column: 7, scope: !849)
!862 = !DILocation(line: 435, column: 43, scope: !849)
!863 = !DILocation(line: 437, column: 6, scope: !864)
!864 = distinct !DILexicalBlock(scope: !849, file: !293, line: 437, column: 6)
!865 = !DILocation(line: 437, column: 6, scope: !849)
!866 = !DILocalVariable(name: "queue", scope: !867, file: !293, line: 438, type: !137)
!867 = distinct !DILexicalBlock(scope: !864, file: !293, line: 437, column: 18)
!868 = !DILocation(line: 438, column: 20, scope: !867)
!869 = !DILocation(line: 438, column: 28, scope: !867)
!870 = !DILocation(line: 438, column: 34, scope: !867)
!871 = !DILocation(line: 442, column: 24, scope: !867)
!872 = !DILocation(line: 442, column: 31, scope: !867)
!873 = !DILocation(line: 442, column: 37, scope: !867)
!874 = !DILocation(line: 442, column: 3, scope: !867)
!875 = !DILocation(line: 443, column: 23, scope: !867)
!876 = !DILocation(line: 443, column: 3, scope: !867)
!877 = !DILocation(line: 444, column: 2, scope: !867)
!878 = !DILocation(line: 446, column: 9, scope: !849)
!879 = !DILocation(line: 446, column: 2, scope: !849)
!880 = distinct !DISubprogram(name: "k_sem_take", scope: !881, file: !881, line: 1093, type: !882, scopeLine: 1094, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!881 = !DIFile(filename: "zephyr/include/generated/syscalls/kernel.h", directory: "/home/sri/zephyrproject/zephyr/build")
!882 = !DISubroutineType(types: !883)
!883 = !{!120, !446, !376}
!884 = !DILocalVariable(name: "sem", arg: 1, scope: !880, file: !881, line: 1093, type: !446)
!885 = !DILocation(line: 1093, column: 45, scope: !880)
!886 = !DILocalVariable(name: "timeout", arg: 2, scope: !880, file: !881, line: 1093, type: !376)
!887 = !DILocation(line: 1093, column: 62, scope: !880)
!888 = !DILocation(line: 1102, column: 2, scope: !880)
!889 = !DILocation(line: 1102, column: 7, scope: !890)
!890 = distinct !DILexicalBlock(scope: !880, file: !881, line: 1102, column: 5)
!891 = !{i64 150120}
!892 = !DILocation(line: 1102, column: 47, scope: !890)
!893 = !DILocation(line: 1103, column: 27, scope: !880)
!894 = !DILocation(line: 1103, column: 9, scope: !880)
!895 = !DILocation(line: 1103, column: 2, scope: !880)
!896 = distinct !DISubprogram(name: "k_work_cancel", scope: !293, file: !293, line: 544, type: !753, scopeLine: 545, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !248)
!897 = !DILocalVariable(name: "work", arg: 1, scope: !896, file: !293, line: 544, type: !121)
!898 = !DILocation(line: 544, column: 34, scope: !896)
!899 = !DILocation(line: 549, column: 2, scope: !896)
!900 = !DILocation(line: 549, column: 7, scope: !901)
!901 = distinct !DILexicalBlock(scope: !896, file: !293, line: 549, column: 5)
!902 = !DILocalVariable(name: "key", scope: !896, file: !293, line: 551, type: !505)
!903 = !DILocation(line: 551, column: 19, scope: !896)
!904 = !DILocation(line: 160, column: 94, scope: !511, inlinedAt: !905)
!905 = distinct !DILocation(line: 551, column: 25, scope: !896)
!906 = !DILocation(line: 162, column: 9, scope: !511, inlinedAt: !905)
!907 = !DILocation(line: 163, column: 19, scope: !511, inlinedAt: !905)
!908 = !DILocation(line: 44, column: 15, scope: !521, inlinedAt: !909)
!909 = distinct !DILocation(line: 169, column: 10, scope: !511, inlinedAt: !905)
!910 = !DILocation(line: 48, column: 2, scope: !521, inlinedAt: !909)
!911 = !DILocation(line: 80, column: 9, scope: !521, inlinedAt: !909)
!912 = !DILocation(line: 169, column: 8, scope: !511, inlinedAt: !905)
!913 = !DILocation(line: 171, column: 26, scope: !511, inlinedAt: !905)
!914 = !DILocation(line: 110, column: 94, scope: !533, inlinedAt: !915)
!915 = distinct !DILocation(line: 171, column: 2, scope: !511, inlinedAt: !905)
!916 = !DILocation(line: 112, column: 9, scope: !533, inlinedAt: !915)
!917 = !DILocation(line: 177, column: 27, scope: !511, inlinedAt: !905)
!918 = !DILocation(line: 121, column: 95, scope: !541, inlinedAt: !919)
!919 = distinct !DILocation(line: 177, column: 2, scope: !511, inlinedAt: !905)
!920 = !DILocation(line: 123, column: 9, scope: !541, inlinedAt: !919)
!921 = !DILocation(line: 179, column: 2, scope: !511, inlinedAt: !905)
!922 = !DILocation(line: 551, column: 25, scope: !896)
!923 = !DILocalVariable(name: "ret", scope: !896, file: !293, line: 552, type: !120)
!924 = !DILocation(line: 552, column: 6, scope: !896)
!925 = !DILocation(line: 552, column: 32, scope: !896)
!926 = !DILocation(line: 552, column: 12, scope: !896)
!927 = !DILocation(line: 554, column: 2, scope: !896)
!928 = !DILocation(line: 235, column: 84, scope: !553, inlinedAt: !929)
!929 = distinct !DILocation(line: 554, column: 2, scope: !896)
!930 = !DILocation(line: 236, column: 23, scope: !553, inlinedAt: !929)
!931 = !DILocation(line: 238, column: 9, scope: !553, inlinedAt: !929)
!932 = !DILocation(line: 261, column: 22, scope: !553, inlinedAt: !929)
!933 = !DILocation(line: 88, column: 80, scope: !563, inlinedAt: !934)
!934 = distinct !DILocation(line: 261, column: 2, scope: !553, inlinedAt: !929)
!935 = !DILocation(line: 91, column: 6, scope: !569, inlinedAt: !934)
!936 = !DILocation(line: 91, column: 10, scope: !569, inlinedAt: !934)
!937 = !DILocation(line: 91, column: 6, scope: !563, inlinedAt: !934)
!938 = !DILocation(line: 92, column: 3, scope: !573, inlinedAt: !934)
!939 = !DILocation(line: 94, column: 2, scope: !563, inlinedAt: !934)
!940 = !DILocation(line: 114, column: 1, scope: !563, inlinedAt: !934)
!941 = !DILocation(line: 556, column: 2, scope: !896)
!942 = !DILocation(line: 556, column: 7, scope: !943)
!943 = distinct !DILexicalBlock(scope: !896, file: !293, line: 556, column: 5)
!944 = !DILocation(line: 558, column: 9, scope: !896)
!945 = !DILocation(line: 558, column: 2, scope: !896)
!946 = distinct !DISubprogram(name: "cancel_async_locked", scope: !293, file: !293, line: 492, type: !753, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!947 = !DILocalVariable(name: "work", arg: 1, scope: !946, file: !293, line: 492, type: !121)
!948 = !DILocation(line: 492, column: 47, scope: !946)
!949 = !DILocation(line: 495, column: 18, scope: !950)
!950 = distinct !DILexicalBlock(scope: !946, file: !293, line: 495, column: 6)
!951 = !DILocation(line: 495, column: 24, scope: !950)
!952 = !DILocation(line: 495, column: 7, scope: !950)
!953 = !DILocation(line: 495, column: 6, scope: !946)
!954 = !DILocation(line: 497, column: 23, scope: !955)
!955 = distinct !DILexicalBlock(scope: !950, file: !293, line: 495, column: 54)
!956 = !DILocation(line: 497, column: 29, scope: !955)
!957 = !DILocation(line: 497, column: 36, scope: !955)
!958 = !DILocation(line: 497, column: 3, scope: !955)
!959 = !DILocation(line: 498, column: 2, scope: !955)
!960 = !DILocalVariable(name: "ret", scope: !946, file: !293, line: 503, type: !120)
!961 = !DILocation(line: 503, column: 6, scope: !946)
!962 = !DILocation(line: 503, column: 33, scope: !946)
!963 = !DILocation(line: 503, column: 12, scope: !946)
!964 = !DILocation(line: 505, column: 6, scope: !965)
!965 = distinct !DILexicalBlock(scope: !946, file: !293, line: 505, column: 6)
!966 = !DILocation(line: 505, column: 10, scope: !965)
!967 = !DILocation(line: 505, column: 6, scope: !946)
!968 = !DILocation(line: 506, column: 13, scope: !969)
!969 = distinct !DILexicalBlock(scope: !965, file: !293, line: 505, column: 16)
!970 = !DILocation(line: 506, column: 19, scope: !969)
!971 = !DILocation(line: 506, column: 3, scope: !969)
!972 = !DILocation(line: 507, column: 30, scope: !969)
!973 = !DILocation(line: 507, column: 9, scope: !969)
!974 = !DILocation(line: 507, column: 7, scope: !969)
!975 = !DILocation(line: 508, column: 2, scope: !969)
!976 = !DILocation(line: 510, column: 9, scope: !946)
!977 = !DILocation(line: 510, column: 2, scope: !946)
!978 = distinct !DISubprogram(name: "k_work_cancel_sync", scope: !293, file: !293, line: 561, type: !770, scopeLine: 563, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !248)
!979 = !DILocalVariable(name: "work", arg: 1, scope: !978, file: !293, line: 561, type: !121)
!980 = !DILocation(line: 561, column: 41, scope: !978)
!981 = !DILocalVariable(name: "sync", arg: 2, scope: !978, file: !293, line: 562, type: !773)
!982 = !DILocation(line: 562, column: 24, scope: !978)
!983 = !DILocation(line: 572, column: 2, scope: !978)
!984 = !DILocation(line: 572, column: 7, scope: !985)
!985 = distinct !DILexicalBlock(scope: !978, file: !293, line: 572, column: 5)
!986 = !DILocalVariable(name: "canceller", scope: !978, file: !293, line: 574, type: !278)
!987 = !DILocation(line: 574, column: 27, scope: !978)
!988 = !DILocation(line: 574, column: 40, scope: !978)
!989 = !DILocation(line: 574, column: 46, scope: !978)
!990 = !DILocalVariable(name: "key", scope: !978, file: !293, line: 575, type: !505)
!991 = !DILocation(line: 575, column: 19, scope: !978)
!992 = !DILocation(line: 160, column: 94, scope: !511, inlinedAt: !993)
!993 = distinct !DILocation(line: 575, column: 25, scope: !978)
!994 = !DILocation(line: 162, column: 9, scope: !511, inlinedAt: !993)
!995 = !DILocation(line: 163, column: 19, scope: !511, inlinedAt: !993)
!996 = !DILocation(line: 44, column: 15, scope: !521, inlinedAt: !997)
!997 = distinct !DILocation(line: 169, column: 10, scope: !511, inlinedAt: !993)
!998 = !DILocation(line: 48, column: 2, scope: !521, inlinedAt: !997)
!999 = !DILocation(line: 80, column: 9, scope: !521, inlinedAt: !997)
!1000 = !DILocation(line: 169, column: 8, scope: !511, inlinedAt: !993)
!1001 = !DILocation(line: 171, column: 26, scope: !511, inlinedAt: !993)
!1002 = !DILocation(line: 110, column: 94, scope: !533, inlinedAt: !1003)
!1003 = distinct !DILocation(line: 171, column: 2, scope: !511, inlinedAt: !993)
!1004 = !DILocation(line: 112, column: 9, scope: !533, inlinedAt: !1003)
!1005 = !DILocation(line: 177, column: 27, scope: !511, inlinedAt: !993)
!1006 = !DILocation(line: 121, column: 95, scope: !541, inlinedAt: !1007)
!1007 = distinct !DILocation(line: 177, column: 2, scope: !511, inlinedAt: !993)
!1008 = !DILocation(line: 123, column: 9, scope: !541, inlinedAt: !1007)
!1009 = !DILocation(line: 179, column: 2, scope: !511, inlinedAt: !993)
!1010 = !DILocation(line: 575, column: 25, scope: !978)
!1011 = !DILocalVariable(name: "pending", scope: !978, file: !293, line: 576, type: !772)
!1012 = !DILocation(line: 576, column: 8, scope: !978)
!1013 = !DILocation(line: 576, column: 40, scope: !978)
!1014 = !DILocation(line: 576, column: 19, scope: !978)
!1015 = !DILocation(line: 576, column: 46, scope: !978)
!1016 = !DILocalVariable(name: "need_wait", scope: !978, file: !293, line: 577, type: !772)
!1017 = !DILocation(line: 577, column: 8, scope: !978)
!1018 = !DILocation(line: 579, column: 6, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !978, file: !293, line: 579, column: 6)
!1020 = !DILocation(line: 579, column: 6, scope: !978)
!1021 = !DILocation(line: 580, column: 29, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !1019, file: !293, line: 579, column: 15)
!1023 = !DILocation(line: 580, column: 9, scope: !1022)
!1024 = !DILocation(line: 581, column: 34, scope: !1022)
!1025 = !DILocation(line: 581, column: 40, scope: !1022)
!1026 = !DILocation(line: 581, column: 15, scope: !1022)
!1027 = !DILocation(line: 581, column: 13, scope: !1022)
!1028 = !DILocation(line: 582, column: 2, scope: !1022)
!1029 = !DILocation(line: 584, column: 2, scope: !978)
!1030 = !DILocation(line: 235, column: 84, scope: !553, inlinedAt: !1031)
!1031 = distinct !DILocation(line: 584, column: 2, scope: !978)
!1032 = !DILocation(line: 236, column: 23, scope: !553, inlinedAt: !1031)
!1033 = !DILocation(line: 238, column: 9, scope: !553, inlinedAt: !1031)
!1034 = !DILocation(line: 261, column: 22, scope: !553, inlinedAt: !1031)
!1035 = !DILocation(line: 88, column: 80, scope: !563, inlinedAt: !1036)
!1036 = distinct !DILocation(line: 261, column: 2, scope: !553, inlinedAt: !1031)
!1037 = !DILocation(line: 91, column: 6, scope: !569, inlinedAt: !1036)
!1038 = !DILocation(line: 91, column: 10, scope: !569, inlinedAt: !1036)
!1039 = !DILocation(line: 91, column: 6, scope: !563, inlinedAt: !1036)
!1040 = !DILocation(line: 92, column: 3, scope: !573, inlinedAt: !1036)
!1041 = !DILocation(line: 94, column: 2, scope: !563, inlinedAt: !1036)
!1042 = !DILocation(line: 114, column: 1, scope: !563, inlinedAt: !1036)
!1043 = !DILocation(line: 586, column: 6, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !978, file: !293, line: 586, column: 6)
!1045 = !DILocation(line: 586, column: 6, scope: !978)
!1046 = !DILocation(line: 587, column: 3, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !1044, file: !293, line: 586, column: 17)
!1048 = !DILocation(line: 587, column: 8, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !1047, file: !293, line: 587, column: 6)
!1050 = !DILocation(line: 589, column: 15, scope: !1047)
!1051 = !DILocation(line: 589, column: 26, scope: !1047)
!1052 = !DILocation(line: 589, column: 46, scope: !1047)
!1053 = !DILocation(line: 589, column: 3, scope: !1047)
!1054 = !DILocation(line: 590, column: 2, scope: !1047)
!1055 = !DILocation(line: 592, column: 2, scope: !978)
!1056 = !DILocation(line: 592, column: 7, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !978, file: !293, line: 592, column: 5)
!1058 = !DILocation(line: 593, column: 9, scope: !978)
!1059 = !DILocation(line: 593, column: 2, scope: !978)
!1060 = distinct !DISubprogram(name: "cancel_sync_locked", scope: !293, file: !293, line: 528, type: !1061, scopeLine: 530, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!1061 = !DISubroutineType(types: !1062)
!1062 = !{!772, !121, !278}
!1063 = !DILocalVariable(name: "work", arg: 1, scope: !1060, file: !293, line: 528, type: !121)
!1064 = !DILocation(line: 528, column: 48, scope: !1060)
!1065 = !DILocalVariable(name: "canceller", arg: 2, scope: !1060, file: !293, line: 529, type: !278)
!1066 = !DILocation(line: 529, column: 36, scope: !1060)
!1067 = !DILocalVariable(name: "ret", scope: !1060, file: !293, line: 531, type: !772)
!1068 = !DILocation(line: 531, column: 8, scope: !1060)
!1069 = !DILocation(line: 531, column: 25, scope: !1060)
!1070 = !DILocation(line: 531, column: 31, scope: !1060)
!1071 = !DILocation(line: 531, column: 14, scope: !1060)
!1072 = !DILocation(line: 537, column: 6, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !1060, file: !293, line: 537, column: 6)
!1074 = !DILocation(line: 537, column: 6, scope: !1060)
!1075 = !DILocation(line: 538, column: 20, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1073, file: !293, line: 537, column: 11)
!1077 = !DILocation(line: 538, column: 31, scope: !1076)
!1078 = !DILocation(line: 538, column: 3, scope: !1076)
!1079 = !DILocation(line: 539, column: 2, scope: !1076)
!1080 = !DILocation(line: 541, column: 9, scope: !1060)
!1081 = !DILocation(line: 541, column: 2, scope: !1060)
!1082 = distinct !DISubprogram(name: "k_work_queue_init", scope: !293, file: !293, line: 699, type: !1083, scopeLine: 700, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !248)
!1083 = !DISubroutineType(types: !1084)
!1084 = !{null, !137}
!1085 = !DILocalVariable(name: "queue", arg: 1, scope: !1082, file: !293, line: 699, type: !137)
!1086 = !DILocation(line: 699, column: 41, scope: !1082)
!1087 = !DILocation(line: 703, column: 3, scope: !1082)
!1088 = !DILocation(line: 703, column: 11, scope: !1082)
!1089 = !DILocation(line: 707, column: 2, scope: !1082)
!1090 = !DILocation(line: 707, column: 7, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !1082, file: !293, line: 707, column: 5)
!1092 = !DILocation(line: 708, column: 1, scope: !1082)
!1093 = distinct !DISubprogram(name: "k_work_queue_start", scope: !293, file: !293, line: 710, type: !1094, scopeLine: 715, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !248)
!1094 = !DISubroutineType(types: !1095)
!1095 = !{null, !137, !1096, !1103, !120, !1105}
!1096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1097, size: 32)
!1097 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_thread_stack_t", file: !1098, line: 44, baseType: !1099)
!1098 = !DIFile(filename: "include/zephyr/sys/arch_interface.h", directory: "/home/sri/zephyrproject/zephyr")
!1099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "z_thread_stack_element", file: !1100, line: 47, size: 8, elements: !1101)
!1100 = !DIFile(filename: "include/zephyr/kernel/thread_stack.h", directory: "/home/sri/zephyrproject/zephyr")
!1101 = !{!1102}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1099, file: !1100, line: 48, baseType: !266, size: 8)
!1103 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1104, line: 51, baseType: !200)
!1104 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/string.h", directory: "")
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 32)
!1106 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1107)
!1107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_work_queue_config", file: !6, line: 3973, size: 64, elements: !1108)
!1108 = !{!1109, !1112}
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1107, file: !6, line: 3978, baseType: !1110, size: 32)
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 32)
!1111 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !266)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "no_yield", scope: !1107, file: !6, line: 3992, baseType: !772, size: 8, offset: 32)
!1113 = !DILocalVariable(name: "queue", arg: 1, scope: !1093, file: !293, line: 710, type: !137)
!1114 = !DILocation(line: 710, column: 42, scope: !1093)
!1115 = !DILocalVariable(name: "stack", arg: 2, scope: !1093, file: !293, line: 711, type: !1096)
!1116 = !DILocation(line: 711, column: 22, scope: !1093)
!1117 = !DILocalVariable(name: "stack_size", arg: 3, scope: !1093, file: !293, line: 712, type: !1103)
!1118 = !DILocation(line: 712, column: 11, scope: !1093)
!1119 = !DILocalVariable(name: "prio", arg: 4, scope: !1093, file: !293, line: 713, type: !120)
!1120 = !DILocation(line: 713, column: 8, scope: !1093)
!1121 = !DILocalVariable(name: "cfg", arg: 5, scope: !1093, file: !293, line: 714, type: !1105)
!1122 = !DILocation(line: 714, column: 38, scope: !1093)
!1123 = !DILocalVariable(name: "flags", scope: !1093, file: !293, line: 719, type: !199)
!1124 = !DILocation(line: 719, column: 11, scope: !1093)
!1125 = !DILocation(line: 721, column: 2, scope: !1093)
!1126 = !DILocation(line: 721, column: 7, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1093, file: !293, line: 721, column: 5)
!1128 = !DILocation(line: 723, column: 18, scope: !1093)
!1129 = !DILocation(line: 723, column: 25, scope: !1093)
!1130 = !DILocation(line: 723, column: 2, scope: !1093)
!1131 = !DILocation(line: 724, column: 16, scope: !1093)
!1132 = !DILocation(line: 724, column: 23, scope: !1093)
!1133 = !DILocation(line: 724, column: 2, scope: !1093)
!1134 = !DILocation(line: 725, column: 16, scope: !1093)
!1135 = !DILocation(line: 725, column: 23, scope: !1093)
!1136 = !DILocation(line: 725, column: 2, scope: !1093)
!1137 = !DILocation(line: 727, column: 7, scope: !1138)
!1138 = distinct !DILexicalBlock(scope: !1093, file: !293, line: 727, column: 6)
!1139 = !DILocation(line: 727, column: 11, scope: !1138)
!1140 = !DILocation(line: 727, column: 17, scope: !1138)
!1141 = !DILocation(line: 727, column: 20, scope: !1138)
!1142 = !DILocation(line: 727, column: 25, scope: !1138)
!1143 = !DILocation(line: 727, column: 6, scope: !1093)
!1144 = !DILocation(line: 728, column: 9, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1138, file: !293, line: 727, column: 35)
!1146 = !DILocation(line: 729, column: 2, scope: !1145)
!1147 = !DILocation(line: 735, column: 13, scope: !1093)
!1148 = !DILocation(line: 735, column: 20, scope: !1093)
!1149 = !DILocation(line: 735, column: 27, scope: !1093)
!1150 = !DILocation(line: 735, column: 2, scope: !1093)
!1151 = !DILocation(line: 737, column: 25, scope: !1093)
!1152 = !DILocation(line: 737, column: 32, scope: !1093)
!1153 = !DILocation(line: 737, column: 40, scope: !1093)
!1154 = !DILocation(line: 737, column: 47, scope: !1093)
!1155 = !DILocation(line: 738, column: 27, scope: !1093)
!1156 = !DILocation(line: 739, column: 10, scope: !1093)
!1157 = !DILocation(line: 739, column: 34, scope: !1093)
!1158 = !DILocation(line: 737, column: 8, scope: !1093)
!1159 = !DILocation(line: 741, column: 7, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1093, file: !293, line: 741, column: 6)
!1161 = !DILocation(line: 741, column: 11, scope: !1160)
!1162 = !DILocation(line: 741, column: 17, scope: !1160)
!1163 = !DILocation(line: 741, column: 21, scope: !1160)
!1164 = !DILocation(line: 741, column: 26, scope: !1160)
!1165 = !DILocation(line: 741, column: 31, scope: !1160)
!1166 = !DILocation(line: 741, column: 6, scope: !1093)
!1167 = !DILocation(line: 742, column: 22, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !1160, file: !293, line: 741, column: 38)
!1169 = !DILocation(line: 742, column: 29, scope: !1168)
!1170 = !DILocation(line: 742, column: 37, scope: !1168)
!1171 = !DILocation(line: 742, column: 42, scope: !1168)
!1172 = !DILocation(line: 742, column: 3, scope: !1168)
!1173 = !DILocation(line: 743, column: 2, scope: !1168)
!1174 = !DILocation(line: 745, column: 18, scope: !1093)
!1175 = !DILocation(line: 745, column: 25, scope: !1093)
!1176 = !DILocation(line: 745, column: 2, scope: !1093)
!1177 = !DILocation(line: 747, column: 2, scope: !1093)
!1178 = !DILocation(line: 747, column: 7, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1093, file: !293, line: 747, column: 5)
!1180 = !DILocation(line: 748, column: 1, scope: !1093)
!1181 = distinct !DISubprogram(name: "sys_slist_init", scope: !126, file: !126, line: 199, type: !1182, scopeLine: 200, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!1182 = !DISubroutineType(types: !1183)
!1183 = !{null, !1184}
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 32)
!1185 = !DILocalVariable(name: "list", arg: 1, scope: !1181, file: !126, line: 199, type: !1184)
!1186 = !DILocation(line: 199, column: 48, scope: !1181)
!1187 = !DILocation(line: 201, column: 2, scope: !1181)
!1188 = !DILocation(line: 201, column: 8, scope: !1181)
!1189 = !DILocation(line: 201, column: 13, scope: !1181)
!1190 = !DILocation(line: 202, column: 2, scope: !1181)
!1191 = !DILocation(line: 202, column: 8, scope: !1181)
!1192 = !DILocation(line: 202, column: 13, scope: !1181)
!1193 = !DILocation(line: 203, column: 1, scope: !1181)
!1194 = distinct !DISubprogram(name: "z_waitq_init", scope: !1195, file: !1195, line: 47, type: !1196, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!1195 = !DIFile(filename: "kernel/include/wait_q.h", directory: "/home/sri/zephyrproject/zephyr")
!1196 = !DISubroutineType(types: !1197)
!1197 = !{null, !176}
!1198 = !DILocalVariable(name: "w", arg: 1, scope: !1194, file: !1195, line: 47, type: !176)
!1199 = !DILocation(line: 47, column: 44, scope: !1194)
!1200 = !DILocation(line: 49, column: 18, scope: !1194)
!1201 = !DILocation(line: 49, column: 21, scope: !1194)
!1202 = !DILocation(line: 49, column: 2, scope: !1194)
!1203 = !DILocation(line: 50, column: 1, scope: !1194)
!1204 = distinct !DISubprogram(name: "flags_set", scope: !293, file: !293, line: 49, type: !1205, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!1205 = !DISubroutineType(types: !1206)
!1206 = !{null, !1207, !199}
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 32)
!1208 = !DILocalVariable(name: "flagp", arg: 1, scope: !1204, file: !293, line: 49, type: !1207)
!1209 = !DILocation(line: 49, column: 40, scope: !1204)
!1210 = !DILocalVariable(name: "flags", arg: 2, scope: !1204, file: !293, line: 50, type: !199)
!1211 = !DILocation(line: 50, column: 18, scope: !1204)
!1212 = !DILocation(line: 52, column: 11, scope: !1204)
!1213 = !DILocation(line: 52, column: 3, scope: !1204)
!1214 = !DILocation(line: 52, column: 9, scope: !1204)
!1215 = !DILocation(line: 53, column: 1, scope: !1204)
!1216 = distinct !DISubprogram(name: "k_thread_create", scope: !881, file: !881, line: 59, type: !1217, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!1217 = !DISubroutineType(types: !1218)
!1218 = !{!1219, !308, !1096, !242, !1220, !119, !119, !119, !120, !199, !376}
!1219 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_tid_t", file: !142, line: 359, baseType: !308)
!1220 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_thread_entry_t", file: !1098, line: 46, baseType: !1221)
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 32)
!1222 = !DISubroutineType(types: !1223)
!1223 = !{null, !119, !119, !119}
!1224 = !DILocalVariable(name: "new_thread", arg: 1, scope: !1216, file: !881, line: 59, type: !308)
!1225 = !DILocation(line: 59, column: 57, scope: !1216)
!1226 = !DILocalVariable(name: "stack", arg: 2, scope: !1216, file: !881, line: 59, type: !1096)
!1227 = !DILocation(line: 59, column: 88, scope: !1216)
!1228 = !DILocalVariable(name: "stack_size", arg: 3, scope: !1216, file: !881, line: 59, type: !242)
!1229 = !DILocation(line: 59, column: 102, scope: !1216)
!1230 = !DILocalVariable(name: "entry", arg: 4, scope: !1216, file: !881, line: 59, type: !1220)
!1231 = !DILocation(line: 59, column: 131, scope: !1216)
!1232 = !DILocalVariable(name: "p1", arg: 5, scope: !1216, file: !881, line: 59, type: !119)
!1233 = !DILocation(line: 59, column: 145, scope: !1216)
!1234 = !DILocalVariable(name: "p2", arg: 6, scope: !1216, file: !881, line: 59, type: !119)
!1235 = !DILocation(line: 59, column: 156, scope: !1216)
!1236 = !DILocalVariable(name: "p3", arg: 7, scope: !1216, file: !881, line: 59, type: !119)
!1237 = !DILocation(line: 59, column: 167, scope: !1216)
!1238 = !DILocalVariable(name: "prio", arg: 8, scope: !1216, file: !881, line: 59, type: !120)
!1239 = !DILocation(line: 59, column: 175, scope: !1216)
!1240 = !DILocalVariable(name: "options", arg: 9, scope: !1216, file: !881, line: 59, type: !199)
!1241 = !DILocation(line: 59, column: 190, scope: !1216)
!1242 = !DILocalVariable(name: "delay", arg: 10, scope: !1216, file: !881, line: 59, type: !376)
!1243 = !DILocation(line: 59, column: 211, scope: !1216)
!1244 = !DILocation(line: 84, column: 2, scope: !1216)
!1245 = !DILocation(line: 84, column: 7, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1216, file: !881, line: 84, column: 5)
!1247 = !{i64 133295}
!1248 = !DILocation(line: 84, column: 47, scope: !1246)
!1249 = !DILocation(line: 85, column: 32, scope: !1216)
!1250 = !DILocation(line: 85, column: 44, scope: !1216)
!1251 = !DILocation(line: 85, column: 51, scope: !1216)
!1252 = !DILocation(line: 85, column: 63, scope: !1216)
!1253 = !DILocation(line: 85, column: 70, scope: !1216)
!1254 = !DILocation(line: 85, column: 74, scope: !1216)
!1255 = !DILocation(line: 85, column: 78, scope: !1216)
!1256 = !DILocation(line: 85, column: 82, scope: !1216)
!1257 = !DILocation(line: 85, column: 88, scope: !1216)
!1258 = !DILocation(line: 85, column: 9, scope: !1216)
!1259 = !DILocation(line: 85, column: 2, scope: !1216)
!1260 = distinct !DISubprogram(name: "work_queue_main", scope: !293, file: !293, line: 600, type: !1222, scopeLine: 601, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!1261 = !DILocalVariable(name: "workq_ptr", arg: 1, scope: !1260, file: !293, line: 600, type: !119)
!1262 = !DILocation(line: 600, column: 35, scope: !1260)
!1263 = !DILocalVariable(name: "p2", arg: 2, scope: !1260, file: !293, line: 600, type: !119)
!1264 = !DILocation(line: 600, column: 52, scope: !1260)
!1265 = !DILocalVariable(name: "p3", arg: 3, scope: !1260, file: !293, line: 600, type: !119)
!1266 = !DILocation(line: 600, column: 62, scope: !1260)
!1267 = !DILocation(line: 602, column: 9, scope: !1260)
!1268 = !DILocation(line: 603, column: 9, scope: !1260)
!1269 = !DILocalVariable(name: "queue", scope: !1260, file: !293, line: 605, type: !137)
!1270 = !DILocation(line: 605, column: 19, scope: !1260)
!1271 = !DILocation(line: 605, column: 46, scope: !1260)
!1272 = !DILocation(line: 607, column: 2, scope: !1260)
!1273 = !DILocalVariable(name: "node", scope: !1274, file: !293, line: 608, type: !259)
!1274 = distinct !DILexicalBlock(scope: !1260, file: !293, line: 607, column: 12)
!1275 = !DILocation(line: 608, column: 16, scope: !1274)
!1276 = !DILocalVariable(name: "work", scope: !1274, file: !293, line: 609, type: !121)
!1277 = !DILocation(line: 609, column: 18, scope: !1274)
!1278 = !DILocalVariable(name: "handler", scope: !1274, file: !293, line: 610, type: !132)
!1279 = !DILocation(line: 610, column: 20, scope: !1274)
!1280 = !DILocalVariable(name: "key", scope: !1274, file: !293, line: 611, type: !505)
!1281 = !DILocation(line: 611, column: 20, scope: !1274)
!1282 = !DILocation(line: 160, column: 94, scope: !511, inlinedAt: !1283)
!1283 = distinct !DILocation(line: 611, column: 26, scope: !1274)
!1284 = !DILocation(line: 162, column: 9, scope: !511, inlinedAt: !1283)
!1285 = !DILocation(line: 163, column: 19, scope: !511, inlinedAt: !1283)
!1286 = !DILocation(line: 44, column: 15, scope: !521, inlinedAt: !1287)
!1287 = distinct !DILocation(line: 169, column: 10, scope: !511, inlinedAt: !1283)
!1288 = !DILocation(line: 48, column: 2, scope: !521, inlinedAt: !1287)
!1289 = !DILocation(line: 80, column: 9, scope: !521, inlinedAt: !1287)
!1290 = !DILocation(line: 169, column: 8, scope: !511, inlinedAt: !1283)
!1291 = !DILocation(line: 171, column: 26, scope: !511, inlinedAt: !1283)
!1292 = !DILocation(line: 110, column: 94, scope: !533, inlinedAt: !1293)
!1293 = distinct !DILocation(line: 171, column: 2, scope: !511, inlinedAt: !1283)
!1294 = !DILocation(line: 112, column: 9, scope: !533, inlinedAt: !1293)
!1295 = !DILocation(line: 177, column: 27, scope: !511, inlinedAt: !1283)
!1296 = !DILocation(line: 121, column: 95, scope: !541, inlinedAt: !1297)
!1297 = distinct !DILocation(line: 177, column: 2, scope: !511, inlinedAt: !1283)
!1298 = !DILocation(line: 123, column: 9, scope: !541, inlinedAt: !1297)
!1299 = !DILocation(line: 179, column: 2, scope: !511, inlinedAt: !1283)
!1300 = !DILocation(line: 611, column: 26, scope: !1274)
!1301 = !DILocalVariable(name: "yield", scope: !1274, file: !293, line: 612, type: !772)
!1302 = !DILocation(line: 612, column: 9, scope: !1274)
!1303 = !DILocation(line: 615, column: 25, scope: !1274)
!1304 = !DILocation(line: 615, column: 32, scope: !1274)
!1305 = !DILocation(line: 615, column: 10, scope: !1274)
!1306 = !DILocation(line: 615, column: 8, scope: !1274)
!1307 = !DILocation(line: 616, column: 7, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1274, file: !293, line: 616, column: 7)
!1309 = !DILocation(line: 616, column: 12, scope: !1308)
!1310 = !DILocation(line: 616, column: 7, scope: !1274)
!1311 = !DILocation(line: 620, column: 14, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1308, file: !293, line: 616, column: 18)
!1313 = !DILocation(line: 620, column: 21, scope: !1312)
!1314 = !DILocation(line: 620, column: 4, scope: !1312)
!1315 = !DILocation(line: 621, column: 45, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !1312, file: !293, line: 621, column: 12)
!1317 = !DILocation(line: 621, column: 52, scope: !1316)
!1318 = !DILocation(line: 621, column: 12, scope: !1312)
!1319 = !DILocation(line: 621, column: 97, scope: !1316)
!1320 = !DILocation(line: 621, column: 9, scope: !1312)
!1321 = !DILocation(line: 622, column: 14, scope: !1312)
!1322 = !DILocation(line: 622, column: 20, scope: !1312)
!1323 = !DILocation(line: 622, column: 4, scope: !1312)
!1324 = !DILocation(line: 623, column: 16, scope: !1312)
!1325 = !DILocation(line: 623, column: 22, scope: !1312)
!1326 = !DILocation(line: 623, column: 4, scope: !1312)
!1327 = !DILocation(line: 637, column: 14, scope: !1312)
!1328 = !DILocation(line: 637, column: 20, scope: !1312)
!1329 = !DILocation(line: 637, column: 12, scope: !1312)
!1330 = !DILocation(line: 638, column: 3, scope: !1312)
!1331 = !DILocation(line: 638, column: 35, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1308, file: !293, line: 638, column: 14)
!1333 = !DILocation(line: 638, column: 42, scope: !1332)
!1334 = !DILocation(line: 638, column: 14, scope: !1332)
!1335 = !DILocation(line: 638, column: 14, scope: !1308)
!1336 = !DILocation(line: 649, column: 28, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1332, file: !293, line: 639, column: 38)
!1338 = !DILocation(line: 649, column: 35, scope: !1337)
!1339 = !DILocation(line: 649, column: 10, scope: !1337)
!1340 = !DILocation(line: 650, column: 3, scope: !1337)
!1341 = !DILocation(line: 657, column: 7, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1274, file: !293, line: 657, column: 7)
!1343 = !DILocation(line: 657, column: 12, scope: !1342)
!1344 = !DILocation(line: 657, column: 7, scope: !1274)
!1345 = !DILocation(line: 664, column: 36, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1342, file: !293, line: 657, column: 18)
!1347 = !DILocation(line: 664, column: 43, scope: !1346)
!1348 = !DILocation(line: 665, column: 24, scope: !1346)
!1349 = !DILocation(line: 664, column: 10, scope: !1346)
!1350 = !DILocation(line: 666, column: 4, scope: !1346)
!1351 = distinct !{!1351, !1272, !1352}
!1352 = !DILocation(line: 696, column: 2, scope: !1260)
!1353 = !DILocation(line: 669, column: 3, scope: !1274)
!1354 = !DILocation(line: 235, column: 84, scope: !553, inlinedAt: !1355)
!1355 = distinct !DILocation(line: 669, column: 3, scope: !1274)
!1356 = !DILocation(line: 236, column: 23, scope: !553, inlinedAt: !1355)
!1357 = !DILocation(line: 238, column: 9, scope: !553, inlinedAt: !1355)
!1358 = !DILocation(line: 261, column: 22, scope: !553, inlinedAt: !1355)
!1359 = !DILocation(line: 88, column: 80, scope: !563, inlinedAt: !1360)
!1360 = distinct !DILocation(line: 261, column: 2, scope: !553, inlinedAt: !1355)
!1361 = !DILocation(line: 91, column: 6, scope: !569, inlinedAt: !1360)
!1362 = !DILocation(line: 91, column: 10, scope: !569, inlinedAt: !1360)
!1363 = !DILocation(line: 91, column: 6, scope: !563, inlinedAt: !1360)
!1364 = !DILocation(line: 92, column: 3, scope: !573, inlinedAt: !1360)
!1365 = !DILocation(line: 94, column: 2, scope: !563, inlinedAt: !1360)
!1366 = !DILocation(line: 114, column: 1, scope: !563, inlinedAt: !1360)
!1367 = !DILocation(line: 672, column: 3, scope: !1274)
!1368 = !DILocation(line: 672, column: 11, scope: !1274)
!1369 = !DILocation(line: 160, column: 94, scope: !511, inlinedAt: !1370)
!1370 = distinct !DILocation(line: 679, column: 9, scope: !1274)
!1371 = !DILocation(line: 162, column: 9, scope: !511, inlinedAt: !1370)
!1372 = !DILocation(line: 163, column: 19, scope: !511, inlinedAt: !1370)
!1373 = !DILocation(line: 44, column: 15, scope: !521, inlinedAt: !1374)
!1374 = distinct !DILocation(line: 169, column: 10, scope: !511, inlinedAt: !1370)
!1375 = !DILocation(line: 48, column: 2, scope: !521, inlinedAt: !1374)
!1376 = !DILocation(line: 80, column: 9, scope: !521, inlinedAt: !1374)
!1377 = !DILocation(line: 169, column: 8, scope: !511, inlinedAt: !1370)
!1378 = !DILocation(line: 171, column: 26, scope: !511, inlinedAt: !1370)
!1379 = !DILocation(line: 110, column: 94, scope: !533, inlinedAt: !1380)
!1380 = distinct !DILocation(line: 171, column: 2, scope: !511, inlinedAt: !1370)
!1381 = !DILocation(line: 112, column: 9, scope: !533, inlinedAt: !1380)
!1382 = !DILocation(line: 177, column: 27, scope: !511, inlinedAt: !1370)
!1383 = !DILocation(line: 121, column: 95, scope: !541, inlinedAt: !1384)
!1384 = distinct !DILocation(line: 177, column: 2, scope: !511, inlinedAt: !1370)
!1385 = !DILocation(line: 123, column: 9, scope: !541, inlinedAt: !1384)
!1386 = !DILocation(line: 179, column: 2, scope: !511, inlinedAt: !1370)
!1387 = !DILocation(line: 679, column: 9, scope: !1274)
!1388 = !DILocation(line: 681, column: 15, scope: !1274)
!1389 = !DILocation(line: 681, column: 21, scope: !1274)
!1390 = !DILocation(line: 681, column: 3, scope: !1274)
!1391 = !DILocation(line: 682, column: 18, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !1274, file: !293, line: 682, column: 7)
!1393 = !DILocation(line: 682, column: 24, scope: !1392)
!1394 = !DILocation(line: 682, column: 7, scope: !1392)
!1395 = !DILocation(line: 682, column: 7, scope: !1274)
!1396 = !DILocation(line: 683, column: 27, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1392, file: !293, line: 682, column: 54)
!1398 = !DILocation(line: 683, column: 4, scope: !1397)
!1399 = !DILocation(line: 684, column: 3, scope: !1397)
!1400 = !DILocation(line: 686, column: 15, scope: !1274)
!1401 = !DILocation(line: 686, column: 22, scope: !1274)
!1402 = !DILocation(line: 686, column: 3, scope: !1274)
!1403 = !DILocation(line: 687, column: 23, scope: !1274)
!1404 = !DILocation(line: 687, column: 30, scope: !1274)
!1405 = !DILocation(line: 687, column: 12, scope: !1274)
!1406 = !DILocation(line: 687, column: 11, scope: !1274)
!1407 = !DILocation(line: 687, column: 9, scope: !1274)
!1408 = !DILocation(line: 688, column: 3, scope: !1274)
!1409 = !DILocation(line: 235, column: 84, scope: !553, inlinedAt: !1410)
!1410 = distinct !DILocation(line: 688, column: 3, scope: !1274)
!1411 = !DILocation(line: 236, column: 23, scope: !553, inlinedAt: !1410)
!1412 = !DILocation(line: 238, column: 9, scope: !553, inlinedAt: !1410)
!1413 = !DILocation(line: 261, column: 22, scope: !553, inlinedAt: !1410)
!1414 = !DILocation(line: 88, column: 80, scope: !563, inlinedAt: !1415)
!1415 = distinct !DILocation(line: 261, column: 2, scope: !553, inlinedAt: !1410)
!1416 = !DILocation(line: 91, column: 6, scope: !569, inlinedAt: !1415)
!1417 = !DILocation(line: 91, column: 10, scope: !569, inlinedAt: !1415)
!1418 = !DILocation(line: 91, column: 6, scope: !563, inlinedAt: !1415)
!1419 = !DILocation(line: 92, column: 3, scope: !573, inlinedAt: !1415)
!1420 = !DILocation(line: 94, column: 2, scope: !563, inlinedAt: !1415)
!1421 = !DILocation(line: 114, column: 1, scope: !563, inlinedAt: !1415)
!1422 = !DILocation(line: 693, column: 7, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1274, file: !293, line: 693, column: 7)
!1424 = !DILocation(line: 693, column: 7, scope: !1274)
!1425 = !DILocation(line: 694, column: 4, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1423, file: !293, line: 693, column: 14)
!1427 = !DILocation(line: 695, column: 3, scope: !1426)
!1428 = distinct !DISubprogram(name: "k_thread_name_set", scope: !881, file: !881, line: 426, type: !1429, scopeLine: 427, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!1429 = !DISubroutineType(types: !1430)
!1430 = !{!120, !1219, !1110}
!1431 = !DILocalVariable(name: "thread", arg: 1, scope: !1428, file: !881, line: 426, type: !1219)
!1432 = !DILocation(line: 426, column: 45, scope: !1428)
!1433 = !DILocalVariable(name: "str", arg: 2, scope: !1428, file: !881, line: 426, type: !1110)
!1434 = !DILocation(line: 426, column: 66, scope: !1428)
!1435 = !DILocation(line: 435, column: 2, scope: !1428)
!1436 = !DILocation(line: 435, column: 7, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !1428, file: !881, line: 435, column: 5)
!1438 = !{i64 138568}
!1439 = !DILocation(line: 435, column: 47, scope: !1437)
!1440 = !DILocation(line: 436, column: 34, scope: !1428)
!1441 = !DILocation(line: 436, column: 42, scope: !1428)
!1442 = !DILocation(line: 436, column: 9, scope: !1428)
!1443 = !DILocation(line: 436, column: 2, scope: !1428)
!1444 = distinct !DISubprogram(name: "k_thread_start", scope: !881, file: !881, line: 240, type: !1445, scopeLine: 241, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!1445 = !DISubroutineType(types: !1446)
!1446 = !{null, !1219}
!1447 = !DILocalVariable(name: "thread", arg: 1, scope: !1444, file: !881, line: 240, type: !1219)
!1448 = !DILocation(line: 240, column: 43, scope: !1444)
!1449 = !DILocation(line: 249, column: 2, scope: !1444)
!1450 = !DILocation(line: 249, column: 7, scope: !1451)
!1451 = distinct !DILexicalBlock(scope: !1444, file: !881, line: 249, column: 5)
!1452 = !{i64 135587}
!1453 = !DILocation(line: 249, column: 47, scope: !1451)
!1454 = !DILocation(line: 250, column: 24, scope: !1444)
!1455 = !DILocation(line: 250, column: 2, scope: !1444)
!1456 = !DILocation(line: 251, column: 1, scope: !1444)
!1457 = distinct !DISubprogram(name: "k_work_queue_drain", scope: !293, file: !293, line: 750, type: !1458, scopeLine: 752, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !248)
!1458 = !DISubroutineType(types: !1459)
!1459 = !{!120, !137, !772}
!1460 = !DILocalVariable(name: "queue", arg: 1, scope: !1457, file: !293, line: 750, type: !137)
!1461 = !DILocation(line: 750, column: 41, scope: !1457)
!1462 = !DILocalVariable(name: "plug", arg: 2, scope: !1457, file: !293, line: 751, type: !772)
!1463 = !DILocation(line: 751, column: 16, scope: !1457)
!1464 = !DILocation(line: 756, column: 2, scope: !1457)
!1465 = !DILocation(line: 756, column: 7, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1457, file: !293, line: 756, column: 5)
!1467 = !DILocalVariable(name: "ret", scope: !1457, file: !293, line: 758, type: !120)
!1468 = !DILocation(line: 758, column: 6, scope: !1457)
!1469 = !DILocalVariable(name: "key", scope: !1457, file: !293, line: 759, type: !505)
!1470 = !DILocation(line: 759, column: 19, scope: !1457)
!1471 = !DILocation(line: 160, column: 94, scope: !511, inlinedAt: !1472)
!1472 = distinct !DILocation(line: 759, column: 25, scope: !1457)
!1473 = !DILocation(line: 162, column: 9, scope: !511, inlinedAt: !1472)
!1474 = !DILocation(line: 163, column: 19, scope: !511, inlinedAt: !1472)
!1475 = !DILocation(line: 44, column: 15, scope: !521, inlinedAt: !1476)
!1476 = distinct !DILocation(line: 169, column: 10, scope: !511, inlinedAt: !1472)
!1477 = !DILocation(line: 48, column: 2, scope: !521, inlinedAt: !1476)
!1478 = !DILocation(line: 80, column: 9, scope: !521, inlinedAt: !1476)
!1479 = !DILocation(line: 169, column: 8, scope: !511, inlinedAt: !1472)
!1480 = !DILocation(line: 171, column: 26, scope: !511, inlinedAt: !1472)
!1481 = !DILocation(line: 110, column: 94, scope: !533, inlinedAt: !1482)
!1482 = distinct !DILocation(line: 171, column: 2, scope: !511, inlinedAt: !1472)
!1483 = !DILocation(line: 112, column: 9, scope: !533, inlinedAt: !1482)
!1484 = !DILocation(line: 177, column: 27, scope: !511, inlinedAt: !1472)
!1485 = !DILocation(line: 121, column: 95, scope: !541, inlinedAt: !1486)
!1486 = distinct !DILocation(line: 177, column: 2, scope: !511, inlinedAt: !1472)
!1487 = !DILocation(line: 123, column: 9, scope: !541, inlinedAt: !1486)
!1488 = !DILocation(line: 179, column: 2, scope: !511, inlinedAt: !1472)
!1489 = !DILocation(line: 759, column: 25, scope: !1457)
!1490 = !DILocation(line: 761, column: 19, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !1457, file: !293, line: 761, column: 6)
!1492 = !DILocation(line: 761, column: 26, scope: !1491)
!1493 = !DILocation(line: 761, column: 8, scope: !1491)
!1494 = !DILocation(line: 762, column: 8, scope: !1491)
!1495 = !DILocation(line: 762, column: 52, scope: !1491)
!1496 = !DILocation(line: 763, column: 6, scope: !1491)
!1497 = !DILocation(line: 763, column: 9, scope: !1491)
!1498 = !DILocation(line: 764, column: 6, scope: !1491)
!1499 = !DILocation(line: 764, column: 30, scope: !1491)
!1500 = !DILocation(line: 764, column: 37, scope: !1491)
!1501 = !DILocation(line: 764, column: 10, scope: !1491)
!1502 = !DILocation(line: 761, column: 6, scope: !1457)
!1503 = !DILocation(line: 765, column: 13, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1491, file: !293, line: 764, column: 47)
!1505 = !DILocation(line: 765, column: 20, scope: !1504)
!1506 = !DILocation(line: 765, column: 3, scope: !1504)
!1507 = !DILocation(line: 766, column: 7, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1504, file: !293, line: 766, column: 7)
!1509 = !DILocation(line: 766, column: 7, scope: !1504)
!1510 = !DILocation(line: 767, column: 14, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1508, file: !293, line: 766, column: 13)
!1512 = !DILocation(line: 767, column: 21, scope: !1511)
!1513 = !DILocation(line: 767, column: 4, scope: !1511)
!1514 = !DILocation(line: 768, column: 3, scope: !1511)
!1515 = !DILocation(line: 770, column: 23, scope: !1504)
!1516 = !DILocation(line: 770, column: 3, scope: !1504)
!1517 = !DILocation(line: 771, column: 35, scope: !1504)
!1518 = !DILocation(line: 771, column: 42, scope: !1504)
!1519 = !DILocation(line: 772, column: 23, scope: !1504)
!1520 = !DILocation(line: 771, column: 9, scope: !1504)
!1521 = !DILocation(line: 771, column: 7, scope: !1504)
!1522 = !DILocation(line: 773, column: 2, scope: !1504)
!1523 = !DILocation(line: 774, column: 3, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !1491, file: !293, line: 773, column: 9)
!1525 = !DILocation(line: 235, column: 84, scope: !553, inlinedAt: !1526)
!1526 = distinct !DILocation(line: 774, column: 3, scope: !1524)
!1527 = !DILocation(line: 236, column: 23, scope: !553, inlinedAt: !1526)
!1528 = !DILocation(line: 238, column: 9, scope: !553, inlinedAt: !1526)
!1529 = !DILocation(line: 261, column: 22, scope: !553, inlinedAt: !1526)
!1530 = !DILocation(line: 88, column: 80, scope: !563, inlinedAt: !1531)
!1531 = distinct !DILocation(line: 261, column: 2, scope: !553, inlinedAt: !1526)
!1532 = !DILocation(line: 91, column: 6, scope: !569, inlinedAt: !1531)
!1533 = !DILocation(line: 91, column: 10, scope: !569, inlinedAt: !1531)
!1534 = !DILocation(line: 91, column: 6, scope: !563, inlinedAt: !1531)
!1535 = !DILocation(line: 92, column: 3, scope: !573, inlinedAt: !1531)
!1536 = !DILocation(line: 94, column: 2, scope: !563, inlinedAt: !1531)
!1537 = !DILocation(line: 114, column: 1, scope: !563, inlinedAt: !1531)
!1538 = !DILocation(line: 777, column: 2, scope: !1457)
!1539 = !DILocation(line: 777, column: 7, scope: !1540)
!1540 = distinct !DILexicalBlock(scope: !1457, file: !293, line: 777, column: 5)
!1541 = !DILocation(line: 779, column: 9, scope: !1457)
!1542 = !DILocation(line: 779, column: 2, scope: !1457)
!1543 = distinct !DISubprogram(name: "flags_get", scope: !293, file: !293, line: 55, type: !1544, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!1544 = !DISubroutineType(types: !1545)
!1545 = !{!199, !1546}
!1546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1547, size: 32)
!1547 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !199)
!1548 = !DILocalVariable(name: "flagp", arg: 1, scope: !1543, file: !293, line: 55, type: !1546)
!1549 = !DILocation(line: 55, column: 50, scope: !1543)
!1550 = !DILocation(line: 57, column: 10, scope: !1543)
!1551 = !DILocation(line: 57, column: 9, scope: !1543)
!1552 = !DILocation(line: 57, column: 2, scope: !1543)
!1553 = distinct !DISubprogram(name: "sys_slist_is_empty", scope: !126, file: !126, line: 268, type: !1554, scopeLine: 268, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!1554 = !DISubroutineType(types: !1555)
!1555 = !{!772, !1184}
!1556 = !DILocalVariable(name: "list", arg: 1, scope: !1553, file: !126, line: 268, type: !1184)
!1557 = !DILocation(line: 268, column: 53, scope: !1553)
!1558 = !DILocation(line: 268, column: 89, scope: !1553)
!1559 = !DILocation(line: 268, column: 69, scope: !1553)
!1560 = !DILocation(line: 268, column: 95, scope: !1553)
!1561 = !DILocation(line: 268, column: 61, scope: !1553)
!1562 = distinct !DISubprogram(name: "flag_set", scope: !293, file: !293, line: 27, type: !1205, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!1563 = !DILocalVariable(name: "flagp", arg: 1, scope: !1562, file: !293, line: 27, type: !1207)
!1564 = !DILocation(line: 27, column: 39, scope: !1562)
!1565 = !DILocalVariable(name: "bit", arg: 2, scope: !1562, file: !293, line: 28, type: !199)
!1566 = !DILocation(line: 28, column: 17, scope: !1562)
!1567 = !DILocation(line: 30, column: 21, scope: !1562)
!1568 = !DILocation(line: 30, column: 17, scope: !1562)
!1569 = !DILocation(line: 30, column: 3, scope: !1562)
!1570 = !DILocation(line: 30, column: 9, scope: !1562)
!1571 = !DILocation(line: 31, column: 1, scope: !1562)
!1572 = distinct !DISubprogram(name: "notify_queue_locked", scope: !293, file: !293, line: 221, type: !1573, scopeLine: 222, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!1573 = !DISubroutineType(types: !1574)
!1574 = !{!772, !137}
!1575 = !DILocalVariable(name: "queue", arg: 1, scope: !1572, file: !293, line: 221, type: !137)
!1576 = !DILocation(line: 221, column: 58, scope: !1572)
!1577 = !DILocalVariable(name: "rv", scope: !1572, file: !293, line: 223, type: !772)
!1578 = !DILocation(line: 223, column: 8, scope: !1572)
!1579 = !DILocation(line: 225, column: 6, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !1572, file: !293, line: 225, column: 6)
!1581 = !DILocation(line: 225, column: 12, scope: !1580)
!1582 = !DILocation(line: 225, column: 6, scope: !1572)
!1583 = !DILocation(line: 226, column: 22, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1580, file: !293, line: 225, column: 18)
!1585 = !DILocation(line: 226, column: 29, scope: !1584)
!1586 = !DILocation(line: 226, column: 8, scope: !1584)
!1587 = !DILocation(line: 226, column: 6, scope: !1584)
!1588 = !DILocation(line: 227, column: 2, scope: !1584)
!1589 = !DILocation(line: 229, column: 9, scope: !1572)
!1590 = !DILocation(line: 229, column: 2, scope: !1572)
!1591 = distinct !DISubprogram(name: "k_work_queue_unplug", scope: !293, file: !293, line: 782, type: !1592, scopeLine: 783, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !248)
!1592 = !DISubroutineType(types: !1593)
!1593 = !{!120, !137}
!1594 = !DILocalVariable(name: "queue", arg: 1, scope: !1591, file: !293, line: 782, type: !137)
!1595 = !DILocation(line: 782, column: 42, scope: !1591)
!1596 = !DILocation(line: 786, column: 2, scope: !1591)
!1597 = !DILocation(line: 786, column: 7, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !1591, file: !293, line: 786, column: 5)
!1599 = !DILocalVariable(name: "ret", scope: !1591, file: !293, line: 788, type: !120)
!1600 = !DILocation(line: 788, column: 6, scope: !1591)
!1601 = !DILocalVariable(name: "key", scope: !1591, file: !293, line: 789, type: !505)
!1602 = !DILocation(line: 789, column: 19, scope: !1591)
!1603 = !DILocation(line: 160, column: 94, scope: !511, inlinedAt: !1604)
!1604 = distinct !DILocation(line: 789, column: 25, scope: !1591)
!1605 = !DILocation(line: 162, column: 9, scope: !511, inlinedAt: !1604)
!1606 = !DILocation(line: 163, column: 19, scope: !511, inlinedAt: !1604)
!1607 = !DILocation(line: 44, column: 15, scope: !521, inlinedAt: !1608)
!1608 = distinct !DILocation(line: 169, column: 10, scope: !511, inlinedAt: !1604)
!1609 = !DILocation(line: 48, column: 2, scope: !521, inlinedAt: !1608)
!1610 = !DILocation(line: 80, column: 9, scope: !521, inlinedAt: !1608)
!1611 = !DILocation(line: 169, column: 8, scope: !511, inlinedAt: !1604)
!1612 = !DILocation(line: 171, column: 26, scope: !511, inlinedAt: !1604)
!1613 = !DILocation(line: 110, column: 94, scope: !533, inlinedAt: !1614)
!1614 = distinct !DILocation(line: 171, column: 2, scope: !511, inlinedAt: !1604)
!1615 = !DILocation(line: 112, column: 9, scope: !533, inlinedAt: !1614)
!1616 = !DILocation(line: 177, column: 27, scope: !511, inlinedAt: !1604)
!1617 = !DILocation(line: 121, column: 95, scope: !541, inlinedAt: !1618)
!1618 = distinct !DILocation(line: 177, column: 2, scope: !511, inlinedAt: !1604)
!1619 = !DILocation(line: 123, column: 9, scope: !541, inlinedAt: !1618)
!1620 = !DILocation(line: 179, column: 2, scope: !511, inlinedAt: !1604)
!1621 = !DILocation(line: 789, column: 25, scope: !1591)
!1622 = !DILocation(line: 791, column: 27, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !1591, file: !293, line: 791, column: 6)
!1624 = !DILocation(line: 791, column: 34, scope: !1623)
!1625 = !DILocation(line: 791, column: 6, scope: !1623)
!1626 = !DILocation(line: 791, column: 6, scope: !1591)
!1627 = !DILocation(line: 792, column: 7, scope: !1628)
!1628 = distinct !DILexicalBlock(scope: !1623, file: !293, line: 791, column: 68)
!1629 = !DILocation(line: 793, column: 2, scope: !1628)
!1630 = !DILocation(line: 795, column: 2, scope: !1591)
!1631 = !DILocation(line: 235, column: 84, scope: !553, inlinedAt: !1632)
!1632 = distinct !DILocation(line: 795, column: 2, scope: !1591)
!1633 = !DILocation(line: 236, column: 23, scope: !553, inlinedAt: !1632)
!1634 = !DILocation(line: 238, column: 9, scope: !553, inlinedAt: !1632)
!1635 = !DILocation(line: 261, column: 22, scope: !553, inlinedAt: !1632)
!1636 = !DILocation(line: 88, column: 80, scope: !563, inlinedAt: !1637)
!1637 = distinct !DILocation(line: 261, column: 2, scope: !553, inlinedAt: !1632)
!1638 = !DILocation(line: 91, column: 6, scope: !569, inlinedAt: !1637)
!1639 = !DILocation(line: 91, column: 10, scope: !569, inlinedAt: !1637)
!1640 = !DILocation(line: 91, column: 6, scope: !563, inlinedAt: !1637)
!1641 = !DILocation(line: 92, column: 3, scope: !573, inlinedAt: !1637)
!1642 = !DILocation(line: 94, column: 2, scope: !563, inlinedAt: !1637)
!1643 = !DILocation(line: 114, column: 1, scope: !563, inlinedAt: !1637)
!1644 = !DILocation(line: 797, column: 2, scope: !1591)
!1645 = !DILocation(line: 797, column: 7, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !1591, file: !293, line: 797, column: 5)
!1647 = !DILocation(line: 799, column: 9, scope: !1591)
!1648 = !DILocation(line: 799, column: 2, scope: !1591)
!1649 = distinct !DISubprogram(name: "flag_test_and_clear", scope: !293, file: !293, line: 39, type: !1650, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!1650 = !DISubroutineType(types: !1651)
!1651 = !{!772, !1207, !120}
!1652 = !DILocalVariable(name: "flagp", arg: 1, scope: !1649, file: !293, line: 39, type: !1207)
!1653 = !DILocation(line: 39, column: 51, scope: !1649)
!1654 = !DILocalVariable(name: "bit", arg: 2, scope: !1649, file: !293, line: 40, type: !120)
!1655 = !DILocation(line: 40, column: 16, scope: !1649)
!1656 = !DILocalVariable(name: "ret", scope: !1649, file: !293, line: 42, type: !772)
!1657 = !DILocation(line: 42, column: 8, scope: !1649)
!1658 = !DILocation(line: 42, column: 24, scope: !1649)
!1659 = !DILocation(line: 42, column: 31, scope: !1649)
!1660 = !DILocation(line: 42, column: 14, scope: !1649)
!1661 = !DILocation(line: 44, column: 13, scope: !1649)
!1662 = !DILocation(line: 44, column: 20, scope: !1649)
!1663 = !DILocation(line: 44, column: 2, scope: !1649)
!1664 = !DILocation(line: 46, column: 9, scope: !1649)
!1665 = !DILocation(line: 46, column: 2, scope: !1649)
!1666 = distinct !DISubprogram(name: "k_work_init_delayable", scope: !293, file: !293, line: 833, type: !1667, scopeLine: 835, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !248)
!1667 = !DISubroutineType(types: !1668)
!1668 = !{null, !284, !132}
!1669 = !DILocalVariable(name: "dwork", arg: 1, scope: !1666, file: !293, line: 833, type: !284)
!1670 = !DILocation(line: 833, column: 53, scope: !1666)
!1671 = !DILocalVariable(name: "handler", arg: 2, scope: !1666, file: !293, line: 834, type: !132)
!1672 = !DILocation(line: 834, column: 25, scope: !1666)
!1673 = !DILocation(line: 839, column: 3, scope: !1666)
!1674 = !DILocation(line: 839, column: 11, scope: !1666)
!1675 = !DILocation(line: 839, column: 36, scope: !1666)
!1676 = !DILocation(line: 840, column: 11, scope: !1666)
!1677 = !DILocation(line: 841, column: 15, scope: !1666)
!1678 = !DILocation(line: 845, column: 18, scope: !1666)
!1679 = !DILocation(line: 845, column: 25, scope: !1666)
!1680 = !DILocation(line: 845, column: 2, scope: !1666)
!1681 = !DILocation(line: 847, column: 2, scope: !1666)
!1682 = !DILocation(line: 847, column: 7, scope: !1683)
!1683 = distinct !DILexicalBlock(scope: !1666, file: !293, line: 847, column: 5)
!1684 = !DILocation(line: 848, column: 1, scope: !1666)
!1685 = distinct !DISubprogram(name: "z_init_timeout", scope: !1686, file: !1686, line: 25, type: !209, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!1686 = !DIFile(filename: "kernel/include/timeout_q.h", directory: "/home/sri/zephyrproject/zephyr")
!1687 = !DILocalVariable(name: "to", arg: 1, scope: !1685, file: !1686, line: 25, type: !211)
!1688 = !DILocation(line: 25, column: 52, scope: !1685)
!1689 = !DILocation(line: 27, column: 18, scope: !1685)
!1690 = !DILocation(line: 27, column: 22, scope: !1685)
!1691 = !DILocation(line: 27, column: 2, scope: !1685)
!1692 = !DILocation(line: 28, column: 1, scope: !1685)
!1693 = distinct !DISubprogram(name: "k_work_delayable_busy_get", scope: !293, file: !293, line: 855, type: !1694, scopeLine: 856, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !248)
!1694 = !DISubroutineType(types: !1695)
!1695 = !{!120, !1696}
!1696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1697, size: 32)
!1697 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !285)
!1698 = !DILocalVariable(name: "dwork", arg: 1, scope: !1693, file: !293, line: 855, type: !1696)
!1699 = !DILocation(line: 855, column: 62, scope: !1693)
!1700 = !DILocalVariable(name: "key", scope: !1693, file: !293, line: 857, type: !505)
!1701 = !DILocation(line: 857, column: 19, scope: !1693)
!1702 = !DILocation(line: 160, column: 94, scope: !511, inlinedAt: !1703)
!1703 = distinct !DILocation(line: 857, column: 25, scope: !1693)
!1704 = !DILocation(line: 162, column: 9, scope: !511, inlinedAt: !1703)
!1705 = !DILocation(line: 163, column: 19, scope: !511, inlinedAt: !1703)
!1706 = !DILocation(line: 44, column: 15, scope: !521, inlinedAt: !1707)
!1707 = distinct !DILocation(line: 169, column: 10, scope: !511, inlinedAt: !1703)
!1708 = !DILocation(line: 48, column: 2, scope: !521, inlinedAt: !1707)
!1709 = !DILocation(line: 80, column: 9, scope: !521, inlinedAt: !1707)
!1710 = !DILocation(line: 169, column: 8, scope: !511, inlinedAt: !1703)
!1711 = !DILocation(line: 171, column: 26, scope: !511, inlinedAt: !1703)
!1712 = !DILocation(line: 110, column: 94, scope: !533, inlinedAt: !1713)
!1713 = distinct !DILocation(line: 171, column: 2, scope: !511, inlinedAt: !1703)
!1714 = !DILocation(line: 112, column: 9, scope: !533, inlinedAt: !1713)
!1715 = !DILocation(line: 177, column: 27, scope: !511, inlinedAt: !1703)
!1716 = !DILocation(line: 121, column: 95, scope: !541, inlinedAt: !1717)
!1717 = distinct !DILocation(line: 177, column: 2, scope: !511, inlinedAt: !1703)
!1718 = !DILocation(line: 123, column: 9, scope: !541, inlinedAt: !1717)
!1719 = !DILocation(line: 179, column: 2, scope: !511, inlinedAt: !1703)
!1720 = !DILocation(line: 857, column: 25, scope: !1693)
!1721 = !DILocalVariable(name: "ret", scope: !1693, file: !293, line: 858, type: !120)
!1722 = !DILocation(line: 858, column: 6, scope: !1693)
!1723 = !DILocation(line: 858, column: 43, scope: !1693)
!1724 = !DILocation(line: 858, column: 12, scope: !1693)
!1725 = !DILocation(line: 860, column: 2, scope: !1693)
!1726 = !DILocation(line: 235, column: 84, scope: !553, inlinedAt: !1727)
!1727 = distinct !DILocation(line: 860, column: 2, scope: !1693)
!1728 = !DILocation(line: 236, column: 23, scope: !553, inlinedAt: !1727)
!1729 = !DILocation(line: 238, column: 9, scope: !553, inlinedAt: !1727)
!1730 = !DILocation(line: 261, column: 22, scope: !553, inlinedAt: !1727)
!1731 = !DILocation(line: 88, column: 80, scope: !563, inlinedAt: !1732)
!1732 = distinct !DILocation(line: 261, column: 2, scope: !553, inlinedAt: !1727)
!1733 = !DILocation(line: 91, column: 6, scope: !569, inlinedAt: !1732)
!1734 = !DILocation(line: 91, column: 10, scope: !569, inlinedAt: !1732)
!1735 = !DILocation(line: 91, column: 6, scope: !563, inlinedAt: !1732)
!1736 = !DILocation(line: 92, column: 3, scope: !573, inlinedAt: !1732)
!1737 = !DILocation(line: 94, column: 2, scope: !563, inlinedAt: !1732)
!1738 = !DILocation(line: 114, column: 1, scope: !563, inlinedAt: !1732)
!1739 = !DILocation(line: 861, column: 9, scope: !1693)
!1740 = !DILocation(line: 861, column: 2, scope: !1693)
!1741 = distinct !DISubprogram(name: "work_delayable_busy_get_locked", scope: !293, file: !293, line: 850, type: !1694, scopeLine: 851, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!1742 = !DILocalVariable(name: "dwork", arg: 1, scope: !1741, file: !293, line: 850, type: !1696)
!1743 = !DILocation(line: 850, column: 81, scope: !1741)
!1744 = !DILocation(line: 852, column: 20, scope: !1741)
!1745 = !DILocation(line: 852, column: 27, scope: !1741)
!1746 = !DILocation(line: 852, column: 32, scope: !1741)
!1747 = !DILocation(line: 852, column: 9, scope: !1741)
!1748 = !DILocation(line: 852, column: 39, scope: !1741)
!1749 = !DILocation(line: 852, column: 2, scope: !1741)
!1750 = distinct !DISubprogram(name: "k_work_schedule_for_queue", scope: !293, file: !293, line: 954, type: !1751, scopeLine: 957, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !248)
!1751 = !DISubroutineType(types: !1752)
!1752 = !{!120, !137, !284, !376}
!1753 = !DILocalVariable(name: "queue", arg: 1, scope: !1750, file: !293, line: 954, type: !137)
!1754 = !DILocation(line: 954, column: 48, scope: !1750)
!1755 = !DILocalVariable(name: "dwork", arg: 2, scope: !1750, file: !293, line: 955, type: !284)
!1756 = !DILocation(line: 955, column: 36, scope: !1750)
!1757 = !DILocalVariable(name: "delay", arg: 3, scope: !1750, file: !293, line: 956, type: !376)
!1758 = !DILocation(line: 956, column: 23, scope: !1750)
!1759 = !DILocation(line: 960, column: 2, scope: !1750)
!1760 = !DILocation(line: 960, column: 7, scope: !1761)
!1761 = distinct !DILexicalBlock(scope: !1750, file: !293, line: 960, column: 5)
!1762 = !DILocalVariable(name: "work", scope: !1750, file: !293, line: 962, type: !121)
!1763 = !DILocation(line: 962, column: 17, scope: !1750)
!1764 = !DILocation(line: 962, column: 25, scope: !1750)
!1765 = !DILocation(line: 962, column: 32, scope: !1750)
!1766 = !DILocalVariable(name: "ret", scope: !1750, file: !293, line: 963, type: !120)
!1767 = !DILocation(line: 963, column: 6, scope: !1750)
!1768 = !DILocalVariable(name: "key", scope: !1750, file: !293, line: 964, type: !505)
!1769 = !DILocation(line: 964, column: 19, scope: !1750)
!1770 = !DILocation(line: 160, column: 94, scope: !511, inlinedAt: !1771)
!1771 = distinct !DILocation(line: 964, column: 25, scope: !1750)
!1772 = !DILocation(line: 162, column: 9, scope: !511, inlinedAt: !1771)
!1773 = !DILocation(line: 163, column: 19, scope: !511, inlinedAt: !1771)
!1774 = !DILocation(line: 44, column: 15, scope: !521, inlinedAt: !1775)
!1775 = distinct !DILocation(line: 169, column: 10, scope: !511, inlinedAt: !1771)
!1776 = !DILocation(line: 48, column: 2, scope: !521, inlinedAt: !1775)
!1777 = !DILocation(line: 80, column: 9, scope: !521, inlinedAt: !1775)
!1778 = !DILocation(line: 169, column: 8, scope: !511, inlinedAt: !1771)
!1779 = !DILocation(line: 171, column: 26, scope: !511, inlinedAt: !1771)
!1780 = !DILocation(line: 110, column: 94, scope: !533, inlinedAt: !1781)
!1781 = distinct !DILocation(line: 171, column: 2, scope: !511, inlinedAt: !1771)
!1782 = !DILocation(line: 112, column: 9, scope: !533, inlinedAt: !1781)
!1783 = !DILocation(line: 177, column: 27, scope: !511, inlinedAt: !1771)
!1784 = !DILocation(line: 121, column: 95, scope: !541, inlinedAt: !1785)
!1785 = distinct !DILocation(line: 177, column: 2, scope: !511, inlinedAt: !1771)
!1786 = !DILocation(line: 123, column: 9, scope: !541, inlinedAt: !1785)
!1787 = !DILocation(line: 179, column: 2, scope: !511, inlinedAt: !1771)
!1788 = !DILocation(line: 964, column: 25, scope: !1750)
!1789 = !DILocation(line: 967, column: 28, scope: !1790)
!1790 = distinct !DILexicalBlock(scope: !1750, file: !293, line: 967, column: 6)
!1791 = !DILocation(line: 967, column: 7, scope: !1790)
!1792 = !DILocation(line: 967, column: 34, scope: !1790)
!1793 = !DILocation(line: 967, column: 53, scope: !1790)
!1794 = !DILocation(line: 967, column: 6, scope: !1750)
!1795 = !DILocation(line: 968, column: 43, scope: !1796)
!1796 = distinct !DILexicalBlock(scope: !1790, file: !293, line: 967, column: 60)
!1797 = !DILocation(line: 968, column: 9, scope: !1796)
!1798 = !DILocation(line: 968, column: 7, scope: !1796)
!1799 = !DILocation(line: 969, column: 2, scope: !1796)
!1800 = !DILocation(line: 971, column: 2, scope: !1750)
!1801 = !DILocation(line: 235, column: 84, scope: !553, inlinedAt: !1802)
!1802 = distinct !DILocation(line: 971, column: 2, scope: !1750)
!1803 = !DILocation(line: 236, column: 23, scope: !553, inlinedAt: !1802)
!1804 = !DILocation(line: 238, column: 9, scope: !553, inlinedAt: !1802)
!1805 = !DILocation(line: 261, column: 22, scope: !553, inlinedAt: !1802)
!1806 = !DILocation(line: 88, column: 80, scope: !563, inlinedAt: !1807)
!1807 = distinct !DILocation(line: 261, column: 2, scope: !553, inlinedAt: !1802)
!1808 = !DILocation(line: 91, column: 6, scope: !569, inlinedAt: !1807)
!1809 = !DILocation(line: 91, column: 10, scope: !569, inlinedAt: !1807)
!1810 = !DILocation(line: 91, column: 6, scope: !563, inlinedAt: !1807)
!1811 = !DILocation(line: 92, column: 3, scope: !573, inlinedAt: !1807)
!1812 = !DILocation(line: 94, column: 2, scope: !563, inlinedAt: !1807)
!1813 = !DILocation(line: 114, column: 1, scope: !563, inlinedAt: !1807)
!1814 = !DILocation(line: 973, column: 2, scope: !1750)
!1815 = !DILocation(line: 973, column: 7, scope: !1816)
!1816 = distinct !DILexicalBlock(scope: !1750, file: !293, line: 973, column: 5)
!1817 = !DILocation(line: 975, column: 9, scope: !1750)
!1818 = !DILocation(line: 975, column: 2, scope: !1750)
!1819 = distinct !DISubprogram(name: "schedule_for_queue_locked", scope: !293, file: !293, line: 887, type: !1820, scopeLine: 890, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!1820 = !DISubroutineType(types: !1821)
!1821 = !{!120, !638, !284, !376}
!1822 = !DILocalVariable(name: "queuep", arg: 1, scope: !1819, file: !293, line: 887, type: !638)
!1823 = !DILocation(line: 887, column: 56, scope: !1819)
!1824 = !DILocalVariable(name: "dwork", arg: 2, scope: !1819, file: !293, line: 888, type: !284)
!1825 = !DILocation(line: 888, column: 35, scope: !1819)
!1826 = !DILocalVariable(name: "delay", arg: 3, scope: !1819, file: !293, line: 889, type: !376)
!1827 = !DILocation(line: 889, column: 22, scope: !1819)
!1828 = !DILocalVariable(name: "ret", scope: !1819, file: !293, line: 891, type: !120)
!1829 = !DILocation(line: 891, column: 6, scope: !1819)
!1830 = !DILocalVariable(name: "work", scope: !1819, file: !293, line: 892, type: !121)
!1831 = !DILocation(line: 892, column: 17, scope: !1819)
!1832 = !DILocation(line: 892, column: 25, scope: !1819)
!1833 = !DILocation(line: 892, column: 32, scope: !1819)
!1834 = !DILocation(line: 894, column: 15, scope: !1835)
!1835 = distinct !DILexicalBlock(scope: !1819, file: !293, line: 894, column: 6)
!1836 = !DILocation(line: 894, column: 40, scope: !1835)
!1837 = !DILocation(line: 894, column: 21, scope: !1835)
!1838 = !DILocation(line: 894, column: 6, scope: !1819)
!1839 = !DILocation(line: 895, column: 33, scope: !1840)
!1840 = distinct !DILexicalBlock(scope: !1835, file: !293, line: 894, column: 54)
!1841 = !DILocation(line: 895, column: 39, scope: !1840)
!1842 = !DILocation(line: 895, column: 10, scope: !1840)
!1843 = !DILocation(line: 895, column: 3, scope: !1840)
!1844 = !DILocation(line: 898, column: 12, scope: !1819)
!1845 = !DILocation(line: 898, column: 18, scope: !1819)
!1846 = !DILocation(line: 898, column: 2, scope: !1819)
!1847 = !DILocation(line: 899, column: 18, scope: !1819)
!1848 = !DILocation(line: 899, column: 17, scope: !1819)
!1849 = !DILocation(line: 899, column: 2, scope: !1819)
!1850 = !DILocation(line: 899, column: 9, scope: !1819)
!1851 = !DILocation(line: 899, column: 15, scope: !1819)
!1852 = !DILocation(line: 902, column: 17, scope: !1819)
!1853 = !DILocation(line: 902, column: 24, scope: !1819)
!1854 = !DILocation(line: 902, column: 2, scope: !1819)
!1855 = !DILocation(line: 904, column: 9, scope: !1819)
!1856 = !DILocation(line: 904, column: 2, scope: !1819)
!1857 = !DILocation(line: 905, column: 1, scope: !1819)
!1858 = distinct !DISubprogram(name: "k_work_schedule", scope: !293, file: !293, line: 978, type: !1859, scopeLine: 980, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !248)
!1859 = !DISubroutineType(types: !1860)
!1860 = !{!120, !284, !376}
!1861 = !DILocalVariable(name: "dwork", arg: 1, scope: !1858, file: !293, line: 978, type: !284)
!1862 = !DILocation(line: 978, column: 46, scope: !1858)
!1863 = !DILocalVariable(name: "delay", arg: 2, scope: !1858, file: !293, line: 979, type: !376)
!1864 = !DILocation(line: 979, column: 20, scope: !1858)
!1865 = !DILocation(line: 981, column: 2, scope: !1858)
!1866 = !DILocation(line: 981, column: 7, scope: !1867)
!1867 = distinct !DILexicalBlock(scope: !1858, file: !293, line: 981, column: 5)
!1868 = !DILocalVariable(name: "ret", scope: !1858, file: !293, line: 983, type: !120)
!1869 = !DILocation(line: 983, column: 6, scope: !1858)
!1870 = !DILocation(line: 983, column: 53, scope: !1858)
!1871 = !DILocation(line: 983, column: 12, scope: !1858)
!1872 = !DILocation(line: 985, column: 2, scope: !1858)
!1873 = !DILocation(line: 985, column: 7, scope: !1874)
!1874 = distinct !DILexicalBlock(scope: !1858, file: !293, line: 985, column: 5)
!1875 = !DILocation(line: 987, column: 9, scope: !1858)
!1876 = !DILocation(line: 987, column: 2, scope: !1858)
!1877 = distinct !DISubprogram(name: "k_work_reschedule_for_queue", scope: !293, file: !293, line: 990, type: !1751, scopeLine: 993, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !248)
!1878 = !DILocalVariable(name: "queue", arg: 1, scope: !1877, file: !293, line: 990, type: !137)
!1879 = !DILocation(line: 990, column: 50, scope: !1877)
!1880 = !DILocalVariable(name: "dwork", arg: 2, scope: !1877, file: !293, line: 991, type: !284)
!1881 = !DILocation(line: 991, column: 31, scope: !1877)
!1882 = !DILocalVariable(name: "delay", arg: 3, scope: !1877, file: !293, line: 992, type: !376)
!1883 = !DILocation(line: 992, column: 18, scope: !1877)
!1884 = !DILocation(line: 996, column: 2, scope: !1877)
!1885 = !DILocation(line: 996, column: 7, scope: !1886)
!1886 = distinct !DILexicalBlock(scope: !1877, file: !293, line: 996, column: 5)
!1887 = !DILocalVariable(name: "ret", scope: !1877, file: !293, line: 998, type: !120)
!1888 = !DILocation(line: 998, column: 6, scope: !1877)
!1889 = !DILocalVariable(name: "key", scope: !1877, file: !293, line: 999, type: !505)
!1890 = !DILocation(line: 999, column: 19, scope: !1877)
!1891 = !DILocation(line: 160, column: 94, scope: !511, inlinedAt: !1892)
!1892 = distinct !DILocation(line: 999, column: 25, scope: !1877)
!1893 = !DILocation(line: 162, column: 9, scope: !511, inlinedAt: !1892)
!1894 = !DILocation(line: 163, column: 19, scope: !511, inlinedAt: !1892)
!1895 = !DILocation(line: 44, column: 15, scope: !521, inlinedAt: !1896)
!1896 = distinct !DILocation(line: 169, column: 10, scope: !511, inlinedAt: !1892)
!1897 = !DILocation(line: 48, column: 2, scope: !521, inlinedAt: !1896)
!1898 = !DILocation(line: 80, column: 9, scope: !521, inlinedAt: !1896)
!1899 = !DILocation(line: 169, column: 8, scope: !511, inlinedAt: !1892)
!1900 = !DILocation(line: 171, column: 26, scope: !511, inlinedAt: !1892)
!1901 = !DILocation(line: 110, column: 94, scope: !533, inlinedAt: !1902)
!1902 = distinct !DILocation(line: 171, column: 2, scope: !511, inlinedAt: !1892)
!1903 = !DILocation(line: 112, column: 9, scope: !533, inlinedAt: !1902)
!1904 = !DILocation(line: 177, column: 27, scope: !511, inlinedAt: !1892)
!1905 = !DILocation(line: 121, column: 95, scope: !541, inlinedAt: !1906)
!1906 = distinct !DILocation(line: 177, column: 2, scope: !511, inlinedAt: !1892)
!1907 = !DILocation(line: 123, column: 9, scope: !541, inlinedAt: !1906)
!1908 = !DILocation(line: 179, column: 2, scope: !511, inlinedAt: !1892)
!1909 = !DILocation(line: 999, column: 25, scope: !1877)
!1910 = !DILocation(line: 1002, column: 26, scope: !1877)
!1911 = !DILocation(line: 1002, column: 8, scope: !1877)
!1912 = !DILocation(line: 1005, column: 42, scope: !1877)
!1913 = !DILocation(line: 1005, column: 8, scope: !1877)
!1914 = !DILocation(line: 1005, column: 6, scope: !1877)
!1915 = !DILocation(line: 1007, column: 2, scope: !1877)
!1916 = !DILocation(line: 235, column: 84, scope: !553, inlinedAt: !1917)
!1917 = distinct !DILocation(line: 1007, column: 2, scope: !1877)
!1918 = !DILocation(line: 236, column: 23, scope: !553, inlinedAt: !1917)
!1919 = !DILocation(line: 238, column: 9, scope: !553, inlinedAt: !1917)
!1920 = !DILocation(line: 261, column: 22, scope: !553, inlinedAt: !1917)
!1921 = !DILocation(line: 88, column: 80, scope: !563, inlinedAt: !1922)
!1922 = distinct !DILocation(line: 261, column: 2, scope: !553, inlinedAt: !1917)
!1923 = !DILocation(line: 91, column: 6, scope: !569, inlinedAt: !1922)
!1924 = !DILocation(line: 91, column: 10, scope: !569, inlinedAt: !1922)
!1925 = !DILocation(line: 91, column: 6, scope: !563, inlinedAt: !1922)
!1926 = !DILocation(line: 92, column: 3, scope: !573, inlinedAt: !1922)
!1927 = !DILocation(line: 94, column: 2, scope: !563, inlinedAt: !1922)
!1928 = !DILocation(line: 114, column: 1, scope: !563, inlinedAt: !1922)
!1929 = !DILocation(line: 1009, column: 2, scope: !1877)
!1930 = !DILocation(line: 1009, column: 7, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1877, file: !293, line: 1009, column: 5)
!1932 = !DILocation(line: 1011, column: 9, scope: !1877)
!1933 = !DILocation(line: 1011, column: 2, scope: !1877)
!1934 = distinct !DISubprogram(name: "unschedule_locked", scope: !293, file: !293, line: 919, type: !1935, scopeLine: 920, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!1935 = !DISubroutineType(types: !1936)
!1936 = !{!772, !284}
!1937 = !DILocalVariable(name: "dwork", arg: 1, scope: !1934, file: !293, line: 919, type: !284)
!1938 = !DILocation(line: 919, column: 64, scope: !1934)
!1939 = !DILocalVariable(name: "ret", scope: !1934, file: !293, line: 921, type: !772)
!1940 = !DILocation(line: 921, column: 8, scope: !1934)
!1941 = !DILocalVariable(name: "work", scope: !1934, file: !293, line: 922, type: !121)
!1942 = !DILocation(line: 922, column: 17, scope: !1934)
!1943 = !DILocation(line: 922, column: 25, scope: !1934)
!1944 = !DILocation(line: 922, column: 32, scope: !1934)
!1945 = !DILocation(line: 929, column: 27, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !1934, file: !293, line: 929, column: 6)
!1947 = !DILocation(line: 929, column: 33, scope: !1946)
!1948 = !DILocation(line: 929, column: 6, scope: !1946)
!1949 = !DILocation(line: 929, column: 6, scope: !1934)
!1950 = !DILocation(line: 930, column: 26, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1946, file: !293, line: 929, column: 61)
!1952 = !DILocation(line: 930, column: 33, scope: !1951)
!1953 = !DILocation(line: 930, column: 9, scope: !1951)
!1954 = !DILocation(line: 930, column: 42, scope: !1951)
!1955 = !DILocation(line: 930, column: 7, scope: !1951)
!1956 = !DILocation(line: 931, column: 2, scope: !1951)
!1957 = !DILocation(line: 933, column: 9, scope: !1934)
!1958 = !DILocation(line: 933, column: 2, scope: !1934)
!1959 = distinct !DISubprogram(name: "k_work_reschedule", scope: !293, file: !293, line: 1014, type: !1859, scopeLine: 1016, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !248)
!1960 = !DILocalVariable(name: "dwork", arg: 1, scope: !1959, file: !293, line: 1014, type: !284)
!1961 = !DILocation(line: 1014, column: 48, scope: !1959)
!1962 = !DILocalVariable(name: "delay", arg: 2, scope: !1959, file: !293, line: 1015, type: !376)
!1963 = !DILocation(line: 1015, column: 22, scope: !1959)
!1964 = !DILocation(line: 1017, column: 2, scope: !1959)
!1965 = !DILocation(line: 1017, column: 7, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1959, file: !293, line: 1017, column: 5)
!1967 = !DILocalVariable(name: "ret", scope: !1959, file: !293, line: 1019, type: !120)
!1968 = !DILocation(line: 1019, column: 6, scope: !1959)
!1969 = !DILocation(line: 1019, column: 55, scope: !1959)
!1970 = !DILocation(line: 1019, column: 12, scope: !1959)
!1971 = !DILocation(line: 1021, column: 2, scope: !1959)
!1972 = !DILocation(line: 1021, column: 7, scope: !1973)
!1973 = distinct !DILexicalBlock(scope: !1959, file: !293, line: 1021, column: 5)
!1974 = !DILocation(line: 1023, column: 9, scope: !1959)
!1975 = !DILocation(line: 1023, column: 2, scope: !1959)
!1976 = distinct !DISubprogram(name: "k_work_cancel_delayable", scope: !293, file: !293, line: 1026, type: !1977, scopeLine: 1027, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !248)
!1977 = !DISubroutineType(types: !1978)
!1978 = !{!120, !284}
!1979 = !DILocalVariable(name: "dwork", arg: 1, scope: !1976, file: !293, line: 1026, type: !284)
!1980 = !DILocation(line: 1026, column: 54, scope: !1976)
!1981 = !DILocation(line: 1030, column: 2, scope: !1976)
!1982 = !DILocation(line: 1030, column: 7, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1976, file: !293, line: 1030, column: 5)
!1984 = !DILocalVariable(name: "key", scope: !1976, file: !293, line: 1032, type: !505)
!1985 = !DILocation(line: 1032, column: 19, scope: !1976)
!1986 = !DILocation(line: 160, column: 94, scope: !511, inlinedAt: !1987)
!1987 = distinct !DILocation(line: 1032, column: 25, scope: !1976)
!1988 = !DILocation(line: 162, column: 9, scope: !511, inlinedAt: !1987)
!1989 = !DILocation(line: 163, column: 19, scope: !511, inlinedAt: !1987)
!1990 = !DILocation(line: 44, column: 15, scope: !521, inlinedAt: !1991)
!1991 = distinct !DILocation(line: 169, column: 10, scope: !511, inlinedAt: !1987)
!1992 = !DILocation(line: 48, column: 2, scope: !521, inlinedAt: !1991)
!1993 = !DILocation(line: 80, column: 9, scope: !521, inlinedAt: !1991)
!1994 = !DILocation(line: 169, column: 8, scope: !511, inlinedAt: !1987)
!1995 = !DILocation(line: 171, column: 26, scope: !511, inlinedAt: !1987)
!1996 = !DILocation(line: 110, column: 94, scope: !533, inlinedAt: !1997)
!1997 = distinct !DILocation(line: 171, column: 2, scope: !511, inlinedAt: !1987)
!1998 = !DILocation(line: 112, column: 9, scope: !533, inlinedAt: !1997)
!1999 = !DILocation(line: 177, column: 27, scope: !511, inlinedAt: !1987)
!2000 = !DILocation(line: 121, column: 95, scope: !541, inlinedAt: !2001)
!2001 = distinct !DILocation(line: 177, column: 2, scope: !511, inlinedAt: !1987)
!2002 = !DILocation(line: 123, column: 9, scope: !541, inlinedAt: !2001)
!2003 = !DILocation(line: 179, column: 2, scope: !511, inlinedAt: !1987)
!2004 = !DILocation(line: 1032, column: 25, scope: !1976)
!2005 = !DILocalVariable(name: "ret", scope: !1976, file: !293, line: 1033, type: !120)
!2006 = !DILocation(line: 1033, column: 6, scope: !1976)
!2007 = !DILocation(line: 1033, column: 42, scope: !1976)
!2008 = !DILocation(line: 1033, column: 12, scope: !1976)
!2009 = !DILocation(line: 1035, column: 2, scope: !1976)
!2010 = !DILocation(line: 235, column: 84, scope: !553, inlinedAt: !2011)
!2011 = distinct !DILocation(line: 1035, column: 2, scope: !1976)
!2012 = !DILocation(line: 236, column: 23, scope: !553, inlinedAt: !2011)
!2013 = !DILocation(line: 238, column: 9, scope: !553, inlinedAt: !2011)
!2014 = !DILocation(line: 261, column: 22, scope: !553, inlinedAt: !2011)
!2015 = !DILocation(line: 88, column: 80, scope: !563, inlinedAt: !2016)
!2016 = distinct !DILocation(line: 261, column: 2, scope: !553, inlinedAt: !2011)
!2017 = !DILocation(line: 91, column: 6, scope: !569, inlinedAt: !2016)
!2018 = !DILocation(line: 91, column: 10, scope: !569, inlinedAt: !2016)
!2019 = !DILocation(line: 91, column: 6, scope: !563, inlinedAt: !2016)
!2020 = !DILocation(line: 92, column: 3, scope: !573, inlinedAt: !2016)
!2021 = !DILocation(line: 94, column: 2, scope: !563, inlinedAt: !2016)
!2022 = !DILocation(line: 114, column: 1, scope: !563, inlinedAt: !2016)
!2023 = !DILocation(line: 1037, column: 2, scope: !1976)
!2024 = !DILocation(line: 1037, column: 7, scope: !2025)
!2025 = distinct !DILexicalBlock(scope: !1976, file: !293, line: 1037, column: 5)
!2026 = !DILocation(line: 1039, column: 9, scope: !1976)
!2027 = !DILocation(line: 1039, column: 2, scope: !1976)
!2028 = distinct !DISubprogram(name: "cancel_delayable_async_locked", scope: !293, file: !293, line: 947, type: !1977, scopeLine: 948, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!2029 = !DILocalVariable(name: "dwork", arg: 1, scope: !2028, file: !293, line: 947, type: !284)
!2030 = !DILocation(line: 947, column: 67, scope: !2028)
!2031 = !DILocation(line: 949, column: 26, scope: !2028)
!2032 = !DILocation(line: 949, column: 8, scope: !2028)
!2033 = !DILocation(line: 951, column: 30, scope: !2028)
!2034 = !DILocation(line: 951, column: 37, scope: !2028)
!2035 = !DILocation(line: 951, column: 9, scope: !2028)
!2036 = !DILocation(line: 951, column: 2, scope: !2028)
!2037 = distinct !DISubprogram(name: "k_work_cancel_delayable_sync", scope: !293, file: !293, line: 1042, type: !2038, scopeLine: 1044, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !248)
!2038 = !DISubroutineType(types: !2039)
!2039 = !{!772, !284, !773}
!2040 = !DILocalVariable(name: "dwork", arg: 1, scope: !2037, file: !293, line: 1042, type: !284)
!2041 = !DILocation(line: 1042, column: 61, scope: !2037)
!2042 = !DILocalVariable(name: "sync", arg: 2, scope: !2037, file: !293, line: 1043, type: !773)
!2043 = !DILocation(line: 1043, column: 27, scope: !2037)
!2044 = !DILocation(line: 1052, column: 2, scope: !2037)
!2045 = !DILocation(line: 1052, column: 7, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !2037, file: !293, line: 1052, column: 5)
!2047 = !DILocalVariable(name: "canceller", scope: !2037, file: !293, line: 1054, type: !278)
!2048 = !DILocation(line: 1054, column: 27, scope: !2037)
!2049 = !DILocation(line: 1054, column: 40, scope: !2037)
!2050 = !DILocation(line: 1054, column: 46, scope: !2037)
!2051 = !DILocalVariable(name: "key", scope: !2037, file: !293, line: 1055, type: !505)
!2052 = !DILocation(line: 1055, column: 19, scope: !2037)
!2053 = !DILocation(line: 160, column: 94, scope: !511, inlinedAt: !2054)
!2054 = distinct !DILocation(line: 1055, column: 25, scope: !2037)
!2055 = !DILocation(line: 162, column: 9, scope: !511, inlinedAt: !2054)
!2056 = !DILocation(line: 163, column: 19, scope: !511, inlinedAt: !2054)
!2057 = !DILocation(line: 44, column: 15, scope: !521, inlinedAt: !2058)
!2058 = distinct !DILocation(line: 169, column: 10, scope: !511, inlinedAt: !2054)
!2059 = !DILocation(line: 48, column: 2, scope: !521, inlinedAt: !2058)
!2060 = !DILocation(line: 80, column: 9, scope: !521, inlinedAt: !2058)
!2061 = !DILocation(line: 169, column: 8, scope: !511, inlinedAt: !2054)
!2062 = !DILocation(line: 171, column: 26, scope: !511, inlinedAt: !2054)
!2063 = !DILocation(line: 110, column: 94, scope: !533, inlinedAt: !2064)
!2064 = distinct !DILocation(line: 171, column: 2, scope: !511, inlinedAt: !2054)
!2065 = !DILocation(line: 112, column: 9, scope: !533, inlinedAt: !2064)
!2066 = !DILocation(line: 177, column: 27, scope: !511, inlinedAt: !2054)
!2067 = !DILocation(line: 121, column: 95, scope: !541, inlinedAt: !2068)
!2068 = distinct !DILocation(line: 177, column: 2, scope: !511, inlinedAt: !2054)
!2069 = !DILocation(line: 123, column: 9, scope: !541, inlinedAt: !2068)
!2070 = !DILocation(line: 179, column: 2, scope: !511, inlinedAt: !2054)
!2071 = !DILocation(line: 1055, column: 25, scope: !2037)
!2072 = !DILocalVariable(name: "pending", scope: !2037, file: !293, line: 1056, type: !772)
!2073 = !DILocation(line: 1056, column: 8, scope: !2037)
!2074 = !DILocation(line: 1056, column: 50, scope: !2037)
!2075 = !DILocation(line: 1056, column: 19, scope: !2037)
!2076 = !DILocation(line: 1056, column: 57, scope: !2037)
!2077 = !DILocalVariable(name: "need_wait", scope: !2037, file: !293, line: 1057, type: !772)
!2078 = !DILocation(line: 1057, column: 8, scope: !2037)
!2079 = !DILocation(line: 1059, column: 6, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !2037, file: !293, line: 1059, column: 6)
!2081 = !DILocation(line: 1059, column: 6, scope: !2037)
!2082 = !DILocation(line: 1060, column: 39, scope: !2083)
!2083 = distinct !DILexicalBlock(scope: !2080, file: !293, line: 1059, column: 15)
!2084 = !DILocation(line: 1060, column: 9, scope: !2083)
!2085 = !DILocation(line: 1061, column: 35, scope: !2083)
!2086 = !DILocation(line: 1061, column: 42, scope: !2083)
!2087 = !DILocation(line: 1061, column: 48, scope: !2083)
!2088 = !DILocation(line: 1061, column: 15, scope: !2083)
!2089 = !DILocation(line: 1061, column: 13, scope: !2083)
!2090 = !DILocation(line: 1062, column: 2, scope: !2083)
!2091 = !DILocation(line: 1064, column: 2, scope: !2037)
!2092 = !DILocation(line: 235, column: 84, scope: !553, inlinedAt: !2093)
!2093 = distinct !DILocation(line: 1064, column: 2, scope: !2037)
!2094 = !DILocation(line: 236, column: 23, scope: !553, inlinedAt: !2093)
!2095 = !DILocation(line: 238, column: 9, scope: !553, inlinedAt: !2093)
!2096 = !DILocation(line: 261, column: 22, scope: !553, inlinedAt: !2093)
!2097 = !DILocation(line: 88, column: 80, scope: !563, inlinedAt: !2098)
!2098 = distinct !DILocation(line: 261, column: 2, scope: !553, inlinedAt: !2093)
!2099 = !DILocation(line: 91, column: 6, scope: !569, inlinedAt: !2098)
!2100 = !DILocation(line: 91, column: 10, scope: !569, inlinedAt: !2098)
!2101 = !DILocation(line: 91, column: 6, scope: !563, inlinedAt: !2098)
!2102 = !DILocation(line: 92, column: 3, scope: !573, inlinedAt: !2098)
!2103 = !DILocation(line: 94, column: 2, scope: !563, inlinedAt: !2098)
!2104 = !DILocation(line: 114, column: 1, scope: !563, inlinedAt: !2098)
!2105 = !DILocation(line: 1066, column: 6, scope: !2106)
!2106 = distinct !DILexicalBlock(scope: !2037, file: !293, line: 1066, column: 6)
!2107 = !DILocation(line: 1066, column: 6, scope: !2037)
!2108 = !DILocation(line: 1067, column: 15, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !2106, file: !293, line: 1066, column: 17)
!2110 = !DILocation(line: 1067, column: 26, scope: !2109)
!2111 = !DILocation(line: 1067, column: 46, scope: !2109)
!2112 = !DILocation(line: 1067, column: 3, scope: !2109)
!2113 = !DILocation(line: 1068, column: 2, scope: !2109)
!2114 = !DILocation(line: 1070, column: 2, scope: !2037)
!2115 = !DILocation(line: 1070, column: 7, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !2037, file: !293, line: 1070, column: 5)
!2117 = !DILocation(line: 1071, column: 9, scope: !2037)
!2118 = !DILocation(line: 1071, column: 2, scope: !2037)
!2119 = distinct !DISubprogram(name: "k_work_flush_delayable", scope: !293, file: !293, line: 1074, type: !2038, scopeLine: 1076, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !248)
!2120 = !DILocalVariable(name: "dwork", arg: 1, scope: !2119, file: !293, line: 1074, type: !284)
!2121 = !DILocation(line: 1074, column: 55, scope: !2119)
!2122 = !DILocalVariable(name: "sync", arg: 2, scope: !2119, file: !293, line: 1075, type: !773)
!2123 = !DILocation(line: 1075, column: 28, scope: !2119)
!2124 = !DILocation(line: 1084, column: 2, scope: !2119)
!2125 = !DILocation(line: 1084, column: 7, scope: !2126)
!2126 = distinct !DILexicalBlock(scope: !2119, file: !293, line: 1084, column: 5)
!2127 = !DILocalVariable(name: "work", scope: !2119, file: !293, line: 1086, type: !121)
!2128 = !DILocation(line: 1086, column: 17, scope: !2119)
!2129 = !DILocation(line: 1086, column: 25, scope: !2119)
!2130 = !DILocation(line: 1086, column: 32, scope: !2119)
!2131 = !DILocalVariable(name: "flusher", scope: !2119, file: !293, line: 1087, type: !267)
!2132 = !DILocation(line: 1087, column: 25, scope: !2119)
!2133 = !DILocation(line: 1087, column: 36, scope: !2119)
!2134 = !DILocation(line: 1087, column: 42, scope: !2119)
!2135 = !DILocalVariable(name: "key", scope: !2119, file: !293, line: 1088, type: !505)
!2136 = !DILocation(line: 1088, column: 19, scope: !2119)
!2137 = !DILocation(line: 160, column: 94, scope: !511, inlinedAt: !2138)
!2138 = distinct !DILocation(line: 1088, column: 25, scope: !2119)
!2139 = !DILocation(line: 162, column: 9, scope: !511, inlinedAt: !2138)
!2140 = !DILocation(line: 163, column: 19, scope: !511, inlinedAt: !2138)
!2141 = !DILocation(line: 44, column: 15, scope: !521, inlinedAt: !2142)
!2142 = distinct !DILocation(line: 169, column: 10, scope: !511, inlinedAt: !2138)
!2143 = !DILocation(line: 48, column: 2, scope: !521, inlinedAt: !2142)
!2144 = !DILocation(line: 80, column: 9, scope: !521, inlinedAt: !2142)
!2145 = !DILocation(line: 169, column: 8, scope: !511, inlinedAt: !2138)
!2146 = !DILocation(line: 171, column: 26, scope: !511, inlinedAt: !2138)
!2147 = !DILocation(line: 110, column: 94, scope: !533, inlinedAt: !2148)
!2148 = distinct !DILocation(line: 171, column: 2, scope: !511, inlinedAt: !2138)
!2149 = !DILocation(line: 112, column: 9, scope: !533, inlinedAt: !2148)
!2150 = !DILocation(line: 177, column: 27, scope: !511, inlinedAt: !2138)
!2151 = !DILocation(line: 121, column: 95, scope: !541, inlinedAt: !2152)
!2152 = distinct !DILocation(line: 177, column: 2, scope: !511, inlinedAt: !2138)
!2153 = !DILocation(line: 123, column: 9, scope: !541, inlinedAt: !2152)
!2154 = !DILocation(line: 179, column: 2, scope: !511, inlinedAt: !2138)
!2155 = !DILocation(line: 1088, column: 25, scope: !2119)
!2156 = !DILocation(line: 1091, column: 27, scope: !2157)
!2157 = distinct !DILexicalBlock(scope: !2119, file: !293, line: 1091, column: 6)
!2158 = !DILocation(line: 1091, column: 6, scope: !2157)
!2159 = !DILocation(line: 1091, column: 33, scope: !2157)
!2160 = !DILocation(line: 1091, column: 6, scope: !2119)
!2161 = !DILocation(line: 1092, column: 3, scope: !2162)
!2162 = distinct !DILexicalBlock(scope: !2157, file: !293, line: 1091, column: 40)
!2163 = !DILocation(line: 235, column: 84, scope: !553, inlinedAt: !2164)
!2164 = distinct !DILocation(line: 1092, column: 3, scope: !2162)
!2165 = !DILocation(line: 236, column: 23, scope: !553, inlinedAt: !2164)
!2166 = !DILocation(line: 238, column: 9, scope: !553, inlinedAt: !2164)
!2167 = !DILocation(line: 261, column: 22, scope: !553, inlinedAt: !2164)
!2168 = !DILocation(line: 88, column: 80, scope: !563, inlinedAt: !2169)
!2169 = distinct !DILocation(line: 261, column: 2, scope: !553, inlinedAt: !2164)
!2170 = !DILocation(line: 91, column: 6, scope: !569, inlinedAt: !2169)
!2171 = !DILocation(line: 91, column: 10, scope: !569, inlinedAt: !2169)
!2172 = !DILocation(line: 91, column: 6, scope: !563, inlinedAt: !2169)
!2173 = !DILocation(line: 92, column: 3, scope: !573, inlinedAt: !2169)
!2174 = !DILocation(line: 94, column: 2, scope: !563, inlinedAt: !2169)
!2175 = !DILocation(line: 114, column: 1, scope: !563, inlinedAt: !2169)
!2176 = !DILocation(line: 1094, column: 3, scope: !2162)
!2177 = !DILocation(line: 1094, column: 8, scope: !2178)
!2178 = distinct !DILexicalBlock(scope: !2162, file: !293, line: 1094, column: 6)
!2179 = !DILocation(line: 1096, column: 3, scope: !2162)
!2180 = !DILocation(line: 1102, column: 24, scope: !2181)
!2181 = distinct !DILexicalBlock(scope: !2119, file: !293, line: 1102, column: 6)
!2182 = !DILocation(line: 1102, column: 6, scope: !2181)
!2183 = !DILocation(line: 1102, column: 6, scope: !2119)
!2184 = !DILocalVariable(name: "queue", scope: !2185, file: !293, line: 1103, type: !137)
!2185 = distinct !DILexicalBlock(scope: !2181, file: !293, line: 1102, column: 32)
!2186 = !DILocation(line: 1103, column: 20, scope: !2185)
!2187 = !DILocation(line: 1103, column: 28, scope: !2185)
!2188 = !DILocation(line: 1103, column: 35, scope: !2185)
!2189 = !DILocation(line: 1105, column: 32, scope: !2185)
!2190 = !DILocation(line: 1105, column: 9, scope: !2185)
!2191 = !DILocation(line: 1106, column: 2, scope: !2185)
!2192 = !DILocalVariable(name: "need_flush", scope: !2119, file: !293, line: 1109, type: !772)
!2193 = !DILocation(line: 1109, column: 8, scope: !2119)
!2194 = !DILocation(line: 1109, column: 39, scope: !2119)
!2195 = !DILocation(line: 1109, column: 45, scope: !2119)
!2196 = !DILocation(line: 1109, column: 21, scope: !2119)
!2197 = !DILocation(line: 1111, column: 2, scope: !2119)
!2198 = !DILocation(line: 235, column: 84, scope: !553, inlinedAt: !2199)
!2199 = distinct !DILocation(line: 1111, column: 2, scope: !2119)
!2200 = !DILocation(line: 236, column: 23, scope: !553, inlinedAt: !2199)
!2201 = !DILocation(line: 238, column: 9, scope: !553, inlinedAt: !2199)
!2202 = !DILocation(line: 261, column: 22, scope: !553, inlinedAt: !2199)
!2203 = !DILocation(line: 88, column: 80, scope: !563, inlinedAt: !2204)
!2204 = distinct !DILocation(line: 261, column: 2, scope: !553, inlinedAt: !2199)
!2205 = !DILocation(line: 91, column: 6, scope: !569, inlinedAt: !2204)
!2206 = !DILocation(line: 91, column: 10, scope: !569, inlinedAt: !2204)
!2207 = !DILocation(line: 91, column: 6, scope: !563, inlinedAt: !2204)
!2208 = !DILocation(line: 92, column: 3, scope: !573, inlinedAt: !2204)
!2209 = !DILocation(line: 94, column: 2, scope: !563, inlinedAt: !2204)
!2210 = !DILocation(line: 114, column: 1, scope: !563, inlinedAt: !2204)
!2211 = !DILocation(line: 1114, column: 6, scope: !2212)
!2212 = distinct !DILexicalBlock(scope: !2119, file: !293, line: 1114, column: 6)
!2213 = !DILocation(line: 1114, column: 6, scope: !2119)
!2214 = !DILocation(line: 1115, column: 15, scope: !2215)
!2215 = distinct !DILexicalBlock(scope: !2212, file: !293, line: 1114, column: 18)
!2216 = !DILocation(line: 1115, column: 24, scope: !2215)
!2217 = !DILocation(line: 1115, column: 44, scope: !2215)
!2218 = !DILocation(line: 1115, column: 3, scope: !2215)
!2219 = !DILocation(line: 1116, column: 2, scope: !2215)
!2220 = !DILocation(line: 1118, column: 2, scope: !2119)
!2221 = !DILocation(line: 1118, column: 7, scope: !2222)
!2222 = distinct !DILexicalBlock(scope: !2119, file: !293, line: 1118, column: 5)
!2223 = !DILocation(line: 1120, column: 9, scope: !2119)
!2224 = !DILocation(line: 1120, column: 2, scope: !2119)
!2225 = !DILocation(line: 1121, column: 1, scope: !2119)
!2226 = distinct !DISubprogram(name: "sys_sflist_is_empty", scope: !423, file: !423, line: 335, type: !2227, scopeLine: 335, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!2227 = !DISubroutineType(types: !2228)
!2228 = !{!772, !2229}
!2229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 32)
!2230 = !DILocalVariable(name: "list", arg: 1, scope: !2226, file: !423, line: 335, type: !2229)
!2231 = !DILocation(line: 335, column: 55, scope: !2226)
!2232 = !DILocation(line: 335, column: 92, scope: !2226)
!2233 = !DILocation(line: 335, column: 71, scope: !2226)
!2234 = !DILocation(line: 335, column: 98, scope: !2226)
!2235 = !DILocation(line: 335, column: 63, scope: !2226)
!2236 = distinct !DISubprogram(name: "sys_sflist_peek_head", scope: !423, file: !423, line: 255, type: !2237, scopeLine: 256, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!2237 = !DISubroutineType(types: !2238)
!2238 = !{!427, !2229}
!2239 = !DILocalVariable(name: "list", arg: 1, scope: !2236, file: !423, line: 255, type: !2229)
!2240 = !DILocation(line: 255, column: 64, scope: !2236)
!2241 = !DILocation(line: 257, column: 9, scope: !2236)
!2242 = !DILocation(line: 257, column: 15, scope: !2236)
!2243 = !DILocation(line: 257, column: 2, scope: !2236)
!2244 = distinct !DISubprogram(name: "flag_test", scope: !293, file: !293, line: 33, type: !2245, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!2245 = !DISubroutineType(types: !2246)
!2246 = !{!772, !1546, !199}
!2247 = !DILocalVariable(name: "flagp", arg: 1, scope: !2244, file: !293, line: 33, type: !1546)
!2248 = !DILocation(line: 33, column: 47, scope: !2244)
!2249 = !DILocalVariable(name: "bit", arg: 2, scope: !2244, file: !293, line: 34, type: !199)
!2250 = !DILocation(line: 34, column: 18, scope: !2244)
!2251 = !DILocation(line: 36, column: 11, scope: !2244)
!2252 = !DILocation(line: 36, column: 10, scope: !2244)
!2253 = !DILocation(line: 36, column: 28, scope: !2244)
!2254 = !DILocation(line: 36, column: 24, scope: !2244)
!2255 = !DILocation(line: 36, column: 17, scope: !2244)
!2256 = !DILocation(line: 36, column: 35, scope: !2244)
!2257 = !DILocation(line: 36, column: 2, scope: !2244)
!2258 = distinct !DISubprogram(name: "queue_submit_locked", scope: !293, file: !293, line: 251, type: !588, scopeLine: 253, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!2259 = !DILocalVariable(name: "queue", arg: 1, scope: !2258, file: !293, line: 251, type: !137)
!2260 = !DILocation(line: 251, column: 56, scope: !2258)
!2261 = !DILocalVariable(name: "work", arg: 2, scope: !2258, file: !293, line: 252, type: !121)
!2262 = !DILocation(line: 252, column: 26, scope: !2258)
!2263 = !DILocation(line: 254, column: 6, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !2258, file: !293, line: 254, column: 6)
!2265 = !DILocation(line: 254, column: 12, scope: !2264)
!2266 = !DILocation(line: 254, column: 6, scope: !2258)
!2267 = !DILocation(line: 255, column: 3, scope: !2268)
!2268 = distinct !DILexicalBlock(scope: !2264, file: !293, line: 254, column: 18)
!2269 = !DILocalVariable(name: "ret", scope: !2258, file: !293, line: 258, type: !120)
!2270 = !DILocation(line: 258, column: 6, scope: !2258)
!2271 = !DILocalVariable(name: "chained", scope: !2258, file: !293, line: 259, type: !772)
!2272 = !DILocation(line: 259, column: 8, scope: !2258)
!2273 = !DILocation(line: 259, column: 35, scope: !2258)
!2274 = !DILocation(line: 259, column: 47, scope: !2258)
!2275 = !DILocation(line: 259, column: 54, scope: !2258)
!2276 = !DILocation(line: 259, column: 43, scope: !2258)
!2277 = !DILocation(line: 259, column: 62, scope: !2258)
!2278 = !DILocation(line: 259, column: 66, scope: !2258)
!2279 = !DILocation(line: 259, column: 65, scope: !2258)
!2280 = !DILocation(line: 0, scope: !2258)
!2281 = !DILocalVariable(name: "draining", scope: !2258, file: !293, line: 260, type: !772)
!2282 = !DILocation(line: 260, column: 8, scope: !2258)
!2283 = !DILocation(line: 260, column: 30, scope: !2258)
!2284 = !DILocation(line: 260, column: 37, scope: !2258)
!2285 = !DILocation(line: 260, column: 19, scope: !2258)
!2286 = !DILocalVariable(name: "plugged", scope: !2258, file: !293, line: 261, type: !772)
!2287 = !DILocation(line: 261, column: 8, scope: !2258)
!2288 = !DILocation(line: 261, column: 29, scope: !2258)
!2289 = !DILocation(line: 261, column: 36, scope: !2258)
!2290 = !DILocation(line: 261, column: 18, scope: !2258)
!2291 = !DILocation(line: 270, column: 18, scope: !2292)
!2292 = distinct !DILexicalBlock(scope: !2258, file: !293, line: 270, column: 6)
!2293 = !DILocation(line: 270, column: 25, scope: !2292)
!2294 = !DILocation(line: 270, column: 7, scope: !2292)
!2295 = !DILocation(line: 270, column: 6, scope: !2258)
!2296 = !DILocation(line: 271, column: 7, scope: !2297)
!2297 = distinct !DILexicalBlock(scope: !2292, file: !293, line: 270, column: 59)
!2298 = !DILocation(line: 272, column: 2, scope: !2297)
!2299 = !DILocation(line: 272, column: 13, scope: !2300)
!2300 = distinct !DILexicalBlock(scope: !2292, file: !293, line: 272, column: 13)
!2301 = !DILocation(line: 272, column: 22, scope: !2300)
!2302 = !DILocation(line: 272, column: 26, scope: !2300)
!2303 = !DILocation(line: 272, column: 13, scope: !2292)
!2304 = !DILocation(line: 273, column: 7, scope: !2305)
!2305 = distinct !DILexicalBlock(scope: !2300, file: !293, line: 272, column: 35)
!2306 = !DILocation(line: 274, column: 2, scope: !2305)
!2307 = !DILocation(line: 274, column: 13, scope: !2308)
!2308 = distinct !DILexicalBlock(scope: !2300, file: !293, line: 274, column: 13)
!2309 = !DILocation(line: 274, column: 21, scope: !2308)
!2310 = !DILocation(line: 274, column: 25, scope: !2308)
!2311 = !DILocation(line: 274, column: 13, scope: !2300)
!2312 = !DILocation(line: 275, column: 7, scope: !2313)
!2313 = distinct !DILexicalBlock(scope: !2308, file: !293, line: 274, column: 35)
!2314 = !DILocation(line: 276, column: 2, scope: !2313)
!2315 = !DILocation(line: 277, column: 21, scope: !2316)
!2316 = distinct !DILexicalBlock(scope: !2308, file: !293, line: 276, column: 9)
!2317 = !DILocation(line: 277, column: 28, scope: !2316)
!2318 = !DILocation(line: 277, column: 38, scope: !2316)
!2319 = !DILocation(line: 277, column: 44, scope: !2316)
!2320 = !DILocation(line: 277, column: 3, scope: !2316)
!2321 = !DILocation(line: 278, column: 7, scope: !2316)
!2322 = !DILocation(line: 279, column: 29, scope: !2316)
!2323 = !DILocation(line: 279, column: 9, scope: !2316)
!2324 = !DILocation(line: 282, column: 9, scope: !2258)
!2325 = !DILocation(line: 282, column: 2, scope: !2258)
!2326 = !DILocation(line: 283, column: 1, scope: !2258)
!2327 = distinct !DISubprogram(name: "sys_slist_append", scope: !126, file: !126, line: 318, type: !2328, scopeLine: 318, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!2328 = !DISubroutineType(types: !2329)
!2329 = !{null, !1184, !259}
!2330 = !DILocalVariable(name: "list", arg: 1, scope: !2327, file: !126, line: 318, type: !1184)
!2331 = !DILocation(line: 318, column: 50, scope: !2327)
!2332 = !DILocalVariable(name: "node", arg: 2, scope: !2327, file: !126, line: 318, type: !259)
!2333 = !DILocation(line: 318, column: 69, scope: !2327)
!2334 = !DILocation(line: 318, column: 94, scope: !2327)
!2335 = !DILocation(line: 318, column: 77, scope: !2327)
!2336 = !DILocation(line: 318, column: 137, scope: !2337)
!2337 = distinct !DILexicalBlock(scope: !2327, file: !126, line: 318, column: 117)
!2338 = !DILocation(line: 318, column: 117, scope: !2337)
!2339 = !DILocation(line: 318, column: 143, scope: !2337)
!2340 = !DILocation(line: 318, column: 117, scope: !2327)
!2341 = !DILocation(line: 318, column: 177, scope: !2342)
!2342 = distinct !DILexicalBlock(scope: !2337, file: !126, line: 318, column: 158)
!2343 = !DILocation(line: 318, column: 183, scope: !2342)
!2344 = !DILocation(line: 318, column: 160, scope: !2342)
!2345 = !DILocation(line: 318, column: 207, scope: !2342)
!2346 = !DILocation(line: 318, column: 213, scope: !2342)
!2347 = !DILocation(line: 318, column: 190, scope: !2342)
!2348 = !DILocation(line: 318, column: 220, scope: !2342)
!2349 = !DILocation(line: 318, column: 267, scope: !2350)
!2350 = distinct !DILexicalBlock(scope: !2337, file: !126, line: 318, column: 227)
!2351 = !DILocation(line: 318, column: 247, scope: !2350)
!2352 = !DILocation(line: 318, column: 274, scope: !2350)
!2353 = !DILocation(line: 318, column: 229, scope: !2350)
!2354 = !DILocation(line: 318, column: 298, scope: !2350)
!2355 = !DILocation(line: 318, column: 304, scope: !2350)
!2356 = !DILocation(line: 318, column: 281, scope: !2350)
!2357 = !DILocation(line: 318, column: 313, scope: !2327)
!2358 = distinct !DISubprogram(name: "z_snode_next_set", scope: !126, file: !126, line: 216, type: !2359, scopeLine: 217, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!2359 = !DISubroutineType(types: !2360)
!2360 = !{null, !259, !259}
!2361 = !DILocalVariable(name: "parent", arg: 1, scope: !2358, file: !126, line: 216, type: !259)
!2362 = !DILocation(line: 216, column: 50, scope: !2358)
!2363 = !DILocalVariable(name: "child", arg: 2, scope: !2358, file: !126, line: 216, type: !259)
!2364 = !DILocation(line: 216, column: 71, scope: !2358)
!2365 = !DILocation(line: 218, column: 17, scope: !2358)
!2366 = !DILocation(line: 218, column: 2, scope: !2358)
!2367 = !DILocation(line: 218, column: 10, scope: !2358)
!2368 = !DILocation(line: 218, column: 15, scope: !2358)
!2369 = !DILocation(line: 219, column: 1, scope: !2358)
!2370 = distinct !DISubprogram(name: "sys_slist_peek_tail", scope: !126, file: !126, line: 250, type: !2371, scopeLine: 251, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!2371 = !DISubroutineType(types: !2372)
!2372 = !{!259, !1184}
!2373 = !DILocalVariable(name: "list", arg: 1, scope: !2370, file: !126, line: 250, type: !1184)
!2374 = !DILocation(line: 250, column: 61, scope: !2370)
!2375 = !DILocation(line: 252, column: 9, scope: !2370)
!2376 = !DILocation(line: 252, column: 15, scope: !2370)
!2377 = !DILocation(line: 252, column: 2, scope: !2370)
!2378 = distinct !DISubprogram(name: "z_slist_tail_set", scope: !126, file: !126, line: 226, type: !2328, scopeLine: 227, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!2379 = !DILocalVariable(name: "list", arg: 1, scope: !2378, file: !126, line: 226, type: !1184)
!2380 = !DILocation(line: 226, column: 50, scope: !2378)
!2381 = !DILocalVariable(name: "node", arg: 2, scope: !2378, file: !126, line: 226, type: !259)
!2382 = !DILocation(line: 226, column: 69, scope: !2378)
!2383 = !DILocation(line: 228, column: 15, scope: !2378)
!2384 = !DILocation(line: 228, column: 2, scope: !2378)
!2385 = !DILocation(line: 228, column: 8, scope: !2378)
!2386 = !DILocation(line: 228, column: 13, scope: !2378)
!2387 = !DILocation(line: 229, column: 1, scope: !2378)
!2388 = distinct !DISubprogram(name: "z_slist_head_set", scope: !126, file: !126, line: 221, type: !2328, scopeLine: 222, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!2389 = !DILocalVariable(name: "list", arg: 1, scope: !2388, file: !126, line: 221, type: !1184)
!2390 = !DILocation(line: 221, column: 50, scope: !2388)
!2391 = !DILocalVariable(name: "node", arg: 2, scope: !2388, file: !126, line: 221, type: !259)
!2392 = !DILocation(line: 221, column: 69, scope: !2388)
!2393 = !DILocation(line: 223, column: 15, scope: !2388)
!2394 = !DILocation(line: 223, column: 2, scope: !2388)
!2395 = !DILocation(line: 223, column: 8, scope: !2388)
!2396 = !DILocation(line: 223, column: 13, scope: !2388)
!2397 = !DILocation(line: 224, column: 1, scope: !2388)
!2398 = distinct !DISubprogram(name: "queue_flusher_locked", scope: !293, file: !293, line: 171, type: !2399, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!2399 = !DISubroutineType(types: !2400)
!2400 = !{null, !137, !121, !267}
!2401 = !DILocalVariable(name: "queue", arg: 1, scope: !2398, file: !293, line: 171, type: !137)
!2402 = !DILocation(line: 171, column: 51, scope: !2398)
!2403 = !DILocalVariable(name: "work", arg: 2, scope: !2398, file: !293, line: 172, type: !121)
!2404 = !DILocation(line: 172, column: 21, scope: !2398)
!2405 = !DILocalVariable(name: "flusher", arg: 3, scope: !2398, file: !293, line: 173, type: !267)
!2406 = !DILocation(line: 173, column: 29, scope: !2398)
!2407 = !DILocalVariable(name: "in_list", scope: !2398, file: !293, line: 175, type: !772)
!2408 = !DILocation(line: 175, column: 8, scope: !2398)
!2409 = !DILocalVariable(name: "wn", scope: !2398, file: !293, line: 176, type: !121)
!2410 = !DILocation(line: 176, column: 17, scope: !2398)
!2411 = !DILocation(line: 179, column: 35, scope: !2412)
!2412 = distinct !DILexicalBlock(scope: !2398, file: !293, line: 179, column: 2)
!2413 = !DILocation(line: 179, column: 42, scope: !2412)
!2414 = !DILocation(line: 179, column: 14, scope: !2412)
!2415 = !DILocation(line: 179, column: 13, scope: !2412)
!2416 = !DILocation(line: 179, column: 114, scope: !2417)
!2417 = distinct !DILexicalBlock(scope: !2412, file: !293, line: 179, column: 55)
!2418 = !DILocation(line: 179, column: 121, scope: !2417)
!2419 = !DILocation(line: 179, column: 93, scope: !2417)
!2420 = !DILocation(line: 179, column: 133, scope: !2417)
!2421 = !DILocation(line: 179, column: 55, scope: !2412)
!2422 = !DILocation(line: 179, column: 182, scope: !2417)
!2423 = !DILocation(line: 179, column: 10, scope: !2412)
!2424 = !DILocation(line: 179, column: 7, scope: !2412)
!2425 = !DILocation(line: 179, column: 191, scope: !2426)
!2426 = distinct !DILexicalBlock(scope: !2412, file: !293, line: 179, column: 2)
!2427 = !DILocation(line: 179, column: 194, scope: !2426)
!2428 = !DILocation(line: 179, column: 2, scope: !2412)
!2429 = !DILocation(line: 180, column: 7, scope: !2430)
!2430 = distinct !DILexicalBlock(scope: !2431, file: !293, line: 180, column: 7)
!2431 = distinct !DILexicalBlock(scope: !2426, file: !293, line: 179, column: 393)
!2432 = !DILocation(line: 180, column: 13, scope: !2430)
!2433 = !DILocation(line: 180, column: 10, scope: !2430)
!2434 = !DILocation(line: 180, column: 7, scope: !2431)
!2435 = !DILocation(line: 181, column: 12, scope: !2436)
!2436 = distinct !DILexicalBlock(scope: !2430, file: !293, line: 180, column: 19)
!2437 = !DILocation(line: 182, column: 4, scope: !2436)
!2438 = !DILocation(line: 184, column: 2, scope: !2431)
!2439 = !DILocation(line: 179, column: 207, scope: !2426)
!2440 = !DILocation(line: 179, column: 206, scope: !2426)
!2441 = !DILocation(line: 179, column: 238, scope: !2426)
!2442 = !DILocation(line: 179, column: 243, scope: !2426)
!2443 = !DILocation(line: 179, column: 215, scope: !2426)
!2444 = !DILocation(line: 179, column: 214, scope: !2426)
!2445 = !DILocation(line: 179, column: 315, scope: !2446)
!2446 = distinct !DILexicalBlock(scope: !2426, file: !293, line: 179, column: 254)
!2447 = !DILocation(line: 179, column: 320, scope: !2446)
!2448 = !DILocation(line: 179, column: 292, scope: !2446)
!2449 = !DILocation(line: 179, column: 330, scope: !2446)
!2450 = !DILocation(line: 179, column: 254, scope: !2426)
!2451 = !DILocation(line: 179, column: 379, scope: !2446)
!2452 = !DILocation(line: 179, column: 203, scope: !2426)
!2453 = !DILocation(line: 179, column: 2, scope: !2426)
!2454 = distinct !{!2454, !2428, !2455}
!2455 = !DILocation(line: 184, column: 2, scope: !2412)
!2456 = !DILocation(line: 186, column: 15, scope: !2398)
!2457 = !DILocation(line: 186, column: 2, scope: !2398)
!2458 = !DILocation(line: 187, column: 6, scope: !2459)
!2459 = distinct !DILexicalBlock(scope: !2398, file: !293, line: 187, column: 6)
!2460 = !DILocation(line: 187, column: 6, scope: !2398)
!2461 = !DILocation(line: 188, column: 21, scope: !2462)
!2462 = distinct !DILexicalBlock(scope: !2459, file: !293, line: 187, column: 15)
!2463 = !DILocation(line: 188, column: 28, scope: !2462)
!2464 = !DILocation(line: 188, column: 38, scope: !2462)
!2465 = !DILocation(line: 188, column: 44, scope: !2462)
!2466 = !DILocation(line: 189, column: 7, scope: !2462)
!2467 = !DILocation(line: 189, column: 16, scope: !2462)
!2468 = !DILocation(line: 189, column: 21, scope: !2462)
!2469 = !DILocation(line: 188, column: 3, scope: !2462)
!2470 = !DILocation(line: 190, column: 2, scope: !2462)
!2471 = !DILocation(line: 191, column: 22, scope: !2472)
!2472 = distinct !DILexicalBlock(scope: !2459, file: !293, line: 190, column: 9)
!2473 = !DILocation(line: 191, column: 29, scope: !2472)
!2474 = !DILocation(line: 191, column: 39, scope: !2472)
!2475 = !DILocation(line: 191, column: 48, scope: !2472)
!2476 = !DILocation(line: 191, column: 53, scope: !2472)
!2477 = !DILocation(line: 191, column: 3, scope: !2472)
!2478 = !DILocation(line: 193, column: 1, scope: !2398)
!2479 = distinct !DISubprogram(name: "sys_slist_peek_head", scope: !126, file: !126, line: 238, type: !2371, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!2480 = !DILocalVariable(name: "list", arg: 1, scope: !2479, file: !126, line: 238, type: !1184)
!2481 = !DILocation(line: 238, column: 61, scope: !2479)
!2482 = !DILocation(line: 240, column: 9, scope: !2479)
!2483 = !DILocation(line: 240, column: 15, scope: !2479)
!2484 = !DILocation(line: 240, column: 2, scope: !2479)
!2485 = distinct !DISubprogram(name: "sys_slist_peek_next", scope: !126, file: !126, line: 292, type: !2486, scopeLine: 292, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!2486 = !DISubroutineType(types: !2487)
!2487 = !{!259, !259}
!2488 = !DILocalVariable(name: "node", arg: 1, scope: !2485, file: !126, line: 292, type: !259)
!2489 = !DILocation(line: 292, column: 62, scope: !2485)
!2490 = !DILocation(line: 292, column: 77, scope: !2485)
!2491 = !DILocation(line: 292, column: 82, scope: !2485)
!2492 = !DILocation(line: 292, column: 127, scope: !2485)
!2493 = !DILocation(line: 292, column: 98, scope: !2485)
!2494 = !DILocation(line: 292, column: 70, scope: !2485)
!2495 = distinct !DISubprogram(name: "init_flusher", scope: !293, file: !293, line: 74, type: !2496, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!2496 = !DISubroutineType(types: !2497)
!2497 = !{null, !267}
!2498 = !DILocalVariable(name: "flusher", arg: 1, scope: !2495, file: !293, line: 74, type: !267)
!2499 = !DILocation(line: 74, column: 56, scope: !2495)
!2500 = !DILocation(line: 76, column: 14, scope: !2495)
!2501 = !DILocation(line: 76, column: 23, scope: !2495)
!2502 = !DILocation(line: 76, column: 2, scope: !2495)
!2503 = !DILocation(line: 77, column: 15, scope: !2495)
!2504 = !DILocation(line: 77, column: 24, scope: !2495)
!2505 = !DILocation(line: 77, column: 2, scope: !2495)
!2506 = !DILocation(line: 78, column: 1, scope: !2495)
!2507 = distinct !DISubprogram(name: "sys_slist_insert", scope: !126, file: !126, line: 365, type: !2508, scopeLine: 365, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!2508 = !DISubroutineType(types: !2509)
!2509 = !{null, !1184, !259, !259}
!2510 = !DILocalVariable(name: "list", arg: 1, scope: !2507, file: !126, line: 365, type: !1184)
!2511 = !DILocation(line: 365, column: 50, scope: !2507)
!2512 = !DILocalVariable(name: "prev", arg: 2, scope: !2507, file: !126, line: 365, type: !259)
!2513 = !DILocation(line: 365, column: 69, scope: !2507)
!2514 = !DILocalVariable(name: "node", arg: 3, scope: !2507, file: !126, line: 365, type: !259)
!2515 = !DILocation(line: 365, column: 88, scope: !2507)
!2516 = !DILocation(line: 365, column: 100, scope: !2517)
!2517 = distinct !DILexicalBlock(scope: !2507, file: !126, line: 365, column: 100)
!2518 = !DILocation(line: 365, column: 105, scope: !2517)
!2519 = !DILocation(line: 365, column: 100, scope: !2507)
!2520 = !DILocation(line: 365, column: 140, scope: !2521)
!2521 = distinct !DILexicalBlock(scope: !2517, file: !126, line: 365, column: 120)
!2522 = !DILocation(line: 365, column: 146, scope: !2521)
!2523 = !DILocation(line: 365, column: 122, scope: !2521)
!2524 = !DILocation(line: 365, column: 153, scope: !2521)
!2525 = !DILocation(line: 365, column: 182, scope: !2526)
!2526 = distinct !DILexicalBlock(scope: !2517, file: !126, line: 365, column: 164)
!2527 = !DILocation(line: 365, column: 164, scope: !2526)
!2528 = !DILocation(line: 365, column: 188, scope: !2526)
!2529 = !DILocation(line: 365, column: 164, scope: !2517)
!2530 = !DILocation(line: 365, column: 222, scope: !2531)
!2531 = distinct !DILexicalBlock(scope: !2526, file: !126, line: 365, column: 203)
!2532 = !DILocation(line: 365, column: 228, scope: !2531)
!2533 = !DILocation(line: 365, column: 205, scope: !2531)
!2534 = !DILocation(line: 365, column: 235, scope: !2531)
!2535 = !DILocation(line: 365, column: 261, scope: !2536)
!2536 = distinct !DILexicalBlock(scope: !2526, file: !126, line: 365, column: 242)
!2537 = !DILocation(line: 365, column: 285, scope: !2536)
!2538 = !DILocation(line: 365, column: 267, scope: !2536)
!2539 = !DILocation(line: 365, column: 244, scope: !2536)
!2540 = !DILocation(line: 365, column: 310, scope: !2536)
!2541 = !DILocation(line: 365, column: 316, scope: !2536)
!2542 = !DILocation(line: 365, column: 293, scope: !2536)
!2543 = !DILocation(line: 365, column: 325, scope: !2507)
!2544 = distinct !DISubprogram(name: "sys_slist_prepend", scope: !126, file: !126, line: 305, type: !2328, scopeLine: 305, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!2545 = !DILocalVariable(name: "list", arg: 1, scope: !2544, file: !126, line: 305, type: !1184)
!2546 = !DILocation(line: 305, column: 51, scope: !2544)
!2547 = !DILocalVariable(name: "node", arg: 2, scope: !2544, file: !126, line: 305, type: !259)
!2548 = !DILocation(line: 305, column: 70, scope: !2544)
!2549 = !DILocation(line: 305, column: 95, scope: !2544)
!2550 = !DILocation(line: 305, column: 121, scope: !2544)
!2551 = !DILocation(line: 305, column: 101, scope: !2544)
!2552 = !DILocation(line: 305, column: 78, scope: !2544)
!2553 = !DILocation(line: 305, column: 146, scope: !2544)
!2554 = !DILocation(line: 305, column: 152, scope: !2544)
!2555 = !DILocation(line: 305, column: 129, scope: !2544)
!2556 = !DILocation(line: 305, column: 183, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !2544, file: !126, line: 305, column: 163)
!2558 = !DILocation(line: 305, column: 163, scope: !2557)
!2559 = !DILocation(line: 305, column: 189, scope: !2557)
!2560 = !DILocation(line: 305, column: 163, scope: !2544)
!2561 = !DILocation(line: 305, column: 223, scope: !2562)
!2562 = distinct !DILexicalBlock(scope: !2557, file: !126, line: 305, column: 204)
!2563 = !DILocation(line: 305, column: 249, scope: !2562)
!2564 = !DILocation(line: 305, column: 229, scope: !2562)
!2565 = !DILocation(line: 305, column: 206, scope: !2562)
!2566 = !DILocation(line: 305, column: 257, scope: !2562)
!2567 = !DILocation(line: 305, column: 259, scope: !2544)
!2568 = distinct !DISubprogram(name: "sys_slist_peek_next_no_check", scope: !126, file: !126, line: 281, type: !2486, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!2569 = !DILocalVariable(name: "node", arg: 1, scope: !2568, file: !126, line: 281, type: !259)
!2570 = !DILocation(line: 281, column: 71, scope: !2568)
!2571 = !DILocation(line: 281, column: 104, scope: !2568)
!2572 = !DILocation(line: 281, column: 86, scope: !2568)
!2573 = !DILocation(line: 281, column: 79, scope: !2568)
!2574 = distinct !DISubprogram(name: "z_snode_next_peek", scope: !126, file: !126, line: 211, type: !2486, scopeLine: 212, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!2575 = !DILocalVariable(name: "node", arg: 1, scope: !2574, file: !126, line: 211, type: !259)
!2576 = !DILocation(line: 211, column: 59, scope: !2574)
!2577 = !DILocation(line: 213, column: 9, scope: !2574)
!2578 = !DILocation(line: 213, column: 15, scope: !2574)
!2579 = !DILocation(line: 213, column: 2, scope: !2574)
!2580 = distinct !DISubprogram(name: "k_sem_init", scope: !881, file: !881, line: 1075, type: !2581, scopeLine: 1076, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!2581 = !DISubroutineType(types: !2582)
!2582 = !{!120, !446, !200, !200}
!2583 = !DILocalVariable(name: "sem", arg: 1, scope: !2580, file: !881, line: 1075, type: !446)
!2584 = !DILocation(line: 1075, column: 45, scope: !2580)
!2585 = !DILocalVariable(name: "initial_count", arg: 2, scope: !2580, file: !881, line: 1075, type: !200)
!2586 = !DILocation(line: 1075, column: 63, scope: !2580)
!2587 = !DILocalVariable(name: "limit", arg: 3, scope: !2580, file: !881, line: 1075, type: !200)
!2588 = !DILocation(line: 1075, column: 91, scope: !2580)
!2589 = !DILocation(line: 1085, column: 2, scope: !2580)
!2590 = !DILocation(line: 1085, column: 7, scope: !2591)
!2591 = distinct !DILexicalBlock(scope: !2580, file: !881, line: 1085, column: 5)
!2592 = !{i64 149851}
!2593 = !DILocation(line: 1085, column: 47, scope: !2591)
!2594 = !DILocation(line: 1086, column: 27, scope: !2580)
!2595 = !DILocation(line: 1086, column: 32, scope: !2580)
!2596 = !DILocation(line: 1086, column: 47, scope: !2580)
!2597 = !DILocation(line: 1086, column: 9, scope: !2580)
!2598 = !DILocation(line: 1086, column: 2, scope: !2580)
!2599 = distinct !DISubprogram(name: "handle_flush", scope: !293, file: !293, line: 66, type: !134, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!2600 = !DILocalVariable(name: "work", arg: 1, scope: !2599, file: !293, line: 66, type: !121)
!2601 = !DILocation(line: 66, column: 41, scope: !2599)
!2602 = !DILocalVariable(name: "flusher", scope: !2599, file: !293, line: 68, type: !267)
!2603 = !DILocation(line: 68, column: 25, scope: !2599)
!2604 = !DILocation(line: 69, column: 47, scope: !2605)
!2605 = distinct !DILexicalBlock(scope: !2599, file: !293, line: 69, column: 6)
!2606 = !DILocation(line: 69, column: 54, scope: !2605)
!2607 = !DILocation(line: 69, column: 6, scope: !2599)
!2608 = !DILocation(line: 69, column: 107, scope: !2605)
!2609 = !DILocation(line: 71, column: 14, scope: !2599)
!2610 = !DILocation(line: 71, column: 23, scope: !2599)
!2611 = !DILocation(line: 71, column: 2, scope: !2599)
!2612 = !DILocation(line: 72, column: 1, scope: !2599)
!2613 = distinct !DISubprogram(name: "k_sem_give", scope: !881, file: !881, line: 1110, type: !2614, scopeLine: 1111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!2614 = !DISubroutineType(types: !2615)
!2615 = !{null, !446}
!2616 = !DILocalVariable(name: "sem", arg: 1, scope: !2613, file: !881, line: 1110, type: !446)
!2617 = !DILocation(line: 1110, column: 46, scope: !2613)
!2618 = !DILocation(line: 1119, column: 2, scope: !2613)
!2619 = !DILocation(line: 1119, column: 7, scope: !2620)
!2620 = distinct !DILexicalBlock(scope: !2613, file: !881, line: 1119, column: 5)
!2621 = !{i64 150336}
!2622 = !DILocation(line: 1119, column: 47, scope: !2620)
!2623 = !DILocation(line: 1120, column: 20, scope: !2613)
!2624 = !DILocation(line: 1120, column: 2, scope: !2613)
!2625 = !DILocation(line: 1121, column: 1, scope: !2613)
!2626 = distinct !DISubprogram(name: "queue_remove_locked", scope: !293, file: !293, line: 202, type: !2627, scopeLine: 204, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!2627 = !DISubroutineType(types: !2628)
!2628 = !{null, !137, !121}
!2629 = !DILocalVariable(name: "queue", arg: 1, scope: !2626, file: !293, line: 202, type: !137)
!2630 = !DILocation(line: 202, column: 57, scope: !2626)
!2631 = !DILocalVariable(name: "work", arg: 2, scope: !2626, file: !293, line: 203, type: !121)
!2632 = !DILocation(line: 203, column: 27, scope: !2626)
!2633 = !DILocation(line: 205, column: 27, scope: !2634)
!2634 = distinct !DILexicalBlock(scope: !2626, file: !293, line: 205, column: 6)
!2635 = !DILocation(line: 205, column: 33, scope: !2634)
!2636 = !DILocation(line: 205, column: 6, scope: !2634)
!2637 = !DILocation(line: 205, column: 6, scope: !2626)
!2638 = !DILocation(line: 206, column: 36, scope: !2639)
!2639 = distinct !DILexicalBlock(scope: !2634, file: !293, line: 205, column: 60)
!2640 = !DILocation(line: 206, column: 43, scope: !2639)
!2641 = !DILocation(line: 206, column: 53, scope: !2639)
!2642 = !DILocation(line: 206, column: 59, scope: !2639)
!2643 = !DILocation(line: 206, column: 9, scope: !2639)
!2644 = !DILocation(line: 207, column: 2, scope: !2639)
!2645 = !DILocation(line: 208, column: 1, scope: !2626)
!2646 = distinct !DISubprogram(name: "sys_slist_find_and_remove", scope: !126, file: !126, line: 435, type: !2647, scopeLine: 435, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!2647 = !DISubroutineType(types: !2648)
!2648 = !{!772, !1184, !259}
!2649 = !DILocalVariable(name: "list", arg: 1, scope: !2646, file: !126, line: 435, type: !1184)
!2650 = !DILocation(line: 435, column: 60, scope: !2646)
!2651 = !DILocalVariable(name: "node", arg: 2, scope: !2646, file: !126, line: 435, type: !259)
!2652 = !DILocation(line: 435, column: 79, scope: !2646)
!2653 = !DILocalVariable(name: "prev", scope: !2646, file: !126, line: 435, type: !259)
!2654 = !DILocation(line: 435, column: 100, scope: !2646)
!2655 = !DILocalVariable(name: "test", scope: !2646, file: !126, line: 435, type: !259)
!2656 = !DILocation(line: 435, column: 132, scope: !2646)
!2657 = !DILocation(line: 435, column: 170, scope: !2658)
!2658 = distinct !DILexicalBlock(scope: !2646, file: !126, line: 435, column: 138)
!2659 = !DILocation(line: 435, column: 150, scope: !2658)
!2660 = !DILocation(line: 435, column: 148, scope: !2658)
!2661 = !DILocation(line: 435, column: 143, scope: !2658)
!2662 = !DILocation(line: 435, column: 177, scope: !2663)
!2663 = distinct !DILexicalBlock(scope: !2658, file: !126, line: 435, column: 138)
!2664 = !DILocation(line: 435, column: 182, scope: !2663)
!2665 = !DILocation(line: 435, column: 138, scope: !2658)
!2666 = !DILocation(line: 435, column: 237, scope: !2667)
!2667 = distinct !DILexicalBlock(scope: !2668, file: !126, line: 435, column: 237)
!2668 = distinct !DILexicalBlock(scope: !2663, file: !126, line: 435, column: 231)
!2669 = !DILocation(line: 435, column: 245, scope: !2667)
!2670 = !DILocation(line: 435, column: 242, scope: !2667)
!2671 = !DILocation(line: 435, column: 237, scope: !2668)
!2672 = !DILocation(line: 435, column: 270, scope: !2673)
!2673 = distinct !DILexicalBlock(scope: !2667, file: !126, line: 435, column: 251)
!2674 = !DILocation(line: 435, column: 276, scope: !2673)
!2675 = !DILocation(line: 435, column: 282, scope: !2673)
!2676 = !DILocation(line: 435, column: 253, scope: !2673)
!2677 = !DILocation(line: 435, column: 289, scope: !2673)
!2678 = !DILocation(line: 435, column: 308, scope: !2668)
!2679 = !DILocation(line: 435, column: 306, scope: !2668)
!2680 = !DILocation(line: 435, column: 314, scope: !2668)
!2681 = !DILocation(line: 435, column: 224, scope: !2663)
!2682 = !DILocation(line: 435, column: 204, scope: !2663)
!2683 = !DILocation(line: 435, column: 202, scope: !2663)
!2684 = !DILocation(line: 435, column: 138, scope: !2663)
!2685 = distinct !{!2685, !2665, !2686}
!2686 = !DILocation(line: 435, column: 314, scope: !2658)
!2687 = !DILocation(line: 435, column: 316, scope: !2646)
!2688 = !DILocation(line: 435, column: 326, scope: !2646)
!2689 = distinct !DISubprogram(name: "sys_slist_remove", scope: !126, file: !126, line: 408, type: !2508, scopeLine: 408, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!2690 = !DILocalVariable(name: "list", arg: 1, scope: !2689, file: !126, line: 408, type: !1184)
!2691 = !DILocation(line: 408, column: 50, scope: !2689)
!2692 = !DILocalVariable(name: "prev_node", arg: 2, scope: !2689, file: !126, line: 408, type: !259)
!2693 = !DILocation(line: 408, column: 69, scope: !2689)
!2694 = !DILocalVariable(name: "node", arg: 3, scope: !2689, file: !126, line: 408, type: !259)
!2695 = !DILocation(line: 408, column: 93, scope: !2689)
!2696 = !DILocation(line: 408, column: 105, scope: !2697)
!2697 = distinct !DILexicalBlock(scope: !2689, file: !126, line: 408, column: 105)
!2698 = !DILocation(line: 408, column: 115, scope: !2697)
!2699 = !DILocation(line: 408, column: 105, scope: !2689)
!2700 = !DILocation(line: 408, column: 149, scope: !2701)
!2701 = distinct !DILexicalBlock(scope: !2697, file: !126, line: 408, column: 130)
!2702 = !DILocation(line: 408, column: 173, scope: !2701)
!2703 = !DILocation(line: 408, column: 155, scope: !2701)
!2704 = !DILocation(line: 408, column: 132, scope: !2701)
!2705 = !DILocation(line: 408, column: 205, scope: !2706)
!2706 = distinct !DILexicalBlock(scope: !2701, file: !126, line: 408, column: 185)
!2707 = !DILocation(line: 408, column: 185, scope: !2706)
!2708 = !DILocation(line: 408, column: 214, scope: !2706)
!2709 = !DILocation(line: 408, column: 211, scope: !2706)
!2710 = !DILocation(line: 408, column: 185, scope: !2701)
!2711 = !DILocation(line: 408, column: 239, scope: !2712)
!2712 = distinct !DILexicalBlock(scope: !2706, file: !126, line: 408, column: 220)
!2713 = !DILocation(line: 408, column: 265, scope: !2712)
!2714 = !DILocation(line: 408, column: 245, scope: !2712)
!2715 = !DILocation(line: 408, column: 222, scope: !2712)
!2716 = !DILocation(line: 408, column: 273, scope: !2712)
!2717 = !DILocation(line: 408, column: 275, scope: !2701)
!2718 = !DILocation(line: 408, column: 301, scope: !2719)
!2719 = distinct !DILexicalBlock(scope: !2697, file: !126, line: 408, column: 282)
!2720 = !DILocation(line: 408, column: 330, scope: !2719)
!2721 = !DILocation(line: 408, column: 312, scope: !2719)
!2722 = !DILocation(line: 408, column: 284, scope: !2719)
!2723 = !DILocation(line: 408, column: 362, scope: !2724)
!2724 = distinct !DILexicalBlock(scope: !2719, file: !126, line: 408, column: 342)
!2725 = !DILocation(line: 408, column: 342, scope: !2724)
!2726 = !DILocation(line: 408, column: 371, scope: !2724)
!2727 = !DILocation(line: 408, column: 368, scope: !2724)
!2728 = !DILocation(line: 408, column: 342, scope: !2719)
!2729 = !DILocation(line: 408, column: 396, scope: !2730)
!2730 = distinct !DILexicalBlock(scope: !2724, file: !126, line: 408, column: 377)
!2731 = !DILocation(line: 408, column: 402, scope: !2730)
!2732 = !DILocation(line: 408, column: 379, scope: !2730)
!2733 = !DILocation(line: 408, column: 414, scope: !2730)
!2734 = !DILocation(line: 408, column: 435, scope: !2689)
!2735 = !DILocation(line: 408, column: 418, scope: !2689)
!2736 = !DILocation(line: 408, column: 454, scope: !2689)
!2737 = distinct !DISubprogram(name: "init_work_cancel", scope: !293, file: !293, line: 91, type: !2738, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!2738 = !DISubroutineType(types: !2739)
!2739 = !{null, !278, !121}
!2740 = !DILocalVariable(name: "canceler", arg: 1, scope: !2737, file: !293, line: 91, type: !278)
!2741 = !DILocation(line: 91, column: 62, scope: !2737)
!2742 = !DILocalVariable(name: "work", arg: 2, scope: !2737, file: !293, line: 92, type: !121)
!2743 = !DILocation(line: 92, column: 24, scope: !2737)
!2744 = !DILocation(line: 94, column: 14, scope: !2737)
!2745 = !DILocation(line: 94, column: 24, scope: !2737)
!2746 = !DILocation(line: 94, column: 2, scope: !2737)
!2747 = !DILocation(line: 95, column: 19, scope: !2737)
!2748 = !DILocation(line: 95, column: 2, scope: !2737)
!2749 = !DILocation(line: 95, column: 12, scope: !2737)
!2750 = !DILocation(line: 95, column: 17, scope: !2737)
!2751 = !DILocation(line: 96, column: 38, scope: !2737)
!2752 = !DILocation(line: 96, column: 48, scope: !2737)
!2753 = !DILocation(line: 96, column: 2, scope: !2737)
!2754 = !DILocation(line: 97, column: 1, scope: !2737)
!2755 = distinct !DISubprogram(name: "sys_dlist_init", scope: !152, file: !152, line: 203, type: !2756, scopeLine: 204, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!2756 = !DISubroutineType(types: !2757)
!2757 = !{null, !2758}
!2758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 32)
!2759 = !DILocalVariable(name: "list", arg: 1, scope: !2755, file: !152, line: 203, type: !2758)
!2760 = !DILocation(line: 203, column: 48, scope: !2755)
!2761 = !DILocation(line: 205, column: 30, scope: !2755)
!2762 = !DILocation(line: 205, column: 2, scope: !2755)
!2763 = !DILocation(line: 205, column: 8, scope: !2755)
!2764 = !DILocation(line: 205, column: 13, scope: !2755)
!2765 = !DILocation(line: 206, column: 30, scope: !2755)
!2766 = !DILocation(line: 206, column: 2, scope: !2755)
!2767 = !DILocation(line: 206, column: 8, scope: !2755)
!2768 = !DILocation(line: 206, column: 13, scope: !2755)
!2769 = !DILocation(line: 207, column: 1, scope: !2755)
!2770 = distinct !DISubprogram(name: "sys_slist_get", scope: !126, file: !126, line: 392, type: !2371, scopeLine: 392, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!2771 = !DILocalVariable(name: "list", arg: 1, scope: !2770, file: !126, line: 392, type: !1184)
!2772 = !DILocation(line: 392, column: 56, scope: !2770)
!2773 = !DILocation(line: 392, column: 90, scope: !2770)
!2774 = !DILocation(line: 392, column: 71, scope: !2770)
!2775 = !DILocation(line: 392, column: 135, scope: !2770)
!2776 = !DILocation(line: 392, column: 111, scope: !2770)
!2777 = !DILocation(line: 392, column: 64, scope: !2770)
!2778 = distinct !DISubprogram(name: "flag_clear", scope: !293, file: !293, line: 21, type: !1205, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!2779 = !DILocalVariable(name: "flagp", arg: 1, scope: !2778, file: !293, line: 21, type: !1207)
!2780 = !DILocation(line: 21, column: 41, scope: !2778)
!2781 = !DILocalVariable(name: "bit", arg: 2, scope: !2778, file: !293, line: 22, type: !199)
!2782 = !DILocation(line: 22, column: 19, scope: !2778)
!2783 = !DILocation(line: 24, column: 22, scope: !2778)
!2784 = !DILocation(line: 24, column: 18, scope: !2778)
!2785 = !DILocation(line: 24, column: 12, scope: !2778)
!2786 = !DILocation(line: 24, column: 3, scope: !2778)
!2787 = !DILocation(line: 24, column: 9, scope: !2778)
!2788 = !DILocation(line: 25, column: 1, scope: !2778)
!2789 = distinct !DISubprogram(name: "z_sched_wake_all", scope: !743, file: !743, line: 335, type: !2790, scopeLine: 337, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!2790 = !DISubroutineType(types: !2791)
!2791 = !{!772, !176, !120, !119}
!2792 = !DILocalVariable(name: "wait_q", arg: 1, scope: !2789, file: !743, line: 335, type: !176)
!2793 = !DILocation(line: 335, column: 49, scope: !2789)
!2794 = !DILocalVariable(name: "swap_retval", arg: 2, scope: !2789, file: !743, line: 335, type: !120)
!2795 = !DILocation(line: 335, column: 61, scope: !2789)
!2796 = !DILocalVariable(name: "swap_data", arg: 3, scope: !2789, file: !743, line: 336, type: !119)
!2797 = !DILocation(line: 336, column: 15, scope: !2789)
!2798 = !DILocalVariable(name: "woken", scope: !2789, file: !743, line: 338, type: !772)
!2799 = !DILocation(line: 338, column: 8, scope: !2789)
!2800 = !DILocation(line: 340, column: 2, scope: !2789)
!2801 = !DILocation(line: 340, column: 22, scope: !2789)
!2802 = !DILocation(line: 340, column: 30, scope: !2789)
!2803 = !DILocation(line: 340, column: 43, scope: !2789)
!2804 = !DILocation(line: 340, column: 9, scope: !2789)
!2805 = !DILocation(line: 341, column: 9, scope: !2806)
!2806 = distinct !DILexicalBlock(scope: !2789, file: !743, line: 340, column: 55)
!2807 = distinct !{!2807, !2800, !2808}
!2808 = !DILocation(line: 342, column: 2, scope: !2789)
!2809 = !DILocation(line: 345, column: 9, scope: !2789)
!2810 = !DILocation(line: 345, column: 2, scope: !2789)
!2811 = distinct !DISubprogram(name: "finalize_cancel_locked", scope: !293, file: !293, line: 109, type: !134, scopeLine: 110, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!2812 = !DILocalVariable(name: "work", arg: 1, scope: !2811, file: !293, line: 109, type: !121)
!2813 = !DILocation(line: 109, column: 51, scope: !2811)
!2814 = !DILocalVariable(name: "wc", scope: !2811, file: !293, line: 111, type: !278)
!2815 = !DILocation(line: 111, column: 27, scope: !2811)
!2816 = !DILocalVariable(name: "tmp", scope: !2811, file: !293, line: 111, type: !278)
!2817 = !DILocation(line: 111, column: 32, scope: !2811)
!2818 = !DILocalVariable(name: "prev", scope: !2811, file: !293, line: 112, type: !259)
!2819 = !DILocation(line: 112, column: 15, scope: !2811)
!2820 = !DILocation(line: 117, column: 14, scope: !2811)
!2821 = !DILocation(line: 117, column: 20, scope: !2811)
!2822 = !DILocation(line: 117, column: 2, scope: !2811)
!2823 = !DILocation(line: 124, column: 14, scope: !2824)
!2824 = distinct !DILexicalBlock(scope: !2811, file: !293, line: 124, column: 2)
!2825 = !DILocation(line: 124, column: 13, scope: !2824)
!2826 = !DILocation(line: 124, column: 94, scope: !2827)
!2827 = distinct !DILexicalBlock(scope: !2824, file: !293, line: 124, column: 56)
!2828 = !DILocation(line: 124, column: 135, scope: !2827)
!2829 = !DILocation(line: 124, column: 56, scope: !2824)
!2830 = !DILocation(line: 124, column: 184, scope: !2827)
!2831 = !DILocation(line: 124, column: 10, scope: !2824)
!2832 = !DILocation(line: 124, column: 201, scope: !2824)
!2833 = !DILocation(line: 124, column: 200, scope: !2824)
!2834 = !DILocation(line: 124, column: 232, scope: !2824)
!2835 = !DILocation(line: 124, column: 237, scope: !2824)
!2836 = !DILocation(line: 124, column: 209, scope: !2824)
!2837 = !DILocation(line: 124, column: 208, scope: !2824)
!2838 = !DILocation(line: 124, column: 309, scope: !2839)
!2839 = distinct !DILexicalBlock(scope: !2824, file: !293, line: 124, column: 248)
!2840 = !DILocation(line: 124, column: 314, scope: !2839)
!2841 = !DILocation(line: 124, column: 286, scope: !2839)
!2842 = !DILocation(line: 124, column: 324, scope: !2839)
!2843 = !DILocation(line: 124, column: 248, scope: !2824)
!2844 = !DILocation(line: 124, column: 373, scope: !2839)
!2845 = !DILocation(line: 124, column: 197, scope: !2824)
!2846 = !DILocation(line: 124, column: 7, scope: !2824)
!2847 = !DILocation(line: 124, column: 387, scope: !2848)
!2848 = distinct !DILexicalBlock(scope: !2824, file: !293, line: 124, column: 2)
!2849 = !DILocation(line: 124, column: 390, scope: !2848)
!2850 = !DILocation(line: 124, column: 2, scope: !2824)
!2851 = !DILocation(line: 125, column: 7, scope: !2852)
!2852 = distinct !DILexicalBlock(scope: !2853, file: !293, line: 125, column: 7)
!2853 = distinct !DILexicalBlock(scope: !2848, file: !293, line: 124, column: 600)
!2854 = !DILocation(line: 125, column: 11, scope: !2852)
!2855 = !DILocation(line: 125, column: 19, scope: !2852)
!2856 = !DILocation(line: 125, column: 16, scope: !2852)
!2857 = !DILocation(line: 125, column: 7, scope: !2853)
!2858 = !DILocation(line: 126, column: 39, scope: !2859)
!2859 = distinct !DILexicalBlock(scope: !2852, file: !293, line: 125, column: 25)
!2860 = !DILocation(line: 126, column: 46, scope: !2859)
!2861 = !DILocation(line: 126, column: 50, scope: !2859)
!2862 = !DILocation(line: 126, column: 4, scope: !2859)
!2863 = !DILocation(line: 127, column: 16, scope: !2859)
!2864 = !DILocation(line: 127, column: 20, scope: !2859)
!2865 = !DILocation(line: 127, column: 4, scope: !2859)
!2866 = !DILocation(line: 128, column: 3, scope: !2859)
!2867 = !DILocation(line: 129, column: 12, scope: !2868)
!2868 = distinct !DILexicalBlock(scope: !2852, file: !293, line: 128, column: 10)
!2869 = !DILocation(line: 129, column: 16, scope: !2868)
!2870 = !DILocation(line: 129, column: 9, scope: !2868)
!2871 = !DILocation(line: 131, column: 2, scope: !2853)
!2872 = !DILocation(line: 124, column: 401, scope: !2848)
!2873 = !DILocation(line: 124, column: 399, scope: !2848)
!2874 = !DILocation(line: 124, column: 414, scope: !2848)
!2875 = !DILocation(line: 124, column: 413, scope: !2848)
!2876 = !DILocation(line: 124, column: 445, scope: !2848)
!2877 = !DILocation(line: 124, column: 450, scope: !2848)
!2878 = !DILocation(line: 124, column: 422, scope: !2848)
!2879 = !DILocation(line: 124, column: 421, scope: !2848)
!2880 = !DILocation(line: 124, column: 522, scope: !2881)
!2881 = distinct !DILexicalBlock(scope: !2848, file: !293, line: 124, column: 461)
!2882 = !DILocation(line: 124, column: 527, scope: !2881)
!2883 = !DILocation(line: 124, column: 499, scope: !2881)
!2884 = !DILocation(line: 124, column: 537, scope: !2881)
!2885 = !DILocation(line: 124, column: 461, scope: !2848)
!2886 = !DILocation(line: 124, column: 586, scope: !2881)
!2887 = !DILocation(line: 124, column: 410, scope: !2848)
!2888 = !DILocation(line: 124, column: 2, scope: !2848)
!2889 = distinct !{!2889, !2850, !2890}
!2890 = !DILocation(line: 131, column: 2, scope: !2824)
!2891 = !DILocation(line: 132, column: 1, scope: !2811)
!2892 = distinct !DISubprogram(name: "k_yield", scope: !881, file: !881, line: 175, type: !744, scopeLine: 176, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!2893 = !DILocation(line: 183, column: 2, scope: !2892)
!2894 = !DILocation(line: 183, column: 7, scope: !2895)
!2895 = distinct !DILexicalBlock(scope: !2892, file: !881, line: 183, column: 5)
!2896 = !{i64 134763}
!2897 = !DILocation(line: 183, column: 47, scope: !2895)
!2898 = !DILocation(line: 184, column: 2, scope: !2892)
!2899 = !DILocation(line: 185, column: 1, scope: !2892)
!2900 = distinct !DISubprogram(name: "sys_slist_get_not_empty", scope: !126, file: !126, line: 379, type: !2371, scopeLine: 379, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!2901 = !DILocalVariable(name: "list", arg: 1, scope: !2900, file: !126, line: 379, type: !1184)
!2902 = !DILocation(line: 379, column: 66, scope: !2900)
!2903 = !DILocalVariable(name: "node", scope: !2900, file: !126, line: 379, type: !259)
!2904 = !DILocation(line: 379, column: 87, scope: !2900)
!2905 = !DILocation(line: 379, column: 114, scope: !2900)
!2906 = !DILocation(line: 379, column: 94, scope: !2900)
!2907 = !DILocation(line: 379, column: 138, scope: !2900)
!2908 = !DILocation(line: 379, column: 162, scope: !2900)
!2909 = !DILocation(line: 379, column: 144, scope: !2900)
!2910 = !DILocation(line: 379, column: 121, scope: !2900)
!2911 = !DILocation(line: 379, column: 194, scope: !2912)
!2912 = distinct !DILexicalBlock(scope: !2900, file: !126, line: 379, column: 174)
!2913 = !DILocation(line: 379, column: 174, scope: !2912)
!2914 = !DILocation(line: 379, column: 203, scope: !2912)
!2915 = !DILocation(line: 379, column: 200, scope: !2912)
!2916 = !DILocation(line: 379, column: 174, scope: !2900)
!2917 = !DILocation(line: 379, column: 228, scope: !2918)
!2918 = distinct !DILexicalBlock(scope: !2912, file: !126, line: 379, column: 209)
!2919 = !DILocation(line: 379, column: 254, scope: !2918)
!2920 = !DILocation(line: 379, column: 234, scope: !2918)
!2921 = !DILocation(line: 379, column: 211, scope: !2918)
!2922 = !DILocation(line: 379, column: 262, scope: !2918)
!2923 = !DILocation(line: 379, column: 271, scope: !2900)
!2924 = !DILocation(line: 379, column: 264, scope: !2900)
!2925 = distinct !DISubprogram(name: "sys_dnode_init", scope: !152, file: !152, line: 220, type: !2926, scopeLine: 221, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!2926 = !DISubroutineType(types: !2927)
!2927 = !{null, !277}
!2928 = !DILocalVariable(name: "node", arg: 1, scope: !2925, file: !152, line: 220, type: !277)
!2929 = !DILocation(line: 220, column: 48, scope: !2925)
!2930 = !DILocation(line: 222, column: 2, scope: !2925)
!2931 = !DILocation(line: 222, column: 8, scope: !2925)
!2932 = !DILocation(line: 222, column: 13, scope: !2925)
!2933 = !DILocation(line: 223, column: 2, scope: !2925)
!2934 = !DILocation(line: 223, column: 8, scope: !2925)
!2935 = !DILocation(line: 223, column: 13, scope: !2925)
!2936 = !DILocation(line: 224, column: 1, scope: !2925)
!2937 = distinct !DISubprogram(name: "work_timeout", scope: !293, file: !293, line: 810, type: !209, scopeLine: 811, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!2938 = !DILocalVariable(name: "to", arg: 1, scope: !2937, file: !293, line: 810, type: !211)
!2939 = !DILocation(line: 810, column: 43, scope: !2937)
!2940 = !DILocalVariable(name: "dw", scope: !2937, file: !293, line: 812, type: !284)
!2941 = !DILocation(line: 812, column: 27, scope: !2937)
!2942 = !DILocation(line: 813, column: 49, scope: !2943)
!2943 = distinct !DILexicalBlock(scope: !2937, file: !293, line: 813, column: 6)
!2944 = !DILocation(line: 813, column: 54, scope: !2943)
!2945 = !DILocation(line: 813, column: 6, scope: !2937)
!2946 = !DILocation(line: 813, column: 112, scope: !2943)
!2947 = !DILocalVariable(name: "wp", scope: !2937, file: !293, line: 814, type: !121)
!2948 = !DILocation(line: 814, column: 17, scope: !2937)
!2949 = !DILocation(line: 814, column: 23, scope: !2937)
!2950 = !DILocation(line: 814, column: 27, scope: !2937)
!2951 = !DILocalVariable(name: "key", scope: !2937, file: !293, line: 815, type: !505)
!2952 = !DILocation(line: 815, column: 19, scope: !2937)
!2953 = !DILocation(line: 160, column: 94, scope: !511, inlinedAt: !2954)
!2954 = distinct !DILocation(line: 815, column: 25, scope: !2937)
!2955 = !DILocation(line: 162, column: 9, scope: !511, inlinedAt: !2954)
!2956 = !DILocation(line: 163, column: 19, scope: !511, inlinedAt: !2954)
!2957 = !DILocation(line: 44, column: 15, scope: !521, inlinedAt: !2958)
!2958 = distinct !DILocation(line: 169, column: 10, scope: !511, inlinedAt: !2954)
!2959 = !DILocation(line: 48, column: 2, scope: !521, inlinedAt: !2958)
!2960 = !DILocation(line: 80, column: 9, scope: !521, inlinedAt: !2958)
!2961 = !DILocation(line: 169, column: 8, scope: !511, inlinedAt: !2954)
!2962 = !DILocation(line: 171, column: 26, scope: !511, inlinedAt: !2954)
!2963 = !DILocation(line: 110, column: 94, scope: !533, inlinedAt: !2964)
!2964 = distinct !DILocation(line: 171, column: 2, scope: !511, inlinedAt: !2954)
!2965 = !DILocation(line: 112, column: 9, scope: !533, inlinedAt: !2964)
!2966 = !DILocation(line: 177, column: 27, scope: !511, inlinedAt: !2954)
!2967 = !DILocation(line: 121, column: 95, scope: !541, inlinedAt: !2968)
!2968 = distinct !DILocation(line: 177, column: 2, scope: !511, inlinedAt: !2954)
!2969 = !DILocation(line: 123, column: 9, scope: !541, inlinedAt: !2968)
!2970 = !DILocation(line: 179, column: 2, scope: !511, inlinedAt: !2954)
!2971 = !DILocation(line: 815, column: 25, scope: !2937)
!2972 = !DILocalVariable(name: "queue", scope: !2937, file: !293, line: 816, type: !137)
!2973 = !DILocation(line: 816, column: 19, scope: !2937)
!2974 = !DILocation(line: 825, column: 27, scope: !2975)
!2975 = distinct !DILexicalBlock(scope: !2937, file: !293, line: 825, column: 6)
!2976 = !DILocation(line: 825, column: 31, scope: !2975)
!2977 = !DILocation(line: 825, column: 6, scope: !2975)
!2978 = !DILocation(line: 825, column: 6, scope: !2937)
!2979 = !DILocation(line: 826, column: 11, scope: !2980)
!2980 = distinct !DILexicalBlock(scope: !2975, file: !293, line: 825, column: 59)
!2981 = !DILocation(line: 826, column: 15, scope: !2980)
!2982 = !DILocation(line: 826, column: 9, scope: !2980)
!2983 = !DILocation(line: 827, column: 32, scope: !2980)
!2984 = !DILocation(line: 827, column: 9, scope: !2980)
!2985 = !DILocation(line: 828, column: 2, scope: !2980)
!2986 = !DILocation(line: 830, column: 2, scope: !2937)
!2987 = !DILocation(line: 235, column: 84, scope: !553, inlinedAt: !2988)
!2988 = distinct !DILocation(line: 830, column: 2, scope: !2937)
!2989 = !DILocation(line: 236, column: 23, scope: !553, inlinedAt: !2988)
!2990 = !DILocation(line: 238, column: 9, scope: !553, inlinedAt: !2988)
!2991 = !DILocation(line: 261, column: 22, scope: !553, inlinedAt: !2988)
!2992 = !DILocation(line: 88, column: 80, scope: !563, inlinedAt: !2993)
!2993 = distinct !DILocation(line: 261, column: 2, scope: !553, inlinedAt: !2988)
!2994 = !DILocation(line: 91, column: 6, scope: !569, inlinedAt: !2993)
!2995 = !DILocation(line: 91, column: 10, scope: !569, inlinedAt: !2993)
!2996 = !DILocation(line: 91, column: 6, scope: !563, inlinedAt: !2993)
!2997 = !DILocation(line: 92, column: 3, scope: !573, inlinedAt: !2993)
!2998 = !DILocation(line: 94, column: 2, scope: !563, inlinedAt: !2993)
!2999 = !DILocation(line: 114, column: 1, scope: !563, inlinedAt: !2993)
!3000 = !DILocation(line: 831, column: 1, scope: !2937)
