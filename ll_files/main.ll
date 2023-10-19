; ModuleID = '../bc_files/main.bc'
source_filename = "/home/sri/zephyrproject/zephyr/samples/basic/blinky/src/main.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-arm-none-eabi"

%struct.gpio_dt_spec = type { ptr, i8, i16 }
%struct.device = type { ptr, ptr, ptr, ptr, ptr }
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
%struct.gpio_driver_api = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gpio_driver_data = type { i32 }

@led = internal constant %struct.gpio_dt_spec { ptr @__device_dts_ord_28, i8 5, i16 0 }, align 4, !dbg !0
@__device_dts_ord_28 = external dso_local constant %struct.device, align 4
@__ARM_use_no_argv = global i32 1, section ".ARM.use_no_argv", align 4
@llvm.used = appending global [1 x ptr] [ptr @__ARM_use_no_argv], section "llvm.metadata"

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_k_object_access_grant(ptr noundef %0, ptr noundef %1) #0 !dbg !217 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !332, metadata !DIExpression()), !dbg !334
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !333, metadata !DIExpression()), !dbg !335
  %5 = load ptr, ptr %3, align 4, !dbg !336
  %6 = load ptr, ptr %4, align 4, !dbg !337
  ret void, !dbg !338
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_k_object_release(ptr noundef %0) #0 !dbg !339 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !343, metadata !DIExpression()), !dbg !344
  %3 = load ptr, ptr %2, align 4, !dbg !345
  ret void, !dbg !346
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_impl_k_object_alloc(i8 noundef zeroext %0) #0 !dbg !347 {
  %2 = alloca i8, align 1
  store i8 %0, ptr %2, align 1
  call void @llvm.dbg.declare(metadata ptr %2, metadata !351, metadata !DIExpression()), !dbg !352
  %3 = load i8, ptr %2, align 1, !dbg !353
  ret ptr null, !dbg !354
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_impl_k_object_alloc_size(i8 noundef zeroext %0, i32 noundef %1) #0 !dbg !355 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8 %0, ptr %3, align 1
  call void @llvm.dbg.declare(metadata ptr %3, metadata !359, metadata !DIExpression()), !dbg !361
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !360, metadata !DIExpression()), !dbg !362
  %5 = load i8, ptr %3, align 1, !dbg !363
  %6 = load i32, ptr %4, align 4, !dbg !364
  ret ptr null, !dbg !365
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_thread_timeout_expires_ticks(ptr noundef %0) #0 !dbg !366 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !372, metadata !DIExpression()), !dbg !373
  %3 = load ptr, ptr %2, align 4, !dbg !374
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !375
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !376
  %6 = call i64 @z_timeout_expires(ptr noundef %5) #5, !dbg !377
  ret i64 %6, !dbg !378
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_thread_timeout_remaining_ticks(ptr noundef %0) #0 !dbg !379 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !381, metadata !DIExpression()), !dbg !382
  %3 = load ptr, ptr %2, align 4, !dbg !383
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !384
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !385
  %6 = call i64 @z_timeout_remaining(ptr noundef %5) #5, !dbg !386
  ret i64 %6, !dbg !387
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_timer_expires_ticks(ptr noundef %0) #0 !dbg !388 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !411, metadata !DIExpression()), !dbg !412
  %3 = load ptr, ptr %2, align 4, !dbg !413
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !414
  %5 = call i64 @z_timeout_expires(ptr noundef %4) #5, !dbg !415
  ret i64 %5, !dbg !416
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_timer_remaining_ticks(ptr noundef %0) #0 !dbg !417 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !419, metadata !DIExpression()), !dbg !420
  %3 = load ptr, ptr %2, align 4, !dbg !421
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !422
  %5 = call i64 @z_timeout_remaining(ptr noundef %4) #5, !dbg !423
  ret i64 %5, !dbg !424
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_k_timer_user_data_set(ptr noundef %0, ptr noundef %1) #0 !dbg !425 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !429, metadata !DIExpression()), !dbg !431
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !430, metadata !DIExpression()), !dbg !432
  %5 = load ptr, ptr %4, align 4, !dbg !433
  %6 = load ptr, ptr %3, align 4, !dbg !434
  %7 = getelementptr inbounds %struct.k_timer, ptr %6, i32 0, i32 6, !dbg !435
  store ptr %5, ptr %7, align 4, !dbg !436
  ret void, !dbg !437
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_impl_k_timer_user_data_get(ptr noundef %0) #0 !dbg !438 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !442, metadata !DIExpression()), !dbg !443
  %3 = load ptr, ptr %2, align 4, !dbg !444
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 6, !dbg !445
  %5 = load ptr, ptr %4, align 4, !dbg !445
  ret ptr %5, !dbg !446
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_queue_is_empty(ptr noundef %0) #0 !dbg !447 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !469, metadata !DIExpression()), !dbg !470
  %3 = load ptr, ptr %2, align 4, !dbg !471
  %4 = getelementptr inbounds %struct.k_queue, ptr %3, i32 0, i32 0, !dbg !472
  %5 = call zeroext i1 @sys_sflist_is_empty(ptr noundef %4) #5, !dbg !473
  %6 = zext i1 %5 to i32, !dbg !474
  ret i32 %6, !dbg !475
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_sem_count_get(ptr noundef %0) #0 !dbg !476 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !486, metadata !DIExpression()), !dbg !487
  %3 = load ptr, ptr %2, align 4, !dbg !488
  %4 = getelementptr inbounds %struct.k_sem, ptr %3, i32 0, i32 1, !dbg !489
  %5 = load i32, ptr %4, align 4, !dbg !489
  ret i32 %5, !dbg !490
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_msgq_num_free_get(ptr noundef %0) #0 !dbg !491 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !509, metadata !DIExpression()), !dbg !510
  %3 = load ptr, ptr %2, align 4, !dbg !511
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 3, !dbg !512
  %5 = load i32, ptr %4, align 4, !dbg !512
  %6 = load ptr, ptr %2, align 4, !dbg !513
  %7 = getelementptr inbounds %struct.k_msgq, ptr %6, i32 0, i32 8, !dbg !514
  %8 = load i32, ptr %7, align 4, !dbg !514
  %9 = sub i32 %5, %8, !dbg !515
  ret i32 %9, !dbg !516
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_msgq_num_used_get(ptr noundef %0) #0 !dbg !517 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !519, metadata !DIExpression()), !dbg !520
  %3 = load ptr, ptr %2, align 4, !dbg !521
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 8, !dbg !522
  %5 = load i32, ptr %4, align 4, !dbg !522
  ret i32 %5, !dbg !523
}

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @z_impl_device_is_ready(ptr noundef %0) #0 !dbg !524 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !528, metadata !DIExpression()), !dbg !529
  %3 = load ptr, ptr %2, align 4, !dbg !530
  %4 = call zeroext i1 @z_device_is_ready(ptr noundef %3) #5, !dbg !531
  ret i1 %4, !dbg !532
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_gpio_pin_interrupt_configure(ptr noundef %0, i8 noundef zeroext %1, i32 noundef %2) #0 !dbg !533 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store ptr %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !535, metadata !DIExpression()), !dbg !545
  store i8 %1, ptr %6, align 1
  call void @llvm.dbg.declare(metadata ptr %6, metadata !536, metadata !DIExpression()), !dbg !546
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !537, metadata !DIExpression()), !dbg !547
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #6, !dbg !548
  call void @llvm.dbg.declare(metadata ptr %8, metadata !538, metadata !DIExpression()), !dbg !549
  %14 = load ptr, ptr %5, align 4, !dbg !550
  %15 = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 2, !dbg !551
  %16 = load ptr, ptr %15, align 4, !dbg !551
  store ptr %16, ptr %8, align 4, !dbg !549
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #6, !dbg !552
  call void @llvm.dbg.declare(metadata ptr %9, metadata !539, metadata !DIExpression()), !dbg !553
  %17 = load ptr, ptr %5, align 4, !dbg !554
  %18 = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 1, !dbg !555
  %19 = load ptr, ptr %18, align 4, !dbg !555
  store ptr %19, ptr %9, align 4, !dbg !553
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #6, !dbg !556
  call void @llvm.dbg.declare(metadata ptr %10, metadata !541, metadata !DIExpression()), !dbg !557
  %20 = load ptr, ptr %5, align 4, !dbg !558
  %21 = getelementptr inbounds %struct.device, ptr %20, i32 0, i32 4, !dbg !559
  %22 = load ptr, ptr %21, align 4, !dbg !559
  store ptr %22, ptr %10, align 4, !dbg !557
  call void @llvm.lifetime.start.p0(i64 4, ptr %11) #6, !dbg !560
  call void @llvm.dbg.declare(metadata ptr %11, metadata !543, metadata !DIExpression()), !dbg !561
  call void @llvm.lifetime.start.p0(i64 4, ptr %12) #6, !dbg !562
  call void @llvm.dbg.declare(metadata ptr %12, metadata !544, metadata !DIExpression()), !dbg !563
  %23 = load ptr, ptr %8, align 4, !dbg !564
  %24 = getelementptr inbounds %struct.gpio_driver_api, ptr %23, i32 0, i32 6, !dbg !566
  %25 = load ptr, ptr %24, align 4, !dbg !566
  %26 = icmp eq ptr %25, null, !dbg !567
  br i1 %26, label %27, label %28, !dbg !568

27:                                               ; preds = %3
  store i32 -88, ptr %4, align 4, !dbg !569
  store i32 1, ptr %13, align 4
  br label %57, !dbg !569

28:                                               ; preds = %3
  %29 = load i32, ptr %7, align 4, !dbg !571
  %30 = and i32 %29, 8388608, !dbg !573
  %31 = icmp ne i32 %30, 0, !dbg !574
  br i1 %31, label %32, label %44, !dbg !575

32:                                               ; preds = %28
  %33 = load ptr, ptr %10, align 4, !dbg !576
  %34 = getelementptr inbounds %struct.gpio_driver_data, ptr %33, i32 0, i32 0, !dbg !577
  %35 = load i32, ptr %34, align 4, !dbg !577
  %36 = load i8, ptr %6, align 1, !dbg !578
  %37 = zext i8 %36 to i32, !dbg !579
  %38 = shl i32 1, %37, !dbg !580
  %39 = and i32 %35, %38, !dbg !581
  %40 = icmp ne i32 %39, 0, !dbg !582
  br i1 %40, label %41, label %44, !dbg !583

41:                                               ; preds = %32
  %42 = load i32, ptr %7, align 4, !dbg !584
  %43 = xor i32 %42, 100663296, !dbg !584
  store i32 %43, ptr %7, align 4, !dbg !584
  br label %44, !dbg !586

44:                                               ; preds = %41, %32, %28
  %45 = load i32, ptr %7, align 4, !dbg !587
  %46 = and i32 %45, 100663296, !dbg !588
  store i32 %46, ptr %11, align 4, !dbg !589
  %47 = load i32, ptr %7, align 4, !dbg !590
  %48 = and i32 %47, 23068672, !dbg !591
  store i32 %48, ptr %12, align 4, !dbg !592
  %49 = load ptr, ptr %8, align 4, !dbg !593
  %50 = getelementptr inbounds %struct.gpio_driver_api, ptr %49, i32 0, i32 6, !dbg !594
  %51 = load ptr, ptr %50, align 4, !dbg !594
  %52 = load ptr, ptr %5, align 4, !dbg !595
  %53 = load i8, ptr %6, align 1, !dbg !596
  %54 = load i32, ptr %12, align 4, !dbg !597
  %55 = load i32, ptr %11, align 4, !dbg !598
  %56 = call i32 %51(ptr noundef %52, i8 noundef zeroext %53, i32 noundef %54, i32 noundef %55) #5, !dbg !593
  store i32 %56, ptr %4, align 4, !dbg !599
  store i32 1, ptr %13, align 4
  br label %57, !dbg !599

57:                                               ; preds = %44, %27
  call void @llvm.lifetime.end.p0(i64 4, ptr %12) #6, !dbg !600
  call void @llvm.lifetime.end.p0(i64 4, ptr %11) #6, !dbg !600
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #6, !dbg !600
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #6, !dbg !600
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #6, !dbg !600
  %58 = load i32, ptr %4, align 4, !dbg !600
  ret i32 %58, !dbg !600
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_gpio_pin_configure(ptr noundef %0, i8 noundef zeroext %1, i32 noundef %2) #0 !dbg !601 {
  %4 = alloca ptr, align 4
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !603, metadata !DIExpression()), !dbg !609
  store i8 %1, ptr %5, align 1
  call void @llvm.dbg.declare(metadata ptr %5, metadata !604, metadata !DIExpression()), !dbg !610
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !605, metadata !DIExpression()), !dbg !611
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #6, !dbg !612
  call void @llvm.dbg.declare(metadata ptr %7, metadata !606, metadata !DIExpression()), !dbg !613
  %10 = load ptr, ptr %4, align 4, !dbg !614
  %11 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 2, !dbg !615
  %12 = load ptr, ptr %11, align 4, !dbg !615
  store ptr %12, ptr %7, align 4, !dbg !613
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #6, !dbg !616
  call void @llvm.dbg.declare(metadata ptr %8, metadata !607, metadata !DIExpression()), !dbg !617
  %13 = load ptr, ptr %4, align 4, !dbg !618
  %14 = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 1, !dbg !619
  %15 = load ptr, ptr %14, align 4, !dbg !619
  store ptr %15, ptr %8, align 4, !dbg !617
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #6, !dbg !620
  call void @llvm.dbg.declare(metadata ptr %9, metadata !608, metadata !DIExpression()), !dbg !621
  %16 = load ptr, ptr %4, align 4, !dbg !622
  %17 = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 4, !dbg !623
  %18 = load ptr, ptr %17, align 4, !dbg !623
  store ptr %18, ptr %9, align 4, !dbg !621
  %19 = load i32, ptr %6, align 4, !dbg !624
  %20 = and i32 %19, 1048576, !dbg !626
  %21 = icmp ne i32 %20, 0, !dbg !627
  br i1 %21, label %22, label %33, !dbg !628

22:                                               ; preds = %3
  %23 = load i32, ptr %6, align 4, !dbg !629
  %24 = and i32 %23, 786432, !dbg !630
  %25 = icmp ne i32 %24, 0, !dbg !631
  br i1 %25, label %26, label %33, !dbg !632

26:                                               ; preds = %22
  %27 = load i32, ptr %6, align 4, !dbg !633
  %28 = and i32 %27, 1, !dbg !634
  %29 = icmp ne i32 %28, 0, !dbg !635
  br i1 %29, label %30, label %33, !dbg !636

30:                                               ; preds = %26
  %31 = load i32, ptr %6, align 4, !dbg !637
  %32 = xor i32 %31, 786432, !dbg !637
  store i32 %32, ptr %6, align 4, !dbg !637
  br label %33, !dbg !639

33:                                               ; preds = %30, %26, %22, %3
  %34 = load i32, ptr %6, align 4, !dbg !640
  %35 = and i32 %34, -1048577, !dbg !640
  store i32 %35, ptr %6, align 4, !dbg !640
  %36 = load i32, ptr %6, align 4, !dbg !641
  %37 = and i32 %36, 1, !dbg !643
  %38 = icmp ne i32 %37, 0, !dbg !644
  br i1 %38, label %39, label %47, !dbg !645

39:                                               ; preds = %33
  %40 = load i8, ptr %5, align 1, !dbg !646
  %41 = zext i8 %40 to i32, !dbg !648
  %42 = shl i32 1, %41, !dbg !649
  %43 = load ptr, ptr %9, align 4, !dbg !650
  %44 = getelementptr inbounds %struct.gpio_driver_data, ptr %43, i32 0, i32 0, !dbg !651
  %45 = load i32, ptr %44, align 4, !dbg !652
  %46 = or i32 %45, %42, !dbg !652
  store i32 %46, ptr %44, align 4, !dbg !652
  br label %56, !dbg !653

47:                                               ; preds = %33
  %48 = load i8, ptr %5, align 1, !dbg !654
  %49 = zext i8 %48 to i32, !dbg !656
  %50 = shl i32 1, %49, !dbg !657
  %51 = xor i32 %50, -1, !dbg !658
  %52 = load ptr, ptr %9, align 4, !dbg !659
  %53 = getelementptr inbounds %struct.gpio_driver_data, ptr %52, i32 0, i32 0, !dbg !660
  %54 = load i32, ptr %53, align 4, !dbg !661
  %55 = and i32 %54, %51, !dbg !661
  store i32 %55, ptr %53, align 4, !dbg !661
  br label %56

56:                                               ; preds = %47, %39
  %57 = load ptr, ptr %7, align 4, !dbg !662
  %58 = getelementptr inbounds %struct.gpio_driver_api, ptr %57, i32 0, i32 0, !dbg !663
  %59 = load ptr, ptr %58, align 4, !dbg !663
  %60 = load ptr, ptr %4, align 4, !dbg !664
  %61 = load i8, ptr %5, align 1, !dbg !665
  %62 = load i32, ptr %6, align 4, !dbg !666
  %63 = call i32 %59(ptr noundef %60, i8 noundef zeroext %61, i32 noundef %62) #5, !dbg !662
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #6, !dbg !667
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #6, !dbg !667
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #6, !dbg !667
  ret i32 %63, !dbg !668
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_gpio_port_get_raw(ptr noundef %0, ptr noundef %1) #0 !dbg !669 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !671, metadata !DIExpression()), !dbg !674
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !672, metadata !DIExpression()), !dbg !675
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #6, !dbg !676
  call void @llvm.dbg.declare(metadata ptr %5, metadata !673, metadata !DIExpression()), !dbg !677
  %6 = load ptr, ptr %3, align 4, !dbg !678
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 2, !dbg !679
  %8 = load ptr, ptr %7, align 4, !dbg !679
  store ptr %8, ptr %5, align 4, !dbg !677
  %9 = load ptr, ptr %5, align 4, !dbg !680
  %10 = getelementptr inbounds %struct.gpio_driver_api, ptr %9, i32 0, i32 1, !dbg !681
  %11 = load ptr, ptr %10, align 4, !dbg !681
  %12 = load ptr, ptr %3, align 4, !dbg !682
  %13 = load ptr, ptr %4, align 4, !dbg !683
  %14 = call i32 %11(ptr noundef %12, ptr noundef %13) #5, !dbg !680
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #6, !dbg !684
  ret i32 %14, !dbg !685
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_gpio_port_set_masked_raw(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 !dbg !686 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !688, metadata !DIExpression()), !dbg !692
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !689, metadata !DIExpression()), !dbg !693
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !690, metadata !DIExpression()), !dbg !694
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #6, !dbg !695
  call void @llvm.dbg.declare(metadata ptr %7, metadata !691, metadata !DIExpression()), !dbg !696
  %8 = load ptr, ptr %4, align 4, !dbg !697
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 2, !dbg !698
  %10 = load ptr, ptr %9, align 4, !dbg !698
  store ptr %10, ptr %7, align 4, !dbg !696
  %11 = load ptr, ptr %7, align 4, !dbg !699
  %12 = getelementptr inbounds %struct.gpio_driver_api, ptr %11, i32 0, i32 2, !dbg !700
  %13 = load ptr, ptr %12, align 4, !dbg !700
  %14 = load ptr, ptr %4, align 4, !dbg !701
  %15 = load i32, ptr %5, align 4, !dbg !702
  %16 = load i32, ptr %6, align 4, !dbg !703
  %17 = call i32 %13(ptr noundef %14, i32 noundef %15, i32 noundef %16) #5, !dbg !699
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #6, !dbg !704
  ret i32 %17, !dbg !705
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_gpio_port_set_bits_raw(ptr noundef %0, i32 noundef %1) #0 !dbg !706 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !708, metadata !DIExpression()), !dbg !711
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !709, metadata !DIExpression()), !dbg !712
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #6, !dbg !713
  call void @llvm.dbg.declare(metadata ptr %5, metadata !710, metadata !DIExpression()), !dbg !714
  %6 = load ptr, ptr %3, align 4, !dbg !715
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 2, !dbg !716
  %8 = load ptr, ptr %7, align 4, !dbg !716
  store ptr %8, ptr %5, align 4, !dbg !714
  %9 = load ptr, ptr %5, align 4, !dbg !717
  %10 = getelementptr inbounds %struct.gpio_driver_api, ptr %9, i32 0, i32 3, !dbg !718
  %11 = load ptr, ptr %10, align 4, !dbg !718
  %12 = load ptr, ptr %3, align 4, !dbg !719
  %13 = load i32, ptr %4, align 4, !dbg !720
  %14 = call i32 %11(ptr noundef %12, i32 noundef %13) #5, !dbg !717
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #6, !dbg !721
  ret i32 %14, !dbg !722
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_gpio_port_clear_bits_raw(ptr noundef %0, i32 noundef %1) #0 !dbg !723 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !725, metadata !DIExpression()), !dbg !728
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !726, metadata !DIExpression()), !dbg !729
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #6, !dbg !730
  call void @llvm.dbg.declare(metadata ptr %5, metadata !727, metadata !DIExpression()), !dbg !731
  %6 = load ptr, ptr %3, align 4, !dbg !732
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 2, !dbg !733
  %8 = load ptr, ptr %7, align 4, !dbg !733
  store ptr %8, ptr %5, align 4, !dbg !731
  %9 = load ptr, ptr %5, align 4, !dbg !734
  %10 = getelementptr inbounds %struct.gpio_driver_api, ptr %9, i32 0, i32 4, !dbg !735
  %11 = load ptr, ptr %10, align 4, !dbg !735
  %12 = load ptr, ptr %3, align 4, !dbg !736
  %13 = load i32, ptr %4, align 4, !dbg !737
  %14 = call i32 %11(ptr noundef %12, i32 noundef %13) #5, !dbg !734
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #6, !dbg !738
  ret i32 %14, !dbg !739
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_gpio_port_toggle_bits(ptr noundef %0, i32 noundef %1) #0 !dbg !740 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !742, metadata !DIExpression()), !dbg !745
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !743, metadata !DIExpression()), !dbg !746
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #6, !dbg !747
  call void @llvm.dbg.declare(metadata ptr %5, metadata !744, metadata !DIExpression()), !dbg !748
  %6 = load ptr, ptr %3, align 4, !dbg !749
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 2, !dbg !750
  %8 = load ptr, ptr %7, align 4, !dbg !750
  store ptr %8, ptr %5, align 4, !dbg !748
  %9 = load ptr, ptr %5, align 4, !dbg !751
  %10 = getelementptr inbounds %struct.gpio_driver_api, ptr %9, i32 0, i32 5, !dbg !752
  %11 = load ptr, ptr %10, align 4, !dbg !752
  %12 = load ptr, ptr %3, align 4, !dbg !753
  %13 = load i32, ptr %4, align 4, !dbg !754
  %14 = call i32 %11(ptr noundef %12, i32 noundef %13) #5, !dbg !751
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #6, !dbg !755
  ret i32 %14, !dbg !756
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_gpio_get_pending_int(ptr noundef %0) #0 !dbg !757 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !761, metadata !DIExpression()), !dbg !763
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #6, !dbg !764
  call void @llvm.dbg.declare(metadata ptr %4, metadata !762, metadata !DIExpression()), !dbg !765
  %6 = load ptr, ptr %3, align 4, !dbg !766
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 2, !dbg !767
  %8 = load ptr, ptr %7, align 4, !dbg !767
  store ptr %8, ptr %4, align 4, !dbg !765
  %9 = load ptr, ptr %4, align 4, !dbg !768
  %10 = getelementptr inbounds %struct.gpio_driver_api, ptr %9, i32 0, i32 8, !dbg !770
  %11 = load ptr, ptr %10, align 4, !dbg !770
  %12 = icmp eq ptr %11, null, !dbg !771
  br i1 %12, label %13, label %14, !dbg !772

13:                                               ; preds = %1
  store i32 -88, ptr %2, align 4, !dbg !773
  store i32 1, ptr %5, align 4
  br label %20, !dbg !773

14:                                               ; preds = %1
  %15 = load ptr, ptr %4, align 4, !dbg !775
  %16 = getelementptr inbounds %struct.gpio_driver_api, ptr %15, i32 0, i32 8, !dbg !776
  %17 = load ptr, ptr %16, align 4, !dbg !776
  %18 = load ptr, ptr %3, align 4, !dbg !777
  %19 = call i32 %17(ptr noundef %18) #5, !dbg !775
  store i32 %19, ptr %2, align 4, !dbg !778
  store i32 1, ptr %5, align 4
  br label %20, !dbg !778

20:                                               ; preds = %14, %13
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #6, !dbg !779
  %21 = load i32, ptr %2, align 4, !dbg !779
  ret i32 %21, !dbg !779
}

; Function Attrs: nounwind optsize
define hidden i32 @main() #1 !dbg !780 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %2) #6, !dbg !785
  call void @llvm.dbg.declare(metadata ptr %2, metadata !784, metadata !DIExpression()), !dbg !786
  %4 = call zeroext i1 @gpio_is_ready_dt(ptr noundef @led) #5, !dbg !787
  br i1 %4, label %6, label %5, !dbg !789

5:                                                ; preds = %0
  store i32 0, ptr %1, align 4, !dbg !790
  store i32 1, ptr %3, align 4
  br label %20, !dbg !790

6:                                                ; preds = %0
  %7 = call i32 @gpio_pin_configure_dt(ptr noundef @led, i32 noundef 1703936) #5, !dbg !792
  store i32 %7, ptr %2, align 4, !dbg !793
  %8 = load i32, ptr %2, align 4, !dbg !794
  %9 = icmp slt i32 %8, 0, !dbg !796
  br i1 %9, label %10, label %11, !dbg !797

10:                                               ; preds = %6
  store i32 0, ptr %1, align 4, !dbg !798
  store i32 1, ptr %3, align 4
  br label %20, !dbg !798

11:                                               ; preds = %6
  br label %12, !dbg !800

12:                                               ; preds = %18, %11
  br label %13, !dbg !800

13:                                               ; preds = %12
  %14 = call i32 @gpio_pin_toggle_dt(ptr noundef @led) #5, !dbg !801
  store i32 %14, ptr %2, align 4, !dbg !803
  %15 = load i32, ptr %2, align 4, !dbg !804
  %16 = icmp slt i32 %15, 0, !dbg !806
  br i1 %16, label %17, label %18, !dbg !807

17:                                               ; preds = %13
  store i32 0, ptr %1, align 4, !dbg !808
  store i32 1, ptr %3, align 4
  br label %20, !dbg !808

18:                                               ; preds = %13
  %19 = call i32 @k_msleep(i32 noundef 1000) #5, !dbg !810
  br label %12, !dbg !800, !llvm.loop !811

20:                                               ; preds = %17, %10, %5
  call void @llvm.lifetime.end.p0(i64 4, ptr %2) #6, !dbg !813
  %21 = load i32, ptr %1, align 4, !dbg !813
  ret i32 %21, !dbg !813
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @gpio_is_ready_dt(ptr noundef %0) #0 !dbg !814 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !819, metadata !DIExpression()), !dbg !820
  %3 = load ptr, ptr %2, align 4, !dbg !821
  %4 = getelementptr inbounds %struct.gpio_dt_spec, ptr %3, i32 0, i32 0, !dbg !822
  %5 = load ptr, ptr %4, align 4, !dbg !822
  %6 = call zeroext i1 @device_is_ready(ptr noundef %5) #5, !dbg !823
  ret i1 %6, !dbg !824
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @gpio_pin_configure_dt(ptr noundef %0, i32 noundef %1) #0 !dbg !825 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !829, metadata !DIExpression()), !dbg !831
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !830, metadata !DIExpression()), !dbg !832
  %5 = load ptr, ptr %3, align 4, !dbg !833
  %6 = getelementptr inbounds %struct.gpio_dt_spec, ptr %5, i32 0, i32 0, !dbg !834
  %7 = load ptr, ptr %6, align 4, !dbg !834
  %8 = load ptr, ptr %3, align 4, !dbg !835
  %9 = getelementptr inbounds %struct.gpio_dt_spec, ptr %8, i32 0, i32 1, !dbg !836
  %10 = load i8, ptr %9, align 4, !dbg !836
  %11 = load ptr, ptr %3, align 4, !dbg !837
  %12 = getelementptr inbounds %struct.gpio_dt_spec, ptr %11, i32 0, i32 2, !dbg !838
  %13 = load i16, ptr %12, align 2, !dbg !838
  %14 = zext i16 %13 to i32, !dbg !837
  %15 = load i32, ptr %4, align 4, !dbg !839
  %16 = or i32 %14, %15, !dbg !840
  %17 = call i32 @gpio_pin_configure(ptr noundef %7, i8 noundef zeroext %10, i32 noundef %16) #5, !dbg !841
  ret i32 %17, !dbg !842
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @gpio_pin_toggle_dt(ptr noundef %0) #0 !dbg !843 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !847, metadata !DIExpression()), !dbg !848
  %3 = load ptr, ptr %2, align 4, !dbg !849
  %4 = getelementptr inbounds %struct.gpio_dt_spec, ptr %3, i32 0, i32 0, !dbg !850
  %5 = load ptr, ptr %4, align 4, !dbg !850
  %6 = load ptr, ptr %2, align 4, !dbg !851
  %7 = getelementptr inbounds %struct.gpio_dt_spec, ptr %6, i32 0, i32 1, !dbg !852
  %8 = load i8, ptr %7, align 4, !dbg !852
  %9 = call i32 @gpio_pin_toggle(ptr noundef %5, i8 noundef zeroext %8) #5, !dbg !853
  ret i32 %9, !dbg !854
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @k_msleep(i32 noundef %0) #0 !dbg !855 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.k_timeout_t, align 8
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !860, metadata !DIExpression()), !dbg !861
  %4 = getelementptr inbounds %struct.k_timeout_t, ptr %3, i32 0, i32 0, !dbg !862
  %5 = load i32, ptr %2, align 4, !dbg !863
  %6 = icmp sgt i32 %5, 0, !dbg !864
  br i1 %6, label %7, label %9, !dbg !865

7:                                                ; preds = %1
  %8 = load i32, ptr %2, align 4, !dbg !866
  br label %10, !dbg !865

9:                                                ; preds = %1
  br label %10, !dbg !865

10:                                               ; preds = %9, %7
  %11 = phi i32 [ %8, %7 ], [ 0, %9 ], !dbg !865
  %12 = sext i32 %11 to i64, !dbg !867
  %13 = mul i64 %12, 10, !dbg !868
  store i64 %13, ptr %4, align 8, !dbg !862
  %14 = getelementptr inbounds %struct.k_timeout_t, ptr %3, i32 0, i32 0, !dbg !869
  %15 = load [1 x i64], ptr %14, align 8, !dbg !869
  %16 = call i32 @k_sleep([1 x i64] %15) #5, !dbg !869
  ret i32 %16, !dbg !870
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare !dbg !871 dso_local i64 @z_timeout_expires(ptr noundef) #4

; Function Attrs: optsize
declare !dbg !876 dso_local i64 @z_timeout_remaining(ptr noundef) #4

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @sys_sflist_is_empty(ptr noundef %0) #0 !dbg !877 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !882, metadata !DIExpression()), !dbg !883
  %3 = load ptr, ptr %2, align 4, !dbg !884
  %4 = call ptr @sys_sflist_peek_head(ptr noundef %3) #5, !dbg !885
  %5 = icmp eq ptr %4, null, !dbg !886
  ret i1 %5, !dbg !887
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @sys_sflist_peek_head(ptr noundef %0) #0 !dbg !888 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !892, metadata !DIExpression()), !dbg !893
  %3 = load ptr, ptr %2, align 4, !dbg !894
  %4 = getelementptr inbounds %struct._sflist, ptr %3, i32 0, i32 0, !dbg !895
  %5 = load ptr, ptr %4, align 4, !dbg !895
  ret ptr %5, !dbg !896
}

; Function Attrs: optsize
declare !dbg !897 dso_local zeroext i1 @z_device_is_ready(ptr noundef) #4

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @device_is_ready(ptr noundef %0) #0 !dbg !898 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !901, metadata !DIExpression()), !dbg !902
  br label %3, !dbg !903

3:                                                ; preds = %1
  call void asm sideeffect "", "~{memory}"() #6, !dbg !904, !srcloc !906
  br label %4, !dbg !907

4:                                                ; preds = %3
  %5 = load ptr, ptr %2, align 4, !dbg !908
  %6 = call zeroext i1 @z_impl_device_is_ready(ptr noundef %5) #5, !dbg !909
  ret i1 %6, !dbg !910
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @gpio_pin_configure(ptr noundef %0, i8 noundef zeroext %1, i32 noundef %2) #0 !dbg !911 {
  %4 = alloca ptr, align 4
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !914, metadata !DIExpression()), !dbg !917
  store i8 %1, ptr %5, align 1
  call void @llvm.dbg.declare(metadata ptr %5, metadata !915, metadata !DIExpression()), !dbg !918
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !916, metadata !DIExpression()), !dbg !919
  br label %7, !dbg !920

7:                                                ; preds = %3
  call void asm sideeffect "", "~{memory}"() #6, !dbg !921, !srcloc !923
  br label %8, !dbg !924

8:                                                ; preds = %7
  %9 = load ptr, ptr %4, align 4, !dbg !925
  %10 = load i8, ptr %5, align 1, !dbg !926
  %11 = load i32, ptr %6, align 4, !dbg !927
  %12 = call i32 @z_impl_gpio_pin_configure(ptr noundef %9, i8 noundef zeroext %10, i32 noundef %11) #5, !dbg !928
  ret i32 %12, !dbg !929
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @gpio_pin_toggle(ptr noundef %0, i8 noundef zeroext %1) #0 !dbg !930 {
  %3 = alloca ptr, align 4
  %4 = alloca i8, align 1
  %5 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !934, metadata !DIExpression()), !dbg !937
  store i8 %1, ptr %4, align 1
  call void @llvm.dbg.declare(metadata ptr %4, metadata !935, metadata !DIExpression()), !dbg !938
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #6, !dbg !939
  call void @llvm.dbg.declare(metadata ptr %5, metadata !936, metadata !DIExpression()), !dbg !940
  %6 = load ptr, ptr %3, align 4, !dbg !941
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 1, !dbg !942
  %8 = load ptr, ptr %7, align 4, !dbg !942
  store ptr %8, ptr %5, align 4, !dbg !940
  %9 = load ptr, ptr %3, align 4, !dbg !943
  %10 = load i8, ptr %4, align 1, !dbg !944
  %11 = zext i8 %10 to i32, !dbg !945
  %12 = shl i32 1, %11, !dbg !946
  %13 = call i32 @gpio_port_toggle_bits(ptr noundef %9, i32 noundef %12) #5, !dbg !947
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #6, !dbg !948
  ret i32 %13, !dbg !949
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @gpio_port_toggle_bits(ptr noundef %0, i32 noundef %1) #0 !dbg !950 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !952, metadata !DIExpression()), !dbg !954
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !953, metadata !DIExpression()), !dbg !955
  br label %5, !dbg !956

5:                                                ; preds = %2
  call void asm sideeffect "", "~{memory}"() #6, !dbg !957, !srcloc !959
  br label %6, !dbg !960

6:                                                ; preds = %5
  %7 = load ptr, ptr %3, align 4, !dbg !961
  %8 = load i32, ptr %4, align 4, !dbg !962
  %9 = call i32 @z_impl_gpio_port_toggle_bits(ptr noundef %7, i32 noundef %8) #5, !dbg !963
  ret i32 %9, !dbg !964
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @k_sleep([1 x i64] %0) #0 !dbg !965 {
  %2 = alloca %struct.k_timeout_t, align 8
  %3 = getelementptr inbounds %struct.k_timeout_t, ptr %2, i32 0, i32 0
  store [1 x i64] %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !970, metadata !DIExpression()), !dbg !971
  br label %4, !dbg !972

4:                                                ; preds = %1
  call void asm sideeffect "", "~{memory}"() #6, !dbg !973, !srcloc !975
  br label %5, !dbg !976

5:                                                ; preds = %4
  %6 = getelementptr inbounds %struct.k_timeout_t, ptr %2, i32 0, i32 0, !dbg !977
  %7 = load [1 x i64], ptr %6, align 8, !dbg !977
  %8 = call i32 @z_impl_k_sleep([1 x i64] %7) #5, !dbg !977
  ret i32 %8, !dbg !978
}

; Function Attrs: optsize
declare !dbg !979 dso_local i32 @z_impl_k_sleep([1 x i64]) #4

attributes #0 = { inlinehint nounwind optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { optsize }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!210, !211, !212, !213, !214, !215}
!llvm.ident = !{!216}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "led", scope: !2, file: !200, line: 20, type: !201, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !100, globals: !199, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "main.c", directory: "/home/sri/zephyrproject/zephyr/build")
!4 = !{!5, !88, !95}
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
!88 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gpio_int_mode", file: !89, line: 766, baseType: !90, size: 32, elements: !91)
!89 = !DIFile(filename: "include/zephyr/drivers/gpio.h", directory: "/home/sri/zephyrproject/zephyr")
!90 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!91 = !{!92, !93, !94}
!92 = !DIEnumerator(name: "GPIO_INT_MODE_DISABLED", value: 2097152)
!93 = !DIEnumerator(name: "GPIO_INT_MODE_LEVEL", value: 4194304)
!94 = !DIEnumerator(name: "GPIO_INT_MODE_EDGE", value: 20971520)
!95 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gpio_int_trig", file: !89, line: 776, baseType: !90, size: 32, elements: !96)
!96 = !{!97, !98, !99}
!97 = !DIEnumerator(name: "GPIO_INT_TRIG_LOW", value: 33554432)
!98 = !DIEnumerator(name: "GPIO_INT_TRIG_HIGH", value: 67108864)
!99 = !DIEnumerator(name: "GPIO_INT_TRIG_BOTH", value: 100663296)
!100 = !{!101, !102, !103, !182, !187, !147, !95, !88, !192, !193, !197}
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!102 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 32)
!104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !105)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gpio_driver_api", file: !89, line: 788, size: 288, elements: !106)
!106 = !{!107, !137, !143, !148, !152, !153, !154, !158, !178}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "pin_configure", scope: !105, file: !89, line: 789, baseType: !108, size: 32)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 32)
!109 = !DISubroutineType(types: !110)
!110 = !{!102, !111, !134, !135}
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 32)
!112 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !113)
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !114, line: 381, size: 160, elements: !115)
!114 = !DIFile(filename: "include/zephyr/device.h", directory: "/home/sri/zephyrproject/zephyr")
!115 = !{!116, !120, !123, !124, !133}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !113, file: !114, line: 383, baseType: !117, size: 32)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 32)
!118 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !119)
!119 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !113, file: !114, line: 385, baseType: !121, size: 32, offset: 32)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 32)
!122 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "api", scope: !113, file: !114, line: 387, baseType: !121, size: 32, offset: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !113, file: !114, line: 389, baseType: !125, size: 32, offset: 96)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 32)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_state", file: !114, line: 354, size: 16, elements: !127)
!127 = !{!128, !131}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "init_res", scope: !126, file: !114, line: 362, baseType: !129, size: 8)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !130, line: 62, baseType: !7)
!130 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/stdint.h", directory: "")
!131 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !126, file: !114, line: 367, baseType: !132, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 8)
!132 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !113, file: !114, line: 391, baseType: !101, size: 32, offset: 128)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpio_pin_t", file: !89, line: 252, baseType: !129)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpio_flags_t", file: !89, line: 272, baseType: !136)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !130, line: 64, baseType: !90)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "port_get_raw", scope: !105, file: !89, line: 795, baseType: !138, size: 32, offset: 32)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 32)
!139 = !DISubroutineType(types: !140)
!140 = !{!102, !111, !141}
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 32)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpio_port_value_t", file: !89, line: 244, baseType: !136)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "port_set_masked_raw", scope: !105, file: !89, line: 797, baseType: !144, size: 32, offset: 64)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 32)
!145 = !DISubroutineType(types: !146)
!146 = !{!102, !111, !147, !142}
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpio_port_pins_t", file: !89, line: 231, baseType: !136)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "port_set_bits_raw", scope: !105, file: !89, line: 800, baseType: !149, size: 32, offset: 96)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 32)
!150 = !DISubroutineType(types: !151)
!151 = !{!102, !111, !147}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "port_clear_bits_raw", scope: !105, file: !89, line: 802, baseType: !149, size: 32, offset: 128)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "port_toggle_bits", scope: !105, file: !89, line: 804, baseType: !149, size: 32, offset: 160)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "pin_interrupt_configure", scope: !105, file: !89, line: 806, baseType: !155, size: 32, offset: 192)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 32)
!156 = !DISubroutineType(types: !157)
!157 = !{!102, !111, !134, !88, !95}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "manage_callback", scope: !105, file: !89, line: 809, baseType: !159, size: 32, offset: 224)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 32)
!160 = !DISubroutineType(types: !161)
!161 = !{!102, !111, !162, !132}
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 32)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gpio_callback", file: !89, line: 738, size: 96, elements: !164)
!164 = !{!165, !172, !177}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !163, file: !89, line: 742, baseType: !166, size: 32)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_snode_t", file: !167, line: 39, baseType: !168)
!167 = !DIFile(filename: "include/zephyr/sys/slist.h", directory: "/home/sri/zephyrproject/zephyr")
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_snode", file: !167, line: 33, size: 32, elements: !169)
!169 = !{!170}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !168, file: !167, line: 34, baseType: !171, size: 32)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 32)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !163, file: !89, line: 745, baseType: !173, size: 32, offset: 32)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpio_callback_handler_t", file: !89, line: 724, baseType: !174)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 32)
!175 = !DISubroutineType(types: !176)
!176 = !{null, !111, !162, !147}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "pin_mask", scope: !163, file: !89, line: 753, baseType: !147, size: 32, offset: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "get_pending_int", scope: !105, file: !89, line: 812, baseType: !179, size: 32, offset: 256)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 32)
!180 = !DISubroutineType(types: !181)
!181 = !{!136, !111}
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 32)
!183 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !184)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gpio_driver_config", file: !89, line: 688, size: 32, elements: !185)
!185 = !{!186}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "port_pin_mask", scope: !184, file: !89, line: 694, baseType: !147, size: 32)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 32)
!188 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !189)
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gpio_driver_data", file: !89, line: 701, size: 32, elements: !190)
!190 = !{!191}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "invert", scope: !189, file: !89, line: 707, baseType: !147, size: 32)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 32)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_ticks_t", file: !194, line: 46, baseType: !195)
!194 = !DIFile(filename: "include/zephyr/sys_clock.h", directory: "/home/sri/zephyrproject/zephyr")
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !130, line: 59, baseType: !196)
!196 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !130, line: 65, baseType: !198)
!198 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!199 = !{!0}
!200 = !DIFile(filename: "samples/basic/blinky/src/main.c", directory: "/home/sri/zephyrproject/zephyr")
!201 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !202)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gpio_dt_spec", file: !89, line: 286, size: 64, elements: !203)
!203 = !{!204, !205, !206}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !202, file: !89, line: 288, baseType: !111, size: 32)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !202, file: !89, line: 290, baseType: !134, size: 8, offset: 32)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "dt_flags", scope: !202, file: !89, line: 292, baseType: !207, size: 16, offset: 48)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpio_dt_flags_t", file: !89, line: 264, baseType: !208)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !130, line: 63, baseType: !209)
!209 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!210 = !{i32 7, !"Dwarf Version", i32 4}
!211 = !{i32 2, !"Debug Info Version", i32 3}
!212 = !{i32 1, !"wchar_size", i32 4}
!213 = !{i32 1, !"static_rwdata", i32 1}
!214 = !{i32 1, !"enumsize_buildattr", i32 1}
!215 = !{i32 1, !"armlib_unavailable", i32 0}
!216 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
!217 = distinct !DISubprogram(name: "z_impl_k_object_access_grant", scope: !6, file: !6, line: 223, type: !218, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !331)
!218 = !DISubroutineType(types: !219)
!219 = !{null, !121, !220}
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 32)
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_thread", file: !222, line: 250, size: 896, elements: !223)
!222 = !DIFile(filename: "include/zephyr/kernel/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!223 = !{!224, !289, !302, !303, !304, !305, !326}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !221, file: !222, line: 252, baseType: !225, size: 384)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_base", file: !222, line: 58, size: 384, elements: !226)
!226 = !{!227, !255, !263, !264, !265, !276, !277, !278}
!227 = !DIDerivedType(tag: DW_TAG_member, scope: !225, file: !222, line: 61, baseType: !228, size: 64)
!228 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !225, file: !222, line: 61, size: 64, elements: !229)
!229 = !{!230, !246}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_dlist", scope: !228, file: !222, line: 62, baseType: !231, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dnode_t", file: !232, line: 55, baseType: !233)
!232 = !DIFile(filename: "include/zephyr/sys/dlist.h", directory: "/home/sri/zephyrproject/zephyr")
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_dnode", file: !232, line: 37, size: 64, elements: !234)
!234 = !{!235, !241}
!235 = !DIDerivedType(tag: DW_TAG_member, scope: !233, file: !232, line: 38, baseType: !236, size: 32)
!236 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !233, file: !232, line: 38, size: 32, elements: !237)
!237 = !{!238, !240}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !236, file: !232, line: 39, baseType: !239, size: 32)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 32)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !236, file: !232, line: 40, baseType: !239, size: 32)
!241 = !DIDerivedType(tag: DW_TAG_member, scope: !233, file: !232, line: 42, baseType: !242, size: 32, offset: 32)
!242 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !233, file: !232, line: 42, size: 32, elements: !243)
!243 = !{!244, !245}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !242, file: !232, line: 43, baseType: !239, size: 32)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !242, file: !232, line: 44, baseType: !239, size: 32)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_rb", scope: !228, file: !222, line: 63, baseType: !247, size: 64)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rbnode", file: !248, line: 58, size: 64, elements: !249)
!248 = !DIFile(filename: "include/zephyr/sys/rb.h", directory: "/home/sri/zephyrproject/zephyr")
!249 = !{!250}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !247, file: !248, line: 60, baseType: !251, size: 64)
!251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !252, size: 64, elements: !253)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 32)
!253 = !{!254}
!254 = !DISubrange(count: 2)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "pended_on", scope: !225, file: !222, line: 69, baseType: !256, size: 32, offset: 64)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 32)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "_wait_q_t", file: !258, line: 243, baseType: !259)
!258 = !DIFile(filename: "include/zephyr/kernel_structs.h", directory: "/home/sri/zephyrproject/zephyr")
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !258, line: 241, size: 64, elements: !260)
!260 = !{!261}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !259, file: !258, line: 242, baseType: !262, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dlist_t", file: !232, line: 51, baseType: !233)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "user_options", scope: !225, file: !222, line: 72, baseType: !129, size: 8, offset: 96)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "thread_state", scope: !225, file: !222, line: 75, baseType: !129, size: 8, offset: 104)
!265 = !DIDerivedType(tag: DW_TAG_member, scope: !225, file: !222, line: 91, baseType: !266, size: 16, offset: 112)
!266 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !225, file: !222, line: 91, size: 16, elements: !267)
!267 = !{!268, !275}
!268 = !DIDerivedType(tag: DW_TAG_member, scope: !266, file: !222, line: 92, baseType: !269, size: 16)
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !266, file: !222, line: 92, size: 16, elements: !270)
!270 = !{!271, !274}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !269, file: !222, line: 97, baseType: !272, size: 8)
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !130, line: 56, baseType: !273)
!273 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "sched_locked", scope: !269, file: !222, line: 98, baseType: !129, size: 8, offset: 8)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "preempt", scope: !266, file: !222, line: 101, baseType: !208, size: 16)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "order_key", scope: !225, file: !222, line: 108, baseType: !136, size: 32, offset: 128)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "swap_data", scope: !225, file: !222, line: 132, baseType: !101, size: 32, offset: 160)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !225, file: !222, line: 136, baseType: !279, size: 192, offset: 192)
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_timeout", file: !258, line: 254, size: 192, elements: !280)
!280 = !{!281, !282, !288}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !279, file: !258, line: 255, baseType: !231, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !279, file: !258, line: 256, baseType: !283, size: 32, offset: 64)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "_timeout_func_t", file: !258, line: 252, baseType: !284)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 32)
!285 = !DISubroutineType(types: !286)
!286 = !{null, !287}
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 32)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "dticks", scope: !279, file: !258, line: 259, baseType: !195, size: 64, offset: 128)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "callee_saved", scope: !221, file: !222, line: 255, baseType: !290, size: 288, offset: 384)
!290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_callee_saved", file: !291, line: 25, size: 288, elements: !292)
!291 = !DIFile(filename: "include/zephyr/arch/arm/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!292 = !{!293, !294, !295, !296, !297, !298, !299, !300, !301}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "v1", scope: !290, file: !291, line: 26, baseType: !136, size: 32)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "v2", scope: !290, file: !291, line: 27, baseType: !136, size: 32, offset: 32)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "v3", scope: !290, file: !291, line: 28, baseType: !136, size: 32, offset: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "v4", scope: !290, file: !291, line: 29, baseType: !136, size: 32, offset: 96)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "v5", scope: !290, file: !291, line: 30, baseType: !136, size: 32, offset: 128)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "v6", scope: !290, file: !291, line: 31, baseType: !136, size: 32, offset: 160)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "v7", scope: !290, file: !291, line: 32, baseType: !136, size: 32, offset: 192)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "v8", scope: !290, file: !291, line: 33, baseType: !136, size: 32, offset: 224)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "psp", scope: !290, file: !291, line: 34, baseType: !136, size: 32, offset: 256)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "init_data", scope: !221, file: !222, line: 258, baseType: !101, size: 32, offset: 672)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "join_queue", scope: !221, file: !222, line: 261, baseType: !257, size: 64, offset: 704)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "errno_var", scope: !221, file: !222, line: 302, baseType: !102, size: 32, offset: 768)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "resource_pool", scope: !221, file: !222, line: 333, baseType: !306, size: 32, offset: 800)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 32)
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_heap", file: !308, line: 5291, size: 160, elements: !309)
!308 = !DIFile(filename: "include/zephyr/kernel.h", directory: "/home/sri/zephyrproject/zephyr")
!309 = !{!310, !321, !322}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !307, file: !308, line: 5292, baseType: !311, size: 96)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sys_heap", file: !312, line: 56, size: 96, elements: !313)
!312 = !DIFile(filename: "include/zephyr/sys/sys_heap.h", directory: "/home/sri/zephyrproject/zephyr")
!313 = !{!314, !317, !318}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !311, file: !312, line: 57, baseType: !315, size: 32)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 32)
!316 = !DICompositeType(tag: DW_TAG_structure_type, name: "z_heap", file: !312, line: 57, flags: DIFlagFwdDecl)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "init_mem", scope: !311, file: !312, line: 58, baseType: !101, size: 32, offset: 32)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "init_bytes", scope: !311, file: !312, line: 59, baseType: !319, size: 32, offset: 64)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !320, line: 46, baseType: !90)
!320 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/lib/clang/17/include/stddef.h", directory: "")
!321 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !307, file: !308, line: 5293, baseType: !257, size: 64, offset: 96)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !307, file: !308, line: 5294, baseType: !323, offset: 160)
!323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_spinlock", file: !324, line: 45, elements: !325)
!324 = !DIFile(filename: "include/zephyr/spinlock.h", directory: "/home/sri/zephyrproject/zephyr")
!325 = !{}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !221, file: !222, line: 355, baseType: !327, size: 64, offset: 832)
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_arch", file: !291, line: 60, size: 64, elements: !328)
!328 = !{!329, !330}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "basepri", scope: !327, file: !291, line: 63, baseType: !136, size: 32)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "swap_return_value", scope: !327, file: !291, line: 66, baseType: !136, size: 32, offset: 32)
!331 = !{!332, !333}
!332 = !DILocalVariable(name: "object", arg: 1, scope: !217, file: !6, line: 223, type: !121)
!333 = !DILocalVariable(name: "thread", arg: 2, scope: !217, file: !6, line: 224, type: !220)
!334 = !DILocation(line: 223, column: 61, scope: !217)
!335 = !DILocation(line: 224, column: 24, scope: !217)
!336 = !DILocation(line: 226, column: 9, scope: !217)
!337 = !DILocation(line: 227, column: 9, scope: !217)
!338 = !DILocation(line: 228, column: 1, scope: !217)
!339 = distinct !DISubprogram(name: "z_impl_k_object_release", scope: !6, file: !6, line: 243, type: !340, scopeLine: 244, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !342)
!340 = !DISubroutineType(types: !341)
!341 = !{null, !121}
!342 = !{!343}
!343 = !DILocalVariable(name: "object", arg: 1, scope: !339, file: !6, line: 243, type: !121)
!344 = !DILocation(line: 243, column: 56, scope: !339)
!345 = !DILocation(line: 245, column: 9, scope: !339)
!346 = !DILocation(line: 246, column: 1, scope: !339)
!347 = distinct !DISubprogram(name: "z_impl_k_object_alloc", scope: !6, file: !6, line: 359, type: !348, scopeLine: 360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !350)
!348 = !DISubroutineType(types: !349)
!349 = !{!101, !5}
!350 = !{!351}
!351 = !DILocalVariable(name: "otype", arg: 1, scope: !347, file: !6, line: 359, type: !5)
!352 = !DILocation(line: 359, column: 58, scope: !347)
!353 = !DILocation(line: 361, column: 9, scope: !347)
!354 = !DILocation(line: 363, column: 2, scope: !347)
!355 = distinct !DISubprogram(name: "z_impl_k_object_alloc_size", scope: !6, file: !6, line: 366, type: !356, scopeLine: 368, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !358)
!356 = !DISubroutineType(types: !357)
!357 = !{!101, !5, !319}
!358 = !{!359, !360}
!359 = !DILocalVariable(name: "otype", arg: 1, scope: !355, file: !6, line: 366, type: !5)
!360 = !DILocalVariable(name: "size", arg: 2, scope: !355, file: !6, line: 367, type: !319)
!361 = !DILocation(line: 366, column: 63, scope: !355)
!362 = !DILocation(line: 367, column: 13, scope: !355)
!363 = !DILocation(line: 369, column: 9, scope: !355)
!364 = !DILocation(line: 370, column: 9, scope: !355)
!365 = !DILocation(line: 372, column: 2, scope: !355)
!366 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_expires_ticks", scope: !308, file: !308, line: 656, type: !367, scopeLine: 658, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !371)
!367 = !DISubroutineType(types: !368)
!368 = !{!193, !369}
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 32)
!370 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !221)
!371 = !{!372}
!372 = !DILocalVariable(name: "t", arg: 1, scope: !366, file: !308, line: 657, type: !369)
!373 = !DILocation(line: 657, column: 30, scope: !366)
!374 = !DILocation(line: 659, column: 28, scope: !366)
!375 = !DILocation(line: 659, column: 31, scope: !366)
!376 = !DILocation(line: 659, column: 36, scope: !366)
!377 = !DILocation(line: 659, column: 9, scope: !366)
!378 = !DILocation(line: 659, column: 2, scope: !366)
!379 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_remaining_ticks", scope: !308, file: !308, line: 671, type: !367, scopeLine: 673, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !380)
!380 = !{!381}
!381 = !DILocalVariable(name: "t", arg: 1, scope: !379, file: !308, line: 672, type: !369)
!382 = !DILocation(line: 672, column: 30, scope: !379)
!383 = !DILocation(line: 674, column: 30, scope: !379)
!384 = !DILocation(line: 674, column: 33, scope: !379)
!385 = !DILocation(line: 674, column: 38, scope: !379)
!386 = !DILocation(line: 674, column: 9, scope: !379)
!387 = !DILocation(line: 674, column: 2, scope: !379)
!388 = distinct !DISubprogram(name: "z_impl_k_timer_expires_ticks", scope: !308, file: !308, line: 1634, type: !389, scopeLine: 1636, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !410)
!389 = !DISubroutineType(types: !390)
!390 = !{!193, !391}
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 32)
!392 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !393)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_timer", file: !308, line: 1439, size: 448, elements: !394)
!394 = !{!395, !396, !397, !402, !403, !408, !409}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !393, file: !308, line: 1445, baseType: !279, size: 192)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !393, file: !308, line: 1448, baseType: !257, size: 64, offset: 192)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_fn", scope: !393, file: !308, line: 1451, baseType: !398, size: 32, offset: 256)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 32)
!399 = !DISubroutineType(types: !400)
!400 = !{null, !401}
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 32)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "stop_fn", scope: !393, file: !308, line: 1454, baseType: !398, size: 32, offset: 288)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !393, file: !308, line: 1457, baseType: !404, size: 64, offset: 320)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_timeout_t", file: !194, line: 67, baseType: !405)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !194, line: 65, size: 64, elements: !406)
!406 = !{!407}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "ticks", scope: !405, file: !194, line: 66, baseType: !193, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !393, file: !308, line: 1460, baseType: !136, size: 32, offset: 384)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !393, file: !308, line: 1463, baseType: !101, size: 32, offset: 416)
!410 = !{!411}
!411 = !DILocalVariable(name: "timer", arg: 1, scope: !388, file: !308, line: 1635, type: !391)
!412 = !DILocation(line: 1635, column: 34, scope: !388)
!413 = !DILocation(line: 1637, column: 28, scope: !388)
!414 = !DILocation(line: 1637, column: 35, scope: !388)
!415 = !DILocation(line: 1637, column: 9, scope: !388)
!416 = !DILocation(line: 1637, column: 2, scope: !388)
!417 = distinct !DISubprogram(name: "z_impl_k_timer_remaining_ticks", scope: !308, file: !308, line: 1649, type: !389, scopeLine: 1651, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !418)
!418 = !{!419}
!419 = !DILocalVariable(name: "timer", arg: 1, scope: !417, file: !308, line: 1650, type: !391)
!420 = !DILocation(line: 1650, column: 34, scope: !417)
!421 = !DILocation(line: 1652, column: 30, scope: !417)
!422 = !DILocation(line: 1652, column: 37, scope: !417)
!423 = !DILocation(line: 1652, column: 9, scope: !417)
!424 = !DILocation(line: 1652, column: 2, scope: !417)
!425 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_set", scope: !308, file: !308, line: 1689, type: !426, scopeLine: 1691, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !428)
!426 = !DISubroutineType(types: !427)
!427 = !{null, !401, !101}
!428 = !{!429, !430}
!429 = !DILocalVariable(name: "timer", arg: 1, scope: !425, file: !308, line: 1689, type: !401)
!430 = !DILocalVariable(name: "user_data", arg: 2, scope: !425, file: !308, line: 1690, type: !101)
!431 = !DILocation(line: 1689, column: 65, scope: !425)
!432 = !DILocation(line: 1690, column: 19, scope: !425)
!433 = !DILocation(line: 1692, column: 21, scope: !425)
!434 = !DILocation(line: 1692, column: 2, scope: !425)
!435 = !DILocation(line: 1692, column: 9, scope: !425)
!436 = !DILocation(line: 1692, column: 19, scope: !425)
!437 = !DILocation(line: 1693, column: 1, scope: !425)
!438 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_get", scope: !308, file: !308, line: 1704, type: !439, scopeLine: 1705, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !441)
!439 = !DISubroutineType(types: !440)
!440 = !{!101, !391}
!441 = !{!442}
!442 = !DILocalVariable(name: "timer", arg: 1, scope: !438, file: !308, line: 1704, type: !391)
!443 = !DILocation(line: 1704, column: 72, scope: !438)
!444 = !DILocation(line: 1706, column: 9, scope: !438)
!445 = !DILocation(line: 1706, column: 16, scope: !438)
!446 = !DILocation(line: 1706, column: 2, scope: !438)
!447 = distinct !DISubprogram(name: "z_impl_k_queue_is_empty", scope: !308, file: !308, line: 2071, type: !448, scopeLine: 2072, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !468)
!448 = !DISubroutineType(types: !449)
!449 = !{!102, !450}
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 32)
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_queue", file: !308, line: 1830, size: 128, elements: !452)
!452 = !{!453, !466, !467}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "data_q", scope: !451, file: !308, line: 1831, baseType: !454, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sflist_t", file: !455, line: 60, baseType: !456)
!455 = !DIFile(filename: "include/zephyr/sys/sflist.h", directory: "/home/sri/zephyrproject/zephyr")
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sflist", file: !455, line: 53, size: 64, elements: !457)
!457 = !{!458, !465}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !456, file: !455, line: 54, baseType: !459, size: 32)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 32)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sfnode_t", file: !455, line: 50, baseType: !461)
!461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sfnode", file: !455, line: 44, size: 32, elements: !462)
!462 = !{!463}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "next_and_flags", scope: !461, file: !455, line: 45, baseType: !464, size: 32)
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "unative_t", file: !455, line: 40, baseType: !136)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !456, file: !455, line: 55, baseType: !459, size: 32, offset: 32)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !451, file: !308, line: 1832, baseType: !323, offset: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !451, file: !308, line: 1833, baseType: !257, size: 64, offset: 64)
!468 = !{!469}
!469 = !DILocalVariable(name: "queue", arg: 1, scope: !447, file: !308, line: 2071, type: !450)
!470 = !DILocation(line: 2071, column: 59, scope: !447)
!471 = !DILocation(line: 2073, column: 35, scope: !447)
!472 = !DILocation(line: 2073, column: 42, scope: !447)
!473 = !DILocation(line: 2073, column: 14, scope: !447)
!474 = !DILocation(line: 2073, column: 9, scope: !447)
!475 = !DILocation(line: 2073, column: 2, scope: !447)
!476 = distinct !DISubprogram(name: "z_impl_k_sem_count_get", scope: !308, file: !308, line: 3209, type: !477, scopeLine: 3210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !485)
!477 = !DISubroutineType(types: !478)
!478 = !{!90, !479}
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 32)
!480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sem", file: !308, line: 3092, size: 128, elements: !481)
!481 = !{!482, !483, !484}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !480, file: !308, line: 3093, baseType: !257, size: 64)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !480, file: !308, line: 3094, baseType: !90, size: 32, offset: 64)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !480, file: !308, line: 3095, baseType: !90, size: 32, offset: 96)
!485 = !{!486}
!486 = !DILocalVariable(name: "sem", arg: 1, scope: !476, file: !308, line: 3209, type: !479)
!487 = !DILocation(line: 3209, column: 65, scope: !476)
!488 = !DILocation(line: 3211, column: 9, scope: !476)
!489 = !DILocation(line: 3211, column: 14, scope: !476)
!490 = !DILocation(line: 3211, column: 2, scope: !476)
!491 = distinct !DISubprogram(name: "z_impl_k_msgq_num_free_get", scope: !308, file: !308, line: 4649, type: !492, scopeLine: 4650, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !508)
!492 = !DISubroutineType(types: !493)
!493 = !{!136, !494}
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 32)
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_msgq", file: !308, line: 4390, size: 320, elements: !496)
!496 = !{!497, !498, !499, !500, !501, !503, !504, !505, !506, !507}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !495, file: !308, line: 4392, baseType: !257, size: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !495, file: !308, line: 4394, baseType: !323, offset: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "msg_size", scope: !495, file: !308, line: 4396, baseType: !319, size: 32, offset: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !495, file: !308, line: 4398, baseType: !136, size: 32, offset: 96)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_start", scope: !495, file: !308, line: 4400, baseType: !502, size: 32, offset: 128)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 32)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_end", scope: !495, file: !308, line: 4402, baseType: !502, size: 32, offset: 160)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "read_ptr", scope: !495, file: !308, line: 4404, baseType: !502, size: 32, offset: 192)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "write_ptr", scope: !495, file: !308, line: 4406, baseType: !502, size: 32, offset: 224)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "used_msgs", scope: !495, file: !308, line: 4408, baseType: !136, size: 32, offset: 256)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !495, file: !308, line: 4413, baseType: !129, size: 8, offset: 288)
!508 = !{!509}
!509 = !DILocalVariable(name: "msgq", arg: 1, scope: !491, file: !308, line: 4649, type: !494)
!510 = !DILocation(line: 4649, column: 66, scope: !491)
!511 = !DILocation(line: 4651, column: 9, scope: !491)
!512 = !DILocation(line: 4651, column: 15, scope: !491)
!513 = !DILocation(line: 4651, column: 26, scope: !491)
!514 = !DILocation(line: 4651, column: 32, scope: !491)
!515 = !DILocation(line: 4651, column: 24, scope: !491)
!516 = !DILocation(line: 4651, column: 2, scope: !491)
!517 = distinct !DISubprogram(name: "z_impl_k_msgq_num_used_get", scope: !308, file: !308, line: 4665, type: !492, scopeLine: 4666, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !518)
!518 = !{!519}
!519 = !DILocalVariable(name: "msgq", arg: 1, scope: !517, file: !308, line: 4665, type: !494)
!520 = !DILocation(line: 4665, column: 66, scope: !517)
!521 = !DILocation(line: 4667, column: 9, scope: !517)
!522 = !DILocation(line: 4667, column: 15, scope: !517)
!523 = !DILocation(line: 4667, column: 2, scope: !517)
!524 = distinct !DISubprogram(name: "z_impl_device_is_ready", scope: !114, file: !114, line: 744, type: !525, scopeLine: 745, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !527)
!525 = !DISubroutineType(types: !526)
!526 = !{!132, !111}
!527 = !{!528}
!528 = !DILocalVariable(name: "dev", arg: 1, scope: !524, file: !114, line: 744, type: !111)
!529 = !DILocation(line: 744, column: 65, scope: !524)
!530 = !DILocation(line: 746, column: 27, scope: !524)
!531 = !DILocation(line: 746, column: 9, scope: !524)
!532 = !DILocation(line: 746, column: 2, scope: !524)
!533 = distinct !DISubprogram(name: "z_impl_gpio_pin_interrupt_configure", scope: !89, file: !89, line: 862, type: !109, scopeLine: 865, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !534)
!534 = !{!535, !536, !537, !538, !539, !541, !543, !544}
!535 = !DILocalVariable(name: "port", arg: 1, scope: !533, file: !89, line: 862, type: !111)
!536 = !DILocalVariable(name: "pin", arg: 2, scope: !533, file: !89, line: 863, type: !134)
!537 = !DILocalVariable(name: "flags", arg: 3, scope: !533, file: !89, line: 864, type: !135)
!538 = !DILocalVariable(name: "api", scope: !533, file: !89, line: 866, type: !103)
!539 = !DILocalVariable(name: "cfg", scope: !533, file: !89, line: 868, type: !540)
!540 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !182)
!541 = !DILocalVariable(name: "data", scope: !533, file: !89, line: 870, type: !542)
!542 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !187)
!543 = !DILocalVariable(name: "trig", scope: !533, file: !89, line: 872, type: !95)
!544 = !DILocalVariable(name: "mode", scope: !533, file: !89, line: 873, type: !88)
!545 = !DILocation(line: 862, column: 76, scope: !533)
!546 = !DILocation(line: 863, column: 24, scope: !533)
!547 = !DILocation(line: 864, column: 26, scope: !533)
!548 = !DILocation(line: 866, column: 2, scope: !533)
!549 = !DILocation(line: 866, column: 32, scope: !533)
!550 = !DILocation(line: 867, column: 35, scope: !533)
!551 = !DILocation(line: 867, column: 41, scope: !533)
!552 = !DILocation(line: 868, column: 2, scope: !533)
!553 = !DILocation(line: 868, column: 69, scope: !533)
!554 = !DILocation(line: 869, column: 38, scope: !533)
!555 = !DILocation(line: 869, column: 44, scope: !533)
!556 = !DILocation(line: 870, column: 2, scope: !533)
!557 = !DILocation(line: 870, column: 39, scope: !533)
!558 = !DILocation(line: 871, column: 36, scope: !533)
!559 = !DILocation(line: 871, column: 42, scope: !533)
!560 = !DILocation(line: 872, column: 2, scope: !533)
!561 = !DILocation(line: 872, column: 21, scope: !533)
!562 = !DILocation(line: 873, column: 2, scope: !533)
!563 = !DILocation(line: 873, column: 21, scope: !533)
!564 = !DILocation(line: 875, column: 6, scope: !565)
!565 = distinct !DILexicalBlock(scope: !533, file: !89, line: 875, column: 6)
!566 = !DILocation(line: 875, column: 11, scope: !565)
!567 = !DILocation(line: 875, column: 35, scope: !565)
!568 = !DILocation(line: 875, column: 6, scope: !533)
!569 = !DILocation(line: 876, column: 3, scope: !570)
!570 = distinct !DILexicalBlock(scope: !565, file: !89, line: 875, column: 50)
!571 = !DILocation(line: 906, column: 8, scope: !572)
!572 = distinct !DILexicalBlock(scope: !533, file: !89, line: 906, column: 6)
!573 = !DILocation(line: 906, column: 14, scope: !572)
!574 = !DILocation(line: 906, column: 28, scope: !572)
!575 = !DILocation(line: 906, column: 34, scope: !572)
!576 = !DILocation(line: 907, column: 8, scope: !572)
!577 = !DILocation(line: 907, column: 14, scope: !572)
!578 = !DILocation(line: 907, column: 50, scope: !572)
!579 = !DILocation(line: 907, column: 49, scope: !572)
!580 = !DILocation(line: 907, column: 46, scope: !572)
!581 = !DILocation(line: 907, column: 21, scope: !572)
!582 = !DILocation(line: 907, column: 57, scope: !572)
!583 = !DILocation(line: 906, column: 6, scope: !533)
!584 = !DILocation(line: 909, column: 9, scope: !585)
!585 = distinct !DILexicalBlock(scope: !572, file: !89, line: 907, column: 64)
!586 = !DILocation(line: 910, column: 2, scope: !585)
!587 = !DILocation(line: 912, column: 30, scope: !533)
!588 = !DILocation(line: 912, column: 36, scope: !533)
!589 = !DILocation(line: 912, column: 7, scope: !533)
!590 = !DILocation(line: 917, column: 30, scope: !533)
!591 = !DILocation(line: 917, column: 36, scope: !533)
!592 = !DILocation(line: 917, column: 7, scope: !533)
!593 = !DILocation(line: 920, column: 9, scope: !533)
!594 = !DILocation(line: 920, column: 14, scope: !533)
!595 = !DILocation(line: 920, column: 38, scope: !533)
!596 = !DILocation(line: 920, column: 44, scope: !533)
!597 = !DILocation(line: 920, column: 49, scope: !533)
!598 = !DILocation(line: 920, column: 55, scope: !533)
!599 = !DILocation(line: 920, column: 2, scope: !533)
!600 = !DILocation(line: 921, column: 1, scope: !533)
!601 = distinct !DISubprogram(name: "z_impl_gpio_pin_configure", scope: !89, file: !89, line: 961, type: !109, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !602)
!602 = !{!603, !604, !605, !606, !607, !608}
!603 = !DILocalVariable(name: "port", arg: 1, scope: !601, file: !89, line: 961, type: !111)
!604 = !DILocalVariable(name: "pin", arg: 2, scope: !601, file: !89, line: 962, type: !134)
!605 = !DILocalVariable(name: "flags", arg: 3, scope: !601, file: !89, line: 963, type: !135)
!606 = !DILocalVariable(name: "api", scope: !601, file: !89, line: 965, type: !103)
!607 = !DILocalVariable(name: "cfg", scope: !601, file: !89, line: 967, type: !540)
!608 = !DILocalVariable(name: "data", scope: !601, file: !89, line: 969, type: !192)
!609 = !DILocation(line: 961, column: 66, scope: !601)
!610 = !DILocation(line: 962, column: 21, scope: !601)
!611 = !DILocation(line: 963, column: 23, scope: !601)
!612 = !DILocation(line: 965, column: 2, scope: !601)
!613 = !DILocation(line: 965, column: 32, scope: !601)
!614 = !DILocation(line: 966, column: 35, scope: !601)
!615 = !DILocation(line: 966, column: 41, scope: !601)
!616 = !DILocation(line: 967, column: 2, scope: !601)
!617 = !DILocation(line: 967, column: 69, scope: !601)
!618 = !DILocation(line: 968, column: 38, scope: !601)
!619 = !DILocation(line: 968, column: 44, scope: !601)
!620 = !DILocation(line: 969, column: 2, scope: !601)
!621 = !DILocation(line: 969, column: 27, scope: !601)
!622 = !DILocation(line: 970, column: 30, scope: !601)
!623 = !DILocation(line: 970, column: 36, scope: !601)
!624 = !DILocation(line: 993, column: 8, scope: !625)
!625 = distinct !DILexicalBlock(scope: !601, file: !89, line: 993, column: 6)
!626 = !DILocation(line: 993, column: 14, scope: !625)
!627 = !DILocation(line: 993, column: 28, scope: !625)
!628 = !DILocation(line: 994, column: 6, scope: !625)
!629 = !DILocation(line: 994, column: 11, scope: !625)
!630 = !DILocation(line: 994, column: 17, scope: !625)
!631 = !DILocation(line: 994, column: 46, scope: !625)
!632 = !DILocation(line: 995, column: 6, scope: !625)
!633 = !DILocation(line: 995, column: 11, scope: !625)
!634 = !DILocation(line: 995, column: 17, scope: !625)
!635 = !DILocation(line: 995, column: 29, scope: !625)
!636 = !DILocation(line: 993, column: 6, scope: !601)
!637 = !DILocation(line: 996, column: 9, scope: !638)
!638 = distinct !DILexicalBlock(scope: !625, file: !89, line: 995, column: 36)
!639 = !DILocation(line: 997, column: 2, scope: !638)
!640 = !DILocation(line: 999, column: 8, scope: !601)
!641 = !DILocation(line: 1004, column: 7, scope: !642)
!642 = distinct !DILexicalBlock(scope: !601, file: !89, line: 1004, column: 6)
!643 = !DILocation(line: 1004, column: 13, scope: !642)
!644 = !DILocation(line: 1004, column: 25, scope: !642)
!645 = !DILocation(line: 1004, column: 6, scope: !601)
!646 = !DILocation(line: 1005, column: 46, scope: !647)
!647 = distinct !DILexicalBlock(scope: !642, file: !89, line: 1004, column: 31)
!648 = !DILocation(line: 1005, column: 45, scope: !647)
!649 = !DILocation(line: 1005, column: 42, scope: !647)
!650 = !DILocation(line: 1005, column: 3, scope: !647)
!651 = !DILocation(line: 1005, column: 9, scope: !647)
!652 = !DILocation(line: 1005, column: 16, scope: !647)
!653 = !DILocation(line: 1006, column: 2, scope: !647)
!654 = !DILocation(line: 1007, column: 47, scope: !655)
!655 = distinct !DILexicalBlock(scope: !642, file: !89, line: 1006, column: 9)
!656 = !DILocation(line: 1007, column: 46, scope: !655)
!657 = !DILocation(line: 1007, column: 43, scope: !655)
!658 = !DILocation(line: 1007, column: 19, scope: !655)
!659 = !DILocation(line: 1007, column: 3, scope: !655)
!660 = !DILocation(line: 1007, column: 9, scope: !655)
!661 = !DILocation(line: 1007, column: 16, scope: !655)
!662 = !DILocation(line: 1010, column: 9, scope: !601)
!663 = !DILocation(line: 1010, column: 14, scope: !601)
!664 = !DILocation(line: 1010, column: 28, scope: !601)
!665 = !DILocation(line: 1010, column: 34, scope: !601)
!666 = !DILocation(line: 1010, column: 39, scope: !601)
!667 = !DILocation(line: 1011, column: 1, scope: !601)
!668 = !DILocation(line: 1010, column: 2, scope: !601)
!669 = distinct !DISubprogram(name: "z_impl_gpio_port_get_raw", scope: !89, file: !89, line: 1229, type: !139, scopeLine: 1231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !670)
!670 = !{!671, !672, !673}
!671 = !DILocalVariable(name: "port", arg: 1, scope: !669, file: !89, line: 1229, type: !111)
!672 = !DILocalVariable(name: "value", arg: 2, scope: !669, file: !89, line: 1230, type: !141)
!673 = !DILocalVariable(name: "api", scope: !669, file: !89, line: 1232, type: !103)
!674 = !DILocation(line: 1229, column: 65, scope: !669)
!675 = !DILocation(line: 1230, column: 28, scope: !669)
!676 = !DILocation(line: 1232, column: 2, scope: !669)
!677 = !DILocation(line: 1232, column: 32, scope: !669)
!678 = !DILocation(line: 1233, column: 35, scope: !669)
!679 = !DILocation(line: 1233, column: 41, scope: !669)
!680 = !DILocation(line: 1235, column: 9, scope: !669)
!681 = !DILocation(line: 1235, column: 14, scope: !669)
!682 = !DILocation(line: 1235, column: 27, scope: !669)
!683 = !DILocation(line: 1235, column: 33, scope: !669)
!684 = !DILocation(line: 1236, column: 1, scope: !669)
!685 = !DILocation(line: 1235, column: 2, scope: !669)
!686 = distinct !DISubprogram(name: "z_impl_gpio_port_set_masked_raw", scope: !89, file: !89, line: 1292, type: !145, scopeLine: 1295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !687)
!687 = !{!688, !689, !690, !691}
!688 = !DILocalVariable(name: "port", arg: 1, scope: !686, file: !89, line: 1292, type: !111)
!689 = !DILocalVariable(name: "mask", arg: 2, scope: !686, file: !89, line: 1293, type: !147)
!690 = !DILocalVariable(name: "value", arg: 3, scope: !686, file: !89, line: 1294, type: !142)
!691 = !DILocalVariable(name: "api", scope: !686, file: !89, line: 1296, type: !103)
!692 = !DILocation(line: 1292, column: 72, scope: !686)
!693 = !DILocation(line: 1293, column: 26, scope: !686)
!694 = !DILocation(line: 1294, column: 27, scope: !686)
!695 = !DILocation(line: 1296, column: 2, scope: !686)
!696 = !DILocation(line: 1296, column: 32, scope: !686)
!697 = !DILocation(line: 1297, column: 35, scope: !686)
!698 = !DILocation(line: 1297, column: 41, scope: !686)
!699 = !DILocation(line: 1299, column: 9, scope: !686)
!700 = !DILocation(line: 1299, column: 14, scope: !686)
!701 = !DILocation(line: 1299, column: 34, scope: !686)
!702 = !DILocation(line: 1299, column: 40, scope: !686)
!703 = !DILocation(line: 1299, column: 46, scope: !686)
!704 = !DILocation(line: 1300, column: 1, scope: !686)
!705 = !DILocation(line: 1299, column: 2, scope: !686)
!706 = distinct !DISubprogram(name: "z_impl_gpio_port_set_bits_raw", scope: !89, file: !89, line: 1347, type: !150, scopeLine: 1349, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !707)
!707 = !{!708, !709, !710}
!708 = !DILocalVariable(name: "port", arg: 1, scope: !706, file: !89, line: 1347, type: !111)
!709 = !DILocalVariable(name: "pins", arg: 2, scope: !706, file: !89, line: 1348, type: !147)
!710 = !DILocalVariable(name: "api", scope: !706, file: !89, line: 1350, type: !103)
!711 = !DILocation(line: 1347, column: 70, scope: !706)
!712 = !DILocation(line: 1348, column: 24, scope: !706)
!713 = !DILocation(line: 1350, column: 2, scope: !706)
!714 = !DILocation(line: 1350, column: 32, scope: !706)
!715 = !DILocation(line: 1351, column: 35, scope: !706)
!716 = !DILocation(line: 1351, column: 41, scope: !706)
!717 = !DILocation(line: 1353, column: 9, scope: !706)
!718 = !DILocation(line: 1353, column: 14, scope: !706)
!719 = !DILocation(line: 1353, column: 32, scope: !706)
!720 = !DILocation(line: 1353, column: 38, scope: !706)
!721 = !DILocation(line: 1354, column: 1, scope: !706)
!722 = !DILocation(line: 1353, column: 2, scope: !706)
!723 = distinct !DISubprogram(name: "z_impl_gpio_port_clear_bits_raw", scope: !89, file: !89, line: 1385, type: !150, scopeLine: 1387, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !724)
!724 = !{!725, !726, !727}
!725 = !DILocalVariable(name: "port", arg: 1, scope: !723, file: !89, line: 1385, type: !111)
!726 = !DILocalVariable(name: "pins", arg: 2, scope: !723, file: !89, line: 1386, type: !147)
!727 = !DILocalVariable(name: "api", scope: !723, file: !89, line: 1388, type: !103)
!728 = !DILocation(line: 1385, column: 72, scope: !723)
!729 = !DILocation(line: 1386, column: 26, scope: !723)
!730 = !DILocation(line: 1388, column: 2, scope: !723)
!731 = !DILocation(line: 1388, column: 32, scope: !723)
!732 = !DILocation(line: 1389, column: 35, scope: !723)
!733 = !DILocation(line: 1389, column: 41, scope: !723)
!734 = !DILocation(line: 1391, column: 9, scope: !723)
!735 = !DILocation(line: 1391, column: 14, scope: !723)
!736 = !DILocation(line: 1391, column: 34, scope: !723)
!737 = !DILocation(line: 1391, column: 40, scope: !723)
!738 = !DILocation(line: 1392, column: 1, scope: !723)
!739 = !DILocation(line: 1391, column: 2, scope: !723)
!740 = distinct !DISubprogram(name: "z_impl_gpio_port_toggle_bits", scope: !89, file: !89, line: 1423, type: !150, scopeLine: 1425, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !741)
!741 = !{!742, !743, !744}
!742 = !DILocalVariable(name: "port", arg: 1, scope: !740, file: !89, line: 1423, type: !111)
!743 = !DILocalVariable(name: "pins", arg: 2, scope: !740, file: !89, line: 1424, type: !147)
!744 = !DILocalVariable(name: "api", scope: !740, file: !89, line: 1426, type: !103)
!745 = !DILocation(line: 1423, column: 69, scope: !740)
!746 = !DILocation(line: 1424, column: 30, scope: !740)
!747 = !DILocation(line: 1426, column: 2, scope: !740)
!748 = !DILocation(line: 1426, column: 32, scope: !740)
!749 = !DILocation(line: 1427, column: 35, scope: !740)
!750 = !DILocation(line: 1427, column: 41, scope: !740)
!751 = !DILocation(line: 1429, column: 9, scope: !740)
!752 = !DILocation(line: 1429, column: 14, scope: !740)
!753 = !DILocation(line: 1429, column: 31, scope: !740)
!754 = !DILocation(line: 1429, column: 37, scope: !740)
!755 = !DILocation(line: 1430, column: 1, scope: !740)
!756 = !DILocation(line: 1429, column: 2, scope: !740)
!757 = distinct !DISubprogram(name: "z_impl_gpio_get_pending_int", scope: !89, file: !89, line: 1807, type: !758, scopeLine: 1808, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !760)
!758 = !DISubroutineType(types: !759)
!759 = !{!102, !111}
!760 = !{!761, !762}
!761 = !DILocalVariable(name: "dev", arg: 1, scope: !757, file: !89, line: 1807, type: !111)
!762 = !DILocalVariable(name: "api", scope: !757, file: !89, line: 1809, type: !103)
!763 = !DILocation(line: 1807, column: 68, scope: !757)
!764 = !DILocation(line: 1809, column: 2, scope: !757)
!765 = !DILocation(line: 1809, column: 32, scope: !757)
!766 = !DILocation(line: 1810, column: 35, scope: !757)
!767 = !DILocation(line: 1810, column: 40, scope: !757)
!768 = !DILocation(line: 1812, column: 6, scope: !769)
!769 = distinct !DILexicalBlock(scope: !757, file: !89, line: 1812, column: 6)
!770 = !DILocation(line: 1812, column: 11, scope: !769)
!771 = !DILocation(line: 1812, column: 27, scope: !769)
!772 = !DILocation(line: 1812, column: 6, scope: !757)
!773 = !DILocation(line: 1813, column: 3, scope: !774)
!774 = distinct !DILexicalBlock(scope: !769, file: !89, line: 1812, column: 42)
!775 = !DILocation(line: 1816, column: 9, scope: !757)
!776 = !DILocation(line: 1816, column: 14, scope: !757)
!777 = !DILocation(line: 1816, column: 30, scope: !757)
!778 = !DILocation(line: 1816, column: 2, scope: !757)
!779 = !DILocation(line: 1817, column: 1, scope: !757)
!780 = distinct !DISubprogram(name: "main", scope: !200, file: !200, line: 22, type: !781, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !783)
!781 = !DISubroutineType(types: !782)
!782 = !{!102}
!783 = !{!784}
!784 = !DILocalVariable(name: "ret", scope: !780, file: !200, line: 24, type: !102)
!785 = !DILocation(line: 24, column: 2, scope: !780)
!786 = !DILocation(line: 24, column: 6, scope: !780)
!787 = !DILocation(line: 26, column: 7, scope: !788)
!788 = distinct !DILexicalBlock(scope: !780, file: !200, line: 26, column: 6)
!789 = !DILocation(line: 26, column: 6, scope: !780)
!790 = !DILocation(line: 27, column: 3, scope: !791)
!791 = distinct !DILexicalBlock(scope: !788, file: !200, line: 26, column: 31)
!792 = !DILocation(line: 30, column: 8, scope: !780)
!793 = !DILocation(line: 30, column: 6, scope: !780)
!794 = !DILocation(line: 31, column: 6, scope: !795)
!795 = distinct !DILexicalBlock(scope: !780, file: !200, line: 31, column: 6)
!796 = !DILocation(line: 31, column: 10, scope: !795)
!797 = !DILocation(line: 31, column: 6, scope: !780)
!798 = !DILocation(line: 32, column: 3, scope: !799)
!799 = distinct !DILexicalBlock(scope: !795, file: !200, line: 31, column: 15)
!800 = !DILocation(line: 35, column: 2, scope: !780)
!801 = !DILocation(line: 36, column: 9, scope: !802)
!802 = distinct !DILexicalBlock(scope: !780, file: !200, line: 35, column: 12)
!803 = !DILocation(line: 36, column: 7, scope: !802)
!804 = !DILocation(line: 37, column: 7, scope: !805)
!805 = distinct !DILexicalBlock(scope: !802, file: !200, line: 37, column: 7)
!806 = !DILocation(line: 37, column: 11, scope: !805)
!807 = !DILocation(line: 37, column: 7, scope: !802)
!808 = !DILocation(line: 38, column: 4, scope: !809)
!809 = distinct !DILexicalBlock(scope: !805, file: !200, line: 37, column: 16)
!810 = !DILocation(line: 40, column: 3, scope: !802)
!811 = distinct !{!811, !800, !812}
!812 = !DILocation(line: 41, column: 2, scope: !780)
!813 = !DILocation(line: 43, column: 1, scope: !780)
!814 = distinct !DISubprogram(name: "gpio_is_ready_dt", scope: !89, file: !89, line: 831, type: !815, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !818)
!815 = !DISubroutineType(types: !816)
!816 = !{!132, !817}
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 32)
!818 = !{!819}
!819 = !DILocalVariable(name: "spec", arg: 1, scope: !814, file: !89, line: 831, type: !817)
!820 = !DILocation(line: 831, column: 65, scope: !814)
!821 = !DILocation(line: 834, column: 25, scope: !814)
!822 = !DILocation(line: 834, column: 31, scope: !814)
!823 = !DILocation(line: 834, column: 9, scope: !814)
!824 = !DILocation(line: 834, column: 2, scope: !814)
!825 = distinct !DISubprogram(name: "gpio_pin_configure_dt", scope: !89, file: !89, line: 1024, type: !826, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !828)
!826 = !DISubroutineType(types: !827)
!827 = !{!102, !817, !135}
!828 = !{!829, !830}
!829 = !DILocalVariable(name: "spec", arg: 1, scope: !825, file: !89, line: 1024, type: !817)
!830 = !DILocalVariable(name: "extra_flags", arg: 2, scope: !825, file: !89, line: 1025, type: !135)
!831 = !DILocation(line: 1024, column: 68, scope: !825)
!832 = !DILocation(line: 1025, column: 19, scope: !825)
!833 = !DILocation(line: 1027, column: 28, scope: !825)
!834 = !DILocation(line: 1027, column: 34, scope: !825)
!835 = !DILocation(line: 1028, column: 7, scope: !825)
!836 = !DILocation(line: 1028, column: 13, scope: !825)
!837 = !DILocation(line: 1029, column: 7, scope: !825)
!838 = !DILocation(line: 1029, column: 13, scope: !825)
!839 = !DILocation(line: 1029, column: 24, scope: !825)
!840 = !DILocation(line: 1029, column: 22, scope: !825)
!841 = !DILocation(line: 1027, column: 9, scope: !825)
!842 = !DILocation(line: 1027, column: 2, scope: !825)
!843 = distinct !DISubprogram(name: "gpio_pin_toggle_dt", scope: !89, file: !89, line: 1677, type: !844, scopeLine: 1678, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !846)
!844 = !DISubroutineType(types: !845)
!845 = !{!102, !817}
!846 = !{!847}
!847 = !DILocalVariable(name: "spec", arg: 1, scope: !843, file: !89, line: 1677, type: !817)
!848 = !DILocation(line: 1677, column: 65, scope: !843)
!849 = !DILocation(line: 1679, column: 25, scope: !843)
!850 = !DILocation(line: 1679, column: 31, scope: !843)
!851 = !DILocation(line: 1679, column: 37, scope: !843)
!852 = !DILocation(line: 1679, column: 43, scope: !843)
!853 = !DILocation(line: 1679, column: 9, scope: !843)
!854 = !DILocation(line: 1679, column: 2, scope: !843)
!855 = distinct !DISubprogram(name: "k_msleep", scope: !308, file: !308, line: 501, type: !856, scopeLine: 502, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !859)
!856 = !DISubroutineType(types: !857)
!857 = !{!858, !858}
!858 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !130, line: 58, baseType: !102)
!859 = !{!860}
!860 = !DILocalVariable(name: "ms", arg: 1, scope: !855, file: !308, line: 501, type: !858)
!861 = !DILocation(line: 501, column: 40, scope: !855)
!862 = !DILocation(line: 503, column: 32, scope: !855)
!863 = !DILocation(line: 503, column: 372, scope: !855)
!864 = !DILocation(line: 503, column: 376, scope: !855)
!865 = !DILocation(line: 503, column: 370, scope: !855)
!866 = !DILocation(line: 503, column: 386, scope: !855)
!867 = !DILocation(line: 503, column: 357, scope: !855)
!868 = !DILocation(line: 503, column: 397, scope: !855)
!869 = !DILocation(line: 503, column: 9, scope: !855)
!870 = !DILocation(line: 503, column: 2, scope: !855)
!871 = !DISubprogram(name: "z_timeout_expires", scope: !308, file: !308, line: 642, type: !872, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !325)
!872 = !DISubroutineType(types: !873)
!873 = !{!193, !874}
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 32)
!875 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !279)
!876 = !DISubprogram(name: "z_timeout_remaining", scope: !308, file: !308, line: 643, type: !872, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !325)
!877 = distinct !DISubprogram(name: "sys_sflist_is_empty", scope: !455, file: !455, line: 335, type: !878, scopeLine: 335, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !881)
!878 = !DISubroutineType(types: !879)
!879 = !{!132, !880}
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 32)
!881 = !{!882}
!882 = !DILocalVariable(name: "list", arg: 1, scope: !877, file: !455, line: 335, type: !880)
!883 = !DILocation(line: 335, column: 55, scope: !877)
!884 = !DILocation(line: 335, column: 92, scope: !877)
!885 = !DILocation(line: 335, column: 71, scope: !877)
!886 = !DILocation(line: 335, column: 98, scope: !877)
!887 = !DILocation(line: 335, column: 63, scope: !877)
!888 = distinct !DISubprogram(name: "sys_sflist_peek_head", scope: !455, file: !455, line: 255, type: !889, scopeLine: 256, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !891)
!889 = !DISubroutineType(types: !890)
!890 = !{!459, !880}
!891 = !{!892}
!892 = !DILocalVariable(name: "list", arg: 1, scope: !888, file: !455, line: 255, type: !880)
!893 = !DILocation(line: 255, column: 64, scope: !888)
!894 = !DILocation(line: 257, column: 9, scope: !888)
!895 = !DILocation(line: 257, column: 15, scope: !888)
!896 = !DILocation(line: 257, column: 2, scope: !888)
!897 = !DISubprogram(name: "z_device_is_ready", scope: !114, file: !114, line: 724, type: !525, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !325)
!898 = distinct !DISubprogram(name: "device_is_ready", scope: !899, file: !899, line: 49, type: !525, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !900)
!899 = !DIFile(filename: "zephyr/include/generated/syscalls/device.h", directory: "/home/sri/zephyrproject/zephyr/build")
!900 = !{!901}
!901 = !DILocalVariable(name: "dev", arg: 1, scope: !898, file: !899, line: 49, type: !111)
!902 = !DILocation(line: 49, column: 59, scope: !898)
!903 = !DILocation(line: 57, column: 2, scope: !898)
!904 = !DILocation(line: 57, column: 7, scope: !905)
!905 = distinct !DILexicalBlock(scope: !898, file: !899, line: 57, column: 5)
!906 = !{i64 172865}
!907 = !DILocation(line: 57, column: 47, scope: !905)
!908 = !DILocation(line: 58, column: 32, scope: !898)
!909 = !DILocation(line: 58, column: 9, scope: !898)
!910 = !DILocation(line: 58, column: 2, scope: !898)
!911 = distinct !DISubprogram(name: "gpio_pin_configure", scope: !912, file: !912, line: 51, type: !109, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !913)
!912 = !DIFile(filename: "zephyr/include/generated/syscalls/gpio.h", directory: "/home/sri/zephyrproject/zephyr/build")
!913 = !{!914, !915, !916}
!914 = !DILocalVariable(name: "port", arg: 1, scope: !911, file: !912, line: 51, type: !111)
!915 = !DILocalVariable(name: "pin", arg: 2, scope: !911, file: !912, line: 51, type: !134)
!916 = !DILocalVariable(name: "flags", arg: 3, scope: !911, file: !912, line: 51, type: !135)
!917 = !DILocation(line: 51, column: 60, scope: !911)
!918 = !DILocation(line: 51, column: 77, scope: !911)
!919 = !DILocation(line: 51, column: 95, scope: !911)
!920 = !DILocation(line: 61, column: 2, scope: !911)
!921 = !DILocation(line: 61, column: 7, scope: !922)
!922 = distinct !DILexicalBlock(scope: !911, file: !912, line: 61, column: 5)
!923 = !{i64 190305}
!924 = !DILocation(line: 61, column: 47, scope: !922)
!925 = !DILocation(line: 62, column: 35, scope: !911)
!926 = !DILocation(line: 62, column: 41, scope: !911)
!927 = !DILocation(line: 62, column: 46, scope: !911)
!928 = !DILocation(line: 62, column: 9, scope: !911)
!929 = !DILocation(line: 62, column: 2, scope: !911)
!930 = distinct !DISubprogram(name: "gpio_pin_toggle", scope: !89, file: !89, line: 1656, type: !931, scopeLine: 1657, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !933)
!931 = !DISubroutineType(types: !932)
!932 = !{!102, !111, !134}
!933 = !{!934, !935, !936}
!934 = !DILocalVariable(name: "port", arg: 1, scope: !930, file: !89, line: 1656, type: !111)
!935 = !DILocalVariable(name: "pin", arg: 2, scope: !930, file: !89, line: 1656, type: !134)
!936 = !DILocalVariable(name: "cfg", scope: !930, file: !89, line: 1658, type: !540)
!937 = !DILocation(line: 1656, column: 56, scope: !930)
!938 = !DILocation(line: 1656, column: 73, scope: !930)
!939 = !DILocation(line: 1658, column: 2, scope: !930)
!940 = !DILocation(line: 1658, column: 69, scope: !930)
!941 = !DILocation(line: 1659, column: 38, scope: !930)
!942 = !DILocation(line: 1659, column: 44, scope: !930)
!943 = !DILocation(line: 1664, column: 31, scope: !930)
!944 = !DILocation(line: 1664, column: 64, scope: !930)
!945 = !DILocation(line: 1664, column: 63, scope: !930)
!946 = !DILocation(line: 1664, column: 60, scope: !930)
!947 = !DILocation(line: 1664, column: 9, scope: !930)
!948 = !DILocation(line: 1665, column: 1, scope: !930)
!949 = !DILocation(line: 1664, column: 2, scope: !930)
!950 = distinct !DISubprogram(name: "gpio_port_toggle_bits", scope: !912, file: !912, line: 224, type: !150, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !951)
!951 = !{!952, !953}
!952 = !DILocalVariable(name: "port", arg: 1, scope: !950, file: !912, line: 224, type: !111)
!953 = !DILocalVariable(name: "pins", arg: 2, scope: !950, file: !912, line: 224, type: !147)
!954 = !DILocation(line: 224, column: 63, scope: !950)
!955 = !DILocation(line: 224, column: 86, scope: !950)
!956 = !DILocation(line: 233, column: 2, scope: !950)
!957 = !DILocation(line: 233, column: 7, scope: !958)
!958 = distinct !DILexicalBlock(scope: !950, file: !912, line: 233, column: 5)
!959 = !{i64 193514}
!960 = !DILocation(line: 233, column: 47, scope: !958)
!961 = !DILocation(line: 234, column: 38, scope: !950)
!962 = !DILocation(line: 234, column: 44, scope: !950)
!963 = !DILocation(line: 234, column: 9, scope: !950)
!964 = !DILocation(line: 234, column: 2, scope: !950)
!965 = distinct !DISubprogram(name: "k_sleep", scope: !966, file: !966, line: 126, type: !967, scopeLine: 127, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !969)
!966 = !DIFile(filename: "zephyr/include/generated/syscalls/kernel.h", directory: "/home/sri/zephyrproject/zephyr/build")
!967 = !DISubroutineType(types: !968)
!968 = !{!858, !404}
!969 = !{!970}
!970 = !DILocalVariable(name: "timeout", arg: 1, scope: !965, file: !966, line: 126, type: !404)
!971 = !DILocation(line: 126, column: 43, scope: !965)
!972 = !DILocation(line: 134, column: 2, scope: !965)
!973 = !DILocation(line: 134, column: 7, scope: !974)
!974 = distinct !DILexicalBlock(scope: !965, file: !966, line: 134, column: 5)
!975 = !{i64 134173}
!976 = !DILocation(line: 134, column: 47, scope: !974)
!977 = !DILocation(line: 135, column: 9, scope: !965)
!978 = !DILocation(line: 135, column: 2, scope: !965)
!979 = !DISubprogram(name: "z_impl_k_sleep", scope: !966, file: !966, line: 123, type: !967, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !325)
