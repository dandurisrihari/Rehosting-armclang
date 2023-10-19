; ModuleID = '../bc_files/uart_console.bc'
source_filename = "/home/sri/zephyrproject/zephyr/drivers/console/uart_console.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-arm-none-eabi"

%struct.init_entry = type { %union.init_function, ptr }
%union.init_function = type { ptr }
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
%struct.uart_driver_api = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__init_uart_console_init = internal constant %struct.init_entry { %union.init_function { ptr @uart_console_init }, ptr null }, section ".z_init_PRE_KERNEL_160_0_", align 4, !dbg !0
@__device_dts_ord_52 = external dso_local constant %struct.device, align 4
@llvm.used = appending global [1 x ptr] [ptr @__init_uart_console_init], section "llvm.metadata"

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_k_object_access_grant(ptr noundef %0, ptr noundef %1) #0 !dbg !211 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !330, metadata !DIExpression()), !dbg !332
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !331, metadata !DIExpression()), !dbg !333
  %5 = load ptr, ptr %3, align 4, !dbg !334
  %6 = load ptr, ptr %4, align 4, !dbg !335
  ret void, !dbg !336
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_k_object_release(ptr noundef %0) #0 !dbg !337 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !341, metadata !DIExpression()), !dbg !342
  %3 = load ptr, ptr %2, align 4, !dbg !343
  ret void, !dbg !344
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_impl_k_object_alloc(i8 noundef zeroext %0) #0 !dbg !345 {
  %2 = alloca i8, align 1
  store i8 %0, ptr %2, align 1
  call void @llvm.dbg.declare(metadata ptr %2, metadata !349, metadata !DIExpression()), !dbg !350
  %3 = load i8, ptr %2, align 1, !dbg !351
  ret ptr null, !dbg !352
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_impl_k_object_alloc_size(i8 noundef zeroext %0, i32 noundef %1) #0 !dbg !353 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8 %0, ptr %3, align 1
  call void @llvm.dbg.declare(metadata ptr %3, metadata !357, metadata !DIExpression()), !dbg !359
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !358, metadata !DIExpression()), !dbg !360
  %5 = load i8, ptr %3, align 1, !dbg !361
  %6 = load i32, ptr %4, align 4, !dbg !362
  ret ptr null, !dbg !363
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_thread_timeout_expires_ticks(ptr noundef %0) #0 !dbg !364 {
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
define internal i32 @z_impl_uart_err_check(ptr noundef %0) #0 !dbg !533 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !535, metadata !DIExpression()), !dbg !537
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #6, !dbg !538
  call void @llvm.dbg.declare(metadata ptr %4, metadata !536, metadata !DIExpression()), !dbg !539
  %6 = load ptr, ptr %3, align 4, !dbg !540
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 2, !dbg !541
  %8 = load ptr, ptr %7, align 4, !dbg !541
  store ptr %8, ptr %4, align 4, !dbg !539
  %9 = load ptr, ptr %4, align 4, !dbg !542
  %10 = getelementptr inbounds %struct.uart_driver_api, ptr %9, i32 0, i32 2, !dbg !544
  %11 = load ptr, ptr %10, align 4, !dbg !544
  %12 = icmp eq ptr %11, null, !dbg !545
  br i1 %12, label %13, label %14, !dbg !546

13:                                               ; preds = %1
  store i32 -88, ptr %2, align 4, !dbg !547
  store i32 1, ptr %5, align 4
  br label %20, !dbg !547

14:                                               ; preds = %1
  %15 = load ptr, ptr %4, align 4, !dbg !549
  %16 = getelementptr inbounds %struct.uart_driver_api, ptr %15, i32 0, i32 2, !dbg !550
  %17 = load ptr, ptr %16, align 4, !dbg !550
  %18 = load ptr, ptr %3, align 4, !dbg !551
  %19 = call i32 %17(ptr noundef %18) #5, !dbg !549
  store i32 %19, ptr %2, align 4, !dbg !552
  store i32 1, ptr %5, align 4
  br label %20, !dbg !552

20:                                               ; preds = %14, %13
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #6, !dbg !553
  %21 = load i32, ptr %2, align 4, !dbg !553
  ret i32 %21, !dbg !553
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_uart_poll_in(ptr noundef %0, ptr noundef %1) #0 !dbg !554 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !556, metadata !DIExpression()), !dbg !559
  store ptr %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !557, metadata !DIExpression()), !dbg !560
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #6, !dbg !561
  call void @llvm.dbg.declare(metadata ptr %6, metadata !558, metadata !DIExpression()), !dbg !562
  %8 = load ptr, ptr %4, align 4, !dbg !563
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 2, !dbg !564
  %10 = load ptr, ptr %9, align 4, !dbg !564
  store ptr %10, ptr %6, align 4, !dbg !562
  %11 = load ptr, ptr %6, align 4, !dbg !565
  %12 = getelementptr inbounds %struct.uart_driver_api, ptr %11, i32 0, i32 0, !dbg !567
  %13 = load ptr, ptr %12, align 4, !dbg !567
  %14 = icmp eq ptr %13, null, !dbg !568
  br i1 %14, label %15, label %16, !dbg !569

15:                                               ; preds = %2
  store i32 -88, ptr %3, align 4, !dbg !570
  store i32 1, ptr %7, align 4
  br label %23, !dbg !570

16:                                               ; preds = %2
  %17 = load ptr, ptr %6, align 4, !dbg !572
  %18 = getelementptr inbounds %struct.uart_driver_api, ptr %17, i32 0, i32 0, !dbg !573
  %19 = load ptr, ptr %18, align 4, !dbg !573
  %20 = load ptr, ptr %4, align 4, !dbg !574
  %21 = load ptr, ptr %5, align 4, !dbg !575
  %22 = call i32 %19(ptr noundef %20, ptr noundef %21) #5, !dbg !572
  store i32 %22, ptr %3, align 4, !dbg !576
  store i32 1, ptr %7, align 4
  br label %23, !dbg !576

23:                                               ; preds = %16, %15
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #6, !dbg !577
  %24 = load i32, ptr %3, align 4, !dbg !577
  ret i32 %24, !dbg !577
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_uart_poll_in_u16(ptr noundef %0, ptr noundef %1) #0 !dbg !578 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !583, metadata !DIExpression()), !dbg !585
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !584, metadata !DIExpression()), !dbg !586
  %5 = load ptr, ptr %3, align 4, !dbg !587
  %6 = load ptr, ptr %4, align 4, !dbg !588
  ret i32 -134, !dbg !589
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_uart_poll_out(ptr noundef %0, i8 noundef zeroext %1) #0 !dbg !590 {
  %3 = alloca ptr, align 4
  %4 = alloca i8, align 1
  %5 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !592, metadata !DIExpression()), !dbg !595
  store i8 %1, ptr %4, align 1
  call void @llvm.dbg.declare(metadata ptr %4, metadata !593, metadata !DIExpression()), !dbg !596
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #6, !dbg !597
  call void @llvm.dbg.declare(metadata ptr %5, metadata !594, metadata !DIExpression()), !dbg !598
  %6 = load ptr, ptr %3, align 4, !dbg !599
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 2, !dbg !600
  %8 = load ptr, ptr %7, align 4, !dbg !600
  store ptr %8, ptr %5, align 4, !dbg !598
  %9 = load ptr, ptr %5, align 4, !dbg !601
  %10 = getelementptr inbounds %struct.uart_driver_api, ptr %9, i32 0, i32 1, !dbg !602
  %11 = load ptr, ptr %10, align 4, !dbg !602
  %12 = load ptr, ptr %3, align 4, !dbg !603
  %13 = load i8, ptr %4, align 1, !dbg !604
  call void %11(ptr noundef %12, i8 noundef zeroext %13) #5, !dbg !601
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #6, !dbg !605
  ret void, !dbg !605
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_uart_poll_out_u16(ptr noundef %0, i16 noundef zeroext %1) #0 !dbg !606 {
  %3 = alloca ptr, align 4
  %4 = alloca i16, align 2
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !610, metadata !DIExpression()), !dbg !612
  store i16 %1, ptr %4, align 2
  call void @llvm.dbg.declare(metadata ptr %4, metadata !611, metadata !DIExpression()), !dbg !613
  %5 = load ptr, ptr %3, align 4, !dbg !614
  %6 = load i16, ptr %4, align 2, !dbg !615
  ret void, !dbg !616
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_uart_configure(ptr noundef %0, ptr noundef %1) #0 !dbg !617 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !619, metadata !DIExpression()), !dbg !622
  store ptr %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !620, metadata !DIExpression()), !dbg !623
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #6, !dbg !624
  call void @llvm.dbg.declare(metadata ptr %6, metadata !621, metadata !DIExpression()), !dbg !625
  %8 = load ptr, ptr %4, align 4, !dbg !626
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 2, !dbg !627
  %10 = load ptr, ptr %9, align 4, !dbg !627
  store ptr %10, ptr %6, align 4, !dbg !625
  %11 = load ptr, ptr %6, align 4, !dbg !628
  %12 = getelementptr inbounds %struct.uart_driver_api, ptr %11, i32 0, i32 3, !dbg !630
  %13 = load ptr, ptr %12, align 4, !dbg !630
  %14 = icmp eq ptr %13, null, !dbg !631
  br i1 %14, label %15, label %16, !dbg !632

15:                                               ; preds = %2
  store i32 -88, ptr %3, align 4, !dbg !633
  store i32 1, ptr %7, align 4
  br label %23, !dbg !633

16:                                               ; preds = %2
  %17 = load ptr, ptr %6, align 4, !dbg !635
  %18 = getelementptr inbounds %struct.uart_driver_api, ptr %17, i32 0, i32 3, !dbg !636
  %19 = load ptr, ptr %18, align 4, !dbg !636
  %20 = load ptr, ptr %4, align 4, !dbg !637
  %21 = load ptr, ptr %5, align 4, !dbg !638
  %22 = call i32 %19(ptr noundef %20, ptr noundef %21) #5, !dbg !635
  store i32 %22, ptr %3, align 4, !dbg !639
  store i32 1, ptr %7, align 4
  br label %23, !dbg !639

23:                                               ; preds = %16, %15
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #6, !dbg !640
  %24 = load i32, ptr %3, align 4, !dbg !640
  ret i32 %24, !dbg !640
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_uart_config_get(ptr noundef %0, ptr noundef %1) #0 !dbg !641 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !643, metadata !DIExpression()), !dbg !646
  store ptr %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !644, metadata !DIExpression()), !dbg !647
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #6, !dbg !648
  call void @llvm.dbg.declare(metadata ptr %6, metadata !645, metadata !DIExpression()), !dbg !649
  %8 = load ptr, ptr %4, align 4, !dbg !650
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 2, !dbg !651
  %10 = load ptr, ptr %9, align 4, !dbg !651
  store ptr %10, ptr %6, align 4, !dbg !649
  %11 = load ptr, ptr %6, align 4, !dbg !652
  %12 = getelementptr inbounds %struct.uart_driver_api, ptr %11, i32 0, i32 4, !dbg !654
  %13 = load ptr, ptr %12, align 4, !dbg !654
  %14 = icmp eq ptr %13, null, !dbg !655
  br i1 %14, label %15, label %16, !dbg !656

15:                                               ; preds = %2
  store i32 -88, ptr %3, align 4, !dbg !657
  store i32 1, ptr %7, align 4
  br label %23, !dbg !657

16:                                               ; preds = %2
  %17 = load ptr, ptr %6, align 4, !dbg !659
  %18 = getelementptr inbounds %struct.uart_driver_api, ptr %17, i32 0, i32 4, !dbg !660
  %19 = load ptr, ptr %18, align 4, !dbg !660
  %20 = load ptr, ptr %4, align 4, !dbg !661
  %21 = load ptr, ptr %5, align 4, !dbg !662
  %22 = call i32 %19(ptr noundef %20, ptr noundef %21) #5, !dbg !659
  store i32 %22, ptr %3, align 4, !dbg !663
  store i32 1, ptr %7, align 4
  br label %23, !dbg !663

23:                                               ; preds = %16, %15
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #6, !dbg !664
  %24 = load i32, ptr %3, align 4, !dbg !664
  ret i32 %24, !dbg !664
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_uart_irq_tx_enable(ptr noundef %0) #0 !dbg !665 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !667, metadata !DIExpression()), !dbg !669
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #6, !dbg !670
  call void @llvm.dbg.declare(metadata ptr %3, metadata !668, metadata !DIExpression()), !dbg !671
  %4 = load ptr, ptr %2, align 4, !dbg !672
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 2, !dbg !673
  %6 = load ptr, ptr %5, align 4, !dbg !673
  store ptr %6, ptr %3, align 4, !dbg !671
  %7 = load ptr, ptr %3, align 4, !dbg !674
  %8 = getelementptr inbounds %struct.uart_driver_api, ptr %7, i32 0, i32 7, !dbg !676
  %9 = load ptr, ptr %8, align 4, !dbg !676
  %10 = icmp ne ptr %9, null, !dbg !677
  br i1 %10, label %11, label %16, !dbg !678

11:                                               ; preds = %1
  %12 = load ptr, ptr %3, align 4, !dbg !679
  %13 = getelementptr inbounds %struct.uart_driver_api, ptr %12, i32 0, i32 7, !dbg !681
  %14 = load ptr, ptr %13, align 4, !dbg !681
  %15 = load ptr, ptr %2, align 4, !dbg !682
  call void %14(ptr noundef %15) #5, !dbg !679
  br label %16, !dbg !683

16:                                               ; preds = %11, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #6, !dbg !684
  ret void, !dbg !684
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_uart_irq_tx_disable(ptr noundef %0) #0 !dbg !685 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !687, metadata !DIExpression()), !dbg !689
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #6, !dbg !690
  call void @llvm.dbg.declare(metadata ptr %3, metadata !688, metadata !DIExpression()), !dbg !691
  %4 = load ptr, ptr %2, align 4, !dbg !692
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 2, !dbg !693
  %6 = load ptr, ptr %5, align 4, !dbg !693
  store ptr %6, ptr %3, align 4, !dbg !691
  %7 = load ptr, ptr %3, align 4, !dbg !694
  %8 = getelementptr inbounds %struct.uart_driver_api, ptr %7, i32 0, i32 8, !dbg !696
  %9 = load ptr, ptr %8, align 4, !dbg !696
  %10 = icmp ne ptr %9, null, !dbg !697
  br i1 %10, label %11, label %16, !dbg !698

11:                                               ; preds = %1
  %12 = load ptr, ptr %3, align 4, !dbg !699
  %13 = getelementptr inbounds %struct.uart_driver_api, ptr %12, i32 0, i32 8, !dbg !701
  %14 = load ptr, ptr %13, align 4, !dbg !701
  %15 = load ptr, ptr %2, align 4, !dbg !702
  call void %14(ptr noundef %15) #5, !dbg !699
  br label %16, !dbg !703

16:                                               ; preds = %11, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #6, !dbg !704
  ret void, !dbg !704
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_uart_irq_rx_enable(ptr noundef %0) #0 !dbg !705 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !707, metadata !DIExpression()), !dbg !709
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #6, !dbg !710
  call void @llvm.dbg.declare(metadata ptr %3, metadata !708, metadata !DIExpression()), !dbg !711
  %4 = load ptr, ptr %2, align 4, !dbg !712
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 2, !dbg !713
  %6 = load ptr, ptr %5, align 4, !dbg !713
  store ptr %6, ptr %3, align 4, !dbg !711
  %7 = load ptr, ptr %3, align 4, !dbg !714
  %8 = getelementptr inbounds %struct.uart_driver_api, ptr %7, i32 0, i32 10, !dbg !716
  %9 = load ptr, ptr %8, align 4, !dbg !716
  %10 = icmp ne ptr %9, null, !dbg !717
  br i1 %10, label %11, label %16, !dbg !718

11:                                               ; preds = %1
  %12 = load ptr, ptr %3, align 4, !dbg !719
  %13 = getelementptr inbounds %struct.uart_driver_api, ptr %12, i32 0, i32 10, !dbg !721
  %14 = load ptr, ptr %13, align 4, !dbg !721
  %15 = load ptr, ptr %2, align 4, !dbg !722
  call void %14(ptr noundef %15) #5, !dbg !719
  br label %16, !dbg !723

16:                                               ; preds = %11, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #6, !dbg !724
  ret void, !dbg !724
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_uart_irq_rx_disable(ptr noundef %0) #0 !dbg !725 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !727, metadata !DIExpression()), !dbg !729
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #6, !dbg !730
  call void @llvm.dbg.declare(metadata ptr %3, metadata !728, metadata !DIExpression()), !dbg !731
  %4 = load ptr, ptr %2, align 4, !dbg !732
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 2, !dbg !733
  %6 = load ptr, ptr %5, align 4, !dbg !733
  store ptr %6, ptr %3, align 4, !dbg !731
  %7 = load ptr, ptr %3, align 4, !dbg !734
  %8 = getelementptr inbounds %struct.uart_driver_api, ptr %7, i32 0, i32 11, !dbg !736
  %9 = load ptr, ptr %8, align 4, !dbg !736
  %10 = icmp ne ptr %9, null, !dbg !737
  br i1 %10, label %11, label %16, !dbg !738

11:                                               ; preds = %1
  %12 = load ptr, ptr %3, align 4, !dbg !739
  %13 = getelementptr inbounds %struct.uart_driver_api, ptr %12, i32 0, i32 11, !dbg !741
  %14 = load ptr, ptr %13, align 4, !dbg !741
  %15 = load ptr, ptr %2, align 4, !dbg !742
  call void %14(ptr noundef %15) #5, !dbg !739
  br label %16, !dbg !743

16:                                               ; preds = %11, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #6, !dbg !744
  ret void, !dbg !744
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_uart_irq_err_enable(ptr noundef %0) #0 !dbg !745 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !747, metadata !DIExpression()), !dbg !749
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #6, !dbg !750
  call void @llvm.dbg.declare(metadata ptr %3, metadata !748, metadata !DIExpression()), !dbg !751
  %4 = load ptr, ptr %2, align 4, !dbg !752
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 2, !dbg !753
  %6 = load ptr, ptr %5, align 4, !dbg !753
  store ptr %6, ptr %3, align 4, !dbg !751
  %7 = load ptr, ptr %3, align 4, !dbg !754
  %8 = getelementptr inbounds %struct.uart_driver_api, ptr %7, i32 0, i32 14, !dbg !756
  %9 = load ptr, ptr %8, align 4, !dbg !756
  %10 = icmp ne ptr %9, null, !dbg !754
  br i1 %10, label %11, label %16, !dbg !757

11:                                               ; preds = %1
  %12 = load ptr, ptr %3, align 4, !dbg !758
  %13 = getelementptr inbounds %struct.uart_driver_api, ptr %12, i32 0, i32 14, !dbg !760
  %14 = load ptr, ptr %13, align 4, !dbg !760
  %15 = load ptr, ptr %2, align 4, !dbg !761
  call void %14(ptr noundef %15) #5, !dbg !758
  br label %16, !dbg !762

16:                                               ; preds = %11, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #6, !dbg !763
  ret void, !dbg !763
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_uart_irq_err_disable(ptr noundef %0) #0 !dbg !764 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !766, metadata !DIExpression()), !dbg !768
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #6, !dbg !769
  call void @llvm.dbg.declare(metadata ptr %3, metadata !767, metadata !DIExpression()), !dbg !770
  %4 = load ptr, ptr %2, align 4, !dbg !771
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 2, !dbg !772
  %6 = load ptr, ptr %5, align 4, !dbg !772
  store ptr %6, ptr %3, align 4, !dbg !770
  %7 = load ptr, ptr %3, align 4, !dbg !773
  %8 = getelementptr inbounds %struct.uart_driver_api, ptr %7, i32 0, i32 15, !dbg !775
  %9 = load ptr, ptr %8, align 4, !dbg !775
  %10 = icmp ne ptr %9, null, !dbg !773
  br i1 %10, label %11, label %16, !dbg !776

11:                                               ; preds = %1
  %12 = load ptr, ptr %3, align 4, !dbg !777
  %13 = getelementptr inbounds %struct.uart_driver_api, ptr %12, i32 0, i32 15, !dbg !779
  %14 = load ptr, ptr %13, align 4, !dbg !779
  %15 = load ptr, ptr %2, align 4, !dbg !780
  call void %14(ptr noundef %15) #5, !dbg !777
  br label %16, !dbg !781

16:                                               ; preds = %11, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #6, !dbg !782
  ret void, !dbg !782
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_uart_irq_is_pending(ptr noundef %0) #0 !dbg !783 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !785, metadata !DIExpression()), !dbg !787
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #6, !dbg !788
  call void @llvm.dbg.declare(metadata ptr %4, metadata !786, metadata !DIExpression()), !dbg !789
  %6 = load ptr, ptr %3, align 4, !dbg !790
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 2, !dbg !791
  %8 = load ptr, ptr %7, align 4, !dbg !791
  store ptr %8, ptr %4, align 4, !dbg !789
  %9 = load ptr, ptr %4, align 4, !dbg !792
  %10 = getelementptr inbounds %struct.uart_driver_api, ptr %9, i32 0, i32 16, !dbg !794
  %11 = load ptr, ptr %10, align 4, !dbg !794
  %12 = icmp eq ptr %11, null, !dbg !795
  br i1 %12, label %13, label %14, !dbg !796

13:                                               ; preds = %1
  store i32 -88, ptr %2, align 4, !dbg !797
  store i32 1, ptr %5, align 4
  br label %20, !dbg !797

14:                                               ; preds = %1
  %15 = load ptr, ptr %4, align 4, !dbg !799
  %16 = getelementptr inbounds %struct.uart_driver_api, ptr %15, i32 0, i32 16, !dbg !800
  %17 = load ptr, ptr %16, align 4, !dbg !800
  %18 = load ptr, ptr %3, align 4, !dbg !801
  %19 = call i32 %17(ptr noundef %18) #5, !dbg !799
  store i32 %19, ptr %2, align 4, !dbg !802
  store i32 1, ptr %5, align 4
  br label %20, !dbg !802

20:                                               ; preds = %14, %13
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #6, !dbg !803
  %21 = load i32, ptr %2, align 4, !dbg !803
  ret i32 %21, !dbg !803
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_uart_irq_update(ptr noundef %0) #0 !dbg !804 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !806, metadata !DIExpression()), !dbg !808
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #6, !dbg !809
  call void @llvm.dbg.declare(metadata ptr %4, metadata !807, metadata !DIExpression()), !dbg !810
  %6 = load ptr, ptr %3, align 4, !dbg !811
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 2, !dbg !812
  %8 = load ptr, ptr %7, align 4, !dbg !812
  store ptr %8, ptr %4, align 4, !dbg !810
  %9 = load ptr, ptr %4, align 4, !dbg !813
  %10 = getelementptr inbounds %struct.uart_driver_api, ptr %9, i32 0, i32 17, !dbg !815
  %11 = load ptr, ptr %10, align 4, !dbg !815
  %12 = icmp eq ptr %11, null, !dbg !816
  br i1 %12, label %13, label %14, !dbg !817

13:                                               ; preds = %1
  store i32 -88, ptr %2, align 4, !dbg !818
  store i32 1, ptr %5, align 4
  br label %20, !dbg !818

14:                                               ; preds = %1
  %15 = load ptr, ptr %4, align 4, !dbg !820
  %16 = getelementptr inbounds %struct.uart_driver_api, ptr %15, i32 0, i32 17, !dbg !821
  %17 = load ptr, ptr %16, align 4, !dbg !821
  %18 = load ptr, ptr %3, align 4, !dbg !822
  %19 = call i32 %17(ptr noundef %18) #5, !dbg !820
  store i32 %19, ptr %2, align 4, !dbg !823
  store i32 1, ptr %5, align 4
  br label %20, !dbg !823

20:                                               ; preds = %14, %13
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #6, !dbg !824
  %21 = load i32, ptr %2, align 4, !dbg !824
  ret i32 %21, !dbg !824
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_uart_tx(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 !dbg !825 {
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !832, metadata !DIExpression()), !dbg !836
  store ptr %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !833, metadata !DIExpression()), !dbg !837
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !834, metadata !DIExpression()), !dbg !838
  store i32 %3, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !835, metadata !DIExpression()), !dbg !839
  %9 = load ptr, ptr %5, align 4, !dbg !840
  %10 = load ptr, ptr %6, align 4, !dbg !841
  %11 = load i32, ptr %7, align 4, !dbg !842
  %12 = load i32, ptr %8, align 4, !dbg !843
  ret i32 -134, !dbg !844
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_uart_tx_u16(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 !dbg !845 {
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !851, metadata !DIExpression()), !dbg !855
  store ptr %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !852, metadata !DIExpression()), !dbg !856
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !853, metadata !DIExpression()), !dbg !857
  store i32 %3, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !854, metadata !DIExpression()), !dbg !858
  %9 = load ptr, ptr %5, align 4, !dbg !859
  %10 = load ptr, ptr %6, align 4, !dbg !860
  %11 = load i32, ptr %7, align 4, !dbg !861
  %12 = load i32, ptr %8, align 4, !dbg !862
  ret i32 -134, !dbg !863
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_uart_tx_abort(ptr noundef %0) #0 !dbg !864 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !866, metadata !DIExpression()), !dbg !867
  %3 = load ptr, ptr %2, align 4, !dbg !868
  ret i32 -134, !dbg !869
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_uart_rx_enable(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 !dbg !870 {
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !874, metadata !DIExpression()), !dbg !878
  store ptr %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !875, metadata !DIExpression()), !dbg !879
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !876, metadata !DIExpression()), !dbg !880
  store i32 %3, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !877, metadata !DIExpression()), !dbg !881
  %9 = load ptr, ptr %5, align 4, !dbg !882
  %10 = load ptr, ptr %6, align 4, !dbg !883
  %11 = load i32, ptr %7, align 4, !dbg !884
  %12 = load i32, ptr %8, align 4, !dbg !885
  ret i32 -134, !dbg !886
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_uart_rx_enable_u16(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 !dbg !887 {
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !891, metadata !DIExpression()), !dbg !895
  store ptr %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !892, metadata !DIExpression()), !dbg !896
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !893, metadata !DIExpression()), !dbg !897
  store i32 %3, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !894, metadata !DIExpression()), !dbg !898
  %9 = load ptr, ptr %5, align 4, !dbg !899
  %10 = load ptr, ptr %6, align 4, !dbg !900
  %11 = load i32, ptr %7, align 4, !dbg !901
  %12 = load i32, ptr %8, align 4, !dbg !902
  ret i32 -134, !dbg !903
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_uart_rx_disable(ptr noundef %0) #0 !dbg !904 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !906, metadata !DIExpression()), !dbg !907
  %3 = load ptr, ptr %2, align 4, !dbg !908
  ret i32 -134, !dbg !909
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_uart_line_ctrl_set(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 !dbg !910 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !914, metadata !DIExpression()), !dbg !917
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !915, metadata !DIExpression()), !dbg !918
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !916, metadata !DIExpression()), !dbg !919
  %7 = load ptr, ptr %4, align 4, !dbg !920
  %8 = load i32, ptr %5, align 4, !dbg !921
  %9 = load i32, ptr %6, align 4, !dbg !922
  ret i32 -134, !dbg !923
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_uart_line_ctrl_get(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 !dbg !924 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !929, metadata !DIExpression()), !dbg !932
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !930, metadata !DIExpression()), !dbg !933
  store ptr %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !931, metadata !DIExpression()), !dbg !934
  %7 = load ptr, ptr %4, align 4, !dbg !935
  %8 = load i32, ptr %5, align 4, !dbg !936
  %9 = load ptr, ptr %6, align 4, !dbg !937
  ret i32 -134, !dbg !938
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_uart_drv_cmd(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 !dbg !939 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !941, metadata !DIExpression()), !dbg !944
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !942, metadata !DIExpression()), !dbg !945
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !943, metadata !DIExpression()), !dbg !946
  %7 = load ptr, ptr %4, align 4, !dbg !947
  %8 = load i32, ptr %5, align 4, !dbg !948
  %9 = load i32, ptr %6, align 4, !dbg !949
  ret i32 -134, !dbg !950
}

; Function Attrs: nounwind optsize
define hidden void @uart_register_input(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 !dbg !951 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !962, metadata !DIExpression()), !dbg !965
  store ptr %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !963, metadata !DIExpression()), !dbg !966
  store ptr %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !964, metadata !DIExpression()), !dbg !967
  %7 = load ptr, ptr %4, align 4, !dbg !968
  %8 = load ptr, ptr %5, align 4, !dbg !969
  %9 = load ptr, ptr %6, align 4, !dbg !970
  ret void, !dbg !971
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nounwind optsize
define internal i32 @uart_console_init() #1 !dbg !972 {
  %1 = alloca i32, align 4
  %2 = call zeroext i1 @device_is_ready(ptr noundef @__device_dts_ord_52) #5, !dbg !973
  br i1 %2, label %4, label %3, !dbg !975

3:                                                ; preds = %0
  store i32 -19, ptr %1, align 4, !dbg !976
  br label %5, !dbg !976

4:                                                ; preds = %0
  call void @uart_console_hook_install() #5, !dbg !978
  store i32 0, ptr %1, align 4, !dbg !979
  br label %5, !dbg !979

5:                                                ; preds = %4, %3
  %6 = load i32, ptr %1, align 4, !dbg !980
  ret i32 %6, !dbg !980
}

; Function Attrs: optsize
declare !dbg !981 dso_local i64 @z_timeout_expires(ptr noundef) #3

; Function Attrs: optsize
declare !dbg !986 dso_local i64 @z_timeout_remaining(ptr noundef) #3

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @sys_sflist_is_empty(ptr noundef %0) #0 !dbg !987 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !992, metadata !DIExpression()), !dbg !993
  %3 = load ptr, ptr %2, align 4, !dbg !994
  %4 = call ptr @sys_sflist_peek_head(ptr noundef %3) #5, !dbg !995
  %5 = icmp eq ptr %4, null, !dbg !996
  ret i1 %5, !dbg !997
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @sys_sflist_peek_head(ptr noundef %0) #0 !dbg !998 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1002, metadata !DIExpression()), !dbg !1003
  %3 = load ptr, ptr %2, align 4, !dbg !1004
  %4 = getelementptr inbounds %struct._sflist, ptr %3, i32 0, i32 0, !dbg !1005
  %5 = load ptr, ptr %4, align 4, !dbg !1005
  ret ptr %5, !dbg !1006
}

; Function Attrs: optsize
declare !dbg !1007 dso_local zeroext i1 @z_device_is_ready(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @device_is_ready(ptr noundef %0) #0 !dbg !1008 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1011, metadata !DIExpression()), !dbg !1012
  br label %3, !dbg !1013

3:                                                ; preds = %1
  call void asm sideeffect "", "~{memory}"() #6, !dbg !1014, !srcloc !1016
  br label %4, !dbg !1017

4:                                                ; preds = %3
  %5 = load ptr, ptr %2, align 4, !dbg !1018
  %6 = call zeroext i1 @z_impl_device_is_ready(ptr noundef %5) #5, !dbg !1019
  ret i1 %6, !dbg !1020
}

; Function Attrs: nounwind optsize
define internal void @uart_console_hook_install() #1 !dbg !1021 {
  call void @__stdout_hook_install(ptr noundef @console_out) #5, !dbg !1024
  call void @__printk_hook_install(ptr noundef @console_out) #5, !dbg !1025
  ret void, !dbg !1026
}

; Function Attrs: optsize
declare !dbg !1027 dso_local void @__stdout_hook_install(ptr noundef) #3

; Function Attrs: nounwind optsize
define internal i32 @console_out(i32 noundef %0) #1 !dbg !1033 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1035, metadata !DIExpression()), !dbg !1036
  %4 = call zeroext i1 @pm_device_runtime_is_enabled(ptr noundef @__device_dts_ord_52) #5, !dbg !1037
  br i1 %4, label %5, label %11, !dbg !1039

5:                                                ; preds = %1
  %6 = call i32 @pm_device_runtime_get(ptr noundef @__device_dts_ord_52) #5, !dbg !1040
  %7 = icmp slt i32 %6, 0, !dbg !1043
  br i1 %7, label %8, label %10, !dbg !1044

8:                                                ; preds = %5
  %9 = load i32, ptr %3, align 4, !dbg !1045
  store i32 %9, ptr %2, align 4, !dbg !1047
  br label %23, !dbg !1047

10:                                               ; preds = %5
  br label %11, !dbg !1048

11:                                               ; preds = %10, %1
  %12 = load i32, ptr %3, align 4, !dbg !1049
  %13 = icmp eq i32 10, %12, !dbg !1051
  br i1 %13, label %14, label %15, !dbg !1052

14:                                               ; preds = %11
  call void @uart_poll_out(ptr noundef @__device_dts_ord_52, i8 noundef zeroext 13) #5, !dbg !1053
  br label %15, !dbg !1055

15:                                               ; preds = %14, %11
  %16 = load i32, ptr %3, align 4, !dbg !1056
  %17 = trunc i32 %16 to i8, !dbg !1056
  call void @uart_poll_out(ptr noundef @__device_dts_ord_52, i8 noundef zeroext %17) #5, !dbg !1057
  %18 = call zeroext i1 @pm_device_runtime_is_enabled(ptr noundef @__device_dts_ord_52) #5, !dbg !1058
  br i1 %18, label %19, label %21, !dbg !1060

19:                                               ; preds = %15
  %20 = call i32 @pm_device_runtime_put(ptr noundef @__device_dts_ord_52) #5, !dbg !1061
  br label %21, !dbg !1063

21:                                               ; preds = %19, %15
  %22 = load i32, ptr %3, align 4, !dbg !1064
  store i32 %22, ptr %2, align 4, !dbg !1065
  br label %23, !dbg !1065

23:                                               ; preds = %21, %8
  %24 = load i32, ptr %2, align 4, !dbg !1066
  ret i32 %24, !dbg !1066
}

; Function Attrs: optsize
declare !dbg !1067 dso_local void @__printk_hook_install(ptr noundef) #3

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @pm_device_runtime_is_enabled(ptr noundef %0) #0 !dbg !1068 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1071, metadata !DIExpression()), !dbg !1072
  %3 = load ptr, ptr %2, align 4, !dbg !1073
  ret i1 false, !dbg !1074
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @pm_device_runtime_get(ptr noundef %0) #0 !dbg !1075 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1077, metadata !DIExpression()), !dbg !1078
  %3 = load ptr, ptr %2, align 4, !dbg !1079
  ret i32 0, !dbg !1080
}

; Function Attrs: inlinehint nounwind optsize
define internal void @uart_poll_out(ptr noundef %0, i8 noundef zeroext %1) #0 !dbg !1081 {
  %3 = alloca ptr, align 4
  %4 = alloca i8, align 1
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1084, metadata !DIExpression()), !dbg !1086
  store i8 %1, ptr %4, align 1
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1085, metadata !DIExpression()), !dbg !1087
  br label %5, !dbg !1088

5:                                                ; preds = %2
  call void asm sideeffect "", "~{memory}"() #6, !dbg !1089, !srcloc !1091
  br label %6, !dbg !1092

6:                                                ; preds = %5
  %7 = load ptr, ptr %3, align 4, !dbg !1093
  %8 = load i8, ptr %4, align 1, !dbg !1094
  call void @z_impl_uart_poll_out(ptr noundef %7, i8 noundef zeroext %8) #5, !dbg !1095
  ret void, !dbg !1096
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @pm_device_runtime_put(ptr noundef %0) #0 !dbg !1097 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1099, metadata !DIExpression()), !dbg !1100
  %3 = load ptr, ptr %2, align 4, !dbg !1101
  ret i32 0, !dbg !1102
}

attributes #0 = { inlinehint nounwind optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { optsize }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!204, !205, !206, !207, !208, !209}
!llvm.ident = !{!210}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__init_uart_console_init", scope: !2, file: !189, line: 627, type: !191, isLocal: true, isDefinition: true, align: 32)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !88, globals: !186, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "uart_console.c", directory: "/home/sri/zephyrproject/zephyr/build")
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
!92 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !93)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uart_driver_api", file: !94, line: 334, size: 608, elements: !95)
!94 = !DIFile(filename: "include/zephyr/drivers/uart.h", directory: "/home/sri/zephyrproject/zephyr")
!95 = !{!96, !124, !128, !132, !147, !152, !158, !164, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "poll_in", scope: !93, file: !94, line: 363, baseType: !97, size: 32)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 32)
!98 = !DISubroutineType(types: !99)
!99 = !{!90, !100, !123}
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 32)
!101 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !102)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !103, line: 381, size: 160, elements: !104)
!103 = !DIFile(filename: "include/zephyr/device.h", directory: "/home/sri/zephyrproject/zephyr")
!104 = !{!105, !109, !112, !113, !122}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !102, file: !103, line: 383, baseType: !106, size: 32)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 32)
!107 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !108)
!108 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !102, file: !103, line: 385, baseType: !110, size: 32, offset: 32)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 32)
!111 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "api", scope: !102, file: !103, line: 387, baseType: !110, size: 32, offset: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !102, file: !103, line: 389, baseType: !114, size: 32, offset: 96)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 32)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_state", file: !103, line: 354, size: 16, elements: !116)
!116 = !{!117, !120}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "init_res", scope: !115, file: !103, line: 362, baseType: !118, size: 8)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !119, line: 62, baseType: !7)
!119 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/stdint.h", directory: "")
!120 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !115, file: !103, line: 367, baseType: !121, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 8)
!121 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !102, file: !103, line: 391, baseType: !89, size: 32, offset: 128)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 32)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "poll_out", scope: !93, file: !94, line: 364, baseType: !125, size: 32, offset: 32)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 32)
!126 = !DISubroutineType(types: !127)
!127 = !{null, !100, !7}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "err_check", scope: !93, file: !94, line: 372, baseType: !129, size: 32, offset: 64)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 32)
!130 = !DISubroutineType(types: !131)
!131 = !{!90, !100}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "configure", scope: !93, file: !94, line: 376, baseType: !133, size: 32, offset: 96)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 32)
!134 = !DISubroutineType(types: !135)
!135 = !{!90, !100, !136}
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 32)
!137 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !138)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uart_config", file: !94, line: 119, size: 64, elements: !139)
!139 = !{!140, !143, !144, !145, !146}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "baudrate", scope: !138, file: !94, line: 120, baseType: !141, size: 32)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !119, line: 64, baseType: !142)
!142 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "parity", scope: !138, file: !94, line: 121, baseType: !118, size: 8, offset: 32)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "stop_bits", scope: !138, file: !94, line: 122, baseType: !118, size: 8, offset: 40)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "data_bits", scope: !138, file: !94, line: 123, baseType: !118, size: 8, offset: 48)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "flow_ctrl", scope: !138, file: !94, line: 124, baseType: !118, size: 8, offset: 56)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "config_get", scope: !93, file: !94, line: 378, baseType: !148, size: 32, offset: 128)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 32)
!149 = !DISubroutineType(types: !150)
!150 = !{!90, !100, !151}
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 32)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "fifo_fill", scope: !93, file: !94, line: 384, baseType: !153, size: 32, offset: 160)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 32)
!154 = !DISubroutineType(types: !155)
!155 = !{!90, !100, !156, !90}
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 32)
!157 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !118)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "fifo_read", scope: !93, file: !94, line: 393, baseType: !159, size: 32, offset: 192)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 32)
!160 = !DISubroutineType(types: !161)
!161 = !{!90, !100, !162, !163}
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 32)
!163 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !90)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "irq_tx_enable", scope: !93, file: !94, line: 402, baseType: !165, size: 32, offset: 224)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 32)
!166 = !DISubroutineType(types: !167)
!167 = !{null, !100}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "irq_tx_disable", scope: !93, file: !94, line: 405, baseType: !165, size: 32, offset: 256)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "irq_tx_ready", scope: !93, file: !94, line: 408, baseType: !129, size: 32, offset: 288)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "irq_rx_enable", scope: !93, file: !94, line: 411, baseType: !165, size: 32, offset: 320)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "irq_rx_disable", scope: !93, file: !94, line: 414, baseType: !165, size: 32, offset: 352)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "irq_tx_complete", scope: !93, file: !94, line: 417, baseType: !129, size: 32, offset: 384)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "irq_rx_ready", scope: !93, file: !94, line: 420, baseType: !129, size: 32, offset: 416)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "irq_err_enable", scope: !93, file: !94, line: 423, baseType: !165, size: 32, offset: 448)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "irq_err_disable", scope: !93, file: !94, line: 426, baseType: !165, size: 32, offset: 480)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "irq_is_pending", scope: !93, file: !94, line: 429, baseType: !129, size: 32, offset: 512)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "irq_update", scope: !93, file: !94, line: 432, baseType: !129, size: 32, offset: 544)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "irq_callback_set", scope: !93, file: !94, line: 435, baseType: !179, size: 32, offset: 576)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 32)
!180 = !DISubroutineType(types: !181)
!181 = !{null, !100, !182, !89}
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "uart_irq_callback_user_data_t", file: !94, line: 139, baseType: !183)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 32)
!184 = !DISubroutineType(types: !185)
!185 = !{null, !100, !89}
!186 = !{!0, !187}
!187 = !DIGlobalVariableExpression(var: !188, expr: !DIExpression())
!188 = distinct !DIGlobalVariable(name: "uart_console_dev", scope: !2, file: !189, line: 39, type: !190, isLocal: true, isDefinition: true)
!189 = !DIFile(filename: "drivers/console/uart_console.c", directory: "/home/sri/zephyrproject/zephyr")
!190 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100)
!191 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !192)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "init_entry", file: !193, line: 92, size: 64, elements: !194)
!193 = !DIFile(filename: "include/zephyr/init.h", directory: "/home/sri/zephyrproject/zephyr")
!194 = !{!195, !203}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "init_fn", scope: !192, file: !193, line: 94, baseType: !196, size: 32)
!196 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "init_function", file: !193, line: 59, size: 32, elements: !197)
!197 = !{!198, !202}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "sys", scope: !196, file: !193, line: 66, baseType: !199, size: 32)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 32)
!200 = !DISubroutineType(types: !201)
!201 = !{!90}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !196, file: !193, line: 75, baseType: !129, size: 32)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !192, file: !193, line: 99, baseType: !100, size: 32, offset: 32)
!204 = !{i32 7, !"Dwarf Version", i32 4}
!205 = !{i32 2, !"Debug Info Version", i32 3}
!206 = !{i32 1, !"wchar_size", i32 4}
!207 = !{i32 1, !"static_rwdata", i32 1}
!208 = !{i32 1, !"enumsize_buildattr", i32 1}
!209 = !{i32 1, !"armlib_unavailable", i32 0}
!210 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
!211 = distinct !DISubprogram(name: "z_impl_k_object_access_grant", scope: !6, file: !6, line: 223, type: !212, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !329)
!212 = !DISubroutineType(types: !213)
!213 = !{null, !110, !214}
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 32)
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_thread", file: !216, line: 250, size: 896, elements: !217)
!216 = !DIFile(filename: "include/zephyr/kernel/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!217 = !{!218, !287, !300, !301, !302, !303, !324}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !215, file: !216, line: 252, baseType: !219, size: 384)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_base", file: !216, line: 58, size: 384, elements: !220)
!220 = !{!221, !249, !257, !258, !259, !272, !273, !274}
!221 = !DIDerivedType(tag: DW_TAG_member, scope: !219, file: !216, line: 61, baseType: !222, size: 64)
!222 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !219, file: !216, line: 61, size: 64, elements: !223)
!223 = !{!224, !240}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_dlist", scope: !222, file: !216, line: 62, baseType: !225, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dnode_t", file: !226, line: 55, baseType: !227)
!226 = !DIFile(filename: "include/zephyr/sys/dlist.h", directory: "/home/sri/zephyrproject/zephyr")
!227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_dnode", file: !226, line: 37, size: 64, elements: !228)
!228 = !{!229, !235}
!229 = !DIDerivedType(tag: DW_TAG_member, scope: !227, file: !226, line: 38, baseType: !230, size: 32)
!230 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !227, file: !226, line: 38, size: 32, elements: !231)
!231 = !{!232, !234}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !230, file: !226, line: 39, baseType: !233, size: 32)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 32)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !230, file: !226, line: 40, baseType: !233, size: 32)
!235 = !DIDerivedType(tag: DW_TAG_member, scope: !227, file: !226, line: 42, baseType: !236, size: 32, offset: 32)
!236 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !227, file: !226, line: 42, size: 32, elements: !237)
!237 = !{!238, !239}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !236, file: !226, line: 43, baseType: !233, size: 32)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !236, file: !226, line: 44, baseType: !233, size: 32)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_rb", scope: !222, file: !216, line: 63, baseType: !241, size: 64)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rbnode", file: !242, line: 58, size: 64, elements: !243)
!242 = !DIFile(filename: "include/zephyr/sys/rb.h", directory: "/home/sri/zephyrproject/zephyr")
!243 = !{!244}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !241, file: !242, line: 60, baseType: !245, size: 64)
!245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !246, size: 64, elements: !247)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 32)
!247 = !{!248}
!248 = !DISubrange(count: 2)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "pended_on", scope: !219, file: !216, line: 69, baseType: !250, size: 32, offset: 64)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 32)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "_wait_q_t", file: !252, line: 243, baseType: !253)
!252 = !DIFile(filename: "include/zephyr/kernel_structs.h", directory: "/home/sri/zephyrproject/zephyr")
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !252, line: 241, size: 64, elements: !254)
!254 = !{!255}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !253, file: !252, line: 242, baseType: !256, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dlist_t", file: !226, line: 51, baseType: !227)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "user_options", scope: !219, file: !216, line: 72, baseType: !118, size: 8, offset: 96)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "thread_state", scope: !219, file: !216, line: 75, baseType: !118, size: 8, offset: 104)
!259 = !DIDerivedType(tag: DW_TAG_member, scope: !219, file: !216, line: 91, baseType: !260, size: 16, offset: 112)
!260 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !219, file: !216, line: 91, size: 16, elements: !261)
!261 = !{!262, !269}
!262 = !DIDerivedType(tag: DW_TAG_member, scope: !260, file: !216, line: 92, baseType: !263, size: 16)
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !260, file: !216, line: 92, size: 16, elements: !264)
!264 = !{!265, !268}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !263, file: !216, line: 97, baseType: !266, size: 8)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !119, line: 56, baseType: !267)
!267 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "sched_locked", scope: !263, file: !216, line: 98, baseType: !118, size: 8, offset: 8)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "preempt", scope: !260, file: !216, line: 101, baseType: !270, size: 16)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !119, line: 63, baseType: !271)
!271 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "order_key", scope: !219, file: !216, line: 108, baseType: !141, size: 32, offset: 128)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "swap_data", scope: !219, file: !216, line: 132, baseType: !89, size: 32, offset: 160)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !219, file: !216, line: 136, baseType: !275, size: 192, offset: 192)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_timeout", file: !252, line: 254, size: 192, elements: !276)
!276 = !{!277, !278, !284}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !275, file: !252, line: 255, baseType: !225, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !275, file: !252, line: 256, baseType: !279, size: 32, offset: 64)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "_timeout_func_t", file: !252, line: 252, baseType: !280)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 32)
!281 = !DISubroutineType(types: !282)
!282 = !{null, !283}
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 32)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "dticks", scope: !275, file: !252, line: 259, baseType: !285, size: 64, offset: 128)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !119, line: 59, baseType: !286)
!286 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "callee_saved", scope: !215, file: !216, line: 255, baseType: !288, size: 288, offset: 384)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_callee_saved", file: !289, line: 25, size: 288, elements: !290)
!289 = !DIFile(filename: "include/zephyr/arch/arm/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!290 = !{!291, !292, !293, !294, !295, !296, !297, !298, !299}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "v1", scope: !288, file: !289, line: 26, baseType: !141, size: 32)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "v2", scope: !288, file: !289, line: 27, baseType: !141, size: 32, offset: 32)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "v3", scope: !288, file: !289, line: 28, baseType: !141, size: 32, offset: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "v4", scope: !288, file: !289, line: 29, baseType: !141, size: 32, offset: 96)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "v5", scope: !288, file: !289, line: 30, baseType: !141, size: 32, offset: 128)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "v6", scope: !288, file: !289, line: 31, baseType: !141, size: 32, offset: 160)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "v7", scope: !288, file: !289, line: 32, baseType: !141, size: 32, offset: 192)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "v8", scope: !288, file: !289, line: 33, baseType: !141, size: 32, offset: 224)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "psp", scope: !288, file: !289, line: 34, baseType: !141, size: 32, offset: 256)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "init_data", scope: !215, file: !216, line: 258, baseType: !89, size: 32, offset: 672)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "join_queue", scope: !215, file: !216, line: 261, baseType: !251, size: 64, offset: 704)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "errno_var", scope: !215, file: !216, line: 302, baseType: !90, size: 32, offset: 768)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "resource_pool", scope: !215, file: !216, line: 333, baseType: !304, size: 32, offset: 800)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 32)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_heap", file: !306, line: 5291, size: 160, elements: !307)
!306 = !DIFile(filename: "include/zephyr/kernel.h", directory: "/home/sri/zephyrproject/zephyr")
!307 = !{!308, !319, !320}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !305, file: !306, line: 5292, baseType: !309, size: 96)
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sys_heap", file: !310, line: 56, size: 96, elements: !311)
!310 = !DIFile(filename: "include/zephyr/sys/sys_heap.h", directory: "/home/sri/zephyrproject/zephyr")
!311 = !{!312, !315, !316}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !309, file: !310, line: 57, baseType: !313, size: 32)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 32)
!314 = !DICompositeType(tag: DW_TAG_structure_type, name: "z_heap", file: !310, line: 57, flags: DIFlagFwdDecl)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "init_mem", scope: !309, file: !310, line: 58, baseType: !89, size: 32, offset: 32)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "init_bytes", scope: !309, file: !310, line: 59, baseType: !317, size: 32, offset: 64)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !318, line: 46, baseType: !142)
!318 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/lib/clang/17/include/stddef.h", directory: "")
!319 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !305, file: !306, line: 5293, baseType: !251, size: 64, offset: 96)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !305, file: !306, line: 5294, baseType: !321, offset: 160)
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_spinlock", file: !322, line: 45, elements: !323)
!322 = !DIFile(filename: "include/zephyr/spinlock.h", directory: "/home/sri/zephyrproject/zephyr")
!323 = !{}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !215, file: !216, line: 355, baseType: !325, size: 64, offset: 832)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_arch", file: !289, line: 60, size: 64, elements: !326)
!326 = !{!327, !328}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "basepri", scope: !325, file: !289, line: 63, baseType: !141, size: 32)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "swap_return_value", scope: !325, file: !289, line: 66, baseType: !141, size: 32, offset: 32)
!329 = !{!330, !331}
!330 = !DILocalVariable(name: "object", arg: 1, scope: !211, file: !6, line: 223, type: !110)
!331 = !DILocalVariable(name: "thread", arg: 2, scope: !211, file: !6, line: 224, type: !214)
!332 = !DILocation(line: 223, column: 61, scope: !211)
!333 = !DILocation(line: 224, column: 24, scope: !211)
!334 = !DILocation(line: 226, column: 9, scope: !211)
!335 = !DILocation(line: 227, column: 9, scope: !211)
!336 = !DILocation(line: 228, column: 1, scope: !211)
!337 = distinct !DISubprogram(name: "z_impl_k_object_release", scope: !6, file: !6, line: 243, type: !338, scopeLine: 244, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !340)
!338 = !DISubroutineType(types: !339)
!339 = !{null, !110}
!340 = !{!341}
!341 = !DILocalVariable(name: "object", arg: 1, scope: !337, file: !6, line: 243, type: !110)
!342 = !DILocation(line: 243, column: 56, scope: !337)
!343 = !DILocation(line: 245, column: 9, scope: !337)
!344 = !DILocation(line: 246, column: 1, scope: !337)
!345 = distinct !DISubprogram(name: "z_impl_k_object_alloc", scope: !6, file: !6, line: 359, type: !346, scopeLine: 360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !348)
!346 = !DISubroutineType(types: !347)
!347 = !{!89, !5}
!348 = !{!349}
!349 = !DILocalVariable(name: "otype", arg: 1, scope: !345, file: !6, line: 359, type: !5)
!350 = !DILocation(line: 359, column: 58, scope: !345)
!351 = !DILocation(line: 361, column: 9, scope: !345)
!352 = !DILocation(line: 363, column: 2, scope: !345)
!353 = distinct !DISubprogram(name: "z_impl_k_object_alloc_size", scope: !6, file: !6, line: 366, type: !354, scopeLine: 368, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !356)
!354 = !DISubroutineType(types: !355)
!355 = !{!89, !5, !317}
!356 = !{!357, !358}
!357 = !DILocalVariable(name: "otype", arg: 1, scope: !353, file: !6, line: 366, type: !5)
!358 = !DILocalVariable(name: "size", arg: 2, scope: !353, file: !6, line: 367, type: !317)
!359 = !DILocation(line: 366, column: 63, scope: !353)
!360 = !DILocation(line: 367, column: 13, scope: !353)
!361 = !DILocation(line: 369, column: 9, scope: !353)
!362 = !DILocation(line: 370, column: 9, scope: !353)
!363 = !DILocation(line: 372, column: 2, scope: !353)
!364 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_expires_ticks", scope: !306, file: !306, line: 656, type: !365, scopeLine: 658, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !371)
!365 = !DISubroutineType(types: !366)
!366 = !{!367, !369}
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_ticks_t", file: !368, line: 46, baseType: !285)
!368 = !DIFile(filename: "include/zephyr/sys_clock.h", directory: "/home/sri/zephyrproject/zephyr")
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 32)
!370 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !215)
!371 = !{!372}
!372 = !DILocalVariable(name: "t", arg: 1, scope: !364, file: !306, line: 657, type: !369)
!373 = !DILocation(line: 657, column: 30, scope: !364)
!374 = !DILocation(line: 659, column: 28, scope: !364)
!375 = !DILocation(line: 659, column: 31, scope: !364)
!376 = !DILocation(line: 659, column: 36, scope: !364)
!377 = !DILocation(line: 659, column: 9, scope: !364)
!378 = !DILocation(line: 659, column: 2, scope: !364)
!379 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_remaining_ticks", scope: !306, file: !306, line: 671, type: !365, scopeLine: 673, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !380)
!380 = !{!381}
!381 = !DILocalVariable(name: "t", arg: 1, scope: !379, file: !306, line: 672, type: !369)
!382 = !DILocation(line: 672, column: 30, scope: !379)
!383 = !DILocation(line: 674, column: 30, scope: !379)
!384 = !DILocation(line: 674, column: 33, scope: !379)
!385 = !DILocation(line: 674, column: 38, scope: !379)
!386 = !DILocation(line: 674, column: 9, scope: !379)
!387 = !DILocation(line: 674, column: 2, scope: !379)
!388 = distinct !DISubprogram(name: "z_impl_k_timer_expires_ticks", scope: !306, file: !306, line: 1634, type: !389, scopeLine: 1636, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !410)
!389 = !DISubroutineType(types: !390)
!390 = !{!367, !391}
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 32)
!392 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !393)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_timer", file: !306, line: 1439, size: 448, elements: !394)
!394 = !{!395, !396, !397, !402, !403, !408, !409}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !393, file: !306, line: 1445, baseType: !275, size: 192)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !393, file: !306, line: 1448, baseType: !251, size: 64, offset: 192)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_fn", scope: !393, file: !306, line: 1451, baseType: !398, size: 32, offset: 256)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 32)
!399 = !DISubroutineType(types: !400)
!400 = !{null, !401}
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 32)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "stop_fn", scope: !393, file: !306, line: 1454, baseType: !398, size: 32, offset: 288)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !393, file: !306, line: 1457, baseType: !404, size: 64, offset: 320)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_timeout_t", file: !368, line: 67, baseType: !405)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !368, line: 65, size: 64, elements: !406)
!406 = !{!407}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "ticks", scope: !405, file: !368, line: 66, baseType: !367, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !393, file: !306, line: 1460, baseType: !141, size: 32, offset: 384)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !393, file: !306, line: 1463, baseType: !89, size: 32, offset: 416)
!410 = !{!411}
!411 = !DILocalVariable(name: "timer", arg: 1, scope: !388, file: !306, line: 1635, type: !391)
!412 = !DILocation(line: 1635, column: 34, scope: !388)
!413 = !DILocation(line: 1637, column: 28, scope: !388)
!414 = !DILocation(line: 1637, column: 35, scope: !388)
!415 = !DILocation(line: 1637, column: 9, scope: !388)
!416 = !DILocation(line: 1637, column: 2, scope: !388)
!417 = distinct !DISubprogram(name: "z_impl_k_timer_remaining_ticks", scope: !306, file: !306, line: 1649, type: !389, scopeLine: 1651, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !418)
!418 = !{!419}
!419 = !DILocalVariable(name: "timer", arg: 1, scope: !417, file: !306, line: 1650, type: !391)
!420 = !DILocation(line: 1650, column: 34, scope: !417)
!421 = !DILocation(line: 1652, column: 30, scope: !417)
!422 = !DILocation(line: 1652, column: 37, scope: !417)
!423 = !DILocation(line: 1652, column: 9, scope: !417)
!424 = !DILocation(line: 1652, column: 2, scope: !417)
!425 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_set", scope: !306, file: !306, line: 1689, type: !426, scopeLine: 1691, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !428)
!426 = !DISubroutineType(types: !427)
!427 = !{null, !401, !89}
!428 = !{!429, !430}
!429 = !DILocalVariable(name: "timer", arg: 1, scope: !425, file: !306, line: 1689, type: !401)
!430 = !DILocalVariable(name: "user_data", arg: 2, scope: !425, file: !306, line: 1690, type: !89)
!431 = !DILocation(line: 1689, column: 65, scope: !425)
!432 = !DILocation(line: 1690, column: 19, scope: !425)
!433 = !DILocation(line: 1692, column: 21, scope: !425)
!434 = !DILocation(line: 1692, column: 2, scope: !425)
!435 = !DILocation(line: 1692, column: 9, scope: !425)
!436 = !DILocation(line: 1692, column: 19, scope: !425)
!437 = !DILocation(line: 1693, column: 1, scope: !425)
!438 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_get", scope: !306, file: !306, line: 1704, type: !439, scopeLine: 1705, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !441)
!439 = !DISubroutineType(types: !440)
!440 = !{!89, !391}
!441 = !{!442}
!442 = !DILocalVariable(name: "timer", arg: 1, scope: !438, file: !306, line: 1704, type: !391)
!443 = !DILocation(line: 1704, column: 72, scope: !438)
!444 = !DILocation(line: 1706, column: 9, scope: !438)
!445 = !DILocation(line: 1706, column: 16, scope: !438)
!446 = !DILocation(line: 1706, column: 2, scope: !438)
!447 = distinct !DISubprogram(name: "z_impl_k_queue_is_empty", scope: !306, file: !306, line: 2071, type: !448, scopeLine: 2072, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !468)
!448 = !DISubroutineType(types: !449)
!449 = !{!90, !450}
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 32)
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_queue", file: !306, line: 1830, size: 128, elements: !452)
!452 = !{!453, !466, !467}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "data_q", scope: !451, file: !306, line: 1831, baseType: !454, size: 64)
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
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "unative_t", file: !455, line: 40, baseType: !141)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !456, file: !455, line: 55, baseType: !459, size: 32, offset: 32)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !451, file: !306, line: 1832, baseType: !321, offset: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !451, file: !306, line: 1833, baseType: !251, size: 64, offset: 64)
!468 = !{!469}
!469 = !DILocalVariable(name: "queue", arg: 1, scope: !447, file: !306, line: 2071, type: !450)
!470 = !DILocation(line: 2071, column: 59, scope: !447)
!471 = !DILocation(line: 2073, column: 35, scope: !447)
!472 = !DILocation(line: 2073, column: 42, scope: !447)
!473 = !DILocation(line: 2073, column: 14, scope: !447)
!474 = !DILocation(line: 2073, column: 9, scope: !447)
!475 = !DILocation(line: 2073, column: 2, scope: !447)
!476 = distinct !DISubprogram(name: "z_impl_k_sem_count_get", scope: !306, file: !306, line: 3209, type: !477, scopeLine: 3210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !485)
!477 = !DISubroutineType(types: !478)
!478 = !{!142, !479}
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 32)
!480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sem", file: !306, line: 3092, size: 128, elements: !481)
!481 = !{!482, !483, !484}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !480, file: !306, line: 3093, baseType: !251, size: 64)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !480, file: !306, line: 3094, baseType: !142, size: 32, offset: 64)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !480, file: !306, line: 3095, baseType: !142, size: 32, offset: 96)
!485 = !{!486}
!486 = !DILocalVariable(name: "sem", arg: 1, scope: !476, file: !306, line: 3209, type: !479)
!487 = !DILocation(line: 3209, column: 65, scope: !476)
!488 = !DILocation(line: 3211, column: 9, scope: !476)
!489 = !DILocation(line: 3211, column: 14, scope: !476)
!490 = !DILocation(line: 3211, column: 2, scope: !476)
!491 = distinct !DISubprogram(name: "z_impl_k_msgq_num_free_get", scope: !306, file: !306, line: 4649, type: !492, scopeLine: 4650, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !508)
!492 = !DISubroutineType(types: !493)
!493 = !{!141, !494}
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 32)
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_msgq", file: !306, line: 4390, size: 320, elements: !496)
!496 = !{!497, !498, !499, !500, !501, !503, !504, !505, !506, !507}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !495, file: !306, line: 4392, baseType: !251, size: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !495, file: !306, line: 4394, baseType: !321, offset: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "msg_size", scope: !495, file: !306, line: 4396, baseType: !317, size: 32, offset: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !495, file: !306, line: 4398, baseType: !141, size: 32, offset: 96)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_start", scope: !495, file: !306, line: 4400, baseType: !502, size: 32, offset: 128)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 32)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_end", scope: !495, file: !306, line: 4402, baseType: !502, size: 32, offset: 160)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "read_ptr", scope: !495, file: !306, line: 4404, baseType: !502, size: 32, offset: 192)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "write_ptr", scope: !495, file: !306, line: 4406, baseType: !502, size: 32, offset: 224)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "used_msgs", scope: !495, file: !306, line: 4408, baseType: !141, size: 32, offset: 256)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !495, file: !306, line: 4413, baseType: !118, size: 8, offset: 288)
!508 = !{!509}
!509 = !DILocalVariable(name: "msgq", arg: 1, scope: !491, file: !306, line: 4649, type: !494)
!510 = !DILocation(line: 4649, column: 66, scope: !491)
!511 = !DILocation(line: 4651, column: 9, scope: !491)
!512 = !DILocation(line: 4651, column: 15, scope: !491)
!513 = !DILocation(line: 4651, column: 26, scope: !491)
!514 = !DILocation(line: 4651, column: 32, scope: !491)
!515 = !DILocation(line: 4651, column: 24, scope: !491)
!516 = !DILocation(line: 4651, column: 2, scope: !491)
!517 = distinct !DISubprogram(name: "z_impl_k_msgq_num_used_get", scope: !306, file: !306, line: 4665, type: !492, scopeLine: 4666, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !518)
!518 = !{!519}
!519 = !DILocalVariable(name: "msgq", arg: 1, scope: !517, file: !306, line: 4665, type: !494)
!520 = !DILocation(line: 4665, column: 66, scope: !517)
!521 = !DILocation(line: 4667, column: 9, scope: !517)
!522 = !DILocation(line: 4667, column: 15, scope: !517)
!523 = !DILocation(line: 4667, column: 2, scope: !517)
!524 = distinct !DISubprogram(name: "z_impl_device_is_ready", scope: !103, file: !103, line: 744, type: !525, scopeLine: 745, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !527)
!525 = !DISubroutineType(types: !526)
!526 = !{!121, !100}
!527 = !{!528}
!528 = !DILocalVariable(name: "dev", arg: 1, scope: !524, file: !103, line: 744, type: !100)
!529 = !DILocation(line: 744, column: 65, scope: !524)
!530 = !DILocation(line: 746, column: 27, scope: !524)
!531 = !DILocation(line: 746, column: 9, scope: !524)
!532 = !DILocation(line: 746, column: 2, scope: !524)
!533 = distinct !DISubprogram(name: "z_impl_uart_err_check", scope: !94, file: !94, line: 467, type: !130, scopeLine: 468, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !534)
!534 = !{!535, !536}
!535 = !DILocalVariable(name: "dev", arg: 1, scope: !533, file: !94, line: 467, type: !100)
!536 = !DILocalVariable(name: "api", scope: !533, file: !94, line: 469, type: !91)
!537 = !DILocation(line: 467, column: 62, scope: !533)
!538 = !DILocation(line: 469, column: 2, scope: !533)
!539 = !DILocation(line: 469, column: 32, scope: !533)
!540 = !DILocation(line: 470, column: 35, scope: !533)
!541 = !DILocation(line: 470, column: 40, scope: !533)
!542 = !DILocation(line: 472, column: 6, scope: !543)
!543 = distinct !DILexicalBlock(scope: !533, file: !94, line: 472, column: 6)
!544 = !DILocation(line: 472, column: 11, scope: !543)
!545 = !DILocation(line: 472, column: 21, scope: !543)
!546 = !DILocation(line: 472, column: 6, scope: !533)
!547 = !DILocation(line: 473, column: 3, scope: !548)
!548 = distinct !DILexicalBlock(scope: !543, file: !94, line: 472, column: 27)
!549 = !DILocation(line: 476, column: 9, scope: !533)
!550 = !DILocation(line: 476, column: 14, scope: !533)
!551 = !DILocation(line: 476, column: 24, scope: !533)
!552 = !DILocation(line: 476, column: 2, scope: !533)
!553 = !DILocation(line: 477, column: 1, scope: !533)
!554 = distinct !DISubprogram(name: "z_impl_uart_poll_in", scope: !94, file: !94, line: 504, type: !98, scopeLine: 506, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !555)
!555 = !{!556, !557, !558}
!556 = !DILocalVariable(name: "dev", arg: 1, scope: !554, file: !94, line: 504, type: !100)
!557 = !DILocalVariable(name: "p_char", arg: 2, scope: !554, file: !94, line: 505, type: !123)
!558 = !DILocalVariable(name: "api", scope: !554, file: !94, line: 507, type: !91)
!559 = !DILocation(line: 504, column: 60, scope: !554)
!560 = !DILocation(line: 505, column: 26, scope: !554)
!561 = !DILocation(line: 507, column: 2, scope: !554)
!562 = !DILocation(line: 507, column: 32, scope: !554)
!563 = !DILocation(line: 508, column: 35, scope: !554)
!564 = !DILocation(line: 508, column: 40, scope: !554)
!565 = !DILocation(line: 510, column: 6, scope: !566)
!566 = distinct !DILexicalBlock(scope: !554, file: !94, line: 510, column: 6)
!567 = !DILocation(line: 510, column: 11, scope: !566)
!568 = !DILocation(line: 510, column: 19, scope: !566)
!569 = !DILocation(line: 510, column: 6, scope: !554)
!570 = !DILocation(line: 511, column: 3, scope: !571)
!571 = distinct !DILexicalBlock(scope: !566, file: !94, line: 510, column: 25)
!572 = !DILocation(line: 514, column: 9, scope: !554)
!573 = !DILocation(line: 514, column: 14, scope: !554)
!574 = !DILocation(line: 514, column: 22, scope: !554)
!575 = !DILocation(line: 514, column: 27, scope: !554)
!576 = !DILocation(line: 514, column: 2, scope: !554)
!577 = !DILocation(line: 515, column: 1, scope: !554)
!578 = distinct !DISubprogram(name: "z_impl_uart_poll_in_u16", scope: !94, file: !94, line: 538, type: !579, scopeLine: 540, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !582)
!579 = !DISubroutineType(types: !580)
!580 = !{!90, !100, !581}
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 32)
!582 = !{!583, !584}
!583 = !DILocalVariable(name: "dev", arg: 1, scope: !578, file: !94, line: 538, type: !100)
!584 = !DILocalVariable(name: "p_u16", arg: 2, scope: !578, file: !94, line: 539, type: !581)
!585 = !DILocation(line: 538, column: 64, scope: !578)
!586 = !DILocation(line: 539, column: 18, scope: !578)
!587 = !DILocation(line: 551, column: 9, scope: !578)
!588 = !DILocation(line: 552, column: 9, scope: !578)
!589 = !DILocation(line: 553, column: 2, scope: !578)
!590 = distinct !DISubprogram(name: "z_impl_uart_poll_out", scope: !94, file: !94, line: 574, type: !126, scopeLine: 576, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !591)
!591 = !{!592, !593, !594}
!592 = !DILocalVariable(name: "dev", arg: 1, scope: !590, file: !94, line: 574, type: !100)
!593 = !DILocalVariable(name: "out_char", arg: 2, scope: !590, file: !94, line: 575, type: !7)
!594 = !DILocalVariable(name: "api", scope: !590, file: !94, line: 577, type: !91)
!595 = !DILocation(line: 574, column: 62, scope: !590)
!596 = !DILocation(line: 575, column: 20, scope: !590)
!597 = !DILocation(line: 577, column: 2, scope: !590)
!598 = !DILocation(line: 577, column: 32, scope: !590)
!599 = !DILocation(line: 578, column: 35, scope: !590)
!600 = !DILocation(line: 578, column: 40, scope: !590)
!601 = !DILocation(line: 580, column: 2, scope: !590)
!602 = !DILocation(line: 580, column: 7, scope: !590)
!603 = !DILocation(line: 580, column: 16, scope: !590)
!604 = !DILocation(line: 580, column: 21, scope: !590)
!605 = !DILocation(line: 581, column: 1, scope: !590)
!606 = distinct !DISubprogram(name: "z_impl_uart_poll_out_u16", scope: !94, file: !94, line: 599, type: !607, scopeLine: 601, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !609)
!607 = !DISubroutineType(types: !608)
!608 = !{null, !100, !270}
!609 = !{!610, !611}
!610 = !DILocalVariable(name: "dev", arg: 1, scope: !606, file: !94, line: 599, type: !100)
!611 = !DILocalVariable(name: "out_u16", arg: 2, scope: !606, file: !94, line: 600, type: !270)
!612 = !DILocation(line: 599, column: 66, scope: !606)
!613 = !DILocation(line: 600, column: 19, scope: !606)
!614 = !DILocation(line: 608, column: 9, scope: !606)
!615 = !DILocation(line: 609, column: 9, scope: !606)
!616 = !DILocation(line: 611, column: 1, scope: !606)
!617 = distinct !DISubprogram(name: "z_impl_uart_configure", scope: !94, file: !94, line: 634, type: !134, scopeLine: 636, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !618)
!618 = !{!619, !620, !621}
!619 = !DILocalVariable(name: "dev", arg: 1, scope: !617, file: !94, line: 634, type: !100)
!620 = !DILocalVariable(name: "cfg", arg: 2, scope: !617, file: !94, line: 635, type: !136)
!621 = !DILocalVariable(name: "api", scope: !617, file: !94, line: 638, type: !91)
!622 = !DILocation(line: 634, column: 62, scope: !617)
!623 = !DILocation(line: 635, column: 32, scope: !617)
!624 = !DILocation(line: 638, column: 2, scope: !617)
!625 = !DILocation(line: 638, column: 32, scope: !617)
!626 = !DILocation(line: 639, column: 37, scope: !617)
!627 = !DILocation(line: 639, column: 42, scope: !617)
!628 = !DILocation(line: 641, column: 6, scope: !629)
!629 = distinct !DILexicalBlock(scope: !617, file: !94, line: 641, column: 6)
!630 = !DILocation(line: 641, column: 11, scope: !629)
!631 = !DILocation(line: 641, column: 21, scope: !629)
!632 = !DILocation(line: 641, column: 6, scope: !617)
!633 = !DILocation(line: 642, column: 3, scope: !634)
!634 = distinct !DILexicalBlock(scope: !629, file: !94, line: 641, column: 27)
!635 = !DILocation(line: 644, column: 9, scope: !617)
!636 = !DILocation(line: 644, column: 14, scope: !617)
!637 = !DILocation(line: 644, column: 24, scope: !617)
!638 = !DILocation(line: 644, column: 29, scope: !617)
!639 = !DILocation(line: 644, column: 2, scope: !617)
!640 = !DILocation(line: 650, column: 1, scope: !617)
!641 = distinct !DISubprogram(name: "z_impl_uart_config_get", scope: !94, file: !94, line: 669, type: !149, scopeLine: 671, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !642)
!642 = !{!643, !644, !645}
!643 = !DILocalVariable(name: "dev", arg: 1, scope: !641, file: !94, line: 669, type: !100)
!644 = !DILocalVariable(name: "cfg", arg: 2, scope: !641, file: !94, line: 670, type: !151)
!645 = !DILocalVariable(name: "api", scope: !641, file: !94, line: 673, type: !91)
!646 = !DILocation(line: 669, column: 63, scope: !641)
!647 = !DILocation(line: 670, column: 27, scope: !641)
!648 = !DILocation(line: 673, column: 2, scope: !641)
!649 = !DILocation(line: 673, column: 32, scope: !641)
!650 = !DILocation(line: 674, column: 37, scope: !641)
!651 = !DILocation(line: 674, column: 42, scope: !641)
!652 = !DILocation(line: 676, column: 6, scope: !653)
!653 = distinct !DILexicalBlock(scope: !641, file: !94, line: 676, column: 6)
!654 = !DILocation(line: 676, column: 11, scope: !653)
!655 = !DILocation(line: 676, column: 22, scope: !653)
!656 = !DILocation(line: 676, column: 6, scope: !641)
!657 = !DILocation(line: 677, column: 3, scope: !658)
!658 = distinct !DILexicalBlock(scope: !653, file: !94, line: 676, column: 28)
!659 = !DILocation(line: 680, column: 9, scope: !641)
!660 = !DILocation(line: 680, column: 14, scope: !641)
!661 = !DILocation(line: 680, column: 25, scope: !641)
!662 = !DILocation(line: 680, column: 30, scope: !641)
!663 = !DILocation(line: 680, column: 2, scope: !641)
!664 = !DILocation(line: 686, column: 1, scope: !641)
!665 = distinct !DISubprogram(name: "z_impl_uart_irq_tx_enable", scope: !94, file: !94, line: 865, type: !166, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !666)
!666 = !{!667, !668}
!667 = !DILocalVariable(name: "dev", arg: 1, scope: !665, file: !94, line: 865, type: !100)
!668 = !DILocalVariable(name: "api", scope: !665, file: !94, line: 868, type: !91)
!669 = !DILocation(line: 865, column: 67, scope: !665)
!670 = !DILocation(line: 868, column: 2, scope: !665)
!671 = !DILocation(line: 868, column: 32, scope: !665)
!672 = !DILocation(line: 869, column: 35, scope: !665)
!673 = !DILocation(line: 869, column: 40, scope: !665)
!674 = !DILocation(line: 871, column: 6, scope: !675)
!675 = distinct !DILexicalBlock(scope: !665, file: !94, line: 871, column: 6)
!676 = !DILocation(line: 871, column: 11, scope: !675)
!677 = !DILocation(line: 871, column: 25, scope: !675)
!678 = !DILocation(line: 871, column: 6, scope: !665)
!679 = !DILocation(line: 872, column: 3, scope: !680)
!680 = distinct !DILexicalBlock(scope: !675, file: !94, line: 871, column: 31)
!681 = !DILocation(line: 872, column: 8, scope: !680)
!682 = !DILocation(line: 872, column: 22, scope: !680)
!683 = !DILocation(line: 873, column: 2, scope: !680)
!684 = !DILocation(line: 877, column: 1, scope: !665)
!685 = distinct !DISubprogram(name: "z_impl_uart_irq_tx_disable", scope: !94, file: !94, line: 886, type: !166, scopeLine: 887, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !686)
!686 = !{!687, !688}
!687 = !DILocalVariable(name: "dev", arg: 1, scope: !685, file: !94, line: 886, type: !100)
!688 = !DILocalVariable(name: "api", scope: !685, file: !94, line: 889, type: !91)
!689 = !DILocation(line: 886, column: 68, scope: !685)
!690 = !DILocation(line: 889, column: 2, scope: !685)
!691 = !DILocation(line: 889, column: 32, scope: !685)
!692 = !DILocation(line: 890, column: 35, scope: !685)
!693 = !DILocation(line: 890, column: 40, scope: !685)
!694 = !DILocation(line: 892, column: 6, scope: !695)
!695 = distinct !DILexicalBlock(scope: !685, file: !94, line: 892, column: 6)
!696 = !DILocation(line: 892, column: 11, scope: !695)
!697 = !DILocation(line: 892, column: 26, scope: !695)
!698 = !DILocation(line: 892, column: 6, scope: !685)
!699 = !DILocation(line: 893, column: 3, scope: !700)
!700 = distinct !DILexicalBlock(scope: !695, file: !94, line: 892, column: 32)
!701 = !DILocation(line: 893, column: 8, scope: !700)
!702 = !DILocation(line: 893, column: 23, scope: !700)
!703 = !DILocation(line: 894, column: 2, scope: !700)
!704 = !DILocation(line: 898, column: 1, scope: !685)
!705 = distinct !DISubprogram(name: "z_impl_uart_irq_rx_enable", scope: !94, file: !94, line: 942, type: !166, scopeLine: 943, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !706)
!706 = !{!707, !708}
!707 = !DILocalVariable(name: "dev", arg: 1, scope: !705, file: !94, line: 942, type: !100)
!708 = !DILocalVariable(name: "api", scope: !705, file: !94, line: 945, type: !91)
!709 = !DILocation(line: 942, column: 67, scope: !705)
!710 = !DILocation(line: 945, column: 2, scope: !705)
!711 = !DILocation(line: 945, column: 32, scope: !705)
!712 = !DILocation(line: 946, column: 35, scope: !705)
!713 = !DILocation(line: 946, column: 40, scope: !705)
!714 = !DILocation(line: 948, column: 6, scope: !715)
!715 = distinct !DILexicalBlock(scope: !705, file: !94, line: 948, column: 6)
!716 = !DILocation(line: 948, column: 11, scope: !715)
!717 = !DILocation(line: 948, column: 25, scope: !715)
!718 = !DILocation(line: 948, column: 6, scope: !705)
!719 = !DILocation(line: 949, column: 3, scope: !720)
!720 = distinct !DILexicalBlock(scope: !715, file: !94, line: 948, column: 31)
!721 = !DILocation(line: 949, column: 8, scope: !720)
!722 = !DILocation(line: 949, column: 22, scope: !720)
!723 = !DILocation(line: 950, column: 2, scope: !720)
!724 = !DILocation(line: 954, column: 1, scope: !705)
!725 = distinct !DISubprogram(name: "z_impl_uart_irq_rx_disable", scope: !94, file: !94, line: 963, type: !166, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !726)
!726 = !{!727, !728}
!727 = !DILocalVariable(name: "dev", arg: 1, scope: !725, file: !94, line: 963, type: !100)
!728 = !DILocalVariable(name: "api", scope: !725, file: !94, line: 966, type: !91)
!729 = !DILocation(line: 963, column: 68, scope: !725)
!730 = !DILocation(line: 966, column: 2, scope: !725)
!731 = !DILocation(line: 966, column: 32, scope: !725)
!732 = !DILocation(line: 967, column: 35, scope: !725)
!733 = !DILocation(line: 967, column: 40, scope: !725)
!734 = !DILocation(line: 969, column: 6, scope: !735)
!735 = distinct !DILexicalBlock(scope: !725, file: !94, line: 969, column: 6)
!736 = !DILocation(line: 969, column: 11, scope: !735)
!737 = !DILocation(line: 969, column: 26, scope: !735)
!738 = !DILocation(line: 969, column: 6, scope: !725)
!739 = !DILocation(line: 970, column: 3, scope: !740)
!740 = distinct !DILexicalBlock(scope: !735, file: !94, line: 969, column: 32)
!741 = !DILocation(line: 970, column: 8, scope: !740)
!742 = !DILocation(line: 970, column: 23, scope: !740)
!743 = !DILocation(line: 971, column: 2, scope: !740)
!744 = !DILocation(line: 975, column: 1, scope: !725)
!745 = distinct !DISubprogram(name: "z_impl_uart_irq_err_enable", scope: !94, file: !94, line: 1054, type: !166, scopeLine: 1055, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !746)
!746 = !{!747, !748}
!747 = !DILocalVariable(name: "dev", arg: 1, scope: !745, file: !94, line: 1054, type: !100)
!748 = !DILocalVariable(name: "api", scope: !745, file: !94, line: 1057, type: !91)
!749 = !DILocation(line: 1054, column: 68, scope: !745)
!750 = !DILocation(line: 1057, column: 2, scope: !745)
!751 = !DILocation(line: 1057, column: 32, scope: !745)
!752 = !DILocation(line: 1058, column: 35, scope: !745)
!753 = !DILocation(line: 1058, column: 40, scope: !745)
!754 = !DILocation(line: 1060, column: 6, scope: !755)
!755 = distinct !DILexicalBlock(scope: !745, file: !94, line: 1060, column: 6)
!756 = !DILocation(line: 1060, column: 11, scope: !755)
!757 = !DILocation(line: 1060, column: 6, scope: !745)
!758 = !DILocation(line: 1061, column: 3, scope: !759)
!759 = distinct !DILexicalBlock(scope: !755, file: !94, line: 1060, column: 27)
!760 = !DILocation(line: 1061, column: 8, scope: !759)
!761 = !DILocation(line: 1061, column: 23, scope: !759)
!762 = !DILocation(line: 1062, column: 2, scope: !759)
!763 = !DILocation(line: 1066, column: 1, scope: !745)
!764 = distinct !DISubprogram(name: "z_impl_uart_irq_err_disable", scope: !94, file: !94, line: 1075, type: !166, scopeLine: 1076, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !765)
!765 = !{!766, !767}
!766 = !DILocalVariable(name: "dev", arg: 1, scope: !764, file: !94, line: 1075, type: !100)
!767 = !DILocalVariable(name: "api", scope: !764, file: !94, line: 1078, type: !91)
!768 = !DILocation(line: 1075, column: 69, scope: !764)
!769 = !DILocation(line: 1078, column: 2, scope: !764)
!770 = !DILocation(line: 1078, column: 32, scope: !764)
!771 = !DILocation(line: 1079, column: 35, scope: !764)
!772 = !DILocation(line: 1079, column: 40, scope: !764)
!773 = !DILocation(line: 1081, column: 6, scope: !774)
!774 = distinct !DILexicalBlock(scope: !764, file: !94, line: 1081, column: 6)
!775 = !DILocation(line: 1081, column: 11, scope: !774)
!776 = !DILocation(line: 1081, column: 6, scope: !764)
!777 = !DILocation(line: 1082, column: 3, scope: !778)
!778 = distinct !DILexicalBlock(scope: !774, file: !94, line: 1081, column: 28)
!779 = !DILocation(line: 1082, column: 8, scope: !778)
!780 = !DILocation(line: 1082, column: 24, scope: !778)
!781 = !DILocation(line: 1083, column: 2, scope: !778)
!782 = !DILocation(line: 1087, column: 1, scope: !764)
!783 = distinct !DISubprogram(name: "z_impl_uart_irq_is_pending", scope: !94, file: !94, line: 1101, type: !130, scopeLine: 1102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !784)
!784 = !{!785, !786}
!785 = !DILocalVariable(name: "dev", arg: 1, scope: !783, file: !94, line: 1101, type: !100)
!786 = !DILocalVariable(name: "api", scope: !783, file: !94, line: 1104, type: !91)
!787 = !DILocation(line: 1101, column: 67, scope: !783)
!788 = !DILocation(line: 1104, column: 2, scope: !783)
!789 = !DILocation(line: 1104, column: 32, scope: !783)
!790 = !DILocation(line: 1105, column: 35, scope: !783)
!791 = !DILocation(line: 1105, column: 40, scope: !783)
!792 = !DILocation(line: 1107, column: 6, scope: !793)
!793 = distinct !DILexicalBlock(scope: !783, file: !94, line: 1107, column: 6)
!794 = !DILocation(line: 1107, column: 11, scope: !793)
!795 = !DILocation(line: 1107, column: 26, scope: !793)
!796 = !DILocation(line: 1107, column: 6, scope: !783)
!797 = !DILocation(line: 1108, column: 3, scope: !798)
!798 = distinct !DILexicalBlock(scope: !793, file: !94, line: 1107, column: 32)
!799 = !DILocation(line: 1110, column: 9, scope: !783)
!800 = !DILocation(line: 1110, column: 14, scope: !783)
!801 = !DILocation(line: 1110, column: 29, scope: !783)
!802 = !DILocation(line: 1110, column: 2, scope: !783)
!803 = !DILocation(line: 1115, column: 1, scope: !783)
!804 = distinct !DISubprogram(name: "z_impl_uart_irq_update", scope: !94, file: !94, line: 1144, type: !130, scopeLine: 1145, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !805)
!805 = !{!806, !807}
!806 = !DILocalVariable(name: "dev", arg: 1, scope: !804, file: !94, line: 1144, type: !100)
!807 = !DILocalVariable(name: "api", scope: !804, file: !94, line: 1147, type: !91)
!808 = !DILocation(line: 1144, column: 63, scope: !804)
!809 = !DILocation(line: 1147, column: 2, scope: !804)
!810 = !DILocation(line: 1147, column: 32, scope: !804)
!811 = !DILocation(line: 1148, column: 35, scope: !804)
!812 = !DILocation(line: 1148, column: 40, scope: !804)
!813 = !DILocation(line: 1150, column: 6, scope: !814)
!814 = distinct !DILexicalBlock(scope: !804, file: !94, line: 1150, column: 6)
!815 = !DILocation(line: 1150, column: 11, scope: !814)
!816 = !DILocation(line: 1150, column: 22, scope: !814)
!817 = !DILocation(line: 1150, column: 6, scope: !804)
!818 = !DILocation(line: 1151, column: 3, scope: !819)
!819 = distinct !DILexicalBlock(scope: !814, file: !94, line: 1150, column: 28)
!820 = !DILocation(line: 1153, column: 9, scope: !804)
!821 = !DILocation(line: 1153, column: 14, scope: !804)
!822 = !DILocation(line: 1153, column: 25, scope: !804)
!823 = !DILocation(line: 1153, column: 2, scope: !804)
!824 = !DILocation(line: 1158, column: 1, scope: !804)
!825 = distinct !DISubprogram(name: "z_impl_uart_tx", scope: !94, file: !94, line: 1282, type: !826, scopeLine: 1285, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !831)
!826 = !DISubroutineType(types: !827)
!827 = !{!90, !100, !156, !828, !830}
!828 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !829, line: 53, baseType: !142)
!829 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/stdio.h", directory: "")
!830 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !119, line: 58, baseType: !90)
!831 = !{!832, !833, !834, !835}
!832 = !DILocalVariable(name: "dev", arg: 1, scope: !825, file: !94, line: 1282, type: !100)
!833 = !DILocalVariable(name: "buf", arg: 2, scope: !825, file: !94, line: 1282, type: !156)
!834 = !DILocalVariable(name: "len", arg: 3, scope: !825, file: !94, line: 1283, type: !828)
!835 = !DILocalVariable(name: "timeout", arg: 4, scope: !825, file: !94, line: 1283, type: !830)
!836 = !DILocation(line: 1282, column: 55, scope: !825)
!837 = !DILocation(line: 1282, column: 75, scope: !825)
!838 = !DILocation(line: 1283, column: 13, scope: !825)
!839 = !DILocation(line: 1283, column: 26, scope: !825)
!840 = !DILocation(line: 1292, column: 9, scope: !825)
!841 = !DILocation(line: 1293, column: 9, scope: !825)
!842 = !DILocation(line: 1294, column: 9, scope: !825)
!843 = !DILocation(line: 1295, column: 9, scope: !825)
!844 = !DILocation(line: 1296, column: 2, scope: !825)
!845 = distinct !DISubprogram(name: "z_impl_uart_tx_u16", scope: !94, file: !94, line: 1320, type: !846, scopeLine: 1324, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !850)
!846 = !DISubroutineType(types: !847)
!847 = !{!90, !100, !848, !828, !830}
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 32)
!849 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !270)
!850 = !{!851, !852, !853, !854}
!851 = !DILocalVariable(name: "dev", arg: 1, scope: !845, file: !94, line: 1320, type: !100)
!852 = !DILocalVariable(name: "buf", arg: 2, scope: !845, file: !94, line: 1321, type: !848)
!853 = !DILocalVariable(name: "len", arg: 3, scope: !845, file: !94, line: 1322, type: !828)
!854 = !DILocalVariable(name: "timeout", arg: 4, scope: !845, file: !94, line: 1322, type: !830)
!855 = !DILocation(line: 1320, column: 59, scope: !845)
!856 = !DILocation(line: 1321, column: 26, scope: !845)
!857 = !DILocation(line: 1322, column: 17, scope: !845)
!858 = !DILocation(line: 1322, column: 30, scope: !845)
!859 = !DILocation(line: 1331, column: 9, scope: !845)
!860 = !DILocation(line: 1332, column: 9, scope: !845)
!861 = !DILocation(line: 1333, column: 9, scope: !845)
!862 = !DILocation(line: 1334, column: 9, scope: !845)
!863 = !DILocation(line: 1335, column: 2, scope: !845)
!864 = distinct !DISubprogram(name: "z_impl_uart_tx_abort", scope: !94, file: !94, line: 1353, type: !130, scopeLine: 1354, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !865)
!865 = !{!866}
!866 = !DILocalVariable(name: "dev", arg: 1, scope: !864, file: !94, line: 1353, type: !100)
!867 = !DILocation(line: 1353, column: 61, scope: !864)
!868 = !DILocation(line: 1361, column: 9, scope: !864)
!869 = !DILocation(line: 1362, column: 2, scope: !864)
!870 = distinct !DISubprogram(name: "z_impl_uart_rx_enable", scope: !94, file: !94, line: 1391, type: !871, scopeLine: 1394, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !873)
!871 = !DISubroutineType(types: !872)
!872 = !{!90, !100, !162, !828, !830}
!873 = !{!874, !875, !876, !877}
!874 = !DILocalVariable(name: "dev", arg: 1, scope: !870, file: !94, line: 1391, type: !100)
!875 = !DILocalVariable(name: "buf", arg: 2, scope: !870, file: !94, line: 1392, type: !162)
!876 = !DILocalVariable(name: "len", arg: 3, scope: !870, file: !94, line: 1393, type: !828)
!877 = !DILocalVariable(name: "timeout", arg: 4, scope: !870, file: !94, line: 1393, type: !830)
!878 = !DILocation(line: 1391, column: 62, scope: !870)
!879 = !DILocation(line: 1392, column: 15, scope: !870)
!880 = !DILocation(line: 1393, column: 13, scope: !870)
!881 = !DILocation(line: 1393, column: 26, scope: !870)
!882 = !DILocation(line: 1401, column: 9, scope: !870)
!883 = !DILocation(line: 1402, column: 9, scope: !870)
!884 = !DILocation(line: 1403, column: 9, scope: !870)
!885 = !DILocation(line: 1404, column: 9, scope: !870)
!886 = !DILocation(line: 1405, column: 2, scope: !870)
!887 = distinct !DISubprogram(name: "z_impl_uart_rx_enable_u16", scope: !94, file: !94, line: 1433, type: !888, scopeLine: 1436, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !890)
!888 = !DISubroutineType(types: !889)
!889 = !{!90, !100, !581, !828, !830}
!890 = !{!891, !892, !893, !894}
!891 = !DILocalVariable(name: "dev", arg: 1, scope: !887, file: !94, line: 1433, type: !100)
!892 = !DILocalVariable(name: "buf", arg: 2, scope: !887, file: !94, line: 1434, type: !581)
!893 = !DILocalVariable(name: "len", arg: 3, scope: !887, file: !94, line: 1434, type: !828)
!894 = !DILocalVariable(name: "timeout", arg: 4, scope: !887, file: !94, line: 1435, type: !830)
!895 = !DILocation(line: 1433, column: 66, scope: !887)
!896 = !DILocation(line: 1434, column: 20, scope: !887)
!897 = !DILocation(line: 1434, column: 32, scope: !887)
!898 = !DILocation(line: 1435, column: 18, scope: !887)
!899 = !DILocation(line: 1443, column: 9, scope: !887)
!900 = !DILocation(line: 1444, column: 9, scope: !887)
!901 = !DILocation(line: 1445, column: 9, scope: !887)
!902 = !DILocation(line: 1446, column: 9, scope: !887)
!903 = !DILocation(line: 1447, column: 2, scope: !887)
!904 = distinct !DISubprogram(name: "z_impl_uart_rx_disable", scope: !94, file: !94, line: 1541, type: !130, scopeLine: 1542, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !905)
!905 = !{!906}
!906 = !DILocalVariable(name: "dev", arg: 1, scope: !904, file: !94, line: 1541, type: !100)
!907 = !DILocation(line: 1541, column: 63, scope: !904)
!908 = !DILocation(line: 1549, column: 9, scope: !904)
!909 = !DILocation(line: 1550, column: 2, scope: !904)
!910 = distinct !DISubprogram(name: "z_impl_uart_line_ctrl_set", scope: !94, file: !94, line: 1573, type: !911, scopeLine: 1575, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !913)
!911 = !DISubroutineType(types: !912)
!912 = !{!90, !100, !141, !141}
!913 = !{!914, !915, !916}
!914 = !DILocalVariable(name: "dev", arg: 1, scope: !910, file: !94, line: 1573, type: !100)
!915 = !DILocalVariable(name: "ctrl", arg: 2, scope: !910, file: !94, line: 1574, type: !141)
!916 = !DILocalVariable(name: "val", arg: 3, scope: !910, file: !94, line: 1574, type: !141)
!917 = !DILocation(line: 1573, column: 66, scope: !910)
!918 = !DILocation(line: 1574, column: 19, scope: !910)
!919 = !DILocation(line: 1574, column: 34, scope: !910)
!920 = !DILocation(line: 1585, column: 9, scope: !910)
!921 = !DILocation(line: 1586, column: 9, scope: !910)
!922 = !DILocation(line: 1587, column: 9, scope: !910)
!923 = !DILocation(line: 1588, column: 2, scope: !910)
!924 = distinct !DISubprogram(name: "z_impl_uart_line_ctrl_get", scope: !94, file: !94, line: 1607, type: !925, scopeLine: 1609, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !928)
!925 = !DISubroutineType(types: !926)
!926 = !{!90, !100, !141, !927}
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 32)
!928 = !{!929, !930, !931}
!929 = !DILocalVariable(name: "dev", arg: 1, scope: !924, file: !94, line: 1607, type: !100)
!930 = !DILocalVariable(name: "ctrl", arg: 2, scope: !924, file: !94, line: 1608, type: !141)
!931 = !DILocalVariable(name: "val", arg: 3, scope: !924, file: !94, line: 1608, type: !927)
!932 = !DILocation(line: 1607, column: 66, scope: !924)
!933 = !DILocation(line: 1608, column: 19, scope: !924)
!934 = !DILocation(line: 1608, column: 35, scope: !924)
!935 = !DILocation(line: 1619, column: 9, scope: !924)
!936 = !DILocation(line: 1620, column: 9, scope: !924)
!937 = !DILocation(line: 1621, column: 9, scope: !924)
!938 = !DILocation(line: 1622, column: 2, scope: !924)
!939 = distinct !DISubprogram(name: "z_impl_uart_drv_cmd", scope: !94, file: !94, line: 1643, type: !911, scopeLine: 1645, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !940)
!940 = !{!941, !942, !943}
!941 = !DILocalVariable(name: "dev", arg: 1, scope: !939, file: !94, line: 1643, type: !100)
!942 = !DILocalVariable(name: "cmd", arg: 2, scope: !939, file: !94, line: 1643, type: !141)
!943 = !DILocalVariable(name: "p", arg: 3, scope: !939, file: !94, line: 1644, type: !141)
!944 = !DILocation(line: 1643, column: 60, scope: !939)
!945 = !DILocation(line: 1643, column: 74, scope: !939)
!946 = !DILocation(line: 1644, column: 20, scope: !939)
!947 = !DILocation(line: 1655, column: 9, scope: !939)
!948 = !DILocation(line: 1656, column: 9, scope: !939)
!949 = !DILocation(line: 1657, column: 9, scope: !939)
!950 = !DILocation(line: 1658, column: 2, scope: !939)
!951 = distinct !DISubprogram(name: "uart_register_input", scope: !189, file: !189, line: 587, type: !952, scopeLine: 589, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !961)
!952 = !DISubroutineType(types: !953)
!953 = !{null, !954, !954, !958}
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !955, size: 32)
!955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_fifo", file: !306, line: 2369, size: 128, elements: !956)
!956 = !{!957}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "_queue", scope: !955, file: !306, line: 2370, baseType: !451, size: 128)
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 32)
!959 = !DISubroutineType(types: !960)
!960 = !{!118, !502, !118}
!961 = !{!962, !963, !964}
!962 = !DILocalVariable(name: "avail", arg: 1, scope: !951, file: !189, line: 587, type: !954)
!963 = !DILocalVariable(name: "lines", arg: 2, scope: !951, file: !189, line: 587, type: !954)
!964 = !DILocalVariable(name: "completion", arg: 3, scope: !951, file: !189, line: 588, type: !958)
!965 = !DILocation(line: 587, column: 41, scope: !951)
!966 = !DILocation(line: 587, column: 63, scope: !951)
!967 = !DILocation(line: 588, column: 15, scope: !951)
!968 = !DILocation(line: 590, column: 9, scope: !951)
!969 = !DILocation(line: 591, column: 9, scope: !951)
!970 = !DILocation(line: 592, column: 9, scope: !951)
!971 = !DILocation(line: 593, column: 1, scope: !951)
!972 = distinct !DISubprogram(name: "uart_console_init", scope: !189, file: !189, line: 615, type: !200, scopeLine: 616, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !323)
!973 = !DILocation(line: 617, column: 7, scope: !974)
!974 = distinct !DILexicalBlock(scope: !972, file: !189, line: 617, column: 6)
!975 = !DILocation(line: 617, column: 6, scope: !972)
!976 = !DILocation(line: 618, column: 3, scope: !977)
!977 = distinct !DILexicalBlock(scope: !974, file: !189, line: 617, column: 42)
!978 = !DILocation(line: 621, column: 2, scope: !972)
!979 = !DILocation(line: 623, column: 2, scope: !972)
!980 = !DILocation(line: 624, column: 1, scope: !972)
!981 = !DISubprogram(name: "z_timeout_expires", scope: !306, file: !306, line: 642, type: !982, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !323)
!982 = !DISubroutineType(types: !983)
!983 = !{!367, !984}
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 32)
!985 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !275)
!986 = !DISubprogram(name: "z_timeout_remaining", scope: !306, file: !306, line: 643, type: !982, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !323)
!987 = distinct !DISubprogram(name: "sys_sflist_is_empty", scope: !455, file: !455, line: 335, type: !988, scopeLine: 335, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !991)
!988 = !DISubroutineType(types: !989)
!989 = !{!121, !990}
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 32)
!991 = !{!992}
!992 = !DILocalVariable(name: "list", arg: 1, scope: !987, file: !455, line: 335, type: !990)
!993 = !DILocation(line: 335, column: 55, scope: !987)
!994 = !DILocation(line: 335, column: 92, scope: !987)
!995 = !DILocation(line: 335, column: 71, scope: !987)
!996 = !DILocation(line: 335, column: 98, scope: !987)
!997 = !DILocation(line: 335, column: 63, scope: !987)
!998 = distinct !DISubprogram(name: "sys_sflist_peek_head", scope: !455, file: !455, line: 255, type: !999, scopeLine: 256, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1001)
!999 = !DISubroutineType(types: !1000)
!1000 = !{!459, !990}
!1001 = !{!1002}
!1002 = !DILocalVariable(name: "list", arg: 1, scope: !998, file: !455, line: 255, type: !990)
!1003 = !DILocation(line: 255, column: 64, scope: !998)
!1004 = !DILocation(line: 257, column: 9, scope: !998)
!1005 = !DILocation(line: 257, column: 15, scope: !998)
!1006 = !DILocation(line: 257, column: 2, scope: !998)
!1007 = !DISubprogram(name: "z_device_is_ready", scope: !103, file: !103, line: 724, type: !525, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !323)
!1008 = distinct !DISubprogram(name: "device_is_ready", scope: !1009, file: !1009, line: 49, type: !525, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1010)
!1009 = !DIFile(filename: "zephyr/include/generated/syscalls/device.h", directory: "/home/sri/zephyrproject/zephyr/build")
!1010 = !{!1011}
!1011 = !DILocalVariable(name: "dev", arg: 1, scope: !1008, file: !1009, line: 49, type: !100)
!1012 = !DILocation(line: 49, column: 59, scope: !1008)
!1013 = !DILocation(line: 57, column: 2, scope: !1008)
!1014 = !DILocation(line: 57, column: 7, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !1008, file: !1009, line: 57, column: 5)
!1016 = !{i64 187185}
!1017 = !DILocation(line: 57, column: 47, scope: !1015)
!1018 = !DILocation(line: 58, column: 32, scope: !1008)
!1019 = !DILocation(line: 58, column: 9, scope: !1008)
!1020 = !DILocation(line: 58, column: 2, scope: !1008)
!1021 = distinct !DISubprogram(name: "uart_console_hook_install", scope: !189, file: !189, line: 600, type: !1022, scopeLine: 601, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !323)
!1022 = !DISubroutineType(types: !1023)
!1023 = !{null}
!1024 = !DILocation(line: 603, column: 2, scope: !1021)
!1025 = !DILocation(line: 606, column: 2, scope: !1021)
!1026 = !DILocation(line: 608, column: 1, scope: !1021)
!1027 = !DISubprogram(name: "__stdout_hook_install", scope: !189, file: !189, line: 115, type: !1028, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !323)
!1028 = !DISubroutineType(types: !1029)
!1029 = !{null, !1030}
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 32)
!1031 = !DISubroutineType(types: !1032)
!1032 = !{!90, !90}
!1033 = distinct !DISubprogram(name: "console_out", scope: !189, file: !189, line: 78, type: !1031, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1034)
!1034 = !{!1035}
!1035 = !DILocalVariable(name: "c", arg: 1, scope: !1033, file: !189, line: 78, type: !90)
!1036 = !DILocation(line: 78, column: 28, scope: !1033)
!1037 = !DILocation(line: 90, column: 6, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !1033, file: !189, line: 90, column: 6)
!1039 = !DILocation(line: 90, column: 6, scope: !1033)
!1040 = !DILocation(line: 91, column: 7, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1042, file: !189, line: 91, column: 7)
!1042 = distinct !DILexicalBlock(scope: !1038, file: !189, line: 90, column: 54)
!1043 = !DILocation(line: 91, column: 47, scope: !1041)
!1044 = !DILocation(line: 91, column: 7, scope: !1042)
!1045 = !DILocation(line: 95, column: 11, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !1041, file: !189, line: 91, column: 52)
!1047 = !DILocation(line: 95, column: 4, scope: !1046)
!1048 = !DILocation(line: 97, column: 2, scope: !1042)
!1049 = !DILocation(line: 99, column: 14, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !1033, file: !189, line: 99, column: 6)
!1051 = !DILocation(line: 99, column: 11, scope: !1050)
!1052 = !DILocation(line: 99, column: 6, scope: !1033)
!1053 = !DILocation(line: 100, column: 3, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !1050, file: !189, line: 99, column: 17)
!1055 = !DILocation(line: 101, column: 2, scope: !1054)
!1056 = !DILocation(line: 102, column: 34, scope: !1033)
!1057 = !DILocation(line: 102, column: 2, scope: !1033)
!1058 = !DILocation(line: 104, column: 6, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1033, file: !189, line: 104, column: 6)
!1060 = !DILocation(line: 104, column: 6, scope: !1033)
!1061 = !DILocation(line: 106, column: 9, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !1059, file: !189, line: 104, column: 54)
!1063 = !DILocation(line: 107, column: 2, scope: !1062)
!1064 = !DILocation(line: 109, column: 9, scope: !1033)
!1065 = !DILocation(line: 109, column: 2, scope: !1033)
!1066 = !DILocation(line: 110, column: 1, scope: !1033)
!1067 = !DISubprogram(name: "__printk_hook_install", scope: !189, file: !189, line: 119, type: !1028, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !323)
!1068 = distinct !DISubprogram(name: "pm_device_runtime_is_enabled", scope: !1069, file: !1069, line: 197, type: !525, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1070)
!1069 = !DIFile(filename: "include/zephyr/pm/device_runtime.h", directory: "/home/sri/zephyrproject/zephyr")
!1070 = !{!1071}
!1071 = !DILocalVariable(name: "dev", arg: 1, scope: !1068, file: !1069, line: 197, type: !100)
!1072 = !DILocation(line: 197, column: 71, scope: !1068)
!1073 = !DILocation(line: 199, column: 9, scope: !1068)
!1074 = !DILocation(line: 200, column: 2, scope: !1068)
!1075 = distinct !DISubprogram(name: "pm_device_runtime_get", scope: !1069, file: !1069, line: 179, type: !130, scopeLine: 180, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1076)
!1076 = !{!1077}
!1077 = !DILocalVariable(name: "dev", arg: 1, scope: !1075, file: !1069, line: 179, type: !100)
!1078 = !DILocation(line: 179, column: 62, scope: !1075)
!1079 = !DILocation(line: 181, column: 9, scope: !1075)
!1080 = !DILocation(line: 182, column: 2, scope: !1075)
!1081 = distinct !DISubprogram(name: "uart_poll_out", scope: !1082, file: !1082, line: 97, type: !126, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1083)
!1082 = !DIFile(filename: "zephyr/include/generated/syscalls/uart.h", directory: "/home/sri/zephyrproject/zephyr/build")
!1083 = !{!1084, !1085}
!1084 = !DILocalVariable(name: "dev", arg: 1, scope: !1081, file: !1082, line: 97, type: !100)
!1085 = !DILocalVariable(name: "out_char", arg: 2, scope: !1081, file: !1082, line: 97, type: !7)
!1086 = !DILocation(line: 97, column: 56, scope: !1081)
!1087 = !DILocation(line: 97, column: 75, scope: !1081)
!1088 = !DILocation(line: 107, column: 2, scope: !1081)
!1089 = !DILocation(line: 107, column: 7, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1081, file: !1082, line: 107, column: 5)
!1091 = !{i64 205509}
!1092 = !DILocation(line: 107, column: 47, scope: !1090)
!1093 = !DILocation(line: 108, column: 23, scope: !1081)
!1094 = !DILocation(line: 108, column: 28, scope: !1081)
!1095 = !DILocation(line: 108, column: 2, scope: !1081)
!1096 = !DILocation(line: 109, column: 1, scope: !1081)
!1097 = distinct !DISubprogram(name: "pm_device_runtime_put", scope: !1069, file: !1069, line: 185, type: !130, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1098)
!1098 = !{!1099}
!1099 = !DILocalVariable(name: "dev", arg: 1, scope: !1097, file: !1069, line: 185, type: !100)
!1100 = !DILocation(line: 185, column: 62, scope: !1097)
!1101 = !DILocation(line: 187, column: 9, scope: !1097)
!1102 = !DILocation(line: 188, column: 2, scope: !1097)
