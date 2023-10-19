; ModuleID = '../bc_files/condvar.bc'
source_filename = "/home/sri/zephyrproject/zephyr/kernel/condvar.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-arm-none-eabi"

%struct.k_spinlock = type {}
%struct.k_thread = type { %struct._thread_base, %struct._callee_saved, ptr, %struct._wait_q_t, i32, ptr, %struct._thread_arch }
%struct._thread_base = type { %union.anon, ptr, i8, i8, %union.anon.2, i32, ptr, %struct._timeout }
%union.anon = type { %struct._dnode }
%struct._dnode = type { %union.anon.0, %union.anon.1 }
%union.anon.0 = type { ptr }
%union.anon.1 = type { ptr }
%union.anon.2 = type { i16 }
%struct._timeout = type { %struct._dnode, ptr, i64 }
%struct._callee_saved = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._wait_q_t = type { %struct._dnode }
%struct._thread_arch = type { i32, i32 }
%struct.k_timer = type { %struct._timeout, %struct._wait_q_t, ptr, ptr, %struct.k_timeout_t, i32, ptr }
%struct.k_timeout_t = type { i64 }
%struct.k_queue = type { %struct._sflist, %struct.k_spinlock, %struct._wait_q_t }
%struct._sflist = type { ptr, ptr }
%struct.k_sem = type { %struct._wait_q_t, i32, i32 }
%struct.k_msgq = type { %struct._wait_q_t, %struct.k_spinlock, i32, i32, ptr, ptr, ptr, ptr, i32, i8 }
%struct.k_condvar = type { %struct._wait_q_t }
%struct.z_spinlock_key = type { i32 }

@lock = internal global %struct.k_spinlock zeroinitializer, align 1, !dbg !0

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_k_object_access_grant(ptr noundef %0, ptr noundef %1) #0 !dbg !124 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !228, metadata !DIExpression()), !dbg !230
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !229, metadata !DIExpression()), !dbg !231
  %5 = load ptr, ptr %3, align 4, !dbg !232
  %6 = load ptr, ptr %4, align 4, !dbg !233
  ret void, !dbg !234
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_k_object_release(ptr noundef %0) #0 !dbg !235 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !239, metadata !DIExpression()), !dbg !240
  %3 = load ptr, ptr %2, align 4, !dbg !241
  ret void, !dbg !242
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_impl_k_object_alloc(i8 noundef zeroext %0) #0 !dbg !243 {
  %2 = alloca i8, align 1
  store i8 %0, ptr %2, align 1
  call void @llvm.dbg.declare(metadata ptr %2, metadata !247, metadata !DIExpression()), !dbg !248
  %3 = load i8, ptr %2, align 1, !dbg !249
  ret ptr null, !dbg !250
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_impl_k_object_alloc_size(i8 noundef zeroext %0, i32 noundef %1) #0 !dbg !251 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8 %0, ptr %3, align 1
  call void @llvm.dbg.declare(metadata ptr %3, metadata !255, metadata !DIExpression()), !dbg !257
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !256, metadata !DIExpression()), !dbg !258
  %5 = load i8, ptr %3, align 1, !dbg !259
  %6 = load i32, ptr %4, align 4, !dbg !260
  ret ptr null, !dbg !261
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_thread_timeout_expires_ticks(ptr noundef %0) #0 !dbg !262 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !268, metadata !DIExpression()), !dbg !269
  %3 = load ptr, ptr %2, align 4, !dbg !270
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !271
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !272
  %6 = call i64 @z_timeout_expires(ptr noundef %5) #6, !dbg !273
  ret i64 %6, !dbg !274
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_thread_timeout_remaining_ticks(ptr noundef %0) #0 !dbg !275 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !277, metadata !DIExpression()), !dbg !278
  %3 = load ptr, ptr %2, align 4, !dbg !279
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !280
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !281
  %6 = call i64 @z_timeout_remaining(ptr noundef %5) #6, !dbg !282
  ret i64 %6, !dbg !283
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_timer_expires_ticks(ptr noundef %0) #0 !dbg !284 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !307, metadata !DIExpression()), !dbg !308
  %3 = load ptr, ptr %2, align 4, !dbg !309
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !310
  %5 = call i64 @z_timeout_expires(ptr noundef %4) #6, !dbg !311
  ret i64 %5, !dbg !312
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_timer_remaining_ticks(ptr noundef %0) #0 !dbg !313 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !315, metadata !DIExpression()), !dbg !316
  %3 = load ptr, ptr %2, align 4, !dbg !317
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !318
  %5 = call i64 @z_timeout_remaining(ptr noundef %4) #6, !dbg !319
  ret i64 %5, !dbg !320
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_k_timer_user_data_set(ptr noundef %0, ptr noundef %1) #0 !dbg !321 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !325, metadata !DIExpression()), !dbg !327
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !326, metadata !DIExpression()), !dbg !328
  %5 = load ptr, ptr %4, align 4, !dbg !329
  %6 = load ptr, ptr %3, align 4, !dbg !330
  %7 = getelementptr inbounds %struct.k_timer, ptr %6, i32 0, i32 6, !dbg !331
  store ptr %5, ptr %7, align 4, !dbg !332
  ret void, !dbg !333
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_impl_k_timer_user_data_get(ptr noundef %0) #0 !dbg !334 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !338, metadata !DIExpression()), !dbg !339
  %3 = load ptr, ptr %2, align 4, !dbg !340
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 6, !dbg !341
  %5 = load ptr, ptr %4, align 4, !dbg !341
  ret ptr %5, !dbg !342
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_queue_is_empty(ptr noundef %0) #0 !dbg !343 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !365, metadata !DIExpression()), !dbg !366
  %3 = load ptr, ptr %2, align 4, !dbg !367
  %4 = getelementptr inbounds %struct.k_queue, ptr %3, i32 0, i32 0, !dbg !368
  %5 = call zeroext i1 @sys_sflist_is_empty(ptr noundef %4) #6, !dbg !369
  %6 = zext i1 %5 to i32, !dbg !370
  ret i32 %6, !dbg !371
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_sem_count_get(ptr noundef %0) #0 !dbg !372 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !382, metadata !DIExpression()), !dbg !383
  %3 = load ptr, ptr %2, align 4, !dbg !384
  %4 = getelementptr inbounds %struct.k_sem, ptr %3, i32 0, i32 1, !dbg !385
  %5 = load i32, ptr %4, align 4, !dbg !385
  ret i32 %5, !dbg !386
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_msgq_num_free_get(ptr noundef %0) #0 !dbg !387 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !406, metadata !DIExpression()), !dbg !407
  %3 = load ptr, ptr %2, align 4, !dbg !408
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 3, !dbg !409
  %5 = load i32, ptr %4, align 4, !dbg !409
  %6 = load ptr, ptr %2, align 4, !dbg !410
  %7 = getelementptr inbounds %struct.k_msgq, ptr %6, i32 0, i32 8, !dbg !411
  %8 = load i32, ptr %7, align 4, !dbg !411
  %9 = sub i32 %5, %8, !dbg !412
  ret i32 %9, !dbg !413
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_msgq_num_used_get(ptr noundef %0) #0 !dbg !414 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !416, metadata !DIExpression()), !dbg !417
  %3 = load ptr, ptr %2, align 4, !dbg !418
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 8, !dbg !419
  %5 = load i32, ptr %4, align 4, !dbg !419
  ret i32 %5, !dbg !420
}

; Function Attrs: nounwind optsize
define hidden i32 @z_impl_k_condvar_init(ptr noundef %0) #1 !dbg !421 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !429, metadata !DIExpression()), !dbg !430
  %3 = load ptr, ptr %2, align 4, !dbg !431
  %4 = getelementptr inbounds %struct.k_condvar, ptr %3, i32 0, i32 0, !dbg !432
  call void @z_waitq_init(ptr noundef %4) #6, !dbg !433
  %5 = load ptr, ptr %2, align 4, !dbg !434
  call void @z_object_init(ptr noundef %5) #6, !dbg !435
  br label %6, !dbg !436

6:                                                ; preds = %1
  br label %7, !dbg !437

7:                                                ; preds = %6
  ret i32 0, !dbg !439
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: inlinehint nounwind optsize
define internal void @z_waitq_init(ptr noundef %0) #0 !dbg !440 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !445, metadata !DIExpression()), !dbg !446
  %3 = load ptr, ptr %2, align 4, !dbg !447
  %4 = getelementptr inbounds %struct._wait_q_t, ptr %3, i32 0, i32 0, !dbg !448
  call void @sys_dlist_init(ptr noundef %4) #6, !dbg !449
  ret void, !dbg !450
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_object_init(ptr noundef %0) #0 !dbg !451 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !453, metadata !DIExpression()), !dbg !454
  %3 = load ptr, ptr %2, align 4, !dbg !455
  ret void, !dbg !456
}

; Function Attrs: nounwind optsize
define hidden i32 @z_impl_k_condvar_signal(ptr noundef %0) #1 !dbg !457 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.z_spinlock_key, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.z_spinlock_key, align 4
  %11 = alloca ptr, align 4
  %12 = alloca ptr, align 4
  %13 = alloca %struct.z_spinlock_key, align 4
  %14 = alloca ptr, align 4
  store ptr %0, ptr %12, align 4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !459, metadata !DIExpression()), !dbg !466
  call void @llvm.lifetime.start.p0(i64 4, ptr %13) #7, !dbg !467
  call void @llvm.dbg.declare(metadata ptr %13, metadata !460, metadata !DIExpression()), !dbg !468
  store ptr @lock, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !469, metadata !DIExpression()), !dbg !476
  %15 = load ptr, ptr %11, align 4, !dbg !478
  call void @llvm.dbg.declare(metadata ptr %10, metadata !475, metadata !DIExpression()), !dbg !479
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #7, !dbg !480
  call void @llvm.dbg.declare(metadata ptr %5, metadata !486, metadata !DIExpression()), !dbg !488
  %16 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #7, !dbg !489, !srcloc !490
  store i32 %16, ptr %5, align 4, !dbg !489
  %17 = load i32, ptr %5, align 4, !dbg !491
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #7, !dbg !492
  store i32 %17, ptr %10, align 4, !dbg !493
  %18 = load ptr, ptr %11, align 4, !dbg !494
  store ptr %18, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !495, metadata !DIExpression()), !dbg !500
  %19 = load ptr, ptr %4, align 4, !dbg !502
  %20 = load ptr, ptr %11, align 4, !dbg !503
  store ptr %20, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !504, metadata !DIExpression()), !dbg !507
  %21 = load ptr, ptr %3, align 4, !dbg !509
  %22 = load i32, ptr %10, align 4, !dbg !510
  %23 = getelementptr inbounds %struct.z_spinlock_key, ptr %13, i32 0, i32 0, !dbg !511
  store i32 %22, ptr %23, align 4, !dbg !511
  br label %24, !dbg !512

24:                                               ; preds = %1
  br label %25, !dbg !513

25:                                               ; preds = %24
  br label %26, !dbg !513

26:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 4, ptr %14) #7, !dbg !515
  call void @llvm.dbg.declare(metadata ptr %14, metadata !465, metadata !DIExpression()), !dbg !516
  %27 = load ptr, ptr %12, align 4, !dbg !517
  %28 = getelementptr inbounds %struct.k_condvar, ptr %27, i32 0, i32 0, !dbg !518
  %29 = call ptr @z_unpend_first_thread(ptr noundef %28) #6, !dbg !519
  store ptr %29, ptr %14, align 4, !dbg !516
  %30 = load ptr, ptr %14, align 4, !dbg !520
  %31 = icmp ne ptr %30, null, !dbg !522
  br i1 %31, label %32, label %44, !dbg !523

32:                                               ; preds = %26
  br label %33, !dbg !524

33:                                               ; preds = %32
  br label %34, !dbg !526

34:                                               ; preds = %33
  br label %35, !dbg !526

35:                                               ; preds = %34
  %36 = load ptr, ptr %14, align 4, !dbg !528
  store ptr %36, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !529, metadata !DIExpression()), !dbg !536
  store i32 0, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !535, metadata !DIExpression()), !dbg !538
  %37 = load i32, ptr %9, align 4, !dbg !539
  %38 = load ptr, ptr %8, align 4, !dbg !540
  %39 = getelementptr inbounds %struct.k_thread, ptr %38, i32 0, i32 6, !dbg !541
  %40 = getelementptr inbounds %struct._thread_arch, ptr %39, i32 0, i32 1, !dbg !542
  store i32 %37, ptr %40, align 4, !dbg !543
  %41 = load ptr, ptr %14, align 4, !dbg !544
  call void @z_ready_thread(ptr noundef %41) #6, !dbg !545
  %42 = getelementptr inbounds %struct.z_spinlock_key, ptr %13, i32 0, i32 0, !dbg !546
  %43 = load [1 x i32], ptr %42, align 4, !dbg !546
  call void @z_reschedule(ptr noundef @lock, [1 x i32] %43) #6, !dbg !546
  br label %53, !dbg !547

44:                                               ; preds = %26
  %45 = getelementptr inbounds %struct.z_spinlock_key, ptr %13, i32 0, i32 0, !dbg !548
  %46 = load [1 x i32], ptr %45, align 4, !dbg !548
  store [1 x i32] %46, ptr %6, align 4
  store ptr @lock, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !550, metadata !DIExpression()), !dbg !556
  call void @llvm.dbg.declare(metadata ptr %6, metadata !555, metadata !DIExpression()), !dbg !558
  %47 = load ptr, ptr %7, align 4, !dbg !559
  %48 = load i32, ptr %6, align 4, !dbg !560
  store i32 %48, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !561, metadata !DIExpression()), !dbg !566
  %49 = load i32, ptr %2, align 4, !dbg !568
  %50 = icmp ne i32 %49, 0, !dbg !570
  br i1 %50, label %51, label %52, !dbg !571

51:                                               ; preds = %44
  br label %arch_irq_unlock.exit, !dbg !572

52:                                               ; preds = %44
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #7, !dbg !574, !srcloc !575
  br label %arch_irq_unlock.exit, !dbg !576

arch_irq_unlock.exit:                             ; preds = %51, %52
  br label %53

53:                                               ; preds = %arch_irq_unlock.exit, %35
  br label %54, !dbg !577

54:                                               ; preds = %53
  br label %55, !dbg !578

55:                                               ; preds = %54
  br label %56, !dbg !578

56:                                               ; preds = %55
  call void @llvm.lifetime.end.p0(i64 4, ptr %14) #7, !dbg !580
  call void @llvm.lifetime.end.p0(i64 4, ptr %13) #7, !dbg !580
  ret i32 0, !dbg !581
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: optsize
declare !dbg !582 dso_local ptr @z_unpend_first_thread(ptr noundef) #4

; Function Attrs: optsize
declare !dbg !586 dso_local void @z_ready_thread(ptr noundef) #4

; Function Attrs: optsize
declare !dbg !589 dso_local void @z_reschedule(ptr noundef, [1 x i32]) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind optsize
define hidden i32 @z_impl_k_condvar_broadcast(ptr noundef %0) #1 !dbg !590 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.z_spinlock_key, align 4
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  %11 = alloca %struct.z_spinlock_key, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.z_spinlock_key, align 4
  store ptr %0, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !592, metadata !DIExpression()), !dbg !596
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #7, !dbg !597
  call void @llvm.dbg.declare(metadata ptr %10, metadata !593, metadata !DIExpression()), !dbg !598
  call void @llvm.lifetime.start.p0(i64 4, ptr %11) #7, !dbg !599
  call void @llvm.dbg.declare(metadata ptr %11, metadata !594, metadata !DIExpression()), !dbg !600
  call void @llvm.lifetime.start.p0(i64 4, ptr %12) #7, !dbg !601
  call void @llvm.dbg.declare(metadata ptr %12, metadata !595, metadata !DIExpression()), !dbg !602
  store i32 0, ptr %12, align 4, !dbg !602
  call void @llvm.lifetime.start.p0(i64 4, ptr %13) #7, !dbg !603
  store ptr @lock, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !469, metadata !DIExpression()), !dbg !604
  %14 = load ptr, ptr %8, align 4, !dbg !606
  call void @llvm.dbg.declare(metadata ptr %7, metadata !475, metadata !DIExpression()), !dbg !607
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #7, !dbg !608
  call void @llvm.dbg.declare(metadata ptr %4, metadata !486, metadata !DIExpression()), !dbg !610
  %15 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #7, !dbg !611, !srcloc !490
  store i32 %15, ptr %4, align 4, !dbg !611
  %16 = load i32, ptr %4, align 4, !dbg !612
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #7, !dbg !613
  store i32 %16, ptr %7, align 4, !dbg !614
  %17 = load ptr, ptr %8, align 4, !dbg !615
  store ptr %17, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !495, metadata !DIExpression()), !dbg !616
  %18 = load ptr, ptr %3, align 4, !dbg !618
  %19 = load ptr, ptr %8, align 4, !dbg !619
  store ptr %19, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !504, metadata !DIExpression()), !dbg !620
  %20 = load ptr, ptr %2, align 4, !dbg !622
  %21 = load i32, ptr %7, align 4, !dbg !623
  %22 = getelementptr inbounds %struct.z_spinlock_key, ptr %13, i32 0, i32 0, !dbg !603
  store i32 %21, ptr %22, align 4, !dbg !603
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %11, ptr align 4 %13, i32 4, i1 false), !dbg !603
  call void @llvm.lifetime.end.p0(i64 4, ptr %13) #7, !dbg !603
  br label %23, !dbg !624

23:                                               ; preds = %1
  br label %24, !dbg !625

24:                                               ; preds = %23
  br label %25, !dbg !625

25:                                               ; preds = %24
  br label %26, !dbg !627

26:                                               ; preds = %31, %25
  %27 = load ptr, ptr %9, align 4, !dbg !628
  %28 = getelementptr inbounds %struct.k_condvar, ptr %27, i32 0, i32 0, !dbg !629
  %29 = call ptr @z_unpend_first_thread(ptr noundef %28) #6, !dbg !630
  store ptr %29, ptr %10, align 4, !dbg !631
  %30 = icmp ne ptr %29, null, !dbg !632
  br i1 %30, label %31, label %40, !dbg !627

31:                                               ; preds = %26
  %32 = load i32, ptr %12, align 4, !dbg !633
  %33 = add nsw i32 %32, 1, !dbg !633
  store i32 %33, ptr %12, align 4, !dbg !633
  %34 = load ptr, ptr %10, align 4, !dbg !635
  store ptr %34, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !529, metadata !DIExpression()), !dbg !636
  store i32 0, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !535, metadata !DIExpression()), !dbg !638
  %35 = load i32, ptr %6, align 4, !dbg !639
  %36 = load ptr, ptr %5, align 4, !dbg !640
  %37 = getelementptr inbounds %struct.k_thread, ptr %36, i32 0, i32 6, !dbg !641
  %38 = getelementptr inbounds %struct._thread_arch, ptr %37, i32 0, i32 1, !dbg !642
  store i32 %35, ptr %38, align 4, !dbg !643
  %39 = load ptr, ptr %10, align 4, !dbg !644
  call void @z_ready_thread(ptr noundef %39) #6, !dbg !645
  br label %26, !dbg !627, !llvm.loop !646

40:                                               ; preds = %26
  br label %41, !dbg !648

41:                                               ; preds = %40
  br label %42, !dbg !649

42:                                               ; preds = %41
  br label %43, !dbg !649

43:                                               ; preds = %42
  %44 = getelementptr inbounds %struct.z_spinlock_key, ptr %11, i32 0, i32 0, !dbg !651
  %45 = load [1 x i32], ptr %44, align 4, !dbg !651
  call void @z_reschedule(ptr noundef @lock, [1 x i32] %45) #6, !dbg !651
  %46 = load i32, ptr %12, align 4, !dbg !652
  call void @llvm.lifetime.end.p0(i64 4, ptr %12) #7, !dbg !653
  call void @llvm.lifetime.end.p0(i64 4, ptr %11) #7, !dbg !653
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #7, !dbg !653
  ret i32 %46, !dbg !654
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: nounwind optsize
define hidden i32 @z_impl_k_condvar_wait(ptr noundef %0, ptr noundef %1, [1 x i64] %2) #1 !dbg !655 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.z_spinlock_key, align 4
  %8 = alloca ptr, align 4
  %9 = alloca %struct.k_timeout_t, align 8
  %10 = alloca ptr, align 4
  %11 = alloca ptr, align 4
  %12 = alloca %struct.z_spinlock_key, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.z_spinlock_key, align 4
  %15 = alloca %struct.k_timeout_t, align 8
  %16 = getelementptr inbounds %struct.k_timeout_t, ptr %9, i32 0, i32 0
  store [1 x i64] %2, ptr %16, align 8
  store ptr %0, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !666, metadata !DIExpression()), !dbg !671
  store ptr %1, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !667, metadata !DIExpression()), !dbg !672
  call void @llvm.dbg.declare(metadata ptr %9, metadata !668, metadata !DIExpression()), !dbg !673
  call void @llvm.lifetime.start.p0(i64 4, ptr %12) #7, !dbg !674
  call void @llvm.dbg.declare(metadata ptr %12, metadata !669, metadata !DIExpression()), !dbg !675
  call void @llvm.lifetime.start.p0(i64 4, ptr %13) #7, !dbg !676
  call void @llvm.dbg.declare(metadata ptr %13, metadata !670, metadata !DIExpression()), !dbg !677
  br label %17, !dbg !678

17:                                               ; preds = %3
  br label %18, !dbg !679

18:                                               ; preds = %17
  br label %19, !dbg !679

19:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 4, ptr %14) #7, !dbg !681
  store ptr @lock, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !469, metadata !DIExpression()), !dbg !682
  %20 = load ptr, ptr %8, align 4, !dbg !684
  call void @llvm.dbg.declare(metadata ptr %7, metadata !475, metadata !DIExpression()), !dbg !685
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #7, !dbg !686
  call void @llvm.dbg.declare(metadata ptr %6, metadata !486, metadata !DIExpression()), !dbg !688
  %21 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #7, !dbg !689, !srcloc !490
  store i32 %21, ptr %6, align 4, !dbg !689
  %22 = load i32, ptr %6, align 4, !dbg !690
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #7, !dbg !691
  store i32 %22, ptr %7, align 4, !dbg !692
  %23 = load ptr, ptr %8, align 4, !dbg !693
  store ptr %23, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !495, metadata !DIExpression()), !dbg !694
  %24 = load ptr, ptr %5, align 4, !dbg !696
  %25 = load ptr, ptr %8, align 4, !dbg !697
  store ptr %25, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !504, metadata !DIExpression()), !dbg !698
  %26 = load ptr, ptr %4, align 4, !dbg !700
  %27 = load i32, ptr %7, align 4, !dbg !701
  %28 = getelementptr inbounds %struct.z_spinlock_key, ptr %14, i32 0, i32 0, !dbg !681
  store i32 %27, ptr %28, align 4, !dbg !681
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %12, ptr align 4 %14, i32 4, i1 false), !dbg !681
  call void @llvm.lifetime.end.p0(i64 4, ptr %14) #7, !dbg !681
  %29 = load ptr, ptr %11, align 4, !dbg !702
  %30 = call i32 @k_mutex_unlock(ptr noundef %29) #6, !dbg !703
  %31 = load ptr, ptr %10, align 4, !dbg !704
  %32 = getelementptr inbounds %struct.k_condvar, ptr %31, i32 0, i32 0, !dbg !705
  %33 = getelementptr inbounds %struct.z_spinlock_key, ptr %12, i32 0, i32 0, !dbg !706
  %34 = load [1 x i32], ptr %33, align 4, !dbg !706
  %35 = getelementptr inbounds %struct.k_timeout_t, ptr %9, i32 0, i32 0, !dbg !706
  %36 = load [1 x i64], ptr %35, align 8, !dbg !706
  %37 = call i32 @z_pend_curr(ptr noundef @lock, [1 x i32] %34, ptr noundef %32, [1 x i64] %36) #6, !dbg !706
  store i32 %37, ptr %13, align 4, !dbg !707
  %38 = load ptr, ptr %11, align 4, !dbg !708
  %39 = getelementptr inbounds %struct.k_timeout_t, ptr %15, i32 0, i32 0, !dbg !709
  store i64 -1, ptr %39, align 8, !dbg !709
  %40 = getelementptr inbounds %struct.k_timeout_t, ptr %15, i32 0, i32 0, !dbg !710
  %41 = load [1 x i64], ptr %40, align 8, !dbg !710
  %42 = call i32 @k_mutex_lock(ptr noundef %38, [1 x i64] %41) #6, !dbg !710
  br label %43, !dbg !711

43:                                               ; preds = %19
  br label %44, !dbg !712

44:                                               ; preds = %43
  br label %45, !dbg !712

45:                                               ; preds = %44
  %46 = load i32, ptr %13, align 4, !dbg !714
  call void @llvm.lifetime.end.p0(i64 4, ptr %13) #7, !dbg !715
  call void @llvm.lifetime.end.p0(i64 4, ptr %12) #7, !dbg !715
  ret i32 %46, !dbg !716
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @k_mutex_unlock(ptr noundef %0) #0 !dbg !717 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !722, metadata !DIExpression()), !dbg !723
  br label %3, !dbg !724

3:                                                ; preds = %1
  call void asm sideeffect "", "~{memory}"() #7, !dbg !725, !srcloc !727
  br label %4, !dbg !728

4:                                                ; preds = %3
  %5 = load ptr, ptr %2, align 4, !dbg !729
  %6 = call i32 @z_impl_k_mutex_unlock(ptr noundef %5) #6, !dbg !730
  ret i32 %6, !dbg !731
}

; Function Attrs: optsize
declare !dbg !732 dso_local i32 @z_pend_curr(ptr noundef, [1 x i32], ptr noundef, [1 x i64]) #4

; Function Attrs: inlinehint nounwind optsize
define internal i32 @k_mutex_lock(ptr noundef %0, [1 x i64] %1) #0 !dbg !735 {
  %3 = alloca %struct.k_timeout_t, align 8
  %4 = alloca ptr, align 4
  %5 = getelementptr inbounds %struct.k_timeout_t, ptr %3, i32 0, i32 0
  store [1 x i64] %1, ptr %5, align 8
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !739, metadata !DIExpression()), !dbg !741
  call void @llvm.dbg.declare(metadata ptr %3, metadata !740, metadata !DIExpression()), !dbg !742
  br label %6, !dbg !743

6:                                                ; preds = %2
  call void asm sideeffect "", "~{memory}"() #7, !dbg !744, !srcloc !746
  br label %7, !dbg !747

7:                                                ; preds = %6
  %8 = load ptr, ptr %4, align 4, !dbg !748
  %9 = getelementptr inbounds %struct.k_timeout_t, ptr %3, i32 0, i32 0, !dbg !749
  %10 = load [1 x i64], ptr %9, align 8, !dbg !749
  %11 = call i32 @z_impl_k_mutex_lock(ptr noundef %8, [1 x i64] %10) #6, !dbg !749
  ret i32 %11, !dbg !750
}

; Function Attrs: optsize
declare !dbg !751 dso_local i64 @z_timeout_expires(ptr noundef) #4

; Function Attrs: optsize
declare !dbg !756 dso_local i64 @z_timeout_remaining(ptr noundef) #4

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @sys_sflist_is_empty(ptr noundef %0) #0 !dbg !757 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !763, metadata !DIExpression()), !dbg !764
  %3 = load ptr, ptr %2, align 4, !dbg !765
  %4 = call ptr @sys_sflist_peek_head(ptr noundef %3) #6, !dbg !766
  %5 = icmp eq ptr %4, null, !dbg !767
  ret i1 %5, !dbg !768
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @sys_sflist_peek_head(ptr noundef %0) #0 !dbg !769 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !773, metadata !DIExpression()), !dbg !774
  %3 = load ptr, ptr %2, align 4, !dbg !775
  %4 = getelementptr inbounds %struct._sflist, ptr %3, i32 0, i32 0, !dbg !776
  %5 = load ptr, ptr %4, align 4, !dbg !776
  ret ptr %5, !dbg !777
}

; Function Attrs: inlinehint nounwind optsize
define internal void @sys_dlist_init(ptr noundef %0) #0 !dbg !778 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !783, metadata !DIExpression()), !dbg !784
  %3 = load ptr, ptr %2, align 4, !dbg !785
  %4 = load ptr, ptr %2, align 4, !dbg !786
  %5 = getelementptr inbounds %struct._dnode, ptr %4, i32 0, i32 0, !dbg !787
  store ptr %3, ptr %5, align 4, !dbg !788
  %6 = load ptr, ptr %2, align 4, !dbg !789
  %7 = load ptr, ptr %2, align 4, !dbg !790
  %8 = getelementptr inbounds %struct._dnode, ptr %7, i32 0, i32 1, !dbg !791
  store ptr %6, ptr %8, align 4, !dbg !792
  ret void, !dbg !793
}

; Function Attrs: optsize
declare !dbg !794 dso_local i32 @z_impl_k_mutex_unlock(ptr noundef) #4

; Function Attrs: optsize
declare !dbg !795 dso_local i32 @z_impl_k_mutex_lock(ptr noundef, [1 x i64]) #4

attributes #0 = { inlinehint nounwind optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { optsize }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!117, !118, !119, !120, !121, !122}
!llvm.ident = !{!123}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "lock", scope: !2, file: !113, line: 19, type: !114, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !88, globals: !112, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "condvar.c", directory: "/home/sri/zephyrproject/zephyr/build")
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
!88 = !{!89, !94, !95, !96}
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_ticks_t", file: !90, line: 46, baseType: !91)
!90 = !DIFile(filename: "include/zephyr/sys_clock.h", directory: "/home/sri/zephyrproject/zephyr")
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !92, line: 59, baseType: !93)
!92 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/stdint.h", directory: "")
!93 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!95 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 32)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dnode_t", file: !98, line: 55, baseType: !99)
!98 = !DIFile(filename: "include/zephyr/sys/dlist.h", directory: "/home/sri/zephyrproject/zephyr")
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_dnode", file: !98, line: 37, size: 64, elements: !100)
!100 = !{!101, !107}
!101 = !DIDerivedType(tag: DW_TAG_member, scope: !99, file: !98, line: 38, baseType: !102, size: 32)
!102 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !99, file: !98, line: 38, size: 32, elements: !103)
!103 = !{!104, !106}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !102, file: !98, line: 39, baseType: !105, size: 32)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 32)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !102, file: !98, line: 40, baseType: !105, size: 32)
!107 = !DIDerivedType(tag: DW_TAG_member, scope: !99, file: !98, line: 42, baseType: !108, size: 32, offset: 32)
!108 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !99, file: !98, line: 42, size: 32, elements: !109)
!109 = !{!110, !111}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !108, file: !98, line: 43, baseType: !105, size: 32)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !108, file: !98, line: 44, baseType: !105, size: 32)
!112 = !{!0}
!113 = !DIFile(filename: "kernel/condvar.c", directory: "/home/sri/zephyrproject/zephyr")
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_spinlock", file: !115, line: 45, elements: !116)
!115 = !DIFile(filename: "include/zephyr/spinlock.h", directory: "/home/sri/zephyrproject/zephyr")
!116 = !{}
!117 = !{i32 7, !"Dwarf Version", i32 4}
!118 = !{i32 2, !"Debug Info Version", i32 3}
!119 = !{i32 1, !"wchar_size", i32 4}
!120 = !{i32 1, !"static_rwdata", i32 1}
!121 = !{i32 1, !"enumsize_buildattr", i32 1}
!122 = !{i32 1, !"armlib_unavailable", i32 0}
!123 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
!124 = distinct !DISubprogram(name: "z_impl_k_object_access_grant", scope: !6, file: !6, line: 223, type: !125, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !227)
!125 = !DISubroutineType(types: !126)
!126 = !{null, !127, !129}
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 32)
!128 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 32)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_thread", file: !131, line: 250, size: 896, elements: !132)
!131 = !DIFile(filename: "include/zephyr/kernel/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!132 = !{!133, !188, !201, !202, !203, !204, !222}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !130, file: !131, line: 252, baseType: !134, size: 384)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_base", file: !131, line: 58, size: 384, elements: !135)
!135 = !{!136, !149, !157, !159, !160, !173, !176, !177}
!136 = !DIDerivedType(tag: DW_TAG_member, scope: !134, file: !131, line: 61, baseType: !137, size: 64)
!137 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !134, file: !131, line: 61, size: 64, elements: !138)
!138 = !{!139, !140}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_dlist", scope: !137, file: !131, line: 62, baseType: !97, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_rb", scope: !137, file: !131, line: 63, baseType: !141, size: 64)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rbnode", file: !142, line: 58, size: 64, elements: !143)
!142 = !DIFile(filename: "include/zephyr/sys/rb.h", directory: "/home/sri/zephyrproject/zephyr")
!143 = !{!144}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !141, file: !142, line: 60, baseType: !145, size: 64)
!145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 64, elements: !147)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 32)
!147 = !{!148}
!148 = !DISubrange(count: 2)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "pended_on", scope: !134, file: !131, line: 69, baseType: !150, size: 32, offset: 64)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 32)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "_wait_q_t", file: !152, line: 243, baseType: !153)
!152 = !DIFile(filename: "include/zephyr/kernel_structs.h", directory: "/home/sri/zephyrproject/zephyr")
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !152, line: 241, size: 64, elements: !154)
!154 = !{!155}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !153, file: !152, line: 242, baseType: !156, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dlist_t", file: !98, line: 51, baseType: !99)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "user_options", scope: !134, file: !131, line: 72, baseType: !158, size: 8, offset: 96)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !92, line: 62, baseType: !7)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "thread_state", scope: !134, file: !131, line: 75, baseType: !158, size: 8, offset: 104)
!160 = !DIDerivedType(tag: DW_TAG_member, scope: !134, file: !131, line: 91, baseType: !161, size: 16, offset: 112)
!161 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !134, file: !131, line: 91, size: 16, elements: !162)
!162 = !{!163, !170}
!163 = !DIDerivedType(tag: DW_TAG_member, scope: !161, file: !131, line: 92, baseType: !164, size: 16)
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !161, file: !131, line: 92, size: 16, elements: !165)
!165 = !{!166, !169}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !164, file: !131, line: 97, baseType: !167, size: 8)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !92, line: 56, baseType: !168)
!168 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "sched_locked", scope: !164, file: !131, line: 98, baseType: !158, size: 8, offset: 8)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "preempt", scope: !161, file: !131, line: 101, baseType: !171, size: 16)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !92, line: 63, baseType: !172)
!172 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "order_key", scope: !134, file: !131, line: 108, baseType: !174, size: 32, offset: 128)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !92, line: 64, baseType: !175)
!175 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "swap_data", scope: !134, file: !131, line: 132, baseType: !94, size: 32, offset: 160)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !134, file: !131, line: 136, baseType: !178, size: 192, offset: 192)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_timeout", file: !152, line: 254, size: 192, elements: !179)
!179 = !{!180, !181, !187}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !178, file: !152, line: 255, baseType: !97, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !178, file: !152, line: 256, baseType: !182, size: 32, offset: 64)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "_timeout_func_t", file: !152, line: 252, baseType: !183)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 32)
!184 = !DISubroutineType(types: !185)
!185 = !{null, !186}
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 32)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "dticks", scope: !178, file: !152, line: 259, baseType: !91, size: 64, offset: 128)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "callee_saved", scope: !130, file: !131, line: 255, baseType: !189, size: 288, offset: 384)
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_callee_saved", file: !190, line: 25, size: 288, elements: !191)
!190 = !DIFile(filename: "include/zephyr/arch/arm/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!191 = !{!192, !193, !194, !195, !196, !197, !198, !199, !200}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "v1", scope: !189, file: !190, line: 26, baseType: !174, size: 32)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "v2", scope: !189, file: !190, line: 27, baseType: !174, size: 32, offset: 32)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "v3", scope: !189, file: !190, line: 28, baseType: !174, size: 32, offset: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "v4", scope: !189, file: !190, line: 29, baseType: !174, size: 32, offset: 96)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "v5", scope: !189, file: !190, line: 30, baseType: !174, size: 32, offset: 128)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "v6", scope: !189, file: !190, line: 31, baseType: !174, size: 32, offset: 160)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "v7", scope: !189, file: !190, line: 32, baseType: !174, size: 32, offset: 192)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "v8", scope: !189, file: !190, line: 33, baseType: !174, size: 32, offset: 224)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "psp", scope: !189, file: !190, line: 34, baseType: !174, size: 32, offset: 256)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "init_data", scope: !130, file: !131, line: 258, baseType: !94, size: 32, offset: 672)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "join_queue", scope: !130, file: !131, line: 261, baseType: !151, size: 64, offset: 704)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "errno_var", scope: !130, file: !131, line: 302, baseType: !95, size: 32, offset: 768)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "resource_pool", scope: !130, file: !131, line: 333, baseType: !205, size: 32, offset: 800)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 32)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_heap", file: !207, line: 5291, size: 160, elements: !208)
!207 = !DIFile(filename: "include/zephyr/kernel.h", directory: "/home/sri/zephyrproject/zephyr")
!208 = !{!209, !220, !221}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !206, file: !207, line: 5292, baseType: !210, size: 96)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sys_heap", file: !211, line: 56, size: 96, elements: !212)
!211 = !DIFile(filename: "include/zephyr/sys/sys_heap.h", directory: "/home/sri/zephyrproject/zephyr")
!212 = !{!213, !216, !217}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !210, file: !211, line: 57, baseType: !214, size: 32)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 32)
!215 = !DICompositeType(tag: DW_TAG_structure_type, name: "z_heap", file: !211, line: 57, flags: DIFlagFwdDecl)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "init_mem", scope: !210, file: !211, line: 58, baseType: !94, size: 32, offset: 32)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "init_bytes", scope: !210, file: !211, line: 59, baseType: !218, size: 32, offset: 64)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !219, line: 46, baseType: !175)
!219 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/lib/clang/17/include/stddef.h", directory: "")
!220 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !206, file: !207, line: 5293, baseType: !151, size: 64, offset: 96)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !206, file: !207, line: 5294, baseType: !114, offset: 160)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !130, file: !131, line: 355, baseType: !223, size: 64, offset: 832)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_arch", file: !190, line: 60, size: 64, elements: !224)
!224 = !{!225, !226}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "basepri", scope: !223, file: !190, line: 63, baseType: !174, size: 32)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "swap_return_value", scope: !223, file: !190, line: 66, baseType: !174, size: 32, offset: 32)
!227 = !{!228, !229}
!228 = !DILocalVariable(name: "object", arg: 1, scope: !124, file: !6, line: 223, type: !127)
!229 = !DILocalVariable(name: "thread", arg: 2, scope: !124, file: !6, line: 224, type: !129)
!230 = !DILocation(line: 223, column: 61, scope: !124)
!231 = !DILocation(line: 224, column: 24, scope: !124)
!232 = !DILocation(line: 226, column: 9, scope: !124)
!233 = !DILocation(line: 227, column: 9, scope: !124)
!234 = !DILocation(line: 228, column: 1, scope: !124)
!235 = distinct !DISubprogram(name: "z_impl_k_object_release", scope: !6, file: !6, line: 243, type: !236, scopeLine: 244, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !238)
!236 = !DISubroutineType(types: !237)
!237 = !{null, !127}
!238 = !{!239}
!239 = !DILocalVariable(name: "object", arg: 1, scope: !235, file: !6, line: 243, type: !127)
!240 = !DILocation(line: 243, column: 56, scope: !235)
!241 = !DILocation(line: 245, column: 9, scope: !235)
!242 = !DILocation(line: 246, column: 1, scope: !235)
!243 = distinct !DISubprogram(name: "z_impl_k_object_alloc", scope: !6, file: !6, line: 359, type: !244, scopeLine: 360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !246)
!244 = !DISubroutineType(types: !245)
!245 = !{!94, !5}
!246 = !{!247}
!247 = !DILocalVariable(name: "otype", arg: 1, scope: !243, file: !6, line: 359, type: !5)
!248 = !DILocation(line: 359, column: 58, scope: !243)
!249 = !DILocation(line: 361, column: 9, scope: !243)
!250 = !DILocation(line: 363, column: 2, scope: !243)
!251 = distinct !DISubprogram(name: "z_impl_k_object_alloc_size", scope: !6, file: !6, line: 366, type: !252, scopeLine: 368, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !254)
!252 = !DISubroutineType(types: !253)
!253 = !{!94, !5, !218}
!254 = !{!255, !256}
!255 = !DILocalVariable(name: "otype", arg: 1, scope: !251, file: !6, line: 366, type: !5)
!256 = !DILocalVariable(name: "size", arg: 2, scope: !251, file: !6, line: 367, type: !218)
!257 = !DILocation(line: 366, column: 63, scope: !251)
!258 = !DILocation(line: 367, column: 13, scope: !251)
!259 = !DILocation(line: 369, column: 9, scope: !251)
!260 = !DILocation(line: 370, column: 9, scope: !251)
!261 = !DILocation(line: 372, column: 2, scope: !251)
!262 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_expires_ticks", scope: !207, file: !207, line: 656, type: !263, scopeLine: 658, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !267)
!263 = !DISubroutineType(types: !264)
!264 = !{!89, !265}
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 32)
!266 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !130)
!267 = !{!268}
!268 = !DILocalVariable(name: "t", arg: 1, scope: !262, file: !207, line: 657, type: !265)
!269 = !DILocation(line: 657, column: 30, scope: !262)
!270 = !DILocation(line: 659, column: 28, scope: !262)
!271 = !DILocation(line: 659, column: 31, scope: !262)
!272 = !DILocation(line: 659, column: 36, scope: !262)
!273 = !DILocation(line: 659, column: 9, scope: !262)
!274 = !DILocation(line: 659, column: 2, scope: !262)
!275 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_remaining_ticks", scope: !207, file: !207, line: 671, type: !263, scopeLine: 673, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !276)
!276 = !{!277}
!277 = !DILocalVariable(name: "t", arg: 1, scope: !275, file: !207, line: 672, type: !265)
!278 = !DILocation(line: 672, column: 30, scope: !275)
!279 = !DILocation(line: 674, column: 30, scope: !275)
!280 = !DILocation(line: 674, column: 33, scope: !275)
!281 = !DILocation(line: 674, column: 38, scope: !275)
!282 = !DILocation(line: 674, column: 9, scope: !275)
!283 = !DILocation(line: 674, column: 2, scope: !275)
!284 = distinct !DISubprogram(name: "z_impl_k_timer_expires_ticks", scope: !207, file: !207, line: 1634, type: !285, scopeLine: 1636, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !306)
!285 = !DISubroutineType(types: !286)
!286 = !{!89, !287}
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 32)
!288 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !289)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_timer", file: !207, line: 1439, size: 448, elements: !290)
!290 = !{!291, !292, !293, !298, !299, !304, !305}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !289, file: !207, line: 1445, baseType: !178, size: 192)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !289, file: !207, line: 1448, baseType: !151, size: 64, offset: 192)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_fn", scope: !289, file: !207, line: 1451, baseType: !294, size: 32, offset: 256)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 32)
!295 = !DISubroutineType(types: !296)
!296 = !{null, !297}
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 32)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "stop_fn", scope: !289, file: !207, line: 1454, baseType: !294, size: 32, offset: 288)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !289, file: !207, line: 1457, baseType: !300, size: 64, offset: 320)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_timeout_t", file: !90, line: 67, baseType: !301)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !90, line: 65, size: 64, elements: !302)
!302 = !{!303}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "ticks", scope: !301, file: !90, line: 66, baseType: !89, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !289, file: !207, line: 1460, baseType: !174, size: 32, offset: 384)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !289, file: !207, line: 1463, baseType: !94, size: 32, offset: 416)
!306 = !{!307}
!307 = !DILocalVariable(name: "timer", arg: 1, scope: !284, file: !207, line: 1635, type: !287)
!308 = !DILocation(line: 1635, column: 34, scope: !284)
!309 = !DILocation(line: 1637, column: 28, scope: !284)
!310 = !DILocation(line: 1637, column: 35, scope: !284)
!311 = !DILocation(line: 1637, column: 9, scope: !284)
!312 = !DILocation(line: 1637, column: 2, scope: !284)
!313 = distinct !DISubprogram(name: "z_impl_k_timer_remaining_ticks", scope: !207, file: !207, line: 1649, type: !285, scopeLine: 1651, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !314)
!314 = !{!315}
!315 = !DILocalVariable(name: "timer", arg: 1, scope: !313, file: !207, line: 1650, type: !287)
!316 = !DILocation(line: 1650, column: 34, scope: !313)
!317 = !DILocation(line: 1652, column: 30, scope: !313)
!318 = !DILocation(line: 1652, column: 37, scope: !313)
!319 = !DILocation(line: 1652, column: 9, scope: !313)
!320 = !DILocation(line: 1652, column: 2, scope: !313)
!321 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_set", scope: !207, file: !207, line: 1689, type: !322, scopeLine: 1691, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !324)
!322 = !DISubroutineType(types: !323)
!323 = !{null, !297, !94}
!324 = !{!325, !326}
!325 = !DILocalVariable(name: "timer", arg: 1, scope: !321, file: !207, line: 1689, type: !297)
!326 = !DILocalVariable(name: "user_data", arg: 2, scope: !321, file: !207, line: 1690, type: !94)
!327 = !DILocation(line: 1689, column: 65, scope: !321)
!328 = !DILocation(line: 1690, column: 19, scope: !321)
!329 = !DILocation(line: 1692, column: 21, scope: !321)
!330 = !DILocation(line: 1692, column: 2, scope: !321)
!331 = !DILocation(line: 1692, column: 9, scope: !321)
!332 = !DILocation(line: 1692, column: 19, scope: !321)
!333 = !DILocation(line: 1693, column: 1, scope: !321)
!334 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_get", scope: !207, file: !207, line: 1704, type: !335, scopeLine: 1705, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !337)
!335 = !DISubroutineType(types: !336)
!336 = !{!94, !287}
!337 = !{!338}
!338 = !DILocalVariable(name: "timer", arg: 1, scope: !334, file: !207, line: 1704, type: !287)
!339 = !DILocation(line: 1704, column: 72, scope: !334)
!340 = !DILocation(line: 1706, column: 9, scope: !334)
!341 = !DILocation(line: 1706, column: 16, scope: !334)
!342 = !DILocation(line: 1706, column: 2, scope: !334)
!343 = distinct !DISubprogram(name: "z_impl_k_queue_is_empty", scope: !207, file: !207, line: 2071, type: !344, scopeLine: 2072, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !364)
!344 = !DISubroutineType(types: !345)
!345 = !{!95, !346}
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 32)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_queue", file: !207, line: 1830, size: 128, elements: !348)
!348 = !{!349, !362, !363}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "data_q", scope: !347, file: !207, line: 1831, baseType: !350, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sflist_t", file: !351, line: 60, baseType: !352)
!351 = !DIFile(filename: "include/zephyr/sys/sflist.h", directory: "/home/sri/zephyrproject/zephyr")
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sflist", file: !351, line: 53, size: 64, elements: !353)
!353 = !{!354, !361}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !352, file: !351, line: 54, baseType: !355, size: 32)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 32)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sfnode_t", file: !351, line: 50, baseType: !357)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sfnode", file: !351, line: 44, size: 32, elements: !358)
!358 = !{!359}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "next_and_flags", scope: !357, file: !351, line: 45, baseType: !360, size: 32)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "unative_t", file: !351, line: 40, baseType: !174)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !352, file: !351, line: 55, baseType: !355, size: 32, offset: 32)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !347, file: !207, line: 1832, baseType: !114, offset: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !347, file: !207, line: 1833, baseType: !151, size: 64, offset: 64)
!364 = !{!365}
!365 = !DILocalVariable(name: "queue", arg: 1, scope: !343, file: !207, line: 2071, type: !346)
!366 = !DILocation(line: 2071, column: 59, scope: !343)
!367 = !DILocation(line: 2073, column: 35, scope: !343)
!368 = !DILocation(line: 2073, column: 42, scope: !343)
!369 = !DILocation(line: 2073, column: 14, scope: !343)
!370 = !DILocation(line: 2073, column: 9, scope: !343)
!371 = !DILocation(line: 2073, column: 2, scope: !343)
!372 = distinct !DISubprogram(name: "z_impl_k_sem_count_get", scope: !207, file: !207, line: 3209, type: !373, scopeLine: 3210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !381)
!373 = !DISubroutineType(types: !374)
!374 = !{!175, !375}
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 32)
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sem", file: !207, line: 3092, size: 128, elements: !377)
!377 = !{!378, !379, !380}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !376, file: !207, line: 3093, baseType: !151, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !376, file: !207, line: 3094, baseType: !175, size: 32, offset: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !376, file: !207, line: 3095, baseType: !175, size: 32, offset: 96)
!381 = !{!382}
!382 = !DILocalVariable(name: "sem", arg: 1, scope: !372, file: !207, line: 3209, type: !375)
!383 = !DILocation(line: 3209, column: 65, scope: !372)
!384 = !DILocation(line: 3211, column: 9, scope: !372)
!385 = !DILocation(line: 3211, column: 14, scope: !372)
!386 = !DILocation(line: 3211, column: 2, scope: !372)
!387 = distinct !DISubprogram(name: "z_impl_k_msgq_num_free_get", scope: !207, file: !207, line: 4649, type: !388, scopeLine: 4650, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !405)
!388 = !DISubroutineType(types: !389)
!389 = !{!174, !390}
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 32)
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_msgq", file: !207, line: 4390, size: 320, elements: !392)
!392 = !{!393, !394, !395, !396, !397, !400, !401, !402, !403, !404}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !391, file: !207, line: 4392, baseType: !151, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !391, file: !207, line: 4394, baseType: !114, offset: 64)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "msg_size", scope: !391, file: !207, line: 4396, baseType: !218, size: 32, offset: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !391, file: !207, line: 4398, baseType: !174, size: 32, offset: 96)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_start", scope: !391, file: !207, line: 4400, baseType: !398, size: 32, offset: 128)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 32)
!399 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_end", scope: !391, file: !207, line: 4402, baseType: !398, size: 32, offset: 160)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "read_ptr", scope: !391, file: !207, line: 4404, baseType: !398, size: 32, offset: 192)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "write_ptr", scope: !391, file: !207, line: 4406, baseType: !398, size: 32, offset: 224)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "used_msgs", scope: !391, file: !207, line: 4408, baseType: !174, size: 32, offset: 256)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !391, file: !207, line: 4413, baseType: !158, size: 8, offset: 288)
!405 = !{!406}
!406 = !DILocalVariable(name: "msgq", arg: 1, scope: !387, file: !207, line: 4649, type: !390)
!407 = !DILocation(line: 4649, column: 66, scope: !387)
!408 = !DILocation(line: 4651, column: 9, scope: !387)
!409 = !DILocation(line: 4651, column: 15, scope: !387)
!410 = !DILocation(line: 4651, column: 26, scope: !387)
!411 = !DILocation(line: 4651, column: 32, scope: !387)
!412 = !DILocation(line: 4651, column: 24, scope: !387)
!413 = !DILocation(line: 4651, column: 2, scope: !387)
!414 = distinct !DISubprogram(name: "z_impl_k_msgq_num_used_get", scope: !207, file: !207, line: 4665, type: !388, scopeLine: 4666, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !415)
!415 = !{!416}
!416 = !DILocalVariable(name: "msgq", arg: 1, scope: !414, file: !207, line: 4665, type: !390)
!417 = !DILocation(line: 4665, column: 66, scope: !414)
!418 = !DILocation(line: 4667, column: 9, scope: !414)
!419 = !DILocation(line: 4667, column: 15, scope: !414)
!420 = !DILocation(line: 4667, column: 2, scope: !414)
!421 = distinct !DISubprogram(name: "z_impl_k_condvar_init", scope: !113, file: !113, line: 21, type: !422, scopeLine: 22, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !428)
!422 = !DISubroutineType(types: !423)
!423 = !{!95, !424}
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 32)
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_condvar", file: !207, line: 3007, size: 64, elements: !426)
!426 = !{!427}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !425, file: !207, line: 3008, baseType: !151, size: 64)
!428 = !{!429}
!429 = !DILocalVariable(name: "condvar", arg: 1, scope: !421, file: !113, line: 21, type: !424)
!430 = !DILocation(line: 21, column: 45, scope: !421)
!431 = !DILocation(line: 23, column: 16, scope: !421)
!432 = !DILocation(line: 23, column: 25, scope: !421)
!433 = !DILocation(line: 23, column: 2, scope: !421)
!434 = !DILocation(line: 24, column: 16, scope: !421)
!435 = !DILocation(line: 24, column: 2, scope: !421)
!436 = !DILocation(line: 30, column: 2, scope: !421)
!437 = !DILocation(line: 30, column: 7, scope: !438)
!438 = distinct !DILexicalBlock(scope: !421, file: !113, line: 30, column: 5)
!439 = !DILocation(line: 32, column: 2, scope: !421)
!440 = distinct !DISubprogram(name: "z_waitq_init", scope: !441, file: !441, line: 47, type: !442, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !444)
!441 = !DIFile(filename: "kernel/include/wait_q.h", directory: "/home/sri/zephyrproject/zephyr")
!442 = !DISubroutineType(types: !443)
!443 = !{null, !150}
!444 = !{!445}
!445 = !DILocalVariable(name: "w", arg: 1, scope: !440, file: !441, line: 47, type: !150)
!446 = !DILocation(line: 47, column: 44, scope: !440)
!447 = !DILocation(line: 49, column: 18, scope: !440)
!448 = !DILocation(line: 49, column: 21, scope: !440)
!449 = !DILocation(line: 49, column: 2, scope: !440)
!450 = !DILocation(line: 50, column: 1, scope: !440)
!451 = distinct !DISubprogram(name: "z_object_init", scope: !6, file: !6, line: 215, type: !236, scopeLine: 216, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !452)
!452 = !{!453}
!453 = !DILocalVariable(name: "obj", arg: 1, scope: !451, file: !6, line: 215, type: !127)
!454 = !DILocation(line: 215, column: 46, scope: !451)
!455 = !DILocation(line: 217, column: 9, scope: !451)
!456 = !DILocation(line: 218, column: 1, scope: !451)
!457 = distinct !DISubprogram(name: "z_impl_k_condvar_signal", scope: !113, file: !113, line: 44, type: !422, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !458)
!458 = !{!459, !460, !465}
!459 = !DILocalVariable(name: "condvar", arg: 1, scope: !457, file: !113, line: 44, type: !424)
!460 = !DILocalVariable(name: "key", scope: !457, file: !113, line: 46, type: !461)
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_spinlock_key_t", file: !115, line: 108, baseType: !462)
!462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "z_spinlock_key", file: !115, line: 34, size: 32, elements: !463)
!463 = !{!464}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !462, file: !115, line: 35, baseType: !95, size: 32)
!465 = !DILocalVariable(name: "thread", scope: !457, file: !113, line: 50, type: !129)
!466 = !DILocation(line: 44, column: 47, scope: !457)
!467 = !DILocation(line: 46, column: 2, scope: !457)
!468 = !DILocation(line: 46, column: 19, scope: !457)
!469 = !DILocalVariable(name: "l", arg: 1, scope: !470, file: !115, line: 160, type: !473)
!470 = distinct !DISubprogram(name: "k_spin_lock", scope: !115, file: !115, line: 160, type: !471, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !474)
!471 = !DISubroutineType(types: !472)
!472 = !{!461, !473}
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 32)
!474 = !{!469, !475}
!475 = !DILocalVariable(name: "k", scope: !470, file: !115, line: 163, type: !461)
!476 = !DILocation(line: 160, column: 94, scope: !470, inlinedAt: !477)
!477 = distinct !DILocation(line: 46, column: 25, scope: !457)
!478 = !DILocation(line: 162, column: 9, scope: !470, inlinedAt: !477)
!479 = !DILocation(line: 163, column: 19, scope: !470, inlinedAt: !477)
!480 = !DILocation(line: 44, column: 2, scope: !481, inlinedAt: !487)
!481 = distinct !DISubprogram(name: "arch_irq_lock", scope: !482, file: !482, line: 42, type: !483, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !485)
!482 = !DIFile(filename: "include/zephyr/arch/arm/asm_inline_gcc.h", directory: "/home/sri/zephyrproject/zephyr")
!483 = !DISubroutineType(types: !484)
!484 = !{!175}
!485 = !{!486}
!486 = !DILocalVariable(name: "key", scope: !481, file: !482, line: 44, type: !175)
!487 = distinct !DILocation(line: 169, column: 10, scope: !470, inlinedAt: !477)
!488 = !DILocation(line: 44, column: 15, scope: !481, inlinedAt: !487)
!489 = !DILocation(line: 48, column: 2, scope: !481, inlinedAt: !487)
!490 = !{i64 66902}
!491 = !DILocation(line: 80, column: 9, scope: !481, inlinedAt: !487)
!492 = !DILocation(line: 81, column: 1, scope: !481, inlinedAt: !487)
!493 = !DILocation(line: 169, column: 8, scope: !470, inlinedAt: !477)
!494 = !DILocation(line: 171, column: 26, scope: !470, inlinedAt: !477)
!495 = !DILocalVariable(name: "l", arg: 1, scope: !496, file: !115, line: 110, type: !473)
!496 = distinct !DISubprogram(name: "z_spinlock_validate_pre", scope: !115, file: !115, line: 110, type: !497, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !499)
!497 = !DISubroutineType(types: !498)
!498 = !{null, !473}
!499 = !{!495}
!500 = !DILocation(line: 110, column: 94, scope: !496, inlinedAt: !501)
!501 = distinct !DILocation(line: 171, column: 2, scope: !470, inlinedAt: !477)
!502 = !DILocation(line: 112, column: 9, scope: !496, inlinedAt: !501)
!503 = !DILocation(line: 177, column: 27, scope: !470, inlinedAt: !477)
!504 = !DILocalVariable(name: "l", arg: 1, scope: !505, file: !115, line: 121, type: !473)
!505 = distinct !DISubprogram(name: "z_spinlock_validate_post", scope: !115, file: !115, line: 121, type: !497, scopeLine: 122, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !506)
!506 = !{!504}
!507 = !DILocation(line: 121, column: 95, scope: !505, inlinedAt: !508)
!508 = distinct !DILocation(line: 177, column: 2, scope: !470, inlinedAt: !477)
!509 = !DILocation(line: 123, column: 9, scope: !505, inlinedAt: !508)
!510 = !DILocation(line: 179, column: 2, scope: !470, inlinedAt: !477)
!511 = !DILocation(line: 46, column: 25, scope: !457)
!512 = !DILocation(line: 48, column: 2, scope: !457)
!513 = !DILocation(line: 48, column: 7, scope: !514)
!514 = distinct !DILexicalBlock(scope: !457, file: !113, line: 48, column: 5)
!515 = !DILocation(line: 50, column: 2, scope: !457)
!516 = !DILocation(line: 50, column: 19, scope: !457)
!517 = !DILocation(line: 50, column: 51, scope: !457)
!518 = !DILocation(line: 50, column: 60, scope: !457)
!519 = !DILocation(line: 50, column: 28, scope: !457)
!520 = !DILocation(line: 52, column: 6, scope: !521)
!521 = distinct !DILexicalBlock(scope: !457, file: !113, line: 52, column: 6)
!522 = !DILocation(line: 52, column: 13, scope: !521)
!523 = !DILocation(line: 52, column: 6, scope: !457)
!524 = !DILocation(line: 53, column: 3, scope: !525)
!525 = distinct !DILexicalBlock(scope: !521, file: !113, line: 52, column: 19)
!526 = !DILocation(line: 53, column: 8, scope: !527)
!527 = distinct !DILexicalBlock(scope: !525, file: !113, line: 53, column: 6)
!528 = !DILocation(line: 55, column: 32, scope: !525)
!529 = !DILocalVariable(name: "thread", arg: 1, scope: !530, file: !531, line: 59, type: !129)
!530 = distinct !DISubprogram(name: "arch_thread_return_value_set", scope: !531, file: !531, line: 59, type: !532, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !534)
!531 = !DIFile(filename: "arch/arm/include/cortex_m/kernel_arch_func.h", directory: "/home/sri/zephyrproject/zephyr")
!532 = !DISubroutineType(types: !533)
!533 = !{null, !129, !175}
!534 = !{!529, !535}
!535 = !DILocalVariable(name: "value", arg: 2, scope: !530, file: !531, line: 59, type: !175)
!536 = !DILocation(line: 59, column: 47, scope: !530, inlinedAt: !537)
!537 = distinct !DILocation(line: 55, column: 3, scope: !525)
!538 = !DILocation(line: 59, column: 68, scope: !530, inlinedAt: !537)
!539 = !DILocation(line: 61, column: 35, scope: !530, inlinedAt: !537)
!540 = !DILocation(line: 61, column: 2, scope: !530, inlinedAt: !537)
!541 = !DILocation(line: 61, column: 10, scope: !530, inlinedAt: !537)
!542 = !DILocation(line: 61, column: 15, scope: !530, inlinedAt: !537)
!543 = !DILocation(line: 61, column: 33, scope: !530, inlinedAt: !537)
!544 = !DILocation(line: 56, column: 18, scope: !525)
!545 = !DILocation(line: 56, column: 3, scope: !525)
!546 = !DILocation(line: 57, column: 3, scope: !525)
!547 = !DILocation(line: 58, column: 2, scope: !525)
!548 = !DILocation(line: 59, column: 3, scope: !549)
!549 = distinct !DILexicalBlock(scope: !521, file: !113, line: 58, column: 9)
!550 = !DILocalVariable(name: "l", arg: 1, scope: !551, file: !115, line: 235, type: !473)
!551 = distinct !DISubprogram(name: "k_spin_unlock", scope: !115, file: !115, line: 235, type: !552, scopeLine: 237, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !554)
!552 = !DISubroutineType(types: !553)
!553 = !{null, !473, !461}
!554 = !{!550, !555}
!555 = !DILocalVariable(name: "key", arg: 2, scope: !551, file: !115, line: 236, type: !461)
!556 = !DILocation(line: 235, column: 84, scope: !551, inlinedAt: !557)
!557 = distinct !DILocation(line: 59, column: 3, scope: !549)
!558 = !DILocation(line: 236, column: 23, scope: !551, inlinedAt: !557)
!559 = !DILocation(line: 238, column: 9, scope: !551, inlinedAt: !557)
!560 = !DILocation(line: 261, column: 22, scope: !551, inlinedAt: !557)
!561 = !DILocalVariable(name: "key", arg: 1, scope: !562, file: !482, line: 88, type: !175)
!562 = distinct !DISubprogram(name: "arch_irq_unlock", scope: !482, file: !482, line: 88, type: !563, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !565)
!563 = !DISubroutineType(types: !564)
!564 = !{null, !175}
!565 = !{!561}
!566 = !DILocation(line: 88, column: 80, scope: !562, inlinedAt: !567)
!567 = distinct !DILocation(line: 261, column: 2, scope: !551, inlinedAt: !557)
!568 = !DILocation(line: 91, column: 6, scope: !569, inlinedAt: !567)
!569 = distinct !DILexicalBlock(scope: !562, file: !482, line: 91, column: 6)
!570 = !DILocation(line: 91, column: 10, scope: !569, inlinedAt: !567)
!571 = !DILocation(line: 91, column: 6, scope: !562, inlinedAt: !567)
!572 = !DILocation(line: 92, column: 3, scope: !573, inlinedAt: !567)
!573 = distinct !DILexicalBlock(scope: !569, file: !482, line: 91, column: 17)
!574 = !DILocation(line: 94, column: 2, scope: !562, inlinedAt: !567)
!575 = !{i64 67206}
!576 = !DILocation(line: 114, column: 1, scope: !562, inlinedAt: !567)
!577 = !DILocation(line: 62, column: 2, scope: !457)
!578 = !DILocation(line: 62, column: 7, scope: !579)
!579 = distinct !DILexicalBlock(scope: !457, file: !113, line: 62, column: 5)
!580 = !DILocation(line: 65, column: 1, scope: !457)
!581 = !DILocation(line: 64, column: 2, scope: !457)
!582 = !DISubprogram(name: "z_unpend_first_thread", scope: !583, file: !583, line: 53, type: !584, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !116)
!583 = !DIFile(filename: "kernel/include/ksched.h", directory: "/home/sri/zephyrproject/zephyr")
!584 = !DISubroutineType(types: !585)
!585 = !{!129, !150}
!586 = !DISubprogram(name: "z_ready_thread", scope: !583, file: !583, line: 65, type: !587, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !116)
!587 = !DISubroutineType(types: !588)
!588 = !{null, !129}
!589 = !DISubprogram(name: "z_reschedule", scope: !583, file: !583, line: 51, type: !552, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !116)
!590 = distinct !DISubprogram(name: "z_impl_k_condvar_broadcast", scope: !113, file: !113, line: 76, type: !422, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !591)
!591 = !{!592, !593, !594, !595}
!592 = !DILocalVariable(name: "condvar", arg: 1, scope: !590, file: !113, line: 76, type: !424)
!593 = !DILocalVariable(name: "pending_thread", scope: !590, file: !113, line: 78, type: !129)
!594 = !DILocalVariable(name: "key", scope: !590, file: !113, line: 79, type: !461)
!595 = !DILocalVariable(name: "woken", scope: !590, file: !113, line: 80, type: !95)
!596 = !DILocation(line: 76, column: 50, scope: !590)
!597 = !DILocation(line: 78, column: 2, scope: !590)
!598 = !DILocation(line: 78, column: 19, scope: !590)
!599 = !DILocation(line: 79, column: 2, scope: !590)
!600 = !DILocation(line: 79, column: 19, scope: !590)
!601 = !DILocation(line: 80, column: 2, scope: !590)
!602 = !DILocation(line: 80, column: 6, scope: !590)
!603 = !DILocation(line: 82, column: 8, scope: !590)
!604 = !DILocation(line: 160, column: 94, scope: !470, inlinedAt: !605)
!605 = distinct !DILocation(line: 82, column: 8, scope: !590)
!606 = !DILocation(line: 162, column: 9, scope: !470, inlinedAt: !605)
!607 = !DILocation(line: 163, column: 19, scope: !470, inlinedAt: !605)
!608 = !DILocation(line: 44, column: 2, scope: !481, inlinedAt: !609)
!609 = distinct !DILocation(line: 169, column: 10, scope: !470, inlinedAt: !605)
!610 = !DILocation(line: 44, column: 15, scope: !481, inlinedAt: !609)
!611 = !DILocation(line: 48, column: 2, scope: !481, inlinedAt: !609)
!612 = !DILocation(line: 80, column: 9, scope: !481, inlinedAt: !609)
!613 = !DILocation(line: 81, column: 1, scope: !481, inlinedAt: !609)
!614 = !DILocation(line: 169, column: 8, scope: !470, inlinedAt: !605)
!615 = !DILocation(line: 171, column: 26, scope: !470, inlinedAt: !605)
!616 = !DILocation(line: 110, column: 94, scope: !496, inlinedAt: !617)
!617 = distinct !DILocation(line: 171, column: 2, scope: !470, inlinedAt: !605)
!618 = !DILocation(line: 112, column: 9, scope: !496, inlinedAt: !617)
!619 = !DILocation(line: 177, column: 27, scope: !470, inlinedAt: !605)
!620 = !DILocation(line: 121, column: 95, scope: !505, inlinedAt: !621)
!621 = distinct !DILocation(line: 177, column: 2, scope: !470, inlinedAt: !605)
!622 = !DILocation(line: 123, column: 9, scope: !505, inlinedAt: !621)
!623 = !DILocation(line: 179, column: 2, scope: !470, inlinedAt: !605)
!624 = !DILocation(line: 84, column: 2, scope: !590)
!625 = !DILocation(line: 84, column: 7, scope: !626)
!626 = distinct !DILexicalBlock(scope: !590, file: !113, line: 84, column: 5)
!627 = !DILocation(line: 87, column: 2, scope: !590)
!628 = !DILocation(line: 87, column: 50, scope: !590)
!629 = !DILocation(line: 87, column: 59, scope: !590)
!630 = !DILocation(line: 87, column: 27, scope: !590)
!631 = !DILocation(line: 87, column: 25, scope: !590)
!632 = !DILocation(line: 87, column: 68, scope: !590)
!633 = !DILocation(line: 89, column: 8, scope: !634)
!634 = distinct !DILexicalBlock(scope: !590, file: !113, line: 88, column: 12)
!635 = !DILocation(line: 90, column: 32, scope: !634)
!636 = !DILocation(line: 59, column: 47, scope: !530, inlinedAt: !637)
!637 = distinct !DILocation(line: 90, column: 3, scope: !634)
!638 = !DILocation(line: 59, column: 68, scope: !530, inlinedAt: !637)
!639 = !DILocation(line: 61, column: 35, scope: !530, inlinedAt: !637)
!640 = !DILocation(line: 61, column: 2, scope: !530, inlinedAt: !637)
!641 = !DILocation(line: 61, column: 10, scope: !530, inlinedAt: !637)
!642 = !DILocation(line: 61, column: 15, scope: !530, inlinedAt: !637)
!643 = !DILocation(line: 61, column: 33, scope: !530, inlinedAt: !637)
!644 = !DILocation(line: 91, column: 18, scope: !634)
!645 = !DILocation(line: 91, column: 3, scope: !634)
!646 = distinct !{!646, !627, !647}
!647 = !DILocation(line: 92, column: 2, scope: !590)
!648 = !DILocation(line: 94, column: 2, scope: !590)
!649 = !DILocation(line: 94, column: 7, scope: !650)
!650 = distinct !DILexicalBlock(scope: !590, file: !113, line: 94, column: 5)
!651 = !DILocation(line: 96, column: 2, scope: !590)
!652 = !DILocation(line: 98, column: 9, scope: !590)
!653 = !DILocation(line: 99, column: 1, scope: !590)
!654 = !DILocation(line: 98, column: 2, scope: !590)
!655 = distinct !DISubprogram(name: "z_impl_k_condvar_wait", scope: !113, file: !113, line: 109, type: !656, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !665)
!656 = !DISubroutineType(types: !657)
!657 = !{!95, !424, !658, !300}
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 32)
!659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_mutex", file: !207, line: 2895, size: 160, elements: !660)
!660 = !{!661, !662, !663, !664}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !659, file: !207, line: 2897, baseType: !151, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !659, file: !207, line: 2899, baseType: !129, size: 32, offset: 64)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !659, file: !207, line: 2902, baseType: !174, size: 32, offset: 96)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "owner_orig_prio", scope: !659, file: !207, line: 2905, baseType: !95, size: 32, offset: 128)
!665 = !{!666, !667, !668, !669, !670}
!666 = !DILocalVariable(name: "condvar", arg: 1, scope: !655, file: !113, line: 109, type: !424)
!667 = !DILocalVariable(name: "mutex", arg: 2, scope: !655, file: !113, line: 109, type: !658)
!668 = !DILocalVariable(name: "timeout", arg: 3, scope: !655, file: !113, line: 110, type: !300)
!669 = !DILocalVariable(name: "key", scope: !655, file: !113, line: 112, type: !461)
!670 = !DILocalVariable(name: "ret", scope: !655, file: !113, line: 113, type: !95)
!671 = !DILocation(line: 109, column: 45, scope: !655)
!672 = !DILocation(line: 109, column: 70, scope: !655)
!673 = !DILocation(line: 110, column: 18, scope: !655)
!674 = !DILocation(line: 112, column: 2, scope: !655)
!675 = !DILocation(line: 112, column: 19, scope: !655)
!676 = !DILocation(line: 113, column: 2, scope: !655)
!677 = !DILocation(line: 113, column: 6, scope: !655)
!678 = !DILocation(line: 115, column: 2, scope: !655)
!679 = !DILocation(line: 115, column: 7, scope: !680)
!680 = distinct !DILexicalBlock(scope: !655, file: !113, line: 115, column: 5)
!681 = !DILocation(line: 117, column: 8, scope: !655)
!682 = !DILocation(line: 160, column: 94, scope: !470, inlinedAt: !683)
!683 = distinct !DILocation(line: 117, column: 8, scope: !655)
!684 = !DILocation(line: 162, column: 9, scope: !470, inlinedAt: !683)
!685 = !DILocation(line: 163, column: 19, scope: !470, inlinedAt: !683)
!686 = !DILocation(line: 44, column: 2, scope: !481, inlinedAt: !687)
!687 = distinct !DILocation(line: 169, column: 10, scope: !470, inlinedAt: !683)
!688 = !DILocation(line: 44, column: 15, scope: !481, inlinedAt: !687)
!689 = !DILocation(line: 48, column: 2, scope: !481, inlinedAt: !687)
!690 = !DILocation(line: 80, column: 9, scope: !481, inlinedAt: !687)
!691 = !DILocation(line: 81, column: 1, scope: !481, inlinedAt: !687)
!692 = !DILocation(line: 169, column: 8, scope: !470, inlinedAt: !683)
!693 = !DILocation(line: 171, column: 26, scope: !470, inlinedAt: !683)
!694 = !DILocation(line: 110, column: 94, scope: !496, inlinedAt: !695)
!695 = distinct !DILocation(line: 171, column: 2, scope: !470, inlinedAt: !683)
!696 = !DILocation(line: 112, column: 9, scope: !496, inlinedAt: !695)
!697 = !DILocation(line: 177, column: 27, scope: !470, inlinedAt: !683)
!698 = !DILocation(line: 121, column: 95, scope: !505, inlinedAt: !699)
!699 = distinct !DILocation(line: 177, column: 2, scope: !470, inlinedAt: !683)
!700 = !DILocation(line: 123, column: 9, scope: !505, inlinedAt: !699)
!701 = !DILocation(line: 179, column: 2, scope: !470, inlinedAt: !683)
!702 = !DILocation(line: 118, column: 17, scope: !655)
!703 = !DILocation(line: 118, column: 2, scope: !655)
!704 = !DILocation(line: 120, column: 33, scope: !655)
!705 = !DILocation(line: 120, column: 42, scope: !655)
!706 = !DILocation(line: 120, column: 8, scope: !655)
!707 = !DILocation(line: 120, column: 6, scope: !655)
!708 = !DILocation(line: 121, column: 15, scope: !655)
!709 = !DILocation(line: 121, column: 37, scope: !655)
!710 = !DILocation(line: 121, column: 2, scope: !655)
!711 = !DILocation(line: 123, column: 2, scope: !655)
!712 = !DILocation(line: 123, column: 7, scope: !713)
!713 = distinct !DILexicalBlock(scope: !655, file: !113, line: 123, column: 5)
!714 = !DILocation(line: 125, column: 9, scope: !655)
!715 = !DILocation(line: 126, column: 1, scope: !655)
!716 = !DILocation(line: 125, column: 2, scope: !655)
!717 = distinct !DISubprogram(name: "k_mutex_unlock", scope: !718, file: !718, line: 993, type: !719, scopeLine: 994, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !721)
!718 = !DIFile(filename: "zephyr/include/generated/syscalls/kernel.h", directory: "/home/sri/zephyrproject/zephyr/build")
!719 = !DISubroutineType(types: !720)
!720 = !{!95, !658}
!721 = !{!722}
!722 = !DILocalVariable(name: "mutex", arg: 1, scope: !717, file: !718, line: 993, type: !658)
!723 = !DILocation(line: 993, column: 51, scope: !717)
!724 = !DILocation(line: 1001, column: 2, scope: !717)
!725 = !DILocation(line: 1001, column: 7, scope: !726)
!726 = distinct !DILexicalBlock(scope: !717, file: !718, line: 1001, column: 5)
!727 = !{i64 148268}
!728 = !DILocation(line: 1001, column: 47, scope: !726)
!729 = !DILocation(line: 1002, column: 31, scope: !717)
!730 = !DILocation(line: 1002, column: 9, scope: !717)
!731 = !DILocation(line: 1002, column: 2, scope: !717)
!732 = !DISubprogram(name: "z_pend_curr", scope: !583, file: !583, line: 46, type: !733, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !116)
!733 = !DISubroutineType(types: !734)
!734 = !{!95, !473, !461, !150, !300}
!735 = distinct !DISubprogram(name: "k_mutex_lock", scope: !718, file: !718, line: 976, type: !736, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !738)
!736 = !DISubroutineType(types: !737)
!737 = !{!95, !658, !300}
!738 = !{!739, !740}
!739 = !DILocalVariable(name: "mutex", arg: 1, scope: !735, file: !718, line: 976, type: !658)
!740 = !DILocalVariable(name: "timeout", arg: 2, scope: !735, file: !718, line: 976, type: !300)
!741 = !DILocation(line: 976, column: 49, scope: !735)
!742 = !DILocation(line: 976, column: 68, scope: !735)
!743 = !DILocation(line: 985, column: 2, scope: !735)
!744 = !DILocation(line: 985, column: 7, scope: !745)
!745 = distinct !DILexicalBlock(scope: !735, file: !718, line: 985, column: 5)
!746 = !{i64 148035}
!747 = !DILocation(line: 985, column: 47, scope: !745)
!748 = !DILocation(line: 986, column: 29, scope: !735)
!749 = !DILocation(line: 986, column: 9, scope: !735)
!750 = !DILocation(line: 986, column: 2, scope: !735)
!751 = !DISubprogram(name: "z_timeout_expires", scope: !207, file: !207, line: 642, type: !752, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !116)
!752 = !DISubroutineType(types: !753)
!753 = !{!89, !754}
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 32)
!755 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !178)
!756 = !DISubprogram(name: "z_timeout_remaining", scope: !207, file: !207, line: 643, type: !752, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !116)
!757 = distinct !DISubprogram(name: "sys_sflist_is_empty", scope: !351, file: !351, line: 335, type: !758, scopeLine: 335, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !762)
!758 = !DISubroutineType(types: !759)
!759 = !{!760, !761}
!760 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 32)
!762 = !{!763}
!763 = !DILocalVariable(name: "list", arg: 1, scope: !757, file: !351, line: 335, type: !761)
!764 = !DILocation(line: 335, column: 55, scope: !757)
!765 = !DILocation(line: 335, column: 92, scope: !757)
!766 = !DILocation(line: 335, column: 71, scope: !757)
!767 = !DILocation(line: 335, column: 98, scope: !757)
!768 = !DILocation(line: 335, column: 63, scope: !757)
!769 = distinct !DISubprogram(name: "sys_sflist_peek_head", scope: !351, file: !351, line: 255, type: !770, scopeLine: 256, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !772)
!770 = !DISubroutineType(types: !771)
!771 = !{!355, !761}
!772 = !{!773}
!773 = !DILocalVariable(name: "list", arg: 1, scope: !769, file: !351, line: 255, type: !761)
!774 = !DILocation(line: 255, column: 64, scope: !769)
!775 = !DILocation(line: 257, column: 9, scope: !769)
!776 = !DILocation(line: 257, column: 15, scope: !769)
!777 = !DILocation(line: 257, column: 2, scope: !769)
!778 = distinct !DISubprogram(name: "sys_dlist_init", scope: !98, file: !98, line: 203, type: !779, scopeLine: 204, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !782)
!779 = !DISubroutineType(types: !780)
!780 = !{null, !781}
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 32)
!782 = !{!783}
!783 = !DILocalVariable(name: "list", arg: 1, scope: !778, file: !98, line: 203, type: !781)
!784 = !DILocation(line: 203, column: 48, scope: !778)
!785 = !DILocation(line: 205, column: 30, scope: !778)
!786 = !DILocation(line: 205, column: 2, scope: !778)
!787 = !DILocation(line: 205, column: 8, scope: !778)
!788 = !DILocation(line: 205, column: 13, scope: !778)
!789 = !DILocation(line: 206, column: 30, scope: !778)
!790 = !DILocation(line: 206, column: 2, scope: !778)
!791 = !DILocation(line: 206, column: 8, scope: !778)
!792 = !DILocation(line: 206, column: 13, scope: !778)
!793 = !DILocation(line: 207, column: 1, scope: !778)
!794 = !DISubprogram(name: "z_impl_k_mutex_unlock", scope: !718, file: !718, line: 990, type: !719, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !116)
!795 = !DISubprogram(name: "z_impl_k_mutex_lock", scope: !718, file: !718, line: 973, type: !736, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !116)
