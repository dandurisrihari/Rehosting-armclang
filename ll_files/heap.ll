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

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_k_object_access_grant(ptr noundef %0, ptr noundef %1) #0 !dbg !144 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !258, metadata !DIExpression()), !dbg !259
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !260, metadata !DIExpression()), !dbg !261
  %5 = load ptr, ptr %3, align 4, !dbg !262
  %6 = load ptr, ptr %4, align 4, !dbg !263
  ret void, !dbg !264
}

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_k_object_release(ptr noundef %0) #0 !dbg !265 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !268, metadata !DIExpression()), !dbg !269
  %3 = load ptr, ptr %2, align 4, !dbg !270
  ret void, !dbg !271
}

; Function Attrs: noinline nounwind optnone
define internal ptr @z_impl_k_object_alloc(i8 noundef zeroext %0) #0 !dbg !272 {
  %2 = alloca i8, align 1
  store i8 %0, ptr %2, align 1
  call void @llvm.dbg.declare(metadata ptr %2, metadata !275, metadata !DIExpression()), !dbg !276
  %3 = load i8, ptr %2, align 1, !dbg !277
  ret ptr null, !dbg !278
}

; Function Attrs: noinline nounwind optnone
define internal ptr @z_impl_k_object_alloc_size(i8 noundef zeroext %0, i32 noundef %1) #0 !dbg !279 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8 %0, ptr %3, align 1
  call void @llvm.dbg.declare(metadata ptr %3, metadata !282, metadata !DIExpression()), !dbg !283
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !284, metadata !DIExpression()), !dbg !285
  %5 = load i8, ptr %3, align 1, !dbg !286
  %6 = load i32, ptr %4, align 4, !dbg !287
  ret ptr null, !dbg !288
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_thread_timeout_expires_ticks(ptr noundef %0) #0 !dbg !289 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !296, metadata !DIExpression()), !dbg !297
  %3 = load ptr, ptr %2, align 4, !dbg !298
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !299
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !300
  %6 = call i64 @z_timeout_expires(ptr noundef %5), !dbg !301
  ret i64 %6, !dbg !302
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_thread_timeout_remaining_ticks(ptr noundef %0) #0 !dbg !303 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !304, metadata !DIExpression()), !dbg !305
  %3 = load ptr, ptr %2, align 4, !dbg !306
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !307
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !308
  %6 = call i64 @z_timeout_remaining(ptr noundef %5), !dbg !309
  ret i64 %6, !dbg !310
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_timer_expires_ticks(ptr noundef %0) #0 !dbg !311 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !333, metadata !DIExpression()), !dbg !334
  %3 = load ptr, ptr %2, align 4, !dbg !335
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !336
  %5 = call i64 @z_timeout_expires(ptr noundef %4), !dbg !337
  ret i64 %5, !dbg !338
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_timer_remaining_ticks(ptr noundef %0) #0 !dbg !339 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !340, metadata !DIExpression()), !dbg !341
  %3 = load ptr, ptr %2, align 4, !dbg !342
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !343
  %5 = call i64 @z_timeout_remaining(ptr noundef %4), !dbg !344
  ret i64 %5, !dbg !345
}

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_k_timer_user_data_set(ptr noundef %0, ptr noundef %1) #0 !dbg !346 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !349, metadata !DIExpression()), !dbg !350
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !351, metadata !DIExpression()), !dbg !352
  %5 = load ptr, ptr %4, align 4, !dbg !353
  %6 = load ptr, ptr %3, align 4, !dbg !354
  %7 = getelementptr inbounds %struct.k_timer, ptr %6, i32 0, i32 6, !dbg !355
  store ptr %5, ptr %7, align 4, !dbg !356
  ret void, !dbg !357
}

; Function Attrs: noinline nounwind optnone
define internal ptr @z_impl_k_timer_user_data_get(ptr noundef %0) #0 !dbg !358 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !361, metadata !DIExpression()), !dbg !362
  %3 = load ptr, ptr %2, align 4, !dbg !363
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 6, !dbg !364
  %5 = load ptr, ptr %4, align 4, !dbg !364
  ret ptr %5, !dbg !365
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_queue_is_empty(ptr noundef %0) #0 !dbg !366 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !387, metadata !DIExpression()), !dbg !388
  %3 = load ptr, ptr %2, align 4, !dbg !389
  %4 = getelementptr inbounds %struct.k_queue, ptr %3, i32 0, i32 0, !dbg !390
  %5 = call zeroext i1 @sys_sflist_is_empty(ptr noundef %4), !dbg !391
  %6 = zext i1 %5 to i32, !dbg !392
  ret i32 %6, !dbg !393
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_sem_count_get(ptr noundef %0) #0 !dbg !394 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !403, metadata !DIExpression()), !dbg !404
  %3 = load ptr, ptr %2, align 4, !dbg !405
  %4 = getelementptr inbounds %struct.k_sem, ptr %3, i32 0, i32 1, !dbg !406
  %5 = load i32, ptr %4, align 4, !dbg !406
  ret i32 %5, !dbg !407
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_msgq_num_free_get(ptr noundef %0) #0 !dbg !408 {
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

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_msgq_num_used_get(ptr noundef %0) #0 !dbg !433 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !434, metadata !DIExpression()), !dbg !435
  %3 = load ptr, ptr %2, align 4, !dbg !436
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 8, !dbg !437
  %5 = load i32, ptr %4, align 4, !dbg !437
  ret i32 %5, !dbg !438
}

; Function Attrs: noinline nounwind optnone
define hidden void @sys_heap_free(ptr noundef %0, ptr noundef %1) #0 !dbg !439 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !444, metadata !DIExpression()), !dbg !445
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !446, metadata !DIExpression()), !dbg !447
  %7 = load ptr, ptr %4, align 4, !dbg !448
  %8 = icmp eq ptr %7, null, !dbg !450
  br i1 %8, label %9, label %10, !dbg !451

9:                                                ; preds = %2
  br label %21, !dbg !452

10:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata ptr %5, metadata !454, metadata !DIExpression()), !dbg !455
  %11 = load ptr, ptr %3, align 4, !dbg !456
  %12 = getelementptr inbounds %struct.sys_heap, ptr %11, i32 0, i32 0, !dbg !457
  %13 = load ptr, ptr %12, align 4, !dbg !457
  store ptr %13, ptr %5, align 4, !dbg !455
  call void @llvm.dbg.declare(metadata ptr %6, metadata !458, metadata !DIExpression()), !dbg !459
  %14 = load ptr, ptr %5, align 4, !dbg !460
  %15 = load ptr, ptr %4, align 4, !dbg !461
  %16 = call i32 @mem_to_chunkid(ptr noundef %14, ptr noundef %15), !dbg !462
  store i32 %16, ptr %6, align 4, !dbg !459
  %17 = load ptr, ptr %5, align 4, !dbg !463
  %18 = load i32, ptr %6, align 4, !dbg !464
  call void @set_chunk_used(ptr noundef %17, i32 noundef %18, i1 noundef zeroext false), !dbg !465
  %19 = load ptr, ptr %5, align 4, !dbg !466
  %20 = load i32, ptr %6, align 4, !dbg !467
  call void @free_chunk(ptr noundef %19, i32 noundef %20), !dbg !468
  br label %21, !dbg !469

21:                                               ; preds = %10, %9
  ret void, !dbg !469
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone
define internal i32 @mem_to_chunkid(ptr noundef %0, ptr noundef %1) #0 !dbg !470 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !473, metadata !DIExpression()), !dbg !474
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !475, metadata !DIExpression()), !dbg !476
  call void @llvm.dbg.declare(metadata ptr %5, metadata !477, metadata !DIExpression()), !dbg !478
  %7 = load ptr, ptr %4, align 4, !dbg !479
  store ptr %7, ptr %5, align 4, !dbg !478
  call void @llvm.dbg.declare(metadata ptr %6, metadata !480, metadata !DIExpression()), !dbg !481
  %8 = load ptr, ptr %3, align 4, !dbg !482
  %9 = call ptr @chunk_buf(ptr noundef %8), !dbg !483
  store ptr %9, ptr %6, align 4, !dbg !481
  %10 = load ptr, ptr %5, align 4, !dbg !484
  %11 = load ptr, ptr %3, align 4, !dbg !485
  %12 = call i32 @chunk_header_bytes(ptr noundef %11), !dbg !486
  %13 = sub i32 0, %12, !dbg !487
  %14 = getelementptr inbounds i8, ptr %10, i32 %13, !dbg !487
  %15 = load ptr, ptr %6, align 4, !dbg !488
  %16 = ptrtoint ptr %14 to i32, !dbg !489
  %17 = ptrtoint ptr %15 to i32, !dbg !489
  %18 = sub i32 %16, %17, !dbg !489
  %19 = udiv i32 %18, 8, !dbg !490
  ret i32 %19, !dbg !491
}

; Function Attrs: noinline nounwind optnone
define internal void @set_chunk_used(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) #0 !dbg !492 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !496, metadata !DIExpression()), !dbg !497
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !498, metadata !DIExpression()), !dbg !499
  %9 = zext i1 %2 to i8
  store i8 %9, ptr %6, align 1
  call void @llvm.dbg.declare(metadata ptr %6, metadata !500, metadata !DIExpression()), !dbg !501
  call void @llvm.dbg.declare(metadata ptr %7, metadata !502, metadata !DIExpression()), !dbg !503
  %10 = load ptr, ptr %4, align 4, !dbg !504
  %11 = call ptr @chunk_buf(ptr noundef %10), !dbg !505
  store ptr %11, ptr %7, align 4, !dbg !503
  call void @llvm.dbg.declare(metadata ptr %8, metadata !506, metadata !DIExpression()), !dbg !507
  %12 = load ptr, ptr %7, align 4, !dbg !508
  %13 = load i32, ptr %5, align 4, !dbg !509
  %14 = getelementptr inbounds %struct.chunk_unit_t, ptr %12, i32 %13, !dbg !508
  store ptr %14, ptr %8, align 4, !dbg !507
  %15 = load ptr, ptr %4, align 4, !dbg !510
  %16 = call zeroext i1 @big_heap(ptr noundef %15), !dbg !512
  br i1 %16, label %17, label %31, !dbg !513

17:                                               ; preds = %3
  %18 = load i8, ptr %6, align 1, !dbg !514
  %19 = trunc i8 %18 to i1, !dbg !514
  br i1 %19, label %20, label %25, !dbg !517

20:                                               ; preds = %17
  %21 = load ptr, ptr %8, align 4, !dbg !518
  %22 = getelementptr inbounds i32, ptr %21, i32 1, !dbg !520
  %23 = load i32, ptr %22, align 4, !dbg !521
  %24 = or i32 %23, 1, !dbg !521
  store i32 %24, ptr %22, align 4, !dbg !521
  br label %30, !dbg !522

25:                                               ; preds = %17
  %26 = load ptr, ptr %8, align 4, !dbg !523
  %27 = getelementptr inbounds i32, ptr %26, i32 1, !dbg !525
  %28 = load i32, ptr %27, align 4, !dbg !526
  %29 = and i32 %28, -2, !dbg !526
  store i32 %29, ptr %27, align 4, !dbg !526
  br label %30

30:                                               ; preds = %25, %20
  br label %49, !dbg !527

31:                                               ; preds = %3
  %32 = load i8, ptr %6, align 1, !dbg !528
  %33 = trunc i8 %32 to i1, !dbg !528
  br i1 %33, label %34, label %41, !dbg !531

34:                                               ; preds = %31
  %35 = load ptr, ptr %8, align 4, !dbg !532
  %36 = getelementptr inbounds i16, ptr %35, i32 1, !dbg !534
  %37 = load i16, ptr %36, align 2, !dbg !535
  %38 = zext i16 %37 to i32, !dbg !535
  %39 = or i32 %38, 1, !dbg !535
  %40 = trunc i32 %39 to i16, !dbg !535
  store i16 %40, ptr %36, align 2, !dbg !535
  br label %48, !dbg !536

41:                                               ; preds = %31
  %42 = load ptr, ptr %8, align 4, !dbg !537
  %43 = getelementptr inbounds i16, ptr %42, i32 1, !dbg !539
  %44 = load i16, ptr %43, align 2, !dbg !540
  %45 = zext i16 %44 to i32, !dbg !540
  %46 = and i32 %45, -2, !dbg !540
  %47 = trunc i32 %46 to i16, !dbg !540
  store i16 %47, ptr %43, align 2, !dbg !540
  br label %48

48:                                               ; preds = %41, %34
  br label %49

49:                                               ; preds = %48, %30
  ret void, !dbg !541
}

; Function Attrs: noinline nounwind optnone
define internal void @free_chunk(ptr noundef %0, i32 noundef %1) #0 !dbg !542 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !545, metadata !DIExpression()), !dbg !546
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !547, metadata !DIExpression()), !dbg !548
  %5 = load ptr, ptr %3, align 4, !dbg !549
  %6 = load ptr, ptr %3, align 4, !dbg !551
  %7 = load i32, ptr %4, align 4, !dbg !552
  %8 = call i32 @right_chunk(ptr noundef %6, i32 noundef %7), !dbg !553
  %9 = call zeroext i1 @chunk_used(ptr noundef %5, i32 noundef %8), !dbg !554
  br i1 %9, label %20, label %10, !dbg !555

10:                                               ; preds = %2
  %11 = load ptr, ptr %3, align 4, !dbg !556
  %12 = load ptr, ptr %3, align 4, !dbg !558
  %13 = load i32, ptr %4, align 4, !dbg !559
  %14 = call i32 @right_chunk(ptr noundef %12, i32 noundef %13), !dbg !560
  call void @free_list_remove(ptr noundef %11, i32 noundef %14), !dbg !561
  %15 = load ptr, ptr %3, align 4, !dbg !562
  %16 = load i32, ptr %4, align 4, !dbg !563
  %17 = load ptr, ptr %3, align 4, !dbg !564
  %18 = load i32, ptr %4, align 4, !dbg !565
  %19 = call i32 @right_chunk(ptr noundef %17, i32 noundef %18), !dbg !566
  call void @merge_chunks(ptr noundef %15, i32 noundef %16, i32 noundef %19), !dbg !567
  br label %20, !dbg !568

20:                                               ; preds = %10, %2
  %21 = load ptr, ptr %3, align 4, !dbg !569
  %22 = load ptr, ptr %3, align 4, !dbg !571
  %23 = load i32, ptr %4, align 4, !dbg !572
  %24 = call i32 @left_chunk(ptr noundef %22, i32 noundef %23), !dbg !573
  %25 = call zeroext i1 @chunk_used(ptr noundef %21, i32 noundef %24), !dbg !574
  br i1 %25, label %39, label %26, !dbg !575

26:                                               ; preds = %20
  %27 = load ptr, ptr %3, align 4, !dbg !576
  %28 = load ptr, ptr %3, align 4, !dbg !578
  %29 = load i32, ptr %4, align 4, !dbg !579
  %30 = call i32 @left_chunk(ptr noundef %28, i32 noundef %29), !dbg !580
  call void @free_list_remove(ptr noundef %27, i32 noundef %30), !dbg !581
  %31 = load ptr, ptr %3, align 4, !dbg !582
  %32 = load ptr, ptr %3, align 4, !dbg !583
  %33 = load i32, ptr %4, align 4, !dbg !584
  %34 = call i32 @left_chunk(ptr noundef %32, i32 noundef %33), !dbg !585
  %35 = load i32, ptr %4, align 4, !dbg !586
  call void @merge_chunks(ptr noundef %31, i32 noundef %34, i32 noundef %35), !dbg !587
  %36 = load ptr, ptr %3, align 4, !dbg !588
  %37 = load i32, ptr %4, align 4, !dbg !589
  %38 = call i32 @left_chunk(ptr noundef %36, i32 noundef %37), !dbg !590
  store i32 %38, ptr %4, align 4, !dbg !591
  br label %39, !dbg !592

39:                                               ; preds = %26, %20
  %40 = load ptr, ptr %3, align 4, !dbg !593
  %41 = load i32, ptr %4, align 4, !dbg !594
  call void @free_list_add(ptr noundef %40, i32 noundef %41), !dbg !595
  ret void, !dbg !596
}

; Function Attrs: noinline nounwind optnone
define hidden i32 @sys_heap_usable_size(ptr noundef %0, ptr noundef %1) #0 !dbg !597 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !600, metadata !DIExpression()), !dbg !601
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !602, metadata !DIExpression()), !dbg !603
  call void @llvm.dbg.declare(metadata ptr %5, metadata !604, metadata !DIExpression()), !dbg !605
  %10 = load ptr, ptr %3, align 4, !dbg !606
  %11 = getelementptr inbounds %struct.sys_heap, ptr %10, i32 0, i32 0, !dbg !607
  %12 = load ptr, ptr %11, align 4, !dbg !607
  store ptr %12, ptr %5, align 4, !dbg !605
  call void @llvm.dbg.declare(metadata ptr %6, metadata !608, metadata !DIExpression()), !dbg !609
  %13 = load ptr, ptr %5, align 4, !dbg !610
  %14 = load ptr, ptr %4, align 4, !dbg !611
  %15 = call i32 @mem_to_chunkid(ptr noundef %13, ptr noundef %14), !dbg !612
  store i32 %15, ptr %6, align 4, !dbg !609
  call void @llvm.dbg.declare(metadata ptr %7, metadata !613, metadata !DIExpression()), !dbg !614
  %16 = load ptr, ptr %4, align 4, !dbg !615
  %17 = ptrtoint ptr %16 to i32, !dbg !616
  store i32 %17, ptr %7, align 4, !dbg !614
  call void @llvm.dbg.declare(metadata ptr %8, metadata !617, metadata !DIExpression()), !dbg !618
  %18 = load ptr, ptr %5, align 4, !dbg !619
  %19 = call ptr @chunk_buf(ptr noundef %18), !dbg !620
  %20 = load i32, ptr %6, align 4, !dbg !621
  %21 = getelementptr inbounds %struct.chunk_unit_t, ptr %19, i32 %20, !dbg !620
  %22 = ptrtoint ptr %21 to i32, !dbg !622
  store i32 %22, ptr %8, align 4, !dbg !618
  call void @llvm.dbg.declare(metadata ptr %9, metadata !623, metadata !DIExpression()), !dbg !624
  %23 = load ptr, ptr %5, align 4, !dbg !625
  %24 = load i32, ptr %6, align 4, !dbg !626
  %25 = call i32 @chunk_size(ptr noundef %23, i32 noundef %24), !dbg !627
  %26 = mul i32 %25, 8, !dbg !628
  store i32 %26, ptr %9, align 4, !dbg !624
  %27 = load i32, ptr %9, align 4, !dbg !629
  %28 = load i32, ptr %7, align 4, !dbg !630
  %29 = load i32, ptr %8, align 4, !dbg !631
  %30 = sub i32 %28, %29, !dbg !632
  %31 = sub i32 %27, %30, !dbg !633
  ret i32 %31, !dbg !634
}

; Function Attrs: noinline nounwind optnone
define internal ptr @chunk_buf(ptr noundef %0) #0 !dbg !635 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !638, metadata !DIExpression()), !dbg !639
  %3 = load ptr, ptr %2, align 4, !dbg !640
  ret ptr %3, !dbg !641
}

; Function Attrs: noinline nounwind optnone
define internal i32 @chunk_size(ptr noundef %0, i32 noundef %1) #0 !dbg !642 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !646, metadata !DIExpression()), !dbg !647
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !648, metadata !DIExpression()), !dbg !649
  %5 = load ptr, ptr %3, align 4, !dbg !650
  %6 = load i32, ptr %4, align 4, !dbg !651
  %7 = call i32 @chunk_field(ptr noundef %5, i32 noundef %6, i8 noundef zeroext 1), !dbg !652
  %8 = lshr i32 %7, 1, !dbg !653
  ret i32 %8, !dbg !654
}

; Function Attrs: noinline nounwind optnone
define hidden ptr @sys_heap_alloc(ptr noundef %0, i32 noundef %1) #0 !dbg !655 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !658, metadata !DIExpression()), !dbg !659
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !660, metadata !DIExpression()), !dbg !661
  call void @llvm.dbg.declare(metadata ptr %6, metadata !662, metadata !DIExpression()), !dbg !663
  %10 = load ptr, ptr %4, align 4, !dbg !664
  %11 = getelementptr inbounds %struct.sys_heap, ptr %10, i32 0, i32 0, !dbg !665
  %12 = load ptr, ptr %11, align 4, !dbg !665
  store ptr %12, ptr %6, align 4, !dbg !663
  call void @llvm.dbg.declare(metadata ptr %7, metadata !666, metadata !DIExpression()), !dbg !667
  %13 = load i32, ptr %5, align 4, !dbg !668
  %14 = icmp eq i32 %13, 0, !dbg !670
  br i1 %14, label %19, label %15, !dbg !671

15:                                               ; preds = %2
  %16 = load ptr, ptr %6, align 4, !dbg !672
  %17 = load i32, ptr %5, align 4, !dbg !673
  %18 = call zeroext i1 @size_too_big(ptr noundef %16, i32 noundef %17), !dbg !674
  br i1 %18, label %19, label %20, !dbg !675

19:                                               ; preds = %15, %2
  store ptr null, ptr %3, align 4, !dbg !676
  br label %53, !dbg !676

20:                                               ; preds = %15
  call void @llvm.dbg.declare(metadata ptr %8, metadata !678, metadata !DIExpression()), !dbg !679
  %21 = load ptr, ptr %6, align 4, !dbg !680
  %22 = load i32, ptr %5, align 4, !dbg !681
  %23 = call i32 @bytes_to_chunksz(ptr noundef %21, i32 noundef %22), !dbg !682
  store i32 %23, ptr %8, align 4, !dbg !679
  call void @llvm.dbg.declare(metadata ptr %9, metadata !683, metadata !DIExpression()), !dbg !684
  %24 = load ptr, ptr %6, align 4, !dbg !685
  %25 = load i32, ptr %8, align 4, !dbg !686
  %26 = call i32 @alloc_chunk(ptr noundef %24, i32 noundef %25), !dbg !687
  store i32 %26, ptr %9, align 4, !dbg !684
  %27 = load i32, ptr %9, align 4, !dbg !688
  %28 = icmp eq i32 %27, 0, !dbg !690
  br i1 %28, label %29, label %30, !dbg !691

29:                                               ; preds = %20
  store ptr null, ptr %3, align 4, !dbg !692
  br label %53, !dbg !692

30:                                               ; preds = %20
  %31 = load ptr, ptr %6, align 4, !dbg !694
  %32 = load i32, ptr %9, align 4, !dbg !696
  %33 = call i32 @chunk_size(ptr noundef %31, i32 noundef %32), !dbg !697
  %34 = load i32, ptr %8, align 4, !dbg !698
  %35 = icmp ugt i32 %33, %34, !dbg !699
  br i1 %35, label %36, label %46, !dbg !700

36:                                               ; preds = %30
  %37 = load ptr, ptr %6, align 4, !dbg !701
  %38 = load i32, ptr %9, align 4, !dbg !703
  %39 = load i32, ptr %9, align 4, !dbg !704
  %40 = load i32, ptr %8, align 4, !dbg !705
  %41 = add i32 %39, %40, !dbg !706
  call void @split_chunks(ptr noundef %37, i32 noundef %38, i32 noundef %41), !dbg !707
  %42 = load ptr, ptr %6, align 4, !dbg !708
  %43 = load i32, ptr %9, align 4, !dbg !709
  %44 = load i32, ptr %8, align 4, !dbg !710
  %45 = add i32 %43, %44, !dbg !711
  call void @free_list_add(ptr noundef %42, i32 noundef %45), !dbg !712
  br label %46, !dbg !713

46:                                               ; preds = %36, %30
  %47 = load ptr, ptr %6, align 4, !dbg !714
  %48 = load i32, ptr %9, align 4, !dbg !715
  call void @set_chunk_used(ptr noundef %47, i32 noundef %48, i1 noundef zeroext true), !dbg !716
  %49 = load ptr, ptr %6, align 4, !dbg !717
  %50 = load i32, ptr %9, align 4, !dbg !718
  %51 = call ptr @chunk_mem(ptr noundef %49, i32 noundef %50), !dbg !719
  store ptr %51, ptr %7, align 4, !dbg !720
  %52 = load ptr, ptr %7, align 4, !dbg !721
  store ptr %52, ptr %3, align 4, !dbg !722
  br label %53, !dbg !722

53:                                               ; preds = %46, %29, %19
  %54 = load ptr, ptr %3, align 4, !dbg !723
  ret ptr %54, !dbg !723
}

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @size_too_big(ptr noundef %0, i32 noundef %1) #0 !dbg !724 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !727, metadata !DIExpression()), !dbg !728
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !729, metadata !DIExpression()), !dbg !730
  %5 = load i32, ptr %4, align 4, !dbg !731
  %6 = udiv i32 %5, 8, !dbg !732
  %7 = load ptr, ptr %3, align 4, !dbg !733
  %8 = getelementptr inbounds %struct.z_heap, ptr %7, i32 0, i32 1, !dbg !734
  %9 = load i32, ptr %8, align 4, !dbg !734
  %10 = icmp uge i32 %6, %9, !dbg !735
  ret i1 %10, !dbg !736
}

; Function Attrs: noinline nounwind optnone
define internal i32 @bytes_to_chunksz(ptr noundef %0, i32 noundef %1) #0 !dbg !737 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !740, metadata !DIExpression()), !dbg !741
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !742, metadata !DIExpression()), !dbg !743
  %5 = load ptr, ptr %3, align 4, !dbg !744
  %6 = call i32 @chunk_header_bytes(ptr noundef %5), !dbg !745
  %7 = load i32, ptr %4, align 4, !dbg !746
  %8 = add i32 %6, %7, !dbg !747
  %9 = call i32 @chunksz(i32 noundef %8), !dbg !748
  ret i32 %9, !dbg !749
}

; Function Attrs: noinline nounwind optnone
define internal i32 @alloc_chunk(ptr noundef %0, i32 noundef %1) #0 !dbg !750 {
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
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !753, metadata !DIExpression()), !dbg !754
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !755, metadata !DIExpression()), !dbg !756
  call void @llvm.dbg.declare(metadata ptr %6, metadata !757, metadata !DIExpression()), !dbg !758
  %14 = load ptr, ptr %4, align 4, !dbg !759
  %15 = load i32, ptr %5, align 4, !dbg !760
  %16 = call i32 @bucket_idx(ptr noundef %14, i32 noundef %15), !dbg !761
  store i32 %16, ptr %6, align 4, !dbg !758
  call void @llvm.dbg.declare(metadata ptr %7, metadata !762, metadata !DIExpression()), !dbg !764
  %17 = load ptr, ptr %4, align 4, !dbg !765
  %18 = getelementptr inbounds %struct.z_heap, ptr %17, i32 0, i32 3, !dbg !766
  %19 = load i32, ptr %6, align 4, !dbg !767
  %20 = getelementptr inbounds [0 x %struct.z_heap_bucket], ptr %18, i32 0, i32 %19, !dbg !765
  store ptr %20, ptr %7, align 4, !dbg !764
  %21 = load ptr, ptr %7, align 4, !dbg !768
  %22 = getelementptr inbounds %struct.z_heap_bucket, ptr %21, i32 0, i32 0, !dbg !770
  %23 = load i32, ptr %22, align 4, !dbg !770
  %24 = icmp ne i32 %23, 0, !dbg !768
  br i1 %24, label %25, label %62, !dbg !771

25:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata ptr %8, metadata !772, metadata !DIExpression()), !dbg !774
  %26 = load ptr, ptr %7, align 4, !dbg !775
  %27 = getelementptr inbounds %struct.z_heap_bucket, ptr %26, i32 0, i32 0, !dbg !776
  %28 = load i32, ptr %27, align 4, !dbg !776
  store i32 %28, ptr %8, align 4, !dbg !774
  call void @llvm.dbg.declare(metadata ptr %9, metadata !777, metadata !DIExpression()), !dbg !778
  store i32 3, ptr %9, align 4, !dbg !778
  br label %29, !dbg !779

29:                                               ; preds = %59, %25
  call void @llvm.dbg.declare(metadata ptr %10, metadata !780, metadata !DIExpression()), !dbg !782
  %30 = load ptr, ptr %7, align 4, !dbg !783
  %31 = getelementptr inbounds %struct.z_heap_bucket, ptr %30, i32 0, i32 0, !dbg !784
  %32 = load i32, ptr %31, align 4, !dbg !784
  store i32 %32, ptr %10, align 4, !dbg !782
  %33 = load ptr, ptr %4, align 4, !dbg !785
  %34 = load i32, ptr %10, align 4, !dbg !787
  %35 = call i32 @chunk_size(ptr noundef %33, i32 noundef %34), !dbg !788
  %36 = load i32, ptr %5, align 4, !dbg !789
  %37 = icmp uge i32 %35, %36, !dbg !790
  br i1 %37, label %38, label %43, !dbg !791

38:                                               ; preds = %29
  %39 = load ptr, ptr %4, align 4, !dbg !792
  %40 = load i32, ptr %10, align 4, !dbg !794
  %41 = load i32, ptr %6, align 4, !dbg !795
  call void @free_list_remove_bidx(ptr noundef %39, i32 noundef %40, i32 noundef %41), !dbg !796
  %42 = load i32, ptr %10, align 4, !dbg !797
  store i32 %42, ptr %3, align 4, !dbg !798
  br label %88, !dbg !798

43:                                               ; preds = %29
  %44 = load ptr, ptr %4, align 4, !dbg !799
  %45 = load i32, ptr %10, align 4, !dbg !800
  %46 = call i32 @next_free_chunk(ptr noundef %44, i32 noundef %45), !dbg !801
  %47 = load ptr, ptr %7, align 4, !dbg !802
  %48 = getelementptr inbounds %struct.z_heap_bucket, ptr %47, i32 0, i32 0, !dbg !803
  store i32 %46, ptr %48, align 4, !dbg !804
  br label %49, !dbg !805

49:                                               ; preds = %43
  %50 = load i32, ptr %9, align 4, !dbg !806
  %51 = add nsw i32 %50, -1, !dbg !806
  store i32 %51, ptr %9, align 4, !dbg !806
  %52 = icmp ne i32 %51, 0, !dbg !806
  br i1 %52, label %53, label %59, !dbg !807

53:                                               ; preds = %49
  %54 = load ptr, ptr %7, align 4, !dbg !808
  %55 = getelementptr inbounds %struct.z_heap_bucket, ptr %54, i32 0, i32 0, !dbg !809
  %56 = load i32, ptr %55, align 4, !dbg !809
  %57 = load i32, ptr %8, align 4, !dbg !810
  %58 = icmp ne i32 %56, %57, !dbg !811
  br label %59

59:                                               ; preds = %53, %49
  %60 = phi i1 [ false, %49 ], [ %58, %53 ], !dbg !812
  br i1 %60, label %29, label %61, !dbg !805, !llvm.loop !813

61:                                               ; preds = %59
  br label %62, !dbg !815

62:                                               ; preds = %61, %2
  call void @llvm.dbg.declare(metadata ptr %11, metadata !816, metadata !DIExpression()), !dbg !817
  %63 = load ptr, ptr %4, align 4, !dbg !818
  %64 = getelementptr inbounds %struct.z_heap, ptr %63, i32 0, i32 2, !dbg !819
  %65 = load i32, ptr %64, align 4, !dbg !819
  %66 = load i32, ptr %6, align 4, !dbg !820
  %67 = add nsw i32 %66, 1, !dbg !821
  %68 = shl i32 1, %67, !dbg !822
  %69 = sub i32 %68, 1, !dbg !823
  %70 = xor i32 %69, -1, !dbg !824
  %71 = and i32 %65, %70, !dbg !825
  store i32 %71, ptr %11, align 4, !dbg !817
  %72 = load i32, ptr %11, align 4, !dbg !826
  %73 = icmp ne i32 %72, 0, !dbg !828
  br i1 %73, label %74, label %87, !dbg !829

74:                                               ; preds = %62
  call void @llvm.dbg.declare(metadata ptr %12, metadata !830, metadata !DIExpression()), !dbg !832
  %75 = load i32, ptr %11, align 4, !dbg !833
  %76 = call i32 @llvm.cttz.i32(i32 %75, i1 false), !dbg !834
  store i32 %76, ptr %12, align 4, !dbg !832
  call void @llvm.dbg.declare(metadata ptr %13, metadata !835, metadata !DIExpression()), !dbg !836
  %77 = load ptr, ptr %4, align 4, !dbg !837
  %78 = getelementptr inbounds %struct.z_heap, ptr %77, i32 0, i32 3, !dbg !838
  %79 = load i32, ptr %12, align 4, !dbg !839
  %80 = getelementptr inbounds [0 x %struct.z_heap_bucket], ptr %78, i32 0, i32 %79, !dbg !837
  %81 = getelementptr inbounds %struct.z_heap_bucket, ptr %80, i32 0, i32 0, !dbg !840
  %82 = load i32, ptr %81, align 4, !dbg !840
  store i32 %82, ptr %13, align 4, !dbg !836
  %83 = load ptr, ptr %4, align 4, !dbg !841
  %84 = load i32, ptr %13, align 4, !dbg !842
  %85 = load i32, ptr %12, align 4, !dbg !843
  call void @free_list_remove_bidx(ptr noundef %83, i32 noundef %84, i32 noundef %85), !dbg !844
  %86 = load i32, ptr %13, align 4, !dbg !845
  store i32 %86, ptr %3, align 4, !dbg !846
  br label %88, !dbg !846

87:                                               ; preds = %62
  store i32 0, ptr %3, align 4, !dbg !847
  br label %88, !dbg !847

88:                                               ; preds = %87, %74, %38
  %89 = load i32, ptr %3, align 4, !dbg !848
  ret i32 %89, !dbg !848
}

; Function Attrs: noinline nounwind optnone
define internal void @split_chunks(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 !dbg !849 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !852, metadata !DIExpression()), !dbg !853
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !854, metadata !DIExpression()), !dbg !855
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !856, metadata !DIExpression()), !dbg !857
  call void @llvm.dbg.declare(metadata ptr %7, metadata !858, metadata !DIExpression()), !dbg !859
  %10 = load ptr, ptr %4, align 4, !dbg !860
  %11 = load i32, ptr %5, align 4, !dbg !861
  %12 = call i32 @chunk_size(ptr noundef %10, i32 noundef %11), !dbg !862
  store i32 %12, ptr %7, align 4, !dbg !859
  call void @llvm.dbg.declare(metadata ptr %8, metadata !863, metadata !DIExpression()), !dbg !864
  %13 = load i32, ptr %6, align 4, !dbg !865
  %14 = load i32, ptr %5, align 4, !dbg !866
  %15 = sub i32 %13, %14, !dbg !867
  store i32 %15, ptr %8, align 4, !dbg !864
  call void @llvm.dbg.declare(metadata ptr %9, metadata !868, metadata !DIExpression()), !dbg !869
  %16 = load i32, ptr %7, align 4, !dbg !870
  %17 = load i32, ptr %8, align 4, !dbg !871
  %18 = sub i32 %16, %17, !dbg !872
  store i32 %18, ptr %9, align 4, !dbg !869
  %19 = load ptr, ptr %4, align 4, !dbg !873
  %20 = load i32, ptr %5, align 4, !dbg !874
  %21 = load i32, ptr %8, align 4, !dbg !875
  call void @set_chunk_size(ptr noundef %19, i32 noundef %20, i32 noundef %21), !dbg !876
  %22 = load ptr, ptr %4, align 4, !dbg !877
  %23 = load i32, ptr %6, align 4, !dbg !878
  %24 = load i32, ptr %9, align 4, !dbg !879
  call void @set_chunk_size(ptr noundef %22, i32 noundef %23, i32 noundef %24), !dbg !880
  %25 = load ptr, ptr %4, align 4, !dbg !881
  %26 = load i32, ptr %6, align 4, !dbg !882
  %27 = load i32, ptr %8, align 4, !dbg !883
  call void @set_left_chunk_size(ptr noundef %25, i32 noundef %26, i32 noundef %27), !dbg !884
  %28 = load ptr, ptr %4, align 4, !dbg !885
  %29 = load ptr, ptr %4, align 4, !dbg !886
  %30 = load i32, ptr %6, align 4, !dbg !887
  %31 = call i32 @right_chunk(ptr noundef %29, i32 noundef %30), !dbg !888
  %32 = load i32, ptr %9, align 4, !dbg !889
  call void @set_left_chunk_size(ptr noundef %28, i32 noundef %31, i32 noundef %32), !dbg !890
  ret void, !dbg !891
}

; Function Attrs: noinline nounwind optnone
define internal void @free_list_add(ptr noundef %0, i32 noundef %1) #0 !dbg !892 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !893, metadata !DIExpression()), !dbg !894
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !895, metadata !DIExpression()), !dbg !896
  %6 = load ptr, ptr %3, align 4, !dbg !897
  %7 = load i32, ptr %4, align 4, !dbg !899
  %8 = call zeroext i1 @solo_free_header(ptr noundef %6, i32 noundef %7), !dbg !900
  br i1 %8, label %18, label %9, !dbg !901

9:                                                ; preds = %2
  call void @llvm.dbg.declare(metadata ptr %5, metadata !902, metadata !DIExpression()), !dbg !904
  %10 = load ptr, ptr %3, align 4, !dbg !905
  %11 = load ptr, ptr %3, align 4, !dbg !906
  %12 = load i32, ptr %4, align 4, !dbg !907
  %13 = call i32 @chunk_size(ptr noundef %11, i32 noundef %12), !dbg !908
  %14 = call i32 @bucket_idx(ptr noundef %10, i32 noundef %13), !dbg !909
  store i32 %14, ptr %5, align 4, !dbg !904
  %15 = load ptr, ptr %3, align 4, !dbg !910
  %16 = load i32, ptr %4, align 4, !dbg !911
  %17 = load i32, ptr %5, align 4, !dbg !912
  call void @free_list_add_bidx(ptr noundef %15, i32 noundef %16, i32 noundef %17), !dbg !913
  br label %18, !dbg !914

18:                                               ; preds = %9, %2
  ret void, !dbg !915
}

; Function Attrs: noinline nounwind optnone
define internal ptr @chunk_mem(ptr noundef %0, i32 noundef %1) #0 !dbg !916 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !919, metadata !DIExpression()), !dbg !920
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !921, metadata !DIExpression()), !dbg !922
  call void @llvm.dbg.declare(metadata ptr %5, metadata !923, metadata !DIExpression()), !dbg !924
  %7 = load ptr, ptr %3, align 4, !dbg !925
  %8 = call ptr @chunk_buf(ptr noundef %7), !dbg !926
  store ptr %8, ptr %5, align 4, !dbg !924
  call void @llvm.dbg.declare(metadata ptr %6, metadata !927, metadata !DIExpression()), !dbg !928
  %9 = load ptr, ptr %5, align 4, !dbg !929
  %10 = load i32, ptr %4, align 4, !dbg !930
  %11 = getelementptr inbounds %struct.chunk_unit_t, ptr %9, i32 %10, !dbg !929
  %12 = load ptr, ptr %3, align 4, !dbg !931
  %13 = call i32 @chunk_header_bytes(ptr noundef %12), !dbg !932
  %14 = getelementptr inbounds i8, ptr %11, i32 %13, !dbg !933
  store ptr %14, ptr %6, align 4, !dbg !928
  %15 = load ptr, ptr %6, align 4, !dbg !934
  ret ptr %15, !dbg !935
}

; Function Attrs: noinline nounwind optnone
define hidden ptr @sys_heap_aligned_alloc(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 !dbg !936 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca ptr, align 4
  %14 = alloca ptr, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store ptr %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !939, metadata !DIExpression()), !dbg !940
  store i32 %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !941, metadata !DIExpression()), !dbg !942
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !943, metadata !DIExpression()), !dbg !944
  call void @llvm.dbg.declare(metadata ptr %8, metadata !945, metadata !DIExpression()), !dbg !946
  %17 = load ptr, ptr %5, align 4, !dbg !947
  %18 = getelementptr inbounds %struct.sys_heap, ptr %17, i32 0, i32 0, !dbg !948
  %19 = load ptr, ptr %18, align 4, !dbg !948
  store ptr %19, ptr %8, align 4, !dbg !946
  call void @llvm.dbg.declare(metadata ptr %9, metadata !949, metadata !DIExpression()), !dbg !950
  call void @llvm.dbg.declare(metadata ptr %10, metadata !951, metadata !DIExpression()), !dbg !952
  %20 = load i32, ptr %6, align 4, !dbg !953
  %21 = load i32, ptr %6, align 4, !dbg !954
  %22 = sub i32 0, %21, !dbg !955
  %23 = and i32 %20, %22, !dbg !956
  store i32 %23, ptr %10, align 4, !dbg !957
  %24 = load i32, ptr %6, align 4, !dbg !958
  %25 = load i32, ptr %10, align 4, !dbg !960
  %26 = icmp ne i32 %24, %25, !dbg !961
  br i1 %26, label %27, label %42, !dbg !962

27:                                               ; preds = %3
  %28 = load i32, ptr %10, align 4, !dbg !963
  %29 = load i32, ptr %6, align 4, !dbg !965
  %30 = sub i32 %29, %28, !dbg !965
  store i32 %30, ptr %6, align 4, !dbg !965
  %31 = load i32, ptr %10, align 4, !dbg !966
  %32 = load ptr, ptr %8, align 4, !dbg !967
  %33 = call i32 @chunk_header_bytes(ptr noundef %32), !dbg !968
  %34 = icmp ult i32 %31, %33, !dbg !969
  br i1 %34, label %35, label %37, !dbg !970

35:                                               ; preds = %27
  %36 = load i32, ptr %10, align 4, !dbg !971
  br label %40, !dbg !970

37:                                               ; preds = %27
  %38 = load ptr, ptr %8, align 4, !dbg !972
  %39 = call i32 @chunk_header_bytes(ptr noundef %38), !dbg !973
  br label %40, !dbg !970

40:                                               ; preds = %37, %35
  %41 = phi i32 [ %36, %35 ], [ %39, %37 ], !dbg !970
  store i32 %41, ptr %9, align 4, !dbg !974
  br label %54, !dbg !975

42:                                               ; preds = %3
  %43 = load i32, ptr %6, align 4, !dbg !976
  %44 = load ptr, ptr %8, align 4, !dbg !979
  %45 = call i32 @chunk_header_bytes(ptr noundef %44), !dbg !980
  %46 = icmp ule i32 %43, %45, !dbg !981
  br i1 %46, label %47, label %51, !dbg !982

47:                                               ; preds = %42
  %48 = load ptr, ptr %5, align 4, !dbg !983
  %49 = load i32, ptr %7, align 4, !dbg !985
  %50 = call ptr @sys_heap_alloc(ptr noundef %48, i32 noundef %49), !dbg !986
  store ptr %50, ptr %4, align 4, !dbg !987
  br label %138, !dbg !987

51:                                               ; preds = %42
  store i32 0, ptr %10, align 4, !dbg !988
  %52 = load ptr, ptr %8, align 4, !dbg !989
  %53 = call i32 @chunk_header_bytes(ptr noundef %52), !dbg !990
  store i32 %53, ptr %9, align 4, !dbg !991
  br label %54

54:                                               ; preds = %51, %40
  %55 = load i32, ptr %7, align 4, !dbg !992
  %56 = icmp eq i32 %55, 0, !dbg !994
  br i1 %56, label %61, label %57, !dbg !995

57:                                               ; preds = %54
  %58 = load ptr, ptr %8, align 4, !dbg !996
  %59 = load i32, ptr %7, align 4, !dbg !997
  %60 = call zeroext i1 @size_too_big(ptr noundef %58, i32 noundef %59), !dbg !998
  br i1 %60, label %61, label %62, !dbg !999

61:                                               ; preds = %57, %54
  store ptr null, ptr %4, align 4, !dbg !1000
  br label %138, !dbg !1000

62:                                               ; preds = %57
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1002, metadata !DIExpression()), !dbg !1003
  %63 = load ptr, ptr %8, align 4, !dbg !1004
  %64 = load i32, ptr %7, align 4, !dbg !1005
  %65 = load i32, ptr %6, align 4, !dbg !1006
  %66 = add i32 %64, %65, !dbg !1007
  %67 = load i32, ptr %9, align 4, !dbg !1008
  %68 = sub i32 %66, %67, !dbg !1009
  %69 = call i32 @bytes_to_chunksz(ptr noundef %63, i32 noundef %68), !dbg !1010
  store i32 %69, ptr %11, align 4, !dbg !1003
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1011, metadata !DIExpression()), !dbg !1012
  %70 = load ptr, ptr %8, align 4, !dbg !1013
  %71 = load i32, ptr %11, align 4, !dbg !1014
  %72 = call i32 @alloc_chunk(ptr noundef %70, i32 noundef %71), !dbg !1015
  store i32 %72, ptr %12, align 4, !dbg !1012
  %73 = load i32, ptr %12, align 4, !dbg !1016
  %74 = icmp eq i32 %73, 0, !dbg !1018
  br i1 %74, label %75, label %76, !dbg !1019

75:                                               ; preds = %62
  store ptr null, ptr %4, align 4, !dbg !1020
  br label %138, !dbg !1020

76:                                               ; preds = %62
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1022, metadata !DIExpression()), !dbg !1023
  %77 = load ptr, ptr %8, align 4, !dbg !1024
  %78 = load i32, ptr %12, align 4, !dbg !1025
  %79 = call ptr @chunk_mem(ptr noundef %77, i32 noundef %78), !dbg !1026
  store ptr %79, ptr %13, align 4, !dbg !1023
  %80 = load ptr, ptr %13, align 4, !dbg !1027
  %81 = load i32, ptr %10, align 4, !dbg !1028
  %82 = getelementptr inbounds i8, ptr %80, i32 %81, !dbg !1029
  %83 = ptrtoint ptr %82 to i32, !dbg !1030
  %84 = load i32, ptr %6, align 4, !dbg !1031
  %85 = sub i32 %84, 1, !dbg !1032
  %86 = add i32 %83, %85, !dbg !1033
  %87 = load i32, ptr %6, align 4, !dbg !1034
  %88 = udiv i32 %86, %87, !dbg !1035
  %89 = load i32, ptr %6, align 4, !dbg !1036
  %90 = mul i32 %88, %89, !dbg !1037
  %91 = inttoptr i32 %90 to ptr, !dbg !1038
  %92 = load i32, ptr %10, align 4, !dbg !1039
  %93 = sub i32 0, %92, !dbg !1040
  %94 = getelementptr inbounds i8, ptr %91, i32 %93, !dbg !1040
  store ptr %94, ptr %13, align 4, !dbg !1041
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1042, metadata !DIExpression()), !dbg !1043
  %95 = load ptr, ptr %13, align 4, !dbg !1044
  %96 = load i32, ptr %7, align 4, !dbg !1045
  %97 = getelementptr inbounds i8, ptr %95, i32 %96, !dbg !1046
  %98 = ptrtoint ptr %97 to i32, !dbg !1047
  %99 = add i32 %98, 7, !dbg !1048
  %100 = udiv i32 %99, 8, !dbg !1049
  %101 = mul i32 %100, 8, !dbg !1050
  %102 = inttoptr i32 %101 to ptr, !dbg !1051
  store ptr %102, ptr %14, align 4, !dbg !1043
  call void @llvm.dbg.declare(metadata ptr %15, metadata !1052, metadata !DIExpression()), !dbg !1053
  %103 = load ptr, ptr %8, align 4, !dbg !1054
  %104 = load ptr, ptr %13, align 4, !dbg !1055
  %105 = call i32 @mem_to_chunkid(ptr noundef %103, ptr noundef %104), !dbg !1056
  store i32 %105, ptr %15, align 4, !dbg !1053
  call void @llvm.dbg.declare(metadata ptr %16, metadata !1057, metadata !DIExpression()), !dbg !1058
  %106 = load ptr, ptr %14, align 4, !dbg !1059
  %107 = load ptr, ptr %8, align 4, !dbg !1060
  %108 = call ptr @chunk_buf(ptr noundef %107), !dbg !1061
  %109 = ptrtoint ptr %106 to i32, !dbg !1062
  %110 = ptrtoint ptr %108 to i32, !dbg !1062
  %111 = sub i32 %109, %110, !dbg !1062
  %112 = sdiv exact i32 %111, 8, !dbg !1062
  store i32 %112, ptr %16, align 4, !dbg !1058
  %113 = load i32, ptr %15, align 4, !dbg !1063
  %114 = load i32, ptr %12, align 4, !dbg !1065
  %115 = icmp ugt i32 %113, %114, !dbg !1066
  br i1 %115, label %116, label %122, !dbg !1067

116:                                              ; preds = %76
  %117 = load ptr, ptr %8, align 4, !dbg !1068
  %118 = load i32, ptr %12, align 4, !dbg !1070
  %119 = load i32, ptr %15, align 4, !dbg !1071
  call void @split_chunks(ptr noundef %117, i32 noundef %118, i32 noundef %119), !dbg !1072
  %120 = load ptr, ptr %8, align 4, !dbg !1073
  %121 = load i32, ptr %12, align 4, !dbg !1074
  call void @free_list_add(ptr noundef %120, i32 noundef %121), !dbg !1075
  br label %122, !dbg !1076

122:                                              ; preds = %116, %76
  %123 = load ptr, ptr %8, align 4, !dbg !1077
  %124 = load i32, ptr %15, align 4, !dbg !1079
  %125 = call i32 @right_chunk(ptr noundef %123, i32 noundef %124), !dbg !1080
  %126 = load i32, ptr %16, align 4, !dbg !1081
  %127 = icmp ugt i32 %125, %126, !dbg !1082
  br i1 %127, label %128, label %134, !dbg !1083

128:                                              ; preds = %122
  %129 = load ptr, ptr %8, align 4, !dbg !1084
  %130 = load i32, ptr %15, align 4, !dbg !1086
  %131 = load i32, ptr %16, align 4, !dbg !1087
  call void @split_chunks(ptr noundef %129, i32 noundef %130, i32 noundef %131), !dbg !1088
  %132 = load ptr, ptr %8, align 4, !dbg !1089
  %133 = load i32, ptr %16, align 4, !dbg !1090
  call void @free_list_add(ptr noundef %132, i32 noundef %133), !dbg !1091
  br label %134, !dbg !1092

134:                                              ; preds = %128, %122
  %135 = load ptr, ptr %8, align 4, !dbg !1093
  %136 = load i32, ptr %15, align 4, !dbg !1094
  call void @set_chunk_used(ptr noundef %135, i32 noundef %136, i1 noundef zeroext true), !dbg !1095
  %137 = load ptr, ptr %13, align 4, !dbg !1096
  store ptr %137, ptr %4, align 4, !dbg !1097
  br label %138, !dbg !1097

138:                                              ; preds = %134, %75, %61, %47
  %139 = load ptr, ptr %4, align 4, !dbg !1098
  ret ptr %139, !dbg !1098
}

; Function Attrs: noinline nounwind optnone
define internal i32 @chunk_header_bytes(ptr noundef %0) #0 !dbg !1099 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1102, metadata !DIExpression()), !dbg !1103
  %3 = load ptr, ptr %2, align 4, !dbg !1104
  %4 = call zeroext i1 @big_heap(ptr noundef %3), !dbg !1105
  %5 = zext i1 %4 to i64, !dbg !1105
  %6 = select i1 %4, i32 8, i32 4, !dbg !1105
  ret i32 %6, !dbg !1106
}

; Function Attrs: noinline nounwind optnone
define internal i32 @right_chunk(ptr noundef %0, i32 noundef %1) #0 !dbg !1107 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1110, metadata !DIExpression()), !dbg !1111
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1112, metadata !DIExpression()), !dbg !1113
  %5 = load i32, ptr %4, align 4, !dbg !1114
  %6 = load ptr, ptr %3, align 4, !dbg !1115
  %7 = load i32, ptr %4, align 4, !dbg !1116
  %8 = call i32 @chunk_size(ptr noundef %6, i32 noundef %7), !dbg !1117
  %9 = add i32 %5, %8, !dbg !1118
  ret i32 %9, !dbg !1119
}

; Function Attrs: noinline nounwind optnone
define hidden ptr @sys_heap_aligned_realloc(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 !dbg !1120 {
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
  %16 = alloca ptr, align 4
  %17 = alloca i32, align 4
  store ptr %0, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1123, metadata !DIExpression()), !dbg !1124
  store ptr %1, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1125, metadata !DIExpression()), !dbg !1126
  store i32 %2, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1127, metadata !DIExpression()), !dbg !1128
  store i32 %3, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1129, metadata !DIExpression()), !dbg !1130
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1131, metadata !DIExpression()), !dbg !1132
  %18 = load ptr, ptr %6, align 4, !dbg !1133
  %19 = getelementptr inbounds %struct.sys_heap, ptr %18, i32 0, i32 0, !dbg !1134
  %20 = load ptr, ptr %19, align 4, !dbg !1134
  store ptr %20, ptr %10, align 4, !dbg !1132
  %21 = load ptr, ptr %7, align 4, !dbg !1135
  %22 = icmp eq ptr %21, null, !dbg !1137
  br i1 %22, label %23, label %28, !dbg !1138

23:                                               ; preds = %4
  %24 = load ptr, ptr %6, align 4, !dbg !1139
  %25 = load i32, ptr %8, align 4, !dbg !1141
  %26 = load i32, ptr %9, align 4, !dbg !1142
  %27 = call ptr @sys_heap_aligned_alloc(ptr noundef %24, i32 noundef %25, i32 noundef %26), !dbg !1143
  store ptr %27, ptr %5, align 4, !dbg !1144
  br label %173, !dbg !1144

28:                                               ; preds = %4
  %29 = load i32, ptr %9, align 4, !dbg !1145
  %30 = icmp eq i32 %29, 0, !dbg !1147
  br i1 %30, label %31, label %34, !dbg !1148

31:                                               ; preds = %28
  %32 = load ptr, ptr %6, align 4, !dbg !1149
  %33 = load ptr, ptr %7, align 4, !dbg !1151
  call void @sys_heap_free(ptr noundef %32, ptr noundef %33), !dbg !1152
  store ptr null, ptr %5, align 4, !dbg !1153
  br label %173, !dbg !1153

34:                                               ; preds = %28
  %35 = load ptr, ptr %10, align 4, !dbg !1154
  %36 = load i32, ptr %9, align 4, !dbg !1156
  %37 = call zeroext i1 @size_too_big(ptr noundef %35, i32 noundef %36), !dbg !1157
  br i1 %37, label %38, label %39, !dbg !1158

38:                                               ; preds = %34
  store ptr null, ptr %5, align 4, !dbg !1159
  br label %173, !dbg !1159

39:                                               ; preds = %34
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1161, metadata !DIExpression()), !dbg !1162
  %40 = load ptr, ptr %10, align 4, !dbg !1163
  %41 = load ptr, ptr %7, align 4, !dbg !1164
  %42 = call i32 @mem_to_chunkid(ptr noundef %40, ptr noundef %41), !dbg !1165
  store i32 %42, ptr %11, align 4, !dbg !1162
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1166, metadata !DIExpression()), !dbg !1167
  %43 = load ptr, ptr %10, align 4, !dbg !1168
  %44 = load i32, ptr %11, align 4, !dbg !1169
  %45 = call i32 @right_chunk(ptr noundef %43, i32 noundef %44), !dbg !1170
  store i32 %45, ptr %12, align 4, !dbg !1167
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1171, metadata !DIExpression()), !dbg !1172
  %46 = load ptr, ptr %7, align 4, !dbg !1173
  %47 = load ptr, ptr %10, align 4, !dbg !1174
  %48 = load i32, ptr %11, align 4, !dbg !1175
  %49 = call ptr @chunk_mem(ptr noundef %47, i32 noundef %48), !dbg !1176
  %50 = ptrtoint ptr %46 to i32, !dbg !1177
  %51 = ptrtoint ptr %49 to i32, !dbg !1177
  %52 = sub i32 %50, %51, !dbg !1177
  store i32 %52, ptr %13, align 4, !dbg !1172
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1178, metadata !DIExpression()), !dbg !1179
  %53 = load ptr, ptr %10, align 4, !dbg !1180
  %54 = load i32, ptr %9, align 4, !dbg !1181
  %55 = load i32, ptr %13, align 4, !dbg !1182
  %56 = add i32 %54, %55, !dbg !1183
  %57 = call i32 @bytes_to_chunksz(ptr noundef %53, i32 noundef %56), !dbg !1184
  store i32 %57, ptr %14, align 4, !dbg !1179
  %58 = load i32, ptr %8, align 4, !dbg !1185
  %59 = icmp ne i32 %58, 0, !dbg !1185
  br i1 %59, label %60, label %68, !dbg !1187

60:                                               ; preds = %39
  %61 = load ptr, ptr %7, align 4, !dbg !1188
  %62 = ptrtoint ptr %61 to i32, !dbg !1189
  %63 = load i32, ptr %8, align 4, !dbg !1190
  %64 = sub i32 %63, 1, !dbg !1191
  %65 = and i32 %62, %64, !dbg !1192
  %66 = icmp ne i32 %65, 0, !dbg !1192
  br i1 %66, label %67, label %68, !dbg !1193

67:                                               ; preds = %60
  br label %143, !dbg !1194

68:                                               ; preds = %60, %39
  %69 = load ptr, ptr %10, align 4, !dbg !1196
  %70 = load i32, ptr %11, align 4, !dbg !1198
  %71 = call i32 @chunk_size(ptr noundef %69, i32 noundef %70), !dbg !1199
  %72 = load i32, ptr %14, align 4, !dbg !1200
  %73 = icmp eq i32 %71, %72, !dbg !1201
  br i1 %73, label %74, label %76, !dbg !1202

74:                                               ; preds = %68
  %75 = load ptr, ptr %7, align 4, !dbg !1203
  store ptr %75, ptr %5, align 4, !dbg !1205
  br label %173, !dbg !1205

76:                                               ; preds = %68
  %77 = load ptr, ptr %10, align 4, !dbg !1206
  %78 = load i32, ptr %11, align 4, !dbg !1208
  %79 = call i32 @chunk_size(ptr noundef %77, i32 noundef %78), !dbg !1209
  %80 = load i32, ptr %14, align 4, !dbg !1210
  %81 = icmp ugt i32 %79, %80, !dbg !1211
  br i1 %81, label %82, label %95, !dbg !1212

82:                                               ; preds = %76
  %83 = load ptr, ptr %10, align 4, !dbg !1213
  %84 = load i32, ptr %11, align 4, !dbg !1215
  %85 = load i32, ptr %11, align 4, !dbg !1216
  %86 = load i32, ptr %14, align 4, !dbg !1217
  %87 = add i32 %85, %86, !dbg !1218
  call void @split_chunks(ptr noundef %83, i32 noundef %84, i32 noundef %87), !dbg !1219
  %88 = load ptr, ptr %10, align 4, !dbg !1220
  %89 = load i32, ptr %11, align 4, !dbg !1221
  call void @set_chunk_used(ptr noundef %88, i32 noundef %89, i1 noundef zeroext true), !dbg !1222
  %90 = load ptr, ptr %10, align 4, !dbg !1223
  %91 = load i32, ptr %11, align 4, !dbg !1224
  %92 = load i32, ptr %14, align 4, !dbg !1225
  %93 = add i32 %91, %92, !dbg !1226
  call void @free_chunk(ptr noundef %90, i32 noundef %93), !dbg !1227
  %94 = load ptr, ptr %7, align 4, !dbg !1228
  store ptr %94, ptr %5, align 4, !dbg !1229
  br label %173, !dbg !1229

95:                                               ; preds = %76
  %96 = load ptr, ptr %10, align 4, !dbg !1230
  %97 = load i32, ptr %12, align 4, !dbg !1232
  %98 = call zeroext i1 @chunk_used(ptr noundef %96, i32 noundef %97), !dbg !1233
  br i1 %98, label %139, label %99, !dbg !1234

99:                                               ; preds = %95
  %100 = load ptr, ptr %10, align 4, !dbg !1235
  %101 = load i32, ptr %11, align 4, !dbg !1236
  %102 = call i32 @chunk_size(ptr noundef %100, i32 noundef %101), !dbg !1237
  %103 = load ptr, ptr %10, align 4, !dbg !1238
  %104 = load i32, ptr %12, align 4, !dbg !1239
  %105 = call i32 @chunk_size(ptr noundef %103, i32 noundef %104), !dbg !1240
  %106 = add i32 %102, %105, !dbg !1241
  %107 = load i32, ptr %14, align 4, !dbg !1242
  %108 = icmp uge i32 %106, %107, !dbg !1243
  br i1 %108, label %109, label %139, !dbg !1244

109:                                              ; preds = %99
  call void @llvm.dbg.declare(metadata ptr %15, metadata !1245, metadata !DIExpression()), !dbg !1247
  %110 = load i32, ptr %14, align 4, !dbg !1248
  %111 = load ptr, ptr %10, align 4, !dbg !1249
  %112 = load i32, ptr %11, align 4, !dbg !1250
  %113 = call i32 @chunk_size(ptr noundef %111, i32 noundef %112), !dbg !1251
  %114 = sub i32 %110, %113, !dbg !1252
  store i32 %114, ptr %15, align 4, !dbg !1247
  %115 = load ptr, ptr %10, align 4, !dbg !1253
  %116 = load i32, ptr %12, align 4, !dbg !1254
  call void @free_list_remove(ptr noundef %115, i32 noundef %116), !dbg !1255
  %117 = load i32, ptr %15, align 4, !dbg !1256
  %118 = load ptr, ptr %10, align 4, !dbg !1258
  %119 = load i32, ptr %12, align 4, !dbg !1259
  %120 = call i32 @chunk_size(ptr noundef %118, i32 noundef %119), !dbg !1260
  %121 = icmp ult i32 %117, %120, !dbg !1261
  br i1 %121, label %122, label %132, !dbg !1262

122:                                              ; preds = %109
  %123 = load ptr, ptr %10, align 4, !dbg !1263
  %124 = load i32, ptr %12, align 4, !dbg !1265
  %125 = load i32, ptr %12, align 4, !dbg !1266
  %126 = load i32, ptr %15, align 4, !dbg !1267
  %127 = add i32 %125, %126, !dbg !1268
  call void @split_chunks(ptr noundef %123, i32 noundef %124, i32 noundef %127), !dbg !1269
  %128 = load ptr, ptr %10, align 4, !dbg !1270
  %129 = load i32, ptr %12, align 4, !dbg !1271
  %130 = load i32, ptr %15, align 4, !dbg !1272
  %131 = add i32 %129, %130, !dbg !1273
  call void @free_list_add(ptr noundef %128, i32 noundef %131), !dbg !1274
  br label %132, !dbg !1275

132:                                              ; preds = %122, %109
  %133 = load ptr, ptr %10, align 4, !dbg !1276
  %134 = load i32, ptr %11, align 4, !dbg !1277
  %135 = load i32, ptr %12, align 4, !dbg !1278
  call void @merge_chunks(ptr noundef %133, i32 noundef %134, i32 noundef %135), !dbg !1279
  %136 = load ptr, ptr %10, align 4, !dbg !1280
  %137 = load i32, ptr %11, align 4, !dbg !1281
  call void @set_chunk_used(ptr noundef %136, i32 noundef %137, i1 noundef zeroext true), !dbg !1282
  %138 = load ptr, ptr %7, align 4, !dbg !1283
  store ptr %138, ptr %5, align 4, !dbg !1284
  br label %173, !dbg !1284

139:                                              ; preds = %99, %95
  br label %140

140:                                              ; preds = %139
  br label %141

141:                                              ; preds = %140
  br label %142

142:                                              ; preds = %141
  br label %143

143:                                              ; preds = %142, %67
  call void @llvm.dbg.declare(metadata ptr %16, metadata !1285, metadata !DIExpression()), !dbg !1286
  %144 = load ptr, ptr %6, align 4, !dbg !1287
  %145 = load i32, ptr %8, align 4, !dbg !1288
  %146 = load i32, ptr %9, align 4, !dbg !1289
  %147 = call ptr @sys_heap_aligned_alloc(ptr noundef %144, i32 noundef %145, i32 noundef %146), !dbg !1290
  store ptr %147, ptr %16, align 4, !dbg !1286
  %148 = load ptr, ptr %16, align 4, !dbg !1291
  %149 = icmp ne ptr %148, null, !dbg !1293
  br i1 %149, label %150, label %171, !dbg !1294

150:                                              ; preds = %143
  call void @llvm.dbg.declare(metadata ptr %17, metadata !1295, metadata !DIExpression()), !dbg !1297
  %151 = load ptr, ptr %10, align 4, !dbg !1298
  %152 = load ptr, ptr %10, align 4, !dbg !1299
  %153 = load i32, ptr %11, align 4, !dbg !1300
  %154 = call i32 @chunk_size(ptr noundef %152, i32 noundef %153), !dbg !1301
  %155 = call i32 @chunksz_to_bytes(ptr noundef %151, i32 noundef %154), !dbg !1302
  %156 = load i32, ptr %13, align 4, !dbg !1303
  %157 = sub i32 %155, %156, !dbg !1304
  store i32 %157, ptr %17, align 4, !dbg !1297
  %158 = load ptr, ptr %16, align 4, !dbg !1305
  %159 = load ptr, ptr %7, align 4, !dbg !1306
  %160 = load i32, ptr %17, align 4, !dbg !1307
  %161 = load i32, ptr %9, align 4, !dbg !1308
  %162 = icmp ult i32 %160, %161, !dbg !1309
  br i1 %162, label %163, label %165, !dbg !1310

163:                                              ; preds = %150
  %164 = load i32, ptr %17, align 4, !dbg !1311
  br label %167, !dbg !1310

165:                                              ; preds = %150
  %166 = load i32, ptr %9, align 4, !dbg !1312
  br label %167, !dbg !1310

167:                                              ; preds = %165, %163
  %168 = phi i32 [ %164, %163 ], [ %166, %165 ], !dbg !1310
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %158, ptr align 1 %159, i32 %168, i1 false), !dbg !1313
  %169 = load ptr, ptr %6, align 4, !dbg !1314
  %170 = load ptr, ptr %7, align 4, !dbg !1315
  call void @sys_heap_free(ptr noundef %169, ptr noundef %170), !dbg !1316
  br label %171, !dbg !1317

171:                                              ; preds = %167, %143
  %172 = load ptr, ptr %16, align 4, !dbg !1318
  store ptr %172, ptr %5, align 4, !dbg !1319
  br label %173, !dbg !1319

173:                                              ; preds = %171, %132, %82, %74, %38, %31, %23
  %174 = load ptr, ptr %5, align 4, !dbg !1320
  ret ptr %174, !dbg !1320
}

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @chunk_used(ptr noundef %0, i32 noundef %1) #0 !dbg !1321 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1324, metadata !DIExpression()), !dbg !1325
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1326, metadata !DIExpression()), !dbg !1327
  %5 = load ptr, ptr %3, align 4, !dbg !1328
  %6 = load i32, ptr %4, align 4, !dbg !1329
  %7 = call i32 @chunk_field(ptr noundef %5, i32 noundef %6, i8 noundef zeroext 1), !dbg !1330
  %8 = and i32 %7, 1, !dbg !1331
  %9 = icmp ne i32 %8, 0, !dbg !1330
  ret i1 %9, !dbg !1332
}

; Function Attrs: noinline nounwind optnone
define internal void @free_list_remove(ptr noundef %0, i32 noundef %1) #0 !dbg !1333 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1334, metadata !DIExpression()), !dbg !1335
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1336, metadata !DIExpression()), !dbg !1337
  %6 = load ptr, ptr %3, align 4, !dbg !1338
  %7 = load i32, ptr %4, align 4, !dbg !1340
  %8 = call zeroext i1 @solo_free_header(ptr noundef %6, i32 noundef %7), !dbg !1341
  br i1 %8, label %18, label %9, !dbg !1342

9:                                                ; preds = %2
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1343, metadata !DIExpression()), !dbg !1345
  %10 = load ptr, ptr %3, align 4, !dbg !1346
  %11 = load ptr, ptr %3, align 4, !dbg !1347
  %12 = load i32, ptr %4, align 4, !dbg !1348
  %13 = call i32 @chunk_size(ptr noundef %11, i32 noundef %12), !dbg !1349
  %14 = call i32 @bucket_idx(ptr noundef %10, i32 noundef %13), !dbg !1350
  store i32 %14, ptr %5, align 4, !dbg !1345
  %15 = load ptr, ptr %3, align 4, !dbg !1351
  %16 = load i32, ptr %4, align 4, !dbg !1352
  %17 = load i32, ptr %5, align 4, !dbg !1353
  call void @free_list_remove_bidx(ptr noundef %15, i32 noundef %16, i32 noundef %17), !dbg !1354
  br label %18, !dbg !1355

18:                                               ; preds = %9, %2
  ret void, !dbg !1356
}

; Function Attrs: noinline nounwind optnone
define internal void @merge_chunks(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 !dbg !1357 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1358, metadata !DIExpression()), !dbg !1359
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1360, metadata !DIExpression()), !dbg !1361
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1362, metadata !DIExpression()), !dbg !1363
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1364, metadata !DIExpression()), !dbg !1365
  %8 = load ptr, ptr %4, align 4, !dbg !1366
  %9 = load i32, ptr %5, align 4, !dbg !1367
  %10 = call i32 @chunk_size(ptr noundef %8, i32 noundef %9), !dbg !1368
  %11 = load ptr, ptr %4, align 4, !dbg !1369
  %12 = load i32, ptr %6, align 4, !dbg !1370
  %13 = call i32 @chunk_size(ptr noundef %11, i32 noundef %12), !dbg !1371
  %14 = add i32 %10, %13, !dbg !1372
  store i32 %14, ptr %7, align 4, !dbg !1365
  %15 = load ptr, ptr %4, align 4, !dbg !1373
  %16 = load i32, ptr %5, align 4, !dbg !1374
  %17 = load i32, ptr %7, align 4, !dbg !1375
  call void @set_chunk_size(ptr noundef %15, i32 noundef %16, i32 noundef %17), !dbg !1376
  %18 = load ptr, ptr %4, align 4, !dbg !1377
  %19 = load ptr, ptr %4, align 4, !dbg !1378
  %20 = load i32, ptr %6, align 4, !dbg !1379
  %21 = call i32 @right_chunk(ptr noundef %19, i32 noundef %20), !dbg !1380
  %22 = load i32, ptr %7, align 4, !dbg !1381
  call void @set_left_chunk_size(ptr noundef %18, i32 noundef %21, i32 noundef %22), !dbg !1382
  ret void, !dbg !1383
}

; Function Attrs: noinline nounwind optnone
define internal i32 @chunksz_to_bytes(ptr noundef %0, i32 noundef %1) #0 !dbg !1384 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1387, metadata !DIExpression()), !dbg !1388
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1389, metadata !DIExpression()), !dbg !1390
  %5 = load i32, ptr %4, align 4, !dbg !1391
  %6 = mul i32 %5, 8, !dbg !1392
  %7 = load ptr, ptr %3, align 4, !dbg !1393
  %8 = call i32 @chunk_header_bytes(ptr noundef %7), !dbg !1394
  %9 = sub i32 %6, %8, !dbg !1395
  ret i32 %9, !dbg !1396
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: noinline nounwind optnone
define hidden void @sys_heap_init(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 !dbg !1397 {
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
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1400, metadata !DIExpression()), !dbg !1401
  store ptr %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1402, metadata !DIExpression()), !dbg !1403
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1404, metadata !DIExpression()), !dbg !1405
  %14 = load i32, ptr %6, align 4, !dbg !1406
  %15 = call i32 @heap_footer_bytes(i32 noundef %14), !dbg !1407
  %16 = load i32, ptr %6, align 4, !dbg !1408
  %17 = sub i32 %16, %15, !dbg !1408
  store i32 %17, ptr %6, align 4, !dbg !1408
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1409, metadata !DIExpression()), !dbg !1410
  %18 = load ptr, ptr %5, align 4, !dbg !1411
  %19 = ptrtoint ptr %18 to i32, !dbg !1412
  %20 = add i32 %19, 7, !dbg !1413
  %21 = udiv i32 %20, 8, !dbg !1414
  %22 = mul i32 %21, 8, !dbg !1415
  store i32 %22, ptr %7, align 4, !dbg !1410
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1416, metadata !DIExpression()), !dbg !1417
  %23 = load ptr, ptr %5, align 4, !dbg !1418
  %24 = load i32, ptr %6, align 4, !dbg !1419
  %25 = getelementptr inbounds i8, ptr %23, i32 %24, !dbg !1420
  %26 = ptrtoint ptr %25 to i32, !dbg !1421
  %27 = udiv i32 %26, 8, !dbg !1422
  %28 = mul i32 %27, 8, !dbg !1423
  store i32 %28, ptr %8, align 4, !dbg !1417
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1424, metadata !DIExpression()), !dbg !1425
  %29 = load i32, ptr %8, align 4, !dbg !1426
  %30 = load i32, ptr %7, align 4, !dbg !1427
  %31 = sub i32 %29, %30, !dbg !1428
  %32 = udiv i32 %31, 8, !dbg !1429
  store i32 %32, ptr %9, align 4, !dbg !1425
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1430, metadata !DIExpression()), !dbg !1431
  %33 = load i32, ptr %7, align 4, !dbg !1432
  %34 = inttoptr i32 %33 to ptr, !dbg !1433
  store ptr %34, ptr %10, align 4, !dbg !1431
  %35 = load ptr, ptr %10, align 4, !dbg !1434
  %36 = load ptr, ptr %4, align 4, !dbg !1435
  %37 = getelementptr inbounds %struct.sys_heap, ptr %36, i32 0, i32 0, !dbg !1436
  store ptr %35, ptr %37, align 4, !dbg !1437
  %38 = load i32, ptr %9, align 4, !dbg !1438
  %39 = load ptr, ptr %10, align 4, !dbg !1439
  %40 = getelementptr inbounds %struct.z_heap, ptr %39, i32 0, i32 1, !dbg !1440
  store i32 %38, ptr %40, align 4, !dbg !1441
  %41 = load ptr, ptr %10, align 4, !dbg !1442
  %42 = getelementptr inbounds %struct.z_heap, ptr %41, i32 0, i32 2, !dbg !1443
  store i32 0, ptr %42, align 4, !dbg !1444
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1445, metadata !DIExpression()), !dbg !1446
  %43 = load ptr, ptr %10, align 4, !dbg !1447
  %44 = load i32, ptr %9, align 4, !dbg !1448
  %45 = call i32 @bucket_idx(ptr noundef %43, i32 noundef %44), !dbg !1449
  %46 = add nsw i32 %45, 1, !dbg !1450
  store i32 %46, ptr %11, align 4, !dbg !1446
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1451, metadata !DIExpression()), !dbg !1452
  %47 = load i32, ptr %11, align 4, !dbg !1453
  %48 = mul i32 %47, 4, !dbg !1454
  %49 = add i32 16, %48, !dbg !1455
  %50 = call i32 @chunksz(i32 noundef %49), !dbg !1456
  store i32 %50, ptr %12, align 4, !dbg !1452
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1457, metadata !DIExpression()), !dbg !1459
  store i32 0, ptr %13, align 4, !dbg !1459
  br label %51, !dbg !1460

51:                                               ; preds = %61, %3
  %52 = load i32, ptr %13, align 4, !dbg !1461
  %53 = load i32, ptr %11, align 4, !dbg !1463
  %54 = icmp slt i32 %52, %53, !dbg !1464
  br i1 %54, label %55, label %64, !dbg !1465

55:                                               ; preds = %51
  %56 = load ptr, ptr %10, align 4, !dbg !1466
  %57 = getelementptr inbounds %struct.z_heap, ptr %56, i32 0, i32 3, !dbg !1468
  %58 = load i32, ptr %13, align 4, !dbg !1469
  %59 = getelementptr inbounds [0 x %struct.z_heap_bucket], ptr %57, i32 0, i32 %58, !dbg !1466
  %60 = getelementptr inbounds %struct.z_heap_bucket, ptr %59, i32 0, i32 0, !dbg !1470
  store i32 0, ptr %60, align 4, !dbg !1471
  br label %61, !dbg !1472

61:                                               ; preds = %55
  %62 = load i32, ptr %13, align 4, !dbg !1473
  %63 = add nsw i32 %62, 1, !dbg !1473
  store i32 %63, ptr %13, align 4, !dbg !1473
  br label %51, !dbg !1474, !llvm.loop !1475

64:                                               ; preds = %51
  %65 = load ptr, ptr %10, align 4, !dbg !1477
  %66 = load i32, ptr %12, align 4, !dbg !1478
  call void @set_chunk_size(ptr noundef %65, i32 noundef 0, i32 noundef %66), !dbg !1479
  %67 = load ptr, ptr %10, align 4, !dbg !1480
  call void @set_left_chunk_size(ptr noundef %67, i32 noundef 0, i32 noundef 0), !dbg !1481
  %68 = load ptr, ptr %10, align 4, !dbg !1482
  call void @set_chunk_used(ptr noundef %68, i32 noundef 0, i1 noundef zeroext true), !dbg !1483
  %69 = load ptr, ptr %10, align 4, !dbg !1484
  %70 = load i32, ptr %12, align 4, !dbg !1485
  %71 = load i32, ptr %9, align 4, !dbg !1486
  %72 = load i32, ptr %12, align 4, !dbg !1487
  %73 = sub i32 %71, %72, !dbg !1488
  call void @set_chunk_size(ptr noundef %69, i32 noundef %70, i32 noundef %73), !dbg !1489
  %74 = load ptr, ptr %10, align 4, !dbg !1490
  %75 = load i32, ptr %12, align 4, !dbg !1491
  %76 = load i32, ptr %12, align 4, !dbg !1492
  call void @set_left_chunk_size(ptr noundef %74, i32 noundef %75, i32 noundef %76), !dbg !1493
  %77 = load ptr, ptr %10, align 4, !dbg !1494
  %78 = load i32, ptr %9, align 4, !dbg !1495
  call void @set_chunk_size(ptr noundef %77, i32 noundef %78, i32 noundef 0), !dbg !1496
  %79 = load ptr, ptr %10, align 4, !dbg !1497
  %80 = load i32, ptr %9, align 4, !dbg !1498
  %81 = load i32, ptr %9, align 4, !dbg !1499
  %82 = load i32, ptr %12, align 4, !dbg !1500
  %83 = sub i32 %81, %82, !dbg !1501
  call void @set_left_chunk_size(ptr noundef %79, i32 noundef %80, i32 noundef %83), !dbg !1502
  %84 = load ptr, ptr %10, align 4, !dbg !1503
  %85 = load i32, ptr %9, align 4, !dbg !1504
  call void @set_chunk_used(ptr noundef %84, i32 noundef %85, i1 noundef zeroext true), !dbg !1505
  %86 = load ptr, ptr %10, align 4, !dbg !1506
  %87 = load i32, ptr %12, align 4, !dbg !1507
  call void @free_list_add(ptr noundef %86, i32 noundef %87), !dbg !1508
  ret void, !dbg !1509
}

; Function Attrs: noinline nounwind optnone
define internal i32 @heap_footer_bytes(i32 noundef %0) #0 !dbg !1510 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1513, metadata !DIExpression()), !dbg !1514
  %3 = load i32, ptr %2, align 4, !dbg !1515
  %4 = call zeroext i1 @big_heap_bytes(i32 noundef %3), !dbg !1516
  %5 = zext i1 %4 to i64, !dbg !1516
  %6 = select i1 %4, i32 8, i32 4, !dbg !1516
  ret i32 %6, !dbg !1517
}

; Function Attrs: noinline nounwind optnone
define internal i32 @bucket_idx(ptr noundef %0, i32 noundef %1) #0 !dbg !1518 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1521, metadata !DIExpression()), !dbg !1522
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1523, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1525, metadata !DIExpression()), !dbg !1526
  %6 = load i32, ptr %4, align 4, !dbg !1527
  %7 = load ptr, ptr %3, align 4, !dbg !1528
  %8 = call i32 @min_chunk_size(ptr noundef %7), !dbg !1529
  %9 = sub i32 %6, %8, !dbg !1530
  %10 = add i32 %9, 1, !dbg !1531
  store i32 %10, ptr %5, align 4, !dbg !1526
  %11 = load i32, ptr %5, align 4, !dbg !1532
  %12 = call i32 @llvm.ctlz.i32(i32 %11, i1 false), !dbg !1533
  %13 = sub nsw i32 31, %12, !dbg !1534
  ret i32 %13, !dbg !1535
}

; Function Attrs: noinline nounwind optnone
define internal i32 @chunksz(i32 noundef %0) #0 !dbg !1536 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1539, metadata !DIExpression()), !dbg !1540
  %3 = load i32, ptr %2, align 4, !dbg !1541
  %4 = add i32 %3, 8, !dbg !1542
  %5 = sub i32 %4, 1, !dbg !1543
  %6 = udiv i32 %5, 8, !dbg !1544
  ret i32 %6, !dbg !1545
}

; Function Attrs: noinline nounwind optnone
define internal void @set_chunk_size(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 !dbg !1546 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1549, metadata !DIExpression()), !dbg !1550
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1551, metadata !DIExpression()), !dbg !1552
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1553, metadata !DIExpression()), !dbg !1554
  %7 = load ptr, ptr %4, align 4, !dbg !1555
  %8 = load i32, ptr %5, align 4, !dbg !1556
  %9 = load i32, ptr %6, align 4, !dbg !1557
  %10 = shl i32 %9, 1, !dbg !1558
  call void @chunk_set(ptr noundef %7, i32 noundef %8, i8 noundef zeroext 1, i32 noundef %10), !dbg !1559
  ret void, !dbg !1560
}

; Function Attrs: noinline nounwind optnone
define internal void @set_left_chunk_size(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 !dbg !1561 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1562, metadata !DIExpression()), !dbg !1563
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1564, metadata !DIExpression()), !dbg !1565
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1566, metadata !DIExpression()), !dbg !1567
  %7 = load ptr, ptr %4, align 4, !dbg !1568
  %8 = load i32, ptr %5, align 4, !dbg !1569
  %9 = load i32, ptr %6, align 4, !dbg !1570
  call void @chunk_set(ptr noundef %7, i32 noundef %8, i8 noundef zeroext 0, i32 noundef %9), !dbg !1571
  ret void, !dbg !1572
}

declare i64 @z_timeout_expires(ptr noundef) #3

declare i64 @z_timeout_remaining(ptr noundef) #3

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @sys_sflist_is_empty(ptr noundef %0) #0 !dbg !1573 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1577, metadata !DIExpression()), !dbg !1578
  %3 = load ptr, ptr %2, align 4, !dbg !1579
  %4 = call ptr @sys_sflist_peek_head(ptr noundef %3), !dbg !1580
  %5 = icmp eq ptr %4, null, !dbg !1581
  ret i1 %5, !dbg !1582
}

; Function Attrs: noinline nounwind optnone
define internal ptr @sys_sflist_peek_head(ptr noundef %0) #0 !dbg !1583 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1586, metadata !DIExpression()), !dbg !1587
  %3 = load ptr, ptr %2, align 4, !dbg !1588
  %4 = getelementptr inbounds %struct._sflist, ptr %3, i32 0, i32 0, !dbg !1589
  %5 = load ptr, ptr %4, align 4, !dbg !1589
  ret ptr %5, !dbg !1590
}

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @big_heap(ptr noundef %0) #0 !dbg !1591 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1594, metadata !DIExpression()), !dbg !1595
  %3 = load ptr, ptr %2, align 4, !dbg !1596
  %4 = getelementptr inbounds %struct.z_heap, ptr %3, i32 0, i32 1, !dbg !1597
  %5 = load i32, ptr %4, align 4, !dbg !1597
  %6 = call zeroext i1 @big_heap_chunks(i32 noundef %5), !dbg !1598
  ret i1 %6, !dbg !1599
}

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @big_heap_chunks(i32 noundef %0) #0 !dbg !1600 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1603, metadata !DIExpression()), !dbg !1604
  ret i1 false, !dbg !1605
}

; Function Attrs: noinline nounwind optnone
define internal i32 @left_chunk(ptr noundef %0, i32 noundef %1) #0 !dbg !1608 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1609, metadata !DIExpression()), !dbg !1610
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1611, metadata !DIExpression()), !dbg !1612
  %5 = load i32, ptr %4, align 4, !dbg !1613
  %6 = load ptr, ptr %3, align 4, !dbg !1614
  %7 = load i32, ptr %4, align 4, !dbg !1615
  %8 = call i32 @chunk_field(ptr noundef %6, i32 noundef %7, i8 noundef zeroext 0), !dbg !1616
  %9 = sub i32 %5, %8, !dbg !1617
  ret i32 %9, !dbg !1618
}

; Function Attrs: noinline nounwind optnone
define internal i32 @chunk_field(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2) #0 !dbg !1619 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  store ptr %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1622, metadata !DIExpression()), !dbg !1623
  store i32 %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1624, metadata !DIExpression()), !dbg !1625
  store i8 %2, ptr %7, align 1
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1626, metadata !DIExpression()), !dbg !1627
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1628, metadata !DIExpression()), !dbg !1629
  %10 = load ptr, ptr %5, align 4, !dbg !1630
  %11 = call ptr @chunk_buf(ptr noundef %10), !dbg !1631
  store ptr %11, ptr %8, align 4, !dbg !1629
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1632, metadata !DIExpression()), !dbg !1633
  %12 = load ptr, ptr %8, align 4, !dbg !1634
  %13 = load i32, ptr %6, align 4, !dbg !1635
  %14 = getelementptr inbounds %struct.chunk_unit_t, ptr %12, i32 %13, !dbg !1634
  store ptr %14, ptr %9, align 4, !dbg !1633
  %15 = load ptr, ptr %5, align 4, !dbg !1636
  %16 = call zeroext i1 @big_heap(ptr noundef %15), !dbg !1638
  br i1 %16, label %17, label %23, !dbg !1639

17:                                               ; preds = %3
  %18 = load ptr, ptr %9, align 4, !dbg !1640
  %19 = load i8, ptr %7, align 1, !dbg !1642
  %20 = zext i8 %19 to i32, !dbg !1643
  %21 = getelementptr inbounds i32, ptr %18, i32 %20, !dbg !1643
  %22 = load i32, ptr %21, align 4, !dbg !1643
  store i32 %22, ptr %4, align 4, !dbg !1644
  br label %30, !dbg !1644

23:                                               ; preds = %3
  %24 = load ptr, ptr %9, align 4, !dbg !1645
  %25 = load i8, ptr %7, align 1, !dbg !1647
  %26 = zext i8 %25 to i32, !dbg !1648
  %27 = getelementptr inbounds i16, ptr %24, i32 %26, !dbg !1648
  %28 = load i16, ptr %27, align 2, !dbg !1648
  %29 = zext i16 %28 to i32, !dbg !1648
  store i32 %29, ptr %4, align 4, !dbg !1649
  br label %30, !dbg !1649

30:                                               ; preds = %23, %17
  %31 = load i32, ptr %4, align 4, !dbg !1650
  ret i32 %31, !dbg !1650
}

; Function Attrs: noinline nounwind optnone
define internal void @free_list_remove_bidx(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 !dbg !1651 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1654, metadata !DIExpression()), !dbg !1655
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1656, metadata !DIExpression()), !dbg !1657
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1658, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1660, metadata !DIExpression()), !dbg !1661
  %10 = load ptr, ptr %4, align 4, !dbg !1662
  %11 = getelementptr inbounds %struct.z_heap, ptr %10, i32 0, i32 3, !dbg !1663
  %12 = load i32, ptr %6, align 4, !dbg !1664
  %13 = getelementptr inbounds [0 x %struct.z_heap_bucket], ptr %11, i32 0, i32 %12, !dbg !1662
  store ptr %13, ptr %7, align 4, !dbg !1661
  %14 = load ptr, ptr %4, align 4, !dbg !1665
  %15 = load i32, ptr %5, align 4, !dbg !1667
  %16 = call i32 @next_free_chunk(ptr noundef %14, i32 noundef %15), !dbg !1668
  %17 = load i32, ptr %5, align 4, !dbg !1669
  %18 = icmp eq i32 %16, %17, !dbg !1670
  br i1 %18, label %19, label %29, !dbg !1671

19:                                               ; preds = %3
  %20 = load i32, ptr %6, align 4, !dbg !1672
  %21 = shl i32 1, %20, !dbg !1674
  %22 = xor i32 %21, -1, !dbg !1675
  %23 = load ptr, ptr %4, align 4, !dbg !1676
  %24 = getelementptr inbounds %struct.z_heap, ptr %23, i32 0, i32 2, !dbg !1677
  %25 = load i32, ptr %24, align 4, !dbg !1678
  %26 = and i32 %25, %22, !dbg !1678
  store i32 %26, ptr %24, align 4, !dbg !1678
  %27 = load ptr, ptr %7, align 4, !dbg !1679
  %28 = getelementptr inbounds %struct.z_heap_bucket, ptr %27, i32 0, i32 0, !dbg !1680
  store i32 0, ptr %28, align 4, !dbg !1681
  br label %45, !dbg !1682

29:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1683, metadata !DIExpression()), !dbg !1685
  %30 = load ptr, ptr %4, align 4, !dbg !1686
  %31 = load i32, ptr %5, align 4, !dbg !1687
  %32 = call i32 @prev_free_chunk(ptr noundef %30, i32 noundef %31), !dbg !1688
  store i32 %32, ptr %8, align 4, !dbg !1685
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1689, metadata !DIExpression()), !dbg !1690
  %33 = load ptr, ptr %4, align 4, !dbg !1691
  %34 = load i32, ptr %5, align 4, !dbg !1692
  %35 = call i32 @next_free_chunk(ptr noundef %33, i32 noundef %34), !dbg !1693
  store i32 %35, ptr %9, align 4, !dbg !1690
  %36 = load i32, ptr %9, align 4, !dbg !1694
  %37 = load ptr, ptr %7, align 4, !dbg !1695
  %38 = getelementptr inbounds %struct.z_heap_bucket, ptr %37, i32 0, i32 0, !dbg !1696
  store i32 %36, ptr %38, align 4, !dbg !1697
  %39 = load ptr, ptr %4, align 4, !dbg !1698
  %40 = load i32, ptr %8, align 4, !dbg !1699
  %41 = load i32, ptr %9, align 4, !dbg !1700
  call void @set_next_free_chunk(ptr noundef %39, i32 noundef %40, i32 noundef %41), !dbg !1701
  %42 = load ptr, ptr %4, align 4, !dbg !1702
  %43 = load i32, ptr %9, align 4, !dbg !1703
  %44 = load i32, ptr %8, align 4, !dbg !1704
  call void @set_prev_free_chunk(ptr noundef %42, i32 noundef %43, i32 noundef %44), !dbg !1705
  br label %45

45:                                               ; preds = %29, %19
  ret void, !dbg !1706
}

; Function Attrs: noinline nounwind optnone
define internal i32 @next_free_chunk(ptr noundef %0, i32 noundef %1) #0 !dbg !1707 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1708, metadata !DIExpression()), !dbg !1709
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1710, metadata !DIExpression()), !dbg !1711
  %5 = load ptr, ptr %3, align 4, !dbg !1712
  %6 = load i32, ptr %4, align 4, !dbg !1713
  %7 = call i32 @chunk_field(ptr noundef %5, i32 noundef %6, i8 noundef zeroext 3), !dbg !1714
  ret i32 %7, !dbg !1715
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #1

; Function Attrs: noinline nounwind optnone
define internal i32 @prev_free_chunk(ptr noundef %0, i32 noundef %1) #0 !dbg !1716 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1717, metadata !DIExpression()), !dbg !1718
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1719, metadata !DIExpression()), !dbg !1720
  %5 = load ptr, ptr %3, align 4, !dbg !1721
  %6 = load i32, ptr %4, align 4, !dbg !1722
  %7 = call i32 @chunk_field(ptr noundef %5, i32 noundef %6, i8 noundef zeroext 2), !dbg !1723
  ret i32 %7, !dbg !1724
}

; Function Attrs: noinline nounwind optnone
define internal void @set_next_free_chunk(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 !dbg !1725 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1726, metadata !DIExpression()), !dbg !1727
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1728, metadata !DIExpression()), !dbg !1729
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1730, metadata !DIExpression()), !dbg !1731
  %7 = load ptr, ptr %4, align 4, !dbg !1732
  %8 = load i32, ptr %5, align 4, !dbg !1733
  %9 = load i32, ptr %6, align 4, !dbg !1734
  call void @chunk_set(ptr noundef %7, i32 noundef %8, i8 noundef zeroext 3, i32 noundef %9), !dbg !1735
  ret void, !dbg !1736
}

; Function Attrs: noinline nounwind optnone
define internal void @set_prev_free_chunk(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 !dbg !1737 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1738, metadata !DIExpression()), !dbg !1739
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1740, metadata !DIExpression()), !dbg !1741
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1742, metadata !DIExpression()), !dbg !1743
  %7 = load ptr, ptr %4, align 4, !dbg !1744
  %8 = load i32, ptr %5, align 4, !dbg !1745
  %9 = load i32, ptr %6, align 4, !dbg !1746
  call void @chunk_set(ptr noundef %7, i32 noundef %8, i8 noundef zeroext 2, i32 noundef %9), !dbg !1747
  ret void, !dbg !1748
}

; Function Attrs: noinline nounwind optnone
define internal void @chunk_set(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2, i32 noundef %3) #0 !dbg !1749 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  store ptr %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1752, metadata !DIExpression()), !dbg !1753
  store i32 %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1754, metadata !DIExpression()), !dbg !1755
  store i8 %2, ptr %7, align 1
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1756, metadata !DIExpression()), !dbg !1757
  store i32 %3, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1758, metadata !DIExpression()), !dbg !1759
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1760, metadata !DIExpression()), !dbg !1761
  %11 = load ptr, ptr %5, align 4, !dbg !1762
  %12 = call ptr @chunk_buf(ptr noundef %11), !dbg !1763
  store ptr %12, ptr %9, align 4, !dbg !1761
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1764, metadata !DIExpression()), !dbg !1765
  %13 = load ptr, ptr %9, align 4, !dbg !1766
  %14 = load i32, ptr %6, align 4, !dbg !1767
  %15 = getelementptr inbounds %struct.chunk_unit_t, ptr %13, i32 %14, !dbg !1766
  store ptr %15, ptr %10, align 4, !dbg !1765
  %16 = load ptr, ptr %5, align 4, !dbg !1768
  %17 = call zeroext i1 @big_heap(ptr noundef %16), !dbg !1770
  br i1 %17, label %18, label %24, !dbg !1771

18:                                               ; preds = %4
  %19 = load i32, ptr %8, align 4, !dbg !1772
  %20 = load ptr, ptr %10, align 4, !dbg !1774
  %21 = load i8, ptr %7, align 1, !dbg !1775
  %22 = zext i8 %21 to i32, !dbg !1776
  %23 = getelementptr inbounds i32, ptr %20, i32 %22, !dbg !1776
  store i32 %19, ptr %23, align 4, !dbg !1777
  br label %31, !dbg !1778

24:                                               ; preds = %4
  %25 = load i32, ptr %8, align 4, !dbg !1779
  %26 = trunc i32 %25 to i16, !dbg !1779
  %27 = load ptr, ptr %10, align 4, !dbg !1781
  %28 = load i8, ptr %7, align 1, !dbg !1782
  %29 = zext i8 %28 to i32, !dbg !1783
  %30 = getelementptr inbounds i16, ptr %27, i32 %29, !dbg !1783
  store i16 %26, ptr %30, align 2, !dbg !1784
  br label %31

31:                                               ; preds = %24, %18
  ret void, !dbg !1785
}

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @solo_free_header(ptr noundef %0, i32 noundef %1) #0 !dbg !1786 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1787, metadata !DIExpression()), !dbg !1788
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1789, metadata !DIExpression()), !dbg !1790
  %5 = load ptr, ptr %3, align 4, !dbg !1791
  %6 = call zeroext i1 @big_heap(ptr noundef %5), !dbg !1792
  br i1 %6, label %7, label %12, !dbg !1793

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 4, !dbg !1794
  %9 = load i32, ptr %4, align 4, !dbg !1795
  %10 = call i32 @chunk_size(ptr noundef %8, i32 noundef %9), !dbg !1796
  %11 = icmp eq i32 %10, 1, !dbg !1797
  br label %12

12:                                               ; preds = %7, %2
  %13 = phi i1 [ false, %2 ], [ %11, %7 ], !dbg !1798
  ret i1 %13, !dbg !1799
}

; Function Attrs: noinline nounwind optnone
define internal void @free_list_add_bidx(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 !dbg !1800 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1801, metadata !DIExpression()), !dbg !1802
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1803, metadata !DIExpression()), !dbg !1804
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1805, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1807, metadata !DIExpression()), !dbg !1808
  %10 = load ptr, ptr %4, align 4, !dbg !1809
  %11 = getelementptr inbounds %struct.z_heap, ptr %10, i32 0, i32 3, !dbg !1810
  %12 = load i32, ptr %6, align 4, !dbg !1811
  %13 = getelementptr inbounds [0 x %struct.z_heap_bucket], ptr %11, i32 0, i32 %12, !dbg !1809
  store ptr %13, ptr %7, align 4, !dbg !1808
  %14 = load ptr, ptr %7, align 4, !dbg !1812
  %15 = getelementptr inbounds %struct.z_heap_bucket, ptr %14, i32 0, i32 0, !dbg !1814
  %16 = load i32, ptr %15, align 4, !dbg !1814
  %17 = icmp eq i32 %16, 0, !dbg !1815
  br i1 %17, label %18, label %34, !dbg !1816

18:                                               ; preds = %3
  %19 = load i32, ptr %6, align 4, !dbg !1817
  %20 = shl i32 1, %19, !dbg !1819
  %21 = load ptr, ptr %4, align 4, !dbg !1820
  %22 = getelementptr inbounds %struct.z_heap, ptr %21, i32 0, i32 2, !dbg !1821
  %23 = load i32, ptr %22, align 4, !dbg !1822
  %24 = or i32 %23, %20, !dbg !1822
  store i32 %24, ptr %22, align 4, !dbg !1822
  %25 = load i32, ptr %5, align 4, !dbg !1823
  %26 = load ptr, ptr %7, align 4, !dbg !1824
  %27 = getelementptr inbounds %struct.z_heap_bucket, ptr %26, i32 0, i32 0, !dbg !1825
  store i32 %25, ptr %27, align 4, !dbg !1826
  %28 = load ptr, ptr %4, align 4, !dbg !1827
  %29 = load i32, ptr %5, align 4, !dbg !1828
  %30 = load i32, ptr %5, align 4, !dbg !1829
  call void @set_prev_free_chunk(ptr noundef %28, i32 noundef %29, i32 noundef %30), !dbg !1830
  %31 = load ptr, ptr %4, align 4, !dbg !1831
  %32 = load i32, ptr %5, align 4, !dbg !1832
  %33 = load i32, ptr %5, align 4, !dbg !1833
  call void @set_next_free_chunk(ptr noundef %31, i32 noundef %32, i32 noundef %33), !dbg !1834
  br label %53, !dbg !1835

34:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1836, metadata !DIExpression()), !dbg !1838
  %35 = load ptr, ptr %7, align 4, !dbg !1839
  %36 = getelementptr inbounds %struct.z_heap_bucket, ptr %35, i32 0, i32 0, !dbg !1840
  %37 = load i32, ptr %36, align 4, !dbg !1840
  store i32 %37, ptr %8, align 4, !dbg !1838
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1841, metadata !DIExpression()), !dbg !1842
  %38 = load ptr, ptr %4, align 4, !dbg !1843
  %39 = load i32, ptr %8, align 4, !dbg !1844
  %40 = call i32 @prev_free_chunk(ptr noundef %38, i32 noundef %39), !dbg !1845
  store i32 %40, ptr %9, align 4, !dbg !1842
  %41 = load ptr, ptr %4, align 4, !dbg !1846
  %42 = load i32, ptr %5, align 4, !dbg !1847
  %43 = load i32, ptr %9, align 4, !dbg !1848
  call void @set_prev_free_chunk(ptr noundef %41, i32 noundef %42, i32 noundef %43), !dbg !1849
  %44 = load ptr, ptr %4, align 4, !dbg !1850
  %45 = load i32, ptr %5, align 4, !dbg !1851
  %46 = load i32, ptr %8, align 4, !dbg !1852
  call void @set_next_free_chunk(ptr noundef %44, i32 noundef %45, i32 noundef %46), !dbg !1853
  %47 = load ptr, ptr %4, align 4, !dbg !1854
  %48 = load i32, ptr %9, align 4, !dbg !1855
  %49 = load i32, ptr %5, align 4, !dbg !1856
  call void @set_next_free_chunk(ptr noundef %47, i32 noundef %48, i32 noundef %49), !dbg !1857
  %50 = load ptr, ptr %4, align 4, !dbg !1858
  %51 = load i32, ptr %8, align 4, !dbg !1859
  %52 = load i32, ptr %5, align 4, !dbg !1860
  call void @set_prev_free_chunk(ptr noundef %50, i32 noundef %51, i32 noundef %52), !dbg !1861
  br label %53

53:                                               ; preds = %34, %18
  ret void, !dbg !1862
}

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @big_heap_bytes(i32 noundef %0) #0 !dbg !1863 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1866, metadata !DIExpression()), !dbg !1867
  %3 = load i32, ptr %2, align 4, !dbg !1868
  %4 = udiv i32 %3, 8, !dbg !1869
  %5 = call zeroext i1 @big_heap_chunks(i32 noundef %4), !dbg !1870
  ret i1 %5, !dbg !1871
}

; Function Attrs: noinline nounwind optnone
define internal i32 @min_chunk_size(ptr noundef %0) #0 !dbg !1872 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1875, metadata !DIExpression()), !dbg !1876
  %3 = load ptr, ptr %2, align 4, !dbg !1877
  %4 = call i32 @bytes_to_chunksz(ptr noundef %3, i32 noundef 1), !dbg !1878
  ret i32 %4, !dbg !1879
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #1

attributes #0 = { noinline nounwind optnone "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!135, !136, !137, !138, !139, !140, !141, !142}
!llvm.ident = !{!143}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !93, splitDebugInlining: false, nameTableKind: None)
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
!25 = !DIEnumerator(name: "K_OBJ_DRIVER_PWM", value: 18)
!26 = !DIEnumerator(name: "K_OBJ_DRIVER_RESET", value: 19)
!27 = !DIEnumerator(name: "K_OBJ_DRIVER_UART", value: 20)
!28 = !DIEnumerator(name: "K_OBJ_DRIVER_CRYPTO", value: 21)
!29 = !DIEnumerator(name: "K_OBJ_DRIVER_ADC", value: 22)
!30 = !DIEnumerator(name: "K_OBJ_DRIVER_AUXDISPLAY", value: 23)
!31 = !DIEnumerator(name: "K_OBJ_DRIVER_BBRAM", value: 24)
!32 = !DIEnumerator(name: "K_OBJ_DRIVER_CAN", value: 25)
!33 = !DIEnumerator(name: "K_OBJ_DRIVER_CHARGER", value: 26)
!34 = !DIEnumerator(name: "K_OBJ_DRIVER_COREDUMP", value: 27)
!35 = !DIEnumerator(name: "K_OBJ_DRIVER_COUNTER", value: 28)
!36 = !DIEnumerator(name: "K_OBJ_DRIVER_DAC", value: 29)
!37 = !DIEnumerator(name: "K_OBJ_DRIVER_DAI", value: 30)
!38 = !DIEnumerator(name: "K_OBJ_DRIVER_DMA", value: 31)
!39 = !DIEnumerator(name: "K_OBJ_DRIVER_EDAC", value: 32)
!40 = !DIEnumerator(name: "K_OBJ_DRIVER_EEPROM", value: 33)
!41 = !DIEnumerator(name: "K_OBJ_DRIVER_FUEL_GAUGE_EMUL", value: 34)
!42 = !DIEnumerator(name: "K_OBJ_DRIVER_EMUL_SENSOR_BACKEND_API", value: 35)
!43 = !DIEnumerator(name: "K_OBJ_DRIVER_ENTROPY", value: 36)
!44 = !DIEnumerator(name: "K_OBJ_DRIVER_ESPI", value: 37)
!45 = !DIEnumerator(name: "K_OBJ_DRIVER_ESPI_SAF", value: 38)
!46 = !DIEnumerator(name: "K_OBJ_DRIVER_FLASH", value: 39)
!47 = !DIEnumerator(name: "K_OBJ_DRIVER_FPGA", value: 40)
!48 = !DIEnumerator(name: "K_OBJ_DRIVER_FUEL_GAUGE", value: 41)
!49 = !DIEnumerator(name: "K_OBJ_DRIVER_HWSPINLOCK", value: 42)
!50 = !DIEnumerator(name: "K_OBJ_DRIVER_I2C", value: 43)
!51 = !DIEnumerator(name: "K_OBJ_DRIVER_I2S", value: 44)
!52 = !DIEnumerator(name: "K_OBJ_DRIVER_I3C", value: 45)
!53 = !DIEnumerator(name: "K_OBJ_DRIVER_IPM", value: 46)
!54 = !DIEnumerator(name: "K_OBJ_DRIVER_KSCAN", value: 47)
!55 = !DIEnumerator(name: "K_OBJ_DRIVER_LED", value: 48)
!56 = !DIEnumerator(name: "K_OBJ_DRIVER_MBOX", value: 49)
!57 = !DIEnumerator(name: "K_OBJ_DRIVER_MDIO", value: 50)
!58 = !DIEnumerator(name: "K_OBJ_DRIVER_MIPI_DSI", value: 51)
!59 = !DIEnumerator(name: "K_OBJ_DRIVER_PECI", value: 52)
!60 = !DIEnumerator(name: "K_OBJ_DRIVER_PS2", value: 53)
!61 = !DIEnumerator(name: "K_OBJ_DRIVER_PTP_CLOCK", value: 54)
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
!141 = !{i32 8, !"PIC Level", i32 2}
!142 = !{i32 7, !"PIE Level", i32 2}
!143 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
!144 = distinct !DISubprogram(name: "z_impl_k_object_access_grant", scope: !4, file: !4, line: 223, type: !145, scopeLine: 225, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !252)
!145 = !DISubroutineType(types: !146)
!146 = !{null, !147, !149}
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 32)
!148 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 32)
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_thread", file: !151, line: 250, size: 896, elements: !152)
!151 = !DIFile(filename: "include/zephyr/kernel/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!152 = !{!153, !218, !231, !232, !233, !234, !253}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !150, file: !151, line: 252, baseType: !154, size: 384)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_base", file: !151, line: 58, size: 384, elements: !155)
!155 = !{!156, !182, !190, !191, !192, !203, !204, !205}
!156 = !DIDerivedType(tag: DW_TAG_member, scope: !154, file: !151, line: 61, baseType: !157, size: 64)
!157 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !154, file: !151, line: 61, size: 64, elements: !158)
!158 = !{!159, !175}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_dlist", scope: !157, file: !151, line: 62, baseType: !160, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dnode_t", file: !161, line: 55, baseType: !162)
!161 = !DIFile(filename: "include/zephyr/sys/dlist.h", directory: "/home/sri/zephyrproject/zephyr")
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_dnode", file: !161, line: 37, size: 64, elements: !163)
!163 = !{!164, !170}
!164 = !DIDerivedType(tag: DW_TAG_member, scope: !162, file: !161, line: 38, baseType: !165, size: 32)
!165 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !162, file: !161, line: 38, size: 32, elements: !166)
!166 = !{!167, !169}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !165, file: !161, line: 39, baseType: !168, size: 32)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 32)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !165, file: !161, line: 40, baseType: !168, size: 32)
!170 = !DIDerivedType(tag: DW_TAG_member, scope: !162, file: !161, line: 42, baseType: !171, size: 32, offset: 32)
!171 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !162, file: !161, line: 42, size: 32, elements: !172)
!172 = !{!173, !174}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !171, file: !161, line: 43, baseType: !168, size: 32)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !171, file: !161, line: 44, baseType: !168, size: 32)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_rb", scope: !157, file: !151, line: 63, baseType: !176, size: 64)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rbnode", file: !177, line: 58, size: 64, elements: !178)
!177 = !DIFile(filename: "include/zephyr/sys/rb.h", directory: "/home/sri/zephyrproject/zephyr")
!178 = !{!179}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !176, file: !177, line: 60, baseType: !180, size: 64)
!180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 64, elements: !118)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 32)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "pended_on", scope: !154, file: !151, line: 69, baseType: !183, size: 32, offset: 64)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 32)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "_wait_q_t", file: !185, line: 243, baseType: !186)
!185 = !DIFile(filename: "include/zephyr/kernel_structs.h", directory: "/home/sri/zephyrproject/zephyr")
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !185, line: 241, size: 64, elements: !187)
!187 = !{!188}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !186, file: !185, line: 242, baseType: !189, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dlist_t", file: !161, line: 51, baseType: !162)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "user_options", scope: !154, file: !151, line: 72, baseType: !98, size: 8, offset: 96)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "thread_state", scope: !154, file: !151, line: 75, baseType: !98, size: 8, offset: 104)
!192 = !DIDerivedType(tag: DW_TAG_member, scope: !154, file: !151, line: 91, baseType: !193, size: 16, offset: 112)
!193 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !154, file: !151, line: 91, size: 16, elements: !194)
!194 = !{!195, !202}
!195 = !DIDerivedType(tag: DW_TAG_member, scope: !193, file: !151, line: 92, baseType: !196, size: 16)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !193, file: !151, line: 92, size: 16, elements: !197)
!197 = !{!198, !201}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !196, file: !151, line: 97, baseType: !199, size: 8)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !99, line: 56, baseType: !200)
!200 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "sched_locked", scope: !196, file: !151, line: 98, baseType: !98, size: 8, offset: 8)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "preempt", scope: !193, file: !151, line: 101, baseType: !133, size: 16)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "order_key", scope: !154, file: !151, line: 108, baseType: !117, size: 32, offset: 128)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "swap_data", scope: !154, file: !151, line: 132, baseType: !129, size: 32, offset: 160)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !154, file: !151, line: 136, baseType: !206, size: 192, offset: 192)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_timeout", file: !185, line: 254, size: 192, elements: !207)
!207 = !{!208, !209, !215}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !206, file: !185, line: 255, baseType: !160, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !206, file: !185, line: 256, baseType: !210, size: 32, offset: 64)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "_timeout_func_t", file: !185, line: 252, baseType: !211)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 32)
!212 = !DISubroutineType(types: !213)
!213 = !{null, !214}
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 32)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "dticks", scope: !206, file: !185, line: 259, baseType: !216, size: 64, offset: 128)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !99, line: 59, baseType: !217)
!217 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "callee_saved", scope: !150, file: !151, line: 255, baseType: !219, size: 288, offset: 384)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_callee_saved", file: !220, line: 25, size: 288, elements: !221)
!220 = !DIFile(filename: "include/zephyr/arch/arm/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!221 = !{!222, !223, !224, !225, !226, !227, !228, !229, !230}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "v1", scope: !219, file: !220, line: 26, baseType: !117, size: 32)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "v2", scope: !219, file: !220, line: 27, baseType: !117, size: 32, offset: 32)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "v3", scope: !219, file: !220, line: 28, baseType: !117, size: 32, offset: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "v4", scope: !219, file: !220, line: 29, baseType: !117, size: 32, offset: 96)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "v5", scope: !219, file: !220, line: 30, baseType: !117, size: 32, offset: 128)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "v6", scope: !219, file: !220, line: 31, baseType: !117, size: 32, offset: 160)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "v7", scope: !219, file: !220, line: 32, baseType: !117, size: 32, offset: 192)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "v8", scope: !219, file: !220, line: 33, baseType: !117, size: 32, offset: 224)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "psp", scope: !219, file: !220, line: 34, baseType: !117, size: 32, offset: 256)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "init_data", scope: !150, file: !151, line: 258, baseType: !129, size: 32, offset: 672)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "join_queue", scope: !150, file: !151, line: 261, baseType: !184, size: 64, offset: 704)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "errno_var", scope: !150, file: !151, line: 302, baseType: !130, size: 32, offset: 768)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "resource_pool", scope: !150, file: !151, line: 333, baseType: !235, size: 32, offset: 800)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 32)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_heap", file: !237, line: 5291, size: 160, elements: !238)
!237 = !DIFile(filename: "include/zephyr/kernel.h", directory: "/home/sri/zephyrproject/zephyr")
!238 = !{!239, !248, !249}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !236, file: !237, line: 5292, baseType: !240, size: 96)
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sys_heap", file: !241, line: 56, size: 96, elements: !242)
!241 = !DIFile(filename: "include/zephyr/sys/sys_heap.h", directory: "/home/sri/zephyrproject/zephyr")
!242 = !{!243, !244, !245}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !240, file: !241, line: 57, baseType: !111, size: 32)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "init_mem", scope: !240, file: !241, line: 58, baseType: !129, size: 32, offset: 32)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "init_bytes", scope: !240, file: !241, line: 59, baseType: !246, size: 32, offset: 64)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !247, line: 46, baseType: !96)
!247 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/lib/clang/17/include/stddef.h", directory: "")
!248 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !236, file: !237, line: 5293, baseType: !184, size: 64, offset: 96)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !236, file: !237, line: 5294, baseType: !250, offset: 160)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_spinlock", file: !251, line: 45, elements: !252)
!251 = !DIFile(filename: "include/zephyr/spinlock.h", directory: "/home/sri/zephyrproject/zephyr")
!252 = !{}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !150, file: !151, line: 355, baseType: !254, size: 64, offset: 832)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_arch", file: !220, line: 60, size: 64, elements: !255)
!255 = !{!256, !257}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "basepri", scope: !254, file: !220, line: 63, baseType: !117, size: 32)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "swap_return_value", scope: !254, file: !220, line: 66, baseType: !117, size: 32, offset: 32)
!258 = !DILocalVariable(name: "object", arg: 1, scope: !144, file: !4, line: 223, type: !147)
!259 = !DILocation(line: 223, column: 61, scope: !144)
!260 = !DILocalVariable(name: "thread", arg: 2, scope: !144, file: !4, line: 224, type: !149)
!261 = !DILocation(line: 224, column: 24, scope: !144)
!262 = !DILocation(line: 226, column: 9, scope: !144)
!263 = !DILocation(line: 227, column: 9, scope: !144)
!264 = !DILocation(line: 228, column: 1, scope: !144)
!265 = distinct !DISubprogram(name: "z_impl_k_object_release", scope: !4, file: !4, line: 243, type: !266, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !252)
!266 = !DISubroutineType(types: !267)
!267 = !{null, !147}
!268 = !DILocalVariable(name: "object", arg: 1, scope: !265, file: !4, line: 243, type: !147)
!269 = !DILocation(line: 243, column: 56, scope: !265)
!270 = !DILocation(line: 245, column: 9, scope: !265)
!271 = !DILocation(line: 246, column: 1, scope: !265)
!272 = distinct !DISubprogram(name: "z_impl_k_object_alloc", scope: !4, file: !4, line: 359, type: !273, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !252)
!273 = !DISubroutineType(types: !274)
!274 = !{!129, !3}
!275 = !DILocalVariable(name: "otype", arg: 1, scope: !272, file: !4, line: 359, type: !3)
!276 = !DILocation(line: 359, column: 58, scope: !272)
!277 = !DILocation(line: 361, column: 9, scope: !272)
!278 = !DILocation(line: 363, column: 2, scope: !272)
!279 = distinct !DISubprogram(name: "z_impl_k_object_alloc_size", scope: !4, file: !4, line: 366, type: !280, scopeLine: 368, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !252)
!280 = !DISubroutineType(types: !281)
!281 = !{!129, !3, !246}
!282 = !DILocalVariable(name: "otype", arg: 1, scope: !279, file: !4, line: 366, type: !3)
!283 = !DILocation(line: 366, column: 63, scope: !279)
!284 = !DILocalVariable(name: "size", arg: 2, scope: !279, file: !4, line: 367, type: !246)
!285 = !DILocation(line: 367, column: 13, scope: !279)
!286 = !DILocation(line: 369, column: 9, scope: !279)
!287 = !DILocation(line: 370, column: 9, scope: !279)
!288 = !DILocation(line: 372, column: 2, scope: !279)
!289 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_expires_ticks", scope: !237, file: !237, line: 656, type: !290, scopeLine: 658, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !252)
!290 = !DISubroutineType(types: !291)
!291 = !{!292, !294}
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_ticks_t", file: !293, line: 46, baseType: !216)
!293 = !DIFile(filename: "include/zephyr/sys_clock.h", directory: "/home/sri/zephyrproject/zephyr")
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 32)
!295 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !150)
!296 = !DILocalVariable(name: "t", arg: 1, scope: !289, file: !237, line: 657, type: !294)
!297 = !DILocation(line: 657, column: 30, scope: !289)
!298 = !DILocation(line: 659, column: 28, scope: !289)
!299 = !DILocation(line: 659, column: 31, scope: !289)
!300 = !DILocation(line: 659, column: 36, scope: !289)
!301 = !DILocation(line: 659, column: 9, scope: !289)
!302 = !DILocation(line: 659, column: 2, scope: !289)
!303 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_remaining_ticks", scope: !237, file: !237, line: 671, type: !290, scopeLine: 673, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !252)
!304 = !DILocalVariable(name: "t", arg: 1, scope: !303, file: !237, line: 672, type: !294)
!305 = !DILocation(line: 672, column: 30, scope: !303)
!306 = !DILocation(line: 674, column: 30, scope: !303)
!307 = !DILocation(line: 674, column: 33, scope: !303)
!308 = !DILocation(line: 674, column: 38, scope: !303)
!309 = !DILocation(line: 674, column: 9, scope: !303)
!310 = !DILocation(line: 674, column: 2, scope: !303)
!311 = distinct !DISubprogram(name: "z_impl_k_timer_expires_ticks", scope: !237, file: !237, line: 1634, type: !312, scopeLine: 1636, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !252)
!312 = !DISubroutineType(types: !313)
!313 = !{!292, !314}
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 32)
!315 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !316)
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_timer", file: !237, line: 1439, size: 448, elements: !317)
!317 = !{!318, !319, !320, !325, !326, !331, !332}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !316, file: !237, line: 1445, baseType: !206, size: 192)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !316, file: !237, line: 1448, baseType: !184, size: 64, offset: 192)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_fn", scope: !316, file: !237, line: 1451, baseType: !321, size: 32, offset: 256)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 32)
!322 = !DISubroutineType(types: !323)
!323 = !{null, !324}
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 32)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "stop_fn", scope: !316, file: !237, line: 1454, baseType: !321, size: 32, offset: 288)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !316, file: !237, line: 1457, baseType: !327, size: 64, offset: 320)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_timeout_t", file: !293, line: 67, baseType: !328)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !293, line: 65, size: 64, elements: !329)
!329 = !{!330}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "ticks", scope: !328, file: !293, line: 66, baseType: !292, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !316, file: !237, line: 1460, baseType: !117, size: 32, offset: 384)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !316, file: !237, line: 1463, baseType: !129, size: 32, offset: 416)
!333 = !DILocalVariable(name: "timer", arg: 1, scope: !311, file: !237, line: 1635, type: !314)
!334 = !DILocation(line: 1635, column: 34, scope: !311)
!335 = !DILocation(line: 1637, column: 28, scope: !311)
!336 = !DILocation(line: 1637, column: 35, scope: !311)
!337 = !DILocation(line: 1637, column: 9, scope: !311)
!338 = !DILocation(line: 1637, column: 2, scope: !311)
!339 = distinct !DISubprogram(name: "z_impl_k_timer_remaining_ticks", scope: !237, file: !237, line: 1649, type: !312, scopeLine: 1651, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !252)
!340 = !DILocalVariable(name: "timer", arg: 1, scope: !339, file: !237, line: 1650, type: !314)
!341 = !DILocation(line: 1650, column: 34, scope: !339)
!342 = !DILocation(line: 1652, column: 30, scope: !339)
!343 = !DILocation(line: 1652, column: 37, scope: !339)
!344 = !DILocation(line: 1652, column: 9, scope: !339)
!345 = !DILocation(line: 1652, column: 2, scope: !339)
!346 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_set", scope: !237, file: !237, line: 1689, type: !347, scopeLine: 1691, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !252)
!347 = !DISubroutineType(types: !348)
!348 = !{null, !324, !129}
!349 = !DILocalVariable(name: "timer", arg: 1, scope: !346, file: !237, line: 1689, type: !324)
!350 = !DILocation(line: 1689, column: 65, scope: !346)
!351 = !DILocalVariable(name: "user_data", arg: 2, scope: !346, file: !237, line: 1690, type: !129)
!352 = !DILocation(line: 1690, column: 19, scope: !346)
!353 = !DILocation(line: 1692, column: 21, scope: !346)
!354 = !DILocation(line: 1692, column: 2, scope: !346)
!355 = !DILocation(line: 1692, column: 9, scope: !346)
!356 = !DILocation(line: 1692, column: 19, scope: !346)
!357 = !DILocation(line: 1693, column: 1, scope: !346)
!358 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_get", scope: !237, file: !237, line: 1704, type: !359, scopeLine: 1705, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !252)
!359 = !DISubroutineType(types: !360)
!360 = !{!129, !314}
!361 = !DILocalVariable(name: "timer", arg: 1, scope: !358, file: !237, line: 1704, type: !314)
!362 = !DILocation(line: 1704, column: 72, scope: !358)
!363 = !DILocation(line: 1706, column: 9, scope: !358)
!364 = !DILocation(line: 1706, column: 16, scope: !358)
!365 = !DILocation(line: 1706, column: 2, scope: !358)
!366 = distinct !DISubprogram(name: "z_impl_k_queue_is_empty", scope: !237, file: !237, line: 2071, type: !367, scopeLine: 2072, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !252)
!367 = !DISubroutineType(types: !368)
!368 = !{!130, !369}
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 32)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_queue", file: !237, line: 1830, size: 128, elements: !371)
!371 = !{!372, !385, !386}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "data_q", scope: !370, file: !237, line: 1831, baseType: !373, size: 64)
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
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "unative_t", file: !374, line: 40, baseType: !117)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !375, file: !374, line: 55, baseType: !378, size: 32, offset: 32)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !370, file: !237, line: 1832, baseType: !250, offset: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !370, file: !237, line: 1833, baseType: !184, size: 64, offset: 64)
!387 = !DILocalVariable(name: "queue", arg: 1, scope: !366, file: !237, line: 2071, type: !369)
!388 = !DILocation(line: 2071, column: 59, scope: !366)
!389 = !DILocation(line: 2073, column: 35, scope: !366)
!390 = !DILocation(line: 2073, column: 42, scope: !366)
!391 = !DILocation(line: 2073, column: 14, scope: !366)
!392 = !DILocation(line: 2073, column: 9, scope: !366)
!393 = !DILocation(line: 2073, column: 2, scope: !366)
!394 = distinct !DISubprogram(name: "z_impl_k_sem_count_get", scope: !237, file: !237, line: 3209, type: !395, scopeLine: 3210, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !252)
!395 = !DISubroutineType(types: !396)
!396 = !{!96, !397}
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 32)
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sem", file: !237, line: 3092, size: 128, elements: !399)
!399 = !{!400, !401, !402}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !398, file: !237, line: 3093, baseType: !184, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !398, file: !237, line: 3094, baseType: !96, size: 32, offset: 64)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !398, file: !237, line: 3095, baseType: !96, size: 32, offset: 96)
!403 = !DILocalVariable(name: "sem", arg: 1, scope: !394, file: !237, line: 3209, type: !397)
!404 = !DILocation(line: 3209, column: 65, scope: !394)
!405 = !DILocation(line: 3211, column: 9, scope: !394)
!406 = !DILocation(line: 3211, column: 14, scope: !394)
!407 = !DILocation(line: 3211, column: 2, scope: !394)
!408 = distinct !DISubprogram(name: "z_impl_k_msgq_num_free_get", scope: !237, file: !237, line: 4649, type: !409, scopeLine: 4650, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !252)
!409 = !DISubroutineType(types: !410)
!410 = !{!117, !411}
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 32)
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_msgq", file: !237, line: 4390, size: 320, elements: !413)
!413 = !{!414, !415, !416, !417, !418, !420, !421, !422, !423, !424}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !412, file: !237, line: 4392, baseType: !184, size: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !412, file: !237, line: 4394, baseType: !250, offset: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "msg_size", scope: !412, file: !237, line: 4396, baseType: !246, size: 32, offset: 64)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !412, file: !237, line: 4398, baseType: !117, size: 32, offset: 96)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_start", scope: !412, file: !237, line: 4400, baseType: !419, size: 32, offset: 128)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 32)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_end", scope: !412, file: !237, line: 4402, baseType: !419, size: 32, offset: 160)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "read_ptr", scope: !412, file: !237, line: 4404, baseType: !419, size: 32, offset: 192)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "write_ptr", scope: !412, file: !237, line: 4406, baseType: !419, size: 32, offset: 224)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "used_msgs", scope: !412, file: !237, line: 4408, baseType: !117, size: 32, offset: 256)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !412, file: !237, line: 4413, baseType: !98, size: 8, offset: 288)
!425 = !DILocalVariable(name: "msgq", arg: 1, scope: !408, file: !237, line: 4649, type: !411)
!426 = !DILocation(line: 4649, column: 66, scope: !408)
!427 = !DILocation(line: 4651, column: 9, scope: !408)
!428 = !DILocation(line: 4651, column: 15, scope: !408)
!429 = !DILocation(line: 4651, column: 26, scope: !408)
!430 = !DILocation(line: 4651, column: 32, scope: !408)
!431 = !DILocation(line: 4651, column: 24, scope: !408)
!432 = !DILocation(line: 4651, column: 2, scope: !408)
!433 = distinct !DISubprogram(name: "z_impl_k_msgq_num_used_get", scope: !237, file: !237, line: 4665, type: !409, scopeLine: 4666, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !252)
!434 = !DILocalVariable(name: "msgq", arg: 1, scope: !433, file: !237, line: 4665, type: !411)
!435 = !DILocation(line: 4665, column: 66, scope: !433)
!436 = !DILocation(line: 4667, column: 9, scope: !433)
!437 = !DILocation(line: 4667, column: 15, scope: !433)
!438 = !DILocation(line: 4667, column: 2, scope: !433)
!439 = distinct !DISubprogram(name: "sys_heap_free", scope: !440, file: !440, line: 163, type: !441, scopeLine: 164, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !252)
!440 = !DIFile(filename: "lib/os/heap.c", directory: "/home/sri/zephyrproject/zephyr")
!441 = !DISubroutineType(types: !442)
!442 = !{null, !443, !129}
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 32)
!444 = !DILocalVariable(name: "heap", arg: 1, scope: !439, file: !440, line: 163, type: !443)
!445 = !DILocation(line: 163, column: 37, scope: !439)
!446 = !DILocalVariable(name: "mem", arg: 2, scope: !439, file: !440, line: 163, type: !129)
!447 = !DILocation(line: 163, column: 49, scope: !439)
!448 = !DILocation(line: 165, column: 6, scope: !449)
!449 = distinct !DILexicalBlock(scope: !439, file: !440, line: 165, column: 6)
!450 = !DILocation(line: 165, column: 10, scope: !449)
!451 = !DILocation(line: 165, column: 6, scope: !439)
!452 = !DILocation(line: 166, column: 3, scope: !453)
!453 = distinct !DILexicalBlock(scope: !449, file: !440, line: 165, column: 16)
!454 = !DILocalVariable(name: "h", scope: !439, file: !440, line: 168, type: !111)
!455 = !DILocation(line: 168, column: 17, scope: !439)
!456 = !DILocation(line: 168, column: 21, scope: !439)
!457 = !DILocation(line: 168, column: 27, scope: !439)
!458 = !DILocalVariable(name: "c", scope: !439, file: !440, line: 169, type: !116)
!459 = !DILocation(line: 169, column: 12, scope: !439)
!460 = !DILocation(line: 169, column: 31, scope: !439)
!461 = !DILocation(line: 169, column: 34, scope: !439)
!462 = !DILocation(line: 169, column: 16, scope: !439)
!463 = !DILocation(line: 187, column: 17, scope: !439)
!464 = !DILocation(line: 187, column: 20, scope: !439)
!465 = !DILocation(line: 187, column: 2, scope: !439)
!466 = !DILocation(line: 197, column: 13, scope: !439)
!467 = !DILocation(line: 197, column: 16, scope: !439)
!468 = !DILocation(line: 197, column: 2, scope: !439)
!469 = !DILocation(line: 198, column: 1, scope: !439)
!470 = distinct !DISubprogram(name: "mem_to_chunkid", scope: !440, file: !440, line: 157, type: !471, scopeLine: 158, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !252)
!471 = !DISubroutineType(types: !472)
!472 = !{!116, !111, !129}
!473 = !DILocalVariable(name: "h", arg: 1, scope: !470, file: !440, line: 157, type: !111)
!474 = !DILocation(line: 157, column: 48, scope: !470)
!475 = !DILocalVariable(name: "p", arg: 2, scope: !470, file: !440, line: 157, type: !129)
!476 = !DILocation(line: 157, column: 57, scope: !470)
!477 = !DILocalVariable(name: "mem", scope: !470, file: !440, line: 159, type: !97)
!478 = !DILocation(line: 159, column: 11, scope: !470)
!479 = !DILocation(line: 159, column: 17, scope: !470)
!480 = !DILocalVariable(name: "base", scope: !470, file: !440, line: 159, type: !97)
!481 = !DILocation(line: 159, column: 21, scope: !470)
!482 = !DILocation(line: 159, column: 49, scope: !470)
!483 = !DILocation(line: 159, column: 39, scope: !470)
!484 = !DILocation(line: 160, column: 10, scope: !470)
!485 = !DILocation(line: 160, column: 35, scope: !470)
!486 = !DILocation(line: 160, column: 16, scope: !470)
!487 = !DILocation(line: 160, column: 14, scope: !470)
!488 = !DILocation(line: 160, column: 40, scope: !470)
!489 = !DILocation(line: 160, column: 38, scope: !470)
!490 = !DILocation(line: 160, column: 46, scope: !470)
!491 = !DILocation(line: 160, column: 2, scope: !470)
!492 = distinct !DISubprogram(name: "set_chunk_used", scope: !87, file: !87, line: 147, type: !493, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !252)
!493 = !DISubroutineType(types: !494)
!494 = !{null, !111, !116, !495}
!495 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!496 = !DILocalVariable(name: "h", arg: 1, scope: !492, file: !87, line: 147, type: !111)
!497 = !DILocation(line: 147, column: 50, scope: !492)
!498 = !DILocalVariable(name: "c", arg: 2, scope: !492, file: !87, line: 147, type: !116)
!499 = !DILocation(line: 147, column: 63, scope: !492)
!500 = !DILocalVariable(name: "used", arg: 3, scope: !492, file: !87, line: 147, type: !495)
!501 = !DILocation(line: 147, column: 72, scope: !492)
!502 = !DILocalVariable(name: "buf", scope: !492, file: !87, line: 149, type: !101)
!503 = !DILocation(line: 149, column: 16, scope: !492)
!504 = !DILocation(line: 149, column: 32, scope: !492)
!505 = !DILocation(line: 149, column: 22, scope: !492)
!506 = !DILocalVariable(name: "cmem", scope: !492, file: !87, line: 150, type: !129)
!507 = !DILocation(line: 150, column: 8, scope: !492)
!508 = !DILocation(line: 150, column: 16, scope: !492)
!509 = !DILocation(line: 150, column: 20, scope: !492)
!510 = !DILocation(line: 152, column: 15, scope: !511)
!511 = distinct !DILexicalBlock(scope: !492, file: !87, line: 152, column: 6)
!512 = !DILocation(line: 152, column: 6, scope: !511)
!513 = !DILocation(line: 152, column: 6, scope: !492)
!514 = !DILocation(line: 153, column: 7, scope: !515)
!515 = distinct !DILexicalBlock(scope: !516, file: !87, line: 153, column: 7)
!516 = distinct !DILexicalBlock(scope: !511, file: !87, line: 152, column: 19)
!517 = !DILocation(line: 153, column: 7, scope: !516)
!518 = !DILocation(line: 154, column: 17, scope: !519)
!519 = distinct !DILexicalBlock(scope: !515, file: !87, line: 153, column: 13)
!520 = !DILocation(line: 154, column: 4, scope: !519)
!521 = !DILocation(line: 154, column: 38, scope: !519)
!522 = !DILocation(line: 155, column: 3, scope: !519)
!523 = !DILocation(line: 156, column: 17, scope: !524)
!524 = distinct !DILexicalBlock(scope: !515, file: !87, line: 155, column: 10)
!525 = !DILocation(line: 156, column: 4, scope: !524)
!526 = !DILocation(line: 156, column: 38, scope: !524)
!527 = !DILocation(line: 158, column: 2, scope: !516)
!528 = !DILocation(line: 159, column: 7, scope: !529)
!529 = distinct !DILexicalBlock(scope: !530, file: !87, line: 159, column: 7)
!530 = distinct !DILexicalBlock(scope: !511, file: !87, line: 158, column: 9)
!531 = !DILocation(line: 159, column: 7, scope: !530)
!532 = !DILocation(line: 160, column: 17, scope: !533)
!533 = distinct !DILexicalBlock(scope: !529, file: !87, line: 159, column: 13)
!534 = !DILocation(line: 160, column: 4, scope: !533)
!535 = !DILocation(line: 160, column: 38, scope: !533)
!536 = !DILocation(line: 161, column: 3, scope: !533)
!537 = !DILocation(line: 162, column: 17, scope: !538)
!538 = distinct !DILexicalBlock(scope: !529, file: !87, line: 161, column: 10)
!539 = !DILocation(line: 162, column: 4, scope: !538)
!540 = !DILocation(line: 162, column: 38, scope: !538)
!541 = !DILocation(line: 165, column: 1, scope: !492)
!542 = distinct !DISubprogram(name: "free_chunk", scope: !440, file: !440, line: 133, type: !543, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !252)
!543 = !DISubroutineType(types: !544)
!544 = !{null, !111, !116}
!545 = !DILocalVariable(name: "h", arg: 1, scope: !542, file: !440, line: 133, type: !111)
!546 = !DILocation(line: 133, column: 39, scope: !542)
!547 = !DILocalVariable(name: "c", arg: 2, scope: !542, file: !440, line: 133, type: !116)
!548 = !DILocation(line: 133, column: 52, scope: !542)
!549 = !DILocation(line: 136, column: 18, scope: !550)
!550 = distinct !DILexicalBlock(scope: !542, file: !440, line: 136, column: 6)
!551 = !DILocation(line: 136, column: 33, scope: !550)
!552 = !DILocation(line: 136, column: 36, scope: !550)
!553 = !DILocation(line: 136, column: 21, scope: !550)
!554 = !DILocation(line: 136, column: 7, scope: !550)
!555 = !DILocation(line: 136, column: 6, scope: !542)
!556 = !DILocation(line: 137, column: 20, scope: !557)
!557 = distinct !DILexicalBlock(scope: !550, file: !440, line: 136, column: 41)
!558 = !DILocation(line: 137, column: 35, scope: !557)
!559 = !DILocation(line: 137, column: 38, scope: !557)
!560 = !DILocation(line: 137, column: 23, scope: !557)
!561 = !DILocation(line: 137, column: 3, scope: !557)
!562 = !DILocation(line: 138, column: 16, scope: !557)
!563 = !DILocation(line: 138, column: 19, scope: !557)
!564 = !DILocation(line: 138, column: 34, scope: !557)
!565 = !DILocation(line: 138, column: 37, scope: !557)
!566 = !DILocation(line: 138, column: 22, scope: !557)
!567 = !DILocation(line: 138, column: 3, scope: !557)
!568 = !DILocation(line: 139, column: 2, scope: !557)
!569 = !DILocation(line: 142, column: 18, scope: !570)
!570 = distinct !DILexicalBlock(scope: !542, file: !440, line: 142, column: 6)
!571 = !DILocation(line: 142, column: 32, scope: !570)
!572 = !DILocation(line: 142, column: 35, scope: !570)
!573 = !DILocation(line: 142, column: 21, scope: !570)
!574 = !DILocation(line: 142, column: 7, scope: !570)
!575 = !DILocation(line: 142, column: 6, scope: !542)
!576 = !DILocation(line: 143, column: 20, scope: !577)
!577 = distinct !DILexicalBlock(scope: !570, file: !440, line: 142, column: 40)
!578 = !DILocation(line: 143, column: 34, scope: !577)
!579 = !DILocation(line: 143, column: 37, scope: !577)
!580 = !DILocation(line: 143, column: 23, scope: !577)
!581 = !DILocation(line: 143, column: 3, scope: !577)
!582 = !DILocation(line: 144, column: 16, scope: !577)
!583 = !DILocation(line: 144, column: 30, scope: !577)
!584 = !DILocation(line: 144, column: 33, scope: !577)
!585 = !DILocation(line: 144, column: 19, scope: !577)
!586 = !DILocation(line: 144, column: 37, scope: !577)
!587 = !DILocation(line: 144, column: 3, scope: !577)
!588 = !DILocation(line: 145, column: 18, scope: !577)
!589 = !DILocation(line: 145, column: 21, scope: !577)
!590 = !DILocation(line: 145, column: 7, scope: !577)
!591 = !DILocation(line: 145, column: 5, scope: !577)
!592 = !DILocation(line: 146, column: 2, scope: !577)
!593 = !DILocation(line: 148, column: 16, scope: !542)
!594 = !DILocation(line: 148, column: 19, scope: !542)
!595 = !DILocation(line: 148, column: 2, scope: !542)
!596 = !DILocation(line: 149, column: 1, scope: !542)
!597 = distinct !DISubprogram(name: "sys_heap_usable_size", scope: !440, file: !440, line: 200, type: !598, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !252)
!598 = !DISubroutineType(types: !599)
!599 = !{!246, !443, !129}
!600 = !DILocalVariable(name: "heap", arg: 1, scope: !597, file: !440, line: 200, type: !443)
!601 = !DILocation(line: 200, column: 46, scope: !597)
!602 = !DILocalVariable(name: "mem", arg: 2, scope: !597, file: !440, line: 200, type: !129)
!603 = !DILocation(line: 200, column: 58, scope: !597)
!604 = !DILocalVariable(name: "h", scope: !597, file: !440, line: 202, type: !111)
!605 = !DILocation(line: 202, column: 17, scope: !597)
!606 = !DILocation(line: 202, column: 21, scope: !597)
!607 = !DILocation(line: 202, column: 27, scope: !597)
!608 = !DILocalVariable(name: "c", scope: !597, file: !440, line: 203, type: !116)
!609 = !DILocation(line: 203, column: 12, scope: !597)
!610 = !DILocation(line: 203, column: 31, scope: !597)
!611 = !DILocation(line: 203, column: 34, scope: !597)
!612 = !DILocation(line: 203, column: 16, scope: !597)
!613 = !DILocalVariable(name: "addr", scope: !597, file: !440, line: 204, type: !94)
!614 = !DILocation(line: 204, column: 9, scope: !597)
!615 = !DILocation(line: 204, column: 24, scope: !597)
!616 = !DILocation(line: 204, column: 16, scope: !597)
!617 = !DILocalVariable(name: "chunk_base", scope: !597, file: !440, line: 205, type: !94)
!618 = !DILocation(line: 205, column: 9, scope: !597)
!619 = !DILocation(line: 205, column: 41, scope: !597)
!620 = !DILocation(line: 205, column: 31, scope: !597)
!621 = !DILocation(line: 205, column: 44, scope: !597)
!622 = !DILocation(line: 205, column: 22, scope: !597)
!623 = !DILocalVariable(name: "chunk_sz", scope: !597, file: !440, line: 206, type: !94)
!624 = !DILocation(line: 206, column: 9, scope: !597)
!625 = !DILocation(line: 206, column: 31, scope: !597)
!626 = !DILocation(line: 206, column: 34, scope: !597)
!627 = !DILocation(line: 206, column: 20, scope: !597)
!628 = !DILocation(line: 206, column: 37, scope: !597)
!629 = !DILocation(line: 208, column: 9, scope: !597)
!630 = !DILocation(line: 208, column: 21, scope: !597)
!631 = !DILocation(line: 208, column: 28, scope: !597)
!632 = !DILocation(line: 208, column: 26, scope: !597)
!633 = !DILocation(line: 208, column: 18, scope: !597)
!634 = !DILocation(line: 208, column: 2, scope: !597)
!635 = distinct !DISubprogram(name: "chunk_buf", scope: !87, file: !87, line: 101, type: !636, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !252)
!636 = !DISubroutineType(types: !637)
!637 = !{!101, !111}
!638 = !DILocalVariable(name: "h", arg: 1, scope: !635, file: !87, line: 101, type: !111)
!639 = !DILocation(line: 101, column: 54, scope: !635)
!640 = !DILocation(line: 104, column: 25, scope: !635)
!641 = !DILocation(line: 104, column: 2, scope: !635)
!642 = distinct !DISubprogram(name: "chunk_size", scope: !87, file: !87, line: 142, type: !643, scopeLine: 143, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !252)
!643 = !DISubroutineType(types: !644)
!644 = !{!645, !111, !116}
!645 = !DIDerivedType(tag: DW_TAG_typedef, name: "chunksz_t", file: !87, line: 62, baseType: !117)
!646 = !DILocalVariable(name: "h", arg: 1, scope: !642, file: !87, line: 142, type: !111)
!647 = !DILocation(line: 142, column: 51, scope: !642)
!648 = !DILocalVariable(name: "c", arg: 2, scope: !642, file: !87, line: 142, type: !116)
!649 = !DILocation(line: 142, column: 64, scope: !642)
!650 = !DILocation(line: 144, column: 21, scope: !642)
!651 = !DILocation(line: 144, column: 24, scope: !642)
!652 = !DILocation(line: 144, column: 9, scope: !642)
!653 = !DILocation(line: 144, column: 42, scope: !642)
!654 = !DILocation(line: 144, column: 2, scope: !642)
!655 = distinct !DISubprogram(name: "sys_heap_alloc", scope: !440, file: !440, line: 263, type: !656, scopeLine: 264, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !252)
!656 = !DISubroutineType(types: !657)
!657 = !{!129, !443, !94}
!658 = !DILocalVariable(name: "heap", arg: 1, scope: !655, file: !440, line: 263, type: !443)
!659 = !DILocation(line: 263, column: 39, scope: !655)
!660 = !DILocalVariable(name: "bytes", arg: 2, scope: !655, file: !440, line: 263, type: !94)
!661 = !DILocation(line: 263, column: 52, scope: !655)
!662 = !DILocalVariable(name: "h", scope: !655, file: !440, line: 265, type: !111)
!663 = !DILocation(line: 265, column: 17, scope: !655)
!664 = !DILocation(line: 265, column: 21, scope: !655)
!665 = !DILocation(line: 265, column: 27, scope: !655)
!666 = !DILocalVariable(name: "mem", scope: !655, file: !440, line: 266, type: !129)
!667 = !DILocation(line: 266, column: 8, scope: !655)
!668 = !DILocation(line: 268, column: 6, scope: !669)
!669 = distinct !DILexicalBlock(scope: !655, file: !440, line: 268, column: 6)
!670 = !DILocation(line: 268, column: 12, scope: !669)
!671 = !DILocation(line: 268, column: 18, scope: !669)
!672 = !DILocation(line: 268, column: 34, scope: !669)
!673 = !DILocation(line: 268, column: 37, scope: !669)
!674 = !DILocation(line: 268, column: 21, scope: !669)
!675 = !DILocation(line: 268, column: 6, scope: !655)
!676 = !DILocation(line: 269, column: 3, scope: !677)
!677 = distinct !DILexicalBlock(scope: !669, file: !440, line: 268, column: 45)
!678 = !DILocalVariable(name: "chunk_sz", scope: !655, file: !440, line: 272, type: !645)
!679 = !DILocation(line: 272, column: 12, scope: !655)
!680 = !DILocation(line: 272, column: 40, scope: !655)
!681 = !DILocation(line: 272, column: 43, scope: !655)
!682 = !DILocation(line: 272, column: 23, scope: !655)
!683 = !DILocalVariable(name: "c", scope: !655, file: !440, line: 273, type: !116)
!684 = !DILocation(line: 273, column: 12, scope: !655)
!685 = !DILocation(line: 273, column: 28, scope: !655)
!686 = !DILocation(line: 273, column: 31, scope: !655)
!687 = !DILocation(line: 273, column: 16, scope: !655)
!688 = !DILocation(line: 274, column: 6, scope: !689)
!689 = distinct !DILexicalBlock(scope: !655, file: !440, line: 274, column: 6)
!690 = !DILocation(line: 274, column: 8, scope: !689)
!691 = !DILocation(line: 274, column: 6, scope: !655)
!692 = !DILocation(line: 275, column: 3, scope: !693)
!693 = distinct !DILexicalBlock(scope: !689, file: !440, line: 274, column: 15)
!694 = !DILocation(line: 279, column: 17, scope: !695)
!695 = distinct !DILexicalBlock(scope: !655, file: !440, line: 279, column: 6)
!696 = !DILocation(line: 279, column: 20, scope: !695)
!697 = !DILocation(line: 279, column: 6, scope: !695)
!698 = !DILocation(line: 279, column: 25, scope: !695)
!699 = !DILocation(line: 279, column: 23, scope: !695)
!700 = !DILocation(line: 279, column: 6, scope: !655)
!701 = !DILocation(line: 280, column: 16, scope: !702)
!702 = distinct !DILexicalBlock(scope: !695, file: !440, line: 279, column: 35)
!703 = !DILocation(line: 280, column: 19, scope: !702)
!704 = !DILocation(line: 280, column: 22, scope: !702)
!705 = !DILocation(line: 280, column: 26, scope: !702)
!706 = !DILocation(line: 280, column: 24, scope: !702)
!707 = !DILocation(line: 280, column: 3, scope: !702)
!708 = !DILocation(line: 281, column: 17, scope: !702)
!709 = !DILocation(line: 281, column: 20, scope: !702)
!710 = !DILocation(line: 281, column: 24, scope: !702)
!711 = !DILocation(line: 281, column: 22, scope: !702)
!712 = !DILocation(line: 281, column: 3, scope: !702)
!713 = !DILocation(line: 282, column: 2, scope: !702)
!714 = !DILocation(line: 284, column: 17, scope: !655)
!715 = !DILocation(line: 284, column: 20, scope: !655)
!716 = !DILocation(line: 284, column: 2, scope: !655)
!717 = !DILocation(line: 286, column: 18, scope: !655)
!718 = !DILocation(line: 286, column: 21, scope: !655)
!719 = !DILocation(line: 286, column: 8, scope: !655)
!720 = !DILocation(line: 286, column: 6, scope: !655)
!721 = !DILocation(line: 298, column: 9, scope: !655)
!722 = !DILocation(line: 298, column: 2, scope: !655)
!723 = !DILocation(line: 299, column: 1, scope: !655)
!724 = distinct !DISubprogram(name: "size_too_big", scope: !87, file: !87, line: 256, type: !725, scopeLine: 257, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !252)
!725 = !DISubroutineType(types: !726)
!726 = !{!495, !111, !94}
!727 = !DILocalVariable(name: "h", arg: 1, scope: !724, file: !87, line: 256, type: !111)
!728 = !DILocation(line: 256, column: 49, scope: !724)
!729 = !DILocalVariable(name: "bytes", arg: 2, scope: !724, file: !87, line: 256, type: !94)
!730 = !DILocation(line: 256, column: 59, scope: !724)
!731 = !DILocation(line: 262, column: 10, scope: !724)
!732 = !DILocation(line: 262, column: 16, scope: !724)
!733 = !DILocation(line: 262, column: 25, scope: !724)
!734 = !DILocation(line: 262, column: 28, scope: !724)
!735 = !DILocation(line: 262, column: 22, scope: !724)
!736 = !DILocation(line: 262, column: 2, scope: !724)
!737 = distinct !DISubprogram(name: "bytes_to_chunksz", scope: !87, file: !87, line: 235, type: !738, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !252)
!738 = !DISubroutineType(types: !739)
!739 = !{!645, !111, !94}
!740 = !DILocalVariable(name: "h", arg: 1, scope: !737, file: !87, line: 235, type: !111)
!741 = !DILocation(line: 235, column: 57, scope: !737)
!742 = !DILocalVariable(name: "bytes", arg: 2, scope: !737, file: !87, line: 235, type: !94)
!743 = !DILocation(line: 235, column: 67, scope: !737)
!744 = !DILocation(line: 237, column: 36, scope: !737)
!745 = !DILocation(line: 237, column: 17, scope: !737)
!746 = !DILocation(line: 237, column: 41, scope: !737)
!747 = !DILocation(line: 237, column: 39, scope: !737)
!748 = !DILocation(line: 237, column: 9, scope: !737)
!749 = !DILocation(line: 237, column: 2, scope: !737)
!750 = distinct !DISubprogram(name: "alloc_chunk", scope: !440, file: !440, line: 211, type: !751, scopeLine: 212, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !252)
!751 = !DISubroutineType(types: !752)
!752 = !{!116, !111, !645}
!753 = !DILocalVariable(name: "h", arg: 1, scope: !750, file: !440, line: 211, type: !111)
!754 = !DILocation(line: 211, column: 45, scope: !750)
!755 = !DILocalVariable(name: "sz", arg: 2, scope: !750, file: !440, line: 211, type: !645)
!756 = !DILocation(line: 211, column: 58, scope: !750)
!757 = !DILocalVariable(name: "bi", scope: !750, file: !440, line: 213, type: !130)
!758 = !DILocation(line: 213, column: 6, scope: !750)
!759 = !DILocation(line: 213, column: 22, scope: !750)
!760 = !DILocation(line: 213, column: 25, scope: !750)
!761 = !DILocation(line: 213, column: 11, scope: !750)
!762 = !DILocalVariable(name: "b", scope: !750, file: !440, line: 214, type: !763)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 32)
!764 = !DILocation(line: 214, column: 24, scope: !750)
!765 = !DILocation(line: 214, column: 29, scope: !750)
!766 = !DILocation(line: 214, column: 32, scope: !750)
!767 = !DILocation(line: 214, column: 40, scope: !750)
!768 = !DILocation(line: 232, column: 6, scope: !769)
!769 = distinct !DILexicalBlock(scope: !750, file: !440, line: 232, column: 6)
!770 = !DILocation(line: 232, column: 9, scope: !769)
!771 = !DILocation(line: 232, column: 6, scope: !750)
!772 = !DILocalVariable(name: "first", scope: !773, file: !440, line: 233, type: !116)
!773 = distinct !DILexicalBlock(scope: !769, file: !440, line: 232, column: 15)
!774 = !DILocation(line: 233, column: 13, scope: !773)
!775 = !DILocation(line: 233, column: 21, scope: !773)
!776 = !DILocation(line: 233, column: 24, scope: !773)
!777 = !DILocalVariable(name: "i", scope: !773, file: !440, line: 234, type: !130)
!778 = !DILocation(line: 234, column: 7, scope: !773)
!779 = !DILocation(line: 235, column: 3, scope: !773)
!780 = !DILocalVariable(name: "c", scope: !781, file: !440, line: 236, type: !116)
!781 = distinct !DILexicalBlock(scope: !773, file: !440, line: 235, column: 6)
!782 = !DILocation(line: 236, column: 14, scope: !781)
!783 = !DILocation(line: 236, column: 18, scope: !781)
!784 = !DILocation(line: 236, column: 21, scope: !781)
!785 = !DILocation(line: 237, column: 19, scope: !786)
!786 = distinct !DILexicalBlock(scope: !781, file: !440, line: 237, column: 8)
!787 = !DILocation(line: 237, column: 22, scope: !786)
!788 = !DILocation(line: 237, column: 8, scope: !786)
!789 = !DILocation(line: 237, column: 28, scope: !786)
!790 = !DILocation(line: 237, column: 25, scope: !786)
!791 = !DILocation(line: 237, column: 8, scope: !781)
!792 = !DILocation(line: 238, column: 27, scope: !793)
!793 = distinct !DILexicalBlock(scope: !786, file: !440, line: 237, column: 32)
!794 = !DILocation(line: 238, column: 30, scope: !793)
!795 = !DILocation(line: 238, column: 33, scope: !793)
!796 = !DILocation(line: 238, column: 5, scope: !793)
!797 = !DILocation(line: 239, column: 12, scope: !793)
!798 = !DILocation(line: 239, column: 5, scope: !793)
!799 = !DILocation(line: 241, column: 30, scope: !781)
!800 = !DILocation(line: 241, column: 33, scope: !781)
!801 = !DILocation(line: 241, column: 14, scope: !781)
!802 = !DILocation(line: 241, column: 4, scope: !781)
!803 = !DILocation(line: 241, column: 7, scope: !781)
!804 = !DILocation(line: 241, column: 12, scope: !781)
!805 = !DILocation(line: 243, column: 3, scope: !781)
!806 = !DILocation(line: 243, column: 12, scope: !773)
!807 = !DILocation(line: 243, column: 16, scope: !773)
!808 = !DILocation(line: 243, column: 19, scope: !773)
!809 = !DILocation(line: 243, column: 22, scope: !773)
!810 = !DILocation(line: 243, column: 30, scope: !773)
!811 = !DILocation(line: 243, column: 27, scope: !773)
!812 = !DILocation(line: 0, scope: !773)
!813 = distinct !{!813, !779, !814}
!814 = !DILocation(line: 243, column: 35, scope: !773)
!815 = !DILocation(line: 244, column: 2, scope: !773)
!816 = !DILocalVariable(name: "bmask", scope: !750, file: !440, line: 249, type: !117)
!817 = !DILocation(line: 249, column: 11, scope: !750)
!818 = !DILocation(line: 249, column: 19, scope: !750)
!819 = !DILocation(line: 249, column: 22, scope: !750)
!820 = !DILocation(line: 249, column: 49, scope: !750)
!821 = !DILocation(line: 249, column: 52, scope: !750)
!822 = !DILocation(line: 249, column: 45, scope: !750)
!823 = !DILocation(line: 249, column: 58, scope: !750)
!824 = !DILocation(line: 249, column: 38, scope: !750)
!825 = !DILocation(line: 249, column: 36, scope: !750)
!826 = !DILocation(line: 251, column: 6, scope: !827)
!827 = distinct !DILexicalBlock(scope: !750, file: !440, line: 251, column: 6)
!828 = !DILocation(line: 251, column: 12, scope: !827)
!829 = !DILocation(line: 251, column: 6, scope: !750)
!830 = !DILocalVariable(name: "minbucket", scope: !831, file: !440, line: 252, type: !130)
!831 = distinct !DILexicalBlock(scope: !827, file: !440, line: 251, column: 19)
!832 = !DILocation(line: 252, column: 7, scope: !831)
!833 = !DILocation(line: 252, column: 33, scope: !831)
!834 = !DILocation(line: 252, column: 19, scope: !831)
!835 = !DILocalVariable(name: "c", scope: !831, file: !440, line: 253, type: !116)
!836 = !DILocation(line: 253, column: 13, scope: !831)
!837 = !DILocation(line: 253, column: 17, scope: !831)
!838 = !DILocation(line: 253, column: 20, scope: !831)
!839 = !DILocation(line: 253, column: 28, scope: !831)
!840 = !DILocation(line: 253, column: 39, scope: !831)
!841 = !DILocation(line: 255, column: 25, scope: !831)
!842 = !DILocation(line: 255, column: 28, scope: !831)
!843 = !DILocation(line: 255, column: 31, scope: !831)
!844 = !DILocation(line: 255, column: 3, scope: !831)
!845 = !DILocation(line: 257, column: 10, scope: !831)
!846 = !DILocation(line: 257, column: 3, scope: !831)
!847 = !DILocation(line: 260, column: 2, scope: !750)
!848 = !DILocation(line: 261, column: 1, scope: !750)
!849 = distinct !DISubprogram(name: "split_chunks", scope: !440, file: !440, line: 109, type: !850, scopeLine: 110, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !252)
!850 = !DISubroutineType(types: !851)
!851 = !{null, !111, !116, !116}
!852 = !DILocalVariable(name: "h", arg: 1, scope: !849, file: !440, line: 109, type: !111)
!853 = !DILocation(line: 109, column: 41, scope: !849)
!854 = !DILocalVariable(name: "lc", arg: 2, scope: !849, file: !440, line: 109, type: !116)
!855 = !DILocation(line: 109, column: 54, scope: !849)
!856 = !DILocalVariable(name: "rc", arg: 3, scope: !849, file: !440, line: 109, type: !116)
!857 = !DILocation(line: 109, column: 68, scope: !849)
!858 = !DILocalVariable(name: "sz0", scope: !849, file: !440, line: 114, type: !645)
!859 = !DILocation(line: 114, column: 12, scope: !849)
!860 = !DILocation(line: 114, column: 29, scope: !849)
!861 = !DILocation(line: 114, column: 32, scope: !849)
!862 = !DILocation(line: 114, column: 18, scope: !849)
!863 = !DILocalVariable(name: "lsz", scope: !849, file: !440, line: 115, type: !645)
!864 = !DILocation(line: 115, column: 12, scope: !849)
!865 = !DILocation(line: 115, column: 18, scope: !849)
!866 = !DILocation(line: 115, column: 23, scope: !849)
!867 = !DILocation(line: 115, column: 21, scope: !849)
!868 = !DILocalVariable(name: "rsz", scope: !849, file: !440, line: 116, type: !645)
!869 = !DILocation(line: 116, column: 12, scope: !849)
!870 = !DILocation(line: 116, column: 18, scope: !849)
!871 = !DILocation(line: 116, column: 24, scope: !849)
!872 = !DILocation(line: 116, column: 22, scope: !849)
!873 = !DILocation(line: 118, column: 17, scope: !849)
!874 = !DILocation(line: 118, column: 20, scope: !849)
!875 = !DILocation(line: 118, column: 24, scope: !849)
!876 = !DILocation(line: 118, column: 2, scope: !849)
!877 = !DILocation(line: 119, column: 17, scope: !849)
!878 = !DILocation(line: 119, column: 20, scope: !849)
!879 = !DILocation(line: 119, column: 24, scope: !849)
!880 = !DILocation(line: 119, column: 2, scope: !849)
!881 = !DILocation(line: 120, column: 22, scope: !849)
!882 = !DILocation(line: 120, column: 25, scope: !849)
!883 = !DILocation(line: 120, column: 29, scope: !849)
!884 = !DILocation(line: 120, column: 2, scope: !849)
!885 = !DILocation(line: 121, column: 22, scope: !849)
!886 = !DILocation(line: 121, column: 37, scope: !849)
!887 = !DILocation(line: 121, column: 40, scope: !849)
!888 = !DILocation(line: 121, column: 25, scope: !849)
!889 = !DILocation(line: 121, column: 45, scope: !849)
!890 = !DILocation(line: 121, column: 2, scope: !849)
!891 = !DILocation(line: 122, column: 1, scope: !849)
!892 = distinct !DISubprogram(name: "free_list_add", scope: !440, file: !440, line: 98, type: !543, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !252)
!893 = !DILocalVariable(name: "h", arg: 1, scope: !892, file: !440, line: 98, type: !111)
!894 = !DILocation(line: 98, column: 42, scope: !892)
!895 = !DILocalVariable(name: "c", arg: 2, scope: !892, file: !440, line: 98, type: !116)
!896 = !DILocation(line: 98, column: 55, scope: !892)
!897 = !DILocation(line: 100, column: 24, scope: !898)
!898 = distinct !DILexicalBlock(scope: !892, file: !440, line: 100, column: 6)
!899 = !DILocation(line: 100, column: 27, scope: !898)
!900 = !DILocation(line: 100, column: 7, scope: !898)
!901 = !DILocation(line: 100, column: 6, scope: !892)
!902 = !DILocalVariable(name: "bidx", scope: !903, file: !440, line: 101, type: !130)
!903 = distinct !DILexicalBlock(scope: !898, file: !440, line: 100, column: 31)
!904 = !DILocation(line: 101, column: 7, scope: !903)
!905 = !DILocation(line: 101, column: 25, scope: !903)
!906 = !DILocation(line: 101, column: 39, scope: !903)
!907 = !DILocation(line: 101, column: 42, scope: !903)
!908 = !DILocation(line: 101, column: 28, scope: !903)
!909 = !DILocation(line: 101, column: 14, scope: !903)
!910 = !DILocation(line: 102, column: 22, scope: !903)
!911 = !DILocation(line: 102, column: 25, scope: !903)
!912 = !DILocation(line: 102, column: 28, scope: !903)
!913 = !DILocation(line: 102, column: 3, scope: !903)
!914 = !DILocation(line: 103, column: 2, scope: !903)
!915 = !DILocation(line: 104, column: 1, scope: !892)
!916 = distinct !DISubprogram(name: "chunk_mem", scope: !440, file: !440, line: 24, type: !917, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !252)
!917 = !DISubroutineType(types: !918)
!918 = !{!129, !111, !116}
!919 = !DILocalVariable(name: "h", arg: 1, scope: !916, file: !440, line: 24, type: !111)
!920 = !DILocation(line: 24, column: 39, scope: !916)
!921 = !DILocalVariable(name: "c", arg: 2, scope: !916, file: !440, line: 24, type: !116)
!922 = !DILocation(line: 24, column: 52, scope: !916)
!923 = !DILocalVariable(name: "buf", scope: !916, file: !440, line: 26, type: !101)
!924 = !DILocation(line: 26, column: 16, scope: !916)
!925 = !DILocation(line: 26, column: 32, scope: !916)
!926 = !DILocation(line: 26, column: 22, scope: !916)
!927 = !DILocalVariable(name: "ret", scope: !916, file: !440, line: 27, type: !97)
!928 = !DILocation(line: 27, column: 11, scope: !916)
!929 = !DILocation(line: 27, column: 30, scope: !916)
!930 = !DILocation(line: 27, column: 34, scope: !916)
!931 = !DILocation(line: 27, column: 59, scope: !916)
!932 = !DILocation(line: 27, column: 40, scope: !916)
!933 = !DILocation(line: 27, column: 38, scope: !916)
!934 = !DILocation(line: 31, column: 9, scope: !916)
!935 = !DILocation(line: 31, column: 2, scope: !916)
!936 = distinct !DISubprogram(name: "sys_heap_aligned_alloc", scope: !440, file: !440, line: 301, type: !937, scopeLine: 302, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !252)
!937 = !DISubroutineType(types: !938)
!938 = !{!129, !443, !94, !94}
!939 = !DILocalVariable(name: "heap", arg: 1, scope: !936, file: !440, line: 301, type: !443)
!940 = !DILocation(line: 301, column: 47, scope: !936)
!941 = !DILocalVariable(name: "align", arg: 2, scope: !936, file: !440, line: 301, type: !94)
!942 = !DILocation(line: 301, column: 60, scope: !936)
!943 = !DILocalVariable(name: "bytes", arg: 3, scope: !936, file: !440, line: 301, type: !94)
!944 = !DILocation(line: 301, column: 74, scope: !936)
!945 = !DILocalVariable(name: "h", scope: !936, file: !440, line: 303, type: !111)
!946 = !DILocation(line: 303, column: 17, scope: !936)
!947 = !DILocation(line: 303, column: 21, scope: !936)
!948 = !DILocation(line: 303, column: 27, scope: !936)
!949 = !DILocalVariable(name: "gap", scope: !936, file: !440, line: 304, type: !94)
!950 = !DILocation(line: 304, column: 9, scope: !936)
!951 = !DILocalVariable(name: "rew", scope: !936, file: !440, line: 304, type: !94)
!952 = !DILocation(line: 304, column: 14, scope: !936)
!953 = !DILocation(line: 313, column: 8, scope: !936)
!954 = !DILocation(line: 313, column: 17, scope: !936)
!955 = !DILocation(line: 313, column: 16, scope: !936)
!956 = !DILocation(line: 313, column: 14, scope: !936)
!957 = !DILocation(line: 313, column: 6, scope: !936)
!958 = !DILocation(line: 314, column: 6, scope: !959)
!959 = distinct !DILexicalBlock(scope: !936, file: !440, line: 314, column: 6)
!960 = !DILocation(line: 314, column: 15, scope: !959)
!961 = !DILocation(line: 314, column: 12, scope: !959)
!962 = !DILocation(line: 314, column: 6, scope: !936)
!963 = !DILocation(line: 315, column: 12, scope: !964)
!964 = distinct !DILexicalBlock(scope: !959, file: !440, line: 314, column: 20)
!965 = !DILocation(line: 315, column: 9, scope: !964)
!966 = !DILocation(line: 316, column: 12, scope: !964)
!967 = !DILocation(line: 316, column: 39, scope: !964)
!968 = !DILocation(line: 316, column: 20, scope: !964)
!969 = !DILocation(line: 316, column: 17, scope: !964)
!970 = !DILocation(line: 316, column: 10, scope: !964)
!971 = !DILocation(line: 316, column: 47, scope: !964)
!972 = !DILocation(line: 316, column: 74, scope: !964)
!973 = !DILocation(line: 316, column: 55, scope: !964)
!974 = !DILocation(line: 316, column: 7, scope: !964)
!975 = !DILocation(line: 317, column: 2, scope: !964)
!976 = !DILocation(line: 318, column: 7, scope: !977)
!977 = distinct !DILexicalBlock(scope: !978, file: !440, line: 318, column: 7)
!978 = distinct !DILexicalBlock(scope: !959, file: !440, line: 317, column: 9)
!979 = !DILocation(line: 318, column: 35, scope: !977)
!980 = !DILocation(line: 318, column: 16, scope: !977)
!981 = !DILocation(line: 318, column: 13, scope: !977)
!982 = !DILocation(line: 318, column: 7, scope: !978)
!983 = !DILocation(line: 319, column: 26, scope: !984)
!984 = distinct !DILexicalBlock(scope: !977, file: !440, line: 318, column: 39)
!985 = !DILocation(line: 319, column: 32, scope: !984)
!986 = !DILocation(line: 319, column: 11, scope: !984)
!987 = !DILocation(line: 319, column: 4, scope: !984)
!988 = !DILocation(line: 321, column: 7, scope: !978)
!989 = !DILocation(line: 322, column: 28, scope: !978)
!990 = !DILocation(line: 322, column: 9, scope: !978)
!991 = !DILocation(line: 322, column: 7, scope: !978)
!992 = !DILocation(line: 326, column: 6, scope: !993)
!993 = distinct !DILexicalBlock(scope: !936, file: !440, line: 326, column: 6)
!994 = !DILocation(line: 326, column: 12, scope: !993)
!995 = !DILocation(line: 326, column: 17, scope: !993)
!996 = !DILocation(line: 326, column: 33, scope: !993)
!997 = !DILocation(line: 326, column: 36, scope: !993)
!998 = !DILocation(line: 326, column: 20, scope: !993)
!999 = !DILocation(line: 326, column: 6, scope: !936)
!1000 = !DILocation(line: 327, column: 3, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !993, file: !440, line: 326, column: 44)
!1002 = !DILocalVariable(name: "padded_sz", scope: !936, file: !440, line: 335, type: !645)
!1003 = !DILocation(line: 335, column: 12, scope: !936)
!1004 = !DILocation(line: 335, column: 41, scope: !936)
!1005 = !DILocation(line: 335, column: 44, scope: !936)
!1006 = !DILocation(line: 335, column: 52, scope: !936)
!1007 = !DILocation(line: 335, column: 50, scope: !936)
!1008 = !DILocation(line: 335, column: 60, scope: !936)
!1009 = !DILocation(line: 335, column: 58, scope: !936)
!1010 = !DILocation(line: 335, column: 24, scope: !936)
!1011 = !DILocalVariable(name: "c0", scope: !936, file: !440, line: 336, type: !116)
!1012 = !DILocation(line: 336, column: 12, scope: !936)
!1013 = !DILocation(line: 336, column: 29, scope: !936)
!1014 = !DILocation(line: 336, column: 32, scope: !936)
!1015 = !DILocation(line: 336, column: 17, scope: !936)
!1016 = !DILocation(line: 338, column: 6, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !936, file: !440, line: 338, column: 6)
!1018 = !DILocation(line: 338, column: 9, scope: !1017)
!1019 = !DILocation(line: 338, column: 6, scope: !936)
!1020 = !DILocation(line: 339, column: 3, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !1017, file: !440, line: 338, column: 15)
!1022 = !DILocalVariable(name: "mem", scope: !936, file: !440, line: 341, type: !97)
!1023 = !DILocation(line: 341, column: 11, scope: !936)
!1024 = !DILocation(line: 341, column: 27, scope: !936)
!1025 = !DILocation(line: 341, column: 30, scope: !936)
!1026 = !DILocation(line: 341, column: 17, scope: !936)
!1027 = !DILocation(line: 344, column: 39, scope: !936)
!1028 = !DILocation(line: 344, column: 45, scope: !936)
!1029 = !DILocation(line: 344, column: 43, scope: !936)
!1030 = !DILocation(line: 344, column: 23, scope: !936)
!1031 = !DILocation(line: 344, column: 69, scope: !936)
!1032 = !DILocation(line: 344, column: 76, scope: !936)
!1033 = !DILocation(line: 344, column: 50, scope: !936)
!1034 = !DILocation(line: 344, column: 100, scope: !936)
!1035 = !DILocation(line: 344, column: 82, scope: !936)
!1036 = !DILocation(line: 344, column: 126, scope: !936)
!1037 = !DILocation(line: 344, column: 108, scope: !936)
!1038 = !DILocation(line: 344, column: 8, scope: !936)
!1039 = !DILocation(line: 344, column: 136, scope: !936)
!1040 = !DILocation(line: 344, column: 134, scope: !936)
!1041 = !DILocation(line: 344, column: 6, scope: !936)
!1042 = !DILocalVariable(name: "end", scope: !936, file: !440, line: 345, type: !101)
!1043 = !DILocation(line: 345, column: 16, scope: !936)
!1044 = !DILocation(line: 345, column: 58, scope: !936)
!1045 = !DILocation(line: 345, column: 64, scope: !936)
!1046 = !DILocation(line: 345, column: 62, scope: !936)
!1047 = !DILocation(line: 345, column: 42, scope: !936)
!1048 = !DILocation(line: 345, column: 71, scope: !936)
!1049 = !DILocation(line: 345, column: 100, scope: !936)
!1050 = !DILocation(line: 345, column: 123, scope: !936)
!1051 = !DILocation(line: 345, column: 22, scope: !936)
!1052 = !DILocalVariable(name: "c", scope: !936, file: !440, line: 348, type: !116)
!1053 = !DILocation(line: 348, column: 12, scope: !936)
!1054 = !DILocation(line: 348, column: 31, scope: !936)
!1055 = !DILocation(line: 348, column: 34, scope: !936)
!1056 = !DILocation(line: 348, column: 16, scope: !936)
!1057 = !DILocalVariable(name: "c_end", scope: !936, file: !440, line: 349, type: !116)
!1058 = !DILocation(line: 349, column: 12, scope: !936)
!1059 = !DILocation(line: 349, column: 20, scope: !936)
!1060 = !DILocation(line: 349, column: 36, scope: !936)
!1061 = !DILocation(line: 349, column: 26, scope: !936)
!1062 = !DILocation(line: 349, column: 24, scope: !936)
!1063 = !DILocation(line: 353, column: 6, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !936, file: !440, line: 353, column: 6)
!1065 = !DILocation(line: 353, column: 10, scope: !1064)
!1066 = !DILocation(line: 353, column: 8, scope: !1064)
!1067 = !DILocation(line: 353, column: 6, scope: !936)
!1068 = !DILocation(line: 354, column: 16, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !1064, file: !440, line: 353, column: 14)
!1070 = !DILocation(line: 354, column: 19, scope: !1069)
!1071 = !DILocation(line: 354, column: 23, scope: !1069)
!1072 = !DILocation(line: 354, column: 3, scope: !1069)
!1073 = !DILocation(line: 355, column: 17, scope: !1069)
!1074 = !DILocation(line: 355, column: 20, scope: !1069)
!1075 = !DILocation(line: 355, column: 3, scope: !1069)
!1076 = !DILocation(line: 356, column: 2, scope: !1069)
!1077 = !DILocation(line: 359, column: 18, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !936, file: !440, line: 359, column: 6)
!1079 = !DILocation(line: 359, column: 21, scope: !1078)
!1080 = !DILocation(line: 359, column: 6, scope: !1078)
!1081 = !DILocation(line: 359, column: 26, scope: !1078)
!1082 = !DILocation(line: 359, column: 24, scope: !1078)
!1083 = !DILocation(line: 359, column: 6, scope: !936)
!1084 = !DILocation(line: 360, column: 16, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1078, file: !440, line: 359, column: 33)
!1086 = !DILocation(line: 360, column: 19, scope: !1085)
!1087 = !DILocation(line: 360, column: 22, scope: !1085)
!1088 = !DILocation(line: 360, column: 3, scope: !1085)
!1089 = !DILocation(line: 361, column: 17, scope: !1085)
!1090 = !DILocation(line: 361, column: 20, scope: !1085)
!1091 = !DILocation(line: 361, column: 3, scope: !1085)
!1092 = !DILocation(line: 362, column: 2, scope: !1085)
!1093 = !DILocation(line: 364, column: 17, scope: !936)
!1094 = !DILocation(line: 364, column: 20, scope: !936)
!1095 = !DILocation(line: 364, column: 2, scope: !936)
!1096 = !DILocation(line: 376, column: 9, scope: !936)
!1097 = !DILocation(line: 376, column: 2, scope: !936)
!1098 = !DILocation(line: 377, column: 1, scope: !936)
!1099 = distinct !DISubprogram(name: "chunk_header_bytes", scope: !87, file: !87, line: 220, type: !1100, scopeLine: 221, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !252)
!1100 = !DISubroutineType(types: !1101)
!1101 = !{!94, !111}
!1102 = !DILocalVariable(name: "h", arg: 1, scope: !1099, file: !87, line: 220, type: !111)
!1103 = !DILocation(line: 220, column: 56, scope: !1099)
!1104 = !DILocation(line: 222, column: 18, scope: !1099)
!1105 = !DILocation(line: 222, column: 9, scope: !1099)
!1106 = !DILocation(line: 222, column: 2, scope: !1099)
!1107 = distinct !DISubprogram(name: "right_chunk", scope: !87, file: !87, line: 204, type: !1108, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !252)
!1108 = !DISubroutineType(types: !1109)
!1109 = !{!116, !111, !116}
!1110 = !DILocalVariable(name: "h", arg: 1, scope: !1107, file: !87, line: 204, type: !111)
!1111 = !DILocation(line: 204, column: 52, scope: !1107)
!1112 = !DILocalVariable(name: "c", arg: 2, scope: !1107, file: !87, line: 204, type: !116)
!1113 = !DILocation(line: 204, column: 65, scope: !1107)
!1114 = !DILocation(line: 206, column: 9, scope: !1107)
!1115 = !DILocation(line: 206, column: 24, scope: !1107)
!1116 = !DILocation(line: 206, column: 27, scope: !1107)
!1117 = !DILocation(line: 206, column: 13, scope: !1107)
!1118 = !DILocation(line: 206, column: 11, scope: !1107)
!1119 = !DILocation(line: 206, column: 2, scope: !1107)
!1120 = distinct !DISubprogram(name: "sys_heap_aligned_realloc", scope: !440, file: !440, line: 379, type: !1121, scopeLine: 381, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !252)
!1121 = !DISubroutineType(types: !1122)
!1122 = !{!129, !443, !129, !94, !94}
!1123 = !DILocalVariable(name: "heap", arg: 1, scope: !1120, file: !440, line: 379, type: !443)
!1124 = !DILocation(line: 379, column: 49, scope: !1120)
!1125 = !DILocalVariable(name: "ptr", arg: 2, scope: !1120, file: !440, line: 379, type: !129)
!1126 = !DILocation(line: 379, column: 61, scope: !1120)
!1127 = !DILocalVariable(name: "align", arg: 3, scope: !1120, file: !440, line: 380, type: !94)
!1128 = !DILocation(line: 380, column: 18, scope: !1120)
!1129 = !DILocalVariable(name: "bytes", arg: 4, scope: !1120, file: !440, line: 380, type: !94)
!1130 = !DILocation(line: 380, column: 32, scope: !1120)
!1131 = !DILocalVariable(name: "h", scope: !1120, file: !440, line: 382, type: !111)
!1132 = !DILocation(line: 382, column: 17, scope: !1120)
!1133 = !DILocation(line: 382, column: 21, scope: !1120)
!1134 = !DILocation(line: 382, column: 27, scope: !1120)
!1135 = !DILocation(line: 385, column: 6, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1120, file: !440, line: 385, column: 6)
!1137 = !DILocation(line: 385, column: 10, scope: !1136)
!1138 = !DILocation(line: 385, column: 6, scope: !1120)
!1139 = !DILocation(line: 386, column: 33, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1136, file: !440, line: 385, column: 16)
!1141 = !DILocation(line: 386, column: 39, scope: !1140)
!1142 = !DILocation(line: 386, column: 46, scope: !1140)
!1143 = !DILocation(line: 386, column: 10, scope: !1140)
!1144 = !DILocation(line: 386, column: 3, scope: !1140)
!1145 = !DILocation(line: 388, column: 6, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1120, file: !440, line: 388, column: 6)
!1147 = !DILocation(line: 388, column: 12, scope: !1146)
!1148 = !DILocation(line: 388, column: 6, scope: !1120)
!1149 = !DILocation(line: 389, column: 17, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !1146, file: !440, line: 388, column: 18)
!1151 = !DILocation(line: 389, column: 23, scope: !1150)
!1152 = !DILocation(line: 389, column: 3, scope: !1150)
!1153 = !DILocation(line: 390, column: 3, scope: !1150)
!1154 = !DILocation(line: 395, column: 19, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1120, file: !440, line: 395, column: 6)
!1156 = !DILocation(line: 395, column: 22, scope: !1155)
!1157 = !DILocation(line: 395, column: 6, scope: !1155)
!1158 = !DILocation(line: 395, column: 6, scope: !1120)
!1159 = !DILocation(line: 396, column: 3, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1155, file: !440, line: 395, column: 30)
!1161 = !DILocalVariable(name: "c", scope: !1120, file: !440, line: 399, type: !116)
!1162 = !DILocation(line: 399, column: 12, scope: !1120)
!1163 = !DILocation(line: 399, column: 31, scope: !1120)
!1164 = !DILocation(line: 399, column: 34, scope: !1120)
!1165 = !DILocation(line: 399, column: 16, scope: !1120)
!1166 = !DILocalVariable(name: "rc", scope: !1120, file: !440, line: 400, type: !116)
!1167 = !DILocation(line: 400, column: 12, scope: !1120)
!1168 = !DILocation(line: 400, column: 29, scope: !1120)
!1169 = !DILocation(line: 400, column: 32, scope: !1120)
!1170 = !DILocation(line: 400, column: 17, scope: !1120)
!1171 = !DILocalVariable(name: "align_gap", scope: !1120, file: !440, line: 401, type: !94)
!1172 = !DILocation(line: 401, column: 9, scope: !1120)
!1173 = !DILocation(line: 401, column: 32, scope: !1120)
!1174 = !DILocation(line: 401, column: 59, scope: !1120)
!1175 = !DILocation(line: 401, column: 62, scope: !1120)
!1176 = !DILocation(line: 401, column: 49, scope: !1120)
!1177 = !DILocation(line: 401, column: 36, scope: !1120)
!1178 = !DILocalVariable(name: "chunks_need", scope: !1120, file: !440, line: 402, type: !645)
!1179 = !DILocation(line: 402, column: 12, scope: !1120)
!1180 = !DILocation(line: 402, column: 43, scope: !1120)
!1181 = !DILocation(line: 402, column: 46, scope: !1120)
!1182 = !DILocation(line: 402, column: 54, scope: !1120)
!1183 = !DILocation(line: 402, column: 52, scope: !1120)
!1184 = !DILocation(line: 402, column: 26, scope: !1120)
!1185 = !DILocation(line: 404, column: 6, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1120, file: !440, line: 404, column: 6)
!1187 = !DILocation(line: 404, column: 12, scope: !1186)
!1188 = !DILocation(line: 404, column: 27, scope: !1186)
!1189 = !DILocation(line: 404, column: 16, scope: !1186)
!1190 = !DILocation(line: 404, column: 34, scope: !1186)
!1191 = !DILocation(line: 404, column: 40, scope: !1186)
!1192 = !DILocation(line: 404, column: 31, scope: !1186)
!1193 = !DILocation(line: 404, column: 6, scope: !1120)
!1194 = !DILocation(line: 406, column: 2, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1186, file: !440, line: 404, column: 47)
!1196 = !DILocation(line: 406, column: 24, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1186, file: !440, line: 406, column: 13)
!1198 = !DILocation(line: 406, column: 27, scope: !1197)
!1199 = !DILocation(line: 406, column: 13, scope: !1197)
!1200 = !DILocation(line: 406, column: 33, scope: !1197)
!1201 = !DILocation(line: 406, column: 30, scope: !1197)
!1202 = !DILocation(line: 406, column: 13, scope: !1186)
!1203 = !DILocation(line: 408, column: 10, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1197, file: !440, line: 406, column: 46)
!1205 = !DILocation(line: 408, column: 3, scope: !1204)
!1206 = !DILocation(line: 409, column: 24, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !1197, file: !440, line: 409, column: 13)
!1208 = !DILocation(line: 409, column: 27, scope: !1207)
!1209 = !DILocation(line: 409, column: 13, scope: !1207)
!1210 = !DILocation(line: 409, column: 32, scope: !1207)
!1211 = !DILocation(line: 409, column: 30, scope: !1207)
!1212 = !DILocation(line: 409, column: 13, scope: !1197)
!1213 = !DILocation(line: 420, column: 16, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1207, file: !440, line: 409, column: 45)
!1215 = !DILocation(line: 420, column: 19, scope: !1214)
!1216 = !DILocation(line: 420, column: 22, scope: !1214)
!1217 = !DILocation(line: 420, column: 26, scope: !1214)
!1218 = !DILocation(line: 420, column: 24, scope: !1214)
!1219 = !DILocation(line: 420, column: 3, scope: !1214)
!1220 = !DILocation(line: 421, column: 18, scope: !1214)
!1221 = !DILocation(line: 421, column: 21, scope: !1214)
!1222 = !DILocation(line: 421, column: 3, scope: !1214)
!1223 = !DILocation(line: 422, column: 14, scope: !1214)
!1224 = !DILocation(line: 422, column: 17, scope: !1214)
!1225 = !DILocation(line: 422, column: 21, scope: !1214)
!1226 = !DILocation(line: 422, column: 19, scope: !1214)
!1227 = !DILocation(line: 422, column: 3, scope: !1214)
!1228 = !DILocation(line: 431, column: 10, scope: !1214)
!1229 = !DILocation(line: 431, column: 3, scope: !1214)
!1230 = !DILocation(line: 432, column: 25, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1207, file: !440, line: 432, column: 13)
!1232 = !DILocation(line: 432, column: 28, scope: !1231)
!1233 = !DILocation(line: 432, column: 14, scope: !1231)
!1234 = !DILocation(line: 432, column: 32, scope: !1231)
!1235 = !DILocation(line: 433, column: 18, scope: !1231)
!1236 = !DILocation(line: 433, column: 21, scope: !1231)
!1237 = !DILocation(line: 433, column: 7, scope: !1231)
!1238 = !DILocation(line: 433, column: 37, scope: !1231)
!1239 = !DILocation(line: 433, column: 40, scope: !1231)
!1240 = !DILocation(line: 433, column: 26, scope: !1231)
!1241 = !DILocation(line: 433, column: 24, scope: !1231)
!1242 = !DILocation(line: 433, column: 47, scope: !1231)
!1243 = !DILocation(line: 433, column: 44, scope: !1231)
!1244 = !DILocation(line: 432, column: 13, scope: !1207)
!1245 = !DILocalVariable(name: "split_size", scope: !1246, file: !440, line: 435, type: !645)
!1246 = distinct !DILexicalBlock(scope: !1231, file: !440, line: 433, column: 61)
!1247 = !DILocation(line: 435, column: 13, scope: !1246)
!1248 = !DILocation(line: 435, column: 26, scope: !1246)
!1249 = !DILocation(line: 435, column: 51, scope: !1246)
!1250 = !DILocation(line: 435, column: 54, scope: !1246)
!1251 = !DILocation(line: 435, column: 40, scope: !1246)
!1252 = !DILocation(line: 435, column: 38, scope: !1246)
!1253 = !DILocation(line: 445, column: 20, scope: !1246)
!1254 = !DILocation(line: 445, column: 23, scope: !1246)
!1255 = !DILocation(line: 445, column: 3, scope: !1246)
!1256 = !DILocation(line: 447, column: 7, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1246, file: !440, line: 447, column: 7)
!1258 = !DILocation(line: 447, column: 31, scope: !1257)
!1259 = !DILocation(line: 447, column: 34, scope: !1257)
!1260 = !DILocation(line: 447, column: 20, scope: !1257)
!1261 = !DILocation(line: 447, column: 18, scope: !1257)
!1262 = !DILocation(line: 447, column: 7, scope: !1246)
!1263 = !DILocation(line: 448, column: 17, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !1257, file: !440, line: 447, column: 39)
!1265 = !DILocation(line: 448, column: 20, scope: !1264)
!1266 = !DILocation(line: 448, column: 24, scope: !1264)
!1267 = !DILocation(line: 448, column: 29, scope: !1264)
!1268 = !DILocation(line: 448, column: 27, scope: !1264)
!1269 = !DILocation(line: 448, column: 4, scope: !1264)
!1270 = !DILocation(line: 449, column: 18, scope: !1264)
!1271 = !DILocation(line: 449, column: 21, scope: !1264)
!1272 = !DILocation(line: 449, column: 26, scope: !1264)
!1273 = !DILocation(line: 449, column: 24, scope: !1264)
!1274 = !DILocation(line: 449, column: 4, scope: !1264)
!1275 = !DILocation(line: 450, column: 3, scope: !1264)
!1276 = !DILocation(line: 452, column: 16, scope: !1246)
!1277 = !DILocation(line: 452, column: 19, scope: !1246)
!1278 = !DILocation(line: 452, column: 22, scope: !1246)
!1279 = !DILocation(line: 452, column: 3, scope: !1246)
!1280 = !DILocation(line: 453, column: 18, scope: !1246)
!1281 = !DILocation(line: 453, column: 21, scope: !1246)
!1282 = !DILocation(line: 453, column: 3, scope: !1246)
!1283 = !DILocation(line: 462, column: 10, scope: !1246)
!1284 = !DILocation(line: 462, column: 3, scope: !1246)
!1285 = !DILocalVariable(name: "ptr2", scope: !1120, file: !440, line: 474, type: !129)
!1286 = !DILocation(line: 474, column: 8, scope: !1120)
!1287 = !DILocation(line: 474, column: 38, scope: !1120)
!1288 = !DILocation(line: 474, column: 44, scope: !1120)
!1289 = !DILocation(line: 474, column: 51, scope: !1120)
!1290 = !DILocation(line: 474, column: 15, scope: !1120)
!1291 = !DILocation(line: 476, column: 6, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1120, file: !440, line: 476, column: 6)
!1293 = !DILocation(line: 476, column: 11, scope: !1292)
!1294 = !DILocation(line: 476, column: 6, scope: !1120)
!1295 = !DILocalVariable(name: "prev_size", scope: !1296, file: !440, line: 477, type: !94)
!1296 = distinct !DILexicalBlock(scope: !1292, file: !440, line: 476, column: 17)
!1297 = !DILocation(line: 477, column: 10, scope: !1296)
!1298 = !DILocation(line: 477, column: 39, scope: !1296)
!1299 = !DILocation(line: 477, column: 53, scope: !1296)
!1300 = !DILocation(line: 477, column: 56, scope: !1296)
!1301 = !DILocation(line: 477, column: 42, scope: !1296)
!1302 = !DILocation(line: 477, column: 22, scope: !1296)
!1303 = !DILocation(line: 477, column: 62, scope: !1296)
!1304 = !DILocation(line: 477, column: 60, scope: !1296)
!1305 = !DILocation(line: 479, column: 10, scope: !1296)
!1306 = !DILocation(line: 479, column: 16, scope: !1296)
!1307 = !DILocation(line: 479, column: 24, scope: !1296)
!1308 = !DILocation(line: 479, column: 38, scope: !1296)
!1309 = !DILocation(line: 479, column: 35, scope: !1296)
!1310 = !DILocation(line: 479, column: 22, scope: !1296)
!1311 = !DILocation(line: 479, column: 49, scope: !1296)
!1312 = !DILocation(line: 479, column: 63, scope: !1296)
!1313 = !DILocation(line: 479, column: 3, scope: !1296)
!1314 = !DILocation(line: 480, column: 17, scope: !1296)
!1315 = !DILocation(line: 480, column: 23, scope: !1296)
!1316 = !DILocation(line: 480, column: 3, scope: !1296)
!1317 = !DILocation(line: 481, column: 2, scope: !1296)
!1318 = !DILocation(line: 482, column: 9, scope: !1120)
!1319 = !DILocation(line: 482, column: 2, scope: !1120)
!1320 = !DILocation(line: 483, column: 1, scope: !1120)
!1321 = distinct !DISubprogram(name: "chunk_used", scope: !87, file: !87, line: 137, type: !1322, scopeLine: 138, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !252)
!1322 = !DISubroutineType(types: !1323)
!1323 = !{!495, !111, !116}
!1324 = !DILocalVariable(name: "h", arg: 1, scope: !1321, file: !87, line: 137, type: !111)
!1325 = !DILocation(line: 137, column: 47, scope: !1321)
!1326 = !DILocalVariable(name: "c", arg: 2, scope: !1321, file: !87, line: 137, type: !116)
!1327 = !DILocation(line: 137, column: 60, scope: !1321)
!1328 = !DILocation(line: 139, column: 21, scope: !1321)
!1329 = !DILocation(line: 139, column: 24, scope: !1321)
!1330 = !DILocation(line: 139, column: 9, scope: !1321)
!1331 = !DILocation(line: 139, column: 42, scope: !1321)
!1332 = !DILocation(line: 139, column: 2, scope: !1321)
!1333 = distinct !DISubprogram(name: "free_list_remove", scope: !440, file: !440, line: 60, type: !543, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !252)
!1334 = !DILocalVariable(name: "h", arg: 1, scope: !1333, file: !440, line: 60, type: !111)
!1335 = !DILocation(line: 60, column: 45, scope: !1333)
!1336 = !DILocalVariable(name: "c", arg: 2, scope: !1333, file: !440, line: 60, type: !116)
!1337 = !DILocation(line: 60, column: 58, scope: !1333)
!1338 = !DILocation(line: 62, column: 24, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1333, file: !440, line: 62, column: 6)
!1340 = !DILocation(line: 62, column: 27, scope: !1339)
!1341 = !DILocation(line: 62, column: 7, scope: !1339)
!1342 = !DILocation(line: 62, column: 6, scope: !1333)
!1343 = !DILocalVariable(name: "bidx", scope: !1344, file: !440, line: 63, type: !130)
!1344 = distinct !DILexicalBlock(scope: !1339, file: !440, line: 62, column: 31)
!1345 = !DILocation(line: 63, column: 7, scope: !1344)
!1346 = !DILocation(line: 63, column: 25, scope: !1344)
!1347 = !DILocation(line: 63, column: 39, scope: !1344)
!1348 = !DILocation(line: 63, column: 42, scope: !1344)
!1349 = !DILocation(line: 63, column: 28, scope: !1344)
!1350 = !DILocation(line: 63, column: 14, scope: !1344)
!1351 = !DILocation(line: 64, column: 25, scope: !1344)
!1352 = !DILocation(line: 64, column: 28, scope: !1344)
!1353 = !DILocation(line: 64, column: 31, scope: !1344)
!1354 = !DILocation(line: 64, column: 3, scope: !1344)
!1355 = !DILocation(line: 65, column: 2, scope: !1344)
!1356 = !DILocation(line: 66, column: 1, scope: !1333)
!1357 = distinct !DISubprogram(name: "merge_chunks", scope: !440, file: !440, line: 125, type: !850, scopeLine: 126, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !252)
!1358 = !DILocalVariable(name: "h", arg: 1, scope: !1357, file: !440, line: 125, type: !111)
!1359 = !DILocation(line: 125, column: 41, scope: !1357)
!1360 = !DILocalVariable(name: "lc", arg: 2, scope: !1357, file: !440, line: 125, type: !116)
!1361 = !DILocation(line: 125, column: 54, scope: !1357)
!1362 = !DILocalVariable(name: "rc", arg: 3, scope: !1357, file: !440, line: 125, type: !116)
!1363 = !DILocation(line: 125, column: 68, scope: !1357)
!1364 = !DILocalVariable(name: "newsz", scope: !1357, file: !440, line: 127, type: !645)
!1365 = !DILocation(line: 127, column: 12, scope: !1357)
!1366 = !DILocation(line: 127, column: 31, scope: !1357)
!1367 = !DILocation(line: 127, column: 34, scope: !1357)
!1368 = !DILocation(line: 127, column: 20, scope: !1357)
!1369 = !DILocation(line: 127, column: 51, scope: !1357)
!1370 = !DILocation(line: 127, column: 54, scope: !1357)
!1371 = !DILocation(line: 127, column: 40, scope: !1357)
!1372 = !DILocation(line: 127, column: 38, scope: !1357)
!1373 = !DILocation(line: 129, column: 17, scope: !1357)
!1374 = !DILocation(line: 129, column: 20, scope: !1357)
!1375 = !DILocation(line: 129, column: 24, scope: !1357)
!1376 = !DILocation(line: 129, column: 2, scope: !1357)
!1377 = !DILocation(line: 130, column: 22, scope: !1357)
!1378 = !DILocation(line: 130, column: 37, scope: !1357)
!1379 = !DILocation(line: 130, column: 40, scope: !1357)
!1380 = !DILocation(line: 130, column: 25, scope: !1357)
!1381 = !DILocation(line: 130, column: 45, scope: !1357)
!1382 = !DILocation(line: 130, column: 2, scope: !1357)
!1383 = !DILocation(line: 131, column: 1, scope: !1357)
!1384 = distinct !DISubprogram(name: "chunksz_to_bytes", scope: !87, file: !87, line: 245, type: !1385, scopeLine: 246, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !252)
!1385 = !DISubroutineType(types: !1386)
!1386 = !{!94, !111, !645}
!1387 = !DILocalVariable(name: "h", arg: 1, scope: !1384, file: !87, line: 245, type: !111)
!1388 = !DILocation(line: 245, column: 54, scope: !1384)
!1389 = !DILocalVariable(name: "chunksz_in", arg: 2, scope: !1384, file: !87, line: 245, type: !645)
!1390 = !DILocation(line: 245, column: 67, scope: !1384)
!1391 = !DILocation(line: 247, column: 9, scope: !1384)
!1392 = !DILocation(line: 247, column: 20, scope: !1384)
!1393 = !DILocation(line: 247, column: 46, scope: !1384)
!1394 = !DILocation(line: 247, column: 27, scope: !1384)
!1395 = !DILocation(line: 247, column: 25, scope: !1384)
!1396 = !DILocation(line: 247, column: 2, scope: !1384)
!1397 = distinct !DISubprogram(name: "sys_heap_init", scope: !440, file: !440, line: 485, type: !1398, scopeLine: 486, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !252)
!1398 = !DISubroutineType(types: !1399)
!1399 = !{null, !443, !129, !94}
!1400 = !DILocalVariable(name: "heap", arg: 1, scope: !1397, file: !440, line: 485, type: !443)
!1401 = !DILocation(line: 485, column: 37, scope: !1397)
!1402 = !DILocalVariable(name: "mem", arg: 2, scope: !1397, file: !440, line: 485, type: !129)
!1403 = !DILocation(line: 485, column: 49, scope: !1397)
!1404 = !DILocalVariable(name: "bytes", arg: 3, scope: !1397, file: !440, line: 485, type: !94)
!1405 = !DILocation(line: 485, column: 61, scope: !1397)
!1406 = !DILocation(line: 499, column: 29, scope: !1397)
!1407 = !DILocation(line: 499, column: 11, scope: !1397)
!1408 = !DILocation(line: 499, column: 8, scope: !1397)
!1409 = !DILocalVariable(name: "addr", scope: !1397, file: !440, line: 502, type: !110)
!1410 = !DILocation(line: 502, column: 12, scope: !1397)
!1411 = !DILocation(line: 502, column: 38, scope: !1397)
!1412 = !DILocation(line: 502, column: 22, scope: !1397)
!1413 = !DILocation(line: 502, column: 43, scope: !1397)
!1414 = !DILocation(line: 502, column: 72, scope: !1397)
!1415 = !DILocation(line: 502, column: 95, scope: !1397)
!1416 = !DILocalVariable(name: "end", scope: !1397, file: !440, line: 503, type: !110)
!1417 = !DILocation(line: 503, column: 12, scope: !1397)
!1418 = !DILocation(line: 503, column: 47, scope: !1397)
!1419 = !DILocation(line: 503, column: 53, scope: !1397)
!1420 = !DILocation(line: 503, column: 51, scope: !1397)
!1421 = !DILocation(line: 503, column: 20, scope: !1397)
!1422 = !DILocation(line: 503, column: 60, scope: !1397)
!1423 = !DILocation(line: 503, column: 83, scope: !1397)
!1424 = !DILocalVariable(name: "heap_sz", scope: !1397, file: !440, line: 504, type: !645)
!1425 = !DILocation(line: 504, column: 12, scope: !1397)
!1426 = !DILocation(line: 504, column: 23, scope: !1397)
!1427 = !DILocation(line: 504, column: 29, scope: !1397)
!1428 = !DILocation(line: 504, column: 27, scope: !1397)
!1429 = !DILocation(line: 504, column: 35, scope: !1397)
!1430 = !DILocalVariable(name: "h", scope: !1397, file: !440, line: 509, type: !111)
!1431 = !DILocation(line: 509, column: 17, scope: !1397)
!1432 = !DILocation(line: 509, column: 38, scope: !1397)
!1433 = !DILocation(line: 509, column: 21, scope: !1397)
!1434 = !DILocation(line: 510, column: 15, scope: !1397)
!1435 = !DILocation(line: 510, column: 2, scope: !1397)
!1436 = !DILocation(line: 510, column: 8, scope: !1397)
!1437 = !DILocation(line: 510, column: 13, scope: !1397)
!1438 = !DILocation(line: 511, column: 17, scope: !1397)
!1439 = !DILocation(line: 511, column: 2, scope: !1397)
!1440 = !DILocation(line: 511, column: 5, scope: !1397)
!1441 = !DILocation(line: 511, column: 15, scope: !1397)
!1442 = !DILocation(line: 512, column: 2, scope: !1397)
!1443 = !DILocation(line: 512, column: 5, scope: !1397)
!1444 = !DILocation(line: 512, column: 19, scope: !1397)
!1445 = !DILocalVariable(name: "nb_buckets", scope: !1397, file: !440, line: 520, type: !130)
!1446 = !DILocation(line: 520, column: 6, scope: !1397)
!1447 = !DILocation(line: 520, column: 30, scope: !1397)
!1448 = !DILocation(line: 520, column: 33, scope: !1397)
!1449 = !DILocation(line: 520, column: 19, scope: !1397)
!1450 = !DILocation(line: 520, column: 42, scope: !1397)
!1451 = !DILocalVariable(name: "chunk0_size", scope: !1397, file: !440, line: 521, type: !645)
!1452 = !DILocation(line: 521, column: 12, scope: !1397)
!1453 = !DILocation(line: 522, column: 10, scope: !1397)
!1454 = !DILocation(line: 522, column: 21, scope: !1397)
!1455 = !DILocation(line: 521, column: 56, scope: !1397)
!1456 = !DILocation(line: 521, column: 26, scope: !1397)
!1457 = !DILocalVariable(name: "i", scope: !1458, file: !440, line: 526, type: !130)
!1458 = distinct !DILexicalBlock(scope: !1397, file: !440, line: 526, column: 2)
!1459 = !DILocation(line: 526, column: 11, scope: !1458)
!1460 = !DILocation(line: 526, column: 7, scope: !1458)
!1461 = !DILocation(line: 526, column: 18, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1458, file: !440, line: 526, column: 2)
!1463 = !DILocation(line: 526, column: 22, scope: !1462)
!1464 = !DILocation(line: 526, column: 20, scope: !1462)
!1465 = !DILocation(line: 526, column: 2, scope: !1458)
!1466 = !DILocation(line: 527, column: 3, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1462, file: !440, line: 526, column: 39)
!1468 = !DILocation(line: 527, column: 6, scope: !1467)
!1469 = !DILocation(line: 527, column: 14, scope: !1467)
!1470 = !DILocation(line: 527, column: 17, scope: !1467)
!1471 = !DILocation(line: 527, column: 22, scope: !1467)
!1472 = !DILocation(line: 528, column: 2, scope: !1467)
!1473 = !DILocation(line: 526, column: 35, scope: !1462)
!1474 = !DILocation(line: 526, column: 2, scope: !1462)
!1475 = distinct !{!1475, !1465, !1476}
!1476 = !DILocation(line: 528, column: 2, scope: !1458)
!1477 = !DILocation(line: 531, column: 17, scope: !1397)
!1478 = !DILocation(line: 531, column: 23, scope: !1397)
!1479 = !DILocation(line: 531, column: 2, scope: !1397)
!1480 = !DILocation(line: 532, column: 22, scope: !1397)
!1481 = !DILocation(line: 532, column: 2, scope: !1397)
!1482 = !DILocation(line: 533, column: 17, scope: !1397)
!1483 = !DILocation(line: 533, column: 2, scope: !1397)
!1484 = !DILocation(line: 536, column: 17, scope: !1397)
!1485 = !DILocation(line: 536, column: 20, scope: !1397)
!1486 = !DILocation(line: 536, column: 33, scope: !1397)
!1487 = !DILocation(line: 536, column: 43, scope: !1397)
!1488 = !DILocation(line: 536, column: 41, scope: !1397)
!1489 = !DILocation(line: 536, column: 2, scope: !1397)
!1490 = !DILocation(line: 537, column: 22, scope: !1397)
!1491 = !DILocation(line: 537, column: 25, scope: !1397)
!1492 = !DILocation(line: 537, column: 38, scope: !1397)
!1493 = !DILocation(line: 537, column: 2, scope: !1397)
!1494 = !DILocation(line: 540, column: 17, scope: !1397)
!1495 = !DILocation(line: 540, column: 20, scope: !1397)
!1496 = !DILocation(line: 540, column: 2, scope: !1397)
!1497 = !DILocation(line: 541, column: 22, scope: !1397)
!1498 = !DILocation(line: 541, column: 25, scope: !1397)
!1499 = !DILocation(line: 541, column: 34, scope: !1397)
!1500 = !DILocation(line: 541, column: 44, scope: !1397)
!1501 = !DILocation(line: 541, column: 42, scope: !1397)
!1502 = !DILocation(line: 541, column: 2, scope: !1397)
!1503 = !DILocation(line: 542, column: 17, scope: !1397)
!1504 = !DILocation(line: 542, column: 20, scope: !1397)
!1505 = !DILocation(line: 542, column: 2, scope: !1397)
!1506 = !DILocation(line: 544, column: 16, scope: !1397)
!1507 = !DILocation(line: 544, column: 19, scope: !1397)
!1508 = !DILocation(line: 544, column: 2, scope: !1397)
!1509 = !DILocation(line: 545, column: 1, scope: !1397)
!1510 = distinct !DISubprogram(name: "heap_footer_bytes", scope: !87, file: !87, line: 225, type: !1511, scopeLine: 226, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !252)
!1511 = !DISubroutineType(types: !1512)
!1512 = !{!94, !94}
!1513 = !DILocalVariable(name: "size", arg: 1, scope: !1510, file: !87, line: 225, type: !94)
!1514 = !DILocation(line: 225, column: 47, scope: !1510)
!1515 = !DILocation(line: 227, column: 24, scope: !1510)
!1516 = !DILocation(line: 227, column: 9, scope: !1510)
!1517 = !DILocation(line: 227, column: 2, scope: !1510)
!1518 = distinct !DISubprogram(name: "bucket_idx", scope: !87, file: !87, line: 250, type: !1519, scopeLine: 251, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !252)
!1519 = !DISubroutineType(types: !1520)
!1520 = !{!130, !111, !645}
!1521 = !DILocalVariable(name: "h", arg: 1, scope: !1518, file: !87, line: 250, type: !111)
!1522 = !DILocation(line: 250, column: 45, scope: !1518)
!1523 = !DILocalVariable(name: "sz", arg: 2, scope: !1518, file: !87, line: 250, type: !645)
!1524 = !DILocation(line: 250, column: 58, scope: !1518)
!1525 = !DILocalVariable(name: "usable_sz", scope: !1518, file: !87, line: 252, type: !96)
!1526 = !DILocation(line: 252, column: 15, scope: !1518)
!1527 = !DILocation(line: 252, column: 27, scope: !1518)
!1528 = !DILocation(line: 252, column: 47, scope: !1518)
!1529 = !DILocation(line: 252, column: 32, scope: !1518)
!1530 = !DILocation(line: 252, column: 30, scope: !1518)
!1531 = !DILocation(line: 252, column: 50, scope: !1518)
!1532 = !DILocation(line: 253, column: 28, scope: !1518)
!1533 = !DILocation(line: 253, column: 14, scope: !1518)
!1534 = !DILocation(line: 253, column: 12, scope: !1518)
!1535 = !DILocation(line: 253, column: 2, scope: !1518)
!1536 = distinct !DISubprogram(name: "chunksz", scope: !87, file: !87, line: 230, type: !1537, scopeLine: 231, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !252)
!1537 = !DISubroutineType(types: !1538)
!1538 = !{!645, !94}
!1539 = !DILocalVariable(name: "bytes", arg: 1, scope: !1536, file: !87, line: 230, type: !94)
!1540 = !DILocation(line: 230, column: 40, scope: !1536)
!1541 = !DILocation(line: 232, column: 10, scope: !1536)
!1542 = !DILocation(line: 232, column: 16, scope: !1536)
!1543 = !DILocation(line: 232, column: 21, scope: !1536)
!1544 = !DILocation(line: 232, column: 27, scope: !1536)
!1545 = !DILocation(line: 232, column: 2, scope: !1536)
!1546 = distinct !DISubprogram(name: "set_chunk_size", scope: !87, file: !87, line: 172, type: !1547, scopeLine: 173, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !252)
!1547 = !DISubroutineType(types: !1548)
!1548 = !{null, !111, !116, !645}
!1549 = !DILocalVariable(name: "h", arg: 1, scope: !1546, file: !87, line: 172, type: !111)
!1550 = !DILocation(line: 172, column: 50, scope: !1546)
!1551 = !DILocalVariable(name: "c", arg: 2, scope: !1546, file: !87, line: 172, type: !116)
!1552 = !DILocation(line: 172, column: 63, scope: !1546)
!1553 = !DILocalVariable(name: "size", arg: 3, scope: !1546, file: !87, line: 172, type: !645)
!1554 = !DILocation(line: 172, column: 76, scope: !1546)
!1555 = !DILocation(line: 174, column: 12, scope: !1546)
!1556 = !DILocation(line: 174, column: 15, scope: !1546)
!1557 = !DILocation(line: 174, column: 33, scope: !1546)
!1558 = !DILocation(line: 174, column: 38, scope: !1546)
!1559 = !DILocation(line: 174, column: 2, scope: !1546)
!1560 = !DILocation(line: 175, column: 1, scope: !1546)
!1561 = distinct !DISubprogram(name: "set_left_chunk_size", scope: !87, file: !87, line: 209, type: !1547, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !252)
!1562 = !DILocalVariable(name: "h", arg: 1, scope: !1561, file: !87, line: 209, type: !111)
!1563 = !DILocation(line: 209, column: 55, scope: !1561)
!1564 = !DILocalVariable(name: "c", arg: 2, scope: !1561, file: !87, line: 209, type: !116)
!1565 = !DILocation(line: 209, column: 68, scope: !1561)
!1566 = !DILocalVariable(name: "size", arg: 3, scope: !1561, file: !87, line: 210, type: !645)
!1567 = !DILocation(line: 210, column: 22, scope: !1561)
!1568 = !DILocation(line: 212, column: 12, scope: !1561)
!1569 = !DILocation(line: 212, column: 15, scope: !1561)
!1570 = !DILocation(line: 212, column: 29, scope: !1561)
!1571 = !DILocation(line: 212, column: 2, scope: !1561)
!1572 = !DILocation(line: 213, column: 1, scope: !1561)
!1573 = distinct !DISubprogram(name: "sys_sflist_is_empty", scope: !374, file: !374, line: 335, type: !1574, scopeLine: 335, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !252)
!1574 = !DISubroutineType(types: !1575)
!1575 = !{!495, !1576}
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 32)
!1577 = !DILocalVariable(name: "list", arg: 1, scope: !1573, file: !374, line: 335, type: !1576)
!1578 = !DILocation(line: 335, column: 55, scope: !1573)
!1579 = !DILocation(line: 335, column: 92, scope: !1573)
!1580 = !DILocation(line: 335, column: 71, scope: !1573)
!1581 = !DILocation(line: 335, column: 98, scope: !1573)
!1582 = !DILocation(line: 335, column: 63, scope: !1573)
!1583 = distinct !DISubprogram(name: "sys_sflist_peek_head", scope: !374, file: !374, line: 255, type: !1584, scopeLine: 256, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !252)
!1584 = !DISubroutineType(types: !1585)
!1585 = !{!378, !1576}
!1586 = !DILocalVariable(name: "list", arg: 1, scope: !1583, file: !374, line: 255, type: !1576)
!1587 = !DILocation(line: 255, column: 64, scope: !1583)
!1588 = !DILocation(line: 257, column: 9, scope: !1583)
!1589 = !DILocation(line: 257, column: 15, scope: !1583)
!1590 = !DILocation(line: 257, column: 2, scope: !1583)
!1591 = distinct !DISubprogram(name: "big_heap", scope: !87, file: !87, line: 96, type: !1592, scopeLine: 97, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !252)
!1592 = !DISubroutineType(types: !1593)
!1593 = !{!495, !111}
!1594 = !DILocalVariable(name: "h", arg: 1, scope: !1591, file: !87, line: 96, type: !111)
!1595 = !DILocation(line: 96, column: 45, scope: !1591)
!1596 = !DILocation(line: 98, column: 25, scope: !1591)
!1597 = !DILocation(line: 98, column: 28, scope: !1591)
!1598 = !DILocation(line: 98, column: 9, scope: !1591)
!1599 = !DILocation(line: 98, column: 2, scope: !1591)
!1600 = distinct !DISubprogram(name: "big_heap_chunks", scope: !87, file: !87, line: 80, type: !1601, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !252)
!1601 = !DISubroutineType(types: !1602)
!1602 = !{!495, !645}
!1603 = !DILocalVariable(name: "chunks", arg: 1, scope: !1600, file: !87, line: 80, type: !645)
!1604 = !DILocation(line: 80, column: 47, scope: !1600)
!1605 = !DILocation(line: 83, column: 3, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1607, file: !87, line: 82, column: 9)
!1607 = distinct !DILexicalBlock(scope: !1600, file: !87, line: 82, column: 6)
!1608 = distinct !DISubprogram(name: "left_chunk", scope: !87, file: !87, line: 199, type: !1108, scopeLine: 200, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !252)
!1609 = !DILocalVariable(name: "h", arg: 1, scope: !1608, file: !87, line: 199, type: !111)
!1610 = !DILocation(line: 199, column: 51, scope: !1608)
!1611 = !DILocalVariable(name: "c", arg: 2, scope: !1608, file: !87, line: 199, type: !116)
!1612 = !DILocation(line: 199, column: 64, scope: !1608)
!1613 = !DILocation(line: 201, column: 9, scope: !1608)
!1614 = !DILocation(line: 201, column: 25, scope: !1608)
!1615 = !DILocation(line: 201, column: 28, scope: !1608)
!1616 = !DILocation(line: 201, column: 13, scope: !1608)
!1617 = !DILocation(line: 201, column: 11, scope: !1608)
!1618 = !DILocation(line: 201, column: 2, scope: !1608)
!1619 = distinct !DISubprogram(name: "chunk_field", scope: !87, file: !87, line: 107, type: !1620, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !252)
!1620 = !DISubroutineType(types: !1621)
!1621 = !{!116, !111, !116, !86}
!1622 = !DILocalVariable(name: "h", arg: 1, scope: !1619, file: !87, line: 107, type: !111)
!1623 = !DILocation(line: 107, column: 52, scope: !1619)
!1624 = !DILocalVariable(name: "c", arg: 2, scope: !1619, file: !87, line: 107, type: !116)
!1625 = !DILocation(line: 107, column: 65, scope: !1619)
!1626 = !DILocalVariable(name: "f", arg: 3, scope: !1619, file: !87, line: 108, type: !86)
!1627 = !DILocation(line: 108, column: 27, scope: !1619)
!1628 = !DILocalVariable(name: "buf", scope: !1619, file: !87, line: 110, type: !101)
!1629 = !DILocation(line: 110, column: 16, scope: !1619)
!1630 = !DILocation(line: 110, column: 32, scope: !1619)
!1631 = !DILocation(line: 110, column: 22, scope: !1619)
!1632 = !DILocalVariable(name: "cmem", scope: !1619, file: !87, line: 111, type: !129)
!1633 = !DILocation(line: 111, column: 8, scope: !1619)
!1634 = !DILocation(line: 111, column: 16, scope: !1619)
!1635 = !DILocation(line: 111, column: 20, scope: !1619)
!1636 = !DILocation(line: 113, column: 15, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !1619, file: !87, line: 113, column: 6)
!1638 = !DILocation(line: 113, column: 6, scope: !1637)
!1639 = !DILocation(line: 113, column: 6, scope: !1619)
!1640 = !DILocation(line: 114, column: 23, scope: !1641)
!1641 = distinct !DILexicalBlock(scope: !1637, file: !87, line: 113, column: 19)
!1642 = !DILocation(line: 114, column: 29, scope: !1641)
!1643 = !DILocation(line: 114, column: 10, scope: !1641)
!1644 = !DILocation(line: 114, column: 3, scope: !1641)
!1645 = !DILocation(line: 116, column: 23, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !1637, file: !87, line: 115, column: 9)
!1647 = !DILocation(line: 116, column: 29, scope: !1646)
!1648 = !DILocation(line: 116, column: 10, scope: !1646)
!1649 = !DILocation(line: 116, column: 3, scope: !1646)
!1650 = !DILocation(line: 118, column: 1, scope: !1619)
!1651 = distinct !DISubprogram(name: "free_list_remove_bidx", scope: !440, file: !440, line: 34, type: !1652, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !252)
!1652 = !DISubroutineType(types: !1653)
!1653 = !{null, !111, !116, !130}
!1654 = !DILocalVariable(name: "h", arg: 1, scope: !1651, file: !440, line: 34, type: !111)
!1655 = !DILocation(line: 34, column: 50, scope: !1651)
!1656 = !DILocalVariable(name: "c", arg: 2, scope: !1651, file: !440, line: 34, type: !116)
!1657 = !DILocation(line: 34, column: 63, scope: !1651)
!1658 = !DILocalVariable(name: "bidx", arg: 3, scope: !1651, file: !440, line: 34, type: !130)
!1659 = !DILocation(line: 34, column: 70, scope: !1651)
!1660 = !DILocalVariable(name: "b", scope: !1651, file: !440, line: 36, type: !763)
!1661 = !DILocation(line: 36, column: 24, scope: !1651)
!1662 = !DILocation(line: 36, column: 29, scope: !1651)
!1663 = !DILocation(line: 36, column: 32, scope: !1651)
!1664 = !DILocation(line: 36, column: 40, scope: !1651)
!1665 = !DILocation(line: 42, column: 22, scope: !1666)
!1666 = distinct !DILexicalBlock(scope: !1651, file: !440, line: 42, column: 6)
!1667 = !DILocation(line: 42, column: 25, scope: !1666)
!1668 = !DILocation(line: 42, column: 6, scope: !1666)
!1669 = !DILocation(line: 42, column: 31, scope: !1666)
!1670 = !DILocation(line: 42, column: 28, scope: !1666)
!1671 = !DILocation(line: 42, column: 6, scope: !1651)
!1672 = !DILocation(line: 44, column: 33, scope: !1673)
!1673 = distinct !DILexicalBlock(scope: !1666, file: !440, line: 42, column: 34)
!1674 = !DILocation(line: 44, column: 29, scope: !1673)
!1675 = !DILocation(line: 44, column: 23, scope: !1673)
!1676 = !DILocation(line: 44, column: 3, scope: !1673)
!1677 = !DILocation(line: 44, column: 6, scope: !1673)
!1678 = !DILocation(line: 44, column: 20, scope: !1673)
!1679 = !DILocation(line: 45, column: 3, scope: !1673)
!1680 = !DILocation(line: 45, column: 6, scope: !1673)
!1681 = !DILocation(line: 45, column: 11, scope: !1673)
!1682 = !DILocation(line: 46, column: 2, scope: !1673)
!1683 = !DILocalVariable(name: "first", scope: !1684, file: !440, line: 47, type: !116)
!1684 = distinct !DILexicalBlock(scope: !1666, file: !440, line: 46, column: 9)
!1685 = !DILocation(line: 47, column: 13, scope: !1684)
!1686 = !DILocation(line: 47, column: 37, scope: !1684)
!1687 = !DILocation(line: 47, column: 40, scope: !1684)
!1688 = !DILocation(line: 47, column: 21, scope: !1684)
!1689 = !DILocalVariable(name: "second", scope: !1684, file: !440, line: 48, type: !116)
!1690 = !DILocation(line: 48, column: 6, scope: !1684)
!1691 = !DILocation(line: 48, column: 31, scope: !1684)
!1692 = !DILocation(line: 48, column: 34, scope: !1684)
!1693 = !DILocation(line: 48, column: 15, scope: !1684)
!1694 = !DILocation(line: 50, column: 13, scope: !1684)
!1695 = !DILocation(line: 50, column: 3, scope: !1684)
!1696 = !DILocation(line: 50, column: 6, scope: !1684)
!1697 = !DILocation(line: 50, column: 11, scope: !1684)
!1698 = !DILocation(line: 51, column: 23, scope: !1684)
!1699 = !DILocation(line: 51, column: 26, scope: !1684)
!1700 = !DILocation(line: 51, column: 33, scope: !1684)
!1701 = !DILocation(line: 51, column: 3, scope: !1684)
!1702 = !DILocation(line: 52, column: 23, scope: !1684)
!1703 = !DILocation(line: 52, column: 26, scope: !1684)
!1704 = !DILocation(line: 52, column: 34, scope: !1684)
!1705 = !DILocation(line: 52, column: 3, scope: !1684)
!1706 = !DILocation(line: 58, column: 1, scope: !1651)
!1707 = distinct !DISubprogram(name: "next_free_chunk", scope: !87, file: !87, line: 182, type: !1108, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !252)
!1708 = !DILocalVariable(name: "h", arg: 1, scope: !1707, file: !87, line: 182, type: !111)
!1709 = !DILocation(line: 182, column: 56, scope: !1707)
!1710 = !DILocalVariable(name: "c", arg: 2, scope: !1707, file: !87, line: 182, type: !116)
!1711 = !DILocation(line: 182, column: 69, scope: !1707)
!1712 = !DILocation(line: 184, column: 21, scope: !1707)
!1713 = !DILocation(line: 184, column: 24, scope: !1707)
!1714 = !DILocation(line: 184, column: 9, scope: !1707)
!1715 = !DILocation(line: 184, column: 2, scope: !1707)
!1716 = distinct !DISubprogram(name: "prev_free_chunk", scope: !87, file: !87, line: 177, type: !1108, scopeLine: 178, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !252)
!1717 = !DILocalVariable(name: "h", arg: 1, scope: !1716, file: !87, line: 177, type: !111)
!1718 = !DILocation(line: 177, column: 56, scope: !1716)
!1719 = !DILocalVariable(name: "c", arg: 2, scope: !1716, file: !87, line: 177, type: !116)
!1720 = !DILocation(line: 177, column: 69, scope: !1716)
!1721 = !DILocation(line: 179, column: 21, scope: !1716)
!1722 = !DILocation(line: 179, column: 24, scope: !1716)
!1723 = !DILocation(line: 179, column: 9, scope: !1716)
!1724 = !DILocation(line: 179, column: 2, scope: !1716)
!1725 = distinct !DISubprogram(name: "set_next_free_chunk", scope: !87, file: !87, line: 193, type: !850, scopeLine: 195, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !252)
!1726 = !DILocalVariable(name: "h", arg: 1, scope: !1725, file: !87, line: 193, type: !111)
!1727 = !DILocation(line: 193, column: 55, scope: !1725)
!1728 = !DILocalVariable(name: "c", arg: 2, scope: !1725, file: !87, line: 193, type: !116)
!1729 = !DILocation(line: 193, column: 68, scope: !1725)
!1730 = !DILocalVariable(name: "next", arg: 3, scope: !1725, file: !87, line: 194, type: !116)
!1731 = !DILocation(line: 194, column: 22, scope: !1725)
!1732 = !DILocation(line: 196, column: 12, scope: !1725)
!1733 = !DILocation(line: 196, column: 15, scope: !1725)
!1734 = !DILocation(line: 196, column: 29, scope: !1725)
!1735 = !DILocation(line: 196, column: 2, scope: !1725)
!1736 = !DILocation(line: 197, column: 1, scope: !1725)
!1737 = distinct !DISubprogram(name: "set_prev_free_chunk", scope: !87, file: !87, line: 187, type: !850, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !252)
!1738 = !DILocalVariable(name: "h", arg: 1, scope: !1737, file: !87, line: 187, type: !111)
!1739 = !DILocation(line: 187, column: 55, scope: !1737)
!1740 = !DILocalVariable(name: "c", arg: 2, scope: !1737, file: !87, line: 187, type: !116)
!1741 = !DILocation(line: 187, column: 68, scope: !1737)
!1742 = !DILocalVariable(name: "prev", arg: 3, scope: !1737, file: !87, line: 188, type: !116)
!1743 = !DILocation(line: 188, column: 22, scope: !1737)
!1744 = !DILocation(line: 190, column: 12, scope: !1737)
!1745 = !DILocation(line: 190, column: 15, scope: !1737)
!1746 = !DILocation(line: 190, column: 29, scope: !1737)
!1747 = !DILocation(line: 190, column: 2, scope: !1737)
!1748 = !DILocation(line: 191, column: 1, scope: !1737)
!1749 = distinct !DISubprogram(name: "chunk_set", scope: !87, file: !87, line: 120, type: !1750, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !252)
!1750 = !DISubroutineType(types: !1751)
!1751 = !{null, !111, !116, !86, !116}
!1752 = !DILocalVariable(name: "h", arg: 1, scope: !1749, file: !87, line: 120, type: !111)
!1753 = !DILocation(line: 120, column: 45, scope: !1749)
!1754 = !DILocalVariable(name: "c", arg: 2, scope: !1749, file: !87, line: 120, type: !116)
!1755 = !DILocation(line: 120, column: 58, scope: !1749)
!1756 = !DILocalVariable(name: "f", arg: 3, scope: !1749, file: !87, line: 121, type: !86)
!1757 = !DILocation(line: 121, column: 27, scope: !1749)
!1758 = !DILocalVariable(name: "val", arg: 4, scope: !1749, file: !87, line: 121, type: !116)
!1759 = !DILocation(line: 121, column: 40, scope: !1749)
!1760 = !DILocalVariable(name: "buf", scope: !1749, file: !87, line: 125, type: !101)
!1761 = !DILocation(line: 125, column: 16, scope: !1749)
!1762 = !DILocation(line: 125, column: 32, scope: !1749)
!1763 = !DILocation(line: 125, column: 22, scope: !1749)
!1764 = !DILocalVariable(name: "cmem", scope: !1749, file: !87, line: 126, type: !129)
!1765 = !DILocation(line: 126, column: 8, scope: !1749)
!1766 = !DILocation(line: 126, column: 16, scope: !1749)
!1767 = !DILocation(line: 126, column: 20, scope: !1749)
!1768 = !DILocation(line: 128, column: 15, scope: !1769)
!1769 = distinct !DILexicalBlock(scope: !1749, file: !87, line: 128, column: 6)
!1770 = !DILocation(line: 128, column: 6, scope: !1769)
!1771 = !DILocation(line: 128, column: 6, scope: !1749)
!1772 = !DILocation(line: 130, column: 27, scope: !1773)
!1773 = distinct !DILexicalBlock(scope: !1769, file: !87, line: 128, column: 19)
!1774 = !DILocation(line: 130, column: 16, scope: !1773)
!1775 = !DILocation(line: 130, column: 22, scope: !1773)
!1776 = !DILocation(line: 130, column: 3, scope: !1773)
!1777 = !DILocation(line: 130, column: 25, scope: !1773)
!1778 = !DILocation(line: 131, column: 2, scope: !1773)
!1779 = !DILocation(line: 133, column: 27, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1769, file: !87, line: 131, column: 9)
!1781 = !DILocation(line: 133, column: 16, scope: !1780)
!1782 = !DILocation(line: 133, column: 22, scope: !1780)
!1783 = !DILocation(line: 133, column: 3, scope: !1780)
!1784 = !DILocation(line: 133, column: 25, scope: !1780)
!1785 = !DILocation(line: 135, column: 1, scope: !1749)
!1786 = distinct !DISubprogram(name: "solo_free_header", scope: !87, file: !87, line: 215, type: !1322, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !252)
!1787 = !DILocalVariable(name: "h", arg: 1, scope: !1786, file: !87, line: 215, type: !111)
!1788 = !DILocation(line: 215, column: 53, scope: !1786)
!1789 = !DILocalVariable(name: "c", arg: 2, scope: !1786, file: !87, line: 215, type: !116)
!1790 = !DILocation(line: 215, column: 66, scope: !1786)
!1791 = !DILocation(line: 217, column: 18, scope: !1786)
!1792 = !DILocation(line: 217, column: 9, scope: !1786)
!1793 = !DILocation(line: 217, column: 21, scope: !1786)
!1794 = !DILocation(line: 217, column: 35, scope: !1786)
!1795 = !DILocation(line: 217, column: 38, scope: !1786)
!1796 = !DILocation(line: 217, column: 24, scope: !1786)
!1797 = !DILocation(line: 217, column: 41, scope: !1786)
!1798 = !DILocation(line: 0, scope: !1786)
!1799 = !DILocation(line: 217, column: 2, scope: !1786)
!1800 = distinct !DISubprogram(name: "free_list_add_bidx", scope: !440, file: !440, line: 68, type: !1652, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !252)
!1801 = !DILocalVariable(name: "h", arg: 1, scope: !1800, file: !440, line: 68, type: !111)
!1802 = !DILocation(line: 68, column: 47, scope: !1800)
!1803 = !DILocalVariable(name: "c", arg: 2, scope: !1800, file: !440, line: 68, type: !116)
!1804 = !DILocation(line: 68, column: 60, scope: !1800)
!1805 = !DILocalVariable(name: "bidx", arg: 3, scope: !1800, file: !440, line: 68, type: !130)
!1806 = !DILocation(line: 68, column: 67, scope: !1800)
!1807 = !DILocalVariable(name: "b", scope: !1800, file: !440, line: 70, type: !763)
!1808 = !DILocation(line: 70, column: 24, scope: !1800)
!1809 = !DILocation(line: 70, column: 29, scope: !1800)
!1810 = !DILocation(line: 70, column: 32, scope: !1800)
!1811 = !DILocation(line: 70, column: 40, scope: !1800)
!1812 = !DILocation(line: 72, column: 6, scope: !1813)
!1813 = distinct !DILexicalBlock(scope: !1800, file: !440, line: 72, column: 6)
!1814 = !DILocation(line: 72, column: 9, scope: !1813)
!1815 = !DILocation(line: 72, column: 14, scope: !1813)
!1816 = !DILocation(line: 72, column: 6, scope: !1800)
!1817 = !DILocation(line: 76, column: 32, scope: !1818)
!1818 = distinct !DILexicalBlock(scope: !1813, file: !440, line: 72, column: 21)
!1819 = !DILocation(line: 76, column: 28, scope: !1818)
!1820 = !DILocation(line: 76, column: 3, scope: !1818)
!1821 = !DILocation(line: 76, column: 6, scope: !1818)
!1822 = !DILocation(line: 76, column: 20, scope: !1818)
!1823 = !DILocation(line: 77, column: 13, scope: !1818)
!1824 = !DILocation(line: 77, column: 3, scope: !1818)
!1825 = !DILocation(line: 77, column: 6, scope: !1818)
!1826 = !DILocation(line: 77, column: 11, scope: !1818)
!1827 = !DILocation(line: 78, column: 23, scope: !1818)
!1828 = !DILocation(line: 78, column: 26, scope: !1818)
!1829 = !DILocation(line: 78, column: 29, scope: !1818)
!1830 = !DILocation(line: 78, column: 3, scope: !1818)
!1831 = !DILocation(line: 79, column: 23, scope: !1818)
!1832 = !DILocation(line: 79, column: 26, scope: !1818)
!1833 = !DILocation(line: 79, column: 29, scope: !1818)
!1834 = !DILocation(line: 79, column: 3, scope: !1818)
!1835 = !DILocation(line: 80, column: 2, scope: !1818)
!1836 = !DILocalVariable(name: "second", scope: !1837, file: !440, line: 84, type: !116)
!1837 = distinct !DILexicalBlock(scope: !1813, file: !440, line: 80, column: 9)
!1838 = !DILocation(line: 84, column: 13, scope: !1837)
!1839 = !DILocation(line: 84, column: 22, scope: !1837)
!1840 = !DILocation(line: 84, column: 25, scope: !1837)
!1841 = !DILocalVariable(name: "first", scope: !1837, file: !440, line: 85, type: !116)
!1842 = !DILocation(line: 85, column: 13, scope: !1837)
!1843 = !DILocation(line: 85, column: 37, scope: !1837)
!1844 = !DILocation(line: 85, column: 40, scope: !1837)
!1845 = !DILocation(line: 85, column: 21, scope: !1837)
!1846 = !DILocation(line: 87, column: 23, scope: !1837)
!1847 = !DILocation(line: 87, column: 26, scope: !1837)
!1848 = !DILocation(line: 87, column: 29, scope: !1837)
!1849 = !DILocation(line: 87, column: 3, scope: !1837)
!1850 = !DILocation(line: 88, column: 23, scope: !1837)
!1851 = !DILocation(line: 88, column: 26, scope: !1837)
!1852 = !DILocation(line: 88, column: 29, scope: !1837)
!1853 = !DILocation(line: 88, column: 3, scope: !1837)
!1854 = !DILocation(line: 89, column: 23, scope: !1837)
!1855 = !DILocation(line: 89, column: 26, scope: !1837)
!1856 = !DILocation(line: 89, column: 33, scope: !1837)
!1857 = !DILocation(line: 89, column: 3, scope: !1837)
!1858 = !DILocation(line: 90, column: 23, scope: !1837)
!1859 = !DILocation(line: 90, column: 26, scope: !1837)
!1860 = !DILocation(line: 90, column: 34, scope: !1837)
!1861 = !DILocation(line: 90, column: 3, scope: !1837)
!1862 = !DILocation(line: 96, column: 1, scope: !1800)
!1863 = distinct !DISubprogram(name: "big_heap_bytes", scope: !87, file: !87, line: 91, type: !1864, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !252)
!1864 = !DISubroutineType(types: !1865)
!1865 = !{!495, !94}
!1866 = !DILocalVariable(name: "bytes", arg: 1, scope: !1863, file: !87, line: 91, type: !94)
!1867 = !DILocation(line: 91, column: 43, scope: !1863)
!1868 = !DILocation(line: 93, column: 25, scope: !1863)
!1869 = !DILocation(line: 93, column: 31, scope: !1863)
!1870 = !DILocation(line: 93, column: 9, scope: !1863)
!1871 = !DILocation(line: 93, column: 2, scope: !1863)
!1872 = distinct !DISubprogram(name: "min_chunk_size", scope: !87, file: !87, line: 240, type: !1873, scopeLine: 241, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !252)
!1873 = !DISubroutineType(types: !1874)
!1874 = !{!645, !111}
!1875 = !DILocalVariable(name: "h", arg: 1, scope: !1872, file: !87, line: 240, type: !111)
!1876 = !DILocation(line: 240, column: 55, scope: !1872)
!1877 = !DILocation(line: 242, column: 26, scope: !1872)
!1878 = !DILocation(line: 242, column: 9, scope: !1872)
!1879 = !DILocation(line: 242, column: 2, scope: !1872)
