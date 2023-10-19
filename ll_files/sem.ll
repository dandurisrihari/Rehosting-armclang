; ModuleID = '../bc_files/sem.bc'
source_filename = "/home/sri/zephyrproject/zephyr/kernel/sem.c"
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
%struct.z_spinlock_key = type { i32 }

@lock = internal global %struct.k_spinlock zeroinitializer, align 1, !dbg !0

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_k_object_access_grant(ptr noundef %0, ptr noundef %1) #0 !dbg !120 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !227, metadata !DIExpression()), !dbg !229
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !228, metadata !DIExpression()), !dbg !230
  %5 = load ptr, ptr %3, align 4, !dbg !231
  %6 = load ptr, ptr %4, align 4, !dbg !232
  ret void, !dbg !233
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_k_object_release(ptr noundef %0) #0 !dbg !234 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !238, metadata !DIExpression()), !dbg !239
  %3 = load ptr, ptr %2, align 4, !dbg !240
  ret void, !dbg !241
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_impl_k_object_alloc(i8 noundef zeroext %0) #0 !dbg !242 {
  %2 = alloca i8, align 1
  store i8 %0, ptr %2, align 1
  call void @llvm.dbg.declare(metadata ptr %2, metadata !246, metadata !DIExpression()), !dbg !247
  %3 = load i8, ptr %2, align 1, !dbg !248
  ret ptr null, !dbg !249
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_impl_k_object_alloc_size(i8 noundef zeroext %0, i32 noundef %1) #0 !dbg !250 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8 %0, ptr %3, align 1
  call void @llvm.dbg.declare(metadata ptr %3, metadata !254, metadata !DIExpression()), !dbg !256
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !255, metadata !DIExpression()), !dbg !257
  %5 = load i8, ptr %3, align 1, !dbg !258
  %6 = load i32, ptr %4, align 4, !dbg !259
  ret ptr null, !dbg !260
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_thread_timeout_expires_ticks(ptr noundef %0) #0 !dbg !261 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !269, metadata !DIExpression()), !dbg !270
  %3 = load ptr, ptr %2, align 4, !dbg !271
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !272
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !273
  %6 = call i64 @z_timeout_expires(ptr noundef %5) #6, !dbg !274
  ret i64 %6, !dbg !275
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_thread_timeout_remaining_ticks(ptr noundef %0) #0 !dbg !276 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !278, metadata !DIExpression()), !dbg !279
  %3 = load ptr, ptr %2, align 4, !dbg !280
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !281
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !282
  %6 = call i64 @z_timeout_remaining(ptr noundef %5) #6, !dbg !283
  ret i64 %6, !dbg !284
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_timer_expires_ticks(ptr noundef %0) #0 !dbg !285 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !308, metadata !DIExpression()), !dbg !309
  %3 = load ptr, ptr %2, align 4, !dbg !310
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !311
  %5 = call i64 @z_timeout_expires(ptr noundef %4) #6, !dbg !312
  ret i64 %5, !dbg !313
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_timer_remaining_ticks(ptr noundef %0) #0 !dbg !314 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !316, metadata !DIExpression()), !dbg !317
  %3 = load ptr, ptr %2, align 4, !dbg !318
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !319
  %5 = call i64 @z_timeout_remaining(ptr noundef %4) #6, !dbg !320
  ret i64 %5, !dbg !321
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_k_timer_user_data_set(ptr noundef %0, ptr noundef %1) #0 !dbg !322 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !326, metadata !DIExpression()), !dbg !328
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !327, metadata !DIExpression()), !dbg !329
  %5 = load ptr, ptr %4, align 4, !dbg !330
  %6 = load ptr, ptr %3, align 4, !dbg !331
  %7 = getelementptr inbounds %struct.k_timer, ptr %6, i32 0, i32 6, !dbg !332
  store ptr %5, ptr %7, align 4, !dbg !333
  ret void, !dbg !334
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_impl_k_timer_user_data_get(ptr noundef %0) #0 !dbg !335 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !339, metadata !DIExpression()), !dbg !340
  %3 = load ptr, ptr %2, align 4, !dbg !341
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 6, !dbg !342
  %5 = load ptr, ptr %4, align 4, !dbg !342
  ret ptr %5, !dbg !343
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_queue_is_empty(ptr noundef %0) #0 !dbg !344 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !366, metadata !DIExpression()), !dbg !367
  %3 = load ptr, ptr %2, align 4, !dbg !368
  %4 = getelementptr inbounds %struct.k_queue, ptr %3, i32 0, i32 0, !dbg !369
  %5 = call zeroext i1 @sys_sflist_is_empty(ptr noundef %4) #6, !dbg !370
  %6 = zext i1 %5 to i32, !dbg !371
  ret i32 %6, !dbg !372
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_sem_count_get(ptr noundef %0) #0 !dbg !373 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !383, metadata !DIExpression()), !dbg !384
  %3 = load ptr, ptr %2, align 4, !dbg !385
  %4 = getelementptr inbounds %struct.k_sem, ptr %3, i32 0, i32 1, !dbg !386
  %5 = load i32, ptr %4, align 4, !dbg !386
  ret i32 %5, !dbg !387
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_msgq_num_free_get(ptr noundef %0) #0 !dbg !388 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !407, metadata !DIExpression()), !dbg !408
  %3 = load ptr, ptr %2, align 4, !dbg !409
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 3, !dbg !410
  %5 = load i32, ptr %4, align 4, !dbg !410
  %6 = load ptr, ptr %2, align 4, !dbg !411
  %7 = getelementptr inbounds %struct.k_msgq, ptr %6, i32 0, i32 8, !dbg !412
  %8 = load i32, ptr %7, align 4, !dbg !412
  %9 = sub i32 %5, %8, !dbg !413
  ret i32 %9, !dbg !414
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_msgq_num_used_get(ptr noundef %0) #0 !dbg !415 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !417, metadata !DIExpression()), !dbg !418
  %3 = load ptr, ptr %2, align 4, !dbg !419
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 8, !dbg !420
  %5 = load i32, ptr %4, align 4, !dbg !420
  ret i32 %5, !dbg !421
}

; Function Attrs: nounwind optsize
define hidden i32 @z_impl_k_sem_init(ptr noundef %0, i32 noundef %1, i32 noundef %2) #1 !dbg !422 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store ptr %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !426, metadata !DIExpression()), !dbg !429
  store i32 %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !427, metadata !DIExpression()), !dbg !430
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !428, metadata !DIExpression()), !dbg !431
  %8 = load i32, ptr %7, align 4, !dbg !432
  %9 = icmp eq i32 %8, 0, !dbg !434
  br i1 %9, label %17, label %10, !dbg !435

10:                                               ; preds = %3
  %11 = load i32, ptr %7, align 4, !dbg !436
  %12 = icmp ugt i32 %11, -1, !dbg !437
  br i1 %12, label %17, label %13, !dbg !438

13:                                               ; preds = %10
  %14 = load i32, ptr %6, align 4, !dbg !439
  %15 = load i32, ptr %7, align 4, !dbg !440
  %16 = icmp ugt i32 %14, %15, !dbg !441
  br i1 %16, label %17, label %20, !dbg !442

17:                                               ; preds = %13, %10, %3
  br label %18, !dbg !443

18:                                               ; preds = %17
  br label %19, !dbg !445

19:                                               ; preds = %18
  store i32 -5, ptr %4, align 4, !dbg !447
  br label %32, !dbg !447

20:                                               ; preds = %13
  %21 = load i32, ptr %6, align 4, !dbg !448
  %22 = load ptr, ptr %5, align 4, !dbg !449
  %23 = getelementptr inbounds %struct.k_sem, ptr %22, i32 0, i32 1, !dbg !450
  store i32 %21, ptr %23, align 4, !dbg !451
  %24 = load i32, ptr %7, align 4, !dbg !452
  %25 = load ptr, ptr %5, align 4, !dbg !453
  %26 = getelementptr inbounds %struct.k_sem, ptr %25, i32 0, i32 2, !dbg !454
  store i32 %24, ptr %26, align 4, !dbg !455
  br label %27, !dbg !456

27:                                               ; preds = %20
  br label %28, !dbg !457

28:                                               ; preds = %27
  %29 = load ptr, ptr %5, align 4, !dbg !459
  %30 = getelementptr inbounds %struct.k_sem, ptr %29, i32 0, i32 0, !dbg !460
  call void @z_waitq_init(ptr noundef %30) #6, !dbg !461
  %31 = load ptr, ptr %5, align 4, !dbg !462
  call void @z_object_init(ptr noundef %31) #6, !dbg !463
  store i32 0, ptr %4, align 4, !dbg !464
  br label %32, !dbg !464

32:                                               ; preds = %28, %19
  %33 = load i32, ptr %4, align 4, !dbg !465
  ret i32 %33, !dbg !465
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: inlinehint nounwind optsize
define internal void @z_waitq_init(ptr noundef %0) #0 !dbg !466 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !471, metadata !DIExpression()), !dbg !472
  %3 = load ptr, ptr %2, align 4, !dbg !473
  %4 = getelementptr inbounds %struct._wait_q_t, ptr %3, i32 0, i32 0, !dbg !474
  call void @sys_dlist_init(ptr noundef %4) #6, !dbg !475
  ret void, !dbg !476
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_object_init(ptr noundef %0) #0 !dbg !477 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !479, metadata !DIExpression()), !dbg !480
  %3 = load ptr, ptr %2, align 4, !dbg !481
  ret void, !dbg !482
}

; Function Attrs: nounwind optsize
define hidden void @z_impl_k_sem_give(ptr noundef %0) #1 !dbg !483 {
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
  %15 = alloca i8, align 1
  store ptr %0, ptr %12, align 4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !487, metadata !DIExpression()), !dbg !495
  call void @llvm.lifetime.start.p0(i64 4, ptr %13) #7, !dbg !496
  call void @llvm.dbg.declare(metadata ptr %13, metadata !488, metadata !DIExpression()), !dbg !497
  store ptr @lock, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !498, metadata !DIExpression()), !dbg !505
  %16 = load ptr, ptr %11, align 4, !dbg !507
  call void @llvm.dbg.declare(metadata ptr %10, metadata !504, metadata !DIExpression()), !dbg !508
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #7, !dbg !509
  call void @llvm.dbg.declare(metadata ptr %5, metadata !515, metadata !DIExpression()), !dbg !517
  %17 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #7, !dbg !518, !srcloc !519
  store i32 %17, ptr %5, align 4, !dbg !518
  %18 = load i32, ptr %5, align 4, !dbg !520
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #7, !dbg !521
  store i32 %18, ptr %10, align 4, !dbg !522
  %19 = load ptr, ptr %11, align 4, !dbg !523
  store ptr %19, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !524, metadata !DIExpression()), !dbg !529
  %20 = load ptr, ptr %4, align 4, !dbg !531
  %21 = load ptr, ptr %11, align 4, !dbg !532
  store ptr %21, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !533, metadata !DIExpression()), !dbg !536
  %22 = load ptr, ptr %3, align 4, !dbg !538
  %23 = load i32, ptr %10, align 4, !dbg !539
  %24 = getelementptr inbounds %struct.z_spinlock_key, ptr %13, i32 0, i32 0, !dbg !540
  store i32 %23, ptr %24, align 4, !dbg !540
  call void @llvm.lifetime.start.p0(i64 4, ptr %14) #7, !dbg !541
  call void @llvm.dbg.declare(metadata ptr %14, metadata !493, metadata !DIExpression()), !dbg !542
  call void @llvm.lifetime.start.p0(i64 1, ptr %15) #7, !dbg !543
  call void @llvm.dbg.declare(metadata ptr %15, metadata !494, metadata !DIExpression()), !dbg !544
  store i8 1, ptr %15, align 1, !dbg !544
  br label %25, !dbg !545

25:                                               ; preds = %1
  br label %26, !dbg !546

26:                                               ; preds = %25
  br label %27, !dbg !546

27:                                               ; preds = %26
  %28 = load ptr, ptr %12, align 4, !dbg !548
  %29 = getelementptr inbounds %struct.k_sem, ptr %28, i32 0, i32 0, !dbg !549
  %30 = call ptr @z_unpend_first_thread(ptr noundef %29) #6, !dbg !550
  store ptr %30, ptr %14, align 4, !dbg !551
  %31 = load ptr, ptr %14, align 4, !dbg !552
  %32 = icmp ne ptr %31, null, !dbg !554
  br i1 %32, label %33, label %40, !dbg !555

33:                                               ; preds = %27
  %34 = load ptr, ptr %14, align 4, !dbg !556
  store ptr %34, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !558, metadata !DIExpression()), !dbg !565
  store i32 0, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !564, metadata !DIExpression()), !dbg !567
  %35 = load i32, ptr %9, align 4, !dbg !568
  %36 = load ptr, ptr %8, align 4, !dbg !569
  %37 = getelementptr inbounds %struct.k_thread, ptr %36, i32 0, i32 6, !dbg !570
  %38 = getelementptr inbounds %struct._thread_arch, ptr %37, i32 0, i32 1, !dbg !571
  store i32 %35, ptr %38, align 4, !dbg !572
  %39 = load ptr, ptr %14, align 4, !dbg !573
  call void @z_ready_thread(ptr noundef %39) #6, !dbg !574
  br label %57, !dbg !575

40:                                               ; preds = %27
  %41 = load ptr, ptr %12, align 4, !dbg !576
  %42 = getelementptr inbounds %struct.k_sem, ptr %41, i32 0, i32 1, !dbg !578
  %43 = load i32, ptr %42, align 4, !dbg !578
  %44 = load ptr, ptr %12, align 4, !dbg !579
  %45 = getelementptr inbounds %struct.k_sem, ptr %44, i32 0, i32 2, !dbg !580
  %46 = load i32, ptr %45, align 4, !dbg !580
  %47 = icmp ne i32 %43, %46, !dbg !581
  %48 = zext i1 %47 to i64, !dbg !582
  %49 = select i1 %47, i32 1, i32 0, !dbg !582
  %50 = load ptr, ptr %12, align 4, !dbg !583
  %51 = getelementptr inbounds %struct.k_sem, ptr %50, i32 0, i32 1, !dbg !584
  %52 = load i32, ptr %51, align 4, !dbg !585
  %53 = add i32 %52, %49, !dbg !585
  store i32 %53, ptr %51, align 4, !dbg !585
  %54 = load ptr, ptr %12, align 4, !dbg !586
  %55 = call zeroext i1 @handle_poll_events(ptr noundef %54) #6, !dbg !587
  %56 = zext i1 %55 to i8, !dbg !588
  store i8 %56, ptr %15, align 1, !dbg !588
  br label %57

57:                                               ; preds = %40, %33
  %58 = load i8, ptr %15, align 1, !dbg !589, !range !591, !noundef !112
  %59 = trunc i8 %58 to i1, !dbg !589
  br i1 %59, label %60, label %63, !dbg !592

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.z_spinlock_key, ptr %13, i32 0, i32 0, !dbg !593
  %62 = load [1 x i32], ptr %61, align 4, !dbg !593
  call void @z_reschedule(ptr noundef @lock, [1 x i32] %62) #6, !dbg !593
  br label %72, !dbg !595

63:                                               ; preds = %57
  %64 = getelementptr inbounds %struct.z_spinlock_key, ptr %13, i32 0, i32 0, !dbg !596
  %65 = load [1 x i32], ptr %64, align 4, !dbg !596
  store [1 x i32] %65, ptr %6, align 4
  store ptr @lock, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !598, metadata !DIExpression()), !dbg !604
  call void @llvm.dbg.declare(metadata ptr %6, metadata !603, metadata !DIExpression()), !dbg !606
  %66 = load ptr, ptr %7, align 4, !dbg !607
  %67 = load i32, ptr %6, align 4, !dbg !608
  store i32 %67, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !609, metadata !DIExpression()), !dbg !614
  %68 = load i32, ptr %2, align 4, !dbg !616
  %69 = icmp ne i32 %68, 0, !dbg !618
  br i1 %69, label %70, label %71, !dbg !619

70:                                               ; preds = %63
  br label %arch_irq_unlock.exit, !dbg !620

71:                                               ; preds = %63
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #7, !dbg !622, !srcloc !623
  br label %arch_irq_unlock.exit, !dbg !624

arch_irq_unlock.exit:                             ; preds = %70, %71
  br label %72

72:                                               ; preds = %arch_irq_unlock.exit, %60
  br label %73, !dbg !625

73:                                               ; preds = %72
  br label %74, !dbg !626

74:                                               ; preds = %73
  br label %75, !dbg !626

75:                                               ; preds = %74
  call void @llvm.lifetime.end.p0(i64 1, ptr %15) #7, !dbg !628
  call void @llvm.lifetime.end.p0(i64 4, ptr %14) #7, !dbg !628
  call void @llvm.lifetime.end.p0(i64 4, ptr %13) #7, !dbg !628
  ret void, !dbg !628
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: optsize
declare !dbg !629 dso_local ptr @z_unpend_first_thread(ptr noundef) #4

; Function Attrs: optsize
declare !dbg !633 dso_local void @z_ready_thread(ptr noundef) #4

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @handle_poll_events(ptr noundef %0) #0 !dbg !636 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !640, metadata !DIExpression()), !dbg !641
  %3 = load ptr, ptr %2, align 4, !dbg !642
  ret i1 false, !dbg !643
}

; Function Attrs: optsize
declare !dbg !644 dso_local void @z_reschedule(ptr noundef, [1 x i32]) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind optsize
define hidden i32 @z_impl_k_sem_take(ptr noundef %0, [1 x i64] %1) #1 !dbg !645 {
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
  %14 = alloca %struct.k_timeout_t, align 8
  %15 = alloca ptr, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.z_spinlock_key, align 4
  %18 = alloca %struct.k_timeout_t, align 8
  %19 = getelementptr inbounds %struct.k_timeout_t, ptr %14, i32 0, i32 0
  store [1 x i64] %1, ptr %19, align 8
  store ptr %0, ptr %15, align 4
  call void @llvm.dbg.declare(metadata ptr %15, metadata !649, metadata !DIExpression()), !dbg !654
  call void @llvm.dbg.declare(metadata ptr %14, metadata !650, metadata !DIExpression()), !dbg !655
  call void @llvm.lifetime.start.p0(i64 4, ptr %16) #7, !dbg !656
  call void @llvm.dbg.declare(metadata ptr %16, metadata !651, metadata !DIExpression()), !dbg !657
  store i32 0, ptr %16, align 4, !dbg !657
  call void @llvm.lifetime.start.p0(i64 4, ptr %17) #7, !dbg !658
  call void @llvm.dbg.declare(metadata ptr %17, metadata !652, metadata !DIExpression()), !dbg !659
  store ptr @lock, ptr %13, align 4
  call void @llvm.dbg.declare(metadata ptr %13, metadata !498, metadata !DIExpression()), !dbg !660
  %20 = load ptr, ptr %13, align 4, !dbg !662
  call void @llvm.dbg.declare(metadata ptr %12, metadata !504, metadata !DIExpression()), !dbg !663
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #7, !dbg !664
  call void @llvm.dbg.declare(metadata ptr %7, metadata !515, metadata !DIExpression()), !dbg !666
  %21 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #7, !dbg !667, !srcloc !519
  store i32 %21, ptr %7, align 4, !dbg !667
  %22 = load i32, ptr %7, align 4, !dbg !668
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #7, !dbg !669
  store i32 %22, ptr %12, align 4, !dbg !670
  %23 = load ptr, ptr %13, align 4, !dbg !671
  store ptr %23, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !524, metadata !DIExpression()), !dbg !672
  %24 = load ptr, ptr %6, align 4, !dbg !674
  %25 = load ptr, ptr %13, align 4, !dbg !675
  store ptr %25, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !533, metadata !DIExpression()), !dbg !676
  %26 = load ptr, ptr %5, align 4, !dbg !678
  %27 = load i32, ptr %12, align 4, !dbg !679
  %28 = getelementptr inbounds %struct.z_spinlock_key, ptr %17, i32 0, i32 0, !dbg !680
  store i32 %27, ptr %28, align 4, !dbg !680
  br label %29, !dbg !681

29:                                               ; preds = %2
  br label %30, !dbg !682

30:                                               ; preds = %29
  br label %31, !dbg !682

31:                                               ; preds = %30
  %32 = load ptr, ptr %15, align 4, !dbg !684
  %33 = getelementptr inbounds %struct.k_sem, ptr %32, i32 0, i32 1, !dbg !686
  %34 = load i32, ptr %33, align 4, !dbg !686
  %35 = icmp ugt i32 %34, 0, !dbg !687
  %36 = xor i1 %35, true, !dbg !688
  %37 = xor i1 %36, true, !dbg !689
  %38 = zext i1 %37 to i32, !dbg !690
  %39 = call i32 @llvm.expect.i32(i32 %38, i32 1), !dbg !691
  %40 = icmp ne i32 %39, 0, !dbg !692
  br i1 %40, label %41, label %54, !dbg !693

41:                                               ; preds = %31
  %42 = load ptr, ptr %15, align 4, !dbg !694
  %43 = getelementptr inbounds %struct.k_sem, ptr %42, i32 0, i32 1, !dbg !696
  %44 = load i32, ptr %43, align 4, !dbg !697
  %45 = add i32 %44, -1, !dbg !697
  store i32 %45, ptr %43, align 4, !dbg !697
  %46 = getelementptr inbounds %struct.z_spinlock_key, ptr %17, i32 0, i32 0, !dbg !698
  %47 = load [1 x i32], ptr %46, align 4, !dbg !698
  store [1 x i32] %47, ptr %8, align 4
  store ptr @lock, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !598, metadata !DIExpression()), !dbg !699
  call void @llvm.dbg.declare(metadata ptr %8, metadata !603, metadata !DIExpression()), !dbg !701
  %48 = load ptr, ptr %9, align 4, !dbg !702
  %49 = load i32, ptr %8, align 4, !dbg !703
  store i32 %49, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !609, metadata !DIExpression()), !dbg !704
  %50 = load i32, ptr %4, align 4, !dbg !706
  %51 = icmp ne i32 %50, 0, !dbg !707
  br i1 %51, label %52, label %53, !dbg !708

52:                                               ; preds = %41
  br label %arch_irq_unlock.exit, !dbg !709

53:                                               ; preds = %41
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #7, !dbg !710, !srcloc !623
  br label %arch_irq_unlock.exit, !dbg !711

arch_irq_unlock.exit:                             ; preds = %52, %53
  store i32 0, ptr %16, align 4, !dbg !712
  br label %79, !dbg !713

54:                                               ; preds = %31
  %55 = getelementptr inbounds %struct.k_timeout_t, ptr %14, i32 0, i32 0, !dbg !714
  %56 = load i64, ptr %55, align 8, !dbg !714
  %57 = getelementptr inbounds %struct.k_timeout_t, ptr %18, i32 0, i32 0, !dbg !716
  store i64 0, ptr %57, align 8, !dbg !716
  %58 = icmp eq i64 %56, 0, !dbg !717
  br i1 %58, label %59, label %68, !dbg !718

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.z_spinlock_key, ptr %17, i32 0, i32 0, !dbg !719
  %61 = load [1 x i32], ptr %60, align 4, !dbg !719
  store [1 x i32] %61, ptr %10, align 4
  store ptr @lock, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !598, metadata !DIExpression()), !dbg !721
  call void @llvm.dbg.declare(metadata ptr %10, metadata !603, metadata !DIExpression()), !dbg !723
  %62 = load ptr, ptr %11, align 4, !dbg !724
  %63 = load i32, ptr %10, align 4, !dbg !725
  store i32 %63, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !609, metadata !DIExpression()), !dbg !726
  %64 = load i32, ptr %3, align 4, !dbg !728
  %65 = icmp ne i32 %64, 0, !dbg !729
  br i1 %65, label %66, label %67, !dbg !730

66:                                               ; preds = %59
  br label %arch_irq_unlock.exit1, !dbg !731

67:                                               ; preds = %59
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #7, !dbg !732, !srcloc !623
  br label %arch_irq_unlock.exit1, !dbg !733

arch_irq_unlock.exit1:                            ; preds = %66, %67
  store i32 -16, ptr %16, align 4, !dbg !734
  br label %79, !dbg !735

68:                                               ; preds = %54
  br label %69, !dbg !736

69:                                               ; preds = %68
  br label %70, !dbg !737

70:                                               ; preds = %69
  br label %71, !dbg !737

71:                                               ; preds = %70
  %72 = load ptr, ptr %15, align 4, !dbg !739
  %73 = getelementptr inbounds %struct.k_sem, ptr %72, i32 0, i32 0, !dbg !740
  %74 = getelementptr inbounds %struct.z_spinlock_key, ptr %17, i32 0, i32 0, !dbg !741
  %75 = load [1 x i32], ptr %74, align 4, !dbg !741
  %76 = getelementptr inbounds %struct.k_timeout_t, ptr %14, i32 0, i32 0, !dbg !741
  %77 = load [1 x i64], ptr %76, align 8, !dbg !741
  %78 = call i32 @z_pend_curr(ptr noundef @lock, [1 x i32] %75, ptr noundef %73, [1 x i64] %77) #6, !dbg !741
  store i32 %78, ptr %16, align 4, !dbg !742
  br label %79, !dbg !743

79:                                               ; preds = %71, %arch_irq_unlock.exit1, %arch_irq_unlock.exit
  call void @llvm.dbg.label(metadata !653), !dbg !744
  br label %80, !dbg !745

80:                                               ; preds = %79
  br label %81, !dbg !746

81:                                               ; preds = %80
  br label %82, !dbg !746

82:                                               ; preds = %81
  %83 = load i32, ptr %16, align 4, !dbg !748
  call void @llvm.lifetime.end.p0(i64 4, ptr %17) #7, !dbg !749
  call void @llvm.lifetime.end.p0(i64 4, ptr %16) #7, !dbg !749
  ret i32 %83, !dbg !750
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i32 @llvm.expect.i32(i32, i32) #5

; Function Attrs: optsize
declare !dbg !751 dso_local i32 @z_pend_curr(ptr noundef, [1 x i32], ptr noundef, [1 x i64]) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #2

; Function Attrs: nounwind optsize
define hidden void @z_impl_k_sem_reset(ptr noundef %0) #1 !dbg !754 {
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
  store ptr %0, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !756, metadata !DIExpression()), !dbg !759
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #7, !dbg !760
  call void @llvm.dbg.declare(metadata ptr %10, metadata !757, metadata !DIExpression()), !dbg !761
  call void @llvm.lifetime.start.p0(i64 4, ptr %11) #7, !dbg !762
  call void @llvm.dbg.declare(metadata ptr %11, metadata !758, metadata !DIExpression()), !dbg !763
  store ptr @lock, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !498, metadata !DIExpression()), !dbg !764
  %12 = load ptr, ptr %8, align 4, !dbg !766
  call void @llvm.dbg.declare(metadata ptr %7, metadata !504, metadata !DIExpression()), !dbg !767
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #7, !dbg !768
  call void @llvm.dbg.declare(metadata ptr %4, metadata !515, metadata !DIExpression()), !dbg !770
  %13 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #7, !dbg !771, !srcloc !519
  store i32 %13, ptr %4, align 4, !dbg !771
  %14 = load i32, ptr %4, align 4, !dbg !772
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #7, !dbg !773
  store i32 %14, ptr %7, align 4, !dbg !774
  %15 = load ptr, ptr %8, align 4, !dbg !775
  store ptr %15, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !524, metadata !DIExpression()), !dbg !776
  %16 = load ptr, ptr %3, align 4, !dbg !778
  %17 = load ptr, ptr %8, align 4, !dbg !779
  store ptr %17, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !533, metadata !DIExpression()), !dbg !780
  %18 = load ptr, ptr %2, align 4, !dbg !782
  %19 = load i32, ptr %7, align 4, !dbg !783
  %20 = getelementptr inbounds %struct.z_spinlock_key, ptr %11, i32 0, i32 0, !dbg !784
  store i32 %19, ptr %20, align 4, !dbg !784
  br label %21, !dbg !785

21:                                               ; preds = %29, %1
  br label %22, !dbg !785

22:                                               ; preds = %21
  %23 = load ptr, ptr %9, align 4, !dbg !786
  %24 = getelementptr inbounds %struct.k_sem, ptr %23, i32 0, i32 0, !dbg !788
  %25 = call ptr @z_unpend_first_thread(ptr noundef %24) #6, !dbg !789
  store ptr %25, ptr %10, align 4, !dbg !790
  %26 = load ptr, ptr %10, align 4, !dbg !791
  %27 = icmp eq ptr %26, null, !dbg !793
  br i1 %27, label %28, label %29, !dbg !794

28:                                               ; preds = %22
  br label %36, !dbg !795

29:                                               ; preds = %22
  %30 = load ptr, ptr %10, align 4, !dbg !797
  store ptr %30, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !558, metadata !DIExpression()), !dbg !798
  store i32 -11, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !564, metadata !DIExpression()), !dbg !800
  %31 = load i32, ptr %6, align 4, !dbg !801
  %32 = load ptr, ptr %5, align 4, !dbg !802
  %33 = getelementptr inbounds %struct.k_thread, ptr %32, i32 0, i32 6, !dbg !803
  %34 = getelementptr inbounds %struct._thread_arch, ptr %33, i32 0, i32 1, !dbg !804
  store i32 %31, ptr %34, align 4, !dbg !805
  %35 = load ptr, ptr %10, align 4, !dbg !806
  call void @z_ready_thread(ptr noundef %35) #6, !dbg !807
  br label %21, !dbg !785, !llvm.loop !808

36:                                               ; preds = %28
  %37 = load ptr, ptr %9, align 4, !dbg !810
  %38 = getelementptr inbounds %struct.k_sem, ptr %37, i32 0, i32 1, !dbg !811
  store i32 0, ptr %38, align 4, !dbg !812
  br label %39, !dbg !813

39:                                               ; preds = %36
  br label %40, !dbg !814

40:                                               ; preds = %39
  br label %41, !dbg !814

41:                                               ; preds = %40
  %42 = load ptr, ptr %9, align 4, !dbg !816
  %43 = call zeroext i1 @handle_poll_events(ptr noundef %42) #6, !dbg !817
  %44 = getelementptr inbounds %struct.z_spinlock_key, ptr %11, i32 0, i32 0, !dbg !818
  %45 = load [1 x i32], ptr %44, align 4, !dbg !818
  call void @z_reschedule(ptr noundef @lock, [1 x i32] %45) #6, !dbg !818
  call void @llvm.lifetime.end.p0(i64 4, ptr %11) #7, !dbg !819
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #7, !dbg !819
  ret void, !dbg !819
}

; Function Attrs: optsize
declare !dbg !820 dso_local i64 @z_timeout_expires(ptr noundef) #4

; Function Attrs: optsize
declare !dbg !825 dso_local i64 @z_timeout_remaining(ptr noundef) #4

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @sys_sflist_is_empty(ptr noundef %0) #0 !dbg !826 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !831, metadata !DIExpression()), !dbg !832
  %3 = load ptr, ptr %2, align 4, !dbg !833
  %4 = call ptr @sys_sflist_peek_head(ptr noundef %3) #6, !dbg !834
  %5 = icmp eq ptr %4, null, !dbg !835
  ret i1 %5, !dbg !836
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @sys_sflist_peek_head(ptr noundef %0) #0 !dbg !837 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !841, metadata !DIExpression()), !dbg !842
  %3 = load ptr, ptr %2, align 4, !dbg !843
  %4 = getelementptr inbounds %struct._sflist, ptr %3, i32 0, i32 0, !dbg !844
  %5 = load ptr, ptr %4, align 4, !dbg !844
  ret ptr %5, !dbg !845
}

; Function Attrs: inlinehint nounwind optsize
define internal void @sys_dlist_init(ptr noundef %0) #0 !dbg !846 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !851, metadata !DIExpression()), !dbg !852
  %3 = load ptr, ptr %2, align 4, !dbg !853
  %4 = load ptr, ptr %2, align 4, !dbg !854
  %5 = getelementptr inbounds %struct._dnode, ptr %4, i32 0, i32 0, !dbg !855
  store ptr %3, ptr %5, align 4, !dbg !856
  %6 = load ptr, ptr %2, align 4, !dbg !857
  %7 = load ptr, ptr %2, align 4, !dbg !858
  %8 = getelementptr inbounds %struct._dnode, ptr %7, i32 0, i32 1, !dbg !859
  store ptr %6, ptr %8, align 4, !dbg !860
  ret void, !dbg !861
}

attributes #0 = { inlinehint nounwind optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { optsize }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!113, !114, !115, !116, !117, !118}
!llvm.ident = !{!119}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "lock", scope: !2, file: !109, line: 39, type: !110, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !88, globals: !108, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "sem.c", directory: "/home/sri/zephyrproject/zephyr/build")
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
!88 = !{!89, !90, !91, !92}
!89 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!91 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 32)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dnode_t", file: !94, line: 55, baseType: !95)
!94 = !DIFile(filename: "include/zephyr/sys/dlist.h", directory: "/home/sri/zephyrproject/zephyr")
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_dnode", file: !94, line: 37, size: 64, elements: !96)
!96 = !{!97, !103}
!97 = !DIDerivedType(tag: DW_TAG_member, scope: !95, file: !94, line: 38, baseType: !98, size: 32)
!98 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !95, file: !94, line: 38, size: 32, elements: !99)
!99 = !{!100, !102}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !98, file: !94, line: 39, baseType: !101, size: 32)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 32)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !98, file: !94, line: 40, baseType: !101, size: 32)
!103 = !DIDerivedType(tag: DW_TAG_member, scope: !95, file: !94, line: 42, baseType: !104, size: 32, offset: 32)
!104 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !95, file: !94, line: 42, size: 32, elements: !105)
!105 = !{!106, !107}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !104, file: !94, line: 43, baseType: !101, size: 32)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !104, file: !94, line: 44, baseType: !101, size: 32)
!108 = !{!0}
!109 = !DIFile(filename: "kernel/sem.c", directory: "/home/sri/zephyrproject/zephyr")
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_spinlock", file: !111, line: 45, elements: !112)
!111 = !DIFile(filename: "include/zephyr/spinlock.h", directory: "/home/sri/zephyrproject/zephyr")
!112 = !{}
!113 = !{i32 7, !"Dwarf Version", i32 4}
!114 = !{i32 2, !"Debug Info Version", i32 3}
!115 = !{i32 1, !"wchar_size", i32 4}
!116 = !{i32 1, !"static_rwdata", i32 1}
!117 = !{i32 1, !"enumsize_buildattr", i32 1}
!118 = !{i32 1, !"armlib_unavailable", i32 0}
!119 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
!120 = distinct !DISubprogram(name: "z_impl_k_object_access_grant", scope: !6, file: !6, line: 223, type: !121, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !226)
!121 = !DISubroutineType(types: !122)
!122 = !{null, !123, !125}
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 32)
!124 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 32)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_thread", file: !127, line: 250, size: 896, elements: !128)
!127 = !DIFile(filename: "include/zephyr/kernel/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!128 = !{!129, !187, !200, !201, !202, !203, !221}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !126, file: !127, line: 252, baseType: !130, size: 384)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_base", file: !127, line: 58, size: 384, elements: !131)
!131 = !{!132, !145, !153, !156, !157, !170, !173, !174}
!132 = !DIDerivedType(tag: DW_TAG_member, scope: !130, file: !127, line: 61, baseType: !133, size: 64)
!133 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !130, file: !127, line: 61, size: 64, elements: !134)
!134 = !{!135, !136}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_dlist", scope: !133, file: !127, line: 62, baseType: !93, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_rb", scope: !133, file: !127, line: 63, baseType: !137, size: 64)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rbnode", file: !138, line: 58, size: 64, elements: !139)
!138 = !DIFile(filename: "include/zephyr/sys/rb.h", directory: "/home/sri/zephyrproject/zephyr")
!139 = !{!140}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !137, file: !138, line: 60, baseType: !141, size: 64)
!141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 64, elements: !143)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 32)
!143 = !{!144}
!144 = !DISubrange(count: 2)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "pended_on", scope: !130, file: !127, line: 69, baseType: !146, size: 32, offset: 64)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 32)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "_wait_q_t", file: !148, line: 243, baseType: !149)
!148 = !DIFile(filename: "include/zephyr/kernel_structs.h", directory: "/home/sri/zephyrproject/zephyr")
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !148, line: 241, size: 64, elements: !150)
!150 = !{!151}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !149, file: !148, line: 242, baseType: !152, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dlist_t", file: !94, line: 51, baseType: !95)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "user_options", scope: !130, file: !127, line: 72, baseType: !154, size: 8, offset: 96)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !155, line: 62, baseType: !7)
!155 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/stdint.h", directory: "")
!156 = !DIDerivedType(tag: DW_TAG_member, name: "thread_state", scope: !130, file: !127, line: 75, baseType: !154, size: 8, offset: 104)
!157 = !DIDerivedType(tag: DW_TAG_member, scope: !130, file: !127, line: 91, baseType: !158, size: 16, offset: 112)
!158 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !130, file: !127, line: 91, size: 16, elements: !159)
!159 = !{!160, !167}
!160 = !DIDerivedType(tag: DW_TAG_member, scope: !158, file: !127, line: 92, baseType: !161, size: 16)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !158, file: !127, line: 92, size: 16, elements: !162)
!162 = !{!163, !166}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !161, file: !127, line: 97, baseType: !164, size: 8)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !155, line: 56, baseType: !165)
!165 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "sched_locked", scope: !161, file: !127, line: 98, baseType: !154, size: 8, offset: 8)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "preempt", scope: !158, file: !127, line: 101, baseType: !168, size: 16)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !155, line: 63, baseType: !169)
!169 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "order_key", scope: !130, file: !127, line: 108, baseType: !171, size: 32, offset: 128)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !155, line: 64, baseType: !172)
!172 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "swap_data", scope: !130, file: !127, line: 132, baseType: !90, size: 32, offset: 160)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !130, file: !127, line: 136, baseType: !175, size: 192, offset: 192)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_timeout", file: !148, line: 254, size: 192, elements: !176)
!176 = !{!177, !178, !184}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !175, file: !148, line: 255, baseType: !93, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !175, file: !148, line: 256, baseType: !179, size: 32, offset: 64)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "_timeout_func_t", file: !148, line: 252, baseType: !180)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 32)
!181 = !DISubroutineType(types: !182)
!182 = !{null, !183}
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 32)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "dticks", scope: !175, file: !148, line: 259, baseType: !185, size: 64, offset: 128)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !155, line: 59, baseType: !186)
!186 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "callee_saved", scope: !126, file: !127, line: 255, baseType: !188, size: 288, offset: 384)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_callee_saved", file: !189, line: 25, size: 288, elements: !190)
!189 = !DIFile(filename: "include/zephyr/arch/arm/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!190 = !{!191, !192, !193, !194, !195, !196, !197, !198, !199}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "v1", scope: !188, file: !189, line: 26, baseType: !171, size: 32)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "v2", scope: !188, file: !189, line: 27, baseType: !171, size: 32, offset: 32)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "v3", scope: !188, file: !189, line: 28, baseType: !171, size: 32, offset: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "v4", scope: !188, file: !189, line: 29, baseType: !171, size: 32, offset: 96)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "v5", scope: !188, file: !189, line: 30, baseType: !171, size: 32, offset: 128)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "v6", scope: !188, file: !189, line: 31, baseType: !171, size: 32, offset: 160)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "v7", scope: !188, file: !189, line: 32, baseType: !171, size: 32, offset: 192)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "v8", scope: !188, file: !189, line: 33, baseType: !171, size: 32, offset: 224)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "psp", scope: !188, file: !189, line: 34, baseType: !171, size: 32, offset: 256)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "init_data", scope: !126, file: !127, line: 258, baseType: !90, size: 32, offset: 672)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "join_queue", scope: !126, file: !127, line: 261, baseType: !147, size: 64, offset: 704)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "errno_var", scope: !126, file: !127, line: 302, baseType: !91, size: 32, offset: 768)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "resource_pool", scope: !126, file: !127, line: 333, baseType: !204, size: 32, offset: 800)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 32)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_heap", file: !206, line: 5291, size: 160, elements: !207)
!206 = !DIFile(filename: "include/zephyr/kernel.h", directory: "/home/sri/zephyrproject/zephyr")
!207 = !{!208, !219, !220}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !205, file: !206, line: 5292, baseType: !209, size: 96)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sys_heap", file: !210, line: 56, size: 96, elements: !211)
!210 = !DIFile(filename: "include/zephyr/sys/sys_heap.h", directory: "/home/sri/zephyrproject/zephyr")
!211 = !{!212, !215, !216}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !209, file: !210, line: 57, baseType: !213, size: 32)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 32)
!214 = !DICompositeType(tag: DW_TAG_structure_type, name: "z_heap", file: !210, line: 57, flags: DIFlagFwdDecl)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "init_mem", scope: !209, file: !210, line: 58, baseType: !90, size: 32, offset: 32)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "init_bytes", scope: !209, file: !210, line: 59, baseType: !217, size: 32, offset: 64)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !218, line: 46, baseType: !172)
!218 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/lib/clang/17/include/stddef.h", directory: "")
!219 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !205, file: !206, line: 5293, baseType: !147, size: 64, offset: 96)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !205, file: !206, line: 5294, baseType: !110, offset: 160)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !126, file: !127, line: 355, baseType: !222, size: 64, offset: 832)
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_arch", file: !189, line: 60, size: 64, elements: !223)
!223 = !{!224, !225}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "basepri", scope: !222, file: !189, line: 63, baseType: !171, size: 32)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "swap_return_value", scope: !222, file: !189, line: 66, baseType: !171, size: 32, offset: 32)
!226 = !{!227, !228}
!227 = !DILocalVariable(name: "object", arg: 1, scope: !120, file: !6, line: 223, type: !123)
!228 = !DILocalVariable(name: "thread", arg: 2, scope: !120, file: !6, line: 224, type: !125)
!229 = !DILocation(line: 223, column: 61, scope: !120)
!230 = !DILocation(line: 224, column: 24, scope: !120)
!231 = !DILocation(line: 226, column: 9, scope: !120)
!232 = !DILocation(line: 227, column: 9, scope: !120)
!233 = !DILocation(line: 228, column: 1, scope: !120)
!234 = distinct !DISubprogram(name: "z_impl_k_object_release", scope: !6, file: !6, line: 243, type: !235, scopeLine: 244, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !237)
!235 = !DISubroutineType(types: !236)
!236 = !{null, !123}
!237 = !{!238}
!238 = !DILocalVariable(name: "object", arg: 1, scope: !234, file: !6, line: 243, type: !123)
!239 = !DILocation(line: 243, column: 56, scope: !234)
!240 = !DILocation(line: 245, column: 9, scope: !234)
!241 = !DILocation(line: 246, column: 1, scope: !234)
!242 = distinct !DISubprogram(name: "z_impl_k_object_alloc", scope: !6, file: !6, line: 359, type: !243, scopeLine: 360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !245)
!243 = !DISubroutineType(types: !244)
!244 = !{!90, !5}
!245 = !{!246}
!246 = !DILocalVariable(name: "otype", arg: 1, scope: !242, file: !6, line: 359, type: !5)
!247 = !DILocation(line: 359, column: 58, scope: !242)
!248 = !DILocation(line: 361, column: 9, scope: !242)
!249 = !DILocation(line: 363, column: 2, scope: !242)
!250 = distinct !DISubprogram(name: "z_impl_k_object_alloc_size", scope: !6, file: !6, line: 366, type: !251, scopeLine: 368, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !253)
!251 = !DISubroutineType(types: !252)
!252 = !{!90, !5, !217}
!253 = !{!254, !255}
!254 = !DILocalVariable(name: "otype", arg: 1, scope: !250, file: !6, line: 366, type: !5)
!255 = !DILocalVariable(name: "size", arg: 2, scope: !250, file: !6, line: 367, type: !217)
!256 = !DILocation(line: 366, column: 63, scope: !250)
!257 = !DILocation(line: 367, column: 13, scope: !250)
!258 = !DILocation(line: 369, column: 9, scope: !250)
!259 = !DILocation(line: 370, column: 9, scope: !250)
!260 = !DILocation(line: 372, column: 2, scope: !250)
!261 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_expires_ticks", scope: !206, file: !206, line: 656, type: !262, scopeLine: 658, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !268)
!262 = !DISubroutineType(types: !263)
!263 = !{!264, !266}
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_ticks_t", file: !265, line: 46, baseType: !185)
!265 = !DIFile(filename: "include/zephyr/sys_clock.h", directory: "/home/sri/zephyrproject/zephyr")
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 32)
!267 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !126)
!268 = !{!269}
!269 = !DILocalVariable(name: "t", arg: 1, scope: !261, file: !206, line: 657, type: !266)
!270 = !DILocation(line: 657, column: 30, scope: !261)
!271 = !DILocation(line: 659, column: 28, scope: !261)
!272 = !DILocation(line: 659, column: 31, scope: !261)
!273 = !DILocation(line: 659, column: 36, scope: !261)
!274 = !DILocation(line: 659, column: 9, scope: !261)
!275 = !DILocation(line: 659, column: 2, scope: !261)
!276 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_remaining_ticks", scope: !206, file: !206, line: 671, type: !262, scopeLine: 673, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !277)
!277 = !{!278}
!278 = !DILocalVariable(name: "t", arg: 1, scope: !276, file: !206, line: 672, type: !266)
!279 = !DILocation(line: 672, column: 30, scope: !276)
!280 = !DILocation(line: 674, column: 30, scope: !276)
!281 = !DILocation(line: 674, column: 33, scope: !276)
!282 = !DILocation(line: 674, column: 38, scope: !276)
!283 = !DILocation(line: 674, column: 9, scope: !276)
!284 = !DILocation(line: 674, column: 2, scope: !276)
!285 = distinct !DISubprogram(name: "z_impl_k_timer_expires_ticks", scope: !206, file: !206, line: 1634, type: !286, scopeLine: 1636, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !307)
!286 = !DISubroutineType(types: !287)
!287 = !{!264, !288}
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 32)
!289 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !290)
!290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_timer", file: !206, line: 1439, size: 448, elements: !291)
!291 = !{!292, !293, !294, !299, !300, !305, !306}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !290, file: !206, line: 1445, baseType: !175, size: 192)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !290, file: !206, line: 1448, baseType: !147, size: 64, offset: 192)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_fn", scope: !290, file: !206, line: 1451, baseType: !295, size: 32, offset: 256)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 32)
!296 = !DISubroutineType(types: !297)
!297 = !{null, !298}
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 32)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "stop_fn", scope: !290, file: !206, line: 1454, baseType: !295, size: 32, offset: 288)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !290, file: !206, line: 1457, baseType: !301, size: 64, offset: 320)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_timeout_t", file: !265, line: 67, baseType: !302)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !265, line: 65, size: 64, elements: !303)
!303 = !{!304}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "ticks", scope: !302, file: !265, line: 66, baseType: !264, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !290, file: !206, line: 1460, baseType: !171, size: 32, offset: 384)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !290, file: !206, line: 1463, baseType: !90, size: 32, offset: 416)
!307 = !{!308}
!308 = !DILocalVariable(name: "timer", arg: 1, scope: !285, file: !206, line: 1635, type: !288)
!309 = !DILocation(line: 1635, column: 34, scope: !285)
!310 = !DILocation(line: 1637, column: 28, scope: !285)
!311 = !DILocation(line: 1637, column: 35, scope: !285)
!312 = !DILocation(line: 1637, column: 9, scope: !285)
!313 = !DILocation(line: 1637, column: 2, scope: !285)
!314 = distinct !DISubprogram(name: "z_impl_k_timer_remaining_ticks", scope: !206, file: !206, line: 1649, type: !286, scopeLine: 1651, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !315)
!315 = !{!316}
!316 = !DILocalVariable(name: "timer", arg: 1, scope: !314, file: !206, line: 1650, type: !288)
!317 = !DILocation(line: 1650, column: 34, scope: !314)
!318 = !DILocation(line: 1652, column: 30, scope: !314)
!319 = !DILocation(line: 1652, column: 37, scope: !314)
!320 = !DILocation(line: 1652, column: 9, scope: !314)
!321 = !DILocation(line: 1652, column: 2, scope: !314)
!322 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_set", scope: !206, file: !206, line: 1689, type: !323, scopeLine: 1691, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !325)
!323 = !DISubroutineType(types: !324)
!324 = !{null, !298, !90}
!325 = !{!326, !327}
!326 = !DILocalVariable(name: "timer", arg: 1, scope: !322, file: !206, line: 1689, type: !298)
!327 = !DILocalVariable(name: "user_data", arg: 2, scope: !322, file: !206, line: 1690, type: !90)
!328 = !DILocation(line: 1689, column: 65, scope: !322)
!329 = !DILocation(line: 1690, column: 19, scope: !322)
!330 = !DILocation(line: 1692, column: 21, scope: !322)
!331 = !DILocation(line: 1692, column: 2, scope: !322)
!332 = !DILocation(line: 1692, column: 9, scope: !322)
!333 = !DILocation(line: 1692, column: 19, scope: !322)
!334 = !DILocation(line: 1693, column: 1, scope: !322)
!335 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_get", scope: !206, file: !206, line: 1704, type: !336, scopeLine: 1705, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !338)
!336 = !DISubroutineType(types: !337)
!337 = !{!90, !288}
!338 = !{!339}
!339 = !DILocalVariable(name: "timer", arg: 1, scope: !335, file: !206, line: 1704, type: !288)
!340 = !DILocation(line: 1704, column: 72, scope: !335)
!341 = !DILocation(line: 1706, column: 9, scope: !335)
!342 = !DILocation(line: 1706, column: 16, scope: !335)
!343 = !DILocation(line: 1706, column: 2, scope: !335)
!344 = distinct !DISubprogram(name: "z_impl_k_queue_is_empty", scope: !206, file: !206, line: 2071, type: !345, scopeLine: 2072, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !365)
!345 = !DISubroutineType(types: !346)
!346 = !{!91, !347}
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 32)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_queue", file: !206, line: 1830, size: 128, elements: !349)
!349 = !{!350, !363, !364}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "data_q", scope: !348, file: !206, line: 1831, baseType: !351, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sflist_t", file: !352, line: 60, baseType: !353)
!352 = !DIFile(filename: "include/zephyr/sys/sflist.h", directory: "/home/sri/zephyrproject/zephyr")
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sflist", file: !352, line: 53, size: 64, elements: !354)
!354 = !{!355, !362}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !353, file: !352, line: 54, baseType: !356, size: 32)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 32)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sfnode_t", file: !352, line: 50, baseType: !358)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sfnode", file: !352, line: 44, size: 32, elements: !359)
!359 = !{!360}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "next_and_flags", scope: !358, file: !352, line: 45, baseType: !361, size: 32)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "unative_t", file: !352, line: 40, baseType: !171)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !353, file: !352, line: 55, baseType: !356, size: 32, offset: 32)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !348, file: !206, line: 1832, baseType: !110, offset: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !348, file: !206, line: 1833, baseType: !147, size: 64, offset: 64)
!365 = !{!366}
!366 = !DILocalVariable(name: "queue", arg: 1, scope: !344, file: !206, line: 2071, type: !347)
!367 = !DILocation(line: 2071, column: 59, scope: !344)
!368 = !DILocation(line: 2073, column: 35, scope: !344)
!369 = !DILocation(line: 2073, column: 42, scope: !344)
!370 = !DILocation(line: 2073, column: 14, scope: !344)
!371 = !DILocation(line: 2073, column: 9, scope: !344)
!372 = !DILocation(line: 2073, column: 2, scope: !344)
!373 = distinct !DISubprogram(name: "z_impl_k_sem_count_get", scope: !206, file: !206, line: 3209, type: !374, scopeLine: 3210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !382)
!374 = !DISubroutineType(types: !375)
!375 = !{!172, !376}
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 32)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sem", file: !206, line: 3092, size: 128, elements: !378)
!378 = !{!379, !380, !381}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !377, file: !206, line: 3093, baseType: !147, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !377, file: !206, line: 3094, baseType: !172, size: 32, offset: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !377, file: !206, line: 3095, baseType: !172, size: 32, offset: 96)
!382 = !{!383}
!383 = !DILocalVariable(name: "sem", arg: 1, scope: !373, file: !206, line: 3209, type: !376)
!384 = !DILocation(line: 3209, column: 65, scope: !373)
!385 = !DILocation(line: 3211, column: 9, scope: !373)
!386 = !DILocation(line: 3211, column: 14, scope: !373)
!387 = !DILocation(line: 3211, column: 2, scope: !373)
!388 = distinct !DISubprogram(name: "z_impl_k_msgq_num_free_get", scope: !206, file: !206, line: 4649, type: !389, scopeLine: 4650, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !406)
!389 = !DISubroutineType(types: !390)
!390 = !{!171, !391}
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 32)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_msgq", file: !206, line: 4390, size: 320, elements: !393)
!393 = !{!394, !395, !396, !397, !398, !401, !402, !403, !404, !405}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !392, file: !206, line: 4392, baseType: !147, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !392, file: !206, line: 4394, baseType: !110, offset: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "msg_size", scope: !392, file: !206, line: 4396, baseType: !217, size: 32, offset: 64)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !392, file: !206, line: 4398, baseType: !171, size: 32, offset: 96)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_start", scope: !392, file: !206, line: 4400, baseType: !399, size: 32, offset: 128)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 32)
!400 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_end", scope: !392, file: !206, line: 4402, baseType: !399, size: 32, offset: 160)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "read_ptr", scope: !392, file: !206, line: 4404, baseType: !399, size: 32, offset: 192)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "write_ptr", scope: !392, file: !206, line: 4406, baseType: !399, size: 32, offset: 224)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "used_msgs", scope: !392, file: !206, line: 4408, baseType: !171, size: 32, offset: 256)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !392, file: !206, line: 4413, baseType: !154, size: 8, offset: 288)
!406 = !{!407}
!407 = !DILocalVariable(name: "msgq", arg: 1, scope: !388, file: !206, line: 4649, type: !391)
!408 = !DILocation(line: 4649, column: 66, scope: !388)
!409 = !DILocation(line: 4651, column: 9, scope: !388)
!410 = !DILocation(line: 4651, column: 15, scope: !388)
!411 = !DILocation(line: 4651, column: 26, scope: !388)
!412 = !DILocation(line: 4651, column: 32, scope: !388)
!413 = !DILocation(line: 4651, column: 24, scope: !388)
!414 = !DILocation(line: 4651, column: 2, scope: !388)
!415 = distinct !DISubprogram(name: "z_impl_k_msgq_num_used_get", scope: !206, file: !206, line: 4665, type: !389, scopeLine: 4666, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !416)
!416 = !{!417}
!417 = !DILocalVariable(name: "msgq", arg: 1, scope: !415, file: !206, line: 4665, type: !391)
!418 = !DILocation(line: 4665, column: 66, scope: !415)
!419 = !DILocation(line: 4667, column: 9, scope: !415)
!420 = !DILocation(line: 4667, column: 15, scope: !415)
!421 = !DILocation(line: 4667, column: 2, scope: !415)
!422 = distinct !DISubprogram(name: "z_impl_k_sem_init", scope: !109, file: !109, line: 45, type: !423, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !425)
!423 = !DISubroutineType(types: !424)
!424 = !{!91, !376, !172, !172}
!425 = !{!426, !427, !428}
!426 = !DILocalVariable(name: "sem", arg: 1, scope: !422, file: !109, line: 45, type: !376)
!427 = !DILocalVariable(name: "initial_count", arg: 2, scope: !422, file: !109, line: 45, type: !172)
!428 = !DILocalVariable(name: "limit", arg: 3, scope: !422, file: !109, line: 46, type: !172)
!429 = !DILocation(line: 45, column: 37, scope: !422)
!430 = !DILocation(line: 45, column: 55, scope: !422)
!431 = !DILocation(line: 46, column: 22, scope: !422)
!432 = !DILocation(line: 51, column: 6, scope: !433)
!433 = distinct !DILexicalBlock(scope: !422, file: !109, line: 51, column: 6)
!434 = !DILocation(line: 51, column: 12, scope: !433)
!435 = !DILocation(line: 51, column: 18, scope: !433)
!436 = !DILocation(line: 51, column: 21, scope: !433)
!437 = !DILocation(line: 51, column: 27, scope: !433)
!438 = !DILocation(line: 51, column: 50, scope: !433)
!439 = !DILocation(line: 51, column: 53, scope: !433)
!440 = !DILocation(line: 51, column: 69, scope: !433)
!441 = !DILocation(line: 51, column: 67, scope: !433)
!442 = !DILocation(line: 51, column: 6, scope: !422)
!443 = !DILocation(line: 52, column: 3, scope: !444)
!444 = distinct !DILexicalBlock(scope: !433, file: !109, line: 51, column: 76)
!445 = !DILocation(line: 52, column: 8, scope: !446)
!446 = distinct !DILexicalBlock(scope: !444, file: !109, line: 52, column: 6)
!447 = !DILocation(line: 54, column: 3, scope: !444)
!448 = !DILocation(line: 57, column: 15, scope: !422)
!449 = !DILocation(line: 57, column: 2, scope: !422)
!450 = !DILocation(line: 57, column: 7, scope: !422)
!451 = !DILocation(line: 57, column: 13, scope: !422)
!452 = !DILocation(line: 58, column: 15, scope: !422)
!453 = !DILocation(line: 58, column: 2, scope: !422)
!454 = !DILocation(line: 58, column: 7, scope: !422)
!455 = !DILocation(line: 58, column: 13, scope: !422)
!456 = !DILocation(line: 60, column: 2, scope: !422)
!457 = !DILocation(line: 60, column: 7, scope: !458)
!458 = distinct !DILexicalBlock(scope: !422, file: !109, line: 60, column: 5)
!459 = !DILocation(line: 62, column: 16, scope: !422)
!460 = !DILocation(line: 62, column: 21, scope: !422)
!461 = !DILocation(line: 62, column: 2, scope: !422)
!462 = !DILocation(line: 66, column: 16, scope: !422)
!463 = !DILocation(line: 66, column: 2, scope: !422)
!464 = !DILocation(line: 72, column: 2, scope: !422)
!465 = !DILocation(line: 73, column: 1, scope: !422)
!466 = distinct !DISubprogram(name: "z_waitq_init", scope: !467, file: !467, line: 47, type: !468, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !470)
!467 = !DIFile(filename: "kernel/include/wait_q.h", directory: "/home/sri/zephyrproject/zephyr")
!468 = !DISubroutineType(types: !469)
!469 = !{null, !146}
!470 = !{!471}
!471 = !DILocalVariable(name: "w", arg: 1, scope: !466, file: !467, line: 47, type: !146)
!472 = !DILocation(line: 47, column: 44, scope: !466)
!473 = !DILocation(line: 49, column: 18, scope: !466)
!474 = !DILocation(line: 49, column: 21, scope: !466)
!475 = !DILocation(line: 49, column: 2, scope: !466)
!476 = !DILocation(line: 50, column: 1, scope: !466)
!477 = distinct !DISubprogram(name: "z_object_init", scope: !6, file: !6, line: 215, type: !235, scopeLine: 216, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !478)
!478 = !{!479}
!479 = !DILocalVariable(name: "obj", arg: 1, scope: !477, file: !6, line: 215, type: !123)
!480 = !DILocation(line: 215, column: 46, scope: !477)
!481 = !DILocation(line: 217, column: 9, scope: !477)
!482 = !DILocation(line: 218, column: 1, scope: !477)
!483 = distinct !DISubprogram(name: "z_impl_k_sem_give", scope: !109, file: !109, line: 96, type: !484, scopeLine: 97, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !486)
!484 = !DISubroutineType(types: !485)
!485 = !{null, !376}
!486 = !{!487, !488, !493, !494}
!487 = !DILocalVariable(name: "sem", arg: 1, scope: !483, file: !109, line: 96, type: !376)
!488 = !DILocalVariable(name: "key", scope: !483, file: !109, line: 98, type: !489)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_spinlock_key_t", file: !111, line: 108, baseType: !490)
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "z_spinlock_key", file: !111, line: 34, size: 32, elements: !491)
!491 = !{!492}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !490, file: !111, line: 35, baseType: !91, size: 32)
!493 = !DILocalVariable(name: "thread", scope: !483, file: !109, line: 99, type: !125)
!494 = !DILocalVariable(name: "resched", scope: !483, file: !109, line: 100, type: !89)
!495 = !DILocation(line: 96, column: 38, scope: !483)
!496 = !DILocation(line: 98, column: 2, scope: !483)
!497 = !DILocation(line: 98, column: 19, scope: !483)
!498 = !DILocalVariable(name: "l", arg: 1, scope: !499, file: !111, line: 160, type: !502)
!499 = distinct !DISubprogram(name: "k_spin_lock", scope: !111, file: !111, line: 160, type: !500, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !503)
!500 = !DISubroutineType(types: !501)
!501 = !{!489, !502}
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 32)
!503 = !{!498, !504}
!504 = !DILocalVariable(name: "k", scope: !499, file: !111, line: 163, type: !489)
!505 = !DILocation(line: 160, column: 94, scope: !499, inlinedAt: !506)
!506 = distinct !DILocation(line: 98, column: 25, scope: !483)
!507 = !DILocation(line: 162, column: 9, scope: !499, inlinedAt: !506)
!508 = !DILocation(line: 163, column: 19, scope: !499, inlinedAt: !506)
!509 = !DILocation(line: 44, column: 2, scope: !510, inlinedAt: !516)
!510 = distinct !DISubprogram(name: "arch_irq_lock", scope: !511, file: !511, line: 42, type: !512, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !514)
!511 = !DIFile(filename: "include/zephyr/arch/arm/asm_inline_gcc.h", directory: "/home/sri/zephyrproject/zephyr")
!512 = !DISubroutineType(types: !513)
!513 = !{!172}
!514 = !{!515}
!515 = !DILocalVariable(name: "key", scope: !510, file: !511, line: 44, type: !172)
!516 = distinct !DILocation(line: 169, column: 10, scope: !499, inlinedAt: !506)
!517 = !DILocation(line: 44, column: 15, scope: !510, inlinedAt: !516)
!518 = !DILocation(line: 48, column: 2, scope: !510, inlinedAt: !516)
!519 = !{i64 66939}
!520 = !DILocation(line: 80, column: 9, scope: !510, inlinedAt: !516)
!521 = !DILocation(line: 81, column: 1, scope: !510, inlinedAt: !516)
!522 = !DILocation(line: 169, column: 8, scope: !499, inlinedAt: !506)
!523 = !DILocation(line: 171, column: 26, scope: !499, inlinedAt: !506)
!524 = !DILocalVariable(name: "l", arg: 1, scope: !525, file: !111, line: 110, type: !502)
!525 = distinct !DISubprogram(name: "z_spinlock_validate_pre", scope: !111, file: !111, line: 110, type: !526, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !528)
!526 = !DISubroutineType(types: !527)
!527 = !{null, !502}
!528 = !{!524}
!529 = !DILocation(line: 110, column: 94, scope: !525, inlinedAt: !530)
!530 = distinct !DILocation(line: 171, column: 2, scope: !499, inlinedAt: !506)
!531 = !DILocation(line: 112, column: 9, scope: !525, inlinedAt: !530)
!532 = !DILocation(line: 177, column: 27, scope: !499, inlinedAt: !506)
!533 = !DILocalVariable(name: "l", arg: 1, scope: !534, file: !111, line: 121, type: !502)
!534 = distinct !DISubprogram(name: "z_spinlock_validate_post", scope: !111, file: !111, line: 121, type: !526, scopeLine: 122, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !535)
!535 = !{!533}
!536 = !DILocation(line: 121, column: 95, scope: !534, inlinedAt: !537)
!537 = distinct !DILocation(line: 177, column: 2, scope: !499, inlinedAt: !506)
!538 = !DILocation(line: 123, column: 9, scope: !534, inlinedAt: !537)
!539 = !DILocation(line: 179, column: 2, scope: !499, inlinedAt: !506)
!540 = !DILocation(line: 98, column: 25, scope: !483)
!541 = !DILocation(line: 99, column: 2, scope: !483)
!542 = !DILocation(line: 99, column: 19, scope: !483)
!543 = !DILocation(line: 100, column: 2, scope: !483)
!544 = !DILocation(line: 100, column: 8, scope: !483)
!545 = !DILocation(line: 102, column: 2, scope: !483)
!546 = !DILocation(line: 102, column: 7, scope: !547)
!547 = distinct !DILexicalBlock(scope: !483, file: !109, line: 102, column: 5)
!548 = !DILocation(line: 104, column: 34, scope: !483)
!549 = !DILocation(line: 104, column: 39, scope: !483)
!550 = !DILocation(line: 104, column: 11, scope: !483)
!551 = !DILocation(line: 104, column: 9, scope: !483)
!552 = !DILocation(line: 106, column: 6, scope: !553)
!553 = distinct !DILexicalBlock(scope: !483, file: !109, line: 106, column: 6)
!554 = !DILocation(line: 106, column: 13, scope: !553)
!555 = !DILocation(line: 106, column: 6, scope: !483)
!556 = !DILocation(line: 107, column: 32, scope: !557)
!557 = distinct !DILexicalBlock(scope: !553, file: !109, line: 106, column: 19)
!558 = !DILocalVariable(name: "thread", arg: 1, scope: !559, file: !560, line: 59, type: !125)
!559 = distinct !DISubprogram(name: "arch_thread_return_value_set", scope: !560, file: !560, line: 59, type: !561, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !563)
!560 = !DIFile(filename: "arch/arm/include/cortex_m/kernel_arch_func.h", directory: "/home/sri/zephyrproject/zephyr")
!561 = !DISubroutineType(types: !562)
!562 = !{null, !125, !172}
!563 = !{!558, !564}
!564 = !DILocalVariable(name: "value", arg: 2, scope: !559, file: !560, line: 59, type: !172)
!565 = !DILocation(line: 59, column: 47, scope: !559, inlinedAt: !566)
!566 = distinct !DILocation(line: 107, column: 3, scope: !557)
!567 = !DILocation(line: 59, column: 68, scope: !559, inlinedAt: !566)
!568 = !DILocation(line: 61, column: 35, scope: !559, inlinedAt: !566)
!569 = !DILocation(line: 61, column: 2, scope: !559, inlinedAt: !566)
!570 = !DILocation(line: 61, column: 10, scope: !559, inlinedAt: !566)
!571 = !DILocation(line: 61, column: 15, scope: !559, inlinedAt: !566)
!572 = !DILocation(line: 61, column: 33, scope: !559, inlinedAt: !566)
!573 = !DILocation(line: 108, column: 18, scope: !557)
!574 = !DILocation(line: 108, column: 3, scope: !557)
!575 = !DILocation(line: 109, column: 2, scope: !557)
!576 = !DILocation(line: 110, column: 18, scope: !577)
!577 = distinct !DILexicalBlock(scope: !553, file: !109, line: 109, column: 9)
!578 = !DILocation(line: 110, column: 23, scope: !577)
!579 = !DILocation(line: 110, column: 32, scope: !577)
!580 = !DILocation(line: 110, column: 37, scope: !577)
!581 = !DILocation(line: 110, column: 29, scope: !577)
!582 = !DILocation(line: 110, column: 17, scope: !577)
!583 = !DILocation(line: 110, column: 3, scope: !577)
!584 = !DILocation(line: 110, column: 8, scope: !577)
!585 = !DILocation(line: 110, column: 14, scope: !577)
!586 = !DILocation(line: 111, column: 32, scope: !577)
!587 = !DILocation(line: 111, column: 13, scope: !577)
!588 = !DILocation(line: 111, column: 11, scope: !577)
!589 = !DILocation(line: 114, column: 6, scope: !590)
!590 = distinct !DILexicalBlock(scope: !483, file: !109, line: 114, column: 6)
!591 = !{i8 0, i8 2}
!592 = !DILocation(line: 114, column: 6, scope: !483)
!593 = !DILocation(line: 115, column: 3, scope: !594)
!594 = distinct !DILexicalBlock(scope: !590, file: !109, line: 114, column: 15)
!595 = !DILocation(line: 116, column: 2, scope: !594)
!596 = !DILocation(line: 117, column: 3, scope: !597)
!597 = distinct !DILexicalBlock(scope: !590, file: !109, line: 116, column: 9)
!598 = !DILocalVariable(name: "l", arg: 1, scope: !599, file: !111, line: 235, type: !502)
!599 = distinct !DISubprogram(name: "k_spin_unlock", scope: !111, file: !111, line: 235, type: !600, scopeLine: 237, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !602)
!600 = !DISubroutineType(types: !601)
!601 = !{null, !502, !489}
!602 = !{!598, !603}
!603 = !DILocalVariable(name: "key", arg: 2, scope: !599, file: !111, line: 236, type: !489)
!604 = !DILocation(line: 235, column: 84, scope: !599, inlinedAt: !605)
!605 = distinct !DILocation(line: 117, column: 3, scope: !597)
!606 = !DILocation(line: 236, column: 23, scope: !599, inlinedAt: !605)
!607 = !DILocation(line: 238, column: 9, scope: !599, inlinedAt: !605)
!608 = !DILocation(line: 261, column: 22, scope: !599, inlinedAt: !605)
!609 = !DILocalVariable(name: "key", arg: 1, scope: !610, file: !511, line: 88, type: !172)
!610 = distinct !DISubprogram(name: "arch_irq_unlock", scope: !511, file: !511, line: 88, type: !611, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !613)
!611 = !DISubroutineType(types: !612)
!612 = !{null, !172}
!613 = !{!609}
!614 = !DILocation(line: 88, column: 80, scope: !610, inlinedAt: !615)
!615 = distinct !DILocation(line: 261, column: 2, scope: !599, inlinedAt: !605)
!616 = !DILocation(line: 91, column: 6, scope: !617, inlinedAt: !615)
!617 = distinct !DILexicalBlock(scope: !610, file: !511, line: 91, column: 6)
!618 = !DILocation(line: 91, column: 10, scope: !617, inlinedAt: !615)
!619 = !DILocation(line: 91, column: 6, scope: !610, inlinedAt: !615)
!620 = !DILocation(line: 92, column: 3, scope: !621, inlinedAt: !615)
!621 = distinct !DILexicalBlock(scope: !617, file: !511, line: 91, column: 17)
!622 = !DILocation(line: 94, column: 2, scope: !610, inlinedAt: !615)
!623 = !{i64 67243}
!624 = !DILocation(line: 114, column: 1, scope: !610, inlinedAt: !615)
!625 = !DILocation(line: 120, column: 2, scope: !483)
!626 = !DILocation(line: 120, column: 7, scope: !627)
!627 = distinct !DILexicalBlock(scope: !483, file: !109, line: 120, column: 5)
!628 = !DILocation(line: 121, column: 1, scope: !483)
!629 = !DISubprogram(name: "z_unpend_first_thread", scope: !630, file: !630, line: 53, type: !631, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !112)
!630 = !DIFile(filename: "kernel/include/ksched.h", directory: "/home/sri/zephyrproject/zephyr")
!631 = !DISubroutineType(types: !632)
!632 = !{!125, !146}
!633 = !DISubprogram(name: "z_ready_thread", scope: !630, file: !630, line: 65, type: !634, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !112)
!634 = !DISubroutineType(types: !635)
!635 = !{null, !125}
!636 = distinct !DISubprogram(name: "handle_poll_events", scope: !109, file: !109, line: 85, type: !637, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !639)
!637 = !DISubroutineType(types: !638)
!638 = !{!89, !376}
!639 = !{!640}
!640 = !DILocalVariable(name: "sem", arg: 1, scope: !636, file: !109, line: 85, type: !376)
!641 = !DILocation(line: 85, column: 54, scope: !636)
!642 = !DILocation(line: 91, column: 9, scope: !636)
!643 = !DILocation(line: 92, column: 2, scope: !636)
!644 = !DISubprogram(name: "z_reschedule", scope: !630, file: !630, line: 51, type: !600, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !112)
!645 = distinct !DISubprogram(name: "z_impl_k_sem_take", scope: !109, file: !109, line: 132, type: !646, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !648)
!646 = !DISubroutineType(types: !647)
!647 = !{!91, !376, !301}
!648 = !{!649, !650, !651, !652, !653}
!649 = !DILocalVariable(name: "sem", arg: 1, scope: !645, file: !109, line: 132, type: !376)
!650 = !DILocalVariable(name: "timeout", arg: 2, scope: !645, file: !109, line: 132, type: !301)
!651 = !DILocalVariable(name: "ret", scope: !645, file: !109, line: 134, type: !91)
!652 = !DILocalVariable(name: "key", scope: !645, file: !109, line: 139, type: !489)
!653 = !DILabel(scope: !645, name: "out", file: !109, line: 160)
!654 = !DILocation(line: 132, column: 37, scope: !645)
!655 = !DILocation(line: 132, column: 54, scope: !645)
!656 = !DILocation(line: 134, column: 2, scope: !645)
!657 = !DILocation(line: 134, column: 6, scope: !645)
!658 = !DILocation(line: 139, column: 2, scope: !645)
!659 = !DILocation(line: 139, column: 19, scope: !645)
!660 = !DILocation(line: 160, column: 94, scope: !499, inlinedAt: !661)
!661 = distinct !DILocation(line: 139, column: 25, scope: !645)
!662 = !DILocation(line: 162, column: 9, scope: !499, inlinedAt: !661)
!663 = !DILocation(line: 163, column: 19, scope: !499, inlinedAt: !661)
!664 = !DILocation(line: 44, column: 2, scope: !510, inlinedAt: !665)
!665 = distinct !DILocation(line: 169, column: 10, scope: !499, inlinedAt: !661)
!666 = !DILocation(line: 44, column: 15, scope: !510, inlinedAt: !665)
!667 = !DILocation(line: 48, column: 2, scope: !510, inlinedAt: !665)
!668 = !DILocation(line: 80, column: 9, scope: !510, inlinedAt: !665)
!669 = !DILocation(line: 81, column: 1, scope: !510, inlinedAt: !665)
!670 = !DILocation(line: 169, column: 8, scope: !499, inlinedAt: !661)
!671 = !DILocation(line: 171, column: 26, scope: !499, inlinedAt: !661)
!672 = !DILocation(line: 110, column: 94, scope: !525, inlinedAt: !673)
!673 = distinct !DILocation(line: 171, column: 2, scope: !499, inlinedAt: !661)
!674 = !DILocation(line: 112, column: 9, scope: !525, inlinedAt: !673)
!675 = !DILocation(line: 177, column: 27, scope: !499, inlinedAt: !661)
!676 = !DILocation(line: 121, column: 95, scope: !534, inlinedAt: !677)
!677 = distinct !DILocation(line: 177, column: 2, scope: !499, inlinedAt: !661)
!678 = !DILocation(line: 123, column: 9, scope: !534, inlinedAt: !677)
!679 = !DILocation(line: 179, column: 2, scope: !499, inlinedAt: !661)
!680 = !DILocation(line: 139, column: 25, scope: !645)
!681 = !DILocation(line: 141, column: 2, scope: !645)
!682 = !DILocation(line: 141, column: 7, scope: !683)
!683 = distinct !DILexicalBlock(scope: !645, file: !109, line: 141, column: 5)
!684 = !DILocation(line: 143, column: 34, scope: !685)
!685 = distinct !DILexicalBlock(scope: !645, file: !109, line: 143, column: 6)
!686 = !DILocation(line: 143, column: 39, scope: !685)
!687 = !DILocation(line: 143, column: 45, scope: !685)
!688 = !DILocation(line: 143, column: 32, scope: !685)
!689 = !DILocation(line: 143, column: 31, scope: !685)
!690 = !DILocation(line: 143, column: 24, scope: !685)
!691 = !DILocation(line: 143, column: 7, scope: !685)
!692 = !DILocation(line: 143, column: 55, scope: !685)
!693 = !DILocation(line: 143, column: 6, scope: !645)
!694 = !DILocation(line: 144, column: 3, scope: !695)
!695 = distinct !DILexicalBlock(scope: !685, file: !109, line: 143, column: 63)
!696 = !DILocation(line: 144, column: 8, scope: !695)
!697 = !DILocation(line: 144, column: 13, scope: !695)
!698 = !DILocation(line: 145, column: 3, scope: !695)
!699 = !DILocation(line: 235, column: 84, scope: !599, inlinedAt: !700)
!700 = distinct !DILocation(line: 145, column: 3, scope: !695)
!701 = !DILocation(line: 236, column: 23, scope: !599, inlinedAt: !700)
!702 = !DILocation(line: 238, column: 9, scope: !599, inlinedAt: !700)
!703 = !DILocation(line: 261, column: 22, scope: !599, inlinedAt: !700)
!704 = !DILocation(line: 88, column: 80, scope: !610, inlinedAt: !705)
!705 = distinct !DILocation(line: 261, column: 2, scope: !599, inlinedAt: !700)
!706 = !DILocation(line: 91, column: 6, scope: !617, inlinedAt: !705)
!707 = !DILocation(line: 91, column: 10, scope: !617, inlinedAt: !705)
!708 = !DILocation(line: 91, column: 6, scope: !610, inlinedAt: !705)
!709 = !DILocation(line: 92, column: 3, scope: !621, inlinedAt: !705)
!710 = !DILocation(line: 94, column: 2, scope: !610, inlinedAt: !705)
!711 = !DILocation(line: 114, column: 1, scope: !610, inlinedAt: !705)
!712 = !DILocation(line: 146, column: 7, scope: !695)
!713 = !DILocation(line: 147, column: 3, scope: !695)
!714 = !DILocation(line: 150, column: 17, scope: !715)
!715 = distinct !DILexicalBlock(scope: !645, file: !109, line: 150, column: 6)
!716 = !DILocation(line: 150, column: 42, scope: !715)
!717 = !DILocation(line: 150, column: 23, scope: !715)
!718 = !DILocation(line: 150, column: 6, scope: !645)
!719 = !DILocation(line: 151, column: 3, scope: !720)
!720 = distinct !DILexicalBlock(scope: !715, file: !109, line: 150, column: 56)
!721 = !DILocation(line: 235, column: 84, scope: !599, inlinedAt: !722)
!722 = distinct !DILocation(line: 151, column: 3, scope: !720)
!723 = !DILocation(line: 236, column: 23, scope: !599, inlinedAt: !722)
!724 = !DILocation(line: 238, column: 9, scope: !599, inlinedAt: !722)
!725 = !DILocation(line: 261, column: 22, scope: !599, inlinedAt: !722)
!726 = !DILocation(line: 88, column: 80, scope: !610, inlinedAt: !727)
!727 = distinct !DILocation(line: 261, column: 2, scope: !599, inlinedAt: !722)
!728 = !DILocation(line: 91, column: 6, scope: !617, inlinedAt: !727)
!729 = !DILocation(line: 91, column: 10, scope: !617, inlinedAt: !727)
!730 = !DILocation(line: 91, column: 6, scope: !610, inlinedAt: !727)
!731 = !DILocation(line: 92, column: 3, scope: !621, inlinedAt: !727)
!732 = !DILocation(line: 94, column: 2, scope: !610, inlinedAt: !727)
!733 = !DILocation(line: 114, column: 1, scope: !610, inlinedAt: !727)
!734 = !DILocation(line: 152, column: 7, scope: !720)
!735 = !DILocation(line: 153, column: 3, scope: !720)
!736 = !DILocation(line: 156, column: 2, scope: !645)
!737 = !DILocation(line: 156, column: 7, scope: !738)
!738 = distinct !DILexicalBlock(scope: !645, file: !109, line: 156, column: 5)
!739 = !DILocation(line: 158, column: 33, scope: !645)
!740 = !DILocation(line: 158, column: 38, scope: !645)
!741 = !DILocation(line: 158, column: 8, scope: !645)
!742 = !DILocation(line: 158, column: 6, scope: !645)
!743 = !DILocation(line: 158, column: 2, scope: !645)
!744 = !DILocation(line: 160, column: 1, scope: !645)
!745 = !DILocation(line: 161, column: 2, scope: !645)
!746 = !DILocation(line: 161, column: 7, scope: !747)
!747 = distinct !DILexicalBlock(scope: !645, file: !109, line: 161, column: 5)
!748 = !DILocation(line: 163, column: 9, scope: !645)
!749 = !DILocation(line: 164, column: 1, scope: !645)
!750 = !DILocation(line: 163, column: 2, scope: !645)
!751 = !DISubprogram(name: "z_pend_curr", scope: !630, file: !630, line: 46, type: !752, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !112)
!752 = !DISubroutineType(types: !753)
!753 = !{!91, !502, !489, !146, !301}
!754 = distinct !DISubprogram(name: "z_impl_k_sem_reset", scope: !109, file: !109, line: 166, type: !484, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !755)
!755 = !{!756, !757, !758}
!756 = !DILocalVariable(name: "sem", arg: 1, scope: !754, file: !109, line: 166, type: !376)
!757 = !DILocalVariable(name: "thread", scope: !754, file: !109, line: 168, type: !125)
!758 = !DILocalVariable(name: "key", scope: !754, file: !109, line: 169, type: !489)
!759 = !DILocation(line: 166, column: 39, scope: !754)
!760 = !DILocation(line: 168, column: 2, scope: !754)
!761 = !DILocation(line: 168, column: 19, scope: !754)
!762 = !DILocation(line: 169, column: 2, scope: !754)
!763 = !DILocation(line: 169, column: 19, scope: !754)
!764 = !DILocation(line: 160, column: 94, scope: !499, inlinedAt: !765)
!765 = distinct !DILocation(line: 169, column: 25, scope: !754)
!766 = !DILocation(line: 162, column: 9, scope: !499, inlinedAt: !765)
!767 = !DILocation(line: 163, column: 19, scope: !499, inlinedAt: !765)
!768 = !DILocation(line: 44, column: 2, scope: !510, inlinedAt: !769)
!769 = distinct !DILocation(line: 169, column: 10, scope: !499, inlinedAt: !765)
!770 = !DILocation(line: 44, column: 15, scope: !510, inlinedAt: !769)
!771 = !DILocation(line: 48, column: 2, scope: !510, inlinedAt: !769)
!772 = !DILocation(line: 80, column: 9, scope: !510, inlinedAt: !769)
!773 = !DILocation(line: 81, column: 1, scope: !510, inlinedAt: !769)
!774 = !DILocation(line: 169, column: 8, scope: !499, inlinedAt: !765)
!775 = !DILocation(line: 171, column: 26, scope: !499, inlinedAt: !765)
!776 = !DILocation(line: 110, column: 94, scope: !525, inlinedAt: !777)
!777 = distinct !DILocation(line: 171, column: 2, scope: !499, inlinedAt: !765)
!778 = !DILocation(line: 112, column: 9, scope: !525, inlinedAt: !777)
!779 = !DILocation(line: 177, column: 27, scope: !499, inlinedAt: !765)
!780 = !DILocation(line: 121, column: 95, scope: !534, inlinedAt: !781)
!781 = distinct !DILocation(line: 177, column: 2, scope: !499, inlinedAt: !765)
!782 = !DILocation(line: 123, column: 9, scope: !534, inlinedAt: !781)
!783 = !DILocation(line: 179, column: 2, scope: !499, inlinedAt: !765)
!784 = !DILocation(line: 169, column: 25, scope: !754)
!785 = !DILocation(line: 171, column: 2, scope: !754)
!786 = !DILocation(line: 172, column: 35, scope: !787)
!787 = distinct !DILexicalBlock(scope: !754, file: !109, line: 171, column: 12)
!788 = !DILocation(line: 172, column: 40, scope: !787)
!789 = !DILocation(line: 172, column: 12, scope: !787)
!790 = !DILocation(line: 172, column: 10, scope: !787)
!791 = !DILocation(line: 173, column: 7, scope: !792)
!792 = distinct !DILexicalBlock(scope: !787, file: !109, line: 173, column: 7)
!793 = !DILocation(line: 173, column: 14, scope: !792)
!794 = !DILocation(line: 173, column: 7, scope: !787)
!795 = !DILocation(line: 174, column: 4, scope: !796)
!796 = distinct !DILexicalBlock(scope: !792, file: !109, line: 173, column: 20)
!797 = !DILocation(line: 176, column: 32, scope: !787)
!798 = !DILocation(line: 59, column: 47, scope: !559, inlinedAt: !799)
!799 = distinct !DILocation(line: 176, column: 3, scope: !787)
!800 = !DILocation(line: 59, column: 68, scope: !559, inlinedAt: !799)
!801 = !DILocation(line: 61, column: 35, scope: !559, inlinedAt: !799)
!802 = !DILocation(line: 61, column: 2, scope: !559, inlinedAt: !799)
!803 = !DILocation(line: 61, column: 10, scope: !559, inlinedAt: !799)
!804 = !DILocation(line: 61, column: 15, scope: !559, inlinedAt: !799)
!805 = !DILocation(line: 61, column: 33, scope: !559, inlinedAt: !799)
!806 = !DILocation(line: 177, column: 18, scope: !787)
!807 = !DILocation(line: 177, column: 3, scope: !787)
!808 = distinct !{!808, !785, !809}
!809 = !DILocation(line: 178, column: 2, scope: !754)
!810 = !DILocation(line: 179, column: 2, scope: !754)
!811 = !DILocation(line: 179, column: 7, scope: !754)
!812 = !DILocation(line: 179, column: 13, scope: !754)
!813 = !DILocation(line: 181, column: 2, scope: !754)
!814 = !DILocation(line: 181, column: 7, scope: !815)
!815 = distinct !DILexicalBlock(scope: !754, file: !109, line: 181, column: 5)
!816 = !DILocation(line: 183, column: 21, scope: !754)
!817 = !DILocation(line: 183, column: 2, scope: !754)
!818 = !DILocation(line: 185, column: 2, scope: !754)
!819 = !DILocation(line: 186, column: 1, scope: !754)
!820 = !DISubprogram(name: "z_timeout_expires", scope: !206, file: !206, line: 642, type: !821, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !112)
!821 = !DISubroutineType(types: !822)
!822 = !{!264, !823}
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 32)
!824 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !175)
!825 = !DISubprogram(name: "z_timeout_remaining", scope: !206, file: !206, line: 643, type: !821, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !112)
!826 = distinct !DISubprogram(name: "sys_sflist_is_empty", scope: !352, file: !352, line: 335, type: !827, scopeLine: 335, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !830)
!827 = !DISubroutineType(types: !828)
!828 = !{!89, !829}
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 32)
!830 = !{!831}
!831 = !DILocalVariable(name: "list", arg: 1, scope: !826, file: !352, line: 335, type: !829)
!832 = !DILocation(line: 335, column: 55, scope: !826)
!833 = !DILocation(line: 335, column: 92, scope: !826)
!834 = !DILocation(line: 335, column: 71, scope: !826)
!835 = !DILocation(line: 335, column: 98, scope: !826)
!836 = !DILocation(line: 335, column: 63, scope: !826)
!837 = distinct !DISubprogram(name: "sys_sflist_peek_head", scope: !352, file: !352, line: 255, type: !838, scopeLine: 256, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !840)
!838 = !DISubroutineType(types: !839)
!839 = !{!356, !829}
!840 = !{!841}
!841 = !DILocalVariable(name: "list", arg: 1, scope: !837, file: !352, line: 255, type: !829)
!842 = !DILocation(line: 255, column: 64, scope: !837)
!843 = !DILocation(line: 257, column: 9, scope: !837)
!844 = !DILocation(line: 257, column: 15, scope: !837)
!845 = !DILocation(line: 257, column: 2, scope: !837)
!846 = distinct !DISubprogram(name: "sys_dlist_init", scope: !94, file: !94, line: 203, type: !847, scopeLine: 204, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !850)
!847 = !DISubroutineType(types: !848)
!848 = !{null, !849}
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 32)
!850 = !{!851}
!851 = !DILocalVariable(name: "list", arg: 1, scope: !846, file: !94, line: 203, type: !849)
!852 = !DILocation(line: 203, column: 48, scope: !846)
!853 = !DILocation(line: 205, column: 30, scope: !846)
!854 = !DILocation(line: 205, column: 2, scope: !846)
!855 = !DILocation(line: 205, column: 8, scope: !846)
!856 = !DILocation(line: 205, column: 13, scope: !846)
!857 = !DILocation(line: 206, column: 30, scope: !846)
!858 = !DILocation(line: 206, column: 2, scope: !846)
!859 = !DILocation(line: 206, column: 8, scope: !846)
!860 = !DILocation(line: 206, column: 13, scope: !846)
!861 = !DILocation(line: 207, column: 1, scope: !846)
