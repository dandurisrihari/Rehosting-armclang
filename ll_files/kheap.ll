; ModuleID = '../bc_files/kheap.bc'
source_filename = "/home/sri/zephyrproject/zephyr/kernel/kheap.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-arm-none-eabi"

%struct.init_entry = type { %union.init_function, ptr }
%union.init_function = type { ptr }
%struct.k_heap = type { %struct.sys_heap, %struct._wait_q_t, %struct.k_spinlock }
%struct.sys_heap = type { ptr, ptr, i32 }
%struct._wait_q_t = type { %struct._dnode }
%struct._dnode = type { %union.anon.0, %union.anon.1 }
%union.anon.0 = type { ptr }
%union.anon.1 = type { ptr }
%struct.k_spinlock = type {}
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
%struct.k_timepoint_t = type { i64 }

@__init_statics_init_pre = internal constant %struct.init_entry { %union.init_function { ptr @statics_init }, ptr null }, section ".z_init_PRE_KERNEL_130_0_", align 4, !dbg !0
@_k_heap_list_start = external global [0 x %struct.k_heap], align 4
@_k_heap_list_end = external global [0 x %struct.k_heap], align 4
@llvm.used = appending global [1 x ptr] [ptr @__init_statics_init_pre], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_k_object_access_grant(ptr noundef %0, ptr noundef %1) #0 !dbg !137 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !246, metadata !DIExpression()), !dbg !247
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !248, metadata !DIExpression()), !dbg !249
  %5 = load ptr, ptr %3, align 4, !dbg !250
  %6 = load ptr, ptr %4, align 4, !dbg !251
  ret void, !dbg !252
}

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_k_object_release(ptr noundef %0) #0 !dbg !253 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !256, metadata !DIExpression()), !dbg !257
  %3 = load ptr, ptr %2, align 4, !dbg !258
  ret void, !dbg !259
}

; Function Attrs: noinline nounwind optnone
define internal ptr @z_impl_k_object_alloc(i8 noundef zeroext %0) #0 !dbg !260 {
  %2 = alloca i8, align 1
  store i8 %0, ptr %2, align 1
  call void @llvm.dbg.declare(metadata ptr %2, metadata !263, metadata !DIExpression()), !dbg !264
  %3 = load i8, ptr %2, align 1, !dbg !265
  ret ptr null, !dbg !266
}

; Function Attrs: noinline nounwind optnone
define internal ptr @z_impl_k_object_alloc_size(i8 noundef zeroext %0, i32 noundef %1) #0 !dbg !267 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8 %0, ptr %3, align 1
  call void @llvm.dbg.declare(metadata ptr %3, metadata !270, metadata !DIExpression()), !dbg !271
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !272, metadata !DIExpression()), !dbg !273
  %5 = load i8, ptr %3, align 1, !dbg !274
  %6 = load i32, ptr %4, align 4, !dbg !275
  ret ptr null, !dbg !276
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_thread_timeout_expires_ticks(ptr noundef %0) #0 !dbg !277 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !284, metadata !DIExpression()), !dbg !285
  %3 = load ptr, ptr %2, align 4, !dbg !286
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !287
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !288
  %6 = call i64 @z_timeout_expires(ptr noundef %5), !dbg !289
  ret i64 %6, !dbg !290
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_thread_timeout_remaining_ticks(ptr noundef %0) #0 !dbg !291 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !292, metadata !DIExpression()), !dbg !293
  %3 = load ptr, ptr %2, align 4, !dbg !294
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !295
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !296
  %6 = call i64 @z_timeout_remaining(ptr noundef %5), !dbg !297
  ret i64 %6, !dbg !298
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_timer_expires_ticks(ptr noundef %0) #0 !dbg !299 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !321, metadata !DIExpression()), !dbg !322
  %3 = load ptr, ptr %2, align 4, !dbg !323
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !324
  %5 = call i64 @z_timeout_expires(ptr noundef %4), !dbg !325
  ret i64 %5, !dbg !326
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_timer_remaining_ticks(ptr noundef %0) #0 !dbg !327 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !328, metadata !DIExpression()), !dbg !329
  %3 = load ptr, ptr %2, align 4, !dbg !330
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !331
  %5 = call i64 @z_timeout_remaining(ptr noundef %4), !dbg !332
  ret i64 %5, !dbg !333
}

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_k_timer_user_data_set(ptr noundef %0, ptr noundef %1) #0 !dbg !334 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !337, metadata !DIExpression()), !dbg !338
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !339, metadata !DIExpression()), !dbg !340
  %5 = load ptr, ptr %4, align 4, !dbg !341
  %6 = load ptr, ptr %3, align 4, !dbg !342
  %7 = getelementptr inbounds %struct.k_timer, ptr %6, i32 0, i32 6, !dbg !343
  store ptr %5, ptr %7, align 4, !dbg !344
  ret void, !dbg !345
}

; Function Attrs: noinline nounwind optnone
define internal ptr @z_impl_k_timer_user_data_get(ptr noundef %0) #0 !dbg !346 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !349, metadata !DIExpression()), !dbg !350
  %3 = load ptr, ptr %2, align 4, !dbg !351
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 6, !dbg !352
  %5 = load ptr, ptr %4, align 4, !dbg !352
  ret ptr %5, !dbg !353
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_queue_is_empty(ptr noundef %0) #0 !dbg !354 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !375, metadata !DIExpression()), !dbg !376
  %3 = load ptr, ptr %2, align 4, !dbg !377
  %4 = getelementptr inbounds %struct.k_queue, ptr %3, i32 0, i32 0, !dbg !378
  %5 = call zeroext i1 @sys_sflist_is_empty(ptr noundef %4), !dbg !379
  %6 = zext i1 %5 to i32, !dbg !380
  ret i32 %6, !dbg !381
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_sem_count_get(ptr noundef %0) #0 !dbg !382 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !391, metadata !DIExpression()), !dbg !392
  %3 = load ptr, ptr %2, align 4, !dbg !393
  %4 = getelementptr inbounds %struct.k_sem, ptr %3, i32 0, i32 1, !dbg !394
  %5 = load i32, ptr %4, align 4, !dbg !394
  ret i32 %5, !dbg !395
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_msgq_num_free_get(ptr noundef %0) #0 !dbg !396 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !414, metadata !DIExpression()), !dbg !415
  %3 = load ptr, ptr %2, align 4, !dbg !416
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 3, !dbg !417
  %5 = load i32, ptr %4, align 4, !dbg !417
  %6 = load ptr, ptr %2, align 4, !dbg !418
  %7 = getelementptr inbounds %struct.k_msgq, ptr %6, i32 0, i32 8, !dbg !419
  %8 = load i32, ptr %7, align 4, !dbg !419
  %9 = sub i32 %5, %8, !dbg !420
  ret i32 %9, !dbg !421
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_msgq_num_used_get(ptr noundef %0) #0 !dbg !422 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !423, metadata !DIExpression()), !dbg !424
  %3 = load ptr, ptr %2, align 4, !dbg !425
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 8, !dbg !426
  %5 = load i32, ptr %4, align 4, !dbg !426
  ret i32 %5, !dbg !427
}

; Function Attrs: noinline nounwind optnone
define hidden void @k_heap_init(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 !dbg !428 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !433, metadata !DIExpression()), !dbg !434
  store ptr %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !435, metadata !DIExpression()), !dbg !436
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !437, metadata !DIExpression()), !dbg !438
  %7 = load ptr, ptr %4, align 4, !dbg !439
  %8 = getelementptr inbounds %struct.k_heap, ptr %7, i32 0, i32 1, !dbg !440
  call void @z_waitq_init(ptr noundef %8), !dbg !441
  %9 = load ptr, ptr %4, align 4, !dbg !442
  %10 = getelementptr inbounds %struct.k_heap, ptr %9, i32 0, i32 0, !dbg !443
  %11 = load ptr, ptr %5, align 4, !dbg !444
  %12 = load i32, ptr %6, align 4, !dbg !445
  call void @sys_heap_init(ptr noundef %10, ptr noundef %11, i32 noundef %12), !dbg !446
  br label %13, !dbg !447

13:                                               ; preds = %3
  br label %14, !dbg !448

14:                                               ; preds = %13
  ret void, !dbg !450
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone
define internal void @z_waitq_init(ptr noundef %0) #0 !dbg !451 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !455, metadata !DIExpression()), !dbg !456
  %3 = load ptr, ptr %2, align 4, !dbg !457
  %4 = getelementptr inbounds %struct._wait_q_t, ptr %3, i32 0, i32 0, !dbg !458
  call void @sys_dlist_init(ptr noundef %4), !dbg !459
  ret void, !dbg !460
}

declare void @sys_heap_init(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone
define internal i32 @statics_init() #0 !dbg !461 {
  %1 = alloca ptr, align 4
  %2 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata ptr %1, metadata !462, metadata !DIExpression()), !dbg !464
  store ptr @_k_heap_list_start, ptr %1, align 4, !dbg !464
  br label %3, !dbg !465

3:                                                ; preds = %19, %0
  %4 = load ptr, ptr %1, align 4, !dbg !466
  %5 = icmp ult ptr %4, @_k_heap_list_end, !dbg !469
  %6 = zext i1 %5 to i32, !dbg !469
  store i32 %6, ptr %2, align 4, !dbg !470
  %7 = load i32, ptr %2, align 4, !dbg !472
  %8 = icmp ne i32 %7, 0, !dbg !473
  br i1 %8, label %9, label %22, !dbg !473

9:                                                ; preds = %3
  %10 = load ptr, ptr %1, align 4, !dbg !474
  %11 = load ptr, ptr %1, align 4, !dbg !477
  %12 = getelementptr inbounds %struct.k_heap, ptr %11, i32 0, i32 0, !dbg !478
  %13 = getelementptr inbounds %struct.sys_heap, ptr %12, i32 0, i32 1, !dbg !479
  %14 = load ptr, ptr %13, align 4, !dbg !479
  %15 = load ptr, ptr %1, align 4, !dbg !480
  %16 = getelementptr inbounds %struct.k_heap, ptr %15, i32 0, i32 0, !dbg !481
  %17 = getelementptr inbounds %struct.sys_heap, ptr %16, i32 0, i32 2, !dbg !482
  %18 = load i32, ptr %17, align 4, !dbg !482
  call void @k_heap_init(ptr noundef %10, ptr noundef %14, i32 noundef %18), !dbg !483
  br label %19, !dbg !484

19:                                               ; preds = %9
  %20 = load ptr, ptr %1, align 4, !dbg !485
  %21 = getelementptr inbounds %struct.k_heap, ptr %20, i32 1, !dbg !485
  store ptr %21, ptr %1, align 4, !dbg !485
  br label %3, !dbg !486, !llvm.loop !487

22:                                               ; preds = %3
  ret i32 0, !dbg !489
}

; Function Attrs: noinline nounwind optnone
define hidden ptr @k_heap_aligned_alloc(ptr noundef %0, i32 noundef %1, i32 noundef %2, [1 x i64] %3) #0 !dbg !490 {
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
  %18 = alloca %struct.k_timeout_t, align 8
  %19 = alloca ptr, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.k_timepoint_t, align 8
  %23 = alloca ptr, align 4
  %24 = alloca %struct.z_spinlock_key, align 4
  %25 = alloca i8, align 1
  %26 = alloca %struct.k_timeout_t, align 8
  %27 = alloca %struct.k_timeout_t, align 8
  %28 = alloca %struct.z_spinlock_key, align 4
  %29 = getelementptr inbounds %struct.k_timeout_t, ptr %18, i32 0, i32 0
  store [1 x i64] %3, ptr %29, align 8
  store ptr %0, ptr %19, align 4
  call void @llvm.dbg.declare(metadata ptr %19, metadata !493, metadata !DIExpression()), !dbg !494
  store i32 %1, ptr %20, align 4
  call void @llvm.dbg.declare(metadata ptr %20, metadata !495, metadata !DIExpression()), !dbg !496
  store i32 %2, ptr %21, align 4
  call void @llvm.dbg.declare(metadata ptr %21, metadata !497, metadata !DIExpression()), !dbg !498
  call void @llvm.dbg.declare(metadata ptr %18, metadata !499, metadata !DIExpression()), !dbg !500
  call void @llvm.dbg.declare(metadata ptr %22, metadata !501, metadata !DIExpression()), !dbg !508
  %30 = getelementptr inbounds %struct.k_timeout_t, ptr %18, i32 0, i32 0, !dbg !509
  %31 = load [1 x i64], ptr %30, align 8, !dbg !509
  call void @sys_timepoint_calc(ptr sret(%struct.k_timepoint_t) align 8 %22, [1 x i64] %31), !dbg !509
  call void @llvm.dbg.declare(metadata ptr %23, metadata !510, metadata !DIExpression()), !dbg !511
  store ptr null, ptr %23, align 4, !dbg !511
  call void @llvm.dbg.declare(metadata ptr %24, metadata !512, metadata !DIExpression()), !dbg !517
  %32 = load ptr, ptr %19, align 4, !dbg !518
  %33 = getelementptr inbounds %struct.k_heap, ptr %32, i32 0, i32 2, !dbg !519
  store ptr %33, ptr %15, align 4
  call void @llvm.dbg.declare(metadata ptr %15, metadata !520, metadata !DIExpression()), !dbg !525
  %34 = load ptr, ptr %15, align 4, !dbg !527
  call void @llvm.dbg.declare(metadata ptr %14, metadata !528, metadata !DIExpression()), !dbg !529
  call void @llvm.dbg.declare(metadata ptr %11, metadata !530, metadata !DIExpression()), !dbg !535
  %35 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #4, !dbg !537, !srcloc !538
  store i32 %35, ptr %11, align 4, !dbg !537
  %36 = load i32, ptr %11, align 4, !dbg !539
  store i32 %36, ptr %14, align 4, !dbg !540
  %37 = load ptr, ptr %15, align 4, !dbg !541
  store ptr %37, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !542, metadata !DIExpression()), !dbg !546
  %38 = load ptr, ptr %9, align 4, !dbg !548
  %39 = load ptr, ptr %15, align 4, !dbg !549
  store ptr %39, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !550, metadata !DIExpression()), !dbg !552
  %40 = load ptr, ptr %7, align 4, !dbg !554
  %41 = load i32, ptr %14, align 4, !dbg !555
  %42 = getelementptr inbounds %struct.z_spinlock_key, ptr %24, i32 0, i32 0, !dbg !556
  store i32 %41, ptr %42, align 4, !dbg !556
  br label %43, !dbg !557

43:                                               ; preds = %4
  br label %44, !dbg !558

44:                                               ; preds = %43
  call void @llvm.dbg.declare(metadata ptr %25, metadata !560, metadata !DIExpression()), !dbg !562
  store i8 0, ptr %25, align 1, !dbg !562
  br label %45, !dbg !563

45:                                               ; preds = %69, %44
  %46 = load ptr, ptr %23, align 4, !dbg !564
  %47 = icmp eq ptr %46, null, !dbg !565
  br i1 %47, label %48, label %92, !dbg !563

48:                                               ; preds = %45
  %49 = load ptr, ptr %19, align 4, !dbg !566
  %50 = getelementptr inbounds %struct.k_heap, ptr %49, i32 0, i32 0, !dbg !568
  %51 = load i32, ptr %20, align 4, !dbg !569
  %52 = load i32, ptr %21, align 4, !dbg !570
  %53 = call ptr @sys_heap_aligned_alloc(ptr noundef %50, i32 noundef %51, i32 noundef %52), !dbg !571
  store ptr %53, ptr %23, align 4, !dbg !572
  %54 = load ptr, ptr %23, align 4, !dbg !573
  %55 = icmp ne ptr %54, null, !dbg !575
  br i1 %55, label %61, label %56, !dbg !576

56:                                               ; preds = %48
  %57 = getelementptr inbounds %struct.k_timeout_t, ptr %18, i32 0, i32 0, !dbg !577
  %58 = load i64, ptr %57, align 8, !dbg !577
  %59 = getelementptr inbounds %struct.k_timeout_t, ptr %26, i32 0, i32 0, !dbg !578
  store i64 0, ptr %59, align 8, !dbg !578
  %60 = icmp eq i64 %58, 0, !dbg !579
  br i1 %60, label %61, label %62, !dbg !580

61:                                               ; preds = %56, %48
  br label %92, !dbg !581

62:                                               ; preds = %56
  %63 = load i8, ptr %25, align 1, !dbg !583
  %64 = trunc i8 %63 to i1, !dbg !583
  br i1 %64, label %68, label %65, !dbg !585

65:                                               ; preds = %62
  store i8 1, ptr %25, align 1, !dbg !586
  br label %66, !dbg !588

66:                                               ; preds = %65
  br label %67, !dbg !589

67:                                               ; preds = %66
  br label %69, !dbg !591

68:                                               ; preds = %62
  br label %69

69:                                               ; preds = %68, %67
  %70 = getelementptr inbounds %struct.k_timepoint_t, ptr %22, i32 0, i32 0, !dbg !592
  %71 = load [1 x i64], ptr %70, align 8, !dbg !592
  call void @sys_timepoint_timeout(ptr sret(%struct.k_timeout_t) align 8 %27, [1 x i64] %71), !dbg !592
  call void @llvm.memcpy.p0.p0.i32(ptr align 8 %18, ptr align 8 %27, i32 8, i1 false), !dbg !592
  %72 = load ptr, ptr %19, align 4, !dbg !593
  %73 = getelementptr inbounds %struct.k_heap, ptr %72, i32 0, i32 2, !dbg !594
  %74 = load ptr, ptr %19, align 4, !dbg !595
  %75 = getelementptr inbounds %struct.k_heap, ptr %74, i32 0, i32 1, !dbg !596
  %76 = getelementptr inbounds %struct.z_spinlock_key, ptr %24, i32 0, i32 0, !dbg !597
  %77 = load [1 x i32], ptr %76, align 4, !dbg !597
  %78 = getelementptr inbounds %struct.k_timeout_t, ptr %18, i32 0, i32 0, !dbg !597
  %79 = load [1 x i64], ptr %78, align 8, !dbg !597
  %80 = call i32 @z_pend_curr(ptr noundef %73, [1 x i32] %77, ptr noundef %75, [1 x i64] %79), !dbg !597
  %81 = load ptr, ptr %19, align 4, !dbg !598
  %82 = getelementptr inbounds %struct.k_heap, ptr %81, i32 0, i32 2, !dbg !599
  store ptr %82, ptr %17, align 4
  call void @llvm.dbg.declare(metadata ptr %17, metadata !520, metadata !DIExpression()), !dbg !600
  %83 = load ptr, ptr %17, align 4, !dbg !602
  call void @llvm.dbg.declare(metadata ptr %16, metadata !528, metadata !DIExpression()), !dbg !603
  call void @llvm.dbg.declare(metadata ptr %10, metadata !530, metadata !DIExpression()), !dbg !604
  %84 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #4, !dbg !606, !srcloc !538
  store i32 %84, ptr %10, align 4, !dbg !606
  %85 = load i32, ptr %10, align 4, !dbg !607
  store i32 %85, ptr %16, align 4, !dbg !608
  %86 = load ptr, ptr %17, align 4, !dbg !609
  store ptr %86, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !542, metadata !DIExpression()), !dbg !610
  %87 = load ptr, ptr %8, align 4, !dbg !612
  %88 = load ptr, ptr %17, align 4, !dbg !613
  store ptr %88, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !550, metadata !DIExpression()), !dbg !614
  %89 = load ptr, ptr %6, align 4, !dbg !616
  %90 = load i32, ptr %16, align 4, !dbg !617
  %91 = getelementptr inbounds %struct.z_spinlock_key, ptr %28, i32 0, i32 0, !dbg !618
  store i32 %90, ptr %91, align 4, !dbg !618
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %24, ptr align 4 %28, i32 4, i1 false), !dbg !618
  br label %45, !dbg !563, !llvm.loop !619

92:                                               ; preds = %61, %45
  br label %93, !dbg !621

93:                                               ; preds = %92
  br label %94, !dbg !622

94:                                               ; preds = %93
  %95 = load ptr, ptr %19, align 4, !dbg !624
  %96 = getelementptr inbounds %struct.k_heap, ptr %95, i32 0, i32 2, !dbg !625
  %97 = getelementptr inbounds %struct.z_spinlock_key, ptr %24, i32 0, i32 0, !dbg !626
  %98 = load [1 x i32], ptr %97, align 4, !dbg !626
  store [1 x i32] %98, ptr %12, align 4
  store ptr %96, ptr %13, align 4
  call void @llvm.dbg.declare(metadata ptr %13, metadata !627, metadata !DIExpression()), !dbg !631
  call void @llvm.dbg.declare(metadata ptr %12, metadata !633, metadata !DIExpression()), !dbg !634
  %99 = load ptr, ptr %13, align 4, !dbg !635
  %100 = load i32, ptr %12, align 4, !dbg !636
  store i32 %100, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !637, metadata !DIExpression()), !dbg !641
  %101 = load i32, ptr %5, align 4, !dbg !643
  %102 = icmp ne i32 %101, 0, !dbg !645
  br i1 %102, label %103, label %104, !dbg !646

103:                                              ; preds = %94
  br label %arch_irq_unlock.exit, !dbg !647

104:                                              ; preds = %94
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #4, !dbg !649, !srcloc !650
  br label %arch_irq_unlock.exit, !dbg !651

arch_irq_unlock.exit:                             ; preds = %103, %104
  %105 = load ptr, ptr %23, align 4, !dbg !652
  ret ptr %105, !dbg !653
}

declare void @sys_timepoint_calc(ptr sret(%struct.k_timepoint_t) align 8, [1 x i64]) #2

declare ptr @sys_heap_aligned_alloc(ptr noundef, i32 noundef, i32 noundef) #2

declare void @sys_timepoint_timeout(ptr sret(%struct.k_timeout_t) align 8, [1 x i64]) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

declare i32 @z_pend_curr(ptr noundef, [1 x i32], ptr noundef, [1 x i64]) #2

; Function Attrs: noinline nounwind optnone
define hidden ptr @k_heap_alloc(ptr noundef %0, i32 noundef %1, [1 x i64] %2) #0 !dbg !654 {
  %4 = alloca %struct.k_timeout_t, align 8
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 4
  %8 = getelementptr inbounds %struct.k_timeout_t, ptr %4, i32 0, i32 0
  store [1 x i64] %2, ptr %8, align 8
  store ptr %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !657, metadata !DIExpression()), !dbg !658
  store i32 %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !659, metadata !DIExpression()), !dbg !660
  call void @llvm.dbg.declare(metadata ptr %4, metadata !661, metadata !DIExpression()), !dbg !662
  br label %9, !dbg !663

9:                                                ; preds = %3
  br label %10, !dbg !664

10:                                               ; preds = %9
  call void @llvm.dbg.declare(metadata ptr %7, metadata !666, metadata !DIExpression()), !dbg !667
  %11 = load ptr, ptr %5, align 4, !dbg !668
  %12 = load i32, ptr %6, align 4, !dbg !669
  %13 = getelementptr inbounds %struct.k_timeout_t, ptr %4, i32 0, i32 0, !dbg !670
  %14 = load [1 x i64], ptr %13, align 8, !dbg !670
  %15 = call ptr @k_heap_aligned_alloc(ptr noundef %11, i32 noundef 4, i32 noundef %12, [1 x i64] %14), !dbg !670
  store ptr %15, ptr %7, align 4, !dbg !667
  br label %16, !dbg !671

16:                                               ; preds = %10
  br label %17, !dbg !672

17:                                               ; preds = %16
  %18 = load ptr, ptr %7, align 4, !dbg !674
  ret ptr %18, !dbg !675
}

; Function Attrs: noinline nounwind optnone
define hidden void @k_heap_free(ptr noundef %0, ptr noundef %1) #0 !dbg !676 {
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
  store ptr %0, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !679, metadata !DIExpression()), !dbg !680
  store ptr %1, ptr %12, align 4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !681, metadata !DIExpression()), !dbg !682
  call void @llvm.dbg.declare(metadata ptr %13, metadata !683, metadata !DIExpression()), !dbg !684
  %14 = load ptr, ptr %11, align 4, !dbg !685
  %15 = getelementptr inbounds %struct.k_heap, ptr %14, i32 0, i32 2, !dbg !686
  store ptr %15, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !520, metadata !DIExpression()), !dbg !687
  %16 = load ptr, ptr %10, align 4, !dbg !689
  call void @llvm.dbg.declare(metadata ptr %9, metadata !528, metadata !DIExpression()), !dbg !690
  call void @llvm.dbg.declare(metadata ptr %6, metadata !530, metadata !DIExpression()), !dbg !691
  %17 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #4, !dbg !693, !srcloc !538
  store i32 %17, ptr %6, align 4, !dbg !693
  %18 = load i32, ptr %6, align 4, !dbg !694
  store i32 %18, ptr %9, align 4, !dbg !695
  %19 = load ptr, ptr %10, align 4, !dbg !696
  store ptr %19, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !542, metadata !DIExpression()), !dbg !697
  %20 = load ptr, ptr %5, align 4, !dbg !699
  %21 = load ptr, ptr %10, align 4, !dbg !700
  store ptr %21, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !550, metadata !DIExpression()), !dbg !701
  %22 = load ptr, ptr %4, align 4, !dbg !703
  %23 = load i32, ptr %9, align 4, !dbg !704
  %24 = getelementptr inbounds %struct.z_spinlock_key, ptr %13, i32 0, i32 0, !dbg !705
  store i32 %23, ptr %24, align 4, !dbg !705
  %25 = load ptr, ptr %11, align 4, !dbg !706
  %26 = getelementptr inbounds %struct.k_heap, ptr %25, i32 0, i32 0, !dbg !707
  %27 = load ptr, ptr %12, align 4, !dbg !708
  call void @sys_heap_free(ptr noundef %26, ptr noundef %27), !dbg !709
  br label %28, !dbg !710

28:                                               ; preds = %2
  br label %29, !dbg !711

29:                                               ; preds = %28
  %30 = load ptr, ptr %11, align 4, !dbg !713
  %31 = getelementptr inbounds %struct.k_heap, ptr %30, i32 0, i32 1, !dbg !715
  %32 = call i32 @z_unpend_all(ptr noundef %31), !dbg !716
  %33 = icmp ne i32 %32, 0, !dbg !717
  br i1 %33, label %34, label %39, !dbg !718

34:                                               ; preds = %29
  %35 = load ptr, ptr %11, align 4, !dbg !719
  %36 = getelementptr inbounds %struct.k_heap, ptr %35, i32 0, i32 2, !dbg !721
  %37 = getelementptr inbounds %struct.z_spinlock_key, ptr %13, i32 0, i32 0, !dbg !722
  %38 = load [1 x i32], ptr %37, align 4, !dbg !722
  call void @z_reschedule(ptr noundef %36, [1 x i32] %38), !dbg !722
  br label %50, !dbg !723

39:                                               ; preds = %29
  %40 = load ptr, ptr %11, align 4, !dbg !724
  %41 = getelementptr inbounds %struct.k_heap, ptr %40, i32 0, i32 2, !dbg !726
  %42 = getelementptr inbounds %struct.z_spinlock_key, ptr %13, i32 0, i32 0, !dbg !727
  %43 = load [1 x i32], ptr %42, align 4, !dbg !727
  store [1 x i32] %43, ptr %7, align 4
  store ptr %41, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !627, metadata !DIExpression()), !dbg !728
  call void @llvm.dbg.declare(metadata ptr %7, metadata !633, metadata !DIExpression()), !dbg !730
  %44 = load ptr, ptr %8, align 4, !dbg !731
  %45 = load i32, ptr %7, align 4, !dbg !732
  store i32 %45, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !637, metadata !DIExpression()), !dbg !733
  %46 = load i32, ptr %3, align 4, !dbg !735
  %47 = icmp ne i32 %46, 0, !dbg !736
  br i1 %47, label %48, label %49, !dbg !737

48:                                               ; preds = %39
  br label %arch_irq_unlock.exit, !dbg !738

49:                                               ; preds = %39
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #4, !dbg !739, !srcloc !650
  br label %arch_irq_unlock.exit, !dbg !740

arch_irq_unlock.exit:                             ; preds = %48, %49
  br label %50

50:                                               ; preds = %arch_irq_unlock.exit, %34
  ret void, !dbg !741
}

declare void @sys_heap_free(ptr noundef, ptr noundef) #2

declare i32 @z_unpend_all(ptr noundef) #2

declare void @z_reschedule(ptr noundef, [1 x i32]) #2

declare i64 @z_timeout_expires(ptr noundef) #2

declare i64 @z_timeout_remaining(ptr noundef) #2

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @sys_sflist_is_empty(ptr noundef %0) #0 !dbg !742 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !746, metadata !DIExpression()), !dbg !747
  %3 = load ptr, ptr %2, align 4, !dbg !748
  %4 = call ptr @sys_sflist_peek_head(ptr noundef %3), !dbg !749
  %5 = icmp eq ptr %4, null, !dbg !750
  ret i1 %5, !dbg !751
}

; Function Attrs: noinline nounwind optnone
define internal ptr @sys_sflist_peek_head(ptr noundef %0) #0 !dbg !752 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !755, metadata !DIExpression()), !dbg !756
  %3 = load ptr, ptr %2, align 4, !dbg !757
  %4 = getelementptr inbounds %struct._sflist, ptr %3, i32 0, i32 0, !dbg !758
  %5 = load ptr, ptr %4, align 4, !dbg !758
  ret ptr %5, !dbg !759
}

; Function Attrs: noinline nounwind optnone
define internal void @sys_dlist_init(ptr noundef %0) #0 !dbg !760 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !764, metadata !DIExpression()), !dbg !765
  %3 = load ptr, ptr %2, align 4, !dbg !766
  %4 = load ptr, ptr %2, align 4, !dbg !767
  %5 = getelementptr inbounds %struct._dnode, ptr %4, i32 0, i32 0, !dbg !768
  store ptr %3, ptr %5, align 4, !dbg !769
  %6 = load ptr, ptr %2, align 4, !dbg !770
  %7 = load ptr, ptr %2, align 4, !dbg !771
  %8 = getelementptr inbounds %struct._dnode, ptr %7, i32 0, i32 1, !dbg !772
  store ptr %6, ptr %8, align 4, !dbg !773
  ret void, !dbg !774
}

attributes #0 = { noinline nounwind optnone "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!128, !129, !130, !131, !132, !133, !134, !135}
!llvm.ident = !{!136}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__init_statics_init_pre", scope: !2, file: !108, line: 56, type: !109, isLocal: true, isDefinition: true, align: 32)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !88, globals: !107, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "kheap.c", directory: "/home/sri/zephyrproject/zephyr/build")
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
!88 = !{!89, !90, !91}
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!90 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 32)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dnode_t", file: !93, line: 55, baseType: !94)
!93 = !DIFile(filename: "include/zephyr/sys/dlist.h", directory: "/home/sri/zephyrproject/zephyr")
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_dnode", file: !93, line: 37, size: 64, elements: !95)
!95 = !{!96, !102}
!96 = !DIDerivedType(tag: DW_TAG_member, scope: !94, file: !93, line: 38, baseType: !97, size: 32)
!97 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !94, file: !93, line: 38, size: 32, elements: !98)
!98 = !{!99, !101}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !97, file: !93, line: 39, baseType: !100, size: 32)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 32)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !97, file: !93, line: 40, baseType: !100, size: 32)
!102 = !DIDerivedType(tag: DW_TAG_member, scope: !94, file: !93, line: 42, baseType: !103, size: 32, offset: 32)
!103 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !94, file: !93, line: 42, size: 32, elements: !104)
!104 = !{!105, !106}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !103, file: !93, line: 43, baseType: !100, size: 32)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !103, file: !93, line: 44, baseType: !100, size: 32)
!107 = !{!0}
!108 = !DIFile(filename: "kernel/kheap.c", directory: "/home/sri/zephyrproject/zephyr")
!109 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !110)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "init_entry", file: !111, line: 92, size: 64, elements: !112)
!111 = !DIFile(filename: "include/zephyr/init.h", directory: "/home/sri/zephyrproject/zephyr")
!112 = !{!113, !127}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "init_fn", scope: !110, file: !111, line: 94, baseType: !114, size: 32)
!114 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "init_function", file: !111, line: 59, size: 32, elements: !115)
!115 = !{!116, !120}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "sys", scope: !114, file: !111, line: 66, baseType: !117, size: 32)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 32)
!118 = !DISubroutineType(types: !119)
!119 = !{!90}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !114, file: !111, line: 75, baseType: !121, size: 32)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 32)
!122 = !DISubroutineType(types: !123)
!123 = !{!90, !124}
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 32)
!125 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !126)
!126 = !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !111, line: 50, flags: DIFlagFwdDecl)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !110, file: !111, line: 99, baseType: !124, size: 32, offset: 32)
!128 = !{i32 7, !"Dwarf Version", i32 4}
!129 = !{i32 2, !"Debug Info Version", i32 3}
!130 = !{i32 1, !"wchar_size", i32 4}
!131 = !{i32 1, !"static_rwdata", i32 1}
!132 = !{i32 1, !"enumsize_buildattr", i32 1}
!133 = !{i32 1, !"armlib_unavailable", i32 0}
!134 = !{i32 8, !"PIC Level", i32 2}
!135 = !{i32 7, !"PIE Level", i32 2}
!136 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
!137 = distinct !DISubprogram(name: "z_impl_k_object_access_grant", scope: !6, file: !6, line: 223, type: !138, scopeLine: 225, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !240)
!138 = !DISubroutineType(types: !139)
!139 = !{null, !140, !142}
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 32)
!141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 32)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_thread", file: !144, line: 250, size: 896, elements: !145)
!144 = !DIFile(filename: "include/zephyr/kernel/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!145 = !{!146, !204, !217, !218, !219, !220, !241}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !143, file: !144, line: 252, baseType: !147, size: 384)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_base", file: !144, line: 58, size: 384, elements: !148)
!148 = !{!149, !162, !170, !173, !174, !187, !190, !191}
!149 = !DIDerivedType(tag: DW_TAG_member, scope: !147, file: !144, line: 61, baseType: !150, size: 64)
!150 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !147, file: !144, line: 61, size: 64, elements: !151)
!151 = !{!152, !153}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_dlist", scope: !150, file: !144, line: 62, baseType: !92, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_rb", scope: !150, file: !144, line: 63, baseType: !154, size: 64)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rbnode", file: !155, line: 58, size: 64, elements: !156)
!155 = !DIFile(filename: "include/zephyr/sys/rb.h", directory: "/home/sri/zephyrproject/zephyr")
!156 = !{!157}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !154, file: !155, line: 60, baseType: !158, size: 64)
!158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 64, elements: !160)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 32)
!160 = !{!161}
!161 = !DISubrange(count: 2)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "pended_on", scope: !147, file: !144, line: 69, baseType: !163, size: 32, offset: 64)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 32)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "_wait_q_t", file: !165, line: 243, baseType: !166)
!165 = !DIFile(filename: "include/zephyr/kernel_structs.h", directory: "/home/sri/zephyrproject/zephyr")
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !165, line: 241, size: 64, elements: !167)
!167 = !{!168}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !166, file: !165, line: 242, baseType: !169, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dlist_t", file: !93, line: 51, baseType: !94)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "user_options", scope: !147, file: !144, line: 72, baseType: !171, size: 8, offset: 96)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !172, line: 62, baseType: !7)
!172 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/stdint.h", directory: "")
!173 = !DIDerivedType(tag: DW_TAG_member, name: "thread_state", scope: !147, file: !144, line: 75, baseType: !171, size: 8, offset: 104)
!174 = !DIDerivedType(tag: DW_TAG_member, scope: !147, file: !144, line: 91, baseType: !175, size: 16, offset: 112)
!175 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !147, file: !144, line: 91, size: 16, elements: !176)
!176 = !{!177, !184}
!177 = !DIDerivedType(tag: DW_TAG_member, scope: !175, file: !144, line: 92, baseType: !178, size: 16)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !175, file: !144, line: 92, size: 16, elements: !179)
!179 = !{!180, !183}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !178, file: !144, line: 97, baseType: !181, size: 8)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !172, line: 56, baseType: !182)
!182 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "sched_locked", scope: !178, file: !144, line: 98, baseType: !171, size: 8, offset: 8)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "preempt", scope: !175, file: !144, line: 101, baseType: !185, size: 16)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !172, line: 63, baseType: !186)
!186 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "order_key", scope: !147, file: !144, line: 108, baseType: !188, size: 32, offset: 128)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !172, line: 64, baseType: !189)
!189 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "swap_data", scope: !147, file: !144, line: 132, baseType: !89, size: 32, offset: 160)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !147, file: !144, line: 136, baseType: !192, size: 192, offset: 192)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_timeout", file: !165, line: 254, size: 192, elements: !193)
!193 = !{!194, !195, !201}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !192, file: !165, line: 255, baseType: !92, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !192, file: !165, line: 256, baseType: !196, size: 32, offset: 64)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "_timeout_func_t", file: !165, line: 252, baseType: !197)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 32)
!198 = !DISubroutineType(types: !199)
!199 = !{null, !200}
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 32)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "dticks", scope: !192, file: !165, line: 259, baseType: !202, size: 64, offset: 128)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !172, line: 59, baseType: !203)
!203 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "callee_saved", scope: !143, file: !144, line: 255, baseType: !205, size: 288, offset: 384)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_callee_saved", file: !206, line: 25, size: 288, elements: !207)
!206 = !DIFile(filename: "include/zephyr/arch/arm/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!207 = !{!208, !209, !210, !211, !212, !213, !214, !215, !216}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "v1", scope: !205, file: !206, line: 26, baseType: !188, size: 32)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "v2", scope: !205, file: !206, line: 27, baseType: !188, size: 32, offset: 32)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "v3", scope: !205, file: !206, line: 28, baseType: !188, size: 32, offset: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "v4", scope: !205, file: !206, line: 29, baseType: !188, size: 32, offset: 96)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "v5", scope: !205, file: !206, line: 30, baseType: !188, size: 32, offset: 128)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "v6", scope: !205, file: !206, line: 31, baseType: !188, size: 32, offset: 160)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "v7", scope: !205, file: !206, line: 32, baseType: !188, size: 32, offset: 192)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "v8", scope: !205, file: !206, line: 33, baseType: !188, size: 32, offset: 224)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "psp", scope: !205, file: !206, line: 34, baseType: !188, size: 32, offset: 256)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "init_data", scope: !143, file: !144, line: 258, baseType: !89, size: 32, offset: 672)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "join_queue", scope: !143, file: !144, line: 261, baseType: !164, size: 64, offset: 704)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "errno_var", scope: !143, file: !144, line: 302, baseType: !90, size: 32, offset: 768)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "resource_pool", scope: !143, file: !144, line: 333, baseType: !221, size: 32, offset: 800)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 32)
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_heap", file: !223, line: 5291, size: 160, elements: !224)
!223 = !DIFile(filename: "include/zephyr/kernel.h", directory: "/home/sri/zephyrproject/zephyr")
!224 = !{!225, !236, !237}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !222, file: !223, line: 5292, baseType: !226, size: 96)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sys_heap", file: !227, line: 56, size: 96, elements: !228)
!227 = !DIFile(filename: "include/zephyr/sys/sys_heap.h", directory: "/home/sri/zephyrproject/zephyr")
!228 = !{!229, !232, !233}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !226, file: !227, line: 57, baseType: !230, size: 32)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 32)
!231 = !DICompositeType(tag: DW_TAG_structure_type, name: "z_heap", file: !227, line: 57, flags: DIFlagFwdDecl)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "init_mem", scope: !226, file: !227, line: 58, baseType: !89, size: 32, offset: 32)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "init_bytes", scope: !226, file: !227, line: 59, baseType: !234, size: 32, offset: 64)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !235, line: 46, baseType: !189)
!235 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/lib/clang/17/include/stddef.h", directory: "")
!236 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !222, file: !223, line: 5293, baseType: !164, size: 64, offset: 96)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !222, file: !223, line: 5294, baseType: !238, offset: 160)
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_spinlock", file: !239, line: 45, elements: !240)
!239 = !DIFile(filename: "include/zephyr/spinlock.h", directory: "/home/sri/zephyrproject/zephyr")
!240 = !{}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !143, file: !144, line: 355, baseType: !242, size: 64, offset: 832)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_arch", file: !206, line: 60, size: 64, elements: !243)
!243 = !{!244, !245}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "basepri", scope: !242, file: !206, line: 63, baseType: !188, size: 32)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "swap_return_value", scope: !242, file: !206, line: 66, baseType: !188, size: 32, offset: 32)
!246 = !DILocalVariable(name: "object", arg: 1, scope: !137, file: !6, line: 223, type: !140)
!247 = !DILocation(line: 223, column: 61, scope: !137)
!248 = !DILocalVariable(name: "thread", arg: 2, scope: !137, file: !6, line: 224, type: !142)
!249 = !DILocation(line: 224, column: 24, scope: !137)
!250 = !DILocation(line: 226, column: 9, scope: !137)
!251 = !DILocation(line: 227, column: 9, scope: !137)
!252 = !DILocation(line: 228, column: 1, scope: !137)
!253 = distinct !DISubprogram(name: "z_impl_k_object_release", scope: !6, file: !6, line: 243, type: !254, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !240)
!254 = !DISubroutineType(types: !255)
!255 = !{null, !140}
!256 = !DILocalVariable(name: "object", arg: 1, scope: !253, file: !6, line: 243, type: !140)
!257 = !DILocation(line: 243, column: 56, scope: !253)
!258 = !DILocation(line: 245, column: 9, scope: !253)
!259 = !DILocation(line: 246, column: 1, scope: !253)
!260 = distinct !DISubprogram(name: "z_impl_k_object_alloc", scope: !6, file: !6, line: 359, type: !261, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !240)
!261 = !DISubroutineType(types: !262)
!262 = !{!89, !5}
!263 = !DILocalVariable(name: "otype", arg: 1, scope: !260, file: !6, line: 359, type: !5)
!264 = !DILocation(line: 359, column: 58, scope: !260)
!265 = !DILocation(line: 361, column: 9, scope: !260)
!266 = !DILocation(line: 363, column: 2, scope: !260)
!267 = distinct !DISubprogram(name: "z_impl_k_object_alloc_size", scope: !6, file: !6, line: 366, type: !268, scopeLine: 368, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !240)
!268 = !DISubroutineType(types: !269)
!269 = !{!89, !5, !234}
!270 = !DILocalVariable(name: "otype", arg: 1, scope: !267, file: !6, line: 366, type: !5)
!271 = !DILocation(line: 366, column: 63, scope: !267)
!272 = !DILocalVariable(name: "size", arg: 2, scope: !267, file: !6, line: 367, type: !234)
!273 = !DILocation(line: 367, column: 13, scope: !267)
!274 = !DILocation(line: 369, column: 9, scope: !267)
!275 = !DILocation(line: 370, column: 9, scope: !267)
!276 = !DILocation(line: 372, column: 2, scope: !267)
!277 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_expires_ticks", scope: !223, file: !223, line: 656, type: !278, scopeLine: 658, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !240)
!278 = !DISubroutineType(types: !279)
!279 = !{!280, !282}
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_ticks_t", file: !281, line: 46, baseType: !202)
!281 = !DIFile(filename: "include/zephyr/sys_clock.h", directory: "/home/sri/zephyrproject/zephyr")
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 32)
!283 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !143)
!284 = !DILocalVariable(name: "t", arg: 1, scope: !277, file: !223, line: 657, type: !282)
!285 = !DILocation(line: 657, column: 30, scope: !277)
!286 = !DILocation(line: 659, column: 28, scope: !277)
!287 = !DILocation(line: 659, column: 31, scope: !277)
!288 = !DILocation(line: 659, column: 36, scope: !277)
!289 = !DILocation(line: 659, column: 9, scope: !277)
!290 = !DILocation(line: 659, column: 2, scope: !277)
!291 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_remaining_ticks", scope: !223, file: !223, line: 671, type: !278, scopeLine: 673, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !240)
!292 = !DILocalVariable(name: "t", arg: 1, scope: !291, file: !223, line: 672, type: !282)
!293 = !DILocation(line: 672, column: 30, scope: !291)
!294 = !DILocation(line: 674, column: 30, scope: !291)
!295 = !DILocation(line: 674, column: 33, scope: !291)
!296 = !DILocation(line: 674, column: 38, scope: !291)
!297 = !DILocation(line: 674, column: 9, scope: !291)
!298 = !DILocation(line: 674, column: 2, scope: !291)
!299 = distinct !DISubprogram(name: "z_impl_k_timer_expires_ticks", scope: !223, file: !223, line: 1634, type: !300, scopeLine: 1636, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !240)
!300 = !DISubroutineType(types: !301)
!301 = !{!280, !302}
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 32)
!303 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !304)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_timer", file: !223, line: 1439, size: 448, elements: !305)
!305 = !{!306, !307, !308, !313, !314, !319, !320}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !304, file: !223, line: 1445, baseType: !192, size: 192)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !304, file: !223, line: 1448, baseType: !164, size: 64, offset: 192)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_fn", scope: !304, file: !223, line: 1451, baseType: !309, size: 32, offset: 256)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 32)
!310 = !DISubroutineType(types: !311)
!311 = !{null, !312}
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 32)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "stop_fn", scope: !304, file: !223, line: 1454, baseType: !309, size: 32, offset: 288)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !304, file: !223, line: 1457, baseType: !315, size: 64, offset: 320)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_timeout_t", file: !281, line: 67, baseType: !316)
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !281, line: 65, size: 64, elements: !317)
!317 = !{!318}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "ticks", scope: !316, file: !281, line: 66, baseType: !280, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !304, file: !223, line: 1460, baseType: !188, size: 32, offset: 384)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !304, file: !223, line: 1463, baseType: !89, size: 32, offset: 416)
!321 = !DILocalVariable(name: "timer", arg: 1, scope: !299, file: !223, line: 1635, type: !302)
!322 = !DILocation(line: 1635, column: 34, scope: !299)
!323 = !DILocation(line: 1637, column: 28, scope: !299)
!324 = !DILocation(line: 1637, column: 35, scope: !299)
!325 = !DILocation(line: 1637, column: 9, scope: !299)
!326 = !DILocation(line: 1637, column: 2, scope: !299)
!327 = distinct !DISubprogram(name: "z_impl_k_timer_remaining_ticks", scope: !223, file: !223, line: 1649, type: !300, scopeLine: 1651, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !240)
!328 = !DILocalVariable(name: "timer", arg: 1, scope: !327, file: !223, line: 1650, type: !302)
!329 = !DILocation(line: 1650, column: 34, scope: !327)
!330 = !DILocation(line: 1652, column: 30, scope: !327)
!331 = !DILocation(line: 1652, column: 37, scope: !327)
!332 = !DILocation(line: 1652, column: 9, scope: !327)
!333 = !DILocation(line: 1652, column: 2, scope: !327)
!334 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_set", scope: !223, file: !223, line: 1689, type: !335, scopeLine: 1691, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !240)
!335 = !DISubroutineType(types: !336)
!336 = !{null, !312, !89}
!337 = !DILocalVariable(name: "timer", arg: 1, scope: !334, file: !223, line: 1689, type: !312)
!338 = !DILocation(line: 1689, column: 65, scope: !334)
!339 = !DILocalVariable(name: "user_data", arg: 2, scope: !334, file: !223, line: 1690, type: !89)
!340 = !DILocation(line: 1690, column: 19, scope: !334)
!341 = !DILocation(line: 1692, column: 21, scope: !334)
!342 = !DILocation(line: 1692, column: 2, scope: !334)
!343 = !DILocation(line: 1692, column: 9, scope: !334)
!344 = !DILocation(line: 1692, column: 19, scope: !334)
!345 = !DILocation(line: 1693, column: 1, scope: !334)
!346 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_get", scope: !223, file: !223, line: 1704, type: !347, scopeLine: 1705, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !240)
!347 = !DISubroutineType(types: !348)
!348 = !{!89, !302}
!349 = !DILocalVariable(name: "timer", arg: 1, scope: !346, file: !223, line: 1704, type: !302)
!350 = !DILocation(line: 1704, column: 72, scope: !346)
!351 = !DILocation(line: 1706, column: 9, scope: !346)
!352 = !DILocation(line: 1706, column: 16, scope: !346)
!353 = !DILocation(line: 1706, column: 2, scope: !346)
!354 = distinct !DISubprogram(name: "z_impl_k_queue_is_empty", scope: !223, file: !223, line: 2071, type: !355, scopeLine: 2072, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !240)
!355 = !DISubroutineType(types: !356)
!356 = !{!90, !357}
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 32)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_queue", file: !223, line: 1830, size: 128, elements: !359)
!359 = !{!360, !373, !374}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "data_q", scope: !358, file: !223, line: 1831, baseType: !361, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sflist_t", file: !362, line: 60, baseType: !363)
!362 = !DIFile(filename: "include/zephyr/sys/sflist.h", directory: "/home/sri/zephyrproject/zephyr")
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sflist", file: !362, line: 53, size: 64, elements: !364)
!364 = !{!365, !372}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !363, file: !362, line: 54, baseType: !366, size: 32)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 32)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sfnode_t", file: !362, line: 50, baseType: !368)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sfnode", file: !362, line: 44, size: 32, elements: !369)
!369 = !{!370}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "next_and_flags", scope: !368, file: !362, line: 45, baseType: !371, size: 32)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "unative_t", file: !362, line: 40, baseType: !188)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !363, file: !362, line: 55, baseType: !366, size: 32, offset: 32)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !358, file: !223, line: 1832, baseType: !238, offset: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !358, file: !223, line: 1833, baseType: !164, size: 64, offset: 64)
!375 = !DILocalVariable(name: "queue", arg: 1, scope: !354, file: !223, line: 2071, type: !357)
!376 = !DILocation(line: 2071, column: 59, scope: !354)
!377 = !DILocation(line: 2073, column: 35, scope: !354)
!378 = !DILocation(line: 2073, column: 42, scope: !354)
!379 = !DILocation(line: 2073, column: 14, scope: !354)
!380 = !DILocation(line: 2073, column: 9, scope: !354)
!381 = !DILocation(line: 2073, column: 2, scope: !354)
!382 = distinct !DISubprogram(name: "z_impl_k_sem_count_get", scope: !223, file: !223, line: 3209, type: !383, scopeLine: 3210, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !240)
!383 = !DISubroutineType(types: !384)
!384 = !{!189, !385}
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 32)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sem", file: !223, line: 3092, size: 128, elements: !387)
!387 = !{!388, !389, !390}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !386, file: !223, line: 3093, baseType: !164, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !386, file: !223, line: 3094, baseType: !189, size: 32, offset: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !386, file: !223, line: 3095, baseType: !189, size: 32, offset: 96)
!391 = !DILocalVariable(name: "sem", arg: 1, scope: !382, file: !223, line: 3209, type: !385)
!392 = !DILocation(line: 3209, column: 65, scope: !382)
!393 = !DILocation(line: 3211, column: 9, scope: !382)
!394 = !DILocation(line: 3211, column: 14, scope: !382)
!395 = !DILocation(line: 3211, column: 2, scope: !382)
!396 = distinct !DISubprogram(name: "z_impl_k_msgq_num_free_get", scope: !223, file: !223, line: 4649, type: !397, scopeLine: 4650, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !240)
!397 = !DISubroutineType(types: !398)
!398 = !{!188, !399}
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 32)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_msgq", file: !223, line: 4390, size: 320, elements: !401)
!401 = !{!402, !403, !404, !405, !406, !409, !410, !411, !412, !413}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !400, file: !223, line: 4392, baseType: !164, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !400, file: !223, line: 4394, baseType: !238, offset: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "msg_size", scope: !400, file: !223, line: 4396, baseType: !234, size: 32, offset: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !400, file: !223, line: 4398, baseType: !188, size: 32, offset: 96)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_start", scope: !400, file: !223, line: 4400, baseType: !407, size: 32, offset: 128)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 32)
!408 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_end", scope: !400, file: !223, line: 4402, baseType: !407, size: 32, offset: 160)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "read_ptr", scope: !400, file: !223, line: 4404, baseType: !407, size: 32, offset: 192)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "write_ptr", scope: !400, file: !223, line: 4406, baseType: !407, size: 32, offset: 224)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "used_msgs", scope: !400, file: !223, line: 4408, baseType: !188, size: 32, offset: 256)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !400, file: !223, line: 4413, baseType: !171, size: 8, offset: 288)
!414 = !DILocalVariable(name: "msgq", arg: 1, scope: !396, file: !223, line: 4649, type: !399)
!415 = !DILocation(line: 4649, column: 66, scope: !396)
!416 = !DILocation(line: 4651, column: 9, scope: !396)
!417 = !DILocation(line: 4651, column: 15, scope: !396)
!418 = !DILocation(line: 4651, column: 26, scope: !396)
!419 = !DILocation(line: 4651, column: 32, scope: !396)
!420 = !DILocation(line: 4651, column: 24, scope: !396)
!421 = !DILocation(line: 4651, column: 2, scope: !396)
!422 = distinct !DISubprogram(name: "z_impl_k_msgq_num_used_get", scope: !223, file: !223, line: 4665, type: !397, scopeLine: 4666, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !240)
!423 = !DILocalVariable(name: "msgq", arg: 1, scope: !422, file: !223, line: 4665, type: !399)
!424 = !DILocation(line: 4665, column: 66, scope: !422)
!425 = !DILocation(line: 4667, column: 9, scope: !422)
!426 = !DILocation(line: 4667, column: 15, scope: !422)
!427 = !DILocation(line: 4667, column: 2, scope: !422)
!428 = distinct !DISubprogram(name: "k_heap_init", scope: !108, file: !108, line: 15, type: !429, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !240)
!429 = !DISubroutineType(types: !430)
!430 = !{null, !221, !89, !431}
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !432, line: 51, baseType: !189)
!432 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/string.h", directory: "")
!433 = !DILocalVariable(name: "h", arg: 1, scope: !428, file: !108, line: 15, type: !221)
!434 = !DILocation(line: 15, column: 33, scope: !428)
!435 = !DILocalVariable(name: "mem", arg: 2, scope: !428, file: !108, line: 15, type: !89)
!436 = !DILocation(line: 15, column: 42, scope: !428)
!437 = !DILocalVariable(name: "bytes", arg: 3, scope: !428, file: !108, line: 15, type: !431)
!438 = !DILocation(line: 15, column: 54, scope: !428)
!439 = !DILocation(line: 17, column: 16, scope: !428)
!440 = !DILocation(line: 17, column: 19, scope: !428)
!441 = !DILocation(line: 17, column: 2, scope: !428)
!442 = !DILocation(line: 18, column: 17, scope: !428)
!443 = !DILocation(line: 18, column: 20, scope: !428)
!444 = !DILocation(line: 18, column: 26, scope: !428)
!445 = !DILocation(line: 18, column: 31, scope: !428)
!446 = !DILocation(line: 18, column: 2, scope: !428)
!447 = !DILocation(line: 20, column: 2, scope: !428)
!448 = !DILocation(line: 20, column: 7, scope: !449)
!449 = distinct !DILexicalBlock(scope: !428, file: !108, line: 20, column: 5)
!450 = !DILocation(line: 21, column: 1, scope: !428)
!451 = distinct !DISubprogram(name: "z_waitq_init", scope: !452, file: !452, line: 47, type: !453, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !240)
!452 = !DIFile(filename: "kernel/include/wait_q.h", directory: "/home/sri/zephyrproject/zephyr")
!453 = !DISubroutineType(types: !454)
!454 = !{null, !163}
!455 = !DILocalVariable(name: "w", arg: 1, scope: !451, file: !452, line: 47, type: !163)
!456 = !DILocation(line: 47, column: 44, scope: !451)
!457 = !DILocation(line: 49, column: 18, scope: !451)
!458 = !DILocation(line: 49, column: 21, scope: !451)
!459 = !DILocation(line: 49, column: 2, scope: !451)
!460 = !DILocation(line: 50, column: 1, scope: !451)
!461 = distinct !DISubprogram(name: "statics_init", scope: !108, file: !108, line: 23, type: !118, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !240)
!462 = !DILocalVariable(name: "h", scope: !463, file: !108, line: 25, type: !221)
!463 = distinct !DILexicalBlock(scope: !461, file: !108, line: 25, column: 86)
!464 = !DILocation(line: 25, column: 107, scope: !463)
!465 = !DILocation(line: 25, column: 91, scope: !463)
!466 = !DILocation(line: 25, column: 139, scope: !467)
!467 = distinct !DILexicalBlock(scope: !468, file: !108, line: 25, column: 132)
!468 = distinct !DILexicalBlock(scope: !463, file: !108, line: 25, column: 86)
!469 = !DILocation(line: 25, column: 141, scope: !467)
!470 = !DILocation(line: 25, column: 136, scope: !471)
!471 = distinct !DILexicalBlock(scope: !467, file: !108, line: 25, column: 134)
!472 = !DILocation(line: 25, column: 161, scope: !467)
!473 = !DILocation(line: 25, column: 86, scope: !463)
!474 = !DILocation(line: 50, column: 16, scope: !475)
!475 = distinct !DILexicalBlock(scope: !476, file: !108, line: 49, column: 3)
!476 = distinct !DILexicalBlock(scope: !468, file: !108, line: 25, column: 170)
!477 = !DILocation(line: 50, column: 19, scope: !475)
!478 = !DILocation(line: 50, column: 22, scope: !475)
!479 = !DILocation(line: 50, column: 27, scope: !475)
!480 = !DILocation(line: 50, column: 37, scope: !475)
!481 = !DILocation(line: 50, column: 40, scope: !475)
!482 = !DILocation(line: 50, column: 45, scope: !475)
!483 = !DILocation(line: 50, column: 4, scope: !475)
!484 = !DILocation(line: 52, column: 2, scope: !476)
!485 = !DILocation(line: 25, column: 166, scope: !468)
!486 = !DILocation(line: 25, column: 86, scope: !468)
!487 = distinct !{!487, !473, !488}
!488 = !DILocation(line: 52, column: 2, scope: !463)
!489 = !DILocation(line: 53, column: 2, scope: !461)
!490 = distinct !DISubprogram(name: "k_heap_aligned_alloc", scope: !108, file: !108, line: 65, type: !491, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !240)
!491 = !DISubroutineType(types: !492)
!492 = !{!89, !221, !431, !431, !315}
!493 = !DILocalVariable(name: "h", arg: 1, scope: !490, file: !108, line: 65, type: !221)
!494 = !DILocation(line: 65, column: 43, scope: !490)
!495 = !DILocalVariable(name: "align", arg: 2, scope: !490, file: !108, line: 65, type: !431)
!496 = !DILocation(line: 65, column: 53, scope: !490)
!497 = !DILocalVariable(name: "bytes", arg: 3, scope: !490, file: !108, line: 65, type: !431)
!498 = !DILocation(line: 65, column: 67, scope: !490)
!499 = !DILocalVariable(name: "timeout", arg: 4, scope: !490, file: !108, line: 66, type: !315)
!500 = !DILocation(line: 66, column: 16, scope: !490)
!501 = !DILocalVariable(name: "end", scope: !490, file: !108, line: 68, type: !502)
!502 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_timepoint_t", file: !281, line: 219, baseType: !503)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !281, line: 219, size: 64, elements: !504)
!504 = !{!505}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "tick", scope: !503, file: !281, line: 219, baseType: !506, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !172, line: 65, baseType: !507)
!507 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!508 = !DILocation(line: 68, column: 16, scope: !490)
!509 = !DILocation(line: 68, column: 22, scope: !490)
!510 = !DILocalVariable(name: "ret", scope: !490, file: !108, line: 69, type: !89)
!511 = !DILocation(line: 69, column: 8, scope: !490)
!512 = !DILocalVariable(name: "key", scope: !490, file: !108, line: 71, type: !513)
!513 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_spinlock_key_t", file: !239, line: 108, baseType: !514)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "z_spinlock_key", file: !239, line: 34, size: 32, elements: !515)
!515 = !{!516}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !514, file: !239, line: 35, baseType: !90, size: 32)
!517 = !DILocation(line: 71, column: 19, scope: !490)
!518 = !DILocation(line: 71, column: 38, scope: !490)
!519 = !DILocation(line: 71, column: 41, scope: !490)
!520 = !DILocalVariable(name: "l", arg: 1, scope: !521, file: !239, line: 160, type: !524)
!521 = distinct !DISubprogram(name: "k_spin_lock", scope: !239, file: !239, line: 160, type: !522, scopeLine: 161, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !240)
!522 = !DISubroutineType(types: !523)
!523 = !{!513, !524}
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 32)
!525 = !DILocation(line: 160, column: 94, scope: !521, inlinedAt: !526)
!526 = distinct !DILocation(line: 71, column: 25, scope: !490)
!527 = !DILocation(line: 162, column: 9, scope: !521, inlinedAt: !526)
!528 = !DILocalVariable(name: "k", scope: !521, file: !239, line: 163, type: !513)
!529 = !DILocation(line: 163, column: 19, scope: !521, inlinedAt: !526)
!530 = !DILocalVariable(name: "key", scope: !531, file: !532, line: 44, type: !189)
!531 = distinct !DISubprogram(name: "arch_irq_lock", scope: !532, file: !532, line: 42, type: !533, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !240)
!532 = !DIFile(filename: "include/zephyr/arch/arm/asm_inline_gcc.h", directory: "/home/sri/zephyrproject/zephyr")
!533 = !DISubroutineType(types: !534)
!534 = !{!189}
!535 = !DILocation(line: 44, column: 15, scope: !531, inlinedAt: !536)
!536 = distinct !DILocation(line: 169, column: 10, scope: !521, inlinedAt: !526)
!537 = !DILocation(line: 48, column: 2, scope: !531, inlinedAt: !536)
!538 = !{i64 66898}
!539 = !DILocation(line: 80, column: 9, scope: !531, inlinedAt: !536)
!540 = !DILocation(line: 169, column: 8, scope: !521, inlinedAt: !526)
!541 = !DILocation(line: 171, column: 26, scope: !521, inlinedAt: !526)
!542 = !DILocalVariable(name: "l", arg: 1, scope: !543, file: !239, line: 110, type: !524)
!543 = distinct !DISubprogram(name: "z_spinlock_validate_pre", scope: !239, file: !239, line: 110, type: !544, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !240)
!544 = !DISubroutineType(types: !545)
!545 = !{null, !524}
!546 = !DILocation(line: 110, column: 94, scope: !543, inlinedAt: !547)
!547 = distinct !DILocation(line: 171, column: 2, scope: !521, inlinedAt: !526)
!548 = !DILocation(line: 112, column: 9, scope: !543, inlinedAt: !547)
!549 = !DILocation(line: 177, column: 27, scope: !521, inlinedAt: !526)
!550 = !DILocalVariable(name: "l", arg: 1, scope: !551, file: !239, line: 121, type: !524)
!551 = distinct !DISubprogram(name: "z_spinlock_validate_post", scope: !239, file: !239, line: 121, type: !544, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !240)
!552 = !DILocation(line: 121, column: 95, scope: !551, inlinedAt: !553)
!553 = distinct !DILocation(line: 177, column: 2, scope: !521, inlinedAt: !526)
!554 = !DILocation(line: 123, column: 9, scope: !551, inlinedAt: !553)
!555 = !DILocation(line: 179, column: 2, scope: !521, inlinedAt: !526)
!556 = !DILocation(line: 71, column: 25, scope: !490)
!557 = !DILocation(line: 73, column: 2, scope: !490)
!558 = !DILocation(line: 73, column: 7, scope: !559)
!559 = distinct !DILexicalBlock(scope: !490, file: !108, line: 73, column: 5)
!560 = !DILocalVariable(name: "blocked_alloc", scope: !490, file: !108, line: 77, type: !561)
!561 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!562 = !DILocation(line: 77, column: 8, scope: !490)
!563 = !DILocation(line: 79, column: 2, scope: !490)
!564 = !DILocation(line: 79, column: 9, scope: !490)
!565 = !DILocation(line: 79, column: 13, scope: !490)
!566 = !DILocation(line: 80, column: 33, scope: !567)
!567 = distinct !DILexicalBlock(scope: !490, file: !108, line: 79, column: 19)
!568 = !DILocation(line: 80, column: 36, scope: !567)
!569 = !DILocation(line: 80, column: 42, scope: !567)
!570 = !DILocation(line: 80, column: 49, scope: !567)
!571 = !DILocation(line: 80, column: 9, scope: !567)
!572 = !DILocation(line: 80, column: 7, scope: !567)
!573 = !DILocation(line: 83, column: 8, scope: !574)
!574 = distinct !DILexicalBlock(scope: !567, file: !108, line: 82, column: 7)
!575 = !DILocation(line: 83, column: 12, scope: !574)
!576 = !DILocation(line: 83, column: 18, scope: !574)
!577 = !DILocation(line: 83, column: 32, scope: !574)
!578 = !DILocation(line: 83, column: 57, scope: !574)
!579 = !DILocation(line: 83, column: 38, scope: !574)
!580 = !DILocation(line: 82, column: 7, scope: !567)
!581 = !DILocation(line: 84, column: 4, scope: !582)
!582 = distinct !DILexicalBlock(scope: !574, file: !108, line: 83, column: 71)
!583 = !DILocation(line: 87, column: 8, scope: !584)
!584 = distinct !DILexicalBlock(scope: !567, file: !108, line: 87, column: 7)
!585 = !DILocation(line: 87, column: 7, scope: !567)
!586 = !DILocation(line: 88, column: 18, scope: !587)
!587 = distinct !DILexicalBlock(scope: !584, file: !108, line: 87, column: 23)
!588 = !DILocation(line: 90, column: 4, scope: !587)
!589 = !DILocation(line: 90, column: 9, scope: !590)
!590 = distinct !DILexicalBlock(scope: !587, file: !108, line: 90, column: 7)
!591 = !DILocation(line: 91, column: 3, scope: !587)
!592 = !DILocation(line: 97, column: 13, scope: !567)
!593 = !DILocation(line: 98, column: 23, scope: !567)
!594 = !DILocation(line: 98, column: 26, scope: !567)
!595 = !DILocation(line: 98, column: 38, scope: !567)
!596 = !DILocation(line: 98, column: 41, scope: !567)
!597 = !DILocation(line: 98, column: 10, scope: !567)
!598 = !DILocation(line: 99, column: 22, scope: !567)
!599 = !DILocation(line: 99, column: 25, scope: !567)
!600 = !DILocation(line: 160, column: 94, scope: !521, inlinedAt: !601)
!601 = distinct !DILocation(line: 99, column: 9, scope: !567)
!602 = !DILocation(line: 162, column: 9, scope: !521, inlinedAt: !601)
!603 = !DILocation(line: 163, column: 19, scope: !521, inlinedAt: !601)
!604 = !DILocation(line: 44, column: 15, scope: !531, inlinedAt: !605)
!605 = distinct !DILocation(line: 169, column: 10, scope: !521, inlinedAt: !601)
!606 = !DILocation(line: 48, column: 2, scope: !531, inlinedAt: !605)
!607 = !DILocation(line: 80, column: 9, scope: !531, inlinedAt: !605)
!608 = !DILocation(line: 169, column: 8, scope: !521, inlinedAt: !601)
!609 = !DILocation(line: 171, column: 26, scope: !521, inlinedAt: !601)
!610 = !DILocation(line: 110, column: 94, scope: !543, inlinedAt: !611)
!611 = distinct !DILocation(line: 171, column: 2, scope: !521, inlinedAt: !601)
!612 = !DILocation(line: 112, column: 9, scope: !543, inlinedAt: !611)
!613 = !DILocation(line: 177, column: 27, scope: !521, inlinedAt: !601)
!614 = !DILocation(line: 121, column: 95, scope: !551, inlinedAt: !615)
!615 = distinct !DILocation(line: 177, column: 2, scope: !521, inlinedAt: !601)
!616 = !DILocation(line: 123, column: 9, scope: !551, inlinedAt: !615)
!617 = !DILocation(line: 179, column: 2, scope: !521, inlinedAt: !601)
!618 = !DILocation(line: 99, column: 9, scope: !567)
!619 = distinct !{!619, !563, !620}
!620 = !DILocation(line: 100, column: 2, scope: !490)
!621 = !DILocation(line: 102, column: 2, scope: !490)
!622 = !DILocation(line: 102, column: 7, scope: !623)
!623 = distinct !DILexicalBlock(scope: !490, file: !108, line: 102, column: 5)
!624 = !DILocation(line: 104, column: 17, scope: !490)
!625 = !DILocation(line: 104, column: 20, scope: !490)
!626 = !DILocation(line: 104, column: 2, scope: !490)
!627 = !DILocalVariable(name: "l", arg: 1, scope: !628, file: !239, line: 235, type: !524)
!628 = distinct !DISubprogram(name: "k_spin_unlock", scope: !239, file: !239, line: 235, type: !629, scopeLine: 237, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !240)
!629 = !DISubroutineType(types: !630)
!630 = !{null, !524, !513}
!631 = !DILocation(line: 235, column: 84, scope: !628, inlinedAt: !632)
!632 = distinct !DILocation(line: 104, column: 2, scope: !490)
!633 = !DILocalVariable(name: "key", arg: 2, scope: !628, file: !239, line: 236, type: !513)
!634 = !DILocation(line: 236, column: 23, scope: !628, inlinedAt: !632)
!635 = !DILocation(line: 238, column: 9, scope: !628, inlinedAt: !632)
!636 = !DILocation(line: 261, column: 22, scope: !628, inlinedAt: !632)
!637 = !DILocalVariable(name: "key", arg: 1, scope: !638, file: !532, line: 88, type: !189)
!638 = distinct !DISubprogram(name: "arch_irq_unlock", scope: !532, file: !532, line: 88, type: !639, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !240)
!639 = !DISubroutineType(types: !640)
!640 = !{null, !189}
!641 = !DILocation(line: 88, column: 80, scope: !638, inlinedAt: !642)
!642 = distinct !DILocation(line: 261, column: 2, scope: !628, inlinedAt: !632)
!643 = !DILocation(line: 91, column: 6, scope: !644, inlinedAt: !642)
!644 = distinct !DILexicalBlock(scope: !638, file: !532, line: 91, column: 6)
!645 = !DILocation(line: 91, column: 10, scope: !644, inlinedAt: !642)
!646 = !DILocation(line: 91, column: 6, scope: !638, inlinedAt: !642)
!647 = !DILocation(line: 92, column: 3, scope: !648, inlinedAt: !642)
!648 = distinct !DILexicalBlock(scope: !644, file: !532, line: 91, column: 17)
!649 = !DILocation(line: 94, column: 2, scope: !638, inlinedAt: !642)
!650 = !{i64 67202}
!651 = !DILocation(line: 114, column: 1, scope: !638, inlinedAt: !642)
!652 = !DILocation(line: 105, column: 9, scope: !490)
!653 = !DILocation(line: 105, column: 2, scope: !490)
!654 = distinct !DISubprogram(name: "k_heap_alloc", scope: !108, file: !108, line: 108, type: !655, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !240)
!655 = !DISubroutineType(types: !656)
!656 = !{!89, !221, !431, !315}
!657 = !DILocalVariable(name: "h", arg: 1, scope: !654, file: !108, line: 108, type: !221)
!658 = !DILocation(line: 108, column: 35, scope: !654)
!659 = !DILocalVariable(name: "bytes", arg: 2, scope: !654, file: !108, line: 108, type: !431)
!660 = !DILocation(line: 108, column: 45, scope: !654)
!661 = !DILocalVariable(name: "timeout", arg: 3, scope: !654, file: !108, line: 108, type: !315)
!662 = !DILocation(line: 108, column: 64, scope: !654)
!663 = !DILocation(line: 110, column: 2, scope: !654)
!664 = !DILocation(line: 110, column: 7, scope: !665)
!665 = distinct !DILexicalBlock(scope: !654, file: !108, line: 110, column: 5)
!666 = !DILocalVariable(name: "ret", scope: !654, file: !108, line: 112, type: !89)
!667 = !DILocation(line: 112, column: 8, scope: !654)
!668 = !DILocation(line: 112, column: 35, scope: !654)
!669 = !DILocation(line: 112, column: 54, scope: !654)
!670 = !DILocation(line: 112, column: 14, scope: !654)
!671 = !DILocation(line: 114, column: 2, scope: !654)
!672 = !DILocation(line: 114, column: 7, scope: !673)
!673 = distinct !DILexicalBlock(scope: !654, file: !108, line: 114, column: 5)
!674 = !DILocation(line: 116, column: 9, scope: !654)
!675 = !DILocation(line: 116, column: 2, scope: !654)
!676 = distinct !DISubprogram(name: "k_heap_free", scope: !108, file: !108, line: 119, type: !677, scopeLine: 120, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !240)
!677 = !DISubroutineType(types: !678)
!678 = !{null, !221, !89}
!679 = !DILocalVariable(name: "h", arg: 1, scope: !676, file: !108, line: 119, type: !221)
!680 = !DILocation(line: 119, column: 33, scope: !676)
!681 = !DILocalVariable(name: "mem", arg: 2, scope: !676, file: !108, line: 119, type: !89)
!682 = !DILocation(line: 119, column: 42, scope: !676)
!683 = !DILocalVariable(name: "key", scope: !676, file: !108, line: 121, type: !513)
!684 = !DILocation(line: 121, column: 19, scope: !676)
!685 = !DILocation(line: 121, column: 38, scope: !676)
!686 = !DILocation(line: 121, column: 41, scope: !676)
!687 = !DILocation(line: 160, column: 94, scope: !521, inlinedAt: !688)
!688 = distinct !DILocation(line: 121, column: 25, scope: !676)
!689 = !DILocation(line: 162, column: 9, scope: !521, inlinedAt: !688)
!690 = !DILocation(line: 163, column: 19, scope: !521, inlinedAt: !688)
!691 = !DILocation(line: 44, column: 15, scope: !531, inlinedAt: !692)
!692 = distinct !DILocation(line: 169, column: 10, scope: !521, inlinedAt: !688)
!693 = !DILocation(line: 48, column: 2, scope: !531, inlinedAt: !692)
!694 = !DILocation(line: 80, column: 9, scope: !531, inlinedAt: !692)
!695 = !DILocation(line: 169, column: 8, scope: !521, inlinedAt: !688)
!696 = !DILocation(line: 171, column: 26, scope: !521, inlinedAt: !688)
!697 = !DILocation(line: 110, column: 94, scope: !543, inlinedAt: !698)
!698 = distinct !DILocation(line: 171, column: 2, scope: !521, inlinedAt: !688)
!699 = !DILocation(line: 112, column: 9, scope: !543, inlinedAt: !698)
!700 = !DILocation(line: 177, column: 27, scope: !521, inlinedAt: !688)
!701 = !DILocation(line: 121, column: 95, scope: !551, inlinedAt: !702)
!702 = distinct !DILocation(line: 177, column: 2, scope: !521, inlinedAt: !688)
!703 = !DILocation(line: 123, column: 9, scope: !551, inlinedAt: !702)
!704 = !DILocation(line: 179, column: 2, scope: !521, inlinedAt: !688)
!705 = !DILocation(line: 121, column: 25, scope: !676)
!706 = !DILocation(line: 123, column: 17, scope: !676)
!707 = !DILocation(line: 123, column: 20, scope: !676)
!708 = !DILocation(line: 123, column: 26, scope: !676)
!709 = !DILocation(line: 123, column: 2, scope: !676)
!710 = !DILocation(line: 125, column: 2, scope: !676)
!711 = !DILocation(line: 125, column: 7, scope: !712)
!712 = distinct !DILexicalBlock(scope: !676, file: !108, line: 125, column: 5)
!713 = !DILocation(line: 126, column: 25, scope: !714)
!714 = distinct !DILexicalBlock(scope: !676, file: !108, line: 126, column: 6)
!715 = !DILocation(line: 126, column: 28, scope: !714)
!716 = !DILocation(line: 126, column: 11, scope: !714)
!717 = !DILocation(line: 126, column: 36, scope: !714)
!718 = !DILocation(line: 126, column: 6, scope: !676)
!719 = !DILocation(line: 127, column: 17, scope: !720)
!720 = distinct !DILexicalBlock(scope: !714, file: !108, line: 126, column: 42)
!721 = !DILocation(line: 127, column: 20, scope: !720)
!722 = !DILocation(line: 127, column: 3, scope: !720)
!723 = !DILocation(line: 128, column: 2, scope: !720)
!724 = !DILocation(line: 129, column: 18, scope: !725)
!725 = distinct !DILexicalBlock(scope: !714, file: !108, line: 128, column: 9)
!726 = !DILocation(line: 129, column: 21, scope: !725)
!727 = !DILocation(line: 129, column: 3, scope: !725)
!728 = !DILocation(line: 235, column: 84, scope: !628, inlinedAt: !729)
!729 = distinct !DILocation(line: 129, column: 3, scope: !725)
!730 = !DILocation(line: 236, column: 23, scope: !628, inlinedAt: !729)
!731 = !DILocation(line: 238, column: 9, scope: !628, inlinedAt: !729)
!732 = !DILocation(line: 261, column: 22, scope: !628, inlinedAt: !729)
!733 = !DILocation(line: 88, column: 80, scope: !638, inlinedAt: !734)
!734 = distinct !DILocation(line: 261, column: 2, scope: !628, inlinedAt: !729)
!735 = !DILocation(line: 91, column: 6, scope: !644, inlinedAt: !734)
!736 = !DILocation(line: 91, column: 10, scope: !644, inlinedAt: !734)
!737 = !DILocation(line: 91, column: 6, scope: !638, inlinedAt: !734)
!738 = !DILocation(line: 92, column: 3, scope: !648, inlinedAt: !734)
!739 = !DILocation(line: 94, column: 2, scope: !638, inlinedAt: !734)
!740 = !DILocation(line: 114, column: 1, scope: !638, inlinedAt: !734)
!741 = !DILocation(line: 131, column: 1, scope: !676)
!742 = distinct !DISubprogram(name: "sys_sflist_is_empty", scope: !362, file: !362, line: 335, type: !743, scopeLine: 335, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !240)
!743 = !DISubroutineType(types: !744)
!744 = !{!561, !745}
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 32)
!746 = !DILocalVariable(name: "list", arg: 1, scope: !742, file: !362, line: 335, type: !745)
!747 = !DILocation(line: 335, column: 55, scope: !742)
!748 = !DILocation(line: 335, column: 92, scope: !742)
!749 = !DILocation(line: 335, column: 71, scope: !742)
!750 = !DILocation(line: 335, column: 98, scope: !742)
!751 = !DILocation(line: 335, column: 63, scope: !742)
!752 = distinct !DISubprogram(name: "sys_sflist_peek_head", scope: !362, file: !362, line: 255, type: !753, scopeLine: 256, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !240)
!753 = !DISubroutineType(types: !754)
!754 = !{!366, !745}
!755 = !DILocalVariable(name: "list", arg: 1, scope: !752, file: !362, line: 255, type: !745)
!756 = !DILocation(line: 255, column: 64, scope: !752)
!757 = !DILocation(line: 257, column: 9, scope: !752)
!758 = !DILocation(line: 257, column: 15, scope: !752)
!759 = !DILocation(line: 257, column: 2, scope: !752)
!760 = distinct !DISubprogram(name: "sys_dlist_init", scope: !93, file: !93, line: 203, type: !761, scopeLine: 204, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !240)
!761 = !DISubroutineType(types: !762)
!762 = !{null, !763}
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 32)
!764 = !DILocalVariable(name: "list", arg: 1, scope: !760, file: !93, line: 203, type: !763)
!765 = !DILocation(line: 203, column: 48, scope: !760)
!766 = !DILocation(line: 205, column: 30, scope: !760)
!767 = !DILocation(line: 205, column: 2, scope: !760)
!768 = !DILocation(line: 205, column: 8, scope: !760)
!769 = !DILocation(line: 205, column: 13, scope: !760)
!770 = !DILocation(line: 206, column: 30, scope: !760)
!771 = !DILocation(line: 206, column: 2, scope: !760)
!772 = !DILocation(line: 206, column: 8, scope: !760)
!773 = !DILocation(line: 206, column: 13, scope: !760)
!774 = !DILocation(line: 207, column: 1, scope: !760)
