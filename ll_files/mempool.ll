; ModuleID = '../bc_files/mempool.bc'
source_filename = "/home/sri/zephyrproject/zephyr/kernel/mempool.c"
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

@_kernel = external dso_local global %struct.z_kernel, align 4

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_k_object_access_grant(ptr noundef %0, ptr noundef %1) #0 !dbg !96 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !221, metadata !DIExpression()), !dbg !223
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !222, metadata !DIExpression()), !dbg !224
  %5 = load ptr, ptr %3, align 4, !dbg !225
  %6 = load ptr, ptr %4, align 4, !dbg !226
  ret void, !dbg !227
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_k_object_release(ptr noundef %0) #0 !dbg !228 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !232, metadata !DIExpression()), !dbg !233
  %3 = load ptr, ptr %2, align 4, !dbg !234
  ret void, !dbg !235
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_impl_k_object_alloc(i8 noundef zeroext %0) #0 !dbg !236 {
  %2 = alloca i8, align 1
  store i8 %0, ptr %2, align 1
  call void @llvm.dbg.declare(metadata ptr %2, metadata !240, metadata !DIExpression()), !dbg !241
  %3 = load i8, ptr %2, align 1, !dbg !242
  ret ptr null, !dbg !243
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_impl_k_object_alloc_size(i8 noundef zeroext %0, i32 noundef %1) #0 !dbg !244 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8 %0, ptr %3, align 1
  call void @llvm.dbg.declare(metadata ptr %3, metadata !248, metadata !DIExpression()), !dbg !250
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !249, metadata !DIExpression()), !dbg !251
  %5 = load i8, ptr %3, align 1, !dbg !252
  %6 = load i32, ptr %4, align 4, !dbg !253
  ret ptr null, !dbg !254
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_thread_timeout_expires_ticks(ptr noundef %0) #0 !dbg !255 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !263, metadata !DIExpression()), !dbg !264
  %3 = load ptr, ptr %2, align 4, !dbg !265
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !266
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !267
  %6 = call i64 @z_timeout_expires(ptr noundef %5) #5, !dbg !268
  ret i64 %6, !dbg !269
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_thread_timeout_remaining_ticks(ptr noundef %0) #0 !dbg !270 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !272, metadata !DIExpression()), !dbg !273
  %3 = load ptr, ptr %2, align 4, !dbg !274
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !275
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !276
  %6 = call i64 @z_timeout_remaining(ptr noundef %5) #5, !dbg !277
  ret i64 %6, !dbg !278
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_timer_expires_ticks(ptr noundef %0) #0 !dbg !279 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !302, metadata !DIExpression()), !dbg !303
  %3 = load ptr, ptr %2, align 4, !dbg !304
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !305
  %5 = call i64 @z_timeout_expires(ptr noundef %4) #5, !dbg !306
  ret i64 %5, !dbg !307
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_timer_remaining_ticks(ptr noundef %0) #0 !dbg !308 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !310, metadata !DIExpression()), !dbg !311
  %3 = load ptr, ptr %2, align 4, !dbg !312
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !313
  %5 = call i64 @z_timeout_remaining(ptr noundef %4) #5, !dbg !314
  ret i64 %5, !dbg !315
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_k_timer_user_data_set(ptr noundef %0, ptr noundef %1) #0 !dbg !316 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !320, metadata !DIExpression()), !dbg !322
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !321, metadata !DIExpression()), !dbg !323
  %5 = load ptr, ptr %4, align 4, !dbg !324
  %6 = load ptr, ptr %3, align 4, !dbg !325
  %7 = getelementptr inbounds %struct.k_timer, ptr %6, i32 0, i32 6, !dbg !326
  store ptr %5, ptr %7, align 4, !dbg !327
  ret void, !dbg !328
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_impl_k_timer_user_data_get(ptr noundef %0) #0 !dbg !329 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !333, metadata !DIExpression()), !dbg !334
  %3 = load ptr, ptr %2, align 4, !dbg !335
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 6, !dbg !336
  %5 = load ptr, ptr %4, align 4, !dbg !336
  ret ptr %5, !dbg !337
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_queue_is_empty(ptr noundef %0) #0 !dbg !338 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !360, metadata !DIExpression()), !dbg !361
  %3 = load ptr, ptr %2, align 4, !dbg !362
  %4 = getelementptr inbounds %struct.k_queue, ptr %3, i32 0, i32 0, !dbg !363
  %5 = call zeroext i1 @sys_sflist_is_empty(ptr noundef %4) #5, !dbg !364
  %6 = zext i1 %5 to i32, !dbg !365
  ret i32 %6, !dbg !366
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_sem_count_get(ptr noundef %0) #0 !dbg !367 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !377, metadata !DIExpression()), !dbg !378
  %3 = load ptr, ptr %2, align 4, !dbg !379
  %4 = getelementptr inbounds %struct.k_sem, ptr %3, i32 0, i32 1, !dbg !380
  %5 = load i32, ptr %4, align 4, !dbg !380
  ret i32 %5, !dbg !381
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_msgq_num_free_get(ptr noundef %0) #0 !dbg !382 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !401, metadata !DIExpression()), !dbg !402
  %3 = load ptr, ptr %2, align 4, !dbg !403
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 3, !dbg !404
  %5 = load i32, ptr %4, align 4, !dbg !404
  %6 = load ptr, ptr %2, align 4, !dbg !405
  %7 = getelementptr inbounds %struct.k_msgq, ptr %6, i32 0, i32 8, !dbg !406
  %8 = load i32, ptr %7, align 4, !dbg !406
  %9 = sub i32 %5, %8, !dbg !407
  ret i32 %9, !dbg !408
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_msgq_num_used_get(ptr noundef %0) #0 !dbg !409 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !411, metadata !DIExpression()), !dbg !412
  %3 = load ptr, ptr %2, align 4, !dbg !413
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 8, !dbg !414
  %5 = load i32, ptr %4, align 4, !dbg !414
  ret i32 %5, !dbg !415
}

; Function Attrs: nounwind optsize
define hidden void @k_free(ptr noundef %0) #1 !dbg !416 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !421, metadata !DIExpression()), !dbg !424
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #6, !dbg !425
  call void @llvm.dbg.declare(metadata ptr %3, metadata !422, metadata !DIExpression()), !dbg !426
  %4 = load ptr, ptr %2, align 4, !dbg !427
  %5 = icmp ne ptr %4, null, !dbg !429
  br i1 %5, label %6, label %19, !dbg !430

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 4, !dbg !431
  store ptr %7, ptr %3, align 4, !dbg !433
  %8 = load ptr, ptr %3, align 4, !dbg !434
  %9 = getelementptr inbounds ptr, ptr %8, i32 -1, !dbg !434
  store ptr %9, ptr %3, align 4, !dbg !434
  store ptr %9, ptr %2, align 4, !dbg !435
  br label %10, !dbg !436

10:                                               ; preds = %6
  br label %11, !dbg !437

11:                                               ; preds = %10
  br label %12, !dbg !437

12:                                               ; preds = %11
  %13 = load ptr, ptr %3, align 4, !dbg !439
  %14 = load ptr, ptr %13, align 4, !dbg !440
  %15 = load ptr, ptr %2, align 4, !dbg !441
  call void @k_heap_free(ptr noundef %14, ptr noundef %15) #5, !dbg !442
  br label %16, !dbg !443

16:                                               ; preds = %12
  br label %17, !dbg !444

17:                                               ; preds = %16
  br label %18, !dbg !444

18:                                               ; preds = %17
  br label %19, !dbg !446

19:                                               ; preds = %18, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #6, !dbg !447
  ret void, !dbg !447
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: optsize
declare !dbg !448 dso_local void @k_heap_free(ptr noundef, ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind optsize
define hidden ptr @z_thread_aligned_alloc(i32 noundef %0, i32 noundef %1) #1 !dbg !451 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !457, metadata !DIExpression()), !dbg !461
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !458, metadata !DIExpression()), !dbg !462
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #6, !dbg !463
  call void @llvm.dbg.declare(metadata ptr %5, metadata !459, metadata !DIExpression()), !dbg !464
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #6, !dbg !465
  call void @llvm.dbg.declare(metadata ptr %6, metadata !460, metadata !DIExpression()), !dbg !466
  %7 = call zeroext i1 @k_is_in_isr() #5, !dbg !467
  br i1 %7, label %8, label %9, !dbg !469

8:                                                ; preds = %2
  store ptr null, ptr %6, align 4, !dbg !470
  br label %13, !dbg !472

9:                                                ; preds = %2
  %10 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !473
  %11 = getelementptr inbounds %struct.k_thread, ptr %10, i32 0, i32 5, !dbg !475
  %12 = load ptr, ptr %11, align 4, !dbg !475
  store ptr %12, ptr %6, align 4, !dbg !476
  br label %13

13:                                               ; preds = %9, %8
  %14 = load ptr, ptr %6, align 4, !dbg !477
  %15 = icmp ne ptr %14, null, !dbg !479
  br i1 %15, label %16, label %21, !dbg !480

16:                                               ; preds = %13
  %17 = load ptr, ptr %6, align 4, !dbg !481
  %18 = load i32, ptr %3, align 4, !dbg !483
  %19 = load i32, ptr %4, align 4, !dbg !484
  %20 = call ptr @z_heap_aligned_alloc(ptr noundef %17, i32 noundef %18, i32 noundef %19) #5, !dbg !485
  store ptr %20, ptr %5, align 4, !dbg !486
  br label %22, !dbg !487

21:                                               ; preds = %13
  store ptr null, ptr %5, align 4, !dbg !488
  br label %22

22:                                               ; preds = %21, %16
  %23 = load ptr, ptr %5, align 4, !dbg !490
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #6, !dbg !491
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #6, !dbg !491
  ret ptr %23, !dbg !492
}

; Function Attrs: optsize
declare !dbg !493 dso_local zeroext i1 @k_is_in_isr() #4

; Function Attrs: nounwind optsize
define internal ptr @z_heap_aligned_alloc(ptr noundef %0, i32 noundef %1, i32 noundef %2) #1 !dbg !497 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.k_timeout_t, align 8
  store ptr %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !501, metadata !DIExpression()), !dbg !507
  store i32 %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !502, metadata !DIExpression()), !dbg !508
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !503, metadata !DIExpression()), !dbg !509
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #6, !dbg !510
  call void @llvm.dbg.declare(metadata ptr %8, metadata !504, metadata !DIExpression()), !dbg !511
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #6, !dbg !512
  call void @llvm.dbg.declare(metadata ptr %9, metadata !505, metadata !DIExpression()), !dbg !513
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #6, !dbg !514
  call void @llvm.dbg.declare(metadata ptr %10, metadata !506, metadata !DIExpression()), !dbg !515
  %13 = load i32, ptr %7, align 4, !dbg !516
  %14 = call zeroext i1 @size_add_overflow(i32 noundef %13, i32 noundef 4, ptr noundef %7) #5, !dbg !518
  br i1 %14, label %15, label %16, !dbg !519

15:                                               ; preds = %3
  store ptr null, ptr %4, align 4, !dbg !520
  store i32 1, ptr %11, align 4
  br label %36, !dbg !520

16:                                               ; preds = %3
  %17 = load i32, ptr %6, align 4, !dbg !522
  %18 = or i32 %17, 4, !dbg !523
  store i32 %18, ptr %10, align 4, !dbg !524
  %19 = load ptr, ptr %5, align 4, !dbg !525
  %20 = load i32, ptr %10, align 4, !dbg !526
  %21 = load i32, ptr %7, align 4, !dbg !527
  %22 = getelementptr inbounds %struct.k_timeout_t, ptr %12, i32 0, i32 0, !dbg !528
  store i64 0, ptr %22, align 8, !dbg !528
  %23 = getelementptr inbounds %struct.k_timeout_t, ptr %12, i32 0, i32 0, !dbg !529
  %24 = load [1 x i64], ptr %23, align 8, !dbg !529
  %25 = call ptr @k_heap_aligned_alloc(ptr noundef %19, i32 noundef %20, i32 noundef %21, [1 x i64] %24) #5, !dbg !529
  store ptr %25, ptr %8, align 4, !dbg !530
  %26 = load ptr, ptr %8, align 4, !dbg !531
  %27 = icmp eq ptr %26, null, !dbg !533
  br i1 %27, label %28, label %29, !dbg !534

28:                                               ; preds = %16
  store ptr null, ptr %4, align 4, !dbg !535
  store i32 1, ptr %11, align 4
  br label %36, !dbg !535

29:                                               ; preds = %16
  %30 = load ptr, ptr %8, align 4, !dbg !537
  store ptr %30, ptr %9, align 4, !dbg !538
  %31 = load ptr, ptr %5, align 4, !dbg !539
  %32 = load ptr, ptr %9, align 4, !dbg !540
  store ptr %31, ptr %32, align 4, !dbg !541
  %33 = load ptr, ptr %9, align 4, !dbg !542
  %34 = getelementptr inbounds ptr, ptr %33, i32 1, !dbg !542
  store ptr %34, ptr %9, align 4, !dbg !542
  store ptr %34, ptr %8, align 4, !dbg !543
  %35 = load ptr, ptr %8, align 4, !dbg !544
  store ptr %35, ptr %4, align 4, !dbg !545
  store i32 1, ptr %11, align 4
  br label %36, !dbg !545

36:                                               ; preds = %29, %28, %15
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #6, !dbg !546
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #6, !dbg !546
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #6, !dbg !546
  %37 = load ptr, ptr %4, align 4, !dbg !546
  ret ptr %37, !dbg !546
}

; Function Attrs: optsize
declare !dbg !547 dso_local i64 @z_timeout_expires(ptr noundef) #4

; Function Attrs: optsize
declare !dbg !552 dso_local i64 @z_timeout_remaining(ptr noundef) #4

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @sys_sflist_is_empty(ptr noundef %0) #0 !dbg !553 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !558, metadata !DIExpression()), !dbg !559
  %3 = load ptr, ptr %2, align 4, !dbg !560
  %4 = call ptr @sys_sflist_peek_head(ptr noundef %3) #5, !dbg !561
  %5 = icmp eq ptr %4, null, !dbg !562
  ret i1 %5, !dbg !563
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @sys_sflist_peek_head(ptr noundef %0) #0 !dbg !564 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !568, metadata !DIExpression()), !dbg !569
  %3 = load ptr, ptr %2, align 4, !dbg !570
  %4 = getelementptr inbounds %struct._sflist, ptr %3, i32 0, i32 0, !dbg !571
  %5 = load ptr, ptr %4, align 4, !dbg !571
  ret ptr %5, !dbg !572
}

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @size_add_overflow(i32 noundef %0, i32 noundef %1, ptr noundef %2) #0 !dbg !573 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 4
  store i32 %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !579, metadata !DIExpression()), !dbg !582
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !580, metadata !DIExpression()), !dbg !583
  store ptr %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !581, metadata !DIExpression()), !dbg !584
  %7 = load i32, ptr %4, align 4, !dbg !585
  %8 = load i32, ptr %5, align 4, !dbg !586
  %9 = load ptr, ptr %6, align 4, !dbg !587
  %10 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %7, i32 %8), !dbg !588
  %11 = extractvalue { i32, i1 } %10, 1, !dbg !588
  %12 = extractvalue { i32, i1 } %10, 0, !dbg !588
  store i32 %12, ptr %9, align 4, !dbg !588
  ret i1 %11, !dbg !589
}

; Function Attrs: optsize
declare !dbg !590 dso_local ptr @k_heap_aligned_alloc(ptr noundef, i32 noundef, i32 noundef, [1 x i64]) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #2

attributes #0 = { inlinehint nounwind optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { optsize }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!89, !90, !91, !92, !93, !94}
!llvm.ident = !{!95}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !86, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "mempool.c", directory: "/home/sri/zephyrproject/zephyr/build")
!2 = !{!3}
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
!86 = !{!87, !88}
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!88 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!89 = !{i32 7, !"Dwarf Version", i32 4}
!90 = !{i32 2, !"Debug Info Version", i32 3}
!91 = !{i32 1, !"wchar_size", i32 4}
!92 = !{i32 1, !"static_rwdata", i32 1}
!93 = !{i32 1, !"enumsize_buildattr", i32 1}
!94 = !{i32 1, !"armlib_unavailable", i32 0}
!95 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
!96 = distinct !DISubprogram(name: "z_impl_k_object_access_grant", scope: !4, file: !4, line: 223, type: !97, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !220)
!97 = !DISubroutineType(types: !98)
!98 = !{null, !99, !101}
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 32)
!100 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 32)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_thread", file: !103, line: 250, size: 896, elements: !104)
!103 = !DIFile(filename: "include/zephyr/kernel/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!104 = !{!105, !178, !191, !192, !193, !194, !215}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !102, file: !103, line: 252, baseType: !106, size: 384)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_base", file: !103, line: 58, size: 384, elements: !107)
!107 = !{!108, !136, !144, !147, !148, !161, !164, !165}
!108 = !DIDerivedType(tag: DW_TAG_member, scope: !106, file: !103, line: 61, baseType: !109, size: 64)
!109 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !106, file: !103, line: 61, size: 64, elements: !110)
!110 = !{!111, !127}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_dlist", scope: !109, file: !103, line: 62, baseType: !112, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dnode_t", file: !113, line: 55, baseType: !114)
!113 = !DIFile(filename: "include/zephyr/sys/dlist.h", directory: "/home/sri/zephyrproject/zephyr")
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_dnode", file: !113, line: 37, size: 64, elements: !115)
!115 = !{!116, !122}
!116 = !DIDerivedType(tag: DW_TAG_member, scope: !114, file: !113, line: 38, baseType: !117, size: 32)
!117 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !114, file: !113, line: 38, size: 32, elements: !118)
!118 = !{!119, !121}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !117, file: !113, line: 39, baseType: !120, size: 32)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 32)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !117, file: !113, line: 40, baseType: !120, size: 32)
!122 = !DIDerivedType(tag: DW_TAG_member, scope: !114, file: !113, line: 42, baseType: !123, size: 32, offset: 32)
!123 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !114, file: !113, line: 42, size: 32, elements: !124)
!124 = !{!125, !126}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !123, file: !113, line: 43, baseType: !120, size: 32)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !123, file: !113, line: 44, baseType: !120, size: 32)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_rb", scope: !109, file: !103, line: 63, baseType: !128, size: 64)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rbnode", file: !129, line: 58, size: 64, elements: !130)
!129 = !DIFile(filename: "include/zephyr/sys/rb.h", directory: "/home/sri/zephyrproject/zephyr")
!130 = !{!131}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !128, file: !129, line: 60, baseType: !132, size: 64)
!132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 64, elements: !134)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 32)
!134 = !{!135}
!135 = !DISubrange(count: 2)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "pended_on", scope: !106, file: !103, line: 69, baseType: !137, size: 32, offset: 64)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 32)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "_wait_q_t", file: !139, line: 243, baseType: !140)
!139 = !DIFile(filename: "include/zephyr/kernel_structs.h", directory: "/home/sri/zephyrproject/zephyr")
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !139, line: 241, size: 64, elements: !141)
!141 = !{!142}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !140, file: !139, line: 242, baseType: !143, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dlist_t", file: !113, line: 51, baseType: !114)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "user_options", scope: !106, file: !103, line: 72, baseType: !145, size: 8, offset: 96)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !146, line: 62, baseType: !5)
!146 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/stdint.h", directory: "")
!147 = !DIDerivedType(tag: DW_TAG_member, name: "thread_state", scope: !106, file: !103, line: 75, baseType: !145, size: 8, offset: 104)
!148 = !DIDerivedType(tag: DW_TAG_member, scope: !106, file: !103, line: 91, baseType: !149, size: 16, offset: 112)
!149 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !106, file: !103, line: 91, size: 16, elements: !150)
!150 = !{!151, !158}
!151 = !DIDerivedType(tag: DW_TAG_member, scope: !149, file: !103, line: 92, baseType: !152, size: 16)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !149, file: !103, line: 92, size: 16, elements: !153)
!153 = !{!154, !157}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !152, file: !103, line: 97, baseType: !155, size: 8)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !146, line: 56, baseType: !156)
!156 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "sched_locked", scope: !152, file: !103, line: 98, baseType: !145, size: 8, offset: 8)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "preempt", scope: !149, file: !103, line: 101, baseType: !159, size: 16)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !146, line: 63, baseType: !160)
!160 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "order_key", scope: !106, file: !103, line: 108, baseType: !162, size: 32, offset: 128)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !146, line: 64, baseType: !163)
!163 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "swap_data", scope: !106, file: !103, line: 132, baseType: !87, size: 32, offset: 160)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !106, file: !103, line: 136, baseType: !166, size: 192, offset: 192)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_timeout", file: !139, line: 254, size: 192, elements: !167)
!167 = !{!168, !169, !175}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !166, file: !139, line: 255, baseType: !112, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !166, file: !139, line: 256, baseType: !170, size: 32, offset: 64)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "_timeout_func_t", file: !139, line: 252, baseType: !171)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 32)
!172 = !DISubroutineType(types: !173)
!173 = !{null, !174}
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 32)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "dticks", scope: !166, file: !139, line: 259, baseType: !176, size: 64, offset: 128)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !146, line: 59, baseType: !177)
!177 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "callee_saved", scope: !102, file: !103, line: 255, baseType: !179, size: 288, offset: 384)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_callee_saved", file: !180, line: 25, size: 288, elements: !181)
!180 = !DIFile(filename: "include/zephyr/arch/arm/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!181 = !{!182, !183, !184, !185, !186, !187, !188, !189, !190}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "v1", scope: !179, file: !180, line: 26, baseType: !162, size: 32)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "v2", scope: !179, file: !180, line: 27, baseType: !162, size: 32, offset: 32)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "v3", scope: !179, file: !180, line: 28, baseType: !162, size: 32, offset: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "v4", scope: !179, file: !180, line: 29, baseType: !162, size: 32, offset: 96)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "v5", scope: !179, file: !180, line: 30, baseType: !162, size: 32, offset: 128)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "v6", scope: !179, file: !180, line: 31, baseType: !162, size: 32, offset: 160)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "v7", scope: !179, file: !180, line: 32, baseType: !162, size: 32, offset: 192)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "v8", scope: !179, file: !180, line: 33, baseType: !162, size: 32, offset: 224)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "psp", scope: !179, file: !180, line: 34, baseType: !162, size: 32, offset: 256)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "init_data", scope: !102, file: !103, line: 258, baseType: !87, size: 32, offset: 672)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "join_queue", scope: !102, file: !103, line: 261, baseType: !138, size: 64, offset: 704)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "errno_var", scope: !102, file: !103, line: 302, baseType: !88, size: 32, offset: 768)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "resource_pool", scope: !102, file: !103, line: 333, baseType: !195, size: 32, offset: 800)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 32)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_heap", file: !197, line: 5291, size: 160, elements: !198)
!197 = !DIFile(filename: "include/zephyr/kernel.h", directory: "/home/sri/zephyrproject/zephyr")
!198 = !{!199, !210, !211}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !196, file: !197, line: 5292, baseType: !200, size: 96)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sys_heap", file: !201, line: 56, size: 96, elements: !202)
!201 = !DIFile(filename: "include/zephyr/sys/sys_heap.h", directory: "/home/sri/zephyrproject/zephyr")
!202 = !{!203, !206, !207}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !200, file: !201, line: 57, baseType: !204, size: 32)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 32)
!205 = !DICompositeType(tag: DW_TAG_structure_type, name: "z_heap", file: !201, line: 57, flags: DIFlagFwdDecl)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "init_mem", scope: !200, file: !201, line: 58, baseType: !87, size: 32, offset: 32)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "init_bytes", scope: !200, file: !201, line: 59, baseType: !208, size: 32, offset: 64)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !209, line: 46, baseType: !163)
!209 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/lib/clang/17/include/stddef.h", directory: "")
!210 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !196, file: !197, line: 5293, baseType: !138, size: 64, offset: 96)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !196, file: !197, line: 5294, baseType: !212, offset: 160)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_spinlock", file: !213, line: 45, elements: !214)
!213 = !DIFile(filename: "include/zephyr/spinlock.h", directory: "/home/sri/zephyrproject/zephyr")
!214 = !{}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !102, file: !103, line: 355, baseType: !216, size: 64, offset: 832)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_arch", file: !180, line: 60, size: 64, elements: !217)
!217 = !{!218, !219}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "basepri", scope: !216, file: !180, line: 63, baseType: !162, size: 32)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "swap_return_value", scope: !216, file: !180, line: 66, baseType: !162, size: 32, offset: 32)
!220 = !{!221, !222}
!221 = !DILocalVariable(name: "object", arg: 1, scope: !96, file: !4, line: 223, type: !99)
!222 = !DILocalVariable(name: "thread", arg: 2, scope: !96, file: !4, line: 224, type: !101)
!223 = !DILocation(line: 223, column: 61, scope: !96)
!224 = !DILocation(line: 224, column: 24, scope: !96)
!225 = !DILocation(line: 226, column: 9, scope: !96)
!226 = !DILocation(line: 227, column: 9, scope: !96)
!227 = !DILocation(line: 228, column: 1, scope: !96)
!228 = distinct !DISubprogram(name: "z_impl_k_object_release", scope: !4, file: !4, line: 243, type: !229, scopeLine: 244, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !231)
!229 = !DISubroutineType(types: !230)
!230 = !{null, !99}
!231 = !{!232}
!232 = !DILocalVariable(name: "object", arg: 1, scope: !228, file: !4, line: 243, type: !99)
!233 = !DILocation(line: 243, column: 56, scope: !228)
!234 = !DILocation(line: 245, column: 9, scope: !228)
!235 = !DILocation(line: 246, column: 1, scope: !228)
!236 = distinct !DISubprogram(name: "z_impl_k_object_alloc", scope: !4, file: !4, line: 359, type: !237, scopeLine: 360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !239)
!237 = !DISubroutineType(types: !238)
!238 = !{!87, !3}
!239 = !{!240}
!240 = !DILocalVariable(name: "otype", arg: 1, scope: !236, file: !4, line: 359, type: !3)
!241 = !DILocation(line: 359, column: 58, scope: !236)
!242 = !DILocation(line: 361, column: 9, scope: !236)
!243 = !DILocation(line: 363, column: 2, scope: !236)
!244 = distinct !DISubprogram(name: "z_impl_k_object_alloc_size", scope: !4, file: !4, line: 366, type: !245, scopeLine: 368, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !247)
!245 = !DISubroutineType(types: !246)
!246 = !{!87, !3, !208}
!247 = !{!248, !249}
!248 = !DILocalVariable(name: "otype", arg: 1, scope: !244, file: !4, line: 366, type: !3)
!249 = !DILocalVariable(name: "size", arg: 2, scope: !244, file: !4, line: 367, type: !208)
!250 = !DILocation(line: 366, column: 63, scope: !244)
!251 = !DILocation(line: 367, column: 13, scope: !244)
!252 = !DILocation(line: 369, column: 9, scope: !244)
!253 = !DILocation(line: 370, column: 9, scope: !244)
!254 = !DILocation(line: 372, column: 2, scope: !244)
!255 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_expires_ticks", scope: !197, file: !197, line: 656, type: !256, scopeLine: 658, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !262)
!256 = !DISubroutineType(types: !257)
!257 = !{!258, !260}
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_ticks_t", file: !259, line: 46, baseType: !176)
!259 = !DIFile(filename: "include/zephyr/sys_clock.h", directory: "/home/sri/zephyrproject/zephyr")
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 32)
!261 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !102)
!262 = !{!263}
!263 = !DILocalVariable(name: "t", arg: 1, scope: !255, file: !197, line: 657, type: !260)
!264 = !DILocation(line: 657, column: 30, scope: !255)
!265 = !DILocation(line: 659, column: 28, scope: !255)
!266 = !DILocation(line: 659, column: 31, scope: !255)
!267 = !DILocation(line: 659, column: 36, scope: !255)
!268 = !DILocation(line: 659, column: 9, scope: !255)
!269 = !DILocation(line: 659, column: 2, scope: !255)
!270 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_remaining_ticks", scope: !197, file: !197, line: 671, type: !256, scopeLine: 673, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !271)
!271 = !{!272}
!272 = !DILocalVariable(name: "t", arg: 1, scope: !270, file: !197, line: 672, type: !260)
!273 = !DILocation(line: 672, column: 30, scope: !270)
!274 = !DILocation(line: 674, column: 30, scope: !270)
!275 = !DILocation(line: 674, column: 33, scope: !270)
!276 = !DILocation(line: 674, column: 38, scope: !270)
!277 = !DILocation(line: 674, column: 9, scope: !270)
!278 = !DILocation(line: 674, column: 2, scope: !270)
!279 = distinct !DISubprogram(name: "z_impl_k_timer_expires_ticks", scope: !197, file: !197, line: 1634, type: !280, scopeLine: 1636, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !301)
!280 = !DISubroutineType(types: !281)
!281 = !{!258, !282}
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 32)
!283 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !284)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_timer", file: !197, line: 1439, size: 448, elements: !285)
!285 = !{!286, !287, !288, !293, !294, !299, !300}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !284, file: !197, line: 1445, baseType: !166, size: 192)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !284, file: !197, line: 1448, baseType: !138, size: 64, offset: 192)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_fn", scope: !284, file: !197, line: 1451, baseType: !289, size: 32, offset: 256)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 32)
!290 = !DISubroutineType(types: !291)
!291 = !{null, !292}
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 32)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "stop_fn", scope: !284, file: !197, line: 1454, baseType: !289, size: 32, offset: 288)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !284, file: !197, line: 1457, baseType: !295, size: 64, offset: 320)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_timeout_t", file: !259, line: 67, baseType: !296)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !259, line: 65, size: 64, elements: !297)
!297 = !{!298}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "ticks", scope: !296, file: !259, line: 66, baseType: !258, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !284, file: !197, line: 1460, baseType: !162, size: 32, offset: 384)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !284, file: !197, line: 1463, baseType: !87, size: 32, offset: 416)
!301 = !{!302}
!302 = !DILocalVariable(name: "timer", arg: 1, scope: !279, file: !197, line: 1635, type: !282)
!303 = !DILocation(line: 1635, column: 34, scope: !279)
!304 = !DILocation(line: 1637, column: 28, scope: !279)
!305 = !DILocation(line: 1637, column: 35, scope: !279)
!306 = !DILocation(line: 1637, column: 9, scope: !279)
!307 = !DILocation(line: 1637, column: 2, scope: !279)
!308 = distinct !DISubprogram(name: "z_impl_k_timer_remaining_ticks", scope: !197, file: !197, line: 1649, type: !280, scopeLine: 1651, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !309)
!309 = !{!310}
!310 = !DILocalVariable(name: "timer", arg: 1, scope: !308, file: !197, line: 1650, type: !282)
!311 = !DILocation(line: 1650, column: 34, scope: !308)
!312 = !DILocation(line: 1652, column: 30, scope: !308)
!313 = !DILocation(line: 1652, column: 37, scope: !308)
!314 = !DILocation(line: 1652, column: 9, scope: !308)
!315 = !DILocation(line: 1652, column: 2, scope: !308)
!316 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_set", scope: !197, file: !197, line: 1689, type: !317, scopeLine: 1691, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !319)
!317 = !DISubroutineType(types: !318)
!318 = !{null, !292, !87}
!319 = !{!320, !321}
!320 = !DILocalVariable(name: "timer", arg: 1, scope: !316, file: !197, line: 1689, type: !292)
!321 = !DILocalVariable(name: "user_data", arg: 2, scope: !316, file: !197, line: 1690, type: !87)
!322 = !DILocation(line: 1689, column: 65, scope: !316)
!323 = !DILocation(line: 1690, column: 19, scope: !316)
!324 = !DILocation(line: 1692, column: 21, scope: !316)
!325 = !DILocation(line: 1692, column: 2, scope: !316)
!326 = !DILocation(line: 1692, column: 9, scope: !316)
!327 = !DILocation(line: 1692, column: 19, scope: !316)
!328 = !DILocation(line: 1693, column: 1, scope: !316)
!329 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_get", scope: !197, file: !197, line: 1704, type: !330, scopeLine: 1705, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !332)
!330 = !DISubroutineType(types: !331)
!331 = !{!87, !282}
!332 = !{!333}
!333 = !DILocalVariable(name: "timer", arg: 1, scope: !329, file: !197, line: 1704, type: !282)
!334 = !DILocation(line: 1704, column: 72, scope: !329)
!335 = !DILocation(line: 1706, column: 9, scope: !329)
!336 = !DILocation(line: 1706, column: 16, scope: !329)
!337 = !DILocation(line: 1706, column: 2, scope: !329)
!338 = distinct !DISubprogram(name: "z_impl_k_queue_is_empty", scope: !197, file: !197, line: 2071, type: !339, scopeLine: 2072, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !359)
!339 = !DISubroutineType(types: !340)
!340 = !{!88, !341}
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 32)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_queue", file: !197, line: 1830, size: 128, elements: !343)
!343 = !{!344, !357, !358}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "data_q", scope: !342, file: !197, line: 1831, baseType: !345, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sflist_t", file: !346, line: 60, baseType: !347)
!346 = !DIFile(filename: "include/zephyr/sys/sflist.h", directory: "/home/sri/zephyrproject/zephyr")
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sflist", file: !346, line: 53, size: 64, elements: !348)
!348 = !{!349, !356}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !347, file: !346, line: 54, baseType: !350, size: 32)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 32)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sfnode_t", file: !346, line: 50, baseType: !352)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sfnode", file: !346, line: 44, size: 32, elements: !353)
!353 = !{!354}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "next_and_flags", scope: !352, file: !346, line: 45, baseType: !355, size: 32)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "unative_t", file: !346, line: 40, baseType: !162)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !347, file: !346, line: 55, baseType: !350, size: 32, offset: 32)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !342, file: !197, line: 1832, baseType: !212, offset: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !342, file: !197, line: 1833, baseType: !138, size: 64, offset: 64)
!359 = !{!360}
!360 = !DILocalVariable(name: "queue", arg: 1, scope: !338, file: !197, line: 2071, type: !341)
!361 = !DILocation(line: 2071, column: 59, scope: !338)
!362 = !DILocation(line: 2073, column: 35, scope: !338)
!363 = !DILocation(line: 2073, column: 42, scope: !338)
!364 = !DILocation(line: 2073, column: 14, scope: !338)
!365 = !DILocation(line: 2073, column: 9, scope: !338)
!366 = !DILocation(line: 2073, column: 2, scope: !338)
!367 = distinct !DISubprogram(name: "z_impl_k_sem_count_get", scope: !197, file: !197, line: 3209, type: !368, scopeLine: 3210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !376)
!368 = !DISubroutineType(types: !369)
!369 = !{!163, !370}
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 32)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sem", file: !197, line: 3092, size: 128, elements: !372)
!372 = !{!373, !374, !375}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !371, file: !197, line: 3093, baseType: !138, size: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !371, file: !197, line: 3094, baseType: !163, size: 32, offset: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !371, file: !197, line: 3095, baseType: !163, size: 32, offset: 96)
!376 = !{!377}
!377 = !DILocalVariable(name: "sem", arg: 1, scope: !367, file: !197, line: 3209, type: !370)
!378 = !DILocation(line: 3209, column: 65, scope: !367)
!379 = !DILocation(line: 3211, column: 9, scope: !367)
!380 = !DILocation(line: 3211, column: 14, scope: !367)
!381 = !DILocation(line: 3211, column: 2, scope: !367)
!382 = distinct !DISubprogram(name: "z_impl_k_msgq_num_free_get", scope: !197, file: !197, line: 4649, type: !383, scopeLine: 4650, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !400)
!383 = !DISubroutineType(types: !384)
!384 = !{!162, !385}
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 32)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_msgq", file: !197, line: 4390, size: 320, elements: !387)
!387 = !{!388, !389, !390, !391, !392, !395, !396, !397, !398, !399}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !386, file: !197, line: 4392, baseType: !138, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !386, file: !197, line: 4394, baseType: !212, offset: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "msg_size", scope: !386, file: !197, line: 4396, baseType: !208, size: 32, offset: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !386, file: !197, line: 4398, baseType: !162, size: 32, offset: 96)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_start", scope: !386, file: !197, line: 4400, baseType: !393, size: 32, offset: 128)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 32)
!394 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_end", scope: !386, file: !197, line: 4402, baseType: !393, size: 32, offset: 160)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "read_ptr", scope: !386, file: !197, line: 4404, baseType: !393, size: 32, offset: 192)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "write_ptr", scope: !386, file: !197, line: 4406, baseType: !393, size: 32, offset: 224)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "used_msgs", scope: !386, file: !197, line: 4408, baseType: !162, size: 32, offset: 256)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !386, file: !197, line: 4413, baseType: !145, size: 8, offset: 288)
!400 = !{!401}
!401 = !DILocalVariable(name: "msgq", arg: 1, scope: !382, file: !197, line: 4649, type: !385)
!402 = !DILocation(line: 4649, column: 66, scope: !382)
!403 = !DILocation(line: 4651, column: 9, scope: !382)
!404 = !DILocation(line: 4651, column: 15, scope: !382)
!405 = !DILocation(line: 4651, column: 26, scope: !382)
!406 = !DILocation(line: 4651, column: 32, scope: !382)
!407 = !DILocation(line: 4651, column: 24, scope: !382)
!408 = !DILocation(line: 4651, column: 2, scope: !382)
!409 = distinct !DISubprogram(name: "z_impl_k_msgq_num_used_get", scope: !197, file: !197, line: 4665, type: !383, scopeLine: 4666, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !410)
!410 = !{!411}
!411 = !DILocalVariable(name: "msgq", arg: 1, scope: !409, file: !197, line: 4665, type: !385)
!412 = !DILocation(line: 4665, column: 66, scope: !409)
!413 = !DILocation(line: 4667, column: 9, scope: !409)
!414 = !DILocation(line: 4667, column: 15, scope: !409)
!415 = !DILocation(line: 4667, column: 2, scope: !409)
!416 = distinct !DISubprogram(name: "k_free", scope: !417, file: !417, line: 43, type: !418, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !420)
!417 = !DIFile(filename: "kernel/mempool.c", directory: "/home/sri/zephyrproject/zephyr")
!418 = !DISubroutineType(types: !419)
!419 = !{null, !87}
!420 = !{!421, !422}
!421 = !DILocalVariable(name: "ptr", arg: 1, scope: !416, file: !417, line: 43, type: !87)
!422 = !DILocalVariable(name: "heap_ref", scope: !416, file: !417, line: 45, type: !423)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 32)
!424 = !DILocation(line: 43, column: 19, scope: !416)
!425 = !DILocation(line: 45, column: 2, scope: !416)
!426 = !DILocation(line: 45, column: 18, scope: !416)
!427 = !DILocation(line: 47, column: 6, scope: !428)
!428 = distinct !DILexicalBlock(scope: !416, file: !417, line: 47, column: 6)
!429 = !DILocation(line: 47, column: 10, scope: !428)
!430 = !DILocation(line: 47, column: 6, scope: !416)
!431 = !DILocation(line: 48, column: 14, scope: !432)
!432 = distinct !DILexicalBlock(scope: !428, file: !417, line: 47, column: 16)
!433 = !DILocation(line: 48, column: 12, scope: !432)
!434 = !DILocation(line: 49, column: 9, scope: !432)
!435 = !DILocation(line: 49, column: 7, scope: !432)
!436 = !DILocation(line: 51, column: 3, scope: !432)
!437 = !DILocation(line: 51, column: 8, scope: !438)
!438 = distinct !DILexicalBlock(scope: !432, file: !417, line: 51, column: 6)
!439 = !DILocation(line: 53, column: 16, scope: !432)
!440 = !DILocation(line: 53, column: 15, scope: !432)
!441 = !DILocation(line: 53, column: 26, scope: !432)
!442 = !DILocation(line: 53, column: 3, scope: !432)
!443 = !DILocation(line: 55, column: 3, scope: !432)
!444 = !DILocation(line: 55, column: 8, scope: !445)
!445 = distinct !DILexicalBlock(scope: !432, file: !417, line: 55, column: 6)
!446 = !DILocation(line: 56, column: 2, scope: !432)
!447 = !DILocation(line: 57, column: 1, scope: !416)
!448 = !DISubprogram(name: "k_heap_free", scope: !197, file: !197, line: 5368, type: !449, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !214)
!449 = !DISubroutineType(types: !450)
!450 = !{null, !195, !87}
!451 = distinct !DISubprogram(name: "z_thread_aligned_alloc", scope: !417, file: !417, line: 124, type: !452, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !456)
!452 = !DISubroutineType(types: !453)
!453 = !{!87, !454, !454}
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !455, line: 51, baseType: !163)
!455 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/string.h", directory: "")
!456 = !{!457, !458, !459, !460}
!457 = !DILocalVariable(name: "align", arg: 1, scope: !451, file: !417, line: 124, type: !454)
!458 = !DILocalVariable(name: "size", arg: 2, scope: !451, file: !417, line: 124, type: !454)
!459 = !DILocalVariable(name: "ret", scope: !451, file: !417, line: 126, type: !87)
!460 = !DILocalVariable(name: "heap", scope: !451, file: !417, line: 127, type: !195)
!461 = !DILocation(line: 124, column: 37, scope: !451)
!462 = !DILocation(line: 124, column: 51, scope: !451)
!463 = !DILocation(line: 126, column: 2, scope: !451)
!464 = !DILocation(line: 126, column: 8, scope: !451)
!465 = !DILocation(line: 127, column: 2, scope: !451)
!466 = !DILocation(line: 127, column: 17, scope: !451)
!467 = !DILocation(line: 129, column: 6, scope: !468)
!468 = distinct !DILexicalBlock(scope: !451, file: !417, line: 129, column: 6)
!469 = !DILocation(line: 129, column: 6, scope: !451)
!470 = !DILocation(line: 130, column: 8, scope: !471)
!471 = distinct !DILexicalBlock(scope: !468, file: !417, line: 129, column: 21)
!472 = !DILocation(line: 131, column: 2, scope: !471)
!473 = !DILocation(line: 132, column: 26, scope: !474)
!474 = distinct !DILexicalBlock(scope: !468, file: !417, line: 131, column: 9)
!475 = !DILocation(line: 132, column: 35, scope: !474)
!476 = !DILocation(line: 132, column: 8, scope: !474)
!477 = !DILocation(line: 135, column: 6, scope: !478)
!478 = distinct !DILexicalBlock(scope: !451, file: !417, line: 135, column: 6)
!479 = !DILocation(line: 135, column: 11, scope: !478)
!480 = !DILocation(line: 135, column: 6, scope: !451)
!481 = !DILocation(line: 136, column: 30, scope: !482)
!482 = distinct !DILexicalBlock(scope: !478, file: !417, line: 135, column: 17)
!483 = !DILocation(line: 136, column: 36, scope: !482)
!484 = !DILocation(line: 136, column: 43, scope: !482)
!485 = !DILocation(line: 136, column: 9, scope: !482)
!486 = !DILocation(line: 136, column: 7, scope: !482)
!487 = !DILocation(line: 137, column: 2, scope: !482)
!488 = !DILocation(line: 138, column: 7, scope: !489)
!489 = distinct !DILexicalBlock(scope: !478, file: !417, line: 137, column: 9)
!490 = !DILocation(line: 141, column: 9, scope: !451)
!491 = !DILocation(line: 142, column: 1, scope: !451)
!492 = !DILocation(line: 141, column: 2, scope: !451)
!493 = !DISubprogram(name: "k_is_in_isr", scope: !197, file: !197, line: 1070, type: !494, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !214)
!494 = !DISubroutineType(types: !495)
!495 = !{!496}
!496 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!497 = distinct !DISubprogram(name: "z_heap_aligned_alloc", scope: !417, file: !417, line: 12, type: !498, scopeLine: 13, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !500)
!498 = !DISubroutineType(types: !499)
!499 = !{!87, !195, !454, !454}
!500 = !{!501, !502, !503, !504, !505, !506}
!501 = !DILocalVariable(name: "heap", arg: 1, scope: !497, file: !417, line: 12, type: !195)
!502 = !DILocalVariable(name: "align", arg: 2, scope: !497, file: !417, line: 12, type: !454)
!503 = !DILocalVariable(name: "size", arg: 3, scope: !497, file: !417, line: 12, type: !454)
!504 = !DILocalVariable(name: "mem", scope: !497, file: !417, line: 14, type: !87)
!505 = !DILocalVariable(name: "heap_ref", scope: !497, file: !417, line: 15, type: !423)
!506 = !DILocalVariable(name: "__align", scope: !497, file: !417, line: 16, type: !454)
!507 = !DILocation(line: 12, column: 50, scope: !497)
!508 = !DILocation(line: 12, column: 63, scope: !497)
!509 = !DILocation(line: 12, column: 77, scope: !497)
!510 = !DILocation(line: 14, column: 2, scope: !497)
!511 = !DILocation(line: 14, column: 8, scope: !497)
!512 = !DILocation(line: 15, column: 2, scope: !497)
!513 = !DILocation(line: 15, column: 18, scope: !497)
!514 = !DILocation(line: 16, column: 2, scope: !497)
!515 = !DILocation(line: 16, column: 9, scope: !497)
!516 = !DILocation(line: 24, column: 24, scope: !517)
!517 = distinct !DILexicalBlock(scope: !497, file: !417, line: 24, column: 6)
!518 = !DILocation(line: 24, column: 6, scope: !517)
!519 = !DILocation(line: 24, column: 6, scope: !497)
!520 = !DILocation(line: 25, column: 3, scope: !521)
!521 = distinct !DILexicalBlock(scope: !517, file: !417, line: 24, column: 56)
!522 = !DILocation(line: 27, column: 12, scope: !497)
!523 = !DILocation(line: 27, column: 18, scope: !497)
!524 = !DILocation(line: 27, column: 10, scope: !497)
!525 = !DILocation(line: 29, column: 29, scope: !497)
!526 = !DILocation(line: 29, column: 35, scope: !497)
!527 = !DILocation(line: 29, column: 44, scope: !497)
!528 = !DILocation(line: 29, column: 65, scope: !497)
!529 = !DILocation(line: 29, column: 8, scope: !497)
!530 = !DILocation(line: 29, column: 6, scope: !497)
!531 = !DILocation(line: 30, column: 6, scope: !532)
!532 = distinct !DILexicalBlock(scope: !497, file: !417, line: 30, column: 6)
!533 = !DILocation(line: 30, column: 10, scope: !532)
!534 = !DILocation(line: 30, column: 6, scope: !497)
!535 = !DILocation(line: 31, column: 3, scope: !536)
!536 = distinct !DILexicalBlock(scope: !532, file: !417, line: 30, column: 16)
!537 = !DILocation(line: 34, column: 13, scope: !497)
!538 = !DILocation(line: 34, column: 11, scope: !497)
!539 = !DILocation(line: 35, column: 14, scope: !497)
!540 = !DILocation(line: 35, column: 3, scope: !497)
!541 = !DILocation(line: 35, column: 12, scope: !497)
!542 = !DILocation(line: 36, column: 8, scope: !497)
!543 = !DILocation(line: 36, column: 6, scope: !497)
!544 = !DILocation(line: 40, column: 9, scope: !497)
!545 = !DILocation(line: 40, column: 2, scope: !497)
!546 = !DILocation(line: 41, column: 1, scope: !497)
!547 = !DISubprogram(name: "z_timeout_expires", scope: !197, file: !197, line: 642, type: !548, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !214)
!548 = !DISubroutineType(types: !549)
!549 = !{!258, !550}
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 32)
!551 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !166)
!552 = !DISubprogram(name: "z_timeout_remaining", scope: !197, file: !197, line: 643, type: !548, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !214)
!553 = distinct !DISubprogram(name: "sys_sflist_is_empty", scope: !346, file: !346, line: 335, type: !554, scopeLine: 335, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !557)
!554 = !DISubroutineType(types: !555)
!555 = !{!496, !556}
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 32)
!557 = !{!558}
!558 = !DILocalVariable(name: "list", arg: 1, scope: !553, file: !346, line: 335, type: !556)
!559 = !DILocation(line: 335, column: 55, scope: !553)
!560 = !DILocation(line: 335, column: 92, scope: !553)
!561 = !DILocation(line: 335, column: 71, scope: !553)
!562 = !DILocation(line: 335, column: 98, scope: !553)
!563 = !DILocation(line: 335, column: 63, scope: !553)
!564 = distinct !DISubprogram(name: "sys_sflist_peek_head", scope: !346, file: !346, line: 255, type: !565, scopeLine: 256, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !567)
!565 = !DISubroutineType(types: !566)
!566 = !{!350, !556}
!567 = !{!568}
!568 = !DILocalVariable(name: "list", arg: 1, scope: !564, file: !346, line: 255, type: !556)
!569 = !DILocation(line: 255, column: 64, scope: !564)
!570 = !DILocation(line: 257, column: 9, scope: !564)
!571 = !DILocation(line: 257, column: 15, scope: !564)
!572 = !DILocation(line: 257, column: 2, scope: !564)
!573 = distinct !DISubprogram(name: "size_add_overflow", scope: !574, file: !574, line: 47, type: !575, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !578)
!574 = !DIFile(filename: "include/zephyr/sys/math_extras_impl.h", directory: "/home/sri/zephyrproject/zephyr")
!575 = !DISubroutineType(types: !576)
!576 = !{!496, !454, !454, !577}
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 32)
!578 = !{!579, !580, !581}
!579 = !DILocalVariable(name: "a", arg: 1, scope: !573, file: !574, line: 47, type: !454)
!580 = !DILocalVariable(name: "b", arg: 2, scope: !573, file: !574, line: 47, type: !454)
!581 = !DILocalVariable(name: "result", arg: 3, scope: !573, file: !574, line: 47, type: !577)
!582 = !DILocation(line: 47, column: 46, scope: !573)
!583 = !DILocation(line: 47, column: 56, scope: !573)
!584 = !DILocation(line: 47, column: 67, scope: !573)
!585 = !DILocation(line: 49, column: 32, scope: !573)
!586 = !DILocation(line: 49, column: 35, scope: !573)
!587 = !DILocation(line: 49, column: 38, scope: !573)
!588 = !DILocation(line: 49, column: 9, scope: !573)
!589 = !DILocation(line: 49, column: 2, scope: !573)
!590 = !DISubprogram(name: "k_heap_aligned_alloc", scope: !197, file: !197, line: 5331, type: !591, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !214)
!591 = !DISubroutineType(types: !592)
!592 = !{!87, !195, !208, !208, !295}
