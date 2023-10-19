; ModuleID = '../bc_files/heap.bc'
source_filename = "/home/sri/zephyrproject/zephyr/lib/os/heap.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-arm-none-eabi"

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
%struct.k_spinlock = type {}
%struct.k_sem = type { %struct._wait_q_t, i32, i32 }
%struct.k_msgq = type { %struct._wait_q_t, %struct.k_spinlock, i32, i32, ptr, ptr, ptr, ptr, i32, i8 }
%struct.sys_heap = type { ptr, ptr, i32 }
%struct.chunk_unit_t = type { [8 x i8] }
%struct.z_heap = type { [2 x i32], i32, i32, [0 x %struct.z_heap_bucket] }
%struct.z_heap_bucket = type { i32 }

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_k_object_access_grant(ptr noundef %0, ptr noundef %1) #0 !dbg !142 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !257, metadata !DIExpression()), !dbg !259
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !258, metadata !DIExpression()), !dbg !260
  %5 = load ptr, ptr %3, align 4, !dbg !261
  %6 = load ptr, ptr %4, align 4, !dbg !262
  ret void, !dbg !263
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_k_object_release(ptr noundef %0) #0 !dbg !264 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !268, metadata !DIExpression()), !dbg !269
  %3 = load ptr, ptr %2, align 4, !dbg !270
  ret void, !dbg !271
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_impl_k_object_alloc(i8 noundef zeroext %0) #0 !dbg !272 {
  %2 = alloca i8, align 1
  store i8 %0, ptr %2, align 1
  call void @llvm.dbg.declare(metadata ptr %2, metadata !276, metadata !DIExpression()), !dbg !277
  %3 = load i8, ptr %2, align 1, !dbg !278
  ret ptr null, !dbg !279
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_impl_k_object_alloc_size(i8 noundef zeroext %0, i32 noundef %1) #0 !dbg !280 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8 %0, ptr %3, align 1
  call void @llvm.dbg.declare(metadata ptr %3, metadata !284, metadata !DIExpression()), !dbg !286
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !285, metadata !DIExpression()), !dbg !287
  %5 = load i8, ptr %3, align 1, !dbg !288
  %6 = load i32, ptr %4, align 4, !dbg !289
  ret ptr null, !dbg !290
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_thread_timeout_expires_ticks(ptr noundef %0) #0 !dbg !291 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !299, metadata !DIExpression()), !dbg !300
  %3 = load ptr, ptr %2, align 4, !dbg !301
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !302
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !303
  %6 = call i64 @z_timeout_expires(ptr noundef %5) #6, !dbg !304
  ret i64 %6, !dbg !305
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_thread_timeout_remaining_ticks(ptr noundef %0) #0 !dbg !306 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !308, metadata !DIExpression()), !dbg !309
  %3 = load ptr, ptr %2, align 4, !dbg !310
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !311
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !312
  %6 = call i64 @z_timeout_remaining(ptr noundef %5) #6, !dbg !313
  ret i64 %6, !dbg !314
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_timer_expires_ticks(ptr noundef %0) #0 !dbg !315 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !338, metadata !DIExpression()), !dbg !339
  %3 = load ptr, ptr %2, align 4, !dbg !340
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !341
  %5 = call i64 @z_timeout_expires(ptr noundef %4) #6, !dbg !342
  ret i64 %5, !dbg !343
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_timer_remaining_ticks(ptr noundef %0) #0 !dbg !344 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !346, metadata !DIExpression()), !dbg !347
  %3 = load ptr, ptr %2, align 4, !dbg !348
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !349
  %5 = call i64 @z_timeout_remaining(ptr noundef %4) #6, !dbg !350
  ret i64 %5, !dbg !351
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_k_timer_user_data_set(ptr noundef %0, ptr noundef %1) #0 !dbg !352 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !356, metadata !DIExpression()), !dbg !358
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !357, metadata !DIExpression()), !dbg !359
  %5 = load ptr, ptr %4, align 4, !dbg !360
  %6 = load ptr, ptr %3, align 4, !dbg !361
  %7 = getelementptr inbounds %struct.k_timer, ptr %6, i32 0, i32 6, !dbg !362
  store ptr %5, ptr %7, align 4, !dbg !363
  ret void, !dbg !364
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_impl_k_timer_user_data_get(ptr noundef %0) #0 !dbg !365 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !369, metadata !DIExpression()), !dbg !370
  %3 = load ptr, ptr %2, align 4, !dbg !371
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 6, !dbg !372
  %5 = load ptr, ptr %4, align 4, !dbg !372
  ret ptr %5, !dbg !373
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_queue_is_empty(ptr noundef %0) #0 !dbg !374 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !396, metadata !DIExpression()), !dbg !397
  %3 = load ptr, ptr %2, align 4, !dbg !398
  %4 = getelementptr inbounds %struct.k_queue, ptr %3, i32 0, i32 0, !dbg !399
  %5 = call zeroext i1 @sys_sflist_is_empty(ptr noundef %4) #6, !dbg !400
  %6 = zext i1 %5 to i32, !dbg !401
  ret i32 %6, !dbg !402
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_sem_count_get(ptr noundef %0) #0 !dbg !403 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !413, metadata !DIExpression()), !dbg !414
  %3 = load ptr, ptr %2, align 4, !dbg !415
  %4 = getelementptr inbounds %struct.k_sem, ptr %3, i32 0, i32 1, !dbg !416
  %5 = load i32, ptr %4, align 4, !dbg !416
  ret i32 %5, !dbg !417
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_msgq_num_free_get(ptr noundef %0) #0 !dbg !418 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !436, metadata !DIExpression()), !dbg !437
  %3 = load ptr, ptr %2, align 4, !dbg !438
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 3, !dbg !439
  %5 = load i32, ptr %4, align 4, !dbg !439
  %6 = load ptr, ptr %2, align 4, !dbg !440
  %7 = getelementptr inbounds %struct.k_msgq, ptr %6, i32 0, i32 8, !dbg !441
  %8 = load i32, ptr %7, align 4, !dbg !441
  %9 = sub i32 %5, %8, !dbg !442
  ret i32 %9, !dbg !443
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_msgq_num_used_get(ptr noundef %0) #0 !dbg !444 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !446, metadata !DIExpression()), !dbg !447
  %3 = load ptr, ptr %2, align 4, !dbg !448
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 8, !dbg !449
  %5 = load i32, ptr %4, align 4, !dbg !449
  ret i32 %5, !dbg !450
}

; Function Attrs: nounwind optsize
define hidden void @sys_heap_free(ptr noundef %0, ptr noundef %1) #1 !dbg !451 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !457, metadata !DIExpression()), !dbg !461
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !458, metadata !DIExpression()), !dbg !462
  %7 = load ptr, ptr %4, align 4, !dbg !463
  %8 = icmp eq ptr %7, null, !dbg !465
  br i1 %8, label %9, label %10, !dbg !466

9:                                                ; preds = %2
  br label %21, !dbg !467

10:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #7, !dbg !469
  call void @llvm.dbg.declare(metadata ptr %5, metadata !459, metadata !DIExpression()), !dbg !470
  %11 = load ptr, ptr %3, align 4, !dbg !471
  %12 = getelementptr inbounds %struct.sys_heap, ptr %11, i32 0, i32 0, !dbg !472
  %13 = load ptr, ptr %12, align 4, !dbg !472
  store ptr %13, ptr %5, align 4, !dbg !470
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #7, !dbg !473
  call void @llvm.dbg.declare(metadata ptr %6, metadata !460, metadata !DIExpression()), !dbg !474
  %14 = load ptr, ptr %5, align 4, !dbg !475
  %15 = load ptr, ptr %4, align 4, !dbg !476
  %16 = call i32 @mem_to_chunkid(ptr noundef %14, ptr noundef %15) #6, !dbg !477
  store i32 %16, ptr %6, align 4, !dbg !474
  %17 = load ptr, ptr %5, align 4, !dbg !478
  %18 = load i32, ptr %6, align 4, !dbg !479
  call void @set_chunk_used(ptr noundef %17, i32 noundef %18, i1 noundef zeroext false) #6, !dbg !480
  %19 = load ptr, ptr %5, align 4, !dbg !481
  %20 = load i32, ptr %6, align 4, !dbg !482
  call void @free_chunk(ptr noundef %19, i32 noundef %20) #6, !dbg !483
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #7, !dbg !484
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #7, !dbg !484
  br label %21, !dbg !484

21:                                               ; preds = %10, %9
  ret void, !dbg !484
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind optsize
define internal i32 @mem_to_chunkid(ptr noundef %0, ptr noundef %1) #1 !dbg !485 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !489, metadata !DIExpression()), !dbg !493
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !490, metadata !DIExpression()), !dbg !494
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #7, !dbg !495
  call void @llvm.dbg.declare(metadata ptr %5, metadata !491, metadata !DIExpression()), !dbg !496
  %7 = load ptr, ptr %4, align 4, !dbg !497
  store ptr %7, ptr %5, align 4, !dbg !496
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #7, !dbg !495
  call void @llvm.dbg.declare(metadata ptr %6, metadata !492, metadata !DIExpression()), !dbg !498
  %8 = load ptr, ptr %3, align 4, !dbg !499
  %9 = call ptr @chunk_buf(ptr noundef %8) #6, !dbg !500
  store ptr %9, ptr %6, align 4, !dbg !498
  %10 = load ptr, ptr %5, align 4, !dbg !501
  %11 = load ptr, ptr %3, align 4, !dbg !502
  %12 = call i32 @chunk_header_bytes(ptr noundef %11) #6, !dbg !503
  %13 = sub i32 0, %12, !dbg !504
  %14 = getelementptr inbounds i8, ptr %10, i32 %13, !dbg !504
  %15 = load ptr, ptr %6, align 4, !dbg !505
  %16 = ptrtoint ptr %14 to i32, !dbg !506
  %17 = ptrtoint ptr %15 to i32, !dbg !506
  %18 = sub i32 %16, %17, !dbg !506
  %19 = udiv i32 %18, 8, !dbg !507
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #7, !dbg !508
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #7, !dbg !508
  ret i32 %19, !dbg !509
}

; Function Attrs: inlinehint nounwind optsize
define internal void @set_chunk_used(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) #0 !dbg !510 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !515, metadata !DIExpression()), !dbg !520
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !516, metadata !DIExpression()), !dbg !521
  %9 = zext i1 %2 to i8
  store i8 %9, ptr %6, align 1
  call void @llvm.dbg.declare(metadata ptr %6, metadata !517, metadata !DIExpression()), !dbg !522
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #7, !dbg !523
  call void @llvm.dbg.declare(metadata ptr %7, metadata !518, metadata !DIExpression()), !dbg !524
  %10 = load ptr, ptr %4, align 4, !dbg !525
  %11 = call ptr @chunk_buf(ptr noundef %10) #6, !dbg !526
  store ptr %11, ptr %7, align 4, !dbg !524
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #7, !dbg !527
  call void @llvm.dbg.declare(metadata ptr %8, metadata !519, metadata !DIExpression()), !dbg !528
  %12 = load ptr, ptr %7, align 4, !dbg !529
  %13 = load i32, ptr %5, align 4, !dbg !530
  %14 = getelementptr inbounds %struct.chunk_unit_t, ptr %12, i32 %13, !dbg !529
  store ptr %14, ptr %8, align 4, !dbg !528
  %15 = load ptr, ptr %4, align 4, !dbg !531
  %16 = call zeroext i1 @big_heap(ptr noundef %15) #6, !dbg !533
  br i1 %16, label %17, label %31, !dbg !534

17:                                               ; preds = %3
  %18 = load i8, ptr %6, align 1, !dbg !535, !range !538, !noundef !250
  %19 = trunc i8 %18 to i1, !dbg !535
  br i1 %19, label %20, label %25, !dbg !539

20:                                               ; preds = %17
  %21 = load ptr, ptr %8, align 4, !dbg !540
  %22 = getelementptr inbounds i32, ptr %21, i32 1, !dbg !542
  %23 = load i32, ptr %22, align 4, !dbg !543
  %24 = or i32 %23, 1, !dbg !543
  store i32 %24, ptr %22, align 4, !dbg !543
  br label %30, !dbg !544

25:                                               ; preds = %17
  %26 = load ptr, ptr %8, align 4, !dbg !545
  %27 = getelementptr inbounds i32, ptr %26, i32 1, !dbg !547
  %28 = load i32, ptr %27, align 4, !dbg !548
  %29 = and i32 %28, -2, !dbg !548
  store i32 %29, ptr %27, align 4, !dbg !548
  br label %30

30:                                               ; preds = %25, %20
  br label %49, !dbg !549

31:                                               ; preds = %3
  %32 = load i8, ptr %6, align 1, !dbg !550, !range !538, !noundef !250
  %33 = trunc i8 %32 to i1, !dbg !550
  br i1 %33, label %34, label %41, !dbg !553

34:                                               ; preds = %31
  %35 = load ptr, ptr %8, align 4, !dbg !554
  %36 = getelementptr inbounds i16, ptr %35, i32 1, !dbg !556
  %37 = load i16, ptr %36, align 2, !dbg !557
  %38 = zext i16 %37 to i32, !dbg !557
  %39 = or i32 %38, 1, !dbg !557
  %40 = trunc i32 %39 to i16, !dbg !557
  store i16 %40, ptr %36, align 2, !dbg !557
  br label %48, !dbg !558

41:                                               ; preds = %31
  %42 = load ptr, ptr %8, align 4, !dbg !559
  %43 = getelementptr inbounds i16, ptr %42, i32 1, !dbg !561
  %44 = load i16, ptr %43, align 2, !dbg !562
  %45 = zext i16 %44 to i32, !dbg !562
  %46 = and i32 %45, -2, !dbg !562
  %47 = trunc i32 %46 to i16, !dbg !562
  store i16 %47, ptr %43, align 2, !dbg !562
  br label %48

48:                                               ; preds = %41, %34
  br label %49

49:                                               ; preds = %48, %30
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #7, !dbg !563
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #7, !dbg !563
  ret void, !dbg !563
}

; Function Attrs: nounwind optsize
define internal void @free_chunk(ptr noundef %0, i32 noundef %1) #1 !dbg !564 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !568, metadata !DIExpression()), !dbg !570
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !569, metadata !DIExpression()), !dbg !571
  %5 = load ptr, ptr %3, align 4, !dbg !572
  %6 = load ptr, ptr %3, align 4, !dbg !574
  %7 = load i32, ptr %4, align 4, !dbg !575
  %8 = call i32 @right_chunk(ptr noundef %6, i32 noundef %7) #6, !dbg !576
  %9 = call zeroext i1 @chunk_used(ptr noundef %5, i32 noundef %8) #6, !dbg !577
  br i1 %9, label %20, label %10, !dbg !578

10:                                               ; preds = %2
  %11 = load ptr, ptr %3, align 4, !dbg !579
  %12 = load ptr, ptr %3, align 4, !dbg !581
  %13 = load i32, ptr %4, align 4, !dbg !582
  %14 = call i32 @right_chunk(ptr noundef %12, i32 noundef %13) #6, !dbg !583
  call void @free_list_remove(ptr noundef %11, i32 noundef %14) #6, !dbg !584
  %15 = load ptr, ptr %3, align 4, !dbg !585
  %16 = load i32, ptr %4, align 4, !dbg !586
  %17 = load ptr, ptr %3, align 4, !dbg !587
  %18 = load i32, ptr %4, align 4, !dbg !588
  %19 = call i32 @right_chunk(ptr noundef %17, i32 noundef %18) #6, !dbg !589
  call void @merge_chunks(ptr noundef %15, i32 noundef %16, i32 noundef %19) #6, !dbg !590
  br label %20, !dbg !591

20:                                               ; preds = %10, %2
  %21 = load ptr, ptr %3, align 4, !dbg !592
  %22 = load ptr, ptr %3, align 4, !dbg !594
  %23 = load i32, ptr %4, align 4, !dbg !595
  %24 = call i32 @left_chunk(ptr noundef %22, i32 noundef %23) #6, !dbg !596
  %25 = call zeroext i1 @chunk_used(ptr noundef %21, i32 noundef %24) #6, !dbg !597
  br i1 %25, label %39, label %26, !dbg !598

26:                                               ; preds = %20
  %27 = load ptr, ptr %3, align 4, !dbg !599
  %28 = load ptr, ptr %3, align 4, !dbg !601
  %29 = load i32, ptr %4, align 4, !dbg !602
  %30 = call i32 @left_chunk(ptr noundef %28, i32 noundef %29) #6, !dbg !603
  call void @free_list_remove(ptr noundef %27, i32 noundef %30) #6, !dbg !604
  %31 = load ptr, ptr %3, align 4, !dbg !605
  %32 = load ptr, ptr %3, align 4, !dbg !606
  %33 = load i32, ptr %4, align 4, !dbg !607
  %34 = call i32 @left_chunk(ptr noundef %32, i32 noundef %33) #6, !dbg !608
  %35 = load i32, ptr %4, align 4, !dbg !609
  call void @merge_chunks(ptr noundef %31, i32 noundef %34, i32 noundef %35) #6, !dbg !610
  %36 = load ptr, ptr %3, align 4, !dbg !611
  %37 = load i32, ptr %4, align 4, !dbg !612
  %38 = call i32 @left_chunk(ptr noundef %36, i32 noundef %37) #6, !dbg !613
  store i32 %38, ptr %4, align 4, !dbg !614
  br label %39, !dbg !615

39:                                               ; preds = %26, %20
  %40 = load ptr, ptr %3, align 4, !dbg !616
  %41 = load i32, ptr %4, align 4, !dbg !617
  call void @free_list_add(ptr noundef %40, i32 noundef %41) #6, !dbg !618
  ret void, !dbg !619
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind optsize
define hidden i32 @sys_heap_usable_size(ptr noundef %0, ptr noundef %1) #1 !dbg !620 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !624, metadata !DIExpression()), !dbg !631
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !625, metadata !DIExpression()), !dbg !632
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #7, !dbg !633
  call void @llvm.dbg.declare(metadata ptr %5, metadata !626, metadata !DIExpression()), !dbg !634
  %10 = load ptr, ptr %3, align 4, !dbg !635
  %11 = getelementptr inbounds %struct.sys_heap, ptr %10, i32 0, i32 0, !dbg !636
  %12 = load ptr, ptr %11, align 4, !dbg !636
  store ptr %12, ptr %5, align 4, !dbg !634
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #7, !dbg !637
  call void @llvm.dbg.declare(metadata ptr %6, metadata !627, metadata !DIExpression()), !dbg !638
  %13 = load ptr, ptr %5, align 4, !dbg !639
  %14 = load ptr, ptr %4, align 4, !dbg !640
  %15 = call i32 @mem_to_chunkid(ptr noundef %13, ptr noundef %14) #6, !dbg !641
  store i32 %15, ptr %6, align 4, !dbg !638
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #7, !dbg !642
  call void @llvm.dbg.declare(metadata ptr %7, metadata !628, metadata !DIExpression()), !dbg !643
  %16 = load ptr, ptr %4, align 4, !dbg !644
  %17 = ptrtoint ptr %16 to i32, !dbg !645
  store i32 %17, ptr %7, align 4, !dbg !643
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #7, !dbg !646
  call void @llvm.dbg.declare(metadata ptr %8, metadata !629, metadata !DIExpression()), !dbg !647
  %18 = load ptr, ptr %5, align 4, !dbg !648
  %19 = call ptr @chunk_buf(ptr noundef %18) #6, !dbg !649
  %20 = load i32, ptr %6, align 4, !dbg !650
  %21 = getelementptr inbounds %struct.chunk_unit_t, ptr %19, i32 %20, !dbg !649
  %22 = ptrtoint ptr %21 to i32, !dbg !651
  store i32 %22, ptr %8, align 4, !dbg !647
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #7, !dbg !652
  call void @llvm.dbg.declare(metadata ptr %9, metadata !630, metadata !DIExpression()), !dbg !653
  %23 = load ptr, ptr %5, align 4, !dbg !654
  %24 = load i32, ptr %6, align 4, !dbg !655
  %25 = call i32 @chunk_size(ptr noundef %23, i32 noundef %24) #6, !dbg !656
  %26 = mul i32 %25, 8, !dbg !657
  store i32 %26, ptr %9, align 4, !dbg !653
  %27 = load i32, ptr %9, align 4, !dbg !658
  %28 = load i32, ptr %7, align 4, !dbg !659
  %29 = load i32, ptr %8, align 4, !dbg !660
  %30 = sub i32 %28, %29, !dbg !661
  %31 = sub i32 %27, %30, !dbg !662
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #7, !dbg !663
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #7, !dbg !663
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #7, !dbg !663
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #7, !dbg !663
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #7, !dbg !663
  ret i32 %31, !dbg !664
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @chunk_buf(ptr noundef %0) #0 !dbg !665 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !669, metadata !DIExpression()), !dbg !670
  %3 = load ptr, ptr %2, align 4, !dbg !671
  ret ptr %3, !dbg !672
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @chunk_size(ptr noundef %0, i32 noundef %1) #0 !dbg !673 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !678, metadata !DIExpression()), !dbg !680
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !679, metadata !DIExpression()), !dbg !681
  %5 = load ptr, ptr %3, align 4, !dbg !682
  %6 = load i32, ptr %4, align 4, !dbg !683
  %7 = call i32 @chunk_field(ptr noundef %5, i32 noundef %6, i8 noundef zeroext 1) #6, !dbg !684
  %8 = lshr i32 %7, 1, !dbg !685
  ret i32 %8, !dbg !686
}

; Function Attrs: nounwind optsize
define hidden ptr @sys_heap_alloc(ptr noundef %0, i32 noundef %1) #1 !dbg !687 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !691, metadata !DIExpression()), !dbg !697
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !692, metadata !DIExpression()), !dbg !698
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #7, !dbg !699
  call void @llvm.dbg.declare(metadata ptr %6, metadata !693, metadata !DIExpression()), !dbg !700
  %11 = load ptr, ptr %4, align 4, !dbg !701
  %12 = getelementptr inbounds %struct.sys_heap, ptr %11, i32 0, i32 0, !dbg !702
  %13 = load ptr, ptr %12, align 4, !dbg !702
  store ptr %13, ptr %6, align 4, !dbg !700
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #7, !dbg !703
  call void @llvm.dbg.declare(metadata ptr %7, metadata !694, metadata !DIExpression()), !dbg !704
  %14 = load i32, ptr %5, align 4, !dbg !705
  %15 = icmp eq i32 %14, 0, !dbg !707
  br i1 %15, label %20, label %16, !dbg !708

16:                                               ; preds = %2
  %17 = load ptr, ptr %6, align 4, !dbg !709
  %18 = load i32, ptr %5, align 4, !dbg !710
  %19 = call zeroext i1 @size_too_big(ptr noundef %17, i32 noundef %18) #6, !dbg !711
  br i1 %19, label %20, label %21, !dbg !712

20:                                               ; preds = %16, %2
  store ptr null, ptr %3, align 4, !dbg !713
  store i32 1, ptr %8, align 4
  br label %55, !dbg !713

21:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #7, !dbg !715
  call void @llvm.dbg.declare(metadata ptr %9, metadata !695, metadata !DIExpression()), !dbg !716
  %22 = load ptr, ptr %6, align 4, !dbg !717
  %23 = load i32, ptr %5, align 4, !dbg !718
  %24 = call i32 @bytes_to_chunksz(ptr noundef %22, i32 noundef %23) #6, !dbg !719
  store i32 %24, ptr %9, align 4, !dbg !716
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #7, !dbg !720
  call void @llvm.dbg.declare(metadata ptr %10, metadata !696, metadata !DIExpression()), !dbg !721
  %25 = load ptr, ptr %6, align 4, !dbg !722
  %26 = load i32, ptr %9, align 4, !dbg !723
  %27 = call i32 @alloc_chunk(ptr noundef %25, i32 noundef %26) #6, !dbg !724
  store i32 %27, ptr %10, align 4, !dbg !721
  %28 = load i32, ptr %10, align 4, !dbg !725
  %29 = icmp eq i32 %28, 0, !dbg !727
  br i1 %29, label %30, label %31, !dbg !728

30:                                               ; preds = %21
  store ptr null, ptr %3, align 4, !dbg !729
  store i32 1, ptr %8, align 4
  br label %54, !dbg !729

31:                                               ; preds = %21
  %32 = load ptr, ptr %6, align 4, !dbg !731
  %33 = load i32, ptr %10, align 4, !dbg !733
  %34 = call i32 @chunk_size(ptr noundef %32, i32 noundef %33) #6, !dbg !734
  %35 = load i32, ptr %9, align 4, !dbg !735
  %36 = icmp ugt i32 %34, %35, !dbg !736
  br i1 %36, label %37, label %47, !dbg !737

37:                                               ; preds = %31
  %38 = load ptr, ptr %6, align 4, !dbg !738
  %39 = load i32, ptr %10, align 4, !dbg !740
  %40 = load i32, ptr %10, align 4, !dbg !741
  %41 = load i32, ptr %9, align 4, !dbg !742
  %42 = add i32 %40, %41, !dbg !743
  call void @split_chunks(ptr noundef %38, i32 noundef %39, i32 noundef %42) #6, !dbg !744
  %43 = load ptr, ptr %6, align 4, !dbg !745
  %44 = load i32, ptr %10, align 4, !dbg !746
  %45 = load i32, ptr %9, align 4, !dbg !747
  %46 = add i32 %44, %45, !dbg !748
  call void @free_list_add(ptr noundef %43, i32 noundef %46) #6, !dbg !749
  br label %47, !dbg !750

47:                                               ; preds = %37, %31
  %48 = load ptr, ptr %6, align 4, !dbg !751
  %49 = load i32, ptr %10, align 4, !dbg !752
  call void @set_chunk_used(ptr noundef %48, i32 noundef %49, i1 noundef zeroext true) #6, !dbg !753
  %50 = load ptr, ptr %6, align 4, !dbg !754
  %51 = load i32, ptr %10, align 4, !dbg !755
  %52 = call ptr @chunk_mem(ptr noundef %50, i32 noundef %51) #6, !dbg !756
  store ptr %52, ptr %7, align 4, !dbg !757
  %53 = load ptr, ptr %7, align 4, !dbg !758
  store ptr %53, ptr %3, align 4, !dbg !759
  store i32 1, ptr %8, align 4
  br label %54, !dbg !759

54:                                               ; preds = %47, %30
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #7, !dbg !760
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #7, !dbg !760
  br label %55

55:                                               ; preds = %54, %20
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #7, !dbg !760
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #7, !dbg !760
  %56 = load ptr, ptr %3, align 4, !dbg !760
  ret ptr %56, !dbg !760
}

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @size_too_big(ptr noundef %0, i32 noundef %1) #0 !dbg !761 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !765, metadata !DIExpression()), !dbg !767
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !766, metadata !DIExpression()), !dbg !768
  %5 = load i32, ptr %4, align 4, !dbg !769
  %6 = udiv i32 %5, 8, !dbg !770
  %7 = load ptr, ptr %3, align 4, !dbg !771
  %8 = getelementptr inbounds %struct.z_heap, ptr %7, i32 0, i32 1, !dbg !772
  %9 = load i32, ptr %8, align 4, !dbg !772
  %10 = icmp uge i32 %6, %9, !dbg !773
  ret i1 %10, !dbg !774
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @bytes_to_chunksz(ptr noundef %0, i32 noundef %1) #0 !dbg !775 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !779, metadata !DIExpression()), !dbg !781
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !780, metadata !DIExpression()), !dbg !782
  %5 = load ptr, ptr %3, align 4, !dbg !783
  %6 = call i32 @chunk_header_bytes(ptr noundef %5) #6, !dbg !784
  %7 = load i32, ptr %4, align 4, !dbg !785
  %8 = add i32 %6, %7, !dbg !786
  %9 = call i32 @chunksz(i32 noundef %8) #6, !dbg !787
  ret i32 %9, !dbg !788
}

; Function Attrs: nounwind optsize
define internal i32 @alloc_chunk(ptr noundef %0, i32 noundef %1) #1 !dbg !789 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !793, metadata !DIExpression()), !dbg !809
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !794, metadata !DIExpression()), !dbg !810
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #7, !dbg !811
  call void @llvm.dbg.declare(metadata ptr %6, metadata !795, metadata !DIExpression()), !dbg !812
  %15 = load ptr, ptr %4, align 4, !dbg !813
  %16 = load i32, ptr %5, align 4, !dbg !814
  %17 = call i32 @bucket_idx(ptr noundef %15, i32 noundef %16) #6, !dbg !815
  store i32 %17, ptr %6, align 4, !dbg !812
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #7, !dbg !816
  call void @llvm.dbg.declare(metadata ptr %7, metadata !796, metadata !DIExpression()), !dbg !817
  %18 = load ptr, ptr %4, align 4, !dbg !818
  %19 = getelementptr inbounds %struct.z_heap, ptr %18, i32 0, i32 3, !dbg !819
  %20 = load i32, ptr %6, align 4, !dbg !820
  %21 = getelementptr inbounds [0 x %struct.z_heap_bucket], ptr %19, i32 0, i32 %20, !dbg !818
  store ptr %21, ptr %7, align 4, !dbg !817
  %22 = load ptr, ptr %7, align 4, !dbg !821
  %23 = getelementptr inbounds %struct.z_heap_bucket, ptr %22, i32 0, i32 0, !dbg !822
  %24 = load i32, ptr %23, align 4, !dbg !822
  %25 = icmp ne i32 %24, 0, !dbg !821
  br i1 %25, label %26, label %69, !dbg !823

26:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #7, !dbg !824
  call void @llvm.dbg.declare(metadata ptr %8, metadata !798, metadata !DIExpression()), !dbg !825
  %27 = load ptr, ptr %7, align 4, !dbg !826
  %28 = getelementptr inbounds %struct.z_heap_bucket, ptr %27, i32 0, i32 0, !dbg !827
  %29 = load i32, ptr %28, align 4, !dbg !827
  store i32 %29, ptr %8, align 4, !dbg !825
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #7, !dbg !828
  call void @llvm.dbg.declare(metadata ptr %9, metadata !801, metadata !DIExpression()), !dbg !829
  store i32 3, ptr %9, align 4, !dbg !829
  br label %30, !dbg !830

30:                                               ; preds = %63, %26
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #7, !dbg !831
  call void @llvm.dbg.declare(metadata ptr %10, metadata !802, metadata !DIExpression()), !dbg !832
  %31 = load ptr, ptr %7, align 4, !dbg !833
  %32 = getelementptr inbounds %struct.z_heap_bucket, ptr %31, i32 0, i32 0, !dbg !834
  %33 = load i32, ptr %32, align 4, !dbg !834
  store i32 %33, ptr %10, align 4, !dbg !832
  %34 = load ptr, ptr %4, align 4, !dbg !835
  %35 = load i32, ptr %10, align 4, !dbg !837
  %36 = call i32 @chunk_size(ptr noundef %34, i32 noundef %35) #6, !dbg !838
  %37 = load i32, ptr %5, align 4, !dbg !839
  %38 = icmp uge i32 %36, %37, !dbg !840
  br i1 %38, label %39, label %44, !dbg !841

39:                                               ; preds = %30
  %40 = load ptr, ptr %4, align 4, !dbg !842
  %41 = load i32, ptr %10, align 4, !dbg !844
  %42 = load i32, ptr %6, align 4, !dbg !845
  call void @free_list_remove_bidx(ptr noundef %40, i32 noundef %41, i32 noundef %42) #6, !dbg !846
  %43 = load i32, ptr %10, align 4, !dbg !847
  store i32 %43, ptr %3, align 4, !dbg !848
  store i32 1, ptr %11, align 4
  br label %50, !dbg !848

44:                                               ; preds = %30
  %45 = load ptr, ptr %4, align 4, !dbg !849
  %46 = load i32, ptr %10, align 4, !dbg !850
  %47 = call i32 @next_free_chunk(ptr noundef %45, i32 noundef %46) #6, !dbg !851
  %48 = load ptr, ptr %7, align 4, !dbg !852
  %49 = getelementptr inbounds %struct.z_heap_bucket, ptr %48, i32 0, i32 0, !dbg !853
  store i32 %47, ptr %49, align 4, !dbg !854
  store i32 0, ptr %11, align 4, !dbg !855
  br label %50, !dbg !855

50:                                               ; preds = %44, %39
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #7, !dbg !855
  %51 = load i32, ptr %11, align 4
  switch i32 %51, label %66 [
    i32 0, label %52
  ]

52:                                               ; preds = %50
  br label %53, !dbg !856

53:                                               ; preds = %52
  %54 = load i32, ptr %9, align 4, !dbg !857
  %55 = add nsw i32 %54, -1, !dbg !857
  store i32 %55, ptr %9, align 4, !dbg !857
  %56 = icmp ne i32 %55, 0, !dbg !857
  br i1 %56, label %57, label %63, !dbg !858

57:                                               ; preds = %53
  %58 = load ptr, ptr %7, align 4, !dbg !859
  %59 = getelementptr inbounds %struct.z_heap_bucket, ptr %58, i32 0, i32 0, !dbg !860
  %60 = load i32, ptr %59, align 4, !dbg !860
  %61 = load i32, ptr %8, align 4, !dbg !861
  %62 = icmp ne i32 %60, %61, !dbg !862
  br label %63

63:                                               ; preds = %57, %53
  %64 = phi i1 [ false, %53 ], [ %62, %57 ], !dbg !863
  br i1 %64, label %30, label %65, !dbg !856, !llvm.loop !864

65:                                               ; preds = %63
  store i32 0, ptr %11, align 4, !dbg !866
  br label %66, !dbg !866

66:                                               ; preds = %65, %50
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #7, !dbg !866
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #7, !dbg !866
  %67 = load i32, ptr %11, align 4
  switch i32 %67, label %96 [
    i32 0, label %68
  ]

68:                                               ; preds = %66
  br label %69, !dbg !867

69:                                               ; preds = %68, %2
  call void @llvm.lifetime.start.p0(i64 4, ptr %12) #7, !dbg !868
  call void @llvm.dbg.declare(metadata ptr %12, metadata !804, metadata !DIExpression()), !dbg !869
  %70 = load ptr, ptr %4, align 4, !dbg !870
  %71 = getelementptr inbounds %struct.z_heap, ptr %70, i32 0, i32 2, !dbg !871
  %72 = load i32, ptr %71, align 4, !dbg !871
  %73 = load i32, ptr %6, align 4, !dbg !872
  %74 = add nsw i32 %73, 1, !dbg !873
  %75 = shl i32 1, %74, !dbg !874
  %76 = sub i32 %75, 1, !dbg !875
  %77 = xor i32 %76, -1, !dbg !876
  %78 = and i32 %72, %77, !dbg !877
  store i32 %78, ptr %12, align 4, !dbg !869
  %79 = load i32, ptr %12, align 4, !dbg !878
  %80 = icmp ne i32 %79, 0, !dbg !879
  br i1 %80, label %81, label %94, !dbg !880

81:                                               ; preds = %69
  call void @llvm.lifetime.start.p0(i64 4, ptr %13) #7, !dbg !881
  call void @llvm.dbg.declare(metadata ptr %13, metadata !805, metadata !DIExpression()), !dbg !882
  %82 = load i32, ptr %12, align 4, !dbg !883
  %83 = call i32 @llvm.cttz.i32(i32 %82, i1 false), !dbg !884
  store i32 %83, ptr %13, align 4, !dbg !882
  call void @llvm.lifetime.start.p0(i64 4, ptr %14) #7, !dbg !885
  call void @llvm.dbg.declare(metadata ptr %14, metadata !808, metadata !DIExpression()), !dbg !886
  %84 = load ptr, ptr %4, align 4, !dbg !887
  %85 = getelementptr inbounds %struct.z_heap, ptr %84, i32 0, i32 3, !dbg !888
  %86 = load i32, ptr %13, align 4, !dbg !889
  %87 = getelementptr inbounds [0 x %struct.z_heap_bucket], ptr %85, i32 0, i32 %86, !dbg !887
  %88 = getelementptr inbounds %struct.z_heap_bucket, ptr %87, i32 0, i32 0, !dbg !890
  %89 = load i32, ptr %88, align 4, !dbg !890
  store i32 %89, ptr %14, align 4, !dbg !886
  %90 = load ptr, ptr %4, align 4, !dbg !891
  %91 = load i32, ptr %14, align 4, !dbg !892
  %92 = load i32, ptr %13, align 4, !dbg !893
  call void @free_list_remove_bidx(ptr noundef %90, i32 noundef %91, i32 noundef %92) #6, !dbg !894
  %93 = load i32, ptr %14, align 4, !dbg !895
  store i32 %93, ptr %3, align 4, !dbg !896
  store i32 1, ptr %11, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %14) #7, !dbg !897
  call void @llvm.lifetime.end.p0(i64 4, ptr %13) #7, !dbg !897
  br label %95

94:                                               ; preds = %69
  store i32 0, ptr %3, align 4, !dbg !898
  store i32 1, ptr %11, align 4
  br label %95, !dbg !898

95:                                               ; preds = %94, %81
  call void @llvm.lifetime.end.p0(i64 4, ptr %12) #7, !dbg !899
  br label %96

96:                                               ; preds = %95, %66
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #7, !dbg !899
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #7, !dbg !899
  %97 = load i32, ptr %3, align 4, !dbg !899
  ret i32 %97, !dbg !899
}

; Function Attrs: nounwind optsize
define internal void @split_chunks(ptr noundef %0, i32 noundef %1, i32 noundef %2) #1 !dbg !900 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !904, metadata !DIExpression()), !dbg !910
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !905, metadata !DIExpression()), !dbg !911
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !906, metadata !DIExpression()), !dbg !912
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #7, !dbg !913
  call void @llvm.dbg.declare(metadata ptr %7, metadata !907, metadata !DIExpression()), !dbg !914
  %10 = load ptr, ptr %4, align 4, !dbg !915
  %11 = load i32, ptr %5, align 4, !dbg !916
  %12 = call i32 @chunk_size(ptr noundef %10, i32 noundef %11) #6, !dbg !917
  store i32 %12, ptr %7, align 4, !dbg !914
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #7, !dbg !918
  call void @llvm.dbg.declare(metadata ptr %8, metadata !908, metadata !DIExpression()), !dbg !919
  %13 = load i32, ptr %6, align 4, !dbg !920
  %14 = load i32, ptr %5, align 4, !dbg !921
  %15 = sub i32 %13, %14, !dbg !922
  store i32 %15, ptr %8, align 4, !dbg !919
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #7, !dbg !923
  call void @llvm.dbg.declare(metadata ptr %9, metadata !909, metadata !DIExpression()), !dbg !924
  %16 = load i32, ptr %7, align 4, !dbg !925
  %17 = load i32, ptr %8, align 4, !dbg !926
  %18 = sub i32 %16, %17, !dbg !927
  store i32 %18, ptr %9, align 4, !dbg !924
  %19 = load ptr, ptr %4, align 4, !dbg !928
  %20 = load i32, ptr %5, align 4, !dbg !929
  %21 = load i32, ptr %8, align 4, !dbg !930
  call void @set_chunk_size(ptr noundef %19, i32 noundef %20, i32 noundef %21) #6, !dbg !931
  %22 = load ptr, ptr %4, align 4, !dbg !932
  %23 = load i32, ptr %6, align 4, !dbg !933
  %24 = load i32, ptr %9, align 4, !dbg !934
  call void @set_chunk_size(ptr noundef %22, i32 noundef %23, i32 noundef %24) #6, !dbg !935
  %25 = load ptr, ptr %4, align 4, !dbg !936
  %26 = load i32, ptr %6, align 4, !dbg !937
  %27 = load i32, ptr %8, align 4, !dbg !938
  call void @set_left_chunk_size(ptr noundef %25, i32 noundef %26, i32 noundef %27) #6, !dbg !939
  %28 = load ptr, ptr %4, align 4, !dbg !940
  %29 = load ptr, ptr %4, align 4, !dbg !941
  %30 = load i32, ptr %6, align 4, !dbg !942
  %31 = call i32 @right_chunk(ptr noundef %29, i32 noundef %30) #6, !dbg !943
  %32 = load i32, ptr %9, align 4, !dbg !944
  call void @set_left_chunk_size(ptr noundef %28, i32 noundef %31, i32 noundef %32) #6, !dbg !945
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #7, !dbg !946
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #7, !dbg !946
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #7, !dbg !946
  ret void, !dbg !946
}

; Function Attrs: nounwind optsize
define internal void @free_list_add(ptr noundef %0, i32 noundef %1) #1 !dbg !947 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !949, metadata !DIExpression()), !dbg !954
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !950, metadata !DIExpression()), !dbg !955
  %6 = load ptr, ptr %3, align 4, !dbg !956
  %7 = load i32, ptr %4, align 4, !dbg !957
  %8 = call zeroext i1 @solo_free_header(ptr noundef %6, i32 noundef %7) #6, !dbg !958
  br i1 %8, label %18, label %9, !dbg !959

9:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #7, !dbg !960
  call void @llvm.dbg.declare(metadata ptr %5, metadata !951, metadata !DIExpression()), !dbg !961
  %10 = load ptr, ptr %3, align 4, !dbg !962
  %11 = load ptr, ptr %3, align 4, !dbg !963
  %12 = load i32, ptr %4, align 4, !dbg !964
  %13 = call i32 @chunk_size(ptr noundef %11, i32 noundef %12) #6, !dbg !965
  %14 = call i32 @bucket_idx(ptr noundef %10, i32 noundef %13) #6, !dbg !966
  store i32 %14, ptr %5, align 4, !dbg !961
  %15 = load ptr, ptr %3, align 4, !dbg !967
  %16 = load i32, ptr %4, align 4, !dbg !968
  %17 = load i32, ptr %5, align 4, !dbg !969
  call void @free_list_add_bidx(ptr noundef %15, i32 noundef %16, i32 noundef %17) #6, !dbg !970
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #7, !dbg !971
  br label %18, !dbg !972

18:                                               ; preds = %9, %2
  ret void, !dbg !973
}

; Function Attrs: nounwind optsize
define internal ptr @chunk_mem(ptr noundef %0, i32 noundef %1) #1 !dbg !974 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !978, metadata !DIExpression()), !dbg !982
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !979, metadata !DIExpression()), !dbg !983
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #7, !dbg !984
  call void @llvm.dbg.declare(metadata ptr %5, metadata !980, metadata !DIExpression()), !dbg !985
  %7 = load ptr, ptr %3, align 4, !dbg !986
  %8 = call ptr @chunk_buf(ptr noundef %7) #6, !dbg !987
  store ptr %8, ptr %5, align 4, !dbg !985
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #7, !dbg !988
  call void @llvm.dbg.declare(metadata ptr %6, metadata !981, metadata !DIExpression()), !dbg !989
  %9 = load ptr, ptr %5, align 4, !dbg !990
  %10 = load i32, ptr %4, align 4, !dbg !991
  %11 = getelementptr inbounds %struct.chunk_unit_t, ptr %9, i32 %10, !dbg !990
  %12 = load ptr, ptr %3, align 4, !dbg !992
  %13 = call i32 @chunk_header_bytes(ptr noundef %12) #6, !dbg !993
  %14 = getelementptr inbounds i8, ptr %11, i32 %13, !dbg !994
  store ptr %14, ptr %6, align 4, !dbg !989
  %15 = load ptr, ptr %6, align 4, !dbg !995
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #7, !dbg !996
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #7, !dbg !996
  ret ptr %15, !dbg !997
}

; Function Attrs: nounwind optsize
define hidden ptr @sys_heap_aligned_alloc(ptr noundef %0, i32 noundef %1, i32 noundef %2) #1 !dbg !998 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca ptr, align 4
  %15 = alloca ptr, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store ptr %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1002, metadata !DIExpression()), !dbg !1014
  store i32 %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1003, metadata !DIExpression()), !dbg !1015
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1004, metadata !DIExpression()), !dbg !1016
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #7, !dbg !1017
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1005, metadata !DIExpression()), !dbg !1018
  %18 = load ptr, ptr %5, align 4, !dbg !1019
  %19 = getelementptr inbounds %struct.sys_heap, ptr %18, i32 0, i32 0, !dbg !1020
  %20 = load ptr, ptr %19, align 4, !dbg !1020
  store ptr %20, ptr %8, align 4, !dbg !1018
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #7, !dbg !1021
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1006, metadata !DIExpression()), !dbg !1022
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #7, !dbg !1021
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1007, metadata !DIExpression()), !dbg !1023
  %21 = load i32, ptr %6, align 4, !dbg !1024
  %22 = load i32, ptr %6, align 4, !dbg !1025
  %23 = sub i32 0, %22, !dbg !1026
  %24 = and i32 %21, %23, !dbg !1027
  store i32 %24, ptr %10, align 4, !dbg !1028
  %25 = load i32, ptr %6, align 4, !dbg !1029
  %26 = load i32, ptr %10, align 4, !dbg !1031
  %27 = icmp ne i32 %25, %26, !dbg !1032
  br i1 %27, label %28, label %43, !dbg !1033

28:                                               ; preds = %3
  %29 = load i32, ptr %10, align 4, !dbg !1034
  %30 = load i32, ptr %6, align 4, !dbg !1036
  %31 = sub i32 %30, %29, !dbg !1036
  store i32 %31, ptr %6, align 4, !dbg !1036
  %32 = load i32, ptr %10, align 4, !dbg !1037
  %33 = load ptr, ptr %8, align 4, !dbg !1038
  %34 = call i32 @chunk_header_bytes(ptr noundef %33) #6, !dbg !1039
  %35 = icmp ult i32 %32, %34, !dbg !1040
  br i1 %35, label %36, label %38, !dbg !1041

36:                                               ; preds = %28
  %37 = load i32, ptr %10, align 4, !dbg !1042
  br label %41, !dbg !1041

38:                                               ; preds = %28
  %39 = load ptr, ptr %8, align 4, !dbg !1043
  %40 = call i32 @chunk_header_bytes(ptr noundef %39) #6, !dbg !1044
  br label %41, !dbg !1041

41:                                               ; preds = %38, %36
  %42 = phi i32 [ %37, %36 ], [ %40, %38 ], !dbg !1041
  store i32 %42, ptr %9, align 4, !dbg !1045
  br label %55, !dbg !1046

43:                                               ; preds = %3
  %44 = load i32, ptr %6, align 4, !dbg !1047
  %45 = load ptr, ptr %8, align 4, !dbg !1050
  %46 = call i32 @chunk_header_bytes(ptr noundef %45) #6, !dbg !1051
  %47 = icmp ule i32 %44, %46, !dbg !1052
  br i1 %47, label %48, label %52, !dbg !1053

48:                                               ; preds = %43
  %49 = load ptr, ptr %5, align 4, !dbg !1054
  %50 = load i32, ptr %7, align 4, !dbg !1056
  %51 = call ptr @sys_heap_alloc(ptr noundef %49, i32 noundef %50) #6, !dbg !1057
  store ptr %51, ptr %4, align 4, !dbg !1058
  store i32 1, ptr %11, align 4
  br label %140, !dbg !1058

52:                                               ; preds = %43
  store i32 0, ptr %10, align 4, !dbg !1059
  %53 = load ptr, ptr %8, align 4, !dbg !1060
  %54 = call i32 @chunk_header_bytes(ptr noundef %53) #6, !dbg !1061
  store i32 %54, ptr %9, align 4, !dbg !1062
  br label %55

55:                                               ; preds = %52, %41
  %56 = load i32, ptr %7, align 4, !dbg !1063
  %57 = icmp eq i32 %56, 0, !dbg !1065
  br i1 %57, label %62, label %58, !dbg !1066

58:                                               ; preds = %55
  %59 = load ptr, ptr %8, align 4, !dbg !1067
  %60 = load i32, ptr %7, align 4, !dbg !1068
  %61 = call zeroext i1 @size_too_big(ptr noundef %59, i32 noundef %60) #6, !dbg !1069
  br i1 %61, label %62, label %63, !dbg !1070

62:                                               ; preds = %58, %55
  store ptr null, ptr %4, align 4, !dbg !1071
  store i32 1, ptr %11, align 4
  br label %140, !dbg !1071

63:                                               ; preds = %58
  call void @llvm.lifetime.start.p0(i64 4, ptr %12) #7, !dbg !1073
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1008, metadata !DIExpression()), !dbg !1074
  %64 = load ptr, ptr %8, align 4, !dbg !1075
  %65 = load i32, ptr %7, align 4, !dbg !1076
  %66 = load i32, ptr %6, align 4, !dbg !1077
  %67 = add i32 %65, %66, !dbg !1078
  %68 = load i32, ptr %9, align 4, !dbg !1079
  %69 = sub i32 %67, %68, !dbg !1080
  %70 = call i32 @bytes_to_chunksz(ptr noundef %64, i32 noundef %69) #6, !dbg !1081
  store i32 %70, ptr %12, align 4, !dbg !1074
  call void @llvm.lifetime.start.p0(i64 4, ptr %13) #7, !dbg !1082
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1009, metadata !DIExpression()), !dbg !1083
  %71 = load ptr, ptr %8, align 4, !dbg !1084
  %72 = load i32, ptr %12, align 4, !dbg !1085
  %73 = call i32 @alloc_chunk(ptr noundef %71, i32 noundef %72) #6, !dbg !1086
  store i32 %73, ptr %13, align 4, !dbg !1083
  %74 = load i32, ptr %13, align 4, !dbg !1087
  %75 = icmp eq i32 %74, 0, !dbg !1089
  br i1 %75, label %76, label %77, !dbg !1090

76:                                               ; preds = %63
  store ptr null, ptr %4, align 4, !dbg !1091
  store i32 1, ptr %11, align 4
  br label %139, !dbg !1091

77:                                               ; preds = %63
  call void @llvm.lifetime.start.p0(i64 4, ptr %14) #7, !dbg !1093
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1010, metadata !DIExpression()), !dbg !1094
  %78 = load ptr, ptr %8, align 4, !dbg !1095
  %79 = load i32, ptr %13, align 4, !dbg !1096
  %80 = call ptr @chunk_mem(ptr noundef %78, i32 noundef %79) #6, !dbg !1097
  store ptr %80, ptr %14, align 4, !dbg !1094
  %81 = load ptr, ptr %14, align 4, !dbg !1098
  %82 = load i32, ptr %10, align 4, !dbg !1099
  %83 = getelementptr inbounds i8, ptr %81, i32 %82, !dbg !1100
  %84 = ptrtoint ptr %83 to i32, !dbg !1101
  %85 = load i32, ptr %6, align 4, !dbg !1102
  %86 = sub i32 %85, 1, !dbg !1103
  %87 = add i32 %84, %86, !dbg !1104
  %88 = load i32, ptr %6, align 4, !dbg !1105
  %89 = udiv i32 %87, %88, !dbg !1106
  %90 = load i32, ptr %6, align 4, !dbg !1107
  %91 = mul i32 %89, %90, !dbg !1108
  %92 = inttoptr i32 %91 to ptr, !dbg !1109
  %93 = load i32, ptr %10, align 4, !dbg !1110
  %94 = sub i32 0, %93, !dbg !1111
  %95 = getelementptr inbounds i8, ptr %92, i32 %94, !dbg !1111
  store ptr %95, ptr %14, align 4, !dbg !1112
  call void @llvm.lifetime.start.p0(i64 4, ptr %15) #7, !dbg !1113
  call void @llvm.dbg.declare(metadata ptr %15, metadata !1011, metadata !DIExpression()), !dbg !1114
  %96 = load ptr, ptr %14, align 4, !dbg !1115
  %97 = load i32, ptr %7, align 4, !dbg !1116
  %98 = getelementptr inbounds i8, ptr %96, i32 %97, !dbg !1117
  %99 = ptrtoint ptr %98 to i32, !dbg !1118
  %100 = add i32 %99, 7, !dbg !1119
  %101 = udiv i32 %100, 8, !dbg !1120
  %102 = mul i32 %101, 8, !dbg !1121
  %103 = inttoptr i32 %102 to ptr, !dbg !1122
  store ptr %103, ptr %15, align 4, !dbg !1114
  call void @llvm.lifetime.start.p0(i64 4, ptr %16) #7, !dbg !1123
  call void @llvm.dbg.declare(metadata ptr %16, metadata !1012, metadata !DIExpression()), !dbg !1124
  %104 = load ptr, ptr %8, align 4, !dbg !1125
  %105 = load ptr, ptr %14, align 4, !dbg !1126
  %106 = call i32 @mem_to_chunkid(ptr noundef %104, ptr noundef %105) #6, !dbg !1127
  store i32 %106, ptr %16, align 4, !dbg !1124
  call void @llvm.lifetime.start.p0(i64 4, ptr %17) #7, !dbg !1128
  call void @llvm.dbg.declare(metadata ptr %17, metadata !1013, metadata !DIExpression()), !dbg !1129
  %107 = load ptr, ptr %15, align 4, !dbg !1130
  %108 = load ptr, ptr %8, align 4, !dbg !1131
  %109 = call ptr @chunk_buf(ptr noundef %108) #6, !dbg !1132
  %110 = ptrtoint ptr %107 to i32, !dbg !1133
  %111 = ptrtoint ptr %109 to i32, !dbg !1133
  %112 = sub i32 %110, %111, !dbg !1133
  %113 = sdiv exact i32 %112, 8, !dbg !1133
  store i32 %113, ptr %17, align 4, !dbg !1129
  %114 = load i32, ptr %16, align 4, !dbg !1134
  %115 = load i32, ptr %13, align 4, !dbg !1136
  %116 = icmp ugt i32 %114, %115, !dbg !1137
  br i1 %116, label %117, label %123, !dbg !1138

117:                                              ; preds = %77
  %118 = load ptr, ptr %8, align 4, !dbg !1139
  %119 = load i32, ptr %13, align 4, !dbg !1141
  %120 = load i32, ptr %16, align 4, !dbg !1142
  call void @split_chunks(ptr noundef %118, i32 noundef %119, i32 noundef %120) #6, !dbg !1143
  %121 = load ptr, ptr %8, align 4, !dbg !1144
  %122 = load i32, ptr %13, align 4, !dbg !1145
  call void @free_list_add(ptr noundef %121, i32 noundef %122) #6, !dbg !1146
  br label %123, !dbg !1147

123:                                              ; preds = %117, %77
  %124 = load ptr, ptr %8, align 4, !dbg !1148
  %125 = load i32, ptr %16, align 4, !dbg !1150
  %126 = call i32 @right_chunk(ptr noundef %124, i32 noundef %125) #6, !dbg !1151
  %127 = load i32, ptr %17, align 4, !dbg !1152
  %128 = icmp ugt i32 %126, %127, !dbg !1153
  br i1 %128, label %129, label %135, !dbg !1154

129:                                              ; preds = %123
  %130 = load ptr, ptr %8, align 4, !dbg !1155
  %131 = load i32, ptr %16, align 4, !dbg !1157
  %132 = load i32, ptr %17, align 4, !dbg !1158
  call void @split_chunks(ptr noundef %130, i32 noundef %131, i32 noundef %132) #6, !dbg !1159
  %133 = load ptr, ptr %8, align 4, !dbg !1160
  %134 = load i32, ptr %17, align 4, !dbg !1161
  call void @free_list_add(ptr noundef %133, i32 noundef %134) #6, !dbg !1162
  br label %135, !dbg !1163

135:                                              ; preds = %129, %123
  %136 = load ptr, ptr %8, align 4, !dbg !1164
  %137 = load i32, ptr %16, align 4, !dbg !1165
  call void @set_chunk_used(ptr noundef %136, i32 noundef %137, i1 noundef zeroext true) #6, !dbg !1166
  %138 = load ptr, ptr %14, align 4, !dbg !1167
  store ptr %138, ptr %4, align 4, !dbg !1168
  store i32 1, ptr %11, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %17) #7, !dbg !1169
  call void @llvm.lifetime.end.p0(i64 4, ptr %16) #7, !dbg !1169
  call void @llvm.lifetime.end.p0(i64 4, ptr %15) #7, !dbg !1169
  call void @llvm.lifetime.end.p0(i64 4, ptr %14) #7, !dbg !1169
  br label %139

139:                                              ; preds = %135, %76
  call void @llvm.lifetime.end.p0(i64 4, ptr %13) #7, !dbg !1169
  call void @llvm.lifetime.end.p0(i64 4, ptr %12) #7, !dbg !1169
  br label %140

140:                                              ; preds = %139, %62, %48
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #7, !dbg !1169
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #7, !dbg !1169
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #7, !dbg !1169
  %141 = load ptr, ptr %4, align 4, !dbg !1169
  ret ptr %141, !dbg !1169
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @chunk_header_bytes(ptr noundef %0) #0 !dbg !1170 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1174, metadata !DIExpression()), !dbg !1175
  %3 = load ptr, ptr %2, align 4, !dbg !1176
  %4 = call zeroext i1 @big_heap(ptr noundef %3) #6, !dbg !1177
  %5 = zext i1 %4 to i64, !dbg !1177
  %6 = select i1 %4, i32 8, i32 4, !dbg !1177
  ret i32 %6, !dbg !1178
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @right_chunk(ptr noundef %0, i32 noundef %1) #0 !dbg !1179 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1183, metadata !DIExpression()), !dbg !1185
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1184, metadata !DIExpression()), !dbg !1186
  %5 = load i32, ptr %4, align 4, !dbg !1187
  %6 = load ptr, ptr %3, align 4, !dbg !1188
  %7 = load i32, ptr %4, align 4, !dbg !1189
  %8 = call i32 @chunk_size(ptr noundef %6, i32 noundef %7) #6, !dbg !1190
  %9 = add i32 %5, %8, !dbg !1191
  ret i32 %9, !dbg !1192
}

; Function Attrs: nounwind optsize
define hidden ptr @sys_heap_aligned_realloc(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #1 !dbg !1193 {
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca ptr, align 4
  %18 = alloca i32, align 4
  store ptr %0, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1197, metadata !DIExpression()), !dbg !1216
  store ptr %1, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1198, metadata !DIExpression()), !dbg !1217
  store i32 %2, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1199, metadata !DIExpression()), !dbg !1218
  store i32 %3, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1200, metadata !DIExpression()), !dbg !1219
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #7, !dbg !1220
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1201, metadata !DIExpression()), !dbg !1221
  %19 = load ptr, ptr %6, align 4, !dbg !1222
  %20 = getelementptr inbounds %struct.sys_heap, ptr %19, i32 0, i32 0, !dbg !1223
  %21 = load ptr, ptr %20, align 4, !dbg !1223
  store ptr %21, ptr %10, align 4, !dbg !1221
  %22 = load ptr, ptr %7, align 4, !dbg !1224
  %23 = icmp eq ptr %22, null, !dbg !1226
  br i1 %23, label %24, label %29, !dbg !1227

24:                                               ; preds = %4
  %25 = load ptr, ptr %6, align 4, !dbg !1228
  %26 = load i32, ptr %8, align 4, !dbg !1230
  %27 = load i32, ptr %9, align 4, !dbg !1231
  %28 = call ptr @sys_heap_aligned_alloc(ptr noundef %25, i32 noundef %26, i32 noundef %27) #6, !dbg !1232
  store ptr %28, ptr %5, align 4, !dbg !1233
  store i32 1, ptr %11, align 4
  br label %175, !dbg !1233

29:                                               ; preds = %4
  %30 = load i32, ptr %9, align 4, !dbg !1234
  %31 = icmp eq i32 %30, 0, !dbg !1236
  br i1 %31, label %32, label %35, !dbg !1237

32:                                               ; preds = %29
  %33 = load ptr, ptr %6, align 4, !dbg !1238
  %34 = load ptr, ptr %7, align 4, !dbg !1240
  call void @sys_heap_free(ptr noundef %33, ptr noundef %34) #6, !dbg !1241
  store ptr null, ptr %5, align 4, !dbg !1242
  store i32 1, ptr %11, align 4
  br label %175, !dbg !1242

35:                                               ; preds = %29
  %36 = load ptr, ptr %10, align 4, !dbg !1243
  %37 = load i32, ptr %9, align 4, !dbg !1245
  %38 = call zeroext i1 @size_too_big(ptr noundef %36, i32 noundef %37) #6, !dbg !1246
  br i1 %38, label %39, label %40, !dbg !1247

39:                                               ; preds = %35
  store ptr null, ptr %5, align 4, !dbg !1248
  store i32 1, ptr %11, align 4
  br label %175, !dbg !1248

40:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 4, ptr %12) #7, !dbg !1250
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1202, metadata !DIExpression()), !dbg !1251
  %41 = load ptr, ptr %10, align 4, !dbg !1252
  %42 = load ptr, ptr %7, align 4, !dbg !1253
  %43 = call i32 @mem_to_chunkid(ptr noundef %41, ptr noundef %42) #6, !dbg !1254
  store i32 %43, ptr %12, align 4, !dbg !1251
  call void @llvm.lifetime.start.p0(i64 4, ptr %13) #7, !dbg !1255
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1203, metadata !DIExpression()), !dbg !1256
  %44 = load ptr, ptr %10, align 4, !dbg !1257
  %45 = load i32, ptr %12, align 4, !dbg !1258
  %46 = call i32 @right_chunk(ptr noundef %44, i32 noundef %45) #6, !dbg !1259
  store i32 %46, ptr %13, align 4, !dbg !1256
  call void @llvm.lifetime.start.p0(i64 4, ptr %14) #7, !dbg !1260
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1204, metadata !DIExpression()), !dbg !1261
  %47 = load ptr, ptr %7, align 4, !dbg !1262
  %48 = load ptr, ptr %10, align 4, !dbg !1263
  %49 = load i32, ptr %12, align 4, !dbg !1264
  %50 = call ptr @chunk_mem(ptr noundef %48, i32 noundef %49) #6, !dbg !1265
  %51 = ptrtoint ptr %47 to i32, !dbg !1266
  %52 = ptrtoint ptr %50 to i32, !dbg !1266
  %53 = sub i32 %51, %52, !dbg !1266
  store i32 %53, ptr %14, align 4, !dbg !1261
  call void @llvm.lifetime.start.p0(i64 4, ptr %15) #7, !dbg !1267
  call void @llvm.dbg.declare(metadata ptr %15, metadata !1205, metadata !DIExpression()), !dbg !1268
  %54 = load ptr, ptr %10, align 4, !dbg !1269
  %55 = load i32, ptr %9, align 4, !dbg !1270
  %56 = load i32, ptr %14, align 4, !dbg !1271
  %57 = add i32 %55, %56, !dbg !1272
  %58 = call i32 @bytes_to_chunksz(ptr noundef %54, i32 noundef %57) #6, !dbg !1273
  store i32 %58, ptr %15, align 4, !dbg !1268
  %59 = load i32, ptr %8, align 4, !dbg !1274
  %60 = icmp ne i32 %59, 0, !dbg !1274
  br i1 %60, label %61, label %69, !dbg !1275

61:                                               ; preds = %40
  %62 = load ptr, ptr %7, align 4, !dbg !1276
  %63 = ptrtoint ptr %62 to i32, !dbg !1277
  %64 = load i32, ptr %8, align 4, !dbg !1278
  %65 = sub i32 %64, 1, !dbg !1279
  %66 = and i32 %63, %65, !dbg !1280
  %67 = icmp ne i32 %66, 0, !dbg !1280
  br i1 %67, label %68, label %69, !dbg !1281

68:                                               ; preds = %61
  br label %144, !dbg !1282

69:                                               ; preds = %61, %40
  %70 = load ptr, ptr %10, align 4, !dbg !1284
  %71 = load i32, ptr %12, align 4, !dbg !1285
  %72 = call i32 @chunk_size(ptr noundef %70, i32 noundef %71) #6, !dbg !1286
  %73 = load i32, ptr %15, align 4, !dbg !1287
  %74 = icmp eq i32 %72, %73, !dbg !1288
  br i1 %74, label %75, label %77, !dbg !1289

75:                                               ; preds = %69
  %76 = load ptr, ptr %7, align 4, !dbg !1290
  store ptr %76, ptr %5, align 4, !dbg !1292
  store i32 1, ptr %11, align 4
  br label %174, !dbg !1292

77:                                               ; preds = %69
  %78 = load ptr, ptr %10, align 4, !dbg !1293
  %79 = load i32, ptr %12, align 4, !dbg !1294
  %80 = call i32 @chunk_size(ptr noundef %78, i32 noundef %79) #6, !dbg !1295
  %81 = load i32, ptr %15, align 4, !dbg !1296
  %82 = icmp ugt i32 %80, %81, !dbg !1297
  br i1 %82, label %83, label %96, !dbg !1298

83:                                               ; preds = %77
  %84 = load ptr, ptr %10, align 4, !dbg !1299
  %85 = load i32, ptr %12, align 4, !dbg !1301
  %86 = load i32, ptr %12, align 4, !dbg !1302
  %87 = load i32, ptr %15, align 4, !dbg !1303
  %88 = add i32 %86, %87, !dbg !1304
  call void @split_chunks(ptr noundef %84, i32 noundef %85, i32 noundef %88) #6, !dbg !1305
  %89 = load ptr, ptr %10, align 4, !dbg !1306
  %90 = load i32, ptr %12, align 4, !dbg !1307
  call void @set_chunk_used(ptr noundef %89, i32 noundef %90, i1 noundef zeroext true) #6, !dbg !1308
  %91 = load ptr, ptr %10, align 4, !dbg !1309
  %92 = load i32, ptr %12, align 4, !dbg !1310
  %93 = load i32, ptr %15, align 4, !dbg !1311
  %94 = add i32 %92, %93, !dbg !1312
  call void @free_chunk(ptr noundef %91, i32 noundef %94) #6, !dbg !1313
  %95 = load ptr, ptr %7, align 4, !dbg !1314
  store ptr %95, ptr %5, align 4, !dbg !1315
  store i32 1, ptr %11, align 4
  br label %174, !dbg !1315

96:                                               ; preds = %77
  %97 = load ptr, ptr %10, align 4, !dbg !1316
  %98 = load i32, ptr %13, align 4, !dbg !1317
  %99 = call zeroext i1 @chunk_used(ptr noundef %97, i32 noundef %98) #6, !dbg !1318
  br i1 %99, label %140, label %100, !dbg !1319

100:                                              ; preds = %96
  %101 = load ptr, ptr %10, align 4, !dbg !1320
  %102 = load i32, ptr %12, align 4, !dbg !1321
  %103 = call i32 @chunk_size(ptr noundef %101, i32 noundef %102) #6, !dbg !1322
  %104 = load ptr, ptr %10, align 4, !dbg !1323
  %105 = load i32, ptr %13, align 4, !dbg !1324
  %106 = call i32 @chunk_size(ptr noundef %104, i32 noundef %105) #6, !dbg !1325
  %107 = add i32 %103, %106, !dbg !1326
  %108 = load i32, ptr %15, align 4, !dbg !1327
  %109 = icmp uge i32 %107, %108, !dbg !1328
  br i1 %109, label %110, label %140, !dbg !1329

110:                                              ; preds = %100
  call void @llvm.lifetime.start.p0(i64 4, ptr %16) #7, !dbg !1330
  call void @llvm.dbg.declare(metadata ptr %16, metadata !1206, metadata !DIExpression()), !dbg !1331
  %111 = load i32, ptr %15, align 4, !dbg !1332
  %112 = load ptr, ptr %10, align 4, !dbg !1333
  %113 = load i32, ptr %12, align 4, !dbg !1334
  %114 = call i32 @chunk_size(ptr noundef %112, i32 noundef %113) #6, !dbg !1335
  %115 = sub i32 %111, %114, !dbg !1336
  store i32 %115, ptr %16, align 4, !dbg !1331
  %116 = load ptr, ptr %10, align 4, !dbg !1337
  %117 = load i32, ptr %13, align 4, !dbg !1338
  call void @free_list_remove(ptr noundef %116, i32 noundef %117) #6, !dbg !1339
  %118 = load i32, ptr %16, align 4, !dbg !1340
  %119 = load ptr, ptr %10, align 4, !dbg !1342
  %120 = load i32, ptr %13, align 4, !dbg !1343
  %121 = call i32 @chunk_size(ptr noundef %119, i32 noundef %120) #6, !dbg !1344
  %122 = icmp ult i32 %118, %121, !dbg !1345
  br i1 %122, label %123, label %133, !dbg !1346

123:                                              ; preds = %110
  %124 = load ptr, ptr %10, align 4, !dbg !1347
  %125 = load i32, ptr %13, align 4, !dbg !1349
  %126 = load i32, ptr %13, align 4, !dbg !1350
  %127 = load i32, ptr %16, align 4, !dbg !1351
  %128 = add i32 %126, %127, !dbg !1352
  call void @split_chunks(ptr noundef %124, i32 noundef %125, i32 noundef %128) #6, !dbg !1353
  %129 = load ptr, ptr %10, align 4, !dbg !1354
  %130 = load i32, ptr %13, align 4, !dbg !1355
  %131 = load i32, ptr %16, align 4, !dbg !1356
  %132 = add i32 %130, %131, !dbg !1357
  call void @free_list_add(ptr noundef %129, i32 noundef %132) #6, !dbg !1358
  br label %133, !dbg !1359

133:                                              ; preds = %123, %110
  %134 = load ptr, ptr %10, align 4, !dbg !1360
  %135 = load i32, ptr %12, align 4, !dbg !1361
  %136 = load i32, ptr %13, align 4, !dbg !1362
  call void @merge_chunks(ptr noundef %134, i32 noundef %135, i32 noundef %136) #6, !dbg !1363
  %137 = load ptr, ptr %10, align 4, !dbg !1364
  %138 = load i32, ptr %12, align 4, !dbg !1365
  call void @set_chunk_used(ptr noundef %137, i32 noundef %138, i1 noundef zeroext true) #6, !dbg !1366
  %139 = load ptr, ptr %7, align 4, !dbg !1367
  store ptr %139, ptr %5, align 4, !dbg !1368
  store i32 1, ptr %11, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %16) #7, !dbg !1369
  br label %174

140:                                              ; preds = %100, %96
  br label %141

141:                                              ; preds = %140
  br label %142

142:                                              ; preds = %141
  br label %143

143:                                              ; preds = %142
  br label %144

144:                                              ; preds = %143, %68
  call void @llvm.lifetime.start.p0(i64 4, ptr %17) #7, !dbg !1370
  call void @llvm.dbg.declare(metadata ptr %17, metadata !1212, metadata !DIExpression()), !dbg !1371
  %145 = load ptr, ptr %6, align 4, !dbg !1372
  %146 = load i32, ptr %8, align 4, !dbg !1373
  %147 = load i32, ptr %9, align 4, !dbg !1374
  %148 = call ptr @sys_heap_aligned_alloc(ptr noundef %145, i32 noundef %146, i32 noundef %147) #6, !dbg !1375
  store ptr %148, ptr %17, align 4, !dbg !1371
  %149 = load ptr, ptr %17, align 4, !dbg !1376
  %150 = icmp ne ptr %149, null, !dbg !1377
  br i1 %150, label %151, label %172, !dbg !1378

151:                                              ; preds = %144
  call void @llvm.lifetime.start.p0(i64 4, ptr %18) #7, !dbg !1379
  call void @llvm.dbg.declare(metadata ptr %18, metadata !1213, metadata !DIExpression()), !dbg !1380
  %152 = load ptr, ptr %10, align 4, !dbg !1381
  %153 = load ptr, ptr %10, align 4, !dbg !1382
  %154 = load i32, ptr %12, align 4, !dbg !1383
  %155 = call i32 @chunk_size(ptr noundef %153, i32 noundef %154) #6, !dbg !1384
  %156 = call i32 @chunksz_to_bytes(ptr noundef %152, i32 noundef %155) #6, !dbg !1385
  %157 = load i32, ptr %14, align 4, !dbg !1386
  %158 = sub i32 %156, %157, !dbg !1387
  store i32 %158, ptr %18, align 4, !dbg !1380
  %159 = load ptr, ptr %17, align 4, !dbg !1388
  %160 = load ptr, ptr %7, align 4, !dbg !1389
  %161 = load i32, ptr %18, align 4, !dbg !1390
  %162 = load i32, ptr %9, align 4, !dbg !1391
  %163 = icmp ult i32 %161, %162, !dbg !1392
  br i1 %163, label %164, label %166, !dbg !1393

164:                                              ; preds = %151
  %165 = load i32, ptr %18, align 4, !dbg !1394
  br label %168, !dbg !1393

166:                                              ; preds = %151
  %167 = load i32, ptr %9, align 4, !dbg !1395
  br label %168, !dbg !1393

168:                                              ; preds = %166, %164
  %169 = phi i32 [ %165, %164 ], [ %167, %166 ], !dbg !1393
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %159, ptr align 1 %160, i32 %169, i1 false), !dbg !1396
  %170 = load ptr, ptr %6, align 4, !dbg !1397
  %171 = load ptr, ptr %7, align 4, !dbg !1398
  call void @sys_heap_free(ptr noundef %170, ptr noundef %171) #6, !dbg !1399
  call void @llvm.lifetime.end.p0(i64 4, ptr %18) #7, !dbg !1400
  br label %172, !dbg !1401

172:                                              ; preds = %168, %144
  %173 = load ptr, ptr %17, align 4, !dbg !1402
  store ptr %173, ptr %5, align 4, !dbg !1403
  store i32 1, ptr %11, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %17) #7, !dbg !1404
  br label %174

174:                                              ; preds = %172, %133, %83, %75
  call void @llvm.lifetime.end.p0(i64 4, ptr %15) #7, !dbg !1404
  call void @llvm.lifetime.end.p0(i64 4, ptr %14) #7, !dbg !1404
  call void @llvm.lifetime.end.p0(i64 4, ptr %13) #7, !dbg !1404
  call void @llvm.lifetime.end.p0(i64 4, ptr %12) #7, !dbg !1404
  br label %175

175:                                              ; preds = %174, %39, %32, %24
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #7, !dbg !1404
  %176 = load ptr, ptr %5, align 4, !dbg !1404
  ret ptr %176, !dbg !1404
}

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @chunk_used(ptr noundef %0, i32 noundef %1) #0 !dbg !1405 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1409, metadata !DIExpression()), !dbg !1411
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1410, metadata !DIExpression()), !dbg !1412
  %5 = load ptr, ptr %3, align 4, !dbg !1413
  %6 = load i32, ptr %4, align 4, !dbg !1414
  %7 = call i32 @chunk_field(ptr noundef %5, i32 noundef %6, i8 noundef zeroext 1) #6, !dbg !1415
  %8 = and i32 %7, 1, !dbg !1416
  %9 = icmp ne i32 %8, 0, !dbg !1415
  ret i1 %9, !dbg !1417
}

; Function Attrs: nounwind optsize
define internal void @free_list_remove(ptr noundef %0, i32 noundef %1) #1 !dbg !1418 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1420, metadata !DIExpression()), !dbg !1425
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1421, metadata !DIExpression()), !dbg !1426
  %6 = load ptr, ptr %3, align 4, !dbg !1427
  %7 = load i32, ptr %4, align 4, !dbg !1428
  %8 = call zeroext i1 @solo_free_header(ptr noundef %6, i32 noundef %7) #6, !dbg !1429
  br i1 %8, label %18, label %9, !dbg !1430

9:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #7, !dbg !1431
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1422, metadata !DIExpression()), !dbg !1432
  %10 = load ptr, ptr %3, align 4, !dbg !1433
  %11 = load ptr, ptr %3, align 4, !dbg !1434
  %12 = load i32, ptr %4, align 4, !dbg !1435
  %13 = call i32 @chunk_size(ptr noundef %11, i32 noundef %12) #6, !dbg !1436
  %14 = call i32 @bucket_idx(ptr noundef %10, i32 noundef %13) #6, !dbg !1437
  store i32 %14, ptr %5, align 4, !dbg !1432
  %15 = load ptr, ptr %3, align 4, !dbg !1438
  %16 = load i32, ptr %4, align 4, !dbg !1439
  %17 = load i32, ptr %5, align 4, !dbg !1440
  call void @free_list_remove_bidx(ptr noundef %15, i32 noundef %16, i32 noundef %17) #6, !dbg !1441
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #7, !dbg !1442
  br label %18, !dbg !1443

18:                                               ; preds = %9, %2
  ret void, !dbg !1444
}

; Function Attrs: nounwind optsize
define internal void @merge_chunks(ptr noundef %0, i32 noundef %1, i32 noundef %2) #1 !dbg !1445 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1447, metadata !DIExpression()), !dbg !1451
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1448, metadata !DIExpression()), !dbg !1452
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1449, metadata !DIExpression()), !dbg !1453
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #7, !dbg !1454
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1450, metadata !DIExpression()), !dbg !1455
  %8 = load ptr, ptr %4, align 4, !dbg !1456
  %9 = load i32, ptr %5, align 4, !dbg !1457
  %10 = call i32 @chunk_size(ptr noundef %8, i32 noundef %9) #6, !dbg !1458
  %11 = load ptr, ptr %4, align 4, !dbg !1459
  %12 = load i32, ptr %6, align 4, !dbg !1460
  %13 = call i32 @chunk_size(ptr noundef %11, i32 noundef %12) #6, !dbg !1461
  %14 = add i32 %10, %13, !dbg !1462
  store i32 %14, ptr %7, align 4, !dbg !1455
  %15 = load ptr, ptr %4, align 4, !dbg !1463
  %16 = load i32, ptr %5, align 4, !dbg !1464
  %17 = load i32, ptr %7, align 4, !dbg !1465
  call void @set_chunk_size(ptr noundef %15, i32 noundef %16, i32 noundef %17) #6, !dbg !1466
  %18 = load ptr, ptr %4, align 4, !dbg !1467
  %19 = load ptr, ptr %4, align 4, !dbg !1468
  %20 = load i32, ptr %6, align 4, !dbg !1469
  %21 = call i32 @right_chunk(ptr noundef %19, i32 noundef %20) #6, !dbg !1470
  %22 = load i32, ptr %7, align 4, !dbg !1471
  call void @set_left_chunk_size(ptr noundef %18, i32 noundef %21, i32 noundef %22) #6, !dbg !1472
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #7, !dbg !1473
  ret void, !dbg !1473
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @chunksz_to_bytes(ptr noundef %0, i32 noundef %1) #0 !dbg !1474 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1478, metadata !DIExpression()), !dbg !1480
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1479, metadata !DIExpression()), !dbg !1481
  %5 = load i32, ptr %4, align 4, !dbg !1482
  %6 = mul i32 %5, 8, !dbg !1483
  %7 = load ptr, ptr %3, align 4, !dbg !1484
  %8 = call i32 @chunk_header_bytes(ptr noundef %7) #6, !dbg !1485
  %9 = sub i32 %6, %8, !dbg !1486
  ret i32 %9, !dbg !1487
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: nounwind optsize
define hidden void @sys_heap_init(ptr noundef %0, ptr noundef %1, i32 noundef %2) #1 !dbg !1488 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1492, metadata !DIExpression()), !dbg !1503
  store ptr %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1493, metadata !DIExpression()), !dbg !1504
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1494, metadata !DIExpression()), !dbg !1505
  %14 = load i32, ptr %6, align 4, !dbg !1506
  %15 = call i32 @heap_footer_bytes(i32 noundef %14) #6, !dbg !1507
  %16 = load i32, ptr %6, align 4, !dbg !1508
  %17 = sub i32 %16, %15, !dbg !1508
  store i32 %17, ptr %6, align 4, !dbg !1508
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #7, !dbg !1509
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1495, metadata !DIExpression()), !dbg !1510
  %18 = load ptr, ptr %5, align 4, !dbg !1511
  %19 = ptrtoint ptr %18 to i32, !dbg !1512
  %20 = add i32 %19, 7, !dbg !1513
  %21 = udiv i32 %20, 8, !dbg !1514
  %22 = mul i32 %21, 8, !dbg !1515
  store i32 %22, ptr %7, align 4, !dbg !1510
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #7, !dbg !1516
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1496, metadata !DIExpression()), !dbg !1517
  %23 = load ptr, ptr %5, align 4, !dbg !1518
  %24 = load i32, ptr %6, align 4, !dbg !1519
  %25 = getelementptr inbounds i8, ptr %23, i32 %24, !dbg !1520
  %26 = ptrtoint ptr %25 to i32, !dbg !1521
  %27 = udiv i32 %26, 8, !dbg !1522
  %28 = mul i32 %27, 8, !dbg !1523
  store i32 %28, ptr %8, align 4, !dbg !1517
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #7, !dbg !1524
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1497, metadata !DIExpression()), !dbg !1525
  %29 = load i32, ptr %8, align 4, !dbg !1526
  %30 = load i32, ptr %7, align 4, !dbg !1527
  %31 = sub i32 %29, %30, !dbg !1528
  %32 = udiv i32 %31, 8, !dbg !1529
  store i32 %32, ptr %9, align 4, !dbg !1525
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #7, !dbg !1530
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1498, metadata !DIExpression()), !dbg !1531
  %33 = load i32, ptr %7, align 4, !dbg !1532
  %34 = inttoptr i32 %33 to ptr, !dbg !1533
  store ptr %34, ptr %10, align 4, !dbg !1531
  %35 = load ptr, ptr %10, align 4, !dbg !1534
  %36 = load ptr, ptr %4, align 4, !dbg !1535
  %37 = getelementptr inbounds %struct.sys_heap, ptr %36, i32 0, i32 0, !dbg !1536
  store ptr %35, ptr %37, align 4, !dbg !1537
  %38 = load i32, ptr %9, align 4, !dbg !1538
  %39 = load ptr, ptr %10, align 4, !dbg !1539
  %40 = getelementptr inbounds %struct.z_heap, ptr %39, i32 0, i32 1, !dbg !1540
  store i32 %38, ptr %40, align 4, !dbg !1541
  %41 = load ptr, ptr %10, align 4, !dbg !1542
  %42 = getelementptr inbounds %struct.z_heap, ptr %41, i32 0, i32 2, !dbg !1543
  store i32 0, ptr %42, align 4, !dbg !1544
  call void @llvm.lifetime.start.p0(i64 4, ptr %11) #7, !dbg !1545
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1499, metadata !DIExpression()), !dbg !1546
  %43 = load ptr, ptr %10, align 4, !dbg !1547
  %44 = load i32, ptr %9, align 4, !dbg !1548
  %45 = call i32 @bucket_idx(ptr noundef %43, i32 noundef %44) #6, !dbg !1549
  %46 = add nsw i32 %45, 1, !dbg !1550
  store i32 %46, ptr %11, align 4, !dbg !1546
  call void @llvm.lifetime.start.p0(i64 4, ptr %12) #7, !dbg !1551
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1500, metadata !DIExpression()), !dbg !1552
  %47 = load i32, ptr %11, align 4, !dbg !1553
  %48 = mul i32 %47, 4, !dbg !1554
  %49 = add i32 16, %48, !dbg !1555
  %50 = call i32 @chunksz(i32 noundef %49) #6, !dbg !1556
  store i32 %50, ptr %12, align 4, !dbg !1552
  call void @llvm.lifetime.start.p0(i64 4, ptr %13) #7, !dbg !1557
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1501, metadata !DIExpression()), !dbg !1558
  store i32 0, ptr %13, align 4, !dbg !1558
  br label %51, !dbg !1557

51:                                               ; preds = %62, %3
  %52 = load i32, ptr %13, align 4, !dbg !1559
  %53 = load i32, ptr %11, align 4, !dbg !1561
  %54 = icmp slt i32 %52, %53, !dbg !1562
  br i1 %54, label %56, label %55, !dbg !1563

55:                                               ; preds = %51
  call void @llvm.lifetime.end.p0(i64 4, ptr %13) #7, !dbg !1564
  br label %65

56:                                               ; preds = %51
  %57 = load ptr, ptr %10, align 4, !dbg !1565
  %58 = getelementptr inbounds %struct.z_heap, ptr %57, i32 0, i32 3, !dbg !1567
  %59 = load i32, ptr %13, align 4, !dbg !1568
  %60 = getelementptr inbounds [0 x %struct.z_heap_bucket], ptr %58, i32 0, i32 %59, !dbg !1565
  %61 = getelementptr inbounds %struct.z_heap_bucket, ptr %60, i32 0, i32 0, !dbg !1569
  store i32 0, ptr %61, align 4, !dbg !1570
  br label %62, !dbg !1571

62:                                               ; preds = %56
  %63 = load i32, ptr %13, align 4, !dbg !1572
  %64 = add nsw i32 %63, 1, !dbg !1572
  store i32 %64, ptr %13, align 4, !dbg !1572
  br label %51, !dbg !1564, !llvm.loop !1573

65:                                               ; preds = %55
  %66 = load ptr, ptr %10, align 4, !dbg !1575
  %67 = load i32, ptr %12, align 4, !dbg !1576
  call void @set_chunk_size(ptr noundef %66, i32 noundef 0, i32 noundef %67) #6, !dbg !1577
  %68 = load ptr, ptr %10, align 4, !dbg !1578
  call void @set_left_chunk_size(ptr noundef %68, i32 noundef 0, i32 noundef 0) #6, !dbg !1579
  %69 = load ptr, ptr %10, align 4, !dbg !1580
  call void @set_chunk_used(ptr noundef %69, i32 noundef 0, i1 noundef zeroext true) #6, !dbg !1581
  %70 = load ptr, ptr %10, align 4, !dbg !1582
  %71 = load i32, ptr %12, align 4, !dbg !1583
  %72 = load i32, ptr %9, align 4, !dbg !1584
  %73 = load i32, ptr %12, align 4, !dbg !1585
  %74 = sub i32 %72, %73, !dbg !1586
  call void @set_chunk_size(ptr noundef %70, i32 noundef %71, i32 noundef %74) #6, !dbg !1587
  %75 = load ptr, ptr %10, align 4, !dbg !1588
  %76 = load i32, ptr %12, align 4, !dbg !1589
  %77 = load i32, ptr %12, align 4, !dbg !1590
  call void @set_left_chunk_size(ptr noundef %75, i32 noundef %76, i32 noundef %77) #6, !dbg !1591
  %78 = load ptr, ptr %10, align 4, !dbg !1592
  %79 = load i32, ptr %9, align 4, !dbg !1593
  call void @set_chunk_size(ptr noundef %78, i32 noundef %79, i32 noundef 0) #6, !dbg !1594
  %80 = load ptr, ptr %10, align 4, !dbg !1595
  %81 = load i32, ptr %9, align 4, !dbg !1596
  %82 = load i32, ptr %9, align 4, !dbg !1597
  %83 = load i32, ptr %12, align 4, !dbg !1598
  %84 = sub i32 %82, %83, !dbg !1599
  call void @set_left_chunk_size(ptr noundef %80, i32 noundef %81, i32 noundef %84) #6, !dbg !1600
  %85 = load ptr, ptr %10, align 4, !dbg !1601
  %86 = load i32, ptr %9, align 4, !dbg !1602
  call void @set_chunk_used(ptr noundef %85, i32 noundef %86, i1 noundef zeroext true) #6, !dbg !1603
  %87 = load ptr, ptr %10, align 4, !dbg !1604
  %88 = load i32, ptr %12, align 4, !dbg !1605
  call void @free_list_add(ptr noundef %87, i32 noundef %88) #6, !dbg !1606
  call void @llvm.lifetime.end.p0(i64 4, ptr %12) #7, !dbg !1607
  call void @llvm.lifetime.end.p0(i64 4, ptr %11) #7, !dbg !1607
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #7, !dbg !1607
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #7, !dbg !1607
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #7, !dbg !1607
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #7, !dbg !1607
  ret void, !dbg !1607
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @heap_footer_bytes(i32 noundef %0) #0 !dbg !1608 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1612, metadata !DIExpression()), !dbg !1613
  %3 = load i32, ptr %2, align 4, !dbg !1614
  %4 = call zeroext i1 @big_heap_bytes(i32 noundef %3) #6, !dbg !1615
  %5 = zext i1 %4 to i64, !dbg !1615
  %6 = select i1 %4, i32 8, i32 4, !dbg !1615
  ret i32 %6, !dbg !1616
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @bucket_idx(ptr noundef %0, i32 noundef %1) #0 !dbg !1617 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1621, metadata !DIExpression()), !dbg !1624
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1622, metadata !DIExpression()), !dbg !1625
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #7, !dbg !1626
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1623, metadata !DIExpression()), !dbg !1627
  %6 = load i32, ptr %4, align 4, !dbg !1628
  %7 = load ptr, ptr %3, align 4, !dbg !1629
  %8 = call i32 @min_chunk_size(ptr noundef %7) #6, !dbg !1630
  %9 = sub i32 %6, %8, !dbg !1631
  %10 = add i32 %9, 1, !dbg !1632
  store i32 %10, ptr %5, align 4, !dbg !1627
  %11 = load i32, ptr %5, align 4, !dbg !1633
  %12 = call i32 @llvm.ctlz.i32(i32 %11, i1 false), !dbg !1634
  %13 = sub nsw i32 31, %12, !dbg !1635
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #7, !dbg !1636
  ret i32 %13, !dbg !1637
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @chunksz(i32 noundef %0) #0 !dbg !1638 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1642, metadata !DIExpression()), !dbg !1643
  %3 = load i32, ptr %2, align 4, !dbg !1644
  %4 = add i32 %3, 8, !dbg !1645
  %5 = sub i32 %4, 1, !dbg !1646
  %6 = udiv i32 %5, 8, !dbg !1647
  ret i32 %6, !dbg !1648
}

; Function Attrs: inlinehint nounwind optsize
define internal void @set_chunk_size(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 !dbg !1649 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1653, metadata !DIExpression()), !dbg !1656
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1654, metadata !DIExpression()), !dbg !1657
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1655, metadata !DIExpression()), !dbg !1658
  %7 = load ptr, ptr %4, align 4, !dbg !1659
  %8 = load i32, ptr %5, align 4, !dbg !1660
  %9 = load i32, ptr %6, align 4, !dbg !1661
  %10 = shl i32 %9, 1, !dbg !1662
  call void @chunk_set(ptr noundef %7, i32 noundef %8, i8 noundef zeroext 1, i32 noundef %10) #6, !dbg !1663
  ret void, !dbg !1664
}

; Function Attrs: inlinehint nounwind optsize
define internal void @set_left_chunk_size(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 !dbg !1665 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1667, metadata !DIExpression()), !dbg !1670
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1668, metadata !DIExpression()), !dbg !1671
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1669, metadata !DIExpression()), !dbg !1672
  %7 = load ptr, ptr %4, align 4, !dbg !1673
  %8 = load i32, ptr %5, align 4, !dbg !1674
  %9 = load i32, ptr %6, align 4, !dbg !1675
  call void @chunk_set(ptr noundef %7, i32 noundef %8, i8 noundef zeroext 0, i32 noundef %9) #6, !dbg !1676
  ret void, !dbg !1677
}

; Function Attrs: optsize
declare !dbg !1678 dso_local i64 @z_timeout_expires(ptr noundef) #5

; Function Attrs: optsize
declare !dbg !1683 dso_local i64 @z_timeout_remaining(ptr noundef) #5

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @sys_sflist_is_empty(ptr noundef %0) #0 !dbg !1684 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1689, metadata !DIExpression()), !dbg !1690
  %3 = load ptr, ptr %2, align 4, !dbg !1691
  %4 = call ptr @sys_sflist_peek_head(ptr noundef %3) #6, !dbg !1692
  %5 = icmp eq ptr %4, null, !dbg !1693
  ret i1 %5, !dbg !1694
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @sys_sflist_peek_head(ptr noundef %0) #0 !dbg !1695 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1699, metadata !DIExpression()), !dbg !1700
  %3 = load ptr, ptr %2, align 4, !dbg !1701
  %4 = getelementptr inbounds %struct._sflist, ptr %3, i32 0, i32 0, !dbg !1702
  %5 = load ptr, ptr %4, align 4, !dbg !1702
  ret ptr %5, !dbg !1703
}

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @big_heap(ptr noundef %0) #0 !dbg !1704 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1708, metadata !DIExpression()), !dbg !1709
  %3 = load ptr, ptr %2, align 4, !dbg !1710
  %4 = getelementptr inbounds %struct.z_heap, ptr %3, i32 0, i32 1, !dbg !1711
  %5 = load i32, ptr %4, align 4, !dbg !1711
  %6 = call zeroext i1 @big_heap_chunks(i32 noundef %5) #6, !dbg !1712
  ret i1 %6, !dbg !1713
}

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @big_heap_chunks(i32 noundef %0) #0 !dbg !1714 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1718, metadata !DIExpression()), !dbg !1719
  ret i1 false, !dbg !1720
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @left_chunk(ptr noundef %0, i32 noundef %1) #0 !dbg !1723 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1725, metadata !DIExpression()), !dbg !1727
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1726, metadata !DIExpression()), !dbg !1728
  %5 = load i32, ptr %4, align 4, !dbg !1729
  %6 = load ptr, ptr %3, align 4, !dbg !1730
  %7 = load i32, ptr %4, align 4, !dbg !1731
  %8 = call i32 @chunk_field(ptr noundef %6, i32 noundef %7, i8 noundef zeroext 0) #6, !dbg !1732
  %9 = sub i32 %5, %8, !dbg !1733
  ret i32 %9, !dbg !1734
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @chunk_field(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2) #0 !dbg !1735 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  %10 = alloca i32, align 4
  store ptr %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1739, metadata !DIExpression()), !dbg !1744
  store i32 %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1740, metadata !DIExpression()), !dbg !1745
  store i8 %2, ptr %7, align 1
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1741, metadata !DIExpression()), !dbg !1746
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #7, !dbg !1747
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1742, metadata !DIExpression()), !dbg !1748
  %11 = load ptr, ptr %5, align 4, !dbg !1749
  %12 = call ptr @chunk_buf(ptr noundef %11) #6, !dbg !1750
  store ptr %12, ptr %8, align 4, !dbg !1748
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #7, !dbg !1751
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1743, metadata !DIExpression()), !dbg !1752
  %13 = load ptr, ptr %8, align 4, !dbg !1753
  %14 = load i32, ptr %6, align 4, !dbg !1754
  %15 = getelementptr inbounds %struct.chunk_unit_t, ptr %13, i32 %14, !dbg !1753
  store ptr %15, ptr %9, align 4, !dbg !1752
  %16 = load ptr, ptr %5, align 4, !dbg !1755
  %17 = call zeroext i1 @big_heap(ptr noundef %16) #6, !dbg !1757
  br i1 %17, label %18, label %24, !dbg !1758

18:                                               ; preds = %3
  %19 = load ptr, ptr %9, align 4, !dbg !1759
  %20 = load i8, ptr %7, align 1, !dbg !1761
  %21 = zext i8 %20 to i32, !dbg !1762
  %22 = getelementptr inbounds i32, ptr %19, i32 %21, !dbg !1762
  %23 = load i32, ptr %22, align 4, !dbg !1762
  store i32 %23, ptr %4, align 4, !dbg !1763
  store i32 1, ptr %10, align 4
  br label %31, !dbg !1763

24:                                               ; preds = %3
  %25 = load ptr, ptr %9, align 4, !dbg !1764
  %26 = load i8, ptr %7, align 1, !dbg !1766
  %27 = zext i8 %26 to i32, !dbg !1767
  %28 = getelementptr inbounds i16, ptr %25, i32 %27, !dbg !1767
  %29 = load i16, ptr %28, align 2, !dbg !1767
  %30 = zext i16 %29 to i32, !dbg !1767
  store i32 %30, ptr %4, align 4, !dbg !1768
  store i32 1, ptr %10, align 4
  br label %31, !dbg !1768

31:                                               ; preds = %24, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #7, !dbg !1769
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #7, !dbg !1769
  %32 = load i32, ptr %4, align 4, !dbg !1769
  ret i32 %32, !dbg !1769
}

; Function Attrs: nounwind optsize
define internal void @free_list_remove_bidx(ptr noundef %0, i32 noundef %1, i32 noundef %2) #1 !dbg !1770 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1774, metadata !DIExpression()), !dbg !1782
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1775, metadata !DIExpression()), !dbg !1783
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1776, metadata !DIExpression()), !dbg !1784
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #7, !dbg !1785
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1777, metadata !DIExpression()), !dbg !1786
  %10 = load ptr, ptr %4, align 4, !dbg !1787
  %11 = getelementptr inbounds %struct.z_heap, ptr %10, i32 0, i32 3, !dbg !1788
  %12 = load i32, ptr %6, align 4, !dbg !1789
  %13 = getelementptr inbounds [0 x %struct.z_heap_bucket], ptr %11, i32 0, i32 %12, !dbg !1787
  store ptr %13, ptr %7, align 4, !dbg !1786
  %14 = load ptr, ptr %4, align 4, !dbg !1790
  %15 = load i32, ptr %5, align 4, !dbg !1791
  %16 = call i32 @next_free_chunk(ptr noundef %14, i32 noundef %15) #6, !dbg !1792
  %17 = load i32, ptr %5, align 4, !dbg !1793
  %18 = icmp eq i32 %16, %17, !dbg !1794
  br i1 %18, label %19, label %29, !dbg !1795

19:                                               ; preds = %3
  %20 = load i32, ptr %6, align 4, !dbg !1796
  %21 = shl i32 1, %20, !dbg !1798
  %22 = xor i32 %21, -1, !dbg !1799
  %23 = load ptr, ptr %4, align 4, !dbg !1800
  %24 = getelementptr inbounds %struct.z_heap, ptr %23, i32 0, i32 2, !dbg !1801
  %25 = load i32, ptr %24, align 4, !dbg !1802
  %26 = and i32 %25, %22, !dbg !1802
  store i32 %26, ptr %24, align 4, !dbg !1802
  %27 = load ptr, ptr %7, align 4, !dbg !1803
  %28 = getelementptr inbounds %struct.z_heap_bucket, ptr %27, i32 0, i32 0, !dbg !1804
  store i32 0, ptr %28, align 4, !dbg !1805
  br label %45, !dbg !1806

29:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #7, !dbg !1807
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1778, metadata !DIExpression()), !dbg !1808
  %30 = load ptr, ptr %4, align 4, !dbg !1809
  %31 = load i32, ptr %5, align 4, !dbg !1810
  %32 = call i32 @prev_free_chunk(ptr noundef %30, i32 noundef %31) #6, !dbg !1811
  store i32 %32, ptr %8, align 4, !dbg !1808
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #7, !dbg !1807
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1781, metadata !DIExpression()), !dbg !1812
  %33 = load ptr, ptr %4, align 4, !dbg !1813
  %34 = load i32, ptr %5, align 4, !dbg !1814
  %35 = call i32 @next_free_chunk(ptr noundef %33, i32 noundef %34) #6, !dbg !1815
  store i32 %35, ptr %9, align 4, !dbg !1812
  %36 = load i32, ptr %9, align 4, !dbg !1816
  %37 = load ptr, ptr %7, align 4, !dbg !1817
  %38 = getelementptr inbounds %struct.z_heap_bucket, ptr %37, i32 0, i32 0, !dbg !1818
  store i32 %36, ptr %38, align 4, !dbg !1819
  %39 = load ptr, ptr %4, align 4, !dbg !1820
  %40 = load i32, ptr %8, align 4, !dbg !1821
  %41 = load i32, ptr %9, align 4, !dbg !1822
  call void @set_next_free_chunk(ptr noundef %39, i32 noundef %40, i32 noundef %41) #6, !dbg !1823
  %42 = load ptr, ptr %4, align 4, !dbg !1824
  %43 = load i32, ptr %9, align 4, !dbg !1825
  %44 = load i32, ptr %8, align 4, !dbg !1826
  call void @set_prev_free_chunk(ptr noundef %42, i32 noundef %43, i32 noundef %44) #6, !dbg !1827
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #7, !dbg !1828
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #7, !dbg !1828
  br label %45

45:                                               ; preds = %29, %19
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #7, !dbg !1829
  ret void, !dbg !1829
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @next_free_chunk(ptr noundef %0, i32 noundef %1) #0 !dbg !1830 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1832, metadata !DIExpression()), !dbg !1834
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1833, metadata !DIExpression()), !dbg !1835
  %5 = load ptr, ptr %3, align 4, !dbg !1836
  %6 = load i32, ptr %4, align 4, !dbg !1837
  %7 = call i32 @chunk_field(ptr noundef %5, i32 noundef %6, i8 noundef zeroext 3) #6, !dbg !1838
  ret i32 %7, !dbg !1839
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #2

; Function Attrs: inlinehint nounwind optsize
define internal i32 @prev_free_chunk(ptr noundef %0, i32 noundef %1) #0 !dbg !1840 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1842, metadata !DIExpression()), !dbg !1844
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1843, metadata !DIExpression()), !dbg !1845
  %5 = load ptr, ptr %3, align 4, !dbg !1846
  %6 = load i32, ptr %4, align 4, !dbg !1847
  %7 = call i32 @chunk_field(ptr noundef %5, i32 noundef %6, i8 noundef zeroext 2) #6, !dbg !1848
  ret i32 %7, !dbg !1849
}

; Function Attrs: inlinehint nounwind optsize
define internal void @set_next_free_chunk(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 !dbg !1850 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1852, metadata !DIExpression()), !dbg !1855
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1853, metadata !DIExpression()), !dbg !1856
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1854, metadata !DIExpression()), !dbg !1857
  %7 = load ptr, ptr %4, align 4, !dbg !1858
  %8 = load i32, ptr %5, align 4, !dbg !1859
  %9 = load i32, ptr %6, align 4, !dbg !1860
  call void @chunk_set(ptr noundef %7, i32 noundef %8, i8 noundef zeroext 3, i32 noundef %9) #6, !dbg !1861
  ret void, !dbg !1862
}

; Function Attrs: inlinehint nounwind optsize
define internal void @set_prev_free_chunk(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 !dbg !1863 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1865, metadata !DIExpression()), !dbg !1868
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1866, metadata !DIExpression()), !dbg !1869
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1867, metadata !DIExpression()), !dbg !1870
  %7 = load ptr, ptr %4, align 4, !dbg !1871
  %8 = load i32, ptr %5, align 4, !dbg !1872
  %9 = load i32, ptr %6, align 4, !dbg !1873
  call void @chunk_set(ptr noundef %7, i32 noundef %8, i8 noundef zeroext 2, i32 noundef %9) #6, !dbg !1874
  ret void, !dbg !1875
}

; Function Attrs: inlinehint nounwind optsize
define internal void @chunk_set(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2, i32 noundef %3) #0 !dbg !1876 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  store ptr %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1880, metadata !DIExpression()), !dbg !1886
  store i32 %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1881, metadata !DIExpression()), !dbg !1887
  store i8 %2, ptr %7, align 1
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1882, metadata !DIExpression()), !dbg !1888
  store i32 %3, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1883, metadata !DIExpression()), !dbg !1889
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #7, !dbg !1890
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1884, metadata !DIExpression()), !dbg !1891
  %11 = load ptr, ptr %5, align 4, !dbg !1892
  %12 = call ptr @chunk_buf(ptr noundef %11) #6, !dbg !1893
  store ptr %12, ptr %9, align 4, !dbg !1891
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #7, !dbg !1894
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1885, metadata !DIExpression()), !dbg !1895
  %13 = load ptr, ptr %9, align 4, !dbg !1896
  %14 = load i32, ptr %6, align 4, !dbg !1897
  %15 = getelementptr inbounds %struct.chunk_unit_t, ptr %13, i32 %14, !dbg !1896
  store ptr %15, ptr %10, align 4, !dbg !1895
  %16 = load ptr, ptr %5, align 4, !dbg !1898
  %17 = call zeroext i1 @big_heap(ptr noundef %16) #6, !dbg !1900
  br i1 %17, label %18, label %24, !dbg !1901

18:                                               ; preds = %4
  %19 = load i32, ptr %8, align 4, !dbg !1902
  %20 = load ptr, ptr %10, align 4, !dbg !1904
  %21 = load i8, ptr %7, align 1, !dbg !1905
  %22 = zext i8 %21 to i32, !dbg !1906
  %23 = getelementptr inbounds i32, ptr %20, i32 %22, !dbg !1906
  store i32 %19, ptr %23, align 4, !dbg !1907
  br label %31, !dbg !1908

24:                                               ; preds = %4
  %25 = load i32, ptr %8, align 4, !dbg !1909
  %26 = trunc i32 %25 to i16, !dbg !1909
  %27 = load ptr, ptr %10, align 4, !dbg !1911
  %28 = load i8, ptr %7, align 1, !dbg !1912
  %29 = zext i8 %28 to i32, !dbg !1913
  %30 = getelementptr inbounds i16, ptr %27, i32 %29, !dbg !1913
  store i16 %26, ptr %30, align 2, !dbg !1914
  br label %31

31:                                               ; preds = %24, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #7, !dbg !1915
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #7, !dbg !1915
  ret void, !dbg !1915
}

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @solo_free_header(ptr noundef %0, i32 noundef %1) #0 !dbg !1916 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1918, metadata !DIExpression()), !dbg !1920
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1919, metadata !DIExpression()), !dbg !1921
  %5 = load ptr, ptr %3, align 4, !dbg !1922
  %6 = call zeroext i1 @big_heap(ptr noundef %5) #6, !dbg !1923
  br i1 %6, label %7, label %12, !dbg !1924

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 4, !dbg !1925
  %9 = load i32, ptr %4, align 4, !dbg !1926
  %10 = call i32 @chunk_size(ptr noundef %8, i32 noundef %9) #6, !dbg !1927
  %11 = icmp eq i32 %10, 1, !dbg !1928
  br label %12

12:                                               ; preds = %7, %2
  %13 = phi i1 [ false, %2 ], [ %11, %7 ], !dbg !1929
  ret i1 %13, !dbg !1930
}

; Function Attrs: nounwind optsize
define internal void @free_list_add_bidx(ptr noundef %0, i32 noundef %1, i32 noundef %2) #1 !dbg !1931 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1933, metadata !DIExpression()), !dbg !1941
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1934, metadata !DIExpression()), !dbg !1942
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1935, metadata !DIExpression()), !dbg !1943
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #7, !dbg !1944
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1936, metadata !DIExpression()), !dbg !1945
  %10 = load ptr, ptr %4, align 4, !dbg !1946
  %11 = getelementptr inbounds %struct.z_heap, ptr %10, i32 0, i32 3, !dbg !1947
  %12 = load i32, ptr %6, align 4, !dbg !1948
  %13 = getelementptr inbounds [0 x %struct.z_heap_bucket], ptr %11, i32 0, i32 %12, !dbg !1946
  store ptr %13, ptr %7, align 4, !dbg !1945
  %14 = load ptr, ptr %7, align 4, !dbg !1949
  %15 = getelementptr inbounds %struct.z_heap_bucket, ptr %14, i32 0, i32 0, !dbg !1950
  %16 = load i32, ptr %15, align 4, !dbg !1950
  %17 = icmp eq i32 %16, 0, !dbg !1951
  br i1 %17, label %18, label %34, !dbg !1952

18:                                               ; preds = %3
  %19 = load i32, ptr %6, align 4, !dbg !1953
  %20 = shl i32 1, %19, !dbg !1955
  %21 = load ptr, ptr %4, align 4, !dbg !1956
  %22 = getelementptr inbounds %struct.z_heap, ptr %21, i32 0, i32 2, !dbg !1957
  %23 = load i32, ptr %22, align 4, !dbg !1958
  %24 = or i32 %23, %20, !dbg !1958
  store i32 %24, ptr %22, align 4, !dbg !1958
  %25 = load i32, ptr %5, align 4, !dbg !1959
  %26 = load ptr, ptr %7, align 4, !dbg !1960
  %27 = getelementptr inbounds %struct.z_heap_bucket, ptr %26, i32 0, i32 0, !dbg !1961
  store i32 %25, ptr %27, align 4, !dbg !1962
  %28 = load ptr, ptr %4, align 4, !dbg !1963
  %29 = load i32, ptr %5, align 4, !dbg !1964
  %30 = load i32, ptr %5, align 4, !dbg !1965
  call void @set_prev_free_chunk(ptr noundef %28, i32 noundef %29, i32 noundef %30) #6, !dbg !1966
  %31 = load ptr, ptr %4, align 4, !dbg !1967
  %32 = load i32, ptr %5, align 4, !dbg !1968
  %33 = load i32, ptr %5, align 4, !dbg !1969
  call void @set_next_free_chunk(ptr noundef %31, i32 noundef %32, i32 noundef %33) #6, !dbg !1970
  br label %53, !dbg !1971

34:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #7, !dbg !1972
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1937, metadata !DIExpression()), !dbg !1973
  %35 = load ptr, ptr %7, align 4, !dbg !1974
  %36 = getelementptr inbounds %struct.z_heap_bucket, ptr %35, i32 0, i32 0, !dbg !1975
  %37 = load i32, ptr %36, align 4, !dbg !1975
  store i32 %37, ptr %8, align 4, !dbg !1973
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #7, !dbg !1976
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1940, metadata !DIExpression()), !dbg !1977
  %38 = load ptr, ptr %4, align 4, !dbg !1978
  %39 = load i32, ptr %8, align 4, !dbg !1979
  %40 = call i32 @prev_free_chunk(ptr noundef %38, i32 noundef %39) #6, !dbg !1980
  store i32 %40, ptr %9, align 4, !dbg !1977
  %41 = load ptr, ptr %4, align 4, !dbg !1981
  %42 = load i32, ptr %5, align 4, !dbg !1982
  %43 = load i32, ptr %9, align 4, !dbg !1983
  call void @set_prev_free_chunk(ptr noundef %41, i32 noundef %42, i32 noundef %43) #6, !dbg !1984
  %44 = load ptr, ptr %4, align 4, !dbg !1985
  %45 = load i32, ptr %5, align 4, !dbg !1986
  %46 = load i32, ptr %8, align 4, !dbg !1987
  call void @set_next_free_chunk(ptr noundef %44, i32 noundef %45, i32 noundef %46) #6, !dbg !1988
  %47 = load ptr, ptr %4, align 4, !dbg !1989
  %48 = load i32, ptr %9, align 4, !dbg !1990
  %49 = load i32, ptr %5, align 4, !dbg !1991
  call void @set_next_free_chunk(ptr noundef %47, i32 noundef %48, i32 noundef %49) #6, !dbg !1992
  %50 = load ptr, ptr %4, align 4, !dbg !1993
  %51 = load i32, ptr %8, align 4, !dbg !1994
  %52 = load i32, ptr %5, align 4, !dbg !1995
  call void @set_prev_free_chunk(ptr noundef %50, i32 noundef %51, i32 noundef %52) #6, !dbg !1996
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #7, !dbg !1997
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #7, !dbg !1997
  br label %53

53:                                               ; preds = %34, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #7, !dbg !1998
  ret void, !dbg !1998
}

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @big_heap_bytes(i32 noundef %0) #0 !dbg !1999 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2003, metadata !DIExpression()), !dbg !2004
  %3 = load i32, ptr %2, align 4, !dbg !2005
  %4 = udiv i32 %3, 8, !dbg !2006
  %5 = call zeroext i1 @big_heap_chunks(i32 noundef %4) #6, !dbg !2007
  ret i1 %5, !dbg !2008
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @min_chunk_size(ptr noundef %0) #0 !dbg !2009 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2013, metadata !DIExpression()), !dbg !2014
  %3 = load ptr, ptr %2, align 4, !dbg !2015
  %4 = call i32 @bytes_to_chunksz(ptr noundef %3, i32 noundef 1) #6, !dbg !2016
  ret i32 %4, !dbg !2017
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #2

attributes #0 = { inlinehint nounwind optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { optsize }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!135, !136, !137, !138, !139, !140}
!llvm.ident = !{!141}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !93, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "heap.c", directory: "/home/sri/zephyrproject/zephyr/build")
!2 = !{!3, !86}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "k_objects", file: !4, line: 29, baseType: !5, size: 8, elements: !6)
!4 = !DIFile(filename: "include/zephyr/sys/kobject.h", directory: "/home/sri/zephyrproject/zephyr")
!5 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!6 = !{!7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85}
!7 = !DIEnumerator(name: "K_OBJ_ANY", value: 0)
!8 = !DIEnumerator(name: "K_OBJ_MEM_SLAB", value: 1)
!9 = !DIEnumerator(name: "K_OBJ_MSGQ", value: 2)
!10 = !DIEnumerator(name: "K_OBJ_MUTEX", value: 3)
!11 = !DIEnumerator(name: "K_OBJ_PIPE", value: 4)
!12 = !DIEnumerator(name: "K_OBJ_QUEUE", value: 5)
!13 = !DIEnumerator(name: "K_OBJ_POLL_SIGNAL", value: 6)
!14 = !DIEnumerator(name: "K_OBJ_SEM", value: 7)
!15 = !DIEnumerator(name: "K_OBJ_STACK", value: 8)
!16 = !DIEnumerator(name: "K_OBJ_THREAD", value: 9)
!17 = !DIEnumerator(name: "K_OBJ_TIMER", value: 10)
!18 = !DIEnumerator(name: "K_OBJ_THREAD_STACK_ELEMENT", value: 11)
!19 = !DIEnumerator(name: "K_OBJ_NET_SOCKET", value: 12)
!20 = !DIEnumerator(name: "K_OBJ_NET_IF", value: 13)
!21 = !DIEnumerator(name: "K_OBJ_SYS_MUTEX", value: 14)
!22 = !DIEnumerator(name: "K_OBJ_FUTEX", value: 15)
!23 = !DIEnumerator(name: "K_OBJ_CONDVAR", value: 16)
!24 = !DIEnumerator(name: "K_OBJ_DRIVER_GPIO", value: 17)
!25 = !DIEnumerator(name: "K_OBJ_DRIVER_RESET", value: 18)
!26 = !DIEnumerator(name: "K_OBJ_DRIVER_UART", value: 19)
!27 = !DIEnumerator(name: "K_OBJ_DRIVER_CRYPTO", value: 20)
!28 = !DIEnumerator(name: "K_OBJ_DRIVER_ADC", value: 21)
!29 = !DIEnumerator(name: "K_OBJ_DRIVER_AUXDISPLAY", value: 22)
!30 = !DIEnumerator(name: "K_OBJ_DRIVER_BBRAM", value: 23)
!31 = !DIEnumerator(name: "K_OBJ_DRIVER_CAN", value: 24)
!32 = !DIEnumerator(name: "K_OBJ_DRIVER_CHARGER", value: 25)
!33 = !DIEnumerator(name: "K_OBJ_DRIVER_COREDUMP", value: 26)
!34 = !DIEnumerator(name: "K_OBJ_DRIVER_COUNTER", value: 27)
!35 = !DIEnumerator(name: "K_OBJ_DRIVER_DAC", value: 28)
!36 = !DIEnumerator(name: "K_OBJ_DRIVER_DAI", value: 29)
!37 = !DIEnumerator(name: "K_OBJ_DRIVER_DMA", value: 30)
!38 = !DIEnumerator(name: "K_OBJ_DRIVER_EDAC", value: 31)
!39 = !DIEnumerator(name: "K_OBJ_DRIVER_EEPROM", value: 32)
!40 = !DIEnumerator(name: "K_OBJ_DRIVER_FUEL_GAUGE_EMUL", value: 33)
!41 = !DIEnumerator(name: "K_OBJ_DRIVER_EMUL_SENSOR_BACKEND_API", value: 34)
!42 = !DIEnumerator(name: "K_OBJ_DRIVER_ENTROPY", value: 35)
!43 = !DIEnumerator(name: "K_OBJ_DRIVER_ESPI", value: 36)
!44 = !DIEnumerator(name: "K_OBJ_DRIVER_ESPI_SAF", value: 37)
!45 = !DIEnumerator(name: "K_OBJ_DRIVER_FLASH", value: 38)
!46 = !DIEnumerator(name: "K_OBJ_DRIVER_FPGA", value: 39)
!47 = !DIEnumerator(name: "K_OBJ_DRIVER_FUEL_GAUGE", value: 40)
!48 = !DIEnumerator(name: "K_OBJ_DRIVER_HWSPINLOCK", value: 41)
!49 = !DIEnumerator(name: "K_OBJ_DRIVER_I2C", value: 42)
!50 = !DIEnumerator(name: "K_OBJ_DRIVER_I2S", value: 43)
!51 = !DIEnumerator(name: "K_OBJ_DRIVER_I3C", value: 44)
!52 = !DIEnumerator(name: "K_OBJ_DRIVER_IPM", value: 45)
!53 = !DIEnumerator(name: "K_OBJ_DRIVER_KSCAN", value: 46)
!54 = !DIEnumerator(name: "K_OBJ_DRIVER_LED", value: 47)
!55 = !DIEnumerator(name: "K_OBJ_DRIVER_MBOX", value: 48)
!56 = !DIEnumerator(name: "K_OBJ_DRIVER_MDIO", value: 49)
!57 = !DIEnumerator(name: "K_OBJ_DRIVER_MIPI_DSI", value: 50)
!58 = !DIEnumerator(name: "K_OBJ_DRIVER_PECI", value: 51)
!59 = !DIEnumerator(name: "K_OBJ_DRIVER_PS2", value: 52)
!60 = !DIEnumerator(name: "K_OBJ_DRIVER_PTP_CLOCK", value: 53)
!61 = !DIEnumerator(name: "K_OBJ_DRIVER_PWM", value: 54)
!62 = !DIEnumerator(name: "K_OBJ_DRIVER_REGULATOR_PARENT", value: 55)
!63 = !DIEnumerator(name: "K_OBJ_DRIVER_REGULATOR", value: 56)
!64 = !DIEnumerator(name: "K_OBJ_DRIVER_RETAINED_MEM", value: 57)
!65 = !DIEnumerator(name: "K_OBJ_DRIVER_RTC", value: 58)
!66 = !DIEnumerator(name: "K_OBJ_DRIVER_SDHC", value: 59)
!67 = !DIEnumerator(name: "K_OBJ_DRIVER_SENSOR", value: 60)
!68 = !DIEnumerator(name: "K_OBJ_DRIVER_SMBUS", value: 61)
!69 = !DIEnumerator(name: "K_OBJ_DRIVER_SPI", value: 62)
!70 = !DIEnumerator(name: "K_OBJ_DRIVER_SYSCON", value: 63)
!71 = !DIEnumerator(name: "K_OBJ_DRIVER_W1", value: 64)
!72 = !DIEnumerator(name: "K_OBJ_DRIVER_WDT", value: 65)
!73 = !DIEnumerator(name: "K_OBJ_DRIVER_CAN_TRANSCEIVER", value: 66)
!74 = !DIEnumerator(name: "K_OBJ_DRIVER_UART_MUX", value: 67)
!75 = !DIEnumerator(name: "K_OBJ_DRIVER_ITS", value: 68)
!76 = !DIEnumerator(name: "K_OBJ_DRIVER_TGPIO", value: 69)
!77 = !DIEnumerator(name: "K_OBJ_DRIVER_PCIE_CTRL", value: 70)
!78 = !DIEnumerator(name: "K_OBJ_DRIVER_SVC", value: 71)
!79 = !DIEnumerator(name: "K_OBJ_DRIVER_BC12_EMUL", value: 72)
!80 = !DIEnumerator(name: "K_OBJ_DRIVER_BC12", value: 73)
!81 = !DIEnumerator(name: "K_OBJ_DRIVER_TCPC", value: 74)
!82 = !DIEnumerator(name: "K_OBJ_DRIVER_IVSHMEM", value: 75)
!83 = !DIEnumerator(name: "K_OBJ_DRIVER_EC_HOST_CMD_BACKEND_API", value: 76)
!84 = !DIEnumerator(name: "K_OBJ_DRIVER_ETHPHY", value: 77)
!85 = !DIEnumerator(name: "K_OBJ_LAST", value: 78)
!86 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "chunk_fields", file: !87, line: 54, baseType: !5, size: 8, elements: !88)
!87 = !DIFile(filename: "lib/os/heap.h", directory: "/home/sri/zephyrproject/zephyr")
!88 = !{!89, !90, !91, !92}
!89 = !DIEnumerator(name: "LEFT_SIZE", value: 0)
!90 = !DIEnumerator(name: "SIZE_AND_USED", value: 1)
!91 = !DIEnumerator(name: "FREE_PREV", value: 2)
!92 = !DIEnumerator(name: "FREE_NEXT", value: 3)
!93 = !{!94, !97, !100, !101, !110, !111, !129, !130, !131, !132}
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !95, line: 51, baseType: !96)
!95 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/string.h", directory: "")
!96 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 32)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !99, line: 62, baseType: !5)
!99 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/stdint.h", directory: "")
!100 = !DIBasicType(name: "unsigned long", size: 32, encoding: DW_ATE_unsigned)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 32)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "chunk_unit_t", file: !87, line: 58, baseType: !103)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !87, line: 58, size: 64, elements: !104)
!104 = !{!105}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !103, file: !87, line: 58, baseType: !106, size: 64)
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 64, elements: !108)
!107 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!108 = !{!109}
!109 = !DISubrange(count: 8)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !99, line: 102, baseType: !96)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 32)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "z_heap", file: !87, line: 68, size: 128, elements: !113)
!113 = !{!114, !120, !121, !122}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "chunk0_hdr", scope: !112, file: !87, line: 69, baseType: !115, size: 64)
!115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 64, elements: !118)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "chunkid_t", file: !87, line: 61, baseType: !117)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !99, line: 64, baseType: !96)
!118 = !{!119}
!119 = !DISubrange(count: 2)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "end_chunk", scope: !112, file: !87, line: 70, baseType: !116, size: 32, offset: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "avail_buckets", scope: !112, file: !87, line: 71, baseType: !117, size: 32, offset: 96)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "buckets", scope: !112, file: !87, line: 77, baseType: !123, offset: 128)
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, elements: !127)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "z_heap_bucket", file: !87, line: 64, size: 32, elements: !125)
!125 = !{!126}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !124, file: !87, line: 65, baseType: !116, size: 32)
!127 = !{!128}
!128 = !DISubrange(count: 0)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!130 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 32)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 32)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !99, line: 63, baseType: !134)
!134 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!135 = !{i32 7, !"Dwarf Version", i32 4}
!136 = !{i32 2, !"Debug Info Version", i32 3}
!137 = !{i32 1, !"wchar_size", i32 4}
!138 = !{i32 1, !"static_rwdata", i32 1}
!139 = !{i32 1, !"enumsize_buildattr", i32 1}
!140 = !{i32 1, !"armlib_unavailable", i32 0}
!141 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
!142 = distinct !DISubprogram(name: "z_impl_k_object_access_grant", scope: !4, file: !4, line: 223, type: !143, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !256)
!143 = !DISubroutineType(types: !144)
!144 = !{null, !145, !147}
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 32)
!146 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 32)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_thread", file: !149, line: 250, size: 896, elements: !150)
!149 = !DIFile(filename: "include/zephyr/kernel/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!150 = !{!151, !216, !229, !230, !231, !232, !251}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !148, file: !149, line: 252, baseType: !152, size: 384)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_base", file: !149, line: 58, size: 384, elements: !153)
!153 = !{!154, !180, !188, !189, !190, !201, !202, !203}
!154 = !DIDerivedType(tag: DW_TAG_member, scope: !152, file: !149, line: 61, baseType: !155, size: 64)
!155 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !152, file: !149, line: 61, size: 64, elements: !156)
!156 = !{!157, !173}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_dlist", scope: !155, file: !149, line: 62, baseType: !158, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dnode_t", file: !159, line: 55, baseType: !160)
!159 = !DIFile(filename: "include/zephyr/sys/dlist.h", directory: "/home/sri/zephyrproject/zephyr")
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_dnode", file: !159, line: 37, size: 64, elements: !161)
!161 = !{!162, !168}
!162 = !DIDerivedType(tag: DW_TAG_member, scope: !160, file: !159, line: 38, baseType: !163, size: 32)
!163 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !160, file: !159, line: 38, size: 32, elements: !164)
!164 = !{!165, !167}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !163, file: !159, line: 39, baseType: !166, size: 32)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 32)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !163, file: !159, line: 40, baseType: !166, size: 32)
!168 = !DIDerivedType(tag: DW_TAG_member, scope: !160, file: !159, line: 42, baseType: !169, size: 32, offset: 32)
!169 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !160, file: !159, line: 42, size: 32, elements: !170)
!170 = !{!171, !172}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !169, file: !159, line: 43, baseType: !166, size: 32)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !169, file: !159, line: 44, baseType: !166, size: 32)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_rb", scope: !155, file: !149, line: 63, baseType: !174, size: 64)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rbnode", file: !175, line: 58, size: 64, elements: !176)
!175 = !DIFile(filename: "include/zephyr/sys/rb.h", directory: "/home/sri/zephyrproject/zephyr")
!176 = !{!177}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !174, file: !175, line: 60, baseType: !178, size: 64)
!178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 64, elements: !118)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 32)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "pended_on", scope: !152, file: !149, line: 69, baseType: !181, size: 32, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 32)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "_wait_q_t", file: !183, line: 243, baseType: !184)
!183 = !DIFile(filename: "include/zephyr/kernel_structs.h", directory: "/home/sri/zephyrproject/zephyr")
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !183, line: 241, size: 64, elements: !185)
!185 = !{!186}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !184, file: !183, line: 242, baseType: !187, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dlist_t", file: !159, line: 51, baseType: !160)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "user_options", scope: !152, file: !149, line: 72, baseType: !98, size: 8, offset: 96)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "thread_state", scope: !152, file: !149, line: 75, baseType: !98, size: 8, offset: 104)
!190 = !DIDerivedType(tag: DW_TAG_member, scope: !152, file: !149, line: 91, baseType: !191, size: 16, offset: 112)
!191 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !152, file: !149, line: 91, size: 16, elements: !192)
!192 = !{!193, !200}
!193 = !DIDerivedType(tag: DW_TAG_member, scope: !191, file: !149, line: 92, baseType: !194, size: 16)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !191, file: !149, line: 92, size: 16, elements: !195)
!195 = !{!196, !199}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !194, file: !149, line: 97, baseType: !197, size: 8)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !99, line: 56, baseType: !198)
!198 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "sched_locked", scope: !194, file: !149, line: 98, baseType: !98, size: 8, offset: 8)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "preempt", scope: !191, file: !149, line: 101, baseType: !133, size: 16)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "order_key", scope: !152, file: !149, line: 108, baseType: !117, size: 32, offset: 128)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "swap_data", scope: !152, file: !149, line: 132, baseType: !129, size: 32, offset: 160)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !152, file: !149, line: 136, baseType: !204, size: 192, offset: 192)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_timeout", file: !183, line: 254, size: 192, elements: !205)
!205 = !{!206, !207, !213}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !204, file: !183, line: 255, baseType: !158, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !204, file: !183, line: 256, baseType: !208, size: 32, offset: 64)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "_timeout_func_t", file: !183, line: 252, baseType: !209)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 32)
!210 = !DISubroutineType(types: !211)
!211 = !{null, !212}
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 32)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "dticks", scope: !204, file: !183, line: 259, baseType: !214, size: 64, offset: 128)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !99, line: 59, baseType: !215)
!215 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "callee_saved", scope: !148, file: !149, line: 255, baseType: !217, size: 288, offset: 384)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_callee_saved", file: !218, line: 25, size: 288, elements: !219)
!218 = !DIFile(filename: "include/zephyr/arch/arm/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!219 = !{!220, !221, !222, !223, !224, !225, !226, !227, !228}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "v1", scope: !217, file: !218, line: 26, baseType: !117, size: 32)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "v2", scope: !217, file: !218, line: 27, baseType: !117, size: 32, offset: 32)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "v3", scope: !217, file: !218, line: 28, baseType: !117, size: 32, offset: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "v4", scope: !217, file: !218, line: 29, baseType: !117, size: 32, offset: 96)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "v5", scope: !217, file: !218, line: 30, baseType: !117, size: 32, offset: 128)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "v6", scope: !217, file: !218, line: 31, baseType: !117, size: 32, offset: 160)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "v7", scope: !217, file: !218, line: 32, baseType: !117, size: 32, offset: 192)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "v8", scope: !217, file: !218, line: 33, baseType: !117, size: 32, offset: 224)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "psp", scope: !217, file: !218, line: 34, baseType: !117, size: 32, offset: 256)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "init_data", scope: !148, file: !149, line: 258, baseType: !129, size: 32, offset: 672)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "join_queue", scope: !148, file: !149, line: 261, baseType: !182, size: 64, offset: 704)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "errno_var", scope: !148, file: !149, line: 302, baseType: !130, size: 32, offset: 768)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "resource_pool", scope: !148, file: !149, line: 333, baseType: !233, size: 32, offset: 800)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 32)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_heap", file: !235, line: 5291, size: 160, elements: !236)
!235 = !DIFile(filename: "include/zephyr/kernel.h", directory: "/home/sri/zephyrproject/zephyr")
!236 = !{!237, !246, !247}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !234, file: !235, line: 5292, baseType: !238, size: 96)
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sys_heap", file: !239, line: 56, size: 96, elements: !240)
!239 = !DIFile(filename: "include/zephyr/sys/sys_heap.h", directory: "/home/sri/zephyrproject/zephyr")
!240 = !{!241, !242, !243}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !238, file: !239, line: 57, baseType: !111, size: 32)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "init_mem", scope: !238, file: !239, line: 58, baseType: !129, size: 32, offset: 32)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "init_bytes", scope: !238, file: !239, line: 59, baseType: !244, size: 32, offset: 64)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !245, line: 46, baseType: !96)
!245 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/lib/clang/17/include/stddef.h", directory: "")
!246 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !234, file: !235, line: 5293, baseType: !182, size: 64, offset: 96)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !234, file: !235, line: 5294, baseType: !248, offset: 160)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_spinlock", file: !249, line: 45, elements: !250)
!249 = !DIFile(filename: "include/zephyr/spinlock.h", directory: "/home/sri/zephyrproject/zephyr")
!250 = !{}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !148, file: !149, line: 355, baseType: !252, size: 64, offset: 832)
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_arch", file: !218, line: 60, size: 64, elements: !253)
!253 = !{!254, !255}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "basepri", scope: !252, file: !218, line: 63, baseType: !117, size: 32)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "swap_return_value", scope: !252, file: !218, line: 66, baseType: !117, size: 32, offset: 32)
!256 = !{!257, !258}
!257 = !DILocalVariable(name: "object", arg: 1, scope: !142, file: !4, line: 223, type: !145)
!258 = !DILocalVariable(name: "thread", arg: 2, scope: !142, file: !4, line: 224, type: !147)
!259 = !DILocation(line: 223, column: 61, scope: !142)
!260 = !DILocation(line: 224, column: 24, scope: !142)
!261 = !DILocation(line: 226, column: 9, scope: !142)
!262 = !DILocation(line: 227, column: 9, scope: !142)
!263 = !DILocation(line: 228, column: 1, scope: !142)
!264 = distinct !DISubprogram(name: "z_impl_k_object_release", scope: !4, file: !4, line: 243, type: !265, scopeLine: 244, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !267)
!265 = !DISubroutineType(types: !266)
!266 = !{null, !145}
!267 = !{!268}
!268 = !DILocalVariable(name: "object", arg: 1, scope: !264, file: !4, line: 243, type: !145)
!269 = !DILocation(line: 243, column: 56, scope: !264)
!270 = !DILocation(line: 245, column: 9, scope: !264)
!271 = !DILocation(line: 246, column: 1, scope: !264)
!272 = distinct !DISubprogram(name: "z_impl_k_object_alloc", scope: !4, file: !4, line: 359, type: !273, scopeLine: 360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !275)
!273 = !DISubroutineType(types: !274)
!274 = !{!129, !3}
!275 = !{!276}
!276 = !DILocalVariable(name: "otype", arg: 1, scope: !272, file: !4, line: 359, type: !3)
!277 = !DILocation(line: 359, column: 58, scope: !272)
!278 = !DILocation(line: 361, column: 9, scope: !272)
!279 = !DILocation(line: 363, column: 2, scope: !272)
!280 = distinct !DISubprogram(name: "z_impl_k_object_alloc_size", scope: !4, file: !4, line: 366, type: !281, scopeLine: 368, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !283)
!281 = !DISubroutineType(types: !282)
!282 = !{!129, !3, !244}
!283 = !{!284, !285}
!284 = !DILocalVariable(name: "otype", arg: 1, scope: !280, file: !4, line: 366, type: !3)
!285 = !DILocalVariable(name: "size", arg: 2, scope: !280, file: !4, line: 367, type: !244)
!286 = !DILocation(line: 366, column: 63, scope: !280)
!287 = !DILocation(line: 367, column: 13, scope: !280)
!288 = !DILocation(line: 369, column: 9, scope: !280)
!289 = !DILocation(line: 370, column: 9, scope: !280)
!290 = !DILocation(line: 372, column: 2, scope: !280)
!291 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_expires_ticks", scope: !235, file: !235, line: 656, type: !292, scopeLine: 658, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !298)
!292 = !DISubroutineType(types: !293)
!293 = !{!294, !296}
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_ticks_t", file: !295, line: 46, baseType: !214)
!295 = !DIFile(filename: "include/zephyr/sys_clock.h", directory: "/home/sri/zephyrproject/zephyr")
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 32)
!297 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !148)
!298 = !{!299}
!299 = !DILocalVariable(name: "t", arg: 1, scope: !291, file: !235, line: 657, type: !296)
!300 = !DILocation(line: 657, column: 30, scope: !291)
!301 = !DILocation(line: 659, column: 28, scope: !291)
!302 = !DILocation(line: 659, column: 31, scope: !291)
!303 = !DILocation(line: 659, column: 36, scope: !291)
!304 = !DILocation(line: 659, column: 9, scope: !291)
!305 = !DILocation(line: 659, column: 2, scope: !291)
!306 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_remaining_ticks", scope: !235, file: !235, line: 671, type: !292, scopeLine: 673, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !307)
!307 = !{!308}
!308 = !DILocalVariable(name: "t", arg: 1, scope: !306, file: !235, line: 672, type: !296)
!309 = !DILocation(line: 672, column: 30, scope: !306)
!310 = !DILocation(line: 674, column: 30, scope: !306)
!311 = !DILocation(line: 674, column: 33, scope: !306)
!312 = !DILocation(line: 674, column: 38, scope: !306)
!313 = !DILocation(line: 674, column: 9, scope: !306)
!314 = !DILocation(line: 674, column: 2, scope: !306)
!315 = distinct !DISubprogram(name: "z_impl_k_timer_expires_ticks", scope: !235, file: !235, line: 1634, type: !316, scopeLine: 1636, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !337)
!316 = !DISubroutineType(types: !317)
!317 = !{!294, !318}
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 32)
!319 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !320)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_timer", file: !235, line: 1439, size: 448, elements: !321)
!321 = !{!322, !323, !324, !329, !330, !335, !336}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !320, file: !235, line: 1445, baseType: !204, size: 192)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !320, file: !235, line: 1448, baseType: !182, size: 64, offset: 192)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_fn", scope: !320, file: !235, line: 1451, baseType: !325, size: 32, offset: 256)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 32)
!326 = !DISubroutineType(types: !327)
!327 = !{null, !328}
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 32)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "stop_fn", scope: !320, file: !235, line: 1454, baseType: !325, size: 32, offset: 288)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !320, file: !235, line: 1457, baseType: !331, size: 64, offset: 320)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_timeout_t", file: !295, line: 67, baseType: !332)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !295, line: 65, size: 64, elements: !333)
!333 = !{!334}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "ticks", scope: !332, file: !295, line: 66, baseType: !294, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !320, file: !235, line: 1460, baseType: !117, size: 32, offset: 384)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !320, file: !235, line: 1463, baseType: !129, size: 32, offset: 416)
!337 = !{!338}
!338 = !DILocalVariable(name: "timer", arg: 1, scope: !315, file: !235, line: 1635, type: !318)
!339 = !DILocation(line: 1635, column: 34, scope: !315)
!340 = !DILocation(line: 1637, column: 28, scope: !315)
!341 = !DILocation(line: 1637, column: 35, scope: !315)
!342 = !DILocation(line: 1637, column: 9, scope: !315)
!343 = !DILocation(line: 1637, column: 2, scope: !315)
!344 = distinct !DISubprogram(name: "z_impl_k_timer_remaining_ticks", scope: !235, file: !235, line: 1649, type: !316, scopeLine: 1651, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !345)
!345 = !{!346}
!346 = !DILocalVariable(name: "timer", arg: 1, scope: !344, file: !235, line: 1650, type: !318)
!347 = !DILocation(line: 1650, column: 34, scope: !344)
!348 = !DILocation(line: 1652, column: 30, scope: !344)
!349 = !DILocation(line: 1652, column: 37, scope: !344)
!350 = !DILocation(line: 1652, column: 9, scope: !344)
!351 = !DILocation(line: 1652, column: 2, scope: !344)
!352 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_set", scope: !235, file: !235, line: 1689, type: !353, scopeLine: 1691, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !355)
!353 = !DISubroutineType(types: !354)
!354 = !{null, !328, !129}
!355 = !{!356, !357}
!356 = !DILocalVariable(name: "timer", arg: 1, scope: !352, file: !235, line: 1689, type: !328)
!357 = !DILocalVariable(name: "user_data", arg: 2, scope: !352, file: !235, line: 1690, type: !129)
!358 = !DILocation(line: 1689, column: 65, scope: !352)
!359 = !DILocation(line: 1690, column: 19, scope: !352)
!360 = !DILocation(line: 1692, column: 21, scope: !352)
!361 = !DILocation(line: 1692, column: 2, scope: !352)
!362 = !DILocation(line: 1692, column: 9, scope: !352)
!363 = !DILocation(line: 1692, column: 19, scope: !352)
!364 = !DILocation(line: 1693, column: 1, scope: !352)
!365 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_get", scope: !235, file: !235, line: 1704, type: !366, scopeLine: 1705, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !368)
!366 = !DISubroutineType(types: !367)
!367 = !{!129, !318}
!368 = !{!369}
!369 = !DILocalVariable(name: "timer", arg: 1, scope: !365, file: !235, line: 1704, type: !318)
!370 = !DILocation(line: 1704, column: 72, scope: !365)
!371 = !DILocation(line: 1706, column: 9, scope: !365)
!372 = !DILocation(line: 1706, column: 16, scope: !365)
!373 = !DILocation(line: 1706, column: 2, scope: !365)
!374 = distinct !DISubprogram(name: "z_impl_k_queue_is_empty", scope: !235, file: !235, line: 2071, type: !375, scopeLine: 2072, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !395)
!375 = !DISubroutineType(types: !376)
!376 = !{!130, !377}
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 32)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_queue", file: !235, line: 1830, size: 128, elements: !379)
!379 = !{!380, !393, !394}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "data_q", scope: !378, file: !235, line: 1831, baseType: !381, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sflist_t", file: !382, line: 60, baseType: !383)
!382 = !DIFile(filename: "include/zephyr/sys/sflist.h", directory: "/home/sri/zephyrproject/zephyr")
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sflist", file: !382, line: 53, size: 64, elements: !384)
!384 = !{!385, !392}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !383, file: !382, line: 54, baseType: !386, size: 32)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 32)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sfnode_t", file: !382, line: 50, baseType: !388)
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sfnode", file: !382, line: 44, size: 32, elements: !389)
!389 = !{!390}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "next_and_flags", scope: !388, file: !382, line: 45, baseType: !391, size: 32)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "unative_t", file: !382, line: 40, baseType: !117)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !383, file: !382, line: 55, baseType: !386, size: 32, offset: 32)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !378, file: !235, line: 1832, baseType: !248, offset: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !378, file: !235, line: 1833, baseType: !182, size: 64, offset: 64)
!395 = !{!396}
!396 = !DILocalVariable(name: "queue", arg: 1, scope: !374, file: !235, line: 2071, type: !377)
!397 = !DILocation(line: 2071, column: 59, scope: !374)
!398 = !DILocation(line: 2073, column: 35, scope: !374)
!399 = !DILocation(line: 2073, column: 42, scope: !374)
!400 = !DILocation(line: 2073, column: 14, scope: !374)
!401 = !DILocation(line: 2073, column: 9, scope: !374)
!402 = !DILocation(line: 2073, column: 2, scope: !374)
!403 = distinct !DISubprogram(name: "z_impl_k_sem_count_get", scope: !235, file: !235, line: 3209, type: !404, scopeLine: 3210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !412)
!404 = !DISubroutineType(types: !405)
!405 = !{!96, !406}
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 32)
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sem", file: !235, line: 3092, size: 128, elements: !408)
!408 = !{!409, !410, !411}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !407, file: !235, line: 3093, baseType: !182, size: 64)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !407, file: !235, line: 3094, baseType: !96, size: 32, offset: 64)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !407, file: !235, line: 3095, baseType: !96, size: 32, offset: 96)
!412 = !{!413}
!413 = !DILocalVariable(name: "sem", arg: 1, scope: !403, file: !235, line: 3209, type: !406)
!414 = !DILocation(line: 3209, column: 65, scope: !403)
!415 = !DILocation(line: 3211, column: 9, scope: !403)
!416 = !DILocation(line: 3211, column: 14, scope: !403)
!417 = !DILocation(line: 3211, column: 2, scope: !403)
!418 = distinct !DISubprogram(name: "z_impl_k_msgq_num_free_get", scope: !235, file: !235, line: 4649, type: !419, scopeLine: 4650, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !435)
!419 = !DISubroutineType(types: !420)
!420 = !{!117, !421}
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 32)
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_msgq", file: !235, line: 4390, size: 320, elements: !423)
!423 = !{!424, !425, !426, !427, !428, !430, !431, !432, !433, !434}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !422, file: !235, line: 4392, baseType: !182, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !422, file: !235, line: 4394, baseType: !248, offset: 64)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "msg_size", scope: !422, file: !235, line: 4396, baseType: !244, size: 32, offset: 64)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !422, file: !235, line: 4398, baseType: !117, size: 32, offset: 96)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_start", scope: !422, file: !235, line: 4400, baseType: !429, size: 32, offset: 128)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 32)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_end", scope: !422, file: !235, line: 4402, baseType: !429, size: 32, offset: 160)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "read_ptr", scope: !422, file: !235, line: 4404, baseType: !429, size: 32, offset: 192)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "write_ptr", scope: !422, file: !235, line: 4406, baseType: !429, size: 32, offset: 224)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "used_msgs", scope: !422, file: !235, line: 4408, baseType: !117, size: 32, offset: 256)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !422, file: !235, line: 4413, baseType: !98, size: 8, offset: 288)
!435 = !{!436}
!436 = !DILocalVariable(name: "msgq", arg: 1, scope: !418, file: !235, line: 4649, type: !421)
!437 = !DILocation(line: 4649, column: 66, scope: !418)
!438 = !DILocation(line: 4651, column: 9, scope: !418)
!439 = !DILocation(line: 4651, column: 15, scope: !418)
!440 = !DILocation(line: 4651, column: 26, scope: !418)
!441 = !DILocation(line: 4651, column: 32, scope: !418)
!442 = !DILocation(line: 4651, column: 24, scope: !418)
!443 = !DILocation(line: 4651, column: 2, scope: !418)
!444 = distinct !DISubprogram(name: "z_impl_k_msgq_num_used_get", scope: !235, file: !235, line: 4665, type: !419, scopeLine: 4666, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !445)
!445 = !{!446}
!446 = !DILocalVariable(name: "msgq", arg: 1, scope: !444, file: !235, line: 4665, type: !421)
!447 = !DILocation(line: 4665, column: 66, scope: !444)
!448 = !DILocation(line: 4667, column: 9, scope: !444)
!449 = !DILocation(line: 4667, column: 15, scope: !444)
!450 = !DILocation(line: 4667, column: 2, scope: !444)
!451 = distinct !DISubprogram(name: "sys_heap_free", scope: !452, file: !452, line: 163, type: !453, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !456)
!452 = !DIFile(filename: "lib/os/heap.c", directory: "/home/sri/zephyrproject/zephyr")
!453 = !DISubroutineType(types: !454)
!454 = !{null, !455, !129}
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 32)
!456 = !{!457, !458, !459, !460}
!457 = !DILocalVariable(name: "heap", arg: 1, scope: !451, file: !452, line: 163, type: !455)
!458 = !DILocalVariable(name: "mem", arg: 2, scope: !451, file: !452, line: 163, type: !129)
!459 = !DILocalVariable(name: "h", scope: !451, file: !452, line: 168, type: !111)
!460 = !DILocalVariable(name: "c", scope: !451, file: !452, line: 169, type: !116)
!461 = !DILocation(line: 163, column: 37, scope: !451)
!462 = !DILocation(line: 163, column: 49, scope: !451)
!463 = !DILocation(line: 165, column: 6, scope: !464)
!464 = distinct !DILexicalBlock(scope: !451, file: !452, line: 165, column: 6)
!465 = !DILocation(line: 165, column: 10, scope: !464)
!466 = !DILocation(line: 165, column: 6, scope: !451)
!467 = !DILocation(line: 166, column: 3, scope: !468)
!468 = distinct !DILexicalBlock(scope: !464, file: !452, line: 165, column: 16)
!469 = !DILocation(line: 168, column: 2, scope: !451)
!470 = !DILocation(line: 168, column: 17, scope: !451)
!471 = !DILocation(line: 168, column: 21, scope: !451)
!472 = !DILocation(line: 168, column: 27, scope: !451)
!473 = !DILocation(line: 169, column: 2, scope: !451)
!474 = !DILocation(line: 169, column: 12, scope: !451)
!475 = !DILocation(line: 169, column: 31, scope: !451)
!476 = !DILocation(line: 169, column: 34, scope: !451)
!477 = !DILocation(line: 169, column: 16, scope: !451)
!478 = !DILocation(line: 187, column: 17, scope: !451)
!479 = !DILocation(line: 187, column: 20, scope: !451)
!480 = !DILocation(line: 187, column: 2, scope: !451)
!481 = !DILocation(line: 197, column: 13, scope: !451)
!482 = !DILocation(line: 197, column: 16, scope: !451)
!483 = !DILocation(line: 197, column: 2, scope: !451)
!484 = !DILocation(line: 198, column: 1, scope: !451)
!485 = distinct !DISubprogram(name: "mem_to_chunkid", scope: !452, file: !452, line: 157, type: !486, scopeLine: 158, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !488)
!486 = !DISubroutineType(types: !487)
!487 = !{!116, !111, !129}
!488 = !{!489, !490, !491, !492}
!489 = !DILocalVariable(name: "h", arg: 1, scope: !485, file: !452, line: 157, type: !111)
!490 = !DILocalVariable(name: "p", arg: 2, scope: !485, file: !452, line: 157, type: !129)
!491 = !DILocalVariable(name: "mem", scope: !485, file: !452, line: 159, type: !97)
!492 = !DILocalVariable(name: "base", scope: !485, file: !452, line: 159, type: !97)
!493 = !DILocation(line: 157, column: 48, scope: !485)
!494 = !DILocation(line: 157, column: 57, scope: !485)
!495 = !DILocation(line: 159, column: 2, scope: !485)
!496 = !DILocation(line: 159, column: 11, scope: !485)
!497 = !DILocation(line: 159, column: 17, scope: !485)
!498 = !DILocation(line: 159, column: 21, scope: !485)
!499 = !DILocation(line: 159, column: 49, scope: !485)
!500 = !DILocation(line: 159, column: 39, scope: !485)
!501 = !DILocation(line: 160, column: 10, scope: !485)
!502 = !DILocation(line: 160, column: 35, scope: !485)
!503 = !DILocation(line: 160, column: 16, scope: !485)
!504 = !DILocation(line: 160, column: 14, scope: !485)
!505 = !DILocation(line: 160, column: 40, scope: !485)
!506 = !DILocation(line: 160, column: 38, scope: !485)
!507 = !DILocation(line: 160, column: 46, scope: !485)
!508 = !DILocation(line: 161, column: 1, scope: !485)
!509 = !DILocation(line: 160, column: 2, scope: !485)
!510 = distinct !DISubprogram(name: "set_chunk_used", scope: !87, file: !87, line: 147, type: !511, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !514)
!511 = !DISubroutineType(types: !512)
!512 = !{null, !111, !116, !513}
!513 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!514 = !{!515, !516, !517, !518, !519}
!515 = !DILocalVariable(name: "h", arg: 1, scope: !510, file: !87, line: 147, type: !111)
!516 = !DILocalVariable(name: "c", arg: 2, scope: !510, file: !87, line: 147, type: !116)
!517 = !DILocalVariable(name: "used", arg: 3, scope: !510, file: !87, line: 147, type: !513)
!518 = !DILocalVariable(name: "buf", scope: !510, file: !87, line: 149, type: !101)
!519 = !DILocalVariable(name: "cmem", scope: !510, file: !87, line: 150, type: !129)
!520 = !DILocation(line: 147, column: 50, scope: !510)
!521 = !DILocation(line: 147, column: 63, scope: !510)
!522 = !DILocation(line: 147, column: 72, scope: !510)
!523 = !DILocation(line: 149, column: 2, scope: !510)
!524 = !DILocation(line: 149, column: 16, scope: !510)
!525 = !DILocation(line: 149, column: 32, scope: !510)
!526 = !DILocation(line: 149, column: 22, scope: !510)
!527 = !DILocation(line: 150, column: 2, scope: !510)
!528 = !DILocation(line: 150, column: 8, scope: !510)
!529 = !DILocation(line: 150, column: 16, scope: !510)
!530 = !DILocation(line: 150, column: 20, scope: !510)
!531 = !DILocation(line: 152, column: 15, scope: !532)
!532 = distinct !DILexicalBlock(scope: !510, file: !87, line: 152, column: 6)
!533 = !DILocation(line: 152, column: 6, scope: !532)
!534 = !DILocation(line: 152, column: 6, scope: !510)
!535 = !DILocation(line: 153, column: 7, scope: !536)
!536 = distinct !DILexicalBlock(scope: !537, file: !87, line: 153, column: 7)
!537 = distinct !DILexicalBlock(scope: !532, file: !87, line: 152, column: 19)
!538 = !{i8 0, i8 2}
!539 = !DILocation(line: 153, column: 7, scope: !537)
!540 = !DILocation(line: 154, column: 17, scope: !541)
!541 = distinct !DILexicalBlock(scope: !536, file: !87, line: 153, column: 13)
!542 = !DILocation(line: 154, column: 4, scope: !541)
!543 = !DILocation(line: 154, column: 38, scope: !541)
!544 = !DILocation(line: 155, column: 3, scope: !541)
!545 = !DILocation(line: 156, column: 17, scope: !546)
!546 = distinct !DILexicalBlock(scope: !536, file: !87, line: 155, column: 10)
!547 = !DILocation(line: 156, column: 4, scope: !546)
!548 = !DILocation(line: 156, column: 38, scope: !546)
!549 = !DILocation(line: 158, column: 2, scope: !537)
!550 = !DILocation(line: 159, column: 7, scope: !551)
!551 = distinct !DILexicalBlock(scope: !552, file: !87, line: 159, column: 7)
!552 = distinct !DILexicalBlock(scope: !532, file: !87, line: 158, column: 9)
!553 = !DILocation(line: 159, column: 7, scope: !552)
!554 = !DILocation(line: 160, column: 17, scope: !555)
!555 = distinct !DILexicalBlock(scope: !551, file: !87, line: 159, column: 13)
!556 = !DILocation(line: 160, column: 4, scope: !555)
!557 = !DILocation(line: 160, column: 38, scope: !555)
!558 = !DILocation(line: 161, column: 3, scope: !555)
!559 = !DILocation(line: 162, column: 17, scope: !560)
!560 = distinct !DILexicalBlock(scope: !551, file: !87, line: 161, column: 10)
!561 = !DILocation(line: 162, column: 4, scope: !560)
!562 = !DILocation(line: 162, column: 38, scope: !560)
!563 = !DILocation(line: 165, column: 1, scope: !510)
!564 = distinct !DISubprogram(name: "free_chunk", scope: !452, file: !452, line: 133, type: !565, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !567)
!565 = !DISubroutineType(types: !566)
!566 = !{null, !111, !116}
!567 = !{!568, !569}
!568 = !DILocalVariable(name: "h", arg: 1, scope: !564, file: !452, line: 133, type: !111)
!569 = !DILocalVariable(name: "c", arg: 2, scope: !564, file: !452, line: 133, type: !116)
!570 = !DILocation(line: 133, column: 39, scope: !564)
!571 = !DILocation(line: 133, column: 52, scope: !564)
!572 = !DILocation(line: 136, column: 18, scope: !573)
!573 = distinct !DILexicalBlock(scope: !564, file: !452, line: 136, column: 6)
!574 = !DILocation(line: 136, column: 33, scope: !573)
!575 = !DILocation(line: 136, column: 36, scope: !573)
!576 = !DILocation(line: 136, column: 21, scope: !573)
!577 = !DILocation(line: 136, column: 7, scope: !573)
!578 = !DILocation(line: 136, column: 6, scope: !564)
!579 = !DILocation(line: 137, column: 20, scope: !580)
!580 = distinct !DILexicalBlock(scope: !573, file: !452, line: 136, column: 41)
!581 = !DILocation(line: 137, column: 35, scope: !580)
!582 = !DILocation(line: 137, column: 38, scope: !580)
!583 = !DILocation(line: 137, column: 23, scope: !580)
!584 = !DILocation(line: 137, column: 3, scope: !580)
!585 = !DILocation(line: 138, column: 16, scope: !580)
!586 = !DILocation(line: 138, column: 19, scope: !580)
!587 = !DILocation(line: 138, column: 34, scope: !580)
!588 = !DILocation(line: 138, column: 37, scope: !580)
!589 = !DILocation(line: 138, column: 22, scope: !580)
!590 = !DILocation(line: 138, column: 3, scope: !580)
!591 = !DILocation(line: 139, column: 2, scope: !580)
!592 = !DILocation(line: 142, column: 18, scope: !593)
!593 = distinct !DILexicalBlock(scope: !564, file: !452, line: 142, column: 6)
!594 = !DILocation(line: 142, column: 32, scope: !593)
!595 = !DILocation(line: 142, column: 35, scope: !593)
!596 = !DILocation(line: 142, column: 21, scope: !593)
!597 = !DILocation(line: 142, column: 7, scope: !593)
!598 = !DILocation(line: 142, column: 6, scope: !564)
!599 = !DILocation(line: 143, column: 20, scope: !600)
!600 = distinct !DILexicalBlock(scope: !593, file: !452, line: 142, column: 40)
!601 = !DILocation(line: 143, column: 34, scope: !600)
!602 = !DILocation(line: 143, column: 37, scope: !600)
!603 = !DILocation(line: 143, column: 23, scope: !600)
!604 = !DILocation(line: 143, column: 3, scope: !600)
!605 = !DILocation(line: 144, column: 16, scope: !600)
!606 = !DILocation(line: 144, column: 30, scope: !600)
!607 = !DILocation(line: 144, column: 33, scope: !600)
!608 = !DILocation(line: 144, column: 19, scope: !600)
!609 = !DILocation(line: 144, column: 37, scope: !600)
!610 = !DILocation(line: 144, column: 3, scope: !600)
!611 = !DILocation(line: 145, column: 18, scope: !600)
!612 = !DILocation(line: 145, column: 21, scope: !600)
!613 = !DILocation(line: 145, column: 7, scope: !600)
!614 = !DILocation(line: 145, column: 5, scope: !600)
!615 = !DILocation(line: 146, column: 2, scope: !600)
!616 = !DILocation(line: 148, column: 16, scope: !564)
!617 = !DILocation(line: 148, column: 19, scope: !564)
!618 = !DILocation(line: 148, column: 2, scope: !564)
!619 = !DILocation(line: 149, column: 1, scope: !564)
!620 = distinct !DISubprogram(name: "sys_heap_usable_size", scope: !452, file: !452, line: 200, type: !621, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !623)
!621 = !DISubroutineType(types: !622)
!622 = !{!244, !455, !129}
!623 = !{!624, !625, !626, !627, !628, !629, !630}
!624 = !DILocalVariable(name: "heap", arg: 1, scope: !620, file: !452, line: 200, type: !455)
!625 = !DILocalVariable(name: "mem", arg: 2, scope: !620, file: !452, line: 200, type: !129)
!626 = !DILocalVariable(name: "h", scope: !620, file: !452, line: 202, type: !111)
!627 = !DILocalVariable(name: "c", scope: !620, file: !452, line: 203, type: !116)
!628 = !DILocalVariable(name: "addr", scope: !620, file: !452, line: 204, type: !94)
!629 = !DILocalVariable(name: "chunk_base", scope: !620, file: !452, line: 205, type: !94)
!630 = !DILocalVariable(name: "chunk_sz", scope: !620, file: !452, line: 206, type: !94)
!631 = !DILocation(line: 200, column: 46, scope: !620)
!632 = !DILocation(line: 200, column: 58, scope: !620)
!633 = !DILocation(line: 202, column: 2, scope: !620)
!634 = !DILocation(line: 202, column: 17, scope: !620)
!635 = !DILocation(line: 202, column: 21, scope: !620)
!636 = !DILocation(line: 202, column: 27, scope: !620)
!637 = !DILocation(line: 203, column: 2, scope: !620)
!638 = !DILocation(line: 203, column: 12, scope: !620)
!639 = !DILocation(line: 203, column: 31, scope: !620)
!640 = !DILocation(line: 203, column: 34, scope: !620)
!641 = !DILocation(line: 203, column: 16, scope: !620)
!642 = !DILocation(line: 204, column: 2, scope: !620)
!643 = !DILocation(line: 204, column: 9, scope: !620)
!644 = !DILocation(line: 204, column: 24, scope: !620)
!645 = !DILocation(line: 204, column: 16, scope: !620)
!646 = !DILocation(line: 205, column: 2, scope: !620)
!647 = !DILocation(line: 205, column: 9, scope: !620)
!648 = !DILocation(line: 205, column: 41, scope: !620)
!649 = !DILocation(line: 205, column: 31, scope: !620)
!650 = !DILocation(line: 205, column: 44, scope: !620)
!651 = !DILocation(line: 205, column: 22, scope: !620)
!652 = !DILocation(line: 206, column: 2, scope: !620)
!653 = !DILocation(line: 206, column: 9, scope: !620)
!654 = !DILocation(line: 206, column: 31, scope: !620)
!655 = !DILocation(line: 206, column: 34, scope: !620)
!656 = !DILocation(line: 206, column: 20, scope: !620)
!657 = !DILocation(line: 206, column: 37, scope: !620)
!658 = !DILocation(line: 208, column: 9, scope: !620)
!659 = !DILocation(line: 208, column: 21, scope: !620)
!660 = !DILocation(line: 208, column: 28, scope: !620)
!661 = !DILocation(line: 208, column: 26, scope: !620)
!662 = !DILocation(line: 208, column: 18, scope: !620)
!663 = !DILocation(line: 209, column: 1, scope: !620)
!664 = !DILocation(line: 208, column: 2, scope: !620)
!665 = distinct !DISubprogram(name: "chunk_buf", scope: !87, file: !87, line: 101, type: !666, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !668)
!666 = !DISubroutineType(types: !667)
!667 = !{!101, !111}
!668 = !{!669}
!669 = !DILocalVariable(name: "h", arg: 1, scope: !665, file: !87, line: 101, type: !111)
!670 = !DILocation(line: 101, column: 54, scope: !665)
!671 = !DILocation(line: 104, column: 25, scope: !665)
!672 = !DILocation(line: 104, column: 2, scope: !665)
!673 = distinct !DISubprogram(name: "chunk_size", scope: !87, file: !87, line: 142, type: !674, scopeLine: 143, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !677)
!674 = !DISubroutineType(types: !675)
!675 = !{!676, !111, !116}
!676 = !DIDerivedType(tag: DW_TAG_typedef, name: "chunksz_t", file: !87, line: 62, baseType: !117)
!677 = !{!678, !679}
!678 = !DILocalVariable(name: "h", arg: 1, scope: !673, file: !87, line: 142, type: !111)
!679 = !DILocalVariable(name: "c", arg: 2, scope: !673, file: !87, line: 142, type: !116)
!680 = !DILocation(line: 142, column: 51, scope: !673)
!681 = !DILocation(line: 142, column: 64, scope: !673)
!682 = !DILocation(line: 144, column: 21, scope: !673)
!683 = !DILocation(line: 144, column: 24, scope: !673)
!684 = !DILocation(line: 144, column: 9, scope: !673)
!685 = !DILocation(line: 144, column: 42, scope: !673)
!686 = !DILocation(line: 144, column: 2, scope: !673)
!687 = distinct !DISubprogram(name: "sys_heap_alloc", scope: !452, file: !452, line: 263, type: !688, scopeLine: 264, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !690)
!688 = !DISubroutineType(types: !689)
!689 = !{!129, !455, !94}
!690 = !{!691, !692, !693, !694, !695, !696}
!691 = !DILocalVariable(name: "heap", arg: 1, scope: !687, file: !452, line: 263, type: !455)
!692 = !DILocalVariable(name: "bytes", arg: 2, scope: !687, file: !452, line: 263, type: !94)
!693 = !DILocalVariable(name: "h", scope: !687, file: !452, line: 265, type: !111)
!694 = !DILocalVariable(name: "mem", scope: !687, file: !452, line: 266, type: !129)
!695 = !DILocalVariable(name: "chunk_sz", scope: !687, file: !452, line: 272, type: !676)
!696 = !DILocalVariable(name: "c", scope: !687, file: !452, line: 273, type: !116)
!697 = !DILocation(line: 263, column: 39, scope: !687)
!698 = !DILocation(line: 263, column: 52, scope: !687)
!699 = !DILocation(line: 265, column: 2, scope: !687)
!700 = !DILocation(line: 265, column: 17, scope: !687)
!701 = !DILocation(line: 265, column: 21, scope: !687)
!702 = !DILocation(line: 265, column: 27, scope: !687)
!703 = !DILocation(line: 266, column: 2, scope: !687)
!704 = !DILocation(line: 266, column: 8, scope: !687)
!705 = !DILocation(line: 268, column: 6, scope: !706)
!706 = distinct !DILexicalBlock(scope: !687, file: !452, line: 268, column: 6)
!707 = !DILocation(line: 268, column: 12, scope: !706)
!708 = !DILocation(line: 268, column: 18, scope: !706)
!709 = !DILocation(line: 268, column: 34, scope: !706)
!710 = !DILocation(line: 268, column: 37, scope: !706)
!711 = !DILocation(line: 268, column: 21, scope: !706)
!712 = !DILocation(line: 268, column: 6, scope: !687)
!713 = !DILocation(line: 269, column: 3, scope: !714)
!714 = distinct !DILexicalBlock(scope: !706, file: !452, line: 268, column: 45)
!715 = !DILocation(line: 272, column: 2, scope: !687)
!716 = !DILocation(line: 272, column: 12, scope: !687)
!717 = !DILocation(line: 272, column: 40, scope: !687)
!718 = !DILocation(line: 272, column: 43, scope: !687)
!719 = !DILocation(line: 272, column: 23, scope: !687)
!720 = !DILocation(line: 273, column: 2, scope: !687)
!721 = !DILocation(line: 273, column: 12, scope: !687)
!722 = !DILocation(line: 273, column: 28, scope: !687)
!723 = !DILocation(line: 273, column: 31, scope: !687)
!724 = !DILocation(line: 273, column: 16, scope: !687)
!725 = !DILocation(line: 274, column: 6, scope: !726)
!726 = distinct !DILexicalBlock(scope: !687, file: !452, line: 274, column: 6)
!727 = !DILocation(line: 274, column: 8, scope: !726)
!728 = !DILocation(line: 274, column: 6, scope: !687)
!729 = !DILocation(line: 275, column: 3, scope: !730)
!730 = distinct !DILexicalBlock(scope: !726, file: !452, line: 274, column: 15)
!731 = !DILocation(line: 279, column: 17, scope: !732)
!732 = distinct !DILexicalBlock(scope: !687, file: !452, line: 279, column: 6)
!733 = !DILocation(line: 279, column: 20, scope: !732)
!734 = !DILocation(line: 279, column: 6, scope: !732)
!735 = !DILocation(line: 279, column: 25, scope: !732)
!736 = !DILocation(line: 279, column: 23, scope: !732)
!737 = !DILocation(line: 279, column: 6, scope: !687)
!738 = !DILocation(line: 280, column: 16, scope: !739)
!739 = distinct !DILexicalBlock(scope: !732, file: !452, line: 279, column: 35)
!740 = !DILocation(line: 280, column: 19, scope: !739)
!741 = !DILocation(line: 280, column: 22, scope: !739)
!742 = !DILocation(line: 280, column: 26, scope: !739)
!743 = !DILocation(line: 280, column: 24, scope: !739)
!744 = !DILocation(line: 280, column: 3, scope: !739)
!745 = !DILocation(line: 281, column: 17, scope: !739)
!746 = !DILocation(line: 281, column: 20, scope: !739)
!747 = !DILocation(line: 281, column: 24, scope: !739)
!748 = !DILocation(line: 281, column: 22, scope: !739)
!749 = !DILocation(line: 281, column: 3, scope: !739)
!750 = !DILocation(line: 282, column: 2, scope: !739)
!751 = !DILocation(line: 284, column: 17, scope: !687)
!752 = !DILocation(line: 284, column: 20, scope: !687)
!753 = !DILocation(line: 284, column: 2, scope: !687)
!754 = !DILocation(line: 286, column: 18, scope: !687)
!755 = !DILocation(line: 286, column: 21, scope: !687)
!756 = !DILocation(line: 286, column: 8, scope: !687)
!757 = !DILocation(line: 286, column: 6, scope: !687)
!758 = !DILocation(line: 298, column: 9, scope: !687)
!759 = !DILocation(line: 298, column: 2, scope: !687)
!760 = !DILocation(line: 299, column: 1, scope: !687)
!761 = distinct !DISubprogram(name: "size_too_big", scope: !87, file: !87, line: 256, type: !762, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !764)
!762 = !DISubroutineType(types: !763)
!763 = !{!513, !111, !94}
!764 = !{!765, !766}
!765 = !DILocalVariable(name: "h", arg: 1, scope: !761, file: !87, line: 256, type: !111)
!766 = !DILocalVariable(name: "bytes", arg: 2, scope: !761, file: !87, line: 256, type: !94)
!767 = !DILocation(line: 256, column: 49, scope: !761)
!768 = !DILocation(line: 256, column: 59, scope: !761)
!769 = !DILocation(line: 262, column: 10, scope: !761)
!770 = !DILocation(line: 262, column: 16, scope: !761)
!771 = !DILocation(line: 262, column: 25, scope: !761)
!772 = !DILocation(line: 262, column: 28, scope: !761)
!773 = !DILocation(line: 262, column: 22, scope: !761)
!774 = !DILocation(line: 262, column: 2, scope: !761)
!775 = distinct !DISubprogram(name: "bytes_to_chunksz", scope: !87, file: !87, line: 235, type: !776, scopeLine: 236, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !778)
!776 = !DISubroutineType(types: !777)
!777 = !{!676, !111, !94}
!778 = !{!779, !780}
!779 = !DILocalVariable(name: "h", arg: 1, scope: !775, file: !87, line: 235, type: !111)
!780 = !DILocalVariable(name: "bytes", arg: 2, scope: !775, file: !87, line: 235, type: !94)
!781 = !DILocation(line: 235, column: 57, scope: !775)
!782 = !DILocation(line: 235, column: 67, scope: !775)
!783 = !DILocation(line: 237, column: 36, scope: !775)
!784 = !DILocation(line: 237, column: 17, scope: !775)
!785 = !DILocation(line: 237, column: 41, scope: !775)
!786 = !DILocation(line: 237, column: 39, scope: !775)
!787 = !DILocation(line: 237, column: 9, scope: !775)
!788 = !DILocation(line: 237, column: 2, scope: !775)
!789 = distinct !DISubprogram(name: "alloc_chunk", scope: !452, file: !452, line: 211, type: !790, scopeLine: 212, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !792)
!790 = !DISubroutineType(types: !791)
!791 = !{!116, !111, !676}
!792 = !{!793, !794, !795, !796, !798, !801, !802, !804, !805, !808}
!793 = !DILocalVariable(name: "h", arg: 1, scope: !789, file: !452, line: 211, type: !111)
!794 = !DILocalVariable(name: "sz", arg: 2, scope: !789, file: !452, line: 211, type: !676)
!795 = !DILocalVariable(name: "bi", scope: !789, file: !452, line: 213, type: !130)
!796 = !DILocalVariable(name: "b", scope: !789, file: !452, line: 214, type: !797)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 32)
!798 = !DILocalVariable(name: "first", scope: !799, file: !452, line: 233, type: !116)
!799 = distinct !DILexicalBlock(scope: !800, file: !452, line: 232, column: 15)
!800 = distinct !DILexicalBlock(scope: !789, file: !452, line: 232, column: 6)
!801 = !DILocalVariable(name: "i", scope: !799, file: !452, line: 234, type: !130)
!802 = !DILocalVariable(name: "c", scope: !803, file: !452, line: 236, type: !116)
!803 = distinct !DILexicalBlock(scope: !799, file: !452, line: 235, column: 6)
!804 = !DILocalVariable(name: "bmask", scope: !789, file: !452, line: 249, type: !117)
!805 = !DILocalVariable(name: "minbucket", scope: !806, file: !452, line: 252, type: !130)
!806 = distinct !DILexicalBlock(scope: !807, file: !452, line: 251, column: 19)
!807 = distinct !DILexicalBlock(scope: !789, file: !452, line: 251, column: 6)
!808 = !DILocalVariable(name: "c", scope: !806, file: !452, line: 253, type: !116)
!809 = !DILocation(line: 211, column: 45, scope: !789)
!810 = !DILocation(line: 211, column: 58, scope: !789)
!811 = !DILocation(line: 213, column: 2, scope: !789)
!812 = !DILocation(line: 213, column: 6, scope: !789)
!813 = !DILocation(line: 213, column: 22, scope: !789)
!814 = !DILocation(line: 213, column: 25, scope: !789)
!815 = !DILocation(line: 213, column: 11, scope: !789)
!816 = !DILocation(line: 214, column: 2, scope: !789)
!817 = !DILocation(line: 214, column: 24, scope: !789)
!818 = !DILocation(line: 214, column: 29, scope: !789)
!819 = !DILocation(line: 214, column: 32, scope: !789)
!820 = !DILocation(line: 214, column: 40, scope: !789)
!821 = !DILocation(line: 232, column: 6, scope: !800)
!822 = !DILocation(line: 232, column: 9, scope: !800)
!823 = !DILocation(line: 232, column: 6, scope: !789)
!824 = !DILocation(line: 233, column: 3, scope: !799)
!825 = !DILocation(line: 233, column: 13, scope: !799)
!826 = !DILocation(line: 233, column: 21, scope: !799)
!827 = !DILocation(line: 233, column: 24, scope: !799)
!828 = !DILocation(line: 234, column: 3, scope: !799)
!829 = !DILocation(line: 234, column: 7, scope: !799)
!830 = !DILocation(line: 235, column: 3, scope: !799)
!831 = !DILocation(line: 236, column: 4, scope: !803)
!832 = !DILocation(line: 236, column: 14, scope: !803)
!833 = !DILocation(line: 236, column: 18, scope: !803)
!834 = !DILocation(line: 236, column: 21, scope: !803)
!835 = !DILocation(line: 237, column: 19, scope: !836)
!836 = distinct !DILexicalBlock(scope: !803, file: !452, line: 237, column: 8)
!837 = !DILocation(line: 237, column: 22, scope: !836)
!838 = !DILocation(line: 237, column: 8, scope: !836)
!839 = !DILocation(line: 237, column: 28, scope: !836)
!840 = !DILocation(line: 237, column: 25, scope: !836)
!841 = !DILocation(line: 237, column: 8, scope: !803)
!842 = !DILocation(line: 238, column: 27, scope: !843)
!843 = distinct !DILexicalBlock(scope: !836, file: !452, line: 237, column: 32)
!844 = !DILocation(line: 238, column: 30, scope: !843)
!845 = !DILocation(line: 238, column: 33, scope: !843)
!846 = !DILocation(line: 238, column: 5, scope: !843)
!847 = !DILocation(line: 239, column: 12, scope: !843)
!848 = !DILocation(line: 239, column: 5, scope: !843)
!849 = !DILocation(line: 241, column: 30, scope: !803)
!850 = !DILocation(line: 241, column: 33, scope: !803)
!851 = !DILocation(line: 241, column: 14, scope: !803)
!852 = !DILocation(line: 241, column: 4, scope: !803)
!853 = !DILocation(line: 241, column: 7, scope: !803)
!854 = !DILocation(line: 241, column: 12, scope: !803)
!855 = !DILocation(line: 243, column: 3, scope: !799)
!856 = !DILocation(line: 243, column: 3, scope: !803)
!857 = !DILocation(line: 243, column: 12, scope: !799)
!858 = !DILocation(line: 243, column: 16, scope: !799)
!859 = !DILocation(line: 243, column: 19, scope: !799)
!860 = !DILocation(line: 243, column: 22, scope: !799)
!861 = !DILocation(line: 243, column: 30, scope: !799)
!862 = !DILocation(line: 243, column: 27, scope: !799)
!863 = !DILocation(line: 0, scope: !799)
!864 = distinct !{!864, !830, !865}
!865 = !DILocation(line: 243, column: 35, scope: !799)
!866 = !DILocation(line: 244, column: 2, scope: !800)
!867 = !DILocation(line: 244, column: 2, scope: !799)
!868 = !DILocation(line: 249, column: 2, scope: !789)
!869 = !DILocation(line: 249, column: 11, scope: !789)
!870 = !DILocation(line: 249, column: 19, scope: !789)
!871 = !DILocation(line: 249, column: 22, scope: !789)
!872 = !DILocation(line: 249, column: 49, scope: !789)
!873 = !DILocation(line: 249, column: 52, scope: !789)
!874 = !DILocation(line: 249, column: 45, scope: !789)
!875 = !DILocation(line: 249, column: 58, scope: !789)
!876 = !DILocation(line: 249, column: 38, scope: !789)
!877 = !DILocation(line: 249, column: 36, scope: !789)
!878 = !DILocation(line: 251, column: 6, scope: !807)
!879 = !DILocation(line: 251, column: 12, scope: !807)
!880 = !DILocation(line: 251, column: 6, scope: !789)
!881 = !DILocation(line: 252, column: 3, scope: !806)
!882 = !DILocation(line: 252, column: 7, scope: !806)
!883 = !DILocation(line: 252, column: 33, scope: !806)
!884 = !DILocation(line: 252, column: 19, scope: !806)
!885 = !DILocation(line: 253, column: 3, scope: !806)
!886 = !DILocation(line: 253, column: 13, scope: !806)
!887 = !DILocation(line: 253, column: 17, scope: !806)
!888 = !DILocation(line: 253, column: 20, scope: !806)
!889 = !DILocation(line: 253, column: 28, scope: !806)
!890 = !DILocation(line: 253, column: 39, scope: !806)
!891 = !DILocation(line: 255, column: 25, scope: !806)
!892 = !DILocation(line: 255, column: 28, scope: !806)
!893 = !DILocation(line: 255, column: 31, scope: !806)
!894 = !DILocation(line: 255, column: 3, scope: !806)
!895 = !DILocation(line: 257, column: 10, scope: !806)
!896 = !DILocation(line: 257, column: 3, scope: !806)
!897 = !DILocation(line: 258, column: 2, scope: !807)
!898 = !DILocation(line: 260, column: 2, scope: !789)
!899 = !DILocation(line: 261, column: 1, scope: !789)
!900 = distinct !DISubprogram(name: "split_chunks", scope: !452, file: !452, line: 109, type: !901, scopeLine: 110, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !903)
!901 = !DISubroutineType(types: !902)
!902 = !{null, !111, !116, !116}
!903 = !{!904, !905, !906, !907, !908, !909}
!904 = !DILocalVariable(name: "h", arg: 1, scope: !900, file: !452, line: 109, type: !111)
!905 = !DILocalVariable(name: "lc", arg: 2, scope: !900, file: !452, line: 109, type: !116)
!906 = !DILocalVariable(name: "rc", arg: 3, scope: !900, file: !452, line: 109, type: !116)
!907 = !DILocalVariable(name: "sz0", scope: !900, file: !452, line: 114, type: !676)
!908 = !DILocalVariable(name: "lsz", scope: !900, file: !452, line: 115, type: !676)
!909 = !DILocalVariable(name: "rsz", scope: !900, file: !452, line: 116, type: !676)
!910 = !DILocation(line: 109, column: 41, scope: !900)
!911 = !DILocation(line: 109, column: 54, scope: !900)
!912 = !DILocation(line: 109, column: 68, scope: !900)
!913 = !DILocation(line: 114, column: 2, scope: !900)
!914 = !DILocation(line: 114, column: 12, scope: !900)
!915 = !DILocation(line: 114, column: 29, scope: !900)
!916 = !DILocation(line: 114, column: 32, scope: !900)
!917 = !DILocation(line: 114, column: 18, scope: !900)
!918 = !DILocation(line: 115, column: 2, scope: !900)
!919 = !DILocation(line: 115, column: 12, scope: !900)
!920 = !DILocation(line: 115, column: 18, scope: !900)
!921 = !DILocation(line: 115, column: 23, scope: !900)
!922 = !DILocation(line: 115, column: 21, scope: !900)
!923 = !DILocation(line: 116, column: 2, scope: !900)
!924 = !DILocation(line: 116, column: 12, scope: !900)
!925 = !DILocation(line: 116, column: 18, scope: !900)
!926 = !DILocation(line: 116, column: 24, scope: !900)
!927 = !DILocation(line: 116, column: 22, scope: !900)
!928 = !DILocation(line: 118, column: 17, scope: !900)
!929 = !DILocation(line: 118, column: 20, scope: !900)
!930 = !DILocation(line: 118, column: 24, scope: !900)
!931 = !DILocation(line: 118, column: 2, scope: !900)
!932 = !DILocation(line: 119, column: 17, scope: !900)
!933 = !DILocation(line: 119, column: 20, scope: !900)
!934 = !DILocation(line: 119, column: 24, scope: !900)
!935 = !DILocation(line: 119, column: 2, scope: !900)
!936 = !DILocation(line: 120, column: 22, scope: !900)
!937 = !DILocation(line: 120, column: 25, scope: !900)
!938 = !DILocation(line: 120, column: 29, scope: !900)
!939 = !DILocation(line: 120, column: 2, scope: !900)
!940 = !DILocation(line: 121, column: 22, scope: !900)
!941 = !DILocation(line: 121, column: 37, scope: !900)
!942 = !DILocation(line: 121, column: 40, scope: !900)
!943 = !DILocation(line: 121, column: 25, scope: !900)
!944 = !DILocation(line: 121, column: 45, scope: !900)
!945 = !DILocation(line: 121, column: 2, scope: !900)
!946 = !DILocation(line: 122, column: 1, scope: !900)
!947 = distinct !DISubprogram(name: "free_list_add", scope: !452, file: !452, line: 98, type: !565, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !948)
!948 = !{!949, !950, !951}
!949 = !DILocalVariable(name: "h", arg: 1, scope: !947, file: !452, line: 98, type: !111)
!950 = !DILocalVariable(name: "c", arg: 2, scope: !947, file: !452, line: 98, type: !116)
!951 = !DILocalVariable(name: "bidx", scope: !952, file: !452, line: 101, type: !130)
!952 = distinct !DILexicalBlock(scope: !953, file: !452, line: 100, column: 31)
!953 = distinct !DILexicalBlock(scope: !947, file: !452, line: 100, column: 6)
!954 = !DILocation(line: 98, column: 42, scope: !947)
!955 = !DILocation(line: 98, column: 55, scope: !947)
!956 = !DILocation(line: 100, column: 24, scope: !953)
!957 = !DILocation(line: 100, column: 27, scope: !953)
!958 = !DILocation(line: 100, column: 7, scope: !953)
!959 = !DILocation(line: 100, column: 6, scope: !947)
!960 = !DILocation(line: 101, column: 3, scope: !952)
!961 = !DILocation(line: 101, column: 7, scope: !952)
!962 = !DILocation(line: 101, column: 25, scope: !952)
!963 = !DILocation(line: 101, column: 39, scope: !952)
!964 = !DILocation(line: 101, column: 42, scope: !952)
!965 = !DILocation(line: 101, column: 28, scope: !952)
!966 = !DILocation(line: 101, column: 14, scope: !952)
!967 = !DILocation(line: 102, column: 22, scope: !952)
!968 = !DILocation(line: 102, column: 25, scope: !952)
!969 = !DILocation(line: 102, column: 28, scope: !952)
!970 = !DILocation(line: 102, column: 3, scope: !952)
!971 = !DILocation(line: 103, column: 2, scope: !953)
!972 = !DILocation(line: 103, column: 2, scope: !952)
!973 = !DILocation(line: 104, column: 1, scope: !947)
!974 = distinct !DISubprogram(name: "chunk_mem", scope: !452, file: !452, line: 24, type: !975, scopeLine: 25, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !977)
!975 = !DISubroutineType(types: !976)
!976 = !{!129, !111, !116}
!977 = !{!978, !979, !980, !981}
!978 = !DILocalVariable(name: "h", arg: 1, scope: !974, file: !452, line: 24, type: !111)
!979 = !DILocalVariable(name: "c", arg: 2, scope: !974, file: !452, line: 24, type: !116)
!980 = !DILocalVariable(name: "buf", scope: !974, file: !452, line: 26, type: !101)
!981 = !DILocalVariable(name: "ret", scope: !974, file: !452, line: 27, type: !97)
!982 = !DILocation(line: 24, column: 39, scope: !974)
!983 = !DILocation(line: 24, column: 52, scope: !974)
!984 = !DILocation(line: 26, column: 2, scope: !974)
!985 = !DILocation(line: 26, column: 16, scope: !974)
!986 = !DILocation(line: 26, column: 32, scope: !974)
!987 = !DILocation(line: 26, column: 22, scope: !974)
!988 = !DILocation(line: 27, column: 2, scope: !974)
!989 = !DILocation(line: 27, column: 11, scope: !974)
!990 = !DILocation(line: 27, column: 30, scope: !974)
!991 = !DILocation(line: 27, column: 34, scope: !974)
!992 = !DILocation(line: 27, column: 59, scope: !974)
!993 = !DILocation(line: 27, column: 40, scope: !974)
!994 = !DILocation(line: 27, column: 38, scope: !974)
!995 = !DILocation(line: 31, column: 9, scope: !974)
!996 = !DILocation(line: 32, column: 1, scope: !974)
!997 = !DILocation(line: 31, column: 2, scope: !974)
!998 = distinct !DISubprogram(name: "sys_heap_aligned_alloc", scope: !452, file: !452, line: 301, type: !999, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1001)
!999 = !DISubroutineType(types: !1000)
!1000 = !{!129, !455, !94, !94}
!1001 = !{!1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013}
!1002 = !DILocalVariable(name: "heap", arg: 1, scope: !998, file: !452, line: 301, type: !455)
!1003 = !DILocalVariable(name: "align", arg: 2, scope: !998, file: !452, line: 301, type: !94)
!1004 = !DILocalVariable(name: "bytes", arg: 3, scope: !998, file: !452, line: 301, type: !94)
!1005 = !DILocalVariable(name: "h", scope: !998, file: !452, line: 303, type: !111)
!1006 = !DILocalVariable(name: "gap", scope: !998, file: !452, line: 304, type: !94)
!1007 = !DILocalVariable(name: "rew", scope: !998, file: !452, line: 304, type: !94)
!1008 = !DILocalVariable(name: "padded_sz", scope: !998, file: !452, line: 335, type: !676)
!1009 = !DILocalVariable(name: "c0", scope: !998, file: !452, line: 336, type: !116)
!1010 = !DILocalVariable(name: "mem", scope: !998, file: !452, line: 341, type: !97)
!1011 = !DILocalVariable(name: "end", scope: !998, file: !452, line: 345, type: !101)
!1012 = !DILocalVariable(name: "c", scope: !998, file: !452, line: 348, type: !116)
!1013 = !DILocalVariable(name: "c_end", scope: !998, file: !452, line: 349, type: !116)
!1014 = !DILocation(line: 301, column: 47, scope: !998)
!1015 = !DILocation(line: 301, column: 60, scope: !998)
!1016 = !DILocation(line: 301, column: 74, scope: !998)
!1017 = !DILocation(line: 303, column: 2, scope: !998)
!1018 = !DILocation(line: 303, column: 17, scope: !998)
!1019 = !DILocation(line: 303, column: 21, scope: !998)
!1020 = !DILocation(line: 303, column: 27, scope: !998)
!1021 = !DILocation(line: 304, column: 2, scope: !998)
!1022 = !DILocation(line: 304, column: 9, scope: !998)
!1023 = !DILocation(line: 304, column: 14, scope: !998)
!1024 = !DILocation(line: 313, column: 8, scope: !998)
!1025 = !DILocation(line: 313, column: 17, scope: !998)
!1026 = !DILocation(line: 313, column: 16, scope: !998)
!1027 = !DILocation(line: 313, column: 14, scope: !998)
!1028 = !DILocation(line: 313, column: 6, scope: !998)
!1029 = !DILocation(line: 314, column: 6, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !998, file: !452, line: 314, column: 6)
!1031 = !DILocation(line: 314, column: 15, scope: !1030)
!1032 = !DILocation(line: 314, column: 12, scope: !1030)
!1033 = !DILocation(line: 314, column: 6, scope: !998)
!1034 = !DILocation(line: 315, column: 12, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !1030, file: !452, line: 314, column: 20)
!1036 = !DILocation(line: 315, column: 9, scope: !1035)
!1037 = !DILocation(line: 316, column: 12, scope: !1035)
!1038 = !DILocation(line: 316, column: 39, scope: !1035)
!1039 = !DILocation(line: 316, column: 20, scope: !1035)
!1040 = !DILocation(line: 316, column: 17, scope: !1035)
!1041 = !DILocation(line: 316, column: 10, scope: !1035)
!1042 = !DILocation(line: 316, column: 47, scope: !1035)
!1043 = !DILocation(line: 316, column: 74, scope: !1035)
!1044 = !DILocation(line: 316, column: 55, scope: !1035)
!1045 = !DILocation(line: 316, column: 7, scope: !1035)
!1046 = !DILocation(line: 317, column: 2, scope: !1035)
!1047 = !DILocation(line: 318, column: 7, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !1049, file: !452, line: 318, column: 7)
!1049 = distinct !DILexicalBlock(scope: !1030, file: !452, line: 317, column: 9)
!1050 = !DILocation(line: 318, column: 35, scope: !1048)
!1051 = !DILocation(line: 318, column: 16, scope: !1048)
!1052 = !DILocation(line: 318, column: 13, scope: !1048)
!1053 = !DILocation(line: 318, column: 7, scope: !1049)
!1054 = !DILocation(line: 319, column: 26, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !1048, file: !452, line: 318, column: 39)
!1056 = !DILocation(line: 319, column: 32, scope: !1055)
!1057 = !DILocation(line: 319, column: 11, scope: !1055)
!1058 = !DILocation(line: 319, column: 4, scope: !1055)
!1059 = !DILocation(line: 321, column: 7, scope: !1049)
!1060 = !DILocation(line: 322, column: 28, scope: !1049)
!1061 = !DILocation(line: 322, column: 9, scope: !1049)
!1062 = !DILocation(line: 322, column: 7, scope: !1049)
!1063 = !DILocation(line: 326, column: 6, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !998, file: !452, line: 326, column: 6)
!1065 = !DILocation(line: 326, column: 12, scope: !1064)
!1066 = !DILocation(line: 326, column: 17, scope: !1064)
!1067 = !DILocation(line: 326, column: 33, scope: !1064)
!1068 = !DILocation(line: 326, column: 36, scope: !1064)
!1069 = !DILocation(line: 326, column: 20, scope: !1064)
!1070 = !DILocation(line: 326, column: 6, scope: !998)
!1071 = !DILocation(line: 327, column: 3, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !1064, file: !452, line: 326, column: 44)
!1073 = !DILocation(line: 335, column: 2, scope: !998)
!1074 = !DILocation(line: 335, column: 12, scope: !998)
!1075 = !DILocation(line: 335, column: 41, scope: !998)
!1076 = !DILocation(line: 335, column: 44, scope: !998)
!1077 = !DILocation(line: 335, column: 52, scope: !998)
!1078 = !DILocation(line: 335, column: 50, scope: !998)
!1079 = !DILocation(line: 335, column: 60, scope: !998)
!1080 = !DILocation(line: 335, column: 58, scope: !998)
!1081 = !DILocation(line: 335, column: 24, scope: !998)
!1082 = !DILocation(line: 336, column: 2, scope: !998)
!1083 = !DILocation(line: 336, column: 12, scope: !998)
!1084 = !DILocation(line: 336, column: 29, scope: !998)
!1085 = !DILocation(line: 336, column: 32, scope: !998)
!1086 = !DILocation(line: 336, column: 17, scope: !998)
!1087 = !DILocation(line: 338, column: 6, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !998, file: !452, line: 338, column: 6)
!1089 = !DILocation(line: 338, column: 9, scope: !1088)
!1090 = !DILocation(line: 338, column: 6, scope: !998)
!1091 = !DILocation(line: 339, column: 3, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !1088, file: !452, line: 338, column: 15)
!1093 = !DILocation(line: 341, column: 2, scope: !998)
!1094 = !DILocation(line: 341, column: 11, scope: !998)
!1095 = !DILocation(line: 341, column: 27, scope: !998)
!1096 = !DILocation(line: 341, column: 30, scope: !998)
!1097 = !DILocation(line: 341, column: 17, scope: !998)
!1098 = !DILocation(line: 344, column: 39, scope: !998)
!1099 = !DILocation(line: 344, column: 45, scope: !998)
!1100 = !DILocation(line: 344, column: 43, scope: !998)
!1101 = !DILocation(line: 344, column: 23, scope: !998)
!1102 = !DILocation(line: 344, column: 69, scope: !998)
!1103 = !DILocation(line: 344, column: 76, scope: !998)
!1104 = !DILocation(line: 344, column: 50, scope: !998)
!1105 = !DILocation(line: 344, column: 100, scope: !998)
!1106 = !DILocation(line: 344, column: 82, scope: !998)
!1107 = !DILocation(line: 344, column: 126, scope: !998)
!1108 = !DILocation(line: 344, column: 108, scope: !998)
!1109 = !DILocation(line: 344, column: 8, scope: !998)
!1110 = !DILocation(line: 344, column: 136, scope: !998)
!1111 = !DILocation(line: 344, column: 134, scope: !998)
!1112 = !DILocation(line: 344, column: 6, scope: !998)
!1113 = !DILocation(line: 345, column: 2, scope: !998)
!1114 = !DILocation(line: 345, column: 16, scope: !998)
!1115 = !DILocation(line: 345, column: 58, scope: !998)
!1116 = !DILocation(line: 345, column: 64, scope: !998)
!1117 = !DILocation(line: 345, column: 62, scope: !998)
!1118 = !DILocation(line: 345, column: 42, scope: !998)
!1119 = !DILocation(line: 345, column: 71, scope: !998)
!1120 = !DILocation(line: 345, column: 100, scope: !998)
!1121 = !DILocation(line: 345, column: 123, scope: !998)
!1122 = !DILocation(line: 345, column: 22, scope: !998)
!1123 = !DILocation(line: 348, column: 2, scope: !998)
!1124 = !DILocation(line: 348, column: 12, scope: !998)
!1125 = !DILocation(line: 348, column: 31, scope: !998)
!1126 = !DILocation(line: 348, column: 34, scope: !998)
!1127 = !DILocation(line: 348, column: 16, scope: !998)
!1128 = !DILocation(line: 349, column: 2, scope: !998)
!1129 = !DILocation(line: 349, column: 12, scope: !998)
!1130 = !DILocation(line: 349, column: 20, scope: !998)
!1131 = !DILocation(line: 349, column: 36, scope: !998)
!1132 = !DILocation(line: 349, column: 26, scope: !998)
!1133 = !DILocation(line: 349, column: 24, scope: !998)
!1134 = !DILocation(line: 353, column: 6, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !998, file: !452, line: 353, column: 6)
!1136 = !DILocation(line: 353, column: 10, scope: !1135)
!1137 = !DILocation(line: 353, column: 8, scope: !1135)
!1138 = !DILocation(line: 353, column: 6, scope: !998)
!1139 = !DILocation(line: 354, column: 16, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1135, file: !452, line: 353, column: 14)
!1141 = !DILocation(line: 354, column: 19, scope: !1140)
!1142 = !DILocation(line: 354, column: 23, scope: !1140)
!1143 = !DILocation(line: 354, column: 3, scope: !1140)
!1144 = !DILocation(line: 355, column: 17, scope: !1140)
!1145 = !DILocation(line: 355, column: 20, scope: !1140)
!1146 = !DILocation(line: 355, column: 3, scope: !1140)
!1147 = !DILocation(line: 356, column: 2, scope: !1140)
!1148 = !DILocation(line: 359, column: 18, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !998, file: !452, line: 359, column: 6)
!1150 = !DILocation(line: 359, column: 21, scope: !1149)
!1151 = !DILocation(line: 359, column: 6, scope: !1149)
!1152 = !DILocation(line: 359, column: 26, scope: !1149)
!1153 = !DILocation(line: 359, column: 24, scope: !1149)
!1154 = !DILocation(line: 359, column: 6, scope: !998)
!1155 = !DILocation(line: 360, column: 16, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !1149, file: !452, line: 359, column: 33)
!1157 = !DILocation(line: 360, column: 19, scope: !1156)
!1158 = !DILocation(line: 360, column: 22, scope: !1156)
!1159 = !DILocation(line: 360, column: 3, scope: !1156)
!1160 = !DILocation(line: 361, column: 17, scope: !1156)
!1161 = !DILocation(line: 361, column: 20, scope: !1156)
!1162 = !DILocation(line: 361, column: 3, scope: !1156)
!1163 = !DILocation(line: 362, column: 2, scope: !1156)
!1164 = !DILocation(line: 364, column: 17, scope: !998)
!1165 = !DILocation(line: 364, column: 20, scope: !998)
!1166 = !DILocation(line: 364, column: 2, scope: !998)
!1167 = !DILocation(line: 376, column: 9, scope: !998)
!1168 = !DILocation(line: 376, column: 2, scope: !998)
!1169 = !DILocation(line: 377, column: 1, scope: !998)
!1170 = distinct !DISubprogram(name: "chunk_header_bytes", scope: !87, file: !87, line: 220, type: !1171, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1173)
!1171 = !DISubroutineType(types: !1172)
!1172 = !{!94, !111}
!1173 = !{!1174}
!1174 = !DILocalVariable(name: "h", arg: 1, scope: !1170, file: !87, line: 220, type: !111)
!1175 = !DILocation(line: 220, column: 56, scope: !1170)
!1176 = !DILocation(line: 222, column: 18, scope: !1170)
!1177 = !DILocation(line: 222, column: 9, scope: !1170)
!1178 = !DILocation(line: 222, column: 2, scope: !1170)
!1179 = distinct !DISubprogram(name: "right_chunk", scope: !87, file: !87, line: 204, type: !1180, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1182)
!1180 = !DISubroutineType(types: !1181)
!1181 = !{!116, !111, !116}
!1182 = !{!1183, !1184}
!1183 = !DILocalVariable(name: "h", arg: 1, scope: !1179, file: !87, line: 204, type: !111)
!1184 = !DILocalVariable(name: "c", arg: 2, scope: !1179, file: !87, line: 204, type: !116)
!1185 = !DILocation(line: 204, column: 52, scope: !1179)
!1186 = !DILocation(line: 204, column: 65, scope: !1179)
!1187 = !DILocation(line: 206, column: 9, scope: !1179)
!1188 = !DILocation(line: 206, column: 24, scope: !1179)
!1189 = !DILocation(line: 206, column: 27, scope: !1179)
!1190 = !DILocation(line: 206, column: 13, scope: !1179)
!1191 = !DILocation(line: 206, column: 11, scope: !1179)
!1192 = !DILocation(line: 206, column: 2, scope: !1179)
!1193 = distinct !DISubprogram(name: "sys_heap_aligned_realloc", scope: !452, file: !452, line: 379, type: !1194, scopeLine: 381, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1196)
!1194 = !DISubroutineType(types: !1195)
!1195 = !{!129, !455, !129, !94, !94}
!1196 = !{!1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1212, !1213}
!1197 = !DILocalVariable(name: "heap", arg: 1, scope: !1193, file: !452, line: 379, type: !455)
!1198 = !DILocalVariable(name: "ptr", arg: 2, scope: !1193, file: !452, line: 379, type: !129)
!1199 = !DILocalVariable(name: "align", arg: 3, scope: !1193, file: !452, line: 380, type: !94)
!1200 = !DILocalVariable(name: "bytes", arg: 4, scope: !1193, file: !452, line: 380, type: !94)
!1201 = !DILocalVariable(name: "h", scope: !1193, file: !452, line: 382, type: !111)
!1202 = !DILocalVariable(name: "c", scope: !1193, file: !452, line: 399, type: !116)
!1203 = !DILocalVariable(name: "rc", scope: !1193, file: !452, line: 400, type: !116)
!1204 = !DILocalVariable(name: "align_gap", scope: !1193, file: !452, line: 401, type: !94)
!1205 = !DILocalVariable(name: "chunks_need", scope: !1193, file: !452, line: 402, type: !676)
!1206 = !DILocalVariable(name: "split_size", scope: !1207, file: !452, line: 435, type: !676)
!1207 = distinct !DILexicalBlock(scope: !1208, file: !452, line: 433, column: 61)
!1208 = distinct !DILexicalBlock(scope: !1209, file: !452, line: 432, column: 13)
!1209 = distinct !DILexicalBlock(scope: !1210, file: !452, line: 409, column: 13)
!1210 = distinct !DILexicalBlock(scope: !1211, file: !452, line: 406, column: 13)
!1211 = distinct !DILexicalBlock(scope: !1193, file: !452, line: 404, column: 6)
!1212 = !DILocalVariable(name: "ptr2", scope: !1193, file: !452, line: 474, type: !129)
!1213 = !DILocalVariable(name: "prev_size", scope: !1214, file: !452, line: 477, type: !94)
!1214 = distinct !DILexicalBlock(scope: !1215, file: !452, line: 476, column: 17)
!1215 = distinct !DILexicalBlock(scope: !1193, file: !452, line: 476, column: 6)
!1216 = !DILocation(line: 379, column: 49, scope: !1193)
!1217 = !DILocation(line: 379, column: 61, scope: !1193)
!1218 = !DILocation(line: 380, column: 18, scope: !1193)
!1219 = !DILocation(line: 380, column: 32, scope: !1193)
!1220 = !DILocation(line: 382, column: 2, scope: !1193)
!1221 = !DILocation(line: 382, column: 17, scope: !1193)
!1222 = !DILocation(line: 382, column: 21, scope: !1193)
!1223 = !DILocation(line: 382, column: 27, scope: !1193)
!1224 = !DILocation(line: 385, column: 6, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1193, file: !452, line: 385, column: 6)
!1226 = !DILocation(line: 385, column: 10, scope: !1225)
!1227 = !DILocation(line: 385, column: 6, scope: !1193)
!1228 = !DILocation(line: 386, column: 33, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !1225, file: !452, line: 385, column: 16)
!1230 = !DILocation(line: 386, column: 39, scope: !1229)
!1231 = !DILocation(line: 386, column: 46, scope: !1229)
!1232 = !DILocation(line: 386, column: 10, scope: !1229)
!1233 = !DILocation(line: 386, column: 3, scope: !1229)
!1234 = !DILocation(line: 388, column: 6, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1193, file: !452, line: 388, column: 6)
!1236 = !DILocation(line: 388, column: 12, scope: !1235)
!1237 = !DILocation(line: 388, column: 6, scope: !1193)
!1238 = !DILocation(line: 389, column: 17, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1235, file: !452, line: 388, column: 18)
!1240 = !DILocation(line: 389, column: 23, scope: !1239)
!1241 = !DILocation(line: 389, column: 3, scope: !1239)
!1242 = !DILocation(line: 390, column: 3, scope: !1239)
!1243 = !DILocation(line: 395, column: 19, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !1193, file: !452, line: 395, column: 6)
!1245 = !DILocation(line: 395, column: 22, scope: !1244)
!1246 = !DILocation(line: 395, column: 6, scope: !1244)
!1247 = !DILocation(line: 395, column: 6, scope: !1193)
!1248 = !DILocation(line: 396, column: 3, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1244, file: !452, line: 395, column: 30)
!1250 = !DILocation(line: 399, column: 2, scope: !1193)
!1251 = !DILocation(line: 399, column: 12, scope: !1193)
!1252 = !DILocation(line: 399, column: 31, scope: !1193)
!1253 = !DILocation(line: 399, column: 34, scope: !1193)
!1254 = !DILocation(line: 399, column: 16, scope: !1193)
!1255 = !DILocation(line: 400, column: 2, scope: !1193)
!1256 = !DILocation(line: 400, column: 12, scope: !1193)
!1257 = !DILocation(line: 400, column: 29, scope: !1193)
!1258 = !DILocation(line: 400, column: 32, scope: !1193)
!1259 = !DILocation(line: 400, column: 17, scope: !1193)
!1260 = !DILocation(line: 401, column: 2, scope: !1193)
!1261 = !DILocation(line: 401, column: 9, scope: !1193)
!1262 = !DILocation(line: 401, column: 32, scope: !1193)
!1263 = !DILocation(line: 401, column: 59, scope: !1193)
!1264 = !DILocation(line: 401, column: 62, scope: !1193)
!1265 = !DILocation(line: 401, column: 49, scope: !1193)
!1266 = !DILocation(line: 401, column: 36, scope: !1193)
!1267 = !DILocation(line: 402, column: 2, scope: !1193)
!1268 = !DILocation(line: 402, column: 12, scope: !1193)
!1269 = !DILocation(line: 402, column: 43, scope: !1193)
!1270 = !DILocation(line: 402, column: 46, scope: !1193)
!1271 = !DILocation(line: 402, column: 54, scope: !1193)
!1272 = !DILocation(line: 402, column: 52, scope: !1193)
!1273 = !DILocation(line: 402, column: 26, scope: !1193)
!1274 = !DILocation(line: 404, column: 6, scope: !1211)
!1275 = !DILocation(line: 404, column: 12, scope: !1211)
!1276 = !DILocation(line: 404, column: 27, scope: !1211)
!1277 = !DILocation(line: 404, column: 16, scope: !1211)
!1278 = !DILocation(line: 404, column: 34, scope: !1211)
!1279 = !DILocation(line: 404, column: 40, scope: !1211)
!1280 = !DILocation(line: 404, column: 31, scope: !1211)
!1281 = !DILocation(line: 404, column: 6, scope: !1193)
!1282 = !DILocation(line: 406, column: 2, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !1211, file: !452, line: 404, column: 47)
!1284 = !DILocation(line: 406, column: 24, scope: !1210)
!1285 = !DILocation(line: 406, column: 27, scope: !1210)
!1286 = !DILocation(line: 406, column: 13, scope: !1210)
!1287 = !DILocation(line: 406, column: 33, scope: !1210)
!1288 = !DILocation(line: 406, column: 30, scope: !1210)
!1289 = !DILocation(line: 406, column: 13, scope: !1211)
!1290 = !DILocation(line: 408, column: 10, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !1210, file: !452, line: 406, column: 46)
!1292 = !DILocation(line: 408, column: 3, scope: !1291)
!1293 = !DILocation(line: 409, column: 24, scope: !1209)
!1294 = !DILocation(line: 409, column: 27, scope: !1209)
!1295 = !DILocation(line: 409, column: 13, scope: !1209)
!1296 = !DILocation(line: 409, column: 32, scope: !1209)
!1297 = !DILocation(line: 409, column: 30, scope: !1209)
!1298 = !DILocation(line: 409, column: 13, scope: !1210)
!1299 = !DILocation(line: 420, column: 16, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1209, file: !452, line: 409, column: 45)
!1301 = !DILocation(line: 420, column: 19, scope: !1300)
!1302 = !DILocation(line: 420, column: 22, scope: !1300)
!1303 = !DILocation(line: 420, column: 26, scope: !1300)
!1304 = !DILocation(line: 420, column: 24, scope: !1300)
!1305 = !DILocation(line: 420, column: 3, scope: !1300)
!1306 = !DILocation(line: 421, column: 18, scope: !1300)
!1307 = !DILocation(line: 421, column: 21, scope: !1300)
!1308 = !DILocation(line: 421, column: 3, scope: !1300)
!1309 = !DILocation(line: 422, column: 14, scope: !1300)
!1310 = !DILocation(line: 422, column: 17, scope: !1300)
!1311 = !DILocation(line: 422, column: 21, scope: !1300)
!1312 = !DILocation(line: 422, column: 19, scope: !1300)
!1313 = !DILocation(line: 422, column: 3, scope: !1300)
!1314 = !DILocation(line: 431, column: 10, scope: !1300)
!1315 = !DILocation(line: 431, column: 3, scope: !1300)
!1316 = !DILocation(line: 432, column: 25, scope: !1208)
!1317 = !DILocation(line: 432, column: 28, scope: !1208)
!1318 = !DILocation(line: 432, column: 14, scope: !1208)
!1319 = !DILocation(line: 432, column: 32, scope: !1208)
!1320 = !DILocation(line: 433, column: 18, scope: !1208)
!1321 = !DILocation(line: 433, column: 21, scope: !1208)
!1322 = !DILocation(line: 433, column: 7, scope: !1208)
!1323 = !DILocation(line: 433, column: 37, scope: !1208)
!1324 = !DILocation(line: 433, column: 40, scope: !1208)
!1325 = !DILocation(line: 433, column: 26, scope: !1208)
!1326 = !DILocation(line: 433, column: 24, scope: !1208)
!1327 = !DILocation(line: 433, column: 47, scope: !1208)
!1328 = !DILocation(line: 433, column: 44, scope: !1208)
!1329 = !DILocation(line: 432, column: 13, scope: !1209)
!1330 = !DILocation(line: 435, column: 3, scope: !1207)
!1331 = !DILocation(line: 435, column: 13, scope: !1207)
!1332 = !DILocation(line: 435, column: 26, scope: !1207)
!1333 = !DILocation(line: 435, column: 51, scope: !1207)
!1334 = !DILocation(line: 435, column: 54, scope: !1207)
!1335 = !DILocation(line: 435, column: 40, scope: !1207)
!1336 = !DILocation(line: 435, column: 38, scope: !1207)
!1337 = !DILocation(line: 445, column: 20, scope: !1207)
!1338 = !DILocation(line: 445, column: 23, scope: !1207)
!1339 = !DILocation(line: 445, column: 3, scope: !1207)
!1340 = !DILocation(line: 447, column: 7, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1207, file: !452, line: 447, column: 7)
!1342 = !DILocation(line: 447, column: 31, scope: !1341)
!1343 = !DILocation(line: 447, column: 34, scope: !1341)
!1344 = !DILocation(line: 447, column: 20, scope: !1341)
!1345 = !DILocation(line: 447, column: 18, scope: !1341)
!1346 = !DILocation(line: 447, column: 7, scope: !1207)
!1347 = !DILocation(line: 448, column: 17, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !1341, file: !452, line: 447, column: 39)
!1349 = !DILocation(line: 448, column: 20, scope: !1348)
!1350 = !DILocation(line: 448, column: 24, scope: !1348)
!1351 = !DILocation(line: 448, column: 29, scope: !1348)
!1352 = !DILocation(line: 448, column: 27, scope: !1348)
!1353 = !DILocation(line: 448, column: 4, scope: !1348)
!1354 = !DILocation(line: 449, column: 18, scope: !1348)
!1355 = !DILocation(line: 449, column: 21, scope: !1348)
!1356 = !DILocation(line: 449, column: 26, scope: !1348)
!1357 = !DILocation(line: 449, column: 24, scope: !1348)
!1358 = !DILocation(line: 449, column: 4, scope: !1348)
!1359 = !DILocation(line: 450, column: 3, scope: !1348)
!1360 = !DILocation(line: 452, column: 16, scope: !1207)
!1361 = !DILocation(line: 452, column: 19, scope: !1207)
!1362 = !DILocation(line: 452, column: 22, scope: !1207)
!1363 = !DILocation(line: 452, column: 3, scope: !1207)
!1364 = !DILocation(line: 453, column: 18, scope: !1207)
!1365 = !DILocation(line: 453, column: 21, scope: !1207)
!1366 = !DILocation(line: 453, column: 3, scope: !1207)
!1367 = !DILocation(line: 462, column: 10, scope: !1207)
!1368 = !DILocation(line: 462, column: 3, scope: !1207)
!1369 = !DILocation(line: 463, column: 2, scope: !1208)
!1370 = !DILocation(line: 474, column: 2, scope: !1193)
!1371 = !DILocation(line: 474, column: 8, scope: !1193)
!1372 = !DILocation(line: 474, column: 38, scope: !1193)
!1373 = !DILocation(line: 474, column: 44, scope: !1193)
!1374 = !DILocation(line: 474, column: 51, scope: !1193)
!1375 = !DILocation(line: 474, column: 15, scope: !1193)
!1376 = !DILocation(line: 476, column: 6, scope: !1215)
!1377 = !DILocation(line: 476, column: 11, scope: !1215)
!1378 = !DILocation(line: 476, column: 6, scope: !1193)
!1379 = !DILocation(line: 477, column: 3, scope: !1214)
!1380 = !DILocation(line: 477, column: 10, scope: !1214)
!1381 = !DILocation(line: 477, column: 39, scope: !1214)
!1382 = !DILocation(line: 477, column: 53, scope: !1214)
!1383 = !DILocation(line: 477, column: 56, scope: !1214)
!1384 = !DILocation(line: 477, column: 42, scope: !1214)
!1385 = !DILocation(line: 477, column: 22, scope: !1214)
!1386 = !DILocation(line: 477, column: 62, scope: !1214)
!1387 = !DILocation(line: 477, column: 60, scope: !1214)
!1388 = !DILocation(line: 479, column: 10, scope: !1214)
!1389 = !DILocation(line: 479, column: 16, scope: !1214)
!1390 = !DILocation(line: 479, column: 24, scope: !1214)
!1391 = !DILocation(line: 479, column: 38, scope: !1214)
!1392 = !DILocation(line: 479, column: 35, scope: !1214)
!1393 = !DILocation(line: 479, column: 22, scope: !1214)
!1394 = !DILocation(line: 479, column: 49, scope: !1214)
!1395 = !DILocation(line: 479, column: 63, scope: !1214)
!1396 = !DILocation(line: 479, column: 3, scope: !1214)
!1397 = !DILocation(line: 480, column: 17, scope: !1214)
!1398 = !DILocation(line: 480, column: 23, scope: !1214)
!1399 = !DILocation(line: 480, column: 3, scope: !1214)
!1400 = !DILocation(line: 481, column: 2, scope: !1215)
!1401 = !DILocation(line: 481, column: 2, scope: !1214)
!1402 = !DILocation(line: 482, column: 9, scope: !1193)
!1403 = !DILocation(line: 482, column: 2, scope: !1193)
!1404 = !DILocation(line: 483, column: 1, scope: !1193)
!1405 = distinct !DISubprogram(name: "chunk_used", scope: !87, file: !87, line: 137, type: !1406, scopeLine: 138, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1408)
!1406 = !DISubroutineType(types: !1407)
!1407 = !{!513, !111, !116}
!1408 = !{!1409, !1410}
!1409 = !DILocalVariable(name: "h", arg: 1, scope: !1405, file: !87, line: 137, type: !111)
!1410 = !DILocalVariable(name: "c", arg: 2, scope: !1405, file: !87, line: 137, type: !116)
!1411 = !DILocation(line: 137, column: 47, scope: !1405)
!1412 = !DILocation(line: 137, column: 60, scope: !1405)
!1413 = !DILocation(line: 139, column: 21, scope: !1405)
!1414 = !DILocation(line: 139, column: 24, scope: !1405)
!1415 = !DILocation(line: 139, column: 9, scope: !1405)
!1416 = !DILocation(line: 139, column: 42, scope: !1405)
!1417 = !DILocation(line: 139, column: 2, scope: !1405)
!1418 = distinct !DISubprogram(name: "free_list_remove", scope: !452, file: !452, line: 60, type: !565, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1419)
!1419 = !{!1420, !1421, !1422}
!1420 = !DILocalVariable(name: "h", arg: 1, scope: !1418, file: !452, line: 60, type: !111)
!1421 = !DILocalVariable(name: "c", arg: 2, scope: !1418, file: !452, line: 60, type: !116)
!1422 = !DILocalVariable(name: "bidx", scope: !1423, file: !452, line: 63, type: !130)
!1423 = distinct !DILexicalBlock(scope: !1424, file: !452, line: 62, column: 31)
!1424 = distinct !DILexicalBlock(scope: !1418, file: !452, line: 62, column: 6)
!1425 = !DILocation(line: 60, column: 45, scope: !1418)
!1426 = !DILocation(line: 60, column: 58, scope: !1418)
!1427 = !DILocation(line: 62, column: 24, scope: !1424)
!1428 = !DILocation(line: 62, column: 27, scope: !1424)
!1429 = !DILocation(line: 62, column: 7, scope: !1424)
!1430 = !DILocation(line: 62, column: 6, scope: !1418)
!1431 = !DILocation(line: 63, column: 3, scope: !1423)
!1432 = !DILocation(line: 63, column: 7, scope: !1423)
!1433 = !DILocation(line: 63, column: 25, scope: !1423)
!1434 = !DILocation(line: 63, column: 39, scope: !1423)
!1435 = !DILocation(line: 63, column: 42, scope: !1423)
!1436 = !DILocation(line: 63, column: 28, scope: !1423)
!1437 = !DILocation(line: 63, column: 14, scope: !1423)
!1438 = !DILocation(line: 64, column: 25, scope: !1423)
!1439 = !DILocation(line: 64, column: 28, scope: !1423)
!1440 = !DILocation(line: 64, column: 31, scope: !1423)
!1441 = !DILocation(line: 64, column: 3, scope: !1423)
!1442 = !DILocation(line: 65, column: 2, scope: !1424)
!1443 = !DILocation(line: 65, column: 2, scope: !1423)
!1444 = !DILocation(line: 66, column: 1, scope: !1418)
!1445 = distinct !DISubprogram(name: "merge_chunks", scope: !452, file: !452, line: 125, type: !901, scopeLine: 126, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1446)
!1446 = !{!1447, !1448, !1449, !1450}
!1447 = !DILocalVariable(name: "h", arg: 1, scope: !1445, file: !452, line: 125, type: !111)
!1448 = !DILocalVariable(name: "lc", arg: 2, scope: !1445, file: !452, line: 125, type: !116)
!1449 = !DILocalVariable(name: "rc", arg: 3, scope: !1445, file: !452, line: 125, type: !116)
!1450 = !DILocalVariable(name: "newsz", scope: !1445, file: !452, line: 127, type: !676)
!1451 = !DILocation(line: 125, column: 41, scope: !1445)
!1452 = !DILocation(line: 125, column: 54, scope: !1445)
!1453 = !DILocation(line: 125, column: 68, scope: !1445)
!1454 = !DILocation(line: 127, column: 2, scope: !1445)
!1455 = !DILocation(line: 127, column: 12, scope: !1445)
!1456 = !DILocation(line: 127, column: 31, scope: !1445)
!1457 = !DILocation(line: 127, column: 34, scope: !1445)
!1458 = !DILocation(line: 127, column: 20, scope: !1445)
!1459 = !DILocation(line: 127, column: 51, scope: !1445)
!1460 = !DILocation(line: 127, column: 54, scope: !1445)
!1461 = !DILocation(line: 127, column: 40, scope: !1445)
!1462 = !DILocation(line: 127, column: 38, scope: !1445)
!1463 = !DILocation(line: 129, column: 17, scope: !1445)
!1464 = !DILocation(line: 129, column: 20, scope: !1445)
!1465 = !DILocation(line: 129, column: 24, scope: !1445)
!1466 = !DILocation(line: 129, column: 2, scope: !1445)
!1467 = !DILocation(line: 130, column: 22, scope: !1445)
!1468 = !DILocation(line: 130, column: 37, scope: !1445)
!1469 = !DILocation(line: 130, column: 40, scope: !1445)
!1470 = !DILocation(line: 130, column: 25, scope: !1445)
!1471 = !DILocation(line: 130, column: 45, scope: !1445)
!1472 = !DILocation(line: 130, column: 2, scope: !1445)
!1473 = !DILocation(line: 131, column: 1, scope: !1445)
!1474 = distinct !DISubprogram(name: "chunksz_to_bytes", scope: !87, file: !87, line: 245, type: !1475, scopeLine: 246, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1477)
!1475 = !DISubroutineType(types: !1476)
!1476 = !{!94, !111, !676}
!1477 = !{!1478, !1479}
!1478 = !DILocalVariable(name: "h", arg: 1, scope: !1474, file: !87, line: 245, type: !111)
!1479 = !DILocalVariable(name: "chunksz_in", arg: 2, scope: !1474, file: !87, line: 245, type: !676)
!1480 = !DILocation(line: 245, column: 54, scope: !1474)
!1481 = !DILocation(line: 245, column: 67, scope: !1474)
!1482 = !DILocation(line: 247, column: 9, scope: !1474)
!1483 = !DILocation(line: 247, column: 20, scope: !1474)
!1484 = !DILocation(line: 247, column: 46, scope: !1474)
!1485 = !DILocation(line: 247, column: 27, scope: !1474)
!1486 = !DILocation(line: 247, column: 25, scope: !1474)
!1487 = !DILocation(line: 247, column: 2, scope: !1474)
!1488 = distinct !DISubprogram(name: "sys_heap_init", scope: !452, file: !452, line: 485, type: !1489, scopeLine: 486, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1491)
!1489 = !DISubroutineType(types: !1490)
!1490 = !{null, !455, !129, !94}
!1491 = !{!1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501}
!1492 = !DILocalVariable(name: "heap", arg: 1, scope: !1488, file: !452, line: 485, type: !455)
!1493 = !DILocalVariable(name: "mem", arg: 2, scope: !1488, file: !452, line: 485, type: !129)
!1494 = !DILocalVariable(name: "bytes", arg: 3, scope: !1488, file: !452, line: 485, type: !94)
!1495 = !DILocalVariable(name: "addr", scope: !1488, file: !452, line: 502, type: !110)
!1496 = !DILocalVariable(name: "end", scope: !1488, file: !452, line: 503, type: !110)
!1497 = !DILocalVariable(name: "heap_sz", scope: !1488, file: !452, line: 504, type: !676)
!1498 = !DILocalVariable(name: "h", scope: !1488, file: !452, line: 509, type: !111)
!1499 = !DILocalVariable(name: "nb_buckets", scope: !1488, file: !452, line: 520, type: !130)
!1500 = !DILocalVariable(name: "chunk0_size", scope: !1488, file: !452, line: 521, type: !676)
!1501 = !DILocalVariable(name: "i", scope: !1502, file: !452, line: 526, type: !130)
!1502 = distinct !DILexicalBlock(scope: !1488, file: !452, line: 526, column: 2)
!1503 = !DILocation(line: 485, column: 37, scope: !1488)
!1504 = !DILocation(line: 485, column: 49, scope: !1488)
!1505 = !DILocation(line: 485, column: 61, scope: !1488)
!1506 = !DILocation(line: 499, column: 29, scope: !1488)
!1507 = !DILocation(line: 499, column: 11, scope: !1488)
!1508 = !DILocation(line: 499, column: 8, scope: !1488)
!1509 = !DILocation(line: 502, column: 2, scope: !1488)
!1510 = !DILocation(line: 502, column: 12, scope: !1488)
!1511 = !DILocation(line: 502, column: 38, scope: !1488)
!1512 = !DILocation(line: 502, column: 22, scope: !1488)
!1513 = !DILocation(line: 502, column: 43, scope: !1488)
!1514 = !DILocation(line: 502, column: 72, scope: !1488)
!1515 = !DILocation(line: 502, column: 95, scope: !1488)
!1516 = !DILocation(line: 503, column: 2, scope: !1488)
!1517 = !DILocation(line: 503, column: 12, scope: !1488)
!1518 = !DILocation(line: 503, column: 47, scope: !1488)
!1519 = !DILocation(line: 503, column: 53, scope: !1488)
!1520 = !DILocation(line: 503, column: 51, scope: !1488)
!1521 = !DILocation(line: 503, column: 20, scope: !1488)
!1522 = !DILocation(line: 503, column: 60, scope: !1488)
!1523 = !DILocation(line: 503, column: 83, scope: !1488)
!1524 = !DILocation(line: 504, column: 2, scope: !1488)
!1525 = !DILocation(line: 504, column: 12, scope: !1488)
!1526 = !DILocation(line: 504, column: 23, scope: !1488)
!1527 = !DILocation(line: 504, column: 29, scope: !1488)
!1528 = !DILocation(line: 504, column: 27, scope: !1488)
!1529 = !DILocation(line: 504, column: 35, scope: !1488)
!1530 = !DILocation(line: 509, column: 2, scope: !1488)
!1531 = !DILocation(line: 509, column: 17, scope: !1488)
!1532 = !DILocation(line: 509, column: 38, scope: !1488)
!1533 = !DILocation(line: 509, column: 21, scope: !1488)
!1534 = !DILocation(line: 510, column: 15, scope: !1488)
!1535 = !DILocation(line: 510, column: 2, scope: !1488)
!1536 = !DILocation(line: 510, column: 8, scope: !1488)
!1537 = !DILocation(line: 510, column: 13, scope: !1488)
!1538 = !DILocation(line: 511, column: 17, scope: !1488)
!1539 = !DILocation(line: 511, column: 2, scope: !1488)
!1540 = !DILocation(line: 511, column: 5, scope: !1488)
!1541 = !DILocation(line: 511, column: 15, scope: !1488)
!1542 = !DILocation(line: 512, column: 2, scope: !1488)
!1543 = !DILocation(line: 512, column: 5, scope: !1488)
!1544 = !DILocation(line: 512, column: 19, scope: !1488)
!1545 = !DILocation(line: 520, column: 2, scope: !1488)
!1546 = !DILocation(line: 520, column: 6, scope: !1488)
!1547 = !DILocation(line: 520, column: 30, scope: !1488)
!1548 = !DILocation(line: 520, column: 33, scope: !1488)
!1549 = !DILocation(line: 520, column: 19, scope: !1488)
!1550 = !DILocation(line: 520, column: 42, scope: !1488)
!1551 = !DILocation(line: 521, column: 2, scope: !1488)
!1552 = !DILocation(line: 521, column: 12, scope: !1488)
!1553 = !DILocation(line: 522, column: 10, scope: !1488)
!1554 = !DILocation(line: 522, column: 21, scope: !1488)
!1555 = !DILocation(line: 521, column: 56, scope: !1488)
!1556 = !DILocation(line: 521, column: 26, scope: !1488)
!1557 = !DILocation(line: 526, column: 7, scope: !1502)
!1558 = !DILocation(line: 526, column: 11, scope: !1502)
!1559 = !DILocation(line: 526, column: 18, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1502, file: !452, line: 526, column: 2)
!1561 = !DILocation(line: 526, column: 22, scope: !1560)
!1562 = !DILocation(line: 526, column: 20, scope: !1560)
!1563 = !DILocation(line: 526, column: 2, scope: !1502)
!1564 = !DILocation(line: 526, column: 2, scope: !1560)
!1565 = !DILocation(line: 527, column: 3, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1560, file: !452, line: 526, column: 39)
!1567 = !DILocation(line: 527, column: 6, scope: !1566)
!1568 = !DILocation(line: 527, column: 14, scope: !1566)
!1569 = !DILocation(line: 527, column: 17, scope: !1566)
!1570 = !DILocation(line: 527, column: 22, scope: !1566)
!1571 = !DILocation(line: 528, column: 2, scope: !1566)
!1572 = !DILocation(line: 526, column: 35, scope: !1560)
!1573 = distinct !{!1573, !1563, !1574}
!1574 = !DILocation(line: 528, column: 2, scope: !1502)
!1575 = !DILocation(line: 531, column: 17, scope: !1488)
!1576 = !DILocation(line: 531, column: 23, scope: !1488)
!1577 = !DILocation(line: 531, column: 2, scope: !1488)
!1578 = !DILocation(line: 532, column: 22, scope: !1488)
!1579 = !DILocation(line: 532, column: 2, scope: !1488)
!1580 = !DILocation(line: 533, column: 17, scope: !1488)
!1581 = !DILocation(line: 533, column: 2, scope: !1488)
!1582 = !DILocation(line: 536, column: 17, scope: !1488)
!1583 = !DILocation(line: 536, column: 20, scope: !1488)
!1584 = !DILocation(line: 536, column: 33, scope: !1488)
!1585 = !DILocation(line: 536, column: 43, scope: !1488)
!1586 = !DILocation(line: 536, column: 41, scope: !1488)
!1587 = !DILocation(line: 536, column: 2, scope: !1488)
!1588 = !DILocation(line: 537, column: 22, scope: !1488)
!1589 = !DILocation(line: 537, column: 25, scope: !1488)
!1590 = !DILocation(line: 537, column: 38, scope: !1488)
!1591 = !DILocation(line: 537, column: 2, scope: !1488)
!1592 = !DILocation(line: 540, column: 17, scope: !1488)
!1593 = !DILocation(line: 540, column: 20, scope: !1488)
!1594 = !DILocation(line: 540, column: 2, scope: !1488)
!1595 = !DILocation(line: 541, column: 22, scope: !1488)
!1596 = !DILocation(line: 541, column: 25, scope: !1488)
!1597 = !DILocation(line: 541, column: 34, scope: !1488)
!1598 = !DILocation(line: 541, column: 44, scope: !1488)
!1599 = !DILocation(line: 541, column: 42, scope: !1488)
!1600 = !DILocation(line: 541, column: 2, scope: !1488)
!1601 = !DILocation(line: 542, column: 17, scope: !1488)
!1602 = !DILocation(line: 542, column: 20, scope: !1488)
!1603 = !DILocation(line: 542, column: 2, scope: !1488)
!1604 = !DILocation(line: 544, column: 16, scope: !1488)
!1605 = !DILocation(line: 544, column: 19, scope: !1488)
!1606 = !DILocation(line: 544, column: 2, scope: !1488)
!1607 = !DILocation(line: 545, column: 1, scope: !1488)
!1608 = distinct !DISubprogram(name: "heap_footer_bytes", scope: !87, file: !87, line: 225, type: !1609, scopeLine: 226, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1611)
!1609 = !DISubroutineType(types: !1610)
!1610 = !{!94, !94}
!1611 = !{!1612}
!1612 = !DILocalVariable(name: "size", arg: 1, scope: !1608, file: !87, line: 225, type: !94)
!1613 = !DILocation(line: 225, column: 47, scope: !1608)
!1614 = !DILocation(line: 227, column: 24, scope: !1608)
!1615 = !DILocation(line: 227, column: 9, scope: !1608)
!1616 = !DILocation(line: 227, column: 2, scope: !1608)
!1617 = distinct !DISubprogram(name: "bucket_idx", scope: !87, file: !87, line: 250, type: !1618, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1620)
!1618 = !DISubroutineType(types: !1619)
!1619 = !{!130, !111, !676}
!1620 = !{!1621, !1622, !1623}
!1621 = !DILocalVariable(name: "h", arg: 1, scope: !1617, file: !87, line: 250, type: !111)
!1622 = !DILocalVariable(name: "sz", arg: 2, scope: !1617, file: !87, line: 250, type: !676)
!1623 = !DILocalVariable(name: "usable_sz", scope: !1617, file: !87, line: 252, type: !96)
!1624 = !DILocation(line: 250, column: 45, scope: !1617)
!1625 = !DILocation(line: 250, column: 58, scope: !1617)
!1626 = !DILocation(line: 252, column: 2, scope: !1617)
!1627 = !DILocation(line: 252, column: 15, scope: !1617)
!1628 = !DILocation(line: 252, column: 27, scope: !1617)
!1629 = !DILocation(line: 252, column: 47, scope: !1617)
!1630 = !DILocation(line: 252, column: 32, scope: !1617)
!1631 = !DILocation(line: 252, column: 30, scope: !1617)
!1632 = !DILocation(line: 252, column: 50, scope: !1617)
!1633 = !DILocation(line: 253, column: 28, scope: !1617)
!1634 = !DILocation(line: 253, column: 14, scope: !1617)
!1635 = !DILocation(line: 253, column: 12, scope: !1617)
!1636 = !DILocation(line: 254, column: 1, scope: !1617)
!1637 = !DILocation(line: 253, column: 2, scope: !1617)
!1638 = distinct !DISubprogram(name: "chunksz", scope: !87, file: !87, line: 230, type: !1639, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1641)
!1639 = !DISubroutineType(types: !1640)
!1640 = !{!676, !94}
!1641 = !{!1642}
!1642 = !DILocalVariable(name: "bytes", arg: 1, scope: !1638, file: !87, line: 230, type: !94)
!1643 = !DILocation(line: 230, column: 40, scope: !1638)
!1644 = !DILocation(line: 232, column: 10, scope: !1638)
!1645 = !DILocation(line: 232, column: 16, scope: !1638)
!1646 = !DILocation(line: 232, column: 21, scope: !1638)
!1647 = !DILocation(line: 232, column: 27, scope: !1638)
!1648 = !DILocation(line: 232, column: 2, scope: !1638)
!1649 = distinct !DISubprogram(name: "set_chunk_size", scope: !87, file: !87, line: 172, type: !1650, scopeLine: 173, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1652)
!1650 = !DISubroutineType(types: !1651)
!1651 = !{null, !111, !116, !676}
!1652 = !{!1653, !1654, !1655}
!1653 = !DILocalVariable(name: "h", arg: 1, scope: !1649, file: !87, line: 172, type: !111)
!1654 = !DILocalVariable(name: "c", arg: 2, scope: !1649, file: !87, line: 172, type: !116)
!1655 = !DILocalVariable(name: "size", arg: 3, scope: !1649, file: !87, line: 172, type: !676)
!1656 = !DILocation(line: 172, column: 50, scope: !1649)
!1657 = !DILocation(line: 172, column: 63, scope: !1649)
!1658 = !DILocation(line: 172, column: 76, scope: !1649)
!1659 = !DILocation(line: 174, column: 12, scope: !1649)
!1660 = !DILocation(line: 174, column: 15, scope: !1649)
!1661 = !DILocation(line: 174, column: 33, scope: !1649)
!1662 = !DILocation(line: 174, column: 38, scope: !1649)
!1663 = !DILocation(line: 174, column: 2, scope: !1649)
!1664 = !DILocation(line: 175, column: 1, scope: !1649)
!1665 = distinct !DISubprogram(name: "set_left_chunk_size", scope: !87, file: !87, line: 209, type: !1650, scopeLine: 211, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1666)
!1666 = !{!1667, !1668, !1669}
!1667 = !DILocalVariable(name: "h", arg: 1, scope: !1665, file: !87, line: 209, type: !111)
!1668 = !DILocalVariable(name: "c", arg: 2, scope: !1665, file: !87, line: 209, type: !116)
!1669 = !DILocalVariable(name: "size", arg: 3, scope: !1665, file: !87, line: 210, type: !676)
!1670 = !DILocation(line: 209, column: 55, scope: !1665)
!1671 = !DILocation(line: 209, column: 68, scope: !1665)
!1672 = !DILocation(line: 210, column: 22, scope: !1665)
!1673 = !DILocation(line: 212, column: 12, scope: !1665)
!1674 = !DILocation(line: 212, column: 15, scope: !1665)
!1675 = !DILocation(line: 212, column: 29, scope: !1665)
!1676 = !DILocation(line: 212, column: 2, scope: !1665)
!1677 = !DILocation(line: 213, column: 1, scope: !1665)
!1678 = !DISubprogram(name: "z_timeout_expires", scope: !235, file: !235, line: 642, type: !1679, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !250)
!1679 = !DISubroutineType(types: !1680)
!1680 = !{!294, !1681}
!1681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1682, size: 32)
!1682 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !204)
!1683 = !DISubprogram(name: "z_timeout_remaining", scope: !235, file: !235, line: 643, type: !1679, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !250)
!1684 = distinct !DISubprogram(name: "sys_sflist_is_empty", scope: !382, file: !382, line: 335, type: !1685, scopeLine: 335, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1688)
!1685 = !DISubroutineType(types: !1686)
!1686 = !{!513, !1687}
!1687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 32)
!1688 = !{!1689}
!1689 = !DILocalVariable(name: "list", arg: 1, scope: !1684, file: !382, line: 335, type: !1687)
!1690 = !DILocation(line: 335, column: 55, scope: !1684)
!1691 = !DILocation(line: 335, column: 92, scope: !1684)
!1692 = !DILocation(line: 335, column: 71, scope: !1684)
!1693 = !DILocation(line: 335, column: 98, scope: !1684)
!1694 = !DILocation(line: 335, column: 63, scope: !1684)
!1695 = distinct !DISubprogram(name: "sys_sflist_peek_head", scope: !382, file: !382, line: 255, type: !1696, scopeLine: 256, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1698)
!1696 = !DISubroutineType(types: !1697)
!1697 = !{!386, !1687}
!1698 = !{!1699}
!1699 = !DILocalVariable(name: "list", arg: 1, scope: !1695, file: !382, line: 255, type: !1687)
!1700 = !DILocation(line: 255, column: 64, scope: !1695)
!1701 = !DILocation(line: 257, column: 9, scope: !1695)
!1702 = !DILocation(line: 257, column: 15, scope: !1695)
!1703 = !DILocation(line: 257, column: 2, scope: !1695)
!1704 = distinct !DISubprogram(name: "big_heap", scope: !87, file: !87, line: 96, type: !1705, scopeLine: 97, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1707)
!1705 = !DISubroutineType(types: !1706)
!1706 = !{!513, !111}
!1707 = !{!1708}
!1708 = !DILocalVariable(name: "h", arg: 1, scope: !1704, file: !87, line: 96, type: !111)
!1709 = !DILocation(line: 96, column: 45, scope: !1704)
!1710 = !DILocation(line: 98, column: 25, scope: !1704)
!1711 = !DILocation(line: 98, column: 28, scope: !1704)
!1712 = !DILocation(line: 98, column: 9, scope: !1704)
!1713 = !DILocation(line: 98, column: 2, scope: !1704)
!1714 = distinct !DISubprogram(name: "big_heap_chunks", scope: !87, file: !87, line: 80, type: !1715, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1717)
!1715 = !DISubroutineType(types: !1716)
!1716 = !{!513, !676}
!1717 = !{!1718}
!1718 = !DILocalVariable(name: "chunks", arg: 1, scope: !1714, file: !87, line: 80, type: !676)
!1719 = !DILocation(line: 80, column: 47, scope: !1714)
!1720 = !DILocation(line: 83, column: 3, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1722, file: !87, line: 82, column: 9)
!1722 = distinct !DILexicalBlock(scope: !1714, file: !87, line: 82, column: 6)
!1723 = distinct !DISubprogram(name: "left_chunk", scope: !87, file: !87, line: 199, type: !1180, scopeLine: 200, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1724)
!1724 = !{!1725, !1726}
!1725 = !DILocalVariable(name: "h", arg: 1, scope: !1723, file: !87, line: 199, type: !111)
!1726 = !DILocalVariable(name: "c", arg: 2, scope: !1723, file: !87, line: 199, type: !116)
!1727 = !DILocation(line: 199, column: 51, scope: !1723)
!1728 = !DILocation(line: 199, column: 64, scope: !1723)
!1729 = !DILocation(line: 201, column: 9, scope: !1723)
!1730 = !DILocation(line: 201, column: 25, scope: !1723)
!1731 = !DILocation(line: 201, column: 28, scope: !1723)
!1732 = !DILocation(line: 201, column: 13, scope: !1723)
!1733 = !DILocation(line: 201, column: 11, scope: !1723)
!1734 = !DILocation(line: 201, column: 2, scope: !1723)
!1735 = distinct !DISubprogram(name: "chunk_field", scope: !87, file: !87, line: 107, type: !1736, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1738)
!1736 = !DISubroutineType(types: !1737)
!1737 = !{!116, !111, !116, !86}
!1738 = !{!1739, !1740, !1741, !1742, !1743}
!1739 = !DILocalVariable(name: "h", arg: 1, scope: !1735, file: !87, line: 107, type: !111)
!1740 = !DILocalVariable(name: "c", arg: 2, scope: !1735, file: !87, line: 107, type: !116)
!1741 = !DILocalVariable(name: "f", arg: 3, scope: !1735, file: !87, line: 108, type: !86)
!1742 = !DILocalVariable(name: "buf", scope: !1735, file: !87, line: 110, type: !101)
!1743 = !DILocalVariable(name: "cmem", scope: !1735, file: !87, line: 111, type: !129)
!1744 = !DILocation(line: 107, column: 52, scope: !1735)
!1745 = !DILocation(line: 107, column: 65, scope: !1735)
!1746 = !DILocation(line: 108, column: 27, scope: !1735)
!1747 = !DILocation(line: 110, column: 2, scope: !1735)
!1748 = !DILocation(line: 110, column: 16, scope: !1735)
!1749 = !DILocation(line: 110, column: 32, scope: !1735)
!1750 = !DILocation(line: 110, column: 22, scope: !1735)
!1751 = !DILocation(line: 111, column: 2, scope: !1735)
!1752 = !DILocation(line: 111, column: 8, scope: !1735)
!1753 = !DILocation(line: 111, column: 16, scope: !1735)
!1754 = !DILocation(line: 111, column: 20, scope: !1735)
!1755 = !DILocation(line: 113, column: 15, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1735, file: !87, line: 113, column: 6)
!1757 = !DILocation(line: 113, column: 6, scope: !1756)
!1758 = !DILocation(line: 113, column: 6, scope: !1735)
!1759 = !DILocation(line: 114, column: 23, scope: !1760)
!1760 = distinct !DILexicalBlock(scope: !1756, file: !87, line: 113, column: 19)
!1761 = !DILocation(line: 114, column: 29, scope: !1760)
!1762 = !DILocation(line: 114, column: 10, scope: !1760)
!1763 = !DILocation(line: 114, column: 3, scope: !1760)
!1764 = !DILocation(line: 116, column: 23, scope: !1765)
!1765 = distinct !DILexicalBlock(scope: !1756, file: !87, line: 115, column: 9)
!1766 = !DILocation(line: 116, column: 29, scope: !1765)
!1767 = !DILocation(line: 116, column: 10, scope: !1765)
!1768 = !DILocation(line: 116, column: 3, scope: !1765)
!1769 = !DILocation(line: 118, column: 1, scope: !1735)
!1770 = distinct !DISubprogram(name: "free_list_remove_bidx", scope: !452, file: !452, line: 34, type: !1771, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1773)
!1771 = !DISubroutineType(types: !1772)
!1772 = !{null, !111, !116, !130}
!1773 = !{!1774, !1775, !1776, !1777, !1778, !1781}
!1774 = !DILocalVariable(name: "h", arg: 1, scope: !1770, file: !452, line: 34, type: !111)
!1775 = !DILocalVariable(name: "c", arg: 2, scope: !1770, file: !452, line: 34, type: !116)
!1776 = !DILocalVariable(name: "bidx", arg: 3, scope: !1770, file: !452, line: 34, type: !130)
!1777 = !DILocalVariable(name: "b", scope: !1770, file: !452, line: 36, type: !797)
!1778 = !DILocalVariable(name: "first", scope: !1779, file: !452, line: 47, type: !116)
!1779 = distinct !DILexicalBlock(scope: !1780, file: !452, line: 46, column: 9)
!1780 = distinct !DILexicalBlock(scope: !1770, file: !452, line: 42, column: 6)
!1781 = !DILocalVariable(name: "second", scope: !1779, file: !452, line: 48, type: !116)
!1782 = !DILocation(line: 34, column: 50, scope: !1770)
!1783 = !DILocation(line: 34, column: 63, scope: !1770)
!1784 = !DILocation(line: 34, column: 70, scope: !1770)
!1785 = !DILocation(line: 36, column: 2, scope: !1770)
!1786 = !DILocation(line: 36, column: 24, scope: !1770)
!1787 = !DILocation(line: 36, column: 29, scope: !1770)
!1788 = !DILocation(line: 36, column: 32, scope: !1770)
!1789 = !DILocation(line: 36, column: 40, scope: !1770)
!1790 = !DILocation(line: 42, column: 22, scope: !1780)
!1791 = !DILocation(line: 42, column: 25, scope: !1780)
!1792 = !DILocation(line: 42, column: 6, scope: !1780)
!1793 = !DILocation(line: 42, column: 31, scope: !1780)
!1794 = !DILocation(line: 42, column: 28, scope: !1780)
!1795 = !DILocation(line: 42, column: 6, scope: !1770)
!1796 = !DILocation(line: 44, column: 33, scope: !1797)
!1797 = distinct !DILexicalBlock(scope: !1780, file: !452, line: 42, column: 34)
!1798 = !DILocation(line: 44, column: 29, scope: !1797)
!1799 = !DILocation(line: 44, column: 23, scope: !1797)
!1800 = !DILocation(line: 44, column: 3, scope: !1797)
!1801 = !DILocation(line: 44, column: 6, scope: !1797)
!1802 = !DILocation(line: 44, column: 20, scope: !1797)
!1803 = !DILocation(line: 45, column: 3, scope: !1797)
!1804 = !DILocation(line: 45, column: 6, scope: !1797)
!1805 = !DILocation(line: 45, column: 11, scope: !1797)
!1806 = !DILocation(line: 46, column: 2, scope: !1797)
!1807 = !DILocation(line: 47, column: 3, scope: !1779)
!1808 = !DILocation(line: 47, column: 13, scope: !1779)
!1809 = !DILocation(line: 47, column: 37, scope: !1779)
!1810 = !DILocation(line: 47, column: 40, scope: !1779)
!1811 = !DILocation(line: 47, column: 21, scope: !1779)
!1812 = !DILocation(line: 48, column: 6, scope: !1779)
!1813 = !DILocation(line: 48, column: 31, scope: !1779)
!1814 = !DILocation(line: 48, column: 34, scope: !1779)
!1815 = !DILocation(line: 48, column: 15, scope: !1779)
!1816 = !DILocation(line: 50, column: 13, scope: !1779)
!1817 = !DILocation(line: 50, column: 3, scope: !1779)
!1818 = !DILocation(line: 50, column: 6, scope: !1779)
!1819 = !DILocation(line: 50, column: 11, scope: !1779)
!1820 = !DILocation(line: 51, column: 23, scope: !1779)
!1821 = !DILocation(line: 51, column: 26, scope: !1779)
!1822 = !DILocation(line: 51, column: 33, scope: !1779)
!1823 = !DILocation(line: 51, column: 3, scope: !1779)
!1824 = !DILocation(line: 52, column: 23, scope: !1779)
!1825 = !DILocation(line: 52, column: 26, scope: !1779)
!1826 = !DILocation(line: 52, column: 34, scope: !1779)
!1827 = !DILocation(line: 52, column: 3, scope: !1779)
!1828 = !DILocation(line: 53, column: 2, scope: !1780)
!1829 = !DILocation(line: 58, column: 1, scope: !1770)
!1830 = distinct !DISubprogram(name: "next_free_chunk", scope: !87, file: !87, line: 182, type: !1180, scopeLine: 183, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1831)
!1831 = !{!1832, !1833}
!1832 = !DILocalVariable(name: "h", arg: 1, scope: !1830, file: !87, line: 182, type: !111)
!1833 = !DILocalVariable(name: "c", arg: 2, scope: !1830, file: !87, line: 182, type: !116)
!1834 = !DILocation(line: 182, column: 56, scope: !1830)
!1835 = !DILocation(line: 182, column: 69, scope: !1830)
!1836 = !DILocation(line: 184, column: 21, scope: !1830)
!1837 = !DILocation(line: 184, column: 24, scope: !1830)
!1838 = !DILocation(line: 184, column: 9, scope: !1830)
!1839 = !DILocation(line: 184, column: 2, scope: !1830)
!1840 = distinct !DISubprogram(name: "prev_free_chunk", scope: !87, file: !87, line: 177, type: !1180, scopeLine: 178, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1841)
!1841 = !{!1842, !1843}
!1842 = !DILocalVariable(name: "h", arg: 1, scope: !1840, file: !87, line: 177, type: !111)
!1843 = !DILocalVariable(name: "c", arg: 2, scope: !1840, file: !87, line: 177, type: !116)
!1844 = !DILocation(line: 177, column: 56, scope: !1840)
!1845 = !DILocation(line: 177, column: 69, scope: !1840)
!1846 = !DILocation(line: 179, column: 21, scope: !1840)
!1847 = !DILocation(line: 179, column: 24, scope: !1840)
!1848 = !DILocation(line: 179, column: 9, scope: !1840)
!1849 = !DILocation(line: 179, column: 2, scope: !1840)
!1850 = distinct !DISubprogram(name: "set_next_free_chunk", scope: !87, file: !87, line: 193, type: !901, scopeLine: 195, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1851)
!1851 = !{!1852, !1853, !1854}
!1852 = !DILocalVariable(name: "h", arg: 1, scope: !1850, file: !87, line: 193, type: !111)
!1853 = !DILocalVariable(name: "c", arg: 2, scope: !1850, file: !87, line: 193, type: !116)
!1854 = !DILocalVariable(name: "next", arg: 3, scope: !1850, file: !87, line: 194, type: !116)
!1855 = !DILocation(line: 193, column: 55, scope: !1850)
!1856 = !DILocation(line: 193, column: 68, scope: !1850)
!1857 = !DILocation(line: 194, column: 22, scope: !1850)
!1858 = !DILocation(line: 196, column: 12, scope: !1850)
!1859 = !DILocation(line: 196, column: 15, scope: !1850)
!1860 = !DILocation(line: 196, column: 29, scope: !1850)
!1861 = !DILocation(line: 196, column: 2, scope: !1850)
!1862 = !DILocation(line: 197, column: 1, scope: !1850)
!1863 = distinct !DISubprogram(name: "set_prev_free_chunk", scope: !87, file: !87, line: 187, type: !901, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1864)
!1864 = !{!1865, !1866, !1867}
!1865 = !DILocalVariable(name: "h", arg: 1, scope: !1863, file: !87, line: 187, type: !111)
!1866 = !DILocalVariable(name: "c", arg: 2, scope: !1863, file: !87, line: 187, type: !116)
!1867 = !DILocalVariable(name: "prev", arg: 3, scope: !1863, file: !87, line: 188, type: !116)
!1868 = !DILocation(line: 187, column: 55, scope: !1863)
!1869 = !DILocation(line: 187, column: 68, scope: !1863)
!1870 = !DILocation(line: 188, column: 22, scope: !1863)
!1871 = !DILocation(line: 190, column: 12, scope: !1863)
!1872 = !DILocation(line: 190, column: 15, scope: !1863)
!1873 = !DILocation(line: 190, column: 29, scope: !1863)
!1874 = !DILocation(line: 190, column: 2, scope: !1863)
!1875 = !DILocation(line: 191, column: 1, scope: !1863)
!1876 = distinct !DISubprogram(name: "chunk_set", scope: !87, file: !87, line: 120, type: !1877, scopeLine: 122, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1879)
!1877 = !DISubroutineType(types: !1878)
!1878 = !{null, !111, !116, !86, !116}
!1879 = !{!1880, !1881, !1882, !1883, !1884, !1885}
!1880 = !DILocalVariable(name: "h", arg: 1, scope: !1876, file: !87, line: 120, type: !111)
!1881 = !DILocalVariable(name: "c", arg: 2, scope: !1876, file: !87, line: 120, type: !116)
!1882 = !DILocalVariable(name: "f", arg: 3, scope: !1876, file: !87, line: 121, type: !86)
!1883 = !DILocalVariable(name: "val", arg: 4, scope: !1876, file: !87, line: 121, type: !116)
!1884 = !DILocalVariable(name: "buf", scope: !1876, file: !87, line: 125, type: !101)
!1885 = !DILocalVariable(name: "cmem", scope: !1876, file: !87, line: 126, type: !129)
!1886 = !DILocation(line: 120, column: 45, scope: !1876)
!1887 = !DILocation(line: 120, column: 58, scope: !1876)
!1888 = !DILocation(line: 121, column: 27, scope: !1876)
!1889 = !DILocation(line: 121, column: 40, scope: !1876)
!1890 = !DILocation(line: 125, column: 2, scope: !1876)
!1891 = !DILocation(line: 125, column: 16, scope: !1876)
!1892 = !DILocation(line: 125, column: 32, scope: !1876)
!1893 = !DILocation(line: 125, column: 22, scope: !1876)
!1894 = !DILocation(line: 126, column: 2, scope: !1876)
!1895 = !DILocation(line: 126, column: 8, scope: !1876)
!1896 = !DILocation(line: 126, column: 16, scope: !1876)
!1897 = !DILocation(line: 126, column: 20, scope: !1876)
!1898 = !DILocation(line: 128, column: 15, scope: !1899)
!1899 = distinct !DILexicalBlock(scope: !1876, file: !87, line: 128, column: 6)
!1900 = !DILocation(line: 128, column: 6, scope: !1899)
!1901 = !DILocation(line: 128, column: 6, scope: !1876)
!1902 = !DILocation(line: 130, column: 27, scope: !1903)
!1903 = distinct !DILexicalBlock(scope: !1899, file: !87, line: 128, column: 19)
!1904 = !DILocation(line: 130, column: 16, scope: !1903)
!1905 = !DILocation(line: 130, column: 22, scope: !1903)
!1906 = !DILocation(line: 130, column: 3, scope: !1903)
!1907 = !DILocation(line: 130, column: 25, scope: !1903)
!1908 = !DILocation(line: 131, column: 2, scope: !1903)
!1909 = !DILocation(line: 133, column: 27, scope: !1910)
!1910 = distinct !DILexicalBlock(scope: !1899, file: !87, line: 131, column: 9)
!1911 = !DILocation(line: 133, column: 16, scope: !1910)
!1912 = !DILocation(line: 133, column: 22, scope: !1910)
!1913 = !DILocation(line: 133, column: 3, scope: !1910)
!1914 = !DILocation(line: 133, column: 25, scope: !1910)
!1915 = !DILocation(line: 135, column: 1, scope: !1876)
!1916 = distinct !DISubprogram(name: "solo_free_header", scope: !87, file: !87, line: 215, type: !1406, scopeLine: 216, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1917)
!1917 = !{!1918, !1919}
!1918 = !DILocalVariable(name: "h", arg: 1, scope: !1916, file: !87, line: 215, type: !111)
!1919 = !DILocalVariable(name: "c", arg: 2, scope: !1916, file: !87, line: 215, type: !116)
!1920 = !DILocation(line: 215, column: 53, scope: !1916)
!1921 = !DILocation(line: 215, column: 66, scope: !1916)
!1922 = !DILocation(line: 217, column: 18, scope: !1916)
!1923 = !DILocation(line: 217, column: 9, scope: !1916)
!1924 = !DILocation(line: 217, column: 21, scope: !1916)
!1925 = !DILocation(line: 217, column: 35, scope: !1916)
!1926 = !DILocation(line: 217, column: 38, scope: !1916)
!1927 = !DILocation(line: 217, column: 24, scope: !1916)
!1928 = !DILocation(line: 217, column: 41, scope: !1916)
!1929 = !DILocation(line: 0, scope: !1916)
!1930 = !DILocation(line: 217, column: 2, scope: !1916)
!1931 = distinct !DISubprogram(name: "free_list_add_bidx", scope: !452, file: !452, line: 68, type: !1771, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1932)
!1932 = !{!1933, !1934, !1935, !1936, !1937, !1940}
!1933 = !DILocalVariable(name: "h", arg: 1, scope: !1931, file: !452, line: 68, type: !111)
!1934 = !DILocalVariable(name: "c", arg: 2, scope: !1931, file: !452, line: 68, type: !116)
!1935 = !DILocalVariable(name: "bidx", arg: 3, scope: !1931, file: !452, line: 68, type: !130)
!1936 = !DILocalVariable(name: "b", scope: !1931, file: !452, line: 70, type: !797)
!1937 = !DILocalVariable(name: "second", scope: !1938, file: !452, line: 84, type: !116)
!1938 = distinct !DILexicalBlock(scope: !1939, file: !452, line: 80, column: 9)
!1939 = distinct !DILexicalBlock(scope: !1931, file: !452, line: 72, column: 6)
!1940 = !DILocalVariable(name: "first", scope: !1938, file: !452, line: 85, type: !116)
!1941 = !DILocation(line: 68, column: 47, scope: !1931)
!1942 = !DILocation(line: 68, column: 60, scope: !1931)
!1943 = !DILocation(line: 68, column: 67, scope: !1931)
!1944 = !DILocation(line: 70, column: 2, scope: !1931)
!1945 = !DILocation(line: 70, column: 24, scope: !1931)
!1946 = !DILocation(line: 70, column: 29, scope: !1931)
!1947 = !DILocation(line: 70, column: 32, scope: !1931)
!1948 = !DILocation(line: 70, column: 40, scope: !1931)
!1949 = !DILocation(line: 72, column: 6, scope: !1939)
!1950 = !DILocation(line: 72, column: 9, scope: !1939)
!1951 = !DILocation(line: 72, column: 14, scope: !1939)
!1952 = !DILocation(line: 72, column: 6, scope: !1931)
!1953 = !DILocation(line: 76, column: 32, scope: !1954)
!1954 = distinct !DILexicalBlock(scope: !1939, file: !452, line: 72, column: 21)
!1955 = !DILocation(line: 76, column: 28, scope: !1954)
!1956 = !DILocation(line: 76, column: 3, scope: !1954)
!1957 = !DILocation(line: 76, column: 6, scope: !1954)
!1958 = !DILocation(line: 76, column: 20, scope: !1954)
!1959 = !DILocation(line: 77, column: 13, scope: !1954)
!1960 = !DILocation(line: 77, column: 3, scope: !1954)
!1961 = !DILocation(line: 77, column: 6, scope: !1954)
!1962 = !DILocation(line: 77, column: 11, scope: !1954)
!1963 = !DILocation(line: 78, column: 23, scope: !1954)
!1964 = !DILocation(line: 78, column: 26, scope: !1954)
!1965 = !DILocation(line: 78, column: 29, scope: !1954)
!1966 = !DILocation(line: 78, column: 3, scope: !1954)
!1967 = !DILocation(line: 79, column: 23, scope: !1954)
!1968 = !DILocation(line: 79, column: 26, scope: !1954)
!1969 = !DILocation(line: 79, column: 29, scope: !1954)
!1970 = !DILocation(line: 79, column: 3, scope: !1954)
!1971 = !DILocation(line: 80, column: 2, scope: !1954)
!1972 = !DILocation(line: 84, column: 3, scope: !1938)
!1973 = !DILocation(line: 84, column: 13, scope: !1938)
!1974 = !DILocation(line: 84, column: 22, scope: !1938)
!1975 = !DILocation(line: 84, column: 25, scope: !1938)
!1976 = !DILocation(line: 85, column: 3, scope: !1938)
!1977 = !DILocation(line: 85, column: 13, scope: !1938)
!1978 = !DILocation(line: 85, column: 37, scope: !1938)
!1979 = !DILocation(line: 85, column: 40, scope: !1938)
!1980 = !DILocation(line: 85, column: 21, scope: !1938)
!1981 = !DILocation(line: 87, column: 23, scope: !1938)
!1982 = !DILocation(line: 87, column: 26, scope: !1938)
!1983 = !DILocation(line: 87, column: 29, scope: !1938)
!1984 = !DILocation(line: 87, column: 3, scope: !1938)
!1985 = !DILocation(line: 88, column: 23, scope: !1938)
!1986 = !DILocation(line: 88, column: 26, scope: !1938)
!1987 = !DILocation(line: 88, column: 29, scope: !1938)
!1988 = !DILocation(line: 88, column: 3, scope: !1938)
!1989 = !DILocation(line: 89, column: 23, scope: !1938)
!1990 = !DILocation(line: 89, column: 26, scope: !1938)
!1991 = !DILocation(line: 89, column: 33, scope: !1938)
!1992 = !DILocation(line: 89, column: 3, scope: !1938)
!1993 = !DILocation(line: 90, column: 23, scope: !1938)
!1994 = !DILocation(line: 90, column: 26, scope: !1938)
!1995 = !DILocation(line: 90, column: 34, scope: !1938)
!1996 = !DILocation(line: 90, column: 3, scope: !1938)
!1997 = !DILocation(line: 91, column: 2, scope: !1939)
!1998 = !DILocation(line: 96, column: 1, scope: !1931)
!1999 = distinct !DISubprogram(name: "big_heap_bytes", scope: !87, file: !87, line: 91, type: !2000, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2002)
!2000 = !DISubroutineType(types: !2001)
!2001 = !{!513, !94}
!2002 = !{!2003}
!2003 = !DILocalVariable(name: "bytes", arg: 1, scope: !1999, file: !87, line: 91, type: !94)
!2004 = !DILocation(line: 91, column: 43, scope: !1999)
!2005 = !DILocation(line: 93, column: 25, scope: !1999)
!2006 = !DILocation(line: 93, column: 31, scope: !1999)
!2007 = !DILocation(line: 93, column: 9, scope: !1999)
!2008 = !DILocation(line: 93, column: 2, scope: !1999)
!2009 = distinct !DISubprogram(name: "min_chunk_size", scope: !87, file: !87, line: 240, type: !2010, scopeLine: 241, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2012)
!2010 = !DISubroutineType(types: !2011)
!2011 = !{!676, !111}
!2012 = !{!2013}
!2013 = !DILocalVariable(name: "h", arg: 1, scope: !2009, file: !87, line: 240, type: !111)
!2014 = !DILocation(line: 240, column: 55, scope: !2009)
!2015 = !DILocation(line: 242, column: 26, scope: !2009)
!2016 = !DILocation(line: 242, column: 9, scope: !2009)
!2017 = !DILocation(line: 242, column: 2, scope: !2009)
