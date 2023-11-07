; ModuleID = '../bc_files/uart_stm32.bc'
source_filename = "/home/sri/zephyrproject/zephyr/drivers/serial/uart_stm32.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-arm-none-eabi"

%struct.log_source_const_data = type { ptr, i8 }
%struct.uart_stm32_config = type { ptr, %struct.reset_dt_spec, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }
%struct.reset_dt_spec = type { ptr, i32 }
%struct.uart_driver_api = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_state = type { i8, i8 }
%struct.uart_stm32_data = type { ptr, ptr, ptr, ptr }
%struct.device = type { ptr, ptr, ptr, ptr, ptr }
%struct.init_entry = type { %union.init_function, ptr }
%union.init_function = type { ptr }
%struct.stm32_pclken = type { i32, i32 }
%struct.pinctrl_dev_config = type { ptr, i8 }
%struct.pinctrl_state = type { ptr, i8, i8 }
%struct.pinctrl_soc_pin = type { i32, i32 }
%struct._isr_list = type { i32, i32, ptr, ptr }
%struct.uart_config = type { i32, i8, i8, i8, i8 }
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
%struct.reset_driver_api = type { ptr, ptr, ptr, ptr }
%struct.USART_TypeDef = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16 }
%struct.clock_control_driver_api = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.__va_list = type { ptr }

@.str = private unnamed_addr constant [11 x i8] c"uart_stm32\00", align 1, !dbg !0
@log_const_uart_stm32 = hidden constant %struct.log_source_const_data { ptr @.str, i8 3 }, section "._log_const.static.log_const_uart_stm32_", align 4, !dbg !7
@.str.1 = private unnamed_addr constant [16 x i8] c"serial@40004400\00", align 1, !dbg !323
@uart_stm32_cfg_0 = internal constant %struct.uart_stm32_config { ptr inttoptr (i32 1073759232 to ptr), %struct.reset_dt_spec { ptr @__device_dts_ord_31, i32 529 }, ptr @pclken_0, i32 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr @__pinctrl_dev_config__device_dts_ord_52, ptr @uart_stm32_irq_config_func_0 }, align 4, !dbg !347
@uart_stm32_driver_api = internal constant %struct.uart_driver_api { ptr @uart_stm32_poll_in, ptr @uart_stm32_poll_out, ptr @uart_stm32_err_check, ptr @uart_stm32_configure, ptr @uart_stm32_config_get, ptr @uart_stm32_fifo_fill, ptr @uart_stm32_fifo_read, ptr @uart_stm32_irq_tx_enable, ptr @uart_stm32_irq_tx_disable, ptr @uart_stm32_irq_tx_ready, ptr @uart_stm32_irq_rx_enable, ptr @uart_stm32_irq_rx_disable, ptr @uart_stm32_irq_tx_complete, ptr @uart_stm32_irq_rx_ready, ptr @uart_stm32_irq_err_enable, ptr @uart_stm32_irq_err_disable, ptr @uart_stm32_irq_is_pending, ptr @uart_stm32_irq_update, ptr @uart_stm32_irq_callback_set }, align 4, !dbg !431
@__devstate_dts_ord_52 = internal global %struct.device_state zeroinitializer, section ".z_devstate", align 1, !dbg !345
@uart_stm32_data_0 = internal global %struct.uart_stm32_data { ptr null, ptr @uart_cfg_0, ptr null, ptr null }, align 4, !dbg !447
@__device_dts_ord_52 = hidden constant %struct.device { ptr @.str.1, ptr @uart_stm32_cfg_0, ptr @uart_stm32_driver_api, ptr @__devstate_dts_ord_52, ptr @uart_stm32_data_0 }, section "._device.static.1_55_", align 4, !dbg !328
@__init___device_dts_ord_52 = internal constant %struct.init_entry { %union.init_function { ptr @uart_stm32_init }, ptr @__device_dts_ord_52 }, section ".z_init_PRE_KERNEL_155_00052_", align 4, !dbg !330
@__device_dts_ord_31 = external constant %struct.device, align 4
@pclken_0 = internal constant [1 x %struct.stm32_pclken] [%struct.stm32_pclken { i32 28, i32 131072 }], align 4, !dbg !404
@__pinctrl_dev_config__device_dts_ord_52 = internal constant %struct.pinctrl_dev_config { ptr @__pinctrl_states__device_dts_ord_52, i8 1 }, align 4, !dbg !409
@__pinctrl_states__device_dts_ord_52 = internal constant [1 x %struct.pinctrl_state] [%struct.pinctrl_state { ptr @__pinctrl_state_pins_0__device_dts_ord_52, i8 2, i8 0 }], align 4, !dbg !411
@__pinctrl_state_pins_0__device_dts_ord_52 = internal constant [2 x %struct.pinctrl_soc_pin] [%struct.pinctrl_soc_pin { i32 65, i32 512 }, %struct.pinctrl_soc_pin { i32 97, i32 0 }], align 4, !dbg !414
@uart_stm32_irq_config_func_0.__isr_uart_stm32_isr_irq_0 = internal global %struct._isr_list { i32 28, i32 0, ptr @uart_stm32_isr, ptr @__device_dts_ord_52 }, section ".intList", align 4, !dbg !419
@__log_current_const_data = internal global ptr @log_const_uart_stm32, align 4, !dbg !438
@.str.2 = private unnamed_addr constant [46 x i8] c"Failed call clock_control_get_rate(pclken[0])\00", align 1, !dbg !433
@uart_cfg_0 = internal global %struct.uart_config { i32 115200, i8 0, i8 1, i8 3, i8 0 }, align 4, !dbg !455
@.str.3 = private unnamed_addr constant [31 x i8] c"clock control device not ready\00", align 1, !dbg !457
@.str.4 = private unnamed_addr constant [32 x i8] c"Could not enable (LP)UART clock\00", align 1, !dbg !462
@__device_dts_ord_9 = external constant %struct.device, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"reset controller not ready\00", align 1, !dbg !467
@.str.6 = private unnamed_addr constant [34 x i8] c"%s does not support driver enable\00", align 1, !dbg !472
@llvm.used = appending global [4 x ptr] [ptr @log_const_uart_stm32, ptr @__device_dts_ord_52, ptr @__init___device_dts_ord_52, ptr @uart_stm32_irq_config_func_0.__isr_uart_stm32_isr_irq_0], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_k_object_access_grant(ptr noundef %0, ptr noundef %1) #0 !dbg !486 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !597, metadata !DIExpression()), !dbg !598
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !599, metadata !DIExpression()), !dbg !600
  %5 = load ptr, ptr %3, align 4, !dbg !601
  %6 = load ptr, ptr %4, align 4, !dbg !602
  ret void, !dbg !603
}

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_k_object_release(ptr noundef %0) #0 !dbg !604 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !607, metadata !DIExpression()), !dbg !608
  %3 = load ptr, ptr %2, align 4, !dbg !609
  ret void, !dbg !610
}

; Function Attrs: noinline nounwind optnone
define internal ptr @z_impl_k_object_alloc(i8 noundef zeroext %0) #0 !dbg !611 {
  %2 = alloca i8, align 1
  store i8 %0, ptr %2, align 1
  call void @llvm.dbg.declare(metadata ptr %2, metadata !614, metadata !DIExpression()), !dbg !615
  %3 = load i8, ptr %2, align 1, !dbg !616
  ret ptr null, !dbg !617
}

; Function Attrs: noinline nounwind optnone
define internal ptr @z_impl_k_object_alloc_size(i8 noundef zeroext %0, i32 noundef %1) #0 !dbg !618 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8 %0, ptr %3, align 1
  call void @llvm.dbg.declare(metadata ptr %3, metadata !621, metadata !DIExpression()), !dbg !622
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !623, metadata !DIExpression()), !dbg !624
  %5 = load i8, ptr %3, align 1, !dbg !625
  %6 = load i32, ptr %4, align 4, !dbg !626
  ret ptr null, !dbg !627
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_thread_timeout_expires_ticks(ptr noundef %0) #0 !dbg !628 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !635, metadata !DIExpression()), !dbg !636
  %3 = load ptr, ptr %2, align 4, !dbg !637
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !638
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !639
  %6 = call i64 @z_timeout_expires(ptr noundef %5), !dbg !640
  ret i64 %6, !dbg !641
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_thread_timeout_remaining_ticks(ptr noundef %0) #0 !dbg !642 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !643, metadata !DIExpression()), !dbg !644
  %3 = load ptr, ptr %2, align 4, !dbg !645
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !646
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !647
  %6 = call i64 @z_timeout_remaining(ptr noundef %5), !dbg !648
  ret i64 %6, !dbg !649
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_timer_expires_ticks(ptr noundef %0) #0 !dbg !650 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !672, metadata !DIExpression()), !dbg !673
  %3 = load ptr, ptr %2, align 4, !dbg !674
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !675
  %5 = call i64 @z_timeout_expires(ptr noundef %4), !dbg !676
  ret i64 %5, !dbg !677
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_timer_remaining_ticks(ptr noundef %0) #0 !dbg !678 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !679, metadata !DIExpression()), !dbg !680
  %3 = load ptr, ptr %2, align 4, !dbg !681
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !682
  %5 = call i64 @z_timeout_remaining(ptr noundef %4), !dbg !683
  ret i64 %5, !dbg !684
}

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_k_timer_user_data_set(ptr noundef %0, ptr noundef %1) #0 !dbg !685 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !688, metadata !DIExpression()), !dbg !689
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !690, metadata !DIExpression()), !dbg !691
  %5 = load ptr, ptr %4, align 4, !dbg !692
  %6 = load ptr, ptr %3, align 4, !dbg !693
  %7 = getelementptr inbounds %struct.k_timer, ptr %6, i32 0, i32 6, !dbg !694
  store ptr %5, ptr %7, align 4, !dbg !695
  ret void, !dbg !696
}

; Function Attrs: noinline nounwind optnone
define internal ptr @z_impl_k_timer_user_data_get(ptr noundef %0) #0 !dbg !697 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !700, metadata !DIExpression()), !dbg !701
  %3 = load ptr, ptr %2, align 4, !dbg !702
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 6, !dbg !703
  %5 = load ptr, ptr %4, align 4, !dbg !703
  ret ptr %5, !dbg !704
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_queue_is_empty(ptr noundef %0) #0 !dbg !705 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !726, metadata !DIExpression()), !dbg !727
  %3 = load ptr, ptr %2, align 4, !dbg !728
  %4 = getelementptr inbounds %struct.k_queue, ptr %3, i32 0, i32 0, !dbg !729
  %5 = call zeroext i1 @sys_sflist_is_empty(ptr noundef %4), !dbg !730
  %6 = zext i1 %5 to i32, !dbg !731
  ret i32 %6, !dbg !732
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_sem_count_get(ptr noundef %0) #0 !dbg !733 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !742, metadata !DIExpression()), !dbg !743
  %3 = load ptr, ptr %2, align 4, !dbg !744
  %4 = getelementptr inbounds %struct.k_sem, ptr %3, i32 0, i32 1, !dbg !745
  %5 = load i32, ptr %4, align 4, !dbg !745
  ret i32 %5, !dbg !746
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_msgq_num_free_get(ptr noundef %0) #0 !dbg !747 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !764, metadata !DIExpression()), !dbg !765
  %3 = load ptr, ptr %2, align 4, !dbg !766
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 3, !dbg !767
  %5 = load i32, ptr %4, align 4, !dbg !767
  %6 = load ptr, ptr %2, align 4, !dbg !768
  %7 = getelementptr inbounds %struct.k_msgq, ptr %6, i32 0, i32 8, !dbg !769
  %8 = load i32, ptr %7, align 4, !dbg !769
  %9 = sub i32 %5, %8, !dbg !770
  ret i32 %9, !dbg !771
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_msgq_num_used_get(ptr noundef %0) #0 !dbg !772 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !773, metadata !DIExpression()), !dbg !774
  %3 = load ptr, ptr %2, align 4, !dbg !775
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 8, !dbg !776
  %5 = load i32, ptr %4, align 4, !dbg !776
  ret i32 %5, !dbg !777
}

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @z_impl_device_is_ready(ptr noundef %0) #0 !dbg !778 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !781, metadata !DIExpression()), !dbg !782
  %3 = load ptr, ptr %2, align 4, !dbg !783
  %4 = call zeroext i1 @z_device_is_ready(ptr noundef %3), !dbg !784
  ret i1 %4, !dbg !785
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_reset_status(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 !dbg !786 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  store ptr %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !787, metadata !DIExpression()), !dbg !788
  store i32 %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !789, metadata !DIExpression()), !dbg !790
  store ptr %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !791, metadata !DIExpression()), !dbg !792
  call void @llvm.dbg.declare(metadata ptr %8, metadata !793, metadata !DIExpression()), !dbg !794
  %9 = load ptr, ptr %5, align 4, !dbg !795
  %10 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 2, !dbg !796
  %11 = load ptr, ptr %10, align 4, !dbg !796
  store ptr %11, ptr %8, align 4, !dbg !794
  %12 = load ptr, ptr %8, align 4, !dbg !797
  %13 = getelementptr inbounds %struct.reset_driver_api, ptr %12, i32 0, i32 0, !dbg !799
  %14 = load ptr, ptr %13, align 4, !dbg !799
  %15 = icmp eq ptr %14, null, !dbg !800
  br i1 %15, label %16, label %17, !dbg !801

16:                                               ; preds = %3
  store i32 -88, ptr %4, align 4, !dbg !802
  br label %25, !dbg !802

17:                                               ; preds = %3
  %18 = load ptr, ptr %8, align 4, !dbg !804
  %19 = getelementptr inbounds %struct.reset_driver_api, ptr %18, i32 0, i32 0, !dbg !805
  %20 = load ptr, ptr %19, align 4, !dbg !805
  %21 = load ptr, ptr %5, align 4, !dbg !806
  %22 = load i32, ptr %6, align 4, !dbg !807
  %23 = load ptr, ptr %7, align 4, !dbg !808
  %24 = call i32 %20(ptr noundef %21, i32 noundef %22, ptr noundef %23), !dbg !804
  store i32 %24, ptr %4, align 4, !dbg !809
  br label %25, !dbg !809

25:                                               ; preds = %17, %16
  %26 = load i32, ptr %4, align 4, !dbg !810
  ret i32 %26, !dbg !810
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_reset_line_assert(ptr noundef %0, i32 noundef %1) #0 !dbg !811 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !812, metadata !DIExpression()), !dbg !813
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !814, metadata !DIExpression()), !dbg !815
  call void @llvm.dbg.declare(metadata ptr %6, metadata !816, metadata !DIExpression()), !dbg !817
  %7 = load ptr, ptr %4, align 4, !dbg !818
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 2, !dbg !819
  %9 = load ptr, ptr %8, align 4, !dbg !819
  store ptr %9, ptr %6, align 4, !dbg !817
  %10 = load ptr, ptr %6, align 4, !dbg !820
  %11 = getelementptr inbounds %struct.reset_driver_api, ptr %10, i32 0, i32 1, !dbg !822
  %12 = load ptr, ptr %11, align 4, !dbg !822
  %13 = icmp eq ptr %12, null, !dbg !823
  br i1 %13, label %14, label %15, !dbg !824

14:                                               ; preds = %2
  store i32 -88, ptr %3, align 4, !dbg !825
  br label %22, !dbg !825

15:                                               ; preds = %2
  %16 = load ptr, ptr %6, align 4, !dbg !827
  %17 = getelementptr inbounds %struct.reset_driver_api, ptr %16, i32 0, i32 1, !dbg !828
  %18 = load ptr, ptr %17, align 4, !dbg !828
  %19 = load ptr, ptr %4, align 4, !dbg !829
  %20 = load i32, ptr %5, align 4, !dbg !830
  %21 = call i32 %18(ptr noundef %19, i32 noundef %20), !dbg !827
  store i32 %21, ptr %3, align 4, !dbg !831
  br label %22, !dbg !831

22:                                               ; preds = %15, %14
  %23 = load i32, ptr %3, align 4, !dbg !832
  ret i32 %23, !dbg !832
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_reset_line_deassert(ptr noundef %0, i32 noundef %1) #0 !dbg !833 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !834, metadata !DIExpression()), !dbg !835
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !836, metadata !DIExpression()), !dbg !837
  call void @llvm.dbg.declare(metadata ptr %6, metadata !838, metadata !DIExpression()), !dbg !839
  %7 = load ptr, ptr %4, align 4, !dbg !840
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 2, !dbg !841
  %9 = load ptr, ptr %8, align 4, !dbg !841
  store ptr %9, ptr %6, align 4, !dbg !839
  %10 = load ptr, ptr %6, align 4, !dbg !842
  %11 = getelementptr inbounds %struct.reset_driver_api, ptr %10, i32 0, i32 2, !dbg !844
  %12 = load ptr, ptr %11, align 4, !dbg !844
  %13 = icmp eq ptr %12, null, !dbg !845
  br i1 %13, label %14, label %15, !dbg !846

14:                                               ; preds = %2
  store i32 -88, ptr %3, align 4, !dbg !847
  br label %22, !dbg !847

15:                                               ; preds = %2
  %16 = load ptr, ptr %6, align 4, !dbg !849
  %17 = getelementptr inbounds %struct.reset_driver_api, ptr %16, i32 0, i32 2, !dbg !850
  %18 = load ptr, ptr %17, align 4, !dbg !850
  %19 = load ptr, ptr %4, align 4, !dbg !851
  %20 = load i32, ptr %5, align 4, !dbg !852
  %21 = call i32 %18(ptr noundef %19, i32 noundef %20), !dbg !849
  store i32 %21, ptr %3, align 4, !dbg !853
  br label %22, !dbg !853

22:                                               ; preds = %15, %14
  %23 = load i32, ptr %3, align 4, !dbg !854
  ret i32 %23, !dbg !854
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_reset_line_toggle(ptr noundef %0, i32 noundef %1) #0 !dbg !855 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !856, metadata !DIExpression()), !dbg !857
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !858, metadata !DIExpression()), !dbg !859
  call void @llvm.dbg.declare(metadata ptr %6, metadata !860, metadata !DIExpression()), !dbg !861
  %7 = load ptr, ptr %4, align 4, !dbg !862
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 2, !dbg !863
  %9 = load ptr, ptr %8, align 4, !dbg !863
  store ptr %9, ptr %6, align 4, !dbg !861
  %10 = load ptr, ptr %6, align 4, !dbg !864
  %11 = getelementptr inbounds %struct.reset_driver_api, ptr %10, i32 0, i32 3, !dbg !866
  %12 = load ptr, ptr %11, align 4, !dbg !866
  %13 = icmp eq ptr %12, null, !dbg !867
  br i1 %13, label %14, label %15, !dbg !868

14:                                               ; preds = %2
  store i32 -88, ptr %3, align 4, !dbg !869
  br label %22, !dbg !869

15:                                               ; preds = %2
  %16 = load ptr, ptr %6, align 4, !dbg !871
  %17 = getelementptr inbounds %struct.reset_driver_api, ptr %16, i32 0, i32 3, !dbg !872
  %18 = load ptr, ptr %17, align 4, !dbg !872
  %19 = load ptr, ptr %4, align 4, !dbg !873
  %20 = load i32, ptr %5, align 4, !dbg !874
  %21 = call i32 %18(ptr noundef %19, i32 noundef %20), !dbg !871
  store i32 %21, ptr %3, align 4, !dbg !875
  br label %22, !dbg !875

22:                                               ; preds = %15, %14
  %23 = load i32, ptr %3, align 4, !dbg !876
  ret i32 %23, !dbg !876
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_uart_err_check(ptr noundef %0) #0 !dbg !877 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !878, metadata !DIExpression()), !dbg !879
  call void @llvm.dbg.declare(metadata ptr %4, metadata !880, metadata !DIExpression()), !dbg !881
  %5 = load ptr, ptr %3, align 4, !dbg !882
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 2, !dbg !883
  %7 = load ptr, ptr %6, align 4, !dbg !883
  store ptr %7, ptr %4, align 4, !dbg !881
  %8 = load ptr, ptr %4, align 4, !dbg !884
  %9 = getelementptr inbounds %struct.uart_driver_api, ptr %8, i32 0, i32 2, !dbg !886
  %10 = load ptr, ptr %9, align 4, !dbg !886
  %11 = icmp eq ptr %10, null, !dbg !887
  br i1 %11, label %12, label %13, !dbg !888

12:                                               ; preds = %1
  store i32 -88, ptr %2, align 4, !dbg !889
  br label %19, !dbg !889

13:                                               ; preds = %1
  %14 = load ptr, ptr %4, align 4, !dbg !891
  %15 = getelementptr inbounds %struct.uart_driver_api, ptr %14, i32 0, i32 2, !dbg !892
  %16 = load ptr, ptr %15, align 4, !dbg !892
  %17 = load ptr, ptr %3, align 4, !dbg !893
  %18 = call i32 %16(ptr noundef %17), !dbg !891
  store i32 %18, ptr %2, align 4, !dbg !894
  br label %19, !dbg !894

19:                                               ; preds = %13, %12
  %20 = load i32, ptr %2, align 4, !dbg !895
  ret i32 %20, !dbg !895
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_uart_poll_in(ptr noundef %0, ptr noundef %1) #0 !dbg !896 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !897, metadata !DIExpression()), !dbg !898
  store ptr %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !899, metadata !DIExpression()), !dbg !900
  call void @llvm.dbg.declare(metadata ptr %6, metadata !901, metadata !DIExpression()), !dbg !902
  %7 = load ptr, ptr %4, align 4, !dbg !903
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 2, !dbg !904
  %9 = load ptr, ptr %8, align 4, !dbg !904
  store ptr %9, ptr %6, align 4, !dbg !902
  %10 = load ptr, ptr %6, align 4, !dbg !905
  %11 = getelementptr inbounds %struct.uart_driver_api, ptr %10, i32 0, i32 0, !dbg !907
  %12 = load ptr, ptr %11, align 4, !dbg !907
  %13 = icmp eq ptr %12, null, !dbg !908
  br i1 %13, label %14, label %15, !dbg !909

14:                                               ; preds = %2
  store i32 -88, ptr %3, align 4, !dbg !910
  br label %22, !dbg !910

15:                                               ; preds = %2
  %16 = load ptr, ptr %6, align 4, !dbg !912
  %17 = getelementptr inbounds %struct.uart_driver_api, ptr %16, i32 0, i32 0, !dbg !913
  %18 = load ptr, ptr %17, align 4, !dbg !913
  %19 = load ptr, ptr %4, align 4, !dbg !914
  %20 = load ptr, ptr %5, align 4, !dbg !915
  %21 = call i32 %18(ptr noundef %19, ptr noundef %20), !dbg !912
  store i32 %21, ptr %3, align 4, !dbg !916
  br label %22, !dbg !916

22:                                               ; preds = %15, %14
  %23 = load i32, ptr %3, align 4, !dbg !917
  ret i32 %23, !dbg !917
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_uart_poll_in_u16(ptr noundef %0, ptr noundef %1) #0 !dbg !918 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !922, metadata !DIExpression()), !dbg !923
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !924, metadata !DIExpression()), !dbg !925
  %5 = load ptr, ptr %3, align 4, !dbg !926
  %6 = load ptr, ptr %4, align 4, !dbg !927
  ret i32 -134, !dbg !928
}

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_uart_poll_out(ptr noundef %0, i8 noundef zeroext %1) #0 !dbg !929 {
  %3 = alloca ptr, align 4
  %4 = alloca i8, align 1
  %5 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !930, metadata !DIExpression()), !dbg !931
  store i8 %1, ptr %4, align 1
  call void @llvm.dbg.declare(metadata ptr %4, metadata !932, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.declare(metadata ptr %5, metadata !934, metadata !DIExpression()), !dbg !935
  %6 = load ptr, ptr %3, align 4, !dbg !936
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 2, !dbg !937
  %8 = load ptr, ptr %7, align 4, !dbg !937
  store ptr %8, ptr %5, align 4, !dbg !935
  %9 = load ptr, ptr %5, align 4, !dbg !938
  %10 = getelementptr inbounds %struct.uart_driver_api, ptr %9, i32 0, i32 1, !dbg !939
  %11 = load ptr, ptr %10, align 4, !dbg !939
  %12 = load ptr, ptr %3, align 4, !dbg !940
  %13 = load i8, ptr %4, align 1, !dbg !941
  call void %11(ptr noundef %12, i8 noundef zeroext %13), !dbg !938
  ret void, !dbg !942
}

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_uart_poll_out_u16(ptr noundef %0, i16 noundef zeroext %1) #0 !dbg !943 {
  %3 = alloca ptr, align 4
  %4 = alloca i16, align 2
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !946, metadata !DIExpression()), !dbg !947
  store i16 %1, ptr %4, align 2
  call void @llvm.dbg.declare(metadata ptr %4, metadata !948, metadata !DIExpression()), !dbg !949
  %5 = load ptr, ptr %3, align 4, !dbg !950
  %6 = load i16, ptr %4, align 2, !dbg !951
  ret void, !dbg !952
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_uart_configure(ptr noundef %0, ptr noundef %1) #0 !dbg !953 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !954, metadata !DIExpression()), !dbg !955
  store ptr %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !956, metadata !DIExpression()), !dbg !957
  call void @llvm.dbg.declare(metadata ptr %6, metadata !958, metadata !DIExpression()), !dbg !959
  %7 = load ptr, ptr %4, align 4, !dbg !960
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 2, !dbg !961
  %9 = load ptr, ptr %8, align 4, !dbg !961
  store ptr %9, ptr %6, align 4, !dbg !959
  %10 = load ptr, ptr %6, align 4, !dbg !962
  %11 = getelementptr inbounds %struct.uart_driver_api, ptr %10, i32 0, i32 3, !dbg !964
  %12 = load ptr, ptr %11, align 4, !dbg !964
  %13 = icmp eq ptr %12, null, !dbg !965
  br i1 %13, label %14, label %15, !dbg !966

14:                                               ; preds = %2
  store i32 -88, ptr %3, align 4, !dbg !967
  br label %22, !dbg !967

15:                                               ; preds = %2
  %16 = load ptr, ptr %6, align 4, !dbg !969
  %17 = getelementptr inbounds %struct.uart_driver_api, ptr %16, i32 0, i32 3, !dbg !970
  %18 = load ptr, ptr %17, align 4, !dbg !970
  %19 = load ptr, ptr %4, align 4, !dbg !971
  %20 = load ptr, ptr %5, align 4, !dbg !972
  %21 = call i32 %18(ptr noundef %19, ptr noundef %20), !dbg !969
  store i32 %21, ptr %3, align 4, !dbg !973
  br label %22, !dbg !973

22:                                               ; preds = %15, %14
  %23 = load i32, ptr %3, align 4, !dbg !974
  ret i32 %23, !dbg !974
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_uart_config_get(ptr noundef %0, ptr noundef %1) #0 !dbg !975 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !976, metadata !DIExpression()), !dbg !977
  store ptr %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !978, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.declare(metadata ptr %6, metadata !980, metadata !DIExpression()), !dbg !981
  %7 = load ptr, ptr %4, align 4, !dbg !982
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 2, !dbg !983
  %9 = load ptr, ptr %8, align 4, !dbg !983
  store ptr %9, ptr %6, align 4, !dbg !981
  %10 = load ptr, ptr %6, align 4, !dbg !984
  %11 = getelementptr inbounds %struct.uart_driver_api, ptr %10, i32 0, i32 4, !dbg !986
  %12 = load ptr, ptr %11, align 4, !dbg !986
  %13 = icmp eq ptr %12, null, !dbg !987
  br i1 %13, label %14, label %15, !dbg !988

14:                                               ; preds = %2
  store i32 -88, ptr %3, align 4, !dbg !989
  br label %22, !dbg !989

15:                                               ; preds = %2
  %16 = load ptr, ptr %6, align 4, !dbg !991
  %17 = getelementptr inbounds %struct.uart_driver_api, ptr %16, i32 0, i32 4, !dbg !992
  %18 = load ptr, ptr %17, align 4, !dbg !992
  %19 = load ptr, ptr %4, align 4, !dbg !993
  %20 = load ptr, ptr %5, align 4, !dbg !994
  %21 = call i32 %18(ptr noundef %19, ptr noundef %20), !dbg !991
  store i32 %21, ptr %3, align 4, !dbg !995
  br label %22, !dbg !995

22:                                               ; preds = %15, %14
  %23 = load i32, ptr %3, align 4, !dbg !996
  ret i32 %23, !dbg !996
}

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_uart_irq_tx_enable(ptr noundef %0) #0 !dbg !997 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !998, metadata !DIExpression()), !dbg !999
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1000, metadata !DIExpression()), !dbg !1001
  %4 = load ptr, ptr %2, align 4, !dbg !1002
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 2, !dbg !1003
  %6 = load ptr, ptr %5, align 4, !dbg !1003
  store ptr %6, ptr %3, align 4, !dbg !1001
  %7 = load ptr, ptr %3, align 4, !dbg !1004
  %8 = getelementptr inbounds %struct.uart_driver_api, ptr %7, i32 0, i32 7, !dbg !1006
  %9 = load ptr, ptr %8, align 4, !dbg !1006
  %10 = icmp ne ptr %9, null, !dbg !1007
  br i1 %10, label %11, label %16, !dbg !1008

11:                                               ; preds = %1
  %12 = load ptr, ptr %3, align 4, !dbg !1009
  %13 = getelementptr inbounds %struct.uart_driver_api, ptr %12, i32 0, i32 7, !dbg !1011
  %14 = load ptr, ptr %13, align 4, !dbg !1011
  %15 = load ptr, ptr %2, align 4, !dbg !1012
  call void %14(ptr noundef %15), !dbg !1009
  br label %16, !dbg !1013

16:                                               ; preds = %11, %1
  ret void, !dbg !1014
}

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_uart_irq_tx_disable(ptr noundef %0) #0 !dbg !1015 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1016, metadata !DIExpression()), !dbg !1017
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1018, metadata !DIExpression()), !dbg !1019
  %4 = load ptr, ptr %2, align 4, !dbg !1020
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 2, !dbg !1021
  %6 = load ptr, ptr %5, align 4, !dbg !1021
  store ptr %6, ptr %3, align 4, !dbg !1019
  %7 = load ptr, ptr %3, align 4, !dbg !1022
  %8 = getelementptr inbounds %struct.uart_driver_api, ptr %7, i32 0, i32 8, !dbg !1024
  %9 = load ptr, ptr %8, align 4, !dbg !1024
  %10 = icmp ne ptr %9, null, !dbg !1025
  br i1 %10, label %11, label %16, !dbg !1026

11:                                               ; preds = %1
  %12 = load ptr, ptr %3, align 4, !dbg !1027
  %13 = getelementptr inbounds %struct.uart_driver_api, ptr %12, i32 0, i32 8, !dbg !1029
  %14 = load ptr, ptr %13, align 4, !dbg !1029
  %15 = load ptr, ptr %2, align 4, !dbg !1030
  call void %14(ptr noundef %15), !dbg !1027
  br label %16, !dbg !1031

16:                                               ; preds = %11, %1
  ret void, !dbg !1032
}

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_uart_irq_rx_enable(ptr noundef %0) #0 !dbg !1033 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1034, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1036, metadata !DIExpression()), !dbg !1037
  %4 = load ptr, ptr %2, align 4, !dbg !1038
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 2, !dbg !1039
  %6 = load ptr, ptr %5, align 4, !dbg !1039
  store ptr %6, ptr %3, align 4, !dbg !1037
  %7 = load ptr, ptr %3, align 4, !dbg !1040
  %8 = getelementptr inbounds %struct.uart_driver_api, ptr %7, i32 0, i32 10, !dbg !1042
  %9 = load ptr, ptr %8, align 4, !dbg !1042
  %10 = icmp ne ptr %9, null, !dbg !1043
  br i1 %10, label %11, label %16, !dbg !1044

11:                                               ; preds = %1
  %12 = load ptr, ptr %3, align 4, !dbg !1045
  %13 = getelementptr inbounds %struct.uart_driver_api, ptr %12, i32 0, i32 10, !dbg !1047
  %14 = load ptr, ptr %13, align 4, !dbg !1047
  %15 = load ptr, ptr %2, align 4, !dbg !1048
  call void %14(ptr noundef %15), !dbg !1045
  br label %16, !dbg !1049

16:                                               ; preds = %11, %1
  ret void, !dbg !1050
}

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_uart_irq_rx_disable(ptr noundef %0) #0 !dbg !1051 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1052, metadata !DIExpression()), !dbg !1053
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1054, metadata !DIExpression()), !dbg !1055
  %4 = load ptr, ptr %2, align 4, !dbg !1056
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 2, !dbg !1057
  %6 = load ptr, ptr %5, align 4, !dbg !1057
  store ptr %6, ptr %3, align 4, !dbg !1055
  %7 = load ptr, ptr %3, align 4, !dbg !1058
  %8 = getelementptr inbounds %struct.uart_driver_api, ptr %7, i32 0, i32 11, !dbg !1060
  %9 = load ptr, ptr %8, align 4, !dbg !1060
  %10 = icmp ne ptr %9, null, !dbg !1061
  br i1 %10, label %11, label %16, !dbg !1062

11:                                               ; preds = %1
  %12 = load ptr, ptr %3, align 4, !dbg !1063
  %13 = getelementptr inbounds %struct.uart_driver_api, ptr %12, i32 0, i32 11, !dbg !1065
  %14 = load ptr, ptr %13, align 4, !dbg !1065
  %15 = load ptr, ptr %2, align 4, !dbg !1066
  call void %14(ptr noundef %15), !dbg !1063
  br label %16, !dbg !1067

16:                                               ; preds = %11, %1
  ret void, !dbg !1068
}

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_uart_irq_err_enable(ptr noundef %0) #0 !dbg !1069 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1070, metadata !DIExpression()), !dbg !1071
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1072, metadata !DIExpression()), !dbg !1073
  %4 = load ptr, ptr %2, align 4, !dbg !1074
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 2, !dbg !1075
  %6 = load ptr, ptr %5, align 4, !dbg !1075
  store ptr %6, ptr %3, align 4, !dbg !1073
  %7 = load ptr, ptr %3, align 4, !dbg !1076
  %8 = getelementptr inbounds %struct.uart_driver_api, ptr %7, i32 0, i32 14, !dbg !1078
  %9 = load ptr, ptr %8, align 4, !dbg !1078
  %10 = icmp ne ptr %9, null, !dbg !1076
  br i1 %10, label %11, label %16, !dbg !1079

11:                                               ; preds = %1
  %12 = load ptr, ptr %3, align 4, !dbg !1080
  %13 = getelementptr inbounds %struct.uart_driver_api, ptr %12, i32 0, i32 14, !dbg !1082
  %14 = load ptr, ptr %13, align 4, !dbg !1082
  %15 = load ptr, ptr %2, align 4, !dbg !1083
  call void %14(ptr noundef %15), !dbg !1080
  br label %16, !dbg !1084

16:                                               ; preds = %11, %1
  ret void, !dbg !1085
}

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_uart_irq_err_disable(ptr noundef %0) #0 !dbg !1086 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1087, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1089, metadata !DIExpression()), !dbg !1090
  %4 = load ptr, ptr %2, align 4, !dbg !1091
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 2, !dbg !1092
  %6 = load ptr, ptr %5, align 4, !dbg !1092
  store ptr %6, ptr %3, align 4, !dbg !1090
  %7 = load ptr, ptr %3, align 4, !dbg !1093
  %8 = getelementptr inbounds %struct.uart_driver_api, ptr %7, i32 0, i32 15, !dbg !1095
  %9 = load ptr, ptr %8, align 4, !dbg !1095
  %10 = icmp ne ptr %9, null, !dbg !1093
  br i1 %10, label %11, label %16, !dbg !1096

11:                                               ; preds = %1
  %12 = load ptr, ptr %3, align 4, !dbg !1097
  %13 = getelementptr inbounds %struct.uart_driver_api, ptr %12, i32 0, i32 15, !dbg !1099
  %14 = load ptr, ptr %13, align 4, !dbg !1099
  %15 = load ptr, ptr %2, align 4, !dbg !1100
  call void %14(ptr noundef %15), !dbg !1097
  br label %16, !dbg !1101

16:                                               ; preds = %11, %1
  ret void, !dbg !1102
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_uart_irq_is_pending(ptr noundef %0) #0 !dbg !1103 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1104, metadata !DIExpression()), !dbg !1105
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1106, metadata !DIExpression()), !dbg !1107
  %5 = load ptr, ptr %3, align 4, !dbg !1108
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 2, !dbg !1109
  %7 = load ptr, ptr %6, align 4, !dbg !1109
  store ptr %7, ptr %4, align 4, !dbg !1107
  %8 = load ptr, ptr %4, align 4, !dbg !1110
  %9 = getelementptr inbounds %struct.uart_driver_api, ptr %8, i32 0, i32 16, !dbg !1112
  %10 = load ptr, ptr %9, align 4, !dbg !1112
  %11 = icmp eq ptr %10, null, !dbg !1113
  br i1 %11, label %12, label %13, !dbg !1114

12:                                               ; preds = %1
  store i32 -88, ptr %2, align 4, !dbg !1115
  br label %19, !dbg !1115

13:                                               ; preds = %1
  %14 = load ptr, ptr %4, align 4, !dbg !1117
  %15 = getelementptr inbounds %struct.uart_driver_api, ptr %14, i32 0, i32 16, !dbg !1118
  %16 = load ptr, ptr %15, align 4, !dbg !1118
  %17 = load ptr, ptr %3, align 4, !dbg !1119
  %18 = call i32 %16(ptr noundef %17), !dbg !1117
  store i32 %18, ptr %2, align 4, !dbg !1120
  br label %19, !dbg !1120

19:                                               ; preds = %13, %12
  %20 = load i32, ptr %2, align 4, !dbg !1121
  ret i32 %20, !dbg !1121
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_uart_irq_update(ptr noundef %0) #0 !dbg !1122 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1123, metadata !DIExpression()), !dbg !1124
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1125, metadata !DIExpression()), !dbg !1126
  %5 = load ptr, ptr %3, align 4, !dbg !1127
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 2, !dbg !1128
  %7 = load ptr, ptr %6, align 4, !dbg !1128
  store ptr %7, ptr %4, align 4, !dbg !1126
  %8 = load ptr, ptr %4, align 4, !dbg !1129
  %9 = getelementptr inbounds %struct.uart_driver_api, ptr %8, i32 0, i32 17, !dbg !1131
  %10 = load ptr, ptr %9, align 4, !dbg !1131
  %11 = icmp eq ptr %10, null, !dbg !1132
  br i1 %11, label %12, label %13, !dbg !1133

12:                                               ; preds = %1
  store i32 -88, ptr %2, align 4, !dbg !1134
  br label %19, !dbg !1134

13:                                               ; preds = %1
  %14 = load ptr, ptr %4, align 4, !dbg !1136
  %15 = getelementptr inbounds %struct.uart_driver_api, ptr %14, i32 0, i32 17, !dbg !1137
  %16 = load ptr, ptr %15, align 4, !dbg !1137
  %17 = load ptr, ptr %3, align 4, !dbg !1138
  %18 = call i32 %16(ptr noundef %17), !dbg !1136
  store i32 %18, ptr %2, align 4, !dbg !1139
  br label %19, !dbg !1139

19:                                               ; preds = %13, %12
  %20 = load i32, ptr %2, align 4, !dbg !1140
  ret i32 %20, !dbg !1140
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_uart_tx(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 !dbg !1141 {
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1144, metadata !DIExpression()), !dbg !1145
  store ptr %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1146, metadata !DIExpression()), !dbg !1147
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1148, metadata !DIExpression()), !dbg !1149
  store i32 %3, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1150, metadata !DIExpression()), !dbg !1151
  %9 = load ptr, ptr %5, align 4, !dbg !1152
  %10 = load ptr, ptr %6, align 4, !dbg !1153
  %11 = load i32, ptr %7, align 4, !dbg !1154
  %12 = load i32, ptr %8, align 4, !dbg !1155
  ret i32 -134, !dbg !1156
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_uart_tx_u16(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 !dbg !1157 {
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1162, metadata !DIExpression()), !dbg !1163
  store ptr %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1164, metadata !DIExpression()), !dbg !1165
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1166, metadata !DIExpression()), !dbg !1167
  store i32 %3, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1168, metadata !DIExpression()), !dbg !1169
  %9 = load ptr, ptr %5, align 4, !dbg !1170
  %10 = load ptr, ptr %6, align 4, !dbg !1171
  %11 = load i32, ptr %7, align 4, !dbg !1172
  %12 = load i32, ptr %8, align 4, !dbg !1173
  ret i32 -134, !dbg !1174
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_uart_tx_abort(ptr noundef %0) #0 !dbg !1175 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1176, metadata !DIExpression()), !dbg !1177
  %3 = load ptr, ptr %2, align 4, !dbg !1178
  ret i32 -134, !dbg !1179
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_uart_rx_enable(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 !dbg !1180 {
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1183, metadata !DIExpression()), !dbg !1184
  store ptr %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1185, metadata !DIExpression()), !dbg !1186
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1187, metadata !DIExpression()), !dbg !1188
  store i32 %3, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1189, metadata !DIExpression()), !dbg !1190
  %9 = load ptr, ptr %5, align 4, !dbg !1191
  %10 = load ptr, ptr %6, align 4, !dbg !1192
  %11 = load i32, ptr %7, align 4, !dbg !1193
  %12 = load i32, ptr %8, align 4, !dbg !1194
  ret i32 -134, !dbg !1195
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_uart_rx_enable_u16(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 !dbg !1196 {
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1199, metadata !DIExpression()), !dbg !1200
  store ptr %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1201, metadata !DIExpression()), !dbg !1202
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1203, metadata !DIExpression()), !dbg !1204
  store i32 %3, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1205, metadata !DIExpression()), !dbg !1206
  %9 = load ptr, ptr %5, align 4, !dbg !1207
  %10 = load ptr, ptr %6, align 4, !dbg !1208
  %11 = load i32, ptr %7, align 4, !dbg !1209
  %12 = load i32, ptr %8, align 4, !dbg !1210
  ret i32 -134, !dbg !1211
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_uart_rx_disable(ptr noundef %0) #0 !dbg !1212 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1213, metadata !DIExpression()), !dbg !1214
  %3 = load ptr, ptr %2, align 4, !dbg !1215
  ret i32 -134, !dbg !1216
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_uart_line_ctrl_set(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 !dbg !1217 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1220, metadata !DIExpression()), !dbg !1221
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1222, metadata !DIExpression()), !dbg !1223
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1224, metadata !DIExpression()), !dbg !1225
  %7 = load ptr, ptr %4, align 4, !dbg !1226
  %8 = load i32, ptr %5, align 4, !dbg !1227
  %9 = load i32, ptr %6, align 4, !dbg !1228
  ret i32 -134, !dbg !1229
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_uart_line_ctrl_get(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 !dbg !1230 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1233, metadata !DIExpression()), !dbg !1234
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1235, metadata !DIExpression()), !dbg !1236
  store ptr %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1237, metadata !DIExpression()), !dbg !1238
  %7 = load ptr, ptr %4, align 4, !dbg !1239
  %8 = load i32, ptr %5, align 4, !dbg !1240
  %9 = load ptr, ptr %6, align 4, !dbg !1241
  ret i32 -134, !dbg !1242
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_uart_drv_cmd(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 !dbg !1243 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1244, metadata !DIExpression()), !dbg !1245
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1246, metadata !DIExpression()), !dbg !1247
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1248, metadata !DIExpression()), !dbg !1249
  %7 = load ptr, ptr %4, align 4, !dbg !1250
  %8 = load i32, ptr %5, align 4, !dbg !1251
  %9 = load i32, ptr %6, align 4, !dbg !1252
  ret i32 -134, !dbg !1253
}

; Function Attrs: noinline nounwind optnone
define internal i32 @uart_stm32_init(ptr noundef %0) #0 !dbg !1254 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1255, metadata !DIExpression()), !dbg !1256
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1257, metadata !DIExpression()), !dbg !1259
  %6 = load ptr, ptr %3, align 4, !dbg !1260
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 1, !dbg !1261
  %8 = load ptr, ptr %7, align 4, !dbg !1261
  store ptr %8, ptr %4, align 4, !dbg !1259
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1262, metadata !DIExpression()), !dbg !1263
  %9 = load ptr, ptr %3, align 4, !dbg !1264
  %10 = call i32 @uart_stm32_clocks_enable(ptr noundef %9), !dbg !1265
  store i32 %10, ptr %5, align 4, !dbg !1266
  %11 = load i32, ptr %5, align 4, !dbg !1267
  %12 = icmp slt i32 %11, 0, !dbg !1269
  br i1 %12, label %13, label %15, !dbg !1270

13:                                               ; preds = %1
  %14 = load i32, ptr %5, align 4, !dbg !1271
  store i32 %14, ptr %2, align 4, !dbg !1273
  br label %36, !dbg !1273

15:                                               ; preds = %1
  %16 = load ptr, ptr %4, align 4, !dbg !1274
  %17 = getelementptr inbounds %struct.uart_stm32_config, ptr %16, i32 0, i32 12, !dbg !1275
  %18 = load ptr, ptr %17, align 4, !dbg !1275
  %19 = call i32 @pinctrl_apply_state(ptr noundef %18, i8 noundef zeroext 0), !dbg !1276
  store i32 %19, ptr %5, align 4, !dbg !1277
  %20 = load i32, ptr %5, align 4, !dbg !1278
  %21 = icmp slt i32 %20, 0, !dbg !1280
  br i1 %21, label %22, label %24, !dbg !1281

22:                                               ; preds = %15
  %23 = load i32, ptr %5, align 4, !dbg !1282
  store i32 %23, ptr %2, align 4, !dbg !1284
  br label %36, !dbg !1284

24:                                               ; preds = %15
  %25 = load ptr, ptr %3, align 4, !dbg !1285
  %26 = call i32 @uart_stm32_registers_configure(ptr noundef %25), !dbg !1286
  store i32 %26, ptr %5, align 4, !dbg !1287
  %27 = load i32, ptr %5, align 4, !dbg !1288
  %28 = icmp slt i32 %27, 0, !dbg !1290
  br i1 %28, label %29, label %31, !dbg !1291

29:                                               ; preds = %24
  %30 = load i32, ptr %5, align 4, !dbg !1292
  store i32 %30, ptr %2, align 4, !dbg !1294
  br label %36, !dbg !1294

31:                                               ; preds = %24
  %32 = load ptr, ptr %4, align 4, !dbg !1295
  %33 = getelementptr inbounds %struct.uart_stm32_config, ptr %32, i32 0, i32 13, !dbg !1296
  %34 = load ptr, ptr %33, align 4, !dbg !1296
  %35 = load ptr, ptr %3, align 4, !dbg !1297
  call void %34(ptr noundef %35), !dbg !1295
  store i32 0, ptr %2, align 4, !dbg !1298
  br label %36, !dbg !1298

36:                                               ; preds = %31, %29, %22, %13
  %37 = load i32, ptr %2, align 4, !dbg !1299
  ret i32 %37, !dbg !1299
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i64 @z_timeout_expires(ptr noundef) #2

declare i64 @z_timeout_remaining(ptr noundef) #2

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @sys_sflist_is_empty(ptr noundef %0) #0 !dbg !1300 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1304, metadata !DIExpression()), !dbg !1305
  %3 = load ptr, ptr %2, align 4, !dbg !1306
  %4 = call ptr @sys_sflist_peek_head(ptr noundef %3), !dbg !1307
  %5 = icmp eq ptr %4, null, !dbg !1308
  ret i1 %5, !dbg !1309
}

; Function Attrs: noinline nounwind optnone
define internal ptr @sys_sflist_peek_head(ptr noundef %0) #0 !dbg !1310 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1313, metadata !DIExpression()), !dbg !1314
  %3 = load ptr, ptr %2, align 4, !dbg !1315
  %4 = getelementptr inbounds %struct._sflist, ptr %3, i32 0, i32 0, !dbg !1316
  %5 = load ptr, ptr %4, align 4, !dbg !1316
  ret ptr %5, !dbg !1317
}

declare zeroext i1 @z_device_is_ready(ptr noundef) #2

; Function Attrs: noinline nounwind optnone
define internal void @uart_stm32_irq_config_func_0(ptr noundef %0) #0 !dbg !421 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1318, metadata !DIExpression()), !dbg !1319
  call void @z_arm_irq_priority_set(i32 noundef 28, i32 noundef 0, i32 noundef 0), !dbg !1320
  call void @arch_irq_enable(i32 noundef 28), !dbg !1322
  ret void, !dbg !1323
}

; Function Attrs: noinline nounwind optnone
define internal void @uart_stm32_isr(ptr noundef %0) #0 !dbg !1324 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1325, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1327, metadata !DIExpression()), !dbg !1329
  %4 = load ptr, ptr %2, align 4, !dbg !1330
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 4, !dbg !1331
  %6 = load ptr, ptr %5, align 4, !dbg !1331
  store ptr %6, ptr %3, align 4, !dbg !1329
  %7 = load ptr, ptr %3, align 4, !dbg !1332
  %8 = getelementptr inbounds %struct.uart_stm32_data, ptr %7, i32 0, i32 2, !dbg !1334
  %9 = load ptr, ptr %8, align 4, !dbg !1334
  %10 = icmp ne ptr %9, null, !dbg !1332
  br i1 %10, label %11, label %19, !dbg !1335

11:                                               ; preds = %1
  %12 = load ptr, ptr %3, align 4, !dbg !1336
  %13 = getelementptr inbounds %struct.uart_stm32_data, ptr %12, i32 0, i32 2, !dbg !1338
  %14 = load ptr, ptr %13, align 4, !dbg !1338
  %15 = load ptr, ptr %2, align 4, !dbg !1339
  %16 = load ptr, ptr %3, align 4, !dbg !1340
  %17 = getelementptr inbounds %struct.uart_stm32_data, ptr %16, i32 0, i32 3, !dbg !1341
  %18 = load ptr, ptr %17, align 4, !dbg !1341
  call void %14(ptr noundef %15, ptr noundef %18), !dbg !1336
  br label %19, !dbg !1342

19:                                               ; preds = %11, %1
  ret void, !dbg !1343
}

declare void @z_arm_irq_priority_set(i32 noundef, i32 noundef, i32 noundef) #2

declare void @arch_irq_enable(i32 noundef) #2

; Function Attrs: noinline nounwind optnone
define internal i32 @uart_stm32_poll_in(ptr noundef %0, ptr noundef %1) #0 !dbg !1344 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1345, metadata !DIExpression()), !dbg !1346
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1347, metadata !DIExpression()), !dbg !1348
  %5 = load ptr, ptr %3, align 4, !dbg !1349
  %6 = load ptr, ptr %4, align 4, !dbg !1350
  %7 = call i32 @uart_stm32_poll_in_visitor(ptr noundef %5, ptr noundef %6, ptr noundef @poll_in_u8), !dbg !1351
  ret i32 %7, !dbg !1352
}

; Function Attrs: noinline nounwind optnone
define internal void @uart_stm32_poll_out(ptr noundef %0, i8 noundef zeroext %1) #0 !dbg !1353 {
  %3 = alloca ptr, align 4
  %4 = alloca i8, align 1
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1354, metadata !DIExpression()), !dbg !1355
  store i8 %1, ptr %4, align 1
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1356, metadata !DIExpression()), !dbg !1357
  %5 = load ptr, ptr %3, align 4, !dbg !1358
  call void @uart_stm32_poll_out_visitor(ptr noundef %5, ptr noundef %4, ptr noundef @poll_out_u8), !dbg !1359
  ret void, !dbg !1360
}

; Function Attrs: noinline nounwind optnone
define internal i32 @uart_stm32_err_check(ptr noundef %0) #0 !dbg !1361 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1362, metadata !DIExpression()), !dbg !1363
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1364, metadata !DIExpression()), !dbg !1365
  %5 = load ptr, ptr %2, align 4, !dbg !1366
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 1, !dbg !1367
  %7 = load ptr, ptr %6, align 4, !dbg !1367
  store ptr %7, ptr %3, align 4, !dbg !1365
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1368, metadata !DIExpression()), !dbg !1369
  store i32 0, ptr %4, align 4, !dbg !1369
  %8 = load ptr, ptr %3, align 4, !dbg !1370
  %9 = getelementptr inbounds %struct.uart_stm32_config, ptr %8, i32 0, i32 0, !dbg !1372
  %10 = load ptr, ptr %9, align 4, !dbg !1372
  %11 = call i32 @LL_USART_IsActiveFlag_ORE(ptr noundef %10), !dbg !1373
  %12 = icmp ne i32 %11, 0, !dbg !1373
  br i1 %12, label %13, label %16, !dbg !1374

13:                                               ; preds = %1
  %14 = load i32, ptr %4, align 4, !dbg !1375
  %15 = or i32 %14, 1, !dbg !1375
  store i32 %15, ptr %4, align 4, !dbg !1375
  br label %16, !dbg !1377

16:                                               ; preds = %13, %1
  %17 = load ptr, ptr %3, align 4, !dbg !1378
  %18 = getelementptr inbounds %struct.uart_stm32_config, ptr %17, i32 0, i32 0, !dbg !1380
  %19 = load ptr, ptr %18, align 4, !dbg !1380
  %20 = call i32 @LL_USART_IsActiveFlag_PE(ptr noundef %19), !dbg !1381
  %21 = icmp ne i32 %20, 0, !dbg !1381
  br i1 %21, label %22, label %25, !dbg !1382

22:                                               ; preds = %16
  %23 = load i32, ptr %4, align 4, !dbg !1383
  %24 = or i32 %23, 2, !dbg !1383
  store i32 %24, ptr %4, align 4, !dbg !1383
  br label %25, !dbg !1385

25:                                               ; preds = %22, %16
  %26 = load ptr, ptr %3, align 4, !dbg !1386
  %27 = getelementptr inbounds %struct.uart_stm32_config, ptr %26, i32 0, i32 0, !dbg !1388
  %28 = load ptr, ptr %27, align 4, !dbg !1388
  %29 = call i32 @LL_USART_IsActiveFlag_FE(ptr noundef %28), !dbg !1389
  %30 = icmp ne i32 %29, 0, !dbg !1389
  br i1 %30, label %31, label %34, !dbg !1390

31:                                               ; preds = %25
  %32 = load i32, ptr %4, align 4, !dbg !1391
  %33 = or i32 %32, 4, !dbg !1391
  store i32 %33, ptr %4, align 4, !dbg !1391
  br label %34, !dbg !1393

34:                                               ; preds = %31, %25
  %35 = load ptr, ptr %3, align 4, !dbg !1394
  %36 = getelementptr inbounds %struct.uart_stm32_config, ptr %35, i32 0, i32 0, !dbg !1396
  %37 = load ptr, ptr %36, align 4, !dbg !1396
  %38 = call i32 @LL_USART_IsActiveFlag_NE(ptr noundef %37), !dbg !1397
  %39 = icmp ne i32 %38, 0, !dbg !1397
  br i1 %39, label %40, label %43, !dbg !1398

40:                                               ; preds = %34
  %41 = load i32, ptr %4, align 4, !dbg !1399
  %42 = or i32 %41, 32, !dbg !1399
  store i32 %42, ptr %4, align 4, !dbg !1399
  br label %43, !dbg !1401

43:                                               ; preds = %40, %34
  %44 = load ptr, ptr %3, align 4, !dbg !1402
  %45 = getelementptr inbounds %struct.uart_stm32_config, ptr %44, i32 0, i32 0, !dbg !1404
  %46 = load ptr, ptr %45, align 4, !dbg !1404
  %47 = call i32 @LL_USART_IsActiveFlag_LBD(ptr noundef %46), !dbg !1405
  %48 = icmp ne i32 %47, 0, !dbg !1405
  br i1 %48, label %49, label %52, !dbg !1406

49:                                               ; preds = %43
  %50 = load i32, ptr %4, align 4, !dbg !1407
  %51 = or i32 %50, 8, !dbg !1407
  store i32 %51, ptr %4, align 4, !dbg !1407
  br label %52, !dbg !1409

52:                                               ; preds = %49, %43
  %53 = load i32, ptr %4, align 4, !dbg !1410
  %54 = and i32 %53, 8, !dbg !1412
  %55 = icmp ne i32 %54, 0, !dbg !1412
  br i1 %55, label %56, label %60, !dbg !1413

56:                                               ; preds = %52
  %57 = load ptr, ptr %3, align 4, !dbg !1414
  %58 = getelementptr inbounds %struct.uart_stm32_config, ptr %57, i32 0, i32 0, !dbg !1416
  %59 = load ptr, ptr %58, align 4, !dbg !1416
  call void @LL_USART_ClearFlag_LBD(ptr noundef %59), !dbg !1417
  br label %60, !dbg !1418

60:                                               ; preds = %56, %52
  %61 = load i32, ptr %4, align 4, !dbg !1419
  %62 = and i32 %61, 1, !dbg !1421
  %63 = icmp ne i32 %62, 0, !dbg !1421
  br i1 %63, label %64, label %68, !dbg !1422

64:                                               ; preds = %60
  %65 = load ptr, ptr %3, align 4, !dbg !1423
  %66 = getelementptr inbounds %struct.uart_stm32_config, ptr %65, i32 0, i32 0, !dbg !1425
  %67 = load ptr, ptr %66, align 4, !dbg !1425
  call void @LL_USART_ClearFlag_ORE(ptr noundef %67), !dbg !1426
  br label %68, !dbg !1427

68:                                               ; preds = %64, %60
  %69 = load i32, ptr %4, align 4, !dbg !1428
  %70 = and i32 %69, 2, !dbg !1430
  %71 = icmp ne i32 %70, 0, !dbg !1430
  br i1 %71, label %72, label %76, !dbg !1431

72:                                               ; preds = %68
  %73 = load ptr, ptr %3, align 4, !dbg !1432
  %74 = getelementptr inbounds %struct.uart_stm32_config, ptr %73, i32 0, i32 0, !dbg !1434
  %75 = load ptr, ptr %74, align 4, !dbg !1434
  call void @LL_USART_ClearFlag_PE(ptr noundef %75), !dbg !1435
  br label %76, !dbg !1436

76:                                               ; preds = %72, %68
  %77 = load i32, ptr %4, align 4, !dbg !1437
  %78 = and i32 %77, 4, !dbg !1439
  %79 = icmp ne i32 %78, 0, !dbg !1439
  br i1 %79, label %80, label %84, !dbg !1440

80:                                               ; preds = %76
  %81 = load ptr, ptr %3, align 4, !dbg !1441
  %82 = getelementptr inbounds %struct.uart_stm32_config, ptr %81, i32 0, i32 0, !dbg !1443
  %83 = load ptr, ptr %82, align 4, !dbg !1443
  call void @LL_USART_ClearFlag_FE(ptr noundef %83), !dbg !1444
  br label %84, !dbg !1445

84:                                               ; preds = %80, %76
  %85 = load i32, ptr %4, align 4, !dbg !1446
  %86 = and i32 %85, 32, !dbg !1448
  %87 = icmp ne i32 %86, 0, !dbg !1448
  br i1 %87, label %88, label %92, !dbg !1449

88:                                               ; preds = %84
  %89 = load ptr, ptr %3, align 4, !dbg !1450
  %90 = getelementptr inbounds %struct.uart_stm32_config, ptr %89, i32 0, i32 0, !dbg !1452
  %91 = load ptr, ptr %90, align 4, !dbg !1452
  call void @LL_USART_ClearFlag_NE(ptr noundef %91), !dbg !1453
  br label %92, !dbg !1454

92:                                               ; preds = %88, %84
  %93 = load i32, ptr %4, align 4, !dbg !1455
  ret i32 %93, !dbg !1456
}

; Function Attrs: noinline nounwind optnone
define internal i32 @uart_stm32_configure(ptr noundef %0, ptr noundef %1) #0 !dbg !1457 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1458, metadata !DIExpression()), !dbg !1459
  store ptr %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1460, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1462, metadata !DIExpression()), !dbg !1463
  %12 = load ptr, ptr %4, align 4, !dbg !1464
  %13 = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 1, !dbg !1465
  %14 = load ptr, ptr %13, align 4, !dbg !1465
  store ptr %14, ptr %6, align 4, !dbg !1463
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1466, metadata !DIExpression()), !dbg !1467
  %15 = load ptr, ptr %4, align 4, !dbg !1468
  %16 = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 4, !dbg !1469
  %17 = load ptr, ptr %16, align 4, !dbg !1469
  store ptr %17, ptr %7, align 4, !dbg !1467
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1470, metadata !DIExpression()), !dbg !1471
  %18 = load ptr, ptr %7, align 4, !dbg !1472
  %19 = getelementptr inbounds %struct.uart_stm32_data, ptr %18, i32 0, i32 1, !dbg !1473
  %20 = load ptr, ptr %19, align 4, !dbg !1473
  store ptr %20, ptr %8, align 4, !dbg !1471
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1474, metadata !DIExpression()), !dbg !1476
  %21 = load ptr, ptr %5, align 4, !dbg !1477
  %22 = getelementptr inbounds %struct.uart_config, ptr %21, i32 0, i32 1, !dbg !1478
  %23 = load i8, ptr %22, align 4, !dbg !1478
  %24 = call i32 @uart_stm32_cfg2ll_parity(i8 noundef zeroext %23), !dbg !1479
  store i32 %24, ptr %9, align 4, !dbg !1476
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1480, metadata !DIExpression()), !dbg !1481
  %25 = load ptr, ptr %6, align 4, !dbg !1482
  %26 = load ptr, ptr %5, align 4, !dbg !1483
  %27 = getelementptr inbounds %struct.uart_config, ptr %26, i32 0, i32 2, !dbg !1484
  %28 = load i8, ptr %27, align 1, !dbg !1484
  %29 = call i32 @uart_stm32_cfg2ll_stopbits(ptr noundef %25, i8 noundef zeroext %28), !dbg !1485
  store i32 %29, ptr %10, align 4, !dbg !1481
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1486, metadata !DIExpression()), !dbg !1487
  %30 = load ptr, ptr %5, align 4, !dbg !1488
  %31 = getelementptr inbounds %struct.uart_config, ptr %30, i32 0, i32 3, !dbg !1489
  %32 = load i8, ptr %31, align 2, !dbg !1489
  %33 = load ptr, ptr %5, align 4, !dbg !1490
  %34 = getelementptr inbounds %struct.uart_config, ptr %33, i32 0, i32 1, !dbg !1491
  %35 = load i8, ptr %34, align 4, !dbg !1491
  %36 = call i32 @uart_stm32_cfg2ll_databits(i8 noundef zeroext %32, i8 noundef zeroext %35), !dbg !1492
  store i32 %36, ptr %11, align 4, !dbg !1487
  %37 = load ptr, ptr %5, align 4, !dbg !1493
  %38 = getelementptr inbounds %struct.uart_config, ptr %37, i32 0, i32 1, !dbg !1495
  %39 = load i8, ptr %38, align 4, !dbg !1495
  %40 = zext i8 %39 to i32, !dbg !1493
  %41 = icmp eq i32 %40, 3, !dbg !1496
  br i1 %41, label %48, label %42, !dbg !1497

42:                                               ; preds = %2
  %43 = load ptr, ptr %5, align 4, !dbg !1498
  %44 = getelementptr inbounds %struct.uart_config, ptr %43, i32 0, i32 1, !dbg !1499
  %45 = load i8, ptr %44, align 4, !dbg !1499
  %46 = zext i8 %45 to i32, !dbg !1498
  %47 = icmp eq i32 %46, 4, !dbg !1500
  br i1 %47, label %48, label %49, !dbg !1501

48:                                               ; preds = %42, %2
  store i32 -134, ptr %3, align 4, !dbg !1502
  br label %173, !dbg !1502

49:                                               ; preds = %42
  %50 = load ptr, ptr %5, align 4, !dbg !1504
  %51 = getelementptr inbounds %struct.uart_config, ptr %50, i32 0, i32 1, !dbg !1506
  %52 = load i8, ptr %51, align 4, !dbg !1506
  %53 = zext i8 %52 to i32, !dbg !1504
  %54 = icmp ne i32 %53, 0, !dbg !1507
  br i1 %54, label %55, label %62, !dbg !1508

55:                                               ; preds = %49
  %56 = load ptr, ptr %5, align 4, !dbg !1509
  %57 = getelementptr inbounds %struct.uart_config, ptr %56, i32 0, i32 3, !dbg !1510
  %58 = load i8, ptr %57, align 2, !dbg !1510
  %59 = zext i8 %58 to i32, !dbg !1509
  %60 = icmp eq i32 %59, 4, !dbg !1511
  br i1 %60, label %61, label %62, !dbg !1512

61:                                               ; preds = %55
  store i32 -134, ptr %3, align 4, !dbg !1513
  br label %173, !dbg !1513

62:                                               ; preds = %55, %49
  %63 = load i32, ptr %10, align 4, !dbg !1515
  %64 = call zeroext i8 @uart_stm32_ll2cfg_stopbits(i32 noundef %63), !dbg !1517
  %65 = zext i8 %64 to i32, !dbg !1517
  %66 = load ptr, ptr %5, align 4, !dbg !1518
  %67 = getelementptr inbounds %struct.uart_config, ptr %66, i32 0, i32 2, !dbg !1519
  %68 = load i8, ptr %67, align 1, !dbg !1519
  %69 = zext i8 %68 to i32, !dbg !1518
  %70 = icmp ne i32 %65, %69, !dbg !1520
  br i1 %70, label %71, label %72, !dbg !1521

71:                                               ; preds = %62
  store i32 -134, ptr %3, align 4, !dbg !1522
  br label %173, !dbg !1522

72:                                               ; preds = %62
  %73 = load i32, ptr %11, align 4, !dbg !1524
  %74 = load i32, ptr %9, align 4, !dbg !1526
  %75 = call zeroext i8 @uart_stm32_ll2cfg_databits(i32 noundef %73, i32 noundef %74), !dbg !1527
  %76 = zext i8 %75 to i32, !dbg !1527
  %77 = load ptr, ptr %5, align 4, !dbg !1528
  %78 = getelementptr inbounds %struct.uart_config, ptr %77, i32 0, i32 3, !dbg !1529
  %79 = load i8, ptr %78, align 2, !dbg !1529
  %80 = zext i8 %79 to i32, !dbg !1528
  %81 = icmp ne i32 %76, %80, !dbg !1530
  br i1 %81, label %82, label %83, !dbg !1531

82:                                               ; preds = %72
  store i32 -134, ptr %3, align 4, !dbg !1532
  br label %173, !dbg !1532

83:                                               ; preds = %72
  %84 = load ptr, ptr %5, align 4, !dbg !1534
  %85 = getelementptr inbounds %struct.uart_config, ptr %84, i32 0, i32 4, !dbg !1536
  %86 = load i8, ptr %85, align 1, !dbg !1536
  %87 = zext i8 %86 to i32, !dbg !1534
  %88 = icmp eq i32 %87, 0, !dbg !1537
  br i1 %88, label %162, label %89, !dbg !1538

89:                                               ; preds = %83
  %90 = load ptr, ptr %5, align 4, !dbg !1539
  %91 = getelementptr inbounds %struct.uart_config, ptr %90, i32 0, i32 4, !dbg !1540
  %92 = load i8, ptr %91, align 1, !dbg !1540
  %93 = zext i8 %92 to i32, !dbg !1539
  %94 = icmp eq i32 %93, 1, !dbg !1541
  br i1 %94, label %95, label %115, !dbg !1542

95:                                               ; preds = %89
  %96 = load ptr, ptr %6, align 4, !dbg !1543
  %97 = getelementptr inbounds %struct.uart_stm32_config, ptr %96, i32 0, i32 0, !dbg !1544
  %98 = load ptr, ptr %97, align 4, !dbg !1544
  %99 = icmp eq ptr %98, inttoptr (i32 1073821696 to ptr), !dbg !1545
  br i1 %99, label %162, label %100, !dbg !1546

100:                                              ; preds = %95
  %101 = load ptr, ptr %6, align 4, !dbg !1547
  %102 = getelementptr inbounds %struct.uart_stm32_config, ptr %101, i32 0, i32 0, !dbg !1548
  %103 = load ptr, ptr %102, align 4, !dbg !1548
  %104 = icmp eq ptr %103, inttoptr (i32 1073759232 to ptr), !dbg !1549
  br i1 %104, label %162, label %105, !dbg !1550

105:                                              ; preds = %100
  %106 = load ptr, ptr %6, align 4, !dbg !1551
  %107 = getelementptr inbounds %struct.uart_stm32_config, ptr %106, i32 0, i32 0, !dbg !1552
  %108 = load ptr, ptr %107, align 4, !dbg !1552
  %109 = icmp eq ptr %108, inttoptr (i32 1073760256 to ptr), !dbg !1553
  br i1 %109, label %162, label %110, !dbg !1554

110:                                              ; preds = %105
  %111 = load ptr, ptr %6, align 4, !dbg !1555
  %112 = getelementptr inbounds %struct.uart_stm32_config, ptr %111, i32 0, i32 0, !dbg !1556
  %113 = load ptr, ptr %112, align 4, !dbg !1556
  %114 = icmp eq ptr %113, inttoptr (i32 1073761280 to ptr), !dbg !1557
  br i1 %114, label %162, label %115, !dbg !1558

115:                                              ; preds = %110, %89
  %116 = load ptr, ptr %5, align 4, !dbg !1559
  %117 = getelementptr inbounds %struct.uart_config, ptr %116, i32 0, i32 4, !dbg !1560
  %118 = load i8, ptr %117, align 1, !dbg !1560
  %119 = zext i8 %118 to i32, !dbg !1559
  %120 = icmp eq i32 %119, 3, !dbg !1561
  br i1 %120, label %121, label %161, !dbg !1562

121:                                              ; preds = %115
  %122 = load ptr, ptr %6, align 4, !dbg !1563
  %123 = getelementptr inbounds %struct.uart_stm32_config, ptr %122, i32 0, i32 0, !dbg !1564
  %124 = load ptr, ptr %123, align 4, !dbg !1564
  %125 = icmp eq ptr %124, inttoptr (i32 1073821696 to ptr), !dbg !1565
  br i1 %125, label %162, label %126, !dbg !1566

126:                                              ; preds = %121
  %127 = load ptr, ptr %6, align 4, !dbg !1567
  %128 = getelementptr inbounds %struct.uart_stm32_config, ptr %127, i32 0, i32 0, !dbg !1568
  %129 = load ptr, ptr %128, align 4, !dbg !1568
  %130 = icmp eq ptr %129, inttoptr (i32 1073759232 to ptr), !dbg !1569
  br i1 %130, label %162, label %131, !dbg !1570

131:                                              ; preds = %126
  %132 = load ptr, ptr %6, align 4, !dbg !1571
  %133 = getelementptr inbounds %struct.uart_stm32_config, ptr %132, i32 0, i32 0, !dbg !1572
  %134 = load ptr, ptr %133, align 4, !dbg !1572
  %135 = icmp eq ptr %134, inttoptr (i32 1073760256 to ptr), !dbg !1573
  br i1 %135, label %162, label %136, !dbg !1574

136:                                              ; preds = %131
  %137 = load ptr, ptr %6, align 4, !dbg !1575
  %138 = getelementptr inbounds %struct.uart_stm32_config, ptr %137, i32 0, i32 0, !dbg !1576
  %139 = load ptr, ptr %138, align 4, !dbg !1576
  %140 = icmp eq ptr %139, inttoptr (i32 1073761280 to ptr), !dbg !1577
  br i1 %140, label %162, label %141, !dbg !1578

141:                                              ; preds = %136
  %142 = load ptr, ptr %6, align 4, !dbg !1579
  %143 = getelementptr inbounds %struct.uart_stm32_config, ptr %142, i32 0, i32 0, !dbg !1580
  %144 = load ptr, ptr %143, align 4, !dbg !1580
  %145 = icmp eq ptr %144, inttoptr (i32 1073762304 to ptr), !dbg !1581
  br i1 %145, label %162, label %146, !dbg !1582

146:                                              ; preds = %141
  %147 = load ptr, ptr %6, align 4, !dbg !1583
  %148 = getelementptr inbounds %struct.uart_stm32_config, ptr %147, i32 0, i32 0, !dbg !1584
  %149 = load ptr, ptr %148, align 4, !dbg !1584
  %150 = icmp eq ptr %149, inttoptr (i32 1073812480 to ptr), !dbg !1585
  br i1 %150, label %162, label %151, !dbg !1586

151:                                              ; preds = %146
  %152 = load ptr, ptr %6, align 4, !dbg !1587
  %153 = getelementptr inbounds %struct.uart_stm32_config, ptr %152, i32 0, i32 0, !dbg !1588
  %154 = load ptr, ptr %153, align 4, !dbg !1588
  %155 = icmp eq ptr %154, inttoptr (i32 1073813504 to ptr), !dbg !1589
  br i1 %155, label %162, label %156, !dbg !1590

156:                                              ; preds = %151
  %157 = load ptr, ptr %6, align 4, !dbg !1591
  %158 = getelementptr inbounds %struct.uart_stm32_config, ptr %157, i32 0, i32 0, !dbg !1592
  %159 = load ptr, ptr %158, align 4, !dbg !1592
  %160 = icmp eq ptr %159, inttoptr (i32 1073814528 to ptr), !dbg !1593
  br i1 %160, label %162, label %161, !dbg !1594

161:                                              ; preds = %156, %115
  store i32 -134, ptr %3, align 4, !dbg !1595
  br label %173, !dbg !1595

162:                                              ; preds = %156, %151, %146, %141, %136, %131, %126, %121, %110, %105, %100, %95, %83
  %163 = load ptr, ptr %6, align 4, !dbg !1597
  %164 = getelementptr inbounds %struct.uart_stm32_config, ptr %163, i32 0, i32 0, !dbg !1598
  %165 = load ptr, ptr %164, align 4, !dbg !1598
  call void @LL_USART_Disable(ptr noundef %165), !dbg !1599
  %166 = load ptr, ptr %4, align 4, !dbg !1600
  %167 = load ptr, ptr %5, align 4, !dbg !1601
  call void @uart_stm32_parameters_set(ptr noundef %166, ptr noundef %167), !dbg !1602
  %168 = load ptr, ptr %6, align 4, !dbg !1603
  %169 = getelementptr inbounds %struct.uart_stm32_config, ptr %168, i32 0, i32 0, !dbg !1604
  %170 = load ptr, ptr %169, align 4, !dbg !1604
  call void @LL_USART_Enable(ptr noundef %170), !dbg !1605
  %171 = load ptr, ptr %8, align 4, !dbg !1606
  %172 = load ptr, ptr %5, align 4, !dbg !1607
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %171, ptr align 4 %172, i32 8, i1 false), !dbg !1608
  store i32 0, ptr %3, align 4, !dbg !1609
  br label %173, !dbg !1609

173:                                              ; preds = %162, %161, %82, %71, %61, %48
  %174 = load i32, ptr %3, align 4, !dbg !1610
  ret i32 %174, !dbg !1610
}

; Function Attrs: noinline nounwind optnone
define internal i32 @uart_stm32_config_get(ptr noundef %0, ptr noundef %1) #0 !dbg !1611 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1612, metadata !DIExpression()), !dbg !1613
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1614, metadata !DIExpression()), !dbg !1615
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1616, metadata !DIExpression()), !dbg !1617
  %7 = load ptr, ptr %3, align 4, !dbg !1618
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 4, !dbg !1619
  %9 = load ptr, ptr %8, align 4, !dbg !1619
  store ptr %9, ptr %5, align 4, !dbg !1617
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1620, metadata !DIExpression()), !dbg !1621
  %10 = load ptr, ptr %5, align 4, !dbg !1622
  %11 = getelementptr inbounds %struct.uart_stm32_data, ptr %10, i32 0, i32 1, !dbg !1623
  %12 = load ptr, ptr %11, align 4, !dbg !1623
  store ptr %12, ptr %6, align 4, !dbg !1621
  %13 = load ptr, ptr %6, align 4, !dbg !1624
  %14 = getelementptr inbounds %struct.uart_config, ptr %13, i32 0, i32 0, !dbg !1625
  %15 = load i32, ptr %14, align 4, !dbg !1625
  %16 = load ptr, ptr %4, align 4, !dbg !1626
  %17 = getelementptr inbounds %struct.uart_config, ptr %16, i32 0, i32 0, !dbg !1627
  store i32 %15, ptr %17, align 4, !dbg !1628
  %18 = load ptr, ptr %3, align 4, !dbg !1629
  %19 = call i32 @uart_stm32_get_parity(ptr noundef %18), !dbg !1630
  %20 = call zeroext i8 @uart_stm32_ll2cfg_parity(i32 noundef %19), !dbg !1631
  %21 = load ptr, ptr %4, align 4, !dbg !1632
  %22 = getelementptr inbounds %struct.uart_config, ptr %21, i32 0, i32 1, !dbg !1633
  store i8 %20, ptr %22, align 4, !dbg !1634
  %23 = load ptr, ptr %3, align 4, !dbg !1635
  %24 = call i32 @uart_stm32_get_stopbits(ptr noundef %23), !dbg !1636
  %25 = call zeroext i8 @uart_stm32_ll2cfg_stopbits(i32 noundef %24), !dbg !1637
  %26 = load ptr, ptr %4, align 4, !dbg !1638
  %27 = getelementptr inbounds %struct.uart_config, ptr %26, i32 0, i32 2, !dbg !1639
  store i8 %25, ptr %27, align 1, !dbg !1640
  %28 = load ptr, ptr %3, align 4, !dbg !1641
  %29 = call i32 @uart_stm32_get_databits(ptr noundef %28), !dbg !1642
  %30 = load ptr, ptr %3, align 4, !dbg !1643
  %31 = call i32 @uart_stm32_get_parity(ptr noundef %30), !dbg !1644
  %32 = call zeroext i8 @uart_stm32_ll2cfg_databits(i32 noundef %29, i32 noundef %31), !dbg !1645
  %33 = load ptr, ptr %4, align 4, !dbg !1646
  %34 = getelementptr inbounds %struct.uart_config, ptr %33, i32 0, i32 3, !dbg !1647
  store i8 %32, ptr %34, align 2, !dbg !1648
  %35 = load ptr, ptr %3, align 4, !dbg !1649
  %36 = call i32 @uart_stm32_get_hwctrl(ptr noundef %35), !dbg !1650
  %37 = call zeroext i8 @uart_stm32_ll2cfg_hwctrl(i32 noundef %36), !dbg !1651
  %38 = load ptr, ptr %4, align 4, !dbg !1652
  %39 = getelementptr inbounds %struct.uart_config, ptr %38, i32 0, i32 4, !dbg !1653
  store i8 %37, ptr %39, align 1, !dbg !1654
  %40 = load ptr, ptr %3, align 4, !dbg !1655
  %41 = call zeroext i1 @uart_stm32_get_driver_enable(ptr noundef %40), !dbg !1657
  br i1 %41, label %42, label %45, !dbg !1658

42:                                               ; preds = %2
  %43 = load ptr, ptr %4, align 4, !dbg !1659
  %44 = getelementptr inbounds %struct.uart_config, ptr %43, i32 0, i32 4, !dbg !1661
  store i8 3, ptr %44, align 1, !dbg !1662
  br label %45, !dbg !1663

45:                                               ; preds = %42, %2
  ret i32 0, !dbg !1664
}

; Function Attrs: noinline nounwind optnone
define internal i32 @uart_stm32_fifo_fill(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 !dbg !1665 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  store ptr %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1666, metadata !DIExpression()), !dbg !1667
  store ptr %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1668, metadata !DIExpression()), !dbg !1669
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1670, metadata !DIExpression()), !dbg !1671
  %8 = load ptr, ptr %5, align 4, !dbg !1672
  %9 = call i32 @uart_stm32_get_databits(ptr noundef %8), !dbg !1674
  %10 = load ptr, ptr %5, align 4, !dbg !1675
  %11 = call i32 @uart_stm32_get_parity(ptr noundef %10), !dbg !1676
  %12 = call zeroext i8 @uart_stm32_ll2cfg_databits(i32 noundef %9, i32 noundef %11), !dbg !1677
  %13 = zext i8 %12 to i32, !dbg !1677
  %14 = icmp eq i32 %13, 4, !dbg !1678
  br i1 %14, label %15, label %16, !dbg !1679

15:                                               ; preds = %3
  store i32 -134, ptr %4, align 4, !dbg !1680
  br label %21, !dbg !1680

16:                                               ; preds = %3
  %17 = load ptr, ptr %5, align 4, !dbg !1682
  %18 = load ptr, ptr %6, align 4, !dbg !1683
  %19 = load i32, ptr %7, align 4, !dbg !1684
  %20 = call i32 @uart_stm32_fifo_fill_visitor(ptr noundef %17, ptr noundef %18, i32 noundef %19, ptr noundef @fifo_fill_with_u8), !dbg !1685
  store i32 %20, ptr %4, align 4, !dbg !1686
  br label %21, !dbg !1686

21:                                               ; preds = %16, %15
  %22 = load i32, ptr %4, align 4, !dbg !1687
  ret i32 %22, !dbg !1687
}

; Function Attrs: noinline nounwind optnone
define internal i32 @uart_stm32_fifo_read(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 !dbg !1688 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  store ptr %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1689, metadata !DIExpression()), !dbg !1690
  store ptr %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1691, metadata !DIExpression()), !dbg !1692
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1693, metadata !DIExpression()), !dbg !1694
  %8 = load ptr, ptr %5, align 4, !dbg !1695
  %9 = call i32 @uart_stm32_get_databits(ptr noundef %8), !dbg !1697
  %10 = load ptr, ptr %5, align 4, !dbg !1698
  %11 = call i32 @uart_stm32_get_parity(ptr noundef %10), !dbg !1699
  %12 = call zeroext i8 @uart_stm32_ll2cfg_databits(i32 noundef %9, i32 noundef %11), !dbg !1700
  %13 = zext i8 %12 to i32, !dbg !1700
  %14 = icmp eq i32 %13, 4, !dbg !1701
  br i1 %14, label %15, label %16, !dbg !1702

15:                                               ; preds = %3
  store i32 -134, ptr %4, align 4, !dbg !1703
  br label %21, !dbg !1703

16:                                               ; preds = %3
  %17 = load ptr, ptr %5, align 4, !dbg !1705
  %18 = load ptr, ptr %6, align 4, !dbg !1706
  %19 = load i32, ptr %7, align 4, !dbg !1707
  %20 = call i32 @uart_stm32_fifo_read_visitor(ptr noundef %17, ptr noundef %18, i32 noundef %19, ptr noundef @fifo_read_with_u8), !dbg !1708
  store i32 %20, ptr %4, align 4, !dbg !1709
  br label %21, !dbg !1709

21:                                               ; preds = %16, %15
  %22 = load i32, ptr %4, align 4, !dbg !1710
  ret i32 %22, !dbg !1710
}

; Function Attrs: noinline nounwind optnone
define internal void @uart_stm32_irq_tx_enable(ptr noundef %0) #0 !dbg !1711 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1712, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1714, metadata !DIExpression()), !dbg !1715
  %4 = load ptr, ptr %2, align 4, !dbg !1716
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 1, !dbg !1717
  %6 = load ptr, ptr %5, align 4, !dbg !1717
  store ptr %6, ptr %3, align 4, !dbg !1715
  %7 = load ptr, ptr %3, align 4, !dbg !1718
  %8 = getelementptr inbounds %struct.uart_stm32_config, ptr %7, i32 0, i32 0, !dbg !1719
  %9 = load ptr, ptr %8, align 4, !dbg !1719
  call void @LL_USART_EnableIT_TC(ptr noundef %9), !dbg !1720
  ret void, !dbg !1721
}

; Function Attrs: noinline nounwind optnone
define internal void @uart_stm32_irq_tx_disable(ptr noundef %0) #0 !dbg !1722 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1723, metadata !DIExpression()), !dbg !1724
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1725, metadata !DIExpression()), !dbg !1726
  %4 = load ptr, ptr %2, align 4, !dbg !1727
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 1, !dbg !1728
  %6 = load ptr, ptr %5, align 4, !dbg !1728
  store ptr %6, ptr %3, align 4, !dbg !1726
  %7 = load ptr, ptr %3, align 4, !dbg !1729
  %8 = getelementptr inbounds %struct.uart_stm32_config, ptr %7, i32 0, i32 0, !dbg !1730
  %9 = load ptr, ptr %8, align 4, !dbg !1730
  call void @LL_USART_DisableIT_TC(ptr noundef %9), !dbg !1731
  ret void, !dbg !1732
}

; Function Attrs: noinline nounwind optnone
define internal i32 @uart_stm32_irq_tx_ready(ptr noundef %0) #0 !dbg !1733 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1734, metadata !DIExpression()), !dbg !1735
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1736, metadata !DIExpression()), !dbg !1737
  %4 = load ptr, ptr %2, align 4, !dbg !1738
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 1, !dbg !1739
  %6 = load ptr, ptr %5, align 4, !dbg !1739
  store ptr %6, ptr %3, align 4, !dbg !1737
  %7 = load ptr, ptr %3, align 4, !dbg !1740
  %8 = getelementptr inbounds %struct.uart_stm32_config, ptr %7, i32 0, i32 0, !dbg !1741
  %9 = load ptr, ptr %8, align 4, !dbg !1741
  %10 = call i32 @LL_USART_IsActiveFlag_TXE(ptr noundef %9), !dbg !1742
  %11 = icmp ne i32 %10, 0, !dbg !1742
  br i1 %11, label %12, label %18, !dbg !1743

12:                                               ; preds = %1
  %13 = load ptr, ptr %3, align 4, !dbg !1744
  %14 = getelementptr inbounds %struct.uart_stm32_config, ptr %13, i32 0, i32 0, !dbg !1745
  %15 = load ptr, ptr %14, align 4, !dbg !1745
  %16 = call i32 @LL_USART_IsEnabledIT_TC(ptr noundef %15), !dbg !1746
  %17 = icmp ne i32 %16, 0, !dbg !1743
  br label %18

18:                                               ; preds = %12, %1
  %19 = phi i1 [ false, %1 ], [ %17, %12 ], !dbg !1747
  %20 = zext i1 %19 to i32, !dbg !1743
  ret i32 %20, !dbg !1748
}

; Function Attrs: noinline nounwind optnone
define internal void @uart_stm32_irq_rx_enable(ptr noundef %0) #0 !dbg !1749 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1750, metadata !DIExpression()), !dbg !1751
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1752, metadata !DIExpression()), !dbg !1753
  %4 = load ptr, ptr %2, align 4, !dbg !1754
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 1, !dbg !1755
  %6 = load ptr, ptr %5, align 4, !dbg !1755
  store ptr %6, ptr %3, align 4, !dbg !1753
  %7 = load ptr, ptr %3, align 4, !dbg !1756
  %8 = getelementptr inbounds %struct.uart_stm32_config, ptr %7, i32 0, i32 0, !dbg !1757
  %9 = load ptr, ptr %8, align 4, !dbg !1757
  call void @LL_USART_EnableIT_RXNE(ptr noundef %9), !dbg !1758
  ret void, !dbg !1759
}

; Function Attrs: noinline nounwind optnone
define internal void @uart_stm32_irq_rx_disable(ptr noundef %0) #0 !dbg !1760 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1761, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1763, metadata !DIExpression()), !dbg !1764
  %4 = load ptr, ptr %2, align 4, !dbg !1765
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 1, !dbg !1766
  %6 = load ptr, ptr %5, align 4, !dbg !1766
  store ptr %6, ptr %3, align 4, !dbg !1764
  %7 = load ptr, ptr %3, align 4, !dbg !1767
  %8 = getelementptr inbounds %struct.uart_stm32_config, ptr %7, i32 0, i32 0, !dbg !1768
  %9 = load ptr, ptr %8, align 4, !dbg !1768
  call void @LL_USART_DisableIT_RXNE(ptr noundef %9), !dbg !1769
  ret void, !dbg !1770
}

; Function Attrs: noinline nounwind optnone
define internal i32 @uart_stm32_irq_tx_complete(ptr noundef %0) #0 !dbg !1771 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1772, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1774, metadata !DIExpression()), !dbg !1775
  %4 = load ptr, ptr %2, align 4, !dbg !1776
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 1, !dbg !1777
  %6 = load ptr, ptr %5, align 4, !dbg !1777
  store ptr %6, ptr %3, align 4, !dbg !1775
  %7 = load ptr, ptr %3, align 4, !dbg !1778
  %8 = getelementptr inbounds %struct.uart_stm32_config, ptr %7, i32 0, i32 0, !dbg !1779
  %9 = load ptr, ptr %8, align 4, !dbg !1779
  %10 = call i32 @LL_USART_IsActiveFlag_TC(ptr noundef %9), !dbg !1780
  ret i32 %10, !dbg !1781
}

; Function Attrs: noinline nounwind optnone
define internal i32 @uart_stm32_irq_rx_ready(ptr noundef %0) #0 !dbg !1782 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1783, metadata !DIExpression()), !dbg !1784
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1785, metadata !DIExpression()), !dbg !1786
  %4 = load ptr, ptr %2, align 4, !dbg !1787
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 1, !dbg !1788
  %6 = load ptr, ptr %5, align 4, !dbg !1788
  store ptr %6, ptr %3, align 4, !dbg !1786
  %7 = load ptr, ptr %3, align 4, !dbg !1789
  %8 = getelementptr inbounds %struct.uart_stm32_config, ptr %7, i32 0, i32 0, !dbg !1790
  %9 = load ptr, ptr %8, align 4, !dbg !1790
  %10 = call i32 @LL_USART_IsActiveFlag_RXNE(ptr noundef %9), !dbg !1791
  ret i32 %10, !dbg !1792
}

; Function Attrs: noinline nounwind optnone
define internal void @uart_stm32_irq_err_enable(ptr noundef %0) #0 !dbg !1793 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1794, metadata !DIExpression()), !dbg !1795
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1796, metadata !DIExpression()), !dbg !1797
  %4 = load ptr, ptr %2, align 4, !dbg !1798
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 1, !dbg !1799
  %6 = load ptr, ptr %5, align 4, !dbg !1799
  store ptr %6, ptr %3, align 4, !dbg !1797
  %7 = load ptr, ptr %3, align 4, !dbg !1800
  %8 = getelementptr inbounds %struct.uart_stm32_config, ptr %7, i32 0, i32 0, !dbg !1801
  %9 = load ptr, ptr %8, align 4, !dbg !1801
  call void @LL_USART_EnableIT_ERROR(ptr noundef %9), !dbg !1802
  %10 = load ptr, ptr %3, align 4, !dbg !1803
  %11 = getelementptr inbounds %struct.uart_stm32_config, ptr %10, i32 0, i32 0, !dbg !1805
  %12 = load ptr, ptr %11, align 4, !dbg !1805
  %13 = icmp eq ptr %12, inttoptr (i32 1073821696 to ptr), !dbg !1806
  br i1 %13, label %24, label %14, !dbg !1807

14:                                               ; preds = %1
  %15 = load ptr, ptr %3, align 4, !dbg !1808
  %16 = getelementptr inbounds %struct.uart_stm32_config, ptr %15, i32 0, i32 0, !dbg !1809
  %17 = load ptr, ptr %16, align 4, !dbg !1809
  %18 = icmp eq ptr %17, inttoptr (i32 1073759232 to ptr), !dbg !1810
  br i1 %18, label %24, label %19, !dbg !1811

19:                                               ; preds = %14
  %20 = load ptr, ptr %3, align 4, !dbg !1812
  %21 = getelementptr inbounds %struct.uart_stm32_config, ptr %20, i32 0, i32 0, !dbg !1813
  %22 = load ptr, ptr %21, align 4, !dbg !1813
  %23 = icmp eq ptr %22, inttoptr (i32 1073760256 to ptr), !dbg !1814
  br i1 %23, label %24, label %28, !dbg !1815

24:                                               ; preds = %19, %14, %1
  %25 = load ptr, ptr %3, align 4, !dbg !1816
  %26 = getelementptr inbounds %struct.uart_stm32_config, ptr %25, i32 0, i32 0, !dbg !1818
  %27 = load ptr, ptr %26, align 4, !dbg !1818
  call void @LL_USART_EnableIT_LBD(ptr noundef %27), !dbg !1819
  br label %28, !dbg !1820

28:                                               ; preds = %24, %19
  %29 = load ptr, ptr %3, align 4, !dbg !1821
  %30 = getelementptr inbounds %struct.uart_stm32_config, ptr %29, i32 0, i32 0, !dbg !1822
  %31 = load ptr, ptr %30, align 4, !dbg !1822
  call void @LL_USART_EnableIT_PE(ptr noundef %31), !dbg !1823
  ret void, !dbg !1824
}

; Function Attrs: noinline nounwind optnone
define internal void @uart_stm32_irq_err_disable(ptr noundef %0) #0 !dbg !1825 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1826, metadata !DIExpression()), !dbg !1827
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1828, metadata !DIExpression()), !dbg !1829
  %4 = load ptr, ptr %2, align 4, !dbg !1830
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 1, !dbg !1831
  %6 = load ptr, ptr %5, align 4, !dbg !1831
  store ptr %6, ptr %3, align 4, !dbg !1829
  %7 = load ptr, ptr %3, align 4, !dbg !1832
  %8 = getelementptr inbounds %struct.uart_stm32_config, ptr %7, i32 0, i32 0, !dbg !1833
  %9 = load ptr, ptr %8, align 4, !dbg !1833
  call void @LL_USART_DisableIT_ERROR(ptr noundef %9), !dbg !1834
  %10 = load ptr, ptr %3, align 4, !dbg !1835
  %11 = getelementptr inbounds %struct.uart_stm32_config, ptr %10, i32 0, i32 0, !dbg !1837
  %12 = load ptr, ptr %11, align 4, !dbg !1837
  %13 = icmp eq ptr %12, inttoptr (i32 1073821696 to ptr), !dbg !1838
  br i1 %13, label %24, label %14, !dbg !1839

14:                                               ; preds = %1
  %15 = load ptr, ptr %3, align 4, !dbg !1840
  %16 = getelementptr inbounds %struct.uart_stm32_config, ptr %15, i32 0, i32 0, !dbg !1841
  %17 = load ptr, ptr %16, align 4, !dbg !1841
  %18 = icmp eq ptr %17, inttoptr (i32 1073759232 to ptr), !dbg !1842
  br i1 %18, label %24, label %19, !dbg !1843

19:                                               ; preds = %14
  %20 = load ptr, ptr %3, align 4, !dbg !1844
  %21 = getelementptr inbounds %struct.uart_stm32_config, ptr %20, i32 0, i32 0, !dbg !1845
  %22 = load ptr, ptr %21, align 4, !dbg !1845
  %23 = icmp eq ptr %22, inttoptr (i32 1073760256 to ptr), !dbg !1846
  br i1 %23, label %24, label %28, !dbg !1847

24:                                               ; preds = %19, %14, %1
  %25 = load ptr, ptr %3, align 4, !dbg !1848
  %26 = getelementptr inbounds %struct.uart_stm32_config, ptr %25, i32 0, i32 0, !dbg !1850
  %27 = load ptr, ptr %26, align 4, !dbg !1850
  call void @LL_USART_DisableIT_LBD(ptr noundef %27), !dbg !1851
  br label %28, !dbg !1852

28:                                               ; preds = %24, %19
  %29 = load ptr, ptr %3, align 4, !dbg !1853
  %30 = getelementptr inbounds %struct.uart_stm32_config, ptr %29, i32 0, i32 0, !dbg !1854
  %31 = load ptr, ptr %30, align 4, !dbg !1854
  call void @LL_USART_DisableIT_PE(ptr noundef %31), !dbg !1855
  ret void, !dbg !1856
}

; Function Attrs: noinline nounwind optnone
define internal i32 @uart_stm32_irq_is_pending(ptr noundef %0) #0 !dbg !1857 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1858, metadata !DIExpression()), !dbg !1859
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1860, metadata !DIExpression()), !dbg !1861
  %4 = load ptr, ptr %2, align 4, !dbg !1862
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 1, !dbg !1863
  %6 = load ptr, ptr %5, align 4, !dbg !1863
  store ptr %6, ptr %3, align 4, !dbg !1861
  %7 = load ptr, ptr %3, align 4, !dbg !1864
  %8 = getelementptr inbounds %struct.uart_stm32_config, ptr %7, i32 0, i32 0, !dbg !1865
  %9 = load ptr, ptr %8, align 4, !dbg !1865
  %10 = call i32 @LL_USART_IsActiveFlag_RXNE(ptr noundef %9), !dbg !1866
  %11 = icmp ne i32 %10, 0, !dbg !1866
  br i1 %11, label %12, label %18, !dbg !1867

12:                                               ; preds = %1
  %13 = load ptr, ptr %3, align 4, !dbg !1868
  %14 = getelementptr inbounds %struct.uart_stm32_config, ptr %13, i32 0, i32 0, !dbg !1869
  %15 = load ptr, ptr %14, align 4, !dbg !1869
  %16 = call i32 @LL_USART_IsEnabledIT_RXNE(ptr noundef %15), !dbg !1870
  %17 = icmp ne i32 %16, 0, !dbg !1870
  br i1 %17, label %32, label %18, !dbg !1871

18:                                               ; preds = %12, %1
  %19 = load ptr, ptr %3, align 4, !dbg !1872
  %20 = getelementptr inbounds %struct.uart_stm32_config, ptr %19, i32 0, i32 0, !dbg !1873
  %21 = load ptr, ptr %20, align 4, !dbg !1873
  %22 = call i32 @LL_USART_IsActiveFlag_TC(ptr noundef %21), !dbg !1874
  %23 = icmp ne i32 %22, 0, !dbg !1874
  br i1 %23, label %24, label %30, !dbg !1875

24:                                               ; preds = %18
  %25 = load ptr, ptr %3, align 4, !dbg !1876
  %26 = getelementptr inbounds %struct.uart_stm32_config, ptr %25, i32 0, i32 0, !dbg !1877
  %27 = load ptr, ptr %26, align 4, !dbg !1877
  %28 = call i32 @LL_USART_IsEnabledIT_TC(ptr noundef %27), !dbg !1878
  %29 = icmp ne i32 %28, 0, !dbg !1875
  br label %30

30:                                               ; preds = %24, %18
  %31 = phi i1 [ false, %18 ], [ %29, %24 ], !dbg !1879
  br label %32, !dbg !1871

32:                                               ; preds = %30, %12
  %33 = phi i1 [ true, %12 ], [ %31, %30 ]
  %34 = zext i1 %33 to i32, !dbg !1871
  ret i32 %34, !dbg !1880
}

; Function Attrs: noinline nounwind optnone
define internal i32 @uart_stm32_irq_update(ptr noundef %0) #0 !dbg !1881 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1882, metadata !DIExpression()), !dbg !1883
  ret i32 1, !dbg !1884
}

; Function Attrs: noinline nounwind optnone
define internal void @uart_stm32_irq_callback_set(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !1885 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1886, metadata !DIExpression()), !dbg !1887
  store ptr %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1888, metadata !DIExpression()), !dbg !1889
  store ptr %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1890, metadata !DIExpression()), !dbg !1891
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1892, metadata !DIExpression()), !dbg !1893
  %8 = load ptr, ptr %4, align 4, !dbg !1894
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 4, !dbg !1895
  %10 = load ptr, ptr %9, align 4, !dbg !1895
  store ptr %10, ptr %7, align 4, !dbg !1893
  %11 = load ptr, ptr %5, align 4, !dbg !1896
  %12 = load ptr, ptr %7, align 4, !dbg !1897
  %13 = getelementptr inbounds %struct.uart_stm32_data, ptr %12, i32 0, i32 2, !dbg !1898
  store ptr %11, ptr %13, align 4, !dbg !1899
  %14 = load ptr, ptr %6, align 4, !dbg !1900
  %15 = load ptr, ptr %7, align 4, !dbg !1901
  %16 = getelementptr inbounds %struct.uart_stm32_data, ptr %15, i32 0, i32 3, !dbg !1902
  store ptr %14, ptr %16, align 4, !dbg !1903
  ret void, !dbg !1904
}

; Function Attrs: noinline nounwind optnone
define internal i32 @uart_stm32_poll_in_visitor(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !1905 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  store ptr %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1912, metadata !DIExpression()), !dbg !1913
  store ptr %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1914, metadata !DIExpression()), !dbg !1915
  store ptr %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1916, metadata !DIExpression()), !dbg !1917
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1918, metadata !DIExpression()), !dbg !1919
  %9 = load ptr, ptr %5, align 4, !dbg !1920
  %10 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 1, !dbg !1921
  %11 = load ptr, ptr %10, align 4, !dbg !1921
  store ptr %11, ptr %8, align 4, !dbg !1919
  %12 = load ptr, ptr %8, align 4, !dbg !1922
  %13 = getelementptr inbounds %struct.uart_stm32_config, ptr %12, i32 0, i32 0, !dbg !1924
  %14 = load ptr, ptr %13, align 4, !dbg !1924
  %15 = call i32 @LL_USART_IsActiveFlag_ORE(ptr noundef %14), !dbg !1925
  %16 = icmp ne i32 %15, 0, !dbg !1925
  br i1 %16, label %17, label %21, !dbg !1926

17:                                               ; preds = %3
  %18 = load ptr, ptr %8, align 4, !dbg !1927
  %19 = getelementptr inbounds %struct.uart_stm32_config, ptr %18, i32 0, i32 0, !dbg !1929
  %20 = load ptr, ptr %19, align 4, !dbg !1929
  call void @LL_USART_ClearFlag_ORE(ptr noundef %20), !dbg !1930
  br label %21, !dbg !1931

21:                                               ; preds = %17, %3
  %22 = load ptr, ptr %8, align 4, !dbg !1932
  %23 = getelementptr inbounds %struct.uart_stm32_config, ptr %22, i32 0, i32 0, !dbg !1934
  %24 = load ptr, ptr %23, align 4, !dbg !1934
  %25 = call i32 @LL_USART_IsActiveFlag_RXNE(ptr noundef %24), !dbg !1935
  %26 = icmp ne i32 %25, 0, !dbg !1935
  br i1 %26, label %28, label %27, !dbg !1936

27:                                               ; preds = %21
  store i32 -1, ptr %4, align 4, !dbg !1937
  br label %32, !dbg !1937

28:                                               ; preds = %21
  %29 = load ptr, ptr %7, align 4, !dbg !1939
  %30 = load ptr, ptr %8, align 4, !dbg !1940
  %31 = load ptr, ptr %6, align 4, !dbg !1941
  call void %29(ptr noundef %30, ptr noundef %31), !dbg !1939
  store i32 0, ptr %4, align 4, !dbg !1942
  br label %32, !dbg !1942

32:                                               ; preds = %28, %27
  %33 = load i32, ptr %4, align 4, !dbg !1943
  ret i32 %33, !dbg !1943
}

; Function Attrs: noinline nounwind optnone
define internal void @poll_in_u8(ptr noundef %0, ptr noundef %1) #0 !dbg !1944 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1945, metadata !DIExpression()), !dbg !1946
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1947, metadata !DIExpression()), !dbg !1948
  %5 = load ptr, ptr %3, align 4, !dbg !1949
  %6 = getelementptr inbounds %struct.uart_stm32_config, ptr %5, i32 0, i32 0, !dbg !1950
  %7 = load ptr, ptr %6, align 4, !dbg !1950
  %8 = call zeroext i8 @LL_USART_ReceiveData8(ptr noundef %7), !dbg !1951
  %9 = load ptr, ptr %4, align 4, !dbg !1952
  store i8 %8, ptr %9, align 1, !dbg !1953
  ret void, !dbg !1954
}

; Function Attrs: noinline nounwind optnone
define internal i32 @LL_USART_IsActiveFlag_ORE(ptr noundef %0) #0 !dbg !1955 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1961, metadata !DIExpression()), !dbg !1962
  %3 = load ptr, ptr %2, align 4, !dbg !1963
  %4 = getelementptr inbounds %struct.USART_TypeDef, ptr %3, i32 0, i32 7, !dbg !1964
  %5 = load volatile i32, ptr %4, align 4, !dbg !1964
  %6 = and i32 %5, 8, !dbg !1965
  %7 = icmp eq i32 %6, 8, !dbg !1966
  %8 = zext i1 %7 to i64, !dbg !1967
  %9 = select i1 %7, i32 1, i32 0, !dbg !1967
  ret i32 %9, !dbg !1968
}

; Function Attrs: noinline nounwind optnone
define internal void @LL_USART_ClearFlag_ORE(ptr noundef %0) #0 !dbg !1969 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1972, metadata !DIExpression()), !dbg !1973
  %3 = load ptr, ptr %2, align 4, !dbg !1974
  %4 = getelementptr inbounds %struct.USART_TypeDef, ptr %3, i32 0, i32 8, !dbg !1975
  store volatile i32 8, ptr %4, align 4, !dbg !1976
  ret void, !dbg !1977
}

; Function Attrs: noinline nounwind optnone
define internal i32 @LL_USART_IsActiveFlag_RXNE(ptr noundef %0) #0 !dbg !1978 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1979, metadata !DIExpression()), !dbg !1980
  %3 = load ptr, ptr %2, align 4, !dbg !1981
  %4 = getelementptr inbounds %struct.USART_TypeDef, ptr %3, i32 0, i32 7, !dbg !1982
  %5 = load volatile i32, ptr %4, align 4, !dbg !1982
  %6 = and i32 %5, 32, !dbg !1983
  %7 = icmp eq i32 %6, 32, !dbg !1984
  %8 = zext i1 %7 to i64, !dbg !1985
  %9 = select i1 %7, i32 1, i32 0, !dbg !1985
  ret i32 %9, !dbg !1986
}

; Function Attrs: noinline nounwind optnone
define internal zeroext i8 @LL_USART_ReceiveData8(ptr noundef %0) #0 !dbg !1987 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1990, metadata !DIExpression()), !dbg !1991
  %3 = load ptr, ptr %2, align 4, !dbg !1992
  %4 = getelementptr inbounds %struct.USART_TypeDef, ptr %3, i32 0, i32 9, !dbg !1993
  %5 = load volatile i16, ptr %4, align 4, !dbg !1993
  %6 = zext i16 %5 to i32, !dbg !1994
  %7 = and i32 %6, 511, !dbg !1995
  %8 = and i32 %7, 255, !dbg !1996
  %9 = trunc i32 %8 to i8, !dbg !1997
  ret i8 %9, !dbg !1998
}

; Function Attrs: noinline nounwind optnone
define internal void @uart_stm32_poll_out_visitor(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !1999 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  %11 = alloca i32, align 4
  store ptr %0, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2003, metadata !DIExpression()), !dbg !2004
  store ptr %1, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2005, metadata !DIExpression()), !dbg !2006
  store ptr %2, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2007, metadata !DIExpression()), !dbg !2008
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2009, metadata !DIExpression()), !dbg !2010
  %12 = load ptr, ptr %7, align 4, !dbg !2011
  %13 = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 1, !dbg !2012
  %14 = load ptr, ptr %13, align 4, !dbg !2012
  store ptr %14, ptr %10, align 4, !dbg !2010
  call void @llvm.dbg.declare(metadata ptr %11, metadata !2013, metadata !DIExpression()), !dbg !2014
  br label %15, !dbg !2015

15:                                               ; preds = %3, %36
  %16 = load ptr, ptr %10, align 4, !dbg !2016
  %17 = getelementptr inbounds %struct.uart_stm32_config, ptr %16, i32 0, i32 0, !dbg !2019
  %18 = load ptr, ptr %17, align 4, !dbg !2019
  %19 = call i32 @LL_USART_IsActiveFlag_TXE(ptr noundef %18), !dbg !2020
  %20 = icmp ne i32 %19, 0, !dbg !2020
  br i1 %20, label %21, label %36, !dbg !2021

21:                                               ; preds = %15
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2022, metadata !DIExpression()), !dbg !2027
  %22 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #5, !dbg !2030, !srcloc !2031
  store i32 %22, ptr %6, align 4, !dbg !2030
  %23 = load i32, ptr %6, align 4, !dbg !2032
  store i32 %23, ptr %11, align 4, !dbg !2033
  %24 = load ptr, ptr %10, align 4, !dbg !2034
  %25 = getelementptr inbounds %struct.uart_stm32_config, ptr %24, i32 0, i32 0, !dbg !2036
  %26 = load ptr, ptr %25, align 4, !dbg !2036
  %27 = call i32 @LL_USART_IsActiveFlag_TXE(ptr noundef %26), !dbg !2037
  %28 = icmp ne i32 %27, 0, !dbg !2037
  br i1 %28, label %29, label %30, !dbg !2038

29:                                               ; preds = %21
  br label %37, !dbg !2039

30:                                               ; preds = %21
  %31 = load i32, ptr %11, align 4, !dbg !2041
  store i32 %31, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2042, metadata !DIExpression()), !dbg !2046
  %32 = load i32, ptr %4, align 4, !dbg !2048
  %33 = icmp ne i32 %32, 0, !dbg !2050
  br i1 %33, label %34, label %35, !dbg !2051

34:                                               ; preds = %30
  br label %arch_irq_unlock.exit1, !dbg !2052

35:                                               ; preds = %30
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #5, !dbg !2054, !srcloc !2055
  br label %arch_irq_unlock.exit1, !dbg !2056

arch_irq_unlock.exit1:                            ; preds = %34, %35
  br label %36, !dbg !2057

36:                                               ; preds = %arch_irq_unlock.exit1, %15
  br label %15, !dbg !2015, !llvm.loop !2058

37:                                               ; preds = %29
  %38 = load ptr, ptr %9, align 4, !dbg !2060
  %39 = load ptr, ptr %10, align 4, !dbg !2061
  %40 = load ptr, ptr %8, align 4, !dbg !2062
  call void %38(ptr noundef %39, ptr noundef %40), !dbg !2060
  %41 = load i32, ptr %11, align 4, !dbg !2063
  store i32 %41, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2042, metadata !DIExpression()), !dbg !2064
  %42 = load i32, ptr %5, align 4, !dbg !2066
  %43 = icmp ne i32 %42, 0, !dbg !2067
  br i1 %43, label %44, label %45, !dbg !2068

44:                                               ; preds = %37
  br label %arch_irq_unlock.exit, !dbg !2069

45:                                               ; preds = %37
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #5, !dbg !2070, !srcloc !2055
  br label %arch_irq_unlock.exit, !dbg !2071

arch_irq_unlock.exit:                             ; preds = %44, %45
  ret void, !dbg !2072
}

; Function Attrs: noinline nounwind optnone
define internal void @poll_out_u8(ptr noundef %0, ptr noundef %1) #0 !dbg !2073 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2074, metadata !DIExpression()), !dbg !2075
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2076, metadata !DIExpression()), !dbg !2077
  %5 = load ptr, ptr %3, align 4, !dbg !2078
  %6 = getelementptr inbounds %struct.uart_stm32_config, ptr %5, i32 0, i32 0, !dbg !2079
  %7 = load ptr, ptr %6, align 4, !dbg !2079
  %8 = load ptr, ptr %4, align 4, !dbg !2080
  %9 = load i8, ptr %8, align 1, !dbg !2081
  call void @LL_USART_TransmitData8(ptr noundef %7, i8 noundef zeroext %9), !dbg !2082
  ret void, !dbg !2083
}

; Function Attrs: noinline nounwind optnone
define internal i32 @LL_USART_IsActiveFlag_TXE(ptr noundef %0) #0 !dbg !2084 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2085, metadata !DIExpression()), !dbg !2086
  %3 = load ptr, ptr %2, align 4, !dbg !2087
  %4 = getelementptr inbounds %struct.USART_TypeDef, ptr %3, i32 0, i32 7, !dbg !2088
  %5 = load volatile i32, ptr %4, align 4, !dbg !2088
  %6 = and i32 %5, 128, !dbg !2089
  %7 = icmp eq i32 %6, 128, !dbg !2090
  %8 = zext i1 %7 to i64, !dbg !2091
  %9 = select i1 %7, i32 1, i32 0, !dbg !2091
  ret i32 %9, !dbg !2092
}

; Function Attrs: noinline nounwind optnone
define internal void @LL_USART_TransmitData8(ptr noundef %0, i8 noundef zeroext %1) #0 !dbg !2093 {
  %3 = alloca ptr, align 4
  %4 = alloca i8, align 1
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2096, metadata !DIExpression()), !dbg !2097
  store i8 %1, ptr %4, align 1
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2098, metadata !DIExpression()), !dbg !2099
  %5 = load i8, ptr %4, align 1, !dbg !2100
  %6 = zext i8 %5 to i16, !dbg !2100
  %7 = load ptr, ptr %3, align 4, !dbg !2101
  %8 = getelementptr inbounds %struct.USART_TypeDef, ptr %7, i32 0, i32 11, !dbg !2102
  store volatile i16 %6, ptr %8, align 4, !dbg !2103
  ret void, !dbg !2104
}

; Function Attrs: noinline nounwind optnone
define internal i32 @LL_USART_IsActiveFlag_PE(ptr noundef %0) #0 !dbg !2105 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2106, metadata !DIExpression()), !dbg !2107
  %3 = load ptr, ptr %2, align 4, !dbg !2108
  %4 = getelementptr inbounds %struct.USART_TypeDef, ptr %3, i32 0, i32 7, !dbg !2109
  %5 = load volatile i32, ptr %4, align 4, !dbg !2109
  %6 = and i32 %5, 1, !dbg !2110
  %7 = icmp eq i32 %6, 1, !dbg !2111
  %8 = zext i1 %7 to i64, !dbg !2112
  %9 = select i1 %7, i32 1, i32 0, !dbg !2112
  ret i32 %9, !dbg !2113
}

; Function Attrs: noinline nounwind optnone
define internal i32 @LL_USART_IsActiveFlag_FE(ptr noundef %0) #0 !dbg !2114 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2115, metadata !DIExpression()), !dbg !2116
  %3 = load ptr, ptr %2, align 4, !dbg !2117
  %4 = getelementptr inbounds %struct.USART_TypeDef, ptr %3, i32 0, i32 7, !dbg !2118
  %5 = load volatile i32, ptr %4, align 4, !dbg !2118
  %6 = and i32 %5, 2, !dbg !2119
  %7 = icmp eq i32 %6, 2, !dbg !2120
  %8 = zext i1 %7 to i64, !dbg !2121
  %9 = select i1 %7, i32 1, i32 0, !dbg !2121
  ret i32 %9, !dbg !2122
}

; Function Attrs: noinline nounwind optnone
define internal i32 @LL_USART_IsActiveFlag_NE(ptr noundef %0) #0 !dbg !2123 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2124, metadata !DIExpression()), !dbg !2125
  %3 = load ptr, ptr %2, align 4, !dbg !2126
  %4 = getelementptr inbounds %struct.USART_TypeDef, ptr %3, i32 0, i32 7, !dbg !2127
  %5 = load volatile i32, ptr %4, align 4, !dbg !2127
  %6 = and i32 %5, 4, !dbg !2128
  %7 = icmp eq i32 %6, 4, !dbg !2129
  %8 = zext i1 %7 to i64, !dbg !2130
  %9 = select i1 %7, i32 1, i32 0, !dbg !2130
  ret i32 %9, !dbg !2131
}

; Function Attrs: noinline nounwind optnone
define internal i32 @LL_USART_IsActiveFlag_LBD(ptr noundef %0) #0 !dbg !2132 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2133, metadata !DIExpression()), !dbg !2134
  %3 = load ptr, ptr %2, align 4, !dbg !2135
  %4 = getelementptr inbounds %struct.USART_TypeDef, ptr %3, i32 0, i32 7, !dbg !2136
  %5 = load volatile i32, ptr %4, align 4, !dbg !2136
  %6 = and i32 %5, 256, !dbg !2137
  %7 = icmp eq i32 %6, 256, !dbg !2138
  %8 = zext i1 %7 to i64, !dbg !2139
  %9 = select i1 %7, i32 1, i32 0, !dbg !2139
  ret i32 %9, !dbg !2140
}

; Function Attrs: noinline nounwind optnone
define internal void @LL_USART_ClearFlag_LBD(ptr noundef %0) #0 !dbg !2141 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2142, metadata !DIExpression()), !dbg !2143
  %3 = load ptr, ptr %2, align 4, !dbg !2144
  %4 = getelementptr inbounds %struct.USART_TypeDef, ptr %3, i32 0, i32 8, !dbg !2145
  store volatile i32 256, ptr %4, align 4, !dbg !2146
  ret void, !dbg !2147
}

; Function Attrs: noinline nounwind optnone
define internal void @LL_USART_ClearFlag_PE(ptr noundef %0) #0 !dbg !2148 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2149, metadata !DIExpression()), !dbg !2150
  %3 = load ptr, ptr %2, align 4, !dbg !2151
  %4 = getelementptr inbounds %struct.USART_TypeDef, ptr %3, i32 0, i32 8, !dbg !2152
  store volatile i32 1, ptr %4, align 4, !dbg !2153
  ret void, !dbg !2154
}

; Function Attrs: noinline nounwind optnone
define internal void @LL_USART_ClearFlag_FE(ptr noundef %0) #0 !dbg !2155 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2156, metadata !DIExpression()), !dbg !2157
  %3 = load ptr, ptr %2, align 4, !dbg !2158
  %4 = getelementptr inbounds %struct.USART_TypeDef, ptr %3, i32 0, i32 8, !dbg !2159
  store volatile i32 2, ptr %4, align 4, !dbg !2160
  ret void, !dbg !2161
}

; Function Attrs: noinline nounwind optnone
define internal void @LL_USART_ClearFlag_NE(ptr noundef %0) #0 !dbg !2162 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2163, metadata !DIExpression()), !dbg !2164
  %3 = load ptr, ptr %2, align 4, !dbg !2165
  %4 = getelementptr inbounds %struct.USART_TypeDef, ptr %3, i32 0, i32 8, !dbg !2166
  store volatile i32 4, ptr %4, align 4, !dbg !2167
  ret void, !dbg !2168
}

; Function Attrs: noinline nounwind optnone
define internal i32 @uart_stm32_cfg2ll_parity(i8 noundef zeroext %0) #0 !dbg !2169 {
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  store i8 %0, ptr %3, align 1
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2172, metadata !DIExpression()), !dbg !2173
  %4 = load i8, ptr %3, align 1, !dbg !2174
  %5 = zext i8 %4 to i32, !dbg !2174
  switch i32 %5, label %9 [
    i32 1, label %6
    i32 2, label %7
    i32 0, label %8
  ], !dbg !2175

6:                                                ; preds = %1
  store i32 1536, ptr %2, align 4, !dbg !2176
  br label %10, !dbg !2176

7:                                                ; preds = %1
  store i32 1024, ptr %2, align 4, !dbg !2178
  br label %10, !dbg !2178

8:                                                ; preds = %1
  br label %9, !dbg !2179

9:                                                ; preds = %1, %8
  store i32 0, ptr %2, align 4, !dbg !2180
  br label %10, !dbg !2180

10:                                               ; preds = %9, %7, %6
  %11 = load i32, ptr %2, align 4, !dbg !2181
  ret i32 %11, !dbg !2181
}

; Function Attrs: noinline nounwind optnone
define internal i32 @uart_stm32_cfg2ll_stopbits(ptr noundef %0, i8 noundef zeroext %1) #0 !dbg !2182 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i8, align 1
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2185, metadata !DIExpression()), !dbg !2186
  store i8 %1, ptr %5, align 1
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2187, metadata !DIExpression()), !dbg !2188
  %6 = load i8, ptr %5, align 1, !dbg !2189
  %7 = zext i8 %6 to i32, !dbg !2189
  switch i32 %7, label %12 [
    i32 0, label %8
    i32 1, label %9
    i32 2, label %10
    i32 3, label %11
  ], !dbg !2190

8:                                                ; preds = %2
  store i32 4096, ptr %3, align 4, !dbg !2191
  br label %13, !dbg !2191

9:                                                ; preds = %2
  store i32 0, ptr %3, align 4, !dbg !2193
  br label %13, !dbg !2193

10:                                               ; preds = %2
  store i32 12288, ptr %3, align 4, !dbg !2194
  br label %13, !dbg !2194

11:                                               ; preds = %2
  br label %12, !dbg !2195

12:                                               ; preds = %2, %11
  store i32 8192, ptr %3, align 4, !dbg !2196
  br label %13, !dbg !2196

13:                                               ; preds = %12, %10, %9, %8
  %14 = load i32, ptr %3, align 4, !dbg !2197
  ret i32 %14, !dbg !2197
}

; Function Attrs: noinline nounwind optnone
define internal i32 @uart_stm32_cfg2ll_databits(i8 noundef zeroext %0, i8 noundef zeroext %1) #0 !dbg !2198 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  store i8 %0, ptr %4, align 1
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2201, metadata !DIExpression()), !dbg !2202
  store i8 %1, ptr %5, align 1
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2203, metadata !DIExpression()), !dbg !2204
  %6 = load i8, ptr %4, align 1, !dbg !2205
  %7 = zext i8 %6 to i32, !dbg !2205
  switch i32 %7, label %16 [
    i32 2, label %8
    i32 4, label %14
    i32 3, label %15
  ], !dbg !2206

8:                                                ; preds = %2
  %9 = load i8, ptr %5, align 1, !dbg !2207
  %10 = zext i8 %9 to i32, !dbg !2207
  %11 = icmp eq i32 %10, 0, !dbg !2210
  br i1 %11, label %12, label %13, !dbg !2211

12:                                               ; preds = %8
  store i32 268435456, ptr %3, align 4, !dbg !2212
  br label %22, !dbg !2212

13:                                               ; preds = %8
  store i32 0, ptr %3, align 4, !dbg !2214
  br label %22, !dbg !2214

14:                                               ; preds = %2
  store i32 4096, ptr %3, align 4, !dbg !2216
  br label %22, !dbg !2216

15:                                               ; preds = %2
  br label %16, !dbg !2217

16:                                               ; preds = %2, %15
  %17 = load i8, ptr %5, align 1, !dbg !2218
  %18 = zext i8 %17 to i32, !dbg !2218
  %19 = icmp eq i32 %18, 0, !dbg !2220
  br i1 %19, label %20, label %21, !dbg !2221

20:                                               ; preds = %16
  store i32 0, ptr %3, align 4, !dbg !2222
  br label %22, !dbg !2222

21:                                               ; preds = %16
  store i32 4096, ptr %3, align 4, !dbg !2224
  br label %22, !dbg !2224

22:                                               ; preds = %21, %20, %14, %13, %12
  %23 = load i32, ptr %3, align 4, !dbg !2226
  ret i32 %23, !dbg !2226
}

; Function Attrs: noinline nounwind optnone
define internal zeroext i8 @uart_stm32_ll2cfg_stopbits(i32 noundef %0) #0 !dbg !2227 {
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2230, metadata !DIExpression()), !dbg !2231
  %4 = load i32, ptr %3, align 4, !dbg !2232
  switch i32 %4, label %9 [
    i32 4096, label %5
    i32 0, label %6
    i32 12288, label %7
    i32 8192, label %8
  ], !dbg !2233

5:                                                ; preds = %1
  store i8 0, ptr %2, align 1, !dbg !2234
  br label %10, !dbg !2234

6:                                                ; preds = %1
  store i8 1, ptr %2, align 1, !dbg !2236
  br label %10, !dbg !2236

7:                                                ; preds = %1
  store i8 2, ptr %2, align 1, !dbg !2237
  br label %10, !dbg !2237

8:                                                ; preds = %1
  br label %9, !dbg !2238

9:                                                ; preds = %1, %8
  store i8 3, ptr %2, align 1, !dbg !2239
  br label %10, !dbg !2239

10:                                               ; preds = %9, %7, %6, %5
  %11 = load i8, ptr %2, align 1, !dbg !2240
  ret i8 %11, !dbg !2240
}

; Function Attrs: noinline nounwind optnone
define internal zeroext i8 @uart_stm32_ll2cfg_databits(i32 noundef %0, i32 noundef %1) #0 !dbg !2241 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2244, metadata !DIExpression()), !dbg !2245
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2246, metadata !DIExpression()), !dbg !2247
  %6 = load i32, ptr %4, align 4, !dbg !2248
  switch i32 %6, label %18 [
    i32 268435456, label %7
    i32 4096, label %12
    i32 0, label %17
  ], !dbg !2249

7:                                                ; preds = %2
  %8 = load i32, ptr %5, align 4, !dbg !2250
  %9 = icmp eq i32 %8, 0, !dbg !2253
  br i1 %9, label %10, label %11, !dbg !2254

10:                                               ; preds = %7
  store i8 2, ptr %3, align 1, !dbg !2255
  br label %23, !dbg !2255

11:                                               ; preds = %7
  store i8 1, ptr %3, align 1, !dbg !2257
  br label %23, !dbg !2257

12:                                               ; preds = %2
  %13 = load i32, ptr %5, align 4, !dbg !2259
  %14 = icmp eq i32 %13, 0, !dbg !2261
  br i1 %14, label %15, label %16, !dbg !2262

15:                                               ; preds = %12
  store i8 4, ptr %3, align 1, !dbg !2263
  br label %23, !dbg !2263

16:                                               ; preds = %12
  store i8 3, ptr %3, align 1, !dbg !2265
  br label %23, !dbg !2265

17:                                               ; preds = %2
  br label %18, !dbg !2267

18:                                               ; preds = %2, %17
  %19 = load i32, ptr %5, align 4, !dbg !2268
  %20 = icmp eq i32 %19, 0, !dbg !2270
  br i1 %20, label %21, label %22, !dbg !2271

21:                                               ; preds = %18
  store i8 3, ptr %3, align 1, !dbg !2272
  br label %23, !dbg !2272

22:                                               ; preds = %18
  store i8 2, ptr %3, align 1, !dbg !2274
  br label %23, !dbg !2274

23:                                               ; preds = %22, %21, %16, %15, %11, %10
  %24 = load i8, ptr %3, align 1, !dbg !2276
  ret i8 %24, !dbg !2276
}

; Function Attrs: noinline nounwind optnone
define internal void @LL_USART_Disable(ptr noundef %0) #0 !dbg !2277 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2278, metadata !DIExpression()), !dbg !2279
  %3 = load ptr, ptr %2, align 4, !dbg !2280
  %4 = getelementptr inbounds %struct.USART_TypeDef, ptr %3, i32 0, i32 0, !dbg !2281
  %5 = load volatile i32, ptr %4, align 4, !dbg !2282
  %6 = and i32 %5, -2, !dbg !2282
  store volatile i32 %6, ptr %4, align 4, !dbg !2282
  ret void, !dbg !2283
}

; Function Attrs: noinline nounwind optnone
define internal void @uart_stm32_parameters_set(ptr noundef %0, ptr noundef %1) #0 !dbg !2284 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2287, metadata !DIExpression()), !dbg !2288
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2289, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2291, metadata !DIExpression()), !dbg !2292
  %13 = load ptr, ptr %3, align 4, !dbg !2293
  %14 = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 1, !dbg !2294
  %15 = load ptr, ptr %14, align 4, !dbg !2294
  store ptr %15, ptr %5, align 4, !dbg !2292
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2295, metadata !DIExpression()), !dbg !2296
  %16 = load ptr, ptr %3, align 4, !dbg !2297
  %17 = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 4, !dbg !2298
  %18 = load ptr, ptr %17, align 4, !dbg !2298
  store ptr %18, ptr %6, align 4, !dbg !2296
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2299, metadata !DIExpression()), !dbg !2300
  %19 = load ptr, ptr %6, align 4, !dbg !2301
  %20 = getelementptr inbounds %struct.uart_stm32_data, ptr %19, i32 0, i32 1, !dbg !2302
  %21 = load ptr, ptr %20, align 4, !dbg !2302
  store ptr %21, ptr %7, align 4, !dbg !2300
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2303, metadata !DIExpression()), !dbg !2304
  %22 = load ptr, ptr %4, align 4, !dbg !2305
  %23 = getelementptr inbounds %struct.uart_config, ptr %22, i32 0, i32 1, !dbg !2306
  %24 = load i8, ptr %23, align 4, !dbg !2306
  %25 = call i32 @uart_stm32_cfg2ll_parity(i8 noundef zeroext %24), !dbg !2307
  store i32 %25, ptr %8, align 4, !dbg !2304
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2308, metadata !DIExpression()), !dbg !2309
  %26 = load ptr, ptr %5, align 4, !dbg !2310
  %27 = load ptr, ptr %4, align 4, !dbg !2311
  %28 = getelementptr inbounds %struct.uart_config, ptr %27, i32 0, i32 2, !dbg !2312
  %29 = load i8, ptr %28, align 1, !dbg !2312
  %30 = call i32 @uart_stm32_cfg2ll_stopbits(ptr noundef %26, i8 noundef zeroext %29), !dbg !2313
  store i32 %30, ptr %9, align 4, !dbg !2309
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2314, metadata !DIExpression()), !dbg !2315
  %31 = load ptr, ptr %4, align 4, !dbg !2316
  %32 = getelementptr inbounds %struct.uart_config, ptr %31, i32 0, i32 3, !dbg !2317
  %33 = load i8, ptr %32, align 2, !dbg !2317
  %34 = load ptr, ptr %4, align 4, !dbg !2318
  %35 = getelementptr inbounds %struct.uart_config, ptr %34, i32 0, i32 1, !dbg !2319
  %36 = load i8, ptr %35, align 4, !dbg !2319
  %37 = call i32 @uart_stm32_cfg2ll_databits(i8 noundef zeroext %33, i8 noundef zeroext %36), !dbg !2320
  store i32 %37, ptr %10, align 4, !dbg !2315
  call void @llvm.dbg.declare(metadata ptr %11, metadata !2321, metadata !DIExpression()), !dbg !2322
  %38 = load ptr, ptr %4, align 4, !dbg !2323
  %39 = getelementptr inbounds %struct.uart_config, ptr %38, i32 0, i32 4, !dbg !2324
  %40 = load i8, ptr %39, align 1, !dbg !2324
  %41 = call i32 @uart_stm32_cfg2ll_hwctrl(i8 noundef zeroext %40), !dbg !2325
  store i32 %41, ptr %11, align 4, !dbg !2322
  call void @llvm.dbg.declare(metadata ptr %12, metadata !2326, metadata !DIExpression()), !dbg !2327
  %42 = load ptr, ptr %4, align 4, !dbg !2328
  %43 = getelementptr inbounds %struct.uart_config, ptr %42, i32 0, i32 4, !dbg !2329
  %44 = load i8, ptr %43, align 1, !dbg !2329
  %45 = zext i8 %44 to i32, !dbg !2328
  %46 = icmp eq i32 %45, 3, !dbg !2330
  %47 = zext i1 %46 to i8, !dbg !2327
  store i8 %47, ptr %12, align 1, !dbg !2327
  %48 = load ptr, ptr %4, align 4, !dbg !2331
  %49 = load ptr, ptr %7, align 4, !dbg !2333
  %50 = icmp eq ptr %48, %49, !dbg !2334
  br i1 %50, label %51, label %64, !dbg !2335

51:                                               ; preds = %2
  %52 = load ptr, ptr %5, align 4, !dbg !2336
  %53 = getelementptr inbounds %struct.uart_stm32_config, ptr %52, i32 0, i32 0, !dbg !2338
  %54 = load ptr, ptr %53, align 4, !dbg !2338
  %55 = load i32, ptr %10, align 4, !dbg !2339
  %56 = load i32, ptr %8, align 4, !dbg !2340
  %57 = load i32, ptr %9, align 4, !dbg !2341
  call void @LL_USART_ConfigCharacter(ptr noundef %54, i32 noundef %55, i32 noundef %56, i32 noundef %57), !dbg !2342
  %58 = load ptr, ptr %3, align 4, !dbg !2343
  %59 = load i32, ptr %11, align 4, !dbg !2344
  call void @uart_stm32_set_hwctrl(ptr noundef %58, i32 noundef %59), !dbg !2345
  %60 = load ptr, ptr %3, align 4, !dbg !2346
  %61 = load ptr, ptr %4, align 4, !dbg !2347
  %62 = getelementptr inbounds %struct.uart_config, ptr %61, i32 0, i32 0, !dbg !2348
  %63 = load i32, ptr %62, align 4, !dbg !2348
  call void @uart_stm32_set_baudrate(ptr noundef %60, i32 noundef %63), !dbg !2349
  br label %127, !dbg !2350

64:                                               ; preds = %2
  %65 = load i32, ptr %8, align 4, !dbg !2351
  %66 = load ptr, ptr %3, align 4, !dbg !2354
  %67 = call i32 @uart_stm32_get_parity(ptr noundef %66), !dbg !2355
  %68 = icmp ne i32 %65, %67, !dbg !2356
  br i1 %68, label %69, label %72, !dbg !2357

69:                                               ; preds = %64
  %70 = load ptr, ptr %3, align 4, !dbg !2358
  %71 = load i32, ptr %8, align 4, !dbg !2360
  call void @uart_stm32_set_parity(ptr noundef %70, i32 noundef %71), !dbg !2361
  br label %72, !dbg !2362

72:                                               ; preds = %69, %64
  %73 = load i32, ptr %9, align 4, !dbg !2363
  %74 = load ptr, ptr %3, align 4, !dbg !2365
  %75 = call i32 @uart_stm32_get_stopbits(ptr noundef %74), !dbg !2366
  %76 = icmp ne i32 %73, %75, !dbg !2367
  br i1 %76, label %77, label %80, !dbg !2368

77:                                               ; preds = %72
  %78 = load ptr, ptr %3, align 4, !dbg !2369
  %79 = load i32, ptr %9, align 4, !dbg !2371
  call void @uart_stm32_set_stopbits(ptr noundef %78, i32 noundef %79), !dbg !2372
  br label %80, !dbg !2373

80:                                               ; preds = %77, %72
  %81 = load i32, ptr %10, align 4, !dbg !2374
  %82 = load ptr, ptr %3, align 4, !dbg !2376
  %83 = call i32 @uart_stm32_get_databits(ptr noundef %82), !dbg !2377
  %84 = icmp ne i32 %81, %83, !dbg !2378
  br i1 %84, label %85, label %88, !dbg !2379

85:                                               ; preds = %80
  %86 = load ptr, ptr %3, align 4, !dbg !2380
  %87 = load i32, ptr %10, align 4, !dbg !2382
  call void @uart_stm32_set_databits(ptr noundef %86, i32 noundef %87), !dbg !2383
  br label %88, !dbg !2384

88:                                               ; preds = %85, %80
  %89 = load i32, ptr %11, align 4, !dbg !2385
  %90 = load ptr, ptr %3, align 4, !dbg !2387
  %91 = call i32 @uart_stm32_get_hwctrl(ptr noundef %90), !dbg !2388
  %92 = icmp ne i32 %89, %91, !dbg !2389
  br i1 %92, label %93, label %96, !dbg !2390

93:                                               ; preds = %88
  %94 = load ptr, ptr %3, align 4, !dbg !2391
  %95 = load i32, ptr %11, align 4, !dbg !2393
  call void @uart_stm32_set_hwctrl(ptr noundef %94, i32 noundef %95), !dbg !2394
  br label %96, !dbg !2395

96:                                               ; preds = %93, %88
  %97 = load i8, ptr %12, align 1, !dbg !2396
  %98 = trunc i8 %97 to i1, !dbg !2396
  %99 = zext i1 %98 to i32, !dbg !2396
  %100 = load ptr, ptr %3, align 4, !dbg !2398
  %101 = call zeroext i1 @uart_stm32_get_driver_enable(ptr noundef %100), !dbg !2399
  %102 = zext i1 %101 to i32, !dbg !2399
  %103 = icmp ne i32 %99, %102, !dbg !2400
  br i1 %103, label %104, label %108, !dbg !2401

104:                                              ; preds = %96
  %105 = load ptr, ptr %3, align 4, !dbg !2402
  %106 = load i8, ptr %12, align 1, !dbg !2404
  %107 = trunc i8 %106 to i1, !dbg !2404
  call void @uart_stm32_set_driver_enable(ptr noundef %105, i1 noundef zeroext %107), !dbg !2405
  br label %108, !dbg !2406

108:                                              ; preds = %104, %96
  %109 = load ptr, ptr %4, align 4, !dbg !2407
  %110 = getelementptr inbounds %struct.uart_config, ptr %109, i32 0, i32 0, !dbg !2409
  %111 = load i32, ptr %110, align 4, !dbg !2409
  %112 = load ptr, ptr %7, align 4, !dbg !2410
  %113 = getelementptr inbounds %struct.uart_config, ptr %112, i32 0, i32 0, !dbg !2411
  %114 = load i32, ptr %113, align 4, !dbg !2411
  %115 = icmp ne i32 %111, %114, !dbg !2412
  br i1 %115, label %116, label %126, !dbg !2413

116:                                              ; preds = %108
  %117 = load ptr, ptr %3, align 4, !dbg !2414
  %118 = load ptr, ptr %4, align 4, !dbg !2416
  %119 = getelementptr inbounds %struct.uart_config, ptr %118, i32 0, i32 0, !dbg !2417
  %120 = load i32, ptr %119, align 4, !dbg !2417
  call void @uart_stm32_set_baudrate(ptr noundef %117, i32 noundef %120), !dbg !2418
  %121 = load ptr, ptr %4, align 4, !dbg !2419
  %122 = getelementptr inbounds %struct.uart_config, ptr %121, i32 0, i32 0, !dbg !2420
  %123 = load i32, ptr %122, align 4, !dbg !2420
  %124 = load ptr, ptr %7, align 4, !dbg !2421
  %125 = getelementptr inbounds %struct.uart_config, ptr %124, i32 0, i32 0, !dbg !2422
  store i32 %123, ptr %125, align 4, !dbg !2423
  br label %126, !dbg !2424

126:                                              ; preds = %116, %108
  br label %127

127:                                              ; preds = %126, %51
  ret void, !dbg !2425
}

; Function Attrs: noinline nounwind optnone
define internal void @LL_USART_Enable(ptr noundef %0) #0 !dbg !2426 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2427, metadata !DIExpression()), !dbg !2428
  %3 = load ptr, ptr %2, align 4, !dbg !2429
  %4 = getelementptr inbounds %struct.USART_TypeDef, ptr %3, i32 0, i32 0, !dbg !2430
  %5 = load volatile i32, ptr %4, align 4, !dbg !2431
  %6 = or i32 %5, 1, !dbg !2431
  store volatile i32 %6, ptr %4, align 4, !dbg !2431
  ret void, !dbg !2432
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: noinline nounwind optnone
define internal i32 @uart_stm32_cfg2ll_hwctrl(i8 noundef zeroext %0) #0 !dbg !2433 {
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  store i8 %0, ptr %3, align 1
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2436, metadata !DIExpression()), !dbg !2437
  %4 = load i8, ptr %3, align 1, !dbg !2438
  %5 = zext i8 %4 to i32, !dbg !2438
  %6 = icmp eq i32 %5, 1, !dbg !2440
  br i1 %6, label %7, label %8, !dbg !2441

7:                                                ; preds = %1
  store i32 768, ptr %2, align 4, !dbg !2442
  br label %15, !dbg !2442

8:                                                ; preds = %1
  %9 = load i8, ptr %3, align 1, !dbg !2444
  %10 = zext i8 %9 to i32, !dbg !2444
  %11 = icmp eq i32 %10, 3, !dbg !2446
  br i1 %11, label %12, label %13, !dbg !2447

12:                                               ; preds = %8
  store i32 0, ptr %2, align 4, !dbg !2448
  br label %15, !dbg !2448

13:                                               ; preds = %8
  br label %14

14:                                               ; preds = %13
  store i32 0, ptr %2, align 4, !dbg !2450
  br label %15, !dbg !2450

15:                                               ; preds = %14, %12, %7
  %16 = load i32, ptr %2, align 4, !dbg !2451
  ret i32 %16, !dbg !2451
}

; Function Attrs: noinline nounwind optnone
define internal void @LL_USART_ConfigCharacter(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 !dbg !2452 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2455, metadata !DIExpression()), !dbg !2456
  store i32 %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2457, metadata !DIExpression()), !dbg !2458
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2459, metadata !DIExpression()), !dbg !2460
  store i32 %3, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2461, metadata !DIExpression()), !dbg !2462
  %9 = load ptr, ptr %5, align 4, !dbg !2463
  %10 = getelementptr inbounds %struct.USART_TypeDef, ptr %9, i32 0, i32 0, !dbg !2464
  %11 = load volatile i32, ptr %10, align 4, !dbg !2464
  %12 = and i32 %11, -268441089, !dbg !2465
  %13 = load i32, ptr %7, align 4, !dbg !2466
  %14 = load i32, ptr %6, align 4, !dbg !2467
  %15 = or i32 %13, %14, !dbg !2468
  %16 = or i32 %12, %15, !dbg !2469
  %17 = load ptr, ptr %5, align 4, !dbg !2470
  %18 = getelementptr inbounds %struct.USART_TypeDef, ptr %17, i32 0, i32 0, !dbg !2471
  store volatile i32 %16, ptr %18, align 4, !dbg !2472
  %19 = load ptr, ptr %5, align 4, !dbg !2473
  %20 = getelementptr inbounds %struct.USART_TypeDef, ptr %19, i32 0, i32 1, !dbg !2474
  %21 = load volatile i32, ptr %20, align 4, !dbg !2474
  %22 = and i32 %21, -12289, !dbg !2475
  %23 = load i32, ptr %8, align 4, !dbg !2476
  %24 = or i32 %22, %23, !dbg !2477
  %25 = load ptr, ptr %5, align 4, !dbg !2478
  %26 = getelementptr inbounds %struct.USART_TypeDef, ptr %25, i32 0, i32 1, !dbg !2479
  store volatile i32 %24, ptr %26, align 4, !dbg !2480
  ret void, !dbg !2481
}

; Function Attrs: noinline nounwind optnone
define internal void @uart_stm32_set_hwctrl(ptr noundef %0, i32 noundef %1) #0 !dbg !2482 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2485, metadata !DIExpression()), !dbg !2486
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2487, metadata !DIExpression()), !dbg !2488
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2489, metadata !DIExpression()), !dbg !2490
  %6 = load ptr, ptr %3, align 4, !dbg !2491
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 1, !dbg !2492
  %8 = load ptr, ptr %7, align 4, !dbg !2492
  store ptr %8, ptr %5, align 4, !dbg !2490
  %9 = load ptr, ptr %5, align 4, !dbg !2493
  %10 = getelementptr inbounds %struct.uart_stm32_config, ptr %9, i32 0, i32 0, !dbg !2494
  %11 = load ptr, ptr %10, align 4, !dbg !2494
  %12 = load i32, ptr %4, align 4, !dbg !2495
  call void @LL_USART_SetHWFlowCtrl(ptr noundef %11, i32 noundef %12), !dbg !2496
  ret void, !dbg !2497
}

; Function Attrs: noinline nounwind optnone
define internal void @uart_stm32_set_baudrate(ptr noundef %0, i32 noundef %1) #0 !dbg !2498 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2499, metadata !DIExpression()), !dbg !2500
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2501, metadata !DIExpression()), !dbg !2502
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2503, metadata !DIExpression()), !dbg !2504
  %11 = load ptr, ptr %3, align 4, !dbg !2505
  %12 = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 1, !dbg !2506
  %13 = load ptr, ptr %12, align 4, !dbg !2506
  store ptr %13, ptr %5, align 4, !dbg !2504
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2507, metadata !DIExpression()), !dbg !2508
  %14 = load ptr, ptr %3, align 4, !dbg !2509
  %15 = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 4, !dbg !2510
  %16 = load ptr, ptr %15, align 4, !dbg !2510
  store ptr %16, ptr %6, align 4, !dbg !2508
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2511, metadata !DIExpression()), !dbg !2512
  %17 = load ptr, ptr %6, align 4, !dbg !2513
  %18 = getelementptr inbounds %struct.uart_stm32_data, ptr %17, i32 0, i32 0, !dbg !2517
  %19 = load ptr, ptr %18, align 4, !dbg !2517
  %20 = load ptr, ptr %5, align 4, !dbg !2518
  %21 = getelementptr inbounds %struct.uart_stm32_config, ptr %20, i32 0, i32 2, !dbg !2519
  %22 = load ptr, ptr %21, align 4, !dbg !2519
  %23 = getelementptr inbounds %struct.stm32_pclken, ptr %22, i32 0, !dbg !2518
  %24 = call i32 @clock_control_get_rate(ptr noundef %19, ptr noundef %23, ptr noundef %7), !dbg !2520
  %25 = icmp slt i32 %24, 0, !dbg !2521
  br i1 %25, label %26, label %36, !dbg !2522

26:                                               ; preds = %2
  br label %27, !dbg !2523

27:                                               ; preds = %26
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2525, metadata !DIExpression()), !dbg !2527
  %28 = call zeroext i1 @k_is_user_context(), !dbg !2528
  %29 = zext i1 %28 to i8, !dbg !2527
  store i8 %29, ptr %8, align 1, !dbg !2527
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2529, metadata !DIExpression()), !dbg !2530
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2531, metadata !DIExpression()), !dbg !2532
  %30 = load ptr, ptr @__log_current_const_data, align 4, !dbg !2533
  store ptr %30, ptr %10, align 4, !dbg !2532
  br label %31, !dbg !2534

31:                                               ; preds = %27
  %32 = load ptr, ptr %10, align 4, !dbg !2535
  call void (i8, ptr, i8, ptr, i32, i32, ptr, ...) @z_log_msg_runtime_create(i8 noundef zeroext 0, ptr noundef %32, i8 noundef zeroext 1, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef @.str.2), !dbg !2537
  store i32 0, ptr %9, align 4, !dbg !2538
  br label %33, !dbg !2539

33:                                               ; preds = %31
  %34 = load i32, ptr %9, align 4, !dbg !2540
  br label %35, !dbg !2541

35:                                               ; preds = %33
  br label %45, !dbg !2542

36:                                               ; preds = %2
  %37 = load ptr, ptr %5, align 4, !dbg !2543
  %38 = getelementptr inbounds %struct.uart_stm32_config, ptr %37, i32 0, i32 0, !dbg !2544
  %39 = load ptr, ptr %38, align 4, !dbg !2544
  call void @LL_USART_SetOverSampling(ptr noundef %39, i32 noundef 0), !dbg !2545
  %40 = load ptr, ptr %5, align 4, !dbg !2546
  %41 = getelementptr inbounds %struct.uart_stm32_config, ptr %40, i32 0, i32 0, !dbg !2547
  %42 = load ptr, ptr %41, align 4, !dbg !2547
  %43 = load i32, ptr %7, align 4, !dbg !2548
  %44 = load i32, ptr %4, align 4, !dbg !2549
  call void @LL_USART_SetBaudRate(ptr noundef %42, i32 noundef %43, i32 noundef 0, i32 noundef %44), !dbg !2550
  br label %45, !dbg !2551

45:                                               ; preds = %36, %35
  ret void, !dbg !2551
}

; Function Attrs: noinline nounwind optnone
define internal i32 @uart_stm32_get_parity(ptr noundef %0) #0 !dbg !2552 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2555, metadata !DIExpression()), !dbg !2556
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2557, metadata !DIExpression()), !dbg !2558
  %4 = load ptr, ptr %2, align 4, !dbg !2559
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 1, !dbg !2560
  %6 = load ptr, ptr %5, align 4, !dbg !2560
  store ptr %6, ptr %3, align 4, !dbg !2558
  %7 = load ptr, ptr %3, align 4, !dbg !2561
  %8 = getelementptr inbounds %struct.uart_stm32_config, ptr %7, i32 0, i32 0, !dbg !2562
  %9 = load ptr, ptr %8, align 4, !dbg !2562
  %10 = call i32 @LL_USART_GetParity(ptr noundef %9), !dbg !2563
  ret i32 %10, !dbg !2564
}

; Function Attrs: noinline nounwind optnone
define internal void @uart_stm32_set_parity(ptr noundef %0, i32 noundef %1) #0 !dbg !2565 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2566, metadata !DIExpression()), !dbg !2567
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2568, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2570, metadata !DIExpression()), !dbg !2571
  %6 = load ptr, ptr %3, align 4, !dbg !2572
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 1, !dbg !2573
  %8 = load ptr, ptr %7, align 4, !dbg !2573
  store ptr %8, ptr %5, align 4, !dbg !2571
  %9 = load ptr, ptr %5, align 4, !dbg !2574
  %10 = getelementptr inbounds %struct.uart_stm32_config, ptr %9, i32 0, i32 0, !dbg !2575
  %11 = load ptr, ptr %10, align 4, !dbg !2575
  %12 = load i32, ptr %4, align 4, !dbg !2576
  call void @LL_USART_SetParity(ptr noundef %11, i32 noundef %12), !dbg !2577
  ret void, !dbg !2578
}

; Function Attrs: noinline nounwind optnone
define internal i32 @uart_stm32_get_stopbits(ptr noundef %0) #0 !dbg !2579 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2580, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2582, metadata !DIExpression()), !dbg !2583
  %4 = load ptr, ptr %2, align 4, !dbg !2584
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 1, !dbg !2585
  %6 = load ptr, ptr %5, align 4, !dbg !2585
  store ptr %6, ptr %3, align 4, !dbg !2583
  %7 = load ptr, ptr %3, align 4, !dbg !2586
  %8 = getelementptr inbounds %struct.uart_stm32_config, ptr %7, i32 0, i32 0, !dbg !2587
  %9 = load ptr, ptr %8, align 4, !dbg !2587
  %10 = call i32 @LL_USART_GetStopBitsLength(ptr noundef %9), !dbg !2588
  ret i32 %10, !dbg !2589
}

; Function Attrs: noinline nounwind optnone
define internal void @uart_stm32_set_stopbits(ptr noundef %0, i32 noundef %1) #0 !dbg !2590 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2591, metadata !DIExpression()), !dbg !2592
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2593, metadata !DIExpression()), !dbg !2594
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2595, metadata !DIExpression()), !dbg !2596
  %6 = load ptr, ptr %3, align 4, !dbg !2597
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 1, !dbg !2598
  %8 = load ptr, ptr %7, align 4, !dbg !2598
  store ptr %8, ptr %5, align 4, !dbg !2596
  %9 = load ptr, ptr %5, align 4, !dbg !2599
  %10 = getelementptr inbounds %struct.uart_stm32_config, ptr %9, i32 0, i32 0, !dbg !2600
  %11 = load ptr, ptr %10, align 4, !dbg !2600
  %12 = load i32, ptr %4, align 4, !dbg !2601
  call void @LL_USART_SetStopBitsLength(ptr noundef %11, i32 noundef %12), !dbg !2602
  ret void, !dbg !2603
}

; Function Attrs: noinline nounwind optnone
define internal i32 @uart_stm32_get_databits(ptr noundef %0) #0 !dbg !2604 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2605, metadata !DIExpression()), !dbg !2606
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2607, metadata !DIExpression()), !dbg !2608
  %4 = load ptr, ptr %2, align 4, !dbg !2609
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 1, !dbg !2610
  %6 = load ptr, ptr %5, align 4, !dbg !2610
  store ptr %6, ptr %3, align 4, !dbg !2608
  %7 = load ptr, ptr %3, align 4, !dbg !2611
  %8 = getelementptr inbounds %struct.uart_stm32_config, ptr %7, i32 0, i32 0, !dbg !2612
  %9 = load ptr, ptr %8, align 4, !dbg !2612
  %10 = call i32 @LL_USART_GetDataWidth(ptr noundef %9), !dbg !2613
  ret i32 %10, !dbg !2614
}

; Function Attrs: noinline nounwind optnone
define internal void @uart_stm32_set_databits(ptr noundef %0, i32 noundef %1) #0 !dbg !2615 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2616, metadata !DIExpression()), !dbg !2617
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2618, metadata !DIExpression()), !dbg !2619
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2620, metadata !DIExpression()), !dbg !2621
  %6 = load ptr, ptr %3, align 4, !dbg !2622
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 1, !dbg !2623
  %8 = load ptr, ptr %7, align 4, !dbg !2623
  store ptr %8, ptr %5, align 4, !dbg !2621
  %9 = load ptr, ptr %5, align 4, !dbg !2624
  %10 = getelementptr inbounds %struct.uart_stm32_config, ptr %9, i32 0, i32 0, !dbg !2625
  %11 = load ptr, ptr %10, align 4, !dbg !2625
  %12 = load i32, ptr %4, align 4, !dbg !2626
  call void @LL_USART_SetDataWidth(ptr noundef %11, i32 noundef %12), !dbg !2627
  ret void, !dbg !2628
}

; Function Attrs: noinline nounwind optnone
define internal i32 @uart_stm32_get_hwctrl(ptr noundef %0) #0 !dbg !2629 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2630, metadata !DIExpression()), !dbg !2631
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2632, metadata !DIExpression()), !dbg !2633
  %4 = load ptr, ptr %2, align 4, !dbg !2634
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 1, !dbg !2635
  %6 = load ptr, ptr %5, align 4, !dbg !2635
  store ptr %6, ptr %3, align 4, !dbg !2633
  %7 = load ptr, ptr %3, align 4, !dbg !2636
  %8 = getelementptr inbounds %struct.uart_stm32_config, ptr %7, i32 0, i32 0, !dbg !2637
  %9 = load ptr, ptr %8, align 4, !dbg !2637
  %10 = call i32 @LL_USART_GetHWFlowCtrl(ptr noundef %9), !dbg !2638
  ret i32 %10, !dbg !2639
}

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @uart_stm32_get_driver_enable(ptr noundef %0) #0 !dbg !2640 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2641, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2643, metadata !DIExpression()), !dbg !2644
  %4 = load ptr, ptr %2, align 4, !dbg !2645
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 1, !dbg !2646
  %6 = load ptr, ptr %5, align 4, !dbg !2646
  store ptr %6, ptr %3, align 4, !dbg !2644
  %7 = load ptr, ptr %3, align 4, !dbg !2647
  %8 = getelementptr inbounds %struct.uart_stm32_config, ptr %7, i32 0, i32 0, !dbg !2648
  %9 = load ptr, ptr %8, align 4, !dbg !2648
  %10 = call i32 @LL_USART_IsEnabledDEMode(ptr noundef %9), !dbg !2649
  %11 = icmp ne i32 %10, 0, !dbg !2649
  ret i1 %11, !dbg !2650
}

; Function Attrs: noinline nounwind optnone
define internal void @uart_stm32_set_driver_enable(ptr noundef %0, i1 noundef zeroext %1) #0 !dbg !2651 {
  %3 = alloca ptr, align 4
  %4 = alloca i8, align 1
  %5 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2654, metadata !DIExpression()), !dbg !2655
  %6 = zext i1 %1 to i8
  store i8 %6, ptr %4, align 1
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2656, metadata !DIExpression()), !dbg !2657
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2658, metadata !DIExpression()), !dbg !2659
  %7 = load ptr, ptr %3, align 4, !dbg !2660
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 1, !dbg !2661
  %9 = load ptr, ptr %8, align 4, !dbg !2661
  store ptr %9, ptr %5, align 4, !dbg !2659
  %10 = load i8, ptr %4, align 1, !dbg !2662
  %11 = trunc i8 %10 to i1, !dbg !2662
  br i1 %11, label %12, label %16, !dbg !2664

12:                                               ; preds = %2
  %13 = load ptr, ptr %5, align 4, !dbg !2665
  %14 = getelementptr inbounds %struct.uart_stm32_config, ptr %13, i32 0, i32 0, !dbg !2667
  %15 = load ptr, ptr %14, align 4, !dbg !2667
  call void @LL_USART_EnableDEMode(ptr noundef %15), !dbg !2668
  br label %20, !dbg !2669

16:                                               ; preds = %2
  %17 = load ptr, ptr %5, align 4, !dbg !2670
  %18 = getelementptr inbounds %struct.uart_stm32_config, ptr %17, i32 0, i32 0, !dbg !2672
  %19 = load ptr, ptr %18, align 4, !dbg !2672
  call void @LL_USART_DisableDEMode(ptr noundef %19), !dbg !2673
  br label %20

20:                                               ; preds = %16, %12
  ret void, !dbg !2674
}

; Function Attrs: noinline nounwind optnone
define internal void @LL_USART_SetHWFlowCtrl(ptr noundef %0, i32 noundef %1) #0 !dbg !2675 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2678, metadata !DIExpression()), !dbg !2679
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2680, metadata !DIExpression()), !dbg !2681
  %5 = load ptr, ptr %3, align 4, !dbg !2682
  %6 = getelementptr inbounds %struct.USART_TypeDef, ptr %5, i32 0, i32 2, !dbg !2683
  %7 = load volatile i32, ptr %6, align 4, !dbg !2683
  %8 = and i32 %7, -769, !dbg !2684
  %9 = load i32, ptr %4, align 4, !dbg !2685
  %10 = or i32 %8, %9, !dbg !2686
  %11 = load ptr, ptr %3, align 4, !dbg !2687
  %12 = getelementptr inbounds %struct.USART_TypeDef, ptr %11, i32 0, i32 2, !dbg !2688
  store volatile i32 %10, ptr %12, align 4, !dbg !2689
  ret void, !dbg !2690
}

; Function Attrs: noinline nounwind optnone
define internal i32 @clock_control_get_rate(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !2691 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  store ptr %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2692, metadata !DIExpression()), !dbg !2693
  store ptr %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2694, metadata !DIExpression()), !dbg !2695
  store ptr %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2696, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2698, metadata !DIExpression()), !dbg !2699
  %9 = load ptr, ptr %5, align 4, !dbg !2700
  %10 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 2, !dbg !2701
  %11 = load ptr, ptr %10, align 4, !dbg !2701
  store ptr %11, ptr %8, align 4, !dbg !2699
  %12 = load ptr, ptr %8, align 4, !dbg !2702
  %13 = getelementptr inbounds %struct.clock_control_driver_api, ptr %12, i32 0, i32 3, !dbg !2704
  %14 = load ptr, ptr %13, align 4, !dbg !2704
  %15 = icmp eq ptr %14, null, !dbg !2705
  br i1 %15, label %16, label %17, !dbg !2706

16:                                               ; preds = %3
  store i32 -88, ptr %4, align 4, !dbg !2707
  br label %25, !dbg !2707

17:                                               ; preds = %3
  %18 = load ptr, ptr %8, align 4, !dbg !2709
  %19 = getelementptr inbounds %struct.clock_control_driver_api, ptr %18, i32 0, i32 3, !dbg !2710
  %20 = load ptr, ptr %19, align 4, !dbg !2710
  %21 = load ptr, ptr %5, align 4, !dbg !2711
  %22 = load ptr, ptr %6, align 4, !dbg !2712
  %23 = load ptr, ptr %7, align 4, !dbg !2713
  %24 = call i32 %20(ptr noundef %21, ptr noundef %22, ptr noundef %23), !dbg !2709
  store i32 %24, ptr %4, align 4, !dbg !2714
  br label %25, !dbg !2714

25:                                               ; preds = %17, %16
  %26 = load i32, ptr %4, align 4, !dbg !2715
  ret i32 %26, !dbg !2715
}

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @k_is_user_context() #0 !dbg !2716 {
  ret i1 false, !dbg !2720
}

; Function Attrs: noinline nounwind optnone
define internal void @z_log_msg_runtime_create(i8 noundef zeroext %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ...) #0 !dbg !2721 {
  %8 = alloca i8, align 1
  %9 = alloca ptr, align 4
  %10 = alloca i8, align 1
  %11 = alloca ptr, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca ptr, align 4
  %15 = alloca %struct.__va_list, align 4
  store i8 %0, ptr %8, align 1
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2726, metadata !DIExpression()), !dbg !2727
  store ptr %1, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2728, metadata !DIExpression()), !dbg !2729
  store i8 %2, ptr %10, align 1
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2730, metadata !DIExpression()), !dbg !2731
  store ptr %3, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !2732, metadata !DIExpression()), !dbg !2733
  store i32 %4, ptr %12, align 4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !2734, metadata !DIExpression()), !dbg !2735
  store i32 %5, ptr %13, align 4
  call void @llvm.dbg.declare(metadata ptr %13, metadata !2736, metadata !DIExpression()), !dbg !2737
  store ptr %6, ptr %14, align 4
  call void @llvm.dbg.declare(metadata ptr %14, metadata !2738, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.declare(metadata ptr %15, metadata !2740, metadata !DIExpression()), !dbg !2747
  call void @llvm.va_start(ptr %15), !dbg !2748
  %16 = load i8, ptr %8, align 1, !dbg !2749
  %17 = load ptr, ptr %9, align 4, !dbg !2750
  %18 = load i8, ptr %10, align 1, !dbg !2751
  %19 = load ptr, ptr %11, align 4, !dbg !2752
  %20 = load i32, ptr %12, align 4, !dbg !2753
  %21 = load i32, ptr %13, align 4, !dbg !2754
  %22 = load ptr, ptr %14, align 4, !dbg !2755
  %23 = getelementptr inbounds %struct.__va_list, ptr %15, i32 0, i32 0, !dbg !2756
  %24 = load [1 x i32], ptr %23, align 4, !dbg !2756
  call void @z_log_msg_runtime_vcreate(i8 noundef zeroext %16, ptr noundef %17, i8 noundef zeroext %18, ptr noundef %19, i32 noundef %20, i32 noundef %21, ptr noundef %22, [1 x i32] %24), !dbg !2756
  call void @llvm.va_end(ptr %15), !dbg !2757
  ret void, !dbg !2758
}

; Function Attrs: noinline nounwind optnone
define internal void @LL_USART_SetOverSampling(ptr noundef %0, i32 noundef %1) #0 !dbg !2759 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2760, metadata !DIExpression()), !dbg !2761
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2762, metadata !DIExpression()), !dbg !2763
  %5 = load ptr, ptr %3, align 4, !dbg !2764
  %6 = getelementptr inbounds %struct.USART_TypeDef, ptr %5, i32 0, i32 0, !dbg !2765
  %7 = load volatile i32, ptr %6, align 4, !dbg !2765
  %8 = and i32 %7, -32769, !dbg !2766
  %9 = load i32, ptr %4, align 4, !dbg !2767
  %10 = or i32 %8, %9, !dbg !2768
  %11 = load ptr, ptr %3, align 4, !dbg !2769
  %12 = getelementptr inbounds %struct.USART_TypeDef, ptr %11, i32 0, i32 0, !dbg !2770
  store volatile i32 %10, ptr %12, align 4, !dbg !2771
  ret void, !dbg !2772
}

; Function Attrs: noinline nounwind optnone
define internal void @LL_USART_SetBaudRate(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 !dbg !2773 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store ptr %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2774, metadata !DIExpression()), !dbg !2775
  store i32 %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2776, metadata !DIExpression()), !dbg !2777
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2778, metadata !DIExpression()), !dbg !2779
  store i32 %3, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2780, metadata !DIExpression()), !dbg !2781
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2782, metadata !DIExpression()), !dbg !2783
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2784, metadata !DIExpression()), !dbg !2785
  %11 = load i32, ptr %7, align 4, !dbg !2786
  %12 = icmp eq i32 %11, 32768, !dbg !2788
  br i1 %12, label %13, label %35, !dbg !2789

13:                                               ; preds = %4
  %14 = load i32, ptr %6, align 4, !dbg !2790
  %15 = mul i32 %14, 2, !dbg !2792
  %16 = load i32, ptr %8, align 4, !dbg !2793
  %17 = udiv i32 %16, 2, !dbg !2794
  %18 = add i32 %15, %17, !dbg !2795
  %19 = load i32, ptr %8, align 4, !dbg !2796
  %20 = udiv i32 %18, %19, !dbg !2797
  %21 = trunc i32 %20 to i16, !dbg !2798
  %22 = zext i16 %21 to i32, !dbg !2798
  store i32 %22, ptr %9, align 4, !dbg !2799
  %23 = load i32, ptr %9, align 4, !dbg !2800
  %24 = and i32 %23, 65520, !dbg !2801
  store i32 %24, ptr %10, align 4, !dbg !2802
  %25 = load i32, ptr %9, align 4, !dbg !2803
  %26 = and i32 %25, 15, !dbg !2804
  %27 = lshr i32 %26, 1, !dbg !2805
  %28 = trunc i32 %27 to i16, !dbg !2806
  %29 = zext i16 %28 to i32, !dbg !2806
  %30 = load i32, ptr %10, align 4, !dbg !2807
  %31 = or i32 %30, %29, !dbg !2807
  store i32 %31, ptr %10, align 4, !dbg !2807
  %32 = load i32, ptr %10, align 4, !dbg !2808
  %33 = load ptr, ptr %5, align 4, !dbg !2809
  %34 = getelementptr inbounds %struct.USART_TypeDef, ptr %33, i32 0, i32 3, !dbg !2810
  store volatile i32 %32, ptr %34, align 4, !dbg !2811
  br label %46, !dbg !2812

35:                                               ; preds = %4
  %36 = load i32, ptr %6, align 4, !dbg !2813
  %37 = load i32, ptr %8, align 4, !dbg !2815
  %38 = udiv i32 %37, 2, !dbg !2816
  %39 = add i32 %36, %38, !dbg !2817
  %40 = load i32, ptr %8, align 4, !dbg !2818
  %41 = udiv i32 %39, %40, !dbg !2819
  %42 = trunc i32 %41 to i16, !dbg !2820
  %43 = zext i16 %42 to i32, !dbg !2820
  %44 = load ptr, ptr %5, align 4, !dbg !2821
  %45 = getelementptr inbounds %struct.USART_TypeDef, ptr %44, i32 0, i32 3, !dbg !2822
  store volatile i32 %43, ptr %45, align 4, !dbg !2823
  br label %46

46:                                               ; preds = %35, %13
  ret void, !dbg !2824
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #4

; Function Attrs: noinline nounwind optnone
define internal void @z_log_msg_runtime_vcreate(i8 noundef zeroext %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, [1 x i32] %7) #0 !dbg !2825 {
  %9 = alloca %struct.__va_list, align 4
  %10 = alloca i8, align 1
  %11 = alloca ptr, align 4
  %12 = alloca i8, align 1
  %13 = alloca ptr, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca ptr, align 4
  %17 = getelementptr inbounds %struct.__va_list, ptr %9, i32 0, i32 0
  store [1 x i32] %7, ptr %17, align 4
  store i8 %0, ptr %10, align 1
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2829, metadata !DIExpression()), !dbg !2830
  store ptr %1, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !2831, metadata !DIExpression()), !dbg !2832
  store i8 %2, ptr %12, align 1
  call void @llvm.dbg.declare(metadata ptr %12, metadata !2833, metadata !DIExpression()), !dbg !2834
  store ptr %3, ptr %13, align 4
  call void @llvm.dbg.declare(metadata ptr %13, metadata !2835, metadata !DIExpression()), !dbg !2836
  store i32 %4, ptr %14, align 4
  call void @llvm.dbg.declare(metadata ptr %14, metadata !2837, metadata !DIExpression()), !dbg !2838
  store i32 %5, ptr %15, align 4
  call void @llvm.dbg.declare(metadata ptr %15, metadata !2839, metadata !DIExpression()), !dbg !2840
  store ptr %6, ptr %16, align 4
  call void @llvm.dbg.declare(metadata ptr %16, metadata !2841, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2843, metadata !DIExpression()), !dbg !2844
  br label %18, !dbg !2845

18:                                               ; preds = %8
  call void asm sideeffect "", "~{memory}"() #5, !dbg !2846, !srcloc !2848
  br label %19, !dbg !2849

19:                                               ; preds = %18
  %20 = load i8, ptr %10, align 1, !dbg !2850
  %21 = load ptr, ptr %11, align 4, !dbg !2851
  %22 = load i8, ptr %12, align 1, !dbg !2852
  %23 = load ptr, ptr %13, align 4, !dbg !2853
  %24 = load i32, ptr %14, align 4, !dbg !2854
  %25 = load i32, ptr %15, align 4, !dbg !2855
  %26 = load ptr, ptr %16, align 4, !dbg !2856
  %27 = getelementptr inbounds %struct.__va_list, ptr %9, i32 0, i32 0, !dbg !2857
  %28 = load [1 x i32], ptr %27, align 4, !dbg !2857
  call void @z_impl_z_log_msg_runtime_vcreate(i8 noundef zeroext %20, ptr noundef %21, i8 noundef zeroext %22, ptr noundef %23, i32 noundef %24, i32 noundef %25, ptr noundef %26, [1 x i32] %28), !dbg !2857
  ret void, !dbg !2858
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #4

declare void @z_impl_z_log_msg_runtime_vcreate(i8 noundef zeroext, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef, ptr noundef, [1 x i32]) #2

; Function Attrs: noinline nounwind optnone
define internal i32 @LL_USART_GetParity(ptr noundef %0) #0 !dbg !2859 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2860, metadata !DIExpression()), !dbg !2861
  %3 = load ptr, ptr %2, align 4, !dbg !2862
  %4 = getelementptr inbounds %struct.USART_TypeDef, ptr %3, i32 0, i32 0, !dbg !2863
  %5 = load volatile i32, ptr %4, align 4, !dbg !2863
  %6 = and i32 %5, 1536, !dbg !2864
  ret i32 %6, !dbg !2865
}

; Function Attrs: noinline nounwind optnone
define internal void @LL_USART_SetParity(ptr noundef %0, i32 noundef %1) #0 !dbg !2866 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2867, metadata !DIExpression()), !dbg !2868
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2869, metadata !DIExpression()), !dbg !2870
  %5 = load ptr, ptr %3, align 4, !dbg !2871
  %6 = getelementptr inbounds %struct.USART_TypeDef, ptr %5, i32 0, i32 0, !dbg !2872
  %7 = load volatile i32, ptr %6, align 4, !dbg !2872
  %8 = and i32 %7, -1537, !dbg !2873
  %9 = load i32, ptr %4, align 4, !dbg !2874
  %10 = or i32 %8, %9, !dbg !2875
  %11 = load ptr, ptr %3, align 4, !dbg !2876
  %12 = getelementptr inbounds %struct.USART_TypeDef, ptr %11, i32 0, i32 0, !dbg !2877
  store volatile i32 %10, ptr %12, align 4, !dbg !2878
  ret void, !dbg !2879
}

; Function Attrs: noinline nounwind optnone
define internal i32 @LL_USART_GetStopBitsLength(ptr noundef %0) #0 !dbg !2880 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2881, metadata !DIExpression()), !dbg !2882
  %3 = load ptr, ptr %2, align 4, !dbg !2883
  %4 = getelementptr inbounds %struct.USART_TypeDef, ptr %3, i32 0, i32 1, !dbg !2884
  %5 = load volatile i32, ptr %4, align 4, !dbg !2884
  %6 = and i32 %5, 12288, !dbg !2885
  ret i32 %6, !dbg !2886
}

; Function Attrs: noinline nounwind optnone
define internal void @LL_USART_SetStopBitsLength(ptr noundef %0, i32 noundef %1) #0 !dbg !2887 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2888, metadata !DIExpression()), !dbg !2889
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2890, metadata !DIExpression()), !dbg !2891
  %5 = load ptr, ptr %3, align 4, !dbg !2892
  %6 = getelementptr inbounds %struct.USART_TypeDef, ptr %5, i32 0, i32 1, !dbg !2893
  %7 = load volatile i32, ptr %6, align 4, !dbg !2893
  %8 = and i32 %7, -12289, !dbg !2894
  %9 = load i32, ptr %4, align 4, !dbg !2895
  %10 = or i32 %8, %9, !dbg !2896
  %11 = load ptr, ptr %3, align 4, !dbg !2897
  %12 = getelementptr inbounds %struct.USART_TypeDef, ptr %11, i32 0, i32 1, !dbg !2898
  store volatile i32 %10, ptr %12, align 4, !dbg !2899
  ret void, !dbg !2900
}

; Function Attrs: noinline nounwind optnone
define internal i32 @LL_USART_GetDataWidth(ptr noundef %0) #0 !dbg !2901 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2902, metadata !DIExpression()), !dbg !2903
  %3 = load ptr, ptr %2, align 4, !dbg !2904
  %4 = getelementptr inbounds %struct.USART_TypeDef, ptr %3, i32 0, i32 0, !dbg !2905
  %5 = load volatile i32, ptr %4, align 4, !dbg !2905
  %6 = and i32 %5, 268439552, !dbg !2906
  ret i32 %6, !dbg !2907
}

; Function Attrs: noinline nounwind optnone
define internal void @LL_USART_SetDataWidth(ptr noundef %0, i32 noundef %1) #0 !dbg !2908 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2909, metadata !DIExpression()), !dbg !2910
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2911, metadata !DIExpression()), !dbg !2912
  %5 = load ptr, ptr %3, align 4, !dbg !2913
  %6 = getelementptr inbounds %struct.USART_TypeDef, ptr %5, i32 0, i32 0, !dbg !2914
  %7 = load volatile i32, ptr %6, align 4, !dbg !2914
  %8 = and i32 %7, -268439553, !dbg !2915
  %9 = load i32, ptr %4, align 4, !dbg !2916
  %10 = or i32 %8, %9, !dbg !2917
  %11 = load ptr, ptr %3, align 4, !dbg !2918
  %12 = getelementptr inbounds %struct.USART_TypeDef, ptr %11, i32 0, i32 0, !dbg !2919
  store volatile i32 %10, ptr %12, align 4, !dbg !2920
  ret void, !dbg !2921
}

; Function Attrs: noinline nounwind optnone
define internal i32 @LL_USART_GetHWFlowCtrl(ptr noundef %0) #0 !dbg !2922 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2923, metadata !DIExpression()), !dbg !2924
  %3 = load ptr, ptr %2, align 4, !dbg !2925
  %4 = getelementptr inbounds %struct.USART_TypeDef, ptr %3, i32 0, i32 2, !dbg !2926
  %5 = load volatile i32, ptr %4, align 4, !dbg !2926
  %6 = and i32 %5, 768, !dbg !2927
  ret i32 %6, !dbg !2928
}

; Function Attrs: noinline nounwind optnone
define internal i32 @LL_USART_IsEnabledDEMode(ptr noundef %0) #0 !dbg !2929 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2930, metadata !DIExpression()), !dbg !2931
  %3 = load ptr, ptr %2, align 4, !dbg !2932
  %4 = getelementptr inbounds %struct.USART_TypeDef, ptr %3, i32 0, i32 2, !dbg !2933
  %5 = load volatile i32, ptr %4, align 4, !dbg !2933
  %6 = and i32 %5, 16384, !dbg !2934
  %7 = icmp eq i32 %6, 16384, !dbg !2935
  %8 = zext i1 %7 to i64, !dbg !2936
  %9 = select i1 %7, i32 1, i32 0, !dbg !2936
  ret i32 %9, !dbg !2937
}

; Function Attrs: noinline nounwind optnone
define internal void @LL_USART_EnableDEMode(ptr noundef %0) #0 !dbg !2938 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2939, metadata !DIExpression()), !dbg !2940
  %3 = load ptr, ptr %2, align 4, !dbg !2941
  %4 = getelementptr inbounds %struct.USART_TypeDef, ptr %3, i32 0, i32 2, !dbg !2942
  %5 = load volatile i32, ptr %4, align 4, !dbg !2943
  %6 = or i32 %5, 16384, !dbg !2943
  store volatile i32 %6, ptr %4, align 4, !dbg !2943
  ret void, !dbg !2944
}

; Function Attrs: noinline nounwind optnone
define internal void @LL_USART_DisableDEMode(ptr noundef %0) #0 !dbg !2945 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2946, metadata !DIExpression()), !dbg !2947
  %3 = load ptr, ptr %2, align 4, !dbg !2948
  %4 = getelementptr inbounds %struct.USART_TypeDef, ptr %3, i32 0, i32 2, !dbg !2949
  %5 = load volatile i32, ptr %4, align 4, !dbg !2950
  %6 = and i32 %5, -16385, !dbg !2950
  store volatile i32 %6, ptr %4, align 4, !dbg !2950
  ret void, !dbg !2951
}

; Function Attrs: noinline nounwind optnone
define internal zeroext i8 @uart_stm32_ll2cfg_parity(i32 noundef %0) #0 !dbg !2952 {
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2955, metadata !DIExpression()), !dbg !2956
  %4 = load i32, ptr %3, align 4, !dbg !2957
  switch i32 %4, label %8 [
    i32 1536, label %5
    i32 1024, label %6
    i32 0, label %7
  ], !dbg !2958

5:                                                ; preds = %1
  store i8 1, ptr %2, align 1, !dbg !2959
  br label %9, !dbg !2959

6:                                                ; preds = %1
  store i8 2, ptr %2, align 1, !dbg !2961
  br label %9, !dbg !2961

7:                                                ; preds = %1
  br label %8, !dbg !2962

8:                                                ; preds = %1, %7
  store i8 0, ptr %2, align 1, !dbg !2963
  br label %9, !dbg !2963

9:                                                ; preds = %8, %6, %5
  %10 = load i8, ptr %2, align 1, !dbg !2964
  ret i8 %10, !dbg !2964
}

; Function Attrs: noinline nounwind optnone
define internal zeroext i8 @uart_stm32_ll2cfg_hwctrl(i32 noundef %0) #0 !dbg !2965 {
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2968, metadata !DIExpression()), !dbg !2969
  %4 = load i32, ptr %3, align 4, !dbg !2970
  %5 = icmp eq i32 %4, 768, !dbg !2972
  br i1 %5, label %6, label %7, !dbg !2973

6:                                                ; preds = %1
  store i8 1, ptr %2, align 1, !dbg !2974
  br label %8, !dbg !2974

7:                                                ; preds = %1
  store i8 0, ptr %2, align 1, !dbg !2976
  br label %8, !dbg !2976

8:                                                ; preds = %7, %6
  %9 = load i8, ptr %2, align 1, !dbg !2977
  ret i8 %9, !dbg !2977
}

; Function Attrs: noinline nounwind optnone
define internal i32 @uart_stm32_fifo_fill_visitor(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 !dbg !2978 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 4
  %12 = alloca ptr, align 4
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  store ptr %0, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2985, metadata !DIExpression()), !dbg !2986
  store ptr %1, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2987, metadata !DIExpression()), !dbg !2988
  store i32 %2, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2989, metadata !DIExpression()), !dbg !2990
  store ptr %3, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !2991, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.declare(metadata ptr %12, metadata !2993, metadata !DIExpression()), !dbg !2994
  %15 = load ptr, ptr %8, align 4, !dbg !2995
  %16 = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 1, !dbg !2996
  %17 = load ptr, ptr %16, align 4, !dbg !2996
  store ptr %17, ptr %12, align 4, !dbg !2994
  call void @llvm.dbg.declare(metadata ptr %13, metadata !2997, metadata !DIExpression()), !dbg !2998
  store i8 0, ptr %13, align 1, !dbg !2998
  call void @llvm.dbg.declare(metadata ptr %14, metadata !2999, metadata !DIExpression()), !dbg !3000
  %18 = load ptr, ptr %12, align 4, !dbg !3001
  %19 = getelementptr inbounds %struct.uart_stm32_config, ptr %18, i32 0, i32 0, !dbg !3003
  %20 = load ptr, ptr %19, align 4, !dbg !3003
  %21 = call i32 @LL_USART_IsActiveFlag_TXE(ptr noundef %20), !dbg !3004
  %22 = icmp ne i32 %21, 0, !dbg !3004
  br i1 %22, label %26, label %23, !dbg !3005

23:                                               ; preds = %4
  %24 = load i8, ptr %13, align 1, !dbg !3006
  %25 = zext i8 %24 to i32, !dbg !3006
  store i32 %25, ptr %7, align 4, !dbg !3008
  br label %58, !dbg !3008

26:                                               ; preds = %4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2022, metadata !DIExpression()), !dbg !3009
  %27 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #5, !dbg !3011, !srcloc !2031
  store i32 %27, ptr %6, align 4, !dbg !3011
  %28 = load i32, ptr %6, align 4, !dbg !3012
  store i32 %28, ptr %14, align 4, !dbg !3013
  br label %29, !dbg !3014

29:                                               ; preds = %43, %26
  %30 = load i32, ptr %10, align 4, !dbg !3015
  %31 = load i8, ptr %13, align 1, !dbg !3016
  %32 = zext i8 %31 to i32, !dbg !3016
  %33 = sub nsw i32 %30, %32, !dbg !3017
  %34 = icmp sgt i32 %33, 0, !dbg !3018
  br i1 %34, label %35, label %41, !dbg !3019

35:                                               ; preds = %29
  %36 = load ptr, ptr %12, align 4, !dbg !3020
  %37 = getelementptr inbounds %struct.uart_stm32_config, ptr %36, i32 0, i32 0, !dbg !3021
  %38 = load ptr, ptr %37, align 4, !dbg !3021
  %39 = call i32 @LL_USART_IsActiveFlag_TXE(ptr noundef %38), !dbg !3022
  %40 = icmp ne i32 %39, 0, !dbg !3019
  br label %41

41:                                               ; preds = %35, %29
  %42 = phi i1 [ false, %29 ], [ %40, %35 ], !dbg !3023
  br i1 %42, label %43, label %50, !dbg !3014

43:                                               ; preds = %41
  %44 = load ptr, ptr %11, align 4, !dbg !3024
  %45 = load ptr, ptr %12, align 4, !dbg !3026
  %46 = load ptr, ptr %9, align 4, !dbg !3027
  %47 = load i8, ptr %13, align 1, !dbg !3028
  call void %44(ptr noundef %45, ptr noundef %46, i8 noundef zeroext %47), !dbg !3024
  %48 = load i8, ptr %13, align 1, !dbg !3029
  %49 = add i8 %48, 1, !dbg !3029
  store i8 %49, ptr %13, align 1, !dbg !3029
  br label %29, !dbg !3014, !llvm.loop !3030

50:                                               ; preds = %41
  %51 = load i32, ptr %14, align 4, !dbg !3032
  store i32 %51, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2042, metadata !DIExpression()), !dbg !3033
  %52 = load i32, ptr %5, align 4, !dbg !3035
  %53 = icmp ne i32 %52, 0, !dbg !3036
  br i1 %53, label %54, label %55, !dbg !3037

54:                                               ; preds = %50
  br label %arch_irq_unlock.exit, !dbg !3038

55:                                               ; preds = %50
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #5, !dbg !3039, !srcloc !2055
  br label %arch_irq_unlock.exit, !dbg !3040

arch_irq_unlock.exit:                             ; preds = %54, %55
  %56 = load i8, ptr %13, align 1, !dbg !3041
  %57 = zext i8 %56 to i32, !dbg !3041
  store i32 %57, ptr %7, align 4, !dbg !3042
  br label %58, !dbg !3042

58:                                               ; preds = %arch_irq_unlock.exit, %23
  %59 = load i32, ptr %7, align 4, !dbg !3043
  ret i32 %59, !dbg !3043
}

; Function Attrs: noinline nounwind optnone
define internal void @fifo_fill_with_u8(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) #0 !dbg !3044 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i8, align 1
  %7 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3045, metadata !DIExpression()), !dbg !3046
  store ptr %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3047, metadata !DIExpression()), !dbg !3048
  store i8 %2, ptr %6, align 1
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3049, metadata !DIExpression()), !dbg !3050
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3051, metadata !DIExpression()), !dbg !3052
  %8 = load ptr, ptr %5, align 4, !dbg !3053
  store ptr %8, ptr %7, align 4, !dbg !3052
  %9 = load ptr, ptr %4, align 4, !dbg !3054
  %10 = getelementptr inbounds %struct.uart_stm32_config, ptr %9, i32 0, i32 0, !dbg !3055
  %11 = load ptr, ptr %10, align 4, !dbg !3055
  %12 = load ptr, ptr %7, align 4, !dbg !3056
  %13 = load i8, ptr %6, align 1, !dbg !3057
  %14 = zext i8 %13 to i32, !dbg !3056
  %15 = getelementptr inbounds i8, ptr %12, i32 %14, !dbg !3056
  %16 = load i8, ptr %15, align 1, !dbg !3056
  call void @LL_USART_TransmitData8(ptr noundef %11, i8 noundef zeroext %16), !dbg !3058
  ret void, !dbg !3059
}

; Function Attrs: noinline nounwind optnone
define internal i32 @uart_stm32_fifo_read_visitor(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 !dbg !3060 {
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  %10 = alloca i8, align 1
  store ptr %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3067, metadata !DIExpression()), !dbg !3068
  store ptr %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3069, metadata !DIExpression()), !dbg !3070
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3071, metadata !DIExpression()), !dbg !3072
  store ptr %3, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !3073, metadata !DIExpression()), !dbg !3074
  call void @llvm.dbg.declare(metadata ptr %9, metadata !3075, metadata !DIExpression()), !dbg !3076
  %11 = load ptr, ptr %5, align 4, !dbg !3077
  %12 = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 1, !dbg !3078
  %13 = load ptr, ptr %12, align 4, !dbg !3078
  store ptr %13, ptr %9, align 4, !dbg !3076
  call void @llvm.dbg.declare(metadata ptr %10, metadata !3079, metadata !DIExpression()), !dbg !3080
  store i8 0, ptr %10, align 1, !dbg !3080
  br label %14, !dbg !3081

14:                                               ; preds = %44, %4
  %15 = load i32, ptr %7, align 4, !dbg !3082
  %16 = load i8, ptr %10, align 1, !dbg !3083
  %17 = zext i8 %16 to i32, !dbg !3083
  %18 = sub nsw i32 %15, %17, !dbg !3084
  %19 = icmp sgt i32 %18, 0, !dbg !3085
  br i1 %19, label %20, label %26, !dbg !3086

20:                                               ; preds = %14
  %21 = load ptr, ptr %9, align 4, !dbg !3087
  %22 = getelementptr inbounds %struct.uart_stm32_config, ptr %21, i32 0, i32 0, !dbg !3088
  %23 = load ptr, ptr %22, align 4, !dbg !3088
  %24 = call i32 @LL_USART_IsActiveFlag_RXNE(ptr noundef %23), !dbg !3089
  %25 = icmp ne i32 %24, 0, !dbg !3086
  br label %26

26:                                               ; preds = %20, %14
  %27 = phi i1 [ false, %14 ], [ %25, %20 ], !dbg !3090
  br i1 %27, label %28, label %45, !dbg !3081

28:                                               ; preds = %26
  %29 = load ptr, ptr %8, align 4, !dbg !3091
  %30 = load ptr, ptr %9, align 4, !dbg !3093
  %31 = load ptr, ptr %6, align 4, !dbg !3094
  %32 = load i8, ptr %10, align 1, !dbg !3095
  call void %29(ptr noundef %30, ptr noundef %31, i8 noundef zeroext %32), !dbg !3091
  %33 = load i8, ptr %10, align 1, !dbg !3096
  %34 = add i8 %33, 1, !dbg !3096
  store i8 %34, ptr %10, align 1, !dbg !3096
  %35 = load ptr, ptr %9, align 4, !dbg !3097
  %36 = getelementptr inbounds %struct.uart_stm32_config, ptr %35, i32 0, i32 0, !dbg !3099
  %37 = load ptr, ptr %36, align 4, !dbg !3099
  %38 = call i32 @LL_USART_IsActiveFlag_ORE(ptr noundef %37), !dbg !3100
  %39 = icmp ne i32 %38, 0, !dbg !3100
  br i1 %39, label %40, label %44, !dbg !3101

40:                                               ; preds = %28
  %41 = load ptr, ptr %9, align 4, !dbg !3102
  %42 = getelementptr inbounds %struct.uart_stm32_config, ptr %41, i32 0, i32 0, !dbg !3104
  %43 = load ptr, ptr %42, align 4, !dbg !3104
  call void @LL_USART_ClearFlag_ORE(ptr noundef %43), !dbg !3105
  br label %44, !dbg !3106

44:                                               ; preds = %40, %28
  br label %14, !dbg !3081, !llvm.loop !3107

45:                                               ; preds = %26
  %46 = load i8, ptr %10, align 1, !dbg !3109
  %47 = zext i8 %46 to i32, !dbg !3109
  ret i32 %47, !dbg !3110
}

; Function Attrs: noinline nounwind optnone
define internal void @fifo_read_with_u8(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) #0 !dbg !3111 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i8, align 1
  %7 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3112, metadata !DIExpression()), !dbg !3113
  store ptr %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3114, metadata !DIExpression()), !dbg !3115
  store i8 %2, ptr %6, align 1
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3116, metadata !DIExpression()), !dbg !3117
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3118, metadata !DIExpression()), !dbg !3119
  %8 = load ptr, ptr %5, align 4, !dbg !3120
  store ptr %8, ptr %7, align 4, !dbg !3119
  %9 = load ptr, ptr %4, align 4, !dbg !3121
  %10 = getelementptr inbounds %struct.uart_stm32_config, ptr %9, i32 0, i32 0, !dbg !3122
  %11 = load ptr, ptr %10, align 4, !dbg !3122
  %12 = call zeroext i8 @LL_USART_ReceiveData8(ptr noundef %11), !dbg !3123
  %13 = load ptr, ptr %7, align 4, !dbg !3124
  %14 = load i8, ptr %6, align 1, !dbg !3125
  %15 = zext i8 %14 to i32, !dbg !3124
  %16 = getelementptr inbounds i8, ptr %13, i32 %15, !dbg !3124
  store i8 %12, ptr %16, align 1, !dbg !3126
  ret void, !dbg !3127
}

; Function Attrs: noinline nounwind optnone
define internal void @LL_USART_EnableIT_TC(ptr noundef %0) #0 !dbg !3128 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3129, metadata !DIExpression()), !dbg !3130
  br label %7, !dbg !3131

7:                                                ; preds = %1
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3132, metadata !DIExpression()), !dbg !3134
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3135, metadata !DIExpression()), !dbg !3140
  %8 = call i32 asm sideeffect "MRS $0, primask", "=r"() #5, !dbg !3142, !srcloc !3143
  store i32 %8, ptr %4, align 4, !dbg !3142
  %9 = load i32, ptr %4, align 4, !dbg !3144
  store i32 %9, ptr %6, align 4, !dbg !3145
  store i32 1, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3146, metadata !DIExpression()), !dbg !3150
  %10 = load i32, ptr %2, align 4, !dbg !3152
  call void asm sideeffect "MSR primask, $0", "r,~{memory}"(i32 %10) #5, !dbg !3153, !srcloc !3154
  %11 = load ptr, ptr %5, align 4, !dbg !3155
  %12 = getelementptr inbounds %struct.USART_TypeDef, ptr %11, i32 0, i32 0, !dbg !3156
  %13 = load volatile i32, ptr %12, align 4, !dbg !3157
  %14 = or i32 %13, 64, !dbg !3157
  store volatile i32 %14, ptr %12, align 4, !dbg !3157
  %15 = load i32, ptr %6, align 4, !dbg !3158
  store i32 %15, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3146, metadata !DIExpression()), !dbg !3159
  %16 = load i32, ptr %3, align 4, !dbg !3161
  call void asm sideeffect "MSR primask, $0", "r,~{memory}"(i32 %16) #5, !dbg !3162, !srcloc !3154
  br label %17, !dbg !3163

17:                                               ; preds = %7
  ret void, !dbg !3164
}

; Function Attrs: noinline nounwind optnone
define internal void @LL_USART_DisableIT_TC(ptr noundef %0) #0 !dbg !3165 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3166, metadata !DIExpression()), !dbg !3167
  br label %7, !dbg !3168

7:                                                ; preds = %1
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3169, metadata !DIExpression()), !dbg !3171
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3135, metadata !DIExpression()), !dbg !3172
  %8 = call i32 asm sideeffect "MRS $0, primask", "=r"() #5, !dbg !3174, !srcloc !3143
  store i32 %8, ptr %4, align 4, !dbg !3174
  %9 = load i32, ptr %4, align 4, !dbg !3175
  store i32 %9, ptr %6, align 4, !dbg !3176
  store i32 1, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3146, metadata !DIExpression()), !dbg !3177
  %10 = load i32, ptr %2, align 4, !dbg !3179
  call void asm sideeffect "MSR primask, $0", "r,~{memory}"(i32 %10) #5, !dbg !3180, !srcloc !3154
  %11 = load ptr, ptr %5, align 4, !dbg !3181
  %12 = getelementptr inbounds %struct.USART_TypeDef, ptr %11, i32 0, i32 0, !dbg !3182
  %13 = load volatile i32, ptr %12, align 4, !dbg !3183
  %14 = and i32 %13, -65, !dbg !3183
  store volatile i32 %14, ptr %12, align 4, !dbg !3183
  %15 = load i32, ptr %6, align 4, !dbg !3184
  store i32 %15, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3146, metadata !DIExpression()), !dbg !3185
  %16 = load i32, ptr %3, align 4, !dbg !3187
  call void asm sideeffect "MSR primask, $0", "r,~{memory}"(i32 %16) #5, !dbg !3188, !srcloc !3154
  br label %17, !dbg !3189

17:                                               ; preds = %7
  ret void, !dbg !3190
}

; Function Attrs: noinline nounwind optnone
define internal i32 @LL_USART_IsEnabledIT_TC(ptr noundef %0) #0 !dbg !3191 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3192, metadata !DIExpression()), !dbg !3193
  %3 = load ptr, ptr %2, align 4, !dbg !3194
  %4 = getelementptr inbounds %struct.USART_TypeDef, ptr %3, i32 0, i32 0, !dbg !3195
  %5 = load volatile i32, ptr %4, align 4, !dbg !3195
  %6 = and i32 %5, 64, !dbg !3196
  %7 = icmp eq i32 %6, 64, !dbg !3197
  %8 = zext i1 %7 to i64, !dbg !3198
  %9 = select i1 %7, i32 1, i32 0, !dbg !3198
  ret i32 %9, !dbg !3199
}

; Function Attrs: noinline nounwind optnone
define internal void @LL_USART_EnableIT_RXNE(ptr noundef %0) #0 !dbg !3200 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3201, metadata !DIExpression()), !dbg !3202
  br label %7, !dbg !3203

7:                                                ; preds = %1
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3204, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3135, metadata !DIExpression()), !dbg !3207
  %8 = call i32 asm sideeffect "MRS $0, primask", "=r"() #5, !dbg !3209, !srcloc !3143
  store i32 %8, ptr %4, align 4, !dbg !3209
  %9 = load i32, ptr %4, align 4, !dbg !3210
  store i32 %9, ptr %6, align 4, !dbg !3211
  store i32 1, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3146, metadata !DIExpression()), !dbg !3212
  %10 = load i32, ptr %2, align 4, !dbg !3214
  call void asm sideeffect "MSR primask, $0", "r,~{memory}"(i32 %10) #5, !dbg !3215, !srcloc !3154
  %11 = load ptr, ptr %5, align 4, !dbg !3216
  %12 = getelementptr inbounds %struct.USART_TypeDef, ptr %11, i32 0, i32 0, !dbg !3217
  %13 = load volatile i32, ptr %12, align 4, !dbg !3218
  %14 = or i32 %13, 32, !dbg !3218
  store volatile i32 %14, ptr %12, align 4, !dbg !3218
  %15 = load i32, ptr %6, align 4, !dbg !3219
  store i32 %15, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3146, metadata !DIExpression()), !dbg !3220
  %16 = load i32, ptr %3, align 4, !dbg !3222
  call void asm sideeffect "MSR primask, $0", "r,~{memory}"(i32 %16) #5, !dbg !3223, !srcloc !3154
  br label %17, !dbg !3224

17:                                               ; preds = %7
  ret void, !dbg !3225
}

; Function Attrs: noinline nounwind optnone
define internal void @LL_USART_DisableIT_RXNE(ptr noundef %0) #0 !dbg !3226 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3227, metadata !DIExpression()), !dbg !3228
  br label %7, !dbg !3229

7:                                                ; preds = %1
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3230, metadata !DIExpression()), !dbg !3232
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3135, metadata !DIExpression()), !dbg !3233
  %8 = call i32 asm sideeffect "MRS $0, primask", "=r"() #5, !dbg !3235, !srcloc !3143
  store i32 %8, ptr %4, align 4, !dbg !3235
  %9 = load i32, ptr %4, align 4, !dbg !3236
  store i32 %9, ptr %6, align 4, !dbg !3237
  store i32 1, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3146, metadata !DIExpression()), !dbg !3238
  %10 = load i32, ptr %2, align 4, !dbg !3240
  call void asm sideeffect "MSR primask, $0", "r,~{memory}"(i32 %10) #5, !dbg !3241, !srcloc !3154
  %11 = load ptr, ptr %5, align 4, !dbg !3242
  %12 = getelementptr inbounds %struct.USART_TypeDef, ptr %11, i32 0, i32 0, !dbg !3243
  %13 = load volatile i32, ptr %12, align 4, !dbg !3244
  %14 = and i32 %13, -33, !dbg !3244
  store volatile i32 %14, ptr %12, align 4, !dbg !3244
  %15 = load i32, ptr %6, align 4, !dbg !3245
  store i32 %15, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3146, metadata !DIExpression()), !dbg !3246
  %16 = load i32, ptr %3, align 4, !dbg !3248
  call void asm sideeffect "MSR primask, $0", "r,~{memory}"(i32 %16) #5, !dbg !3249, !srcloc !3154
  br label %17, !dbg !3250

17:                                               ; preds = %7
  ret void, !dbg !3251
}

; Function Attrs: noinline nounwind optnone
define internal i32 @LL_USART_IsActiveFlag_TC(ptr noundef %0) #0 !dbg !3252 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3253, metadata !DIExpression()), !dbg !3254
  %3 = load ptr, ptr %2, align 4, !dbg !3255
  %4 = getelementptr inbounds %struct.USART_TypeDef, ptr %3, i32 0, i32 7, !dbg !3256
  %5 = load volatile i32, ptr %4, align 4, !dbg !3256
  %6 = and i32 %5, 64, !dbg !3257
  %7 = icmp eq i32 %6, 64, !dbg !3258
  %8 = zext i1 %7 to i64, !dbg !3259
  %9 = select i1 %7, i32 1, i32 0, !dbg !3259
  ret i32 %9, !dbg !3260
}

; Function Attrs: noinline nounwind optnone
define internal void @LL_USART_EnableIT_ERROR(ptr noundef %0) #0 !dbg !3261 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3262, metadata !DIExpression()), !dbg !3263
  br label %7, !dbg !3264

7:                                                ; preds = %1
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3265, metadata !DIExpression()), !dbg !3267
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3135, metadata !DIExpression()), !dbg !3268
  %8 = call i32 asm sideeffect "MRS $0, primask", "=r"() #5, !dbg !3270, !srcloc !3143
  store i32 %8, ptr %4, align 4, !dbg !3270
  %9 = load i32, ptr %4, align 4, !dbg !3271
  store i32 %9, ptr %6, align 4, !dbg !3272
  store i32 1, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3146, metadata !DIExpression()), !dbg !3273
  %10 = load i32, ptr %2, align 4, !dbg !3275
  call void asm sideeffect "MSR primask, $0", "r,~{memory}"(i32 %10) #5, !dbg !3276, !srcloc !3154
  %11 = load ptr, ptr %5, align 4, !dbg !3277
  %12 = getelementptr inbounds %struct.USART_TypeDef, ptr %11, i32 0, i32 2, !dbg !3278
  %13 = load volatile i32, ptr %12, align 4, !dbg !3279
  %14 = or i32 %13, 1, !dbg !3279
  store volatile i32 %14, ptr %12, align 4, !dbg !3279
  %15 = load i32, ptr %6, align 4, !dbg !3280
  store i32 %15, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3146, metadata !DIExpression()), !dbg !3281
  %16 = load i32, ptr %3, align 4, !dbg !3283
  call void asm sideeffect "MSR primask, $0", "r,~{memory}"(i32 %16) #5, !dbg !3284, !srcloc !3154
  br label %17, !dbg !3285

17:                                               ; preds = %7
  ret void, !dbg !3286
}

; Function Attrs: noinline nounwind optnone
define internal void @LL_USART_EnableIT_LBD(ptr noundef %0) #0 !dbg !3287 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3288, metadata !DIExpression()), !dbg !3289
  %3 = load ptr, ptr %2, align 4, !dbg !3290
  %4 = getelementptr inbounds %struct.USART_TypeDef, ptr %3, i32 0, i32 1, !dbg !3291
  %5 = load volatile i32, ptr %4, align 4, !dbg !3292
  %6 = or i32 %5, 64, !dbg !3292
  store volatile i32 %6, ptr %4, align 4, !dbg !3292
  ret void, !dbg !3293
}

; Function Attrs: noinline nounwind optnone
define internal void @LL_USART_EnableIT_PE(ptr noundef %0) #0 !dbg !3294 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3295, metadata !DIExpression()), !dbg !3296
  br label %7, !dbg !3297

7:                                                ; preds = %1
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3298, metadata !DIExpression()), !dbg !3300
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3135, metadata !DIExpression()), !dbg !3301
  %8 = call i32 asm sideeffect "MRS $0, primask", "=r"() #5, !dbg !3303, !srcloc !3143
  store i32 %8, ptr %4, align 4, !dbg !3303
  %9 = load i32, ptr %4, align 4, !dbg !3304
  store i32 %9, ptr %6, align 4, !dbg !3305
  store i32 1, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3146, metadata !DIExpression()), !dbg !3306
  %10 = load i32, ptr %2, align 4, !dbg !3308
  call void asm sideeffect "MSR primask, $0", "r,~{memory}"(i32 %10) #5, !dbg !3309, !srcloc !3154
  %11 = load ptr, ptr %5, align 4, !dbg !3310
  %12 = getelementptr inbounds %struct.USART_TypeDef, ptr %11, i32 0, i32 0, !dbg !3311
  %13 = load volatile i32, ptr %12, align 4, !dbg !3312
  %14 = or i32 %13, 256, !dbg !3312
  store volatile i32 %14, ptr %12, align 4, !dbg !3312
  %15 = load i32, ptr %6, align 4, !dbg !3313
  store i32 %15, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3146, metadata !DIExpression()), !dbg !3314
  %16 = load i32, ptr %3, align 4, !dbg !3316
  call void asm sideeffect "MSR primask, $0", "r,~{memory}"(i32 %16) #5, !dbg !3317, !srcloc !3154
  br label %17, !dbg !3318

17:                                               ; preds = %7
  ret void, !dbg !3319
}

; Function Attrs: noinline nounwind optnone
define internal void @LL_USART_DisableIT_ERROR(ptr noundef %0) #0 !dbg !3320 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3321, metadata !DIExpression()), !dbg !3322
  br label %7, !dbg !3323

7:                                                ; preds = %1
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3324, metadata !DIExpression()), !dbg !3326
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3135, metadata !DIExpression()), !dbg !3327
  %8 = call i32 asm sideeffect "MRS $0, primask", "=r"() #5, !dbg !3329, !srcloc !3143
  store i32 %8, ptr %4, align 4, !dbg !3329
  %9 = load i32, ptr %4, align 4, !dbg !3330
  store i32 %9, ptr %6, align 4, !dbg !3331
  store i32 1, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3146, metadata !DIExpression()), !dbg !3332
  %10 = load i32, ptr %2, align 4, !dbg !3334
  call void asm sideeffect "MSR primask, $0", "r,~{memory}"(i32 %10) #5, !dbg !3335, !srcloc !3154
  %11 = load ptr, ptr %5, align 4, !dbg !3336
  %12 = getelementptr inbounds %struct.USART_TypeDef, ptr %11, i32 0, i32 2, !dbg !3337
  %13 = load volatile i32, ptr %12, align 4, !dbg !3338
  %14 = and i32 %13, -2, !dbg !3338
  store volatile i32 %14, ptr %12, align 4, !dbg !3338
  %15 = load i32, ptr %6, align 4, !dbg !3339
  store i32 %15, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3146, metadata !DIExpression()), !dbg !3340
  %16 = load i32, ptr %3, align 4, !dbg !3342
  call void asm sideeffect "MSR primask, $0", "r,~{memory}"(i32 %16) #5, !dbg !3343, !srcloc !3154
  br label %17, !dbg !3344

17:                                               ; preds = %7
  ret void, !dbg !3345
}

; Function Attrs: noinline nounwind optnone
define internal void @LL_USART_DisableIT_LBD(ptr noundef %0) #0 !dbg !3346 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3347, metadata !DIExpression()), !dbg !3348
  %3 = load ptr, ptr %2, align 4, !dbg !3349
  %4 = getelementptr inbounds %struct.USART_TypeDef, ptr %3, i32 0, i32 1, !dbg !3350
  %5 = load volatile i32, ptr %4, align 4, !dbg !3351
  %6 = and i32 %5, -65, !dbg !3351
  store volatile i32 %6, ptr %4, align 4, !dbg !3351
  ret void, !dbg !3352
}

; Function Attrs: noinline nounwind optnone
define internal void @LL_USART_DisableIT_PE(ptr noundef %0) #0 !dbg !3353 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3354, metadata !DIExpression()), !dbg !3355
  br label %7, !dbg !3356

7:                                                ; preds = %1
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3357, metadata !DIExpression()), !dbg !3359
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3135, metadata !DIExpression()), !dbg !3360
  %8 = call i32 asm sideeffect "MRS $0, primask", "=r"() #5, !dbg !3362, !srcloc !3143
  store i32 %8, ptr %4, align 4, !dbg !3362
  %9 = load i32, ptr %4, align 4, !dbg !3363
  store i32 %9, ptr %6, align 4, !dbg !3364
  store i32 1, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3146, metadata !DIExpression()), !dbg !3365
  %10 = load i32, ptr %2, align 4, !dbg !3367
  call void asm sideeffect "MSR primask, $0", "r,~{memory}"(i32 %10) #5, !dbg !3368, !srcloc !3154
  %11 = load ptr, ptr %5, align 4, !dbg !3369
  %12 = getelementptr inbounds %struct.USART_TypeDef, ptr %11, i32 0, i32 0, !dbg !3370
  %13 = load volatile i32, ptr %12, align 4, !dbg !3371
  %14 = and i32 %13, -257, !dbg !3371
  store volatile i32 %14, ptr %12, align 4, !dbg !3371
  %15 = load i32, ptr %6, align 4, !dbg !3372
  store i32 %15, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3146, metadata !DIExpression()), !dbg !3373
  %16 = load i32, ptr %3, align 4, !dbg !3375
  call void asm sideeffect "MSR primask, $0", "r,~{memory}"(i32 %16) #5, !dbg !3376, !srcloc !3154
  br label %17, !dbg !3377

17:                                               ; preds = %7
  ret void, !dbg !3378
}

; Function Attrs: noinline nounwind optnone
define internal i32 @LL_USART_IsEnabledIT_RXNE(ptr noundef %0) #0 !dbg !3379 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3380, metadata !DIExpression()), !dbg !3381
  %3 = load ptr, ptr %2, align 4, !dbg !3382
  %4 = getelementptr inbounds %struct.USART_TypeDef, ptr %3, i32 0, i32 0, !dbg !3383
  %5 = load volatile i32, ptr %4, align 4, !dbg !3383
  %6 = and i32 %5, 32, !dbg !3384
  %7 = icmp eq i32 %6, 32, !dbg !3385
  %8 = zext i1 %7 to i64, !dbg !3386
  %9 = select i1 %7, i32 1, i32 0, !dbg !3386
  ret i32 %9, !dbg !3387
}

; Function Attrs: noinline nounwind optnone
define internal i32 @uart_stm32_clocks_enable(ptr noundef %0) #0 !dbg !3388 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 4
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3389, metadata !DIExpression()), !dbg !3390
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3391, metadata !DIExpression()), !dbg !3392
  %13 = load ptr, ptr %3, align 4, !dbg !3393
  %14 = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 1, !dbg !3394
  %15 = load ptr, ptr %14, align 4, !dbg !3394
  store ptr %15, ptr %4, align 4, !dbg !3392
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3395, metadata !DIExpression()), !dbg !3396
  %16 = load ptr, ptr %3, align 4, !dbg !3397
  %17 = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 4, !dbg !3398
  %18 = load ptr, ptr %17, align 4, !dbg !3398
  store ptr %18, ptr %5, align 4, !dbg !3396
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3399, metadata !DIExpression()), !dbg !3400
  %19 = load ptr, ptr %3, align 4, !dbg !3401
  call void @__uart_stm32_get_clock(ptr noundef %19), !dbg !3402
  %20 = load ptr, ptr %5, align 4, !dbg !3403
  %21 = getelementptr inbounds %struct.uart_stm32_data, ptr %20, i32 0, i32 0, !dbg !3405
  %22 = load ptr, ptr %21, align 4, !dbg !3405
  %23 = call zeroext i1 @device_is_ready(ptr noundef %22), !dbg !3406
  br i1 %23, label %34, label %24, !dbg !3407

24:                                               ; preds = %1
  br label %25, !dbg !3408

25:                                               ; preds = %24
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3410, metadata !DIExpression()), !dbg !3412
  %26 = call zeroext i1 @k_is_user_context(), !dbg !3413
  %27 = zext i1 %26 to i8, !dbg !3412
  store i8 %27, ptr %7, align 1, !dbg !3412
  call void @llvm.dbg.declare(metadata ptr %8, metadata !3414, metadata !DIExpression()), !dbg !3415
  call void @llvm.dbg.declare(metadata ptr %9, metadata !3416, metadata !DIExpression()), !dbg !3417
  %28 = load ptr, ptr @__log_current_const_data, align 4, !dbg !3418
  store ptr %28, ptr %9, align 4, !dbg !3417
  br label %29, !dbg !3419

29:                                               ; preds = %25
  %30 = load ptr, ptr %9, align 4, !dbg !3420
  call void (i8, ptr, i8, ptr, i32, i32, ptr, ...) @z_log_msg_runtime_create(i8 noundef zeroext 0, ptr noundef %30, i8 noundef zeroext 1, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef @.str.3), !dbg !3422
  store i32 0, ptr %8, align 4, !dbg !3423
  br label %31, !dbg !3424

31:                                               ; preds = %29
  %32 = load i32, ptr %8, align 4, !dbg !3425
  br label %33, !dbg !3426

33:                                               ; preds = %31
  store i32 -19, ptr %2, align 4, !dbg !3427
  br label %57, !dbg !3427

34:                                               ; preds = %1
  %35 = load ptr, ptr %5, align 4, !dbg !3428
  %36 = getelementptr inbounds %struct.uart_stm32_data, ptr %35, i32 0, i32 0, !dbg !3429
  %37 = load ptr, ptr %36, align 4, !dbg !3429
  %38 = load ptr, ptr %4, align 4, !dbg !3430
  %39 = getelementptr inbounds %struct.uart_stm32_config, ptr %38, i32 0, i32 2, !dbg !3431
  %40 = load ptr, ptr %39, align 4, !dbg !3431
  %41 = getelementptr inbounds %struct.stm32_pclken, ptr %40, i32 0, !dbg !3430
  %42 = call i32 @clock_control_on(ptr noundef %37, ptr noundef %41), !dbg !3432
  store i32 %42, ptr %6, align 4, !dbg !3433
  %43 = load i32, ptr %6, align 4, !dbg !3434
  %44 = icmp ne i32 %43, 0, !dbg !3436
  br i1 %44, label %45, label %56, !dbg !3437

45:                                               ; preds = %34
  br label %46, !dbg !3438

46:                                               ; preds = %45
  call void @llvm.dbg.declare(metadata ptr %10, metadata !3440, metadata !DIExpression()), !dbg !3442
  %47 = call zeroext i1 @k_is_user_context(), !dbg !3443
  %48 = zext i1 %47 to i8, !dbg !3442
  store i8 %48, ptr %10, align 1, !dbg !3442
  call void @llvm.dbg.declare(metadata ptr %11, metadata !3444, metadata !DIExpression()), !dbg !3445
  call void @llvm.dbg.declare(metadata ptr %12, metadata !3446, metadata !DIExpression()), !dbg !3447
  %49 = load ptr, ptr @__log_current_const_data, align 4, !dbg !3448
  store ptr %49, ptr %12, align 4, !dbg !3447
  br label %50, !dbg !3449

50:                                               ; preds = %46
  %51 = load ptr, ptr %12, align 4, !dbg !3450
  call void (i8, ptr, i8, ptr, i32, i32, ptr, ...) @z_log_msg_runtime_create(i8 noundef zeroext 0, ptr noundef %51, i8 noundef zeroext 1, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef @.str.4), !dbg !3452
  store i32 0, ptr %11, align 4, !dbg !3453
  br label %52, !dbg !3454

52:                                               ; preds = %50
  %53 = load i32, ptr %11, align 4, !dbg !3455
  br label %54, !dbg !3456

54:                                               ; preds = %52
  %55 = load i32, ptr %6, align 4, !dbg !3457
  store i32 %55, ptr %2, align 4, !dbg !3458
  br label %57, !dbg !3458

56:                                               ; preds = %34
  store i32 0, ptr %2, align 4, !dbg !3459
  br label %57, !dbg !3459

57:                                               ; preds = %56, %54, %33
  %58 = load i32, ptr %2, align 4, !dbg !3460
  ret i32 %58, !dbg !3460
}

; Function Attrs: noinline nounwind optnone
define internal i32 @pinctrl_apply_state(ptr noundef %0, i8 noundef zeroext %1) #0 !dbg !3461 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3464, metadata !DIExpression()), !dbg !3465
  store i8 %1, ptr %5, align 1
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3466, metadata !DIExpression()), !dbg !3467
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3468, metadata !DIExpression()), !dbg !3469
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3470, metadata !DIExpression()), !dbg !3471
  %8 = load ptr, ptr %4, align 4, !dbg !3472
  %9 = load i8, ptr %5, align 1, !dbg !3473
  %10 = call i32 @pinctrl_lookup_state(ptr noundef %8, i8 noundef zeroext %9, ptr noundef %7), !dbg !3474
  store i32 %10, ptr %6, align 4, !dbg !3475
  %11 = load i32, ptr %6, align 4, !dbg !3476
  %12 = icmp slt i32 %11, 0, !dbg !3478
  br i1 %12, label %13, label %15, !dbg !3479

13:                                               ; preds = %2
  %14 = load i32, ptr %6, align 4, !dbg !3480
  store i32 %14, ptr %3, align 4, !dbg !3482
  br label %19, !dbg !3482

15:                                               ; preds = %2
  %16 = load ptr, ptr %4, align 4, !dbg !3483
  %17 = load ptr, ptr %7, align 4, !dbg !3484
  %18 = call i32 @pinctrl_apply_state_direct(ptr noundef %16, ptr noundef %17), !dbg !3485
  store i32 %18, ptr %3, align 4, !dbg !3486
  br label %19, !dbg !3486

19:                                               ; preds = %15, %13
  %20 = load i32, ptr %3, align 4, !dbg !3487
  ret i32 %20, !dbg !3487
}

; Function Attrs: noinline nounwind optnone
define internal i32 @uart_stm32_registers_configure(ptr noundef %0) #0 !dbg !3488 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 4
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3489, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3491, metadata !DIExpression()), !dbg !3492
  %13 = load ptr, ptr %3, align 4, !dbg !3493
  %14 = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 1, !dbg !3494
  %15 = load ptr, ptr %14, align 4, !dbg !3494
  store ptr %15, ptr %4, align 4, !dbg !3492
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3495, metadata !DIExpression()), !dbg !3496
  %16 = load ptr, ptr %3, align 4, !dbg !3497
  %17 = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 4, !dbg !3498
  %18 = load ptr, ptr %17, align 4, !dbg !3498
  store ptr %18, ptr %5, align 4, !dbg !3496
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3499, metadata !DIExpression()), !dbg !3500
  %19 = load ptr, ptr %5, align 4, !dbg !3501
  %20 = getelementptr inbounds %struct.uart_stm32_data, ptr %19, i32 0, i32 1, !dbg !3502
  %21 = load ptr, ptr %20, align 4, !dbg !3502
  store ptr %21, ptr %6, align 4, !dbg !3500
  %22 = load ptr, ptr %4, align 4, !dbg !3503
  %23 = getelementptr inbounds %struct.uart_stm32_config, ptr %22, i32 0, i32 0, !dbg !3504
  %24 = load ptr, ptr %23, align 4, !dbg !3504
  call void @LL_USART_Disable(ptr noundef %24), !dbg !3505
  %25 = load ptr, ptr %4, align 4, !dbg !3506
  %26 = getelementptr inbounds %struct.uart_stm32_config, ptr %25, i32 0, i32 1, !dbg !3508
  %27 = getelementptr inbounds %struct.reset_dt_spec, ptr %26, i32 0, i32 0, !dbg !3509
  %28 = load ptr, ptr %27, align 4, !dbg !3509
  %29 = call zeroext i1 @device_is_ready(ptr noundef %28), !dbg !3510
  br i1 %29, label %40, label %30, !dbg !3511

30:                                               ; preds = %1
  br label %31, !dbg !3512

31:                                               ; preds = %30
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3514, metadata !DIExpression()), !dbg !3516
  %32 = call zeroext i1 @k_is_user_context(), !dbg !3517
  %33 = zext i1 %32 to i8, !dbg !3516
  store i8 %33, ptr %7, align 1, !dbg !3516
  call void @llvm.dbg.declare(metadata ptr %8, metadata !3518, metadata !DIExpression()), !dbg !3519
  call void @llvm.dbg.declare(metadata ptr %9, metadata !3520, metadata !DIExpression()), !dbg !3521
  %34 = load ptr, ptr @__log_current_const_data, align 4, !dbg !3522
  store ptr %34, ptr %9, align 4, !dbg !3521
  br label %35, !dbg !3523

35:                                               ; preds = %31
  %36 = load ptr, ptr %9, align 4, !dbg !3524
  call void (i8, ptr, i8, ptr, i32, i32, ptr, ...) @z_log_msg_runtime_create(i8 noundef zeroext 0, ptr noundef %36, i8 noundef zeroext 1, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef @.str.5), !dbg !3526
  store i32 0, ptr %8, align 4, !dbg !3527
  br label %37, !dbg !3528

37:                                               ; preds = %35
  %38 = load i32, ptr %8, align 4, !dbg !3529
  br label %39, !dbg !3530

39:                                               ; preds = %37
  store i32 -19, ptr %2, align 4, !dbg !3531
  br label %189, !dbg !3531

40:                                               ; preds = %1
  %41 = load ptr, ptr %4, align 4, !dbg !3532
  %42 = getelementptr inbounds %struct.uart_stm32_config, ptr %41, i32 0, i32 1, !dbg !3533
  %43 = call i32 @reset_line_toggle_dt(ptr noundef %42), !dbg !3534
  %44 = load ptr, ptr %4, align 4, !dbg !3535
  %45 = getelementptr inbounds %struct.uart_stm32_config, ptr %44, i32 0, i32 0, !dbg !3536
  %46 = load ptr, ptr %45, align 4, !dbg !3536
  call void @LL_USART_SetTransferDirection(ptr noundef %46, i32 noundef 12), !dbg !3537
  %47 = load ptr, ptr %3, align 4, !dbg !3538
  %48 = load ptr, ptr %6, align 4, !dbg !3539
  call void @uart_stm32_parameters_set(ptr noundef %47, ptr noundef %48), !dbg !3540
  %49 = load ptr, ptr %4, align 4, !dbg !3541
  %50 = getelementptr inbounds %struct.uart_stm32_config, ptr %49, i32 0, i32 4, !dbg !3543
  %51 = load i8, ptr %50, align 4, !dbg !3543
  %52 = trunc i8 %51 to i1, !dbg !3543
  br i1 %52, label %53, label %57, !dbg !3544

53:                                               ; preds = %40
  %54 = load ptr, ptr %4, align 4, !dbg !3545
  %55 = getelementptr inbounds %struct.uart_stm32_config, ptr %54, i32 0, i32 0, !dbg !3547
  %56 = load ptr, ptr %55, align 4, !dbg !3547
  call void @LL_USART_EnableHalfDuplex(ptr noundef %56), !dbg !3548
  br label %57, !dbg !3549

57:                                               ; preds = %53, %40
  %58 = load ptr, ptr %4, align 4, !dbg !3550
  %59 = getelementptr inbounds %struct.uart_stm32_config, ptr %58, i32 0, i32 5, !dbg !3552
  %60 = load i8, ptr %59, align 1, !dbg !3552
  %61 = trunc i8 %60 to i1, !dbg !3552
  br i1 %61, label %62, label %66, !dbg !3553

62:                                               ; preds = %57
  %63 = load ptr, ptr %4, align 4, !dbg !3554
  %64 = getelementptr inbounds %struct.uart_stm32_config, ptr %63, i32 0, i32 0, !dbg !3556
  %65 = load ptr, ptr %64, align 4, !dbg !3556
  call void @LL_USART_SetTXRXSwap(ptr noundef %65, i32 noundef 32768), !dbg !3557
  br label %66, !dbg !3558

66:                                               ; preds = %62, %57
  %67 = load ptr, ptr %4, align 4, !dbg !3559
  %68 = getelementptr inbounds %struct.uart_stm32_config, ptr %67, i32 0, i32 6, !dbg !3561
  %69 = load i8, ptr %68, align 2, !dbg !3561
  %70 = trunc i8 %69 to i1, !dbg !3561
  br i1 %70, label %71, label %75, !dbg !3562

71:                                               ; preds = %66
  %72 = load ptr, ptr %4, align 4, !dbg !3563
  %73 = getelementptr inbounds %struct.uart_stm32_config, ptr %72, i32 0, i32 0, !dbg !3565
  %74 = load ptr, ptr %73, align 4, !dbg !3565
  call void @LL_USART_SetRXPinLevel(ptr noundef %74, i32 noundef 65536), !dbg !3566
  br label %75, !dbg !3567

75:                                               ; preds = %71, %66
  %76 = load ptr, ptr %4, align 4, !dbg !3568
  %77 = getelementptr inbounds %struct.uart_stm32_config, ptr %76, i32 0, i32 7, !dbg !3570
  %78 = load i8, ptr %77, align 1, !dbg !3570
  %79 = trunc i8 %78 to i1, !dbg !3570
  br i1 %79, label %80, label %84, !dbg !3571

80:                                               ; preds = %75
  %81 = load ptr, ptr %4, align 4, !dbg !3572
  %82 = getelementptr inbounds %struct.uart_stm32_config, ptr %81, i32 0, i32 0, !dbg !3574
  %83 = load ptr, ptr %82, align 4, !dbg !3574
  call void @LL_USART_SetTXPinLevel(ptr noundef %83, i32 noundef 131072), !dbg !3575
  br label %84, !dbg !3576

84:                                               ; preds = %80, %75
  %85 = load ptr, ptr %4, align 4, !dbg !3577
  %86 = getelementptr inbounds %struct.uart_stm32_config, ptr %85, i32 0, i32 8, !dbg !3579
  %87 = load i8, ptr %86, align 4, !dbg !3579
  %88 = trunc i8 %87 to i1, !dbg !3579
  br i1 %88, label %89, label %167, !dbg !3580

89:                                               ; preds = %84
  %90 = load ptr, ptr %4, align 4, !dbg !3581
  %91 = getelementptr inbounds %struct.uart_stm32_config, ptr %90, i32 0, i32 0, !dbg !3584
  %92 = load ptr, ptr %91, align 4, !dbg !3584
  %93 = icmp eq ptr %92, inttoptr (i32 1073821696 to ptr), !dbg !3585
  br i1 %93, label %142, label %94, !dbg !3586

94:                                               ; preds = %89
  %95 = load ptr, ptr %4, align 4, !dbg !3587
  %96 = getelementptr inbounds %struct.uart_stm32_config, ptr %95, i32 0, i32 0, !dbg !3588
  %97 = load ptr, ptr %96, align 4, !dbg !3588
  %98 = icmp eq ptr %97, inttoptr (i32 1073759232 to ptr), !dbg !3589
  br i1 %98, label %142, label %99, !dbg !3590

99:                                               ; preds = %94
  %100 = load ptr, ptr %4, align 4, !dbg !3591
  %101 = getelementptr inbounds %struct.uart_stm32_config, ptr %100, i32 0, i32 0, !dbg !3592
  %102 = load ptr, ptr %101, align 4, !dbg !3592
  %103 = icmp eq ptr %102, inttoptr (i32 1073760256 to ptr), !dbg !3593
  br i1 %103, label %142, label %104, !dbg !3594

104:                                              ; preds = %99
  %105 = load ptr, ptr %4, align 4, !dbg !3595
  %106 = getelementptr inbounds %struct.uart_stm32_config, ptr %105, i32 0, i32 0, !dbg !3596
  %107 = load ptr, ptr %106, align 4, !dbg !3596
  %108 = icmp eq ptr %107, inttoptr (i32 1073761280 to ptr), !dbg !3597
  br i1 %108, label %142, label %109, !dbg !3598

109:                                              ; preds = %104
  %110 = load ptr, ptr %4, align 4, !dbg !3599
  %111 = getelementptr inbounds %struct.uart_stm32_config, ptr %110, i32 0, i32 0, !dbg !3600
  %112 = load ptr, ptr %111, align 4, !dbg !3600
  %113 = icmp eq ptr %112, inttoptr (i32 1073762304 to ptr), !dbg !3601
  br i1 %113, label %142, label %114, !dbg !3602

114:                                              ; preds = %109
  %115 = load ptr, ptr %4, align 4, !dbg !3603
  %116 = getelementptr inbounds %struct.uart_stm32_config, ptr %115, i32 0, i32 0, !dbg !3604
  %117 = load ptr, ptr %116, align 4, !dbg !3604
  %118 = icmp eq ptr %117, inttoptr (i32 1073812480 to ptr), !dbg !3605
  br i1 %118, label %142, label %119, !dbg !3606

119:                                              ; preds = %114
  %120 = load ptr, ptr %4, align 4, !dbg !3607
  %121 = getelementptr inbounds %struct.uart_stm32_config, ptr %120, i32 0, i32 0, !dbg !3608
  %122 = load ptr, ptr %121, align 4, !dbg !3608
  %123 = icmp eq ptr %122, inttoptr (i32 1073813504 to ptr), !dbg !3609
  br i1 %123, label %142, label %124, !dbg !3610

124:                                              ; preds = %119
  %125 = load ptr, ptr %4, align 4, !dbg !3611
  %126 = getelementptr inbounds %struct.uart_stm32_config, ptr %125, i32 0, i32 0, !dbg !3612
  %127 = load ptr, ptr %126, align 4, !dbg !3612
  %128 = icmp eq ptr %127, inttoptr (i32 1073814528 to ptr), !dbg !3613
  br i1 %128, label %142, label %129, !dbg !3614

129:                                              ; preds = %124
  br label %130, !dbg !3615

130:                                              ; preds = %129
  call void @llvm.dbg.declare(metadata ptr %10, metadata !3617, metadata !DIExpression()), !dbg !3619
  %131 = call zeroext i1 @k_is_user_context(), !dbg !3620
  %132 = zext i1 %131 to i8, !dbg !3619
  store i8 %132, ptr %10, align 1, !dbg !3619
  call void @llvm.dbg.declare(metadata ptr %11, metadata !3621, metadata !DIExpression()), !dbg !3622
  call void @llvm.dbg.declare(metadata ptr %12, metadata !3623, metadata !DIExpression()), !dbg !3624
  %133 = load ptr, ptr @__log_current_const_data, align 4, !dbg !3625
  store ptr %133, ptr %12, align 4, !dbg !3624
  br label %134, !dbg !3626

134:                                              ; preds = %130
  %135 = load ptr, ptr %12, align 4, !dbg !3627
  %136 = load ptr, ptr %3, align 4, !dbg !3629
  %137 = getelementptr inbounds %struct.device, ptr %136, i32 0, i32 0, !dbg !3630
  %138 = load ptr, ptr %137, align 4, !dbg !3630
  call void (i8, ptr, i8, ptr, i32, i32, ptr, ...) @z_log_msg_runtime_create(i8 noundef zeroext 0, ptr noundef %135, i8 noundef zeroext 1, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef @.str.6, ptr noundef %138), !dbg !3631
  store i32 0, ptr %11, align 4, !dbg !3632
  br label %139, !dbg !3633

139:                                              ; preds = %134
  %140 = load i32, ptr %11, align 4, !dbg !3634
  br label %141, !dbg !3635

141:                                              ; preds = %139
  store i32 -5, ptr %2, align 4, !dbg !3636
  br label %189, !dbg !3636

142:                                              ; preds = %124, %119, %114, %109, %104, %99, %94, %89
  %143 = load ptr, ptr %3, align 4, !dbg !3637
  call void @uart_stm32_set_driver_enable(ptr noundef %143, i1 noundef zeroext true), !dbg !3638
  %144 = load ptr, ptr %4, align 4, !dbg !3639
  %145 = getelementptr inbounds %struct.uart_stm32_config, ptr %144, i32 0, i32 0, !dbg !3640
  %146 = load ptr, ptr %145, align 4, !dbg !3640
  %147 = load ptr, ptr %4, align 4, !dbg !3641
  %148 = getelementptr inbounds %struct.uart_stm32_config, ptr %147, i32 0, i32 9, !dbg !3642
  %149 = load i8, ptr %148, align 1, !dbg !3642
  %150 = zext i8 %149 to i32, !dbg !3641
  call void @LL_USART_SetDEAssertionTime(ptr noundef %146, i32 noundef %150), !dbg !3643
  %151 = load ptr, ptr %4, align 4, !dbg !3644
  %152 = getelementptr inbounds %struct.uart_stm32_config, ptr %151, i32 0, i32 0, !dbg !3645
  %153 = load ptr, ptr %152, align 4, !dbg !3645
  %154 = load ptr, ptr %4, align 4, !dbg !3646
  %155 = getelementptr inbounds %struct.uart_stm32_config, ptr %154, i32 0, i32 10, !dbg !3647
  %156 = load i8, ptr %155, align 2, !dbg !3647
  %157 = zext i8 %156 to i32, !dbg !3646
  call void @LL_USART_SetDEDeassertionTime(ptr noundef %153, i32 noundef %157), !dbg !3648
  %158 = load ptr, ptr %4, align 4, !dbg !3649
  %159 = getelementptr inbounds %struct.uart_stm32_config, ptr %158, i32 0, i32 11, !dbg !3651
  %160 = load i8, ptr %159, align 1, !dbg !3651
  %161 = trunc i8 %160 to i1, !dbg !3651
  br i1 %161, label %162, label %166, !dbg !3652

162:                                              ; preds = %142
  %163 = load ptr, ptr %4, align 4, !dbg !3653
  %164 = getelementptr inbounds %struct.uart_stm32_config, ptr %163, i32 0, i32 0, !dbg !3655
  %165 = load ptr, ptr %164, align 4, !dbg !3655
  call void @LL_USART_SetDESignalPolarity(ptr noundef %165, i32 noundef 32768), !dbg !3656
  br label %166, !dbg !3657

166:                                              ; preds = %162, %142
  br label %167, !dbg !3658

167:                                              ; preds = %166, %84
  %168 = load ptr, ptr %4, align 4, !dbg !3659
  %169 = getelementptr inbounds %struct.uart_stm32_config, ptr %168, i32 0, i32 0, !dbg !3660
  %170 = load ptr, ptr %169, align 4, !dbg !3660
  call void @LL_USART_Enable(ptr noundef %170), !dbg !3661
  br label %171, !dbg !3662

171:                                              ; preds = %178, %167
  %172 = load ptr, ptr %4, align 4, !dbg !3663
  %173 = getelementptr inbounds %struct.uart_stm32_config, ptr %172, i32 0, i32 0, !dbg !3664
  %174 = load ptr, ptr %173, align 4, !dbg !3664
  %175 = call i32 @LL_USART_IsActiveFlag_TEACK(ptr noundef %174), !dbg !3665
  %176 = icmp ne i32 %175, 0, !dbg !3666
  %177 = xor i1 %176, true, !dbg !3666
  br i1 %177, label %178, label %179, !dbg !3662

178:                                              ; preds = %171
  br label %171, !dbg !3662, !llvm.loop !3667

179:                                              ; preds = %171
  br label %180, !dbg !3669

180:                                              ; preds = %187, %179
  %181 = load ptr, ptr %4, align 4, !dbg !3670
  %182 = getelementptr inbounds %struct.uart_stm32_config, ptr %181, i32 0, i32 0, !dbg !3671
  %183 = load ptr, ptr %182, align 4, !dbg !3671
  %184 = call i32 @LL_USART_IsActiveFlag_REACK(ptr noundef %183), !dbg !3672
  %185 = icmp ne i32 %184, 0, !dbg !3673
  %186 = xor i1 %185, true, !dbg !3673
  br i1 %186, label %187, label %188, !dbg !3669

187:                                              ; preds = %180
  br label %180, !dbg !3669, !llvm.loop !3674

188:                                              ; preds = %180
  store i32 0, ptr %2, align 4, !dbg !3676
  br label %189, !dbg !3676

189:                                              ; preds = %188, %141, %39
  %190 = load i32, ptr %2, align 4, !dbg !3677
  ret i32 %190, !dbg !3677
}

; Function Attrs: noinline nounwind optnone
define internal void @__uart_stm32_get_clock(ptr noundef %0) #0 !dbg !3678 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3679, metadata !DIExpression()), !dbg !3680
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3681, metadata !DIExpression()), !dbg !3682
  %5 = load ptr, ptr %2, align 4, !dbg !3683
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 4, !dbg !3684
  %7 = load ptr, ptr %6, align 4, !dbg !3684
  store ptr %7, ptr %3, align 4, !dbg !3682
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3685, metadata !DIExpression()), !dbg !3687
  store ptr @__device_dts_ord_9, ptr %4, align 4, !dbg !3687
  %8 = load ptr, ptr %3, align 4, !dbg !3688
  %9 = getelementptr inbounds %struct.uart_stm32_data, ptr %8, i32 0, i32 0, !dbg !3689
  store ptr @__device_dts_ord_9, ptr %9, align 4, !dbg !3690
  ret void, !dbg !3691
}

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @device_is_ready(ptr noundef %0) #0 !dbg !3692 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3694, metadata !DIExpression()), !dbg !3695
  br label %3, !dbg !3696

3:                                                ; preds = %1
  call void asm sideeffect "", "~{memory}"() #5, !dbg !3697, !srcloc !3699
  br label %4, !dbg !3700

4:                                                ; preds = %3
  %5 = load ptr, ptr %2, align 4, !dbg !3701
  %6 = call zeroext i1 @z_impl_device_is_ready(ptr noundef %5), !dbg !3702
  ret i1 %6, !dbg !3703
}

; Function Attrs: noinline nounwind optnone
define internal i32 @clock_control_on(ptr noundef %0, ptr noundef %1) #0 !dbg !3704 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3705, metadata !DIExpression()), !dbg !3706
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3707, metadata !DIExpression()), !dbg !3708
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3709, metadata !DIExpression()), !dbg !3710
  %6 = load ptr, ptr %3, align 4, !dbg !3711
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 2, !dbg !3712
  %8 = load ptr, ptr %7, align 4, !dbg !3712
  store ptr %8, ptr %5, align 4, !dbg !3710
  %9 = load ptr, ptr %5, align 4, !dbg !3713
  %10 = getelementptr inbounds %struct.clock_control_driver_api, ptr %9, i32 0, i32 0, !dbg !3714
  %11 = load ptr, ptr %10, align 4, !dbg !3714
  %12 = load ptr, ptr %3, align 4, !dbg !3715
  %13 = load ptr, ptr %4, align 4, !dbg !3716
  %14 = call i32 %11(ptr noundef %12, ptr noundef %13), !dbg !3713
  ret i32 %14, !dbg !3717
}

declare i32 @pinctrl_lookup_state(ptr noundef, i8 noundef zeroext, ptr noundef) #2

; Function Attrs: noinline nounwind optnone
define internal i32 @pinctrl_apply_state_direct(ptr noundef %0, ptr noundef %1) #0 !dbg !3718 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3721, metadata !DIExpression()), !dbg !3722
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3723, metadata !DIExpression()), !dbg !3724
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3725, metadata !DIExpression()), !dbg !3727
  %6 = load ptr, ptr %3, align 4, !dbg !3728
  store i32 0, ptr %5, align 4, !dbg !3729
  %7 = load ptr, ptr %4, align 4, !dbg !3730
  %8 = getelementptr inbounds %struct.pinctrl_state, ptr %7, i32 0, i32 0, !dbg !3731
  %9 = load ptr, ptr %8, align 4, !dbg !3731
  %10 = load ptr, ptr %4, align 4, !dbg !3732
  %11 = getelementptr inbounds %struct.pinctrl_state, ptr %10, i32 0, i32 1, !dbg !3733
  %12 = load i8, ptr %11, align 4, !dbg !3733
  %13 = load i32, ptr %5, align 4, !dbg !3734
  %14 = call i32 @pinctrl_configure_pins(ptr noundef %9, i8 noundef zeroext %12, i32 noundef %13), !dbg !3735
  ret i32 %14, !dbg !3736
}

declare i32 @pinctrl_configure_pins(ptr noundef, i8 noundef zeroext, i32 noundef) #2

; Function Attrs: noinline nounwind optnone
define internal i32 @reset_line_toggle_dt(ptr noundef %0) #0 !dbg !3737 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3741, metadata !DIExpression()), !dbg !3742
  %3 = load ptr, ptr %2, align 4, !dbg !3743
  %4 = getelementptr inbounds %struct.reset_dt_spec, ptr %3, i32 0, i32 0, !dbg !3744
  %5 = load ptr, ptr %4, align 4, !dbg !3744
  %6 = load ptr, ptr %2, align 4, !dbg !3745
  %7 = getelementptr inbounds %struct.reset_dt_spec, ptr %6, i32 0, i32 1, !dbg !3746
  %8 = load i32, ptr %7, align 4, !dbg !3746
  %9 = call i32 @reset_line_toggle(ptr noundef %5, i32 noundef %8), !dbg !3747
  ret i32 %9, !dbg !3748
}

; Function Attrs: noinline nounwind optnone
define internal void @LL_USART_SetTransferDirection(ptr noundef %0, i32 noundef %1) #0 !dbg !3749 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3750, metadata !DIExpression()), !dbg !3751
  store i32 %1, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3752, metadata !DIExpression()), !dbg !3753
  br label %9, !dbg !3754

9:                                                ; preds = %2
  call void @llvm.dbg.declare(metadata ptr %8, metadata !3755, metadata !DIExpression()), !dbg !3757
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3135, metadata !DIExpression()), !dbg !3758
  %10 = call i32 asm sideeffect "MRS $0, primask", "=r"() #5, !dbg !3760, !srcloc !3143
  store i32 %10, ptr %5, align 4, !dbg !3760
  %11 = load i32, ptr %5, align 4, !dbg !3761
  store i32 %11, ptr %8, align 4, !dbg !3762
  store i32 1, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3146, metadata !DIExpression()), !dbg !3763
  %12 = load i32, ptr %3, align 4, !dbg !3765
  call void asm sideeffect "MSR primask, $0", "r,~{memory}"(i32 %12) #5, !dbg !3766, !srcloc !3154
  %13 = load ptr, ptr %6, align 4, !dbg !3767
  %14 = getelementptr inbounds %struct.USART_TypeDef, ptr %13, i32 0, i32 0, !dbg !3768
  %15 = load volatile i32, ptr %14, align 4, !dbg !3768
  %16 = and i32 %15, -13, !dbg !3769
  %17 = load i32, ptr %7, align 4, !dbg !3770
  %18 = or i32 %16, %17, !dbg !3771
  %19 = load ptr, ptr %6, align 4, !dbg !3772
  %20 = getelementptr inbounds %struct.USART_TypeDef, ptr %19, i32 0, i32 0, !dbg !3773
  store volatile i32 %18, ptr %20, align 4, !dbg !3774
  %21 = load i32, ptr %8, align 4, !dbg !3775
  store i32 %21, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3146, metadata !DIExpression()), !dbg !3776
  %22 = load i32, ptr %4, align 4, !dbg !3778
  call void asm sideeffect "MSR primask, $0", "r,~{memory}"(i32 %22) #5, !dbg !3779, !srcloc !3154
  br label %23, !dbg !3780

23:                                               ; preds = %9
  ret void, !dbg !3781
}

; Function Attrs: noinline nounwind optnone
define internal void @LL_USART_EnableHalfDuplex(ptr noundef %0) #0 !dbg !3782 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3783, metadata !DIExpression()), !dbg !3784
  %3 = load ptr, ptr %2, align 4, !dbg !3785
  %4 = getelementptr inbounds %struct.USART_TypeDef, ptr %3, i32 0, i32 2, !dbg !3786
  %5 = load volatile i32, ptr %4, align 4, !dbg !3787
  %6 = or i32 %5, 8, !dbg !3787
  store volatile i32 %6, ptr %4, align 4, !dbg !3787
  ret void, !dbg !3788
}

; Function Attrs: noinline nounwind optnone
define internal void @LL_USART_SetTXRXSwap(ptr noundef %0, i32 noundef %1) #0 !dbg !3789 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3790, metadata !DIExpression()), !dbg !3791
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3792, metadata !DIExpression()), !dbg !3793
  %5 = load ptr, ptr %3, align 4, !dbg !3794
  %6 = getelementptr inbounds %struct.USART_TypeDef, ptr %5, i32 0, i32 1, !dbg !3795
  %7 = load volatile i32, ptr %6, align 4, !dbg !3795
  %8 = and i32 %7, -32769, !dbg !3796
  %9 = load i32, ptr %4, align 4, !dbg !3797
  %10 = or i32 %8, %9, !dbg !3798
  %11 = load ptr, ptr %3, align 4, !dbg !3799
  %12 = getelementptr inbounds %struct.USART_TypeDef, ptr %11, i32 0, i32 1, !dbg !3800
  store volatile i32 %10, ptr %12, align 4, !dbg !3801
  ret void, !dbg !3802
}

; Function Attrs: noinline nounwind optnone
define internal void @LL_USART_SetRXPinLevel(ptr noundef %0, i32 noundef %1) #0 !dbg !3803 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3804, metadata !DIExpression()), !dbg !3805
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3806, metadata !DIExpression()), !dbg !3807
  %5 = load ptr, ptr %3, align 4, !dbg !3808
  %6 = getelementptr inbounds %struct.USART_TypeDef, ptr %5, i32 0, i32 1, !dbg !3809
  %7 = load volatile i32, ptr %6, align 4, !dbg !3809
  %8 = and i32 %7, -65537, !dbg !3810
  %9 = load i32, ptr %4, align 4, !dbg !3811
  %10 = or i32 %8, %9, !dbg !3812
  %11 = load ptr, ptr %3, align 4, !dbg !3813
  %12 = getelementptr inbounds %struct.USART_TypeDef, ptr %11, i32 0, i32 1, !dbg !3814
  store volatile i32 %10, ptr %12, align 4, !dbg !3815
  ret void, !dbg !3816
}

; Function Attrs: noinline nounwind optnone
define internal void @LL_USART_SetTXPinLevel(ptr noundef %0, i32 noundef %1) #0 !dbg !3817 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3818, metadata !DIExpression()), !dbg !3819
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3820, metadata !DIExpression()), !dbg !3821
  %5 = load ptr, ptr %3, align 4, !dbg !3822
  %6 = getelementptr inbounds %struct.USART_TypeDef, ptr %5, i32 0, i32 1, !dbg !3823
  %7 = load volatile i32, ptr %6, align 4, !dbg !3823
  %8 = and i32 %7, -131073, !dbg !3824
  %9 = load i32, ptr %4, align 4, !dbg !3825
  %10 = or i32 %8, %9, !dbg !3826
  %11 = load ptr, ptr %3, align 4, !dbg !3827
  %12 = getelementptr inbounds %struct.USART_TypeDef, ptr %11, i32 0, i32 1, !dbg !3828
  store volatile i32 %10, ptr %12, align 4, !dbg !3829
  ret void, !dbg !3830
}

; Function Attrs: noinline nounwind optnone
define internal void @LL_USART_SetDEAssertionTime(ptr noundef %0, i32 noundef %1) #0 !dbg !3831 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3832, metadata !DIExpression()), !dbg !3833
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3834, metadata !DIExpression()), !dbg !3835
  %5 = load ptr, ptr %3, align 4, !dbg !3836
  %6 = getelementptr inbounds %struct.USART_TypeDef, ptr %5, i32 0, i32 0, !dbg !3837
  %7 = load volatile i32, ptr %6, align 4, !dbg !3837
  %8 = and i32 %7, -65011713, !dbg !3838
  %9 = load i32, ptr %4, align 4, !dbg !3839
  %10 = shl i32 %9, 21, !dbg !3840
  %11 = or i32 %8, %10, !dbg !3841
  %12 = load ptr, ptr %3, align 4, !dbg !3842
  %13 = getelementptr inbounds %struct.USART_TypeDef, ptr %12, i32 0, i32 0, !dbg !3843
  store volatile i32 %11, ptr %13, align 4, !dbg !3844
  ret void, !dbg !3845
}

; Function Attrs: noinline nounwind optnone
define internal void @LL_USART_SetDEDeassertionTime(ptr noundef %0, i32 noundef %1) #0 !dbg !3846 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3847, metadata !DIExpression()), !dbg !3848
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3849, metadata !DIExpression()), !dbg !3850
  %5 = load ptr, ptr %3, align 4, !dbg !3851
  %6 = getelementptr inbounds %struct.USART_TypeDef, ptr %5, i32 0, i32 0, !dbg !3852
  %7 = load volatile i32, ptr %6, align 4, !dbg !3852
  %8 = and i32 %7, -2031617, !dbg !3853
  %9 = load i32, ptr %4, align 4, !dbg !3854
  %10 = shl i32 %9, 16, !dbg !3855
  %11 = or i32 %8, %10, !dbg !3856
  %12 = load ptr, ptr %3, align 4, !dbg !3857
  %13 = getelementptr inbounds %struct.USART_TypeDef, ptr %12, i32 0, i32 0, !dbg !3858
  store volatile i32 %11, ptr %13, align 4, !dbg !3859
  ret void, !dbg !3860
}

; Function Attrs: noinline nounwind optnone
define internal void @LL_USART_SetDESignalPolarity(ptr noundef %0, i32 noundef %1) #0 !dbg !3861 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3862, metadata !DIExpression()), !dbg !3863
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3864, metadata !DIExpression()), !dbg !3865
  %5 = load ptr, ptr %3, align 4, !dbg !3866
  %6 = getelementptr inbounds %struct.USART_TypeDef, ptr %5, i32 0, i32 2, !dbg !3867
  %7 = load volatile i32, ptr %6, align 4, !dbg !3867
  %8 = and i32 %7, -32769, !dbg !3868
  %9 = load i32, ptr %4, align 4, !dbg !3869
  %10 = or i32 %8, %9, !dbg !3870
  %11 = load ptr, ptr %3, align 4, !dbg !3871
  %12 = getelementptr inbounds %struct.USART_TypeDef, ptr %11, i32 0, i32 2, !dbg !3872
  store volatile i32 %10, ptr %12, align 4, !dbg !3873
  ret void, !dbg !3874
}

; Function Attrs: noinline nounwind optnone
define internal i32 @LL_USART_IsActiveFlag_TEACK(ptr noundef %0) #0 !dbg !3875 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3876, metadata !DIExpression()), !dbg !3877
  %3 = load ptr, ptr %2, align 4, !dbg !3878
  %4 = getelementptr inbounds %struct.USART_TypeDef, ptr %3, i32 0, i32 7, !dbg !3879
  %5 = load volatile i32, ptr %4, align 4, !dbg !3879
  %6 = and i32 %5, 2097152, !dbg !3880
  %7 = icmp eq i32 %6, 2097152, !dbg !3881
  %8 = zext i1 %7 to i64, !dbg !3882
  %9 = select i1 %7, i32 1, i32 0, !dbg !3882
  ret i32 %9, !dbg !3883
}

; Function Attrs: noinline nounwind optnone
define internal i32 @LL_USART_IsActiveFlag_REACK(ptr noundef %0) #0 !dbg !3884 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3885, metadata !DIExpression()), !dbg !3886
  %3 = load ptr, ptr %2, align 4, !dbg !3887
  %4 = getelementptr inbounds %struct.USART_TypeDef, ptr %3, i32 0, i32 7, !dbg !3888
  %5 = load volatile i32, ptr %4, align 4, !dbg !3888
  %6 = and i32 %5, 4194304, !dbg !3889
  %7 = icmp eq i32 %6, 4194304, !dbg !3890
  %8 = zext i1 %7 to i64, !dbg !3891
  %9 = select i1 %7, i32 1, i32 0, !dbg !3891
  ret i32 %9, !dbg !3892
}

; Function Attrs: noinline nounwind optnone
define internal i32 @reset_line_toggle(ptr noundef %0, i32 noundef %1) #0 !dbg !3893 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3895, metadata !DIExpression()), !dbg !3896
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3897, metadata !DIExpression()), !dbg !3898
  br label %5, !dbg !3899

5:                                                ; preds = %2
  call void asm sideeffect "", "~{memory}"() #5, !dbg !3900, !srcloc !3902
  br label %6, !dbg !3903

6:                                                ; preds = %5
  %7 = load ptr, ptr %3, align 4, !dbg !3904
  %8 = load i32, ptr %4, align 4, !dbg !3905
  %9 = call i32 @z_impl_reset_line_toggle(ptr noundef %7, i32 noundef %8), !dbg !3906
  ret i32 %9, !dbg !3907
}

attributes #0 = { noinline nounwind optnone "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!477, !478, !479, !480, !481, !482, !483, !484}
!llvm.ident = !{!485}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 44, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "drivers/serial/uart_stm32.c", directory: "/home/sri/zephyrproject/zephyr")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 11)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "log_const_uart_stm32", scope: !9, file: !2, line: 44, type: !441, isLocal: false, isDefinition: true, align: 32)
!9 = distinct !DICompileUnit(language: DW_LANG_C99, file: !10, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, retainedTypes: !143, globals: !322, splitDebugInlining: false, nameTableKind: None)
!10 = !DIFile(filename: "uart_stm32.c", directory: "/home/sri/zephyrproject/zephyr/build")
!11 = !{!12, !95, !104, !111, !118, !124, !130, !136}
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "k_objects", file: !13, line: 29, baseType: !14, size: 8, elements: !15)
!13 = !DIFile(filename: "include/zephyr/sys/kobject.h", directory: "/home/sri/zephyrproject/zephyr")
!14 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!15 = !{!16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94}
!16 = !DIEnumerator(name: "K_OBJ_ANY", value: 0)
!17 = !DIEnumerator(name: "K_OBJ_MEM_SLAB", value: 1)
!18 = !DIEnumerator(name: "K_OBJ_MSGQ", value: 2)
!19 = !DIEnumerator(name: "K_OBJ_MUTEX", value: 3)
!20 = !DIEnumerator(name: "K_OBJ_PIPE", value: 4)
!21 = !DIEnumerator(name: "K_OBJ_QUEUE", value: 5)
!22 = !DIEnumerator(name: "K_OBJ_POLL_SIGNAL", value: 6)
!23 = !DIEnumerator(name: "K_OBJ_SEM", value: 7)
!24 = !DIEnumerator(name: "K_OBJ_STACK", value: 8)
!25 = !DIEnumerator(name: "K_OBJ_THREAD", value: 9)
!26 = !DIEnumerator(name: "K_OBJ_TIMER", value: 10)
!27 = !DIEnumerator(name: "K_OBJ_THREAD_STACK_ELEMENT", value: 11)
!28 = !DIEnumerator(name: "K_OBJ_NET_SOCKET", value: 12)
!29 = !DIEnumerator(name: "K_OBJ_NET_IF", value: 13)
!30 = !DIEnumerator(name: "K_OBJ_SYS_MUTEX", value: 14)
!31 = !DIEnumerator(name: "K_OBJ_FUTEX", value: 15)
!32 = !DIEnumerator(name: "K_OBJ_CONDVAR", value: 16)
!33 = !DIEnumerator(name: "K_OBJ_DRIVER_GPIO", value: 17)
!34 = !DIEnumerator(name: "K_OBJ_DRIVER_PWM", value: 18)
!35 = !DIEnumerator(name: "K_OBJ_DRIVER_RESET", value: 19)
!36 = !DIEnumerator(name: "K_OBJ_DRIVER_UART", value: 20)
!37 = !DIEnumerator(name: "K_OBJ_DRIVER_CRYPTO", value: 21)
!38 = !DIEnumerator(name: "K_OBJ_DRIVER_ADC", value: 22)
!39 = !DIEnumerator(name: "K_OBJ_DRIVER_AUXDISPLAY", value: 23)
!40 = !DIEnumerator(name: "K_OBJ_DRIVER_BBRAM", value: 24)
!41 = !DIEnumerator(name: "K_OBJ_DRIVER_CAN", value: 25)
!42 = !DIEnumerator(name: "K_OBJ_DRIVER_CHARGER", value: 26)
!43 = !DIEnumerator(name: "K_OBJ_DRIVER_COREDUMP", value: 27)
!44 = !DIEnumerator(name: "K_OBJ_DRIVER_COUNTER", value: 28)
!45 = !DIEnumerator(name: "K_OBJ_DRIVER_DAC", value: 29)
!46 = !DIEnumerator(name: "K_OBJ_DRIVER_DAI", value: 30)
!47 = !DIEnumerator(name: "K_OBJ_DRIVER_DMA", value: 31)
!48 = !DIEnumerator(name: "K_OBJ_DRIVER_EDAC", value: 32)
!49 = !DIEnumerator(name: "K_OBJ_DRIVER_EEPROM", value: 33)
!50 = !DIEnumerator(name: "K_OBJ_DRIVER_FUEL_GAUGE_EMUL", value: 34)
!51 = !DIEnumerator(name: "K_OBJ_DRIVER_EMUL_SENSOR_BACKEND_API", value: 35)
!52 = !DIEnumerator(name: "K_OBJ_DRIVER_ENTROPY", value: 36)
!53 = !DIEnumerator(name: "K_OBJ_DRIVER_ESPI", value: 37)
!54 = !DIEnumerator(name: "K_OBJ_DRIVER_ESPI_SAF", value: 38)
!55 = !DIEnumerator(name: "K_OBJ_DRIVER_FLASH", value: 39)
!56 = !DIEnumerator(name: "K_OBJ_DRIVER_FPGA", value: 40)
!57 = !DIEnumerator(name: "K_OBJ_DRIVER_FUEL_GAUGE", value: 41)
!58 = !DIEnumerator(name: "K_OBJ_DRIVER_HWSPINLOCK", value: 42)
!59 = !DIEnumerator(name: "K_OBJ_DRIVER_I2C", value: 43)
!60 = !DIEnumerator(name: "K_OBJ_DRIVER_I2S", value: 44)
!61 = !DIEnumerator(name: "K_OBJ_DRIVER_I3C", value: 45)
!62 = !DIEnumerator(name: "K_OBJ_DRIVER_IPM", value: 46)
!63 = !DIEnumerator(name: "K_OBJ_DRIVER_KSCAN", value: 47)
!64 = !DIEnumerator(name: "K_OBJ_DRIVER_LED", value: 48)
!65 = !DIEnumerator(name: "K_OBJ_DRIVER_MBOX", value: 49)
!66 = !DIEnumerator(name: "K_OBJ_DRIVER_MDIO", value: 50)
!67 = !DIEnumerator(name: "K_OBJ_DRIVER_MIPI_DSI", value: 51)
!68 = !DIEnumerator(name: "K_OBJ_DRIVER_PECI", value: 52)
!69 = !DIEnumerator(name: "K_OBJ_DRIVER_PS2", value: 53)
!70 = !DIEnumerator(name: "K_OBJ_DRIVER_PTP_CLOCK", value: 54)
!71 = !DIEnumerator(name: "K_OBJ_DRIVER_REGULATOR_PARENT", value: 55)
!72 = !DIEnumerator(name: "K_OBJ_DRIVER_REGULATOR", value: 56)
!73 = !DIEnumerator(name: "K_OBJ_DRIVER_RETAINED_MEM", value: 57)
!74 = !DIEnumerator(name: "K_OBJ_DRIVER_RTC", value: 58)
!75 = !DIEnumerator(name: "K_OBJ_DRIVER_SDHC", value: 59)
!76 = !DIEnumerator(name: "K_OBJ_DRIVER_SENSOR", value: 60)
!77 = !DIEnumerator(name: "K_OBJ_DRIVER_SMBUS", value: 61)
!78 = !DIEnumerator(name: "K_OBJ_DRIVER_SPI", value: 62)
!79 = !DIEnumerator(name: "K_OBJ_DRIVER_SYSCON", value: 63)
!80 = !DIEnumerator(name: "K_OBJ_DRIVER_W1", value: 64)
!81 = !DIEnumerator(name: "K_OBJ_DRIVER_WDT", value: 65)
!82 = !DIEnumerator(name: "K_OBJ_DRIVER_CAN_TRANSCEIVER", value: 66)
!83 = !DIEnumerator(name: "K_OBJ_DRIVER_UART_MUX", value: 67)
!84 = !DIEnumerator(name: "K_OBJ_DRIVER_ITS", value: 68)
!85 = !DIEnumerator(name: "K_OBJ_DRIVER_TGPIO", value: 69)
!86 = !DIEnumerator(name: "K_OBJ_DRIVER_PCIE_CTRL", value: 70)
!87 = !DIEnumerator(name: "K_OBJ_DRIVER_SVC", value: 71)
!88 = !DIEnumerator(name: "K_OBJ_DRIVER_BC12_EMUL", value: 72)
!89 = !DIEnumerator(name: "K_OBJ_DRIVER_BC12", value: 73)
!90 = !DIEnumerator(name: "K_OBJ_DRIVER_TCPC", value: 74)
!91 = !DIEnumerator(name: "K_OBJ_DRIVER_IVSHMEM", value: 75)
!92 = !DIEnumerator(name: "K_OBJ_DRIVER_EC_HOST_CMD_BACKEND_API", value: 76)
!93 = !DIEnumerator(name: "K_OBJ_DRIVER_ETHPHY", value: 77)
!94 = !DIEnumerator(name: "K_OBJ_LAST", value: 78)
!95 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uart_rx_stop_reason", file: !96, line: 47, baseType: !14, size: 8, elements: !97)
!96 = !DIFile(filename: "include/zephyr/drivers/uart.h", directory: "/home/sri/zephyrproject/zephyr")
!97 = !{!98, !99, !100, !101, !102, !103}
!98 = !DIEnumerator(name: "UART_ERROR_OVERRUN", value: 1)
!99 = !DIEnumerator(name: "UART_ERROR_PARITY", value: 2)
!100 = !DIEnumerator(name: "UART_ERROR_FRAMING", value: 4)
!101 = !DIEnumerator(name: "UART_BREAK", value: 8)
!102 = !DIEnumerator(name: "UART_ERROR_COLLISION", value: 16)
!103 = !DIEnumerator(name: "UART_ERROR_NOISE", value: 32)
!104 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uart_config_parity", file: !96, line: 77, baseType: !14, size: 8, elements: !105)
!105 = !{!106, !107, !108, !109, !110}
!106 = !DIEnumerator(name: "UART_CFG_PARITY_NONE", value: 0)
!107 = !DIEnumerator(name: "UART_CFG_PARITY_ODD", value: 1)
!108 = !DIEnumerator(name: "UART_CFG_PARITY_EVEN", value: 2)
!109 = !DIEnumerator(name: "UART_CFG_PARITY_MARK", value: 3)
!110 = !DIEnumerator(name: "UART_CFG_PARITY_SPACE", value: 4)
!111 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uart_config_data_bits", file: !96, line: 94, baseType: !14, size: 8, elements: !112)
!112 = !{!113, !114, !115, !116, !117}
!113 = !DIEnumerator(name: "UART_CFG_DATA_BITS_5", value: 0)
!114 = !DIEnumerator(name: "UART_CFG_DATA_BITS_6", value: 1)
!115 = !DIEnumerator(name: "UART_CFG_DATA_BITS_7", value: 2)
!116 = !DIEnumerator(name: "UART_CFG_DATA_BITS_8", value: 3)
!117 = !DIEnumerator(name: "UART_CFG_DATA_BITS_9", value: 4)
!118 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uart_config_flow_control", file: !96, line: 109, baseType: !14, size: 8, elements: !119)
!119 = !{!120, !121, !122, !123}
!120 = !DIEnumerator(name: "UART_CFG_FLOW_CTRL_NONE", value: 0)
!121 = !DIEnumerator(name: "UART_CFG_FLOW_CTRL_RTS_CTS", value: 1)
!122 = !DIEnumerator(name: "UART_CFG_FLOW_CTRL_DTR_DSR", value: 2)
!123 = !DIEnumerator(name: "UART_CFG_FLOW_CTRL_RS485", value: 3)
!124 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uart_config_stop_bits", file: !96, line: 86, baseType: !14, size: 8, elements: !125)
!125 = !{!126, !127, !128, !129}
!126 = !DIEnumerator(name: "UART_CFG_STOP_BITS_0_5", value: 0)
!127 = !DIEnumerator(name: "UART_CFG_STOP_BITS_1", value: 1)
!128 = !DIEnumerator(name: "UART_CFG_STOP_BITS_1_5", value: 2)
!129 = !DIEnumerator(name: "UART_CFG_STOP_BITS_2", value: 3)
!130 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "z_log_msg_mode", file: !131, line: 128, baseType: !14, size: 8, elements: !132)
!131 = !DIFile(filename: "include/zephyr/logging/log_msg.h", directory: "/home/sri/zephyrproject/zephyr")
!132 = !{!133, !134, !135}
!133 = !DIEnumerator(name: "Z_LOG_MSG_MODE_RUNTIME", value: 0)
!134 = !DIEnumerator(name: "Z_LOG_MSG_MODE_FROM_STACK", value: 1)
!135 = !DIEnumerator(name: "Z_LOG_MSG_MODE_ZERO_COPY", value: 2)
!136 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "clock_control_status", file: !137, line: 44, baseType: !14, size: 8, elements: !138)
!137 = !DIFile(filename: "include/zephyr/drivers/clock_control.h", directory: "/home/sri/zephyrproject/zephyr")
!138 = !{!139, !140, !141, !142}
!139 = !DIEnumerator(name: "CLOCK_CONTROL_STATUS_STARTING", value: 0)
!140 = !DIEnumerator(name: "CLOCK_CONTROL_STATUS_OFF", value: 1)
!141 = !DIEnumerator(name: "CLOCK_CONTROL_STATUS_ON", value: 2)
!142 = !DIEnumerator(name: "CLOCK_CONTROL_STATUS_UNKNOWN", value: 3)
!143 = !{!144, !145, !146, !190, !14, !198, !173, !258, !180, !260, !280, !281, !178, !165, !229}
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!145 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 32)
!147 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !148)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reset_driver_api", file: !149, line: 140, size: 128, elements: !150)
!149 = !DIFile(filename: "include/zephyr/drivers/reset.h", directory: "/home/sri/zephyrproject/zephyr")
!150 = !{!151, !181, !186, !188}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !148, file: !149, line: 141, baseType: !152, size: 32)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "reset_api_status", file: !149, line: 114, baseType: !153)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 32)
!154 = !DISubroutineType(types: !155)
!155 = !{!145, !156, !178, !180}
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 32)
!157 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !158)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !159, line: 381, size: 160, elements: !160)
!159 = !DIFile(filename: "include/zephyr/device.h", directory: "/home/sri/zephyrproject/zephyr")
!160 = !{!161, !164, !167, !168, !177}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !158, file: !159, line: 383, baseType: !162, size: 32)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 32)
!163 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !158, file: !159, line: 385, baseType: !165, size: 32, offset: 32)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 32)
!166 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "api", scope: !158, file: !159, line: 387, baseType: !165, size: 32, offset: 64)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !158, file: !159, line: 389, baseType: !169, size: 32, offset: 96)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 32)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_state", file: !159, line: 354, size: 16, elements: !171)
!171 = !{!172, !175}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "init_res", scope: !170, file: !159, line: 362, baseType: !173, size: 8)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !174, line: 62, baseType: !14)
!174 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/stdint.h", directory: "")
!175 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !170, file: !159, line: 367, baseType: !176, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 8)
!176 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !158, file: !159, line: 391, baseType: !144, size: 32, offset: 128)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !174, line: 64, baseType: !179)
!179 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 32)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "line_assert", scope: !148, file: !149, line: 142, baseType: !182, size: 32, offset: 32)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "reset_api_line_assert", file: !149, line: 121, baseType: !183)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 32)
!184 = !DISubroutineType(types: !185)
!185 = !{!145, !156, !178}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "line_deassert", scope: !148, file: !149, line: 143, baseType: !187, size: 32, offset: 64)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "reset_api_line_deassert", file: !149, line: 128, baseType: !183)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "line_toggle", scope: !148, file: !149, line: 144, baseType: !189, size: 32, offset: 96)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "reset_api_line_toggle", file: !149, line: 135, baseType: !183)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 32)
!191 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !192)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uart_driver_api", file: !96, line: 334, size: 608, elements: !193)
!193 = !{!194, !199, !203, !207, !220, !225, !231, !236, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "poll_in", scope: !192, file: !96, line: 363, baseType: !195, size: 32)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 32)
!196 = !DISubroutineType(types: !197)
!197 = !{!145, !156, !198}
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 32)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "poll_out", scope: !192, file: !96, line: 364, baseType: !200, size: 32, offset: 32)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 32)
!201 = !DISubroutineType(types: !202)
!202 = !{null, !156, !14}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "err_check", scope: !192, file: !96, line: 372, baseType: !204, size: 32, offset: 64)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 32)
!205 = !DISubroutineType(types: !206)
!206 = !{!145, !156}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "configure", scope: !192, file: !96, line: 376, baseType: !208, size: 32, offset: 96)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 32)
!209 = !DISubroutineType(types: !210)
!210 = !{!145, !156, !211}
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 32)
!212 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !213)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uart_config", file: !96, line: 119, size: 64, elements: !214)
!214 = !{!215, !216, !217, !218, !219}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "baudrate", scope: !213, file: !96, line: 120, baseType: !178, size: 32)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "parity", scope: !213, file: !96, line: 121, baseType: !173, size: 8, offset: 32)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "stop_bits", scope: !213, file: !96, line: 122, baseType: !173, size: 8, offset: 40)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "data_bits", scope: !213, file: !96, line: 123, baseType: !173, size: 8, offset: 48)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "flow_ctrl", scope: !213, file: !96, line: 124, baseType: !173, size: 8, offset: 56)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "config_get", scope: !192, file: !96, line: 378, baseType: !221, size: 32, offset: 128)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 32)
!222 = !DISubroutineType(types: !223)
!223 = !{!145, !156, !224}
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 32)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "fifo_fill", scope: !192, file: !96, line: 384, baseType: !226, size: 32, offset: 160)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 32)
!227 = !DISubroutineType(types: !228)
!228 = !{!145, !156, !229, !145}
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 32)
!230 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !173)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "fifo_read", scope: !192, file: !96, line: 393, baseType: !232, size: 32, offset: 192)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 32)
!233 = !DISubroutineType(types: !234)
!234 = !{!145, !156, !180, !235}
!235 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !145)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "irq_tx_enable", scope: !192, file: !96, line: 402, baseType: !237, size: 32, offset: 224)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 32)
!238 = !DISubroutineType(types: !239)
!239 = !{null, !156}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "irq_tx_disable", scope: !192, file: !96, line: 405, baseType: !237, size: 32, offset: 256)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "irq_tx_ready", scope: !192, file: !96, line: 408, baseType: !204, size: 32, offset: 288)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "irq_rx_enable", scope: !192, file: !96, line: 411, baseType: !237, size: 32, offset: 320)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "irq_rx_disable", scope: !192, file: !96, line: 414, baseType: !237, size: 32, offset: 352)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "irq_tx_complete", scope: !192, file: !96, line: 417, baseType: !204, size: 32, offset: 384)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "irq_rx_ready", scope: !192, file: !96, line: 420, baseType: !204, size: 32, offset: 416)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "irq_err_enable", scope: !192, file: !96, line: 423, baseType: !237, size: 32, offset: 448)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "irq_err_disable", scope: !192, file: !96, line: 426, baseType: !237, size: 32, offset: 480)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "irq_is_pending", scope: !192, file: !96, line: 429, baseType: !204, size: 32, offset: 512)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "irq_update", scope: !192, file: !96, line: 432, baseType: !204, size: 32, offset: 544)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "irq_callback_set", scope: !192, file: !96, line: 435, baseType: !251, size: 32, offset: 576)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 32)
!252 = !DISubroutineType(types: !253)
!253 = !{null, !156, !254, !144}
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "uart_irq_callback_user_data_t", file: !96, line: 139, baseType: !255)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 32)
!256 = !DISubroutineType(types: !257)
!257 = !{null, !156, !144}
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !174, line: 63, baseType: !259)
!259 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 32)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "USART_TypeDef", file: !262, line: 580, baseType: !263)
!262 = !DIFile(filename: "modules/hal/stm32/stm32cube/stm32f0xx/soc/stm32f091xc.h", directory: "/home/sri/zephyrproject")
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !262, line: 565, size: 352, elements: !264)
!264 = !{!265, !267, !268, !269, !270, !271, !272, !273, !274, !275, !277, !278, !279}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "CR1", scope: !263, file: !262, line: 567, baseType: !266, size: 32)
!266 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !178)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "CR2", scope: !263, file: !262, line: 568, baseType: !266, size: 32, offset: 32)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "CR3", scope: !263, file: !262, line: 569, baseType: !266, size: 32, offset: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "BRR", scope: !263, file: !262, line: 570, baseType: !266, size: 32, offset: 96)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "GTPR", scope: !263, file: !262, line: 571, baseType: !266, size: 32, offset: 128)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "RTOR", scope: !263, file: !262, line: 572, baseType: !266, size: 32, offset: 160)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "RQR", scope: !263, file: !262, line: 573, baseType: !266, size: 32, offset: 192)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "ISR", scope: !263, file: !262, line: 574, baseType: !266, size: 32, offset: 224)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "ICR", scope: !263, file: !262, line: 575, baseType: !266, size: 32, offset: 256)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "RDR", scope: !263, file: !262, line: 576, baseType: !276, size: 16, offset: 288)
!276 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !258)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED1", scope: !263, file: !262, line: 577, baseType: !258, size: 16, offset: 304)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "TDR", scope: !263, file: !262, line: 578, baseType: !276, size: 16, offset: 320)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED2", scope: !263, file: !262, line: 579, baseType: !258, size: 16, offset: 336)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "clock_control_subsys_t", file: !137, line: 56, baseType: !144)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 32)
!282 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !283)
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clock_control_driver_api", file: !137, line: 100, size: 224, elements: !284)
!284 = !{!285, !290, !291, !300, !306, !311, !317}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "on", scope: !283, file: !137, line: 101, baseType: !286, size: 32)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "clock_control", file: !137, line: 76, baseType: !287)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 32)
!288 = !DISubroutineType(types: !289)
!289 = !{!145, !156, !280}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "off", scope: !283, file: !137, line: 102, baseType: !286, size: 32, offset: 32)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "async_on", scope: !283, file: !137, line: 103, baseType: !292, size: 32, offset: 64)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "clock_control_async_on_fn", file: !137, line: 83, baseType: !293)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 32)
!294 = !DISubroutineType(types: !295)
!295 = !{!145, !156, !280, !296, !144}
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "clock_control_cb_t", file: !137, line: 72, baseType: !297)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 32)
!298 = !DISubroutineType(types: !299)
!299 = !{null, !156, !280, !144}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "get_rate", scope: !283, file: !137, line: 104, baseType: !301, size: 32, offset: 96)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "clock_control_get", file: !137, line: 79, baseType: !302)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 32)
!303 = !DISubroutineType(types: !304)
!304 = !{!145, !156, !280, !305}
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 32)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "get_status", scope: !283, file: !137, line: 105, baseType: !307, size: 32, offset: 128)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "clock_control_get_status_fn", file: !137, line: 88, baseType: !308)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 32)
!309 = !DISubroutineType(types: !310)
!310 = !{!136, !156, !280}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "set_rate", scope: !283, file: !137, line: 106, baseType: !312, size: 32, offset: 160)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "clock_control_set", file: !137, line: 92, baseType: !313)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 32)
!314 = !DISubroutineType(types: !315)
!315 = !{!145, !156, !280, !316}
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "clock_control_subsys_rate_t", file: !137, line: 64, baseType: !144)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "configure", scope: !283, file: !137, line: 107, baseType: !318, size: 32, offset: 192)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "clock_control_configure_fn", file: !137, line: 96, baseType: !319)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 32)
!320 = !DISubroutineType(types: !321)
!321 = !{!145, !156, !280, !144}
!322 = !{!0, !7, !323, !328, !330, !345, !347, !404, !409, !411, !414, !419, !431, !433, !438, !447, !455, !457, !462, !467, !472}
!323 = !DIGlobalVariableExpression(var: !324, expr: !DIExpression())
!324 = distinct !DIGlobalVariable(scope: null, file: !2, line: 2337, type: !325, isLocal: true, isDefinition: true)
!325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !326)
!326 = !{!327}
!327 = !DISubrange(count: 16)
!328 = !DIGlobalVariableExpression(var: !329, expr: !DIExpression())
!329 = distinct !DIGlobalVariable(name: "__device_dts_ord_52", scope: !9, file: !2, line: 2337, type: !157, isLocal: false, isDefinition: true, align: 32)
!330 = !DIGlobalVariableExpression(var: !331, expr: !DIExpression())
!331 = distinct !DIGlobalVariable(name: "__init___device_dts_ord_52", scope: !9, file: !2, line: 2337, type: !332, isLocal: true, isDefinition: true, align: 32)
!332 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !333)
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "init_entry", file: !334, line: 92, size: 64, elements: !335)
!334 = !DIFile(filename: "include/zephyr/init.h", directory: "/home/sri/zephyrproject/zephyr")
!335 = !{!336, !344}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "init_fn", scope: !333, file: !334, line: 94, baseType: !337, size: 32)
!337 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "init_function", file: !334, line: 59, size: 32, elements: !338)
!338 = !{!339, !343}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "sys", scope: !337, file: !334, line: 66, baseType: !340, size: 32)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 32)
!341 = !DISubroutineType(types: !342)
!342 = !{!145}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !337, file: !334, line: 75, baseType: !204, size: 32)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !333, file: !334, line: 99, baseType: !156, size: 32, offset: 32)
!345 = !DIGlobalVariableExpression(var: !346, expr: !DIExpression())
!346 = distinct !DIGlobalVariable(name: "__devstate_dts_ord_52", scope: !9, file: !2, line: 2337, type: !170, isLocal: true, isDefinition: true, align: 8)
!347 = !DIGlobalVariableExpression(var: !348, expr: !DIExpression())
!348 = distinct !DIGlobalVariable(name: "uart_stm32_cfg_0", scope: !9, file: !2, line: 2337, type: !349, isLocal: true, isDefinition: true)
!349 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !350)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uart_stm32_config", file: !351, line: 27, size: 288, elements: !352)
!351 = !DIFile(filename: "drivers/serial/uart_stm32.h", directory: "/home/sri/zephyrproject/zephyr")
!352 = !{!353, !354, !360, !368, !371, !372, !373, !374, !375, !376, !377, !378, !379, !402}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "usart", scope: !350, file: !351, line: 29, baseType: !260, size: 32)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !350, file: !351, line: 31, baseType: !355, size: 64, offset: 32)
!355 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !356)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reset_dt_spec", file: !149, line: 32, size: 64, elements: !357)
!357 = !{!358, !359}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !356, file: !149, line: 34, baseType: !156, size: 32)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !356, file: !149, line: 36, baseType: !178, size: 32, offset: 32)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "pclken", scope: !350, file: !351, line: 33, baseType: !361, size: 32, offset: 96)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 32)
!362 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !363)
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stm32_pclken", file: !364, line: 396, size: 64, elements: !365)
!364 = !DIFile(filename: "include/zephyr/drivers/clock_control/stm32_clock_control.h", directory: "/home/sri/zephyrproject/zephyr")
!365 = !{!366, !367}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !363, file: !364, line: 397, baseType: !178, size: 32)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "enr", scope: !363, file: !364, line: 398, baseType: !178, size: 32, offset: 32)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "pclk_len", scope: !350, file: !351, line: 35, baseType: !369, size: 32, offset: 128)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !370, line: 46, baseType: !179)
!370 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/lib/clang/17/include/stddef.h", directory: "")
!371 = !DIDerivedType(tag: DW_TAG_member, name: "single_wire", scope: !350, file: !351, line: 37, baseType: !176, size: 8, offset: 160)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "tx_rx_swap", scope: !350, file: !351, line: 39, baseType: !176, size: 8, offset: 168)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "rx_invert", scope: !350, file: !351, line: 41, baseType: !176, size: 8, offset: 176)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "tx_invert", scope: !350, file: !351, line: 43, baseType: !176, size: 8, offset: 184)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "de_enable", scope: !350, file: !351, line: 45, baseType: !176, size: 8, offset: 192)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "de_assert_time", scope: !350, file: !351, line: 47, baseType: !173, size: 8, offset: 200)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "de_deassert_time", scope: !350, file: !351, line: 49, baseType: !173, size: 8, offset: 208)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "de_invert", scope: !350, file: !351, line: 51, baseType: !176, size: 8, offset: 216)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "pcfg", scope: !350, file: !351, line: 53, baseType: !380, size: 32, offset: 224)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 32)
!381 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !382)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl_dev_config", file: !383, line: 60, size: 64, elements: !384)
!383 = !DIFile(filename: "include/zephyr/drivers/pinctrl.h", directory: "/home/sri/zephyrproject/zephyr")
!384 = !{!385, !401}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !382, file: !383, line: 69, baseType: !386, size: 32)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 32)
!387 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !388)
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl_state", file: !383, line: 50, size: 64, elements: !389)
!389 = !{!390, !399, !400}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "pins", scope: !388, file: !383, line: 52, baseType: !391, size: 32)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 32)
!392 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !393)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "pinctrl_soc_pin_t", file: !394, line: 37, baseType: !395)
!394 = !DIFile(filename: "soc/arm/st_stm32/common/pinctrl_soc.h", directory: "/home/sri/zephyrproject/zephyr")
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl_soc_pin", file: !394, line: 32, size: 64, elements: !396)
!396 = !{!397, !398}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "pinmux", scope: !395, file: !394, line: 34, baseType: !178, size: 32)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "pincfg", scope: !395, file: !394, line: 36, baseType: !178, size: 32, offset: 32)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "pin_cnt", scope: !388, file: !383, line: 54, baseType: !173, size: 8, offset: 32)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !388, file: !383, line: 56, baseType: !173, size: 8, offset: 40)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "state_cnt", scope: !382, file: !383, line: 71, baseType: !173, size: 8, offset: 32)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "irq_config_func", scope: !350, file: !351, line: 56, baseType: !403, size: 32, offset: 256)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "uart_irq_config_func_t", file: !96, line: 147, baseType: !237)
!404 = !DIGlobalVariableExpression(var: !405, expr: !DIExpression())
!405 = distinct !DIGlobalVariable(name: "pclken_0", scope: !9, file: !2, line: 2337, type: !406, isLocal: true, isDefinition: true)
!406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !362, size: 64, elements: !407)
!407 = !{!408}
!408 = !DISubrange(count: 1)
!409 = !DIGlobalVariableExpression(var: !410, expr: !DIExpression())
!410 = distinct !DIGlobalVariable(name: "__pinctrl_dev_config__device_dts_ord_52", scope: !9, file: !2, line: 2337, type: !381, isLocal: true, isDefinition: true)
!411 = !DIGlobalVariableExpression(var: !412, expr: !DIExpression())
!412 = distinct !DIGlobalVariable(name: "__pinctrl_states__device_dts_ord_52", scope: !9, file: !2, line: 2337, type: !413, isLocal: true, isDefinition: true)
!413 = !DICompositeType(tag: DW_TAG_array_type, baseType: !387, size: 64, elements: !407)
!414 = !DIGlobalVariableExpression(var: !415, expr: !DIExpression())
!415 = distinct !DIGlobalVariable(name: "__pinctrl_state_pins_0__device_dts_ord_52", scope: !9, file: !2, line: 2337, type: !416, isLocal: true, isDefinition: true)
!416 = !DICompositeType(tag: DW_TAG_array_type, baseType: !392, size: 128, elements: !417)
!417 = !{!418}
!418 = !DISubrange(count: 2)
!419 = !DIGlobalVariableExpression(var: !420, expr: !DIExpression())
!420 = distinct !DIGlobalVariable(name: "__isr_uart_stm32_isr_irq_0", scope: !421, file: !2, line: 2337, type: !423, isLocal: true, isDefinition: true, align: 32)
!421 = distinct !DISubprogram(name: "uart_stm32_irq_config_func_0", scope: !2, file: !2, line: 2337, type: !238, scopeLine: 2337, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!422 = !{}
!423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_isr_list", file: !424, line: 53, size: 128, elements: !425)
!424 = !DIFile(filename: "include/zephyr/sw_isr_table.h", directory: "/home/sri/zephyrproject/zephyr")
!425 = !{!426, !428, !429, !430}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !423, file: !424, line: 55, baseType: !427, size: 32)
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !174, line: 58, baseType: !145)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !423, file: !424, line: 57, baseType: !427, size: 32, offset: 32)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !423, file: !424, line: 59, baseType: !144, size: 32, offset: 64)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !423, file: !424, line: 61, baseType: !165, size: 32, offset: 96)
!431 = !DIGlobalVariableExpression(var: !432, expr: !DIExpression())
!432 = distinct !DIGlobalVariable(name: "uart_stm32_driver_api", scope: !9, file: !2, line: 1798, type: !191, isLocal: true, isDefinition: true)
!433 = !DIGlobalVariableExpression(var: !434, expr: !DIExpression())
!434 = distinct !DIGlobalVariable(scope: null, file: !2, line: 133, type: !435, isLocal: true, isDefinition: true)
!435 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 368, elements: !436)
!436 = !{!437}
!437 = !DISubrange(count: 46)
!438 = !DIGlobalVariableExpression(var: !439, expr: !DIExpression())
!439 = distinct !DIGlobalVariable(name: "__log_current_const_data", scope: !9, file: !2, line: 44, type: !440, isLocal: true, isDefinition: true)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 32)
!441 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !442)
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "log_source_const_data", file: !443, line: 17, size: 64, elements: !444)
!443 = !DIFile(filename: "include/zephyr/logging/log_instance.h", directory: "/home/sri/zephyrproject/zephyr")
!444 = !{!445, !446}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !442, file: !443, line: 18, baseType: !162, size: 32)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !442, file: !443, line: 19, baseType: !173, size: 8, offset: 32)
!447 = !DIGlobalVariableExpression(var: !448, expr: !DIExpression())
!448 = distinct !DIGlobalVariable(name: "uart_stm32_data_0", scope: !9, file: !2, line: 2337, type: !449, isLocal: true, isDefinition: true)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uart_stm32_data", file: !351, line: 86, size: 128, elements: !450)
!450 = !{!451, !452, !453, !454}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !449, file: !351, line: 88, baseType: !156, size: 32)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "uart_cfg", scope: !449, file: !351, line: 90, baseType: !224, size: 32, offset: 32)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "user_cb", scope: !449, file: !351, line: 92, baseType: !254, size: 32, offset: 64)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !449, file: !351, line: 93, baseType: !144, size: 32, offset: 96)
!455 = !DIGlobalVariableExpression(var: !456, expr: !DIExpression())
!456 = distinct !DIGlobalVariable(name: "uart_cfg_0", scope: !9, file: !2, line: 2337, type: !213, isLocal: true, isDefinition: true)
!457 = !DIGlobalVariableExpression(var: !458, expr: !DIExpression())
!458 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1854, type: !459, isLocal: true, isDefinition: true)
!459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !460)
!460 = !{!461}
!461 = !DISubrange(count: 31)
!462 = !DIGlobalVariableExpression(var: !463, expr: !DIExpression())
!463 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1861, type: !464, isLocal: true, isDefinition: true)
!464 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !465)
!465 = !{!466}
!466 = !DISubrange(count: 32)
!467 = !DIGlobalVariableExpression(var: !468, expr: !DIExpression())
!468 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1887, type: !469, isLocal: true, isDefinition: true)
!469 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !470)
!470 = !{!471}
!471 = !DISubrange(count: 27)
!472 = !DIGlobalVariableExpression(var: !473, expr: !DIExpression())
!473 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1927, type: !474, isLocal: true, isDefinition: true)
!474 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !475)
!475 = !{!476}
!476 = !DISubrange(count: 34)
!477 = !{i32 7, !"Dwarf Version", i32 4}
!478 = !{i32 2, !"Debug Info Version", i32 3}
!479 = !{i32 1, !"wchar_size", i32 4}
!480 = !{i32 1, !"static_rwdata", i32 1}
!481 = !{i32 1, !"enumsize_buildattr", i32 1}
!482 = !{i32 1, !"armlib_unavailable", i32 0}
!483 = !{i32 8, !"PIC Level", i32 2}
!484 = !{i32 7, !"PIE Level", i32 2}
!485 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
!486 = distinct !DISubprogram(name: "z_impl_k_object_access_grant", scope: !13, file: !13, line: 223, type: !487, scopeLine: 225, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!487 = !DISubroutineType(types: !488)
!488 = !{null, !165, !489}
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 32)
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_thread", file: !491, line: 250, size: 896, elements: !492)
!491 = !DIFile(filename: "include/zephyr/kernel/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!492 = !{!493, !558, !571, !572, !573, !574, !592}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !490, file: !491, line: 252, baseType: !494, size: 384)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_base", file: !491, line: 58, size: 384, elements: !495)
!495 = !{!496, !522, !530, !531, !532, !543, !544, !545}
!496 = !DIDerivedType(tag: DW_TAG_member, scope: !494, file: !491, line: 61, baseType: !497, size: 64)
!497 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !494, file: !491, line: 61, size: 64, elements: !498)
!498 = !{!499, !515}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_dlist", scope: !497, file: !491, line: 62, baseType: !500, size: 64)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dnode_t", file: !501, line: 55, baseType: !502)
!501 = !DIFile(filename: "include/zephyr/sys/dlist.h", directory: "/home/sri/zephyrproject/zephyr")
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_dnode", file: !501, line: 37, size: 64, elements: !503)
!503 = !{!504, !510}
!504 = !DIDerivedType(tag: DW_TAG_member, scope: !502, file: !501, line: 38, baseType: !505, size: 32)
!505 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !502, file: !501, line: 38, size: 32, elements: !506)
!506 = !{!507, !509}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !505, file: !501, line: 39, baseType: !508, size: 32)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 32)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !505, file: !501, line: 40, baseType: !508, size: 32)
!510 = !DIDerivedType(tag: DW_TAG_member, scope: !502, file: !501, line: 42, baseType: !511, size: 32, offset: 32)
!511 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !502, file: !501, line: 42, size: 32, elements: !512)
!512 = !{!513, !514}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !511, file: !501, line: 43, baseType: !508, size: 32)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !511, file: !501, line: 44, baseType: !508, size: 32)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_rb", scope: !497, file: !491, line: 63, baseType: !516, size: 64)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rbnode", file: !517, line: 58, size: 64, elements: !518)
!517 = !DIFile(filename: "include/zephyr/sys/rb.h", directory: "/home/sri/zephyrproject/zephyr")
!518 = !{!519}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !516, file: !517, line: 60, baseType: !520, size: 64)
!520 = !DICompositeType(tag: DW_TAG_array_type, baseType: !521, size: 64, elements: !417)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 32)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "pended_on", scope: !494, file: !491, line: 69, baseType: !523, size: 32, offset: 64)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 32)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "_wait_q_t", file: !525, line: 243, baseType: !526)
!525 = !DIFile(filename: "include/zephyr/kernel_structs.h", directory: "/home/sri/zephyrproject/zephyr")
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !525, line: 241, size: 64, elements: !527)
!527 = !{!528}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !526, file: !525, line: 242, baseType: !529, size: 64)
!529 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dlist_t", file: !501, line: 51, baseType: !502)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "user_options", scope: !494, file: !491, line: 72, baseType: !173, size: 8, offset: 96)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "thread_state", scope: !494, file: !491, line: 75, baseType: !173, size: 8, offset: 104)
!532 = !DIDerivedType(tag: DW_TAG_member, scope: !494, file: !491, line: 91, baseType: !533, size: 16, offset: 112)
!533 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !494, file: !491, line: 91, size: 16, elements: !534)
!534 = !{!535, !542}
!535 = !DIDerivedType(tag: DW_TAG_member, scope: !533, file: !491, line: 92, baseType: !536, size: 16)
!536 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !533, file: !491, line: 92, size: 16, elements: !537)
!537 = !{!538, !541}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !536, file: !491, line: 97, baseType: !539, size: 8)
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !174, line: 56, baseType: !540)
!540 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "sched_locked", scope: !536, file: !491, line: 98, baseType: !173, size: 8, offset: 8)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "preempt", scope: !533, file: !491, line: 101, baseType: !258, size: 16)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "order_key", scope: !494, file: !491, line: 108, baseType: !178, size: 32, offset: 128)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "swap_data", scope: !494, file: !491, line: 132, baseType: !144, size: 32, offset: 160)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !494, file: !491, line: 136, baseType: !546, size: 192, offset: 192)
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_timeout", file: !525, line: 254, size: 192, elements: !547)
!547 = !{!548, !549, !555}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !546, file: !525, line: 255, baseType: !500, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !546, file: !525, line: 256, baseType: !550, size: 32, offset: 64)
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "_timeout_func_t", file: !525, line: 252, baseType: !551)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 32)
!552 = !DISubroutineType(types: !553)
!553 = !{null, !554}
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 32)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "dticks", scope: !546, file: !525, line: 259, baseType: !556, size: 64, offset: 128)
!556 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !174, line: 59, baseType: !557)
!557 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "callee_saved", scope: !490, file: !491, line: 255, baseType: !559, size: 288, offset: 384)
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_callee_saved", file: !560, line: 25, size: 288, elements: !561)
!560 = !DIFile(filename: "include/zephyr/arch/arm/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!561 = !{!562, !563, !564, !565, !566, !567, !568, !569, !570}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "v1", scope: !559, file: !560, line: 26, baseType: !178, size: 32)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "v2", scope: !559, file: !560, line: 27, baseType: !178, size: 32, offset: 32)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "v3", scope: !559, file: !560, line: 28, baseType: !178, size: 32, offset: 64)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "v4", scope: !559, file: !560, line: 29, baseType: !178, size: 32, offset: 96)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "v5", scope: !559, file: !560, line: 30, baseType: !178, size: 32, offset: 128)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "v6", scope: !559, file: !560, line: 31, baseType: !178, size: 32, offset: 160)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "v7", scope: !559, file: !560, line: 32, baseType: !178, size: 32, offset: 192)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "v8", scope: !559, file: !560, line: 33, baseType: !178, size: 32, offset: 224)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "psp", scope: !559, file: !560, line: 34, baseType: !178, size: 32, offset: 256)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "init_data", scope: !490, file: !491, line: 258, baseType: !144, size: 32, offset: 672)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "join_queue", scope: !490, file: !491, line: 261, baseType: !524, size: 64, offset: 704)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "errno_var", scope: !490, file: !491, line: 302, baseType: !145, size: 32, offset: 768)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "resource_pool", scope: !490, file: !491, line: 333, baseType: !575, size: 32, offset: 800)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 32)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_heap", file: !577, line: 5291, size: 160, elements: !578)
!577 = !DIFile(filename: "include/zephyr/kernel.h", directory: "/home/sri/zephyrproject/zephyr")
!578 = !{!579, !588, !589}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !576, file: !577, line: 5292, baseType: !580, size: 96)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sys_heap", file: !581, line: 56, size: 96, elements: !582)
!581 = !DIFile(filename: "include/zephyr/sys/sys_heap.h", directory: "/home/sri/zephyrproject/zephyr")
!582 = !{!583, !586, !587}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !580, file: !581, line: 57, baseType: !584, size: 32)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 32)
!585 = !DICompositeType(tag: DW_TAG_structure_type, name: "z_heap", file: !581, line: 57, flags: DIFlagFwdDecl)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "init_mem", scope: !580, file: !581, line: 58, baseType: !144, size: 32, offset: 32)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "init_bytes", scope: !580, file: !581, line: 59, baseType: !369, size: 32, offset: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !576, file: !577, line: 5293, baseType: !524, size: 64, offset: 96)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !576, file: !577, line: 5294, baseType: !590, offset: 160)
!590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_spinlock", file: !591, line: 45, elements: !422)
!591 = !DIFile(filename: "include/zephyr/spinlock.h", directory: "/home/sri/zephyrproject/zephyr")
!592 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !490, file: !491, line: 355, baseType: !593, size: 64, offset: 832)
!593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_arch", file: !560, line: 60, size: 64, elements: !594)
!594 = !{!595, !596}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "basepri", scope: !593, file: !560, line: 63, baseType: !178, size: 32)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "swap_return_value", scope: !593, file: !560, line: 66, baseType: !178, size: 32, offset: 32)
!597 = !DILocalVariable(name: "object", arg: 1, scope: !486, file: !13, line: 223, type: !165)
!598 = !DILocation(line: 223, column: 61, scope: !486)
!599 = !DILocalVariable(name: "thread", arg: 2, scope: !486, file: !13, line: 224, type: !489)
!600 = !DILocation(line: 224, column: 24, scope: !486)
!601 = !DILocation(line: 226, column: 9, scope: !486)
!602 = !DILocation(line: 227, column: 9, scope: !486)
!603 = !DILocation(line: 228, column: 1, scope: !486)
!604 = distinct !DISubprogram(name: "z_impl_k_object_release", scope: !13, file: !13, line: 243, type: !605, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!605 = !DISubroutineType(types: !606)
!606 = !{null, !165}
!607 = !DILocalVariable(name: "object", arg: 1, scope: !604, file: !13, line: 243, type: !165)
!608 = !DILocation(line: 243, column: 56, scope: !604)
!609 = !DILocation(line: 245, column: 9, scope: !604)
!610 = !DILocation(line: 246, column: 1, scope: !604)
!611 = distinct !DISubprogram(name: "z_impl_k_object_alloc", scope: !13, file: !13, line: 359, type: !612, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!612 = !DISubroutineType(types: !613)
!613 = !{!144, !12}
!614 = !DILocalVariable(name: "otype", arg: 1, scope: !611, file: !13, line: 359, type: !12)
!615 = !DILocation(line: 359, column: 58, scope: !611)
!616 = !DILocation(line: 361, column: 9, scope: !611)
!617 = !DILocation(line: 363, column: 2, scope: !611)
!618 = distinct !DISubprogram(name: "z_impl_k_object_alloc_size", scope: !13, file: !13, line: 366, type: !619, scopeLine: 368, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!619 = !DISubroutineType(types: !620)
!620 = !{!144, !12, !369}
!621 = !DILocalVariable(name: "otype", arg: 1, scope: !618, file: !13, line: 366, type: !12)
!622 = !DILocation(line: 366, column: 63, scope: !618)
!623 = !DILocalVariable(name: "size", arg: 2, scope: !618, file: !13, line: 367, type: !369)
!624 = !DILocation(line: 367, column: 13, scope: !618)
!625 = !DILocation(line: 369, column: 9, scope: !618)
!626 = !DILocation(line: 370, column: 9, scope: !618)
!627 = !DILocation(line: 372, column: 2, scope: !618)
!628 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_expires_ticks", scope: !577, file: !577, line: 656, type: !629, scopeLine: 658, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!629 = !DISubroutineType(types: !630)
!630 = !{!631, !633}
!631 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_ticks_t", file: !632, line: 46, baseType: !556)
!632 = !DIFile(filename: "include/zephyr/sys_clock.h", directory: "/home/sri/zephyrproject/zephyr")
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 32)
!634 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !490)
!635 = !DILocalVariable(name: "t", arg: 1, scope: !628, file: !577, line: 657, type: !633)
!636 = !DILocation(line: 657, column: 30, scope: !628)
!637 = !DILocation(line: 659, column: 28, scope: !628)
!638 = !DILocation(line: 659, column: 31, scope: !628)
!639 = !DILocation(line: 659, column: 36, scope: !628)
!640 = !DILocation(line: 659, column: 9, scope: !628)
!641 = !DILocation(line: 659, column: 2, scope: !628)
!642 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_remaining_ticks", scope: !577, file: !577, line: 671, type: !629, scopeLine: 673, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!643 = !DILocalVariable(name: "t", arg: 1, scope: !642, file: !577, line: 672, type: !633)
!644 = !DILocation(line: 672, column: 30, scope: !642)
!645 = !DILocation(line: 674, column: 30, scope: !642)
!646 = !DILocation(line: 674, column: 33, scope: !642)
!647 = !DILocation(line: 674, column: 38, scope: !642)
!648 = !DILocation(line: 674, column: 9, scope: !642)
!649 = !DILocation(line: 674, column: 2, scope: !642)
!650 = distinct !DISubprogram(name: "z_impl_k_timer_expires_ticks", scope: !577, file: !577, line: 1634, type: !651, scopeLine: 1636, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!651 = !DISubroutineType(types: !652)
!652 = !{!631, !653}
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 32)
!654 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !655)
!655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_timer", file: !577, line: 1439, size: 448, elements: !656)
!656 = !{!657, !658, !659, !664, !665, !670, !671}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !655, file: !577, line: 1445, baseType: !546, size: 192)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !655, file: !577, line: 1448, baseType: !524, size: 64, offset: 192)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_fn", scope: !655, file: !577, line: 1451, baseType: !660, size: 32, offset: 256)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 32)
!661 = !DISubroutineType(types: !662)
!662 = !{null, !663}
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 32)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "stop_fn", scope: !655, file: !577, line: 1454, baseType: !660, size: 32, offset: 288)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !655, file: !577, line: 1457, baseType: !666, size: 64, offset: 320)
!666 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_timeout_t", file: !632, line: 67, baseType: !667)
!667 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !632, line: 65, size: 64, elements: !668)
!668 = !{!669}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "ticks", scope: !667, file: !632, line: 66, baseType: !631, size: 64)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !655, file: !577, line: 1460, baseType: !178, size: 32, offset: 384)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !655, file: !577, line: 1463, baseType: !144, size: 32, offset: 416)
!672 = !DILocalVariable(name: "timer", arg: 1, scope: !650, file: !577, line: 1635, type: !653)
!673 = !DILocation(line: 1635, column: 34, scope: !650)
!674 = !DILocation(line: 1637, column: 28, scope: !650)
!675 = !DILocation(line: 1637, column: 35, scope: !650)
!676 = !DILocation(line: 1637, column: 9, scope: !650)
!677 = !DILocation(line: 1637, column: 2, scope: !650)
!678 = distinct !DISubprogram(name: "z_impl_k_timer_remaining_ticks", scope: !577, file: !577, line: 1649, type: !651, scopeLine: 1651, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!679 = !DILocalVariable(name: "timer", arg: 1, scope: !678, file: !577, line: 1650, type: !653)
!680 = !DILocation(line: 1650, column: 34, scope: !678)
!681 = !DILocation(line: 1652, column: 30, scope: !678)
!682 = !DILocation(line: 1652, column: 37, scope: !678)
!683 = !DILocation(line: 1652, column: 9, scope: !678)
!684 = !DILocation(line: 1652, column: 2, scope: !678)
!685 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_set", scope: !577, file: !577, line: 1689, type: !686, scopeLine: 1691, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!686 = !DISubroutineType(types: !687)
!687 = !{null, !663, !144}
!688 = !DILocalVariable(name: "timer", arg: 1, scope: !685, file: !577, line: 1689, type: !663)
!689 = !DILocation(line: 1689, column: 65, scope: !685)
!690 = !DILocalVariable(name: "user_data", arg: 2, scope: !685, file: !577, line: 1690, type: !144)
!691 = !DILocation(line: 1690, column: 19, scope: !685)
!692 = !DILocation(line: 1692, column: 21, scope: !685)
!693 = !DILocation(line: 1692, column: 2, scope: !685)
!694 = !DILocation(line: 1692, column: 9, scope: !685)
!695 = !DILocation(line: 1692, column: 19, scope: !685)
!696 = !DILocation(line: 1693, column: 1, scope: !685)
!697 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_get", scope: !577, file: !577, line: 1704, type: !698, scopeLine: 1705, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!698 = !DISubroutineType(types: !699)
!699 = !{!144, !653}
!700 = !DILocalVariable(name: "timer", arg: 1, scope: !697, file: !577, line: 1704, type: !653)
!701 = !DILocation(line: 1704, column: 72, scope: !697)
!702 = !DILocation(line: 1706, column: 9, scope: !697)
!703 = !DILocation(line: 1706, column: 16, scope: !697)
!704 = !DILocation(line: 1706, column: 2, scope: !697)
!705 = distinct !DISubprogram(name: "z_impl_k_queue_is_empty", scope: !577, file: !577, line: 2071, type: !706, scopeLine: 2072, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!706 = !DISubroutineType(types: !707)
!707 = !{!145, !708}
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 32)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_queue", file: !577, line: 1830, size: 128, elements: !710)
!710 = !{!711, !724, !725}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "data_q", scope: !709, file: !577, line: 1831, baseType: !712, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sflist_t", file: !713, line: 60, baseType: !714)
!713 = !DIFile(filename: "include/zephyr/sys/sflist.h", directory: "/home/sri/zephyrproject/zephyr")
!714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sflist", file: !713, line: 53, size: 64, elements: !715)
!715 = !{!716, !723}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !714, file: !713, line: 54, baseType: !717, size: 32)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 32)
!718 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sfnode_t", file: !713, line: 50, baseType: !719)
!719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sfnode", file: !713, line: 44, size: 32, elements: !720)
!720 = !{!721}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "next_and_flags", scope: !719, file: !713, line: 45, baseType: !722, size: 32)
!722 = !DIDerivedType(tag: DW_TAG_typedef, name: "unative_t", file: !713, line: 40, baseType: !178)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !714, file: !713, line: 55, baseType: !717, size: 32, offset: 32)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !709, file: !577, line: 1832, baseType: !590, offset: 64)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !709, file: !577, line: 1833, baseType: !524, size: 64, offset: 64)
!726 = !DILocalVariable(name: "queue", arg: 1, scope: !705, file: !577, line: 2071, type: !708)
!727 = !DILocation(line: 2071, column: 59, scope: !705)
!728 = !DILocation(line: 2073, column: 35, scope: !705)
!729 = !DILocation(line: 2073, column: 42, scope: !705)
!730 = !DILocation(line: 2073, column: 14, scope: !705)
!731 = !DILocation(line: 2073, column: 9, scope: !705)
!732 = !DILocation(line: 2073, column: 2, scope: !705)
!733 = distinct !DISubprogram(name: "z_impl_k_sem_count_get", scope: !577, file: !577, line: 3209, type: !734, scopeLine: 3210, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!734 = !DISubroutineType(types: !735)
!735 = !{!179, !736}
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 32)
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sem", file: !577, line: 3092, size: 128, elements: !738)
!738 = !{!739, !740, !741}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !737, file: !577, line: 3093, baseType: !524, size: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !737, file: !577, line: 3094, baseType: !179, size: 32, offset: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !737, file: !577, line: 3095, baseType: !179, size: 32, offset: 96)
!742 = !DILocalVariable(name: "sem", arg: 1, scope: !733, file: !577, line: 3209, type: !736)
!743 = !DILocation(line: 3209, column: 65, scope: !733)
!744 = !DILocation(line: 3211, column: 9, scope: !733)
!745 = !DILocation(line: 3211, column: 14, scope: !733)
!746 = !DILocation(line: 3211, column: 2, scope: !733)
!747 = distinct !DISubprogram(name: "z_impl_k_msgq_num_free_get", scope: !577, file: !577, line: 4649, type: !748, scopeLine: 4650, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!748 = !DISubroutineType(types: !749)
!749 = !{!178, !750}
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 32)
!751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_msgq", file: !577, line: 4390, size: 320, elements: !752)
!752 = !{!753, !754, !755, !756, !757, !759, !760, !761, !762, !763}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !751, file: !577, line: 4392, baseType: !524, size: 64)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !751, file: !577, line: 4394, baseType: !590, offset: 64)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "msg_size", scope: !751, file: !577, line: 4396, baseType: !369, size: 32, offset: 64)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !751, file: !577, line: 4398, baseType: !178, size: 32, offset: 96)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_start", scope: !751, file: !577, line: 4400, baseType: !758, size: 32, offset: 128)
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 32)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_end", scope: !751, file: !577, line: 4402, baseType: !758, size: 32, offset: 160)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "read_ptr", scope: !751, file: !577, line: 4404, baseType: !758, size: 32, offset: 192)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "write_ptr", scope: !751, file: !577, line: 4406, baseType: !758, size: 32, offset: 224)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "used_msgs", scope: !751, file: !577, line: 4408, baseType: !178, size: 32, offset: 256)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !751, file: !577, line: 4413, baseType: !173, size: 8, offset: 288)
!764 = !DILocalVariable(name: "msgq", arg: 1, scope: !747, file: !577, line: 4649, type: !750)
!765 = !DILocation(line: 4649, column: 66, scope: !747)
!766 = !DILocation(line: 4651, column: 9, scope: !747)
!767 = !DILocation(line: 4651, column: 15, scope: !747)
!768 = !DILocation(line: 4651, column: 26, scope: !747)
!769 = !DILocation(line: 4651, column: 32, scope: !747)
!770 = !DILocation(line: 4651, column: 24, scope: !747)
!771 = !DILocation(line: 4651, column: 2, scope: !747)
!772 = distinct !DISubprogram(name: "z_impl_k_msgq_num_used_get", scope: !577, file: !577, line: 4665, type: !748, scopeLine: 4666, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!773 = !DILocalVariable(name: "msgq", arg: 1, scope: !772, file: !577, line: 4665, type: !750)
!774 = !DILocation(line: 4665, column: 66, scope: !772)
!775 = !DILocation(line: 4667, column: 9, scope: !772)
!776 = !DILocation(line: 4667, column: 15, scope: !772)
!777 = !DILocation(line: 4667, column: 2, scope: !772)
!778 = distinct !DISubprogram(name: "z_impl_device_is_ready", scope: !159, file: !159, line: 744, type: !779, scopeLine: 745, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!779 = !DISubroutineType(types: !780)
!780 = !{!176, !156}
!781 = !DILocalVariable(name: "dev", arg: 1, scope: !778, file: !159, line: 744, type: !156)
!782 = !DILocation(line: 744, column: 65, scope: !778)
!783 = !DILocation(line: 746, column: 27, scope: !778)
!784 = !DILocation(line: 746, column: 9, scope: !778)
!785 = !DILocation(line: 746, column: 2, scope: !778)
!786 = distinct !DISubprogram(name: "z_impl_reset_status", scope: !149, file: !149, line: 164, type: !154, scopeLine: 165, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!787 = !DILocalVariable(name: "dev", arg: 1, scope: !786, file: !149, line: 164, type: !156)
!788 = !DILocation(line: 164, column: 60, scope: !786)
!789 = !DILocalVariable(name: "id", arg: 2, scope: !786, file: !149, line: 164, type: !178)
!790 = !DILocation(line: 164, column: 74, scope: !786)
!791 = !DILocalVariable(name: "status", arg: 3, scope: !786, file: !149, line: 164, type: !180)
!792 = !DILocation(line: 164, column: 87, scope: !786)
!793 = !DILocalVariable(name: "api", scope: !786, file: !149, line: 166, type: !146)
!794 = !DILocation(line: 166, column: 33, scope: !786)
!795 = !DILocation(line: 166, column: 72, scope: !786)
!796 = !DILocation(line: 166, column: 77, scope: !786)
!797 = !DILocation(line: 168, column: 6, scope: !798)
!798 = distinct !DILexicalBlock(scope: !786, file: !149, line: 168, column: 6)
!799 = !DILocation(line: 168, column: 11, scope: !798)
!800 = !DILocation(line: 168, column: 18, scope: !798)
!801 = !DILocation(line: 168, column: 6, scope: !786)
!802 = !DILocation(line: 169, column: 3, scope: !803)
!803 = distinct !DILexicalBlock(scope: !798, file: !149, line: 168, column: 33)
!804 = !DILocation(line: 172, column: 9, scope: !786)
!805 = !DILocation(line: 172, column: 14, scope: !786)
!806 = !DILocation(line: 172, column: 21, scope: !786)
!807 = !DILocation(line: 172, column: 26, scope: !786)
!808 = !DILocation(line: 172, column: 30, scope: !786)
!809 = !DILocation(line: 172, column: 2, scope: !786)
!810 = !DILocation(line: 173, column: 1, scope: !786)
!811 = distinct !DISubprogram(name: "z_impl_reset_line_assert", scope: !149, file: !149, line: 207, type: !184, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!812 = !DILocalVariable(name: "dev", arg: 1, scope: !811, file: !149, line: 207, type: !156)
!813 = !DILocation(line: 207, column: 65, scope: !811)
!814 = !DILocalVariable(name: "id", arg: 2, scope: !811, file: !149, line: 207, type: !178)
!815 = !DILocation(line: 207, column: 79, scope: !811)
!816 = !DILocalVariable(name: "api", scope: !811, file: !149, line: 209, type: !146)
!817 = !DILocation(line: 209, column: 33, scope: !811)
!818 = !DILocation(line: 209, column: 72, scope: !811)
!819 = !DILocation(line: 209, column: 77, scope: !811)
!820 = !DILocation(line: 211, column: 6, scope: !821)
!821 = distinct !DILexicalBlock(scope: !811, file: !149, line: 211, column: 6)
!822 = !DILocation(line: 211, column: 11, scope: !821)
!823 = !DILocation(line: 211, column: 23, scope: !821)
!824 = !DILocation(line: 211, column: 6, scope: !811)
!825 = !DILocation(line: 212, column: 3, scope: !826)
!826 = distinct !DILexicalBlock(scope: !821, file: !149, line: 211, column: 38)
!827 = !DILocation(line: 215, column: 9, scope: !811)
!828 = !DILocation(line: 215, column: 14, scope: !811)
!829 = !DILocation(line: 215, column: 26, scope: !811)
!830 = !DILocation(line: 215, column: 31, scope: !811)
!831 = !DILocation(line: 215, column: 2, scope: !811)
!832 = !DILocation(line: 216, column: 1, scope: !811)
!833 = distinct !DISubprogram(name: "z_impl_reset_line_deassert", scope: !149, file: !149, line: 249, type: !184, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!834 = !DILocalVariable(name: "dev", arg: 1, scope: !833, file: !149, line: 249, type: !156)
!835 = !DILocation(line: 249, column: 67, scope: !833)
!836 = !DILocalVariable(name: "id", arg: 2, scope: !833, file: !149, line: 249, type: !178)
!837 = !DILocation(line: 249, column: 81, scope: !833)
!838 = !DILocalVariable(name: "api", scope: !833, file: !149, line: 251, type: !146)
!839 = !DILocation(line: 251, column: 33, scope: !833)
!840 = !DILocation(line: 251, column: 72, scope: !833)
!841 = !DILocation(line: 251, column: 77, scope: !833)
!842 = !DILocation(line: 253, column: 6, scope: !843)
!843 = distinct !DILexicalBlock(scope: !833, file: !149, line: 253, column: 6)
!844 = !DILocation(line: 253, column: 11, scope: !843)
!845 = !DILocation(line: 253, column: 25, scope: !843)
!846 = !DILocation(line: 253, column: 6, scope: !833)
!847 = !DILocation(line: 254, column: 3, scope: !848)
!848 = distinct !DILexicalBlock(scope: !843, file: !149, line: 253, column: 40)
!849 = !DILocation(line: 257, column: 9, scope: !833)
!850 = !DILocation(line: 257, column: 14, scope: !833)
!851 = !DILocation(line: 257, column: 28, scope: !833)
!852 = !DILocation(line: 257, column: 33, scope: !833)
!853 = !DILocation(line: 257, column: 2, scope: !833)
!854 = !DILocation(line: 258, column: 1, scope: !833)
!855 = distinct !DISubprogram(name: "z_impl_reset_line_toggle", scope: !149, file: !149, line: 290, type: !184, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!856 = !DILocalVariable(name: "dev", arg: 1, scope: !855, file: !149, line: 290, type: !156)
!857 = !DILocation(line: 290, column: 65, scope: !855)
!858 = !DILocalVariable(name: "id", arg: 2, scope: !855, file: !149, line: 290, type: !178)
!859 = !DILocation(line: 290, column: 79, scope: !855)
!860 = !DILocalVariable(name: "api", scope: !855, file: !149, line: 292, type: !146)
!861 = !DILocation(line: 292, column: 33, scope: !855)
!862 = !DILocation(line: 292, column: 72, scope: !855)
!863 = !DILocation(line: 292, column: 77, scope: !855)
!864 = !DILocation(line: 294, column: 6, scope: !865)
!865 = distinct !DILexicalBlock(scope: !855, file: !149, line: 294, column: 6)
!866 = !DILocation(line: 294, column: 11, scope: !865)
!867 = !DILocation(line: 294, column: 23, scope: !865)
!868 = !DILocation(line: 294, column: 6, scope: !855)
!869 = !DILocation(line: 295, column: 3, scope: !870)
!870 = distinct !DILexicalBlock(scope: !865, file: !149, line: 294, column: 38)
!871 = !DILocation(line: 298, column: 9, scope: !855)
!872 = !DILocation(line: 298, column: 14, scope: !855)
!873 = !DILocation(line: 298, column: 26, scope: !855)
!874 = !DILocation(line: 298, column: 31, scope: !855)
!875 = !DILocation(line: 298, column: 2, scope: !855)
!876 = !DILocation(line: 299, column: 1, scope: !855)
!877 = distinct !DISubprogram(name: "z_impl_uart_err_check", scope: !96, file: !96, line: 467, type: !205, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!878 = !DILocalVariable(name: "dev", arg: 1, scope: !877, file: !96, line: 467, type: !156)
!879 = !DILocation(line: 467, column: 62, scope: !877)
!880 = !DILocalVariable(name: "api", scope: !877, file: !96, line: 469, type: !190)
!881 = !DILocation(line: 469, column: 32, scope: !877)
!882 = !DILocation(line: 470, column: 35, scope: !877)
!883 = !DILocation(line: 470, column: 40, scope: !877)
!884 = !DILocation(line: 472, column: 6, scope: !885)
!885 = distinct !DILexicalBlock(scope: !877, file: !96, line: 472, column: 6)
!886 = !DILocation(line: 472, column: 11, scope: !885)
!887 = !DILocation(line: 472, column: 21, scope: !885)
!888 = !DILocation(line: 472, column: 6, scope: !877)
!889 = !DILocation(line: 473, column: 3, scope: !890)
!890 = distinct !DILexicalBlock(scope: !885, file: !96, line: 472, column: 36)
!891 = !DILocation(line: 476, column: 9, scope: !877)
!892 = !DILocation(line: 476, column: 14, scope: !877)
!893 = !DILocation(line: 476, column: 24, scope: !877)
!894 = !DILocation(line: 476, column: 2, scope: !877)
!895 = !DILocation(line: 477, column: 1, scope: !877)
!896 = distinct !DISubprogram(name: "z_impl_uart_poll_in", scope: !96, file: !96, line: 504, type: !196, scopeLine: 506, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!897 = !DILocalVariable(name: "dev", arg: 1, scope: !896, file: !96, line: 504, type: !156)
!898 = !DILocation(line: 504, column: 60, scope: !896)
!899 = !DILocalVariable(name: "p_char", arg: 2, scope: !896, file: !96, line: 505, type: !198)
!900 = !DILocation(line: 505, column: 26, scope: !896)
!901 = !DILocalVariable(name: "api", scope: !896, file: !96, line: 507, type: !190)
!902 = !DILocation(line: 507, column: 32, scope: !896)
!903 = !DILocation(line: 508, column: 35, scope: !896)
!904 = !DILocation(line: 508, column: 40, scope: !896)
!905 = !DILocation(line: 510, column: 6, scope: !906)
!906 = distinct !DILexicalBlock(scope: !896, file: !96, line: 510, column: 6)
!907 = !DILocation(line: 510, column: 11, scope: !906)
!908 = !DILocation(line: 510, column: 19, scope: !906)
!909 = !DILocation(line: 510, column: 6, scope: !896)
!910 = !DILocation(line: 511, column: 3, scope: !911)
!911 = distinct !DILexicalBlock(scope: !906, file: !96, line: 510, column: 34)
!912 = !DILocation(line: 514, column: 9, scope: !896)
!913 = !DILocation(line: 514, column: 14, scope: !896)
!914 = !DILocation(line: 514, column: 22, scope: !896)
!915 = !DILocation(line: 514, column: 27, scope: !896)
!916 = !DILocation(line: 514, column: 2, scope: !896)
!917 = !DILocation(line: 515, column: 1, scope: !896)
!918 = distinct !DISubprogram(name: "z_impl_uart_poll_in_u16", scope: !96, file: !96, line: 538, type: !919, scopeLine: 540, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!919 = !DISubroutineType(types: !920)
!920 = !{!145, !156, !921}
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 32)
!922 = !DILocalVariable(name: "dev", arg: 1, scope: !918, file: !96, line: 538, type: !156)
!923 = !DILocation(line: 538, column: 64, scope: !918)
!924 = !DILocalVariable(name: "p_u16", arg: 2, scope: !918, file: !96, line: 539, type: !921)
!925 = !DILocation(line: 539, column: 18, scope: !918)
!926 = !DILocation(line: 551, column: 9, scope: !918)
!927 = !DILocation(line: 552, column: 9, scope: !918)
!928 = !DILocation(line: 553, column: 2, scope: !918)
!929 = distinct !DISubprogram(name: "z_impl_uart_poll_out", scope: !96, file: !96, line: 574, type: !201, scopeLine: 576, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!930 = !DILocalVariable(name: "dev", arg: 1, scope: !929, file: !96, line: 574, type: !156)
!931 = !DILocation(line: 574, column: 62, scope: !929)
!932 = !DILocalVariable(name: "out_char", arg: 2, scope: !929, file: !96, line: 575, type: !14)
!933 = !DILocation(line: 575, column: 20, scope: !929)
!934 = !DILocalVariable(name: "api", scope: !929, file: !96, line: 577, type: !190)
!935 = !DILocation(line: 577, column: 32, scope: !929)
!936 = !DILocation(line: 578, column: 35, scope: !929)
!937 = !DILocation(line: 578, column: 40, scope: !929)
!938 = !DILocation(line: 580, column: 2, scope: !929)
!939 = !DILocation(line: 580, column: 7, scope: !929)
!940 = !DILocation(line: 580, column: 16, scope: !929)
!941 = !DILocation(line: 580, column: 21, scope: !929)
!942 = !DILocation(line: 581, column: 1, scope: !929)
!943 = distinct !DISubprogram(name: "z_impl_uart_poll_out_u16", scope: !96, file: !96, line: 599, type: !944, scopeLine: 601, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!944 = !DISubroutineType(types: !945)
!945 = !{null, !156, !258}
!946 = !DILocalVariable(name: "dev", arg: 1, scope: !943, file: !96, line: 599, type: !156)
!947 = !DILocation(line: 599, column: 66, scope: !943)
!948 = !DILocalVariable(name: "out_u16", arg: 2, scope: !943, file: !96, line: 600, type: !258)
!949 = !DILocation(line: 600, column: 19, scope: !943)
!950 = !DILocation(line: 608, column: 9, scope: !943)
!951 = !DILocation(line: 609, column: 9, scope: !943)
!952 = !DILocation(line: 611, column: 1, scope: !943)
!953 = distinct !DISubprogram(name: "z_impl_uart_configure", scope: !96, file: !96, line: 634, type: !209, scopeLine: 636, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!954 = !DILocalVariable(name: "dev", arg: 1, scope: !953, file: !96, line: 634, type: !156)
!955 = !DILocation(line: 634, column: 62, scope: !953)
!956 = !DILocalVariable(name: "cfg", arg: 2, scope: !953, file: !96, line: 635, type: !211)
!957 = !DILocation(line: 635, column: 32, scope: !953)
!958 = !DILocalVariable(name: "api", scope: !953, file: !96, line: 638, type: !190)
!959 = !DILocation(line: 638, column: 32, scope: !953)
!960 = !DILocation(line: 639, column: 37, scope: !953)
!961 = !DILocation(line: 639, column: 42, scope: !953)
!962 = !DILocation(line: 641, column: 6, scope: !963)
!963 = distinct !DILexicalBlock(scope: !953, file: !96, line: 641, column: 6)
!964 = !DILocation(line: 641, column: 11, scope: !963)
!965 = !DILocation(line: 641, column: 21, scope: !963)
!966 = !DILocation(line: 641, column: 6, scope: !953)
!967 = !DILocation(line: 642, column: 3, scope: !968)
!968 = distinct !DILexicalBlock(scope: !963, file: !96, line: 641, column: 36)
!969 = !DILocation(line: 644, column: 9, scope: !953)
!970 = !DILocation(line: 644, column: 14, scope: !953)
!971 = !DILocation(line: 644, column: 24, scope: !953)
!972 = !DILocation(line: 644, column: 29, scope: !953)
!973 = !DILocation(line: 644, column: 2, scope: !953)
!974 = !DILocation(line: 650, column: 1, scope: !953)
!975 = distinct !DISubprogram(name: "z_impl_uart_config_get", scope: !96, file: !96, line: 669, type: !222, scopeLine: 671, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!976 = !DILocalVariable(name: "dev", arg: 1, scope: !975, file: !96, line: 669, type: !156)
!977 = !DILocation(line: 669, column: 63, scope: !975)
!978 = !DILocalVariable(name: "cfg", arg: 2, scope: !975, file: !96, line: 670, type: !224)
!979 = !DILocation(line: 670, column: 27, scope: !975)
!980 = !DILocalVariable(name: "api", scope: !975, file: !96, line: 673, type: !190)
!981 = !DILocation(line: 673, column: 32, scope: !975)
!982 = !DILocation(line: 674, column: 37, scope: !975)
!983 = !DILocation(line: 674, column: 42, scope: !975)
!984 = !DILocation(line: 676, column: 6, scope: !985)
!985 = distinct !DILexicalBlock(scope: !975, file: !96, line: 676, column: 6)
!986 = !DILocation(line: 676, column: 11, scope: !985)
!987 = !DILocation(line: 676, column: 22, scope: !985)
!988 = !DILocation(line: 676, column: 6, scope: !975)
!989 = !DILocation(line: 677, column: 3, scope: !990)
!990 = distinct !DILexicalBlock(scope: !985, file: !96, line: 676, column: 37)
!991 = !DILocation(line: 680, column: 9, scope: !975)
!992 = !DILocation(line: 680, column: 14, scope: !975)
!993 = !DILocation(line: 680, column: 25, scope: !975)
!994 = !DILocation(line: 680, column: 30, scope: !975)
!995 = !DILocation(line: 680, column: 2, scope: !975)
!996 = !DILocation(line: 686, column: 1, scope: !975)
!997 = distinct !DISubprogram(name: "z_impl_uart_irq_tx_enable", scope: !96, file: !96, line: 865, type: !238, scopeLine: 866, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!998 = !DILocalVariable(name: "dev", arg: 1, scope: !997, file: !96, line: 865, type: !156)
!999 = !DILocation(line: 865, column: 67, scope: !997)
!1000 = !DILocalVariable(name: "api", scope: !997, file: !96, line: 868, type: !190)
!1001 = !DILocation(line: 868, column: 32, scope: !997)
!1002 = !DILocation(line: 869, column: 35, scope: !997)
!1003 = !DILocation(line: 869, column: 40, scope: !997)
!1004 = !DILocation(line: 871, column: 6, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !997, file: !96, line: 871, column: 6)
!1006 = !DILocation(line: 871, column: 11, scope: !1005)
!1007 = !DILocation(line: 871, column: 25, scope: !1005)
!1008 = !DILocation(line: 871, column: 6, scope: !997)
!1009 = !DILocation(line: 872, column: 3, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !1005, file: !96, line: 871, column: 40)
!1011 = !DILocation(line: 872, column: 8, scope: !1010)
!1012 = !DILocation(line: 872, column: 22, scope: !1010)
!1013 = !DILocation(line: 873, column: 2, scope: !1010)
!1014 = !DILocation(line: 877, column: 1, scope: !997)
!1015 = distinct !DISubprogram(name: "z_impl_uart_irq_tx_disable", scope: !96, file: !96, line: 886, type: !238, scopeLine: 887, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!1016 = !DILocalVariable(name: "dev", arg: 1, scope: !1015, file: !96, line: 886, type: !156)
!1017 = !DILocation(line: 886, column: 68, scope: !1015)
!1018 = !DILocalVariable(name: "api", scope: !1015, file: !96, line: 889, type: !190)
!1019 = !DILocation(line: 889, column: 32, scope: !1015)
!1020 = !DILocation(line: 890, column: 35, scope: !1015)
!1021 = !DILocation(line: 890, column: 40, scope: !1015)
!1022 = !DILocation(line: 892, column: 6, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !1015, file: !96, line: 892, column: 6)
!1024 = !DILocation(line: 892, column: 11, scope: !1023)
!1025 = !DILocation(line: 892, column: 26, scope: !1023)
!1026 = !DILocation(line: 892, column: 6, scope: !1015)
!1027 = !DILocation(line: 893, column: 3, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !1023, file: !96, line: 892, column: 41)
!1029 = !DILocation(line: 893, column: 8, scope: !1028)
!1030 = !DILocation(line: 893, column: 23, scope: !1028)
!1031 = !DILocation(line: 894, column: 2, scope: !1028)
!1032 = !DILocation(line: 898, column: 1, scope: !1015)
!1033 = distinct !DISubprogram(name: "z_impl_uart_irq_rx_enable", scope: !96, file: !96, line: 942, type: !238, scopeLine: 943, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!1034 = !DILocalVariable(name: "dev", arg: 1, scope: !1033, file: !96, line: 942, type: !156)
!1035 = !DILocation(line: 942, column: 67, scope: !1033)
!1036 = !DILocalVariable(name: "api", scope: !1033, file: !96, line: 945, type: !190)
!1037 = !DILocation(line: 945, column: 32, scope: !1033)
!1038 = !DILocation(line: 946, column: 35, scope: !1033)
!1039 = !DILocation(line: 946, column: 40, scope: !1033)
!1040 = !DILocation(line: 948, column: 6, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1033, file: !96, line: 948, column: 6)
!1042 = !DILocation(line: 948, column: 11, scope: !1041)
!1043 = !DILocation(line: 948, column: 25, scope: !1041)
!1044 = !DILocation(line: 948, column: 6, scope: !1033)
!1045 = !DILocation(line: 949, column: 3, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !1041, file: !96, line: 948, column: 40)
!1047 = !DILocation(line: 949, column: 8, scope: !1046)
!1048 = !DILocation(line: 949, column: 22, scope: !1046)
!1049 = !DILocation(line: 950, column: 2, scope: !1046)
!1050 = !DILocation(line: 954, column: 1, scope: !1033)
!1051 = distinct !DISubprogram(name: "z_impl_uart_irq_rx_disable", scope: !96, file: !96, line: 963, type: !238, scopeLine: 964, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!1052 = !DILocalVariable(name: "dev", arg: 1, scope: !1051, file: !96, line: 963, type: !156)
!1053 = !DILocation(line: 963, column: 68, scope: !1051)
!1054 = !DILocalVariable(name: "api", scope: !1051, file: !96, line: 966, type: !190)
!1055 = !DILocation(line: 966, column: 32, scope: !1051)
!1056 = !DILocation(line: 967, column: 35, scope: !1051)
!1057 = !DILocation(line: 967, column: 40, scope: !1051)
!1058 = !DILocation(line: 969, column: 6, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1051, file: !96, line: 969, column: 6)
!1060 = !DILocation(line: 969, column: 11, scope: !1059)
!1061 = !DILocation(line: 969, column: 26, scope: !1059)
!1062 = !DILocation(line: 969, column: 6, scope: !1051)
!1063 = !DILocation(line: 970, column: 3, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !1059, file: !96, line: 969, column: 41)
!1065 = !DILocation(line: 970, column: 8, scope: !1064)
!1066 = !DILocation(line: 970, column: 23, scope: !1064)
!1067 = !DILocation(line: 971, column: 2, scope: !1064)
!1068 = !DILocation(line: 975, column: 1, scope: !1051)
!1069 = distinct !DISubprogram(name: "z_impl_uart_irq_err_enable", scope: !96, file: !96, line: 1054, type: !238, scopeLine: 1055, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!1070 = !DILocalVariable(name: "dev", arg: 1, scope: !1069, file: !96, line: 1054, type: !156)
!1071 = !DILocation(line: 1054, column: 68, scope: !1069)
!1072 = !DILocalVariable(name: "api", scope: !1069, file: !96, line: 1057, type: !190)
!1073 = !DILocation(line: 1057, column: 32, scope: !1069)
!1074 = !DILocation(line: 1058, column: 35, scope: !1069)
!1075 = !DILocation(line: 1058, column: 40, scope: !1069)
!1076 = !DILocation(line: 1060, column: 6, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !1069, file: !96, line: 1060, column: 6)
!1078 = !DILocation(line: 1060, column: 11, scope: !1077)
!1079 = !DILocation(line: 1060, column: 6, scope: !1069)
!1080 = !DILocation(line: 1061, column: 3, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !1077, file: !96, line: 1060, column: 27)
!1082 = !DILocation(line: 1061, column: 8, scope: !1081)
!1083 = !DILocation(line: 1061, column: 23, scope: !1081)
!1084 = !DILocation(line: 1062, column: 2, scope: !1081)
!1085 = !DILocation(line: 1066, column: 1, scope: !1069)
!1086 = distinct !DISubprogram(name: "z_impl_uart_irq_err_disable", scope: !96, file: !96, line: 1075, type: !238, scopeLine: 1076, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!1087 = !DILocalVariable(name: "dev", arg: 1, scope: !1086, file: !96, line: 1075, type: !156)
!1088 = !DILocation(line: 1075, column: 69, scope: !1086)
!1089 = !DILocalVariable(name: "api", scope: !1086, file: !96, line: 1078, type: !190)
!1090 = !DILocation(line: 1078, column: 32, scope: !1086)
!1091 = !DILocation(line: 1079, column: 35, scope: !1086)
!1092 = !DILocation(line: 1079, column: 40, scope: !1086)
!1093 = !DILocation(line: 1081, column: 6, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !1086, file: !96, line: 1081, column: 6)
!1095 = !DILocation(line: 1081, column: 11, scope: !1094)
!1096 = !DILocation(line: 1081, column: 6, scope: !1086)
!1097 = !DILocation(line: 1082, column: 3, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !1094, file: !96, line: 1081, column: 28)
!1099 = !DILocation(line: 1082, column: 8, scope: !1098)
!1100 = !DILocation(line: 1082, column: 24, scope: !1098)
!1101 = !DILocation(line: 1083, column: 2, scope: !1098)
!1102 = !DILocation(line: 1087, column: 1, scope: !1086)
!1103 = distinct !DISubprogram(name: "z_impl_uart_irq_is_pending", scope: !96, file: !96, line: 1101, type: !205, scopeLine: 1102, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!1104 = !DILocalVariable(name: "dev", arg: 1, scope: !1103, file: !96, line: 1101, type: !156)
!1105 = !DILocation(line: 1101, column: 67, scope: !1103)
!1106 = !DILocalVariable(name: "api", scope: !1103, file: !96, line: 1104, type: !190)
!1107 = !DILocation(line: 1104, column: 32, scope: !1103)
!1108 = !DILocation(line: 1105, column: 35, scope: !1103)
!1109 = !DILocation(line: 1105, column: 40, scope: !1103)
!1110 = !DILocation(line: 1107, column: 6, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1103, file: !96, line: 1107, column: 6)
!1112 = !DILocation(line: 1107, column: 11, scope: !1111)
!1113 = !DILocation(line: 1107, column: 26, scope: !1111)
!1114 = !DILocation(line: 1107, column: 6, scope: !1103)
!1115 = !DILocation(line: 1108, column: 3, scope: !1116)
!1116 = distinct !DILexicalBlock(scope: !1111, file: !96, line: 1107, column: 41)
!1117 = !DILocation(line: 1110, column: 9, scope: !1103)
!1118 = !DILocation(line: 1110, column: 14, scope: !1103)
!1119 = !DILocation(line: 1110, column: 29, scope: !1103)
!1120 = !DILocation(line: 1110, column: 2, scope: !1103)
!1121 = !DILocation(line: 1115, column: 1, scope: !1103)
!1122 = distinct !DISubprogram(name: "z_impl_uart_irq_update", scope: !96, file: !96, line: 1144, type: !205, scopeLine: 1145, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!1123 = !DILocalVariable(name: "dev", arg: 1, scope: !1122, file: !96, line: 1144, type: !156)
!1124 = !DILocation(line: 1144, column: 63, scope: !1122)
!1125 = !DILocalVariable(name: "api", scope: !1122, file: !96, line: 1147, type: !190)
!1126 = !DILocation(line: 1147, column: 32, scope: !1122)
!1127 = !DILocation(line: 1148, column: 35, scope: !1122)
!1128 = !DILocation(line: 1148, column: 40, scope: !1122)
!1129 = !DILocation(line: 1150, column: 6, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1122, file: !96, line: 1150, column: 6)
!1131 = !DILocation(line: 1150, column: 11, scope: !1130)
!1132 = !DILocation(line: 1150, column: 22, scope: !1130)
!1133 = !DILocation(line: 1150, column: 6, scope: !1122)
!1134 = !DILocation(line: 1151, column: 3, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1130, file: !96, line: 1150, column: 37)
!1136 = !DILocation(line: 1153, column: 9, scope: !1122)
!1137 = !DILocation(line: 1153, column: 14, scope: !1122)
!1138 = !DILocation(line: 1153, column: 25, scope: !1122)
!1139 = !DILocation(line: 1153, column: 2, scope: !1122)
!1140 = !DILocation(line: 1158, column: 1, scope: !1122)
!1141 = distinct !DISubprogram(name: "z_impl_uart_tx", scope: !96, file: !96, line: 1282, type: !1142, scopeLine: 1285, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!1142 = !DISubroutineType(types: !1143)
!1143 = !{!145, !156, !229, !369, !427}
!1144 = !DILocalVariable(name: "dev", arg: 1, scope: !1141, file: !96, line: 1282, type: !156)
!1145 = !DILocation(line: 1282, column: 55, scope: !1141)
!1146 = !DILocalVariable(name: "buf", arg: 2, scope: !1141, file: !96, line: 1282, type: !229)
!1147 = !DILocation(line: 1282, column: 75, scope: !1141)
!1148 = !DILocalVariable(name: "len", arg: 3, scope: !1141, file: !96, line: 1283, type: !369)
!1149 = !DILocation(line: 1283, column: 13, scope: !1141)
!1150 = !DILocalVariable(name: "timeout", arg: 4, scope: !1141, file: !96, line: 1283, type: !427)
!1151 = !DILocation(line: 1283, column: 26, scope: !1141)
!1152 = !DILocation(line: 1292, column: 9, scope: !1141)
!1153 = !DILocation(line: 1293, column: 9, scope: !1141)
!1154 = !DILocation(line: 1294, column: 9, scope: !1141)
!1155 = !DILocation(line: 1295, column: 9, scope: !1141)
!1156 = !DILocation(line: 1296, column: 2, scope: !1141)
!1157 = distinct !DISubprogram(name: "z_impl_uart_tx_u16", scope: !96, file: !96, line: 1320, type: !1158, scopeLine: 1324, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!1158 = !DISubroutineType(types: !1159)
!1159 = !{!145, !156, !1160, !369, !427}
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 32)
!1161 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !258)
!1162 = !DILocalVariable(name: "dev", arg: 1, scope: !1157, file: !96, line: 1320, type: !156)
!1163 = !DILocation(line: 1320, column: 59, scope: !1157)
!1164 = !DILocalVariable(name: "buf", arg: 2, scope: !1157, file: !96, line: 1321, type: !1160)
!1165 = !DILocation(line: 1321, column: 26, scope: !1157)
!1166 = !DILocalVariable(name: "len", arg: 3, scope: !1157, file: !96, line: 1322, type: !369)
!1167 = !DILocation(line: 1322, column: 17, scope: !1157)
!1168 = !DILocalVariable(name: "timeout", arg: 4, scope: !1157, file: !96, line: 1322, type: !427)
!1169 = !DILocation(line: 1322, column: 30, scope: !1157)
!1170 = !DILocation(line: 1331, column: 9, scope: !1157)
!1171 = !DILocation(line: 1332, column: 9, scope: !1157)
!1172 = !DILocation(line: 1333, column: 9, scope: !1157)
!1173 = !DILocation(line: 1334, column: 9, scope: !1157)
!1174 = !DILocation(line: 1335, column: 2, scope: !1157)
!1175 = distinct !DISubprogram(name: "z_impl_uart_tx_abort", scope: !96, file: !96, line: 1353, type: !205, scopeLine: 1354, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!1176 = !DILocalVariable(name: "dev", arg: 1, scope: !1175, file: !96, line: 1353, type: !156)
!1177 = !DILocation(line: 1353, column: 61, scope: !1175)
!1178 = !DILocation(line: 1361, column: 9, scope: !1175)
!1179 = !DILocation(line: 1362, column: 2, scope: !1175)
!1180 = distinct !DISubprogram(name: "z_impl_uart_rx_enable", scope: !96, file: !96, line: 1391, type: !1181, scopeLine: 1394, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!1181 = !DISubroutineType(types: !1182)
!1182 = !{!145, !156, !180, !369, !427}
!1183 = !DILocalVariable(name: "dev", arg: 1, scope: !1180, file: !96, line: 1391, type: !156)
!1184 = !DILocation(line: 1391, column: 62, scope: !1180)
!1185 = !DILocalVariable(name: "buf", arg: 2, scope: !1180, file: !96, line: 1392, type: !180)
!1186 = !DILocation(line: 1392, column: 15, scope: !1180)
!1187 = !DILocalVariable(name: "len", arg: 3, scope: !1180, file: !96, line: 1393, type: !369)
!1188 = !DILocation(line: 1393, column: 13, scope: !1180)
!1189 = !DILocalVariable(name: "timeout", arg: 4, scope: !1180, file: !96, line: 1393, type: !427)
!1190 = !DILocation(line: 1393, column: 26, scope: !1180)
!1191 = !DILocation(line: 1401, column: 9, scope: !1180)
!1192 = !DILocation(line: 1402, column: 9, scope: !1180)
!1193 = !DILocation(line: 1403, column: 9, scope: !1180)
!1194 = !DILocation(line: 1404, column: 9, scope: !1180)
!1195 = !DILocation(line: 1405, column: 2, scope: !1180)
!1196 = distinct !DISubprogram(name: "z_impl_uart_rx_enable_u16", scope: !96, file: !96, line: 1433, type: !1197, scopeLine: 1436, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!1197 = !DISubroutineType(types: !1198)
!1198 = !{!145, !156, !921, !369, !427}
!1199 = !DILocalVariable(name: "dev", arg: 1, scope: !1196, file: !96, line: 1433, type: !156)
!1200 = !DILocation(line: 1433, column: 66, scope: !1196)
!1201 = !DILocalVariable(name: "buf", arg: 2, scope: !1196, file: !96, line: 1434, type: !921)
!1202 = !DILocation(line: 1434, column: 20, scope: !1196)
!1203 = !DILocalVariable(name: "len", arg: 3, scope: !1196, file: !96, line: 1434, type: !369)
!1204 = !DILocation(line: 1434, column: 32, scope: !1196)
!1205 = !DILocalVariable(name: "timeout", arg: 4, scope: !1196, file: !96, line: 1435, type: !427)
!1206 = !DILocation(line: 1435, column: 18, scope: !1196)
!1207 = !DILocation(line: 1443, column: 9, scope: !1196)
!1208 = !DILocation(line: 1444, column: 9, scope: !1196)
!1209 = !DILocation(line: 1445, column: 9, scope: !1196)
!1210 = !DILocation(line: 1446, column: 9, scope: !1196)
!1211 = !DILocation(line: 1447, column: 2, scope: !1196)
!1212 = distinct !DISubprogram(name: "z_impl_uart_rx_disable", scope: !96, file: !96, line: 1541, type: !205, scopeLine: 1542, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!1213 = !DILocalVariable(name: "dev", arg: 1, scope: !1212, file: !96, line: 1541, type: !156)
!1214 = !DILocation(line: 1541, column: 63, scope: !1212)
!1215 = !DILocation(line: 1549, column: 9, scope: !1212)
!1216 = !DILocation(line: 1550, column: 2, scope: !1212)
!1217 = distinct !DISubprogram(name: "z_impl_uart_line_ctrl_set", scope: !96, file: !96, line: 1573, type: !1218, scopeLine: 1575, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!1218 = !DISubroutineType(types: !1219)
!1219 = !{!145, !156, !178, !178}
!1220 = !DILocalVariable(name: "dev", arg: 1, scope: !1217, file: !96, line: 1573, type: !156)
!1221 = !DILocation(line: 1573, column: 66, scope: !1217)
!1222 = !DILocalVariable(name: "ctrl", arg: 2, scope: !1217, file: !96, line: 1574, type: !178)
!1223 = !DILocation(line: 1574, column: 19, scope: !1217)
!1224 = !DILocalVariable(name: "val", arg: 3, scope: !1217, file: !96, line: 1574, type: !178)
!1225 = !DILocation(line: 1574, column: 34, scope: !1217)
!1226 = !DILocation(line: 1585, column: 9, scope: !1217)
!1227 = !DILocation(line: 1586, column: 9, scope: !1217)
!1228 = !DILocation(line: 1587, column: 9, scope: !1217)
!1229 = !DILocation(line: 1588, column: 2, scope: !1217)
!1230 = distinct !DISubprogram(name: "z_impl_uart_line_ctrl_get", scope: !96, file: !96, line: 1607, type: !1231, scopeLine: 1609, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!1231 = !DISubroutineType(types: !1232)
!1232 = !{!145, !156, !178, !305}
!1233 = !DILocalVariable(name: "dev", arg: 1, scope: !1230, file: !96, line: 1607, type: !156)
!1234 = !DILocation(line: 1607, column: 66, scope: !1230)
!1235 = !DILocalVariable(name: "ctrl", arg: 2, scope: !1230, file: !96, line: 1608, type: !178)
!1236 = !DILocation(line: 1608, column: 19, scope: !1230)
!1237 = !DILocalVariable(name: "val", arg: 3, scope: !1230, file: !96, line: 1608, type: !305)
!1238 = !DILocation(line: 1608, column: 35, scope: !1230)
!1239 = !DILocation(line: 1619, column: 9, scope: !1230)
!1240 = !DILocation(line: 1620, column: 9, scope: !1230)
!1241 = !DILocation(line: 1621, column: 9, scope: !1230)
!1242 = !DILocation(line: 1622, column: 2, scope: !1230)
!1243 = distinct !DISubprogram(name: "z_impl_uart_drv_cmd", scope: !96, file: !96, line: 1643, type: !1218, scopeLine: 1645, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!1244 = !DILocalVariable(name: "dev", arg: 1, scope: !1243, file: !96, line: 1643, type: !156)
!1245 = !DILocation(line: 1643, column: 60, scope: !1243)
!1246 = !DILocalVariable(name: "cmd", arg: 2, scope: !1243, file: !96, line: 1643, type: !178)
!1247 = !DILocation(line: 1643, column: 74, scope: !1243)
!1248 = !DILocalVariable(name: "p", arg: 3, scope: !1243, file: !96, line: 1644, type: !178)
!1249 = !DILocation(line: 1644, column: 20, scope: !1243)
!1250 = !DILocation(line: 1655, column: 9, scope: !1243)
!1251 = !DILocation(line: 1656, column: 9, scope: !1243)
!1252 = !DILocation(line: 1657, column: 9, scope: !1243)
!1253 = !DILocation(line: 1658, column: 2, scope: !1243)
!1254 = distinct !DISubprogram(name: "uart_stm32_init", scope: !2, file: !2, line: 1968, type: !205, scopeLine: 1969, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!1255 = !DILocalVariable(name: "dev", arg: 1, scope: !1254, file: !2, line: 1968, type: !156)
!1256 = !DILocation(line: 1968, column: 49, scope: !1254)
!1257 = !DILocalVariable(name: "config", scope: !1254, file: !2, line: 1970, type: !1258)
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 32)
!1259 = !DILocation(line: 1970, column: 34, scope: !1254)
!1260 = !DILocation(line: 1970, column: 43, scope: !1254)
!1261 = !DILocation(line: 1970, column: 48, scope: !1254)
!1262 = !DILocalVariable(name: "err", scope: !1254, file: !2, line: 1971, type: !145)
!1263 = !DILocation(line: 1971, column: 6, scope: !1254)
!1264 = !DILocation(line: 1973, column: 33, scope: !1254)
!1265 = !DILocation(line: 1973, column: 8, scope: !1254)
!1266 = !DILocation(line: 1973, column: 6, scope: !1254)
!1267 = !DILocation(line: 1974, column: 6, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1254, file: !2, line: 1974, column: 6)
!1269 = !DILocation(line: 1974, column: 10, scope: !1268)
!1270 = !DILocation(line: 1974, column: 6, scope: !1254)
!1271 = !DILocation(line: 1975, column: 10, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !1268, file: !2, line: 1974, column: 15)
!1273 = !DILocation(line: 1975, column: 3, scope: !1272)
!1274 = !DILocation(line: 1979, column: 28, scope: !1254)
!1275 = !DILocation(line: 1979, column: 36, scope: !1254)
!1276 = !DILocation(line: 1979, column: 8, scope: !1254)
!1277 = !DILocation(line: 1979, column: 6, scope: !1254)
!1278 = !DILocation(line: 1980, column: 6, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1254, file: !2, line: 1980, column: 6)
!1280 = !DILocation(line: 1980, column: 10, scope: !1279)
!1281 = !DILocation(line: 1980, column: 6, scope: !1254)
!1282 = !DILocation(line: 1981, column: 10, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !1279, file: !2, line: 1980, column: 15)
!1284 = !DILocation(line: 1981, column: 3, scope: !1283)
!1285 = !DILocation(line: 1984, column: 39, scope: !1254)
!1286 = !DILocation(line: 1984, column: 8, scope: !1254)
!1287 = !DILocation(line: 1984, column: 6, scope: !1254)
!1288 = !DILocation(line: 1985, column: 6, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1254, file: !2, line: 1985, column: 6)
!1290 = !DILocation(line: 1985, column: 10, scope: !1289)
!1291 = !DILocation(line: 1985, column: 6, scope: !1254)
!1292 = !DILocation(line: 1986, column: 10, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1289, file: !2, line: 1985, column: 15)
!1294 = !DILocation(line: 1986, column: 3, scope: !1293)
!1295 = !DILocation(line: 1992, column: 2, scope: !1254)
!1296 = !DILocation(line: 1992, column: 10, scope: !1254)
!1297 = !DILocation(line: 1992, column: 26, scope: !1254)
!1298 = !DILocation(line: 2013, column: 2, scope: !1254)
!1299 = !DILocation(line: 2015, column: 1, scope: !1254)
!1300 = distinct !DISubprogram(name: "sys_sflist_is_empty", scope: !713, file: !713, line: 335, type: !1301, scopeLine: 335, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!1301 = !DISubroutineType(types: !1302)
!1302 = !{!176, !1303}
!1303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 32)
!1304 = !DILocalVariable(name: "list", arg: 1, scope: !1300, file: !713, line: 335, type: !1303)
!1305 = !DILocation(line: 335, column: 55, scope: !1300)
!1306 = !DILocation(line: 335, column: 92, scope: !1300)
!1307 = !DILocation(line: 335, column: 71, scope: !1300)
!1308 = !DILocation(line: 335, column: 98, scope: !1300)
!1309 = !DILocation(line: 335, column: 63, scope: !1300)
!1310 = distinct !DISubprogram(name: "sys_sflist_peek_head", scope: !713, file: !713, line: 255, type: !1311, scopeLine: 256, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!1311 = !DISubroutineType(types: !1312)
!1312 = !{!717, !1303}
!1313 = !DILocalVariable(name: "list", arg: 1, scope: !1310, file: !713, line: 255, type: !1303)
!1314 = !DILocation(line: 255, column: 64, scope: !1310)
!1315 = !DILocation(line: 257, column: 9, scope: !1310)
!1316 = !DILocation(line: 257, column: 15, scope: !1310)
!1317 = !DILocation(line: 257, column: 2, scope: !1310)
!1318 = !DILocalVariable(name: "dev", arg: 1, scope: !421, file: !2, line: 2337, type: !156)
!1319 = !DILocation(line: 2337, column: 3161, scope: !421)
!1320 = !DILocation(line: 2337, column: 3426, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !421, file: !2, line: 2337, column: 3168)
!1322 = !DILocation(line: 2337, column: 3463, scope: !421)
!1323 = !DILocation(line: 2337, column: 3484, scope: !421)
!1324 = distinct !DISubprogram(name: "uart_stm32_isr", scope: !2, file: !2, line: 1210, type: !238, scopeLine: 1211, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!1325 = !DILocalVariable(name: "dev", arg: 1, scope: !1324, file: !2, line: 1210, type: !156)
!1326 = !DILocation(line: 1210, column: 49, scope: !1324)
!1327 = !DILocalVariable(name: "data", scope: !1324, file: !2, line: 1212, type: !1328)
!1328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 32)
!1329 = !DILocation(line: 1212, column: 26, scope: !1324)
!1330 = !DILocation(line: 1212, column: 33, scope: !1324)
!1331 = !DILocation(line: 1212, column: 38, scope: !1324)
!1332 = !DILocation(line: 1237, column: 6, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !1324, file: !2, line: 1237, column: 6)
!1334 = !DILocation(line: 1237, column: 12, scope: !1333)
!1335 = !DILocation(line: 1237, column: 6, scope: !1324)
!1336 = !DILocation(line: 1238, column: 3, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1333, file: !2, line: 1237, column: 21)
!1338 = !DILocation(line: 1238, column: 9, scope: !1337)
!1339 = !DILocation(line: 1238, column: 17, scope: !1337)
!1340 = !DILocation(line: 1238, column: 22, scope: !1337)
!1341 = !DILocation(line: 1238, column: 28, scope: !1337)
!1342 = !DILocation(line: 1239, column: 2, scope: !1337)
!1343 = !DILocation(line: 1282, column: 1, scope: !1324)
!1344 = distinct !DISubprogram(name: "uart_stm32_poll_in", scope: !2, file: !2, line: 695, type: !196, scopeLine: 696, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!1345 = !DILocalVariable(name: "dev", arg: 1, scope: !1344, file: !2, line: 695, type: !156)
!1346 = !DILocation(line: 695, column: 52, scope: !1344)
!1347 = !DILocalVariable(name: "c", arg: 2, scope: !1344, file: !2, line: 695, type: !198)
!1348 = !DILocation(line: 695, column: 72, scope: !1344)
!1349 = !DILocation(line: 697, column: 36, scope: !1344)
!1350 = !DILocation(line: 697, column: 49, scope: !1344)
!1351 = !DILocation(line: 697, column: 9, scope: !1344)
!1352 = !DILocation(line: 697, column: 2, scope: !1344)
!1353 = distinct !DISubprogram(name: "uart_stm32_poll_out", scope: !2, file: !2, line: 700, type: !201, scopeLine: 701, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!1354 = !DILocalVariable(name: "dev", arg: 1, scope: !1353, file: !2, line: 700, type: !156)
!1355 = !DILocation(line: 700, column: 54, scope: !1353)
!1356 = !DILocalVariable(name: "c", arg: 2, scope: !1353, file: !2, line: 700, type: !14)
!1357 = !DILocation(line: 700, column: 73, scope: !1353)
!1358 = !DILocation(line: 702, column: 30, scope: !1353)
!1359 = !DILocation(line: 702, column: 2, scope: !1353)
!1360 = !DILocation(line: 703, column: 1, scope: !1353)
!1361 = distinct !DISubprogram(name: "uart_stm32_err_check", scope: !2, file: !2, line: 729, type: !205, scopeLine: 730, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!1362 = !DILocalVariable(name: "dev", arg: 1, scope: !1361, file: !2, line: 729, type: !156)
!1363 = !DILocation(line: 729, column: 54, scope: !1361)
!1364 = !DILocalVariable(name: "config", scope: !1361, file: !2, line: 731, type: !1258)
!1365 = !DILocation(line: 731, column: 34, scope: !1361)
!1366 = !DILocation(line: 731, column: 43, scope: !1361)
!1367 = !DILocation(line: 731, column: 48, scope: !1361)
!1368 = !DILocalVariable(name: "err", scope: !1361, file: !2, line: 732, type: !178)
!1369 = !DILocation(line: 732, column: 11, scope: !1361)
!1370 = !DILocation(line: 739, column: 32, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1361, file: !2, line: 739, column: 6)
!1372 = !DILocation(line: 739, column: 40, scope: !1371)
!1373 = !DILocation(line: 739, column: 6, scope: !1371)
!1374 = !DILocation(line: 739, column: 6, scope: !1361)
!1375 = !DILocation(line: 740, column: 7, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1371, file: !2, line: 739, column: 48)
!1377 = !DILocation(line: 741, column: 2, scope: !1376)
!1378 = !DILocation(line: 743, column: 31, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !1361, file: !2, line: 743, column: 6)
!1380 = !DILocation(line: 743, column: 39, scope: !1379)
!1381 = !DILocation(line: 743, column: 6, scope: !1379)
!1382 = !DILocation(line: 743, column: 6, scope: !1361)
!1383 = !DILocation(line: 744, column: 7, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !1379, file: !2, line: 743, column: 47)
!1385 = !DILocation(line: 745, column: 2, scope: !1384)
!1386 = !DILocation(line: 747, column: 31, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !1361, file: !2, line: 747, column: 6)
!1388 = !DILocation(line: 747, column: 39, scope: !1387)
!1389 = !DILocation(line: 747, column: 6, scope: !1387)
!1390 = !DILocation(line: 747, column: 6, scope: !1361)
!1391 = !DILocation(line: 748, column: 7, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !1387, file: !2, line: 747, column: 47)
!1393 = !DILocation(line: 749, column: 2, scope: !1392)
!1394 = !DILocation(line: 751, column: 31, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1361, file: !2, line: 751, column: 6)
!1396 = !DILocation(line: 751, column: 39, scope: !1395)
!1397 = !DILocation(line: 751, column: 6, scope: !1395)
!1398 = !DILocation(line: 751, column: 6, scope: !1361)
!1399 = !DILocation(line: 752, column: 7, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !1395, file: !2, line: 751, column: 47)
!1401 = !DILocation(line: 753, column: 2, scope: !1400)
!1402 = !DILocation(line: 756, column: 32, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !1361, file: !2, line: 756, column: 6)
!1404 = !DILocation(line: 756, column: 40, scope: !1403)
!1405 = !DILocation(line: 756, column: 6, scope: !1403)
!1406 = !DILocation(line: 756, column: 6, scope: !1361)
!1407 = !DILocation(line: 757, column: 7, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1403, file: !2, line: 756, column: 48)
!1409 = !DILocation(line: 758, column: 2, scope: !1408)
!1410 = !DILocation(line: 760, column: 6, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !1361, file: !2, line: 760, column: 6)
!1412 = !DILocation(line: 760, column: 10, scope: !1411)
!1413 = !DILocation(line: 760, column: 6, scope: !1361)
!1414 = !DILocation(line: 761, column: 26, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1411, file: !2, line: 760, column: 24)
!1416 = !DILocation(line: 761, column: 34, scope: !1415)
!1417 = !DILocation(line: 761, column: 3, scope: !1415)
!1418 = !DILocation(line: 762, column: 2, scope: !1415)
!1419 = !DILocation(line: 769, column: 6, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1361, file: !2, line: 769, column: 6)
!1421 = !DILocation(line: 769, column: 10, scope: !1420)
!1422 = !DILocation(line: 769, column: 6, scope: !1361)
!1423 = !DILocation(line: 770, column: 26, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1420, file: !2, line: 769, column: 32)
!1425 = !DILocation(line: 770, column: 34, scope: !1424)
!1426 = !DILocation(line: 770, column: 3, scope: !1424)
!1427 = !DILocation(line: 771, column: 2, scope: !1424)
!1428 = !DILocation(line: 773, column: 6, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1361, file: !2, line: 773, column: 6)
!1430 = !DILocation(line: 773, column: 10, scope: !1429)
!1431 = !DILocation(line: 773, column: 6, scope: !1361)
!1432 = !DILocation(line: 774, column: 25, scope: !1433)
!1433 = distinct !DILexicalBlock(scope: !1429, file: !2, line: 773, column: 31)
!1434 = !DILocation(line: 774, column: 33, scope: !1433)
!1435 = !DILocation(line: 774, column: 3, scope: !1433)
!1436 = !DILocation(line: 775, column: 2, scope: !1433)
!1437 = !DILocation(line: 777, column: 6, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !1361, file: !2, line: 777, column: 6)
!1439 = !DILocation(line: 777, column: 10, scope: !1438)
!1440 = !DILocation(line: 777, column: 6, scope: !1361)
!1441 = !DILocation(line: 778, column: 25, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !1438, file: !2, line: 777, column: 32)
!1443 = !DILocation(line: 778, column: 33, scope: !1442)
!1444 = !DILocation(line: 778, column: 3, scope: !1442)
!1445 = !DILocation(line: 779, column: 2, scope: !1442)
!1446 = !DILocation(line: 781, column: 6, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !1361, file: !2, line: 781, column: 6)
!1448 = !DILocation(line: 781, column: 10, scope: !1447)
!1449 = !DILocation(line: 781, column: 6, scope: !1361)
!1450 = !DILocation(line: 782, column: 25, scope: !1451)
!1451 = distinct !DILexicalBlock(scope: !1447, file: !2, line: 781, column: 30)
!1452 = !DILocation(line: 782, column: 33, scope: !1451)
!1453 = !DILocation(line: 782, column: 3, scope: !1451)
!1454 = !DILocation(line: 783, column: 2, scope: !1451)
!1455 = !DILocation(line: 785, column: 9, scope: !1361)
!1456 = !DILocation(line: 785, column: 2, scope: !1361)
!1457 = distinct !DISubprogram(name: "uart_stm32_configure", scope: !2, file: !2, line: 520, type: !209, scopeLine: 522, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!1458 = !DILocalVariable(name: "dev", arg: 1, scope: !1457, file: !2, line: 520, type: !156)
!1459 = !DILocation(line: 520, column: 54, scope: !1457)
!1460 = !DILocalVariable(name: "cfg", arg: 2, scope: !1457, file: !2, line: 521, type: !211)
!1461 = !DILocation(line: 521, column: 31, scope: !1457)
!1462 = !DILocalVariable(name: "config", scope: !1457, file: !2, line: 523, type: !1258)
!1463 = !DILocation(line: 523, column: 34, scope: !1457)
!1464 = !DILocation(line: 523, column: 43, scope: !1457)
!1465 = !DILocation(line: 523, column: 48, scope: !1457)
!1466 = !DILocalVariable(name: "data", scope: !1457, file: !2, line: 524, type: !1328)
!1467 = !DILocation(line: 524, column: 26, scope: !1457)
!1468 = !DILocation(line: 524, column: 33, scope: !1457)
!1469 = !DILocation(line: 524, column: 38, scope: !1457)
!1470 = !DILocalVariable(name: "uart_cfg", scope: !1457, file: !2, line: 525, type: !224)
!1471 = !DILocation(line: 525, column: 22, scope: !1457)
!1472 = !DILocation(line: 525, column: 33, scope: !1457)
!1473 = !DILocation(line: 525, column: 39, scope: !1457)
!1474 = !DILocalVariable(name: "parity", scope: !1457, file: !2, line: 526, type: !1475)
!1475 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !178)
!1476 = !DILocation(line: 526, column: 17, scope: !1457)
!1477 = !DILocation(line: 526, column: 51, scope: !1457)
!1478 = !DILocation(line: 526, column: 56, scope: !1457)
!1479 = !DILocation(line: 526, column: 26, scope: !1457)
!1480 = !DILocalVariable(name: "stopbits", scope: !1457, file: !2, line: 527, type: !1475)
!1481 = !DILocation(line: 527, column: 17, scope: !1457)
!1482 = !DILocation(line: 527, column: 55, scope: !1457)
!1483 = !DILocation(line: 527, column: 63, scope: !1457)
!1484 = !DILocation(line: 527, column: 68, scope: !1457)
!1485 = !DILocation(line: 527, column: 28, scope: !1457)
!1486 = !DILocalVariable(name: "databits", scope: !1457, file: !2, line: 528, type: !1475)
!1487 = !DILocation(line: 528, column: 17, scope: !1457)
!1488 = !DILocation(line: 528, column: 55, scope: !1457)
!1489 = !DILocation(line: 528, column: 60, scope: !1457)
!1490 = !DILocation(line: 529, column: 13, scope: !1457)
!1491 = !DILocation(line: 529, column: 18, scope: !1457)
!1492 = !DILocation(line: 528, column: 28, scope: !1457)
!1493 = !DILocation(line: 532, column: 7, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1457, file: !2, line: 532, column: 6)
!1495 = !DILocation(line: 532, column: 12, scope: !1494)
!1496 = !DILocation(line: 532, column: 19, scope: !1494)
!1497 = !DILocation(line: 532, column: 44, scope: !1494)
!1498 = !DILocation(line: 533, column: 7, scope: !1494)
!1499 = !DILocation(line: 533, column: 12, scope: !1494)
!1500 = !DILocation(line: 533, column: 19, scope: !1494)
!1501 = !DILocation(line: 532, column: 6, scope: !1457)
!1502 = !DILocation(line: 534, column: 3, scope: !1503)
!1503 = distinct !DILexicalBlock(scope: !1494, file: !2, line: 533, column: 46)
!1504 = !DILocation(line: 538, column: 7, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !1457, file: !2, line: 538, column: 6)
!1506 = !DILocation(line: 538, column: 12, scope: !1505)
!1507 = !DILocation(line: 538, column: 19, scope: !1505)
!1508 = !DILocation(line: 538, column: 44, scope: !1505)
!1509 = !DILocation(line: 539, column: 7, scope: !1505)
!1510 = !DILocation(line: 539, column: 12, scope: !1505)
!1511 = !DILocation(line: 539, column: 22, scope: !1505)
!1512 = !DILocation(line: 538, column: 6, scope: !1457)
!1513 = !DILocation(line: 540, column: 3, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1505, file: !2, line: 539, column: 48)
!1515 = !DILocation(line: 546, column: 33, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1457, file: !2, line: 546, column: 6)
!1517 = !DILocation(line: 546, column: 6, scope: !1516)
!1518 = !DILocation(line: 546, column: 46, scope: !1516)
!1519 = !DILocation(line: 546, column: 51, scope: !1516)
!1520 = !DILocation(line: 546, column: 43, scope: !1516)
!1521 = !DILocation(line: 546, column: 6, scope: !1457)
!1522 = !DILocation(line: 547, column: 3, scope: !1523)
!1523 = distinct !DILexicalBlock(scope: !1516, file: !2, line: 546, column: 62)
!1524 = !DILocation(line: 553, column: 33, scope: !1525)
!1525 = distinct !DILexicalBlock(scope: !1457, file: !2, line: 553, column: 6)
!1526 = !DILocation(line: 553, column: 43, scope: !1525)
!1527 = !DILocation(line: 553, column: 6, scope: !1525)
!1528 = !DILocation(line: 553, column: 54, scope: !1525)
!1529 = !DILocation(line: 553, column: 59, scope: !1525)
!1530 = !DILocation(line: 553, column: 51, scope: !1525)
!1531 = !DILocation(line: 553, column: 6, scope: !1457)
!1532 = !DILocation(line: 554, column: 3, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !1525, file: !2, line: 553, column: 70)
!1534 = !DILocation(line: 558, column: 8, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1457, file: !2, line: 558, column: 6)
!1536 = !DILocation(line: 558, column: 13, scope: !1535)
!1537 = !DILocation(line: 558, column: 23, scope: !1535)
!1538 = !DILocation(line: 559, column: 3, scope: !1535)
!1539 = !DILocation(line: 559, column: 7, scope: !1535)
!1540 = !DILocation(line: 559, column: 12, scope: !1535)
!1541 = !DILocation(line: 559, column: 22, scope: !1535)
!1542 = !DILocation(line: 559, column: 52, scope: !1535)
!1543 = !DILocation(line: 560, column: 7, scope: !1535)
!1544 = !DILocation(line: 560, column: 15, scope: !1535)
!1545 = !DILocation(line: 560, column: 22, scope: !1535)
!1546 = !DILocation(line: 560, column: 76, scope: !1535)
!1547 = !DILocation(line: 560, column: 81, scope: !1535)
!1548 = !DILocation(line: 560, column: 89, scope: !1535)
!1549 = !DILocation(line: 560, column: 96, scope: !1535)
!1550 = !DILocation(line: 560, column: 150, scope: !1535)
!1551 = !DILocation(line: 560, column: 155, scope: !1535)
!1552 = !DILocation(line: 560, column: 163, scope: !1535)
!1553 = !DILocation(line: 560, column: 170, scope: !1535)
!1554 = !DILocation(line: 560, column: 224, scope: !1535)
!1555 = !DILocation(line: 560, column: 229, scope: !1535)
!1556 = !DILocation(line: 560, column: 237, scope: !1535)
!1557 = !DILocation(line: 560, column: 244, scope: !1535)
!1558 = !DILocation(line: 562, column: 3, scope: !1535)
!1559 = !DILocation(line: 562, column: 7, scope: !1535)
!1560 = !DILocation(line: 562, column: 12, scope: !1535)
!1561 = !DILocation(line: 562, column: 22, scope: !1535)
!1562 = !DILocation(line: 562, column: 50, scope: !1535)
!1563 = !DILocation(line: 563, column: 7, scope: !1535)
!1564 = !DILocation(line: 563, column: 15, scope: !1535)
!1565 = !DILocation(line: 563, column: 22, scope: !1535)
!1566 = !DILocation(line: 563, column: 76, scope: !1535)
!1567 = !DILocation(line: 563, column: 81, scope: !1535)
!1568 = !DILocation(line: 563, column: 89, scope: !1535)
!1569 = !DILocation(line: 563, column: 96, scope: !1535)
!1570 = !DILocation(line: 563, column: 150, scope: !1535)
!1571 = !DILocation(line: 563, column: 155, scope: !1535)
!1572 = !DILocation(line: 563, column: 163, scope: !1535)
!1573 = !DILocation(line: 563, column: 170, scope: !1535)
!1574 = !DILocation(line: 563, column: 224, scope: !1535)
!1575 = !DILocation(line: 563, column: 229, scope: !1535)
!1576 = !DILocation(line: 563, column: 237, scope: !1535)
!1577 = !DILocation(line: 563, column: 244, scope: !1535)
!1578 = !DILocation(line: 563, column: 298, scope: !1535)
!1579 = !DILocation(line: 563, column: 303, scope: !1535)
!1580 = !DILocation(line: 563, column: 311, scope: !1535)
!1581 = !DILocation(line: 563, column: 318, scope: !1535)
!1582 = !DILocation(line: 563, column: 372, scope: !1535)
!1583 = !DILocation(line: 563, column: 377, scope: !1535)
!1584 = !DILocation(line: 563, column: 385, scope: !1535)
!1585 = !DILocation(line: 563, column: 392, scope: !1535)
!1586 = !DILocation(line: 563, column: 446, scope: !1535)
!1587 = !DILocation(line: 563, column: 451, scope: !1535)
!1588 = !DILocation(line: 563, column: 459, scope: !1535)
!1589 = !DILocation(line: 563, column: 466, scope: !1535)
!1590 = !DILocation(line: 563, column: 520, scope: !1535)
!1591 = !DILocation(line: 563, column: 525, scope: !1535)
!1592 = !DILocation(line: 563, column: 533, scope: !1535)
!1593 = !DILocation(line: 563, column: 540, scope: !1535)
!1594 = !DILocation(line: 558, column: 6, scope: !1457)
!1595 = !DILocation(line: 566, column: 3, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !1535, file: !2, line: 565, column: 6)
!1597 = !DILocation(line: 569, column: 19, scope: !1457)
!1598 = !DILocation(line: 569, column: 27, scope: !1457)
!1599 = !DILocation(line: 569, column: 2, scope: !1457)
!1600 = !DILocation(line: 572, column: 28, scope: !1457)
!1601 = !DILocation(line: 572, column: 33, scope: !1457)
!1602 = !DILocation(line: 572, column: 2, scope: !1457)
!1603 = !DILocation(line: 574, column: 18, scope: !1457)
!1604 = !DILocation(line: 574, column: 26, scope: !1457)
!1605 = !DILocation(line: 574, column: 2, scope: !1457)
!1606 = !DILocation(line: 581, column: 3, scope: !1457)
!1607 = !DILocation(line: 581, column: 15, scope: !1457)
!1608 = !DILocation(line: 581, column: 14, scope: !1457)
!1609 = !DILocation(line: 583, column: 2, scope: !1457)
!1610 = !DILocation(line: 584, column: 1, scope: !1457)
!1611 = distinct !DISubprogram(name: "uart_stm32_config_get", scope: !2, file: !2, line: 586, type: !222, scopeLine: 588, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!1612 = !DILocalVariable(name: "dev", arg: 1, scope: !1611, file: !2, line: 586, type: !156)
!1613 = !DILocation(line: 586, column: 55, scope: !1611)
!1614 = !DILocalVariable(name: "cfg", arg: 2, scope: !1611, file: !2, line: 587, type: !224)
!1615 = !DILocation(line: 587, column: 26, scope: !1611)
!1616 = !DILocalVariable(name: "data", scope: !1611, file: !2, line: 589, type: !1328)
!1617 = !DILocation(line: 589, column: 26, scope: !1611)
!1618 = !DILocation(line: 589, column: 33, scope: !1611)
!1619 = !DILocation(line: 589, column: 38, scope: !1611)
!1620 = !DILocalVariable(name: "uart_cfg", scope: !1611, file: !2, line: 590, type: !224)
!1621 = !DILocation(line: 590, column: 22, scope: !1611)
!1622 = !DILocation(line: 590, column: 33, scope: !1611)
!1623 = !DILocation(line: 590, column: 39, scope: !1611)
!1624 = !DILocation(line: 592, column: 18, scope: !1611)
!1625 = !DILocation(line: 592, column: 28, scope: !1611)
!1626 = !DILocation(line: 592, column: 2, scope: !1611)
!1627 = !DILocation(line: 592, column: 7, scope: !1611)
!1628 = !DILocation(line: 592, column: 16, scope: !1611)
!1629 = !DILocation(line: 593, column: 63, scope: !1611)
!1630 = !DILocation(line: 593, column: 41, scope: !1611)
!1631 = !DILocation(line: 593, column: 16, scope: !1611)
!1632 = !DILocation(line: 593, column: 2, scope: !1611)
!1633 = !DILocation(line: 593, column: 7, scope: !1611)
!1634 = !DILocation(line: 593, column: 14, scope: !1611)
!1635 = !DILocation(line: 595, column: 27, scope: !1611)
!1636 = !DILocation(line: 595, column: 3, scope: !1611)
!1637 = !DILocation(line: 594, column: 19, scope: !1611)
!1638 = !DILocation(line: 594, column: 2, scope: !1611)
!1639 = !DILocation(line: 594, column: 7, scope: !1611)
!1640 = !DILocation(line: 594, column: 17, scope: !1611)
!1641 = !DILocation(line: 597, column: 27, scope: !1611)
!1642 = !DILocation(line: 597, column: 3, scope: !1611)
!1643 = !DILocation(line: 597, column: 55, scope: !1611)
!1644 = !DILocation(line: 597, column: 33, scope: !1611)
!1645 = !DILocation(line: 596, column: 19, scope: !1611)
!1646 = !DILocation(line: 596, column: 2, scope: !1611)
!1647 = !DILocation(line: 596, column: 7, scope: !1611)
!1648 = !DILocation(line: 596, column: 17, scope: !1611)
!1649 = !DILocation(line: 599, column: 25, scope: !1611)
!1650 = !DILocation(line: 599, column: 3, scope: !1611)
!1651 = !DILocation(line: 598, column: 19, scope: !1611)
!1652 = !DILocation(line: 598, column: 2, scope: !1611)
!1653 = !DILocation(line: 598, column: 7, scope: !1611)
!1654 = !DILocation(line: 598, column: 17, scope: !1611)
!1655 = !DILocation(line: 601, column: 35, scope: !1656)
!1656 = distinct !DILexicalBlock(scope: !1611, file: !2, line: 601, column: 6)
!1657 = !DILocation(line: 601, column: 6, scope: !1656)
!1658 = !DILocation(line: 601, column: 6, scope: !1611)
!1659 = !DILocation(line: 602, column: 3, scope: !1660)
!1660 = distinct !DILexicalBlock(scope: !1656, file: !2, line: 601, column: 41)
!1661 = !DILocation(line: 602, column: 8, scope: !1660)
!1662 = !DILocation(line: 602, column: 18, scope: !1660)
!1663 = !DILocation(line: 603, column: 2, scope: !1660)
!1664 = !DILocation(line: 605, column: 2, scope: !1611)
!1665 = distinct !DISubprogram(name: "uart_stm32_fifo_fill", scope: !2, file: !2, line: 836, type: !227, scopeLine: 837, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!1666 = !DILocalVariable(name: "dev", arg: 1, scope: !1665, file: !2, line: 836, type: !156)
!1667 = !DILocation(line: 836, column: 54, scope: !1665)
!1668 = !DILocalVariable(name: "tx_data", arg: 2, scope: !1665, file: !2, line: 836, type: !229)
!1669 = !DILocation(line: 836, column: 74, scope: !1665)
!1670 = !DILocalVariable(name: "size", arg: 3, scope: !1665, file: !2, line: 836, type: !145)
!1671 = !DILocation(line: 836, column: 87, scope: !1665)
!1672 = !DILocation(line: 838, column: 57, scope: !1673)
!1673 = distinct !DILexicalBlock(scope: !1665, file: !2, line: 838, column: 6)
!1674 = !DILocation(line: 838, column: 33, scope: !1673)
!1675 = !DILocation(line: 838, column: 85, scope: !1673)
!1676 = !DILocation(line: 838, column: 63, scope: !1673)
!1677 = !DILocation(line: 838, column: 6, scope: !1673)
!1678 = !DILocation(line: 838, column: 91, scope: !1673)
!1679 = !DILocation(line: 838, column: 6, scope: !1665)
!1680 = !DILocation(line: 840, column: 3, scope: !1681)
!1681 = distinct !DILexicalBlock(scope: !1673, file: !2, line: 839, column: 28)
!1682 = !DILocation(line: 842, column: 38, scope: !1665)
!1683 = !DILocation(line: 842, column: 57, scope: !1665)
!1684 = !DILocation(line: 842, column: 66, scope: !1665)
!1685 = !DILocation(line: 842, column: 9, scope: !1665)
!1686 = !DILocation(line: 842, column: 2, scope: !1665)
!1687 = !DILocation(line: 844, column: 1, scope: !1665)
!1688 = distinct !DISubprogram(name: "uart_stm32_fifo_read", scope: !2, file: !2, line: 882, type: !233, scopeLine: 883, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!1689 = !DILocalVariable(name: "dev", arg: 1, scope: !1688, file: !2, line: 882, type: !156)
!1690 = !DILocation(line: 882, column: 54, scope: !1688)
!1691 = !DILocalVariable(name: "rx_data", arg: 2, scope: !1688, file: !2, line: 882, type: !180)
!1692 = !DILocation(line: 882, column: 68, scope: !1688)
!1693 = !DILocalVariable(name: "size", arg: 3, scope: !1688, file: !2, line: 882, type: !235)
!1694 = !DILocation(line: 882, column: 87, scope: !1688)
!1695 = !DILocation(line: 884, column: 57, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !1688, file: !2, line: 884, column: 6)
!1697 = !DILocation(line: 884, column: 33, scope: !1696)
!1698 = !DILocation(line: 884, column: 85, scope: !1696)
!1699 = !DILocation(line: 884, column: 63, scope: !1696)
!1700 = !DILocation(line: 884, column: 6, scope: !1696)
!1701 = !DILocation(line: 884, column: 91, scope: !1696)
!1702 = !DILocation(line: 884, column: 6, scope: !1688)
!1703 = !DILocation(line: 886, column: 3, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !1696, file: !2, line: 885, column: 28)
!1705 = !DILocation(line: 888, column: 38, scope: !1688)
!1706 = !DILocation(line: 888, column: 51, scope: !1688)
!1707 = !DILocation(line: 888, column: 60, scope: !1688)
!1708 = !DILocation(line: 888, column: 9, scope: !1688)
!1709 = !DILocation(line: 888, column: 2, scope: !1688)
!1710 = !DILocation(line: 890, column: 1, scope: !1688)
!1711 = distinct !DISubprogram(name: "uart_stm32_irq_tx_enable", scope: !2, file: !2, line: 933, type: !238, scopeLine: 934, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!1712 = !DILocalVariable(name: "dev", arg: 1, scope: !1711, file: !2, line: 933, type: !156)
!1713 = !DILocation(line: 933, column: 59, scope: !1711)
!1714 = !DILocalVariable(name: "config", scope: !1711, file: !2, line: 935, type: !1258)
!1715 = !DILocation(line: 935, column: 34, scope: !1711)
!1716 = !DILocation(line: 935, column: 43, scope: !1711)
!1717 = !DILocation(line: 935, column: 48, scope: !1711)
!1718 = !DILocation(line: 947, column: 23, scope: !1711)
!1719 = !DILocation(line: 947, column: 31, scope: !1711)
!1720 = !DILocation(line: 947, column: 2, scope: !1711)
!1721 = !DILocation(line: 952, column: 1, scope: !1711)
!1722 = distinct !DISubprogram(name: "uart_stm32_irq_tx_disable", scope: !2, file: !2, line: 954, type: !238, scopeLine: 955, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!1723 = !DILocalVariable(name: "dev", arg: 1, scope: !1722, file: !2, line: 954, type: !156)
!1724 = !DILocation(line: 954, column: 60, scope: !1722)
!1725 = !DILocalVariable(name: "config", scope: !1722, file: !2, line: 956, type: !1258)
!1726 = !DILocation(line: 956, column: 34, scope: !1722)
!1727 = !DILocation(line: 956, column: 43, scope: !1722)
!1728 = !DILocation(line: 956, column: 48, scope: !1722)
!1729 = !DILocation(line: 964, column: 24, scope: !1722)
!1730 = !DILocation(line: 964, column: 32, scope: !1722)
!1731 = !DILocation(line: 964, column: 2, scope: !1722)
!1732 = !DILocation(line: 974, column: 1, scope: !1722)
!1733 = distinct !DISubprogram(name: "uart_stm32_irq_tx_ready", scope: !2, file: !2, line: 976, type: !205, scopeLine: 977, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!1734 = !DILocalVariable(name: "dev", arg: 1, scope: !1733, file: !2, line: 976, type: !156)
!1735 = !DILocation(line: 976, column: 57, scope: !1733)
!1736 = !DILocalVariable(name: "config", scope: !1733, file: !2, line: 978, type: !1258)
!1737 = !DILocation(line: 978, column: 34, scope: !1733)
!1738 = !DILocation(line: 978, column: 43, scope: !1733)
!1739 = !DILocation(line: 978, column: 48, scope: !1733)
!1740 = !DILocation(line: 980, column: 35, scope: !1733)
!1741 = !DILocation(line: 980, column: 43, scope: !1733)
!1742 = !DILocation(line: 980, column: 9, scope: !1733)
!1743 = !DILocation(line: 980, column: 50, scope: !1733)
!1744 = !DILocation(line: 981, column: 27, scope: !1733)
!1745 = !DILocation(line: 981, column: 35, scope: !1733)
!1746 = !DILocation(line: 981, column: 3, scope: !1733)
!1747 = !DILocation(line: 0, scope: !1733)
!1748 = !DILocation(line: 980, column: 2, scope: !1733)
!1749 = distinct !DISubprogram(name: "uart_stm32_irq_rx_enable", scope: !2, file: !2, line: 991, type: !238, scopeLine: 992, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!1750 = !DILocalVariable(name: "dev", arg: 1, scope: !1749, file: !2, line: 991, type: !156)
!1751 = !DILocation(line: 991, column: 59, scope: !1749)
!1752 = !DILocalVariable(name: "config", scope: !1749, file: !2, line: 993, type: !1258)
!1753 = !DILocation(line: 993, column: 34, scope: !1749)
!1754 = !DILocation(line: 993, column: 43, scope: !1749)
!1755 = !DILocation(line: 993, column: 48, scope: !1749)
!1756 = !DILocation(line: 995, column: 25, scope: !1749)
!1757 = !DILocation(line: 995, column: 33, scope: !1749)
!1758 = !DILocation(line: 995, column: 2, scope: !1749)
!1759 = !DILocation(line: 996, column: 1, scope: !1749)
!1760 = distinct !DISubprogram(name: "uart_stm32_irq_rx_disable", scope: !2, file: !2, line: 998, type: !238, scopeLine: 999, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!1761 = !DILocalVariable(name: "dev", arg: 1, scope: !1760, file: !2, line: 998, type: !156)
!1762 = !DILocation(line: 998, column: 60, scope: !1760)
!1763 = !DILocalVariable(name: "config", scope: !1760, file: !2, line: 1000, type: !1258)
!1764 = !DILocation(line: 1000, column: 34, scope: !1760)
!1765 = !DILocation(line: 1000, column: 43, scope: !1760)
!1766 = !DILocation(line: 1000, column: 48, scope: !1760)
!1767 = !DILocation(line: 1002, column: 26, scope: !1760)
!1768 = !DILocation(line: 1002, column: 34, scope: !1760)
!1769 = !DILocation(line: 1002, column: 2, scope: !1760)
!1770 = !DILocation(line: 1003, column: 1, scope: !1760)
!1771 = distinct !DISubprogram(name: "uart_stm32_irq_tx_complete", scope: !2, file: !2, line: 984, type: !205, scopeLine: 985, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!1772 = !DILocalVariable(name: "dev", arg: 1, scope: !1771, file: !2, line: 984, type: !156)
!1773 = !DILocation(line: 984, column: 60, scope: !1771)
!1774 = !DILocalVariable(name: "config", scope: !1771, file: !2, line: 986, type: !1258)
!1775 = !DILocation(line: 986, column: 34, scope: !1771)
!1776 = !DILocation(line: 986, column: 43, scope: !1771)
!1777 = !DILocation(line: 986, column: 48, scope: !1771)
!1778 = !DILocation(line: 988, column: 34, scope: !1771)
!1779 = !DILocation(line: 988, column: 42, scope: !1771)
!1780 = !DILocation(line: 988, column: 9, scope: !1771)
!1781 = !DILocation(line: 988, column: 2, scope: !1771)
!1782 = distinct !DISubprogram(name: "uart_stm32_irq_rx_ready", scope: !2, file: !2, line: 1005, type: !205, scopeLine: 1006, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!1783 = !DILocalVariable(name: "dev", arg: 1, scope: !1782, file: !2, line: 1005, type: !156)
!1784 = !DILocation(line: 1005, column: 57, scope: !1782)
!1785 = !DILocalVariable(name: "config", scope: !1782, file: !2, line: 1007, type: !1258)
!1786 = !DILocation(line: 1007, column: 34, scope: !1782)
!1787 = !DILocation(line: 1007, column: 43, scope: !1782)
!1788 = !DILocation(line: 1007, column: 48, scope: !1782)
!1789 = !DILocation(line: 1012, column: 36, scope: !1782)
!1790 = !DILocation(line: 1012, column: 44, scope: !1782)
!1791 = !DILocation(line: 1012, column: 9, scope: !1782)
!1792 = !DILocation(line: 1012, column: 2, scope: !1782)
!1793 = distinct !DISubprogram(name: "uart_stm32_irq_err_enable", scope: !2, file: !2, line: 1015, type: !238, scopeLine: 1016, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!1794 = !DILocalVariable(name: "dev", arg: 1, scope: !1793, file: !2, line: 1015, type: !156)
!1795 = !DILocation(line: 1015, column: 60, scope: !1793)
!1796 = !DILocalVariable(name: "config", scope: !1793, file: !2, line: 1017, type: !1258)
!1797 = !DILocation(line: 1017, column: 34, scope: !1793)
!1798 = !DILocation(line: 1017, column: 43, scope: !1793)
!1799 = !DILocation(line: 1017, column: 48, scope: !1793)
!1800 = !DILocation(line: 1020, column: 26, scope: !1793)
!1801 = !DILocation(line: 1020, column: 34, scope: !1793)
!1802 = !DILocation(line: 1020, column: 2, scope: !1793)
!1803 = !DILocation(line: 1023, column: 9, scope: !1804)
!1804 = distinct !DILexicalBlock(scope: !1793, file: !2, line: 1023, column: 6)
!1805 = !DILocation(line: 1023, column: 17, scope: !1804)
!1806 = !DILocation(line: 1023, column: 24, scope: !1804)
!1807 = !DILocation(line: 1023, column: 78, scope: !1804)
!1808 = !DILocation(line: 1023, column: 83, scope: !1804)
!1809 = !DILocation(line: 1023, column: 91, scope: !1804)
!1810 = !DILocation(line: 1023, column: 98, scope: !1804)
!1811 = !DILocation(line: 1023, column: 152, scope: !1804)
!1812 = !DILocation(line: 1023, column: 157, scope: !1804)
!1813 = !DILocation(line: 1023, column: 165, scope: !1804)
!1814 = !DILocation(line: 1023, column: 172, scope: !1804)
!1815 = !DILocation(line: 1023, column: 6, scope: !1793)
!1816 = !DILocation(line: 1024, column: 25, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !1804, file: !2, line: 1023, column: 228)
!1818 = !DILocation(line: 1024, column: 33, scope: !1817)
!1819 = !DILocation(line: 1024, column: 3, scope: !1817)
!1820 = !DILocation(line: 1025, column: 2, scope: !1817)
!1821 = !DILocation(line: 1028, column: 23, scope: !1793)
!1822 = !DILocation(line: 1028, column: 31, scope: !1793)
!1823 = !DILocation(line: 1028, column: 2, scope: !1793)
!1824 = !DILocation(line: 1029, column: 1, scope: !1793)
!1825 = distinct !DISubprogram(name: "uart_stm32_irq_err_disable", scope: !2, file: !2, line: 1031, type: !238, scopeLine: 1032, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!1826 = !DILocalVariable(name: "dev", arg: 1, scope: !1825, file: !2, line: 1031, type: !156)
!1827 = !DILocation(line: 1031, column: 61, scope: !1825)
!1828 = !DILocalVariable(name: "config", scope: !1825, file: !2, line: 1033, type: !1258)
!1829 = !DILocation(line: 1033, column: 34, scope: !1825)
!1830 = !DILocation(line: 1033, column: 43, scope: !1825)
!1831 = !DILocation(line: 1033, column: 48, scope: !1825)
!1832 = !DILocation(line: 1036, column: 27, scope: !1825)
!1833 = !DILocation(line: 1036, column: 35, scope: !1825)
!1834 = !DILocation(line: 1036, column: 2, scope: !1825)
!1835 = !DILocation(line: 1039, column: 9, scope: !1836)
!1836 = distinct !DILexicalBlock(scope: !1825, file: !2, line: 1039, column: 6)
!1837 = !DILocation(line: 1039, column: 17, scope: !1836)
!1838 = !DILocation(line: 1039, column: 24, scope: !1836)
!1839 = !DILocation(line: 1039, column: 78, scope: !1836)
!1840 = !DILocation(line: 1039, column: 83, scope: !1836)
!1841 = !DILocation(line: 1039, column: 91, scope: !1836)
!1842 = !DILocation(line: 1039, column: 98, scope: !1836)
!1843 = !DILocation(line: 1039, column: 152, scope: !1836)
!1844 = !DILocation(line: 1039, column: 157, scope: !1836)
!1845 = !DILocation(line: 1039, column: 165, scope: !1836)
!1846 = !DILocation(line: 1039, column: 172, scope: !1836)
!1847 = !DILocation(line: 1039, column: 6, scope: !1825)
!1848 = !DILocation(line: 1040, column: 26, scope: !1849)
!1849 = distinct !DILexicalBlock(scope: !1836, file: !2, line: 1039, column: 228)
!1850 = !DILocation(line: 1040, column: 34, scope: !1849)
!1851 = !DILocation(line: 1040, column: 3, scope: !1849)
!1852 = !DILocation(line: 1041, column: 2, scope: !1849)
!1853 = !DILocation(line: 1044, column: 24, scope: !1825)
!1854 = !DILocation(line: 1044, column: 32, scope: !1825)
!1855 = !DILocation(line: 1044, column: 2, scope: !1825)
!1856 = !DILocation(line: 1045, column: 1, scope: !1825)
!1857 = distinct !DISubprogram(name: "uart_stm32_irq_is_pending", scope: !2, file: !2, line: 1047, type: !205, scopeLine: 1048, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!1858 = !DILocalVariable(name: "dev", arg: 1, scope: !1857, file: !2, line: 1047, type: !156)
!1859 = !DILocation(line: 1047, column: 59, scope: !1857)
!1860 = !DILocalVariable(name: "config", scope: !1857, file: !2, line: 1049, type: !1258)
!1861 = !DILocation(line: 1049, column: 34, scope: !1857)
!1862 = !DILocation(line: 1049, column: 43, scope: !1857)
!1863 = !DILocation(line: 1049, column: 48, scope: !1857)
!1864 = !DILocation(line: 1051, column: 38, scope: !1857)
!1865 = !DILocation(line: 1051, column: 46, scope: !1857)
!1866 = !DILocation(line: 1051, column: 11, scope: !1857)
!1867 = !DILocation(line: 1051, column: 53, scope: !1857)
!1868 = !DILocation(line: 1052, column: 30, scope: !1857)
!1869 = !DILocation(line: 1052, column: 38, scope: !1857)
!1870 = !DILocation(line: 1052, column: 4, scope: !1857)
!1871 = !DILocation(line: 1052, column: 46, scope: !1857)
!1872 = !DILocation(line: 1053, column: 29, scope: !1857)
!1873 = !DILocation(line: 1053, column: 37, scope: !1857)
!1874 = !DILocation(line: 1053, column: 4, scope: !1857)
!1875 = !DILocation(line: 1053, column: 44, scope: !1857)
!1876 = !DILocation(line: 1054, column: 28, scope: !1857)
!1877 = !DILocation(line: 1054, column: 36, scope: !1857)
!1878 = !DILocation(line: 1054, column: 4, scope: !1857)
!1879 = !DILocation(line: 0, scope: !1857)
!1880 = !DILocation(line: 1051, column: 2, scope: !1857)
!1881 = distinct !DISubprogram(name: "uart_stm32_irq_update", scope: !2, file: !2, line: 1057, type: !205, scopeLine: 1058, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!1882 = !DILocalVariable(name: "dev", arg: 1, scope: !1881, file: !2, line: 1057, type: !156)
!1883 = !DILocation(line: 1057, column: 55, scope: !1881)
!1884 = !DILocation(line: 1059, column: 2, scope: !1881)
!1885 = distinct !DISubprogram(name: "uart_stm32_irq_callback_set", scope: !2, file: !2, line: 1062, type: !252, scopeLine: 1065, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!1886 = !DILocalVariable(name: "dev", arg: 1, scope: !1885, file: !2, line: 1062, type: !156)
!1887 = !DILocation(line: 1062, column: 62, scope: !1885)
!1888 = !DILocalVariable(name: "cb", arg: 2, scope: !1885, file: !2, line: 1063, type: !254)
!1889 = !DILocation(line: 1063, column: 36, scope: !1885)
!1890 = !DILocalVariable(name: "cb_data", arg: 3, scope: !1885, file: !2, line: 1064, type: !144)
!1891 = !DILocation(line: 1064, column: 12, scope: !1885)
!1892 = !DILocalVariable(name: "data", scope: !1885, file: !2, line: 1066, type: !1328)
!1893 = !DILocation(line: 1066, column: 26, scope: !1885)
!1894 = !DILocation(line: 1066, column: 33, scope: !1885)
!1895 = !DILocation(line: 1066, column: 38, scope: !1885)
!1896 = !DILocation(line: 1068, column: 18, scope: !1885)
!1897 = !DILocation(line: 1068, column: 2, scope: !1885)
!1898 = !DILocation(line: 1068, column: 8, scope: !1885)
!1899 = !DILocation(line: 1068, column: 16, scope: !1885)
!1900 = !DILocation(line: 1069, column: 20, scope: !1885)
!1901 = !DILocation(line: 1069, column: 2, scope: !1885)
!1902 = !DILocation(line: 1069, column: 8, scope: !1885)
!1903 = !DILocation(line: 1069, column: 18, scope: !1885)
!1904 = !DILocation(line: 1075, column: 1, scope: !1885)
!1905 = distinct !DISubprogram(name: "uart_stm32_poll_in_visitor", scope: !2, file: !2, line: 613, type: !1906, scopeLine: 614, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!1906 = !DISubroutineType(types: !1907)
!1907 = !{!145, !156, !144, !1908}
!1908 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_in_fn", file: !2, line: 609, baseType: !1909)
!1909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1910, size: 32)
!1910 = !DISubroutineType(types: !1911)
!1911 = !{null, !1258, !144}
!1912 = !DILocalVariable(name: "dev", arg: 1, scope: !1905, file: !2, line: 613, type: !156)
!1913 = !DILocation(line: 613, column: 60, scope: !1905)
!1914 = !DILocalVariable(name: "in", arg: 2, scope: !1905, file: !2, line: 613, type: !144)
!1915 = !DILocation(line: 613, column: 71, scope: !1905)
!1916 = !DILocalVariable(name: "get_fn", arg: 3, scope: !1905, file: !2, line: 613, type: !1908)
!1917 = !DILocation(line: 613, column: 86, scope: !1905)
!1918 = !DILocalVariable(name: "config", scope: !1905, file: !2, line: 615, type: !1258)
!1919 = !DILocation(line: 615, column: 34, scope: !1905)
!1920 = !DILocation(line: 615, column: 43, scope: !1905)
!1921 = !DILocation(line: 615, column: 48, scope: !1905)
!1922 = !DILocation(line: 618, column: 32, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1905, file: !2, line: 618, column: 6)
!1924 = !DILocation(line: 618, column: 40, scope: !1923)
!1925 = !DILocation(line: 618, column: 6, scope: !1923)
!1926 = !DILocation(line: 618, column: 6, scope: !1905)
!1927 = !DILocation(line: 619, column: 26, scope: !1928)
!1928 = distinct !DILexicalBlock(scope: !1923, file: !2, line: 618, column: 48)
!1929 = !DILocation(line: 619, column: 34, scope: !1928)
!1930 = !DILocation(line: 619, column: 3, scope: !1928)
!1931 = !DILocation(line: 620, column: 2, scope: !1928)
!1932 = !DILocation(line: 626, column: 34, scope: !1933)
!1933 = distinct !DILexicalBlock(scope: !1905, file: !2, line: 626, column: 6)
!1934 = !DILocation(line: 626, column: 42, scope: !1933)
!1935 = !DILocation(line: 626, column: 7, scope: !1933)
!1936 = !DILocation(line: 626, column: 6, scope: !1905)
!1937 = !DILocation(line: 627, column: 3, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1933, file: !2, line: 626, column: 50)
!1939 = !DILocation(line: 630, column: 2, scope: !1905)
!1940 = !DILocation(line: 630, column: 9, scope: !1905)
!1941 = !DILocation(line: 630, column: 17, scope: !1905)
!1942 = !DILocation(line: 632, column: 2, scope: !1905)
!1943 = !DILocation(line: 633, column: 1, scope: !1905)
!1944 = distinct !DISubprogram(name: "poll_in_u8", scope: !2, file: !2, line: 685, type: !1910, scopeLine: 686, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!1945 = !DILocalVariable(name: "config", arg: 1, scope: !1944, file: !2, line: 685, type: !1258)
!1946 = !DILocation(line: 685, column: 56, scope: !1944)
!1947 = !DILocalVariable(name: "in", arg: 2, scope: !1944, file: !2, line: 685, type: !144)
!1948 = !DILocation(line: 685, column: 70, scope: !1944)
!1949 = !DILocation(line: 687, column: 64, scope: !1944)
!1950 = !DILocation(line: 687, column: 72, scope: !1944)
!1951 = !DILocation(line: 687, column: 42, scope: !1944)
!1952 = !DILocation(line: 687, column: 21, scope: !1944)
!1953 = !DILocation(line: 687, column: 25, scope: !1944)
!1954 = !DILocation(line: 688, column: 1, scope: !1944)
!1955 = distinct !DISubprogram(name: "LL_USART_IsActiveFlag_ORE", scope: !1956, file: !1956, line: 2715, type: !1957, scopeLine: 2716, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!1956 = !DIFile(filename: "modules/hal/stm32/stm32cube/stm32f0xx/drivers/include/stm32f0xx_ll_usart.h", directory: "/home/sri/zephyrproject")
!1957 = !DISubroutineType(types: !1958)
!1958 = !{!178, !1959}
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1960, size: 32)
!1960 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !261)
!1961 = !DILocalVariable(name: "USARTx", arg: 1, scope: !1955, file: !1956, line: 2715, type: !1959)
!1962 = !DILocation(line: 2715, column: 73, scope: !1955)
!1963 = !DILocation(line: 2717, column: 14, scope: !1955)
!1964 = !DILocation(line: 2717, column: 22, scope: !1955)
!1965 = !DILocation(line: 2717, column: 27, scope: !1955)
!1966 = !DILocation(line: 2717, column: 48, scope: !1955)
!1967 = !DILocation(line: 2717, column: 11, scope: !1955)
!1968 = !DILocation(line: 2717, column: 3, scope: !1955)
!1969 = distinct !DISubprogram(name: "LL_USART_ClearFlag_ORE", scope: !1956, file: !1956, line: 2979, type: !1970, scopeLine: 2980, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!1970 = !DISubroutineType(types: !1971)
!1971 = !{null, !260}
!1972 = !DILocalVariable(name: "USARTx", arg: 1, scope: !1969, file: !1956, line: 2979, type: !260)
!1973 = !DILocation(line: 2979, column: 60, scope: !1969)
!1974 = !DILocation(line: 2981, column: 5, scope: !1969)
!1975 = !DILocation(line: 2981, column: 13, scope: !1969)
!1976 = !DILocation(line: 2981, column: 18, scope: !1969)
!1977 = !DILocation(line: 2982, column: 1, scope: !1969)
!1978 = distinct !DISubprogram(name: "LL_USART_IsActiveFlag_RXNE", scope: !1956, file: !1956, line: 2737, type: !1957, scopeLine: 2738, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!1979 = !DILocalVariable(name: "USARTx", arg: 1, scope: !1978, file: !1956, line: 2737, type: !1959)
!1980 = !DILocation(line: 2737, column: 74, scope: !1978)
!1981 = !DILocation(line: 2739, column: 14, scope: !1978)
!1982 = !DILocation(line: 2739, column: 22, scope: !1978)
!1983 = !DILocation(line: 2739, column: 27, scope: !1978)
!1984 = !DILocation(line: 2739, column: 48, scope: !1978)
!1985 = !DILocation(line: 2739, column: 11, scope: !1978)
!1986 = !DILocation(line: 2739, column: 3, scope: !1978)
!1987 = distinct !DISubprogram(name: "LL_USART_ReceiveData8", scope: !1956, file: !1956, line: 3701, type: !1988, scopeLine: 3702, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!1988 = !DISubroutineType(types: !1989)
!1989 = !{!173, !1959}
!1990 = !DILocalVariable(name: "USARTx", arg: 1, scope: !1987, file: !1956, line: 3701, type: !1959)
!1991 = !DILocation(line: 3701, column: 68, scope: !1987)
!1992 = !DILocation(line: 3703, column: 22, scope: !1987)
!1993 = !DILocation(line: 3703, column: 30, scope: !1987)
!1994 = !DILocation(line: 3703, column: 21, scope: !1987)
!1995 = !DILocation(line: 3703, column: 35, scope: !1987)
!1996 = !DILocation(line: 3703, column: 60, scope: !1987)
!1997 = !DILocation(line: 3703, column: 10, scope: !1987)
!1998 = !DILocation(line: 3703, column: 3, scope: !1987)
!1999 = distinct !DISubprogram(name: "uart_stm32_poll_out_visitor", scope: !2, file: !2, line: 638, type: !2000, scopeLine: 639, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!2000 = !DISubroutineType(types: !2001)
!2001 = !{null, !156, !144, !2002}
!2002 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_out_fn", file: !2, line: 635, baseType: !1909)
!2003 = !DILocalVariable(name: "dev", arg: 1, scope: !1999, file: !2, line: 638, type: !156)
!2004 = !DILocation(line: 638, column: 62, scope: !1999)
!2005 = !DILocalVariable(name: "out", arg: 2, scope: !1999, file: !2, line: 638, type: !144)
!2006 = !DILocation(line: 638, column: 73, scope: !1999)
!2007 = !DILocalVariable(name: "set_fn", arg: 3, scope: !1999, file: !2, line: 638, type: !2002)
!2008 = !DILocation(line: 638, column: 90, scope: !1999)
!2009 = !DILocalVariable(name: "config", scope: !1999, file: !2, line: 640, type: !1258)
!2010 = !DILocation(line: 640, column: 34, scope: !1999)
!2011 = !DILocation(line: 640, column: 43, scope: !1999)
!2012 = !DILocation(line: 640, column: 48, scope: !1999)
!2013 = !DILocalVariable(name: "key", scope: !1999, file: !2, line: 644, type: !179)
!2014 = !DILocation(line: 644, column: 15, scope: !1999)
!2015 = !DILocation(line: 651, column: 2, scope: !1999)
!2016 = !DILocation(line: 652, column: 33, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !2018, file: !2, line: 652, column: 7)
!2018 = distinct !DILexicalBlock(scope: !1999, file: !2, line: 651, column: 12)
!2019 = !DILocation(line: 652, column: 41, scope: !2017)
!2020 = !DILocation(line: 652, column: 7, scope: !2017)
!2021 = !DILocation(line: 652, column: 7, scope: !2018)
!2022 = !DILocalVariable(name: "key", scope: !2023, file: !2024, line: 44, type: !179)
!2023 = distinct !DISubprogram(name: "arch_irq_lock", scope: !2024, file: !2024, line: 42, type: !2025, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!2024 = !DIFile(filename: "include/zephyr/arch/arm/asm_inline_gcc.h", directory: "/home/sri/zephyrproject/zephyr")
!2025 = !DISubroutineType(types: !2026)
!2026 = !{!179}
!2027 = !DILocation(line: 44, column: 15, scope: !2023, inlinedAt: !2028)
!2028 = distinct !DILocation(line: 653, column: 10, scope: !2029)
!2029 = distinct !DILexicalBlock(scope: !2017, file: !2, line: 652, column: 49)
!2030 = !DILocation(line: 48, column: 2, scope: !2023, inlinedAt: !2028)
!2031 = !{i64 66984}
!2032 = !DILocation(line: 80, column: 9, scope: !2023, inlinedAt: !2028)
!2033 = !DILocation(line: 653, column: 8, scope: !2029)
!2034 = !DILocation(line: 654, column: 34, scope: !2035)
!2035 = distinct !DILexicalBlock(scope: !2029, file: !2, line: 654, column: 8)
!2036 = !DILocation(line: 654, column: 42, scope: !2035)
!2037 = !DILocation(line: 654, column: 8, scope: !2035)
!2038 = !DILocation(line: 654, column: 8, scope: !2029)
!2039 = !DILocation(line: 655, column: 5, scope: !2040)
!2040 = distinct !DILexicalBlock(scope: !2035, file: !2, line: 654, column: 50)
!2041 = !DILocation(line: 657, column: 20, scope: !2029)
!2042 = !DILocalVariable(name: "key", arg: 1, scope: !2043, file: !2024, line: 88, type: !179)
!2043 = distinct !DISubprogram(name: "arch_irq_unlock", scope: !2024, file: !2024, line: 88, type: !2044, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!2044 = !DISubroutineType(types: !2045)
!2045 = !{null, !179}
!2046 = !DILocation(line: 88, column: 80, scope: !2043, inlinedAt: !2047)
!2047 = distinct !DILocation(line: 657, column: 4, scope: !2029)
!2048 = !DILocation(line: 91, column: 6, scope: !2049, inlinedAt: !2047)
!2049 = distinct !DILexicalBlock(scope: !2043, file: !2024, line: 91, column: 6)
!2050 = !DILocation(line: 91, column: 10, scope: !2049, inlinedAt: !2047)
!2051 = !DILocation(line: 91, column: 6, scope: !2043, inlinedAt: !2047)
!2052 = !DILocation(line: 92, column: 3, scope: !2053, inlinedAt: !2047)
!2053 = distinct !DILexicalBlock(scope: !2049, file: !2024, line: 91, column: 17)
!2054 = !DILocation(line: 94, column: 2, scope: !2043, inlinedAt: !2047)
!2055 = !{i64 67288}
!2056 = !DILocation(line: 114, column: 1, scope: !2043, inlinedAt: !2047)
!2057 = !DILocation(line: 658, column: 3, scope: !2029)
!2058 = distinct !{!2058, !2015, !2059}
!2059 = !DILocation(line: 659, column: 2, scope: !1999)
!2060 = !DILocation(line: 681, column: 2, scope: !1999)
!2061 = !DILocation(line: 681, column: 9, scope: !1999)
!2062 = !DILocation(line: 681, column: 17, scope: !1999)
!2063 = !DILocation(line: 682, column: 18, scope: !1999)
!2064 = !DILocation(line: 88, column: 80, scope: !2043, inlinedAt: !2065)
!2065 = distinct !DILocation(line: 682, column: 2, scope: !1999)
!2066 = !DILocation(line: 91, column: 6, scope: !2049, inlinedAt: !2065)
!2067 = !DILocation(line: 91, column: 10, scope: !2049, inlinedAt: !2065)
!2068 = !DILocation(line: 91, column: 6, scope: !2043, inlinedAt: !2065)
!2069 = !DILocation(line: 92, column: 3, scope: !2053, inlinedAt: !2065)
!2070 = !DILocation(line: 94, column: 2, scope: !2043, inlinedAt: !2065)
!2071 = !DILocation(line: 114, column: 1, scope: !2043, inlinedAt: !2065)
!2072 = !DILocation(line: 683, column: 1, scope: !1999)
!2073 = distinct !DISubprogram(name: "poll_out_u8", scope: !2, file: !2, line: 690, type: !1910, scopeLine: 691, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!2074 = !DILocalVariable(name: "config", arg: 1, scope: !2073, file: !2, line: 690, type: !1258)
!2075 = !DILocation(line: 690, column: 57, scope: !2073)
!2076 = !DILocalVariable(name: "out", arg: 2, scope: !2073, file: !2, line: 690, type: !144)
!2077 = !DILocation(line: 690, column: 71, scope: !2073)
!2078 = !DILocation(line: 692, column: 25, scope: !2073)
!2079 = !DILocation(line: 692, column: 33, scope: !2073)
!2080 = !DILocation(line: 692, column: 53, scope: !2073)
!2081 = !DILocation(line: 692, column: 40, scope: !2073)
!2082 = !DILocation(line: 692, column: 2, scope: !2073)
!2083 = !DILocation(line: 693, column: 1, scope: !2073)
!2084 = distinct !DISubprogram(name: "LL_USART_IsActiveFlag_TXE", scope: !1956, file: !1956, line: 2759, type: !1957, scopeLine: 2760, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!2085 = !DILocalVariable(name: "USARTx", arg: 1, scope: !2084, file: !1956, line: 2759, type: !1959)
!2086 = !DILocation(line: 2759, column: 73, scope: !2084)
!2087 = !DILocation(line: 2761, column: 14, scope: !2084)
!2088 = !DILocation(line: 2761, column: 22, scope: !2084)
!2089 = !DILocation(line: 2761, column: 27, scope: !2084)
!2090 = !DILocation(line: 2761, column: 48, scope: !2084)
!2091 = !DILocation(line: 2761, column: 11, scope: !2084)
!2092 = !DILocation(line: 2761, column: 3, scope: !2084)
!2093 = distinct !DISubprogram(name: "LL_USART_TransmitData8", scope: !1956, file: !1956, line: 3724, type: !2094, scopeLine: 3725, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!2094 = !DISubroutineType(types: !2095)
!2095 = !{null, !260, !173}
!2096 = !DILocalVariable(name: "USARTx", arg: 1, scope: !2093, file: !1956, line: 3724, type: !260)
!2097 = !DILocation(line: 3724, column: 60, scope: !2093)
!2098 = !DILocalVariable(name: "Value", arg: 2, scope: !2093, file: !1956, line: 3724, type: !173)
!2099 = !DILocation(line: 3724, column: 76, scope: !2093)
!2100 = !DILocation(line: 3726, column: 17, scope: !2093)
!2101 = !DILocation(line: 3726, column: 3, scope: !2093)
!2102 = !DILocation(line: 3726, column: 11, scope: !2093)
!2103 = !DILocation(line: 3726, column: 15, scope: !2093)
!2104 = !DILocation(line: 3727, column: 1, scope: !2093)
!2105 = distinct !DISubprogram(name: "LL_USART_IsActiveFlag_PE", scope: !1956, file: !1956, line: 2682, type: !1957, scopeLine: 2683, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!2106 = !DILocalVariable(name: "USARTx", arg: 1, scope: !2105, file: !1956, line: 2682, type: !1959)
!2107 = !DILocation(line: 2682, column: 72, scope: !2105)
!2108 = !DILocation(line: 2684, column: 14, scope: !2105)
!2109 = !DILocation(line: 2684, column: 22, scope: !2105)
!2110 = !DILocation(line: 2684, column: 27, scope: !2105)
!2111 = !DILocation(line: 2684, column: 48, scope: !2105)
!2112 = !DILocation(line: 2684, column: 11, scope: !2105)
!2113 = !DILocation(line: 2684, column: 3, scope: !2105)
!2114 = distinct !DISubprogram(name: "LL_USART_IsActiveFlag_FE", scope: !1956, file: !1956, line: 2693, type: !1957, scopeLine: 2694, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!2115 = !DILocalVariable(name: "USARTx", arg: 1, scope: !2114, file: !1956, line: 2693, type: !1959)
!2116 = !DILocation(line: 2693, column: 72, scope: !2114)
!2117 = !DILocation(line: 2695, column: 14, scope: !2114)
!2118 = !DILocation(line: 2695, column: 22, scope: !2114)
!2119 = !DILocation(line: 2695, column: 27, scope: !2114)
!2120 = !DILocation(line: 2695, column: 48, scope: !2114)
!2121 = !DILocation(line: 2695, column: 11, scope: !2114)
!2122 = !DILocation(line: 2695, column: 3, scope: !2114)
!2123 = distinct !DISubprogram(name: "LL_USART_IsActiveFlag_NE", scope: !1956, file: !1956, line: 2704, type: !1957, scopeLine: 2705, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!2124 = !DILocalVariable(name: "USARTx", arg: 1, scope: !2123, file: !1956, line: 2704, type: !1959)
!2125 = !DILocation(line: 2704, column: 72, scope: !2123)
!2126 = !DILocation(line: 2706, column: 14, scope: !2123)
!2127 = !DILocation(line: 2706, column: 22, scope: !2123)
!2128 = !DILocation(line: 2706, column: 27, scope: !2123)
!2129 = !DILocation(line: 2706, column: 48, scope: !2123)
!2130 = !DILocation(line: 2706, column: 11, scope: !2123)
!2131 = !DILocation(line: 2706, column: 3, scope: !2123)
!2132 = distinct !DISubprogram(name: "LL_USART_IsActiveFlag_LBD", scope: !1956, file: !1956, line: 2773, type: !1957, scopeLine: 2774, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!2133 = !DILocalVariable(name: "USARTx", arg: 1, scope: !2132, file: !1956, line: 2773, type: !1959)
!2134 = !DILocation(line: 2773, column: 73, scope: !2132)
!2135 = !DILocation(line: 2775, column: 14, scope: !2132)
!2136 = !DILocation(line: 2775, column: 22, scope: !2132)
!2137 = !DILocation(line: 2775, column: 27, scope: !2132)
!2138 = !DILocation(line: 2775, column: 48, scope: !2132)
!2139 = !DILocation(line: 2775, column: 11, scope: !2132)
!2140 = !DILocation(line: 2775, column: 3, scope: !2132)
!2141 = distinct !DISubprogram(name: "LL_USART_ClearFlag_LBD", scope: !1956, file: !1956, line: 3016, type: !1970, scopeLine: 3017, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!2142 = !DILocalVariable(name: "USARTx", arg: 1, scope: !2141, file: !1956, line: 3016, type: !260)
!2143 = !DILocation(line: 3016, column: 60, scope: !2141)
!2144 = !DILocation(line: 3018, column: 5, scope: !2141)
!2145 = !DILocation(line: 3018, column: 13, scope: !2141)
!2146 = !DILocation(line: 3018, column: 18, scope: !2141)
!2147 = !DILocation(line: 3019, column: 1, scope: !2141)
!2148 = distinct !DISubprogram(name: "LL_USART_ClearFlag_PE", scope: !1956, file: !1956, line: 2946, type: !1970, scopeLine: 2947, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!2149 = !DILocalVariable(name: "USARTx", arg: 1, scope: !2148, file: !1956, line: 2946, type: !260)
!2150 = !DILocation(line: 2946, column: 59, scope: !2148)
!2151 = !DILocation(line: 2948, column: 5, scope: !2148)
!2152 = !DILocation(line: 2948, column: 13, scope: !2148)
!2153 = !DILocation(line: 2948, column: 18, scope: !2148)
!2154 = !DILocation(line: 2949, column: 1, scope: !2148)
!2155 = distinct !DISubprogram(name: "LL_USART_ClearFlag_FE", scope: !1956, file: !1956, line: 2957, type: !1970, scopeLine: 2958, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!2156 = !DILocalVariable(name: "USARTx", arg: 1, scope: !2155, file: !1956, line: 2957, type: !260)
!2157 = !DILocation(line: 2957, column: 59, scope: !2155)
!2158 = !DILocation(line: 2959, column: 5, scope: !2155)
!2159 = !DILocation(line: 2959, column: 13, scope: !2155)
!2160 = !DILocation(line: 2959, column: 18, scope: !2155)
!2161 = !DILocation(line: 2960, column: 1, scope: !2155)
!2162 = distinct !DISubprogram(name: "LL_USART_ClearFlag_NE", scope: !1956, file: !1956, line: 2968, type: !1970, scopeLine: 2969, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!2163 = !DILocalVariable(name: "USARTx", arg: 1, scope: !2162, file: !1956, line: 2968, type: !260)
!2164 = !DILocation(line: 2968, column: 59, scope: !2162)
!2165 = !DILocation(line: 2970, column: 5, scope: !2162)
!2166 = !DILocation(line: 2970, column: 13, scope: !2162)
!2167 = !DILocation(line: 2970, column: 18, scope: !2162)
!2168 = !DILocation(line: 2971, column: 1, scope: !2162)
!2169 = distinct !DISubprogram(name: "uart_stm32_cfg2ll_parity", scope: !2, file: !2, line: 285, type: !2170, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!2170 = !DISubroutineType(types: !2171)
!2171 = !{!178, !104}
!2172 = !DILocalVariable(name: "parity", arg: 1, scope: !2169, file: !2, line: 285, type: !104)
!2173 = !DILocation(line: 285, column: 73, scope: !2169)
!2174 = !DILocation(line: 287, column: 10, scope: !2169)
!2175 = !DILocation(line: 287, column: 2, scope: !2169)
!2176 = !DILocation(line: 289, column: 3, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !2169, file: !2, line: 287, column: 18)
!2178 = !DILocation(line: 291, column: 3, scope: !2177)
!2179 = !DILocation(line: 292, column: 2, scope: !2177)
!2180 = !DILocation(line: 294, column: 3, scope: !2177)
!2181 = !DILocation(line: 296, column: 1, scope: !2169)
!2182 = distinct !DISubprogram(name: "uart_stm32_cfg2ll_stopbits", scope: !2, file: !2, line: 311, type: !2183, scopeLine: 313, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!2183 = !DISubroutineType(types: !2184)
!2184 = !{!178, !1258, !124}
!2185 = !DILocalVariable(name: "config", arg: 1, scope: !2182, file: !2, line: 311, type: !1258)
!2186 = !DILocation(line: 311, column: 83, scope: !2182)
!2187 = !DILocalVariable(name: "sb", arg: 2, scope: !2182, file: !2, line: 312, type: !124)
!2188 = !DILocation(line: 312, column: 35, scope: !2182)
!2189 = !DILocation(line: 314, column: 10, scope: !2182)
!2190 = !DILocation(line: 314, column: 2, scope: !2182)
!2191 = !DILocation(line: 324, column: 3, scope: !2192)
!2192 = distinct !DILexicalBlock(scope: !2182, file: !2, line: 314, column: 14)
!2193 = !DILocation(line: 327, column: 3, scope: !2192)
!2194 = !DILocation(line: 337, column: 3, scope: !2192)
!2195 = !DILocation(line: 339, column: 2, scope: !2192)
!2196 = !DILocation(line: 341, column: 3, scope: !2192)
!2197 = !DILocation(line: 343, column: 1, scope: !2182)
!2198 = distinct !DISubprogram(name: "uart_stm32_cfg2ll_databits", scope: !2, file: !2, line: 366, type: !2199, scopeLine: 368, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!2199 = !DISubroutineType(types: !2200)
!2200 = !{!178, !111, !104}
!2201 = !DILocalVariable(name: "db", arg: 1, scope: !2198, file: !2, line: 366, type: !111)
!2202 = !DILocation(line: 366, column: 78, scope: !2198)
!2203 = !DILocalVariable(name: "p", arg: 2, scope: !2198, file: !2, line: 367, type: !104)
!2204 = !DILocation(line: 367, column: 33, scope: !2198)
!2205 = !DILocation(line: 369, column: 10, scope: !2198)
!2206 = !DILocation(line: 369, column: 2, scope: !2198)
!2207 = !DILocation(line: 373, column: 7, scope: !2208)
!2208 = distinct !DILexicalBlock(scope: !2209, file: !2, line: 373, column: 7)
!2209 = distinct !DILexicalBlock(scope: !2198, file: !2, line: 369, column: 14)
!2210 = !DILocation(line: 373, column: 9, scope: !2208)
!2211 = !DILocation(line: 373, column: 7, scope: !2209)
!2212 = !DILocation(line: 374, column: 4, scope: !2213)
!2213 = distinct !DILexicalBlock(scope: !2208, file: !2, line: 373, column: 34)
!2214 = !DILocation(line: 376, column: 4, scope: !2215)
!2215 = distinct !DILexicalBlock(scope: !2208, file: !2, line: 375, column: 10)
!2216 = !DILocation(line: 381, column: 3, scope: !2209)
!2217 = !DILocation(line: 383, column: 2, scope: !2209)
!2218 = !DILocation(line: 385, column: 7, scope: !2219)
!2219 = distinct !DILexicalBlock(scope: !2209, file: !2, line: 385, column: 7)
!2220 = !DILocation(line: 385, column: 9, scope: !2219)
!2221 = !DILocation(line: 385, column: 7, scope: !2209)
!2222 = !DILocation(line: 386, column: 4, scope: !2223)
!2223 = distinct !DILexicalBlock(scope: !2219, file: !2, line: 385, column: 34)
!2224 = !DILocation(line: 389, column: 4, scope: !2225)
!2225 = distinct !DILexicalBlock(scope: !2219, file: !2, line: 388, column: 10)
!2226 = !DILocation(line: 394, column: 1, scope: !2198)
!2227 = distinct !DISubprogram(name: "uart_stm32_ll2cfg_stopbits", scope: !2, file: !2, line: 345, type: !2228, scopeLine: 346, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!2228 = !DISubroutineType(types: !2229)
!2229 = !{!124, !178}
!2230 = !DILocalVariable(name: "sb", arg: 1, scope: !2227, file: !2, line: 345, type: !178)
!2231 = !DILocation(line: 345, column: 78, scope: !2227)
!2232 = !DILocation(line: 347, column: 10, scope: !2227)
!2233 = !DILocation(line: 347, column: 2, scope: !2227)
!2234 = !DILocation(line: 351, column: 3, scope: !2235)
!2235 = distinct !DILexicalBlock(scope: !2227, file: !2, line: 347, column: 14)
!2236 = !DILocation(line: 354, column: 3, scope: !2235)
!2237 = !DILocation(line: 358, column: 3, scope: !2235)
!2238 = !DILocation(line: 360, column: 2, scope: !2235)
!2239 = !DILocation(line: 362, column: 3, scope: !2235)
!2240 = !DILocation(line: 364, column: 1, scope: !2227)
!2241 = distinct !DISubprogram(name: "uart_stm32_ll2cfg_databits", scope: !2, file: !2, line: 396, type: !2242, scopeLine: 398, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!2242 = !DISubroutineType(types: !2243)
!2243 = !{!111, !178, !178}
!2244 = !DILocalVariable(name: "db", arg: 1, scope: !2241, file: !2, line: 396, type: !178)
!2245 = !DILocation(line: 396, column: 78, scope: !2241)
!2246 = !DILocalVariable(name: "p", arg: 2, scope: !2241, file: !2, line: 397, type: !178)
!2247 = !DILocation(line: 397, column: 22, scope: !2241)
!2248 = !DILocation(line: 399, column: 10, scope: !2241)
!2249 = !DILocation(line: 399, column: 2, scope: !2241)
!2250 = !DILocation(line: 403, column: 7, scope: !2251)
!2251 = distinct !DILexicalBlock(scope: !2252, file: !2, line: 403, column: 7)
!2252 = distinct !DILexicalBlock(scope: !2241, file: !2, line: 399, column: 14)
!2253 = !DILocation(line: 403, column: 9, scope: !2251)
!2254 = !DILocation(line: 403, column: 7, scope: !2252)
!2255 = !DILocation(line: 404, column: 4, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !2251, file: !2, line: 403, column: 25)
!2257 = !DILocation(line: 406, column: 4, scope: !2258)
!2258 = distinct !DILexicalBlock(scope: !2251, file: !2, line: 405, column: 10)
!2259 = !DILocation(line: 411, column: 7, scope: !2260)
!2260 = distinct !DILexicalBlock(scope: !2252, file: !2, line: 411, column: 7)
!2261 = !DILocation(line: 411, column: 9, scope: !2260)
!2262 = !DILocation(line: 411, column: 7, scope: !2252)
!2263 = !DILocation(line: 412, column: 4, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !2260, file: !2, line: 411, column: 25)
!2265 = !DILocation(line: 414, column: 4, scope: !2266)
!2266 = distinct !DILexicalBlock(scope: !2260, file: !2, line: 413, column: 10)
!2267 = !DILocation(line: 417, column: 2, scope: !2252)
!2268 = !DILocation(line: 419, column: 7, scope: !2269)
!2269 = distinct !DILexicalBlock(scope: !2252, file: !2, line: 419, column: 7)
!2270 = !DILocation(line: 419, column: 9, scope: !2269)
!2271 = !DILocation(line: 419, column: 7, scope: !2252)
!2272 = !DILocation(line: 420, column: 4, scope: !2273)
!2273 = distinct !DILexicalBlock(scope: !2269, file: !2, line: 419, column: 25)
!2274 = !DILocation(line: 422, column: 4, scope: !2275)
!2275 = distinct !DILexicalBlock(scope: !2269, file: !2, line: 421, column: 10)
!2276 = !DILocation(line: 425, column: 1, scope: !2241)
!2277 = distinct !DISubprogram(name: "LL_USART_Disable", scope: !1956, file: !1956, line: 590, type: !1970, scopeLine: 591, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!2278 = !DILocalVariable(name: "USARTx", arg: 1, scope: !2277, file: !1956, line: 590, type: !260)
!2279 = !DILocation(line: 590, column: 54, scope: !2277)
!2280 = !DILocation(line: 592, column: 5, scope: !2277)
!2281 = !DILocation(line: 592, column: 13, scope: !2277)
!2282 = !DILocation(line: 592, column: 18, scope: !2277)
!2283 = !DILocation(line: 593, column: 1, scope: !2277)
!2284 = distinct !DISubprogram(name: "uart_stm32_parameters_set", scope: !2, file: !2, line: 462, type: !2285, scopeLine: 464, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!2285 = !DISubroutineType(types: !2286)
!2286 = !{null, !156, !211}
!2287 = !DILocalVariable(name: "dev", arg: 1, scope: !2284, file: !2, line: 462, type: !156)
!2288 = !DILocation(line: 462, column: 60, scope: !2284)
!2289 = !DILocalVariable(name: "cfg", arg: 2, scope: !2284, file: !2, line: 463, type: !211)
!2290 = !DILocation(line: 463, column: 37, scope: !2284)
!2291 = !DILocalVariable(name: "config", scope: !2284, file: !2, line: 465, type: !1258)
!2292 = !DILocation(line: 465, column: 34, scope: !2284)
!2293 = !DILocation(line: 465, column: 43, scope: !2284)
!2294 = !DILocation(line: 465, column: 48, scope: !2284)
!2295 = !DILocalVariable(name: "data", scope: !2284, file: !2, line: 466, type: !1328)
!2296 = !DILocation(line: 466, column: 26, scope: !2284)
!2297 = !DILocation(line: 466, column: 33, scope: !2284)
!2298 = !DILocation(line: 466, column: 38, scope: !2284)
!2299 = !DILocalVariable(name: "uart_cfg", scope: !2284, file: !2, line: 467, type: !224)
!2300 = !DILocation(line: 467, column: 22, scope: !2284)
!2301 = !DILocation(line: 467, column: 33, scope: !2284)
!2302 = !DILocation(line: 467, column: 39, scope: !2284)
!2303 = !DILocalVariable(name: "parity", scope: !2284, file: !2, line: 468, type: !1475)
!2304 = !DILocation(line: 468, column: 17, scope: !2284)
!2305 = !DILocation(line: 468, column: 51, scope: !2284)
!2306 = !DILocation(line: 468, column: 56, scope: !2284)
!2307 = !DILocation(line: 468, column: 26, scope: !2284)
!2308 = !DILocalVariable(name: "stopbits", scope: !2284, file: !2, line: 469, type: !1475)
!2309 = !DILocation(line: 469, column: 17, scope: !2284)
!2310 = !DILocation(line: 469, column: 55, scope: !2284)
!2311 = !DILocation(line: 469, column: 63, scope: !2284)
!2312 = !DILocation(line: 469, column: 68, scope: !2284)
!2313 = !DILocation(line: 469, column: 28, scope: !2284)
!2314 = !DILocalVariable(name: "databits", scope: !2284, file: !2, line: 470, type: !1475)
!2315 = !DILocation(line: 470, column: 17, scope: !2284)
!2316 = !DILocation(line: 470, column: 55, scope: !2284)
!2317 = !DILocation(line: 470, column: 60, scope: !2284)
!2318 = !DILocation(line: 471, column: 13, scope: !2284)
!2319 = !DILocation(line: 471, column: 18, scope: !2284)
!2320 = !DILocation(line: 470, column: 28, scope: !2284)
!2321 = !DILocalVariable(name: "flowctrl", scope: !2284, file: !2, line: 472, type: !1475)
!2322 = !DILocation(line: 472, column: 17, scope: !2284)
!2323 = !DILocation(line: 472, column: 53, scope: !2284)
!2324 = !DILocation(line: 472, column: 58, scope: !2284)
!2325 = !DILocation(line: 472, column: 28, scope: !2284)
!2326 = !DILocalVariable(name: "driver_enable", scope: !2284, file: !2, line: 474, type: !176)
!2327 = !DILocation(line: 474, column: 8, scope: !2284)
!2328 = !DILocation(line: 474, column: 24, scope: !2284)
!2329 = !DILocation(line: 474, column: 29, scope: !2284)
!2330 = !DILocation(line: 474, column: 39, scope: !2284)
!2331 = !DILocation(line: 477, column: 6, scope: !2332)
!2332 = distinct !DILexicalBlock(scope: !2284, file: !2, line: 477, column: 6)
!2333 = !DILocation(line: 477, column: 13, scope: !2332)
!2334 = !DILocation(line: 477, column: 10, scope: !2332)
!2335 = !DILocation(line: 477, column: 6, scope: !2284)
!2336 = !DILocation(line: 482, column: 28, scope: !2337)
!2337 = distinct !DILexicalBlock(scope: !2332, file: !2, line: 477, column: 23)
!2338 = !DILocation(line: 482, column: 36, scope: !2337)
!2339 = !DILocation(line: 483, column: 7, scope: !2337)
!2340 = !DILocation(line: 484, column: 7, scope: !2337)
!2341 = !DILocation(line: 485, column: 7, scope: !2337)
!2342 = !DILocation(line: 482, column: 3, scope: !2337)
!2343 = !DILocation(line: 486, column: 25, scope: !2337)
!2344 = !DILocation(line: 486, column: 30, scope: !2337)
!2345 = !DILocation(line: 486, column: 3, scope: !2337)
!2346 = !DILocation(line: 487, column: 27, scope: !2337)
!2347 = !DILocation(line: 487, column: 32, scope: !2337)
!2348 = !DILocation(line: 487, column: 37, scope: !2337)
!2349 = !DILocation(line: 487, column: 3, scope: !2337)
!2350 = !DILocation(line: 488, column: 2, scope: !2337)
!2351 = !DILocation(line: 490, column: 7, scope: !2352)
!2352 = distinct !DILexicalBlock(scope: !2353, file: !2, line: 490, column: 7)
!2353 = distinct !DILexicalBlock(scope: !2332, file: !2, line: 488, column: 9)
!2354 = !DILocation(line: 490, column: 39, scope: !2352)
!2355 = !DILocation(line: 490, column: 17, scope: !2352)
!2356 = !DILocation(line: 490, column: 14, scope: !2352)
!2357 = !DILocation(line: 490, column: 7, scope: !2353)
!2358 = !DILocation(line: 491, column: 26, scope: !2359)
!2359 = distinct !DILexicalBlock(scope: !2352, file: !2, line: 490, column: 45)
!2360 = !DILocation(line: 491, column: 31, scope: !2359)
!2361 = !DILocation(line: 491, column: 4, scope: !2359)
!2362 = !DILocation(line: 492, column: 3, scope: !2359)
!2363 = !DILocation(line: 494, column: 7, scope: !2364)
!2364 = distinct !DILexicalBlock(scope: !2353, file: !2, line: 494, column: 7)
!2365 = !DILocation(line: 494, column: 43, scope: !2364)
!2366 = !DILocation(line: 494, column: 19, scope: !2364)
!2367 = !DILocation(line: 494, column: 16, scope: !2364)
!2368 = !DILocation(line: 494, column: 7, scope: !2353)
!2369 = !DILocation(line: 495, column: 28, scope: !2370)
!2370 = distinct !DILexicalBlock(scope: !2364, file: !2, line: 494, column: 49)
!2371 = !DILocation(line: 495, column: 33, scope: !2370)
!2372 = !DILocation(line: 495, column: 4, scope: !2370)
!2373 = !DILocation(line: 496, column: 3, scope: !2370)
!2374 = !DILocation(line: 498, column: 7, scope: !2375)
!2375 = distinct !DILexicalBlock(scope: !2353, file: !2, line: 498, column: 7)
!2376 = !DILocation(line: 498, column: 43, scope: !2375)
!2377 = !DILocation(line: 498, column: 19, scope: !2375)
!2378 = !DILocation(line: 498, column: 16, scope: !2375)
!2379 = !DILocation(line: 498, column: 7, scope: !2353)
!2380 = !DILocation(line: 499, column: 28, scope: !2381)
!2381 = distinct !DILexicalBlock(scope: !2375, file: !2, line: 498, column: 49)
!2382 = !DILocation(line: 499, column: 33, scope: !2381)
!2383 = !DILocation(line: 499, column: 4, scope: !2381)
!2384 = !DILocation(line: 500, column: 3, scope: !2381)
!2385 = !DILocation(line: 502, column: 7, scope: !2386)
!2386 = distinct !DILexicalBlock(scope: !2353, file: !2, line: 502, column: 7)
!2387 = !DILocation(line: 502, column: 41, scope: !2386)
!2388 = !DILocation(line: 502, column: 19, scope: !2386)
!2389 = !DILocation(line: 502, column: 16, scope: !2386)
!2390 = !DILocation(line: 502, column: 7, scope: !2353)
!2391 = !DILocation(line: 503, column: 26, scope: !2392)
!2392 = distinct !DILexicalBlock(scope: !2386, file: !2, line: 502, column: 47)
!2393 = !DILocation(line: 503, column: 31, scope: !2392)
!2394 = !DILocation(line: 503, column: 4, scope: !2392)
!2395 = !DILocation(line: 504, column: 3, scope: !2392)
!2396 = !DILocation(line: 507, column: 7, scope: !2397)
!2397 = distinct !DILexicalBlock(scope: !2353, file: !2, line: 507, column: 7)
!2398 = !DILocation(line: 507, column: 53, scope: !2397)
!2399 = !DILocation(line: 507, column: 24, scope: !2397)
!2400 = !DILocation(line: 507, column: 21, scope: !2397)
!2401 = !DILocation(line: 507, column: 7, scope: !2353)
!2402 = !DILocation(line: 508, column: 33, scope: !2403)
!2403 = distinct !DILexicalBlock(scope: !2397, file: !2, line: 507, column: 59)
!2404 = !DILocation(line: 508, column: 38, scope: !2403)
!2405 = !DILocation(line: 508, column: 4, scope: !2403)
!2406 = !DILocation(line: 509, column: 3, scope: !2403)
!2407 = !DILocation(line: 512, column: 7, scope: !2408)
!2408 = distinct !DILexicalBlock(scope: !2353, file: !2, line: 512, column: 7)
!2409 = !DILocation(line: 512, column: 12, scope: !2408)
!2410 = !DILocation(line: 512, column: 24, scope: !2408)
!2411 = !DILocation(line: 512, column: 34, scope: !2408)
!2412 = !DILocation(line: 512, column: 21, scope: !2408)
!2413 = !DILocation(line: 512, column: 7, scope: !2353)
!2414 = !DILocation(line: 513, column: 28, scope: !2415)
!2415 = distinct !DILexicalBlock(scope: !2408, file: !2, line: 512, column: 44)
!2416 = !DILocation(line: 513, column: 33, scope: !2415)
!2417 = !DILocation(line: 513, column: 38, scope: !2415)
!2418 = !DILocation(line: 513, column: 4, scope: !2415)
!2419 = !DILocation(line: 514, column: 25, scope: !2415)
!2420 = !DILocation(line: 514, column: 30, scope: !2415)
!2421 = !DILocation(line: 514, column: 4, scope: !2415)
!2422 = !DILocation(line: 514, column: 14, scope: !2415)
!2423 = !DILocation(line: 514, column: 23, scope: !2415)
!2424 = !DILocation(line: 515, column: 3, scope: !2415)
!2425 = !DILocation(line: 517, column: 1, scope: !2284)
!2426 = distinct !DISubprogram(name: "LL_USART_Enable", scope: !1956, file: !1956, line: 576, type: !1970, scopeLine: 577, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!2427 = !DILocalVariable(name: "USARTx", arg: 1, scope: !2426, file: !1956, line: 576, type: !260)
!2428 = !DILocation(line: 576, column: 53, scope: !2426)
!2429 = !DILocation(line: 578, column: 5, scope: !2426)
!2430 = !DILocation(line: 578, column: 13, scope: !2426)
!2431 = !DILocation(line: 578, column: 18, scope: !2426)
!2432 = !DILocation(line: 579, column: 1, scope: !2426)
!2433 = distinct !DISubprogram(name: "uart_stm32_cfg2ll_hwctrl", scope: !2, file: !2, line: 434, type: !2434, scopeLine: 435, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!2434 = !DISubroutineType(types: !2435)
!2435 = !{!178, !118}
!2436 = !DILocalVariable(name: "fc", arg: 1, scope: !2433, file: !2, line: 434, type: !118)
!2437 = !DILocation(line: 434, column: 79, scope: !2433)
!2438 = !DILocation(line: 436, column: 6, scope: !2439)
!2439 = distinct !DILexicalBlock(scope: !2433, file: !2, line: 436, column: 6)
!2440 = !DILocation(line: 436, column: 9, scope: !2439)
!2441 = !DILocation(line: 436, column: 6, scope: !2433)
!2442 = !DILocation(line: 437, column: 3, scope: !2443)
!2443 = distinct !DILexicalBlock(scope: !2439, file: !2, line: 436, column: 40)
!2444 = !DILocation(line: 438, column: 13, scope: !2445)
!2445 = distinct !DILexicalBlock(scope: !2439, file: !2, line: 438, column: 13)
!2446 = !DILocation(line: 438, column: 16, scope: !2445)
!2447 = !DILocation(line: 438, column: 13, scope: !2439)
!2448 = !DILocation(line: 440, column: 3, scope: !2449)
!2449 = distinct !DILexicalBlock(scope: !2445, file: !2, line: 438, column: 45)
!2450 = !DILocation(line: 443, column: 2, scope: !2433)
!2451 = !DILocation(line: 444, column: 1, scope: !2433)
!2452 = distinct !DISubprogram(name: "LL_USART_ConfigCharacter", scope: !1956, file: !1956, line: 1109, type: !2453, scopeLine: 1111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!2453 = !DISubroutineType(types: !2454)
!2454 = !{null, !260, !178, !178, !178}
!2455 = !DILocalVariable(name: "USARTx", arg: 1, scope: !2452, file: !1956, line: 1109, type: !260)
!2456 = !DILocation(line: 1109, column: 62, scope: !2452)
!2457 = !DILocalVariable(name: "DataWidth", arg: 2, scope: !2452, file: !1956, line: 1109, type: !178)
!2458 = !DILocation(line: 1109, column: 79, scope: !2452)
!2459 = !DILocalVariable(name: "Parity", arg: 3, scope: !2452, file: !1956, line: 1109, type: !178)
!2460 = !DILocation(line: 1109, column: 99, scope: !2452)
!2461 = !DILocalVariable(name: "StopBits", arg: 4, scope: !2452, file: !1956, line: 1110, type: !178)
!2462 = !DILocation(line: 1110, column: 56, scope: !2452)
!2463 = !DILocation(line: 1112, column: 28, scope: !2452)
!2464 = !DILocation(line: 1112, column: 36, scope: !2452)
!2465 = !DILocation(line: 1112, column: 43, scope: !2452)
!2466 = !DILocation(line: 1112, column: 112, scope: !2452)
!2467 = !DILocation(line: 1112, column: 121, scope: !2452)
!2468 = !DILocation(line: 1112, column: 119, scope: !2452)
!2469 = !DILocation(line: 1112, column: 109, scope: !2452)
!2470 = !DILocation(line: 1112, column: 6, scope: !2452)
!2471 = !DILocation(line: 1112, column: 14, scope: !2452)
!2472 = !DILocation(line: 1112, column: 20, scope: !2452)
!2473 = !DILocation(line: 1113, column: 28, scope: !2452)
!2474 = !DILocation(line: 1113, column: 36, scope: !2452)
!2475 = !DILocation(line: 1113, column: 43, scope: !2452)
!2476 = !DILocation(line: 1113, column: 71, scope: !2452)
!2477 = !DILocation(line: 1113, column: 68, scope: !2452)
!2478 = !DILocation(line: 1113, column: 6, scope: !2452)
!2479 = !DILocation(line: 1113, column: 14, scope: !2452)
!2480 = !DILocation(line: 1113, column: 20, scope: !2452)
!2481 = !DILocation(line: 1114, column: 1, scope: !2452)
!2482 = distinct !DISubprogram(name: "uart_stm32_set_hwctrl", scope: !2, file: !2, line: 249, type: !2483, scopeLine: 251, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!2483 = !DISubroutineType(types: !2484)
!2484 = !{null, !156, !178}
!2485 = !DILocalVariable(name: "dev", arg: 1, scope: !2482, file: !2, line: 249, type: !156)
!2486 = !DILocation(line: 249, column: 63, scope: !2482)
!2487 = !DILocalVariable(name: "hwctrl", arg: 2, scope: !2482, file: !2, line: 250, type: !178)
!2488 = !DILocation(line: 250, column: 16, scope: !2482)
!2489 = !DILocalVariable(name: "config", scope: !2482, file: !2, line: 252, type: !1258)
!2490 = !DILocation(line: 252, column: 34, scope: !2482)
!2491 = !DILocation(line: 252, column: 43, scope: !2482)
!2492 = !DILocation(line: 252, column: 48, scope: !2482)
!2493 = !DILocation(line: 254, column: 25, scope: !2482)
!2494 = !DILocation(line: 254, column: 33, scope: !2482)
!2495 = !DILocation(line: 254, column: 40, scope: !2482)
!2496 = !DILocation(line: 254, column: 2, scope: !2482)
!2497 = !DILocation(line: 255, column: 1, scope: !2482)
!2498 = distinct !DISubprogram(name: "uart_stm32_set_baudrate", scope: !2, file: !2, line: 114, type: !2483, scopeLine: 115, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!2499 = !DILocalVariable(name: "dev", arg: 1, scope: !2498, file: !2, line: 114, type: !156)
!2500 = !DILocation(line: 114, column: 65, scope: !2498)
!2501 = !DILocalVariable(name: "baud_rate", arg: 2, scope: !2498, file: !2, line: 114, type: !178)
!2502 = !DILocation(line: 114, column: 79, scope: !2498)
!2503 = !DILocalVariable(name: "config", scope: !2498, file: !2, line: 116, type: !1258)
!2504 = !DILocation(line: 116, column: 34, scope: !2498)
!2505 = !DILocation(line: 116, column: 43, scope: !2498)
!2506 = !DILocation(line: 116, column: 48, scope: !2498)
!2507 = !DILocalVariable(name: "data", scope: !2498, file: !2, line: 117, type: !1328)
!2508 = !DILocation(line: 117, column: 26, scope: !2498)
!2509 = !DILocation(line: 117, column: 33, scope: !2498)
!2510 = !DILocation(line: 117, column: 38, scope: !2498)
!2511 = !DILocalVariable(name: "clock_rate", scope: !2498, file: !2, line: 119, type: !178)
!2512 = !DILocation(line: 119, column: 11, scope: !2498)
!2513 = !DILocation(line: 130, column: 30, scope: !2514)
!2514 = distinct !DILexicalBlock(scope: !2515, file: !2, line: 130, column: 7)
!2515 = distinct !DILexicalBlock(scope: !2516, file: !2, line: 129, column: 9)
!2516 = distinct !DILexicalBlock(scope: !2498, file: !2, line: 122, column: 6)
!2517 = !DILocation(line: 130, column: 36, scope: !2514)
!2518 = !DILocation(line: 131, column: 34, scope: !2514)
!2519 = !DILocation(line: 131, column: 42, scope: !2514)
!2520 = !DILocation(line: 130, column: 7, scope: !2514)
!2521 = !DILocation(line: 132, column: 22, scope: !2514)
!2522 = !DILocation(line: 130, column: 7, scope: !2515)
!2523 = !DILocation(line: 133, column: 4, scope: !2524)
!2524 = distinct !DILexicalBlock(scope: !2514, file: !2, line: 132, column: 27)
!2525 = !DILocalVariable(name: "is_user_context", scope: !2526, file: !2, line: 133, type: !176)
!2526 = distinct !DILexicalBlock(scope: !2524, file: !2, line: 133, column: 7)
!2527 = !DILocation(line: 133, column: 364, scope: !2526)
!2528 = !DILocation(line: 133, column: 382, scope: !2526)
!2529 = !DILocalVariable(name: "_mode", scope: !2526, file: !2, line: 133, type: !145)
!2530 = !DILocation(line: 133, column: 542, scope: !2526)
!2531 = !DILocalVariable(name: "_src", scope: !2526, file: !2, line: 133, type: !144)
!2532 = !DILocation(line: 133, column: 555, scope: !2526)
!2533 = !DILocation(line: 133, column: 611, scope: !2526)
!2534 = !DILocation(line: 133, column: 637, scope: !2526)
!2535 = !DILocation(line: 133, column: 678, scope: !2536)
!2536 = distinct !DILexicalBlock(scope: !2526, file: !2, line: 133, column: 640)
!2537 = !DILocation(line: 133, column: 642, scope: !2536)
!2538 = !DILocation(line: 133, column: 840, scope: !2536)
!2539 = !DILocation(line: 133, column: 866, scope: !2536)
!2540 = !DILocation(line: 133, column: 885, scope: !2526)
!2541 = !DILocation(line: 133, column: 978, scope: !2526)
!2542 = !DILocation(line: 134, column: 4, scope: !2524)
!2543 = !DILocation(line: 183, column: 28, scope: !2498)
!2544 = !DILocation(line: 183, column: 36, scope: !2498)
!2545 = !DILocation(line: 183, column: 3, scope: !2498)
!2546 = !DILocation(line: 186, column: 24, scope: !2498)
!2547 = !DILocation(line: 186, column: 32, scope: !2498)
!2548 = !DILocation(line: 187, column: 10, scope: !2498)
!2549 = !DILocation(line: 194, column: 10, scope: !2498)
!2550 = !DILocation(line: 186, column: 3, scope: !2498)
!2551 = !DILocation(line: 202, column: 1, scope: !2498)
!2552 = distinct !DISubprogram(name: "uart_stm32_get_parity", scope: !2, file: !2, line: 212, type: !2553, scopeLine: 213, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!2553 = !DISubroutineType(types: !2554)
!2554 = !{!178, !156}
!2555 = !DILocalVariable(name: "dev", arg: 1, scope: !2552, file: !2, line: 212, type: !156)
!2556 = !DILocation(line: 212, column: 67, scope: !2552)
!2557 = !DILocalVariable(name: "config", scope: !2552, file: !2, line: 214, type: !1258)
!2558 = !DILocation(line: 214, column: 34, scope: !2552)
!2559 = !DILocation(line: 214, column: 43, scope: !2552)
!2560 = !DILocation(line: 214, column: 48, scope: !2552)
!2561 = !DILocation(line: 216, column: 28, scope: !2552)
!2562 = !DILocation(line: 216, column: 36, scope: !2552)
!2563 = !DILocation(line: 216, column: 9, scope: !2552)
!2564 = !DILocation(line: 216, column: 2, scope: !2552)
!2565 = distinct !DISubprogram(name: "uart_stm32_set_parity", scope: !2, file: !2, line: 204, type: !2483, scopeLine: 206, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!2566 = !DILocalVariable(name: "dev", arg: 1, scope: !2565, file: !2, line: 204, type: !156)
!2567 = !DILocation(line: 204, column: 63, scope: !2565)
!2568 = !DILocalVariable(name: "parity", arg: 2, scope: !2565, file: !2, line: 205, type: !178)
!2569 = !DILocation(line: 205, column: 16, scope: !2565)
!2570 = !DILocalVariable(name: "config", scope: !2565, file: !2, line: 207, type: !1258)
!2571 = !DILocation(line: 207, column: 34, scope: !2565)
!2572 = !DILocation(line: 207, column: 43, scope: !2565)
!2573 = !DILocation(line: 207, column: 48, scope: !2565)
!2574 = !DILocation(line: 209, column: 21, scope: !2565)
!2575 = !DILocation(line: 209, column: 29, scope: !2565)
!2576 = !DILocation(line: 209, column: 36, scope: !2565)
!2577 = !DILocation(line: 209, column: 2, scope: !2565)
!2578 = !DILocation(line: 210, column: 1, scope: !2565)
!2579 = distinct !DISubprogram(name: "uart_stm32_get_stopbits", scope: !2, file: !2, line: 227, type: !2553, scopeLine: 228, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!2580 = !DILocalVariable(name: "dev", arg: 1, scope: !2579, file: !2, line: 227, type: !156)
!2581 = !DILocation(line: 227, column: 69, scope: !2579)
!2582 = !DILocalVariable(name: "config", scope: !2579, file: !2, line: 229, type: !1258)
!2583 = !DILocation(line: 229, column: 34, scope: !2579)
!2584 = !DILocation(line: 229, column: 43, scope: !2579)
!2585 = !DILocation(line: 229, column: 48, scope: !2579)
!2586 = !DILocation(line: 231, column: 36, scope: !2579)
!2587 = !DILocation(line: 231, column: 44, scope: !2579)
!2588 = !DILocation(line: 231, column: 9, scope: !2579)
!2589 = !DILocation(line: 231, column: 2, scope: !2579)
!2590 = distinct !DISubprogram(name: "uart_stm32_set_stopbits", scope: !2, file: !2, line: 219, type: !2483, scopeLine: 221, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!2591 = !DILocalVariable(name: "dev", arg: 1, scope: !2590, file: !2, line: 219, type: !156)
!2592 = !DILocation(line: 219, column: 65, scope: !2590)
!2593 = !DILocalVariable(name: "stopbits", arg: 2, scope: !2590, file: !2, line: 220, type: !178)
!2594 = !DILocation(line: 220, column: 18, scope: !2590)
!2595 = !DILocalVariable(name: "config", scope: !2590, file: !2, line: 222, type: !1258)
!2596 = !DILocation(line: 222, column: 34, scope: !2590)
!2597 = !DILocation(line: 222, column: 43, scope: !2590)
!2598 = !DILocation(line: 222, column: 48, scope: !2590)
!2599 = !DILocation(line: 224, column: 29, scope: !2590)
!2600 = !DILocation(line: 224, column: 37, scope: !2590)
!2601 = !DILocation(line: 224, column: 44, scope: !2590)
!2602 = !DILocation(line: 224, column: 2, scope: !2590)
!2603 = !DILocation(line: 225, column: 1, scope: !2590)
!2604 = distinct !DISubprogram(name: "uart_stm32_get_databits", scope: !2, file: !2, line: 242, type: !2553, scopeLine: 243, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!2605 = !DILocalVariable(name: "dev", arg: 1, scope: !2604, file: !2, line: 242, type: !156)
!2606 = !DILocation(line: 242, column: 69, scope: !2604)
!2607 = !DILocalVariable(name: "config", scope: !2604, file: !2, line: 244, type: !1258)
!2608 = !DILocation(line: 244, column: 34, scope: !2604)
!2609 = !DILocation(line: 244, column: 43, scope: !2604)
!2610 = !DILocation(line: 244, column: 48, scope: !2604)
!2611 = !DILocation(line: 246, column: 31, scope: !2604)
!2612 = !DILocation(line: 246, column: 39, scope: !2604)
!2613 = !DILocation(line: 246, column: 9, scope: !2604)
!2614 = !DILocation(line: 246, column: 2, scope: !2604)
!2615 = distinct !DISubprogram(name: "uart_stm32_set_databits", scope: !2, file: !2, line: 234, type: !2483, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!2616 = !DILocalVariable(name: "dev", arg: 1, scope: !2615, file: !2, line: 234, type: !156)
!2617 = !DILocation(line: 234, column: 65, scope: !2615)
!2618 = !DILocalVariable(name: "databits", arg: 2, scope: !2615, file: !2, line: 235, type: !178)
!2619 = !DILocation(line: 235, column: 18, scope: !2615)
!2620 = !DILocalVariable(name: "config", scope: !2615, file: !2, line: 237, type: !1258)
!2621 = !DILocation(line: 237, column: 34, scope: !2615)
!2622 = !DILocation(line: 237, column: 43, scope: !2615)
!2623 = !DILocation(line: 237, column: 48, scope: !2615)
!2624 = !DILocation(line: 239, column: 24, scope: !2615)
!2625 = !DILocation(line: 239, column: 32, scope: !2615)
!2626 = !DILocation(line: 239, column: 39, scope: !2615)
!2627 = !DILocation(line: 239, column: 2, scope: !2615)
!2628 = !DILocation(line: 240, column: 1, scope: !2615)
!2629 = distinct !DISubprogram(name: "uart_stm32_get_hwctrl", scope: !2, file: !2, line: 257, type: !2553, scopeLine: 258, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!2630 = !DILocalVariable(name: "dev", arg: 1, scope: !2629, file: !2, line: 257, type: !156)
!2631 = !DILocation(line: 257, column: 67, scope: !2629)
!2632 = !DILocalVariable(name: "config", scope: !2629, file: !2, line: 259, type: !1258)
!2633 = !DILocation(line: 259, column: 34, scope: !2629)
!2634 = !DILocation(line: 259, column: 43, scope: !2629)
!2635 = !DILocation(line: 259, column: 48, scope: !2629)
!2636 = !DILocation(line: 261, column: 32, scope: !2629)
!2637 = !DILocation(line: 261, column: 40, scope: !2629)
!2638 = !DILocation(line: 261, column: 9, scope: !2629)
!2639 = !DILocation(line: 261, column: 2, scope: !2629)
!2640 = distinct !DISubprogram(name: "uart_stm32_get_driver_enable", scope: !2, file: !2, line: 277, type: !779, scopeLine: 278, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!2641 = !DILocalVariable(name: "dev", arg: 1, scope: !2640, file: !2, line: 277, type: !156)
!2642 = !DILocation(line: 277, column: 71, scope: !2640)
!2643 = !DILocalVariable(name: "config", scope: !2640, file: !2, line: 279, type: !1258)
!2644 = !DILocation(line: 279, column: 34, scope: !2640)
!2645 = !DILocation(line: 279, column: 43, scope: !2640)
!2646 = !DILocation(line: 279, column: 48, scope: !2640)
!2647 = !DILocation(line: 281, column: 34, scope: !2640)
!2648 = !DILocation(line: 281, column: 42, scope: !2640)
!2649 = !DILocation(line: 281, column: 9, scope: !2640)
!2650 = !DILocation(line: 281, column: 2, scope: !2640)
!2651 = distinct !DISubprogram(name: "uart_stm32_set_driver_enable", scope: !2, file: !2, line: 265, type: !2652, scopeLine: 267, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!2652 = !DISubroutineType(types: !2653)
!2653 = !{null, !156, !176}
!2654 = !DILocalVariable(name: "dev", arg: 1, scope: !2651, file: !2, line: 265, type: !156)
!2655 = !DILocation(line: 265, column: 70, scope: !2651)
!2656 = !DILocalVariable(name: "driver_enable", arg: 2, scope: !2651, file: !2, line: 266, type: !176)
!2657 = !DILocation(line: 266, column: 13, scope: !2651)
!2658 = !DILocalVariable(name: "config", scope: !2651, file: !2, line: 268, type: !1258)
!2659 = !DILocation(line: 268, column: 34, scope: !2651)
!2660 = !DILocation(line: 268, column: 43, scope: !2651)
!2661 = !DILocation(line: 268, column: 48, scope: !2651)
!2662 = !DILocation(line: 270, column: 6, scope: !2663)
!2663 = distinct !DILexicalBlock(scope: !2651, file: !2, line: 270, column: 6)
!2664 = !DILocation(line: 270, column: 6, scope: !2651)
!2665 = !DILocation(line: 271, column: 25, scope: !2666)
!2666 = distinct !DILexicalBlock(scope: !2663, file: !2, line: 270, column: 21)
!2667 = !DILocation(line: 271, column: 33, scope: !2666)
!2668 = !DILocation(line: 271, column: 3, scope: !2666)
!2669 = !DILocation(line: 272, column: 2, scope: !2666)
!2670 = !DILocation(line: 273, column: 26, scope: !2671)
!2671 = distinct !DILexicalBlock(scope: !2663, file: !2, line: 272, column: 9)
!2672 = !DILocation(line: 273, column: 34, scope: !2671)
!2673 = !DILocation(line: 273, column: 3, scope: !2671)
!2674 = !DILocation(line: 275, column: 1, scope: !2651)
!2675 = distinct !DISubprogram(name: "LL_USART_SetHWFlowCtrl", scope: !1956, file: !1956, line: 1491, type: !2676, scopeLine: 1492, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!2676 = !DISubroutineType(types: !2677)
!2677 = !{null, !260, !178}
!2678 = !DILocalVariable(name: "USARTx", arg: 1, scope: !2675, file: !1956, line: 1491, type: !260)
!2679 = !DILocation(line: 1491, column: 60, scope: !2675)
!2680 = !DILocalVariable(name: "HardwareFlowControl", arg: 2, scope: !2675, file: !1956, line: 1491, type: !178)
!2681 = !DILocation(line: 1491, column: 77, scope: !2675)
!2682 = !DILocation(line: 1493, column: 28, scope: !2675)
!2683 = !DILocation(line: 1493, column: 36, scope: !2675)
!2684 = !DILocation(line: 1493, column: 43, scope: !2675)
!2685 = !DILocation(line: 1493, column: 88, scope: !2675)
!2686 = !DILocation(line: 1493, column: 85, scope: !2675)
!2687 = !DILocation(line: 1493, column: 6, scope: !2675)
!2688 = !DILocation(line: 1493, column: 14, scope: !2675)
!2689 = !DILocation(line: 1493, column: 20, scope: !2675)
!2690 = !DILocation(line: 1494, column: 1, scope: !2675)
!2691 = distinct !DISubprogram(name: "clock_control_get_rate", scope: !137, file: !137, line: 216, type: !303, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!2692 = !DILocalVariable(name: "dev", arg: 1, scope: !2691, file: !137, line: 216, type: !156)
!2693 = !DILocation(line: 216, column: 63, scope: !2691)
!2694 = !DILocalVariable(name: "sys", arg: 2, scope: !2691, file: !137, line: 217, type: !280)
!2695 = !DILocation(line: 217, column: 30, scope: !2691)
!2696 = !DILocalVariable(name: "rate", arg: 3, scope: !2691, file: !137, line: 218, type: !305)
!2697 = !DILocation(line: 218, column: 17, scope: !2691)
!2698 = !DILocalVariable(name: "api", scope: !2691, file: !137, line: 220, type: !281)
!2699 = !DILocation(line: 220, column: 41, scope: !2691)
!2700 = !DILocation(line: 221, column: 44, scope: !2691)
!2701 = !DILocation(line: 221, column: 49, scope: !2691)
!2702 = !DILocation(line: 223, column: 6, scope: !2703)
!2703 = distinct !DILexicalBlock(scope: !2691, file: !137, line: 223, column: 6)
!2704 = !DILocation(line: 223, column: 11, scope: !2703)
!2705 = !DILocation(line: 223, column: 20, scope: !2703)
!2706 = !DILocation(line: 223, column: 6, scope: !2691)
!2707 = !DILocation(line: 224, column: 3, scope: !2708)
!2708 = distinct !DILexicalBlock(scope: !2703, file: !137, line: 223, column: 35)
!2709 = !DILocation(line: 227, column: 9, scope: !2691)
!2710 = !DILocation(line: 227, column: 14, scope: !2691)
!2711 = !DILocation(line: 227, column: 23, scope: !2691)
!2712 = !DILocation(line: 227, column: 28, scope: !2691)
!2713 = !DILocation(line: 227, column: 33, scope: !2691)
!2714 = !DILocation(line: 227, column: 2, scope: !2691)
!2715 = !DILocation(line: 228, column: 1, scope: !2691)
!2716 = distinct !DISubprogram(name: "k_is_user_context", scope: !2717, file: !2717, line: 115, type: !2718, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!2717 = !DIFile(filename: "include/zephyr/syscall.h", directory: "/home/sri/zephyrproject/zephyr")
!2718 = !DISubroutineType(types: !2719)
!2719 = !{!176}
!2720 = !DILocation(line: 120, column: 2, scope: !2716)
!2721 = distinct !DISubprogram(name: "z_log_msg_runtime_create", scope: !131, file: !131, line: 568, type: !2722, scopeLine: 573, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!2722 = !DISubroutineType(types: !2723)
!2723 = !{null, !173, !165, !173, !165, !2724, !178, !162, null}
!2724 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !2725, line: 51, baseType: !179)
!2725 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/string.h", directory: "")
!2726 = !DILocalVariable(name: "domain_id", arg: 1, scope: !2721, file: !131, line: 568, type: !173)
!2727 = !DILocation(line: 568, column: 53, scope: !2721)
!2728 = !DILocalVariable(name: "source", arg: 2, scope: !2721, file: !131, line: 569, type: !165)
!2729 = !DILocation(line: 569, column: 23, scope: !2721)
!2730 = !DILocalVariable(name: "level", arg: 3, scope: !2721, file: !131, line: 570, type: !173)
!2731 = !DILocation(line: 570, column: 19, scope: !2721)
!2732 = !DILocalVariable(name: "data", arg: 4, scope: !2721, file: !131, line: 570, type: !165)
!2733 = !DILocation(line: 570, column: 38, scope: !2721)
!2734 = !DILocalVariable(name: "dlen", arg: 5, scope: !2721, file: !131, line: 571, type: !2724)
!2735 = !DILocation(line: 571, column: 18, scope: !2721)
!2736 = !DILocalVariable(name: "package_flags", arg: 6, scope: !2721, file: !131, line: 571, type: !178)
!2737 = !DILocation(line: 571, column: 33, scope: !2721)
!2738 = !DILocalVariable(name: "fmt", arg: 7, scope: !2721, file: !131, line: 572, type: !162)
!2739 = !DILocation(line: 572, column: 23, scope: !2721)
!2740 = !DILocalVariable(name: "ap", scope: !2721, file: !131, line: 574, type: !2741)
!2741 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !2742, line: 22, baseType: !2743)
!2742 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/lib/clang/17/include/stdarg.h", directory: "")
!2743 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !10, baseType: !2744)
!2744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 32, elements: !2745)
!2745 = !{!2746}
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "__ap", scope: !2744, file: !10, line: 574, baseType: !144, size: 32)
!2747 = !DILocation(line: 574, column: 10, scope: !2721)
!2748 = !DILocation(line: 576, column: 2, scope: !2721)
!2749 = !DILocation(line: 577, column: 28, scope: !2721)
!2750 = !DILocation(line: 577, column: 39, scope: !2721)
!2751 = !DILocation(line: 577, column: 47, scope: !2721)
!2752 = !DILocation(line: 578, column: 8, scope: !2721)
!2753 = !DILocation(line: 578, column: 14, scope: !2721)
!2754 = !DILocation(line: 578, column: 20, scope: !2721)
!2755 = !DILocation(line: 578, column: 35, scope: !2721)
!2756 = !DILocation(line: 577, column: 2, scope: !2721)
!2757 = !DILocation(line: 579, column: 2, scope: !2721)
!2758 = !DILocation(line: 580, column: 1, scope: !2721)
!2759 = distinct !DISubprogram(name: "LL_USART_SetOverSampling", scope: !1956, file: !1956, line: 866, type: !2676, scopeLine: 867, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!2760 = !DILocalVariable(name: "USARTx", arg: 1, scope: !2759, file: !1956, line: 866, type: !260)
!2761 = !DILocation(line: 866, column: 62, scope: !2759)
!2762 = !DILocalVariable(name: "OverSampling", arg: 2, scope: !2759, file: !1956, line: 866, type: !178)
!2763 = !DILocation(line: 866, column: 79, scope: !2759)
!2764 = !DILocation(line: 868, column: 28, scope: !2759)
!2765 = !DILocation(line: 868, column: 36, scope: !2759)
!2766 = !DILocation(line: 868, column: 43, scope: !2759)
!2767 = !DILocation(line: 868, column: 71, scope: !2759)
!2768 = !DILocation(line: 868, column: 68, scope: !2759)
!2769 = !DILocation(line: 868, column: 6, scope: !2759)
!2770 = !DILocation(line: 868, column: 14, scope: !2759)
!2771 = !DILocation(line: 868, column: 20, scope: !2759)
!2772 = !DILocation(line: 869, column: 1, scope: !2759)
!2773 = distinct !DISubprogram(name: "LL_USART_SetBaudRate", scope: !1956, file: !1956, line: 1633, type: !2453, scopeLine: 1635, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!2774 = !DILocalVariable(name: "USARTx", arg: 1, scope: !2773, file: !1956, line: 1633, type: !260)
!2775 = !DILocation(line: 1633, column: 58, scope: !2773)
!2776 = !DILocalVariable(name: "PeriphClk", arg: 2, scope: !2773, file: !1956, line: 1633, type: !178)
!2777 = !DILocation(line: 1633, column: 75, scope: !2773)
!2778 = !DILocalVariable(name: "OverSampling", arg: 3, scope: !2773, file: !1956, line: 1633, type: !178)
!2779 = !DILocation(line: 1633, column: 95, scope: !2773)
!2780 = !DILocalVariable(name: "BaudRate", arg: 4, scope: !2773, file: !1956, line: 1634, type: !178)
!2781 = !DILocation(line: 1634, column: 52, scope: !2773)
!2782 = !DILocalVariable(name: "usartdiv", scope: !2773, file: !1956, line: 1636, type: !178)
!2783 = !DILocation(line: 1636, column: 12, scope: !2773)
!2784 = !DILocalVariable(name: "brrtemp", scope: !2773, file: !1956, line: 1637, type: !178)
!2785 = !DILocation(line: 1637, column: 12, scope: !2773)
!2786 = !DILocation(line: 1639, column: 7, scope: !2787)
!2787 = distinct !DILexicalBlock(scope: !2773, file: !1956, line: 1639, column: 7)
!2788 = !DILocation(line: 1639, column: 20, scope: !2787)
!2789 = !DILocation(line: 1639, column: 7, scope: !2773)
!2790 = !DILocation(line: 1641, column: 31, scope: !2791)
!2791 = distinct !DILexicalBlock(scope: !2787, file: !1956, line: 1640, column: 3)
!2792 = !DILocation(line: 1641, column: 41, scope: !2791)
!2793 = !DILocation(line: 1641, column: 50, scope: !2791)
!2794 = !DILocation(line: 1641, column: 59, scope: !2791)
!2795 = !DILocation(line: 1641, column: 46, scope: !2791)
!2796 = !DILocation(line: 1641, column: 66, scope: !2791)
!2797 = !DILocation(line: 1641, column: 64, scope: !2791)
!2798 = !DILocation(line: 1641, column: 16, scope: !2791)
!2799 = !DILocation(line: 1641, column: 14, scope: !2791)
!2800 = !DILocation(line: 1642, column: 15, scope: !2791)
!2801 = !DILocation(line: 1642, column: 24, scope: !2791)
!2802 = !DILocation(line: 1642, column: 13, scope: !2791)
!2803 = !DILocation(line: 1643, column: 28, scope: !2791)
!2804 = !DILocation(line: 1643, column: 37, scope: !2791)
!2805 = !DILocation(line: 1643, column: 58, scope: !2791)
!2806 = !DILocation(line: 1643, column: 16, scope: !2791)
!2807 = !DILocation(line: 1643, column: 13, scope: !2791)
!2808 = !DILocation(line: 1644, column: 19, scope: !2791)
!2809 = !DILocation(line: 1644, column: 5, scope: !2791)
!2810 = !DILocation(line: 1644, column: 13, scope: !2791)
!2811 = !DILocation(line: 1644, column: 17, scope: !2791)
!2812 = !DILocation(line: 1645, column: 3, scope: !2791)
!2813 = !DILocation(line: 1648, column: 33, scope: !2814)
!2814 = distinct !DILexicalBlock(scope: !2787, file: !1956, line: 1647, column: 3)
!2815 = !DILocation(line: 1648, column: 48, scope: !2814)
!2816 = !DILocation(line: 1648, column: 57, scope: !2814)
!2817 = !DILocation(line: 1648, column: 44, scope: !2814)
!2818 = !DILocation(line: 1648, column: 64, scope: !2814)
!2819 = !DILocation(line: 1648, column: 62, scope: !2814)
!2820 = !DILocation(line: 1648, column: 19, scope: !2814)
!2821 = !DILocation(line: 1648, column: 5, scope: !2814)
!2822 = !DILocation(line: 1648, column: 13, scope: !2814)
!2823 = !DILocation(line: 1648, column: 17, scope: !2814)
!2824 = !DILocation(line: 1650, column: 1, scope: !2773)
!2825 = distinct !DISubprogram(name: "z_log_msg_runtime_vcreate", scope: !2826, file: !2826, line: 53, type: !2827, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!2826 = !DIFile(filename: "zephyr/include/generated/syscalls/log_msg.h", directory: "/home/sri/zephyrproject/zephyr/build")
!2827 = !DISubroutineType(types: !2828)
!2828 = !{null, !173, !165, !173, !165, !2724, !178, !162, !2741}
!2829 = !DILocalVariable(name: "domain_id", arg: 1, scope: !2825, file: !2826, line: 53, type: !173)
!2830 = !DILocation(line: 53, column: 54, scope: !2825)
!2831 = !DILocalVariable(name: "source", arg: 2, scope: !2825, file: !2826, line: 53, type: !165)
!2832 = !DILocation(line: 53, column: 78, scope: !2825)
!2833 = !DILocalVariable(name: "level", arg: 3, scope: !2825, file: !2826, line: 53, type: !173)
!2834 = !DILocation(line: 53, column: 94, scope: !2825)
!2835 = !DILocalVariable(name: "data", arg: 4, scope: !2825, file: !2826, line: 53, type: !165)
!2836 = !DILocation(line: 53, column: 114, scope: !2825)
!2837 = !DILocalVariable(name: "dlen", arg: 5, scope: !2825, file: !2826, line: 53, type: !2724)
!2838 = !DILocation(line: 53, column: 127, scope: !2825)
!2839 = !DILocalVariable(name: "package_flags", arg: 6, scope: !2825, file: !2826, line: 53, type: !178)
!2840 = !DILocation(line: 53, column: 142, scope: !2825)
!2841 = !DILocalVariable(name: "fmt", arg: 7, scope: !2825, file: !2826, line: 53, type: !162)
!2842 = !DILocation(line: 53, column: 170, scope: !2825)
!2843 = !DILocalVariable(name: "ap", arg: 8, scope: !2825, file: !2826, line: 53, type: !2741)
!2844 = !DILocation(line: 53, column: 183, scope: !2825)
!2845 = !DILocation(line: 76, column: 2, scope: !2825)
!2846 = !DILocation(line: 76, column: 7, scope: !2847)
!2847 = distinct !DILexicalBlock(scope: !2825, file: !2826, line: 76, column: 5)
!2848 = !{i64 443396}
!2849 = !DILocation(line: 76, column: 47, scope: !2847)
!2850 = !DILocation(line: 77, column: 35, scope: !2825)
!2851 = !DILocation(line: 77, column: 46, scope: !2825)
!2852 = !DILocation(line: 77, column: 54, scope: !2825)
!2853 = !DILocation(line: 77, column: 61, scope: !2825)
!2854 = !DILocation(line: 77, column: 67, scope: !2825)
!2855 = !DILocation(line: 77, column: 73, scope: !2825)
!2856 = !DILocation(line: 77, column: 88, scope: !2825)
!2857 = !DILocation(line: 77, column: 2, scope: !2825)
!2858 = !DILocation(line: 78, column: 1, scope: !2825)
!2859 = distinct !DISubprogram(name: "LL_USART_GetParity", scope: !1956, file: !1956, line: 757, type: !1957, scopeLine: 758, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!2860 = !DILocalVariable(name: "USARTx", arg: 1, scope: !2859, file: !1956, line: 757, type: !1959)
!2861 = !DILocation(line: 757, column: 66, scope: !2859)
!2862 = !DILocation(line: 759, column: 23, scope: !2859)
!2863 = !DILocation(line: 759, column: 31, scope: !2859)
!2864 = !DILocation(line: 759, column: 36, scope: !2859)
!2865 = !DILocation(line: 759, column: 3, scope: !2859)
!2866 = distinct !DISubprogram(name: "LL_USART_SetParity", scope: !1956, file: !1956, line: 742, type: !2676, scopeLine: 743, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!2867 = !DILocalVariable(name: "USARTx", arg: 1, scope: !2866, file: !1956, line: 742, type: !260)
!2868 = !DILocation(line: 742, column: 56, scope: !2866)
!2869 = !DILocalVariable(name: "Parity", arg: 2, scope: !2866, file: !1956, line: 742, type: !178)
!2870 = !DILocation(line: 742, column: 73, scope: !2866)
!2871 = !DILocation(line: 744, column: 28, scope: !2866)
!2872 = !DILocation(line: 744, column: 36, scope: !2866)
!2873 = !DILocation(line: 744, column: 43, scope: !2866)
!2874 = !DILocation(line: 744, column: 89, scope: !2866)
!2875 = !DILocation(line: 744, column: 86, scope: !2866)
!2876 = !DILocation(line: 744, column: 6, scope: !2866)
!2877 = !DILocation(line: 744, column: 14, scope: !2866)
!2878 = !DILocation(line: 744, column: 20, scope: !2866)
!2879 = !DILocation(line: 745, column: 1, scope: !2866)
!2880 = distinct !DISubprogram(name: "LL_USART_GetStopBitsLength", scope: !1956, file: !1956, line: 1075, type: !1957, scopeLine: 1076, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!2881 = !DILocalVariable(name: "USARTx", arg: 1, scope: !2880, file: !1956, line: 1075, type: !1959)
!2882 = !DILocation(line: 1075, column: 74, scope: !2880)
!2883 = !DILocation(line: 1077, column: 23, scope: !2880)
!2884 = !DILocation(line: 1077, column: 31, scope: !2880)
!2885 = !DILocation(line: 1077, column: 36, scope: !2880)
!2886 = !DILocation(line: 1077, column: 3, scope: !2880)
!2887 = distinct !DISubprogram(name: "LL_USART_SetStopBitsLength", scope: !1956, file: !1956, line: 1058, type: !2676, scopeLine: 1059, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!2888 = !DILocalVariable(name: "USARTx", arg: 1, scope: !2887, file: !1956, line: 1058, type: !260)
!2889 = !DILocation(line: 1058, column: 64, scope: !2887)
!2890 = !DILocalVariable(name: "StopBits", arg: 2, scope: !2887, file: !1956, line: 1058, type: !178)
!2891 = !DILocation(line: 1058, column: 81, scope: !2887)
!2892 = !DILocation(line: 1060, column: 28, scope: !2887)
!2893 = !DILocation(line: 1060, column: 36, scope: !2887)
!2894 = !DILocation(line: 1060, column: 43, scope: !2887)
!2895 = !DILocation(line: 1060, column: 71, scope: !2887)
!2896 = !DILocation(line: 1060, column: 68, scope: !2887)
!2897 = !DILocation(line: 1060, column: 6, scope: !2887)
!2898 = !DILocation(line: 1060, column: 14, scope: !2887)
!2899 = !DILocation(line: 1060, column: 20, scope: !2887)
!2900 = !DILocation(line: 1061, column: 1, scope: !2887)
!2901 = distinct !DISubprogram(name: "LL_USART_GetDataWidth", scope: !1956, file: !1956, line: 819, type: !1957, scopeLine: 820, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!2902 = !DILocalVariable(name: "USARTx", arg: 1, scope: !2901, file: !1956, line: 819, type: !1959)
!2903 = !DILocation(line: 819, column: 69, scope: !2901)
!2904 = !DILocation(line: 821, column: 23, scope: !2901)
!2905 = !DILocation(line: 821, column: 31, scope: !2901)
!2906 = !DILocation(line: 821, column: 36, scope: !2901)
!2907 = !DILocation(line: 821, column: 3, scope: !2901)
!2908 = distinct !DISubprogram(name: "LL_USART_SetDataWidth", scope: !1956, file: !1956, line: 802, type: !2676, scopeLine: 803, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!2909 = !DILocalVariable(name: "USARTx", arg: 1, scope: !2908, file: !1956, line: 802, type: !260)
!2910 = !DILocation(line: 802, column: 59, scope: !2908)
!2911 = !DILocalVariable(name: "DataWidth", arg: 2, scope: !2908, file: !1956, line: 802, type: !178)
!2912 = !DILocation(line: 802, column: 76, scope: !2908)
!2913 = !DILocation(line: 804, column: 28, scope: !2908)
!2914 = !DILocation(line: 804, column: 36, scope: !2908)
!2915 = !DILocation(line: 804, column: 43, scope: !2908)
!2916 = !DILocation(line: 804, column: 75, scope: !2908)
!2917 = !DILocation(line: 804, column: 72, scope: !2908)
!2918 = !DILocation(line: 804, column: 6, scope: !2908)
!2919 = !DILocation(line: 804, column: 14, scope: !2908)
!2920 = !DILocation(line: 804, column: 20, scope: !2908)
!2921 = !DILocation(line: 805, column: 1, scope: !2908)
!2922 = distinct !DISubprogram(name: "LL_USART_GetHWFlowCtrl", scope: !1956, file: !1956, line: 1509, type: !1957, scopeLine: 1510, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!2923 = !DILocalVariable(name: "USARTx", arg: 1, scope: !2922, file: !1956, line: 1509, type: !1959)
!2924 = !DILocation(line: 1509, column: 70, scope: !2922)
!2925 = !DILocation(line: 1511, column: 23, scope: !2922)
!2926 = !DILocation(line: 1511, column: 31, scope: !2922)
!2927 = !DILocation(line: 1511, column: 36, scope: !2922)
!2928 = !DILocation(line: 1511, column: 3, scope: !2922)
!2929 = distinct !DISubprogram(name: "LL_USART_IsEnabledDEMode", scope: !1956, file: !1956, line: 2252, type: !1957, scopeLine: 2253, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!2930 = !DILocalVariable(name: "USARTx", arg: 1, scope: !2929, file: !1956, line: 2252, type: !1959)
!2931 = !DILocation(line: 2252, column: 72, scope: !2929)
!2932 = !DILocation(line: 2254, column: 14, scope: !2929)
!2933 = !DILocation(line: 2254, column: 22, scope: !2929)
!2934 = !DILocation(line: 2254, column: 27, scope: !2929)
!2935 = !DILocation(line: 2254, column: 49, scope: !2929)
!2936 = !DILocation(line: 2254, column: 11, scope: !2929)
!2937 = !DILocation(line: 2254, column: 3, scope: !2929)
!2938 = distinct !DISubprogram(name: "LL_USART_EnableDEMode", scope: !1956, file: !1956, line: 2226, type: !1970, scopeLine: 2227, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!2939 = !DILocalVariable(name: "USARTx", arg: 1, scope: !2938, file: !1956, line: 2226, type: !260)
!2940 = !DILocation(line: 2226, column: 59, scope: !2938)
!2941 = !DILocation(line: 2228, column: 5, scope: !2938)
!2942 = !DILocation(line: 2228, column: 13, scope: !2938)
!2943 = !DILocation(line: 2228, column: 18, scope: !2938)
!2944 = !DILocation(line: 2229, column: 1, scope: !2938)
!2945 = distinct !DISubprogram(name: "LL_USART_DisableDEMode", scope: !1956, file: !1956, line: 2239, type: !1970, scopeLine: 2240, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!2946 = !DILocalVariable(name: "USARTx", arg: 1, scope: !2945, file: !1956, line: 2239, type: !260)
!2947 = !DILocation(line: 2239, column: 60, scope: !2945)
!2948 = !DILocation(line: 2241, column: 5, scope: !2945)
!2949 = !DILocation(line: 2241, column: 13, scope: !2945)
!2950 = !DILocation(line: 2241, column: 18, scope: !2945)
!2951 = !DILocation(line: 2242, column: 1, scope: !2945)
!2952 = distinct !DISubprogram(name: "uart_stm32_ll2cfg_parity", scope: !2, file: !2, line: 298, type: !2953, scopeLine: 299, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!2953 = !DISubroutineType(types: !2954)
!2954 = !{!104, !178}
!2955 = !DILocalVariable(name: "parity", arg: 1, scope: !2952, file: !2, line: 298, type: !178)
!2956 = !DILocation(line: 298, column: 73, scope: !2952)
!2957 = !DILocation(line: 300, column: 10, scope: !2952)
!2958 = !DILocation(line: 300, column: 2, scope: !2952)
!2959 = !DILocation(line: 302, column: 3, scope: !2960)
!2960 = distinct !DILexicalBlock(scope: !2952, file: !2, line: 300, column: 18)
!2961 = !DILocation(line: 304, column: 3, scope: !2960)
!2962 = !DILocation(line: 305, column: 2, scope: !2960)
!2963 = !DILocation(line: 307, column: 3, scope: !2960)
!2964 = !DILocation(line: 309, column: 1, scope: !2952)
!2965 = distinct !DISubprogram(name: "uart_stm32_ll2cfg_hwctrl", scope: !2, file: !2, line: 453, type: !2966, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!2966 = !DISubroutineType(types: !2967)
!2967 = !{!118, !178}
!2968 = !DILocalVariable(name: "fc", arg: 1, scope: !2965, file: !2, line: 453, type: !178)
!2969 = !DILocation(line: 453, column: 79, scope: !2965)
!2970 = !DILocation(line: 455, column: 6, scope: !2971)
!2971 = distinct !DILexicalBlock(scope: !2965, file: !2, line: 455, column: 6)
!2972 = !DILocation(line: 455, column: 9, scope: !2971)
!2973 = !DILocation(line: 455, column: 6, scope: !2965)
!2974 = !DILocation(line: 456, column: 3, scope: !2975)
!2975 = distinct !DILexicalBlock(scope: !2971, file: !2, line: 455, column: 49)
!2976 = !DILocation(line: 459, column: 2, scope: !2965)
!2977 = !DILocation(line: 460, column: 1, scope: !2965)
!2978 = distinct !DISubprogram(name: "uart_stm32_fifo_fill_visitor", scope: !2, file: !2, line: 801, type: !2979, scopeLine: 803, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!2979 = !DISubroutineType(types: !2980)
!2980 = !{!145, !156, !165, !145, !2981}
!2981 = !DIDerivedType(tag: DW_TAG_typedef, name: "fifo_fill_fn", file: !2, line: 798, baseType: !2982)
!2982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2983, size: 32)
!2983 = !DISubroutineType(types: !2984)
!2984 = !{null, !1258, !165, !230}
!2985 = !DILocalVariable(name: "dev", arg: 1, scope: !2978, file: !2, line: 801, type: !156)
!2986 = !DILocation(line: 801, column: 62, scope: !2978)
!2987 = !DILocalVariable(name: "tx_data", arg: 2, scope: !2978, file: !2, line: 801, type: !165)
!2988 = !DILocation(line: 801, column: 79, scope: !2978)
!2989 = !DILocalVariable(name: "size", arg: 3, scope: !2978, file: !2, line: 801, type: !145)
!2990 = !DILocation(line: 801, column: 92, scope: !2978)
!2991 = !DILocalVariable(name: "fill_fn", arg: 4, scope: !2978, file: !2, line: 802, type: !2981)
!2992 = !DILocation(line: 802, column: 19, scope: !2978)
!2993 = !DILocalVariable(name: "config", scope: !2978, file: !2, line: 804, type: !1258)
!2994 = !DILocation(line: 804, column: 34, scope: !2978)
!2995 = !DILocation(line: 804, column: 43, scope: !2978)
!2996 = !DILocation(line: 804, column: 48, scope: !2978)
!2997 = !DILocalVariable(name: "num_tx", scope: !2978, file: !2, line: 805, type: !173)
!2998 = !DILocation(line: 805, column: 10, scope: !2978)
!2999 = !DILocalVariable(name: "key", scope: !2978, file: !2, line: 806, type: !179)
!3000 = !DILocation(line: 806, column: 15, scope: !2978)
!3001 = !DILocation(line: 808, column: 33, scope: !3002)
!3002 = distinct !DILexicalBlock(scope: !2978, file: !2, line: 808, column: 6)
!3003 = !DILocation(line: 808, column: 41, scope: !3002)
!3004 = !DILocation(line: 808, column: 7, scope: !3002)
!3005 = !DILocation(line: 808, column: 6, scope: !2978)
!3006 = !DILocation(line: 809, column: 10, scope: !3007)
!3007 = distinct !DILexicalBlock(scope: !3002, file: !2, line: 808, column: 49)
!3008 = !DILocation(line: 809, column: 3, scope: !3007)
!3009 = !DILocation(line: 44, column: 15, scope: !2023, inlinedAt: !3010)
!3010 = distinct !DILocation(line: 813, column: 8, scope: !2978)
!3011 = !DILocation(line: 48, column: 2, scope: !2023, inlinedAt: !3010)
!3012 = !DILocation(line: 80, column: 9, scope: !2023, inlinedAt: !3010)
!3013 = !DILocation(line: 813, column: 6, scope: !2978)
!3014 = !DILocation(line: 815, column: 2, scope: !2978)
!3015 = !DILocation(line: 815, column: 10, scope: !2978)
!3016 = !DILocation(line: 815, column: 17, scope: !2978)
!3017 = !DILocation(line: 815, column: 15, scope: !2978)
!3018 = !DILocation(line: 815, column: 24, scope: !2978)
!3019 = !DILocation(line: 815, column: 29, scope: !2978)
!3020 = !DILocation(line: 815, column: 58, scope: !2978)
!3021 = !DILocation(line: 815, column: 66, scope: !2978)
!3022 = !DILocation(line: 815, column: 32, scope: !2978)
!3023 = !DILocation(line: 0, scope: !2978)
!3024 = !DILocation(line: 819, column: 3, scope: !3025)
!3025 = distinct !DILexicalBlock(scope: !2978, file: !2, line: 815, column: 74)
!3026 = !DILocation(line: 819, column: 11, scope: !3025)
!3027 = !DILocation(line: 819, column: 19, scope: !3025)
!3028 = !DILocation(line: 819, column: 28, scope: !3025)
!3029 = !DILocation(line: 820, column: 9, scope: !3025)
!3030 = distinct !{!3030, !3014, !3031}
!3031 = !DILocation(line: 821, column: 2, scope: !2978)
!3032 = !DILocation(line: 823, column: 18, scope: !2978)
!3033 = !DILocation(line: 88, column: 80, scope: !2043, inlinedAt: !3034)
!3034 = distinct !DILocation(line: 823, column: 2, scope: !2978)
!3035 = !DILocation(line: 91, column: 6, scope: !2049, inlinedAt: !3034)
!3036 = !DILocation(line: 91, column: 10, scope: !2049, inlinedAt: !3034)
!3037 = !DILocation(line: 91, column: 6, scope: !2043, inlinedAt: !3034)
!3038 = !DILocation(line: 92, column: 3, scope: !2053, inlinedAt: !3034)
!3039 = !DILocation(line: 94, column: 2, scope: !2043, inlinedAt: !3034)
!3040 = !DILocation(line: 114, column: 1, scope: !2043, inlinedAt: !3034)
!3041 = !DILocation(line: 825, column: 9, scope: !2978)
!3042 = !DILocation(line: 825, column: 2, scope: !2978)
!3043 = !DILocation(line: 826, column: 1, scope: !2978)
!3044 = distinct !DISubprogram(name: "fifo_fill_with_u8", scope: !2, file: !2, line: 828, type: !2983, scopeLine: 830, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!3045 = !DILocalVariable(name: "config", arg: 1, scope: !3044, file: !2, line: 828, type: !1258)
!3046 = !DILocation(line: 828, column: 63, scope: !3044)
!3047 = !DILocalVariable(name: "tx_data", arg: 2, scope: !3044, file: !2, line: 829, type: !165)
!3048 = !DILocation(line: 829, column: 19, scope: !3044)
!3049 = !DILocalVariable(name: "offset", arg: 3, scope: !3044, file: !2, line: 829, type: !230)
!3050 = !DILocation(line: 829, column: 42, scope: !3044)
!3051 = !DILocalVariable(name: "data", scope: !3044, file: !2, line: 831, type: !229)
!3052 = !DILocation(line: 831, column: 17, scope: !3044)
!3053 = !DILocation(line: 831, column: 41, scope: !3044)
!3054 = !DILocation(line: 833, column: 25, scope: !3044)
!3055 = !DILocation(line: 833, column: 33, scope: !3044)
!3056 = !DILocation(line: 833, column: 40, scope: !3044)
!3057 = !DILocation(line: 833, column: 45, scope: !3044)
!3058 = !DILocation(line: 833, column: 2, scope: !3044)
!3059 = !DILocation(line: 834, column: 1, scope: !3044)
!3060 = distinct !DISubprogram(name: "uart_stm32_fifo_read_visitor", scope: !2, file: !2, line: 849, type: !3061, scopeLine: 851, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!3061 = !DISubroutineType(types: !3062)
!3062 = !{!145, !156, !144, !235, !3063}
!3063 = !DIDerivedType(tag: DW_TAG_typedef, name: "fifo_read_fn", file: !2, line: 846, baseType: !3064)
!3064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3065, size: 32)
!3065 = !DISubroutineType(types: !3066)
!3066 = !{null, !1258, !144, !230}
!3067 = !DILocalVariable(name: "dev", arg: 1, scope: !3060, file: !2, line: 849, type: !156)
!3068 = !DILocation(line: 849, column: 62, scope: !3060)
!3069 = !DILocalVariable(name: "rx_data", arg: 2, scope: !3060, file: !2, line: 849, type: !144)
!3070 = !DILocation(line: 849, column: 73, scope: !3060)
!3071 = !DILocalVariable(name: "size", arg: 3, scope: !3060, file: !2, line: 849, type: !235)
!3072 = !DILocation(line: 849, column: 92, scope: !3060)
!3073 = !DILocalVariable(name: "read_fn", arg: 4, scope: !3060, file: !2, line: 850, type: !3063)
!3074 = !DILocation(line: 850, column: 19, scope: !3060)
!3075 = !DILocalVariable(name: "config", scope: !3060, file: !2, line: 852, type: !1258)
!3076 = !DILocation(line: 852, column: 34, scope: !3060)
!3077 = !DILocation(line: 852, column: 43, scope: !3060)
!3078 = !DILocation(line: 852, column: 48, scope: !3060)
!3079 = !DILocalVariable(name: "num_rx", scope: !3060, file: !2, line: 853, type: !173)
!3080 = !DILocation(line: 853, column: 10, scope: !3060)
!3081 = !DILocation(line: 855, column: 2, scope: !3060)
!3082 = !DILocation(line: 855, column: 10, scope: !3060)
!3083 = !DILocation(line: 855, column: 17, scope: !3060)
!3084 = !DILocation(line: 855, column: 15, scope: !3060)
!3085 = !DILocation(line: 855, column: 24, scope: !3060)
!3086 = !DILocation(line: 855, column: 29, scope: !3060)
!3087 = !DILocation(line: 855, column: 59, scope: !3060)
!3088 = !DILocation(line: 855, column: 67, scope: !3060)
!3089 = !DILocation(line: 855, column: 32, scope: !3060)
!3090 = !DILocation(line: 0, scope: !3060)
!3091 = !DILocation(line: 858, column: 3, scope: !3092)
!3092 = distinct !DILexicalBlock(scope: !3060, file: !2, line: 855, column: 75)
!3093 = !DILocation(line: 858, column: 11, scope: !3092)
!3094 = !DILocation(line: 858, column: 19, scope: !3092)
!3095 = !DILocation(line: 858, column: 28, scope: !3092)
!3096 = !DILocation(line: 859, column: 9, scope: !3092)
!3097 = !DILocation(line: 862, column: 33, scope: !3098)
!3098 = distinct !DILexicalBlock(scope: !3092, file: !2, line: 862, column: 7)
!3099 = !DILocation(line: 862, column: 41, scope: !3098)
!3100 = !DILocation(line: 862, column: 7, scope: !3098)
!3101 = !DILocation(line: 862, column: 7, scope: !3092)
!3102 = !DILocation(line: 863, column: 27, scope: !3103)
!3103 = distinct !DILexicalBlock(scope: !3098, file: !2, line: 862, column: 49)
!3104 = !DILocation(line: 863, column: 35, scope: !3103)
!3105 = !DILocation(line: 863, column: 4, scope: !3103)
!3106 = !DILocation(line: 868, column: 3, scope: !3103)
!3107 = distinct !{!3107, !3081, !3108}
!3108 = !DILocation(line: 869, column: 2, scope: !3060)
!3109 = !DILocation(line: 871, column: 9, scope: !3060)
!3110 = !DILocation(line: 871, column: 2, scope: !3060)
!3111 = distinct !DISubprogram(name: "fifo_read_with_u8", scope: !2, file: !2, line: 874, type: !3065, scopeLine: 876, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!3112 = !DILocalVariable(name: "config", arg: 1, scope: !3111, file: !2, line: 874, type: !1258)
!3113 = !DILocation(line: 874, column: 63, scope: !3111)
!3114 = !DILocalVariable(name: "rx_data", arg: 2, scope: !3111, file: !2, line: 874, type: !144)
!3115 = !DILocation(line: 874, column: 77, scope: !3111)
!3116 = !DILocalVariable(name: "offset", arg: 3, scope: !3111, file: !2, line: 875, type: !230)
!3117 = !DILocation(line: 875, column: 21, scope: !3111)
!3118 = !DILocalVariable(name: "data", scope: !3111, file: !2, line: 877, type: !180)
!3119 = !DILocation(line: 877, column: 11, scope: !3111)
!3120 = !DILocation(line: 877, column: 29, scope: !3111)
!3121 = !DILocation(line: 879, column: 39, scope: !3111)
!3122 = !DILocation(line: 879, column: 47, scope: !3111)
!3123 = !DILocation(line: 879, column: 17, scope: !3111)
!3124 = !DILocation(line: 879, column: 2, scope: !3111)
!3125 = !DILocation(line: 879, column: 7, scope: !3111)
!3126 = !DILocation(line: 879, column: 15, scope: !3111)
!3127 = !DILocation(line: 880, column: 1, scope: !3111)
!3128 = distinct !DISubprogram(name: "LL_USART_EnableIT_TC", scope: !1956, file: !1956, line: 3125, type: !1970, scopeLine: 3126, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!3129 = !DILocalVariable(name: "USARTx", arg: 1, scope: !3128, file: !1956, line: 3125, type: !260)
!3130 = !DILocation(line: 3125, column: 58, scope: !3128)
!3131 = !DILocation(line: 3127, column: 3, scope: !3128)
!3132 = !DILocalVariable(name: "primask", scope: !3133, file: !1956, line: 3127, type: !178)
!3133 = distinct !DILexicalBlock(scope: !3128, file: !1956, line: 3127, column: 6)
!3134 = !DILocation(line: 3127, column: 17, scope: !3133)
!3135 = !DILocalVariable(name: "result", scope: !3136, file: !3137, line: 997, type: !178)
!3136 = distinct !DISubprogram(name: "__get_PRIMASK", scope: !3137, file: !3137, line: 995, type: !3138, scopeLine: 996, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!3137 = !DIFile(filename: "modules/hal/cmsis/CMSIS/Core/Include/cmsis_armclang.h", directory: "/home/sri/zephyrproject")
!3138 = !DISubroutineType(types: !3139)
!3139 = !{!178}
!3140 = !DILocation(line: 997, column: 12, scope: !3136, inlinedAt: !3141)
!3141 = distinct !DILocation(line: 3127, column: 36, scope: !3133)
!3142 = !DILocation(line: 999, column: 3, scope: !3136, inlinedAt: !3141)
!3143 = !{i64 165791}
!3144 = !DILocation(line: 1000, column: 10, scope: !3136, inlinedAt: !3141)
!3145 = !DILocation(line: 3127, column: 34, scope: !3133)
!3146 = !DILocalVariable(name: "priMask", arg: 1, scope: !3147, file: !3137, line: 1025, type: !178)
!3147 = distinct !DISubprogram(name: "__set_PRIMASK", scope: !3137, file: !3137, line: 1025, type: !3148, scopeLine: 1026, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!3148 = !DISubroutineType(types: !3149)
!3149 = !{null, !178}
!3150 = !DILocation(line: 1025, column: 76, scope: !3147, inlinedAt: !3151)
!3151 = distinct !DILocation(line: 3127, column: 53, scope: !3133)
!3152 = !DILocation(line: 1027, column: 46, scope: !3147, inlinedAt: !3151)
!3153 = !DILocation(line: 1027, column: 3, scope: !3147, inlinedAt: !3151)
!3154 = !{i64 166041}
!3155 = !DILocation(line: 3127, column: 74, scope: !3133)
!3156 = !DILocation(line: 3127, column: 82, scope: !3133)
!3157 = !DILocation(line: 3127, column: 88, scope: !3133)
!3158 = !DILocation(line: 3127, column: 127, scope: !3133)
!3159 = !DILocation(line: 1025, column: 76, scope: !3147, inlinedAt: !3160)
!3160 = distinct !DILocation(line: 3127, column: 113, scope: !3133)
!3161 = !DILocation(line: 1027, column: 46, scope: !3147, inlinedAt: !3160)
!3162 = !DILocation(line: 1027, column: 3, scope: !3147, inlinedAt: !3160)
!3163 = !DILocation(line: 3127, column: 137, scope: !3133)
!3164 = !DILocation(line: 3128, column: 1, scope: !3128)
!3165 = distinct !DISubprogram(name: "LL_USART_DisableIT_TC", scope: !1956, file: !1956, line: 3278, type: !1970, scopeLine: 3279, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!3166 = !DILocalVariable(name: "USARTx", arg: 1, scope: !3165, file: !1956, line: 3278, type: !260)
!3167 = !DILocation(line: 3278, column: 59, scope: !3165)
!3168 = !DILocation(line: 3280, column: 3, scope: !3165)
!3169 = !DILocalVariable(name: "primask", scope: !3170, file: !1956, line: 3280, type: !178)
!3170 = distinct !DILexicalBlock(scope: !3165, file: !1956, line: 3280, column: 6)
!3171 = !DILocation(line: 3280, column: 17, scope: !3170)
!3172 = !DILocation(line: 997, column: 12, scope: !3136, inlinedAt: !3173)
!3173 = distinct !DILocation(line: 3280, column: 36, scope: !3170)
!3174 = !DILocation(line: 999, column: 3, scope: !3136, inlinedAt: !3173)
!3175 = !DILocation(line: 1000, column: 10, scope: !3136, inlinedAt: !3173)
!3176 = !DILocation(line: 3280, column: 34, scope: !3170)
!3177 = !DILocation(line: 1025, column: 76, scope: !3147, inlinedAt: !3178)
!3178 = distinct !DILocation(line: 3280, column: 53, scope: !3170)
!3179 = !DILocation(line: 1027, column: 46, scope: !3147, inlinedAt: !3178)
!3180 = !DILocation(line: 1027, column: 3, scope: !3147, inlinedAt: !3178)
!3181 = !DILocation(line: 3280, column: 74, scope: !3170)
!3182 = !DILocation(line: 3280, column: 82, scope: !3170)
!3183 = !DILocation(line: 3280, column: 88, scope: !3170)
!3184 = !DILocation(line: 3280, column: 128, scope: !3170)
!3185 = !DILocation(line: 1025, column: 76, scope: !3147, inlinedAt: !3186)
!3186 = distinct !DILocation(line: 3280, column: 114, scope: !3170)
!3187 = !DILocation(line: 1027, column: 46, scope: !3147, inlinedAt: !3186)
!3188 = !DILocation(line: 1027, column: 3, scope: !3147, inlinedAt: !3186)
!3189 = !DILocation(line: 3280, column: 138, scope: !3170)
!3190 = !DILocation(line: 3281, column: 1, scope: !3165)
!3191 = distinct !DISubprogram(name: "LL_USART_IsEnabledIT_TC", scope: !1956, file: !1956, line: 3431, type: !1957, scopeLine: 3432, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!3192 = !DILocalVariable(name: "USARTx", arg: 1, scope: !3191, file: !1956, line: 3431, type: !1959)
!3193 = !DILocation(line: 3431, column: 71, scope: !3191)
!3194 = !DILocation(line: 3433, column: 14, scope: !3191)
!3195 = !DILocation(line: 3433, column: 22, scope: !3191)
!3196 = !DILocation(line: 3433, column: 27, scope: !3191)
!3197 = !DILocation(line: 3433, column: 48, scope: !3191)
!3198 = !DILocation(line: 3433, column: 11, scope: !3191)
!3199 = !DILocation(line: 3433, column: 3, scope: !3191)
!3200 = distinct !DISubprogram(name: "LL_USART_EnableIT_RXNE", scope: !1956, file: !1956, line: 3114, type: !1970, scopeLine: 3115, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!3201 = !DILocalVariable(name: "USARTx", arg: 1, scope: !3200, file: !1956, line: 3114, type: !260)
!3202 = !DILocation(line: 3114, column: 60, scope: !3200)
!3203 = !DILocation(line: 3116, column: 3, scope: !3200)
!3204 = !DILocalVariable(name: "primask", scope: !3205, file: !1956, line: 3116, type: !178)
!3205 = distinct !DILexicalBlock(scope: !3200, file: !1956, line: 3116, column: 6)
!3206 = !DILocation(line: 3116, column: 17, scope: !3205)
!3207 = !DILocation(line: 997, column: 12, scope: !3136, inlinedAt: !3208)
!3208 = distinct !DILocation(line: 3116, column: 36, scope: !3205)
!3209 = !DILocation(line: 999, column: 3, scope: !3136, inlinedAt: !3208)
!3210 = !DILocation(line: 1000, column: 10, scope: !3136, inlinedAt: !3208)
!3211 = !DILocation(line: 3116, column: 34, scope: !3205)
!3212 = !DILocation(line: 1025, column: 76, scope: !3147, inlinedAt: !3213)
!3213 = distinct !DILocation(line: 3116, column: 53, scope: !3205)
!3214 = !DILocation(line: 1027, column: 46, scope: !3147, inlinedAt: !3213)
!3215 = !DILocation(line: 1027, column: 3, scope: !3147, inlinedAt: !3213)
!3216 = !DILocation(line: 3116, column: 74, scope: !3205)
!3217 = !DILocation(line: 3116, column: 82, scope: !3205)
!3218 = !DILocation(line: 3116, column: 88, scope: !3205)
!3219 = !DILocation(line: 3116, column: 127, scope: !3205)
!3220 = !DILocation(line: 1025, column: 76, scope: !3147, inlinedAt: !3221)
!3221 = distinct !DILocation(line: 3116, column: 113, scope: !3205)
!3222 = !DILocation(line: 1027, column: 46, scope: !3147, inlinedAt: !3221)
!3223 = !DILocation(line: 1027, column: 3, scope: !3147, inlinedAt: !3221)
!3224 = !DILocation(line: 3116, column: 137, scope: !3205)
!3225 = !DILocation(line: 3117, column: 1, scope: !3200)
!3226 = distinct !DISubprogram(name: "LL_USART_DisableIT_RXNE", scope: !1956, file: !1956, line: 3267, type: !1970, scopeLine: 3268, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!3227 = !DILocalVariable(name: "USARTx", arg: 1, scope: !3226, file: !1956, line: 3267, type: !260)
!3228 = !DILocation(line: 3267, column: 61, scope: !3226)
!3229 = !DILocation(line: 3269, column: 3, scope: !3226)
!3230 = !DILocalVariable(name: "primask", scope: !3231, file: !1956, line: 3269, type: !178)
!3231 = distinct !DILexicalBlock(scope: !3226, file: !1956, line: 3269, column: 6)
!3232 = !DILocation(line: 3269, column: 17, scope: !3231)
!3233 = !DILocation(line: 997, column: 12, scope: !3136, inlinedAt: !3234)
!3234 = distinct !DILocation(line: 3269, column: 36, scope: !3231)
!3235 = !DILocation(line: 999, column: 3, scope: !3136, inlinedAt: !3234)
!3236 = !DILocation(line: 1000, column: 10, scope: !3136, inlinedAt: !3234)
!3237 = !DILocation(line: 3269, column: 34, scope: !3231)
!3238 = !DILocation(line: 1025, column: 76, scope: !3147, inlinedAt: !3239)
!3239 = distinct !DILocation(line: 3269, column: 53, scope: !3231)
!3240 = !DILocation(line: 1027, column: 46, scope: !3147, inlinedAt: !3239)
!3241 = !DILocation(line: 1027, column: 3, scope: !3147, inlinedAt: !3239)
!3242 = !DILocation(line: 3269, column: 74, scope: !3231)
!3243 = !DILocation(line: 3269, column: 82, scope: !3231)
!3244 = !DILocation(line: 3269, column: 88, scope: !3231)
!3245 = !DILocation(line: 3269, column: 128, scope: !3231)
!3246 = !DILocation(line: 1025, column: 76, scope: !3147, inlinedAt: !3247)
!3247 = distinct !DILocation(line: 3269, column: 114, scope: !3231)
!3248 = !DILocation(line: 1027, column: 46, scope: !3147, inlinedAt: !3247)
!3249 = !DILocation(line: 1027, column: 3, scope: !3147, inlinedAt: !3247)
!3250 = !DILocation(line: 3269, column: 138, scope: !3231)
!3251 = !DILocation(line: 3270, column: 1, scope: !3226)
!3252 = distinct !DISubprogram(name: "LL_USART_IsActiveFlag_TC", scope: !1956, file: !1956, line: 2748, type: !1957, scopeLine: 2749, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!3253 = !DILocalVariable(name: "USARTx", arg: 1, scope: !3252, file: !1956, line: 2748, type: !1959)
!3254 = !DILocation(line: 2748, column: 72, scope: !3252)
!3255 = !DILocation(line: 2750, column: 14, scope: !3252)
!3256 = !DILocation(line: 2750, column: 22, scope: !3252)
!3257 = !DILocation(line: 2750, column: 27, scope: !3252)
!3258 = !DILocation(line: 2750, column: 48, scope: !3252)
!3259 = !DILocation(line: 2750, column: 11, scope: !3252)
!3260 = !DILocation(line: 2750, column: 3, scope: !3252)
!3261 = distinct !DISubprogram(name: "LL_USART_EnableIT_ERROR", scope: !1956, file: !1956, line: 3214, type: !1970, scopeLine: 3215, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!3262 = !DILocalVariable(name: "USARTx", arg: 1, scope: !3261, file: !1956, line: 3214, type: !260)
!3263 = !DILocation(line: 3214, column: 61, scope: !3261)
!3264 = !DILocation(line: 3216, column: 3, scope: !3261)
!3265 = !DILocalVariable(name: "primask", scope: !3266, file: !1956, line: 3216, type: !178)
!3266 = distinct !DILexicalBlock(scope: !3261, file: !1956, line: 3216, column: 6)
!3267 = !DILocation(line: 3216, column: 17, scope: !3266)
!3268 = !DILocation(line: 997, column: 12, scope: !3136, inlinedAt: !3269)
!3269 = distinct !DILocation(line: 3216, column: 36, scope: !3266)
!3270 = !DILocation(line: 999, column: 3, scope: !3136, inlinedAt: !3269)
!3271 = !DILocation(line: 1000, column: 10, scope: !3136, inlinedAt: !3269)
!3272 = !DILocation(line: 3216, column: 34, scope: !3266)
!3273 = !DILocation(line: 1025, column: 76, scope: !3147, inlinedAt: !3274)
!3274 = distinct !DILocation(line: 3216, column: 53, scope: !3266)
!3275 = !DILocation(line: 1027, column: 46, scope: !3147, inlinedAt: !3274)
!3276 = !DILocation(line: 1027, column: 3, scope: !3147, inlinedAt: !3274)
!3277 = !DILocation(line: 3216, column: 74, scope: !3266)
!3278 = !DILocation(line: 3216, column: 82, scope: !3266)
!3279 = !DILocation(line: 3216, column: 88, scope: !3266)
!3280 = !DILocation(line: 3216, column: 127, scope: !3266)
!3281 = !DILocation(line: 1025, column: 76, scope: !3147, inlinedAt: !3282)
!3282 = distinct !DILocation(line: 3216, column: 113, scope: !3266)
!3283 = !DILocation(line: 1027, column: 46, scope: !3147, inlinedAt: !3282)
!3284 = !DILocation(line: 1027, column: 3, scope: !3147, inlinedAt: !3282)
!3285 = !DILocation(line: 3216, column: 137, scope: !3266)
!3286 = !DILocation(line: 3217, column: 1, scope: !3261)
!3287 = distinct !DISubprogram(name: "LL_USART_EnableIT_LBD", scope: !1956, file: !1956, line: 3198, type: !1970, scopeLine: 3199, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!3288 = !DILocalVariable(name: "USARTx", arg: 1, scope: !3287, file: !1956, line: 3198, type: !260)
!3289 = !DILocation(line: 3198, column: 59, scope: !3287)
!3290 = !DILocation(line: 3200, column: 5, scope: !3287)
!3291 = !DILocation(line: 3200, column: 13, scope: !3287)
!3292 = !DILocation(line: 3200, column: 18, scope: !3287)
!3293 = !DILocation(line: 3201, column: 1, scope: !3287)
!3294 = distinct !DISubprogram(name: "LL_USART_EnableIT_PE", scope: !1956, file: !1956, line: 3147, type: !1970, scopeLine: 3148, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!3295 = !DILocalVariable(name: "USARTx", arg: 1, scope: !3294, file: !1956, line: 3147, type: !260)
!3296 = !DILocation(line: 3147, column: 58, scope: !3294)
!3297 = !DILocation(line: 3149, column: 3, scope: !3294)
!3298 = !DILocalVariable(name: "primask", scope: !3299, file: !1956, line: 3149, type: !178)
!3299 = distinct !DILexicalBlock(scope: !3294, file: !1956, line: 3149, column: 6)
!3300 = !DILocation(line: 3149, column: 17, scope: !3299)
!3301 = !DILocation(line: 997, column: 12, scope: !3136, inlinedAt: !3302)
!3302 = distinct !DILocation(line: 3149, column: 36, scope: !3299)
!3303 = !DILocation(line: 999, column: 3, scope: !3136, inlinedAt: !3302)
!3304 = !DILocation(line: 1000, column: 10, scope: !3136, inlinedAt: !3302)
!3305 = !DILocation(line: 3149, column: 34, scope: !3299)
!3306 = !DILocation(line: 1025, column: 76, scope: !3147, inlinedAt: !3307)
!3307 = distinct !DILocation(line: 3149, column: 53, scope: !3299)
!3308 = !DILocation(line: 1027, column: 46, scope: !3147, inlinedAt: !3307)
!3309 = !DILocation(line: 1027, column: 3, scope: !3147, inlinedAt: !3307)
!3310 = !DILocation(line: 3149, column: 74, scope: !3299)
!3311 = !DILocation(line: 3149, column: 82, scope: !3299)
!3312 = !DILocation(line: 3149, column: 88, scope: !3299)
!3313 = !DILocation(line: 3149, column: 127, scope: !3299)
!3314 = !DILocation(line: 1025, column: 76, scope: !3147, inlinedAt: !3315)
!3315 = distinct !DILocation(line: 3149, column: 113, scope: !3299)
!3316 = !DILocation(line: 1027, column: 46, scope: !3147, inlinedAt: !3315)
!3317 = !DILocation(line: 1027, column: 3, scope: !3147, inlinedAt: !3315)
!3318 = !DILocation(line: 3149, column: 137, scope: !3299)
!3319 = !DILocation(line: 3150, column: 1, scope: !3294)
!3320 = distinct !DISubprogram(name: "LL_USART_DisableIT_ERROR", scope: !1956, file: !1956, line: 3367, type: !1970, scopeLine: 3368, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!3321 = !DILocalVariable(name: "USARTx", arg: 1, scope: !3320, file: !1956, line: 3367, type: !260)
!3322 = !DILocation(line: 3367, column: 62, scope: !3320)
!3323 = !DILocation(line: 3369, column: 3, scope: !3320)
!3324 = !DILocalVariable(name: "primask", scope: !3325, file: !1956, line: 3369, type: !178)
!3325 = distinct !DILexicalBlock(scope: !3320, file: !1956, line: 3369, column: 6)
!3326 = !DILocation(line: 3369, column: 17, scope: !3325)
!3327 = !DILocation(line: 997, column: 12, scope: !3136, inlinedAt: !3328)
!3328 = distinct !DILocation(line: 3369, column: 36, scope: !3325)
!3329 = !DILocation(line: 999, column: 3, scope: !3136, inlinedAt: !3328)
!3330 = !DILocation(line: 1000, column: 10, scope: !3136, inlinedAt: !3328)
!3331 = !DILocation(line: 3369, column: 34, scope: !3325)
!3332 = !DILocation(line: 1025, column: 76, scope: !3147, inlinedAt: !3333)
!3333 = distinct !DILocation(line: 3369, column: 53, scope: !3325)
!3334 = !DILocation(line: 1027, column: 46, scope: !3147, inlinedAt: !3333)
!3335 = !DILocation(line: 1027, column: 3, scope: !3147, inlinedAt: !3333)
!3336 = !DILocation(line: 3369, column: 74, scope: !3325)
!3337 = !DILocation(line: 3369, column: 82, scope: !3325)
!3338 = !DILocation(line: 3369, column: 88, scope: !3325)
!3339 = !DILocation(line: 3369, column: 128, scope: !3325)
!3340 = !DILocation(line: 1025, column: 76, scope: !3147, inlinedAt: !3341)
!3341 = distinct !DILocation(line: 3369, column: 114, scope: !3325)
!3342 = !DILocation(line: 1027, column: 46, scope: !3147, inlinedAt: !3341)
!3343 = !DILocation(line: 1027, column: 3, scope: !3147, inlinedAt: !3341)
!3344 = !DILocation(line: 3369, column: 138, scope: !3325)
!3345 = !DILocation(line: 3370, column: 1, scope: !3320)
!3346 = distinct !DISubprogram(name: "LL_USART_DisableIT_LBD", scope: !1956, file: !1956, line: 3351, type: !1970, scopeLine: 3352, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!3347 = !DILocalVariable(name: "USARTx", arg: 1, scope: !3346, file: !1956, line: 3351, type: !260)
!3348 = !DILocation(line: 3351, column: 60, scope: !3346)
!3349 = !DILocation(line: 3353, column: 5, scope: !3346)
!3350 = !DILocation(line: 3353, column: 13, scope: !3346)
!3351 = !DILocation(line: 3353, column: 18, scope: !3346)
!3352 = !DILocation(line: 3354, column: 1, scope: !3346)
!3353 = distinct !DISubprogram(name: "LL_USART_DisableIT_PE", scope: !1956, file: !1956, line: 3300, type: !1970, scopeLine: 3301, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!3354 = !DILocalVariable(name: "USARTx", arg: 1, scope: !3353, file: !1956, line: 3300, type: !260)
!3355 = !DILocation(line: 3300, column: 59, scope: !3353)
!3356 = !DILocation(line: 3302, column: 3, scope: !3353)
!3357 = !DILocalVariable(name: "primask", scope: !3358, file: !1956, line: 3302, type: !178)
!3358 = distinct !DILexicalBlock(scope: !3353, file: !1956, line: 3302, column: 6)
!3359 = !DILocation(line: 3302, column: 17, scope: !3358)
!3360 = !DILocation(line: 997, column: 12, scope: !3136, inlinedAt: !3361)
!3361 = distinct !DILocation(line: 3302, column: 36, scope: !3358)
!3362 = !DILocation(line: 999, column: 3, scope: !3136, inlinedAt: !3361)
!3363 = !DILocation(line: 1000, column: 10, scope: !3136, inlinedAt: !3361)
!3364 = !DILocation(line: 3302, column: 34, scope: !3358)
!3365 = !DILocation(line: 1025, column: 76, scope: !3147, inlinedAt: !3366)
!3366 = distinct !DILocation(line: 3302, column: 53, scope: !3358)
!3367 = !DILocation(line: 1027, column: 46, scope: !3147, inlinedAt: !3366)
!3368 = !DILocation(line: 1027, column: 3, scope: !3147, inlinedAt: !3366)
!3369 = !DILocation(line: 3302, column: 74, scope: !3358)
!3370 = !DILocation(line: 3302, column: 82, scope: !3358)
!3371 = !DILocation(line: 3302, column: 88, scope: !3358)
!3372 = !DILocation(line: 3302, column: 128, scope: !3358)
!3373 = !DILocation(line: 1025, column: 76, scope: !3147, inlinedAt: !3374)
!3374 = distinct !DILocation(line: 3302, column: 114, scope: !3358)
!3375 = !DILocation(line: 1027, column: 46, scope: !3147, inlinedAt: !3374)
!3376 = !DILocation(line: 1027, column: 3, scope: !3147, inlinedAt: !3374)
!3377 = !DILocation(line: 3302, column: 138, scope: !3358)
!3378 = !DILocation(line: 3303, column: 1, scope: !3353)
!3379 = distinct !DISubprogram(name: "LL_USART_IsEnabledIT_RXNE", scope: !1956, file: !1956, line: 3420, type: !1957, scopeLine: 3421, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!3380 = !DILocalVariable(name: "USARTx", arg: 1, scope: !3379, file: !1956, line: 3420, type: !1959)
!3381 = !DILocation(line: 3420, column: 73, scope: !3379)
!3382 = !DILocation(line: 3422, column: 14, scope: !3379)
!3383 = !DILocation(line: 3422, column: 22, scope: !3379)
!3384 = !DILocation(line: 3422, column: 27, scope: !3379)
!3385 = !DILocation(line: 3422, column: 48, scope: !3379)
!3386 = !DILocation(line: 3422, column: 11, scope: !3379)
!3387 = !DILocation(line: 3422, column: 3, scope: !3379)
!3388 = distinct !DISubprogram(name: "uart_stm32_clocks_enable", scope: !2, file: !2, line: 1845, type: !205, scopeLine: 1846, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!3389 = !DILocalVariable(name: "dev", arg: 1, scope: !3388, file: !2, line: 1845, type: !156)
!3390 = !DILocation(line: 1845, column: 58, scope: !3388)
!3391 = !DILocalVariable(name: "config", scope: !3388, file: !2, line: 1847, type: !1258)
!3392 = !DILocation(line: 1847, column: 34, scope: !3388)
!3393 = !DILocation(line: 1847, column: 43, scope: !3388)
!3394 = !DILocation(line: 1847, column: 48, scope: !3388)
!3395 = !DILocalVariable(name: "data", scope: !3388, file: !2, line: 1848, type: !1328)
!3396 = !DILocation(line: 1848, column: 26, scope: !3388)
!3397 = !DILocation(line: 1848, column: 33, scope: !3388)
!3398 = !DILocation(line: 1848, column: 38, scope: !3388)
!3399 = !DILocalVariable(name: "err", scope: !3388, file: !2, line: 1849, type: !145)
!3400 = !DILocation(line: 1849, column: 6, scope: !3388)
!3401 = !DILocation(line: 1851, column: 25, scope: !3388)
!3402 = !DILocation(line: 1851, column: 2, scope: !3388)
!3403 = !DILocation(line: 1853, column: 23, scope: !3404)
!3404 = distinct !DILexicalBlock(scope: !3388, file: !2, line: 1853, column: 6)
!3405 = !DILocation(line: 1853, column: 29, scope: !3404)
!3406 = !DILocation(line: 1853, column: 7, scope: !3404)
!3407 = !DILocation(line: 1853, column: 6, scope: !3388)
!3408 = !DILocation(line: 1854, column: 3, scope: !3409)
!3409 = distinct !DILexicalBlock(scope: !3404, file: !2, line: 1853, column: 37)
!3410 = !DILocalVariable(name: "is_user_context", scope: !3411, file: !2, line: 1854, type: !176)
!3411 = distinct !DILexicalBlock(scope: !3409, file: !2, line: 1854, column: 6)
!3412 = !DILocation(line: 1854, column: 348, scope: !3411)
!3413 = !DILocation(line: 1854, column: 366, scope: !3411)
!3414 = !DILocalVariable(name: "_mode", scope: !3411, file: !2, line: 1854, type: !145)
!3415 = !DILocation(line: 1854, column: 526, scope: !3411)
!3416 = !DILocalVariable(name: "_src", scope: !3411, file: !2, line: 1854, type: !144)
!3417 = !DILocation(line: 1854, column: 539, scope: !3411)
!3418 = !DILocation(line: 1854, column: 595, scope: !3411)
!3419 = !DILocation(line: 1854, column: 621, scope: !3411)
!3420 = !DILocation(line: 1854, column: 662, scope: !3421)
!3421 = distinct !DILexicalBlock(scope: !3411, file: !2, line: 1854, column: 624)
!3422 = !DILocation(line: 1854, column: 626, scope: !3421)
!3423 = !DILocation(line: 1854, column: 809, scope: !3421)
!3424 = !DILocation(line: 1854, column: 835, scope: !3421)
!3425 = !DILocation(line: 1854, column: 854, scope: !3411)
!3426 = !DILocation(line: 1854, column: 932, scope: !3411)
!3427 = !DILocation(line: 1855, column: 3, scope: !3409)
!3428 = !DILocation(line: 1859, column: 25, scope: !3388)
!3429 = !DILocation(line: 1859, column: 31, scope: !3388)
!3430 = !DILocation(line: 1859, column: 63, scope: !3388)
!3431 = !DILocation(line: 1859, column: 71, scope: !3388)
!3432 = !DILocation(line: 1859, column: 8, scope: !3388)
!3433 = !DILocation(line: 1859, column: 6, scope: !3388)
!3434 = !DILocation(line: 1860, column: 6, scope: !3435)
!3435 = distinct !DILexicalBlock(scope: !3388, file: !2, line: 1860, column: 6)
!3436 = !DILocation(line: 1860, column: 10, scope: !3435)
!3437 = !DILocation(line: 1860, column: 6, scope: !3388)
!3438 = !DILocation(line: 1861, column: 3, scope: !3439)
!3439 = distinct !DILexicalBlock(scope: !3435, file: !2, line: 1860, column: 16)
!3440 = !DILocalVariable(name: "is_user_context", scope: !3441, file: !2, line: 1861, type: !176)
!3441 = distinct !DILexicalBlock(scope: !3439, file: !2, line: 1861, column: 6)
!3442 = !DILocation(line: 1861, column: 349, scope: !3441)
!3443 = !DILocation(line: 1861, column: 367, scope: !3441)
!3444 = !DILocalVariable(name: "_mode", scope: !3441, file: !2, line: 1861, type: !145)
!3445 = !DILocation(line: 1861, column: 527, scope: !3441)
!3446 = !DILocalVariable(name: "_src", scope: !3441, file: !2, line: 1861, type: !144)
!3447 = !DILocation(line: 1861, column: 540, scope: !3441)
!3448 = !DILocation(line: 1861, column: 596, scope: !3441)
!3449 = !DILocation(line: 1861, column: 622, scope: !3441)
!3450 = !DILocation(line: 1861, column: 663, scope: !3451)
!3451 = distinct !DILexicalBlock(scope: !3441, file: !2, line: 1861, column: 625)
!3452 = !DILocation(line: 1861, column: 627, scope: !3451)
!3453 = !DILocation(line: 1861, column: 811, scope: !3451)
!3454 = !DILocation(line: 1861, column: 837, scope: !3451)
!3455 = !DILocation(line: 1861, column: 856, scope: !3441)
!3456 = !DILocation(line: 1861, column: 935, scope: !3441)
!3457 = !DILocation(line: 1862, column: 10, scope: !3439)
!3458 = !DILocation(line: 1862, column: 3, scope: !3439)
!3459 = !DILocation(line: 1875, column: 2, scope: !3388)
!3460 = !DILocation(line: 1876, column: 1, scope: !3388)
!3461 = distinct !DISubprogram(name: "pinctrl_apply_state", scope: !383, file: !383, line: 342, type: !3462, scopeLine: 344, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!3462 = !DISubroutineType(types: !3463)
!3463 = !{!145, !380, !173}
!3464 = !DILocalVariable(name: "config", arg: 1, scope: !3461, file: !383, line: 342, type: !380)
!3465 = !DILocation(line: 342, column: 72, scope: !3461)
!3466 = !DILocalVariable(name: "id", arg: 2, scope: !3461, file: !383, line: 343, type: !173)
!3467 = !DILocation(line: 343, column: 19, scope: !3461)
!3468 = !DILocalVariable(name: "ret", scope: !3461, file: !383, line: 345, type: !145)
!3469 = !DILocation(line: 345, column: 6, scope: !3461)
!3470 = !DILocalVariable(name: "state", scope: !3461, file: !383, line: 346, type: !386)
!3471 = !DILocation(line: 346, column: 30, scope: !3461)
!3472 = !DILocation(line: 348, column: 29, scope: !3461)
!3473 = !DILocation(line: 348, column: 37, scope: !3461)
!3474 = !DILocation(line: 348, column: 8, scope: !3461)
!3475 = !DILocation(line: 348, column: 6, scope: !3461)
!3476 = !DILocation(line: 349, column: 6, scope: !3477)
!3477 = distinct !DILexicalBlock(scope: !3461, file: !383, line: 349, column: 6)
!3478 = !DILocation(line: 349, column: 10, scope: !3477)
!3479 = !DILocation(line: 349, column: 6, scope: !3461)
!3480 = !DILocation(line: 350, column: 10, scope: !3481)
!3481 = distinct !DILexicalBlock(scope: !3477, file: !383, line: 349, column: 15)
!3482 = !DILocation(line: 350, column: 3, scope: !3481)
!3483 = !DILocation(line: 353, column: 36, scope: !3461)
!3484 = !DILocation(line: 353, column: 44, scope: !3461)
!3485 = !DILocation(line: 353, column: 9, scope: !3461)
!3486 = !DILocation(line: 353, column: 2, scope: !3461)
!3487 = !DILocation(line: 354, column: 1, scope: !3461)
!3488 = distinct !DISubprogram(name: "uart_stm32_registers_configure", scope: !2, file: !2, line: 1878, type: !205, scopeLine: 1879, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!3489 = !DILocalVariable(name: "dev", arg: 1, scope: !3488, file: !2, line: 1878, type: !156)
!3490 = !DILocation(line: 1878, column: 64, scope: !3488)
!3491 = !DILocalVariable(name: "config", scope: !3488, file: !2, line: 1880, type: !1258)
!3492 = !DILocation(line: 1880, column: 34, scope: !3488)
!3493 = !DILocation(line: 1880, column: 43, scope: !3488)
!3494 = !DILocation(line: 1880, column: 48, scope: !3488)
!3495 = !DILocalVariable(name: "data", scope: !3488, file: !2, line: 1881, type: !1328)
!3496 = !DILocation(line: 1881, column: 26, scope: !3488)
!3497 = !DILocation(line: 1881, column: 33, scope: !3488)
!3498 = !DILocation(line: 1881, column: 38, scope: !3488)
!3499 = !DILocalVariable(name: "uart_cfg", scope: !3488, file: !2, line: 1882, type: !224)
!3500 = !DILocation(line: 1882, column: 22, scope: !3488)
!3501 = !DILocation(line: 1882, column: 33, scope: !3488)
!3502 = !DILocation(line: 1882, column: 39, scope: !3488)
!3503 = !DILocation(line: 1884, column: 19, scope: !3488)
!3504 = !DILocation(line: 1884, column: 27, scope: !3488)
!3505 = !DILocation(line: 1884, column: 2, scope: !3488)
!3506 = !DILocation(line: 1886, column: 23, scope: !3507)
!3507 = distinct !DILexicalBlock(scope: !3488, file: !2, line: 1886, column: 6)
!3508 = !DILocation(line: 1886, column: 31, scope: !3507)
!3509 = !DILocation(line: 1886, column: 37, scope: !3507)
!3510 = !DILocation(line: 1886, column: 7, scope: !3507)
!3511 = !DILocation(line: 1886, column: 6, scope: !3488)
!3512 = !DILocation(line: 1887, column: 3, scope: !3513)
!3513 = distinct !DILexicalBlock(scope: !3507, file: !2, line: 1886, column: 43)
!3514 = !DILocalVariable(name: "is_user_context", scope: !3515, file: !2, line: 1887, type: !176)
!3515 = distinct !DILexicalBlock(scope: !3513, file: !2, line: 1887, column: 6)
!3516 = !DILocation(line: 1887, column: 344, scope: !3515)
!3517 = !DILocation(line: 1887, column: 362, scope: !3515)
!3518 = !DILocalVariable(name: "_mode", scope: !3515, file: !2, line: 1887, type: !145)
!3519 = !DILocation(line: 1887, column: 522, scope: !3515)
!3520 = !DILocalVariable(name: "_src", scope: !3515, file: !2, line: 1887, type: !144)
!3521 = !DILocation(line: 1887, column: 535, scope: !3515)
!3522 = !DILocation(line: 1887, column: 591, scope: !3515)
!3523 = !DILocation(line: 1887, column: 617, scope: !3515)
!3524 = !DILocation(line: 1887, column: 658, scope: !3525)
!3525 = distinct !DILexicalBlock(scope: !3515, file: !2, line: 1887, column: 620)
!3526 = !DILocation(line: 1887, column: 622, scope: !3525)
!3527 = !DILocation(line: 1887, column: 801, scope: !3525)
!3528 = !DILocation(line: 1887, column: 827, scope: !3525)
!3529 = !DILocation(line: 1887, column: 846, scope: !3515)
!3530 = !DILocation(line: 1887, column: 920, scope: !3515)
!3531 = !DILocation(line: 1888, column: 3, scope: !3513)
!3532 = !DILocation(line: 1892, column: 30, scope: !3488)
!3533 = !DILocation(line: 1892, column: 38, scope: !3488)
!3534 = !DILocation(line: 1892, column: 8, scope: !3488)
!3535 = !DILocation(line: 1895, column: 32, scope: !3488)
!3536 = !DILocation(line: 1895, column: 40, scope: !3488)
!3537 = !DILocation(line: 1895, column: 2, scope: !3488)
!3538 = !DILocation(line: 1899, column: 28, scope: !3488)
!3539 = !DILocation(line: 1899, column: 33, scope: !3488)
!3540 = !DILocation(line: 1899, column: 2, scope: !3488)
!3541 = !DILocation(line: 1902, column: 6, scope: !3542)
!3542 = distinct !DILexicalBlock(scope: !3488, file: !2, line: 1902, column: 6)
!3543 = !DILocation(line: 1902, column: 14, scope: !3542)
!3544 = !DILocation(line: 1902, column: 6, scope: !3488)
!3545 = !DILocation(line: 1903, column: 29, scope: !3546)
!3546 = distinct !DILexicalBlock(scope: !3542, file: !2, line: 1902, column: 27)
!3547 = !DILocation(line: 1903, column: 37, scope: !3546)
!3548 = !DILocation(line: 1903, column: 3, scope: !3546)
!3549 = !DILocation(line: 1904, column: 2, scope: !3546)
!3550 = !DILocation(line: 1907, column: 6, scope: !3551)
!3551 = distinct !DILexicalBlock(scope: !3488, file: !2, line: 1907, column: 6)
!3552 = !DILocation(line: 1907, column: 14, scope: !3551)
!3553 = !DILocation(line: 1907, column: 6, scope: !3488)
!3554 = !DILocation(line: 1908, column: 24, scope: !3555)
!3555 = distinct !DILexicalBlock(scope: !3551, file: !2, line: 1907, column: 26)
!3556 = !DILocation(line: 1908, column: 32, scope: !3555)
!3557 = !DILocation(line: 1908, column: 3, scope: !3555)
!3558 = !DILocation(line: 1909, column: 2, scope: !3555)
!3559 = !DILocation(line: 1913, column: 6, scope: !3560)
!3560 = distinct !DILexicalBlock(scope: !3488, file: !2, line: 1913, column: 6)
!3561 = !DILocation(line: 1913, column: 14, scope: !3560)
!3562 = !DILocation(line: 1913, column: 6, scope: !3488)
!3563 = !DILocation(line: 1914, column: 26, scope: !3564)
!3564 = distinct !DILexicalBlock(scope: !3560, file: !2, line: 1913, column: 25)
!3565 = !DILocation(line: 1914, column: 34, scope: !3564)
!3566 = !DILocation(line: 1914, column: 3, scope: !3564)
!3567 = !DILocation(line: 1915, column: 2, scope: !3564)
!3568 = !DILocation(line: 1919, column: 6, scope: !3569)
!3569 = distinct !DILexicalBlock(scope: !3488, file: !2, line: 1919, column: 6)
!3570 = !DILocation(line: 1919, column: 14, scope: !3569)
!3571 = !DILocation(line: 1919, column: 6, scope: !3488)
!3572 = !DILocation(line: 1920, column: 26, scope: !3573)
!3573 = distinct !DILexicalBlock(scope: !3569, file: !2, line: 1919, column: 25)
!3574 = !DILocation(line: 1920, column: 34, scope: !3573)
!3575 = !DILocation(line: 1920, column: 3, scope: !3573)
!3576 = !DILocation(line: 1921, column: 2, scope: !3573)
!3577 = !DILocation(line: 1925, column: 6, scope: !3578)
!3578 = distinct !DILexicalBlock(scope: !3488, file: !2, line: 1925, column: 6)
!3579 = !DILocation(line: 1925, column: 14, scope: !3578)
!3580 = !DILocation(line: 1925, column: 6, scope: !3488)
!3581 = !DILocation(line: 1926, column: 11, scope: !3582)
!3582 = distinct !DILexicalBlock(scope: !3583, file: !2, line: 1926, column: 7)
!3583 = distinct !DILexicalBlock(scope: !3578, file: !2, line: 1925, column: 25)
!3584 = !DILocation(line: 1926, column: 19, scope: !3582)
!3585 = !DILocation(line: 1926, column: 26, scope: !3582)
!3586 = !DILocation(line: 1926, column: 80, scope: !3582)
!3587 = !DILocation(line: 1926, column: 85, scope: !3582)
!3588 = !DILocation(line: 1926, column: 93, scope: !3582)
!3589 = !DILocation(line: 1926, column: 100, scope: !3582)
!3590 = !DILocation(line: 1926, column: 154, scope: !3582)
!3591 = !DILocation(line: 1926, column: 159, scope: !3582)
!3592 = !DILocation(line: 1926, column: 167, scope: !3582)
!3593 = !DILocation(line: 1926, column: 174, scope: !3582)
!3594 = !DILocation(line: 1926, column: 228, scope: !3582)
!3595 = !DILocation(line: 1926, column: 233, scope: !3582)
!3596 = !DILocation(line: 1926, column: 241, scope: !3582)
!3597 = !DILocation(line: 1926, column: 248, scope: !3582)
!3598 = !DILocation(line: 1926, column: 302, scope: !3582)
!3599 = !DILocation(line: 1926, column: 307, scope: !3582)
!3600 = !DILocation(line: 1926, column: 315, scope: !3582)
!3601 = !DILocation(line: 1926, column: 322, scope: !3582)
!3602 = !DILocation(line: 1926, column: 376, scope: !3582)
!3603 = !DILocation(line: 1926, column: 381, scope: !3582)
!3604 = !DILocation(line: 1926, column: 389, scope: !3582)
!3605 = !DILocation(line: 1926, column: 396, scope: !3582)
!3606 = !DILocation(line: 1926, column: 450, scope: !3582)
!3607 = !DILocation(line: 1926, column: 455, scope: !3582)
!3608 = !DILocation(line: 1926, column: 463, scope: !3582)
!3609 = !DILocation(line: 1926, column: 470, scope: !3582)
!3610 = !DILocation(line: 1926, column: 524, scope: !3582)
!3611 = !DILocation(line: 1926, column: 529, scope: !3582)
!3612 = !DILocation(line: 1926, column: 537, scope: !3582)
!3613 = !DILocation(line: 1926, column: 544, scope: !3582)
!3614 = !DILocation(line: 1926, column: 7, scope: !3583)
!3615 = !DILocation(line: 1927, column: 4, scope: !3616)
!3616 = distinct !DILexicalBlock(scope: !3582, file: !2, line: 1926, column: 600)
!3617 = !DILocalVariable(name: "is_user_context", scope: !3618, file: !2, line: 1927, type: !176)
!3618 = distinct !DILexicalBlock(scope: !3616, file: !2, line: 1927, column: 7)
!3619 = !DILocation(line: 1927, column: 363, scope: !3618)
!3620 = !DILocation(line: 1927, column: 381, scope: !3618)
!3621 = !DILocalVariable(name: "_mode", scope: !3618, file: !2, line: 1927, type: !145)
!3622 = !DILocation(line: 1927, column: 541, scope: !3618)
!3623 = !DILocalVariable(name: "_src", scope: !3618, file: !2, line: 1927, type: !144)
!3624 = !DILocation(line: 1927, column: 554, scope: !3618)
!3625 = !DILocation(line: 1927, column: 610, scope: !3618)
!3626 = !DILocation(line: 1927, column: 636, scope: !3618)
!3627 = !DILocation(line: 1927, column: 677, scope: !3628)
!3628 = distinct !DILexicalBlock(scope: !3618, file: !2, line: 1927, column: 639)
!3629 = !DILocation(line: 1927, column: 820, scope: !3628)
!3630 = !DILocation(line: 1927, column: 825, scope: !3628)
!3631 = !DILocation(line: 1927, column: 641, scope: !3628)
!3632 = !DILocation(line: 1927, column: 838, scope: !3628)
!3633 = !DILocation(line: 1927, column: 864, scope: !3628)
!3634 = !DILocation(line: 1927, column: 883, scope: !3618)
!3635 = !DILocation(line: 1927, column: 975, scope: !3618)
!3636 = !DILocation(line: 1928, column: 4, scope: !3616)
!3637 = !DILocation(line: 1931, column: 32, scope: !3583)
!3638 = !DILocation(line: 1931, column: 3, scope: !3583)
!3639 = !DILocation(line: 1932, column: 31, scope: !3583)
!3640 = !DILocation(line: 1932, column: 39, scope: !3583)
!3641 = !DILocation(line: 1932, column: 46, scope: !3583)
!3642 = !DILocation(line: 1932, column: 54, scope: !3583)
!3643 = !DILocation(line: 1932, column: 3, scope: !3583)
!3644 = !DILocation(line: 1933, column: 33, scope: !3583)
!3645 = !DILocation(line: 1933, column: 41, scope: !3583)
!3646 = !DILocation(line: 1933, column: 48, scope: !3583)
!3647 = !DILocation(line: 1933, column: 56, scope: !3583)
!3648 = !DILocation(line: 1933, column: 3, scope: !3583)
!3649 = !DILocation(line: 1935, column: 7, scope: !3650)
!3650 = distinct !DILexicalBlock(scope: !3583, file: !2, line: 1935, column: 7)
!3651 = !DILocation(line: 1935, column: 15, scope: !3650)
!3652 = !DILocation(line: 1935, column: 7, scope: !3583)
!3653 = !DILocation(line: 1936, column: 33, scope: !3654)
!3654 = distinct !DILexicalBlock(scope: !3650, file: !2, line: 1935, column: 26)
!3655 = !DILocation(line: 1936, column: 41, scope: !3654)
!3656 = !DILocation(line: 1936, column: 4, scope: !3654)
!3657 = !DILocation(line: 1937, column: 3, scope: !3654)
!3658 = !DILocation(line: 1938, column: 2, scope: !3583)
!3659 = !DILocation(line: 1941, column: 18, scope: !3488)
!3660 = !DILocation(line: 1941, column: 26, scope: !3488)
!3661 = !DILocation(line: 1941, column: 2, scope: !3488)
!3662 = !DILocation(line: 1945, column: 2, scope: !3488)
!3663 = !DILocation(line: 1945, column: 39, scope: !3488)
!3664 = !DILocation(line: 1945, column: 47, scope: !3488)
!3665 = !DILocation(line: 1945, column: 11, scope: !3488)
!3666 = !DILocation(line: 1945, column: 9, scope: !3488)
!3667 = distinct !{!3667, !3662, !3668}
!3668 = !DILocation(line: 1946, column: 2, scope: !3488)
!3669 = !DILocation(line: 1951, column: 2, scope: !3488)
!3670 = !DILocation(line: 1951, column: 39, scope: !3488)
!3671 = !DILocation(line: 1951, column: 47, scope: !3488)
!3672 = !DILocation(line: 1951, column: 11, scope: !3488)
!3673 = !DILocation(line: 1951, column: 9, scope: !3488)
!3674 = distinct !{!3674, !3669, !3675}
!3675 = !DILocation(line: 1952, column: 2, scope: !3488)
!3676 = !DILocation(line: 1955, column: 2, scope: !3488)
!3677 = !DILocation(line: 1956, column: 1, scope: !3488)
!3678 = distinct !DISubprogram(name: "__uart_stm32_get_clock", scope: !2, file: !2, line: 788, type: !238, scopeLine: 789, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!3679 = !DILocalVariable(name: "dev", arg: 1, scope: !3678, file: !2, line: 788, type: !156)
!3680 = !DILocation(line: 788, column: 64, scope: !3678)
!3681 = !DILocalVariable(name: "data", scope: !3678, file: !2, line: 790, type: !1328)
!3682 = !DILocation(line: 790, column: 26, scope: !3678)
!3683 = !DILocation(line: 790, column: 33, scope: !3678)
!3684 = !DILocation(line: 790, column: 38, scope: !3678)
!3685 = !DILocalVariable(name: "clk", scope: !3678, file: !2, line: 791, type: !3686)
!3686 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !156)
!3687 = !DILocation(line: 791, column: 29, scope: !3678)
!3688 = !DILocation(line: 793, column: 2, scope: !3678)
!3689 = !DILocation(line: 793, column: 8, scope: !3678)
!3690 = !DILocation(line: 793, column: 14, scope: !3678)
!3691 = !DILocation(line: 794, column: 1, scope: !3678)
!3692 = distinct !DISubprogram(name: "device_is_ready", scope: !3693, file: !3693, line: 49, type: !779, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!3693 = !DIFile(filename: "zephyr/include/generated/syscalls/device.h", directory: "/home/sri/zephyrproject/zephyr/build")
!3694 = !DILocalVariable(name: "dev", arg: 1, scope: !3692, file: !3693, line: 49, type: !156)
!3695 = !DILocation(line: 49, column: 59, scope: !3692)
!3696 = !DILocation(line: 57, column: 2, scope: !3692)
!3697 = !DILocation(line: 57, column: 7, scope: !3698)
!3698 = distinct !DILexicalBlock(scope: !3692, file: !3693, line: 57, column: 5)
!3699 = !{i64 319204}
!3700 = !DILocation(line: 57, column: 47, scope: !3698)
!3701 = !DILocation(line: 58, column: 32, scope: !3692)
!3702 = !DILocation(line: 58, column: 9, scope: !3692)
!3703 = !DILocation(line: 58, column: 2, scope: !3692)
!3704 = distinct !DISubprogram(name: "clock_control_on", scope: !137, file: !137, line: 123, type: !288, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!3705 = !DILocalVariable(name: "dev", arg: 1, scope: !3704, file: !137, line: 123, type: !156)
!3706 = !DILocation(line: 123, column: 57, scope: !3704)
!3707 = !DILocalVariable(name: "sys", arg: 2, scope: !3704, file: !137, line: 124, type: !280)
!3708 = !DILocation(line: 124, column: 31, scope: !3704)
!3709 = !DILocalVariable(name: "api", scope: !3704, file: !137, line: 126, type: !281)
!3710 = !DILocation(line: 126, column: 41, scope: !3704)
!3711 = !DILocation(line: 127, column: 44, scope: !3704)
!3712 = !DILocation(line: 127, column: 49, scope: !3704)
!3713 = !DILocation(line: 129, column: 9, scope: !3704)
!3714 = !DILocation(line: 129, column: 14, scope: !3704)
!3715 = !DILocation(line: 129, column: 17, scope: !3704)
!3716 = !DILocation(line: 129, column: 22, scope: !3704)
!3717 = !DILocation(line: 129, column: 2, scope: !3704)
!3718 = distinct !DISubprogram(name: "pinctrl_apply_state_direct", scope: !383, file: !383, line: 316, type: !3719, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!3719 = !DISubroutineType(types: !3720)
!3720 = !{!145, !380, !386}
!3721 = !DILocalVariable(name: "config", arg: 1, scope: !3718, file: !383, line: 317, type: !380)
!3722 = !DILocation(line: 317, column: 35, scope: !3718)
!3723 = !DILocalVariable(name: "state", arg: 2, scope: !3718, file: !383, line: 318, type: !386)
!3724 = !DILocation(line: 318, column: 30, scope: !3718)
!3725 = !DILocalVariable(name: "reg", scope: !3718, file: !383, line: 320, type: !3726)
!3726 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !174, line: 102, baseType: !179)
!3727 = !DILocation(line: 320, column: 12, scope: !3718)
!3728 = !DILocation(line: 325, column: 9, scope: !3718)
!3729 = !DILocation(line: 326, column: 6, scope: !3718)
!3730 = !DILocation(line: 329, column: 32, scope: !3718)
!3731 = !DILocation(line: 329, column: 39, scope: !3718)
!3732 = !DILocation(line: 329, column: 45, scope: !3718)
!3733 = !DILocation(line: 329, column: 52, scope: !3718)
!3734 = !DILocation(line: 329, column: 61, scope: !3718)
!3735 = !DILocation(line: 329, column: 9, scope: !3718)
!3736 = !DILocation(line: 329, column: 2, scope: !3718)
!3737 = distinct !DISubprogram(name: "reset_line_toggle_dt", scope: !149, file: !149, line: 312, type: !3738, scopeLine: 313, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!3738 = !DISubroutineType(types: !3739)
!3739 = !{!145, !3740}
!3740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 32)
!3741 = !DILocalVariable(name: "spec", arg: 1, scope: !3737, file: !149, line: 312, type: !3740)
!3742 = !DILocation(line: 312, column: 68, scope: !3737)
!3743 = !DILocation(line: 314, column: 27, scope: !3737)
!3744 = !DILocation(line: 314, column: 33, scope: !3737)
!3745 = !DILocation(line: 314, column: 38, scope: !3737)
!3746 = !DILocation(line: 314, column: 44, scope: !3737)
!3747 = !DILocation(line: 314, column: 9, scope: !3737)
!3748 = !DILocation(line: 314, column: 2, scope: !3737)
!3749 = distinct !DISubprogram(name: "LL_USART_SetTransferDirection", scope: !1956, file: !1956, line: 707, type: !2676, scopeLine: 708, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!3750 = !DILocalVariable(name: "USARTx", arg: 1, scope: !3749, file: !1956, line: 707, type: !260)
!3751 = !DILocation(line: 707, column: 67, scope: !3749)
!3752 = !DILocalVariable(name: "TransferDirection", arg: 2, scope: !3749, file: !1956, line: 707, type: !178)
!3753 = !DILocation(line: 707, column: 84, scope: !3749)
!3754 = !DILocation(line: 709, column: 3, scope: !3749)
!3755 = !DILocalVariable(name: "primask", scope: !3756, file: !1956, line: 709, type: !178)
!3756 = distinct !DILexicalBlock(scope: !3749, file: !1956, line: 709, column: 6)
!3757 = !DILocation(line: 709, column: 17, scope: !3756)
!3758 = !DILocation(line: 997, column: 12, scope: !3136, inlinedAt: !3759)
!3759 = distinct !DILocation(line: 709, column: 36, scope: !3756)
!3760 = !DILocation(line: 999, column: 3, scope: !3136, inlinedAt: !3759)
!3761 = !DILocation(line: 1000, column: 10, scope: !3136, inlinedAt: !3759)
!3762 = !DILocation(line: 709, column: 34, scope: !3756)
!3763 = !DILocation(line: 1025, column: 76, scope: !3147, inlinedAt: !3764)
!3764 = distinct !DILocation(line: 709, column: 53, scope: !3756)
!3765 = !DILocation(line: 1027, column: 46, scope: !3147, inlinedAt: !3764)
!3766 = !DILocation(line: 1027, column: 3, scope: !3147, inlinedAt: !3764)
!3767 = !DILocation(line: 709, column: 99, scope: !3756)
!3768 = !DILocation(line: 709, column: 107, scope: !3756)
!3769 = !DILocation(line: 709, column: 115, scope: !3756)
!3770 = !DILocation(line: 709, column: 163, scope: !3756)
!3771 = !DILocation(line: 709, column: 159, scope: !3756)
!3772 = !DILocation(line: 709, column: 75, scope: !3756)
!3773 = !DILocation(line: 709, column: 83, scope: !3756)
!3774 = !DILocation(line: 709, column: 90, scope: !3756)
!3775 = !DILocation(line: 709, column: 201, scope: !3756)
!3776 = !DILocation(line: 1025, column: 76, scope: !3147, inlinedAt: !3777)
!3777 = distinct !DILocation(line: 709, column: 187, scope: !3756)
!3778 = !DILocation(line: 1027, column: 46, scope: !3147, inlinedAt: !3777)
!3779 = !DILocation(line: 1027, column: 3, scope: !3147, inlinedAt: !3777)
!3780 = !DILocation(line: 709, column: 211, scope: !3756)
!3781 = !DILocation(line: 710, column: 1, scope: !3749)
!3782 = distinct !DISubprogram(name: "LL_USART_EnableHalfDuplex", scope: !1956, file: !1956, line: 2045, type: !1970, scopeLine: 2046, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!3783 = !DILocalVariable(name: "USARTx", arg: 1, scope: !3782, file: !1956, line: 2045, type: !260)
!3784 = !DILocation(line: 2045, column: 63, scope: !3782)
!3785 = !DILocation(line: 2047, column: 5, scope: !3782)
!3786 = !DILocation(line: 2047, column: 13, scope: !3782)
!3787 = !DILocation(line: 2047, column: 18, scope: !3782)
!3788 = !DILocation(line: 2048, column: 1, scope: !3782)
!3789 = distinct !DISubprogram(name: "LL_USART_SetTXRXSwap", scope: !1956, file: !1956, line: 1125, type: !2676, scopeLine: 1126, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!3790 = !DILocalVariable(name: "USARTx", arg: 1, scope: !3789, file: !1956, line: 1125, type: !260)
!3791 = !DILocation(line: 1125, column: 58, scope: !3789)
!3792 = !DILocalVariable(name: "SwapConfig", arg: 2, scope: !3789, file: !1956, line: 1125, type: !178)
!3793 = !DILocation(line: 1125, column: 75, scope: !3789)
!3794 = !DILocation(line: 1127, column: 28, scope: !3789)
!3795 = !DILocation(line: 1127, column: 36, scope: !3789)
!3796 = !DILocation(line: 1127, column: 43, scope: !3789)
!3797 = !DILocation(line: 1127, column: 71, scope: !3789)
!3798 = !DILocation(line: 1127, column: 68, scope: !3789)
!3799 = !DILocation(line: 1127, column: 6, scope: !3789)
!3800 = !DILocation(line: 1127, column: 14, scope: !3789)
!3801 = !DILocation(line: 1127, column: 20, scope: !3789)
!3802 = !DILocation(line: 1128, column: 1, scope: !3789)
!3803 = distinct !DISubprogram(name: "LL_USART_SetRXPinLevel", scope: !1956, file: !1956, line: 1152, type: !2676, scopeLine: 1153, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!3804 = !DILocalVariable(name: "USARTx", arg: 1, scope: !3803, file: !1956, line: 1152, type: !260)
!3805 = !DILocation(line: 1152, column: 60, scope: !3803)
!3806 = !DILocalVariable(name: "PinInvMethod", arg: 2, scope: !3803, file: !1956, line: 1152, type: !178)
!3807 = !DILocation(line: 1152, column: 77, scope: !3803)
!3808 = !DILocation(line: 1154, column: 28, scope: !3803)
!3809 = !DILocation(line: 1154, column: 36, scope: !3803)
!3810 = !DILocation(line: 1154, column: 43, scope: !3803)
!3811 = !DILocation(line: 1154, column: 71, scope: !3803)
!3812 = !DILocation(line: 1154, column: 68, scope: !3803)
!3813 = !DILocation(line: 1154, column: 6, scope: !3803)
!3814 = !DILocation(line: 1154, column: 14, scope: !3803)
!3815 = !DILocation(line: 1154, column: 20, scope: !3803)
!3816 = !DILocation(line: 1155, column: 1, scope: !3803)
!3817 = distinct !DISubprogram(name: "LL_USART_SetTXPinLevel", scope: !1956, file: !1956, line: 1179, type: !2676, scopeLine: 1180, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!3818 = !DILocalVariable(name: "USARTx", arg: 1, scope: !3817, file: !1956, line: 1179, type: !260)
!3819 = !DILocation(line: 1179, column: 60, scope: !3817)
!3820 = !DILocalVariable(name: "PinInvMethod", arg: 2, scope: !3817, file: !1956, line: 1179, type: !178)
!3821 = !DILocation(line: 1179, column: 77, scope: !3817)
!3822 = !DILocation(line: 1181, column: 28, scope: !3817)
!3823 = !DILocation(line: 1181, column: 36, scope: !3817)
!3824 = !DILocation(line: 1181, column: 43, scope: !3817)
!3825 = !DILocation(line: 1181, column: 71, scope: !3817)
!3826 = !DILocation(line: 1181, column: 68, scope: !3817)
!3827 = !DILocation(line: 1181, column: 6, scope: !3817)
!3828 = !DILocation(line: 1181, column: 14, scope: !3817)
!3829 = !DILocation(line: 1181, column: 20, scope: !3817)
!3830 = !DILocation(line: 1182, column: 1, scope: !3817)
!3831 = distinct !DISubprogram(name: "LL_USART_SetDEAssertionTime", scope: !1956, file: !1956, line: 2200, type: !2676, scopeLine: 2201, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!3832 = !DILocalVariable(name: "USARTx", arg: 1, scope: !3831, file: !1956, line: 2200, type: !260)
!3833 = !DILocation(line: 2200, column: 65, scope: !3831)
!3834 = !DILocalVariable(name: "Time", arg: 2, scope: !3831, file: !1956, line: 2200, type: !178)
!3835 = !DILocation(line: 2200, column: 82, scope: !3831)
!3836 = !DILocation(line: 2202, column: 28, scope: !3831)
!3837 = !DILocation(line: 2202, column: 36, scope: !3831)
!3838 = !DILocation(line: 2202, column: 43, scope: !3831)
!3839 = !DILocation(line: 2202, column: 72, scope: !3831)
!3840 = !DILocation(line: 2202, column: 77, scope: !3831)
!3841 = !DILocation(line: 2202, column: 69, scope: !3831)
!3842 = !DILocation(line: 2202, column: 6, scope: !3831)
!3843 = !DILocation(line: 2202, column: 14, scope: !3831)
!3844 = !DILocation(line: 2202, column: 20, scope: !3831)
!3845 = !DILocation(line: 2203, column: 1, scope: !3831)
!3846 = distinct !DISubprogram(name: "LL_USART_SetDEDeassertionTime", scope: !1956, file: !1956, line: 2173, type: !2676, scopeLine: 2174, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!3847 = !DILocalVariable(name: "USARTx", arg: 1, scope: !3846, file: !1956, line: 2173, type: !260)
!3848 = !DILocation(line: 2173, column: 67, scope: !3846)
!3849 = !DILocalVariable(name: "Time", arg: 2, scope: !3846, file: !1956, line: 2173, type: !178)
!3850 = !DILocation(line: 2173, column: 84, scope: !3846)
!3851 = !DILocation(line: 2175, column: 28, scope: !3846)
!3852 = !DILocation(line: 2175, column: 36, scope: !3846)
!3853 = !DILocation(line: 2175, column: 43, scope: !3846)
!3854 = !DILocation(line: 2175, column: 72, scope: !3846)
!3855 = !DILocation(line: 2175, column: 77, scope: !3846)
!3856 = !DILocation(line: 2175, column: 69, scope: !3846)
!3857 = !DILocation(line: 2175, column: 6, scope: !3846)
!3858 = !DILocation(line: 2175, column: 14, scope: !3846)
!3859 = !DILocation(line: 2175, column: 20, scope: !3846)
!3860 = !DILocation(line: 2176, column: 1, scope: !3846)
!3861 = distinct !DISubprogram(name: "LL_USART_SetDESignalPolarity", scope: !1956, file: !1956, line: 2268, type: !2676, scopeLine: 2269, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!3862 = !DILocalVariable(name: "USARTx", arg: 1, scope: !3861, file: !1956, line: 2268, type: !260)
!3863 = !DILocation(line: 2268, column: 66, scope: !3861)
!3864 = !DILocalVariable(name: "Polarity", arg: 2, scope: !3861, file: !1956, line: 2268, type: !178)
!3865 = !DILocation(line: 2268, column: 83, scope: !3861)
!3866 = !DILocation(line: 2270, column: 28, scope: !3861)
!3867 = !DILocation(line: 2270, column: 36, scope: !3861)
!3868 = !DILocation(line: 2270, column: 43, scope: !3861)
!3869 = !DILocation(line: 2270, column: 71, scope: !3861)
!3870 = !DILocation(line: 2270, column: 68, scope: !3861)
!3871 = !DILocation(line: 2270, column: 6, scope: !3861)
!3872 = !DILocation(line: 2270, column: 14, scope: !3861)
!3873 = !DILocation(line: 2270, column: 20, scope: !3861)
!3874 = !DILocation(line: 2271, column: 1, scope: !3861)
!3875 = distinct !DISubprogram(name: "LL_USART_IsActiveFlag_TEACK", scope: !1956, file: !1956, line: 2924, type: !1957, scopeLine: 2925, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!3876 = !DILocalVariable(name: "USARTx", arg: 1, scope: !3875, file: !1956, line: 2924, type: !1959)
!3877 = !DILocation(line: 2924, column: 75, scope: !3875)
!3878 = !DILocation(line: 2926, column: 14, scope: !3875)
!3879 = !DILocation(line: 2926, column: 22, scope: !3875)
!3880 = !DILocation(line: 2926, column: 27, scope: !3875)
!3881 = !DILocation(line: 2926, column: 49, scope: !3875)
!3882 = !DILocation(line: 2926, column: 11, scope: !3875)
!3883 = !DILocation(line: 2926, column: 3, scope: !3875)
!3884 = distinct !DISubprogram(name: "LL_USART_IsActiveFlag_REACK", scope: !1956, file: !1956, line: 2935, type: !1957, scopeLine: 2936, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!3885 = !DILocalVariable(name: "USARTx", arg: 1, scope: !3884, file: !1956, line: 2935, type: !1959)
!3886 = !DILocation(line: 2935, column: 75, scope: !3884)
!3887 = !DILocation(line: 2937, column: 14, scope: !3884)
!3888 = !DILocation(line: 2937, column: 22, scope: !3884)
!3889 = !DILocation(line: 2937, column: 27, scope: !3884)
!3890 = !DILocation(line: 2937, column: 49, scope: !3884)
!3891 = !DILocation(line: 2937, column: 11, scope: !3884)
!3892 = !DILocation(line: 2937, column: 3, scope: !3884)
!3893 = distinct !DISubprogram(name: "reset_line_toggle", scope: !3894, file: !3894, line: 99, type: !184, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !422)
!3894 = !DIFile(filename: "zephyr/include/generated/syscalls/reset.h", directory: "/home/sri/zephyrproject/zephyr/build")
!3895 = !DILocalVariable(name: "dev", arg: 1, scope: !3893, file: !3894, line: 99, type: !156)
!3896 = !DILocation(line: 99, column: 59, scope: !3893)
!3897 = !DILocalVariable(name: "id", arg: 2, scope: !3893, file: !3894, line: 99, type: !178)
!3898 = !DILocation(line: 99, column: 73, scope: !3893)
!3899 = !DILocation(line: 108, column: 2, scope: !3893)
!3900 = !DILocation(line: 108, column: 7, scope: !3901)
!3901 = distinct !DILexicalBlock(scope: !3893, file: !3894, line: 108, column: 5)
!3902 = !{i64 338910}
!3903 = !DILocation(line: 108, column: 47, scope: !3901)
!3904 = !DILocation(line: 109, column: 34, scope: !3893)
!3905 = !DILocation(line: 109, column: 39, scope: !3893)
!3906 = !DILocation(line: 109, column: 9, scope: !3893)
!3907 = !DILocation(line: 109, column: 2, scope: !3893)
