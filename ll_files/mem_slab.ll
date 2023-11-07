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
@_kernel = external global %struct.z_kernel, align 4
@_k_mem_slab_list_start = external global [0 x %struct.k_mem_slab], align 4
@_k_mem_slab_list_end = external global [0 x %struct.k_mem_slab], align 4
@llvm.used = appending global [1 x ptr] [ptr @__init_init_mem_slab_obj_core_list], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_k_object_access_grant(ptr noundef %0, ptr noundef %1) #0 !dbg !143 {
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
  call void @llvm.dbg.declare(metadata ptr %2, metadata !379, metadata !DIExpression()), !dbg !380
  %3 = load ptr, ptr %2, align 4, !dbg !381
  %4 = getelementptr inbounds %struct.k_queue, ptr %3, i32 0, i32 0, !dbg !382
  %5 = call zeroext i1 @sys_sflist_is_empty(ptr noundef %4), !dbg !383
  %6 = zext i1 %5 to i32, !dbg !384
  ret i32 %6, !dbg !385
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_sem_count_get(ptr noundef %0) #0 !dbg !386 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !395, metadata !DIExpression()), !dbg !396
  %3 = load ptr, ptr %2, align 4, !dbg !397
  %4 = getelementptr inbounds %struct.k_sem, ptr %3, i32 0, i32 1, !dbg !398
  %5 = load i32, ptr %4, align 4, !dbg !398
  ret i32 %5, !dbg !399
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_msgq_num_free_get(ptr noundef %0) #0 !dbg !400 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !416, metadata !DIExpression()), !dbg !417
  %3 = load ptr, ptr %2, align 4, !dbg !418
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 3, !dbg !419
  %5 = load i32, ptr %4, align 4, !dbg !419
  %6 = load ptr, ptr %2, align 4, !dbg !420
  %7 = getelementptr inbounds %struct.k_msgq, ptr %6, i32 0, i32 8, !dbg !421
  %8 = load i32, ptr %7, align 4, !dbg !421
  %9 = sub i32 %5, %8, !dbg !422
  ret i32 %9, !dbg !423
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_msgq_num_used_get(ptr noundef %0) #0 !dbg !424 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !425, metadata !DIExpression()), !dbg !426
  %3 = load ptr, ptr %2, align 4, !dbg !427
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 8, !dbg !428
  %5 = load i32, ptr %4, align 4, !dbg !428
  ret i32 %5, !dbg !429
}

; Function Attrs: noinline nounwind optnone
define internal i32 @init_mem_slab_obj_core_list() #0 !dbg !430 {
  %1 = alloca i32, align 4
  %2 = alloca ptr, align 4
  %3 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata ptr %1, metadata !431, metadata !DIExpression()), !dbg !432
  store i32 0, ptr %1, align 4, !dbg !432
  call void @llvm.dbg.declare(metadata ptr %2, metadata !433, metadata !DIExpression()), !dbg !448
  store ptr @_k_mem_slab_list_start, ptr %2, align 4, !dbg !448
  br label %4, !dbg !449

4:                                                ; preds = %18, %0
  %5 = load ptr, ptr %2, align 4, !dbg !450
  %6 = icmp ult ptr %5, @_k_mem_slab_list_end, !dbg !453
  %7 = zext i1 %6 to i32, !dbg !453
  store i32 %7, ptr %3, align 4, !dbg !454
  %8 = load i32, ptr %3, align 4, !dbg !456
  %9 = icmp ne i32 %8, 0, !dbg !457
  br i1 %9, label %10, label %21, !dbg !457

10:                                               ; preds = %4
  %11 = load ptr, ptr %2, align 4, !dbg !458
  %12 = call i32 @create_free_list(ptr noundef %11), !dbg !460
  store i32 %12, ptr %1, align 4, !dbg !461
  %13 = load i32, ptr %1, align 4, !dbg !462
  %14 = icmp slt i32 %13, 0, !dbg !464
  br i1 %14, label %15, label %16, !dbg !465

15:                                               ; preds = %10
  br label %22, !dbg !466

16:                                               ; preds = %10
  %17 = load ptr, ptr %2, align 4, !dbg !468
  call void @z_object_init(ptr noundef %17), !dbg !469
  br label %18, !dbg !470

18:                                               ; preds = %16
  %19 = load ptr, ptr %2, align 4, !dbg !471
  %20 = getelementptr inbounds %struct.k_mem_slab, ptr %19, i32 1, !dbg !471
  store ptr %20, ptr %2, align 4, !dbg !471
  br label %4, !dbg !472, !llvm.loop !473

21:                                               ; preds = %4
  br label %22, !dbg !474

22:                                               ; preds = %21, %15
  call void @llvm.dbg.label(metadata !475), !dbg !476
  %23 = load i32, ptr %1, align 4, !dbg !477
  ret i32 %23, !dbg !478
}

; Function Attrs: noinline nounwind optnone
define hidden i32 @k_mem_slab_init(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 !dbg !479 {
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.k_spinlock, align 1
  store ptr %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !484, metadata !DIExpression()), !dbg !485
  store ptr %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !486, metadata !DIExpression()), !dbg !487
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !488, metadata !DIExpression()), !dbg !489
  store i32 %3, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !490, metadata !DIExpression()), !dbg !491
  call void @llvm.dbg.declare(metadata ptr %9, metadata !492, metadata !DIExpression()), !dbg !493
  store i32 0, ptr %9, align 4, !dbg !493
  %11 = load i32, ptr %8, align 4, !dbg !494
  %12 = load ptr, ptr %5, align 4, !dbg !495
  %13 = getelementptr inbounds %struct.k_mem_slab, ptr %12, i32 0, i32 4, !dbg !496
  %14 = getelementptr inbounds %struct.k_mem_slab_info, ptr %13, i32 0, i32 0, !dbg !497
  store i32 %11, ptr %14, align 4, !dbg !498
  %15 = load i32, ptr %7, align 4, !dbg !499
  %16 = load ptr, ptr %5, align 4, !dbg !500
  %17 = getelementptr inbounds %struct.k_mem_slab, ptr %16, i32 0, i32 4, !dbg !501
  %18 = getelementptr inbounds %struct.k_mem_slab_info, ptr %17, i32 0, i32 1, !dbg !502
  store i32 %15, ptr %18, align 4, !dbg !503
  %19 = load ptr, ptr %6, align 4, !dbg !504
  %20 = load ptr, ptr %5, align 4, !dbg !505
  %21 = getelementptr inbounds %struct.k_mem_slab, ptr %20, i32 0, i32 2, !dbg !506
  store ptr %19, ptr %21, align 4, !dbg !507
  %22 = load ptr, ptr %5, align 4, !dbg !508
  %23 = getelementptr inbounds %struct.k_mem_slab, ptr %22, i32 0, i32 4, !dbg !509
  %24 = getelementptr inbounds %struct.k_mem_slab_info, ptr %23, i32 0, i32 2, !dbg !510
  store i32 0, ptr %24, align 4, !dbg !511
  %25 = load ptr, ptr %5, align 4, !dbg !512
  %26 = getelementptr inbounds %struct.k_mem_slab, ptr %25, i32 0, i32 1, !dbg !513
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %26, ptr align 1 %10, i32 0, i1 false), !dbg !514
  %27 = load ptr, ptr %5, align 4, !dbg !515
  %28 = call i32 @create_free_list(ptr noundef %27), !dbg !516
  store i32 %28, ptr %9, align 4, !dbg !517
  %29 = load i32, ptr %9, align 4, !dbg !518
  %30 = icmp slt i32 %29, 0, !dbg !520
  br i1 %30, label %31, label %32, !dbg !521

31:                                               ; preds = %4
  br label %36, !dbg !522

32:                                               ; preds = %4
  %33 = load ptr, ptr %5, align 4, !dbg !524
  %34 = getelementptr inbounds %struct.k_mem_slab, ptr %33, i32 0, i32 0, !dbg !525
  call void @z_waitq_init(ptr noundef %34), !dbg !526
  %35 = load ptr, ptr %5, align 4, !dbg !527
  call void @z_object_init(ptr noundef %35), !dbg !528
  br label %36, !dbg !528

36:                                               ; preds = %32, %31
  call void @llvm.dbg.label(metadata !529), !dbg !530
  br label %37, !dbg !531

37:                                               ; preds = %36
  br label %38, !dbg !532

38:                                               ; preds = %37
  %39 = load i32, ptr %9, align 4, !dbg !534
  ret i32 %39, !dbg !535
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: noinline nounwind optnone
define internal i32 @create_free_list(ptr noundef %0) #0 !dbg !536 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !539, metadata !DIExpression()), !dbg !540
  call void @llvm.dbg.declare(metadata ptr %4, metadata !541, metadata !DIExpression()), !dbg !542
  call void @llvm.dbg.declare(metadata ptr %5, metadata !543, metadata !DIExpression()), !dbg !544
  %6 = load ptr, ptr %3, align 4, !dbg !545
  %7 = getelementptr inbounds %struct.k_mem_slab, ptr %6, i32 0, i32 4, !dbg !547
  %8 = getelementptr inbounds %struct.k_mem_slab_info, ptr %7, i32 0, i32 1, !dbg !548
  %9 = load i32, ptr %8, align 4, !dbg !548
  %10 = load ptr, ptr %3, align 4, !dbg !549
  %11 = getelementptr inbounds %struct.k_mem_slab, ptr %10, i32 0, i32 2, !dbg !550
  %12 = load ptr, ptr %11, align 4, !dbg !550
  %13 = ptrtoint ptr %12 to i32, !dbg !551
  %14 = or i32 %9, %13, !dbg !552
  %15 = and i32 %14, 3, !dbg !553
  %16 = icmp ne i32 %15, 0, !dbg !554
  br i1 %16, label %17, label %18, !dbg !555

17:                                               ; preds = %1
  store i32 -5, ptr %2, align 4, !dbg !556
  br label %49, !dbg !556

18:                                               ; preds = %1
  %19 = load ptr, ptr %3, align 4, !dbg !558
  %20 = getelementptr inbounds %struct.k_mem_slab, ptr %19, i32 0, i32 3, !dbg !559
  store ptr null, ptr %20, align 4, !dbg !560
  %21 = load ptr, ptr %3, align 4, !dbg !561
  %22 = getelementptr inbounds %struct.k_mem_slab, ptr %21, i32 0, i32 2, !dbg !562
  %23 = load ptr, ptr %22, align 4, !dbg !562
  store ptr %23, ptr %5, align 4, !dbg !563
  store i32 0, ptr %4, align 4, !dbg !564
  br label %24, !dbg !566

24:                                               ; preds = %45, %18
  %25 = load i32, ptr %4, align 4, !dbg !567
  %26 = load ptr, ptr %3, align 4, !dbg !569
  %27 = getelementptr inbounds %struct.k_mem_slab, ptr %26, i32 0, i32 4, !dbg !570
  %28 = getelementptr inbounds %struct.k_mem_slab_info, ptr %27, i32 0, i32 0, !dbg !571
  %29 = load i32, ptr %28, align 4, !dbg !571
  %30 = icmp ult i32 %25, %29, !dbg !572
  br i1 %30, label %31, label %48, !dbg !573

31:                                               ; preds = %24
  %32 = load ptr, ptr %3, align 4, !dbg !574
  %33 = getelementptr inbounds %struct.k_mem_slab, ptr %32, i32 0, i32 3, !dbg !576
  %34 = load ptr, ptr %33, align 4, !dbg !576
  %35 = load ptr, ptr %5, align 4, !dbg !577
  store ptr %34, ptr %35, align 4, !dbg !578
  %36 = load ptr, ptr %5, align 4, !dbg !579
  %37 = load ptr, ptr %3, align 4, !dbg !580
  %38 = getelementptr inbounds %struct.k_mem_slab, ptr %37, i32 0, i32 3, !dbg !581
  store ptr %36, ptr %38, align 4, !dbg !582
  %39 = load ptr, ptr %3, align 4, !dbg !583
  %40 = getelementptr inbounds %struct.k_mem_slab, ptr %39, i32 0, i32 4, !dbg !584
  %41 = getelementptr inbounds %struct.k_mem_slab_info, ptr %40, i32 0, i32 1, !dbg !585
  %42 = load i32, ptr %41, align 4, !dbg !585
  %43 = load ptr, ptr %5, align 4, !dbg !586
  %44 = getelementptr inbounds i8, ptr %43, i32 %42, !dbg !586
  store ptr %44, ptr %5, align 4, !dbg !586
  br label %45, !dbg !587

45:                                               ; preds = %31
  %46 = load i32, ptr %4, align 4, !dbg !588
  %47 = add i32 %46, 1, !dbg !588
  store i32 %47, ptr %4, align 4, !dbg !588
  br label %24, !dbg !589, !llvm.loop !590

48:                                               ; preds = %24
  store i32 0, ptr %2, align 4, !dbg !592
  br label %49, !dbg !592

49:                                               ; preds = %48, %17
  %50 = load i32, ptr %2, align 4, !dbg !593
  ret i32 %50, !dbg !593
}

; Function Attrs: noinline nounwind optnone
define internal void @z_waitq_init(ptr noundef %0) #0 !dbg !594 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !598, metadata !DIExpression()), !dbg !599
  %3 = load ptr, ptr %2, align 4, !dbg !600
  %4 = getelementptr inbounds %struct._wait_q_t, ptr %3, i32 0, i32 0, !dbg !601
  call void @sys_dlist_init(ptr noundef %4), !dbg !602
  ret void, !dbg !603
}

; Function Attrs: noinline nounwind optnone
define internal void @z_object_init(ptr noundef %0) #0 !dbg !604 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !605, metadata !DIExpression()), !dbg !606
  %3 = load ptr, ptr %2, align 4, !dbg !607
  ret void, !dbg !608
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline nounwind optnone
define hidden i32 @k_mem_slab_alloc(ptr noundef %0, ptr noundef %1, [1 x i64] %2) #0 !dbg !609 {
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
  %19 = getelementptr inbounds %struct.k_timeout_t, ptr %13, i32 0, i32 0
  store [1 x i64] %2, ptr %19, align 8
  store ptr %0, ptr %14, align 4
  call void @llvm.dbg.declare(metadata ptr %14, metadata !613, metadata !DIExpression()), !dbg !614
  store ptr %1, ptr %15, align 4
  call void @llvm.dbg.declare(metadata ptr %15, metadata !615, metadata !DIExpression()), !dbg !616
  call void @llvm.dbg.declare(metadata ptr %13, metadata !617, metadata !DIExpression()), !dbg !618
  call void @llvm.dbg.declare(metadata ptr %16, metadata !619, metadata !DIExpression()), !dbg !624
  %20 = load ptr, ptr %14, align 4, !dbg !625
  %21 = getelementptr inbounds %struct.k_mem_slab, ptr %20, i32 0, i32 1, !dbg !626
  store ptr %21, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !627, metadata !DIExpression()), !dbg !632
  %22 = load ptr, ptr %11, align 4, !dbg !634
  call void @llvm.dbg.declare(metadata ptr %10, metadata !635, metadata !DIExpression()), !dbg !636
  call void @llvm.dbg.declare(metadata ptr %7, metadata !637, metadata !DIExpression()), !dbg !642
  %23 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #4, !dbg !644, !srcloc !645
  store i32 %23, ptr %7, align 4, !dbg !644
  %24 = load i32, ptr %7, align 4, !dbg !646
  store i32 %24, ptr %10, align 4, !dbg !647
  %25 = load ptr, ptr %11, align 4, !dbg !648
  store ptr %25, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !649, metadata !DIExpression()), !dbg !653
  %26 = load ptr, ptr %6, align 4, !dbg !655
  %27 = load ptr, ptr %11, align 4, !dbg !656
  store ptr %27, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !657, metadata !DIExpression()), !dbg !659
  %28 = load ptr, ptr %5, align 4, !dbg !661
  %29 = load i32, ptr %10, align 4, !dbg !662
  %30 = getelementptr inbounds %struct.z_spinlock_key, ptr %16, i32 0, i32 0, !dbg !663
  store i32 %29, ptr %30, align 4, !dbg !663
  call void @llvm.dbg.declare(metadata ptr %17, metadata !664, metadata !DIExpression()), !dbg !665
  br label %31, !dbg !666

31:                                               ; preds = %3
  br label %32, !dbg !667

32:                                               ; preds = %31
  %33 = load ptr, ptr %14, align 4, !dbg !669
  %34 = getelementptr inbounds %struct.k_mem_slab, ptr %33, i32 0, i32 3, !dbg !671
  %35 = load ptr, ptr %34, align 4, !dbg !671
  %36 = icmp ne ptr %35, null, !dbg !672
  br i1 %36, label %37, label %53, !dbg !673

37:                                               ; preds = %32
  %38 = load ptr, ptr %14, align 4, !dbg !674
  %39 = getelementptr inbounds %struct.k_mem_slab, ptr %38, i32 0, i32 3, !dbg !676
  %40 = load ptr, ptr %39, align 4, !dbg !676
  %41 = load ptr, ptr %15, align 4, !dbg !677
  store ptr %40, ptr %41, align 4, !dbg !678
  %42 = load ptr, ptr %14, align 4, !dbg !679
  %43 = getelementptr inbounds %struct.k_mem_slab, ptr %42, i32 0, i32 3, !dbg !680
  %44 = load ptr, ptr %43, align 4, !dbg !680
  %45 = load ptr, ptr %44, align 4, !dbg !681
  %46 = load ptr, ptr %14, align 4, !dbg !682
  %47 = getelementptr inbounds %struct.k_mem_slab, ptr %46, i32 0, i32 3, !dbg !683
  store ptr %45, ptr %47, align 4, !dbg !684
  %48 = load ptr, ptr %14, align 4, !dbg !685
  %49 = getelementptr inbounds %struct.k_mem_slab, ptr %48, i32 0, i32 4, !dbg !686
  %50 = getelementptr inbounds %struct.k_mem_slab_info, ptr %49, i32 0, i32 2, !dbg !687
  %51 = load i32, ptr %50, align 4, !dbg !688
  %52 = add i32 %51, 1, !dbg !688
  store i32 %52, ptr %50, align 4, !dbg !688
  store i32 0, ptr %17, align 4, !dbg !689
  br label %85, !dbg !690

53:                                               ; preds = %32
  %54 = getelementptr inbounds %struct.k_timeout_t, ptr %13, i32 0, i32 0, !dbg !691
  %55 = load i64, ptr %54, align 8, !dbg !691
  %56 = getelementptr inbounds %struct.k_timeout_t, ptr %18, i32 0, i32 0, !dbg !693
  store i64 0, ptr %56, align 8, !dbg !693
  %57 = icmp eq i64 %55, 0, !dbg !694
  br i1 %57, label %58, label %60, !dbg !695

58:                                               ; preds = %53
  %59 = load ptr, ptr %15, align 4, !dbg !696
  store ptr null, ptr %59, align 4, !dbg !698
  store i32 -6, ptr %17, align 4, !dbg !699
  br label %84, !dbg !700

60:                                               ; preds = %53
  br label %61, !dbg !701

61:                                               ; preds = %60
  br label %62, !dbg !703

62:                                               ; preds = %61
  %63 = load ptr, ptr %14, align 4, !dbg !705
  %64 = getelementptr inbounds %struct.k_mem_slab, ptr %63, i32 0, i32 1, !dbg !706
  %65 = load ptr, ptr %14, align 4, !dbg !707
  %66 = getelementptr inbounds %struct.k_mem_slab, ptr %65, i32 0, i32 0, !dbg !708
  %67 = getelementptr inbounds %struct.z_spinlock_key, ptr %16, i32 0, i32 0, !dbg !709
  %68 = load [1 x i32], ptr %67, align 4, !dbg !709
  %69 = getelementptr inbounds %struct.k_timeout_t, ptr %13, i32 0, i32 0, !dbg !709
  %70 = load [1 x i64], ptr %69, align 8, !dbg !709
  %71 = call i32 @z_pend_curr(ptr noundef %64, [1 x i32] %68, ptr noundef %66, [1 x i64] %70), !dbg !709
  store i32 %71, ptr %17, align 4, !dbg !710
  %72 = load i32, ptr %17, align 4, !dbg !711
  %73 = icmp eq i32 %72, 0, !dbg !713
  br i1 %73, label %74, label %80, !dbg !714

74:                                               ; preds = %62
  %75 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !715
  %76 = getelementptr inbounds %struct.k_thread, ptr %75, i32 0, i32 0, !dbg !717
  %77 = getelementptr inbounds %struct._thread_base, ptr %76, i32 0, i32 6, !dbg !718
  %78 = load ptr, ptr %77, align 4, !dbg !718
  %79 = load ptr, ptr %15, align 4, !dbg !719
  store ptr %78, ptr %79, align 4, !dbg !720
  br label %80, !dbg !721

80:                                               ; preds = %74, %62
  br label %81, !dbg !722

81:                                               ; preds = %80
  br label %82, !dbg !723

82:                                               ; preds = %81
  %83 = load i32, ptr %17, align 4, !dbg !725
  store i32 %83, ptr %12, align 4, !dbg !726
  br label %99, !dbg !726

84:                                               ; preds = %58
  br label %85

85:                                               ; preds = %84, %37
  br label %86, !dbg !727

86:                                               ; preds = %85
  br label %87, !dbg !728

87:                                               ; preds = %86
  %88 = load ptr, ptr %14, align 4, !dbg !730
  %89 = getelementptr inbounds %struct.k_mem_slab, ptr %88, i32 0, i32 1, !dbg !731
  %90 = getelementptr inbounds %struct.z_spinlock_key, ptr %16, i32 0, i32 0, !dbg !732
  %91 = load [1 x i32], ptr %90, align 4, !dbg !732
  store [1 x i32] %91, ptr %8, align 4
  store ptr %89, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !733, metadata !DIExpression()), !dbg !737
  call void @llvm.dbg.declare(metadata ptr %8, metadata !739, metadata !DIExpression()), !dbg !740
  %92 = load ptr, ptr %9, align 4, !dbg !741
  %93 = load i32, ptr %8, align 4, !dbg !742
  store i32 %93, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !743, metadata !DIExpression()), !dbg !747
  %94 = load i32, ptr %4, align 4, !dbg !749
  %95 = icmp ne i32 %94, 0, !dbg !751
  br i1 %95, label %96, label %97, !dbg !752

96:                                               ; preds = %87
  br label %arch_irq_unlock.exit, !dbg !753

97:                                               ; preds = %87
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #4, !dbg !755, !srcloc !756
  br label %arch_irq_unlock.exit, !dbg !757

arch_irq_unlock.exit:                             ; preds = %96, %97
  %98 = load i32, ptr %17, align 4, !dbg !758
  store i32 %98, ptr %12, align 4, !dbg !759
  br label %99, !dbg !759

99:                                               ; preds = %arch_irq_unlock.exit, %82
  %100 = load i32, ptr %12, align 4, !dbg !760
  ret i32 %100, !dbg !760
}

declare i32 @z_pend_curr(ptr noundef, [1 x i32], ptr noundef, [1 x i64]) #3

; Function Attrs: noinline nounwind optnone
define hidden void @k_mem_slab_free(ptr noundef %0, ptr noundef %1) #0 !dbg !761 {
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
  store ptr %0, ptr %16, align 4
  call void @llvm.dbg.declare(metadata ptr %16, metadata !764, metadata !DIExpression()), !dbg !765
  store ptr %1, ptr %17, align 4
  call void @llvm.dbg.declare(metadata ptr %17, metadata !766, metadata !DIExpression()), !dbg !767
  call void @llvm.dbg.declare(metadata ptr %18, metadata !768, metadata !DIExpression()), !dbg !769
  %20 = load ptr, ptr %16, align 4, !dbg !770
  %21 = getelementptr inbounds %struct.k_mem_slab, ptr %20, i32 0, i32 1, !dbg !771
  store ptr %21, ptr %15, align 4
  call void @llvm.dbg.declare(metadata ptr %15, metadata !627, metadata !DIExpression()), !dbg !772
  %22 = load ptr, ptr %15, align 4, !dbg !774
  call void @llvm.dbg.declare(metadata ptr %14, metadata !635, metadata !DIExpression()), !dbg !775
  call void @llvm.dbg.declare(metadata ptr %8, metadata !637, metadata !DIExpression()), !dbg !776
  %23 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #4, !dbg !778, !srcloc !645
  store i32 %23, ptr %8, align 4, !dbg !778
  %24 = load i32, ptr %8, align 4, !dbg !779
  store i32 %24, ptr %14, align 4, !dbg !780
  %25 = load ptr, ptr %15, align 4, !dbg !781
  store ptr %25, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !649, metadata !DIExpression()), !dbg !782
  %26 = load ptr, ptr %7, align 4, !dbg !784
  %27 = load ptr, ptr %15, align 4, !dbg !785
  store ptr %27, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !657, metadata !DIExpression()), !dbg !786
  %28 = load ptr, ptr %6, align 4, !dbg !788
  %29 = load i32, ptr %14, align 4, !dbg !789
  %30 = getelementptr inbounds %struct.z_spinlock_key, ptr %18, i32 0, i32 0, !dbg !790
  store i32 %29, ptr %30, align 4, !dbg !790
  br label %31, !dbg !791

31:                                               ; preds = %2
  br label %32, !dbg !792

32:                                               ; preds = %31
  %33 = load ptr, ptr %16, align 4, !dbg !794
  %34 = getelementptr inbounds %struct.k_mem_slab, ptr %33, i32 0, i32 3, !dbg !796
  %35 = load ptr, ptr %34, align 4, !dbg !796
  %36 = icmp eq ptr %35, null, !dbg !797
  br i1 %36, label %37, label %63, !dbg !798

37:                                               ; preds = %32
  call void @llvm.dbg.declare(metadata ptr %19, metadata !799, metadata !DIExpression()), !dbg !801
  %38 = load ptr, ptr %16, align 4, !dbg !802
  %39 = getelementptr inbounds %struct.k_mem_slab, ptr %38, i32 0, i32 0, !dbg !803
  %40 = call ptr @z_unpend_first_thread(ptr noundef %39), !dbg !804
  store ptr %40, ptr %19, align 4, !dbg !801
  %41 = load ptr, ptr %19, align 4, !dbg !805
  %42 = icmp ne ptr %41, null, !dbg !807
  br i1 %42, label %43, label %62, !dbg !808

43:                                               ; preds = %37
  br label %44, !dbg !809

44:                                               ; preds = %43
  br label %45, !dbg !811

45:                                               ; preds = %44
  %46 = load ptr, ptr %19, align 4, !dbg !813
  %47 = load ptr, ptr %17, align 4, !dbg !814
  store ptr %46, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !815, metadata !DIExpression()), !dbg !820
  store i32 0, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !822, metadata !DIExpression()), !dbg !823
  store ptr %47, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !824, metadata !DIExpression()), !dbg !825
  %48 = load ptr, ptr %9, align 4, !dbg !826
  %49 = load i32, ptr %10, align 4, !dbg !827
  store ptr %48, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !828, metadata !DIExpression()), !dbg !833
  store i32 %49, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !835, metadata !DIExpression()), !dbg !836
  %50 = load i32, ptr %4, align 4, !dbg !837
  %51 = load ptr, ptr %3, align 4, !dbg !838
  %52 = getelementptr inbounds %struct.k_thread, ptr %51, i32 0, i32 6, !dbg !839
  %53 = getelementptr inbounds %struct._thread_arch, ptr %52, i32 0, i32 1, !dbg !840
  store i32 %50, ptr %53, align 4, !dbg !841
  %54 = load ptr, ptr %11, align 4, !dbg !842
  %55 = load ptr, ptr %9, align 4, !dbg !843
  %56 = getelementptr inbounds %struct._thread_base, ptr %55, i32 0, i32 6, !dbg !844
  store ptr %54, ptr %56, align 4, !dbg !845
  %57 = load ptr, ptr %19, align 4, !dbg !846
  call void @z_ready_thread(ptr noundef %57), !dbg !847
  %58 = load ptr, ptr %16, align 4, !dbg !848
  %59 = getelementptr inbounds %struct.k_mem_slab, ptr %58, i32 0, i32 1, !dbg !849
  %60 = getelementptr inbounds %struct.z_spinlock_key, ptr %18, i32 0, i32 0, !dbg !850
  %61 = load [1 x i32], ptr %60, align 4, !dbg !850
  call void @z_reschedule(ptr noundef %59, [1 x i32] %61), !dbg !850
  br label %88, !dbg !851

62:                                               ; preds = %37
  br label %63, !dbg !852

63:                                               ; preds = %62, %32
  %64 = load ptr, ptr %16, align 4, !dbg !853
  %65 = getelementptr inbounds %struct.k_mem_slab, ptr %64, i32 0, i32 3, !dbg !854
  %66 = load ptr, ptr %65, align 4, !dbg !854
  %67 = load ptr, ptr %17, align 4, !dbg !855
  store ptr %66, ptr %67, align 4, !dbg !856
  %68 = load ptr, ptr %17, align 4, !dbg !857
  %69 = load ptr, ptr %16, align 4, !dbg !858
  %70 = getelementptr inbounds %struct.k_mem_slab, ptr %69, i32 0, i32 3, !dbg !859
  store ptr %68, ptr %70, align 4, !dbg !860
  %71 = load ptr, ptr %16, align 4, !dbg !861
  %72 = getelementptr inbounds %struct.k_mem_slab, ptr %71, i32 0, i32 4, !dbg !862
  %73 = getelementptr inbounds %struct.k_mem_slab_info, ptr %72, i32 0, i32 2, !dbg !863
  %74 = load i32, ptr %73, align 4, !dbg !864
  %75 = add i32 %74, -1, !dbg !864
  store i32 %75, ptr %73, align 4, !dbg !864
  br label %76, !dbg !865

76:                                               ; preds = %63
  br label %77, !dbg !866

77:                                               ; preds = %76
  %78 = load ptr, ptr %16, align 4, !dbg !868
  %79 = getelementptr inbounds %struct.k_mem_slab, ptr %78, i32 0, i32 1, !dbg !869
  %80 = getelementptr inbounds %struct.z_spinlock_key, ptr %18, i32 0, i32 0, !dbg !870
  %81 = load [1 x i32], ptr %80, align 4, !dbg !870
  store [1 x i32] %81, ptr %12, align 4
  store ptr %79, ptr %13, align 4
  call void @llvm.dbg.declare(metadata ptr %13, metadata !733, metadata !DIExpression()), !dbg !871
  call void @llvm.dbg.declare(metadata ptr %12, metadata !739, metadata !DIExpression()), !dbg !873
  %82 = load ptr, ptr %13, align 4, !dbg !874
  %83 = load i32, ptr %12, align 4, !dbg !875
  store i32 %83, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !743, metadata !DIExpression()), !dbg !876
  %84 = load i32, ptr %5, align 4, !dbg !878
  %85 = icmp ne i32 %84, 0, !dbg !879
  br i1 %85, label %86, label %87, !dbg !880

86:                                               ; preds = %77
  br label %arch_irq_unlock.exit, !dbg !881

87:                                               ; preds = %77
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #4, !dbg !882, !srcloc !756
  br label %arch_irq_unlock.exit, !dbg !883

arch_irq_unlock.exit:                             ; preds = %86, %87
  br label %88, !dbg !884

88:                                               ; preds = %arch_irq_unlock.exit, %45
  ret void, !dbg !884
}

declare ptr @z_unpend_first_thread(ptr noundef) #3

declare void @z_ready_thread(ptr noundef) #3

declare void @z_reschedule(ptr noundef, [1 x i32]) #3

; Function Attrs: noinline nounwind optnone
define hidden i32 @k_mem_slab_runtime_stats_get(ptr noundef %0, ptr noundef %1) #0 !dbg !885 {
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
  call void @llvm.dbg.declare(metadata ptr %12, metadata !895, metadata !DIExpression()), !dbg !896
  store ptr %1, ptr %13, align 4
  call void @llvm.dbg.declare(metadata ptr %13, metadata !897, metadata !DIExpression()), !dbg !898
  %15 = load ptr, ptr %12, align 4, !dbg !899
  %16 = icmp eq ptr %15, null, !dbg !901
  br i1 %16, label %20, label %17, !dbg !902

17:                                               ; preds = %2
  %18 = load ptr, ptr %13, align 4, !dbg !903
  %19 = icmp eq ptr %18, null, !dbg !904
  br i1 %19, label %20, label %21, !dbg !905

20:                                               ; preds = %17, %2
  store i32 -5, ptr %11, align 4, !dbg !906
  br label %72, !dbg !906

21:                                               ; preds = %17
  call void @llvm.dbg.declare(metadata ptr %14, metadata !908, metadata !DIExpression()), !dbg !909
  %22 = load ptr, ptr %12, align 4, !dbg !910
  %23 = getelementptr inbounds %struct.k_mem_slab, ptr %22, i32 0, i32 1, !dbg !911
  store ptr %23, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !627, metadata !DIExpression()), !dbg !912
  %24 = load ptr, ptr %10, align 4, !dbg !914
  call void @llvm.dbg.declare(metadata ptr %9, metadata !635, metadata !DIExpression()), !dbg !915
  call void @llvm.dbg.declare(metadata ptr %6, metadata !637, metadata !DIExpression()), !dbg !916
  %25 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #4, !dbg !918, !srcloc !645
  store i32 %25, ptr %6, align 4, !dbg !918
  %26 = load i32, ptr %6, align 4, !dbg !919
  store i32 %26, ptr %9, align 4, !dbg !920
  %27 = load ptr, ptr %10, align 4, !dbg !921
  store ptr %27, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !649, metadata !DIExpression()), !dbg !922
  %28 = load ptr, ptr %5, align 4, !dbg !924
  %29 = load ptr, ptr %10, align 4, !dbg !925
  store ptr %29, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !657, metadata !DIExpression()), !dbg !926
  %30 = load ptr, ptr %4, align 4, !dbg !928
  %31 = load i32, ptr %9, align 4, !dbg !929
  %32 = getelementptr inbounds %struct.z_spinlock_key, ptr %14, i32 0, i32 0, !dbg !930
  store i32 %31, ptr %32, align 4, !dbg !930
  %33 = load ptr, ptr %12, align 4, !dbg !931
  %34 = getelementptr inbounds %struct.k_mem_slab, ptr %33, i32 0, i32 4, !dbg !932
  %35 = getelementptr inbounds %struct.k_mem_slab_info, ptr %34, i32 0, i32 2, !dbg !933
  %36 = load i32, ptr %35, align 4, !dbg !933
  %37 = load ptr, ptr %12, align 4, !dbg !934
  %38 = getelementptr inbounds %struct.k_mem_slab, ptr %37, i32 0, i32 4, !dbg !935
  %39 = getelementptr inbounds %struct.k_mem_slab_info, ptr %38, i32 0, i32 1, !dbg !936
  %40 = load i32, ptr %39, align 4, !dbg !936
  %41 = mul i32 %36, %40, !dbg !937
  %42 = load ptr, ptr %13, align 4, !dbg !938
  %43 = getelementptr inbounds %struct.sys_memory_stats, ptr %42, i32 0, i32 1, !dbg !939
  store i32 %41, ptr %43, align 4, !dbg !940
  %44 = load ptr, ptr %12, align 4, !dbg !941
  %45 = getelementptr inbounds %struct.k_mem_slab, ptr %44, i32 0, i32 4, !dbg !942
  %46 = getelementptr inbounds %struct.k_mem_slab_info, ptr %45, i32 0, i32 0, !dbg !943
  %47 = load i32, ptr %46, align 4, !dbg !943
  %48 = load ptr, ptr %12, align 4, !dbg !944
  %49 = getelementptr inbounds %struct.k_mem_slab, ptr %48, i32 0, i32 4, !dbg !945
  %50 = getelementptr inbounds %struct.k_mem_slab_info, ptr %49, i32 0, i32 2, !dbg !946
  %51 = load i32, ptr %50, align 4, !dbg !946
  %52 = sub i32 %47, %51, !dbg !947
  %53 = load ptr, ptr %12, align 4, !dbg !948
  %54 = getelementptr inbounds %struct.k_mem_slab, ptr %53, i32 0, i32 4, !dbg !949
  %55 = getelementptr inbounds %struct.k_mem_slab_info, ptr %54, i32 0, i32 1, !dbg !950
  %56 = load i32, ptr %55, align 4, !dbg !950
  %57 = mul i32 %52, %56, !dbg !951
  %58 = load ptr, ptr %13, align 4, !dbg !952
  %59 = getelementptr inbounds %struct.sys_memory_stats, ptr %58, i32 0, i32 0, !dbg !953
  store i32 %57, ptr %59, align 4, !dbg !954
  %60 = load ptr, ptr %13, align 4, !dbg !955
  %61 = getelementptr inbounds %struct.sys_memory_stats, ptr %60, i32 0, i32 2, !dbg !956
  store i32 0, ptr %61, align 4, !dbg !957
  %62 = load ptr, ptr %12, align 4, !dbg !958
  %63 = getelementptr inbounds %struct.k_mem_slab, ptr %62, i32 0, i32 1, !dbg !959
  %64 = getelementptr inbounds %struct.z_spinlock_key, ptr %14, i32 0, i32 0, !dbg !960
  %65 = load [1 x i32], ptr %64, align 4, !dbg !960
  store [1 x i32] %65, ptr %7, align 4
  store ptr %63, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !733, metadata !DIExpression()), !dbg !961
  call void @llvm.dbg.declare(metadata ptr %7, metadata !739, metadata !DIExpression()), !dbg !963
  %66 = load ptr, ptr %8, align 4, !dbg !964
  %67 = load i32, ptr %7, align 4, !dbg !965
  store i32 %67, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !743, metadata !DIExpression()), !dbg !966
  %68 = load i32, ptr %3, align 4, !dbg !968
  %69 = icmp ne i32 %68, 0, !dbg !969
  br i1 %69, label %70, label %71, !dbg !970

70:                                               ; preds = %21
  br label %arch_irq_unlock.exit, !dbg !971

71:                                               ; preds = %21
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #4, !dbg !972, !srcloc !756
  br label %arch_irq_unlock.exit, !dbg !973

arch_irq_unlock.exit:                             ; preds = %70, %71
  store i32 0, ptr %11, align 4, !dbg !974
  br label %72, !dbg !974

72:                                               ; preds = %arch_irq_unlock.exit, %20
  %73 = load i32, ptr %11, align 4, !dbg !975
  ret i32 %73, !dbg !975
}

declare i64 @z_timeout_expires(ptr noundef) #3

declare i64 @z_timeout_remaining(ptr noundef) #3

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @sys_sflist_is_empty(ptr noundef %0) #0 !dbg !976 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !981, metadata !DIExpression()), !dbg !982
  %3 = load ptr, ptr %2, align 4, !dbg !983
  %4 = call ptr @sys_sflist_peek_head(ptr noundef %3), !dbg !984
  %5 = icmp eq ptr %4, null, !dbg !985
  ret i1 %5, !dbg !986
}

; Function Attrs: noinline nounwind optnone
define internal ptr @sys_sflist_peek_head(ptr noundef %0) #0 !dbg !987 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !990, metadata !DIExpression()), !dbg !991
  %3 = load ptr, ptr %2, align 4, !dbg !992
  %4 = getelementptr inbounds %struct._sflist, ptr %3, i32 0, i32 0, !dbg !993
  %5 = load ptr, ptr %4, align 4, !dbg !993
  ret ptr %5, !dbg !994
}

; Function Attrs: noinline nounwind optnone
define internal void @sys_dlist_init(ptr noundef %0) #0 !dbg !995 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !999, metadata !DIExpression()), !dbg !1000
  %3 = load ptr, ptr %2, align 4, !dbg !1001
  %4 = load ptr, ptr %2, align 4, !dbg !1002
  %5 = getelementptr inbounds %struct._dnode, ptr %4, i32 0, i32 0, !dbg !1003
  store ptr %3, ptr %5, align 4, !dbg !1004
  %6 = load ptr, ptr %2, align 4, !dbg !1005
  %7 = load ptr, ptr %2, align 4, !dbg !1006
  %8 = getelementptr inbounds %struct._dnode, ptr %7, i32 0, i32 1, !dbg !1007
  store ptr %6, ptr %8, align 4, !dbg !1008
  ret void, !dbg !1009
}

attributes #0 = { noinline nounwind optnone "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!134, !135, !136, !137, !138, !139, !140, !141}
!llvm.ident = !{!142}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__init_init_mem_slab_obj_core_list", scope: !2, file: !114, line: 169, type: !115, isLocal: true, isDefinition: true, align: 32)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !88, globals: !113, splitDebugInlining: false, nameTableKind: None)
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
!140 = !{i32 8, !"PIC Level", i32 2}
!141 = !{i32 7, !"PIE Level", i32 2}
!142 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
!143 = distinct !DISubprogram(name: "z_impl_k_object_access_grant", scope: !6, file: !6, line: 223, type: !144, scopeLine: 225, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !244)
!144 = !DISubroutineType(types: !145)
!145 = !{null, !146, !148}
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 32)
!147 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 32)
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_thread", file: !150, line: 250, size: 896, elements: !151)
!150 = !DIFile(filename: "include/zephyr/kernel/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!151 = !{!152, !208, !221, !222, !223, !224, !245}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !149, file: !150, line: 252, baseType: !153, size: 384)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_base", file: !150, line: 58, size: 384, elements: !154)
!154 = !{!155, !168, !176, !178, !179, !192, !194, !195}
!155 = !DIDerivedType(tag: DW_TAG_member, scope: !153, file: !150, line: 61, baseType: !156, size: 64)
!156 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !153, file: !150, line: 61, size: 64, elements: !157)
!157 = !{!158, !159}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_dlist", scope: !156, file: !150, line: 62, baseType: !98, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_rb", scope: !156, file: !150, line: 63, baseType: !160, size: 64)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rbnode", file: !161, line: 58, size: 64, elements: !162)
!161 = !DIFile(filename: "include/zephyr/sys/rb.h", directory: "/home/sri/zephyrproject/zephyr")
!162 = !{!163}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !160, file: !161, line: 60, baseType: !164, size: 64)
!164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 64, elements: !166)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 32)
!166 = !{!167}
!167 = !DISubrange(count: 2)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "pended_on", scope: !153, file: !150, line: 69, baseType: !169, size: 32, offset: 64)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 32)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "_wait_q_t", file: !171, line: 243, baseType: !172)
!171 = !DIFile(filename: "include/zephyr/kernel_structs.h", directory: "/home/sri/zephyrproject/zephyr")
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !171, line: 241, size: 64, elements: !173)
!173 = !{!174}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !172, file: !171, line: 242, baseType: !175, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dlist_t", file: !99, line: 51, baseType: !100)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "user_options", scope: !153, file: !150, line: 72, baseType: !177, size: 8, offset: 96)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !95, line: 62, baseType: !7)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "thread_state", scope: !153, file: !150, line: 75, baseType: !177, size: 8, offset: 104)
!179 = !DIDerivedType(tag: DW_TAG_member, scope: !153, file: !150, line: 91, baseType: !180, size: 16, offset: 112)
!180 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !153, file: !150, line: 91, size: 16, elements: !181)
!181 = !{!182, !189}
!182 = !DIDerivedType(tag: DW_TAG_member, scope: !180, file: !150, line: 92, baseType: !183, size: 16)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !180, file: !150, line: 92, size: 16, elements: !184)
!184 = !{!185, !188}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !183, file: !150, line: 97, baseType: !186, size: 8)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !95, line: 56, baseType: !187)
!187 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "sched_locked", scope: !183, file: !150, line: 98, baseType: !177, size: 8, offset: 8)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "preempt", scope: !180, file: !150, line: 101, baseType: !190, size: 16)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !95, line: 63, baseType: !191)
!191 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "order_key", scope: !153, file: !150, line: 108, baseType: !193, size: 32, offset: 128)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !95, line: 64, baseType: !96)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "swap_data", scope: !153, file: !150, line: 132, baseType: !92, size: 32, offset: 160)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !153, file: !150, line: 136, baseType: !196, size: 192, offset: 192)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_timeout", file: !171, line: 254, size: 192, elements: !197)
!197 = !{!198, !199, !205}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !196, file: !171, line: 255, baseType: !98, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !196, file: !171, line: 256, baseType: !200, size: 32, offset: 64)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "_timeout_func_t", file: !171, line: 252, baseType: !201)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 32)
!202 = !DISubroutineType(types: !203)
!203 = !{null, !204}
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 32)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "dticks", scope: !196, file: !171, line: 259, baseType: !206, size: 64, offset: 128)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !95, line: 59, baseType: !207)
!207 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "callee_saved", scope: !149, file: !150, line: 255, baseType: !209, size: 288, offset: 384)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_callee_saved", file: !210, line: 25, size: 288, elements: !211)
!210 = !DIFile(filename: "include/zephyr/arch/arm/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!211 = !{!212, !213, !214, !215, !216, !217, !218, !219, !220}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "v1", scope: !209, file: !210, line: 26, baseType: !193, size: 32)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "v2", scope: !209, file: !210, line: 27, baseType: !193, size: 32, offset: 32)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "v3", scope: !209, file: !210, line: 28, baseType: !193, size: 32, offset: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "v4", scope: !209, file: !210, line: 29, baseType: !193, size: 32, offset: 96)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "v5", scope: !209, file: !210, line: 30, baseType: !193, size: 32, offset: 128)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "v6", scope: !209, file: !210, line: 31, baseType: !193, size: 32, offset: 160)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "v7", scope: !209, file: !210, line: 32, baseType: !193, size: 32, offset: 192)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "v8", scope: !209, file: !210, line: 33, baseType: !193, size: 32, offset: 224)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "psp", scope: !209, file: !210, line: 34, baseType: !193, size: 32, offset: 256)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "init_data", scope: !149, file: !150, line: 258, baseType: !92, size: 32, offset: 672)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "join_queue", scope: !149, file: !150, line: 261, baseType: !170, size: 64, offset: 704)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "errno_var", scope: !149, file: !150, line: 302, baseType: !93, size: 32, offset: 768)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "resource_pool", scope: !149, file: !150, line: 333, baseType: !225, size: 32, offset: 800)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 32)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_heap", file: !227, line: 5291, size: 160, elements: !228)
!227 = !DIFile(filename: "include/zephyr/kernel.h", directory: "/home/sri/zephyrproject/zephyr")
!228 = !{!229, !240, !241}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !226, file: !227, line: 5292, baseType: !230, size: 96)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sys_heap", file: !231, line: 56, size: 96, elements: !232)
!231 = !DIFile(filename: "include/zephyr/sys/sys_heap.h", directory: "/home/sri/zephyrproject/zephyr")
!232 = !{!233, !236, !237}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !230, file: !231, line: 57, baseType: !234, size: 32)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 32)
!235 = !DICompositeType(tag: DW_TAG_structure_type, name: "z_heap", file: !231, line: 57, flags: DIFlagFwdDecl)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "init_mem", scope: !230, file: !231, line: 58, baseType: !92, size: 32, offset: 32)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "init_bytes", scope: !230, file: !231, line: 59, baseType: !238, size: 32, offset: 64)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !239, line: 46, baseType: !96)
!239 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/lib/clang/17/include/stddef.h", directory: "")
!240 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !226, file: !227, line: 5293, baseType: !170, size: 64, offset: 96)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !226, file: !227, line: 5294, baseType: !242, offset: 160)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_spinlock", file: !243, line: 45, elements: !244)
!243 = !DIFile(filename: "include/zephyr/spinlock.h", directory: "/home/sri/zephyrproject/zephyr")
!244 = !{}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !149, file: !150, line: 355, baseType: !246, size: 64, offset: 832)
!246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_arch", file: !210, line: 60, size: 64, elements: !247)
!247 = !{!248, !249}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "basepri", scope: !246, file: !210, line: 63, baseType: !193, size: 32)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "swap_return_value", scope: !246, file: !210, line: 66, baseType: !193, size: 32, offset: 32)
!250 = !DILocalVariable(name: "object", arg: 1, scope: !143, file: !6, line: 223, type: !146)
!251 = !DILocation(line: 223, column: 61, scope: !143)
!252 = !DILocalVariable(name: "thread", arg: 2, scope: !143, file: !6, line: 224, type: !148)
!253 = !DILocation(line: 224, column: 24, scope: !143)
!254 = !DILocation(line: 226, column: 9, scope: !143)
!255 = !DILocation(line: 227, column: 9, scope: !143)
!256 = !DILocation(line: 228, column: 1, scope: !143)
!257 = distinct !DISubprogram(name: "z_impl_k_object_release", scope: !6, file: !6, line: 243, type: !258, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !244)
!258 = !DISubroutineType(types: !259)
!259 = !{null, !146}
!260 = !DILocalVariable(name: "object", arg: 1, scope: !257, file: !6, line: 243, type: !146)
!261 = !DILocation(line: 243, column: 56, scope: !257)
!262 = !DILocation(line: 245, column: 9, scope: !257)
!263 = !DILocation(line: 246, column: 1, scope: !257)
!264 = distinct !DISubprogram(name: "z_impl_k_object_alloc", scope: !6, file: !6, line: 359, type: !265, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !244)
!265 = !DISubroutineType(types: !266)
!266 = !{!92, !5}
!267 = !DILocalVariable(name: "otype", arg: 1, scope: !264, file: !6, line: 359, type: !5)
!268 = !DILocation(line: 359, column: 58, scope: !264)
!269 = !DILocation(line: 361, column: 9, scope: !264)
!270 = !DILocation(line: 363, column: 2, scope: !264)
!271 = distinct !DISubprogram(name: "z_impl_k_object_alloc_size", scope: !6, file: !6, line: 366, type: !272, scopeLine: 368, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !244)
!272 = !DISubroutineType(types: !273)
!273 = !{!92, !5, !238}
!274 = !DILocalVariable(name: "otype", arg: 1, scope: !271, file: !6, line: 366, type: !5)
!275 = !DILocation(line: 366, column: 63, scope: !271)
!276 = !DILocalVariable(name: "size", arg: 2, scope: !271, file: !6, line: 367, type: !238)
!277 = !DILocation(line: 367, column: 13, scope: !271)
!278 = !DILocation(line: 369, column: 9, scope: !271)
!279 = !DILocation(line: 370, column: 9, scope: !271)
!280 = !DILocation(line: 372, column: 2, scope: !271)
!281 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_expires_ticks", scope: !227, file: !227, line: 656, type: !282, scopeLine: 658, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !244)
!282 = !DISubroutineType(types: !283)
!283 = !{!284, !286}
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_ticks_t", file: !285, line: 46, baseType: !206)
!285 = !DIFile(filename: "include/zephyr/sys_clock.h", directory: "/home/sri/zephyrproject/zephyr")
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 32)
!287 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !149)
!288 = !DILocalVariable(name: "t", arg: 1, scope: !281, file: !227, line: 657, type: !286)
!289 = !DILocation(line: 657, column: 30, scope: !281)
!290 = !DILocation(line: 659, column: 28, scope: !281)
!291 = !DILocation(line: 659, column: 31, scope: !281)
!292 = !DILocation(line: 659, column: 36, scope: !281)
!293 = !DILocation(line: 659, column: 9, scope: !281)
!294 = !DILocation(line: 659, column: 2, scope: !281)
!295 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_remaining_ticks", scope: !227, file: !227, line: 671, type: !282, scopeLine: 673, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !244)
!296 = !DILocalVariable(name: "t", arg: 1, scope: !295, file: !227, line: 672, type: !286)
!297 = !DILocation(line: 672, column: 30, scope: !295)
!298 = !DILocation(line: 674, column: 30, scope: !295)
!299 = !DILocation(line: 674, column: 33, scope: !295)
!300 = !DILocation(line: 674, column: 38, scope: !295)
!301 = !DILocation(line: 674, column: 9, scope: !295)
!302 = !DILocation(line: 674, column: 2, scope: !295)
!303 = distinct !DISubprogram(name: "z_impl_k_timer_expires_ticks", scope: !227, file: !227, line: 1634, type: !304, scopeLine: 1636, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !244)
!304 = !DISubroutineType(types: !305)
!305 = !{!284, !306}
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 32)
!307 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !308)
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_timer", file: !227, line: 1439, size: 448, elements: !309)
!309 = !{!310, !311, !312, !317, !318, !323, !324}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !308, file: !227, line: 1445, baseType: !196, size: 192)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !308, file: !227, line: 1448, baseType: !170, size: 64, offset: 192)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_fn", scope: !308, file: !227, line: 1451, baseType: !313, size: 32, offset: 256)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 32)
!314 = !DISubroutineType(types: !315)
!315 = !{null, !316}
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 32)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "stop_fn", scope: !308, file: !227, line: 1454, baseType: !313, size: 32, offset: 288)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !308, file: !227, line: 1457, baseType: !319, size: 64, offset: 320)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_timeout_t", file: !285, line: 67, baseType: !320)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !285, line: 65, size: 64, elements: !321)
!321 = !{!322}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "ticks", scope: !320, file: !285, line: 66, baseType: !284, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !308, file: !227, line: 1460, baseType: !193, size: 32, offset: 384)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !308, file: !227, line: 1463, baseType: !92, size: 32, offset: 416)
!325 = !DILocalVariable(name: "timer", arg: 1, scope: !303, file: !227, line: 1635, type: !306)
!326 = !DILocation(line: 1635, column: 34, scope: !303)
!327 = !DILocation(line: 1637, column: 28, scope: !303)
!328 = !DILocation(line: 1637, column: 35, scope: !303)
!329 = !DILocation(line: 1637, column: 9, scope: !303)
!330 = !DILocation(line: 1637, column: 2, scope: !303)
!331 = distinct !DISubprogram(name: "z_impl_k_timer_remaining_ticks", scope: !227, file: !227, line: 1649, type: !304, scopeLine: 1651, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !244)
!332 = !DILocalVariable(name: "timer", arg: 1, scope: !331, file: !227, line: 1650, type: !306)
!333 = !DILocation(line: 1650, column: 34, scope: !331)
!334 = !DILocation(line: 1652, column: 30, scope: !331)
!335 = !DILocation(line: 1652, column: 37, scope: !331)
!336 = !DILocation(line: 1652, column: 9, scope: !331)
!337 = !DILocation(line: 1652, column: 2, scope: !331)
!338 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_set", scope: !227, file: !227, line: 1689, type: !339, scopeLine: 1691, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !244)
!339 = !DISubroutineType(types: !340)
!340 = !{null, !316, !92}
!341 = !DILocalVariable(name: "timer", arg: 1, scope: !338, file: !227, line: 1689, type: !316)
!342 = !DILocation(line: 1689, column: 65, scope: !338)
!343 = !DILocalVariable(name: "user_data", arg: 2, scope: !338, file: !227, line: 1690, type: !92)
!344 = !DILocation(line: 1690, column: 19, scope: !338)
!345 = !DILocation(line: 1692, column: 21, scope: !338)
!346 = !DILocation(line: 1692, column: 2, scope: !338)
!347 = !DILocation(line: 1692, column: 9, scope: !338)
!348 = !DILocation(line: 1692, column: 19, scope: !338)
!349 = !DILocation(line: 1693, column: 1, scope: !338)
!350 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_get", scope: !227, file: !227, line: 1704, type: !351, scopeLine: 1705, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !244)
!351 = !DISubroutineType(types: !352)
!352 = !{!92, !306}
!353 = !DILocalVariable(name: "timer", arg: 1, scope: !350, file: !227, line: 1704, type: !306)
!354 = !DILocation(line: 1704, column: 72, scope: !350)
!355 = !DILocation(line: 1706, column: 9, scope: !350)
!356 = !DILocation(line: 1706, column: 16, scope: !350)
!357 = !DILocation(line: 1706, column: 2, scope: !350)
!358 = distinct !DISubprogram(name: "z_impl_k_queue_is_empty", scope: !227, file: !227, line: 2071, type: !359, scopeLine: 2072, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !244)
!359 = !DISubroutineType(types: !360)
!360 = !{!93, !361}
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 32)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_queue", file: !227, line: 1830, size: 128, elements: !363)
!363 = !{!364, !377, !378}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "data_q", scope: !362, file: !227, line: 1831, baseType: !365, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sflist_t", file: !366, line: 60, baseType: !367)
!366 = !DIFile(filename: "include/zephyr/sys/sflist.h", directory: "/home/sri/zephyrproject/zephyr")
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sflist", file: !366, line: 53, size: 64, elements: !368)
!368 = !{!369, !376}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !367, file: !366, line: 54, baseType: !370, size: 32)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 32)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sfnode_t", file: !366, line: 50, baseType: !372)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sfnode", file: !366, line: 44, size: 32, elements: !373)
!373 = !{!374}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "next_and_flags", scope: !372, file: !366, line: 45, baseType: !375, size: 32)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "unative_t", file: !366, line: 40, baseType: !193)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !367, file: !366, line: 55, baseType: !370, size: 32, offset: 32)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !362, file: !227, line: 1832, baseType: !242, offset: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !362, file: !227, line: 1833, baseType: !170, size: 64, offset: 64)
!379 = !DILocalVariable(name: "queue", arg: 1, scope: !358, file: !227, line: 2071, type: !361)
!380 = !DILocation(line: 2071, column: 59, scope: !358)
!381 = !DILocation(line: 2073, column: 35, scope: !358)
!382 = !DILocation(line: 2073, column: 42, scope: !358)
!383 = !DILocation(line: 2073, column: 14, scope: !358)
!384 = !DILocation(line: 2073, column: 9, scope: !358)
!385 = !DILocation(line: 2073, column: 2, scope: !358)
!386 = distinct !DISubprogram(name: "z_impl_k_sem_count_get", scope: !227, file: !227, line: 3209, type: !387, scopeLine: 3210, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !244)
!387 = !DISubroutineType(types: !388)
!388 = !{!96, !389}
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 32)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sem", file: !227, line: 3092, size: 128, elements: !391)
!391 = !{!392, !393, !394}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !390, file: !227, line: 3093, baseType: !170, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !390, file: !227, line: 3094, baseType: !96, size: 32, offset: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !390, file: !227, line: 3095, baseType: !96, size: 32, offset: 96)
!395 = !DILocalVariable(name: "sem", arg: 1, scope: !386, file: !227, line: 3209, type: !389)
!396 = !DILocation(line: 3209, column: 65, scope: !386)
!397 = !DILocation(line: 3211, column: 9, scope: !386)
!398 = !DILocation(line: 3211, column: 14, scope: !386)
!399 = !DILocation(line: 3211, column: 2, scope: !386)
!400 = distinct !DISubprogram(name: "z_impl_k_msgq_num_free_get", scope: !227, file: !227, line: 4649, type: !401, scopeLine: 4650, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !244)
!401 = !DISubroutineType(types: !402)
!402 = !{!193, !403}
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 32)
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_msgq", file: !227, line: 4390, size: 320, elements: !405)
!405 = !{!406, !407, !408, !409, !410, !411, !412, !413, !414, !415}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !404, file: !227, line: 4392, baseType: !170, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !404, file: !227, line: 4394, baseType: !242, offset: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "msg_size", scope: !404, file: !227, line: 4396, baseType: !238, size: 32, offset: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !404, file: !227, line: 4398, baseType: !193, size: 32, offset: 96)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_start", scope: !404, file: !227, line: 4400, baseType: !90, size: 32, offset: 128)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_end", scope: !404, file: !227, line: 4402, baseType: !90, size: 32, offset: 160)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "read_ptr", scope: !404, file: !227, line: 4404, baseType: !90, size: 32, offset: 192)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "write_ptr", scope: !404, file: !227, line: 4406, baseType: !90, size: 32, offset: 224)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "used_msgs", scope: !404, file: !227, line: 4408, baseType: !193, size: 32, offset: 256)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !404, file: !227, line: 4413, baseType: !177, size: 8, offset: 288)
!416 = !DILocalVariable(name: "msgq", arg: 1, scope: !400, file: !227, line: 4649, type: !403)
!417 = !DILocation(line: 4649, column: 66, scope: !400)
!418 = !DILocation(line: 4651, column: 9, scope: !400)
!419 = !DILocation(line: 4651, column: 15, scope: !400)
!420 = !DILocation(line: 4651, column: 26, scope: !400)
!421 = !DILocation(line: 4651, column: 32, scope: !400)
!422 = !DILocation(line: 4651, column: 24, scope: !400)
!423 = !DILocation(line: 4651, column: 2, scope: !400)
!424 = distinct !DISubprogram(name: "z_impl_k_msgq_num_used_get", scope: !227, file: !227, line: 4665, type: !401, scopeLine: 4666, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !244)
!425 = !DILocalVariable(name: "msgq", arg: 1, scope: !424, file: !227, line: 4665, type: !403)
!426 = !DILocation(line: 4665, column: 66, scope: !424)
!427 = !DILocation(line: 4667, column: 9, scope: !424)
!428 = !DILocation(line: 4667, column: 15, scope: !424)
!429 = !DILocation(line: 4667, column: 2, scope: !424)
!430 = distinct !DISubprogram(name: "init_mem_slab_obj_core_list", scope: !114, file: !114, line: 133, type: !124, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !244)
!431 = !DILocalVariable(name: "rc", scope: !430, file: !114, line: 135, type: !93)
!432 = !DILocation(line: 135, column: 6, scope: !430)
!433 = !DILocalVariable(name: "slab", scope: !434, file: !114, line: 149, type: !435)
!434 = distinct !DILexicalBlock(scope: !430, file: !114, line: 149, column: 102)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 32)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_mem_slab", file: !227, line: 5057, size: 224, elements: !437)
!437 = !{!438, !439, !440, !441, !442}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !436, file: !227, line: 5058, baseType: !170, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !436, file: !227, line: 5059, baseType: !242, offset: 64)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !436, file: !227, line: 5060, baseType: !90, size: 32, offset: 64)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "free_list", scope: !436, file: !227, line: 5061, baseType: !90, size: 32, offset: 96)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !436, file: !227, line: 5062, baseType: !443, size: 96, offset: 128)
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_mem_slab_info", file: !227, line: 5048, size: 96, elements: !444)
!444 = !{!445, !446, !447}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "num_blocks", scope: !443, file: !227, line: 5049, baseType: !193, size: 32)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "block_size", scope: !443, file: !227, line: 5050, baseType: !238, size: 32, offset: 32)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "num_used", scope: !443, file: !227, line: 5051, baseType: !193, size: 32, offset: 64)
!448 = !DILocation(line: 149, column: 127, scope: !434)
!449 = !DILocation(line: 149, column: 107, scope: !434)
!450 = !DILocation(line: 149, column: 166, scope: !451)
!451 = distinct !DILexicalBlock(scope: !452, file: !114, line: 149, column: 159)
!452 = distinct !DILexicalBlock(scope: !434, file: !114, line: 149, column: 102)
!453 = !DILocation(line: 149, column: 171, scope: !451)
!454 = !DILocation(line: 149, column: 163, scope: !455)
!455 = distinct !DILexicalBlock(scope: !451, file: !114, line: 149, column: 161)
!456 = !DILocation(line: 149, column: 195, scope: !451)
!457 = !DILocation(line: 149, column: 102, scope: !434)
!458 = !DILocation(line: 150, column: 25, scope: !459)
!459 = distinct !DILexicalBlock(scope: !452, file: !114, line: 149, column: 207)
!460 = !DILocation(line: 150, column: 8, scope: !459)
!461 = !DILocation(line: 150, column: 6, scope: !459)
!462 = !DILocation(line: 151, column: 7, scope: !463)
!463 = distinct !DILexicalBlock(scope: !459, file: !114, line: 151, column: 7)
!464 = !DILocation(line: 151, column: 10, scope: !463)
!465 = !DILocation(line: 151, column: 7, scope: !459)
!466 = !DILocation(line: 152, column: 4, scope: !467)
!467 = distinct !DILexicalBlock(scope: !463, file: !114, line: 151, column: 15)
!468 = !DILocation(line: 154, column: 17, scope: !459)
!469 = !DILocation(line: 154, column: 3, scope: !459)
!470 = !DILocation(line: 163, column: 2, scope: !459)
!471 = !DILocation(line: 149, column: 203, scope: !452)
!472 = !DILocation(line: 149, column: 102, scope: !452)
!473 = distinct !{!473, !457, !474}
!474 = !DILocation(line: 163, column: 2, scope: !434)
!475 = !DILabel(scope: !430, name: "out", file: !114, line: 165)
!476 = !DILocation(line: 165, column: 1, scope: !430)
!477 = !DILocation(line: 166, column: 9, scope: !430)
!478 = !DILocation(line: 166, column: 2, scope: !430)
!479 = distinct !DISubprogram(name: "k_mem_slab_init", scope: !114, file: !114, line: 172, type: !480, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !244)
!480 = !DISubroutineType(types: !481)
!481 = !{!93, !435, !92, !482, !193}
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !483, line: 51, baseType: !96)
!483 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/string.h", directory: "")
!484 = !DILocalVariable(name: "slab", arg: 1, scope: !479, file: !114, line: 172, type: !435)
!485 = !DILocation(line: 172, column: 40, scope: !479)
!486 = !DILocalVariable(name: "buffer", arg: 2, scope: !479, file: !114, line: 172, type: !92)
!487 = !DILocation(line: 172, column: 52, scope: !479)
!488 = !DILocalVariable(name: "block_size", arg: 3, scope: !479, file: !114, line: 173, type: !482)
!489 = !DILocation(line: 173, column: 14, scope: !479)
!490 = !DILocalVariable(name: "num_blocks", arg: 4, scope: !479, file: !114, line: 173, type: !193)
!491 = !DILocation(line: 173, column: 35, scope: !479)
!492 = !DILocalVariable(name: "rc", scope: !479, file: !114, line: 175, type: !93)
!493 = !DILocation(line: 175, column: 6, scope: !479)
!494 = !DILocation(line: 177, column: 26, scope: !479)
!495 = !DILocation(line: 177, column: 2, scope: !479)
!496 = !DILocation(line: 177, column: 8, scope: !479)
!497 = !DILocation(line: 177, column: 13, scope: !479)
!498 = !DILocation(line: 177, column: 24, scope: !479)
!499 = !DILocation(line: 178, column: 26, scope: !479)
!500 = !DILocation(line: 178, column: 2, scope: !479)
!501 = !DILocation(line: 178, column: 8, scope: !479)
!502 = !DILocation(line: 178, column: 13, scope: !479)
!503 = !DILocation(line: 178, column: 24, scope: !479)
!504 = !DILocation(line: 179, column: 17, scope: !479)
!505 = !DILocation(line: 179, column: 2, scope: !479)
!506 = !DILocation(line: 179, column: 8, scope: !479)
!507 = !DILocation(line: 179, column: 15, scope: !479)
!508 = !DILocation(line: 180, column: 2, scope: !479)
!509 = !DILocation(line: 180, column: 8, scope: !479)
!510 = !DILocation(line: 180, column: 13, scope: !479)
!511 = !DILocation(line: 180, column: 22, scope: !479)
!512 = !DILocation(line: 181, column: 2, scope: !479)
!513 = !DILocation(line: 181, column: 8, scope: !479)
!514 = !DILocation(line: 181, column: 15, scope: !479)
!515 = !DILocation(line: 187, column: 24, scope: !479)
!516 = !DILocation(line: 187, column: 7, scope: !479)
!517 = !DILocation(line: 187, column: 5, scope: !479)
!518 = !DILocation(line: 188, column: 6, scope: !519)
!519 = distinct !DILexicalBlock(scope: !479, file: !114, line: 188, column: 6)
!520 = !DILocation(line: 188, column: 9, scope: !519)
!521 = !DILocation(line: 188, column: 6, scope: !479)
!522 = !DILocation(line: 189, column: 3, scope: !523)
!523 = distinct !DILexicalBlock(scope: !519, file: !114, line: 188, column: 14)
!524 = !DILocation(line: 200, column: 16, scope: !479)
!525 = !DILocation(line: 200, column: 22, scope: !479)
!526 = !DILocation(line: 200, column: 2, scope: !479)
!527 = !DILocation(line: 201, column: 16, scope: !479)
!528 = !DILocation(line: 201, column: 2, scope: !479)
!529 = !DILabel(scope: !479, name: "out", file: !114, line: 202)
!530 = !DILocation(line: 202, column: 1, scope: !479)
!531 = !DILocation(line: 203, column: 2, scope: !479)
!532 = !DILocation(line: 203, column: 7, scope: !533)
!533 = distinct !DILexicalBlock(scope: !479, file: !114, line: 203, column: 5)
!534 = !DILocation(line: 205, column: 9, scope: !479)
!535 = !DILocation(line: 205, column: 2, scope: !479)
!536 = distinct !DISubprogram(name: "create_free_list", scope: !114, file: !114, line: 104, type: !537, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !244)
!537 = !DISubroutineType(types: !538)
!538 = !{!93, !435}
!539 = !DILocalVariable(name: "slab", arg: 1, scope: !536, file: !114, line: 104, type: !435)
!540 = !DILocation(line: 104, column: 48, scope: !536)
!541 = !DILocalVariable(name: "j", scope: !536, file: !114, line: 106, type: !193)
!542 = !DILocation(line: 106, column: 11, scope: !536)
!543 = !DILocalVariable(name: "p", scope: !536, file: !114, line: 107, type: !90)
!544 = !DILocation(line: 107, column: 8, scope: !536)
!545 = !DILocation(line: 110, column: 8, scope: !546)
!546 = distinct !DILexicalBlock(scope: !536, file: !114, line: 110, column: 6)
!547 = !DILocation(line: 110, column: 14, scope: !546)
!548 = !DILocation(line: 110, column: 19, scope: !546)
!549 = !DILocation(line: 110, column: 43, scope: !546)
!550 = !DILocation(line: 110, column: 49, scope: !546)
!551 = !DILocation(line: 110, column: 32, scope: !546)
!552 = !DILocation(line: 110, column: 30, scope: !546)
!553 = !DILocation(line: 110, column: 57, scope: !546)
!554 = !DILocation(line: 110, column: 81, scope: !546)
!555 = !DILocation(line: 110, column: 6, scope: !536)
!556 = !DILocation(line: 112, column: 3, scope: !557)
!557 = distinct !DILexicalBlock(scope: !546, file: !114, line: 110, column: 88)
!558 = !DILocation(line: 115, column: 2, scope: !536)
!559 = !DILocation(line: 115, column: 8, scope: !536)
!560 = !DILocation(line: 115, column: 18, scope: !536)
!561 = !DILocation(line: 116, column: 6, scope: !536)
!562 = !DILocation(line: 116, column: 12, scope: !536)
!563 = !DILocation(line: 116, column: 4, scope: !536)
!564 = !DILocation(line: 118, column: 9, scope: !565)
!565 = distinct !DILexicalBlock(scope: !536, file: !114, line: 118, column: 2)
!566 = !DILocation(line: 118, column: 7, scope: !565)
!567 = !DILocation(line: 118, column: 15, scope: !568)
!568 = distinct !DILexicalBlock(scope: !565, file: !114, line: 118, column: 2)
!569 = !DILocation(line: 118, column: 19, scope: !568)
!570 = !DILocation(line: 118, column: 25, scope: !568)
!571 = !DILocation(line: 118, column: 30, scope: !568)
!572 = !DILocation(line: 118, column: 17, scope: !568)
!573 = !DILocation(line: 118, column: 2, scope: !565)
!574 = !DILocation(line: 119, column: 17, scope: !575)
!575 = distinct !DILexicalBlock(scope: !568, file: !114, line: 118, column: 47)
!576 = !DILocation(line: 119, column: 23, scope: !575)
!577 = !DILocation(line: 119, column: 13, scope: !575)
!578 = !DILocation(line: 119, column: 15, scope: !575)
!579 = !DILocation(line: 120, column: 21, scope: !575)
!580 = !DILocation(line: 120, column: 3, scope: !575)
!581 = !DILocation(line: 120, column: 9, scope: !575)
!582 = !DILocation(line: 120, column: 19, scope: !575)
!583 = !DILocation(line: 121, column: 8, scope: !575)
!584 = !DILocation(line: 121, column: 14, scope: !575)
!585 = !DILocation(line: 121, column: 19, scope: !575)
!586 = !DILocation(line: 121, column: 5, scope: !575)
!587 = !DILocation(line: 122, column: 2, scope: !575)
!588 = !DILocation(line: 118, column: 43, scope: !568)
!589 = !DILocation(line: 118, column: 2, scope: !568)
!590 = distinct !{!590, !573, !591}
!591 = !DILocation(line: 122, column: 2, scope: !565)
!592 = !DILocation(line: 123, column: 2, scope: !536)
!593 = !DILocation(line: 124, column: 1, scope: !536)
!594 = distinct !DISubprogram(name: "z_waitq_init", scope: !595, file: !595, line: 47, type: !596, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !244)
!595 = !DIFile(filename: "kernel/include/wait_q.h", directory: "/home/sri/zephyrproject/zephyr")
!596 = !DISubroutineType(types: !597)
!597 = !{null, !169}
!598 = !DILocalVariable(name: "w", arg: 1, scope: !594, file: !595, line: 47, type: !169)
!599 = !DILocation(line: 47, column: 44, scope: !594)
!600 = !DILocation(line: 49, column: 18, scope: !594)
!601 = !DILocation(line: 49, column: 21, scope: !594)
!602 = !DILocation(line: 49, column: 2, scope: !594)
!603 = !DILocation(line: 50, column: 1, scope: !594)
!604 = distinct !DISubprogram(name: "z_object_init", scope: !6, file: !6, line: 215, type: !258, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !244)
!605 = !DILocalVariable(name: "obj", arg: 1, scope: !604, file: !6, line: 215, type: !146)
!606 = !DILocation(line: 215, column: 46, scope: !604)
!607 = !DILocation(line: 217, column: 9, scope: !604)
!608 = !DILocation(line: 218, column: 1, scope: !604)
!609 = distinct !DISubprogram(name: "k_mem_slab_alloc", scope: !114, file: !114, line: 208, type: !610, scopeLine: 209, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !244)
!610 = !DISubroutineType(types: !611)
!611 = !{!93, !435, !612, !319}
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 32)
!613 = !DILocalVariable(name: "slab", arg: 1, scope: !609, file: !114, line: 208, type: !435)
!614 = !DILocation(line: 208, column: 41, scope: !609)
!615 = !DILocalVariable(name: "mem", arg: 2, scope: !609, file: !114, line: 208, type: !612)
!616 = !DILocation(line: 208, column: 54, scope: !609)
!617 = !DILocalVariable(name: "timeout", arg: 3, scope: !609, file: !114, line: 208, type: !319)
!618 = !DILocation(line: 208, column: 71, scope: !609)
!619 = !DILocalVariable(name: "key", scope: !609, file: !114, line: 210, type: !620)
!620 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_spinlock_key_t", file: !243, line: 108, baseType: !621)
!621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "z_spinlock_key", file: !243, line: 34, size: 32, elements: !622)
!622 = !{!623}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !621, file: !243, line: 35, baseType: !93, size: 32)
!624 = !DILocation(line: 210, column: 19, scope: !609)
!625 = !DILocation(line: 210, column: 38, scope: !609)
!626 = !DILocation(line: 210, column: 44, scope: !609)
!627 = !DILocalVariable(name: "l", arg: 1, scope: !628, file: !243, line: 160, type: !631)
!628 = distinct !DISubprogram(name: "k_spin_lock", scope: !243, file: !243, line: 160, type: !629, scopeLine: 161, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !244)
!629 = !DISubroutineType(types: !630)
!630 = !{!620, !631}
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 32)
!632 = !DILocation(line: 160, column: 94, scope: !628, inlinedAt: !633)
!633 = distinct !DILocation(line: 210, column: 25, scope: !609)
!634 = !DILocation(line: 162, column: 9, scope: !628, inlinedAt: !633)
!635 = !DILocalVariable(name: "k", scope: !628, file: !243, line: 163, type: !620)
!636 = !DILocation(line: 163, column: 19, scope: !628, inlinedAt: !633)
!637 = !DILocalVariable(name: "key", scope: !638, file: !639, line: 44, type: !96)
!638 = distinct !DISubprogram(name: "arch_irq_lock", scope: !639, file: !639, line: 42, type: !640, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !244)
!639 = !DIFile(filename: "include/zephyr/arch/arm/asm_inline_gcc.h", directory: "/home/sri/zephyrproject/zephyr")
!640 = !DISubroutineType(types: !641)
!641 = !{!96}
!642 = !DILocation(line: 44, column: 15, scope: !638, inlinedAt: !643)
!643 = distinct !DILocation(line: 169, column: 10, scope: !628, inlinedAt: !633)
!644 = !DILocation(line: 48, column: 2, scope: !638, inlinedAt: !643)
!645 = !{i64 66904}
!646 = !DILocation(line: 80, column: 9, scope: !638, inlinedAt: !643)
!647 = !DILocation(line: 169, column: 8, scope: !628, inlinedAt: !633)
!648 = !DILocation(line: 171, column: 26, scope: !628, inlinedAt: !633)
!649 = !DILocalVariable(name: "l", arg: 1, scope: !650, file: !243, line: 110, type: !631)
!650 = distinct !DISubprogram(name: "z_spinlock_validate_pre", scope: !243, file: !243, line: 110, type: !651, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !244)
!651 = !DISubroutineType(types: !652)
!652 = !{null, !631}
!653 = !DILocation(line: 110, column: 94, scope: !650, inlinedAt: !654)
!654 = distinct !DILocation(line: 171, column: 2, scope: !628, inlinedAt: !633)
!655 = !DILocation(line: 112, column: 9, scope: !650, inlinedAt: !654)
!656 = !DILocation(line: 177, column: 27, scope: !628, inlinedAt: !633)
!657 = !DILocalVariable(name: "l", arg: 1, scope: !658, file: !243, line: 121, type: !631)
!658 = distinct !DISubprogram(name: "z_spinlock_validate_post", scope: !243, file: !243, line: 121, type: !651, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !244)
!659 = !DILocation(line: 121, column: 95, scope: !658, inlinedAt: !660)
!660 = distinct !DILocation(line: 177, column: 2, scope: !628, inlinedAt: !633)
!661 = !DILocation(line: 123, column: 9, scope: !658, inlinedAt: !660)
!662 = !DILocation(line: 179, column: 2, scope: !628, inlinedAt: !633)
!663 = !DILocation(line: 210, column: 25, scope: !609)
!664 = !DILocalVariable(name: "result", scope: !609, file: !114, line: 211, type: !93)
!665 = !DILocation(line: 211, column: 6, scope: !609)
!666 = !DILocation(line: 213, column: 2, scope: !609)
!667 = !DILocation(line: 213, column: 7, scope: !668)
!668 = distinct !DILexicalBlock(scope: !609, file: !114, line: 213, column: 5)
!669 = !DILocation(line: 215, column: 6, scope: !670)
!670 = distinct !DILexicalBlock(scope: !609, file: !114, line: 215, column: 6)
!671 = !DILocation(line: 215, column: 12, scope: !670)
!672 = !DILocation(line: 215, column: 22, scope: !670)
!673 = !DILocation(line: 215, column: 6, scope: !609)
!674 = !DILocation(line: 217, column: 10, scope: !675)
!675 = distinct !DILexicalBlock(scope: !670, file: !114, line: 215, column: 28)
!676 = !DILocation(line: 217, column: 16, scope: !675)
!677 = !DILocation(line: 217, column: 4, scope: !675)
!678 = !DILocation(line: 217, column: 8, scope: !675)
!679 = !DILocation(line: 218, column: 32, scope: !675)
!680 = !DILocation(line: 218, column: 38, scope: !675)
!681 = !DILocation(line: 218, column: 21, scope: !675)
!682 = !DILocation(line: 218, column: 3, scope: !675)
!683 = !DILocation(line: 218, column: 9, scope: !675)
!684 = !DILocation(line: 218, column: 19, scope: !675)
!685 = !DILocation(line: 219, column: 3, scope: !675)
!686 = !DILocation(line: 219, column: 9, scope: !675)
!687 = !DILocation(line: 219, column: 14, scope: !675)
!688 = !DILocation(line: 219, column: 22, scope: !675)
!689 = !DILocation(line: 226, column: 10, scope: !675)
!690 = !DILocation(line: 227, column: 2, scope: !675)
!691 = !DILocation(line: 227, column: 24, scope: !692)
!692 = distinct !DILexicalBlock(scope: !670, file: !114, line: 227, column: 13)
!693 = !DILocation(line: 227, column: 49, scope: !692)
!694 = !DILocation(line: 227, column: 30, scope: !692)
!695 = !DILocation(line: 227, column: 13, scope: !670)
!696 = !DILocation(line: 230, column: 4, scope: !697)
!697 = distinct !DILexicalBlock(scope: !692, file: !114, line: 228, column: 10)
!698 = !DILocation(line: 230, column: 8, scope: !697)
!699 = !DILocation(line: 231, column: 10, scope: !697)
!700 = !DILocation(line: 232, column: 2, scope: !697)
!701 = !DILocation(line: 233, column: 3, scope: !702)
!702 = distinct !DILexicalBlock(scope: !692, file: !114, line: 232, column: 9)
!703 = !DILocation(line: 233, column: 8, scope: !704)
!704 = distinct !DILexicalBlock(scope: !702, file: !114, line: 233, column: 6)
!705 = !DILocation(line: 236, column: 25, scope: !702)
!706 = !DILocation(line: 236, column: 31, scope: !702)
!707 = !DILocation(line: 236, column: 43, scope: !702)
!708 = !DILocation(line: 236, column: 49, scope: !702)
!709 = !DILocation(line: 236, column: 12, scope: !702)
!710 = !DILocation(line: 236, column: 10, scope: !702)
!711 = !DILocation(line: 237, column: 7, scope: !712)
!712 = distinct !DILexicalBlock(scope: !702, file: !114, line: 237, column: 7)
!713 = !DILocation(line: 237, column: 14, scope: !712)
!714 = !DILocation(line: 237, column: 7, scope: !702)
!715 = !DILocation(line: 238, column: 27, scope: !716)
!716 = distinct !DILexicalBlock(scope: !712, file: !114, line: 237, column: 20)
!717 = !DILocation(line: 238, column: 36, scope: !716)
!718 = !DILocation(line: 238, column: 41, scope: !716)
!719 = !DILocation(line: 238, column: 5, scope: !716)
!720 = !DILocation(line: 238, column: 9, scope: !716)
!721 = !DILocation(line: 239, column: 3, scope: !716)
!722 = !DILocation(line: 241, column: 3, scope: !702)
!723 = !DILocation(line: 241, column: 8, scope: !724)
!724 = distinct !DILexicalBlock(scope: !702, file: !114, line: 241, column: 6)
!725 = !DILocation(line: 243, column: 10, scope: !702)
!726 = !DILocation(line: 243, column: 3, scope: !702)
!727 = !DILocation(line: 246, column: 2, scope: !609)
!728 = !DILocation(line: 246, column: 7, scope: !729)
!729 = distinct !DILexicalBlock(scope: !609, file: !114, line: 246, column: 5)
!730 = !DILocation(line: 248, column: 17, scope: !609)
!731 = !DILocation(line: 248, column: 23, scope: !609)
!732 = !DILocation(line: 248, column: 2, scope: !609)
!733 = !DILocalVariable(name: "l", arg: 1, scope: !734, file: !243, line: 235, type: !631)
!734 = distinct !DISubprogram(name: "k_spin_unlock", scope: !243, file: !243, line: 235, type: !735, scopeLine: 237, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !244)
!735 = !DISubroutineType(types: !736)
!736 = !{null, !631, !620}
!737 = !DILocation(line: 235, column: 84, scope: !734, inlinedAt: !738)
!738 = distinct !DILocation(line: 248, column: 2, scope: !609)
!739 = !DILocalVariable(name: "key", arg: 2, scope: !734, file: !243, line: 236, type: !620)
!740 = !DILocation(line: 236, column: 23, scope: !734, inlinedAt: !738)
!741 = !DILocation(line: 238, column: 9, scope: !734, inlinedAt: !738)
!742 = !DILocation(line: 261, column: 22, scope: !734, inlinedAt: !738)
!743 = !DILocalVariable(name: "key", arg: 1, scope: !744, file: !639, line: 88, type: !96)
!744 = distinct !DISubprogram(name: "arch_irq_unlock", scope: !639, file: !639, line: 88, type: !745, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !244)
!745 = !DISubroutineType(types: !746)
!746 = !{null, !96}
!747 = !DILocation(line: 88, column: 80, scope: !744, inlinedAt: !748)
!748 = distinct !DILocation(line: 261, column: 2, scope: !734, inlinedAt: !738)
!749 = !DILocation(line: 91, column: 6, scope: !750, inlinedAt: !748)
!750 = distinct !DILexicalBlock(scope: !744, file: !639, line: 91, column: 6)
!751 = !DILocation(line: 91, column: 10, scope: !750, inlinedAt: !748)
!752 = !DILocation(line: 91, column: 6, scope: !744, inlinedAt: !748)
!753 = !DILocation(line: 92, column: 3, scope: !754, inlinedAt: !748)
!754 = distinct !DILexicalBlock(scope: !750, file: !639, line: 91, column: 17)
!755 = !DILocation(line: 94, column: 2, scope: !744, inlinedAt: !748)
!756 = !{i64 67208}
!757 = !DILocation(line: 114, column: 1, scope: !744, inlinedAt: !748)
!758 = !DILocation(line: 250, column: 9, scope: !609)
!759 = !DILocation(line: 250, column: 2, scope: !609)
!760 = !DILocation(line: 251, column: 1, scope: !609)
!761 = distinct !DISubprogram(name: "k_mem_slab_free", scope: !114, file: !114, line: 253, type: !762, scopeLine: 254, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !244)
!762 = !DISubroutineType(types: !763)
!763 = !{null, !435, !92}
!764 = !DILocalVariable(name: "slab", arg: 1, scope: !761, file: !114, line: 253, type: !435)
!765 = !DILocation(line: 253, column: 41, scope: !761)
!766 = !DILocalVariable(name: "mem", arg: 2, scope: !761, file: !114, line: 253, type: !92)
!767 = !DILocation(line: 253, column: 53, scope: !761)
!768 = !DILocalVariable(name: "key", scope: !761, file: !114, line: 255, type: !620)
!769 = !DILocation(line: 255, column: 19, scope: !761)
!770 = !DILocation(line: 255, column: 38, scope: !761)
!771 = !DILocation(line: 255, column: 44, scope: !761)
!772 = !DILocation(line: 160, column: 94, scope: !628, inlinedAt: !773)
!773 = distinct !DILocation(line: 255, column: 25, scope: !761)
!774 = !DILocation(line: 162, column: 9, scope: !628, inlinedAt: !773)
!775 = !DILocation(line: 163, column: 19, scope: !628, inlinedAt: !773)
!776 = !DILocation(line: 44, column: 15, scope: !638, inlinedAt: !777)
!777 = distinct !DILocation(line: 169, column: 10, scope: !628, inlinedAt: !773)
!778 = !DILocation(line: 48, column: 2, scope: !638, inlinedAt: !777)
!779 = !DILocation(line: 80, column: 9, scope: !638, inlinedAt: !777)
!780 = !DILocation(line: 169, column: 8, scope: !628, inlinedAt: !773)
!781 = !DILocation(line: 171, column: 26, scope: !628, inlinedAt: !773)
!782 = !DILocation(line: 110, column: 94, scope: !650, inlinedAt: !783)
!783 = distinct !DILocation(line: 171, column: 2, scope: !628, inlinedAt: !773)
!784 = !DILocation(line: 112, column: 9, scope: !650, inlinedAt: !783)
!785 = !DILocation(line: 177, column: 27, scope: !628, inlinedAt: !773)
!786 = !DILocation(line: 121, column: 95, scope: !658, inlinedAt: !787)
!787 = distinct !DILocation(line: 177, column: 2, scope: !628, inlinedAt: !773)
!788 = !DILocation(line: 123, column: 9, scope: !658, inlinedAt: !787)
!789 = !DILocation(line: 179, column: 2, scope: !628, inlinedAt: !773)
!790 = !DILocation(line: 255, column: 25, scope: !761)
!791 = !DILocation(line: 263, column: 2, scope: !761)
!792 = !DILocation(line: 263, column: 7, scope: !793)
!793 = distinct !DILexicalBlock(scope: !761, file: !114, line: 263, column: 5)
!794 = !DILocation(line: 264, column: 6, scope: !795)
!795 = distinct !DILexicalBlock(scope: !761, file: !114, line: 264, column: 6)
!796 = !DILocation(line: 264, column: 12, scope: !795)
!797 = !DILocation(line: 264, column: 22, scope: !795)
!798 = !DILocation(line: 264, column: 6, scope: !761)
!799 = !DILocalVariable(name: "pending_thread", scope: !800, file: !114, line: 265, type: !148)
!800 = distinct !DILexicalBlock(scope: !795, file: !114, line: 264, column: 33)
!801 = !DILocation(line: 265, column: 20, scope: !800)
!802 = !DILocation(line: 265, column: 60, scope: !800)
!803 = !DILocation(line: 265, column: 66, scope: !800)
!804 = !DILocation(line: 265, column: 37, scope: !800)
!805 = !DILocation(line: 267, column: 7, scope: !806)
!806 = distinct !DILexicalBlock(scope: !800, file: !114, line: 267, column: 7)
!807 = !DILocation(line: 267, column: 22, scope: !806)
!808 = !DILocation(line: 267, column: 7, scope: !800)
!809 = !DILocation(line: 268, column: 4, scope: !810)
!810 = distinct !DILexicalBlock(scope: !806, file: !114, line: 267, column: 28)
!811 = !DILocation(line: 268, column: 9, scope: !812)
!812 = distinct !DILexicalBlock(scope: !810, file: !114, line: 268, column: 7)
!813 = !DILocation(line: 270, column: 40, scope: !810)
!814 = !DILocation(line: 270, column: 59, scope: !810)
!815 = !DILocalVariable(name: "thread", arg: 1, scope: !816, file: !817, line: 137, type: !148)
!816 = distinct !DISubprogram(name: "z_thread_return_value_set_with_data", scope: !817, file: !817, line: 137, type: !818, scopeLine: 140, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !244)
!817 = !DIFile(filename: "kernel/include/kernel_internal.h", directory: "/home/sri/zephyrproject/zephyr")
!818 = !DISubroutineType(types: !819)
!819 = !{null, !148, !96, !92}
!820 = !DILocation(line: 137, column: 54, scope: !816, inlinedAt: !821)
!821 = distinct !DILocation(line: 270, column: 4, scope: !810)
!822 = !DILocalVariable(name: "value", arg: 2, scope: !816, file: !817, line: 138, type: !96)
!823 = !DILocation(line: 138, column: 21, scope: !816, inlinedAt: !821)
!824 = !DILocalVariable(name: "data", arg: 3, scope: !816, file: !817, line: 139, type: !92)
!825 = !DILocation(line: 139, column: 14, scope: !816, inlinedAt: !821)
!826 = !DILocation(line: 141, column: 31, scope: !816, inlinedAt: !821)
!827 = !DILocation(line: 141, column: 39, scope: !816, inlinedAt: !821)
!828 = !DILocalVariable(name: "thread", arg: 1, scope: !829, file: !830, line: 59, type: !148)
!829 = distinct !DISubprogram(name: "arch_thread_return_value_set", scope: !830, file: !830, line: 59, type: !831, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !244)
!830 = !DIFile(filename: "arch/arm/include/cortex_m/kernel_arch_func.h", directory: "/home/sri/zephyrproject/zephyr")
!831 = !DISubroutineType(types: !832)
!832 = !{null, !148, !96}
!833 = !DILocation(line: 59, column: 47, scope: !829, inlinedAt: !834)
!834 = distinct !DILocation(line: 141, column: 2, scope: !816, inlinedAt: !821)
!835 = !DILocalVariable(name: "value", arg: 2, scope: !829, file: !830, line: 59, type: !96)
!836 = !DILocation(line: 59, column: 68, scope: !829, inlinedAt: !834)
!837 = !DILocation(line: 61, column: 35, scope: !829, inlinedAt: !834)
!838 = !DILocation(line: 61, column: 2, scope: !829, inlinedAt: !834)
!839 = !DILocation(line: 61, column: 10, scope: !829, inlinedAt: !834)
!840 = !DILocation(line: 61, column: 15, scope: !829, inlinedAt: !834)
!841 = !DILocation(line: 61, column: 33, scope: !829, inlinedAt: !834)
!842 = !DILocation(line: 142, column: 27, scope: !816, inlinedAt: !821)
!843 = !DILocation(line: 142, column: 2, scope: !816, inlinedAt: !821)
!844 = !DILocation(line: 142, column: 15, scope: !816, inlinedAt: !821)
!845 = !DILocation(line: 142, column: 25, scope: !816, inlinedAt: !821)
!846 = !DILocation(line: 271, column: 19, scope: !810)
!847 = !DILocation(line: 271, column: 4, scope: !810)
!848 = !DILocation(line: 272, column: 18, scope: !810)
!849 = !DILocation(line: 272, column: 24, scope: !810)
!850 = !DILocation(line: 272, column: 4, scope: !810)
!851 = !DILocation(line: 273, column: 4, scope: !810)
!852 = !DILocation(line: 275, column: 2, scope: !800)
!853 = !DILocation(line: 276, column: 19, scope: !761)
!854 = !DILocation(line: 276, column: 25, scope: !761)
!855 = !DILocation(line: 276, column: 13, scope: !761)
!856 = !DILocation(line: 276, column: 17, scope: !761)
!857 = !DILocation(line: 277, column: 29, scope: !761)
!858 = !DILocation(line: 277, column: 2, scope: !761)
!859 = !DILocation(line: 277, column: 8, scope: !761)
!860 = !DILocation(line: 277, column: 18, scope: !761)
!861 = !DILocation(line: 278, column: 2, scope: !761)
!862 = !DILocation(line: 278, column: 8, scope: !761)
!863 = !DILocation(line: 278, column: 13, scope: !761)
!864 = !DILocation(line: 278, column: 21, scope: !761)
!865 = !DILocation(line: 280, column: 2, scope: !761)
!866 = !DILocation(line: 280, column: 7, scope: !867)
!867 = distinct !DILexicalBlock(scope: !761, file: !114, line: 280, column: 5)
!868 = !DILocation(line: 282, column: 17, scope: !761)
!869 = !DILocation(line: 282, column: 23, scope: !761)
!870 = !DILocation(line: 282, column: 2, scope: !761)
!871 = !DILocation(line: 235, column: 84, scope: !734, inlinedAt: !872)
!872 = distinct !DILocation(line: 282, column: 2, scope: !761)
!873 = !DILocation(line: 236, column: 23, scope: !734, inlinedAt: !872)
!874 = !DILocation(line: 238, column: 9, scope: !734, inlinedAt: !872)
!875 = !DILocation(line: 261, column: 22, scope: !734, inlinedAt: !872)
!876 = !DILocation(line: 88, column: 80, scope: !744, inlinedAt: !877)
!877 = distinct !DILocation(line: 261, column: 2, scope: !734, inlinedAt: !872)
!878 = !DILocation(line: 91, column: 6, scope: !750, inlinedAt: !877)
!879 = !DILocation(line: 91, column: 10, scope: !750, inlinedAt: !877)
!880 = !DILocation(line: 91, column: 6, scope: !744, inlinedAt: !877)
!881 = !DILocation(line: 92, column: 3, scope: !754, inlinedAt: !877)
!882 = !DILocation(line: 94, column: 2, scope: !744, inlinedAt: !877)
!883 = !DILocation(line: 114, column: 1, scope: !744, inlinedAt: !877)
!884 = !DILocation(line: 283, column: 1, scope: !761)
!885 = distinct !DISubprogram(name: "k_mem_slab_runtime_stats_get", scope: !114, file: !114, line: 285, type: !886, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !244)
!886 = !DISubroutineType(types: !887)
!887 = !{!93, !435, !888}
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 32)
!889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sys_memory_stats", file: !890, line: 24, size: 96, elements: !891)
!890 = !DIFile(filename: "include/zephyr/sys/mem_stats.h", directory: "/home/sri/zephyrproject/zephyr")
!891 = !{!892, !893, !894}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "free_bytes", scope: !889, file: !890, line: 25, baseType: !238, size: 32)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_bytes", scope: !889, file: !890, line: 26, baseType: !238, size: 32, offset: 32)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "max_allocated_bytes", scope: !889, file: !890, line: 27, baseType: !238, size: 32, offset: 64)
!895 = !DILocalVariable(name: "slab", arg: 1, scope: !885, file: !114, line: 285, type: !435)
!896 = !DILocation(line: 285, column: 53, scope: !885)
!897 = !DILocalVariable(name: "stats", arg: 2, scope: !885, file: !114, line: 285, type: !888)
!898 = !DILocation(line: 285, column: 84, scope: !885)
!899 = !DILocation(line: 287, column: 7, scope: !900)
!900 = distinct !DILexicalBlock(scope: !885, file: !114, line: 287, column: 6)
!901 = !DILocation(line: 287, column: 12, scope: !900)
!902 = !DILocation(line: 287, column: 18, scope: !900)
!903 = !DILocation(line: 287, column: 22, scope: !900)
!904 = !DILocation(line: 287, column: 28, scope: !900)
!905 = !DILocation(line: 287, column: 6, scope: !885)
!906 = !DILocation(line: 288, column: 3, scope: !907)
!907 = distinct !DILexicalBlock(scope: !900, file: !114, line: 287, column: 35)
!908 = !DILocalVariable(name: "key", scope: !885, file: !114, line: 291, type: !620)
!909 = !DILocation(line: 291, column: 19, scope: !885)
!910 = !DILocation(line: 291, column: 38, scope: !885)
!911 = !DILocation(line: 291, column: 44, scope: !885)
!912 = !DILocation(line: 160, column: 94, scope: !628, inlinedAt: !913)
!913 = distinct !DILocation(line: 291, column: 25, scope: !885)
!914 = !DILocation(line: 162, column: 9, scope: !628, inlinedAt: !913)
!915 = !DILocation(line: 163, column: 19, scope: !628, inlinedAt: !913)
!916 = !DILocation(line: 44, column: 15, scope: !638, inlinedAt: !917)
!917 = distinct !DILocation(line: 169, column: 10, scope: !628, inlinedAt: !913)
!918 = !DILocation(line: 48, column: 2, scope: !638, inlinedAt: !917)
!919 = !DILocation(line: 80, column: 9, scope: !638, inlinedAt: !917)
!920 = !DILocation(line: 169, column: 8, scope: !628, inlinedAt: !913)
!921 = !DILocation(line: 171, column: 26, scope: !628, inlinedAt: !913)
!922 = !DILocation(line: 110, column: 94, scope: !650, inlinedAt: !923)
!923 = distinct !DILocation(line: 171, column: 2, scope: !628, inlinedAt: !913)
!924 = !DILocation(line: 112, column: 9, scope: !650, inlinedAt: !923)
!925 = !DILocation(line: 177, column: 27, scope: !628, inlinedAt: !913)
!926 = !DILocation(line: 121, column: 95, scope: !658, inlinedAt: !927)
!927 = distinct !DILocation(line: 177, column: 2, scope: !628, inlinedAt: !913)
!928 = !DILocation(line: 123, column: 9, scope: !658, inlinedAt: !927)
!929 = !DILocation(line: 179, column: 2, scope: !628, inlinedAt: !913)
!930 = !DILocation(line: 291, column: 25, scope: !885)
!931 = !DILocation(line: 293, column: 27, scope: !885)
!932 = !DILocation(line: 293, column: 33, scope: !885)
!933 = !DILocation(line: 293, column: 38, scope: !885)
!934 = !DILocation(line: 293, column: 49, scope: !885)
!935 = !DILocation(line: 293, column: 55, scope: !885)
!936 = !DILocation(line: 293, column: 60, scope: !885)
!937 = !DILocation(line: 293, column: 47, scope: !885)
!938 = !DILocation(line: 293, column: 2, scope: !885)
!939 = !DILocation(line: 293, column: 9, scope: !885)
!940 = !DILocation(line: 293, column: 25, scope: !885)
!941 = !DILocation(line: 294, column: 23, scope: !885)
!942 = !DILocation(line: 294, column: 29, scope: !885)
!943 = !DILocation(line: 294, column: 34, scope: !885)
!944 = !DILocation(line: 294, column: 47, scope: !885)
!945 = !DILocation(line: 294, column: 53, scope: !885)
!946 = !DILocation(line: 294, column: 58, scope: !885)
!947 = !DILocation(line: 294, column: 45, scope: !885)
!948 = !DILocation(line: 295, column: 8, scope: !885)
!949 = !DILocation(line: 295, column: 14, scope: !885)
!950 = !DILocation(line: 295, column: 19, scope: !885)
!951 = !DILocation(line: 294, column: 68, scope: !885)
!952 = !DILocation(line: 294, column: 2, scope: !885)
!953 = !DILocation(line: 294, column: 9, scope: !885)
!954 = !DILocation(line: 294, column: 20, scope: !885)
!955 = !DILocation(line: 300, column: 2, scope: !885)
!956 = !DILocation(line: 300, column: 9, scope: !885)
!957 = !DILocation(line: 300, column: 29, scope: !885)
!958 = !DILocation(line: 303, column: 17, scope: !885)
!959 = !DILocation(line: 303, column: 23, scope: !885)
!960 = !DILocation(line: 303, column: 2, scope: !885)
!961 = !DILocation(line: 235, column: 84, scope: !734, inlinedAt: !962)
!962 = distinct !DILocation(line: 303, column: 2, scope: !885)
!963 = !DILocation(line: 236, column: 23, scope: !734, inlinedAt: !962)
!964 = !DILocation(line: 238, column: 9, scope: !734, inlinedAt: !962)
!965 = !DILocation(line: 261, column: 22, scope: !734, inlinedAt: !962)
!966 = !DILocation(line: 88, column: 80, scope: !744, inlinedAt: !967)
!967 = distinct !DILocation(line: 261, column: 2, scope: !734, inlinedAt: !962)
!968 = !DILocation(line: 91, column: 6, scope: !750, inlinedAt: !967)
!969 = !DILocation(line: 91, column: 10, scope: !750, inlinedAt: !967)
!970 = !DILocation(line: 91, column: 6, scope: !744, inlinedAt: !967)
!971 = !DILocation(line: 92, column: 3, scope: !754, inlinedAt: !967)
!972 = !DILocation(line: 94, column: 2, scope: !744, inlinedAt: !967)
!973 = !DILocation(line: 114, column: 1, scope: !744, inlinedAt: !967)
!974 = !DILocation(line: 305, column: 2, scope: !885)
!975 = !DILocation(line: 306, column: 1, scope: !885)
!976 = distinct !DISubprogram(name: "sys_sflist_is_empty", scope: !366, file: !366, line: 335, type: !977, scopeLine: 335, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !244)
!977 = !DISubroutineType(types: !978)
!978 = !{!979, !980}
!979 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 32)
!981 = !DILocalVariable(name: "list", arg: 1, scope: !976, file: !366, line: 335, type: !980)
!982 = !DILocation(line: 335, column: 55, scope: !976)
!983 = !DILocation(line: 335, column: 92, scope: !976)
!984 = !DILocation(line: 335, column: 71, scope: !976)
!985 = !DILocation(line: 335, column: 98, scope: !976)
!986 = !DILocation(line: 335, column: 63, scope: !976)
!987 = distinct !DISubprogram(name: "sys_sflist_peek_head", scope: !366, file: !366, line: 255, type: !988, scopeLine: 256, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !244)
!988 = !DISubroutineType(types: !989)
!989 = !{!370, !980}
!990 = !DILocalVariable(name: "list", arg: 1, scope: !987, file: !366, line: 255, type: !980)
!991 = !DILocation(line: 255, column: 64, scope: !987)
!992 = !DILocation(line: 257, column: 9, scope: !987)
!993 = !DILocation(line: 257, column: 15, scope: !987)
!994 = !DILocation(line: 257, column: 2, scope: !987)
!995 = distinct !DISubprogram(name: "sys_dlist_init", scope: !99, file: !99, line: 203, type: !996, scopeLine: 204, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !244)
!996 = !DISubroutineType(types: !997)
!997 = !{null, !998}
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 32)
!999 = !DILocalVariable(name: "list", arg: 1, scope: !995, file: !99, line: 203, type: !998)
!1000 = !DILocation(line: 203, column: 48, scope: !995)
!1001 = !DILocation(line: 205, column: 30, scope: !995)
!1002 = !DILocation(line: 205, column: 2, scope: !995)
!1003 = !DILocation(line: 205, column: 8, scope: !995)
!1004 = !DILocation(line: 205, column: 13, scope: !995)
!1005 = !DILocation(line: 206, column: 30, scope: !995)
!1006 = !DILocation(line: 206, column: 2, scope: !995)
!1007 = !DILocation(line: 206, column: 8, scope: !995)
!1008 = !DILocation(line: 206, column: 13, scope: !995)
!1009 = !DILocation(line: 207, column: 1, scope: !995)
