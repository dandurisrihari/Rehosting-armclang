; ModuleID = '../bc_files/stack.bc'
source_filename = "/home/sri/zephyrproject/zephyr/kernel/stack.c"
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
%struct.k_stack = type { %struct._wait_q_t, %struct.k_spinlock, ptr, ptr, ptr, i8 }
%struct.z_spinlock_key = type { i32 }

@_kernel = external dso_local global %struct.z_kernel, align 4

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_k_object_access_grant(ptr noundef %0, ptr noundef %1) #0 !dbg !220 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !226, metadata !DIExpression()), !dbg !228
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !227, metadata !DIExpression()), !dbg !229
  %5 = load ptr, ptr %3, align 4, !dbg !230
  %6 = load ptr, ptr %4, align 4, !dbg !231
  ret void, !dbg !232
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_k_object_release(ptr noundef %0) #0 !dbg !233 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !237, metadata !DIExpression()), !dbg !238
  %3 = load ptr, ptr %2, align 4, !dbg !239
  ret void, !dbg !240
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_impl_k_object_alloc(i8 noundef zeroext %0) #0 !dbg !241 {
  %2 = alloca i8, align 1
  store i8 %0, ptr %2, align 1
  call void @llvm.dbg.declare(metadata ptr %2, metadata !245, metadata !DIExpression()), !dbg !246
  %3 = load i8, ptr %2, align 1, !dbg !247
  ret ptr null, !dbg !248
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_impl_k_object_alloc_size(i8 noundef zeroext %0, i32 noundef %1) #0 !dbg !249 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8 %0, ptr %3, align 1
  call void @llvm.dbg.declare(metadata ptr %3, metadata !253, metadata !DIExpression()), !dbg !255
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !254, metadata !DIExpression()), !dbg !256
  %5 = load i8, ptr %3, align 1, !dbg !257
  %6 = load i32, ptr %4, align 4, !dbg !258
  ret ptr null, !dbg !259
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_thread_timeout_expires_ticks(ptr noundef %0) #0 !dbg !260 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !268, metadata !DIExpression()), !dbg !269
  %3 = load ptr, ptr %2, align 4, !dbg !270
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !271
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !272
  %6 = call i64 @z_timeout_expires(ptr noundef %5) #7, !dbg !273
  ret i64 %6, !dbg !274
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_thread_timeout_remaining_ticks(ptr noundef %0) #0 !dbg !275 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !277, metadata !DIExpression()), !dbg !278
  %3 = load ptr, ptr %2, align 4, !dbg !279
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !280
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !281
  %6 = call i64 @z_timeout_remaining(ptr noundef %5) #7, !dbg !282
  ret i64 %6, !dbg !283
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_timer_expires_ticks(ptr noundef %0) #0 !dbg !284 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !307, metadata !DIExpression()), !dbg !308
  %3 = load ptr, ptr %2, align 4, !dbg !309
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !310
  %5 = call i64 @z_timeout_expires(ptr noundef %4) #7, !dbg !311
  ret i64 %5, !dbg !312
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_timer_remaining_ticks(ptr noundef %0) #0 !dbg !313 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !315, metadata !DIExpression()), !dbg !316
  %3 = load ptr, ptr %2, align 4, !dbg !317
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !318
  %5 = call i64 @z_timeout_remaining(ptr noundef %4) #7, !dbg !319
  ret i64 %5, !dbg !320
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_k_timer_user_data_set(ptr noundef %0, ptr noundef %1) #0 !dbg !321 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !325, metadata !DIExpression()), !dbg !327
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !326, metadata !DIExpression()), !dbg !328
  %5 = load ptr, ptr %4, align 4, !dbg !329
  %6 = load ptr, ptr %3, align 4, !dbg !330
  %7 = getelementptr inbounds %struct.k_timer, ptr %6, i32 0, i32 6, !dbg !331
  store ptr %5, ptr %7, align 4, !dbg !332
  ret void, !dbg !333
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_impl_k_timer_user_data_get(ptr noundef %0) #0 !dbg !334 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !338, metadata !DIExpression()), !dbg !339
  %3 = load ptr, ptr %2, align 4, !dbg !340
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 6, !dbg !341
  %5 = load ptr, ptr %4, align 4, !dbg !341
  ret ptr %5, !dbg !342
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_queue_is_empty(ptr noundef %0) #0 !dbg !343 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !365, metadata !DIExpression()), !dbg !366
  %3 = load ptr, ptr %2, align 4, !dbg !367
  %4 = getelementptr inbounds %struct.k_queue, ptr %3, i32 0, i32 0, !dbg !368
  %5 = call zeroext i1 @sys_sflist_is_empty(ptr noundef %4) #7, !dbg !369
  %6 = zext i1 %5 to i32, !dbg !370
  ret i32 %6, !dbg !371
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_sem_count_get(ptr noundef %0) #0 !dbg !372 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !382, metadata !DIExpression()), !dbg !383
  %3 = load ptr, ptr %2, align 4, !dbg !384
  %4 = getelementptr inbounds %struct.k_sem, ptr %3, i32 0, i32 1, !dbg !385
  %5 = load i32, ptr %4, align 4, !dbg !385
  ret i32 %5, !dbg !386
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_msgq_num_free_get(ptr noundef %0) #0 !dbg !387 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !406, metadata !DIExpression()), !dbg !407
  %3 = load ptr, ptr %2, align 4, !dbg !408
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 3, !dbg !409
  %5 = load i32, ptr %4, align 4, !dbg !409
  %6 = load ptr, ptr %2, align 4, !dbg !410
  %7 = getelementptr inbounds %struct.k_msgq, ptr %6, i32 0, i32 8, !dbg !411
  %8 = load i32, ptr %7, align 4, !dbg !411
  %9 = sub i32 %5, %8, !dbg !412
  ret i32 %9, !dbg !413
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_msgq_num_used_get(ptr noundef %0) #0 !dbg !414 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !416, metadata !DIExpression()), !dbg !417
  %3 = load ptr, ptr %2, align 4, !dbg !418
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 8, !dbg !419
  %5 = load i32, ptr %4, align 4, !dbg !419
  ret i32 %5, !dbg !420
}

; Function Attrs: nounwind optsize
define hidden void @k_stack_init(ptr noundef %0, ptr noundef %1, i32 noundef %2) #1 !dbg !421 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.k_spinlock, align 1
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !436, metadata !DIExpression()), !dbg !439
  store ptr %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !437, metadata !DIExpression()), !dbg !440
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !438, metadata !DIExpression()), !dbg !441
  %8 = load ptr, ptr %4, align 4, !dbg !442
  %9 = getelementptr inbounds %struct.k_stack, ptr %8, i32 0, i32 0, !dbg !443
  call void @z_waitq_init(ptr noundef %9) #7, !dbg !444
  %10 = load ptr, ptr %4, align 4, !dbg !445
  %11 = getelementptr inbounds %struct.k_stack, ptr %10, i32 0, i32 1, !dbg !446
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %11, ptr align 1 %7, i32 0, i1 false), !dbg !447
  %12 = load ptr, ptr %5, align 4, !dbg !448
  %13 = load ptr, ptr %4, align 4, !dbg !449
  %14 = getelementptr inbounds %struct.k_stack, ptr %13, i32 0, i32 2, !dbg !450
  store ptr %12, ptr %14, align 4, !dbg !451
  %15 = load ptr, ptr %4, align 4, !dbg !452
  %16 = getelementptr inbounds %struct.k_stack, ptr %15, i32 0, i32 3, !dbg !453
  store ptr %12, ptr %16, align 4, !dbg !454
  %17 = load ptr, ptr %4, align 4, !dbg !455
  %18 = getelementptr inbounds %struct.k_stack, ptr %17, i32 0, i32 2, !dbg !456
  %19 = load ptr, ptr %18, align 4, !dbg !456
  %20 = load i32, ptr %6, align 4, !dbg !457
  %21 = getelementptr inbounds i32, ptr %19, i32 %20, !dbg !458
  %22 = load ptr, ptr %4, align 4, !dbg !459
  %23 = getelementptr inbounds %struct.k_stack, ptr %22, i32 0, i32 4, !dbg !460
  store ptr %21, ptr %23, align 4, !dbg !461
  br label %24, !dbg !462

24:                                               ; preds = %3
  br label %25, !dbg !463

25:                                               ; preds = %24
  %26 = load ptr, ptr %4, align 4, !dbg !465
  call void @z_object_init(ptr noundef %26) #7, !dbg !466
  ret void, !dbg !467
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: inlinehint nounwind optsize
define internal void @z_waitq_init(ptr noundef %0) #0 !dbg !468 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !473, metadata !DIExpression()), !dbg !474
  %3 = load ptr, ptr %2, align 4, !dbg !475
  %4 = getelementptr inbounds %struct._wait_q_t, ptr %3, i32 0, i32 0, !dbg !476
  call void @sys_dlist_init(ptr noundef %4) #7, !dbg !477
  ret void, !dbg !478
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: inlinehint nounwind optsize
define internal void @z_object_init(ptr noundef %0) #0 !dbg !479 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !481, metadata !DIExpression()), !dbg !482
  %3 = load ptr, ptr %2, align 4, !dbg !483
  ret void, !dbg !484
}

; Function Attrs: nounwind optsize
define hidden i32 @z_impl_k_stack_alloc_init(ptr noundef %0, i32 noundef %1) #1 !dbg !485 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !489, metadata !DIExpression()), !dbg !493
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !490, metadata !DIExpression()), !dbg !494
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #8, !dbg !495
  call void @llvm.dbg.declare(metadata ptr %5, metadata !491, metadata !DIExpression()), !dbg !496
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #8, !dbg !497
  call void @llvm.dbg.declare(metadata ptr %6, metadata !492, metadata !DIExpression()), !dbg !498
  br label %7, !dbg !499

7:                                                ; preds = %2
  br label %8, !dbg !500

8:                                                ; preds = %7
  br label %9, !dbg !500

9:                                                ; preds = %8
  %10 = load i32, ptr %4, align 4, !dbg !502
  %11 = mul i32 %10, 4, !dbg !503
  %12 = call ptr @z_thread_malloc(i32 noundef %11) #7, !dbg !504
  store ptr %12, ptr %5, align 4, !dbg !505
  %13 = load ptr, ptr %5, align 4, !dbg !506
  %14 = icmp ne ptr %13, null, !dbg !508
  br i1 %14, label %15, label %21, !dbg !509

15:                                               ; preds = %9
  %16 = load ptr, ptr %3, align 4, !dbg !510
  %17 = load ptr, ptr %5, align 4, !dbg !512
  %18 = load i32, ptr %4, align 4, !dbg !513
  call void @k_stack_init(ptr noundef %16, ptr noundef %17, i32 noundef %18) #7, !dbg !514
  %19 = load ptr, ptr %3, align 4, !dbg !515
  %20 = getelementptr inbounds %struct.k_stack, ptr %19, i32 0, i32 5, !dbg !516
  store i8 1, ptr %20, align 4, !dbg !517
  store i32 0, ptr %6, align 4, !dbg !518
  br label %22, !dbg !519

21:                                               ; preds = %9
  store i32 -6, ptr %6, align 4, !dbg !520
  br label %22

22:                                               ; preds = %21, %15
  br label %23, !dbg !522

23:                                               ; preds = %22
  br label %24, !dbg !523

24:                                               ; preds = %23
  br label %25, !dbg !523

25:                                               ; preds = %24
  %26 = load i32, ptr %6, align 4, !dbg !525
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #8, !dbg !526
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #8, !dbg !526
  ret i32 %26, !dbg !527
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_thread_malloc(i32 noundef %0) #0 !dbg !528 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !535, metadata !DIExpression()), !dbg !536
  %3 = load i32, ptr %2, align 4, !dbg !537
  %4 = call ptr @z_thread_aligned_alloc(i32 noundef 0, i32 noundef %3) #7, !dbg !538
  ret ptr %4, !dbg !539
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind optsize
define hidden i32 @k_stack_cleanup(ptr noundef %0) #1 !dbg !540 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !544, metadata !DIExpression()), !dbg !545
  br label %4, !dbg !546

4:                                                ; preds = %1
  br label %5, !dbg !547

5:                                                ; preds = %4
  %6 = load ptr, ptr %3, align 4, !dbg !549
  %7 = getelementptr inbounds %struct.k_stack, ptr %6, i32 0, i32 0, !dbg !551
  %8 = call ptr @z_waitq_head(ptr noundef %7) #7, !dbg !552
  %9 = icmp ne ptr %8, null, !dbg !553
  br i1 %9, label %10, label %13, !dbg !554

10:                                               ; preds = %5
  br label %11, !dbg !555

11:                                               ; preds = %10
  br label %12, !dbg !557

12:                                               ; preds = %11
  store i32 -11, ptr %2, align 4, !dbg !559
  br label %35, !dbg !559

13:                                               ; preds = %5
  %14 = load ptr, ptr %3, align 4, !dbg !560
  %15 = getelementptr inbounds %struct.k_stack, ptr %14, i32 0, i32 5, !dbg !562
  %16 = load i8, ptr %15, align 4, !dbg !562
  %17 = zext i8 %16 to i32, !dbg !560
  %18 = and i32 %17, 1, !dbg !563
  %19 = icmp ne i32 %18, 0, !dbg !564
  br i1 %19, label %20, label %32, !dbg !565

20:                                               ; preds = %13
  %21 = load ptr, ptr %3, align 4, !dbg !566
  %22 = getelementptr inbounds %struct.k_stack, ptr %21, i32 0, i32 2, !dbg !568
  %23 = load ptr, ptr %22, align 4, !dbg !568
  call void @k_free(ptr noundef %23) #7, !dbg !569
  %24 = load ptr, ptr %3, align 4, !dbg !570
  %25 = getelementptr inbounds %struct.k_stack, ptr %24, i32 0, i32 2, !dbg !571
  store ptr null, ptr %25, align 4, !dbg !572
  %26 = load ptr, ptr %3, align 4, !dbg !573
  %27 = getelementptr inbounds %struct.k_stack, ptr %26, i32 0, i32 5, !dbg !574
  %28 = load i8, ptr %27, align 4, !dbg !575
  %29 = zext i8 %28 to i32, !dbg !575
  %30 = and i32 %29, -2, !dbg !575
  %31 = trunc i32 %30 to i8, !dbg !575
  store i8 %31, ptr %27, align 4, !dbg !575
  br label %32, !dbg !576

32:                                               ; preds = %20, %13
  br label %33, !dbg !577

33:                                               ; preds = %32
  br label %34, !dbg !578

34:                                               ; preds = %33
  store i32 0, ptr %2, align 4, !dbg !580
  br label %35, !dbg !580

35:                                               ; preds = %34, %12
  %36 = load i32, ptr %2, align 4, !dbg !581
  ret i32 %36, !dbg !581
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_waitq_head(ptr noundef %0) #0 !dbg !582 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !586, metadata !DIExpression()), !dbg !587
  %3 = load ptr, ptr %2, align 4, !dbg !588
  %4 = getelementptr inbounds %struct._wait_q_t, ptr %3, i32 0, i32 0, !dbg !589
  %5 = call ptr @sys_dlist_peek_head(ptr noundef %4) #7, !dbg !590
  ret ptr %5, !dbg !591
}

; Function Attrs: optsize
declare !dbg !592 dso_local void @k_free(ptr noundef) #5

; Function Attrs: nounwind optsize
define hidden i32 @z_impl_k_stack_push(ptr noundef %0, i32 noundef %1) #1 !dbg !595 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.z_spinlock_key, align 4
  %10 = alloca ptr, align 4
  %11 = alloca ptr, align 4
  %12 = alloca i32, align 4
  %13 = alloca ptr, align 4
  %14 = alloca %struct.z_spinlock_key, align 4
  %15 = alloca ptr, align 4
  %16 = alloca ptr, align 4
  %17 = alloca i32, align 4
  %18 = alloca ptr, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.z_spinlock_key, align 4
  store ptr %0, ptr %16, align 4
  call void @llvm.dbg.declare(metadata ptr %16, metadata !599, metadata !DIExpression()), !dbg !610
  store i32 %1, ptr %17, align 4
  call void @llvm.dbg.declare(metadata ptr %17, metadata !600, metadata !DIExpression()), !dbg !611
  call void @llvm.lifetime.start.p0(i64 4, ptr %18) #8, !dbg !612
  call void @llvm.dbg.declare(metadata ptr %18, metadata !601, metadata !DIExpression()), !dbg !613
  call void @llvm.lifetime.start.p0(i64 4, ptr %19) #8, !dbg !614
  call void @llvm.dbg.declare(metadata ptr %19, metadata !602, metadata !DIExpression()), !dbg !615
  store i32 0, ptr %19, align 4, !dbg !615
  call void @llvm.lifetime.start.p0(i64 4, ptr %20) #8, !dbg !616
  call void @llvm.dbg.declare(metadata ptr %20, metadata !603, metadata !DIExpression()), !dbg !617
  %21 = load ptr, ptr %16, align 4, !dbg !618
  %22 = getelementptr inbounds %struct.k_stack, ptr %21, i32 0, i32 1, !dbg !619
  store ptr %22, ptr %15, align 4
  call void @llvm.dbg.declare(metadata ptr %15, metadata !620, metadata !DIExpression()), !dbg !627
  %23 = load ptr, ptr %15, align 4, !dbg !629
  call void @llvm.dbg.declare(metadata ptr %14, metadata !626, metadata !DIExpression()), !dbg !630
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #8, !dbg !631
  call void @llvm.dbg.declare(metadata ptr %8, metadata !637, metadata !DIExpression()), !dbg !639
  %24 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #8, !dbg !640, !srcloc !641
  store i32 %24, ptr %8, align 4, !dbg !640
  %25 = load i32, ptr %8, align 4, !dbg !642
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #8, !dbg !643
  store i32 %25, ptr %14, align 4, !dbg !644
  %26 = load ptr, ptr %15, align 4, !dbg !645
  store ptr %26, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !646, metadata !DIExpression()), !dbg !651
  %27 = load ptr, ptr %7, align 4, !dbg !653
  %28 = load ptr, ptr %15, align 4, !dbg !654
  store ptr %28, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !655, metadata !DIExpression()), !dbg !658
  %29 = load ptr, ptr %6, align 4, !dbg !660
  %30 = load i32, ptr %14, align 4, !dbg !661
  %31 = getelementptr inbounds %struct.z_spinlock_key, ptr %20, i32 0, i32 0, !dbg !662
  store i32 %30, ptr %31, align 4, !dbg !662
  br label %32, !dbg !663

32:                                               ; preds = %2
  br label %33, !dbg !664

33:                                               ; preds = %32
  br label %34, !dbg !664

34:                                               ; preds = %33
  %35 = load ptr, ptr %16, align 4, !dbg !666
  %36 = getelementptr inbounds %struct.k_stack, ptr %35, i32 0, i32 3, !dbg !668
  %37 = load ptr, ptr %36, align 4, !dbg !668
  %38 = load ptr, ptr %16, align 4, !dbg !669
  %39 = getelementptr inbounds %struct.k_stack, ptr %38, i32 0, i32 4, !dbg !670
  %40 = load ptr, ptr %39, align 4, !dbg !670
  %41 = icmp eq ptr %37, %40, !dbg !671
  br i1 %41, label %42, label %43, !dbg !672

42:                                               ; preds = %34
  store i32 -6, ptr %19, align 4, !dbg !673
  br label %76, !dbg !675

43:                                               ; preds = %34
  %44 = load ptr, ptr %16, align 4, !dbg !676
  %45 = getelementptr inbounds %struct.k_stack, ptr %44, i32 0, i32 0, !dbg !677
  %46 = call ptr @z_unpend_first_thread(ptr noundef %45) #7, !dbg !678
  store ptr %46, ptr %18, align 4, !dbg !679
  %47 = load ptr, ptr %18, align 4, !dbg !680
  %48 = icmp ne ptr %47, null, !dbg !682
  br i1 %48, label %49, label %67, !dbg !683

49:                                               ; preds = %43
  %50 = load ptr, ptr %18, align 4, !dbg !684
  %51 = load i32, ptr %17, align 4, !dbg !686
  %52 = inttoptr i32 %51 to ptr, !dbg !687
  store ptr %50, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !688, metadata !DIExpression()), !dbg !695
  store i32 0, ptr %12, align 4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !693, metadata !DIExpression()), !dbg !697
  store ptr %52, ptr %13, align 4
  call void @llvm.dbg.declare(metadata ptr %13, metadata !694, metadata !DIExpression()), !dbg !698
  %53 = load ptr, ptr %11, align 4, !dbg !699
  %54 = load i32, ptr %12, align 4, !dbg !700
  store ptr %53, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !701, metadata !DIExpression()), !dbg !708
  store i32 %54, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !707, metadata !DIExpression()), !dbg !710
  %55 = load i32, ptr %5, align 4, !dbg !711
  %56 = load ptr, ptr %4, align 4, !dbg !712
  %57 = getelementptr inbounds %struct.k_thread, ptr %56, i32 0, i32 6, !dbg !713
  %58 = getelementptr inbounds %struct._thread_arch, ptr %57, i32 0, i32 1, !dbg !714
  store i32 %55, ptr %58, align 4, !dbg !715
  %59 = load ptr, ptr %13, align 4, !dbg !716
  %60 = load ptr, ptr %11, align 4, !dbg !717
  %61 = getelementptr inbounds %struct._thread_base, ptr %60, i32 0, i32 6, !dbg !718
  store ptr %59, ptr %61, align 4, !dbg !719
  %62 = load ptr, ptr %18, align 4, !dbg !720
  call void @z_ready_thread(ptr noundef %62) #7, !dbg !721
  %63 = load ptr, ptr %16, align 4, !dbg !722
  %64 = getelementptr inbounds %struct.k_stack, ptr %63, i32 0, i32 1, !dbg !723
  %65 = getelementptr inbounds %struct.z_spinlock_key, ptr %20, i32 0, i32 0, !dbg !724
  %66 = load [1 x i32], ptr %65, align 4, !dbg !724
  call void @z_reschedule(ptr noundef %64, [1 x i32] %66) #7, !dbg !724
  br label %87, !dbg !725

67:                                               ; preds = %43
  %68 = load i32, ptr %17, align 4, !dbg !726
  %69 = load ptr, ptr %16, align 4, !dbg !728
  %70 = getelementptr inbounds %struct.k_stack, ptr %69, i32 0, i32 3, !dbg !729
  %71 = load ptr, ptr %70, align 4, !dbg !729
  store i32 %68, ptr %71, align 4, !dbg !730
  %72 = load ptr, ptr %16, align 4, !dbg !731
  %73 = getelementptr inbounds %struct.k_stack, ptr %72, i32 0, i32 3, !dbg !732
  %74 = load ptr, ptr %73, align 4, !dbg !733
  %75 = getelementptr inbounds i32, ptr %74, i32 1, !dbg !733
  store ptr %75, ptr %73, align 4, !dbg !733
  br label %76, !dbg !734

76:                                               ; preds = %67, %42
  call void @llvm.dbg.label(metadata !608), !dbg !735
  %77 = load ptr, ptr %16, align 4, !dbg !736
  %78 = getelementptr inbounds %struct.k_stack, ptr %77, i32 0, i32 1, !dbg !737
  %79 = getelementptr inbounds %struct.z_spinlock_key, ptr %20, i32 0, i32 0, !dbg !738
  %80 = load [1 x i32], ptr %79, align 4, !dbg !738
  store [1 x i32] %80, ptr %9, align 4
  store ptr %78, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !739, metadata !DIExpression()), !dbg !745
  call void @llvm.dbg.declare(metadata ptr %9, metadata !744, metadata !DIExpression()), !dbg !747
  %81 = load ptr, ptr %10, align 4, !dbg !748
  %82 = load i32, ptr %9, align 4, !dbg !749
  store i32 %82, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !750, metadata !DIExpression()), !dbg !755
  %83 = load i32, ptr %3, align 4, !dbg !757
  %84 = icmp ne i32 %83, 0, !dbg !759
  br i1 %84, label %85, label %86, !dbg !760

85:                                               ; preds = %76
  br label %arch_irq_unlock.exit, !dbg !761

86:                                               ; preds = %76
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #8, !dbg !763, !srcloc !764
  br label %arch_irq_unlock.exit, !dbg !765

arch_irq_unlock.exit:                             ; preds = %85, %86
  br label %87, !dbg !738

87:                                               ; preds = %arch_irq_unlock.exit, %49
  call void @llvm.dbg.label(metadata !609), !dbg !766
  br label %88, !dbg !767

88:                                               ; preds = %87
  br label %89, !dbg !768

89:                                               ; preds = %88
  br label %90, !dbg !768

90:                                               ; preds = %89
  %91 = load i32, ptr %19, align 4, !dbg !770
  call void @llvm.lifetime.end.p0(i64 4, ptr %20) #8, !dbg !771
  call void @llvm.lifetime.end.p0(i64 4, ptr %19) #8, !dbg !771
  call void @llvm.lifetime.end.p0(i64 4, ptr %18) #8, !dbg !771
  ret i32 %91, !dbg !772
}

; Function Attrs: optsize
declare !dbg !773 dso_local ptr @z_unpend_first_thread(ptr noundef) #5

; Function Attrs: optsize
declare !dbg !775 dso_local void @z_ready_thread(ptr noundef) #5

; Function Attrs: optsize
declare !dbg !778 dso_local void @z_reschedule(ptr noundef, [1 x i32]) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #2

; Function Attrs: nounwind optsize
define hidden i32 @z_impl_k_stack_pop(ptr noundef %0, ptr noundef %1, [1 x i64] %2) #1 !dbg !779 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.z_spinlock_key, align 4
  %10 = alloca ptr, align 4
  %11 = alloca %struct.z_spinlock_key, align 4
  %12 = alloca ptr, align 4
  %13 = alloca %struct.z_spinlock_key, align 4
  %14 = alloca ptr, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.k_timeout_t, align 8
  %17 = alloca ptr, align 4
  %18 = alloca ptr, align 4
  %19 = alloca %struct.z_spinlock_key, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.z_spinlock_key, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.k_timeout_t, align 8
  %24 = getelementptr inbounds %struct.k_timeout_t, ptr %16, i32 0, i32 0
  store [1 x i64] %2, ptr %24, align 8
  store ptr %0, ptr %17, align 4
  call void @llvm.dbg.declare(metadata ptr %17, metadata !783, metadata !DIExpression()), !dbg !788
  store ptr %1, ptr %18, align 4
  call void @llvm.dbg.declare(metadata ptr %18, metadata !784, metadata !DIExpression()), !dbg !789
  call void @llvm.dbg.declare(metadata ptr %16, metadata !785, metadata !DIExpression()), !dbg !790
  call void @llvm.lifetime.start.p0(i64 4, ptr %19) #8, !dbg !791
  call void @llvm.dbg.declare(metadata ptr %19, metadata !786, metadata !DIExpression()), !dbg !792
  call void @llvm.lifetime.start.p0(i64 4, ptr %20) #8, !dbg !793
  call void @llvm.dbg.declare(metadata ptr %20, metadata !787, metadata !DIExpression()), !dbg !794
  call void @llvm.lifetime.start.p0(i64 4, ptr %21) #8, !dbg !795
  %25 = load ptr, ptr %17, align 4, !dbg !796
  %26 = getelementptr inbounds %struct.k_stack, ptr %25, i32 0, i32 1, !dbg !797
  store ptr %26, ptr %14, align 4
  call void @llvm.dbg.declare(metadata ptr %14, metadata !620, metadata !DIExpression()), !dbg !798
  %27 = load ptr, ptr %14, align 4, !dbg !800
  call void @llvm.dbg.declare(metadata ptr %13, metadata !626, metadata !DIExpression()), !dbg !801
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #8, !dbg !802
  call void @llvm.dbg.declare(metadata ptr %8, metadata !637, metadata !DIExpression()), !dbg !804
  %28 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #8, !dbg !805, !srcloc !641
  store i32 %28, ptr %8, align 4, !dbg !805
  %29 = load i32, ptr %8, align 4, !dbg !806
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #8, !dbg !807
  store i32 %29, ptr %13, align 4, !dbg !808
  %30 = load ptr, ptr %14, align 4, !dbg !809
  store ptr %30, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !646, metadata !DIExpression()), !dbg !810
  %31 = load ptr, ptr %7, align 4, !dbg !812
  %32 = load ptr, ptr %14, align 4, !dbg !813
  store ptr %32, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !655, metadata !DIExpression()), !dbg !814
  %33 = load ptr, ptr %6, align 4, !dbg !816
  %34 = load i32, ptr %13, align 4, !dbg !817
  %35 = getelementptr inbounds %struct.z_spinlock_key, ptr %21, i32 0, i32 0, !dbg !795
  store i32 %34, ptr %35, align 4, !dbg !795
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %19, ptr align 4 %21, i32 4, i1 false), !dbg !795
  call void @llvm.lifetime.end.p0(i64 4, ptr %21) #8, !dbg !795
  br label %36, !dbg !818

36:                                               ; preds = %3
  br label %37, !dbg !819

37:                                               ; preds = %36
  br label %38, !dbg !819

38:                                               ; preds = %37
  %39 = load ptr, ptr %17, align 4, !dbg !821
  %40 = getelementptr inbounds %struct.k_stack, ptr %39, i32 0, i32 3, !dbg !823
  %41 = load ptr, ptr %40, align 4, !dbg !823
  %42 = load ptr, ptr %17, align 4, !dbg !824
  %43 = getelementptr inbounds %struct.k_stack, ptr %42, i32 0, i32 2, !dbg !825
  %44 = load ptr, ptr %43, align 4, !dbg !825
  %45 = icmp ugt ptr %41, %44, !dbg !826
  %46 = xor i1 %45, true, !dbg !827
  %47 = xor i1 %46, true, !dbg !828
  %48 = zext i1 %47 to i32, !dbg !829
  %49 = call i32 @llvm.expect.i32(i32 %48, i32 1), !dbg !830
  %50 = icmp ne i32 %49, 0, !dbg !831
  br i1 %50, label %51, label %74, !dbg !832

51:                                               ; preds = %38
  %52 = load ptr, ptr %17, align 4, !dbg !833
  %53 = getelementptr inbounds %struct.k_stack, ptr %52, i32 0, i32 3, !dbg !835
  %54 = load ptr, ptr %53, align 4, !dbg !836
  %55 = getelementptr inbounds i32, ptr %54, i32 -1, !dbg !836
  store ptr %55, ptr %53, align 4, !dbg !836
  %56 = load ptr, ptr %17, align 4, !dbg !837
  %57 = getelementptr inbounds %struct.k_stack, ptr %56, i32 0, i32 3, !dbg !838
  %58 = load ptr, ptr %57, align 4, !dbg !838
  %59 = load i32, ptr %58, align 4, !dbg !839
  %60 = load ptr, ptr %18, align 4, !dbg !840
  store i32 %59, ptr %60, align 4, !dbg !841
  %61 = load ptr, ptr %17, align 4, !dbg !842
  %62 = getelementptr inbounds %struct.k_stack, ptr %61, i32 0, i32 1, !dbg !843
  %63 = getelementptr inbounds %struct.z_spinlock_key, ptr %19, i32 0, i32 0, !dbg !844
  %64 = load [1 x i32], ptr %63, align 4, !dbg !844
  store [1 x i32] %64, ptr %9, align 4
  store ptr %62, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !739, metadata !DIExpression()), !dbg !845
  call void @llvm.dbg.declare(metadata ptr %9, metadata !744, metadata !DIExpression()), !dbg !847
  %65 = load ptr, ptr %10, align 4, !dbg !848
  %66 = load i32, ptr %9, align 4, !dbg !849
  store i32 %66, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !750, metadata !DIExpression()), !dbg !850
  %67 = load i32, ptr %5, align 4, !dbg !852
  %68 = icmp ne i32 %67, 0, !dbg !853
  br i1 %68, label %69, label %70, !dbg !854

69:                                               ; preds = %51
  br label %arch_irq_unlock.exit, !dbg !855

70:                                               ; preds = %51
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #8, !dbg !856, !srcloc !764
  br label %arch_irq_unlock.exit, !dbg !857

arch_irq_unlock.exit:                             ; preds = %69, %70
  br label %71, !dbg !858

71:                                               ; preds = %arch_irq_unlock.exit
  br label %72, !dbg !859

72:                                               ; preds = %71
  br label %73, !dbg !859

73:                                               ; preds = %72
  store i32 0, ptr %15, align 4, !dbg !861
  store i32 1, ptr %22, align 4
  br label %122, !dbg !861

74:                                               ; preds = %38
  br label %75, !dbg !862

75:                                               ; preds = %74
  br label %76, !dbg !863

76:                                               ; preds = %75
  br label %77, !dbg !863

77:                                               ; preds = %76
  %78 = getelementptr inbounds %struct.k_timeout_t, ptr %16, i32 0, i32 0, !dbg !865
  %79 = load i64, ptr %78, align 8, !dbg !865
  %80 = getelementptr inbounds %struct.k_timeout_t, ptr %23, i32 0, i32 0, !dbg !867
  store i64 0, ptr %80, align 8, !dbg !867
  %81 = icmp eq i64 %79, 0, !dbg !868
  br i1 %81, label %82, label %96, !dbg !869

82:                                               ; preds = %77
  %83 = load ptr, ptr %17, align 4, !dbg !870
  %84 = getelementptr inbounds %struct.k_stack, ptr %83, i32 0, i32 1, !dbg !872
  %85 = getelementptr inbounds %struct.z_spinlock_key, ptr %19, i32 0, i32 0, !dbg !873
  %86 = load [1 x i32], ptr %85, align 4, !dbg !873
  store [1 x i32] %86, ptr %11, align 4
  store ptr %84, ptr %12, align 4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !739, metadata !DIExpression()), !dbg !874
  call void @llvm.dbg.declare(metadata ptr %11, metadata !744, metadata !DIExpression()), !dbg !876
  %87 = load ptr, ptr %12, align 4, !dbg !877
  %88 = load i32, ptr %11, align 4, !dbg !878
  store i32 %88, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !750, metadata !DIExpression()), !dbg !879
  %89 = load i32, ptr %4, align 4, !dbg !881
  %90 = icmp ne i32 %89, 0, !dbg !882
  br i1 %90, label %91, label %92, !dbg !883

91:                                               ; preds = %82
  br label %arch_irq_unlock.exit1, !dbg !884

92:                                               ; preds = %82
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #8, !dbg !885, !srcloc !764
  br label %arch_irq_unlock.exit1, !dbg !886

arch_irq_unlock.exit1:                            ; preds = %91, %92
  br label %93, !dbg !887

93:                                               ; preds = %arch_irq_unlock.exit1
  br label %94, !dbg !888

94:                                               ; preds = %93
  br label %95, !dbg !888

95:                                               ; preds = %94
  store i32 -16, ptr %15, align 4, !dbg !890
  store i32 1, ptr %22, align 4
  br label %122, !dbg !890

96:                                               ; preds = %77
  %97 = load ptr, ptr %17, align 4, !dbg !891
  %98 = getelementptr inbounds %struct.k_stack, ptr %97, i32 0, i32 1, !dbg !892
  %99 = load ptr, ptr %17, align 4, !dbg !893
  %100 = getelementptr inbounds %struct.k_stack, ptr %99, i32 0, i32 0, !dbg !894
  %101 = getelementptr inbounds %struct.z_spinlock_key, ptr %19, i32 0, i32 0, !dbg !895
  %102 = load [1 x i32], ptr %101, align 4, !dbg !895
  %103 = getelementptr inbounds %struct.k_timeout_t, ptr %16, i32 0, i32 0, !dbg !895
  %104 = load [1 x i64], ptr %103, align 8, !dbg !895
  %105 = call i32 @z_pend_curr(ptr noundef %98, [1 x i32] %102, ptr noundef %100, [1 x i64] %104) #7, !dbg !895
  store i32 %105, ptr %20, align 4, !dbg !896
  %106 = load i32, ptr %20, align 4, !dbg !897
  %107 = icmp eq i32 %106, -11, !dbg !899
  br i1 %107, label %108, label %112, !dbg !900

108:                                              ; preds = %96
  br label %109, !dbg !901

109:                                              ; preds = %108
  br label %110, !dbg !903

110:                                              ; preds = %109
  br label %111, !dbg !903

111:                                              ; preds = %110
  store i32 -11, ptr %15, align 4, !dbg !905
  store i32 1, ptr %22, align 4
  br label %122, !dbg !905

112:                                              ; preds = %96
  %113 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !906
  %114 = getelementptr inbounds %struct.k_thread, ptr %113, i32 0, i32 0, !dbg !907
  %115 = getelementptr inbounds %struct._thread_base, ptr %114, i32 0, i32 6, !dbg !908
  %116 = load ptr, ptr %115, align 4, !dbg !908
  %117 = ptrtoint ptr %116 to i32, !dbg !909
  %118 = load ptr, ptr %18, align 4, !dbg !910
  store i32 %117, ptr %118, align 4, !dbg !911
  br label %119, !dbg !912

119:                                              ; preds = %112
  br label %120, !dbg !913

120:                                              ; preds = %119
  br label %121, !dbg !913

121:                                              ; preds = %120
  store i32 0, ptr %15, align 4, !dbg !915
  store i32 1, ptr %22, align 4
  br label %122, !dbg !915

122:                                              ; preds = %121, %111, %95, %73
  call void @llvm.lifetime.end.p0(i64 4, ptr %20) #8, !dbg !916
  call void @llvm.lifetime.end.p0(i64 4, ptr %19) #8, !dbg !916
  %123 = load i32, ptr %15, align 4, !dbg !916
  ret i32 %123, !dbg !916
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i32 @llvm.expect.i32(i32, i32) #6

; Function Attrs: optsize
declare !dbg !917 dso_local i32 @z_pend_curr(ptr noundef, [1 x i32], ptr noundef, [1 x i64]) #5

; Function Attrs: optsize
declare !dbg !920 dso_local i64 @z_timeout_expires(ptr noundef) #5

; Function Attrs: optsize
declare !dbg !925 dso_local i64 @z_timeout_remaining(ptr noundef) #5

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @sys_sflist_is_empty(ptr noundef %0) #0 !dbg !926 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !931, metadata !DIExpression()), !dbg !932
  %3 = load ptr, ptr %2, align 4, !dbg !933
  %4 = call ptr @sys_sflist_peek_head(ptr noundef %3) #7, !dbg !934
  %5 = icmp eq ptr %4, null, !dbg !935
  ret i1 %5, !dbg !936
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @sys_sflist_peek_head(ptr noundef %0) #0 !dbg !937 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !941, metadata !DIExpression()), !dbg !942
  %3 = load ptr, ptr %2, align 4, !dbg !943
  %4 = getelementptr inbounds %struct._sflist, ptr %3, i32 0, i32 0, !dbg !944
  %5 = load ptr, ptr %4, align 4, !dbg !944
  ret ptr %5, !dbg !945
}

; Function Attrs: inlinehint nounwind optsize
define internal void @sys_dlist_init(ptr noundef %0) #0 !dbg !946 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !951, metadata !DIExpression()), !dbg !952
  %3 = load ptr, ptr %2, align 4, !dbg !953
  %4 = load ptr, ptr %2, align 4, !dbg !954
  %5 = getelementptr inbounds %struct._dnode, ptr %4, i32 0, i32 0, !dbg !955
  store ptr %3, ptr %5, align 4, !dbg !956
  %6 = load ptr, ptr %2, align 4, !dbg !957
  %7 = load ptr, ptr %2, align 4, !dbg !958
  %8 = getelementptr inbounds %struct._dnode, ptr %7, i32 0, i32 1, !dbg !959
  store ptr %6, ptr %8, align 4, !dbg !960
  ret void, !dbg !961
}

; Function Attrs: optsize
declare !dbg !962 dso_local ptr @z_thread_aligned_alloc(i32 noundef, i32 noundef) #5

; Function Attrs: inlinehint nounwind optsize
define internal ptr @sys_dlist_peek_head(ptr noundef %0) #0 !dbg !965 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !969, metadata !DIExpression()), !dbg !970
  %3 = load ptr, ptr %2, align 4, !dbg !971
  %4 = call zeroext i1 @sys_dlist_is_empty(ptr noundef %3) #7, !dbg !972
  br i1 %4, label %5, label %6, !dbg !972

5:                                                ; preds = %1
  br label %10, !dbg !972

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 4, !dbg !973
  %8 = getelementptr inbounds %struct._dnode, ptr %7, i32 0, i32 0, !dbg !974
  %9 = load ptr, ptr %8, align 4, !dbg !974
  br label %10, !dbg !972

10:                                               ; preds = %6, %5
  %11 = phi ptr [ null, %5 ], [ %9, %6 ], !dbg !972
  ret ptr %11, !dbg !975
}

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @sys_dlist_is_empty(ptr noundef %0) #0 !dbg !976 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !980, metadata !DIExpression()), !dbg !981
  %3 = load ptr, ptr %2, align 4, !dbg !982
  %4 = getelementptr inbounds %struct._dnode, ptr %3, i32 0, i32 0, !dbg !983
  %5 = load ptr, ptr %4, align 4, !dbg !983
  %6 = load ptr, ptr %2, align 4, !dbg !984
  %7 = icmp eq ptr %5, %6, !dbg !985
  ret i1 %7, !dbg !986
}

attributes #0 = { inlinehint nounwind optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { optsize }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!213, !214, !215, !216, !217, !218}
!llvm.ident = !{!219}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !86, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "stack.c", directory: "/home/sri/zephyrproject/zephyr/build")
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
!86 = !{!87, !89, !91, !92, !93, !90, !97, !113}
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !88, line: 62, baseType: !5)
!88 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/stdint.h", directory: "")
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !88, line: 58, baseType: !90)
!90 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!92 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "stack_data_t", file: !94, line: 2738, baseType: !95)
!94 = !DIFile(filename: "include/zephyr/kernel.h", directory: "/home/sri/zephyrproject/zephyr")
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !88, line: 102, baseType: !96)
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
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 32)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_thread", file: !115, line: 250, size: 896, elements: !116)
!115 = !DIFile(filename: "include/zephyr/kernel/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!116 = !{!117, !172, !185, !186, !187, !188, !208}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !114, file: !115, line: 252, baseType: !118, size: 384)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_base", file: !115, line: 58, size: 384, elements: !119)
!119 = !{!120, !133, !141, !142, !143, !156, !158, !159}
!120 = !DIDerivedType(tag: DW_TAG_member, scope: !118, file: !115, line: 61, baseType: !121, size: 64)
!121 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !118, file: !115, line: 61, size: 64, elements: !122)
!122 = !{!123, !124}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_dlist", scope: !121, file: !115, line: 62, baseType: !98, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_rb", scope: !121, file: !115, line: 63, baseType: !125, size: 64)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rbnode", file: !126, line: 58, size: 64, elements: !127)
!126 = !DIFile(filename: "include/zephyr/sys/rb.h", directory: "/home/sri/zephyrproject/zephyr")
!127 = !{!128}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !125, file: !126, line: 60, baseType: !129, size: 64)
!129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 64, elements: !131)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 32)
!131 = !{!132}
!132 = !DISubrange(count: 2)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "pended_on", scope: !118, file: !115, line: 69, baseType: !134, size: 32, offset: 64)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 32)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "_wait_q_t", file: !136, line: 243, baseType: !137)
!136 = !DIFile(filename: "include/zephyr/kernel_structs.h", directory: "/home/sri/zephyrproject/zephyr")
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !136, line: 241, size: 64, elements: !138)
!138 = !{!139}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !137, file: !136, line: 242, baseType: !140, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dlist_t", file: !99, line: 51, baseType: !100)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "user_options", scope: !118, file: !115, line: 72, baseType: !87, size: 8, offset: 96)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "thread_state", scope: !118, file: !115, line: 75, baseType: !87, size: 8, offset: 104)
!143 = !DIDerivedType(tag: DW_TAG_member, scope: !118, file: !115, line: 91, baseType: !144, size: 16, offset: 112)
!144 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !118, file: !115, line: 91, size: 16, elements: !145)
!145 = !{!146, !153}
!146 = !DIDerivedType(tag: DW_TAG_member, scope: !144, file: !115, line: 92, baseType: !147, size: 16)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !144, file: !115, line: 92, size: 16, elements: !148)
!148 = !{!149, !152}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !147, file: !115, line: 97, baseType: !150, size: 8)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !88, line: 56, baseType: !151)
!151 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "sched_locked", scope: !147, file: !115, line: 98, baseType: !87, size: 8, offset: 8)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "preempt", scope: !144, file: !115, line: 101, baseType: !154, size: 16)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !88, line: 63, baseType: !155)
!155 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "order_key", scope: !118, file: !115, line: 108, baseType: !157, size: 32, offset: 128)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !88, line: 64, baseType: !96)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "swap_data", scope: !118, file: !115, line: 132, baseType: !91, size: 32, offset: 160)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !118, file: !115, line: 136, baseType: !160, size: 192, offset: 192)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_timeout", file: !136, line: 254, size: 192, elements: !161)
!161 = !{!162, !163, !169}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !160, file: !136, line: 255, baseType: !98, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !160, file: !136, line: 256, baseType: !164, size: 32, offset: 64)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "_timeout_func_t", file: !136, line: 252, baseType: !165)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 32)
!166 = !DISubroutineType(types: !167)
!167 = !{null, !168}
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 32)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "dticks", scope: !160, file: !136, line: 259, baseType: !170, size: 64, offset: 128)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !88, line: 59, baseType: !171)
!171 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "callee_saved", scope: !114, file: !115, line: 255, baseType: !173, size: 288, offset: 384)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_callee_saved", file: !174, line: 25, size: 288, elements: !175)
!174 = !DIFile(filename: "include/zephyr/arch/arm/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!175 = !{!176, !177, !178, !179, !180, !181, !182, !183, !184}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "v1", scope: !173, file: !174, line: 26, baseType: !157, size: 32)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "v2", scope: !173, file: !174, line: 27, baseType: !157, size: 32, offset: 32)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "v3", scope: !173, file: !174, line: 28, baseType: !157, size: 32, offset: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "v4", scope: !173, file: !174, line: 29, baseType: !157, size: 32, offset: 96)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "v5", scope: !173, file: !174, line: 30, baseType: !157, size: 32, offset: 128)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "v6", scope: !173, file: !174, line: 31, baseType: !157, size: 32, offset: 160)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "v7", scope: !173, file: !174, line: 32, baseType: !157, size: 32, offset: 192)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "v8", scope: !173, file: !174, line: 33, baseType: !157, size: 32, offset: 224)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "psp", scope: !173, file: !174, line: 34, baseType: !157, size: 32, offset: 256)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "init_data", scope: !114, file: !115, line: 258, baseType: !91, size: 32, offset: 672)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "join_queue", scope: !114, file: !115, line: 261, baseType: !135, size: 64, offset: 704)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "errno_var", scope: !114, file: !115, line: 302, baseType: !90, size: 32, offset: 768)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "resource_pool", scope: !114, file: !115, line: 333, baseType: !189, size: 32, offset: 800)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 32)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_heap", file: !94, line: 5291, size: 160, elements: !191)
!191 = !{!192, !203, !204}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !190, file: !94, line: 5292, baseType: !193, size: 96)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sys_heap", file: !194, line: 56, size: 96, elements: !195)
!194 = !DIFile(filename: "include/zephyr/sys/sys_heap.h", directory: "/home/sri/zephyrproject/zephyr")
!195 = !{!196, !199, !200}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !193, file: !194, line: 57, baseType: !197, size: 32)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 32)
!198 = !DICompositeType(tag: DW_TAG_structure_type, name: "z_heap", file: !194, line: 57, flags: DIFlagFwdDecl)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "init_mem", scope: !193, file: !194, line: 58, baseType: !91, size: 32, offset: 32)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "init_bytes", scope: !193, file: !194, line: 59, baseType: !201, size: 32, offset: 64)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !202, line: 46, baseType: !96)
!202 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/lib/clang/17/include/stddef.h", directory: "")
!203 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !190, file: !94, line: 5293, baseType: !135, size: 64, offset: 96)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !190, file: !94, line: 5294, baseType: !205, offset: 160)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_spinlock", file: !206, line: 45, elements: !207)
!206 = !DIFile(filename: "include/zephyr/spinlock.h", directory: "/home/sri/zephyrproject/zephyr")
!207 = !{}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !114, file: !115, line: 355, baseType: !209, size: 64, offset: 832)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_arch", file: !174, line: 60, size: 64, elements: !210)
!210 = !{!211, !212}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "basepri", scope: !209, file: !174, line: 63, baseType: !157, size: 32)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "swap_return_value", scope: !209, file: !174, line: 66, baseType: !157, size: 32, offset: 32)
!213 = !{i32 7, !"Dwarf Version", i32 4}
!214 = !{i32 2, !"Debug Info Version", i32 3}
!215 = !{i32 1, !"wchar_size", i32 4}
!216 = !{i32 1, !"static_rwdata", i32 1}
!217 = !{i32 1, !"enumsize_buildattr", i32 1}
!218 = !{i32 1, !"armlib_unavailable", i32 0}
!219 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
!220 = distinct !DISubprogram(name: "z_impl_k_object_access_grant", scope: !4, file: !4, line: 223, type: !221, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !225)
!221 = !DISubroutineType(types: !222)
!222 = !{null, !223, !113}
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 32)
!224 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!225 = !{!226, !227}
!226 = !DILocalVariable(name: "object", arg: 1, scope: !220, file: !4, line: 223, type: !223)
!227 = !DILocalVariable(name: "thread", arg: 2, scope: !220, file: !4, line: 224, type: !113)
!228 = !DILocation(line: 223, column: 61, scope: !220)
!229 = !DILocation(line: 224, column: 24, scope: !220)
!230 = !DILocation(line: 226, column: 9, scope: !220)
!231 = !DILocation(line: 227, column: 9, scope: !220)
!232 = !DILocation(line: 228, column: 1, scope: !220)
!233 = distinct !DISubprogram(name: "z_impl_k_object_release", scope: !4, file: !4, line: 243, type: !234, scopeLine: 244, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !236)
!234 = !DISubroutineType(types: !235)
!235 = !{null, !223}
!236 = !{!237}
!237 = !DILocalVariable(name: "object", arg: 1, scope: !233, file: !4, line: 243, type: !223)
!238 = !DILocation(line: 243, column: 56, scope: !233)
!239 = !DILocation(line: 245, column: 9, scope: !233)
!240 = !DILocation(line: 246, column: 1, scope: !233)
!241 = distinct !DISubprogram(name: "z_impl_k_object_alloc", scope: !4, file: !4, line: 359, type: !242, scopeLine: 360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !244)
!242 = !DISubroutineType(types: !243)
!243 = !{!91, !3}
!244 = !{!245}
!245 = !DILocalVariable(name: "otype", arg: 1, scope: !241, file: !4, line: 359, type: !3)
!246 = !DILocation(line: 359, column: 58, scope: !241)
!247 = !DILocation(line: 361, column: 9, scope: !241)
!248 = !DILocation(line: 363, column: 2, scope: !241)
!249 = distinct !DISubprogram(name: "z_impl_k_object_alloc_size", scope: !4, file: !4, line: 366, type: !250, scopeLine: 368, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !252)
!250 = !DISubroutineType(types: !251)
!251 = !{!91, !3, !201}
!252 = !{!253, !254}
!253 = !DILocalVariable(name: "otype", arg: 1, scope: !249, file: !4, line: 366, type: !3)
!254 = !DILocalVariable(name: "size", arg: 2, scope: !249, file: !4, line: 367, type: !201)
!255 = !DILocation(line: 366, column: 63, scope: !249)
!256 = !DILocation(line: 367, column: 13, scope: !249)
!257 = !DILocation(line: 369, column: 9, scope: !249)
!258 = !DILocation(line: 370, column: 9, scope: !249)
!259 = !DILocation(line: 372, column: 2, scope: !249)
!260 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_expires_ticks", scope: !94, file: !94, line: 656, type: !261, scopeLine: 658, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !267)
!261 = !DISubroutineType(types: !262)
!262 = !{!263, !265}
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_ticks_t", file: !264, line: 46, baseType: !170)
!264 = !DIFile(filename: "include/zephyr/sys_clock.h", directory: "/home/sri/zephyrproject/zephyr")
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 32)
!266 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !114)
!267 = !{!268}
!268 = !DILocalVariable(name: "t", arg: 1, scope: !260, file: !94, line: 657, type: !265)
!269 = !DILocation(line: 657, column: 30, scope: !260)
!270 = !DILocation(line: 659, column: 28, scope: !260)
!271 = !DILocation(line: 659, column: 31, scope: !260)
!272 = !DILocation(line: 659, column: 36, scope: !260)
!273 = !DILocation(line: 659, column: 9, scope: !260)
!274 = !DILocation(line: 659, column: 2, scope: !260)
!275 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_remaining_ticks", scope: !94, file: !94, line: 671, type: !261, scopeLine: 673, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !276)
!276 = !{!277}
!277 = !DILocalVariable(name: "t", arg: 1, scope: !275, file: !94, line: 672, type: !265)
!278 = !DILocation(line: 672, column: 30, scope: !275)
!279 = !DILocation(line: 674, column: 30, scope: !275)
!280 = !DILocation(line: 674, column: 33, scope: !275)
!281 = !DILocation(line: 674, column: 38, scope: !275)
!282 = !DILocation(line: 674, column: 9, scope: !275)
!283 = !DILocation(line: 674, column: 2, scope: !275)
!284 = distinct !DISubprogram(name: "z_impl_k_timer_expires_ticks", scope: !94, file: !94, line: 1634, type: !285, scopeLine: 1636, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !306)
!285 = !DISubroutineType(types: !286)
!286 = !{!263, !287}
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 32)
!288 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !289)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_timer", file: !94, line: 1439, size: 448, elements: !290)
!290 = !{!291, !292, !293, !298, !299, !304, !305}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !289, file: !94, line: 1445, baseType: !160, size: 192)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !289, file: !94, line: 1448, baseType: !135, size: 64, offset: 192)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_fn", scope: !289, file: !94, line: 1451, baseType: !294, size: 32, offset: 256)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 32)
!295 = !DISubroutineType(types: !296)
!296 = !{null, !297}
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 32)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "stop_fn", scope: !289, file: !94, line: 1454, baseType: !294, size: 32, offset: 288)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !289, file: !94, line: 1457, baseType: !300, size: 64, offset: 320)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_timeout_t", file: !264, line: 67, baseType: !301)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !264, line: 65, size: 64, elements: !302)
!302 = !{!303}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "ticks", scope: !301, file: !264, line: 66, baseType: !263, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !289, file: !94, line: 1460, baseType: !157, size: 32, offset: 384)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !289, file: !94, line: 1463, baseType: !91, size: 32, offset: 416)
!306 = !{!307}
!307 = !DILocalVariable(name: "timer", arg: 1, scope: !284, file: !94, line: 1635, type: !287)
!308 = !DILocation(line: 1635, column: 34, scope: !284)
!309 = !DILocation(line: 1637, column: 28, scope: !284)
!310 = !DILocation(line: 1637, column: 35, scope: !284)
!311 = !DILocation(line: 1637, column: 9, scope: !284)
!312 = !DILocation(line: 1637, column: 2, scope: !284)
!313 = distinct !DISubprogram(name: "z_impl_k_timer_remaining_ticks", scope: !94, file: !94, line: 1649, type: !285, scopeLine: 1651, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !314)
!314 = !{!315}
!315 = !DILocalVariable(name: "timer", arg: 1, scope: !313, file: !94, line: 1650, type: !287)
!316 = !DILocation(line: 1650, column: 34, scope: !313)
!317 = !DILocation(line: 1652, column: 30, scope: !313)
!318 = !DILocation(line: 1652, column: 37, scope: !313)
!319 = !DILocation(line: 1652, column: 9, scope: !313)
!320 = !DILocation(line: 1652, column: 2, scope: !313)
!321 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_set", scope: !94, file: !94, line: 1689, type: !322, scopeLine: 1691, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !324)
!322 = !DISubroutineType(types: !323)
!323 = !{null, !297, !91}
!324 = !{!325, !326}
!325 = !DILocalVariable(name: "timer", arg: 1, scope: !321, file: !94, line: 1689, type: !297)
!326 = !DILocalVariable(name: "user_data", arg: 2, scope: !321, file: !94, line: 1690, type: !91)
!327 = !DILocation(line: 1689, column: 65, scope: !321)
!328 = !DILocation(line: 1690, column: 19, scope: !321)
!329 = !DILocation(line: 1692, column: 21, scope: !321)
!330 = !DILocation(line: 1692, column: 2, scope: !321)
!331 = !DILocation(line: 1692, column: 9, scope: !321)
!332 = !DILocation(line: 1692, column: 19, scope: !321)
!333 = !DILocation(line: 1693, column: 1, scope: !321)
!334 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_get", scope: !94, file: !94, line: 1704, type: !335, scopeLine: 1705, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !337)
!335 = !DISubroutineType(types: !336)
!336 = !{!91, !287}
!337 = !{!338}
!338 = !DILocalVariable(name: "timer", arg: 1, scope: !334, file: !94, line: 1704, type: !287)
!339 = !DILocation(line: 1704, column: 72, scope: !334)
!340 = !DILocation(line: 1706, column: 9, scope: !334)
!341 = !DILocation(line: 1706, column: 16, scope: !334)
!342 = !DILocation(line: 1706, column: 2, scope: !334)
!343 = distinct !DISubprogram(name: "z_impl_k_queue_is_empty", scope: !94, file: !94, line: 2071, type: !344, scopeLine: 2072, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !364)
!344 = !DISubroutineType(types: !345)
!345 = !{!90, !346}
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 32)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_queue", file: !94, line: 1830, size: 128, elements: !348)
!348 = !{!349, !362, !363}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "data_q", scope: !347, file: !94, line: 1831, baseType: !350, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sflist_t", file: !351, line: 60, baseType: !352)
!351 = !DIFile(filename: "include/zephyr/sys/sflist.h", directory: "/home/sri/zephyrproject/zephyr")
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sflist", file: !351, line: 53, size: 64, elements: !353)
!353 = !{!354, !361}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !352, file: !351, line: 54, baseType: !355, size: 32)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 32)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sfnode_t", file: !351, line: 50, baseType: !357)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sfnode", file: !351, line: 44, size: 32, elements: !358)
!358 = !{!359}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "next_and_flags", scope: !357, file: !351, line: 45, baseType: !360, size: 32)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "unative_t", file: !351, line: 40, baseType: !157)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !352, file: !351, line: 55, baseType: !355, size: 32, offset: 32)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !347, file: !94, line: 1832, baseType: !205, offset: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !347, file: !94, line: 1833, baseType: !135, size: 64, offset: 64)
!364 = !{!365}
!365 = !DILocalVariable(name: "queue", arg: 1, scope: !343, file: !94, line: 2071, type: !346)
!366 = !DILocation(line: 2071, column: 59, scope: !343)
!367 = !DILocation(line: 2073, column: 35, scope: !343)
!368 = !DILocation(line: 2073, column: 42, scope: !343)
!369 = !DILocation(line: 2073, column: 14, scope: !343)
!370 = !DILocation(line: 2073, column: 9, scope: !343)
!371 = !DILocation(line: 2073, column: 2, scope: !343)
!372 = distinct !DISubprogram(name: "z_impl_k_sem_count_get", scope: !94, file: !94, line: 3209, type: !373, scopeLine: 3210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !381)
!373 = !DISubroutineType(types: !374)
!374 = !{!96, !375}
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 32)
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sem", file: !94, line: 3092, size: 128, elements: !377)
!377 = !{!378, !379, !380}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !376, file: !94, line: 3093, baseType: !135, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !376, file: !94, line: 3094, baseType: !96, size: 32, offset: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !376, file: !94, line: 3095, baseType: !96, size: 32, offset: 96)
!381 = !{!382}
!382 = !DILocalVariable(name: "sem", arg: 1, scope: !372, file: !94, line: 3209, type: !375)
!383 = !DILocation(line: 3209, column: 65, scope: !372)
!384 = !DILocation(line: 3211, column: 9, scope: !372)
!385 = !DILocation(line: 3211, column: 14, scope: !372)
!386 = !DILocation(line: 3211, column: 2, scope: !372)
!387 = distinct !DISubprogram(name: "z_impl_k_msgq_num_free_get", scope: !94, file: !94, line: 4649, type: !388, scopeLine: 4650, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !405)
!388 = !DISubroutineType(types: !389)
!389 = !{!157, !390}
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 32)
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_msgq", file: !94, line: 4390, size: 320, elements: !392)
!392 = !{!393, !394, !395, !396, !397, !400, !401, !402, !403, !404}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !391, file: !94, line: 4392, baseType: !135, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !391, file: !94, line: 4394, baseType: !205, offset: 64)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "msg_size", scope: !391, file: !94, line: 4396, baseType: !201, size: 32, offset: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !391, file: !94, line: 4398, baseType: !157, size: 32, offset: 96)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_start", scope: !391, file: !94, line: 4400, baseType: !398, size: 32, offset: 128)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 32)
!399 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_end", scope: !391, file: !94, line: 4402, baseType: !398, size: 32, offset: 160)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "read_ptr", scope: !391, file: !94, line: 4404, baseType: !398, size: 32, offset: 192)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "write_ptr", scope: !391, file: !94, line: 4406, baseType: !398, size: 32, offset: 224)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "used_msgs", scope: !391, file: !94, line: 4408, baseType: !157, size: 32, offset: 256)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !391, file: !94, line: 4413, baseType: !87, size: 8, offset: 288)
!405 = !{!406}
!406 = !DILocalVariable(name: "msgq", arg: 1, scope: !387, file: !94, line: 4649, type: !390)
!407 = !DILocation(line: 4649, column: 66, scope: !387)
!408 = !DILocation(line: 4651, column: 9, scope: !387)
!409 = !DILocation(line: 4651, column: 15, scope: !387)
!410 = !DILocation(line: 4651, column: 26, scope: !387)
!411 = !DILocation(line: 4651, column: 32, scope: !387)
!412 = !DILocation(line: 4651, column: 24, scope: !387)
!413 = !DILocation(line: 4651, column: 2, scope: !387)
!414 = distinct !DISubprogram(name: "z_impl_k_msgq_num_used_get", scope: !94, file: !94, line: 4665, type: !388, scopeLine: 4666, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !415)
!415 = !{!416}
!416 = !DILocalVariable(name: "msgq", arg: 1, scope: !414, file: !94, line: 4665, type: !390)
!417 = !DILocation(line: 4665, column: 66, scope: !414)
!418 = !DILocation(line: 4667, column: 9, scope: !414)
!419 = !DILocation(line: 4667, column: 15, scope: !414)
!420 = !DILocation(line: 4667, column: 2, scope: !414)
!421 = distinct !DISubprogram(name: "k_stack_init", scope: !422, file: !422, line: 26, type: !423, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !435)
!422 = !DIFile(filename: "kernel/stack.c", directory: "/home/sri/zephyrproject/zephyr")
!423 = !DISubroutineType(types: !424)
!424 = !{null, !425, !431, !157}
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 32)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_stack", file: !94, line: 2740, size: 192, elements: !427)
!427 = !{!428, !429, !430, !432, !433, !434}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !426, file: !94, line: 2741, baseType: !135, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !426, file: !94, line: 2742, baseType: !205, offset: 64)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !426, file: !94, line: 2743, baseType: !431, size: 32, offset: 64)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 32)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !426, file: !94, line: 2743, baseType: !431, size: 32, offset: 96)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !426, file: !94, line: 2743, baseType: !431, size: 32, offset: 128)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !426, file: !94, line: 2745, baseType: !87, size: 8, offset: 160)
!435 = !{!436, !437, !438}
!436 = !DILocalVariable(name: "stack", arg: 1, scope: !421, file: !422, line: 26, type: !425)
!437 = !DILocalVariable(name: "buffer", arg: 2, scope: !421, file: !422, line: 26, type: !431)
!438 = !DILocalVariable(name: "num_entries", arg: 3, scope: !421, file: !422, line: 27, type: !157)
!439 = !DILocation(line: 26, column: 35, scope: !421)
!440 = !DILocation(line: 26, column: 56, scope: !421)
!441 = !DILocation(line: 27, column: 14, scope: !421)
!442 = !DILocation(line: 29, column: 16, scope: !421)
!443 = !DILocation(line: 29, column: 23, scope: !421)
!444 = !DILocation(line: 29, column: 2, scope: !421)
!445 = !DILocation(line: 30, column: 2, scope: !421)
!446 = !DILocation(line: 30, column: 9, scope: !421)
!447 = !DILocation(line: 30, column: 16, scope: !421)
!448 = !DILocation(line: 31, column: 30, scope: !421)
!449 = !DILocation(line: 31, column: 16, scope: !421)
!450 = !DILocation(line: 31, column: 23, scope: !421)
!451 = !DILocation(line: 31, column: 28, scope: !421)
!452 = !DILocation(line: 31, column: 2, scope: !421)
!453 = !DILocation(line: 31, column: 9, scope: !421)
!454 = !DILocation(line: 31, column: 14, scope: !421)
!455 = !DILocation(line: 32, column: 15, scope: !421)
!456 = !DILocation(line: 32, column: 22, scope: !421)
!457 = !DILocation(line: 32, column: 29, scope: !421)
!458 = !DILocation(line: 32, column: 27, scope: !421)
!459 = !DILocation(line: 32, column: 2, scope: !421)
!460 = !DILocation(line: 32, column: 9, scope: !421)
!461 = !DILocation(line: 32, column: 13, scope: !421)
!462 = !DILocation(line: 34, column: 2, scope: !421)
!463 = !DILocation(line: 34, column: 7, scope: !464)
!464 = distinct !DILexicalBlock(scope: !421, file: !422, line: 34, column: 5)
!465 = !DILocation(line: 35, column: 16, scope: !421)
!466 = !DILocation(line: 35, column: 2, scope: !421)
!467 = !DILocation(line: 40, column: 1, scope: !421)
!468 = distinct !DISubprogram(name: "z_waitq_init", scope: !469, file: !469, line: 47, type: !470, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !472)
!469 = !DIFile(filename: "kernel/include/wait_q.h", directory: "/home/sri/zephyrproject/zephyr")
!470 = !DISubroutineType(types: !471)
!471 = !{null, !134}
!472 = !{!473}
!473 = !DILocalVariable(name: "w", arg: 1, scope: !468, file: !469, line: 47, type: !134)
!474 = !DILocation(line: 47, column: 44, scope: !468)
!475 = !DILocation(line: 49, column: 18, scope: !468)
!476 = !DILocation(line: 49, column: 21, scope: !468)
!477 = !DILocation(line: 49, column: 2, scope: !468)
!478 = !DILocation(line: 50, column: 1, scope: !468)
!479 = distinct !DISubprogram(name: "z_object_init", scope: !4, file: !4, line: 215, type: !234, scopeLine: 216, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !480)
!480 = !{!481}
!481 = !DILocalVariable(name: "obj", arg: 1, scope: !479, file: !4, line: 215, type: !223)
!482 = !DILocation(line: 215, column: 46, scope: !479)
!483 = !DILocation(line: 217, column: 9, scope: !479)
!484 = !DILocation(line: 218, column: 1, scope: !479)
!485 = distinct !DISubprogram(name: "z_impl_k_stack_alloc_init", scope: !422, file: !422, line: 42, type: !486, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !488)
!486 = !DISubroutineType(types: !487)
!487 = !{!89, !425, !157}
!488 = !{!489, !490, !491, !492}
!489 = !DILocalVariable(name: "stack", arg: 1, scope: !485, file: !422, line: 42, type: !425)
!490 = !DILocalVariable(name: "num_entries", arg: 2, scope: !485, file: !422, line: 42, type: !157)
!491 = !DILocalVariable(name: "buffer", scope: !485, file: !422, line: 44, type: !91)
!492 = !DILocalVariable(name: "ret", scope: !485, file: !422, line: 45, type: !89)
!493 = !DILocation(line: 42, column: 51, scope: !485)
!494 = !DILocation(line: 42, column: 67, scope: !485)
!495 = !DILocation(line: 44, column: 2, scope: !485)
!496 = !DILocation(line: 44, column: 8, scope: !485)
!497 = !DILocation(line: 45, column: 2, scope: !485)
!498 = !DILocation(line: 45, column: 10, scope: !485)
!499 = !DILocation(line: 47, column: 2, scope: !485)
!500 = !DILocation(line: 47, column: 7, scope: !501)
!501 = distinct !DILexicalBlock(scope: !485, file: !422, line: 47, column: 5)
!502 = !DILocation(line: 49, column: 27, scope: !485)
!503 = !DILocation(line: 49, column: 39, scope: !485)
!504 = !DILocation(line: 49, column: 11, scope: !485)
!505 = !DILocation(line: 49, column: 9, scope: !485)
!506 = !DILocation(line: 50, column: 6, scope: !507)
!507 = distinct !DILexicalBlock(scope: !485, file: !422, line: 50, column: 6)
!508 = !DILocation(line: 50, column: 13, scope: !507)
!509 = !DILocation(line: 50, column: 6, scope: !485)
!510 = !DILocation(line: 51, column: 16, scope: !511)
!511 = distinct !DILexicalBlock(scope: !507, file: !422, line: 50, column: 19)
!512 = !DILocation(line: 51, column: 23, scope: !511)
!513 = !DILocation(line: 51, column: 31, scope: !511)
!514 = !DILocation(line: 51, column: 3, scope: !511)
!515 = !DILocation(line: 52, column: 3, scope: !511)
!516 = !DILocation(line: 52, column: 10, scope: !511)
!517 = !DILocation(line: 52, column: 16, scope: !511)
!518 = !DILocation(line: 53, column: 7, scope: !511)
!519 = !DILocation(line: 54, column: 2, scope: !511)
!520 = !DILocation(line: 55, column: 7, scope: !521)
!521 = distinct !DILexicalBlock(scope: !507, file: !422, line: 54, column: 9)
!522 = !DILocation(line: 58, column: 2, scope: !485)
!523 = !DILocation(line: 58, column: 7, scope: !524)
!524 = distinct !DILexicalBlock(scope: !485, file: !422, line: 58, column: 5)
!525 = !DILocation(line: 60, column: 9, scope: !485)
!526 = !DILocation(line: 61, column: 1, scope: !485)
!527 = !DILocation(line: 60, column: 2, scope: !485)
!528 = distinct !DISubprogram(name: "z_thread_malloc", scope: !529, file: !529, line: 105, type: !530, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !534)
!529 = !DIFile(filename: "kernel/include/kernel_internal.h", directory: "/home/sri/zephyrproject/zephyr")
!530 = !DISubroutineType(types: !531)
!531 = !{!91, !532}
!532 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !533, line: 51, baseType: !96)
!533 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/string.h", directory: "")
!534 = !{!535}
!535 = !DILocalVariable(name: "size", arg: 1, scope: !528, file: !529, line: 105, type: !532)
!536 = !DILocation(line: 105, column: 44, scope: !528)
!537 = !DILocation(line: 107, column: 35, scope: !528)
!538 = !DILocation(line: 107, column: 9, scope: !528)
!539 = !DILocation(line: 107, column: 2, scope: !528)
!540 = distinct !DISubprogram(name: "k_stack_cleanup", scope: !422, file: !422, line: 74, type: !541, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !543)
!541 = !DISubroutineType(types: !542)
!542 = !{!90, !425}
!543 = !{!544}
!544 = !DILocalVariable(name: "stack", arg: 1, scope: !540, file: !422, line: 74, type: !425)
!545 = !DILocation(line: 74, column: 37, scope: !540)
!546 = !DILocation(line: 76, column: 2, scope: !540)
!547 = !DILocation(line: 76, column: 7, scope: !548)
!548 = distinct !DILexicalBlock(scope: !540, file: !422, line: 76, column: 5)
!549 = !DILocation(line: 78, column: 20, scope: !550)
!550 = distinct !DILexicalBlock(scope: !540, file: !422, line: 78, column: 6)
!551 = !DILocation(line: 78, column: 27, scope: !550)
!552 = !DILocation(line: 78, column: 6, scope: !550)
!553 = !DILocation(line: 78, column: 35, scope: !550)
!554 = !DILocation(line: 78, column: 6, scope: !540)
!555 = !DILocation(line: 79, column: 3, scope: !556)
!556 = distinct !DILexicalBlock(scope: !550, file: !422, line: 78, column: 41)
!557 = !DILocation(line: 79, column: 8, scope: !558)
!558 = distinct !DILexicalBlock(scope: !556, file: !422, line: 79, column: 6)
!559 = !DILocation(line: 81, column: 3, scope: !556)
!560 = !DILocation(line: 84, column: 7, scope: !561)
!561 = distinct !DILexicalBlock(scope: !540, file: !422, line: 84, column: 6)
!562 = !DILocation(line: 84, column: 14, scope: !561)
!563 = !DILocation(line: 84, column: 20, scope: !561)
!564 = !DILocation(line: 84, column: 36, scope: !561)
!565 = !DILocation(line: 84, column: 6, scope: !540)
!566 = !DILocation(line: 85, column: 10, scope: !567)
!567 = distinct !DILexicalBlock(scope: !561, file: !422, line: 84, column: 51)
!568 = !DILocation(line: 85, column: 17, scope: !567)
!569 = !DILocation(line: 85, column: 3, scope: !567)
!570 = !DILocation(line: 86, column: 3, scope: !567)
!571 = !DILocation(line: 86, column: 10, scope: !567)
!572 = !DILocation(line: 86, column: 15, scope: !567)
!573 = !DILocation(line: 87, column: 3, scope: !567)
!574 = !DILocation(line: 87, column: 10, scope: !567)
!575 = !DILocation(line: 87, column: 16, scope: !567)
!576 = !DILocation(line: 88, column: 2, scope: !567)
!577 = !DILocation(line: 90, column: 2, scope: !540)
!578 = !DILocation(line: 90, column: 7, scope: !579)
!579 = distinct !DILexicalBlock(scope: !540, file: !422, line: 90, column: 5)
!580 = !DILocation(line: 92, column: 2, scope: !540)
!581 = !DILocation(line: 93, column: 1, scope: !540)
!582 = distinct !DISubprogram(name: "z_waitq_head", scope: !469, file: !469, line: 52, type: !583, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !585)
!583 = !DISubroutineType(types: !584)
!584 = !{!113, !134}
!585 = !{!586}
!586 = !DILocalVariable(name: "w", arg: 1, scope: !582, file: !469, line: 52, type: !134)
!587 = !DILocation(line: 52, column: 56, scope: !582)
!588 = !DILocation(line: 54, column: 49, scope: !582)
!589 = !DILocation(line: 54, column: 52, scope: !582)
!590 = !DILocation(line: 54, column: 28, scope: !582)
!591 = !DILocation(line: 54, column: 2, scope: !582)
!592 = !DISubprogram(name: "k_free", scope: !94, file: !94, line: 5490, type: !593, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !207)
!593 = !DISubroutineType(types: !594)
!594 = !{null, !91}
!595 = distinct !DISubprogram(name: "z_impl_k_stack_push", scope: !422, file: !422, line: 95, type: !596, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !598)
!596 = !DISubroutineType(types: !597)
!597 = !{!90, !425, !93}
!598 = !{!599, !600, !601, !602, !603, !608, !609}
!599 = !DILocalVariable(name: "stack", arg: 1, scope: !595, file: !422, line: 95, type: !425)
!600 = !DILocalVariable(name: "data", arg: 2, scope: !595, file: !422, line: 95, type: !93)
!601 = !DILocalVariable(name: "first_pending_thread", scope: !595, file: !422, line: 97, type: !113)
!602 = !DILocalVariable(name: "ret", scope: !595, file: !422, line: 98, type: !90)
!603 = !DILocalVariable(name: "key", scope: !595, file: !422, line: 99, type: !604)
!604 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_spinlock_key_t", file: !206, line: 108, baseType: !605)
!605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "z_spinlock_key", file: !206, line: 34, size: 32, elements: !606)
!606 = !{!607}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !605, file: !206, line: 35, baseType: !90, size: 32)
!608 = !DILabel(scope: !595, name: "out", file: !422, line: 123)
!609 = !DILabel(scope: !595, name: "end", file: !422, line: 126)
!610 = !DILocation(line: 95, column: 41, scope: !595)
!611 = !DILocation(line: 95, column: 61, scope: !595)
!612 = !DILocation(line: 97, column: 2, scope: !595)
!613 = !DILocation(line: 97, column: 19, scope: !595)
!614 = !DILocation(line: 98, column: 2, scope: !595)
!615 = !DILocation(line: 98, column: 6, scope: !595)
!616 = !DILocation(line: 99, column: 2, scope: !595)
!617 = !DILocation(line: 99, column: 19, scope: !595)
!618 = !DILocation(line: 99, column: 38, scope: !595)
!619 = !DILocation(line: 99, column: 45, scope: !595)
!620 = !DILocalVariable(name: "l", arg: 1, scope: !621, file: !206, line: 160, type: !624)
!621 = distinct !DISubprogram(name: "k_spin_lock", scope: !206, file: !206, line: 160, type: !622, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !625)
!622 = !DISubroutineType(types: !623)
!623 = !{!604, !624}
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 32)
!625 = !{!620, !626}
!626 = !DILocalVariable(name: "k", scope: !621, file: !206, line: 163, type: !604)
!627 = !DILocation(line: 160, column: 94, scope: !621, inlinedAt: !628)
!628 = distinct !DILocation(line: 99, column: 25, scope: !595)
!629 = !DILocation(line: 162, column: 9, scope: !621, inlinedAt: !628)
!630 = !DILocation(line: 163, column: 19, scope: !621, inlinedAt: !628)
!631 = !DILocation(line: 44, column: 2, scope: !632, inlinedAt: !638)
!632 = distinct !DISubprogram(name: "arch_irq_lock", scope: !633, file: !633, line: 42, type: !634, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !636)
!633 = !DIFile(filename: "include/zephyr/arch/arm/asm_inline_gcc.h", directory: "/home/sri/zephyrproject/zephyr")
!634 = !DISubroutineType(types: !635)
!635 = !{!96}
!636 = !{!637}
!637 = !DILocalVariable(name: "key", scope: !632, file: !633, line: 44, type: !96)
!638 = distinct !DILocation(line: 169, column: 10, scope: !621, inlinedAt: !628)
!639 = !DILocation(line: 44, column: 15, scope: !632, inlinedAt: !638)
!640 = !DILocation(line: 48, column: 2, scope: !632, inlinedAt: !638)
!641 = !{i64 66945}
!642 = !DILocation(line: 80, column: 9, scope: !632, inlinedAt: !638)
!643 = !DILocation(line: 81, column: 1, scope: !632, inlinedAt: !638)
!644 = !DILocation(line: 169, column: 8, scope: !621, inlinedAt: !628)
!645 = !DILocation(line: 171, column: 26, scope: !621, inlinedAt: !628)
!646 = !DILocalVariable(name: "l", arg: 1, scope: !647, file: !206, line: 110, type: !624)
!647 = distinct !DISubprogram(name: "z_spinlock_validate_pre", scope: !206, file: !206, line: 110, type: !648, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !650)
!648 = !DISubroutineType(types: !649)
!649 = !{null, !624}
!650 = !{!646}
!651 = !DILocation(line: 110, column: 94, scope: !647, inlinedAt: !652)
!652 = distinct !DILocation(line: 171, column: 2, scope: !621, inlinedAt: !628)
!653 = !DILocation(line: 112, column: 9, scope: !647, inlinedAt: !652)
!654 = !DILocation(line: 177, column: 27, scope: !621, inlinedAt: !628)
!655 = !DILocalVariable(name: "l", arg: 1, scope: !656, file: !206, line: 121, type: !624)
!656 = distinct !DISubprogram(name: "z_spinlock_validate_post", scope: !206, file: !206, line: 121, type: !648, scopeLine: 122, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !657)
!657 = !{!655}
!658 = !DILocation(line: 121, column: 95, scope: !656, inlinedAt: !659)
!659 = distinct !DILocation(line: 177, column: 2, scope: !621, inlinedAt: !628)
!660 = !DILocation(line: 123, column: 9, scope: !656, inlinedAt: !659)
!661 = !DILocation(line: 179, column: 2, scope: !621, inlinedAt: !628)
!662 = !DILocation(line: 99, column: 25, scope: !595)
!663 = !DILocation(line: 101, column: 2, scope: !595)
!664 = !DILocation(line: 101, column: 7, scope: !665)
!665 = distinct !DILexicalBlock(scope: !595, file: !422, line: 101, column: 5)
!666 = !DILocation(line: 103, column: 6, scope: !667)
!667 = distinct !DILexicalBlock(scope: !595, file: !422, line: 103, column: 6)
!668 = !DILocation(line: 103, column: 13, scope: !667)
!669 = !DILocation(line: 103, column: 21, scope: !667)
!670 = !DILocation(line: 103, column: 28, scope: !667)
!671 = !DILocation(line: 103, column: 18, scope: !667)
!672 = !DILocation(line: 103, column: 6, scope: !595)
!673 = !DILocation(line: 104, column: 7, scope: !674)
!674 = distinct !DILexicalBlock(scope: !667, file: !422, line: 103, column: 33)
!675 = !DILocation(line: 105, column: 3, scope: !674)
!676 = !DILocation(line: 108, column: 48, scope: !595)
!677 = !DILocation(line: 108, column: 55, scope: !595)
!678 = !DILocation(line: 108, column: 25, scope: !595)
!679 = !DILocation(line: 108, column: 23, scope: !595)
!680 = !DILocation(line: 110, column: 6, scope: !681)
!681 = distinct !DILexicalBlock(scope: !595, file: !422, line: 110, column: 6)
!682 = !DILocation(line: 110, column: 27, scope: !681)
!683 = !DILocation(line: 110, column: 6, scope: !595)
!684 = !DILocation(line: 111, column: 39, scope: !685)
!685 = distinct !DILexicalBlock(scope: !681, file: !422, line: 110, column: 33)
!686 = !DILocation(line: 112, column: 21, scope: !685)
!687 = !DILocation(line: 112, column: 13, scope: !685)
!688 = !DILocalVariable(name: "thread", arg: 1, scope: !689, file: !529, line: 137, type: !113)
!689 = distinct !DISubprogram(name: "z_thread_return_value_set_with_data", scope: !529, file: !529, line: 137, type: !690, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !692)
!690 = !DISubroutineType(types: !691)
!691 = !{null, !113, !96, !91}
!692 = !{!688, !693, !694}
!693 = !DILocalVariable(name: "value", arg: 2, scope: !689, file: !529, line: 138, type: !96)
!694 = !DILocalVariable(name: "data", arg: 3, scope: !689, file: !529, line: 139, type: !91)
!695 = !DILocation(line: 137, column: 54, scope: !689, inlinedAt: !696)
!696 = distinct !DILocation(line: 111, column: 3, scope: !685)
!697 = !DILocation(line: 138, column: 21, scope: !689, inlinedAt: !696)
!698 = !DILocation(line: 139, column: 14, scope: !689, inlinedAt: !696)
!699 = !DILocation(line: 141, column: 31, scope: !689, inlinedAt: !696)
!700 = !DILocation(line: 141, column: 39, scope: !689, inlinedAt: !696)
!701 = !DILocalVariable(name: "thread", arg: 1, scope: !702, file: !703, line: 59, type: !113)
!702 = distinct !DISubprogram(name: "arch_thread_return_value_set", scope: !703, file: !703, line: 59, type: !704, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !706)
!703 = !DIFile(filename: "arch/arm/include/cortex_m/kernel_arch_func.h", directory: "/home/sri/zephyrproject/zephyr")
!704 = !DISubroutineType(types: !705)
!705 = !{null, !113, !96}
!706 = !{!701, !707}
!707 = !DILocalVariable(name: "value", arg: 2, scope: !702, file: !703, line: 59, type: !96)
!708 = !DILocation(line: 59, column: 47, scope: !702, inlinedAt: !709)
!709 = distinct !DILocation(line: 141, column: 2, scope: !689, inlinedAt: !696)
!710 = !DILocation(line: 59, column: 68, scope: !702, inlinedAt: !709)
!711 = !DILocation(line: 61, column: 35, scope: !702, inlinedAt: !709)
!712 = !DILocation(line: 61, column: 2, scope: !702, inlinedAt: !709)
!713 = !DILocation(line: 61, column: 10, scope: !702, inlinedAt: !709)
!714 = !DILocation(line: 61, column: 15, scope: !702, inlinedAt: !709)
!715 = !DILocation(line: 61, column: 33, scope: !702, inlinedAt: !709)
!716 = !DILocation(line: 142, column: 27, scope: !689, inlinedAt: !696)
!717 = !DILocation(line: 142, column: 2, scope: !689, inlinedAt: !696)
!718 = !DILocation(line: 142, column: 15, scope: !689, inlinedAt: !696)
!719 = !DILocation(line: 142, column: 25, scope: !689, inlinedAt: !696)
!720 = !DILocation(line: 114, column: 18, scope: !685)
!721 = !DILocation(line: 114, column: 3, scope: !685)
!722 = !DILocation(line: 115, column: 17, scope: !685)
!723 = !DILocation(line: 115, column: 24, scope: !685)
!724 = !DILocation(line: 115, column: 3, scope: !685)
!725 = !DILocation(line: 116, column: 3, scope: !685)
!726 = !DILocation(line: 118, column: 20, scope: !727)
!727 = distinct !DILexicalBlock(scope: !681, file: !422, line: 117, column: 9)
!728 = !DILocation(line: 118, column: 5, scope: !727)
!729 = !DILocation(line: 118, column: 12, scope: !727)
!730 = !DILocation(line: 118, column: 18, scope: !727)
!731 = !DILocation(line: 119, column: 3, scope: !727)
!732 = !DILocation(line: 119, column: 10, scope: !727)
!733 = !DILocation(line: 119, column: 14, scope: !727)
!734 = !DILocation(line: 120, column: 3, scope: !727)
!735 = !DILocation(line: 123, column: 1, scope: !595)
!736 = !DILocation(line: 124, column: 17, scope: !595)
!737 = !DILocation(line: 124, column: 24, scope: !595)
!738 = !DILocation(line: 124, column: 2, scope: !595)
!739 = !DILocalVariable(name: "l", arg: 1, scope: !740, file: !206, line: 235, type: !624)
!740 = distinct !DISubprogram(name: "k_spin_unlock", scope: !206, file: !206, line: 235, type: !741, scopeLine: 237, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !743)
!741 = !DISubroutineType(types: !742)
!742 = !{null, !624, !604}
!743 = !{!739, !744}
!744 = !DILocalVariable(name: "key", arg: 2, scope: !740, file: !206, line: 236, type: !604)
!745 = !DILocation(line: 235, column: 84, scope: !740, inlinedAt: !746)
!746 = distinct !DILocation(line: 124, column: 2, scope: !595)
!747 = !DILocation(line: 236, column: 23, scope: !740, inlinedAt: !746)
!748 = !DILocation(line: 238, column: 9, scope: !740, inlinedAt: !746)
!749 = !DILocation(line: 261, column: 22, scope: !740, inlinedAt: !746)
!750 = !DILocalVariable(name: "key", arg: 1, scope: !751, file: !633, line: 88, type: !96)
!751 = distinct !DISubprogram(name: "arch_irq_unlock", scope: !633, file: !633, line: 88, type: !752, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !754)
!752 = !DISubroutineType(types: !753)
!753 = !{null, !96}
!754 = !{!750}
!755 = !DILocation(line: 88, column: 80, scope: !751, inlinedAt: !756)
!756 = distinct !DILocation(line: 261, column: 2, scope: !740, inlinedAt: !746)
!757 = !DILocation(line: 91, column: 6, scope: !758, inlinedAt: !756)
!758 = distinct !DILexicalBlock(scope: !751, file: !633, line: 91, column: 6)
!759 = !DILocation(line: 91, column: 10, scope: !758, inlinedAt: !756)
!760 = !DILocation(line: 91, column: 6, scope: !751, inlinedAt: !756)
!761 = !DILocation(line: 92, column: 3, scope: !762, inlinedAt: !756)
!762 = distinct !DILexicalBlock(scope: !758, file: !633, line: 91, column: 17)
!763 = !DILocation(line: 94, column: 2, scope: !751, inlinedAt: !756)
!764 = !{i64 67249}
!765 = !DILocation(line: 114, column: 1, scope: !751, inlinedAt: !756)
!766 = !DILocation(line: 126, column: 1, scope: !595)
!767 = !DILocation(line: 127, column: 2, scope: !595)
!768 = !DILocation(line: 127, column: 7, scope: !769)
!769 = distinct !DILexicalBlock(scope: !595, file: !422, line: 127, column: 5)
!770 = !DILocation(line: 129, column: 9, scope: !595)
!771 = !DILocation(line: 130, column: 1, scope: !595)
!772 = !DILocation(line: 129, column: 2, scope: !595)
!773 = !DISubprogram(name: "z_unpend_first_thread", scope: !774, file: !774, line: 53, type: !583, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !207)
!774 = !DIFile(filename: "kernel/include/ksched.h", directory: "/home/sri/zephyrproject/zephyr")
!775 = !DISubprogram(name: "z_ready_thread", scope: !774, file: !774, line: 65, type: !776, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !207)
!776 = !DISubroutineType(types: !777)
!777 = !{null, !113}
!778 = !DISubprogram(name: "z_reschedule", scope: !774, file: !774, line: 51, type: !741, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !207)
!779 = distinct !DISubprogram(name: "z_impl_k_stack_pop", scope: !422, file: !422, line: 142, type: !780, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !782)
!780 = !DISubroutineType(types: !781)
!781 = !{!90, !425, !431, !300}
!782 = !{!783, !784, !785, !786, !787}
!783 = !DILocalVariable(name: "stack", arg: 1, scope: !779, file: !422, line: 142, type: !425)
!784 = !DILocalVariable(name: "data", arg: 2, scope: !779, file: !422, line: 142, type: !431)
!785 = !DILocalVariable(name: "timeout", arg: 3, scope: !779, file: !422, line: 143, type: !300)
!786 = !DILocalVariable(name: "key", scope: !779, file: !422, line: 145, type: !604)
!787 = !DILocalVariable(name: "result", scope: !779, file: !422, line: 146, type: !90)
!788 = !DILocation(line: 142, column: 40, scope: !779)
!789 = !DILocation(line: 142, column: 61, scope: !779)
!790 = !DILocation(line: 143, column: 22, scope: !779)
!791 = !DILocation(line: 145, column: 2, scope: !779)
!792 = !DILocation(line: 145, column: 19, scope: !779)
!793 = !DILocation(line: 146, column: 2, scope: !779)
!794 = !DILocation(line: 146, column: 6, scope: !779)
!795 = !DILocation(line: 148, column: 8, scope: !779)
!796 = !DILocation(line: 148, column: 21, scope: !779)
!797 = !DILocation(line: 148, column: 28, scope: !779)
!798 = !DILocation(line: 160, column: 94, scope: !621, inlinedAt: !799)
!799 = distinct !DILocation(line: 148, column: 8, scope: !779)
!800 = !DILocation(line: 162, column: 9, scope: !621, inlinedAt: !799)
!801 = !DILocation(line: 163, column: 19, scope: !621, inlinedAt: !799)
!802 = !DILocation(line: 44, column: 2, scope: !632, inlinedAt: !803)
!803 = distinct !DILocation(line: 169, column: 10, scope: !621, inlinedAt: !799)
!804 = !DILocation(line: 44, column: 15, scope: !632, inlinedAt: !803)
!805 = !DILocation(line: 48, column: 2, scope: !632, inlinedAt: !803)
!806 = !DILocation(line: 80, column: 9, scope: !632, inlinedAt: !803)
!807 = !DILocation(line: 81, column: 1, scope: !632, inlinedAt: !803)
!808 = !DILocation(line: 169, column: 8, scope: !621, inlinedAt: !799)
!809 = !DILocation(line: 171, column: 26, scope: !621, inlinedAt: !799)
!810 = !DILocation(line: 110, column: 94, scope: !647, inlinedAt: !811)
!811 = distinct !DILocation(line: 171, column: 2, scope: !621, inlinedAt: !799)
!812 = !DILocation(line: 112, column: 9, scope: !647, inlinedAt: !811)
!813 = !DILocation(line: 177, column: 27, scope: !621, inlinedAt: !799)
!814 = !DILocation(line: 121, column: 95, scope: !656, inlinedAt: !815)
!815 = distinct !DILocation(line: 177, column: 2, scope: !621, inlinedAt: !799)
!816 = !DILocation(line: 123, column: 9, scope: !656, inlinedAt: !815)
!817 = !DILocation(line: 179, column: 2, scope: !621, inlinedAt: !799)
!818 = !DILocation(line: 150, column: 2, scope: !779)
!819 = !DILocation(line: 150, column: 7, scope: !820)
!820 = distinct !DILexicalBlock(scope: !779, file: !422, line: 150, column: 5)
!821 = !DILocation(line: 152, column: 34, scope: !822)
!822 = distinct !DILexicalBlock(scope: !779, file: !422, line: 152, column: 6)
!823 = !DILocation(line: 152, column: 41, scope: !822)
!824 = !DILocation(line: 152, column: 48, scope: !822)
!825 = !DILocation(line: 152, column: 55, scope: !822)
!826 = !DILocation(line: 152, column: 46, scope: !822)
!827 = !DILocation(line: 152, column: 32, scope: !822)
!828 = !DILocation(line: 152, column: 31, scope: !822)
!829 = !DILocation(line: 152, column: 24, scope: !822)
!830 = !DILocation(line: 152, column: 7, scope: !822)
!831 = !DILocation(line: 152, column: 65, scope: !822)
!832 = !DILocation(line: 152, column: 6, scope: !779)
!833 = !DILocation(line: 153, column: 3, scope: !834)
!834 = distinct !DILexicalBlock(scope: !822, file: !422, line: 152, column: 73)
!835 = !DILocation(line: 153, column: 10, scope: !834)
!836 = !DILocation(line: 153, column: 14, scope: !834)
!837 = !DILocation(line: 154, column: 13, scope: !834)
!838 = !DILocation(line: 154, column: 20, scope: !834)
!839 = !DILocation(line: 154, column: 11, scope: !834)
!840 = !DILocation(line: 154, column: 4, scope: !834)
!841 = !DILocation(line: 154, column: 9, scope: !834)
!842 = !DILocation(line: 155, column: 18, scope: !834)
!843 = !DILocation(line: 155, column: 25, scope: !834)
!844 = !DILocation(line: 155, column: 3, scope: !834)
!845 = !DILocation(line: 235, column: 84, scope: !740, inlinedAt: !846)
!846 = distinct !DILocation(line: 155, column: 3, scope: !834)
!847 = !DILocation(line: 236, column: 23, scope: !740, inlinedAt: !846)
!848 = !DILocation(line: 238, column: 9, scope: !740, inlinedAt: !846)
!849 = !DILocation(line: 261, column: 22, scope: !740, inlinedAt: !846)
!850 = !DILocation(line: 88, column: 80, scope: !751, inlinedAt: !851)
!851 = distinct !DILocation(line: 261, column: 2, scope: !740, inlinedAt: !846)
!852 = !DILocation(line: 91, column: 6, scope: !758, inlinedAt: !851)
!853 = !DILocation(line: 91, column: 10, scope: !758, inlinedAt: !851)
!854 = !DILocation(line: 91, column: 6, scope: !751, inlinedAt: !851)
!855 = !DILocation(line: 92, column: 3, scope: !762, inlinedAt: !851)
!856 = !DILocation(line: 94, column: 2, scope: !751, inlinedAt: !851)
!857 = !DILocation(line: 114, column: 1, scope: !751, inlinedAt: !851)
!858 = !DILocation(line: 157, column: 3, scope: !834)
!859 = !DILocation(line: 157, column: 8, scope: !860)
!860 = distinct !DILexicalBlock(scope: !834, file: !422, line: 157, column: 6)
!861 = !DILocation(line: 159, column: 3, scope: !834)
!862 = !DILocation(line: 162, column: 2, scope: !779)
!863 = !DILocation(line: 162, column: 7, scope: !864)
!864 = distinct !DILexicalBlock(scope: !779, file: !422, line: 162, column: 5)
!865 = !DILocation(line: 164, column: 17, scope: !866)
!866 = distinct !DILexicalBlock(scope: !779, file: !422, line: 164, column: 6)
!867 = !DILocation(line: 164, column: 42, scope: !866)
!868 = !DILocation(line: 164, column: 23, scope: !866)
!869 = !DILocation(line: 164, column: 6, scope: !779)
!870 = !DILocation(line: 165, column: 18, scope: !871)
!871 = distinct !DILexicalBlock(scope: !866, file: !422, line: 164, column: 56)
!872 = !DILocation(line: 165, column: 25, scope: !871)
!873 = !DILocation(line: 165, column: 3, scope: !871)
!874 = !DILocation(line: 235, column: 84, scope: !740, inlinedAt: !875)
!875 = distinct !DILocation(line: 165, column: 3, scope: !871)
!876 = !DILocation(line: 236, column: 23, scope: !740, inlinedAt: !875)
!877 = !DILocation(line: 238, column: 9, scope: !740, inlinedAt: !875)
!878 = !DILocation(line: 261, column: 22, scope: !740, inlinedAt: !875)
!879 = !DILocation(line: 88, column: 80, scope: !751, inlinedAt: !880)
!880 = distinct !DILocation(line: 261, column: 2, scope: !740, inlinedAt: !875)
!881 = !DILocation(line: 91, column: 6, scope: !758, inlinedAt: !880)
!882 = !DILocation(line: 91, column: 10, scope: !758, inlinedAt: !880)
!883 = !DILocation(line: 91, column: 6, scope: !751, inlinedAt: !880)
!884 = !DILocation(line: 92, column: 3, scope: !762, inlinedAt: !880)
!885 = !DILocation(line: 94, column: 2, scope: !751, inlinedAt: !880)
!886 = !DILocation(line: 114, column: 1, scope: !751, inlinedAt: !880)
!887 = !DILocation(line: 167, column: 3, scope: !871)
!888 = !DILocation(line: 167, column: 8, scope: !889)
!889 = distinct !DILexicalBlock(scope: !871, file: !422, line: 167, column: 6)
!890 = !DILocation(line: 169, column: 3, scope: !871)
!891 = !DILocation(line: 172, column: 24, scope: !779)
!892 = !DILocation(line: 172, column: 31, scope: !779)
!893 = !DILocation(line: 172, column: 43, scope: !779)
!894 = !DILocation(line: 172, column: 50, scope: !779)
!895 = !DILocation(line: 172, column: 11, scope: !779)
!896 = !DILocation(line: 172, column: 9, scope: !779)
!897 = !DILocation(line: 173, column: 6, scope: !898)
!898 = distinct !DILexicalBlock(scope: !779, file: !422, line: 173, column: 6)
!899 = !DILocation(line: 173, column: 13, scope: !898)
!900 = !DILocation(line: 173, column: 6, scope: !779)
!901 = !DILocation(line: 174, column: 3, scope: !902)
!902 = distinct !DILexicalBlock(scope: !898, file: !422, line: 173, column: 21)
!903 = !DILocation(line: 174, column: 8, scope: !904)
!904 = distinct !DILexicalBlock(scope: !902, file: !422, line: 174, column: 6)
!905 = !DILocation(line: 176, column: 3, scope: !902)
!906 = !DILocation(line: 179, column: 40, scope: !779)
!907 = !DILocation(line: 179, column: 49, scope: !779)
!908 = !DILocation(line: 179, column: 54, scope: !779)
!909 = !DILocation(line: 179, column: 10, scope: !779)
!910 = !DILocation(line: 179, column: 3, scope: !779)
!911 = !DILocation(line: 179, column: 8, scope: !779)
!912 = !DILocation(line: 181, column: 2, scope: !779)
!913 = !DILocation(line: 181, column: 7, scope: !914)
!914 = distinct !DILexicalBlock(scope: !779, file: !422, line: 181, column: 5)
!915 = !DILocation(line: 183, column: 2, scope: !779)
!916 = !DILocation(line: 184, column: 1, scope: !779)
!917 = !DISubprogram(name: "z_pend_curr", scope: !774, file: !774, line: 46, type: !918, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !207)
!918 = !DISubroutineType(types: !919)
!919 = !{!90, !624, !604, !134, !300}
!920 = !DISubprogram(name: "z_timeout_expires", scope: !94, file: !94, line: 642, type: !921, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !207)
!921 = !DISubroutineType(types: !922)
!922 = !{!263, !923}
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 32)
!924 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !160)
!925 = !DISubprogram(name: "z_timeout_remaining", scope: !94, file: !94, line: 643, type: !921, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !207)
!926 = distinct !DISubprogram(name: "sys_sflist_is_empty", scope: !351, file: !351, line: 335, type: !927, scopeLine: 335, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !930)
!927 = !DISubroutineType(types: !928)
!928 = !{!92, !929}
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 32)
!930 = !{!931}
!931 = !DILocalVariable(name: "list", arg: 1, scope: !926, file: !351, line: 335, type: !929)
!932 = !DILocation(line: 335, column: 55, scope: !926)
!933 = !DILocation(line: 335, column: 92, scope: !926)
!934 = !DILocation(line: 335, column: 71, scope: !926)
!935 = !DILocation(line: 335, column: 98, scope: !926)
!936 = !DILocation(line: 335, column: 63, scope: !926)
!937 = distinct !DISubprogram(name: "sys_sflist_peek_head", scope: !351, file: !351, line: 255, type: !938, scopeLine: 256, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !940)
!938 = !DISubroutineType(types: !939)
!939 = !{!355, !929}
!940 = !{!941}
!941 = !DILocalVariable(name: "list", arg: 1, scope: !937, file: !351, line: 255, type: !929)
!942 = !DILocation(line: 255, column: 64, scope: !937)
!943 = !DILocation(line: 257, column: 9, scope: !937)
!944 = !DILocation(line: 257, column: 15, scope: !937)
!945 = !DILocation(line: 257, column: 2, scope: !937)
!946 = distinct !DISubprogram(name: "sys_dlist_init", scope: !99, file: !99, line: 203, type: !947, scopeLine: 204, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !950)
!947 = !DISubroutineType(types: !948)
!948 = !{null, !949}
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 32)
!950 = !{!951}
!951 = !DILocalVariable(name: "list", arg: 1, scope: !946, file: !99, line: 203, type: !949)
!952 = !DILocation(line: 203, column: 48, scope: !946)
!953 = !DILocation(line: 205, column: 30, scope: !946)
!954 = !DILocation(line: 205, column: 2, scope: !946)
!955 = !DILocation(line: 205, column: 8, scope: !946)
!956 = !DILocation(line: 205, column: 13, scope: !946)
!957 = !DILocation(line: 206, column: 30, scope: !946)
!958 = !DILocation(line: 206, column: 2, scope: !946)
!959 = !DILocation(line: 206, column: 8, scope: !946)
!960 = !DILocation(line: 206, column: 13, scope: !946)
!961 = !DILocation(line: 207, column: 1, scope: !946)
!962 = !DISubprogram(name: "z_thread_aligned_alloc", scope: !529, file: !529, line: 90, type: !963, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !207)
!963 = !DISubroutineType(types: !964)
!964 = !{!91, !532, !532}
!965 = distinct !DISubprogram(name: "sys_dlist_peek_head", scope: !99, file: !99, line: 303, type: !966, scopeLine: 304, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !968)
!966 = !DISubroutineType(types: !967)
!967 = !{!97, !949}
!968 = !{!969}
!969 = !DILocalVariable(name: "list", arg: 1, scope: !965, file: !99, line: 303, type: !949)
!970 = !DILocation(line: 303, column: 61, scope: !965)
!971 = !DILocation(line: 305, column: 28, scope: !965)
!972 = !DILocation(line: 305, column: 9, scope: !965)
!973 = !DILocation(line: 305, column: 49, scope: !965)
!974 = !DILocation(line: 305, column: 55, scope: !965)
!975 = !DILocation(line: 305, column: 2, scope: !965)
!976 = distinct !DISubprogram(name: "sys_dlist_is_empty", scope: !99, file: !99, line: 275, type: !977, scopeLine: 276, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !979)
!977 = !DISubroutineType(types: !978)
!978 = !{!92, !949}
!979 = !{!980}
!980 = !DILocalVariable(name: "list", arg: 1, scope: !976, file: !99, line: 275, type: !949)
!981 = !DILocation(line: 275, column: 53, scope: !976)
!982 = !DILocation(line: 277, column: 9, scope: !976)
!983 = !DILocation(line: 277, column: 15, scope: !976)
!984 = !DILocation(line: 277, column: 23, scope: !976)
!985 = !DILocation(line: 277, column: 20, scope: !976)
!986 = !DILocation(line: 277, column: 2, scope: !976)
