; ModuleID = '../bc_files/rb.bc'
source_filename = "/home/sri/zephyrproject/zephyr/lib/os/rb.c"
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
%struct.rbtree = type { ptr, ptr, i32 }
%struct.rbnode = type { [2 x ptr] }
%struct._rb_foreach = type { ptr, ptr, i32 }

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_k_object_access_grant(ptr noundef %0, ptr noundef %1) #0 !dbg !115 {
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
define hidden ptr @z_rb_get_minmax(ptr noundef %0, i8 noundef zeroext %1) #0 !dbg !410 {
  %3 = alloca ptr, align 4
  %4 = alloca i8, align 1
  %5 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !424, metadata !DIExpression()), !dbg !425
  store i8 %1, ptr %4, align 1
  call void @llvm.dbg.declare(metadata ptr %4, metadata !426, metadata !DIExpression()), !dbg !427
  call void @llvm.dbg.declare(metadata ptr %5, metadata !428, metadata !DIExpression()), !dbg !429
  %6 = load ptr, ptr %3, align 4, !dbg !430
  %7 = getelementptr inbounds %struct.rbtree, ptr %6, i32 0, i32 0, !dbg !432
  %8 = load ptr, ptr %7, align 4, !dbg !432
  store ptr %8, ptr %5, align 4, !dbg !433
  br label %9, !dbg !434

9:                                                ; preds = %20, %2
  %10 = load ptr, ptr %5, align 4, !dbg !435
  %11 = icmp ne ptr %10, null, !dbg !437
  br i1 %11, label %12, label %17, !dbg !438

12:                                               ; preds = %9
  %13 = load ptr, ptr %5, align 4, !dbg !439
  %14 = load i8, ptr %4, align 1, !dbg !440
  %15 = call ptr @get_child(ptr noundef %13, i8 noundef zeroext %14), !dbg !441
  %16 = icmp ne ptr %15, null, !dbg !442
  br label %17

17:                                               ; preds = %12, %9
  %18 = phi i1 [ false, %9 ], [ %16, %12 ], !dbg !443
  br i1 %18, label %19, label %24, !dbg !444

19:                                               ; preds = %17
  br label %20, !dbg !445

20:                                               ; preds = %19
  %21 = load ptr, ptr %5, align 4, !dbg !447
  %22 = load i8, ptr %4, align 1, !dbg !448
  %23 = call ptr @get_child(ptr noundef %21, i8 noundef zeroext %22), !dbg !449
  store ptr %23, ptr %5, align 4, !dbg !450
  br label %9, !dbg !451, !llvm.loop !452

24:                                               ; preds = %17
  %25 = load ptr, ptr %5, align 4, !dbg !454
  ret ptr %25, !dbg !455
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone
define internal ptr @get_child(ptr noundef %0, i8 noundef zeroext %1) #0 !dbg !456 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !459, metadata !DIExpression()), !dbg !460
  store i8 %1, ptr %5, align 1
  call void @llvm.dbg.declare(metadata ptr %5, metadata !461, metadata !DIExpression()), !dbg !462
  %7 = load i8, ptr %5, align 1, !dbg !463
  %8 = zext i8 %7 to i32, !dbg !463
  %9 = icmp ne i32 %8, 0, !dbg !465
  br i1 %9, label %10, label %15, !dbg !466

10:                                               ; preds = %2
  %11 = load ptr, ptr %4, align 4, !dbg !467
  %12 = getelementptr inbounds %struct.rbnode, ptr %11, i32 0, i32 0, !dbg !469
  %13 = getelementptr inbounds [2 x ptr], ptr %12, i32 0, i32 1, !dbg !467
  %14 = load ptr, ptr %13, align 4, !dbg !467
  store ptr %14, ptr %3, align 4, !dbg !470
  br label %25, !dbg !470

15:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata ptr %6, metadata !471, metadata !DIExpression()), !dbg !472
  %16 = load ptr, ptr %4, align 4, !dbg !473
  %17 = getelementptr inbounds %struct.rbnode, ptr %16, i32 0, i32 0, !dbg !474
  %18 = getelementptr inbounds [2 x ptr], ptr %17, i32 0, i32 0, !dbg !473
  %19 = load ptr, ptr %18, align 4, !dbg !473
  %20 = ptrtoint ptr %19 to i32, !dbg !475
  store i32 %20, ptr %6, align 4, !dbg !472
  %21 = load i32, ptr %6, align 4, !dbg !476
  %22 = and i32 %21, -2, !dbg !476
  store i32 %22, ptr %6, align 4, !dbg !476
  %23 = load i32, ptr %6, align 4, !dbg !477
  %24 = inttoptr i32 %23 to ptr, !dbg !478
  store ptr %24, ptr %3, align 4, !dbg !479
  br label %25, !dbg !479

25:                                               ; preds = %15, %10
  %26 = load ptr, ptr %3, align 4, !dbg !480
  ret ptr %26, !dbg !480
}

; Function Attrs: noinline nounwind optnone
define hidden void @rb_insert(ptr noundef %0, ptr noundef %1) #0 !dbg !481 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 4
  %9 = alloca i8, align 1
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !484, metadata !DIExpression()), !dbg !485
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !486, metadata !DIExpression()), !dbg !487
  %10 = load ptr, ptr %4, align 4, !dbg !488
  call void @set_child(ptr noundef %10, i8 noundef zeroext 0, ptr noundef null), !dbg !489
  %11 = load ptr, ptr %4, align 4, !dbg !490
  call void @set_child(ptr noundef %11, i8 noundef zeroext 1, ptr noundef null), !dbg !491
  %12 = load ptr, ptr %3, align 4, !dbg !492
  %13 = getelementptr inbounds %struct.rbtree, ptr %12, i32 0, i32 0, !dbg !494
  %14 = load ptr, ptr %13, align 4, !dbg !494
  %15 = icmp eq ptr %14, null, !dbg !495
  br i1 %15, label %16, label %23, !dbg !496

16:                                               ; preds = %2
  %17 = load ptr, ptr %4, align 4, !dbg !497
  %18 = load ptr, ptr %3, align 4, !dbg !499
  %19 = getelementptr inbounds %struct.rbtree, ptr %18, i32 0, i32 0, !dbg !500
  store ptr %17, ptr %19, align 4, !dbg !501
  %20 = load ptr, ptr %3, align 4, !dbg !502
  %21 = getelementptr inbounds %struct.rbtree, ptr %20, i32 0, i32 2, !dbg !503
  store i32 1, ptr %21, align 4, !dbg !504
  %22 = load ptr, ptr %4, align 4, !dbg !505
  call void @set_color(ptr noundef %22, i8 noundef zeroext 1), !dbg !506
  br label %70, !dbg !507

23:                                               ; preds = %2
  %24 = load ptr, ptr %3, align 4, !dbg !508
  %25 = getelementptr inbounds %struct.rbtree, ptr %24, i32 0, i32 2, !dbg !509
  %26 = load i32, ptr %25, align 4, !dbg !509
  %27 = add nsw i32 %26, 1, !dbg !510
  %28 = call ptr @llvm.stacksave(), !dbg !511
  store ptr %28, ptr %5, align 4, !dbg !511
  %29 = alloca ptr, i32 %27, align 4, !dbg !511
  store i32 %27, ptr %6, align 4, !dbg !511
  call void @llvm.dbg.declare(metadata ptr %6, metadata !512, metadata !DIExpression()), !dbg !513
  call void @llvm.dbg.declare(metadata ptr %29, metadata !514, metadata !DIExpression()), !dbg !518
  call void @llvm.dbg.declare(metadata ptr %7, metadata !519, metadata !DIExpression()), !dbg !520
  %30 = load ptr, ptr %3, align 4, !dbg !521
  %31 = load ptr, ptr %4, align 4, !dbg !522
  %32 = call i32 @find_and_stack(ptr noundef %30, ptr noundef %31, ptr noundef %29), !dbg !523
  store i32 %32, ptr %7, align 4, !dbg !520
  call void @llvm.dbg.declare(metadata ptr %8, metadata !524, metadata !DIExpression()), !dbg !525
  %33 = load i32, ptr %7, align 4, !dbg !526
  %34 = sub nsw i32 %33, 1, !dbg !527
  %35 = getelementptr inbounds ptr, ptr %29, i32 %34, !dbg !528
  %36 = load ptr, ptr %35, align 4, !dbg !528
  store ptr %36, ptr %8, align 4, !dbg !525
  call void @llvm.dbg.declare(metadata ptr %9, metadata !529, metadata !DIExpression()), !dbg !530
  %37 = load ptr, ptr %3, align 4, !dbg !531
  %38 = getelementptr inbounds %struct.rbtree, ptr %37, i32 0, i32 1, !dbg !532
  %39 = load ptr, ptr %38, align 4, !dbg !532
  %40 = load ptr, ptr %4, align 4, !dbg !533
  %41 = load ptr, ptr %8, align 4, !dbg !534
  %42 = call zeroext i1 %39(ptr noundef %40, ptr noundef %41), !dbg !531
  %43 = zext i1 %42 to i64, !dbg !531
  %44 = select i1 %42, i32 0, i32 1, !dbg !531
  %45 = trunc i32 %44 to i8, !dbg !531
  store i8 %45, ptr %9, align 1, !dbg !530
  %46 = load ptr, ptr %8, align 4, !dbg !535
  %47 = load i8, ptr %9, align 1, !dbg !536
  %48 = load ptr, ptr %4, align 4, !dbg !537
  call void @set_child(ptr noundef %46, i8 noundef zeroext %47, ptr noundef %48), !dbg !538
  %49 = load ptr, ptr %4, align 4, !dbg !539
  call void @set_color(ptr noundef %49, i8 noundef zeroext 0), !dbg !540
  %50 = load ptr, ptr %4, align 4, !dbg !541
  %51 = load i32, ptr %7, align 4, !dbg !542
  %52 = add nsw i32 %51, 1, !dbg !542
  store i32 %52, ptr %7, align 4, !dbg !542
  %53 = getelementptr inbounds ptr, ptr %29, i32 %51, !dbg !543
  store ptr %50, ptr %53, align 4, !dbg !544
  %54 = load i32, ptr %7, align 4, !dbg !545
  call void @fix_extra_red(ptr noundef %29, i32 noundef %54), !dbg !546
  %55 = load i32, ptr %7, align 4, !dbg !547
  %56 = load ptr, ptr %3, align 4, !dbg !549
  %57 = getelementptr inbounds %struct.rbtree, ptr %56, i32 0, i32 2, !dbg !550
  %58 = load i32, ptr %57, align 4, !dbg !550
  %59 = icmp sgt i32 %55, %58, !dbg !551
  br i1 %59, label %60, label %64, !dbg !552

60:                                               ; preds = %23
  %61 = load i32, ptr %7, align 4, !dbg !553
  %62 = load ptr, ptr %3, align 4, !dbg !555
  %63 = getelementptr inbounds %struct.rbtree, ptr %62, i32 0, i32 2, !dbg !556
  store i32 %61, ptr %63, align 4, !dbg !557
  br label %64, !dbg !558

64:                                               ; preds = %60, %23
  %65 = getelementptr inbounds ptr, ptr %29, i32 0, !dbg !559
  %66 = load ptr, ptr %65, align 4, !dbg !559
  %67 = load ptr, ptr %3, align 4, !dbg !560
  %68 = getelementptr inbounds %struct.rbtree, ptr %67, i32 0, i32 0, !dbg !561
  store ptr %66, ptr %68, align 4, !dbg !562
  %69 = load ptr, ptr %5, align 4, !dbg !563
  call void @llvm.stackrestore(ptr %69), !dbg !563
  br label %70, !dbg !563

70:                                               ; preds = %64, %16
  ret void, !dbg !563
}

; Function Attrs: noinline nounwind optnone
define internal void @set_child(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2) #0 !dbg !564 {
  %4 = alloca ptr, align 4
  %5 = alloca i8, align 1
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !567, metadata !DIExpression()), !dbg !568
  store i8 %1, ptr %5, align 1
  call void @llvm.dbg.declare(metadata ptr %5, metadata !569, metadata !DIExpression()), !dbg !570
  store ptr %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !571, metadata !DIExpression()), !dbg !572
  %9 = load i8, ptr %5, align 1, !dbg !573
  %10 = zext i8 %9 to i32, !dbg !573
  %11 = icmp ne i32 %10, 0, !dbg !575
  br i1 %11, label %12, label %17, !dbg !576

12:                                               ; preds = %3
  %13 = load ptr, ptr %6, align 4, !dbg !577
  %14 = load ptr, ptr %4, align 4, !dbg !579
  %15 = getelementptr inbounds %struct.rbnode, ptr %14, i32 0, i32 0, !dbg !580
  %16 = getelementptr inbounds [2 x ptr], ptr %15, i32 0, i32 1, !dbg !579
  store ptr %13, ptr %16, align 4, !dbg !581
  br label %33, !dbg !582

17:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata ptr %7, metadata !583, metadata !DIExpression()), !dbg !585
  %18 = load ptr, ptr %4, align 4, !dbg !586
  %19 = getelementptr inbounds %struct.rbnode, ptr %18, i32 0, i32 0, !dbg !587
  %20 = getelementptr inbounds [2 x ptr], ptr %19, i32 0, i32 0, !dbg !586
  %21 = load ptr, ptr %20, align 4, !dbg !586
  %22 = ptrtoint ptr %21 to i32, !dbg !588
  store i32 %22, ptr %7, align 4, !dbg !585
  call void @llvm.dbg.declare(metadata ptr %8, metadata !589, metadata !DIExpression()), !dbg !590
  %23 = load ptr, ptr %6, align 4, !dbg !591
  %24 = ptrtoint ptr %23 to i32, !dbg !592
  store i32 %24, ptr %8, align 4, !dbg !590
  %25 = load i32, ptr %8, align 4, !dbg !593
  %26 = load i32, ptr %7, align 4, !dbg !594
  %27 = and i32 %26, 1, !dbg !595
  %28 = or i32 %25, %27, !dbg !596
  %29 = inttoptr i32 %28 to ptr, !dbg !597
  %30 = load ptr, ptr %4, align 4, !dbg !598
  %31 = getelementptr inbounds %struct.rbnode, ptr %30, i32 0, i32 0, !dbg !599
  %32 = getelementptr inbounds [2 x ptr], ptr %31, i32 0, i32 0, !dbg !598
  store ptr %29, ptr %32, align 4, !dbg !600
  br label %33

33:                                               ; preds = %17, %12
  ret void, !dbg !601
}

; Function Attrs: noinline nounwind optnone
define internal void @set_color(ptr noundef %0, i8 noundef zeroext %1) #0 !dbg !602 {
  %3 = alloca ptr, align 4
  %4 = alloca i8, align 1
  %5 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !605, metadata !DIExpression()), !dbg !606
  store i8 %1, ptr %4, align 1
  call void @llvm.dbg.declare(metadata ptr %4, metadata !607, metadata !DIExpression()), !dbg !608
  call void @llvm.dbg.declare(metadata ptr %5, metadata !609, metadata !DIExpression()), !dbg !611
  %6 = load ptr, ptr %3, align 4, !dbg !612
  %7 = getelementptr inbounds %struct.rbnode, ptr %6, i32 0, i32 0, !dbg !613
  %8 = getelementptr inbounds [2 x ptr], ptr %7, i32 0, i32 0, !dbg !612
  store ptr %8, ptr %5, align 4, !dbg !611
  %9 = load ptr, ptr %5, align 4, !dbg !614
  %10 = load i32, ptr %9, align 4, !dbg !615
  %11 = and i32 %10, -2, !dbg !616
  %12 = load i8, ptr %4, align 1, !dbg !617
  %13 = zext i8 %12 to i32, !dbg !618
  %14 = or i32 %11, %13, !dbg !619
  %15 = load ptr, ptr %5, align 4, !dbg !620
  store i32 %14, ptr %15, align 4, !dbg !621
  ret void, !dbg !622
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave() #2

; Function Attrs: noinline nounwind optnone
define internal i32 @find_and_stack(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !623 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !627, metadata !DIExpression()), !dbg !628
  store ptr %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !629, metadata !DIExpression()), !dbg !630
  store ptr %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !631, metadata !DIExpression()), !dbg !632
  call void @llvm.dbg.declare(metadata ptr %7, metadata !633, metadata !DIExpression()), !dbg !634
  store i32 0, ptr %7, align 4, !dbg !634
  %10 = load ptr, ptr %4, align 4, !dbg !635
  %11 = getelementptr inbounds %struct.rbtree, ptr %10, i32 0, i32 0, !dbg !636
  %12 = load ptr, ptr %11, align 4, !dbg !636
  %13 = load ptr, ptr %6, align 4, !dbg !637
  %14 = load i32, ptr %7, align 4, !dbg !638
  %15 = add nsw i32 %14, 1, !dbg !638
  store i32 %15, ptr %7, align 4, !dbg !638
  %16 = getelementptr inbounds ptr, ptr %13, i32 %14, !dbg !637
  store ptr %12, ptr %16, align 4, !dbg !639
  br label %17, !dbg !640

17:                                               ; preds = %55, %3
  %18 = load ptr, ptr %6, align 4, !dbg !641
  %19 = load i32, ptr %7, align 4, !dbg !642
  %20 = sub nsw i32 %19, 1, !dbg !643
  %21 = getelementptr inbounds ptr, ptr %18, i32 %20, !dbg !641
  %22 = load ptr, ptr %21, align 4, !dbg !641
  %23 = load ptr, ptr %5, align 4, !dbg !644
  %24 = icmp ne ptr %22, %23, !dbg !645
  br i1 %24, label %25, label %56, !dbg !640

25:                                               ; preds = %17
  call void @llvm.dbg.declare(metadata ptr %8, metadata !646, metadata !DIExpression()), !dbg !648
  %26 = load ptr, ptr %4, align 4, !dbg !649
  %27 = getelementptr inbounds %struct.rbtree, ptr %26, i32 0, i32 1, !dbg !650
  %28 = load ptr, ptr %27, align 4, !dbg !650
  %29 = load ptr, ptr %5, align 4, !dbg !651
  %30 = load ptr, ptr %6, align 4, !dbg !652
  %31 = load i32, ptr %7, align 4, !dbg !653
  %32 = sub nsw i32 %31, 1, !dbg !654
  %33 = getelementptr inbounds ptr, ptr %30, i32 %32, !dbg !652
  %34 = load ptr, ptr %33, align 4, !dbg !652
  %35 = call zeroext i1 %28(ptr noundef %29, ptr noundef %34), !dbg !649
  %36 = zext i1 %35 to i64, !dbg !649
  %37 = select i1 %35, i32 0, i32 1, !dbg !649
  %38 = trunc i32 %37 to i8, !dbg !649
  store i8 %38, ptr %8, align 1, !dbg !648
  call void @llvm.dbg.declare(metadata ptr %9, metadata !655, metadata !DIExpression()), !dbg !656
  %39 = load ptr, ptr %6, align 4, !dbg !657
  %40 = load i32, ptr %7, align 4, !dbg !658
  %41 = sub nsw i32 %40, 1, !dbg !659
  %42 = getelementptr inbounds ptr, ptr %39, i32 %41, !dbg !657
  %43 = load ptr, ptr %42, align 4, !dbg !657
  %44 = load i8, ptr %8, align 1, !dbg !660
  %45 = call ptr @get_child(ptr noundef %43, i8 noundef zeroext %44), !dbg !661
  store ptr %45, ptr %9, align 4, !dbg !656
  %46 = load ptr, ptr %9, align 4, !dbg !662
  %47 = icmp ne ptr %46, null, !dbg !664
  br i1 %47, label %48, label %54, !dbg !665

48:                                               ; preds = %25
  %49 = load ptr, ptr %9, align 4, !dbg !666
  %50 = load ptr, ptr %6, align 4, !dbg !668
  %51 = load i32, ptr %7, align 4, !dbg !669
  %52 = add nsw i32 %51, 1, !dbg !669
  store i32 %52, ptr %7, align 4, !dbg !669
  %53 = getelementptr inbounds ptr, ptr %50, i32 %51, !dbg !668
  store ptr %49, ptr %53, align 4, !dbg !670
  br label %55, !dbg !671

54:                                               ; preds = %25
  br label %56, !dbg !672

55:                                               ; preds = %48
  br label %17, !dbg !640, !llvm.loop !674

56:                                               ; preds = %54, %17
  %57 = load i32, ptr %7, align 4, !dbg !676
  ret i32 %57, !dbg !677
}

; Function Attrs: noinline nounwind optnone
define internal void @fix_extra_red(ptr noundef %0, i32 noundef %1) #0 !dbg !678 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca i8, align 1
  %9 = alloca ptr, align 4
  %10 = alloca i8, align 1
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !681, metadata !DIExpression()), !dbg !682
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !683, metadata !DIExpression()), !dbg !684
  br label %11, !dbg !685

11:                                               ; preds = %50, %2
  %12 = load i32, ptr %4, align 4, !dbg !686
  %13 = icmp sgt i32 %12, 1, !dbg !687
  br i1 %13, label %14, label %82, !dbg !685

14:                                               ; preds = %11
  call void @llvm.dbg.declare(metadata ptr %5, metadata !688, metadata !DIExpression()), !dbg !690
  %15 = load ptr, ptr %3, align 4, !dbg !691
  %16 = load i32, ptr %4, align 4, !dbg !692
  %17 = sub nsw i32 %16, 1, !dbg !693
  %18 = getelementptr inbounds ptr, ptr %15, i32 %17, !dbg !691
  %19 = load ptr, ptr %18, align 4, !dbg !691
  store ptr %19, ptr %5, align 4, !dbg !690
  call void @llvm.dbg.declare(metadata ptr %6, metadata !694, metadata !DIExpression()), !dbg !695
  %20 = load ptr, ptr %3, align 4, !dbg !696
  %21 = load i32, ptr %4, align 4, !dbg !697
  %22 = sub nsw i32 %21, 2, !dbg !698
  %23 = getelementptr inbounds ptr, ptr %20, i32 %22, !dbg !696
  %24 = load ptr, ptr %23, align 4, !dbg !696
  store ptr %24, ptr %6, align 4, !dbg !695
  %25 = load ptr, ptr %6, align 4, !dbg !699
  %26 = call zeroext i1 @is_black(ptr noundef %25), !dbg !701
  br i1 %26, label %27, label %28, !dbg !702

27:                                               ; preds = %14
  br label %86, !dbg !703

28:                                               ; preds = %14
  call void @llvm.dbg.declare(metadata ptr %7, metadata !705, metadata !DIExpression()), !dbg !706
  %29 = load ptr, ptr %3, align 4, !dbg !707
  %30 = load i32, ptr %4, align 4, !dbg !708
  %31 = sub nsw i32 %30, 3, !dbg !709
  %32 = getelementptr inbounds ptr, ptr %29, i32 %31, !dbg !707
  %33 = load ptr, ptr %32, align 4, !dbg !707
  store ptr %33, ptr %7, align 4, !dbg !706
  call void @llvm.dbg.declare(metadata ptr %8, metadata !710, metadata !DIExpression()), !dbg !711
  %34 = load ptr, ptr %7, align 4, !dbg !712
  %35 = load ptr, ptr %6, align 4, !dbg !713
  %36 = call zeroext i8 @get_side(ptr noundef %34, ptr noundef %35), !dbg !714
  store i8 %36, ptr %8, align 1, !dbg !711
  call void @llvm.dbg.declare(metadata ptr %9, metadata !715, metadata !DIExpression()), !dbg !716
  %37 = load ptr, ptr %7, align 4, !dbg !717
  %38 = load i8, ptr %8, align 1, !dbg !718
  %39 = zext i8 %38 to i32, !dbg !718
  %40 = icmp eq i32 %39, 0, !dbg !719
  %41 = zext i1 %40 to i64, !dbg !720
  %42 = select i1 %40, i32 1, i32 0, !dbg !720
  %43 = trunc i32 %42 to i8, !dbg !720
  %44 = call ptr @get_child(ptr noundef %37, i8 noundef zeroext %43), !dbg !721
  store ptr %44, ptr %9, align 4, !dbg !716
  %45 = load ptr, ptr %9, align 4, !dbg !722
  %46 = icmp ne ptr %45, null, !dbg !724
  br i1 %46, label %47, label %56, !dbg !725

47:                                               ; preds = %28
  %48 = load ptr, ptr %9, align 4, !dbg !726
  %49 = call zeroext i1 @is_red(ptr noundef %48), !dbg !727
  br i1 %49, label %50, label %56, !dbg !728

50:                                               ; preds = %47
  %51 = load ptr, ptr %7, align 4, !dbg !729
  call void @set_color(ptr noundef %51, i8 noundef zeroext 0), !dbg !731
  %52 = load ptr, ptr %6, align 4, !dbg !732
  call void @set_color(ptr noundef %52, i8 noundef zeroext 1), !dbg !733
  %53 = load ptr, ptr %9, align 4, !dbg !734
  call void @set_color(ptr noundef %53, i8 noundef zeroext 1), !dbg !735
  %54 = load i32, ptr %4, align 4, !dbg !736
  %55 = sub nsw i32 %54, 2, !dbg !736
  store i32 %55, ptr %4, align 4, !dbg !736
  br label %11, !dbg !737, !llvm.loop !738

56:                                               ; preds = %47, %28
  call void @llvm.dbg.declare(metadata ptr %10, metadata !740, metadata !DIExpression()), !dbg !741
  %57 = load ptr, ptr %6, align 4, !dbg !742
  %58 = load ptr, ptr %5, align 4, !dbg !743
  %59 = call zeroext i8 @get_side(ptr noundef %57, ptr noundef %58), !dbg !744
  store i8 %59, ptr %10, align 1, !dbg !741
  %60 = load i8, ptr %10, align 1, !dbg !745
  %61 = zext i8 %60 to i32, !dbg !745
  %62 = load i8, ptr %8, align 1, !dbg !747
  %63 = zext i8 %62 to i32, !dbg !747
  %64 = icmp ne i32 %61, %63, !dbg !748
  br i1 %64, label %65, label %68, !dbg !749

65:                                               ; preds = %56
  %66 = load ptr, ptr %3, align 4, !dbg !750
  %67 = load i32, ptr %4, align 4, !dbg !752
  call void @rotate(ptr noundef %66, i32 noundef %67), !dbg !753
  br label %68, !dbg !754

68:                                               ; preds = %65, %56
  %69 = load ptr, ptr %3, align 4, !dbg !755
  %70 = load i32, ptr %4, align 4, !dbg !756
  %71 = sub nsw i32 %70, 1, !dbg !757
  call void @rotate(ptr noundef %69, i32 noundef %71), !dbg !758
  %72 = load ptr, ptr %3, align 4, !dbg !759
  %73 = load i32, ptr %4, align 4, !dbg !760
  %74 = sub nsw i32 %73, 3, !dbg !761
  %75 = getelementptr inbounds ptr, ptr %72, i32 %74, !dbg !759
  %76 = load ptr, ptr %75, align 4, !dbg !759
  call void @set_color(ptr noundef %76, i8 noundef zeroext 1), !dbg !762
  %77 = load ptr, ptr %3, align 4, !dbg !763
  %78 = load i32, ptr %4, align 4, !dbg !764
  %79 = sub nsw i32 %78, 2, !dbg !765
  %80 = getelementptr inbounds ptr, ptr %77, i32 %79, !dbg !763
  %81 = load ptr, ptr %80, align 4, !dbg !763
  call void @set_color(ptr noundef %81, i8 noundef zeroext 0), !dbg !766
  br label %86, !dbg !767

82:                                               ; preds = %11
  %83 = load ptr, ptr %3, align 4, !dbg !768
  %84 = getelementptr inbounds ptr, ptr %83, i32 0, !dbg !768
  %85 = load ptr, ptr %84, align 4, !dbg !768
  call void @set_color(ptr noundef %85, i8 noundef zeroext 1), !dbg !769
  br label %86, !dbg !770

86:                                               ; preds = %82, %68, %27
  ret void, !dbg !770
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore(ptr) #2

; Function Attrs: noinline nounwind optnone
define hidden void @rb_remove(ptr noundef %0, ptr noundef %1) #0 !dbg !771 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 4
  %12 = alloca ptr, align 4
  %13 = alloca ptr, align 4
  %14 = alloca i8, align 1
  %15 = alloca ptr, align 4
  %16 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !772, metadata !DIExpression()), !dbg !773
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !774, metadata !DIExpression()), !dbg !775
  call void @llvm.dbg.declare(metadata ptr %5, metadata !776, metadata !DIExpression()), !dbg !777
  %17 = load ptr, ptr %3, align 4, !dbg !778
  %18 = getelementptr inbounds %struct.rbtree, ptr %17, i32 0, i32 2, !dbg !779
  %19 = load i32, ptr %18, align 4, !dbg !779
  %20 = add nsw i32 %19, 1, !dbg !780
  %21 = call ptr @llvm.stacksave(), !dbg !781
  store ptr %21, ptr %6, align 4, !dbg !781
  %22 = alloca ptr, i32 %20, align 4, !dbg !781
  store i32 %20, ptr %7, align 4, !dbg !781
  call void @llvm.dbg.declare(metadata ptr %7, metadata !782, metadata !DIExpression()), !dbg !783
  call void @llvm.dbg.declare(metadata ptr %22, metadata !784, metadata !DIExpression()), !dbg !788
  call void @llvm.dbg.declare(metadata ptr %8, metadata !789, metadata !DIExpression()), !dbg !790
  %23 = load ptr, ptr %3, align 4, !dbg !791
  %24 = load ptr, ptr %4, align 4, !dbg !792
  %25 = call i32 @find_and_stack(ptr noundef %23, ptr noundef %24, ptr noundef %22), !dbg !793
  store i32 %25, ptr %8, align 4, !dbg !790
  %26 = load ptr, ptr %4, align 4, !dbg !794
  %27 = load i32, ptr %8, align 4, !dbg !796
  %28 = sub nsw i32 %27, 1, !dbg !797
  %29 = getelementptr inbounds ptr, ptr %22, i32 %28, !dbg !798
  %30 = load ptr, ptr %29, align 4, !dbg !798
  %31 = icmp ne ptr %26, %30, !dbg !799
  br i1 %31, label %32, label %33, !dbg !800

32:                                               ; preds = %2
  store i32 1, ptr %9, align 4
  br label %198, !dbg !801

33:                                               ; preds = %2
  %34 = load ptr, ptr %4, align 4, !dbg !803
  %35 = call ptr @get_child(ptr noundef %34, i8 noundef zeroext 0), !dbg !805
  %36 = icmp ne ptr %35, null, !dbg !806
  br i1 %36, label %37, label %137, !dbg !807

37:                                               ; preds = %33
  %38 = load ptr, ptr %4, align 4, !dbg !808
  %39 = call ptr @get_child(ptr noundef %38, i8 noundef zeroext 1), !dbg !809
  %40 = icmp ne ptr %39, null, !dbg !810
  br i1 %40, label %41, label %137, !dbg !811

41:                                               ; preds = %37
  call void @llvm.dbg.declare(metadata ptr %10, metadata !812, metadata !DIExpression()), !dbg !814
  %42 = load i32, ptr %8, align 4, !dbg !815
  store i32 %42, ptr %10, align 4, !dbg !814
  call void @llvm.dbg.declare(metadata ptr %11, metadata !816, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.declare(metadata ptr %12, metadata !818, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.declare(metadata ptr %13, metadata !820, metadata !DIExpression()), !dbg !821
  %43 = load ptr, ptr %4, align 4, !dbg !822
  %44 = call ptr @get_child(ptr noundef %43, i8 noundef zeroext 0), !dbg !823
  store ptr %44, ptr %13, align 4, !dbg !821
  %45 = load i32, ptr %8, align 4, !dbg !824
  %46 = icmp sgt i32 %45, 1, !dbg !825
  br i1 %46, label %47, label %52, !dbg !826

47:                                               ; preds = %41
  %48 = load i32, ptr %8, align 4, !dbg !827
  %49 = sub nsw i32 %48, 2, !dbg !828
  %50 = getelementptr inbounds ptr, ptr %22, i32 %49, !dbg !829
  %51 = load ptr, ptr %50, align 4, !dbg !829
  br label %53, !dbg !826

52:                                               ; preds = %41
  br label %53, !dbg !826

53:                                               ; preds = %52, %47
  %54 = phi ptr [ %51, %47 ], [ null, %52 ], !dbg !826
  store ptr %54, ptr %11, align 4, !dbg !830
  %55 = load ptr, ptr %13, align 4, !dbg !831
  %56 = load i32, ptr %8, align 4, !dbg !832
  %57 = add nsw i32 %56, 1, !dbg !832
  store i32 %57, ptr %8, align 4, !dbg !832
  %58 = getelementptr inbounds ptr, ptr %22, i32 %56, !dbg !833
  store ptr %55, ptr %58, align 4, !dbg !834
  br label %59, !dbg !835

59:                                               ; preds = %63, %53
  %60 = load ptr, ptr %13, align 4, !dbg !836
  %61 = call ptr @get_child(ptr noundef %60, i8 noundef zeroext 1), !dbg !837
  %62 = icmp ne ptr %61, null, !dbg !838
  br i1 %62, label %63, label %70, !dbg !835

63:                                               ; preds = %59
  %64 = load ptr, ptr %13, align 4, !dbg !839
  %65 = call ptr @get_child(ptr noundef %64, i8 noundef zeroext 1), !dbg !841
  store ptr %65, ptr %13, align 4, !dbg !842
  %66 = load ptr, ptr %13, align 4, !dbg !843
  %67 = load i32, ptr %8, align 4, !dbg !844
  %68 = add nsw i32 %67, 1, !dbg !844
  store i32 %68, ptr %8, align 4, !dbg !844
  %69 = getelementptr inbounds ptr, ptr %22, i32 %67, !dbg !845
  store ptr %66, ptr %69, align 4, !dbg !846
  br label %59, !dbg !835, !llvm.loop !847

70:                                               ; preds = %59
  %71 = load i32, ptr %8, align 4, !dbg !849
  %72 = sub nsw i32 %71, 2, !dbg !850
  %73 = getelementptr inbounds ptr, ptr %22, i32 %72, !dbg !851
  %74 = load ptr, ptr %73, align 4, !dbg !851
  store ptr %74, ptr %12, align 4, !dbg !852
  %75 = load ptr, ptr %11, align 4, !dbg !853
  %76 = icmp ne ptr %75, null, !dbg !855
  br i1 %76, label %77, label %83, !dbg !856

77:                                               ; preds = %70
  %78 = load ptr, ptr %11, align 4, !dbg !857
  %79 = load ptr, ptr %11, align 4, !dbg !859
  %80 = load ptr, ptr %4, align 4, !dbg !860
  %81 = call zeroext i8 @get_side(ptr noundef %79, ptr noundef %80), !dbg !861
  %82 = load ptr, ptr %13, align 4, !dbg !862
  call void @set_child(ptr noundef %78, i8 noundef zeroext %81, ptr noundef %82), !dbg !863
  br label %87, !dbg !864

83:                                               ; preds = %70
  %84 = load ptr, ptr %13, align 4, !dbg !865
  %85 = load ptr, ptr %3, align 4, !dbg !867
  %86 = getelementptr inbounds %struct.rbtree, ptr %85, i32 0, i32 0, !dbg !868
  store ptr %84, ptr %86, align 4, !dbg !869
  br label %87

87:                                               ; preds = %83, %77
  %88 = load ptr, ptr %12, align 4, !dbg !870
  %89 = load ptr, ptr %4, align 4, !dbg !872
  %90 = icmp eq ptr %88, %89, !dbg !873
  br i1 %90, label %91, label %97, !dbg !874

91:                                               ; preds = %87
  %92 = load ptr, ptr %4, align 4, !dbg !875
  %93 = load ptr, ptr %13, align 4, !dbg !877
  %94 = call ptr @get_child(ptr noundef %93, i8 noundef zeroext 0), !dbg !878
  call void @set_child(ptr noundef %92, i8 noundef zeroext 0, ptr noundef %94), !dbg !879
  %95 = load ptr, ptr %13, align 4, !dbg !880
  %96 = load ptr, ptr %4, align 4, !dbg !881
  call void @set_child(ptr noundef %95, i8 noundef zeroext 0, ptr noundef %96), !dbg !882
  br label %110, !dbg !883

97:                                               ; preds = %87
  %98 = load ptr, ptr %12, align 4, !dbg !884
  %99 = load ptr, ptr %12, align 4, !dbg !886
  %100 = load ptr, ptr %13, align 4, !dbg !887
  %101 = call zeroext i8 @get_side(ptr noundef %99, ptr noundef %100), !dbg !888
  %102 = load ptr, ptr %4, align 4, !dbg !889
  call void @set_child(ptr noundef %98, i8 noundef zeroext %101, ptr noundef %102), !dbg !890
  %103 = load ptr, ptr %4, align 4, !dbg !891
  %104 = call ptr @get_child(ptr noundef %103, i8 noundef zeroext 0), !dbg !892
  store ptr %104, ptr %5, align 4, !dbg !893
  %105 = load ptr, ptr %4, align 4, !dbg !894
  %106 = load ptr, ptr %13, align 4, !dbg !895
  %107 = call ptr @get_child(ptr noundef %106, i8 noundef zeroext 0), !dbg !896
  call void @set_child(ptr noundef %105, i8 noundef zeroext 0, ptr noundef %107), !dbg !897
  %108 = load ptr, ptr %13, align 4, !dbg !898
  %109 = load ptr, ptr %5, align 4, !dbg !899
  call void @set_child(ptr noundef %108, i8 noundef zeroext 0, ptr noundef %109), !dbg !900
  br label %110

110:                                              ; preds = %97, %91
  %111 = load ptr, ptr %13, align 4, !dbg !901
  %112 = load ptr, ptr %4, align 4, !dbg !902
  %113 = call ptr @get_child(ptr noundef %112, i8 noundef zeroext 1), !dbg !903
  call void @set_child(ptr noundef %111, i8 noundef zeroext 1, ptr noundef %113), !dbg !904
  %114 = load ptr, ptr %4, align 4, !dbg !905
  call void @set_child(ptr noundef %114, i8 noundef zeroext 1, ptr noundef null), !dbg !906
  %115 = load i32, ptr %10, align 4, !dbg !907
  %116 = sub nsw i32 %115, 1, !dbg !908
  %117 = getelementptr inbounds ptr, ptr %22, i32 %116, !dbg !909
  %118 = load ptr, ptr %117, align 4, !dbg !909
  store ptr %118, ptr %5, align 4, !dbg !910
  %119 = load i32, ptr %8, align 4, !dbg !911
  %120 = sub nsw i32 %119, 1, !dbg !912
  %121 = getelementptr inbounds ptr, ptr %22, i32 %120, !dbg !913
  %122 = load ptr, ptr %121, align 4, !dbg !913
  %123 = load i32, ptr %10, align 4, !dbg !914
  %124 = sub nsw i32 %123, 1, !dbg !915
  %125 = getelementptr inbounds ptr, ptr %22, i32 %124, !dbg !916
  store ptr %122, ptr %125, align 4, !dbg !917
  %126 = load ptr, ptr %5, align 4, !dbg !918
  %127 = load i32, ptr %8, align 4, !dbg !919
  %128 = sub nsw i32 %127, 1, !dbg !920
  %129 = getelementptr inbounds ptr, ptr %22, i32 %128, !dbg !921
  store ptr %126, ptr %129, align 4, !dbg !922
  call void @llvm.dbg.declare(metadata ptr %14, metadata !923, metadata !DIExpression()), !dbg !924
  %130 = load ptr, ptr %4, align 4, !dbg !925
  %131 = call zeroext i8 @get_color(ptr noundef %130), !dbg !926
  store i8 %131, ptr %14, align 1, !dbg !924
  %132 = load ptr, ptr %4, align 4, !dbg !927
  %133 = load ptr, ptr %13, align 4, !dbg !928
  %134 = call zeroext i8 @get_color(ptr noundef %133), !dbg !929
  call void @set_color(ptr noundef %132, i8 noundef zeroext %134), !dbg !930
  %135 = load ptr, ptr %13, align 4, !dbg !931
  %136 = load i8, ptr %14, align 1, !dbg !932
  call void @set_color(ptr noundef %135, i8 noundef zeroext %136), !dbg !933
  br label %137, !dbg !934

137:                                              ; preds = %110, %37, %33
  call void @llvm.dbg.declare(metadata ptr %15, metadata !935, metadata !DIExpression()), !dbg !936
  %138 = load ptr, ptr %4, align 4, !dbg !937
  %139 = call ptr @get_child(ptr noundef %138, i8 noundef zeroext 0), !dbg !938
  store ptr %139, ptr %15, align 4, !dbg !936
  %140 = load ptr, ptr %15, align 4, !dbg !939
  %141 = icmp eq ptr %140, null, !dbg !941
  br i1 %141, label %142, label %145, !dbg !942

142:                                              ; preds = %137
  %143 = load ptr, ptr %4, align 4, !dbg !943
  %144 = call ptr @get_child(ptr noundef %143, i8 noundef zeroext 1), !dbg !945
  store ptr %144, ptr %15, align 4, !dbg !946
  br label %145, !dbg !947

145:                                              ; preds = %142, %137
  %146 = load i32, ptr %8, align 4, !dbg !948
  %147 = icmp slt i32 %146, 2, !dbg !950
  br i1 %147, label %148, label %160, !dbg !951

148:                                              ; preds = %145
  %149 = load ptr, ptr %15, align 4, !dbg !952
  %150 = load ptr, ptr %3, align 4, !dbg !954
  %151 = getelementptr inbounds %struct.rbtree, ptr %150, i32 0, i32 0, !dbg !955
  store ptr %149, ptr %151, align 4, !dbg !956
  %152 = load ptr, ptr %15, align 4, !dbg !957
  %153 = icmp ne ptr %152, null, !dbg !959
  br i1 %153, label %154, label %156, !dbg !960

154:                                              ; preds = %148
  %155 = load ptr, ptr %15, align 4, !dbg !961
  call void @set_color(ptr noundef %155, i8 noundef zeroext 1), !dbg !963
  br label %159, !dbg !964

156:                                              ; preds = %148
  %157 = load ptr, ptr %3, align 4, !dbg !965
  %158 = getelementptr inbounds %struct.rbtree, ptr %157, i32 0, i32 2, !dbg !967
  store i32 0, ptr %158, align 4, !dbg !968
  br label %159

159:                                              ; preds = %156, %154
  store i32 1, ptr %9, align 4
  br label %198, !dbg !969

160:                                              ; preds = %145
  call void @llvm.dbg.declare(metadata ptr %16, metadata !970, metadata !DIExpression()), !dbg !971
  %161 = load i32, ptr %8, align 4, !dbg !972
  %162 = sub nsw i32 %161, 2, !dbg !973
  %163 = getelementptr inbounds ptr, ptr %22, i32 %162, !dbg !974
  %164 = load ptr, ptr %163, align 4, !dbg !974
  store ptr %164, ptr %16, align 4, !dbg !971
  %165 = load ptr, ptr %15, align 4, !dbg !975
  %166 = icmp eq ptr %165, null, !dbg !977
  br i1 %166, label %167, label %179, !dbg !978

167:                                              ; preds = %160
  %168 = load ptr, ptr %4, align 4, !dbg !979
  %169 = call zeroext i1 @is_black(ptr noundef %168), !dbg !982
  br i1 %169, label %170, label %173, !dbg !983

170:                                              ; preds = %167
  %171 = load i32, ptr %8, align 4, !dbg !984
  %172 = load ptr, ptr %4, align 4, !dbg !986
  call void @fix_missing_black(ptr noundef %22, i32 noundef %171, ptr noundef %172), !dbg !987
  br label %178, !dbg !988

173:                                              ; preds = %167
  %174 = load ptr, ptr %16, align 4, !dbg !989
  %175 = load ptr, ptr %16, align 4, !dbg !991
  %176 = load ptr, ptr %4, align 4, !dbg !992
  %177 = call zeroext i8 @get_side(ptr noundef %175, ptr noundef %176), !dbg !993
  call void @set_child(ptr noundef %174, i8 noundef zeroext %177, ptr noundef null), !dbg !994
  br label %178

178:                                              ; preds = %173, %170
  br label %193, !dbg !995

179:                                              ; preds = %160
  %180 = load ptr, ptr %16, align 4, !dbg !996
  %181 = load ptr, ptr %16, align 4, !dbg !998
  %182 = load ptr, ptr %4, align 4, !dbg !999
  %183 = call zeroext i8 @get_side(ptr noundef %181, ptr noundef %182), !dbg !1000
  %184 = load ptr, ptr %15, align 4, !dbg !1001
  call void @set_child(ptr noundef %180, i8 noundef zeroext %183, ptr noundef %184), !dbg !1002
  %185 = load ptr, ptr %4, align 4, !dbg !1003
  %186 = call zeroext i1 @is_red(ptr noundef %185), !dbg !1005
  br i1 %186, label %190, label %187, !dbg !1006

187:                                              ; preds = %179
  %188 = load ptr, ptr %15, align 4, !dbg !1007
  %189 = call zeroext i1 @is_red(ptr noundef %188), !dbg !1008
  br i1 %189, label %190, label %192, !dbg !1009

190:                                              ; preds = %187, %179
  %191 = load ptr, ptr %15, align 4, !dbg !1010
  call void @set_color(ptr noundef %191, i8 noundef zeroext 1), !dbg !1012
  br label %192, !dbg !1013

192:                                              ; preds = %190, %187
  br label %193

193:                                              ; preds = %192, %178
  %194 = getelementptr inbounds ptr, ptr %22, i32 0, !dbg !1014
  %195 = load ptr, ptr %194, align 4, !dbg !1014
  %196 = load ptr, ptr %3, align 4, !dbg !1015
  %197 = getelementptr inbounds %struct.rbtree, ptr %196, i32 0, i32 0, !dbg !1016
  store ptr %195, ptr %197, align 4, !dbg !1017
  store i32 0, ptr %9, align 4, !dbg !1018
  br label %198, !dbg !1018

198:                                              ; preds = %193, %159, %32
  %199 = load ptr, ptr %6, align 4, !dbg !1018
  call void @llvm.stackrestore(ptr %199), !dbg !1018
  %200 = load i32, ptr %9, align 4
  switch i32 %200, label %202 [
    i32 0, label %201
    i32 1, label %201
  ]

201:                                              ; preds = %198, %198
  ret void, !dbg !1018

202:                                              ; preds = %198
  unreachable
}

; Function Attrs: noinline nounwind optnone
define internal zeroext i8 @get_side(ptr noundef %0, ptr noundef %1) #0 !dbg !1019 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1022, metadata !DIExpression()), !dbg !1023
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1024, metadata !DIExpression()), !dbg !1025
  %5 = load ptr, ptr %3, align 4, !dbg !1026
  %6 = call ptr @get_child(ptr noundef %5, i8 noundef zeroext 1), !dbg !1027
  %7 = load ptr, ptr %4, align 4, !dbg !1028
  %8 = icmp eq ptr %6, %7, !dbg !1029
  %9 = zext i1 %8 to i64, !dbg !1030
  %10 = select i1 %8, i32 1, i32 0, !dbg !1030
  %11 = trunc i32 %10 to i8, !dbg !1030
  ret i8 %11, !dbg !1031
}

; Function Attrs: noinline nounwind optnone
define internal zeroext i8 @get_color(ptr noundef %0) #0 !dbg !1032 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1035, metadata !DIExpression()), !dbg !1036
  %3 = load ptr, ptr %2, align 4, !dbg !1037
  %4 = getelementptr inbounds %struct.rbnode, ptr %3, i32 0, i32 0, !dbg !1038
  %5 = getelementptr inbounds [2 x ptr], ptr %4, i32 0, i32 0, !dbg !1037
  %6 = load ptr, ptr %5, align 4, !dbg !1037
  %7 = ptrtoint ptr %6 to i32, !dbg !1039
  %8 = and i32 %7, 1, !dbg !1040
  %9 = trunc i32 %8 to i8, !dbg !1041
  ret i8 %9, !dbg !1042
}

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @is_black(ptr noundef %0) #0 !dbg !1043 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1046, metadata !DIExpression()), !dbg !1047
  %3 = load ptr, ptr %2, align 4, !dbg !1048
  %4 = call zeroext i8 @get_color(ptr noundef %3), !dbg !1049
  %5 = zext i8 %4 to i32, !dbg !1049
  %6 = icmp eq i32 %5, 1, !dbg !1050
  ret i1 %6, !dbg !1051
}

; Function Attrs: noinline nounwind optnone
define internal void @fix_missing_black(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 !dbg !1052 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  %11 = alloca ptr, align 4
  %12 = alloca ptr, align 4
  %13 = alloca i8, align 1
  %14 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1055, metadata !DIExpression()), !dbg !1056
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1057, metadata !DIExpression()), !dbg !1058
  store ptr %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1059, metadata !DIExpression()), !dbg !1060
  br label %15, !dbg !1061

15:                                               ; preds = %97, %3
  %16 = load i32, ptr %5, align 4, !dbg !1062
  %17 = icmp sgt i32 %16, 1, !dbg !1063
  br i1 %17, label %18, label %174, !dbg !1061

18:                                               ; preds = %15
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1064, metadata !DIExpression()), !dbg !1066
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1067, metadata !DIExpression()), !dbg !1068
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1069, metadata !DIExpression()), !dbg !1070
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1071, metadata !DIExpression()), !dbg !1072
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1073, metadata !DIExpression()), !dbg !1074
  %19 = load ptr, ptr %4, align 4, !dbg !1075
  %20 = load i32, ptr %5, align 4, !dbg !1076
  %21 = sub nsw i32 %20, 1, !dbg !1077
  %22 = getelementptr inbounds ptr, ptr %19, i32 %21, !dbg !1075
  %23 = load ptr, ptr %22, align 4, !dbg !1075
  store ptr %23, ptr %11, align 4, !dbg !1074
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1078, metadata !DIExpression()), !dbg !1079
  %24 = load ptr, ptr %4, align 4, !dbg !1080
  %25 = load i32, ptr %5, align 4, !dbg !1081
  %26 = sub nsw i32 %25, 2, !dbg !1082
  %27 = getelementptr inbounds ptr, ptr %24, i32 %26, !dbg !1080
  %28 = load ptr, ptr %27, align 4, !dbg !1080
  store ptr %28, ptr %12, align 4, !dbg !1079
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1083, metadata !DIExpression()), !dbg !1084
  %29 = load ptr, ptr %12, align 4, !dbg !1085
  %30 = load ptr, ptr %11, align 4, !dbg !1086
  %31 = call zeroext i8 @get_side(ptr noundef %29, ptr noundef %30), !dbg !1087
  store i8 %31, ptr %13, align 1, !dbg !1084
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1088, metadata !DIExpression()), !dbg !1089
  %32 = load ptr, ptr %12, align 4, !dbg !1090
  %33 = load i8, ptr %13, align 1, !dbg !1091
  %34 = zext i8 %33 to i32, !dbg !1091
  %35 = icmp eq i32 %34, 0, !dbg !1092
  %36 = zext i1 %35 to i64, !dbg !1093
  %37 = select i1 %35, i32 1, i32 0, !dbg !1093
  %38 = trunc i32 %37 to i8, !dbg !1093
  %39 = call ptr @get_child(ptr noundef %32, i8 noundef zeroext %38), !dbg !1094
  store ptr %39, ptr %14, align 4, !dbg !1089
  %40 = load ptr, ptr %14, align 4, !dbg !1095
  %41 = call zeroext i1 @is_black(ptr noundef %40), !dbg !1097
  br i1 %41, label %70, label %42, !dbg !1098

42:                                               ; preds = %18
  %43 = load ptr, ptr %14, align 4, !dbg !1099
  %44 = load ptr, ptr %4, align 4, !dbg !1101
  %45 = load i32, ptr %5, align 4, !dbg !1102
  %46 = sub nsw i32 %45, 1, !dbg !1103
  %47 = getelementptr inbounds ptr, ptr %44, i32 %46, !dbg !1101
  store ptr %43, ptr %47, align 4, !dbg !1104
  %48 = load ptr, ptr %4, align 4, !dbg !1105
  %49 = load i32, ptr %5, align 4, !dbg !1106
  call void @rotate(ptr noundef %48, i32 noundef %49), !dbg !1107
  %50 = load ptr, ptr %12, align 4, !dbg !1108
  call void @set_color(ptr noundef %50, i8 noundef zeroext 0), !dbg !1109
  %51 = load ptr, ptr %14, align 4, !dbg !1110
  call void @set_color(ptr noundef %51, i8 noundef zeroext 1), !dbg !1111
  %52 = load ptr, ptr %11, align 4, !dbg !1112
  %53 = load ptr, ptr %4, align 4, !dbg !1113
  %54 = load i32, ptr %5, align 4, !dbg !1114
  %55 = add nsw i32 %54, 1, !dbg !1114
  store i32 %55, ptr %5, align 4, !dbg !1114
  %56 = getelementptr inbounds ptr, ptr %53, i32 %54, !dbg !1113
  store ptr %52, ptr %56, align 4, !dbg !1115
  %57 = load ptr, ptr %4, align 4, !dbg !1116
  %58 = load i32, ptr %5, align 4, !dbg !1117
  %59 = sub nsw i32 %58, 2, !dbg !1118
  %60 = getelementptr inbounds ptr, ptr %57, i32 %59, !dbg !1116
  %61 = load ptr, ptr %60, align 4, !dbg !1116
  store ptr %61, ptr %12, align 4, !dbg !1119
  %62 = load ptr, ptr %12, align 4, !dbg !1120
  %63 = load i8, ptr %13, align 1, !dbg !1121
  %64 = zext i8 %63 to i32, !dbg !1121
  %65 = icmp eq i32 %64, 0, !dbg !1122
  %66 = zext i1 %65 to i64, !dbg !1123
  %67 = select i1 %65, i32 1, i32 0, !dbg !1123
  %68 = trunc i32 %67 to i8, !dbg !1123
  %69 = call ptr @get_child(ptr noundef %62, i8 noundef zeroext %68), !dbg !1124
  store ptr %69, ptr %14, align 4, !dbg !1125
  br label %70, !dbg !1126

70:                                               ; preds = %42, %18
  %71 = load ptr, ptr %14, align 4, !dbg !1127
  %72 = call ptr @get_child(ptr noundef %71, i8 noundef zeroext 0), !dbg !1128
  store ptr %72, ptr %7, align 4, !dbg !1129
  %73 = load ptr, ptr %14, align 4, !dbg !1130
  %74 = call ptr @get_child(ptr noundef %73, i8 noundef zeroext 1), !dbg !1131
  store ptr %74, ptr %8, align 4, !dbg !1132
  %75 = load ptr, ptr %7, align 4, !dbg !1133
  %76 = icmp eq ptr %75, null, !dbg !1135
  br i1 %76, label %80, label %77, !dbg !1136

77:                                               ; preds = %70
  %78 = load ptr, ptr %7, align 4, !dbg !1137
  %79 = call zeroext i1 @is_black(ptr noundef %78), !dbg !1138
  br i1 %79, label %80, label %102, !dbg !1139

80:                                               ; preds = %77, %70
  %81 = load ptr, ptr %8, align 4, !dbg !1140
  %82 = icmp eq ptr %81, null, !dbg !1141
  br i1 %82, label %86, label %83, !dbg !1142

83:                                               ; preds = %80
  %84 = load ptr, ptr %8, align 4, !dbg !1143
  %85 = call zeroext i1 @is_black(ptr noundef %84), !dbg !1144
  br i1 %85, label %86, label %102, !dbg !1145

86:                                               ; preds = %83, %80
  %87 = load ptr, ptr %11, align 4, !dbg !1146
  %88 = load ptr, ptr %6, align 4, !dbg !1149
  %89 = icmp eq ptr %87, %88, !dbg !1150
  br i1 %89, label %90, label %93, !dbg !1151

90:                                               ; preds = %86
  %91 = load ptr, ptr %12, align 4, !dbg !1152
  %92 = load i8, ptr %13, align 1, !dbg !1154
  call void @set_child(ptr noundef %91, i8 noundef zeroext %92, ptr noundef null), !dbg !1155
  br label %93, !dbg !1156

93:                                               ; preds = %90, %86
  %94 = load ptr, ptr %14, align 4, !dbg !1157
  call void @set_color(ptr noundef %94, i8 noundef zeroext 0), !dbg !1158
  %95 = load ptr, ptr %12, align 4, !dbg !1159
  %96 = call zeroext i1 @is_black(ptr noundef %95), !dbg !1161
  br i1 %96, label %97, label %100, !dbg !1162

97:                                               ; preds = %93
  %98 = load i32, ptr %5, align 4, !dbg !1163
  %99 = add nsw i32 %98, -1, !dbg !1163
  store i32 %99, ptr %5, align 4, !dbg !1163
  br label %15, !dbg !1165, !llvm.loop !1166

100:                                              ; preds = %93
  %101 = load ptr, ptr %12, align 4, !dbg !1168
  call void @set_color(ptr noundef %101, i8 noundef zeroext 1), !dbg !1170
  br label %174, !dbg !1171

102:                                              ; preds = %83, %77
  %103 = load ptr, ptr %14, align 4, !dbg !1172
  %104 = load i8, ptr %13, align 1, !dbg !1173
  %105 = zext i8 %104 to i32, !dbg !1173
  %106 = icmp eq i32 %105, 0, !dbg !1174
  %107 = zext i1 %106 to i64, !dbg !1175
  %108 = select i1 %106, i32 1, i32 0, !dbg !1175
  %109 = trunc i32 %108 to i8, !dbg !1175
  %110 = call ptr @get_child(ptr noundef %103, i8 noundef zeroext %109), !dbg !1176
  store ptr %110, ptr %10, align 4, !dbg !1177
  %111 = load ptr, ptr %10, align 4, !dbg !1178
  %112 = icmp ne ptr %111, null, !dbg !1180
  br i1 %112, label %113, label %116, !dbg !1181

113:                                              ; preds = %102
  %114 = load ptr, ptr %10, align 4, !dbg !1182
  %115 = call zeroext i1 @is_red(ptr noundef %114), !dbg !1183
  br i1 %115, label %154, label %116, !dbg !1184

116:                                              ; preds = %113, %102
  %117 = load ptr, ptr %14, align 4, !dbg !1185
  %118 = load i8, ptr %13, align 1, !dbg !1187
  %119 = call ptr @get_child(ptr noundef %117, i8 noundef zeroext %118), !dbg !1188
  store ptr %119, ptr %9, align 4, !dbg !1189
  %120 = load ptr, ptr %14, align 4, !dbg !1190
  %121 = load ptr, ptr %4, align 4, !dbg !1191
  %122 = load i32, ptr %5, align 4, !dbg !1192
  %123 = sub nsw i32 %122, 1, !dbg !1193
  %124 = getelementptr inbounds ptr, ptr %121, i32 %123, !dbg !1191
  store ptr %120, ptr %124, align 4, !dbg !1194
  %125 = load ptr, ptr %9, align 4, !dbg !1195
  %126 = load ptr, ptr %4, align 4, !dbg !1196
  %127 = load i32, ptr %5, align 4, !dbg !1197
  %128 = add nsw i32 %127, 1, !dbg !1197
  store i32 %128, ptr %5, align 4, !dbg !1197
  %129 = getelementptr inbounds ptr, ptr %126, i32 %127, !dbg !1196
  store ptr %125, ptr %129, align 4, !dbg !1198
  %130 = load ptr, ptr %4, align 4, !dbg !1199
  %131 = load i32, ptr %5, align 4, !dbg !1200
  call void @rotate(ptr noundef %130, i32 noundef %131), !dbg !1201
  %132 = load ptr, ptr %14, align 4, !dbg !1202
  call void @set_color(ptr noundef %132, i8 noundef zeroext 0), !dbg !1203
  %133 = load ptr, ptr %9, align 4, !dbg !1204
  call void @set_color(ptr noundef %133, i8 noundef zeroext 1), !dbg !1205
  %134 = load ptr, ptr %4, align 4, !dbg !1206
  %135 = load i32, ptr %5, align 4, !dbg !1207
  %136 = sub nsw i32 %135, 2, !dbg !1208
  %137 = getelementptr inbounds ptr, ptr %134, i32 %136, !dbg !1206
  %138 = load ptr, ptr %137, align 4, !dbg !1206
  store ptr %138, ptr %14, align 4, !dbg !1209
  %139 = load ptr, ptr %14, align 4, !dbg !1210
  %140 = load i8, ptr %13, align 1, !dbg !1211
  %141 = zext i8 %140 to i32, !dbg !1211
  %142 = icmp eq i32 %141, 0, !dbg !1212
  %143 = zext i1 %142 to i64, !dbg !1213
  %144 = select i1 %142, i32 1, i32 0, !dbg !1213
  %145 = trunc i32 %144 to i8, !dbg !1213
  %146 = call ptr @get_child(ptr noundef %139, i8 noundef zeroext %145), !dbg !1214
  store ptr %146, ptr %10, align 4, !dbg !1215
  %147 = load ptr, ptr %11, align 4, !dbg !1216
  %148 = load ptr, ptr %4, align 4, !dbg !1217
  %149 = load i32, ptr %5, align 4, !dbg !1218
  %150 = sub nsw i32 %149, 2, !dbg !1219
  %151 = getelementptr inbounds ptr, ptr %148, i32 %150, !dbg !1217
  store ptr %147, ptr %151, align 4, !dbg !1220
  %152 = load i32, ptr %5, align 4, !dbg !1221
  %153 = add nsw i32 %152, -1, !dbg !1221
  store i32 %153, ptr %5, align 4, !dbg !1221
  br label %154, !dbg !1222

154:                                              ; preds = %116, %113
  %155 = load ptr, ptr %14, align 4, !dbg !1223
  %156 = load ptr, ptr %12, align 4, !dbg !1224
  %157 = call zeroext i8 @get_color(ptr noundef %156), !dbg !1225
  call void @set_color(ptr noundef %155, i8 noundef zeroext %157), !dbg !1226
  %158 = load ptr, ptr %12, align 4, !dbg !1227
  call void @set_color(ptr noundef %158, i8 noundef zeroext 1), !dbg !1228
  %159 = load ptr, ptr %10, align 4, !dbg !1229
  call void @set_color(ptr noundef %159, i8 noundef zeroext 1), !dbg !1230
  %160 = load ptr, ptr %14, align 4, !dbg !1231
  %161 = load ptr, ptr %4, align 4, !dbg !1232
  %162 = load i32, ptr %5, align 4, !dbg !1233
  %163 = sub nsw i32 %162, 1, !dbg !1234
  %164 = getelementptr inbounds ptr, ptr %161, i32 %163, !dbg !1232
  store ptr %160, ptr %164, align 4, !dbg !1235
  %165 = load ptr, ptr %4, align 4, !dbg !1236
  %166 = load i32, ptr %5, align 4, !dbg !1237
  call void @rotate(ptr noundef %165, i32 noundef %166), !dbg !1238
  %167 = load ptr, ptr %11, align 4, !dbg !1239
  %168 = load ptr, ptr %6, align 4, !dbg !1241
  %169 = icmp eq ptr %167, %168, !dbg !1242
  br i1 %169, label %170, label %173, !dbg !1243

170:                                              ; preds = %154
  %171 = load ptr, ptr %12, align 4, !dbg !1244
  %172 = load i8, ptr %13, align 1, !dbg !1246
  call void @set_child(ptr noundef %171, i8 noundef zeroext %172, ptr noundef null), !dbg !1247
  br label %173, !dbg !1248

173:                                              ; preds = %170, %154
  br label %174, !dbg !1249

174:                                              ; preds = %100, %173, %15
  ret void, !dbg !1250
}

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @is_red(ptr noundef %0) #0 !dbg !1251 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1252, metadata !DIExpression()), !dbg !1253
  %3 = load ptr, ptr %2, align 4, !dbg !1254
  %4 = call zeroext i8 @get_color(ptr noundef %3), !dbg !1255
  %5 = zext i8 %4 to i32, !dbg !1255
  %6 = icmp eq i32 %5, 0, !dbg !1256
  ret i1 %6, !dbg !1257
}

; Function Attrs: noinline nounwind optnone
define hidden void @z_rb_walk(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !1258 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1265, metadata !DIExpression()), !dbg !1266
  store ptr %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1267, metadata !DIExpression()), !dbg !1268
  store ptr %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1269, metadata !DIExpression()), !dbg !1270
  %7 = load ptr, ptr %4, align 4, !dbg !1271
  %8 = icmp ne ptr %7, null, !dbg !1273
  br i1 %8, label %9, label %21, !dbg !1274

9:                                                ; preds = %3
  %10 = load ptr, ptr %4, align 4, !dbg !1275
  %11 = call ptr @get_child(ptr noundef %10, i8 noundef zeroext 0), !dbg !1277
  %12 = load ptr, ptr %5, align 4, !dbg !1278
  %13 = load ptr, ptr %6, align 4, !dbg !1279
  call void @z_rb_walk(ptr noundef %11, ptr noundef %12, ptr noundef %13), !dbg !1280
  %14 = load ptr, ptr %5, align 4, !dbg !1281
  %15 = load ptr, ptr %4, align 4, !dbg !1282
  %16 = load ptr, ptr %6, align 4, !dbg !1283
  call void %14(ptr noundef %15, ptr noundef %16), !dbg !1281
  %17 = load ptr, ptr %4, align 4, !dbg !1284
  %18 = call ptr @get_child(ptr noundef %17, i8 noundef zeroext 1), !dbg !1285
  %19 = load ptr, ptr %5, align 4, !dbg !1286
  %20 = load ptr, ptr %6, align 4, !dbg !1287
  call void @z_rb_walk(ptr noundef %18, ptr noundef %19, ptr noundef %20), !dbg !1288
  br label %21, !dbg !1289

21:                                               ; preds = %9, %3
  ret void, !dbg !1290
}

; Function Attrs: noinline nounwind optnone
define hidden ptr @z_rb_child(ptr noundef %0, i8 noundef zeroext %1) #0 !dbg !1291 {
  %3 = alloca ptr, align 4
  %4 = alloca i8, align 1
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1292, metadata !DIExpression()), !dbg !1293
  store i8 %1, ptr %4, align 1
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1294, metadata !DIExpression()), !dbg !1295
  %5 = load ptr, ptr %3, align 4, !dbg !1296
  %6 = load i8, ptr %4, align 1, !dbg !1297
  %7 = call ptr @get_child(ptr noundef %5, i8 noundef zeroext %6), !dbg !1298
  ret ptr %7, !dbg !1299
}

; Function Attrs: noinline nounwind optnone
define hidden i32 @z_rb_is_black(ptr noundef %0) #0 !dbg !1300 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1303, metadata !DIExpression()), !dbg !1304
  %3 = load ptr, ptr %2, align 4, !dbg !1305
  %4 = call zeroext i1 @is_black(ptr noundef %3), !dbg !1306
  %5 = zext i1 %4 to i32, !dbg !1306
  ret i32 %5, !dbg !1307
}

; Function Attrs: noinline nounwind optnone
define hidden zeroext i1 @rb_contains(ptr noundef %0, ptr noundef %1) #0 !dbg !1308 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1311, metadata !DIExpression()), !dbg !1312
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1313, metadata !DIExpression()), !dbg !1314
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1315, metadata !DIExpression()), !dbg !1316
  %6 = load ptr, ptr %3, align 4, !dbg !1317
  %7 = getelementptr inbounds %struct.rbtree, ptr %6, i32 0, i32 0, !dbg !1318
  %8 = load ptr, ptr %7, align 4, !dbg !1318
  store ptr %8, ptr %5, align 4, !dbg !1316
  br label %9, !dbg !1319

9:                                                ; preds = %18, %2
  %10 = load ptr, ptr %5, align 4, !dbg !1320
  %11 = icmp ne ptr %10, null, !dbg !1321
  br i1 %11, label %12, label %16, !dbg !1322

12:                                               ; preds = %9
  %13 = load ptr, ptr %5, align 4, !dbg !1323
  %14 = load ptr, ptr %4, align 4, !dbg !1324
  %15 = icmp ne ptr %13, %14, !dbg !1325
  br label %16

16:                                               ; preds = %12, %9
  %17 = phi i1 [ false, %9 ], [ %15, %12 ], !dbg !1326
  br i1 %17, label %18, label %28, !dbg !1319

18:                                               ; preds = %16
  %19 = load ptr, ptr %5, align 4, !dbg !1327
  %20 = load ptr, ptr %3, align 4, !dbg !1329
  %21 = getelementptr inbounds %struct.rbtree, ptr %20, i32 0, i32 1, !dbg !1330
  %22 = load ptr, ptr %21, align 4, !dbg !1330
  %23 = load ptr, ptr %5, align 4, !dbg !1331
  %24 = load ptr, ptr %4, align 4, !dbg !1332
  %25 = call zeroext i1 %22(ptr noundef %23, ptr noundef %24), !dbg !1329
  %26 = zext i1 %25 to i8, !dbg !1329
  %27 = call ptr @get_child(ptr noundef %19, i8 noundef zeroext %26), !dbg !1333
  store ptr %27, ptr %5, align 4, !dbg !1334
  br label %9, !dbg !1319, !llvm.loop !1335

28:                                               ; preds = %16
  %29 = load ptr, ptr %5, align 4, !dbg !1337
  %30 = load ptr, ptr %4, align 4, !dbg !1338
  %31 = icmp eq ptr %29, %30, !dbg !1339
  ret i1 %31, !dbg !1340
}

; Function Attrs: noinline nounwind optnone
define hidden ptr @z_rb_foreach_next(ptr noundef %0, ptr noundef %1) #0 !dbg !1341 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1352, metadata !DIExpression()), !dbg !1353
  store ptr %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1354, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1356, metadata !DIExpression()), !dbg !1357
  %7 = load ptr, ptr %4, align 4, !dbg !1358
  %8 = getelementptr inbounds %struct.rbtree, ptr %7, i32 0, i32 0, !dbg !1360
  %9 = load ptr, ptr %8, align 4, !dbg !1360
  %10 = icmp eq ptr %9, null, !dbg !1361
  br i1 %10, label %11, label %12, !dbg !1362

11:                                               ; preds = %2
  store ptr null, ptr %3, align 4, !dbg !1363
  br label %105, !dbg !1363

12:                                               ; preds = %2
  %13 = load ptr, ptr %5, align 4, !dbg !1365
  %14 = getelementptr inbounds %struct._rb_foreach, ptr %13, i32 0, i32 2, !dbg !1367
  %15 = load i32, ptr %14, align 4, !dbg !1367
  %16 = icmp eq i32 %15, -1, !dbg !1368
  br i1 %16, label %17, label %23, !dbg !1369

17:                                               ; preds = %12
  %18 = load ptr, ptr %4, align 4, !dbg !1370
  %19 = getelementptr inbounds %struct.rbtree, ptr %18, i32 0, i32 0, !dbg !1372
  %20 = load ptr, ptr %19, align 4, !dbg !1372
  %21 = load ptr, ptr %5, align 4, !dbg !1373
  %22 = call ptr @stack_left_limb(ptr noundef %20, ptr noundef %21), !dbg !1374
  store ptr %22, ptr %3, align 4, !dbg !1375
  br label %105, !dbg !1375

23:                                               ; preds = %12
  %24 = load ptr, ptr %5, align 4, !dbg !1376
  %25 = getelementptr inbounds %struct._rb_foreach, ptr %24, i32 0, i32 0, !dbg !1377
  %26 = load ptr, ptr %25, align 4, !dbg !1377
  %27 = load ptr, ptr %5, align 4, !dbg !1378
  %28 = getelementptr inbounds %struct._rb_foreach, ptr %27, i32 0, i32 2, !dbg !1379
  %29 = load i32, ptr %28, align 4, !dbg !1379
  %30 = getelementptr inbounds ptr, ptr %26, i32 %29, !dbg !1376
  %31 = load ptr, ptr %30, align 4, !dbg !1376
  %32 = call ptr @get_child(ptr noundef %31, i8 noundef zeroext 1), !dbg !1380
  store ptr %32, ptr %6, align 4, !dbg !1381
  %33 = load ptr, ptr %6, align 4, !dbg !1382
  %34 = icmp ne ptr %33, null, !dbg !1384
  br i1 %34, label %35, label %39, !dbg !1385

35:                                               ; preds = %23
  %36 = load ptr, ptr %6, align 4, !dbg !1386
  %37 = load ptr, ptr %5, align 4, !dbg !1388
  %38 = call ptr @stack_left_limb(ptr noundef %36, ptr noundef %37), !dbg !1389
  store ptr %38, ptr %3, align 4, !dbg !1390
  br label %105, !dbg !1390

39:                                               ; preds = %23
  %40 = load ptr, ptr %5, align 4, !dbg !1391
  %41 = getelementptr inbounds %struct._rb_foreach, ptr %40, i32 0, i32 1, !dbg !1393
  %42 = load ptr, ptr %41, align 4, !dbg !1393
  %43 = load ptr, ptr %5, align 4, !dbg !1394
  %44 = getelementptr inbounds %struct._rb_foreach, ptr %43, i32 0, i32 2, !dbg !1395
  %45 = load i32, ptr %44, align 4, !dbg !1395
  %46 = getelementptr inbounds i8, ptr %42, i32 %45, !dbg !1391
  %47 = load i8, ptr %46, align 1, !dbg !1391
  %48 = zext i8 %47 to i32, !dbg !1391
  %49 = icmp ne i32 %48, 0, !dbg !1396
  br i1 %49, label %50, label %60, !dbg !1397

50:                                               ; preds = %39
  %51 = load ptr, ptr %5, align 4, !dbg !1398
  %52 = getelementptr inbounds %struct._rb_foreach, ptr %51, i32 0, i32 0, !dbg !1400
  %53 = load ptr, ptr %52, align 4, !dbg !1400
  %54 = load ptr, ptr %5, align 4, !dbg !1401
  %55 = getelementptr inbounds %struct._rb_foreach, ptr %54, i32 0, i32 2, !dbg !1402
  %56 = load i32, ptr %55, align 4, !dbg !1403
  %57 = add nsw i32 %56, -1, !dbg !1403
  store i32 %57, ptr %55, align 4, !dbg !1403
  %58 = getelementptr inbounds ptr, ptr %53, i32 %57, !dbg !1398
  %59 = load ptr, ptr %58, align 4, !dbg !1398
  store ptr %59, ptr %3, align 4, !dbg !1404
  br label %105, !dbg !1404

60:                                               ; preds = %39
  br label %61, !dbg !1405

61:                                               ; preds = %79, %60
  %62 = load ptr, ptr %5, align 4, !dbg !1406
  %63 = getelementptr inbounds %struct._rb_foreach, ptr %62, i32 0, i32 2, !dbg !1407
  %64 = load i32, ptr %63, align 4, !dbg !1407
  %65 = icmp sgt i32 %64, 0, !dbg !1408
  br i1 %65, label %66, label %77, !dbg !1409

66:                                               ; preds = %61
  %67 = load ptr, ptr %5, align 4, !dbg !1410
  %68 = getelementptr inbounds %struct._rb_foreach, ptr %67, i32 0, i32 1, !dbg !1411
  %69 = load ptr, ptr %68, align 4, !dbg !1411
  %70 = load ptr, ptr %5, align 4, !dbg !1412
  %71 = getelementptr inbounds %struct._rb_foreach, ptr %70, i32 0, i32 2, !dbg !1413
  %72 = load i32, ptr %71, align 4, !dbg !1413
  %73 = getelementptr inbounds i8, ptr %69, i32 %72, !dbg !1410
  %74 = load i8, ptr %73, align 1, !dbg !1410
  %75 = zext i8 %74 to i32, !dbg !1410
  %76 = icmp eq i32 %75, 0, !dbg !1414
  br label %77

77:                                               ; preds = %66, %61
  %78 = phi i1 [ false, %61 ], [ %76, %66 ], !dbg !1415
  br i1 %78, label %79, label %84, !dbg !1405

79:                                               ; preds = %77
  %80 = load ptr, ptr %5, align 4, !dbg !1416
  %81 = getelementptr inbounds %struct._rb_foreach, ptr %80, i32 0, i32 2, !dbg !1418
  %82 = load i32, ptr %81, align 4, !dbg !1419
  %83 = add nsw i32 %82, -1, !dbg !1419
  store i32 %83, ptr %81, align 4, !dbg !1419
  br label %61, !dbg !1405, !llvm.loop !1420

84:                                               ; preds = %77
  %85 = load ptr, ptr %5, align 4, !dbg !1422
  %86 = getelementptr inbounds %struct._rb_foreach, ptr %85, i32 0, i32 2, !dbg !1423
  %87 = load i32, ptr %86, align 4, !dbg !1424
  %88 = add nsw i32 %87, -1, !dbg !1424
  store i32 %88, ptr %86, align 4, !dbg !1424
  %89 = load ptr, ptr %5, align 4, !dbg !1425
  %90 = getelementptr inbounds %struct._rb_foreach, ptr %89, i32 0, i32 2, !dbg !1426
  %91 = load i32, ptr %90, align 4, !dbg !1426
  %92 = icmp sge i32 %91, 0, !dbg !1427
  br i1 %92, label %93, label %102, !dbg !1428

93:                                               ; preds = %84
  %94 = load ptr, ptr %5, align 4, !dbg !1429
  %95 = getelementptr inbounds %struct._rb_foreach, ptr %94, i32 0, i32 0, !dbg !1430
  %96 = load ptr, ptr %95, align 4, !dbg !1430
  %97 = load ptr, ptr %5, align 4, !dbg !1431
  %98 = getelementptr inbounds %struct._rb_foreach, ptr %97, i32 0, i32 2, !dbg !1432
  %99 = load i32, ptr %98, align 4, !dbg !1432
  %100 = getelementptr inbounds ptr, ptr %96, i32 %99, !dbg !1429
  %101 = load ptr, ptr %100, align 4, !dbg !1429
  br label %103, !dbg !1428

102:                                              ; preds = %84
  br label %103, !dbg !1428

103:                                              ; preds = %102, %93
  %104 = phi ptr [ %101, %93 ], [ null, %102 ], !dbg !1428
  store ptr %104, ptr %3, align 4, !dbg !1433
  br label %105, !dbg !1433

105:                                              ; preds = %103, %50, %35, %17, %11
  %106 = load ptr, ptr %3, align 4, !dbg !1434
  ret ptr %106, !dbg !1434
}

; Function Attrs: noinline nounwind optnone
define internal ptr @stack_left_limb(ptr noundef %0, ptr noundef %1) #0 !dbg !1435 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1438, metadata !DIExpression()), !dbg !1439
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1440, metadata !DIExpression()), !dbg !1441
  %5 = load ptr, ptr %4, align 4, !dbg !1442
  %6 = getelementptr inbounds %struct._rb_foreach, ptr %5, i32 0, i32 2, !dbg !1443
  %7 = load i32, ptr %6, align 4, !dbg !1444
  %8 = add nsw i32 %7, 1, !dbg !1444
  store i32 %8, ptr %6, align 4, !dbg !1444
  %9 = load ptr, ptr %3, align 4, !dbg !1445
  %10 = load ptr, ptr %4, align 4, !dbg !1446
  %11 = getelementptr inbounds %struct._rb_foreach, ptr %10, i32 0, i32 0, !dbg !1447
  %12 = load ptr, ptr %11, align 4, !dbg !1447
  %13 = load ptr, ptr %4, align 4, !dbg !1448
  %14 = getelementptr inbounds %struct._rb_foreach, ptr %13, i32 0, i32 2, !dbg !1449
  %15 = load i32, ptr %14, align 4, !dbg !1449
  %16 = getelementptr inbounds ptr, ptr %12, i32 %15, !dbg !1446
  store ptr %9, ptr %16, align 4, !dbg !1450
  %17 = load ptr, ptr %4, align 4, !dbg !1451
  %18 = getelementptr inbounds %struct._rb_foreach, ptr %17, i32 0, i32 1, !dbg !1452
  %19 = load ptr, ptr %18, align 4, !dbg !1452
  %20 = load ptr, ptr %4, align 4, !dbg !1453
  %21 = getelementptr inbounds %struct._rb_foreach, ptr %20, i32 0, i32 2, !dbg !1454
  %22 = load i32, ptr %21, align 4, !dbg !1454
  %23 = getelementptr inbounds i8, ptr %19, i32 %22, !dbg !1451
  store i8 0, ptr %23, align 1, !dbg !1455
  br label %24, !dbg !1456

24:                                               ; preds = %28, %2
  %25 = load ptr, ptr %3, align 4, !dbg !1457
  %26 = call ptr @get_child(ptr noundef %25, i8 noundef zeroext 0), !dbg !1458
  store ptr %26, ptr %3, align 4, !dbg !1459
  %27 = icmp ne ptr %26, null, !dbg !1460
  br i1 %27, label %28, label %48, !dbg !1456

28:                                               ; preds = %24
  %29 = load ptr, ptr %4, align 4, !dbg !1461
  %30 = getelementptr inbounds %struct._rb_foreach, ptr %29, i32 0, i32 2, !dbg !1463
  %31 = load i32, ptr %30, align 4, !dbg !1464
  %32 = add nsw i32 %31, 1, !dbg !1464
  store i32 %32, ptr %30, align 4, !dbg !1464
  %33 = load ptr, ptr %3, align 4, !dbg !1465
  %34 = load ptr, ptr %4, align 4, !dbg !1466
  %35 = getelementptr inbounds %struct._rb_foreach, ptr %34, i32 0, i32 0, !dbg !1467
  %36 = load ptr, ptr %35, align 4, !dbg !1467
  %37 = load ptr, ptr %4, align 4, !dbg !1468
  %38 = getelementptr inbounds %struct._rb_foreach, ptr %37, i32 0, i32 2, !dbg !1469
  %39 = load i32, ptr %38, align 4, !dbg !1469
  %40 = getelementptr inbounds ptr, ptr %36, i32 %39, !dbg !1466
  store ptr %33, ptr %40, align 4, !dbg !1470
  %41 = load ptr, ptr %4, align 4, !dbg !1471
  %42 = getelementptr inbounds %struct._rb_foreach, ptr %41, i32 0, i32 1, !dbg !1472
  %43 = load ptr, ptr %42, align 4, !dbg !1472
  %44 = load ptr, ptr %4, align 4, !dbg !1473
  %45 = getelementptr inbounds %struct._rb_foreach, ptr %44, i32 0, i32 2, !dbg !1474
  %46 = load i32, ptr %45, align 4, !dbg !1474
  %47 = getelementptr inbounds i8, ptr %43, i32 %46, !dbg !1471
  store i8 1, ptr %47, align 1, !dbg !1475
  br label %24, !dbg !1456, !llvm.loop !1476

48:                                               ; preds = %24
  %49 = load ptr, ptr %4, align 4, !dbg !1478
  %50 = getelementptr inbounds %struct._rb_foreach, ptr %49, i32 0, i32 0, !dbg !1479
  %51 = load ptr, ptr %50, align 4, !dbg !1479
  %52 = load ptr, ptr %4, align 4, !dbg !1480
  %53 = getelementptr inbounds %struct._rb_foreach, ptr %52, i32 0, i32 2, !dbg !1481
  %54 = load i32, ptr %53, align 4, !dbg !1481
  %55 = getelementptr inbounds ptr, ptr %51, i32 %54, !dbg !1478
  %56 = load ptr, ptr %55, align 4, !dbg !1478
  ret ptr %56, !dbg !1482
}

declare i64 @z_timeout_expires(ptr noundef) #3

declare i64 @z_timeout_remaining(ptr noundef) #3

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @sys_sflist_is_empty(ptr noundef %0) #0 !dbg !1483 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1487, metadata !DIExpression()), !dbg !1488
  %3 = load ptr, ptr %2, align 4, !dbg !1489
  %4 = call ptr @sys_sflist_peek_head(ptr noundef %3), !dbg !1490
  %5 = icmp eq ptr %4, null, !dbg !1491
  ret i1 %5, !dbg !1492
}

; Function Attrs: noinline nounwind optnone
define internal ptr @sys_sflist_peek_head(ptr noundef %0) #0 !dbg !1493 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1496, metadata !DIExpression()), !dbg !1497
  %3 = load ptr, ptr %2, align 4, !dbg !1498
  %4 = getelementptr inbounds %struct._sflist, ptr %3, i32 0, i32 0, !dbg !1499
  %5 = load ptr, ptr %4, align 4, !dbg !1499
  ret ptr %5, !dbg !1500
}

; Function Attrs: noinline nounwind optnone
define internal void @rotate(ptr noundef %0, i32 noundef %1) #0 !dbg !1501 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i8, align 1
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1502, metadata !DIExpression()), !dbg !1503
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1504, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1506, metadata !DIExpression()), !dbg !1507
  %11 = load ptr, ptr %3, align 4, !dbg !1508
  %12 = load i32, ptr %4, align 4, !dbg !1509
  %13 = sub nsw i32 %12, 2, !dbg !1510
  %14 = getelementptr inbounds ptr, ptr %11, i32 %13, !dbg !1508
  %15 = load ptr, ptr %14, align 4, !dbg !1508
  store ptr %15, ptr %5, align 4, !dbg !1507
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1511, metadata !DIExpression()), !dbg !1512
  %16 = load ptr, ptr %3, align 4, !dbg !1513
  %17 = load i32, ptr %4, align 4, !dbg !1514
  %18 = sub nsw i32 %17, 1, !dbg !1515
  %19 = getelementptr inbounds ptr, ptr %16, i32 %18, !dbg !1513
  %20 = load ptr, ptr %19, align 4, !dbg !1513
  store ptr %20, ptr %6, align 4, !dbg !1512
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1516, metadata !DIExpression()), !dbg !1517
  %21 = load ptr, ptr %5, align 4, !dbg !1518
  %22 = load ptr, ptr %6, align 4, !dbg !1519
  %23 = call zeroext i8 @get_side(ptr noundef %21, ptr noundef %22), !dbg !1520
  store i8 %23, ptr %7, align 1, !dbg !1517
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1521, metadata !DIExpression()), !dbg !1522
  %24 = load ptr, ptr %6, align 4, !dbg !1523
  %25 = load i8, ptr %7, align 1, !dbg !1524
  %26 = call ptr @get_child(ptr noundef %24, i8 noundef zeroext %25), !dbg !1525
  store ptr %26, ptr %8, align 4, !dbg !1522
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1526, metadata !DIExpression()), !dbg !1527
  %27 = load ptr, ptr %6, align 4, !dbg !1528
  %28 = load i8, ptr %7, align 1, !dbg !1529
  %29 = zext i8 %28 to i32, !dbg !1529
  %30 = icmp eq i32 %29, 0, !dbg !1530
  %31 = zext i1 %30 to i64, !dbg !1531
  %32 = select i1 %30, i32 1, i32 0, !dbg !1531
  %33 = trunc i32 %32 to i8, !dbg !1531
  %34 = call ptr @get_child(ptr noundef %27, i8 noundef zeroext %33), !dbg !1532
  store ptr %34, ptr %9, align 4, !dbg !1527
  %35 = load i32, ptr %4, align 4, !dbg !1533
  %36 = icmp sge i32 %35, 3, !dbg !1535
  br i1 %36, label %37, label %48, !dbg !1536

37:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1537, metadata !DIExpression()), !dbg !1539
  %38 = load ptr, ptr %3, align 4, !dbg !1540
  %39 = load i32, ptr %4, align 4, !dbg !1541
  %40 = sub nsw i32 %39, 3, !dbg !1542
  %41 = getelementptr inbounds ptr, ptr %38, i32 %40, !dbg !1540
  %42 = load ptr, ptr %41, align 4, !dbg !1540
  store ptr %42, ptr %10, align 4, !dbg !1539
  %43 = load ptr, ptr %10, align 4, !dbg !1543
  %44 = load ptr, ptr %10, align 4, !dbg !1544
  %45 = load ptr, ptr %5, align 4, !dbg !1545
  %46 = call zeroext i8 @get_side(ptr noundef %44, ptr noundef %45), !dbg !1546
  %47 = load ptr, ptr %6, align 4, !dbg !1547
  call void @set_child(ptr noundef %43, i8 noundef zeroext %46, ptr noundef %47), !dbg !1548
  br label %48, !dbg !1549

48:                                               ; preds = %37, %2
  %49 = load ptr, ptr %6, align 4, !dbg !1550
  %50 = load i8, ptr %7, align 1, !dbg !1551
  %51 = load ptr, ptr %8, align 4, !dbg !1552
  call void @set_child(ptr noundef %49, i8 noundef zeroext %50, ptr noundef %51), !dbg !1553
  %52 = load ptr, ptr %6, align 4, !dbg !1554
  %53 = load i8, ptr %7, align 1, !dbg !1555
  %54 = zext i8 %53 to i32, !dbg !1555
  %55 = icmp eq i32 %54, 0, !dbg !1556
  %56 = zext i1 %55 to i64, !dbg !1557
  %57 = select i1 %55, i32 1, i32 0, !dbg !1557
  %58 = trunc i32 %57 to i8, !dbg !1557
  %59 = load ptr, ptr %5, align 4, !dbg !1558
  call void @set_child(ptr noundef %52, i8 noundef zeroext %58, ptr noundef %59), !dbg !1559
  %60 = load ptr, ptr %5, align 4, !dbg !1560
  %61 = load i8, ptr %7, align 1, !dbg !1561
  %62 = load ptr, ptr %9, align 4, !dbg !1562
  call void @set_child(ptr noundef %60, i8 noundef zeroext %61, ptr noundef %62), !dbg !1563
  %63 = load ptr, ptr %6, align 4, !dbg !1564
  %64 = load ptr, ptr %3, align 4, !dbg !1565
  %65 = load i32, ptr %4, align 4, !dbg !1566
  %66 = sub nsw i32 %65, 2, !dbg !1567
  %67 = getelementptr inbounds ptr, ptr %64, i32 %66, !dbg !1565
  store ptr %63, ptr %67, align 4, !dbg !1568
  %68 = load ptr, ptr %5, align 4, !dbg !1569
  %69 = load ptr, ptr %3, align 4, !dbg !1570
  %70 = load i32, ptr %4, align 4, !dbg !1571
  %71 = sub nsw i32 %70, 1, !dbg !1572
  %72 = getelementptr inbounds ptr, ptr %69, i32 %71, !dbg !1570
  store ptr %68, ptr %72, align 4, !dbg !1573
  ret void, !dbg !1574
}

attributes #0 = { noinline nounwind optnone "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn }
attributes #3 = { "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!106, !107, !108, !109, !110, !111, !112, !113}
!llvm.ident = !{!114}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !91, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "rb.c", directory: "/home/sri/zephyrproject/zephyr/build")
!2 = !{!3, !9}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rb_color", file: !4, line: 19, baseType: !5, size: 8, elements: !6)
!4 = !DIFile(filename: "lib/os/rb.c", directory: "/home/sri/zephyrproject/zephyr")
!5 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!6 = !{!7, !8}
!7 = !DIEnumerator(name: "RED", value: 0)
!8 = !DIEnumerator(name: "BLACK", value: 1)
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "k_objects", file: !10, line: 29, baseType: !5, size: 8, elements: !11)
!10 = !DIFile(filename: "include/zephyr/sys/kobject.h", directory: "/home/sri/zephyrproject/zephyr")
!11 = !{!12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90}
!12 = !DIEnumerator(name: "K_OBJ_ANY", value: 0)
!13 = !DIEnumerator(name: "K_OBJ_MEM_SLAB", value: 1)
!14 = !DIEnumerator(name: "K_OBJ_MSGQ", value: 2)
!15 = !DIEnumerator(name: "K_OBJ_MUTEX", value: 3)
!16 = !DIEnumerator(name: "K_OBJ_PIPE", value: 4)
!17 = !DIEnumerator(name: "K_OBJ_QUEUE", value: 5)
!18 = !DIEnumerator(name: "K_OBJ_POLL_SIGNAL", value: 6)
!19 = !DIEnumerator(name: "K_OBJ_SEM", value: 7)
!20 = !DIEnumerator(name: "K_OBJ_STACK", value: 8)
!21 = !DIEnumerator(name: "K_OBJ_THREAD", value: 9)
!22 = !DIEnumerator(name: "K_OBJ_TIMER", value: 10)
!23 = !DIEnumerator(name: "K_OBJ_THREAD_STACK_ELEMENT", value: 11)
!24 = !DIEnumerator(name: "K_OBJ_NET_SOCKET", value: 12)
!25 = !DIEnumerator(name: "K_OBJ_NET_IF", value: 13)
!26 = !DIEnumerator(name: "K_OBJ_SYS_MUTEX", value: 14)
!27 = !DIEnumerator(name: "K_OBJ_FUTEX", value: 15)
!28 = !DIEnumerator(name: "K_OBJ_CONDVAR", value: 16)
!29 = !DIEnumerator(name: "K_OBJ_DRIVER_GPIO", value: 17)
!30 = !DIEnumerator(name: "K_OBJ_DRIVER_PWM", value: 18)
!31 = !DIEnumerator(name: "K_OBJ_DRIVER_RESET", value: 19)
!32 = !DIEnumerator(name: "K_OBJ_DRIVER_UART", value: 20)
!33 = !DIEnumerator(name: "K_OBJ_DRIVER_CRYPTO", value: 21)
!34 = !DIEnumerator(name: "K_OBJ_DRIVER_ADC", value: 22)
!35 = !DIEnumerator(name: "K_OBJ_DRIVER_AUXDISPLAY", value: 23)
!36 = !DIEnumerator(name: "K_OBJ_DRIVER_BBRAM", value: 24)
!37 = !DIEnumerator(name: "K_OBJ_DRIVER_CAN", value: 25)
!38 = !DIEnumerator(name: "K_OBJ_DRIVER_CHARGER", value: 26)
!39 = !DIEnumerator(name: "K_OBJ_DRIVER_COREDUMP", value: 27)
!40 = !DIEnumerator(name: "K_OBJ_DRIVER_COUNTER", value: 28)
!41 = !DIEnumerator(name: "K_OBJ_DRIVER_DAC", value: 29)
!42 = !DIEnumerator(name: "K_OBJ_DRIVER_DAI", value: 30)
!43 = !DIEnumerator(name: "K_OBJ_DRIVER_DMA", value: 31)
!44 = !DIEnumerator(name: "K_OBJ_DRIVER_EDAC", value: 32)
!45 = !DIEnumerator(name: "K_OBJ_DRIVER_EEPROM", value: 33)
!46 = !DIEnumerator(name: "K_OBJ_DRIVER_FUEL_GAUGE_EMUL", value: 34)
!47 = !DIEnumerator(name: "K_OBJ_DRIVER_EMUL_SENSOR_BACKEND_API", value: 35)
!48 = !DIEnumerator(name: "K_OBJ_DRIVER_ENTROPY", value: 36)
!49 = !DIEnumerator(name: "K_OBJ_DRIVER_ESPI", value: 37)
!50 = !DIEnumerator(name: "K_OBJ_DRIVER_ESPI_SAF", value: 38)
!51 = !DIEnumerator(name: "K_OBJ_DRIVER_FLASH", value: 39)
!52 = !DIEnumerator(name: "K_OBJ_DRIVER_FPGA", value: 40)
!53 = !DIEnumerator(name: "K_OBJ_DRIVER_FUEL_GAUGE", value: 41)
!54 = !DIEnumerator(name: "K_OBJ_DRIVER_HWSPINLOCK", value: 42)
!55 = !DIEnumerator(name: "K_OBJ_DRIVER_I2C", value: 43)
!56 = !DIEnumerator(name: "K_OBJ_DRIVER_I2S", value: 44)
!57 = !DIEnumerator(name: "K_OBJ_DRIVER_I3C", value: 45)
!58 = !DIEnumerator(name: "K_OBJ_DRIVER_IPM", value: 46)
!59 = !DIEnumerator(name: "K_OBJ_DRIVER_KSCAN", value: 47)
!60 = !DIEnumerator(name: "K_OBJ_DRIVER_LED", value: 48)
!61 = !DIEnumerator(name: "K_OBJ_DRIVER_MBOX", value: 49)
!62 = !DIEnumerator(name: "K_OBJ_DRIVER_MDIO", value: 50)
!63 = !DIEnumerator(name: "K_OBJ_DRIVER_MIPI_DSI", value: 51)
!64 = !DIEnumerator(name: "K_OBJ_DRIVER_PECI", value: 52)
!65 = !DIEnumerator(name: "K_OBJ_DRIVER_PS2", value: 53)
!66 = !DIEnumerator(name: "K_OBJ_DRIVER_PTP_CLOCK", value: 54)
!67 = !DIEnumerator(name: "K_OBJ_DRIVER_REGULATOR_PARENT", value: 55)
!68 = !DIEnumerator(name: "K_OBJ_DRIVER_REGULATOR", value: 56)
!69 = !DIEnumerator(name: "K_OBJ_DRIVER_RETAINED_MEM", value: 57)
!70 = !DIEnumerator(name: "K_OBJ_DRIVER_RTC", value: 58)
!71 = !DIEnumerator(name: "K_OBJ_DRIVER_SDHC", value: 59)
!72 = !DIEnumerator(name: "K_OBJ_DRIVER_SENSOR", value: 60)
!73 = !DIEnumerator(name: "K_OBJ_DRIVER_SMBUS", value: 61)
!74 = !DIEnumerator(name: "K_OBJ_DRIVER_SPI", value: 62)
!75 = !DIEnumerator(name: "K_OBJ_DRIVER_SYSCON", value: 63)
!76 = !DIEnumerator(name: "K_OBJ_DRIVER_W1", value: 64)
!77 = !DIEnumerator(name: "K_OBJ_DRIVER_WDT", value: 65)
!78 = !DIEnumerator(name: "K_OBJ_DRIVER_CAN_TRANSCEIVER", value: 66)
!79 = !DIEnumerator(name: "K_OBJ_DRIVER_UART_MUX", value: 67)
!80 = !DIEnumerator(name: "K_OBJ_DRIVER_ITS", value: 68)
!81 = !DIEnumerator(name: "K_OBJ_DRIVER_TGPIO", value: 69)
!82 = !DIEnumerator(name: "K_OBJ_DRIVER_PCIE_CTRL", value: 70)
!83 = !DIEnumerator(name: "K_OBJ_DRIVER_SVC", value: 71)
!84 = !DIEnumerator(name: "K_OBJ_DRIVER_BC12_EMUL", value: 72)
!85 = !DIEnumerator(name: "K_OBJ_DRIVER_BC12", value: 73)
!86 = !DIEnumerator(name: "K_OBJ_DRIVER_TCPC", value: 74)
!87 = !DIEnumerator(name: "K_OBJ_DRIVER_IVSHMEM", value: 75)
!88 = !DIEnumerator(name: "K_OBJ_DRIVER_EC_HOST_CMD_BACKEND_API", value: 76)
!89 = !DIEnumerator(name: "K_OBJ_DRIVER_ETHPHY", value: 77)
!90 = !DIEnumerator(name: "K_OBJ_LAST", value: 78)
!91 = !{!92, !93, !94, !97, !105}
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!93 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !95, line: 102, baseType: !96)
!95 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/stdint.h", directory: "")
!96 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 32)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rbnode", file: !99, line: 58, size: 64, elements: !100)
!99 = !DIFile(filename: "include/zephyr/sys/rb.h", directory: "/home/sri/zephyrproject/zephyr")
!100 = !{!101}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !98, file: !99, line: 60, baseType: !102, size: 64)
!102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 64, elements: !103)
!103 = !{!104}
!104 = !DISubrange(count: 2)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !95, line: 62, baseType: !5)
!106 = !{i32 7, !"Dwarf Version", i32 4}
!107 = !{i32 2, !"Debug Info Version", i32 3}
!108 = !{i32 1, !"wchar_size", i32 4}
!109 = !{i32 1, !"static_rwdata", i32 1}
!110 = !{i32 1, !"enumsize_buildattr", i32 1}
!111 = !{i32 1, !"armlib_unavailable", i32 0}
!112 = !{i32 8, !"PIC Level", i32 2}
!113 = !{i32 7, !"PIE Level", i32 2}
!114 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
!115 = distinct !DISubprogram(name: "z_impl_k_object_access_grant", scope: !10, file: !10, line: 223, type: !116, scopeLine: 225, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !222)
!116 = !DISubroutineType(types: !117)
!117 = !{null, !118, !120}
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 32)
!119 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 32)
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_thread", file: !122, line: 250, size: 896, elements: !123)
!122 = !DIFile(filename: "include/zephyr/kernel/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!123 = !{!124, !186, !199, !200, !201, !202, !223}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !121, file: !122, line: 252, baseType: !125, size: 384)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_base", file: !122, line: 58, size: 384, elements: !126)
!126 = !{!127, !147, !155, !156, !157, !170, !172, !173}
!127 = !DIDerivedType(tag: DW_TAG_member, scope: !125, file: !122, line: 61, baseType: !128, size: 64)
!128 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !125, file: !122, line: 61, size: 64, elements: !129)
!129 = !{!130, !146}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_dlist", scope: !128, file: !122, line: 62, baseType: !131, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dnode_t", file: !132, line: 55, baseType: !133)
!132 = !DIFile(filename: "include/zephyr/sys/dlist.h", directory: "/home/sri/zephyrproject/zephyr")
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_dnode", file: !132, line: 37, size: 64, elements: !134)
!134 = !{!135, !141}
!135 = !DIDerivedType(tag: DW_TAG_member, scope: !133, file: !132, line: 38, baseType: !136, size: 32)
!136 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !133, file: !132, line: 38, size: 32, elements: !137)
!137 = !{!138, !140}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !136, file: !132, line: 39, baseType: !139, size: 32)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 32)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !136, file: !132, line: 40, baseType: !139, size: 32)
!141 = !DIDerivedType(tag: DW_TAG_member, scope: !133, file: !132, line: 42, baseType: !142, size: 32, offset: 32)
!142 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !133, file: !132, line: 42, size: 32, elements: !143)
!143 = !{!144, !145}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !142, file: !132, line: 43, baseType: !139, size: 32)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !142, file: !132, line: 44, baseType: !139, size: 32)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_rb", scope: !128, file: !122, line: 63, baseType: !98, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "pended_on", scope: !125, file: !122, line: 69, baseType: !148, size: 32, offset: 64)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 32)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "_wait_q_t", file: !150, line: 243, baseType: !151)
!150 = !DIFile(filename: "include/zephyr/kernel_structs.h", directory: "/home/sri/zephyrproject/zephyr")
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !150, line: 241, size: 64, elements: !152)
!152 = !{!153}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !151, file: !150, line: 242, baseType: !154, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dlist_t", file: !132, line: 51, baseType: !133)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "user_options", scope: !125, file: !122, line: 72, baseType: !105, size: 8, offset: 96)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "thread_state", scope: !125, file: !122, line: 75, baseType: !105, size: 8, offset: 104)
!157 = !DIDerivedType(tag: DW_TAG_member, scope: !125, file: !122, line: 91, baseType: !158, size: 16, offset: 112)
!158 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !125, file: !122, line: 91, size: 16, elements: !159)
!159 = !{!160, !167}
!160 = !DIDerivedType(tag: DW_TAG_member, scope: !158, file: !122, line: 92, baseType: !161, size: 16)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !158, file: !122, line: 92, size: 16, elements: !162)
!162 = !{!163, !166}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !161, file: !122, line: 97, baseType: !164, size: 8)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !95, line: 56, baseType: !165)
!165 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "sched_locked", scope: !161, file: !122, line: 98, baseType: !105, size: 8, offset: 8)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "preempt", scope: !158, file: !122, line: 101, baseType: !168, size: 16)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !95, line: 63, baseType: !169)
!169 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "order_key", scope: !125, file: !122, line: 108, baseType: !171, size: 32, offset: 128)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !95, line: 64, baseType: !96)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "swap_data", scope: !125, file: !122, line: 132, baseType: !92, size: 32, offset: 160)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !125, file: !122, line: 136, baseType: !174, size: 192, offset: 192)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_timeout", file: !150, line: 254, size: 192, elements: !175)
!175 = !{!176, !177, !183}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !174, file: !150, line: 255, baseType: !131, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !174, file: !150, line: 256, baseType: !178, size: 32, offset: 64)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "_timeout_func_t", file: !150, line: 252, baseType: !179)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 32)
!180 = !DISubroutineType(types: !181)
!181 = !{null, !182}
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 32)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "dticks", scope: !174, file: !150, line: 259, baseType: !184, size: 64, offset: 128)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !95, line: 59, baseType: !185)
!185 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "callee_saved", scope: !121, file: !122, line: 255, baseType: !187, size: 288, offset: 384)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_callee_saved", file: !188, line: 25, size: 288, elements: !189)
!188 = !DIFile(filename: "include/zephyr/arch/arm/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!189 = !{!190, !191, !192, !193, !194, !195, !196, !197, !198}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "v1", scope: !187, file: !188, line: 26, baseType: !171, size: 32)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "v2", scope: !187, file: !188, line: 27, baseType: !171, size: 32, offset: 32)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "v3", scope: !187, file: !188, line: 28, baseType: !171, size: 32, offset: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "v4", scope: !187, file: !188, line: 29, baseType: !171, size: 32, offset: 96)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "v5", scope: !187, file: !188, line: 30, baseType: !171, size: 32, offset: 128)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "v6", scope: !187, file: !188, line: 31, baseType: !171, size: 32, offset: 160)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "v7", scope: !187, file: !188, line: 32, baseType: !171, size: 32, offset: 192)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "v8", scope: !187, file: !188, line: 33, baseType: !171, size: 32, offset: 224)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "psp", scope: !187, file: !188, line: 34, baseType: !171, size: 32, offset: 256)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "init_data", scope: !121, file: !122, line: 258, baseType: !92, size: 32, offset: 672)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "join_queue", scope: !121, file: !122, line: 261, baseType: !149, size: 64, offset: 704)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "errno_var", scope: !121, file: !122, line: 302, baseType: !93, size: 32, offset: 768)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "resource_pool", scope: !121, file: !122, line: 333, baseType: !203, size: 32, offset: 800)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 32)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_heap", file: !205, line: 5291, size: 160, elements: !206)
!205 = !DIFile(filename: "include/zephyr/kernel.h", directory: "/home/sri/zephyrproject/zephyr")
!206 = !{!207, !218, !219}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !204, file: !205, line: 5292, baseType: !208, size: 96)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sys_heap", file: !209, line: 56, size: 96, elements: !210)
!209 = !DIFile(filename: "include/zephyr/sys/sys_heap.h", directory: "/home/sri/zephyrproject/zephyr")
!210 = !{!211, !214, !215}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !208, file: !209, line: 57, baseType: !212, size: 32)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 32)
!213 = !DICompositeType(tag: DW_TAG_structure_type, name: "z_heap", file: !209, line: 57, flags: DIFlagFwdDecl)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "init_mem", scope: !208, file: !209, line: 58, baseType: !92, size: 32, offset: 32)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "init_bytes", scope: !208, file: !209, line: 59, baseType: !216, size: 32, offset: 64)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !217, line: 46, baseType: !96)
!217 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/lib/clang/17/include/stddef.h", directory: "")
!218 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !204, file: !205, line: 5293, baseType: !149, size: 64, offset: 96)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !204, file: !205, line: 5294, baseType: !220, offset: 160)
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_spinlock", file: !221, line: 45, elements: !222)
!221 = !DIFile(filename: "include/zephyr/spinlock.h", directory: "/home/sri/zephyrproject/zephyr")
!222 = !{}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !121, file: !122, line: 355, baseType: !224, size: 64, offset: 832)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_arch", file: !188, line: 60, size: 64, elements: !225)
!225 = !{!226, !227}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "basepri", scope: !224, file: !188, line: 63, baseType: !171, size: 32)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "swap_return_value", scope: !224, file: !188, line: 66, baseType: !171, size: 32, offset: 32)
!228 = !DILocalVariable(name: "object", arg: 1, scope: !115, file: !10, line: 223, type: !118)
!229 = !DILocation(line: 223, column: 61, scope: !115)
!230 = !DILocalVariable(name: "thread", arg: 2, scope: !115, file: !10, line: 224, type: !120)
!231 = !DILocation(line: 224, column: 24, scope: !115)
!232 = !DILocation(line: 226, column: 9, scope: !115)
!233 = !DILocation(line: 227, column: 9, scope: !115)
!234 = !DILocation(line: 228, column: 1, scope: !115)
!235 = distinct !DISubprogram(name: "z_impl_k_object_release", scope: !10, file: !10, line: 243, type: !236, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !222)
!236 = !DISubroutineType(types: !237)
!237 = !{null, !118}
!238 = !DILocalVariable(name: "object", arg: 1, scope: !235, file: !10, line: 243, type: !118)
!239 = !DILocation(line: 243, column: 56, scope: !235)
!240 = !DILocation(line: 245, column: 9, scope: !235)
!241 = !DILocation(line: 246, column: 1, scope: !235)
!242 = distinct !DISubprogram(name: "z_impl_k_object_alloc", scope: !10, file: !10, line: 359, type: !243, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !222)
!243 = !DISubroutineType(types: !244)
!244 = !{!92, !9}
!245 = !DILocalVariable(name: "otype", arg: 1, scope: !242, file: !10, line: 359, type: !9)
!246 = !DILocation(line: 359, column: 58, scope: !242)
!247 = !DILocation(line: 361, column: 9, scope: !242)
!248 = !DILocation(line: 363, column: 2, scope: !242)
!249 = distinct !DISubprogram(name: "z_impl_k_object_alloc_size", scope: !10, file: !10, line: 366, type: !250, scopeLine: 368, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !222)
!250 = !DISubroutineType(types: !251)
!251 = !{!92, !9, !216}
!252 = !DILocalVariable(name: "otype", arg: 1, scope: !249, file: !10, line: 366, type: !9)
!253 = !DILocation(line: 366, column: 63, scope: !249)
!254 = !DILocalVariable(name: "size", arg: 2, scope: !249, file: !10, line: 367, type: !216)
!255 = !DILocation(line: 367, column: 13, scope: !249)
!256 = !DILocation(line: 369, column: 9, scope: !249)
!257 = !DILocation(line: 370, column: 9, scope: !249)
!258 = !DILocation(line: 372, column: 2, scope: !249)
!259 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_expires_ticks", scope: !205, file: !205, line: 656, type: !260, scopeLine: 658, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !222)
!260 = !DISubroutineType(types: !261)
!261 = !{!262, !264}
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_ticks_t", file: !263, line: 46, baseType: !184)
!263 = !DIFile(filename: "include/zephyr/sys_clock.h", directory: "/home/sri/zephyrproject/zephyr")
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 32)
!265 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !121)
!266 = !DILocalVariable(name: "t", arg: 1, scope: !259, file: !205, line: 657, type: !264)
!267 = !DILocation(line: 657, column: 30, scope: !259)
!268 = !DILocation(line: 659, column: 28, scope: !259)
!269 = !DILocation(line: 659, column: 31, scope: !259)
!270 = !DILocation(line: 659, column: 36, scope: !259)
!271 = !DILocation(line: 659, column: 9, scope: !259)
!272 = !DILocation(line: 659, column: 2, scope: !259)
!273 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_remaining_ticks", scope: !205, file: !205, line: 671, type: !260, scopeLine: 673, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !222)
!274 = !DILocalVariable(name: "t", arg: 1, scope: !273, file: !205, line: 672, type: !264)
!275 = !DILocation(line: 672, column: 30, scope: !273)
!276 = !DILocation(line: 674, column: 30, scope: !273)
!277 = !DILocation(line: 674, column: 33, scope: !273)
!278 = !DILocation(line: 674, column: 38, scope: !273)
!279 = !DILocation(line: 674, column: 9, scope: !273)
!280 = !DILocation(line: 674, column: 2, scope: !273)
!281 = distinct !DISubprogram(name: "z_impl_k_timer_expires_ticks", scope: !205, file: !205, line: 1634, type: !282, scopeLine: 1636, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !222)
!282 = !DISubroutineType(types: !283)
!283 = !{!262, !284}
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 32)
!285 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !286)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_timer", file: !205, line: 1439, size: 448, elements: !287)
!287 = !{!288, !289, !290, !295, !296, !301, !302}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !286, file: !205, line: 1445, baseType: !174, size: 192)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !286, file: !205, line: 1448, baseType: !149, size: 64, offset: 192)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_fn", scope: !286, file: !205, line: 1451, baseType: !291, size: 32, offset: 256)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 32)
!292 = !DISubroutineType(types: !293)
!293 = !{null, !294}
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 32)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "stop_fn", scope: !286, file: !205, line: 1454, baseType: !291, size: 32, offset: 288)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !286, file: !205, line: 1457, baseType: !297, size: 64, offset: 320)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_timeout_t", file: !263, line: 67, baseType: !298)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !263, line: 65, size: 64, elements: !299)
!299 = !{!300}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "ticks", scope: !298, file: !263, line: 66, baseType: !262, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !286, file: !205, line: 1460, baseType: !171, size: 32, offset: 384)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !286, file: !205, line: 1463, baseType: !92, size: 32, offset: 416)
!303 = !DILocalVariable(name: "timer", arg: 1, scope: !281, file: !205, line: 1635, type: !284)
!304 = !DILocation(line: 1635, column: 34, scope: !281)
!305 = !DILocation(line: 1637, column: 28, scope: !281)
!306 = !DILocation(line: 1637, column: 35, scope: !281)
!307 = !DILocation(line: 1637, column: 9, scope: !281)
!308 = !DILocation(line: 1637, column: 2, scope: !281)
!309 = distinct !DISubprogram(name: "z_impl_k_timer_remaining_ticks", scope: !205, file: !205, line: 1649, type: !282, scopeLine: 1651, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !222)
!310 = !DILocalVariable(name: "timer", arg: 1, scope: !309, file: !205, line: 1650, type: !284)
!311 = !DILocation(line: 1650, column: 34, scope: !309)
!312 = !DILocation(line: 1652, column: 30, scope: !309)
!313 = !DILocation(line: 1652, column: 37, scope: !309)
!314 = !DILocation(line: 1652, column: 9, scope: !309)
!315 = !DILocation(line: 1652, column: 2, scope: !309)
!316 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_set", scope: !205, file: !205, line: 1689, type: !317, scopeLine: 1691, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !222)
!317 = !DISubroutineType(types: !318)
!318 = !{null, !294, !92}
!319 = !DILocalVariable(name: "timer", arg: 1, scope: !316, file: !205, line: 1689, type: !294)
!320 = !DILocation(line: 1689, column: 65, scope: !316)
!321 = !DILocalVariable(name: "user_data", arg: 2, scope: !316, file: !205, line: 1690, type: !92)
!322 = !DILocation(line: 1690, column: 19, scope: !316)
!323 = !DILocation(line: 1692, column: 21, scope: !316)
!324 = !DILocation(line: 1692, column: 2, scope: !316)
!325 = !DILocation(line: 1692, column: 9, scope: !316)
!326 = !DILocation(line: 1692, column: 19, scope: !316)
!327 = !DILocation(line: 1693, column: 1, scope: !316)
!328 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_get", scope: !205, file: !205, line: 1704, type: !329, scopeLine: 1705, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !222)
!329 = !DISubroutineType(types: !330)
!330 = !{!92, !284}
!331 = !DILocalVariable(name: "timer", arg: 1, scope: !328, file: !205, line: 1704, type: !284)
!332 = !DILocation(line: 1704, column: 72, scope: !328)
!333 = !DILocation(line: 1706, column: 9, scope: !328)
!334 = !DILocation(line: 1706, column: 16, scope: !328)
!335 = !DILocation(line: 1706, column: 2, scope: !328)
!336 = distinct !DISubprogram(name: "z_impl_k_queue_is_empty", scope: !205, file: !205, line: 2071, type: !337, scopeLine: 2072, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !222)
!337 = !DISubroutineType(types: !338)
!338 = !{!93, !339}
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 32)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_queue", file: !205, line: 1830, size: 128, elements: !341)
!341 = !{!342, !355, !356}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "data_q", scope: !340, file: !205, line: 1831, baseType: !343, size: 64)
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
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "unative_t", file: !344, line: 40, baseType: !171)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !345, file: !344, line: 55, baseType: !348, size: 32, offset: 32)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !340, file: !205, line: 1832, baseType: !220, offset: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !340, file: !205, line: 1833, baseType: !149, size: 64, offset: 64)
!357 = !DILocalVariable(name: "queue", arg: 1, scope: !336, file: !205, line: 2071, type: !339)
!358 = !DILocation(line: 2071, column: 59, scope: !336)
!359 = !DILocation(line: 2073, column: 35, scope: !336)
!360 = !DILocation(line: 2073, column: 42, scope: !336)
!361 = !DILocation(line: 2073, column: 14, scope: !336)
!362 = !DILocation(line: 2073, column: 9, scope: !336)
!363 = !DILocation(line: 2073, column: 2, scope: !336)
!364 = distinct !DISubprogram(name: "z_impl_k_sem_count_get", scope: !205, file: !205, line: 3209, type: !365, scopeLine: 3210, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !222)
!365 = !DISubroutineType(types: !366)
!366 = !{!96, !367}
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 32)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sem", file: !205, line: 3092, size: 128, elements: !369)
!369 = !{!370, !371, !372}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !368, file: !205, line: 3093, baseType: !149, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !368, file: !205, line: 3094, baseType: !96, size: 32, offset: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !368, file: !205, line: 3095, baseType: !96, size: 32, offset: 96)
!373 = !DILocalVariable(name: "sem", arg: 1, scope: !364, file: !205, line: 3209, type: !367)
!374 = !DILocation(line: 3209, column: 65, scope: !364)
!375 = !DILocation(line: 3211, column: 9, scope: !364)
!376 = !DILocation(line: 3211, column: 14, scope: !364)
!377 = !DILocation(line: 3211, column: 2, scope: !364)
!378 = distinct !DISubprogram(name: "z_impl_k_msgq_num_free_get", scope: !205, file: !205, line: 4649, type: !379, scopeLine: 4650, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !222)
!379 = !DISubroutineType(types: !380)
!380 = !{!171, !381}
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 32)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_msgq", file: !205, line: 4390, size: 320, elements: !383)
!383 = !{!384, !385, !386, !387, !388, !391, !392, !393, !394, !395}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !382, file: !205, line: 4392, baseType: !149, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !382, file: !205, line: 4394, baseType: !220, offset: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "msg_size", scope: !382, file: !205, line: 4396, baseType: !216, size: 32, offset: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !382, file: !205, line: 4398, baseType: !171, size: 32, offset: 96)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_start", scope: !382, file: !205, line: 4400, baseType: !389, size: 32, offset: 128)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 32)
!390 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_end", scope: !382, file: !205, line: 4402, baseType: !389, size: 32, offset: 160)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "read_ptr", scope: !382, file: !205, line: 4404, baseType: !389, size: 32, offset: 192)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "write_ptr", scope: !382, file: !205, line: 4406, baseType: !389, size: 32, offset: 224)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "used_msgs", scope: !382, file: !205, line: 4408, baseType: !171, size: 32, offset: 256)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !382, file: !205, line: 4413, baseType: !105, size: 8, offset: 288)
!396 = !DILocalVariable(name: "msgq", arg: 1, scope: !378, file: !205, line: 4649, type: !381)
!397 = !DILocation(line: 4649, column: 66, scope: !378)
!398 = !DILocation(line: 4651, column: 9, scope: !378)
!399 = !DILocation(line: 4651, column: 15, scope: !378)
!400 = !DILocation(line: 4651, column: 26, scope: !378)
!401 = !DILocation(line: 4651, column: 32, scope: !378)
!402 = !DILocation(line: 4651, column: 24, scope: !378)
!403 = !DILocation(line: 4651, column: 2, scope: !378)
!404 = distinct !DISubprogram(name: "z_impl_k_msgq_num_used_get", scope: !205, file: !205, line: 4665, type: !379, scopeLine: 4666, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !222)
!405 = !DILocalVariable(name: "msgq", arg: 1, scope: !404, file: !205, line: 4665, type: !381)
!406 = !DILocation(line: 4665, column: 66, scope: !404)
!407 = !DILocation(line: 4667, column: 9, scope: !404)
!408 = !DILocation(line: 4667, column: 15, scope: !404)
!409 = !DILocation(line: 4667, column: 2, scope: !404)
!410 = distinct !DISubprogram(name: "z_rb_get_minmax", scope: !4, file: !4, line: 100, type: !411, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !222)
!411 = !DISubroutineType(types: !412)
!412 = !{!97, !413, !105}
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 32)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rbtree", file: !99, line: 91, size: 96, elements: !415)
!415 = !{!416, !417, !423}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !414, file: !99, line: 93, baseType: !97, size: 32)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "lessthan_fn", scope: !414, file: !99, line: 95, baseType: !418, size: 32, offset: 32)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "rb_lessthan_t", file: !99, line: 86, baseType: !419)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 32)
!420 = !DISubroutineType(types: !421)
!421 = !{!422, !97, !97}
!422 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "max_depth", scope: !414, file: !99, line: 97, baseType: !93, size: 32, offset: 64)
!424 = !DILocalVariable(name: "tree", arg: 1, scope: !410, file: !4, line: 100, type: !413)
!425 = !DILocation(line: 100, column: 47, scope: !410)
!426 = !DILocalVariable(name: "side", arg: 2, scope: !410, file: !4, line: 100, type: !105)
!427 = !DILocation(line: 100, column: 61, scope: !410)
!428 = !DILocalVariable(name: "n", scope: !410, file: !4, line: 102, type: !97)
!429 = !DILocation(line: 102, column: 17, scope: !410)
!430 = !DILocation(line: 104, column: 11, scope: !431)
!431 = distinct !DILexicalBlock(scope: !410, file: !4, line: 104, column: 2)
!432 = !DILocation(line: 104, column: 17, scope: !431)
!433 = !DILocation(line: 104, column: 9, scope: !431)
!434 = !DILocation(line: 104, column: 7, scope: !431)
!435 = !DILocation(line: 104, column: 24, scope: !436)
!436 = distinct !DILexicalBlock(scope: !431, file: !4, line: 104, column: 2)
!437 = !DILocation(line: 104, column: 26, scope: !436)
!438 = !DILocation(line: 104, column: 41, scope: !436)
!439 = !DILocation(line: 104, column: 55, scope: !436)
!440 = !DILocation(line: 104, column: 58, scope: !436)
!441 = !DILocation(line: 104, column: 45, scope: !436)
!442 = !DILocation(line: 104, column: 64, scope: !436)
!443 = !DILocation(line: 0, scope: !436)
!444 = !DILocation(line: 104, column: 2, scope: !431)
!445 = !DILocation(line: 107, column: 2, scope: !446)
!446 = distinct !DILexicalBlock(scope: !436, file: !4, line: 105, column: 28)
!447 = !DILocation(line: 105, column: 18, scope: !436)
!448 = !DILocation(line: 105, column: 21, scope: !436)
!449 = !DILocation(line: 105, column: 8, scope: !436)
!450 = !DILocation(line: 105, column: 6, scope: !436)
!451 = !DILocation(line: 104, column: 2, scope: !436)
!452 = distinct !{!452, !444, !453}
!453 = !DILocation(line: 107, column: 2, scope: !431)
!454 = !DILocation(line: 108, column: 9, scope: !410)
!455 = !DILocation(line: 108, column: 2, scope: !410)
!456 = distinct !DISubprogram(name: "get_child", scope: !4, file: !4, line: 21, type: !457, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !222)
!457 = !DISubroutineType(types: !458)
!458 = !{!97, !97, !105}
!459 = !DILocalVariable(name: "n", arg: 1, scope: !456, file: !4, line: 21, type: !97)
!460 = !DILocation(line: 21, column: 48, scope: !456)
!461 = !DILocalVariable(name: "side", arg: 2, scope: !456, file: !4, line: 21, type: !105)
!462 = !DILocation(line: 21, column: 59, scope: !456)
!463 = !DILocation(line: 24, column: 6, scope: !464)
!464 = distinct !DILexicalBlock(scope: !456, file: !4, line: 24, column: 6)
!465 = !DILocation(line: 24, column: 11, scope: !464)
!466 = !DILocation(line: 24, column: 6, scope: !456)
!467 = !DILocation(line: 25, column: 10, scope: !468)
!468 = distinct !DILexicalBlock(scope: !464, file: !4, line: 24, column: 18)
!469 = !DILocation(line: 25, column: 13, scope: !468)
!470 = !DILocation(line: 25, column: 3, scope: !468)
!471 = !DILocalVariable(name: "l", scope: !456, file: !4, line: 28, type: !94)
!472 = !DILocation(line: 28, column: 12, scope: !456)
!473 = !DILocation(line: 28, column: 28, scope: !456)
!474 = !DILocation(line: 28, column: 31, scope: !456)
!475 = !DILocation(line: 28, column: 16, scope: !456)
!476 = !DILocation(line: 30, column: 4, scope: !456)
!477 = !DILocation(line: 31, column: 27, scope: !456)
!478 = !DILocation(line: 31, column: 9, scope: !456)
!479 = !DILocation(line: 31, column: 2, scope: !456)
!480 = !DILocation(line: 32, column: 1, scope: !456)
!481 = distinct !DISubprogram(name: "rb_insert", scope: !4, file: !4, line: 217, type: !482, scopeLine: 218, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !222)
!482 = !DISubroutineType(types: !483)
!483 = !{null, !413, !97}
!484 = !DILocalVariable(name: "tree", arg: 1, scope: !481, file: !4, line: 217, type: !413)
!485 = !DILocation(line: 217, column: 31, scope: !481)
!486 = !DILocalVariable(name: "node", arg: 2, scope: !481, file: !4, line: 217, type: !97)
!487 = !DILocation(line: 217, column: 52, scope: !481)
!488 = !DILocation(line: 219, column: 12, scope: !481)
!489 = !DILocation(line: 219, column: 2, scope: !481)
!490 = !DILocation(line: 220, column: 12, scope: !481)
!491 = !DILocation(line: 220, column: 2, scope: !481)
!492 = !DILocation(line: 222, column: 6, scope: !493)
!493 = distinct !DILexicalBlock(scope: !481, file: !4, line: 222, column: 6)
!494 = !DILocation(line: 222, column: 12, scope: !493)
!495 = !DILocation(line: 222, column: 17, scope: !493)
!496 = !DILocation(line: 222, column: 6, scope: !481)
!497 = !DILocation(line: 223, column: 16, scope: !498)
!498 = distinct !DILexicalBlock(scope: !493, file: !4, line: 222, column: 32)
!499 = !DILocation(line: 223, column: 3, scope: !498)
!500 = !DILocation(line: 223, column: 9, scope: !498)
!501 = !DILocation(line: 223, column: 14, scope: !498)
!502 = !DILocation(line: 224, column: 3, scope: !498)
!503 = !DILocation(line: 224, column: 9, scope: !498)
!504 = !DILocation(line: 224, column: 19, scope: !498)
!505 = !DILocation(line: 225, column: 13, scope: !498)
!506 = !DILocation(line: 225, column: 3, scope: !498)
!507 = !DILocation(line: 226, column: 3, scope: !498)
!508 = !DILocation(line: 232, column: 23, scope: !481)
!509 = !DILocation(line: 232, column: 29, scope: !481)
!510 = !DILocation(line: 232, column: 39, scope: !481)
!511 = !DILocation(line: 232, column: 2, scope: !481)
!512 = !DILocalVariable(name: "__vla_expr0", scope: !481, type: !96, flags: DIFlagArtificial)
!513 = !DILocation(line: 0, scope: !481)
!514 = !DILocalVariable(name: "stack", scope: !481, file: !4, line: 232, type: !515)
!515 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, elements: !516)
!516 = !{!517}
!517 = !DISubrange(count: !512)
!518 = !DILocation(line: 232, column: 17, scope: !481)
!519 = !DILocalVariable(name: "stacksz", scope: !481, file: !4, line: 235, type: !93)
!520 = !DILocation(line: 235, column: 6, scope: !481)
!521 = !DILocation(line: 235, column: 31, scope: !481)
!522 = !DILocation(line: 235, column: 37, scope: !481)
!523 = !DILocation(line: 235, column: 16, scope: !481)
!524 = !DILocalVariable(name: "parent", scope: !481, file: !4, line: 237, type: !97)
!525 = !DILocation(line: 237, column: 17, scope: !481)
!526 = !DILocation(line: 237, column: 32, scope: !481)
!527 = !DILocation(line: 237, column: 40, scope: !481)
!528 = !DILocation(line: 237, column: 26, scope: !481)
!529 = !DILocalVariable(name: "side", scope: !481, file: !4, line: 239, type: !105)
!530 = !DILocation(line: 239, column: 10, scope: !481)
!531 = !DILocation(line: 239, column: 17, scope: !481)
!532 = !DILocation(line: 239, column: 23, scope: !481)
!533 = !DILocation(line: 239, column: 35, scope: !481)
!534 = !DILocation(line: 239, column: 41, scope: !481)
!535 = !DILocation(line: 241, column: 12, scope: !481)
!536 = !DILocation(line: 241, column: 20, scope: !481)
!537 = !DILocation(line: 241, column: 26, scope: !481)
!538 = !DILocation(line: 241, column: 2, scope: !481)
!539 = !DILocation(line: 242, column: 12, scope: !481)
!540 = !DILocation(line: 242, column: 2, scope: !481)
!541 = !DILocation(line: 244, column: 21, scope: !481)
!542 = !DILocation(line: 244, column: 15, scope: !481)
!543 = !DILocation(line: 244, column: 2, scope: !481)
!544 = !DILocation(line: 244, column: 19, scope: !481)
!545 = !DILocation(line: 245, column: 23, scope: !481)
!546 = !DILocation(line: 245, column: 2, scope: !481)
!547 = !DILocation(line: 247, column: 6, scope: !548)
!548 = distinct !DILexicalBlock(scope: !481, file: !4, line: 247, column: 6)
!549 = !DILocation(line: 247, column: 16, scope: !548)
!550 = !DILocation(line: 247, column: 22, scope: !548)
!551 = !DILocation(line: 247, column: 14, scope: !548)
!552 = !DILocation(line: 247, column: 6, scope: !481)
!553 = !DILocation(line: 248, column: 21, scope: !554)
!554 = distinct !DILexicalBlock(scope: !548, file: !4, line: 247, column: 33)
!555 = !DILocation(line: 248, column: 3, scope: !554)
!556 = !DILocation(line: 248, column: 9, scope: !554)
!557 = !DILocation(line: 248, column: 19, scope: !554)
!558 = !DILocation(line: 249, column: 2, scope: !554)
!559 = !DILocation(line: 252, column: 15, scope: !481)
!560 = !DILocation(line: 252, column: 2, scope: !481)
!561 = !DILocation(line: 252, column: 8, scope: !481)
!562 = !DILocation(line: 252, column: 13, scope: !481)
!563 = !DILocation(line: 254, column: 1, scope: !481)
!564 = distinct !DISubprogram(name: "set_child", scope: !4, file: !4, line: 34, type: !565, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !222)
!565 = !DISubroutineType(types: !566)
!566 = !{null, !97, !105, !92}
!567 = !DILocalVariable(name: "n", arg: 1, scope: !564, file: !4, line: 34, type: !97)
!568 = !DILocation(line: 34, column: 38, scope: !564)
!569 = !DILocalVariable(name: "side", arg: 2, scope: !564, file: !4, line: 34, type: !105)
!570 = !DILocation(line: 34, column: 49, scope: !564)
!571 = !DILocalVariable(name: "val", arg: 3, scope: !564, file: !4, line: 34, type: !92)
!572 = !DILocation(line: 34, column: 61, scope: !564)
!573 = !DILocation(line: 37, column: 6, scope: !574)
!574 = distinct !DILexicalBlock(scope: !564, file: !4, line: 37, column: 6)
!575 = !DILocation(line: 37, column: 11, scope: !574)
!576 = !DILocation(line: 37, column: 6, scope: !564)
!577 = !DILocation(line: 38, column: 20, scope: !578)
!578 = distinct !DILexicalBlock(scope: !574, file: !4, line: 37, column: 18)
!579 = !DILocation(line: 38, column: 3, scope: !578)
!580 = !DILocation(line: 38, column: 6, scope: !578)
!581 = !DILocation(line: 38, column: 18, scope: !578)
!582 = !DILocation(line: 39, column: 2, scope: !578)
!583 = !DILocalVariable(name: "old", scope: !584, file: !4, line: 40, type: !94)
!584 = distinct !DILexicalBlock(scope: !574, file: !4, line: 39, column: 9)
!585 = !DILocation(line: 40, column: 13, scope: !584)
!586 = !DILocation(line: 40, column: 31, scope: !584)
!587 = !DILocation(line: 40, column: 34, scope: !584)
!588 = !DILocation(line: 40, column: 19, scope: !584)
!589 = !DILocalVariable(name: "new", scope: !584, file: !4, line: 41, type: !94)
!590 = !DILocation(line: 41, column: 13, scope: !584)
!591 = !DILocation(line: 41, column: 31, scope: !584)
!592 = !DILocation(line: 41, column: 19, scope: !584)
!593 = !DILocation(line: 43, column: 30, scope: !584)
!594 = !DILocation(line: 43, column: 37, scope: !584)
!595 = !DILocation(line: 43, column: 41, scope: !584)
!596 = !DILocation(line: 43, column: 34, scope: !584)
!597 = !DILocation(line: 43, column: 20, scope: !584)
!598 = !DILocation(line: 43, column: 3, scope: !584)
!599 = !DILocation(line: 43, column: 6, scope: !584)
!600 = !DILocation(line: 43, column: 18, scope: !584)
!601 = !DILocation(line: 45, column: 1, scope: !564)
!602 = distinct !DISubprogram(name: "set_color", scope: !4, file: !4, line: 63, type: !603, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !222)
!603 = !DISubroutineType(types: !604)
!604 = !{null, !97, !3}
!605 = !DILocalVariable(name: "n", arg: 1, scope: !602, file: !4, line: 63, type: !97)
!606 = !DILocation(line: 63, column: 38, scope: !602)
!607 = !DILocalVariable(name: "color", arg: 2, scope: !602, file: !4, line: 63, type: !3)
!608 = !DILocation(line: 63, column: 55, scope: !602)
!609 = !DILocalVariable(name: "p", scope: !602, file: !4, line: 67, type: !610)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 32)
!611 = !DILocation(line: 67, column: 13, scope: !602)
!612 = !DILocation(line: 67, column: 27, scope: !602)
!613 = !DILocation(line: 67, column: 30, scope: !602)
!614 = !DILocation(line: 69, column: 9, scope: !602)
!615 = !DILocation(line: 69, column: 8, scope: !602)
!616 = !DILocation(line: 69, column: 11, scope: !602)
!617 = !DILocation(line: 69, column: 30, scope: !602)
!618 = !DILocation(line: 69, column: 21, scope: !602)
!619 = !DILocation(line: 69, column: 19, scope: !602)
!620 = !DILocation(line: 69, column: 3, scope: !602)
!621 = !DILocation(line: 69, column: 5, scope: !602)
!622 = !DILocation(line: 70, column: 1, scope: !602)
!623 = distinct !DISubprogram(name: "find_and_stack", scope: !4, file: !4, line: 79, type: !624, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !222)
!624 = !DISubroutineType(types: !625)
!625 = !{!93, !413, !97, !626}
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 32)
!627 = !DILocalVariable(name: "tree", arg: 1, scope: !623, file: !4, line: 79, type: !413)
!628 = !DILocation(line: 79, column: 42, scope: !623)
!629 = !DILocalVariable(name: "node", arg: 2, scope: !623, file: !4, line: 79, type: !97)
!630 = !DILocation(line: 79, column: 63, scope: !623)
!631 = !DILocalVariable(name: "stack", arg: 3, scope: !623, file: !4, line: 80, type: !626)
!632 = !DILocation(line: 80, column: 22, scope: !623)
!633 = !DILocalVariable(name: "sz", scope: !623, file: !4, line: 82, type: !93)
!634 = !DILocation(line: 82, column: 6, scope: !623)
!635 = !DILocation(line: 84, column: 16, scope: !623)
!636 = !DILocation(line: 84, column: 22, scope: !623)
!637 = !DILocation(line: 84, column: 2, scope: !623)
!638 = !DILocation(line: 84, column: 10, scope: !623)
!639 = !DILocation(line: 84, column: 14, scope: !623)
!640 = !DILocation(line: 86, column: 2, scope: !623)
!641 = !DILocation(line: 86, column: 9, scope: !623)
!642 = !DILocation(line: 86, column: 15, scope: !623)
!643 = !DILocation(line: 86, column: 18, scope: !623)
!644 = !DILocation(line: 86, column: 26, scope: !623)
!645 = !DILocation(line: 86, column: 23, scope: !623)
!646 = !DILocalVariable(name: "side", scope: !647, file: !4, line: 87, type: !105)
!647 = distinct !DILexicalBlock(scope: !623, file: !4, line: 86, column: 32)
!648 = !DILocation(line: 87, column: 11, scope: !647)
!649 = !DILocation(line: 87, column: 18, scope: !647)
!650 = !DILocation(line: 87, column: 24, scope: !647)
!651 = !DILocation(line: 87, column: 36, scope: !647)
!652 = !DILocation(line: 87, column: 42, scope: !647)
!653 = !DILocation(line: 87, column: 48, scope: !647)
!654 = !DILocation(line: 87, column: 51, scope: !647)
!655 = !DILocalVariable(name: "ch", scope: !647, file: !4, line: 88, type: !97)
!656 = !DILocation(line: 88, column: 18, scope: !647)
!657 = !DILocation(line: 88, column: 33, scope: !647)
!658 = !DILocation(line: 88, column: 39, scope: !647)
!659 = !DILocation(line: 88, column: 42, scope: !647)
!660 = !DILocation(line: 88, column: 48, scope: !647)
!661 = !DILocation(line: 88, column: 23, scope: !647)
!662 = !DILocation(line: 90, column: 7, scope: !663)
!663 = distinct !DILexicalBlock(scope: !647, file: !4, line: 90, column: 7)
!664 = !DILocation(line: 90, column: 10, scope: !663)
!665 = !DILocation(line: 90, column: 7, scope: !647)
!666 = !DILocation(line: 91, column: 18, scope: !667)
!667 = distinct !DILexicalBlock(scope: !663, file: !4, line: 90, column: 25)
!668 = !DILocation(line: 91, column: 4, scope: !667)
!669 = !DILocation(line: 91, column: 12, scope: !667)
!670 = !DILocation(line: 91, column: 16, scope: !667)
!671 = !DILocation(line: 92, column: 3, scope: !667)
!672 = !DILocation(line: 93, column: 4, scope: !673)
!673 = distinct !DILexicalBlock(scope: !663, file: !4, line: 92, column: 10)
!674 = distinct !{!674, !640, !675}
!675 = !DILocation(line: 95, column: 2, scope: !623)
!676 = !DILocation(line: 97, column: 9, scope: !623)
!677 = !DILocation(line: 97, column: 2, scope: !623)
!678 = distinct !DISubprogram(name: "fix_extra_red", scope: !4, file: !4, line: 155, type: !679, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !222)
!679 = !DISubroutineType(types: !680)
!680 = !{null, !626, !93}
!681 = !DILocalVariable(name: "stack", arg: 1, scope: !678, file: !4, line: 155, type: !626)
!682 = !DILocation(line: 155, column: 43, scope: !678)
!683 = !DILocalVariable(name: "stacksz", arg: 2, scope: !678, file: !4, line: 155, type: !93)
!684 = !DILocation(line: 155, column: 54, scope: !678)
!685 = !DILocation(line: 157, column: 2, scope: !678)
!686 = !DILocation(line: 157, column: 9, scope: !678)
!687 = !DILocation(line: 157, column: 17, scope: !678)
!688 = !DILocalVariable(name: "node", scope: !689, file: !4, line: 158, type: !97)
!689 = distinct !DILexicalBlock(scope: !678, file: !4, line: 157, column: 22)
!690 = !DILocation(line: 158, column: 18, scope: !689)
!691 = !DILocation(line: 158, column: 25, scope: !689)
!692 = !DILocation(line: 158, column: 31, scope: !689)
!693 = !DILocation(line: 158, column: 39, scope: !689)
!694 = !DILocalVariable(name: "parent", scope: !689, file: !4, line: 159, type: !97)
!695 = !DILocation(line: 159, column: 18, scope: !689)
!696 = !DILocation(line: 159, column: 27, scope: !689)
!697 = !DILocation(line: 159, column: 33, scope: !689)
!698 = !DILocation(line: 159, column: 41, scope: !689)
!699 = !DILocation(line: 167, column: 16, scope: !700)
!700 = distinct !DILexicalBlock(scope: !689, file: !4, line: 167, column: 7)
!701 = !DILocation(line: 167, column: 7, scope: !700)
!702 = !DILocation(line: 167, column: 7, scope: !689)
!703 = !DILocation(line: 168, column: 4, scope: !704)
!704 = distinct !DILexicalBlock(scope: !700, file: !4, line: 167, column: 25)
!705 = !DILocalVariable(name: "grandparent", scope: !689, file: !4, line: 176, type: !97)
!706 = !DILocation(line: 176, column: 18, scope: !689)
!707 = !DILocation(line: 176, column: 32, scope: !689)
!708 = !DILocation(line: 176, column: 38, scope: !689)
!709 = !DILocation(line: 176, column: 46, scope: !689)
!710 = !DILocalVariable(name: "side", scope: !689, file: !4, line: 177, type: !105)
!711 = !DILocation(line: 177, column: 11, scope: !689)
!712 = !DILocation(line: 177, column: 27, scope: !689)
!713 = !DILocation(line: 177, column: 40, scope: !689)
!714 = !DILocation(line: 177, column: 18, scope: !689)
!715 = !DILocalVariable(name: "aunt", scope: !689, file: !4, line: 178, type: !97)
!716 = !DILocation(line: 178, column: 18, scope: !689)
!717 = !DILocation(line: 178, column: 35, scope: !689)
!718 = !DILocation(line: 179, column: 8, scope: !689)
!719 = !DILocation(line: 179, column: 13, scope: !689)
!720 = !DILocation(line: 179, column: 7, scope: !689)
!721 = !DILocation(line: 178, column: 25, scope: !689)
!722 = !DILocation(line: 181, column: 8, scope: !723)
!723 = distinct !DILexicalBlock(scope: !689, file: !4, line: 181, column: 7)
!724 = !DILocation(line: 181, column: 13, scope: !723)
!725 = !DILocation(line: 181, column: 28, scope: !723)
!726 = !DILocation(line: 181, column: 38, scope: !723)
!727 = !DILocation(line: 181, column: 31, scope: !723)
!728 = !DILocation(line: 181, column: 7, scope: !689)
!729 = !DILocation(line: 182, column: 14, scope: !730)
!730 = distinct !DILexicalBlock(scope: !723, file: !4, line: 181, column: 45)
!731 = !DILocation(line: 182, column: 4, scope: !730)
!732 = !DILocation(line: 183, column: 14, scope: !730)
!733 = !DILocation(line: 183, column: 4, scope: !730)
!734 = !DILocation(line: 184, column: 14, scope: !730)
!735 = !DILocation(line: 184, column: 4, scope: !730)
!736 = !DILocation(line: 190, column: 12, scope: !730)
!737 = !DILocation(line: 191, column: 4, scope: !730)
!738 = distinct !{!738, !685, !739}
!739 = !DILocation(line: 209, column: 2, scope: !678)
!740 = !DILocalVariable(name: "parent_side", scope: !689, file: !4, line: 198, type: !105)
!741 = !DILocation(line: 198, column: 11, scope: !689)
!742 = !DILocation(line: 198, column: 34, scope: !689)
!743 = !DILocation(line: 198, column: 42, scope: !689)
!744 = !DILocation(line: 198, column: 25, scope: !689)
!745 = !DILocation(line: 200, column: 7, scope: !746)
!746 = distinct !DILexicalBlock(scope: !689, file: !4, line: 200, column: 7)
!747 = !DILocation(line: 200, column: 22, scope: !746)
!748 = !DILocation(line: 200, column: 19, scope: !746)
!749 = !DILocation(line: 200, column: 7, scope: !689)
!750 = !DILocation(line: 201, column: 11, scope: !751)
!751 = distinct !DILexicalBlock(scope: !746, file: !4, line: 200, column: 28)
!752 = !DILocation(line: 201, column: 18, scope: !751)
!753 = !DILocation(line: 201, column: 4, scope: !751)
!754 = !DILocation(line: 202, column: 3, scope: !751)
!755 = !DILocation(line: 205, column: 10, scope: !689)
!756 = !DILocation(line: 205, column: 17, scope: !689)
!757 = !DILocation(line: 205, column: 25, scope: !689)
!758 = !DILocation(line: 205, column: 3, scope: !689)
!759 = !DILocation(line: 206, column: 13, scope: !689)
!760 = !DILocation(line: 206, column: 19, scope: !689)
!761 = !DILocation(line: 206, column: 27, scope: !689)
!762 = !DILocation(line: 206, column: 3, scope: !689)
!763 = !DILocation(line: 207, column: 13, scope: !689)
!764 = !DILocation(line: 207, column: 19, scope: !689)
!765 = !DILocation(line: 207, column: 27, scope: !689)
!766 = !DILocation(line: 207, column: 3, scope: !689)
!767 = !DILocation(line: 208, column: 3, scope: !689)
!768 = !DILocation(line: 214, column: 12, scope: !678)
!769 = !DILocation(line: 214, column: 2, scope: !678)
!770 = !DILocation(line: 215, column: 1, scope: !678)
!771 = distinct !DISubprogram(name: "rb_remove", scope: !4, file: !4, line: 367, type: !482, scopeLine: 368, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !222)
!772 = !DILocalVariable(name: "tree", arg: 1, scope: !771, file: !4, line: 367, type: !413)
!773 = !DILocation(line: 367, column: 31, scope: !771)
!774 = !DILocalVariable(name: "node", arg: 2, scope: !771, file: !4, line: 367, type: !97)
!775 = !DILocation(line: 367, column: 52, scope: !771)
!776 = !DILocalVariable(name: "tmp", scope: !771, file: !4, line: 369, type: !97)
!777 = !DILocation(line: 369, column: 17, scope: !771)
!778 = !DILocation(line: 373, column: 23, scope: !771)
!779 = !DILocation(line: 373, column: 29, scope: !771)
!780 = !DILocation(line: 373, column: 39, scope: !771)
!781 = !DILocation(line: 373, column: 2, scope: !771)
!782 = !DILocalVariable(name: "__vla_expr0", scope: !771, type: !96, flags: DIFlagArtificial)
!783 = !DILocation(line: 0, scope: !771)
!784 = !DILocalVariable(name: "stack", scope: !771, file: !4, line: 373, type: !785)
!785 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, elements: !786)
!786 = !{!787}
!787 = !DISubrange(count: !782)
!788 = !DILocation(line: 373, column: 17, scope: !771)
!789 = !DILocalVariable(name: "stacksz", scope: !771, file: !4, line: 376, type: !93)
!790 = !DILocation(line: 376, column: 6, scope: !771)
!791 = !DILocation(line: 376, column: 31, scope: !771)
!792 = !DILocation(line: 376, column: 37, scope: !771)
!793 = !DILocation(line: 376, column: 16, scope: !771)
!794 = !DILocation(line: 378, column: 6, scope: !795)
!795 = distinct !DILexicalBlock(scope: !771, file: !4, line: 378, column: 6)
!796 = !DILocation(line: 378, column: 20, scope: !795)
!797 = !DILocation(line: 378, column: 28, scope: !795)
!798 = !DILocation(line: 378, column: 14, scope: !795)
!799 = !DILocation(line: 378, column: 11, scope: !795)
!800 = !DILocation(line: 378, column: 6, scope: !771)
!801 = !DILocation(line: 379, column: 3, scope: !802)
!802 = distinct !DILexicalBlock(scope: !795, file: !4, line: 378, column: 34)
!803 = !DILocation(line: 387, column: 17, scope: !804)
!804 = distinct !DILexicalBlock(scope: !771, file: !4, line: 387, column: 6)
!805 = !DILocation(line: 387, column: 7, scope: !804)
!806 = !DILocation(line: 387, column: 27, scope: !804)
!807 = !DILocation(line: 387, column: 42, scope: !804)
!808 = !DILocation(line: 387, column: 56, scope: !804)
!809 = !DILocation(line: 387, column: 46, scope: !804)
!810 = !DILocation(line: 387, column: 66, scope: !804)
!811 = !DILocation(line: 387, column: 6, scope: !771)
!812 = !DILocalVariable(name: "stacksz0", scope: !813, file: !4, line: 388, type: !93)
!813 = distinct !DILexicalBlock(scope: !804, file: !4, line: 387, column: 82)
!814 = !DILocation(line: 388, column: 7, scope: !813)
!815 = !DILocation(line: 388, column: 18, scope: !813)
!816 = !DILocalVariable(name: "hiparent", scope: !813, file: !4, line: 389, type: !97)
!817 = !DILocation(line: 389, column: 18, scope: !813)
!818 = !DILocalVariable(name: "loparent", scope: !813, file: !4, line: 389, type: !97)
!819 = !DILocation(line: 389, column: 29, scope: !813)
!820 = !DILocalVariable(name: "node2", scope: !813, file: !4, line: 390, type: !97)
!821 = !DILocation(line: 390, column: 18, scope: !813)
!822 = !DILocation(line: 390, column: 36, scope: !813)
!823 = !DILocation(line: 390, column: 26, scope: !813)
!824 = !DILocation(line: 392, column: 15, scope: !813)
!825 = !DILocation(line: 392, column: 23, scope: !813)
!826 = !DILocation(line: 392, column: 14, scope: !813)
!827 = !DILocation(line: 392, column: 36, scope: !813)
!828 = !DILocation(line: 392, column: 44, scope: !813)
!829 = !DILocation(line: 392, column: 30, scope: !813)
!830 = !DILocation(line: 392, column: 12, scope: !813)
!831 = !DILocation(line: 393, column: 22, scope: !813)
!832 = !DILocation(line: 393, column: 16, scope: !813)
!833 = !DILocation(line: 393, column: 3, scope: !813)
!834 = !DILocation(line: 393, column: 20, scope: !813)
!835 = !DILocation(line: 394, column: 3, scope: !813)
!836 = !DILocation(line: 394, column: 20, scope: !813)
!837 = !DILocation(line: 394, column: 10, scope: !813)
!838 = !DILocation(line: 394, column: 31, scope: !813)
!839 = !DILocation(line: 395, column: 22, scope: !840)
!840 = distinct !DILexicalBlock(scope: !813, file: !4, line: 394, column: 46)
!841 = !DILocation(line: 395, column: 12, scope: !840)
!842 = !DILocation(line: 395, column: 10, scope: !840)
!843 = !DILocation(line: 396, column: 23, scope: !840)
!844 = !DILocation(line: 396, column: 17, scope: !840)
!845 = !DILocation(line: 396, column: 4, scope: !840)
!846 = !DILocation(line: 396, column: 21, scope: !840)
!847 = distinct !{!847, !835, !848}
!848 = !DILocation(line: 397, column: 3, scope: !813)
!849 = !DILocation(line: 399, column: 20, scope: !813)
!850 = !DILocation(line: 399, column: 28, scope: !813)
!851 = !DILocation(line: 399, column: 14, scope: !813)
!852 = !DILocation(line: 399, column: 12, scope: !813)
!853 = !DILocation(line: 417, column: 7, scope: !854)
!854 = distinct !DILexicalBlock(scope: !813, file: !4, line: 417, column: 7)
!855 = !DILocation(line: 417, column: 16, scope: !854)
!856 = !DILocation(line: 417, column: 7, scope: !813)
!857 = !DILocation(line: 418, column: 14, scope: !858)
!858 = distinct !DILexicalBlock(scope: !854, file: !4, line: 417, column: 31)
!859 = !DILocation(line: 418, column: 33, scope: !858)
!860 = !DILocation(line: 418, column: 43, scope: !858)
!861 = !DILocation(line: 418, column: 24, scope: !858)
!862 = !DILocation(line: 418, column: 50, scope: !858)
!863 = !DILocation(line: 418, column: 4, scope: !858)
!864 = !DILocation(line: 419, column: 3, scope: !858)
!865 = !DILocation(line: 420, column: 17, scope: !866)
!866 = distinct !DILexicalBlock(scope: !854, file: !4, line: 419, column: 10)
!867 = !DILocation(line: 420, column: 4, scope: !866)
!868 = !DILocation(line: 420, column: 10, scope: !866)
!869 = !DILocation(line: 420, column: 15, scope: !866)
!870 = !DILocation(line: 423, column: 7, scope: !871)
!871 = distinct !DILexicalBlock(scope: !813, file: !4, line: 423, column: 7)
!872 = !DILocation(line: 423, column: 19, scope: !871)
!873 = !DILocation(line: 423, column: 16, scope: !871)
!874 = !DILocation(line: 423, column: 7, scope: !813)
!875 = !DILocation(line: 424, column: 14, scope: !876)
!876 = distinct !DILexicalBlock(scope: !871, file: !4, line: 423, column: 25)
!877 = !DILocation(line: 424, column: 34, scope: !876)
!878 = !DILocation(line: 424, column: 24, scope: !876)
!879 = !DILocation(line: 424, column: 4, scope: !876)
!880 = !DILocation(line: 425, column: 14, scope: !876)
!881 = !DILocation(line: 425, column: 25, scope: !876)
!882 = !DILocation(line: 425, column: 4, scope: !876)
!883 = !DILocation(line: 426, column: 3, scope: !876)
!884 = !DILocation(line: 427, column: 14, scope: !885)
!885 = distinct !DILexicalBlock(scope: !871, file: !4, line: 426, column: 10)
!886 = !DILocation(line: 427, column: 33, scope: !885)
!887 = !DILocation(line: 427, column: 43, scope: !885)
!888 = !DILocation(line: 427, column: 24, scope: !885)
!889 = !DILocation(line: 427, column: 51, scope: !885)
!890 = !DILocation(line: 427, column: 4, scope: !885)
!891 = !DILocation(line: 428, column: 20, scope: !885)
!892 = !DILocation(line: 428, column: 10, scope: !885)
!893 = !DILocation(line: 428, column: 8, scope: !885)
!894 = !DILocation(line: 429, column: 14, scope: !885)
!895 = !DILocation(line: 429, column: 34, scope: !885)
!896 = !DILocation(line: 429, column: 24, scope: !885)
!897 = !DILocation(line: 429, column: 4, scope: !885)
!898 = !DILocation(line: 430, column: 14, scope: !885)
!899 = !DILocation(line: 430, column: 25, scope: !885)
!900 = !DILocation(line: 430, column: 4, scope: !885)
!901 = !DILocation(line: 433, column: 13, scope: !813)
!902 = !DILocation(line: 433, column: 34, scope: !813)
!903 = !DILocation(line: 433, column: 24, scope: !813)
!904 = !DILocation(line: 433, column: 3, scope: !813)
!905 = !DILocation(line: 434, column: 13, scope: !813)
!906 = !DILocation(line: 434, column: 3, scope: !813)
!907 = !DILocation(line: 436, column: 15, scope: !813)
!908 = !DILocation(line: 436, column: 24, scope: !813)
!909 = !DILocation(line: 436, column: 9, scope: !813)
!910 = !DILocation(line: 436, column: 7, scope: !813)
!911 = !DILocation(line: 437, column: 31, scope: !813)
!912 = !DILocation(line: 437, column: 39, scope: !813)
!913 = !DILocation(line: 437, column: 25, scope: !813)
!914 = !DILocation(line: 437, column: 9, scope: !813)
!915 = !DILocation(line: 437, column: 18, scope: !813)
!916 = !DILocation(line: 437, column: 3, scope: !813)
!917 = !DILocation(line: 437, column: 23, scope: !813)
!918 = !DILocation(line: 438, column: 24, scope: !813)
!919 = !DILocation(line: 438, column: 9, scope: !813)
!920 = !DILocation(line: 438, column: 17, scope: !813)
!921 = !DILocation(line: 438, column: 3, scope: !813)
!922 = !DILocation(line: 438, column: 22, scope: !813)
!923 = !DILocalVariable(name: "ctmp", scope: !813, file: !4, line: 440, type: !3)
!924 = !DILocation(line: 440, column: 17, scope: !813)
!925 = !DILocation(line: 440, column: 34, scope: !813)
!926 = !DILocation(line: 440, column: 24, scope: !813)
!927 = !DILocation(line: 442, column: 13, scope: !813)
!928 = !DILocation(line: 442, column: 29, scope: !813)
!929 = !DILocation(line: 442, column: 19, scope: !813)
!930 = !DILocation(line: 442, column: 3, scope: !813)
!931 = !DILocation(line: 443, column: 13, scope: !813)
!932 = !DILocation(line: 443, column: 20, scope: !813)
!933 = !DILocation(line: 443, column: 3, scope: !813)
!934 = !DILocation(line: 444, column: 2, scope: !813)
!935 = !DILocalVariable(name: "child", scope: !771, file: !4, line: 449, type: !97)
!936 = !DILocation(line: 449, column: 17, scope: !771)
!937 = !DILocation(line: 449, column: 35, scope: !771)
!938 = !DILocation(line: 449, column: 25, scope: !771)
!939 = !DILocation(line: 451, column: 6, scope: !940)
!940 = distinct !DILexicalBlock(scope: !771, file: !4, line: 451, column: 6)
!941 = !DILocation(line: 451, column: 12, scope: !940)
!942 = !DILocation(line: 451, column: 6, scope: !771)
!943 = !DILocation(line: 452, column: 21, scope: !944)
!944 = distinct !DILexicalBlock(scope: !940, file: !4, line: 451, column: 27)
!945 = !DILocation(line: 452, column: 11, scope: !944)
!946 = !DILocation(line: 452, column: 9, scope: !944)
!947 = !DILocation(line: 453, column: 2, scope: !944)
!948 = !DILocation(line: 456, column: 6, scope: !949)
!949 = distinct !DILexicalBlock(scope: !771, file: !4, line: 456, column: 6)
!950 = !DILocation(line: 456, column: 14, scope: !949)
!951 = !DILocation(line: 456, column: 6, scope: !771)
!952 = !DILocation(line: 457, column: 16, scope: !953)
!953 = distinct !DILexicalBlock(scope: !949, file: !4, line: 456, column: 19)
!954 = !DILocation(line: 457, column: 3, scope: !953)
!955 = !DILocation(line: 457, column: 9, scope: !953)
!956 = !DILocation(line: 457, column: 14, scope: !953)
!957 = !DILocation(line: 458, column: 7, scope: !958)
!958 = distinct !DILexicalBlock(scope: !953, file: !4, line: 458, column: 7)
!959 = !DILocation(line: 458, column: 13, scope: !958)
!960 = !DILocation(line: 458, column: 7, scope: !953)
!961 = !DILocation(line: 459, column: 14, scope: !962)
!962 = distinct !DILexicalBlock(scope: !958, file: !4, line: 458, column: 28)
!963 = !DILocation(line: 459, column: 4, scope: !962)
!964 = !DILocation(line: 460, column: 3, scope: !962)
!965 = !DILocation(line: 461, column: 4, scope: !966)
!966 = distinct !DILexicalBlock(scope: !958, file: !4, line: 460, column: 10)
!967 = !DILocation(line: 461, column: 10, scope: !966)
!968 = !DILocation(line: 461, column: 20, scope: !966)
!969 = !DILocation(line: 463, column: 3, scope: !953)
!970 = !DILocalVariable(name: "parent", scope: !771, file: !4, line: 466, type: !97)
!971 = !DILocation(line: 466, column: 17, scope: !771)
!972 = !DILocation(line: 466, column: 32, scope: !771)
!973 = !DILocation(line: 466, column: 40, scope: !771)
!974 = !DILocation(line: 466, column: 26, scope: !771)
!975 = !DILocation(line: 473, column: 6, scope: !976)
!976 = distinct !DILexicalBlock(scope: !771, file: !4, line: 473, column: 6)
!977 = !DILocation(line: 473, column: 12, scope: !976)
!978 = !DILocation(line: 473, column: 6, scope: !771)
!979 = !DILocation(line: 474, column: 16, scope: !980)
!980 = distinct !DILexicalBlock(scope: !981, file: !4, line: 474, column: 7)
!981 = distinct !DILexicalBlock(scope: !976, file: !4, line: 473, column: 27)
!982 = !DILocation(line: 474, column: 7, scope: !980)
!983 = !DILocation(line: 474, column: 7, scope: !981)
!984 = !DILocation(line: 475, column: 29, scope: !985)
!985 = distinct !DILexicalBlock(scope: !980, file: !4, line: 474, column: 23)
!986 = !DILocation(line: 475, column: 38, scope: !985)
!987 = !DILocation(line: 475, column: 4, scope: !985)
!988 = !DILocation(line: 476, column: 3, scope: !985)
!989 = !DILocation(line: 478, column: 14, scope: !990)
!990 = distinct !DILexicalBlock(scope: !980, file: !4, line: 476, column: 10)
!991 = !DILocation(line: 478, column: 31, scope: !990)
!992 = !DILocation(line: 478, column: 39, scope: !990)
!993 = !DILocation(line: 478, column: 22, scope: !990)
!994 = !DILocation(line: 478, column: 4, scope: !990)
!995 = !DILocation(line: 480, column: 2, scope: !981)
!996 = !DILocation(line: 481, column: 13, scope: !997)
!997 = distinct !DILexicalBlock(scope: !976, file: !4, line: 480, column: 9)
!998 = !DILocation(line: 481, column: 30, scope: !997)
!999 = !DILocation(line: 481, column: 38, scope: !997)
!1000 = !DILocation(line: 481, column: 21, scope: !997)
!1001 = !DILocation(line: 481, column: 45, scope: !997)
!1002 = !DILocation(line: 481, column: 3, scope: !997)
!1003 = !DILocation(line: 487, column: 14, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !997, file: !4, line: 487, column: 7)
!1005 = !DILocation(line: 487, column: 7, scope: !1004)
!1006 = !DILocation(line: 487, column: 20, scope: !1004)
!1007 = !DILocation(line: 487, column: 30, scope: !1004)
!1008 = !DILocation(line: 487, column: 23, scope: !1004)
!1009 = !DILocation(line: 487, column: 7, scope: !997)
!1010 = !DILocation(line: 488, column: 14, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !1004, file: !4, line: 487, column: 38)
!1012 = !DILocation(line: 488, column: 4, scope: !1011)
!1013 = !DILocation(line: 489, column: 3, scope: !1011)
!1014 = !DILocation(line: 493, column: 15, scope: !771)
!1015 = !DILocation(line: 493, column: 2, scope: !771)
!1016 = !DILocation(line: 493, column: 8, scope: !771)
!1017 = !DILocation(line: 493, column: 13, scope: !771)
!1018 = !DILocation(line: 494, column: 1, scope: !771)
!1019 = distinct !DISubprogram(name: "get_side", scope: !4, file: !4, line: 111, type: !1020, scopeLine: 112, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !222)
!1020 = !DISubroutineType(types: !1021)
!1021 = !{!105, !97, !97}
!1022 = !DILocalVariable(name: "parent", arg: 1, scope: !1019, file: !4, line: 111, type: !97)
!1023 = !DILocation(line: 111, column: 40, scope: !1019)
!1024 = !DILocalVariable(name: "child", arg: 2, scope: !1019, file: !4, line: 111, type: !97)
!1025 = !DILocation(line: 111, column: 63, scope: !1019)
!1026 = !DILocation(line: 115, column: 20, scope: !1019)
!1027 = !DILocation(line: 115, column: 10, scope: !1019)
!1028 = !DILocation(line: 115, column: 35, scope: !1019)
!1029 = !DILocation(line: 115, column: 32, scope: !1019)
!1030 = !DILocation(line: 115, column: 9, scope: !1019)
!1031 = !DILocation(line: 115, column: 2, scope: !1019)
!1032 = distinct !DISubprogram(name: "get_color", scope: !4, file: !4, line: 47, type: !1033, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !222)
!1033 = !DISubroutineType(types: !1034)
!1034 = !{!3, !97}
!1035 = !DILocalVariable(name: "n", arg: 1, scope: !1032, file: !4, line: 47, type: !97)
!1036 = !DILocation(line: 47, column: 47, scope: !1032)
!1037 = !DILocation(line: 50, column: 21, scope: !1032)
!1038 = !DILocation(line: 50, column: 24, scope: !1032)
!1039 = !DILocation(line: 50, column: 10, scope: !1032)
!1040 = !DILocation(line: 50, column: 37, scope: !1032)
!1041 = !DILocation(line: 50, column: 9, scope: !1032)
!1042 = !DILocation(line: 50, column: 2, scope: !1032)
!1043 = distinct !DISubprogram(name: "is_black", scope: !4, file: !4, line: 53, type: !1044, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !222)
!1044 = !DISubroutineType(types: !1045)
!1045 = !{!422, !97}
!1046 = !DILocalVariable(name: "n", arg: 1, scope: !1043, file: !4, line: 53, type: !97)
!1047 = !DILocation(line: 53, column: 38, scope: !1043)
!1048 = !DILocation(line: 55, column: 19, scope: !1043)
!1049 = !DILocation(line: 55, column: 9, scope: !1043)
!1050 = !DILocation(line: 55, column: 22, scope: !1043)
!1051 = !DILocation(line: 55, column: 2, scope: !1043)
!1052 = distinct !DISubprogram(name: "fix_missing_black", scope: !4, file: !4, line: 266, type: !1053, scopeLine: 268, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !222)
!1053 = !DISubroutineType(types: !1054)
!1054 = !{null, !626, !93, !97}
!1055 = !DILocalVariable(name: "stack", arg: 1, scope: !1052, file: !4, line: 266, type: !626)
!1056 = !DILocation(line: 266, column: 47, scope: !1052)
!1057 = !DILocalVariable(name: "stacksz", arg: 2, scope: !1052, file: !4, line: 266, type: !93)
!1058 = !DILocation(line: 266, column: 58, scope: !1052)
!1059 = !DILocalVariable(name: "null_node", arg: 3, scope: !1052, file: !4, line: 267, type: !97)
!1060 = !DILocation(line: 267, column: 25, scope: !1052)
!1061 = !DILocation(line: 270, column: 2, scope: !1052)
!1062 = !DILocation(line: 270, column: 9, scope: !1052)
!1063 = !DILocation(line: 270, column: 17, scope: !1052)
!1064 = !DILocalVariable(name: "c0", scope: !1065, file: !4, line: 271, type: !97)
!1065 = distinct !DILexicalBlock(scope: !1052, file: !4, line: 270, column: 22)
!1066 = !DILocation(line: 271, column: 18, scope: !1065)
!1067 = !DILocalVariable(name: "c1", scope: !1065, file: !4, line: 271, type: !97)
!1068 = !DILocation(line: 271, column: 23, scope: !1065)
!1069 = !DILocalVariable(name: "inner", scope: !1065, file: !4, line: 271, type: !97)
!1070 = !DILocation(line: 271, column: 28, scope: !1065)
!1071 = !DILocalVariable(name: "outer", scope: !1065, file: !4, line: 271, type: !97)
!1072 = !DILocation(line: 271, column: 36, scope: !1065)
!1073 = !DILocalVariable(name: "n", scope: !1065, file: !4, line: 272, type: !97)
!1074 = !DILocation(line: 272, column: 18, scope: !1065)
!1075 = !DILocation(line: 272, column: 22, scope: !1065)
!1076 = !DILocation(line: 272, column: 28, scope: !1065)
!1077 = !DILocation(line: 272, column: 36, scope: !1065)
!1078 = !DILocalVariable(name: "parent", scope: !1065, file: !4, line: 273, type: !97)
!1079 = !DILocation(line: 273, column: 18, scope: !1065)
!1080 = !DILocation(line: 273, column: 27, scope: !1065)
!1081 = !DILocation(line: 273, column: 33, scope: !1065)
!1082 = !DILocation(line: 273, column: 41, scope: !1065)
!1083 = !DILocalVariable(name: "n_side", scope: !1065, file: !4, line: 274, type: !105)
!1084 = !DILocation(line: 274, column: 11, scope: !1065)
!1085 = !DILocation(line: 274, column: 29, scope: !1065)
!1086 = !DILocation(line: 274, column: 37, scope: !1065)
!1087 = !DILocation(line: 274, column: 20, scope: !1065)
!1088 = !DILocalVariable(name: "sib", scope: !1065, file: !4, line: 275, type: !97)
!1089 = !DILocation(line: 275, column: 18, scope: !1065)
!1090 = !DILocation(line: 275, column: 34, scope: !1065)
!1091 = !DILocation(line: 276, column: 14, scope: !1065)
!1092 = !DILocation(line: 276, column: 21, scope: !1065)
!1093 = !DILocation(line: 276, column: 13, scope: !1065)
!1094 = !DILocation(line: 275, column: 24, scope: !1065)
!1095 = !DILocation(line: 285, column: 17, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1065, file: !4, line: 285, column: 7)
!1097 = !DILocation(line: 285, column: 8, scope: !1096)
!1098 = !DILocation(line: 285, column: 7, scope: !1065)
!1099 = !DILocation(line: 286, column: 25, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !1096, file: !4, line: 285, column: 23)
!1101 = !DILocation(line: 286, column: 4, scope: !1100)
!1102 = !DILocation(line: 286, column: 10, scope: !1100)
!1103 = !DILocation(line: 286, column: 18, scope: !1100)
!1104 = !DILocation(line: 286, column: 23, scope: !1100)
!1105 = !DILocation(line: 287, column: 11, scope: !1100)
!1106 = !DILocation(line: 287, column: 18, scope: !1100)
!1107 = !DILocation(line: 287, column: 4, scope: !1100)
!1108 = !DILocation(line: 288, column: 14, scope: !1100)
!1109 = !DILocation(line: 288, column: 4, scope: !1100)
!1110 = !DILocation(line: 289, column: 14, scope: !1100)
!1111 = !DILocation(line: 289, column: 4, scope: !1100)
!1112 = !DILocation(line: 290, column: 23, scope: !1100)
!1113 = !DILocation(line: 290, column: 4, scope: !1100)
!1114 = !DILocation(line: 290, column: 17, scope: !1100)
!1115 = !DILocation(line: 290, column: 21, scope: !1100)
!1116 = !DILocation(line: 292, column: 13, scope: !1100)
!1117 = !DILocation(line: 292, column: 19, scope: !1100)
!1118 = !DILocation(line: 292, column: 27, scope: !1100)
!1119 = !DILocation(line: 292, column: 11, scope: !1100)
!1120 = !DILocation(line: 293, column: 20, scope: !1100)
!1121 = !DILocation(line: 293, column: 29, scope: !1100)
!1122 = !DILocation(line: 293, column: 36, scope: !1100)
!1123 = !DILocation(line: 293, column: 28, scope: !1100)
!1124 = !DILocation(line: 293, column: 10, scope: !1100)
!1125 = !DILocation(line: 293, column: 8, scope: !1100)
!1126 = !DILocation(line: 294, column: 3, scope: !1100)
!1127 = !DILocation(line: 301, column: 18, scope: !1065)
!1128 = !DILocation(line: 301, column: 8, scope: !1065)
!1129 = !DILocation(line: 301, column: 6, scope: !1065)
!1130 = !DILocation(line: 302, column: 18, scope: !1065)
!1131 = !DILocation(line: 302, column: 8, scope: !1065)
!1132 = !DILocation(line: 302, column: 6, scope: !1065)
!1133 = !DILocation(line: 303, column: 9, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1065, file: !4, line: 303, column: 7)
!1135 = !DILocation(line: 303, column: 12, scope: !1134)
!1136 = !DILocation(line: 303, column: 27, scope: !1134)
!1137 = !DILocation(line: 303, column: 39, scope: !1134)
!1138 = !DILocation(line: 303, column: 30, scope: !1134)
!1139 = !DILocation(line: 303, column: 44, scope: !1134)
!1140 = !DILocation(line: 303, column: 49, scope: !1134)
!1141 = !DILocation(line: 303, column: 52, scope: !1134)
!1142 = !DILocation(line: 303, column: 67, scope: !1134)
!1143 = !DILocation(line: 304, column: 15, scope: !1134)
!1144 = !DILocation(line: 304, column: 6, scope: !1134)
!1145 = !DILocation(line: 303, column: 7, scope: !1065)
!1146 = !DILocation(line: 305, column: 8, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1148, file: !4, line: 305, column: 8)
!1148 = distinct !DILexicalBlock(scope: !1134, file: !4, line: 304, column: 21)
!1149 = !DILocation(line: 305, column: 13, scope: !1147)
!1150 = !DILocation(line: 305, column: 10, scope: !1147)
!1151 = !DILocation(line: 305, column: 8, scope: !1148)
!1152 = !DILocation(line: 306, column: 15, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !1147, file: !4, line: 305, column: 24)
!1154 = !DILocation(line: 306, column: 23, scope: !1153)
!1155 = !DILocation(line: 306, column: 5, scope: !1153)
!1156 = !DILocation(line: 307, column: 4, scope: !1153)
!1157 = !DILocation(line: 309, column: 14, scope: !1148)
!1158 = !DILocation(line: 309, column: 4, scope: !1148)
!1159 = !DILocation(line: 310, column: 17, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1148, file: !4, line: 310, column: 8)
!1161 = !DILocation(line: 310, column: 8, scope: !1160)
!1162 = !DILocation(line: 310, column: 8, scope: !1148)
!1163 = !DILocation(line: 316, column: 12, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1160, file: !4, line: 310, column: 26)
!1165 = !DILocation(line: 317, column: 5, scope: !1164)
!1166 = distinct !{!1166, !1061, !1167}
!1167 = !DILocation(line: 364, column: 2, scope: !1052)
!1168 = !DILocation(line: 320, column: 15, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1160, file: !4, line: 318, column: 11)
!1170 = !DILocation(line: 320, column: 5, scope: !1169)
!1171 = !DILocation(line: 321, column: 5, scope: !1169)
!1172 = !DILocation(line: 331, column: 21, scope: !1065)
!1173 = !DILocation(line: 331, column: 27, scope: !1065)
!1174 = !DILocation(line: 331, column: 34, scope: !1065)
!1175 = !DILocation(line: 331, column: 26, scope: !1065)
!1176 = !DILocation(line: 331, column: 11, scope: !1065)
!1177 = !DILocation(line: 331, column: 9, scope: !1065)
!1178 = !DILocation(line: 332, column: 10, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1065, file: !4, line: 332, column: 7)
!1180 = !DILocation(line: 332, column: 16, scope: !1179)
!1181 = !DILocation(line: 332, column: 31, scope: !1179)
!1182 = !DILocation(line: 332, column: 41, scope: !1179)
!1183 = !DILocation(line: 332, column: 34, scope: !1179)
!1184 = !DILocation(line: 332, column: 7, scope: !1065)
!1185 = !DILocation(line: 333, column: 22, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1179, file: !4, line: 332, column: 50)
!1187 = !DILocation(line: 333, column: 27, scope: !1186)
!1188 = !DILocation(line: 333, column: 12, scope: !1186)
!1189 = !DILocation(line: 333, column: 10, scope: !1186)
!1190 = !DILocation(line: 335, column: 25, scope: !1186)
!1191 = !DILocation(line: 335, column: 4, scope: !1186)
!1192 = !DILocation(line: 335, column: 10, scope: !1186)
!1193 = !DILocation(line: 335, column: 18, scope: !1186)
!1194 = !DILocation(line: 335, column: 23, scope: !1186)
!1195 = !DILocation(line: 336, column: 23, scope: !1186)
!1196 = !DILocation(line: 336, column: 4, scope: !1186)
!1197 = !DILocation(line: 336, column: 17, scope: !1186)
!1198 = !DILocation(line: 336, column: 21, scope: !1186)
!1199 = !DILocation(line: 337, column: 11, scope: !1186)
!1200 = !DILocation(line: 337, column: 18, scope: !1186)
!1201 = !DILocation(line: 337, column: 4, scope: !1186)
!1202 = !DILocation(line: 338, column: 14, scope: !1186)
!1203 = !DILocation(line: 338, column: 4, scope: !1186)
!1204 = !DILocation(line: 339, column: 14, scope: !1186)
!1205 = !DILocation(line: 339, column: 4, scope: !1186)
!1206 = !DILocation(line: 344, column: 10, scope: !1186)
!1207 = !DILocation(line: 344, column: 16, scope: !1186)
!1208 = !DILocation(line: 344, column: 24, scope: !1186)
!1209 = !DILocation(line: 344, column: 8, scope: !1186)
!1210 = !DILocation(line: 345, column: 22, scope: !1186)
!1211 = !DILocation(line: 345, column: 28, scope: !1186)
!1212 = !DILocation(line: 345, column: 35, scope: !1186)
!1213 = !DILocation(line: 345, column: 27, scope: !1186)
!1214 = !DILocation(line: 345, column: 12, scope: !1186)
!1215 = !DILocation(line: 345, column: 10, scope: !1186)
!1216 = !DILocation(line: 346, column: 25, scope: !1186)
!1217 = !DILocation(line: 346, column: 4, scope: !1186)
!1218 = !DILocation(line: 346, column: 10, scope: !1186)
!1219 = !DILocation(line: 346, column: 18, scope: !1186)
!1220 = !DILocation(line: 346, column: 23, scope: !1186)
!1221 = !DILocation(line: 347, column: 11, scope: !1186)
!1222 = !DILocation(line: 348, column: 3, scope: !1186)
!1223 = !DILocation(line: 355, column: 13, scope: !1065)
!1224 = !DILocation(line: 355, column: 28, scope: !1065)
!1225 = !DILocation(line: 355, column: 18, scope: !1065)
!1226 = !DILocation(line: 355, column: 3, scope: !1065)
!1227 = !DILocation(line: 356, column: 13, scope: !1065)
!1228 = !DILocation(line: 356, column: 3, scope: !1065)
!1229 = !DILocation(line: 357, column: 13, scope: !1065)
!1230 = !DILocation(line: 357, column: 3, scope: !1065)
!1231 = !DILocation(line: 358, column: 24, scope: !1065)
!1232 = !DILocation(line: 358, column: 3, scope: !1065)
!1233 = !DILocation(line: 358, column: 9, scope: !1065)
!1234 = !DILocation(line: 358, column: 17, scope: !1065)
!1235 = !DILocation(line: 358, column: 22, scope: !1065)
!1236 = !DILocation(line: 359, column: 10, scope: !1065)
!1237 = !DILocation(line: 359, column: 17, scope: !1065)
!1238 = !DILocation(line: 359, column: 3, scope: !1065)
!1239 = !DILocation(line: 360, column: 7, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1065, file: !4, line: 360, column: 7)
!1241 = !DILocation(line: 360, column: 12, scope: !1240)
!1242 = !DILocation(line: 360, column: 9, scope: !1240)
!1243 = !DILocation(line: 360, column: 7, scope: !1065)
!1244 = !DILocation(line: 361, column: 14, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1240, file: !4, line: 360, column: 23)
!1246 = !DILocation(line: 361, column: 22, scope: !1245)
!1247 = !DILocation(line: 361, column: 4, scope: !1245)
!1248 = !DILocation(line: 362, column: 3, scope: !1245)
!1249 = !DILocation(line: 363, column: 3, scope: !1065)
!1250 = !DILocation(line: 365, column: 1, scope: !1052)
!1251 = distinct !DISubprogram(name: "is_red", scope: !4, file: !4, line: 58, type: !1044, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !222)
!1252 = !DILocalVariable(name: "n", arg: 1, scope: !1251, file: !4, line: 58, type: !97)
!1253 = !DILocation(line: 58, column: 36, scope: !1251)
!1254 = !DILocation(line: 60, column: 19, scope: !1251)
!1255 = !DILocation(line: 60, column: 9, scope: !1251)
!1256 = !DILocation(line: 60, column: 22, scope: !1251)
!1257 = !DILocation(line: 60, column: 2, scope: !1251)
!1258 = distinct !DISubprogram(name: "z_rb_walk", scope: !4, file: !4, line: 497, type: !1259, scopeLine: 498, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !222)
!1259 = !DISubroutineType(types: !1260)
!1260 = !{null, !97, !1261, !92}
!1261 = !DIDerivedType(tag: DW_TAG_typedef, name: "rb_visit_t", file: !99, line: 110, baseType: !1262)
!1262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1263, size: 32)
!1263 = !DISubroutineType(types: !1264)
!1264 = !{null, !97, !92}
!1265 = !DILocalVariable(name: "node", arg: 1, scope: !1258, file: !4, line: 497, type: !97)
!1266 = !DILocation(line: 497, column: 31, scope: !1258)
!1267 = !DILocalVariable(name: "visit_fn", arg: 2, scope: !1258, file: !4, line: 497, type: !1261)
!1268 = !DILocation(line: 497, column: 48, scope: !1258)
!1269 = !DILocalVariable(name: "cookie", arg: 3, scope: !1258, file: !4, line: 497, type: !92)
!1270 = !DILocation(line: 497, column: 64, scope: !1258)
!1271 = !DILocation(line: 499, column: 6, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !1258, file: !4, line: 499, column: 6)
!1273 = !DILocation(line: 499, column: 11, scope: !1272)
!1274 = !DILocation(line: 499, column: 6, scope: !1258)
!1275 = !DILocation(line: 500, column: 23, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !1272, file: !4, line: 499, column: 26)
!1277 = !DILocation(line: 500, column: 13, scope: !1276)
!1278 = !DILocation(line: 500, column: 34, scope: !1276)
!1279 = !DILocation(line: 500, column: 44, scope: !1276)
!1280 = !DILocation(line: 500, column: 3, scope: !1276)
!1281 = !DILocation(line: 501, column: 3, scope: !1276)
!1282 = !DILocation(line: 501, column: 12, scope: !1276)
!1283 = !DILocation(line: 501, column: 18, scope: !1276)
!1284 = !DILocation(line: 502, column: 23, scope: !1276)
!1285 = !DILocation(line: 502, column: 13, scope: !1276)
!1286 = !DILocation(line: 502, column: 34, scope: !1276)
!1287 = !DILocation(line: 502, column: 44, scope: !1276)
!1288 = !DILocation(line: 502, column: 3, scope: !1276)
!1289 = !DILocation(line: 503, column: 2, scope: !1276)
!1290 = !DILocation(line: 504, column: 1, scope: !1258)
!1291 = distinct !DISubprogram(name: "z_rb_child", scope: !4, file: !4, line: 507, type: !457, scopeLine: 508, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !222)
!1292 = !DILocalVariable(name: "node", arg: 1, scope: !1291, file: !4, line: 507, type: !97)
!1293 = !DILocation(line: 507, column: 42, scope: !1291)
!1294 = !DILocalVariable(name: "side", arg: 2, scope: !1291, file: !4, line: 507, type: !105)
!1295 = !DILocation(line: 507, column: 56, scope: !1291)
!1296 = !DILocation(line: 509, column: 19, scope: !1291)
!1297 = !DILocation(line: 509, column: 25, scope: !1291)
!1298 = !DILocation(line: 509, column: 9, scope: !1291)
!1299 = !DILocation(line: 509, column: 2, scope: !1291)
!1300 = distinct !DISubprogram(name: "z_rb_is_black", scope: !4, file: !4, line: 512, type: !1301, scopeLine: 513, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !222)
!1301 = !DISubroutineType(types: !1302)
!1302 = !{!93, !97}
!1303 = !DILocalVariable(name: "node", arg: 1, scope: !1300, file: !4, line: 512, type: !97)
!1304 = !DILocation(line: 512, column: 34, scope: !1300)
!1305 = !DILocation(line: 514, column: 18, scope: !1300)
!1306 = !DILocation(line: 514, column: 9, scope: !1300)
!1307 = !DILocation(line: 514, column: 2, scope: !1300)
!1308 = distinct !DISubprogram(name: "rb_contains", scope: !4, file: !4, line: 517, type: !1309, scopeLine: 518, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !222)
!1309 = !DISubroutineType(types: !1310)
!1310 = !{!422, !413, !97}
!1311 = !DILocalVariable(name: "tree", arg: 1, scope: !1308, file: !4, line: 517, type: !413)
!1312 = !DILocation(line: 517, column: 34, scope: !1308)
!1313 = !DILocalVariable(name: "node", arg: 2, scope: !1308, file: !4, line: 517, type: !97)
!1314 = !DILocation(line: 517, column: 55, scope: !1308)
!1315 = !DILocalVariable(name: "n", scope: !1308, file: !4, line: 519, type: !97)
!1316 = !DILocation(line: 519, column: 17, scope: !1308)
!1317 = !DILocation(line: 519, column: 21, scope: !1308)
!1318 = !DILocation(line: 519, column: 27, scope: !1308)
!1319 = !DILocation(line: 521, column: 2, scope: !1308)
!1320 = !DILocation(line: 521, column: 10, scope: !1308)
!1321 = !DILocation(line: 521, column: 12, scope: !1308)
!1322 = !DILocation(line: 521, column: 27, scope: !1308)
!1323 = !DILocation(line: 521, column: 31, scope: !1308)
!1324 = !DILocation(line: 521, column: 36, scope: !1308)
!1325 = !DILocation(line: 521, column: 33, scope: !1308)
!1326 = !DILocation(line: 0, scope: !1308)
!1327 = !DILocation(line: 522, column: 17, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1308, file: !4, line: 521, column: 43)
!1329 = !DILocation(line: 522, column: 20, scope: !1328)
!1330 = !DILocation(line: 522, column: 26, scope: !1328)
!1331 = !DILocation(line: 522, column: 38, scope: !1328)
!1332 = !DILocation(line: 522, column: 41, scope: !1328)
!1333 = !DILocation(line: 522, column: 7, scope: !1328)
!1334 = !DILocation(line: 522, column: 5, scope: !1328)
!1335 = distinct !{!1335, !1319, !1336}
!1336 = !DILocation(line: 523, column: 2, scope: !1308)
!1337 = !DILocation(line: 525, column: 9, scope: !1308)
!1338 = !DILocation(line: 525, column: 14, scope: !1308)
!1339 = !DILocation(line: 525, column: 11, scope: !1308)
!1340 = !DILocation(line: 525, column: 2, scope: !1308)
!1341 = distinct !DISubprogram(name: "z_rb_foreach_next", scope: !4, file: !4, line: 557, type: !1342, scopeLine: 558, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !222)
!1342 = !DISubroutineType(types: !1343)
!1343 = !{!97, !413, !1344}
!1344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1345, size: 32)
!1345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rb_foreach", file: !99, line: 172, size: 96, elements: !1346)
!1346 = !{!1347, !1348, !1350}
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1345, file: !99, line: 173, baseType: !626, size: 32)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "is_left", scope: !1345, file: !99, line: 174, baseType: !1349, size: 32, offset: 32)
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 32)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !1345, file: !99, line: 175, baseType: !1351, size: 32, offset: 64)
!1351 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !95, line: 58, baseType: !93)
!1352 = !DILocalVariable(name: "tree", arg: 1, scope: !1341, file: !4, line: 557, type: !413)
!1353 = !DILocation(line: 557, column: 49, scope: !1341)
!1354 = !DILocalVariable(name: "f", arg: 2, scope: !1341, file: !4, line: 557, type: !1344)
!1355 = !DILocation(line: 557, column: 75, scope: !1341)
!1356 = !DILocalVariable(name: "n", scope: !1341, file: !4, line: 559, type: !97)
!1357 = !DILocation(line: 559, column: 17, scope: !1341)
!1358 = !DILocation(line: 561, column: 6, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1341, file: !4, line: 561, column: 6)
!1360 = !DILocation(line: 561, column: 12, scope: !1359)
!1361 = !DILocation(line: 561, column: 17, scope: !1359)
!1362 = !DILocation(line: 561, column: 6, scope: !1341)
!1363 = !DILocation(line: 562, column: 3, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !1359, file: !4, line: 561, column: 32)
!1365 = !DILocation(line: 568, column: 6, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1341, file: !4, line: 568, column: 6)
!1367 = !DILocation(line: 568, column: 9, scope: !1366)
!1368 = !DILocation(line: 568, column: 13, scope: !1366)
!1369 = !DILocation(line: 568, column: 6, scope: !1341)
!1370 = !DILocation(line: 569, column: 26, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1366, file: !4, line: 568, column: 20)
!1372 = !DILocation(line: 569, column: 32, scope: !1371)
!1373 = !DILocation(line: 569, column: 38, scope: !1371)
!1374 = !DILocation(line: 569, column: 10, scope: !1371)
!1375 = !DILocation(line: 569, column: 3, scope: !1371)
!1376 = !DILocation(line: 575, column: 16, scope: !1341)
!1377 = !DILocation(line: 575, column: 19, scope: !1341)
!1378 = !DILocation(line: 575, column: 25, scope: !1341)
!1379 = !DILocation(line: 575, column: 28, scope: !1341)
!1380 = !DILocation(line: 575, column: 6, scope: !1341)
!1381 = !DILocation(line: 575, column: 4, scope: !1341)
!1382 = !DILocation(line: 576, column: 6, scope: !1383)
!1383 = distinct !DILexicalBlock(scope: !1341, file: !4, line: 576, column: 6)
!1384 = !DILocation(line: 576, column: 8, scope: !1383)
!1385 = !DILocation(line: 576, column: 6, scope: !1341)
!1386 = !DILocation(line: 577, column: 26, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !1383, file: !4, line: 576, column: 23)
!1388 = !DILocation(line: 577, column: 29, scope: !1387)
!1389 = !DILocation(line: 577, column: 10, scope: !1387)
!1390 = !DILocation(line: 577, column: 3, scope: !1387)
!1391 = !DILocation(line: 585, column: 6, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !1341, file: !4, line: 585, column: 6)
!1393 = !DILocation(line: 585, column: 9, scope: !1392)
!1394 = !DILocation(line: 585, column: 17, scope: !1392)
!1395 = !DILocation(line: 585, column: 20, scope: !1392)
!1396 = !DILocation(line: 585, column: 25, scope: !1392)
!1397 = !DILocation(line: 585, column: 6, scope: !1341)
!1398 = !DILocation(line: 586, column: 10, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1392, file: !4, line: 585, column: 32)
!1400 = !DILocation(line: 586, column: 13, scope: !1399)
!1401 = !DILocation(line: 586, column: 21, scope: !1399)
!1402 = !DILocation(line: 586, column: 24, scope: !1399)
!1403 = !DILocation(line: 586, column: 19, scope: !1399)
!1404 = !DILocation(line: 586, column: 3, scope: !1399)
!1405 = !DILocation(line: 593, column: 2, scope: !1341)
!1406 = !DILocation(line: 593, column: 10, scope: !1341)
!1407 = !DILocation(line: 593, column: 13, scope: !1341)
!1408 = !DILocation(line: 593, column: 17, scope: !1341)
!1409 = !DILocation(line: 593, column: 22, scope: !1341)
!1410 = !DILocation(line: 593, column: 26, scope: !1341)
!1411 = !DILocation(line: 593, column: 29, scope: !1341)
!1412 = !DILocation(line: 593, column: 37, scope: !1341)
!1413 = !DILocation(line: 593, column: 40, scope: !1341)
!1414 = !DILocation(line: 593, column: 45, scope: !1341)
!1415 = !DILocation(line: 0, scope: !1341)
!1416 = !DILocation(line: 594, column: 3, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !1341, file: !4, line: 593, column: 53)
!1418 = !DILocation(line: 594, column: 6, scope: !1417)
!1419 = !DILocation(line: 594, column: 9, scope: !1417)
!1420 = distinct !{!1420, !1405, !1421}
!1421 = !DILocation(line: 595, column: 2, scope: !1341)
!1422 = !DILocation(line: 597, column: 2, scope: !1341)
!1423 = !DILocation(line: 597, column: 5, scope: !1341)
!1424 = !DILocation(line: 597, column: 8, scope: !1341)
!1425 = !DILocation(line: 598, column: 10, scope: !1341)
!1426 = !DILocation(line: 598, column: 13, scope: !1341)
!1427 = !DILocation(line: 598, column: 17, scope: !1341)
!1428 = !DILocation(line: 598, column: 9, scope: !1341)
!1429 = !DILocation(line: 598, column: 25, scope: !1341)
!1430 = !DILocation(line: 598, column: 28, scope: !1341)
!1431 = !DILocation(line: 598, column: 34, scope: !1341)
!1432 = !DILocation(line: 598, column: 37, scope: !1341)
!1433 = !DILocation(line: 598, column: 2, scope: !1341)
!1434 = !DILocation(line: 599, column: 1, scope: !1341)
!1435 = distinct !DISubprogram(name: "stack_left_limb", scope: !4, file: !4, line: 533, type: !1436, scopeLine: 535, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !222)
!1436 = !DISubroutineType(types: !1437)
!1437 = !{!97, !97, !1344}
!1438 = !DILocalVariable(name: "n", arg: 1, scope: !1435, file: !4, line: 533, type: !97)
!1439 = !DILocation(line: 533, column: 61, scope: !1435)
!1440 = !DILocalVariable(name: "f", arg: 2, scope: !1435, file: !4, line: 534, type: !1344)
!1441 = !DILocation(line: 534, column: 31, scope: !1435)
!1442 = !DILocation(line: 536, column: 2, scope: !1435)
!1443 = !DILocation(line: 536, column: 5, scope: !1435)
!1444 = !DILocation(line: 536, column: 8, scope: !1435)
!1445 = !DILocation(line: 537, column: 21, scope: !1435)
!1446 = !DILocation(line: 537, column: 2, scope: !1435)
!1447 = !DILocation(line: 537, column: 5, scope: !1435)
!1448 = !DILocation(line: 537, column: 11, scope: !1435)
!1449 = !DILocation(line: 537, column: 14, scope: !1435)
!1450 = !DILocation(line: 537, column: 19, scope: !1435)
!1451 = !DILocation(line: 538, column: 2, scope: !1435)
!1452 = !DILocation(line: 538, column: 5, scope: !1435)
!1453 = !DILocation(line: 538, column: 13, scope: !1435)
!1454 = !DILocation(line: 538, column: 16, scope: !1435)
!1455 = !DILocation(line: 538, column: 21, scope: !1435)
!1456 = !DILocation(line: 540, column: 2, scope: !1435)
!1457 = !DILocation(line: 540, column: 24, scope: !1435)
!1458 = !DILocation(line: 540, column: 14, scope: !1435)
!1459 = !DILocation(line: 540, column: 12, scope: !1435)
!1460 = !DILocation(line: 540, column: 32, scope: !1435)
!1461 = !DILocation(line: 541, column: 3, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1435, file: !4, line: 540, column: 47)
!1463 = !DILocation(line: 541, column: 6, scope: !1462)
!1464 = !DILocation(line: 541, column: 9, scope: !1462)
!1465 = !DILocation(line: 542, column: 22, scope: !1462)
!1466 = !DILocation(line: 542, column: 3, scope: !1462)
!1467 = !DILocation(line: 542, column: 6, scope: !1462)
!1468 = !DILocation(line: 542, column: 12, scope: !1462)
!1469 = !DILocation(line: 542, column: 15, scope: !1462)
!1470 = !DILocation(line: 542, column: 20, scope: !1462)
!1471 = !DILocation(line: 543, column: 3, scope: !1462)
!1472 = !DILocation(line: 543, column: 6, scope: !1462)
!1473 = !DILocation(line: 543, column: 14, scope: !1462)
!1474 = !DILocation(line: 543, column: 17, scope: !1462)
!1475 = !DILocation(line: 543, column: 22, scope: !1462)
!1476 = distinct !{!1476, !1456, !1477}
!1477 = !DILocation(line: 544, column: 2, scope: !1435)
!1478 = !DILocation(line: 546, column: 9, scope: !1435)
!1479 = !DILocation(line: 546, column: 12, scope: !1435)
!1480 = !DILocation(line: 546, column: 18, scope: !1435)
!1481 = !DILocation(line: 546, column: 21, scope: !1435)
!1482 = !DILocation(line: 546, column: 2, scope: !1435)
!1483 = distinct !DISubprogram(name: "sys_sflist_is_empty", scope: !344, file: !344, line: 335, type: !1484, scopeLine: 335, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !222)
!1484 = !DISubroutineType(types: !1485)
!1485 = !{!422, !1486}
!1486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 32)
!1487 = !DILocalVariable(name: "list", arg: 1, scope: !1483, file: !344, line: 335, type: !1486)
!1488 = !DILocation(line: 335, column: 55, scope: !1483)
!1489 = !DILocation(line: 335, column: 92, scope: !1483)
!1490 = !DILocation(line: 335, column: 71, scope: !1483)
!1491 = !DILocation(line: 335, column: 98, scope: !1483)
!1492 = !DILocation(line: 335, column: 63, scope: !1483)
!1493 = distinct !DISubprogram(name: "sys_sflist_peek_head", scope: !344, file: !344, line: 255, type: !1494, scopeLine: 256, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !222)
!1494 = !DISubroutineType(types: !1495)
!1495 = !{!348, !1486}
!1496 = !DILocalVariable(name: "list", arg: 1, scope: !1493, file: !344, line: 255, type: !1486)
!1497 = !DILocation(line: 255, column: 64, scope: !1493)
!1498 = !DILocation(line: 257, column: 9, scope: !1493)
!1499 = !DILocation(line: 257, column: 15, scope: !1493)
!1500 = !DILocation(line: 257, column: 2, scope: !1493)
!1501 = distinct !DISubprogram(name: "rotate", scope: !4, file: !4, line: 128, type: !679, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !222)
!1502 = !DILocalVariable(name: "stack", arg: 1, scope: !1501, file: !4, line: 128, type: !626)
!1503 = !DILocation(line: 128, column: 36, scope: !1501)
!1504 = !DILocalVariable(name: "stacksz", arg: 2, scope: !1501, file: !4, line: 128, type: !93)
!1505 = !DILocation(line: 128, column: 47, scope: !1501)
!1506 = !DILocalVariable(name: "parent", scope: !1501, file: !4, line: 132, type: !97)
!1507 = !DILocation(line: 132, column: 17, scope: !1501)
!1508 = !DILocation(line: 132, column: 26, scope: !1501)
!1509 = !DILocation(line: 132, column: 32, scope: !1501)
!1510 = !DILocation(line: 132, column: 40, scope: !1501)
!1511 = !DILocalVariable(name: "child", scope: !1501, file: !4, line: 133, type: !97)
!1512 = !DILocation(line: 133, column: 17, scope: !1501)
!1513 = !DILocation(line: 133, column: 25, scope: !1501)
!1514 = !DILocation(line: 133, column: 31, scope: !1501)
!1515 = !DILocation(line: 133, column: 39, scope: !1501)
!1516 = !DILocalVariable(name: "side", scope: !1501, file: !4, line: 134, type: !105)
!1517 = !DILocation(line: 134, column: 10, scope: !1501)
!1518 = !DILocation(line: 134, column: 26, scope: !1501)
!1519 = !DILocation(line: 134, column: 34, scope: !1501)
!1520 = !DILocation(line: 134, column: 17, scope: !1501)
!1521 = !DILocalVariable(name: "a", scope: !1501, file: !4, line: 135, type: !97)
!1522 = !DILocation(line: 135, column: 17, scope: !1501)
!1523 = !DILocation(line: 135, column: 31, scope: !1501)
!1524 = !DILocation(line: 135, column: 38, scope: !1501)
!1525 = !DILocation(line: 135, column: 21, scope: !1501)
!1526 = !DILocalVariable(name: "b", scope: !1501, file: !4, line: 136, type: !97)
!1527 = !DILocation(line: 136, column: 17, scope: !1501)
!1528 = !DILocation(line: 136, column: 31, scope: !1501)
!1529 = !DILocation(line: 136, column: 39, scope: !1501)
!1530 = !DILocation(line: 136, column: 44, scope: !1501)
!1531 = !DILocation(line: 136, column: 38, scope: !1501)
!1532 = !DILocation(line: 136, column: 21, scope: !1501)
!1533 = !DILocation(line: 138, column: 6, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1501, file: !4, line: 138, column: 6)
!1535 = !DILocation(line: 138, column: 14, scope: !1534)
!1536 = !DILocation(line: 138, column: 6, scope: !1501)
!1537 = !DILocalVariable(name: "grandparent", scope: !1538, file: !4, line: 139, type: !97)
!1538 = distinct !DILexicalBlock(scope: !1534, file: !4, line: 138, column: 20)
!1539 = !DILocation(line: 139, column: 18, scope: !1538)
!1540 = !DILocation(line: 139, column: 32, scope: !1538)
!1541 = !DILocation(line: 139, column: 38, scope: !1538)
!1542 = !DILocation(line: 139, column: 46, scope: !1538)
!1543 = !DILocation(line: 141, column: 13, scope: !1538)
!1544 = !DILocation(line: 141, column: 35, scope: !1538)
!1545 = !DILocation(line: 141, column: 48, scope: !1538)
!1546 = !DILocation(line: 141, column: 26, scope: !1538)
!1547 = !DILocation(line: 141, column: 57, scope: !1538)
!1548 = !DILocation(line: 141, column: 3, scope: !1538)
!1549 = !DILocation(line: 142, column: 2, scope: !1538)
!1550 = !DILocation(line: 144, column: 12, scope: !1501)
!1551 = !DILocation(line: 144, column: 19, scope: !1501)
!1552 = !DILocation(line: 144, column: 25, scope: !1501)
!1553 = !DILocation(line: 144, column: 2, scope: !1501)
!1554 = !DILocation(line: 145, column: 12, scope: !1501)
!1555 = !DILocation(line: 145, column: 20, scope: !1501)
!1556 = !DILocation(line: 145, column: 25, scope: !1501)
!1557 = !DILocation(line: 145, column: 19, scope: !1501)
!1558 = !DILocation(line: 145, column: 43, scope: !1501)
!1559 = !DILocation(line: 145, column: 2, scope: !1501)
!1560 = !DILocation(line: 146, column: 12, scope: !1501)
!1561 = !DILocation(line: 146, column: 20, scope: !1501)
!1562 = !DILocation(line: 146, column: 26, scope: !1501)
!1563 = !DILocation(line: 146, column: 2, scope: !1501)
!1564 = !DILocation(line: 147, column: 23, scope: !1501)
!1565 = !DILocation(line: 147, column: 2, scope: !1501)
!1566 = !DILocation(line: 147, column: 8, scope: !1501)
!1567 = !DILocation(line: 147, column: 16, scope: !1501)
!1568 = !DILocation(line: 147, column: 21, scope: !1501)
!1569 = !DILocation(line: 148, column: 23, scope: !1501)
!1570 = !DILocation(line: 148, column: 2, scope: !1501)
!1571 = !DILocation(line: 148, column: 8, scope: !1501)
!1572 = !DILocation(line: 148, column: 16, scope: !1501)
!1573 = !DILocation(line: 148, column: 21, scope: !1501)
!1574 = !DILocation(line: 149, column: 1, scope: !1501)
