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

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_k_object_access_grant(ptr noundef %0, ptr noundef %1) #0 !dbg !122 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !228, metadata !DIExpression()), !dbg !229
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !230, metadata !DIExpression()), !dbg !231
  %5 = load ptr, ptr %3, align 4, !dbg !232
  %6 = load ptr, ptr %4, align 4, !dbg !233
  ret void, !dbg !234
}

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_k_object_release(ptr noundef %0) #0 !dbg !235 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !238, metadata !DIExpression()), !dbg !239
  %3 = load ptr, ptr %2, align 4, !dbg !240
  ret void, !dbg !241
}

; Function Attrs: noinline nounwind optnone
define internal ptr @z_impl_k_object_alloc(i8 noundef zeroext %0) #0 !dbg !242 {
  %2 = alloca i8, align 1
  store i8 %0, ptr %2, align 1
  call void @llvm.dbg.declare(metadata ptr %2, metadata !245, metadata !DIExpression()), !dbg !246
  %3 = load i8, ptr %2, align 1, !dbg !247
  ret ptr null, !dbg !248
}

; Function Attrs: noinline nounwind optnone
define internal ptr @z_impl_k_object_alloc_size(i8 noundef zeroext %0, i32 noundef %1) #0 !dbg !249 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8 %0, ptr %3, align 1
  call void @llvm.dbg.declare(metadata ptr %3, metadata !252, metadata !DIExpression()), !dbg !253
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !254, metadata !DIExpression()), !dbg !255
  %5 = load i8, ptr %3, align 1, !dbg !256
  %6 = load i32, ptr %4, align 4, !dbg !257
  ret ptr null, !dbg !258
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_thread_timeout_expires_ticks(ptr noundef %0) #0 !dbg !259 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !266, metadata !DIExpression()), !dbg !267
  %3 = load ptr, ptr %2, align 4, !dbg !268
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !269
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !270
  %6 = call i64 @z_timeout_expires(ptr noundef %5), !dbg !271
  ret i64 %6, !dbg !272
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_thread_timeout_remaining_ticks(ptr noundef %0) #0 !dbg !273 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !274, metadata !DIExpression()), !dbg !275
  %3 = load ptr, ptr %2, align 4, !dbg !276
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !277
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !278
  %6 = call i64 @z_timeout_remaining(ptr noundef %5), !dbg !279
  ret i64 %6, !dbg !280
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_timer_expires_ticks(ptr noundef %0) #0 !dbg !281 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !303, metadata !DIExpression()), !dbg !304
  %3 = load ptr, ptr %2, align 4, !dbg !305
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !306
  %5 = call i64 @z_timeout_expires(ptr noundef %4), !dbg !307
  ret i64 %5, !dbg !308
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_timer_remaining_ticks(ptr noundef %0) #0 !dbg !309 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !310, metadata !DIExpression()), !dbg !311
  %3 = load ptr, ptr %2, align 4, !dbg !312
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !313
  %5 = call i64 @z_timeout_remaining(ptr noundef %4), !dbg !314
  ret i64 %5, !dbg !315
}

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_k_timer_user_data_set(ptr noundef %0, ptr noundef %1) #0 !dbg !316 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !319, metadata !DIExpression()), !dbg !320
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !321, metadata !DIExpression()), !dbg !322
  %5 = load ptr, ptr %4, align 4, !dbg !323
  %6 = load ptr, ptr %3, align 4, !dbg !324
  %7 = getelementptr inbounds %struct.k_timer, ptr %6, i32 0, i32 6, !dbg !325
  store ptr %5, ptr %7, align 4, !dbg !326
  ret void, !dbg !327
}

; Function Attrs: noinline nounwind optnone
define internal ptr @z_impl_k_timer_user_data_get(ptr noundef %0) #0 !dbg !328 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !331, metadata !DIExpression()), !dbg !332
  %3 = load ptr, ptr %2, align 4, !dbg !333
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 6, !dbg !334
  %5 = load ptr, ptr %4, align 4, !dbg !334
  ret ptr %5, !dbg !335
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_queue_is_empty(ptr noundef %0) #0 !dbg !336 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !357, metadata !DIExpression()), !dbg !358
  %3 = load ptr, ptr %2, align 4, !dbg !359
  %4 = getelementptr inbounds %struct.k_queue, ptr %3, i32 0, i32 0, !dbg !360
  %5 = call zeroext i1 @sys_sflist_is_empty(ptr noundef %4), !dbg !361
  %6 = zext i1 %5 to i32, !dbg !362
  ret i32 %6, !dbg !363
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_sem_count_get(ptr noundef %0) #0 !dbg !364 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !373, metadata !DIExpression()), !dbg !374
  %3 = load ptr, ptr %2, align 4, !dbg !375
  %4 = getelementptr inbounds %struct.k_sem, ptr %3, i32 0, i32 1, !dbg !376
  %5 = load i32, ptr %4, align 4, !dbg !376
  ret i32 %5, !dbg !377
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_msgq_num_free_get(ptr noundef %0) #0 !dbg !378 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !396, metadata !DIExpression()), !dbg !397
  %3 = load ptr, ptr %2, align 4, !dbg !398
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 3, !dbg !399
  %5 = load i32, ptr %4, align 4, !dbg !399
  %6 = load ptr, ptr %2, align 4, !dbg !400
  %7 = getelementptr inbounds %struct.k_msgq, ptr %6, i32 0, i32 8, !dbg !401
  %8 = load i32, ptr %7, align 4, !dbg !401
  %9 = sub i32 %5, %8, !dbg !402
  ret i32 %9, !dbg !403
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_msgq_num_used_get(ptr noundef %0) #0 !dbg !404 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !405, metadata !DIExpression()), !dbg !406
  %3 = load ptr, ptr %2, align 4, !dbg !407
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 8, !dbg !408
  %5 = load i32, ptr %4, align 4, !dbg !408
  ret i32 %5, !dbg !409
}

; Function Attrs: noinline nounwind optnone
define hidden i32 @z_impl_k_sem_init(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 !dbg !410 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store ptr %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !413, metadata !DIExpression()), !dbg !414
  store i32 %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !415, metadata !DIExpression()), !dbg !416
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !417, metadata !DIExpression()), !dbg !418
  %8 = load i32, ptr %7, align 4, !dbg !419
  %9 = icmp eq i32 %8, 0, !dbg !421
  br i1 %9, label %17, label %10, !dbg !422

10:                                               ; preds = %3
  %11 = load i32, ptr %7, align 4, !dbg !423
  %12 = icmp ugt i32 %11, -1, !dbg !424
  br i1 %12, label %17, label %13, !dbg !425

13:                                               ; preds = %10
  %14 = load i32, ptr %6, align 4, !dbg !426
  %15 = load i32, ptr %7, align 4, !dbg !427
  %16 = icmp ugt i32 %14, %15, !dbg !428
  br i1 %16, label %17, label %20, !dbg !429

17:                                               ; preds = %13, %10, %3
  br label %18, !dbg !430

18:                                               ; preds = %17
  br label %19, !dbg !432

19:                                               ; preds = %18
  store i32 -5, ptr %4, align 4, !dbg !434
  br label %32, !dbg !434

20:                                               ; preds = %13
  %21 = load i32, ptr %6, align 4, !dbg !435
  %22 = load ptr, ptr %5, align 4, !dbg !436
  %23 = getelementptr inbounds %struct.k_sem, ptr %22, i32 0, i32 1, !dbg !437
  store i32 %21, ptr %23, align 4, !dbg !438
  %24 = load i32, ptr %7, align 4, !dbg !439
  %25 = load ptr, ptr %5, align 4, !dbg !440
  %26 = getelementptr inbounds %struct.k_sem, ptr %25, i32 0, i32 2, !dbg !441
  store i32 %24, ptr %26, align 4, !dbg !442
  br label %27, !dbg !443

27:                                               ; preds = %20
  br label %28, !dbg !444

28:                                               ; preds = %27
  %29 = load ptr, ptr %5, align 4, !dbg !446
  %30 = getelementptr inbounds %struct.k_sem, ptr %29, i32 0, i32 0, !dbg !447
  call void @z_waitq_init(ptr noundef %30), !dbg !448
  %31 = load ptr, ptr %5, align 4, !dbg !449
  call void @z_object_init(ptr noundef %31), !dbg !450
  store i32 0, ptr %4, align 4, !dbg !451
  br label %32, !dbg !451

32:                                               ; preds = %28, %19
  %33 = load i32, ptr %4, align 4, !dbg !452
  ret i32 %33, !dbg !452
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone
define internal void @z_waitq_init(ptr noundef %0) #0 !dbg !453 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !457, metadata !DIExpression()), !dbg !458
  %3 = load ptr, ptr %2, align 4, !dbg !459
  %4 = getelementptr inbounds %struct._wait_q_t, ptr %3, i32 0, i32 0, !dbg !460
  call void @sys_dlist_init(ptr noundef %4), !dbg !461
  ret void, !dbg !462
}

; Function Attrs: noinline nounwind optnone
define internal void @z_object_init(ptr noundef %0) #0 !dbg !463 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !464, metadata !DIExpression()), !dbg !465
  %3 = load ptr, ptr %2, align 4, !dbg !466
  ret void, !dbg !467
}

; Function Attrs: noinline nounwind optnone
define hidden void @z_impl_k_sem_give(ptr noundef %0) #0 !dbg !468 {
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
  call void @llvm.dbg.declare(metadata ptr %12, metadata !471, metadata !DIExpression()), !dbg !472
  call void @llvm.dbg.declare(metadata ptr %13, metadata !473, metadata !DIExpression()), !dbg !478
  store ptr @lock, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !479, metadata !DIExpression()), !dbg !484
  %16 = load ptr, ptr %11, align 4, !dbg !486
  call void @llvm.dbg.declare(metadata ptr %10, metadata !487, metadata !DIExpression()), !dbg !488
  call void @llvm.dbg.declare(metadata ptr %5, metadata !489, metadata !DIExpression()), !dbg !494
  %17 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #3, !dbg !496, !srcloc !497
  store i32 %17, ptr %5, align 4, !dbg !496
  %18 = load i32, ptr %5, align 4, !dbg !498
  store i32 %18, ptr %10, align 4, !dbg !499
  %19 = load ptr, ptr %11, align 4, !dbg !500
  store ptr %19, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !501, metadata !DIExpression()), !dbg !505
  %20 = load ptr, ptr %4, align 4, !dbg !507
  %21 = load ptr, ptr %11, align 4, !dbg !508
  store ptr %21, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !509, metadata !DIExpression()), !dbg !511
  %22 = load ptr, ptr %3, align 4, !dbg !513
  %23 = load i32, ptr %10, align 4, !dbg !514
  %24 = getelementptr inbounds %struct.z_spinlock_key, ptr %13, i32 0, i32 0, !dbg !515
  store i32 %23, ptr %24, align 4, !dbg !515
  call void @llvm.dbg.declare(metadata ptr %14, metadata !516, metadata !DIExpression()), !dbg !517
  call void @llvm.dbg.declare(metadata ptr %15, metadata !518, metadata !DIExpression()), !dbg !519
  store i8 1, ptr %15, align 1, !dbg !519
  br label %25, !dbg !520

25:                                               ; preds = %1
  br label %26, !dbg !521

26:                                               ; preds = %25
  %27 = load ptr, ptr %12, align 4, !dbg !523
  %28 = getelementptr inbounds %struct.k_sem, ptr %27, i32 0, i32 0, !dbg !524
  %29 = call ptr @z_unpend_first_thread(ptr noundef %28), !dbg !525
  store ptr %29, ptr %14, align 4, !dbg !526
  %30 = load ptr, ptr %14, align 4, !dbg !527
  %31 = icmp ne ptr %30, null, !dbg !529
  br i1 %31, label %32, label %39, !dbg !530

32:                                               ; preds = %26
  %33 = load ptr, ptr %14, align 4, !dbg !531
  store ptr %33, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !533, metadata !DIExpression()), !dbg !538
  store i32 0, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !540, metadata !DIExpression()), !dbg !541
  %34 = load i32, ptr %9, align 4, !dbg !542
  %35 = load ptr, ptr %8, align 4, !dbg !543
  %36 = getelementptr inbounds %struct.k_thread, ptr %35, i32 0, i32 6, !dbg !544
  %37 = getelementptr inbounds %struct._thread_arch, ptr %36, i32 0, i32 1, !dbg !545
  store i32 %34, ptr %37, align 4, !dbg !546
  %38 = load ptr, ptr %14, align 4, !dbg !547
  call void @z_ready_thread(ptr noundef %38), !dbg !548
  br label %56, !dbg !549

39:                                               ; preds = %26
  %40 = load ptr, ptr %12, align 4, !dbg !550
  %41 = getelementptr inbounds %struct.k_sem, ptr %40, i32 0, i32 1, !dbg !552
  %42 = load i32, ptr %41, align 4, !dbg !552
  %43 = load ptr, ptr %12, align 4, !dbg !553
  %44 = getelementptr inbounds %struct.k_sem, ptr %43, i32 0, i32 2, !dbg !554
  %45 = load i32, ptr %44, align 4, !dbg !554
  %46 = icmp ne i32 %42, %45, !dbg !555
  %47 = zext i1 %46 to i64, !dbg !556
  %48 = select i1 %46, i32 1, i32 0, !dbg !556
  %49 = load ptr, ptr %12, align 4, !dbg !557
  %50 = getelementptr inbounds %struct.k_sem, ptr %49, i32 0, i32 1, !dbg !558
  %51 = load i32, ptr %50, align 4, !dbg !559
  %52 = add i32 %51, %48, !dbg !559
  store i32 %52, ptr %50, align 4, !dbg !559
  %53 = load ptr, ptr %12, align 4, !dbg !560
  %54 = call zeroext i1 @handle_poll_events(ptr noundef %53), !dbg !561
  %55 = zext i1 %54 to i8, !dbg !562
  store i8 %55, ptr %15, align 1, !dbg !562
  br label %56

56:                                               ; preds = %39, %32
  %57 = load i8, ptr %15, align 1, !dbg !563
  %58 = trunc i8 %57 to i1, !dbg !563
  br i1 %58, label %59, label %62, !dbg !565

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.z_spinlock_key, ptr %13, i32 0, i32 0, !dbg !566
  %61 = load [1 x i32], ptr %60, align 4, !dbg !566
  call void @z_reschedule(ptr noundef @lock, [1 x i32] %61), !dbg !566
  br label %71, !dbg !568

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.z_spinlock_key, ptr %13, i32 0, i32 0, !dbg !569
  %64 = load [1 x i32], ptr %63, align 4, !dbg !569
  store [1 x i32] %64, ptr %6, align 4
  store ptr @lock, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !571, metadata !DIExpression()), !dbg !575
  call void @llvm.dbg.declare(metadata ptr %6, metadata !577, metadata !DIExpression()), !dbg !578
  %65 = load ptr, ptr %7, align 4, !dbg !579
  %66 = load i32, ptr %6, align 4, !dbg !580
  store i32 %66, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !581, metadata !DIExpression()), !dbg !585
  %67 = load i32, ptr %2, align 4, !dbg !587
  %68 = icmp ne i32 %67, 0, !dbg !589
  br i1 %68, label %69, label %70, !dbg !590

69:                                               ; preds = %62
  br label %arch_irq_unlock.exit, !dbg !591

70:                                               ; preds = %62
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #3, !dbg !593, !srcloc !594
  br label %arch_irq_unlock.exit, !dbg !595

arch_irq_unlock.exit:                             ; preds = %69, %70
  br label %71

71:                                               ; preds = %arch_irq_unlock.exit, %59
  br label %72, !dbg !596

72:                                               ; preds = %71
  br label %73, !dbg !597

73:                                               ; preds = %72
  ret void, !dbg !599
}

declare ptr @z_unpend_first_thread(ptr noundef) #2

declare void @z_ready_thread(ptr noundef) #2

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @handle_poll_events(ptr noundef %0) #0 !dbg !600 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !603, metadata !DIExpression()), !dbg !604
  %3 = load ptr, ptr %2, align 4, !dbg !605
  ret i1 false, !dbg !606
}

declare void @z_reschedule(ptr noundef, [1 x i32]) #2

; Function Attrs: noinline nounwind optnone
define hidden i32 @z_impl_k_sem_take(ptr noundef %0, [1 x i64] %1) #0 !dbg !607 {
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
  call void @llvm.dbg.declare(metadata ptr %15, metadata !610, metadata !DIExpression()), !dbg !611
  call void @llvm.dbg.declare(metadata ptr %14, metadata !612, metadata !DIExpression()), !dbg !613
  call void @llvm.dbg.declare(metadata ptr %16, metadata !614, metadata !DIExpression()), !dbg !615
  store i32 0, ptr %16, align 4, !dbg !615
  call void @llvm.dbg.declare(metadata ptr %17, metadata !616, metadata !DIExpression()), !dbg !617
  store ptr @lock, ptr %13, align 4
  call void @llvm.dbg.declare(metadata ptr %13, metadata !479, metadata !DIExpression()), !dbg !618
  %20 = load ptr, ptr %13, align 4, !dbg !620
  call void @llvm.dbg.declare(metadata ptr %12, metadata !487, metadata !DIExpression()), !dbg !621
  call void @llvm.dbg.declare(metadata ptr %7, metadata !489, metadata !DIExpression()), !dbg !622
  %21 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #3, !dbg !624, !srcloc !497
  store i32 %21, ptr %7, align 4, !dbg !624
  %22 = load i32, ptr %7, align 4, !dbg !625
  store i32 %22, ptr %12, align 4, !dbg !626
  %23 = load ptr, ptr %13, align 4, !dbg !627
  store ptr %23, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !501, metadata !DIExpression()), !dbg !628
  %24 = load ptr, ptr %6, align 4, !dbg !630
  %25 = load ptr, ptr %13, align 4, !dbg !631
  store ptr %25, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !509, metadata !DIExpression()), !dbg !632
  %26 = load ptr, ptr %5, align 4, !dbg !634
  %27 = load i32, ptr %12, align 4, !dbg !635
  %28 = getelementptr inbounds %struct.z_spinlock_key, ptr %17, i32 0, i32 0, !dbg !636
  store i32 %27, ptr %28, align 4, !dbg !636
  br label %29, !dbg !637

29:                                               ; preds = %2
  br label %30, !dbg !638

30:                                               ; preds = %29
  %31 = load ptr, ptr %15, align 4, !dbg !640
  %32 = getelementptr inbounds %struct.k_sem, ptr %31, i32 0, i32 1, !dbg !642
  %33 = load i32, ptr %32, align 4, !dbg !642
  %34 = icmp ugt i32 %33, 0, !dbg !643
  %35 = xor i1 %34, true, !dbg !644
  %36 = xor i1 %35, true, !dbg !645
  %37 = zext i1 %36 to i32, !dbg !646
  %38 = icmp ne i32 %37, 0, !dbg !647
  br i1 %38, label %39, label %52, !dbg !648

39:                                               ; preds = %30
  %40 = load ptr, ptr %15, align 4, !dbg !649
  %41 = getelementptr inbounds %struct.k_sem, ptr %40, i32 0, i32 1, !dbg !651
  %42 = load i32, ptr %41, align 4, !dbg !652
  %43 = add i32 %42, -1, !dbg !652
  store i32 %43, ptr %41, align 4, !dbg !652
  %44 = getelementptr inbounds %struct.z_spinlock_key, ptr %17, i32 0, i32 0, !dbg !653
  %45 = load [1 x i32], ptr %44, align 4, !dbg !653
  store [1 x i32] %45, ptr %8, align 4
  store ptr @lock, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !571, metadata !DIExpression()), !dbg !654
  call void @llvm.dbg.declare(metadata ptr %8, metadata !577, metadata !DIExpression()), !dbg !656
  %46 = load ptr, ptr %9, align 4, !dbg !657
  %47 = load i32, ptr %8, align 4, !dbg !658
  store i32 %47, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !581, metadata !DIExpression()), !dbg !659
  %48 = load i32, ptr %4, align 4, !dbg !661
  %49 = icmp ne i32 %48, 0, !dbg !662
  br i1 %49, label %50, label %51, !dbg !663

50:                                               ; preds = %39
  br label %arch_irq_unlock.exit, !dbg !664

51:                                               ; preds = %39
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #3, !dbg !665, !srcloc !594
  br label %arch_irq_unlock.exit, !dbg !666

arch_irq_unlock.exit:                             ; preds = %50, %51
  store i32 0, ptr %16, align 4, !dbg !667
  br label %76, !dbg !668

52:                                               ; preds = %30
  %53 = getelementptr inbounds %struct.k_timeout_t, ptr %14, i32 0, i32 0, !dbg !669
  %54 = load i64, ptr %53, align 8, !dbg !669
  %55 = getelementptr inbounds %struct.k_timeout_t, ptr %18, i32 0, i32 0, !dbg !671
  store i64 0, ptr %55, align 8, !dbg !671
  %56 = icmp eq i64 %54, 0, !dbg !672
  br i1 %56, label %57, label %66, !dbg !673

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.z_spinlock_key, ptr %17, i32 0, i32 0, !dbg !674
  %59 = load [1 x i32], ptr %58, align 4, !dbg !674
  store [1 x i32] %59, ptr %10, align 4
  store ptr @lock, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !571, metadata !DIExpression()), !dbg !676
  call void @llvm.dbg.declare(metadata ptr %10, metadata !577, metadata !DIExpression()), !dbg !678
  %60 = load ptr, ptr %11, align 4, !dbg !679
  %61 = load i32, ptr %10, align 4, !dbg !680
  store i32 %61, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !581, metadata !DIExpression()), !dbg !681
  %62 = load i32, ptr %3, align 4, !dbg !683
  %63 = icmp ne i32 %62, 0, !dbg !684
  br i1 %63, label %64, label %65, !dbg !685

64:                                               ; preds = %57
  br label %arch_irq_unlock.exit1, !dbg !686

65:                                               ; preds = %57
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #3, !dbg !687, !srcloc !594
  br label %arch_irq_unlock.exit1, !dbg !688

arch_irq_unlock.exit1:                            ; preds = %64, %65
  store i32 -16, ptr %16, align 4, !dbg !689
  br label %76, !dbg !690

66:                                               ; preds = %52
  br label %67, !dbg !691

67:                                               ; preds = %66
  br label %68, !dbg !692

68:                                               ; preds = %67
  %69 = load ptr, ptr %15, align 4, !dbg !694
  %70 = getelementptr inbounds %struct.k_sem, ptr %69, i32 0, i32 0, !dbg !695
  %71 = getelementptr inbounds %struct.z_spinlock_key, ptr %17, i32 0, i32 0, !dbg !696
  %72 = load [1 x i32], ptr %71, align 4, !dbg !696
  %73 = getelementptr inbounds %struct.k_timeout_t, ptr %14, i32 0, i32 0, !dbg !696
  %74 = load [1 x i64], ptr %73, align 8, !dbg !696
  %75 = call i32 @z_pend_curr(ptr noundef @lock, [1 x i32] %72, ptr noundef %70, [1 x i64] %74), !dbg !696
  store i32 %75, ptr %16, align 4, !dbg !697
  br label %76, !dbg !698

76:                                               ; preds = %68, %arch_irq_unlock.exit1, %arch_irq_unlock.exit
  call void @llvm.dbg.label(metadata !699), !dbg !700
  br label %77, !dbg !701

77:                                               ; preds = %76
  br label %78, !dbg !702

78:                                               ; preds = %77
  %79 = load i32, ptr %16, align 4, !dbg !704
  ret i32 %79, !dbg !705
}

declare i32 @z_pend_curr(ptr noundef, [1 x i32], ptr noundef, [1 x i64]) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline nounwind optnone
define hidden void @z_impl_k_sem_reset(ptr noundef %0) #0 !dbg !706 {
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
  call void @llvm.dbg.declare(metadata ptr %9, metadata !707, metadata !DIExpression()), !dbg !708
  call void @llvm.dbg.declare(metadata ptr %10, metadata !709, metadata !DIExpression()), !dbg !710
  call void @llvm.dbg.declare(metadata ptr %11, metadata !711, metadata !DIExpression()), !dbg !712
  store ptr @lock, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !479, metadata !DIExpression()), !dbg !713
  %12 = load ptr, ptr %8, align 4, !dbg !715
  call void @llvm.dbg.declare(metadata ptr %7, metadata !487, metadata !DIExpression()), !dbg !716
  call void @llvm.dbg.declare(metadata ptr %4, metadata !489, metadata !DIExpression()), !dbg !717
  %13 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #3, !dbg !719, !srcloc !497
  store i32 %13, ptr %4, align 4, !dbg !719
  %14 = load i32, ptr %4, align 4, !dbg !720
  store i32 %14, ptr %7, align 4, !dbg !721
  %15 = load ptr, ptr %8, align 4, !dbg !722
  store ptr %15, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !501, metadata !DIExpression()), !dbg !723
  %16 = load ptr, ptr %3, align 4, !dbg !725
  %17 = load ptr, ptr %8, align 4, !dbg !726
  store ptr %17, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !509, metadata !DIExpression()), !dbg !727
  %18 = load ptr, ptr %2, align 4, !dbg !729
  %19 = load i32, ptr %7, align 4, !dbg !730
  %20 = getelementptr inbounds %struct.z_spinlock_key, ptr %11, i32 0, i32 0, !dbg !731
  store i32 %19, ptr %20, align 4, !dbg !731
  br label %21, !dbg !732

21:                                               ; preds = %1, %28
  %22 = load ptr, ptr %9, align 4, !dbg !733
  %23 = getelementptr inbounds %struct.k_sem, ptr %22, i32 0, i32 0, !dbg !735
  %24 = call ptr @z_unpend_first_thread(ptr noundef %23), !dbg !736
  store ptr %24, ptr %10, align 4, !dbg !737
  %25 = load ptr, ptr %10, align 4, !dbg !738
  %26 = icmp eq ptr %25, null, !dbg !740
  br i1 %26, label %27, label %28, !dbg !741

27:                                               ; preds = %21
  br label %35, !dbg !742

28:                                               ; preds = %21
  %29 = load ptr, ptr %10, align 4, !dbg !744
  store ptr %29, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !533, metadata !DIExpression()), !dbg !745
  store i32 -11, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !540, metadata !DIExpression()), !dbg !747
  %30 = load i32, ptr %6, align 4, !dbg !748
  %31 = load ptr, ptr %5, align 4, !dbg !749
  %32 = getelementptr inbounds %struct.k_thread, ptr %31, i32 0, i32 6, !dbg !750
  %33 = getelementptr inbounds %struct._thread_arch, ptr %32, i32 0, i32 1, !dbg !751
  store i32 %30, ptr %33, align 4, !dbg !752
  %34 = load ptr, ptr %10, align 4, !dbg !753
  call void @z_ready_thread(ptr noundef %34), !dbg !754
  br label %21, !dbg !732, !llvm.loop !755

35:                                               ; preds = %27
  %36 = load ptr, ptr %9, align 4, !dbg !757
  %37 = getelementptr inbounds %struct.k_sem, ptr %36, i32 0, i32 1, !dbg !758
  store i32 0, ptr %37, align 4, !dbg !759
  br label %38, !dbg !760

38:                                               ; preds = %35
  br label %39, !dbg !761

39:                                               ; preds = %38
  %40 = load ptr, ptr %9, align 4, !dbg !763
  %41 = call zeroext i1 @handle_poll_events(ptr noundef %40), !dbg !764
  %42 = getelementptr inbounds %struct.z_spinlock_key, ptr %11, i32 0, i32 0, !dbg !765
  %43 = load [1 x i32], ptr %42, align 4, !dbg !765
  call void @z_reschedule(ptr noundef @lock, [1 x i32] %43), !dbg !765
  ret void, !dbg !766
}

declare i64 @z_timeout_expires(ptr noundef) #2

declare i64 @z_timeout_remaining(ptr noundef) #2

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @sys_sflist_is_empty(ptr noundef %0) #0 !dbg !767 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !771, metadata !DIExpression()), !dbg !772
  %3 = load ptr, ptr %2, align 4, !dbg !773
  %4 = call ptr @sys_sflist_peek_head(ptr noundef %3), !dbg !774
  %5 = icmp eq ptr %4, null, !dbg !775
  ret i1 %5, !dbg !776
}

; Function Attrs: noinline nounwind optnone
define internal ptr @sys_sflist_peek_head(ptr noundef %0) #0 !dbg !777 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !780, metadata !DIExpression()), !dbg !781
  %3 = load ptr, ptr %2, align 4, !dbg !782
  %4 = getelementptr inbounds %struct._sflist, ptr %3, i32 0, i32 0, !dbg !783
  %5 = load ptr, ptr %4, align 4, !dbg !783
  ret ptr %5, !dbg !784
}

; Function Attrs: noinline nounwind optnone
define internal void @sys_dlist_init(ptr noundef %0) #0 !dbg !785 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !789, metadata !DIExpression()), !dbg !790
  %3 = load ptr, ptr %2, align 4, !dbg !791
  %4 = load ptr, ptr %2, align 4, !dbg !792
  %5 = getelementptr inbounds %struct._dnode, ptr %4, i32 0, i32 0, !dbg !793
  store ptr %3, ptr %5, align 4, !dbg !794
  %6 = load ptr, ptr %2, align 4, !dbg !795
  %7 = load ptr, ptr %2, align 4, !dbg !796
  %8 = getelementptr inbounds %struct._dnode, ptr %7, i32 0, i32 1, !dbg !797
  store ptr %6, ptr %8, align 4, !dbg !798
  ret void, !dbg !799
}

attributes #0 = { noinline nounwind optnone "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!113, !114, !115, !116, !117, !118, !119, !120}
!llvm.ident = !{!121}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "lock", scope: !2, file: !109, line: 39, type: !110, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !88, globals: !108, splitDebugInlining: false, nameTableKind: None)
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
!119 = !{i32 8, !"PIC Level", i32 2}
!120 = !{i32 7, !"PIE Level", i32 2}
!121 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
!122 = distinct !DISubprogram(name: "z_impl_k_object_access_grant", scope: !6, file: !6, line: 223, type: !123, scopeLine: 225, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !112)
!123 = !DISubroutineType(types: !124)
!124 = !{null, !125, !127}
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 32)
!126 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 32)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_thread", file: !129, line: 250, size: 896, elements: !130)
!129 = !DIFile(filename: "include/zephyr/kernel/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!130 = !{!131, !189, !202, !203, !204, !205, !223}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !128, file: !129, line: 252, baseType: !132, size: 384)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_base", file: !129, line: 58, size: 384, elements: !133)
!133 = !{!134, !147, !155, !158, !159, !172, !175, !176}
!134 = !DIDerivedType(tag: DW_TAG_member, scope: !132, file: !129, line: 61, baseType: !135, size: 64)
!135 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !132, file: !129, line: 61, size: 64, elements: !136)
!136 = !{!137, !138}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_dlist", scope: !135, file: !129, line: 62, baseType: !93, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_rb", scope: !135, file: !129, line: 63, baseType: !139, size: 64)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rbnode", file: !140, line: 58, size: 64, elements: !141)
!140 = !DIFile(filename: "include/zephyr/sys/rb.h", directory: "/home/sri/zephyrproject/zephyr")
!141 = !{!142}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !139, file: !140, line: 60, baseType: !143, size: 64)
!143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 64, elements: !145)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 32)
!145 = !{!146}
!146 = !DISubrange(count: 2)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "pended_on", scope: !132, file: !129, line: 69, baseType: !148, size: 32, offset: 64)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 32)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "_wait_q_t", file: !150, line: 243, baseType: !151)
!150 = !DIFile(filename: "include/zephyr/kernel_structs.h", directory: "/home/sri/zephyrproject/zephyr")
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !150, line: 241, size: 64, elements: !152)
!152 = !{!153}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !151, file: !150, line: 242, baseType: !154, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dlist_t", file: !94, line: 51, baseType: !95)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "user_options", scope: !132, file: !129, line: 72, baseType: !156, size: 8, offset: 96)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !157, line: 62, baseType: !7)
!157 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/stdint.h", directory: "")
!158 = !DIDerivedType(tag: DW_TAG_member, name: "thread_state", scope: !132, file: !129, line: 75, baseType: !156, size: 8, offset: 104)
!159 = !DIDerivedType(tag: DW_TAG_member, scope: !132, file: !129, line: 91, baseType: !160, size: 16, offset: 112)
!160 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !132, file: !129, line: 91, size: 16, elements: !161)
!161 = !{!162, !169}
!162 = !DIDerivedType(tag: DW_TAG_member, scope: !160, file: !129, line: 92, baseType: !163, size: 16)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !160, file: !129, line: 92, size: 16, elements: !164)
!164 = !{!165, !168}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !163, file: !129, line: 97, baseType: !166, size: 8)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !157, line: 56, baseType: !167)
!167 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "sched_locked", scope: !163, file: !129, line: 98, baseType: !156, size: 8, offset: 8)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "preempt", scope: !160, file: !129, line: 101, baseType: !170, size: 16)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !157, line: 63, baseType: !171)
!171 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "order_key", scope: !132, file: !129, line: 108, baseType: !173, size: 32, offset: 128)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !157, line: 64, baseType: !174)
!174 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "swap_data", scope: !132, file: !129, line: 132, baseType: !90, size: 32, offset: 160)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !132, file: !129, line: 136, baseType: !177, size: 192, offset: 192)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_timeout", file: !150, line: 254, size: 192, elements: !178)
!178 = !{!179, !180, !186}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !177, file: !150, line: 255, baseType: !93, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !177, file: !150, line: 256, baseType: !181, size: 32, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "_timeout_func_t", file: !150, line: 252, baseType: !182)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 32)
!183 = !DISubroutineType(types: !184)
!184 = !{null, !185}
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 32)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "dticks", scope: !177, file: !150, line: 259, baseType: !187, size: 64, offset: 128)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !157, line: 59, baseType: !188)
!188 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "callee_saved", scope: !128, file: !129, line: 255, baseType: !190, size: 288, offset: 384)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_callee_saved", file: !191, line: 25, size: 288, elements: !192)
!191 = !DIFile(filename: "include/zephyr/arch/arm/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!192 = !{!193, !194, !195, !196, !197, !198, !199, !200, !201}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "v1", scope: !190, file: !191, line: 26, baseType: !173, size: 32)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "v2", scope: !190, file: !191, line: 27, baseType: !173, size: 32, offset: 32)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "v3", scope: !190, file: !191, line: 28, baseType: !173, size: 32, offset: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "v4", scope: !190, file: !191, line: 29, baseType: !173, size: 32, offset: 96)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "v5", scope: !190, file: !191, line: 30, baseType: !173, size: 32, offset: 128)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "v6", scope: !190, file: !191, line: 31, baseType: !173, size: 32, offset: 160)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "v7", scope: !190, file: !191, line: 32, baseType: !173, size: 32, offset: 192)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "v8", scope: !190, file: !191, line: 33, baseType: !173, size: 32, offset: 224)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "psp", scope: !190, file: !191, line: 34, baseType: !173, size: 32, offset: 256)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "init_data", scope: !128, file: !129, line: 258, baseType: !90, size: 32, offset: 672)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "join_queue", scope: !128, file: !129, line: 261, baseType: !149, size: 64, offset: 704)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "errno_var", scope: !128, file: !129, line: 302, baseType: !91, size: 32, offset: 768)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "resource_pool", scope: !128, file: !129, line: 333, baseType: !206, size: 32, offset: 800)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 32)
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_heap", file: !208, line: 5291, size: 160, elements: !209)
!208 = !DIFile(filename: "include/zephyr/kernel.h", directory: "/home/sri/zephyrproject/zephyr")
!209 = !{!210, !221, !222}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !207, file: !208, line: 5292, baseType: !211, size: 96)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sys_heap", file: !212, line: 56, size: 96, elements: !213)
!212 = !DIFile(filename: "include/zephyr/sys/sys_heap.h", directory: "/home/sri/zephyrproject/zephyr")
!213 = !{!214, !217, !218}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !211, file: !212, line: 57, baseType: !215, size: 32)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 32)
!216 = !DICompositeType(tag: DW_TAG_structure_type, name: "z_heap", file: !212, line: 57, flags: DIFlagFwdDecl)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "init_mem", scope: !211, file: !212, line: 58, baseType: !90, size: 32, offset: 32)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "init_bytes", scope: !211, file: !212, line: 59, baseType: !219, size: 32, offset: 64)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !220, line: 46, baseType: !174)
!220 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/lib/clang/17/include/stddef.h", directory: "")
!221 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !207, file: !208, line: 5293, baseType: !149, size: 64, offset: 96)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !207, file: !208, line: 5294, baseType: !110, offset: 160)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !128, file: !129, line: 355, baseType: !224, size: 64, offset: 832)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_arch", file: !191, line: 60, size: 64, elements: !225)
!225 = !{!226, !227}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "basepri", scope: !224, file: !191, line: 63, baseType: !173, size: 32)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "swap_return_value", scope: !224, file: !191, line: 66, baseType: !173, size: 32, offset: 32)
!228 = !DILocalVariable(name: "object", arg: 1, scope: !122, file: !6, line: 223, type: !125)
!229 = !DILocation(line: 223, column: 61, scope: !122)
!230 = !DILocalVariable(name: "thread", arg: 2, scope: !122, file: !6, line: 224, type: !127)
!231 = !DILocation(line: 224, column: 24, scope: !122)
!232 = !DILocation(line: 226, column: 9, scope: !122)
!233 = !DILocation(line: 227, column: 9, scope: !122)
!234 = !DILocation(line: 228, column: 1, scope: !122)
!235 = distinct !DISubprogram(name: "z_impl_k_object_release", scope: !6, file: !6, line: 243, type: !236, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !112)
!236 = !DISubroutineType(types: !237)
!237 = !{null, !125}
!238 = !DILocalVariable(name: "object", arg: 1, scope: !235, file: !6, line: 243, type: !125)
!239 = !DILocation(line: 243, column: 56, scope: !235)
!240 = !DILocation(line: 245, column: 9, scope: !235)
!241 = !DILocation(line: 246, column: 1, scope: !235)
!242 = distinct !DISubprogram(name: "z_impl_k_object_alloc", scope: !6, file: !6, line: 359, type: !243, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !112)
!243 = !DISubroutineType(types: !244)
!244 = !{!90, !5}
!245 = !DILocalVariable(name: "otype", arg: 1, scope: !242, file: !6, line: 359, type: !5)
!246 = !DILocation(line: 359, column: 58, scope: !242)
!247 = !DILocation(line: 361, column: 9, scope: !242)
!248 = !DILocation(line: 363, column: 2, scope: !242)
!249 = distinct !DISubprogram(name: "z_impl_k_object_alloc_size", scope: !6, file: !6, line: 366, type: !250, scopeLine: 368, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !112)
!250 = !DISubroutineType(types: !251)
!251 = !{!90, !5, !219}
!252 = !DILocalVariable(name: "otype", arg: 1, scope: !249, file: !6, line: 366, type: !5)
!253 = !DILocation(line: 366, column: 63, scope: !249)
!254 = !DILocalVariable(name: "size", arg: 2, scope: !249, file: !6, line: 367, type: !219)
!255 = !DILocation(line: 367, column: 13, scope: !249)
!256 = !DILocation(line: 369, column: 9, scope: !249)
!257 = !DILocation(line: 370, column: 9, scope: !249)
!258 = !DILocation(line: 372, column: 2, scope: !249)
!259 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_expires_ticks", scope: !208, file: !208, line: 656, type: !260, scopeLine: 658, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !112)
!260 = !DISubroutineType(types: !261)
!261 = !{!262, !264}
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_ticks_t", file: !263, line: 46, baseType: !187)
!263 = !DIFile(filename: "include/zephyr/sys_clock.h", directory: "/home/sri/zephyrproject/zephyr")
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 32)
!265 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !128)
!266 = !DILocalVariable(name: "t", arg: 1, scope: !259, file: !208, line: 657, type: !264)
!267 = !DILocation(line: 657, column: 30, scope: !259)
!268 = !DILocation(line: 659, column: 28, scope: !259)
!269 = !DILocation(line: 659, column: 31, scope: !259)
!270 = !DILocation(line: 659, column: 36, scope: !259)
!271 = !DILocation(line: 659, column: 9, scope: !259)
!272 = !DILocation(line: 659, column: 2, scope: !259)
!273 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_remaining_ticks", scope: !208, file: !208, line: 671, type: !260, scopeLine: 673, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !112)
!274 = !DILocalVariable(name: "t", arg: 1, scope: !273, file: !208, line: 672, type: !264)
!275 = !DILocation(line: 672, column: 30, scope: !273)
!276 = !DILocation(line: 674, column: 30, scope: !273)
!277 = !DILocation(line: 674, column: 33, scope: !273)
!278 = !DILocation(line: 674, column: 38, scope: !273)
!279 = !DILocation(line: 674, column: 9, scope: !273)
!280 = !DILocation(line: 674, column: 2, scope: !273)
!281 = distinct !DISubprogram(name: "z_impl_k_timer_expires_ticks", scope: !208, file: !208, line: 1634, type: !282, scopeLine: 1636, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !112)
!282 = !DISubroutineType(types: !283)
!283 = !{!262, !284}
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 32)
!285 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !286)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_timer", file: !208, line: 1439, size: 448, elements: !287)
!287 = !{!288, !289, !290, !295, !296, !301, !302}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !286, file: !208, line: 1445, baseType: !177, size: 192)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !286, file: !208, line: 1448, baseType: !149, size: 64, offset: 192)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_fn", scope: !286, file: !208, line: 1451, baseType: !291, size: 32, offset: 256)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 32)
!292 = !DISubroutineType(types: !293)
!293 = !{null, !294}
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 32)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "stop_fn", scope: !286, file: !208, line: 1454, baseType: !291, size: 32, offset: 288)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !286, file: !208, line: 1457, baseType: !297, size: 64, offset: 320)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_timeout_t", file: !263, line: 67, baseType: !298)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !263, line: 65, size: 64, elements: !299)
!299 = !{!300}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "ticks", scope: !298, file: !263, line: 66, baseType: !262, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !286, file: !208, line: 1460, baseType: !173, size: 32, offset: 384)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !286, file: !208, line: 1463, baseType: !90, size: 32, offset: 416)
!303 = !DILocalVariable(name: "timer", arg: 1, scope: !281, file: !208, line: 1635, type: !284)
!304 = !DILocation(line: 1635, column: 34, scope: !281)
!305 = !DILocation(line: 1637, column: 28, scope: !281)
!306 = !DILocation(line: 1637, column: 35, scope: !281)
!307 = !DILocation(line: 1637, column: 9, scope: !281)
!308 = !DILocation(line: 1637, column: 2, scope: !281)
!309 = distinct !DISubprogram(name: "z_impl_k_timer_remaining_ticks", scope: !208, file: !208, line: 1649, type: !282, scopeLine: 1651, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !112)
!310 = !DILocalVariable(name: "timer", arg: 1, scope: !309, file: !208, line: 1650, type: !284)
!311 = !DILocation(line: 1650, column: 34, scope: !309)
!312 = !DILocation(line: 1652, column: 30, scope: !309)
!313 = !DILocation(line: 1652, column: 37, scope: !309)
!314 = !DILocation(line: 1652, column: 9, scope: !309)
!315 = !DILocation(line: 1652, column: 2, scope: !309)
!316 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_set", scope: !208, file: !208, line: 1689, type: !317, scopeLine: 1691, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !112)
!317 = !DISubroutineType(types: !318)
!318 = !{null, !294, !90}
!319 = !DILocalVariable(name: "timer", arg: 1, scope: !316, file: !208, line: 1689, type: !294)
!320 = !DILocation(line: 1689, column: 65, scope: !316)
!321 = !DILocalVariable(name: "user_data", arg: 2, scope: !316, file: !208, line: 1690, type: !90)
!322 = !DILocation(line: 1690, column: 19, scope: !316)
!323 = !DILocation(line: 1692, column: 21, scope: !316)
!324 = !DILocation(line: 1692, column: 2, scope: !316)
!325 = !DILocation(line: 1692, column: 9, scope: !316)
!326 = !DILocation(line: 1692, column: 19, scope: !316)
!327 = !DILocation(line: 1693, column: 1, scope: !316)
!328 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_get", scope: !208, file: !208, line: 1704, type: !329, scopeLine: 1705, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !112)
!329 = !DISubroutineType(types: !330)
!330 = !{!90, !284}
!331 = !DILocalVariable(name: "timer", arg: 1, scope: !328, file: !208, line: 1704, type: !284)
!332 = !DILocation(line: 1704, column: 72, scope: !328)
!333 = !DILocation(line: 1706, column: 9, scope: !328)
!334 = !DILocation(line: 1706, column: 16, scope: !328)
!335 = !DILocation(line: 1706, column: 2, scope: !328)
!336 = distinct !DISubprogram(name: "z_impl_k_queue_is_empty", scope: !208, file: !208, line: 2071, type: !337, scopeLine: 2072, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !112)
!337 = !DISubroutineType(types: !338)
!338 = !{!91, !339}
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 32)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_queue", file: !208, line: 1830, size: 128, elements: !341)
!341 = !{!342, !355, !356}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "data_q", scope: !340, file: !208, line: 1831, baseType: !343, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sflist_t", file: !344, line: 60, baseType: !345)
!344 = !DIFile(filename: "include/zephyr/sys/sflist.h", directory: "/home/sri/zephyrproject/zephyr")
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sflist", file: !344, line: 53, size: 64, elements: !346)
!346 = !{!347, !354}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !345, file: !344, line: 54, baseType: !348, size: 32)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 32)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sfnode_t", file: !344, line: 50, baseType: !350)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sfnode", file: !344, line: 44, size: 32, elements: !351)
!351 = !{!352}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "next_and_flags", scope: !350, file: !344, line: 45, baseType: !353, size: 32)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "unative_t", file: !344, line: 40, baseType: !173)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !345, file: !344, line: 55, baseType: !348, size: 32, offset: 32)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !340, file: !208, line: 1832, baseType: !110, offset: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !340, file: !208, line: 1833, baseType: !149, size: 64, offset: 64)
!357 = !DILocalVariable(name: "queue", arg: 1, scope: !336, file: !208, line: 2071, type: !339)
!358 = !DILocation(line: 2071, column: 59, scope: !336)
!359 = !DILocation(line: 2073, column: 35, scope: !336)
!360 = !DILocation(line: 2073, column: 42, scope: !336)
!361 = !DILocation(line: 2073, column: 14, scope: !336)
!362 = !DILocation(line: 2073, column: 9, scope: !336)
!363 = !DILocation(line: 2073, column: 2, scope: !336)
!364 = distinct !DISubprogram(name: "z_impl_k_sem_count_get", scope: !208, file: !208, line: 3209, type: !365, scopeLine: 3210, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !112)
!365 = !DISubroutineType(types: !366)
!366 = !{!174, !367}
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 32)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sem", file: !208, line: 3092, size: 128, elements: !369)
!369 = !{!370, !371, !372}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !368, file: !208, line: 3093, baseType: !149, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !368, file: !208, line: 3094, baseType: !174, size: 32, offset: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !368, file: !208, line: 3095, baseType: !174, size: 32, offset: 96)
!373 = !DILocalVariable(name: "sem", arg: 1, scope: !364, file: !208, line: 3209, type: !367)
!374 = !DILocation(line: 3209, column: 65, scope: !364)
!375 = !DILocation(line: 3211, column: 9, scope: !364)
!376 = !DILocation(line: 3211, column: 14, scope: !364)
!377 = !DILocation(line: 3211, column: 2, scope: !364)
!378 = distinct !DISubprogram(name: "z_impl_k_msgq_num_free_get", scope: !208, file: !208, line: 4649, type: !379, scopeLine: 4650, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !112)
!379 = !DISubroutineType(types: !380)
!380 = !{!173, !381}
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 32)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_msgq", file: !208, line: 4390, size: 320, elements: !383)
!383 = !{!384, !385, !386, !387, !388, !391, !392, !393, !394, !395}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !382, file: !208, line: 4392, baseType: !149, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !382, file: !208, line: 4394, baseType: !110, offset: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "msg_size", scope: !382, file: !208, line: 4396, baseType: !219, size: 32, offset: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !382, file: !208, line: 4398, baseType: !173, size: 32, offset: 96)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_start", scope: !382, file: !208, line: 4400, baseType: !389, size: 32, offset: 128)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 32)
!390 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_end", scope: !382, file: !208, line: 4402, baseType: !389, size: 32, offset: 160)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "read_ptr", scope: !382, file: !208, line: 4404, baseType: !389, size: 32, offset: 192)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "write_ptr", scope: !382, file: !208, line: 4406, baseType: !389, size: 32, offset: 224)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "used_msgs", scope: !382, file: !208, line: 4408, baseType: !173, size: 32, offset: 256)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !382, file: !208, line: 4413, baseType: !156, size: 8, offset: 288)
!396 = !DILocalVariable(name: "msgq", arg: 1, scope: !378, file: !208, line: 4649, type: !381)
!397 = !DILocation(line: 4649, column: 66, scope: !378)
!398 = !DILocation(line: 4651, column: 9, scope: !378)
!399 = !DILocation(line: 4651, column: 15, scope: !378)
!400 = !DILocation(line: 4651, column: 26, scope: !378)
!401 = !DILocation(line: 4651, column: 32, scope: !378)
!402 = !DILocation(line: 4651, column: 24, scope: !378)
!403 = !DILocation(line: 4651, column: 2, scope: !378)
!404 = distinct !DISubprogram(name: "z_impl_k_msgq_num_used_get", scope: !208, file: !208, line: 4665, type: !379, scopeLine: 4666, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !112)
!405 = !DILocalVariable(name: "msgq", arg: 1, scope: !404, file: !208, line: 4665, type: !381)
!406 = !DILocation(line: 4665, column: 66, scope: !404)
!407 = !DILocation(line: 4667, column: 9, scope: !404)
!408 = !DILocation(line: 4667, column: 15, scope: !404)
!409 = !DILocation(line: 4667, column: 2, scope: !404)
!410 = distinct !DISubprogram(name: "z_impl_k_sem_init", scope: !109, file: !109, line: 45, type: !411, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !112)
!411 = !DISubroutineType(types: !412)
!412 = !{!91, !367, !174, !174}
!413 = !DILocalVariable(name: "sem", arg: 1, scope: !410, file: !109, line: 45, type: !367)
!414 = !DILocation(line: 45, column: 37, scope: !410)
!415 = !DILocalVariable(name: "initial_count", arg: 2, scope: !410, file: !109, line: 45, type: !174)
!416 = !DILocation(line: 45, column: 55, scope: !410)
!417 = !DILocalVariable(name: "limit", arg: 3, scope: !410, file: !109, line: 46, type: !174)
!418 = !DILocation(line: 46, column: 22, scope: !410)
!419 = !DILocation(line: 51, column: 6, scope: !420)
!420 = distinct !DILexicalBlock(scope: !410, file: !109, line: 51, column: 6)
!421 = !DILocation(line: 51, column: 12, scope: !420)
!422 = !DILocation(line: 51, column: 18, scope: !420)
!423 = !DILocation(line: 51, column: 21, scope: !420)
!424 = !DILocation(line: 51, column: 27, scope: !420)
!425 = !DILocation(line: 51, column: 50, scope: !420)
!426 = !DILocation(line: 51, column: 53, scope: !420)
!427 = !DILocation(line: 51, column: 69, scope: !420)
!428 = !DILocation(line: 51, column: 67, scope: !420)
!429 = !DILocation(line: 51, column: 6, scope: !410)
!430 = !DILocation(line: 52, column: 3, scope: !431)
!431 = distinct !DILexicalBlock(scope: !420, file: !109, line: 51, column: 76)
!432 = !DILocation(line: 52, column: 8, scope: !433)
!433 = distinct !DILexicalBlock(scope: !431, file: !109, line: 52, column: 6)
!434 = !DILocation(line: 54, column: 3, scope: !431)
!435 = !DILocation(line: 57, column: 15, scope: !410)
!436 = !DILocation(line: 57, column: 2, scope: !410)
!437 = !DILocation(line: 57, column: 7, scope: !410)
!438 = !DILocation(line: 57, column: 13, scope: !410)
!439 = !DILocation(line: 58, column: 15, scope: !410)
!440 = !DILocation(line: 58, column: 2, scope: !410)
!441 = !DILocation(line: 58, column: 7, scope: !410)
!442 = !DILocation(line: 58, column: 13, scope: !410)
!443 = !DILocation(line: 60, column: 2, scope: !410)
!444 = !DILocation(line: 60, column: 7, scope: !445)
!445 = distinct !DILexicalBlock(scope: !410, file: !109, line: 60, column: 5)
!446 = !DILocation(line: 62, column: 16, scope: !410)
!447 = !DILocation(line: 62, column: 21, scope: !410)
!448 = !DILocation(line: 62, column: 2, scope: !410)
!449 = !DILocation(line: 66, column: 16, scope: !410)
!450 = !DILocation(line: 66, column: 2, scope: !410)
!451 = !DILocation(line: 72, column: 2, scope: !410)
!452 = !DILocation(line: 73, column: 1, scope: !410)
!453 = distinct !DISubprogram(name: "z_waitq_init", scope: !454, file: !454, line: 47, type: !455, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !112)
!454 = !DIFile(filename: "kernel/include/wait_q.h", directory: "/home/sri/zephyrproject/zephyr")
!455 = !DISubroutineType(types: !456)
!456 = !{null, !148}
!457 = !DILocalVariable(name: "w", arg: 1, scope: !453, file: !454, line: 47, type: !148)
!458 = !DILocation(line: 47, column: 44, scope: !453)
!459 = !DILocation(line: 49, column: 18, scope: !453)
!460 = !DILocation(line: 49, column: 21, scope: !453)
!461 = !DILocation(line: 49, column: 2, scope: !453)
!462 = !DILocation(line: 50, column: 1, scope: !453)
!463 = distinct !DISubprogram(name: "z_object_init", scope: !6, file: !6, line: 215, type: !236, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !112)
!464 = !DILocalVariable(name: "obj", arg: 1, scope: !463, file: !6, line: 215, type: !125)
!465 = !DILocation(line: 215, column: 46, scope: !463)
!466 = !DILocation(line: 217, column: 9, scope: !463)
!467 = !DILocation(line: 218, column: 1, scope: !463)
!468 = distinct !DISubprogram(name: "z_impl_k_sem_give", scope: !109, file: !109, line: 96, type: !469, scopeLine: 97, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !112)
!469 = !DISubroutineType(types: !470)
!470 = !{null, !367}
!471 = !DILocalVariable(name: "sem", arg: 1, scope: !468, file: !109, line: 96, type: !367)
!472 = !DILocation(line: 96, column: 38, scope: !468)
!473 = !DILocalVariable(name: "key", scope: !468, file: !109, line: 98, type: !474)
!474 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_spinlock_key_t", file: !111, line: 108, baseType: !475)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "z_spinlock_key", file: !111, line: 34, size: 32, elements: !476)
!476 = !{!477}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !475, file: !111, line: 35, baseType: !91, size: 32)
!478 = !DILocation(line: 98, column: 19, scope: !468)
!479 = !DILocalVariable(name: "l", arg: 1, scope: !480, file: !111, line: 160, type: !483)
!480 = distinct !DISubprogram(name: "k_spin_lock", scope: !111, file: !111, line: 160, type: !481, scopeLine: 161, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !112)
!481 = !DISubroutineType(types: !482)
!482 = !{!474, !483}
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 32)
!484 = !DILocation(line: 160, column: 94, scope: !480, inlinedAt: !485)
!485 = distinct !DILocation(line: 98, column: 25, scope: !468)
!486 = !DILocation(line: 162, column: 9, scope: !480, inlinedAt: !485)
!487 = !DILocalVariable(name: "k", scope: !480, file: !111, line: 163, type: !474)
!488 = !DILocation(line: 163, column: 19, scope: !480, inlinedAt: !485)
!489 = !DILocalVariable(name: "key", scope: !490, file: !491, line: 44, type: !174)
!490 = distinct !DISubprogram(name: "arch_irq_lock", scope: !491, file: !491, line: 42, type: !492, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !112)
!491 = !DIFile(filename: "include/zephyr/arch/arm/asm_inline_gcc.h", directory: "/home/sri/zephyrproject/zephyr")
!492 = !DISubroutineType(types: !493)
!493 = !{!174}
!494 = !DILocation(line: 44, column: 15, scope: !490, inlinedAt: !495)
!495 = distinct !DILocation(line: 169, column: 10, scope: !480, inlinedAt: !485)
!496 = !DILocation(line: 48, column: 2, scope: !490, inlinedAt: !495)
!497 = !{i64 66939}
!498 = !DILocation(line: 80, column: 9, scope: !490, inlinedAt: !495)
!499 = !DILocation(line: 169, column: 8, scope: !480, inlinedAt: !485)
!500 = !DILocation(line: 171, column: 26, scope: !480, inlinedAt: !485)
!501 = !DILocalVariable(name: "l", arg: 1, scope: !502, file: !111, line: 110, type: !483)
!502 = distinct !DISubprogram(name: "z_spinlock_validate_pre", scope: !111, file: !111, line: 110, type: !503, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !112)
!503 = !DISubroutineType(types: !504)
!504 = !{null, !483}
!505 = !DILocation(line: 110, column: 94, scope: !502, inlinedAt: !506)
!506 = distinct !DILocation(line: 171, column: 2, scope: !480, inlinedAt: !485)
!507 = !DILocation(line: 112, column: 9, scope: !502, inlinedAt: !506)
!508 = !DILocation(line: 177, column: 27, scope: !480, inlinedAt: !485)
!509 = !DILocalVariable(name: "l", arg: 1, scope: !510, file: !111, line: 121, type: !483)
!510 = distinct !DISubprogram(name: "z_spinlock_validate_post", scope: !111, file: !111, line: 121, type: !503, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !112)
!511 = !DILocation(line: 121, column: 95, scope: !510, inlinedAt: !512)
!512 = distinct !DILocation(line: 177, column: 2, scope: !480, inlinedAt: !485)
!513 = !DILocation(line: 123, column: 9, scope: !510, inlinedAt: !512)
!514 = !DILocation(line: 179, column: 2, scope: !480, inlinedAt: !485)
!515 = !DILocation(line: 98, column: 25, scope: !468)
!516 = !DILocalVariable(name: "thread", scope: !468, file: !109, line: 99, type: !127)
!517 = !DILocation(line: 99, column: 19, scope: !468)
!518 = !DILocalVariable(name: "resched", scope: !468, file: !109, line: 100, type: !89)
!519 = !DILocation(line: 100, column: 8, scope: !468)
!520 = !DILocation(line: 102, column: 2, scope: !468)
!521 = !DILocation(line: 102, column: 7, scope: !522)
!522 = distinct !DILexicalBlock(scope: !468, file: !109, line: 102, column: 5)
!523 = !DILocation(line: 104, column: 34, scope: !468)
!524 = !DILocation(line: 104, column: 39, scope: !468)
!525 = !DILocation(line: 104, column: 11, scope: !468)
!526 = !DILocation(line: 104, column: 9, scope: !468)
!527 = !DILocation(line: 106, column: 6, scope: !528)
!528 = distinct !DILexicalBlock(scope: !468, file: !109, line: 106, column: 6)
!529 = !DILocation(line: 106, column: 13, scope: !528)
!530 = !DILocation(line: 106, column: 6, scope: !468)
!531 = !DILocation(line: 107, column: 32, scope: !532)
!532 = distinct !DILexicalBlock(scope: !528, file: !109, line: 106, column: 19)
!533 = !DILocalVariable(name: "thread", arg: 1, scope: !534, file: !535, line: 59, type: !127)
!534 = distinct !DISubprogram(name: "arch_thread_return_value_set", scope: !535, file: !535, line: 59, type: !536, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !112)
!535 = !DIFile(filename: "arch/arm/include/cortex_m/kernel_arch_func.h", directory: "/home/sri/zephyrproject/zephyr")
!536 = !DISubroutineType(types: !537)
!537 = !{null, !127, !174}
!538 = !DILocation(line: 59, column: 47, scope: !534, inlinedAt: !539)
!539 = distinct !DILocation(line: 107, column: 3, scope: !532)
!540 = !DILocalVariable(name: "value", arg: 2, scope: !534, file: !535, line: 59, type: !174)
!541 = !DILocation(line: 59, column: 68, scope: !534, inlinedAt: !539)
!542 = !DILocation(line: 61, column: 35, scope: !534, inlinedAt: !539)
!543 = !DILocation(line: 61, column: 2, scope: !534, inlinedAt: !539)
!544 = !DILocation(line: 61, column: 10, scope: !534, inlinedAt: !539)
!545 = !DILocation(line: 61, column: 15, scope: !534, inlinedAt: !539)
!546 = !DILocation(line: 61, column: 33, scope: !534, inlinedAt: !539)
!547 = !DILocation(line: 108, column: 18, scope: !532)
!548 = !DILocation(line: 108, column: 3, scope: !532)
!549 = !DILocation(line: 109, column: 2, scope: !532)
!550 = !DILocation(line: 110, column: 18, scope: !551)
!551 = distinct !DILexicalBlock(scope: !528, file: !109, line: 109, column: 9)
!552 = !DILocation(line: 110, column: 23, scope: !551)
!553 = !DILocation(line: 110, column: 32, scope: !551)
!554 = !DILocation(line: 110, column: 37, scope: !551)
!555 = !DILocation(line: 110, column: 29, scope: !551)
!556 = !DILocation(line: 110, column: 17, scope: !551)
!557 = !DILocation(line: 110, column: 3, scope: !551)
!558 = !DILocation(line: 110, column: 8, scope: !551)
!559 = !DILocation(line: 110, column: 14, scope: !551)
!560 = !DILocation(line: 111, column: 32, scope: !551)
!561 = !DILocation(line: 111, column: 13, scope: !551)
!562 = !DILocation(line: 111, column: 11, scope: !551)
!563 = !DILocation(line: 114, column: 6, scope: !564)
!564 = distinct !DILexicalBlock(scope: !468, file: !109, line: 114, column: 6)
!565 = !DILocation(line: 114, column: 6, scope: !468)
!566 = !DILocation(line: 115, column: 3, scope: !567)
!567 = distinct !DILexicalBlock(scope: !564, file: !109, line: 114, column: 15)
!568 = !DILocation(line: 116, column: 2, scope: !567)
!569 = !DILocation(line: 117, column: 3, scope: !570)
!570 = distinct !DILexicalBlock(scope: !564, file: !109, line: 116, column: 9)
!571 = !DILocalVariable(name: "l", arg: 1, scope: !572, file: !111, line: 235, type: !483)
!572 = distinct !DISubprogram(name: "k_spin_unlock", scope: !111, file: !111, line: 235, type: !573, scopeLine: 237, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !112)
!573 = !DISubroutineType(types: !574)
!574 = !{null, !483, !474}
!575 = !DILocation(line: 235, column: 84, scope: !572, inlinedAt: !576)
!576 = distinct !DILocation(line: 117, column: 3, scope: !570)
!577 = !DILocalVariable(name: "key", arg: 2, scope: !572, file: !111, line: 236, type: !474)
!578 = !DILocation(line: 236, column: 23, scope: !572, inlinedAt: !576)
!579 = !DILocation(line: 238, column: 9, scope: !572, inlinedAt: !576)
!580 = !DILocation(line: 261, column: 22, scope: !572, inlinedAt: !576)
!581 = !DILocalVariable(name: "key", arg: 1, scope: !582, file: !491, line: 88, type: !174)
!582 = distinct !DISubprogram(name: "arch_irq_unlock", scope: !491, file: !491, line: 88, type: !583, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !112)
!583 = !DISubroutineType(types: !584)
!584 = !{null, !174}
!585 = !DILocation(line: 88, column: 80, scope: !582, inlinedAt: !586)
!586 = distinct !DILocation(line: 261, column: 2, scope: !572, inlinedAt: !576)
!587 = !DILocation(line: 91, column: 6, scope: !588, inlinedAt: !586)
!588 = distinct !DILexicalBlock(scope: !582, file: !491, line: 91, column: 6)
!589 = !DILocation(line: 91, column: 10, scope: !588, inlinedAt: !586)
!590 = !DILocation(line: 91, column: 6, scope: !582, inlinedAt: !586)
!591 = !DILocation(line: 92, column: 3, scope: !592, inlinedAt: !586)
!592 = distinct !DILexicalBlock(scope: !588, file: !491, line: 91, column: 17)
!593 = !DILocation(line: 94, column: 2, scope: !582, inlinedAt: !586)
!594 = !{i64 67243}
!595 = !DILocation(line: 114, column: 1, scope: !582, inlinedAt: !586)
!596 = !DILocation(line: 120, column: 2, scope: !468)
!597 = !DILocation(line: 120, column: 7, scope: !598)
!598 = distinct !DILexicalBlock(scope: !468, file: !109, line: 120, column: 5)
!599 = !DILocation(line: 121, column: 1, scope: !468)
!600 = distinct !DISubprogram(name: "handle_poll_events", scope: !109, file: !109, line: 85, type: !601, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !112)
!601 = !DISubroutineType(types: !602)
!602 = !{!89, !367}
!603 = !DILocalVariable(name: "sem", arg: 1, scope: !600, file: !109, line: 85, type: !367)
!604 = !DILocation(line: 85, column: 54, scope: !600)
!605 = !DILocation(line: 91, column: 9, scope: !600)
!606 = !DILocation(line: 92, column: 2, scope: !600)
!607 = distinct !DISubprogram(name: "z_impl_k_sem_take", scope: !109, file: !109, line: 132, type: !608, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !112)
!608 = !DISubroutineType(types: !609)
!609 = !{!91, !367, !297}
!610 = !DILocalVariable(name: "sem", arg: 1, scope: !607, file: !109, line: 132, type: !367)
!611 = !DILocation(line: 132, column: 37, scope: !607)
!612 = !DILocalVariable(name: "timeout", arg: 2, scope: !607, file: !109, line: 132, type: !297)
!613 = !DILocation(line: 132, column: 54, scope: !607)
!614 = !DILocalVariable(name: "ret", scope: !607, file: !109, line: 134, type: !91)
!615 = !DILocation(line: 134, column: 6, scope: !607)
!616 = !DILocalVariable(name: "key", scope: !607, file: !109, line: 139, type: !474)
!617 = !DILocation(line: 139, column: 19, scope: !607)
!618 = !DILocation(line: 160, column: 94, scope: !480, inlinedAt: !619)
!619 = distinct !DILocation(line: 139, column: 25, scope: !607)
!620 = !DILocation(line: 162, column: 9, scope: !480, inlinedAt: !619)
!621 = !DILocation(line: 163, column: 19, scope: !480, inlinedAt: !619)
!622 = !DILocation(line: 44, column: 15, scope: !490, inlinedAt: !623)
!623 = distinct !DILocation(line: 169, column: 10, scope: !480, inlinedAt: !619)
!624 = !DILocation(line: 48, column: 2, scope: !490, inlinedAt: !623)
!625 = !DILocation(line: 80, column: 9, scope: !490, inlinedAt: !623)
!626 = !DILocation(line: 169, column: 8, scope: !480, inlinedAt: !619)
!627 = !DILocation(line: 171, column: 26, scope: !480, inlinedAt: !619)
!628 = !DILocation(line: 110, column: 94, scope: !502, inlinedAt: !629)
!629 = distinct !DILocation(line: 171, column: 2, scope: !480, inlinedAt: !619)
!630 = !DILocation(line: 112, column: 9, scope: !502, inlinedAt: !629)
!631 = !DILocation(line: 177, column: 27, scope: !480, inlinedAt: !619)
!632 = !DILocation(line: 121, column: 95, scope: !510, inlinedAt: !633)
!633 = distinct !DILocation(line: 177, column: 2, scope: !480, inlinedAt: !619)
!634 = !DILocation(line: 123, column: 9, scope: !510, inlinedAt: !633)
!635 = !DILocation(line: 179, column: 2, scope: !480, inlinedAt: !619)
!636 = !DILocation(line: 139, column: 25, scope: !607)
!637 = !DILocation(line: 141, column: 2, scope: !607)
!638 = !DILocation(line: 141, column: 7, scope: !639)
!639 = distinct !DILexicalBlock(scope: !607, file: !109, line: 141, column: 5)
!640 = !DILocation(line: 143, column: 34, scope: !641)
!641 = distinct !DILexicalBlock(scope: !607, file: !109, line: 143, column: 6)
!642 = !DILocation(line: 143, column: 39, scope: !641)
!643 = !DILocation(line: 143, column: 45, scope: !641)
!644 = !DILocation(line: 143, column: 32, scope: !641)
!645 = !DILocation(line: 143, column: 31, scope: !641)
!646 = !DILocation(line: 143, column: 24, scope: !641)
!647 = !DILocation(line: 143, column: 55, scope: !641)
!648 = !DILocation(line: 143, column: 6, scope: !607)
!649 = !DILocation(line: 144, column: 3, scope: !650)
!650 = distinct !DILexicalBlock(scope: !641, file: !109, line: 143, column: 63)
!651 = !DILocation(line: 144, column: 8, scope: !650)
!652 = !DILocation(line: 144, column: 13, scope: !650)
!653 = !DILocation(line: 145, column: 3, scope: !650)
!654 = !DILocation(line: 235, column: 84, scope: !572, inlinedAt: !655)
!655 = distinct !DILocation(line: 145, column: 3, scope: !650)
!656 = !DILocation(line: 236, column: 23, scope: !572, inlinedAt: !655)
!657 = !DILocation(line: 238, column: 9, scope: !572, inlinedAt: !655)
!658 = !DILocation(line: 261, column: 22, scope: !572, inlinedAt: !655)
!659 = !DILocation(line: 88, column: 80, scope: !582, inlinedAt: !660)
!660 = distinct !DILocation(line: 261, column: 2, scope: !572, inlinedAt: !655)
!661 = !DILocation(line: 91, column: 6, scope: !588, inlinedAt: !660)
!662 = !DILocation(line: 91, column: 10, scope: !588, inlinedAt: !660)
!663 = !DILocation(line: 91, column: 6, scope: !582, inlinedAt: !660)
!664 = !DILocation(line: 92, column: 3, scope: !592, inlinedAt: !660)
!665 = !DILocation(line: 94, column: 2, scope: !582, inlinedAt: !660)
!666 = !DILocation(line: 114, column: 1, scope: !582, inlinedAt: !660)
!667 = !DILocation(line: 146, column: 7, scope: !650)
!668 = !DILocation(line: 147, column: 3, scope: !650)
!669 = !DILocation(line: 150, column: 17, scope: !670)
!670 = distinct !DILexicalBlock(scope: !607, file: !109, line: 150, column: 6)
!671 = !DILocation(line: 150, column: 42, scope: !670)
!672 = !DILocation(line: 150, column: 23, scope: !670)
!673 = !DILocation(line: 150, column: 6, scope: !607)
!674 = !DILocation(line: 151, column: 3, scope: !675)
!675 = distinct !DILexicalBlock(scope: !670, file: !109, line: 150, column: 56)
!676 = !DILocation(line: 235, column: 84, scope: !572, inlinedAt: !677)
!677 = distinct !DILocation(line: 151, column: 3, scope: !675)
!678 = !DILocation(line: 236, column: 23, scope: !572, inlinedAt: !677)
!679 = !DILocation(line: 238, column: 9, scope: !572, inlinedAt: !677)
!680 = !DILocation(line: 261, column: 22, scope: !572, inlinedAt: !677)
!681 = !DILocation(line: 88, column: 80, scope: !582, inlinedAt: !682)
!682 = distinct !DILocation(line: 261, column: 2, scope: !572, inlinedAt: !677)
!683 = !DILocation(line: 91, column: 6, scope: !588, inlinedAt: !682)
!684 = !DILocation(line: 91, column: 10, scope: !588, inlinedAt: !682)
!685 = !DILocation(line: 91, column: 6, scope: !582, inlinedAt: !682)
!686 = !DILocation(line: 92, column: 3, scope: !592, inlinedAt: !682)
!687 = !DILocation(line: 94, column: 2, scope: !582, inlinedAt: !682)
!688 = !DILocation(line: 114, column: 1, scope: !582, inlinedAt: !682)
!689 = !DILocation(line: 152, column: 7, scope: !675)
!690 = !DILocation(line: 153, column: 3, scope: !675)
!691 = !DILocation(line: 156, column: 2, scope: !607)
!692 = !DILocation(line: 156, column: 7, scope: !693)
!693 = distinct !DILexicalBlock(scope: !607, file: !109, line: 156, column: 5)
!694 = !DILocation(line: 158, column: 33, scope: !607)
!695 = !DILocation(line: 158, column: 38, scope: !607)
!696 = !DILocation(line: 158, column: 8, scope: !607)
!697 = !DILocation(line: 158, column: 6, scope: !607)
!698 = !DILocation(line: 158, column: 2, scope: !607)
!699 = !DILabel(scope: !607, name: "out", file: !109, line: 160)
!700 = !DILocation(line: 160, column: 1, scope: !607)
!701 = !DILocation(line: 161, column: 2, scope: !607)
!702 = !DILocation(line: 161, column: 7, scope: !703)
!703 = distinct !DILexicalBlock(scope: !607, file: !109, line: 161, column: 5)
!704 = !DILocation(line: 163, column: 9, scope: !607)
!705 = !DILocation(line: 163, column: 2, scope: !607)
!706 = distinct !DISubprogram(name: "z_impl_k_sem_reset", scope: !109, file: !109, line: 166, type: !469, scopeLine: 167, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !112)
!707 = !DILocalVariable(name: "sem", arg: 1, scope: !706, file: !109, line: 166, type: !367)
!708 = !DILocation(line: 166, column: 39, scope: !706)
!709 = !DILocalVariable(name: "thread", scope: !706, file: !109, line: 168, type: !127)
!710 = !DILocation(line: 168, column: 19, scope: !706)
!711 = !DILocalVariable(name: "key", scope: !706, file: !109, line: 169, type: !474)
!712 = !DILocation(line: 169, column: 19, scope: !706)
!713 = !DILocation(line: 160, column: 94, scope: !480, inlinedAt: !714)
!714 = distinct !DILocation(line: 169, column: 25, scope: !706)
!715 = !DILocation(line: 162, column: 9, scope: !480, inlinedAt: !714)
!716 = !DILocation(line: 163, column: 19, scope: !480, inlinedAt: !714)
!717 = !DILocation(line: 44, column: 15, scope: !490, inlinedAt: !718)
!718 = distinct !DILocation(line: 169, column: 10, scope: !480, inlinedAt: !714)
!719 = !DILocation(line: 48, column: 2, scope: !490, inlinedAt: !718)
!720 = !DILocation(line: 80, column: 9, scope: !490, inlinedAt: !718)
!721 = !DILocation(line: 169, column: 8, scope: !480, inlinedAt: !714)
!722 = !DILocation(line: 171, column: 26, scope: !480, inlinedAt: !714)
!723 = !DILocation(line: 110, column: 94, scope: !502, inlinedAt: !724)
!724 = distinct !DILocation(line: 171, column: 2, scope: !480, inlinedAt: !714)
!725 = !DILocation(line: 112, column: 9, scope: !502, inlinedAt: !724)
!726 = !DILocation(line: 177, column: 27, scope: !480, inlinedAt: !714)
!727 = !DILocation(line: 121, column: 95, scope: !510, inlinedAt: !728)
!728 = distinct !DILocation(line: 177, column: 2, scope: !480, inlinedAt: !714)
!729 = !DILocation(line: 123, column: 9, scope: !510, inlinedAt: !728)
!730 = !DILocation(line: 179, column: 2, scope: !480, inlinedAt: !714)
!731 = !DILocation(line: 169, column: 25, scope: !706)
!732 = !DILocation(line: 171, column: 2, scope: !706)
!733 = !DILocation(line: 172, column: 35, scope: !734)
!734 = distinct !DILexicalBlock(scope: !706, file: !109, line: 171, column: 12)
!735 = !DILocation(line: 172, column: 40, scope: !734)
!736 = !DILocation(line: 172, column: 12, scope: !734)
!737 = !DILocation(line: 172, column: 10, scope: !734)
!738 = !DILocation(line: 173, column: 7, scope: !739)
!739 = distinct !DILexicalBlock(scope: !734, file: !109, line: 173, column: 7)
!740 = !DILocation(line: 173, column: 14, scope: !739)
!741 = !DILocation(line: 173, column: 7, scope: !734)
!742 = !DILocation(line: 174, column: 4, scope: !743)
!743 = distinct !DILexicalBlock(scope: !739, file: !109, line: 173, column: 20)
!744 = !DILocation(line: 176, column: 32, scope: !734)
!745 = !DILocation(line: 59, column: 47, scope: !534, inlinedAt: !746)
!746 = distinct !DILocation(line: 176, column: 3, scope: !734)
!747 = !DILocation(line: 59, column: 68, scope: !534, inlinedAt: !746)
!748 = !DILocation(line: 61, column: 35, scope: !534, inlinedAt: !746)
!749 = !DILocation(line: 61, column: 2, scope: !534, inlinedAt: !746)
!750 = !DILocation(line: 61, column: 10, scope: !534, inlinedAt: !746)
!751 = !DILocation(line: 61, column: 15, scope: !534, inlinedAt: !746)
!752 = !DILocation(line: 61, column: 33, scope: !534, inlinedAt: !746)
!753 = !DILocation(line: 177, column: 18, scope: !734)
!754 = !DILocation(line: 177, column: 3, scope: !734)
!755 = distinct !{!755, !732, !756}
!756 = !DILocation(line: 178, column: 2, scope: !706)
!757 = !DILocation(line: 179, column: 2, scope: !706)
!758 = !DILocation(line: 179, column: 7, scope: !706)
!759 = !DILocation(line: 179, column: 13, scope: !706)
!760 = !DILocation(line: 181, column: 2, scope: !706)
!761 = !DILocation(line: 181, column: 7, scope: !762)
!762 = distinct !DILexicalBlock(scope: !706, file: !109, line: 181, column: 5)
!763 = !DILocation(line: 183, column: 21, scope: !706)
!764 = !DILocation(line: 183, column: 2, scope: !706)
!765 = !DILocation(line: 185, column: 2, scope: !706)
!766 = !DILocation(line: 186, column: 1, scope: !706)
!767 = distinct !DISubprogram(name: "sys_sflist_is_empty", scope: !344, file: !344, line: 335, type: !768, scopeLine: 335, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !112)
!768 = !DISubroutineType(types: !769)
!769 = !{!89, !770}
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 32)
!771 = !DILocalVariable(name: "list", arg: 1, scope: !767, file: !344, line: 335, type: !770)
!772 = !DILocation(line: 335, column: 55, scope: !767)
!773 = !DILocation(line: 335, column: 92, scope: !767)
!774 = !DILocation(line: 335, column: 71, scope: !767)
!775 = !DILocation(line: 335, column: 98, scope: !767)
!776 = !DILocation(line: 335, column: 63, scope: !767)
!777 = distinct !DISubprogram(name: "sys_sflist_peek_head", scope: !344, file: !344, line: 255, type: !778, scopeLine: 256, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !112)
!778 = !DISubroutineType(types: !779)
!779 = !{!348, !770}
!780 = !DILocalVariable(name: "list", arg: 1, scope: !777, file: !344, line: 255, type: !770)
!781 = !DILocation(line: 255, column: 64, scope: !777)
!782 = !DILocation(line: 257, column: 9, scope: !777)
!783 = !DILocation(line: 257, column: 15, scope: !777)
!784 = !DILocation(line: 257, column: 2, scope: !777)
!785 = distinct !DISubprogram(name: "sys_dlist_init", scope: !94, file: !94, line: 203, type: !786, scopeLine: 204, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !112)
!786 = !DISubroutineType(types: !787)
!787 = !{null, !788}
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 32)
!789 = !DILocalVariable(name: "list", arg: 1, scope: !785, file: !94, line: 203, type: !788)
!790 = !DILocation(line: 203, column: 48, scope: !785)
!791 = !DILocation(line: 205, column: 30, scope: !785)
!792 = !DILocation(line: 205, column: 2, scope: !785)
!793 = !DILocation(line: 205, column: 8, scope: !785)
!794 = !DILocation(line: 205, column: 13, scope: !785)
!795 = !DILocation(line: 206, column: 30, scope: !785)
!796 = !DILocation(line: 206, column: 2, scope: !785)
!797 = !DILocation(line: 206, column: 8, scope: !785)
!798 = !DILocation(line: 206, column: 13, scope: !785)
!799 = !DILocation(line: 207, column: 1, scope: !785)
