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
@__device_dts_ord_52 = external constant %struct.device, align 4
@llvm.used = appending global [1 x ptr] [ptr @__init_uart_console_init], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_k_object_access_grant(ptr noundef %0, ptr noundef %1) #0 !dbg !213 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !331, metadata !DIExpression()), !dbg !332
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !333, metadata !DIExpression()), !dbg !334
  %5 = load ptr, ptr %3, align 4, !dbg !335
  %6 = load ptr, ptr %4, align 4, !dbg !336
  ret void, !dbg !337
}

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_k_object_release(ptr noundef %0) #0 !dbg !338 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !341, metadata !DIExpression()), !dbg !342
  %3 = load ptr, ptr %2, align 4, !dbg !343
  ret void, !dbg !344
}

; Function Attrs: noinline nounwind optnone
define internal ptr @z_impl_k_object_alloc(i8 noundef zeroext %0) #0 !dbg !345 {
  %2 = alloca i8, align 1
  store i8 %0, ptr %2, align 1
  call void @llvm.dbg.declare(metadata ptr %2, metadata !348, metadata !DIExpression()), !dbg !349
  %3 = load i8, ptr %2, align 1, !dbg !350
  ret ptr null, !dbg !351
}

; Function Attrs: noinline nounwind optnone
define internal ptr @z_impl_k_object_alloc_size(i8 noundef zeroext %0, i32 noundef %1) #0 !dbg !352 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8 %0, ptr %3, align 1
  call void @llvm.dbg.declare(metadata ptr %3, metadata !355, metadata !DIExpression()), !dbg !356
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !357, metadata !DIExpression()), !dbg !358
  %5 = load i8, ptr %3, align 1, !dbg !359
  %6 = load i32, ptr %4, align 4, !dbg !360
  ret ptr null, !dbg !361
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_thread_timeout_expires_ticks(ptr noundef %0) #0 !dbg !362 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !369, metadata !DIExpression()), !dbg !370
  %3 = load ptr, ptr %2, align 4, !dbg !371
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !372
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !373
  %6 = call i64 @z_timeout_expires(ptr noundef %5), !dbg !374
  ret i64 %6, !dbg !375
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_thread_timeout_remaining_ticks(ptr noundef %0) #0 !dbg !376 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !377, metadata !DIExpression()), !dbg !378
  %3 = load ptr, ptr %2, align 4, !dbg !379
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !380
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !381
  %6 = call i64 @z_timeout_remaining(ptr noundef %5), !dbg !382
  ret i64 %6, !dbg !383
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_timer_expires_ticks(ptr noundef %0) #0 !dbg !384 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !406, metadata !DIExpression()), !dbg !407
  %3 = load ptr, ptr %2, align 4, !dbg !408
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !409
  %5 = call i64 @z_timeout_expires(ptr noundef %4), !dbg !410
  ret i64 %5, !dbg !411
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_timer_remaining_ticks(ptr noundef %0) #0 !dbg !412 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !413, metadata !DIExpression()), !dbg !414
  %3 = load ptr, ptr %2, align 4, !dbg !415
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !416
  %5 = call i64 @z_timeout_remaining(ptr noundef %4), !dbg !417
  ret i64 %5, !dbg !418
}

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_k_timer_user_data_set(ptr noundef %0, ptr noundef %1) #0 !dbg !419 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !422, metadata !DIExpression()), !dbg !423
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !424, metadata !DIExpression()), !dbg !425
  %5 = load ptr, ptr %4, align 4, !dbg !426
  %6 = load ptr, ptr %3, align 4, !dbg !427
  %7 = getelementptr inbounds %struct.k_timer, ptr %6, i32 0, i32 6, !dbg !428
  store ptr %5, ptr %7, align 4, !dbg !429
  ret void, !dbg !430
}

; Function Attrs: noinline nounwind optnone
define internal ptr @z_impl_k_timer_user_data_get(ptr noundef %0) #0 !dbg !431 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !434, metadata !DIExpression()), !dbg !435
  %3 = load ptr, ptr %2, align 4, !dbg !436
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 6, !dbg !437
  %5 = load ptr, ptr %4, align 4, !dbg !437
  ret ptr %5, !dbg !438
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_queue_is_empty(ptr noundef %0) #0 !dbg !439 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !460, metadata !DIExpression()), !dbg !461
  %3 = load ptr, ptr %2, align 4, !dbg !462
  %4 = getelementptr inbounds %struct.k_queue, ptr %3, i32 0, i32 0, !dbg !463
  %5 = call zeroext i1 @sys_sflist_is_empty(ptr noundef %4), !dbg !464
  %6 = zext i1 %5 to i32, !dbg !465
  ret i32 %6, !dbg !466
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_sem_count_get(ptr noundef %0) #0 !dbg !467 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !476, metadata !DIExpression()), !dbg !477
  %3 = load ptr, ptr %2, align 4, !dbg !478
  %4 = getelementptr inbounds %struct.k_sem, ptr %3, i32 0, i32 1, !dbg !479
  %5 = load i32, ptr %4, align 4, !dbg !479
  ret i32 %5, !dbg !480
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_msgq_num_free_get(ptr noundef %0) #0 !dbg !481 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !498, metadata !DIExpression()), !dbg !499
  %3 = load ptr, ptr %2, align 4, !dbg !500
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 3, !dbg !501
  %5 = load i32, ptr %4, align 4, !dbg !501
  %6 = load ptr, ptr %2, align 4, !dbg !502
  %7 = getelementptr inbounds %struct.k_msgq, ptr %6, i32 0, i32 8, !dbg !503
  %8 = load i32, ptr %7, align 4, !dbg !503
  %9 = sub i32 %5, %8, !dbg !504
  ret i32 %9, !dbg !505
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_msgq_num_used_get(ptr noundef %0) #0 !dbg !506 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !507, metadata !DIExpression()), !dbg !508
  %3 = load ptr, ptr %2, align 4, !dbg !509
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 8, !dbg !510
  %5 = load i32, ptr %4, align 4, !dbg !510
  ret i32 %5, !dbg !511
}

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @z_impl_device_is_ready(ptr noundef %0) #0 !dbg !512 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !515, metadata !DIExpression()), !dbg !516
  %3 = load ptr, ptr %2, align 4, !dbg !517
  %4 = call zeroext i1 @z_device_is_ready(ptr noundef %3), !dbg !518
  ret i1 %4, !dbg !519
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_uart_err_check(ptr noundef %0) #0 !dbg !520 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !521, metadata !DIExpression()), !dbg !522
  call void @llvm.dbg.declare(metadata ptr %4, metadata !523, metadata !DIExpression()), !dbg !524
  %5 = load ptr, ptr %3, align 4, !dbg !525
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 2, !dbg !526
  %7 = load ptr, ptr %6, align 4, !dbg !526
  store ptr %7, ptr %4, align 4, !dbg !524
  %8 = load ptr, ptr %4, align 4, !dbg !527
  %9 = getelementptr inbounds %struct.uart_driver_api, ptr %8, i32 0, i32 2, !dbg !529
  %10 = load ptr, ptr %9, align 4, !dbg !529
  %11 = icmp eq ptr %10, null, !dbg !530
  br i1 %11, label %12, label %13, !dbg !531

12:                                               ; preds = %1
  store i32 -88, ptr %2, align 4, !dbg !532
  br label %19, !dbg !532

13:                                               ; preds = %1
  %14 = load ptr, ptr %4, align 4, !dbg !534
  %15 = getelementptr inbounds %struct.uart_driver_api, ptr %14, i32 0, i32 2, !dbg !535
  %16 = load ptr, ptr %15, align 4, !dbg !535
  %17 = load ptr, ptr %3, align 4, !dbg !536
  %18 = call i32 %16(ptr noundef %17), !dbg !534
  store i32 %18, ptr %2, align 4, !dbg !537
  br label %19, !dbg !537

19:                                               ; preds = %13, %12
  %20 = load i32, ptr %2, align 4, !dbg !538
  ret i32 %20, !dbg !538
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_uart_poll_in(ptr noundef %0, ptr noundef %1) #0 !dbg !539 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !540, metadata !DIExpression()), !dbg !541
  store ptr %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !542, metadata !DIExpression()), !dbg !543
  call void @llvm.dbg.declare(metadata ptr %6, metadata !544, metadata !DIExpression()), !dbg !545
  %7 = load ptr, ptr %4, align 4, !dbg !546
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 2, !dbg !547
  %9 = load ptr, ptr %8, align 4, !dbg !547
  store ptr %9, ptr %6, align 4, !dbg !545
  %10 = load ptr, ptr %6, align 4, !dbg !548
  %11 = getelementptr inbounds %struct.uart_driver_api, ptr %10, i32 0, i32 0, !dbg !550
  %12 = load ptr, ptr %11, align 4, !dbg !550
  %13 = icmp eq ptr %12, null, !dbg !551
  br i1 %13, label %14, label %15, !dbg !552

14:                                               ; preds = %2
  store i32 -88, ptr %3, align 4, !dbg !553
  br label %22, !dbg !553

15:                                               ; preds = %2
  %16 = load ptr, ptr %6, align 4, !dbg !555
  %17 = getelementptr inbounds %struct.uart_driver_api, ptr %16, i32 0, i32 0, !dbg !556
  %18 = load ptr, ptr %17, align 4, !dbg !556
  %19 = load ptr, ptr %4, align 4, !dbg !557
  %20 = load ptr, ptr %5, align 4, !dbg !558
  %21 = call i32 %18(ptr noundef %19, ptr noundef %20), !dbg !555
  store i32 %21, ptr %3, align 4, !dbg !559
  br label %22, !dbg !559

22:                                               ; preds = %15, %14
  %23 = load i32, ptr %3, align 4, !dbg !560
  ret i32 %23, !dbg !560
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_uart_poll_in_u16(ptr noundef %0, ptr noundef %1) #0 !dbg !561 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !565, metadata !DIExpression()), !dbg !566
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !567, metadata !DIExpression()), !dbg !568
  %5 = load ptr, ptr %3, align 4, !dbg !569
  %6 = load ptr, ptr %4, align 4, !dbg !570
  ret i32 -134, !dbg !571
}

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_uart_poll_out(ptr noundef %0, i8 noundef zeroext %1) #0 !dbg !572 {
  %3 = alloca ptr, align 4
  %4 = alloca i8, align 1
  %5 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !573, metadata !DIExpression()), !dbg !574
  store i8 %1, ptr %4, align 1
  call void @llvm.dbg.declare(metadata ptr %4, metadata !575, metadata !DIExpression()), !dbg !576
  call void @llvm.dbg.declare(metadata ptr %5, metadata !577, metadata !DIExpression()), !dbg !578
  %6 = load ptr, ptr %3, align 4, !dbg !579
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 2, !dbg !580
  %8 = load ptr, ptr %7, align 4, !dbg !580
  store ptr %8, ptr %5, align 4, !dbg !578
  %9 = load ptr, ptr %5, align 4, !dbg !581
  %10 = getelementptr inbounds %struct.uart_driver_api, ptr %9, i32 0, i32 1, !dbg !582
  %11 = load ptr, ptr %10, align 4, !dbg !582
  %12 = load ptr, ptr %3, align 4, !dbg !583
  %13 = load i8, ptr %4, align 1, !dbg !584
  call void %11(ptr noundef %12, i8 noundef zeroext %13), !dbg !581
  ret void, !dbg !585
}

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_uart_poll_out_u16(ptr noundef %0, i16 noundef zeroext %1) #0 !dbg !586 {
  %3 = alloca ptr, align 4
  %4 = alloca i16, align 2
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !589, metadata !DIExpression()), !dbg !590
  store i16 %1, ptr %4, align 2
  call void @llvm.dbg.declare(metadata ptr %4, metadata !591, metadata !DIExpression()), !dbg !592
  %5 = load ptr, ptr %3, align 4, !dbg !593
  %6 = load i16, ptr %4, align 2, !dbg !594
  ret void, !dbg !595
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_uart_configure(ptr noundef %0, ptr noundef %1) #0 !dbg !596 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !597, metadata !DIExpression()), !dbg !598
  store ptr %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !599, metadata !DIExpression()), !dbg !600
  call void @llvm.dbg.declare(metadata ptr %6, metadata !601, metadata !DIExpression()), !dbg !602
  %7 = load ptr, ptr %4, align 4, !dbg !603
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 2, !dbg !604
  %9 = load ptr, ptr %8, align 4, !dbg !604
  store ptr %9, ptr %6, align 4, !dbg !602
  %10 = load ptr, ptr %6, align 4, !dbg !605
  %11 = getelementptr inbounds %struct.uart_driver_api, ptr %10, i32 0, i32 3, !dbg !607
  %12 = load ptr, ptr %11, align 4, !dbg !607
  %13 = icmp eq ptr %12, null, !dbg !608
  br i1 %13, label %14, label %15, !dbg !609

14:                                               ; preds = %2
  store i32 -88, ptr %3, align 4, !dbg !610
  br label %22, !dbg !610

15:                                               ; preds = %2
  %16 = load ptr, ptr %6, align 4, !dbg !612
  %17 = getelementptr inbounds %struct.uart_driver_api, ptr %16, i32 0, i32 3, !dbg !613
  %18 = load ptr, ptr %17, align 4, !dbg !613
  %19 = load ptr, ptr %4, align 4, !dbg !614
  %20 = load ptr, ptr %5, align 4, !dbg !615
  %21 = call i32 %18(ptr noundef %19, ptr noundef %20), !dbg !612
  store i32 %21, ptr %3, align 4, !dbg !616
  br label %22, !dbg !616

22:                                               ; preds = %15, %14
  %23 = load i32, ptr %3, align 4, !dbg !617
  ret i32 %23, !dbg !617
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_uart_config_get(ptr noundef %0, ptr noundef %1) #0 !dbg !618 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !619, metadata !DIExpression()), !dbg !620
  store ptr %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !621, metadata !DIExpression()), !dbg !622
  call void @llvm.dbg.declare(metadata ptr %6, metadata !623, metadata !DIExpression()), !dbg !624
  %7 = load ptr, ptr %4, align 4, !dbg !625
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 2, !dbg !626
  %9 = load ptr, ptr %8, align 4, !dbg !626
  store ptr %9, ptr %6, align 4, !dbg !624
  %10 = load ptr, ptr %6, align 4, !dbg !627
  %11 = getelementptr inbounds %struct.uart_driver_api, ptr %10, i32 0, i32 4, !dbg !629
  %12 = load ptr, ptr %11, align 4, !dbg !629
  %13 = icmp eq ptr %12, null, !dbg !630
  br i1 %13, label %14, label %15, !dbg !631

14:                                               ; preds = %2
  store i32 -88, ptr %3, align 4, !dbg !632
  br label %22, !dbg !632

15:                                               ; preds = %2
  %16 = load ptr, ptr %6, align 4, !dbg !634
  %17 = getelementptr inbounds %struct.uart_driver_api, ptr %16, i32 0, i32 4, !dbg !635
  %18 = load ptr, ptr %17, align 4, !dbg !635
  %19 = load ptr, ptr %4, align 4, !dbg !636
  %20 = load ptr, ptr %5, align 4, !dbg !637
  %21 = call i32 %18(ptr noundef %19, ptr noundef %20), !dbg !634
  store i32 %21, ptr %3, align 4, !dbg !638
  br label %22, !dbg !638

22:                                               ; preds = %15, %14
  %23 = load i32, ptr %3, align 4, !dbg !639
  ret i32 %23, !dbg !639
}

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_uart_irq_tx_enable(ptr noundef %0) #0 !dbg !640 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !641, metadata !DIExpression()), !dbg !642
  call void @llvm.dbg.declare(metadata ptr %3, metadata !643, metadata !DIExpression()), !dbg !644
  %4 = load ptr, ptr %2, align 4, !dbg !645
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 2, !dbg !646
  %6 = load ptr, ptr %5, align 4, !dbg !646
  store ptr %6, ptr %3, align 4, !dbg !644
  %7 = load ptr, ptr %3, align 4, !dbg !647
  %8 = getelementptr inbounds %struct.uart_driver_api, ptr %7, i32 0, i32 7, !dbg !649
  %9 = load ptr, ptr %8, align 4, !dbg !649
  %10 = icmp ne ptr %9, null, !dbg !650
  br i1 %10, label %11, label %16, !dbg !651

11:                                               ; preds = %1
  %12 = load ptr, ptr %3, align 4, !dbg !652
  %13 = getelementptr inbounds %struct.uart_driver_api, ptr %12, i32 0, i32 7, !dbg !654
  %14 = load ptr, ptr %13, align 4, !dbg !654
  %15 = load ptr, ptr %2, align 4, !dbg !655
  call void %14(ptr noundef %15), !dbg !652
  br label %16, !dbg !656

16:                                               ; preds = %11, %1
  ret void, !dbg !657
}

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_uart_irq_tx_disable(ptr noundef %0) #0 !dbg !658 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !659, metadata !DIExpression()), !dbg !660
  call void @llvm.dbg.declare(metadata ptr %3, metadata !661, metadata !DIExpression()), !dbg !662
  %4 = load ptr, ptr %2, align 4, !dbg !663
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 2, !dbg !664
  %6 = load ptr, ptr %5, align 4, !dbg !664
  store ptr %6, ptr %3, align 4, !dbg !662
  %7 = load ptr, ptr %3, align 4, !dbg !665
  %8 = getelementptr inbounds %struct.uart_driver_api, ptr %7, i32 0, i32 8, !dbg !667
  %9 = load ptr, ptr %8, align 4, !dbg !667
  %10 = icmp ne ptr %9, null, !dbg !668
  br i1 %10, label %11, label %16, !dbg !669

11:                                               ; preds = %1
  %12 = load ptr, ptr %3, align 4, !dbg !670
  %13 = getelementptr inbounds %struct.uart_driver_api, ptr %12, i32 0, i32 8, !dbg !672
  %14 = load ptr, ptr %13, align 4, !dbg !672
  %15 = load ptr, ptr %2, align 4, !dbg !673
  call void %14(ptr noundef %15), !dbg !670
  br label %16, !dbg !674

16:                                               ; preds = %11, %1
  ret void, !dbg !675
}

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_uart_irq_rx_enable(ptr noundef %0) #0 !dbg !676 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !677, metadata !DIExpression()), !dbg !678
  call void @llvm.dbg.declare(metadata ptr %3, metadata !679, metadata !DIExpression()), !dbg !680
  %4 = load ptr, ptr %2, align 4, !dbg !681
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 2, !dbg !682
  %6 = load ptr, ptr %5, align 4, !dbg !682
  store ptr %6, ptr %3, align 4, !dbg !680
  %7 = load ptr, ptr %3, align 4, !dbg !683
  %8 = getelementptr inbounds %struct.uart_driver_api, ptr %7, i32 0, i32 10, !dbg !685
  %9 = load ptr, ptr %8, align 4, !dbg !685
  %10 = icmp ne ptr %9, null, !dbg !686
  br i1 %10, label %11, label %16, !dbg !687

11:                                               ; preds = %1
  %12 = load ptr, ptr %3, align 4, !dbg !688
  %13 = getelementptr inbounds %struct.uart_driver_api, ptr %12, i32 0, i32 10, !dbg !690
  %14 = load ptr, ptr %13, align 4, !dbg !690
  %15 = load ptr, ptr %2, align 4, !dbg !691
  call void %14(ptr noundef %15), !dbg !688
  br label %16, !dbg !692

16:                                               ; preds = %11, %1
  ret void, !dbg !693
}

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_uart_irq_rx_disable(ptr noundef %0) #0 !dbg !694 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !695, metadata !DIExpression()), !dbg !696
  call void @llvm.dbg.declare(metadata ptr %3, metadata !697, metadata !DIExpression()), !dbg !698
  %4 = load ptr, ptr %2, align 4, !dbg !699
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 2, !dbg !700
  %6 = load ptr, ptr %5, align 4, !dbg !700
  store ptr %6, ptr %3, align 4, !dbg !698
  %7 = load ptr, ptr %3, align 4, !dbg !701
  %8 = getelementptr inbounds %struct.uart_driver_api, ptr %7, i32 0, i32 11, !dbg !703
  %9 = load ptr, ptr %8, align 4, !dbg !703
  %10 = icmp ne ptr %9, null, !dbg !704
  br i1 %10, label %11, label %16, !dbg !705

11:                                               ; preds = %1
  %12 = load ptr, ptr %3, align 4, !dbg !706
  %13 = getelementptr inbounds %struct.uart_driver_api, ptr %12, i32 0, i32 11, !dbg !708
  %14 = load ptr, ptr %13, align 4, !dbg !708
  %15 = load ptr, ptr %2, align 4, !dbg !709
  call void %14(ptr noundef %15), !dbg !706
  br label %16, !dbg !710

16:                                               ; preds = %11, %1
  ret void, !dbg !711
}

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_uart_irq_err_enable(ptr noundef %0) #0 !dbg !712 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !713, metadata !DIExpression()), !dbg !714
  call void @llvm.dbg.declare(metadata ptr %3, metadata !715, metadata !DIExpression()), !dbg !716
  %4 = load ptr, ptr %2, align 4, !dbg !717
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 2, !dbg !718
  %6 = load ptr, ptr %5, align 4, !dbg !718
  store ptr %6, ptr %3, align 4, !dbg !716
  %7 = load ptr, ptr %3, align 4, !dbg !719
  %8 = getelementptr inbounds %struct.uart_driver_api, ptr %7, i32 0, i32 14, !dbg !721
  %9 = load ptr, ptr %8, align 4, !dbg !721
  %10 = icmp ne ptr %9, null, !dbg !719
  br i1 %10, label %11, label %16, !dbg !722

11:                                               ; preds = %1
  %12 = load ptr, ptr %3, align 4, !dbg !723
  %13 = getelementptr inbounds %struct.uart_driver_api, ptr %12, i32 0, i32 14, !dbg !725
  %14 = load ptr, ptr %13, align 4, !dbg !725
  %15 = load ptr, ptr %2, align 4, !dbg !726
  call void %14(ptr noundef %15), !dbg !723
  br label %16, !dbg !727

16:                                               ; preds = %11, %1
  ret void, !dbg !728
}

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_uart_irq_err_disable(ptr noundef %0) #0 !dbg !729 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !730, metadata !DIExpression()), !dbg !731
  call void @llvm.dbg.declare(metadata ptr %3, metadata !732, metadata !DIExpression()), !dbg !733
  %4 = load ptr, ptr %2, align 4, !dbg !734
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 2, !dbg !735
  %6 = load ptr, ptr %5, align 4, !dbg !735
  store ptr %6, ptr %3, align 4, !dbg !733
  %7 = load ptr, ptr %3, align 4, !dbg !736
  %8 = getelementptr inbounds %struct.uart_driver_api, ptr %7, i32 0, i32 15, !dbg !738
  %9 = load ptr, ptr %8, align 4, !dbg !738
  %10 = icmp ne ptr %9, null, !dbg !736
  br i1 %10, label %11, label %16, !dbg !739

11:                                               ; preds = %1
  %12 = load ptr, ptr %3, align 4, !dbg !740
  %13 = getelementptr inbounds %struct.uart_driver_api, ptr %12, i32 0, i32 15, !dbg !742
  %14 = load ptr, ptr %13, align 4, !dbg !742
  %15 = load ptr, ptr %2, align 4, !dbg !743
  call void %14(ptr noundef %15), !dbg !740
  br label %16, !dbg !744

16:                                               ; preds = %11, %1
  ret void, !dbg !745
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_uart_irq_is_pending(ptr noundef %0) #0 !dbg !746 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !747, metadata !DIExpression()), !dbg !748
  call void @llvm.dbg.declare(metadata ptr %4, metadata !749, metadata !DIExpression()), !dbg !750
  %5 = load ptr, ptr %3, align 4, !dbg !751
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 2, !dbg !752
  %7 = load ptr, ptr %6, align 4, !dbg !752
  store ptr %7, ptr %4, align 4, !dbg !750
  %8 = load ptr, ptr %4, align 4, !dbg !753
  %9 = getelementptr inbounds %struct.uart_driver_api, ptr %8, i32 0, i32 16, !dbg !755
  %10 = load ptr, ptr %9, align 4, !dbg !755
  %11 = icmp eq ptr %10, null, !dbg !756
  br i1 %11, label %12, label %13, !dbg !757

12:                                               ; preds = %1
  store i32 -88, ptr %2, align 4, !dbg !758
  br label %19, !dbg !758

13:                                               ; preds = %1
  %14 = load ptr, ptr %4, align 4, !dbg !760
  %15 = getelementptr inbounds %struct.uart_driver_api, ptr %14, i32 0, i32 16, !dbg !761
  %16 = load ptr, ptr %15, align 4, !dbg !761
  %17 = load ptr, ptr %3, align 4, !dbg !762
  %18 = call i32 %16(ptr noundef %17), !dbg !760
  store i32 %18, ptr %2, align 4, !dbg !763
  br label %19, !dbg !763

19:                                               ; preds = %13, %12
  %20 = load i32, ptr %2, align 4, !dbg !764
  ret i32 %20, !dbg !764
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_uart_irq_update(ptr noundef %0) #0 !dbg !765 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !766, metadata !DIExpression()), !dbg !767
  call void @llvm.dbg.declare(metadata ptr %4, metadata !768, metadata !DIExpression()), !dbg !769
  %5 = load ptr, ptr %3, align 4, !dbg !770
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 2, !dbg !771
  %7 = load ptr, ptr %6, align 4, !dbg !771
  store ptr %7, ptr %4, align 4, !dbg !769
  %8 = load ptr, ptr %4, align 4, !dbg !772
  %9 = getelementptr inbounds %struct.uart_driver_api, ptr %8, i32 0, i32 17, !dbg !774
  %10 = load ptr, ptr %9, align 4, !dbg !774
  %11 = icmp eq ptr %10, null, !dbg !775
  br i1 %11, label %12, label %13, !dbg !776

12:                                               ; preds = %1
  store i32 -88, ptr %2, align 4, !dbg !777
  br label %19, !dbg !777

13:                                               ; preds = %1
  %14 = load ptr, ptr %4, align 4, !dbg !779
  %15 = getelementptr inbounds %struct.uart_driver_api, ptr %14, i32 0, i32 17, !dbg !780
  %16 = load ptr, ptr %15, align 4, !dbg !780
  %17 = load ptr, ptr %3, align 4, !dbg !781
  %18 = call i32 %16(ptr noundef %17), !dbg !779
  store i32 %18, ptr %2, align 4, !dbg !782
  br label %19, !dbg !782

19:                                               ; preds = %13, %12
  %20 = load i32, ptr %2, align 4, !dbg !783
  ret i32 %20, !dbg !783
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_uart_tx(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 !dbg !784 {
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !790, metadata !DIExpression()), !dbg !791
  store ptr %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !792, metadata !DIExpression()), !dbg !793
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !794, metadata !DIExpression()), !dbg !795
  store i32 %3, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !796, metadata !DIExpression()), !dbg !797
  %9 = load ptr, ptr %5, align 4, !dbg !798
  %10 = load ptr, ptr %6, align 4, !dbg !799
  %11 = load i32, ptr %7, align 4, !dbg !800
  %12 = load i32, ptr %8, align 4, !dbg !801
  ret i32 -134, !dbg !802
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_uart_tx_u16(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 !dbg !803 {
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !808, metadata !DIExpression()), !dbg !809
  store ptr %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !810, metadata !DIExpression()), !dbg !811
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !812, metadata !DIExpression()), !dbg !813
  store i32 %3, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !814, metadata !DIExpression()), !dbg !815
  %9 = load ptr, ptr %5, align 4, !dbg !816
  %10 = load ptr, ptr %6, align 4, !dbg !817
  %11 = load i32, ptr %7, align 4, !dbg !818
  %12 = load i32, ptr %8, align 4, !dbg !819
  ret i32 -134, !dbg !820
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_uart_tx_abort(ptr noundef %0) #0 !dbg !821 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !822, metadata !DIExpression()), !dbg !823
  %3 = load ptr, ptr %2, align 4, !dbg !824
  ret i32 -134, !dbg !825
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_uart_rx_enable(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 !dbg !826 {
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !829, metadata !DIExpression()), !dbg !830
  store ptr %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !831, metadata !DIExpression()), !dbg !832
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !833, metadata !DIExpression()), !dbg !834
  store i32 %3, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !835, metadata !DIExpression()), !dbg !836
  %9 = load ptr, ptr %5, align 4, !dbg !837
  %10 = load ptr, ptr %6, align 4, !dbg !838
  %11 = load i32, ptr %7, align 4, !dbg !839
  %12 = load i32, ptr %8, align 4, !dbg !840
  ret i32 -134, !dbg !841
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_uart_rx_enable_u16(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 !dbg !842 {
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !845, metadata !DIExpression()), !dbg !846
  store ptr %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !847, metadata !DIExpression()), !dbg !848
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !849, metadata !DIExpression()), !dbg !850
  store i32 %3, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !851, metadata !DIExpression()), !dbg !852
  %9 = load ptr, ptr %5, align 4, !dbg !853
  %10 = load ptr, ptr %6, align 4, !dbg !854
  %11 = load i32, ptr %7, align 4, !dbg !855
  %12 = load i32, ptr %8, align 4, !dbg !856
  ret i32 -134, !dbg !857
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_uart_rx_disable(ptr noundef %0) #0 !dbg !858 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !859, metadata !DIExpression()), !dbg !860
  %3 = load ptr, ptr %2, align 4, !dbg !861
  ret i32 -134, !dbg !862
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_uart_line_ctrl_set(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 !dbg !863 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !866, metadata !DIExpression()), !dbg !867
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !868, metadata !DIExpression()), !dbg !869
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !870, metadata !DIExpression()), !dbg !871
  %7 = load ptr, ptr %4, align 4, !dbg !872
  %8 = load i32, ptr %5, align 4, !dbg !873
  %9 = load i32, ptr %6, align 4, !dbg !874
  ret i32 -134, !dbg !875
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_uart_line_ctrl_get(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 !dbg !876 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !880, metadata !DIExpression()), !dbg !881
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !882, metadata !DIExpression()), !dbg !883
  store ptr %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !884, metadata !DIExpression()), !dbg !885
  %7 = load ptr, ptr %4, align 4, !dbg !886
  %8 = load i32, ptr %5, align 4, !dbg !887
  %9 = load ptr, ptr %6, align 4, !dbg !888
  ret i32 -134, !dbg !889
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_uart_drv_cmd(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 !dbg !890 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !891, metadata !DIExpression()), !dbg !892
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !893, metadata !DIExpression()), !dbg !894
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !895, metadata !DIExpression()), !dbg !896
  %7 = load ptr, ptr %4, align 4, !dbg !897
  %8 = load i32, ptr %5, align 4, !dbg !898
  %9 = load i32, ptr %6, align 4, !dbg !899
  ret i32 -134, !dbg !900
}

; Function Attrs: noinline nounwind optnone
define hidden void @uart_register_input(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !901 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !911, metadata !DIExpression()), !dbg !912
  store ptr %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !913, metadata !DIExpression()), !dbg !914
  store ptr %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !915, metadata !DIExpression()), !dbg !916
  %7 = load ptr, ptr %4, align 4, !dbg !917
  %8 = load ptr, ptr %5, align 4, !dbg !918
  %9 = load ptr, ptr %6, align 4, !dbg !919
  ret void, !dbg !920
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone
define internal i32 @uart_console_init() #0 !dbg !921 {
  %1 = alloca i32, align 4
  %2 = call zeroext i1 @device_is_ready(ptr noundef @__device_dts_ord_52), !dbg !922
  br i1 %2, label %4, label %3, !dbg !924

3:                                                ; preds = %0
  store i32 -19, ptr %1, align 4, !dbg !925
  br label %5, !dbg !925

4:                                                ; preds = %0
  call void @uart_console_hook_install(), !dbg !927
  store i32 0, ptr %1, align 4, !dbg !928
  br label %5, !dbg !928

5:                                                ; preds = %4, %3
  %6 = load i32, ptr %1, align 4, !dbg !929
  ret i32 %6, !dbg !929
}

declare i64 @z_timeout_expires(ptr noundef) #2

declare i64 @z_timeout_remaining(ptr noundef) #2

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @sys_sflist_is_empty(ptr noundef %0) #0 !dbg !930 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !934, metadata !DIExpression()), !dbg !935
  %3 = load ptr, ptr %2, align 4, !dbg !936
  %4 = call ptr @sys_sflist_peek_head(ptr noundef %3), !dbg !937
  %5 = icmp eq ptr %4, null, !dbg !938
  ret i1 %5, !dbg !939
}

; Function Attrs: noinline nounwind optnone
define internal ptr @sys_sflist_peek_head(ptr noundef %0) #0 !dbg !940 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !943, metadata !DIExpression()), !dbg !944
  %3 = load ptr, ptr %2, align 4, !dbg !945
  %4 = getelementptr inbounds %struct._sflist, ptr %3, i32 0, i32 0, !dbg !946
  %5 = load ptr, ptr %4, align 4, !dbg !946
  ret ptr %5, !dbg !947
}

declare zeroext i1 @z_device_is_ready(ptr noundef) #2

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @device_is_ready(ptr noundef %0) #0 !dbg !948 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !950, metadata !DIExpression()), !dbg !951
  br label %3, !dbg !952

3:                                                ; preds = %1
  call void asm sideeffect "", "~{memory}"() #3, !dbg !953, !srcloc !955
  br label %4, !dbg !956

4:                                                ; preds = %3
  %5 = load ptr, ptr %2, align 4, !dbg !957
  %6 = call zeroext i1 @z_impl_device_is_ready(ptr noundef %5), !dbg !958
  ret i1 %6, !dbg !959
}

; Function Attrs: noinline nounwind optnone
define internal void @uart_console_hook_install() #0 !dbg !960 {
  call void @__stdout_hook_install(ptr noundef @console_out), !dbg !963
  call void @__printk_hook_install(ptr noundef @console_out), !dbg !964
  ret void, !dbg !965
}

declare void @__stdout_hook_install(ptr noundef) #2

; Function Attrs: noinline nounwind optnone
define internal i32 @console_out(i32 noundef %0) #0 !dbg !966 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !969, metadata !DIExpression()), !dbg !970
  %4 = call zeroext i1 @pm_device_runtime_is_enabled(ptr noundef @__device_dts_ord_52), !dbg !971
  br i1 %4, label %5, label %11, !dbg !973

5:                                                ; preds = %1
  %6 = call i32 @pm_device_runtime_get(ptr noundef @__device_dts_ord_52), !dbg !974
  %7 = icmp slt i32 %6, 0, !dbg !977
  br i1 %7, label %8, label %10, !dbg !978

8:                                                ; preds = %5
  %9 = load i32, ptr %3, align 4, !dbg !979
  store i32 %9, ptr %2, align 4, !dbg !981
  br label %23, !dbg !981

10:                                               ; preds = %5
  br label %11, !dbg !982

11:                                               ; preds = %10, %1
  %12 = load i32, ptr %3, align 4, !dbg !983
  %13 = icmp eq i32 10, %12, !dbg !985
  br i1 %13, label %14, label %15, !dbg !986

14:                                               ; preds = %11
  call void @uart_poll_out(ptr noundef @__device_dts_ord_52, i8 noundef zeroext 13), !dbg !987
  br label %15, !dbg !989

15:                                               ; preds = %14, %11
  %16 = load i32, ptr %3, align 4, !dbg !990
  %17 = trunc i32 %16 to i8, !dbg !990
  call void @uart_poll_out(ptr noundef @__device_dts_ord_52, i8 noundef zeroext %17), !dbg !991
  %18 = call zeroext i1 @pm_device_runtime_is_enabled(ptr noundef @__device_dts_ord_52), !dbg !992
  br i1 %18, label %19, label %21, !dbg !994

19:                                               ; preds = %15
  %20 = call i32 @pm_device_runtime_put(ptr noundef @__device_dts_ord_52), !dbg !995
  br label %21, !dbg !997

21:                                               ; preds = %19, %15
  %22 = load i32, ptr %3, align 4, !dbg !998
  store i32 %22, ptr %2, align 4, !dbg !999
  br label %23, !dbg !999

23:                                               ; preds = %21, %8
  %24 = load i32, ptr %2, align 4, !dbg !1000
  ret i32 %24, !dbg !1000
}

declare void @__printk_hook_install(ptr noundef) #2

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @pm_device_runtime_is_enabled(ptr noundef %0) #0 !dbg !1001 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1003, metadata !DIExpression()), !dbg !1004
  %3 = load ptr, ptr %2, align 4, !dbg !1005
  ret i1 false, !dbg !1006
}

; Function Attrs: noinline nounwind optnone
define internal i32 @pm_device_runtime_get(ptr noundef %0) #0 !dbg !1007 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1008, metadata !DIExpression()), !dbg !1009
  %3 = load ptr, ptr %2, align 4, !dbg !1010
  ret i32 0, !dbg !1011
}

; Function Attrs: noinline nounwind optnone
define internal void @uart_poll_out(ptr noundef %0, i8 noundef zeroext %1) #0 !dbg !1012 {
  %3 = alloca ptr, align 4
  %4 = alloca i8, align 1
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1014, metadata !DIExpression()), !dbg !1015
  store i8 %1, ptr %4, align 1
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1016, metadata !DIExpression()), !dbg !1017
  br label %5, !dbg !1018

5:                                                ; preds = %2
  call void asm sideeffect "", "~{memory}"() #3, !dbg !1019, !srcloc !1021
  br label %6, !dbg !1022

6:                                                ; preds = %5
  %7 = load ptr, ptr %3, align 4, !dbg !1023
  %8 = load i8, ptr %4, align 1, !dbg !1024
  call void @z_impl_uart_poll_out(ptr noundef %7, i8 noundef zeroext %8), !dbg !1025
  ret void, !dbg !1026
}

; Function Attrs: noinline nounwind optnone
define internal i32 @pm_device_runtime_put(ptr noundef %0) #0 !dbg !1027 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1028, metadata !DIExpression()), !dbg !1029
  %3 = load ptr, ptr %2, align 4, !dbg !1030
  ret i32 0, !dbg !1031
}

attributes #0 = { noinline nounwind optnone "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!204, !205, !206, !207, !208, !209, !210, !211}
!llvm.ident = !{!212}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__init_uart_console_init", scope: !2, file: !189, line: 627, type: !191, isLocal: true, isDefinition: true, align: 32)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !88, globals: !186, splitDebugInlining: false, nameTableKind: None)
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
!210 = !{i32 8, !"PIC Level", i32 2}
!211 = !{i32 7, !"PIE Level", i32 2}
!212 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
!213 = distinct !DISubprogram(name: "z_impl_k_object_access_grant", scope: !6, file: !6, line: 223, type: !214, scopeLine: 225, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !325)
!214 = !DISubroutineType(types: !215)
!215 = !{null, !110, !216}
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 32)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_thread", file: !218, line: 250, size: 896, elements: !219)
!218 = !DIFile(filename: "include/zephyr/kernel/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!219 = !{!220, !289, !302, !303, !304, !305, !326}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !217, file: !218, line: 252, baseType: !221, size: 384)
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_base", file: !218, line: 58, size: 384, elements: !222)
!222 = !{!223, !251, !259, !260, !261, !274, !275, !276}
!223 = !DIDerivedType(tag: DW_TAG_member, scope: !221, file: !218, line: 61, baseType: !224, size: 64)
!224 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !221, file: !218, line: 61, size: 64, elements: !225)
!225 = !{!226, !242}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_dlist", scope: !224, file: !218, line: 62, baseType: !227, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dnode_t", file: !228, line: 55, baseType: !229)
!228 = !DIFile(filename: "include/zephyr/sys/dlist.h", directory: "/home/sri/zephyrproject/zephyr")
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_dnode", file: !228, line: 37, size: 64, elements: !230)
!230 = !{!231, !237}
!231 = !DIDerivedType(tag: DW_TAG_member, scope: !229, file: !228, line: 38, baseType: !232, size: 32)
!232 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !229, file: !228, line: 38, size: 32, elements: !233)
!233 = !{!234, !236}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !232, file: !228, line: 39, baseType: !235, size: 32)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 32)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !232, file: !228, line: 40, baseType: !235, size: 32)
!237 = !DIDerivedType(tag: DW_TAG_member, scope: !229, file: !228, line: 42, baseType: !238, size: 32, offset: 32)
!238 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !229, file: !228, line: 42, size: 32, elements: !239)
!239 = !{!240, !241}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !238, file: !228, line: 43, baseType: !235, size: 32)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !238, file: !228, line: 44, baseType: !235, size: 32)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_rb", scope: !224, file: !218, line: 63, baseType: !243, size: 64)
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rbnode", file: !244, line: 58, size: 64, elements: !245)
!244 = !DIFile(filename: "include/zephyr/sys/rb.h", directory: "/home/sri/zephyrproject/zephyr")
!245 = !{!246}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !243, file: !244, line: 60, baseType: !247, size: 64)
!247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !248, size: 64, elements: !249)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 32)
!249 = !{!250}
!250 = !DISubrange(count: 2)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "pended_on", scope: !221, file: !218, line: 69, baseType: !252, size: 32, offset: 64)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 32)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "_wait_q_t", file: !254, line: 243, baseType: !255)
!254 = !DIFile(filename: "include/zephyr/kernel_structs.h", directory: "/home/sri/zephyrproject/zephyr")
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !254, line: 241, size: 64, elements: !256)
!256 = !{!257}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !255, file: !254, line: 242, baseType: !258, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dlist_t", file: !228, line: 51, baseType: !229)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "user_options", scope: !221, file: !218, line: 72, baseType: !118, size: 8, offset: 96)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "thread_state", scope: !221, file: !218, line: 75, baseType: !118, size: 8, offset: 104)
!261 = !DIDerivedType(tag: DW_TAG_member, scope: !221, file: !218, line: 91, baseType: !262, size: 16, offset: 112)
!262 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !221, file: !218, line: 91, size: 16, elements: !263)
!263 = !{!264, !271}
!264 = !DIDerivedType(tag: DW_TAG_member, scope: !262, file: !218, line: 92, baseType: !265, size: 16)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !262, file: !218, line: 92, size: 16, elements: !266)
!266 = !{!267, !270}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !265, file: !218, line: 97, baseType: !268, size: 8)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !119, line: 56, baseType: !269)
!269 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "sched_locked", scope: !265, file: !218, line: 98, baseType: !118, size: 8, offset: 8)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "preempt", scope: !262, file: !218, line: 101, baseType: !272, size: 16)
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !119, line: 63, baseType: !273)
!273 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "order_key", scope: !221, file: !218, line: 108, baseType: !141, size: 32, offset: 128)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "swap_data", scope: !221, file: !218, line: 132, baseType: !89, size: 32, offset: 160)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !221, file: !218, line: 136, baseType: !277, size: 192, offset: 192)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_timeout", file: !254, line: 254, size: 192, elements: !278)
!278 = !{!279, !280, !286}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !277, file: !254, line: 255, baseType: !227, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !277, file: !254, line: 256, baseType: !281, size: 32, offset: 64)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "_timeout_func_t", file: !254, line: 252, baseType: !282)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 32)
!283 = !DISubroutineType(types: !284)
!284 = !{null, !285}
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 32)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "dticks", scope: !277, file: !254, line: 259, baseType: !287, size: 64, offset: 128)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !119, line: 59, baseType: !288)
!288 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "callee_saved", scope: !217, file: !218, line: 255, baseType: !290, size: 288, offset: 384)
!290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_callee_saved", file: !291, line: 25, size: 288, elements: !292)
!291 = !DIFile(filename: "include/zephyr/arch/arm/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!292 = !{!293, !294, !295, !296, !297, !298, !299, !300, !301}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "v1", scope: !290, file: !291, line: 26, baseType: !141, size: 32)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "v2", scope: !290, file: !291, line: 27, baseType: !141, size: 32, offset: 32)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "v3", scope: !290, file: !291, line: 28, baseType: !141, size: 32, offset: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "v4", scope: !290, file: !291, line: 29, baseType: !141, size: 32, offset: 96)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "v5", scope: !290, file: !291, line: 30, baseType: !141, size: 32, offset: 128)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "v6", scope: !290, file: !291, line: 31, baseType: !141, size: 32, offset: 160)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "v7", scope: !290, file: !291, line: 32, baseType: !141, size: 32, offset: 192)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "v8", scope: !290, file: !291, line: 33, baseType: !141, size: 32, offset: 224)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "psp", scope: !290, file: !291, line: 34, baseType: !141, size: 32, offset: 256)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "init_data", scope: !217, file: !218, line: 258, baseType: !89, size: 32, offset: 672)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "join_queue", scope: !217, file: !218, line: 261, baseType: !253, size: 64, offset: 704)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "errno_var", scope: !217, file: !218, line: 302, baseType: !90, size: 32, offset: 768)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "resource_pool", scope: !217, file: !218, line: 333, baseType: !306, size: 32, offset: 800)
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
!317 = !DIDerivedType(tag: DW_TAG_member, name: "init_mem", scope: !311, file: !312, line: 58, baseType: !89, size: 32, offset: 32)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "init_bytes", scope: !311, file: !312, line: 59, baseType: !319, size: 32, offset: 64)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !320, line: 46, baseType: !142)
!320 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/lib/clang/17/include/stddef.h", directory: "")
!321 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !307, file: !308, line: 5293, baseType: !253, size: 64, offset: 96)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !307, file: !308, line: 5294, baseType: !323, offset: 160)
!323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_spinlock", file: !324, line: 45, elements: !325)
!324 = !DIFile(filename: "include/zephyr/spinlock.h", directory: "/home/sri/zephyrproject/zephyr")
!325 = !{}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !217, file: !218, line: 355, baseType: !327, size: 64, offset: 832)
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_arch", file: !291, line: 60, size: 64, elements: !328)
!328 = !{!329, !330}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "basepri", scope: !327, file: !291, line: 63, baseType: !141, size: 32)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "swap_return_value", scope: !327, file: !291, line: 66, baseType: !141, size: 32, offset: 32)
!331 = !DILocalVariable(name: "object", arg: 1, scope: !213, file: !6, line: 223, type: !110)
!332 = !DILocation(line: 223, column: 61, scope: !213)
!333 = !DILocalVariable(name: "thread", arg: 2, scope: !213, file: !6, line: 224, type: !216)
!334 = !DILocation(line: 224, column: 24, scope: !213)
!335 = !DILocation(line: 226, column: 9, scope: !213)
!336 = !DILocation(line: 227, column: 9, scope: !213)
!337 = !DILocation(line: 228, column: 1, scope: !213)
!338 = distinct !DISubprogram(name: "z_impl_k_object_release", scope: !6, file: !6, line: 243, type: !339, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !325)
!339 = !DISubroutineType(types: !340)
!340 = !{null, !110}
!341 = !DILocalVariable(name: "object", arg: 1, scope: !338, file: !6, line: 243, type: !110)
!342 = !DILocation(line: 243, column: 56, scope: !338)
!343 = !DILocation(line: 245, column: 9, scope: !338)
!344 = !DILocation(line: 246, column: 1, scope: !338)
!345 = distinct !DISubprogram(name: "z_impl_k_object_alloc", scope: !6, file: !6, line: 359, type: !346, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !325)
!346 = !DISubroutineType(types: !347)
!347 = !{!89, !5}
!348 = !DILocalVariable(name: "otype", arg: 1, scope: !345, file: !6, line: 359, type: !5)
!349 = !DILocation(line: 359, column: 58, scope: !345)
!350 = !DILocation(line: 361, column: 9, scope: !345)
!351 = !DILocation(line: 363, column: 2, scope: !345)
!352 = distinct !DISubprogram(name: "z_impl_k_object_alloc_size", scope: !6, file: !6, line: 366, type: !353, scopeLine: 368, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !325)
!353 = !DISubroutineType(types: !354)
!354 = !{!89, !5, !319}
!355 = !DILocalVariable(name: "otype", arg: 1, scope: !352, file: !6, line: 366, type: !5)
!356 = !DILocation(line: 366, column: 63, scope: !352)
!357 = !DILocalVariable(name: "size", arg: 2, scope: !352, file: !6, line: 367, type: !319)
!358 = !DILocation(line: 367, column: 13, scope: !352)
!359 = !DILocation(line: 369, column: 9, scope: !352)
!360 = !DILocation(line: 370, column: 9, scope: !352)
!361 = !DILocation(line: 372, column: 2, scope: !352)
!362 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_expires_ticks", scope: !308, file: !308, line: 656, type: !363, scopeLine: 658, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !325)
!363 = !DISubroutineType(types: !364)
!364 = !{!365, !367}
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_ticks_t", file: !366, line: 46, baseType: !287)
!366 = !DIFile(filename: "include/zephyr/sys_clock.h", directory: "/home/sri/zephyrproject/zephyr")
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 32)
!368 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !217)
!369 = !DILocalVariable(name: "t", arg: 1, scope: !362, file: !308, line: 657, type: !367)
!370 = !DILocation(line: 657, column: 30, scope: !362)
!371 = !DILocation(line: 659, column: 28, scope: !362)
!372 = !DILocation(line: 659, column: 31, scope: !362)
!373 = !DILocation(line: 659, column: 36, scope: !362)
!374 = !DILocation(line: 659, column: 9, scope: !362)
!375 = !DILocation(line: 659, column: 2, scope: !362)
!376 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_remaining_ticks", scope: !308, file: !308, line: 671, type: !363, scopeLine: 673, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !325)
!377 = !DILocalVariable(name: "t", arg: 1, scope: !376, file: !308, line: 672, type: !367)
!378 = !DILocation(line: 672, column: 30, scope: !376)
!379 = !DILocation(line: 674, column: 30, scope: !376)
!380 = !DILocation(line: 674, column: 33, scope: !376)
!381 = !DILocation(line: 674, column: 38, scope: !376)
!382 = !DILocation(line: 674, column: 9, scope: !376)
!383 = !DILocation(line: 674, column: 2, scope: !376)
!384 = distinct !DISubprogram(name: "z_impl_k_timer_expires_ticks", scope: !308, file: !308, line: 1634, type: !385, scopeLine: 1636, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !325)
!385 = !DISubroutineType(types: !386)
!386 = !{!365, !387}
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 32)
!388 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !389)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_timer", file: !308, line: 1439, size: 448, elements: !390)
!390 = !{!391, !392, !393, !398, !399, !404, !405}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !389, file: !308, line: 1445, baseType: !277, size: 192)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !389, file: !308, line: 1448, baseType: !253, size: 64, offset: 192)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_fn", scope: !389, file: !308, line: 1451, baseType: !394, size: 32, offset: 256)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 32)
!395 = !DISubroutineType(types: !396)
!396 = !{null, !397}
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 32)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "stop_fn", scope: !389, file: !308, line: 1454, baseType: !394, size: 32, offset: 288)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !389, file: !308, line: 1457, baseType: !400, size: 64, offset: 320)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_timeout_t", file: !366, line: 67, baseType: !401)
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !366, line: 65, size: 64, elements: !402)
!402 = !{!403}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "ticks", scope: !401, file: !366, line: 66, baseType: !365, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !389, file: !308, line: 1460, baseType: !141, size: 32, offset: 384)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !389, file: !308, line: 1463, baseType: !89, size: 32, offset: 416)
!406 = !DILocalVariable(name: "timer", arg: 1, scope: !384, file: !308, line: 1635, type: !387)
!407 = !DILocation(line: 1635, column: 34, scope: !384)
!408 = !DILocation(line: 1637, column: 28, scope: !384)
!409 = !DILocation(line: 1637, column: 35, scope: !384)
!410 = !DILocation(line: 1637, column: 9, scope: !384)
!411 = !DILocation(line: 1637, column: 2, scope: !384)
!412 = distinct !DISubprogram(name: "z_impl_k_timer_remaining_ticks", scope: !308, file: !308, line: 1649, type: !385, scopeLine: 1651, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !325)
!413 = !DILocalVariable(name: "timer", arg: 1, scope: !412, file: !308, line: 1650, type: !387)
!414 = !DILocation(line: 1650, column: 34, scope: !412)
!415 = !DILocation(line: 1652, column: 30, scope: !412)
!416 = !DILocation(line: 1652, column: 37, scope: !412)
!417 = !DILocation(line: 1652, column: 9, scope: !412)
!418 = !DILocation(line: 1652, column: 2, scope: !412)
!419 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_set", scope: !308, file: !308, line: 1689, type: !420, scopeLine: 1691, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !325)
!420 = !DISubroutineType(types: !421)
!421 = !{null, !397, !89}
!422 = !DILocalVariable(name: "timer", arg: 1, scope: !419, file: !308, line: 1689, type: !397)
!423 = !DILocation(line: 1689, column: 65, scope: !419)
!424 = !DILocalVariable(name: "user_data", arg: 2, scope: !419, file: !308, line: 1690, type: !89)
!425 = !DILocation(line: 1690, column: 19, scope: !419)
!426 = !DILocation(line: 1692, column: 21, scope: !419)
!427 = !DILocation(line: 1692, column: 2, scope: !419)
!428 = !DILocation(line: 1692, column: 9, scope: !419)
!429 = !DILocation(line: 1692, column: 19, scope: !419)
!430 = !DILocation(line: 1693, column: 1, scope: !419)
!431 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_get", scope: !308, file: !308, line: 1704, type: !432, scopeLine: 1705, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !325)
!432 = !DISubroutineType(types: !433)
!433 = !{!89, !387}
!434 = !DILocalVariable(name: "timer", arg: 1, scope: !431, file: !308, line: 1704, type: !387)
!435 = !DILocation(line: 1704, column: 72, scope: !431)
!436 = !DILocation(line: 1706, column: 9, scope: !431)
!437 = !DILocation(line: 1706, column: 16, scope: !431)
!438 = !DILocation(line: 1706, column: 2, scope: !431)
!439 = distinct !DISubprogram(name: "z_impl_k_queue_is_empty", scope: !308, file: !308, line: 2071, type: !440, scopeLine: 2072, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !325)
!440 = !DISubroutineType(types: !441)
!441 = !{!90, !442}
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 32)
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_queue", file: !308, line: 1830, size: 128, elements: !444)
!444 = !{!445, !458, !459}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "data_q", scope: !443, file: !308, line: 1831, baseType: !446, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sflist_t", file: !447, line: 60, baseType: !448)
!447 = !DIFile(filename: "include/zephyr/sys/sflist.h", directory: "/home/sri/zephyrproject/zephyr")
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sflist", file: !447, line: 53, size: 64, elements: !449)
!449 = !{!450, !457}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !448, file: !447, line: 54, baseType: !451, size: 32)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 32)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sfnode_t", file: !447, line: 50, baseType: !453)
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sfnode", file: !447, line: 44, size: 32, elements: !454)
!454 = !{!455}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "next_and_flags", scope: !453, file: !447, line: 45, baseType: !456, size: 32)
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "unative_t", file: !447, line: 40, baseType: !141)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !448, file: !447, line: 55, baseType: !451, size: 32, offset: 32)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !443, file: !308, line: 1832, baseType: !323, offset: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !443, file: !308, line: 1833, baseType: !253, size: 64, offset: 64)
!460 = !DILocalVariable(name: "queue", arg: 1, scope: !439, file: !308, line: 2071, type: !442)
!461 = !DILocation(line: 2071, column: 59, scope: !439)
!462 = !DILocation(line: 2073, column: 35, scope: !439)
!463 = !DILocation(line: 2073, column: 42, scope: !439)
!464 = !DILocation(line: 2073, column: 14, scope: !439)
!465 = !DILocation(line: 2073, column: 9, scope: !439)
!466 = !DILocation(line: 2073, column: 2, scope: !439)
!467 = distinct !DISubprogram(name: "z_impl_k_sem_count_get", scope: !308, file: !308, line: 3209, type: !468, scopeLine: 3210, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !325)
!468 = !DISubroutineType(types: !469)
!469 = !{!142, !470}
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 32)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sem", file: !308, line: 3092, size: 128, elements: !472)
!472 = !{!473, !474, !475}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !471, file: !308, line: 3093, baseType: !253, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !471, file: !308, line: 3094, baseType: !142, size: 32, offset: 64)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !471, file: !308, line: 3095, baseType: !142, size: 32, offset: 96)
!476 = !DILocalVariable(name: "sem", arg: 1, scope: !467, file: !308, line: 3209, type: !470)
!477 = !DILocation(line: 3209, column: 65, scope: !467)
!478 = !DILocation(line: 3211, column: 9, scope: !467)
!479 = !DILocation(line: 3211, column: 14, scope: !467)
!480 = !DILocation(line: 3211, column: 2, scope: !467)
!481 = distinct !DISubprogram(name: "z_impl_k_msgq_num_free_get", scope: !308, file: !308, line: 4649, type: !482, scopeLine: 4650, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !325)
!482 = !DISubroutineType(types: !483)
!483 = !{!141, !484}
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 32)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_msgq", file: !308, line: 4390, size: 320, elements: !486)
!486 = !{!487, !488, !489, !490, !491, !493, !494, !495, !496, !497}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !485, file: !308, line: 4392, baseType: !253, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !485, file: !308, line: 4394, baseType: !323, offset: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "msg_size", scope: !485, file: !308, line: 4396, baseType: !319, size: 32, offset: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !485, file: !308, line: 4398, baseType: !141, size: 32, offset: 96)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_start", scope: !485, file: !308, line: 4400, baseType: !492, size: 32, offset: 128)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 32)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_end", scope: !485, file: !308, line: 4402, baseType: !492, size: 32, offset: 160)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "read_ptr", scope: !485, file: !308, line: 4404, baseType: !492, size: 32, offset: 192)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "write_ptr", scope: !485, file: !308, line: 4406, baseType: !492, size: 32, offset: 224)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "used_msgs", scope: !485, file: !308, line: 4408, baseType: !141, size: 32, offset: 256)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !485, file: !308, line: 4413, baseType: !118, size: 8, offset: 288)
!498 = !DILocalVariable(name: "msgq", arg: 1, scope: !481, file: !308, line: 4649, type: !484)
!499 = !DILocation(line: 4649, column: 66, scope: !481)
!500 = !DILocation(line: 4651, column: 9, scope: !481)
!501 = !DILocation(line: 4651, column: 15, scope: !481)
!502 = !DILocation(line: 4651, column: 26, scope: !481)
!503 = !DILocation(line: 4651, column: 32, scope: !481)
!504 = !DILocation(line: 4651, column: 24, scope: !481)
!505 = !DILocation(line: 4651, column: 2, scope: !481)
!506 = distinct !DISubprogram(name: "z_impl_k_msgq_num_used_get", scope: !308, file: !308, line: 4665, type: !482, scopeLine: 4666, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !325)
!507 = !DILocalVariable(name: "msgq", arg: 1, scope: !506, file: !308, line: 4665, type: !484)
!508 = !DILocation(line: 4665, column: 66, scope: !506)
!509 = !DILocation(line: 4667, column: 9, scope: !506)
!510 = !DILocation(line: 4667, column: 15, scope: !506)
!511 = !DILocation(line: 4667, column: 2, scope: !506)
!512 = distinct !DISubprogram(name: "z_impl_device_is_ready", scope: !103, file: !103, line: 744, type: !513, scopeLine: 745, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !325)
!513 = !DISubroutineType(types: !514)
!514 = !{!121, !100}
!515 = !DILocalVariable(name: "dev", arg: 1, scope: !512, file: !103, line: 744, type: !100)
!516 = !DILocation(line: 744, column: 65, scope: !512)
!517 = !DILocation(line: 746, column: 27, scope: !512)
!518 = !DILocation(line: 746, column: 9, scope: !512)
!519 = !DILocation(line: 746, column: 2, scope: !512)
!520 = distinct !DISubprogram(name: "z_impl_uart_err_check", scope: !94, file: !94, line: 467, type: !130, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !325)
!521 = !DILocalVariable(name: "dev", arg: 1, scope: !520, file: !94, line: 467, type: !100)
!522 = !DILocation(line: 467, column: 62, scope: !520)
!523 = !DILocalVariable(name: "api", scope: !520, file: !94, line: 469, type: !91)
!524 = !DILocation(line: 469, column: 32, scope: !520)
!525 = !DILocation(line: 470, column: 35, scope: !520)
!526 = !DILocation(line: 470, column: 40, scope: !520)
!527 = !DILocation(line: 472, column: 6, scope: !528)
!528 = distinct !DILexicalBlock(scope: !520, file: !94, line: 472, column: 6)
!529 = !DILocation(line: 472, column: 11, scope: !528)
!530 = !DILocation(line: 472, column: 21, scope: !528)
!531 = !DILocation(line: 472, column: 6, scope: !520)
!532 = !DILocation(line: 473, column: 3, scope: !533)
!533 = distinct !DILexicalBlock(scope: !528, file: !94, line: 472, column: 27)
!534 = !DILocation(line: 476, column: 9, scope: !520)
!535 = !DILocation(line: 476, column: 14, scope: !520)
!536 = !DILocation(line: 476, column: 24, scope: !520)
!537 = !DILocation(line: 476, column: 2, scope: !520)
!538 = !DILocation(line: 477, column: 1, scope: !520)
!539 = distinct !DISubprogram(name: "z_impl_uart_poll_in", scope: !94, file: !94, line: 504, type: !98, scopeLine: 506, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !325)
!540 = !DILocalVariable(name: "dev", arg: 1, scope: !539, file: !94, line: 504, type: !100)
!541 = !DILocation(line: 504, column: 60, scope: !539)
!542 = !DILocalVariable(name: "p_char", arg: 2, scope: !539, file: !94, line: 505, type: !123)
!543 = !DILocation(line: 505, column: 26, scope: !539)
!544 = !DILocalVariable(name: "api", scope: !539, file: !94, line: 507, type: !91)
!545 = !DILocation(line: 507, column: 32, scope: !539)
!546 = !DILocation(line: 508, column: 35, scope: !539)
!547 = !DILocation(line: 508, column: 40, scope: !539)
!548 = !DILocation(line: 510, column: 6, scope: !549)
!549 = distinct !DILexicalBlock(scope: !539, file: !94, line: 510, column: 6)
!550 = !DILocation(line: 510, column: 11, scope: !549)
!551 = !DILocation(line: 510, column: 19, scope: !549)
!552 = !DILocation(line: 510, column: 6, scope: !539)
!553 = !DILocation(line: 511, column: 3, scope: !554)
!554 = distinct !DILexicalBlock(scope: !549, file: !94, line: 510, column: 25)
!555 = !DILocation(line: 514, column: 9, scope: !539)
!556 = !DILocation(line: 514, column: 14, scope: !539)
!557 = !DILocation(line: 514, column: 22, scope: !539)
!558 = !DILocation(line: 514, column: 27, scope: !539)
!559 = !DILocation(line: 514, column: 2, scope: !539)
!560 = !DILocation(line: 515, column: 1, scope: !539)
!561 = distinct !DISubprogram(name: "z_impl_uart_poll_in_u16", scope: !94, file: !94, line: 538, type: !562, scopeLine: 540, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !325)
!562 = !DISubroutineType(types: !563)
!563 = !{!90, !100, !564}
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 32)
!565 = !DILocalVariable(name: "dev", arg: 1, scope: !561, file: !94, line: 538, type: !100)
!566 = !DILocation(line: 538, column: 64, scope: !561)
!567 = !DILocalVariable(name: "p_u16", arg: 2, scope: !561, file: !94, line: 539, type: !564)
!568 = !DILocation(line: 539, column: 18, scope: !561)
!569 = !DILocation(line: 551, column: 9, scope: !561)
!570 = !DILocation(line: 552, column: 9, scope: !561)
!571 = !DILocation(line: 553, column: 2, scope: !561)
!572 = distinct !DISubprogram(name: "z_impl_uart_poll_out", scope: !94, file: !94, line: 574, type: !126, scopeLine: 576, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !325)
!573 = !DILocalVariable(name: "dev", arg: 1, scope: !572, file: !94, line: 574, type: !100)
!574 = !DILocation(line: 574, column: 62, scope: !572)
!575 = !DILocalVariable(name: "out_char", arg: 2, scope: !572, file: !94, line: 575, type: !7)
!576 = !DILocation(line: 575, column: 20, scope: !572)
!577 = !DILocalVariable(name: "api", scope: !572, file: !94, line: 577, type: !91)
!578 = !DILocation(line: 577, column: 32, scope: !572)
!579 = !DILocation(line: 578, column: 35, scope: !572)
!580 = !DILocation(line: 578, column: 40, scope: !572)
!581 = !DILocation(line: 580, column: 2, scope: !572)
!582 = !DILocation(line: 580, column: 7, scope: !572)
!583 = !DILocation(line: 580, column: 16, scope: !572)
!584 = !DILocation(line: 580, column: 21, scope: !572)
!585 = !DILocation(line: 581, column: 1, scope: !572)
!586 = distinct !DISubprogram(name: "z_impl_uart_poll_out_u16", scope: !94, file: !94, line: 599, type: !587, scopeLine: 601, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !325)
!587 = !DISubroutineType(types: !588)
!588 = !{null, !100, !272}
!589 = !DILocalVariable(name: "dev", arg: 1, scope: !586, file: !94, line: 599, type: !100)
!590 = !DILocation(line: 599, column: 66, scope: !586)
!591 = !DILocalVariable(name: "out_u16", arg: 2, scope: !586, file: !94, line: 600, type: !272)
!592 = !DILocation(line: 600, column: 19, scope: !586)
!593 = !DILocation(line: 608, column: 9, scope: !586)
!594 = !DILocation(line: 609, column: 9, scope: !586)
!595 = !DILocation(line: 611, column: 1, scope: !586)
!596 = distinct !DISubprogram(name: "z_impl_uart_configure", scope: !94, file: !94, line: 634, type: !134, scopeLine: 636, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !325)
!597 = !DILocalVariable(name: "dev", arg: 1, scope: !596, file: !94, line: 634, type: !100)
!598 = !DILocation(line: 634, column: 62, scope: !596)
!599 = !DILocalVariable(name: "cfg", arg: 2, scope: !596, file: !94, line: 635, type: !136)
!600 = !DILocation(line: 635, column: 32, scope: !596)
!601 = !DILocalVariable(name: "api", scope: !596, file: !94, line: 638, type: !91)
!602 = !DILocation(line: 638, column: 32, scope: !596)
!603 = !DILocation(line: 639, column: 37, scope: !596)
!604 = !DILocation(line: 639, column: 42, scope: !596)
!605 = !DILocation(line: 641, column: 6, scope: !606)
!606 = distinct !DILexicalBlock(scope: !596, file: !94, line: 641, column: 6)
!607 = !DILocation(line: 641, column: 11, scope: !606)
!608 = !DILocation(line: 641, column: 21, scope: !606)
!609 = !DILocation(line: 641, column: 6, scope: !596)
!610 = !DILocation(line: 642, column: 3, scope: !611)
!611 = distinct !DILexicalBlock(scope: !606, file: !94, line: 641, column: 27)
!612 = !DILocation(line: 644, column: 9, scope: !596)
!613 = !DILocation(line: 644, column: 14, scope: !596)
!614 = !DILocation(line: 644, column: 24, scope: !596)
!615 = !DILocation(line: 644, column: 29, scope: !596)
!616 = !DILocation(line: 644, column: 2, scope: !596)
!617 = !DILocation(line: 650, column: 1, scope: !596)
!618 = distinct !DISubprogram(name: "z_impl_uart_config_get", scope: !94, file: !94, line: 669, type: !149, scopeLine: 671, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !325)
!619 = !DILocalVariable(name: "dev", arg: 1, scope: !618, file: !94, line: 669, type: !100)
!620 = !DILocation(line: 669, column: 63, scope: !618)
!621 = !DILocalVariable(name: "cfg", arg: 2, scope: !618, file: !94, line: 670, type: !151)
!622 = !DILocation(line: 670, column: 27, scope: !618)
!623 = !DILocalVariable(name: "api", scope: !618, file: !94, line: 673, type: !91)
!624 = !DILocation(line: 673, column: 32, scope: !618)
!625 = !DILocation(line: 674, column: 37, scope: !618)
!626 = !DILocation(line: 674, column: 42, scope: !618)
!627 = !DILocation(line: 676, column: 6, scope: !628)
!628 = distinct !DILexicalBlock(scope: !618, file: !94, line: 676, column: 6)
!629 = !DILocation(line: 676, column: 11, scope: !628)
!630 = !DILocation(line: 676, column: 22, scope: !628)
!631 = !DILocation(line: 676, column: 6, scope: !618)
!632 = !DILocation(line: 677, column: 3, scope: !633)
!633 = distinct !DILexicalBlock(scope: !628, file: !94, line: 676, column: 28)
!634 = !DILocation(line: 680, column: 9, scope: !618)
!635 = !DILocation(line: 680, column: 14, scope: !618)
!636 = !DILocation(line: 680, column: 25, scope: !618)
!637 = !DILocation(line: 680, column: 30, scope: !618)
!638 = !DILocation(line: 680, column: 2, scope: !618)
!639 = !DILocation(line: 686, column: 1, scope: !618)
!640 = distinct !DISubprogram(name: "z_impl_uart_irq_tx_enable", scope: !94, file: !94, line: 865, type: !166, scopeLine: 866, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !325)
!641 = !DILocalVariable(name: "dev", arg: 1, scope: !640, file: !94, line: 865, type: !100)
!642 = !DILocation(line: 865, column: 67, scope: !640)
!643 = !DILocalVariable(name: "api", scope: !640, file: !94, line: 868, type: !91)
!644 = !DILocation(line: 868, column: 32, scope: !640)
!645 = !DILocation(line: 869, column: 35, scope: !640)
!646 = !DILocation(line: 869, column: 40, scope: !640)
!647 = !DILocation(line: 871, column: 6, scope: !648)
!648 = distinct !DILexicalBlock(scope: !640, file: !94, line: 871, column: 6)
!649 = !DILocation(line: 871, column: 11, scope: !648)
!650 = !DILocation(line: 871, column: 25, scope: !648)
!651 = !DILocation(line: 871, column: 6, scope: !640)
!652 = !DILocation(line: 872, column: 3, scope: !653)
!653 = distinct !DILexicalBlock(scope: !648, file: !94, line: 871, column: 31)
!654 = !DILocation(line: 872, column: 8, scope: !653)
!655 = !DILocation(line: 872, column: 22, scope: !653)
!656 = !DILocation(line: 873, column: 2, scope: !653)
!657 = !DILocation(line: 877, column: 1, scope: !640)
!658 = distinct !DISubprogram(name: "z_impl_uart_irq_tx_disable", scope: !94, file: !94, line: 886, type: !166, scopeLine: 887, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !325)
!659 = !DILocalVariable(name: "dev", arg: 1, scope: !658, file: !94, line: 886, type: !100)
!660 = !DILocation(line: 886, column: 68, scope: !658)
!661 = !DILocalVariable(name: "api", scope: !658, file: !94, line: 889, type: !91)
!662 = !DILocation(line: 889, column: 32, scope: !658)
!663 = !DILocation(line: 890, column: 35, scope: !658)
!664 = !DILocation(line: 890, column: 40, scope: !658)
!665 = !DILocation(line: 892, column: 6, scope: !666)
!666 = distinct !DILexicalBlock(scope: !658, file: !94, line: 892, column: 6)
!667 = !DILocation(line: 892, column: 11, scope: !666)
!668 = !DILocation(line: 892, column: 26, scope: !666)
!669 = !DILocation(line: 892, column: 6, scope: !658)
!670 = !DILocation(line: 893, column: 3, scope: !671)
!671 = distinct !DILexicalBlock(scope: !666, file: !94, line: 892, column: 32)
!672 = !DILocation(line: 893, column: 8, scope: !671)
!673 = !DILocation(line: 893, column: 23, scope: !671)
!674 = !DILocation(line: 894, column: 2, scope: !671)
!675 = !DILocation(line: 898, column: 1, scope: !658)
!676 = distinct !DISubprogram(name: "z_impl_uart_irq_rx_enable", scope: !94, file: !94, line: 942, type: !166, scopeLine: 943, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !325)
!677 = !DILocalVariable(name: "dev", arg: 1, scope: !676, file: !94, line: 942, type: !100)
!678 = !DILocation(line: 942, column: 67, scope: !676)
!679 = !DILocalVariable(name: "api", scope: !676, file: !94, line: 945, type: !91)
!680 = !DILocation(line: 945, column: 32, scope: !676)
!681 = !DILocation(line: 946, column: 35, scope: !676)
!682 = !DILocation(line: 946, column: 40, scope: !676)
!683 = !DILocation(line: 948, column: 6, scope: !684)
!684 = distinct !DILexicalBlock(scope: !676, file: !94, line: 948, column: 6)
!685 = !DILocation(line: 948, column: 11, scope: !684)
!686 = !DILocation(line: 948, column: 25, scope: !684)
!687 = !DILocation(line: 948, column: 6, scope: !676)
!688 = !DILocation(line: 949, column: 3, scope: !689)
!689 = distinct !DILexicalBlock(scope: !684, file: !94, line: 948, column: 31)
!690 = !DILocation(line: 949, column: 8, scope: !689)
!691 = !DILocation(line: 949, column: 22, scope: !689)
!692 = !DILocation(line: 950, column: 2, scope: !689)
!693 = !DILocation(line: 954, column: 1, scope: !676)
!694 = distinct !DISubprogram(name: "z_impl_uart_irq_rx_disable", scope: !94, file: !94, line: 963, type: !166, scopeLine: 964, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !325)
!695 = !DILocalVariable(name: "dev", arg: 1, scope: !694, file: !94, line: 963, type: !100)
!696 = !DILocation(line: 963, column: 68, scope: !694)
!697 = !DILocalVariable(name: "api", scope: !694, file: !94, line: 966, type: !91)
!698 = !DILocation(line: 966, column: 32, scope: !694)
!699 = !DILocation(line: 967, column: 35, scope: !694)
!700 = !DILocation(line: 967, column: 40, scope: !694)
!701 = !DILocation(line: 969, column: 6, scope: !702)
!702 = distinct !DILexicalBlock(scope: !694, file: !94, line: 969, column: 6)
!703 = !DILocation(line: 969, column: 11, scope: !702)
!704 = !DILocation(line: 969, column: 26, scope: !702)
!705 = !DILocation(line: 969, column: 6, scope: !694)
!706 = !DILocation(line: 970, column: 3, scope: !707)
!707 = distinct !DILexicalBlock(scope: !702, file: !94, line: 969, column: 32)
!708 = !DILocation(line: 970, column: 8, scope: !707)
!709 = !DILocation(line: 970, column: 23, scope: !707)
!710 = !DILocation(line: 971, column: 2, scope: !707)
!711 = !DILocation(line: 975, column: 1, scope: !694)
!712 = distinct !DISubprogram(name: "z_impl_uart_irq_err_enable", scope: !94, file: !94, line: 1054, type: !166, scopeLine: 1055, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !325)
!713 = !DILocalVariable(name: "dev", arg: 1, scope: !712, file: !94, line: 1054, type: !100)
!714 = !DILocation(line: 1054, column: 68, scope: !712)
!715 = !DILocalVariable(name: "api", scope: !712, file: !94, line: 1057, type: !91)
!716 = !DILocation(line: 1057, column: 32, scope: !712)
!717 = !DILocation(line: 1058, column: 35, scope: !712)
!718 = !DILocation(line: 1058, column: 40, scope: !712)
!719 = !DILocation(line: 1060, column: 6, scope: !720)
!720 = distinct !DILexicalBlock(scope: !712, file: !94, line: 1060, column: 6)
!721 = !DILocation(line: 1060, column: 11, scope: !720)
!722 = !DILocation(line: 1060, column: 6, scope: !712)
!723 = !DILocation(line: 1061, column: 3, scope: !724)
!724 = distinct !DILexicalBlock(scope: !720, file: !94, line: 1060, column: 27)
!725 = !DILocation(line: 1061, column: 8, scope: !724)
!726 = !DILocation(line: 1061, column: 23, scope: !724)
!727 = !DILocation(line: 1062, column: 2, scope: !724)
!728 = !DILocation(line: 1066, column: 1, scope: !712)
!729 = distinct !DISubprogram(name: "z_impl_uart_irq_err_disable", scope: !94, file: !94, line: 1075, type: !166, scopeLine: 1076, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !325)
!730 = !DILocalVariable(name: "dev", arg: 1, scope: !729, file: !94, line: 1075, type: !100)
!731 = !DILocation(line: 1075, column: 69, scope: !729)
!732 = !DILocalVariable(name: "api", scope: !729, file: !94, line: 1078, type: !91)
!733 = !DILocation(line: 1078, column: 32, scope: !729)
!734 = !DILocation(line: 1079, column: 35, scope: !729)
!735 = !DILocation(line: 1079, column: 40, scope: !729)
!736 = !DILocation(line: 1081, column: 6, scope: !737)
!737 = distinct !DILexicalBlock(scope: !729, file: !94, line: 1081, column: 6)
!738 = !DILocation(line: 1081, column: 11, scope: !737)
!739 = !DILocation(line: 1081, column: 6, scope: !729)
!740 = !DILocation(line: 1082, column: 3, scope: !741)
!741 = distinct !DILexicalBlock(scope: !737, file: !94, line: 1081, column: 28)
!742 = !DILocation(line: 1082, column: 8, scope: !741)
!743 = !DILocation(line: 1082, column: 24, scope: !741)
!744 = !DILocation(line: 1083, column: 2, scope: !741)
!745 = !DILocation(line: 1087, column: 1, scope: !729)
!746 = distinct !DISubprogram(name: "z_impl_uart_irq_is_pending", scope: !94, file: !94, line: 1101, type: !130, scopeLine: 1102, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !325)
!747 = !DILocalVariable(name: "dev", arg: 1, scope: !746, file: !94, line: 1101, type: !100)
!748 = !DILocation(line: 1101, column: 67, scope: !746)
!749 = !DILocalVariable(name: "api", scope: !746, file: !94, line: 1104, type: !91)
!750 = !DILocation(line: 1104, column: 32, scope: !746)
!751 = !DILocation(line: 1105, column: 35, scope: !746)
!752 = !DILocation(line: 1105, column: 40, scope: !746)
!753 = !DILocation(line: 1107, column: 6, scope: !754)
!754 = distinct !DILexicalBlock(scope: !746, file: !94, line: 1107, column: 6)
!755 = !DILocation(line: 1107, column: 11, scope: !754)
!756 = !DILocation(line: 1107, column: 26, scope: !754)
!757 = !DILocation(line: 1107, column: 6, scope: !746)
!758 = !DILocation(line: 1108, column: 3, scope: !759)
!759 = distinct !DILexicalBlock(scope: !754, file: !94, line: 1107, column: 32)
!760 = !DILocation(line: 1110, column: 9, scope: !746)
!761 = !DILocation(line: 1110, column: 14, scope: !746)
!762 = !DILocation(line: 1110, column: 29, scope: !746)
!763 = !DILocation(line: 1110, column: 2, scope: !746)
!764 = !DILocation(line: 1115, column: 1, scope: !746)
!765 = distinct !DISubprogram(name: "z_impl_uart_irq_update", scope: !94, file: !94, line: 1144, type: !130, scopeLine: 1145, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !325)
!766 = !DILocalVariable(name: "dev", arg: 1, scope: !765, file: !94, line: 1144, type: !100)
!767 = !DILocation(line: 1144, column: 63, scope: !765)
!768 = !DILocalVariable(name: "api", scope: !765, file: !94, line: 1147, type: !91)
!769 = !DILocation(line: 1147, column: 32, scope: !765)
!770 = !DILocation(line: 1148, column: 35, scope: !765)
!771 = !DILocation(line: 1148, column: 40, scope: !765)
!772 = !DILocation(line: 1150, column: 6, scope: !773)
!773 = distinct !DILexicalBlock(scope: !765, file: !94, line: 1150, column: 6)
!774 = !DILocation(line: 1150, column: 11, scope: !773)
!775 = !DILocation(line: 1150, column: 22, scope: !773)
!776 = !DILocation(line: 1150, column: 6, scope: !765)
!777 = !DILocation(line: 1151, column: 3, scope: !778)
!778 = distinct !DILexicalBlock(scope: !773, file: !94, line: 1150, column: 28)
!779 = !DILocation(line: 1153, column: 9, scope: !765)
!780 = !DILocation(line: 1153, column: 14, scope: !765)
!781 = !DILocation(line: 1153, column: 25, scope: !765)
!782 = !DILocation(line: 1153, column: 2, scope: !765)
!783 = !DILocation(line: 1158, column: 1, scope: !765)
!784 = distinct !DISubprogram(name: "z_impl_uart_tx", scope: !94, file: !94, line: 1282, type: !785, scopeLine: 1285, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !325)
!785 = !DISubroutineType(types: !786)
!786 = !{!90, !100, !156, !787, !789}
!787 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !788, line: 53, baseType: !142)
!788 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/stdio.h", directory: "")
!789 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !119, line: 58, baseType: !90)
!790 = !DILocalVariable(name: "dev", arg: 1, scope: !784, file: !94, line: 1282, type: !100)
!791 = !DILocation(line: 1282, column: 55, scope: !784)
!792 = !DILocalVariable(name: "buf", arg: 2, scope: !784, file: !94, line: 1282, type: !156)
!793 = !DILocation(line: 1282, column: 75, scope: !784)
!794 = !DILocalVariable(name: "len", arg: 3, scope: !784, file: !94, line: 1283, type: !787)
!795 = !DILocation(line: 1283, column: 13, scope: !784)
!796 = !DILocalVariable(name: "timeout", arg: 4, scope: !784, file: !94, line: 1283, type: !789)
!797 = !DILocation(line: 1283, column: 26, scope: !784)
!798 = !DILocation(line: 1292, column: 9, scope: !784)
!799 = !DILocation(line: 1293, column: 9, scope: !784)
!800 = !DILocation(line: 1294, column: 9, scope: !784)
!801 = !DILocation(line: 1295, column: 9, scope: !784)
!802 = !DILocation(line: 1296, column: 2, scope: !784)
!803 = distinct !DISubprogram(name: "z_impl_uart_tx_u16", scope: !94, file: !94, line: 1320, type: !804, scopeLine: 1324, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !325)
!804 = !DISubroutineType(types: !805)
!805 = !{!90, !100, !806, !787, !789}
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 32)
!807 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !272)
!808 = !DILocalVariable(name: "dev", arg: 1, scope: !803, file: !94, line: 1320, type: !100)
!809 = !DILocation(line: 1320, column: 59, scope: !803)
!810 = !DILocalVariable(name: "buf", arg: 2, scope: !803, file: !94, line: 1321, type: !806)
!811 = !DILocation(line: 1321, column: 26, scope: !803)
!812 = !DILocalVariable(name: "len", arg: 3, scope: !803, file: !94, line: 1322, type: !787)
!813 = !DILocation(line: 1322, column: 17, scope: !803)
!814 = !DILocalVariable(name: "timeout", arg: 4, scope: !803, file: !94, line: 1322, type: !789)
!815 = !DILocation(line: 1322, column: 30, scope: !803)
!816 = !DILocation(line: 1331, column: 9, scope: !803)
!817 = !DILocation(line: 1332, column: 9, scope: !803)
!818 = !DILocation(line: 1333, column: 9, scope: !803)
!819 = !DILocation(line: 1334, column: 9, scope: !803)
!820 = !DILocation(line: 1335, column: 2, scope: !803)
!821 = distinct !DISubprogram(name: "z_impl_uart_tx_abort", scope: !94, file: !94, line: 1353, type: !130, scopeLine: 1354, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !325)
!822 = !DILocalVariable(name: "dev", arg: 1, scope: !821, file: !94, line: 1353, type: !100)
!823 = !DILocation(line: 1353, column: 61, scope: !821)
!824 = !DILocation(line: 1361, column: 9, scope: !821)
!825 = !DILocation(line: 1362, column: 2, scope: !821)
!826 = distinct !DISubprogram(name: "z_impl_uart_rx_enable", scope: !94, file: !94, line: 1391, type: !827, scopeLine: 1394, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !325)
!827 = !DISubroutineType(types: !828)
!828 = !{!90, !100, !162, !787, !789}
!829 = !DILocalVariable(name: "dev", arg: 1, scope: !826, file: !94, line: 1391, type: !100)
!830 = !DILocation(line: 1391, column: 62, scope: !826)
!831 = !DILocalVariable(name: "buf", arg: 2, scope: !826, file: !94, line: 1392, type: !162)
!832 = !DILocation(line: 1392, column: 15, scope: !826)
!833 = !DILocalVariable(name: "len", arg: 3, scope: !826, file: !94, line: 1393, type: !787)
!834 = !DILocation(line: 1393, column: 13, scope: !826)
!835 = !DILocalVariable(name: "timeout", arg: 4, scope: !826, file: !94, line: 1393, type: !789)
!836 = !DILocation(line: 1393, column: 26, scope: !826)
!837 = !DILocation(line: 1401, column: 9, scope: !826)
!838 = !DILocation(line: 1402, column: 9, scope: !826)
!839 = !DILocation(line: 1403, column: 9, scope: !826)
!840 = !DILocation(line: 1404, column: 9, scope: !826)
!841 = !DILocation(line: 1405, column: 2, scope: !826)
!842 = distinct !DISubprogram(name: "z_impl_uart_rx_enable_u16", scope: !94, file: !94, line: 1433, type: !843, scopeLine: 1436, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !325)
!843 = !DISubroutineType(types: !844)
!844 = !{!90, !100, !564, !787, !789}
!845 = !DILocalVariable(name: "dev", arg: 1, scope: !842, file: !94, line: 1433, type: !100)
!846 = !DILocation(line: 1433, column: 66, scope: !842)
!847 = !DILocalVariable(name: "buf", arg: 2, scope: !842, file: !94, line: 1434, type: !564)
!848 = !DILocation(line: 1434, column: 20, scope: !842)
!849 = !DILocalVariable(name: "len", arg: 3, scope: !842, file: !94, line: 1434, type: !787)
!850 = !DILocation(line: 1434, column: 32, scope: !842)
!851 = !DILocalVariable(name: "timeout", arg: 4, scope: !842, file: !94, line: 1435, type: !789)
!852 = !DILocation(line: 1435, column: 18, scope: !842)
!853 = !DILocation(line: 1443, column: 9, scope: !842)
!854 = !DILocation(line: 1444, column: 9, scope: !842)
!855 = !DILocation(line: 1445, column: 9, scope: !842)
!856 = !DILocation(line: 1446, column: 9, scope: !842)
!857 = !DILocation(line: 1447, column: 2, scope: !842)
!858 = distinct !DISubprogram(name: "z_impl_uart_rx_disable", scope: !94, file: !94, line: 1541, type: !130, scopeLine: 1542, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !325)
!859 = !DILocalVariable(name: "dev", arg: 1, scope: !858, file: !94, line: 1541, type: !100)
!860 = !DILocation(line: 1541, column: 63, scope: !858)
!861 = !DILocation(line: 1549, column: 9, scope: !858)
!862 = !DILocation(line: 1550, column: 2, scope: !858)
!863 = distinct !DISubprogram(name: "z_impl_uart_line_ctrl_set", scope: !94, file: !94, line: 1573, type: !864, scopeLine: 1575, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !325)
!864 = !DISubroutineType(types: !865)
!865 = !{!90, !100, !141, !141}
!866 = !DILocalVariable(name: "dev", arg: 1, scope: !863, file: !94, line: 1573, type: !100)
!867 = !DILocation(line: 1573, column: 66, scope: !863)
!868 = !DILocalVariable(name: "ctrl", arg: 2, scope: !863, file: !94, line: 1574, type: !141)
!869 = !DILocation(line: 1574, column: 19, scope: !863)
!870 = !DILocalVariable(name: "val", arg: 3, scope: !863, file: !94, line: 1574, type: !141)
!871 = !DILocation(line: 1574, column: 34, scope: !863)
!872 = !DILocation(line: 1585, column: 9, scope: !863)
!873 = !DILocation(line: 1586, column: 9, scope: !863)
!874 = !DILocation(line: 1587, column: 9, scope: !863)
!875 = !DILocation(line: 1588, column: 2, scope: !863)
!876 = distinct !DISubprogram(name: "z_impl_uart_line_ctrl_get", scope: !94, file: !94, line: 1607, type: !877, scopeLine: 1609, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !325)
!877 = !DISubroutineType(types: !878)
!878 = !{!90, !100, !141, !879}
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 32)
!880 = !DILocalVariable(name: "dev", arg: 1, scope: !876, file: !94, line: 1607, type: !100)
!881 = !DILocation(line: 1607, column: 66, scope: !876)
!882 = !DILocalVariable(name: "ctrl", arg: 2, scope: !876, file: !94, line: 1608, type: !141)
!883 = !DILocation(line: 1608, column: 19, scope: !876)
!884 = !DILocalVariable(name: "val", arg: 3, scope: !876, file: !94, line: 1608, type: !879)
!885 = !DILocation(line: 1608, column: 35, scope: !876)
!886 = !DILocation(line: 1619, column: 9, scope: !876)
!887 = !DILocation(line: 1620, column: 9, scope: !876)
!888 = !DILocation(line: 1621, column: 9, scope: !876)
!889 = !DILocation(line: 1622, column: 2, scope: !876)
!890 = distinct !DISubprogram(name: "z_impl_uart_drv_cmd", scope: !94, file: !94, line: 1643, type: !864, scopeLine: 1645, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !325)
!891 = !DILocalVariable(name: "dev", arg: 1, scope: !890, file: !94, line: 1643, type: !100)
!892 = !DILocation(line: 1643, column: 60, scope: !890)
!893 = !DILocalVariable(name: "cmd", arg: 2, scope: !890, file: !94, line: 1643, type: !141)
!894 = !DILocation(line: 1643, column: 74, scope: !890)
!895 = !DILocalVariable(name: "p", arg: 3, scope: !890, file: !94, line: 1644, type: !141)
!896 = !DILocation(line: 1644, column: 20, scope: !890)
!897 = !DILocation(line: 1655, column: 9, scope: !890)
!898 = !DILocation(line: 1656, column: 9, scope: !890)
!899 = !DILocation(line: 1657, column: 9, scope: !890)
!900 = !DILocation(line: 1658, column: 2, scope: !890)
!901 = distinct !DISubprogram(name: "uart_register_input", scope: !189, file: !189, line: 587, type: !902, scopeLine: 589, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !325)
!902 = !DISubroutineType(types: !903)
!903 = !{null, !904, !904, !908}
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 32)
!905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_fifo", file: !308, line: 2369, size: 128, elements: !906)
!906 = !{!907}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "_queue", scope: !905, file: !308, line: 2370, baseType: !443, size: 128)
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !909, size: 32)
!909 = !DISubroutineType(types: !910)
!910 = !{!118, !492, !118}
!911 = !DILocalVariable(name: "avail", arg: 1, scope: !901, file: !189, line: 587, type: !904)
!912 = !DILocation(line: 587, column: 41, scope: !901)
!913 = !DILocalVariable(name: "lines", arg: 2, scope: !901, file: !189, line: 587, type: !904)
!914 = !DILocation(line: 587, column: 63, scope: !901)
!915 = !DILocalVariable(name: "completion", arg: 3, scope: !901, file: !189, line: 588, type: !908)
!916 = !DILocation(line: 588, column: 15, scope: !901)
!917 = !DILocation(line: 590, column: 9, scope: !901)
!918 = !DILocation(line: 591, column: 9, scope: !901)
!919 = !DILocation(line: 592, column: 9, scope: !901)
!920 = !DILocation(line: 593, column: 1, scope: !901)
!921 = distinct !DISubprogram(name: "uart_console_init", scope: !189, file: !189, line: 615, type: !200, scopeLine: 616, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !325)
!922 = !DILocation(line: 617, column: 7, scope: !923)
!923 = distinct !DILexicalBlock(scope: !921, file: !189, line: 617, column: 6)
!924 = !DILocation(line: 617, column: 6, scope: !921)
!925 = !DILocation(line: 618, column: 3, scope: !926)
!926 = distinct !DILexicalBlock(scope: !923, file: !189, line: 617, column: 42)
!927 = !DILocation(line: 621, column: 2, scope: !921)
!928 = !DILocation(line: 623, column: 2, scope: !921)
!929 = !DILocation(line: 624, column: 1, scope: !921)
!930 = distinct !DISubprogram(name: "sys_sflist_is_empty", scope: !447, file: !447, line: 335, type: !931, scopeLine: 335, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !325)
!931 = !DISubroutineType(types: !932)
!932 = !{!121, !933}
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 32)
!934 = !DILocalVariable(name: "list", arg: 1, scope: !930, file: !447, line: 335, type: !933)
!935 = !DILocation(line: 335, column: 55, scope: !930)
!936 = !DILocation(line: 335, column: 92, scope: !930)
!937 = !DILocation(line: 335, column: 71, scope: !930)
!938 = !DILocation(line: 335, column: 98, scope: !930)
!939 = !DILocation(line: 335, column: 63, scope: !930)
!940 = distinct !DISubprogram(name: "sys_sflist_peek_head", scope: !447, file: !447, line: 255, type: !941, scopeLine: 256, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !325)
!941 = !DISubroutineType(types: !942)
!942 = !{!451, !933}
!943 = !DILocalVariable(name: "list", arg: 1, scope: !940, file: !447, line: 255, type: !933)
!944 = !DILocation(line: 255, column: 64, scope: !940)
!945 = !DILocation(line: 257, column: 9, scope: !940)
!946 = !DILocation(line: 257, column: 15, scope: !940)
!947 = !DILocation(line: 257, column: 2, scope: !940)
!948 = distinct !DISubprogram(name: "device_is_ready", scope: !949, file: !949, line: 49, type: !513, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !325)
!949 = !DIFile(filename: "zephyr/include/generated/syscalls/device.h", directory: "/home/sri/zephyrproject/zephyr/build")
!950 = !DILocalVariable(name: "dev", arg: 1, scope: !948, file: !949, line: 49, type: !100)
!951 = !DILocation(line: 49, column: 59, scope: !948)
!952 = !DILocation(line: 57, column: 2, scope: !948)
!953 = !DILocation(line: 57, column: 7, scope: !954)
!954 = distinct !DILexicalBlock(scope: !948, file: !949, line: 57, column: 5)
!955 = !{i64 187281}
!956 = !DILocation(line: 57, column: 47, scope: !954)
!957 = !DILocation(line: 58, column: 32, scope: !948)
!958 = !DILocation(line: 58, column: 9, scope: !948)
!959 = !DILocation(line: 58, column: 2, scope: !948)
!960 = distinct !DISubprogram(name: "uart_console_hook_install", scope: !189, file: !189, line: 600, type: !961, scopeLine: 601, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !325)
!961 = !DISubroutineType(types: !962)
!962 = !{null}
!963 = !DILocation(line: 603, column: 2, scope: !960)
!964 = !DILocation(line: 606, column: 2, scope: !960)
!965 = !DILocation(line: 608, column: 1, scope: !960)
!966 = distinct !DISubprogram(name: "console_out", scope: !189, file: !189, line: 78, type: !967, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !325)
!967 = !DISubroutineType(types: !968)
!968 = !{!90, !90}
!969 = !DILocalVariable(name: "c", arg: 1, scope: !966, file: !189, line: 78, type: !90)
!970 = !DILocation(line: 78, column: 28, scope: !966)
!971 = !DILocation(line: 90, column: 6, scope: !972)
!972 = distinct !DILexicalBlock(scope: !966, file: !189, line: 90, column: 6)
!973 = !DILocation(line: 90, column: 6, scope: !966)
!974 = !DILocation(line: 91, column: 7, scope: !975)
!975 = distinct !DILexicalBlock(scope: !976, file: !189, line: 91, column: 7)
!976 = distinct !DILexicalBlock(scope: !972, file: !189, line: 90, column: 54)
!977 = !DILocation(line: 91, column: 47, scope: !975)
!978 = !DILocation(line: 91, column: 7, scope: !976)
!979 = !DILocation(line: 95, column: 11, scope: !980)
!980 = distinct !DILexicalBlock(scope: !975, file: !189, line: 91, column: 52)
!981 = !DILocation(line: 95, column: 4, scope: !980)
!982 = !DILocation(line: 97, column: 2, scope: !976)
!983 = !DILocation(line: 99, column: 14, scope: !984)
!984 = distinct !DILexicalBlock(scope: !966, file: !189, line: 99, column: 6)
!985 = !DILocation(line: 99, column: 11, scope: !984)
!986 = !DILocation(line: 99, column: 6, scope: !966)
!987 = !DILocation(line: 100, column: 3, scope: !988)
!988 = distinct !DILexicalBlock(scope: !984, file: !189, line: 99, column: 17)
!989 = !DILocation(line: 101, column: 2, scope: !988)
!990 = !DILocation(line: 102, column: 34, scope: !966)
!991 = !DILocation(line: 102, column: 2, scope: !966)
!992 = !DILocation(line: 104, column: 6, scope: !993)
!993 = distinct !DILexicalBlock(scope: !966, file: !189, line: 104, column: 6)
!994 = !DILocation(line: 104, column: 6, scope: !966)
!995 = !DILocation(line: 106, column: 9, scope: !996)
!996 = distinct !DILexicalBlock(scope: !993, file: !189, line: 104, column: 54)
!997 = !DILocation(line: 107, column: 2, scope: !996)
!998 = !DILocation(line: 109, column: 9, scope: !966)
!999 = !DILocation(line: 109, column: 2, scope: !966)
!1000 = !DILocation(line: 110, column: 1, scope: !966)
!1001 = distinct !DISubprogram(name: "pm_device_runtime_is_enabled", scope: !1002, file: !1002, line: 197, type: !513, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !325)
!1002 = !DIFile(filename: "include/zephyr/pm/device_runtime.h", directory: "/home/sri/zephyrproject/zephyr")
!1003 = !DILocalVariable(name: "dev", arg: 1, scope: !1001, file: !1002, line: 197, type: !100)
!1004 = !DILocation(line: 197, column: 71, scope: !1001)
!1005 = !DILocation(line: 199, column: 9, scope: !1001)
!1006 = !DILocation(line: 200, column: 2, scope: !1001)
!1007 = distinct !DISubprogram(name: "pm_device_runtime_get", scope: !1002, file: !1002, line: 179, type: !130, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !325)
!1008 = !DILocalVariable(name: "dev", arg: 1, scope: !1007, file: !1002, line: 179, type: !100)
!1009 = !DILocation(line: 179, column: 62, scope: !1007)
!1010 = !DILocation(line: 181, column: 9, scope: !1007)
!1011 = !DILocation(line: 182, column: 2, scope: !1007)
!1012 = distinct !DISubprogram(name: "uart_poll_out", scope: !1013, file: !1013, line: 97, type: !126, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !325)
!1013 = !DIFile(filename: "zephyr/include/generated/syscalls/uart.h", directory: "/home/sri/zephyrproject/zephyr/build")
!1014 = !DILocalVariable(name: "dev", arg: 1, scope: !1012, file: !1013, line: 97, type: !100)
!1015 = !DILocation(line: 97, column: 56, scope: !1012)
!1016 = !DILocalVariable(name: "out_char", arg: 2, scope: !1012, file: !1013, line: 97, type: !7)
!1017 = !DILocation(line: 97, column: 75, scope: !1012)
!1018 = !DILocation(line: 107, column: 2, scope: !1012)
!1019 = !DILocation(line: 107, column: 7, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !1012, file: !1013, line: 107, column: 5)
!1021 = !{i64 205605}
!1022 = !DILocation(line: 107, column: 47, scope: !1020)
!1023 = !DILocation(line: 108, column: 23, scope: !1012)
!1024 = !DILocation(line: 108, column: 28, scope: !1012)
!1025 = !DILocation(line: 108, column: 2, scope: !1012)
!1026 = !DILocation(line: 109, column: 1, scope: !1012)
!1027 = distinct !DISubprogram(name: "pm_device_runtime_put", scope: !1002, file: !1002, line: 185, type: !130, scopeLine: 186, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !325)
!1028 = !DILocalVariable(name: "dev", arg: 1, scope: !1027, file: !1002, line: 185, type: !100)
!1029 = !DILocation(line: 185, column: 62, scope: !1027)
!1030 = !DILocation(line: 187, column: 9, scope: !1027)
!1031 = !DILocation(line: 188, column: 2, scope: !1027)
