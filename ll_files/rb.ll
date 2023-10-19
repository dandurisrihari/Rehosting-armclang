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

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_k_object_access_grant(ptr noundef %0, ptr noundef %1) #0 !dbg !113 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !227, metadata !DIExpression()), !dbg !229
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !228, metadata !DIExpression()), !dbg !230
  %5 = load ptr, ptr %3, align 4, !dbg !231
  %6 = load ptr, ptr %4, align 4, !dbg !232
  ret void, !dbg !233
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_k_object_release(ptr noundef %0) #0 !dbg !234 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !238, metadata !DIExpression()), !dbg !239
  %3 = load ptr, ptr %2, align 4, !dbg !240
  ret void, !dbg !241
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_impl_k_object_alloc(i8 noundef zeroext %0) #0 !dbg !242 {
  %2 = alloca i8, align 1
  store i8 %0, ptr %2, align 1
  call void @llvm.dbg.declare(metadata ptr %2, metadata !246, metadata !DIExpression()), !dbg !247
  %3 = load i8, ptr %2, align 1, !dbg !248
  ret ptr null, !dbg !249
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_impl_k_object_alloc_size(i8 noundef zeroext %0, i32 noundef %1) #0 !dbg !250 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8 %0, ptr %3, align 1
  call void @llvm.dbg.declare(metadata ptr %3, metadata !254, metadata !DIExpression()), !dbg !256
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !255, metadata !DIExpression()), !dbg !257
  %5 = load i8, ptr %3, align 1, !dbg !258
  %6 = load i32, ptr %4, align 4, !dbg !259
  ret ptr null, !dbg !260
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_thread_timeout_expires_ticks(ptr noundef %0) #0 !dbg !261 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !269, metadata !DIExpression()), !dbg !270
  %3 = load ptr, ptr %2, align 4, !dbg !271
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !272
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !273
  %6 = call i64 @z_timeout_expires(ptr noundef %5) #6, !dbg !274
  ret i64 %6, !dbg !275
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_thread_timeout_remaining_ticks(ptr noundef %0) #0 !dbg !276 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !278, metadata !DIExpression()), !dbg !279
  %3 = load ptr, ptr %2, align 4, !dbg !280
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !281
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !282
  %6 = call i64 @z_timeout_remaining(ptr noundef %5) #6, !dbg !283
  ret i64 %6, !dbg !284
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_timer_expires_ticks(ptr noundef %0) #0 !dbg !285 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !308, metadata !DIExpression()), !dbg !309
  %3 = load ptr, ptr %2, align 4, !dbg !310
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !311
  %5 = call i64 @z_timeout_expires(ptr noundef %4) #6, !dbg !312
  ret i64 %5, !dbg !313
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_timer_remaining_ticks(ptr noundef %0) #0 !dbg !314 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !316, metadata !DIExpression()), !dbg !317
  %3 = load ptr, ptr %2, align 4, !dbg !318
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !319
  %5 = call i64 @z_timeout_remaining(ptr noundef %4) #6, !dbg !320
  ret i64 %5, !dbg !321
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_k_timer_user_data_set(ptr noundef %0, ptr noundef %1) #0 !dbg !322 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !326, metadata !DIExpression()), !dbg !328
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !327, metadata !DIExpression()), !dbg !329
  %5 = load ptr, ptr %4, align 4, !dbg !330
  %6 = load ptr, ptr %3, align 4, !dbg !331
  %7 = getelementptr inbounds %struct.k_timer, ptr %6, i32 0, i32 6, !dbg !332
  store ptr %5, ptr %7, align 4, !dbg !333
  ret void, !dbg !334
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_impl_k_timer_user_data_get(ptr noundef %0) #0 !dbg !335 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !339, metadata !DIExpression()), !dbg !340
  %3 = load ptr, ptr %2, align 4, !dbg !341
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 6, !dbg !342
  %5 = load ptr, ptr %4, align 4, !dbg !342
  ret ptr %5, !dbg !343
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_queue_is_empty(ptr noundef %0) #0 !dbg !344 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !366, metadata !DIExpression()), !dbg !367
  %3 = load ptr, ptr %2, align 4, !dbg !368
  %4 = getelementptr inbounds %struct.k_queue, ptr %3, i32 0, i32 0, !dbg !369
  %5 = call zeroext i1 @sys_sflist_is_empty(ptr noundef %4) #6, !dbg !370
  %6 = zext i1 %5 to i32, !dbg !371
  ret i32 %6, !dbg !372
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_sem_count_get(ptr noundef %0) #0 !dbg !373 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !383, metadata !DIExpression()), !dbg !384
  %3 = load ptr, ptr %2, align 4, !dbg !385
  %4 = getelementptr inbounds %struct.k_sem, ptr %3, i32 0, i32 1, !dbg !386
  %5 = load i32, ptr %4, align 4, !dbg !386
  ret i32 %5, !dbg !387
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_msgq_num_free_get(ptr noundef %0) #0 !dbg !388 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !407, metadata !DIExpression()), !dbg !408
  %3 = load ptr, ptr %2, align 4, !dbg !409
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 3, !dbg !410
  %5 = load i32, ptr %4, align 4, !dbg !410
  %6 = load ptr, ptr %2, align 4, !dbg !411
  %7 = getelementptr inbounds %struct.k_msgq, ptr %6, i32 0, i32 8, !dbg !412
  %8 = load i32, ptr %7, align 4, !dbg !412
  %9 = sub i32 %5, %8, !dbg !413
  ret i32 %9, !dbg !414
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_msgq_num_used_get(ptr noundef %0) #0 !dbg !415 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !417, metadata !DIExpression()), !dbg !418
  %3 = load ptr, ptr %2, align 4, !dbg !419
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 8, !dbg !420
  %5 = load i32, ptr %4, align 4, !dbg !420
  ret i32 %5, !dbg !421
}

; Function Attrs: nounwind optsize
define hidden ptr @z_rb_get_minmax(ptr noundef %0, i8 noundef zeroext %1) #1 !dbg !422 {
  %3 = alloca ptr, align 4
  %4 = alloca i8, align 1
  %5 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !437, metadata !DIExpression()), !dbg !440
  store i8 %1, ptr %4, align 1
  call void @llvm.dbg.declare(metadata ptr %4, metadata !438, metadata !DIExpression()), !dbg !441
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #7, !dbg !442
  call void @llvm.dbg.declare(metadata ptr %5, metadata !439, metadata !DIExpression()), !dbg !443
  %6 = load ptr, ptr %3, align 4, !dbg !444
  %7 = getelementptr inbounds %struct.rbtree, ptr %6, i32 0, i32 0, !dbg !446
  %8 = load ptr, ptr %7, align 4, !dbg !446
  store ptr %8, ptr %5, align 4, !dbg !447
  br label %9, !dbg !448

9:                                                ; preds = %20, %2
  %10 = load ptr, ptr %5, align 4, !dbg !449
  %11 = icmp ne ptr %10, null, !dbg !451
  br i1 %11, label %12, label %17, !dbg !452

12:                                               ; preds = %9
  %13 = load ptr, ptr %5, align 4, !dbg !453
  %14 = load i8, ptr %4, align 1, !dbg !454
  %15 = call ptr @get_child(ptr noundef %13, i8 noundef zeroext %14) #6, !dbg !455
  %16 = icmp ne ptr %15, null, !dbg !456
  br label %17

17:                                               ; preds = %12, %9
  %18 = phi i1 [ false, %9 ], [ %16, %12 ], !dbg !457
  br i1 %18, label %19, label %24, !dbg !458

19:                                               ; preds = %17
  br label %20, !dbg !459

20:                                               ; preds = %19
  %21 = load ptr, ptr %5, align 4, !dbg !461
  %22 = load i8, ptr %4, align 1, !dbg !462
  %23 = call ptr @get_child(ptr noundef %21, i8 noundef zeroext %22) #6, !dbg !463
  store ptr %23, ptr %5, align 4, !dbg !464
  br label %9, !dbg !465, !llvm.loop !466

24:                                               ; preds = %17
  %25 = load ptr, ptr %5, align 4, !dbg !468
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #7, !dbg !469
  ret ptr %25, !dbg !470
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind optsize
define internal ptr @get_child(ptr noundef %0, i8 noundef zeroext %1) #1 !dbg !471 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !475, metadata !DIExpression()), !dbg !478
  store i8 %1, ptr %5, align 1
  call void @llvm.dbg.declare(metadata ptr %5, metadata !476, metadata !DIExpression()), !dbg !479
  %7 = load i8, ptr %5, align 1, !dbg !480
  %8 = zext i8 %7 to i32, !dbg !480
  %9 = icmp ne i32 %8, 0, !dbg !482
  br i1 %9, label %10, label %15, !dbg !483

10:                                               ; preds = %2
  %11 = load ptr, ptr %4, align 4, !dbg !484
  %12 = getelementptr inbounds %struct.rbnode, ptr %11, i32 0, i32 0, !dbg !486
  %13 = getelementptr inbounds [2 x ptr], ptr %12, i32 0, i32 1, !dbg !484
  %14 = load ptr, ptr %13, align 4, !dbg !484
  store ptr %14, ptr %3, align 4, !dbg !487
  br label %25, !dbg !487

15:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #7, !dbg !488
  call void @llvm.dbg.declare(metadata ptr %6, metadata !477, metadata !DIExpression()), !dbg !489
  %16 = load ptr, ptr %4, align 4, !dbg !490
  %17 = getelementptr inbounds %struct.rbnode, ptr %16, i32 0, i32 0, !dbg !491
  %18 = getelementptr inbounds [2 x ptr], ptr %17, i32 0, i32 0, !dbg !490
  %19 = load ptr, ptr %18, align 4, !dbg !490
  %20 = ptrtoint ptr %19 to i32, !dbg !492
  store i32 %20, ptr %6, align 4, !dbg !489
  %21 = load i32, ptr %6, align 4, !dbg !493
  %22 = and i32 %21, -2, !dbg !493
  store i32 %22, ptr %6, align 4, !dbg !493
  %23 = load i32, ptr %6, align 4, !dbg !494
  %24 = inttoptr i32 %23 to ptr, !dbg !495
  store ptr %24, ptr %3, align 4, !dbg !496
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #7, !dbg !497
  br label %25

25:                                               ; preds = %15, %10
  %26 = load ptr, ptr %3, align 4, !dbg !497
  ret ptr %26, !dbg !497
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind optsize
define hidden void @rb_insert(ptr noundef %0, ptr noundef %1) #1 !dbg !498 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 4
  %9 = alloca i8, align 1
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !502, metadata !DIExpression()), !dbg !512
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !503, metadata !DIExpression()), !dbg !513
  %10 = load ptr, ptr %4, align 4, !dbg !514
  call void @set_child(ptr noundef %10, i8 noundef zeroext 0, ptr noundef null) #6, !dbg !515
  %11 = load ptr, ptr %4, align 4, !dbg !516
  call void @set_child(ptr noundef %11, i8 noundef zeroext 1, ptr noundef null) #6, !dbg !517
  %12 = load ptr, ptr %3, align 4, !dbg !518
  %13 = getelementptr inbounds %struct.rbtree, ptr %12, i32 0, i32 0, !dbg !520
  %14 = load ptr, ptr %13, align 4, !dbg !520
  %15 = icmp eq ptr %14, null, !dbg !521
  br i1 %15, label %16, label %23, !dbg !522

16:                                               ; preds = %2
  %17 = load ptr, ptr %4, align 4, !dbg !523
  %18 = load ptr, ptr %3, align 4, !dbg !525
  %19 = getelementptr inbounds %struct.rbtree, ptr %18, i32 0, i32 0, !dbg !526
  store ptr %17, ptr %19, align 4, !dbg !527
  %20 = load ptr, ptr %3, align 4, !dbg !528
  %21 = getelementptr inbounds %struct.rbtree, ptr %20, i32 0, i32 2, !dbg !529
  store i32 1, ptr %21, align 4, !dbg !530
  %22 = load ptr, ptr %4, align 4, !dbg !531
  call void @set_color(ptr noundef %22, i8 noundef zeroext 1) #6, !dbg !532
  br label %70, !dbg !533

23:                                               ; preds = %2
  %24 = load ptr, ptr %3, align 4, !dbg !534
  %25 = getelementptr inbounds %struct.rbtree, ptr %24, i32 0, i32 2, !dbg !535
  %26 = load i32, ptr %25, align 4, !dbg !535
  %27 = add nsw i32 %26, 1, !dbg !536
  %28 = call ptr @llvm.stacksave(), !dbg !537
  store ptr %28, ptr %5, align 4, !dbg !537
  %29 = alloca ptr, i32 %27, align 4, !dbg !537
  store i32 %27, ptr %6, align 4, !dbg !537
  call void @llvm.dbg.declare(metadata ptr %6, metadata !504, metadata !DIExpression()), !dbg !538
  call void @llvm.dbg.declare(metadata ptr %29, metadata !505, metadata !DIExpression()), !dbg !539
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #7, !dbg !540
  call void @llvm.dbg.declare(metadata ptr %7, metadata !509, metadata !DIExpression()), !dbg !541
  %30 = load ptr, ptr %3, align 4, !dbg !542
  %31 = load ptr, ptr %4, align 4, !dbg !543
  %32 = call i32 @find_and_stack(ptr noundef %30, ptr noundef %31, ptr noundef %29) #6, !dbg !544
  store i32 %32, ptr %7, align 4, !dbg !541
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #7, !dbg !545
  call void @llvm.dbg.declare(metadata ptr %8, metadata !510, metadata !DIExpression()), !dbg !546
  %33 = load i32, ptr %7, align 4, !dbg !547
  %34 = sub nsw i32 %33, 1, !dbg !548
  %35 = getelementptr inbounds ptr, ptr %29, i32 %34, !dbg !549
  %36 = load ptr, ptr %35, align 4, !dbg !549
  store ptr %36, ptr %8, align 4, !dbg !546
  call void @llvm.lifetime.start.p0(i64 1, ptr %9) #7, !dbg !550
  call void @llvm.dbg.declare(metadata ptr %9, metadata !511, metadata !DIExpression()), !dbg !551
  %37 = load ptr, ptr %3, align 4, !dbg !552
  %38 = getelementptr inbounds %struct.rbtree, ptr %37, i32 0, i32 1, !dbg !553
  %39 = load ptr, ptr %38, align 4, !dbg !553
  %40 = load ptr, ptr %4, align 4, !dbg !554
  %41 = load ptr, ptr %8, align 4, !dbg !555
  %42 = call zeroext i1 %39(ptr noundef %40, ptr noundef %41) #6, !dbg !552
  %43 = zext i1 %42 to i64, !dbg !552
  %44 = select i1 %42, i32 0, i32 1, !dbg !552
  %45 = trunc i32 %44 to i8, !dbg !552
  store i8 %45, ptr %9, align 1, !dbg !551
  %46 = load ptr, ptr %8, align 4, !dbg !556
  %47 = load i8, ptr %9, align 1, !dbg !557
  %48 = load ptr, ptr %4, align 4, !dbg !558
  call void @set_child(ptr noundef %46, i8 noundef zeroext %47, ptr noundef %48) #6, !dbg !559
  %49 = load ptr, ptr %4, align 4, !dbg !560
  call void @set_color(ptr noundef %49, i8 noundef zeroext 0) #6, !dbg !561
  %50 = load ptr, ptr %4, align 4, !dbg !562
  %51 = load i32, ptr %7, align 4, !dbg !563
  %52 = add nsw i32 %51, 1, !dbg !563
  store i32 %52, ptr %7, align 4, !dbg !563
  %53 = getelementptr inbounds ptr, ptr %29, i32 %51, !dbg !564
  store ptr %50, ptr %53, align 4, !dbg !565
  %54 = load i32, ptr %7, align 4, !dbg !566
  call void @fix_extra_red(ptr noundef %29, i32 noundef %54) #6, !dbg !567
  %55 = load i32, ptr %7, align 4, !dbg !568
  %56 = load ptr, ptr %3, align 4, !dbg !570
  %57 = getelementptr inbounds %struct.rbtree, ptr %56, i32 0, i32 2, !dbg !571
  %58 = load i32, ptr %57, align 4, !dbg !571
  %59 = icmp sgt i32 %55, %58, !dbg !572
  br i1 %59, label %60, label %64, !dbg !573

60:                                               ; preds = %23
  %61 = load i32, ptr %7, align 4, !dbg !574
  %62 = load ptr, ptr %3, align 4, !dbg !576
  %63 = getelementptr inbounds %struct.rbtree, ptr %62, i32 0, i32 2, !dbg !577
  store i32 %61, ptr %63, align 4, !dbg !578
  br label %64, !dbg !579

64:                                               ; preds = %60, %23
  %65 = getelementptr inbounds ptr, ptr %29, i32 0, !dbg !580
  %66 = load ptr, ptr %65, align 4, !dbg !580
  %67 = load ptr, ptr %3, align 4, !dbg !581
  %68 = getelementptr inbounds %struct.rbtree, ptr %67, i32 0, i32 0, !dbg !582
  store ptr %66, ptr %68, align 4, !dbg !583
  call void @llvm.lifetime.end.p0(i64 1, ptr %9) #7, !dbg !584
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #7, !dbg !584
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #7, !dbg !584
  %69 = load ptr, ptr %5, align 4, !dbg !584
  call void @llvm.stackrestore(ptr %69), !dbg !584
  br label %70, !dbg !584

70:                                               ; preds = %64, %16
  ret void, !dbg !584
}

; Function Attrs: nounwind optsize
define internal void @set_child(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2) #1 !dbg !585 {
  %4 = alloca ptr, align 4
  %5 = alloca i8, align 1
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !589, metadata !DIExpression()), !dbg !596
  store i8 %1, ptr %5, align 1
  call void @llvm.dbg.declare(metadata ptr %5, metadata !590, metadata !DIExpression()), !dbg !597
  store ptr %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !591, metadata !DIExpression()), !dbg !598
  %9 = load i8, ptr %5, align 1, !dbg !599
  %10 = zext i8 %9 to i32, !dbg !599
  %11 = icmp ne i32 %10, 0, !dbg !600
  br i1 %11, label %12, label %17, !dbg !601

12:                                               ; preds = %3
  %13 = load ptr, ptr %6, align 4, !dbg !602
  %14 = load ptr, ptr %4, align 4, !dbg !604
  %15 = getelementptr inbounds %struct.rbnode, ptr %14, i32 0, i32 0, !dbg !605
  %16 = getelementptr inbounds [2 x ptr], ptr %15, i32 0, i32 1, !dbg !604
  store ptr %13, ptr %16, align 4, !dbg !606
  br label %33, !dbg !607

17:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #7, !dbg !608
  call void @llvm.dbg.declare(metadata ptr %7, metadata !592, metadata !DIExpression()), !dbg !609
  %18 = load ptr, ptr %4, align 4, !dbg !610
  %19 = getelementptr inbounds %struct.rbnode, ptr %18, i32 0, i32 0, !dbg !611
  %20 = getelementptr inbounds [2 x ptr], ptr %19, i32 0, i32 0, !dbg !610
  %21 = load ptr, ptr %20, align 4, !dbg !610
  %22 = ptrtoint ptr %21 to i32, !dbg !612
  store i32 %22, ptr %7, align 4, !dbg !609
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #7, !dbg !613
  call void @llvm.dbg.declare(metadata ptr %8, metadata !595, metadata !DIExpression()), !dbg !614
  %23 = load ptr, ptr %6, align 4, !dbg !615
  %24 = ptrtoint ptr %23 to i32, !dbg !616
  store i32 %24, ptr %8, align 4, !dbg !614
  %25 = load i32, ptr %8, align 4, !dbg !617
  %26 = load i32, ptr %7, align 4, !dbg !618
  %27 = and i32 %26, 1, !dbg !619
  %28 = or i32 %25, %27, !dbg !620
  %29 = inttoptr i32 %28 to ptr, !dbg !621
  %30 = load ptr, ptr %4, align 4, !dbg !622
  %31 = getelementptr inbounds %struct.rbnode, ptr %30, i32 0, i32 0, !dbg !623
  %32 = getelementptr inbounds [2 x ptr], ptr %31, i32 0, i32 0, !dbg !622
  store ptr %29, ptr %32, align 4, !dbg !624
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #7, !dbg !625
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #7, !dbg !625
  br label %33

33:                                               ; preds = %17, %12
  ret void, !dbg !626
}

; Function Attrs: nounwind optsize
define internal void @set_color(ptr noundef %0, i8 noundef zeroext %1) #1 !dbg !627 {
  %3 = alloca ptr, align 4
  %4 = alloca i8, align 1
  %5 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !631, metadata !DIExpression()), !dbg !635
  store i8 %1, ptr %4, align 1
  call void @llvm.dbg.declare(metadata ptr %4, metadata !632, metadata !DIExpression()), !dbg !636
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #7, !dbg !637
  call void @llvm.dbg.declare(metadata ptr %5, metadata !633, metadata !DIExpression()), !dbg !638
  %6 = load ptr, ptr %3, align 4, !dbg !639
  %7 = getelementptr inbounds %struct.rbnode, ptr %6, i32 0, i32 0, !dbg !640
  %8 = getelementptr inbounds [2 x ptr], ptr %7, i32 0, i32 0, !dbg !639
  store ptr %8, ptr %5, align 4, !dbg !638
  %9 = load ptr, ptr %5, align 4, !dbg !641
  %10 = load i32, ptr %9, align 4, !dbg !642
  %11 = and i32 %10, -2, !dbg !643
  %12 = load i8, ptr %4, align 1, !dbg !644
  %13 = zext i8 %12 to i32, !dbg !645
  %14 = or i32 %11, %13, !dbg !646
  %15 = load ptr, ptr %5, align 4, !dbg !647
  store i32 %14, ptr %15, align 4, !dbg !648
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #7, !dbg !649
  ret void, !dbg !649
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave() #4

; Function Attrs: nounwind optsize
define internal i32 @find_and_stack(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 !dbg !650 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca ptr, align 4
  %10 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !655, metadata !DIExpression()), !dbg !662
  store ptr %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !656, metadata !DIExpression()), !dbg !663
  store ptr %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !657, metadata !DIExpression()), !dbg !664
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #7, !dbg !665
  call void @llvm.dbg.declare(metadata ptr %7, metadata !658, metadata !DIExpression()), !dbg !666
  store i32 0, ptr %7, align 4, !dbg !666
  %11 = load ptr, ptr %4, align 4, !dbg !667
  %12 = getelementptr inbounds %struct.rbtree, ptr %11, i32 0, i32 0, !dbg !668
  %13 = load ptr, ptr %12, align 4, !dbg !668
  %14 = load ptr, ptr %6, align 4, !dbg !669
  %15 = load i32, ptr %7, align 4, !dbg !670
  %16 = add nsw i32 %15, 1, !dbg !670
  store i32 %16, ptr %7, align 4, !dbg !670
  %17 = getelementptr inbounds ptr, ptr %14, i32 %15, !dbg !669
  store ptr %13, ptr %17, align 4, !dbg !671
  br label %18, !dbg !672

18:                                               ; preds = %59, %3
  %19 = load ptr, ptr %6, align 4, !dbg !673
  %20 = load i32, ptr %7, align 4, !dbg !674
  %21 = sub nsw i32 %20, 1, !dbg !675
  %22 = getelementptr inbounds ptr, ptr %19, i32 %21, !dbg !673
  %23 = load ptr, ptr %22, align 4, !dbg !673
  %24 = load ptr, ptr %5, align 4, !dbg !676
  %25 = icmp ne ptr %23, %24, !dbg !677
  br i1 %25, label %26, label %60, !dbg !672

26:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 1, ptr %8) #7, !dbg !678
  call void @llvm.dbg.declare(metadata ptr %8, metadata !659, metadata !DIExpression()), !dbg !679
  %27 = load ptr, ptr %4, align 4, !dbg !680
  %28 = getelementptr inbounds %struct.rbtree, ptr %27, i32 0, i32 1, !dbg !681
  %29 = load ptr, ptr %28, align 4, !dbg !681
  %30 = load ptr, ptr %5, align 4, !dbg !682
  %31 = load ptr, ptr %6, align 4, !dbg !683
  %32 = load i32, ptr %7, align 4, !dbg !684
  %33 = sub nsw i32 %32, 1, !dbg !685
  %34 = getelementptr inbounds ptr, ptr %31, i32 %33, !dbg !683
  %35 = load ptr, ptr %34, align 4, !dbg !683
  %36 = call zeroext i1 %29(ptr noundef %30, ptr noundef %35) #6, !dbg !680
  %37 = zext i1 %36 to i64, !dbg !680
  %38 = select i1 %36, i32 0, i32 1, !dbg !680
  %39 = trunc i32 %38 to i8, !dbg !680
  store i8 %39, ptr %8, align 1, !dbg !679
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #7, !dbg !686
  call void @llvm.dbg.declare(metadata ptr %9, metadata !661, metadata !DIExpression()), !dbg !687
  %40 = load ptr, ptr %6, align 4, !dbg !688
  %41 = load i32, ptr %7, align 4, !dbg !689
  %42 = sub nsw i32 %41, 1, !dbg !690
  %43 = getelementptr inbounds ptr, ptr %40, i32 %42, !dbg !688
  %44 = load ptr, ptr %43, align 4, !dbg !688
  %45 = load i8, ptr %8, align 1, !dbg !691
  %46 = call ptr @get_child(ptr noundef %44, i8 noundef zeroext %45) #6, !dbg !692
  store ptr %46, ptr %9, align 4, !dbg !687
  %47 = load ptr, ptr %9, align 4, !dbg !693
  %48 = icmp ne ptr %47, null, !dbg !695
  br i1 %48, label %49, label %55, !dbg !696

49:                                               ; preds = %26
  %50 = load ptr, ptr %9, align 4, !dbg !697
  %51 = load ptr, ptr %6, align 4, !dbg !699
  %52 = load i32, ptr %7, align 4, !dbg !700
  %53 = add nsw i32 %52, 1, !dbg !700
  store i32 %53, ptr %7, align 4, !dbg !700
  %54 = getelementptr inbounds ptr, ptr %51, i32 %52, !dbg !699
  store ptr %50, ptr %54, align 4, !dbg !701
  br label %56, !dbg !702

55:                                               ; preds = %26
  store i32 3, ptr %10, align 4
  br label %57, !dbg !703

56:                                               ; preds = %49
  store i32 0, ptr %10, align 4, !dbg !705
  br label %57, !dbg !705

57:                                               ; preds = %56, %55
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #7, !dbg !705
  call void @llvm.lifetime.end.p0(i64 1, ptr %8) #7, !dbg !705
  %58 = load i32, ptr %10, align 4
  switch i32 %58, label %62 [
    i32 0, label %59
    i32 3, label %60
  ]

59:                                               ; preds = %57
  br label %18, !dbg !672, !llvm.loop !706

60:                                               ; preds = %57, %18
  %61 = load i32, ptr %7, align 4, !dbg !707
  store i32 1, ptr %10, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #7, !dbg !708
  ret i32 %61, !dbg !709

62:                                               ; preds = %57
  unreachable
}

; Function Attrs: nounwind optsize
define internal void @fix_extra_red(ptr noundef %0, i32 noundef %1) #1 !dbg !710 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 4
  %9 = alloca i8, align 1
  %10 = alloca ptr, align 4
  %11 = alloca i8, align 1
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !714, metadata !DIExpression()), !dbg !723
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !715, metadata !DIExpression()), !dbg !724
  br label %12, !dbg !725

12:                                               ; preds = %84, %2
  %13 = load i32, ptr %4, align 4, !dbg !726
  %14 = icmp sgt i32 %13, 1, !dbg !727
  br i1 %14, label %15, label %86, !dbg !725

15:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #7, !dbg !728
  call void @llvm.dbg.declare(metadata ptr %5, metadata !716, metadata !DIExpression()), !dbg !729
  %16 = load ptr, ptr %3, align 4, !dbg !730
  %17 = load i32, ptr %4, align 4, !dbg !731
  %18 = sub nsw i32 %17, 1, !dbg !732
  %19 = getelementptr inbounds ptr, ptr %16, i32 %18, !dbg !730
  %20 = load ptr, ptr %19, align 4, !dbg !730
  store ptr %20, ptr %5, align 4, !dbg !729
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #7, !dbg !733
  call void @llvm.dbg.declare(metadata ptr %6, metadata !718, metadata !DIExpression()), !dbg !734
  %21 = load ptr, ptr %3, align 4, !dbg !735
  %22 = load i32, ptr %4, align 4, !dbg !736
  %23 = sub nsw i32 %22, 2, !dbg !737
  %24 = getelementptr inbounds ptr, ptr %21, i32 %23, !dbg !735
  %25 = load ptr, ptr %24, align 4, !dbg !735
  store ptr %25, ptr %6, align 4, !dbg !734
  %26 = load ptr, ptr %6, align 4, !dbg !738
  %27 = call zeroext i1 @is_black(ptr noundef %26) #6, !dbg !740
  br i1 %27, label %28, label %29, !dbg !741

28:                                               ; preds = %15
  store i32 1, ptr %7, align 4
  br label %84, !dbg !742

29:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #7, !dbg !744
  call void @llvm.dbg.declare(metadata ptr %8, metadata !719, metadata !DIExpression()), !dbg !745
  %30 = load ptr, ptr %3, align 4, !dbg !746
  %31 = load i32, ptr %4, align 4, !dbg !747
  %32 = sub nsw i32 %31, 3, !dbg !748
  %33 = getelementptr inbounds ptr, ptr %30, i32 %32, !dbg !746
  %34 = load ptr, ptr %33, align 4, !dbg !746
  store ptr %34, ptr %8, align 4, !dbg !745
  call void @llvm.lifetime.start.p0(i64 1, ptr %9) #7, !dbg !749
  call void @llvm.dbg.declare(metadata ptr %9, metadata !720, metadata !DIExpression()), !dbg !750
  %35 = load ptr, ptr %8, align 4, !dbg !751
  %36 = load ptr, ptr %6, align 4, !dbg !752
  %37 = call zeroext i8 @get_side(ptr noundef %35, ptr noundef %36) #6, !dbg !753
  store i8 %37, ptr %9, align 1, !dbg !750
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #7, !dbg !754
  call void @llvm.dbg.declare(metadata ptr %10, metadata !721, metadata !DIExpression()), !dbg !755
  %38 = load ptr, ptr %8, align 4, !dbg !756
  %39 = load i8, ptr %9, align 1, !dbg !757
  %40 = zext i8 %39 to i32, !dbg !757
  %41 = icmp eq i32 %40, 0, !dbg !758
  %42 = zext i1 %41 to i64, !dbg !759
  %43 = select i1 %41, i32 1, i32 0, !dbg !759
  %44 = trunc i32 %43 to i8, !dbg !759
  %45 = call ptr @get_child(ptr noundef %38, i8 noundef zeroext %44) #6, !dbg !760
  store ptr %45, ptr %10, align 4, !dbg !755
  %46 = load ptr, ptr %10, align 4, !dbg !761
  %47 = icmp ne ptr %46, null, !dbg !763
  br i1 %47, label %48, label %57, !dbg !764

48:                                               ; preds = %29
  %49 = load ptr, ptr %10, align 4, !dbg !765
  %50 = call zeroext i1 @is_red(ptr noundef %49) #6, !dbg !766
  br i1 %50, label %51, label %57, !dbg !767

51:                                               ; preds = %48
  %52 = load ptr, ptr %8, align 4, !dbg !768
  call void @set_color(ptr noundef %52, i8 noundef zeroext 0) #6, !dbg !770
  %53 = load ptr, ptr %6, align 4, !dbg !771
  call void @set_color(ptr noundef %53, i8 noundef zeroext 1) #6, !dbg !772
  %54 = load ptr, ptr %10, align 4, !dbg !773
  call void @set_color(ptr noundef %54, i8 noundef zeroext 1) #6, !dbg !774
  %55 = load i32, ptr %4, align 4, !dbg !775
  %56 = sub nsw i32 %55, 2, !dbg !775
  store i32 %56, ptr %4, align 4, !dbg !775
  store i32 2, ptr %7, align 4
  br label %83, !dbg !776, !llvm.loop !777

57:                                               ; preds = %48, %29
  call void @llvm.lifetime.start.p0(i64 1, ptr %11) #7, !dbg !779
  call void @llvm.dbg.declare(metadata ptr %11, metadata !722, metadata !DIExpression()), !dbg !780
  %58 = load ptr, ptr %6, align 4, !dbg !781
  %59 = load ptr, ptr %5, align 4, !dbg !782
  %60 = call zeroext i8 @get_side(ptr noundef %58, ptr noundef %59) #6, !dbg !783
  store i8 %60, ptr %11, align 1, !dbg !780
  %61 = load i8, ptr %11, align 1, !dbg !784
  %62 = zext i8 %61 to i32, !dbg !784
  %63 = load i8, ptr %9, align 1, !dbg !786
  %64 = zext i8 %63 to i32, !dbg !786
  %65 = icmp ne i32 %62, %64, !dbg !787
  br i1 %65, label %66, label %69, !dbg !788

66:                                               ; preds = %57
  %67 = load ptr, ptr %3, align 4, !dbg !789
  %68 = load i32, ptr %4, align 4, !dbg !791
  call void @rotate(ptr noundef %67, i32 noundef %68) #6, !dbg !792
  br label %69, !dbg !793

69:                                               ; preds = %66, %57
  %70 = load ptr, ptr %3, align 4, !dbg !794
  %71 = load i32, ptr %4, align 4, !dbg !795
  %72 = sub nsw i32 %71, 1, !dbg !796
  call void @rotate(ptr noundef %70, i32 noundef %72) #6, !dbg !797
  %73 = load ptr, ptr %3, align 4, !dbg !798
  %74 = load i32, ptr %4, align 4, !dbg !799
  %75 = sub nsw i32 %74, 3, !dbg !800
  %76 = getelementptr inbounds ptr, ptr %73, i32 %75, !dbg !798
  %77 = load ptr, ptr %76, align 4, !dbg !798
  call void @set_color(ptr noundef %77, i8 noundef zeroext 1) #6, !dbg !801
  %78 = load ptr, ptr %3, align 4, !dbg !802
  %79 = load i32, ptr %4, align 4, !dbg !803
  %80 = sub nsw i32 %79, 2, !dbg !804
  %81 = getelementptr inbounds ptr, ptr %78, i32 %80, !dbg !802
  %82 = load ptr, ptr %81, align 4, !dbg !802
  call void @set_color(ptr noundef %82, i8 noundef zeroext 0) #6, !dbg !805
  store i32 1, ptr %7, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr %11) #7, !dbg !778
  br label %83

83:                                               ; preds = %69, %51
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #7, !dbg !778
  call void @llvm.lifetime.end.p0(i64 1, ptr %9) #7, !dbg !778
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #7, !dbg !778
  br label %84

84:                                               ; preds = %83, %28
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #7, !dbg !778
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #7, !dbg !778
  %85 = load i32, ptr %7, align 4
  switch i32 %85, label %91 [
    i32 1, label %90
    i32 2, label %12
  ]

86:                                               ; preds = %12
  %87 = load ptr, ptr %3, align 4, !dbg !806
  %88 = getelementptr inbounds ptr, ptr %87, i32 0, !dbg !806
  %89 = load ptr, ptr %88, align 4, !dbg !806
  call void @set_color(ptr noundef %89, i8 noundef zeroext 1) #6, !dbg !807
  br label %90, !dbg !808

90:                                               ; preds = %86, %84
  ret void, !dbg !808

91:                                               ; preds = %84
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore(ptr) #4

; Function Attrs: nounwind optsize
define hidden void @rb_remove(ptr noundef %0, ptr noundef %1) #1 !dbg !809 {
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
  call void @llvm.dbg.declare(metadata ptr %3, metadata !811, metadata !DIExpression()), !dbg !829
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !812, metadata !DIExpression()), !dbg !830
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #7, !dbg !831
  call void @llvm.dbg.declare(metadata ptr %5, metadata !813, metadata !DIExpression()), !dbg !832
  %17 = load ptr, ptr %3, align 4, !dbg !833
  %18 = getelementptr inbounds %struct.rbtree, ptr %17, i32 0, i32 2, !dbg !834
  %19 = load i32, ptr %18, align 4, !dbg !834
  %20 = add nsw i32 %19, 1, !dbg !835
  %21 = call ptr @llvm.stacksave(), !dbg !836
  store ptr %21, ptr %6, align 4, !dbg !836
  %22 = alloca ptr, i32 %20, align 4, !dbg !836
  store i32 %20, ptr %7, align 4, !dbg !836
  call void @llvm.dbg.declare(metadata ptr %7, metadata !814, metadata !DIExpression()), !dbg !837
  call void @llvm.dbg.declare(metadata ptr %22, metadata !815, metadata !DIExpression()), !dbg !838
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #7, !dbg !839
  call void @llvm.dbg.declare(metadata ptr %8, metadata !819, metadata !DIExpression()), !dbg !840
  %23 = load ptr, ptr %3, align 4, !dbg !841
  %24 = load ptr, ptr %4, align 4, !dbg !842
  %25 = call i32 @find_and_stack(ptr noundef %23, ptr noundef %24, ptr noundef %22) #6, !dbg !843
  store i32 %25, ptr %8, align 4, !dbg !840
  %26 = load ptr, ptr %4, align 4, !dbg !844
  %27 = load i32, ptr %8, align 4, !dbg !846
  %28 = sub nsw i32 %27, 1, !dbg !847
  %29 = getelementptr inbounds ptr, ptr %22, i32 %28, !dbg !848
  %30 = load ptr, ptr %29, align 4, !dbg !848
  %31 = icmp ne ptr %26, %30, !dbg !849
  br i1 %31, label %32, label %33, !dbg !850

32:                                               ; preds = %2
  store i32 1, ptr %9, align 4
  br label %199, !dbg !851

33:                                               ; preds = %2
  %34 = load ptr, ptr %4, align 4, !dbg !853
  %35 = call ptr @get_child(ptr noundef %34, i8 noundef zeroext 0) #6, !dbg !854
  %36 = icmp ne ptr %35, null, !dbg !855
  br i1 %36, label %37, label %137, !dbg !856

37:                                               ; preds = %33
  %38 = load ptr, ptr %4, align 4, !dbg !857
  %39 = call ptr @get_child(ptr noundef %38, i8 noundef zeroext 1) #6, !dbg !858
  %40 = icmp ne ptr %39, null, !dbg !859
  br i1 %40, label %41, label %137, !dbg !860

41:                                               ; preds = %37
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #7, !dbg !861
  call void @llvm.dbg.declare(metadata ptr %10, metadata !820, metadata !DIExpression()), !dbg !862
  %42 = load i32, ptr %8, align 4, !dbg !863
  store i32 %42, ptr %10, align 4, !dbg !862
  call void @llvm.lifetime.start.p0(i64 4, ptr %11) #7, !dbg !864
  call void @llvm.dbg.declare(metadata ptr %11, metadata !823, metadata !DIExpression()), !dbg !865
  call void @llvm.lifetime.start.p0(i64 4, ptr %12) #7, !dbg !864
  call void @llvm.dbg.declare(metadata ptr %12, metadata !824, metadata !DIExpression()), !dbg !866
  call void @llvm.lifetime.start.p0(i64 4, ptr %13) #7, !dbg !867
  call void @llvm.dbg.declare(metadata ptr %13, metadata !825, metadata !DIExpression()), !dbg !868
  %43 = load ptr, ptr %4, align 4, !dbg !869
  %44 = call ptr @get_child(ptr noundef %43, i8 noundef zeroext 0) #6, !dbg !870
  store ptr %44, ptr %13, align 4, !dbg !868
  %45 = load i32, ptr %8, align 4, !dbg !871
  %46 = icmp sgt i32 %45, 1, !dbg !872
  br i1 %46, label %47, label %52, !dbg !873

47:                                               ; preds = %41
  %48 = load i32, ptr %8, align 4, !dbg !874
  %49 = sub nsw i32 %48, 2, !dbg !875
  %50 = getelementptr inbounds ptr, ptr %22, i32 %49, !dbg !876
  %51 = load ptr, ptr %50, align 4, !dbg !876
  br label %53, !dbg !873

52:                                               ; preds = %41
  br label %53, !dbg !873

53:                                               ; preds = %52, %47
  %54 = phi ptr [ %51, %47 ], [ null, %52 ], !dbg !873
  store ptr %54, ptr %11, align 4, !dbg !877
  %55 = load ptr, ptr %13, align 4, !dbg !878
  %56 = load i32, ptr %8, align 4, !dbg !879
  %57 = add nsw i32 %56, 1, !dbg !879
  store i32 %57, ptr %8, align 4, !dbg !879
  %58 = getelementptr inbounds ptr, ptr %22, i32 %56, !dbg !880
  store ptr %55, ptr %58, align 4, !dbg !881
  br label %59, !dbg !882

59:                                               ; preds = %63, %53
  %60 = load ptr, ptr %13, align 4, !dbg !883
  %61 = call ptr @get_child(ptr noundef %60, i8 noundef zeroext 1) #6, !dbg !884
  %62 = icmp ne ptr %61, null, !dbg !885
  br i1 %62, label %63, label %70, !dbg !882

63:                                               ; preds = %59
  %64 = load ptr, ptr %13, align 4, !dbg !886
  %65 = call ptr @get_child(ptr noundef %64, i8 noundef zeroext 1) #6, !dbg !888
  store ptr %65, ptr %13, align 4, !dbg !889
  %66 = load ptr, ptr %13, align 4, !dbg !890
  %67 = load i32, ptr %8, align 4, !dbg !891
  %68 = add nsw i32 %67, 1, !dbg !891
  store i32 %68, ptr %8, align 4, !dbg !891
  %69 = getelementptr inbounds ptr, ptr %22, i32 %67, !dbg !892
  store ptr %66, ptr %69, align 4, !dbg !893
  br label %59, !dbg !882, !llvm.loop !894

70:                                               ; preds = %59
  %71 = load i32, ptr %8, align 4, !dbg !896
  %72 = sub nsw i32 %71, 2, !dbg !897
  %73 = getelementptr inbounds ptr, ptr %22, i32 %72, !dbg !898
  %74 = load ptr, ptr %73, align 4, !dbg !898
  store ptr %74, ptr %12, align 4, !dbg !899
  %75 = load ptr, ptr %11, align 4, !dbg !900
  %76 = icmp ne ptr %75, null, !dbg !902
  br i1 %76, label %77, label %83, !dbg !903

77:                                               ; preds = %70
  %78 = load ptr, ptr %11, align 4, !dbg !904
  %79 = load ptr, ptr %11, align 4, !dbg !906
  %80 = load ptr, ptr %4, align 4, !dbg !907
  %81 = call zeroext i8 @get_side(ptr noundef %79, ptr noundef %80) #6, !dbg !908
  %82 = load ptr, ptr %13, align 4, !dbg !909
  call void @set_child(ptr noundef %78, i8 noundef zeroext %81, ptr noundef %82) #6, !dbg !910
  br label %87, !dbg !911

83:                                               ; preds = %70
  %84 = load ptr, ptr %13, align 4, !dbg !912
  %85 = load ptr, ptr %3, align 4, !dbg !914
  %86 = getelementptr inbounds %struct.rbtree, ptr %85, i32 0, i32 0, !dbg !915
  store ptr %84, ptr %86, align 4, !dbg !916
  br label %87

87:                                               ; preds = %83, %77
  %88 = load ptr, ptr %12, align 4, !dbg !917
  %89 = load ptr, ptr %4, align 4, !dbg !919
  %90 = icmp eq ptr %88, %89, !dbg !920
  br i1 %90, label %91, label %97, !dbg !921

91:                                               ; preds = %87
  %92 = load ptr, ptr %4, align 4, !dbg !922
  %93 = load ptr, ptr %13, align 4, !dbg !924
  %94 = call ptr @get_child(ptr noundef %93, i8 noundef zeroext 0) #6, !dbg !925
  call void @set_child(ptr noundef %92, i8 noundef zeroext 0, ptr noundef %94) #6, !dbg !926
  %95 = load ptr, ptr %13, align 4, !dbg !927
  %96 = load ptr, ptr %4, align 4, !dbg !928
  call void @set_child(ptr noundef %95, i8 noundef zeroext 0, ptr noundef %96) #6, !dbg !929
  br label %110, !dbg !930

97:                                               ; preds = %87
  %98 = load ptr, ptr %12, align 4, !dbg !931
  %99 = load ptr, ptr %12, align 4, !dbg !933
  %100 = load ptr, ptr %13, align 4, !dbg !934
  %101 = call zeroext i8 @get_side(ptr noundef %99, ptr noundef %100) #6, !dbg !935
  %102 = load ptr, ptr %4, align 4, !dbg !936
  call void @set_child(ptr noundef %98, i8 noundef zeroext %101, ptr noundef %102) #6, !dbg !937
  %103 = load ptr, ptr %4, align 4, !dbg !938
  %104 = call ptr @get_child(ptr noundef %103, i8 noundef zeroext 0) #6, !dbg !939
  store ptr %104, ptr %5, align 4, !dbg !940
  %105 = load ptr, ptr %4, align 4, !dbg !941
  %106 = load ptr, ptr %13, align 4, !dbg !942
  %107 = call ptr @get_child(ptr noundef %106, i8 noundef zeroext 0) #6, !dbg !943
  call void @set_child(ptr noundef %105, i8 noundef zeroext 0, ptr noundef %107) #6, !dbg !944
  %108 = load ptr, ptr %13, align 4, !dbg !945
  %109 = load ptr, ptr %5, align 4, !dbg !946
  call void @set_child(ptr noundef %108, i8 noundef zeroext 0, ptr noundef %109) #6, !dbg !947
  br label %110

110:                                              ; preds = %97, %91
  %111 = load ptr, ptr %13, align 4, !dbg !948
  %112 = load ptr, ptr %4, align 4, !dbg !949
  %113 = call ptr @get_child(ptr noundef %112, i8 noundef zeroext 1) #6, !dbg !950
  call void @set_child(ptr noundef %111, i8 noundef zeroext 1, ptr noundef %113) #6, !dbg !951
  %114 = load ptr, ptr %4, align 4, !dbg !952
  call void @set_child(ptr noundef %114, i8 noundef zeroext 1, ptr noundef null) #6, !dbg !953
  %115 = load i32, ptr %10, align 4, !dbg !954
  %116 = sub nsw i32 %115, 1, !dbg !955
  %117 = getelementptr inbounds ptr, ptr %22, i32 %116, !dbg !956
  %118 = load ptr, ptr %117, align 4, !dbg !956
  store ptr %118, ptr %5, align 4, !dbg !957
  %119 = load i32, ptr %8, align 4, !dbg !958
  %120 = sub nsw i32 %119, 1, !dbg !959
  %121 = getelementptr inbounds ptr, ptr %22, i32 %120, !dbg !960
  %122 = load ptr, ptr %121, align 4, !dbg !960
  %123 = load i32, ptr %10, align 4, !dbg !961
  %124 = sub nsw i32 %123, 1, !dbg !962
  %125 = getelementptr inbounds ptr, ptr %22, i32 %124, !dbg !963
  store ptr %122, ptr %125, align 4, !dbg !964
  %126 = load ptr, ptr %5, align 4, !dbg !965
  %127 = load i32, ptr %8, align 4, !dbg !966
  %128 = sub nsw i32 %127, 1, !dbg !967
  %129 = getelementptr inbounds ptr, ptr %22, i32 %128, !dbg !968
  store ptr %126, ptr %129, align 4, !dbg !969
  call void @llvm.lifetime.start.p0(i64 1, ptr %14) #7, !dbg !970
  call void @llvm.dbg.declare(metadata ptr %14, metadata !826, metadata !DIExpression()), !dbg !971
  %130 = load ptr, ptr %4, align 4, !dbg !972
  %131 = call zeroext i8 @get_color(ptr noundef %130) #6, !dbg !973
  store i8 %131, ptr %14, align 1, !dbg !971
  %132 = load ptr, ptr %4, align 4, !dbg !974
  %133 = load ptr, ptr %13, align 4, !dbg !975
  %134 = call zeroext i8 @get_color(ptr noundef %133) #6, !dbg !976
  call void @set_color(ptr noundef %132, i8 noundef zeroext %134) #6, !dbg !977
  %135 = load ptr, ptr %13, align 4, !dbg !978
  %136 = load i8, ptr %14, align 1, !dbg !979
  call void @set_color(ptr noundef %135, i8 noundef zeroext %136) #6, !dbg !980
  call void @llvm.lifetime.end.p0(i64 1, ptr %14) #7, !dbg !981
  call void @llvm.lifetime.end.p0(i64 4, ptr %13) #7, !dbg !981
  call void @llvm.lifetime.end.p0(i64 4, ptr %12) #7, !dbg !981
  call void @llvm.lifetime.end.p0(i64 4, ptr %11) #7, !dbg !981
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #7, !dbg !981
  br label %137, !dbg !982

137:                                              ; preds = %110, %37, %33
  call void @llvm.lifetime.start.p0(i64 4, ptr %15) #7, !dbg !983
  call void @llvm.dbg.declare(metadata ptr %15, metadata !827, metadata !DIExpression()), !dbg !984
  %138 = load ptr, ptr %4, align 4, !dbg !985
  %139 = call ptr @get_child(ptr noundef %138, i8 noundef zeroext 0) #6, !dbg !986
  store ptr %139, ptr %15, align 4, !dbg !984
  %140 = load ptr, ptr %15, align 4, !dbg !987
  %141 = icmp eq ptr %140, null, !dbg !989
  br i1 %141, label %142, label %145, !dbg !990

142:                                              ; preds = %137
  %143 = load ptr, ptr %4, align 4, !dbg !991
  %144 = call ptr @get_child(ptr noundef %143, i8 noundef zeroext 1) #6, !dbg !993
  store ptr %144, ptr %15, align 4, !dbg !994
  br label %145, !dbg !995

145:                                              ; preds = %142, %137
  %146 = load i32, ptr %8, align 4, !dbg !996
  %147 = icmp slt i32 %146, 2, !dbg !998
  br i1 %147, label %148, label %160, !dbg !999

148:                                              ; preds = %145
  %149 = load ptr, ptr %15, align 4, !dbg !1000
  %150 = load ptr, ptr %3, align 4, !dbg !1002
  %151 = getelementptr inbounds %struct.rbtree, ptr %150, i32 0, i32 0, !dbg !1003
  store ptr %149, ptr %151, align 4, !dbg !1004
  %152 = load ptr, ptr %15, align 4, !dbg !1005
  %153 = icmp ne ptr %152, null, !dbg !1007
  br i1 %153, label %154, label %156, !dbg !1008

154:                                              ; preds = %148
  %155 = load ptr, ptr %15, align 4, !dbg !1009
  call void @set_color(ptr noundef %155, i8 noundef zeroext 1) #6, !dbg !1011
  br label %159, !dbg !1012

156:                                              ; preds = %148
  %157 = load ptr, ptr %3, align 4, !dbg !1013
  %158 = getelementptr inbounds %struct.rbtree, ptr %157, i32 0, i32 2, !dbg !1015
  store i32 0, ptr %158, align 4, !dbg !1016
  br label %159

159:                                              ; preds = %156, %154
  store i32 1, ptr %9, align 4
  br label %198, !dbg !1017

160:                                              ; preds = %145
  call void @llvm.lifetime.start.p0(i64 4, ptr %16) #7, !dbg !1018
  call void @llvm.dbg.declare(metadata ptr %16, metadata !828, metadata !DIExpression()), !dbg !1019
  %161 = load i32, ptr %8, align 4, !dbg !1020
  %162 = sub nsw i32 %161, 2, !dbg !1021
  %163 = getelementptr inbounds ptr, ptr %22, i32 %162, !dbg !1022
  %164 = load ptr, ptr %163, align 4, !dbg !1022
  store ptr %164, ptr %16, align 4, !dbg !1019
  %165 = load ptr, ptr %15, align 4, !dbg !1023
  %166 = icmp eq ptr %165, null, !dbg !1025
  br i1 %166, label %167, label %179, !dbg !1026

167:                                              ; preds = %160
  %168 = load ptr, ptr %4, align 4, !dbg !1027
  %169 = call zeroext i1 @is_black(ptr noundef %168) #6, !dbg !1030
  br i1 %169, label %170, label %173, !dbg !1031

170:                                              ; preds = %167
  %171 = load i32, ptr %8, align 4, !dbg !1032
  %172 = load ptr, ptr %4, align 4, !dbg !1034
  call void @fix_missing_black(ptr noundef %22, i32 noundef %171, ptr noundef %172) #6, !dbg !1035
  br label %178, !dbg !1036

173:                                              ; preds = %167
  %174 = load ptr, ptr %16, align 4, !dbg !1037
  %175 = load ptr, ptr %16, align 4, !dbg !1039
  %176 = load ptr, ptr %4, align 4, !dbg !1040
  %177 = call zeroext i8 @get_side(ptr noundef %175, ptr noundef %176) #6, !dbg !1041
  call void @set_child(ptr noundef %174, i8 noundef zeroext %177, ptr noundef null) #6, !dbg !1042
  br label %178

178:                                              ; preds = %173, %170
  br label %193, !dbg !1043

179:                                              ; preds = %160
  %180 = load ptr, ptr %16, align 4, !dbg !1044
  %181 = load ptr, ptr %16, align 4, !dbg !1046
  %182 = load ptr, ptr %4, align 4, !dbg !1047
  %183 = call zeroext i8 @get_side(ptr noundef %181, ptr noundef %182) #6, !dbg !1048
  %184 = load ptr, ptr %15, align 4, !dbg !1049
  call void @set_child(ptr noundef %180, i8 noundef zeroext %183, ptr noundef %184) #6, !dbg !1050
  %185 = load ptr, ptr %4, align 4, !dbg !1051
  %186 = call zeroext i1 @is_red(ptr noundef %185) #6, !dbg !1053
  br i1 %186, label %190, label %187, !dbg !1054

187:                                              ; preds = %179
  %188 = load ptr, ptr %15, align 4, !dbg !1055
  %189 = call zeroext i1 @is_red(ptr noundef %188) #6, !dbg !1056
  br i1 %189, label %190, label %192, !dbg !1057

190:                                              ; preds = %187, %179
  %191 = load ptr, ptr %15, align 4, !dbg !1058
  call void @set_color(ptr noundef %191, i8 noundef zeroext 1) #6, !dbg !1060
  br label %192, !dbg !1061

192:                                              ; preds = %190, %187
  br label %193

193:                                              ; preds = %192, %178
  %194 = getelementptr inbounds ptr, ptr %22, i32 0, !dbg !1062
  %195 = load ptr, ptr %194, align 4, !dbg !1062
  %196 = load ptr, ptr %3, align 4, !dbg !1063
  %197 = getelementptr inbounds %struct.rbtree, ptr %196, i32 0, i32 0, !dbg !1064
  store ptr %195, ptr %197, align 4, !dbg !1065
  call void @llvm.lifetime.end.p0(i64 4, ptr %16) #7, !dbg !1066
  store i32 0, ptr %9, align 4, !dbg !1066
  br label %198, !dbg !1066

198:                                              ; preds = %193, %159
  call void @llvm.lifetime.end.p0(i64 4, ptr %15) #7, !dbg !1066
  br label %199

199:                                              ; preds = %198, %32
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #7, !dbg !1066
  %200 = load ptr, ptr %6, align 4, !dbg !1066
  call void @llvm.stackrestore(ptr %200), !dbg !1066
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #7, !dbg !1066
  %201 = load i32, ptr %9, align 4
  switch i32 %201, label %203 [
    i32 0, label %202
    i32 1, label %202
  ]

202:                                              ; preds = %199, %199
  ret void, !dbg !1066

203:                                              ; preds = %199
  unreachable
}

; Function Attrs: nounwind optsize
define internal zeroext i8 @get_side(ptr noundef %0, ptr noundef %1) #1 !dbg !1067 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1071, metadata !DIExpression()), !dbg !1073
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1072, metadata !DIExpression()), !dbg !1074
  %5 = load ptr, ptr %3, align 4, !dbg !1075
  %6 = call ptr @get_child(ptr noundef %5, i8 noundef zeroext 1) #6, !dbg !1076
  %7 = load ptr, ptr %4, align 4, !dbg !1077
  %8 = icmp eq ptr %6, %7, !dbg !1078
  %9 = zext i1 %8 to i64, !dbg !1079
  %10 = select i1 %8, i32 1, i32 0, !dbg !1079
  %11 = trunc i32 %10 to i8, !dbg !1079
  ret i8 %11, !dbg !1080
}

; Function Attrs: nounwind optsize
define internal zeroext i8 @get_color(ptr noundef %0) #1 !dbg !1081 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1085, metadata !DIExpression()), !dbg !1086
  %3 = load ptr, ptr %2, align 4, !dbg !1087
  %4 = getelementptr inbounds %struct.rbnode, ptr %3, i32 0, i32 0, !dbg !1088
  %5 = getelementptr inbounds [2 x ptr], ptr %4, i32 0, i32 0, !dbg !1087
  %6 = load ptr, ptr %5, align 4, !dbg !1087
  %7 = ptrtoint ptr %6 to i32, !dbg !1089
  %8 = and i32 %7, 1, !dbg !1090
  %9 = trunc i32 %8 to i8, !dbg !1091
  ret i8 %9, !dbg !1092
}

; Function Attrs: nounwind optsize
define internal zeroext i1 @is_black(ptr noundef %0) #1 !dbg !1093 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1097, metadata !DIExpression()), !dbg !1098
  %3 = load ptr, ptr %2, align 4, !dbg !1099
  %4 = call zeroext i8 @get_color(ptr noundef %3) #6, !dbg !1100
  %5 = zext i8 %4 to i32, !dbg !1100
  %6 = icmp eq i32 %5, 1, !dbg !1101
  ret i1 %6, !dbg !1102
}

; Function Attrs: nounwind optsize
define internal void @fix_missing_black(ptr noundef %0, i32 noundef %1, ptr noundef %2) #1 !dbg !1103 {
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
  %15 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1107, metadata !DIExpression()), !dbg !1119
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1108, metadata !DIExpression()), !dbg !1120
  store ptr %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1109, metadata !DIExpression()), !dbg !1121
  br label %16, !dbg !1122

16:                                               ; preds = %175, %3
  %17 = load i32, ptr %5, align 4, !dbg !1123
  %18 = icmp sgt i32 %17, 1, !dbg !1124
  br i1 %18, label %19, label %177, !dbg !1122

19:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #7, !dbg !1125
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1110, metadata !DIExpression()), !dbg !1126
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #7, !dbg !1125
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1112, metadata !DIExpression()), !dbg !1127
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #7, !dbg !1125
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1113, metadata !DIExpression()), !dbg !1128
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #7, !dbg !1125
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1114, metadata !DIExpression()), !dbg !1129
  call void @llvm.lifetime.start.p0(i64 4, ptr %11) #7, !dbg !1130
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1115, metadata !DIExpression()), !dbg !1131
  %20 = load ptr, ptr %4, align 4, !dbg !1132
  %21 = load i32, ptr %5, align 4, !dbg !1133
  %22 = sub nsw i32 %21, 1, !dbg !1134
  %23 = getelementptr inbounds ptr, ptr %20, i32 %22, !dbg !1132
  %24 = load ptr, ptr %23, align 4, !dbg !1132
  store ptr %24, ptr %11, align 4, !dbg !1131
  call void @llvm.lifetime.start.p0(i64 4, ptr %12) #7, !dbg !1135
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1116, metadata !DIExpression()), !dbg !1136
  %25 = load ptr, ptr %4, align 4, !dbg !1137
  %26 = load i32, ptr %5, align 4, !dbg !1138
  %27 = sub nsw i32 %26, 2, !dbg !1139
  %28 = getelementptr inbounds ptr, ptr %25, i32 %27, !dbg !1137
  %29 = load ptr, ptr %28, align 4, !dbg !1137
  store ptr %29, ptr %12, align 4, !dbg !1136
  call void @llvm.lifetime.start.p0(i64 1, ptr %13) #7, !dbg !1140
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1117, metadata !DIExpression()), !dbg !1141
  %30 = load ptr, ptr %12, align 4, !dbg !1142
  %31 = load ptr, ptr %11, align 4, !dbg !1143
  %32 = call zeroext i8 @get_side(ptr noundef %30, ptr noundef %31) #6, !dbg !1144
  store i8 %32, ptr %13, align 1, !dbg !1141
  call void @llvm.lifetime.start.p0(i64 4, ptr %14) #7, !dbg !1145
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1118, metadata !DIExpression()), !dbg !1146
  %33 = load ptr, ptr %12, align 4, !dbg !1147
  %34 = load i8, ptr %13, align 1, !dbg !1148
  %35 = zext i8 %34 to i32, !dbg !1148
  %36 = icmp eq i32 %35, 0, !dbg !1149
  %37 = zext i1 %36 to i64, !dbg !1150
  %38 = select i1 %36, i32 1, i32 0, !dbg !1150
  %39 = trunc i32 %38 to i8, !dbg !1150
  %40 = call ptr @get_child(ptr noundef %33, i8 noundef zeroext %39) #6, !dbg !1151
  store ptr %40, ptr %14, align 4, !dbg !1146
  %41 = load ptr, ptr %14, align 4, !dbg !1152
  %42 = call zeroext i1 @is_black(ptr noundef %41) #6, !dbg !1154
  br i1 %42, label %71, label %43, !dbg !1155

43:                                               ; preds = %19
  %44 = load ptr, ptr %14, align 4, !dbg !1156
  %45 = load ptr, ptr %4, align 4, !dbg !1158
  %46 = load i32, ptr %5, align 4, !dbg !1159
  %47 = sub nsw i32 %46, 1, !dbg !1160
  %48 = getelementptr inbounds ptr, ptr %45, i32 %47, !dbg !1158
  store ptr %44, ptr %48, align 4, !dbg !1161
  %49 = load ptr, ptr %4, align 4, !dbg !1162
  %50 = load i32, ptr %5, align 4, !dbg !1163
  call void @rotate(ptr noundef %49, i32 noundef %50) #6, !dbg !1164
  %51 = load ptr, ptr %12, align 4, !dbg !1165
  call void @set_color(ptr noundef %51, i8 noundef zeroext 0) #6, !dbg !1166
  %52 = load ptr, ptr %14, align 4, !dbg !1167
  call void @set_color(ptr noundef %52, i8 noundef zeroext 1) #6, !dbg !1168
  %53 = load ptr, ptr %11, align 4, !dbg !1169
  %54 = load ptr, ptr %4, align 4, !dbg !1170
  %55 = load i32, ptr %5, align 4, !dbg !1171
  %56 = add nsw i32 %55, 1, !dbg !1171
  store i32 %56, ptr %5, align 4, !dbg !1171
  %57 = getelementptr inbounds ptr, ptr %54, i32 %55, !dbg !1170
  store ptr %53, ptr %57, align 4, !dbg !1172
  %58 = load ptr, ptr %4, align 4, !dbg !1173
  %59 = load i32, ptr %5, align 4, !dbg !1174
  %60 = sub nsw i32 %59, 2, !dbg !1175
  %61 = getelementptr inbounds ptr, ptr %58, i32 %60, !dbg !1173
  %62 = load ptr, ptr %61, align 4, !dbg !1173
  store ptr %62, ptr %12, align 4, !dbg !1176
  %63 = load ptr, ptr %12, align 4, !dbg !1177
  %64 = load i8, ptr %13, align 1, !dbg !1178
  %65 = zext i8 %64 to i32, !dbg !1178
  %66 = icmp eq i32 %65, 0, !dbg !1179
  %67 = zext i1 %66 to i64, !dbg !1180
  %68 = select i1 %66, i32 1, i32 0, !dbg !1180
  %69 = trunc i32 %68 to i8, !dbg !1180
  %70 = call ptr @get_child(ptr noundef %63, i8 noundef zeroext %69) #6, !dbg !1181
  store ptr %70, ptr %14, align 4, !dbg !1182
  br label %71, !dbg !1183

71:                                               ; preds = %43, %19
  %72 = load ptr, ptr %14, align 4, !dbg !1184
  %73 = call ptr @get_child(ptr noundef %72, i8 noundef zeroext 0) #6, !dbg !1185
  store ptr %73, ptr %7, align 4, !dbg !1186
  %74 = load ptr, ptr %14, align 4, !dbg !1187
  %75 = call ptr @get_child(ptr noundef %74, i8 noundef zeroext 1) #6, !dbg !1188
  store ptr %75, ptr %8, align 4, !dbg !1189
  %76 = load ptr, ptr %7, align 4, !dbg !1190
  %77 = icmp eq ptr %76, null, !dbg !1192
  br i1 %77, label %81, label %78, !dbg !1193

78:                                               ; preds = %71
  %79 = load ptr, ptr %7, align 4, !dbg !1194
  %80 = call zeroext i1 @is_black(ptr noundef %79) #6, !dbg !1195
  br i1 %80, label %81, label %103, !dbg !1196

81:                                               ; preds = %78, %71
  %82 = load ptr, ptr %8, align 4, !dbg !1197
  %83 = icmp eq ptr %82, null, !dbg !1198
  br i1 %83, label %87, label %84, !dbg !1199

84:                                               ; preds = %81
  %85 = load ptr, ptr %8, align 4, !dbg !1200
  %86 = call zeroext i1 @is_black(ptr noundef %85) #6, !dbg !1201
  br i1 %86, label %87, label %103, !dbg !1202

87:                                               ; preds = %84, %81
  %88 = load ptr, ptr %11, align 4, !dbg !1203
  %89 = load ptr, ptr %6, align 4, !dbg !1206
  %90 = icmp eq ptr %88, %89, !dbg !1207
  br i1 %90, label %91, label %94, !dbg !1208

91:                                               ; preds = %87
  %92 = load ptr, ptr %12, align 4, !dbg !1209
  %93 = load i8, ptr %13, align 1, !dbg !1211
  call void @set_child(ptr noundef %92, i8 noundef zeroext %93, ptr noundef null) #6, !dbg !1212
  br label %94, !dbg !1213

94:                                               ; preds = %91, %87
  %95 = load ptr, ptr %14, align 4, !dbg !1214
  call void @set_color(ptr noundef %95, i8 noundef zeroext 0) #6, !dbg !1215
  %96 = load ptr, ptr %12, align 4, !dbg !1216
  %97 = call zeroext i1 @is_black(ptr noundef %96) #6, !dbg !1218
  br i1 %97, label %98, label %101, !dbg !1219

98:                                               ; preds = %94
  %99 = load i32, ptr %5, align 4, !dbg !1220
  %100 = add nsw i32 %99, -1, !dbg !1220
  store i32 %100, ptr %5, align 4, !dbg !1220
  store i32 2, ptr %15, align 4
  br label %175, !dbg !1222, !llvm.loop !1223

101:                                              ; preds = %94
  %102 = load ptr, ptr %12, align 4, !dbg !1225
  call void @set_color(ptr noundef %102, i8 noundef zeroext 1) #6, !dbg !1227
  store i32 1, ptr %15, align 4
  br label %175, !dbg !1228

103:                                              ; preds = %84, %78
  %104 = load ptr, ptr %14, align 4, !dbg !1229
  %105 = load i8, ptr %13, align 1, !dbg !1230
  %106 = zext i8 %105 to i32, !dbg !1230
  %107 = icmp eq i32 %106, 0, !dbg !1231
  %108 = zext i1 %107 to i64, !dbg !1232
  %109 = select i1 %107, i32 1, i32 0, !dbg !1232
  %110 = trunc i32 %109 to i8, !dbg !1232
  %111 = call ptr @get_child(ptr noundef %104, i8 noundef zeroext %110) #6, !dbg !1233
  store ptr %111, ptr %10, align 4, !dbg !1234
  %112 = load ptr, ptr %10, align 4, !dbg !1235
  %113 = icmp ne ptr %112, null, !dbg !1237
  br i1 %113, label %114, label %117, !dbg !1238

114:                                              ; preds = %103
  %115 = load ptr, ptr %10, align 4, !dbg !1239
  %116 = call zeroext i1 @is_red(ptr noundef %115) #6, !dbg !1240
  br i1 %116, label %155, label %117, !dbg !1241

117:                                              ; preds = %114, %103
  %118 = load ptr, ptr %14, align 4, !dbg !1242
  %119 = load i8, ptr %13, align 1, !dbg !1244
  %120 = call ptr @get_child(ptr noundef %118, i8 noundef zeroext %119) #6, !dbg !1245
  store ptr %120, ptr %9, align 4, !dbg !1246
  %121 = load ptr, ptr %14, align 4, !dbg !1247
  %122 = load ptr, ptr %4, align 4, !dbg !1248
  %123 = load i32, ptr %5, align 4, !dbg !1249
  %124 = sub nsw i32 %123, 1, !dbg !1250
  %125 = getelementptr inbounds ptr, ptr %122, i32 %124, !dbg !1248
  store ptr %121, ptr %125, align 4, !dbg !1251
  %126 = load ptr, ptr %9, align 4, !dbg !1252
  %127 = load ptr, ptr %4, align 4, !dbg !1253
  %128 = load i32, ptr %5, align 4, !dbg !1254
  %129 = add nsw i32 %128, 1, !dbg !1254
  store i32 %129, ptr %5, align 4, !dbg !1254
  %130 = getelementptr inbounds ptr, ptr %127, i32 %128, !dbg !1253
  store ptr %126, ptr %130, align 4, !dbg !1255
  %131 = load ptr, ptr %4, align 4, !dbg !1256
  %132 = load i32, ptr %5, align 4, !dbg !1257
  call void @rotate(ptr noundef %131, i32 noundef %132) #6, !dbg !1258
  %133 = load ptr, ptr %14, align 4, !dbg !1259
  call void @set_color(ptr noundef %133, i8 noundef zeroext 0) #6, !dbg !1260
  %134 = load ptr, ptr %9, align 4, !dbg !1261
  call void @set_color(ptr noundef %134, i8 noundef zeroext 1) #6, !dbg !1262
  %135 = load ptr, ptr %4, align 4, !dbg !1263
  %136 = load i32, ptr %5, align 4, !dbg !1264
  %137 = sub nsw i32 %136, 2, !dbg !1265
  %138 = getelementptr inbounds ptr, ptr %135, i32 %137, !dbg !1263
  %139 = load ptr, ptr %138, align 4, !dbg !1263
  store ptr %139, ptr %14, align 4, !dbg !1266
  %140 = load ptr, ptr %14, align 4, !dbg !1267
  %141 = load i8, ptr %13, align 1, !dbg !1268
  %142 = zext i8 %141 to i32, !dbg !1268
  %143 = icmp eq i32 %142, 0, !dbg !1269
  %144 = zext i1 %143 to i64, !dbg !1270
  %145 = select i1 %143, i32 1, i32 0, !dbg !1270
  %146 = trunc i32 %145 to i8, !dbg !1270
  %147 = call ptr @get_child(ptr noundef %140, i8 noundef zeroext %146) #6, !dbg !1271
  store ptr %147, ptr %10, align 4, !dbg !1272
  %148 = load ptr, ptr %11, align 4, !dbg !1273
  %149 = load ptr, ptr %4, align 4, !dbg !1274
  %150 = load i32, ptr %5, align 4, !dbg !1275
  %151 = sub nsw i32 %150, 2, !dbg !1276
  %152 = getelementptr inbounds ptr, ptr %149, i32 %151, !dbg !1274
  store ptr %148, ptr %152, align 4, !dbg !1277
  %153 = load i32, ptr %5, align 4, !dbg !1278
  %154 = add nsw i32 %153, -1, !dbg !1278
  store i32 %154, ptr %5, align 4, !dbg !1278
  br label %155, !dbg !1279

155:                                              ; preds = %117, %114
  %156 = load ptr, ptr %14, align 4, !dbg !1280
  %157 = load ptr, ptr %12, align 4, !dbg !1281
  %158 = call zeroext i8 @get_color(ptr noundef %157) #6, !dbg !1282
  call void @set_color(ptr noundef %156, i8 noundef zeroext %158) #6, !dbg !1283
  %159 = load ptr, ptr %12, align 4, !dbg !1284
  call void @set_color(ptr noundef %159, i8 noundef zeroext 1) #6, !dbg !1285
  %160 = load ptr, ptr %10, align 4, !dbg !1286
  call void @set_color(ptr noundef %160, i8 noundef zeroext 1) #6, !dbg !1287
  %161 = load ptr, ptr %14, align 4, !dbg !1288
  %162 = load ptr, ptr %4, align 4, !dbg !1289
  %163 = load i32, ptr %5, align 4, !dbg !1290
  %164 = sub nsw i32 %163, 1, !dbg !1291
  %165 = getelementptr inbounds ptr, ptr %162, i32 %164, !dbg !1289
  store ptr %161, ptr %165, align 4, !dbg !1292
  %166 = load ptr, ptr %4, align 4, !dbg !1293
  %167 = load i32, ptr %5, align 4, !dbg !1294
  call void @rotate(ptr noundef %166, i32 noundef %167) #6, !dbg !1295
  %168 = load ptr, ptr %11, align 4, !dbg !1296
  %169 = load ptr, ptr %6, align 4, !dbg !1298
  %170 = icmp eq ptr %168, %169, !dbg !1299
  br i1 %170, label %171, label %174, !dbg !1300

171:                                              ; preds = %155
  %172 = load ptr, ptr %12, align 4, !dbg !1301
  %173 = load i8, ptr %13, align 1, !dbg !1303
  call void @set_child(ptr noundef %172, i8 noundef zeroext %173, ptr noundef null) #6, !dbg !1304
  br label %174, !dbg !1305

174:                                              ; preds = %171, %155
  store i32 1, ptr %15, align 4
  br label %175, !dbg !1306

175:                                              ; preds = %174, %101, %98
  call void @llvm.lifetime.end.p0(i64 4, ptr %14) #7, !dbg !1224
  call void @llvm.lifetime.end.p0(i64 1, ptr %13) #7, !dbg !1224
  call void @llvm.lifetime.end.p0(i64 4, ptr %12) #7, !dbg !1224
  call void @llvm.lifetime.end.p0(i64 4, ptr %11) #7, !dbg !1224
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #7, !dbg !1224
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #7, !dbg !1224
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #7, !dbg !1224
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #7, !dbg !1224
  %176 = load i32, ptr %15, align 4
  switch i32 %176, label %178 [
    i32 2, label %16
    i32 1, label %177
  ]

177:                                              ; preds = %175, %16
  ret void, !dbg !1307

178:                                              ; preds = %175
  unreachable
}

; Function Attrs: nounwind optsize
define internal zeroext i1 @is_red(ptr noundef %0) #1 !dbg !1308 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1310, metadata !DIExpression()), !dbg !1311
  %3 = load ptr, ptr %2, align 4, !dbg !1312
  %4 = call zeroext i8 @get_color(ptr noundef %3) #6, !dbg !1313
  %5 = zext i8 %4 to i32, !dbg !1313
  %6 = icmp eq i32 %5, 0, !dbg !1314
  ret i1 %6, !dbg !1315
}

; Function Attrs: nounwind optsize
define hidden void @z_rb_walk(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 !dbg !1316 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1324, metadata !DIExpression()), !dbg !1327
  store ptr %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1325, metadata !DIExpression()), !dbg !1328
  store ptr %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1326, metadata !DIExpression()), !dbg !1329
  %7 = load ptr, ptr %4, align 4, !dbg !1330
  %8 = icmp ne ptr %7, null, !dbg !1332
  br i1 %8, label %9, label %21, !dbg !1333

9:                                                ; preds = %3
  %10 = load ptr, ptr %4, align 4, !dbg !1334
  %11 = call ptr @get_child(ptr noundef %10, i8 noundef zeroext 0) #6, !dbg !1336
  %12 = load ptr, ptr %5, align 4, !dbg !1337
  %13 = load ptr, ptr %6, align 4, !dbg !1338
  call void @z_rb_walk(ptr noundef %11, ptr noundef %12, ptr noundef %13) #6, !dbg !1339
  %14 = load ptr, ptr %5, align 4, !dbg !1340
  %15 = load ptr, ptr %4, align 4, !dbg !1341
  %16 = load ptr, ptr %6, align 4, !dbg !1342
  call void %14(ptr noundef %15, ptr noundef %16) #6, !dbg !1340
  %17 = load ptr, ptr %4, align 4, !dbg !1343
  %18 = call ptr @get_child(ptr noundef %17, i8 noundef zeroext 1) #6, !dbg !1344
  %19 = load ptr, ptr %5, align 4, !dbg !1345
  %20 = load ptr, ptr %6, align 4, !dbg !1346
  call void @z_rb_walk(ptr noundef %18, ptr noundef %19, ptr noundef %20) #6, !dbg !1347
  br label %21, !dbg !1348

21:                                               ; preds = %9, %3
  ret void, !dbg !1349
}

; Function Attrs: nounwind optsize
define hidden ptr @z_rb_child(ptr noundef %0, i8 noundef zeroext %1) #1 !dbg !1350 {
  %3 = alloca ptr, align 4
  %4 = alloca i8, align 1
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1352, metadata !DIExpression()), !dbg !1354
  store i8 %1, ptr %4, align 1
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1353, metadata !DIExpression()), !dbg !1355
  %5 = load ptr, ptr %3, align 4, !dbg !1356
  %6 = load i8, ptr %4, align 1, !dbg !1357
  %7 = call ptr @get_child(ptr noundef %5, i8 noundef zeroext %6) #6, !dbg !1358
  ret ptr %7, !dbg !1359
}

; Function Attrs: nounwind optsize
define hidden i32 @z_rb_is_black(ptr noundef %0) #1 !dbg !1360 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1364, metadata !DIExpression()), !dbg !1365
  %3 = load ptr, ptr %2, align 4, !dbg !1366
  %4 = call zeroext i1 @is_black(ptr noundef %3) #6, !dbg !1367
  %5 = zext i1 %4 to i32, !dbg !1367
  ret i32 %5, !dbg !1368
}

; Function Attrs: nounwind optsize
define hidden zeroext i1 @rb_contains(ptr noundef %0, ptr noundef %1) #1 !dbg !1369 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1373, metadata !DIExpression()), !dbg !1376
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1374, metadata !DIExpression()), !dbg !1377
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #7, !dbg !1378
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1375, metadata !DIExpression()), !dbg !1379
  %6 = load ptr, ptr %3, align 4, !dbg !1380
  %7 = getelementptr inbounds %struct.rbtree, ptr %6, i32 0, i32 0, !dbg !1381
  %8 = load ptr, ptr %7, align 4, !dbg !1381
  store ptr %8, ptr %5, align 4, !dbg !1379
  br label %9, !dbg !1382

9:                                                ; preds = %18, %2
  %10 = load ptr, ptr %5, align 4, !dbg !1383
  %11 = icmp ne ptr %10, null, !dbg !1384
  br i1 %11, label %12, label %16, !dbg !1385

12:                                               ; preds = %9
  %13 = load ptr, ptr %5, align 4, !dbg !1386
  %14 = load ptr, ptr %4, align 4, !dbg !1387
  %15 = icmp ne ptr %13, %14, !dbg !1388
  br label %16

16:                                               ; preds = %12, %9
  %17 = phi i1 [ false, %9 ], [ %15, %12 ], !dbg !1389
  br i1 %17, label %18, label %28, !dbg !1382

18:                                               ; preds = %16
  %19 = load ptr, ptr %5, align 4, !dbg !1390
  %20 = load ptr, ptr %3, align 4, !dbg !1392
  %21 = getelementptr inbounds %struct.rbtree, ptr %20, i32 0, i32 1, !dbg !1393
  %22 = load ptr, ptr %21, align 4, !dbg !1393
  %23 = load ptr, ptr %5, align 4, !dbg !1394
  %24 = load ptr, ptr %4, align 4, !dbg !1395
  %25 = call zeroext i1 %22(ptr noundef %23, ptr noundef %24) #6, !dbg !1392
  %26 = zext i1 %25 to i8, !dbg !1392
  %27 = call ptr @get_child(ptr noundef %19, i8 noundef zeroext %26) #6, !dbg !1396
  store ptr %27, ptr %5, align 4, !dbg !1397
  br label %9, !dbg !1382, !llvm.loop !1398

28:                                               ; preds = %16
  %29 = load ptr, ptr %5, align 4, !dbg !1400
  %30 = load ptr, ptr %4, align 4, !dbg !1401
  %31 = icmp eq ptr %29, %30, !dbg !1402
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #7, !dbg !1403
  ret i1 %31, !dbg !1404
}

; Function Attrs: nounwind optsize
define hidden ptr @z_rb_foreach_next(ptr noundef %0, ptr noundef %1) #1 !dbg !1405 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1417, metadata !DIExpression()), !dbg !1420
  store ptr %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1418, metadata !DIExpression()), !dbg !1421
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #7, !dbg !1422
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1419, metadata !DIExpression()), !dbg !1423
  %8 = load ptr, ptr %4, align 4, !dbg !1424
  %9 = getelementptr inbounds %struct.rbtree, ptr %8, i32 0, i32 0, !dbg !1426
  %10 = load ptr, ptr %9, align 4, !dbg !1426
  %11 = icmp eq ptr %10, null, !dbg !1427
  br i1 %11, label %12, label %13, !dbg !1428

12:                                               ; preds = %2
  store ptr null, ptr %3, align 4, !dbg !1429
  store i32 1, ptr %7, align 4
  br label %106, !dbg !1429

13:                                               ; preds = %2
  %14 = load ptr, ptr %5, align 4, !dbg !1431
  %15 = getelementptr inbounds %struct._rb_foreach, ptr %14, i32 0, i32 2, !dbg !1433
  %16 = load i32, ptr %15, align 4, !dbg !1433
  %17 = icmp eq i32 %16, -1, !dbg !1434
  br i1 %17, label %18, label %24, !dbg !1435

18:                                               ; preds = %13
  %19 = load ptr, ptr %4, align 4, !dbg !1436
  %20 = getelementptr inbounds %struct.rbtree, ptr %19, i32 0, i32 0, !dbg !1438
  %21 = load ptr, ptr %20, align 4, !dbg !1438
  %22 = load ptr, ptr %5, align 4, !dbg !1439
  %23 = call ptr @stack_left_limb(ptr noundef %21, ptr noundef %22) #6, !dbg !1440
  store ptr %23, ptr %3, align 4, !dbg !1441
  store i32 1, ptr %7, align 4
  br label %106, !dbg !1441

24:                                               ; preds = %13
  %25 = load ptr, ptr %5, align 4, !dbg !1442
  %26 = getelementptr inbounds %struct._rb_foreach, ptr %25, i32 0, i32 0, !dbg !1443
  %27 = load ptr, ptr %26, align 4, !dbg !1443
  %28 = load ptr, ptr %5, align 4, !dbg !1444
  %29 = getelementptr inbounds %struct._rb_foreach, ptr %28, i32 0, i32 2, !dbg !1445
  %30 = load i32, ptr %29, align 4, !dbg !1445
  %31 = getelementptr inbounds ptr, ptr %27, i32 %30, !dbg !1442
  %32 = load ptr, ptr %31, align 4, !dbg !1442
  %33 = call ptr @get_child(ptr noundef %32, i8 noundef zeroext 1) #6, !dbg !1446
  store ptr %33, ptr %6, align 4, !dbg !1447
  %34 = load ptr, ptr %6, align 4, !dbg !1448
  %35 = icmp ne ptr %34, null, !dbg !1450
  br i1 %35, label %36, label %40, !dbg !1451

36:                                               ; preds = %24
  %37 = load ptr, ptr %6, align 4, !dbg !1452
  %38 = load ptr, ptr %5, align 4, !dbg !1454
  %39 = call ptr @stack_left_limb(ptr noundef %37, ptr noundef %38) #6, !dbg !1455
  store ptr %39, ptr %3, align 4, !dbg !1456
  store i32 1, ptr %7, align 4
  br label %106, !dbg !1456

40:                                               ; preds = %24
  %41 = load ptr, ptr %5, align 4, !dbg !1457
  %42 = getelementptr inbounds %struct._rb_foreach, ptr %41, i32 0, i32 1, !dbg !1459
  %43 = load ptr, ptr %42, align 4, !dbg !1459
  %44 = load ptr, ptr %5, align 4, !dbg !1460
  %45 = getelementptr inbounds %struct._rb_foreach, ptr %44, i32 0, i32 2, !dbg !1461
  %46 = load i32, ptr %45, align 4, !dbg !1461
  %47 = getelementptr inbounds i8, ptr %43, i32 %46, !dbg !1457
  %48 = load i8, ptr %47, align 1, !dbg !1457
  %49 = zext i8 %48 to i32, !dbg !1457
  %50 = icmp ne i32 %49, 0, !dbg !1462
  br i1 %50, label %51, label %61, !dbg !1463

51:                                               ; preds = %40
  %52 = load ptr, ptr %5, align 4, !dbg !1464
  %53 = getelementptr inbounds %struct._rb_foreach, ptr %52, i32 0, i32 0, !dbg !1466
  %54 = load ptr, ptr %53, align 4, !dbg !1466
  %55 = load ptr, ptr %5, align 4, !dbg !1467
  %56 = getelementptr inbounds %struct._rb_foreach, ptr %55, i32 0, i32 2, !dbg !1468
  %57 = load i32, ptr %56, align 4, !dbg !1469
  %58 = add nsw i32 %57, -1, !dbg !1469
  store i32 %58, ptr %56, align 4, !dbg !1469
  %59 = getelementptr inbounds ptr, ptr %54, i32 %58, !dbg !1464
  %60 = load ptr, ptr %59, align 4, !dbg !1464
  store ptr %60, ptr %3, align 4, !dbg !1470
  store i32 1, ptr %7, align 4
  br label %106, !dbg !1470

61:                                               ; preds = %40
  br label %62, !dbg !1471

62:                                               ; preds = %80, %61
  %63 = load ptr, ptr %5, align 4, !dbg !1472
  %64 = getelementptr inbounds %struct._rb_foreach, ptr %63, i32 0, i32 2, !dbg !1473
  %65 = load i32, ptr %64, align 4, !dbg !1473
  %66 = icmp sgt i32 %65, 0, !dbg !1474
  br i1 %66, label %67, label %78, !dbg !1475

67:                                               ; preds = %62
  %68 = load ptr, ptr %5, align 4, !dbg !1476
  %69 = getelementptr inbounds %struct._rb_foreach, ptr %68, i32 0, i32 1, !dbg !1477
  %70 = load ptr, ptr %69, align 4, !dbg !1477
  %71 = load ptr, ptr %5, align 4, !dbg !1478
  %72 = getelementptr inbounds %struct._rb_foreach, ptr %71, i32 0, i32 2, !dbg !1479
  %73 = load i32, ptr %72, align 4, !dbg !1479
  %74 = getelementptr inbounds i8, ptr %70, i32 %73, !dbg !1476
  %75 = load i8, ptr %74, align 1, !dbg !1476
  %76 = zext i8 %75 to i32, !dbg !1476
  %77 = icmp eq i32 %76, 0, !dbg !1480
  br label %78

78:                                               ; preds = %67, %62
  %79 = phi i1 [ false, %62 ], [ %77, %67 ], !dbg !1481
  br i1 %79, label %80, label %85, !dbg !1471

80:                                               ; preds = %78
  %81 = load ptr, ptr %5, align 4, !dbg !1482
  %82 = getelementptr inbounds %struct._rb_foreach, ptr %81, i32 0, i32 2, !dbg !1484
  %83 = load i32, ptr %82, align 4, !dbg !1485
  %84 = add nsw i32 %83, -1, !dbg !1485
  store i32 %84, ptr %82, align 4, !dbg !1485
  br label %62, !dbg !1471, !llvm.loop !1486

85:                                               ; preds = %78
  %86 = load ptr, ptr %5, align 4, !dbg !1488
  %87 = getelementptr inbounds %struct._rb_foreach, ptr %86, i32 0, i32 2, !dbg !1489
  %88 = load i32, ptr %87, align 4, !dbg !1490
  %89 = add nsw i32 %88, -1, !dbg !1490
  store i32 %89, ptr %87, align 4, !dbg !1490
  %90 = load ptr, ptr %5, align 4, !dbg !1491
  %91 = getelementptr inbounds %struct._rb_foreach, ptr %90, i32 0, i32 2, !dbg !1492
  %92 = load i32, ptr %91, align 4, !dbg !1492
  %93 = icmp sge i32 %92, 0, !dbg !1493
  br i1 %93, label %94, label %103, !dbg !1494

94:                                               ; preds = %85
  %95 = load ptr, ptr %5, align 4, !dbg !1495
  %96 = getelementptr inbounds %struct._rb_foreach, ptr %95, i32 0, i32 0, !dbg !1496
  %97 = load ptr, ptr %96, align 4, !dbg !1496
  %98 = load ptr, ptr %5, align 4, !dbg !1497
  %99 = getelementptr inbounds %struct._rb_foreach, ptr %98, i32 0, i32 2, !dbg !1498
  %100 = load i32, ptr %99, align 4, !dbg !1498
  %101 = getelementptr inbounds ptr, ptr %97, i32 %100, !dbg !1495
  %102 = load ptr, ptr %101, align 4, !dbg !1495
  br label %104, !dbg !1494

103:                                              ; preds = %85
  br label %104, !dbg !1494

104:                                              ; preds = %103, %94
  %105 = phi ptr [ %102, %94 ], [ null, %103 ], !dbg !1494
  store ptr %105, ptr %3, align 4, !dbg !1499
  store i32 1, ptr %7, align 4
  br label %106, !dbg !1499

106:                                              ; preds = %104, %51, %36, %18, %12
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #7, !dbg !1500
  %107 = load ptr, ptr %3, align 4, !dbg !1500
  ret ptr %107, !dbg !1500
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @stack_left_limb(ptr noundef %0, ptr noundef %1) #0 !dbg !1501 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1505, metadata !DIExpression()), !dbg !1507
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1506, metadata !DIExpression()), !dbg !1508
  %5 = load ptr, ptr %4, align 4, !dbg !1509
  %6 = getelementptr inbounds %struct._rb_foreach, ptr %5, i32 0, i32 2, !dbg !1510
  %7 = load i32, ptr %6, align 4, !dbg !1511
  %8 = add nsw i32 %7, 1, !dbg !1511
  store i32 %8, ptr %6, align 4, !dbg !1511
  %9 = load ptr, ptr %3, align 4, !dbg !1512
  %10 = load ptr, ptr %4, align 4, !dbg !1513
  %11 = getelementptr inbounds %struct._rb_foreach, ptr %10, i32 0, i32 0, !dbg !1514
  %12 = load ptr, ptr %11, align 4, !dbg !1514
  %13 = load ptr, ptr %4, align 4, !dbg !1515
  %14 = getelementptr inbounds %struct._rb_foreach, ptr %13, i32 0, i32 2, !dbg !1516
  %15 = load i32, ptr %14, align 4, !dbg !1516
  %16 = getelementptr inbounds ptr, ptr %12, i32 %15, !dbg !1513
  store ptr %9, ptr %16, align 4, !dbg !1517
  %17 = load ptr, ptr %4, align 4, !dbg !1518
  %18 = getelementptr inbounds %struct._rb_foreach, ptr %17, i32 0, i32 1, !dbg !1519
  %19 = load ptr, ptr %18, align 4, !dbg !1519
  %20 = load ptr, ptr %4, align 4, !dbg !1520
  %21 = getelementptr inbounds %struct._rb_foreach, ptr %20, i32 0, i32 2, !dbg !1521
  %22 = load i32, ptr %21, align 4, !dbg !1521
  %23 = getelementptr inbounds i8, ptr %19, i32 %22, !dbg !1518
  store i8 0, ptr %23, align 1, !dbg !1522
  br label %24, !dbg !1523

24:                                               ; preds = %28, %2
  %25 = load ptr, ptr %3, align 4, !dbg !1524
  %26 = call ptr @get_child(ptr noundef %25, i8 noundef zeroext 0) #6, !dbg !1525
  store ptr %26, ptr %3, align 4, !dbg !1526
  %27 = icmp ne ptr %26, null, !dbg !1527
  br i1 %27, label %28, label %48, !dbg !1523

28:                                               ; preds = %24
  %29 = load ptr, ptr %4, align 4, !dbg !1528
  %30 = getelementptr inbounds %struct._rb_foreach, ptr %29, i32 0, i32 2, !dbg !1530
  %31 = load i32, ptr %30, align 4, !dbg !1531
  %32 = add nsw i32 %31, 1, !dbg !1531
  store i32 %32, ptr %30, align 4, !dbg !1531
  %33 = load ptr, ptr %3, align 4, !dbg !1532
  %34 = load ptr, ptr %4, align 4, !dbg !1533
  %35 = getelementptr inbounds %struct._rb_foreach, ptr %34, i32 0, i32 0, !dbg !1534
  %36 = load ptr, ptr %35, align 4, !dbg !1534
  %37 = load ptr, ptr %4, align 4, !dbg !1535
  %38 = getelementptr inbounds %struct._rb_foreach, ptr %37, i32 0, i32 2, !dbg !1536
  %39 = load i32, ptr %38, align 4, !dbg !1536
  %40 = getelementptr inbounds ptr, ptr %36, i32 %39, !dbg !1533
  store ptr %33, ptr %40, align 4, !dbg !1537
  %41 = load ptr, ptr %4, align 4, !dbg !1538
  %42 = getelementptr inbounds %struct._rb_foreach, ptr %41, i32 0, i32 1, !dbg !1539
  %43 = load ptr, ptr %42, align 4, !dbg !1539
  %44 = load ptr, ptr %4, align 4, !dbg !1540
  %45 = getelementptr inbounds %struct._rb_foreach, ptr %44, i32 0, i32 2, !dbg !1541
  %46 = load i32, ptr %45, align 4, !dbg !1541
  %47 = getelementptr inbounds i8, ptr %43, i32 %46, !dbg !1538
  store i8 1, ptr %47, align 1, !dbg !1542
  br label %24, !dbg !1523, !llvm.loop !1543

48:                                               ; preds = %24
  %49 = load ptr, ptr %4, align 4, !dbg !1545
  %50 = getelementptr inbounds %struct._rb_foreach, ptr %49, i32 0, i32 0, !dbg !1546
  %51 = load ptr, ptr %50, align 4, !dbg !1546
  %52 = load ptr, ptr %4, align 4, !dbg !1547
  %53 = getelementptr inbounds %struct._rb_foreach, ptr %52, i32 0, i32 2, !dbg !1548
  %54 = load i32, ptr %53, align 4, !dbg !1548
  %55 = getelementptr inbounds ptr, ptr %51, i32 %54, !dbg !1545
  %56 = load ptr, ptr %55, align 4, !dbg !1545
  ret ptr %56, !dbg !1549
}

; Function Attrs: optsize
declare !dbg !1550 dso_local i64 @z_timeout_expires(ptr noundef) #5

; Function Attrs: optsize
declare !dbg !1555 dso_local i64 @z_timeout_remaining(ptr noundef) #5

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @sys_sflist_is_empty(ptr noundef %0) #0 !dbg !1556 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1561, metadata !DIExpression()), !dbg !1562
  %3 = load ptr, ptr %2, align 4, !dbg !1563
  %4 = call ptr @sys_sflist_peek_head(ptr noundef %3) #6, !dbg !1564
  %5 = icmp eq ptr %4, null, !dbg !1565
  ret i1 %5, !dbg !1566
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @sys_sflist_peek_head(ptr noundef %0) #0 !dbg !1567 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1571, metadata !DIExpression()), !dbg !1572
  %3 = load ptr, ptr %2, align 4, !dbg !1573
  %4 = getelementptr inbounds %struct._sflist, ptr %3, i32 0, i32 0, !dbg !1574
  %5 = load ptr, ptr %4, align 4, !dbg !1574
  ret ptr %5, !dbg !1575
}

; Function Attrs: nounwind optsize
define internal void @rotate(ptr noundef %0, i32 noundef %1) #1 !dbg !1576 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i8, align 1
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1578, metadata !DIExpression()), !dbg !1588
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1579, metadata !DIExpression()), !dbg !1589
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #7, !dbg !1590
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1580, metadata !DIExpression()), !dbg !1591
  %11 = load ptr, ptr %3, align 4, !dbg !1592
  %12 = load i32, ptr %4, align 4, !dbg !1593
  %13 = sub nsw i32 %12, 2, !dbg !1594
  %14 = getelementptr inbounds ptr, ptr %11, i32 %13, !dbg !1592
  %15 = load ptr, ptr %14, align 4, !dbg !1592
  store ptr %15, ptr %5, align 4, !dbg !1591
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #7, !dbg !1595
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1581, metadata !DIExpression()), !dbg !1596
  %16 = load ptr, ptr %3, align 4, !dbg !1597
  %17 = load i32, ptr %4, align 4, !dbg !1598
  %18 = sub nsw i32 %17, 1, !dbg !1599
  %19 = getelementptr inbounds ptr, ptr %16, i32 %18, !dbg !1597
  %20 = load ptr, ptr %19, align 4, !dbg !1597
  store ptr %20, ptr %6, align 4, !dbg !1596
  call void @llvm.lifetime.start.p0(i64 1, ptr %7) #7, !dbg !1600
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1582, metadata !DIExpression()), !dbg !1601
  %21 = load ptr, ptr %5, align 4, !dbg !1602
  %22 = load ptr, ptr %6, align 4, !dbg !1603
  %23 = call zeroext i8 @get_side(ptr noundef %21, ptr noundef %22) #6, !dbg !1604
  store i8 %23, ptr %7, align 1, !dbg !1601
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #7, !dbg !1605
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1583, metadata !DIExpression()), !dbg !1606
  %24 = load ptr, ptr %6, align 4, !dbg !1607
  %25 = load i8, ptr %7, align 1, !dbg !1608
  %26 = call ptr @get_child(ptr noundef %24, i8 noundef zeroext %25) #6, !dbg !1609
  store ptr %26, ptr %8, align 4, !dbg !1606
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #7, !dbg !1610
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1584, metadata !DIExpression()), !dbg !1611
  %27 = load ptr, ptr %6, align 4, !dbg !1612
  %28 = load i8, ptr %7, align 1, !dbg !1613
  %29 = zext i8 %28 to i32, !dbg !1613
  %30 = icmp eq i32 %29, 0, !dbg !1614
  %31 = zext i1 %30 to i64, !dbg !1615
  %32 = select i1 %30, i32 1, i32 0, !dbg !1615
  %33 = trunc i32 %32 to i8, !dbg !1615
  %34 = call ptr @get_child(ptr noundef %27, i8 noundef zeroext %33) #6, !dbg !1616
  store ptr %34, ptr %9, align 4, !dbg !1611
  %35 = load i32, ptr %4, align 4, !dbg !1617
  %36 = icmp sge i32 %35, 3, !dbg !1618
  br i1 %36, label %37, label %48, !dbg !1619

37:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #7, !dbg !1620
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1585, metadata !DIExpression()), !dbg !1621
  %38 = load ptr, ptr %3, align 4, !dbg !1622
  %39 = load i32, ptr %4, align 4, !dbg !1623
  %40 = sub nsw i32 %39, 3, !dbg !1624
  %41 = getelementptr inbounds ptr, ptr %38, i32 %40, !dbg !1622
  %42 = load ptr, ptr %41, align 4, !dbg !1622
  store ptr %42, ptr %10, align 4, !dbg !1621
  %43 = load ptr, ptr %10, align 4, !dbg !1625
  %44 = load ptr, ptr %10, align 4, !dbg !1626
  %45 = load ptr, ptr %5, align 4, !dbg !1627
  %46 = call zeroext i8 @get_side(ptr noundef %44, ptr noundef %45) #6, !dbg !1628
  %47 = load ptr, ptr %6, align 4, !dbg !1629
  call void @set_child(ptr noundef %43, i8 noundef zeroext %46, ptr noundef %47) #6, !dbg !1630
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #7, !dbg !1631
  br label %48, !dbg !1632

48:                                               ; preds = %37, %2
  %49 = load ptr, ptr %6, align 4, !dbg !1633
  %50 = load i8, ptr %7, align 1, !dbg !1634
  %51 = load ptr, ptr %8, align 4, !dbg !1635
  call void @set_child(ptr noundef %49, i8 noundef zeroext %50, ptr noundef %51) #6, !dbg !1636
  %52 = load ptr, ptr %6, align 4, !dbg !1637
  %53 = load i8, ptr %7, align 1, !dbg !1638
  %54 = zext i8 %53 to i32, !dbg !1638
  %55 = icmp eq i32 %54, 0, !dbg !1639
  %56 = zext i1 %55 to i64, !dbg !1640
  %57 = select i1 %55, i32 1, i32 0, !dbg !1640
  %58 = trunc i32 %57 to i8, !dbg !1640
  %59 = load ptr, ptr %5, align 4, !dbg !1641
  call void @set_child(ptr noundef %52, i8 noundef zeroext %58, ptr noundef %59) #6, !dbg !1642
  %60 = load ptr, ptr %5, align 4, !dbg !1643
  %61 = load i8, ptr %7, align 1, !dbg !1644
  %62 = load ptr, ptr %9, align 4, !dbg !1645
  call void @set_child(ptr noundef %60, i8 noundef zeroext %61, ptr noundef %62) #6, !dbg !1646
  %63 = load ptr, ptr %6, align 4, !dbg !1647
  %64 = load ptr, ptr %3, align 4, !dbg !1648
  %65 = load i32, ptr %4, align 4, !dbg !1649
  %66 = sub nsw i32 %65, 2, !dbg !1650
  %67 = getelementptr inbounds ptr, ptr %64, i32 %66, !dbg !1648
  store ptr %63, ptr %67, align 4, !dbg !1651
  %68 = load ptr, ptr %5, align 4, !dbg !1652
  %69 = load ptr, ptr %3, align 4, !dbg !1653
  %70 = load i32, ptr %4, align 4, !dbg !1654
  %71 = sub nsw i32 %70, 1, !dbg !1655
  %72 = getelementptr inbounds ptr, ptr %69, i32 %71, !dbg !1653
  store ptr %68, ptr %72, align 4, !dbg !1656
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #7, !dbg !1657
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #7, !dbg !1657
  call void @llvm.lifetime.end.p0(i64 1, ptr %7) #7, !dbg !1657
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #7, !dbg !1657
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #7, !dbg !1657
  ret void, !dbg !1657
}

attributes #0 = { inlinehint nounwind optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn }
attributes #5 = { optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { optsize }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!106, !107, !108, !109, !110, !111}
!llvm.ident = !{!112}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !91, splitDebugInlining: false, nameTableKind: None)
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
!30 = !DIEnumerator(name: "K_OBJ_DRIVER_RESET", value: 18)
!31 = !DIEnumerator(name: "K_OBJ_DRIVER_UART", value: 19)
!32 = !DIEnumerator(name: "K_OBJ_DRIVER_CRYPTO", value: 20)
!33 = !DIEnumerator(name: "K_OBJ_DRIVER_ADC", value: 21)
!34 = !DIEnumerator(name: "K_OBJ_DRIVER_AUXDISPLAY", value: 22)
!35 = !DIEnumerator(name: "K_OBJ_DRIVER_BBRAM", value: 23)
!36 = !DIEnumerator(name: "K_OBJ_DRIVER_CAN", value: 24)
!37 = !DIEnumerator(name: "K_OBJ_DRIVER_CHARGER", value: 25)
!38 = !DIEnumerator(name: "K_OBJ_DRIVER_COREDUMP", value: 26)
!39 = !DIEnumerator(name: "K_OBJ_DRIVER_COUNTER", value: 27)
!40 = !DIEnumerator(name: "K_OBJ_DRIVER_DAC", value: 28)
!41 = !DIEnumerator(name: "K_OBJ_DRIVER_DAI", value: 29)
!42 = !DIEnumerator(name: "K_OBJ_DRIVER_DMA", value: 30)
!43 = !DIEnumerator(name: "K_OBJ_DRIVER_EDAC", value: 31)
!44 = !DIEnumerator(name: "K_OBJ_DRIVER_EEPROM", value: 32)
!45 = !DIEnumerator(name: "K_OBJ_DRIVER_FUEL_GAUGE_EMUL", value: 33)
!46 = !DIEnumerator(name: "K_OBJ_DRIVER_EMUL_SENSOR_BACKEND_API", value: 34)
!47 = !DIEnumerator(name: "K_OBJ_DRIVER_ENTROPY", value: 35)
!48 = !DIEnumerator(name: "K_OBJ_DRIVER_ESPI", value: 36)
!49 = !DIEnumerator(name: "K_OBJ_DRIVER_ESPI_SAF", value: 37)
!50 = !DIEnumerator(name: "K_OBJ_DRIVER_FLASH", value: 38)
!51 = !DIEnumerator(name: "K_OBJ_DRIVER_FPGA", value: 39)
!52 = !DIEnumerator(name: "K_OBJ_DRIVER_FUEL_GAUGE", value: 40)
!53 = !DIEnumerator(name: "K_OBJ_DRIVER_HWSPINLOCK", value: 41)
!54 = !DIEnumerator(name: "K_OBJ_DRIVER_I2C", value: 42)
!55 = !DIEnumerator(name: "K_OBJ_DRIVER_I2S", value: 43)
!56 = !DIEnumerator(name: "K_OBJ_DRIVER_I3C", value: 44)
!57 = !DIEnumerator(name: "K_OBJ_DRIVER_IPM", value: 45)
!58 = !DIEnumerator(name: "K_OBJ_DRIVER_KSCAN", value: 46)
!59 = !DIEnumerator(name: "K_OBJ_DRIVER_LED", value: 47)
!60 = !DIEnumerator(name: "K_OBJ_DRIVER_MBOX", value: 48)
!61 = !DIEnumerator(name: "K_OBJ_DRIVER_MDIO", value: 49)
!62 = !DIEnumerator(name: "K_OBJ_DRIVER_MIPI_DSI", value: 50)
!63 = !DIEnumerator(name: "K_OBJ_DRIVER_PECI", value: 51)
!64 = !DIEnumerator(name: "K_OBJ_DRIVER_PS2", value: 52)
!65 = !DIEnumerator(name: "K_OBJ_DRIVER_PTP_CLOCK", value: 53)
!66 = !DIEnumerator(name: "K_OBJ_DRIVER_PWM", value: 54)
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
!112 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
!113 = distinct !DISubprogram(name: "z_impl_k_object_access_grant", scope: !10, file: !10, line: 223, type: !114, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !226)
!114 = !DISubroutineType(types: !115)
!115 = !{null, !116, !118}
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 32)
!117 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 32)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_thread", file: !120, line: 250, size: 896, elements: !121)
!120 = !DIFile(filename: "include/zephyr/kernel/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!121 = !{!122, !184, !197, !198, !199, !200, !221}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !119, file: !120, line: 252, baseType: !123, size: 384)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_base", file: !120, line: 58, size: 384, elements: !124)
!124 = !{!125, !145, !153, !154, !155, !168, !170, !171}
!125 = !DIDerivedType(tag: DW_TAG_member, scope: !123, file: !120, line: 61, baseType: !126, size: 64)
!126 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !123, file: !120, line: 61, size: 64, elements: !127)
!127 = !{!128, !144}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_dlist", scope: !126, file: !120, line: 62, baseType: !129, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dnode_t", file: !130, line: 55, baseType: !131)
!130 = !DIFile(filename: "include/zephyr/sys/dlist.h", directory: "/home/sri/zephyrproject/zephyr")
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_dnode", file: !130, line: 37, size: 64, elements: !132)
!132 = !{!133, !139}
!133 = !DIDerivedType(tag: DW_TAG_member, scope: !131, file: !130, line: 38, baseType: !134, size: 32)
!134 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !131, file: !130, line: 38, size: 32, elements: !135)
!135 = !{!136, !138}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !134, file: !130, line: 39, baseType: !137, size: 32)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 32)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !134, file: !130, line: 40, baseType: !137, size: 32)
!139 = !DIDerivedType(tag: DW_TAG_member, scope: !131, file: !130, line: 42, baseType: !140, size: 32, offset: 32)
!140 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !131, file: !130, line: 42, size: 32, elements: !141)
!141 = !{!142, !143}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !140, file: !130, line: 43, baseType: !137, size: 32)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !140, file: !130, line: 44, baseType: !137, size: 32)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_rb", scope: !126, file: !120, line: 63, baseType: !98, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "pended_on", scope: !123, file: !120, line: 69, baseType: !146, size: 32, offset: 64)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 32)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "_wait_q_t", file: !148, line: 243, baseType: !149)
!148 = !DIFile(filename: "include/zephyr/kernel_structs.h", directory: "/home/sri/zephyrproject/zephyr")
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !148, line: 241, size: 64, elements: !150)
!150 = !{!151}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !149, file: !148, line: 242, baseType: !152, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dlist_t", file: !130, line: 51, baseType: !131)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "user_options", scope: !123, file: !120, line: 72, baseType: !105, size: 8, offset: 96)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "thread_state", scope: !123, file: !120, line: 75, baseType: !105, size: 8, offset: 104)
!155 = !DIDerivedType(tag: DW_TAG_member, scope: !123, file: !120, line: 91, baseType: !156, size: 16, offset: 112)
!156 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !123, file: !120, line: 91, size: 16, elements: !157)
!157 = !{!158, !165}
!158 = !DIDerivedType(tag: DW_TAG_member, scope: !156, file: !120, line: 92, baseType: !159, size: 16)
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !156, file: !120, line: 92, size: 16, elements: !160)
!160 = !{!161, !164}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !159, file: !120, line: 97, baseType: !162, size: 8)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !95, line: 56, baseType: !163)
!163 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "sched_locked", scope: !159, file: !120, line: 98, baseType: !105, size: 8, offset: 8)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "preempt", scope: !156, file: !120, line: 101, baseType: !166, size: 16)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !95, line: 63, baseType: !167)
!167 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "order_key", scope: !123, file: !120, line: 108, baseType: !169, size: 32, offset: 128)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !95, line: 64, baseType: !96)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "swap_data", scope: !123, file: !120, line: 132, baseType: !92, size: 32, offset: 160)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !123, file: !120, line: 136, baseType: !172, size: 192, offset: 192)
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_timeout", file: !148, line: 254, size: 192, elements: !173)
!173 = !{!174, !175, !181}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !172, file: !148, line: 255, baseType: !129, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !172, file: !148, line: 256, baseType: !176, size: 32, offset: 64)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "_timeout_func_t", file: !148, line: 252, baseType: !177)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 32)
!178 = !DISubroutineType(types: !179)
!179 = !{null, !180}
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 32)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "dticks", scope: !172, file: !148, line: 259, baseType: !182, size: 64, offset: 128)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !95, line: 59, baseType: !183)
!183 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "callee_saved", scope: !119, file: !120, line: 255, baseType: !185, size: 288, offset: 384)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_callee_saved", file: !186, line: 25, size: 288, elements: !187)
!186 = !DIFile(filename: "include/zephyr/arch/arm/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!187 = !{!188, !189, !190, !191, !192, !193, !194, !195, !196}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "v1", scope: !185, file: !186, line: 26, baseType: !169, size: 32)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "v2", scope: !185, file: !186, line: 27, baseType: !169, size: 32, offset: 32)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "v3", scope: !185, file: !186, line: 28, baseType: !169, size: 32, offset: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "v4", scope: !185, file: !186, line: 29, baseType: !169, size: 32, offset: 96)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "v5", scope: !185, file: !186, line: 30, baseType: !169, size: 32, offset: 128)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "v6", scope: !185, file: !186, line: 31, baseType: !169, size: 32, offset: 160)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "v7", scope: !185, file: !186, line: 32, baseType: !169, size: 32, offset: 192)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "v8", scope: !185, file: !186, line: 33, baseType: !169, size: 32, offset: 224)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "psp", scope: !185, file: !186, line: 34, baseType: !169, size: 32, offset: 256)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "init_data", scope: !119, file: !120, line: 258, baseType: !92, size: 32, offset: 672)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "join_queue", scope: !119, file: !120, line: 261, baseType: !147, size: 64, offset: 704)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "errno_var", scope: !119, file: !120, line: 302, baseType: !93, size: 32, offset: 768)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "resource_pool", scope: !119, file: !120, line: 333, baseType: !201, size: 32, offset: 800)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 32)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_heap", file: !203, line: 5291, size: 160, elements: !204)
!203 = !DIFile(filename: "include/zephyr/kernel.h", directory: "/home/sri/zephyrproject/zephyr")
!204 = !{!205, !216, !217}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !202, file: !203, line: 5292, baseType: !206, size: 96)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sys_heap", file: !207, line: 56, size: 96, elements: !208)
!207 = !DIFile(filename: "include/zephyr/sys/sys_heap.h", directory: "/home/sri/zephyrproject/zephyr")
!208 = !{!209, !212, !213}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !206, file: !207, line: 57, baseType: !210, size: 32)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 32)
!211 = !DICompositeType(tag: DW_TAG_structure_type, name: "z_heap", file: !207, line: 57, flags: DIFlagFwdDecl)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "init_mem", scope: !206, file: !207, line: 58, baseType: !92, size: 32, offset: 32)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "init_bytes", scope: !206, file: !207, line: 59, baseType: !214, size: 32, offset: 64)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !215, line: 46, baseType: !96)
!215 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/lib/clang/17/include/stddef.h", directory: "")
!216 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !202, file: !203, line: 5293, baseType: !147, size: 64, offset: 96)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !202, file: !203, line: 5294, baseType: !218, offset: 160)
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_spinlock", file: !219, line: 45, elements: !220)
!219 = !DIFile(filename: "include/zephyr/spinlock.h", directory: "/home/sri/zephyrproject/zephyr")
!220 = !{}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !119, file: !120, line: 355, baseType: !222, size: 64, offset: 832)
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_arch", file: !186, line: 60, size: 64, elements: !223)
!223 = !{!224, !225}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "basepri", scope: !222, file: !186, line: 63, baseType: !169, size: 32)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "swap_return_value", scope: !222, file: !186, line: 66, baseType: !169, size: 32, offset: 32)
!226 = !{!227, !228}
!227 = !DILocalVariable(name: "object", arg: 1, scope: !113, file: !10, line: 223, type: !116)
!228 = !DILocalVariable(name: "thread", arg: 2, scope: !113, file: !10, line: 224, type: !118)
!229 = !DILocation(line: 223, column: 61, scope: !113)
!230 = !DILocation(line: 224, column: 24, scope: !113)
!231 = !DILocation(line: 226, column: 9, scope: !113)
!232 = !DILocation(line: 227, column: 9, scope: !113)
!233 = !DILocation(line: 228, column: 1, scope: !113)
!234 = distinct !DISubprogram(name: "z_impl_k_object_release", scope: !10, file: !10, line: 243, type: !235, scopeLine: 244, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !237)
!235 = !DISubroutineType(types: !236)
!236 = !{null, !116}
!237 = !{!238}
!238 = !DILocalVariable(name: "object", arg: 1, scope: !234, file: !10, line: 243, type: !116)
!239 = !DILocation(line: 243, column: 56, scope: !234)
!240 = !DILocation(line: 245, column: 9, scope: !234)
!241 = !DILocation(line: 246, column: 1, scope: !234)
!242 = distinct !DISubprogram(name: "z_impl_k_object_alloc", scope: !10, file: !10, line: 359, type: !243, scopeLine: 360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !245)
!243 = !DISubroutineType(types: !244)
!244 = !{!92, !9}
!245 = !{!246}
!246 = !DILocalVariable(name: "otype", arg: 1, scope: !242, file: !10, line: 359, type: !9)
!247 = !DILocation(line: 359, column: 58, scope: !242)
!248 = !DILocation(line: 361, column: 9, scope: !242)
!249 = !DILocation(line: 363, column: 2, scope: !242)
!250 = distinct !DISubprogram(name: "z_impl_k_object_alloc_size", scope: !10, file: !10, line: 366, type: !251, scopeLine: 368, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !253)
!251 = !DISubroutineType(types: !252)
!252 = !{!92, !9, !214}
!253 = !{!254, !255}
!254 = !DILocalVariable(name: "otype", arg: 1, scope: !250, file: !10, line: 366, type: !9)
!255 = !DILocalVariable(name: "size", arg: 2, scope: !250, file: !10, line: 367, type: !214)
!256 = !DILocation(line: 366, column: 63, scope: !250)
!257 = !DILocation(line: 367, column: 13, scope: !250)
!258 = !DILocation(line: 369, column: 9, scope: !250)
!259 = !DILocation(line: 370, column: 9, scope: !250)
!260 = !DILocation(line: 372, column: 2, scope: !250)
!261 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_expires_ticks", scope: !203, file: !203, line: 656, type: !262, scopeLine: 658, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !268)
!262 = !DISubroutineType(types: !263)
!263 = !{!264, !266}
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_ticks_t", file: !265, line: 46, baseType: !182)
!265 = !DIFile(filename: "include/zephyr/sys_clock.h", directory: "/home/sri/zephyrproject/zephyr")
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 32)
!267 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !119)
!268 = !{!269}
!269 = !DILocalVariable(name: "t", arg: 1, scope: !261, file: !203, line: 657, type: !266)
!270 = !DILocation(line: 657, column: 30, scope: !261)
!271 = !DILocation(line: 659, column: 28, scope: !261)
!272 = !DILocation(line: 659, column: 31, scope: !261)
!273 = !DILocation(line: 659, column: 36, scope: !261)
!274 = !DILocation(line: 659, column: 9, scope: !261)
!275 = !DILocation(line: 659, column: 2, scope: !261)
!276 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_remaining_ticks", scope: !203, file: !203, line: 671, type: !262, scopeLine: 673, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !277)
!277 = !{!278}
!278 = !DILocalVariable(name: "t", arg: 1, scope: !276, file: !203, line: 672, type: !266)
!279 = !DILocation(line: 672, column: 30, scope: !276)
!280 = !DILocation(line: 674, column: 30, scope: !276)
!281 = !DILocation(line: 674, column: 33, scope: !276)
!282 = !DILocation(line: 674, column: 38, scope: !276)
!283 = !DILocation(line: 674, column: 9, scope: !276)
!284 = !DILocation(line: 674, column: 2, scope: !276)
!285 = distinct !DISubprogram(name: "z_impl_k_timer_expires_ticks", scope: !203, file: !203, line: 1634, type: !286, scopeLine: 1636, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !307)
!286 = !DISubroutineType(types: !287)
!287 = !{!264, !288}
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 32)
!289 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !290)
!290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_timer", file: !203, line: 1439, size: 448, elements: !291)
!291 = !{!292, !293, !294, !299, !300, !305, !306}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !290, file: !203, line: 1445, baseType: !172, size: 192)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !290, file: !203, line: 1448, baseType: !147, size: 64, offset: 192)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_fn", scope: !290, file: !203, line: 1451, baseType: !295, size: 32, offset: 256)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 32)
!296 = !DISubroutineType(types: !297)
!297 = !{null, !298}
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 32)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "stop_fn", scope: !290, file: !203, line: 1454, baseType: !295, size: 32, offset: 288)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !290, file: !203, line: 1457, baseType: !301, size: 64, offset: 320)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_timeout_t", file: !265, line: 67, baseType: !302)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !265, line: 65, size: 64, elements: !303)
!303 = !{!304}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "ticks", scope: !302, file: !265, line: 66, baseType: !264, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !290, file: !203, line: 1460, baseType: !169, size: 32, offset: 384)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !290, file: !203, line: 1463, baseType: !92, size: 32, offset: 416)
!307 = !{!308}
!308 = !DILocalVariable(name: "timer", arg: 1, scope: !285, file: !203, line: 1635, type: !288)
!309 = !DILocation(line: 1635, column: 34, scope: !285)
!310 = !DILocation(line: 1637, column: 28, scope: !285)
!311 = !DILocation(line: 1637, column: 35, scope: !285)
!312 = !DILocation(line: 1637, column: 9, scope: !285)
!313 = !DILocation(line: 1637, column: 2, scope: !285)
!314 = distinct !DISubprogram(name: "z_impl_k_timer_remaining_ticks", scope: !203, file: !203, line: 1649, type: !286, scopeLine: 1651, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !315)
!315 = !{!316}
!316 = !DILocalVariable(name: "timer", arg: 1, scope: !314, file: !203, line: 1650, type: !288)
!317 = !DILocation(line: 1650, column: 34, scope: !314)
!318 = !DILocation(line: 1652, column: 30, scope: !314)
!319 = !DILocation(line: 1652, column: 37, scope: !314)
!320 = !DILocation(line: 1652, column: 9, scope: !314)
!321 = !DILocation(line: 1652, column: 2, scope: !314)
!322 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_set", scope: !203, file: !203, line: 1689, type: !323, scopeLine: 1691, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !325)
!323 = !DISubroutineType(types: !324)
!324 = !{null, !298, !92}
!325 = !{!326, !327}
!326 = !DILocalVariable(name: "timer", arg: 1, scope: !322, file: !203, line: 1689, type: !298)
!327 = !DILocalVariable(name: "user_data", arg: 2, scope: !322, file: !203, line: 1690, type: !92)
!328 = !DILocation(line: 1689, column: 65, scope: !322)
!329 = !DILocation(line: 1690, column: 19, scope: !322)
!330 = !DILocation(line: 1692, column: 21, scope: !322)
!331 = !DILocation(line: 1692, column: 2, scope: !322)
!332 = !DILocation(line: 1692, column: 9, scope: !322)
!333 = !DILocation(line: 1692, column: 19, scope: !322)
!334 = !DILocation(line: 1693, column: 1, scope: !322)
!335 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_get", scope: !203, file: !203, line: 1704, type: !336, scopeLine: 1705, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !338)
!336 = !DISubroutineType(types: !337)
!337 = !{!92, !288}
!338 = !{!339}
!339 = !DILocalVariable(name: "timer", arg: 1, scope: !335, file: !203, line: 1704, type: !288)
!340 = !DILocation(line: 1704, column: 72, scope: !335)
!341 = !DILocation(line: 1706, column: 9, scope: !335)
!342 = !DILocation(line: 1706, column: 16, scope: !335)
!343 = !DILocation(line: 1706, column: 2, scope: !335)
!344 = distinct !DISubprogram(name: "z_impl_k_queue_is_empty", scope: !203, file: !203, line: 2071, type: !345, scopeLine: 2072, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !365)
!345 = !DISubroutineType(types: !346)
!346 = !{!93, !347}
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 32)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_queue", file: !203, line: 1830, size: 128, elements: !349)
!349 = !{!350, !363, !364}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "data_q", scope: !348, file: !203, line: 1831, baseType: !351, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sflist_t", file: !352, line: 60, baseType: !353)
!352 = !DIFile(filename: "include/zephyr/sys/sflist.h", directory: "/home/sri/zephyrproject/zephyr")
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sflist", file: !352, line: 53, size: 64, elements: !354)
!354 = !{!355, !362}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !353, file: !352, line: 54, baseType: !356, size: 32)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 32)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sfnode_t", file: !352, line: 50, baseType: !358)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sfnode", file: !352, line: 44, size: 32, elements: !359)
!359 = !{!360}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "next_and_flags", scope: !358, file: !352, line: 45, baseType: !361, size: 32)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "unative_t", file: !352, line: 40, baseType: !169)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !353, file: !352, line: 55, baseType: !356, size: 32, offset: 32)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !348, file: !203, line: 1832, baseType: !218, offset: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !348, file: !203, line: 1833, baseType: !147, size: 64, offset: 64)
!365 = !{!366}
!366 = !DILocalVariable(name: "queue", arg: 1, scope: !344, file: !203, line: 2071, type: !347)
!367 = !DILocation(line: 2071, column: 59, scope: !344)
!368 = !DILocation(line: 2073, column: 35, scope: !344)
!369 = !DILocation(line: 2073, column: 42, scope: !344)
!370 = !DILocation(line: 2073, column: 14, scope: !344)
!371 = !DILocation(line: 2073, column: 9, scope: !344)
!372 = !DILocation(line: 2073, column: 2, scope: !344)
!373 = distinct !DISubprogram(name: "z_impl_k_sem_count_get", scope: !203, file: !203, line: 3209, type: !374, scopeLine: 3210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !382)
!374 = !DISubroutineType(types: !375)
!375 = !{!96, !376}
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 32)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sem", file: !203, line: 3092, size: 128, elements: !378)
!378 = !{!379, !380, !381}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !377, file: !203, line: 3093, baseType: !147, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !377, file: !203, line: 3094, baseType: !96, size: 32, offset: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !377, file: !203, line: 3095, baseType: !96, size: 32, offset: 96)
!382 = !{!383}
!383 = !DILocalVariable(name: "sem", arg: 1, scope: !373, file: !203, line: 3209, type: !376)
!384 = !DILocation(line: 3209, column: 65, scope: !373)
!385 = !DILocation(line: 3211, column: 9, scope: !373)
!386 = !DILocation(line: 3211, column: 14, scope: !373)
!387 = !DILocation(line: 3211, column: 2, scope: !373)
!388 = distinct !DISubprogram(name: "z_impl_k_msgq_num_free_get", scope: !203, file: !203, line: 4649, type: !389, scopeLine: 4650, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !406)
!389 = !DISubroutineType(types: !390)
!390 = !{!169, !391}
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 32)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_msgq", file: !203, line: 4390, size: 320, elements: !393)
!393 = !{!394, !395, !396, !397, !398, !401, !402, !403, !404, !405}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !392, file: !203, line: 4392, baseType: !147, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !392, file: !203, line: 4394, baseType: !218, offset: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "msg_size", scope: !392, file: !203, line: 4396, baseType: !214, size: 32, offset: 64)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !392, file: !203, line: 4398, baseType: !169, size: 32, offset: 96)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_start", scope: !392, file: !203, line: 4400, baseType: !399, size: 32, offset: 128)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 32)
!400 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_end", scope: !392, file: !203, line: 4402, baseType: !399, size: 32, offset: 160)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "read_ptr", scope: !392, file: !203, line: 4404, baseType: !399, size: 32, offset: 192)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "write_ptr", scope: !392, file: !203, line: 4406, baseType: !399, size: 32, offset: 224)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "used_msgs", scope: !392, file: !203, line: 4408, baseType: !169, size: 32, offset: 256)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !392, file: !203, line: 4413, baseType: !105, size: 8, offset: 288)
!406 = !{!407}
!407 = !DILocalVariable(name: "msgq", arg: 1, scope: !388, file: !203, line: 4649, type: !391)
!408 = !DILocation(line: 4649, column: 66, scope: !388)
!409 = !DILocation(line: 4651, column: 9, scope: !388)
!410 = !DILocation(line: 4651, column: 15, scope: !388)
!411 = !DILocation(line: 4651, column: 26, scope: !388)
!412 = !DILocation(line: 4651, column: 32, scope: !388)
!413 = !DILocation(line: 4651, column: 24, scope: !388)
!414 = !DILocation(line: 4651, column: 2, scope: !388)
!415 = distinct !DISubprogram(name: "z_impl_k_msgq_num_used_get", scope: !203, file: !203, line: 4665, type: !389, scopeLine: 4666, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !416)
!416 = !{!417}
!417 = !DILocalVariable(name: "msgq", arg: 1, scope: !415, file: !203, line: 4665, type: !391)
!418 = !DILocation(line: 4665, column: 66, scope: !415)
!419 = !DILocation(line: 4667, column: 9, scope: !415)
!420 = !DILocation(line: 4667, column: 15, scope: !415)
!421 = !DILocation(line: 4667, column: 2, scope: !415)
!422 = distinct !DISubprogram(name: "z_rb_get_minmax", scope: !4, file: !4, line: 100, type: !423, scopeLine: 101, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !436)
!423 = !DISubroutineType(types: !424)
!424 = !{!97, !425, !105}
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 32)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rbtree", file: !99, line: 91, size: 96, elements: !427)
!427 = !{!428, !429, !435}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !426, file: !99, line: 93, baseType: !97, size: 32)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "lessthan_fn", scope: !426, file: !99, line: 95, baseType: !430, size: 32, offset: 32)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "rb_lessthan_t", file: !99, line: 86, baseType: !431)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 32)
!432 = !DISubroutineType(types: !433)
!433 = !{!434, !97, !97}
!434 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "max_depth", scope: !426, file: !99, line: 97, baseType: !93, size: 32, offset: 64)
!436 = !{!437, !438, !439}
!437 = !DILocalVariable(name: "tree", arg: 1, scope: !422, file: !4, line: 100, type: !425)
!438 = !DILocalVariable(name: "side", arg: 2, scope: !422, file: !4, line: 100, type: !105)
!439 = !DILocalVariable(name: "n", scope: !422, file: !4, line: 102, type: !97)
!440 = !DILocation(line: 100, column: 47, scope: !422)
!441 = !DILocation(line: 100, column: 61, scope: !422)
!442 = !DILocation(line: 102, column: 2, scope: !422)
!443 = !DILocation(line: 102, column: 17, scope: !422)
!444 = !DILocation(line: 104, column: 11, scope: !445)
!445 = distinct !DILexicalBlock(scope: !422, file: !4, line: 104, column: 2)
!446 = !DILocation(line: 104, column: 17, scope: !445)
!447 = !DILocation(line: 104, column: 9, scope: !445)
!448 = !DILocation(line: 104, column: 7, scope: !445)
!449 = !DILocation(line: 104, column: 24, scope: !450)
!450 = distinct !DILexicalBlock(scope: !445, file: !4, line: 104, column: 2)
!451 = !DILocation(line: 104, column: 26, scope: !450)
!452 = !DILocation(line: 104, column: 41, scope: !450)
!453 = !DILocation(line: 104, column: 55, scope: !450)
!454 = !DILocation(line: 104, column: 58, scope: !450)
!455 = !DILocation(line: 104, column: 45, scope: !450)
!456 = !DILocation(line: 104, column: 64, scope: !450)
!457 = !DILocation(line: 0, scope: !450)
!458 = !DILocation(line: 104, column: 2, scope: !445)
!459 = !DILocation(line: 107, column: 2, scope: !460)
!460 = distinct !DILexicalBlock(scope: !450, file: !4, line: 105, column: 28)
!461 = !DILocation(line: 105, column: 18, scope: !450)
!462 = !DILocation(line: 105, column: 21, scope: !450)
!463 = !DILocation(line: 105, column: 8, scope: !450)
!464 = !DILocation(line: 105, column: 6, scope: !450)
!465 = !DILocation(line: 104, column: 2, scope: !450)
!466 = distinct !{!466, !458, !467}
!467 = !DILocation(line: 107, column: 2, scope: !445)
!468 = !DILocation(line: 108, column: 9, scope: !422)
!469 = !DILocation(line: 109, column: 1, scope: !422)
!470 = !DILocation(line: 108, column: 2, scope: !422)
!471 = distinct !DISubprogram(name: "get_child", scope: !4, file: !4, line: 21, type: !472, scopeLine: 22, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !474)
!472 = !DISubroutineType(types: !473)
!473 = !{!97, !97, !105}
!474 = !{!475, !476, !477}
!475 = !DILocalVariable(name: "n", arg: 1, scope: !471, file: !4, line: 21, type: !97)
!476 = !DILocalVariable(name: "side", arg: 2, scope: !471, file: !4, line: 21, type: !105)
!477 = !DILocalVariable(name: "l", scope: !471, file: !4, line: 28, type: !94)
!478 = !DILocation(line: 21, column: 48, scope: !471)
!479 = !DILocation(line: 21, column: 59, scope: !471)
!480 = !DILocation(line: 24, column: 6, scope: !481)
!481 = distinct !DILexicalBlock(scope: !471, file: !4, line: 24, column: 6)
!482 = !DILocation(line: 24, column: 11, scope: !481)
!483 = !DILocation(line: 24, column: 6, scope: !471)
!484 = !DILocation(line: 25, column: 10, scope: !485)
!485 = distinct !DILexicalBlock(scope: !481, file: !4, line: 24, column: 18)
!486 = !DILocation(line: 25, column: 13, scope: !485)
!487 = !DILocation(line: 25, column: 3, scope: !485)
!488 = !DILocation(line: 28, column: 2, scope: !471)
!489 = !DILocation(line: 28, column: 12, scope: !471)
!490 = !DILocation(line: 28, column: 28, scope: !471)
!491 = !DILocation(line: 28, column: 31, scope: !471)
!492 = !DILocation(line: 28, column: 16, scope: !471)
!493 = !DILocation(line: 30, column: 4, scope: !471)
!494 = !DILocation(line: 31, column: 27, scope: !471)
!495 = !DILocation(line: 31, column: 9, scope: !471)
!496 = !DILocation(line: 31, column: 2, scope: !471)
!497 = !DILocation(line: 32, column: 1, scope: !471)
!498 = distinct !DISubprogram(name: "rb_insert", scope: !4, file: !4, line: 217, type: !499, scopeLine: 218, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !501)
!499 = !DISubroutineType(types: !500)
!500 = !{null, !425, !97}
!501 = !{!502, !503, !504, !505, !509, !510, !511}
!502 = !DILocalVariable(name: "tree", arg: 1, scope: !498, file: !4, line: 217, type: !425)
!503 = !DILocalVariable(name: "node", arg: 2, scope: !498, file: !4, line: 217, type: !97)
!504 = !DILocalVariable(name: "__vla_expr0", scope: !498, type: !96, flags: DIFlagArtificial)
!505 = !DILocalVariable(name: "stack", scope: !498, file: !4, line: 232, type: !506)
!506 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, elements: !507)
!507 = !{!508}
!508 = !DISubrange(count: !504)
!509 = !DILocalVariable(name: "stacksz", scope: !498, file: !4, line: 235, type: !93)
!510 = !DILocalVariable(name: "parent", scope: !498, file: !4, line: 237, type: !97)
!511 = !DILocalVariable(name: "side", scope: !498, file: !4, line: 239, type: !105)
!512 = !DILocation(line: 217, column: 31, scope: !498)
!513 = !DILocation(line: 217, column: 52, scope: !498)
!514 = !DILocation(line: 219, column: 12, scope: !498)
!515 = !DILocation(line: 219, column: 2, scope: !498)
!516 = !DILocation(line: 220, column: 12, scope: !498)
!517 = !DILocation(line: 220, column: 2, scope: !498)
!518 = !DILocation(line: 222, column: 6, scope: !519)
!519 = distinct !DILexicalBlock(scope: !498, file: !4, line: 222, column: 6)
!520 = !DILocation(line: 222, column: 12, scope: !519)
!521 = !DILocation(line: 222, column: 17, scope: !519)
!522 = !DILocation(line: 222, column: 6, scope: !498)
!523 = !DILocation(line: 223, column: 16, scope: !524)
!524 = distinct !DILexicalBlock(scope: !519, file: !4, line: 222, column: 32)
!525 = !DILocation(line: 223, column: 3, scope: !524)
!526 = !DILocation(line: 223, column: 9, scope: !524)
!527 = !DILocation(line: 223, column: 14, scope: !524)
!528 = !DILocation(line: 224, column: 3, scope: !524)
!529 = !DILocation(line: 224, column: 9, scope: !524)
!530 = !DILocation(line: 224, column: 19, scope: !524)
!531 = !DILocation(line: 225, column: 13, scope: !524)
!532 = !DILocation(line: 225, column: 3, scope: !524)
!533 = !DILocation(line: 226, column: 3, scope: !524)
!534 = !DILocation(line: 232, column: 23, scope: !498)
!535 = !DILocation(line: 232, column: 29, scope: !498)
!536 = !DILocation(line: 232, column: 39, scope: !498)
!537 = !DILocation(line: 232, column: 2, scope: !498)
!538 = !DILocation(line: 0, scope: !498)
!539 = !DILocation(line: 232, column: 17, scope: !498)
!540 = !DILocation(line: 235, column: 2, scope: !498)
!541 = !DILocation(line: 235, column: 6, scope: !498)
!542 = !DILocation(line: 235, column: 31, scope: !498)
!543 = !DILocation(line: 235, column: 37, scope: !498)
!544 = !DILocation(line: 235, column: 16, scope: !498)
!545 = !DILocation(line: 237, column: 2, scope: !498)
!546 = !DILocation(line: 237, column: 17, scope: !498)
!547 = !DILocation(line: 237, column: 32, scope: !498)
!548 = !DILocation(line: 237, column: 40, scope: !498)
!549 = !DILocation(line: 237, column: 26, scope: !498)
!550 = !DILocation(line: 239, column: 2, scope: !498)
!551 = !DILocation(line: 239, column: 10, scope: !498)
!552 = !DILocation(line: 239, column: 17, scope: !498)
!553 = !DILocation(line: 239, column: 23, scope: !498)
!554 = !DILocation(line: 239, column: 35, scope: !498)
!555 = !DILocation(line: 239, column: 41, scope: !498)
!556 = !DILocation(line: 241, column: 12, scope: !498)
!557 = !DILocation(line: 241, column: 20, scope: !498)
!558 = !DILocation(line: 241, column: 26, scope: !498)
!559 = !DILocation(line: 241, column: 2, scope: !498)
!560 = !DILocation(line: 242, column: 12, scope: !498)
!561 = !DILocation(line: 242, column: 2, scope: !498)
!562 = !DILocation(line: 244, column: 21, scope: !498)
!563 = !DILocation(line: 244, column: 15, scope: !498)
!564 = !DILocation(line: 244, column: 2, scope: !498)
!565 = !DILocation(line: 244, column: 19, scope: !498)
!566 = !DILocation(line: 245, column: 23, scope: !498)
!567 = !DILocation(line: 245, column: 2, scope: !498)
!568 = !DILocation(line: 247, column: 6, scope: !569)
!569 = distinct !DILexicalBlock(scope: !498, file: !4, line: 247, column: 6)
!570 = !DILocation(line: 247, column: 16, scope: !569)
!571 = !DILocation(line: 247, column: 22, scope: !569)
!572 = !DILocation(line: 247, column: 14, scope: !569)
!573 = !DILocation(line: 247, column: 6, scope: !498)
!574 = !DILocation(line: 248, column: 21, scope: !575)
!575 = distinct !DILexicalBlock(scope: !569, file: !4, line: 247, column: 33)
!576 = !DILocation(line: 248, column: 3, scope: !575)
!577 = !DILocation(line: 248, column: 9, scope: !575)
!578 = !DILocation(line: 248, column: 19, scope: !575)
!579 = !DILocation(line: 249, column: 2, scope: !575)
!580 = !DILocation(line: 252, column: 15, scope: !498)
!581 = !DILocation(line: 252, column: 2, scope: !498)
!582 = !DILocation(line: 252, column: 8, scope: !498)
!583 = !DILocation(line: 252, column: 13, scope: !498)
!584 = !DILocation(line: 254, column: 1, scope: !498)
!585 = distinct !DISubprogram(name: "set_child", scope: !4, file: !4, line: 34, type: !586, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !588)
!586 = !DISubroutineType(types: !587)
!587 = !{null, !97, !105, !92}
!588 = !{!589, !590, !591, !592, !595}
!589 = !DILocalVariable(name: "n", arg: 1, scope: !585, file: !4, line: 34, type: !97)
!590 = !DILocalVariable(name: "side", arg: 2, scope: !585, file: !4, line: 34, type: !105)
!591 = !DILocalVariable(name: "val", arg: 3, scope: !585, file: !4, line: 34, type: !92)
!592 = !DILocalVariable(name: "old", scope: !593, file: !4, line: 40, type: !94)
!593 = distinct !DILexicalBlock(scope: !594, file: !4, line: 39, column: 9)
!594 = distinct !DILexicalBlock(scope: !585, file: !4, line: 37, column: 6)
!595 = !DILocalVariable(name: "new", scope: !593, file: !4, line: 41, type: !94)
!596 = !DILocation(line: 34, column: 38, scope: !585)
!597 = !DILocation(line: 34, column: 49, scope: !585)
!598 = !DILocation(line: 34, column: 61, scope: !585)
!599 = !DILocation(line: 37, column: 6, scope: !594)
!600 = !DILocation(line: 37, column: 11, scope: !594)
!601 = !DILocation(line: 37, column: 6, scope: !585)
!602 = !DILocation(line: 38, column: 20, scope: !603)
!603 = distinct !DILexicalBlock(scope: !594, file: !4, line: 37, column: 18)
!604 = !DILocation(line: 38, column: 3, scope: !603)
!605 = !DILocation(line: 38, column: 6, scope: !603)
!606 = !DILocation(line: 38, column: 18, scope: !603)
!607 = !DILocation(line: 39, column: 2, scope: !603)
!608 = !DILocation(line: 40, column: 3, scope: !593)
!609 = !DILocation(line: 40, column: 13, scope: !593)
!610 = !DILocation(line: 40, column: 31, scope: !593)
!611 = !DILocation(line: 40, column: 34, scope: !593)
!612 = !DILocation(line: 40, column: 19, scope: !593)
!613 = !DILocation(line: 41, column: 3, scope: !593)
!614 = !DILocation(line: 41, column: 13, scope: !593)
!615 = !DILocation(line: 41, column: 31, scope: !593)
!616 = !DILocation(line: 41, column: 19, scope: !593)
!617 = !DILocation(line: 43, column: 30, scope: !593)
!618 = !DILocation(line: 43, column: 37, scope: !593)
!619 = !DILocation(line: 43, column: 41, scope: !593)
!620 = !DILocation(line: 43, column: 34, scope: !593)
!621 = !DILocation(line: 43, column: 20, scope: !593)
!622 = !DILocation(line: 43, column: 3, scope: !593)
!623 = !DILocation(line: 43, column: 6, scope: !593)
!624 = !DILocation(line: 43, column: 18, scope: !593)
!625 = !DILocation(line: 44, column: 2, scope: !594)
!626 = !DILocation(line: 45, column: 1, scope: !585)
!627 = distinct !DISubprogram(name: "set_color", scope: !4, file: !4, line: 63, type: !628, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !630)
!628 = !DISubroutineType(types: !629)
!629 = !{null, !97, !3}
!630 = !{!631, !632, !633}
!631 = !DILocalVariable(name: "n", arg: 1, scope: !627, file: !4, line: 63, type: !97)
!632 = !DILocalVariable(name: "color", arg: 2, scope: !627, file: !4, line: 63, type: !3)
!633 = !DILocalVariable(name: "p", scope: !627, file: !4, line: 67, type: !634)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 32)
!635 = !DILocation(line: 63, column: 38, scope: !627)
!636 = !DILocation(line: 63, column: 55, scope: !627)
!637 = !DILocation(line: 67, column: 2, scope: !627)
!638 = !DILocation(line: 67, column: 13, scope: !627)
!639 = !DILocation(line: 67, column: 27, scope: !627)
!640 = !DILocation(line: 67, column: 30, scope: !627)
!641 = !DILocation(line: 69, column: 9, scope: !627)
!642 = !DILocation(line: 69, column: 8, scope: !627)
!643 = !DILocation(line: 69, column: 11, scope: !627)
!644 = !DILocation(line: 69, column: 30, scope: !627)
!645 = !DILocation(line: 69, column: 21, scope: !627)
!646 = !DILocation(line: 69, column: 19, scope: !627)
!647 = !DILocation(line: 69, column: 3, scope: !627)
!648 = !DILocation(line: 69, column: 5, scope: !627)
!649 = !DILocation(line: 70, column: 1, scope: !627)
!650 = distinct !DISubprogram(name: "find_and_stack", scope: !4, file: !4, line: 79, type: !651, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !654)
!651 = !DISubroutineType(types: !652)
!652 = !{!93, !425, !97, !653}
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 32)
!654 = !{!655, !656, !657, !658, !659, !661}
!655 = !DILocalVariable(name: "tree", arg: 1, scope: !650, file: !4, line: 79, type: !425)
!656 = !DILocalVariable(name: "node", arg: 2, scope: !650, file: !4, line: 79, type: !97)
!657 = !DILocalVariable(name: "stack", arg: 3, scope: !650, file: !4, line: 80, type: !653)
!658 = !DILocalVariable(name: "sz", scope: !650, file: !4, line: 82, type: !93)
!659 = !DILocalVariable(name: "side", scope: !660, file: !4, line: 87, type: !105)
!660 = distinct !DILexicalBlock(scope: !650, file: !4, line: 86, column: 32)
!661 = !DILocalVariable(name: "ch", scope: !660, file: !4, line: 88, type: !97)
!662 = !DILocation(line: 79, column: 42, scope: !650)
!663 = !DILocation(line: 79, column: 63, scope: !650)
!664 = !DILocation(line: 80, column: 22, scope: !650)
!665 = !DILocation(line: 82, column: 2, scope: !650)
!666 = !DILocation(line: 82, column: 6, scope: !650)
!667 = !DILocation(line: 84, column: 16, scope: !650)
!668 = !DILocation(line: 84, column: 22, scope: !650)
!669 = !DILocation(line: 84, column: 2, scope: !650)
!670 = !DILocation(line: 84, column: 10, scope: !650)
!671 = !DILocation(line: 84, column: 14, scope: !650)
!672 = !DILocation(line: 86, column: 2, scope: !650)
!673 = !DILocation(line: 86, column: 9, scope: !650)
!674 = !DILocation(line: 86, column: 15, scope: !650)
!675 = !DILocation(line: 86, column: 18, scope: !650)
!676 = !DILocation(line: 86, column: 26, scope: !650)
!677 = !DILocation(line: 86, column: 23, scope: !650)
!678 = !DILocation(line: 87, column: 3, scope: !660)
!679 = !DILocation(line: 87, column: 11, scope: !660)
!680 = !DILocation(line: 87, column: 18, scope: !660)
!681 = !DILocation(line: 87, column: 24, scope: !660)
!682 = !DILocation(line: 87, column: 36, scope: !660)
!683 = !DILocation(line: 87, column: 42, scope: !660)
!684 = !DILocation(line: 87, column: 48, scope: !660)
!685 = !DILocation(line: 87, column: 51, scope: !660)
!686 = !DILocation(line: 88, column: 3, scope: !660)
!687 = !DILocation(line: 88, column: 18, scope: !660)
!688 = !DILocation(line: 88, column: 33, scope: !660)
!689 = !DILocation(line: 88, column: 39, scope: !660)
!690 = !DILocation(line: 88, column: 42, scope: !660)
!691 = !DILocation(line: 88, column: 48, scope: !660)
!692 = !DILocation(line: 88, column: 23, scope: !660)
!693 = !DILocation(line: 90, column: 7, scope: !694)
!694 = distinct !DILexicalBlock(scope: !660, file: !4, line: 90, column: 7)
!695 = !DILocation(line: 90, column: 10, scope: !694)
!696 = !DILocation(line: 90, column: 7, scope: !660)
!697 = !DILocation(line: 91, column: 18, scope: !698)
!698 = distinct !DILexicalBlock(scope: !694, file: !4, line: 90, column: 25)
!699 = !DILocation(line: 91, column: 4, scope: !698)
!700 = !DILocation(line: 91, column: 12, scope: !698)
!701 = !DILocation(line: 91, column: 16, scope: !698)
!702 = !DILocation(line: 92, column: 3, scope: !698)
!703 = !DILocation(line: 93, column: 4, scope: !704)
!704 = distinct !DILexicalBlock(scope: !694, file: !4, line: 92, column: 10)
!705 = !DILocation(line: 95, column: 2, scope: !650)
!706 = distinct !{!706, !672, !705}
!707 = !DILocation(line: 97, column: 9, scope: !650)
!708 = !DILocation(line: 98, column: 1, scope: !650)
!709 = !DILocation(line: 97, column: 2, scope: !650)
!710 = distinct !DISubprogram(name: "fix_extra_red", scope: !4, file: !4, line: 155, type: !711, scopeLine: 156, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !713)
!711 = !DISubroutineType(types: !712)
!712 = !{null, !653, !93}
!713 = !{!714, !715, !716, !718, !719, !720, !721, !722}
!714 = !DILocalVariable(name: "stack", arg: 1, scope: !710, file: !4, line: 155, type: !653)
!715 = !DILocalVariable(name: "stacksz", arg: 2, scope: !710, file: !4, line: 155, type: !93)
!716 = !DILocalVariable(name: "node", scope: !717, file: !4, line: 158, type: !97)
!717 = distinct !DILexicalBlock(scope: !710, file: !4, line: 157, column: 22)
!718 = !DILocalVariable(name: "parent", scope: !717, file: !4, line: 159, type: !97)
!719 = !DILocalVariable(name: "grandparent", scope: !717, file: !4, line: 176, type: !97)
!720 = !DILocalVariable(name: "side", scope: !717, file: !4, line: 177, type: !105)
!721 = !DILocalVariable(name: "aunt", scope: !717, file: !4, line: 178, type: !97)
!722 = !DILocalVariable(name: "parent_side", scope: !717, file: !4, line: 198, type: !105)
!723 = !DILocation(line: 155, column: 43, scope: !710)
!724 = !DILocation(line: 155, column: 54, scope: !710)
!725 = !DILocation(line: 157, column: 2, scope: !710)
!726 = !DILocation(line: 157, column: 9, scope: !710)
!727 = !DILocation(line: 157, column: 17, scope: !710)
!728 = !DILocation(line: 158, column: 3, scope: !717)
!729 = !DILocation(line: 158, column: 18, scope: !717)
!730 = !DILocation(line: 158, column: 25, scope: !717)
!731 = !DILocation(line: 158, column: 31, scope: !717)
!732 = !DILocation(line: 158, column: 39, scope: !717)
!733 = !DILocation(line: 159, column: 3, scope: !717)
!734 = !DILocation(line: 159, column: 18, scope: !717)
!735 = !DILocation(line: 159, column: 27, scope: !717)
!736 = !DILocation(line: 159, column: 33, scope: !717)
!737 = !DILocation(line: 159, column: 41, scope: !717)
!738 = !DILocation(line: 167, column: 16, scope: !739)
!739 = distinct !DILexicalBlock(scope: !717, file: !4, line: 167, column: 7)
!740 = !DILocation(line: 167, column: 7, scope: !739)
!741 = !DILocation(line: 167, column: 7, scope: !717)
!742 = !DILocation(line: 168, column: 4, scope: !743)
!743 = distinct !DILexicalBlock(scope: !739, file: !4, line: 167, column: 25)
!744 = !DILocation(line: 176, column: 3, scope: !717)
!745 = !DILocation(line: 176, column: 18, scope: !717)
!746 = !DILocation(line: 176, column: 32, scope: !717)
!747 = !DILocation(line: 176, column: 38, scope: !717)
!748 = !DILocation(line: 176, column: 46, scope: !717)
!749 = !DILocation(line: 177, column: 3, scope: !717)
!750 = !DILocation(line: 177, column: 11, scope: !717)
!751 = !DILocation(line: 177, column: 27, scope: !717)
!752 = !DILocation(line: 177, column: 40, scope: !717)
!753 = !DILocation(line: 177, column: 18, scope: !717)
!754 = !DILocation(line: 178, column: 3, scope: !717)
!755 = !DILocation(line: 178, column: 18, scope: !717)
!756 = !DILocation(line: 178, column: 35, scope: !717)
!757 = !DILocation(line: 179, column: 8, scope: !717)
!758 = !DILocation(line: 179, column: 13, scope: !717)
!759 = !DILocation(line: 179, column: 7, scope: !717)
!760 = !DILocation(line: 178, column: 25, scope: !717)
!761 = !DILocation(line: 181, column: 8, scope: !762)
!762 = distinct !DILexicalBlock(scope: !717, file: !4, line: 181, column: 7)
!763 = !DILocation(line: 181, column: 13, scope: !762)
!764 = !DILocation(line: 181, column: 28, scope: !762)
!765 = !DILocation(line: 181, column: 38, scope: !762)
!766 = !DILocation(line: 181, column: 31, scope: !762)
!767 = !DILocation(line: 181, column: 7, scope: !717)
!768 = !DILocation(line: 182, column: 14, scope: !769)
!769 = distinct !DILexicalBlock(scope: !762, file: !4, line: 181, column: 45)
!770 = !DILocation(line: 182, column: 4, scope: !769)
!771 = !DILocation(line: 183, column: 14, scope: !769)
!772 = !DILocation(line: 183, column: 4, scope: !769)
!773 = !DILocation(line: 184, column: 14, scope: !769)
!774 = !DILocation(line: 184, column: 4, scope: !769)
!775 = !DILocation(line: 190, column: 12, scope: !769)
!776 = !DILocation(line: 191, column: 4, scope: !769)
!777 = distinct !{!777, !725, !778}
!778 = !DILocation(line: 209, column: 2, scope: !710)
!779 = !DILocation(line: 198, column: 3, scope: !717)
!780 = !DILocation(line: 198, column: 11, scope: !717)
!781 = !DILocation(line: 198, column: 34, scope: !717)
!782 = !DILocation(line: 198, column: 42, scope: !717)
!783 = !DILocation(line: 198, column: 25, scope: !717)
!784 = !DILocation(line: 200, column: 7, scope: !785)
!785 = distinct !DILexicalBlock(scope: !717, file: !4, line: 200, column: 7)
!786 = !DILocation(line: 200, column: 22, scope: !785)
!787 = !DILocation(line: 200, column: 19, scope: !785)
!788 = !DILocation(line: 200, column: 7, scope: !717)
!789 = !DILocation(line: 201, column: 11, scope: !790)
!790 = distinct !DILexicalBlock(scope: !785, file: !4, line: 200, column: 28)
!791 = !DILocation(line: 201, column: 18, scope: !790)
!792 = !DILocation(line: 201, column: 4, scope: !790)
!793 = !DILocation(line: 202, column: 3, scope: !790)
!794 = !DILocation(line: 205, column: 10, scope: !717)
!795 = !DILocation(line: 205, column: 17, scope: !717)
!796 = !DILocation(line: 205, column: 25, scope: !717)
!797 = !DILocation(line: 205, column: 3, scope: !717)
!798 = !DILocation(line: 206, column: 13, scope: !717)
!799 = !DILocation(line: 206, column: 19, scope: !717)
!800 = !DILocation(line: 206, column: 27, scope: !717)
!801 = !DILocation(line: 206, column: 3, scope: !717)
!802 = !DILocation(line: 207, column: 13, scope: !717)
!803 = !DILocation(line: 207, column: 19, scope: !717)
!804 = !DILocation(line: 207, column: 27, scope: !717)
!805 = !DILocation(line: 207, column: 3, scope: !717)
!806 = !DILocation(line: 214, column: 12, scope: !710)
!807 = !DILocation(line: 214, column: 2, scope: !710)
!808 = !DILocation(line: 215, column: 1, scope: !710)
!809 = distinct !DISubprogram(name: "rb_remove", scope: !4, file: !4, line: 367, type: !499, scopeLine: 368, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !810)
!810 = !{!811, !812, !813, !814, !815, !819, !820, !823, !824, !825, !826, !827, !828}
!811 = !DILocalVariable(name: "tree", arg: 1, scope: !809, file: !4, line: 367, type: !425)
!812 = !DILocalVariable(name: "node", arg: 2, scope: !809, file: !4, line: 367, type: !97)
!813 = !DILocalVariable(name: "tmp", scope: !809, file: !4, line: 369, type: !97)
!814 = !DILocalVariable(name: "__vla_expr0", scope: !809, type: !96, flags: DIFlagArtificial)
!815 = !DILocalVariable(name: "stack", scope: !809, file: !4, line: 373, type: !816)
!816 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, elements: !817)
!817 = !{!818}
!818 = !DISubrange(count: !814)
!819 = !DILocalVariable(name: "stacksz", scope: !809, file: !4, line: 376, type: !93)
!820 = !DILocalVariable(name: "stacksz0", scope: !821, file: !4, line: 388, type: !93)
!821 = distinct !DILexicalBlock(scope: !822, file: !4, line: 387, column: 82)
!822 = distinct !DILexicalBlock(scope: !809, file: !4, line: 387, column: 6)
!823 = !DILocalVariable(name: "hiparent", scope: !821, file: !4, line: 389, type: !97)
!824 = !DILocalVariable(name: "loparent", scope: !821, file: !4, line: 389, type: !97)
!825 = !DILocalVariable(name: "node2", scope: !821, file: !4, line: 390, type: !97)
!826 = !DILocalVariable(name: "ctmp", scope: !821, file: !4, line: 440, type: !3)
!827 = !DILocalVariable(name: "child", scope: !809, file: !4, line: 449, type: !97)
!828 = !DILocalVariable(name: "parent", scope: !809, file: !4, line: 466, type: !97)
!829 = !DILocation(line: 367, column: 31, scope: !809)
!830 = !DILocation(line: 367, column: 52, scope: !809)
!831 = !DILocation(line: 369, column: 2, scope: !809)
!832 = !DILocation(line: 369, column: 17, scope: !809)
!833 = !DILocation(line: 373, column: 23, scope: !809)
!834 = !DILocation(line: 373, column: 29, scope: !809)
!835 = !DILocation(line: 373, column: 39, scope: !809)
!836 = !DILocation(line: 373, column: 2, scope: !809)
!837 = !DILocation(line: 0, scope: !809)
!838 = !DILocation(line: 373, column: 17, scope: !809)
!839 = !DILocation(line: 376, column: 2, scope: !809)
!840 = !DILocation(line: 376, column: 6, scope: !809)
!841 = !DILocation(line: 376, column: 31, scope: !809)
!842 = !DILocation(line: 376, column: 37, scope: !809)
!843 = !DILocation(line: 376, column: 16, scope: !809)
!844 = !DILocation(line: 378, column: 6, scope: !845)
!845 = distinct !DILexicalBlock(scope: !809, file: !4, line: 378, column: 6)
!846 = !DILocation(line: 378, column: 20, scope: !845)
!847 = !DILocation(line: 378, column: 28, scope: !845)
!848 = !DILocation(line: 378, column: 14, scope: !845)
!849 = !DILocation(line: 378, column: 11, scope: !845)
!850 = !DILocation(line: 378, column: 6, scope: !809)
!851 = !DILocation(line: 379, column: 3, scope: !852)
!852 = distinct !DILexicalBlock(scope: !845, file: !4, line: 378, column: 34)
!853 = !DILocation(line: 387, column: 17, scope: !822)
!854 = !DILocation(line: 387, column: 7, scope: !822)
!855 = !DILocation(line: 387, column: 27, scope: !822)
!856 = !DILocation(line: 387, column: 42, scope: !822)
!857 = !DILocation(line: 387, column: 56, scope: !822)
!858 = !DILocation(line: 387, column: 46, scope: !822)
!859 = !DILocation(line: 387, column: 66, scope: !822)
!860 = !DILocation(line: 387, column: 6, scope: !809)
!861 = !DILocation(line: 388, column: 3, scope: !821)
!862 = !DILocation(line: 388, column: 7, scope: !821)
!863 = !DILocation(line: 388, column: 18, scope: !821)
!864 = !DILocation(line: 389, column: 3, scope: !821)
!865 = !DILocation(line: 389, column: 18, scope: !821)
!866 = !DILocation(line: 389, column: 29, scope: !821)
!867 = !DILocation(line: 390, column: 3, scope: !821)
!868 = !DILocation(line: 390, column: 18, scope: !821)
!869 = !DILocation(line: 390, column: 36, scope: !821)
!870 = !DILocation(line: 390, column: 26, scope: !821)
!871 = !DILocation(line: 392, column: 15, scope: !821)
!872 = !DILocation(line: 392, column: 23, scope: !821)
!873 = !DILocation(line: 392, column: 14, scope: !821)
!874 = !DILocation(line: 392, column: 36, scope: !821)
!875 = !DILocation(line: 392, column: 44, scope: !821)
!876 = !DILocation(line: 392, column: 30, scope: !821)
!877 = !DILocation(line: 392, column: 12, scope: !821)
!878 = !DILocation(line: 393, column: 22, scope: !821)
!879 = !DILocation(line: 393, column: 16, scope: !821)
!880 = !DILocation(line: 393, column: 3, scope: !821)
!881 = !DILocation(line: 393, column: 20, scope: !821)
!882 = !DILocation(line: 394, column: 3, scope: !821)
!883 = !DILocation(line: 394, column: 20, scope: !821)
!884 = !DILocation(line: 394, column: 10, scope: !821)
!885 = !DILocation(line: 394, column: 31, scope: !821)
!886 = !DILocation(line: 395, column: 22, scope: !887)
!887 = distinct !DILexicalBlock(scope: !821, file: !4, line: 394, column: 46)
!888 = !DILocation(line: 395, column: 12, scope: !887)
!889 = !DILocation(line: 395, column: 10, scope: !887)
!890 = !DILocation(line: 396, column: 23, scope: !887)
!891 = !DILocation(line: 396, column: 17, scope: !887)
!892 = !DILocation(line: 396, column: 4, scope: !887)
!893 = !DILocation(line: 396, column: 21, scope: !887)
!894 = distinct !{!894, !882, !895}
!895 = !DILocation(line: 397, column: 3, scope: !821)
!896 = !DILocation(line: 399, column: 20, scope: !821)
!897 = !DILocation(line: 399, column: 28, scope: !821)
!898 = !DILocation(line: 399, column: 14, scope: !821)
!899 = !DILocation(line: 399, column: 12, scope: !821)
!900 = !DILocation(line: 417, column: 7, scope: !901)
!901 = distinct !DILexicalBlock(scope: !821, file: !4, line: 417, column: 7)
!902 = !DILocation(line: 417, column: 16, scope: !901)
!903 = !DILocation(line: 417, column: 7, scope: !821)
!904 = !DILocation(line: 418, column: 14, scope: !905)
!905 = distinct !DILexicalBlock(scope: !901, file: !4, line: 417, column: 31)
!906 = !DILocation(line: 418, column: 33, scope: !905)
!907 = !DILocation(line: 418, column: 43, scope: !905)
!908 = !DILocation(line: 418, column: 24, scope: !905)
!909 = !DILocation(line: 418, column: 50, scope: !905)
!910 = !DILocation(line: 418, column: 4, scope: !905)
!911 = !DILocation(line: 419, column: 3, scope: !905)
!912 = !DILocation(line: 420, column: 17, scope: !913)
!913 = distinct !DILexicalBlock(scope: !901, file: !4, line: 419, column: 10)
!914 = !DILocation(line: 420, column: 4, scope: !913)
!915 = !DILocation(line: 420, column: 10, scope: !913)
!916 = !DILocation(line: 420, column: 15, scope: !913)
!917 = !DILocation(line: 423, column: 7, scope: !918)
!918 = distinct !DILexicalBlock(scope: !821, file: !4, line: 423, column: 7)
!919 = !DILocation(line: 423, column: 19, scope: !918)
!920 = !DILocation(line: 423, column: 16, scope: !918)
!921 = !DILocation(line: 423, column: 7, scope: !821)
!922 = !DILocation(line: 424, column: 14, scope: !923)
!923 = distinct !DILexicalBlock(scope: !918, file: !4, line: 423, column: 25)
!924 = !DILocation(line: 424, column: 34, scope: !923)
!925 = !DILocation(line: 424, column: 24, scope: !923)
!926 = !DILocation(line: 424, column: 4, scope: !923)
!927 = !DILocation(line: 425, column: 14, scope: !923)
!928 = !DILocation(line: 425, column: 25, scope: !923)
!929 = !DILocation(line: 425, column: 4, scope: !923)
!930 = !DILocation(line: 426, column: 3, scope: !923)
!931 = !DILocation(line: 427, column: 14, scope: !932)
!932 = distinct !DILexicalBlock(scope: !918, file: !4, line: 426, column: 10)
!933 = !DILocation(line: 427, column: 33, scope: !932)
!934 = !DILocation(line: 427, column: 43, scope: !932)
!935 = !DILocation(line: 427, column: 24, scope: !932)
!936 = !DILocation(line: 427, column: 51, scope: !932)
!937 = !DILocation(line: 427, column: 4, scope: !932)
!938 = !DILocation(line: 428, column: 20, scope: !932)
!939 = !DILocation(line: 428, column: 10, scope: !932)
!940 = !DILocation(line: 428, column: 8, scope: !932)
!941 = !DILocation(line: 429, column: 14, scope: !932)
!942 = !DILocation(line: 429, column: 34, scope: !932)
!943 = !DILocation(line: 429, column: 24, scope: !932)
!944 = !DILocation(line: 429, column: 4, scope: !932)
!945 = !DILocation(line: 430, column: 14, scope: !932)
!946 = !DILocation(line: 430, column: 25, scope: !932)
!947 = !DILocation(line: 430, column: 4, scope: !932)
!948 = !DILocation(line: 433, column: 13, scope: !821)
!949 = !DILocation(line: 433, column: 34, scope: !821)
!950 = !DILocation(line: 433, column: 24, scope: !821)
!951 = !DILocation(line: 433, column: 3, scope: !821)
!952 = !DILocation(line: 434, column: 13, scope: !821)
!953 = !DILocation(line: 434, column: 3, scope: !821)
!954 = !DILocation(line: 436, column: 15, scope: !821)
!955 = !DILocation(line: 436, column: 24, scope: !821)
!956 = !DILocation(line: 436, column: 9, scope: !821)
!957 = !DILocation(line: 436, column: 7, scope: !821)
!958 = !DILocation(line: 437, column: 31, scope: !821)
!959 = !DILocation(line: 437, column: 39, scope: !821)
!960 = !DILocation(line: 437, column: 25, scope: !821)
!961 = !DILocation(line: 437, column: 9, scope: !821)
!962 = !DILocation(line: 437, column: 18, scope: !821)
!963 = !DILocation(line: 437, column: 3, scope: !821)
!964 = !DILocation(line: 437, column: 23, scope: !821)
!965 = !DILocation(line: 438, column: 24, scope: !821)
!966 = !DILocation(line: 438, column: 9, scope: !821)
!967 = !DILocation(line: 438, column: 17, scope: !821)
!968 = !DILocation(line: 438, column: 3, scope: !821)
!969 = !DILocation(line: 438, column: 22, scope: !821)
!970 = !DILocation(line: 440, column: 3, scope: !821)
!971 = !DILocation(line: 440, column: 17, scope: !821)
!972 = !DILocation(line: 440, column: 34, scope: !821)
!973 = !DILocation(line: 440, column: 24, scope: !821)
!974 = !DILocation(line: 442, column: 13, scope: !821)
!975 = !DILocation(line: 442, column: 29, scope: !821)
!976 = !DILocation(line: 442, column: 19, scope: !821)
!977 = !DILocation(line: 442, column: 3, scope: !821)
!978 = !DILocation(line: 443, column: 13, scope: !821)
!979 = !DILocation(line: 443, column: 20, scope: !821)
!980 = !DILocation(line: 443, column: 3, scope: !821)
!981 = !DILocation(line: 444, column: 2, scope: !822)
!982 = !DILocation(line: 444, column: 2, scope: !821)
!983 = !DILocation(line: 449, column: 2, scope: !809)
!984 = !DILocation(line: 449, column: 17, scope: !809)
!985 = !DILocation(line: 449, column: 35, scope: !809)
!986 = !DILocation(line: 449, column: 25, scope: !809)
!987 = !DILocation(line: 451, column: 6, scope: !988)
!988 = distinct !DILexicalBlock(scope: !809, file: !4, line: 451, column: 6)
!989 = !DILocation(line: 451, column: 12, scope: !988)
!990 = !DILocation(line: 451, column: 6, scope: !809)
!991 = !DILocation(line: 452, column: 21, scope: !992)
!992 = distinct !DILexicalBlock(scope: !988, file: !4, line: 451, column: 27)
!993 = !DILocation(line: 452, column: 11, scope: !992)
!994 = !DILocation(line: 452, column: 9, scope: !992)
!995 = !DILocation(line: 453, column: 2, scope: !992)
!996 = !DILocation(line: 456, column: 6, scope: !997)
!997 = distinct !DILexicalBlock(scope: !809, file: !4, line: 456, column: 6)
!998 = !DILocation(line: 456, column: 14, scope: !997)
!999 = !DILocation(line: 456, column: 6, scope: !809)
!1000 = !DILocation(line: 457, column: 16, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !997, file: !4, line: 456, column: 19)
!1002 = !DILocation(line: 457, column: 3, scope: !1001)
!1003 = !DILocation(line: 457, column: 9, scope: !1001)
!1004 = !DILocation(line: 457, column: 14, scope: !1001)
!1005 = !DILocation(line: 458, column: 7, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !1001, file: !4, line: 458, column: 7)
!1007 = !DILocation(line: 458, column: 13, scope: !1006)
!1008 = !DILocation(line: 458, column: 7, scope: !1001)
!1009 = !DILocation(line: 459, column: 14, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !1006, file: !4, line: 458, column: 28)
!1011 = !DILocation(line: 459, column: 4, scope: !1010)
!1012 = !DILocation(line: 460, column: 3, scope: !1010)
!1013 = !DILocation(line: 461, column: 4, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !1006, file: !4, line: 460, column: 10)
!1015 = !DILocation(line: 461, column: 10, scope: !1014)
!1016 = !DILocation(line: 461, column: 20, scope: !1014)
!1017 = !DILocation(line: 463, column: 3, scope: !1001)
!1018 = !DILocation(line: 466, column: 2, scope: !809)
!1019 = !DILocation(line: 466, column: 17, scope: !809)
!1020 = !DILocation(line: 466, column: 32, scope: !809)
!1021 = !DILocation(line: 466, column: 40, scope: !809)
!1022 = !DILocation(line: 466, column: 26, scope: !809)
!1023 = !DILocation(line: 473, column: 6, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !809, file: !4, line: 473, column: 6)
!1025 = !DILocation(line: 473, column: 12, scope: !1024)
!1026 = !DILocation(line: 473, column: 6, scope: !809)
!1027 = !DILocation(line: 474, column: 16, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !1029, file: !4, line: 474, column: 7)
!1029 = distinct !DILexicalBlock(scope: !1024, file: !4, line: 473, column: 27)
!1030 = !DILocation(line: 474, column: 7, scope: !1028)
!1031 = !DILocation(line: 474, column: 7, scope: !1029)
!1032 = !DILocation(line: 475, column: 29, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !1028, file: !4, line: 474, column: 23)
!1034 = !DILocation(line: 475, column: 38, scope: !1033)
!1035 = !DILocation(line: 475, column: 4, scope: !1033)
!1036 = !DILocation(line: 476, column: 3, scope: !1033)
!1037 = !DILocation(line: 478, column: 14, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !1028, file: !4, line: 476, column: 10)
!1039 = !DILocation(line: 478, column: 31, scope: !1038)
!1040 = !DILocation(line: 478, column: 39, scope: !1038)
!1041 = !DILocation(line: 478, column: 22, scope: !1038)
!1042 = !DILocation(line: 478, column: 4, scope: !1038)
!1043 = !DILocation(line: 480, column: 2, scope: !1029)
!1044 = !DILocation(line: 481, column: 13, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !1024, file: !4, line: 480, column: 9)
!1046 = !DILocation(line: 481, column: 30, scope: !1045)
!1047 = !DILocation(line: 481, column: 38, scope: !1045)
!1048 = !DILocation(line: 481, column: 21, scope: !1045)
!1049 = !DILocation(line: 481, column: 45, scope: !1045)
!1050 = !DILocation(line: 481, column: 3, scope: !1045)
!1051 = !DILocation(line: 487, column: 14, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !1045, file: !4, line: 487, column: 7)
!1053 = !DILocation(line: 487, column: 7, scope: !1052)
!1054 = !DILocation(line: 487, column: 20, scope: !1052)
!1055 = !DILocation(line: 487, column: 30, scope: !1052)
!1056 = !DILocation(line: 487, column: 23, scope: !1052)
!1057 = !DILocation(line: 487, column: 7, scope: !1045)
!1058 = !DILocation(line: 488, column: 14, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1052, file: !4, line: 487, column: 38)
!1060 = !DILocation(line: 488, column: 4, scope: !1059)
!1061 = !DILocation(line: 489, column: 3, scope: !1059)
!1062 = !DILocation(line: 493, column: 15, scope: !809)
!1063 = !DILocation(line: 493, column: 2, scope: !809)
!1064 = !DILocation(line: 493, column: 8, scope: !809)
!1065 = !DILocation(line: 493, column: 13, scope: !809)
!1066 = !DILocation(line: 494, column: 1, scope: !809)
!1067 = distinct !DISubprogram(name: "get_side", scope: !4, file: !4, line: 111, type: !1068, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1070)
!1068 = !DISubroutineType(types: !1069)
!1069 = !{!105, !97, !97}
!1070 = !{!1071, !1072}
!1071 = !DILocalVariable(name: "parent", arg: 1, scope: !1067, file: !4, line: 111, type: !97)
!1072 = !DILocalVariable(name: "child", arg: 2, scope: !1067, file: !4, line: 111, type: !97)
!1073 = !DILocation(line: 111, column: 40, scope: !1067)
!1074 = !DILocation(line: 111, column: 63, scope: !1067)
!1075 = !DILocation(line: 115, column: 20, scope: !1067)
!1076 = !DILocation(line: 115, column: 10, scope: !1067)
!1077 = !DILocation(line: 115, column: 35, scope: !1067)
!1078 = !DILocation(line: 115, column: 32, scope: !1067)
!1079 = !DILocation(line: 115, column: 9, scope: !1067)
!1080 = !DILocation(line: 115, column: 2, scope: !1067)
!1081 = distinct !DISubprogram(name: "get_color", scope: !4, file: !4, line: 47, type: !1082, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1084)
!1082 = !DISubroutineType(types: !1083)
!1083 = !{!3, !97}
!1084 = !{!1085}
!1085 = !DILocalVariable(name: "n", arg: 1, scope: !1081, file: !4, line: 47, type: !97)
!1086 = !DILocation(line: 47, column: 47, scope: !1081)
!1087 = !DILocation(line: 50, column: 21, scope: !1081)
!1088 = !DILocation(line: 50, column: 24, scope: !1081)
!1089 = !DILocation(line: 50, column: 10, scope: !1081)
!1090 = !DILocation(line: 50, column: 37, scope: !1081)
!1091 = !DILocation(line: 50, column: 9, scope: !1081)
!1092 = !DILocation(line: 50, column: 2, scope: !1081)
!1093 = distinct !DISubprogram(name: "is_black", scope: !4, file: !4, line: 53, type: !1094, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1096)
!1094 = !DISubroutineType(types: !1095)
!1095 = !{!434, !97}
!1096 = !{!1097}
!1097 = !DILocalVariable(name: "n", arg: 1, scope: !1093, file: !4, line: 53, type: !97)
!1098 = !DILocation(line: 53, column: 38, scope: !1093)
!1099 = !DILocation(line: 55, column: 19, scope: !1093)
!1100 = !DILocation(line: 55, column: 9, scope: !1093)
!1101 = !DILocation(line: 55, column: 22, scope: !1093)
!1102 = !DILocation(line: 55, column: 2, scope: !1093)
!1103 = distinct !DISubprogram(name: "fix_missing_black", scope: !4, file: !4, line: 266, type: !1104, scopeLine: 268, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1106)
!1104 = !DISubroutineType(types: !1105)
!1105 = !{null, !653, !93, !97}
!1106 = !{!1107, !1108, !1109, !1110, !1112, !1113, !1114, !1115, !1116, !1117, !1118}
!1107 = !DILocalVariable(name: "stack", arg: 1, scope: !1103, file: !4, line: 266, type: !653)
!1108 = !DILocalVariable(name: "stacksz", arg: 2, scope: !1103, file: !4, line: 266, type: !93)
!1109 = !DILocalVariable(name: "null_node", arg: 3, scope: !1103, file: !4, line: 267, type: !97)
!1110 = !DILocalVariable(name: "c0", scope: !1111, file: !4, line: 271, type: !97)
!1111 = distinct !DILexicalBlock(scope: !1103, file: !4, line: 270, column: 22)
!1112 = !DILocalVariable(name: "c1", scope: !1111, file: !4, line: 271, type: !97)
!1113 = !DILocalVariable(name: "inner", scope: !1111, file: !4, line: 271, type: !97)
!1114 = !DILocalVariable(name: "outer", scope: !1111, file: !4, line: 271, type: !97)
!1115 = !DILocalVariable(name: "n", scope: !1111, file: !4, line: 272, type: !97)
!1116 = !DILocalVariable(name: "parent", scope: !1111, file: !4, line: 273, type: !97)
!1117 = !DILocalVariable(name: "n_side", scope: !1111, file: !4, line: 274, type: !105)
!1118 = !DILocalVariable(name: "sib", scope: !1111, file: !4, line: 275, type: !97)
!1119 = !DILocation(line: 266, column: 47, scope: !1103)
!1120 = !DILocation(line: 266, column: 58, scope: !1103)
!1121 = !DILocation(line: 267, column: 25, scope: !1103)
!1122 = !DILocation(line: 270, column: 2, scope: !1103)
!1123 = !DILocation(line: 270, column: 9, scope: !1103)
!1124 = !DILocation(line: 270, column: 17, scope: !1103)
!1125 = !DILocation(line: 271, column: 3, scope: !1111)
!1126 = !DILocation(line: 271, column: 18, scope: !1111)
!1127 = !DILocation(line: 271, column: 23, scope: !1111)
!1128 = !DILocation(line: 271, column: 28, scope: !1111)
!1129 = !DILocation(line: 271, column: 36, scope: !1111)
!1130 = !DILocation(line: 272, column: 3, scope: !1111)
!1131 = !DILocation(line: 272, column: 18, scope: !1111)
!1132 = !DILocation(line: 272, column: 22, scope: !1111)
!1133 = !DILocation(line: 272, column: 28, scope: !1111)
!1134 = !DILocation(line: 272, column: 36, scope: !1111)
!1135 = !DILocation(line: 273, column: 3, scope: !1111)
!1136 = !DILocation(line: 273, column: 18, scope: !1111)
!1137 = !DILocation(line: 273, column: 27, scope: !1111)
!1138 = !DILocation(line: 273, column: 33, scope: !1111)
!1139 = !DILocation(line: 273, column: 41, scope: !1111)
!1140 = !DILocation(line: 274, column: 3, scope: !1111)
!1141 = !DILocation(line: 274, column: 11, scope: !1111)
!1142 = !DILocation(line: 274, column: 29, scope: !1111)
!1143 = !DILocation(line: 274, column: 37, scope: !1111)
!1144 = !DILocation(line: 274, column: 20, scope: !1111)
!1145 = !DILocation(line: 275, column: 3, scope: !1111)
!1146 = !DILocation(line: 275, column: 18, scope: !1111)
!1147 = !DILocation(line: 275, column: 34, scope: !1111)
!1148 = !DILocation(line: 276, column: 14, scope: !1111)
!1149 = !DILocation(line: 276, column: 21, scope: !1111)
!1150 = !DILocation(line: 276, column: 13, scope: !1111)
!1151 = !DILocation(line: 275, column: 24, scope: !1111)
!1152 = !DILocation(line: 285, column: 17, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !1111, file: !4, line: 285, column: 7)
!1154 = !DILocation(line: 285, column: 8, scope: !1153)
!1155 = !DILocation(line: 285, column: 7, scope: !1111)
!1156 = !DILocation(line: 286, column: 25, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1153, file: !4, line: 285, column: 23)
!1158 = !DILocation(line: 286, column: 4, scope: !1157)
!1159 = !DILocation(line: 286, column: 10, scope: !1157)
!1160 = !DILocation(line: 286, column: 18, scope: !1157)
!1161 = !DILocation(line: 286, column: 23, scope: !1157)
!1162 = !DILocation(line: 287, column: 11, scope: !1157)
!1163 = !DILocation(line: 287, column: 18, scope: !1157)
!1164 = !DILocation(line: 287, column: 4, scope: !1157)
!1165 = !DILocation(line: 288, column: 14, scope: !1157)
!1166 = !DILocation(line: 288, column: 4, scope: !1157)
!1167 = !DILocation(line: 289, column: 14, scope: !1157)
!1168 = !DILocation(line: 289, column: 4, scope: !1157)
!1169 = !DILocation(line: 290, column: 23, scope: !1157)
!1170 = !DILocation(line: 290, column: 4, scope: !1157)
!1171 = !DILocation(line: 290, column: 17, scope: !1157)
!1172 = !DILocation(line: 290, column: 21, scope: !1157)
!1173 = !DILocation(line: 292, column: 13, scope: !1157)
!1174 = !DILocation(line: 292, column: 19, scope: !1157)
!1175 = !DILocation(line: 292, column: 27, scope: !1157)
!1176 = !DILocation(line: 292, column: 11, scope: !1157)
!1177 = !DILocation(line: 293, column: 20, scope: !1157)
!1178 = !DILocation(line: 293, column: 29, scope: !1157)
!1179 = !DILocation(line: 293, column: 36, scope: !1157)
!1180 = !DILocation(line: 293, column: 28, scope: !1157)
!1181 = !DILocation(line: 293, column: 10, scope: !1157)
!1182 = !DILocation(line: 293, column: 8, scope: !1157)
!1183 = !DILocation(line: 294, column: 3, scope: !1157)
!1184 = !DILocation(line: 301, column: 18, scope: !1111)
!1185 = !DILocation(line: 301, column: 8, scope: !1111)
!1186 = !DILocation(line: 301, column: 6, scope: !1111)
!1187 = !DILocation(line: 302, column: 18, scope: !1111)
!1188 = !DILocation(line: 302, column: 8, scope: !1111)
!1189 = !DILocation(line: 302, column: 6, scope: !1111)
!1190 = !DILocation(line: 303, column: 9, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1111, file: !4, line: 303, column: 7)
!1192 = !DILocation(line: 303, column: 12, scope: !1191)
!1193 = !DILocation(line: 303, column: 27, scope: !1191)
!1194 = !DILocation(line: 303, column: 39, scope: !1191)
!1195 = !DILocation(line: 303, column: 30, scope: !1191)
!1196 = !DILocation(line: 303, column: 44, scope: !1191)
!1197 = !DILocation(line: 303, column: 49, scope: !1191)
!1198 = !DILocation(line: 303, column: 52, scope: !1191)
!1199 = !DILocation(line: 303, column: 67, scope: !1191)
!1200 = !DILocation(line: 304, column: 15, scope: !1191)
!1201 = !DILocation(line: 304, column: 6, scope: !1191)
!1202 = !DILocation(line: 303, column: 7, scope: !1111)
!1203 = !DILocation(line: 305, column: 8, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1205, file: !4, line: 305, column: 8)
!1205 = distinct !DILexicalBlock(scope: !1191, file: !4, line: 304, column: 21)
!1206 = !DILocation(line: 305, column: 13, scope: !1204)
!1207 = !DILocation(line: 305, column: 10, scope: !1204)
!1208 = !DILocation(line: 305, column: 8, scope: !1205)
!1209 = !DILocation(line: 306, column: 15, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1204, file: !4, line: 305, column: 24)
!1211 = !DILocation(line: 306, column: 23, scope: !1210)
!1212 = !DILocation(line: 306, column: 5, scope: !1210)
!1213 = !DILocation(line: 307, column: 4, scope: !1210)
!1214 = !DILocation(line: 309, column: 14, scope: !1205)
!1215 = !DILocation(line: 309, column: 4, scope: !1205)
!1216 = !DILocation(line: 310, column: 17, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1205, file: !4, line: 310, column: 8)
!1218 = !DILocation(line: 310, column: 8, scope: !1217)
!1219 = !DILocation(line: 310, column: 8, scope: !1205)
!1220 = !DILocation(line: 316, column: 12, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !1217, file: !4, line: 310, column: 26)
!1222 = !DILocation(line: 317, column: 5, scope: !1221)
!1223 = distinct !{!1223, !1122, !1224}
!1224 = !DILocation(line: 364, column: 2, scope: !1103)
!1225 = !DILocation(line: 320, column: 15, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !1217, file: !4, line: 318, column: 11)
!1227 = !DILocation(line: 320, column: 5, scope: !1226)
!1228 = !DILocation(line: 321, column: 5, scope: !1226)
!1229 = !DILocation(line: 331, column: 21, scope: !1111)
!1230 = !DILocation(line: 331, column: 27, scope: !1111)
!1231 = !DILocation(line: 331, column: 34, scope: !1111)
!1232 = !DILocation(line: 331, column: 26, scope: !1111)
!1233 = !DILocation(line: 331, column: 11, scope: !1111)
!1234 = !DILocation(line: 331, column: 9, scope: !1111)
!1235 = !DILocation(line: 332, column: 10, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1111, file: !4, line: 332, column: 7)
!1237 = !DILocation(line: 332, column: 16, scope: !1236)
!1238 = !DILocation(line: 332, column: 31, scope: !1236)
!1239 = !DILocation(line: 332, column: 41, scope: !1236)
!1240 = !DILocation(line: 332, column: 34, scope: !1236)
!1241 = !DILocation(line: 332, column: 7, scope: !1111)
!1242 = !DILocation(line: 333, column: 22, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1236, file: !4, line: 332, column: 50)
!1244 = !DILocation(line: 333, column: 27, scope: !1243)
!1245 = !DILocation(line: 333, column: 12, scope: !1243)
!1246 = !DILocation(line: 333, column: 10, scope: !1243)
!1247 = !DILocation(line: 335, column: 25, scope: !1243)
!1248 = !DILocation(line: 335, column: 4, scope: !1243)
!1249 = !DILocation(line: 335, column: 10, scope: !1243)
!1250 = !DILocation(line: 335, column: 18, scope: !1243)
!1251 = !DILocation(line: 335, column: 23, scope: !1243)
!1252 = !DILocation(line: 336, column: 23, scope: !1243)
!1253 = !DILocation(line: 336, column: 4, scope: !1243)
!1254 = !DILocation(line: 336, column: 17, scope: !1243)
!1255 = !DILocation(line: 336, column: 21, scope: !1243)
!1256 = !DILocation(line: 337, column: 11, scope: !1243)
!1257 = !DILocation(line: 337, column: 18, scope: !1243)
!1258 = !DILocation(line: 337, column: 4, scope: !1243)
!1259 = !DILocation(line: 338, column: 14, scope: !1243)
!1260 = !DILocation(line: 338, column: 4, scope: !1243)
!1261 = !DILocation(line: 339, column: 14, scope: !1243)
!1262 = !DILocation(line: 339, column: 4, scope: !1243)
!1263 = !DILocation(line: 344, column: 10, scope: !1243)
!1264 = !DILocation(line: 344, column: 16, scope: !1243)
!1265 = !DILocation(line: 344, column: 24, scope: !1243)
!1266 = !DILocation(line: 344, column: 8, scope: !1243)
!1267 = !DILocation(line: 345, column: 22, scope: !1243)
!1268 = !DILocation(line: 345, column: 28, scope: !1243)
!1269 = !DILocation(line: 345, column: 35, scope: !1243)
!1270 = !DILocation(line: 345, column: 27, scope: !1243)
!1271 = !DILocation(line: 345, column: 12, scope: !1243)
!1272 = !DILocation(line: 345, column: 10, scope: !1243)
!1273 = !DILocation(line: 346, column: 25, scope: !1243)
!1274 = !DILocation(line: 346, column: 4, scope: !1243)
!1275 = !DILocation(line: 346, column: 10, scope: !1243)
!1276 = !DILocation(line: 346, column: 18, scope: !1243)
!1277 = !DILocation(line: 346, column: 23, scope: !1243)
!1278 = !DILocation(line: 347, column: 11, scope: !1243)
!1279 = !DILocation(line: 348, column: 3, scope: !1243)
!1280 = !DILocation(line: 355, column: 13, scope: !1111)
!1281 = !DILocation(line: 355, column: 28, scope: !1111)
!1282 = !DILocation(line: 355, column: 18, scope: !1111)
!1283 = !DILocation(line: 355, column: 3, scope: !1111)
!1284 = !DILocation(line: 356, column: 13, scope: !1111)
!1285 = !DILocation(line: 356, column: 3, scope: !1111)
!1286 = !DILocation(line: 357, column: 13, scope: !1111)
!1287 = !DILocation(line: 357, column: 3, scope: !1111)
!1288 = !DILocation(line: 358, column: 24, scope: !1111)
!1289 = !DILocation(line: 358, column: 3, scope: !1111)
!1290 = !DILocation(line: 358, column: 9, scope: !1111)
!1291 = !DILocation(line: 358, column: 17, scope: !1111)
!1292 = !DILocation(line: 358, column: 22, scope: !1111)
!1293 = !DILocation(line: 359, column: 10, scope: !1111)
!1294 = !DILocation(line: 359, column: 17, scope: !1111)
!1295 = !DILocation(line: 359, column: 3, scope: !1111)
!1296 = !DILocation(line: 360, column: 7, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1111, file: !4, line: 360, column: 7)
!1298 = !DILocation(line: 360, column: 12, scope: !1297)
!1299 = !DILocation(line: 360, column: 9, scope: !1297)
!1300 = !DILocation(line: 360, column: 7, scope: !1111)
!1301 = !DILocation(line: 361, column: 14, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1297, file: !4, line: 360, column: 23)
!1303 = !DILocation(line: 361, column: 22, scope: !1302)
!1304 = !DILocation(line: 361, column: 4, scope: !1302)
!1305 = !DILocation(line: 362, column: 3, scope: !1302)
!1306 = !DILocation(line: 363, column: 3, scope: !1111)
!1307 = !DILocation(line: 365, column: 1, scope: !1103)
!1308 = distinct !DISubprogram(name: "is_red", scope: !4, file: !4, line: 58, type: !1094, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1309)
!1309 = !{!1310}
!1310 = !DILocalVariable(name: "n", arg: 1, scope: !1308, file: !4, line: 58, type: !97)
!1311 = !DILocation(line: 58, column: 36, scope: !1308)
!1312 = !DILocation(line: 60, column: 19, scope: !1308)
!1313 = !DILocation(line: 60, column: 9, scope: !1308)
!1314 = !DILocation(line: 60, column: 22, scope: !1308)
!1315 = !DILocation(line: 60, column: 2, scope: !1308)
!1316 = distinct !DISubprogram(name: "z_rb_walk", scope: !4, file: !4, line: 497, type: !1317, scopeLine: 498, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1323)
!1317 = !DISubroutineType(types: !1318)
!1318 = !{null, !97, !1319, !92}
!1319 = !DIDerivedType(tag: DW_TAG_typedef, name: "rb_visit_t", file: !99, line: 110, baseType: !1320)
!1320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1321, size: 32)
!1321 = !DISubroutineType(types: !1322)
!1322 = !{null, !97, !92}
!1323 = !{!1324, !1325, !1326}
!1324 = !DILocalVariable(name: "node", arg: 1, scope: !1316, file: !4, line: 497, type: !97)
!1325 = !DILocalVariable(name: "visit_fn", arg: 2, scope: !1316, file: !4, line: 497, type: !1319)
!1326 = !DILocalVariable(name: "cookie", arg: 3, scope: !1316, file: !4, line: 497, type: !92)
!1327 = !DILocation(line: 497, column: 31, scope: !1316)
!1328 = !DILocation(line: 497, column: 48, scope: !1316)
!1329 = !DILocation(line: 497, column: 64, scope: !1316)
!1330 = !DILocation(line: 499, column: 6, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1316, file: !4, line: 499, column: 6)
!1332 = !DILocation(line: 499, column: 11, scope: !1331)
!1333 = !DILocation(line: 499, column: 6, scope: !1316)
!1334 = !DILocation(line: 500, column: 23, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1331, file: !4, line: 499, column: 26)
!1336 = !DILocation(line: 500, column: 13, scope: !1335)
!1337 = !DILocation(line: 500, column: 34, scope: !1335)
!1338 = !DILocation(line: 500, column: 44, scope: !1335)
!1339 = !DILocation(line: 500, column: 3, scope: !1335)
!1340 = !DILocation(line: 501, column: 3, scope: !1335)
!1341 = !DILocation(line: 501, column: 12, scope: !1335)
!1342 = !DILocation(line: 501, column: 18, scope: !1335)
!1343 = !DILocation(line: 502, column: 23, scope: !1335)
!1344 = !DILocation(line: 502, column: 13, scope: !1335)
!1345 = !DILocation(line: 502, column: 34, scope: !1335)
!1346 = !DILocation(line: 502, column: 44, scope: !1335)
!1347 = !DILocation(line: 502, column: 3, scope: !1335)
!1348 = !DILocation(line: 503, column: 2, scope: !1335)
!1349 = !DILocation(line: 504, column: 1, scope: !1316)
!1350 = distinct !DISubprogram(name: "z_rb_child", scope: !4, file: !4, line: 507, type: !472, scopeLine: 508, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1351)
!1351 = !{!1352, !1353}
!1352 = !DILocalVariable(name: "node", arg: 1, scope: !1350, file: !4, line: 507, type: !97)
!1353 = !DILocalVariable(name: "side", arg: 2, scope: !1350, file: !4, line: 507, type: !105)
!1354 = !DILocation(line: 507, column: 42, scope: !1350)
!1355 = !DILocation(line: 507, column: 56, scope: !1350)
!1356 = !DILocation(line: 509, column: 19, scope: !1350)
!1357 = !DILocation(line: 509, column: 25, scope: !1350)
!1358 = !DILocation(line: 509, column: 9, scope: !1350)
!1359 = !DILocation(line: 509, column: 2, scope: !1350)
!1360 = distinct !DISubprogram(name: "z_rb_is_black", scope: !4, file: !4, line: 512, type: !1361, scopeLine: 513, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1363)
!1361 = !DISubroutineType(types: !1362)
!1362 = !{!93, !97}
!1363 = !{!1364}
!1364 = !DILocalVariable(name: "node", arg: 1, scope: !1360, file: !4, line: 512, type: !97)
!1365 = !DILocation(line: 512, column: 34, scope: !1360)
!1366 = !DILocation(line: 514, column: 18, scope: !1360)
!1367 = !DILocation(line: 514, column: 9, scope: !1360)
!1368 = !DILocation(line: 514, column: 2, scope: !1360)
!1369 = distinct !DISubprogram(name: "rb_contains", scope: !4, file: !4, line: 517, type: !1370, scopeLine: 518, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1372)
!1370 = !DISubroutineType(types: !1371)
!1371 = !{!434, !425, !97}
!1372 = !{!1373, !1374, !1375}
!1373 = !DILocalVariable(name: "tree", arg: 1, scope: !1369, file: !4, line: 517, type: !425)
!1374 = !DILocalVariable(name: "node", arg: 2, scope: !1369, file: !4, line: 517, type: !97)
!1375 = !DILocalVariable(name: "n", scope: !1369, file: !4, line: 519, type: !97)
!1376 = !DILocation(line: 517, column: 34, scope: !1369)
!1377 = !DILocation(line: 517, column: 55, scope: !1369)
!1378 = !DILocation(line: 519, column: 2, scope: !1369)
!1379 = !DILocation(line: 519, column: 17, scope: !1369)
!1380 = !DILocation(line: 519, column: 21, scope: !1369)
!1381 = !DILocation(line: 519, column: 27, scope: !1369)
!1382 = !DILocation(line: 521, column: 2, scope: !1369)
!1383 = !DILocation(line: 521, column: 10, scope: !1369)
!1384 = !DILocation(line: 521, column: 12, scope: !1369)
!1385 = !DILocation(line: 521, column: 27, scope: !1369)
!1386 = !DILocation(line: 521, column: 31, scope: !1369)
!1387 = !DILocation(line: 521, column: 36, scope: !1369)
!1388 = !DILocation(line: 521, column: 33, scope: !1369)
!1389 = !DILocation(line: 0, scope: !1369)
!1390 = !DILocation(line: 522, column: 17, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1369, file: !4, line: 521, column: 43)
!1392 = !DILocation(line: 522, column: 20, scope: !1391)
!1393 = !DILocation(line: 522, column: 26, scope: !1391)
!1394 = !DILocation(line: 522, column: 38, scope: !1391)
!1395 = !DILocation(line: 522, column: 41, scope: !1391)
!1396 = !DILocation(line: 522, column: 7, scope: !1391)
!1397 = !DILocation(line: 522, column: 5, scope: !1391)
!1398 = distinct !{!1398, !1382, !1399}
!1399 = !DILocation(line: 523, column: 2, scope: !1369)
!1400 = !DILocation(line: 525, column: 9, scope: !1369)
!1401 = !DILocation(line: 525, column: 14, scope: !1369)
!1402 = !DILocation(line: 525, column: 11, scope: !1369)
!1403 = !DILocation(line: 526, column: 1, scope: !1369)
!1404 = !DILocation(line: 525, column: 2, scope: !1369)
!1405 = distinct !DISubprogram(name: "z_rb_foreach_next", scope: !4, file: !4, line: 557, type: !1406, scopeLine: 558, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1416)
!1406 = !DISubroutineType(types: !1407)
!1407 = !{!97, !425, !1408}
!1408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1409, size: 32)
!1409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rb_foreach", file: !99, line: 172, size: 96, elements: !1410)
!1410 = !{!1411, !1412, !1414}
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1409, file: !99, line: 173, baseType: !653, size: 32)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "is_left", scope: !1409, file: !99, line: 174, baseType: !1413, size: 32, offset: 32)
!1413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 32)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !1409, file: !99, line: 175, baseType: !1415, size: 32, offset: 64)
!1415 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !95, line: 58, baseType: !93)
!1416 = !{!1417, !1418, !1419}
!1417 = !DILocalVariable(name: "tree", arg: 1, scope: !1405, file: !4, line: 557, type: !425)
!1418 = !DILocalVariable(name: "f", arg: 2, scope: !1405, file: !4, line: 557, type: !1408)
!1419 = !DILocalVariable(name: "n", scope: !1405, file: !4, line: 559, type: !97)
!1420 = !DILocation(line: 557, column: 49, scope: !1405)
!1421 = !DILocation(line: 557, column: 75, scope: !1405)
!1422 = !DILocation(line: 559, column: 2, scope: !1405)
!1423 = !DILocation(line: 559, column: 17, scope: !1405)
!1424 = !DILocation(line: 561, column: 6, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1405, file: !4, line: 561, column: 6)
!1426 = !DILocation(line: 561, column: 12, scope: !1425)
!1427 = !DILocation(line: 561, column: 17, scope: !1425)
!1428 = !DILocation(line: 561, column: 6, scope: !1405)
!1429 = !DILocation(line: 562, column: 3, scope: !1430)
!1430 = distinct !DILexicalBlock(scope: !1425, file: !4, line: 561, column: 32)
!1431 = !DILocation(line: 568, column: 6, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1405, file: !4, line: 568, column: 6)
!1433 = !DILocation(line: 568, column: 9, scope: !1432)
!1434 = !DILocation(line: 568, column: 13, scope: !1432)
!1435 = !DILocation(line: 568, column: 6, scope: !1405)
!1436 = !DILocation(line: 569, column: 26, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !1432, file: !4, line: 568, column: 20)
!1438 = !DILocation(line: 569, column: 32, scope: !1437)
!1439 = !DILocation(line: 569, column: 38, scope: !1437)
!1440 = !DILocation(line: 569, column: 10, scope: !1437)
!1441 = !DILocation(line: 569, column: 3, scope: !1437)
!1442 = !DILocation(line: 575, column: 16, scope: !1405)
!1443 = !DILocation(line: 575, column: 19, scope: !1405)
!1444 = !DILocation(line: 575, column: 25, scope: !1405)
!1445 = !DILocation(line: 575, column: 28, scope: !1405)
!1446 = !DILocation(line: 575, column: 6, scope: !1405)
!1447 = !DILocation(line: 575, column: 4, scope: !1405)
!1448 = !DILocation(line: 576, column: 6, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1405, file: !4, line: 576, column: 6)
!1450 = !DILocation(line: 576, column: 8, scope: !1449)
!1451 = !DILocation(line: 576, column: 6, scope: !1405)
!1452 = !DILocation(line: 577, column: 26, scope: !1453)
!1453 = distinct !DILexicalBlock(scope: !1449, file: !4, line: 576, column: 23)
!1454 = !DILocation(line: 577, column: 29, scope: !1453)
!1455 = !DILocation(line: 577, column: 10, scope: !1453)
!1456 = !DILocation(line: 577, column: 3, scope: !1453)
!1457 = !DILocation(line: 585, column: 6, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1405, file: !4, line: 585, column: 6)
!1459 = !DILocation(line: 585, column: 9, scope: !1458)
!1460 = !DILocation(line: 585, column: 17, scope: !1458)
!1461 = !DILocation(line: 585, column: 20, scope: !1458)
!1462 = !DILocation(line: 585, column: 25, scope: !1458)
!1463 = !DILocation(line: 585, column: 6, scope: !1405)
!1464 = !DILocation(line: 586, column: 10, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !1458, file: !4, line: 585, column: 32)
!1466 = !DILocation(line: 586, column: 13, scope: !1465)
!1467 = !DILocation(line: 586, column: 21, scope: !1465)
!1468 = !DILocation(line: 586, column: 24, scope: !1465)
!1469 = !DILocation(line: 586, column: 19, scope: !1465)
!1470 = !DILocation(line: 586, column: 3, scope: !1465)
!1471 = !DILocation(line: 593, column: 2, scope: !1405)
!1472 = !DILocation(line: 593, column: 10, scope: !1405)
!1473 = !DILocation(line: 593, column: 13, scope: !1405)
!1474 = !DILocation(line: 593, column: 17, scope: !1405)
!1475 = !DILocation(line: 593, column: 22, scope: !1405)
!1476 = !DILocation(line: 593, column: 26, scope: !1405)
!1477 = !DILocation(line: 593, column: 29, scope: !1405)
!1478 = !DILocation(line: 593, column: 37, scope: !1405)
!1479 = !DILocation(line: 593, column: 40, scope: !1405)
!1480 = !DILocation(line: 593, column: 45, scope: !1405)
!1481 = !DILocation(line: 0, scope: !1405)
!1482 = !DILocation(line: 594, column: 3, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !1405, file: !4, line: 593, column: 53)
!1484 = !DILocation(line: 594, column: 6, scope: !1483)
!1485 = !DILocation(line: 594, column: 9, scope: !1483)
!1486 = distinct !{!1486, !1471, !1487}
!1487 = !DILocation(line: 595, column: 2, scope: !1405)
!1488 = !DILocation(line: 597, column: 2, scope: !1405)
!1489 = !DILocation(line: 597, column: 5, scope: !1405)
!1490 = !DILocation(line: 597, column: 8, scope: !1405)
!1491 = !DILocation(line: 598, column: 10, scope: !1405)
!1492 = !DILocation(line: 598, column: 13, scope: !1405)
!1493 = !DILocation(line: 598, column: 17, scope: !1405)
!1494 = !DILocation(line: 598, column: 9, scope: !1405)
!1495 = !DILocation(line: 598, column: 25, scope: !1405)
!1496 = !DILocation(line: 598, column: 28, scope: !1405)
!1497 = !DILocation(line: 598, column: 34, scope: !1405)
!1498 = !DILocation(line: 598, column: 37, scope: !1405)
!1499 = !DILocation(line: 598, column: 2, scope: !1405)
!1500 = !DILocation(line: 599, column: 1, scope: !1405)
!1501 = distinct !DISubprogram(name: "stack_left_limb", scope: !4, file: !4, line: 533, type: !1502, scopeLine: 535, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1504)
!1502 = !DISubroutineType(types: !1503)
!1503 = !{!97, !97, !1408}
!1504 = !{!1505, !1506}
!1505 = !DILocalVariable(name: "n", arg: 1, scope: !1501, file: !4, line: 533, type: !97)
!1506 = !DILocalVariable(name: "f", arg: 2, scope: !1501, file: !4, line: 534, type: !1408)
!1507 = !DILocation(line: 533, column: 61, scope: !1501)
!1508 = !DILocation(line: 534, column: 31, scope: !1501)
!1509 = !DILocation(line: 536, column: 2, scope: !1501)
!1510 = !DILocation(line: 536, column: 5, scope: !1501)
!1511 = !DILocation(line: 536, column: 8, scope: !1501)
!1512 = !DILocation(line: 537, column: 21, scope: !1501)
!1513 = !DILocation(line: 537, column: 2, scope: !1501)
!1514 = !DILocation(line: 537, column: 5, scope: !1501)
!1515 = !DILocation(line: 537, column: 11, scope: !1501)
!1516 = !DILocation(line: 537, column: 14, scope: !1501)
!1517 = !DILocation(line: 537, column: 19, scope: !1501)
!1518 = !DILocation(line: 538, column: 2, scope: !1501)
!1519 = !DILocation(line: 538, column: 5, scope: !1501)
!1520 = !DILocation(line: 538, column: 13, scope: !1501)
!1521 = !DILocation(line: 538, column: 16, scope: !1501)
!1522 = !DILocation(line: 538, column: 21, scope: !1501)
!1523 = !DILocation(line: 540, column: 2, scope: !1501)
!1524 = !DILocation(line: 540, column: 24, scope: !1501)
!1525 = !DILocation(line: 540, column: 14, scope: !1501)
!1526 = !DILocation(line: 540, column: 12, scope: !1501)
!1527 = !DILocation(line: 540, column: 32, scope: !1501)
!1528 = !DILocation(line: 541, column: 3, scope: !1529)
!1529 = distinct !DILexicalBlock(scope: !1501, file: !4, line: 540, column: 47)
!1530 = !DILocation(line: 541, column: 6, scope: !1529)
!1531 = !DILocation(line: 541, column: 9, scope: !1529)
!1532 = !DILocation(line: 542, column: 22, scope: !1529)
!1533 = !DILocation(line: 542, column: 3, scope: !1529)
!1534 = !DILocation(line: 542, column: 6, scope: !1529)
!1535 = !DILocation(line: 542, column: 12, scope: !1529)
!1536 = !DILocation(line: 542, column: 15, scope: !1529)
!1537 = !DILocation(line: 542, column: 20, scope: !1529)
!1538 = !DILocation(line: 543, column: 3, scope: !1529)
!1539 = !DILocation(line: 543, column: 6, scope: !1529)
!1540 = !DILocation(line: 543, column: 14, scope: !1529)
!1541 = !DILocation(line: 543, column: 17, scope: !1529)
!1542 = !DILocation(line: 543, column: 22, scope: !1529)
!1543 = distinct !{!1543, !1523, !1544}
!1544 = !DILocation(line: 544, column: 2, scope: !1501)
!1545 = !DILocation(line: 546, column: 9, scope: !1501)
!1546 = !DILocation(line: 546, column: 12, scope: !1501)
!1547 = !DILocation(line: 546, column: 18, scope: !1501)
!1548 = !DILocation(line: 546, column: 21, scope: !1501)
!1549 = !DILocation(line: 546, column: 2, scope: !1501)
!1550 = !DISubprogram(name: "z_timeout_expires", scope: !203, file: !203, line: 642, type: !1551, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !220)
!1551 = !DISubroutineType(types: !1552)
!1552 = !{!264, !1553}
!1553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1554, size: 32)
!1554 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !172)
!1555 = !DISubprogram(name: "z_timeout_remaining", scope: !203, file: !203, line: 643, type: !1551, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !220)
!1556 = distinct !DISubprogram(name: "sys_sflist_is_empty", scope: !352, file: !352, line: 335, type: !1557, scopeLine: 335, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1560)
!1557 = !DISubroutineType(types: !1558)
!1558 = !{!434, !1559}
!1559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 32)
!1560 = !{!1561}
!1561 = !DILocalVariable(name: "list", arg: 1, scope: !1556, file: !352, line: 335, type: !1559)
!1562 = !DILocation(line: 335, column: 55, scope: !1556)
!1563 = !DILocation(line: 335, column: 92, scope: !1556)
!1564 = !DILocation(line: 335, column: 71, scope: !1556)
!1565 = !DILocation(line: 335, column: 98, scope: !1556)
!1566 = !DILocation(line: 335, column: 63, scope: !1556)
!1567 = distinct !DISubprogram(name: "sys_sflist_peek_head", scope: !352, file: !352, line: 255, type: !1568, scopeLine: 256, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1570)
!1568 = !DISubroutineType(types: !1569)
!1569 = !{!356, !1559}
!1570 = !{!1571}
!1571 = !DILocalVariable(name: "list", arg: 1, scope: !1567, file: !352, line: 255, type: !1559)
!1572 = !DILocation(line: 255, column: 64, scope: !1567)
!1573 = !DILocation(line: 257, column: 9, scope: !1567)
!1574 = !DILocation(line: 257, column: 15, scope: !1567)
!1575 = !DILocation(line: 257, column: 2, scope: !1567)
!1576 = distinct !DISubprogram(name: "rotate", scope: !4, file: !4, line: 128, type: !711, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1577)
!1577 = !{!1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585}
!1578 = !DILocalVariable(name: "stack", arg: 1, scope: !1576, file: !4, line: 128, type: !653)
!1579 = !DILocalVariable(name: "stacksz", arg: 2, scope: !1576, file: !4, line: 128, type: !93)
!1580 = !DILocalVariable(name: "parent", scope: !1576, file: !4, line: 132, type: !97)
!1581 = !DILocalVariable(name: "child", scope: !1576, file: !4, line: 133, type: !97)
!1582 = !DILocalVariable(name: "side", scope: !1576, file: !4, line: 134, type: !105)
!1583 = !DILocalVariable(name: "a", scope: !1576, file: !4, line: 135, type: !97)
!1584 = !DILocalVariable(name: "b", scope: !1576, file: !4, line: 136, type: !97)
!1585 = !DILocalVariable(name: "grandparent", scope: !1586, file: !4, line: 139, type: !97)
!1586 = distinct !DILexicalBlock(scope: !1587, file: !4, line: 138, column: 20)
!1587 = distinct !DILexicalBlock(scope: !1576, file: !4, line: 138, column: 6)
!1588 = !DILocation(line: 128, column: 36, scope: !1576)
!1589 = !DILocation(line: 128, column: 47, scope: !1576)
!1590 = !DILocation(line: 132, column: 2, scope: !1576)
!1591 = !DILocation(line: 132, column: 17, scope: !1576)
!1592 = !DILocation(line: 132, column: 26, scope: !1576)
!1593 = !DILocation(line: 132, column: 32, scope: !1576)
!1594 = !DILocation(line: 132, column: 40, scope: !1576)
!1595 = !DILocation(line: 133, column: 2, scope: !1576)
!1596 = !DILocation(line: 133, column: 17, scope: !1576)
!1597 = !DILocation(line: 133, column: 25, scope: !1576)
!1598 = !DILocation(line: 133, column: 31, scope: !1576)
!1599 = !DILocation(line: 133, column: 39, scope: !1576)
!1600 = !DILocation(line: 134, column: 2, scope: !1576)
!1601 = !DILocation(line: 134, column: 10, scope: !1576)
!1602 = !DILocation(line: 134, column: 26, scope: !1576)
!1603 = !DILocation(line: 134, column: 34, scope: !1576)
!1604 = !DILocation(line: 134, column: 17, scope: !1576)
!1605 = !DILocation(line: 135, column: 2, scope: !1576)
!1606 = !DILocation(line: 135, column: 17, scope: !1576)
!1607 = !DILocation(line: 135, column: 31, scope: !1576)
!1608 = !DILocation(line: 135, column: 38, scope: !1576)
!1609 = !DILocation(line: 135, column: 21, scope: !1576)
!1610 = !DILocation(line: 136, column: 2, scope: !1576)
!1611 = !DILocation(line: 136, column: 17, scope: !1576)
!1612 = !DILocation(line: 136, column: 31, scope: !1576)
!1613 = !DILocation(line: 136, column: 39, scope: !1576)
!1614 = !DILocation(line: 136, column: 44, scope: !1576)
!1615 = !DILocation(line: 136, column: 38, scope: !1576)
!1616 = !DILocation(line: 136, column: 21, scope: !1576)
!1617 = !DILocation(line: 138, column: 6, scope: !1587)
!1618 = !DILocation(line: 138, column: 14, scope: !1587)
!1619 = !DILocation(line: 138, column: 6, scope: !1576)
!1620 = !DILocation(line: 139, column: 3, scope: !1586)
!1621 = !DILocation(line: 139, column: 18, scope: !1586)
!1622 = !DILocation(line: 139, column: 32, scope: !1586)
!1623 = !DILocation(line: 139, column: 38, scope: !1586)
!1624 = !DILocation(line: 139, column: 46, scope: !1586)
!1625 = !DILocation(line: 141, column: 13, scope: !1586)
!1626 = !DILocation(line: 141, column: 35, scope: !1586)
!1627 = !DILocation(line: 141, column: 48, scope: !1586)
!1628 = !DILocation(line: 141, column: 26, scope: !1586)
!1629 = !DILocation(line: 141, column: 57, scope: !1586)
!1630 = !DILocation(line: 141, column: 3, scope: !1586)
!1631 = !DILocation(line: 142, column: 2, scope: !1587)
!1632 = !DILocation(line: 142, column: 2, scope: !1586)
!1633 = !DILocation(line: 144, column: 12, scope: !1576)
!1634 = !DILocation(line: 144, column: 19, scope: !1576)
!1635 = !DILocation(line: 144, column: 25, scope: !1576)
!1636 = !DILocation(line: 144, column: 2, scope: !1576)
!1637 = !DILocation(line: 145, column: 12, scope: !1576)
!1638 = !DILocation(line: 145, column: 20, scope: !1576)
!1639 = !DILocation(line: 145, column: 25, scope: !1576)
!1640 = !DILocation(line: 145, column: 19, scope: !1576)
!1641 = !DILocation(line: 145, column: 43, scope: !1576)
!1642 = !DILocation(line: 145, column: 2, scope: !1576)
!1643 = !DILocation(line: 146, column: 12, scope: !1576)
!1644 = !DILocation(line: 146, column: 20, scope: !1576)
!1645 = !DILocation(line: 146, column: 26, scope: !1576)
!1646 = !DILocation(line: 146, column: 2, scope: !1576)
!1647 = !DILocation(line: 147, column: 23, scope: !1576)
!1648 = !DILocation(line: 147, column: 2, scope: !1576)
!1649 = !DILocation(line: 147, column: 8, scope: !1576)
!1650 = !DILocation(line: 147, column: 16, scope: !1576)
!1651 = !DILocation(line: 147, column: 21, scope: !1576)
!1652 = !DILocation(line: 148, column: 23, scope: !1576)
!1653 = !DILocation(line: 148, column: 2, scope: !1576)
!1654 = !DILocation(line: 148, column: 8, scope: !1576)
!1655 = !DILocation(line: 148, column: 16, scope: !1576)
!1656 = !DILocation(line: 148, column: 21, scope: !1576)
!1657 = !DILocation(line: 149, column: 1, scope: !1576)
