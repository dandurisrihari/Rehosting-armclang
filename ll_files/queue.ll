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

@_kernel = external global %struct.z_kernel, align 4

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_k_object_access_grant(ptr noundef %0, ptr noundef %1) #0 !dbg !146 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !250, metadata !DIExpression()), !dbg !251
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !252, metadata !DIExpression()), !dbg !253
  %5 = load ptr, ptr %3, align 4, !dbg !254
  %6 = load ptr, ptr %4, align 4, !dbg !255
  ret void, !dbg !256
}

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_k_object_release(ptr noundef %0) #0 !dbg !257 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !260, metadata !DIExpression()), !dbg !261
  %3 = load ptr, ptr %2, align 4, !dbg !262
  ret void, !dbg !263
}

; Function Attrs: noinline nounwind optnone
define internal ptr @z_impl_k_object_alloc(i8 noundef zeroext %0) #0 !dbg !264 {
  %2 = alloca i8, align 1
  store i8 %0, ptr %2, align 1
  call void @llvm.dbg.declare(metadata ptr %2, metadata !267, metadata !DIExpression()), !dbg !268
  %3 = load i8, ptr %2, align 1, !dbg !269
  ret ptr null, !dbg !270
}

; Function Attrs: noinline nounwind optnone
define internal ptr @z_impl_k_object_alloc_size(i8 noundef zeroext %0, i32 noundef %1) #0 !dbg !271 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8 %0, ptr %3, align 1
  call void @llvm.dbg.declare(metadata ptr %3, metadata !274, metadata !DIExpression()), !dbg !275
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !276, metadata !DIExpression()), !dbg !277
  %5 = load i8, ptr %3, align 1, !dbg !278
  %6 = load i32, ptr %4, align 4, !dbg !279
  ret ptr null, !dbg !280
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_thread_timeout_expires_ticks(ptr noundef %0) #0 !dbg !281 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !288, metadata !DIExpression()), !dbg !289
  %3 = load ptr, ptr %2, align 4, !dbg !290
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !291
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !292
  %6 = call i64 @z_timeout_expires(ptr noundef %5), !dbg !293
  ret i64 %6, !dbg !294
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_thread_timeout_remaining_ticks(ptr noundef %0) #0 !dbg !295 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !296, metadata !DIExpression()), !dbg !297
  %3 = load ptr, ptr %2, align 4, !dbg !298
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !299
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !300
  %6 = call i64 @z_timeout_remaining(ptr noundef %5), !dbg !301
  ret i64 %6, !dbg !302
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_timer_expires_ticks(ptr noundef %0) #0 !dbg !303 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !325, metadata !DIExpression()), !dbg !326
  %3 = load ptr, ptr %2, align 4, !dbg !327
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !328
  %5 = call i64 @z_timeout_expires(ptr noundef %4), !dbg !329
  ret i64 %5, !dbg !330
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_timer_remaining_ticks(ptr noundef %0) #0 !dbg !331 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !332, metadata !DIExpression()), !dbg !333
  %3 = load ptr, ptr %2, align 4, !dbg !334
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !335
  %5 = call i64 @z_timeout_remaining(ptr noundef %4), !dbg !336
  ret i64 %5, !dbg !337
}

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_k_timer_user_data_set(ptr noundef %0, ptr noundef %1) #0 !dbg !338 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !341, metadata !DIExpression()), !dbg !342
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !343, metadata !DIExpression()), !dbg !344
  %5 = load ptr, ptr %4, align 4, !dbg !345
  %6 = load ptr, ptr %3, align 4, !dbg !346
  %7 = getelementptr inbounds %struct.k_timer, ptr %6, i32 0, i32 6, !dbg !347
  store ptr %5, ptr %7, align 4, !dbg !348
  ret void, !dbg !349
}

; Function Attrs: noinline nounwind optnone
define internal ptr @z_impl_k_timer_user_data_get(ptr noundef %0) #0 !dbg !350 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !353, metadata !DIExpression()), !dbg !354
  %3 = load ptr, ptr %2, align 4, !dbg !355
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 6, !dbg !356
  %5 = load ptr, ptr %4, align 4, !dbg !356
  ret ptr %5, !dbg !357
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_queue_is_empty(ptr noundef %0) #0 !dbg !358 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !372, metadata !DIExpression()), !dbg !373
  %3 = load ptr, ptr %2, align 4, !dbg !374
  %4 = getelementptr inbounds %struct.k_queue, ptr %3, i32 0, i32 0, !dbg !375
  %5 = call zeroext i1 @sys_sflist_is_empty(ptr noundef %4), !dbg !376
  %6 = zext i1 %5 to i32, !dbg !377
  ret i32 %6, !dbg !378
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_sem_count_get(ptr noundef %0) #0 !dbg !379 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !388, metadata !DIExpression()), !dbg !389
  %3 = load ptr, ptr %2, align 4, !dbg !390
  %4 = getelementptr inbounds %struct.k_sem, ptr %3, i32 0, i32 1, !dbg !391
  %5 = load i32, ptr %4, align 4, !dbg !391
  ret i32 %5, !dbg !392
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_msgq_num_free_get(ptr noundef %0) #0 !dbg !393 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !409, metadata !DIExpression()), !dbg !410
  %3 = load ptr, ptr %2, align 4, !dbg !411
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 3, !dbg !412
  %5 = load i32, ptr %4, align 4, !dbg !412
  %6 = load ptr, ptr %2, align 4, !dbg !413
  %7 = getelementptr inbounds %struct.k_msgq, ptr %6, i32 0, i32 8, !dbg !414
  %8 = load i32, ptr %7, align 4, !dbg !414
  %9 = sub i32 %5, %8, !dbg !415
  ret i32 %9, !dbg !416
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_msgq_num_used_get(ptr noundef %0) #0 !dbg !417 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !418, metadata !DIExpression()), !dbg !419
  %3 = load ptr, ptr %2, align 4, !dbg !420
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 8, !dbg !421
  %5 = load i32, ptr %4, align 4, !dbg !421
  ret i32 %5, !dbg !422
}

; Function Attrs: noinline nounwind optnone
define hidden ptr @z_queue_node_peek(ptr noundef %0, i1 noundef zeroext %1) #0 !dbg !423 {
  %3 = alloca ptr, align 4
  %4 = alloca i8, align 1
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !426, metadata !DIExpression()), !dbg !427
  %8 = zext i1 %1 to i8
  store i8 %8, ptr %4, align 1
  call void @llvm.dbg.declare(metadata ptr %4, metadata !428, metadata !DIExpression()), !dbg !429
  call void @llvm.dbg.declare(metadata ptr %5, metadata !430, metadata !DIExpression()), !dbg !431
  %9 = load ptr, ptr %3, align 4, !dbg !432
  %10 = icmp ne ptr %9, null, !dbg !434
  br i1 %10, label %11, label %28, !dbg !435

11:                                               ; preds = %2
  %12 = load ptr, ptr %3, align 4, !dbg !436
  %13 = call zeroext i8 @sys_sfnode_flags_get(ptr noundef %12), !dbg !437
  %14 = zext i8 %13 to i32, !dbg !437
  %15 = icmp ne i32 %14, 0, !dbg !438
  br i1 %15, label %16, label %28, !dbg !439

16:                                               ; preds = %11
  call void @llvm.dbg.declare(metadata ptr %6, metadata !440, metadata !DIExpression()), !dbg !442
  %17 = load ptr, ptr %3, align 4, !dbg !443
  %18 = getelementptr inbounds i8, ptr %17, i32 0, !dbg !445
  store ptr %18, ptr %7, align 4, !dbg !446
  %19 = load ptr, ptr %7, align 4, !dbg !447
  store ptr %19, ptr %6, align 4, !dbg !448
  %20 = load ptr, ptr %6, align 4, !dbg !449
  %21 = getelementptr inbounds %struct.alloc_node, ptr %20, i32 0, i32 1, !dbg !450
  %22 = load ptr, ptr %21, align 4, !dbg !450
  store ptr %22, ptr %5, align 4, !dbg !451
  %23 = load i8, ptr %4, align 1, !dbg !452
  %24 = trunc i8 %23 to i1, !dbg !452
  br i1 %24, label %25, label %27, !dbg !454

25:                                               ; preds = %16
  %26 = load ptr, ptr %6, align 4, !dbg !455
  call void @k_free(ptr noundef %26), !dbg !457
  br label %27, !dbg !458

27:                                               ; preds = %25, %16
  br label %30, !dbg !459

28:                                               ; preds = %11, %2
  %29 = load ptr, ptr %3, align 4, !dbg !460
  store ptr %29, ptr %5, align 4, !dbg !462
  br label %30

30:                                               ; preds = %28, %27
  %31 = load ptr, ptr %5, align 4, !dbg !463
  ret ptr %31, !dbg !464
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone
define internal zeroext i8 @sys_sfnode_flags_get(ptr noundef %0) #0 !dbg !465 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !468, metadata !DIExpression()), !dbg !469
  %3 = load ptr, ptr %2, align 4, !dbg !470
  %4 = getelementptr inbounds %struct._sfnode, ptr %3, i32 0, i32 0, !dbg !471
  %5 = load i32, ptr %4, align 4, !dbg !471
  %6 = and i32 %5, 3, !dbg !472
  %7 = trunc i32 %6 to i8, !dbg !470
  ret i8 %7, !dbg !473
}

declare void @k_free(ptr noundef) #2

; Function Attrs: noinline nounwind optnone
define hidden void @z_impl_k_queue_init(ptr noundef %0) #0 !dbg !474 {
  %2 = alloca ptr, align 4
  %3 = alloca %struct.k_spinlock, align 1
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !477, metadata !DIExpression()), !dbg !478
  %4 = load ptr, ptr %2, align 4, !dbg !479
  %5 = getelementptr inbounds %struct.k_queue, ptr %4, i32 0, i32 0, !dbg !480
  call void @sys_sflist_init(ptr noundef %5), !dbg !481
  %6 = load ptr, ptr %2, align 4, !dbg !482
  %7 = getelementptr inbounds %struct.k_queue, ptr %6, i32 0, i32 1, !dbg !483
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %7, ptr align 1 %3, i32 0, i1 false), !dbg !484
  %8 = load ptr, ptr %2, align 4, !dbg !485
  %9 = getelementptr inbounds %struct.k_queue, ptr %8, i32 0, i32 2, !dbg !486
  call void @z_waitq_init(ptr noundef %9), !dbg !487
  br label %10, !dbg !488

10:                                               ; preds = %1
  br label %11, !dbg !489

11:                                               ; preds = %10
  %12 = load ptr, ptr %2, align 4, !dbg !491
  call void @z_object_init(ptr noundef %12), !dbg !492
  ret void, !dbg !493
}

; Function Attrs: noinline nounwind optnone
define internal void @sys_sflist_init(ptr noundef %0) #0 !dbg !494 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !498, metadata !DIExpression()), !dbg !499
  %3 = load ptr, ptr %2, align 4, !dbg !500
  %4 = getelementptr inbounds %struct._sflist, ptr %3, i32 0, i32 0, !dbg !501
  store ptr null, ptr %4, align 4, !dbg !502
  %5 = load ptr, ptr %2, align 4, !dbg !503
  %6 = getelementptr inbounds %struct._sflist, ptr %5, i32 0, i32 1, !dbg !504
  store ptr null, ptr %6, align 4, !dbg !505
  ret void, !dbg !506
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: noinline nounwind optnone
define internal void @z_waitq_init(ptr noundef %0) #0 !dbg !507 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !511, metadata !DIExpression()), !dbg !512
  %3 = load ptr, ptr %2, align 4, !dbg !513
  %4 = getelementptr inbounds %struct._wait_q_t, ptr %3, i32 0, i32 0, !dbg !514
  call void @sys_dlist_init(ptr noundef %4), !dbg !515
  ret void, !dbg !516
}

; Function Attrs: noinline nounwind optnone
define internal void @z_object_init(ptr noundef %0) #0 !dbg !517 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !518, metadata !DIExpression()), !dbg !519
  %3 = load ptr, ptr %2, align 4, !dbg !520
  ret void, !dbg !521
}

; Function Attrs: noinline nounwind optnone
define hidden void @z_impl_k_queue_cancel_wait(ptr noundef %0) #0 !dbg !522 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.z_spinlock_key, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca %struct.z_spinlock_key, align 4
  %9 = alloca ptr, align 4
  store ptr %0, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !523, metadata !DIExpression()), !dbg !524
  br label %10, !dbg !525

10:                                               ; preds = %1
  br label %11, !dbg !526

11:                                               ; preds = %10
  call void @llvm.dbg.declare(metadata ptr %8, metadata !528, metadata !DIExpression()), !dbg !533
  %12 = load ptr, ptr %7, align 4, !dbg !534
  %13 = getelementptr inbounds %struct.k_queue, ptr %12, i32 0, i32 1, !dbg !535
  store ptr %13, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !536, metadata !DIExpression()), !dbg !541
  %14 = load ptr, ptr %6, align 4, !dbg !543
  call void @llvm.dbg.declare(metadata ptr %5, metadata !544, metadata !DIExpression()), !dbg !545
  call void @llvm.dbg.declare(metadata ptr %4, metadata !546, metadata !DIExpression()), !dbg !551
  %15 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #4, !dbg !553, !srcloc !554
  store i32 %15, ptr %4, align 4, !dbg !553
  %16 = load i32, ptr %4, align 4, !dbg !555
  store i32 %16, ptr %5, align 4, !dbg !556
  %17 = load ptr, ptr %6, align 4, !dbg !557
  store ptr %17, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !558, metadata !DIExpression()), !dbg !562
  %18 = load ptr, ptr %3, align 4, !dbg !564
  %19 = load ptr, ptr %6, align 4, !dbg !565
  store ptr %19, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !566, metadata !DIExpression()), !dbg !568
  %20 = load ptr, ptr %2, align 4, !dbg !570
  %21 = load i32, ptr %5, align 4, !dbg !571
  %22 = getelementptr inbounds %struct.z_spinlock_key, ptr %8, i32 0, i32 0, !dbg !572
  store i32 %21, ptr %22, align 4, !dbg !572
  call void @llvm.dbg.declare(metadata ptr %9, metadata !573, metadata !DIExpression()), !dbg !574
  %23 = load ptr, ptr %7, align 4, !dbg !575
  %24 = getelementptr inbounds %struct.k_queue, ptr %23, i32 0, i32 2, !dbg !576
  %25 = call ptr @z_unpend_first_thread(ptr noundef %24), !dbg !577
  store ptr %25, ptr %9, align 4, !dbg !578
  %26 = load ptr, ptr %9, align 4, !dbg !579
  %27 = icmp ne ptr %26, null, !dbg !581
  br i1 %27, label %28, label %30, !dbg !582

28:                                               ; preds = %11
  %29 = load ptr, ptr %9, align 4, !dbg !583
  call void @prepare_thread_to_run(ptr noundef %29, ptr noundef null), !dbg !585
  br label %30, !dbg !586

30:                                               ; preds = %28, %11
  %31 = load ptr, ptr %7, align 4, !dbg !587
  call void @handle_poll_events(ptr noundef %31, i32 noundef 8), !dbg !588
  %32 = load ptr, ptr %7, align 4, !dbg !589
  %33 = getelementptr inbounds %struct.k_queue, ptr %32, i32 0, i32 1, !dbg !590
  %34 = getelementptr inbounds %struct.z_spinlock_key, ptr %8, i32 0, i32 0, !dbg !591
  %35 = load [1 x i32], ptr %34, align 4, !dbg !591
  call void @z_reschedule(ptr noundef %33, [1 x i32] %35), !dbg !591
  ret void, !dbg !592
}

declare ptr @z_unpend_first_thread(ptr noundef) #2

; Function Attrs: noinline nounwind optnone
define internal void @prepare_thread_to_run(ptr noundef %0, ptr noundef %1) #0 !dbg !593 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  store ptr %0, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !596, metadata !DIExpression()), !dbg !597
  store ptr %1, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !598, metadata !DIExpression()), !dbg !599
  %10 = load ptr, ptr %8, align 4, !dbg !600
  %11 = load ptr, ptr %9, align 4, !dbg !601
  store ptr %10, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !602, metadata !DIExpression()), !dbg !607
  store i32 0, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !609, metadata !DIExpression()), !dbg !610
  store ptr %11, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !611, metadata !DIExpression()), !dbg !612
  %12 = load ptr, ptr %5, align 4, !dbg !613
  %13 = load i32, ptr %6, align 4, !dbg !614
  store ptr %12, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !615, metadata !DIExpression()), !dbg !620
  store i32 %13, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !622, metadata !DIExpression()), !dbg !623
  %14 = load i32, ptr %4, align 4, !dbg !624
  %15 = load ptr, ptr %3, align 4, !dbg !625
  %16 = getelementptr inbounds %struct.k_thread, ptr %15, i32 0, i32 6, !dbg !626
  %17 = getelementptr inbounds %struct._thread_arch, ptr %16, i32 0, i32 1, !dbg !627
  store i32 %14, ptr %17, align 4, !dbg !628
  %18 = load ptr, ptr %7, align 4, !dbg !629
  %19 = load ptr, ptr %5, align 4, !dbg !630
  %20 = getelementptr inbounds %struct._thread_base, ptr %19, i32 0, i32 6, !dbg !631
  store ptr %18, ptr %20, align 4, !dbg !632
  %21 = load ptr, ptr %8, align 4, !dbg !633
  call void @z_ready_thread(ptr noundef %21), !dbg !634
  ret void, !dbg !635
}

; Function Attrs: noinline nounwind optnone
define internal void @handle_poll_events(ptr noundef %0, i32 noundef %1) #0 !dbg !636 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !639, metadata !DIExpression()), !dbg !640
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !641, metadata !DIExpression()), !dbg !642
  %5 = load ptr, ptr %3, align 4, !dbg !643
  %6 = load i32, ptr %4, align 4, !dbg !644
  ret void, !dbg !645
}

declare void @z_reschedule(ptr noundef, [1 x i32]) #2

; Function Attrs: noinline nounwind optnone
define hidden void @k_queue_insert(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !646 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !649, metadata !DIExpression()), !dbg !650
  store ptr %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !651, metadata !DIExpression()), !dbg !652
  store ptr %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !653, metadata !DIExpression()), !dbg !654
  br label %7, !dbg !655

7:                                                ; preds = %3
  br label %8, !dbg !656

8:                                                ; preds = %7
  %9 = load ptr, ptr %4, align 4, !dbg !658
  %10 = load ptr, ptr %5, align 4, !dbg !659
  %11 = load ptr, ptr %6, align 4, !dbg !660
  %12 = call i32 @queue_insert(ptr noundef %9, ptr noundef %10, ptr noundef %11, i1 noundef zeroext false, i1 noundef zeroext false), !dbg !661
  br label %13, !dbg !662

13:                                               ; preds = %8
  br label %14, !dbg !663

14:                                               ; preds = %13
  ret void, !dbg !665
}

; Function Attrs: noinline nounwind optnone
define internal i32 @queue_insert(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3, i1 noundef zeroext %4) #0 !dbg !666 {
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
  %22 = alloca ptr, align 4
  store ptr %0, ptr %15, align 4
  call void @llvm.dbg.declare(metadata ptr %15, metadata !670, metadata !DIExpression()), !dbg !671
  store ptr %1, ptr %16, align 4
  call void @llvm.dbg.declare(metadata ptr %16, metadata !672, metadata !DIExpression()), !dbg !673
  store ptr %2, ptr %17, align 4
  call void @llvm.dbg.declare(metadata ptr %17, metadata !674, metadata !DIExpression()), !dbg !675
  %23 = zext i1 %3 to i8
  store i8 %23, ptr %18, align 1
  call void @llvm.dbg.declare(metadata ptr %18, metadata !676, metadata !DIExpression()), !dbg !677
  %24 = zext i1 %4 to i8
  store i8 %24, ptr %19, align 1
  call void @llvm.dbg.declare(metadata ptr %19, metadata !678, metadata !DIExpression()), !dbg !679
  call void @llvm.dbg.declare(metadata ptr %20, metadata !680, metadata !DIExpression()), !dbg !681
  call void @llvm.dbg.declare(metadata ptr %21, metadata !682, metadata !DIExpression()), !dbg !683
  %25 = load ptr, ptr %15, align 4, !dbg !684
  %26 = getelementptr inbounds %struct.k_queue, ptr %25, i32 0, i32 1, !dbg !685
  store ptr %26, ptr %13, align 4
  call void @llvm.dbg.declare(metadata ptr %13, metadata !536, metadata !DIExpression()), !dbg !686
  %27 = load ptr, ptr %13, align 4, !dbg !688
  call void @llvm.dbg.declare(metadata ptr %12, metadata !544, metadata !DIExpression()), !dbg !689
  call void @llvm.dbg.declare(metadata ptr %9, metadata !546, metadata !DIExpression()), !dbg !690
  %28 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #4, !dbg !692, !srcloc !554
  store i32 %28, ptr %9, align 4, !dbg !692
  %29 = load i32, ptr %9, align 4, !dbg !693
  store i32 %29, ptr %12, align 4, !dbg !694
  %30 = load ptr, ptr %13, align 4, !dbg !695
  store ptr %30, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !558, metadata !DIExpression()), !dbg !696
  %31 = load ptr, ptr %8, align 4, !dbg !698
  %32 = load ptr, ptr %13, align 4, !dbg !699
  store ptr %32, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !566, metadata !DIExpression()), !dbg !700
  %33 = load ptr, ptr %7, align 4, !dbg !702
  %34 = load i32, ptr %12, align 4, !dbg !703
  %35 = getelementptr inbounds %struct.z_spinlock_key, ptr %21, i32 0, i32 0, !dbg !704
  store i32 %34, ptr %35, align 4, !dbg !704
  br label %36, !dbg !705

36:                                               ; preds = %5
  br label %37, !dbg !706

37:                                               ; preds = %36
  %38 = load i8, ptr %19, align 1, !dbg !708
  %39 = trunc i8 %38 to i1, !dbg !708
  br i1 %39, label %40, label %44, !dbg !710

40:                                               ; preds = %37
  %41 = load ptr, ptr %15, align 4, !dbg !711
  %42 = getelementptr inbounds %struct.k_queue, ptr %41, i32 0, i32 0, !dbg !713
  %43 = call ptr @sys_sflist_peek_tail(ptr noundef %42), !dbg !714
  store ptr %43, ptr %16, align 4, !dbg !715
  br label %44, !dbg !716

44:                                               ; preds = %40, %37
  %45 = load ptr, ptr %15, align 4, !dbg !717
  %46 = getelementptr inbounds %struct.k_queue, ptr %45, i32 0, i32 2, !dbg !718
  %47 = call ptr @z_unpend_first_thread(ptr noundef %46), !dbg !719
  store ptr %47, ptr %20, align 4, !dbg !720
  %48 = load ptr, ptr %20, align 4, !dbg !721
  %49 = icmp ne ptr %48, null, !dbg !723
  br i1 %49, label %50, label %61, !dbg !724

50:                                               ; preds = %44
  br label %51, !dbg !725

51:                                               ; preds = %50
  br label %52, !dbg !727

52:                                               ; preds = %51
  %53 = load ptr, ptr %20, align 4, !dbg !729
  %54 = load ptr, ptr %17, align 4, !dbg !730
  call void @prepare_thread_to_run(ptr noundef %53, ptr noundef %54), !dbg !731
  %55 = load ptr, ptr %15, align 4, !dbg !732
  %56 = getelementptr inbounds %struct.k_queue, ptr %55, i32 0, i32 1, !dbg !733
  %57 = getelementptr inbounds %struct.z_spinlock_key, ptr %21, i32 0, i32 0, !dbg !734
  %58 = load [1 x i32], ptr %57, align 4, !dbg !734
  call void @z_reschedule(ptr noundef %56, [1 x i32] %58), !dbg !734
  br label %59, !dbg !735

59:                                               ; preds = %52
  br label %60, !dbg !736

60:                                               ; preds = %59
  store i32 0, ptr %14, align 4, !dbg !738
  br label %104, !dbg !738

61:                                               ; preds = %44
  %62 = load i8, ptr %18, align 1, !dbg !739
  %63 = trunc i8 %62 to i1, !dbg !739
  br i1 %63, label %64, label %88, !dbg !741

64:                                               ; preds = %61
  call void @llvm.dbg.declare(metadata ptr %22, metadata !742, metadata !DIExpression()), !dbg !744
  %65 = call ptr @z_thread_malloc(i32 noundef 8), !dbg !745
  store ptr %65, ptr %22, align 4, !dbg !746
  %66 = load ptr, ptr %22, align 4, !dbg !747
  %67 = icmp eq ptr %66, null, !dbg !749
  br i1 %67, label %68, label %81, !dbg !750

68:                                               ; preds = %64
  %69 = load ptr, ptr %15, align 4, !dbg !751
  %70 = getelementptr inbounds %struct.k_queue, ptr %69, i32 0, i32 1, !dbg !753
  %71 = getelementptr inbounds %struct.z_spinlock_key, ptr %21, i32 0, i32 0, !dbg !754
  %72 = load [1 x i32], ptr %71, align 4, !dbg !754
  store [1 x i32] %72, ptr %10, align 4
  store ptr %70, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !755, metadata !DIExpression()), !dbg !759
  call void @llvm.dbg.declare(metadata ptr %10, metadata !761, metadata !DIExpression()), !dbg !762
  %73 = load ptr, ptr %11, align 4, !dbg !763
  %74 = load i32, ptr %10, align 4, !dbg !764
  store i32 %74, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !765, metadata !DIExpression()), !dbg !769
  %75 = load i32, ptr %6, align 4, !dbg !771
  %76 = icmp ne i32 %75, 0, !dbg !773
  br i1 %76, label %77, label %78, !dbg !774

77:                                               ; preds = %68
  br label %arch_irq_unlock.exit, !dbg !775

78:                                               ; preds = %68
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #4, !dbg !777, !srcloc !778
  br label %arch_irq_unlock.exit, !dbg !779

arch_irq_unlock.exit:                             ; preds = %77, %78
  br label %79, !dbg !780

79:                                               ; preds = %arch_irq_unlock.exit
  br label %80, !dbg !781

80:                                               ; preds = %79
  store i32 -6, ptr %14, align 4, !dbg !783
  br label %104, !dbg !783

81:                                               ; preds = %64
  %82 = load ptr, ptr %17, align 4, !dbg !784
  %83 = load ptr, ptr %22, align 4, !dbg !785
  %84 = getelementptr inbounds %struct.alloc_node, ptr %83, i32 0, i32 1, !dbg !786
  store ptr %82, ptr %84, align 4, !dbg !787
  %85 = load ptr, ptr %22, align 4, !dbg !788
  %86 = getelementptr inbounds %struct.alloc_node, ptr %85, i32 0, i32 0, !dbg !789
  call void @sys_sfnode_init(ptr noundef %86, i8 noundef zeroext 1), !dbg !790
  %87 = load ptr, ptr %22, align 4, !dbg !791
  store ptr %87, ptr %17, align 4, !dbg !792
  br label %90, !dbg !793

88:                                               ; preds = %61
  %89 = load ptr, ptr %17, align 4, !dbg !794
  call void @sys_sfnode_init(ptr noundef %89, i8 noundef zeroext 0), !dbg !796
  br label %90

90:                                               ; preds = %88, %81
  br label %91, !dbg !797

91:                                               ; preds = %90
  br label %92, !dbg !798

92:                                               ; preds = %91
  %93 = load ptr, ptr %15, align 4, !dbg !800
  %94 = getelementptr inbounds %struct.k_queue, ptr %93, i32 0, i32 0, !dbg !801
  %95 = load ptr, ptr %16, align 4, !dbg !802
  %96 = load ptr, ptr %17, align 4, !dbg !803
  call void @sys_sflist_insert(ptr noundef %94, ptr noundef %95, ptr noundef %96), !dbg !804
  %97 = load ptr, ptr %15, align 4, !dbg !805
  call void @handle_poll_events(ptr noundef %97, i32 noundef 4), !dbg !806
  %98 = load ptr, ptr %15, align 4, !dbg !807
  %99 = getelementptr inbounds %struct.k_queue, ptr %98, i32 0, i32 1, !dbg !808
  %100 = getelementptr inbounds %struct.z_spinlock_key, ptr %21, i32 0, i32 0, !dbg !809
  %101 = load [1 x i32], ptr %100, align 4, !dbg !809
  call void @z_reschedule(ptr noundef %99, [1 x i32] %101), !dbg !809
  br label %102, !dbg !810

102:                                              ; preds = %92
  br label %103, !dbg !811

103:                                              ; preds = %102
  store i32 0, ptr %14, align 4, !dbg !813
  br label %104, !dbg !813

104:                                              ; preds = %103, %80, %60
  %105 = load i32, ptr %14, align 4, !dbg !814
  ret i32 %105, !dbg !814
}

; Function Attrs: noinline nounwind optnone
define hidden void @k_queue_append(ptr noundef %0, ptr noundef %1) #0 !dbg !815 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !818, metadata !DIExpression()), !dbg !819
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !820, metadata !DIExpression()), !dbg !821
  br label %5, !dbg !822

5:                                                ; preds = %2
  br label %6, !dbg !823

6:                                                ; preds = %5
  %7 = load ptr, ptr %3, align 4, !dbg !825
  %8 = load ptr, ptr %4, align 4, !dbg !826
  %9 = call i32 @queue_insert(ptr noundef %7, ptr noundef null, ptr noundef %8, i1 noundef zeroext false, i1 noundef zeroext true), !dbg !827
  br label %10, !dbg !828

10:                                               ; preds = %6
  br label %11, !dbg !829

11:                                               ; preds = %10
  ret void, !dbg !831
}

; Function Attrs: noinline nounwind optnone
define hidden void @k_queue_prepend(ptr noundef %0, ptr noundef %1) #0 !dbg !832 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !833, metadata !DIExpression()), !dbg !834
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !835, metadata !DIExpression()), !dbg !836
  br label %5, !dbg !837

5:                                                ; preds = %2
  br label %6, !dbg !838

6:                                                ; preds = %5
  %7 = load ptr, ptr %3, align 4, !dbg !840
  %8 = load ptr, ptr %4, align 4, !dbg !841
  %9 = call i32 @queue_insert(ptr noundef %7, ptr noundef null, ptr noundef %8, i1 noundef zeroext false, i1 noundef zeroext false), !dbg !842
  br label %10, !dbg !843

10:                                               ; preds = %6
  br label %11, !dbg !844

11:                                               ; preds = %10
  ret void, !dbg !846
}

; Function Attrs: noinline nounwind optnone
define hidden i32 @z_impl_k_queue_alloc_append(ptr noundef %0, ptr noundef %1) #0 !dbg !847 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !850, metadata !DIExpression()), !dbg !851
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !852, metadata !DIExpression()), !dbg !853
  br label %6, !dbg !854

6:                                                ; preds = %2
  br label %7, !dbg !855

7:                                                ; preds = %6
  call void @llvm.dbg.declare(metadata ptr %5, metadata !857, metadata !DIExpression()), !dbg !858
  %8 = load ptr, ptr %3, align 4, !dbg !859
  %9 = load ptr, ptr %4, align 4, !dbg !860
  %10 = call i32 @queue_insert(ptr noundef %8, ptr noundef null, ptr noundef %9, i1 noundef zeroext true, i1 noundef zeroext true), !dbg !861
  store i32 %10, ptr %5, align 4, !dbg !858
  br label %11, !dbg !862

11:                                               ; preds = %7
  br label %12, !dbg !863

12:                                               ; preds = %11
  %13 = load i32, ptr %5, align 4, !dbg !865
  ret i32 %13, !dbg !866
}

; Function Attrs: noinline nounwind optnone
define hidden i32 @z_impl_k_queue_alloc_prepend(ptr noundef %0, ptr noundef %1) #0 !dbg !867 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !868, metadata !DIExpression()), !dbg !869
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !870, metadata !DIExpression()), !dbg !871
  br label %6, !dbg !872

6:                                                ; preds = %2
  br label %7, !dbg !873

7:                                                ; preds = %6
  call void @llvm.dbg.declare(metadata ptr %5, metadata !875, metadata !DIExpression()), !dbg !876
  %8 = load ptr, ptr %3, align 4, !dbg !877
  %9 = load ptr, ptr %4, align 4, !dbg !878
  %10 = call i32 @queue_insert(ptr noundef %8, ptr noundef null, ptr noundef %9, i1 noundef zeroext true, i1 noundef zeroext false), !dbg !879
  store i32 %10, ptr %5, align 4, !dbg !876
  br label %11, !dbg !880

11:                                               ; preds = %7
  br label %12, !dbg !881

12:                                               ; preds = %11
  %13 = load i32, ptr %5, align 4, !dbg !883
  ret i32 %13, !dbg !884
}

; Function Attrs: noinline nounwind optnone
define hidden i32 @k_queue_append_list(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !885 {
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
  call void @llvm.dbg.declare(metadata ptr %10, metadata !888, metadata !DIExpression()), !dbg !889
  store ptr %1, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !890, metadata !DIExpression()), !dbg !891
  store ptr %2, ptr %12, align 4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !892, metadata !DIExpression()), !dbg !893
  br label %15, !dbg !894

15:                                               ; preds = %3
  br label %16, !dbg !895

16:                                               ; preds = %15
  %17 = load ptr, ptr %11, align 4, !dbg !897
  %18 = icmp eq ptr %17, null, !dbg !899
  br i1 %18, label %22, label %19, !dbg !900

19:                                               ; preds = %16
  %20 = load ptr, ptr %12, align 4, !dbg !901
  %21 = icmp eq ptr %20, null, !dbg !902
  br i1 %21, label %22, label %25, !dbg !903

22:                                               ; preds = %19, %16
  br label %23, !dbg !904

23:                                               ; preds = %22
  br label %24, !dbg !906

24:                                               ; preds = %23
  store i32 -5, ptr %9, align 4, !dbg !908
  br label %76, !dbg !908

25:                                               ; preds = %19
  call void @llvm.dbg.declare(metadata ptr %13, metadata !909, metadata !DIExpression()), !dbg !910
  %26 = load ptr, ptr %10, align 4, !dbg !911
  %27 = getelementptr inbounds %struct.k_queue, ptr %26, i32 0, i32 1, !dbg !912
  store ptr %27, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !536, metadata !DIExpression()), !dbg !913
  %28 = load ptr, ptr %8, align 4, !dbg !915
  call void @llvm.dbg.declare(metadata ptr %7, metadata !544, metadata !DIExpression()), !dbg !916
  call void @llvm.dbg.declare(metadata ptr %6, metadata !546, metadata !DIExpression()), !dbg !917
  %29 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #4, !dbg !919, !srcloc !554
  store i32 %29, ptr %6, align 4, !dbg !919
  %30 = load i32, ptr %6, align 4, !dbg !920
  store i32 %30, ptr %7, align 4, !dbg !921
  %31 = load ptr, ptr %8, align 4, !dbg !922
  store ptr %31, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !558, metadata !DIExpression()), !dbg !923
  %32 = load ptr, ptr %5, align 4, !dbg !925
  %33 = load ptr, ptr %8, align 4, !dbg !926
  store ptr %33, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !566, metadata !DIExpression()), !dbg !927
  %34 = load ptr, ptr %4, align 4, !dbg !929
  %35 = load i32, ptr %7, align 4, !dbg !930
  %36 = getelementptr inbounds %struct.z_spinlock_key, ptr %13, i32 0, i32 0, !dbg !931
  store i32 %35, ptr %36, align 4, !dbg !931
  call void @llvm.dbg.declare(metadata ptr %14, metadata !932, metadata !DIExpression()), !dbg !933
  store ptr null, ptr %14, align 4, !dbg !933
  %37 = load ptr, ptr %11, align 4, !dbg !934
  %38 = icmp ne ptr %37, null, !dbg !936
  br i1 %38, label %39, label %43, !dbg !937

39:                                               ; preds = %25
  %40 = load ptr, ptr %10, align 4, !dbg !938
  %41 = getelementptr inbounds %struct.k_queue, ptr %40, i32 0, i32 2, !dbg !940
  %42 = call ptr @z_unpend_first_thread(ptr noundef %41), !dbg !941
  store ptr %42, ptr %14, align 4, !dbg !942
  br label %43, !dbg !943

43:                                               ; preds = %39, %25
  br label %44, !dbg !944

44:                                               ; preds = %52, %43
  %45 = load ptr, ptr %11, align 4, !dbg !945
  %46 = icmp ne ptr %45, null, !dbg !946
  br i1 %46, label %47, label %50, !dbg !947

47:                                               ; preds = %44
  %48 = load ptr, ptr %14, align 4, !dbg !948
  %49 = icmp ne ptr %48, null, !dbg !949
  br label %50

50:                                               ; preds = %47, %44
  %51 = phi i1 [ false, %44 ], [ %49, %47 ], !dbg !950
  br i1 %51, label %52, label %60, !dbg !944

52:                                               ; preds = %50
  %53 = load ptr, ptr %14, align 4, !dbg !951
  %54 = load ptr, ptr %11, align 4, !dbg !953
  call void @prepare_thread_to_run(ptr noundef %53, ptr noundef %54), !dbg !954
  %55 = load ptr, ptr %11, align 4, !dbg !955
  %56 = load ptr, ptr %55, align 4, !dbg !956
  store ptr %56, ptr %11, align 4, !dbg !957
  %57 = load ptr, ptr %10, align 4, !dbg !958
  %58 = getelementptr inbounds %struct.k_queue, ptr %57, i32 0, i32 2, !dbg !959
  %59 = call ptr @z_unpend_first_thread(ptr noundef %58), !dbg !960
  store ptr %59, ptr %14, align 4, !dbg !961
  br label %44, !dbg !944, !llvm.loop !962

60:                                               ; preds = %50
  %61 = load ptr, ptr %11, align 4, !dbg !964
  %62 = icmp ne ptr %61, null, !dbg !966
  br i1 %62, label %63, label %68, !dbg !967

63:                                               ; preds = %60
  %64 = load ptr, ptr %10, align 4, !dbg !968
  %65 = getelementptr inbounds %struct.k_queue, ptr %64, i32 0, i32 0, !dbg !970
  %66 = load ptr, ptr %11, align 4, !dbg !971
  %67 = load ptr, ptr %12, align 4, !dbg !972
  call void @sys_sflist_append_list(ptr noundef %65, ptr noundef %66, ptr noundef %67), !dbg !973
  br label %68, !dbg !974

68:                                               ; preds = %63, %60
  br label %69, !dbg !975

69:                                               ; preds = %68
  br label %70, !dbg !976

70:                                               ; preds = %69
  %71 = load ptr, ptr %10, align 4, !dbg !978
  call void @handle_poll_events(ptr noundef %71, i32 noundef 4), !dbg !979
  %72 = load ptr, ptr %10, align 4, !dbg !980
  %73 = getelementptr inbounds %struct.k_queue, ptr %72, i32 0, i32 1, !dbg !981
  %74 = getelementptr inbounds %struct.z_spinlock_key, ptr %13, i32 0, i32 0, !dbg !982
  %75 = load [1 x i32], ptr %74, align 4, !dbg !982
  call void @z_reschedule(ptr noundef %73, [1 x i32] %75), !dbg !982
  store i32 0, ptr %9, align 4, !dbg !983
  br label %76, !dbg !983

76:                                               ; preds = %70, %24
  %77 = load i32, ptr %9, align 4, !dbg !984
  ret i32 %77, !dbg !984
}

; Function Attrs: noinline nounwind optnone
define internal void @sys_sflist_append_list(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !985 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !988, metadata !DIExpression()), !dbg !989
  store ptr %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !990, metadata !DIExpression()), !dbg !991
  store ptr %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !992, metadata !DIExpression()), !dbg !993
  %7 = load ptr, ptr %5, align 4, !dbg !994
  %8 = icmp ne ptr %7, null, !dbg !996
  br i1 %8, label %9, label %26, !dbg !997

9:                                                ; preds = %3
  %10 = load ptr, ptr %6, align 4, !dbg !998
  %11 = icmp ne ptr %10, null, !dbg !999
  br i1 %11, label %12, label %26, !dbg !1000

12:                                               ; preds = %9
  %13 = load ptr, ptr %4, align 4, !dbg !1001
  %14 = call ptr @sys_sflist_peek_tail(ptr noundef %13), !dbg !1004
  %15 = icmp eq ptr %14, null, !dbg !1005
  br i1 %15, label %16, label %19, !dbg !1006

16:                                               ; preds = %12
  %17 = load ptr, ptr %4, align 4, !dbg !1007
  %18 = load ptr, ptr %5, align 4, !dbg !1009
  call void @z_sflist_head_set(ptr noundef %17, ptr noundef %18), !dbg !1010
  br label %23, !dbg !1011

19:                                               ; preds = %12
  %20 = load ptr, ptr %4, align 4, !dbg !1012
  %21 = call ptr @sys_sflist_peek_tail(ptr noundef %20), !dbg !1014
  %22 = load ptr, ptr %5, align 4, !dbg !1015
  call void @z_sfnode_next_set(ptr noundef %21, ptr noundef %22), !dbg !1016
  br label %23

23:                                               ; preds = %19, %16
  %24 = load ptr, ptr %4, align 4, !dbg !1017
  %25 = load ptr, ptr %6, align 4, !dbg !1018
  call void @z_sflist_tail_set(ptr noundef %24, ptr noundef %25), !dbg !1019
  br label %26, !dbg !1020

26:                                               ; preds = %23, %9, %3
  ret void, !dbg !1021
}

; Function Attrs: noinline nounwind optnone
define hidden i32 @k_queue_merge_slist(ptr noundef %0, ptr noundef %1) #0 !dbg !1022 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1038, metadata !DIExpression()), !dbg !1039
  store ptr %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1040, metadata !DIExpression()), !dbg !1041
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1042, metadata !DIExpression()), !dbg !1043
  br label %7, !dbg !1044

7:                                                ; preds = %2
  br label %8, !dbg !1045

8:                                                ; preds = %7
  %9 = load ptr, ptr %5, align 4, !dbg !1047
  %10 = call zeroext i1 @sys_slist_is_empty(ptr noundef %9), !dbg !1049
  br i1 %10, label %11, label %14, !dbg !1050

11:                                               ; preds = %8
  br label %12, !dbg !1051

12:                                               ; preds = %11
  br label %13, !dbg !1053

13:                                               ; preds = %12
  store i32 -5, ptr %3, align 4, !dbg !1055
  br label %33, !dbg !1055

14:                                               ; preds = %8
  %15 = load ptr, ptr %4, align 4, !dbg !1056
  %16 = load ptr, ptr %5, align 4, !dbg !1057
  %17 = getelementptr inbounds %struct._slist, ptr %16, i32 0, i32 0, !dbg !1058
  %18 = load ptr, ptr %17, align 4, !dbg !1058
  %19 = load ptr, ptr %5, align 4, !dbg !1059
  %20 = getelementptr inbounds %struct._slist, ptr %19, i32 0, i32 1, !dbg !1060
  %21 = load ptr, ptr %20, align 4, !dbg !1060
  %22 = call i32 @k_queue_append_list(ptr noundef %15, ptr noundef %18, ptr noundef %21), !dbg !1061
  store i32 %22, ptr %6, align 4, !dbg !1062
  %23 = load i32, ptr %6, align 4, !dbg !1063
  %24 = icmp ne i32 %23, 0, !dbg !1065
  br i1 %24, label %25, label %29, !dbg !1066

25:                                               ; preds = %14
  br label %26, !dbg !1067

26:                                               ; preds = %25
  br label %27, !dbg !1069

27:                                               ; preds = %26
  %28 = load i32, ptr %6, align 4, !dbg !1071
  store i32 %28, ptr %3, align 4, !dbg !1072
  br label %33, !dbg !1072

29:                                               ; preds = %14
  %30 = load ptr, ptr %5, align 4, !dbg !1073
  call void @sys_slist_init(ptr noundef %30), !dbg !1074
  br label %31, !dbg !1075

31:                                               ; preds = %29
  br label %32, !dbg !1076

32:                                               ; preds = %31
  store i32 0, ptr %3, align 4, !dbg !1078
  br label %33, !dbg !1078

33:                                               ; preds = %32, %27, %13
  %34 = load i32, ptr %3, align 4, !dbg !1079
  ret i32 %34, !dbg !1079
}

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @sys_slist_is_empty(ptr noundef %0) #0 !dbg !1080 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1083, metadata !DIExpression()), !dbg !1084
  %3 = load ptr, ptr %2, align 4, !dbg !1085
  %4 = call ptr @sys_slist_peek_head(ptr noundef %3), !dbg !1086
  %5 = icmp eq ptr %4, null, !dbg !1087
  ret i1 %5, !dbg !1088
}

; Function Attrs: noinline nounwind optnone
define internal void @sys_slist_init(ptr noundef %0) #0 !dbg !1089 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1092, metadata !DIExpression()), !dbg !1093
  %3 = load ptr, ptr %2, align 4, !dbg !1094
  %4 = getelementptr inbounds %struct._slist, ptr %3, i32 0, i32 0, !dbg !1095
  store ptr null, ptr %4, align 4, !dbg !1096
  %5 = load ptr, ptr %2, align 4, !dbg !1097
  %6 = getelementptr inbounds %struct._slist, ptr %5, i32 0, i32 1, !dbg !1098
  store ptr null, ptr %6, align 4, !dbg !1099
  ret void, !dbg !1100
}

; Function Attrs: noinline nounwind optnone
define hidden ptr @z_impl_k_queue_get(ptr noundef %0, [1 x i64] %1) #0 !dbg !1101 {
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
  %20 = alloca %struct.k_timeout_t, align 8
  %21 = alloca i32, align 4
  %22 = getelementptr inbounds %struct.k_timeout_t, ptr %15, i32 0, i32 0
  store [1 x i64] %1, ptr %22, align 8
  store ptr %0, ptr %16, align 4
  call void @llvm.dbg.declare(metadata ptr %16, metadata !1104, metadata !DIExpression()), !dbg !1105
  call void @llvm.dbg.declare(metadata ptr %15, metadata !1106, metadata !DIExpression()), !dbg !1107
  call void @llvm.dbg.declare(metadata ptr %17, metadata !1108, metadata !DIExpression()), !dbg !1109
  %23 = load ptr, ptr %16, align 4, !dbg !1110
  %24 = getelementptr inbounds %struct.k_queue, ptr %23, i32 0, i32 1, !dbg !1111
  store ptr %24, ptr %13, align 4
  call void @llvm.dbg.declare(metadata ptr %13, metadata !536, metadata !DIExpression()), !dbg !1112
  %25 = load ptr, ptr %13, align 4, !dbg !1114
  call void @llvm.dbg.declare(metadata ptr %12, metadata !544, metadata !DIExpression()), !dbg !1115
  call void @llvm.dbg.declare(metadata ptr %7, metadata !546, metadata !DIExpression()), !dbg !1116
  %26 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #4, !dbg !1118, !srcloc !554
  store i32 %26, ptr %7, align 4, !dbg !1118
  %27 = load i32, ptr %7, align 4, !dbg !1119
  store i32 %27, ptr %12, align 4, !dbg !1120
  %28 = load ptr, ptr %13, align 4, !dbg !1121
  store ptr %28, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !558, metadata !DIExpression()), !dbg !1122
  %29 = load ptr, ptr %6, align 4, !dbg !1124
  %30 = load ptr, ptr %13, align 4, !dbg !1125
  store ptr %30, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !566, metadata !DIExpression()), !dbg !1126
  %31 = load ptr, ptr %5, align 4, !dbg !1128
  %32 = load i32, ptr %12, align 4, !dbg !1129
  %33 = getelementptr inbounds %struct.z_spinlock_key, ptr %17, i32 0, i32 0, !dbg !1130
  store i32 %32, ptr %33, align 4, !dbg !1130
  call void @llvm.dbg.declare(metadata ptr %18, metadata !1131, metadata !DIExpression()), !dbg !1132
  br label %34, !dbg !1133

34:                                               ; preds = %2
  br label %35, !dbg !1134

35:                                               ; preds = %34
  %36 = load ptr, ptr %16, align 4, !dbg !1136
  %37 = getelementptr inbounds %struct.k_queue, ptr %36, i32 0, i32 0, !dbg !1138
  %38 = call zeroext i1 @sys_sflist_is_empty(ptr noundef %37), !dbg !1139
  %39 = xor i1 %38, true, !dbg !1140
  %40 = xor i1 %39, true, !dbg !1141
  %41 = xor i1 %40, true, !dbg !1142
  %42 = zext i1 %41 to i32, !dbg !1143
  %43 = icmp ne i32 %42, 0, !dbg !1144
  br i1 %43, label %44, label %63, !dbg !1145

44:                                               ; preds = %35
  call void @llvm.dbg.declare(metadata ptr %19, metadata !1146, metadata !DIExpression()), !dbg !1148
  %45 = load ptr, ptr %16, align 4, !dbg !1149
  %46 = getelementptr inbounds %struct.k_queue, ptr %45, i32 0, i32 0, !dbg !1150
  %47 = call ptr @sys_sflist_get_not_empty(ptr noundef %46), !dbg !1151
  store ptr %47, ptr %19, align 4, !dbg !1152
  %48 = load ptr, ptr %19, align 4, !dbg !1153
  %49 = call ptr @z_queue_node_peek(ptr noundef %48, i1 noundef zeroext true), !dbg !1154
  store ptr %49, ptr %18, align 4, !dbg !1155
  %50 = load ptr, ptr %16, align 4, !dbg !1156
  %51 = getelementptr inbounds %struct.k_queue, ptr %50, i32 0, i32 1, !dbg !1157
  %52 = getelementptr inbounds %struct.z_spinlock_key, ptr %17, i32 0, i32 0, !dbg !1158
  %53 = load [1 x i32], ptr %52, align 4, !dbg !1158
  store [1 x i32] %53, ptr %8, align 4
  store ptr %51, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !755, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.declare(metadata ptr %8, metadata !761, metadata !DIExpression()), !dbg !1161
  %54 = load ptr, ptr %9, align 4, !dbg !1162
  %55 = load i32, ptr %8, align 4, !dbg !1163
  store i32 %55, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !765, metadata !DIExpression()), !dbg !1164
  %56 = load i32, ptr %4, align 4, !dbg !1166
  %57 = icmp ne i32 %56, 0, !dbg !1167
  br i1 %57, label %58, label %59, !dbg !1168

58:                                               ; preds = %44
  br label %arch_irq_unlock.exit, !dbg !1169

59:                                               ; preds = %44
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #4, !dbg !1170, !srcloc !778
  br label %arch_irq_unlock.exit, !dbg !1171

arch_irq_unlock.exit:                             ; preds = %58, %59
  br label %60, !dbg !1172

60:                                               ; preds = %arch_irq_unlock.exit
  br label %61, !dbg !1173

61:                                               ; preds = %60
  %62 = load ptr, ptr %18, align 4, !dbg !1175
  store ptr %62, ptr %14, align 4, !dbg !1176
  br label %105, !dbg !1176

63:                                               ; preds = %35
  br label %64, !dbg !1177

64:                                               ; preds = %63
  br label %65, !dbg !1178

65:                                               ; preds = %64
  %66 = getelementptr inbounds %struct.k_timeout_t, ptr %15, i32 0, i32 0, !dbg !1180
  %67 = load i64, ptr %66, align 8, !dbg !1180
  %68 = getelementptr inbounds %struct.k_timeout_t, ptr %20, i32 0, i32 0, !dbg !1182
  store i64 0, ptr %68, align 8, !dbg !1182
  %69 = icmp eq i64 %67, 0, !dbg !1183
  br i1 %69, label %70, label %83, !dbg !1184

70:                                               ; preds = %65
  %71 = load ptr, ptr %16, align 4, !dbg !1185
  %72 = getelementptr inbounds %struct.k_queue, ptr %71, i32 0, i32 1, !dbg !1187
  %73 = getelementptr inbounds %struct.z_spinlock_key, ptr %17, i32 0, i32 0, !dbg !1188
  %74 = load [1 x i32], ptr %73, align 4, !dbg !1188
  store [1 x i32] %74, ptr %10, align 4
  store ptr %72, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !755, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.declare(metadata ptr %10, metadata !761, metadata !DIExpression()), !dbg !1191
  %75 = load ptr, ptr %11, align 4, !dbg !1192
  %76 = load i32, ptr %10, align 4, !dbg !1193
  store i32 %76, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !765, metadata !DIExpression()), !dbg !1194
  %77 = load i32, ptr %3, align 4, !dbg !1196
  %78 = icmp ne i32 %77, 0, !dbg !1197
  br i1 %78, label %79, label %80, !dbg !1198

79:                                               ; preds = %70
  br label %arch_irq_unlock.exit1, !dbg !1199

80:                                               ; preds = %70
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #4, !dbg !1200, !srcloc !778
  br label %arch_irq_unlock.exit1, !dbg !1201

arch_irq_unlock.exit1:                            ; preds = %79, %80
  br label %81, !dbg !1202

81:                                               ; preds = %arch_irq_unlock.exit1
  br label %82, !dbg !1203

82:                                               ; preds = %81
  store ptr null, ptr %14, align 4, !dbg !1205
  br label %105, !dbg !1205

83:                                               ; preds = %65
  call void @llvm.dbg.declare(metadata ptr %21, metadata !1206, metadata !DIExpression()), !dbg !1207
  %84 = load ptr, ptr %16, align 4, !dbg !1208
  %85 = getelementptr inbounds %struct.k_queue, ptr %84, i32 0, i32 1, !dbg !1209
  %86 = load ptr, ptr %16, align 4, !dbg !1210
  %87 = getelementptr inbounds %struct.k_queue, ptr %86, i32 0, i32 2, !dbg !1211
  %88 = getelementptr inbounds %struct.z_spinlock_key, ptr %17, i32 0, i32 0, !dbg !1212
  %89 = load [1 x i32], ptr %88, align 4, !dbg !1212
  %90 = getelementptr inbounds %struct.k_timeout_t, ptr %15, i32 0, i32 0, !dbg !1212
  %91 = load [1 x i64], ptr %90, align 8, !dbg !1212
  %92 = call i32 @z_pend_curr(ptr noundef %85, [1 x i32] %89, ptr noundef %87, [1 x i64] %91), !dbg !1212
  store i32 %92, ptr %21, align 4, !dbg !1207
  br label %93, !dbg !1213

93:                                               ; preds = %83
  br label %94, !dbg !1214

94:                                               ; preds = %93
  %95 = load i32, ptr %21, align 4, !dbg !1216
  %96 = icmp ne i32 %95, 0, !dbg !1217
  br i1 %96, label %97, label %98, !dbg !1218

97:                                               ; preds = %94
  br label %103, !dbg !1218

98:                                               ; preds = %94
  %99 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !1219
  %100 = getelementptr inbounds %struct.k_thread, ptr %99, i32 0, i32 0, !dbg !1220
  %101 = getelementptr inbounds %struct._thread_base, ptr %100, i32 0, i32 6, !dbg !1221
  %102 = load ptr, ptr %101, align 4, !dbg !1221
  br label %103, !dbg !1218

103:                                              ; preds = %98, %97
  %104 = phi ptr [ null, %97 ], [ %102, %98 ], !dbg !1218
  store ptr %104, ptr %14, align 4, !dbg !1222
  br label %105, !dbg !1222

105:                                              ; preds = %103, %82, %61
  %106 = load ptr, ptr %14, align 4, !dbg !1223
  ret ptr %106, !dbg !1223
}

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @sys_sflist_is_empty(ptr noundef %0) #0 !dbg !1224 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1227, metadata !DIExpression()), !dbg !1228
  %3 = load ptr, ptr %2, align 4, !dbg !1229
  %4 = call ptr @sys_sflist_peek_head(ptr noundef %3), !dbg !1230
  %5 = icmp eq ptr %4, null, !dbg !1231
  ret i1 %5, !dbg !1232
}

; Function Attrs: noinline nounwind optnone
define internal ptr @sys_sflist_get_not_empty(ptr noundef %0) #0 !dbg !1233 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1236, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1238, metadata !DIExpression()), !dbg !1239
  %4 = load ptr, ptr %2, align 4, !dbg !1240
  %5 = call ptr @sys_sflist_peek_head(ptr noundef %4), !dbg !1241
  store ptr %5, ptr %3, align 4, !dbg !1239
  %6 = load ptr, ptr %2, align 4, !dbg !1242
  %7 = load ptr, ptr %3, align 4, !dbg !1243
  %8 = call ptr @z_sfnode_next_peek(ptr noundef %7), !dbg !1244
  call void @z_sflist_head_set(ptr noundef %6, ptr noundef %8), !dbg !1245
  %9 = load ptr, ptr %2, align 4, !dbg !1246
  %10 = call ptr @sys_sflist_peek_tail(ptr noundef %9), !dbg !1248
  %11 = load ptr, ptr %3, align 4, !dbg !1249
  %12 = icmp eq ptr %10, %11, !dbg !1250
  br i1 %12, label %13, label %17, !dbg !1251

13:                                               ; preds = %1
  %14 = load ptr, ptr %2, align 4, !dbg !1252
  %15 = load ptr, ptr %2, align 4, !dbg !1254
  %16 = call ptr @sys_sflist_peek_head(ptr noundef %15), !dbg !1255
  call void @z_sflist_tail_set(ptr noundef %14, ptr noundef %16), !dbg !1256
  br label %17, !dbg !1257

17:                                               ; preds = %13, %1
  %18 = load ptr, ptr %3, align 4, !dbg !1258
  ret ptr %18, !dbg !1259
}

declare i32 @z_pend_curr(ptr noundef, [1 x i32], ptr noundef, [1 x i64]) #2

; Function Attrs: noinline nounwind optnone
define hidden zeroext i1 @k_queue_remove(ptr noundef %0, ptr noundef %1) #0 !dbg !1260 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i8, align 1
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1263, metadata !DIExpression()), !dbg !1264
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1265, metadata !DIExpression()), !dbg !1266
  br label %6, !dbg !1267

6:                                                ; preds = %2
  br label %7, !dbg !1268

7:                                                ; preds = %6
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1270, metadata !DIExpression()), !dbg !1271
  %8 = load ptr, ptr %3, align 4, !dbg !1272
  %9 = getelementptr inbounds %struct.k_queue, ptr %8, i32 0, i32 0, !dbg !1273
  %10 = load ptr, ptr %4, align 4, !dbg !1274
  %11 = call zeroext i1 @sys_sflist_find_and_remove(ptr noundef %9, ptr noundef %10), !dbg !1275
  %12 = zext i1 %11 to i8, !dbg !1271
  store i8 %12, ptr %5, align 1, !dbg !1271
  br label %13, !dbg !1276

13:                                               ; preds = %7
  br label %14, !dbg !1277

14:                                               ; preds = %13
  %15 = load i8, ptr %5, align 1, !dbg !1279
  %16 = trunc i8 %15 to i1, !dbg !1279
  ret i1 %16, !dbg !1280
}

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @sys_sflist_find_and_remove(ptr noundef %0, ptr noundef %1) #0 !dbg !1281 {
  %3 = alloca i1, align 1
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1284, metadata !DIExpression()), !dbg !1285
  store ptr %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1286, metadata !DIExpression()), !dbg !1287
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1288, metadata !DIExpression()), !dbg !1289
  store ptr null, ptr %6, align 4, !dbg !1289
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1290, metadata !DIExpression()), !dbg !1291
  %8 = load ptr, ptr %4, align 4, !dbg !1292
  %9 = call ptr @sys_sflist_peek_head(ptr noundef %8), !dbg !1294
  store ptr %9, ptr %7, align 4, !dbg !1295
  br label %10, !dbg !1296

10:                                               ; preds = %23, %2
  %11 = load ptr, ptr %7, align 4, !dbg !1297
  %12 = icmp ne ptr %11, null, !dbg !1299
  br i1 %12, label %13, label %26, !dbg !1300

13:                                               ; preds = %10
  %14 = load ptr, ptr %7, align 4, !dbg !1301
  %15 = load ptr, ptr %5, align 4, !dbg !1304
  %16 = icmp eq ptr %14, %15, !dbg !1305
  br i1 %16, label %17, label %21, !dbg !1306

17:                                               ; preds = %13
  %18 = load ptr, ptr %4, align 4, !dbg !1307
  %19 = load ptr, ptr %6, align 4, !dbg !1309
  %20 = load ptr, ptr %5, align 4, !dbg !1310
  call void @sys_sflist_remove(ptr noundef %18, ptr noundef %19, ptr noundef %20), !dbg !1311
  store i1 true, ptr %3, align 1, !dbg !1312
  br label %27, !dbg !1312

21:                                               ; preds = %13
  %22 = load ptr, ptr %7, align 4, !dbg !1313
  store ptr %22, ptr %6, align 4, !dbg !1314
  br label %23, !dbg !1315

23:                                               ; preds = %21
  %24 = load ptr, ptr %7, align 4, !dbg !1316
  %25 = call ptr @sys_sflist_peek_next(ptr noundef %24), !dbg !1317
  store ptr %25, ptr %7, align 4, !dbg !1318
  br label %10, !dbg !1319, !llvm.loop !1320

26:                                               ; preds = %10
  store i1 false, ptr %3, align 1, !dbg !1322
  br label %27, !dbg !1322

27:                                               ; preds = %26, %17
  %28 = load i1, ptr %3, align 1, !dbg !1323
  ret i1 %28, !dbg !1323
}

; Function Attrs: noinline nounwind optnone
define hidden zeroext i1 @k_queue_unique_append(ptr noundef %0, ptr noundef %1) #0 !dbg !1324 {
  %3 = alloca i1, align 1
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1325, metadata !DIExpression()), !dbg !1326
  store ptr %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1327, metadata !DIExpression()), !dbg !1328
  br label %7, !dbg !1329

7:                                                ; preds = %2
  br label %8, !dbg !1330

8:                                                ; preds = %7
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1332, metadata !DIExpression()), !dbg !1333
  %9 = load ptr, ptr %4, align 4, !dbg !1334
  %10 = getelementptr inbounds %struct.k_queue, ptr %9, i32 0, i32 0, !dbg !1336
  %11 = call ptr @sys_sflist_peek_head(ptr noundef %10), !dbg !1337
  store ptr %11, ptr %6, align 4, !dbg !1338
  br label %12, !dbg !1339

12:                                               ; preds = %23, %8
  %13 = load ptr, ptr %6, align 4, !dbg !1340
  %14 = icmp ne ptr %13, null, !dbg !1342
  br i1 %14, label %15, label %26, !dbg !1343

15:                                               ; preds = %12
  %16 = load ptr, ptr %6, align 4, !dbg !1344
  %17 = load ptr, ptr %5, align 4, !dbg !1347
  %18 = icmp eq ptr %16, %17, !dbg !1348
  br i1 %18, label %19, label %22, !dbg !1349

19:                                               ; preds = %15
  br label %20, !dbg !1350

20:                                               ; preds = %19
  br label %21, !dbg !1352

21:                                               ; preds = %20
  store i1 false, ptr %3, align 1, !dbg !1354
  br label %31, !dbg !1354

22:                                               ; preds = %15
  br label %23, !dbg !1355

23:                                               ; preds = %22
  %24 = load ptr, ptr %6, align 4, !dbg !1356
  %25 = call ptr @sys_sflist_peek_next(ptr noundef %24), !dbg !1357
  store ptr %25, ptr %6, align 4, !dbg !1358
  br label %12, !dbg !1359, !llvm.loop !1360

26:                                               ; preds = %12
  %27 = load ptr, ptr %4, align 4, !dbg !1362
  %28 = load ptr, ptr %5, align 4, !dbg !1363
  call void @k_queue_append(ptr noundef %27, ptr noundef %28), !dbg !1364
  br label %29, !dbg !1365

29:                                               ; preds = %26
  br label %30, !dbg !1366

30:                                               ; preds = %29
  store i1 true, ptr %3, align 1, !dbg !1368
  br label %31, !dbg !1368

31:                                               ; preds = %30, %21
  %32 = load i1, ptr %3, align 1, !dbg !1369
  ret i1 %32, !dbg !1369
}

; Function Attrs: noinline nounwind optnone
define internal ptr @sys_sflist_peek_head(ptr noundef %0) #0 !dbg !1370 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1371, metadata !DIExpression()), !dbg !1372
  %3 = load ptr, ptr %2, align 4, !dbg !1373
  %4 = getelementptr inbounds %struct._sflist, ptr %3, i32 0, i32 0, !dbg !1374
  %5 = load ptr, ptr %4, align 4, !dbg !1374
  ret ptr %5, !dbg !1375
}

; Function Attrs: noinline nounwind optnone
define internal ptr @sys_sflist_peek_next(ptr noundef %0) #0 !dbg !1376 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1379, metadata !DIExpression()), !dbg !1380
  %3 = load ptr, ptr %2, align 4, !dbg !1381
  %4 = icmp ne ptr %3, null, !dbg !1382
  br i1 %4, label %5, label %8, !dbg !1381

5:                                                ; preds = %1
  %6 = load ptr, ptr %2, align 4, !dbg !1383
  %7 = call ptr @sys_sflist_peek_next_no_check(ptr noundef %6), !dbg !1384
  br label %9, !dbg !1381

8:                                                ; preds = %1
  br label %9, !dbg !1381

9:                                                ; preds = %8, %5
  %10 = phi ptr [ %7, %5 ], [ null, %8 ], !dbg !1381
  ret ptr %10, !dbg !1385
}

; Function Attrs: noinline nounwind optnone
define hidden ptr @z_impl_k_queue_peek_head(ptr noundef %0) #0 !dbg !1386 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1389, metadata !DIExpression()), !dbg !1390
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1391, metadata !DIExpression()), !dbg !1392
  %4 = load ptr, ptr %2, align 4, !dbg !1393
  %5 = getelementptr inbounds %struct.k_queue, ptr %4, i32 0, i32 0, !dbg !1394
  %6 = call ptr @sys_sflist_peek_head(ptr noundef %5), !dbg !1395
  %7 = call ptr @z_queue_node_peek(ptr noundef %6, i1 noundef zeroext false), !dbg !1396
  store ptr %7, ptr %3, align 4, !dbg !1392
  br label %8, !dbg !1397

8:                                                ; preds = %1
  br label %9, !dbg !1398

9:                                                ; preds = %8
  %10 = load ptr, ptr %3, align 4, !dbg !1400
  ret ptr %10, !dbg !1401
}

; Function Attrs: noinline nounwind optnone
define hidden ptr @z_impl_k_queue_peek_tail(ptr noundef %0) #0 !dbg !1402 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1403, metadata !DIExpression()), !dbg !1404
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1405, metadata !DIExpression()), !dbg !1406
  %4 = load ptr, ptr %2, align 4, !dbg !1407
  %5 = getelementptr inbounds %struct.k_queue, ptr %4, i32 0, i32 0, !dbg !1408
  %6 = call ptr @sys_sflist_peek_tail(ptr noundef %5), !dbg !1409
  %7 = call ptr @z_queue_node_peek(ptr noundef %6, i1 noundef zeroext false), !dbg !1410
  store ptr %7, ptr %3, align 4, !dbg !1406
  br label %8, !dbg !1411

8:                                                ; preds = %1
  br label %9, !dbg !1412

9:                                                ; preds = %8
  %10 = load ptr, ptr %3, align 4, !dbg !1414
  ret ptr %10, !dbg !1415
}

; Function Attrs: noinline nounwind optnone
define internal ptr @sys_sflist_peek_tail(ptr noundef %0) #0 !dbg !1416 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1417, metadata !DIExpression()), !dbg !1418
  %3 = load ptr, ptr %2, align 4, !dbg !1419
  %4 = getelementptr inbounds %struct._sflist, ptr %3, i32 0, i32 1, !dbg !1420
  %5 = load ptr, ptr %4, align 4, !dbg !1420
  ret ptr %5, !dbg !1421
}

declare i64 @z_timeout_expires(ptr noundef) #2

declare i64 @z_timeout_remaining(ptr noundef) #2

; Function Attrs: noinline nounwind optnone
define internal void @sys_dlist_init(ptr noundef %0) #0 !dbg !1422 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1426, metadata !DIExpression()), !dbg !1427
  %3 = load ptr, ptr %2, align 4, !dbg !1428
  %4 = load ptr, ptr %2, align 4, !dbg !1429
  %5 = getelementptr inbounds %struct._dnode, ptr %4, i32 0, i32 0, !dbg !1430
  store ptr %3, ptr %5, align 4, !dbg !1431
  %6 = load ptr, ptr %2, align 4, !dbg !1432
  %7 = load ptr, ptr %2, align 4, !dbg !1433
  %8 = getelementptr inbounds %struct._dnode, ptr %7, i32 0, i32 1, !dbg !1434
  store ptr %6, ptr %8, align 4, !dbg !1435
  ret void, !dbg !1436
}

declare void @z_ready_thread(ptr noundef) #2

; Function Attrs: noinline nounwind optnone
define internal ptr @z_thread_malloc(i32 noundef %0) #0 !dbg !1437 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1442, metadata !DIExpression()), !dbg !1443
  %3 = load i32, ptr %2, align 4, !dbg !1444
  %4 = call ptr @z_thread_aligned_alloc(i32 noundef 0, i32 noundef %3), !dbg !1445
  ret ptr %4, !dbg !1446
}

; Function Attrs: noinline nounwind optnone
define internal void @sys_sfnode_init(ptr noundef %0, i8 noundef zeroext %1) #0 !dbg !1447 {
  %3 = alloca ptr, align 4
  %4 = alloca i8, align 1
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1450, metadata !DIExpression()), !dbg !1451
  store i8 %1, ptr %4, align 1
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1452, metadata !DIExpression()), !dbg !1453
  %5 = load i8, ptr %4, align 1, !dbg !1454
  %6 = zext i8 %5 to i32, !dbg !1454
  %7 = load ptr, ptr %3, align 4, !dbg !1455
  %8 = getelementptr inbounds %struct._sfnode, ptr %7, i32 0, i32 0, !dbg !1456
  store i32 %6, ptr %8, align 4, !dbg !1457
  ret void, !dbg !1458
}

; Function Attrs: noinline nounwind optnone
define internal void @sys_sflist_insert(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !1459 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1462, metadata !DIExpression()), !dbg !1463
  store ptr %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1464, metadata !DIExpression()), !dbg !1465
  store ptr %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1466, metadata !DIExpression()), !dbg !1467
  %7 = load ptr, ptr %5, align 4, !dbg !1468
  %8 = icmp eq ptr %7, null, !dbg !1470
  br i1 %8, label %9, label %12, !dbg !1471

9:                                                ; preds = %3
  %10 = load ptr, ptr %4, align 4, !dbg !1472
  %11 = load ptr, ptr %6, align 4, !dbg !1474
  call void @sys_sflist_prepend(ptr noundef %10, ptr noundef %11), !dbg !1475
  br label %26, !dbg !1476

12:                                               ; preds = %3
  %13 = load ptr, ptr %5, align 4, !dbg !1477
  %14 = call ptr @z_sfnode_next_peek(ptr noundef %13), !dbg !1479
  %15 = icmp eq ptr %14, null, !dbg !1480
  br i1 %15, label %16, label %19, !dbg !1481

16:                                               ; preds = %12
  %17 = load ptr, ptr %4, align 4, !dbg !1482
  %18 = load ptr, ptr %6, align 4, !dbg !1484
  call void @sys_sflist_append(ptr noundef %17, ptr noundef %18), !dbg !1485
  br label %25, !dbg !1486

19:                                               ; preds = %12
  %20 = load ptr, ptr %6, align 4, !dbg !1487
  %21 = load ptr, ptr %5, align 4, !dbg !1489
  %22 = call ptr @z_sfnode_next_peek(ptr noundef %21), !dbg !1490
  call void @z_sfnode_next_set(ptr noundef %20, ptr noundef %22), !dbg !1491
  %23 = load ptr, ptr %5, align 4, !dbg !1492
  %24 = load ptr, ptr %6, align 4, !dbg !1493
  call void @z_sfnode_next_set(ptr noundef %23, ptr noundef %24), !dbg !1494
  br label %25

25:                                               ; preds = %19, %16
  br label %26

26:                                               ; preds = %25, %9
  ret void, !dbg !1495
}

declare ptr @z_thread_aligned_alloc(i32 noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone
define internal void @sys_sflist_prepend(ptr noundef %0, ptr noundef %1) #0 !dbg !1496 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1499, metadata !DIExpression()), !dbg !1500
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1501, metadata !DIExpression()), !dbg !1502
  %5 = load ptr, ptr %4, align 4, !dbg !1503
  %6 = load ptr, ptr %3, align 4, !dbg !1504
  %7 = call ptr @sys_sflist_peek_head(ptr noundef %6), !dbg !1505
  call void @z_sfnode_next_set(ptr noundef %5, ptr noundef %7), !dbg !1506
  %8 = load ptr, ptr %3, align 4, !dbg !1507
  %9 = load ptr, ptr %4, align 4, !dbg !1508
  call void @z_sflist_head_set(ptr noundef %8, ptr noundef %9), !dbg !1509
  %10 = load ptr, ptr %3, align 4, !dbg !1510
  %11 = call ptr @sys_sflist_peek_tail(ptr noundef %10), !dbg !1512
  %12 = icmp eq ptr %11, null, !dbg !1513
  br i1 %12, label %13, label %17, !dbg !1514

13:                                               ; preds = %2
  %14 = load ptr, ptr %3, align 4, !dbg !1515
  %15 = load ptr, ptr %3, align 4, !dbg !1517
  %16 = call ptr @sys_sflist_peek_head(ptr noundef %15), !dbg !1518
  call void @z_sflist_tail_set(ptr noundef %14, ptr noundef %16), !dbg !1519
  br label %17, !dbg !1520

17:                                               ; preds = %13, %2
  ret void, !dbg !1521
}

; Function Attrs: noinline nounwind optnone
define internal ptr @z_sfnode_next_peek(ptr noundef %0) #0 !dbg !1522 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1523, metadata !DIExpression()), !dbg !1524
  %3 = load ptr, ptr %2, align 4, !dbg !1525
  %4 = getelementptr inbounds %struct._sfnode, ptr %3, i32 0, i32 0, !dbg !1526
  %5 = load i32, ptr %4, align 4, !dbg !1526
  %6 = and i32 %5, -4, !dbg !1527
  %7 = inttoptr i32 %6 to ptr, !dbg !1528
  ret ptr %7, !dbg !1529
}

; Function Attrs: noinline nounwind optnone
define internal void @sys_sflist_append(ptr noundef %0, ptr noundef %1) #0 !dbg !1530 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1531, metadata !DIExpression()), !dbg !1532
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1533, metadata !DIExpression()), !dbg !1534
  %5 = load ptr, ptr %4, align 4, !dbg !1535
  call void @z_sfnode_next_set(ptr noundef %5, ptr noundef null), !dbg !1536
  %6 = load ptr, ptr %3, align 4, !dbg !1537
  %7 = call ptr @sys_sflist_peek_tail(ptr noundef %6), !dbg !1539
  %8 = icmp eq ptr %7, null, !dbg !1540
  br i1 %8, label %9, label %14, !dbg !1541

9:                                                ; preds = %2
  %10 = load ptr, ptr %3, align 4, !dbg !1542
  %11 = load ptr, ptr %4, align 4, !dbg !1544
  call void @z_sflist_tail_set(ptr noundef %10, ptr noundef %11), !dbg !1545
  %12 = load ptr, ptr %3, align 4, !dbg !1546
  %13 = load ptr, ptr %4, align 4, !dbg !1547
  call void @z_sflist_head_set(ptr noundef %12, ptr noundef %13), !dbg !1548
  br label %20, !dbg !1549

14:                                               ; preds = %2
  %15 = load ptr, ptr %3, align 4, !dbg !1550
  %16 = call ptr @sys_sflist_peek_tail(ptr noundef %15), !dbg !1552
  %17 = load ptr, ptr %4, align 4, !dbg !1553
  call void @z_sfnode_next_set(ptr noundef %16, ptr noundef %17), !dbg !1554
  %18 = load ptr, ptr %3, align 4, !dbg !1555
  %19 = load ptr, ptr %4, align 4, !dbg !1556
  call void @z_sflist_tail_set(ptr noundef %18, ptr noundef %19), !dbg !1557
  br label %20

20:                                               ; preds = %14, %9
  ret void, !dbg !1558
}

; Function Attrs: noinline nounwind optnone
define internal void @z_sfnode_next_set(ptr noundef %0, ptr noundef %1) #0 !dbg !1559 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i8, align 1
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1562, metadata !DIExpression()), !dbg !1563
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1564, metadata !DIExpression()), !dbg !1565
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1566, metadata !DIExpression()), !dbg !1567
  %6 = load ptr, ptr %3, align 4, !dbg !1568
  %7 = call zeroext i8 @sys_sfnode_flags_get(ptr noundef %6), !dbg !1569
  store i8 %7, ptr %5, align 1, !dbg !1567
  %8 = load i8, ptr %5, align 1, !dbg !1570
  %9 = zext i8 %8 to i32, !dbg !1570
  %10 = load ptr, ptr %4, align 4, !dbg !1571
  %11 = ptrtoint ptr %10 to i32, !dbg !1572
  %12 = or i32 %9, %11, !dbg !1573
  %13 = load ptr, ptr %3, align 4, !dbg !1574
  %14 = getelementptr inbounds %struct._sfnode, ptr %13, i32 0, i32 0, !dbg !1575
  store i32 %12, ptr %14, align 4, !dbg !1576
  ret void, !dbg !1577
}

; Function Attrs: noinline nounwind optnone
define internal void @z_sflist_head_set(ptr noundef %0, ptr noundef %1) #0 !dbg !1578 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1579, metadata !DIExpression()), !dbg !1580
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1581, metadata !DIExpression()), !dbg !1582
  %5 = load ptr, ptr %4, align 4, !dbg !1583
  %6 = load ptr, ptr %3, align 4, !dbg !1584
  %7 = getelementptr inbounds %struct._sflist, ptr %6, i32 0, i32 0, !dbg !1585
  store ptr %5, ptr %7, align 4, !dbg !1586
  ret void, !dbg !1587
}

; Function Attrs: noinline nounwind optnone
define internal void @z_sflist_tail_set(ptr noundef %0, ptr noundef %1) #0 !dbg !1588 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1589, metadata !DIExpression()), !dbg !1590
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1591, metadata !DIExpression()), !dbg !1592
  %5 = load ptr, ptr %4, align 4, !dbg !1593
  %6 = load ptr, ptr %3, align 4, !dbg !1594
  %7 = getelementptr inbounds %struct._sflist, ptr %6, i32 0, i32 1, !dbg !1595
  store ptr %5, ptr %7, align 4, !dbg !1596
  ret void, !dbg !1597
}

; Function Attrs: noinline nounwind optnone
define internal ptr @sys_slist_peek_head(ptr noundef %0) #0 !dbg !1598 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1601, metadata !DIExpression()), !dbg !1602
  %3 = load ptr, ptr %2, align 4, !dbg !1603
  %4 = getelementptr inbounds %struct._slist, ptr %3, i32 0, i32 0, !dbg !1604
  %5 = load ptr, ptr %4, align 4, !dbg !1604
  ret ptr %5, !dbg !1605
}

; Function Attrs: noinline nounwind optnone
define internal void @sys_sflist_remove(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !1606 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1607, metadata !DIExpression()), !dbg !1608
  store ptr %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1609, metadata !DIExpression()), !dbg !1610
  store ptr %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1611, metadata !DIExpression()), !dbg !1612
  %7 = load ptr, ptr %5, align 4, !dbg !1613
  %8 = icmp eq ptr %7, null, !dbg !1615
  br i1 %8, label %9, label %22, !dbg !1616

9:                                                ; preds = %3
  %10 = load ptr, ptr %4, align 4, !dbg !1617
  %11 = load ptr, ptr %6, align 4, !dbg !1619
  %12 = call ptr @z_sfnode_next_peek(ptr noundef %11), !dbg !1620
  call void @z_sflist_head_set(ptr noundef %10, ptr noundef %12), !dbg !1621
  %13 = load ptr, ptr %4, align 4, !dbg !1622
  %14 = call ptr @sys_sflist_peek_tail(ptr noundef %13), !dbg !1624
  %15 = load ptr, ptr %6, align 4, !dbg !1625
  %16 = icmp eq ptr %14, %15, !dbg !1626
  br i1 %16, label %17, label %21, !dbg !1627

17:                                               ; preds = %9
  %18 = load ptr, ptr %4, align 4, !dbg !1628
  %19 = load ptr, ptr %4, align 4, !dbg !1630
  %20 = call ptr @sys_sflist_peek_head(ptr noundef %19), !dbg !1631
  call void @z_sflist_tail_set(ptr noundef %18, ptr noundef %20), !dbg !1632
  br label %21, !dbg !1633

21:                                               ; preds = %17, %9
  br label %34, !dbg !1634

22:                                               ; preds = %3
  %23 = load ptr, ptr %5, align 4, !dbg !1635
  %24 = load ptr, ptr %6, align 4, !dbg !1637
  %25 = call ptr @z_sfnode_next_peek(ptr noundef %24), !dbg !1638
  call void @z_sfnode_next_set(ptr noundef %23, ptr noundef %25), !dbg !1639
  %26 = load ptr, ptr %4, align 4, !dbg !1640
  %27 = call ptr @sys_sflist_peek_tail(ptr noundef %26), !dbg !1642
  %28 = load ptr, ptr %6, align 4, !dbg !1643
  %29 = icmp eq ptr %27, %28, !dbg !1644
  br i1 %29, label %30, label %33, !dbg !1645

30:                                               ; preds = %22
  %31 = load ptr, ptr %4, align 4, !dbg !1646
  %32 = load ptr, ptr %5, align 4, !dbg !1648
  call void @z_sflist_tail_set(ptr noundef %31, ptr noundef %32), !dbg !1649
  br label %33, !dbg !1650

33:                                               ; preds = %30, %22
  br label %34

34:                                               ; preds = %33, %21
  %35 = load ptr, ptr %6, align 4, !dbg !1651
  call void @z_sfnode_next_set(ptr noundef %35, ptr noundef null), !dbg !1652
  ret void, !dbg !1653
}

; Function Attrs: noinline nounwind optnone
define internal ptr @sys_sflist_peek_next_no_check(ptr noundef %0) #0 !dbg !1654 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1655, metadata !DIExpression()), !dbg !1656
  %3 = load ptr, ptr %2, align 4, !dbg !1657
  %4 = call ptr @z_sfnode_next_peek(ptr noundef %3), !dbg !1658
  ret ptr %4, !dbg !1659
}

attributes #0 = { noinline nounwind optnone "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!137, !138, !139, !140, !141, !142, !143, !144}
!llvm.ident = !{!145}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !97, splitDebugInlining: false, nameTableKind: None)
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
!143 = !{i32 8, !"PIC Level", i32 2}
!144 = !{i32 7, !"PIE Level", i32 2}
!145 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
!146 = distinct !DISubprogram(name: "z_impl_k_object_access_grant", scope: !16, file: !16, line: 223, type: !147, scopeLine: 225, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !244)
!147 = !DISubroutineType(types: !148)
!148 = !{null, !149, !151}
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 32)
!150 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 32)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_thread", file: !153, line: 250, size: 896, elements: !154)
!153 = !DIFile(filename: "include/zephyr/kernel/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!154 = !{!155, !209, !222, !223, !224, !225, !245}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !152, file: !153, line: 252, baseType: !156, size: 384)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_base", file: !153, line: 58, size: 384, elements: !157)
!157 = !{!158, !171, !179, !180, !181, !194, !195, !196}
!158 = !DIDerivedType(tag: DW_TAG_member, scope: !156, file: !153, line: 61, baseType: !159, size: 64)
!159 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !156, file: !153, line: 61, size: 64, elements: !160)
!160 = !{!161, !162}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_dlist", scope: !159, file: !153, line: 62, baseType: !122, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_rb", scope: !159, file: !153, line: 63, baseType: !163, size: 64)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rbnode", file: !164, line: 58, size: 64, elements: !165)
!164 = !DIFile(filename: "include/zephyr/sys/rb.h", directory: "/home/sri/zephyrproject/zephyr")
!165 = !{!166}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !163, file: !164, line: 60, baseType: !167, size: 64)
!167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 64, elements: !169)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 32)
!169 = !{!170}
!170 = !DISubrange(count: 2)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "pended_on", scope: !156, file: !153, line: 69, baseType: !172, size: 32, offset: 64)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 32)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "_wait_q_t", file: !174, line: 243, baseType: !175)
!174 = !DIFile(filename: "include/zephyr/kernel_structs.h", directory: "/home/sri/zephyrproject/zephyr")
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !174, line: 241, size: 64, elements: !176)
!176 = !{!177}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !175, file: !174, line: 242, baseType: !178, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dlist_t", file: !123, line: 51, baseType: !124)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "user_options", scope: !156, file: !153, line: 72, baseType: !98, size: 8, offset: 96)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "thread_state", scope: !156, file: !153, line: 75, baseType: !98, size: 8, offset: 104)
!181 = !DIDerivedType(tag: DW_TAG_member, scope: !156, file: !153, line: 91, baseType: !182, size: 16, offset: 112)
!182 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !156, file: !153, line: 91, size: 16, elements: !183)
!183 = !{!184, !191}
!184 = !DIDerivedType(tag: DW_TAG_member, scope: !182, file: !153, line: 92, baseType: !185, size: 16)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !182, file: !153, line: 92, size: 16, elements: !186)
!186 = !{!187, !190}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !185, file: !153, line: 97, baseType: !188, size: 8)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !99, line: 56, baseType: !189)
!189 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "sched_locked", scope: !185, file: !153, line: 98, baseType: !98, size: 8, offset: 8)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "preempt", scope: !182, file: !153, line: 101, baseType: !192, size: 16)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !99, line: 63, baseType: !193)
!193 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "order_key", scope: !156, file: !153, line: 108, baseType: !111, size: 32, offset: 128)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "swap_data", scope: !156, file: !153, line: 132, baseType: !114, size: 32, offset: 160)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !156, file: !153, line: 136, baseType: !197, size: 192, offset: 192)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_timeout", file: !174, line: 254, size: 192, elements: !198)
!198 = !{!199, !200, !206}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !197, file: !174, line: 255, baseType: !122, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !197, file: !174, line: 256, baseType: !201, size: 32, offset: 64)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "_timeout_func_t", file: !174, line: 252, baseType: !202)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 32)
!203 = !DISubroutineType(types: !204)
!204 = !{null, !205}
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 32)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "dticks", scope: !197, file: !174, line: 259, baseType: !207, size: 64, offset: 128)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !99, line: 59, baseType: !208)
!208 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "callee_saved", scope: !152, file: !153, line: 255, baseType: !210, size: 288, offset: 384)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_callee_saved", file: !211, line: 25, size: 288, elements: !212)
!211 = !DIFile(filename: "include/zephyr/arch/arm/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!212 = !{!213, !214, !215, !216, !217, !218, !219, !220, !221}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "v1", scope: !210, file: !211, line: 26, baseType: !111, size: 32)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "v2", scope: !210, file: !211, line: 27, baseType: !111, size: 32, offset: 32)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "v3", scope: !210, file: !211, line: 28, baseType: !111, size: 32, offset: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "v4", scope: !210, file: !211, line: 29, baseType: !111, size: 32, offset: 96)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "v5", scope: !210, file: !211, line: 30, baseType: !111, size: 32, offset: 128)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "v6", scope: !210, file: !211, line: 31, baseType: !111, size: 32, offset: 160)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "v7", scope: !210, file: !211, line: 32, baseType: !111, size: 32, offset: 192)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "v8", scope: !210, file: !211, line: 33, baseType: !111, size: 32, offset: 224)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "psp", scope: !210, file: !211, line: 34, baseType: !111, size: 32, offset: 256)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "init_data", scope: !152, file: !153, line: 258, baseType: !114, size: 32, offset: 672)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "join_queue", scope: !152, file: !153, line: 261, baseType: !173, size: 64, offset: 704)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "errno_var", scope: !152, file: !153, line: 302, baseType: !120, size: 32, offset: 768)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "resource_pool", scope: !152, file: !153, line: 333, baseType: !226, size: 32, offset: 800)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 32)
!227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_heap", file: !4, line: 5291, size: 160, elements: !228)
!228 = !{!229, !240, !241}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !227, file: !4, line: 5292, baseType: !230, size: 96)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sys_heap", file: !231, line: 56, size: 96, elements: !232)
!231 = !DIFile(filename: "include/zephyr/sys/sys_heap.h", directory: "/home/sri/zephyrproject/zephyr")
!232 = !{!233, !236, !237}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !230, file: !231, line: 57, baseType: !234, size: 32)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 32)
!235 = !DICompositeType(tag: DW_TAG_structure_type, name: "z_heap", file: !231, line: 57, flags: DIFlagFwdDecl)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "init_mem", scope: !230, file: !231, line: 58, baseType: !114, size: 32, offset: 32)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "init_bytes", scope: !230, file: !231, line: 59, baseType: !238, size: 32, offset: 64)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !239, line: 46, baseType: !112)
!239 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/lib/clang/17/include/stddef.h", directory: "")
!240 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !227, file: !4, line: 5293, baseType: !173, size: 64, offset: 96)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !227, file: !4, line: 5294, baseType: !242, offset: 160)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_spinlock", file: !243, line: 45, elements: !244)
!243 = !DIFile(filename: "include/zephyr/spinlock.h", directory: "/home/sri/zephyrproject/zephyr")
!244 = !{}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !152, file: !153, line: 355, baseType: !246, size: 64, offset: 832)
!246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_arch", file: !211, line: 60, size: 64, elements: !247)
!247 = !{!248, !249}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "basepri", scope: !246, file: !211, line: 63, baseType: !111, size: 32)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "swap_return_value", scope: !246, file: !211, line: 66, baseType: !111, size: 32, offset: 32)
!250 = !DILocalVariable(name: "object", arg: 1, scope: !146, file: !16, line: 223, type: !149)
!251 = !DILocation(line: 223, column: 61, scope: !146)
!252 = !DILocalVariable(name: "thread", arg: 2, scope: !146, file: !16, line: 224, type: !151)
!253 = !DILocation(line: 224, column: 24, scope: !146)
!254 = !DILocation(line: 226, column: 9, scope: !146)
!255 = !DILocation(line: 227, column: 9, scope: !146)
!256 = !DILocation(line: 228, column: 1, scope: !146)
!257 = distinct !DISubprogram(name: "z_impl_k_object_release", scope: !16, file: !16, line: 243, type: !258, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !244)
!258 = !DISubroutineType(types: !259)
!259 = !{null, !149}
!260 = !DILocalVariable(name: "object", arg: 1, scope: !257, file: !16, line: 243, type: !149)
!261 = !DILocation(line: 243, column: 56, scope: !257)
!262 = !DILocation(line: 245, column: 9, scope: !257)
!263 = !DILocation(line: 246, column: 1, scope: !257)
!264 = distinct !DISubprogram(name: "z_impl_k_object_alloc", scope: !16, file: !16, line: 359, type: !265, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !244)
!265 = !DISubroutineType(types: !266)
!266 = !{!114, !15}
!267 = !DILocalVariable(name: "otype", arg: 1, scope: !264, file: !16, line: 359, type: !15)
!268 = !DILocation(line: 359, column: 58, scope: !264)
!269 = !DILocation(line: 361, column: 9, scope: !264)
!270 = !DILocation(line: 363, column: 2, scope: !264)
!271 = distinct !DISubprogram(name: "z_impl_k_object_alloc_size", scope: !16, file: !16, line: 366, type: !272, scopeLine: 368, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !244)
!272 = !DISubroutineType(types: !273)
!273 = !{!114, !15, !238}
!274 = !DILocalVariable(name: "otype", arg: 1, scope: !271, file: !16, line: 366, type: !15)
!275 = !DILocation(line: 366, column: 63, scope: !271)
!276 = !DILocalVariable(name: "size", arg: 2, scope: !271, file: !16, line: 367, type: !238)
!277 = !DILocation(line: 367, column: 13, scope: !271)
!278 = !DILocation(line: 369, column: 9, scope: !271)
!279 = !DILocation(line: 370, column: 9, scope: !271)
!280 = !DILocation(line: 372, column: 2, scope: !271)
!281 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_expires_ticks", scope: !4, file: !4, line: 656, type: !282, scopeLine: 658, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !244)
!282 = !DISubroutineType(types: !283)
!283 = !{!284, !286}
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_ticks_t", file: !285, line: 46, baseType: !207)
!285 = !DIFile(filename: "include/zephyr/sys_clock.h", directory: "/home/sri/zephyrproject/zephyr")
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 32)
!287 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !152)
!288 = !DILocalVariable(name: "t", arg: 1, scope: !281, file: !4, line: 657, type: !286)
!289 = !DILocation(line: 657, column: 30, scope: !281)
!290 = !DILocation(line: 659, column: 28, scope: !281)
!291 = !DILocation(line: 659, column: 31, scope: !281)
!292 = !DILocation(line: 659, column: 36, scope: !281)
!293 = !DILocation(line: 659, column: 9, scope: !281)
!294 = !DILocation(line: 659, column: 2, scope: !281)
!295 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_remaining_ticks", scope: !4, file: !4, line: 671, type: !282, scopeLine: 673, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !244)
!296 = !DILocalVariable(name: "t", arg: 1, scope: !295, file: !4, line: 672, type: !286)
!297 = !DILocation(line: 672, column: 30, scope: !295)
!298 = !DILocation(line: 674, column: 30, scope: !295)
!299 = !DILocation(line: 674, column: 33, scope: !295)
!300 = !DILocation(line: 674, column: 38, scope: !295)
!301 = !DILocation(line: 674, column: 9, scope: !295)
!302 = !DILocation(line: 674, column: 2, scope: !295)
!303 = distinct !DISubprogram(name: "z_impl_k_timer_expires_ticks", scope: !4, file: !4, line: 1634, type: !304, scopeLine: 1636, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !244)
!304 = !DISubroutineType(types: !305)
!305 = !{!284, !306}
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 32)
!307 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !308)
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_timer", file: !4, line: 1439, size: 448, elements: !309)
!309 = !{!310, !311, !312, !317, !318, !323, !324}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !308, file: !4, line: 1445, baseType: !197, size: 192)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !308, file: !4, line: 1448, baseType: !173, size: 64, offset: 192)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_fn", scope: !308, file: !4, line: 1451, baseType: !313, size: 32, offset: 256)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 32)
!314 = !DISubroutineType(types: !315)
!315 = !{null, !316}
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 32)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "stop_fn", scope: !308, file: !4, line: 1454, baseType: !313, size: 32, offset: 288)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !308, file: !4, line: 1457, baseType: !319, size: 64, offset: 320)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_timeout_t", file: !285, line: 67, baseType: !320)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !285, line: 65, size: 64, elements: !321)
!321 = !{!322}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "ticks", scope: !320, file: !285, line: 66, baseType: !284, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !308, file: !4, line: 1460, baseType: !111, size: 32, offset: 384)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !308, file: !4, line: 1463, baseType: !114, size: 32, offset: 416)
!325 = !DILocalVariable(name: "timer", arg: 1, scope: !303, file: !4, line: 1635, type: !306)
!326 = !DILocation(line: 1635, column: 34, scope: !303)
!327 = !DILocation(line: 1637, column: 28, scope: !303)
!328 = !DILocation(line: 1637, column: 35, scope: !303)
!329 = !DILocation(line: 1637, column: 9, scope: !303)
!330 = !DILocation(line: 1637, column: 2, scope: !303)
!331 = distinct !DISubprogram(name: "z_impl_k_timer_remaining_ticks", scope: !4, file: !4, line: 1649, type: !304, scopeLine: 1651, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !244)
!332 = !DILocalVariable(name: "timer", arg: 1, scope: !331, file: !4, line: 1650, type: !306)
!333 = !DILocation(line: 1650, column: 34, scope: !331)
!334 = !DILocation(line: 1652, column: 30, scope: !331)
!335 = !DILocation(line: 1652, column: 37, scope: !331)
!336 = !DILocation(line: 1652, column: 9, scope: !331)
!337 = !DILocation(line: 1652, column: 2, scope: !331)
!338 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_set", scope: !4, file: !4, line: 1689, type: !339, scopeLine: 1691, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !244)
!339 = !DISubroutineType(types: !340)
!340 = !{null, !316, !114}
!341 = !DILocalVariable(name: "timer", arg: 1, scope: !338, file: !4, line: 1689, type: !316)
!342 = !DILocation(line: 1689, column: 65, scope: !338)
!343 = !DILocalVariable(name: "user_data", arg: 2, scope: !338, file: !4, line: 1690, type: !114)
!344 = !DILocation(line: 1690, column: 19, scope: !338)
!345 = !DILocation(line: 1692, column: 21, scope: !338)
!346 = !DILocation(line: 1692, column: 2, scope: !338)
!347 = !DILocation(line: 1692, column: 9, scope: !338)
!348 = !DILocation(line: 1692, column: 19, scope: !338)
!349 = !DILocation(line: 1693, column: 1, scope: !338)
!350 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_get", scope: !4, file: !4, line: 1704, type: !351, scopeLine: 1705, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !244)
!351 = !DISubroutineType(types: !352)
!352 = !{!114, !306}
!353 = !DILocalVariable(name: "timer", arg: 1, scope: !350, file: !4, line: 1704, type: !306)
!354 = !DILocation(line: 1704, column: 72, scope: !350)
!355 = !DILocation(line: 1706, column: 9, scope: !350)
!356 = !DILocation(line: 1706, column: 16, scope: !350)
!357 = !DILocation(line: 1706, column: 2, scope: !350)
!358 = distinct !DISubprogram(name: "z_impl_k_queue_is_empty", scope: !4, file: !4, line: 2071, type: !359, scopeLine: 2072, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !244)
!359 = !DISubroutineType(types: !360)
!360 = !{!120, !361}
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 32)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_queue", file: !4, line: 1830, size: 128, elements: !363)
!363 = !{!364, !370, !371}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "data_q", scope: !362, file: !4, line: 1831, baseType: !365, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sflist_t", file: !106, line: 60, baseType: !366)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sflist", file: !106, line: 53, size: 64, elements: !367)
!367 = !{!368, !369}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !366, file: !106, line: 54, baseType: !119, size: 32)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !366, file: !106, line: 55, baseType: !119, size: 32, offset: 32)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !362, file: !4, line: 1832, baseType: !242, offset: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !362, file: !4, line: 1833, baseType: !173, size: 64, offset: 64)
!372 = !DILocalVariable(name: "queue", arg: 1, scope: !358, file: !4, line: 2071, type: !361)
!373 = !DILocation(line: 2071, column: 59, scope: !358)
!374 = !DILocation(line: 2073, column: 35, scope: !358)
!375 = !DILocation(line: 2073, column: 42, scope: !358)
!376 = !DILocation(line: 2073, column: 14, scope: !358)
!377 = !DILocation(line: 2073, column: 9, scope: !358)
!378 = !DILocation(line: 2073, column: 2, scope: !358)
!379 = distinct !DISubprogram(name: "z_impl_k_sem_count_get", scope: !4, file: !4, line: 3209, type: !380, scopeLine: 3210, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !244)
!380 = !DISubroutineType(types: !381)
!381 = !{!112, !382}
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 32)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sem", file: !4, line: 3092, size: 128, elements: !384)
!384 = !{!385, !386, !387}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !383, file: !4, line: 3093, baseType: !173, size: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !383, file: !4, line: 3094, baseType: !112, size: 32, offset: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !383, file: !4, line: 3095, baseType: !112, size: 32, offset: 96)
!388 = !DILocalVariable(name: "sem", arg: 1, scope: !379, file: !4, line: 3209, type: !382)
!389 = !DILocation(line: 3209, column: 65, scope: !379)
!390 = !DILocation(line: 3211, column: 9, scope: !379)
!391 = !DILocation(line: 3211, column: 14, scope: !379)
!392 = !DILocation(line: 3211, column: 2, scope: !379)
!393 = distinct !DISubprogram(name: "z_impl_k_msgq_num_free_get", scope: !4, file: !4, line: 4649, type: !394, scopeLine: 4650, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !244)
!394 = !DISubroutineType(types: !395)
!395 = !{!111, !396}
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 32)
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_msgq", file: !4, line: 4390, size: 320, elements: !398)
!398 = !{!399, !400, !401, !402, !403, !404, !405, !406, !407, !408}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !397, file: !4, line: 4392, baseType: !173, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !397, file: !4, line: 4394, baseType: !242, offset: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "msg_size", scope: !397, file: !4, line: 4396, baseType: !238, size: 32, offset: 64)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !397, file: !4, line: 4398, baseType: !111, size: 32, offset: 96)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_start", scope: !397, file: !4, line: 4400, baseType: !115, size: 32, offset: 128)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_end", scope: !397, file: !4, line: 4402, baseType: !115, size: 32, offset: 160)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "read_ptr", scope: !397, file: !4, line: 4404, baseType: !115, size: 32, offset: 192)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "write_ptr", scope: !397, file: !4, line: 4406, baseType: !115, size: 32, offset: 224)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "used_msgs", scope: !397, file: !4, line: 4408, baseType: !111, size: 32, offset: 256)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !397, file: !4, line: 4413, baseType: !98, size: 8, offset: 288)
!409 = !DILocalVariable(name: "msgq", arg: 1, scope: !393, file: !4, line: 4649, type: !396)
!410 = !DILocation(line: 4649, column: 66, scope: !393)
!411 = !DILocation(line: 4651, column: 9, scope: !393)
!412 = !DILocation(line: 4651, column: 15, scope: !393)
!413 = !DILocation(line: 4651, column: 26, scope: !393)
!414 = !DILocation(line: 4651, column: 32, scope: !393)
!415 = !DILocation(line: 4651, column: 24, scope: !393)
!416 = !DILocation(line: 4651, column: 2, scope: !393)
!417 = distinct !DISubprogram(name: "z_impl_k_msgq_num_used_get", scope: !4, file: !4, line: 4665, type: !394, scopeLine: 4666, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !244)
!418 = !DILocalVariable(name: "msgq", arg: 1, scope: !417, file: !4, line: 4665, type: !396)
!419 = !DILocation(line: 4665, column: 66, scope: !417)
!420 = !DILocation(line: 4667, column: 9, scope: !417)
!421 = !DILocation(line: 4667, column: 15, scope: !417)
!422 = !DILocation(line: 4667, column: 2, scope: !417)
!423 = distinct !DISubprogram(name: "z_queue_node_peek", scope: !102, file: !102, line: 30, type: !424, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !244)
!424 = !DISubroutineType(types: !425)
!425 = !{!114, !119, !118}
!426 = !DILocalVariable(name: "node", arg: 1, scope: !423, file: !102, line: 30, type: !119)
!427 = !DILocation(line: 30, column: 39, scope: !423)
!428 = !DILocalVariable(name: "needs_free", arg: 2, scope: !423, file: !102, line: 30, type: !118)
!429 = !DILocation(line: 30, column: 51, scope: !423)
!430 = !DILocalVariable(name: "ret", scope: !423, file: !102, line: 32, type: !114)
!431 = !DILocation(line: 32, column: 8, scope: !423)
!432 = !DILocation(line: 34, column: 7, scope: !433)
!433 = distinct !DILexicalBlock(scope: !423, file: !102, line: 34, column: 6)
!434 = !DILocation(line: 34, column: 12, scope: !433)
!435 = !DILocation(line: 34, column: 18, scope: !433)
!436 = !DILocation(line: 34, column: 43, scope: !433)
!437 = !DILocation(line: 34, column: 22, scope: !433)
!438 = !DILocation(line: 34, column: 49, scope: !433)
!439 = !DILocation(line: 34, column: 6, scope: !423)
!440 = !DILocalVariable(name: "anode", scope: !441, file: !102, line: 40, type: !100)
!441 = distinct !DILexicalBlock(scope: !433, file: !102, line: 34, column: 65)
!442 = !DILocation(line: 40, column: 22, scope: !441)
!443 = !DILocation(line: 42, column: 49, scope: !444)
!444 = distinct !DILexicalBlock(scope: !441, file: !102, line: 42, column: 12)
!445 = !DILocation(line: 42, column: 56, scope: !444)
!446 = !DILocation(line: 42, column: 12, scope: !441)
!447 = !DILocation(line: 42, column: 105, scope: !444)
!448 = !DILocation(line: 42, column: 9, scope: !441)
!449 = !DILocation(line: 43, column: 9, scope: !441)
!450 = !DILocation(line: 43, column: 16, scope: !441)
!451 = !DILocation(line: 43, column: 7, scope: !441)
!452 = !DILocation(line: 44, column: 7, scope: !453)
!453 = distinct !DILexicalBlock(scope: !441, file: !102, line: 44, column: 7)
!454 = !DILocation(line: 44, column: 7, scope: !441)
!455 = !DILocation(line: 45, column: 11, scope: !456)
!456 = distinct !DILexicalBlock(scope: !453, file: !102, line: 44, column: 19)
!457 = !DILocation(line: 45, column: 4, scope: !456)
!458 = !DILocation(line: 46, column: 3, scope: !456)
!459 = !DILocation(line: 47, column: 2, scope: !441)
!460 = !DILocation(line: 52, column: 17, scope: !461)
!461 = distinct !DILexicalBlock(scope: !433, file: !102, line: 47, column: 9)
!462 = !DILocation(line: 52, column: 7, scope: !461)
!463 = !DILocation(line: 55, column: 9, scope: !423)
!464 = !DILocation(line: 55, column: 2, scope: !423)
!465 = distinct !DISubprogram(name: "sys_sfnode_flags_get", scope: !106, file: !106, line: 282, type: !466, scopeLine: 283, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !244)
!466 = !DISubroutineType(types: !467)
!467 = !{!98, !119}
!468 = !DILocalVariable(name: "node", arg: 1, scope: !465, file: !106, line: 282, type: !119)
!469 = !DILocation(line: 282, column: 58, scope: !465)
!470 = !DILocation(line: 284, column: 9, scope: !465)
!471 = !DILocation(line: 284, column: 15, scope: !465)
!472 = !DILocation(line: 284, column: 30, scope: !465)
!473 = !DILocation(line: 284, column: 2, scope: !465)
!474 = distinct !DISubprogram(name: "z_impl_k_queue_init", scope: !102, file: !102, line: 58, type: !475, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !244)
!475 = !DISubroutineType(types: !476)
!476 = !{null, !361}
!477 = !DILocalVariable(name: "queue", arg: 1, scope: !474, file: !102, line: 58, type: !361)
!478 = !DILocation(line: 58, column: 42, scope: !474)
!479 = !DILocation(line: 60, column: 19, scope: !474)
!480 = !DILocation(line: 60, column: 26, scope: !474)
!481 = !DILocation(line: 60, column: 2, scope: !474)
!482 = !DILocation(line: 61, column: 2, scope: !474)
!483 = !DILocation(line: 61, column: 9, scope: !474)
!484 = !DILocation(line: 61, column: 16, scope: !474)
!485 = !DILocation(line: 62, column: 16, scope: !474)
!486 = !DILocation(line: 62, column: 23, scope: !474)
!487 = !DILocation(line: 62, column: 2, scope: !474)
!488 = !DILocation(line: 67, column: 2, scope: !474)
!489 = !DILocation(line: 67, column: 7, scope: !490)
!490 = distinct !DILexicalBlock(scope: !474, file: !102, line: 67, column: 5)
!491 = !DILocation(line: 69, column: 16, scope: !474)
!492 = !DILocation(line: 69, column: 2, scope: !474)
!493 = !DILocation(line: 70, column: 1, scope: !474)
!494 = distinct !DISubprogram(name: "sys_sflist_init", scope: !106, file: !106, line: 210, type: !495, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !244)
!495 = !DISubroutineType(types: !496)
!496 = !{null, !497}
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 32)
!498 = !DILocalVariable(name: "list", arg: 1, scope: !494, file: !106, line: 210, type: !497)
!499 = !DILocation(line: 210, column: 50, scope: !494)
!500 = !DILocation(line: 212, column: 2, scope: !494)
!501 = !DILocation(line: 212, column: 8, scope: !494)
!502 = !DILocation(line: 212, column: 13, scope: !494)
!503 = !DILocation(line: 213, column: 2, scope: !494)
!504 = !DILocation(line: 213, column: 8, scope: !494)
!505 = !DILocation(line: 213, column: 13, scope: !494)
!506 = !DILocation(line: 214, column: 1, scope: !494)
!507 = distinct !DISubprogram(name: "z_waitq_init", scope: !508, file: !508, line: 47, type: !509, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !244)
!508 = !DIFile(filename: "kernel/include/wait_q.h", directory: "/home/sri/zephyrproject/zephyr")
!509 = !DISubroutineType(types: !510)
!510 = !{null, !172}
!511 = !DILocalVariable(name: "w", arg: 1, scope: !507, file: !508, line: 47, type: !172)
!512 = !DILocation(line: 47, column: 44, scope: !507)
!513 = !DILocation(line: 49, column: 18, scope: !507)
!514 = !DILocation(line: 49, column: 21, scope: !507)
!515 = !DILocation(line: 49, column: 2, scope: !507)
!516 = !DILocation(line: 50, column: 1, scope: !507)
!517 = distinct !DISubprogram(name: "z_object_init", scope: !16, file: !16, line: 215, type: !258, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !244)
!518 = !DILocalVariable(name: "obj", arg: 1, scope: !517, file: !16, line: 215, type: !149)
!519 = !DILocation(line: 215, column: 46, scope: !517)
!520 = !DILocation(line: 217, column: 9, scope: !517)
!521 = !DILocation(line: 218, column: 1, scope: !517)
!522 = distinct !DISubprogram(name: "z_impl_k_queue_cancel_wait", scope: !102, file: !102, line: 97, type: !475, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !244)
!523 = !DILocalVariable(name: "queue", arg: 1, scope: !522, file: !102, line: 97, type: !361)
!524 = !DILocation(line: 97, column: 49, scope: !522)
!525 = !DILocation(line: 99, column: 2, scope: !522)
!526 = !DILocation(line: 99, column: 7, scope: !527)
!527 = distinct !DILexicalBlock(scope: !522, file: !102, line: 99, column: 5)
!528 = !DILocalVariable(name: "key", scope: !522, file: !102, line: 101, type: !529)
!529 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_spinlock_key_t", file: !243, line: 108, baseType: !530)
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "z_spinlock_key", file: !243, line: 34, size: 32, elements: !531)
!531 = !{!532}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !530, file: !243, line: 35, baseType: !120, size: 32)
!533 = !DILocation(line: 101, column: 19, scope: !522)
!534 = !DILocation(line: 101, column: 38, scope: !522)
!535 = !DILocation(line: 101, column: 45, scope: !522)
!536 = !DILocalVariable(name: "l", arg: 1, scope: !537, file: !243, line: 160, type: !540)
!537 = distinct !DISubprogram(name: "k_spin_lock", scope: !243, file: !243, line: 160, type: !538, scopeLine: 161, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !244)
!538 = !DISubroutineType(types: !539)
!539 = !{!529, !540}
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 32)
!541 = !DILocation(line: 160, column: 94, scope: !537, inlinedAt: !542)
!542 = distinct !DILocation(line: 101, column: 25, scope: !522)
!543 = !DILocation(line: 162, column: 9, scope: !537, inlinedAt: !542)
!544 = !DILocalVariable(name: "k", scope: !537, file: !243, line: 163, type: !529)
!545 = !DILocation(line: 163, column: 19, scope: !537, inlinedAt: !542)
!546 = !DILocalVariable(name: "key", scope: !547, file: !548, line: 44, type: !112)
!547 = distinct !DISubprogram(name: "arch_irq_lock", scope: !548, file: !548, line: 42, type: !549, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !244)
!548 = !DIFile(filename: "include/zephyr/arch/arm/asm_inline_gcc.h", directory: "/home/sri/zephyrproject/zephyr")
!549 = !DISubroutineType(types: !550)
!550 = !{!112}
!551 = !DILocation(line: 44, column: 15, scope: !547, inlinedAt: !552)
!552 = distinct !DILocation(line: 169, column: 10, scope: !537, inlinedAt: !542)
!553 = !DILocation(line: 48, column: 2, scope: !547, inlinedAt: !552)
!554 = !{i64 66945}
!555 = !DILocation(line: 80, column: 9, scope: !547, inlinedAt: !552)
!556 = !DILocation(line: 169, column: 8, scope: !537, inlinedAt: !542)
!557 = !DILocation(line: 171, column: 26, scope: !537, inlinedAt: !542)
!558 = !DILocalVariable(name: "l", arg: 1, scope: !559, file: !243, line: 110, type: !540)
!559 = distinct !DISubprogram(name: "z_spinlock_validate_pre", scope: !243, file: !243, line: 110, type: !560, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !244)
!560 = !DISubroutineType(types: !561)
!561 = !{null, !540}
!562 = !DILocation(line: 110, column: 94, scope: !559, inlinedAt: !563)
!563 = distinct !DILocation(line: 171, column: 2, scope: !537, inlinedAt: !542)
!564 = !DILocation(line: 112, column: 9, scope: !559, inlinedAt: !563)
!565 = !DILocation(line: 177, column: 27, scope: !537, inlinedAt: !542)
!566 = !DILocalVariable(name: "l", arg: 1, scope: !567, file: !243, line: 121, type: !540)
!567 = distinct !DISubprogram(name: "z_spinlock_validate_post", scope: !243, file: !243, line: 121, type: !560, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !244)
!568 = !DILocation(line: 121, column: 95, scope: !567, inlinedAt: !569)
!569 = distinct !DILocation(line: 177, column: 2, scope: !537, inlinedAt: !542)
!570 = !DILocation(line: 123, column: 9, scope: !567, inlinedAt: !569)
!571 = !DILocation(line: 179, column: 2, scope: !537, inlinedAt: !542)
!572 = !DILocation(line: 101, column: 25, scope: !522)
!573 = !DILocalVariable(name: "first_pending_thread", scope: !522, file: !102, line: 102, type: !151)
!574 = !DILocation(line: 102, column: 19, scope: !522)
!575 = !DILocation(line: 104, column: 48, scope: !522)
!576 = !DILocation(line: 104, column: 55, scope: !522)
!577 = !DILocation(line: 104, column: 25, scope: !522)
!578 = !DILocation(line: 104, column: 23, scope: !522)
!579 = !DILocation(line: 106, column: 6, scope: !580)
!580 = distinct !DILexicalBlock(scope: !522, file: !102, line: 106, column: 6)
!581 = !DILocation(line: 106, column: 27, scope: !580)
!582 = !DILocation(line: 106, column: 6, scope: !522)
!583 = !DILocation(line: 107, column: 25, scope: !584)
!584 = distinct !DILexicalBlock(scope: !580, file: !102, line: 106, column: 33)
!585 = !DILocation(line: 107, column: 3, scope: !584)
!586 = !DILocation(line: 108, column: 2, scope: !584)
!587 = !DILocation(line: 110, column: 21, scope: !522)
!588 = !DILocation(line: 110, column: 2, scope: !522)
!589 = !DILocation(line: 111, column: 16, scope: !522)
!590 = !DILocation(line: 111, column: 23, scope: !522)
!591 = !DILocation(line: 111, column: 2, scope: !522)
!592 = !DILocation(line: 112, column: 1, scope: !522)
!593 = distinct !DISubprogram(name: "prepare_thread_to_run", scope: !102, file: !102, line: 81, type: !594, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !244)
!594 = !DISubroutineType(types: !595)
!595 = !{null, !151, !114}
!596 = !DILocalVariable(name: "thread", arg: 1, scope: !593, file: !102, line: 81, type: !151)
!597 = !DILocation(line: 81, column: 52, scope: !593)
!598 = !DILocalVariable(name: "data", arg: 2, scope: !593, file: !102, line: 81, type: !114)
!599 = !DILocation(line: 81, column: 66, scope: !593)
!600 = !DILocation(line: 83, column: 38, scope: !593)
!601 = !DILocation(line: 83, column: 49, scope: !593)
!602 = !DILocalVariable(name: "thread", arg: 1, scope: !603, file: !604, line: 137, type: !151)
!603 = distinct !DISubprogram(name: "z_thread_return_value_set_with_data", scope: !604, file: !604, line: 137, type: !605, scopeLine: 140, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !244)
!604 = !DIFile(filename: "kernel/include/kernel_internal.h", directory: "/home/sri/zephyrproject/zephyr")
!605 = !DISubroutineType(types: !606)
!606 = !{null, !151, !112, !114}
!607 = !DILocation(line: 137, column: 54, scope: !603, inlinedAt: !608)
!608 = distinct !DILocation(line: 83, column: 2, scope: !593)
!609 = !DILocalVariable(name: "value", arg: 2, scope: !603, file: !604, line: 138, type: !112)
!610 = !DILocation(line: 138, column: 21, scope: !603, inlinedAt: !608)
!611 = !DILocalVariable(name: "data", arg: 3, scope: !603, file: !604, line: 139, type: !114)
!612 = !DILocation(line: 139, column: 14, scope: !603, inlinedAt: !608)
!613 = !DILocation(line: 141, column: 31, scope: !603, inlinedAt: !608)
!614 = !DILocation(line: 141, column: 39, scope: !603, inlinedAt: !608)
!615 = !DILocalVariable(name: "thread", arg: 1, scope: !616, file: !617, line: 59, type: !151)
!616 = distinct !DISubprogram(name: "arch_thread_return_value_set", scope: !617, file: !617, line: 59, type: !618, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !244)
!617 = !DIFile(filename: "arch/arm/include/cortex_m/kernel_arch_func.h", directory: "/home/sri/zephyrproject/zephyr")
!618 = !DISubroutineType(types: !619)
!619 = !{null, !151, !112}
!620 = !DILocation(line: 59, column: 47, scope: !616, inlinedAt: !621)
!621 = distinct !DILocation(line: 141, column: 2, scope: !603, inlinedAt: !608)
!622 = !DILocalVariable(name: "value", arg: 2, scope: !616, file: !617, line: 59, type: !112)
!623 = !DILocation(line: 59, column: 68, scope: !616, inlinedAt: !621)
!624 = !DILocation(line: 61, column: 35, scope: !616, inlinedAt: !621)
!625 = !DILocation(line: 61, column: 2, scope: !616, inlinedAt: !621)
!626 = !DILocation(line: 61, column: 10, scope: !616, inlinedAt: !621)
!627 = !DILocation(line: 61, column: 15, scope: !616, inlinedAt: !621)
!628 = !DILocation(line: 61, column: 33, scope: !616, inlinedAt: !621)
!629 = !DILocation(line: 142, column: 27, scope: !603, inlinedAt: !608)
!630 = !DILocation(line: 142, column: 2, scope: !603, inlinedAt: !608)
!631 = !DILocation(line: 142, column: 15, scope: !603, inlinedAt: !608)
!632 = !DILocation(line: 142, column: 25, scope: !603, inlinedAt: !608)
!633 = !DILocation(line: 84, column: 17, scope: !593)
!634 = !DILocation(line: 84, column: 2, scope: !593)
!635 = !DILocation(line: 85, column: 1, scope: !593)
!636 = distinct !DISubprogram(name: "handle_poll_events", scope: !102, file: !102, line: 87, type: !637, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !244)
!637 = !DISubroutineType(types: !638)
!638 = !{null, !361, !111}
!639 = !DILocalVariable(name: "queue", arg: 1, scope: !636, file: !102, line: 87, type: !361)
!640 = !DILocation(line: 87, column: 55, scope: !636)
!641 = !DILocalVariable(name: "state", arg: 2, scope: !636, file: !102, line: 87, type: !111)
!642 = !DILocation(line: 87, column: 71, scope: !636)
!643 = !DILocation(line: 92, column: 9, scope: !636)
!644 = !DILocation(line: 93, column: 9, scope: !636)
!645 = !DILocation(line: 95, column: 1, scope: !636)
!646 = distinct !DISubprogram(name: "k_queue_insert", scope: !102, file: !102, line: 178, type: !647, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !244)
!647 = !DISubroutineType(types: !648)
!648 = !{null, !361, !114, !114}
!649 = !DILocalVariable(name: "queue", arg: 1, scope: !646, file: !102, line: 178, type: !361)
!650 = !DILocation(line: 178, column: 37, scope: !646)
!651 = !DILocalVariable(name: "prev", arg: 2, scope: !646, file: !102, line: 178, type: !114)
!652 = !DILocation(line: 178, column: 50, scope: !646)
!653 = !DILocalVariable(name: "data", arg: 3, scope: !646, file: !102, line: 178, type: !114)
!654 = !DILocation(line: 178, column: 62, scope: !646)
!655 = !DILocation(line: 180, column: 2, scope: !646)
!656 = !DILocation(line: 180, column: 7, scope: !657)
!657 = distinct !DILexicalBlock(scope: !646, file: !102, line: 180, column: 5)
!658 = !DILocation(line: 182, column: 21, scope: !646)
!659 = !DILocation(line: 182, column: 28, scope: !646)
!660 = !DILocation(line: 182, column: 34, scope: !646)
!661 = !DILocation(line: 182, column: 8, scope: !646)
!662 = !DILocation(line: 184, column: 2, scope: !646)
!663 = !DILocation(line: 184, column: 7, scope: !664)
!664 = distinct !DILexicalBlock(scope: !646, file: !102, line: 184, column: 5)
!665 = !DILocation(line: 185, column: 1, scope: !646)
!666 = distinct !DISubprogram(name: "queue_insert", scope: !102, file: !102, line: 123, type: !667, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !244)
!667 = !DISubroutineType(types: !668)
!668 = !{!669, !361, !114, !114, !118, !118}
!669 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !99, line: 58, baseType: !120)
!670 = !DILocalVariable(name: "queue", arg: 1, scope: !666, file: !102, line: 123, type: !361)
!671 = !DILocation(line: 123, column: 45, scope: !666)
!672 = !DILocalVariable(name: "prev", arg: 2, scope: !666, file: !102, line: 123, type: !114)
!673 = !DILocation(line: 123, column: 58, scope: !666)
!674 = !DILocalVariable(name: "data", arg: 3, scope: !666, file: !102, line: 123, type: !114)
!675 = !DILocation(line: 123, column: 70, scope: !666)
!676 = !DILocalVariable(name: "alloc", arg: 4, scope: !666, file: !102, line: 124, type: !118)
!677 = !DILocation(line: 124, column: 14, scope: !666)
!678 = !DILocalVariable(name: "is_append", arg: 5, scope: !666, file: !102, line: 124, type: !118)
!679 = !DILocation(line: 124, column: 27, scope: !666)
!680 = !DILocalVariable(name: "first_pending_thread", scope: !666, file: !102, line: 126, type: !151)
!681 = !DILocation(line: 126, column: 19, scope: !666)
!682 = !DILocalVariable(name: "key", scope: !666, file: !102, line: 127, type: !529)
!683 = !DILocation(line: 127, column: 19, scope: !666)
!684 = !DILocation(line: 127, column: 38, scope: !666)
!685 = !DILocation(line: 127, column: 45, scope: !666)
!686 = !DILocation(line: 160, column: 94, scope: !537, inlinedAt: !687)
!687 = distinct !DILocation(line: 127, column: 25, scope: !666)
!688 = !DILocation(line: 162, column: 9, scope: !537, inlinedAt: !687)
!689 = !DILocation(line: 163, column: 19, scope: !537, inlinedAt: !687)
!690 = !DILocation(line: 44, column: 15, scope: !547, inlinedAt: !691)
!691 = distinct !DILocation(line: 169, column: 10, scope: !537, inlinedAt: !687)
!692 = !DILocation(line: 48, column: 2, scope: !547, inlinedAt: !691)
!693 = !DILocation(line: 80, column: 9, scope: !547, inlinedAt: !691)
!694 = !DILocation(line: 169, column: 8, scope: !537, inlinedAt: !687)
!695 = !DILocation(line: 171, column: 26, scope: !537, inlinedAt: !687)
!696 = !DILocation(line: 110, column: 94, scope: !559, inlinedAt: !697)
!697 = distinct !DILocation(line: 171, column: 2, scope: !537, inlinedAt: !687)
!698 = !DILocation(line: 112, column: 9, scope: !559, inlinedAt: !697)
!699 = !DILocation(line: 177, column: 27, scope: !537, inlinedAt: !687)
!700 = !DILocation(line: 121, column: 95, scope: !567, inlinedAt: !701)
!701 = distinct !DILocation(line: 177, column: 2, scope: !537, inlinedAt: !687)
!702 = !DILocation(line: 123, column: 9, scope: !567, inlinedAt: !701)
!703 = !DILocation(line: 179, column: 2, scope: !537, inlinedAt: !687)
!704 = !DILocation(line: 127, column: 25, scope: !666)
!705 = !DILocation(line: 129, column: 2, scope: !666)
!706 = !DILocation(line: 129, column: 7, scope: !707)
!707 = distinct !DILexicalBlock(scope: !666, file: !102, line: 129, column: 5)
!708 = !DILocation(line: 131, column: 6, scope: !709)
!709 = distinct !DILexicalBlock(scope: !666, file: !102, line: 131, column: 6)
!710 = !DILocation(line: 131, column: 6, scope: !666)
!711 = !DILocation(line: 132, column: 32, scope: !712)
!712 = distinct !DILexicalBlock(scope: !709, file: !102, line: 131, column: 17)
!713 = !DILocation(line: 132, column: 39, scope: !712)
!714 = !DILocation(line: 132, column: 10, scope: !712)
!715 = !DILocation(line: 132, column: 8, scope: !712)
!716 = !DILocation(line: 133, column: 2, scope: !712)
!717 = !DILocation(line: 134, column: 48, scope: !666)
!718 = !DILocation(line: 134, column: 55, scope: !666)
!719 = !DILocation(line: 134, column: 25, scope: !666)
!720 = !DILocation(line: 134, column: 23, scope: !666)
!721 = !DILocation(line: 136, column: 6, scope: !722)
!722 = distinct !DILexicalBlock(scope: !666, file: !102, line: 136, column: 6)
!723 = !DILocation(line: 136, column: 27, scope: !722)
!724 = !DILocation(line: 136, column: 6, scope: !666)
!725 = !DILocation(line: 137, column: 3, scope: !726)
!726 = distinct !DILexicalBlock(scope: !722, file: !102, line: 136, column: 33)
!727 = !DILocation(line: 137, column: 8, scope: !728)
!728 = distinct !DILexicalBlock(scope: !726, file: !102, line: 137, column: 6)
!729 = !DILocation(line: 139, column: 25, scope: !726)
!730 = !DILocation(line: 139, column: 47, scope: !726)
!731 = !DILocation(line: 139, column: 3, scope: !726)
!732 = !DILocation(line: 140, column: 17, scope: !726)
!733 = !DILocation(line: 140, column: 24, scope: !726)
!734 = !DILocation(line: 140, column: 3, scope: !726)
!735 = !DILocation(line: 142, column: 3, scope: !726)
!736 = !DILocation(line: 142, column: 8, scope: !737)
!737 = distinct !DILexicalBlock(scope: !726, file: !102, line: 142, column: 6)
!738 = !DILocation(line: 144, column: 3, scope: !726)
!739 = !DILocation(line: 148, column: 6, scope: !740)
!740 = distinct !DILexicalBlock(scope: !666, file: !102, line: 148, column: 6)
!741 = !DILocation(line: 148, column: 6, scope: !666)
!742 = !DILocalVariable(name: "anode", scope: !743, file: !102, line: 149, type: !100)
!743 = distinct !DILexicalBlock(scope: !740, file: !102, line: 148, column: 13)
!744 = !DILocation(line: 149, column: 22, scope: !743)
!745 = !DILocation(line: 151, column: 11, scope: !743)
!746 = !DILocation(line: 151, column: 9, scope: !743)
!747 = !DILocation(line: 152, column: 7, scope: !748)
!748 = distinct !DILexicalBlock(scope: !743, file: !102, line: 152, column: 7)
!749 = !DILocation(line: 152, column: 13, scope: !748)
!750 = !DILocation(line: 152, column: 7, scope: !743)
!751 = !DILocation(line: 153, column: 19, scope: !752)
!752 = distinct !DILexicalBlock(scope: !748, file: !102, line: 152, column: 19)
!753 = !DILocation(line: 153, column: 26, scope: !752)
!754 = !DILocation(line: 153, column: 4, scope: !752)
!755 = !DILocalVariable(name: "l", arg: 1, scope: !756, file: !243, line: 235, type: !540)
!756 = distinct !DISubprogram(name: "k_spin_unlock", scope: !243, file: !243, line: 235, type: !757, scopeLine: 237, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !244)
!757 = !DISubroutineType(types: !758)
!758 = !{null, !540, !529}
!759 = !DILocation(line: 235, column: 84, scope: !756, inlinedAt: !760)
!760 = distinct !DILocation(line: 153, column: 4, scope: !752)
!761 = !DILocalVariable(name: "key", arg: 2, scope: !756, file: !243, line: 236, type: !529)
!762 = !DILocation(line: 236, column: 23, scope: !756, inlinedAt: !760)
!763 = !DILocation(line: 238, column: 9, scope: !756, inlinedAt: !760)
!764 = !DILocation(line: 261, column: 22, scope: !756, inlinedAt: !760)
!765 = !DILocalVariable(name: "key", arg: 1, scope: !766, file: !548, line: 88, type: !112)
!766 = distinct !DISubprogram(name: "arch_irq_unlock", scope: !548, file: !548, line: 88, type: !767, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !244)
!767 = !DISubroutineType(types: !768)
!768 = !{null, !112}
!769 = !DILocation(line: 88, column: 80, scope: !766, inlinedAt: !770)
!770 = distinct !DILocation(line: 261, column: 2, scope: !756, inlinedAt: !760)
!771 = !DILocation(line: 91, column: 6, scope: !772, inlinedAt: !770)
!772 = distinct !DILexicalBlock(scope: !766, file: !548, line: 91, column: 6)
!773 = !DILocation(line: 91, column: 10, scope: !772, inlinedAt: !770)
!774 = !DILocation(line: 91, column: 6, scope: !766, inlinedAt: !770)
!775 = !DILocation(line: 92, column: 3, scope: !776, inlinedAt: !770)
!776 = distinct !DILexicalBlock(scope: !772, file: !548, line: 91, column: 17)
!777 = !DILocation(line: 94, column: 2, scope: !766, inlinedAt: !770)
!778 = !{i64 67249}
!779 = !DILocation(line: 114, column: 1, scope: !766, inlinedAt: !770)
!780 = !DILocation(line: 155, column: 4, scope: !752)
!781 = !DILocation(line: 155, column: 9, scope: !782)
!782 = distinct !DILexicalBlock(scope: !752, file: !102, line: 155, column: 7)
!783 = !DILocation(line: 158, column: 4, scope: !752)
!784 = !DILocation(line: 160, column: 17, scope: !743)
!785 = !DILocation(line: 160, column: 3, scope: !743)
!786 = !DILocation(line: 160, column: 10, scope: !743)
!787 = !DILocation(line: 160, column: 15, scope: !743)
!788 = !DILocation(line: 161, column: 20, scope: !743)
!789 = !DILocation(line: 161, column: 27, scope: !743)
!790 = !DILocation(line: 161, column: 3, scope: !743)
!791 = !DILocation(line: 162, column: 10, scope: !743)
!792 = !DILocation(line: 162, column: 8, scope: !743)
!793 = !DILocation(line: 163, column: 2, scope: !743)
!794 = !DILocation(line: 164, column: 19, scope: !795)
!795 = distinct !DILexicalBlock(scope: !740, file: !102, line: 163, column: 9)
!796 = !DILocation(line: 164, column: 3, scope: !795)
!797 = !DILocation(line: 167, column: 2, scope: !666)
!798 = !DILocation(line: 167, column: 7, scope: !799)
!799 = distinct !DILexicalBlock(scope: !666, file: !102, line: 167, column: 5)
!800 = !DILocation(line: 169, column: 21, scope: !666)
!801 = !DILocation(line: 169, column: 28, scope: !666)
!802 = !DILocation(line: 169, column: 36, scope: !666)
!803 = !DILocation(line: 169, column: 42, scope: !666)
!804 = !DILocation(line: 169, column: 2, scope: !666)
!805 = !DILocation(line: 170, column: 21, scope: !666)
!806 = !DILocation(line: 170, column: 2, scope: !666)
!807 = !DILocation(line: 171, column: 16, scope: !666)
!808 = !DILocation(line: 171, column: 23, scope: !666)
!809 = !DILocation(line: 171, column: 2, scope: !666)
!810 = !DILocation(line: 173, column: 2, scope: !666)
!811 = !DILocation(line: 173, column: 7, scope: !812)
!812 = distinct !DILexicalBlock(scope: !666, file: !102, line: 173, column: 5)
!813 = !DILocation(line: 175, column: 2, scope: !666)
!814 = !DILocation(line: 176, column: 1, scope: !666)
!815 = distinct !DISubprogram(name: "k_queue_append", scope: !102, file: !102, line: 187, type: !816, scopeLine: 188, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !244)
!816 = !DISubroutineType(types: !817)
!817 = !{null, !361, !114}
!818 = !DILocalVariable(name: "queue", arg: 1, scope: !815, file: !102, line: 187, type: !361)
!819 = !DILocation(line: 187, column: 37, scope: !815)
!820 = !DILocalVariable(name: "data", arg: 2, scope: !815, file: !102, line: 187, type: !114)
!821 = !DILocation(line: 187, column: 50, scope: !815)
!822 = !DILocation(line: 189, column: 2, scope: !815)
!823 = !DILocation(line: 189, column: 7, scope: !824)
!824 = distinct !DILexicalBlock(scope: !815, file: !102, line: 189, column: 5)
!825 = !DILocation(line: 191, column: 21, scope: !815)
!826 = !DILocation(line: 191, column: 31, scope: !815)
!827 = !DILocation(line: 191, column: 8, scope: !815)
!828 = !DILocation(line: 193, column: 2, scope: !815)
!829 = !DILocation(line: 193, column: 7, scope: !830)
!830 = distinct !DILexicalBlock(scope: !815, file: !102, line: 193, column: 5)
!831 = !DILocation(line: 194, column: 1, scope: !815)
!832 = distinct !DISubprogram(name: "k_queue_prepend", scope: !102, file: !102, line: 196, type: !816, scopeLine: 197, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !244)
!833 = !DILocalVariable(name: "queue", arg: 1, scope: !832, file: !102, line: 196, type: !361)
!834 = !DILocation(line: 196, column: 38, scope: !832)
!835 = !DILocalVariable(name: "data", arg: 2, scope: !832, file: !102, line: 196, type: !114)
!836 = !DILocation(line: 196, column: 51, scope: !832)
!837 = !DILocation(line: 198, column: 2, scope: !832)
!838 = !DILocation(line: 198, column: 7, scope: !839)
!839 = distinct !DILexicalBlock(scope: !832, file: !102, line: 198, column: 5)
!840 = !DILocation(line: 200, column: 21, scope: !832)
!841 = !DILocation(line: 200, column: 31, scope: !832)
!842 = !DILocation(line: 200, column: 8, scope: !832)
!843 = !DILocation(line: 202, column: 2, scope: !832)
!844 = !DILocation(line: 202, column: 7, scope: !845)
!845 = distinct !DILexicalBlock(scope: !832, file: !102, line: 202, column: 5)
!846 = !DILocation(line: 203, column: 1, scope: !832)
!847 = distinct !DISubprogram(name: "z_impl_k_queue_alloc_append", scope: !102, file: !102, line: 205, type: !848, scopeLine: 206, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !244)
!848 = !DISubroutineType(types: !849)
!849 = !{!669, !361, !114}
!850 = !DILocalVariable(name: "queue", arg: 1, scope: !847, file: !102, line: 205, type: !361)
!851 = !DILocation(line: 205, column: 53, scope: !847)
!852 = !DILocalVariable(name: "data", arg: 2, scope: !847, file: !102, line: 205, type: !114)
!853 = !DILocation(line: 205, column: 66, scope: !847)
!854 = !DILocation(line: 207, column: 2, scope: !847)
!855 = !DILocation(line: 207, column: 7, scope: !856)
!856 = distinct !DILexicalBlock(scope: !847, file: !102, line: 207, column: 5)
!857 = !DILocalVariable(name: "ret", scope: !847, file: !102, line: 209, type: !669)
!858 = !DILocation(line: 209, column: 10, scope: !847)
!859 = !DILocation(line: 209, column: 29, scope: !847)
!860 = !DILocation(line: 209, column: 39, scope: !847)
!861 = !DILocation(line: 209, column: 16, scope: !847)
!862 = !DILocation(line: 211, column: 2, scope: !847)
!863 = !DILocation(line: 211, column: 7, scope: !864)
!864 = distinct !DILexicalBlock(scope: !847, file: !102, line: 211, column: 5)
!865 = !DILocation(line: 213, column: 9, scope: !847)
!866 = !DILocation(line: 213, column: 2, scope: !847)
!867 = distinct !DISubprogram(name: "z_impl_k_queue_alloc_prepend", scope: !102, file: !102, line: 226, type: !848, scopeLine: 227, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !244)
!868 = !DILocalVariable(name: "queue", arg: 1, scope: !867, file: !102, line: 226, type: !361)
!869 = !DILocation(line: 226, column: 54, scope: !867)
!870 = !DILocalVariable(name: "data", arg: 2, scope: !867, file: !102, line: 226, type: !114)
!871 = !DILocation(line: 226, column: 67, scope: !867)
!872 = !DILocation(line: 228, column: 2, scope: !867)
!873 = !DILocation(line: 228, column: 7, scope: !874)
!874 = distinct !DILexicalBlock(scope: !867, file: !102, line: 228, column: 5)
!875 = !DILocalVariable(name: "ret", scope: !867, file: !102, line: 230, type: !669)
!876 = !DILocation(line: 230, column: 10, scope: !867)
!877 = !DILocation(line: 230, column: 29, scope: !867)
!878 = !DILocation(line: 230, column: 39, scope: !867)
!879 = !DILocation(line: 230, column: 16, scope: !867)
!880 = !DILocation(line: 232, column: 2, scope: !867)
!881 = !DILocation(line: 232, column: 7, scope: !882)
!882 = distinct !DILexicalBlock(scope: !867, file: !102, line: 232, column: 5)
!883 = !DILocation(line: 234, column: 9, scope: !867)
!884 = !DILocation(line: 234, column: 2, scope: !867)
!885 = distinct !DISubprogram(name: "k_queue_append_list", scope: !102, file: !102, line: 247, type: !886, scopeLine: 248, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !244)
!886 = !DISubroutineType(types: !887)
!887 = !{!120, !361, !114, !114}
!888 = !DILocalVariable(name: "queue", arg: 1, scope: !885, file: !102, line: 247, type: !361)
!889 = !DILocation(line: 247, column: 41, scope: !885)
!890 = !DILocalVariable(name: "head", arg: 2, scope: !885, file: !102, line: 247, type: !114)
!891 = !DILocation(line: 247, column: 54, scope: !885)
!892 = !DILocalVariable(name: "tail", arg: 3, scope: !885, file: !102, line: 247, type: !114)
!893 = !DILocation(line: 247, column: 66, scope: !885)
!894 = !DILocation(line: 249, column: 2, scope: !885)
!895 = !DILocation(line: 249, column: 7, scope: !896)
!896 = distinct !DILexicalBlock(scope: !885, file: !102, line: 249, column: 5)
!897 = !DILocation(line: 252, column: 6, scope: !898)
!898 = distinct !DILexicalBlock(scope: !885, file: !102, line: 252, column: 6)
!899 = !DILocation(line: 252, column: 11, scope: !898)
!900 = !DILocation(line: 252, column: 16, scope: !898)
!901 = !DILocation(line: 252, column: 19, scope: !898)
!902 = !DILocation(line: 252, column: 24, scope: !898)
!903 = !DILocation(line: 252, column: 6, scope: !885)
!904 = !DILocation(line: 253, column: 3, scope: !905)
!905 = distinct !DILexicalBlock(scope: !898, file: !102, line: 252, column: 30)
!906 = !DILocation(line: 253, column: 8, scope: !907)
!907 = distinct !DILexicalBlock(scope: !905, file: !102, line: 253, column: 6)
!908 = !DILocation(line: 255, column: 3, scope: !905)
!909 = !DILocalVariable(name: "key", scope: !885, file: !102, line: 258, type: !529)
!910 = !DILocation(line: 258, column: 19, scope: !885)
!911 = !DILocation(line: 258, column: 38, scope: !885)
!912 = !DILocation(line: 258, column: 45, scope: !885)
!913 = !DILocation(line: 160, column: 94, scope: !537, inlinedAt: !914)
!914 = distinct !DILocation(line: 258, column: 25, scope: !885)
!915 = !DILocation(line: 162, column: 9, scope: !537, inlinedAt: !914)
!916 = !DILocation(line: 163, column: 19, scope: !537, inlinedAt: !914)
!917 = !DILocation(line: 44, column: 15, scope: !547, inlinedAt: !918)
!918 = distinct !DILocation(line: 169, column: 10, scope: !537, inlinedAt: !914)
!919 = !DILocation(line: 48, column: 2, scope: !547, inlinedAt: !918)
!920 = !DILocation(line: 80, column: 9, scope: !547, inlinedAt: !918)
!921 = !DILocation(line: 169, column: 8, scope: !537, inlinedAt: !914)
!922 = !DILocation(line: 171, column: 26, scope: !537, inlinedAt: !914)
!923 = !DILocation(line: 110, column: 94, scope: !559, inlinedAt: !924)
!924 = distinct !DILocation(line: 171, column: 2, scope: !537, inlinedAt: !914)
!925 = !DILocation(line: 112, column: 9, scope: !559, inlinedAt: !924)
!926 = !DILocation(line: 177, column: 27, scope: !537, inlinedAt: !914)
!927 = !DILocation(line: 121, column: 95, scope: !567, inlinedAt: !928)
!928 = distinct !DILocation(line: 177, column: 2, scope: !537, inlinedAt: !914)
!929 = !DILocation(line: 123, column: 9, scope: !567, inlinedAt: !928)
!930 = !DILocation(line: 179, column: 2, scope: !537, inlinedAt: !914)
!931 = !DILocation(line: 258, column: 25, scope: !885)
!932 = !DILocalVariable(name: "thread", scope: !885, file: !102, line: 259, type: !151)
!933 = !DILocation(line: 259, column: 19, scope: !885)
!934 = !DILocation(line: 261, column: 6, scope: !935)
!935 = distinct !DILexicalBlock(scope: !885, file: !102, line: 261, column: 6)
!936 = !DILocation(line: 261, column: 11, scope: !935)
!937 = !DILocation(line: 261, column: 6, scope: !885)
!938 = !DILocation(line: 262, column: 35, scope: !939)
!939 = distinct !DILexicalBlock(scope: !935, file: !102, line: 261, column: 17)
!940 = !DILocation(line: 262, column: 42, scope: !939)
!941 = !DILocation(line: 262, column: 12, scope: !939)
!942 = !DILocation(line: 262, column: 10, scope: !939)
!943 = !DILocation(line: 263, column: 2, scope: !939)
!944 = !DILocation(line: 265, column: 2, scope: !885)
!945 = !DILocation(line: 265, column: 10, scope: !885)
!946 = !DILocation(line: 265, column: 15, scope: !885)
!947 = !DILocation(line: 265, column: 21, scope: !885)
!948 = !DILocation(line: 265, column: 25, scope: !885)
!949 = !DILocation(line: 265, column: 32, scope: !885)
!950 = !DILocation(line: 0, scope: !885)
!951 = !DILocation(line: 266, column: 25, scope: !952)
!952 = distinct !DILexicalBlock(scope: !885, file: !102, line: 265, column: 39)
!953 = !DILocation(line: 266, column: 33, scope: !952)
!954 = !DILocation(line: 266, column: 3, scope: !952)
!955 = !DILocation(line: 267, column: 20, scope: !952)
!956 = !DILocation(line: 267, column: 10, scope: !952)
!957 = !DILocation(line: 267, column: 8, scope: !952)
!958 = !DILocation(line: 268, column: 35, scope: !952)
!959 = !DILocation(line: 268, column: 42, scope: !952)
!960 = !DILocation(line: 268, column: 12, scope: !952)
!961 = !DILocation(line: 268, column: 10, scope: !952)
!962 = distinct !{!962, !944, !963}
!963 = !DILocation(line: 269, column: 2, scope: !885)
!964 = !DILocation(line: 271, column: 6, scope: !965)
!965 = distinct !DILexicalBlock(scope: !885, file: !102, line: 271, column: 6)
!966 = !DILocation(line: 271, column: 11, scope: !965)
!967 = !DILocation(line: 271, column: 6, scope: !885)
!968 = !DILocation(line: 272, column: 27, scope: !969)
!969 = distinct !DILexicalBlock(scope: !965, file: !102, line: 271, column: 17)
!970 = !DILocation(line: 272, column: 34, scope: !969)
!971 = !DILocation(line: 272, column: 42, scope: !969)
!972 = !DILocation(line: 272, column: 48, scope: !969)
!973 = !DILocation(line: 272, column: 3, scope: !969)
!974 = !DILocation(line: 273, column: 2, scope: !969)
!975 = !DILocation(line: 275, column: 2, scope: !885)
!976 = !DILocation(line: 275, column: 7, scope: !977)
!977 = distinct !DILexicalBlock(scope: !885, file: !102, line: 275, column: 5)
!978 = !DILocation(line: 277, column: 21, scope: !885)
!979 = !DILocation(line: 277, column: 2, scope: !885)
!980 = !DILocation(line: 278, column: 16, scope: !885)
!981 = !DILocation(line: 278, column: 23, scope: !885)
!982 = !DILocation(line: 278, column: 2, scope: !885)
!983 = !DILocation(line: 279, column: 2, scope: !885)
!984 = !DILocation(line: 280, column: 1, scope: !885)
!985 = distinct !DISubprogram(name: "sys_sflist_append_list", scope: !106, file: !106, line: 403, type: !986, scopeLine: 403, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !244)
!986 = !DISubroutineType(types: !987)
!987 = !{null, !497, !114, !114}
!988 = !DILocalVariable(name: "list", arg: 1, scope: !985, file: !106, line: 403, type: !497)
!989 = !DILocation(line: 403, column: 57, scope: !985)
!990 = !DILocalVariable(name: "head", arg: 2, scope: !985, file: !106, line: 403, type: !114)
!991 = !DILocation(line: 403, column: 69, scope: !985)
!992 = !DILocalVariable(name: "tail", arg: 3, scope: !985, file: !106, line: 403, type: !114)
!993 = !DILocation(line: 403, column: 81, scope: !985)
!994 = !DILocation(line: 403, column: 93, scope: !995)
!995 = distinct !DILexicalBlock(scope: !985, file: !106, line: 403, column: 93)
!996 = !DILocation(line: 403, column: 98, scope: !995)
!997 = !DILocation(line: 403, column: 112, scope: !995)
!998 = !DILocation(line: 403, column: 115, scope: !995)
!999 = !DILocation(line: 403, column: 120, scope: !995)
!1000 = !DILocation(line: 403, column: 93, scope: !985)
!1001 = !DILocation(line: 403, column: 162, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !1003, file: !106, line: 403, column: 141)
!1003 = distinct !DILexicalBlock(scope: !995, file: !106, line: 403, column: 135)
!1004 = !DILocation(line: 403, column: 141, scope: !1002)
!1005 = !DILocation(line: 403, column: 168, scope: !1002)
!1006 = !DILocation(line: 403, column: 141, scope: !1003)
!1007 = !DILocation(line: 403, column: 203, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !1002, file: !106, line: 403, column: 183)
!1009 = !DILocation(line: 403, column: 225, scope: !1008)
!1010 = !DILocation(line: 403, column: 185, scope: !1008)
!1011 = !DILocation(line: 403, column: 232, scope: !1008)
!1012 = !DILocation(line: 403, column: 281, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !1002, file: !106, line: 403, column: 239)
!1014 = !DILocation(line: 403, column: 260, scope: !1013)
!1015 = !DILocation(line: 403, column: 304, scope: !1013)
!1016 = !DILocation(line: 403, column: 241, scope: !1013)
!1017 = !DILocation(line: 403, column: 331, scope: !1003)
!1018 = !DILocation(line: 403, column: 353, scope: !1003)
!1019 = !DILocation(line: 403, column: 313, scope: !1003)
!1020 = !DILocation(line: 403, column: 360, scope: !1003)
!1021 = !DILocation(line: 403, column: 362, scope: !985)
!1022 = distinct !DISubprogram(name: "k_queue_merge_slist", scope: !102, file: !102, line: 282, type: !1023, scopeLine: 283, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !244)
!1023 = !DISubroutineType(types: !1024)
!1024 = !{!120, !361, !1025}
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 32)
!1026 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_slist_t", file: !1027, line: 49, baseType: !1028)
!1027 = !DIFile(filename: "include/zephyr/sys/slist.h", directory: "/home/sri/zephyrproject/zephyr")
!1028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_slist", file: !1027, line: 42, size: 64, elements: !1029)
!1029 = !{!1030, !1037}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1028, file: !1027, line: 43, baseType: !1031, size: 32)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 32)
!1032 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_snode_t", file: !1027, line: 39, baseType: !1033)
!1033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_snode", file: !1027, line: 33, size: 32, elements: !1034)
!1034 = !{!1035}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1033, file: !1027, line: 34, baseType: !1036, size: 32)
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 32)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1028, file: !1027, line: 44, baseType: !1031, size: 32, offset: 32)
!1038 = !DILocalVariable(name: "queue", arg: 1, scope: !1022, file: !102, line: 282, type: !361)
!1039 = !DILocation(line: 282, column: 41, scope: !1022)
!1040 = !DILocalVariable(name: "list", arg: 2, scope: !1022, file: !102, line: 282, type: !1025)
!1041 = !DILocation(line: 282, column: 61, scope: !1022)
!1042 = !DILocalVariable(name: "ret", scope: !1022, file: !102, line: 284, type: !120)
!1043 = !DILocation(line: 284, column: 6, scope: !1022)
!1044 = !DILocation(line: 286, column: 2, scope: !1022)
!1045 = !DILocation(line: 286, column: 7, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !1022, file: !102, line: 286, column: 5)
!1047 = !DILocation(line: 289, column: 25, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !1022, file: !102, line: 289, column: 6)
!1049 = !DILocation(line: 289, column: 6, scope: !1048)
!1050 = !DILocation(line: 289, column: 6, scope: !1022)
!1051 = !DILocation(line: 290, column: 3, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !1048, file: !102, line: 289, column: 32)
!1053 = !DILocation(line: 290, column: 8, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !1052, file: !102, line: 290, column: 6)
!1055 = !DILocation(line: 292, column: 3, scope: !1052)
!1056 = !DILocation(line: 304, column: 28, scope: !1022)
!1057 = !DILocation(line: 304, column: 35, scope: !1022)
!1058 = !DILocation(line: 304, column: 41, scope: !1022)
!1059 = !DILocation(line: 304, column: 47, scope: !1022)
!1060 = !DILocation(line: 304, column: 53, scope: !1022)
!1061 = !DILocation(line: 304, column: 8, scope: !1022)
!1062 = !DILocation(line: 304, column: 6, scope: !1022)
!1063 = !DILocation(line: 305, column: 6, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !1022, file: !102, line: 305, column: 6)
!1065 = !DILocation(line: 305, column: 10, scope: !1064)
!1066 = !DILocation(line: 305, column: 6, scope: !1022)
!1067 = !DILocation(line: 306, column: 3, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1064, file: !102, line: 305, column: 16)
!1069 = !DILocation(line: 306, column: 8, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !1068, file: !102, line: 306, column: 6)
!1071 = !DILocation(line: 308, column: 10, scope: !1068)
!1072 = !DILocation(line: 308, column: 3, scope: !1068)
!1073 = !DILocation(line: 310, column: 17, scope: !1022)
!1074 = !DILocation(line: 310, column: 2, scope: !1022)
!1075 = !DILocation(line: 312, column: 2, scope: !1022)
!1076 = !DILocation(line: 312, column: 7, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !1022, file: !102, line: 312, column: 5)
!1078 = !DILocation(line: 314, column: 2, scope: !1022)
!1079 = !DILocation(line: 315, column: 1, scope: !1022)
!1080 = distinct !DISubprogram(name: "sys_slist_is_empty", scope: !1027, file: !1027, line: 268, type: !1081, scopeLine: 268, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !244)
!1081 = !DISubroutineType(types: !1082)
!1082 = !{!118, !1025}
!1083 = !DILocalVariable(name: "list", arg: 1, scope: !1080, file: !1027, line: 268, type: !1025)
!1084 = !DILocation(line: 268, column: 53, scope: !1080)
!1085 = !DILocation(line: 268, column: 89, scope: !1080)
!1086 = !DILocation(line: 268, column: 69, scope: !1080)
!1087 = !DILocation(line: 268, column: 95, scope: !1080)
!1088 = !DILocation(line: 268, column: 61, scope: !1080)
!1089 = distinct !DISubprogram(name: "sys_slist_init", scope: !1027, file: !1027, line: 199, type: !1090, scopeLine: 200, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !244)
!1090 = !DISubroutineType(types: !1091)
!1091 = !{null, !1025}
!1092 = !DILocalVariable(name: "list", arg: 1, scope: !1089, file: !1027, line: 199, type: !1025)
!1093 = !DILocation(line: 199, column: 48, scope: !1089)
!1094 = !DILocation(line: 201, column: 2, scope: !1089)
!1095 = !DILocation(line: 201, column: 8, scope: !1089)
!1096 = !DILocation(line: 201, column: 13, scope: !1089)
!1097 = !DILocation(line: 202, column: 2, scope: !1089)
!1098 = !DILocation(line: 202, column: 8, scope: !1089)
!1099 = !DILocation(line: 202, column: 13, scope: !1089)
!1100 = !DILocation(line: 203, column: 1, scope: !1089)
!1101 = distinct !DISubprogram(name: "z_impl_k_queue_get", scope: !102, file: !102, line: 317, type: !1102, scopeLine: 318, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !244)
!1102 = !DISubroutineType(types: !1103)
!1103 = !{!114, !361, !319}
!1104 = !DILocalVariable(name: "queue", arg: 1, scope: !1101, file: !102, line: 317, type: !361)
!1105 = !DILocation(line: 317, column: 42, scope: !1101)
!1106 = !DILocalVariable(name: "timeout", arg: 2, scope: !1101, file: !102, line: 317, type: !319)
!1107 = !DILocation(line: 317, column: 61, scope: !1101)
!1108 = !DILocalVariable(name: "key", scope: !1101, file: !102, line: 319, type: !529)
!1109 = !DILocation(line: 319, column: 19, scope: !1101)
!1110 = !DILocation(line: 319, column: 38, scope: !1101)
!1111 = !DILocation(line: 319, column: 45, scope: !1101)
!1112 = !DILocation(line: 160, column: 94, scope: !537, inlinedAt: !1113)
!1113 = distinct !DILocation(line: 319, column: 25, scope: !1101)
!1114 = !DILocation(line: 162, column: 9, scope: !537, inlinedAt: !1113)
!1115 = !DILocation(line: 163, column: 19, scope: !537, inlinedAt: !1113)
!1116 = !DILocation(line: 44, column: 15, scope: !547, inlinedAt: !1117)
!1117 = distinct !DILocation(line: 169, column: 10, scope: !537, inlinedAt: !1113)
!1118 = !DILocation(line: 48, column: 2, scope: !547, inlinedAt: !1117)
!1119 = !DILocation(line: 80, column: 9, scope: !547, inlinedAt: !1117)
!1120 = !DILocation(line: 169, column: 8, scope: !537, inlinedAt: !1113)
!1121 = !DILocation(line: 171, column: 26, scope: !537, inlinedAt: !1113)
!1122 = !DILocation(line: 110, column: 94, scope: !559, inlinedAt: !1123)
!1123 = distinct !DILocation(line: 171, column: 2, scope: !537, inlinedAt: !1113)
!1124 = !DILocation(line: 112, column: 9, scope: !559, inlinedAt: !1123)
!1125 = !DILocation(line: 177, column: 27, scope: !537, inlinedAt: !1113)
!1126 = !DILocation(line: 121, column: 95, scope: !567, inlinedAt: !1127)
!1127 = distinct !DILocation(line: 177, column: 2, scope: !537, inlinedAt: !1113)
!1128 = !DILocation(line: 123, column: 9, scope: !567, inlinedAt: !1127)
!1129 = !DILocation(line: 179, column: 2, scope: !537, inlinedAt: !1113)
!1130 = !DILocation(line: 319, column: 25, scope: !1101)
!1131 = !DILocalVariable(name: "data", scope: !1101, file: !102, line: 320, type: !114)
!1132 = !DILocation(line: 320, column: 8, scope: !1101)
!1133 = !DILocation(line: 322, column: 2, scope: !1101)
!1134 = !DILocation(line: 322, column: 7, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1101, file: !102, line: 322, column: 5)
!1136 = !DILocation(line: 324, column: 56, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1101, file: !102, line: 324, column: 6)
!1138 = !DILocation(line: 324, column: 63, scope: !1137)
!1139 = !DILocation(line: 324, column: 35, scope: !1137)
!1140 = !DILocation(line: 324, column: 34, scope: !1137)
!1141 = !DILocation(line: 324, column: 32, scope: !1137)
!1142 = !DILocation(line: 324, column: 31, scope: !1137)
!1143 = !DILocation(line: 324, column: 24, scope: !1137)
!1144 = !DILocation(line: 324, column: 76, scope: !1137)
!1145 = !DILocation(line: 324, column: 6, scope: !1101)
!1146 = !DILocalVariable(name: "node", scope: !1147, file: !102, line: 325, type: !119)
!1147 = distinct !DILexicalBlock(scope: !1137, file: !102, line: 324, column: 84)
!1148 = !DILocation(line: 325, column: 17, scope: !1147)
!1149 = !DILocation(line: 327, column: 36, scope: !1147)
!1150 = !DILocation(line: 327, column: 43, scope: !1147)
!1151 = !DILocation(line: 327, column: 10, scope: !1147)
!1152 = !DILocation(line: 327, column: 8, scope: !1147)
!1153 = !DILocation(line: 328, column: 28, scope: !1147)
!1154 = !DILocation(line: 328, column: 10, scope: !1147)
!1155 = !DILocation(line: 328, column: 8, scope: !1147)
!1156 = !DILocation(line: 329, column: 18, scope: !1147)
!1157 = !DILocation(line: 329, column: 25, scope: !1147)
!1158 = !DILocation(line: 329, column: 3, scope: !1147)
!1159 = !DILocation(line: 235, column: 84, scope: !756, inlinedAt: !1160)
!1160 = distinct !DILocation(line: 329, column: 3, scope: !1147)
!1161 = !DILocation(line: 236, column: 23, scope: !756, inlinedAt: !1160)
!1162 = !DILocation(line: 238, column: 9, scope: !756, inlinedAt: !1160)
!1163 = !DILocation(line: 261, column: 22, scope: !756, inlinedAt: !1160)
!1164 = !DILocation(line: 88, column: 80, scope: !766, inlinedAt: !1165)
!1165 = distinct !DILocation(line: 261, column: 2, scope: !756, inlinedAt: !1160)
!1166 = !DILocation(line: 91, column: 6, scope: !772, inlinedAt: !1165)
!1167 = !DILocation(line: 91, column: 10, scope: !772, inlinedAt: !1165)
!1168 = !DILocation(line: 91, column: 6, scope: !766, inlinedAt: !1165)
!1169 = !DILocation(line: 92, column: 3, scope: !776, inlinedAt: !1165)
!1170 = !DILocation(line: 94, column: 2, scope: !766, inlinedAt: !1165)
!1171 = !DILocation(line: 114, column: 1, scope: !766, inlinedAt: !1165)
!1172 = !DILocation(line: 331, column: 3, scope: !1147)
!1173 = !DILocation(line: 331, column: 8, scope: !1174)
!1174 = distinct !DILexicalBlock(scope: !1147, file: !102, line: 331, column: 6)
!1175 = !DILocation(line: 333, column: 10, scope: !1147)
!1176 = !DILocation(line: 333, column: 3, scope: !1147)
!1177 = !DILocation(line: 336, column: 2, scope: !1101)
!1178 = !DILocation(line: 336, column: 7, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1101, file: !102, line: 336, column: 5)
!1180 = !DILocation(line: 338, column: 17, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !1101, file: !102, line: 338, column: 6)
!1182 = !DILocation(line: 338, column: 42, scope: !1181)
!1183 = !DILocation(line: 338, column: 23, scope: !1181)
!1184 = !DILocation(line: 338, column: 6, scope: !1101)
!1185 = !DILocation(line: 339, column: 18, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1181, file: !102, line: 338, column: 56)
!1187 = !DILocation(line: 339, column: 25, scope: !1186)
!1188 = !DILocation(line: 339, column: 3, scope: !1186)
!1189 = !DILocation(line: 235, column: 84, scope: !756, inlinedAt: !1190)
!1190 = distinct !DILocation(line: 339, column: 3, scope: !1186)
!1191 = !DILocation(line: 236, column: 23, scope: !756, inlinedAt: !1190)
!1192 = !DILocation(line: 238, column: 9, scope: !756, inlinedAt: !1190)
!1193 = !DILocation(line: 261, column: 22, scope: !756, inlinedAt: !1190)
!1194 = !DILocation(line: 88, column: 80, scope: !766, inlinedAt: !1195)
!1195 = distinct !DILocation(line: 261, column: 2, scope: !756, inlinedAt: !1190)
!1196 = !DILocation(line: 91, column: 6, scope: !772, inlinedAt: !1195)
!1197 = !DILocation(line: 91, column: 10, scope: !772, inlinedAt: !1195)
!1198 = !DILocation(line: 91, column: 6, scope: !766, inlinedAt: !1195)
!1199 = !DILocation(line: 92, column: 3, scope: !776, inlinedAt: !1195)
!1200 = !DILocation(line: 94, column: 2, scope: !766, inlinedAt: !1195)
!1201 = !DILocation(line: 114, column: 1, scope: !766, inlinedAt: !1195)
!1202 = !DILocation(line: 341, column: 3, scope: !1186)
!1203 = !DILocation(line: 341, column: 8, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1186, file: !102, line: 341, column: 6)
!1205 = !DILocation(line: 343, column: 3, scope: !1186)
!1206 = !DILocalVariable(name: "ret", scope: !1101, file: !102, line: 346, type: !120)
!1207 = !DILocation(line: 346, column: 6, scope: !1101)
!1208 = !DILocation(line: 346, column: 25, scope: !1101)
!1209 = !DILocation(line: 346, column: 32, scope: !1101)
!1210 = !DILocation(line: 346, column: 44, scope: !1101)
!1211 = !DILocation(line: 346, column: 51, scope: !1101)
!1212 = !DILocation(line: 346, column: 12, scope: !1101)
!1213 = !DILocation(line: 348, column: 2, scope: !1101)
!1214 = !DILocation(line: 348, column: 7, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !1101, file: !102, line: 348, column: 5)
!1216 = !DILocation(line: 351, column: 10, scope: !1101)
!1217 = !DILocation(line: 351, column: 14, scope: !1101)
!1218 = !DILocation(line: 351, column: 9, scope: !1101)
!1219 = !DILocation(line: 351, column: 42, scope: !1101)
!1220 = !DILocation(line: 351, column: 51, scope: !1101)
!1221 = !DILocation(line: 351, column: 56, scope: !1101)
!1222 = !DILocation(line: 351, column: 2, scope: !1101)
!1223 = !DILocation(line: 352, column: 1, scope: !1101)
!1224 = distinct !DISubprogram(name: "sys_sflist_is_empty", scope: !106, file: !106, line: 335, type: !1225, scopeLine: 335, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !244)
!1225 = !DISubroutineType(types: !1226)
!1226 = !{!118, !497}
!1227 = !DILocalVariable(name: "list", arg: 1, scope: !1224, file: !106, line: 335, type: !497)
!1228 = !DILocation(line: 335, column: 55, scope: !1224)
!1229 = !DILocation(line: 335, column: 92, scope: !1224)
!1230 = !DILocation(line: 335, column: 71, scope: !1224)
!1231 = !DILocation(line: 335, column: 98, scope: !1224)
!1232 = !DILocation(line: 335, column: 63, scope: !1224)
!1233 = distinct !DISubprogram(name: "sys_sflist_get_not_empty", scope: !106, file: !106, line: 446, type: !1234, scopeLine: 446, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !244)
!1234 = !DISubroutineType(types: !1235)
!1235 = !{!119, !497}
!1236 = !DILocalVariable(name: "list", arg: 1, scope: !1233, file: !106, line: 446, type: !497)
!1237 = !DILocation(line: 446, column: 69, scope: !1233)
!1238 = !DILocalVariable(name: "node", scope: !1233, file: !106, line: 446, type: !119)
!1239 = !DILocation(line: 446, column: 91, scope: !1233)
!1240 = !DILocation(line: 446, column: 119, scope: !1233)
!1241 = !DILocation(line: 446, column: 98, scope: !1233)
!1242 = !DILocation(line: 446, column: 144, scope: !1233)
!1243 = !DILocation(line: 446, column: 169, scope: !1233)
!1244 = !DILocation(line: 446, column: 150, scope: !1233)
!1245 = !DILocation(line: 446, column: 126, scope: !1233)
!1246 = !DILocation(line: 446, column: 202, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !1233, file: !106, line: 446, column: 181)
!1248 = !DILocation(line: 446, column: 181, scope: !1247)
!1249 = !DILocation(line: 446, column: 211, scope: !1247)
!1250 = !DILocation(line: 446, column: 208, scope: !1247)
!1251 = !DILocation(line: 446, column: 181, scope: !1233)
!1252 = !DILocation(line: 446, column: 237, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !1247, file: !106, line: 446, column: 217)
!1254 = !DILocation(line: 446, column: 264, scope: !1253)
!1255 = !DILocation(line: 446, column: 243, scope: !1253)
!1256 = !DILocation(line: 446, column: 219, scope: !1253)
!1257 = !DILocation(line: 446, column: 272, scope: !1253)
!1258 = !DILocation(line: 446, column: 281, scope: !1233)
!1259 = !DILocation(line: 446, column: 274, scope: !1233)
!1260 = distinct !DISubprogram(name: "k_queue_remove", scope: !102, file: !102, line: 354, type: !1261, scopeLine: 355, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !244)
!1261 = !DISubroutineType(types: !1262)
!1262 = !{!118, !361, !114}
!1263 = !DILocalVariable(name: "queue", arg: 1, scope: !1260, file: !102, line: 354, type: !361)
!1264 = !DILocation(line: 354, column: 38, scope: !1260)
!1265 = !DILocalVariable(name: "data", arg: 2, scope: !1260, file: !102, line: 354, type: !114)
!1266 = !DILocation(line: 354, column: 51, scope: !1260)
!1267 = !DILocation(line: 356, column: 2, scope: !1260)
!1268 = !DILocation(line: 356, column: 7, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1260, file: !102, line: 356, column: 5)
!1270 = !DILocalVariable(name: "ret", scope: !1260, file: !102, line: 358, type: !118)
!1271 = !DILocation(line: 358, column: 8, scope: !1260)
!1272 = !DILocation(line: 358, column: 42, scope: !1260)
!1273 = !DILocation(line: 358, column: 49, scope: !1260)
!1274 = !DILocation(line: 358, column: 73, scope: !1260)
!1275 = !DILocation(line: 358, column: 14, scope: !1260)
!1276 = !DILocation(line: 360, column: 2, scope: !1260)
!1277 = !DILocation(line: 360, column: 7, scope: !1278)
!1278 = distinct !DILexicalBlock(scope: !1260, file: !102, line: 360, column: 5)
!1279 = !DILocation(line: 362, column: 9, scope: !1260)
!1280 = !DILocation(line: 362, column: 2, scope: !1260)
!1281 = distinct !DISubprogram(name: "sys_sflist_find_and_remove", scope: !106, file: !106, line: 490, type: !1282, scopeLine: 490, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !244)
!1282 = !DISubroutineType(types: !1283)
!1283 = !{!118, !497, !119}
!1284 = !DILocalVariable(name: "list", arg: 1, scope: !1281, file: !106, line: 490, type: !497)
!1285 = !DILocation(line: 490, column: 62, scope: !1281)
!1286 = !DILocalVariable(name: "node", arg: 2, scope: !1281, file: !106, line: 490, type: !119)
!1287 = !DILocation(line: 490, column: 82, scope: !1281)
!1288 = !DILocalVariable(name: "prev", scope: !1281, file: !106, line: 490, type: !119)
!1289 = !DILocation(line: 490, column: 104, scope: !1281)
!1290 = !DILocalVariable(name: "test", scope: !1281, file: !106, line: 490, type: !119)
!1291 = !DILocation(line: 490, column: 137, scope: !1281)
!1292 = !DILocation(line: 490, column: 176, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1281, file: !106, line: 490, column: 143)
!1294 = !DILocation(line: 490, column: 155, scope: !1293)
!1295 = !DILocation(line: 490, column: 153, scope: !1293)
!1296 = !DILocation(line: 490, column: 148, scope: !1293)
!1297 = !DILocation(line: 490, column: 183, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1293, file: !106, line: 490, column: 143)
!1299 = !DILocation(line: 490, column: 188, scope: !1298)
!1300 = !DILocation(line: 490, column: 143, scope: !1293)
!1301 = !DILocation(line: 490, column: 244, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1303, file: !106, line: 490, column: 244)
!1303 = distinct !DILexicalBlock(scope: !1298, file: !106, line: 490, column: 238)
!1304 = !DILocation(line: 490, column: 252, scope: !1302)
!1305 = !DILocation(line: 490, column: 249, scope: !1302)
!1306 = !DILocation(line: 490, column: 244, scope: !1303)
!1307 = !DILocation(line: 490, column: 278, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1302, file: !106, line: 490, column: 258)
!1309 = !DILocation(line: 490, column: 284, scope: !1308)
!1310 = !DILocation(line: 490, column: 290, scope: !1308)
!1311 = !DILocation(line: 490, column: 260, scope: !1308)
!1312 = !DILocation(line: 490, column: 297, scope: !1308)
!1313 = !DILocation(line: 490, column: 316, scope: !1303)
!1314 = !DILocation(line: 490, column: 314, scope: !1303)
!1315 = !DILocation(line: 490, column: 322, scope: !1303)
!1316 = !DILocation(line: 490, column: 231, scope: !1298)
!1317 = !DILocation(line: 490, column: 210, scope: !1298)
!1318 = !DILocation(line: 490, column: 208, scope: !1298)
!1319 = !DILocation(line: 490, column: 143, scope: !1298)
!1320 = distinct !{!1320, !1300, !1321}
!1321 = !DILocation(line: 490, column: 322, scope: !1293)
!1322 = !DILocation(line: 490, column: 324, scope: !1281)
!1323 = !DILocation(line: 490, column: 334, scope: !1281)
!1324 = distinct !DISubprogram(name: "k_queue_unique_append", scope: !102, file: !102, line: 365, type: !1261, scopeLine: 366, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !244)
!1325 = !DILocalVariable(name: "queue", arg: 1, scope: !1324, file: !102, line: 365, type: !361)
!1326 = !DILocation(line: 365, column: 45, scope: !1324)
!1327 = !DILocalVariable(name: "data", arg: 2, scope: !1324, file: !102, line: 365, type: !114)
!1328 = !DILocation(line: 365, column: 58, scope: !1324)
!1329 = !DILocation(line: 367, column: 2, scope: !1324)
!1330 = !DILocation(line: 367, column: 7, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1324, file: !102, line: 367, column: 5)
!1332 = !DILocalVariable(name: "test", scope: !1324, file: !102, line: 369, type: !119)
!1333 = !DILocation(line: 369, column: 16, scope: !1324)
!1334 = !DILocation(line: 371, column: 36, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1324, file: !102, line: 371, column: 2)
!1336 = !DILocation(line: 371, column: 43, scope: !1335)
!1337 = !DILocation(line: 371, column: 14, scope: !1335)
!1338 = !DILocation(line: 371, column: 12, scope: !1335)
!1339 = !DILocation(line: 371, column: 7, scope: !1335)
!1340 = !DILocation(line: 371, column: 52, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1335, file: !102, line: 371, column: 2)
!1342 = !DILocation(line: 371, column: 57, scope: !1341)
!1343 = !DILocation(line: 371, column: 2, scope: !1335)
!1344 = !DILocation(line: 372, column: 7, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1346, file: !102, line: 372, column: 7)
!1346 = distinct !DILexicalBlock(scope: !1341, file: !102, line: 371, column: 98)
!1347 = !DILocation(line: 372, column: 32, scope: !1345)
!1348 = !DILocation(line: 372, column: 12, scope: !1345)
!1349 = !DILocation(line: 372, column: 7, scope: !1346)
!1350 = !DILocation(line: 373, column: 4, scope: !1351)
!1351 = distinct !DILexicalBlock(scope: !1345, file: !102, line: 372, column: 38)
!1352 = !DILocation(line: 373, column: 9, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1351, file: !102, line: 373, column: 7)
!1354 = !DILocation(line: 375, column: 4, scope: !1351)
!1355 = !DILocation(line: 377, column: 2, scope: !1346)
!1356 = !DILocation(line: 371, column: 91, scope: !1341)
!1357 = !DILocation(line: 371, column: 70, scope: !1341)
!1358 = !DILocation(line: 371, column: 68, scope: !1341)
!1359 = !DILocation(line: 371, column: 2, scope: !1341)
!1360 = distinct !{!1360, !1343, !1361}
!1361 = !DILocation(line: 377, column: 2, scope: !1335)
!1362 = !DILocation(line: 379, column: 17, scope: !1324)
!1363 = !DILocation(line: 379, column: 24, scope: !1324)
!1364 = !DILocation(line: 379, column: 2, scope: !1324)
!1365 = !DILocation(line: 381, column: 2, scope: !1324)
!1366 = !DILocation(line: 381, column: 7, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1324, file: !102, line: 381, column: 5)
!1368 = !DILocation(line: 383, column: 2, scope: !1324)
!1369 = !DILocation(line: 384, column: 1, scope: !1324)
!1370 = distinct !DISubprogram(name: "sys_sflist_peek_head", scope: !106, file: !106, line: 255, type: !1234, scopeLine: 256, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !244)
!1371 = !DILocalVariable(name: "list", arg: 1, scope: !1370, file: !106, line: 255, type: !497)
!1372 = !DILocation(line: 255, column: 64, scope: !1370)
!1373 = !DILocation(line: 257, column: 9, scope: !1370)
!1374 = !DILocation(line: 257, column: 15, scope: !1370)
!1375 = !DILocation(line: 257, column: 2, scope: !1370)
!1376 = distinct !DISubprogram(name: "sys_sflist_peek_next", scope: !106, file: !106, line: 359, type: !1377, scopeLine: 359, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !244)
!1377 = !DISubroutineType(types: !1378)
!1378 = !{!119, !119}
!1379 = !DILocalVariable(name: "node", arg: 1, scope: !1376, file: !106, line: 359, type: !119)
!1380 = !DILocation(line: 359, column: 65, scope: !1376)
!1381 = !DILocation(line: 359, column: 80, scope: !1376)
!1382 = !DILocation(line: 359, column: 85, scope: !1376)
!1383 = !DILocation(line: 359, column: 131, scope: !1376)
!1384 = !DILocation(line: 359, column: 101, scope: !1376)
!1385 = !DILocation(line: 359, column: 73, scope: !1376)
!1386 = distinct !DISubprogram(name: "z_impl_k_queue_peek_head", scope: !102, file: !102, line: 386, type: !1387, scopeLine: 387, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !244)
!1387 = !DISubroutineType(types: !1388)
!1388 = !{!114, !361}
!1389 = !DILocalVariable(name: "queue", arg: 1, scope: !1386, file: !102, line: 386, type: !361)
!1390 = !DILocation(line: 386, column: 48, scope: !1386)
!1391 = !DILocalVariable(name: "ret", scope: !1386, file: !102, line: 388, type: !114)
!1392 = !DILocation(line: 388, column: 8, scope: !1386)
!1393 = !DILocation(line: 388, column: 54, scope: !1386)
!1394 = !DILocation(line: 388, column: 61, scope: !1386)
!1395 = !DILocation(line: 388, column: 32, scope: !1386)
!1396 = !DILocation(line: 388, column: 14, scope: !1386)
!1397 = !DILocation(line: 390, column: 2, scope: !1386)
!1398 = !DILocation(line: 390, column: 7, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1386, file: !102, line: 390, column: 5)
!1400 = !DILocation(line: 392, column: 9, scope: !1386)
!1401 = !DILocation(line: 392, column: 2, scope: !1386)
!1402 = distinct !DISubprogram(name: "z_impl_k_queue_peek_tail", scope: !102, file: !102, line: 395, type: !1387, scopeLine: 396, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !244)
!1403 = !DILocalVariable(name: "queue", arg: 1, scope: !1402, file: !102, line: 395, type: !361)
!1404 = !DILocation(line: 395, column: 48, scope: !1402)
!1405 = !DILocalVariable(name: "ret", scope: !1402, file: !102, line: 397, type: !114)
!1406 = !DILocation(line: 397, column: 8, scope: !1402)
!1407 = !DILocation(line: 397, column: 54, scope: !1402)
!1408 = !DILocation(line: 397, column: 61, scope: !1402)
!1409 = !DILocation(line: 397, column: 32, scope: !1402)
!1410 = !DILocation(line: 397, column: 14, scope: !1402)
!1411 = !DILocation(line: 399, column: 2, scope: !1402)
!1412 = !DILocation(line: 399, column: 7, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !1402, file: !102, line: 399, column: 5)
!1414 = !DILocation(line: 401, column: 9, scope: !1402)
!1415 = !DILocation(line: 401, column: 2, scope: !1402)
!1416 = distinct !DISubprogram(name: "sys_sflist_peek_tail", scope: !106, file: !106, line: 267, type: !1234, scopeLine: 268, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !244)
!1417 = !DILocalVariable(name: "list", arg: 1, scope: !1416, file: !106, line: 267, type: !497)
!1418 = !DILocation(line: 267, column: 64, scope: !1416)
!1419 = !DILocation(line: 269, column: 9, scope: !1416)
!1420 = !DILocation(line: 269, column: 15, scope: !1416)
!1421 = !DILocation(line: 269, column: 2, scope: !1416)
!1422 = distinct !DISubprogram(name: "sys_dlist_init", scope: !123, file: !123, line: 203, type: !1423, scopeLine: 204, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !244)
!1423 = !DISubroutineType(types: !1424)
!1424 = !{null, !1425}
!1425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 32)
!1426 = !DILocalVariable(name: "list", arg: 1, scope: !1422, file: !123, line: 203, type: !1425)
!1427 = !DILocation(line: 203, column: 48, scope: !1422)
!1428 = !DILocation(line: 205, column: 30, scope: !1422)
!1429 = !DILocation(line: 205, column: 2, scope: !1422)
!1430 = !DILocation(line: 205, column: 8, scope: !1422)
!1431 = !DILocation(line: 205, column: 13, scope: !1422)
!1432 = !DILocation(line: 206, column: 30, scope: !1422)
!1433 = !DILocation(line: 206, column: 2, scope: !1422)
!1434 = !DILocation(line: 206, column: 8, scope: !1422)
!1435 = !DILocation(line: 206, column: 13, scope: !1422)
!1436 = !DILocation(line: 207, column: 1, scope: !1422)
!1437 = distinct !DISubprogram(name: "z_thread_malloc", scope: !604, file: !604, line: 105, type: !1438, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !244)
!1438 = !DISubroutineType(types: !1439)
!1439 = !{!114, !1440}
!1440 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1441, line: 51, baseType: !112)
!1441 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/string.h", directory: "")
!1442 = !DILocalVariable(name: "size", arg: 1, scope: !1437, file: !604, line: 105, type: !1440)
!1443 = !DILocation(line: 105, column: 44, scope: !1437)
!1444 = !DILocation(line: 107, column: 35, scope: !1437)
!1445 = !DILocation(line: 107, column: 9, scope: !1437)
!1446 = !DILocation(line: 107, column: 2, scope: !1437)
!1447 = distinct !DISubprogram(name: "sys_sfnode_init", scope: !106, file: !106, line: 300, type: !1448, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !244)
!1448 = !DISubroutineType(types: !1449)
!1449 = !{null, !119, !98}
!1450 = !DILocalVariable(name: "node", arg: 1, scope: !1447, file: !106, line: 300, type: !119)
!1451 = !DILocation(line: 300, column: 50, scope: !1447)
!1452 = !DILocalVariable(name: "flags", arg: 2, scope: !1447, file: !106, line: 300, type: !98)
!1453 = !DILocation(line: 300, column: 64, scope: !1447)
!1454 = !DILocation(line: 303, column: 25, scope: !1447)
!1455 = !DILocation(line: 303, column: 2, scope: !1447)
!1456 = !DILocation(line: 303, column: 8, scope: !1447)
!1457 = !DILocation(line: 303, column: 23, scope: !1447)
!1458 = !DILocation(line: 304, column: 1, scope: !1447)
!1459 = distinct !DISubprogram(name: "sys_sflist_insert", scope: !106, file: !106, line: 432, type: !1460, scopeLine: 432, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !244)
!1460 = !DISubroutineType(types: !1461)
!1461 = !{null, !497, !119, !119}
!1462 = !DILocalVariable(name: "list", arg: 1, scope: !1459, file: !106, line: 432, type: !497)
!1463 = !DILocation(line: 432, column: 52, scope: !1459)
!1464 = !DILocalVariable(name: "prev", arg: 2, scope: !1459, file: !106, line: 432, type: !119)
!1465 = !DILocation(line: 432, column: 72, scope: !1459)
!1466 = !DILocalVariable(name: "node", arg: 3, scope: !1459, file: !106, line: 432, type: !119)
!1467 = !DILocation(line: 432, column: 92, scope: !1459)
!1468 = !DILocation(line: 432, column: 104, scope: !1469)
!1469 = distinct !DILexicalBlock(scope: !1459, file: !106, line: 432, column: 104)
!1470 = !DILocation(line: 432, column: 109, scope: !1469)
!1471 = !DILocation(line: 432, column: 104, scope: !1459)
!1472 = !DILocation(line: 432, column: 145, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1469, file: !106, line: 432, column: 124)
!1474 = !DILocation(line: 432, column: 151, scope: !1473)
!1475 = !DILocation(line: 432, column: 126, scope: !1473)
!1476 = !DILocation(line: 432, column: 158, scope: !1473)
!1477 = !DILocation(line: 432, column: 188, scope: !1478)
!1478 = distinct !DILexicalBlock(scope: !1469, file: !106, line: 432, column: 169)
!1479 = !DILocation(line: 432, column: 169, scope: !1478)
!1480 = !DILocation(line: 432, column: 194, scope: !1478)
!1481 = !DILocation(line: 432, column: 169, scope: !1469)
!1482 = !DILocation(line: 432, column: 229, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !1478, file: !106, line: 432, column: 209)
!1484 = !DILocation(line: 432, column: 235, scope: !1483)
!1485 = !DILocation(line: 432, column: 211, scope: !1483)
!1486 = !DILocation(line: 432, column: 242, scope: !1483)
!1487 = !DILocation(line: 432, column: 269, scope: !1488)
!1488 = distinct !DILexicalBlock(scope: !1478, file: !106, line: 432, column: 249)
!1489 = !DILocation(line: 432, column: 294, scope: !1488)
!1490 = !DILocation(line: 432, column: 275, scope: !1488)
!1491 = !DILocation(line: 432, column: 251, scope: !1488)
!1492 = !DILocation(line: 432, column: 320, scope: !1488)
!1493 = !DILocation(line: 432, column: 326, scope: !1488)
!1494 = !DILocation(line: 432, column: 302, scope: !1488)
!1495 = !DILocation(line: 432, column: 335, scope: !1459)
!1496 = distinct !DISubprogram(name: "sys_sflist_prepend", scope: !106, file: !106, line: 372, type: !1497, scopeLine: 372, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !244)
!1497 = !DISubroutineType(types: !1498)
!1498 = !{null, !497, !119}
!1499 = !DILocalVariable(name: "list", arg: 1, scope: !1496, file: !106, line: 372, type: !497)
!1500 = !DILocation(line: 372, column: 53, scope: !1496)
!1501 = !DILocalVariable(name: "node", arg: 2, scope: !1496, file: !106, line: 372, type: !119)
!1502 = !DILocation(line: 372, column: 73, scope: !1496)
!1503 = !DILocation(line: 372, column: 99, scope: !1496)
!1504 = !DILocation(line: 372, column: 126, scope: !1496)
!1505 = !DILocation(line: 372, column: 105, scope: !1496)
!1506 = !DILocation(line: 372, column: 81, scope: !1496)
!1507 = !DILocation(line: 372, column: 152, scope: !1496)
!1508 = !DILocation(line: 372, column: 158, scope: !1496)
!1509 = !DILocation(line: 372, column: 134, scope: !1496)
!1510 = !DILocation(line: 372, column: 190, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1496, file: !106, line: 372, column: 169)
!1512 = !DILocation(line: 372, column: 169, scope: !1511)
!1513 = !DILocation(line: 372, column: 196, scope: !1511)
!1514 = !DILocation(line: 372, column: 169, scope: !1496)
!1515 = !DILocation(line: 372, column: 231, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1511, file: !106, line: 372, column: 211)
!1517 = !DILocation(line: 372, column: 258, scope: !1516)
!1518 = !DILocation(line: 372, column: 237, scope: !1516)
!1519 = !DILocation(line: 372, column: 213, scope: !1516)
!1520 = !DILocation(line: 372, column: 266, scope: !1516)
!1521 = !DILocation(line: 372, column: 268, scope: !1496)
!1522 = distinct !DISubprogram(name: "z_sfnode_next_peek", scope: !106, file: !106, line: 223, type: !1377, scopeLine: 224, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !244)
!1523 = !DILocalVariable(name: "node", arg: 1, scope: !1522, file: !106, line: 223, type: !119)
!1524 = !DILocation(line: 223, column: 62, scope: !1522)
!1525 = !DILocation(line: 225, column: 26, scope: !1522)
!1526 = !DILocation(line: 225, column: 32, scope: !1522)
!1527 = !DILocation(line: 225, column: 47, scope: !1522)
!1528 = !DILocation(line: 225, column: 9, scope: !1522)
!1529 = !DILocation(line: 225, column: 2, scope: !1522)
!1530 = distinct !DISubprogram(name: "sys_sflist_append", scope: !106, file: !106, line: 385, type: !1497, scopeLine: 385, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !244)
!1531 = !DILocalVariable(name: "list", arg: 1, scope: !1530, file: !106, line: 385, type: !497)
!1532 = !DILocation(line: 385, column: 52, scope: !1530)
!1533 = !DILocalVariable(name: "node", arg: 2, scope: !1530, file: !106, line: 385, type: !119)
!1534 = !DILocation(line: 385, column: 72, scope: !1530)
!1535 = !DILocation(line: 385, column: 98, scope: !1530)
!1536 = !DILocation(line: 385, column: 80, scope: !1530)
!1537 = !DILocation(line: 385, column: 142, scope: !1538)
!1538 = distinct !DILexicalBlock(scope: !1530, file: !106, line: 385, column: 121)
!1539 = !DILocation(line: 385, column: 121, scope: !1538)
!1540 = !DILocation(line: 385, column: 148, scope: !1538)
!1541 = !DILocation(line: 385, column: 121, scope: !1530)
!1542 = !DILocation(line: 385, column: 183, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !1538, file: !106, line: 385, column: 163)
!1544 = !DILocation(line: 385, column: 189, scope: !1543)
!1545 = !DILocation(line: 385, column: 165, scope: !1543)
!1546 = !DILocation(line: 385, column: 214, scope: !1543)
!1547 = !DILocation(line: 385, column: 220, scope: !1543)
!1548 = !DILocation(line: 385, column: 196, scope: !1543)
!1549 = !DILocation(line: 385, column: 227, scope: !1543)
!1550 = !DILocation(line: 385, column: 276, scope: !1551)
!1551 = distinct !DILexicalBlock(scope: !1538, file: !106, line: 385, column: 234)
!1552 = !DILocation(line: 385, column: 255, scope: !1551)
!1553 = !DILocation(line: 385, column: 283, scope: !1551)
!1554 = !DILocation(line: 385, column: 236, scope: !1551)
!1555 = !DILocation(line: 385, column: 308, scope: !1551)
!1556 = !DILocation(line: 385, column: 314, scope: !1551)
!1557 = !DILocation(line: 385, column: 290, scope: !1551)
!1558 = !DILocation(line: 385, column: 323, scope: !1530)
!1559 = distinct !DISubprogram(name: "z_sfnode_next_set", scope: !106, file: !106, line: 230, type: !1560, scopeLine: 232, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !244)
!1560 = !DISubroutineType(types: !1561)
!1561 = !{null, !119, !119}
!1562 = !DILocalVariable(name: "parent", arg: 1, scope: !1559, file: !106, line: 230, type: !119)
!1563 = !DILocation(line: 230, column: 52, scope: !1559)
!1564 = !DILocalVariable(name: "child", arg: 2, scope: !1559, file: !106, line: 231, type: !119)
!1565 = !DILocation(line: 231, column: 26, scope: !1559)
!1566 = !DILocalVariable(name: "cur_flags", scope: !1559, file: !106, line: 233, type: !98)
!1567 = !DILocation(line: 233, column: 10, scope: !1559)
!1568 = !DILocation(line: 233, column: 43, scope: !1559)
!1569 = !DILocation(line: 233, column: 22, scope: !1559)
!1570 = !DILocation(line: 235, column: 27, scope: !1559)
!1571 = !DILocation(line: 235, column: 50, scope: !1559)
!1572 = !DILocation(line: 235, column: 39, scope: !1559)
!1573 = !DILocation(line: 235, column: 37, scope: !1559)
!1574 = !DILocation(line: 235, column: 2, scope: !1559)
!1575 = !DILocation(line: 235, column: 10, scope: !1559)
!1576 = !DILocation(line: 235, column: 25, scope: !1559)
!1577 = !DILocation(line: 236, column: 1, scope: !1559)
!1578 = distinct !DISubprogram(name: "z_sflist_head_set", scope: !106, file: !106, line: 238, type: !1497, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !244)
!1579 = !DILocalVariable(name: "list", arg: 1, scope: !1578, file: !106, line: 238, type: !497)
!1580 = !DILocation(line: 238, column: 52, scope: !1578)
!1581 = !DILocalVariable(name: "node", arg: 2, scope: !1578, file: !106, line: 238, type: !119)
!1582 = !DILocation(line: 238, column: 72, scope: !1578)
!1583 = !DILocation(line: 240, column: 15, scope: !1578)
!1584 = !DILocation(line: 240, column: 2, scope: !1578)
!1585 = !DILocation(line: 240, column: 8, scope: !1578)
!1586 = !DILocation(line: 240, column: 13, scope: !1578)
!1587 = !DILocation(line: 241, column: 1, scope: !1578)
!1588 = distinct !DISubprogram(name: "z_sflist_tail_set", scope: !106, file: !106, line: 243, type: !1497, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !244)
!1589 = !DILocalVariable(name: "list", arg: 1, scope: !1588, file: !106, line: 243, type: !497)
!1590 = !DILocation(line: 243, column: 52, scope: !1588)
!1591 = !DILocalVariable(name: "node", arg: 2, scope: !1588, file: !106, line: 243, type: !119)
!1592 = !DILocation(line: 243, column: 72, scope: !1588)
!1593 = !DILocation(line: 245, column: 15, scope: !1588)
!1594 = !DILocation(line: 245, column: 2, scope: !1588)
!1595 = !DILocation(line: 245, column: 8, scope: !1588)
!1596 = !DILocation(line: 245, column: 13, scope: !1588)
!1597 = !DILocation(line: 246, column: 1, scope: !1588)
!1598 = distinct !DISubprogram(name: "sys_slist_peek_head", scope: !1027, file: !1027, line: 238, type: !1599, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !244)
!1599 = !DISubroutineType(types: !1600)
!1600 = !{!1031, !1025}
!1601 = !DILocalVariable(name: "list", arg: 1, scope: !1598, file: !1027, line: 238, type: !1025)
!1602 = !DILocation(line: 238, column: 61, scope: !1598)
!1603 = !DILocation(line: 240, column: 9, scope: !1598)
!1604 = !DILocation(line: 240, column: 15, scope: !1598)
!1605 = !DILocation(line: 240, column: 2, scope: !1598)
!1606 = distinct !DISubprogram(name: "sys_sflist_remove", scope: !106, file: !106, line: 475, type: !1460, scopeLine: 475, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !244)
!1607 = !DILocalVariable(name: "list", arg: 1, scope: !1606, file: !106, line: 475, type: !497)
!1608 = !DILocation(line: 475, column: 52, scope: !1606)
!1609 = !DILocalVariable(name: "prev_node", arg: 2, scope: !1606, file: !106, line: 475, type: !119)
!1610 = !DILocation(line: 475, column: 72, scope: !1606)
!1611 = !DILocalVariable(name: "node", arg: 3, scope: !1606, file: !106, line: 475, type: !119)
!1612 = !DILocation(line: 475, column: 97, scope: !1606)
!1613 = !DILocation(line: 475, column: 109, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !1606, file: !106, line: 475, column: 109)
!1615 = !DILocation(line: 475, column: 119, scope: !1614)
!1616 = !DILocation(line: 475, column: 109, scope: !1606)
!1617 = !DILocation(line: 475, column: 154, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1614, file: !106, line: 475, column: 134)
!1619 = !DILocation(line: 475, column: 179, scope: !1618)
!1620 = !DILocation(line: 475, column: 160, scope: !1618)
!1621 = !DILocation(line: 475, column: 136, scope: !1618)
!1622 = !DILocation(line: 475, column: 212, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !1618, file: !106, line: 475, column: 191)
!1624 = !DILocation(line: 475, column: 191, scope: !1623)
!1625 = !DILocation(line: 475, column: 221, scope: !1623)
!1626 = !DILocation(line: 475, column: 218, scope: !1623)
!1627 = !DILocation(line: 475, column: 191, scope: !1618)
!1628 = !DILocation(line: 475, column: 247, scope: !1629)
!1629 = distinct !DILexicalBlock(scope: !1623, file: !106, line: 475, column: 227)
!1630 = !DILocation(line: 475, column: 274, scope: !1629)
!1631 = !DILocation(line: 475, column: 253, scope: !1629)
!1632 = !DILocation(line: 475, column: 229, scope: !1629)
!1633 = !DILocation(line: 475, column: 282, scope: !1629)
!1634 = !DILocation(line: 475, column: 284, scope: !1618)
!1635 = !DILocation(line: 475, column: 311, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !1614, file: !106, line: 475, column: 291)
!1637 = !DILocation(line: 475, column: 341, scope: !1636)
!1638 = !DILocation(line: 475, column: 322, scope: !1636)
!1639 = !DILocation(line: 475, column: 293, scope: !1636)
!1640 = !DILocation(line: 475, column: 374, scope: !1641)
!1641 = distinct !DILexicalBlock(scope: !1636, file: !106, line: 475, column: 353)
!1642 = !DILocation(line: 475, column: 353, scope: !1641)
!1643 = !DILocation(line: 475, column: 383, scope: !1641)
!1644 = !DILocation(line: 475, column: 380, scope: !1641)
!1645 = !DILocation(line: 475, column: 353, scope: !1636)
!1646 = !DILocation(line: 475, column: 409, scope: !1647)
!1647 = distinct !DILexicalBlock(scope: !1641, file: !106, line: 475, column: 389)
!1648 = !DILocation(line: 475, column: 415, scope: !1647)
!1649 = !DILocation(line: 475, column: 391, scope: !1647)
!1650 = !DILocation(line: 475, column: 427, scope: !1647)
!1651 = !DILocation(line: 475, column: 449, scope: !1606)
!1652 = !DILocation(line: 475, column: 431, scope: !1606)
!1653 = !DILocation(line: 475, column: 468, scope: !1606)
!1654 = distinct !DISubprogram(name: "sys_sflist_peek_next_no_check", scope: !106, file: !106, line: 348, type: !1377, scopeLine: 348, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !244)
!1655 = !DILocalVariable(name: "node", arg: 1, scope: !1654, file: !106, line: 348, type: !119)
!1656 = !DILocation(line: 348, column: 74, scope: !1654)
!1657 = !DILocation(line: 348, column: 108, scope: !1654)
!1658 = !DILocation(line: 348, column: 89, scope: !1654)
!1659 = !DILocation(line: 348, column: 82, scope: !1654)
