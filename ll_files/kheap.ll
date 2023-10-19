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
@_k_heap_list_start = external dso_local global [0 x %struct.k_heap], align 4
@_k_heap_list_end = external dso_local global [0 x %struct.k_heap], align 4
@llvm.used = appending global [1 x ptr] [ptr @__init_statics_init_pre], section "llvm.metadata"

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_k_object_access_grant(ptr noundef %0, ptr noundef %1) #0 !dbg !135 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !245, metadata !DIExpression()), !dbg !247
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !246, metadata !DIExpression()), !dbg !248
  %5 = load ptr, ptr %3, align 4, !dbg !249
  %6 = load ptr, ptr %4, align 4, !dbg !250
  ret void, !dbg !251
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_k_object_release(ptr noundef %0) #0 !dbg !252 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !256, metadata !DIExpression()), !dbg !257
  %3 = load ptr, ptr %2, align 4, !dbg !258
  ret void, !dbg !259
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_impl_k_object_alloc(i8 noundef zeroext %0) #0 !dbg !260 {
  %2 = alloca i8, align 1
  store i8 %0, ptr %2, align 1
  call void @llvm.dbg.declare(metadata ptr %2, metadata !264, metadata !DIExpression()), !dbg !265
  %3 = load i8, ptr %2, align 1, !dbg !266
  ret ptr null, !dbg !267
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_impl_k_object_alloc_size(i8 noundef zeroext %0, i32 noundef %1) #0 !dbg !268 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8 %0, ptr %3, align 1
  call void @llvm.dbg.declare(metadata ptr %3, metadata !272, metadata !DIExpression()), !dbg !274
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !273, metadata !DIExpression()), !dbg !275
  %5 = load i8, ptr %3, align 1, !dbg !276
  %6 = load i32, ptr %4, align 4, !dbg !277
  ret ptr null, !dbg !278
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_thread_timeout_expires_ticks(ptr noundef %0) #0 !dbg !279 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !287, metadata !DIExpression()), !dbg !288
  %3 = load ptr, ptr %2, align 4, !dbg !289
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !290
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !291
  %6 = call i64 @z_timeout_expires(ptr noundef %5) #6, !dbg !292
  ret i64 %6, !dbg !293
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_thread_timeout_remaining_ticks(ptr noundef %0) #0 !dbg !294 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !296, metadata !DIExpression()), !dbg !297
  %3 = load ptr, ptr %2, align 4, !dbg !298
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !299
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !300
  %6 = call i64 @z_timeout_remaining(ptr noundef %5) #6, !dbg !301
  ret i64 %6, !dbg !302
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_timer_expires_ticks(ptr noundef %0) #0 !dbg !303 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !326, metadata !DIExpression()), !dbg !327
  %3 = load ptr, ptr %2, align 4, !dbg !328
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !329
  %5 = call i64 @z_timeout_expires(ptr noundef %4) #6, !dbg !330
  ret i64 %5, !dbg !331
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_timer_remaining_ticks(ptr noundef %0) #0 !dbg !332 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !334, metadata !DIExpression()), !dbg !335
  %3 = load ptr, ptr %2, align 4, !dbg !336
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !337
  %5 = call i64 @z_timeout_remaining(ptr noundef %4) #6, !dbg !338
  ret i64 %5, !dbg !339
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_k_timer_user_data_set(ptr noundef %0, ptr noundef %1) #0 !dbg !340 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !344, metadata !DIExpression()), !dbg !346
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !345, metadata !DIExpression()), !dbg !347
  %5 = load ptr, ptr %4, align 4, !dbg !348
  %6 = load ptr, ptr %3, align 4, !dbg !349
  %7 = getelementptr inbounds %struct.k_timer, ptr %6, i32 0, i32 6, !dbg !350
  store ptr %5, ptr %7, align 4, !dbg !351
  ret void, !dbg !352
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_impl_k_timer_user_data_get(ptr noundef %0) #0 !dbg !353 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !357, metadata !DIExpression()), !dbg !358
  %3 = load ptr, ptr %2, align 4, !dbg !359
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 6, !dbg !360
  %5 = load ptr, ptr %4, align 4, !dbg !360
  ret ptr %5, !dbg !361
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_queue_is_empty(ptr noundef %0) #0 !dbg !362 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !384, metadata !DIExpression()), !dbg !385
  %3 = load ptr, ptr %2, align 4, !dbg !386
  %4 = getelementptr inbounds %struct.k_queue, ptr %3, i32 0, i32 0, !dbg !387
  %5 = call zeroext i1 @sys_sflist_is_empty(ptr noundef %4) #6, !dbg !388
  %6 = zext i1 %5 to i32, !dbg !389
  ret i32 %6, !dbg !390
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_sem_count_get(ptr noundef %0) #0 !dbg !391 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !401, metadata !DIExpression()), !dbg !402
  %3 = load ptr, ptr %2, align 4, !dbg !403
  %4 = getelementptr inbounds %struct.k_sem, ptr %3, i32 0, i32 1, !dbg !404
  %5 = load i32, ptr %4, align 4, !dbg !404
  ret i32 %5, !dbg !405
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_msgq_num_free_get(ptr noundef %0) #0 !dbg !406 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !425, metadata !DIExpression()), !dbg !426
  %3 = load ptr, ptr %2, align 4, !dbg !427
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 3, !dbg !428
  %5 = load i32, ptr %4, align 4, !dbg !428
  %6 = load ptr, ptr %2, align 4, !dbg !429
  %7 = getelementptr inbounds %struct.k_msgq, ptr %6, i32 0, i32 8, !dbg !430
  %8 = load i32, ptr %7, align 4, !dbg !430
  %9 = sub i32 %5, %8, !dbg !431
  ret i32 %9, !dbg !432
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_msgq_num_used_get(ptr noundef %0) #0 !dbg !433 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !435, metadata !DIExpression()), !dbg !436
  %3 = load ptr, ptr %2, align 4, !dbg !437
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 8, !dbg !438
  %5 = load i32, ptr %4, align 4, !dbg !438
  ret i32 %5, !dbg !439
}

; Function Attrs: nounwind optsize
define hidden void @k_heap_init(ptr noundef %0, ptr noundef %1, i32 noundef %2) #1 !dbg !440 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !446, metadata !DIExpression()), !dbg !449
  store ptr %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !447, metadata !DIExpression()), !dbg !450
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !448, metadata !DIExpression()), !dbg !451
  %7 = load ptr, ptr %4, align 4, !dbg !452
  %8 = getelementptr inbounds %struct.k_heap, ptr %7, i32 0, i32 1, !dbg !453
  call void @z_waitq_init(ptr noundef %8) #6, !dbg !454
  %9 = load ptr, ptr %4, align 4, !dbg !455
  %10 = getelementptr inbounds %struct.k_heap, ptr %9, i32 0, i32 0, !dbg !456
  %11 = load ptr, ptr %5, align 4, !dbg !457
  %12 = load i32, ptr %6, align 4, !dbg !458
  call void @sys_heap_init(ptr noundef %10, ptr noundef %11, i32 noundef %12) #6, !dbg !459
  br label %13, !dbg !460

13:                                               ; preds = %3
  br label %14, !dbg !461

14:                                               ; preds = %13
  ret void, !dbg !463
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: inlinehint nounwind optsize
define internal void @z_waitq_init(ptr noundef %0) #0 !dbg !464 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !469, metadata !DIExpression()), !dbg !470
  %3 = load ptr, ptr %2, align 4, !dbg !471
  %4 = getelementptr inbounds %struct._wait_q_t, ptr %3, i32 0, i32 0, !dbg !472
  call void @sys_dlist_init(ptr noundef %4) #6, !dbg !473
  ret void, !dbg !474
}

; Function Attrs: optsize
declare !dbg !475 dso_local void @sys_heap_init(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: nounwind optsize
define internal i32 @statics_init() #1 !dbg !479 {
  %1 = alloca ptr, align 4
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %1) #7, !dbg !483
  call void @llvm.dbg.declare(metadata ptr %1, metadata !481, metadata !DIExpression()), !dbg !484
  store ptr @_k_heap_list_start, ptr %1, align 4, !dbg !484
  br label %3, !dbg !483

3:                                                ; preds = %20, %0
  %4 = load ptr, ptr %1, align 4, !dbg !485
  %5 = icmp ult ptr %4, @_k_heap_list_end, !dbg !488
  %6 = zext i1 %5 to i32, !dbg !488
  store i32 %6, ptr %2, align 4, !dbg !489
  %7 = load i32, ptr %2, align 4, !dbg !491
  %8 = icmp ne i32 %7, 0, !dbg !492
  br i1 %8, label %10, label %9, !dbg !492

9:                                                ; preds = %3
  call void @llvm.lifetime.end.p0(i64 4, ptr %1) #7, !dbg !493
  br label %23

10:                                               ; preds = %3
  %11 = load ptr, ptr %1, align 4, !dbg !494
  %12 = load ptr, ptr %1, align 4, !dbg !497
  %13 = getelementptr inbounds %struct.k_heap, ptr %12, i32 0, i32 0, !dbg !498
  %14 = getelementptr inbounds %struct.sys_heap, ptr %13, i32 0, i32 1, !dbg !499
  %15 = load ptr, ptr %14, align 4, !dbg !499
  %16 = load ptr, ptr %1, align 4, !dbg !500
  %17 = getelementptr inbounds %struct.k_heap, ptr %16, i32 0, i32 0, !dbg !501
  %18 = getelementptr inbounds %struct.sys_heap, ptr %17, i32 0, i32 2, !dbg !502
  %19 = load i32, ptr %18, align 4, !dbg !502
  call void @k_heap_init(ptr noundef %11, ptr noundef %15, i32 noundef %19) #6, !dbg !503
  br label %20, !dbg !504

20:                                               ; preds = %10
  %21 = load ptr, ptr %1, align 4, !dbg !505
  %22 = getelementptr inbounds %struct.k_heap, ptr %21, i32 1, !dbg !505
  store ptr %22, ptr %1, align 4, !dbg !505
  br label %3, !dbg !493, !llvm.loop !506

23:                                               ; preds = %9
  ret i32 0, !dbg !508
}

; Function Attrs: nounwind optsize
define hidden ptr @k_heap_aligned_alloc(ptr noundef %0, i32 noundef %1, i32 noundef %2, [1 x i64] %3) #1 !dbg !509 {
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
  call void @llvm.dbg.declare(metadata ptr %19, metadata !513, metadata !DIExpression()), !dbg !532
  store i32 %1, ptr %20, align 4
  call void @llvm.dbg.declare(metadata ptr %20, metadata !514, metadata !DIExpression()), !dbg !533
  store i32 %2, ptr %21, align 4
  call void @llvm.dbg.declare(metadata ptr %21, metadata !515, metadata !DIExpression()), !dbg !534
  call void @llvm.dbg.declare(metadata ptr %18, metadata !516, metadata !DIExpression()), !dbg !535
  call void @llvm.lifetime.start.p0(i64 8, ptr %22) #7, !dbg !536
  call void @llvm.dbg.declare(metadata ptr %22, metadata !517, metadata !DIExpression()), !dbg !537
  %30 = getelementptr inbounds %struct.k_timeout_t, ptr %18, i32 0, i32 0, !dbg !538
  %31 = load [1 x i64], ptr %30, align 8, !dbg !538
  call void @sys_timepoint_calc(ptr sret(%struct.k_timepoint_t) align 8 %22, [1 x i64] %31) #6, !dbg !538
  call void @llvm.lifetime.start.p0(i64 4, ptr %23) #7, !dbg !539
  call void @llvm.dbg.declare(metadata ptr %23, metadata !524, metadata !DIExpression()), !dbg !540
  store ptr null, ptr %23, align 4, !dbg !540
  call void @llvm.lifetime.start.p0(i64 4, ptr %24) #7, !dbg !541
  call void @llvm.dbg.declare(metadata ptr %24, metadata !525, metadata !DIExpression()), !dbg !542
  %32 = load ptr, ptr %19, align 4, !dbg !543
  %33 = getelementptr inbounds %struct.k_heap, ptr %32, i32 0, i32 2, !dbg !544
  store ptr %33, ptr %15, align 4
  call void @llvm.dbg.declare(metadata ptr %15, metadata !545, metadata !DIExpression()), !dbg !552
  %34 = load ptr, ptr %15, align 4, !dbg !554
  call void @llvm.dbg.declare(metadata ptr %14, metadata !551, metadata !DIExpression()), !dbg !555
  call void @llvm.lifetime.start.p0(i64 4, ptr %11) #7, !dbg !556
  call void @llvm.dbg.declare(metadata ptr %11, metadata !562, metadata !DIExpression()), !dbg !564
  %35 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #7, !dbg !565, !srcloc !566
  store i32 %35, ptr %11, align 4, !dbg !565
  %36 = load i32, ptr %11, align 4, !dbg !567
  call void @llvm.lifetime.end.p0(i64 4, ptr %11) #7, !dbg !568
  store i32 %36, ptr %14, align 4, !dbg !569
  %37 = load ptr, ptr %15, align 4, !dbg !570
  store ptr %37, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !571, metadata !DIExpression()), !dbg !576
  %38 = load ptr, ptr %9, align 4, !dbg !578
  %39 = load ptr, ptr %15, align 4, !dbg !579
  store ptr %39, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !580, metadata !DIExpression()), !dbg !583
  %40 = load ptr, ptr %7, align 4, !dbg !585
  %41 = load i32, ptr %14, align 4, !dbg !586
  %42 = getelementptr inbounds %struct.z_spinlock_key, ptr %24, i32 0, i32 0, !dbg !587
  store i32 %41, ptr %42, align 4, !dbg !587
  br label %43, !dbg !588

43:                                               ; preds = %4
  br label %44, !dbg !589

44:                                               ; preds = %43
  br label %45, !dbg !589

45:                                               ; preds = %44
  call void @llvm.lifetime.start.p0(i64 1, ptr %25) #7, !dbg !591
  call void @llvm.dbg.declare(metadata ptr %25, metadata !530, metadata !DIExpression()), !dbg !592
  store i8 0, ptr %25, align 1, !dbg !592
  br label %46, !dbg !593

46:                                               ; preds = %71, %45
  %47 = load ptr, ptr %23, align 4, !dbg !594
  %48 = icmp eq ptr %47, null, !dbg !595
  br i1 %48, label %49, label %94, !dbg !593

49:                                               ; preds = %46
  %50 = load ptr, ptr %19, align 4, !dbg !596
  %51 = getelementptr inbounds %struct.k_heap, ptr %50, i32 0, i32 0, !dbg !598
  %52 = load i32, ptr %20, align 4, !dbg !599
  %53 = load i32, ptr %21, align 4, !dbg !600
  %54 = call ptr @sys_heap_aligned_alloc(ptr noundef %51, i32 noundef %52, i32 noundef %53) #6, !dbg !601
  store ptr %54, ptr %23, align 4, !dbg !602
  %55 = load ptr, ptr %23, align 4, !dbg !603
  %56 = icmp ne ptr %55, null, !dbg !605
  br i1 %56, label %62, label %57, !dbg !606

57:                                               ; preds = %49
  %58 = getelementptr inbounds %struct.k_timeout_t, ptr %18, i32 0, i32 0, !dbg !607
  %59 = load i64, ptr %58, align 8, !dbg !607
  %60 = getelementptr inbounds %struct.k_timeout_t, ptr %26, i32 0, i32 0, !dbg !608
  store i64 0, ptr %60, align 8, !dbg !608
  %61 = icmp eq i64 %59, 0, !dbg !609
  br i1 %61, label %62, label %63, !dbg !610

62:                                               ; preds = %57, %49
  br label %94, !dbg !611

63:                                               ; preds = %57
  %64 = load i8, ptr %25, align 1, !dbg !613, !range !615, !noundef !238
  %65 = trunc i8 %64 to i1, !dbg !613
  br i1 %65, label %70, label %66, !dbg !616

66:                                               ; preds = %63
  store i8 1, ptr %25, align 1, !dbg !617
  br label %67, !dbg !619

67:                                               ; preds = %66
  br label %68, !dbg !620

68:                                               ; preds = %67
  br label %69, !dbg !620

69:                                               ; preds = %68
  br label %71, !dbg !622

70:                                               ; preds = %63
  br label %71

71:                                               ; preds = %70, %69
  call void @llvm.lifetime.start.p0(i64 8, ptr %27) #7, !dbg !623
  %72 = getelementptr inbounds %struct.k_timepoint_t, ptr %22, i32 0, i32 0, !dbg !623
  %73 = load [1 x i64], ptr %72, align 8, !dbg !623
  call void @sys_timepoint_timeout(ptr sret(%struct.k_timeout_t) align 8 %27, [1 x i64] %73) #6, !dbg !623
  call void @llvm.memcpy.p0.p0.i32(ptr align 8 %18, ptr align 8 %27, i32 8, i1 false), !dbg !623
  call void @llvm.lifetime.end.p0(i64 8, ptr %27) #7, !dbg !623
  %74 = load ptr, ptr %19, align 4, !dbg !624
  %75 = getelementptr inbounds %struct.k_heap, ptr %74, i32 0, i32 2, !dbg !625
  %76 = load ptr, ptr %19, align 4, !dbg !626
  %77 = getelementptr inbounds %struct.k_heap, ptr %76, i32 0, i32 1, !dbg !627
  %78 = getelementptr inbounds %struct.z_spinlock_key, ptr %24, i32 0, i32 0, !dbg !628
  %79 = load [1 x i32], ptr %78, align 4, !dbg !628
  %80 = getelementptr inbounds %struct.k_timeout_t, ptr %18, i32 0, i32 0, !dbg !628
  %81 = load [1 x i64], ptr %80, align 8, !dbg !628
  %82 = call i32 @z_pend_curr(ptr noundef %75, [1 x i32] %79, ptr noundef %77, [1 x i64] %81) #6, !dbg !628
  call void @llvm.lifetime.start.p0(i64 4, ptr %28) #7, !dbg !629
  %83 = load ptr, ptr %19, align 4, !dbg !630
  %84 = getelementptr inbounds %struct.k_heap, ptr %83, i32 0, i32 2, !dbg !631
  store ptr %84, ptr %17, align 4
  call void @llvm.dbg.declare(metadata ptr %17, metadata !545, metadata !DIExpression()), !dbg !632
  %85 = load ptr, ptr %17, align 4, !dbg !634
  call void @llvm.dbg.declare(metadata ptr %16, metadata !551, metadata !DIExpression()), !dbg !635
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #7, !dbg !636
  call void @llvm.dbg.declare(metadata ptr %10, metadata !562, metadata !DIExpression()), !dbg !638
  %86 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #7, !dbg !639, !srcloc !566
  store i32 %86, ptr %10, align 4, !dbg !639
  %87 = load i32, ptr %10, align 4, !dbg !640
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #7, !dbg !641
  store i32 %87, ptr %16, align 4, !dbg !642
  %88 = load ptr, ptr %17, align 4, !dbg !643
  store ptr %88, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !571, metadata !DIExpression()), !dbg !644
  %89 = load ptr, ptr %8, align 4, !dbg !646
  %90 = load ptr, ptr %17, align 4, !dbg !647
  store ptr %90, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !580, metadata !DIExpression()), !dbg !648
  %91 = load ptr, ptr %6, align 4, !dbg !650
  %92 = load i32, ptr %16, align 4, !dbg !651
  %93 = getelementptr inbounds %struct.z_spinlock_key, ptr %28, i32 0, i32 0, !dbg !629
  store i32 %92, ptr %93, align 4, !dbg !629
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %24, ptr align 4 %28, i32 4, i1 false), !dbg !629
  call void @llvm.lifetime.end.p0(i64 4, ptr %28) #7, !dbg !629
  br label %46, !dbg !593, !llvm.loop !652

94:                                               ; preds = %62, %46
  br label %95, !dbg !654

95:                                               ; preds = %94
  br label %96, !dbg !655

96:                                               ; preds = %95
  br label %97, !dbg !655

97:                                               ; preds = %96
  %98 = load ptr, ptr %19, align 4, !dbg !657
  %99 = getelementptr inbounds %struct.k_heap, ptr %98, i32 0, i32 2, !dbg !658
  %100 = getelementptr inbounds %struct.z_spinlock_key, ptr %24, i32 0, i32 0, !dbg !659
  %101 = load [1 x i32], ptr %100, align 4, !dbg !659
  store [1 x i32] %101, ptr %12, align 4
  store ptr %99, ptr %13, align 4
  call void @llvm.dbg.declare(metadata ptr %13, metadata !660, metadata !DIExpression()), !dbg !666
  call void @llvm.dbg.declare(metadata ptr %12, metadata !665, metadata !DIExpression()), !dbg !668
  %102 = load ptr, ptr %13, align 4, !dbg !669
  %103 = load i32, ptr %12, align 4, !dbg !670
  store i32 %103, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !671, metadata !DIExpression()), !dbg !676
  %104 = load i32, ptr %5, align 4, !dbg !678
  %105 = icmp ne i32 %104, 0, !dbg !680
  br i1 %105, label %106, label %107, !dbg !681

106:                                              ; preds = %97
  br label %arch_irq_unlock.exit, !dbg !682

107:                                              ; preds = %97
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #7, !dbg !684, !srcloc !685
  br label %arch_irq_unlock.exit, !dbg !686

arch_irq_unlock.exit:                             ; preds = %106, %107
  %108 = load ptr, ptr %23, align 4, !dbg !687
  call void @llvm.lifetime.end.p0(i64 1, ptr %25) #7, !dbg !688
  call void @llvm.lifetime.end.p0(i64 4, ptr %24) #7, !dbg !688
  call void @llvm.lifetime.end.p0(i64 4, ptr %23) #7, !dbg !688
  call void @llvm.lifetime.end.p0(i64 8, ptr %22) #7, !dbg !688
  ret ptr %108, !dbg !689
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: optsize
declare !dbg !690 dso_local void @sys_timepoint_calc(ptr sret(%struct.k_timepoint_t) align 8, [1 x i64]) #3

; Function Attrs: optsize
declare !dbg !693 dso_local ptr @sys_heap_aligned_alloc(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: optsize
declare !dbg !696 dso_local void @sys_timepoint_timeout(ptr sret(%struct.k_timeout_t) align 8, [1 x i64]) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: optsize
declare !dbg !699 dso_local i32 @z_pend_curr(ptr noundef, [1 x i32], ptr noundef, [1 x i64]) #3

; Function Attrs: nounwind optsize
define hidden ptr @k_heap_alloc(ptr noundef %0, i32 noundef %1, [1 x i64] %2) #1 !dbg !703 {
  %4 = alloca %struct.k_timeout_t, align 8
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 4
  %8 = getelementptr inbounds %struct.k_timeout_t, ptr %4, i32 0, i32 0
  store [1 x i64] %2, ptr %8, align 8
  store ptr %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !707, metadata !DIExpression()), !dbg !711
  store i32 %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !708, metadata !DIExpression()), !dbg !712
  call void @llvm.dbg.declare(metadata ptr %4, metadata !709, metadata !DIExpression()), !dbg !713
  br label %9, !dbg !714

9:                                                ; preds = %3
  br label %10, !dbg !715

10:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #7, !dbg !717
  call void @llvm.dbg.declare(metadata ptr %7, metadata !710, metadata !DIExpression()), !dbg !718
  %11 = load ptr, ptr %5, align 4, !dbg !719
  %12 = load i32, ptr %6, align 4, !dbg !720
  %13 = getelementptr inbounds %struct.k_timeout_t, ptr %4, i32 0, i32 0, !dbg !721
  %14 = load [1 x i64], ptr %13, align 8, !dbg !721
  %15 = call ptr @k_heap_aligned_alloc(ptr noundef %11, i32 noundef 4, i32 noundef %12, [1 x i64] %14) #6, !dbg !721
  store ptr %15, ptr %7, align 4, !dbg !718
  br label %16, !dbg !722

16:                                               ; preds = %10
  br label %17, !dbg !723

17:                                               ; preds = %16
  br label %18, !dbg !723

18:                                               ; preds = %17
  %19 = load ptr, ptr %7, align 4, !dbg !725
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #7, !dbg !726
  ret ptr %19, !dbg !727
}

; Function Attrs: nounwind optsize
define hidden void @k_heap_free(ptr noundef %0, ptr noundef %1) #1 !dbg !728 {
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
  call void @llvm.dbg.declare(metadata ptr %11, metadata !732, metadata !DIExpression()), !dbg !735
  store ptr %1, ptr %12, align 4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !733, metadata !DIExpression()), !dbg !736
  call void @llvm.lifetime.start.p0(i64 4, ptr %13) #7, !dbg !737
  call void @llvm.dbg.declare(metadata ptr %13, metadata !734, metadata !DIExpression()), !dbg !738
  %14 = load ptr, ptr %11, align 4, !dbg !739
  %15 = getelementptr inbounds %struct.k_heap, ptr %14, i32 0, i32 2, !dbg !740
  store ptr %15, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !545, metadata !DIExpression()), !dbg !741
  %16 = load ptr, ptr %10, align 4, !dbg !743
  call void @llvm.dbg.declare(metadata ptr %9, metadata !551, metadata !DIExpression()), !dbg !744
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #7, !dbg !745
  call void @llvm.dbg.declare(metadata ptr %6, metadata !562, metadata !DIExpression()), !dbg !747
  %17 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #7, !dbg !748, !srcloc !566
  store i32 %17, ptr %6, align 4, !dbg !748
  %18 = load i32, ptr %6, align 4, !dbg !749
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #7, !dbg !750
  store i32 %18, ptr %9, align 4, !dbg !751
  %19 = load ptr, ptr %10, align 4, !dbg !752
  store ptr %19, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !571, metadata !DIExpression()), !dbg !753
  %20 = load ptr, ptr %5, align 4, !dbg !755
  %21 = load ptr, ptr %10, align 4, !dbg !756
  store ptr %21, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !580, metadata !DIExpression()), !dbg !757
  %22 = load ptr, ptr %4, align 4, !dbg !759
  %23 = load i32, ptr %9, align 4, !dbg !760
  %24 = getelementptr inbounds %struct.z_spinlock_key, ptr %13, i32 0, i32 0, !dbg !761
  store i32 %23, ptr %24, align 4, !dbg !761
  %25 = load ptr, ptr %11, align 4, !dbg !762
  %26 = getelementptr inbounds %struct.k_heap, ptr %25, i32 0, i32 0, !dbg !763
  %27 = load ptr, ptr %12, align 4, !dbg !764
  call void @sys_heap_free(ptr noundef %26, ptr noundef %27) #6, !dbg !765
  br label %28, !dbg !766

28:                                               ; preds = %2
  br label %29, !dbg !767

29:                                               ; preds = %28
  br label %30, !dbg !767

30:                                               ; preds = %29
  %31 = load ptr, ptr %11, align 4, !dbg !769
  %32 = getelementptr inbounds %struct.k_heap, ptr %31, i32 0, i32 1, !dbg !771
  %33 = call i32 @z_unpend_all(ptr noundef %32) #6, !dbg !772
  %34 = icmp ne i32 %33, 0, !dbg !773
  br i1 %34, label %35, label %40, !dbg !774

35:                                               ; preds = %30
  %36 = load ptr, ptr %11, align 4, !dbg !775
  %37 = getelementptr inbounds %struct.k_heap, ptr %36, i32 0, i32 2, !dbg !777
  %38 = getelementptr inbounds %struct.z_spinlock_key, ptr %13, i32 0, i32 0, !dbg !778
  %39 = load [1 x i32], ptr %38, align 4, !dbg !778
  call void @z_reschedule(ptr noundef %37, [1 x i32] %39) #6, !dbg !778
  br label %51, !dbg !779

40:                                               ; preds = %30
  %41 = load ptr, ptr %11, align 4, !dbg !780
  %42 = getelementptr inbounds %struct.k_heap, ptr %41, i32 0, i32 2, !dbg !782
  %43 = getelementptr inbounds %struct.z_spinlock_key, ptr %13, i32 0, i32 0, !dbg !783
  %44 = load [1 x i32], ptr %43, align 4, !dbg !783
  store [1 x i32] %44, ptr %7, align 4
  store ptr %42, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !660, metadata !DIExpression()), !dbg !784
  call void @llvm.dbg.declare(metadata ptr %7, metadata !665, metadata !DIExpression()), !dbg !786
  %45 = load ptr, ptr %8, align 4, !dbg !787
  %46 = load i32, ptr %7, align 4, !dbg !788
  store i32 %46, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !671, metadata !DIExpression()), !dbg !789
  %47 = load i32, ptr %3, align 4, !dbg !791
  %48 = icmp ne i32 %47, 0, !dbg !792
  br i1 %48, label %49, label %50, !dbg !793

49:                                               ; preds = %40
  br label %arch_irq_unlock.exit, !dbg !794

50:                                               ; preds = %40
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #7, !dbg !795, !srcloc !685
  br label %arch_irq_unlock.exit, !dbg !796

arch_irq_unlock.exit:                             ; preds = %49, %50
  br label %51

51:                                               ; preds = %arch_irq_unlock.exit, %35
  call void @llvm.lifetime.end.p0(i64 4, ptr %13) #7, !dbg !797
  ret void, !dbg !797
}

; Function Attrs: optsize
declare !dbg !798 dso_local void @sys_heap_free(ptr noundef, ptr noundef) #3

; Function Attrs: optsize
declare !dbg !801 dso_local i32 @z_unpend_all(ptr noundef) #3

; Function Attrs: optsize
declare !dbg !804 dso_local void @z_reschedule(ptr noundef, [1 x i32]) #3

; Function Attrs: optsize
declare !dbg !805 dso_local i64 @z_timeout_expires(ptr noundef) #3

; Function Attrs: optsize
declare !dbg !810 dso_local i64 @z_timeout_remaining(ptr noundef) #3

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @sys_sflist_is_empty(ptr noundef %0) #0 !dbg !811 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !816, metadata !DIExpression()), !dbg !817
  %3 = load ptr, ptr %2, align 4, !dbg !818
  %4 = call ptr @sys_sflist_peek_head(ptr noundef %3) #6, !dbg !819
  %5 = icmp eq ptr %4, null, !dbg !820
  ret i1 %5, !dbg !821
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @sys_sflist_peek_head(ptr noundef %0) #0 !dbg !822 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !826, metadata !DIExpression()), !dbg !827
  %3 = load ptr, ptr %2, align 4, !dbg !828
  %4 = getelementptr inbounds %struct._sflist, ptr %3, i32 0, i32 0, !dbg !829
  %5 = load ptr, ptr %4, align 4, !dbg !829
  ret ptr %5, !dbg !830
}

; Function Attrs: inlinehint nounwind optsize
define internal void @sys_dlist_init(ptr noundef %0) #0 !dbg !831 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !836, metadata !DIExpression()), !dbg !837
  %3 = load ptr, ptr %2, align 4, !dbg !838
  %4 = load ptr, ptr %2, align 4, !dbg !839
  %5 = getelementptr inbounds %struct._dnode, ptr %4, i32 0, i32 0, !dbg !840
  store ptr %3, ptr %5, align 4, !dbg !841
  %6 = load ptr, ptr %2, align 4, !dbg !842
  %7 = load ptr, ptr %2, align 4, !dbg !843
  %8 = getelementptr inbounds %struct._dnode, ptr %7, i32 0, i32 1, !dbg !844
  store ptr %6, ptr %8, align 4, !dbg !845
  ret void, !dbg !846
}

attributes #0 = { inlinehint nounwind optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { optsize }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!128, !129, !130, !131, !132, !133}
!llvm.ident = !{!134}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__init_statics_init_pre", scope: !2, file: !108, line: 56, type: !109, isLocal: true, isDefinition: true, align: 32)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !88, globals: !107, splitDebugInlining: false, nameTableKind: None)
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
!134 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
!135 = distinct !DISubprogram(name: "z_impl_k_object_access_grant", scope: !6, file: !6, line: 223, type: !136, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !244)
!136 = !DISubroutineType(types: !137)
!137 = !{null, !138, !140}
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 32)
!139 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 32)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_thread", file: !142, line: 250, size: 896, elements: !143)
!142 = !DIFile(filename: "include/zephyr/kernel/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!143 = !{!144, !202, !215, !216, !217, !218, !239}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !141, file: !142, line: 252, baseType: !145, size: 384)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_base", file: !142, line: 58, size: 384, elements: !146)
!146 = !{!147, !160, !168, !171, !172, !185, !188, !189}
!147 = !DIDerivedType(tag: DW_TAG_member, scope: !145, file: !142, line: 61, baseType: !148, size: 64)
!148 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !145, file: !142, line: 61, size: 64, elements: !149)
!149 = !{!150, !151}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_dlist", scope: !148, file: !142, line: 62, baseType: !92, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_rb", scope: !148, file: !142, line: 63, baseType: !152, size: 64)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rbnode", file: !153, line: 58, size: 64, elements: !154)
!153 = !DIFile(filename: "include/zephyr/sys/rb.h", directory: "/home/sri/zephyrproject/zephyr")
!154 = !{!155}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !152, file: !153, line: 60, baseType: !156, size: 64)
!156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !157, size: 64, elements: !158)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 32)
!158 = !{!159}
!159 = !DISubrange(count: 2)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "pended_on", scope: !145, file: !142, line: 69, baseType: !161, size: 32, offset: 64)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 32)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "_wait_q_t", file: !163, line: 243, baseType: !164)
!163 = !DIFile(filename: "include/zephyr/kernel_structs.h", directory: "/home/sri/zephyrproject/zephyr")
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !163, line: 241, size: 64, elements: !165)
!165 = !{!166}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !164, file: !163, line: 242, baseType: !167, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dlist_t", file: !93, line: 51, baseType: !94)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "user_options", scope: !145, file: !142, line: 72, baseType: !169, size: 8, offset: 96)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !170, line: 62, baseType: !7)
!170 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/stdint.h", directory: "")
!171 = !DIDerivedType(tag: DW_TAG_member, name: "thread_state", scope: !145, file: !142, line: 75, baseType: !169, size: 8, offset: 104)
!172 = !DIDerivedType(tag: DW_TAG_member, scope: !145, file: !142, line: 91, baseType: !173, size: 16, offset: 112)
!173 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !145, file: !142, line: 91, size: 16, elements: !174)
!174 = !{!175, !182}
!175 = !DIDerivedType(tag: DW_TAG_member, scope: !173, file: !142, line: 92, baseType: !176, size: 16)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !173, file: !142, line: 92, size: 16, elements: !177)
!177 = !{!178, !181}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !176, file: !142, line: 97, baseType: !179, size: 8)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !170, line: 56, baseType: !180)
!180 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "sched_locked", scope: !176, file: !142, line: 98, baseType: !169, size: 8, offset: 8)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "preempt", scope: !173, file: !142, line: 101, baseType: !183, size: 16)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !170, line: 63, baseType: !184)
!184 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "order_key", scope: !145, file: !142, line: 108, baseType: !186, size: 32, offset: 128)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !170, line: 64, baseType: !187)
!187 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "swap_data", scope: !145, file: !142, line: 132, baseType: !89, size: 32, offset: 160)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !145, file: !142, line: 136, baseType: !190, size: 192, offset: 192)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_timeout", file: !163, line: 254, size: 192, elements: !191)
!191 = !{!192, !193, !199}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !190, file: !163, line: 255, baseType: !92, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !190, file: !163, line: 256, baseType: !194, size: 32, offset: 64)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "_timeout_func_t", file: !163, line: 252, baseType: !195)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 32)
!196 = !DISubroutineType(types: !197)
!197 = !{null, !198}
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 32)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "dticks", scope: !190, file: !163, line: 259, baseType: !200, size: 64, offset: 128)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !170, line: 59, baseType: !201)
!201 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "callee_saved", scope: !141, file: !142, line: 255, baseType: !203, size: 288, offset: 384)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_callee_saved", file: !204, line: 25, size: 288, elements: !205)
!204 = !DIFile(filename: "include/zephyr/arch/arm/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!205 = !{!206, !207, !208, !209, !210, !211, !212, !213, !214}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "v1", scope: !203, file: !204, line: 26, baseType: !186, size: 32)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "v2", scope: !203, file: !204, line: 27, baseType: !186, size: 32, offset: 32)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "v3", scope: !203, file: !204, line: 28, baseType: !186, size: 32, offset: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "v4", scope: !203, file: !204, line: 29, baseType: !186, size: 32, offset: 96)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "v5", scope: !203, file: !204, line: 30, baseType: !186, size: 32, offset: 128)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "v6", scope: !203, file: !204, line: 31, baseType: !186, size: 32, offset: 160)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "v7", scope: !203, file: !204, line: 32, baseType: !186, size: 32, offset: 192)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "v8", scope: !203, file: !204, line: 33, baseType: !186, size: 32, offset: 224)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "psp", scope: !203, file: !204, line: 34, baseType: !186, size: 32, offset: 256)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "init_data", scope: !141, file: !142, line: 258, baseType: !89, size: 32, offset: 672)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "join_queue", scope: !141, file: !142, line: 261, baseType: !162, size: 64, offset: 704)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "errno_var", scope: !141, file: !142, line: 302, baseType: !90, size: 32, offset: 768)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "resource_pool", scope: !141, file: !142, line: 333, baseType: !219, size: 32, offset: 800)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 32)
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_heap", file: !221, line: 5291, size: 160, elements: !222)
!221 = !DIFile(filename: "include/zephyr/kernel.h", directory: "/home/sri/zephyrproject/zephyr")
!222 = !{!223, !234, !235}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !220, file: !221, line: 5292, baseType: !224, size: 96)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sys_heap", file: !225, line: 56, size: 96, elements: !226)
!225 = !DIFile(filename: "include/zephyr/sys/sys_heap.h", directory: "/home/sri/zephyrproject/zephyr")
!226 = !{!227, !230, !231}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !224, file: !225, line: 57, baseType: !228, size: 32)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 32)
!229 = !DICompositeType(tag: DW_TAG_structure_type, name: "z_heap", file: !225, line: 57, flags: DIFlagFwdDecl)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "init_mem", scope: !224, file: !225, line: 58, baseType: !89, size: 32, offset: 32)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "init_bytes", scope: !224, file: !225, line: 59, baseType: !232, size: 32, offset: 64)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !233, line: 46, baseType: !187)
!233 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/lib/clang/17/include/stddef.h", directory: "")
!234 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !220, file: !221, line: 5293, baseType: !162, size: 64, offset: 96)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !220, file: !221, line: 5294, baseType: !236, offset: 160)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_spinlock", file: !237, line: 45, elements: !238)
!237 = !DIFile(filename: "include/zephyr/spinlock.h", directory: "/home/sri/zephyrproject/zephyr")
!238 = !{}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !141, file: !142, line: 355, baseType: !240, size: 64, offset: 832)
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_arch", file: !204, line: 60, size: 64, elements: !241)
!241 = !{!242, !243}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "basepri", scope: !240, file: !204, line: 63, baseType: !186, size: 32)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "swap_return_value", scope: !240, file: !204, line: 66, baseType: !186, size: 32, offset: 32)
!244 = !{!245, !246}
!245 = !DILocalVariable(name: "object", arg: 1, scope: !135, file: !6, line: 223, type: !138)
!246 = !DILocalVariable(name: "thread", arg: 2, scope: !135, file: !6, line: 224, type: !140)
!247 = !DILocation(line: 223, column: 61, scope: !135)
!248 = !DILocation(line: 224, column: 24, scope: !135)
!249 = !DILocation(line: 226, column: 9, scope: !135)
!250 = !DILocation(line: 227, column: 9, scope: !135)
!251 = !DILocation(line: 228, column: 1, scope: !135)
!252 = distinct !DISubprogram(name: "z_impl_k_object_release", scope: !6, file: !6, line: 243, type: !253, scopeLine: 244, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !255)
!253 = !DISubroutineType(types: !254)
!254 = !{null, !138}
!255 = !{!256}
!256 = !DILocalVariable(name: "object", arg: 1, scope: !252, file: !6, line: 243, type: !138)
!257 = !DILocation(line: 243, column: 56, scope: !252)
!258 = !DILocation(line: 245, column: 9, scope: !252)
!259 = !DILocation(line: 246, column: 1, scope: !252)
!260 = distinct !DISubprogram(name: "z_impl_k_object_alloc", scope: !6, file: !6, line: 359, type: !261, scopeLine: 360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !263)
!261 = !DISubroutineType(types: !262)
!262 = !{!89, !5}
!263 = !{!264}
!264 = !DILocalVariable(name: "otype", arg: 1, scope: !260, file: !6, line: 359, type: !5)
!265 = !DILocation(line: 359, column: 58, scope: !260)
!266 = !DILocation(line: 361, column: 9, scope: !260)
!267 = !DILocation(line: 363, column: 2, scope: !260)
!268 = distinct !DISubprogram(name: "z_impl_k_object_alloc_size", scope: !6, file: !6, line: 366, type: !269, scopeLine: 368, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !271)
!269 = !DISubroutineType(types: !270)
!270 = !{!89, !5, !232}
!271 = !{!272, !273}
!272 = !DILocalVariable(name: "otype", arg: 1, scope: !268, file: !6, line: 366, type: !5)
!273 = !DILocalVariable(name: "size", arg: 2, scope: !268, file: !6, line: 367, type: !232)
!274 = !DILocation(line: 366, column: 63, scope: !268)
!275 = !DILocation(line: 367, column: 13, scope: !268)
!276 = !DILocation(line: 369, column: 9, scope: !268)
!277 = !DILocation(line: 370, column: 9, scope: !268)
!278 = !DILocation(line: 372, column: 2, scope: !268)
!279 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_expires_ticks", scope: !221, file: !221, line: 656, type: !280, scopeLine: 658, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !286)
!280 = !DISubroutineType(types: !281)
!281 = !{!282, !284}
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_ticks_t", file: !283, line: 46, baseType: !200)
!283 = !DIFile(filename: "include/zephyr/sys_clock.h", directory: "/home/sri/zephyrproject/zephyr")
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 32)
!285 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !141)
!286 = !{!287}
!287 = !DILocalVariable(name: "t", arg: 1, scope: !279, file: !221, line: 657, type: !284)
!288 = !DILocation(line: 657, column: 30, scope: !279)
!289 = !DILocation(line: 659, column: 28, scope: !279)
!290 = !DILocation(line: 659, column: 31, scope: !279)
!291 = !DILocation(line: 659, column: 36, scope: !279)
!292 = !DILocation(line: 659, column: 9, scope: !279)
!293 = !DILocation(line: 659, column: 2, scope: !279)
!294 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_remaining_ticks", scope: !221, file: !221, line: 671, type: !280, scopeLine: 673, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !295)
!295 = !{!296}
!296 = !DILocalVariable(name: "t", arg: 1, scope: !294, file: !221, line: 672, type: !284)
!297 = !DILocation(line: 672, column: 30, scope: !294)
!298 = !DILocation(line: 674, column: 30, scope: !294)
!299 = !DILocation(line: 674, column: 33, scope: !294)
!300 = !DILocation(line: 674, column: 38, scope: !294)
!301 = !DILocation(line: 674, column: 9, scope: !294)
!302 = !DILocation(line: 674, column: 2, scope: !294)
!303 = distinct !DISubprogram(name: "z_impl_k_timer_expires_ticks", scope: !221, file: !221, line: 1634, type: !304, scopeLine: 1636, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !325)
!304 = !DISubroutineType(types: !305)
!305 = !{!282, !306}
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 32)
!307 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !308)
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_timer", file: !221, line: 1439, size: 448, elements: !309)
!309 = !{!310, !311, !312, !317, !318, !323, !324}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !308, file: !221, line: 1445, baseType: !190, size: 192)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !308, file: !221, line: 1448, baseType: !162, size: 64, offset: 192)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_fn", scope: !308, file: !221, line: 1451, baseType: !313, size: 32, offset: 256)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 32)
!314 = !DISubroutineType(types: !315)
!315 = !{null, !316}
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 32)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "stop_fn", scope: !308, file: !221, line: 1454, baseType: !313, size: 32, offset: 288)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !308, file: !221, line: 1457, baseType: !319, size: 64, offset: 320)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_timeout_t", file: !283, line: 67, baseType: !320)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !283, line: 65, size: 64, elements: !321)
!321 = !{!322}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "ticks", scope: !320, file: !283, line: 66, baseType: !282, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !308, file: !221, line: 1460, baseType: !186, size: 32, offset: 384)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !308, file: !221, line: 1463, baseType: !89, size: 32, offset: 416)
!325 = !{!326}
!326 = !DILocalVariable(name: "timer", arg: 1, scope: !303, file: !221, line: 1635, type: !306)
!327 = !DILocation(line: 1635, column: 34, scope: !303)
!328 = !DILocation(line: 1637, column: 28, scope: !303)
!329 = !DILocation(line: 1637, column: 35, scope: !303)
!330 = !DILocation(line: 1637, column: 9, scope: !303)
!331 = !DILocation(line: 1637, column: 2, scope: !303)
!332 = distinct !DISubprogram(name: "z_impl_k_timer_remaining_ticks", scope: !221, file: !221, line: 1649, type: !304, scopeLine: 1651, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !333)
!333 = !{!334}
!334 = !DILocalVariable(name: "timer", arg: 1, scope: !332, file: !221, line: 1650, type: !306)
!335 = !DILocation(line: 1650, column: 34, scope: !332)
!336 = !DILocation(line: 1652, column: 30, scope: !332)
!337 = !DILocation(line: 1652, column: 37, scope: !332)
!338 = !DILocation(line: 1652, column: 9, scope: !332)
!339 = !DILocation(line: 1652, column: 2, scope: !332)
!340 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_set", scope: !221, file: !221, line: 1689, type: !341, scopeLine: 1691, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !343)
!341 = !DISubroutineType(types: !342)
!342 = !{null, !316, !89}
!343 = !{!344, !345}
!344 = !DILocalVariable(name: "timer", arg: 1, scope: !340, file: !221, line: 1689, type: !316)
!345 = !DILocalVariable(name: "user_data", arg: 2, scope: !340, file: !221, line: 1690, type: !89)
!346 = !DILocation(line: 1689, column: 65, scope: !340)
!347 = !DILocation(line: 1690, column: 19, scope: !340)
!348 = !DILocation(line: 1692, column: 21, scope: !340)
!349 = !DILocation(line: 1692, column: 2, scope: !340)
!350 = !DILocation(line: 1692, column: 9, scope: !340)
!351 = !DILocation(line: 1692, column: 19, scope: !340)
!352 = !DILocation(line: 1693, column: 1, scope: !340)
!353 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_get", scope: !221, file: !221, line: 1704, type: !354, scopeLine: 1705, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !356)
!354 = !DISubroutineType(types: !355)
!355 = !{!89, !306}
!356 = !{!357}
!357 = !DILocalVariable(name: "timer", arg: 1, scope: !353, file: !221, line: 1704, type: !306)
!358 = !DILocation(line: 1704, column: 72, scope: !353)
!359 = !DILocation(line: 1706, column: 9, scope: !353)
!360 = !DILocation(line: 1706, column: 16, scope: !353)
!361 = !DILocation(line: 1706, column: 2, scope: !353)
!362 = distinct !DISubprogram(name: "z_impl_k_queue_is_empty", scope: !221, file: !221, line: 2071, type: !363, scopeLine: 2072, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !383)
!363 = !DISubroutineType(types: !364)
!364 = !{!90, !365}
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 32)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_queue", file: !221, line: 1830, size: 128, elements: !367)
!367 = !{!368, !381, !382}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "data_q", scope: !366, file: !221, line: 1831, baseType: !369, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sflist_t", file: !370, line: 60, baseType: !371)
!370 = !DIFile(filename: "include/zephyr/sys/sflist.h", directory: "/home/sri/zephyrproject/zephyr")
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sflist", file: !370, line: 53, size: 64, elements: !372)
!372 = !{!373, !380}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !371, file: !370, line: 54, baseType: !374, size: 32)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 32)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sfnode_t", file: !370, line: 50, baseType: !376)
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sfnode", file: !370, line: 44, size: 32, elements: !377)
!377 = !{!378}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "next_and_flags", scope: !376, file: !370, line: 45, baseType: !379, size: 32)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "unative_t", file: !370, line: 40, baseType: !186)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !371, file: !370, line: 55, baseType: !374, size: 32, offset: 32)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !366, file: !221, line: 1832, baseType: !236, offset: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !366, file: !221, line: 1833, baseType: !162, size: 64, offset: 64)
!383 = !{!384}
!384 = !DILocalVariable(name: "queue", arg: 1, scope: !362, file: !221, line: 2071, type: !365)
!385 = !DILocation(line: 2071, column: 59, scope: !362)
!386 = !DILocation(line: 2073, column: 35, scope: !362)
!387 = !DILocation(line: 2073, column: 42, scope: !362)
!388 = !DILocation(line: 2073, column: 14, scope: !362)
!389 = !DILocation(line: 2073, column: 9, scope: !362)
!390 = !DILocation(line: 2073, column: 2, scope: !362)
!391 = distinct !DISubprogram(name: "z_impl_k_sem_count_get", scope: !221, file: !221, line: 3209, type: !392, scopeLine: 3210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !400)
!392 = !DISubroutineType(types: !393)
!393 = !{!187, !394}
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 32)
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sem", file: !221, line: 3092, size: 128, elements: !396)
!396 = !{!397, !398, !399}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !395, file: !221, line: 3093, baseType: !162, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !395, file: !221, line: 3094, baseType: !187, size: 32, offset: 64)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !395, file: !221, line: 3095, baseType: !187, size: 32, offset: 96)
!400 = !{!401}
!401 = !DILocalVariable(name: "sem", arg: 1, scope: !391, file: !221, line: 3209, type: !394)
!402 = !DILocation(line: 3209, column: 65, scope: !391)
!403 = !DILocation(line: 3211, column: 9, scope: !391)
!404 = !DILocation(line: 3211, column: 14, scope: !391)
!405 = !DILocation(line: 3211, column: 2, scope: !391)
!406 = distinct !DISubprogram(name: "z_impl_k_msgq_num_free_get", scope: !221, file: !221, line: 4649, type: !407, scopeLine: 4650, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !424)
!407 = !DISubroutineType(types: !408)
!408 = !{!186, !409}
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 32)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_msgq", file: !221, line: 4390, size: 320, elements: !411)
!411 = !{!412, !413, !414, !415, !416, !419, !420, !421, !422, !423}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !410, file: !221, line: 4392, baseType: !162, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !410, file: !221, line: 4394, baseType: !236, offset: 64)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "msg_size", scope: !410, file: !221, line: 4396, baseType: !232, size: 32, offset: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !410, file: !221, line: 4398, baseType: !186, size: 32, offset: 96)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_start", scope: !410, file: !221, line: 4400, baseType: !417, size: 32, offset: 128)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 32)
!418 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_end", scope: !410, file: !221, line: 4402, baseType: !417, size: 32, offset: 160)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "read_ptr", scope: !410, file: !221, line: 4404, baseType: !417, size: 32, offset: 192)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "write_ptr", scope: !410, file: !221, line: 4406, baseType: !417, size: 32, offset: 224)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "used_msgs", scope: !410, file: !221, line: 4408, baseType: !186, size: 32, offset: 256)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !410, file: !221, line: 4413, baseType: !169, size: 8, offset: 288)
!424 = !{!425}
!425 = !DILocalVariable(name: "msgq", arg: 1, scope: !406, file: !221, line: 4649, type: !409)
!426 = !DILocation(line: 4649, column: 66, scope: !406)
!427 = !DILocation(line: 4651, column: 9, scope: !406)
!428 = !DILocation(line: 4651, column: 15, scope: !406)
!429 = !DILocation(line: 4651, column: 26, scope: !406)
!430 = !DILocation(line: 4651, column: 32, scope: !406)
!431 = !DILocation(line: 4651, column: 24, scope: !406)
!432 = !DILocation(line: 4651, column: 2, scope: !406)
!433 = distinct !DISubprogram(name: "z_impl_k_msgq_num_used_get", scope: !221, file: !221, line: 4665, type: !407, scopeLine: 4666, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !434)
!434 = !{!435}
!435 = !DILocalVariable(name: "msgq", arg: 1, scope: !433, file: !221, line: 4665, type: !409)
!436 = !DILocation(line: 4665, column: 66, scope: !433)
!437 = !DILocation(line: 4667, column: 9, scope: !433)
!438 = !DILocation(line: 4667, column: 15, scope: !433)
!439 = !DILocation(line: 4667, column: 2, scope: !433)
!440 = distinct !DISubprogram(name: "k_heap_init", scope: !108, file: !108, line: 15, type: !441, scopeLine: 16, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !445)
!441 = !DISubroutineType(types: !442)
!442 = !{null, !219, !89, !443}
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !444, line: 51, baseType: !187)
!444 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/string.h", directory: "")
!445 = !{!446, !447, !448}
!446 = !DILocalVariable(name: "h", arg: 1, scope: !440, file: !108, line: 15, type: !219)
!447 = !DILocalVariable(name: "mem", arg: 2, scope: !440, file: !108, line: 15, type: !89)
!448 = !DILocalVariable(name: "bytes", arg: 3, scope: !440, file: !108, line: 15, type: !443)
!449 = !DILocation(line: 15, column: 33, scope: !440)
!450 = !DILocation(line: 15, column: 42, scope: !440)
!451 = !DILocation(line: 15, column: 54, scope: !440)
!452 = !DILocation(line: 17, column: 16, scope: !440)
!453 = !DILocation(line: 17, column: 19, scope: !440)
!454 = !DILocation(line: 17, column: 2, scope: !440)
!455 = !DILocation(line: 18, column: 17, scope: !440)
!456 = !DILocation(line: 18, column: 20, scope: !440)
!457 = !DILocation(line: 18, column: 26, scope: !440)
!458 = !DILocation(line: 18, column: 31, scope: !440)
!459 = !DILocation(line: 18, column: 2, scope: !440)
!460 = !DILocation(line: 20, column: 2, scope: !440)
!461 = !DILocation(line: 20, column: 7, scope: !462)
!462 = distinct !DILexicalBlock(scope: !440, file: !108, line: 20, column: 5)
!463 = !DILocation(line: 21, column: 1, scope: !440)
!464 = distinct !DISubprogram(name: "z_waitq_init", scope: !465, file: !465, line: 47, type: !466, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !468)
!465 = !DIFile(filename: "kernel/include/wait_q.h", directory: "/home/sri/zephyrproject/zephyr")
!466 = !DISubroutineType(types: !467)
!467 = !{null, !161}
!468 = !{!469}
!469 = !DILocalVariable(name: "w", arg: 1, scope: !464, file: !465, line: 47, type: !161)
!470 = !DILocation(line: 47, column: 44, scope: !464)
!471 = !DILocation(line: 49, column: 18, scope: !464)
!472 = !DILocation(line: 49, column: 21, scope: !464)
!473 = !DILocation(line: 49, column: 2, scope: !464)
!474 = !DILocation(line: 50, column: 1, scope: !464)
!475 = !DISubprogram(name: "sys_heap_init", scope: !225, file: !225, line: 102, type: !476, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !238)
!476 = !DISubroutineType(types: !477)
!477 = !{null, !478, !89, !232}
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 32)
!479 = distinct !DISubprogram(name: "statics_init", scope: !108, file: !108, line: 23, type: !118, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !480)
!480 = !{!481}
!481 = !DILocalVariable(name: "h", scope: !482, file: !108, line: 25, type: !219)
!482 = distinct !DILexicalBlock(scope: !479, file: !108, line: 25, column: 86)
!483 = !DILocation(line: 25, column: 91, scope: !482)
!484 = !DILocation(line: 25, column: 107, scope: !482)
!485 = !DILocation(line: 25, column: 139, scope: !486)
!486 = distinct !DILexicalBlock(scope: !487, file: !108, line: 25, column: 132)
!487 = distinct !DILexicalBlock(scope: !482, file: !108, line: 25, column: 86)
!488 = !DILocation(line: 25, column: 141, scope: !486)
!489 = !DILocation(line: 25, column: 136, scope: !490)
!490 = distinct !DILexicalBlock(scope: !486, file: !108, line: 25, column: 134)
!491 = !DILocation(line: 25, column: 161, scope: !486)
!492 = !DILocation(line: 25, column: 86, scope: !482)
!493 = !DILocation(line: 25, column: 86, scope: !487)
!494 = !DILocation(line: 50, column: 16, scope: !495)
!495 = distinct !DILexicalBlock(scope: !496, file: !108, line: 49, column: 3)
!496 = distinct !DILexicalBlock(scope: !487, file: !108, line: 25, column: 170)
!497 = !DILocation(line: 50, column: 19, scope: !495)
!498 = !DILocation(line: 50, column: 22, scope: !495)
!499 = !DILocation(line: 50, column: 27, scope: !495)
!500 = !DILocation(line: 50, column: 37, scope: !495)
!501 = !DILocation(line: 50, column: 40, scope: !495)
!502 = !DILocation(line: 50, column: 45, scope: !495)
!503 = !DILocation(line: 50, column: 4, scope: !495)
!504 = !DILocation(line: 52, column: 2, scope: !496)
!505 = !DILocation(line: 25, column: 166, scope: !487)
!506 = distinct !{!506, !492, !507}
!507 = !DILocation(line: 52, column: 2, scope: !482)
!508 = !DILocation(line: 53, column: 2, scope: !479)
!509 = distinct !DISubprogram(name: "k_heap_aligned_alloc", scope: !108, file: !108, line: 65, type: !510, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !512)
!510 = !DISubroutineType(types: !511)
!511 = !{!89, !219, !443, !443, !319}
!512 = !{!513, !514, !515, !516, !517, !524, !525, !530}
!513 = !DILocalVariable(name: "h", arg: 1, scope: !509, file: !108, line: 65, type: !219)
!514 = !DILocalVariable(name: "align", arg: 2, scope: !509, file: !108, line: 65, type: !443)
!515 = !DILocalVariable(name: "bytes", arg: 3, scope: !509, file: !108, line: 65, type: !443)
!516 = !DILocalVariable(name: "timeout", arg: 4, scope: !509, file: !108, line: 66, type: !319)
!517 = !DILocalVariable(name: "end", scope: !509, file: !108, line: 68, type: !518)
!518 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_timepoint_t", file: !283, line: 219, baseType: !519)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !283, line: 219, size: 64, elements: !520)
!520 = !{!521}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "tick", scope: !519, file: !283, line: 219, baseType: !522, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !170, line: 65, baseType: !523)
!523 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!524 = !DILocalVariable(name: "ret", scope: !509, file: !108, line: 69, type: !89)
!525 = !DILocalVariable(name: "key", scope: !509, file: !108, line: 71, type: !526)
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_spinlock_key_t", file: !237, line: 108, baseType: !527)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "z_spinlock_key", file: !237, line: 34, size: 32, elements: !528)
!528 = !{!529}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !527, file: !237, line: 35, baseType: !90, size: 32)
!530 = !DILocalVariable(name: "blocked_alloc", scope: !509, file: !108, line: 77, type: !531)
!531 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!532 = !DILocation(line: 65, column: 43, scope: !509)
!533 = !DILocation(line: 65, column: 53, scope: !509)
!534 = !DILocation(line: 65, column: 67, scope: !509)
!535 = !DILocation(line: 66, column: 16, scope: !509)
!536 = !DILocation(line: 68, column: 2, scope: !509)
!537 = !DILocation(line: 68, column: 16, scope: !509)
!538 = !DILocation(line: 68, column: 22, scope: !509)
!539 = !DILocation(line: 69, column: 2, scope: !509)
!540 = !DILocation(line: 69, column: 8, scope: !509)
!541 = !DILocation(line: 71, column: 2, scope: !509)
!542 = !DILocation(line: 71, column: 19, scope: !509)
!543 = !DILocation(line: 71, column: 38, scope: !509)
!544 = !DILocation(line: 71, column: 41, scope: !509)
!545 = !DILocalVariable(name: "l", arg: 1, scope: !546, file: !237, line: 160, type: !549)
!546 = distinct !DISubprogram(name: "k_spin_lock", scope: !237, file: !237, line: 160, type: !547, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !550)
!547 = !DISubroutineType(types: !548)
!548 = !{!526, !549}
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 32)
!550 = !{!545, !551}
!551 = !DILocalVariable(name: "k", scope: !546, file: !237, line: 163, type: !526)
!552 = !DILocation(line: 160, column: 94, scope: !546, inlinedAt: !553)
!553 = distinct !DILocation(line: 71, column: 25, scope: !509)
!554 = !DILocation(line: 162, column: 9, scope: !546, inlinedAt: !553)
!555 = !DILocation(line: 163, column: 19, scope: !546, inlinedAt: !553)
!556 = !DILocation(line: 44, column: 2, scope: !557, inlinedAt: !563)
!557 = distinct !DISubprogram(name: "arch_irq_lock", scope: !558, file: !558, line: 42, type: !559, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !561)
!558 = !DIFile(filename: "include/zephyr/arch/arm/asm_inline_gcc.h", directory: "/home/sri/zephyrproject/zephyr")
!559 = !DISubroutineType(types: !560)
!560 = !{!187}
!561 = !{!562}
!562 = !DILocalVariable(name: "key", scope: !557, file: !558, line: 44, type: !187)
!563 = distinct !DILocation(line: 169, column: 10, scope: !546, inlinedAt: !553)
!564 = !DILocation(line: 44, column: 15, scope: !557, inlinedAt: !563)
!565 = !DILocation(line: 48, column: 2, scope: !557, inlinedAt: !563)
!566 = !{i64 66898}
!567 = !DILocation(line: 80, column: 9, scope: !557, inlinedAt: !563)
!568 = !DILocation(line: 81, column: 1, scope: !557, inlinedAt: !563)
!569 = !DILocation(line: 169, column: 8, scope: !546, inlinedAt: !553)
!570 = !DILocation(line: 171, column: 26, scope: !546, inlinedAt: !553)
!571 = !DILocalVariable(name: "l", arg: 1, scope: !572, file: !237, line: 110, type: !549)
!572 = distinct !DISubprogram(name: "z_spinlock_validate_pre", scope: !237, file: !237, line: 110, type: !573, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !575)
!573 = !DISubroutineType(types: !574)
!574 = !{null, !549}
!575 = !{!571}
!576 = !DILocation(line: 110, column: 94, scope: !572, inlinedAt: !577)
!577 = distinct !DILocation(line: 171, column: 2, scope: !546, inlinedAt: !553)
!578 = !DILocation(line: 112, column: 9, scope: !572, inlinedAt: !577)
!579 = !DILocation(line: 177, column: 27, scope: !546, inlinedAt: !553)
!580 = !DILocalVariable(name: "l", arg: 1, scope: !581, file: !237, line: 121, type: !549)
!581 = distinct !DISubprogram(name: "z_spinlock_validate_post", scope: !237, file: !237, line: 121, type: !573, scopeLine: 122, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !582)
!582 = !{!580}
!583 = !DILocation(line: 121, column: 95, scope: !581, inlinedAt: !584)
!584 = distinct !DILocation(line: 177, column: 2, scope: !546, inlinedAt: !553)
!585 = !DILocation(line: 123, column: 9, scope: !581, inlinedAt: !584)
!586 = !DILocation(line: 179, column: 2, scope: !546, inlinedAt: !553)
!587 = !DILocation(line: 71, column: 25, scope: !509)
!588 = !DILocation(line: 73, column: 2, scope: !509)
!589 = !DILocation(line: 73, column: 7, scope: !590)
!590 = distinct !DILexicalBlock(scope: !509, file: !108, line: 73, column: 5)
!591 = !DILocation(line: 77, column: 2, scope: !509)
!592 = !DILocation(line: 77, column: 8, scope: !509)
!593 = !DILocation(line: 79, column: 2, scope: !509)
!594 = !DILocation(line: 79, column: 9, scope: !509)
!595 = !DILocation(line: 79, column: 13, scope: !509)
!596 = !DILocation(line: 80, column: 33, scope: !597)
!597 = distinct !DILexicalBlock(scope: !509, file: !108, line: 79, column: 19)
!598 = !DILocation(line: 80, column: 36, scope: !597)
!599 = !DILocation(line: 80, column: 42, scope: !597)
!600 = !DILocation(line: 80, column: 49, scope: !597)
!601 = !DILocation(line: 80, column: 9, scope: !597)
!602 = !DILocation(line: 80, column: 7, scope: !597)
!603 = !DILocation(line: 83, column: 8, scope: !604)
!604 = distinct !DILexicalBlock(scope: !597, file: !108, line: 82, column: 7)
!605 = !DILocation(line: 83, column: 12, scope: !604)
!606 = !DILocation(line: 83, column: 18, scope: !604)
!607 = !DILocation(line: 83, column: 32, scope: !604)
!608 = !DILocation(line: 83, column: 57, scope: !604)
!609 = !DILocation(line: 83, column: 38, scope: !604)
!610 = !DILocation(line: 82, column: 7, scope: !597)
!611 = !DILocation(line: 84, column: 4, scope: !612)
!612 = distinct !DILexicalBlock(scope: !604, file: !108, line: 83, column: 71)
!613 = !DILocation(line: 87, column: 8, scope: !614)
!614 = distinct !DILexicalBlock(scope: !597, file: !108, line: 87, column: 7)
!615 = !{i8 0, i8 2}
!616 = !DILocation(line: 87, column: 7, scope: !597)
!617 = !DILocation(line: 88, column: 18, scope: !618)
!618 = distinct !DILexicalBlock(scope: !614, file: !108, line: 87, column: 23)
!619 = !DILocation(line: 90, column: 4, scope: !618)
!620 = !DILocation(line: 90, column: 9, scope: !621)
!621 = distinct !DILexicalBlock(scope: !618, file: !108, line: 90, column: 7)
!622 = !DILocation(line: 91, column: 3, scope: !618)
!623 = !DILocation(line: 97, column: 13, scope: !597)
!624 = !DILocation(line: 98, column: 23, scope: !597)
!625 = !DILocation(line: 98, column: 26, scope: !597)
!626 = !DILocation(line: 98, column: 38, scope: !597)
!627 = !DILocation(line: 98, column: 41, scope: !597)
!628 = !DILocation(line: 98, column: 10, scope: !597)
!629 = !DILocation(line: 99, column: 9, scope: !597)
!630 = !DILocation(line: 99, column: 22, scope: !597)
!631 = !DILocation(line: 99, column: 25, scope: !597)
!632 = !DILocation(line: 160, column: 94, scope: !546, inlinedAt: !633)
!633 = distinct !DILocation(line: 99, column: 9, scope: !597)
!634 = !DILocation(line: 162, column: 9, scope: !546, inlinedAt: !633)
!635 = !DILocation(line: 163, column: 19, scope: !546, inlinedAt: !633)
!636 = !DILocation(line: 44, column: 2, scope: !557, inlinedAt: !637)
!637 = distinct !DILocation(line: 169, column: 10, scope: !546, inlinedAt: !633)
!638 = !DILocation(line: 44, column: 15, scope: !557, inlinedAt: !637)
!639 = !DILocation(line: 48, column: 2, scope: !557, inlinedAt: !637)
!640 = !DILocation(line: 80, column: 9, scope: !557, inlinedAt: !637)
!641 = !DILocation(line: 81, column: 1, scope: !557, inlinedAt: !637)
!642 = !DILocation(line: 169, column: 8, scope: !546, inlinedAt: !633)
!643 = !DILocation(line: 171, column: 26, scope: !546, inlinedAt: !633)
!644 = !DILocation(line: 110, column: 94, scope: !572, inlinedAt: !645)
!645 = distinct !DILocation(line: 171, column: 2, scope: !546, inlinedAt: !633)
!646 = !DILocation(line: 112, column: 9, scope: !572, inlinedAt: !645)
!647 = !DILocation(line: 177, column: 27, scope: !546, inlinedAt: !633)
!648 = !DILocation(line: 121, column: 95, scope: !581, inlinedAt: !649)
!649 = distinct !DILocation(line: 177, column: 2, scope: !546, inlinedAt: !633)
!650 = !DILocation(line: 123, column: 9, scope: !581, inlinedAt: !649)
!651 = !DILocation(line: 179, column: 2, scope: !546, inlinedAt: !633)
!652 = distinct !{!652, !593, !653}
!653 = !DILocation(line: 100, column: 2, scope: !509)
!654 = !DILocation(line: 102, column: 2, scope: !509)
!655 = !DILocation(line: 102, column: 7, scope: !656)
!656 = distinct !DILexicalBlock(scope: !509, file: !108, line: 102, column: 5)
!657 = !DILocation(line: 104, column: 17, scope: !509)
!658 = !DILocation(line: 104, column: 20, scope: !509)
!659 = !DILocation(line: 104, column: 2, scope: !509)
!660 = !DILocalVariable(name: "l", arg: 1, scope: !661, file: !237, line: 235, type: !549)
!661 = distinct !DISubprogram(name: "k_spin_unlock", scope: !237, file: !237, line: 235, type: !662, scopeLine: 237, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !664)
!662 = !DISubroutineType(types: !663)
!663 = !{null, !549, !526}
!664 = !{!660, !665}
!665 = !DILocalVariable(name: "key", arg: 2, scope: !661, file: !237, line: 236, type: !526)
!666 = !DILocation(line: 235, column: 84, scope: !661, inlinedAt: !667)
!667 = distinct !DILocation(line: 104, column: 2, scope: !509)
!668 = !DILocation(line: 236, column: 23, scope: !661, inlinedAt: !667)
!669 = !DILocation(line: 238, column: 9, scope: !661, inlinedAt: !667)
!670 = !DILocation(line: 261, column: 22, scope: !661, inlinedAt: !667)
!671 = !DILocalVariable(name: "key", arg: 1, scope: !672, file: !558, line: 88, type: !187)
!672 = distinct !DISubprogram(name: "arch_irq_unlock", scope: !558, file: !558, line: 88, type: !673, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !675)
!673 = !DISubroutineType(types: !674)
!674 = !{null, !187}
!675 = !{!671}
!676 = !DILocation(line: 88, column: 80, scope: !672, inlinedAt: !677)
!677 = distinct !DILocation(line: 261, column: 2, scope: !661, inlinedAt: !667)
!678 = !DILocation(line: 91, column: 6, scope: !679, inlinedAt: !677)
!679 = distinct !DILexicalBlock(scope: !672, file: !558, line: 91, column: 6)
!680 = !DILocation(line: 91, column: 10, scope: !679, inlinedAt: !677)
!681 = !DILocation(line: 91, column: 6, scope: !672, inlinedAt: !677)
!682 = !DILocation(line: 92, column: 3, scope: !683, inlinedAt: !677)
!683 = distinct !DILexicalBlock(scope: !679, file: !558, line: 91, column: 17)
!684 = !DILocation(line: 94, column: 2, scope: !672, inlinedAt: !677)
!685 = !{i64 67202}
!686 = !DILocation(line: 114, column: 1, scope: !672, inlinedAt: !677)
!687 = !DILocation(line: 105, column: 9, scope: !509)
!688 = !DILocation(line: 106, column: 1, scope: !509)
!689 = !DILocation(line: 105, column: 2, scope: !509)
!690 = !DISubprogram(name: "sys_timepoint_calc", scope: !283, file: !283, line: 237, type: !691, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !238)
!691 = !DISubroutineType(types: !692)
!692 = !{!518, !319}
!693 = !DISubprogram(name: "sys_heap_aligned_alloc", scope: !225, file: !225, line: 136, type: !694, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !238)
!694 = !DISubroutineType(types: !695)
!695 = !{!89, !478, !232, !232}
!696 = !DISubprogram(name: "sys_timepoint_timeout", scope: !283, file: !283, line: 252, type: !697, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !238)
!697 = !DISubroutineType(types: !698)
!698 = !{!319, !518}
!699 = !DISubprogram(name: "z_pend_curr", scope: !700, file: !700, line: 46, type: !701, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !238)
!700 = !DIFile(filename: "kernel/include/ksched.h", directory: "/home/sri/zephyrproject/zephyr")
!701 = !DISubroutineType(types: !702)
!702 = !{!90, !549, !526, !161, !319}
!703 = distinct !DISubprogram(name: "k_heap_alloc", scope: !108, file: !108, line: 108, type: !704, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !706)
!704 = !DISubroutineType(types: !705)
!705 = !{!89, !219, !443, !319}
!706 = !{!707, !708, !709, !710}
!707 = !DILocalVariable(name: "h", arg: 1, scope: !703, file: !108, line: 108, type: !219)
!708 = !DILocalVariable(name: "bytes", arg: 2, scope: !703, file: !108, line: 108, type: !443)
!709 = !DILocalVariable(name: "timeout", arg: 3, scope: !703, file: !108, line: 108, type: !319)
!710 = !DILocalVariable(name: "ret", scope: !703, file: !108, line: 112, type: !89)
!711 = !DILocation(line: 108, column: 35, scope: !703)
!712 = !DILocation(line: 108, column: 45, scope: !703)
!713 = !DILocation(line: 108, column: 64, scope: !703)
!714 = !DILocation(line: 110, column: 2, scope: !703)
!715 = !DILocation(line: 110, column: 7, scope: !716)
!716 = distinct !DILexicalBlock(scope: !703, file: !108, line: 110, column: 5)
!717 = !DILocation(line: 112, column: 2, scope: !703)
!718 = !DILocation(line: 112, column: 8, scope: !703)
!719 = !DILocation(line: 112, column: 35, scope: !703)
!720 = !DILocation(line: 112, column: 54, scope: !703)
!721 = !DILocation(line: 112, column: 14, scope: !703)
!722 = !DILocation(line: 114, column: 2, scope: !703)
!723 = !DILocation(line: 114, column: 7, scope: !724)
!724 = distinct !DILexicalBlock(scope: !703, file: !108, line: 114, column: 5)
!725 = !DILocation(line: 116, column: 9, scope: !703)
!726 = !DILocation(line: 117, column: 1, scope: !703)
!727 = !DILocation(line: 116, column: 2, scope: !703)
!728 = distinct !DISubprogram(name: "k_heap_free", scope: !108, file: !108, line: 119, type: !729, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !731)
!729 = !DISubroutineType(types: !730)
!730 = !{null, !219, !89}
!731 = !{!732, !733, !734}
!732 = !DILocalVariable(name: "h", arg: 1, scope: !728, file: !108, line: 119, type: !219)
!733 = !DILocalVariable(name: "mem", arg: 2, scope: !728, file: !108, line: 119, type: !89)
!734 = !DILocalVariable(name: "key", scope: !728, file: !108, line: 121, type: !526)
!735 = !DILocation(line: 119, column: 33, scope: !728)
!736 = !DILocation(line: 119, column: 42, scope: !728)
!737 = !DILocation(line: 121, column: 2, scope: !728)
!738 = !DILocation(line: 121, column: 19, scope: !728)
!739 = !DILocation(line: 121, column: 38, scope: !728)
!740 = !DILocation(line: 121, column: 41, scope: !728)
!741 = !DILocation(line: 160, column: 94, scope: !546, inlinedAt: !742)
!742 = distinct !DILocation(line: 121, column: 25, scope: !728)
!743 = !DILocation(line: 162, column: 9, scope: !546, inlinedAt: !742)
!744 = !DILocation(line: 163, column: 19, scope: !546, inlinedAt: !742)
!745 = !DILocation(line: 44, column: 2, scope: !557, inlinedAt: !746)
!746 = distinct !DILocation(line: 169, column: 10, scope: !546, inlinedAt: !742)
!747 = !DILocation(line: 44, column: 15, scope: !557, inlinedAt: !746)
!748 = !DILocation(line: 48, column: 2, scope: !557, inlinedAt: !746)
!749 = !DILocation(line: 80, column: 9, scope: !557, inlinedAt: !746)
!750 = !DILocation(line: 81, column: 1, scope: !557, inlinedAt: !746)
!751 = !DILocation(line: 169, column: 8, scope: !546, inlinedAt: !742)
!752 = !DILocation(line: 171, column: 26, scope: !546, inlinedAt: !742)
!753 = !DILocation(line: 110, column: 94, scope: !572, inlinedAt: !754)
!754 = distinct !DILocation(line: 171, column: 2, scope: !546, inlinedAt: !742)
!755 = !DILocation(line: 112, column: 9, scope: !572, inlinedAt: !754)
!756 = !DILocation(line: 177, column: 27, scope: !546, inlinedAt: !742)
!757 = !DILocation(line: 121, column: 95, scope: !581, inlinedAt: !758)
!758 = distinct !DILocation(line: 177, column: 2, scope: !546, inlinedAt: !742)
!759 = !DILocation(line: 123, column: 9, scope: !581, inlinedAt: !758)
!760 = !DILocation(line: 179, column: 2, scope: !546, inlinedAt: !742)
!761 = !DILocation(line: 121, column: 25, scope: !728)
!762 = !DILocation(line: 123, column: 17, scope: !728)
!763 = !DILocation(line: 123, column: 20, scope: !728)
!764 = !DILocation(line: 123, column: 26, scope: !728)
!765 = !DILocation(line: 123, column: 2, scope: !728)
!766 = !DILocation(line: 125, column: 2, scope: !728)
!767 = !DILocation(line: 125, column: 7, scope: !768)
!768 = distinct !DILexicalBlock(scope: !728, file: !108, line: 125, column: 5)
!769 = !DILocation(line: 126, column: 25, scope: !770)
!770 = distinct !DILexicalBlock(scope: !728, file: !108, line: 126, column: 6)
!771 = !DILocation(line: 126, column: 28, scope: !770)
!772 = !DILocation(line: 126, column: 11, scope: !770)
!773 = !DILocation(line: 126, column: 36, scope: !770)
!774 = !DILocation(line: 126, column: 6, scope: !728)
!775 = !DILocation(line: 127, column: 17, scope: !776)
!776 = distinct !DILexicalBlock(scope: !770, file: !108, line: 126, column: 42)
!777 = !DILocation(line: 127, column: 20, scope: !776)
!778 = !DILocation(line: 127, column: 3, scope: !776)
!779 = !DILocation(line: 128, column: 2, scope: !776)
!780 = !DILocation(line: 129, column: 18, scope: !781)
!781 = distinct !DILexicalBlock(scope: !770, file: !108, line: 128, column: 9)
!782 = !DILocation(line: 129, column: 21, scope: !781)
!783 = !DILocation(line: 129, column: 3, scope: !781)
!784 = !DILocation(line: 235, column: 84, scope: !661, inlinedAt: !785)
!785 = distinct !DILocation(line: 129, column: 3, scope: !781)
!786 = !DILocation(line: 236, column: 23, scope: !661, inlinedAt: !785)
!787 = !DILocation(line: 238, column: 9, scope: !661, inlinedAt: !785)
!788 = !DILocation(line: 261, column: 22, scope: !661, inlinedAt: !785)
!789 = !DILocation(line: 88, column: 80, scope: !672, inlinedAt: !790)
!790 = distinct !DILocation(line: 261, column: 2, scope: !661, inlinedAt: !785)
!791 = !DILocation(line: 91, column: 6, scope: !679, inlinedAt: !790)
!792 = !DILocation(line: 91, column: 10, scope: !679, inlinedAt: !790)
!793 = !DILocation(line: 91, column: 6, scope: !672, inlinedAt: !790)
!794 = !DILocation(line: 92, column: 3, scope: !683, inlinedAt: !790)
!795 = !DILocation(line: 94, column: 2, scope: !672, inlinedAt: !790)
!796 = !DILocation(line: 114, column: 1, scope: !672, inlinedAt: !790)
!797 = !DILocation(line: 131, column: 1, scope: !728)
!798 = !DISubprogram(name: "sys_heap_free", scope: !225, file: !225, line: 151, type: !799, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !238)
!799 = !DISubroutineType(types: !800)
!800 = !{null, !478, !89}
!801 = !DISubprogram(name: "z_unpend_all", scope: !700, file: !700, line: 55, type: !802, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !238)
!802 = !DISubroutineType(types: !803)
!803 = !{!90, !161}
!804 = !DISubprogram(name: "z_reschedule", scope: !700, file: !700, line: 51, type: !662, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !238)
!805 = !DISubprogram(name: "z_timeout_expires", scope: !221, file: !221, line: 642, type: !806, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !238)
!806 = !DISubroutineType(types: !807)
!807 = !{!282, !808}
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 32)
!809 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !190)
!810 = !DISubprogram(name: "z_timeout_remaining", scope: !221, file: !221, line: 643, type: !806, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !238)
!811 = distinct !DISubprogram(name: "sys_sflist_is_empty", scope: !370, file: !370, line: 335, type: !812, scopeLine: 335, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !815)
!812 = !DISubroutineType(types: !813)
!813 = !{!531, !814}
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 32)
!815 = !{!816}
!816 = !DILocalVariable(name: "list", arg: 1, scope: !811, file: !370, line: 335, type: !814)
!817 = !DILocation(line: 335, column: 55, scope: !811)
!818 = !DILocation(line: 335, column: 92, scope: !811)
!819 = !DILocation(line: 335, column: 71, scope: !811)
!820 = !DILocation(line: 335, column: 98, scope: !811)
!821 = !DILocation(line: 335, column: 63, scope: !811)
!822 = distinct !DISubprogram(name: "sys_sflist_peek_head", scope: !370, file: !370, line: 255, type: !823, scopeLine: 256, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !825)
!823 = !DISubroutineType(types: !824)
!824 = !{!374, !814}
!825 = !{!826}
!826 = !DILocalVariable(name: "list", arg: 1, scope: !822, file: !370, line: 255, type: !814)
!827 = !DILocation(line: 255, column: 64, scope: !822)
!828 = !DILocation(line: 257, column: 9, scope: !822)
!829 = !DILocation(line: 257, column: 15, scope: !822)
!830 = !DILocation(line: 257, column: 2, scope: !822)
!831 = distinct !DISubprogram(name: "sys_dlist_init", scope: !93, file: !93, line: 203, type: !832, scopeLine: 204, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !835)
!832 = !DISubroutineType(types: !833)
!833 = !{null, !834}
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 32)
!835 = !{!836}
!836 = !DILocalVariable(name: "list", arg: 1, scope: !831, file: !93, line: 203, type: !834)
!837 = !DILocation(line: 203, column: 48, scope: !831)
!838 = !DILocation(line: 205, column: 30, scope: !831)
!839 = !DILocation(line: 205, column: 2, scope: !831)
!840 = !DILocation(line: 205, column: 8, scope: !831)
!841 = !DILocation(line: 205, column: 13, scope: !831)
!842 = !DILocation(line: 206, column: 30, scope: !831)
!843 = !DILocation(line: 206, column: 2, scope: !831)
!844 = !DILocation(line: 206, column: 8, scope: !831)
!845 = !DILocation(line: 206, column: 13, scope: !831)
!846 = !DILocation(line: 207, column: 1, scope: !831)
