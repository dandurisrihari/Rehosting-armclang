; ModuleID = '../bc_files/mem_slab.bc'
source_filename = "/home/sri/zephyrproject/zephyr/kernel/mem_slab.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-arm-none-eabi"

%struct.init_entry = type { %union.init_function, ptr }
%union.init_function = type { ptr }
%struct.z_kernel = type { [1 x %struct._cpu], %struct._ready_q }
%struct._cpu = type { i32, ptr, ptr, ptr, i8, %struct._cpu_arch }
%struct._cpu_arch = type {}
%struct._ready_q = type { ptr, %struct._dnode }
%struct._dnode = type { %union.anon.0, %union.anon.1 }
%union.anon.0 = type { ptr }
%union.anon.1 = type { ptr }
%struct.k_mem_slab = type { %struct._wait_q_t, %struct.k_spinlock, ptr, ptr, %struct.k_mem_slab_info }
%struct._wait_q_t = type { %struct._dnode }
%struct.k_spinlock = type {}
%struct.k_mem_slab_info = type { i32, i32, i32 }
%struct.k_thread = type { %struct._thread_base, %struct._callee_saved, ptr, %struct._wait_q_t, i32, ptr, %struct._thread_arch }
%struct._thread_base = type { %union.anon, ptr, i8, i8, %union.anon.2, i32, ptr, %struct._timeout }
%union.anon = type { %struct._dnode }
%union.anon.2 = type { i16 }
%struct._timeout = type { %struct._dnode, ptr, i64 }
%struct._callee_saved = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._thread_arch = type { i32, i32 }
%struct.k_timer = type { %struct._timeout, %struct._wait_q_t, ptr, ptr, %struct.k_timeout_t, i32, ptr }
%struct.k_timeout_t = type { i64 }
%struct.k_queue = type { %struct._sflist, %struct.k_spinlock, %struct._wait_q_t }
%struct._sflist = type { ptr, ptr }
%struct.k_sem = type { %struct._wait_q_t, i32, i32 }
%struct.k_msgq = type { %struct._wait_q_t, %struct.k_spinlock, i32, i32, ptr, ptr, ptr, ptr, i32, i8 }
%struct.z_spinlock_key = type { i32 }
%struct.sys_memory_stats = type { i32, i32, i32 }

@__init_init_mem_slab_obj_core_list = internal constant %struct.init_entry { %union.init_function { ptr @init_mem_slab_obj_core_list }, ptr null }, section ".z_init_PRE_KERNEL_130_0_", align 4, !dbg !0
@_kernel = external dso_local global %struct.z_kernel, align 4
@_k_mem_slab_list_start = external dso_local global [0 x %struct.k_mem_slab], align 4
@_k_mem_slab_list_end = external dso_local global [0 x %struct.k_mem_slab], align 4
@llvm.used = appending global [1 x ptr] [ptr @__init_init_mem_slab_obj_core_list], section "llvm.metadata"

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_k_object_access_grant(ptr noundef %0, ptr noundef %1) #0 !dbg !141 {
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
  %6 = call i64 @z_timeout_expires(ptr noundef %5) #6, !dbg !296
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
  %6 = call i64 @z_timeout_remaining(ptr noundef %5) #6, !dbg !305
  ret i64 %6, !dbg !306
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_timer_expires_ticks(ptr noundef %0) #0 !dbg !307 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !330, metadata !DIExpression()), !dbg !331
  %3 = load ptr, ptr %2, align 4, !dbg !332
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !333
  %5 = call i64 @z_timeout_expires(ptr noundef %4) #6, !dbg !334
  ret i64 %5, !dbg !335
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_timer_remaining_ticks(ptr noundef %0) #0 !dbg !336 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !338, metadata !DIExpression()), !dbg !339
  %3 = load ptr, ptr %2, align 4, !dbg !340
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !341
  %5 = call i64 @z_timeout_remaining(ptr noundef %4) #6, !dbg !342
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
  call void @llvm.dbg.declare(metadata ptr %2, metadata !388, metadata !DIExpression()), !dbg !389
  %3 = load ptr, ptr %2, align 4, !dbg !390
  %4 = getelementptr inbounds %struct.k_queue, ptr %3, i32 0, i32 0, !dbg !391
  %5 = call zeroext i1 @sys_sflist_is_empty(ptr noundef %4) #6, !dbg !392
  %6 = zext i1 %5 to i32, !dbg !393
  ret i32 %6, !dbg !394
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_sem_count_get(ptr noundef %0) #0 !dbg !395 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !405, metadata !DIExpression()), !dbg !406
  %3 = load ptr, ptr %2, align 4, !dbg !407
  %4 = getelementptr inbounds %struct.k_sem, ptr %3, i32 0, i32 1, !dbg !408
  %5 = load i32, ptr %4, align 4, !dbg !408
  ret i32 %5, !dbg !409
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_msgq_num_free_get(ptr noundef %0) #0 !dbg !410 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !427, metadata !DIExpression()), !dbg !428
  %3 = load ptr, ptr %2, align 4, !dbg !429
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 3, !dbg !430
  %5 = load i32, ptr %4, align 4, !dbg !430
  %6 = load ptr, ptr %2, align 4, !dbg !431
  %7 = getelementptr inbounds %struct.k_msgq, ptr %6, i32 0, i32 8, !dbg !432
  %8 = load i32, ptr %7, align 4, !dbg !432
  %9 = sub i32 %5, %8, !dbg !433
  ret i32 %9, !dbg !434
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_msgq_num_used_get(ptr noundef %0) #0 !dbg !435 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !437, metadata !DIExpression()), !dbg !438
  %3 = load ptr, ptr %2, align 4, !dbg !439
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 8, !dbg !440
  %5 = load i32, ptr %4, align 4, !dbg !440
  ret i32 %5, !dbg !441
}

; Function Attrs: nounwind optsize
define internal i32 @init_mem_slab_obj_core_list() #1 !dbg !442 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %2) #7, !dbg !461
  call void @llvm.dbg.declare(metadata ptr %2, metadata !444, metadata !DIExpression()), !dbg !462
  store i32 0, ptr %2, align 4, !dbg !462
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #7, !dbg !463
  call void @llvm.dbg.declare(metadata ptr %3, metadata !445, metadata !DIExpression()), !dbg !464
  store ptr @_k_mem_slab_list_start, ptr %3, align 4, !dbg !464
  br label %6, !dbg !463

6:                                                ; preds = %21, %0
  %7 = load ptr, ptr %3, align 4, !dbg !465
  %8 = icmp ult ptr %7, @_k_mem_slab_list_end, !dbg !468
  %9 = zext i1 %8 to i32, !dbg !468
  store i32 %9, ptr %4, align 4, !dbg !469
  %10 = load i32, ptr %4, align 4, !dbg !471
  %11 = icmp ne i32 %10, 0, !dbg !472
  br i1 %11, label %13, label %12, !dbg !472

12:                                               ; preds = %6
  store i32 2, ptr %5, align 4
  br label %24, !dbg !472

13:                                               ; preds = %6
  %14 = load ptr, ptr %3, align 4, !dbg !473
  %15 = call i32 @create_free_list(ptr noundef %14) #6, !dbg !475
  store i32 %15, ptr %2, align 4, !dbg !476
  %16 = load i32, ptr %2, align 4, !dbg !477
  %17 = icmp slt i32 %16, 0, !dbg !479
  br i1 %17, label %18, label %19, !dbg !480

18:                                               ; preds = %13
  store i32 5, ptr %5, align 4
  br label %24, !dbg !481

19:                                               ; preds = %13
  %20 = load ptr, ptr %3, align 4, !dbg !483
  call void @z_object_init(ptr noundef %20) #6, !dbg !484
  br label %21, !dbg !485

21:                                               ; preds = %19
  %22 = load ptr, ptr %3, align 4, !dbg !486
  %23 = getelementptr inbounds %struct.k_mem_slab, ptr %22, i32 1, !dbg !486
  store ptr %23, ptr %3, align 4, !dbg !486
  br label %6, !dbg !487, !llvm.loop !488

24:                                               ; preds = %18, %12
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #7, !dbg !487
  %25 = load i32, ptr %5, align 4
  switch i32 %25, label %29 [
    i32 2, label %26
    i32 5, label %27
  ]

26:                                               ; preds = %24
  br label %27, !dbg !489

27:                                               ; preds = %26, %24
  call void @llvm.dbg.label(metadata !460), !dbg !490
  %28 = load i32, ptr %2, align 4, !dbg !491
  store i32 %28, ptr %1, align 4, !dbg !492
  store i32 1, ptr %5, align 4
  br label %29, !dbg !492

29:                                               ; preds = %27, %24
  call void @llvm.lifetime.end.p0(i64 4, ptr %2) #7, !dbg !493
  %30 = load i32, ptr %1, align 4, !dbg !493
  ret i32 %30, !dbg !493
}

; Function Attrs: nounwind optsize
define hidden i32 @k_mem_slab_init(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #1 !dbg !494 {
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.k_spinlock, align 1
  store ptr %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !500, metadata !DIExpression()), !dbg !506
  store ptr %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !501, metadata !DIExpression()), !dbg !507
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !502, metadata !DIExpression()), !dbg !508
  store i32 %3, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !503, metadata !DIExpression()), !dbg !509
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #7, !dbg !510
  call void @llvm.dbg.declare(metadata ptr %9, metadata !504, metadata !DIExpression()), !dbg !511
  store i32 0, ptr %9, align 4, !dbg !511
  %11 = load i32, ptr %8, align 4, !dbg !512
  %12 = load ptr, ptr %5, align 4, !dbg !513
  %13 = getelementptr inbounds %struct.k_mem_slab, ptr %12, i32 0, i32 4, !dbg !514
  %14 = getelementptr inbounds %struct.k_mem_slab_info, ptr %13, i32 0, i32 0, !dbg !515
  store i32 %11, ptr %14, align 4, !dbg !516
  %15 = load i32, ptr %7, align 4, !dbg !517
  %16 = load ptr, ptr %5, align 4, !dbg !518
  %17 = getelementptr inbounds %struct.k_mem_slab, ptr %16, i32 0, i32 4, !dbg !519
  %18 = getelementptr inbounds %struct.k_mem_slab_info, ptr %17, i32 0, i32 1, !dbg !520
  store i32 %15, ptr %18, align 4, !dbg !521
  %19 = load ptr, ptr %6, align 4, !dbg !522
  %20 = load ptr, ptr %5, align 4, !dbg !523
  %21 = getelementptr inbounds %struct.k_mem_slab, ptr %20, i32 0, i32 2, !dbg !524
  store ptr %19, ptr %21, align 4, !dbg !525
  %22 = load ptr, ptr %5, align 4, !dbg !526
  %23 = getelementptr inbounds %struct.k_mem_slab, ptr %22, i32 0, i32 4, !dbg !527
  %24 = getelementptr inbounds %struct.k_mem_slab_info, ptr %23, i32 0, i32 2, !dbg !528
  store i32 0, ptr %24, align 4, !dbg !529
  %25 = load ptr, ptr %5, align 4, !dbg !530
  %26 = getelementptr inbounds %struct.k_mem_slab, ptr %25, i32 0, i32 1, !dbg !531
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %26, ptr align 1 %10, i32 0, i1 false), !dbg !532
  %27 = load ptr, ptr %5, align 4, !dbg !533
  %28 = call i32 @create_free_list(ptr noundef %27) #6, !dbg !534
  store i32 %28, ptr %9, align 4, !dbg !535
  %29 = load i32, ptr %9, align 4, !dbg !536
  %30 = icmp slt i32 %29, 0, !dbg !538
  br i1 %30, label %31, label %32, !dbg !539

31:                                               ; preds = %4
  br label %36, !dbg !540

32:                                               ; preds = %4
  %33 = load ptr, ptr %5, align 4, !dbg !542
  %34 = getelementptr inbounds %struct.k_mem_slab, ptr %33, i32 0, i32 0, !dbg !543
  call void @z_waitq_init(ptr noundef %34) #6, !dbg !544
  %35 = load ptr, ptr %5, align 4, !dbg !545
  call void @z_object_init(ptr noundef %35) #6, !dbg !546
  br label %36, !dbg !546

36:                                               ; preds = %32, %31
  call void @llvm.dbg.label(metadata !505), !dbg !547
  br label %37, !dbg !548

37:                                               ; preds = %36
  br label %38, !dbg !549

38:                                               ; preds = %37
  br label %39, !dbg !549

39:                                               ; preds = %38
  %40 = load i32, ptr %9, align 4, !dbg !551
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #7, !dbg !552
  ret i32 %40, !dbg !553
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: nounwind optsize
define internal i32 @create_free_list(ptr noundef %0) #1 !dbg !554 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !558, metadata !DIExpression()), !dbg !561
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #7, !dbg !562
  call void @llvm.dbg.declare(metadata ptr %4, metadata !559, metadata !DIExpression()), !dbg !563
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #7, !dbg !564
  call void @llvm.dbg.declare(metadata ptr %5, metadata !560, metadata !DIExpression()), !dbg !565
  %7 = load ptr, ptr %3, align 4, !dbg !566
  %8 = getelementptr inbounds %struct.k_mem_slab, ptr %7, i32 0, i32 4, !dbg !568
  %9 = getelementptr inbounds %struct.k_mem_slab_info, ptr %8, i32 0, i32 1, !dbg !569
  %10 = load i32, ptr %9, align 4, !dbg !569
  %11 = load ptr, ptr %3, align 4, !dbg !570
  %12 = getelementptr inbounds %struct.k_mem_slab, ptr %11, i32 0, i32 2, !dbg !571
  %13 = load ptr, ptr %12, align 4, !dbg !571
  %14 = ptrtoint ptr %13 to i32, !dbg !572
  %15 = or i32 %10, %14, !dbg !573
  %16 = and i32 %15, 3, !dbg !574
  %17 = icmp ne i32 %16, 0, !dbg !575
  br i1 %17, label %18, label %19, !dbg !576

18:                                               ; preds = %1
  store i32 -5, ptr %2, align 4, !dbg !577
  store i32 1, ptr %6, align 4
  br label %50, !dbg !577

19:                                               ; preds = %1
  %20 = load ptr, ptr %3, align 4, !dbg !579
  %21 = getelementptr inbounds %struct.k_mem_slab, ptr %20, i32 0, i32 3, !dbg !580
  store ptr null, ptr %21, align 4, !dbg !581
  %22 = load ptr, ptr %3, align 4, !dbg !582
  %23 = getelementptr inbounds %struct.k_mem_slab, ptr %22, i32 0, i32 2, !dbg !583
  %24 = load ptr, ptr %23, align 4, !dbg !583
  store ptr %24, ptr %5, align 4, !dbg !584
  store i32 0, ptr %4, align 4, !dbg !585
  br label %25, !dbg !587

25:                                               ; preds = %46, %19
  %26 = load i32, ptr %4, align 4, !dbg !588
  %27 = load ptr, ptr %3, align 4, !dbg !590
  %28 = getelementptr inbounds %struct.k_mem_slab, ptr %27, i32 0, i32 4, !dbg !591
  %29 = getelementptr inbounds %struct.k_mem_slab_info, ptr %28, i32 0, i32 0, !dbg !592
  %30 = load i32, ptr %29, align 4, !dbg !592
  %31 = icmp ult i32 %26, %30, !dbg !593
  br i1 %31, label %32, label %49, !dbg !594

32:                                               ; preds = %25
  %33 = load ptr, ptr %3, align 4, !dbg !595
  %34 = getelementptr inbounds %struct.k_mem_slab, ptr %33, i32 0, i32 3, !dbg !597
  %35 = load ptr, ptr %34, align 4, !dbg !597
  %36 = load ptr, ptr %5, align 4, !dbg !598
  store ptr %35, ptr %36, align 4, !dbg !599
  %37 = load ptr, ptr %5, align 4, !dbg !600
  %38 = load ptr, ptr %3, align 4, !dbg !601
  %39 = getelementptr inbounds %struct.k_mem_slab, ptr %38, i32 0, i32 3, !dbg !602
  store ptr %37, ptr %39, align 4, !dbg !603
  %40 = load ptr, ptr %3, align 4, !dbg !604
  %41 = getelementptr inbounds %struct.k_mem_slab, ptr %40, i32 0, i32 4, !dbg !605
  %42 = getelementptr inbounds %struct.k_mem_slab_info, ptr %41, i32 0, i32 1, !dbg !606
  %43 = load i32, ptr %42, align 4, !dbg !606
  %44 = load ptr, ptr %5, align 4, !dbg !607
  %45 = getelementptr inbounds i8, ptr %44, i32 %43, !dbg !607
  store ptr %45, ptr %5, align 4, !dbg !607
  br label %46, !dbg !608

46:                                               ; preds = %32
  %47 = load i32, ptr %4, align 4, !dbg !609
  %48 = add i32 %47, 1, !dbg !609
  store i32 %48, ptr %4, align 4, !dbg !609
  br label %25, !dbg !610, !llvm.loop !611

49:                                               ; preds = %25
  store i32 0, ptr %2, align 4, !dbg !613
  store i32 1, ptr %6, align 4
  br label %50, !dbg !613

50:                                               ; preds = %49, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #7, !dbg !614
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #7, !dbg !614
  %51 = load i32, ptr %2, align 4, !dbg !614
  ret i32 %51, !dbg !614
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_waitq_init(ptr noundef %0) #0 !dbg !615 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !620, metadata !DIExpression()), !dbg !621
  %3 = load ptr, ptr %2, align 4, !dbg !622
  %4 = getelementptr inbounds %struct._wait_q_t, ptr %3, i32 0, i32 0, !dbg !623
  call void @sys_dlist_init(ptr noundef %4) #6, !dbg !624
  ret void, !dbg !625
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_object_init(ptr noundef %0) #0 !dbg !626 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !628, metadata !DIExpression()), !dbg !629
  %3 = load ptr, ptr %2, align 4, !dbg !630
  ret void, !dbg !631
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind optsize
define hidden i32 @k_mem_slab_alloc(ptr noundef %0, ptr noundef %1, [1 x i64] %2) #1 !dbg !632 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.z_spinlock_key, align 4
  %9 = alloca ptr, align 4
  %10 = alloca %struct.z_spinlock_key, align 4
  %11 = alloca ptr, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.k_timeout_t, align 8
  %14 = alloca ptr, align 4
  %15 = alloca ptr, align 4
  %16 = alloca %struct.z_spinlock_key, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.k_timeout_t, align 8
  %19 = alloca i32, align 4
  %20 = getelementptr inbounds %struct.k_timeout_t, ptr %13, i32 0, i32 0
  store [1 x i64] %2, ptr %20, align 8
  store ptr %0, ptr %14, align 4
  call void @llvm.dbg.declare(metadata ptr %14, metadata !637, metadata !DIExpression()), !dbg !646
  store ptr %1, ptr %15, align 4
  call void @llvm.dbg.declare(metadata ptr %15, metadata !638, metadata !DIExpression()), !dbg !647
  call void @llvm.dbg.declare(metadata ptr %13, metadata !639, metadata !DIExpression()), !dbg !648
  call void @llvm.lifetime.start.p0(i64 4, ptr %16) #7, !dbg !649
  call void @llvm.dbg.declare(metadata ptr %16, metadata !640, metadata !DIExpression()), !dbg !650
  %21 = load ptr, ptr %14, align 4, !dbg !651
  %22 = getelementptr inbounds %struct.k_mem_slab, ptr %21, i32 0, i32 1, !dbg !652
  store ptr %22, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !653, metadata !DIExpression()), !dbg !660
  %23 = load ptr, ptr %11, align 4, !dbg !662
  call void @llvm.dbg.declare(metadata ptr %10, metadata !659, metadata !DIExpression()), !dbg !663
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #7, !dbg !664
  call void @llvm.dbg.declare(metadata ptr %7, metadata !670, metadata !DIExpression()), !dbg !672
  %24 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #7, !dbg !673, !srcloc !674
  store i32 %24, ptr %7, align 4, !dbg !673
  %25 = load i32, ptr %7, align 4, !dbg !675
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #7, !dbg !676
  store i32 %25, ptr %10, align 4, !dbg !677
  %26 = load ptr, ptr %11, align 4, !dbg !678
  store ptr %26, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !679, metadata !DIExpression()), !dbg !684
  %27 = load ptr, ptr %6, align 4, !dbg !686
  %28 = load ptr, ptr %11, align 4, !dbg !687
  store ptr %28, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !688, metadata !DIExpression()), !dbg !691
  %29 = load ptr, ptr %5, align 4, !dbg !693
  %30 = load i32, ptr %10, align 4, !dbg !694
  %31 = getelementptr inbounds %struct.z_spinlock_key, ptr %16, i32 0, i32 0, !dbg !695
  store i32 %30, ptr %31, align 4, !dbg !695
  call void @llvm.lifetime.start.p0(i64 4, ptr %17) #7, !dbg !696
  call void @llvm.dbg.declare(metadata ptr %17, metadata !645, metadata !DIExpression()), !dbg !697
  br label %32, !dbg !698

32:                                               ; preds = %3
  br label %33, !dbg !699

33:                                               ; preds = %32
  br label %34, !dbg !699

34:                                               ; preds = %33
  %35 = load ptr, ptr %14, align 4, !dbg !701
  %36 = getelementptr inbounds %struct.k_mem_slab, ptr %35, i32 0, i32 3, !dbg !703
  %37 = load ptr, ptr %36, align 4, !dbg !703
  %38 = icmp ne ptr %37, null, !dbg !704
  br i1 %38, label %39, label %55, !dbg !705

39:                                               ; preds = %34
  %40 = load ptr, ptr %14, align 4, !dbg !706
  %41 = getelementptr inbounds %struct.k_mem_slab, ptr %40, i32 0, i32 3, !dbg !708
  %42 = load ptr, ptr %41, align 4, !dbg !708
  %43 = load ptr, ptr %15, align 4, !dbg !709
  store ptr %42, ptr %43, align 4, !dbg !710
  %44 = load ptr, ptr %14, align 4, !dbg !711
  %45 = getelementptr inbounds %struct.k_mem_slab, ptr %44, i32 0, i32 3, !dbg !712
  %46 = load ptr, ptr %45, align 4, !dbg !712
  %47 = load ptr, ptr %46, align 4, !dbg !713
  %48 = load ptr, ptr %14, align 4, !dbg !714
  %49 = getelementptr inbounds %struct.k_mem_slab, ptr %48, i32 0, i32 3, !dbg !715
  store ptr %47, ptr %49, align 4, !dbg !716
  %50 = load ptr, ptr %14, align 4, !dbg !717
  %51 = getelementptr inbounds %struct.k_mem_slab, ptr %50, i32 0, i32 4, !dbg !718
  %52 = getelementptr inbounds %struct.k_mem_slab_info, ptr %51, i32 0, i32 2, !dbg !719
  %53 = load i32, ptr %52, align 4, !dbg !720
  %54 = add i32 %53, 1, !dbg !720
  store i32 %54, ptr %52, align 4, !dbg !720
  store i32 0, ptr %17, align 4, !dbg !721
  br label %89, !dbg !722

55:                                               ; preds = %34
  %56 = getelementptr inbounds %struct.k_timeout_t, ptr %13, i32 0, i32 0, !dbg !723
  %57 = load i64, ptr %56, align 8, !dbg !723
  %58 = getelementptr inbounds %struct.k_timeout_t, ptr %18, i32 0, i32 0, !dbg !725
  store i64 0, ptr %58, align 8, !dbg !725
  %59 = icmp eq i64 %57, 0, !dbg !726
  br i1 %59, label %60, label %62, !dbg !727

60:                                               ; preds = %55
  %61 = load ptr, ptr %15, align 4, !dbg !728
  store ptr null, ptr %61, align 4, !dbg !730
  store i32 -6, ptr %17, align 4, !dbg !731
  br label %88, !dbg !732

62:                                               ; preds = %55
  br label %63, !dbg !733

63:                                               ; preds = %62
  br label %64, !dbg !735

64:                                               ; preds = %63
  br label %65, !dbg !735

65:                                               ; preds = %64
  %66 = load ptr, ptr %14, align 4, !dbg !737
  %67 = getelementptr inbounds %struct.k_mem_slab, ptr %66, i32 0, i32 1, !dbg !738
  %68 = load ptr, ptr %14, align 4, !dbg !739
  %69 = getelementptr inbounds %struct.k_mem_slab, ptr %68, i32 0, i32 0, !dbg !740
  %70 = getelementptr inbounds %struct.z_spinlock_key, ptr %16, i32 0, i32 0, !dbg !741
  %71 = load [1 x i32], ptr %70, align 4, !dbg !741
  %72 = getelementptr inbounds %struct.k_timeout_t, ptr %13, i32 0, i32 0, !dbg !741
  %73 = load [1 x i64], ptr %72, align 8, !dbg !741
  %74 = call i32 @z_pend_curr(ptr noundef %67, [1 x i32] %71, ptr noundef %69, [1 x i64] %73) #6, !dbg !741
  store i32 %74, ptr %17, align 4, !dbg !742
  %75 = load i32, ptr %17, align 4, !dbg !743
  %76 = icmp eq i32 %75, 0, !dbg !745
  br i1 %76, label %77, label %83, !dbg !746

77:                                               ; preds = %65
  %78 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !747
  %79 = getelementptr inbounds %struct.k_thread, ptr %78, i32 0, i32 0, !dbg !749
  %80 = getelementptr inbounds %struct._thread_base, ptr %79, i32 0, i32 6, !dbg !750
  %81 = load ptr, ptr %80, align 4, !dbg !750
  %82 = load ptr, ptr %15, align 4, !dbg !751
  store ptr %81, ptr %82, align 4, !dbg !752
  br label %83, !dbg !753

83:                                               ; preds = %77, %65
  br label %84, !dbg !754

84:                                               ; preds = %83
  br label %85, !dbg !755

85:                                               ; preds = %84
  br label %86, !dbg !755

86:                                               ; preds = %85
  %87 = load i32, ptr %17, align 4, !dbg !757
  store i32 %87, ptr %12, align 4, !dbg !758
  store i32 1, ptr %19, align 4
  br label %104, !dbg !758

88:                                               ; preds = %60
  br label %89

89:                                               ; preds = %88, %39
  br label %90, !dbg !759

90:                                               ; preds = %89
  br label %91, !dbg !760

91:                                               ; preds = %90
  br label %92, !dbg !760

92:                                               ; preds = %91
  %93 = load ptr, ptr %14, align 4, !dbg !762
  %94 = getelementptr inbounds %struct.k_mem_slab, ptr %93, i32 0, i32 1, !dbg !763
  %95 = getelementptr inbounds %struct.z_spinlock_key, ptr %16, i32 0, i32 0, !dbg !764
  %96 = load [1 x i32], ptr %95, align 4, !dbg !764
  store [1 x i32] %96, ptr %8, align 4
  store ptr %94, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !765, metadata !DIExpression()), !dbg !771
  call void @llvm.dbg.declare(metadata ptr %8, metadata !770, metadata !DIExpression()), !dbg !773
  %97 = load ptr, ptr %9, align 4, !dbg !774
  %98 = load i32, ptr %8, align 4, !dbg !775
  store i32 %98, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !776, metadata !DIExpression()), !dbg !781
  %99 = load i32, ptr %4, align 4, !dbg !783
  %100 = icmp ne i32 %99, 0, !dbg !785
  br i1 %100, label %101, label %102, !dbg !786

101:                                              ; preds = %92
  br label %arch_irq_unlock.exit, !dbg !787

102:                                              ; preds = %92
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #7, !dbg !789, !srcloc !790
  br label %arch_irq_unlock.exit, !dbg !791

arch_irq_unlock.exit:                             ; preds = %101, %102
  %103 = load i32, ptr %17, align 4, !dbg !792
  store i32 %103, ptr %12, align 4, !dbg !793
  store i32 1, ptr %19, align 4
  br label %104, !dbg !793

104:                                              ; preds = %arch_irq_unlock.exit, %86
  call void @llvm.lifetime.end.p0(i64 4, ptr %17) #7, !dbg !794
  call void @llvm.lifetime.end.p0(i64 4, ptr %16) #7, !dbg !794
  %105 = load i32, ptr %12, align 4, !dbg !794
  ret i32 %105, !dbg !794
}

; Function Attrs: optsize
declare !dbg !795 dso_local i32 @z_pend_curr(ptr noundef, [1 x i32], ptr noundef, [1 x i64]) #5

; Function Attrs: nounwind optsize
define hidden void @k_mem_slab_free(ptr noundef %0, ptr noundef %1) #1 !dbg !799 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 4
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 4
  %12 = alloca %struct.z_spinlock_key, align 4
  %13 = alloca ptr, align 4
  %14 = alloca %struct.z_spinlock_key, align 4
  %15 = alloca ptr, align 4
  %16 = alloca ptr, align 4
  %17 = alloca ptr, align 4
  %18 = alloca %struct.z_spinlock_key, align 4
  %19 = alloca ptr, align 4
  %20 = alloca i32, align 4
  store ptr %0, ptr %16, align 4
  call void @llvm.dbg.declare(metadata ptr %16, metadata !803, metadata !DIExpression()), !dbg !809
  store ptr %1, ptr %17, align 4
  call void @llvm.dbg.declare(metadata ptr %17, metadata !804, metadata !DIExpression()), !dbg !810
  call void @llvm.lifetime.start.p0(i64 4, ptr %18) #7, !dbg !811
  call void @llvm.dbg.declare(metadata ptr %18, metadata !805, metadata !DIExpression()), !dbg !812
  %21 = load ptr, ptr %16, align 4, !dbg !813
  %22 = getelementptr inbounds %struct.k_mem_slab, ptr %21, i32 0, i32 1, !dbg !814
  store ptr %22, ptr %15, align 4
  call void @llvm.dbg.declare(metadata ptr %15, metadata !653, metadata !DIExpression()), !dbg !815
  %23 = load ptr, ptr %15, align 4, !dbg !817
  call void @llvm.dbg.declare(metadata ptr %14, metadata !659, metadata !DIExpression()), !dbg !818
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #7, !dbg !819
  call void @llvm.dbg.declare(metadata ptr %8, metadata !670, metadata !DIExpression()), !dbg !821
  %24 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #7, !dbg !822, !srcloc !674
  store i32 %24, ptr %8, align 4, !dbg !822
  %25 = load i32, ptr %8, align 4, !dbg !823
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #7, !dbg !824
  store i32 %25, ptr %14, align 4, !dbg !825
  %26 = load ptr, ptr %15, align 4, !dbg !826
  store ptr %26, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !679, metadata !DIExpression()), !dbg !827
  %27 = load ptr, ptr %7, align 4, !dbg !829
  %28 = load ptr, ptr %15, align 4, !dbg !830
  store ptr %28, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !688, metadata !DIExpression()), !dbg !831
  %29 = load ptr, ptr %6, align 4, !dbg !833
  %30 = load i32, ptr %14, align 4, !dbg !834
  %31 = getelementptr inbounds %struct.z_spinlock_key, ptr %18, i32 0, i32 0, !dbg !835
  store i32 %30, ptr %31, align 4, !dbg !835
  br label %32, !dbg !836

32:                                               ; preds = %2
  br label %33, !dbg !837

33:                                               ; preds = %32
  br label %34, !dbg !837

34:                                               ; preds = %33
  %35 = load ptr, ptr %16, align 4, !dbg !839
  %36 = getelementptr inbounds %struct.k_mem_slab, ptr %35, i32 0, i32 3, !dbg !840
  %37 = load ptr, ptr %36, align 4, !dbg !840
  %38 = icmp eq ptr %37, null, !dbg !841
  br i1 %38, label %39, label %69, !dbg !842

39:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 4, ptr %19) #7, !dbg !843
  call void @llvm.dbg.declare(metadata ptr %19, metadata !806, metadata !DIExpression()), !dbg !844
  %40 = load ptr, ptr %16, align 4, !dbg !845
  %41 = getelementptr inbounds %struct.k_mem_slab, ptr %40, i32 0, i32 0, !dbg !846
  %42 = call ptr @z_unpend_first_thread(ptr noundef %41) #6, !dbg !847
  store ptr %42, ptr %19, align 4, !dbg !844
  %43 = load ptr, ptr %19, align 4, !dbg !848
  %44 = icmp ne ptr %43, null, !dbg !850
  br i1 %44, label %45, label %65, !dbg !851

45:                                               ; preds = %39
  br label %46, !dbg !852

46:                                               ; preds = %45
  br label %47, !dbg !854

47:                                               ; preds = %46
  br label %48, !dbg !854

48:                                               ; preds = %47
  %49 = load ptr, ptr %19, align 4, !dbg !856
  %50 = load ptr, ptr %17, align 4, !dbg !857
  store ptr %49, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !858, metadata !DIExpression()), !dbg !866
  store i32 0, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !864, metadata !DIExpression()), !dbg !868
  store ptr %50, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !865, metadata !DIExpression()), !dbg !869
  %51 = load ptr, ptr %9, align 4, !dbg !870
  %52 = load i32, ptr %10, align 4, !dbg !871
  store ptr %51, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !872, metadata !DIExpression()), !dbg !879
  store i32 %52, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !878, metadata !DIExpression()), !dbg !881
  %53 = load i32, ptr %4, align 4, !dbg !882
  %54 = load ptr, ptr %3, align 4, !dbg !883
  %55 = getelementptr inbounds %struct.k_thread, ptr %54, i32 0, i32 6, !dbg !884
  %56 = getelementptr inbounds %struct._thread_arch, ptr %55, i32 0, i32 1, !dbg !885
  store i32 %53, ptr %56, align 4, !dbg !886
  %57 = load ptr, ptr %11, align 4, !dbg !887
  %58 = load ptr, ptr %9, align 4, !dbg !888
  %59 = getelementptr inbounds %struct._thread_base, ptr %58, i32 0, i32 6, !dbg !889
  store ptr %57, ptr %59, align 4, !dbg !890
  %60 = load ptr, ptr %19, align 4, !dbg !891
  call void @z_ready_thread(ptr noundef %60) #6, !dbg !892
  %61 = load ptr, ptr %16, align 4, !dbg !893
  %62 = getelementptr inbounds %struct.k_mem_slab, ptr %61, i32 0, i32 1, !dbg !894
  %63 = getelementptr inbounds %struct.z_spinlock_key, ptr %18, i32 0, i32 0, !dbg !895
  %64 = load [1 x i32], ptr %63, align 4, !dbg !895
  call void @z_reschedule(ptr noundef %62, [1 x i32] %64) #6, !dbg !895
  store i32 1, ptr %20, align 4
  br label %66, !dbg !896

65:                                               ; preds = %39
  store i32 0, ptr %20, align 4, !dbg !897
  br label %66, !dbg !897

66:                                               ; preds = %65, %48
  call void @llvm.lifetime.end.p0(i64 4, ptr %19) #7, !dbg !897
  %67 = load i32, ptr %20, align 4
  switch i32 %67, label %95 [
    i32 0, label %68
  ]

68:                                               ; preds = %66
  br label %69, !dbg !898

69:                                               ; preds = %68, %34
  %70 = load ptr, ptr %16, align 4, !dbg !899
  %71 = getelementptr inbounds %struct.k_mem_slab, ptr %70, i32 0, i32 3, !dbg !900
  %72 = load ptr, ptr %71, align 4, !dbg !900
  %73 = load ptr, ptr %17, align 4, !dbg !901
  store ptr %72, ptr %73, align 4, !dbg !902
  %74 = load ptr, ptr %17, align 4, !dbg !903
  %75 = load ptr, ptr %16, align 4, !dbg !904
  %76 = getelementptr inbounds %struct.k_mem_slab, ptr %75, i32 0, i32 3, !dbg !905
  store ptr %74, ptr %76, align 4, !dbg !906
  %77 = load ptr, ptr %16, align 4, !dbg !907
  %78 = getelementptr inbounds %struct.k_mem_slab, ptr %77, i32 0, i32 4, !dbg !908
  %79 = getelementptr inbounds %struct.k_mem_slab_info, ptr %78, i32 0, i32 2, !dbg !909
  %80 = load i32, ptr %79, align 4, !dbg !910
  %81 = add i32 %80, -1, !dbg !910
  store i32 %81, ptr %79, align 4, !dbg !910
  br label %82, !dbg !911

82:                                               ; preds = %69
  br label %83, !dbg !912

83:                                               ; preds = %82
  br label %84, !dbg !912

84:                                               ; preds = %83
  %85 = load ptr, ptr %16, align 4, !dbg !914
  %86 = getelementptr inbounds %struct.k_mem_slab, ptr %85, i32 0, i32 1, !dbg !915
  %87 = getelementptr inbounds %struct.z_spinlock_key, ptr %18, i32 0, i32 0, !dbg !916
  %88 = load [1 x i32], ptr %87, align 4, !dbg !916
  store [1 x i32] %88, ptr %12, align 4
  store ptr %86, ptr %13, align 4
  call void @llvm.dbg.declare(metadata ptr %13, metadata !765, metadata !DIExpression()), !dbg !917
  call void @llvm.dbg.declare(metadata ptr %12, metadata !770, metadata !DIExpression()), !dbg !919
  %89 = load ptr, ptr %13, align 4, !dbg !920
  %90 = load i32, ptr %12, align 4, !dbg !921
  store i32 %90, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !776, metadata !DIExpression()), !dbg !922
  %91 = load i32, ptr %5, align 4, !dbg !924
  %92 = icmp ne i32 %91, 0, !dbg !925
  br i1 %92, label %93, label %94, !dbg !926

93:                                               ; preds = %84
  br label %arch_irq_unlock.exit, !dbg !927

94:                                               ; preds = %84
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #7, !dbg !928, !srcloc !790
  br label %arch_irq_unlock.exit, !dbg !929

arch_irq_unlock.exit:                             ; preds = %93, %94
  store i32 0, ptr %20, align 4, !dbg !930
  br label %95, !dbg !930

95:                                               ; preds = %arch_irq_unlock.exit, %66
  call void @llvm.lifetime.end.p0(i64 4, ptr %18) #7, !dbg !930
  %96 = load i32, ptr %20, align 4
  switch i32 %96, label %98 [
    i32 0, label %97
    i32 1, label %97
  ]

97:                                               ; preds = %95, %95
  ret void, !dbg !930

98:                                               ; preds = %95
  unreachable
}

; Function Attrs: optsize
declare !dbg !931 dso_local ptr @z_unpend_first_thread(ptr noundef) #5

; Function Attrs: optsize
declare !dbg !934 dso_local void @z_ready_thread(ptr noundef) #5

; Function Attrs: optsize
declare !dbg !937 dso_local void @z_reschedule(ptr noundef, [1 x i32]) #5

; Function Attrs: nounwind optsize
define hidden i32 @k_mem_slab_runtime_stats_get(ptr noundef %0, ptr noundef %1) #1 !dbg !938 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.z_spinlock_key, align 4
  %8 = alloca ptr, align 4
  %9 = alloca %struct.z_spinlock_key, align 4
  %10 = alloca ptr, align 4
  %11 = alloca i32, align 4
  %12 = alloca ptr, align 4
  %13 = alloca ptr, align 4
  %14 = alloca %struct.z_spinlock_key, align 4
  store ptr %0, ptr %12, align 4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !949, metadata !DIExpression()), !dbg !952
  store ptr %1, ptr %13, align 4
  call void @llvm.dbg.declare(metadata ptr %13, metadata !950, metadata !DIExpression()), !dbg !953
  %15 = load ptr, ptr %12, align 4, !dbg !954
  %16 = icmp eq ptr %15, null, !dbg !956
  br i1 %16, label %20, label %17, !dbg !957

17:                                               ; preds = %2
  %18 = load ptr, ptr %13, align 4, !dbg !958
  %19 = icmp eq ptr %18, null, !dbg !959
  br i1 %19, label %20, label %21, !dbg !960

20:                                               ; preds = %17, %2
  store i32 -5, ptr %11, align 4, !dbg !961
  br label %72, !dbg !961

21:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 4, ptr %14) #7, !dbg !963
  call void @llvm.dbg.declare(metadata ptr %14, metadata !951, metadata !DIExpression()), !dbg !964
  %22 = load ptr, ptr %12, align 4, !dbg !965
  %23 = getelementptr inbounds %struct.k_mem_slab, ptr %22, i32 0, i32 1, !dbg !966
  store ptr %23, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !653, metadata !DIExpression()), !dbg !967
  %24 = load ptr, ptr %10, align 4, !dbg !969
  call void @llvm.dbg.declare(metadata ptr %9, metadata !659, metadata !DIExpression()), !dbg !970
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #7, !dbg !971
  call void @llvm.dbg.declare(metadata ptr %6, metadata !670, metadata !DIExpression()), !dbg !973
  %25 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #7, !dbg !974, !srcloc !674
  store i32 %25, ptr %6, align 4, !dbg !974
  %26 = load i32, ptr %6, align 4, !dbg !975
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #7, !dbg !976
  store i32 %26, ptr %9, align 4, !dbg !977
  %27 = load ptr, ptr %10, align 4, !dbg !978
  store ptr %27, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !679, metadata !DIExpression()), !dbg !979
  %28 = load ptr, ptr %5, align 4, !dbg !981
  %29 = load ptr, ptr %10, align 4, !dbg !982
  store ptr %29, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !688, metadata !DIExpression()), !dbg !983
  %30 = load ptr, ptr %4, align 4, !dbg !985
  %31 = load i32, ptr %9, align 4, !dbg !986
  %32 = getelementptr inbounds %struct.z_spinlock_key, ptr %14, i32 0, i32 0, !dbg !987
  store i32 %31, ptr %32, align 4, !dbg !987
  %33 = load ptr, ptr %12, align 4, !dbg !988
  %34 = getelementptr inbounds %struct.k_mem_slab, ptr %33, i32 0, i32 4, !dbg !989
  %35 = getelementptr inbounds %struct.k_mem_slab_info, ptr %34, i32 0, i32 2, !dbg !990
  %36 = load i32, ptr %35, align 4, !dbg !990
  %37 = load ptr, ptr %12, align 4, !dbg !991
  %38 = getelementptr inbounds %struct.k_mem_slab, ptr %37, i32 0, i32 4, !dbg !992
  %39 = getelementptr inbounds %struct.k_mem_slab_info, ptr %38, i32 0, i32 1, !dbg !993
  %40 = load i32, ptr %39, align 4, !dbg !993
  %41 = mul i32 %36, %40, !dbg !994
  %42 = load ptr, ptr %13, align 4, !dbg !995
  %43 = getelementptr inbounds %struct.sys_memory_stats, ptr %42, i32 0, i32 1, !dbg !996
  store i32 %41, ptr %43, align 4, !dbg !997
  %44 = load ptr, ptr %12, align 4, !dbg !998
  %45 = getelementptr inbounds %struct.k_mem_slab, ptr %44, i32 0, i32 4, !dbg !999
  %46 = getelementptr inbounds %struct.k_mem_slab_info, ptr %45, i32 0, i32 0, !dbg !1000
  %47 = load i32, ptr %46, align 4, !dbg !1000
  %48 = load ptr, ptr %12, align 4, !dbg !1001
  %49 = getelementptr inbounds %struct.k_mem_slab, ptr %48, i32 0, i32 4, !dbg !1002
  %50 = getelementptr inbounds %struct.k_mem_slab_info, ptr %49, i32 0, i32 2, !dbg !1003
  %51 = load i32, ptr %50, align 4, !dbg !1003
  %52 = sub i32 %47, %51, !dbg !1004
  %53 = load ptr, ptr %12, align 4, !dbg !1005
  %54 = getelementptr inbounds %struct.k_mem_slab, ptr %53, i32 0, i32 4, !dbg !1006
  %55 = getelementptr inbounds %struct.k_mem_slab_info, ptr %54, i32 0, i32 1, !dbg !1007
  %56 = load i32, ptr %55, align 4, !dbg !1007
  %57 = mul i32 %52, %56, !dbg !1008
  %58 = load ptr, ptr %13, align 4, !dbg !1009
  %59 = getelementptr inbounds %struct.sys_memory_stats, ptr %58, i32 0, i32 0, !dbg !1010
  store i32 %57, ptr %59, align 4, !dbg !1011
  %60 = load ptr, ptr %13, align 4, !dbg !1012
  %61 = getelementptr inbounds %struct.sys_memory_stats, ptr %60, i32 0, i32 2, !dbg !1013
  store i32 0, ptr %61, align 4, !dbg !1014
  %62 = load ptr, ptr %12, align 4, !dbg !1015
  %63 = getelementptr inbounds %struct.k_mem_slab, ptr %62, i32 0, i32 1, !dbg !1016
  %64 = getelementptr inbounds %struct.z_spinlock_key, ptr %14, i32 0, i32 0, !dbg !1017
  %65 = load [1 x i32], ptr %64, align 4, !dbg !1017
  store [1 x i32] %65, ptr %7, align 4
  store ptr %63, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !765, metadata !DIExpression()), !dbg !1018
  call void @llvm.dbg.declare(metadata ptr %7, metadata !770, metadata !DIExpression()), !dbg !1020
  %66 = load ptr, ptr %8, align 4, !dbg !1021
  %67 = load i32, ptr %7, align 4, !dbg !1022
  store i32 %67, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !776, metadata !DIExpression()), !dbg !1023
  %68 = load i32, ptr %3, align 4, !dbg !1025
  %69 = icmp ne i32 %68, 0, !dbg !1026
  br i1 %69, label %70, label %71, !dbg !1027

70:                                               ; preds = %21
  br label %arch_irq_unlock.exit, !dbg !1028

71:                                               ; preds = %21
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #7, !dbg !1029, !srcloc !790
  br label %arch_irq_unlock.exit, !dbg !1030

arch_irq_unlock.exit:                             ; preds = %70, %71
  store i32 0, ptr %11, align 4, !dbg !1031
  call void @llvm.lifetime.end.p0(i64 4, ptr %14) #7, !dbg !1032
  br label %72

72:                                               ; preds = %arch_irq_unlock.exit, %20
  %73 = load i32, ptr %11, align 4, !dbg !1032
  ret i32 %73, !dbg !1032
}

; Function Attrs: optsize
declare !dbg !1033 dso_local i64 @z_timeout_expires(ptr noundef) #5

; Function Attrs: optsize
declare !dbg !1038 dso_local i64 @z_timeout_remaining(ptr noundef) #5

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @sys_sflist_is_empty(ptr noundef %0) #0 !dbg !1039 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1045, metadata !DIExpression()), !dbg !1046
  %3 = load ptr, ptr %2, align 4, !dbg !1047
  %4 = call ptr @sys_sflist_peek_head(ptr noundef %3) #6, !dbg !1048
  %5 = icmp eq ptr %4, null, !dbg !1049
  ret i1 %5, !dbg !1050
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @sys_sflist_peek_head(ptr noundef %0) #0 !dbg !1051 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1055, metadata !DIExpression()), !dbg !1056
  %3 = load ptr, ptr %2, align 4, !dbg !1057
  %4 = getelementptr inbounds %struct._sflist, ptr %3, i32 0, i32 0, !dbg !1058
  %5 = load ptr, ptr %4, align 4, !dbg !1058
  ret ptr %5, !dbg !1059
}

; Function Attrs: inlinehint nounwind optsize
define internal void @sys_dlist_init(ptr noundef %0) #0 !dbg !1060 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1065, metadata !DIExpression()), !dbg !1066
  %3 = load ptr, ptr %2, align 4, !dbg !1067
  %4 = load ptr, ptr %2, align 4, !dbg !1068
  %5 = getelementptr inbounds %struct._dnode, ptr %4, i32 0, i32 0, !dbg !1069
  store ptr %3, ptr %5, align 4, !dbg !1070
  %6 = load ptr, ptr %2, align 4, !dbg !1071
  %7 = load ptr, ptr %2, align 4, !dbg !1072
  %8 = getelementptr inbounds %struct._dnode, ptr %7, i32 0, i32 1, !dbg !1073
  store ptr %6, ptr %8, align 4, !dbg !1074
  ret void, !dbg !1075
}

attributes #0 = { inlinehint nounwind optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { optsize }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!134, !135, !136, !137, !138, !139}
!llvm.ident = !{!140}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__init_init_mem_slab_obj_core_list", scope: !2, file: !114, line: 169, type: !115, isLocal: true, isDefinition: true, align: 32)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !88, globals: !113, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "mem_slab.c", directory: "/home/sri/zephyrproject/zephyr/build")
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
!88 = !{!89, !90, !92, !93, !94, !97}
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 32)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 32)
!91 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!93 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !95, line: 102, baseType: !96)
!95 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/stdint.h", directory: "")
!96 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 32)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dnode_t", file: !99, line: 55, baseType: !100)
!99 = !DIFile(filename: "include/zephyr/sys/dlist.h", directory: "/home/sri/zephyrproject/zephyr")
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_dnode", file: !99, line: 37, size: 64, elements: !101)
!101 = !{!102, !108}
!102 = !DIDerivedType(tag: DW_TAG_member, scope: !100, file: !99, line: 38, baseType: !103, size: 32)
!103 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !100, file: !99, line: 38, size: 32, elements: !104)
!104 = !{!105, !107}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !103, file: !99, line: 39, baseType: !106, size: 32)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 32)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !103, file: !99, line: 40, baseType: !106, size: 32)
!108 = !DIDerivedType(tag: DW_TAG_member, scope: !100, file: !99, line: 42, baseType: !109, size: 32, offset: 32)
!109 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !100, file: !99, line: 42, size: 32, elements: !110)
!110 = !{!111, !112}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !109, file: !99, line: 43, baseType: !106, size: 32)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !109, file: !99, line: 44, baseType: !106, size: 32)
!113 = !{!0}
!114 = !DIFile(filename: "kernel/mem_slab.c", directory: "/home/sri/zephyrproject/zephyr")
!115 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !116)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "init_entry", file: !117, line: 92, size: 64, elements: !118)
!117 = !DIFile(filename: "include/zephyr/init.h", directory: "/home/sri/zephyrproject/zephyr")
!118 = !{!119, !133}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "init_fn", scope: !116, file: !117, line: 94, baseType: !120, size: 32)
!120 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "init_function", file: !117, line: 59, size: 32, elements: !121)
!121 = !{!122, !126}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "sys", scope: !120, file: !117, line: 66, baseType: !123, size: 32)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 32)
!124 = !DISubroutineType(types: !125)
!125 = !{!93}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !120, file: !117, line: 75, baseType: !127, size: 32)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 32)
!128 = !DISubroutineType(types: !129)
!129 = !{!93, !130}
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 32)
!131 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !132)
!132 = !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !117, line: 50, flags: DIFlagFwdDecl)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !116, file: !117, line: 99, baseType: !130, size: 32, offset: 32)
!134 = !{i32 7, !"Dwarf Version", i32 4}
!135 = !{i32 2, !"Debug Info Version", i32 3}
!136 = !{i32 1, !"wchar_size", i32 4}
!137 = !{i32 1, !"static_rwdata", i32 1}
!138 = !{i32 1, !"enumsize_buildattr", i32 1}
!139 = !{i32 1, !"armlib_unavailable", i32 0}
!140 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
!141 = distinct !DISubprogram(name: "z_impl_k_object_access_grant", scope: !6, file: !6, line: 223, type: !142, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !248)
!142 = !DISubroutineType(types: !143)
!143 = !{null, !144, !146}
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 32)
!145 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 32)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_thread", file: !148, line: 250, size: 896, elements: !149)
!148 = !DIFile(filename: "include/zephyr/kernel/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!149 = !{!150, !206, !219, !220, !221, !222, !243}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !147, file: !148, line: 252, baseType: !151, size: 384)
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_base", file: !148, line: 58, size: 384, elements: !152)
!152 = !{!153, !166, !174, !176, !177, !190, !192, !193}
!153 = !DIDerivedType(tag: DW_TAG_member, scope: !151, file: !148, line: 61, baseType: !154, size: 64)
!154 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !151, file: !148, line: 61, size: 64, elements: !155)
!155 = !{!156, !157}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_dlist", scope: !154, file: !148, line: 62, baseType: !98, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_rb", scope: !154, file: !148, line: 63, baseType: !158, size: 64)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rbnode", file: !159, line: 58, size: 64, elements: !160)
!159 = !DIFile(filename: "include/zephyr/sys/rb.h", directory: "/home/sri/zephyrproject/zephyr")
!160 = !{!161}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !158, file: !159, line: 60, baseType: !162, size: 64)
!162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 64, elements: !164)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 32)
!164 = !{!165}
!165 = !DISubrange(count: 2)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "pended_on", scope: !151, file: !148, line: 69, baseType: !167, size: 32, offset: 64)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 32)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "_wait_q_t", file: !169, line: 243, baseType: !170)
!169 = !DIFile(filename: "include/zephyr/kernel_structs.h", directory: "/home/sri/zephyrproject/zephyr")
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !169, line: 241, size: 64, elements: !171)
!171 = !{!172}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !170, file: !169, line: 242, baseType: !173, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dlist_t", file: !99, line: 51, baseType: !100)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "user_options", scope: !151, file: !148, line: 72, baseType: !175, size: 8, offset: 96)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !95, line: 62, baseType: !7)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "thread_state", scope: !151, file: !148, line: 75, baseType: !175, size: 8, offset: 104)
!177 = !DIDerivedType(tag: DW_TAG_member, scope: !151, file: !148, line: 91, baseType: !178, size: 16, offset: 112)
!178 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !151, file: !148, line: 91, size: 16, elements: !179)
!179 = !{!180, !187}
!180 = !DIDerivedType(tag: DW_TAG_member, scope: !178, file: !148, line: 92, baseType: !181, size: 16)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !178, file: !148, line: 92, size: 16, elements: !182)
!182 = !{!183, !186}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !181, file: !148, line: 97, baseType: !184, size: 8)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !95, line: 56, baseType: !185)
!185 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "sched_locked", scope: !181, file: !148, line: 98, baseType: !175, size: 8, offset: 8)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "preempt", scope: !178, file: !148, line: 101, baseType: !188, size: 16)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !95, line: 63, baseType: !189)
!189 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "order_key", scope: !151, file: !148, line: 108, baseType: !191, size: 32, offset: 128)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !95, line: 64, baseType: !96)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "swap_data", scope: !151, file: !148, line: 132, baseType: !92, size: 32, offset: 160)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !151, file: !148, line: 136, baseType: !194, size: 192, offset: 192)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_timeout", file: !169, line: 254, size: 192, elements: !195)
!195 = !{!196, !197, !203}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !194, file: !169, line: 255, baseType: !98, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !194, file: !169, line: 256, baseType: !198, size: 32, offset: 64)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "_timeout_func_t", file: !169, line: 252, baseType: !199)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 32)
!200 = !DISubroutineType(types: !201)
!201 = !{null, !202}
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 32)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "dticks", scope: !194, file: !169, line: 259, baseType: !204, size: 64, offset: 128)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !95, line: 59, baseType: !205)
!205 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "callee_saved", scope: !147, file: !148, line: 255, baseType: !207, size: 288, offset: 384)
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_callee_saved", file: !208, line: 25, size: 288, elements: !209)
!208 = !DIFile(filename: "include/zephyr/arch/arm/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!209 = !{!210, !211, !212, !213, !214, !215, !216, !217, !218}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "v1", scope: !207, file: !208, line: 26, baseType: !191, size: 32)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "v2", scope: !207, file: !208, line: 27, baseType: !191, size: 32, offset: 32)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "v3", scope: !207, file: !208, line: 28, baseType: !191, size: 32, offset: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "v4", scope: !207, file: !208, line: 29, baseType: !191, size: 32, offset: 96)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "v5", scope: !207, file: !208, line: 30, baseType: !191, size: 32, offset: 128)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "v6", scope: !207, file: !208, line: 31, baseType: !191, size: 32, offset: 160)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "v7", scope: !207, file: !208, line: 32, baseType: !191, size: 32, offset: 192)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "v8", scope: !207, file: !208, line: 33, baseType: !191, size: 32, offset: 224)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "psp", scope: !207, file: !208, line: 34, baseType: !191, size: 32, offset: 256)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "init_data", scope: !147, file: !148, line: 258, baseType: !92, size: 32, offset: 672)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "join_queue", scope: !147, file: !148, line: 261, baseType: !168, size: 64, offset: 704)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "errno_var", scope: !147, file: !148, line: 302, baseType: !93, size: 32, offset: 768)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "resource_pool", scope: !147, file: !148, line: 333, baseType: !223, size: 32, offset: 800)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 32)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_heap", file: !225, line: 5291, size: 160, elements: !226)
!225 = !DIFile(filename: "include/zephyr/kernel.h", directory: "/home/sri/zephyrproject/zephyr")
!226 = !{!227, !238, !239}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !224, file: !225, line: 5292, baseType: !228, size: 96)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sys_heap", file: !229, line: 56, size: 96, elements: !230)
!229 = !DIFile(filename: "include/zephyr/sys/sys_heap.h", directory: "/home/sri/zephyrproject/zephyr")
!230 = !{!231, !234, !235}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !228, file: !229, line: 57, baseType: !232, size: 32)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 32)
!233 = !DICompositeType(tag: DW_TAG_structure_type, name: "z_heap", file: !229, line: 57, flags: DIFlagFwdDecl)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "init_mem", scope: !228, file: !229, line: 58, baseType: !92, size: 32, offset: 32)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "init_bytes", scope: !228, file: !229, line: 59, baseType: !236, size: 32, offset: 64)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !237, line: 46, baseType: !96)
!237 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/lib/clang/17/include/stddef.h", directory: "")
!238 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !224, file: !225, line: 5293, baseType: !168, size: 64, offset: 96)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !224, file: !225, line: 5294, baseType: !240, offset: 160)
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_spinlock", file: !241, line: 45, elements: !242)
!241 = !DIFile(filename: "include/zephyr/spinlock.h", directory: "/home/sri/zephyrproject/zephyr")
!242 = !{}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !147, file: !148, line: 355, baseType: !244, size: 64, offset: 832)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_arch", file: !208, line: 60, size: 64, elements: !245)
!245 = !{!246, !247}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "basepri", scope: !244, file: !208, line: 63, baseType: !191, size: 32)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "swap_return_value", scope: !244, file: !208, line: 66, baseType: !191, size: 32, offset: 32)
!248 = !{!249, !250}
!249 = !DILocalVariable(name: "object", arg: 1, scope: !141, file: !6, line: 223, type: !144)
!250 = !DILocalVariable(name: "thread", arg: 2, scope: !141, file: !6, line: 224, type: !146)
!251 = !DILocation(line: 223, column: 61, scope: !141)
!252 = !DILocation(line: 224, column: 24, scope: !141)
!253 = !DILocation(line: 226, column: 9, scope: !141)
!254 = !DILocation(line: 227, column: 9, scope: !141)
!255 = !DILocation(line: 228, column: 1, scope: !141)
!256 = distinct !DISubprogram(name: "z_impl_k_object_release", scope: !6, file: !6, line: 243, type: !257, scopeLine: 244, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !259)
!257 = !DISubroutineType(types: !258)
!258 = !{null, !144}
!259 = !{!260}
!260 = !DILocalVariable(name: "object", arg: 1, scope: !256, file: !6, line: 243, type: !144)
!261 = !DILocation(line: 243, column: 56, scope: !256)
!262 = !DILocation(line: 245, column: 9, scope: !256)
!263 = !DILocation(line: 246, column: 1, scope: !256)
!264 = distinct !DISubprogram(name: "z_impl_k_object_alloc", scope: !6, file: !6, line: 359, type: !265, scopeLine: 360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !267)
!265 = !DISubroutineType(types: !266)
!266 = !{!92, !5}
!267 = !{!268}
!268 = !DILocalVariable(name: "otype", arg: 1, scope: !264, file: !6, line: 359, type: !5)
!269 = !DILocation(line: 359, column: 58, scope: !264)
!270 = !DILocation(line: 361, column: 9, scope: !264)
!271 = !DILocation(line: 363, column: 2, scope: !264)
!272 = distinct !DISubprogram(name: "z_impl_k_object_alloc_size", scope: !6, file: !6, line: 366, type: !273, scopeLine: 368, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !275)
!273 = !DISubroutineType(types: !274)
!274 = !{!92, !5, !236}
!275 = !{!276, !277}
!276 = !DILocalVariable(name: "otype", arg: 1, scope: !272, file: !6, line: 366, type: !5)
!277 = !DILocalVariable(name: "size", arg: 2, scope: !272, file: !6, line: 367, type: !236)
!278 = !DILocation(line: 366, column: 63, scope: !272)
!279 = !DILocation(line: 367, column: 13, scope: !272)
!280 = !DILocation(line: 369, column: 9, scope: !272)
!281 = !DILocation(line: 370, column: 9, scope: !272)
!282 = !DILocation(line: 372, column: 2, scope: !272)
!283 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_expires_ticks", scope: !225, file: !225, line: 656, type: !284, scopeLine: 658, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !290)
!284 = !DISubroutineType(types: !285)
!285 = !{!286, !288}
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_ticks_t", file: !287, line: 46, baseType: !204)
!287 = !DIFile(filename: "include/zephyr/sys_clock.h", directory: "/home/sri/zephyrproject/zephyr")
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 32)
!289 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !147)
!290 = !{!291}
!291 = !DILocalVariable(name: "t", arg: 1, scope: !283, file: !225, line: 657, type: !288)
!292 = !DILocation(line: 657, column: 30, scope: !283)
!293 = !DILocation(line: 659, column: 28, scope: !283)
!294 = !DILocation(line: 659, column: 31, scope: !283)
!295 = !DILocation(line: 659, column: 36, scope: !283)
!296 = !DILocation(line: 659, column: 9, scope: !283)
!297 = !DILocation(line: 659, column: 2, scope: !283)
!298 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_remaining_ticks", scope: !225, file: !225, line: 671, type: !284, scopeLine: 673, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !299)
!299 = !{!300}
!300 = !DILocalVariable(name: "t", arg: 1, scope: !298, file: !225, line: 672, type: !288)
!301 = !DILocation(line: 672, column: 30, scope: !298)
!302 = !DILocation(line: 674, column: 30, scope: !298)
!303 = !DILocation(line: 674, column: 33, scope: !298)
!304 = !DILocation(line: 674, column: 38, scope: !298)
!305 = !DILocation(line: 674, column: 9, scope: !298)
!306 = !DILocation(line: 674, column: 2, scope: !298)
!307 = distinct !DISubprogram(name: "z_impl_k_timer_expires_ticks", scope: !225, file: !225, line: 1634, type: !308, scopeLine: 1636, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !329)
!308 = !DISubroutineType(types: !309)
!309 = !{!286, !310}
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 32)
!311 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !312)
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_timer", file: !225, line: 1439, size: 448, elements: !313)
!313 = !{!314, !315, !316, !321, !322, !327, !328}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !312, file: !225, line: 1445, baseType: !194, size: 192)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !312, file: !225, line: 1448, baseType: !168, size: 64, offset: 192)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_fn", scope: !312, file: !225, line: 1451, baseType: !317, size: 32, offset: 256)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 32)
!318 = !DISubroutineType(types: !319)
!319 = !{null, !320}
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 32)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "stop_fn", scope: !312, file: !225, line: 1454, baseType: !317, size: 32, offset: 288)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !312, file: !225, line: 1457, baseType: !323, size: 64, offset: 320)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_timeout_t", file: !287, line: 67, baseType: !324)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !287, line: 65, size: 64, elements: !325)
!325 = !{!326}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "ticks", scope: !324, file: !287, line: 66, baseType: !286, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !312, file: !225, line: 1460, baseType: !191, size: 32, offset: 384)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !312, file: !225, line: 1463, baseType: !92, size: 32, offset: 416)
!329 = !{!330}
!330 = !DILocalVariable(name: "timer", arg: 1, scope: !307, file: !225, line: 1635, type: !310)
!331 = !DILocation(line: 1635, column: 34, scope: !307)
!332 = !DILocation(line: 1637, column: 28, scope: !307)
!333 = !DILocation(line: 1637, column: 35, scope: !307)
!334 = !DILocation(line: 1637, column: 9, scope: !307)
!335 = !DILocation(line: 1637, column: 2, scope: !307)
!336 = distinct !DISubprogram(name: "z_impl_k_timer_remaining_ticks", scope: !225, file: !225, line: 1649, type: !308, scopeLine: 1651, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !337)
!337 = !{!338}
!338 = !DILocalVariable(name: "timer", arg: 1, scope: !336, file: !225, line: 1650, type: !310)
!339 = !DILocation(line: 1650, column: 34, scope: !336)
!340 = !DILocation(line: 1652, column: 30, scope: !336)
!341 = !DILocation(line: 1652, column: 37, scope: !336)
!342 = !DILocation(line: 1652, column: 9, scope: !336)
!343 = !DILocation(line: 1652, column: 2, scope: !336)
!344 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_set", scope: !225, file: !225, line: 1689, type: !345, scopeLine: 1691, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !347)
!345 = !DISubroutineType(types: !346)
!346 = !{null, !320, !92}
!347 = !{!348, !349}
!348 = !DILocalVariable(name: "timer", arg: 1, scope: !344, file: !225, line: 1689, type: !320)
!349 = !DILocalVariable(name: "user_data", arg: 2, scope: !344, file: !225, line: 1690, type: !92)
!350 = !DILocation(line: 1689, column: 65, scope: !344)
!351 = !DILocation(line: 1690, column: 19, scope: !344)
!352 = !DILocation(line: 1692, column: 21, scope: !344)
!353 = !DILocation(line: 1692, column: 2, scope: !344)
!354 = !DILocation(line: 1692, column: 9, scope: !344)
!355 = !DILocation(line: 1692, column: 19, scope: !344)
!356 = !DILocation(line: 1693, column: 1, scope: !344)
!357 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_get", scope: !225, file: !225, line: 1704, type: !358, scopeLine: 1705, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !360)
!358 = !DISubroutineType(types: !359)
!359 = !{!92, !310}
!360 = !{!361}
!361 = !DILocalVariable(name: "timer", arg: 1, scope: !357, file: !225, line: 1704, type: !310)
!362 = !DILocation(line: 1704, column: 72, scope: !357)
!363 = !DILocation(line: 1706, column: 9, scope: !357)
!364 = !DILocation(line: 1706, column: 16, scope: !357)
!365 = !DILocation(line: 1706, column: 2, scope: !357)
!366 = distinct !DISubprogram(name: "z_impl_k_queue_is_empty", scope: !225, file: !225, line: 2071, type: !367, scopeLine: 2072, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !387)
!367 = !DISubroutineType(types: !368)
!368 = !{!93, !369}
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 32)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_queue", file: !225, line: 1830, size: 128, elements: !371)
!371 = !{!372, !385, !386}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "data_q", scope: !370, file: !225, line: 1831, baseType: !373, size: 64)
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
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "unative_t", file: !374, line: 40, baseType: !191)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !375, file: !374, line: 55, baseType: !378, size: 32, offset: 32)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !370, file: !225, line: 1832, baseType: !240, offset: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !370, file: !225, line: 1833, baseType: !168, size: 64, offset: 64)
!387 = !{!388}
!388 = !DILocalVariable(name: "queue", arg: 1, scope: !366, file: !225, line: 2071, type: !369)
!389 = !DILocation(line: 2071, column: 59, scope: !366)
!390 = !DILocation(line: 2073, column: 35, scope: !366)
!391 = !DILocation(line: 2073, column: 42, scope: !366)
!392 = !DILocation(line: 2073, column: 14, scope: !366)
!393 = !DILocation(line: 2073, column: 9, scope: !366)
!394 = !DILocation(line: 2073, column: 2, scope: !366)
!395 = distinct !DISubprogram(name: "z_impl_k_sem_count_get", scope: !225, file: !225, line: 3209, type: !396, scopeLine: 3210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !404)
!396 = !DISubroutineType(types: !397)
!397 = !{!96, !398}
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 32)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sem", file: !225, line: 3092, size: 128, elements: !400)
!400 = !{!401, !402, !403}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !399, file: !225, line: 3093, baseType: !168, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !399, file: !225, line: 3094, baseType: !96, size: 32, offset: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !399, file: !225, line: 3095, baseType: !96, size: 32, offset: 96)
!404 = !{!405}
!405 = !DILocalVariable(name: "sem", arg: 1, scope: !395, file: !225, line: 3209, type: !398)
!406 = !DILocation(line: 3209, column: 65, scope: !395)
!407 = !DILocation(line: 3211, column: 9, scope: !395)
!408 = !DILocation(line: 3211, column: 14, scope: !395)
!409 = !DILocation(line: 3211, column: 2, scope: !395)
!410 = distinct !DISubprogram(name: "z_impl_k_msgq_num_free_get", scope: !225, file: !225, line: 4649, type: !411, scopeLine: 4650, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !426)
!411 = !DISubroutineType(types: !412)
!412 = !{!191, !413}
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 32)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_msgq", file: !225, line: 4390, size: 320, elements: !415)
!415 = !{!416, !417, !418, !419, !420, !421, !422, !423, !424, !425}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !414, file: !225, line: 4392, baseType: !168, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !414, file: !225, line: 4394, baseType: !240, offset: 64)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "msg_size", scope: !414, file: !225, line: 4396, baseType: !236, size: 32, offset: 64)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !414, file: !225, line: 4398, baseType: !191, size: 32, offset: 96)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_start", scope: !414, file: !225, line: 4400, baseType: !90, size: 32, offset: 128)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_end", scope: !414, file: !225, line: 4402, baseType: !90, size: 32, offset: 160)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "read_ptr", scope: !414, file: !225, line: 4404, baseType: !90, size: 32, offset: 192)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "write_ptr", scope: !414, file: !225, line: 4406, baseType: !90, size: 32, offset: 224)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "used_msgs", scope: !414, file: !225, line: 4408, baseType: !191, size: 32, offset: 256)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !414, file: !225, line: 4413, baseType: !175, size: 8, offset: 288)
!426 = !{!427}
!427 = !DILocalVariable(name: "msgq", arg: 1, scope: !410, file: !225, line: 4649, type: !413)
!428 = !DILocation(line: 4649, column: 66, scope: !410)
!429 = !DILocation(line: 4651, column: 9, scope: !410)
!430 = !DILocation(line: 4651, column: 15, scope: !410)
!431 = !DILocation(line: 4651, column: 26, scope: !410)
!432 = !DILocation(line: 4651, column: 32, scope: !410)
!433 = !DILocation(line: 4651, column: 24, scope: !410)
!434 = !DILocation(line: 4651, column: 2, scope: !410)
!435 = distinct !DISubprogram(name: "z_impl_k_msgq_num_used_get", scope: !225, file: !225, line: 4665, type: !411, scopeLine: 4666, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !436)
!436 = !{!437}
!437 = !DILocalVariable(name: "msgq", arg: 1, scope: !435, file: !225, line: 4665, type: !413)
!438 = !DILocation(line: 4665, column: 66, scope: !435)
!439 = !DILocation(line: 4667, column: 9, scope: !435)
!440 = !DILocation(line: 4667, column: 15, scope: !435)
!441 = !DILocation(line: 4667, column: 2, scope: !435)
!442 = distinct !DISubprogram(name: "init_mem_slab_obj_core_list", scope: !114, file: !114, line: 133, type: !124, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !443)
!443 = !{!444, !445, !460}
!444 = !DILocalVariable(name: "rc", scope: !442, file: !114, line: 135, type: !93)
!445 = !DILocalVariable(name: "slab", scope: !446, file: !114, line: 149, type: !447)
!446 = distinct !DILexicalBlock(scope: !442, file: !114, line: 149, column: 102)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 32)
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_mem_slab", file: !225, line: 5057, size: 224, elements: !449)
!449 = !{!450, !451, !452, !453, !454}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !448, file: !225, line: 5058, baseType: !168, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !448, file: !225, line: 5059, baseType: !240, offset: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !448, file: !225, line: 5060, baseType: !90, size: 32, offset: 64)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "free_list", scope: !448, file: !225, line: 5061, baseType: !90, size: 32, offset: 96)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !448, file: !225, line: 5062, baseType: !455, size: 96, offset: 128)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_mem_slab_info", file: !225, line: 5048, size: 96, elements: !456)
!456 = !{!457, !458, !459}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "num_blocks", scope: !455, file: !225, line: 5049, baseType: !191, size: 32)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "block_size", scope: !455, file: !225, line: 5050, baseType: !236, size: 32, offset: 32)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "num_used", scope: !455, file: !225, line: 5051, baseType: !191, size: 32, offset: 64)
!460 = !DILabel(scope: !442, name: "out", file: !114, line: 165)
!461 = !DILocation(line: 135, column: 2, scope: !442)
!462 = !DILocation(line: 135, column: 6, scope: !442)
!463 = !DILocation(line: 149, column: 107, scope: !446)
!464 = !DILocation(line: 149, column: 127, scope: !446)
!465 = !DILocation(line: 149, column: 166, scope: !466)
!466 = distinct !DILexicalBlock(scope: !467, file: !114, line: 149, column: 159)
!467 = distinct !DILexicalBlock(scope: !446, file: !114, line: 149, column: 102)
!468 = !DILocation(line: 149, column: 171, scope: !466)
!469 = !DILocation(line: 149, column: 163, scope: !470)
!470 = distinct !DILexicalBlock(scope: !466, file: !114, line: 149, column: 161)
!471 = !DILocation(line: 149, column: 195, scope: !466)
!472 = !DILocation(line: 149, column: 102, scope: !446)
!473 = !DILocation(line: 150, column: 25, scope: !474)
!474 = distinct !DILexicalBlock(scope: !467, file: !114, line: 149, column: 207)
!475 = !DILocation(line: 150, column: 8, scope: !474)
!476 = !DILocation(line: 150, column: 6, scope: !474)
!477 = !DILocation(line: 151, column: 7, scope: !478)
!478 = distinct !DILexicalBlock(scope: !474, file: !114, line: 151, column: 7)
!479 = !DILocation(line: 151, column: 10, scope: !478)
!480 = !DILocation(line: 151, column: 7, scope: !474)
!481 = !DILocation(line: 152, column: 4, scope: !482)
!482 = distinct !DILexicalBlock(scope: !478, file: !114, line: 151, column: 15)
!483 = !DILocation(line: 154, column: 17, scope: !474)
!484 = !DILocation(line: 154, column: 3, scope: !474)
!485 = !DILocation(line: 163, column: 2, scope: !474)
!486 = !DILocation(line: 149, column: 203, scope: !467)
!487 = !DILocation(line: 149, column: 102, scope: !467)
!488 = distinct !{!488, !472, !489}
!489 = !DILocation(line: 163, column: 2, scope: !446)
!490 = !DILocation(line: 165, column: 1, scope: !442)
!491 = !DILocation(line: 166, column: 9, scope: !442)
!492 = !DILocation(line: 166, column: 2, scope: !442)
!493 = !DILocation(line: 167, column: 1, scope: !442)
!494 = distinct !DISubprogram(name: "k_mem_slab_init", scope: !114, file: !114, line: 172, type: !495, scopeLine: 174, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !499)
!495 = !DISubroutineType(types: !496)
!496 = !{!93, !447, !92, !497, !191}
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !498, line: 51, baseType: !96)
!498 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/string.h", directory: "")
!499 = !{!500, !501, !502, !503, !504, !505}
!500 = !DILocalVariable(name: "slab", arg: 1, scope: !494, file: !114, line: 172, type: !447)
!501 = !DILocalVariable(name: "buffer", arg: 2, scope: !494, file: !114, line: 172, type: !92)
!502 = !DILocalVariable(name: "block_size", arg: 3, scope: !494, file: !114, line: 173, type: !497)
!503 = !DILocalVariable(name: "num_blocks", arg: 4, scope: !494, file: !114, line: 173, type: !191)
!504 = !DILocalVariable(name: "rc", scope: !494, file: !114, line: 175, type: !93)
!505 = !DILabel(scope: !494, name: "out", file: !114, line: 202)
!506 = !DILocation(line: 172, column: 40, scope: !494)
!507 = !DILocation(line: 172, column: 52, scope: !494)
!508 = !DILocation(line: 173, column: 14, scope: !494)
!509 = !DILocation(line: 173, column: 35, scope: !494)
!510 = !DILocation(line: 175, column: 2, scope: !494)
!511 = !DILocation(line: 175, column: 6, scope: !494)
!512 = !DILocation(line: 177, column: 26, scope: !494)
!513 = !DILocation(line: 177, column: 2, scope: !494)
!514 = !DILocation(line: 177, column: 8, scope: !494)
!515 = !DILocation(line: 177, column: 13, scope: !494)
!516 = !DILocation(line: 177, column: 24, scope: !494)
!517 = !DILocation(line: 178, column: 26, scope: !494)
!518 = !DILocation(line: 178, column: 2, scope: !494)
!519 = !DILocation(line: 178, column: 8, scope: !494)
!520 = !DILocation(line: 178, column: 13, scope: !494)
!521 = !DILocation(line: 178, column: 24, scope: !494)
!522 = !DILocation(line: 179, column: 17, scope: !494)
!523 = !DILocation(line: 179, column: 2, scope: !494)
!524 = !DILocation(line: 179, column: 8, scope: !494)
!525 = !DILocation(line: 179, column: 15, scope: !494)
!526 = !DILocation(line: 180, column: 2, scope: !494)
!527 = !DILocation(line: 180, column: 8, scope: !494)
!528 = !DILocation(line: 180, column: 13, scope: !494)
!529 = !DILocation(line: 180, column: 22, scope: !494)
!530 = !DILocation(line: 181, column: 2, scope: !494)
!531 = !DILocation(line: 181, column: 8, scope: !494)
!532 = !DILocation(line: 181, column: 15, scope: !494)
!533 = !DILocation(line: 187, column: 24, scope: !494)
!534 = !DILocation(line: 187, column: 7, scope: !494)
!535 = !DILocation(line: 187, column: 5, scope: !494)
!536 = !DILocation(line: 188, column: 6, scope: !537)
!537 = distinct !DILexicalBlock(scope: !494, file: !114, line: 188, column: 6)
!538 = !DILocation(line: 188, column: 9, scope: !537)
!539 = !DILocation(line: 188, column: 6, scope: !494)
!540 = !DILocation(line: 189, column: 3, scope: !541)
!541 = distinct !DILexicalBlock(scope: !537, file: !114, line: 188, column: 14)
!542 = !DILocation(line: 200, column: 16, scope: !494)
!543 = !DILocation(line: 200, column: 22, scope: !494)
!544 = !DILocation(line: 200, column: 2, scope: !494)
!545 = !DILocation(line: 201, column: 16, scope: !494)
!546 = !DILocation(line: 201, column: 2, scope: !494)
!547 = !DILocation(line: 202, column: 1, scope: !494)
!548 = !DILocation(line: 203, column: 2, scope: !494)
!549 = !DILocation(line: 203, column: 7, scope: !550)
!550 = distinct !DILexicalBlock(scope: !494, file: !114, line: 203, column: 5)
!551 = !DILocation(line: 205, column: 9, scope: !494)
!552 = !DILocation(line: 206, column: 1, scope: !494)
!553 = !DILocation(line: 205, column: 2, scope: !494)
!554 = distinct !DISubprogram(name: "create_free_list", scope: !114, file: !114, line: 104, type: !555, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !557)
!555 = !DISubroutineType(types: !556)
!556 = !{!93, !447}
!557 = !{!558, !559, !560}
!558 = !DILocalVariable(name: "slab", arg: 1, scope: !554, file: !114, line: 104, type: !447)
!559 = !DILocalVariable(name: "j", scope: !554, file: !114, line: 106, type: !191)
!560 = !DILocalVariable(name: "p", scope: !554, file: !114, line: 107, type: !90)
!561 = !DILocation(line: 104, column: 48, scope: !554)
!562 = !DILocation(line: 106, column: 2, scope: !554)
!563 = !DILocation(line: 106, column: 11, scope: !554)
!564 = !DILocation(line: 107, column: 2, scope: !554)
!565 = !DILocation(line: 107, column: 8, scope: !554)
!566 = !DILocation(line: 110, column: 8, scope: !567)
!567 = distinct !DILexicalBlock(scope: !554, file: !114, line: 110, column: 6)
!568 = !DILocation(line: 110, column: 14, scope: !567)
!569 = !DILocation(line: 110, column: 19, scope: !567)
!570 = !DILocation(line: 110, column: 43, scope: !567)
!571 = !DILocation(line: 110, column: 49, scope: !567)
!572 = !DILocation(line: 110, column: 32, scope: !567)
!573 = !DILocation(line: 110, column: 30, scope: !567)
!574 = !DILocation(line: 110, column: 57, scope: !567)
!575 = !DILocation(line: 110, column: 81, scope: !567)
!576 = !DILocation(line: 110, column: 6, scope: !554)
!577 = !DILocation(line: 112, column: 3, scope: !578)
!578 = distinct !DILexicalBlock(scope: !567, file: !114, line: 110, column: 88)
!579 = !DILocation(line: 115, column: 2, scope: !554)
!580 = !DILocation(line: 115, column: 8, scope: !554)
!581 = !DILocation(line: 115, column: 18, scope: !554)
!582 = !DILocation(line: 116, column: 6, scope: !554)
!583 = !DILocation(line: 116, column: 12, scope: !554)
!584 = !DILocation(line: 116, column: 4, scope: !554)
!585 = !DILocation(line: 118, column: 9, scope: !586)
!586 = distinct !DILexicalBlock(scope: !554, file: !114, line: 118, column: 2)
!587 = !DILocation(line: 118, column: 7, scope: !586)
!588 = !DILocation(line: 118, column: 15, scope: !589)
!589 = distinct !DILexicalBlock(scope: !586, file: !114, line: 118, column: 2)
!590 = !DILocation(line: 118, column: 19, scope: !589)
!591 = !DILocation(line: 118, column: 25, scope: !589)
!592 = !DILocation(line: 118, column: 30, scope: !589)
!593 = !DILocation(line: 118, column: 17, scope: !589)
!594 = !DILocation(line: 118, column: 2, scope: !586)
!595 = !DILocation(line: 119, column: 17, scope: !596)
!596 = distinct !DILexicalBlock(scope: !589, file: !114, line: 118, column: 47)
!597 = !DILocation(line: 119, column: 23, scope: !596)
!598 = !DILocation(line: 119, column: 13, scope: !596)
!599 = !DILocation(line: 119, column: 15, scope: !596)
!600 = !DILocation(line: 120, column: 21, scope: !596)
!601 = !DILocation(line: 120, column: 3, scope: !596)
!602 = !DILocation(line: 120, column: 9, scope: !596)
!603 = !DILocation(line: 120, column: 19, scope: !596)
!604 = !DILocation(line: 121, column: 8, scope: !596)
!605 = !DILocation(line: 121, column: 14, scope: !596)
!606 = !DILocation(line: 121, column: 19, scope: !596)
!607 = !DILocation(line: 121, column: 5, scope: !596)
!608 = !DILocation(line: 122, column: 2, scope: !596)
!609 = !DILocation(line: 118, column: 43, scope: !589)
!610 = !DILocation(line: 118, column: 2, scope: !589)
!611 = distinct !{!611, !594, !612}
!612 = !DILocation(line: 122, column: 2, scope: !586)
!613 = !DILocation(line: 123, column: 2, scope: !554)
!614 = !DILocation(line: 124, column: 1, scope: !554)
!615 = distinct !DISubprogram(name: "z_waitq_init", scope: !616, file: !616, line: 47, type: !617, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !619)
!616 = !DIFile(filename: "kernel/include/wait_q.h", directory: "/home/sri/zephyrproject/zephyr")
!617 = !DISubroutineType(types: !618)
!618 = !{null, !167}
!619 = !{!620}
!620 = !DILocalVariable(name: "w", arg: 1, scope: !615, file: !616, line: 47, type: !167)
!621 = !DILocation(line: 47, column: 44, scope: !615)
!622 = !DILocation(line: 49, column: 18, scope: !615)
!623 = !DILocation(line: 49, column: 21, scope: !615)
!624 = !DILocation(line: 49, column: 2, scope: !615)
!625 = !DILocation(line: 50, column: 1, scope: !615)
!626 = distinct !DISubprogram(name: "z_object_init", scope: !6, file: !6, line: 215, type: !257, scopeLine: 216, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !627)
!627 = !{!628}
!628 = !DILocalVariable(name: "obj", arg: 1, scope: !626, file: !6, line: 215, type: !144)
!629 = !DILocation(line: 215, column: 46, scope: !626)
!630 = !DILocation(line: 217, column: 9, scope: !626)
!631 = !DILocation(line: 218, column: 1, scope: !626)
!632 = distinct !DISubprogram(name: "k_mem_slab_alloc", scope: !114, file: !114, line: 208, type: !633, scopeLine: 209, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !636)
!633 = !DISubroutineType(types: !634)
!634 = !{!93, !447, !635, !323}
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 32)
!636 = !{!637, !638, !639, !640, !645}
!637 = !DILocalVariable(name: "slab", arg: 1, scope: !632, file: !114, line: 208, type: !447)
!638 = !DILocalVariable(name: "mem", arg: 2, scope: !632, file: !114, line: 208, type: !635)
!639 = !DILocalVariable(name: "timeout", arg: 3, scope: !632, file: !114, line: 208, type: !323)
!640 = !DILocalVariable(name: "key", scope: !632, file: !114, line: 210, type: !641)
!641 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_spinlock_key_t", file: !241, line: 108, baseType: !642)
!642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "z_spinlock_key", file: !241, line: 34, size: 32, elements: !643)
!643 = !{!644}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !642, file: !241, line: 35, baseType: !93, size: 32)
!645 = !DILocalVariable(name: "result", scope: !632, file: !114, line: 211, type: !93)
!646 = !DILocation(line: 208, column: 41, scope: !632)
!647 = !DILocation(line: 208, column: 54, scope: !632)
!648 = !DILocation(line: 208, column: 71, scope: !632)
!649 = !DILocation(line: 210, column: 2, scope: !632)
!650 = !DILocation(line: 210, column: 19, scope: !632)
!651 = !DILocation(line: 210, column: 38, scope: !632)
!652 = !DILocation(line: 210, column: 44, scope: !632)
!653 = !DILocalVariable(name: "l", arg: 1, scope: !654, file: !241, line: 160, type: !657)
!654 = distinct !DISubprogram(name: "k_spin_lock", scope: !241, file: !241, line: 160, type: !655, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !658)
!655 = !DISubroutineType(types: !656)
!656 = !{!641, !657}
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 32)
!658 = !{!653, !659}
!659 = !DILocalVariable(name: "k", scope: !654, file: !241, line: 163, type: !641)
!660 = !DILocation(line: 160, column: 94, scope: !654, inlinedAt: !661)
!661 = distinct !DILocation(line: 210, column: 25, scope: !632)
!662 = !DILocation(line: 162, column: 9, scope: !654, inlinedAt: !661)
!663 = !DILocation(line: 163, column: 19, scope: !654, inlinedAt: !661)
!664 = !DILocation(line: 44, column: 2, scope: !665, inlinedAt: !671)
!665 = distinct !DISubprogram(name: "arch_irq_lock", scope: !666, file: !666, line: 42, type: !667, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !669)
!666 = !DIFile(filename: "include/zephyr/arch/arm/asm_inline_gcc.h", directory: "/home/sri/zephyrproject/zephyr")
!667 = !DISubroutineType(types: !668)
!668 = !{!96}
!669 = !{!670}
!670 = !DILocalVariable(name: "key", scope: !665, file: !666, line: 44, type: !96)
!671 = distinct !DILocation(line: 169, column: 10, scope: !654, inlinedAt: !661)
!672 = !DILocation(line: 44, column: 15, scope: !665, inlinedAt: !671)
!673 = !DILocation(line: 48, column: 2, scope: !665, inlinedAt: !671)
!674 = !{i64 66904}
!675 = !DILocation(line: 80, column: 9, scope: !665, inlinedAt: !671)
!676 = !DILocation(line: 81, column: 1, scope: !665, inlinedAt: !671)
!677 = !DILocation(line: 169, column: 8, scope: !654, inlinedAt: !661)
!678 = !DILocation(line: 171, column: 26, scope: !654, inlinedAt: !661)
!679 = !DILocalVariable(name: "l", arg: 1, scope: !680, file: !241, line: 110, type: !657)
!680 = distinct !DISubprogram(name: "z_spinlock_validate_pre", scope: !241, file: !241, line: 110, type: !681, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !683)
!681 = !DISubroutineType(types: !682)
!682 = !{null, !657}
!683 = !{!679}
!684 = !DILocation(line: 110, column: 94, scope: !680, inlinedAt: !685)
!685 = distinct !DILocation(line: 171, column: 2, scope: !654, inlinedAt: !661)
!686 = !DILocation(line: 112, column: 9, scope: !680, inlinedAt: !685)
!687 = !DILocation(line: 177, column: 27, scope: !654, inlinedAt: !661)
!688 = !DILocalVariable(name: "l", arg: 1, scope: !689, file: !241, line: 121, type: !657)
!689 = distinct !DISubprogram(name: "z_spinlock_validate_post", scope: !241, file: !241, line: 121, type: !681, scopeLine: 122, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !690)
!690 = !{!688}
!691 = !DILocation(line: 121, column: 95, scope: !689, inlinedAt: !692)
!692 = distinct !DILocation(line: 177, column: 2, scope: !654, inlinedAt: !661)
!693 = !DILocation(line: 123, column: 9, scope: !689, inlinedAt: !692)
!694 = !DILocation(line: 179, column: 2, scope: !654, inlinedAt: !661)
!695 = !DILocation(line: 210, column: 25, scope: !632)
!696 = !DILocation(line: 211, column: 2, scope: !632)
!697 = !DILocation(line: 211, column: 6, scope: !632)
!698 = !DILocation(line: 213, column: 2, scope: !632)
!699 = !DILocation(line: 213, column: 7, scope: !700)
!700 = distinct !DILexicalBlock(scope: !632, file: !114, line: 213, column: 5)
!701 = !DILocation(line: 215, column: 6, scope: !702)
!702 = distinct !DILexicalBlock(scope: !632, file: !114, line: 215, column: 6)
!703 = !DILocation(line: 215, column: 12, scope: !702)
!704 = !DILocation(line: 215, column: 22, scope: !702)
!705 = !DILocation(line: 215, column: 6, scope: !632)
!706 = !DILocation(line: 217, column: 10, scope: !707)
!707 = distinct !DILexicalBlock(scope: !702, file: !114, line: 215, column: 28)
!708 = !DILocation(line: 217, column: 16, scope: !707)
!709 = !DILocation(line: 217, column: 4, scope: !707)
!710 = !DILocation(line: 217, column: 8, scope: !707)
!711 = !DILocation(line: 218, column: 32, scope: !707)
!712 = !DILocation(line: 218, column: 38, scope: !707)
!713 = !DILocation(line: 218, column: 21, scope: !707)
!714 = !DILocation(line: 218, column: 3, scope: !707)
!715 = !DILocation(line: 218, column: 9, scope: !707)
!716 = !DILocation(line: 218, column: 19, scope: !707)
!717 = !DILocation(line: 219, column: 3, scope: !707)
!718 = !DILocation(line: 219, column: 9, scope: !707)
!719 = !DILocation(line: 219, column: 14, scope: !707)
!720 = !DILocation(line: 219, column: 22, scope: !707)
!721 = !DILocation(line: 226, column: 10, scope: !707)
!722 = !DILocation(line: 227, column: 2, scope: !707)
!723 = !DILocation(line: 227, column: 24, scope: !724)
!724 = distinct !DILexicalBlock(scope: !702, file: !114, line: 227, column: 13)
!725 = !DILocation(line: 227, column: 49, scope: !724)
!726 = !DILocation(line: 227, column: 30, scope: !724)
!727 = !DILocation(line: 227, column: 13, scope: !702)
!728 = !DILocation(line: 230, column: 4, scope: !729)
!729 = distinct !DILexicalBlock(scope: !724, file: !114, line: 228, column: 10)
!730 = !DILocation(line: 230, column: 8, scope: !729)
!731 = !DILocation(line: 231, column: 10, scope: !729)
!732 = !DILocation(line: 232, column: 2, scope: !729)
!733 = !DILocation(line: 233, column: 3, scope: !734)
!734 = distinct !DILexicalBlock(scope: !724, file: !114, line: 232, column: 9)
!735 = !DILocation(line: 233, column: 8, scope: !736)
!736 = distinct !DILexicalBlock(scope: !734, file: !114, line: 233, column: 6)
!737 = !DILocation(line: 236, column: 25, scope: !734)
!738 = !DILocation(line: 236, column: 31, scope: !734)
!739 = !DILocation(line: 236, column: 43, scope: !734)
!740 = !DILocation(line: 236, column: 49, scope: !734)
!741 = !DILocation(line: 236, column: 12, scope: !734)
!742 = !DILocation(line: 236, column: 10, scope: !734)
!743 = !DILocation(line: 237, column: 7, scope: !744)
!744 = distinct !DILexicalBlock(scope: !734, file: !114, line: 237, column: 7)
!745 = !DILocation(line: 237, column: 14, scope: !744)
!746 = !DILocation(line: 237, column: 7, scope: !734)
!747 = !DILocation(line: 238, column: 27, scope: !748)
!748 = distinct !DILexicalBlock(scope: !744, file: !114, line: 237, column: 20)
!749 = !DILocation(line: 238, column: 36, scope: !748)
!750 = !DILocation(line: 238, column: 41, scope: !748)
!751 = !DILocation(line: 238, column: 5, scope: !748)
!752 = !DILocation(line: 238, column: 9, scope: !748)
!753 = !DILocation(line: 239, column: 3, scope: !748)
!754 = !DILocation(line: 241, column: 3, scope: !734)
!755 = !DILocation(line: 241, column: 8, scope: !756)
!756 = distinct !DILexicalBlock(scope: !734, file: !114, line: 241, column: 6)
!757 = !DILocation(line: 243, column: 10, scope: !734)
!758 = !DILocation(line: 243, column: 3, scope: !734)
!759 = !DILocation(line: 246, column: 2, scope: !632)
!760 = !DILocation(line: 246, column: 7, scope: !761)
!761 = distinct !DILexicalBlock(scope: !632, file: !114, line: 246, column: 5)
!762 = !DILocation(line: 248, column: 17, scope: !632)
!763 = !DILocation(line: 248, column: 23, scope: !632)
!764 = !DILocation(line: 248, column: 2, scope: !632)
!765 = !DILocalVariable(name: "l", arg: 1, scope: !766, file: !241, line: 235, type: !657)
!766 = distinct !DISubprogram(name: "k_spin_unlock", scope: !241, file: !241, line: 235, type: !767, scopeLine: 237, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !769)
!767 = !DISubroutineType(types: !768)
!768 = !{null, !657, !641}
!769 = !{!765, !770}
!770 = !DILocalVariable(name: "key", arg: 2, scope: !766, file: !241, line: 236, type: !641)
!771 = !DILocation(line: 235, column: 84, scope: !766, inlinedAt: !772)
!772 = distinct !DILocation(line: 248, column: 2, scope: !632)
!773 = !DILocation(line: 236, column: 23, scope: !766, inlinedAt: !772)
!774 = !DILocation(line: 238, column: 9, scope: !766, inlinedAt: !772)
!775 = !DILocation(line: 261, column: 22, scope: !766, inlinedAt: !772)
!776 = !DILocalVariable(name: "key", arg: 1, scope: !777, file: !666, line: 88, type: !96)
!777 = distinct !DISubprogram(name: "arch_irq_unlock", scope: !666, file: !666, line: 88, type: !778, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !780)
!778 = !DISubroutineType(types: !779)
!779 = !{null, !96}
!780 = !{!776}
!781 = !DILocation(line: 88, column: 80, scope: !777, inlinedAt: !782)
!782 = distinct !DILocation(line: 261, column: 2, scope: !766, inlinedAt: !772)
!783 = !DILocation(line: 91, column: 6, scope: !784, inlinedAt: !782)
!784 = distinct !DILexicalBlock(scope: !777, file: !666, line: 91, column: 6)
!785 = !DILocation(line: 91, column: 10, scope: !784, inlinedAt: !782)
!786 = !DILocation(line: 91, column: 6, scope: !777, inlinedAt: !782)
!787 = !DILocation(line: 92, column: 3, scope: !788, inlinedAt: !782)
!788 = distinct !DILexicalBlock(scope: !784, file: !666, line: 91, column: 17)
!789 = !DILocation(line: 94, column: 2, scope: !777, inlinedAt: !782)
!790 = !{i64 67208}
!791 = !DILocation(line: 114, column: 1, scope: !777, inlinedAt: !782)
!792 = !DILocation(line: 250, column: 9, scope: !632)
!793 = !DILocation(line: 250, column: 2, scope: !632)
!794 = !DILocation(line: 251, column: 1, scope: !632)
!795 = !DISubprogram(name: "z_pend_curr", scope: !796, file: !796, line: 46, type: !797, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !242)
!796 = !DIFile(filename: "kernel/include/ksched.h", directory: "/home/sri/zephyrproject/zephyr")
!797 = !DISubroutineType(types: !798)
!798 = !{!93, !657, !641, !167, !323}
!799 = distinct !DISubprogram(name: "k_mem_slab_free", scope: !114, file: !114, line: 253, type: !800, scopeLine: 254, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !802)
!800 = !DISubroutineType(types: !801)
!801 = !{null, !447, !92}
!802 = !{!803, !804, !805, !806}
!803 = !DILocalVariable(name: "slab", arg: 1, scope: !799, file: !114, line: 253, type: !447)
!804 = !DILocalVariable(name: "mem", arg: 2, scope: !799, file: !114, line: 253, type: !92)
!805 = !DILocalVariable(name: "key", scope: !799, file: !114, line: 255, type: !641)
!806 = !DILocalVariable(name: "pending_thread", scope: !807, file: !114, line: 265, type: !146)
!807 = distinct !DILexicalBlock(scope: !808, file: !114, line: 264, column: 33)
!808 = distinct !DILexicalBlock(scope: !799, file: !114, line: 264, column: 6)
!809 = !DILocation(line: 253, column: 41, scope: !799)
!810 = !DILocation(line: 253, column: 53, scope: !799)
!811 = !DILocation(line: 255, column: 2, scope: !799)
!812 = !DILocation(line: 255, column: 19, scope: !799)
!813 = !DILocation(line: 255, column: 38, scope: !799)
!814 = !DILocation(line: 255, column: 44, scope: !799)
!815 = !DILocation(line: 160, column: 94, scope: !654, inlinedAt: !816)
!816 = distinct !DILocation(line: 255, column: 25, scope: !799)
!817 = !DILocation(line: 162, column: 9, scope: !654, inlinedAt: !816)
!818 = !DILocation(line: 163, column: 19, scope: !654, inlinedAt: !816)
!819 = !DILocation(line: 44, column: 2, scope: !665, inlinedAt: !820)
!820 = distinct !DILocation(line: 169, column: 10, scope: !654, inlinedAt: !816)
!821 = !DILocation(line: 44, column: 15, scope: !665, inlinedAt: !820)
!822 = !DILocation(line: 48, column: 2, scope: !665, inlinedAt: !820)
!823 = !DILocation(line: 80, column: 9, scope: !665, inlinedAt: !820)
!824 = !DILocation(line: 81, column: 1, scope: !665, inlinedAt: !820)
!825 = !DILocation(line: 169, column: 8, scope: !654, inlinedAt: !816)
!826 = !DILocation(line: 171, column: 26, scope: !654, inlinedAt: !816)
!827 = !DILocation(line: 110, column: 94, scope: !680, inlinedAt: !828)
!828 = distinct !DILocation(line: 171, column: 2, scope: !654, inlinedAt: !816)
!829 = !DILocation(line: 112, column: 9, scope: !680, inlinedAt: !828)
!830 = !DILocation(line: 177, column: 27, scope: !654, inlinedAt: !816)
!831 = !DILocation(line: 121, column: 95, scope: !689, inlinedAt: !832)
!832 = distinct !DILocation(line: 177, column: 2, scope: !654, inlinedAt: !816)
!833 = !DILocation(line: 123, column: 9, scope: !689, inlinedAt: !832)
!834 = !DILocation(line: 179, column: 2, scope: !654, inlinedAt: !816)
!835 = !DILocation(line: 255, column: 25, scope: !799)
!836 = !DILocation(line: 263, column: 2, scope: !799)
!837 = !DILocation(line: 263, column: 7, scope: !838)
!838 = distinct !DILexicalBlock(scope: !799, file: !114, line: 263, column: 5)
!839 = !DILocation(line: 264, column: 6, scope: !808)
!840 = !DILocation(line: 264, column: 12, scope: !808)
!841 = !DILocation(line: 264, column: 22, scope: !808)
!842 = !DILocation(line: 264, column: 6, scope: !799)
!843 = !DILocation(line: 265, column: 3, scope: !807)
!844 = !DILocation(line: 265, column: 20, scope: !807)
!845 = !DILocation(line: 265, column: 60, scope: !807)
!846 = !DILocation(line: 265, column: 66, scope: !807)
!847 = !DILocation(line: 265, column: 37, scope: !807)
!848 = !DILocation(line: 267, column: 7, scope: !849)
!849 = distinct !DILexicalBlock(scope: !807, file: !114, line: 267, column: 7)
!850 = !DILocation(line: 267, column: 22, scope: !849)
!851 = !DILocation(line: 267, column: 7, scope: !807)
!852 = !DILocation(line: 268, column: 4, scope: !853)
!853 = distinct !DILexicalBlock(scope: !849, file: !114, line: 267, column: 28)
!854 = !DILocation(line: 268, column: 9, scope: !855)
!855 = distinct !DILexicalBlock(scope: !853, file: !114, line: 268, column: 7)
!856 = !DILocation(line: 270, column: 40, scope: !853)
!857 = !DILocation(line: 270, column: 59, scope: !853)
!858 = !DILocalVariable(name: "thread", arg: 1, scope: !859, file: !860, line: 137, type: !146)
!859 = distinct !DISubprogram(name: "z_thread_return_value_set_with_data", scope: !860, file: !860, line: 137, type: !861, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !863)
!860 = !DIFile(filename: "kernel/include/kernel_internal.h", directory: "/home/sri/zephyrproject/zephyr")
!861 = !DISubroutineType(types: !862)
!862 = !{null, !146, !96, !92}
!863 = !{!858, !864, !865}
!864 = !DILocalVariable(name: "value", arg: 2, scope: !859, file: !860, line: 138, type: !96)
!865 = !DILocalVariable(name: "data", arg: 3, scope: !859, file: !860, line: 139, type: !92)
!866 = !DILocation(line: 137, column: 54, scope: !859, inlinedAt: !867)
!867 = distinct !DILocation(line: 270, column: 4, scope: !853)
!868 = !DILocation(line: 138, column: 21, scope: !859, inlinedAt: !867)
!869 = !DILocation(line: 139, column: 14, scope: !859, inlinedAt: !867)
!870 = !DILocation(line: 141, column: 31, scope: !859, inlinedAt: !867)
!871 = !DILocation(line: 141, column: 39, scope: !859, inlinedAt: !867)
!872 = !DILocalVariable(name: "thread", arg: 1, scope: !873, file: !874, line: 59, type: !146)
!873 = distinct !DISubprogram(name: "arch_thread_return_value_set", scope: !874, file: !874, line: 59, type: !875, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !877)
!874 = !DIFile(filename: "arch/arm/include/cortex_m/kernel_arch_func.h", directory: "/home/sri/zephyrproject/zephyr")
!875 = !DISubroutineType(types: !876)
!876 = !{null, !146, !96}
!877 = !{!872, !878}
!878 = !DILocalVariable(name: "value", arg: 2, scope: !873, file: !874, line: 59, type: !96)
!879 = !DILocation(line: 59, column: 47, scope: !873, inlinedAt: !880)
!880 = distinct !DILocation(line: 141, column: 2, scope: !859, inlinedAt: !867)
!881 = !DILocation(line: 59, column: 68, scope: !873, inlinedAt: !880)
!882 = !DILocation(line: 61, column: 35, scope: !873, inlinedAt: !880)
!883 = !DILocation(line: 61, column: 2, scope: !873, inlinedAt: !880)
!884 = !DILocation(line: 61, column: 10, scope: !873, inlinedAt: !880)
!885 = !DILocation(line: 61, column: 15, scope: !873, inlinedAt: !880)
!886 = !DILocation(line: 61, column: 33, scope: !873, inlinedAt: !880)
!887 = !DILocation(line: 142, column: 27, scope: !859, inlinedAt: !867)
!888 = !DILocation(line: 142, column: 2, scope: !859, inlinedAt: !867)
!889 = !DILocation(line: 142, column: 15, scope: !859, inlinedAt: !867)
!890 = !DILocation(line: 142, column: 25, scope: !859, inlinedAt: !867)
!891 = !DILocation(line: 271, column: 19, scope: !853)
!892 = !DILocation(line: 271, column: 4, scope: !853)
!893 = !DILocation(line: 272, column: 18, scope: !853)
!894 = !DILocation(line: 272, column: 24, scope: !853)
!895 = !DILocation(line: 272, column: 4, scope: !853)
!896 = !DILocation(line: 273, column: 4, scope: !853)
!897 = !DILocation(line: 275, column: 2, scope: !808)
!898 = !DILocation(line: 275, column: 2, scope: !807)
!899 = !DILocation(line: 276, column: 19, scope: !799)
!900 = !DILocation(line: 276, column: 25, scope: !799)
!901 = !DILocation(line: 276, column: 13, scope: !799)
!902 = !DILocation(line: 276, column: 17, scope: !799)
!903 = !DILocation(line: 277, column: 29, scope: !799)
!904 = !DILocation(line: 277, column: 2, scope: !799)
!905 = !DILocation(line: 277, column: 8, scope: !799)
!906 = !DILocation(line: 277, column: 18, scope: !799)
!907 = !DILocation(line: 278, column: 2, scope: !799)
!908 = !DILocation(line: 278, column: 8, scope: !799)
!909 = !DILocation(line: 278, column: 13, scope: !799)
!910 = !DILocation(line: 278, column: 21, scope: !799)
!911 = !DILocation(line: 280, column: 2, scope: !799)
!912 = !DILocation(line: 280, column: 7, scope: !913)
!913 = distinct !DILexicalBlock(scope: !799, file: !114, line: 280, column: 5)
!914 = !DILocation(line: 282, column: 17, scope: !799)
!915 = !DILocation(line: 282, column: 23, scope: !799)
!916 = !DILocation(line: 282, column: 2, scope: !799)
!917 = !DILocation(line: 235, column: 84, scope: !766, inlinedAt: !918)
!918 = distinct !DILocation(line: 282, column: 2, scope: !799)
!919 = !DILocation(line: 236, column: 23, scope: !766, inlinedAt: !918)
!920 = !DILocation(line: 238, column: 9, scope: !766, inlinedAt: !918)
!921 = !DILocation(line: 261, column: 22, scope: !766, inlinedAt: !918)
!922 = !DILocation(line: 88, column: 80, scope: !777, inlinedAt: !923)
!923 = distinct !DILocation(line: 261, column: 2, scope: !766, inlinedAt: !918)
!924 = !DILocation(line: 91, column: 6, scope: !784, inlinedAt: !923)
!925 = !DILocation(line: 91, column: 10, scope: !784, inlinedAt: !923)
!926 = !DILocation(line: 91, column: 6, scope: !777, inlinedAt: !923)
!927 = !DILocation(line: 92, column: 3, scope: !788, inlinedAt: !923)
!928 = !DILocation(line: 94, column: 2, scope: !777, inlinedAt: !923)
!929 = !DILocation(line: 114, column: 1, scope: !777, inlinedAt: !923)
!930 = !DILocation(line: 283, column: 1, scope: !799)
!931 = !DISubprogram(name: "z_unpend_first_thread", scope: !796, file: !796, line: 53, type: !932, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !242)
!932 = !DISubroutineType(types: !933)
!933 = !{!146, !167}
!934 = !DISubprogram(name: "z_ready_thread", scope: !796, file: !796, line: 65, type: !935, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !242)
!935 = !DISubroutineType(types: !936)
!936 = !{null, !146}
!937 = !DISubprogram(name: "z_reschedule", scope: !796, file: !796, line: 51, type: !767, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !242)
!938 = distinct !DISubprogram(name: "k_mem_slab_runtime_stats_get", scope: !114, file: !114, line: 285, type: !939, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !948)
!939 = !DISubroutineType(types: !940)
!940 = !{!93, !447, !941}
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 32)
!942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sys_memory_stats", file: !943, line: 24, size: 96, elements: !944)
!943 = !DIFile(filename: "include/zephyr/sys/mem_stats.h", directory: "/home/sri/zephyrproject/zephyr")
!944 = !{!945, !946, !947}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "free_bytes", scope: !942, file: !943, line: 25, baseType: !236, size: 32)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_bytes", scope: !942, file: !943, line: 26, baseType: !236, size: 32, offset: 32)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "max_allocated_bytes", scope: !942, file: !943, line: 27, baseType: !236, size: 32, offset: 64)
!948 = !{!949, !950, !951}
!949 = !DILocalVariable(name: "slab", arg: 1, scope: !938, file: !114, line: 285, type: !447)
!950 = !DILocalVariable(name: "stats", arg: 2, scope: !938, file: !114, line: 285, type: !941)
!951 = !DILocalVariable(name: "key", scope: !938, file: !114, line: 291, type: !641)
!952 = !DILocation(line: 285, column: 53, scope: !938)
!953 = !DILocation(line: 285, column: 84, scope: !938)
!954 = !DILocation(line: 287, column: 7, scope: !955)
!955 = distinct !DILexicalBlock(scope: !938, file: !114, line: 287, column: 6)
!956 = !DILocation(line: 287, column: 12, scope: !955)
!957 = !DILocation(line: 287, column: 18, scope: !955)
!958 = !DILocation(line: 287, column: 22, scope: !955)
!959 = !DILocation(line: 287, column: 28, scope: !955)
!960 = !DILocation(line: 287, column: 6, scope: !938)
!961 = !DILocation(line: 288, column: 3, scope: !962)
!962 = distinct !DILexicalBlock(scope: !955, file: !114, line: 287, column: 35)
!963 = !DILocation(line: 291, column: 2, scope: !938)
!964 = !DILocation(line: 291, column: 19, scope: !938)
!965 = !DILocation(line: 291, column: 38, scope: !938)
!966 = !DILocation(line: 291, column: 44, scope: !938)
!967 = !DILocation(line: 160, column: 94, scope: !654, inlinedAt: !968)
!968 = distinct !DILocation(line: 291, column: 25, scope: !938)
!969 = !DILocation(line: 162, column: 9, scope: !654, inlinedAt: !968)
!970 = !DILocation(line: 163, column: 19, scope: !654, inlinedAt: !968)
!971 = !DILocation(line: 44, column: 2, scope: !665, inlinedAt: !972)
!972 = distinct !DILocation(line: 169, column: 10, scope: !654, inlinedAt: !968)
!973 = !DILocation(line: 44, column: 15, scope: !665, inlinedAt: !972)
!974 = !DILocation(line: 48, column: 2, scope: !665, inlinedAt: !972)
!975 = !DILocation(line: 80, column: 9, scope: !665, inlinedAt: !972)
!976 = !DILocation(line: 81, column: 1, scope: !665, inlinedAt: !972)
!977 = !DILocation(line: 169, column: 8, scope: !654, inlinedAt: !968)
!978 = !DILocation(line: 171, column: 26, scope: !654, inlinedAt: !968)
!979 = !DILocation(line: 110, column: 94, scope: !680, inlinedAt: !980)
!980 = distinct !DILocation(line: 171, column: 2, scope: !654, inlinedAt: !968)
!981 = !DILocation(line: 112, column: 9, scope: !680, inlinedAt: !980)
!982 = !DILocation(line: 177, column: 27, scope: !654, inlinedAt: !968)
!983 = !DILocation(line: 121, column: 95, scope: !689, inlinedAt: !984)
!984 = distinct !DILocation(line: 177, column: 2, scope: !654, inlinedAt: !968)
!985 = !DILocation(line: 123, column: 9, scope: !689, inlinedAt: !984)
!986 = !DILocation(line: 179, column: 2, scope: !654, inlinedAt: !968)
!987 = !DILocation(line: 291, column: 25, scope: !938)
!988 = !DILocation(line: 293, column: 27, scope: !938)
!989 = !DILocation(line: 293, column: 33, scope: !938)
!990 = !DILocation(line: 293, column: 38, scope: !938)
!991 = !DILocation(line: 293, column: 49, scope: !938)
!992 = !DILocation(line: 293, column: 55, scope: !938)
!993 = !DILocation(line: 293, column: 60, scope: !938)
!994 = !DILocation(line: 293, column: 47, scope: !938)
!995 = !DILocation(line: 293, column: 2, scope: !938)
!996 = !DILocation(line: 293, column: 9, scope: !938)
!997 = !DILocation(line: 293, column: 25, scope: !938)
!998 = !DILocation(line: 294, column: 23, scope: !938)
!999 = !DILocation(line: 294, column: 29, scope: !938)
!1000 = !DILocation(line: 294, column: 34, scope: !938)
!1001 = !DILocation(line: 294, column: 47, scope: !938)
!1002 = !DILocation(line: 294, column: 53, scope: !938)
!1003 = !DILocation(line: 294, column: 58, scope: !938)
!1004 = !DILocation(line: 294, column: 45, scope: !938)
!1005 = !DILocation(line: 295, column: 8, scope: !938)
!1006 = !DILocation(line: 295, column: 14, scope: !938)
!1007 = !DILocation(line: 295, column: 19, scope: !938)
!1008 = !DILocation(line: 294, column: 68, scope: !938)
!1009 = !DILocation(line: 294, column: 2, scope: !938)
!1010 = !DILocation(line: 294, column: 9, scope: !938)
!1011 = !DILocation(line: 294, column: 20, scope: !938)
!1012 = !DILocation(line: 300, column: 2, scope: !938)
!1013 = !DILocation(line: 300, column: 9, scope: !938)
!1014 = !DILocation(line: 300, column: 29, scope: !938)
!1015 = !DILocation(line: 303, column: 17, scope: !938)
!1016 = !DILocation(line: 303, column: 23, scope: !938)
!1017 = !DILocation(line: 303, column: 2, scope: !938)
!1018 = !DILocation(line: 235, column: 84, scope: !766, inlinedAt: !1019)
!1019 = distinct !DILocation(line: 303, column: 2, scope: !938)
!1020 = !DILocation(line: 236, column: 23, scope: !766, inlinedAt: !1019)
!1021 = !DILocation(line: 238, column: 9, scope: !766, inlinedAt: !1019)
!1022 = !DILocation(line: 261, column: 22, scope: !766, inlinedAt: !1019)
!1023 = !DILocation(line: 88, column: 80, scope: !777, inlinedAt: !1024)
!1024 = distinct !DILocation(line: 261, column: 2, scope: !766, inlinedAt: !1019)
!1025 = !DILocation(line: 91, column: 6, scope: !784, inlinedAt: !1024)
!1026 = !DILocation(line: 91, column: 10, scope: !784, inlinedAt: !1024)
!1027 = !DILocation(line: 91, column: 6, scope: !777, inlinedAt: !1024)
!1028 = !DILocation(line: 92, column: 3, scope: !788, inlinedAt: !1024)
!1029 = !DILocation(line: 94, column: 2, scope: !777, inlinedAt: !1024)
!1030 = !DILocation(line: 114, column: 1, scope: !777, inlinedAt: !1024)
!1031 = !DILocation(line: 305, column: 2, scope: !938)
!1032 = !DILocation(line: 306, column: 1, scope: !938)
!1033 = !DISubprogram(name: "z_timeout_expires", scope: !225, file: !225, line: 642, type: !1034, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !242)
!1034 = !DISubroutineType(types: !1035)
!1035 = !{!286, !1036}
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 32)
!1037 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !194)
!1038 = !DISubprogram(name: "z_timeout_remaining", scope: !225, file: !225, line: 643, type: !1034, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !242)
!1039 = distinct !DISubprogram(name: "sys_sflist_is_empty", scope: !374, file: !374, line: 335, type: !1040, scopeLine: 335, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1044)
!1040 = !DISubroutineType(types: !1041)
!1041 = !{!1042, !1043}
!1042 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 32)
!1044 = !{!1045}
!1045 = !DILocalVariable(name: "list", arg: 1, scope: !1039, file: !374, line: 335, type: !1043)
!1046 = !DILocation(line: 335, column: 55, scope: !1039)
!1047 = !DILocation(line: 335, column: 92, scope: !1039)
!1048 = !DILocation(line: 335, column: 71, scope: !1039)
!1049 = !DILocation(line: 335, column: 98, scope: !1039)
!1050 = !DILocation(line: 335, column: 63, scope: !1039)
!1051 = distinct !DISubprogram(name: "sys_sflist_peek_head", scope: !374, file: !374, line: 255, type: !1052, scopeLine: 256, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1054)
!1052 = !DISubroutineType(types: !1053)
!1053 = !{!378, !1043}
!1054 = !{!1055}
!1055 = !DILocalVariable(name: "list", arg: 1, scope: !1051, file: !374, line: 255, type: !1043)
!1056 = !DILocation(line: 255, column: 64, scope: !1051)
!1057 = !DILocation(line: 257, column: 9, scope: !1051)
!1058 = !DILocation(line: 257, column: 15, scope: !1051)
!1059 = !DILocation(line: 257, column: 2, scope: !1051)
!1060 = distinct !DISubprogram(name: "sys_dlist_init", scope: !99, file: !99, line: 203, type: !1061, scopeLine: 204, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1064)
!1061 = !DISubroutineType(types: !1062)
!1062 = !{null, !1063}
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 32)
!1064 = !{!1065}
!1065 = !DILocalVariable(name: "list", arg: 1, scope: !1060, file: !99, line: 203, type: !1063)
!1066 = !DILocation(line: 203, column: 48, scope: !1060)
!1067 = !DILocation(line: 205, column: 30, scope: !1060)
!1068 = !DILocation(line: 205, column: 2, scope: !1060)
!1069 = !DILocation(line: 205, column: 8, scope: !1060)
!1070 = !DILocation(line: 205, column: 13, scope: !1060)
!1071 = !DILocation(line: 206, column: 30, scope: !1060)
!1072 = !DILocation(line: 206, column: 2, scope: !1060)
!1073 = !DILocation(line: 206, column: 8, scope: !1060)
!1074 = !DILocation(line: 206, column: 13, scope: !1060)
!1075 = !DILocation(line: 207, column: 1, scope: !1060)
