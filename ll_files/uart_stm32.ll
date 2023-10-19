; ModuleID = '../bc_files/uart_stm32.bc'
source_filename = "/home/sri/zephyrproject/zephyr/drivers/serial/uart_stm32.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-arm-none-eabi"

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

@.str = private unnamed_addr constant [16 x i8] c"serial@40004400\00", align 1, !dbg !0
@uart_stm32_cfg_0 = internal constant %struct.uart_stm32_config { ptr inttoptr (i32 1073759232 to ptr), %struct.reset_dt_spec { ptr @__device_dts_ord_31, i32 529 }, ptr @pclken_0, i32 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr @__pinctrl_dev_config__device_dts_ord_52, ptr @uart_stm32_irq_config_func_0 }, align 4, !dbg !7
@uart_stm32_driver_api = internal constant %struct.uart_driver_api { ptr @uart_stm32_poll_in, ptr @uart_stm32_poll_out, ptr @uart_stm32_err_check, ptr @uart_stm32_configure, ptr @uart_stm32_config_get, ptr @uart_stm32_fifo_fill, ptr @uart_stm32_fifo_read, ptr @uart_stm32_irq_tx_enable, ptr @uart_stm32_irq_tx_disable, ptr @uart_stm32_irq_tx_ready, ptr @uart_stm32_irq_rx_enable, ptr @uart_stm32_irq_rx_disable, ptr @uart_stm32_irq_tx_complete, ptr @uart_stm32_irq_rx_ready, ptr @uart_stm32_irq_err_enable, ptr @uart_stm32_irq_err_disable, ptr @uart_stm32_irq_is_pending, ptr @uart_stm32_irq_update, ptr @uart_stm32_irq_callback_set }, align 4, !dbg !391
@__devstate_dts_ord_52 = internal global %struct.device_state zeroinitializer, section ".z_devstate", align 1, !dbg !334
@uart_stm32_data_0 = internal global %struct.uart_stm32_data { ptr null, ptr @uart_cfg_0, ptr null, ptr null }, align 4, !dbg !393
@__device_dts_ord_52 = hidden constant %struct.device { ptr @.str, ptr @uart_stm32_cfg_0, ptr @uart_stm32_driver_api, ptr @__devstate_dts_ord_52, ptr @uart_stm32_data_0 }, section "._device.static.1_55_", align 4, !dbg !317
@__init___device_dts_ord_52 = internal constant %struct.init_entry { %union.init_function { ptr @uart_stm32_init }, ptr @__device_dts_ord_52 }, section ".z_init_PRE_KERNEL_155_00052_", align 4, !dbg !319
@__device_dts_ord_31 = external dso_local constant %struct.device, align 4
@pclken_0 = internal constant [1 x %struct.stm32_pclken] [%struct.stm32_pclken { i32 28, i32 131072 }], align 4, !dbg !336
@__pinctrl_dev_config__device_dts_ord_52 = internal constant %struct.pinctrl_dev_config { ptr @__pinctrl_states__device_dts_ord_52, i8 1 }, align 4, !dbg !347
@__pinctrl_states__device_dts_ord_52 = internal constant [1 x %struct.pinctrl_state] [%struct.pinctrl_state { ptr @__pinctrl_state_pins_0__device_dts_ord_52, i8 2, i8 0 }], align 4, !dbg !370
@__pinctrl_state_pins_0__device_dts_ord_52 = internal constant [2 x %struct.pinctrl_soc_pin] [%struct.pinctrl_soc_pin { i32 65, i32 512 }, %struct.pinctrl_soc_pin { i32 97, i32 0 }], align 4, !dbg !373
@uart_stm32_irq_config_func_0.__isr_uart_stm32_isr_irq_0 = internal global %struct._isr_list { i32 28, i32 0, ptr @uart_stm32_isr, ptr @__device_dts_ord_52 }, section ".intList", align 4, !dbg !378
@uart_cfg_0 = internal global %struct.uart_config { i32 115200, i8 0, i8 1, i8 3, i8 0 }, align 4, !dbg !402
@__device_dts_ord_9 = external dso_local constant %struct.device, align 4
@llvm.used = appending global [3 x ptr] [ptr @__device_dts_ord_52, ptr @__init___device_dts_ord_52, ptr @uart_stm32_irq_config_func_0.__isr_uart_stm32_isr_irq_0], section "llvm.metadata"

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_k_object_access_grant(ptr noundef %0, ptr noundef %1) #0 !dbg !438 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !551, metadata !DIExpression()), !dbg !553
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !552, metadata !DIExpression()), !dbg !554
  %5 = load ptr, ptr %3, align 4, !dbg !555
  %6 = load ptr, ptr %4, align 4, !dbg !556
  ret void, !dbg !557
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_k_object_release(ptr noundef %0) #0 !dbg !558 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !562, metadata !DIExpression()), !dbg !563
  %3 = load ptr, ptr %2, align 4, !dbg !564
  ret void, !dbg !565
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_impl_k_object_alloc(i8 noundef zeroext %0) #0 !dbg !566 {
  %2 = alloca i8, align 1
  store i8 %0, ptr %2, align 1
  call void @llvm.dbg.declare(metadata ptr %2, metadata !570, metadata !DIExpression()), !dbg !571
  %3 = load i8, ptr %2, align 1, !dbg !572
  ret ptr null, !dbg !573
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_impl_k_object_alloc_size(i8 noundef zeroext %0, i32 noundef %1) #0 !dbg !574 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8 %0, ptr %3, align 1
  call void @llvm.dbg.declare(metadata ptr %3, metadata !578, metadata !DIExpression()), !dbg !580
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !579, metadata !DIExpression()), !dbg !581
  %5 = load i8, ptr %3, align 1, !dbg !582
  %6 = load i32, ptr %4, align 4, !dbg !583
  ret ptr null, !dbg !584
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_thread_timeout_expires_ticks(ptr noundef %0) #0 !dbg !585 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !593, metadata !DIExpression()), !dbg !594
  %3 = load ptr, ptr %2, align 4, !dbg !595
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !596
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !597
  %6 = call i64 @z_timeout_expires(ptr noundef %5) #6, !dbg !598
  ret i64 %6, !dbg !599
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_thread_timeout_remaining_ticks(ptr noundef %0) #0 !dbg !600 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !602, metadata !DIExpression()), !dbg !603
  %3 = load ptr, ptr %2, align 4, !dbg !604
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !605
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !606
  %6 = call i64 @z_timeout_remaining(ptr noundef %5) #6, !dbg !607
  ret i64 %6, !dbg !608
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_timer_expires_ticks(ptr noundef %0) #0 !dbg !609 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !632, metadata !DIExpression()), !dbg !633
  %3 = load ptr, ptr %2, align 4, !dbg !634
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !635
  %5 = call i64 @z_timeout_expires(ptr noundef %4) #6, !dbg !636
  ret i64 %5, !dbg !637
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_timer_remaining_ticks(ptr noundef %0) #0 !dbg !638 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !640, metadata !DIExpression()), !dbg !641
  %3 = load ptr, ptr %2, align 4, !dbg !642
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !643
  %5 = call i64 @z_timeout_remaining(ptr noundef %4) #6, !dbg !644
  ret i64 %5, !dbg !645
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_k_timer_user_data_set(ptr noundef %0, ptr noundef %1) #0 !dbg !646 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !650, metadata !DIExpression()), !dbg !652
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !651, metadata !DIExpression()), !dbg !653
  %5 = load ptr, ptr %4, align 4, !dbg !654
  %6 = load ptr, ptr %3, align 4, !dbg !655
  %7 = getelementptr inbounds %struct.k_timer, ptr %6, i32 0, i32 6, !dbg !656
  store ptr %5, ptr %7, align 4, !dbg !657
  ret void, !dbg !658
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_impl_k_timer_user_data_get(ptr noundef %0) #0 !dbg !659 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !663, metadata !DIExpression()), !dbg !664
  %3 = load ptr, ptr %2, align 4, !dbg !665
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 6, !dbg !666
  %5 = load ptr, ptr %4, align 4, !dbg !666
  ret ptr %5, !dbg !667
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_queue_is_empty(ptr noundef %0) #0 !dbg !668 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !690, metadata !DIExpression()), !dbg !691
  %3 = load ptr, ptr %2, align 4, !dbg !692
  %4 = getelementptr inbounds %struct.k_queue, ptr %3, i32 0, i32 0, !dbg !693
  %5 = call zeroext i1 @sys_sflist_is_empty(ptr noundef %4) #6, !dbg !694
  %6 = zext i1 %5 to i32, !dbg !695
  ret i32 %6, !dbg !696
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_sem_count_get(ptr noundef %0) #0 !dbg !697 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !707, metadata !DIExpression()), !dbg !708
  %3 = load ptr, ptr %2, align 4, !dbg !709
  %4 = getelementptr inbounds %struct.k_sem, ptr %3, i32 0, i32 1, !dbg !710
  %5 = load i32, ptr %4, align 4, !dbg !710
  ret i32 %5, !dbg !711
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_msgq_num_free_get(ptr noundef %0) #0 !dbg !712 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !730, metadata !DIExpression()), !dbg !731
  %3 = load ptr, ptr %2, align 4, !dbg !732
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 3, !dbg !733
  %5 = load i32, ptr %4, align 4, !dbg !733
  %6 = load ptr, ptr %2, align 4, !dbg !734
  %7 = getelementptr inbounds %struct.k_msgq, ptr %6, i32 0, i32 8, !dbg !735
  %8 = load i32, ptr %7, align 4, !dbg !735
  %9 = sub i32 %5, %8, !dbg !736
  ret i32 %9, !dbg !737
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_msgq_num_used_get(ptr noundef %0) #0 !dbg !738 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !740, metadata !DIExpression()), !dbg !741
  %3 = load ptr, ptr %2, align 4, !dbg !742
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 8, !dbg !743
  %5 = load i32, ptr %4, align 4, !dbg !743
  ret i32 %5, !dbg !744
}

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @z_impl_device_is_ready(ptr noundef %0) #0 !dbg !745 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !749, metadata !DIExpression()), !dbg !750
  %3 = load ptr, ptr %2, align 4, !dbg !751
  %4 = call zeroext i1 @z_device_is_ready(ptr noundef %3) #6, !dbg !752
  ret i1 %4, !dbg !753
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_reset_status(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 !dbg !754 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca i32, align 4
  store ptr %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !756, metadata !DIExpression()), !dbg !760
  store i32 %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !757, metadata !DIExpression()), !dbg !761
  store ptr %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !758, metadata !DIExpression()), !dbg !762
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #7, !dbg !763
  call void @llvm.dbg.declare(metadata ptr %8, metadata !759, metadata !DIExpression()), !dbg !764
  %10 = load ptr, ptr %5, align 4, !dbg !765
  %11 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 2, !dbg !766
  %12 = load ptr, ptr %11, align 4, !dbg !766
  store ptr %12, ptr %8, align 4, !dbg !764
  %13 = load ptr, ptr %8, align 4, !dbg !767
  %14 = getelementptr inbounds %struct.reset_driver_api, ptr %13, i32 0, i32 0, !dbg !769
  %15 = load ptr, ptr %14, align 4, !dbg !769
  %16 = icmp eq ptr %15, null, !dbg !770
  br i1 %16, label %17, label %18, !dbg !771

17:                                               ; preds = %3
  store i32 -88, ptr %4, align 4, !dbg !772
  store i32 1, ptr %9, align 4
  br label %26, !dbg !772

18:                                               ; preds = %3
  %19 = load ptr, ptr %8, align 4, !dbg !774
  %20 = getelementptr inbounds %struct.reset_driver_api, ptr %19, i32 0, i32 0, !dbg !775
  %21 = load ptr, ptr %20, align 4, !dbg !775
  %22 = load ptr, ptr %5, align 4, !dbg !776
  %23 = load i32, ptr %6, align 4, !dbg !777
  %24 = load ptr, ptr %7, align 4, !dbg !778
  %25 = call i32 %21(ptr noundef %22, i32 noundef %23, ptr noundef %24) #6, !dbg !774
  store i32 %25, ptr %4, align 4, !dbg !779
  store i32 1, ptr %9, align 4
  br label %26, !dbg !779

26:                                               ; preds = %18, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #7, !dbg !780
  %27 = load i32, ptr %4, align 4, !dbg !780
  ret i32 %27, !dbg !780
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_reset_line_assert(ptr noundef %0, i32 noundef %1) #0 !dbg !781 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !783, metadata !DIExpression()), !dbg !786
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !784, metadata !DIExpression()), !dbg !787
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #7, !dbg !788
  call void @llvm.dbg.declare(metadata ptr %6, metadata !785, metadata !DIExpression()), !dbg !789
  %8 = load ptr, ptr %4, align 4, !dbg !790
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 2, !dbg !791
  %10 = load ptr, ptr %9, align 4, !dbg !791
  store ptr %10, ptr %6, align 4, !dbg !789
  %11 = load ptr, ptr %6, align 4, !dbg !792
  %12 = getelementptr inbounds %struct.reset_driver_api, ptr %11, i32 0, i32 1, !dbg !794
  %13 = load ptr, ptr %12, align 4, !dbg !794
  %14 = icmp eq ptr %13, null, !dbg !795
  br i1 %14, label %15, label %16, !dbg !796

15:                                               ; preds = %2
  store i32 -88, ptr %3, align 4, !dbg !797
  store i32 1, ptr %7, align 4
  br label %23, !dbg !797

16:                                               ; preds = %2
  %17 = load ptr, ptr %6, align 4, !dbg !799
  %18 = getelementptr inbounds %struct.reset_driver_api, ptr %17, i32 0, i32 1, !dbg !800
  %19 = load ptr, ptr %18, align 4, !dbg !800
  %20 = load ptr, ptr %4, align 4, !dbg !801
  %21 = load i32, ptr %5, align 4, !dbg !802
  %22 = call i32 %19(ptr noundef %20, i32 noundef %21) #6, !dbg !799
  store i32 %22, ptr %3, align 4, !dbg !803
  store i32 1, ptr %7, align 4
  br label %23, !dbg !803

23:                                               ; preds = %16, %15
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #7, !dbg !804
  %24 = load i32, ptr %3, align 4, !dbg !804
  ret i32 %24, !dbg !804
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_reset_line_deassert(ptr noundef %0, i32 noundef %1) #0 !dbg !805 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !807, metadata !DIExpression()), !dbg !810
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !808, metadata !DIExpression()), !dbg !811
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #7, !dbg !812
  call void @llvm.dbg.declare(metadata ptr %6, metadata !809, metadata !DIExpression()), !dbg !813
  %8 = load ptr, ptr %4, align 4, !dbg !814
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 2, !dbg !815
  %10 = load ptr, ptr %9, align 4, !dbg !815
  store ptr %10, ptr %6, align 4, !dbg !813
  %11 = load ptr, ptr %6, align 4, !dbg !816
  %12 = getelementptr inbounds %struct.reset_driver_api, ptr %11, i32 0, i32 2, !dbg !818
  %13 = load ptr, ptr %12, align 4, !dbg !818
  %14 = icmp eq ptr %13, null, !dbg !819
  br i1 %14, label %15, label %16, !dbg !820

15:                                               ; preds = %2
  store i32 -88, ptr %3, align 4, !dbg !821
  store i32 1, ptr %7, align 4
  br label %23, !dbg !821

16:                                               ; preds = %2
  %17 = load ptr, ptr %6, align 4, !dbg !823
  %18 = getelementptr inbounds %struct.reset_driver_api, ptr %17, i32 0, i32 2, !dbg !824
  %19 = load ptr, ptr %18, align 4, !dbg !824
  %20 = load ptr, ptr %4, align 4, !dbg !825
  %21 = load i32, ptr %5, align 4, !dbg !826
  %22 = call i32 %19(ptr noundef %20, i32 noundef %21) #6, !dbg !823
  store i32 %22, ptr %3, align 4, !dbg !827
  store i32 1, ptr %7, align 4
  br label %23, !dbg !827

23:                                               ; preds = %16, %15
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #7, !dbg !828
  %24 = load i32, ptr %3, align 4, !dbg !828
  ret i32 %24, !dbg !828
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_reset_line_toggle(ptr noundef %0, i32 noundef %1) #0 !dbg !829 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !831, metadata !DIExpression()), !dbg !834
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !832, metadata !DIExpression()), !dbg !835
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #7, !dbg !836
  call void @llvm.dbg.declare(metadata ptr %6, metadata !833, metadata !DIExpression()), !dbg !837
  %8 = load ptr, ptr %4, align 4, !dbg !838
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 2, !dbg !839
  %10 = load ptr, ptr %9, align 4, !dbg !839
  store ptr %10, ptr %6, align 4, !dbg !837
  %11 = load ptr, ptr %6, align 4, !dbg !840
  %12 = getelementptr inbounds %struct.reset_driver_api, ptr %11, i32 0, i32 3, !dbg !842
  %13 = load ptr, ptr %12, align 4, !dbg !842
  %14 = icmp eq ptr %13, null, !dbg !843
  br i1 %14, label %15, label %16, !dbg !844

15:                                               ; preds = %2
  store i32 -88, ptr %3, align 4, !dbg !845
  store i32 1, ptr %7, align 4
  br label %23, !dbg !845

16:                                               ; preds = %2
  %17 = load ptr, ptr %6, align 4, !dbg !847
  %18 = getelementptr inbounds %struct.reset_driver_api, ptr %17, i32 0, i32 3, !dbg !848
  %19 = load ptr, ptr %18, align 4, !dbg !848
  %20 = load ptr, ptr %4, align 4, !dbg !849
  %21 = load i32, ptr %5, align 4, !dbg !850
  %22 = call i32 %19(ptr noundef %20, i32 noundef %21) #6, !dbg !847
  store i32 %22, ptr %3, align 4, !dbg !851
  store i32 1, ptr %7, align 4
  br label %23, !dbg !851

23:                                               ; preds = %16, %15
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #7, !dbg !852
  %24 = load i32, ptr %3, align 4, !dbg !852
  ret i32 %24, !dbg !852
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_uart_err_check(ptr noundef %0) #0 !dbg !853 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !855, metadata !DIExpression()), !dbg !857
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #7, !dbg !858
  call void @llvm.dbg.declare(metadata ptr %4, metadata !856, metadata !DIExpression()), !dbg !859
  %6 = load ptr, ptr %3, align 4, !dbg !860
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 2, !dbg !861
  %8 = load ptr, ptr %7, align 4, !dbg !861
  store ptr %8, ptr %4, align 4, !dbg !859
  %9 = load ptr, ptr %4, align 4, !dbg !862
  %10 = getelementptr inbounds %struct.uart_driver_api, ptr %9, i32 0, i32 2, !dbg !864
  %11 = load ptr, ptr %10, align 4, !dbg !864
  %12 = icmp eq ptr %11, null, !dbg !865
  br i1 %12, label %13, label %14, !dbg !866

13:                                               ; preds = %1
  store i32 -88, ptr %2, align 4, !dbg !867
  store i32 1, ptr %5, align 4
  br label %20, !dbg !867

14:                                               ; preds = %1
  %15 = load ptr, ptr %4, align 4, !dbg !869
  %16 = getelementptr inbounds %struct.uart_driver_api, ptr %15, i32 0, i32 2, !dbg !870
  %17 = load ptr, ptr %16, align 4, !dbg !870
  %18 = load ptr, ptr %3, align 4, !dbg !871
  %19 = call i32 %17(ptr noundef %18) #6, !dbg !869
  store i32 %19, ptr %2, align 4, !dbg !872
  store i32 1, ptr %5, align 4
  br label %20, !dbg !872

20:                                               ; preds = %14, %13
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #7, !dbg !873
  %21 = load i32, ptr %2, align 4, !dbg !873
  ret i32 %21, !dbg !873
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_uart_poll_in(ptr noundef %0, ptr noundef %1) #0 !dbg !874 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !876, metadata !DIExpression()), !dbg !879
  store ptr %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !877, metadata !DIExpression()), !dbg !880
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #7, !dbg !881
  call void @llvm.dbg.declare(metadata ptr %6, metadata !878, metadata !DIExpression()), !dbg !882
  %8 = load ptr, ptr %4, align 4, !dbg !883
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 2, !dbg !884
  %10 = load ptr, ptr %9, align 4, !dbg !884
  store ptr %10, ptr %6, align 4, !dbg !882
  %11 = load ptr, ptr %6, align 4, !dbg !885
  %12 = getelementptr inbounds %struct.uart_driver_api, ptr %11, i32 0, i32 0, !dbg !887
  %13 = load ptr, ptr %12, align 4, !dbg !887
  %14 = icmp eq ptr %13, null, !dbg !888
  br i1 %14, label %15, label %16, !dbg !889

15:                                               ; preds = %2
  store i32 -88, ptr %3, align 4, !dbg !890
  store i32 1, ptr %7, align 4
  br label %23, !dbg !890

16:                                               ; preds = %2
  %17 = load ptr, ptr %6, align 4, !dbg !892
  %18 = getelementptr inbounds %struct.uart_driver_api, ptr %17, i32 0, i32 0, !dbg !893
  %19 = load ptr, ptr %18, align 4, !dbg !893
  %20 = load ptr, ptr %4, align 4, !dbg !894
  %21 = load ptr, ptr %5, align 4, !dbg !895
  %22 = call i32 %19(ptr noundef %20, ptr noundef %21) #6, !dbg !892
  store i32 %22, ptr %3, align 4, !dbg !896
  store i32 1, ptr %7, align 4
  br label %23, !dbg !896

23:                                               ; preds = %16, %15
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #7, !dbg !897
  %24 = load i32, ptr %3, align 4, !dbg !897
  ret i32 %24, !dbg !897
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_uart_poll_in_u16(ptr noundef %0, ptr noundef %1) #0 !dbg !898 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !903, metadata !DIExpression()), !dbg !905
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !904, metadata !DIExpression()), !dbg !906
  %5 = load ptr, ptr %3, align 4, !dbg !907
  %6 = load ptr, ptr %4, align 4, !dbg !908
  ret i32 -134, !dbg !909
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_uart_poll_out(ptr noundef %0, i8 noundef zeroext %1) #0 !dbg !910 {
  %3 = alloca ptr, align 4
  %4 = alloca i8, align 1
  %5 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !912, metadata !DIExpression()), !dbg !915
  store i8 %1, ptr %4, align 1
  call void @llvm.dbg.declare(metadata ptr %4, metadata !913, metadata !DIExpression()), !dbg !916
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #7, !dbg !917
  call void @llvm.dbg.declare(metadata ptr %5, metadata !914, metadata !DIExpression()), !dbg !918
  %6 = load ptr, ptr %3, align 4, !dbg !919
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 2, !dbg !920
  %8 = load ptr, ptr %7, align 4, !dbg !920
  store ptr %8, ptr %5, align 4, !dbg !918
  %9 = load ptr, ptr %5, align 4, !dbg !921
  %10 = getelementptr inbounds %struct.uart_driver_api, ptr %9, i32 0, i32 1, !dbg !922
  %11 = load ptr, ptr %10, align 4, !dbg !922
  %12 = load ptr, ptr %3, align 4, !dbg !923
  %13 = load i8, ptr %4, align 1, !dbg !924
  call void %11(ptr noundef %12, i8 noundef zeroext %13) #6, !dbg !921
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #7, !dbg !925
  ret void, !dbg !925
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_uart_poll_out_u16(ptr noundef %0, i16 noundef zeroext %1) #0 !dbg !926 {
  %3 = alloca ptr, align 4
  %4 = alloca i16, align 2
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !930, metadata !DIExpression()), !dbg !932
  store i16 %1, ptr %4, align 2
  call void @llvm.dbg.declare(metadata ptr %4, metadata !931, metadata !DIExpression()), !dbg !933
  %5 = load ptr, ptr %3, align 4, !dbg !934
  %6 = load i16, ptr %4, align 2, !dbg !935
  ret void, !dbg !936
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_uart_configure(ptr noundef %0, ptr noundef %1) #0 !dbg !937 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !939, metadata !DIExpression()), !dbg !942
  store ptr %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !940, metadata !DIExpression()), !dbg !943
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #7, !dbg !944
  call void @llvm.dbg.declare(metadata ptr %6, metadata !941, metadata !DIExpression()), !dbg !945
  %8 = load ptr, ptr %4, align 4, !dbg !946
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 2, !dbg !947
  %10 = load ptr, ptr %9, align 4, !dbg !947
  store ptr %10, ptr %6, align 4, !dbg !945
  %11 = load ptr, ptr %6, align 4, !dbg !948
  %12 = getelementptr inbounds %struct.uart_driver_api, ptr %11, i32 0, i32 3, !dbg !950
  %13 = load ptr, ptr %12, align 4, !dbg !950
  %14 = icmp eq ptr %13, null, !dbg !951
  br i1 %14, label %15, label %16, !dbg !952

15:                                               ; preds = %2
  store i32 -88, ptr %3, align 4, !dbg !953
  store i32 1, ptr %7, align 4
  br label %23, !dbg !953

16:                                               ; preds = %2
  %17 = load ptr, ptr %6, align 4, !dbg !955
  %18 = getelementptr inbounds %struct.uart_driver_api, ptr %17, i32 0, i32 3, !dbg !956
  %19 = load ptr, ptr %18, align 4, !dbg !956
  %20 = load ptr, ptr %4, align 4, !dbg !957
  %21 = load ptr, ptr %5, align 4, !dbg !958
  %22 = call i32 %19(ptr noundef %20, ptr noundef %21) #6, !dbg !955
  store i32 %22, ptr %3, align 4, !dbg !959
  store i32 1, ptr %7, align 4
  br label %23, !dbg !959

23:                                               ; preds = %16, %15
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #7, !dbg !960
  %24 = load i32, ptr %3, align 4, !dbg !960
  ret i32 %24, !dbg !960
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_uart_config_get(ptr noundef %0, ptr noundef %1) #0 !dbg !961 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !963, metadata !DIExpression()), !dbg !966
  store ptr %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !964, metadata !DIExpression()), !dbg !967
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #7, !dbg !968
  call void @llvm.dbg.declare(metadata ptr %6, metadata !965, metadata !DIExpression()), !dbg !969
  %8 = load ptr, ptr %4, align 4, !dbg !970
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 2, !dbg !971
  %10 = load ptr, ptr %9, align 4, !dbg !971
  store ptr %10, ptr %6, align 4, !dbg !969
  %11 = load ptr, ptr %6, align 4, !dbg !972
  %12 = getelementptr inbounds %struct.uart_driver_api, ptr %11, i32 0, i32 4, !dbg !974
  %13 = load ptr, ptr %12, align 4, !dbg !974
  %14 = icmp eq ptr %13, null, !dbg !975
  br i1 %14, label %15, label %16, !dbg !976

15:                                               ; preds = %2
  store i32 -88, ptr %3, align 4, !dbg !977
  store i32 1, ptr %7, align 4
  br label %23, !dbg !977

16:                                               ; preds = %2
  %17 = load ptr, ptr %6, align 4, !dbg !979
  %18 = getelementptr inbounds %struct.uart_driver_api, ptr %17, i32 0, i32 4, !dbg !980
  %19 = load ptr, ptr %18, align 4, !dbg !980
  %20 = load ptr, ptr %4, align 4, !dbg !981
  %21 = load ptr, ptr %5, align 4, !dbg !982
  %22 = call i32 %19(ptr noundef %20, ptr noundef %21) #6, !dbg !979
  store i32 %22, ptr %3, align 4, !dbg !983
  store i32 1, ptr %7, align 4
  br label %23, !dbg !983

23:                                               ; preds = %16, %15
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #7, !dbg !984
  %24 = load i32, ptr %3, align 4, !dbg !984
  ret i32 %24, !dbg !984
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_uart_irq_tx_enable(ptr noundef %0) #0 !dbg !985 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !987, metadata !DIExpression()), !dbg !989
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #7, !dbg !990
  call void @llvm.dbg.declare(metadata ptr %3, metadata !988, metadata !DIExpression()), !dbg !991
  %4 = load ptr, ptr %2, align 4, !dbg !992
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 2, !dbg !993
  %6 = load ptr, ptr %5, align 4, !dbg !993
  store ptr %6, ptr %3, align 4, !dbg !991
  %7 = load ptr, ptr %3, align 4, !dbg !994
  %8 = getelementptr inbounds %struct.uart_driver_api, ptr %7, i32 0, i32 7, !dbg !996
  %9 = load ptr, ptr %8, align 4, !dbg !996
  %10 = icmp ne ptr %9, null, !dbg !997
  br i1 %10, label %11, label %16, !dbg !998

11:                                               ; preds = %1
  %12 = load ptr, ptr %3, align 4, !dbg !999
  %13 = getelementptr inbounds %struct.uart_driver_api, ptr %12, i32 0, i32 7, !dbg !1001
  %14 = load ptr, ptr %13, align 4, !dbg !1001
  %15 = load ptr, ptr %2, align 4, !dbg !1002
  call void %14(ptr noundef %15) #6, !dbg !999
  br label %16, !dbg !1003

16:                                               ; preds = %11, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #7, !dbg !1004
  ret void, !dbg !1004
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_uart_irq_tx_disable(ptr noundef %0) #0 !dbg !1005 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1007, metadata !DIExpression()), !dbg !1009
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #7, !dbg !1010
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1008, metadata !DIExpression()), !dbg !1011
  %4 = load ptr, ptr %2, align 4, !dbg !1012
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 2, !dbg !1013
  %6 = load ptr, ptr %5, align 4, !dbg !1013
  store ptr %6, ptr %3, align 4, !dbg !1011
  %7 = load ptr, ptr %3, align 4, !dbg !1014
  %8 = getelementptr inbounds %struct.uart_driver_api, ptr %7, i32 0, i32 8, !dbg !1016
  %9 = load ptr, ptr %8, align 4, !dbg !1016
  %10 = icmp ne ptr %9, null, !dbg !1017
  br i1 %10, label %11, label %16, !dbg !1018

11:                                               ; preds = %1
  %12 = load ptr, ptr %3, align 4, !dbg !1019
  %13 = getelementptr inbounds %struct.uart_driver_api, ptr %12, i32 0, i32 8, !dbg !1021
  %14 = load ptr, ptr %13, align 4, !dbg !1021
  %15 = load ptr, ptr %2, align 4, !dbg !1022
  call void %14(ptr noundef %15) #6, !dbg !1019
  br label %16, !dbg !1023

16:                                               ; preds = %11, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #7, !dbg !1024
  ret void, !dbg !1024
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_uart_irq_rx_enable(ptr noundef %0) #0 !dbg !1025 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1027, metadata !DIExpression()), !dbg !1029
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #7, !dbg !1030
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1028, metadata !DIExpression()), !dbg !1031
  %4 = load ptr, ptr %2, align 4, !dbg !1032
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 2, !dbg !1033
  %6 = load ptr, ptr %5, align 4, !dbg !1033
  store ptr %6, ptr %3, align 4, !dbg !1031
  %7 = load ptr, ptr %3, align 4, !dbg !1034
  %8 = getelementptr inbounds %struct.uart_driver_api, ptr %7, i32 0, i32 10, !dbg !1036
  %9 = load ptr, ptr %8, align 4, !dbg !1036
  %10 = icmp ne ptr %9, null, !dbg !1037
  br i1 %10, label %11, label %16, !dbg !1038

11:                                               ; preds = %1
  %12 = load ptr, ptr %3, align 4, !dbg !1039
  %13 = getelementptr inbounds %struct.uart_driver_api, ptr %12, i32 0, i32 10, !dbg !1041
  %14 = load ptr, ptr %13, align 4, !dbg !1041
  %15 = load ptr, ptr %2, align 4, !dbg !1042
  call void %14(ptr noundef %15) #6, !dbg !1039
  br label %16, !dbg !1043

16:                                               ; preds = %11, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #7, !dbg !1044
  ret void, !dbg !1044
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_uart_irq_rx_disable(ptr noundef %0) #0 !dbg !1045 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1047, metadata !DIExpression()), !dbg !1049
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #7, !dbg !1050
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1048, metadata !DIExpression()), !dbg !1051
  %4 = load ptr, ptr %2, align 4, !dbg !1052
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 2, !dbg !1053
  %6 = load ptr, ptr %5, align 4, !dbg !1053
  store ptr %6, ptr %3, align 4, !dbg !1051
  %7 = load ptr, ptr %3, align 4, !dbg !1054
  %8 = getelementptr inbounds %struct.uart_driver_api, ptr %7, i32 0, i32 11, !dbg !1056
  %9 = load ptr, ptr %8, align 4, !dbg !1056
  %10 = icmp ne ptr %9, null, !dbg !1057
  br i1 %10, label %11, label %16, !dbg !1058

11:                                               ; preds = %1
  %12 = load ptr, ptr %3, align 4, !dbg !1059
  %13 = getelementptr inbounds %struct.uart_driver_api, ptr %12, i32 0, i32 11, !dbg !1061
  %14 = load ptr, ptr %13, align 4, !dbg !1061
  %15 = load ptr, ptr %2, align 4, !dbg !1062
  call void %14(ptr noundef %15) #6, !dbg !1059
  br label %16, !dbg !1063

16:                                               ; preds = %11, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #7, !dbg !1064
  ret void, !dbg !1064
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_uart_irq_err_enable(ptr noundef %0) #0 !dbg !1065 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1067, metadata !DIExpression()), !dbg !1069
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #7, !dbg !1070
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1068, metadata !DIExpression()), !dbg !1071
  %4 = load ptr, ptr %2, align 4, !dbg !1072
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 2, !dbg !1073
  %6 = load ptr, ptr %5, align 4, !dbg !1073
  store ptr %6, ptr %3, align 4, !dbg !1071
  %7 = load ptr, ptr %3, align 4, !dbg !1074
  %8 = getelementptr inbounds %struct.uart_driver_api, ptr %7, i32 0, i32 14, !dbg !1076
  %9 = load ptr, ptr %8, align 4, !dbg !1076
  %10 = icmp ne ptr %9, null, !dbg !1074
  br i1 %10, label %11, label %16, !dbg !1077

11:                                               ; preds = %1
  %12 = load ptr, ptr %3, align 4, !dbg !1078
  %13 = getelementptr inbounds %struct.uart_driver_api, ptr %12, i32 0, i32 14, !dbg !1080
  %14 = load ptr, ptr %13, align 4, !dbg !1080
  %15 = load ptr, ptr %2, align 4, !dbg !1081
  call void %14(ptr noundef %15) #6, !dbg !1078
  br label %16, !dbg !1082

16:                                               ; preds = %11, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #7, !dbg !1083
  ret void, !dbg !1083
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_uart_irq_err_disable(ptr noundef %0) #0 !dbg !1084 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1086, metadata !DIExpression()), !dbg !1088
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #7, !dbg !1089
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1087, metadata !DIExpression()), !dbg !1090
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
  call void %14(ptr noundef %15) #6, !dbg !1097
  br label %16, !dbg !1101

16:                                               ; preds = %11, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #7, !dbg !1102
  ret void, !dbg !1102
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_uart_irq_is_pending(ptr noundef %0) #0 !dbg !1103 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1105, metadata !DIExpression()), !dbg !1107
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #7, !dbg !1108
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1106, metadata !DIExpression()), !dbg !1109
  %6 = load ptr, ptr %3, align 4, !dbg !1110
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 2, !dbg !1111
  %8 = load ptr, ptr %7, align 4, !dbg !1111
  store ptr %8, ptr %4, align 4, !dbg !1109
  %9 = load ptr, ptr %4, align 4, !dbg !1112
  %10 = getelementptr inbounds %struct.uart_driver_api, ptr %9, i32 0, i32 16, !dbg !1114
  %11 = load ptr, ptr %10, align 4, !dbg !1114
  %12 = icmp eq ptr %11, null, !dbg !1115
  br i1 %12, label %13, label %14, !dbg !1116

13:                                               ; preds = %1
  store i32 -88, ptr %2, align 4, !dbg !1117
  store i32 1, ptr %5, align 4
  br label %20, !dbg !1117

14:                                               ; preds = %1
  %15 = load ptr, ptr %4, align 4, !dbg !1119
  %16 = getelementptr inbounds %struct.uart_driver_api, ptr %15, i32 0, i32 16, !dbg !1120
  %17 = load ptr, ptr %16, align 4, !dbg !1120
  %18 = load ptr, ptr %3, align 4, !dbg !1121
  %19 = call i32 %17(ptr noundef %18) #6, !dbg !1119
  store i32 %19, ptr %2, align 4, !dbg !1122
  store i32 1, ptr %5, align 4
  br label %20, !dbg !1122

20:                                               ; preds = %14, %13
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #7, !dbg !1123
  %21 = load i32, ptr %2, align 4, !dbg !1123
  ret i32 %21, !dbg !1123
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_uart_irq_update(ptr noundef %0) #0 !dbg !1124 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1126, metadata !DIExpression()), !dbg !1128
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #7, !dbg !1129
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1127, metadata !DIExpression()), !dbg !1130
  %6 = load ptr, ptr %3, align 4, !dbg !1131
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 2, !dbg !1132
  %8 = load ptr, ptr %7, align 4, !dbg !1132
  store ptr %8, ptr %4, align 4, !dbg !1130
  %9 = load ptr, ptr %4, align 4, !dbg !1133
  %10 = getelementptr inbounds %struct.uart_driver_api, ptr %9, i32 0, i32 17, !dbg !1135
  %11 = load ptr, ptr %10, align 4, !dbg !1135
  %12 = icmp eq ptr %11, null, !dbg !1136
  br i1 %12, label %13, label %14, !dbg !1137

13:                                               ; preds = %1
  store i32 -88, ptr %2, align 4, !dbg !1138
  store i32 1, ptr %5, align 4
  br label %20, !dbg !1138

14:                                               ; preds = %1
  %15 = load ptr, ptr %4, align 4, !dbg !1140
  %16 = getelementptr inbounds %struct.uart_driver_api, ptr %15, i32 0, i32 17, !dbg !1141
  %17 = load ptr, ptr %16, align 4, !dbg !1141
  %18 = load ptr, ptr %3, align 4, !dbg !1142
  %19 = call i32 %17(ptr noundef %18) #6, !dbg !1140
  store i32 %19, ptr %2, align 4, !dbg !1143
  store i32 1, ptr %5, align 4
  br label %20, !dbg !1143

20:                                               ; preds = %14, %13
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #7, !dbg !1144
  %21 = load i32, ptr %2, align 4, !dbg !1144
  ret i32 %21, !dbg !1144
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_uart_tx(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 !dbg !1145 {
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1149, metadata !DIExpression()), !dbg !1153
  store ptr %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1150, metadata !DIExpression()), !dbg !1154
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1151, metadata !DIExpression()), !dbg !1155
  store i32 %3, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1152, metadata !DIExpression()), !dbg !1156
  %9 = load ptr, ptr %5, align 4, !dbg !1157
  %10 = load ptr, ptr %6, align 4, !dbg !1158
  %11 = load i32, ptr %7, align 4, !dbg !1159
  %12 = load i32, ptr %8, align 4, !dbg !1160
  ret i32 -134, !dbg !1161
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_uart_tx_u16(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 !dbg !1162 {
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1168, metadata !DIExpression()), !dbg !1172
  store ptr %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1169, metadata !DIExpression()), !dbg !1173
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1170, metadata !DIExpression()), !dbg !1174
  store i32 %3, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1171, metadata !DIExpression()), !dbg !1175
  %9 = load ptr, ptr %5, align 4, !dbg !1176
  %10 = load ptr, ptr %6, align 4, !dbg !1177
  %11 = load i32, ptr %7, align 4, !dbg !1178
  %12 = load i32, ptr %8, align 4, !dbg !1179
  ret i32 -134, !dbg !1180
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_uart_tx_abort(ptr noundef %0) #0 !dbg !1181 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1183, metadata !DIExpression()), !dbg !1184
  %3 = load ptr, ptr %2, align 4, !dbg !1185
  ret i32 -134, !dbg !1186
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_uart_rx_enable(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 !dbg !1187 {
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1191, metadata !DIExpression()), !dbg !1195
  store ptr %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1192, metadata !DIExpression()), !dbg !1196
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1193, metadata !DIExpression()), !dbg !1197
  store i32 %3, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1194, metadata !DIExpression()), !dbg !1198
  %9 = load ptr, ptr %5, align 4, !dbg !1199
  %10 = load ptr, ptr %6, align 4, !dbg !1200
  %11 = load i32, ptr %7, align 4, !dbg !1201
  %12 = load i32, ptr %8, align 4, !dbg !1202
  ret i32 -134, !dbg !1203
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_uart_rx_enable_u16(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 !dbg !1204 {
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1208, metadata !DIExpression()), !dbg !1212
  store ptr %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1209, metadata !DIExpression()), !dbg !1213
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1210, metadata !DIExpression()), !dbg !1214
  store i32 %3, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1211, metadata !DIExpression()), !dbg !1215
  %9 = load ptr, ptr %5, align 4, !dbg !1216
  %10 = load ptr, ptr %6, align 4, !dbg !1217
  %11 = load i32, ptr %7, align 4, !dbg !1218
  %12 = load i32, ptr %8, align 4, !dbg !1219
  ret i32 -134, !dbg !1220
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_uart_rx_disable(ptr noundef %0) #0 !dbg !1221 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1223, metadata !DIExpression()), !dbg !1224
  %3 = load ptr, ptr %2, align 4, !dbg !1225
  ret i32 -134, !dbg !1226
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_uart_line_ctrl_set(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 !dbg !1227 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1231, metadata !DIExpression()), !dbg !1234
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1232, metadata !DIExpression()), !dbg !1235
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1233, metadata !DIExpression()), !dbg !1236
  %7 = load ptr, ptr %4, align 4, !dbg !1237
  %8 = load i32, ptr %5, align 4, !dbg !1238
  %9 = load i32, ptr %6, align 4, !dbg !1239
  ret i32 -134, !dbg !1240
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_uart_line_ctrl_get(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 !dbg !1241 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1245, metadata !DIExpression()), !dbg !1248
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1246, metadata !DIExpression()), !dbg !1249
  store ptr %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1247, metadata !DIExpression()), !dbg !1250
  %7 = load ptr, ptr %4, align 4, !dbg !1251
  %8 = load i32, ptr %5, align 4, !dbg !1252
  %9 = load ptr, ptr %6, align 4, !dbg !1253
  ret i32 -134, !dbg !1254
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_uart_drv_cmd(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 !dbg !1255 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1257, metadata !DIExpression()), !dbg !1260
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1258, metadata !DIExpression()), !dbg !1261
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1259, metadata !DIExpression()), !dbg !1262
  %7 = load ptr, ptr %4, align 4, !dbg !1263
  %8 = load i32, ptr %5, align 4, !dbg !1264
  %9 = load i32, ptr %6, align 4, !dbg !1265
  ret i32 -134, !dbg !1266
}

; Function Attrs: nounwind optsize
define internal i32 @uart_stm32_init(ptr noundef %0) #1 !dbg !1267 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1269, metadata !DIExpression()), !dbg !1273
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #7, !dbg !1274
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1270, metadata !DIExpression()), !dbg !1275
  %7 = load ptr, ptr %3, align 4, !dbg !1276
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 1, !dbg !1277
  %9 = load ptr, ptr %8, align 4, !dbg !1277
  store ptr %9, ptr %4, align 4, !dbg !1275
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #7, !dbg !1278
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1272, metadata !DIExpression()), !dbg !1279
  %10 = load ptr, ptr %3, align 4, !dbg !1280
  %11 = call i32 @uart_stm32_clocks_enable(ptr noundef %10) #6, !dbg !1281
  store i32 %11, ptr %5, align 4, !dbg !1282
  %12 = load i32, ptr %5, align 4, !dbg !1283
  %13 = icmp slt i32 %12, 0, !dbg !1285
  br i1 %13, label %14, label %16, !dbg !1286

14:                                               ; preds = %1
  %15 = load i32, ptr %5, align 4, !dbg !1287
  store i32 %15, ptr %2, align 4, !dbg !1289
  store i32 1, ptr %6, align 4
  br label %37, !dbg !1289

16:                                               ; preds = %1
  %17 = load ptr, ptr %4, align 4, !dbg !1290
  %18 = getelementptr inbounds %struct.uart_stm32_config, ptr %17, i32 0, i32 12, !dbg !1291
  %19 = load ptr, ptr %18, align 4, !dbg !1291
  %20 = call i32 @pinctrl_apply_state(ptr noundef %19, i8 noundef zeroext 0) #6, !dbg !1292
  store i32 %20, ptr %5, align 4, !dbg !1293
  %21 = load i32, ptr %5, align 4, !dbg !1294
  %22 = icmp slt i32 %21, 0, !dbg !1296
  br i1 %22, label %23, label %25, !dbg !1297

23:                                               ; preds = %16
  %24 = load i32, ptr %5, align 4, !dbg !1298
  store i32 %24, ptr %2, align 4, !dbg !1300
  store i32 1, ptr %6, align 4
  br label %37, !dbg !1300

25:                                               ; preds = %16
  %26 = load ptr, ptr %3, align 4, !dbg !1301
  %27 = call i32 @uart_stm32_registers_configure(ptr noundef %26) #6, !dbg !1302
  store i32 %27, ptr %5, align 4, !dbg !1303
  %28 = load i32, ptr %5, align 4, !dbg !1304
  %29 = icmp slt i32 %28, 0, !dbg !1306
  br i1 %29, label %30, label %32, !dbg !1307

30:                                               ; preds = %25
  %31 = load i32, ptr %5, align 4, !dbg !1308
  store i32 %31, ptr %2, align 4, !dbg !1310
  store i32 1, ptr %6, align 4
  br label %37, !dbg !1310

32:                                               ; preds = %25
  %33 = load ptr, ptr %4, align 4, !dbg !1311
  %34 = getelementptr inbounds %struct.uart_stm32_config, ptr %33, i32 0, i32 13, !dbg !1312
  %35 = load ptr, ptr %34, align 4, !dbg !1312
  %36 = load ptr, ptr %3, align 4, !dbg !1313
  call void %35(ptr noundef %36) #6, !dbg !1311
  store i32 0, ptr %2, align 4, !dbg !1314
  store i32 1, ptr %6, align 4
  br label %37, !dbg !1314

37:                                               ; preds = %32, %30, %23, %14
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #7, !dbg !1315
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #7, !dbg !1315
  %38 = load i32, ptr %2, align 4, !dbg !1315
  ret i32 %38, !dbg !1315
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: optsize
declare !dbg !1316 dso_local i64 @z_timeout_expires(ptr noundef) #3

; Function Attrs: optsize
declare !dbg !1321 dso_local i64 @z_timeout_remaining(ptr noundef) #3

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @sys_sflist_is_empty(ptr noundef %0) #0 !dbg !1322 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1327, metadata !DIExpression()), !dbg !1328
  %3 = load ptr, ptr %2, align 4, !dbg !1329
  %4 = call ptr @sys_sflist_peek_head(ptr noundef %3) #6, !dbg !1330
  %5 = icmp eq ptr %4, null, !dbg !1331
  ret i1 %5, !dbg !1332
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @sys_sflist_peek_head(ptr noundef %0) #0 !dbg !1333 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1337, metadata !DIExpression()), !dbg !1338
  %3 = load ptr, ptr %2, align 4, !dbg !1339
  %4 = getelementptr inbounds %struct._sflist, ptr %3, i32 0, i32 0, !dbg !1340
  %5 = load ptr, ptr %4, align 4, !dbg !1340
  ret ptr %5, !dbg !1341
}

; Function Attrs: optsize
declare !dbg !1342 dso_local zeroext i1 @z_device_is_ready(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind optsize
define internal void @uart_stm32_irq_config_func_0(ptr noundef %0) #1 !dbg !380 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !382, metadata !DIExpression()), !dbg !1343
  call void @z_arm_irq_priority_set(i32 noundef 28, i32 noundef 0, i32 noundef 0) #6, !dbg !1344
  call void @arch_irq_enable(i32 noundef 28) #6, !dbg !1346
  ret void, !dbg !1347
}

; Function Attrs: nounwind optsize
define internal void @uart_stm32_isr(ptr noundef %0) #1 !dbg !1348 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1350, metadata !DIExpression()), !dbg !1353
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #7, !dbg !1354
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1351, metadata !DIExpression()), !dbg !1355
  %4 = load ptr, ptr %2, align 4, !dbg !1356
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 4, !dbg !1357
  %6 = load ptr, ptr %5, align 4, !dbg !1357
  store ptr %6, ptr %3, align 4, !dbg !1355
  %7 = load ptr, ptr %3, align 4, !dbg !1358
  %8 = getelementptr inbounds %struct.uart_stm32_data, ptr %7, i32 0, i32 2, !dbg !1360
  %9 = load ptr, ptr %8, align 4, !dbg !1360
  %10 = icmp ne ptr %9, null, !dbg !1358
  br i1 %10, label %11, label %19, !dbg !1361

11:                                               ; preds = %1
  %12 = load ptr, ptr %3, align 4, !dbg !1362
  %13 = getelementptr inbounds %struct.uart_stm32_data, ptr %12, i32 0, i32 2, !dbg !1364
  %14 = load ptr, ptr %13, align 4, !dbg !1364
  %15 = load ptr, ptr %2, align 4, !dbg !1365
  %16 = load ptr, ptr %3, align 4, !dbg !1366
  %17 = getelementptr inbounds %struct.uart_stm32_data, ptr %16, i32 0, i32 3, !dbg !1367
  %18 = load ptr, ptr %17, align 4, !dbg !1367
  call void %14(ptr noundef %15, ptr noundef %18) #6, !dbg !1362
  br label %19, !dbg !1368

19:                                               ; preds = %11, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #7, !dbg !1369
  ret void, !dbg !1369
}

; Function Attrs: optsize
declare !dbg !1370 dso_local void @z_arm_irq_priority_set(i32 noundef, i32 noundef, i32 noundef) #3

; Function Attrs: optsize
declare !dbg !1374 dso_local void @arch_irq_enable(i32 noundef) #3

; Function Attrs: nounwind optsize
define internal i32 @uart_stm32_poll_in(ptr noundef %0, ptr noundef %1) #1 !dbg !1377 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1379, metadata !DIExpression()), !dbg !1381
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1380, metadata !DIExpression()), !dbg !1382
  %5 = load ptr, ptr %3, align 4, !dbg !1383
  %6 = load ptr, ptr %4, align 4, !dbg !1384
  %7 = call i32 @uart_stm32_poll_in_visitor(ptr noundef %5, ptr noundef %6, ptr noundef @poll_in_u8) #6, !dbg !1385
  ret i32 %7, !dbg !1386
}

; Function Attrs: nounwind optsize
define internal void @uart_stm32_poll_out(ptr noundef %0, i8 noundef zeroext %1) #1 !dbg !1387 {
  %3 = alloca ptr, align 4
  %4 = alloca i8, align 1
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1389, metadata !DIExpression()), !dbg !1391
  store i8 %1, ptr %4, align 1
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1390, metadata !DIExpression()), !dbg !1392
  %5 = load ptr, ptr %3, align 4, !dbg !1393
  call void @uart_stm32_poll_out_visitor(ptr noundef %5, ptr noundef %4, ptr noundef @poll_out_u8) #6, !dbg !1394
  ret void, !dbg !1395
}

; Function Attrs: nounwind optsize
define internal i32 @uart_stm32_err_check(ptr noundef %0) #1 !dbg !1396 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1398, metadata !DIExpression()), !dbg !1401
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #7, !dbg !1402
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1399, metadata !DIExpression()), !dbg !1403
  %5 = load ptr, ptr %2, align 4, !dbg !1404
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 1, !dbg !1405
  %7 = load ptr, ptr %6, align 4, !dbg !1405
  store ptr %7, ptr %3, align 4, !dbg !1403
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #7, !dbg !1406
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1400, metadata !DIExpression()), !dbg !1407
  store i32 0, ptr %4, align 4, !dbg !1407
  %8 = load ptr, ptr %3, align 4, !dbg !1408
  %9 = getelementptr inbounds %struct.uart_stm32_config, ptr %8, i32 0, i32 0, !dbg !1410
  %10 = load ptr, ptr %9, align 4, !dbg !1410
  %11 = call i32 @LL_USART_IsActiveFlag_ORE(ptr noundef %10) #6, !dbg !1411
  %12 = icmp ne i32 %11, 0, !dbg !1411
  br i1 %12, label %13, label %16, !dbg !1412

13:                                               ; preds = %1
  %14 = load i32, ptr %4, align 4, !dbg !1413
  %15 = or i32 %14, 1, !dbg !1413
  store i32 %15, ptr %4, align 4, !dbg !1413
  br label %16, !dbg !1415

16:                                               ; preds = %13, %1
  %17 = load ptr, ptr %3, align 4, !dbg !1416
  %18 = getelementptr inbounds %struct.uart_stm32_config, ptr %17, i32 0, i32 0, !dbg !1418
  %19 = load ptr, ptr %18, align 4, !dbg !1418
  %20 = call i32 @LL_USART_IsActiveFlag_PE(ptr noundef %19) #6, !dbg !1419
  %21 = icmp ne i32 %20, 0, !dbg !1419
  br i1 %21, label %22, label %25, !dbg !1420

22:                                               ; preds = %16
  %23 = load i32, ptr %4, align 4, !dbg !1421
  %24 = or i32 %23, 2, !dbg !1421
  store i32 %24, ptr %4, align 4, !dbg !1421
  br label %25, !dbg !1423

25:                                               ; preds = %22, %16
  %26 = load ptr, ptr %3, align 4, !dbg !1424
  %27 = getelementptr inbounds %struct.uart_stm32_config, ptr %26, i32 0, i32 0, !dbg !1426
  %28 = load ptr, ptr %27, align 4, !dbg !1426
  %29 = call i32 @LL_USART_IsActiveFlag_FE(ptr noundef %28) #6, !dbg !1427
  %30 = icmp ne i32 %29, 0, !dbg !1427
  br i1 %30, label %31, label %34, !dbg !1428

31:                                               ; preds = %25
  %32 = load i32, ptr %4, align 4, !dbg !1429
  %33 = or i32 %32, 4, !dbg !1429
  store i32 %33, ptr %4, align 4, !dbg !1429
  br label %34, !dbg !1431

34:                                               ; preds = %31, %25
  %35 = load ptr, ptr %3, align 4, !dbg !1432
  %36 = getelementptr inbounds %struct.uart_stm32_config, ptr %35, i32 0, i32 0, !dbg !1434
  %37 = load ptr, ptr %36, align 4, !dbg !1434
  %38 = call i32 @LL_USART_IsActiveFlag_NE(ptr noundef %37) #6, !dbg !1435
  %39 = icmp ne i32 %38, 0, !dbg !1435
  br i1 %39, label %40, label %43, !dbg !1436

40:                                               ; preds = %34
  %41 = load i32, ptr %4, align 4, !dbg !1437
  %42 = or i32 %41, 32, !dbg !1437
  store i32 %42, ptr %4, align 4, !dbg !1437
  br label %43, !dbg !1439

43:                                               ; preds = %40, %34
  %44 = load ptr, ptr %3, align 4, !dbg !1440
  %45 = getelementptr inbounds %struct.uart_stm32_config, ptr %44, i32 0, i32 0, !dbg !1442
  %46 = load ptr, ptr %45, align 4, !dbg !1442
  %47 = call i32 @LL_USART_IsActiveFlag_LBD(ptr noundef %46) #6, !dbg !1443
  %48 = icmp ne i32 %47, 0, !dbg !1443
  br i1 %48, label %49, label %52, !dbg !1444

49:                                               ; preds = %43
  %50 = load i32, ptr %4, align 4, !dbg !1445
  %51 = or i32 %50, 8, !dbg !1445
  store i32 %51, ptr %4, align 4, !dbg !1445
  br label %52, !dbg !1447

52:                                               ; preds = %49, %43
  %53 = load i32, ptr %4, align 4, !dbg !1448
  %54 = and i32 %53, 8, !dbg !1450
  %55 = icmp ne i32 %54, 0, !dbg !1450
  br i1 %55, label %56, label %60, !dbg !1451

56:                                               ; preds = %52
  %57 = load ptr, ptr %3, align 4, !dbg !1452
  %58 = getelementptr inbounds %struct.uart_stm32_config, ptr %57, i32 0, i32 0, !dbg !1454
  %59 = load ptr, ptr %58, align 4, !dbg !1454
  call void @LL_USART_ClearFlag_LBD(ptr noundef %59) #6, !dbg !1455
  br label %60, !dbg !1456

60:                                               ; preds = %56, %52
  %61 = load i32, ptr %4, align 4, !dbg !1457
  %62 = and i32 %61, 1, !dbg !1459
  %63 = icmp ne i32 %62, 0, !dbg !1459
  br i1 %63, label %64, label %68, !dbg !1460

64:                                               ; preds = %60
  %65 = load ptr, ptr %3, align 4, !dbg !1461
  %66 = getelementptr inbounds %struct.uart_stm32_config, ptr %65, i32 0, i32 0, !dbg !1463
  %67 = load ptr, ptr %66, align 4, !dbg !1463
  call void @LL_USART_ClearFlag_ORE(ptr noundef %67) #6, !dbg !1464
  br label %68, !dbg !1465

68:                                               ; preds = %64, %60
  %69 = load i32, ptr %4, align 4, !dbg !1466
  %70 = and i32 %69, 2, !dbg !1468
  %71 = icmp ne i32 %70, 0, !dbg !1468
  br i1 %71, label %72, label %76, !dbg !1469

72:                                               ; preds = %68
  %73 = load ptr, ptr %3, align 4, !dbg !1470
  %74 = getelementptr inbounds %struct.uart_stm32_config, ptr %73, i32 0, i32 0, !dbg !1472
  %75 = load ptr, ptr %74, align 4, !dbg !1472
  call void @LL_USART_ClearFlag_PE(ptr noundef %75) #6, !dbg !1473
  br label %76, !dbg !1474

76:                                               ; preds = %72, %68
  %77 = load i32, ptr %4, align 4, !dbg !1475
  %78 = and i32 %77, 4, !dbg !1477
  %79 = icmp ne i32 %78, 0, !dbg !1477
  br i1 %79, label %80, label %84, !dbg !1478

80:                                               ; preds = %76
  %81 = load ptr, ptr %3, align 4, !dbg !1479
  %82 = getelementptr inbounds %struct.uart_stm32_config, ptr %81, i32 0, i32 0, !dbg !1481
  %83 = load ptr, ptr %82, align 4, !dbg !1481
  call void @LL_USART_ClearFlag_FE(ptr noundef %83) #6, !dbg !1482
  br label %84, !dbg !1483

84:                                               ; preds = %80, %76
  %85 = load i32, ptr %4, align 4, !dbg !1484
  %86 = and i32 %85, 32, !dbg !1486
  %87 = icmp ne i32 %86, 0, !dbg !1486
  br i1 %87, label %88, label %92, !dbg !1487

88:                                               ; preds = %84
  %89 = load ptr, ptr %3, align 4, !dbg !1488
  %90 = getelementptr inbounds %struct.uart_stm32_config, ptr %89, i32 0, i32 0, !dbg !1490
  %91 = load ptr, ptr %90, align 4, !dbg !1490
  call void @LL_USART_ClearFlag_NE(ptr noundef %91) #6, !dbg !1491
  br label %92, !dbg !1492

92:                                               ; preds = %88, %84
  %93 = load i32, ptr %4, align 4, !dbg !1493
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #7, !dbg !1494
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #7, !dbg !1494
  ret i32 %93, !dbg !1495
}

; Function Attrs: nounwind optsize
define internal i32 @uart_stm32_configure(ptr noundef %0, ptr noundef %1) #1 !dbg !1496 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1498, metadata !DIExpression()), !dbg !1507
  store ptr %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1499, metadata !DIExpression()), !dbg !1508
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #7, !dbg !1509
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1500, metadata !DIExpression()), !dbg !1510
  %13 = load ptr, ptr %4, align 4, !dbg !1511
  %14 = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 1, !dbg !1512
  %15 = load ptr, ptr %14, align 4, !dbg !1512
  store ptr %15, ptr %6, align 4, !dbg !1510
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #7, !dbg !1513
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1501, metadata !DIExpression()), !dbg !1514
  %16 = load ptr, ptr %4, align 4, !dbg !1515
  %17 = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 4, !dbg !1516
  %18 = load ptr, ptr %17, align 4, !dbg !1516
  store ptr %18, ptr %7, align 4, !dbg !1514
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #7, !dbg !1517
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1502, metadata !DIExpression()), !dbg !1518
  %19 = load ptr, ptr %7, align 4, !dbg !1519
  %20 = getelementptr inbounds %struct.uart_stm32_data, ptr %19, i32 0, i32 1, !dbg !1520
  %21 = load ptr, ptr %20, align 4, !dbg !1520
  store ptr %21, ptr %8, align 4, !dbg !1518
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #7, !dbg !1521
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1503, metadata !DIExpression()), !dbg !1522
  %22 = load ptr, ptr %5, align 4, !dbg !1523
  %23 = getelementptr inbounds %struct.uart_config, ptr %22, i32 0, i32 1, !dbg !1524
  %24 = load i8, ptr %23, align 4, !dbg !1524
  %25 = call i32 @uart_stm32_cfg2ll_parity(i8 noundef zeroext %24) #6, !dbg !1525
  store i32 %25, ptr %9, align 4, !dbg !1522
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #7, !dbg !1526
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1505, metadata !DIExpression()), !dbg !1527
  %26 = load ptr, ptr %6, align 4, !dbg !1528
  %27 = load ptr, ptr %5, align 4, !dbg !1529
  %28 = getelementptr inbounds %struct.uart_config, ptr %27, i32 0, i32 2, !dbg !1530
  %29 = load i8, ptr %28, align 1, !dbg !1530
  %30 = call i32 @uart_stm32_cfg2ll_stopbits(ptr noundef %26, i8 noundef zeroext %29) #6, !dbg !1531
  store i32 %30, ptr %10, align 4, !dbg !1527
  call void @llvm.lifetime.start.p0(i64 4, ptr %11) #7, !dbg !1532
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1506, metadata !DIExpression()), !dbg !1533
  %31 = load ptr, ptr %5, align 4, !dbg !1534
  %32 = getelementptr inbounds %struct.uart_config, ptr %31, i32 0, i32 3, !dbg !1535
  %33 = load i8, ptr %32, align 2, !dbg !1535
  %34 = load ptr, ptr %5, align 4, !dbg !1536
  %35 = getelementptr inbounds %struct.uart_config, ptr %34, i32 0, i32 1, !dbg !1537
  %36 = load i8, ptr %35, align 4, !dbg !1537
  %37 = call i32 @uart_stm32_cfg2ll_databits(i8 noundef zeroext %33, i8 noundef zeroext %36) #6, !dbg !1538
  store i32 %37, ptr %11, align 4, !dbg !1533
  %38 = load ptr, ptr %5, align 4, !dbg !1539
  %39 = getelementptr inbounds %struct.uart_config, ptr %38, i32 0, i32 1, !dbg !1541
  %40 = load i8, ptr %39, align 4, !dbg !1541
  %41 = zext i8 %40 to i32, !dbg !1539
  %42 = icmp eq i32 %41, 3, !dbg !1542
  br i1 %42, label %49, label %43, !dbg !1543

43:                                               ; preds = %2
  %44 = load ptr, ptr %5, align 4, !dbg !1544
  %45 = getelementptr inbounds %struct.uart_config, ptr %44, i32 0, i32 1, !dbg !1545
  %46 = load i8, ptr %45, align 4, !dbg !1545
  %47 = zext i8 %46 to i32, !dbg !1544
  %48 = icmp eq i32 %47, 4, !dbg !1546
  br i1 %48, label %49, label %50, !dbg !1547

49:                                               ; preds = %43, %2
  store i32 -134, ptr %3, align 4, !dbg !1548
  store i32 1, ptr %12, align 4
  br label %174, !dbg !1548

50:                                               ; preds = %43
  %51 = load ptr, ptr %5, align 4, !dbg !1550
  %52 = getelementptr inbounds %struct.uart_config, ptr %51, i32 0, i32 1, !dbg !1552
  %53 = load i8, ptr %52, align 4, !dbg !1552
  %54 = zext i8 %53 to i32, !dbg !1550
  %55 = icmp ne i32 %54, 0, !dbg !1553
  br i1 %55, label %56, label %63, !dbg !1554

56:                                               ; preds = %50
  %57 = load ptr, ptr %5, align 4, !dbg !1555
  %58 = getelementptr inbounds %struct.uart_config, ptr %57, i32 0, i32 3, !dbg !1556
  %59 = load i8, ptr %58, align 2, !dbg !1556
  %60 = zext i8 %59 to i32, !dbg !1555
  %61 = icmp eq i32 %60, 4, !dbg !1557
  br i1 %61, label %62, label %63, !dbg !1558

62:                                               ; preds = %56
  store i32 -134, ptr %3, align 4, !dbg !1559
  store i32 1, ptr %12, align 4
  br label %174, !dbg !1559

63:                                               ; preds = %56, %50
  %64 = load i32, ptr %10, align 4, !dbg !1561
  %65 = call zeroext i8 @uart_stm32_ll2cfg_stopbits(i32 noundef %64) #6, !dbg !1563
  %66 = zext i8 %65 to i32, !dbg !1563
  %67 = load ptr, ptr %5, align 4, !dbg !1564
  %68 = getelementptr inbounds %struct.uart_config, ptr %67, i32 0, i32 2, !dbg !1565
  %69 = load i8, ptr %68, align 1, !dbg !1565
  %70 = zext i8 %69 to i32, !dbg !1564
  %71 = icmp ne i32 %66, %70, !dbg !1566
  br i1 %71, label %72, label %73, !dbg !1567

72:                                               ; preds = %63
  store i32 -134, ptr %3, align 4, !dbg !1568
  store i32 1, ptr %12, align 4
  br label %174, !dbg !1568

73:                                               ; preds = %63
  %74 = load i32, ptr %11, align 4, !dbg !1570
  %75 = load i32, ptr %9, align 4, !dbg !1572
  %76 = call zeroext i8 @uart_stm32_ll2cfg_databits(i32 noundef %74, i32 noundef %75) #6, !dbg !1573
  %77 = zext i8 %76 to i32, !dbg !1573
  %78 = load ptr, ptr %5, align 4, !dbg !1574
  %79 = getelementptr inbounds %struct.uart_config, ptr %78, i32 0, i32 3, !dbg !1575
  %80 = load i8, ptr %79, align 2, !dbg !1575
  %81 = zext i8 %80 to i32, !dbg !1574
  %82 = icmp ne i32 %77, %81, !dbg !1576
  br i1 %82, label %83, label %84, !dbg !1577

83:                                               ; preds = %73
  store i32 -134, ptr %3, align 4, !dbg !1578
  store i32 1, ptr %12, align 4
  br label %174, !dbg !1578

84:                                               ; preds = %73
  %85 = load ptr, ptr %5, align 4, !dbg !1580
  %86 = getelementptr inbounds %struct.uart_config, ptr %85, i32 0, i32 4, !dbg !1582
  %87 = load i8, ptr %86, align 1, !dbg !1582
  %88 = zext i8 %87 to i32, !dbg !1580
  %89 = icmp eq i32 %88, 0, !dbg !1583
  br i1 %89, label %163, label %90, !dbg !1584

90:                                               ; preds = %84
  %91 = load ptr, ptr %5, align 4, !dbg !1585
  %92 = getelementptr inbounds %struct.uart_config, ptr %91, i32 0, i32 4, !dbg !1586
  %93 = load i8, ptr %92, align 1, !dbg !1586
  %94 = zext i8 %93 to i32, !dbg !1585
  %95 = icmp eq i32 %94, 1, !dbg !1587
  br i1 %95, label %96, label %116, !dbg !1588

96:                                               ; preds = %90
  %97 = load ptr, ptr %6, align 4, !dbg !1589
  %98 = getelementptr inbounds %struct.uart_stm32_config, ptr %97, i32 0, i32 0, !dbg !1590
  %99 = load ptr, ptr %98, align 4, !dbg !1590
  %100 = icmp eq ptr %99, inttoptr (i32 1073821696 to ptr), !dbg !1591
  br i1 %100, label %163, label %101, !dbg !1592

101:                                              ; preds = %96
  %102 = load ptr, ptr %6, align 4, !dbg !1593
  %103 = getelementptr inbounds %struct.uart_stm32_config, ptr %102, i32 0, i32 0, !dbg !1594
  %104 = load ptr, ptr %103, align 4, !dbg !1594
  %105 = icmp eq ptr %104, inttoptr (i32 1073759232 to ptr), !dbg !1595
  br i1 %105, label %163, label %106, !dbg !1596

106:                                              ; preds = %101
  %107 = load ptr, ptr %6, align 4, !dbg !1597
  %108 = getelementptr inbounds %struct.uart_stm32_config, ptr %107, i32 0, i32 0, !dbg !1598
  %109 = load ptr, ptr %108, align 4, !dbg !1598
  %110 = icmp eq ptr %109, inttoptr (i32 1073760256 to ptr), !dbg !1599
  br i1 %110, label %163, label %111, !dbg !1600

111:                                              ; preds = %106
  %112 = load ptr, ptr %6, align 4, !dbg !1601
  %113 = getelementptr inbounds %struct.uart_stm32_config, ptr %112, i32 0, i32 0, !dbg !1602
  %114 = load ptr, ptr %113, align 4, !dbg !1602
  %115 = icmp eq ptr %114, inttoptr (i32 1073761280 to ptr), !dbg !1603
  br i1 %115, label %163, label %116, !dbg !1604

116:                                              ; preds = %111, %90
  %117 = load ptr, ptr %5, align 4, !dbg !1605
  %118 = getelementptr inbounds %struct.uart_config, ptr %117, i32 0, i32 4, !dbg !1606
  %119 = load i8, ptr %118, align 1, !dbg !1606
  %120 = zext i8 %119 to i32, !dbg !1605
  %121 = icmp eq i32 %120, 3, !dbg !1607
  br i1 %121, label %122, label %162, !dbg !1608

122:                                              ; preds = %116
  %123 = load ptr, ptr %6, align 4, !dbg !1609
  %124 = getelementptr inbounds %struct.uart_stm32_config, ptr %123, i32 0, i32 0, !dbg !1610
  %125 = load ptr, ptr %124, align 4, !dbg !1610
  %126 = icmp eq ptr %125, inttoptr (i32 1073821696 to ptr), !dbg !1611
  br i1 %126, label %163, label %127, !dbg !1612

127:                                              ; preds = %122
  %128 = load ptr, ptr %6, align 4, !dbg !1613
  %129 = getelementptr inbounds %struct.uart_stm32_config, ptr %128, i32 0, i32 0, !dbg !1614
  %130 = load ptr, ptr %129, align 4, !dbg !1614
  %131 = icmp eq ptr %130, inttoptr (i32 1073759232 to ptr), !dbg !1615
  br i1 %131, label %163, label %132, !dbg !1616

132:                                              ; preds = %127
  %133 = load ptr, ptr %6, align 4, !dbg !1617
  %134 = getelementptr inbounds %struct.uart_stm32_config, ptr %133, i32 0, i32 0, !dbg !1618
  %135 = load ptr, ptr %134, align 4, !dbg !1618
  %136 = icmp eq ptr %135, inttoptr (i32 1073760256 to ptr), !dbg !1619
  br i1 %136, label %163, label %137, !dbg !1620

137:                                              ; preds = %132
  %138 = load ptr, ptr %6, align 4, !dbg !1621
  %139 = getelementptr inbounds %struct.uart_stm32_config, ptr %138, i32 0, i32 0, !dbg !1622
  %140 = load ptr, ptr %139, align 4, !dbg !1622
  %141 = icmp eq ptr %140, inttoptr (i32 1073761280 to ptr), !dbg !1623
  br i1 %141, label %163, label %142, !dbg !1624

142:                                              ; preds = %137
  %143 = load ptr, ptr %6, align 4, !dbg !1625
  %144 = getelementptr inbounds %struct.uart_stm32_config, ptr %143, i32 0, i32 0, !dbg !1626
  %145 = load ptr, ptr %144, align 4, !dbg !1626
  %146 = icmp eq ptr %145, inttoptr (i32 1073762304 to ptr), !dbg !1627
  br i1 %146, label %163, label %147, !dbg !1628

147:                                              ; preds = %142
  %148 = load ptr, ptr %6, align 4, !dbg !1629
  %149 = getelementptr inbounds %struct.uart_stm32_config, ptr %148, i32 0, i32 0, !dbg !1630
  %150 = load ptr, ptr %149, align 4, !dbg !1630
  %151 = icmp eq ptr %150, inttoptr (i32 1073812480 to ptr), !dbg !1631
  br i1 %151, label %163, label %152, !dbg !1632

152:                                              ; preds = %147
  %153 = load ptr, ptr %6, align 4, !dbg !1633
  %154 = getelementptr inbounds %struct.uart_stm32_config, ptr %153, i32 0, i32 0, !dbg !1634
  %155 = load ptr, ptr %154, align 4, !dbg !1634
  %156 = icmp eq ptr %155, inttoptr (i32 1073813504 to ptr), !dbg !1635
  br i1 %156, label %163, label %157, !dbg !1636

157:                                              ; preds = %152
  %158 = load ptr, ptr %6, align 4, !dbg !1637
  %159 = getelementptr inbounds %struct.uart_stm32_config, ptr %158, i32 0, i32 0, !dbg !1638
  %160 = load ptr, ptr %159, align 4, !dbg !1638
  %161 = icmp eq ptr %160, inttoptr (i32 1073814528 to ptr), !dbg !1639
  br i1 %161, label %163, label %162, !dbg !1640

162:                                              ; preds = %157, %116
  store i32 -134, ptr %3, align 4, !dbg !1641
  store i32 1, ptr %12, align 4
  br label %174, !dbg !1641

163:                                              ; preds = %157, %152, %147, %142, %137, %132, %127, %122, %111, %106, %101, %96, %84
  %164 = load ptr, ptr %6, align 4, !dbg !1643
  %165 = getelementptr inbounds %struct.uart_stm32_config, ptr %164, i32 0, i32 0, !dbg !1644
  %166 = load ptr, ptr %165, align 4, !dbg !1644
  call void @LL_USART_Disable(ptr noundef %166) #6, !dbg !1645
  %167 = load ptr, ptr %4, align 4, !dbg !1646
  %168 = load ptr, ptr %5, align 4, !dbg !1647
  call void @uart_stm32_parameters_set(ptr noundef %167, ptr noundef %168) #6, !dbg !1648
  %169 = load ptr, ptr %6, align 4, !dbg !1649
  %170 = getelementptr inbounds %struct.uart_stm32_config, ptr %169, i32 0, i32 0, !dbg !1650
  %171 = load ptr, ptr %170, align 4, !dbg !1650
  call void @LL_USART_Enable(ptr noundef %171) #6, !dbg !1651
  %172 = load ptr, ptr %8, align 4, !dbg !1652
  %173 = load ptr, ptr %5, align 4, !dbg !1653
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %172, ptr align 4 %173, i32 8, i1 false), !dbg !1654
  store i32 0, ptr %3, align 4, !dbg !1655
  store i32 1, ptr %12, align 4
  br label %174, !dbg !1655

174:                                              ; preds = %163, %162, %83, %72, %62, %49
  call void @llvm.lifetime.end.p0(i64 4, ptr %11) #7, !dbg !1656
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #7, !dbg !1656
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #7, !dbg !1656
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #7, !dbg !1656
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #7, !dbg !1656
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #7, !dbg !1656
  %175 = load i32, ptr %3, align 4, !dbg !1656
  ret i32 %175, !dbg !1656
}

; Function Attrs: nounwind optsize
define internal i32 @uart_stm32_config_get(ptr noundef %0, ptr noundef %1) #1 !dbg !1657 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1659, metadata !DIExpression()), !dbg !1663
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1660, metadata !DIExpression()), !dbg !1664
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #7, !dbg !1665
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1661, metadata !DIExpression()), !dbg !1666
  %7 = load ptr, ptr %3, align 4, !dbg !1667
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 4, !dbg !1668
  %9 = load ptr, ptr %8, align 4, !dbg !1668
  store ptr %9, ptr %5, align 4, !dbg !1666
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #7, !dbg !1669
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1662, metadata !DIExpression()), !dbg !1670
  %10 = load ptr, ptr %5, align 4, !dbg !1671
  %11 = getelementptr inbounds %struct.uart_stm32_data, ptr %10, i32 0, i32 1, !dbg !1672
  %12 = load ptr, ptr %11, align 4, !dbg !1672
  store ptr %12, ptr %6, align 4, !dbg !1670
  %13 = load ptr, ptr %6, align 4, !dbg !1673
  %14 = getelementptr inbounds %struct.uart_config, ptr %13, i32 0, i32 0, !dbg !1674
  %15 = load i32, ptr %14, align 4, !dbg !1674
  %16 = load ptr, ptr %4, align 4, !dbg !1675
  %17 = getelementptr inbounds %struct.uart_config, ptr %16, i32 0, i32 0, !dbg !1676
  store i32 %15, ptr %17, align 4, !dbg !1677
  %18 = load ptr, ptr %3, align 4, !dbg !1678
  %19 = call i32 @uart_stm32_get_parity(ptr noundef %18) #6, !dbg !1679
  %20 = call zeroext i8 @uart_stm32_ll2cfg_parity(i32 noundef %19) #6, !dbg !1680
  %21 = load ptr, ptr %4, align 4, !dbg !1681
  %22 = getelementptr inbounds %struct.uart_config, ptr %21, i32 0, i32 1, !dbg !1682
  store i8 %20, ptr %22, align 4, !dbg !1683
  %23 = load ptr, ptr %3, align 4, !dbg !1684
  %24 = call i32 @uart_stm32_get_stopbits(ptr noundef %23) #6, !dbg !1685
  %25 = call zeroext i8 @uart_stm32_ll2cfg_stopbits(i32 noundef %24) #6, !dbg !1686
  %26 = load ptr, ptr %4, align 4, !dbg !1687
  %27 = getelementptr inbounds %struct.uart_config, ptr %26, i32 0, i32 2, !dbg !1688
  store i8 %25, ptr %27, align 1, !dbg !1689
  %28 = load ptr, ptr %3, align 4, !dbg !1690
  %29 = call i32 @uart_stm32_get_databits(ptr noundef %28) #6, !dbg !1691
  %30 = load ptr, ptr %3, align 4, !dbg !1692
  %31 = call i32 @uart_stm32_get_parity(ptr noundef %30) #6, !dbg !1693
  %32 = call zeroext i8 @uart_stm32_ll2cfg_databits(i32 noundef %29, i32 noundef %31) #6, !dbg !1694
  %33 = load ptr, ptr %4, align 4, !dbg !1695
  %34 = getelementptr inbounds %struct.uart_config, ptr %33, i32 0, i32 3, !dbg !1696
  store i8 %32, ptr %34, align 2, !dbg !1697
  %35 = load ptr, ptr %3, align 4, !dbg !1698
  %36 = call i32 @uart_stm32_get_hwctrl(ptr noundef %35) #6, !dbg !1699
  %37 = call zeroext i8 @uart_stm32_ll2cfg_hwctrl(i32 noundef %36) #6, !dbg !1700
  %38 = load ptr, ptr %4, align 4, !dbg !1701
  %39 = getelementptr inbounds %struct.uart_config, ptr %38, i32 0, i32 4, !dbg !1702
  store i8 %37, ptr %39, align 1, !dbg !1703
  %40 = load ptr, ptr %3, align 4, !dbg !1704
  %41 = call zeroext i1 @uart_stm32_get_driver_enable(ptr noundef %40) #6, !dbg !1706
  br i1 %41, label %42, label %45, !dbg !1707

42:                                               ; preds = %2
  %43 = load ptr, ptr %4, align 4, !dbg !1708
  %44 = getelementptr inbounds %struct.uart_config, ptr %43, i32 0, i32 4, !dbg !1710
  store i8 3, ptr %44, align 1, !dbg !1711
  br label %45, !dbg !1712

45:                                               ; preds = %42, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #7, !dbg !1713
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #7, !dbg !1713
  ret i32 0, !dbg !1714
}

; Function Attrs: nounwind optsize
define internal i32 @uart_stm32_fifo_fill(ptr noundef %0, ptr noundef %1, i32 noundef %2) #1 !dbg !1715 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  store ptr %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1717, metadata !DIExpression()), !dbg !1720
  store ptr %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1718, metadata !DIExpression()), !dbg !1721
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1719, metadata !DIExpression()), !dbg !1722
  %8 = load ptr, ptr %5, align 4, !dbg !1723
  %9 = call i32 @uart_stm32_get_databits(ptr noundef %8) #6, !dbg !1725
  %10 = load ptr, ptr %5, align 4, !dbg !1726
  %11 = call i32 @uart_stm32_get_parity(ptr noundef %10) #6, !dbg !1727
  %12 = call zeroext i8 @uart_stm32_ll2cfg_databits(i32 noundef %9, i32 noundef %11) #6, !dbg !1728
  %13 = zext i8 %12 to i32, !dbg !1728
  %14 = icmp eq i32 %13, 4, !dbg !1729
  br i1 %14, label %15, label %16, !dbg !1730

15:                                               ; preds = %3
  store i32 -134, ptr %4, align 4, !dbg !1731
  br label %21, !dbg !1731

16:                                               ; preds = %3
  %17 = load ptr, ptr %5, align 4, !dbg !1733
  %18 = load ptr, ptr %6, align 4, !dbg !1734
  %19 = load i32, ptr %7, align 4, !dbg !1735
  %20 = call i32 @uart_stm32_fifo_fill_visitor(ptr noundef %17, ptr noundef %18, i32 noundef %19, ptr noundef @fifo_fill_with_u8) #6, !dbg !1736
  store i32 %20, ptr %4, align 4, !dbg !1737
  br label %21, !dbg !1737

21:                                               ; preds = %16, %15
  %22 = load i32, ptr %4, align 4, !dbg !1738
  ret i32 %22, !dbg !1738
}

; Function Attrs: nounwind optsize
define internal i32 @uart_stm32_fifo_read(ptr noundef %0, ptr noundef %1, i32 noundef %2) #1 !dbg !1739 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  store ptr %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1741, metadata !DIExpression()), !dbg !1744
  store ptr %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1742, metadata !DIExpression()), !dbg !1745
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1743, metadata !DIExpression()), !dbg !1746
  %8 = load ptr, ptr %5, align 4, !dbg !1747
  %9 = call i32 @uart_stm32_get_databits(ptr noundef %8) #6, !dbg !1749
  %10 = load ptr, ptr %5, align 4, !dbg !1750
  %11 = call i32 @uart_stm32_get_parity(ptr noundef %10) #6, !dbg !1751
  %12 = call zeroext i8 @uart_stm32_ll2cfg_databits(i32 noundef %9, i32 noundef %11) #6, !dbg !1752
  %13 = zext i8 %12 to i32, !dbg !1752
  %14 = icmp eq i32 %13, 4, !dbg !1753
  br i1 %14, label %15, label %16, !dbg !1754

15:                                               ; preds = %3
  store i32 -134, ptr %4, align 4, !dbg !1755
  br label %21, !dbg !1755

16:                                               ; preds = %3
  %17 = load ptr, ptr %5, align 4, !dbg !1757
  %18 = load ptr, ptr %6, align 4, !dbg !1758
  %19 = load i32, ptr %7, align 4, !dbg !1759
  %20 = call i32 @uart_stm32_fifo_read_visitor(ptr noundef %17, ptr noundef %18, i32 noundef %19, ptr noundef @fifo_read_with_u8) #6, !dbg !1760
  store i32 %20, ptr %4, align 4, !dbg !1761
  br label %21, !dbg !1761

21:                                               ; preds = %16, %15
  %22 = load i32, ptr %4, align 4, !dbg !1762
  ret i32 %22, !dbg !1762
}

; Function Attrs: nounwind optsize
define internal void @uart_stm32_irq_tx_enable(ptr noundef %0) #1 !dbg !1763 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1765, metadata !DIExpression()), !dbg !1767
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #7, !dbg !1768
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1766, metadata !DIExpression()), !dbg !1769
  %4 = load ptr, ptr %2, align 4, !dbg !1770
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 1, !dbg !1771
  %6 = load ptr, ptr %5, align 4, !dbg !1771
  store ptr %6, ptr %3, align 4, !dbg !1769
  %7 = load ptr, ptr %3, align 4, !dbg !1772
  %8 = getelementptr inbounds %struct.uart_stm32_config, ptr %7, i32 0, i32 0, !dbg !1773
  %9 = load ptr, ptr %8, align 4, !dbg !1773
  call void @LL_USART_EnableIT_TC(ptr noundef %9) #6, !dbg !1774
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #7, !dbg !1775
  ret void, !dbg !1775
}

; Function Attrs: nounwind optsize
define internal void @uart_stm32_irq_tx_disable(ptr noundef %0) #1 !dbg !1776 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1778, metadata !DIExpression()), !dbg !1780
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #7, !dbg !1781
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1779, metadata !DIExpression()), !dbg !1782
  %4 = load ptr, ptr %2, align 4, !dbg !1783
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 1, !dbg !1784
  %6 = load ptr, ptr %5, align 4, !dbg !1784
  store ptr %6, ptr %3, align 4, !dbg !1782
  %7 = load ptr, ptr %3, align 4, !dbg !1785
  %8 = getelementptr inbounds %struct.uart_stm32_config, ptr %7, i32 0, i32 0, !dbg !1786
  %9 = load ptr, ptr %8, align 4, !dbg !1786
  call void @LL_USART_DisableIT_TC(ptr noundef %9) #6, !dbg !1787
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #7, !dbg !1788
  ret void, !dbg !1788
}

; Function Attrs: nounwind optsize
define internal i32 @uart_stm32_irq_tx_ready(ptr noundef %0) #1 !dbg !1789 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1791, metadata !DIExpression()), !dbg !1793
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #7, !dbg !1794
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1792, metadata !DIExpression()), !dbg !1795
  %4 = load ptr, ptr %2, align 4, !dbg !1796
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 1, !dbg !1797
  %6 = load ptr, ptr %5, align 4, !dbg !1797
  store ptr %6, ptr %3, align 4, !dbg !1795
  %7 = load ptr, ptr %3, align 4, !dbg !1798
  %8 = getelementptr inbounds %struct.uart_stm32_config, ptr %7, i32 0, i32 0, !dbg !1799
  %9 = load ptr, ptr %8, align 4, !dbg !1799
  %10 = call i32 @LL_USART_IsActiveFlag_TXE(ptr noundef %9) #6, !dbg !1800
  %11 = icmp ne i32 %10, 0, !dbg !1800
  br i1 %11, label %12, label %18, !dbg !1801

12:                                               ; preds = %1
  %13 = load ptr, ptr %3, align 4, !dbg !1802
  %14 = getelementptr inbounds %struct.uart_stm32_config, ptr %13, i32 0, i32 0, !dbg !1803
  %15 = load ptr, ptr %14, align 4, !dbg !1803
  %16 = call i32 @LL_USART_IsEnabledIT_TC(ptr noundef %15) #6, !dbg !1804
  %17 = icmp ne i32 %16, 0, !dbg !1801
  br label %18

18:                                               ; preds = %12, %1
  %19 = phi i1 [ false, %1 ], [ %17, %12 ], !dbg !1805
  %20 = zext i1 %19 to i32, !dbg !1801
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #7, !dbg !1806
  ret i32 %20, !dbg !1807
}

; Function Attrs: nounwind optsize
define internal void @uart_stm32_irq_rx_enable(ptr noundef %0) #1 !dbg !1808 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1810, metadata !DIExpression()), !dbg !1812
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #7, !dbg !1813
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1811, metadata !DIExpression()), !dbg !1814
  %4 = load ptr, ptr %2, align 4, !dbg !1815
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 1, !dbg !1816
  %6 = load ptr, ptr %5, align 4, !dbg !1816
  store ptr %6, ptr %3, align 4, !dbg !1814
  %7 = load ptr, ptr %3, align 4, !dbg !1817
  %8 = getelementptr inbounds %struct.uart_stm32_config, ptr %7, i32 0, i32 0, !dbg !1818
  %9 = load ptr, ptr %8, align 4, !dbg !1818
  call void @LL_USART_EnableIT_RXNE(ptr noundef %9) #6, !dbg !1819
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #7, !dbg !1820
  ret void, !dbg !1820
}

; Function Attrs: nounwind optsize
define internal void @uart_stm32_irq_rx_disable(ptr noundef %0) #1 !dbg !1821 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1823, metadata !DIExpression()), !dbg !1825
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #7, !dbg !1826
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1824, metadata !DIExpression()), !dbg !1827
  %4 = load ptr, ptr %2, align 4, !dbg !1828
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 1, !dbg !1829
  %6 = load ptr, ptr %5, align 4, !dbg !1829
  store ptr %6, ptr %3, align 4, !dbg !1827
  %7 = load ptr, ptr %3, align 4, !dbg !1830
  %8 = getelementptr inbounds %struct.uart_stm32_config, ptr %7, i32 0, i32 0, !dbg !1831
  %9 = load ptr, ptr %8, align 4, !dbg !1831
  call void @LL_USART_DisableIT_RXNE(ptr noundef %9) #6, !dbg !1832
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #7, !dbg !1833
  ret void, !dbg !1833
}

; Function Attrs: nounwind optsize
define internal i32 @uart_stm32_irq_tx_complete(ptr noundef %0) #1 !dbg !1834 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1836, metadata !DIExpression()), !dbg !1838
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #7, !dbg !1839
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1837, metadata !DIExpression()), !dbg !1840
  %4 = load ptr, ptr %2, align 4, !dbg !1841
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 1, !dbg !1842
  %6 = load ptr, ptr %5, align 4, !dbg !1842
  store ptr %6, ptr %3, align 4, !dbg !1840
  %7 = load ptr, ptr %3, align 4, !dbg !1843
  %8 = getelementptr inbounds %struct.uart_stm32_config, ptr %7, i32 0, i32 0, !dbg !1844
  %9 = load ptr, ptr %8, align 4, !dbg !1844
  %10 = call i32 @LL_USART_IsActiveFlag_TC(ptr noundef %9) #6, !dbg !1845
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #7, !dbg !1846
  ret i32 %10, !dbg !1847
}

; Function Attrs: nounwind optsize
define internal i32 @uart_stm32_irq_rx_ready(ptr noundef %0) #1 !dbg !1848 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1850, metadata !DIExpression()), !dbg !1852
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #7, !dbg !1853
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1851, metadata !DIExpression()), !dbg !1854
  %4 = load ptr, ptr %2, align 4, !dbg !1855
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 1, !dbg !1856
  %6 = load ptr, ptr %5, align 4, !dbg !1856
  store ptr %6, ptr %3, align 4, !dbg !1854
  %7 = load ptr, ptr %3, align 4, !dbg !1857
  %8 = getelementptr inbounds %struct.uart_stm32_config, ptr %7, i32 0, i32 0, !dbg !1858
  %9 = load ptr, ptr %8, align 4, !dbg !1858
  %10 = call i32 @LL_USART_IsActiveFlag_RXNE(ptr noundef %9) #6, !dbg !1859
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #7, !dbg !1860
  ret i32 %10, !dbg !1861
}

; Function Attrs: nounwind optsize
define internal void @uart_stm32_irq_err_enable(ptr noundef %0) #1 !dbg !1862 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1864, metadata !DIExpression()), !dbg !1866
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #7, !dbg !1867
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1865, metadata !DIExpression()), !dbg !1868
  %4 = load ptr, ptr %2, align 4, !dbg !1869
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 1, !dbg !1870
  %6 = load ptr, ptr %5, align 4, !dbg !1870
  store ptr %6, ptr %3, align 4, !dbg !1868
  %7 = load ptr, ptr %3, align 4, !dbg !1871
  %8 = getelementptr inbounds %struct.uart_stm32_config, ptr %7, i32 0, i32 0, !dbg !1872
  %9 = load ptr, ptr %8, align 4, !dbg !1872
  call void @LL_USART_EnableIT_ERROR(ptr noundef %9) #6, !dbg !1873
  %10 = load ptr, ptr %3, align 4, !dbg !1874
  %11 = getelementptr inbounds %struct.uart_stm32_config, ptr %10, i32 0, i32 0, !dbg !1876
  %12 = load ptr, ptr %11, align 4, !dbg !1876
  %13 = icmp eq ptr %12, inttoptr (i32 1073821696 to ptr), !dbg !1877
  br i1 %13, label %24, label %14, !dbg !1878

14:                                               ; preds = %1
  %15 = load ptr, ptr %3, align 4, !dbg !1879
  %16 = getelementptr inbounds %struct.uart_stm32_config, ptr %15, i32 0, i32 0, !dbg !1880
  %17 = load ptr, ptr %16, align 4, !dbg !1880
  %18 = icmp eq ptr %17, inttoptr (i32 1073759232 to ptr), !dbg !1881
  br i1 %18, label %24, label %19, !dbg !1882

19:                                               ; preds = %14
  %20 = load ptr, ptr %3, align 4, !dbg !1883
  %21 = getelementptr inbounds %struct.uart_stm32_config, ptr %20, i32 0, i32 0, !dbg !1884
  %22 = load ptr, ptr %21, align 4, !dbg !1884
  %23 = icmp eq ptr %22, inttoptr (i32 1073760256 to ptr), !dbg !1885
  br i1 %23, label %24, label %28, !dbg !1886

24:                                               ; preds = %19, %14, %1
  %25 = load ptr, ptr %3, align 4, !dbg !1887
  %26 = getelementptr inbounds %struct.uart_stm32_config, ptr %25, i32 0, i32 0, !dbg !1889
  %27 = load ptr, ptr %26, align 4, !dbg !1889
  call void @LL_USART_EnableIT_LBD(ptr noundef %27) #6, !dbg !1890
  br label %28, !dbg !1891

28:                                               ; preds = %24, %19
  %29 = load ptr, ptr %3, align 4, !dbg !1892
  %30 = getelementptr inbounds %struct.uart_stm32_config, ptr %29, i32 0, i32 0, !dbg !1893
  %31 = load ptr, ptr %30, align 4, !dbg !1893
  call void @LL_USART_EnableIT_PE(ptr noundef %31) #6, !dbg !1894
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #7, !dbg !1895
  ret void, !dbg !1895
}

; Function Attrs: nounwind optsize
define internal void @uart_stm32_irq_err_disable(ptr noundef %0) #1 !dbg !1896 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1898, metadata !DIExpression()), !dbg !1900
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #7, !dbg !1901
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1899, metadata !DIExpression()), !dbg !1902
  %4 = load ptr, ptr %2, align 4, !dbg !1903
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 1, !dbg !1904
  %6 = load ptr, ptr %5, align 4, !dbg !1904
  store ptr %6, ptr %3, align 4, !dbg !1902
  %7 = load ptr, ptr %3, align 4, !dbg !1905
  %8 = getelementptr inbounds %struct.uart_stm32_config, ptr %7, i32 0, i32 0, !dbg !1906
  %9 = load ptr, ptr %8, align 4, !dbg !1906
  call void @LL_USART_DisableIT_ERROR(ptr noundef %9) #6, !dbg !1907
  %10 = load ptr, ptr %3, align 4, !dbg !1908
  %11 = getelementptr inbounds %struct.uart_stm32_config, ptr %10, i32 0, i32 0, !dbg !1910
  %12 = load ptr, ptr %11, align 4, !dbg !1910
  %13 = icmp eq ptr %12, inttoptr (i32 1073821696 to ptr), !dbg !1911
  br i1 %13, label %24, label %14, !dbg !1912

14:                                               ; preds = %1
  %15 = load ptr, ptr %3, align 4, !dbg !1913
  %16 = getelementptr inbounds %struct.uart_stm32_config, ptr %15, i32 0, i32 0, !dbg !1914
  %17 = load ptr, ptr %16, align 4, !dbg !1914
  %18 = icmp eq ptr %17, inttoptr (i32 1073759232 to ptr), !dbg !1915
  br i1 %18, label %24, label %19, !dbg !1916

19:                                               ; preds = %14
  %20 = load ptr, ptr %3, align 4, !dbg !1917
  %21 = getelementptr inbounds %struct.uart_stm32_config, ptr %20, i32 0, i32 0, !dbg !1918
  %22 = load ptr, ptr %21, align 4, !dbg !1918
  %23 = icmp eq ptr %22, inttoptr (i32 1073760256 to ptr), !dbg !1919
  br i1 %23, label %24, label %28, !dbg !1920

24:                                               ; preds = %19, %14, %1
  %25 = load ptr, ptr %3, align 4, !dbg !1921
  %26 = getelementptr inbounds %struct.uart_stm32_config, ptr %25, i32 0, i32 0, !dbg !1923
  %27 = load ptr, ptr %26, align 4, !dbg !1923
  call void @LL_USART_DisableIT_LBD(ptr noundef %27) #6, !dbg !1924
  br label %28, !dbg !1925

28:                                               ; preds = %24, %19
  %29 = load ptr, ptr %3, align 4, !dbg !1926
  %30 = getelementptr inbounds %struct.uart_stm32_config, ptr %29, i32 0, i32 0, !dbg !1927
  %31 = load ptr, ptr %30, align 4, !dbg !1927
  call void @LL_USART_DisableIT_PE(ptr noundef %31) #6, !dbg !1928
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #7, !dbg !1929
  ret void, !dbg !1929
}

; Function Attrs: nounwind optsize
define internal i32 @uart_stm32_irq_is_pending(ptr noundef %0) #1 !dbg !1930 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1932, metadata !DIExpression()), !dbg !1934
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #7, !dbg !1935
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1933, metadata !DIExpression()), !dbg !1936
  %4 = load ptr, ptr %2, align 4, !dbg !1937
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 1, !dbg !1938
  %6 = load ptr, ptr %5, align 4, !dbg !1938
  store ptr %6, ptr %3, align 4, !dbg !1936
  %7 = load ptr, ptr %3, align 4, !dbg !1939
  %8 = getelementptr inbounds %struct.uart_stm32_config, ptr %7, i32 0, i32 0, !dbg !1940
  %9 = load ptr, ptr %8, align 4, !dbg !1940
  %10 = call i32 @LL_USART_IsActiveFlag_RXNE(ptr noundef %9) #6, !dbg !1941
  %11 = icmp ne i32 %10, 0, !dbg !1941
  br i1 %11, label %12, label %18, !dbg !1942

12:                                               ; preds = %1
  %13 = load ptr, ptr %3, align 4, !dbg !1943
  %14 = getelementptr inbounds %struct.uart_stm32_config, ptr %13, i32 0, i32 0, !dbg !1944
  %15 = load ptr, ptr %14, align 4, !dbg !1944
  %16 = call i32 @LL_USART_IsEnabledIT_RXNE(ptr noundef %15) #6, !dbg !1945
  %17 = icmp ne i32 %16, 0, !dbg !1945
  br i1 %17, label %32, label %18, !dbg !1946

18:                                               ; preds = %12, %1
  %19 = load ptr, ptr %3, align 4, !dbg !1947
  %20 = getelementptr inbounds %struct.uart_stm32_config, ptr %19, i32 0, i32 0, !dbg !1948
  %21 = load ptr, ptr %20, align 4, !dbg !1948
  %22 = call i32 @LL_USART_IsActiveFlag_TC(ptr noundef %21) #6, !dbg !1949
  %23 = icmp ne i32 %22, 0, !dbg !1949
  br i1 %23, label %24, label %30, !dbg !1950

24:                                               ; preds = %18
  %25 = load ptr, ptr %3, align 4, !dbg !1951
  %26 = getelementptr inbounds %struct.uart_stm32_config, ptr %25, i32 0, i32 0, !dbg !1952
  %27 = load ptr, ptr %26, align 4, !dbg !1952
  %28 = call i32 @LL_USART_IsEnabledIT_TC(ptr noundef %27) #6, !dbg !1953
  %29 = icmp ne i32 %28, 0, !dbg !1950
  br label %30

30:                                               ; preds = %24, %18
  %31 = phi i1 [ false, %18 ], [ %29, %24 ], !dbg !1954
  br label %32, !dbg !1946

32:                                               ; preds = %30, %12
  %33 = phi i1 [ true, %12 ], [ %31, %30 ]
  %34 = zext i1 %33 to i32, !dbg !1946
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #7, !dbg !1955
  ret i32 %34, !dbg !1956
}

; Function Attrs: nounwind optsize
define internal i32 @uart_stm32_irq_update(ptr noundef %0) #1 !dbg !1957 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1959, metadata !DIExpression()), !dbg !1960
  ret i32 1, !dbg !1961
}

; Function Attrs: nounwind optsize
define internal void @uart_stm32_irq_callback_set(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 !dbg !1962 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1964, metadata !DIExpression()), !dbg !1968
  store ptr %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1965, metadata !DIExpression()), !dbg !1969
  store ptr %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1966, metadata !DIExpression()), !dbg !1970
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #7, !dbg !1971
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1967, metadata !DIExpression()), !dbg !1972
  %8 = load ptr, ptr %4, align 4, !dbg !1973
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 4, !dbg !1974
  %10 = load ptr, ptr %9, align 4, !dbg !1974
  store ptr %10, ptr %7, align 4, !dbg !1972
  %11 = load ptr, ptr %5, align 4, !dbg !1975
  %12 = load ptr, ptr %7, align 4, !dbg !1976
  %13 = getelementptr inbounds %struct.uart_stm32_data, ptr %12, i32 0, i32 2, !dbg !1977
  store ptr %11, ptr %13, align 4, !dbg !1978
  %14 = load ptr, ptr %6, align 4, !dbg !1979
  %15 = load ptr, ptr %7, align 4, !dbg !1980
  %16 = getelementptr inbounds %struct.uart_stm32_data, ptr %15, i32 0, i32 3, !dbg !1981
  store ptr %14, ptr %16, align 4, !dbg !1982
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #7, !dbg !1983
  ret void, !dbg !1983
}

; Function Attrs: nounwind optsize
define internal i32 @uart_stm32_poll_in_visitor(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 !dbg !1984 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca i32, align 4
  store ptr %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1992, metadata !DIExpression()), !dbg !1996
  store ptr %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1993, metadata !DIExpression()), !dbg !1997
  store ptr %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1994, metadata !DIExpression()), !dbg !1998
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #7, !dbg !1999
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1995, metadata !DIExpression()), !dbg !2000
  %10 = load ptr, ptr %5, align 4, !dbg !2001
  %11 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 1, !dbg !2002
  %12 = load ptr, ptr %11, align 4, !dbg !2002
  store ptr %12, ptr %8, align 4, !dbg !2000
  %13 = load ptr, ptr %8, align 4, !dbg !2003
  %14 = getelementptr inbounds %struct.uart_stm32_config, ptr %13, i32 0, i32 0, !dbg !2005
  %15 = load ptr, ptr %14, align 4, !dbg !2005
  %16 = call i32 @LL_USART_IsActiveFlag_ORE(ptr noundef %15) #6, !dbg !2006
  %17 = icmp ne i32 %16, 0, !dbg !2006
  br i1 %17, label %18, label %22, !dbg !2007

18:                                               ; preds = %3
  %19 = load ptr, ptr %8, align 4, !dbg !2008
  %20 = getelementptr inbounds %struct.uart_stm32_config, ptr %19, i32 0, i32 0, !dbg !2010
  %21 = load ptr, ptr %20, align 4, !dbg !2010
  call void @LL_USART_ClearFlag_ORE(ptr noundef %21) #6, !dbg !2011
  br label %22, !dbg !2012

22:                                               ; preds = %18, %3
  %23 = load ptr, ptr %8, align 4, !dbg !2013
  %24 = getelementptr inbounds %struct.uart_stm32_config, ptr %23, i32 0, i32 0, !dbg !2015
  %25 = load ptr, ptr %24, align 4, !dbg !2015
  %26 = call i32 @LL_USART_IsActiveFlag_RXNE(ptr noundef %25) #6, !dbg !2016
  %27 = icmp ne i32 %26, 0, !dbg !2016
  br i1 %27, label %29, label %28, !dbg !2017

28:                                               ; preds = %22
  store i32 -1, ptr %4, align 4, !dbg !2018
  store i32 1, ptr %9, align 4
  br label %33, !dbg !2018

29:                                               ; preds = %22
  %30 = load ptr, ptr %7, align 4, !dbg !2020
  %31 = load ptr, ptr %8, align 4, !dbg !2021
  %32 = load ptr, ptr %6, align 4, !dbg !2022
  call void %30(ptr noundef %31, ptr noundef %32) #6, !dbg !2020
  store i32 0, ptr %4, align 4, !dbg !2023
  store i32 1, ptr %9, align 4
  br label %33, !dbg !2023

33:                                               ; preds = %29, %28
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #7, !dbg !2024
  %34 = load i32, ptr %4, align 4, !dbg !2024
  ret i32 %34, !dbg !2024
}

; Function Attrs: nounwind optsize
define internal void @poll_in_u8(ptr noundef %0, ptr noundef %1) #1 !dbg !2025 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2027, metadata !DIExpression()), !dbg !2029
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2028, metadata !DIExpression()), !dbg !2030
  %5 = load ptr, ptr %3, align 4, !dbg !2031
  %6 = getelementptr inbounds %struct.uart_stm32_config, ptr %5, i32 0, i32 0, !dbg !2032
  %7 = load ptr, ptr %6, align 4, !dbg !2032
  %8 = call zeroext i8 @LL_USART_ReceiveData8(ptr noundef %7) #6, !dbg !2033
  %9 = load ptr, ptr %4, align 4, !dbg !2034
  store i8 %8, ptr %9, align 1, !dbg !2035
  ret void, !dbg !2036
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @LL_USART_IsActiveFlag_ORE(ptr noundef %0) #0 !dbg !2037 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2044, metadata !DIExpression()), !dbg !2045
  %3 = load ptr, ptr %2, align 4, !dbg !2046
  %4 = getelementptr inbounds %struct.USART_TypeDef, ptr %3, i32 0, i32 7, !dbg !2047
  %5 = load volatile i32, ptr %4, align 4, !dbg !2047
  %6 = and i32 %5, 8, !dbg !2048
  %7 = icmp eq i32 %6, 8, !dbg !2049
  %8 = zext i1 %7 to i64, !dbg !2050
  %9 = select i1 %7, i32 1, i32 0, !dbg !2050
  ret i32 %9, !dbg !2051
}

; Function Attrs: inlinehint nounwind optsize
define internal void @LL_USART_ClearFlag_ORE(ptr noundef %0) #0 !dbg !2052 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2056, metadata !DIExpression()), !dbg !2057
  %3 = load ptr, ptr %2, align 4, !dbg !2058
  %4 = getelementptr inbounds %struct.USART_TypeDef, ptr %3, i32 0, i32 8, !dbg !2059
  store volatile i32 8, ptr %4, align 4, !dbg !2060
  ret void, !dbg !2061
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @LL_USART_IsActiveFlag_RXNE(ptr noundef %0) #0 !dbg !2062 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2064, metadata !DIExpression()), !dbg !2065
  %3 = load ptr, ptr %2, align 4, !dbg !2066
  %4 = getelementptr inbounds %struct.USART_TypeDef, ptr %3, i32 0, i32 7, !dbg !2067
  %5 = load volatile i32, ptr %4, align 4, !dbg !2067
  %6 = and i32 %5, 32, !dbg !2068
  %7 = icmp eq i32 %6, 32, !dbg !2069
  %8 = zext i1 %7 to i64, !dbg !2070
  %9 = select i1 %7, i32 1, i32 0, !dbg !2070
  ret i32 %9, !dbg !2071
}

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i8 @LL_USART_ReceiveData8(ptr noundef %0) #0 !dbg !2072 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2076, metadata !DIExpression()), !dbg !2077
  %3 = load ptr, ptr %2, align 4, !dbg !2078
  %4 = getelementptr inbounds %struct.USART_TypeDef, ptr %3, i32 0, i32 9, !dbg !2079
  %5 = load volatile i16, ptr %4, align 4, !dbg !2079
  %6 = zext i16 %5 to i32, !dbg !2080
  %7 = and i32 %6, 511, !dbg !2081
  %8 = and i32 %7, 255, !dbg !2082
  %9 = trunc i32 %8 to i8, !dbg !2083
  ret i8 %9, !dbg !2084
}

; Function Attrs: nounwind optsize
define internal void @uart_stm32_poll_out_visitor(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 !dbg !2085 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  %11 = alloca i32, align 4
  store ptr %0, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2090, metadata !DIExpression()), !dbg !2095
  store ptr %1, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2091, metadata !DIExpression()), !dbg !2096
  store ptr %2, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2092, metadata !DIExpression()), !dbg !2097
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #7, !dbg !2098
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2093, metadata !DIExpression()), !dbg !2099
  %12 = load ptr, ptr %7, align 4, !dbg !2100
  %13 = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 1, !dbg !2101
  %14 = load ptr, ptr %13, align 4, !dbg !2101
  store ptr %14, ptr %10, align 4, !dbg !2099
  call void @llvm.lifetime.start.p0(i64 4, ptr %11) #7, !dbg !2102
  call void @llvm.dbg.declare(metadata ptr %11, metadata !2094, metadata !DIExpression()), !dbg !2103
  br label %15, !dbg !2104

15:                                               ; preds = %37, %3
  br label %16, !dbg !2104

16:                                               ; preds = %15
  %17 = load ptr, ptr %10, align 4, !dbg !2105
  %18 = getelementptr inbounds %struct.uart_stm32_config, ptr %17, i32 0, i32 0, !dbg !2108
  %19 = load ptr, ptr %18, align 4, !dbg !2108
  %20 = call i32 @LL_USART_IsActiveFlag_TXE(ptr noundef %19) #6, !dbg !2109
  %21 = icmp ne i32 %20, 0, !dbg !2109
  br i1 %21, label %22, label %37, !dbg !2110

22:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #7, !dbg !2111
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2117, metadata !DIExpression()), !dbg !2120
  %23 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #7, !dbg !2121, !srcloc !2122
  store i32 %23, ptr %6, align 4, !dbg !2121
  %24 = load i32, ptr %6, align 4, !dbg !2123
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #7, !dbg !2124
  store i32 %24, ptr %11, align 4, !dbg !2125
  %25 = load ptr, ptr %10, align 4, !dbg !2126
  %26 = getelementptr inbounds %struct.uart_stm32_config, ptr %25, i32 0, i32 0, !dbg !2128
  %27 = load ptr, ptr %26, align 4, !dbg !2128
  %28 = call i32 @LL_USART_IsActiveFlag_TXE(ptr noundef %27) #6, !dbg !2129
  %29 = icmp ne i32 %28, 0, !dbg !2129
  br i1 %29, label %30, label %31, !dbg !2130

30:                                               ; preds = %22
  br label %38, !dbg !2131

31:                                               ; preds = %22
  %32 = load i32, ptr %11, align 4, !dbg !2133
  store i32 %32, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2134, metadata !DIExpression()), !dbg !2137
  %33 = load i32, ptr %4, align 4, !dbg !2139
  %34 = icmp ne i32 %33, 0, !dbg !2141
  br i1 %34, label %35, label %36, !dbg !2142

35:                                               ; preds = %31
  br label %arch_irq_unlock.exit1, !dbg !2143

36:                                               ; preds = %31
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #7, !dbg !2145, !srcloc !2146
  br label %arch_irq_unlock.exit1, !dbg !2147

arch_irq_unlock.exit1:                            ; preds = %35, %36
  br label %37, !dbg !2148

37:                                               ; preds = %arch_irq_unlock.exit1, %16
  br label %15, !dbg !2104, !llvm.loop !2149

38:                                               ; preds = %30
  %39 = load ptr, ptr %9, align 4, !dbg !2151
  %40 = load ptr, ptr %10, align 4, !dbg !2152
  %41 = load ptr, ptr %8, align 4, !dbg !2153
  call void %39(ptr noundef %40, ptr noundef %41) #6, !dbg !2151
  %42 = load i32, ptr %11, align 4, !dbg !2154
  store i32 %42, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2134, metadata !DIExpression()), !dbg !2155
  %43 = load i32, ptr %5, align 4, !dbg !2157
  %44 = icmp ne i32 %43, 0, !dbg !2158
  br i1 %44, label %45, label %46, !dbg !2159

45:                                               ; preds = %38
  br label %arch_irq_unlock.exit, !dbg !2160

46:                                               ; preds = %38
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #7, !dbg !2161, !srcloc !2146
  br label %arch_irq_unlock.exit, !dbg !2162

arch_irq_unlock.exit:                             ; preds = %45, %46
  call void @llvm.lifetime.end.p0(i64 4, ptr %11) #7, !dbg !2163
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #7, !dbg !2163
  ret void, !dbg !2163
}

; Function Attrs: nounwind optsize
define internal void @poll_out_u8(ptr noundef %0, ptr noundef %1) #1 !dbg !2164 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2166, metadata !DIExpression()), !dbg !2168
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2167, metadata !DIExpression()), !dbg !2169
  %5 = load ptr, ptr %3, align 4, !dbg !2170
  %6 = getelementptr inbounds %struct.uart_stm32_config, ptr %5, i32 0, i32 0, !dbg !2171
  %7 = load ptr, ptr %6, align 4, !dbg !2171
  %8 = load ptr, ptr %4, align 4, !dbg !2172
  %9 = load i8, ptr %8, align 1, !dbg !2173
  call void @LL_USART_TransmitData8(ptr noundef %7, i8 noundef zeroext %9) #6, !dbg !2174
  ret void, !dbg !2175
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @LL_USART_IsActiveFlag_TXE(ptr noundef %0) #0 !dbg !2176 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2178, metadata !DIExpression()), !dbg !2179
  %3 = load ptr, ptr %2, align 4, !dbg !2180
  %4 = getelementptr inbounds %struct.USART_TypeDef, ptr %3, i32 0, i32 7, !dbg !2181
  %5 = load volatile i32, ptr %4, align 4, !dbg !2181
  %6 = and i32 %5, 128, !dbg !2182
  %7 = icmp eq i32 %6, 128, !dbg !2183
  %8 = zext i1 %7 to i64, !dbg !2184
  %9 = select i1 %7, i32 1, i32 0, !dbg !2184
  ret i32 %9, !dbg !2185
}

; Function Attrs: inlinehint nounwind optsize
define internal void @LL_USART_TransmitData8(ptr noundef %0, i8 noundef zeroext %1) #0 !dbg !2186 {
  %3 = alloca ptr, align 4
  %4 = alloca i8, align 1
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2190, metadata !DIExpression()), !dbg !2192
  store i8 %1, ptr %4, align 1
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2191, metadata !DIExpression()), !dbg !2193
  %5 = load i8, ptr %4, align 1, !dbg !2194
  %6 = zext i8 %5 to i16, !dbg !2194
  %7 = load ptr, ptr %3, align 4, !dbg !2195
  %8 = getelementptr inbounds %struct.USART_TypeDef, ptr %7, i32 0, i32 11, !dbg !2196
  store volatile i16 %6, ptr %8, align 4, !dbg !2197
  ret void, !dbg !2198
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @LL_USART_IsActiveFlag_PE(ptr noundef %0) #0 !dbg !2199 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2201, metadata !DIExpression()), !dbg !2202
  %3 = load ptr, ptr %2, align 4, !dbg !2203
  %4 = getelementptr inbounds %struct.USART_TypeDef, ptr %3, i32 0, i32 7, !dbg !2204
  %5 = load volatile i32, ptr %4, align 4, !dbg !2204
  %6 = and i32 %5, 1, !dbg !2205
  %7 = icmp eq i32 %6, 1, !dbg !2206
  %8 = zext i1 %7 to i64, !dbg !2207
  %9 = select i1 %7, i32 1, i32 0, !dbg !2207
  ret i32 %9, !dbg !2208
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @LL_USART_IsActiveFlag_FE(ptr noundef %0) #0 !dbg !2209 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2211, metadata !DIExpression()), !dbg !2212
  %3 = load ptr, ptr %2, align 4, !dbg !2213
  %4 = getelementptr inbounds %struct.USART_TypeDef, ptr %3, i32 0, i32 7, !dbg !2214
  %5 = load volatile i32, ptr %4, align 4, !dbg !2214
  %6 = and i32 %5, 2, !dbg !2215
  %7 = icmp eq i32 %6, 2, !dbg !2216
  %8 = zext i1 %7 to i64, !dbg !2217
  %9 = select i1 %7, i32 1, i32 0, !dbg !2217
  ret i32 %9, !dbg !2218
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @LL_USART_IsActiveFlag_NE(ptr noundef %0) #0 !dbg !2219 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2221, metadata !DIExpression()), !dbg !2222
  %3 = load ptr, ptr %2, align 4, !dbg !2223
  %4 = getelementptr inbounds %struct.USART_TypeDef, ptr %3, i32 0, i32 7, !dbg !2224
  %5 = load volatile i32, ptr %4, align 4, !dbg !2224
  %6 = and i32 %5, 4, !dbg !2225
  %7 = icmp eq i32 %6, 4, !dbg !2226
  %8 = zext i1 %7 to i64, !dbg !2227
  %9 = select i1 %7, i32 1, i32 0, !dbg !2227
  ret i32 %9, !dbg !2228
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @LL_USART_IsActiveFlag_LBD(ptr noundef %0) #0 !dbg !2229 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2231, metadata !DIExpression()), !dbg !2232
  %3 = load ptr, ptr %2, align 4, !dbg !2233
  %4 = getelementptr inbounds %struct.USART_TypeDef, ptr %3, i32 0, i32 7, !dbg !2234
  %5 = load volatile i32, ptr %4, align 4, !dbg !2234
  %6 = and i32 %5, 256, !dbg !2235
  %7 = icmp eq i32 %6, 256, !dbg !2236
  %8 = zext i1 %7 to i64, !dbg !2237
  %9 = select i1 %7, i32 1, i32 0, !dbg !2237
  ret i32 %9, !dbg !2238
}

; Function Attrs: inlinehint nounwind optsize
define internal void @LL_USART_ClearFlag_LBD(ptr noundef %0) #0 !dbg !2239 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2241, metadata !DIExpression()), !dbg !2242
  %3 = load ptr, ptr %2, align 4, !dbg !2243
  %4 = getelementptr inbounds %struct.USART_TypeDef, ptr %3, i32 0, i32 8, !dbg !2244
  store volatile i32 256, ptr %4, align 4, !dbg !2245
  ret void, !dbg !2246
}

; Function Attrs: inlinehint nounwind optsize
define internal void @LL_USART_ClearFlag_PE(ptr noundef %0) #0 !dbg !2247 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2249, metadata !DIExpression()), !dbg !2250
  %3 = load ptr, ptr %2, align 4, !dbg !2251
  %4 = getelementptr inbounds %struct.USART_TypeDef, ptr %3, i32 0, i32 8, !dbg !2252
  store volatile i32 1, ptr %4, align 4, !dbg !2253
  ret void, !dbg !2254
}

; Function Attrs: inlinehint nounwind optsize
define internal void @LL_USART_ClearFlag_FE(ptr noundef %0) #0 !dbg !2255 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2257, metadata !DIExpression()), !dbg !2258
  %3 = load ptr, ptr %2, align 4, !dbg !2259
  %4 = getelementptr inbounds %struct.USART_TypeDef, ptr %3, i32 0, i32 8, !dbg !2260
  store volatile i32 2, ptr %4, align 4, !dbg !2261
  ret void, !dbg !2262
}

; Function Attrs: inlinehint nounwind optsize
define internal void @LL_USART_ClearFlag_NE(ptr noundef %0) #0 !dbg !2263 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2265, metadata !DIExpression()), !dbg !2266
  %3 = load ptr, ptr %2, align 4, !dbg !2267
  %4 = getelementptr inbounds %struct.USART_TypeDef, ptr %3, i32 0, i32 8, !dbg !2268
  store volatile i32 4, ptr %4, align 4, !dbg !2269
  ret void, !dbg !2270
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @uart_stm32_cfg2ll_parity(i8 noundef zeroext %0) #0 !dbg !2271 {
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  store i8 %0, ptr %3, align 1
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2275, metadata !DIExpression()), !dbg !2276
  %4 = load i8, ptr %3, align 1, !dbg !2277
  %5 = zext i8 %4 to i32, !dbg !2277
  switch i32 %5, label %9 [
    i32 1, label %6
    i32 2, label %7
    i32 0, label %8
  ], !dbg !2278

6:                                                ; preds = %1
  store i32 1536, ptr %2, align 4, !dbg !2279
  br label %10, !dbg !2279

7:                                                ; preds = %1
  store i32 1024, ptr %2, align 4, !dbg !2281
  br label %10, !dbg !2281

8:                                                ; preds = %1
  br label %9, !dbg !2282

9:                                                ; preds = %1, %8
  store i32 0, ptr %2, align 4, !dbg !2283
  br label %10, !dbg !2283

10:                                               ; preds = %9, %7, %6
  %11 = load i32, ptr %2, align 4, !dbg !2284
  ret i32 %11, !dbg !2284
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @uart_stm32_cfg2ll_stopbits(ptr noundef %0, i8 noundef zeroext %1) #0 !dbg !2285 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i8, align 1
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2289, metadata !DIExpression()), !dbg !2291
  store i8 %1, ptr %5, align 1
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2290, metadata !DIExpression()), !dbg !2292
  %6 = load i8, ptr %5, align 1, !dbg !2293
  %7 = zext i8 %6 to i32, !dbg !2293
  switch i32 %7, label %12 [
    i32 0, label %8
    i32 1, label %9
    i32 2, label %10
    i32 3, label %11
  ], !dbg !2294

8:                                                ; preds = %2
  store i32 4096, ptr %3, align 4, !dbg !2295
  br label %13, !dbg !2295

9:                                                ; preds = %2
  store i32 0, ptr %3, align 4, !dbg !2297
  br label %13, !dbg !2297

10:                                               ; preds = %2
  store i32 12288, ptr %3, align 4, !dbg !2298
  br label %13, !dbg !2298

11:                                               ; preds = %2
  br label %12, !dbg !2299

12:                                               ; preds = %2, %11
  store i32 8192, ptr %3, align 4, !dbg !2300
  br label %13, !dbg !2300

13:                                               ; preds = %12, %10, %9, %8
  %14 = load i32, ptr %3, align 4, !dbg !2301
  ret i32 %14, !dbg !2301
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @uart_stm32_cfg2ll_databits(i8 noundef zeroext %0, i8 noundef zeroext %1) #0 !dbg !2302 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  store i8 %0, ptr %4, align 1
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2306, metadata !DIExpression()), !dbg !2308
  store i8 %1, ptr %5, align 1
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2307, metadata !DIExpression()), !dbg !2309
  %6 = load i8, ptr %4, align 1, !dbg !2310
  %7 = zext i8 %6 to i32, !dbg !2310
  switch i32 %7, label %16 [
    i32 2, label %8
    i32 4, label %14
    i32 3, label %15
  ], !dbg !2311

8:                                                ; preds = %2
  %9 = load i8, ptr %5, align 1, !dbg !2312
  %10 = zext i8 %9 to i32, !dbg !2312
  %11 = icmp eq i32 %10, 0, !dbg !2315
  br i1 %11, label %12, label %13, !dbg !2316

12:                                               ; preds = %8
  store i32 268435456, ptr %3, align 4, !dbg !2317
  br label %22, !dbg !2317

13:                                               ; preds = %8
  store i32 0, ptr %3, align 4, !dbg !2319
  br label %22, !dbg !2319

14:                                               ; preds = %2
  store i32 4096, ptr %3, align 4, !dbg !2321
  br label %22, !dbg !2321

15:                                               ; preds = %2
  br label %16, !dbg !2322

16:                                               ; preds = %2, %15
  %17 = load i8, ptr %5, align 1, !dbg !2323
  %18 = zext i8 %17 to i32, !dbg !2323
  %19 = icmp eq i32 %18, 0, !dbg !2325
  br i1 %19, label %20, label %21, !dbg !2326

20:                                               ; preds = %16
  store i32 0, ptr %3, align 4, !dbg !2327
  br label %22, !dbg !2327

21:                                               ; preds = %16
  store i32 4096, ptr %3, align 4, !dbg !2329
  br label %22, !dbg !2329

22:                                               ; preds = %21, %20, %14, %13, %12
  %23 = load i32, ptr %3, align 4, !dbg !2331
  ret i32 %23, !dbg !2331
}

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i8 @uart_stm32_ll2cfg_stopbits(i32 noundef %0) #0 !dbg !2332 {
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2336, metadata !DIExpression()), !dbg !2337
  %4 = load i32, ptr %3, align 4, !dbg !2338
  switch i32 %4, label %9 [
    i32 4096, label %5
    i32 0, label %6
    i32 12288, label %7
    i32 8192, label %8
  ], !dbg !2339

5:                                                ; preds = %1
  store i8 0, ptr %2, align 1, !dbg !2340
  br label %10, !dbg !2340

6:                                                ; preds = %1
  store i8 1, ptr %2, align 1, !dbg !2342
  br label %10, !dbg !2342

7:                                                ; preds = %1
  store i8 2, ptr %2, align 1, !dbg !2343
  br label %10, !dbg !2343

8:                                                ; preds = %1
  br label %9, !dbg !2344

9:                                                ; preds = %1, %8
  store i8 3, ptr %2, align 1, !dbg !2345
  br label %10, !dbg !2345

10:                                               ; preds = %9, %7, %6, %5
  %11 = load i8, ptr %2, align 1, !dbg !2346
  ret i8 %11, !dbg !2346
}

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i8 @uart_stm32_ll2cfg_databits(i32 noundef %0, i32 noundef %1) #0 !dbg !2347 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2351, metadata !DIExpression()), !dbg !2353
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2352, metadata !DIExpression()), !dbg !2354
  %6 = load i32, ptr %4, align 4, !dbg !2355
  switch i32 %6, label %18 [
    i32 268435456, label %7
    i32 4096, label %12
    i32 0, label %17
  ], !dbg !2356

7:                                                ; preds = %2
  %8 = load i32, ptr %5, align 4, !dbg !2357
  %9 = icmp eq i32 %8, 0, !dbg !2360
  br i1 %9, label %10, label %11, !dbg !2361

10:                                               ; preds = %7
  store i8 2, ptr %3, align 1, !dbg !2362
  br label %23, !dbg !2362

11:                                               ; preds = %7
  store i8 1, ptr %3, align 1, !dbg !2364
  br label %23, !dbg !2364

12:                                               ; preds = %2
  %13 = load i32, ptr %5, align 4, !dbg !2366
  %14 = icmp eq i32 %13, 0, !dbg !2368
  br i1 %14, label %15, label %16, !dbg !2369

15:                                               ; preds = %12
  store i8 4, ptr %3, align 1, !dbg !2370
  br label %23, !dbg !2370

16:                                               ; preds = %12
  store i8 3, ptr %3, align 1, !dbg !2372
  br label %23, !dbg !2372

17:                                               ; preds = %2
  br label %18, !dbg !2374

18:                                               ; preds = %2, %17
  %19 = load i32, ptr %5, align 4, !dbg !2375
  %20 = icmp eq i32 %19, 0, !dbg !2377
  br i1 %20, label %21, label %22, !dbg !2378

21:                                               ; preds = %18
  store i8 3, ptr %3, align 1, !dbg !2379
  br label %23, !dbg !2379

22:                                               ; preds = %18
  store i8 2, ptr %3, align 1, !dbg !2381
  br label %23, !dbg !2381

23:                                               ; preds = %22, %21, %16, %15, %11, %10
  %24 = load i8, ptr %3, align 1, !dbg !2383
  ret i8 %24, !dbg !2383
}

; Function Attrs: inlinehint nounwind optsize
define internal void @LL_USART_Disable(ptr noundef %0) #0 !dbg !2384 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2386, metadata !DIExpression()), !dbg !2387
  %3 = load ptr, ptr %2, align 4, !dbg !2388
  %4 = getelementptr inbounds %struct.USART_TypeDef, ptr %3, i32 0, i32 0, !dbg !2389
  %5 = load volatile i32, ptr %4, align 4, !dbg !2390
  %6 = and i32 %5, -2, !dbg !2390
  store volatile i32 %6, ptr %4, align 4, !dbg !2390
  ret void, !dbg !2391
}

; Function Attrs: nounwind optsize
define internal void @uart_stm32_parameters_set(ptr noundef %0, ptr noundef %1) #1 !dbg !2392 {
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
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2396, metadata !DIExpression()), !dbg !2406
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2397, metadata !DIExpression()), !dbg !2407
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #7, !dbg !2408
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2398, metadata !DIExpression()), !dbg !2409
  %13 = load ptr, ptr %3, align 4, !dbg !2410
  %14 = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 1, !dbg !2411
  %15 = load ptr, ptr %14, align 4, !dbg !2411
  store ptr %15, ptr %5, align 4, !dbg !2409
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #7, !dbg !2412
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2399, metadata !DIExpression()), !dbg !2413
  %16 = load ptr, ptr %3, align 4, !dbg !2414
  %17 = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 4, !dbg !2415
  %18 = load ptr, ptr %17, align 4, !dbg !2415
  store ptr %18, ptr %6, align 4, !dbg !2413
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #7, !dbg !2416
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2400, metadata !DIExpression()), !dbg !2417
  %19 = load ptr, ptr %6, align 4, !dbg !2418
  %20 = getelementptr inbounds %struct.uart_stm32_data, ptr %19, i32 0, i32 1, !dbg !2419
  %21 = load ptr, ptr %20, align 4, !dbg !2419
  store ptr %21, ptr %7, align 4, !dbg !2417
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #7, !dbg !2420
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2401, metadata !DIExpression()), !dbg !2421
  %22 = load ptr, ptr %4, align 4, !dbg !2422
  %23 = getelementptr inbounds %struct.uart_config, ptr %22, i32 0, i32 1, !dbg !2423
  %24 = load i8, ptr %23, align 4, !dbg !2423
  %25 = call i32 @uart_stm32_cfg2ll_parity(i8 noundef zeroext %24) #6, !dbg !2424
  store i32 %25, ptr %8, align 4, !dbg !2421
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #7, !dbg !2425
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2402, metadata !DIExpression()), !dbg !2426
  %26 = load ptr, ptr %5, align 4, !dbg !2427
  %27 = load ptr, ptr %4, align 4, !dbg !2428
  %28 = getelementptr inbounds %struct.uart_config, ptr %27, i32 0, i32 2, !dbg !2429
  %29 = load i8, ptr %28, align 1, !dbg !2429
  %30 = call i32 @uart_stm32_cfg2ll_stopbits(ptr noundef %26, i8 noundef zeroext %29) #6, !dbg !2430
  store i32 %30, ptr %9, align 4, !dbg !2426
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #7, !dbg !2431
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2403, metadata !DIExpression()), !dbg !2432
  %31 = load ptr, ptr %4, align 4, !dbg !2433
  %32 = getelementptr inbounds %struct.uart_config, ptr %31, i32 0, i32 3, !dbg !2434
  %33 = load i8, ptr %32, align 2, !dbg !2434
  %34 = load ptr, ptr %4, align 4, !dbg !2435
  %35 = getelementptr inbounds %struct.uart_config, ptr %34, i32 0, i32 1, !dbg !2436
  %36 = load i8, ptr %35, align 4, !dbg !2436
  %37 = call i32 @uart_stm32_cfg2ll_databits(i8 noundef zeroext %33, i8 noundef zeroext %36) #6, !dbg !2437
  store i32 %37, ptr %10, align 4, !dbg !2432
  call void @llvm.lifetime.start.p0(i64 4, ptr %11) #7, !dbg !2438
  call void @llvm.dbg.declare(metadata ptr %11, metadata !2404, metadata !DIExpression()), !dbg !2439
  %38 = load ptr, ptr %4, align 4, !dbg !2440
  %39 = getelementptr inbounds %struct.uart_config, ptr %38, i32 0, i32 4, !dbg !2441
  %40 = load i8, ptr %39, align 1, !dbg !2441
  %41 = call i32 @uart_stm32_cfg2ll_hwctrl(i8 noundef zeroext %40) #6, !dbg !2442
  store i32 %41, ptr %11, align 4, !dbg !2439
  call void @llvm.lifetime.start.p0(i64 1, ptr %12) #7, !dbg !2443
  call void @llvm.dbg.declare(metadata ptr %12, metadata !2405, metadata !DIExpression()), !dbg !2444
  %42 = load ptr, ptr %4, align 4, !dbg !2445
  %43 = getelementptr inbounds %struct.uart_config, ptr %42, i32 0, i32 4, !dbg !2446
  %44 = load i8, ptr %43, align 1, !dbg !2446
  %45 = zext i8 %44 to i32, !dbg !2445
  %46 = icmp eq i32 %45, 3, !dbg !2447
  %47 = zext i1 %46 to i8, !dbg !2444
  store i8 %47, ptr %12, align 1, !dbg !2444
  %48 = load ptr, ptr %4, align 4, !dbg !2448
  %49 = load ptr, ptr %7, align 4, !dbg !2450
  %50 = icmp eq ptr %48, %49, !dbg !2451
  br i1 %50, label %51, label %64, !dbg !2452

51:                                               ; preds = %2
  %52 = load ptr, ptr %5, align 4, !dbg !2453
  %53 = getelementptr inbounds %struct.uart_stm32_config, ptr %52, i32 0, i32 0, !dbg !2455
  %54 = load ptr, ptr %53, align 4, !dbg !2455
  %55 = load i32, ptr %10, align 4, !dbg !2456
  %56 = load i32, ptr %8, align 4, !dbg !2457
  %57 = load i32, ptr %9, align 4, !dbg !2458
  call void @LL_USART_ConfigCharacter(ptr noundef %54, i32 noundef %55, i32 noundef %56, i32 noundef %57) #6, !dbg !2459
  %58 = load ptr, ptr %3, align 4, !dbg !2460
  %59 = load i32, ptr %11, align 4, !dbg !2461
  call void @uart_stm32_set_hwctrl(ptr noundef %58, i32 noundef %59) #6, !dbg !2462
  %60 = load ptr, ptr %3, align 4, !dbg !2463
  %61 = load ptr, ptr %4, align 4, !dbg !2464
  %62 = getelementptr inbounds %struct.uart_config, ptr %61, i32 0, i32 0, !dbg !2465
  %63 = load i32, ptr %62, align 4, !dbg !2465
  call void @uart_stm32_set_baudrate(ptr noundef %60, i32 noundef %63) #6, !dbg !2466
  br label %127, !dbg !2467

64:                                               ; preds = %2
  %65 = load i32, ptr %8, align 4, !dbg !2468
  %66 = load ptr, ptr %3, align 4, !dbg !2471
  %67 = call i32 @uart_stm32_get_parity(ptr noundef %66) #6, !dbg !2472
  %68 = icmp ne i32 %65, %67, !dbg !2473
  br i1 %68, label %69, label %72, !dbg !2474

69:                                               ; preds = %64
  %70 = load ptr, ptr %3, align 4, !dbg !2475
  %71 = load i32, ptr %8, align 4, !dbg !2477
  call void @uart_stm32_set_parity(ptr noundef %70, i32 noundef %71) #6, !dbg !2478
  br label %72, !dbg !2479

72:                                               ; preds = %69, %64
  %73 = load i32, ptr %9, align 4, !dbg !2480
  %74 = load ptr, ptr %3, align 4, !dbg !2482
  %75 = call i32 @uart_stm32_get_stopbits(ptr noundef %74) #6, !dbg !2483
  %76 = icmp ne i32 %73, %75, !dbg !2484
  br i1 %76, label %77, label %80, !dbg !2485

77:                                               ; preds = %72
  %78 = load ptr, ptr %3, align 4, !dbg !2486
  %79 = load i32, ptr %9, align 4, !dbg !2488
  call void @uart_stm32_set_stopbits(ptr noundef %78, i32 noundef %79) #6, !dbg !2489
  br label %80, !dbg !2490

80:                                               ; preds = %77, %72
  %81 = load i32, ptr %10, align 4, !dbg !2491
  %82 = load ptr, ptr %3, align 4, !dbg !2493
  %83 = call i32 @uart_stm32_get_databits(ptr noundef %82) #6, !dbg !2494
  %84 = icmp ne i32 %81, %83, !dbg !2495
  br i1 %84, label %85, label %88, !dbg !2496

85:                                               ; preds = %80
  %86 = load ptr, ptr %3, align 4, !dbg !2497
  %87 = load i32, ptr %10, align 4, !dbg !2499
  call void @uart_stm32_set_databits(ptr noundef %86, i32 noundef %87) #6, !dbg !2500
  br label %88, !dbg !2501

88:                                               ; preds = %85, %80
  %89 = load i32, ptr %11, align 4, !dbg !2502
  %90 = load ptr, ptr %3, align 4, !dbg !2504
  %91 = call i32 @uart_stm32_get_hwctrl(ptr noundef %90) #6, !dbg !2505
  %92 = icmp ne i32 %89, %91, !dbg !2506
  br i1 %92, label %93, label %96, !dbg !2507

93:                                               ; preds = %88
  %94 = load ptr, ptr %3, align 4, !dbg !2508
  %95 = load i32, ptr %11, align 4, !dbg !2510
  call void @uart_stm32_set_hwctrl(ptr noundef %94, i32 noundef %95) #6, !dbg !2511
  br label %96, !dbg !2512

96:                                               ; preds = %93, %88
  %97 = load i8, ptr %12, align 1, !dbg !2513, !range !2515, !noundef !544
  %98 = trunc i8 %97 to i1, !dbg !2513
  %99 = zext i1 %98 to i32, !dbg !2513
  %100 = load ptr, ptr %3, align 4, !dbg !2516
  %101 = call zeroext i1 @uart_stm32_get_driver_enable(ptr noundef %100) #6, !dbg !2517
  %102 = zext i1 %101 to i32, !dbg !2517
  %103 = icmp ne i32 %99, %102, !dbg !2518
  br i1 %103, label %104, label %108, !dbg !2519

104:                                              ; preds = %96
  %105 = load ptr, ptr %3, align 4, !dbg !2520
  %106 = load i8, ptr %12, align 1, !dbg !2522, !range !2515, !noundef !544
  %107 = trunc i8 %106 to i1, !dbg !2522
  call void @uart_stm32_set_driver_enable(ptr noundef %105, i1 noundef zeroext %107) #6, !dbg !2523
  br label %108, !dbg !2524

108:                                              ; preds = %104, %96
  %109 = load ptr, ptr %4, align 4, !dbg !2525
  %110 = getelementptr inbounds %struct.uart_config, ptr %109, i32 0, i32 0, !dbg !2527
  %111 = load i32, ptr %110, align 4, !dbg !2527
  %112 = load ptr, ptr %7, align 4, !dbg !2528
  %113 = getelementptr inbounds %struct.uart_config, ptr %112, i32 0, i32 0, !dbg !2529
  %114 = load i32, ptr %113, align 4, !dbg !2529
  %115 = icmp ne i32 %111, %114, !dbg !2530
  br i1 %115, label %116, label %126, !dbg !2531

116:                                              ; preds = %108
  %117 = load ptr, ptr %3, align 4, !dbg !2532
  %118 = load ptr, ptr %4, align 4, !dbg !2534
  %119 = getelementptr inbounds %struct.uart_config, ptr %118, i32 0, i32 0, !dbg !2535
  %120 = load i32, ptr %119, align 4, !dbg !2535
  call void @uart_stm32_set_baudrate(ptr noundef %117, i32 noundef %120) #6, !dbg !2536
  %121 = load ptr, ptr %4, align 4, !dbg !2537
  %122 = getelementptr inbounds %struct.uart_config, ptr %121, i32 0, i32 0, !dbg !2538
  %123 = load i32, ptr %122, align 4, !dbg !2538
  %124 = load ptr, ptr %7, align 4, !dbg !2539
  %125 = getelementptr inbounds %struct.uart_config, ptr %124, i32 0, i32 0, !dbg !2540
  store i32 %123, ptr %125, align 4, !dbg !2541
  br label %126, !dbg !2542

126:                                              ; preds = %116, %108
  br label %127

127:                                              ; preds = %126, %51
  call void @llvm.lifetime.end.p0(i64 1, ptr %12) #7, !dbg !2543
  call void @llvm.lifetime.end.p0(i64 4, ptr %11) #7, !dbg !2543
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #7, !dbg !2543
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #7, !dbg !2543
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #7, !dbg !2543
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #7, !dbg !2543
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #7, !dbg !2543
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #7, !dbg !2543
  ret void, !dbg !2543
}

; Function Attrs: inlinehint nounwind optsize
define internal void @LL_USART_Enable(ptr noundef %0) #0 !dbg !2544 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2546, metadata !DIExpression()), !dbg !2547
  %3 = load ptr, ptr %2, align 4, !dbg !2548
  %4 = getelementptr inbounds %struct.USART_TypeDef, ptr %3, i32 0, i32 0, !dbg !2549
  %5 = load volatile i32, ptr %4, align 4, !dbg !2550
  %6 = or i32 %5, 1, !dbg !2550
  store volatile i32 %6, ptr %4, align 4, !dbg !2550
  ret void, !dbg !2551
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: inlinehint nounwind optsize
define internal i32 @uart_stm32_cfg2ll_hwctrl(i8 noundef zeroext %0) #0 !dbg !2552 {
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  store i8 %0, ptr %3, align 1
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2556, metadata !DIExpression()), !dbg !2557
  %4 = load i8, ptr %3, align 1, !dbg !2558
  %5 = zext i8 %4 to i32, !dbg !2558
  %6 = icmp eq i32 %5, 1, !dbg !2560
  br i1 %6, label %7, label %8, !dbg !2561

7:                                                ; preds = %1
  store i32 768, ptr %2, align 4, !dbg !2562
  br label %15, !dbg !2562

8:                                                ; preds = %1
  %9 = load i8, ptr %3, align 1, !dbg !2564
  %10 = zext i8 %9 to i32, !dbg !2564
  %11 = icmp eq i32 %10, 3, !dbg !2566
  br i1 %11, label %12, label %13, !dbg !2567

12:                                               ; preds = %8
  store i32 0, ptr %2, align 4, !dbg !2568
  br label %15, !dbg !2568

13:                                               ; preds = %8
  br label %14

14:                                               ; preds = %13
  store i32 0, ptr %2, align 4, !dbg !2570
  br label %15, !dbg !2570

15:                                               ; preds = %14, %12, %7
  %16 = load i32, ptr %2, align 4, !dbg !2571
  ret i32 %16, !dbg !2571
}

; Function Attrs: inlinehint nounwind optsize
define internal void @LL_USART_ConfigCharacter(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 !dbg !2572 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2576, metadata !DIExpression()), !dbg !2580
  store i32 %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2577, metadata !DIExpression()), !dbg !2581
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2578, metadata !DIExpression()), !dbg !2582
  store i32 %3, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2579, metadata !DIExpression()), !dbg !2583
  %9 = load ptr, ptr %5, align 4, !dbg !2584
  %10 = getelementptr inbounds %struct.USART_TypeDef, ptr %9, i32 0, i32 0, !dbg !2585
  %11 = load volatile i32, ptr %10, align 4, !dbg !2585
  %12 = and i32 %11, -268441089, !dbg !2586
  %13 = load i32, ptr %7, align 4, !dbg !2587
  %14 = load i32, ptr %6, align 4, !dbg !2588
  %15 = or i32 %13, %14, !dbg !2589
  %16 = or i32 %12, %15, !dbg !2590
  %17 = load ptr, ptr %5, align 4, !dbg !2591
  %18 = getelementptr inbounds %struct.USART_TypeDef, ptr %17, i32 0, i32 0, !dbg !2592
  store volatile i32 %16, ptr %18, align 4, !dbg !2593
  %19 = load ptr, ptr %5, align 4, !dbg !2594
  %20 = getelementptr inbounds %struct.USART_TypeDef, ptr %19, i32 0, i32 1, !dbg !2595
  %21 = load volatile i32, ptr %20, align 4, !dbg !2595
  %22 = and i32 %21, -12289, !dbg !2596
  %23 = load i32, ptr %8, align 4, !dbg !2597
  %24 = or i32 %22, %23, !dbg !2598
  %25 = load ptr, ptr %5, align 4, !dbg !2599
  %26 = getelementptr inbounds %struct.USART_TypeDef, ptr %25, i32 0, i32 1, !dbg !2600
  store volatile i32 %24, ptr %26, align 4, !dbg !2601
  ret void, !dbg !2602
}

; Function Attrs: inlinehint nounwind optsize
define internal void @uart_stm32_set_hwctrl(ptr noundef %0, i32 noundef %1) #0 !dbg !2603 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2607, metadata !DIExpression()), !dbg !2610
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2608, metadata !DIExpression()), !dbg !2611
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #7, !dbg !2612
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2609, metadata !DIExpression()), !dbg !2613
  %6 = load ptr, ptr %3, align 4, !dbg !2614
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 1, !dbg !2615
  %8 = load ptr, ptr %7, align 4, !dbg !2615
  store ptr %8, ptr %5, align 4, !dbg !2613
  %9 = load ptr, ptr %5, align 4, !dbg !2616
  %10 = getelementptr inbounds %struct.uart_stm32_config, ptr %9, i32 0, i32 0, !dbg !2617
  %11 = load ptr, ptr %10, align 4, !dbg !2617
  %12 = load i32, ptr %4, align 4, !dbg !2618
  call void @LL_USART_SetHWFlowCtrl(ptr noundef %11, i32 noundef %12) #6, !dbg !2619
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #7, !dbg !2620
  ret void, !dbg !2620
}

; Function Attrs: inlinehint nounwind optsize
define internal void @uart_stm32_set_baudrate(ptr noundef %0, i32 noundef %1) #0 !dbg !2621 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 4
  %11 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2623, metadata !DIExpression()), !dbg !2628
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2624, metadata !DIExpression()), !dbg !2629
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #7, !dbg !2630
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2625, metadata !DIExpression()), !dbg !2631
  %12 = load ptr, ptr %3, align 4, !dbg !2632
  %13 = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 1, !dbg !2633
  %14 = load ptr, ptr %13, align 4, !dbg !2633
  store ptr %14, ptr %5, align 4, !dbg !2631
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #7, !dbg !2634
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2626, metadata !DIExpression()), !dbg !2635
  %15 = load ptr, ptr %3, align 4, !dbg !2636
  %16 = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 4, !dbg !2637
  %17 = load ptr, ptr %16, align 4, !dbg !2637
  store ptr %17, ptr %6, align 4, !dbg !2635
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #7, !dbg !2638
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2627, metadata !DIExpression()), !dbg !2639
  %18 = load ptr, ptr %6, align 4, !dbg !2640
  %19 = getelementptr inbounds %struct.uart_stm32_data, ptr %18, i32 0, i32 0, !dbg !2644
  %20 = load ptr, ptr %19, align 4, !dbg !2644
  %21 = load ptr, ptr %5, align 4, !dbg !2645
  %22 = getelementptr inbounds %struct.uart_stm32_config, ptr %21, i32 0, i32 2, !dbg !2646
  %23 = load ptr, ptr %22, align 4, !dbg !2646
  %24 = getelementptr inbounds %struct.stm32_pclken, ptr %23, i32 0, !dbg !2645
  %25 = call i32 @clock_control_get_rate(ptr noundef %20, ptr noundef %24, ptr noundef %7) #6, !dbg !2647
  %26 = icmp slt i32 %25, 0, !dbg !2648
  br i1 %26, label %27, label %31, !dbg !2649

27:                                               ; preds = %2
  br label %28, !dbg !2650

28:                                               ; preds = %27
  br label %30, !dbg !2652

29:                                               ; No predecessors!
  br label %30, !dbg !2656

30:                                               ; preds = %29, %28
  store i32 1, ptr %11, align 4
  br label %40, !dbg !2657

31:                                               ; preds = %2
  %32 = load ptr, ptr %5, align 4, !dbg !2658
  %33 = getelementptr inbounds %struct.uart_stm32_config, ptr %32, i32 0, i32 0, !dbg !2659
  %34 = load ptr, ptr %33, align 4, !dbg !2659
  call void @LL_USART_SetOverSampling(ptr noundef %34, i32 noundef 0) #6, !dbg !2660
  %35 = load ptr, ptr %5, align 4, !dbg !2661
  %36 = getelementptr inbounds %struct.uart_stm32_config, ptr %35, i32 0, i32 0, !dbg !2662
  %37 = load ptr, ptr %36, align 4, !dbg !2662
  %38 = load i32, ptr %7, align 4, !dbg !2663
  %39 = load i32, ptr %4, align 4, !dbg !2664
  call void @LL_USART_SetBaudRate(ptr noundef %37, i32 noundef %38, i32 noundef 0, i32 noundef %39) #6, !dbg !2665
  store i32 0, ptr %11, align 4, !dbg !2666
  br label %40, !dbg !2666

40:                                               ; preds = %31, %30
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #7, !dbg !2666
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #7, !dbg !2666
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #7, !dbg !2666
  %41 = load i32, ptr %11, align 4
  switch i32 %41, label %43 [
    i32 0, label %42
    i32 1, label %42
  ]

42:                                               ; preds = %40, %40
  ret void, !dbg !2666

43:                                               ; preds = %40
  unreachable
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @uart_stm32_get_parity(ptr noundef %0) #0 !dbg !2667 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2671, metadata !DIExpression()), !dbg !2673
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #7, !dbg !2674
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2672, metadata !DIExpression()), !dbg !2675
  %4 = load ptr, ptr %2, align 4, !dbg !2676
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 1, !dbg !2677
  %6 = load ptr, ptr %5, align 4, !dbg !2677
  store ptr %6, ptr %3, align 4, !dbg !2675
  %7 = load ptr, ptr %3, align 4, !dbg !2678
  %8 = getelementptr inbounds %struct.uart_stm32_config, ptr %7, i32 0, i32 0, !dbg !2679
  %9 = load ptr, ptr %8, align 4, !dbg !2679
  %10 = call i32 @LL_USART_GetParity(ptr noundef %9) #6, !dbg !2680
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #7, !dbg !2681
  ret i32 %10, !dbg !2682
}

; Function Attrs: inlinehint nounwind optsize
define internal void @uart_stm32_set_parity(ptr noundef %0, i32 noundef %1) #0 !dbg !2683 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2685, metadata !DIExpression()), !dbg !2688
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2686, metadata !DIExpression()), !dbg !2689
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #7, !dbg !2690
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2687, metadata !DIExpression()), !dbg !2691
  %6 = load ptr, ptr %3, align 4, !dbg !2692
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 1, !dbg !2693
  %8 = load ptr, ptr %7, align 4, !dbg !2693
  store ptr %8, ptr %5, align 4, !dbg !2691
  %9 = load ptr, ptr %5, align 4, !dbg !2694
  %10 = getelementptr inbounds %struct.uart_stm32_config, ptr %9, i32 0, i32 0, !dbg !2695
  %11 = load ptr, ptr %10, align 4, !dbg !2695
  %12 = load i32, ptr %4, align 4, !dbg !2696
  call void @LL_USART_SetParity(ptr noundef %11, i32 noundef %12) #6, !dbg !2697
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #7, !dbg !2698
  ret void, !dbg !2698
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @uart_stm32_get_stopbits(ptr noundef %0) #0 !dbg !2699 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2701, metadata !DIExpression()), !dbg !2703
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #7, !dbg !2704
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2702, metadata !DIExpression()), !dbg !2705
  %4 = load ptr, ptr %2, align 4, !dbg !2706
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 1, !dbg !2707
  %6 = load ptr, ptr %5, align 4, !dbg !2707
  store ptr %6, ptr %3, align 4, !dbg !2705
  %7 = load ptr, ptr %3, align 4, !dbg !2708
  %8 = getelementptr inbounds %struct.uart_stm32_config, ptr %7, i32 0, i32 0, !dbg !2709
  %9 = load ptr, ptr %8, align 4, !dbg !2709
  %10 = call i32 @LL_USART_GetStopBitsLength(ptr noundef %9) #6, !dbg !2710
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #7, !dbg !2711
  ret i32 %10, !dbg !2712
}

; Function Attrs: inlinehint nounwind optsize
define internal void @uart_stm32_set_stopbits(ptr noundef %0, i32 noundef %1) #0 !dbg !2713 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2715, metadata !DIExpression()), !dbg !2718
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2716, metadata !DIExpression()), !dbg !2719
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #7, !dbg !2720
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2717, metadata !DIExpression()), !dbg !2721
  %6 = load ptr, ptr %3, align 4, !dbg !2722
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 1, !dbg !2723
  %8 = load ptr, ptr %7, align 4, !dbg !2723
  store ptr %8, ptr %5, align 4, !dbg !2721
  %9 = load ptr, ptr %5, align 4, !dbg !2724
  %10 = getelementptr inbounds %struct.uart_stm32_config, ptr %9, i32 0, i32 0, !dbg !2725
  %11 = load ptr, ptr %10, align 4, !dbg !2725
  %12 = load i32, ptr %4, align 4, !dbg !2726
  call void @LL_USART_SetStopBitsLength(ptr noundef %11, i32 noundef %12) #6, !dbg !2727
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #7, !dbg !2728
  ret void, !dbg !2728
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @uart_stm32_get_databits(ptr noundef %0) #0 !dbg !2729 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2731, metadata !DIExpression()), !dbg !2733
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #7, !dbg !2734
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2732, metadata !DIExpression()), !dbg !2735
  %4 = load ptr, ptr %2, align 4, !dbg !2736
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 1, !dbg !2737
  %6 = load ptr, ptr %5, align 4, !dbg !2737
  store ptr %6, ptr %3, align 4, !dbg !2735
  %7 = load ptr, ptr %3, align 4, !dbg !2738
  %8 = getelementptr inbounds %struct.uart_stm32_config, ptr %7, i32 0, i32 0, !dbg !2739
  %9 = load ptr, ptr %8, align 4, !dbg !2739
  %10 = call i32 @LL_USART_GetDataWidth(ptr noundef %9) #6, !dbg !2740
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #7, !dbg !2741
  ret i32 %10, !dbg !2742
}

; Function Attrs: inlinehint nounwind optsize
define internal void @uart_stm32_set_databits(ptr noundef %0, i32 noundef %1) #0 !dbg !2743 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2745, metadata !DIExpression()), !dbg !2748
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2746, metadata !DIExpression()), !dbg !2749
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #7, !dbg !2750
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2747, metadata !DIExpression()), !dbg !2751
  %6 = load ptr, ptr %3, align 4, !dbg !2752
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 1, !dbg !2753
  %8 = load ptr, ptr %7, align 4, !dbg !2753
  store ptr %8, ptr %5, align 4, !dbg !2751
  %9 = load ptr, ptr %5, align 4, !dbg !2754
  %10 = getelementptr inbounds %struct.uart_stm32_config, ptr %9, i32 0, i32 0, !dbg !2755
  %11 = load ptr, ptr %10, align 4, !dbg !2755
  %12 = load i32, ptr %4, align 4, !dbg !2756
  call void @LL_USART_SetDataWidth(ptr noundef %11, i32 noundef %12) #6, !dbg !2757
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #7, !dbg !2758
  ret void, !dbg !2758
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @uart_stm32_get_hwctrl(ptr noundef %0) #0 !dbg !2759 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2761, metadata !DIExpression()), !dbg !2763
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #7, !dbg !2764
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2762, metadata !DIExpression()), !dbg !2765
  %4 = load ptr, ptr %2, align 4, !dbg !2766
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 1, !dbg !2767
  %6 = load ptr, ptr %5, align 4, !dbg !2767
  store ptr %6, ptr %3, align 4, !dbg !2765
  %7 = load ptr, ptr %3, align 4, !dbg !2768
  %8 = getelementptr inbounds %struct.uart_stm32_config, ptr %7, i32 0, i32 0, !dbg !2769
  %9 = load ptr, ptr %8, align 4, !dbg !2769
  %10 = call i32 @LL_USART_GetHWFlowCtrl(ptr noundef %9) #6, !dbg !2770
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #7, !dbg !2771
  ret i32 %10, !dbg !2772
}

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @uart_stm32_get_driver_enable(ptr noundef %0) #0 !dbg !2773 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2775, metadata !DIExpression()), !dbg !2777
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #7, !dbg !2778
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2776, metadata !DIExpression()), !dbg !2779
  %4 = load ptr, ptr %2, align 4, !dbg !2780
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 1, !dbg !2781
  %6 = load ptr, ptr %5, align 4, !dbg !2781
  store ptr %6, ptr %3, align 4, !dbg !2779
  %7 = load ptr, ptr %3, align 4, !dbg !2782
  %8 = getelementptr inbounds %struct.uart_stm32_config, ptr %7, i32 0, i32 0, !dbg !2783
  %9 = load ptr, ptr %8, align 4, !dbg !2783
  %10 = call i32 @LL_USART_IsEnabledDEMode(ptr noundef %9) #6, !dbg !2784
  %11 = icmp ne i32 %10, 0, !dbg !2784
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #7, !dbg !2785
  ret i1 %11, !dbg !2786
}

; Function Attrs: inlinehint nounwind optsize
define internal void @uart_stm32_set_driver_enable(ptr noundef %0, i1 noundef zeroext %1) #0 !dbg !2787 {
  %3 = alloca ptr, align 4
  %4 = alloca i8, align 1
  %5 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2791, metadata !DIExpression()), !dbg !2794
  %6 = zext i1 %1 to i8
  store i8 %6, ptr %4, align 1
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2792, metadata !DIExpression()), !dbg !2795
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #7, !dbg !2796
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2793, metadata !DIExpression()), !dbg !2797
  %7 = load ptr, ptr %3, align 4, !dbg !2798
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 1, !dbg !2799
  %9 = load ptr, ptr %8, align 4, !dbg !2799
  store ptr %9, ptr %5, align 4, !dbg !2797
  %10 = load i8, ptr %4, align 1, !dbg !2800, !range !2515, !noundef !544
  %11 = trunc i8 %10 to i1, !dbg !2800
  br i1 %11, label %12, label %16, !dbg !2802

12:                                               ; preds = %2
  %13 = load ptr, ptr %5, align 4, !dbg !2803
  %14 = getelementptr inbounds %struct.uart_stm32_config, ptr %13, i32 0, i32 0, !dbg !2805
  %15 = load ptr, ptr %14, align 4, !dbg !2805
  call void @LL_USART_EnableDEMode(ptr noundef %15) #6, !dbg !2806
  br label %20, !dbg !2807

16:                                               ; preds = %2
  %17 = load ptr, ptr %5, align 4, !dbg !2808
  %18 = getelementptr inbounds %struct.uart_stm32_config, ptr %17, i32 0, i32 0, !dbg !2810
  %19 = load ptr, ptr %18, align 4, !dbg !2810
  call void @LL_USART_DisableDEMode(ptr noundef %19) #6, !dbg !2811
  br label %20

20:                                               ; preds = %16, %12
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #7, !dbg !2812
  ret void, !dbg !2812
}

; Function Attrs: inlinehint nounwind optsize
define internal void @LL_USART_SetHWFlowCtrl(ptr noundef %0, i32 noundef %1) #0 !dbg !2813 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2817, metadata !DIExpression()), !dbg !2819
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2818, metadata !DIExpression()), !dbg !2820
  %5 = load ptr, ptr %3, align 4, !dbg !2821
  %6 = getelementptr inbounds %struct.USART_TypeDef, ptr %5, i32 0, i32 2, !dbg !2822
  %7 = load volatile i32, ptr %6, align 4, !dbg !2822
  %8 = and i32 %7, -769, !dbg !2823
  %9 = load i32, ptr %4, align 4, !dbg !2824
  %10 = or i32 %8, %9, !dbg !2825
  %11 = load ptr, ptr %3, align 4, !dbg !2826
  %12 = getelementptr inbounds %struct.USART_TypeDef, ptr %11, i32 0, i32 2, !dbg !2827
  store volatile i32 %10, ptr %12, align 4, !dbg !2828
  ret void, !dbg !2829
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @clock_control_get_rate(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !2830 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca i32, align 4
  store ptr %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2832, metadata !DIExpression()), !dbg !2836
  store ptr %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2833, metadata !DIExpression()), !dbg !2837
  store ptr %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2834, metadata !DIExpression()), !dbg !2838
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #7, !dbg !2839
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2835, metadata !DIExpression()), !dbg !2840
  %10 = load ptr, ptr %5, align 4, !dbg !2841
  %11 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 2, !dbg !2842
  %12 = load ptr, ptr %11, align 4, !dbg !2842
  store ptr %12, ptr %8, align 4, !dbg !2840
  %13 = load ptr, ptr %8, align 4, !dbg !2843
  %14 = getelementptr inbounds %struct.clock_control_driver_api, ptr %13, i32 0, i32 3, !dbg !2845
  %15 = load ptr, ptr %14, align 4, !dbg !2845
  %16 = icmp eq ptr %15, null, !dbg !2846
  br i1 %16, label %17, label %18, !dbg !2847

17:                                               ; preds = %3
  store i32 -88, ptr %4, align 4, !dbg !2848
  store i32 1, ptr %9, align 4
  br label %26, !dbg !2848

18:                                               ; preds = %3
  %19 = load ptr, ptr %8, align 4, !dbg !2850
  %20 = getelementptr inbounds %struct.clock_control_driver_api, ptr %19, i32 0, i32 3, !dbg !2851
  %21 = load ptr, ptr %20, align 4, !dbg !2851
  %22 = load ptr, ptr %5, align 4, !dbg !2852
  %23 = load ptr, ptr %6, align 4, !dbg !2853
  %24 = load ptr, ptr %7, align 4, !dbg !2854
  %25 = call i32 %21(ptr noundef %22, ptr noundef %23, ptr noundef %24) #6, !dbg !2850
  store i32 %25, ptr %4, align 4, !dbg !2855
  store i32 1, ptr %9, align 4
  br label %26, !dbg !2855

26:                                               ; preds = %18, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #7, !dbg !2856
  %27 = load i32, ptr %4, align 4, !dbg !2856
  ret i32 %27, !dbg !2856
}

; Function Attrs: inlinehint nounwind optsize
define internal void @LL_USART_SetOverSampling(ptr noundef %0, i32 noundef %1) #0 !dbg !2857 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2859, metadata !DIExpression()), !dbg !2861
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2860, metadata !DIExpression()), !dbg !2862
  %5 = load ptr, ptr %3, align 4, !dbg !2863
  %6 = getelementptr inbounds %struct.USART_TypeDef, ptr %5, i32 0, i32 0, !dbg !2864
  %7 = load volatile i32, ptr %6, align 4, !dbg !2864
  %8 = and i32 %7, -32769, !dbg !2865
  %9 = load i32, ptr %4, align 4, !dbg !2866
  %10 = or i32 %8, %9, !dbg !2867
  %11 = load ptr, ptr %3, align 4, !dbg !2868
  %12 = getelementptr inbounds %struct.USART_TypeDef, ptr %11, i32 0, i32 0, !dbg !2869
  store volatile i32 %10, ptr %12, align 4, !dbg !2870
  ret void, !dbg !2871
}

; Function Attrs: inlinehint nounwind optsize
define internal void @LL_USART_SetBaudRate(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 !dbg !2872 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store ptr %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2874, metadata !DIExpression()), !dbg !2880
  store i32 %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2875, metadata !DIExpression()), !dbg !2881
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2876, metadata !DIExpression()), !dbg !2882
  store i32 %3, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2877, metadata !DIExpression()), !dbg !2883
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #7, !dbg !2884
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2878, metadata !DIExpression()), !dbg !2885
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #7, !dbg !2886
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2879, metadata !DIExpression()), !dbg !2887
  %11 = load i32, ptr %7, align 4, !dbg !2888
  %12 = icmp eq i32 %11, 32768, !dbg !2890
  br i1 %12, label %13, label %35, !dbg !2891

13:                                               ; preds = %4
  %14 = load i32, ptr %6, align 4, !dbg !2892
  %15 = mul i32 %14, 2, !dbg !2894
  %16 = load i32, ptr %8, align 4, !dbg !2895
  %17 = udiv i32 %16, 2, !dbg !2896
  %18 = add i32 %15, %17, !dbg !2897
  %19 = load i32, ptr %8, align 4, !dbg !2898
  %20 = udiv i32 %18, %19, !dbg !2899
  %21 = trunc i32 %20 to i16, !dbg !2900
  %22 = zext i16 %21 to i32, !dbg !2900
  store i32 %22, ptr %9, align 4, !dbg !2901
  %23 = load i32, ptr %9, align 4, !dbg !2902
  %24 = and i32 %23, 65520, !dbg !2903
  store i32 %24, ptr %10, align 4, !dbg !2904
  %25 = load i32, ptr %9, align 4, !dbg !2905
  %26 = and i32 %25, 15, !dbg !2906
  %27 = lshr i32 %26, 1, !dbg !2907
  %28 = trunc i32 %27 to i16, !dbg !2908
  %29 = zext i16 %28 to i32, !dbg !2908
  %30 = load i32, ptr %10, align 4, !dbg !2909
  %31 = or i32 %30, %29, !dbg !2909
  store i32 %31, ptr %10, align 4, !dbg !2909
  %32 = load i32, ptr %10, align 4, !dbg !2910
  %33 = load ptr, ptr %5, align 4, !dbg !2911
  %34 = getelementptr inbounds %struct.USART_TypeDef, ptr %33, i32 0, i32 3, !dbg !2912
  store volatile i32 %32, ptr %34, align 4, !dbg !2913
  br label %46, !dbg !2914

35:                                               ; preds = %4
  %36 = load i32, ptr %6, align 4, !dbg !2915
  %37 = load i32, ptr %8, align 4, !dbg !2917
  %38 = udiv i32 %37, 2, !dbg !2918
  %39 = add i32 %36, %38, !dbg !2919
  %40 = load i32, ptr %8, align 4, !dbg !2920
  %41 = udiv i32 %39, %40, !dbg !2921
  %42 = trunc i32 %41 to i16, !dbg !2922
  %43 = zext i16 %42 to i32, !dbg !2922
  %44 = load ptr, ptr %5, align 4, !dbg !2923
  %45 = getelementptr inbounds %struct.USART_TypeDef, ptr %44, i32 0, i32 3, !dbg !2924
  store volatile i32 %43, ptr %45, align 4, !dbg !2925
  br label %46

46:                                               ; preds = %35, %13
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #7, !dbg !2926
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #7, !dbg !2926
  ret void, !dbg !2926
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @LL_USART_GetParity(ptr noundef %0) #0 !dbg !2927 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2929, metadata !DIExpression()), !dbg !2930
  %3 = load ptr, ptr %2, align 4, !dbg !2931
  %4 = getelementptr inbounds %struct.USART_TypeDef, ptr %3, i32 0, i32 0, !dbg !2932
  %5 = load volatile i32, ptr %4, align 4, !dbg !2932
  %6 = and i32 %5, 1536, !dbg !2933
  ret i32 %6, !dbg !2934
}

; Function Attrs: inlinehint nounwind optsize
define internal void @LL_USART_SetParity(ptr noundef %0, i32 noundef %1) #0 !dbg !2935 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2937, metadata !DIExpression()), !dbg !2939
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2938, metadata !DIExpression()), !dbg !2940
  %5 = load ptr, ptr %3, align 4, !dbg !2941
  %6 = getelementptr inbounds %struct.USART_TypeDef, ptr %5, i32 0, i32 0, !dbg !2942
  %7 = load volatile i32, ptr %6, align 4, !dbg !2942
  %8 = and i32 %7, -1537, !dbg !2943
  %9 = load i32, ptr %4, align 4, !dbg !2944
  %10 = or i32 %8, %9, !dbg !2945
  %11 = load ptr, ptr %3, align 4, !dbg !2946
  %12 = getelementptr inbounds %struct.USART_TypeDef, ptr %11, i32 0, i32 0, !dbg !2947
  store volatile i32 %10, ptr %12, align 4, !dbg !2948
  ret void, !dbg !2949
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @LL_USART_GetStopBitsLength(ptr noundef %0) #0 !dbg !2950 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2952, metadata !DIExpression()), !dbg !2953
  %3 = load ptr, ptr %2, align 4, !dbg !2954
  %4 = getelementptr inbounds %struct.USART_TypeDef, ptr %3, i32 0, i32 1, !dbg !2955
  %5 = load volatile i32, ptr %4, align 4, !dbg !2955
  %6 = and i32 %5, 12288, !dbg !2956
  ret i32 %6, !dbg !2957
}

; Function Attrs: inlinehint nounwind optsize
define internal void @LL_USART_SetStopBitsLength(ptr noundef %0, i32 noundef %1) #0 !dbg !2958 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2960, metadata !DIExpression()), !dbg !2962
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2961, metadata !DIExpression()), !dbg !2963
  %5 = load ptr, ptr %3, align 4, !dbg !2964
  %6 = getelementptr inbounds %struct.USART_TypeDef, ptr %5, i32 0, i32 1, !dbg !2965
  %7 = load volatile i32, ptr %6, align 4, !dbg !2965
  %8 = and i32 %7, -12289, !dbg !2966
  %9 = load i32, ptr %4, align 4, !dbg !2967
  %10 = or i32 %8, %9, !dbg !2968
  %11 = load ptr, ptr %3, align 4, !dbg !2969
  %12 = getelementptr inbounds %struct.USART_TypeDef, ptr %11, i32 0, i32 1, !dbg !2970
  store volatile i32 %10, ptr %12, align 4, !dbg !2971
  ret void, !dbg !2972
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @LL_USART_GetDataWidth(ptr noundef %0) #0 !dbg !2973 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2975, metadata !DIExpression()), !dbg !2976
  %3 = load ptr, ptr %2, align 4, !dbg !2977
  %4 = getelementptr inbounds %struct.USART_TypeDef, ptr %3, i32 0, i32 0, !dbg !2978
  %5 = load volatile i32, ptr %4, align 4, !dbg !2978
  %6 = and i32 %5, 268439552, !dbg !2979
  ret i32 %6, !dbg !2980
}

; Function Attrs: inlinehint nounwind optsize
define internal void @LL_USART_SetDataWidth(ptr noundef %0, i32 noundef %1) #0 !dbg !2981 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2983, metadata !DIExpression()), !dbg !2985
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2984, metadata !DIExpression()), !dbg !2986
  %5 = load ptr, ptr %3, align 4, !dbg !2987
  %6 = getelementptr inbounds %struct.USART_TypeDef, ptr %5, i32 0, i32 0, !dbg !2988
  %7 = load volatile i32, ptr %6, align 4, !dbg !2988
  %8 = and i32 %7, -268439553, !dbg !2989
  %9 = load i32, ptr %4, align 4, !dbg !2990
  %10 = or i32 %8, %9, !dbg !2991
  %11 = load ptr, ptr %3, align 4, !dbg !2992
  %12 = getelementptr inbounds %struct.USART_TypeDef, ptr %11, i32 0, i32 0, !dbg !2993
  store volatile i32 %10, ptr %12, align 4, !dbg !2994
  ret void, !dbg !2995
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @LL_USART_GetHWFlowCtrl(ptr noundef %0) #0 !dbg !2996 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2998, metadata !DIExpression()), !dbg !2999
  %3 = load ptr, ptr %2, align 4, !dbg !3000
  %4 = getelementptr inbounds %struct.USART_TypeDef, ptr %3, i32 0, i32 2, !dbg !3001
  %5 = load volatile i32, ptr %4, align 4, !dbg !3001
  %6 = and i32 %5, 768, !dbg !3002
  ret i32 %6, !dbg !3003
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @LL_USART_IsEnabledDEMode(ptr noundef %0) #0 !dbg !3004 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3006, metadata !DIExpression()), !dbg !3007
  %3 = load ptr, ptr %2, align 4, !dbg !3008
  %4 = getelementptr inbounds %struct.USART_TypeDef, ptr %3, i32 0, i32 2, !dbg !3009
  %5 = load volatile i32, ptr %4, align 4, !dbg !3009
  %6 = and i32 %5, 16384, !dbg !3010
  %7 = icmp eq i32 %6, 16384, !dbg !3011
  %8 = zext i1 %7 to i64, !dbg !3012
  %9 = select i1 %7, i32 1, i32 0, !dbg !3012
  ret i32 %9, !dbg !3013
}

; Function Attrs: inlinehint nounwind optsize
define internal void @LL_USART_EnableDEMode(ptr noundef %0) #0 !dbg !3014 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3016, metadata !DIExpression()), !dbg !3017
  %3 = load ptr, ptr %2, align 4, !dbg !3018
  %4 = getelementptr inbounds %struct.USART_TypeDef, ptr %3, i32 0, i32 2, !dbg !3019
  %5 = load volatile i32, ptr %4, align 4, !dbg !3020
  %6 = or i32 %5, 16384, !dbg !3020
  store volatile i32 %6, ptr %4, align 4, !dbg !3020
  ret void, !dbg !3021
}

; Function Attrs: inlinehint nounwind optsize
define internal void @LL_USART_DisableDEMode(ptr noundef %0) #0 !dbg !3022 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3024, metadata !DIExpression()), !dbg !3025
  %3 = load ptr, ptr %2, align 4, !dbg !3026
  %4 = getelementptr inbounds %struct.USART_TypeDef, ptr %3, i32 0, i32 2, !dbg !3027
  %5 = load volatile i32, ptr %4, align 4, !dbg !3028
  %6 = and i32 %5, -16385, !dbg !3028
  store volatile i32 %6, ptr %4, align 4, !dbg !3028
  ret void, !dbg !3029
}

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i8 @uart_stm32_ll2cfg_parity(i32 noundef %0) #0 !dbg !3030 {
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3034, metadata !DIExpression()), !dbg !3035
  %4 = load i32, ptr %3, align 4, !dbg !3036
  switch i32 %4, label %8 [
    i32 1536, label %5
    i32 1024, label %6
    i32 0, label %7
  ], !dbg !3037

5:                                                ; preds = %1
  store i8 1, ptr %2, align 1, !dbg !3038
  br label %9, !dbg !3038

6:                                                ; preds = %1
  store i8 2, ptr %2, align 1, !dbg !3040
  br label %9, !dbg !3040

7:                                                ; preds = %1
  br label %8, !dbg !3041

8:                                                ; preds = %1, %7
  store i8 0, ptr %2, align 1, !dbg !3042
  br label %9, !dbg !3042

9:                                                ; preds = %8, %6, %5
  %10 = load i8, ptr %2, align 1, !dbg !3043
  ret i8 %10, !dbg !3043
}

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i8 @uart_stm32_ll2cfg_hwctrl(i32 noundef %0) #0 !dbg !3044 {
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3048, metadata !DIExpression()), !dbg !3049
  %4 = load i32, ptr %3, align 4, !dbg !3050
  %5 = icmp eq i32 %4, 768, !dbg !3052
  br i1 %5, label %6, label %7, !dbg !3053

6:                                                ; preds = %1
  store i8 1, ptr %2, align 1, !dbg !3054
  br label %8, !dbg !3054

7:                                                ; preds = %1
  store i8 0, ptr %2, align 1, !dbg !3056
  br label %8, !dbg !3056

8:                                                ; preds = %7, %6
  %9 = load i8, ptr %2, align 1, !dbg !3057
  ret i8 %9, !dbg !3057
}

; Function Attrs: nounwind optsize
define internal i32 @uart_stm32_fifo_fill_visitor(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #1 !dbg !3058 {
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
  %15 = alloca i32, align 4
  store ptr %0, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !3066, metadata !DIExpression()), !dbg !3073
  store ptr %1, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !3067, metadata !DIExpression()), !dbg !3074
  store i32 %2, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !3068, metadata !DIExpression()), !dbg !3075
  store ptr %3, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !3069, metadata !DIExpression()), !dbg !3076
  call void @llvm.lifetime.start.p0(i64 4, ptr %12) #7, !dbg !3077
  call void @llvm.dbg.declare(metadata ptr %12, metadata !3070, metadata !DIExpression()), !dbg !3078
  %16 = load ptr, ptr %8, align 4, !dbg !3079
  %17 = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 1, !dbg !3080
  %18 = load ptr, ptr %17, align 4, !dbg !3080
  store ptr %18, ptr %12, align 4, !dbg !3078
  call void @llvm.lifetime.start.p0(i64 1, ptr %13) #7, !dbg !3081
  call void @llvm.dbg.declare(metadata ptr %13, metadata !3071, metadata !DIExpression()), !dbg !3082
  store i8 0, ptr %13, align 1, !dbg !3082
  call void @llvm.lifetime.start.p0(i64 4, ptr %14) #7, !dbg !3083
  call void @llvm.dbg.declare(metadata ptr %14, metadata !3072, metadata !DIExpression()), !dbg !3084
  %19 = load ptr, ptr %12, align 4, !dbg !3085
  %20 = getelementptr inbounds %struct.uart_stm32_config, ptr %19, i32 0, i32 0, !dbg !3087
  %21 = load ptr, ptr %20, align 4, !dbg !3087
  %22 = call i32 @LL_USART_IsActiveFlag_TXE(ptr noundef %21) #6, !dbg !3088
  %23 = icmp ne i32 %22, 0, !dbg !3088
  br i1 %23, label %27, label %24, !dbg !3089

24:                                               ; preds = %4
  %25 = load i8, ptr %13, align 1, !dbg !3090
  %26 = zext i8 %25 to i32, !dbg !3090
  store i32 %26, ptr %7, align 4, !dbg !3092
  store i32 1, ptr %15, align 4
  br label %59, !dbg !3092

27:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #7, !dbg !3093
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2117, metadata !DIExpression()), !dbg !3095
  %28 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #7, !dbg !3096, !srcloc !2122
  store i32 %28, ptr %6, align 4, !dbg !3096
  %29 = load i32, ptr %6, align 4, !dbg !3097
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #7, !dbg !3098
  store i32 %29, ptr %14, align 4, !dbg !3099
  br label %30, !dbg !3100

30:                                               ; preds = %44, %27
  %31 = load i32, ptr %10, align 4, !dbg !3101
  %32 = load i8, ptr %13, align 1, !dbg !3102
  %33 = zext i8 %32 to i32, !dbg !3102
  %34 = sub nsw i32 %31, %33, !dbg !3103
  %35 = icmp sgt i32 %34, 0, !dbg !3104
  br i1 %35, label %36, label %42, !dbg !3105

36:                                               ; preds = %30
  %37 = load ptr, ptr %12, align 4, !dbg !3106
  %38 = getelementptr inbounds %struct.uart_stm32_config, ptr %37, i32 0, i32 0, !dbg !3107
  %39 = load ptr, ptr %38, align 4, !dbg !3107
  %40 = call i32 @LL_USART_IsActiveFlag_TXE(ptr noundef %39) #6, !dbg !3108
  %41 = icmp ne i32 %40, 0, !dbg !3105
  br label %42

42:                                               ; preds = %36, %30
  %43 = phi i1 [ false, %30 ], [ %41, %36 ], !dbg !3109
  br i1 %43, label %44, label %51, !dbg !3100

44:                                               ; preds = %42
  %45 = load ptr, ptr %11, align 4, !dbg !3110
  %46 = load ptr, ptr %12, align 4, !dbg !3112
  %47 = load ptr, ptr %9, align 4, !dbg !3113
  %48 = load i8, ptr %13, align 1, !dbg !3114
  call void %45(ptr noundef %46, ptr noundef %47, i8 noundef zeroext %48) #6, !dbg !3110
  %49 = load i8, ptr %13, align 1, !dbg !3115
  %50 = add i8 %49, 1, !dbg !3115
  store i8 %50, ptr %13, align 1, !dbg !3115
  br label %30, !dbg !3100, !llvm.loop !3116

51:                                               ; preds = %42
  %52 = load i32, ptr %14, align 4, !dbg !3118
  store i32 %52, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2134, metadata !DIExpression()), !dbg !3119
  %53 = load i32, ptr %5, align 4, !dbg !3121
  %54 = icmp ne i32 %53, 0, !dbg !3122
  br i1 %54, label %55, label %56, !dbg !3123

55:                                               ; preds = %51
  br label %arch_irq_unlock.exit, !dbg !3124

56:                                               ; preds = %51
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #7, !dbg !3125, !srcloc !2146
  br label %arch_irq_unlock.exit, !dbg !3126

arch_irq_unlock.exit:                             ; preds = %55, %56
  %57 = load i8, ptr %13, align 1, !dbg !3127
  %58 = zext i8 %57 to i32, !dbg !3127
  store i32 %58, ptr %7, align 4, !dbg !3128
  store i32 1, ptr %15, align 4
  br label %59, !dbg !3128

59:                                               ; preds = %arch_irq_unlock.exit, %24
  call void @llvm.lifetime.end.p0(i64 4, ptr %14) #7, !dbg !3129
  call void @llvm.lifetime.end.p0(i64 1, ptr %13) #7, !dbg !3129
  call void @llvm.lifetime.end.p0(i64 4, ptr %12) #7, !dbg !3129
  %60 = load i32, ptr %7, align 4, !dbg !3129
  ret i32 %60, !dbg !3129
}

; Function Attrs: nounwind optsize
define internal void @fifo_fill_with_u8(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) #1 !dbg !3130 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i8, align 1
  %7 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3132, metadata !DIExpression()), !dbg !3136
  store ptr %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3133, metadata !DIExpression()), !dbg !3137
  store i8 %2, ptr %6, align 1
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3134, metadata !DIExpression()), !dbg !3138
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #7, !dbg !3139
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3135, metadata !DIExpression()), !dbg !3140
  %8 = load ptr, ptr %5, align 4, !dbg !3141
  store ptr %8, ptr %7, align 4, !dbg !3140
  %9 = load ptr, ptr %4, align 4, !dbg !3142
  %10 = getelementptr inbounds %struct.uart_stm32_config, ptr %9, i32 0, i32 0, !dbg !3143
  %11 = load ptr, ptr %10, align 4, !dbg !3143
  %12 = load ptr, ptr %7, align 4, !dbg !3144
  %13 = load i8, ptr %6, align 1, !dbg !3145
  %14 = zext i8 %13 to i32, !dbg !3144
  %15 = getelementptr inbounds i8, ptr %12, i32 %14, !dbg !3144
  %16 = load i8, ptr %15, align 1, !dbg !3144
  call void @LL_USART_TransmitData8(ptr noundef %11, i8 noundef zeroext %16) #6, !dbg !3146
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #7, !dbg !3147
  ret void, !dbg !3147
}

; Function Attrs: nounwind optsize
define internal i32 @uart_stm32_fifo_read_visitor(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #1 !dbg !3148 {
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  %10 = alloca i8, align 1
  store ptr %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3156, metadata !DIExpression()), !dbg !3162
  store ptr %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3157, metadata !DIExpression()), !dbg !3163
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3158, metadata !DIExpression()), !dbg !3164
  store ptr %3, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !3159, metadata !DIExpression()), !dbg !3165
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #7, !dbg !3166
  call void @llvm.dbg.declare(metadata ptr %9, metadata !3160, metadata !DIExpression()), !dbg !3167
  %11 = load ptr, ptr %5, align 4, !dbg !3168
  %12 = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 1, !dbg !3169
  %13 = load ptr, ptr %12, align 4, !dbg !3169
  store ptr %13, ptr %9, align 4, !dbg !3167
  call void @llvm.lifetime.start.p0(i64 1, ptr %10) #7, !dbg !3170
  call void @llvm.dbg.declare(metadata ptr %10, metadata !3161, metadata !DIExpression()), !dbg !3171
  store i8 0, ptr %10, align 1, !dbg !3171
  br label %14, !dbg !3172

14:                                               ; preds = %44, %4
  %15 = load i32, ptr %7, align 4, !dbg !3173
  %16 = load i8, ptr %10, align 1, !dbg !3174
  %17 = zext i8 %16 to i32, !dbg !3174
  %18 = sub nsw i32 %15, %17, !dbg !3175
  %19 = icmp sgt i32 %18, 0, !dbg !3176
  br i1 %19, label %20, label %26, !dbg !3177

20:                                               ; preds = %14
  %21 = load ptr, ptr %9, align 4, !dbg !3178
  %22 = getelementptr inbounds %struct.uart_stm32_config, ptr %21, i32 0, i32 0, !dbg !3179
  %23 = load ptr, ptr %22, align 4, !dbg !3179
  %24 = call i32 @LL_USART_IsActiveFlag_RXNE(ptr noundef %23) #6, !dbg !3180
  %25 = icmp ne i32 %24, 0, !dbg !3177
  br label %26

26:                                               ; preds = %20, %14
  %27 = phi i1 [ false, %14 ], [ %25, %20 ], !dbg !3181
  br i1 %27, label %28, label %45, !dbg !3172

28:                                               ; preds = %26
  %29 = load ptr, ptr %8, align 4, !dbg !3182
  %30 = load ptr, ptr %9, align 4, !dbg !3184
  %31 = load ptr, ptr %6, align 4, !dbg !3185
  %32 = load i8, ptr %10, align 1, !dbg !3186
  call void %29(ptr noundef %30, ptr noundef %31, i8 noundef zeroext %32) #6, !dbg !3182
  %33 = load i8, ptr %10, align 1, !dbg !3187
  %34 = add i8 %33, 1, !dbg !3187
  store i8 %34, ptr %10, align 1, !dbg !3187
  %35 = load ptr, ptr %9, align 4, !dbg !3188
  %36 = getelementptr inbounds %struct.uart_stm32_config, ptr %35, i32 0, i32 0, !dbg !3190
  %37 = load ptr, ptr %36, align 4, !dbg !3190
  %38 = call i32 @LL_USART_IsActiveFlag_ORE(ptr noundef %37) #6, !dbg !3191
  %39 = icmp ne i32 %38, 0, !dbg !3191
  br i1 %39, label %40, label %44, !dbg !3192

40:                                               ; preds = %28
  %41 = load ptr, ptr %9, align 4, !dbg !3193
  %42 = getelementptr inbounds %struct.uart_stm32_config, ptr %41, i32 0, i32 0, !dbg !3195
  %43 = load ptr, ptr %42, align 4, !dbg !3195
  call void @LL_USART_ClearFlag_ORE(ptr noundef %43) #6, !dbg !3196
  br label %44, !dbg !3197

44:                                               ; preds = %40, %28
  br label %14, !dbg !3172, !llvm.loop !3198

45:                                               ; preds = %26
  %46 = load i8, ptr %10, align 1, !dbg !3200
  %47 = zext i8 %46 to i32, !dbg !3200
  call void @llvm.lifetime.end.p0(i64 1, ptr %10) #7, !dbg !3201
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #7, !dbg !3201
  ret i32 %47, !dbg !3202
}

; Function Attrs: nounwind optsize
define internal void @fifo_read_with_u8(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) #1 !dbg !3203 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i8, align 1
  %7 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3205, metadata !DIExpression()), !dbg !3209
  store ptr %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3206, metadata !DIExpression()), !dbg !3210
  store i8 %2, ptr %6, align 1
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3207, metadata !DIExpression()), !dbg !3211
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #7, !dbg !3212
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3208, metadata !DIExpression()), !dbg !3213
  %8 = load ptr, ptr %5, align 4, !dbg !3214
  store ptr %8, ptr %7, align 4, !dbg !3213
  %9 = load ptr, ptr %4, align 4, !dbg !3215
  %10 = getelementptr inbounds %struct.uart_stm32_config, ptr %9, i32 0, i32 0, !dbg !3216
  %11 = load ptr, ptr %10, align 4, !dbg !3216
  %12 = call zeroext i8 @LL_USART_ReceiveData8(ptr noundef %11) #6, !dbg !3217
  %13 = load ptr, ptr %7, align 4, !dbg !3218
  %14 = load i8, ptr %6, align 1, !dbg !3219
  %15 = zext i8 %14 to i32, !dbg !3218
  %16 = getelementptr inbounds i8, ptr %13, i32 %15, !dbg !3218
  store i8 %12, ptr %16, align 1, !dbg !3220
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #7, !dbg !3221
  ret void, !dbg !3221
}

; Function Attrs: inlinehint nounwind optsize
define internal void @LL_USART_EnableIT_TC(ptr noundef %0) #0 !dbg !3222 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3224, metadata !DIExpression()), !dbg !3227
  br label %7, !dbg !3228

7:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #7, !dbg !3229
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3225, metadata !DIExpression()), !dbg !3230
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #7, !dbg !3231
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3237, metadata !DIExpression()), !dbg !3239
  %8 = call i32 asm sideeffect "MRS $0, primask", "=r"() #7, !dbg !3240, !srcloc !3241
  store i32 %8, ptr %4, align 4, !dbg !3240
  %9 = load i32, ptr %4, align 4, !dbg !3242
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #7, !dbg !3243
  store i32 %9, ptr %6, align 4, !dbg !3244
  store i32 1, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3245, metadata !DIExpression()), !dbg !3250
  %10 = load i32, ptr %2, align 4, !dbg !3252
  call void asm sideeffect "MSR primask, $0", "r,~{memory}"(i32 %10) #7, !dbg !3253, !srcloc !3254
  %11 = load ptr, ptr %5, align 4, !dbg !3255
  %12 = getelementptr inbounds %struct.USART_TypeDef, ptr %11, i32 0, i32 0, !dbg !3256
  %13 = load volatile i32, ptr %12, align 4, !dbg !3257
  %14 = or i32 %13, 64, !dbg !3257
  store volatile i32 %14, ptr %12, align 4, !dbg !3257
  %15 = load i32, ptr %6, align 4, !dbg !3258
  store i32 %15, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3245, metadata !DIExpression()), !dbg !3259
  %16 = load i32, ptr %3, align 4, !dbg !3261
  call void asm sideeffect "MSR primask, $0", "r,~{memory}"(i32 %16) #7, !dbg !3262, !srcloc !3254
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #7, !dbg !3263
  br label %17, !dbg !3264

17:                                               ; preds = %7
  ret void, !dbg !3265
}

; Function Attrs: inlinehint nounwind optsize
define internal void @LL_USART_DisableIT_TC(ptr noundef %0) #0 !dbg !3266 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3268, metadata !DIExpression()), !dbg !3271
  br label %7, !dbg !3272

7:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #7, !dbg !3273
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3269, metadata !DIExpression()), !dbg !3274
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #7, !dbg !3275
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3237, metadata !DIExpression()), !dbg !3277
  %8 = call i32 asm sideeffect "MRS $0, primask", "=r"() #7, !dbg !3278, !srcloc !3241
  store i32 %8, ptr %4, align 4, !dbg !3278
  %9 = load i32, ptr %4, align 4, !dbg !3279
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #7, !dbg !3280
  store i32 %9, ptr %6, align 4, !dbg !3281
  store i32 1, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3245, metadata !DIExpression()), !dbg !3282
  %10 = load i32, ptr %2, align 4, !dbg !3284
  call void asm sideeffect "MSR primask, $0", "r,~{memory}"(i32 %10) #7, !dbg !3285, !srcloc !3254
  %11 = load ptr, ptr %5, align 4, !dbg !3286
  %12 = getelementptr inbounds %struct.USART_TypeDef, ptr %11, i32 0, i32 0, !dbg !3287
  %13 = load volatile i32, ptr %12, align 4, !dbg !3288
  %14 = and i32 %13, -65, !dbg !3288
  store volatile i32 %14, ptr %12, align 4, !dbg !3288
  %15 = load i32, ptr %6, align 4, !dbg !3289
  store i32 %15, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3245, metadata !DIExpression()), !dbg !3290
  %16 = load i32, ptr %3, align 4, !dbg !3292
  call void asm sideeffect "MSR primask, $0", "r,~{memory}"(i32 %16) #7, !dbg !3293, !srcloc !3254
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #7, !dbg !3294
  br label %17, !dbg !3295

17:                                               ; preds = %7
  ret void, !dbg !3296
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @LL_USART_IsEnabledIT_TC(ptr noundef %0) #0 !dbg !3297 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3299, metadata !DIExpression()), !dbg !3300
  %3 = load ptr, ptr %2, align 4, !dbg !3301
  %4 = getelementptr inbounds %struct.USART_TypeDef, ptr %3, i32 0, i32 0, !dbg !3302
  %5 = load volatile i32, ptr %4, align 4, !dbg !3302
  %6 = and i32 %5, 64, !dbg !3303
  %7 = icmp eq i32 %6, 64, !dbg !3304
  %8 = zext i1 %7 to i64, !dbg !3305
  %9 = select i1 %7, i32 1, i32 0, !dbg !3305
  ret i32 %9, !dbg !3306
}

; Function Attrs: inlinehint nounwind optsize
define internal void @LL_USART_EnableIT_RXNE(ptr noundef %0) #0 !dbg !3307 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3309, metadata !DIExpression()), !dbg !3312
  br label %7, !dbg !3313

7:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #7, !dbg !3314
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3310, metadata !DIExpression()), !dbg !3315
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #7, !dbg !3316
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3237, metadata !DIExpression()), !dbg !3318
  %8 = call i32 asm sideeffect "MRS $0, primask", "=r"() #7, !dbg !3319, !srcloc !3241
  store i32 %8, ptr %4, align 4, !dbg !3319
  %9 = load i32, ptr %4, align 4, !dbg !3320
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #7, !dbg !3321
  store i32 %9, ptr %6, align 4, !dbg !3322
  store i32 1, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3245, metadata !DIExpression()), !dbg !3323
  %10 = load i32, ptr %2, align 4, !dbg !3325
  call void asm sideeffect "MSR primask, $0", "r,~{memory}"(i32 %10) #7, !dbg !3326, !srcloc !3254
  %11 = load ptr, ptr %5, align 4, !dbg !3327
  %12 = getelementptr inbounds %struct.USART_TypeDef, ptr %11, i32 0, i32 0, !dbg !3328
  %13 = load volatile i32, ptr %12, align 4, !dbg !3329
  %14 = or i32 %13, 32, !dbg !3329
  store volatile i32 %14, ptr %12, align 4, !dbg !3329
  %15 = load i32, ptr %6, align 4, !dbg !3330
  store i32 %15, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3245, metadata !DIExpression()), !dbg !3331
  %16 = load i32, ptr %3, align 4, !dbg !3333
  call void asm sideeffect "MSR primask, $0", "r,~{memory}"(i32 %16) #7, !dbg !3334, !srcloc !3254
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #7, !dbg !3335
  br label %17, !dbg !3336

17:                                               ; preds = %7
  ret void, !dbg !3337
}

; Function Attrs: inlinehint nounwind optsize
define internal void @LL_USART_DisableIT_RXNE(ptr noundef %0) #0 !dbg !3338 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3340, metadata !DIExpression()), !dbg !3343
  br label %7, !dbg !3344

7:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #7, !dbg !3345
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3341, metadata !DIExpression()), !dbg !3346
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #7, !dbg !3347
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3237, metadata !DIExpression()), !dbg !3349
  %8 = call i32 asm sideeffect "MRS $0, primask", "=r"() #7, !dbg !3350, !srcloc !3241
  store i32 %8, ptr %4, align 4, !dbg !3350
  %9 = load i32, ptr %4, align 4, !dbg !3351
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #7, !dbg !3352
  store i32 %9, ptr %6, align 4, !dbg !3353
  store i32 1, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3245, metadata !DIExpression()), !dbg !3354
  %10 = load i32, ptr %2, align 4, !dbg !3356
  call void asm sideeffect "MSR primask, $0", "r,~{memory}"(i32 %10) #7, !dbg !3357, !srcloc !3254
  %11 = load ptr, ptr %5, align 4, !dbg !3358
  %12 = getelementptr inbounds %struct.USART_TypeDef, ptr %11, i32 0, i32 0, !dbg !3359
  %13 = load volatile i32, ptr %12, align 4, !dbg !3360
  %14 = and i32 %13, -33, !dbg !3360
  store volatile i32 %14, ptr %12, align 4, !dbg !3360
  %15 = load i32, ptr %6, align 4, !dbg !3361
  store i32 %15, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3245, metadata !DIExpression()), !dbg !3362
  %16 = load i32, ptr %3, align 4, !dbg !3364
  call void asm sideeffect "MSR primask, $0", "r,~{memory}"(i32 %16) #7, !dbg !3365, !srcloc !3254
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #7, !dbg !3366
  br label %17, !dbg !3367

17:                                               ; preds = %7
  ret void, !dbg !3368
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @LL_USART_IsActiveFlag_TC(ptr noundef %0) #0 !dbg !3369 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3371, metadata !DIExpression()), !dbg !3372
  %3 = load ptr, ptr %2, align 4, !dbg !3373
  %4 = getelementptr inbounds %struct.USART_TypeDef, ptr %3, i32 0, i32 7, !dbg !3374
  %5 = load volatile i32, ptr %4, align 4, !dbg !3374
  %6 = and i32 %5, 64, !dbg !3375
  %7 = icmp eq i32 %6, 64, !dbg !3376
  %8 = zext i1 %7 to i64, !dbg !3377
  %9 = select i1 %7, i32 1, i32 0, !dbg !3377
  ret i32 %9, !dbg !3378
}

; Function Attrs: inlinehint nounwind optsize
define internal void @LL_USART_EnableIT_ERROR(ptr noundef %0) #0 !dbg !3379 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3381, metadata !DIExpression()), !dbg !3384
  br label %7, !dbg !3385

7:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #7, !dbg !3386
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3382, metadata !DIExpression()), !dbg !3387
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #7, !dbg !3388
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3237, metadata !DIExpression()), !dbg !3390
  %8 = call i32 asm sideeffect "MRS $0, primask", "=r"() #7, !dbg !3391, !srcloc !3241
  store i32 %8, ptr %4, align 4, !dbg !3391
  %9 = load i32, ptr %4, align 4, !dbg !3392
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #7, !dbg !3393
  store i32 %9, ptr %6, align 4, !dbg !3394
  store i32 1, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3245, metadata !DIExpression()), !dbg !3395
  %10 = load i32, ptr %2, align 4, !dbg !3397
  call void asm sideeffect "MSR primask, $0", "r,~{memory}"(i32 %10) #7, !dbg !3398, !srcloc !3254
  %11 = load ptr, ptr %5, align 4, !dbg !3399
  %12 = getelementptr inbounds %struct.USART_TypeDef, ptr %11, i32 0, i32 2, !dbg !3400
  %13 = load volatile i32, ptr %12, align 4, !dbg !3401
  %14 = or i32 %13, 1, !dbg !3401
  store volatile i32 %14, ptr %12, align 4, !dbg !3401
  %15 = load i32, ptr %6, align 4, !dbg !3402
  store i32 %15, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3245, metadata !DIExpression()), !dbg !3403
  %16 = load i32, ptr %3, align 4, !dbg !3405
  call void asm sideeffect "MSR primask, $0", "r,~{memory}"(i32 %16) #7, !dbg !3406, !srcloc !3254
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #7, !dbg !3407
  br label %17, !dbg !3408

17:                                               ; preds = %7
  ret void, !dbg !3409
}

; Function Attrs: inlinehint nounwind optsize
define internal void @LL_USART_EnableIT_LBD(ptr noundef %0) #0 !dbg !3410 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3412, metadata !DIExpression()), !dbg !3413
  %3 = load ptr, ptr %2, align 4, !dbg !3414
  %4 = getelementptr inbounds %struct.USART_TypeDef, ptr %3, i32 0, i32 1, !dbg !3415
  %5 = load volatile i32, ptr %4, align 4, !dbg !3416
  %6 = or i32 %5, 64, !dbg !3416
  store volatile i32 %6, ptr %4, align 4, !dbg !3416
  ret void, !dbg !3417
}

; Function Attrs: inlinehint nounwind optsize
define internal void @LL_USART_EnableIT_PE(ptr noundef %0) #0 !dbg !3418 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3420, metadata !DIExpression()), !dbg !3423
  br label %7, !dbg !3424

7:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #7, !dbg !3425
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3421, metadata !DIExpression()), !dbg !3426
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #7, !dbg !3427
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3237, metadata !DIExpression()), !dbg !3429
  %8 = call i32 asm sideeffect "MRS $0, primask", "=r"() #7, !dbg !3430, !srcloc !3241
  store i32 %8, ptr %4, align 4, !dbg !3430
  %9 = load i32, ptr %4, align 4, !dbg !3431
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #7, !dbg !3432
  store i32 %9, ptr %6, align 4, !dbg !3433
  store i32 1, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3245, metadata !DIExpression()), !dbg !3434
  %10 = load i32, ptr %2, align 4, !dbg !3436
  call void asm sideeffect "MSR primask, $0", "r,~{memory}"(i32 %10) #7, !dbg !3437, !srcloc !3254
  %11 = load ptr, ptr %5, align 4, !dbg !3438
  %12 = getelementptr inbounds %struct.USART_TypeDef, ptr %11, i32 0, i32 0, !dbg !3439
  %13 = load volatile i32, ptr %12, align 4, !dbg !3440
  %14 = or i32 %13, 256, !dbg !3440
  store volatile i32 %14, ptr %12, align 4, !dbg !3440
  %15 = load i32, ptr %6, align 4, !dbg !3441
  store i32 %15, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3245, metadata !DIExpression()), !dbg !3442
  %16 = load i32, ptr %3, align 4, !dbg !3444
  call void asm sideeffect "MSR primask, $0", "r,~{memory}"(i32 %16) #7, !dbg !3445, !srcloc !3254
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #7, !dbg !3446
  br label %17, !dbg !3447

17:                                               ; preds = %7
  ret void, !dbg !3448
}

; Function Attrs: inlinehint nounwind optsize
define internal void @LL_USART_DisableIT_ERROR(ptr noundef %0) #0 !dbg !3449 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3451, metadata !DIExpression()), !dbg !3454
  br label %7, !dbg !3455

7:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #7, !dbg !3456
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3452, metadata !DIExpression()), !dbg !3457
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #7, !dbg !3458
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3237, metadata !DIExpression()), !dbg !3460
  %8 = call i32 asm sideeffect "MRS $0, primask", "=r"() #7, !dbg !3461, !srcloc !3241
  store i32 %8, ptr %4, align 4, !dbg !3461
  %9 = load i32, ptr %4, align 4, !dbg !3462
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #7, !dbg !3463
  store i32 %9, ptr %6, align 4, !dbg !3464
  store i32 1, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3245, metadata !DIExpression()), !dbg !3465
  %10 = load i32, ptr %2, align 4, !dbg !3467
  call void asm sideeffect "MSR primask, $0", "r,~{memory}"(i32 %10) #7, !dbg !3468, !srcloc !3254
  %11 = load ptr, ptr %5, align 4, !dbg !3469
  %12 = getelementptr inbounds %struct.USART_TypeDef, ptr %11, i32 0, i32 2, !dbg !3470
  %13 = load volatile i32, ptr %12, align 4, !dbg !3471
  %14 = and i32 %13, -2, !dbg !3471
  store volatile i32 %14, ptr %12, align 4, !dbg !3471
  %15 = load i32, ptr %6, align 4, !dbg !3472
  store i32 %15, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3245, metadata !DIExpression()), !dbg !3473
  %16 = load i32, ptr %3, align 4, !dbg !3475
  call void asm sideeffect "MSR primask, $0", "r,~{memory}"(i32 %16) #7, !dbg !3476, !srcloc !3254
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #7, !dbg !3477
  br label %17, !dbg !3478

17:                                               ; preds = %7
  ret void, !dbg !3479
}

; Function Attrs: inlinehint nounwind optsize
define internal void @LL_USART_DisableIT_LBD(ptr noundef %0) #0 !dbg !3480 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3482, metadata !DIExpression()), !dbg !3483
  %3 = load ptr, ptr %2, align 4, !dbg !3484
  %4 = getelementptr inbounds %struct.USART_TypeDef, ptr %3, i32 0, i32 1, !dbg !3485
  %5 = load volatile i32, ptr %4, align 4, !dbg !3486
  %6 = and i32 %5, -65, !dbg !3486
  store volatile i32 %6, ptr %4, align 4, !dbg !3486
  ret void, !dbg !3487
}

; Function Attrs: inlinehint nounwind optsize
define internal void @LL_USART_DisableIT_PE(ptr noundef %0) #0 !dbg !3488 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3490, metadata !DIExpression()), !dbg !3493
  br label %7, !dbg !3494

7:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #7, !dbg !3495
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3491, metadata !DIExpression()), !dbg !3496
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #7, !dbg !3497
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3237, metadata !DIExpression()), !dbg !3499
  %8 = call i32 asm sideeffect "MRS $0, primask", "=r"() #7, !dbg !3500, !srcloc !3241
  store i32 %8, ptr %4, align 4, !dbg !3500
  %9 = load i32, ptr %4, align 4, !dbg !3501
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #7, !dbg !3502
  store i32 %9, ptr %6, align 4, !dbg !3503
  store i32 1, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3245, metadata !DIExpression()), !dbg !3504
  %10 = load i32, ptr %2, align 4, !dbg !3506
  call void asm sideeffect "MSR primask, $0", "r,~{memory}"(i32 %10) #7, !dbg !3507, !srcloc !3254
  %11 = load ptr, ptr %5, align 4, !dbg !3508
  %12 = getelementptr inbounds %struct.USART_TypeDef, ptr %11, i32 0, i32 0, !dbg !3509
  %13 = load volatile i32, ptr %12, align 4, !dbg !3510
  %14 = and i32 %13, -257, !dbg !3510
  store volatile i32 %14, ptr %12, align 4, !dbg !3510
  %15 = load i32, ptr %6, align 4, !dbg !3511
  store i32 %15, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3245, metadata !DIExpression()), !dbg !3512
  %16 = load i32, ptr %3, align 4, !dbg !3514
  call void asm sideeffect "MSR primask, $0", "r,~{memory}"(i32 %16) #7, !dbg !3515, !srcloc !3254
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #7, !dbg !3516
  br label %17, !dbg !3517

17:                                               ; preds = %7
  ret void, !dbg !3518
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @LL_USART_IsEnabledIT_RXNE(ptr noundef %0) #0 !dbg !3519 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3521, metadata !DIExpression()), !dbg !3522
  %3 = load ptr, ptr %2, align 4, !dbg !3523
  %4 = getelementptr inbounds %struct.USART_TypeDef, ptr %3, i32 0, i32 0, !dbg !3524
  %5 = load volatile i32, ptr %4, align 4, !dbg !3524
  %6 = and i32 %5, 32, !dbg !3525
  %7 = icmp eq i32 %6, 32, !dbg !3526
  %8 = zext i1 %7 to i64, !dbg !3527
  %9 = select i1 %7, i32 1, i32 0, !dbg !3527
  ret i32 %9, !dbg !3528
}

; Function Attrs: nounwind optsize
define internal i32 @uart_stm32_clocks_enable(ptr noundef %0) #1 !dbg !3529 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3531, metadata !DIExpression()), !dbg !3535
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #7, !dbg !3536
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3532, metadata !DIExpression()), !dbg !3537
  %14 = load ptr, ptr %3, align 4, !dbg !3538
  %15 = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 1, !dbg !3539
  %16 = load ptr, ptr %15, align 4, !dbg !3539
  store ptr %16, ptr %4, align 4, !dbg !3537
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #7, !dbg !3540
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3533, metadata !DIExpression()), !dbg !3541
  %17 = load ptr, ptr %3, align 4, !dbg !3542
  %18 = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 4, !dbg !3543
  %19 = load ptr, ptr %18, align 4, !dbg !3543
  store ptr %19, ptr %5, align 4, !dbg !3541
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #7, !dbg !3544
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3534, metadata !DIExpression()), !dbg !3545
  %20 = load ptr, ptr %3, align 4, !dbg !3546
  call void @__uart_stm32_get_clock(ptr noundef %20) #6, !dbg !3547
  %21 = load ptr, ptr %5, align 4, !dbg !3548
  %22 = getelementptr inbounds %struct.uart_stm32_data, ptr %21, i32 0, i32 0, !dbg !3550
  %23 = load ptr, ptr %22, align 4, !dbg !3550
  %24 = call zeroext i1 @device_is_ready(ptr noundef %23) #6, !dbg !3551
  br i1 %24, label %29, label %25, !dbg !3552

25:                                               ; preds = %1
  br label %26, !dbg !3553

26:                                               ; preds = %25
  br label %28, !dbg !3555

27:                                               ; No predecessors!
  br label %28, !dbg !3559

28:                                               ; preds = %27, %26
  store i32 -19, ptr %2, align 4, !dbg !3560
  store i32 1, ptr %10, align 4
  br label %46, !dbg !3560

29:                                               ; preds = %1
  %30 = load ptr, ptr %5, align 4, !dbg !3561
  %31 = getelementptr inbounds %struct.uart_stm32_data, ptr %30, i32 0, i32 0, !dbg !3562
  %32 = load ptr, ptr %31, align 4, !dbg !3562
  %33 = load ptr, ptr %4, align 4, !dbg !3563
  %34 = getelementptr inbounds %struct.uart_stm32_config, ptr %33, i32 0, i32 2, !dbg !3564
  %35 = load ptr, ptr %34, align 4, !dbg !3564
  %36 = getelementptr inbounds %struct.stm32_pclken, ptr %35, i32 0, !dbg !3563
  %37 = call i32 @clock_control_on(ptr noundef %32, ptr noundef %36) #6, !dbg !3565
  store i32 %37, ptr %6, align 4, !dbg !3566
  %38 = load i32, ptr %6, align 4, !dbg !3567
  %39 = icmp ne i32 %38, 0, !dbg !3569
  br i1 %39, label %40, label %45, !dbg !3570

40:                                               ; preds = %29
  br label %41, !dbg !3571

41:                                               ; preds = %40
  br label %43, !dbg !3573

42:                                               ; No predecessors!
  br label %43, !dbg !3577

43:                                               ; preds = %42, %41
  %44 = load i32, ptr %6, align 4, !dbg !3578
  store i32 %44, ptr %2, align 4, !dbg !3579
  store i32 1, ptr %10, align 4
  br label %46, !dbg !3579

45:                                               ; preds = %29
  store i32 0, ptr %2, align 4, !dbg !3580
  store i32 1, ptr %10, align 4
  br label %46, !dbg !3580

46:                                               ; preds = %45, %43, %28
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #7, !dbg !3581
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #7, !dbg !3581
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #7, !dbg !3581
  %47 = load i32, ptr %2, align 4, !dbg !3581
  ret i32 %47, !dbg !3581
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @pinctrl_apply_state(ptr noundef %0, i8 noundef zeroext %1) #0 !dbg !3582 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3586, metadata !DIExpression()), !dbg !3590
  store i8 %1, ptr %5, align 1
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3587, metadata !DIExpression()), !dbg !3591
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #7, !dbg !3592
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3588, metadata !DIExpression()), !dbg !3593
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #7, !dbg !3594
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3589, metadata !DIExpression()), !dbg !3595
  %9 = load ptr, ptr %4, align 4, !dbg !3596
  %10 = load i8, ptr %5, align 1, !dbg !3597
  %11 = call i32 @pinctrl_lookup_state(ptr noundef %9, i8 noundef zeroext %10, ptr noundef %7) #6, !dbg !3598
  store i32 %11, ptr %6, align 4, !dbg !3599
  %12 = load i32, ptr %6, align 4, !dbg !3600
  %13 = icmp slt i32 %12, 0, !dbg !3602
  br i1 %13, label %14, label %16, !dbg !3603

14:                                               ; preds = %2
  %15 = load i32, ptr %6, align 4, !dbg !3604
  store i32 %15, ptr %3, align 4, !dbg !3606
  store i32 1, ptr %8, align 4
  br label %20, !dbg !3606

16:                                               ; preds = %2
  %17 = load ptr, ptr %4, align 4, !dbg !3607
  %18 = load ptr, ptr %7, align 4, !dbg !3608
  %19 = call i32 @pinctrl_apply_state_direct(ptr noundef %17, ptr noundef %18) #6, !dbg !3609
  store i32 %19, ptr %3, align 4, !dbg !3610
  store i32 1, ptr %8, align 4
  br label %20, !dbg !3610

20:                                               ; preds = %16, %14
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #7, !dbg !3611
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #7, !dbg !3611
  %21 = load i32, ptr %3, align 4, !dbg !3611
  ret i32 %21, !dbg !3611
}

; Function Attrs: nounwind optsize
define internal i32 @uart_stm32_registers_configure(ptr noundef %0) #1 !dbg !3612 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3614, metadata !DIExpression()), !dbg !3618
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #7, !dbg !3619
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3615, metadata !DIExpression()), !dbg !3620
  %14 = load ptr, ptr %3, align 4, !dbg !3621
  %15 = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 1, !dbg !3622
  %16 = load ptr, ptr %15, align 4, !dbg !3622
  store ptr %16, ptr %4, align 4, !dbg !3620
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #7, !dbg !3623
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3616, metadata !DIExpression()), !dbg !3624
  %17 = load ptr, ptr %3, align 4, !dbg !3625
  %18 = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 4, !dbg !3626
  %19 = load ptr, ptr %18, align 4, !dbg !3626
  store ptr %19, ptr %5, align 4, !dbg !3624
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #7, !dbg !3627
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3617, metadata !DIExpression()), !dbg !3628
  %20 = load ptr, ptr %5, align 4, !dbg !3629
  %21 = getelementptr inbounds %struct.uart_stm32_data, ptr %20, i32 0, i32 1, !dbg !3630
  %22 = load ptr, ptr %21, align 4, !dbg !3630
  store ptr %22, ptr %6, align 4, !dbg !3628
  %23 = load ptr, ptr %4, align 4, !dbg !3631
  %24 = getelementptr inbounds %struct.uart_stm32_config, ptr %23, i32 0, i32 0, !dbg !3632
  %25 = load ptr, ptr %24, align 4, !dbg !3632
  call void @LL_USART_Disable(ptr noundef %25) #6, !dbg !3633
  %26 = load ptr, ptr %4, align 4, !dbg !3634
  %27 = getelementptr inbounds %struct.uart_stm32_config, ptr %26, i32 0, i32 1, !dbg !3636
  %28 = getelementptr inbounds %struct.reset_dt_spec, ptr %27, i32 0, i32 0, !dbg !3637
  %29 = load ptr, ptr %28, align 4, !dbg !3637
  %30 = call zeroext i1 @device_is_ready(ptr noundef %29) #6, !dbg !3638
  br i1 %30, label %35, label %31, !dbg !3639

31:                                               ; preds = %1
  br label %32, !dbg !3640

32:                                               ; preds = %31
  br label %34, !dbg !3642

33:                                               ; No predecessors!
  br label %34, !dbg !3646

34:                                               ; preds = %33, %32
  store i32 -19, ptr %2, align 4, !dbg !3647
  store i32 1, ptr %10, align 4
  br label %175, !dbg !3647

35:                                               ; preds = %1
  %36 = load ptr, ptr %4, align 4, !dbg !3648
  %37 = getelementptr inbounds %struct.uart_stm32_config, ptr %36, i32 0, i32 1, !dbg !3649
  %38 = call i32 @reset_line_toggle_dt(ptr noundef %37) #6, !dbg !3650
  %39 = load ptr, ptr %4, align 4, !dbg !3651
  %40 = getelementptr inbounds %struct.uart_stm32_config, ptr %39, i32 0, i32 0, !dbg !3652
  %41 = load ptr, ptr %40, align 4, !dbg !3652
  call void @LL_USART_SetTransferDirection(ptr noundef %41, i32 noundef 12) #6, !dbg !3653
  %42 = load ptr, ptr %3, align 4, !dbg !3654
  %43 = load ptr, ptr %6, align 4, !dbg !3655
  call void @uart_stm32_parameters_set(ptr noundef %42, ptr noundef %43) #6, !dbg !3656
  %44 = load ptr, ptr %4, align 4, !dbg !3657
  %45 = getelementptr inbounds %struct.uart_stm32_config, ptr %44, i32 0, i32 4, !dbg !3659
  %46 = load i8, ptr %45, align 4, !dbg !3659, !range !2515, !noundef !544
  %47 = trunc i8 %46 to i1, !dbg !3659
  br i1 %47, label %48, label %52, !dbg !3660

48:                                               ; preds = %35
  %49 = load ptr, ptr %4, align 4, !dbg !3661
  %50 = getelementptr inbounds %struct.uart_stm32_config, ptr %49, i32 0, i32 0, !dbg !3663
  %51 = load ptr, ptr %50, align 4, !dbg !3663
  call void @LL_USART_EnableHalfDuplex(ptr noundef %51) #6, !dbg !3664
  br label %52, !dbg !3665

52:                                               ; preds = %48, %35
  %53 = load ptr, ptr %4, align 4, !dbg !3666
  %54 = getelementptr inbounds %struct.uart_stm32_config, ptr %53, i32 0, i32 5, !dbg !3668
  %55 = load i8, ptr %54, align 1, !dbg !3668, !range !2515, !noundef !544
  %56 = trunc i8 %55 to i1, !dbg !3668
  br i1 %56, label %57, label %61, !dbg !3669

57:                                               ; preds = %52
  %58 = load ptr, ptr %4, align 4, !dbg !3670
  %59 = getelementptr inbounds %struct.uart_stm32_config, ptr %58, i32 0, i32 0, !dbg !3672
  %60 = load ptr, ptr %59, align 4, !dbg !3672
  call void @LL_USART_SetTXRXSwap(ptr noundef %60, i32 noundef 32768) #6, !dbg !3673
  br label %61, !dbg !3674

61:                                               ; preds = %57, %52
  %62 = load ptr, ptr %4, align 4, !dbg !3675
  %63 = getelementptr inbounds %struct.uart_stm32_config, ptr %62, i32 0, i32 6, !dbg !3677
  %64 = load i8, ptr %63, align 2, !dbg !3677, !range !2515, !noundef !544
  %65 = trunc i8 %64 to i1, !dbg !3677
  br i1 %65, label %66, label %70, !dbg !3678

66:                                               ; preds = %61
  %67 = load ptr, ptr %4, align 4, !dbg !3679
  %68 = getelementptr inbounds %struct.uart_stm32_config, ptr %67, i32 0, i32 0, !dbg !3681
  %69 = load ptr, ptr %68, align 4, !dbg !3681
  call void @LL_USART_SetRXPinLevel(ptr noundef %69, i32 noundef 65536) #6, !dbg !3682
  br label %70, !dbg !3683

70:                                               ; preds = %66, %61
  %71 = load ptr, ptr %4, align 4, !dbg !3684
  %72 = getelementptr inbounds %struct.uart_stm32_config, ptr %71, i32 0, i32 7, !dbg !3686
  %73 = load i8, ptr %72, align 1, !dbg !3686, !range !2515, !noundef !544
  %74 = trunc i8 %73 to i1, !dbg !3686
  br i1 %74, label %75, label %79, !dbg !3687

75:                                               ; preds = %70
  %76 = load ptr, ptr %4, align 4, !dbg !3688
  %77 = getelementptr inbounds %struct.uart_stm32_config, ptr %76, i32 0, i32 0, !dbg !3690
  %78 = load ptr, ptr %77, align 4, !dbg !3690
  call void @LL_USART_SetTXPinLevel(ptr noundef %78, i32 noundef 131072) #6, !dbg !3691
  br label %79, !dbg !3692

79:                                               ; preds = %75, %70
  %80 = load ptr, ptr %4, align 4, !dbg !3693
  %81 = getelementptr inbounds %struct.uart_stm32_config, ptr %80, i32 0, i32 8, !dbg !3695
  %82 = load i8, ptr %81, align 4, !dbg !3695, !range !2515, !noundef !544
  %83 = trunc i8 %82 to i1, !dbg !3695
  br i1 %83, label %84, label %153, !dbg !3696

84:                                               ; preds = %79
  %85 = load ptr, ptr %4, align 4, !dbg !3697
  %86 = getelementptr inbounds %struct.uart_stm32_config, ptr %85, i32 0, i32 0, !dbg !3700
  %87 = load ptr, ptr %86, align 4, !dbg !3700
  %88 = icmp eq ptr %87, inttoptr (i32 1073821696 to ptr), !dbg !3701
  br i1 %88, label %128, label %89, !dbg !3702

89:                                               ; preds = %84
  %90 = load ptr, ptr %4, align 4, !dbg !3703
  %91 = getelementptr inbounds %struct.uart_stm32_config, ptr %90, i32 0, i32 0, !dbg !3704
  %92 = load ptr, ptr %91, align 4, !dbg !3704
  %93 = icmp eq ptr %92, inttoptr (i32 1073759232 to ptr), !dbg !3705
  br i1 %93, label %128, label %94, !dbg !3706

94:                                               ; preds = %89
  %95 = load ptr, ptr %4, align 4, !dbg !3707
  %96 = getelementptr inbounds %struct.uart_stm32_config, ptr %95, i32 0, i32 0, !dbg !3708
  %97 = load ptr, ptr %96, align 4, !dbg !3708
  %98 = icmp eq ptr %97, inttoptr (i32 1073760256 to ptr), !dbg !3709
  br i1 %98, label %128, label %99, !dbg !3710

99:                                               ; preds = %94
  %100 = load ptr, ptr %4, align 4, !dbg !3711
  %101 = getelementptr inbounds %struct.uart_stm32_config, ptr %100, i32 0, i32 0, !dbg !3712
  %102 = load ptr, ptr %101, align 4, !dbg !3712
  %103 = icmp eq ptr %102, inttoptr (i32 1073761280 to ptr), !dbg !3713
  br i1 %103, label %128, label %104, !dbg !3714

104:                                              ; preds = %99
  %105 = load ptr, ptr %4, align 4, !dbg !3715
  %106 = getelementptr inbounds %struct.uart_stm32_config, ptr %105, i32 0, i32 0, !dbg !3716
  %107 = load ptr, ptr %106, align 4, !dbg !3716
  %108 = icmp eq ptr %107, inttoptr (i32 1073762304 to ptr), !dbg !3717
  br i1 %108, label %128, label %109, !dbg !3718

109:                                              ; preds = %104
  %110 = load ptr, ptr %4, align 4, !dbg !3719
  %111 = getelementptr inbounds %struct.uart_stm32_config, ptr %110, i32 0, i32 0, !dbg !3720
  %112 = load ptr, ptr %111, align 4, !dbg !3720
  %113 = icmp eq ptr %112, inttoptr (i32 1073812480 to ptr), !dbg !3721
  br i1 %113, label %128, label %114, !dbg !3722

114:                                              ; preds = %109
  %115 = load ptr, ptr %4, align 4, !dbg !3723
  %116 = getelementptr inbounds %struct.uart_stm32_config, ptr %115, i32 0, i32 0, !dbg !3724
  %117 = load ptr, ptr %116, align 4, !dbg !3724
  %118 = icmp eq ptr %117, inttoptr (i32 1073813504 to ptr), !dbg !3725
  br i1 %118, label %128, label %119, !dbg !3726

119:                                              ; preds = %114
  %120 = load ptr, ptr %4, align 4, !dbg !3727
  %121 = getelementptr inbounds %struct.uart_stm32_config, ptr %120, i32 0, i32 0, !dbg !3728
  %122 = load ptr, ptr %121, align 4, !dbg !3728
  %123 = icmp eq ptr %122, inttoptr (i32 1073814528 to ptr), !dbg !3729
  br i1 %123, label %128, label %124, !dbg !3730

124:                                              ; preds = %119
  br label %125, !dbg !3731

125:                                              ; preds = %124
  br label %127, !dbg !3733

126:                                              ; No predecessors!
  br label %127, !dbg !3737

127:                                              ; preds = %126, %125
  store i32 -5, ptr %2, align 4, !dbg !3738
  store i32 1, ptr %10, align 4
  br label %175, !dbg !3738

128:                                              ; preds = %119, %114, %109, %104, %99, %94, %89, %84
  %129 = load ptr, ptr %3, align 4, !dbg !3739
  call void @uart_stm32_set_driver_enable(ptr noundef %129, i1 noundef zeroext true) #6, !dbg !3740
  %130 = load ptr, ptr %4, align 4, !dbg !3741
  %131 = getelementptr inbounds %struct.uart_stm32_config, ptr %130, i32 0, i32 0, !dbg !3742
  %132 = load ptr, ptr %131, align 4, !dbg !3742
  %133 = load ptr, ptr %4, align 4, !dbg !3743
  %134 = getelementptr inbounds %struct.uart_stm32_config, ptr %133, i32 0, i32 9, !dbg !3744
  %135 = load i8, ptr %134, align 1, !dbg !3744
  %136 = zext i8 %135 to i32, !dbg !3743
  call void @LL_USART_SetDEAssertionTime(ptr noundef %132, i32 noundef %136) #6, !dbg !3745
  %137 = load ptr, ptr %4, align 4, !dbg !3746
  %138 = getelementptr inbounds %struct.uart_stm32_config, ptr %137, i32 0, i32 0, !dbg !3747
  %139 = load ptr, ptr %138, align 4, !dbg !3747
  %140 = load ptr, ptr %4, align 4, !dbg !3748
  %141 = getelementptr inbounds %struct.uart_stm32_config, ptr %140, i32 0, i32 10, !dbg !3749
  %142 = load i8, ptr %141, align 2, !dbg !3749
  %143 = zext i8 %142 to i32, !dbg !3748
  call void @LL_USART_SetDEDeassertionTime(ptr noundef %139, i32 noundef %143) #6, !dbg !3750
  %144 = load ptr, ptr %4, align 4, !dbg !3751
  %145 = getelementptr inbounds %struct.uart_stm32_config, ptr %144, i32 0, i32 11, !dbg !3753
  %146 = load i8, ptr %145, align 1, !dbg !3753, !range !2515, !noundef !544
  %147 = trunc i8 %146 to i1, !dbg !3753
  br i1 %147, label %148, label %152, !dbg !3754

148:                                              ; preds = %128
  %149 = load ptr, ptr %4, align 4, !dbg !3755
  %150 = getelementptr inbounds %struct.uart_stm32_config, ptr %149, i32 0, i32 0, !dbg !3757
  %151 = load ptr, ptr %150, align 4, !dbg !3757
  call void @LL_USART_SetDESignalPolarity(ptr noundef %151, i32 noundef 32768) #6, !dbg !3758
  br label %152, !dbg !3759

152:                                              ; preds = %148, %128
  br label %153, !dbg !3760

153:                                              ; preds = %152, %79
  %154 = load ptr, ptr %4, align 4, !dbg !3761
  %155 = getelementptr inbounds %struct.uart_stm32_config, ptr %154, i32 0, i32 0, !dbg !3762
  %156 = load ptr, ptr %155, align 4, !dbg !3762
  call void @LL_USART_Enable(ptr noundef %156) #6, !dbg !3763
  br label %157, !dbg !3764

157:                                              ; preds = %164, %153
  %158 = load ptr, ptr %4, align 4, !dbg !3765
  %159 = getelementptr inbounds %struct.uart_stm32_config, ptr %158, i32 0, i32 0, !dbg !3766
  %160 = load ptr, ptr %159, align 4, !dbg !3766
  %161 = call i32 @LL_USART_IsActiveFlag_TEACK(ptr noundef %160) #6, !dbg !3767
  %162 = icmp ne i32 %161, 0, !dbg !3768
  %163 = xor i1 %162, true, !dbg !3768
  br i1 %163, label %164, label %165, !dbg !3764

164:                                              ; preds = %157
  br label %157, !dbg !3764, !llvm.loop !3769

165:                                              ; preds = %157
  br label %166, !dbg !3771

166:                                              ; preds = %173, %165
  %167 = load ptr, ptr %4, align 4, !dbg !3772
  %168 = getelementptr inbounds %struct.uart_stm32_config, ptr %167, i32 0, i32 0, !dbg !3773
  %169 = load ptr, ptr %168, align 4, !dbg !3773
  %170 = call i32 @LL_USART_IsActiveFlag_REACK(ptr noundef %169) #6, !dbg !3774
  %171 = icmp ne i32 %170, 0, !dbg !3775
  %172 = xor i1 %171, true, !dbg !3775
  br i1 %172, label %173, label %174, !dbg !3771

173:                                              ; preds = %166
  br label %166, !dbg !3771, !llvm.loop !3776

174:                                              ; preds = %166
  store i32 0, ptr %2, align 4, !dbg !3778
  store i32 1, ptr %10, align 4
  br label %175, !dbg !3778

175:                                              ; preds = %174, %127, %34
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #7, !dbg !3779
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #7, !dbg !3779
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #7, !dbg !3779
  %176 = load i32, ptr %2, align 4, !dbg !3779
  ret i32 %176, !dbg !3779
}

; Function Attrs: inlinehint nounwind optsize
define internal void @__uart_stm32_get_clock(ptr noundef %0) #0 !dbg !3780 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3782, metadata !DIExpression()), !dbg !3786
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #7, !dbg !3787
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3783, metadata !DIExpression()), !dbg !3788
  %5 = load ptr, ptr %2, align 4, !dbg !3789
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 4, !dbg !3790
  %7 = load ptr, ptr %6, align 4, !dbg !3790
  store ptr %7, ptr %3, align 4, !dbg !3788
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #7, !dbg !3791
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3784, metadata !DIExpression()), !dbg !3792
  store ptr @__device_dts_ord_9, ptr %4, align 4, !dbg !3792
  %8 = load ptr, ptr %3, align 4, !dbg !3793
  %9 = getelementptr inbounds %struct.uart_stm32_data, ptr %8, i32 0, i32 0, !dbg !3794
  store ptr @__device_dts_ord_9, ptr %9, align 4, !dbg !3795
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #7, !dbg !3796
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #7, !dbg !3796
  ret void, !dbg !3796
}

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @device_is_ready(ptr noundef %0) #0 !dbg !3797 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3800, metadata !DIExpression()), !dbg !3801
  br label %3, !dbg !3802

3:                                                ; preds = %1
  call void asm sideeffect "", "~{memory}"() #7, !dbg !3803, !srcloc !3805
  br label %4, !dbg !3806

4:                                                ; preds = %3
  %5 = load ptr, ptr %2, align 4, !dbg !3807
  %6 = call zeroext i1 @z_impl_device_is_ready(ptr noundef %5) #6, !dbg !3808
  ret i1 %6, !dbg !3809
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @clock_control_on(ptr noundef %0, ptr noundef %1) #0 !dbg !3810 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3812, metadata !DIExpression()), !dbg !3815
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3813, metadata !DIExpression()), !dbg !3816
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #7, !dbg !3817
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3814, metadata !DIExpression()), !dbg !3818
  %6 = load ptr, ptr %3, align 4, !dbg !3819
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 2, !dbg !3820
  %8 = load ptr, ptr %7, align 4, !dbg !3820
  store ptr %8, ptr %5, align 4, !dbg !3818
  %9 = load ptr, ptr %5, align 4, !dbg !3821
  %10 = getelementptr inbounds %struct.clock_control_driver_api, ptr %9, i32 0, i32 0, !dbg !3822
  %11 = load ptr, ptr %10, align 4, !dbg !3822
  %12 = load ptr, ptr %3, align 4, !dbg !3823
  %13 = load ptr, ptr %4, align 4, !dbg !3824
  %14 = call i32 %11(ptr noundef %12, ptr noundef %13) #6, !dbg !3821
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #7, !dbg !3825
  ret i32 %14, !dbg !3826
}

; Function Attrs: optsize
declare !dbg !3827 dso_local i32 @pinctrl_lookup_state(ptr noundef, i8 noundef zeroext, ptr noundef) #3

; Function Attrs: inlinehint nounwind optsize
define internal i32 @pinctrl_apply_state_direct(ptr noundef %0, ptr noundef %1) #0 !dbg !3831 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3835, metadata !DIExpression()), !dbg !3839
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3836, metadata !DIExpression()), !dbg !3840
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #7, !dbg !3841
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3837, metadata !DIExpression()), !dbg !3842
  %6 = load ptr, ptr %3, align 4, !dbg !3843
  store i32 0, ptr %5, align 4, !dbg !3844
  %7 = load ptr, ptr %4, align 4, !dbg !3845
  %8 = getelementptr inbounds %struct.pinctrl_state, ptr %7, i32 0, i32 0, !dbg !3846
  %9 = load ptr, ptr %8, align 4, !dbg !3846
  %10 = load ptr, ptr %4, align 4, !dbg !3847
  %11 = getelementptr inbounds %struct.pinctrl_state, ptr %10, i32 0, i32 1, !dbg !3848
  %12 = load i8, ptr %11, align 4, !dbg !3848
  %13 = load i32, ptr %5, align 4, !dbg !3849
  %14 = call i32 @pinctrl_configure_pins(ptr noundef %9, i8 noundef zeroext %12, i32 noundef %13) #6, !dbg !3850
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #7, !dbg !3851
  ret i32 %14, !dbg !3852
}

; Function Attrs: optsize
declare !dbg !3853 dso_local i32 @pinctrl_configure_pins(ptr noundef, i8 noundef zeroext, i32 noundef) #3

; Function Attrs: inlinehint nounwind optsize
define internal i32 @reset_line_toggle_dt(ptr noundef %0) #0 !dbg !3856 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3861, metadata !DIExpression()), !dbg !3862
  %3 = load ptr, ptr %2, align 4, !dbg !3863
  %4 = getelementptr inbounds %struct.reset_dt_spec, ptr %3, i32 0, i32 0, !dbg !3864
  %5 = load ptr, ptr %4, align 4, !dbg !3864
  %6 = load ptr, ptr %2, align 4, !dbg !3865
  %7 = getelementptr inbounds %struct.reset_dt_spec, ptr %6, i32 0, i32 1, !dbg !3866
  %8 = load i32, ptr %7, align 4, !dbg !3866
  %9 = call i32 @reset_line_toggle(ptr noundef %5, i32 noundef %8) #6, !dbg !3867
  ret i32 %9, !dbg !3868
}

; Function Attrs: inlinehint nounwind optsize
define internal void @LL_USART_SetTransferDirection(ptr noundef %0, i32 noundef %1) #0 !dbg !3869 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3871, metadata !DIExpression()), !dbg !3875
  store i32 %1, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3872, metadata !DIExpression()), !dbg !3876
  br label %9, !dbg !3877

9:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #7, !dbg !3878
  call void @llvm.dbg.declare(metadata ptr %8, metadata !3873, metadata !DIExpression()), !dbg !3879
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #7, !dbg !3880
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3237, metadata !DIExpression()), !dbg !3882
  %10 = call i32 asm sideeffect "MRS $0, primask", "=r"() #7, !dbg !3883, !srcloc !3241
  store i32 %10, ptr %5, align 4, !dbg !3883
  %11 = load i32, ptr %5, align 4, !dbg !3884
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #7, !dbg !3885
  store i32 %11, ptr %8, align 4, !dbg !3886
  store i32 1, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3245, metadata !DIExpression()), !dbg !3887
  %12 = load i32, ptr %3, align 4, !dbg !3889
  call void asm sideeffect "MSR primask, $0", "r,~{memory}"(i32 %12) #7, !dbg !3890, !srcloc !3254
  %13 = load ptr, ptr %6, align 4, !dbg !3891
  %14 = getelementptr inbounds %struct.USART_TypeDef, ptr %13, i32 0, i32 0, !dbg !3892
  %15 = load volatile i32, ptr %14, align 4, !dbg !3892
  %16 = and i32 %15, -13, !dbg !3893
  %17 = load i32, ptr %7, align 4, !dbg !3894
  %18 = or i32 %16, %17, !dbg !3895
  %19 = load ptr, ptr %6, align 4, !dbg !3896
  %20 = getelementptr inbounds %struct.USART_TypeDef, ptr %19, i32 0, i32 0, !dbg !3897
  store volatile i32 %18, ptr %20, align 4, !dbg !3898
  %21 = load i32, ptr %8, align 4, !dbg !3899
  store i32 %21, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3245, metadata !DIExpression()), !dbg !3900
  %22 = load i32, ptr %4, align 4, !dbg !3902
  call void asm sideeffect "MSR primask, $0", "r,~{memory}"(i32 %22) #7, !dbg !3903, !srcloc !3254
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #7, !dbg !3904
  br label %23, !dbg !3905

23:                                               ; preds = %9
  ret void, !dbg !3906
}

; Function Attrs: inlinehint nounwind optsize
define internal void @LL_USART_EnableHalfDuplex(ptr noundef %0) #0 !dbg !3907 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3909, metadata !DIExpression()), !dbg !3910
  %3 = load ptr, ptr %2, align 4, !dbg !3911
  %4 = getelementptr inbounds %struct.USART_TypeDef, ptr %3, i32 0, i32 2, !dbg !3912
  %5 = load volatile i32, ptr %4, align 4, !dbg !3913
  %6 = or i32 %5, 8, !dbg !3913
  store volatile i32 %6, ptr %4, align 4, !dbg !3913
  ret void, !dbg !3914
}

; Function Attrs: inlinehint nounwind optsize
define internal void @LL_USART_SetTXRXSwap(ptr noundef %0, i32 noundef %1) #0 !dbg !3915 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3917, metadata !DIExpression()), !dbg !3919
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3918, metadata !DIExpression()), !dbg !3920
  %5 = load ptr, ptr %3, align 4, !dbg !3921
  %6 = getelementptr inbounds %struct.USART_TypeDef, ptr %5, i32 0, i32 1, !dbg !3922
  %7 = load volatile i32, ptr %6, align 4, !dbg !3922
  %8 = and i32 %7, -32769, !dbg !3923
  %9 = load i32, ptr %4, align 4, !dbg !3924
  %10 = or i32 %8, %9, !dbg !3925
  %11 = load ptr, ptr %3, align 4, !dbg !3926
  %12 = getelementptr inbounds %struct.USART_TypeDef, ptr %11, i32 0, i32 1, !dbg !3927
  store volatile i32 %10, ptr %12, align 4, !dbg !3928
  ret void, !dbg !3929
}

; Function Attrs: inlinehint nounwind optsize
define internal void @LL_USART_SetRXPinLevel(ptr noundef %0, i32 noundef %1) #0 !dbg !3930 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3932, metadata !DIExpression()), !dbg !3934
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3933, metadata !DIExpression()), !dbg !3935
  %5 = load ptr, ptr %3, align 4, !dbg !3936
  %6 = getelementptr inbounds %struct.USART_TypeDef, ptr %5, i32 0, i32 1, !dbg !3937
  %7 = load volatile i32, ptr %6, align 4, !dbg !3937
  %8 = and i32 %7, -65537, !dbg !3938
  %9 = load i32, ptr %4, align 4, !dbg !3939
  %10 = or i32 %8, %9, !dbg !3940
  %11 = load ptr, ptr %3, align 4, !dbg !3941
  %12 = getelementptr inbounds %struct.USART_TypeDef, ptr %11, i32 0, i32 1, !dbg !3942
  store volatile i32 %10, ptr %12, align 4, !dbg !3943
  ret void, !dbg !3944
}

; Function Attrs: inlinehint nounwind optsize
define internal void @LL_USART_SetTXPinLevel(ptr noundef %0, i32 noundef %1) #0 !dbg !3945 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3947, metadata !DIExpression()), !dbg !3949
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3948, metadata !DIExpression()), !dbg !3950
  %5 = load ptr, ptr %3, align 4, !dbg !3951
  %6 = getelementptr inbounds %struct.USART_TypeDef, ptr %5, i32 0, i32 1, !dbg !3952
  %7 = load volatile i32, ptr %6, align 4, !dbg !3952
  %8 = and i32 %7, -131073, !dbg !3953
  %9 = load i32, ptr %4, align 4, !dbg !3954
  %10 = or i32 %8, %9, !dbg !3955
  %11 = load ptr, ptr %3, align 4, !dbg !3956
  %12 = getelementptr inbounds %struct.USART_TypeDef, ptr %11, i32 0, i32 1, !dbg !3957
  store volatile i32 %10, ptr %12, align 4, !dbg !3958
  ret void, !dbg !3959
}

; Function Attrs: inlinehint nounwind optsize
define internal void @LL_USART_SetDEAssertionTime(ptr noundef %0, i32 noundef %1) #0 !dbg !3960 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3962, metadata !DIExpression()), !dbg !3964
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3963, metadata !DIExpression()), !dbg !3965
  %5 = load ptr, ptr %3, align 4, !dbg !3966
  %6 = getelementptr inbounds %struct.USART_TypeDef, ptr %5, i32 0, i32 0, !dbg !3967
  %7 = load volatile i32, ptr %6, align 4, !dbg !3967
  %8 = and i32 %7, -65011713, !dbg !3968
  %9 = load i32, ptr %4, align 4, !dbg !3969
  %10 = shl i32 %9, 21, !dbg !3970
  %11 = or i32 %8, %10, !dbg !3971
  %12 = load ptr, ptr %3, align 4, !dbg !3972
  %13 = getelementptr inbounds %struct.USART_TypeDef, ptr %12, i32 0, i32 0, !dbg !3973
  store volatile i32 %11, ptr %13, align 4, !dbg !3974
  ret void, !dbg !3975
}

; Function Attrs: inlinehint nounwind optsize
define internal void @LL_USART_SetDEDeassertionTime(ptr noundef %0, i32 noundef %1) #0 !dbg !3976 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3978, metadata !DIExpression()), !dbg !3980
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3979, metadata !DIExpression()), !dbg !3981
  %5 = load ptr, ptr %3, align 4, !dbg !3982
  %6 = getelementptr inbounds %struct.USART_TypeDef, ptr %5, i32 0, i32 0, !dbg !3983
  %7 = load volatile i32, ptr %6, align 4, !dbg !3983
  %8 = and i32 %7, -2031617, !dbg !3984
  %9 = load i32, ptr %4, align 4, !dbg !3985
  %10 = shl i32 %9, 16, !dbg !3986
  %11 = or i32 %8, %10, !dbg !3987
  %12 = load ptr, ptr %3, align 4, !dbg !3988
  %13 = getelementptr inbounds %struct.USART_TypeDef, ptr %12, i32 0, i32 0, !dbg !3989
  store volatile i32 %11, ptr %13, align 4, !dbg !3990
  ret void, !dbg !3991
}

; Function Attrs: inlinehint nounwind optsize
define internal void @LL_USART_SetDESignalPolarity(ptr noundef %0, i32 noundef %1) #0 !dbg !3992 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3994, metadata !DIExpression()), !dbg !3996
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3995, metadata !DIExpression()), !dbg !3997
  %5 = load ptr, ptr %3, align 4, !dbg !3998
  %6 = getelementptr inbounds %struct.USART_TypeDef, ptr %5, i32 0, i32 2, !dbg !3999
  %7 = load volatile i32, ptr %6, align 4, !dbg !3999
  %8 = and i32 %7, -32769, !dbg !4000
  %9 = load i32, ptr %4, align 4, !dbg !4001
  %10 = or i32 %8, %9, !dbg !4002
  %11 = load ptr, ptr %3, align 4, !dbg !4003
  %12 = getelementptr inbounds %struct.USART_TypeDef, ptr %11, i32 0, i32 2, !dbg !4004
  store volatile i32 %10, ptr %12, align 4, !dbg !4005
  ret void, !dbg !4006
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @LL_USART_IsActiveFlag_TEACK(ptr noundef %0) #0 !dbg !4007 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4009, metadata !DIExpression()), !dbg !4010
  %3 = load ptr, ptr %2, align 4, !dbg !4011
  %4 = getelementptr inbounds %struct.USART_TypeDef, ptr %3, i32 0, i32 7, !dbg !4012
  %5 = load volatile i32, ptr %4, align 4, !dbg !4012
  %6 = and i32 %5, 2097152, !dbg !4013
  %7 = icmp eq i32 %6, 2097152, !dbg !4014
  %8 = zext i1 %7 to i64, !dbg !4015
  %9 = select i1 %7, i32 1, i32 0, !dbg !4015
  ret i32 %9, !dbg !4016
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @LL_USART_IsActiveFlag_REACK(ptr noundef %0) #0 !dbg !4017 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4019, metadata !DIExpression()), !dbg !4020
  %3 = load ptr, ptr %2, align 4, !dbg !4021
  %4 = getelementptr inbounds %struct.USART_TypeDef, ptr %3, i32 0, i32 7, !dbg !4022
  %5 = load volatile i32, ptr %4, align 4, !dbg !4022
  %6 = and i32 %5, 4194304, !dbg !4023
  %7 = icmp eq i32 %6, 4194304, !dbg !4024
  %8 = zext i1 %7 to i64, !dbg !4025
  %9 = select i1 %7, i32 1, i32 0, !dbg !4025
  ret i32 %9, !dbg !4026
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @reset_line_toggle(ptr noundef %0, i32 noundef %1) #0 !dbg !4027 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4030, metadata !DIExpression()), !dbg !4032
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4031, metadata !DIExpression()), !dbg !4033
  br label %5, !dbg !4034

5:                                                ; preds = %2
  call void asm sideeffect "", "~{memory}"() #7, !dbg !4035, !srcloc !4037
  br label %6, !dbg !4038

6:                                                ; preds = %5
  %7 = load ptr, ptr %3, align 4, !dbg !4039
  %8 = load i32, ptr %4, align 4, !dbg !4040
  %9 = call i32 @z_impl_reset_line_toggle(ptr noundef %7, i32 noundef %8) #6, !dbg !4041
  ret i32 %9, !dbg !4042
}

attributes #0 = { inlinehint nounwind optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { optsize }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!431, !432, !433, !434, !435, !436}
!llvm.ident = !{!437}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 2337, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "drivers/serial/uart_stm32.c", directory: "/home/sri/zephyrproject/zephyr")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 16)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "uart_stm32_cfg_0", scope: !9, file: !2, line: 2337, type: !404, isLocal: true, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C99, file: !10, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, retainedTypes: !137, globals: !316, splitDebugInlining: false, nameTableKind: None)
!10 = !DIFile(filename: "uart_stm32.c", directory: "/home/sri/zephyrproject/zephyr/build")
!11 = !{!12, !95, !104, !111, !118, !124, !130}
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
!34 = !DIEnumerator(name: "K_OBJ_DRIVER_RESET", value: 18)
!35 = !DIEnumerator(name: "K_OBJ_DRIVER_UART", value: 19)
!36 = !DIEnumerator(name: "K_OBJ_DRIVER_CRYPTO", value: 20)
!37 = !DIEnumerator(name: "K_OBJ_DRIVER_ADC", value: 21)
!38 = !DIEnumerator(name: "K_OBJ_DRIVER_AUXDISPLAY", value: 22)
!39 = !DIEnumerator(name: "K_OBJ_DRIVER_BBRAM", value: 23)
!40 = !DIEnumerator(name: "K_OBJ_DRIVER_CAN", value: 24)
!41 = !DIEnumerator(name: "K_OBJ_DRIVER_CHARGER", value: 25)
!42 = !DIEnumerator(name: "K_OBJ_DRIVER_COREDUMP", value: 26)
!43 = !DIEnumerator(name: "K_OBJ_DRIVER_COUNTER", value: 27)
!44 = !DIEnumerator(name: "K_OBJ_DRIVER_DAC", value: 28)
!45 = !DIEnumerator(name: "K_OBJ_DRIVER_DAI", value: 29)
!46 = !DIEnumerator(name: "K_OBJ_DRIVER_DMA", value: 30)
!47 = !DIEnumerator(name: "K_OBJ_DRIVER_EDAC", value: 31)
!48 = !DIEnumerator(name: "K_OBJ_DRIVER_EEPROM", value: 32)
!49 = !DIEnumerator(name: "K_OBJ_DRIVER_FUEL_GAUGE_EMUL", value: 33)
!50 = !DIEnumerator(name: "K_OBJ_DRIVER_EMUL_SENSOR_BACKEND_API", value: 34)
!51 = !DIEnumerator(name: "K_OBJ_DRIVER_ENTROPY", value: 35)
!52 = !DIEnumerator(name: "K_OBJ_DRIVER_ESPI", value: 36)
!53 = !DIEnumerator(name: "K_OBJ_DRIVER_ESPI_SAF", value: 37)
!54 = !DIEnumerator(name: "K_OBJ_DRIVER_FLASH", value: 38)
!55 = !DIEnumerator(name: "K_OBJ_DRIVER_FPGA", value: 39)
!56 = !DIEnumerator(name: "K_OBJ_DRIVER_FUEL_GAUGE", value: 40)
!57 = !DIEnumerator(name: "K_OBJ_DRIVER_HWSPINLOCK", value: 41)
!58 = !DIEnumerator(name: "K_OBJ_DRIVER_I2C", value: 42)
!59 = !DIEnumerator(name: "K_OBJ_DRIVER_I2S", value: 43)
!60 = !DIEnumerator(name: "K_OBJ_DRIVER_I3C", value: 44)
!61 = !DIEnumerator(name: "K_OBJ_DRIVER_IPM", value: 45)
!62 = !DIEnumerator(name: "K_OBJ_DRIVER_KSCAN", value: 46)
!63 = !DIEnumerator(name: "K_OBJ_DRIVER_LED", value: 47)
!64 = !DIEnumerator(name: "K_OBJ_DRIVER_MBOX", value: 48)
!65 = !DIEnumerator(name: "K_OBJ_DRIVER_MDIO", value: 49)
!66 = !DIEnumerator(name: "K_OBJ_DRIVER_MIPI_DSI", value: 50)
!67 = !DIEnumerator(name: "K_OBJ_DRIVER_PECI", value: 51)
!68 = !DIEnumerator(name: "K_OBJ_DRIVER_PS2", value: 52)
!69 = !DIEnumerator(name: "K_OBJ_DRIVER_PTP_CLOCK", value: 53)
!70 = !DIEnumerator(name: "K_OBJ_DRIVER_PWM", value: 54)
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
!130 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "clock_control_status", file: !131, line: 44, baseType: !14, size: 8, elements: !132)
!131 = !DIFile(filename: "include/zephyr/drivers/clock_control.h", directory: "/home/sri/zephyrproject/zephyr")
!132 = !{!133, !134, !135, !136}
!133 = !DIEnumerator(name: "CLOCK_CONTROL_STATUS_STARTING", value: 0)
!134 = !DIEnumerator(name: "CLOCK_CONTROL_STATUS_OFF", value: 1)
!135 = !DIEnumerator(name: "CLOCK_CONTROL_STATUS_ON", value: 2)
!136 = !DIEnumerator(name: "CLOCK_CONTROL_STATUS_UNKNOWN", value: 3)
!137 = !{!138, !139, !140, !184, !14, !192, !167, !252, !174, !254, !274, !275, !172, !159, !223}
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!139 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 32)
!141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !142)
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reset_driver_api", file: !143, line: 140, size: 128, elements: !144)
!143 = !DIFile(filename: "include/zephyr/drivers/reset.h", directory: "/home/sri/zephyrproject/zephyr")
!144 = !{!145, !175, !180, !182}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !142, file: !143, line: 141, baseType: !146, size: 32)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "reset_api_status", file: !143, line: 114, baseType: !147)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 32)
!148 = !DISubroutineType(types: !149)
!149 = !{!139, !150, !172, !174}
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 32)
!151 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !152)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !153, line: 381, size: 160, elements: !154)
!153 = !DIFile(filename: "include/zephyr/device.h", directory: "/home/sri/zephyrproject/zephyr")
!154 = !{!155, !158, !161, !162, !171}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !152, file: !153, line: 383, baseType: !156, size: 32)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 32)
!157 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !152, file: !153, line: 385, baseType: !159, size: 32, offset: 32)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 32)
!160 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "api", scope: !152, file: !153, line: 387, baseType: !159, size: 32, offset: 64)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !152, file: !153, line: 389, baseType: !163, size: 32, offset: 96)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 32)
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_state", file: !153, line: 354, size: 16, elements: !165)
!165 = !{!166, !169}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "init_res", scope: !164, file: !153, line: 362, baseType: !167, size: 8)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !168, line: 62, baseType: !14)
!168 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/stdint.h", directory: "")
!169 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !164, file: !153, line: 367, baseType: !170, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 8)
!170 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !152, file: !153, line: 391, baseType: !138, size: 32, offset: 128)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !168, line: 64, baseType: !173)
!173 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 32)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "line_assert", scope: !142, file: !143, line: 142, baseType: !176, size: 32, offset: 32)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "reset_api_line_assert", file: !143, line: 121, baseType: !177)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 32)
!178 = !DISubroutineType(types: !179)
!179 = !{!139, !150, !172}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "line_deassert", scope: !142, file: !143, line: 143, baseType: !181, size: 32, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "reset_api_line_deassert", file: !143, line: 128, baseType: !177)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "line_toggle", scope: !142, file: !143, line: 144, baseType: !183, size: 32, offset: 96)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "reset_api_line_toggle", file: !143, line: 135, baseType: !177)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 32)
!185 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !186)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uart_driver_api", file: !96, line: 334, size: 608, elements: !187)
!187 = !{!188, !193, !197, !201, !214, !219, !225, !230, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "poll_in", scope: !186, file: !96, line: 363, baseType: !189, size: 32)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 32)
!190 = !DISubroutineType(types: !191)
!191 = !{!139, !150, !192}
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 32)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "poll_out", scope: !186, file: !96, line: 364, baseType: !194, size: 32, offset: 32)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 32)
!195 = !DISubroutineType(types: !196)
!196 = !{null, !150, !14}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "err_check", scope: !186, file: !96, line: 372, baseType: !198, size: 32, offset: 64)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 32)
!199 = !DISubroutineType(types: !200)
!200 = !{!139, !150}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "configure", scope: !186, file: !96, line: 376, baseType: !202, size: 32, offset: 96)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 32)
!203 = !DISubroutineType(types: !204)
!204 = !{!139, !150, !205}
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 32)
!206 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !207)
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uart_config", file: !96, line: 119, size: 64, elements: !208)
!208 = !{!209, !210, !211, !212, !213}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "baudrate", scope: !207, file: !96, line: 120, baseType: !172, size: 32)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "parity", scope: !207, file: !96, line: 121, baseType: !167, size: 8, offset: 32)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "stop_bits", scope: !207, file: !96, line: 122, baseType: !167, size: 8, offset: 40)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "data_bits", scope: !207, file: !96, line: 123, baseType: !167, size: 8, offset: 48)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "flow_ctrl", scope: !207, file: !96, line: 124, baseType: !167, size: 8, offset: 56)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "config_get", scope: !186, file: !96, line: 378, baseType: !215, size: 32, offset: 128)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 32)
!216 = !DISubroutineType(types: !217)
!217 = !{!139, !150, !218}
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 32)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "fifo_fill", scope: !186, file: !96, line: 384, baseType: !220, size: 32, offset: 160)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 32)
!221 = !DISubroutineType(types: !222)
!222 = !{!139, !150, !223, !139}
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 32)
!224 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !167)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "fifo_read", scope: !186, file: !96, line: 393, baseType: !226, size: 32, offset: 192)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 32)
!227 = !DISubroutineType(types: !228)
!228 = !{!139, !150, !174, !229}
!229 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !139)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "irq_tx_enable", scope: !186, file: !96, line: 402, baseType: !231, size: 32, offset: 224)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 32)
!232 = !DISubroutineType(types: !233)
!233 = !{null, !150}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "irq_tx_disable", scope: !186, file: !96, line: 405, baseType: !231, size: 32, offset: 256)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "irq_tx_ready", scope: !186, file: !96, line: 408, baseType: !198, size: 32, offset: 288)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "irq_rx_enable", scope: !186, file: !96, line: 411, baseType: !231, size: 32, offset: 320)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "irq_rx_disable", scope: !186, file: !96, line: 414, baseType: !231, size: 32, offset: 352)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "irq_tx_complete", scope: !186, file: !96, line: 417, baseType: !198, size: 32, offset: 384)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "irq_rx_ready", scope: !186, file: !96, line: 420, baseType: !198, size: 32, offset: 416)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "irq_err_enable", scope: !186, file: !96, line: 423, baseType: !231, size: 32, offset: 448)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "irq_err_disable", scope: !186, file: !96, line: 426, baseType: !231, size: 32, offset: 480)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "irq_is_pending", scope: !186, file: !96, line: 429, baseType: !198, size: 32, offset: 512)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "irq_update", scope: !186, file: !96, line: 432, baseType: !198, size: 32, offset: 544)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "irq_callback_set", scope: !186, file: !96, line: 435, baseType: !245, size: 32, offset: 576)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 32)
!246 = !DISubroutineType(types: !247)
!247 = !{null, !150, !248, !138}
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "uart_irq_callback_user_data_t", file: !96, line: 139, baseType: !249)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 32)
!250 = !DISubroutineType(types: !251)
!251 = !{null, !150, !138}
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !168, line: 63, baseType: !253)
!253 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 32)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "USART_TypeDef", file: !256, line: 580, baseType: !257)
!256 = !DIFile(filename: "modules/hal/stm32/stm32cube/stm32f0xx/soc/stm32f091xc.h", directory: "/home/sri/zephyrproject")
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !256, line: 565, size: 352, elements: !258)
!258 = !{!259, !261, !262, !263, !264, !265, !266, !267, !268, !269, !271, !272, !273}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "CR1", scope: !257, file: !256, line: 567, baseType: !260, size: 32)
!260 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !172)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "CR2", scope: !257, file: !256, line: 568, baseType: !260, size: 32, offset: 32)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "CR3", scope: !257, file: !256, line: 569, baseType: !260, size: 32, offset: 64)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "BRR", scope: !257, file: !256, line: 570, baseType: !260, size: 32, offset: 96)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "GTPR", scope: !257, file: !256, line: 571, baseType: !260, size: 32, offset: 128)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "RTOR", scope: !257, file: !256, line: 572, baseType: !260, size: 32, offset: 160)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "RQR", scope: !257, file: !256, line: 573, baseType: !260, size: 32, offset: 192)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "ISR", scope: !257, file: !256, line: 574, baseType: !260, size: 32, offset: 224)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "ICR", scope: !257, file: !256, line: 575, baseType: !260, size: 32, offset: 256)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "RDR", scope: !257, file: !256, line: 576, baseType: !270, size: 16, offset: 288)
!270 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !252)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED1", scope: !257, file: !256, line: 577, baseType: !252, size: 16, offset: 304)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "TDR", scope: !257, file: !256, line: 578, baseType: !270, size: 16, offset: 320)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED2", scope: !257, file: !256, line: 579, baseType: !252, size: 16, offset: 336)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "clock_control_subsys_t", file: !131, line: 56, baseType: !138)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 32)
!276 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !277)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clock_control_driver_api", file: !131, line: 100, size: 224, elements: !278)
!278 = !{!279, !284, !285, !294, !300, !305, !311}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "on", scope: !277, file: !131, line: 101, baseType: !280, size: 32)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "clock_control", file: !131, line: 76, baseType: !281)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 32)
!282 = !DISubroutineType(types: !283)
!283 = !{!139, !150, !274}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "off", scope: !277, file: !131, line: 102, baseType: !280, size: 32, offset: 32)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "async_on", scope: !277, file: !131, line: 103, baseType: !286, size: 32, offset: 64)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "clock_control_async_on_fn", file: !131, line: 83, baseType: !287)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 32)
!288 = !DISubroutineType(types: !289)
!289 = !{!139, !150, !274, !290, !138}
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "clock_control_cb_t", file: !131, line: 72, baseType: !291)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 32)
!292 = !DISubroutineType(types: !293)
!293 = !{null, !150, !274, !138}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "get_rate", scope: !277, file: !131, line: 104, baseType: !295, size: 32, offset: 96)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "clock_control_get", file: !131, line: 79, baseType: !296)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 32)
!297 = !DISubroutineType(types: !298)
!298 = !{!139, !150, !274, !299}
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 32)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "get_status", scope: !277, file: !131, line: 105, baseType: !301, size: 32, offset: 128)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "clock_control_get_status_fn", file: !131, line: 88, baseType: !302)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 32)
!303 = !DISubroutineType(types: !304)
!304 = !{!130, !150, !274}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "set_rate", scope: !277, file: !131, line: 106, baseType: !306, size: 32, offset: 160)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "clock_control_set", file: !131, line: 92, baseType: !307)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 32)
!308 = !DISubroutineType(types: !309)
!309 = !{!139, !150, !274, !310}
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "clock_control_subsys_rate_t", file: !131, line: 64, baseType: !138)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "configure", scope: !277, file: !131, line: 107, baseType: !312, size: 32, offset: 192)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "clock_control_configure_fn", file: !131, line: 96, baseType: !313)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 32)
!314 = !DISubroutineType(types: !315)
!315 = !{!139, !150, !274, !138}
!316 = !{!0, !317, !319, !334, !7, !336, !347, !370, !373, !378, !391, !393, !402}
!317 = !DIGlobalVariableExpression(var: !318, expr: !DIExpression())
!318 = distinct !DIGlobalVariable(name: "__device_dts_ord_52", scope: !9, file: !2, line: 2337, type: !151, isLocal: false, isDefinition: true, align: 32)
!319 = !DIGlobalVariableExpression(var: !320, expr: !DIExpression())
!320 = distinct !DIGlobalVariable(name: "__init___device_dts_ord_52", scope: !9, file: !2, line: 2337, type: !321, isLocal: true, isDefinition: true, align: 32)
!321 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !322)
!322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "init_entry", file: !323, line: 92, size: 64, elements: !324)
!323 = !DIFile(filename: "include/zephyr/init.h", directory: "/home/sri/zephyrproject/zephyr")
!324 = !{!325, !333}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "init_fn", scope: !322, file: !323, line: 94, baseType: !326, size: 32)
!326 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "init_function", file: !323, line: 59, size: 32, elements: !327)
!327 = !{!328, !332}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "sys", scope: !326, file: !323, line: 66, baseType: !329, size: 32)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 32)
!330 = !DISubroutineType(types: !331)
!331 = !{!139}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !326, file: !323, line: 75, baseType: !198, size: 32)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !322, file: !323, line: 99, baseType: !150, size: 32, offset: 32)
!334 = !DIGlobalVariableExpression(var: !335, expr: !DIExpression())
!335 = distinct !DIGlobalVariable(name: "__devstate_dts_ord_52", scope: !9, file: !2, line: 2337, type: !164, isLocal: true, isDefinition: true, align: 8)
!336 = !DIGlobalVariableExpression(var: !337, expr: !DIExpression())
!337 = distinct !DIGlobalVariable(name: "pclken_0", scope: !9, file: !2, line: 2337, type: !338, isLocal: true, isDefinition: true)
!338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !339, size: 64, elements: !345)
!339 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !340)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stm32_pclken", file: !341, line: 396, size: 64, elements: !342)
!341 = !DIFile(filename: "include/zephyr/drivers/clock_control/stm32_clock_control.h", directory: "/home/sri/zephyrproject/zephyr")
!342 = !{!343, !344}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !340, file: !341, line: 397, baseType: !172, size: 32)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "enr", scope: !340, file: !341, line: 398, baseType: !172, size: 32, offset: 32)
!345 = !{!346}
!346 = !DISubrange(count: 1)
!347 = !DIGlobalVariableExpression(var: !348, expr: !DIExpression())
!348 = distinct !DIGlobalVariable(name: "__pinctrl_dev_config__device_dts_ord_52", scope: !9, file: !2, line: 2337, type: !349, isLocal: true, isDefinition: true)
!349 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !350)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl_dev_config", file: !351, line: 60, size: 64, elements: !352)
!351 = !DIFile(filename: "include/zephyr/drivers/pinctrl.h", directory: "/home/sri/zephyrproject/zephyr")
!352 = !{!353, !369}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !350, file: !351, line: 69, baseType: !354, size: 32)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 32)
!355 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !356)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl_state", file: !351, line: 50, size: 64, elements: !357)
!357 = !{!358, !367, !368}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "pins", scope: !356, file: !351, line: 52, baseType: !359, size: 32)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 32)
!360 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !361)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "pinctrl_soc_pin_t", file: !362, line: 37, baseType: !363)
!362 = !DIFile(filename: "soc/arm/st_stm32/common/pinctrl_soc.h", directory: "/home/sri/zephyrproject/zephyr")
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl_soc_pin", file: !362, line: 32, size: 64, elements: !364)
!364 = !{!365, !366}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "pinmux", scope: !363, file: !362, line: 34, baseType: !172, size: 32)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "pincfg", scope: !363, file: !362, line: 36, baseType: !172, size: 32, offset: 32)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "pin_cnt", scope: !356, file: !351, line: 54, baseType: !167, size: 8, offset: 32)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !356, file: !351, line: 56, baseType: !167, size: 8, offset: 40)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "state_cnt", scope: !350, file: !351, line: 71, baseType: !167, size: 8, offset: 32)
!370 = !DIGlobalVariableExpression(var: !371, expr: !DIExpression())
!371 = distinct !DIGlobalVariable(name: "__pinctrl_states__device_dts_ord_52", scope: !9, file: !2, line: 2337, type: !372, isLocal: true, isDefinition: true)
!372 = !DICompositeType(tag: DW_TAG_array_type, baseType: !355, size: 64, elements: !345)
!373 = !DIGlobalVariableExpression(var: !374, expr: !DIExpression())
!374 = distinct !DIGlobalVariable(name: "__pinctrl_state_pins_0__device_dts_ord_52", scope: !9, file: !2, line: 2337, type: !375, isLocal: true, isDefinition: true)
!375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !360, size: 128, elements: !376)
!376 = !{!377}
!377 = !DISubrange(count: 2)
!378 = !DIGlobalVariableExpression(var: !379, expr: !DIExpression())
!379 = distinct !DIGlobalVariable(name: "__isr_uart_stm32_isr_irq_0", scope: !380, file: !2, line: 2337, type: !383, isLocal: true, isDefinition: true, align: 32)
!380 = distinct !DISubprogram(name: "uart_stm32_irq_config_func_0", scope: !2, file: !2, line: 2337, type: !232, scopeLine: 2337, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !381)
!381 = !{!382}
!382 = !DILocalVariable(name: "dev", arg: 1, scope: !380, file: !2, line: 2337, type: !150)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_isr_list", file: !384, line: 53, size: 128, elements: !385)
!384 = !DIFile(filename: "include/zephyr/sw_isr_table.h", directory: "/home/sri/zephyrproject/zephyr")
!385 = !{!386, !388, !389, !390}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !383, file: !384, line: 55, baseType: !387, size: 32)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !168, line: 58, baseType: !139)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !383, file: !384, line: 57, baseType: !387, size: 32, offset: 32)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !383, file: !384, line: 59, baseType: !138, size: 32, offset: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !383, file: !384, line: 61, baseType: !159, size: 32, offset: 96)
!391 = !DIGlobalVariableExpression(var: !392, expr: !DIExpression())
!392 = distinct !DIGlobalVariable(name: "uart_stm32_driver_api", scope: !9, file: !2, line: 1798, type: !185, isLocal: true, isDefinition: true)
!393 = !DIGlobalVariableExpression(var: !394, expr: !DIExpression())
!394 = distinct !DIGlobalVariable(name: "uart_stm32_data_0", scope: !9, file: !2, line: 2337, type: !395, isLocal: true, isDefinition: true)
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uart_stm32_data", file: !396, line: 86, size: 128, elements: !397)
!396 = !DIFile(filename: "drivers/serial/uart_stm32.h", directory: "/home/sri/zephyrproject/zephyr")
!397 = !{!398, !399, !400, !401}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !395, file: !396, line: 88, baseType: !150, size: 32)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "uart_cfg", scope: !395, file: !396, line: 90, baseType: !218, size: 32, offset: 32)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "user_cb", scope: !395, file: !396, line: 92, baseType: !248, size: 32, offset: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !395, file: !396, line: 93, baseType: !138, size: 32, offset: 96)
!402 = !DIGlobalVariableExpression(var: !403, expr: !DIExpression())
!403 = distinct !DIGlobalVariable(name: "uart_cfg_0", scope: !9, file: !2, line: 2337, type: !207, isLocal: true, isDefinition: true)
!404 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !405)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uart_stm32_config", file: !396, line: 27, size: 288, elements: !406)
!406 = !{!407, !408, !414, !416, !419, !420, !421, !422, !423, !424, !425, !426, !427, !429}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "usart", scope: !405, file: !396, line: 29, baseType: !254, size: 32)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !405, file: !396, line: 31, baseType: !409, size: 64, offset: 32)
!409 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !410)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reset_dt_spec", file: !143, line: 32, size: 64, elements: !411)
!411 = !{!412, !413}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !410, file: !143, line: 34, baseType: !150, size: 32)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !410, file: !143, line: 36, baseType: !172, size: 32, offset: 32)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "pclken", scope: !405, file: !396, line: 33, baseType: !415, size: 32, offset: 96)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 32)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "pclk_len", scope: !405, file: !396, line: 35, baseType: !417, size: 32, offset: 128)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !418, line: 46, baseType: !173)
!418 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/lib/clang/17/include/stddef.h", directory: "")
!419 = !DIDerivedType(tag: DW_TAG_member, name: "single_wire", scope: !405, file: !396, line: 37, baseType: !170, size: 8, offset: 160)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "tx_rx_swap", scope: !405, file: !396, line: 39, baseType: !170, size: 8, offset: 168)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "rx_invert", scope: !405, file: !396, line: 41, baseType: !170, size: 8, offset: 176)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "tx_invert", scope: !405, file: !396, line: 43, baseType: !170, size: 8, offset: 184)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "de_enable", scope: !405, file: !396, line: 45, baseType: !170, size: 8, offset: 192)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "de_assert_time", scope: !405, file: !396, line: 47, baseType: !167, size: 8, offset: 200)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "de_deassert_time", scope: !405, file: !396, line: 49, baseType: !167, size: 8, offset: 208)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "de_invert", scope: !405, file: !396, line: 51, baseType: !170, size: 8, offset: 216)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "pcfg", scope: !405, file: !396, line: 53, baseType: !428, size: 32, offset: 224)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 32)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "irq_config_func", scope: !405, file: !396, line: 56, baseType: !430, size: 32, offset: 256)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "uart_irq_config_func_t", file: !96, line: 147, baseType: !231)
!431 = !{i32 7, !"Dwarf Version", i32 4}
!432 = !{i32 2, !"Debug Info Version", i32 3}
!433 = !{i32 1, !"wchar_size", i32 4}
!434 = !{i32 1, !"static_rwdata", i32 1}
!435 = !{i32 1, !"enumsize_buildattr", i32 1}
!436 = !{i32 1, !"armlib_unavailable", i32 0}
!437 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
!438 = distinct !DISubprogram(name: "z_impl_k_object_access_grant", scope: !13, file: !13, line: 223, type: !439, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !550)
!439 = !DISubroutineType(types: !440)
!440 = !{null, !159, !441}
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 32)
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_thread", file: !443, line: 250, size: 896, elements: !444)
!443 = !DIFile(filename: "include/zephyr/kernel/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!444 = !{!445, !510, !523, !524, !525, !526, !545}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !442, file: !443, line: 252, baseType: !446, size: 384)
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_base", file: !443, line: 58, size: 384, elements: !447)
!447 = !{!448, !474, !482, !483, !484, !495, !496, !497}
!448 = !DIDerivedType(tag: DW_TAG_member, scope: !446, file: !443, line: 61, baseType: !449, size: 64)
!449 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !446, file: !443, line: 61, size: 64, elements: !450)
!450 = !{!451, !467}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_dlist", scope: !449, file: !443, line: 62, baseType: !452, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dnode_t", file: !453, line: 55, baseType: !454)
!453 = !DIFile(filename: "include/zephyr/sys/dlist.h", directory: "/home/sri/zephyrproject/zephyr")
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_dnode", file: !453, line: 37, size: 64, elements: !455)
!455 = !{!456, !462}
!456 = !DIDerivedType(tag: DW_TAG_member, scope: !454, file: !453, line: 38, baseType: !457, size: 32)
!457 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !454, file: !453, line: 38, size: 32, elements: !458)
!458 = !{!459, !461}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !457, file: !453, line: 39, baseType: !460, size: 32)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 32)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !457, file: !453, line: 40, baseType: !460, size: 32)
!462 = !DIDerivedType(tag: DW_TAG_member, scope: !454, file: !453, line: 42, baseType: !463, size: 32, offset: 32)
!463 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !454, file: !453, line: 42, size: 32, elements: !464)
!464 = !{!465, !466}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !463, file: !453, line: 43, baseType: !460, size: 32)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !463, file: !453, line: 44, baseType: !460, size: 32)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_rb", scope: !449, file: !443, line: 63, baseType: !468, size: 64)
!468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rbnode", file: !469, line: 58, size: 64, elements: !470)
!469 = !DIFile(filename: "include/zephyr/sys/rb.h", directory: "/home/sri/zephyrproject/zephyr")
!470 = !{!471}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !468, file: !469, line: 60, baseType: !472, size: 64)
!472 = !DICompositeType(tag: DW_TAG_array_type, baseType: !473, size: 64, elements: !376)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 32)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "pended_on", scope: !446, file: !443, line: 69, baseType: !475, size: 32, offset: 64)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 32)
!476 = !DIDerivedType(tag: DW_TAG_typedef, name: "_wait_q_t", file: !477, line: 243, baseType: !478)
!477 = !DIFile(filename: "include/zephyr/kernel_structs.h", directory: "/home/sri/zephyrproject/zephyr")
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !477, line: 241, size: 64, elements: !479)
!479 = !{!480}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !478, file: !477, line: 242, baseType: !481, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dlist_t", file: !453, line: 51, baseType: !454)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "user_options", scope: !446, file: !443, line: 72, baseType: !167, size: 8, offset: 96)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "thread_state", scope: !446, file: !443, line: 75, baseType: !167, size: 8, offset: 104)
!484 = !DIDerivedType(tag: DW_TAG_member, scope: !446, file: !443, line: 91, baseType: !485, size: 16, offset: 112)
!485 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !446, file: !443, line: 91, size: 16, elements: !486)
!486 = !{!487, !494}
!487 = !DIDerivedType(tag: DW_TAG_member, scope: !485, file: !443, line: 92, baseType: !488, size: 16)
!488 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !485, file: !443, line: 92, size: 16, elements: !489)
!489 = !{!490, !493}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !488, file: !443, line: 97, baseType: !491, size: 8)
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !168, line: 56, baseType: !492)
!492 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "sched_locked", scope: !488, file: !443, line: 98, baseType: !167, size: 8, offset: 8)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "preempt", scope: !485, file: !443, line: 101, baseType: !252, size: 16)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "order_key", scope: !446, file: !443, line: 108, baseType: !172, size: 32, offset: 128)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "swap_data", scope: !446, file: !443, line: 132, baseType: !138, size: 32, offset: 160)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !446, file: !443, line: 136, baseType: !498, size: 192, offset: 192)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_timeout", file: !477, line: 254, size: 192, elements: !499)
!499 = !{!500, !501, !507}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !498, file: !477, line: 255, baseType: !452, size: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !498, file: !477, line: 256, baseType: !502, size: 32, offset: 64)
!502 = !DIDerivedType(tag: DW_TAG_typedef, name: "_timeout_func_t", file: !477, line: 252, baseType: !503)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 32)
!504 = !DISubroutineType(types: !505)
!505 = !{null, !506}
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 32)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "dticks", scope: !498, file: !477, line: 259, baseType: !508, size: 64, offset: 128)
!508 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !168, line: 59, baseType: !509)
!509 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "callee_saved", scope: !442, file: !443, line: 255, baseType: !511, size: 288, offset: 384)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_callee_saved", file: !512, line: 25, size: 288, elements: !513)
!512 = !DIFile(filename: "include/zephyr/arch/arm/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!513 = !{!514, !515, !516, !517, !518, !519, !520, !521, !522}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "v1", scope: !511, file: !512, line: 26, baseType: !172, size: 32)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "v2", scope: !511, file: !512, line: 27, baseType: !172, size: 32, offset: 32)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "v3", scope: !511, file: !512, line: 28, baseType: !172, size: 32, offset: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "v4", scope: !511, file: !512, line: 29, baseType: !172, size: 32, offset: 96)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "v5", scope: !511, file: !512, line: 30, baseType: !172, size: 32, offset: 128)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "v6", scope: !511, file: !512, line: 31, baseType: !172, size: 32, offset: 160)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "v7", scope: !511, file: !512, line: 32, baseType: !172, size: 32, offset: 192)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "v8", scope: !511, file: !512, line: 33, baseType: !172, size: 32, offset: 224)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "psp", scope: !511, file: !512, line: 34, baseType: !172, size: 32, offset: 256)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "init_data", scope: !442, file: !443, line: 258, baseType: !138, size: 32, offset: 672)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "join_queue", scope: !442, file: !443, line: 261, baseType: !476, size: 64, offset: 704)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "errno_var", scope: !442, file: !443, line: 302, baseType: !139, size: 32, offset: 768)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "resource_pool", scope: !442, file: !443, line: 333, baseType: !527, size: 32, offset: 800)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 32)
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_heap", file: !529, line: 5291, size: 160, elements: !530)
!529 = !DIFile(filename: "include/zephyr/kernel.h", directory: "/home/sri/zephyrproject/zephyr")
!530 = !{!531, !540, !541}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !528, file: !529, line: 5292, baseType: !532, size: 96)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sys_heap", file: !533, line: 56, size: 96, elements: !534)
!533 = !DIFile(filename: "include/zephyr/sys/sys_heap.h", directory: "/home/sri/zephyrproject/zephyr")
!534 = !{!535, !538, !539}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !532, file: !533, line: 57, baseType: !536, size: 32)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 32)
!537 = !DICompositeType(tag: DW_TAG_structure_type, name: "z_heap", file: !533, line: 57, flags: DIFlagFwdDecl)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "init_mem", scope: !532, file: !533, line: 58, baseType: !138, size: 32, offset: 32)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "init_bytes", scope: !532, file: !533, line: 59, baseType: !417, size: 32, offset: 64)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !528, file: !529, line: 5293, baseType: !476, size: 64, offset: 96)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !528, file: !529, line: 5294, baseType: !542, offset: 160)
!542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_spinlock", file: !543, line: 45, elements: !544)
!543 = !DIFile(filename: "include/zephyr/spinlock.h", directory: "/home/sri/zephyrproject/zephyr")
!544 = !{}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !442, file: !443, line: 355, baseType: !546, size: 64, offset: 832)
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_arch", file: !512, line: 60, size: 64, elements: !547)
!547 = !{!548, !549}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "basepri", scope: !546, file: !512, line: 63, baseType: !172, size: 32)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "swap_return_value", scope: !546, file: !512, line: 66, baseType: !172, size: 32, offset: 32)
!550 = !{!551, !552}
!551 = !DILocalVariable(name: "object", arg: 1, scope: !438, file: !13, line: 223, type: !159)
!552 = !DILocalVariable(name: "thread", arg: 2, scope: !438, file: !13, line: 224, type: !441)
!553 = !DILocation(line: 223, column: 61, scope: !438)
!554 = !DILocation(line: 224, column: 24, scope: !438)
!555 = !DILocation(line: 226, column: 9, scope: !438)
!556 = !DILocation(line: 227, column: 9, scope: !438)
!557 = !DILocation(line: 228, column: 1, scope: !438)
!558 = distinct !DISubprogram(name: "z_impl_k_object_release", scope: !13, file: !13, line: 243, type: !559, scopeLine: 244, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !561)
!559 = !DISubroutineType(types: !560)
!560 = !{null, !159}
!561 = !{!562}
!562 = !DILocalVariable(name: "object", arg: 1, scope: !558, file: !13, line: 243, type: !159)
!563 = !DILocation(line: 243, column: 56, scope: !558)
!564 = !DILocation(line: 245, column: 9, scope: !558)
!565 = !DILocation(line: 246, column: 1, scope: !558)
!566 = distinct !DISubprogram(name: "z_impl_k_object_alloc", scope: !13, file: !13, line: 359, type: !567, scopeLine: 360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !569)
!567 = !DISubroutineType(types: !568)
!568 = !{!138, !12}
!569 = !{!570}
!570 = !DILocalVariable(name: "otype", arg: 1, scope: !566, file: !13, line: 359, type: !12)
!571 = !DILocation(line: 359, column: 58, scope: !566)
!572 = !DILocation(line: 361, column: 9, scope: !566)
!573 = !DILocation(line: 363, column: 2, scope: !566)
!574 = distinct !DISubprogram(name: "z_impl_k_object_alloc_size", scope: !13, file: !13, line: 366, type: !575, scopeLine: 368, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !577)
!575 = !DISubroutineType(types: !576)
!576 = !{!138, !12, !417}
!577 = !{!578, !579}
!578 = !DILocalVariable(name: "otype", arg: 1, scope: !574, file: !13, line: 366, type: !12)
!579 = !DILocalVariable(name: "size", arg: 2, scope: !574, file: !13, line: 367, type: !417)
!580 = !DILocation(line: 366, column: 63, scope: !574)
!581 = !DILocation(line: 367, column: 13, scope: !574)
!582 = !DILocation(line: 369, column: 9, scope: !574)
!583 = !DILocation(line: 370, column: 9, scope: !574)
!584 = !DILocation(line: 372, column: 2, scope: !574)
!585 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_expires_ticks", scope: !529, file: !529, line: 656, type: !586, scopeLine: 658, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !592)
!586 = !DISubroutineType(types: !587)
!587 = !{!588, !590}
!588 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_ticks_t", file: !589, line: 46, baseType: !508)
!589 = !DIFile(filename: "include/zephyr/sys_clock.h", directory: "/home/sri/zephyrproject/zephyr")
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 32)
!591 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !442)
!592 = !{!593}
!593 = !DILocalVariable(name: "t", arg: 1, scope: !585, file: !529, line: 657, type: !590)
!594 = !DILocation(line: 657, column: 30, scope: !585)
!595 = !DILocation(line: 659, column: 28, scope: !585)
!596 = !DILocation(line: 659, column: 31, scope: !585)
!597 = !DILocation(line: 659, column: 36, scope: !585)
!598 = !DILocation(line: 659, column: 9, scope: !585)
!599 = !DILocation(line: 659, column: 2, scope: !585)
!600 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_remaining_ticks", scope: !529, file: !529, line: 671, type: !586, scopeLine: 673, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !601)
!601 = !{!602}
!602 = !DILocalVariable(name: "t", arg: 1, scope: !600, file: !529, line: 672, type: !590)
!603 = !DILocation(line: 672, column: 30, scope: !600)
!604 = !DILocation(line: 674, column: 30, scope: !600)
!605 = !DILocation(line: 674, column: 33, scope: !600)
!606 = !DILocation(line: 674, column: 38, scope: !600)
!607 = !DILocation(line: 674, column: 9, scope: !600)
!608 = !DILocation(line: 674, column: 2, scope: !600)
!609 = distinct !DISubprogram(name: "z_impl_k_timer_expires_ticks", scope: !529, file: !529, line: 1634, type: !610, scopeLine: 1636, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !631)
!610 = !DISubroutineType(types: !611)
!611 = !{!588, !612}
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 32)
!613 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !614)
!614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_timer", file: !529, line: 1439, size: 448, elements: !615)
!615 = !{!616, !617, !618, !623, !624, !629, !630}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !614, file: !529, line: 1445, baseType: !498, size: 192)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !614, file: !529, line: 1448, baseType: !476, size: 64, offset: 192)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_fn", scope: !614, file: !529, line: 1451, baseType: !619, size: 32, offset: 256)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 32)
!620 = !DISubroutineType(types: !621)
!621 = !{null, !622}
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 32)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "stop_fn", scope: !614, file: !529, line: 1454, baseType: !619, size: 32, offset: 288)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !614, file: !529, line: 1457, baseType: !625, size: 64, offset: 320)
!625 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_timeout_t", file: !589, line: 67, baseType: !626)
!626 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !589, line: 65, size: 64, elements: !627)
!627 = !{!628}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "ticks", scope: !626, file: !589, line: 66, baseType: !588, size: 64)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !614, file: !529, line: 1460, baseType: !172, size: 32, offset: 384)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !614, file: !529, line: 1463, baseType: !138, size: 32, offset: 416)
!631 = !{!632}
!632 = !DILocalVariable(name: "timer", arg: 1, scope: !609, file: !529, line: 1635, type: !612)
!633 = !DILocation(line: 1635, column: 34, scope: !609)
!634 = !DILocation(line: 1637, column: 28, scope: !609)
!635 = !DILocation(line: 1637, column: 35, scope: !609)
!636 = !DILocation(line: 1637, column: 9, scope: !609)
!637 = !DILocation(line: 1637, column: 2, scope: !609)
!638 = distinct !DISubprogram(name: "z_impl_k_timer_remaining_ticks", scope: !529, file: !529, line: 1649, type: !610, scopeLine: 1651, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !639)
!639 = !{!640}
!640 = !DILocalVariable(name: "timer", arg: 1, scope: !638, file: !529, line: 1650, type: !612)
!641 = !DILocation(line: 1650, column: 34, scope: !638)
!642 = !DILocation(line: 1652, column: 30, scope: !638)
!643 = !DILocation(line: 1652, column: 37, scope: !638)
!644 = !DILocation(line: 1652, column: 9, scope: !638)
!645 = !DILocation(line: 1652, column: 2, scope: !638)
!646 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_set", scope: !529, file: !529, line: 1689, type: !647, scopeLine: 1691, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !649)
!647 = !DISubroutineType(types: !648)
!648 = !{null, !622, !138}
!649 = !{!650, !651}
!650 = !DILocalVariable(name: "timer", arg: 1, scope: !646, file: !529, line: 1689, type: !622)
!651 = !DILocalVariable(name: "user_data", arg: 2, scope: !646, file: !529, line: 1690, type: !138)
!652 = !DILocation(line: 1689, column: 65, scope: !646)
!653 = !DILocation(line: 1690, column: 19, scope: !646)
!654 = !DILocation(line: 1692, column: 21, scope: !646)
!655 = !DILocation(line: 1692, column: 2, scope: !646)
!656 = !DILocation(line: 1692, column: 9, scope: !646)
!657 = !DILocation(line: 1692, column: 19, scope: !646)
!658 = !DILocation(line: 1693, column: 1, scope: !646)
!659 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_get", scope: !529, file: !529, line: 1704, type: !660, scopeLine: 1705, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !662)
!660 = !DISubroutineType(types: !661)
!661 = !{!138, !612}
!662 = !{!663}
!663 = !DILocalVariable(name: "timer", arg: 1, scope: !659, file: !529, line: 1704, type: !612)
!664 = !DILocation(line: 1704, column: 72, scope: !659)
!665 = !DILocation(line: 1706, column: 9, scope: !659)
!666 = !DILocation(line: 1706, column: 16, scope: !659)
!667 = !DILocation(line: 1706, column: 2, scope: !659)
!668 = distinct !DISubprogram(name: "z_impl_k_queue_is_empty", scope: !529, file: !529, line: 2071, type: !669, scopeLine: 2072, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !689)
!669 = !DISubroutineType(types: !670)
!670 = !{!139, !671}
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 32)
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_queue", file: !529, line: 1830, size: 128, elements: !673)
!673 = !{!674, !687, !688}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "data_q", scope: !672, file: !529, line: 1831, baseType: !675, size: 64)
!675 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sflist_t", file: !676, line: 60, baseType: !677)
!676 = !DIFile(filename: "include/zephyr/sys/sflist.h", directory: "/home/sri/zephyrproject/zephyr")
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sflist", file: !676, line: 53, size: 64, elements: !678)
!678 = !{!679, !686}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !677, file: !676, line: 54, baseType: !680, size: 32)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 32)
!681 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sfnode_t", file: !676, line: 50, baseType: !682)
!682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sfnode", file: !676, line: 44, size: 32, elements: !683)
!683 = !{!684}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "next_and_flags", scope: !682, file: !676, line: 45, baseType: !685, size: 32)
!685 = !DIDerivedType(tag: DW_TAG_typedef, name: "unative_t", file: !676, line: 40, baseType: !172)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !677, file: !676, line: 55, baseType: !680, size: 32, offset: 32)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !672, file: !529, line: 1832, baseType: !542, offset: 64)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !672, file: !529, line: 1833, baseType: !476, size: 64, offset: 64)
!689 = !{!690}
!690 = !DILocalVariable(name: "queue", arg: 1, scope: !668, file: !529, line: 2071, type: !671)
!691 = !DILocation(line: 2071, column: 59, scope: !668)
!692 = !DILocation(line: 2073, column: 35, scope: !668)
!693 = !DILocation(line: 2073, column: 42, scope: !668)
!694 = !DILocation(line: 2073, column: 14, scope: !668)
!695 = !DILocation(line: 2073, column: 9, scope: !668)
!696 = !DILocation(line: 2073, column: 2, scope: !668)
!697 = distinct !DISubprogram(name: "z_impl_k_sem_count_get", scope: !529, file: !529, line: 3209, type: !698, scopeLine: 3210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !706)
!698 = !DISubroutineType(types: !699)
!699 = !{!173, !700}
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 32)
!701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sem", file: !529, line: 3092, size: 128, elements: !702)
!702 = !{!703, !704, !705}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !701, file: !529, line: 3093, baseType: !476, size: 64)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !701, file: !529, line: 3094, baseType: !173, size: 32, offset: 64)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !701, file: !529, line: 3095, baseType: !173, size: 32, offset: 96)
!706 = !{!707}
!707 = !DILocalVariable(name: "sem", arg: 1, scope: !697, file: !529, line: 3209, type: !700)
!708 = !DILocation(line: 3209, column: 65, scope: !697)
!709 = !DILocation(line: 3211, column: 9, scope: !697)
!710 = !DILocation(line: 3211, column: 14, scope: !697)
!711 = !DILocation(line: 3211, column: 2, scope: !697)
!712 = distinct !DISubprogram(name: "z_impl_k_msgq_num_free_get", scope: !529, file: !529, line: 4649, type: !713, scopeLine: 4650, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !729)
!713 = !DISubroutineType(types: !714)
!714 = !{!172, !715}
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 32)
!716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_msgq", file: !529, line: 4390, size: 320, elements: !717)
!717 = !{!718, !719, !720, !721, !722, !724, !725, !726, !727, !728}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !716, file: !529, line: 4392, baseType: !476, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !716, file: !529, line: 4394, baseType: !542, offset: 64)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "msg_size", scope: !716, file: !529, line: 4396, baseType: !417, size: 32, offset: 64)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !716, file: !529, line: 4398, baseType: !172, size: 32, offset: 96)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_start", scope: !716, file: !529, line: 4400, baseType: !723, size: 32, offset: 128)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 32)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_end", scope: !716, file: !529, line: 4402, baseType: !723, size: 32, offset: 160)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "read_ptr", scope: !716, file: !529, line: 4404, baseType: !723, size: 32, offset: 192)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "write_ptr", scope: !716, file: !529, line: 4406, baseType: !723, size: 32, offset: 224)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "used_msgs", scope: !716, file: !529, line: 4408, baseType: !172, size: 32, offset: 256)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !716, file: !529, line: 4413, baseType: !167, size: 8, offset: 288)
!729 = !{!730}
!730 = !DILocalVariable(name: "msgq", arg: 1, scope: !712, file: !529, line: 4649, type: !715)
!731 = !DILocation(line: 4649, column: 66, scope: !712)
!732 = !DILocation(line: 4651, column: 9, scope: !712)
!733 = !DILocation(line: 4651, column: 15, scope: !712)
!734 = !DILocation(line: 4651, column: 26, scope: !712)
!735 = !DILocation(line: 4651, column: 32, scope: !712)
!736 = !DILocation(line: 4651, column: 24, scope: !712)
!737 = !DILocation(line: 4651, column: 2, scope: !712)
!738 = distinct !DISubprogram(name: "z_impl_k_msgq_num_used_get", scope: !529, file: !529, line: 4665, type: !713, scopeLine: 4666, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !739)
!739 = !{!740}
!740 = !DILocalVariable(name: "msgq", arg: 1, scope: !738, file: !529, line: 4665, type: !715)
!741 = !DILocation(line: 4665, column: 66, scope: !738)
!742 = !DILocation(line: 4667, column: 9, scope: !738)
!743 = !DILocation(line: 4667, column: 15, scope: !738)
!744 = !DILocation(line: 4667, column: 2, scope: !738)
!745 = distinct !DISubprogram(name: "z_impl_device_is_ready", scope: !153, file: !153, line: 744, type: !746, scopeLine: 745, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !748)
!746 = !DISubroutineType(types: !747)
!747 = !{!170, !150}
!748 = !{!749}
!749 = !DILocalVariable(name: "dev", arg: 1, scope: !745, file: !153, line: 744, type: !150)
!750 = !DILocation(line: 744, column: 65, scope: !745)
!751 = !DILocation(line: 746, column: 27, scope: !745)
!752 = !DILocation(line: 746, column: 9, scope: !745)
!753 = !DILocation(line: 746, column: 2, scope: !745)
!754 = distinct !DISubprogram(name: "z_impl_reset_status", scope: !143, file: !143, line: 164, type: !148, scopeLine: 165, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !755)
!755 = !{!756, !757, !758, !759}
!756 = !DILocalVariable(name: "dev", arg: 1, scope: !754, file: !143, line: 164, type: !150)
!757 = !DILocalVariable(name: "id", arg: 2, scope: !754, file: !143, line: 164, type: !172)
!758 = !DILocalVariable(name: "status", arg: 3, scope: !754, file: !143, line: 164, type: !174)
!759 = !DILocalVariable(name: "api", scope: !754, file: !143, line: 166, type: !140)
!760 = !DILocation(line: 164, column: 60, scope: !754)
!761 = !DILocation(line: 164, column: 74, scope: !754)
!762 = !DILocation(line: 164, column: 87, scope: !754)
!763 = !DILocation(line: 166, column: 2, scope: !754)
!764 = !DILocation(line: 166, column: 33, scope: !754)
!765 = !DILocation(line: 166, column: 72, scope: !754)
!766 = !DILocation(line: 166, column: 77, scope: !754)
!767 = !DILocation(line: 168, column: 6, scope: !768)
!768 = distinct !DILexicalBlock(scope: !754, file: !143, line: 168, column: 6)
!769 = !DILocation(line: 168, column: 11, scope: !768)
!770 = !DILocation(line: 168, column: 18, scope: !768)
!771 = !DILocation(line: 168, column: 6, scope: !754)
!772 = !DILocation(line: 169, column: 3, scope: !773)
!773 = distinct !DILexicalBlock(scope: !768, file: !143, line: 168, column: 33)
!774 = !DILocation(line: 172, column: 9, scope: !754)
!775 = !DILocation(line: 172, column: 14, scope: !754)
!776 = !DILocation(line: 172, column: 21, scope: !754)
!777 = !DILocation(line: 172, column: 26, scope: !754)
!778 = !DILocation(line: 172, column: 30, scope: !754)
!779 = !DILocation(line: 172, column: 2, scope: !754)
!780 = !DILocation(line: 173, column: 1, scope: !754)
!781 = distinct !DISubprogram(name: "z_impl_reset_line_assert", scope: !143, file: !143, line: 207, type: !178, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !782)
!782 = !{!783, !784, !785}
!783 = !DILocalVariable(name: "dev", arg: 1, scope: !781, file: !143, line: 207, type: !150)
!784 = !DILocalVariable(name: "id", arg: 2, scope: !781, file: !143, line: 207, type: !172)
!785 = !DILocalVariable(name: "api", scope: !781, file: !143, line: 209, type: !140)
!786 = !DILocation(line: 207, column: 65, scope: !781)
!787 = !DILocation(line: 207, column: 79, scope: !781)
!788 = !DILocation(line: 209, column: 2, scope: !781)
!789 = !DILocation(line: 209, column: 33, scope: !781)
!790 = !DILocation(line: 209, column: 72, scope: !781)
!791 = !DILocation(line: 209, column: 77, scope: !781)
!792 = !DILocation(line: 211, column: 6, scope: !793)
!793 = distinct !DILexicalBlock(scope: !781, file: !143, line: 211, column: 6)
!794 = !DILocation(line: 211, column: 11, scope: !793)
!795 = !DILocation(line: 211, column: 23, scope: !793)
!796 = !DILocation(line: 211, column: 6, scope: !781)
!797 = !DILocation(line: 212, column: 3, scope: !798)
!798 = distinct !DILexicalBlock(scope: !793, file: !143, line: 211, column: 38)
!799 = !DILocation(line: 215, column: 9, scope: !781)
!800 = !DILocation(line: 215, column: 14, scope: !781)
!801 = !DILocation(line: 215, column: 26, scope: !781)
!802 = !DILocation(line: 215, column: 31, scope: !781)
!803 = !DILocation(line: 215, column: 2, scope: !781)
!804 = !DILocation(line: 216, column: 1, scope: !781)
!805 = distinct !DISubprogram(name: "z_impl_reset_line_deassert", scope: !143, file: !143, line: 249, type: !178, scopeLine: 250, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !806)
!806 = !{!807, !808, !809}
!807 = !DILocalVariable(name: "dev", arg: 1, scope: !805, file: !143, line: 249, type: !150)
!808 = !DILocalVariable(name: "id", arg: 2, scope: !805, file: !143, line: 249, type: !172)
!809 = !DILocalVariable(name: "api", scope: !805, file: !143, line: 251, type: !140)
!810 = !DILocation(line: 249, column: 67, scope: !805)
!811 = !DILocation(line: 249, column: 81, scope: !805)
!812 = !DILocation(line: 251, column: 2, scope: !805)
!813 = !DILocation(line: 251, column: 33, scope: !805)
!814 = !DILocation(line: 251, column: 72, scope: !805)
!815 = !DILocation(line: 251, column: 77, scope: !805)
!816 = !DILocation(line: 253, column: 6, scope: !817)
!817 = distinct !DILexicalBlock(scope: !805, file: !143, line: 253, column: 6)
!818 = !DILocation(line: 253, column: 11, scope: !817)
!819 = !DILocation(line: 253, column: 25, scope: !817)
!820 = !DILocation(line: 253, column: 6, scope: !805)
!821 = !DILocation(line: 254, column: 3, scope: !822)
!822 = distinct !DILexicalBlock(scope: !817, file: !143, line: 253, column: 40)
!823 = !DILocation(line: 257, column: 9, scope: !805)
!824 = !DILocation(line: 257, column: 14, scope: !805)
!825 = !DILocation(line: 257, column: 28, scope: !805)
!826 = !DILocation(line: 257, column: 33, scope: !805)
!827 = !DILocation(line: 257, column: 2, scope: !805)
!828 = !DILocation(line: 258, column: 1, scope: !805)
!829 = distinct !DISubprogram(name: "z_impl_reset_line_toggle", scope: !143, file: !143, line: 290, type: !178, scopeLine: 291, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !830)
!830 = !{!831, !832, !833}
!831 = !DILocalVariable(name: "dev", arg: 1, scope: !829, file: !143, line: 290, type: !150)
!832 = !DILocalVariable(name: "id", arg: 2, scope: !829, file: !143, line: 290, type: !172)
!833 = !DILocalVariable(name: "api", scope: !829, file: !143, line: 292, type: !140)
!834 = !DILocation(line: 290, column: 65, scope: !829)
!835 = !DILocation(line: 290, column: 79, scope: !829)
!836 = !DILocation(line: 292, column: 2, scope: !829)
!837 = !DILocation(line: 292, column: 33, scope: !829)
!838 = !DILocation(line: 292, column: 72, scope: !829)
!839 = !DILocation(line: 292, column: 77, scope: !829)
!840 = !DILocation(line: 294, column: 6, scope: !841)
!841 = distinct !DILexicalBlock(scope: !829, file: !143, line: 294, column: 6)
!842 = !DILocation(line: 294, column: 11, scope: !841)
!843 = !DILocation(line: 294, column: 23, scope: !841)
!844 = !DILocation(line: 294, column: 6, scope: !829)
!845 = !DILocation(line: 295, column: 3, scope: !846)
!846 = distinct !DILexicalBlock(scope: !841, file: !143, line: 294, column: 38)
!847 = !DILocation(line: 298, column: 9, scope: !829)
!848 = !DILocation(line: 298, column: 14, scope: !829)
!849 = !DILocation(line: 298, column: 26, scope: !829)
!850 = !DILocation(line: 298, column: 31, scope: !829)
!851 = !DILocation(line: 298, column: 2, scope: !829)
!852 = !DILocation(line: 299, column: 1, scope: !829)
!853 = distinct !DISubprogram(name: "z_impl_uart_err_check", scope: !96, file: !96, line: 467, type: !199, scopeLine: 468, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !854)
!854 = !{!855, !856}
!855 = !DILocalVariable(name: "dev", arg: 1, scope: !853, file: !96, line: 467, type: !150)
!856 = !DILocalVariable(name: "api", scope: !853, file: !96, line: 469, type: !184)
!857 = !DILocation(line: 467, column: 62, scope: !853)
!858 = !DILocation(line: 469, column: 2, scope: !853)
!859 = !DILocation(line: 469, column: 32, scope: !853)
!860 = !DILocation(line: 470, column: 35, scope: !853)
!861 = !DILocation(line: 470, column: 40, scope: !853)
!862 = !DILocation(line: 472, column: 6, scope: !863)
!863 = distinct !DILexicalBlock(scope: !853, file: !96, line: 472, column: 6)
!864 = !DILocation(line: 472, column: 11, scope: !863)
!865 = !DILocation(line: 472, column: 21, scope: !863)
!866 = !DILocation(line: 472, column: 6, scope: !853)
!867 = !DILocation(line: 473, column: 3, scope: !868)
!868 = distinct !DILexicalBlock(scope: !863, file: !96, line: 472, column: 36)
!869 = !DILocation(line: 476, column: 9, scope: !853)
!870 = !DILocation(line: 476, column: 14, scope: !853)
!871 = !DILocation(line: 476, column: 24, scope: !853)
!872 = !DILocation(line: 476, column: 2, scope: !853)
!873 = !DILocation(line: 477, column: 1, scope: !853)
!874 = distinct !DISubprogram(name: "z_impl_uart_poll_in", scope: !96, file: !96, line: 504, type: !190, scopeLine: 506, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !875)
!875 = !{!876, !877, !878}
!876 = !DILocalVariable(name: "dev", arg: 1, scope: !874, file: !96, line: 504, type: !150)
!877 = !DILocalVariable(name: "p_char", arg: 2, scope: !874, file: !96, line: 505, type: !192)
!878 = !DILocalVariable(name: "api", scope: !874, file: !96, line: 507, type: !184)
!879 = !DILocation(line: 504, column: 60, scope: !874)
!880 = !DILocation(line: 505, column: 26, scope: !874)
!881 = !DILocation(line: 507, column: 2, scope: !874)
!882 = !DILocation(line: 507, column: 32, scope: !874)
!883 = !DILocation(line: 508, column: 35, scope: !874)
!884 = !DILocation(line: 508, column: 40, scope: !874)
!885 = !DILocation(line: 510, column: 6, scope: !886)
!886 = distinct !DILexicalBlock(scope: !874, file: !96, line: 510, column: 6)
!887 = !DILocation(line: 510, column: 11, scope: !886)
!888 = !DILocation(line: 510, column: 19, scope: !886)
!889 = !DILocation(line: 510, column: 6, scope: !874)
!890 = !DILocation(line: 511, column: 3, scope: !891)
!891 = distinct !DILexicalBlock(scope: !886, file: !96, line: 510, column: 34)
!892 = !DILocation(line: 514, column: 9, scope: !874)
!893 = !DILocation(line: 514, column: 14, scope: !874)
!894 = !DILocation(line: 514, column: 22, scope: !874)
!895 = !DILocation(line: 514, column: 27, scope: !874)
!896 = !DILocation(line: 514, column: 2, scope: !874)
!897 = !DILocation(line: 515, column: 1, scope: !874)
!898 = distinct !DISubprogram(name: "z_impl_uart_poll_in_u16", scope: !96, file: !96, line: 538, type: !899, scopeLine: 540, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !902)
!899 = !DISubroutineType(types: !900)
!900 = !{!139, !150, !901}
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 32)
!902 = !{!903, !904}
!903 = !DILocalVariable(name: "dev", arg: 1, scope: !898, file: !96, line: 538, type: !150)
!904 = !DILocalVariable(name: "p_u16", arg: 2, scope: !898, file: !96, line: 539, type: !901)
!905 = !DILocation(line: 538, column: 64, scope: !898)
!906 = !DILocation(line: 539, column: 18, scope: !898)
!907 = !DILocation(line: 551, column: 9, scope: !898)
!908 = !DILocation(line: 552, column: 9, scope: !898)
!909 = !DILocation(line: 553, column: 2, scope: !898)
!910 = distinct !DISubprogram(name: "z_impl_uart_poll_out", scope: !96, file: !96, line: 574, type: !195, scopeLine: 576, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !911)
!911 = !{!912, !913, !914}
!912 = !DILocalVariable(name: "dev", arg: 1, scope: !910, file: !96, line: 574, type: !150)
!913 = !DILocalVariable(name: "out_char", arg: 2, scope: !910, file: !96, line: 575, type: !14)
!914 = !DILocalVariable(name: "api", scope: !910, file: !96, line: 577, type: !184)
!915 = !DILocation(line: 574, column: 62, scope: !910)
!916 = !DILocation(line: 575, column: 20, scope: !910)
!917 = !DILocation(line: 577, column: 2, scope: !910)
!918 = !DILocation(line: 577, column: 32, scope: !910)
!919 = !DILocation(line: 578, column: 35, scope: !910)
!920 = !DILocation(line: 578, column: 40, scope: !910)
!921 = !DILocation(line: 580, column: 2, scope: !910)
!922 = !DILocation(line: 580, column: 7, scope: !910)
!923 = !DILocation(line: 580, column: 16, scope: !910)
!924 = !DILocation(line: 580, column: 21, scope: !910)
!925 = !DILocation(line: 581, column: 1, scope: !910)
!926 = distinct !DISubprogram(name: "z_impl_uart_poll_out_u16", scope: !96, file: !96, line: 599, type: !927, scopeLine: 601, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !929)
!927 = !DISubroutineType(types: !928)
!928 = !{null, !150, !252}
!929 = !{!930, !931}
!930 = !DILocalVariable(name: "dev", arg: 1, scope: !926, file: !96, line: 599, type: !150)
!931 = !DILocalVariable(name: "out_u16", arg: 2, scope: !926, file: !96, line: 600, type: !252)
!932 = !DILocation(line: 599, column: 66, scope: !926)
!933 = !DILocation(line: 600, column: 19, scope: !926)
!934 = !DILocation(line: 608, column: 9, scope: !926)
!935 = !DILocation(line: 609, column: 9, scope: !926)
!936 = !DILocation(line: 611, column: 1, scope: !926)
!937 = distinct !DISubprogram(name: "z_impl_uart_configure", scope: !96, file: !96, line: 634, type: !203, scopeLine: 636, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !938)
!938 = !{!939, !940, !941}
!939 = !DILocalVariable(name: "dev", arg: 1, scope: !937, file: !96, line: 634, type: !150)
!940 = !DILocalVariable(name: "cfg", arg: 2, scope: !937, file: !96, line: 635, type: !205)
!941 = !DILocalVariable(name: "api", scope: !937, file: !96, line: 638, type: !184)
!942 = !DILocation(line: 634, column: 62, scope: !937)
!943 = !DILocation(line: 635, column: 32, scope: !937)
!944 = !DILocation(line: 638, column: 2, scope: !937)
!945 = !DILocation(line: 638, column: 32, scope: !937)
!946 = !DILocation(line: 639, column: 37, scope: !937)
!947 = !DILocation(line: 639, column: 42, scope: !937)
!948 = !DILocation(line: 641, column: 6, scope: !949)
!949 = distinct !DILexicalBlock(scope: !937, file: !96, line: 641, column: 6)
!950 = !DILocation(line: 641, column: 11, scope: !949)
!951 = !DILocation(line: 641, column: 21, scope: !949)
!952 = !DILocation(line: 641, column: 6, scope: !937)
!953 = !DILocation(line: 642, column: 3, scope: !954)
!954 = distinct !DILexicalBlock(scope: !949, file: !96, line: 641, column: 36)
!955 = !DILocation(line: 644, column: 9, scope: !937)
!956 = !DILocation(line: 644, column: 14, scope: !937)
!957 = !DILocation(line: 644, column: 24, scope: !937)
!958 = !DILocation(line: 644, column: 29, scope: !937)
!959 = !DILocation(line: 644, column: 2, scope: !937)
!960 = !DILocation(line: 650, column: 1, scope: !937)
!961 = distinct !DISubprogram(name: "z_impl_uart_config_get", scope: !96, file: !96, line: 669, type: !216, scopeLine: 671, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !962)
!962 = !{!963, !964, !965}
!963 = !DILocalVariable(name: "dev", arg: 1, scope: !961, file: !96, line: 669, type: !150)
!964 = !DILocalVariable(name: "cfg", arg: 2, scope: !961, file: !96, line: 670, type: !218)
!965 = !DILocalVariable(name: "api", scope: !961, file: !96, line: 673, type: !184)
!966 = !DILocation(line: 669, column: 63, scope: !961)
!967 = !DILocation(line: 670, column: 27, scope: !961)
!968 = !DILocation(line: 673, column: 2, scope: !961)
!969 = !DILocation(line: 673, column: 32, scope: !961)
!970 = !DILocation(line: 674, column: 37, scope: !961)
!971 = !DILocation(line: 674, column: 42, scope: !961)
!972 = !DILocation(line: 676, column: 6, scope: !973)
!973 = distinct !DILexicalBlock(scope: !961, file: !96, line: 676, column: 6)
!974 = !DILocation(line: 676, column: 11, scope: !973)
!975 = !DILocation(line: 676, column: 22, scope: !973)
!976 = !DILocation(line: 676, column: 6, scope: !961)
!977 = !DILocation(line: 677, column: 3, scope: !978)
!978 = distinct !DILexicalBlock(scope: !973, file: !96, line: 676, column: 37)
!979 = !DILocation(line: 680, column: 9, scope: !961)
!980 = !DILocation(line: 680, column: 14, scope: !961)
!981 = !DILocation(line: 680, column: 25, scope: !961)
!982 = !DILocation(line: 680, column: 30, scope: !961)
!983 = !DILocation(line: 680, column: 2, scope: !961)
!984 = !DILocation(line: 686, column: 1, scope: !961)
!985 = distinct !DISubprogram(name: "z_impl_uart_irq_tx_enable", scope: !96, file: !96, line: 865, type: !232, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !986)
!986 = !{!987, !988}
!987 = !DILocalVariable(name: "dev", arg: 1, scope: !985, file: !96, line: 865, type: !150)
!988 = !DILocalVariable(name: "api", scope: !985, file: !96, line: 868, type: !184)
!989 = !DILocation(line: 865, column: 67, scope: !985)
!990 = !DILocation(line: 868, column: 2, scope: !985)
!991 = !DILocation(line: 868, column: 32, scope: !985)
!992 = !DILocation(line: 869, column: 35, scope: !985)
!993 = !DILocation(line: 869, column: 40, scope: !985)
!994 = !DILocation(line: 871, column: 6, scope: !995)
!995 = distinct !DILexicalBlock(scope: !985, file: !96, line: 871, column: 6)
!996 = !DILocation(line: 871, column: 11, scope: !995)
!997 = !DILocation(line: 871, column: 25, scope: !995)
!998 = !DILocation(line: 871, column: 6, scope: !985)
!999 = !DILocation(line: 872, column: 3, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !995, file: !96, line: 871, column: 40)
!1001 = !DILocation(line: 872, column: 8, scope: !1000)
!1002 = !DILocation(line: 872, column: 22, scope: !1000)
!1003 = !DILocation(line: 873, column: 2, scope: !1000)
!1004 = !DILocation(line: 877, column: 1, scope: !985)
!1005 = distinct !DISubprogram(name: "z_impl_uart_irq_tx_disable", scope: !96, file: !96, line: 886, type: !232, scopeLine: 887, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1006)
!1006 = !{!1007, !1008}
!1007 = !DILocalVariable(name: "dev", arg: 1, scope: !1005, file: !96, line: 886, type: !150)
!1008 = !DILocalVariable(name: "api", scope: !1005, file: !96, line: 889, type: !184)
!1009 = !DILocation(line: 886, column: 68, scope: !1005)
!1010 = !DILocation(line: 889, column: 2, scope: !1005)
!1011 = !DILocation(line: 889, column: 32, scope: !1005)
!1012 = !DILocation(line: 890, column: 35, scope: !1005)
!1013 = !DILocation(line: 890, column: 40, scope: !1005)
!1014 = !DILocation(line: 892, column: 6, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !1005, file: !96, line: 892, column: 6)
!1016 = !DILocation(line: 892, column: 11, scope: !1015)
!1017 = !DILocation(line: 892, column: 26, scope: !1015)
!1018 = !DILocation(line: 892, column: 6, scope: !1005)
!1019 = !DILocation(line: 893, column: 3, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !1015, file: !96, line: 892, column: 41)
!1021 = !DILocation(line: 893, column: 8, scope: !1020)
!1022 = !DILocation(line: 893, column: 23, scope: !1020)
!1023 = !DILocation(line: 894, column: 2, scope: !1020)
!1024 = !DILocation(line: 898, column: 1, scope: !1005)
!1025 = distinct !DISubprogram(name: "z_impl_uart_irq_rx_enable", scope: !96, file: !96, line: 942, type: !232, scopeLine: 943, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1026)
!1026 = !{!1027, !1028}
!1027 = !DILocalVariable(name: "dev", arg: 1, scope: !1025, file: !96, line: 942, type: !150)
!1028 = !DILocalVariable(name: "api", scope: !1025, file: !96, line: 945, type: !184)
!1029 = !DILocation(line: 942, column: 67, scope: !1025)
!1030 = !DILocation(line: 945, column: 2, scope: !1025)
!1031 = !DILocation(line: 945, column: 32, scope: !1025)
!1032 = !DILocation(line: 946, column: 35, scope: !1025)
!1033 = !DILocation(line: 946, column: 40, scope: !1025)
!1034 = !DILocation(line: 948, column: 6, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !1025, file: !96, line: 948, column: 6)
!1036 = !DILocation(line: 948, column: 11, scope: !1035)
!1037 = !DILocation(line: 948, column: 25, scope: !1035)
!1038 = !DILocation(line: 948, column: 6, scope: !1025)
!1039 = !DILocation(line: 949, column: 3, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !1035, file: !96, line: 948, column: 40)
!1041 = !DILocation(line: 949, column: 8, scope: !1040)
!1042 = !DILocation(line: 949, column: 22, scope: !1040)
!1043 = !DILocation(line: 950, column: 2, scope: !1040)
!1044 = !DILocation(line: 954, column: 1, scope: !1025)
!1045 = distinct !DISubprogram(name: "z_impl_uart_irq_rx_disable", scope: !96, file: !96, line: 963, type: !232, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1046)
!1046 = !{!1047, !1048}
!1047 = !DILocalVariable(name: "dev", arg: 1, scope: !1045, file: !96, line: 963, type: !150)
!1048 = !DILocalVariable(name: "api", scope: !1045, file: !96, line: 966, type: !184)
!1049 = !DILocation(line: 963, column: 68, scope: !1045)
!1050 = !DILocation(line: 966, column: 2, scope: !1045)
!1051 = !DILocation(line: 966, column: 32, scope: !1045)
!1052 = !DILocation(line: 967, column: 35, scope: !1045)
!1053 = !DILocation(line: 967, column: 40, scope: !1045)
!1054 = !DILocation(line: 969, column: 6, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !1045, file: !96, line: 969, column: 6)
!1056 = !DILocation(line: 969, column: 11, scope: !1055)
!1057 = !DILocation(line: 969, column: 26, scope: !1055)
!1058 = !DILocation(line: 969, column: 6, scope: !1045)
!1059 = !DILocation(line: 970, column: 3, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1055, file: !96, line: 969, column: 41)
!1061 = !DILocation(line: 970, column: 8, scope: !1060)
!1062 = !DILocation(line: 970, column: 23, scope: !1060)
!1063 = !DILocation(line: 971, column: 2, scope: !1060)
!1064 = !DILocation(line: 975, column: 1, scope: !1045)
!1065 = distinct !DISubprogram(name: "z_impl_uart_irq_err_enable", scope: !96, file: !96, line: 1054, type: !232, scopeLine: 1055, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1066)
!1066 = !{!1067, !1068}
!1067 = !DILocalVariable(name: "dev", arg: 1, scope: !1065, file: !96, line: 1054, type: !150)
!1068 = !DILocalVariable(name: "api", scope: !1065, file: !96, line: 1057, type: !184)
!1069 = !DILocation(line: 1054, column: 68, scope: !1065)
!1070 = !DILocation(line: 1057, column: 2, scope: !1065)
!1071 = !DILocation(line: 1057, column: 32, scope: !1065)
!1072 = !DILocation(line: 1058, column: 35, scope: !1065)
!1073 = !DILocation(line: 1058, column: 40, scope: !1065)
!1074 = !DILocation(line: 1060, column: 6, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !1065, file: !96, line: 1060, column: 6)
!1076 = !DILocation(line: 1060, column: 11, scope: !1075)
!1077 = !DILocation(line: 1060, column: 6, scope: !1065)
!1078 = !DILocation(line: 1061, column: 3, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !1075, file: !96, line: 1060, column: 27)
!1080 = !DILocation(line: 1061, column: 8, scope: !1079)
!1081 = !DILocation(line: 1061, column: 23, scope: !1079)
!1082 = !DILocation(line: 1062, column: 2, scope: !1079)
!1083 = !DILocation(line: 1066, column: 1, scope: !1065)
!1084 = distinct !DISubprogram(name: "z_impl_uart_irq_err_disable", scope: !96, file: !96, line: 1075, type: !232, scopeLine: 1076, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1085)
!1085 = !{!1086, !1087}
!1086 = !DILocalVariable(name: "dev", arg: 1, scope: !1084, file: !96, line: 1075, type: !150)
!1087 = !DILocalVariable(name: "api", scope: !1084, file: !96, line: 1078, type: !184)
!1088 = !DILocation(line: 1075, column: 69, scope: !1084)
!1089 = !DILocation(line: 1078, column: 2, scope: !1084)
!1090 = !DILocation(line: 1078, column: 32, scope: !1084)
!1091 = !DILocation(line: 1079, column: 35, scope: !1084)
!1092 = !DILocation(line: 1079, column: 40, scope: !1084)
!1093 = !DILocation(line: 1081, column: 6, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !1084, file: !96, line: 1081, column: 6)
!1095 = !DILocation(line: 1081, column: 11, scope: !1094)
!1096 = !DILocation(line: 1081, column: 6, scope: !1084)
!1097 = !DILocation(line: 1082, column: 3, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !1094, file: !96, line: 1081, column: 28)
!1099 = !DILocation(line: 1082, column: 8, scope: !1098)
!1100 = !DILocation(line: 1082, column: 24, scope: !1098)
!1101 = !DILocation(line: 1083, column: 2, scope: !1098)
!1102 = !DILocation(line: 1087, column: 1, scope: !1084)
!1103 = distinct !DISubprogram(name: "z_impl_uart_irq_is_pending", scope: !96, file: !96, line: 1101, type: !199, scopeLine: 1102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1104)
!1104 = !{!1105, !1106}
!1105 = !DILocalVariable(name: "dev", arg: 1, scope: !1103, file: !96, line: 1101, type: !150)
!1106 = !DILocalVariable(name: "api", scope: !1103, file: !96, line: 1104, type: !184)
!1107 = !DILocation(line: 1101, column: 67, scope: !1103)
!1108 = !DILocation(line: 1104, column: 2, scope: !1103)
!1109 = !DILocation(line: 1104, column: 32, scope: !1103)
!1110 = !DILocation(line: 1105, column: 35, scope: !1103)
!1111 = !DILocation(line: 1105, column: 40, scope: !1103)
!1112 = !DILocation(line: 1107, column: 6, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1103, file: !96, line: 1107, column: 6)
!1114 = !DILocation(line: 1107, column: 11, scope: !1113)
!1115 = !DILocation(line: 1107, column: 26, scope: !1113)
!1116 = !DILocation(line: 1107, column: 6, scope: !1103)
!1117 = !DILocation(line: 1108, column: 3, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !1113, file: !96, line: 1107, column: 41)
!1119 = !DILocation(line: 1110, column: 9, scope: !1103)
!1120 = !DILocation(line: 1110, column: 14, scope: !1103)
!1121 = !DILocation(line: 1110, column: 29, scope: !1103)
!1122 = !DILocation(line: 1110, column: 2, scope: !1103)
!1123 = !DILocation(line: 1115, column: 1, scope: !1103)
!1124 = distinct !DISubprogram(name: "z_impl_uart_irq_update", scope: !96, file: !96, line: 1144, type: !199, scopeLine: 1145, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1125)
!1125 = !{!1126, !1127}
!1126 = !DILocalVariable(name: "dev", arg: 1, scope: !1124, file: !96, line: 1144, type: !150)
!1127 = !DILocalVariable(name: "api", scope: !1124, file: !96, line: 1147, type: !184)
!1128 = !DILocation(line: 1144, column: 63, scope: !1124)
!1129 = !DILocation(line: 1147, column: 2, scope: !1124)
!1130 = !DILocation(line: 1147, column: 32, scope: !1124)
!1131 = !DILocation(line: 1148, column: 35, scope: !1124)
!1132 = !DILocation(line: 1148, column: 40, scope: !1124)
!1133 = !DILocation(line: 1150, column: 6, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1124, file: !96, line: 1150, column: 6)
!1135 = !DILocation(line: 1150, column: 11, scope: !1134)
!1136 = !DILocation(line: 1150, column: 22, scope: !1134)
!1137 = !DILocation(line: 1150, column: 6, scope: !1124)
!1138 = !DILocation(line: 1151, column: 3, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !1134, file: !96, line: 1150, column: 37)
!1140 = !DILocation(line: 1153, column: 9, scope: !1124)
!1141 = !DILocation(line: 1153, column: 14, scope: !1124)
!1142 = !DILocation(line: 1153, column: 25, scope: !1124)
!1143 = !DILocation(line: 1153, column: 2, scope: !1124)
!1144 = !DILocation(line: 1158, column: 1, scope: !1124)
!1145 = distinct !DISubprogram(name: "z_impl_uart_tx", scope: !96, file: !96, line: 1282, type: !1146, scopeLine: 1285, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1148)
!1146 = !DISubroutineType(types: !1147)
!1147 = !{!139, !150, !223, !417, !387}
!1148 = !{!1149, !1150, !1151, !1152}
!1149 = !DILocalVariable(name: "dev", arg: 1, scope: !1145, file: !96, line: 1282, type: !150)
!1150 = !DILocalVariable(name: "buf", arg: 2, scope: !1145, file: !96, line: 1282, type: !223)
!1151 = !DILocalVariable(name: "len", arg: 3, scope: !1145, file: !96, line: 1283, type: !417)
!1152 = !DILocalVariable(name: "timeout", arg: 4, scope: !1145, file: !96, line: 1283, type: !387)
!1153 = !DILocation(line: 1282, column: 55, scope: !1145)
!1154 = !DILocation(line: 1282, column: 75, scope: !1145)
!1155 = !DILocation(line: 1283, column: 13, scope: !1145)
!1156 = !DILocation(line: 1283, column: 26, scope: !1145)
!1157 = !DILocation(line: 1292, column: 9, scope: !1145)
!1158 = !DILocation(line: 1293, column: 9, scope: !1145)
!1159 = !DILocation(line: 1294, column: 9, scope: !1145)
!1160 = !DILocation(line: 1295, column: 9, scope: !1145)
!1161 = !DILocation(line: 1296, column: 2, scope: !1145)
!1162 = distinct !DISubprogram(name: "z_impl_uart_tx_u16", scope: !96, file: !96, line: 1320, type: !1163, scopeLine: 1324, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1167)
!1163 = !DISubroutineType(types: !1164)
!1164 = !{!139, !150, !1165, !417, !387}
!1165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1166, size: 32)
!1166 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !252)
!1167 = !{!1168, !1169, !1170, !1171}
!1168 = !DILocalVariable(name: "dev", arg: 1, scope: !1162, file: !96, line: 1320, type: !150)
!1169 = !DILocalVariable(name: "buf", arg: 2, scope: !1162, file: !96, line: 1321, type: !1165)
!1170 = !DILocalVariable(name: "len", arg: 3, scope: !1162, file: !96, line: 1322, type: !417)
!1171 = !DILocalVariable(name: "timeout", arg: 4, scope: !1162, file: !96, line: 1322, type: !387)
!1172 = !DILocation(line: 1320, column: 59, scope: !1162)
!1173 = !DILocation(line: 1321, column: 26, scope: !1162)
!1174 = !DILocation(line: 1322, column: 17, scope: !1162)
!1175 = !DILocation(line: 1322, column: 30, scope: !1162)
!1176 = !DILocation(line: 1331, column: 9, scope: !1162)
!1177 = !DILocation(line: 1332, column: 9, scope: !1162)
!1178 = !DILocation(line: 1333, column: 9, scope: !1162)
!1179 = !DILocation(line: 1334, column: 9, scope: !1162)
!1180 = !DILocation(line: 1335, column: 2, scope: !1162)
!1181 = distinct !DISubprogram(name: "z_impl_uart_tx_abort", scope: !96, file: !96, line: 1353, type: !199, scopeLine: 1354, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1182)
!1182 = !{!1183}
!1183 = !DILocalVariable(name: "dev", arg: 1, scope: !1181, file: !96, line: 1353, type: !150)
!1184 = !DILocation(line: 1353, column: 61, scope: !1181)
!1185 = !DILocation(line: 1361, column: 9, scope: !1181)
!1186 = !DILocation(line: 1362, column: 2, scope: !1181)
!1187 = distinct !DISubprogram(name: "z_impl_uart_rx_enable", scope: !96, file: !96, line: 1391, type: !1188, scopeLine: 1394, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1190)
!1188 = !DISubroutineType(types: !1189)
!1189 = !{!139, !150, !174, !417, !387}
!1190 = !{!1191, !1192, !1193, !1194}
!1191 = !DILocalVariable(name: "dev", arg: 1, scope: !1187, file: !96, line: 1391, type: !150)
!1192 = !DILocalVariable(name: "buf", arg: 2, scope: !1187, file: !96, line: 1392, type: !174)
!1193 = !DILocalVariable(name: "len", arg: 3, scope: !1187, file: !96, line: 1393, type: !417)
!1194 = !DILocalVariable(name: "timeout", arg: 4, scope: !1187, file: !96, line: 1393, type: !387)
!1195 = !DILocation(line: 1391, column: 62, scope: !1187)
!1196 = !DILocation(line: 1392, column: 15, scope: !1187)
!1197 = !DILocation(line: 1393, column: 13, scope: !1187)
!1198 = !DILocation(line: 1393, column: 26, scope: !1187)
!1199 = !DILocation(line: 1401, column: 9, scope: !1187)
!1200 = !DILocation(line: 1402, column: 9, scope: !1187)
!1201 = !DILocation(line: 1403, column: 9, scope: !1187)
!1202 = !DILocation(line: 1404, column: 9, scope: !1187)
!1203 = !DILocation(line: 1405, column: 2, scope: !1187)
!1204 = distinct !DISubprogram(name: "z_impl_uart_rx_enable_u16", scope: !96, file: !96, line: 1433, type: !1205, scopeLine: 1436, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1207)
!1205 = !DISubroutineType(types: !1206)
!1206 = !{!139, !150, !901, !417, !387}
!1207 = !{!1208, !1209, !1210, !1211}
!1208 = !DILocalVariable(name: "dev", arg: 1, scope: !1204, file: !96, line: 1433, type: !150)
!1209 = !DILocalVariable(name: "buf", arg: 2, scope: !1204, file: !96, line: 1434, type: !901)
!1210 = !DILocalVariable(name: "len", arg: 3, scope: !1204, file: !96, line: 1434, type: !417)
!1211 = !DILocalVariable(name: "timeout", arg: 4, scope: !1204, file: !96, line: 1435, type: !387)
!1212 = !DILocation(line: 1433, column: 66, scope: !1204)
!1213 = !DILocation(line: 1434, column: 20, scope: !1204)
!1214 = !DILocation(line: 1434, column: 32, scope: !1204)
!1215 = !DILocation(line: 1435, column: 18, scope: !1204)
!1216 = !DILocation(line: 1443, column: 9, scope: !1204)
!1217 = !DILocation(line: 1444, column: 9, scope: !1204)
!1218 = !DILocation(line: 1445, column: 9, scope: !1204)
!1219 = !DILocation(line: 1446, column: 9, scope: !1204)
!1220 = !DILocation(line: 1447, column: 2, scope: !1204)
!1221 = distinct !DISubprogram(name: "z_impl_uart_rx_disable", scope: !96, file: !96, line: 1541, type: !199, scopeLine: 1542, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1222)
!1222 = !{!1223}
!1223 = !DILocalVariable(name: "dev", arg: 1, scope: !1221, file: !96, line: 1541, type: !150)
!1224 = !DILocation(line: 1541, column: 63, scope: !1221)
!1225 = !DILocation(line: 1549, column: 9, scope: !1221)
!1226 = !DILocation(line: 1550, column: 2, scope: !1221)
!1227 = distinct !DISubprogram(name: "z_impl_uart_line_ctrl_set", scope: !96, file: !96, line: 1573, type: !1228, scopeLine: 1575, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1230)
!1228 = !DISubroutineType(types: !1229)
!1229 = !{!139, !150, !172, !172}
!1230 = !{!1231, !1232, !1233}
!1231 = !DILocalVariable(name: "dev", arg: 1, scope: !1227, file: !96, line: 1573, type: !150)
!1232 = !DILocalVariable(name: "ctrl", arg: 2, scope: !1227, file: !96, line: 1574, type: !172)
!1233 = !DILocalVariable(name: "val", arg: 3, scope: !1227, file: !96, line: 1574, type: !172)
!1234 = !DILocation(line: 1573, column: 66, scope: !1227)
!1235 = !DILocation(line: 1574, column: 19, scope: !1227)
!1236 = !DILocation(line: 1574, column: 34, scope: !1227)
!1237 = !DILocation(line: 1585, column: 9, scope: !1227)
!1238 = !DILocation(line: 1586, column: 9, scope: !1227)
!1239 = !DILocation(line: 1587, column: 9, scope: !1227)
!1240 = !DILocation(line: 1588, column: 2, scope: !1227)
!1241 = distinct !DISubprogram(name: "z_impl_uart_line_ctrl_get", scope: !96, file: !96, line: 1607, type: !1242, scopeLine: 1609, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1244)
!1242 = !DISubroutineType(types: !1243)
!1243 = !{!139, !150, !172, !299}
!1244 = !{!1245, !1246, !1247}
!1245 = !DILocalVariable(name: "dev", arg: 1, scope: !1241, file: !96, line: 1607, type: !150)
!1246 = !DILocalVariable(name: "ctrl", arg: 2, scope: !1241, file: !96, line: 1608, type: !172)
!1247 = !DILocalVariable(name: "val", arg: 3, scope: !1241, file: !96, line: 1608, type: !299)
!1248 = !DILocation(line: 1607, column: 66, scope: !1241)
!1249 = !DILocation(line: 1608, column: 19, scope: !1241)
!1250 = !DILocation(line: 1608, column: 35, scope: !1241)
!1251 = !DILocation(line: 1619, column: 9, scope: !1241)
!1252 = !DILocation(line: 1620, column: 9, scope: !1241)
!1253 = !DILocation(line: 1621, column: 9, scope: !1241)
!1254 = !DILocation(line: 1622, column: 2, scope: !1241)
!1255 = distinct !DISubprogram(name: "z_impl_uart_drv_cmd", scope: !96, file: !96, line: 1643, type: !1228, scopeLine: 1645, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1256)
!1256 = !{!1257, !1258, !1259}
!1257 = !DILocalVariable(name: "dev", arg: 1, scope: !1255, file: !96, line: 1643, type: !150)
!1258 = !DILocalVariable(name: "cmd", arg: 2, scope: !1255, file: !96, line: 1643, type: !172)
!1259 = !DILocalVariable(name: "p", arg: 3, scope: !1255, file: !96, line: 1644, type: !172)
!1260 = !DILocation(line: 1643, column: 60, scope: !1255)
!1261 = !DILocation(line: 1643, column: 74, scope: !1255)
!1262 = !DILocation(line: 1644, column: 20, scope: !1255)
!1263 = !DILocation(line: 1655, column: 9, scope: !1255)
!1264 = !DILocation(line: 1656, column: 9, scope: !1255)
!1265 = !DILocation(line: 1657, column: 9, scope: !1255)
!1266 = !DILocation(line: 1658, column: 2, scope: !1255)
!1267 = distinct !DISubprogram(name: "uart_stm32_init", scope: !2, file: !2, line: 1968, type: !199, scopeLine: 1969, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1268)
!1268 = !{!1269, !1270, !1272}
!1269 = !DILocalVariable(name: "dev", arg: 1, scope: !1267, file: !2, line: 1968, type: !150)
!1270 = !DILocalVariable(name: "config", scope: !1267, file: !2, line: 1970, type: !1271)
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 32)
!1272 = !DILocalVariable(name: "err", scope: !1267, file: !2, line: 1971, type: !139)
!1273 = !DILocation(line: 1968, column: 49, scope: !1267)
!1274 = !DILocation(line: 1970, column: 2, scope: !1267)
!1275 = !DILocation(line: 1970, column: 34, scope: !1267)
!1276 = !DILocation(line: 1970, column: 43, scope: !1267)
!1277 = !DILocation(line: 1970, column: 48, scope: !1267)
!1278 = !DILocation(line: 1971, column: 2, scope: !1267)
!1279 = !DILocation(line: 1971, column: 6, scope: !1267)
!1280 = !DILocation(line: 1973, column: 33, scope: !1267)
!1281 = !DILocation(line: 1973, column: 8, scope: !1267)
!1282 = !DILocation(line: 1973, column: 6, scope: !1267)
!1283 = !DILocation(line: 1974, column: 6, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1267, file: !2, line: 1974, column: 6)
!1285 = !DILocation(line: 1974, column: 10, scope: !1284)
!1286 = !DILocation(line: 1974, column: 6, scope: !1267)
!1287 = !DILocation(line: 1975, column: 10, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1284, file: !2, line: 1974, column: 15)
!1289 = !DILocation(line: 1975, column: 3, scope: !1288)
!1290 = !DILocation(line: 1979, column: 28, scope: !1267)
!1291 = !DILocation(line: 1979, column: 36, scope: !1267)
!1292 = !DILocation(line: 1979, column: 8, scope: !1267)
!1293 = !DILocation(line: 1979, column: 6, scope: !1267)
!1294 = !DILocation(line: 1980, column: 6, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1267, file: !2, line: 1980, column: 6)
!1296 = !DILocation(line: 1980, column: 10, scope: !1295)
!1297 = !DILocation(line: 1980, column: 6, scope: !1267)
!1298 = !DILocation(line: 1981, column: 10, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1295, file: !2, line: 1980, column: 15)
!1300 = !DILocation(line: 1981, column: 3, scope: !1299)
!1301 = !DILocation(line: 1984, column: 39, scope: !1267)
!1302 = !DILocation(line: 1984, column: 8, scope: !1267)
!1303 = !DILocation(line: 1984, column: 6, scope: !1267)
!1304 = !DILocation(line: 1985, column: 6, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !1267, file: !2, line: 1985, column: 6)
!1306 = !DILocation(line: 1985, column: 10, scope: !1305)
!1307 = !DILocation(line: 1985, column: 6, scope: !1267)
!1308 = !DILocation(line: 1986, column: 10, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !1305, file: !2, line: 1985, column: 15)
!1310 = !DILocation(line: 1986, column: 3, scope: !1309)
!1311 = !DILocation(line: 1992, column: 2, scope: !1267)
!1312 = !DILocation(line: 1992, column: 10, scope: !1267)
!1313 = !DILocation(line: 1992, column: 26, scope: !1267)
!1314 = !DILocation(line: 2013, column: 2, scope: !1267)
!1315 = !DILocation(line: 2015, column: 1, scope: !1267)
!1316 = !DISubprogram(name: "z_timeout_expires", scope: !529, file: !529, line: 642, type: !1317, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !544)
!1317 = !DISubroutineType(types: !1318)
!1318 = !{!588, !1319}
!1319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1320, size: 32)
!1320 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !498)
!1321 = !DISubprogram(name: "z_timeout_remaining", scope: !529, file: !529, line: 643, type: !1317, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !544)
!1322 = distinct !DISubprogram(name: "sys_sflist_is_empty", scope: !676, file: !676, line: 335, type: !1323, scopeLine: 335, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1326)
!1323 = !DISubroutineType(types: !1324)
!1324 = !{!170, !1325}
!1325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 32)
!1326 = !{!1327}
!1327 = !DILocalVariable(name: "list", arg: 1, scope: !1322, file: !676, line: 335, type: !1325)
!1328 = !DILocation(line: 335, column: 55, scope: !1322)
!1329 = !DILocation(line: 335, column: 92, scope: !1322)
!1330 = !DILocation(line: 335, column: 71, scope: !1322)
!1331 = !DILocation(line: 335, column: 98, scope: !1322)
!1332 = !DILocation(line: 335, column: 63, scope: !1322)
!1333 = distinct !DISubprogram(name: "sys_sflist_peek_head", scope: !676, file: !676, line: 255, type: !1334, scopeLine: 256, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1336)
!1334 = !DISubroutineType(types: !1335)
!1335 = !{!680, !1325}
!1336 = !{!1337}
!1337 = !DILocalVariable(name: "list", arg: 1, scope: !1333, file: !676, line: 255, type: !1325)
!1338 = !DILocation(line: 255, column: 64, scope: !1333)
!1339 = !DILocation(line: 257, column: 9, scope: !1333)
!1340 = !DILocation(line: 257, column: 15, scope: !1333)
!1341 = !DILocation(line: 257, column: 2, scope: !1333)
!1342 = !DISubprogram(name: "z_device_is_ready", scope: !153, file: !153, line: 724, type: !746, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !544)
!1343 = !DILocation(line: 2337, column: 3161, scope: !380)
!1344 = !DILocation(line: 2337, column: 3426, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !380, file: !2, line: 2337, column: 3168)
!1346 = !DILocation(line: 2337, column: 3463, scope: !380)
!1347 = !DILocation(line: 2337, column: 3484, scope: !380)
!1348 = distinct !DISubprogram(name: "uart_stm32_isr", scope: !2, file: !2, line: 1210, type: !232, scopeLine: 1211, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1349)
!1349 = !{!1350, !1351}
!1350 = !DILocalVariable(name: "dev", arg: 1, scope: !1348, file: !2, line: 1210, type: !150)
!1351 = !DILocalVariable(name: "data", scope: !1348, file: !2, line: 1212, type: !1352)
!1352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 32)
!1353 = !DILocation(line: 1210, column: 49, scope: !1348)
!1354 = !DILocation(line: 1212, column: 2, scope: !1348)
!1355 = !DILocation(line: 1212, column: 26, scope: !1348)
!1356 = !DILocation(line: 1212, column: 33, scope: !1348)
!1357 = !DILocation(line: 1212, column: 38, scope: !1348)
!1358 = !DILocation(line: 1237, column: 6, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1348, file: !2, line: 1237, column: 6)
!1360 = !DILocation(line: 1237, column: 12, scope: !1359)
!1361 = !DILocation(line: 1237, column: 6, scope: !1348)
!1362 = !DILocation(line: 1238, column: 3, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1359, file: !2, line: 1237, column: 21)
!1364 = !DILocation(line: 1238, column: 9, scope: !1363)
!1365 = !DILocation(line: 1238, column: 17, scope: !1363)
!1366 = !DILocation(line: 1238, column: 22, scope: !1363)
!1367 = !DILocation(line: 1238, column: 28, scope: !1363)
!1368 = !DILocation(line: 1239, column: 2, scope: !1363)
!1369 = !DILocation(line: 1282, column: 1, scope: !1348)
!1370 = !DISubprogram(name: "z_arm_irq_priority_set", scope: !1371, file: !1371, line: 44, type: !1372, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !544)
!1371 = !DIFile(filename: "include/zephyr/arch/arm/irq.h", directory: "/home/sri/zephyrproject/zephyr")
!1372 = !DISubroutineType(types: !1373)
!1373 = !{null, !173, !173, !172}
!1374 = !DISubprogram(name: "arch_irq_enable", scope: !1371, file: !1371, line: 39, type: !1375, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !544)
!1375 = !DISubroutineType(types: !1376)
!1376 = !{null, !173}
!1377 = distinct !DISubprogram(name: "uart_stm32_poll_in", scope: !2, file: !2, line: 695, type: !190, scopeLine: 696, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1378)
!1378 = !{!1379, !1380}
!1379 = !DILocalVariable(name: "dev", arg: 1, scope: !1377, file: !2, line: 695, type: !150)
!1380 = !DILocalVariable(name: "c", arg: 2, scope: !1377, file: !2, line: 695, type: !192)
!1381 = !DILocation(line: 695, column: 52, scope: !1377)
!1382 = !DILocation(line: 695, column: 72, scope: !1377)
!1383 = !DILocation(line: 697, column: 36, scope: !1377)
!1384 = !DILocation(line: 697, column: 49, scope: !1377)
!1385 = !DILocation(line: 697, column: 9, scope: !1377)
!1386 = !DILocation(line: 697, column: 2, scope: !1377)
!1387 = distinct !DISubprogram(name: "uart_stm32_poll_out", scope: !2, file: !2, line: 700, type: !195, scopeLine: 701, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1388)
!1388 = !{!1389, !1390}
!1389 = !DILocalVariable(name: "dev", arg: 1, scope: !1387, file: !2, line: 700, type: !150)
!1390 = !DILocalVariable(name: "c", arg: 2, scope: !1387, file: !2, line: 700, type: !14)
!1391 = !DILocation(line: 700, column: 54, scope: !1387)
!1392 = !DILocation(line: 700, column: 73, scope: !1387)
!1393 = !DILocation(line: 702, column: 30, scope: !1387)
!1394 = !DILocation(line: 702, column: 2, scope: !1387)
!1395 = !DILocation(line: 703, column: 1, scope: !1387)
!1396 = distinct !DISubprogram(name: "uart_stm32_err_check", scope: !2, file: !2, line: 729, type: !199, scopeLine: 730, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1397)
!1397 = !{!1398, !1399, !1400}
!1398 = !DILocalVariable(name: "dev", arg: 1, scope: !1396, file: !2, line: 729, type: !150)
!1399 = !DILocalVariable(name: "config", scope: !1396, file: !2, line: 731, type: !1271)
!1400 = !DILocalVariable(name: "err", scope: !1396, file: !2, line: 732, type: !172)
!1401 = !DILocation(line: 729, column: 54, scope: !1396)
!1402 = !DILocation(line: 731, column: 2, scope: !1396)
!1403 = !DILocation(line: 731, column: 34, scope: !1396)
!1404 = !DILocation(line: 731, column: 43, scope: !1396)
!1405 = !DILocation(line: 731, column: 48, scope: !1396)
!1406 = !DILocation(line: 732, column: 2, scope: !1396)
!1407 = !DILocation(line: 732, column: 11, scope: !1396)
!1408 = !DILocation(line: 739, column: 32, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1396, file: !2, line: 739, column: 6)
!1410 = !DILocation(line: 739, column: 40, scope: !1409)
!1411 = !DILocation(line: 739, column: 6, scope: !1409)
!1412 = !DILocation(line: 739, column: 6, scope: !1396)
!1413 = !DILocation(line: 740, column: 7, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !1409, file: !2, line: 739, column: 48)
!1415 = !DILocation(line: 741, column: 2, scope: !1414)
!1416 = !DILocation(line: 743, column: 31, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !1396, file: !2, line: 743, column: 6)
!1418 = !DILocation(line: 743, column: 39, scope: !1417)
!1419 = !DILocation(line: 743, column: 6, scope: !1417)
!1420 = !DILocation(line: 743, column: 6, scope: !1396)
!1421 = !DILocation(line: 744, column: 7, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !1417, file: !2, line: 743, column: 47)
!1423 = !DILocation(line: 745, column: 2, scope: !1422)
!1424 = !DILocation(line: 747, column: 31, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1396, file: !2, line: 747, column: 6)
!1426 = !DILocation(line: 747, column: 39, scope: !1425)
!1427 = !DILocation(line: 747, column: 6, scope: !1425)
!1428 = !DILocation(line: 747, column: 6, scope: !1396)
!1429 = !DILocation(line: 748, column: 7, scope: !1430)
!1430 = distinct !DILexicalBlock(scope: !1425, file: !2, line: 747, column: 47)
!1431 = !DILocation(line: 749, column: 2, scope: !1430)
!1432 = !DILocation(line: 751, column: 31, scope: !1433)
!1433 = distinct !DILexicalBlock(scope: !1396, file: !2, line: 751, column: 6)
!1434 = !DILocation(line: 751, column: 39, scope: !1433)
!1435 = !DILocation(line: 751, column: 6, scope: !1433)
!1436 = !DILocation(line: 751, column: 6, scope: !1396)
!1437 = !DILocation(line: 752, column: 7, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !1433, file: !2, line: 751, column: 47)
!1439 = !DILocation(line: 753, column: 2, scope: !1438)
!1440 = !DILocation(line: 756, column: 32, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !1396, file: !2, line: 756, column: 6)
!1442 = !DILocation(line: 756, column: 40, scope: !1441)
!1443 = !DILocation(line: 756, column: 6, scope: !1441)
!1444 = !DILocation(line: 756, column: 6, scope: !1396)
!1445 = !DILocation(line: 757, column: 7, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !1441, file: !2, line: 756, column: 48)
!1447 = !DILocation(line: 758, column: 2, scope: !1446)
!1448 = !DILocation(line: 760, column: 6, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1396, file: !2, line: 760, column: 6)
!1450 = !DILocation(line: 760, column: 10, scope: !1449)
!1451 = !DILocation(line: 760, column: 6, scope: !1396)
!1452 = !DILocation(line: 761, column: 26, scope: !1453)
!1453 = distinct !DILexicalBlock(scope: !1449, file: !2, line: 760, column: 24)
!1454 = !DILocation(line: 761, column: 34, scope: !1453)
!1455 = !DILocation(line: 761, column: 3, scope: !1453)
!1456 = !DILocation(line: 762, column: 2, scope: !1453)
!1457 = !DILocation(line: 769, column: 6, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1396, file: !2, line: 769, column: 6)
!1459 = !DILocation(line: 769, column: 10, scope: !1458)
!1460 = !DILocation(line: 769, column: 6, scope: !1396)
!1461 = !DILocation(line: 770, column: 26, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1458, file: !2, line: 769, column: 32)
!1463 = !DILocation(line: 770, column: 34, scope: !1462)
!1464 = !DILocation(line: 770, column: 3, scope: !1462)
!1465 = !DILocation(line: 771, column: 2, scope: !1462)
!1466 = !DILocation(line: 773, column: 6, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1396, file: !2, line: 773, column: 6)
!1468 = !DILocation(line: 773, column: 10, scope: !1467)
!1469 = !DILocation(line: 773, column: 6, scope: !1396)
!1470 = !DILocation(line: 774, column: 25, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !1467, file: !2, line: 773, column: 31)
!1472 = !DILocation(line: 774, column: 33, scope: !1471)
!1473 = !DILocation(line: 774, column: 3, scope: !1471)
!1474 = !DILocation(line: 775, column: 2, scope: !1471)
!1475 = !DILocation(line: 777, column: 6, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !1396, file: !2, line: 777, column: 6)
!1477 = !DILocation(line: 777, column: 10, scope: !1476)
!1478 = !DILocation(line: 777, column: 6, scope: !1396)
!1479 = !DILocation(line: 778, column: 25, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !1476, file: !2, line: 777, column: 32)
!1481 = !DILocation(line: 778, column: 33, scope: !1480)
!1482 = !DILocation(line: 778, column: 3, scope: !1480)
!1483 = !DILocation(line: 779, column: 2, scope: !1480)
!1484 = !DILocation(line: 781, column: 6, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !1396, file: !2, line: 781, column: 6)
!1486 = !DILocation(line: 781, column: 10, scope: !1485)
!1487 = !DILocation(line: 781, column: 6, scope: !1396)
!1488 = !DILocation(line: 782, column: 25, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !1485, file: !2, line: 781, column: 30)
!1490 = !DILocation(line: 782, column: 33, scope: !1489)
!1491 = !DILocation(line: 782, column: 3, scope: !1489)
!1492 = !DILocation(line: 783, column: 2, scope: !1489)
!1493 = !DILocation(line: 785, column: 9, scope: !1396)
!1494 = !DILocation(line: 786, column: 1, scope: !1396)
!1495 = !DILocation(line: 785, column: 2, scope: !1396)
!1496 = distinct !DISubprogram(name: "uart_stm32_configure", scope: !2, file: !2, line: 520, type: !203, scopeLine: 522, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1497)
!1497 = !{!1498, !1499, !1500, !1501, !1502, !1503, !1505, !1506}
!1498 = !DILocalVariable(name: "dev", arg: 1, scope: !1496, file: !2, line: 520, type: !150)
!1499 = !DILocalVariable(name: "cfg", arg: 2, scope: !1496, file: !2, line: 521, type: !205)
!1500 = !DILocalVariable(name: "config", scope: !1496, file: !2, line: 523, type: !1271)
!1501 = !DILocalVariable(name: "data", scope: !1496, file: !2, line: 524, type: !1352)
!1502 = !DILocalVariable(name: "uart_cfg", scope: !1496, file: !2, line: 525, type: !218)
!1503 = !DILocalVariable(name: "parity", scope: !1496, file: !2, line: 526, type: !1504)
!1504 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !172)
!1505 = !DILocalVariable(name: "stopbits", scope: !1496, file: !2, line: 527, type: !1504)
!1506 = !DILocalVariable(name: "databits", scope: !1496, file: !2, line: 528, type: !1504)
!1507 = !DILocation(line: 520, column: 54, scope: !1496)
!1508 = !DILocation(line: 521, column: 31, scope: !1496)
!1509 = !DILocation(line: 523, column: 2, scope: !1496)
!1510 = !DILocation(line: 523, column: 34, scope: !1496)
!1511 = !DILocation(line: 523, column: 43, scope: !1496)
!1512 = !DILocation(line: 523, column: 48, scope: !1496)
!1513 = !DILocation(line: 524, column: 2, scope: !1496)
!1514 = !DILocation(line: 524, column: 26, scope: !1496)
!1515 = !DILocation(line: 524, column: 33, scope: !1496)
!1516 = !DILocation(line: 524, column: 38, scope: !1496)
!1517 = !DILocation(line: 525, column: 2, scope: !1496)
!1518 = !DILocation(line: 525, column: 22, scope: !1496)
!1519 = !DILocation(line: 525, column: 33, scope: !1496)
!1520 = !DILocation(line: 525, column: 39, scope: !1496)
!1521 = !DILocation(line: 526, column: 2, scope: !1496)
!1522 = !DILocation(line: 526, column: 17, scope: !1496)
!1523 = !DILocation(line: 526, column: 51, scope: !1496)
!1524 = !DILocation(line: 526, column: 56, scope: !1496)
!1525 = !DILocation(line: 526, column: 26, scope: !1496)
!1526 = !DILocation(line: 527, column: 2, scope: !1496)
!1527 = !DILocation(line: 527, column: 17, scope: !1496)
!1528 = !DILocation(line: 527, column: 55, scope: !1496)
!1529 = !DILocation(line: 527, column: 63, scope: !1496)
!1530 = !DILocation(line: 527, column: 68, scope: !1496)
!1531 = !DILocation(line: 527, column: 28, scope: !1496)
!1532 = !DILocation(line: 528, column: 2, scope: !1496)
!1533 = !DILocation(line: 528, column: 17, scope: !1496)
!1534 = !DILocation(line: 528, column: 55, scope: !1496)
!1535 = !DILocation(line: 528, column: 60, scope: !1496)
!1536 = !DILocation(line: 529, column: 13, scope: !1496)
!1537 = !DILocation(line: 529, column: 18, scope: !1496)
!1538 = !DILocation(line: 528, column: 28, scope: !1496)
!1539 = !DILocation(line: 532, column: 7, scope: !1540)
!1540 = distinct !DILexicalBlock(scope: !1496, file: !2, line: 532, column: 6)
!1541 = !DILocation(line: 532, column: 12, scope: !1540)
!1542 = !DILocation(line: 532, column: 19, scope: !1540)
!1543 = !DILocation(line: 532, column: 44, scope: !1540)
!1544 = !DILocation(line: 533, column: 7, scope: !1540)
!1545 = !DILocation(line: 533, column: 12, scope: !1540)
!1546 = !DILocation(line: 533, column: 19, scope: !1540)
!1547 = !DILocation(line: 532, column: 6, scope: !1496)
!1548 = !DILocation(line: 534, column: 3, scope: !1549)
!1549 = distinct !DILexicalBlock(scope: !1540, file: !2, line: 533, column: 46)
!1550 = !DILocation(line: 538, column: 7, scope: !1551)
!1551 = distinct !DILexicalBlock(scope: !1496, file: !2, line: 538, column: 6)
!1552 = !DILocation(line: 538, column: 12, scope: !1551)
!1553 = !DILocation(line: 538, column: 19, scope: !1551)
!1554 = !DILocation(line: 538, column: 44, scope: !1551)
!1555 = !DILocation(line: 539, column: 7, scope: !1551)
!1556 = !DILocation(line: 539, column: 12, scope: !1551)
!1557 = !DILocation(line: 539, column: 22, scope: !1551)
!1558 = !DILocation(line: 538, column: 6, scope: !1496)
!1559 = !DILocation(line: 540, column: 3, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1551, file: !2, line: 539, column: 48)
!1561 = !DILocation(line: 546, column: 33, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !1496, file: !2, line: 546, column: 6)
!1563 = !DILocation(line: 546, column: 6, scope: !1562)
!1564 = !DILocation(line: 546, column: 46, scope: !1562)
!1565 = !DILocation(line: 546, column: 51, scope: !1562)
!1566 = !DILocation(line: 546, column: 43, scope: !1562)
!1567 = !DILocation(line: 546, column: 6, scope: !1496)
!1568 = !DILocation(line: 547, column: 3, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1562, file: !2, line: 546, column: 62)
!1570 = !DILocation(line: 553, column: 33, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1496, file: !2, line: 553, column: 6)
!1572 = !DILocation(line: 553, column: 43, scope: !1571)
!1573 = !DILocation(line: 553, column: 6, scope: !1571)
!1574 = !DILocation(line: 553, column: 54, scope: !1571)
!1575 = !DILocation(line: 553, column: 59, scope: !1571)
!1576 = !DILocation(line: 553, column: 51, scope: !1571)
!1577 = !DILocation(line: 553, column: 6, scope: !1496)
!1578 = !DILocation(line: 554, column: 3, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !1571, file: !2, line: 553, column: 70)
!1580 = !DILocation(line: 558, column: 8, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !1496, file: !2, line: 558, column: 6)
!1582 = !DILocation(line: 558, column: 13, scope: !1581)
!1583 = !DILocation(line: 558, column: 23, scope: !1581)
!1584 = !DILocation(line: 559, column: 3, scope: !1581)
!1585 = !DILocation(line: 559, column: 7, scope: !1581)
!1586 = !DILocation(line: 559, column: 12, scope: !1581)
!1587 = !DILocation(line: 559, column: 22, scope: !1581)
!1588 = !DILocation(line: 559, column: 52, scope: !1581)
!1589 = !DILocation(line: 560, column: 7, scope: !1581)
!1590 = !DILocation(line: 560, column: 15, scope: !1581)
!1591 = !DILocation(line: 560, column: 22, scope: !1581)
!1592 = !DILocation(line: 560, column: 76, scope: !1581)
!1593 = !DILocation(line: 560, column: 81, scope: !1581)
!1594 = !DILocation(line: 560, column: 89, scope: !1581)
!1595 = !DILocation(line: 560, column: 96, scope: !1581)
!1596 = !DILocation(line: 560, column: 150, scope: !1581)
!1597 = !DILocation(line: 560, column: 155, scope: !1581)
!1598 = !DILocation(line: 560, column: 163, scope: !1581)
!1599 = !DILocation(line: 560, column: 170, scope: !1581)
!1600 = !DILocation(line: 560, column: 224, scope: !1581)
!1601 = !DILocation(line: 560, column: 229, scope: !1581)
!1602 = !DILocation(line: 560, column: 237, scope: !1581)
!1603 = !DILocation(line: 560, column: 244, scope: !1581)
!1604 = !DILocation(line: 562, column: 3, scope: !1581)
!1605 = !DILocation(line: 562, column: 7, scope: !1581)
!1606 = !DILocation(line: 562, column: 12, scope: !1581)
!1607 = !DILocation(line: 562, column: 22, scope: !1581)
!1608 = !DILocation(line: 562, column: 50, scope: !1581)
!1609 = !DILocation(line: 563, column: 7, scope: !1581)
!1610 = !DILocation(line: 563, column: 15, scope: !1581)
!1611 = !DILocation(line: 563, column: 22, scope: !1581)
!1612 = !DILocation(line: 563, column: 76, scope: !1581)
!1613 = !DILocation(line: 563, column: 81, scope: !1581)
!1614 = !DILocation(line: 563, column: 89, scope: !1581)
!1615 = !DILocation(line: 563, column: 96, scope: !1581)
!1616 = !DILocation(line: 563, column: 150, scope: !1581)
!1617 = !DILocation(line: 563, column: 155, scope: !1581)
!1618 = !DILocation(line: 563, column: 163, scope: !1581)
!1619 = !DILocation(line: 563, column: 170, scope: !1581)
!1620 = !DILocation(line: 563, column: 224, scope: !1581)
!1621 = !DILocation(line: 563, column: 229, scope: !1581)
!1622 = !DILocation(line: 563, column: 237, scope: !1581)
!1623 = !DILocation(line: 563, column: 244, scope: !1581)
!1624 = !DILocation(line: 563, column: 298, scope: !1581)
!1625 = !DILocation(line: 563, column: 303, scope: !1581)
!1626 = !DILocation(line: 563, column: 311, scope: !1581)
!1627 = !DILocation(line: 563, column: 318, scope: !1581)
!1628 = !DILocation(line: 563, column: 372, scope: !1581)
!1629 = !DILocation(line: 563, column: 377, scope: !1581)
!1630 = !DILocation(line: 563, column: 385, scope: !1581)
!1631 = !DILocation(line: 563, column: 392, scope: !1581)
!1632 = !DILocation(line: 563, column: 446, scope: !1581)
!1633 = !DILocation(line: 563, column: 451, scope: !1581)
!1634 = !DILocation(line: 563, column: 459, scope: !1581)
!1635 = !DILocation(line: 563, column: 466, scope: !1581)
!1636 = !DILocation(line: 563, column: 520, scope: !1581)
!1637 = !DILocation(line: 563, column: 525, scope: !1581)
!1638 = !DILocation(line: 563, column: 533, scope: !1581)
!1639 = !DILocation(line: 563, column: 540, scope: !1581)
!1640 = !DILocation(line: 558, column: 6, scope: !1496)
!1641 = !DILocation(line: 566, column: 3, scope: !1642)
!1642 = distinct !DILexicalBlock(scope: !1581, file: !2, line: 565, column: 6)
!1643 = !DILocation(line: 569, column: 19, scope: !1496)
!1644 = !DILocation(line: 569, column: 27, scope: !1496)
!1645 = !DILocation(line: 569, column: 2, scope: !1496)
!1646 = !DILocation(line: 572, column: 28, scope: !1496)
!1647 = !DILocation(line: 572, column: 33, scope: !1496)
!1648 = !DILocation(line: 572, column: 2, scope: !1496)
!1649 = !DILocation(line: 574, column: 18, scope: !1496)
!1650 = !DILocation(line: 574, column: 26, scope: !1496)
!1651 = !DILocation(line: 574, column: 2, scope: !1496)
!1652 = !DILocation(line: 581, column: 3, scope: !1496)
!1653 = !DILocation(line: 581, column: 15, scope: !1496)
!1654 = !DILocation(line: 581, column: 14, scope: !1496)
!1655 = !DILocation(line: 583, column: 2, scope: !1496)
!1656 = !DILocation(line: 584, column: 1, scope: !1496)
!1657 = distinct !DISubprogram(name: "uart_stm32_config_get", scope: !2, file: !2, line: 586, type: !216, scopeLine: 588, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1658)
!1658 = !{!1659, !1660, !1661, !1662}
!1659 = !DILocalVariable(name: "dev", arg: 1, scope: !1657, file: !2, line: 586, type: !150)
!1660 = !DILocalVariable(name: "cfg", arg: 2, scope: !1657, file: !2, line: 587, type: !218)
!1661 = !DILocalVariable(name: "data", scope: !1657, file: !2, line: 589, type: !1352)
!1662 = !DILocalVariable(name: "uart_cfg", scope: !1657, file: !2, line: 590, type: !218)
!1663 = !DILocation(line: 586, column: 55, scope: !1657)
!1664 = !DILocation(line: 587, column: 26, scope: !1657)
!1665 = !DILocation(line: 589, column: 2, scope: !1657)
!1666 = !DILocation(line: 589, column: 26, scope: !1657)
!1667 = !DILocation(line: 589, column: 33, scope: !1657)
!1668 = !DILocation(line: 589, column: 38, scope: !1657)
!1669 = !DILocation(line: 590, column: 2, scope: !1657)
!1670 = !DILocation(line: 590, column: 22, scope: !1657)
!1671 = !DILocation(line: 590, column: 33, scope: !1657)
!1672 = !DILocation(line: 590, column: 39, scope: !1657)
!1673 = !DILocation(line: 592, column: 18, scope: !1657)
!1674 = !DILocation(line: 592, column: 28, scope: !1657)
!1675 = !DILocation(line: 592, column: 2, scope: !1657)
!1676 = !DILocation(line: 592, column: 7, scope: !1657)
!1677 = !DILocation(line: 592, column: 16, scope: !1657)
!1678 = !DILocation(line: 593, column: 63, scope: !1657)
!1679 = !DILocation(line: 593, column: 41, scope: !1657)
!1680 = !DILocation(line: 593, column: 16, scope: !1657)
!1681 = !DILocation(line: 593, column: 2, scope: !1657)
!1682 = !DILocation(line: 593, column: 7, scope: !1657)
!1683 = !DILocation(line: 593, column: 14, scope: !1657)
!1684 = !DILocation(line: 595, column: 27, scope: !1657)
!1685 = !DILocation(line: 595, column: 3, scope: !1657)
!1686 = !DILocation(line: 594, column: 19, scope: !1657)
!1687 = !DILocation(line: 594, column: 2, scope: !1657)
!1688 = !DILocation(line: 594, column: 7, scope: !1657)
!1689 = !DILocation(line: 594, column: 17, scope: !1657)
!1690 = !DILocation(line: 597, column: 27, scope: !1657)
!1691 = !DILocation(line: 597, column: 3, scope: !1657)
!1692 = !DILocation(line: 597, column: 55, scope: !1657)
!1693 = !DILocation(line: 597, column: 33, scope: !1657)
!1694 = !DILocation(line: 596, column: 19, scope: !1657)
!1695 = !DILocation(line: 596, column: 2, scope: !1657)
!1696 = !DILocation(line: 596, column: 7, scope: !1657)
!1697 = !DILocation(line: 596, column: 17, scope: !1657)
!1698 = !DILocation(line: 599, column: 25, scope: !1657)
!1699 = !DILocation(line: 599, column: 3, scope: !1657)
!1700 = !DILocation(line: 598, column: 19, scope: !1657)
!1701 = !DILocation(line: 598, column: 2, scope: !1657)
!1702 = !DILocation(line: 598, column: 7, scope: !1657)
!1703 = !DILocation(line: 598, column: 17, scope: !1657)
!1704 = !DILocation(line: 601, column: 35, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1657, file: !2, line: 601, column: 6)
!1706 = !DILocation(line: 601, column: 6, scope: !1705)
!1707 = !DILocation(line: 601, column: 6, scope: !1657)
!1708 = !DILocation(line: 602, column: 3, scope: !1709)
!1709 = distinct !DILexicalBlock(scope: !1705, file: !2, line: 601, column: 41)
!1710 = !DILocation(line: 602, column: 8, scope: !1709)
!1711 = !DILocation(line: 602, column: 18, scope: !1709)
!1712 = !DILocation(line: 603, column: 2, scope: !1709)
!1713 = !DILocation(line: 606, column: 1, scope: !1657)
!1714 = !DILocation(line: 605, column: 2, scope: !1657)
!1715 = distinct !DISubprogram(name: "uart_stm32_fifo_fill", scope: !2, file: !2, line: 836, type: !221, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1716)
!1716 = !{!1717, !1718, !1719}
!1717 = !DILocalVariable(name: "dev", arg: 1, scope: !1715, file: !2, line: 836, type: !150)
!1718 = !DILocalVariable(name: "tx_data", arg: 2, scope: !1715, file: !2, line: 836, type: !223)
!1719 = !DILocalVariable(name: "size", arg: 3, scope: !1715, file: !2, line: 836, type: !139)
!1720 = !DILocation(line: 836, column: 54, scope: !1715)
!1721 = !DILocation(line: 836, column: 74, scope: !1715)
!1722 = !DILocation(line: 836, column: 87, scope: !1715)
!1723 = !DILocation(line: 838, column: 57, scope: !1724)
!1724 = distinct !DILexicalBlock(scope: !1715, file: !2, line: 838, column: 6)
!1725 = !DILocation(line: 838, column: 33, scope: !1724)
!1726 = !DILocation(line: 838, column: 85, scope: !1724)
!1727 = !DILocation(line: 838, column: 63, scope: !1724)
!1728 = !DILocation(line: 838, column: 6, scope: !1724)
!1729 = !DILocation(line: 838, column: 91, scope: !1724)
!1730 = !DILocation(line: 838, column: 6, scope: !1715)
!1731 = !DILocation(line: 840, column: 3, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !1724, file: !2, line: 839, column: 28)
!1733 = !DILocation(line: 842, column: 38, scope: !1715)
!1734 = !DILocation(line: 842, column: 57, scope: !1715)
!1735 = !DILocation(line: 842, column: 66, scope: !1715)
!1736 = !DILocation(line: 842, column: 9, scope: !1715)
!1737 = !DILocation(line: 842, column: 2, scope: !1715)
!1738 = !DILocation(line: 844, column: 1, scope: !1715)
!1739 = distinct !DISubprogram(name: "uart_stm32_fifo_read", scope: !2, file: !2, line: 882, type: !227, scopeLine: 883, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1740)
!1740 = !{!1741, !1742, !1743}
!1741 = !DILocalVariable(name: "dev", arg: 1, scope: !1739, file: !2, line: 882, type: !150)
!1742 = !DILocalVariable(name: "rx_data", arg: 2, scope: !1739, file: !2, line: 882, type: !174)
!1743 = !DILocalVariable(name: "size", arg: 3, scope: !1739, file: !2, line: 882, type: !229)
!1744 = !DILocation(line: 882, column: 54, scope: !1739)
!1745 = !DILocation(line: 882, column: 68, scope: !1739)
!1746 = !DILocation(line: 882, column: 87, scope: !1739)
!1747 = !DILocation(line: 884, column: 57, scope: !1748)
!1748 = distinct !DILexicalBlock(scope: !1739, file: !2, line: 884, column: 6)
!1749 = !DILocation(line: 884, column: 33, scope: !1748)
!1750 = !DILocation(line: 884, column: 85, scope: !1748)
!1751 = !DILocation(line: 884, column: 63, scope: !1748)
!1752 = !DILocation(line: 884, column: 6, scope: !1748)
!1753 = !DILocation(line: 884, column: 91, scope: !1748)
!1754 = !DILocation(line: 884, column: 6, scope: !1739)
!1755 = !DILocation(line: 886, column: 3, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1748, file: !2, line: 885, column: 28)
!1757 = !DILocation(line: 888, column: 38, scope: !1739)
!1758 = !DILocation(line: 888, column: 51, scope: !1739)
!1759 = !DILocation(line: 888, column: 60, scope: !1739)
!1760 = !DILocation(line: 888, column: 9, scope: !1739)
!1761 = !DILocation(line: 888, column: 2, scope: !1739)
!1762 = !DILocation(line: 890, column: 1, scope: !1739)
!1763 = distinct !DISubprogram(name: "uart_stm32_irq_tx_enable", scope: !2, file: !2, line: 933, type: !232, scopeLine: 934, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1764)
!1764 = !{!1765, !1766}
!1765 = !DILocalVariable(name: "dev", arg: 1, scope: !1763, file: !2, line: 933, type: !150)
!1766 = !DILocalVariable(name: "config", scope: !1763, file: !2, line: 935, type: !1271)
!1767 = !DILocation(line: 933, column: 59, scope: !1763)
!1768 = !DILocation(line: 935, column: 2, scope: !1763)
!1769 = !DILocation(line: 935, column: 34, scope: !1763)
!1770 = !DILocation(line: 935, column: 43, scope: !1763)
!1771 = !DILocation(line: 935, column: 48, scope: !1763)
!1772 = !DILocation(line: 947, column: 23, scope: !1763)
!1773 = !DILocation(line: 947, column: 31, scope: !1763)
!1774 = !DILocation(line: 947, column: 2, scope: !1763)
!1775 = !DILocation(line: 952, column: 1, scope: !1763)
!1776 = distinct !DISubprogram(name: "uart_stm32_irq_tx_disable", scope: !2, file: !2, line: 954, type: !232, scopeLine: 955, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1777)
!1777 = !{!1778, !1779}
!1778 = !DILocalVariable(name: "dev", arg: 1, scope: !1776, file: !2, line: 954, type: !150)
!1779 = !DILocalVariable(name: "config", scope: !1776, file: !2, line: 956, type: !1271)
!1780 = !DILocation(line: 954, column: 60, scope: !1776)
!1781 = !DILocation(line: 956, column: 2, scope: !1776)
!1782 = !DILocation(line: 956, column: 34, scope: !1776)
!1783 = !DILocation(line: 956, column: 43, scope: !1776)
!1784 = !DILocation(line: 956, column: 48, scope: !1776)
!1785 = !DILocation(line: 964, column: 24, scope: !1776)
!1786 = !DILocation(line: 964, column: 32, scope: !1776)
!1787 = !DILocation(line: 964, column: 2, scope: !1776)
!1788 = !DILocation(line: 974, column: 1, scope: !1776)
!1789 = distinct !DISubprogram(name: "uart_stm32_irq_tx_ready", scope: !2, file: !2, line: 976, type: !199, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1790)
!1790 = !{!1791, !1792}
!1791 = !DILocalVariable(name: "dev", arg: 1, scope: !1789, file: !2, line: 976, type: !150)
!1792 = !DILocalVariable(name: "config", scope: !1789, file: !2, line: 978, type: !1271)
!1793 = !DILocation(line: 976, column: 57, scope: !1789)
!1794 = !DILocation(line: 978, column: 2, scope: !1789)
!1795 = !DILocation(line: 978, column: 34, scope: !1789)
!1796 = !DILocation(line: 978, column: 43, scope: !1789)
!1797 = !DILocation(line: 978, column: 48, scope: !1789)
!1798 = !DILocation(line: 980, column: 35, scope: !1789)
!1799 = !DILocation(line: 980, column: 43, scope: !1789)
!1800 = !DILocation(line: 980, column: 9, scope: !1789)
!1801 = !DILocation(line: 980, column: 50, scope: !1789)
!1802 = !DILocation(line: 981, column: 27, scope: !1789)
!1803 = !DILocation(line: 981, column: 35, scope: !1789)
!1804 = !DILocation(line: 981, column: 3, scope: !1789)
!1805 = !DILocation(line: 0, scope: !1789)
!1806 = !DILocation(line: 982, column: 1, scope: !1789)
!1807 = !DILocation(line: 980, column: 2, scope: !1789)
!1808 = distinct !DISubprogram(name: "uart_stm32_irq_rx_enable", scope: !2, file: !2, line: 991, type: !232, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1809)
!1809 = !{!1810, !1811}
!1810 = !DILocalVariable(name: "dev", arg: 1, scope: !1808, file: !2, line: 991, type: !150)
!1811 = !DILocalVariable(name: "config", scope: !1808, file: !2, line: 993, type: !1271)
!1812 = !DILocation(line: 991, column: 59, scope: !1808)
!1813 = !DILocation(line: 993, column: 2, scope: !1808)
!1814 = !DILocation(line: 993, column: 34, scope: !1808)
!1815 = !DILocation(line: 993, column: 43, scope: !1808)
!1816 = !DILocation(line: 993, column: 48, scope: !1808)
!1817 = !DILocation(line: 995, column: 25, scope: !1808)
!1818 = !DILocation(line: 995, column: 33, scope: !1808)
!1819 = !DILocation(line: 995, column: 2, scope: !1808)
!1820 = !DILocation(line: 996, column: 1, scope: !1808)
!1821 = distinct !DISubprogram(name: "uart_stm32_irq_rx_disable", scope: !2, file: !2, line: 998, type: !232, scopeLine: 999, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1822)
!1822 = !{!1823, !1824}
!1823 = !DILocalVariable(name: "dev", arg: 1, scope: !1821, file: !2, line: 998, type: !150)
!1824 = !DILocalVariable(name: "config", scope: !1821, file: !2, line: 1000, type: !1271)
!1825 = !DILocation(line: 998, column: 60, scope: !1821)
!1826 = !DILocation(line: 1000, column: 2, scope: !1821)
!1827 = !DILocation(line: 1000, column: 34, scope: !1821)
!1828 = !DILocation(line: 1000, column: 43, scope: !1821)
!1829 = !DILocation(line: 1000, column: 48, scope: !1821)
!1830 = !DILocation(line: 1002, column: 26, scope: !1821)
!1831 = !DILocation(line: 1002, column: 34, scope: !1821)
!1832 = !DILocation(line: 1002, column: 2, scope: !1821)
!1833 = !DILocation(line: 1003, column: 1, scope: !1821)
!1834 = distinct !DISubprogram(name: "uart_stm32_irq_tx_complete", scope: !2, file: !2, line: 984, type: !199, scopeLine: 985, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1835)
!1835 = !{!1836, !1837}
!1836 = !DILocalVariable(name: "dev", arg: 1, scope: !1834, file: !2, line: 984, type: !150)
!1837 = !DILocalVariable(name: "config", scope: !1834, file: !2, line: 986, type: !1271)
!1838 = !DILocation(line: 984, column: 60, scope: !1834)
!1839 = !DILocation(line: 986, column: 2, scope: !1834)
!1840 = !DILocation(line: 986, column: 34, scope: !1834)
!1841 = !DILocation(line: 986, column: 43, scope: !1834)
!1842 = !DILocation(line: 986, column: 48, scope: !1834)
!1843 = !DILocation(line: 988, column: 34, scope: !1834)
!1844 = !DILocation(line: 988, column: 42, scope: !1834)
!1845 = !DILocation(line: 988, column: 9, scope: !1834)
!1846 = !DILocation(line: 989, column: 1, scope: !1834)
!1847 = !DILocation(line: 988, column: 2, scope: !1834)
!1848 = distinct !DISubprogram(name: "uart_stm32_irq_rx_ready", scope: !2, file: !2, line: 1005, type: !199, scopeLine: 1006, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1849)
!1849 = !{!1850, !1851}
!1850 = !DILocalVariable(name: "dev", arg: 1, scope: !1848, file: !2, line: 1005, type: !150)
!1851 = !DILocalVariable(name: "config", scope: !1848, file: !2, line: 1007, type: !1271)
!1852 = !DILocation(line: 1005, column: 57, scope: !1848)
!1853 = !DILocation(line: 1007, column: 2, scope: !1848)
!1854 = !DILocation(line: 1007, column: 34, scope: !1848)
!1855 = !DILocation(line: 1007, column: 43, scope: !1848)
!1856 = !DILocation(line: 1007, column: 48, scope: !1848)
!1857 = !DILocation(line: 1012, column: 36, scope: !1848)
!1858 = !DILocation(line: 1012, column: 44, scope: !1848)
!1859 = !DILocation(line: 1012, column: 9, scope: !1848)
!1860 = !DILocation(line: 1013, column: 1, scope: !1848)
!1861 = !DILocation(line: 1012, column: 2, scope: !1848)
!1862 = distinct !DISubprogram(name: "uart_stm32_irq_err_enable", scope: !2, file: !2, line: 1015, type: !232, scopeLine: 1016, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1863)
!1863 = !{!1864, !1865}
!1864 = !DILocalVariable(name: "dev", arg: 1, scope: !1862, file: !2, line: 1015, type: !150)
!1865 = !DILocalVariable(name: "config", scope: !1862, file: !2, line: 1017, type: !1271)
!1866 = !DILocation(line: 1015, column: 60, scope: !1862)
!1867 = !DILocation(line: 1017, column: 2, scope: !1862)
!1868 = !DILocation(line: 1017, column: 34, scope: !1862)
!1869 = !DILocation(line: 1017, column: 43, scope: !1862)
!1870 = !DILocation(line: 1017, column: 48, scope: !1862)
!1871 = !DILocation(line: 1020, column: 26, scope: !1862)
!1872 = !DILocation(line: 1020, column: 34, scope: !1862)
!1873 = !DILocation(line: 1020, column: 2, scope: !1862)
!1874 = !DILocation(line: 1023, column: 9, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1862, file: !2, line: 1023, column: 6)
!1876 = !DILocation(line: 1023, column: 17, scope: !1875)
!1877 = !DILocation(line: 1023, column: 24, scope: !1875)
!1878 = !DILocation(line: 1023, column: 78, scope: !1875)
!1879 = !DILocation(line: 1023, column: 83, scope: !1875)
!1880 = !DILocation(line: 1023, column: 91, scope: !1875)
!1881 = !DILocation(line: 1023, column: 98, scope: !1875)
!1882 = !DILocation(line: 1023, column: 152, scope: !1875)
!1883 = !DILocation(line: 1023, column: 157, scope: !1875)
!1884 = !DILocation(line: 1023, column: 165, scope: !1875)
!1885 = !DILocation(line: 1023, column: 172, scope: !1875)
!1886 = !DILocation(line: 1023, column: 6, scope: !1862)
!1887 = !DILocation(line: 1024, column: 25, scope: !1888)
!1888 = distinct !DILexicalBlock(scope: !1875, file: !2, line: 1023, column: 228)
!1889 = !DILocation(line: 1024, column: 33, scope: !1888)
!1890 = !DILocation(line: 1024, column: 3, scope: !1888)
!1891 = !DILocation(line: 1025, column: 2, scope: !1888)
!1892 = !DILocation(line: 1028, column: 23, scope: !1862)
!1893 = !DILocation(line: 1028, column: 31, scope: !1862)
!1894 = !DILocation(line: 1028, column: 2, scope: !1862)
!1895 = !DILocation(line: 1029, column: 1, scope: !1862)
!1896 = distinct !DISubprogram(name: "uart_stm32_irq_err_disable", scope: !2, file: !2, line: 1031, type: !232, scopeLine: 1032, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1897)
!1897 = !{!1898, !1899}
!1898 = !DILocalVariable(name: "dev", arg: 1, scope: !1896, file: !2, line: 1031, type: !150)
!1899 = !DILocalVariable(name: "config", scope: !1896, file: !2, line: 1033, type: !1271)
!1900 = !DILocation(line: 1031, column: 61, scope: !1896)
!1901 = !DILocation(line: 1033, column: 2, scope: !1896)
!1902 = !DILocation(line: 1033, column: 34, scope: !1896)
!1903 = !DILocation(line: 1033, column: 43, scope: !1896)
!1904 = !DILocation(line: 1033, column: 48, scope: !1896)
!1905 = !DILocation(line: 1036, column: 27, scope: !1896)
!1906 = !DILocation(line: 1036, column: 35, scope: !1896)
!1907 = !DILocation(line: 1036, column: 2, scope: !1896)
!1908 = !DILocation(line: 1039, column: 9, scope: !1909)
!1909 = distinct !DILexicalBlock(scope: !1896, file: !2, line: 1039, column: 6)
!1910 = !DILocation(line: 1039, column: 17, scope: !1909)
!1911 = !DILocation(line: 1039, column: 24, scope: !1909)
!1912 = !DILocation(line: 1039, column: 78, scope: !1909)
!1913 = !DILocation(line: 1039, column: 83, scope: !1909)
!1914 = !DILocation(line: 1039, column: 91, scope: !1909)
!1915 = !DILocation(line: 1039, column: 98, scope: !1909)
!1916 = !DILocation(line: 1039, column: 152, scope: !1909)
!1917 = !DILocation(line: 1039, column: 157, scope: !1909)
!1918 = !DILocation(line: 1039, column: 165, scope: !1909)
!1919 = !DILocation(line: 1039, column: 172, scope: !1909)
!1920 = !DILocation(line: 1039, column: 6, scope: !1896)
!1921 = !DILocation(line: 1040, column: 26, scope: !1922)
!1922 = distinct !DILexicalBlock(scope: !1909, file: !2, line: 1039, column: 228)
!1923 = !DILocation(line: 1040, column: 34, scope: !1922)
!1924 = !DILocation(line: 1040, column: 3, scope: !1922)
!1925 = !DILocation(line: 1041, column: 2, scope: !1922)
!1926 = !DILocation(line: 1044, column: 24, scope: !1896)
!1927 = !DILocation(line: 1044, column: 32, scope: !1896)
!1928 = !DILocation(line: 1044, column: 2, scope: !1896)
!1929 = !DILocation(line: 1045, column: 1, scope: !1896)
!1930 = distinct !DISubprogram(name: "uart_stm32_irq_is_pending", scope: !2, file: !2, line: 1047, type: !199, scopeLine: 1048, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1931)
!1931 = !{!1932, !1933}
!1932 = !DILocalVariable(name: "dev", arg: 1, scope: !1930, file: !2, line: 1047, type: !150)
!1933 = !DILocalVariable(name: "config", scope: !1930, file: !2, line: 1049, type: !1271)
!1934 = !DILocation(line: 1047, column: 59, scope: !1930)
!1935 = !DILocation(line: 1049, column: 2, scope: !1930)
!1936 = !DILocation(line: 1049, column: 34, scope: !1930)
!1937 = !DILocation(line: 1049, column: 43, scope: !1930)
!1938 = !DILocation(line: 1049, column: 48, scope: !1930)
!1939 = !DILocation(line: 1051, column: 38, scope: !1930)
!1940 = !DILocation(line: 1051, column: 46, scope: !1930)
!1941 = !DILocation(line: 1051, column: 11, scope: !1930)
!1942 = !DILocation(line: 1051, column: 53, scope: !1930)
!1943 = !DILocation(line: 1052, column: 30, scope: !1930)
!1944 = !DILocation(line: 1052, column: 38, scope: !1930)
!1945 = !DILocation(line: 1052, column: 4, scope: !1930)
!1946 = !DILocation(line: 1052, column: 46, scope: !1930)
!1947 = !DILocation(line: 1053, column: 29, scope: !1930)
!1948 = !DILocation(line: 1053, column: 37, scope: !1930)
!1949 = !DILocation(line: 1053, column: 4, scope: !1930)
!1950 = !DILocation(line: 1053, column: 44, scope: !1930)
!1951 = !DILocation(line: 1054, column: 28, scope: !1930)
!1952 = !DILocation(line: 1054, column: 36, scope: !1930)
!1953 = !DILocation(line: 1054, column: 4, scope: !1930)
!1954 = !DILocation(line: 0, scope: !1930)
!1955 = !DILocation(line: 1055, column: 1, scope: !1930)
!1956 = !DILocation(line: 1051, column: 2, scope: !1930)
!1957 = distinct !DISubprogram(name: "uart_stm32_irq_update", scope: !2, file: !2, line: 1057, type: !199, scopeLine: 1058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1958)
!1958 = !{!1959}
!1959 = !DILocalVariable(name: "dev", arg: 1, scope: !1957, file: !2, line: 1057, type: !150)
!1960 = !DILocation(line: 1057, column: 55, scope: !1957)
!1961 = !DILocation(line: 1059, column: 2, scope: !1957)
!1962 = distinct !DISubprogram(name: "uart_stm32_irq_callback_set", scope: !2, file: !2, line: 1062, type: !246, scopeLine: 1065, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1963)
!1963 = !{!1964, !1965, !1966, !1967}
!1964 = !DILocalVariable(name: "dev", arg: 1, scope: !1962, file: !2, line: 1062, type: !150)
!1965 = !DILocalVariable(name: "cb", arg: 2, scope: !1962, file: !2, line: 1063, type: !248)
!1966 = !DILocalVariable(name: "cb_data", arg: 3, scope: !1962, file: !2, line: 1064, type: !138)
!1967 = !DILocalVariable(name: "data", scope: !1962, file: !2, line: 1066, type: !1352)
!1968 = !DILocation(line: 1062, column: 62, scope: !1962)
!1969 = !DILocation(line: 1063, column: 36, scope: !1962)
!1970 = !DILocation(line: 1064, column: 12, scope: !1962)
!1971 = !DILocation(line: 1066, column: 2, scope: !1962)
!1972 = !DILocation(line: 1066, column: 26, scope: !1962)
!1973 = !DILocation(line: 1066, column: 33, scope: !1962)
!1974 = !DILocation(line: 1066, column: 38, scope: !1962)
!1975 = !DILocation(line: 1068, column: 18, scope: !1962)
!1976 = !DILocation(line: 1068, column: 2, scope: !1962)
!1977 = !DILocation(line: 1068, column: 8, scope: !1962)
!1978 = !DILocation(line: 1068, column: 16, scope: !1962)
!1979 = !DILocation(line: 1069, column: 20, scope: !1962)
!1980 = !DILocation(line: 1069, column: 2, scope: !1962)
!1981 = !DILocation(line: 1069, column: 8, scope: !1962)
!1982 = !DILocation(line: 1069, column: 18, scope: !1962)
!1983 = !DILocation(line: 1075, column: 1, scope: !1962)
!1984 = distinct !DISubprogram(name: "uart_stm32_poll_in_visitor", scope: !2, file: !2, line: 613, type: !1985, scopeLine: 614, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1991)
!1985 = !DISubroutineType(types: !1986)
!1986 = !{!139, !150, !138, !1987}
!1987 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_in_fn", file: !2, line: 609, baseType: !1988)
!1988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1989, size: 32)
!1989 = !DISubroutineType(types: !1990)
!1990 = !{null, !1271, !138}
!1991 = !{!1992, !1993, !1994, !1995}
!1992 = !DILocalVariable(name: "dev", arg: 1, scope: !1984, file: !2, line: 613, type: !150)
!1993 = !DILocalVariable(name: "in", arg: 2, scope: !1984, file: !2, line: 613, type: !138)
!1994 = !DILocalVariable(name: "get_fn", arg: 3, scope: !1984, file: !2, line: 613, type: !1987)
!1995 = !DILocalVariable(name: "config", scope: !1984, file: !2, line: 615, type: !1271)
!1996 = !DILocation(line: 613, column: 60, scope: !1984)
!1997 = !DILocation(line: 613, column: 71, scope: !1984)
!1998 = !DILocation(line: 613, column: 86, scope: !1984)
!1999 = !DILocation(line: 615, column: 2, scope: !1984)
!2000 = !DILocation(line: 615, column: 34, scope: !1984)
!2001 = !DILocation(line: 615, column: 43, scope: !1984)
!2002 = !DILocation(line: 615, column: 48, scope: !1984)
!2003 = !DILocation(line: 618, column: 32, scope: !2004)
!2004 = distinct !DILexicalBlock(scope: !1984, file: !2, line: 618, column: 6)
!2005 = !DILocation(line: 618, column: 40, scope: !2004)
!2006 = !DILocation(line: 618, column: 6, scope: !2004)
!2007 = !DILocation(line: 618, column: 6, scope: !1984)
!2008 = !DILocation(line: 619, column: 26, scope: !2009)
!2009 = distinct !DILexicalBlock(scope: !2004, file: !2, line: 618, column: 48)
!2010 = !DILocation(line: 619, column: 34, scope: !2009)
!2011 = !DILocation(line: 619, column: 3, scope: !2009)
!2012 = !DILocation(line: 620, column: 2, scope: !2009)
!2013 = !DILocation(line: 626, column: 34, scope: !2014)
!2014 = distinct !DILexicalBlock(scope: !1984, file: !2, line: 626, column: 6)
!2015 = !DILocation(line: 626, column: 42, scope: !2014)
!2016 = !DILocation(line: 626, column: 7, scope: !2014)
!2017 = !DILocation(line: 626, column: 6, scope: !1984)
!2018 = !DILocation(line: 627, column: 3, scope: !2019)
!2019 = distinct !DILexicalBlock(scope: !2014, file: !2, line: 626, column: 50)
!2020 = !DILocation(line: 630, column: 2, scope: !1984)
!2021 = !DILocation(line: 630, column: 9, scope: !1984)
!2022 = !DILocation(line: 630, column: 17, scope: !1984)
!2023 = !DILocation(line: 632, column: 2, scope: !1984)
!2024 = !DILocation(line: 633, column: 1, scope: !1984)
!2025 = distinct !DISubprogram(name: "poll_in_u8", scope: !2, file: !2, line: 685, type: !1989, scopeLine: 686, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2026)
!2026 = !{!2027, !2028}
!2027 = !DILocalVariable(name: "config", arg: 1, scope: !2025, file: !2, line: 685, type: !1271)
!2028 = !DILocalVariable(name: "in", arg: 2, scope: !2025, file: !2, line: 685, type: !138)
!2029 = !DILocation(line: 685, column: 56, scope: !2025)
!2030 = !DILocation(line: 685, column: 70, scope: !2025)
!2031 = !DILocation(line: 687, column: 64, scope: !2025)
!2032 = !DILocation(line: 687, column: 72, scope: !2025)
!2033 = !DILocation(line: 687, column: 42, scope: !2025)
!2034 = !DILocation(line: 687, column: 21, scope: !2025)
!2035 = !DILocation(line: 687, column: 25, scope: !2025)
!2036 = !DILocation(line: 688, column: 1, scope: !2025)
!2037 = distinct !DISubprogram(name: "LL_USART_IsActiveFlag_ORE", scope: !2038, file: !2038, line: 2715, type: !2039, scopeLine: 2716, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2043)
!2038 = !DIFile(filename: "modules/hal/stm32/stm32cube/stm32f0xx/drivers/include/stm32f0xx_ll_usart.h", directory: "/home/sri/zephyrproject")
!2039 = !DISubroutineType(types: !2040)
!2040 = !{!172, !2041}
!2041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2042, size: 32)
!2042 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !255)
!2043 = !{!2044}
!2044 = !DILocalVariable(name: "USARTx", arg: 1, scope: !2037, file: !2038, line: 2715, type: !2041)
!2045 = !DILocation(line: 2715, column: 73, scope: !2037)
!2046 = !DILocation(line: 2717, column: 14, scope: !2037)
!2047 = !DILocation(line: 2717, column: 22, scope: !2037)
!2048 = !DILocation(line: 2717, column: 27, scope: !2037)
!2049 = !DILocation(line: 2717, column: 48, scope: !2037)
!2050 = !DILocation(line: 2717, column: 11, scope: !2037)
!2051 = !DILocation(line: 2717, column: 3, scope: !2037)
!2052 = distinct !DISubprogram(name: "LL_USART_ClearFlag_ORE", scope: !2038, file: !2038, line: 2979, type: !2053, scopeLine: 2980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2055)
!2053 = !DISubroutineType(types: !2054)
!2054 = !{null, !254}
!2055 = !{!2056}
!2056 = !DILocalVariable(name: "USARTx", arg: 1, scope: !2052, file: !2038, line: 2979, type: !254)
!2057 = !DILocation(line: 2979, column: 60, scope: !2052)
!2058 = !DILocation(line: 2981, column: 5, scope: !2052)
!2059 = !DILocation(line: 2981, column: 13, scope: !2052)
!2060 = !DILocation(line: 2981, column: 18, scope: !2052)
!2061 = !DILocation(line: 2982, column: 1, scope: !2052)
!2062 = distinct !DISubprogram(name: "LL_USART_IsActiveFlag_RXNE", scope: !2038, file: !2038, line: 2737, type: !2039, scopeLine: 2738, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2063)
!2063 = !{!2064}
!2064 = !DILocalVariable(name: "USARTx", arg: 1, scope: !2062, file: !2038, line: 2737, type: !2041)
!2065 = !DILocation(line: 2737, column: 74, scope: !2062)
!2066 = !DILocation(line: 2739, column: 14, scope: !2062)
!2067 = !DILocation(line: 2739, column: 22, scope: !2062)
!2068 = !DILocation(line: 2739, column: 27, scope: !2062)
!2069 = !DILocation(line: 2739, column: 48, scope: !2062)
!2070 = !DILocation(line: 2739, column: 11, scope: !2062)
!2071 = !DILocation(line: 2739, column: 3, scope: !2062)
!2072 = distinct !DISubprogram(name: "LL_USART_ReceiveData8", scope: !2038, file: !2038, line: 3701, type: !2073, scopeLine: 3702, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2075)
!2073 = !DISubroutineType(types: !2074)
!2074 = !{!167, !2041}
!2075 = !{!2076}
!2076 = !DILocalVariable(name: "USARTx", arg: 1, scope: !2072, file: !2038, line: 3701, type: !2041)
!2077 = !DILocation(line: 3701, column: 68, scope: !2072)
!2078 = !DILocation(line: 3703, column: 22, scope: !2072)
!2079 = !DILocation(line: 3703, column: 30, scope: !2072)
!2080 = !DILocation(line: 3703, column: 21, scope: !2072)
!2081 = !DILocation(line: 3703, column: 35, scope: !2072)
!2082 = !DILocation(line: 3703, column: 60, scope: !2072)
!2083 = !DILocation(line: 3703, column: 10, scope: !2072)
!2084 = !DILocation(line: 3703, column: 3, scope: !2072)
!2085 = distinct !DISubprogram(name: "uart_stm32_poll_out_visitor", scope: !2, file: !2, line: 638, type: !2086, scopeLine: 639, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2089)
!2086 = !DISubroutineType(types: !2087)
!2087 = !{null, !150, !138, !2088}
!2088 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_out_fn", file: !2, line: 635, baseType: !1988)
!2089 = !{!2090, !2091, !2092, !2093, !2094}
!2090 = !DILocalVariable(name: "dev", arg: 1, scope: !2085, file: !2, line: 638, type: !150)
!2091 = !DILocalVariable(name: "out", arg: 2, scope: !2085, file: !2, line: 638, type: !138)
!2092 = !DILocalVariable(name: "set_fn", arg: 3, scope: !2085, file: !2, line: 638, type: !2088)
!2093 = !DILocalVariable(name: "config", scope: !2085, file: !2, line: 640, type: !1271)
!2094 = !DILocalVariable(name: "key", scope: !2085, file: !2, line: 644, type: !173)
!2095 = !DILocation(line: 638, column: 62, scope: !2085)
!2096 = !DILocation(line: 638, column: 73, scope: !2085)
!2097 = !DILocation(line: 638, column: 90, scope: !2085)
!2098 = !DILocation(line: 640, column: 2, scope: !2085)
!2099 = !DILocation(line: 640, column: 34, scope: !2085)
!2100 = !DILocation(line: 640, column: 43, scope: !2085)
!2101 = !DILocation(line: 640, column: 48, scope: !2085)
!2102 = !DILocation(line: 644, column: 2, scope: !2085)
!2103 = !DILocation(line: 644, column: 15, scope: !2085)
!2104 = !DILocation(line: 651, column: 2, scope: !2085)
!2105 = !DILocation(line: 652, column: 33, scope: !2106)
!2106 = distinct !DILexicalBlock(scope: !2107, file: !2, line: 652, column: 7)
!2107 = distinct !DILexicalBlock(scope: !2085, file: !2, line: 651, column: 12)
!2108 = !DILocation(line: 652, column: 41, scope: !2106)
!2109 = !DILocation(line: 652, column: 7, scope: !2106)
!2110 = !DILocation(line: 652, column: 7, scope: !2107)
!2111 = !DILocation(line: 44, column: 2, scope: !2112, inlinedAt: !2118)
!2112 = distinct !DISubprogram(name: "arch_irq_lock", scope: !2113, file: !2113, line: 42, type: !2114, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2116)
!2113 = !DIFile(filename: "include/zephyr/arch/arm/asm_inline_gcc.h", directory: "/home/sri/zephyrproject/zephyr")
!2114 = !DISubroutineType(types: !2115)
!2115 = !{!173}
!2116 = !{!2117}
!2117 = !DILocalVariable(name: "key", scope: !2112, file: !2113, line: 44, type: !173)
!2118 = distinct !DILocation(line: 653, column: 10, scope: !2119)
!2119 = distinct !DILexicalBlock(scope: !2106, file: !2, line: 652, column: 49)
!2120 = !DILocation(line: 44, column: 15, scope: !2112, inlinedAt: !2118)
!2121 = !DILocation(line: 48, column: 2, scope: !2112, inlinedAt: !2118)
!2122 = !{i64 66984}
!2123 = !DILocation(line: 80, column: 9, scope: !2112, inlinedAt: !2118)
!2124 = !DILocation(line: 81, column: 1, scope: !2112, inlinedAt: !2118)
!2125 = !DILocation(line: 653, column: 8, scope: !2119)
!2126 = !DILocation(line: 654, column: 34, scope: !2127)
!2127 = distinct !DILexicalBlock(scope: !2119, file: !2, line: 654, column: 8)
!2128 = !DILocation(line: 654, column: 42, scope: !2127)
!2129 = !DILocation(line: 654, column: 8, scope: !2127)
!2130 = !DILocation(line: 654, column: 8, scope: !2119)
!2131 = !DILocation(line: 655, column: 5, scope: !2132)
!2132 = distinct !DILexicalBlock(scope: !2127, file: !2, line: 654, column: 50)
!2133 = !DILocation(line: 657, column: 20, scope: !2119)
!2134 = !DILocalVariable(name: "key", arg: 1, scope: !2135, file: !2113, line: 88, type: !173)
!2135 = distinct !DISubprogram(name: "arch_irq_unlock", scope: !2113, file: !2113, line: 88, type: !1375, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2136)
!2136 = !{!2134}
!2137 = !DILocation(line: 88, column: 80, scope: !2135, inlinedAt: !2138)
!2138 = distinct !DILocation(line: 657, column: 4, scope: !2119)
!2139 = !DILocation(line: 91, column: 6, scope: !2140, inlinedAt: !2138)
!2140 = distinct !DILexicalBlock(scope: !2135, file: !2113, line: 91, column: 6)
!2141 = !DILocation(line: 91, column: 10, scope: !2140, inlinedAt: !2138)
!2142 = !DILocation(line: 91, column: 6, scope: !2135, inlinedAt: !2138)
!2143 = !DILocation(line: 92, column: 3, scope: !2144, inlinedAt: !2138)
!2144 = distinct !DILexicalBlock(scope: !2140, file: !2113, line: 91, column: 17)
!2145 = !DILocation(line: 94, column: 2, scope: !2135, inlinedAt: !2138)
!2146 = !{i64 67288}
!2147 = !DILocation(line: 114, column: 1, scope: !2135, inlinedAt: !2138)
!2148 = !DILocation(line: 658, column: 3, scope: !2119)
!2149 = distinct !{!2149, !2104, !2150}
!2150 = !DILocation(line: 659, column: 2, scope: !2085)
!2151 = !DILocation(line: 681, column: 2, scope: !2085)
!2152 = !DILocation(line: 681, column: 9, scope: !2085)
!2153 = !DILocation(line: 681, column: 17, scope: !2085)
!2154 = !DILocation(line: 682, column: 18, scope: !2085)
!2155 = !DILocation(line: 88, column: 80, scope: !2135, inlinedAt: !2156)
!2156 = distinct !DILocation(line: 682, column: 2, scope: !2085)
!2157 = !DILocation(line: 91, column: 6, scope: !2140, inlinedAt: !2156)
!2158 = !DILocation(line: 91, column: 10, scope: !2140, inlinedAt: !2156)
!2159 = !DILocation(line: 91, column: 6, scope: !2135, inlinedAt: !2156)
!2160 = !DILocation(line: 92, column: 3, scope: !2144, inlinedAt: !2156)
!2161 = !DILocation(line: 94, column: 2, scope: !2135, inlinedAt: !2156)
!2162 = !DILocation(line: 114, column: 1, scope: !2135, inlinedAt: !2156)
!2163 = !DILocation(line: 683, column: 1, scope: !2085)
!2164 = distinct !DISubprogram(name: "poll_out_u8", scope: !2, file: !2, line: 690, type: !1989, scopeLine: 691, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2165)
!2165 = !{!2166, !2167}
!2166 = !DILocalVariable(name: "config", arg: 1, scope: !2164, file: !2, line: 690, type: !1271)
!2167 = !DILocalVariable(name: "out", arg: 2, scope: !2164, file: !2, line: 690, type: !138)
!2168 = !DILocation(line: 690, column: 57, scope: !2164)
!2169 = !DILocation(line: 690, column: 71, scope: !2164)
!2170 = !DILocation(line: 692, column: 25, scope: !2164)
!2171 = !DILocation(line: 692, column: 33, scope: !2164)
!2172 = !DILocation(line: 692, column: 53, scope: !2164)
!2173 = !DILocation(line: 692, column: 40, scope: !2164)
!2174 = !DILocation(line: 692, column: 2, scope: !2164)
!2175 = !DILocation(line: 693, column: 1, scope: !2164)
!2176 = distinct !DISubprogram(name: "LL_USART_IsActiveFlag_TXE", scope: !2038, file: !2038, line: 2759, type: !2039, scopeLine: 2760, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2177)
!2177 = !{!2178}
!2178 = !DILocalVariable(name: "USARTx", arg: 1, scope: !2176, file: !2038, line: 2759, type: !2041)
!2179 = !DILocation(line: 2759, column: 73, scope: !2176)
!2180 = !DILocation(line: 2761, column: 14, scope: !2176)
!2181 = !DILocation(line: 2761, column: 22, scope: !2176)
!2182 = !DILocation(line: 2761, column: 27, scope: !2176)
!2183 = !DILocation(line: 2761, column: 48, scope: !2176)
!2184 = !DILocation(line: 2761, column: 11, scope: !2176)
!2185 = !DILocation(line: 2761, column: 3, scope: !2176)
!2186 = distinct !DISubprogram(name: "LL_USART_TransmitData8", scope: !2038, file: !2038, line: 3724, type: !2187, scopeLine: 3725, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2189)
!2187 = !DISubroutineType(types: !2188)
!2188 = !{null, !254, !167}
!2189 = !{!2190, !2191}
!2190 = !DILocalVariable(name: "USARTx", arg: 1, scope: !2186, file: !2038, line: 3724, type: !254)
!2191 = !DILocalVariable(name: "Value", arg: 2, scope: !2186, file: !2038, line: 3724, type: !167)
!2192 = !DILocation(line: 3724, column: 60, scope: !2186)
!2193 = !DILocation(line: 3724, column: 76, scope: !2186)
!2194 = !DILocation(line: 3726, column: 17, scope: !2186)
!2195 = !DILocation(line: 3726, column: 3, scope: !2186)
!2196 = !DILocation(line: 3726, column: 11, scope: !2186)
!2197 = !DILocation(line: 3726, column: 15, scope: !2186)
!2198 = !DILocation(line: 3727, column: 1, scope: !2186)
!2199 = distinct !DISubprogram(name: "LL_USART_IsActiveFlag_PE", scope: !2038, file: !2038, line: 2682, type: !2039, scopeLine: 2683, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2200)
!2200 = !{!2201}
!2201 = !DILocalVariable(name: "USARTx", arg: 1, scope: !2199, file: !2038, line: 2682, type: !2041)
!2202 = !DILocation(line: 2682, column: 72, scope: !2199)
!2203 = !DILocation(line: 2684, column: 14, scope: !2199)
!2204 = !DILocation(line: 2684, column: 22, scope: !2199)
!2205 = !DILocation(line: 2684, column: 27, scope: !2199)
!2206 = !DILocation(line: 2684, column: 48, scope: !2199)
!2207 = !DILocation(line: 2684, column: 11, scope: !2199)
!2208 = !DILocation(line: 2684, column: 3, scope: !2199)
!2209 = distinct !DISubprogram(name: "LL_USART_IsActiveFlag_FE", scope: !2038, file: !2038, line: 2693, type: !2039, scopeLine: 2694, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2210)
!2210 = !{!2211}
!2211 = !DILocalVariable(name: "USARTx", arg: 1, scope: !2209, file: !2038, line: 2693, type: !2041)
!2212 = !DILocation(line: 2693, column: 72, scope: !2209)
!2213 = !DILocation(line: 2695, column: 14, scope: !2209)
!2214 = !DILocation(line: 2695, column: 22, scope: !2209)
!2215 = !DILocation(line: 2695, column: 27, scope: !2209)
!2216 = !DILocation(line: 2695, column: 48, scope: !2209)
!2217 = !DILocation(line: 2695, column: 11, scope: !2209)
!2218 = !DILocation(line: 2695, column: 3, scope: !2209)
!2219 = distinct !DISubprogram(name: "LL_USART_IsActiveFlag_NE", scope: !2038, file: !2038, line: 2704, type: !2039, scopeLine: 2705, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2220)
!2220 = !{!2221}
!2221 = !DILocalVariable(name: "USARTx", arg: 1, scope: !2219, file: !2038, line: 2704, type: !2041)
!2222 = !DILocation(line: 2704, column: 72, scope: !2219)
!2223 = !DILocation(line: 2706, column: 14, scope: !2219)
!2224 = !DILocation(line: 2706, column: 22, scope: !2219)
!2225 = !DILocation(line: 2706, column: 27, scope: !2219)
!2226 = !DILocation(line: 2706, column: 48, scope: !2219)
!2227 = !DILocation(line: 2706, column: 11, scope: !2219)
!2228 = !DILocation(line: 2706, column: 3, scope: !2219)
!2229 = distinct !DISubprogram(name: "LL_USART_IsActiveFlag_LBD", scope: !2038, file: !2038, line: 2773, type: !2039, scopeLine: 2774, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2230)
!2230 = !{!2231}
!2231 = !DILocalVariable(name: "USARTx", arg: 1, scope: !2229, file: !2038, line: 2773, type: !2041)
!2232 = !DILocation(line: 2773, column: 73, scope: !2229)
!2233 = !DILocation(line: 2775, column: 14, scope: !2229)
!2234 = !DILocation(line: 2775, column: 22, scope: !2229)
!2235 = !DILocation(line: 2775, column: 27, scope: !2229)
!2236 = !DILocation(line: 2775, column: 48, scope: !2229)
!2237 = !DILocation(line: 2775, column: 11, scope: !2229)
!2238 = !DILocation(line: 2775, column: 3, scope: !2229)
!2239 = distinct !DISubprogram(name: "LL_USART_ClearFlag_LBD", scope: !2038, file: !2038, line: 3016, type: !2053, scopeLine: 3017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2240)
!2240 = !{!2241}
!2241 = !DILocalVariable(name: "USARTx", arg: 1, scope: !2239, file: !2038, line: 3016, type: !254)
!2242 = !DILocation(line: 3016, column: 60, scope: !2239)
!2243 = !DILocation(line: 3018, column: 5, scope: !2239)
!2244 = !DILocation(line: 3018, column: 13, scope: !2239)
!2245 = !DILocation(line: 3018, column: 18, scope: !2239)
!2246 = !DILocation(line: 3019, column: 1, scope: !2239)
!2247 = distinct !DISubprogram(name: "LL_USART_ClearFlag_PE", scope: !2038, file: !2038, line: 2946, type: !2053, scopeLine: 2947, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2248)
!2248 = !{!2249}
!2249 = !DILocalVariable(name: "USARTx", arg: 1, scope: !2247, file: !2038, line: 2946, type: !254)
!2250 = !DILocation(line: 2946, column: 59, scope: !2247)
!2251 = !DILocation(line: 2948, column: 5, scope: !2247)
!2252 = !DILocation(line: 2948, column: 13, scope: !2247)
!2253 = !DILocation(line: 2948, column: 18, scope: !2247)
!2254 = !DILocation(line: 2949, column: 1, scope: !2247)
!2255 = distinct !DISubprogram(name: "LL_USART_ClearFlag_FE", scope: !2038, file: !2038, line: 2957, type: !2053, scopeLine: 2958, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2256)
!2256 = !{!2257}
!2257 = !DILocalVariable(name: "USARTx", arg: 1, scope: !2255, file: !2038, line: 2957, type: !254)
!2258 = !DILocation(line: 2957, column: 59, scope: !2255)
!2259 = !DILocation(line: 2959, column: 5, scope: !2255)
!2260 = !DILocation(line: 2959, column: 13, scope: !2255)
!2261 = !DILocation(line: 2959, column: 18, scope: !2255)
!2262 = !DILocation(line: 2960, column: 1, scope: !2255)
!2263 = distinct !DISubprogram(name: "LL_USART_ClearFlag_NE", scope: !2038, file: !2038, line: 2968, type: !2053, scopeLine: 2969, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2264)
!2264 = !{!2265}
!2265 = !DILocalVariable(name: "USARTx", arg: 1, scope: !2263, file: !2038, line: 2968, type: !254)
!2266 = !DILocation(line: 2968, column: 59, scope: !2263)
!2267 = !DILocation(line: 2970, column: 5, scope: !2263)
!2268 = !DILocation(line: 2970, column: 13, scope: !2263)
!2269 = !DILocation(line: 2970, column: 18, scope: !2263)
!2270 = !DILocation(line: 2971, column: 1, scope: !2263)
!2271 = distinct !DISubprogram(name: "uart_stm32_cfg2ll_parity", scope: !2, file: !2, line: 285, type: !2272, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2274)
!2272 = !DISubroutineType(types: !2273)
!2273 = !{!172, !104}
!2274 = !{!2275}
!2275 = !DILocalVariable(name: "parity", arg: 1, scope: !2271, file: !2, line: 285, type: !104)
!2276 = !DILocation(line: 285, column: 73, scope: !2271)
!2277 = !DILocation(line: 287, column: 10, scope: !2271)
!2278 = !DILocation(line: 287, column: 2, scope: !2271)
!2279 = !DILocation(line: 289, column: 3, scope: !2280)
!2280 = distinct !DILexicalBlock(scope: !2271, file: !2, line: 287, column: 18)
!2281 = !DILocation(line: 291, column: 3, scope: !2280)
!2282 = !DILocation(line: 292, column: 2, scope: !2280)
!2283 = !DILocation(line: 294, column: 3, scope: !2280)
!2284 = !DILocation(line: 296, column: 1, scope: !2271)
!2285 = distinct !DISubprogram(name: "uart_stm32_cfg2ll_stopbits", scope: !2, file: !2, line: 311, type: !2286, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2288)
!2286 = !DISubroutineType(types: !2287)
!2287 = !{!172, !1271, !124}
!2288 = !{!2289, !2290}
!2289 = !DILocalVariable(name: "config", arg: 1, scope: !2285, file: !2, line: 311, type: !1271)
!2290 = !DILocalVariable(name: "sb", arg: 2, scope: !2285, file: !2, line: 312, type: !124)
!2291 = !DILocation(line: 311, column: 83, scope: !2285)
!2292 = !DILocation(line: 312, column: 35, scope: !2285)
!2293 = !DILocation(line: 314, column: 10, scope: !2285)
!2294 = !DILocation(line: 314, column: 2, scope: !2285)
!2295 = !DILocation(line: 324, column: 3, scope: !2296)
!2296 = distinct !DILexicalBlock(scope: !2285, file: !2, line: 314, column: 14)
!2297 = !DILocation(line: 327, column: 3, scope: !2296)
!2298 = !DILocation(line: 337, column: 3, scope: !2296)
!2299 = !DILocation(line: 339, column: 2, scope: !2296)
!2300 = !DILocation(line: 341, column: 3, scope: !2296)
!2301 = !DILocation(line: 343, column: 1, scope: !2285)
!2302 = distinct !DISubprogram(name: "uart_stm32_cfg2ll_databits", scope: !2, file: !2, line: 366, type: !2303, scopeLine: 368, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2305)
!2303 = !DISubroutineType(types: !2304)
!2304 = !{!172, !111, !104}
!2305 = !{!2306, !2307}
!2306 = !DILocalVariable(name: "db", arg: 1, scope: !2302, file: !2, line: 366, type: !111)
!2307 = !DILocalVariable(name: "p", arg: 2, scope: !2302, file: !2, line: 367, type: !104)
!2308 = !DILocation(line: 366, column: 78, scope: !2302)
!2309 = !DILocation(line: 367, column: 33, scope: !2302)
!2310 = !DILocation(line: 369, column: 10, scope: !2302)
!2311 = !DILocation(line: 369, column: 2, scope: !2302)
!2312 = !DILocation(line: 373, column: 7, scope: !2313)
!2313 = distinct !DILexicalBlock(scope: !2314, file: !2, line: 373, column: 7)
!2314 = distinct !DILexicalBlock(scope: !2302, file: !2, line: 369, column: 14)
!2315 = !DILocation(line: 373, column: 9, scope: !2313)
!2316 = !DILocation(line: 373, column: 7, scope: !2314)
!2317 = !DILocation(line: 374, column: 4, scope: !2318)
!2318 = distinct !DILexicalBlock(scope: !2313, file: !2, line: 373, column: 34)
!2319 = !DILocation(line: 376, column: 4, scope: !2320)
!2320 = distinct !DILexicalBlock(scope: !2313, file: !2, line: 375, column: 10)
!2321 = !DILocation(line: 381, column: 3, scope: !2314)
!2322 = !DILocation(line: 383, column: 2, scope: !2314)
!2323 = !DILocation(line: 385, column: 7, scope: !2324)
!2324 = distinct !DILexicalBlock(scope: !2314, file: !2, line: 385, column: 7)
!2325 = !DILocation(line: 385, column: 9, scope: !2324)
!2326 = !DILocation(line: 385, column: 7, scope: !2314)
!2327 = !DILocation(line: 386, column: 4, scope: !2328)
!2328 = distinct !DILexicalBlock(scope: !2324, file: !2, line: 385, column: 34)
!2329 = !DILocation(line: 389, column: 4, scope: !2330)
!2330 = distinct !DILexicalBlock(scope: !2324, file: !2, line: 388, column: 10)
!2331 = !DILocation(line: 394, column: 1, scope: !2302)
!2332 = distinct !DISubprogram(name: "uart_stm32_ll2cfg_stopbits", scope: !2, file: !2, line: 345, type: !2333, scopeLine: 346, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2335)
!2333 = !DISubroutineType(types: !2334)
!2334 = !{!124, !172}
!2335 = !{!2336}
!2336 = !DILocalVariable(name: "sb", arg: 1, scope: !2332, file: !2, line: 345, type: !172)
!2337 = !DILocation(line: 345, column: 78, scope: !2332)
!2338 = !DILocation(line: 347, column: 10, scope: !2332)
!2339 = !DILocation(line: 347, column: 2, scope: !2332)
!2340 = !DILocation(line: 351, column: 3, scope: !2341)
!2341 = distinct !DILexicalBlock(scope: !2332, file: !2, line: 347, column: 14)
!2342 = !DILocation(line: 354, column: 3, scope: !2341)
!2343 = !DILocation(line: 358, column: 3, scope: !2341)
!2344 = !DILocation(line: 360, column: 2, scope: !2341)
!2345 = !DILocation(line: 362, column: 3, scope: !2341)
!2346 = !DILocation(line: 364, column: 1, scope: !2332)
!2347 = distinct !DISubprogram(name: "uart_stm32_ll2cfg_databits", scope: !2, file: !2, line: 396, type: !2348, scopeLine: 398, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2350)
!2348 = !DISubroutineType(types: !2349)
!2349 = !{!111, !172, !172}
!2350 = !{!2351, !2352}
!2351 = !DILocalVariable(name: "db", arg: 1, scope: !2347, file: !2, line: 396, type: !172)
!2352 = !DILocalVariable(name: "p", arg: 2, scope: !2347, file: !2, line: 397, type: !172)
!2353 = !DILocation(line: 396, column: 78, scope: !2347)
!2354 = !DILocation(line: 397, column: 22, scope: !2347)
!2355 = !DILocation(line: 399, column: 10, scope: !2347)
!2356 = !DILocation(line: 399, column: 2, scope: !2347)
!2357 = !DILocation(line: 403, column: 7, scope: !2358)
!2358 = distinct !DILexicalBlock(scope: !2359, file: !2, line: 403, column: 7)
!2359 = distinct !DILexicalBlock(scope: !2347, file: !2, line: 399, column: 14)
!2360 = !DILocation(line: 403, column: 9, scope: !2358)
!2361 = !DILocation(line: 403, column: 7, scope: !2359)
!2362 = !DILocation(line: 404, column: 4, scope: !2363)
!2363 = distinct !DILexicalBlock(scope: !2358, file: !2, line: 403, column: 25)
!2364 = !DILocation(line: 406, column: 4, scope: !2365)
!2365 = distinct !DILexicalBlock(scope: !2358, file: !2, line: 405, column: 10)
!2366 = !DILocation(line: 411, column: 7, scope: !2367)
!2367 = distinct !DILexicalBlock(scope: !2359, file: !2, line: 411, column: 7)
!2368 = !DILocation(line: 411, column: 9, scope: !2367)
!2369 = !DILocation(line: 411, column: 7, scope: !2359)
!2370 = !DILocation(line: 412, column: 4, scope: !2371)
!2371 = distinct !DILexicalBlock(scope: !2367, file: !2, line: 411, column: 25)
!2372 = !DILocation(line: 414, column: 4, scope: !2373)
!2373 = distinct !DILexicalBlock(scope: !2367, file: !2, line: 413, column: 10)
!2374 = !DILocation(line: 417, column: 2, scope: !2359)
!2375 = !DILocation(line: 419, column: 7, scope: !2376)
!2376 = distinct !DILexicalBlock(scope: !2359, file: !2, line: 419, column: 7)
!2377 = !DILocation(line: 419, column: 9, scope: !2376)
!2378 = !DILocation(line: 419, column: 7, scope: !2359)
!2379 = !DILocation(line: 420, column: 4, scope: !2380)
!2380 = distinct !DILexicalBlock(scope: !2376, file: !2, line: 419, column: 25)
!2381 = !DILocation(line: 422, column: 4, scope: !2382)
!2382 = distinct !DILexicalBlock(scope: !2376, file: !2, line: 421, column: 10)
!2383 = !DILocation(line: 425, column: 1, scope: !2347)
!2384 = distinct !DISubprogram(name: "LL_USART_Disable", scope: !2038, file: !2038, line: 590, type: !2053, scopeLine: 591, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2385)
!2385 = !{!2386}
!2386 = !DILocalVariable(name: "USARTx", arg: 1, scope: !2384, file: !2038, line: 590, type: !254)
!2387 = !DILocation(line: 590, column: 54, scope: !2384)
!2388 = !DILocation(line: 592, column: 5, scope: !2384)
!2389 = !DILocation(line: 592, column: 13, scope: !2384)
!2390 = !DILocation(line: 592, column: 18, scope: !2384)
!2391 = !DILocation(line: 593, column: 1, scope: !2384)
!2392 = distinct !DISubprogram(name: "uart_stm32_parameters_set", scope: !2, file: !2, line: 462, type: !2393, scopeLine: 464, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2395)
!2393 = !DISubroutineType(types: !2394)
!2394 = !{null, !150, !205}
!2395 = !{!2396, !2397, !2398, !2399, !2400, !2401, !2402, !2403, !2404, !2405}
!2396 = !DILocalVariable(name: "dev", arg: 1, scope: !2392, file: !2, line: 462, type: !150)
!2397 = !DILocalVariable(name: "cfg", arg: 2, scope: !2392, file: !2, line: 463, type: !205)
!2398 = !DILocalVariable(name: "config", scope: !2392, file: !2, line: 465, type: !1271)
!2399 = !DILocalVariable(name: "data", scope: !2392, file: !2, line: 466, type: !1352)
!2400 = !DILocalVariable(name: "uart_cfg", scope: !2392, file: !2, line: 467, type: !218)
!2401 = !DILocalVariable(name: "parity", scope: !2392, file: !2, line: 468, type: !1504)
!2402 = !DILocalVariable(name: "stopbits", scope: !2392, file: !2, line: 469, type: !1504)
!2403 = !DILocalVariable(name: "databits", scope: !2392, file: !2, line: 470, type: !1504)
!2404 = !DILocalVariable(name: "flowctrl", scope: !2392, file: !2, line: 472, type: !1504)
!2405 = !DILocalVariable(name: "driver_enable", scope: !2392, file: !2, line: 474, type: !170)
!2406 = !DILocation(line: 462, column: 60, scope: !2392)
!2407 = !DILocation(line: 463, column: 37, scope: !2392)
!2408 = !DILocation(line: 465, column: 2, scope: !2392)
!2409 = !DILocation(line: 465, column: 34, scope: !2392)
!2410 = !DILocation(line: 465, column: 43, scope: !2392)
!2411 = !DILocation(line: 465, column: 48, scope: !2392)
!2412 = !DILocation(line: 466, column: 2, scope: !2392)
!2413 = !DILocation(line: 466, column: 26, scope: !2392)
!2414 = !DILocation(line: 466, column: 33, scope: !2392)
!2415 = !DILocation(line: 466, column: 38, scope: !2392)
!2416 = !DILocation(line: 467, column: 2, scope: !2392)
!2417 = !DILocation(line: 467, column: 22, scope: !2392)
!2418 = !DILocation(line: 467, column: 33, scope: !2392)
!2419 = !DILocation(line: 467, column: 39, scope: !2392)
!2420 = !DILocation(line: 468, column: 2, scope: !2392)
!2421 = !DILocation(line: 468, column: 17, scope: !2392)
!2422 = !DILocation(line: 468, column: 51, scope: !2392)
!2423 = !DILocation(line: 468, column: 56, scope: !2392)
!2424 = !DILocation(line: 468, column: 26, scope: !2392)
!2425 = !DILocation(line: 469, column: 2, scope: !2392)
!2426 = !DILocation(line: 469, column: 17, scope: !2392)
!2427 = !DILocation(line: 469, column: 55, scope: !2392)
!2428 = !DILocation(line: 469, column: 63, scope: !2392)
!2429 = !DILocation(line: 469, column: 68, scope: !2392)
!2430 = !DILocation(line: 469, column: 28, scope: !2392)
!2431 = !DILocation(line: 470, column: 2, scope: !2392)
!2432 = !DILocation(line: 470, column: 17, scope: !2392)
!2433 = !DILocation(line: 470, column: 55, scope: !2392)
!2434 = !DILocation(line: 470, column: 60, scope: !2392)
!2435 = !DILocation(line: 471, column: 13, scope: !2392)
!2436 = !DILocation(line: 471, column: 18, scope: !2392)
!2437 = !DILocation(line: 470, column: 28, scope: !2392)
!2438 = !DILocation(line: 472, column: 2, scope: !2392)
!2439 = !DILocation(line: 472, column: 17, scope: !2392)
!2440 = !DILocation(line: 472, column: 53, scope: !2392)
!2441 = !DILocation(line: 472, column: 58, scope: !2392)
!2442 = !DILocation(line: 472, column: 28, scope: !2392)
!2443 = !DILocation(line: 474, column: 2, scope: !2392)
!2444 = !DILocation(line: 474, column: 8, scope: !2392)
!2445 = !DILocation(line: 474, column: 24, scope: !2392)
!2446 = !DILocation(line: 474, column: 29, scope: !2392)
!2447 = !DILocation(line: 474, column: 39, scope: !2392)
!2448 = !DILocation(line: 477, column: 6, scope: !2449)
!2449 = distinct !DILexicalBlock(scope: !2392, file: !2, line: 477, column: 6)
!2450 = !DILocation(line: 477, column: 13, scope: !2449)
!2451 = !DILocation(line: 477, column: 10, scope: !2449)
!2452 = !DILocation(line: 477, column: 6, scope: !2392)
!2453 = !DILocation(line: 482, column: 28, scope: !2454)
!2454 = distinct !DILexicalBlock(scope: !2449, file: !2, line: 477, column: 23)
!2455 = !DILocation(line: 482, column: 36, scope: !2454)
!2456 = !DILocation(line: 483, column: 7, scope: !2454)
!2457 = !DILocation(line: 484, column: 7, scope: !2454)
!2458 = !DILocation(line: 485, column: 7, scope: !2454)
!2459 = !DILocation(line: 482, column: 3, scope: !2454)
!2460 = !DILocation(line: 486, column: 25, scope: !2454)
!2461 = !DILocation(line: 486, column: 30, scope: !2454)
!2462 = !DILocation(line: 486, column: 3, scope: !2454)
!2463 = !DILocation(line: 487, column: 27, scope: !2454)
!2464 = !DILocation(line: 487, column: 32, scope: !2454)
!2465 = !DILocation(line: 487, column: 37, scope: !2454)
!2466 = !DILocation(line: 487, column: 3, scope: !2454)
!2467 = !DILocation(line: 488, column: 2, scope: !2454)
!2468 = !DILocation(line: 490, column: 7, scope: !2469)
!2469 = distinct !DILexicalBlock(scope: !2470, file: !2, line: 490, column: 7)
!2470 = distinct !DILexicalBlock(scope: !2449, file: !2, line: 488, column: 9)
!2471 = !DILocation(line: 490, column: 39, scope: !2469)
!2472 = !DILocation(line: 490, column: 17, scope: !2469)
!2473 = !DILocation(line: 490, column: 14, scope: !2469)
!2474 = !DILocation(line: 490, column: 7, scope: !2470)
!2475 = !DILocation(line: 491, column: 26, scope: !2476)
!2476 = distinct !DILexicalBlock(scope: !2469, file: !2, line: 490, column: 45)
!2477 = !DILocation(line: 491, column: 31, scope: !2476)
!2478 = !DILocation(line: 491, column: 4, scope: !2476)
!2479 = !DILocation(line: 492, column: 3, scope: !2476)
!2480 = !DILocation(line: 494, column: 7, scope: !2481)
!2481 = distinct !DILexicalBlock(scope: !2470, file: !2, line: 494, column: 7)
!2482 = !DILocation(line: 494, column: 43, scope: !2481)
!2483 = !DILocation(line: 494, column: 19, scope: !2481)
!2484 = !DILocation(line: 494, column: 16, scope: !2481)
!2485 = !DILocation(line: 494, column: 7, scope: !2470)
!2486 = !DILocation(line: 495, column: 28, scope: !2487)
!2487 = distinct !DILexicalBlock(scope: !2481, file: !2, line: 494, column: 49)
!2488 = !DILocation(line: 495, column: 33, scope: !2487)
!2489 = !DILocation(line: 495, column: 4, scope: !2487)
!2490 = !DILocation(line: 496, column: 3, scope: !2487)
!2491 = !DILocation(line: 498, column: 7, scope: !2492)
!2492 = distinct !DILexicalBlock(scope: !2470, file: !2, line: 498, column: 7)
!2493 = !DILocation(line: 498, column: 43, scope: !2492)
!2494 = !DILocation(line: 498, column: 19, scope: !2492)
!2495 = !DILocation(line: 498, column: 16, scope: !2492)
!2496 = !DILocation(line: 498, column: 7, scope: !2470)
!2497 = !DILocation(line: 499, column: 28, scope: !2498)
!2498 = distinct !DILexicalBlock(scope: !2492, file: !2, line: 498, column: 49)
!2499 = !DILocation(line: 499, column: 33, scope: !2498)
!2500 = !DILocation(line: 499, column: 4, scope: !2498)
!2501 = !DILocation(line: 500, column: 3, scope: !2498)
!2502 = !DILocation(line: 502, column: 7, scope: !2503)
!2503 = distinct !DILexicalBlock(scope: !2470, file: !2, line: 502, column: 7)
!2504 = !DILocation(line: 502, column: 41, scope: !2503)
!2505 = !DILocation(line: 502, column: 19, scope: !2503)
!2506 = !DILocation(line: 502, column: 16, scope: !2503)
!2507 = !DILocation(line: 502, column: 7, scope: !2470)
!2508 = !DILocation(line: 503, column: 26, scope: !2509)
!2509 = distinct !DILexicalBlock(scope: !2503, file: !2, line: 502, column: 47)
!2510 = !DILocation(line: 503, column: 31, scope: !2509)
!2511 = !DILocation(line: 503, column: 4, scope: !2509)
!2512 = !DILocation(line: 504, column: 3, scope: !2509)
!2513 = !DILocation(line: 507, column: 7, scope: !2514)
!2514 = distinct !DILexicalBlock(scope: !2470, file: !2, line: 507, column: 7)
!2515 = !{i8 0, i8 2}
!2516 = !DILocation(line: 507, column: 53, scope: !2514)
!2517 = !DILocation(line: 507, column: 24, scope: !2514)
!2518 = !DILocation(line: 507, column: 21, scope: !2514)
!2519 = !DILocation(line: 507, column: 7, scope: !2470)
!2520 = !DILocation(line: 508, column: 33, scope: !2521)
!2521 = distinct !DILexicalBlock(scope: !2514, file: !2, line: 507, column: 59)
!2522 = !DILocation(line: 508, column: 38, scope: !2521)
!2523 = !DILocation(line: 508, column: 4, scope: !2521)
!2524 = !DILocation(line: 509, column: 3, scope: !2521)
!2525 = !DILocation(line: 512, column: 7, scope: !2526)
!2526 = distinct !DILexicalBlock(scope: !2470, file: !2, line: 512, column: 7)
!2527 = !DILocation(line: 512, column: 12, scope: !2526)
!2528 = !DILocation(line: 512, column: 24, scope: !2526)
!2529 = !DILocation(line: 512, column: 34, scope: !2526)
!2530 = !DILocation(line: 512, column: 21, scope: !2526)
!2531 = !DILocation(line: 512, column: 7, scope: !2470)
!2532 = !DILocation(line: 513, column: 28, scope: !2533)
!2533 = distinct !DILexicalBlock(scope: !2526, file: !2, line: 512, column: 44)
!2534 = !DILocation(line: 513, column: 33, scope: !2533)
!2535 = !DILocation(line: 513, column: 38, scope: !2533)
!2536 = !DILocation(line: 513, column: 4, scope: !2533)
!2537 = !DILocation(line: 514, column: 25, scope: !2533)
!2538 = !DILocation(line: 514, column: 30, scope: !2533)
!2539 = !DILocation(line: 514, column: 4, scope: !2533)
!2540 = !DILocation(line: 514, column: 14, scope: !2533)
!2541 = !DILocation(line: 514, column: 23, scope: !2533)
!2542 = !DILocation(line: 515, column: 3, scope: !2533)
!2543 = !DILocation(line: 517, column: 1, scope: !2392)
!2544 = distinct !DISubprogram(name: "LL_USART_Enable", scope: !2038, file: !2038, line: 576, type: !2053, scopeLine: 577, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2545)
!2545 = !{!2546}
!2546 = !DILocalVariable(name: "USARTx", arg: 1, scope: !2544, file: !2038, line: 576, type: !254)
!2547 = !DILocation(line: 576, column: 53, scope: !2544)
!2548 = !DILocation(line: 578, column: 5, scope: !2544)
!2549 = !DILocation(line: 578, column: 13, scope: !2544)
!2550 = !DILocation(line: 578, column: 18, scope: !2544)
!2551 = !DILocation(line: 579, column: 1, scope: !2544)
!2552 = distinct !DISubprogram(name: "uart_stm32_cfg2ll_hwctrl", scope: !2, file: !2, line: 434, type: !2553, scopeLine: 435, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2555)
!2553 = !DISubroutineType(types: !2554)
!2554 = !{!172, !118}
!2555 = !{!2556}
!2556 = !DILocalVariable(name: "fc", arg: 1, scope: !2552, file: !2, line: 434, type: !118)
!2557 = !DILocation(line: 434, column: 79, scope: !2552)
!2558 = !DILocation(line: 436, column: 6, scope: !2559)
!2559 = distinct !DILexicalBlock(scope: !2552, file: !2, line: 436, column: 6)
!2560 = !DILocation(line: 436, column: 9, scope: !2559)
!2561 = !DILocation(line: 436, column: 6, scope: !2552)
!2562 = !DILocation(line: 437, column: 3, scope: !2563)
!2563 = distinct !DILexicalBlock(scope: !2559, file: !2, line: 436, column: 40)
!2564 = !DILocation(line: 438, column: 13, scope: !2565)
!2565 = distinct !DILexicalBlock(scope: !2559, file: !2, line: 438, column: 13)
!2566 = !DILocation(line: 438, column: 16, scope: !2565)
!2567 = !DILocation(line: 438, column: 13, scope: !2559)
!2568 = !DILocation(line: 440, column: 3, scope: !2569)
!2569 = distinct !DILexicalBlock(scope: !2565, file: !2, line: 438, column: 45)
!2570 = !DILocation(line: 443, column: 2, scope: !2552)
!2571 = !DILocation(line: 444, column: 1, scope: !2552)
!2572 = distinct !DISubprogram(name: "LL_USART_ConfigCharacter", scope: !2038, file: !2038, line: 1109, type: !2573, scopeLine: 1111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2575)
!2573 = !DISubroutineType(types: !2574)
!2574 = !{null, !254, !172, !172, !172}
!2575 = !{!2576, !2577, !2578, !2579}
!2576 = !DILocalVariable(name: "USARTx", arg: 1, scope: !2572, file: !2038, line: 1109, type: !254)
!2577 = !DILocalVariable(name: "DataWidth", arg: 2, scope: !2572, file: !2038, line: 1109, type: !172)
!2578 = !DILocalVariable(name: "Parity", arg: 3, scope: !2572, file: !2038, line: 1109, type: !172)
!2579 = !DILocalVariable(name: "StopBits", arg: 4, scope: !2572, file: !2038, line: 1110, type: !172)
!2580 = !DILocation(line: 1109, column: 62, scope: !2572)
!2581 = !DILocation(line: 1109, column: 79, scope: !2572)
!2582 = !DILocation(line: 1109, column: 99, scope: !2572)
!2583 = !DILocation(line: 1110, column: 56, scope: !2572)
!2584 = !DILocation(line: 1112, column: 28, scope: !2572)
!2585 = !DILocation(line: 1112, column: 36, scope: !2572)
!2586 = !DILocation(line: 1112, column: 43, scope: !2572)
!2587 = !DILocation(line: 1112, column: 112, scope: !2572)
!2588 = !DILocation(line: 1112, column: 121, scope: !2572)
!2589 = !DILocation(line: 1112, column: 119, scope: !2572)
!2590 = !DILocation(line: 1112, column: 109, scope: !2572)
!2591 = !DILocation(line: 1112, column: 6, scope: !2572)
!2592 = !DILocation(line: 1112, column: 14, scope: !2572)
!2593 = !DILocation(line: 1112, column: 20, scope: !2572)
!2594 = !DILocation(line: 1113, column: 28, scope: !2572)
!2595 = !DILocation(line: 1113, column: 36, scope: !2572)
!2596 = !DILocation(line: 1113, column: 43, scope: !2572)
!2597 = !DILocation(line: 1113, column: 71, scope: !2572)
!2598 = !DILocation(line: 1113, column: 68, scope: !2572)
!2599 = !DILocation(line: 1113, column: 6, scope: !2572)
!2600 = !DILocation(line: 1113, column: 14, scope: !2572)
!2601 = !DILocation(line: 1113, column: 20, scope: !2572)
!2602 = !DILocation(line: 1114, column: 1, scope: !2572)
!2603 = distinct !DISubprogram(name: "uart_stm32_set_hwctrl", scope: !2, file: !2, line: 249, type: !2604, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2606)
!2604 = !DISubroutineType(types: !2605)
!2605 = !{null, !150, !172}
!2606 = !{!2607, !2608, !2609}
!2607 = !DILocalVariable(name: "dev", arg: 1, scope: !2603, file: !2, line: 249, type: !150)
!2608 = !DILocalVariable(name: "hwctrl", arg: 2, scope: !2603, file: !2, line: 250, type: !172)
!2609 = !DILocalVariable(name: "config", scope: !2603, file: !2, line: 252, type: !1271)
!2610 = !DILocation(line: 249, column: 63, scope: !2603)
!2611 = !DILocation(line: 250, column: 16, scope: !2603)
!2612 = !DILocation(line: 252, column: 2, scope: !2603)
!2613 = !DILocation(line: 252, column: 34, scope: !2603)
!2614 = !DILocation(line: 252, column: 43, scope: !2603)
!2615 = !DILocation(line: 252, column: 48, scope: !2603)
!2616 = !DILocation(line: 254, column: 25, scope: !2603)
!2617 = !DILocation(line: 254, column: 33, scope: !2603)
!2618 = !DILocation(line: 254, column: 40, scope: !2603)
!2619 = !DILocation(line: 254, column: 2, scope: !2603)
!2620 = !DILocation(line: 255, column: 1, scope: !2603)
!2621 = distinct !DISubprogram(name: "uart_stm32_set_baudrate", scope: !2, file: !2, line: 114, type: !2604, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2622)
!2622 = !{!2623, !2624, !2625, !2626, !2627}
!2623 = !DILocalVariable(name: "dev", arg: 1, scope: !2621, file: !2, line: 114, type: !150)
!2624 = !DILocalVariable(name: "baud_rate", arg: 2, scope: !2621, file: !2, line: 114, type: !172)
!2625 = !DILocalVariable(name: "config", scope: !2621, file: !2, line: 116, type: !1271)
!2626 = !DILocalVariable(name: "data", scope: !2621, file: !2, line: 117, type: !1352)
!2627 = !DILocalVariable(name: "clock_rate", scope: !2621, file: !2, line: 119, type: !172)
!2628 = !DILocation(line: 114, column: 65, scope: !2621)
!2629 = !DILocation(line: 114, column: 79, scope: !2621)
!2630 = !DILocation(line: 116, column: 2, scope: !2621)
!2631 = !DILocation(line: 116, column: 34, scope: !2621)
!2632 = !DILocation(line: 116, column: 43, scope: !2621)
!2633 = !DILocation(line: 116, column: 48, scope: !2621)
!2634 = !DILocation(line: 117, column: 2, scope: !2621)
!2635 = !DILocation(line: 117, column: 26, scope: !2621)
!2636 = !DILocation(line: 117, column: 33, scope: !2621)
!2637 = !DILocation(line: 117, column: 38, scope: !2621)
!2638 = !DILocation(line: 119, column: 2, scope: !2621)
!2639 = !DILocation(line: 119, column: 11, scope: !2621)
!2640 = !DILocation(line: 130, column: 30, scope: !2641)
!2641 = distinct !DILexicalBlock(scope: !2642, file: !2, line: 130, column: 7)
!2642 = distinct !DILexicalBlock(scope: !2643, file: !2, line: 129, column: 9)
!2643 = distinct !DILexicalBlock(scope: !2621, file: !2, line: 122, column: 6)
!2644 = !DILocation(line: 130, column: 36, scope: !2641)
!2645 = !DILocation(line: 131, column: 34, scope: !2641)
!2646 = !DILocation(line: 131, column: 42, scope: !2641)
!2647 = !DILocation(line: 130, column: 7, scope: !2641)
!2648 = !DILocation(line: 132, column: 22, scope: !2641)
!2649 = !DILocation(line: 130, column: 7, scope: !2642)
!2650 = !DILocation(line: 133, column: 4, scope: !2651)
!2651 = distinct !DILexicalBlock(scope: !2641, file: !2, line: 132, column: 27)
!2652 = !DILocation(line: 133, column: 90, scope: !2653)
!2653 = distinct !DILexicalBlock(scope: !2654, file: !2, line: 133, column: 88)
!2654 = distinct !DILexicalBlock(scope: !2655, file: !2, line: 133, column: 13)
!2655 = distinct !DILexicalBlock(scope: !2651, file: !2, line: 133, column: 7)
!2656 = !DILocation(line: 133, column: 410, scope: !2655)
!2657 = !DILocation(line: 134, column: 4, scope: !2651)
!2658 = !DILocation(line: 183, column: 28, scope: !2621)
!2659 = !DILocation(line: 183, column: 36, scope: !2621)
!2660 = !DILocation(line: 183, column: 3, scope: !2621)
!2661 = !DILocation(line: 186, column: 24, scope: !2621)
!2662 = !DILocation(line: 186, column: 32, scope: !2621)
!2663 = !DILocation(line: 187, column: 10, scope: !2621)
!2664 = !DILocation(line: 194, column: 10, scope: !2621)
!2665 = !DILocation(line: 186, column: 3, scope: !2621)
!2666 = !DILocation(line: 202, column: 1, scope: !2621)
!2667 = distinct !DISubprogram(name: "uart_stm32_get_parity", scope: !2, file: !2, line: 212, type: !2668, scopeLine: 213, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2670)
!2668 = !DISubroutineType(types: !2669)
!2669 = !{!172, !150}
!2670 = !{!2671, !2672}
!2671 = !DILocalVariable(name: "dev", arg: 1, scope: !2667, file: !2, line: 212, type: !150)
!2672 = !DILocalVariable(name: "config", scope: !2667, file: !2, line: 214, type: !1271)
!2673 = !DILocation(line: 212, column: 67, scope: !2667)
!2674 = !DILocation(line: 214, column: 2, scope: !2667)
!2675 = !DILocation(line: 214, column: 34, scope: !2667)
!2676 = !DILocation(line: 214, column: 43, scope: !2667)
!2677 = !DILocation(line: 214, column: 48, scope: !2667)
!2678 = !DILocation(line: 216, column: 28, scope: !2667)
!2679 = !DILocation(line: 216, column: 36, scope: !2667)
!2680 = !DILocation(line: 216, column: 9, scope: !2667)
!2681 = !DILocation(line: 217, column: 1, scope: !2667)
!2682 = !DILocation(line: 216, column: 2, scope: !2667)
!2683 = distinct !DISubprogram(name: "uart_stm32_set_parity", scope: !2, file: !2, line: 204, type: !2604, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2684)
!2684 = !{!2685, !2686, !2687}
!2685 = !DILocalVariable(name: "dev", arg: 1, scope: !2683, file: !2, line: 204, type: !150)
!2686 = !DILocalVariable(name: "parity", arg: 2, scope: !2683, file: !2, line: 205, type: !172)
!2687 = !DILocalVariable(name: "config", scope: !2683, file: !2, line: 207, type: !1271)
!2688 = !DILocation(line: 204, column: 63, scope: !2683)
!2689 = !DILocation(line: 205, column: 16, scope: !2683)
!2690 = !DILocation(line: 207, column: 2, scope: !2683)
!2691 = !DILocation(line: 207, column: 34, scope: !2683)
!2692 = !DILocation(line: 207, column: 43, scope: !2683)
!2693 = !DILocation(line: 207, column: 48, scope: !2683)
!2694 = !DILocation(line: 209, column: 21, scope: !2683)
!2695 = !DILocation(line: 209, column: 29, scope: !2683)
!2696 = !DILocation(line: 209, column: 36, scope: !2683)
!2697 = !DILocation(line: 209, column: 2, scope: !2683)
!2698 = !DILocation(line: 210, column: 1, scope: !2683)
!2699 = distinct !DISubprogram(name: "uart_stm32_get_stopbits", scope: !2, file: !2, line: 227, type: !2668, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2700)
!2700 = !{!2701, !2702}
!2701 = !DILocalVariable(name: "dev", arg: 1, scope: !2699, file: !2, line: 227, type: !150)
!2702 = !DILocalVariable(name: "config", scope: !2699, file: !2, line: 229, type: !1271)
!2703 = !DILocation(line: 227, column: 69, scope: !2699)
!2704 = !DILocation(line: 229, column: 2, scope: !2699)
!2705 = !DILocation(line: 229, column: 34, scope: !2699)
!2706 = !DILocation(line: 229, column: 43, scope: !2699)
!2707 = !DILocation(line: 229, column: 48, scope: !2699)
!2708 = !DILocation(line: 231, column: 36, scope: !2699)
!2709 = !DILocation(line: 231, column: 44, scope: !2699)
!2710 = !DILocation(line: 231, column: 9, scope: !2699)
!2711 = !DILocation(line: 232, column: 1, scope: !2699)
!2712 = !DILocation(line: 231, column: 2, scope: !2699)
!2713 = distinct !DISubprogram(name: "uart_stm32_set_stopbits", scope: !2, file: !2, line: 219, type: !2604, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2714)
!2714 = !{!2715, !2716, !2717}
!2715 = !DILocalVariable(name: "dev", arg: 1, scope: !2713, file: !2, line: 219, type: !150)
!2716 = !DILocalVariable(name: "stopbits", arg: 2, scope: !2713, file: !2, line: 220, type: !172)
!2717 = !DILocalVariable(name: "config", scope: !2713, file: !2, line: 222, type: !1271)
!2718 = !DILocation(line: 219, column: 65, scope: !2713)
!2719 = !DILocation(line: 220, column: 18, scope: !2713)
!2720 = !DILocation(line: 222, column: 2, scope: !2713)
!2721 = !DILocation(line: 222, column: 34, scope: !2713)
!2722 = !DILocation(line: 222, column: 43, scope: !2713)
!2723 = !DILocation(line: 222, column: 48, scope: !2713)
!2724 = !DILocation(line: 224, column: 29, scope: !2713)
!2725 = !DILocation(line: 224, column: 37, scope: !2713)
!2726 = !DILocation(line: 224, column: 44, scope: !2713)
!2727 = !DILocation(line: 224, column: 2, scope: !2713)
!2728 = !DILocation(line: 225, column: 1, scope: !2713)
!2729 = distinct !DISubprogram(name: "uart_stm32_get_databits", scope: !2, file: !2, line: 242, type: !2668, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2730)
!2730 = !{!2731, !2732}
!2731 = !DILocalVariable(name: "dev", arg: 1, scope: !2729, file: !2, line: 242, type: !150)
!2732 = !DILocalVariable(name: "config", scope: !2729, file: !2, line: 244, type: !1271)
!2733 = !DILocation(line: 242, column: 69, scope: !2729)
!2734 = !DILocation(line: 244, column: 2, scope: !2729)
!2735 = !DILocation(line: 244, column: 34, scope: !2729)
!2736 = !DILocation(line: 244, column: 43, scope: !2729)
!2737 = !DILocation(line: 244, column: 48, scope: !2729)
!2738 = !DILocation(line: 246, column: 31, scope: !2729)
!2739 = !DILocation(line: 246, column: 39, scope: !2729)
!2740 = !DILocation(line: 246, column: 9, scope: !2729)
!2741 = !DILocation(line: 247, column: 1, scope: !2729)
!2742 = !DILocation(line: 246, column: 2, scope: !2729)
!2743 = distinct !DISubprogram(name: "uart_stm32_set_databits", scope: !2, file: !2, line: 234, type: !2604, scopeLine: 236, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2744)
!2744 = !{!2745, !2746, !2747}
!2745 = !DILocalVariable(name: "dev", arg: 1, scope: !2743, file: !2, line: 234, type: !150)
!2746 = !DILocalVariable(name: "databits", arg: 2, scope: !2743, file: !2, line: 235, type: !172)
!2747 = !DILocalVariable(name: "config", scope: !2743, file: !2, line: 237, type: !1271)
!2748 = !DILocation(line: 234, column: 65, scope: !2743)
!2749 = !DILocation(line: 235, column: 18, scope: !2743)
!2750 = !DILocation(line: 237, column: 2, scope: !2743)
!2751 = !DILocation(line: 237, column: 34, scope: !2743)
!2752 = !DILocation(line: 237, column: 43, scope: !2743)
!2753 = !DILocation(line: 237, column: 48, scope: !2743)
!2754 = !DILocation(line: 239, column: 24, scope: !2743)
!2755 = !DILocation(line: 239, column: 32, scope: !2743)
!2756 = !DILocation(line: 239, column: 39, scope: !2743)
!2757 = !DILocation(line: 239, column: 2, scope: !2743)
!2758 = !DILocation(line: 240, column: 1, scope: !2743)
!2759 = distinct !DISubprogram(name: "uart_stm32_get_hwctrl", scope: !2, file: !2, line: 257, type: !2668, scopeLine: 258, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2760)
!2760 = !{!2761, !2762}
!2761 = !DILocalVariable(name: "dev", arg: 1, scope: !2759, file: !2, line: 257, type: !150)
!2762 = !DILocalVariable(name: "config", scope: !2759, file: !2, line: 259, type: !1271)
!2763 = !DILocation(line: 257, column: 67, scope: !2759)
!2764 = !DILocation(line: 259, column: 2, scope: !2759)
!2765 = !DILocation(line: 259, column: 34, scope: !2759)
!2766 = !DILocation(line: 259, column: 43, scope: !2759)
!2767 = !DILocation(line: 259, column: 48, scope: !2759)
!2768 = !DILocation(line: 261, column: 32, scope: !2759)
!2769 = !DILocation(line: 261, column: 40, scope: !2759)
!2770 = !DILocation(line: 261, column: 9, scope: !2759)
!2771 = !DILocation(line: 262, column: 1, scope: !2759)
!2772 = !DILocation(line: 261, column: 2, scope: !2759)
!2773 = distinct !DISubprogram(name: "uart_stm32_get_driver_enable", scope: !2, file: !2, line: 277, type: !746, scopeLine: 278, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2774)
!2774 = !{!2775, !2776}
!2775 = !DILocalVariable(name: "dev", arg: 1, scope: !2773, file: !2, line: 277, type: !150)
!2776 = !DILocalVariable(name: "config", scope: !2773, file: !2, line: 279, type: !1271)
!2777 = !DILocation(line: 277, column: 71, scope: !2773)
!2778 = !DILocation(line: 279, column: 2, scope: !2773)
!2779 = !DILocation(line: 279, column: 34, scope: !2773)
!2780 = !DILocation(line: 279, column: 43, scope: !2773)
!2781 = !DILocation(line: 279, column: 48, scope: !2773)
!2782 = !DILocation(line: 281, column: 34, scope: !2773)
!2783 = !DILocation(line: 281, column: 42, scope: !2773)
!2784 = !DILocation(line: 281, column: 9, scope: !2773)
!2785 = !DILocation(line: 282, column: 1, scope: !2773)
!2786 = !DILocation(line: 281, column: 2, scope: !2773)
!2787 = distinct !DISubprogram(name: "uart_stm32_set_driver_enable", scope: !2, file: !2, line: 265, type: !2788, scopeLine: 267, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2790)
!2788 = !DISubroutineType(types: !2789)
!2789 = !{null, !150, !170}
!2790 = !{!2791, !2792, !2793}
!2791 = !DILocalVariable(name: "dev", arg: 1, scope: !2787, file: !2, line: 265, type: !150)
!2792 = !DILocalVariable(name: "driver_enable", arg: 2, scope: !2787, file: !2, line: 266, type: !170)
!2793 = !DILocalVariable(name: "config", scope: !2787, file: !2, line: 268, type: !1271)
!2794 = !DILocation(line: 265, column: 70, scope: !2787)
!2795 = !DILocation(line: 266, column: 13, scope: !2787)
!2796 = !DILocation(line: 268, column: 2, scope: !2787)
!2797 = !DILocation(line: 268, column: 34, scope: !2787)
!2798 = !DILocation(line: 268, column: 43, scope: !2787)
!2799 = !DILocation(line: 268, column: 48, scope: !2787)
!2800 = !DILocation(line: 270, column: 6, scope: !2801)
!2801 = distinct !DILexicalBlock(scope: !2787, file: !2, line: 270, column: 6)
!2802 = !DILocation(line: 270, column: 6, scope: !2787)
!2803 = !DILocation(line: 271, column: 25, scope: !2804)
!2804 = distinct !DILexicalBlock(scope: !2801, file: !2, line: 270, column: 21)
!2805 = !DILocation(line: 271, column: 33, scope: !2804)
!2806 = !DILocation(line: 271, column: 3, scope: !2804)
!2807 = !DILocation(line: 272, column: 2, scope: !2804)
!2808 = !DILocation(line: 273, column: 26, scope: !2809)
!2809 = distinct !DILexicalBlock(scope: !2801, file: !2, line: 272, column: 9)
!2810 = !DILocation(line: 273, column: 34, scope: !2809)
!2811 = !DILocation(line: 273, column: 3, scope: !2809)
!2812 = !DILocation(line: 275, column: 1, scope: !2787)
!2813 = distinct !DISubprogram(name: "LL_USART_SetHWFlowCtrl", scope: !2038, file: !2038, line: 1491, type: !2814, scopeLine: 1492, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2816)
!2814 = !DISubroutineType(types: !2815)
!2815 = !{null, !254, !172}
!2816 = !{!2817, !2818}
!2817 = !DILocalVariable(name: "USARTx", arg: 1, scope: !2813, file: !2038, line: 1491, type: !254)
!2818 = !DILocalVariable(name: "HardwareFlowControl", arg: 2, scope: !2813, file: !2038, line: 1491, type: !172)
!2819 = !DILocation(line: 1491, column: 60, scope: !2813)
!2820 = !DILocation(line: 1491, column: 77, scope: !2813)
!2821 = !DILocation(line: 1493, column: 28, scope: !2813)
!2822 = !DILocation(line: 1493, column: 36, scope: !2813)
!2823 = !DILocation(line: 1493, column: 43, scope: !2813)
!2824 = !DILocation(line: 1493, column: 88, scope: !2813)
!2825 = !DILocation(line: 1493, column: 85, scope: !2813)
!2826 = !DILocation(line: 1493, column: 6, scope: !2813)
!2827 = !DILocation(line: 1493, column: 14, scope: !2813)
!2828 = !DILocation(line: 1493, column: 20, scope: !2813)
!2829 = !DILocation(line: 1494, column: 1, scope: !2813)
!2830 = distinct !DISubprogram(name: "clock_control_get_rate", scope: !131, file: !131, line: 216, type: !297, scopeLine: 219, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2831)
!2831 = !{!2832, !2833, !2834, !2835}
!2832 = !DILocalVariable(name: "dev", arg: 1, scope: !2830, file: !131, line: 216, type: !150)
!2833 = !DILocalVariable(name: "sys", arg: 2, scope: !2830, file: !131, line: 217, type: !274)
!2834 = !DILocalVariable(name: "rate", arg: 3, scope: !2830, file: !131, line: 218, type: !299)
!2835 = !DILocalVariable(name: "api", scope: !2830, file: !131, line: 220, type: !275)
!2836 = !DILocation(line: 216, column: 63, scope: !2830)
!2837 = !DILocation(line: 217, column: 30, scope: !2830)
!2838 = !DILocation(line: 218, column: 17, scope: !2830)
!2839 = !DILocation(line: 220, column: 2, scope: !2830)
!2840 = !DILocation(line: 220, column: 41, scope: !2830)
!2841 = !DILocation(line: 221, column: 44, scope: !2830)
!2842 = !DILocation(line: 221, column: 49, scope: !2830)
!2843 = !DILocation(line: 223, column: 6, scope: !2844)
!2844 = distinct !DILexicalBlock(scope: !2830, file: !131, line: 223, column: 6)
!2845 = !DILocation(line: 223, column: 11, scope: !2844)
!2846 = !DILocation(line: 223, column: 20, scope: !2844)
!2847 = !DILocation(line: 223, column: 6, scope: !2830)
!2848 = !DILocation(line: 224, column: 3, scope: !2849)
!2849 = distinct !DILexicalBlock(scope: !2844, file: !131, line: 223, column: 35)
!2850 = !DILocation(line: 227, column: 9, scope: !2830)
!2851 = !DILocation(line: 227, column: 14, scope: !2830)
!2852 = !DILocation(line: 227, column: 23, scope: !2830)
!2853 = !DILocation(line: 227, column: 28, scope: !2830)
!2854 = !DILocation(line: 227, column: 33, scope: !2830)
!2855 = !DILocation(line: 227, column: 2, scope: !2830)
!2856 = !DILocation(line: 228, column: 1, scope: !2830)
!2857 = distinct !DISubprogram(name: "LL_USART_SetOverSampling", scope: !2038, file: !2038, line: 866, type: !2814, scopeLine: 867, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2858)
!2858 = !{!2859, !2860}
!2859 = !DILocalVariable(name: "USARTx", arg: 1, scope: !2857, file: !2038, line: 866, type: !254)
!2860 = !DILocalVariable(name: "OverSampling", arg: 2, scope: !2857, file: !2038, line: 866, type: !172)
!2861 = !DILocation(line: 866, column: 62, scope: !2857)
!2862 = !DILocation(line: 866, column: 79, scope: !2857)
!2863 = !DILocation(line: 868, column: 28, scope: !2857)
!2864 = !DILocation(line: 868, column: 36, scope: !2857)
!2865 = !DILocation(line: 868, column: 43, scope: !2857)
!2866 = !DILocation(line: 868, column: 71, scope: !2857)
!2867 = !DILocation(line: 868, column: 68, scope: !2857)
!2868 = !DILocation(line: 868, column: 6, scope: !2857)
!2869 = !DILocation(line: 868, column: 14, scope: !2857)
!2870 = !DILocation(line: 868, column: 20, scope: !2857)
!2871 = !DILocation(line: 869, column: 1, scope: !2857)
!2872 = distinct !DISubprogram(name: "LL_USART_SetBaudRate", scope: !2038, file: !2038, line: 1633, type: !2573, scopeLine: 1635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2873)
!2873 = !{!2874, !2875, !2876, !2877, !2878, !2879}
!2874 = !DILocalVariable(name: "USARTx", arg: 1, scope: !2872, file: !2038, line: 1633, type: !254)
!2875 = !DILocalVariable(name: "PeriphClk", arg: 2, scope: !2872, file: !2038, line: 1633, type: !172)
!2876 = !DILocalVariable(name: "OverSampling", arg: 3, scope: !2872, file: !2038, line: 1633, type: !172)
!2877 = !DILocalVariable(name: "BaudRate", arg: 4, scope: !2872, file: !2038, line: 1634, type: !172)
!2878 = !DILocalVariable(name: "usartdiv", scope: !2872, file: !2038, line: 1636, type: !172)
!2879 = !DILocalVariable(name: "brrtemp", scope: !2872, file: !2038, line: 1637, type: !172)
!2880 = !DILocation(line: 1633, column: 58, scope: !2872)
!2881 = !DILocation(line: 1633, column: 75, scope: !2872)
!2882 = !DILocation(line: 1633, column: 95, scope: !2872)
!2883 = !DILocation(line: 1634, column: 52, scope: !2872)
!2884 = !DILocation(line: 1636, column: 3, scope: !2872)
!2885 = !DILocation(line: 1636, column: 12, scope: !2872)
!2886 = !DILocation(line: 1637, column: 3, scope: !2872)
!2887 = !DILocation(line: 1637, column: 12, scope: !2872)
!2888 = !DILocation(line: 1639, column: 7, scope: !2889)
!2889 = distinct !DILexicalBlock(scope: !2872, file: !2038, line: 1639, column: 7)
!2890 = !DILocation(line: 1639, column: 20, scope: !2889)
!2891 = !DILocation(line: 1639, column: 7, scope: !2872)
!2892 = !DILocation(line: 1641, column: 31, scope: !2893)
!2893 = distinct !DILexicalBlock(scope: !2889, file: !2038, line: 1640, column: 3)
!2894 = !DILocation(line: 1641, column: 41, scope: !2893)
!2895 = !DILocation(line: 1641, column: 50, scope: !2893)
!2896 = !DILocation(line: 1641, column: 59, scope: !2893)
!2897 = !DILocation(line: 1641, column: 46, scope: !2893)
!2898 = !DILocation(line: 1641, column: 66, scope: !2893)
!2899 = !DILocation(line: 1641, column: 64, scope: !2893)
!2900 = !DILocation(line: 1641, column: 16, scope: !2893)
!2901 = !DILocation(line: 1641, column: 14, scope: !2893)
!2902 = !DILocation(line: 1642, column: 15, scope: !2893)
!2903 = !DILocation(line: 1642, column: 24, scope: !2893)
!2904 = !DILocation(line: 1642, column: 13, scope: !2893)
!2905 = !DILocation(line: 1643, column: 28, scope: !2893)
!2906 = !DILocation(line: 1643, column: 37, scope: !2893)
!2907 = !DILocation(line: 1643, column: 58, scope: !2893)
!2908 = !DILocation(line: 1643, column: 16, scope: !2893)
!2909 = !DILocation(line: 1643, column: 13, scope: !2893)
!2910 = !DILocation(line: 1644, column: 19, scope: !2893)
!2911 = !DILocation(line: 1644, column: 5, scope: !2893)
!2912 = !DILocation(line: 1644, column: 13, scope: !2893)
!2913 = !DILocation(line: 1644, column: 17, scope: !2893)
!2914 = !DILocation(line: 1645, column: 3, scope: !2893)
!2915 = !DILocation(line: 1648, column: 33, scope: !2916)
!2916 = distinct !DILexicalBlock(scope: !2889, file: !2038, line: 1647, column: 3)
!2917 = !DILocation(line: 1648, column: 48, scope: !2916)
!2918 = !DILocation(line: 1648, column: 57, scope: !2916)
!2919 = !DILocation(line: 1648, column: 44, scope: !2916)
!2920 = !DILocation(line: 1648, column: 64, scope: !2916)
!2921 = !DILocation(line: 1648, column: 62, scope: !2916)
!2922 = !DILocation(line: 1648, column: 19, scope: !2916)
!2923 = !DILocation(line: 1648, column: 5, scope: !2916)
!2924 = !DILocation(line: 1648, column: 13, scope: !2916)
!2925 = !DILocation(line: 1648, column: 17, scope: !2916)
!2926 = !DILocation(line: 1650, column: 1, scope: !2872)
!2927 = distinct !DISubprogram(name: "LL_USART_GetParity", scope: !2038, file: !2038, line: 757, type: !2039, scopeLine: 758, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2928)
!2928 = !{!2929}
!2929 = !DILocalVariable(name: "USARTx", arg: 1, scope: !2927, file: !2038, line: 757, type: !2041)
!2930 = !DILocation(line: 757, column: 66, scope: !2927)
!2931 = !DILocation(line: 759, column: 23, scope: !2927)
!2932 = !DILocation(line: 759, column: 31, scope: !2927)
!2933 = !DILocation(line: 759, column: 36, scope: !2927)
!2934 = !DILocation(line: 759, column: 3, scope: !2927)
!2935 = distinct !DISubprogram(name: "LL_USART_SetParity", scope: !2038, file: !2038, line: 742, type: !2814, scopeLine: 743, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2936)
!2936 = !{!2937, !2938}
!2937 = !DILocalVariable(name: "USARTx", arg: 1, scope: !2935, file: !2038, line: 742, type: !254)
!2938 = !DILocalVariable(name: "Parity", arg: 2, scope: !2935, file: !2038, line: 742, type: !172)
!2939 = !DILocation(line: 742, column: 56, scope: !2935)
!2940 = !DILocation(line: 742, column: 73, scope: !2935)
!2941 = !DILocation(line: 744, column: 28, scope: !2935)
!2942 = !DILocation(line: 744, column: 36, scope: !2935)
!2943 = !DILocation(line: 744, column: 43, scope: !2935)
!2944 = !DILocation(line: 744, column: 89, scope: !2935)
!2945 = !DILocation(line: 744, column: 86, scope: !2935)
!2946 = !DILocation(line: 744, column: 6, scope: !2935)
!2947 = !DILocation(line: 744, column: 14, scope: !2935)
!2948 = !DILocation(line: 744, column: 20, scope: !2935)
!2949 = !DILocation(line: 745, column: 1, scope: !2935)
!2950 = distinct !DISubprogram(name: "LL_USART_GetStopBitsLength", scope: !2038, file: !2038, line: 1075, type: !2039, scopeLine: 1076, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2951)
!2951 = !{!2952}
!2952 = !DILocalVariable(name: "USARTx", arg: 1, scope: !2950, file: !2038, line: 1075, type: !2041)
!2953 = !DILocation(line: 1075, column: 74, scope: !2950)
!2954 = !DILocation(line: 1077, column: 23, scope: !2950)
!2955 = !DILocation(line: 1077, column: 31, scope: !2950)
!2956 = !DILocation(line: 1077, column: 36, scope: !2950)
!2957 = !DILocation(line: 1077, column: 3, scope: !2950)
!2958 = distinct !DISubprogram(name: "LL_USART_SetStopBitsLength", scope: !2038, file: !2038, line: 1058, type: !2814, scopeLine: 1059, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2959)
!2959 = !{!2960, !2961}
!2960 = !DILocalVariable(name: "USARTx", arg: 1, scope: !2958, file: !2038, line: 1058, type: !254)
!2961 = !DILocalVariable(name: "StopBits", arg: 2, scope: !2958, file: !2038, line: 1058, type: !172)
!2962 = !DILocation(line: 1058, column: 64, scope: !2958)
!2963 = !DILocation(line: 1058, column: 81, scope: !2958)
!2964 = !DILocation(line: 1060, column: 28, scope: !2958)
!2965 = !DILocation(line: 1060, column: 36, scope: !2958)
!2966 = !DILocation(line: 1060, column: 43, scope: !2958)
!2967 = !DILocation(line: 1060, column: 71, scope: !2958)
!2968 = !DILocation(line: 1060, column: 68, scope: !2958)
!2969 = !DILocation(line: 1060, column: 6, scope: !2958)
!2970 = !DILocation(line: 1060, column: 14, scope: !2958)
!2971 = !DILocation(line: 1060, column: 20, scope: !2958)
!2972 = !DILocation(line: 1061, column: 1, scope: !2958)
!2973 = distinct !DISubprogram(name: "LL_USART_GetDataWidth", scope: !2038, file: !2038, line: 819, type: !2039, scopeLine: 820, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2974)
!2974 = !{!2975}
!2975 = !DILocalVariable(name: "USARTx", arg: 1, scope: !2973, file: !2038, line: 819, type: !2041)
!2976 = !DILocation(line: 819, column: 69, scope: !2973)
!2977 = !DILocation(line: 821, column: 23, scope: !2973)
!2978 = !DILocation(line: 821, column: 31, scope: !2973)
!2979 = !DILocation(line: 821, column: 36, scope: !2973)
!2980 = !DILocation(line: 821, column: 3, scope: !2973)
!2981 = distinct !DISubprogram(name: "LL_USART_SetDataWidth", scope: !2038, file: !2038, line: 802, type: !2814, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2982)
!2982 = !{!2983, !2984}
!2983 = !DILocalVariable(name: "USARTx", arg: 1, scope: !2981, file: !2038, line: 802, type: !254)
!2984 = !DILocalVariable(name: "DataWidth", arg: 2, scope: !2981, file: !2038, line: 802, type: !172)
!2985 = !DILocation(line: 802, column: 59, scope: !2981)
!2986 = !DILocation(line: 802, column: 76, scope: !2981)
!2987 = !DILocation(line: 804, column: 28, scope: !2981)
!2988 = !DILocation(line: 804, column: 36, scope: !2981)
!2989 = !DILocation(line: 804, column: 43, scope: !2981)
!2990 = !DILocation(line: 804, column: 75, scope: !2981)
!2991 = !DILocation(line: 804, column: 72, scope: !2981)
!2992 = !DILocation(line: 804, column: 6, scope: !2981)
!2993 = !DILocation(line: 804, column: 14, scope: !2981)
!2994 = !DILocation(line: 804, column: 20, scope: !2981)
!2995 = !DILocation(line: 805, column: 1, scope: !2981)
!2996 = distinct !DISubprogram(name: "LL_USART_GetHWFlowCtrl", scope: !2038, file: !2038, line: 1509, type: !2039, scopeLine: 1510, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2997)
!2997 = !{!2998}
!2998 = !DILocalVariable(name: "USARTx", arg: 1, scope: !2996, file: !2038, line: 1509, type: !2041)
!2999 = !DILocation(line: 1509, column: 70, scope: !2996)
!3000 = !DILocation(line: 1511, column: 23, scope: !2996)
!3001 = !DILocation(line: 1511, column: 31, scope: !2996)
!3002 = !DILocation(line: 1511, column: 36, scope: !2996)
!3003 = !DILocation(line: 1511, column: 3, scope: !2996)
!3004 = distinct !DISubprogram(name: "LL_USART_IsEnabledDEMode", scope: !2038, file: !2038, line: 2252, type: !2039, scopeLine: 2253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3005)
!3005 = !{!3006}
!3006 = !DILocalVariable(name: "USARTx", arg: 1, scope: !3004, file: !2038, line: 2252, type: !2041)
!3007 = !DILocation(line: 2252, column: 72, scope: !3004)
!3008 = !DILocation(line: 2254, column: 14, scope: !3004)
!3009 = !DILocation(line: 2254, column: 22, scope: !3004)
!3010 = !DILocation(line: 2254, column: 27, scope: !3004)
!3011 = !DILocation(line: 2254, column: 49, scope: !3004)
!3012 = !DILocation(line: 2254, column: 11, scope: !3004)
!3013 = !DILocation(line: 2254, column: 3, scope: !3004)
!3014 = distinct !DISubprogram(name: "LL_USART_EnableDEMode", scope: !2038, file: !2038, line: 2226, type: !2053, scopeLine: 2227, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3015)
!3015 = !{!3016}
!3016 = !DILocalVariable(name: "USARTx", arg: 1, scope: !3014, file: !2038, line: 2226, type: !254)
!3017 = !DILocation(line: 2226, column: 59, scope: !3014)
!3018 = !DILocation(line: 2228, column: 5, scope: !3014)
!3019 = !DILocation(line: 2228, column: 13, scope: !3014)
!3020 = !DILocation(line: 2228, column: 18, scope: !3014)
!3021 = !DILocation(line: 2229, column: 1, scope: !3014)
!3022 = distinct !DISubprogram(name: "LL_USART_DisableDEMode", scope: !2038, file: !2038, line: 2239, type: !2053, scopeLine: 2240, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3023)
!3023 = !{!3024}
!3024 = !DILocalVariable(name: "USARTx", arg: 1, scope: !3022, file: !2038, line: 2239, type: !254)
!3025 = !DILocation(line: 2239, column: 60, scope: !3022)
!3026 = !DILocation(line: 2241, column: 5, scope: !3022)
!3027 = !DILocation(line: 2241, column: 13, scope: !3022)
!3028 = !DILocation(line: 2241, column: 18, scope: !3022)
!3029 = !DILocation(line: 2242, column: 1, scope: !3022)
!3030 = distinct !DISubprogram(name: "uart_stm32_ll2cfg_parity", scope: !2, file: !2, line: 298, type: !3031, scopeLine: 299, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3033)
!3031 = !DISubroutineType(types: !3032)
!3032 = !{!104, !172}
!3033 = !{!3034}
!3034 = !DILocalVariable(name: "parity", arg: 1, scope: !3030, file: !2, line: 298, type: !172)
!3035 = !DILocation(line: 298, column: 73, scope: !3030)
!3036 = !DILocation(line: 300, column: 10, scope: !3030)
!3037 = !DILocation(line: 300, column: 2, scope: !3030)
!3038 = !DILocation(line: 302, column: 3, scope: !3039)
!3039 = distinct !DILexicalBlock(scope: !3030, file: !2, line: 300, column: 18)
!3040 = !DILocation(line: 304, column: 3, scope: !3039)
!3041 = !DILocation(line: 305, column: 2, scope: !3039)
!3042 = !DILocation(line: 307, column: 3, scope: !3039)
!3043 = !DILocation(line: 309, column: 1, scope: !3030)
!3044 = distinct !DISubprogram(name: "uart_stm32_ll2cfg_hwctrl", scope: !2, file: !2, line: 453, type: !3045, scopeLine: 454, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3047)
!3045 = !DISubroutineType(types: !3046)
!3046 = !{!118, !172}
!3047 = !{!3048}
!3048 = !DILocalVariable(name: "fc", arg: 1, scope: !3044, file: !2, line: 453, type: !172)
!3049 = !DILocation(line: 453, column: 79, scope: !3044)
!3050 = !DILocation(line: 455, column: 6, scope: !3051)
!3051 = distinct !DILexicalBlock(scope: !3044, file: !2, line: 455, column: 6)
!3052 = !DILocation(line: 455, column: 9, scope: !3051)
!3053 = !DILocation(line: 455, column: 6, scope: !3044)
!3054 = !DILocation(line: 456, column: 3, scope: !3055)
!3055 = distinct !DILexicalBlock(scope: !3051, file: !2, line: 455, column: 49)
!3056 = !DILocation(line: 459, column: 2, scope: !3044)
!3057 = !DILocation(line: 460, column: 1, scope: !3044)
!3058 = distinct !DISubprogram(name: "uart_stm32_fifo_fill_visitor", scope: !2, file: !2, line: 801, type: !3059, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3065)
!3059 = !DISubroutineType(types: !3060)
!3060 = !{!139, !150, !159, !139, !3061}
!3061 = !DIDerivedType(tag: DW_TAG_typedef, name: "fifo_fill_fn", file: !2, line: 798, baseType: !3062)
!3062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3063, size: 32)
!3063 = !DISubroutineType(types: !3064)
!3064 = !{null, !1271, !159, !224}
!3065 = !{!3066, !3067, !3068, !3069, !3070, !3071, !3072}
!3066 = !DILocalVariable(name: "dev", arg: 1, scope: !3058, file: !2, line: 801, type: !150)
!3067 = !DILocalVariable(name: "tx_data", arg: 2, scope: !3058, file: !2, line: 801, type: !159)
!3068 = !DILocalVariable(name: "size", arg: 3, scope: !3058, file: !2, line: 801, type: !139)
!3069 = !DILocalVariable(name: "fill_fn", arg: 4, scope: !3058, file: !2, line: 802, type: !3061)
!3070 = !DILocalVariable(name: "config", scope: !3058, file: !2, line: 804, type: !1271)
!3071 = !DILocalVariable(name: "num_tx", scope: !3058, file: !2, line: 805, type: !167)
!3072 = !DILocalVariable(name: "key", scope: !3058, file: !2, line: 806, type: !173)
!3073 = !DILocation(line: 801, column: 62, scope: !3058)
!3074 = !DILocation(line: 801, column: 79, scope: !3058)
!3075 = !DILocation(line: 801, column: 92, scope: !3058)
!3076 = !DILocation(line: 802, column: 19, scope: !3058)
!3077 = !DILocation(line: 804, column: 2, scope: !3058)
!3078 = !DILocation(line: 804, column: 34, scope: !3058)
!3079 = !DILocation(line: 804, column: 43, scope: !3058)
!3080 = !DILocation(line: 804, column: 48, scope: !3058)
!3081 = !DILocation(line: 805, column: 2, scope: !3058)
!3082 = !DILocation(line: 805, column: 10, scope: !3058)
!3083 = !DILocation(line: 806, column: 2, scope: !3058)
!3084 = !DILocation(line: 806, column: 15, scope: !3058)
!3085 = !DILocation(line: 808, column: 33, scope: !3086)
!3086 = distinct !DILexicalBlock(scope: !3058, file: !2, line: 808, column: 6)
!3087 = !DILocation(line: 808, column: 41, scope: !3086)
!3088 = !DILocation(line: 808, column: 7, scope: !3086)
!3089 = !DILocation(line: 808, column: 6, scope: !3058)
!3090 = !DILocation(line: 809, column: 10, scope: !3091)
!3091 = distinct !DILexicalBlock(scope: !3086, file: !2, line: 808, column: 49)
!3092 = !DILocation(line: 809, column: 3, scope: !3091)
!3093 = !DILocation(line: 44, column: 2, scope: !2112, inlinedAt: !3094)
!3094 = distinct !DILocation(line: 813, column: 8, scope: !3058)
!3095 = !DILocation(line: 44, column: 15, scope: !2112, inlinedAt: !3094)
!3096 = !DILocation(line: 48, column: 2, scope: !2112, inlinedAt: !3094)
!3097 = !DILocation(line: 80, column: 9, scope: !2112, inlinedAt: !3094)
!3098 = !DILocation(line: 81, column: 1, scope: !2112, inlinedAt: !3094)
!3099 = !DILocation(line: 813, column: 6, scope: !3058)
!3100 = !DILocation(line: 815, column: 2, scope: !3058)
!3101 = !DILocation(line: 815, column: 10, scope: !3058)
!3102 = !DILocation(line: 815, column: 17, scope: !3058)
!3103 = !DILocation(line: 815, column: 15, scope: !3058)
!3104 = !DILocation(line: 815, column: 24, scope: !3058)
!3105 = !DILocation(line: 815, column: 29, scope: !3058)
!3106 = !DILocation(line: 815, column: 58, scope: !3058)
!3107 = !DILocation(line: 815, column: 66, scope: !3058)
!3108 = !DILocation(line: 815, column: 32, scope: !3058)
!3109 = !DILocation(line: 0, scope: !3058)
!3110 = !DILocation(line: 819, column: 3, scope: !3111)
!3111 = distinct !DILexicalBlock(scope: !3058, file: !2, line: 815, column: 74)
!3112 = !DILocation(line: 819, column: 11, scope: !3111)
!3113 = !DILocation(line: 819, column: 19, scope: !3111)
!3114 = !DILocation(line: 819, column: 28, scope: !3111)
!3115 = !DILocation(line: 820, column: 9, scope: !3111)
!3116 = distinct !{!3116, !3100, !3117}
!3117 = !DILocation(line: 821, column: 2, scope: !3058)
!3118 = !DILocation(line: 823, column: 18, scope: !3058)
!3119 = !DILocation(line: 88, column: 80, scope: !2135, inlinedAt: !3120)
!3120 = distinct !DILocation(line: 823, column: 2, scope: !3058)
!3121 = !DILocation(line: 91, column: 6, scope: !2140, inlinedAt: !3120)
!3122 = !DILocation(line: 91, column: 10, scope: !2140, inlinedAt: !3120)
!3123 = !DILocation(line: 91, column: 6, scope: !2135, inlinedAt: !3120)
!3124 = !DILocation(line: 92, column: 3, scope: !2144, inlinedAt: !3120)
!3125 = !DILocation(line: 94, column: 2, scope: !2135, inlinedAt: !3120)
!3126 = !DILocation(line: 114, column: 1, scope: !2135, inlinedAt: !3120)
!3127 = !DILocation(line: 825, column: 9, scope: !3058)
!3128 = !DILocation(line: 825, column: 2, scope: !3058)
!3129 = !DILocation(line: 826, column: 1, scope: !3058)
!3130 = distinct !DISubprogram(name: "fifo_fill_with_u8", scope: !2, file: !2, line: 828, type: !3063, scopeLine: 830, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3131)
!3131 = !{!3132, !3133, !3134, !3135}
!3132 = !DILocalVariable(name: "config", arg: 1, scope: !3130, file: !2, line: 828, type: !1271)
!3133 = !DILocalVariable(name: "tx_data", arg: 2, scope: !3130, file: !2, line: 829, type: !159)
!3134 = !DILocalVariable(name: "offset", arg: 3, scope: !3130, file: !2, line: 829, type: !224)
!3135 = !DILocalVariable(name: "data", scope: !3130, file: !2, line: 831, type: !223)
!3136 = !DILocation(line: 828, column: 63, scope: !3130)
!3137 = !DILocation(line: 829, column: 19, scope: !3130)
!3138 = !DILocation(line: 829, column: 42, scope: !3130)
!3139 = !DILocation(line: 831, column: 2, scope: !3130)
!3140 = !DILocation(line: 831, column: 17, scope: !3130)
!3141 = !DILocation(line: 831, column: 41, scope: !3130)
!3142 = !DILocation(line: 833, column: 25, scope: !3130)
!3143 = !DILocation(line: 833, column: 33, scope: !3130)
!3144 = !DILocation(line: 833, column: 40, scope: !3130)
!3145 = !DILocation(line: 833, column: 45, scope: !3130)
!3146 = !DILocation(line: 833, column: 2, scope: !3130)
!3147 = !DILocation(line: 834, column: 1, scope: !3130)
!3148 = distinct !DISubprogram(name: "uart_stm32_fifo_read_visitor", scope: !2, file: !2, line: 849, type: !3149, scopeLine: 851, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3155)
!3149 = !DISubroutineType(types: !3150)
!3150 = !{!139, !150, !138, !229, !3151}
!3151 = !DIDerivedType(tag: DW_TAG_typedef, name: "fifo_read_fn", file: !2, line: 846, baseType: !3152)
!3152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3153, size: 32)
!3153 = !DISubroutineType(types: !3154)
!3154 = !{null, !1271, !138, !224}
!3155 = !{!3156, !3157, !3158, !3159, !3160, !3161}
!3156 = !DILocalVariable(name: "dev", arg: 1, scope: !3148, file: !2, line: 849, type: !150)
!3157 = !DILocalVariable(name: "rx_data", arg: 2, scope: !3148, file: !2, line: 849, type: !138)
!3158 = !DILocalVariable(name: "size", arg: 3, scope: !3148, file: !2, line: 849, type: !229)
!3159 = !DILocalVariable(name: "read_fn", arg: 4, scope: !3148, file: !2, line: 850, type: !3151)
!3160 = !DILocalVariable(name: "config", scope: !3148, file: !2, line: 852, type: !1271)
!3161 = !DILocalVariable(name: "num_rx", scope: !3148, file: !2, line: 853, type: !167)
!3162 = !DILocation(line: 849, column: 62, scope: !3148)
!3163 = !DILocation(line: 849, column: 73, scope: !3148)
!3164 = !DILocation(line: 849, column: 92, scope: !3148)
!3165 = !DILocation(line: 850, column: 19, scope: !3148)
!3166 = !DILocation(line: 852, column: 2, scope: !3148)
!3167 = !DILocation(line: 852, column: 34, scope: !3148)
!3168 = !DILocation(line: 852, column: 43, scope: !3148)
!3169 = !DILocation(line: 852, column: 48, scope: !3148)
!3170 = !DILocation(line: 853, column: 2, scope: !3148)
!3171 = !DILocation(line: 853, column: 10, scope: !3148)
!3172 = !DILocation(line: 855, column: 2, scope: !3148)
!3173 = !DILocation(line: 855, column: 10, scope: !3148)
!3174 = !DILocation(line: 855, column: 17, scope: !3148)
!3175 = !DILocation(line: 855, column: 15, scope: !3148)
!3176 = !DILocation(line: 855, column: 24, scope: !3148)
!3177 = !DILocation(line: 855, column: 29, scope: !3148)
!3178 = !DILocation(line: 855, column: 59, scope: !3148)
!3179 = !DILocation(line: 855, column: 67, scope: !3148)
!3180 = !DILocation(line: 855, column: 32, scope: !3148)
!3181 = !DILocation(line: 0, scope: !3148)
!3182 = !DILocation(line: 858, column: 3, scope: !3183)
!3183 = distinct !DILexicalBlock(scope: !3148, file: !2, line: 855, column: 75)
!3184 = !DILocation(line: 858, column: 11, scope: !3183)
!3185 = !DILocation(line: 858, column: 19, scope: !3183)
!3186 = !DILocation(line: 858, column: 28, scope: !3183)
!3187 = !DILocation(line: 859, column: 9, scope: !3183)
!3188 = !DILocation(line: 862, column: 33, scope: !3189)
!3189 = distinct !DILexicalBlock(scope: !3183, file: !2, line: 862, column: 7)
!3190 = !DILocation(line: 862, column: 41, scope: !3189)
!3191 = !DILocation(line: 862, column: 7, scope: !3189)
!3192 = !DILocation(line: 862, column: 7, scope: !3183)
!3193 = !DILocation(line: 863, column: 27, scope: !3194)
!3194 = distinct !DILexicalBlock(scope: !3189, file: !2, line: 862, column: 49)
!3195 = !DILocation(line: 863, column: 35, scope: !3194)
!3196 = !DILocation(line: 863, column: 4, scope: !3194)
!3197 = !DILocation(line: 868, column: 3, scope: !3194)
!3198 = distinct !{!3198, !3172, !3199}
!3199 = !DILocation(line: 869, column: 2, scope: !3148)
!3200 = !DILocation(line: 871, column: 9, scope: !3148)
!3201 = !DILocation(line: 872, column: 1, scope: !3148)
!3202 = !DILocation(line: 871, column: 2, scope: !3148)
!3203 = distinct !DISubprogram(name: "fifo_read_with_u8", scope: !2, file: !2, line: 874, type: !3153, scopeLine: 876, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3204)
!3204 = !{!3205, !3206, !3207, !3208}
!3205 = !DILocalVariable(name: "config", arg: 1, scope: !3203, file: !2, line: 874, type: !1271)
!3206 = !DILocalVariable(name: "rx_data", arg: 2, scope: !3203, file: !2, line: 874, type: !138)
!3207 = !DILocalVariable(name: "offset", arg: 3, scope: !3203, file: !2, line: 875, type: !224)
!3208 = !DILocalVariable(name: "data", scope: !3203, file: !2, line: 877, type: !174)
!3209 = !DILocation(line: 874, column: 63, scope: !3203)
!3210 = !DILocation(line: 874, column: 77, scope: !3203)
!3211 = !DILocation(line: 875, column: 21, scope: !3203)
!3212 = !DILocation(line: 877, column: 2, scope: !3203)
!3213 = !DILocation(line: 877, column: 11, scope: !3203)
!3214 = !DILocation(line: 877, column: 29, scope: !3203)
!3215 = !DILocation(line: 879, column: 39, scope: !3203)
!3216 = !DILocation(line: 879, column: 47, scope: !3203)
!3217 = !DILocation(line: 879, column: 17, scope: !3203)
!3218 = !DILocation(line: 879, column: 2, scope: !3203)
!3219 = !DILocation(line: 879, column: 7, scope: !3203)
!3220 = !DILocation(line: 879, column: 15, scope: !3203)
!3221 = !DILocation(line: 880, column: 1, scope: !3203)
!3222 = distinct !DISubprogram(name: "LL_USART_EnableIT_TC", scope: !2038, file: !2038, line: 3125, type: !2053, scopeLine: 3126, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3223)
!3223 = !{!3224, !3225}
!3224 = !DILocalVariable(name: "USARTx", arg: 1, scope: !3222, file: !2038, line: 3125, type: !254)
!3225 = !DILocalVariable(name: "primask", scope: !3226, file: !2038, line: 3127, type: !172)
!3226 = distinct !DILexicalBlock(scope: !3222, file: !2038, line: 3127, column: 6)
!3227 = !DILocation(line: 3125, column: 58, scope: !3222)
!3228 = !DILocation(line: 3127, column: 3, scope: !3222)
!3229 = !DILocation(line: 3127, column: 8, scope: !3226)
!3230 = !DILocation(line: 3127, column: 17, scope: !3226)
!3231 = !DILocation(line: 997, column: 3, scope: !3232, inlinedAt: !3238)
!3232 = distinct !DISubprogram(name: "__get_PRIMASK", scope: !3233, file: !3233, line: 995, type: !3234, scopeLine: 996, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3236)
!3233 = !DIFile(filename: "modules/hal/cmsis/CMSIS/Core/Include/cmsis_armclang.h", directory: "/home/sri/zephyrproject")
!3234 = !DISubroutineType(types: !3235)
!3235 = !{!172}
!3236 = !{!3237}
!3237 = !DILocalVariable(name: "result", scope: !3232, file: !3233, line: 997, type: !172)
!3238 = distinct !DILocation(line: 3127, column: 36, scope: !3226)
!3239 = !DILocation(line: 997, column: 12, scope: !3232, inlinedAt: !3238)
!3240 = !DILocation(line: 999, column: 3, scope: !3232, inlinedAt: !3238)
!3241 = !{i64 165791}
!3242 = !DILocation(line: 1000, column: 10, scope: !3232, inlinedAt: !3238)
!3243 = !DILocation(line: 1001, column: 1, scope: !3232, inlinedAt: !3238)
!3244 = !DILocation(line: 3127, column: 34, scope: !3226)
!3245 = !DILocalVariable(name: "priMask", arg: 1, scope: !3246, file: !3233, line: 1025, type: !172)
!3246 = distinct !DISubprogram(name: "__set_PRIMASK", scope: !3233, file: !3233, line: 1025, type: !3247, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3249)
!3247 = !DISubroutineType(types: !3248)
!3248 = !{null, !172}
!3249 = !{!3245}
!3250 = !DILocation(line: 1025, column: 76, scope: !3246, inlinedAt: !3251)
!3251 = distinct !DILocation(line: 3127, column: 53, scope: !3226)
!3252 = !DILocation(line: 1027, column: 46, scope: !3246, inlinedAt: !3251)
!3253 = !DILocation(line: 1027, column: 3, scope: !3246, inlinedAt: !3251)
!3254 = !{i64 166041}
!3255 = !DILocation(line: 3127, column: 74, scope: !3226)
!3256 = !DILocation(line: 3127, column: 82, scope: !3226)
!3257 = !DILocation(line: 3127, column: 88, scope: !3226)
!3258 = !DILocation(line: 3127, column: 127, scope: !3226)
!3259 = !DILocation(line: 1025, column: 76, scope: !3246, inlinedAt: !3260)
!3260 = distinct !DILocation(line: 3127, column: 113, scope: !3226)
!3261 = !DILocation(line: 1027, column: 46, scope: !3246, inlinedAt: !3260)
!3262 = !DILocation(line: 1027, column: 3, scope: !3246, inlinedAt: !3260)
!3263 = !DILocation(line: 3127, column: 137, scope: !3222)
!3264 = !DILocation(line: 3127, column: 137, scope: !3226)
!3265 = !DILocation(line: 3128, column: 1, scope: !3222)
!3266 = distinct !DISubprogram(name: "LL_USART_DisableIT_TC", scope: !2038, file: !2038, line: 3278, type: !2053, scopeLine: 3279, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3267)
!3267 = !{!3268, !3269}
!3268 = !DILocalVariable(name: "USARTx", arg: 1, scope: !3266, file: !2038, line: 3278, type: !254)
!3269 = !DILocalVariable(name: "primask", scope: !3270, file: !2038, line: 3280, type: !172)
!3270 = distinct !DILexicalBlock(scope: !3266, file: !2038, line: 3280, column: 6)
!3271 = !DILocation(line: 3278, column: 59, scope: !3266)
!3272 = !DILocation(line: 3280, column: 3, scope: !3266)
!3273 = !DILocation(line: 3280, column: 8, scope: !3270)
!3274 = !DILocation(line: 3280, column: 17, scope: !3270)
!3275 = !DILocation(line: 997, column: 3, scope: !3232, inlinedAt: !3276)
!3276 = distinct !DILocation(line: 3280, column: 36, scope: !3270)
!3277 = !DILocation(line: 997, column: 12, scope: !3232, inlinedAt: !3276)
!3278 = !DILocation(line: 999, column: 3, scope: !3232, inlinedAt: !3276)
!3279 = !DILocation(line: 1000, column: 10, scope: !3232, inlinedAt: !3276)
!3280 = !DILocation(line: 1001, column: 1, scope: !3232, inlinedAt: !3276)
!3281 = !DILocation(line: 3280, column: 34, scope: !3270)
!3282 = !DILocation(line: 1025, column: 76, scope: !3246, inlinedAt: !3283)
!3283 = distinct !DILocation(line: 3280, column: 53, scope: !3270)
!3284 = !DILocation(line: 1027, column: 46, scope: !3246, inlinedAt: !3283)
!3285 = !DILocation(line: 1027, column: 3, scope: !3246, inlinedAt: !3283)
!3286 = !DILocation(line: 3280, column: 74, scope: !3270)
!3287 = !DILocation(line: 3280, column: 82, scope: !3270)
!3288 = !DILocation(line: 3280, column: 88, scope: !3270)
!3289 = !DILocation(line: 3280, column: 128, scope: !3270)
!3290 = !DILocation(line: 1025, column: 76, scope: !3246, inlinedAt: !3291)
!3291 = distinct !DILocation(line: 3280, column: 114, scope: !3270)
!3292 = !DILocation(line: 1027, column: 46, scope: !3246, inlinedAt: !3291)
!3293 = !DILocation(line: 1027, column: 3, scope: !3246, inlinedAt: !3291)
!3294 = !DILocation(line: 3280, column: 138, scope: !3266)
!3295 = !DILocation(line: 3280, column: 138, scope: !3270)
!3296 = !DILocation(line: 3281, column: 1, scope: !3266)
!3297 = distinct !DISubprogram(name: "LL_USART_IsEnabledIT_TC", scope: !2038, file: !2038, line: 3431, type: !2039, scopeLine: 3432, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3298)
!3298 = !{!3299}
!3299 = !DILocalVariable(name: "USARTx", arg: 1, scope: !3297, file: !2038, line: 3431, type: !2041)
!3300 = !DILocation(line: 3431, column: 71, scope: !3297)
!3301 = !DILocation(line: 3433, column: 14, scope: !3297)
!3302 = !DILocation(line: 3433, column: 22, scope: !3297)
!3303 = !DILocation(line: 3433, column: 27, scope: !3297)
!3304 = !DILocation(line: 3433, column: 48, scope: !3297)
!3305 = !DILocation(line: 3433, column: 11, scope: !3297)
!3306 = !DILocation(line: 3433, column: 3, scope: !3297)
!3307 = distinct !DISubprogram(name: "LL_USART_EnableIT_RXNE", scope: !2038, file: !2038, line: 3114, type: !2053, scopeLine: 3115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3308)
!3308 = !{!3309, !3310}
!3309 = !DILocalVariable(name: "USARTx", arg: 1, scope: !3307, file: !2038, line: 3114, type: !254)
!3310 = !DILocalVariable(name: "primask", scope: !3311, file: !2038, line: 3116, type: !172)
!3311 = distinct !DILexicalBlock(scope: !3307, file: !2038, line: 3116, column: 6)
!3312 = !DILocation(line: 3114, column: 60, scope: !3307)
!3313 = !DILocation(line: 3116, column: 3, scope: !3307)
!3314 = !DILocation(line: 3116, column: 8, scope: !3311)
!3315 = !DILocation(line: 3116, column: 17, scope: !3311)
!3316 = !DILocation(line: 997, column: 3, scope: !3232, inlinedAt: !3317)
!3317 = distinct !DILocation(line: 3116, column: 36, scope: !3311)
!3318 = !DILocation(line: 997, column: 12, scope: !3232, inlinedAt: !3317)
!3319 = !DILocation(line: 999, column: 3, scope: !3232, inlinedAt: !3317)
!3320 = !DILocation(line: 1000, column: 10, scope: !3232, inlinedAt: !3317)
!3321 = !DILocation(line: 1001, column: 1, scope: !3232, inlinedAt: !3317)
!3322 = !DILocation(line: 3116, column: 34, scope: !3311)
!3323 = !DILocation(line: 1025, column: 76, scope: !3246, inlinedAt: !3324)
!3324 = distinct !DILocation(line: 3116, column: 53, scope: !3311)
!3325 = !DILocation(line: 1027, column: 46, scope: !3246, inlinedAt: !3324)
!3326 = !DILocation(line: 1027, column: 3, scope: !3246, inlinedAt: !3324)
!3327 = !DILocation(line: 3116, column: 74, scope: !3311)
!3328 = !DILocation(line: 3116, column: 82, scope: !3311)
!3329 = !DILocation(line: 3116, column: 88, scope: !3311)
!3330 = !DILocation(line: 3116, column: 127, scope: !3311)
!3331 = !DILocation(line: 1025, column: 76, scope: !3246, inlinedAt: !3332)
!3332 = distinct !DILocation(line: 3116, column: 113, scope: !3311)
!3333 = !DILocation(line: 1027, column: 46, scope: !3246, inlinedAt: !3332)
!3334 = !DILocation(line: 1027, column: 3, scope: !3246, inlinedAt: !3332)
!3335 = !DILocation(line: 3116, column: 137, scope: !3307)
!3336 = !DILocation(line: 3116, column: 137, scope: !3311)
!3337 = !DILocation(line: 3117, column: 1, scope: !3307)
!3338 = distinct !DISubprogram(name: "LL_USART_DisableIT_RXNE", scope: !2038, file: !2038, line: 3267, type: !2053, scopeLine: 3268, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3339)
!3339 = !{!3340, !3341}
!3340 = !DILocalVariable(name: "USARTx", arg: 1, scope: !3338, file: !2038, line: 3267, type: !254)
!3341 = !DILocalVariable(name: "primask", scope: !3342, file: !2038, line: 3269, type: !172)
!3342 = distinct !DILexicalBlock(scope: !3338, file: !2038, line: 3269, column: 6)
!3343 = !DILocation(line: 3267, column: 61, scope: !3338)
!3344 = !DILocation(line: 3269, column: 3, scope: !3338)
!3345 = !DILocation(line: 3269, column: 8, scope: !3342)
!3346 = !DILocation(line: 3269, column: 17, scope: !3342)
!3347 = !DILocation(line: 997, column: 3, scope: !3232, inlinedAt: !3348)
!3348 = distinct !DILocation(line: 3269, column: 36, scope: !3342)
!3349 = !DILocation(line: 997, column: 12, scope: !3232, inlinedAt: !3348)
!3350 = !DILocation(line: 999, column: 3, scope: !3232, inlinedAt: !3348)
!3351 = !DILocation(line: 1000, column: 10, scope: !3232, inlinedAt: !3348)
!3352 = !DILocation(line: 1001, column: 1, scope: !3232, inlinedAt: !3348)
!3353 = !DILocation(line: 3269, column: 34, scope: !3342)
!3354 = !DILocation(line: 1025, column: 76, scope: !3246, inlinedAt: !3355)
!3355 = distinct !DILocation(line: 3269, column: 53, scope: !3342)
!3356 = !DILocation(line: 1027, column: 46, scope: !3246, inlinedAt: !3355)
!3357 = !DILocation(line: 1027, column: 3, scope: !3246, inlinedAt: !3355)
!3358 = !DILocation(line: 3269, column: 74, scope: !3342)
!3359 = !DILocation(line: 3269, column: 82, scope: !3342)
!3360 = !DILocation(line: 3269, column: 88, scope: !3342)
!3361 = !DILocation(line: 3269, column: 128, scope: !3342)
!3362 = !DILocation(line: 1025, column: 76, scope: !3246, inlinedAt: !3363)
!3363 = distinct !DILocation(line: 3269, column: 114, scope: !3342)
!3364 = !DILocation(line: 1027, column: 46, scope: !3246, inlinedAt: !3363)
!3365 = !DILocation(line: 1027, column: 3, scope: !3246, inlinedAt: !3363)
!3366 = !DILocation(line: 3269, column: 138, scope: !3338)
!3367 = !DILocation(line: 3269, column: 138, scope: !3342)
!3368 = !DILocation(line: 3270, column: 1, scope: !3338)
!3369 = distinct !DISubprogram(name: "LL_USART_IsActiveFlag_TC", scope: !2038, file: !2038, line: 2748, type: !2039, scopeLine: 2749, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3370)
!3370 = !{!3371}
!3371 = !DILocalVariable(name: "USARTx", arg: 1, scope: !3369, file: !2038, line: 2748, type: !2041)
!3372 = !DILocation(line: 2748, column: 72, scope: !3369)
!3373 = !DILocation(line: 2750, column: 14, scope: !3369)
!3374 = !DILocation(line: 2750, column: 22, scope: !3369)
!3375 = !DILocation(line: 2750, column: 27, scope: !3369)
!3376 = !DILocation(line: 2750, column: 48, scope: !3369)
!3377 = !DILocation(line: 2750, column: 11, scope: !3369)
!3378 = !DILocation(line: 2750, column: 3, scope: !3369)
!3379 = distinct !DISubprogram(name: "LL_USART_EnableIT_ERROR", scope: !2038, file: !2038, line: 3214, type: !2053, scopeLine: 3215, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3380)
!3380 = !{!3381, !3382}
!3381 = !DILocalVariable(name: "USARTx", arg: 1, scope: !3379, file: !2038, line: 3214, type: !254)
!3382 = !DILocalVariable(name: "primask", scope: !3383, file: !2038, line: 3216, type: !172)
!3383 = distinct !DILexicalBlock(scope: !3379, file: !2038, line: 3216, column: 6)
!3384 = !DILocation(line: 3214, column: 61, scope: !3379)
!3385 = !DILocation(line: 3216, column: 3, scope: !3379)
!3386 = !DILocation(line: 3216, column: 8, scope: !3383)
!3387 = !DILocation(line: 3216, column: 17, scope: !3383)
!3388 = !DILocation(line: 997, column: 3, scope: !3232, inlinedAt: !3389)
!3389 = distinct !DILocation(line: 3216, column: 36, scope: !3383)
!3390 = !DILocation(line: 997, column: 12, scope: !3232, inlinedAt: !3389)
!3391 = !DILocation(line: 999, column: 3, scope: !3232, inlinedAt: !3389)
!3392 = !DILocation(line: 1000, column: 10, scope: !3232, inlinedAt: !3389)
!3393 = !DILocation(line: 1001, column: 1, scope: !3232, inlinedAt: !3389)
!3394 = !DILocation(line: 3216, column: 34, scope: !3383)
!3395 = !DILocation(line: 1025, column: 76, scope: !3246, inlinedAt: !3396)
!3396 = distinct !DILocation(line: 3216, column: 53, scope: !3383)
!3397 = !DILocation(line: 1027, column: 46, scope: !3246, inlinedAt: !3396)
!3398 = !DILocation(line: 1027, column: 3, scope: !3246, inlinedAt: !3396)
!3399 = !DILocation(line: 3216, column: 74, scope: !3383)
!3400 = !DILocation(line: 3216, column: 82, scope: !3383)
!3401 = !DILocation(line: 3216, column: 88, scope: !3383)
!3402 = !DILocation(line: 3216, column: 127, scope: !3383)
!3403 = !DILocation(line: 1025, column: 76, scope: !3246, inlinedAt: !3404)
!3404 = distinct !DILocation(line: 3216, column: 113, scope: !3383)
!3405 = !DILocation(line: 1027, column: 46, scope: !3246, inlinedAt: !3404)
!3406 = !DILocation(line: 1027, column: 3, scope: !3246, inlinedAt: !3404)
!3407 = !DILocation(line: 3216, column: 137, scope: !3379)
!3408 = !DILocation(line: 3216, column: 137, scope: !3383)
!3409 = !DILocation(line: 3217, column: 1, scope: !3379)
!3410 = distinct !DISubprogram(name: "LL_USART_EnableIT_LBD", scope: !2038, file: !2038, line: 3198, type: !2053, scopeLine: 3199, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3411)
!3411 = !{!3412}
!3412 = !DILocalVariable(name: "USARTx", arg: 1, scope: !3410, file: !2038, line: 3198, type: !254)
!3413 = !DILocation(line: 3198, column: 59, scope: !3410)
!3414 = !DILocation(line: 3200, column: 5, scope: !3410)
!3415 = !DILocation(line: 3200, column: 13, scope: !3410)
!3416 = !DILocation(line: 3200, column: 18, scope: !3410)
!3417 = !DILocation(line: 3201, column: 1, scope: !3410)
!3418 = distinct !DISubprogram(name: "LL_USART_EnableIT_PE", scope: !2038, file: !2038, line: 3147, type: !2053, scopeLine: 3148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3419)
!3419 = !{!3420, !3421}
!3420 = !DILocalVariable(name: "USARTx", arg: 1, scope: !3418, file: !2038, line: 3147, type: !254)
!3421 = !DILocalVariable(name: "primask", scope: !3422, file: !2038, line: 3149, type: !172)
!3422 = distinct !DILexicalBlock(scope: !3418, file: !2038, line: 3149, column: 6)
!3423 = !DILocation(line: 3147, column: 58, scope: !3418)
!3424 = !DILocation(line: 3149, column: 3, scope: !3418)
!3425 = !DILocation(line: 3149, column: 8, scope: !3422)
!3426 = !DILocation(line: 3149, column: 17, scope: !3422)
!3427 = !DILocation(line: 997, column: 3, scope: !3232, inlinedAt: !3428)
!3428 = distinct !DILocation(line: 3149, column: 36, scope: !3422)
!3429 = !DILocation(line: 997, column: 12, scope: !3232, inlinedAt: !3428)
!3430 = !DILocation(line: 999, column: 3, scope: !3232, inlinedAt: !3428)
!3431 = !DILocation(line: 1000, column: 10, scope: !3232, inlinedAt: !3428)
!3432 = !DILocation(line: 1001, column: 1, scope: !3232, inlinedAt: !3428)
!3433 = !DILocation(line: 3149, column: 34, scope: !3422)
!3434 = !DILocation(line: 1025, column: 76, scope: !3246, inlinedAt: !3435)
!3435 = distinct !DILocation(line: 3149, column: 53, scope: !3422)
!3436 = !DILocation(line: 1027, column: 46, scope: !3246, inlinedAt: !3435)
!3437 = !DILocation(line: 1027, column: 3, scope: !3246, inlinedAt: !3435)
!3438 = !DILocation(line: 3149, column: 74, scope: !3422)
!3439 = !DILocation(line: 3149, column: 82, scope: !3422)
!3440 = !DILocation(line: 3149, column: 88, scope: !3422)
!3441 = !DILocation(line: 3149, column: 127, scope: !3422)
!3442 = !DILocation(line: 1025, column: 76, scope: !3246, inlinedAt: !3443)
!3443 = distinct !DILocation(line: 3149, column: 113, scope: !3422)
!3444 = !DILocation(line: 1027, column: 46, scope: !3246, inlinedAt: !3443)
!3445 = !DILocation(line: 1027, column: 3, scope: !3246, inlinedAt: !3443)
!3446 = !DILocation(line: 3149, column: 137, scope: !3418)
!3447 = !DILocation(line: 3149, column: 137, scope: !3422)
!3448 = !DILocation(line: 3150, column: 1, scope: !3418)
!3449 = distinct !DISubprogram(name: "LL_USART_DisableIT_ERROR", scope: !2038, file: !2038, line: 3367, type: !2053, scopeLine: 3368, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3450)
!3450 = !{!3451, !3452}
!3451 = !DILocalVariable(name: "USARTx", arg: 1, scope: !3449, file: !2038, line: 3367, type: !254)
!3452 = !DILocalVariable(name: "primask", scope: !3453, file: !2038, line: 3369, type: !172)
!3453 = distinct !DILexicalBlock(scope: !3449, file: !2038, line: 3369, column: 6)
!3454 = !DILocation(line: 3367, column: 62, scope: !3449)
!3455 = !DILocation(line: 3369, column: 3, scope: !3449)
!3456 = !DILocation(line: 3369, column: 8, scope: !3453)
!3457 = !DILocation(line: 3369, column: 17, scope: !3453)
!3458 = !DILocation(line: 997, column: 3, scope: !3232, inlinedAt: !3459)
!3459 = distinct !DILocation(line: 3369, column: 36, scope: !3453)
!3460 = !DILocation(line: 997, column: 12, scope: !3232, inlinedAt: !3459)
!3461 = !DILocation(line: 999, column: 3, scope: !3232, inlinedAt: !3459)
!3462 = !DILocation(line: 1000, column: 10, scope: !3232, inlinedAt: !3459)
!3463 = !DILocation(line: 1001, column: 1, scope: !3232, inlinedAt: !3459)
!3464 = !DILocation(line: 3369, column: 34, scope: !3453)
!3465 = !DILocation(line: 1025, column: 76, scope: !3246, inlinedAt: !3466)
!3466 = distinct !DILocation(line: 3369, column: 53, scope: !3453)
!3467 = !DILocation(line: 1027, column: 46, scope: !3246, inlinedAt: !3466)
!3468 = !DILocation(line: 1027, column: 3, scope: !3246, inlinedAt: !3466)
!3469 = !DILocation(line: 3369, column: 74, scope: !3453)
!3470 = !DILocation(line: 3369, column: 82, scope: !3453)
!3471 = !DILocation(line: 3369, column: 88, scope: !3453)
!3472 = !DILocation(line: 3369, column: 128, scope: !3453)
!3473 = !DILocation(line: 1025, column: 76, scope: !3246, inlinedAt: !3474)
!3474 = distinct !DILocation(line: 3369, column: 114, scope: !3453)
!3475 = !DILocation(line: 1027, column: 46, scope: !3246, inlinedAt: !3474)
!3476 = !DILocation(line: 1027, column: 3, scope: !3246, inlinedAt: !3474)
!3477 = !DILocation(line: 3369, column: 138, scope: !3449)
!3478 = !DILocation(line: 3369, column: 138, scope: !3453)
!3479 = !DILocation(line: 3370, column: 1, scope: !3449)
!3480 = distinct !DISubprogram(name: "LL_USART_DisableIT_LBD", scope: !2038, file: !2038, line: 3351, type: !2053, scopeLine: 3352, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3481)
!3481 = !{!3482}
!3482 = !DILocalVariable(name: "USARTx", arg: 1, scope: !3480, file: !2038, line: 3351, type: !254)
!3483 = !DILocation(line: 3351, column: 60, scope: !3480)
!3484 = !DILocation(line: 3353, column: 5, scope: !3480)
!3485 = !DILocation(line: 3353, column: 13, scope: !3480)
!3486 = !DILocation(line: 3353, column: 18, scope: !3480)
!3487 = !DILocation(line: 3354, column: 1, scope: !3480)
!3488 = distinct !DISubprogram(name: "LL_USART_DisableIT_PE", scope: !2038, file: !2038, line: 3300, type: !2053, scopeLine: 3301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3489)
!3489 = !{!3490, !3491}
!3490 = !DILocalVariable(name: "USARTx", arg: 1, scope: !3488, file: !2038, line: 3300, type: !254)
!3491 = !DILocalVariable(name: "primask", scope: !3492, file: !2038, line: 3302, type: !172)
!3492 = distinct !DILexicalBlock(scope: !3488, file: !2038, line: 3302, column: 6)
!3493 = !DILocation(line: 3300, column: 59, scope: !3488)
!3494 = !DILocation(line: 3302, column: 3, scope: !3488)
!3495 = !DILocation(line: 3302, column: 8, scope: !3492)
!3496 = !DILocation(line: 3302, column: 17, scope: !3492)
!3497 = !DILocation(line: 997, column: 3, scope: !3232, inlinedAt: !3498)
!3498 = distinct !DILocation(line: 3302, column: 36, scope: !3492)
!3499 = !DILocation(line: 997, column: 12, scope: !3232, inlinedAt: !3498)
!3500 = !DILocation(line: 999, column: 3, scope: !3232, inlinedAt: !3498)
!3501 = !DILocation(line: 1000, column: 10, scope: !3232, inlinedAt: !3498)
!3502 = !DILocation(line: 1001, column: 1, scope: !3232, inlinedAt: !3498)
!3503 = !DILocation(line: 3302, column: 34, scope: !3492)
!3504 = !DILocation(line: 1025, column: 76, scope: !3246, inlinedAt: !3505)
!3505 = distinct !DILocation(line: 3302, column: 53, scope: !3492)
!3506 = !DILocation(line: 1027, column: 46, scope: !3246, inlinedAt: !3505)
!3507 = !DILocation(line: 1027, column: 3, scope: !3246, inlinedAt: !3505)
!3508 = !DILocation(line: 3302, column: 74, scope: !3492)
!3509 = !DILocation(line: 3302, column: 82, scope: !3492)
!3510 = !DILocation(line: 3302, column: 88, scope: !3492)
!3511 = !DILocation(line: 3302, column: 128, scope: !3492)
!3512 = !DILocation(line: 1025, column: 76, scope: !3246, inlinedAt: !3513)
!3513 = distinct !DILocation(line: 3302, column: 114, scope: !3492)
!3514 = !DILocation(line: 1027, column: 46, scope: !3246, inlinedAt: !3513)
!3515 = !DILocation(line: 1027, column: 3, scope: !3246, inlinedAt: !3513)
!3516 = !DILocation(line: 3302, column: 138, scope: !3488)
!3517 = !DILocation(line: 3302, column: 138, scope: !3492)
!3518 = !DILocation(line: 3303, column: 1, scope: !3488)
!3519 = distinct !DISubprogram(name: "LL_USART_IsEnabledIT_RXNE", scope: !2038, file: !2038, line: 3420, type: !2039, scopeLine: 3421, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3520)
!3520 = !{!3521}
!3521 = !DILocalVariable(name: "USARTx", arg: 1, scope: !3519, file: !2038, line: 3420, type: !2041)
!3522 = !DILocation(line: 3420, column: 73, scope: !3519)
!3523 = !DILocation(line: 3422, column: 14, scope: !3519)
!3524 = !DILocation(line: 3422, column: 22, scope: !3519)
!3525 = !DILocation(line: 3422, column: 27, scope: !3519)
!3526 = !DILocation(line: 3422, column: 48, scope: !3519)
!3527 = !DILocation(line: 3422, column: 11, scope: !3519)
!3528 = !DILocation(line: 3422, column: 3, scope: !3519)
!3529 = distinct !DISubprogram(name: "uart_stm32_clocks_enable", scope: !2, file: !2, line: 1845, type: !199, scopeLine: 1846, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3530)
!3530 = !{!3531, !3532, !3533, !3534}
!3531 = !DILocalVariable(name: "dev", arg: 1, scope: !3529, file: !2, line: 1845, type: !150)
!3532 = !DILocalVariable(name: "config", scope: !3529, file: !2, line: 1847, type: !1271)
!3533 = !DILocalVariable(name: "data", scope: !3529, file: !2, line: 1848, type: !1352)
!3534 = !DILocalVariable(name: "err", scope: !3529, file: !2, line: 1849, type: !139)
!3535 = !DILocation(line: 1845, column: 58, scope: !3529)
!3536 = !DILocation(line: 1847, column: 2, scope: !3529)
!3537 = !DILocation(line: 1847, column: 34, scope: !3529)
!3538 = !DILocation(line: 1847, column: 43, scope: !3529)
!3539 = !DILocation(line: 1847, column: 48, scope: !3529)
!3540 = !DILocation(line: 1848, column: 2, scope: !3529)
!3541 = !DILocation(line: 1848, column: 26, scope: !3529)
!3542 = !DILocation(line: 1848, column: 33, scope: !3529)
!3543 = !DILocation(line: 1848, column: 38, scope: !3529)
!3544 = !DILocation(line: 1849, column: 2, scope: !3529)
!3545 = !DILocation(line: 1849, column: 6, scope: !3529)
!3546 = !DILocation(line: 1851, column: 25, scope: !3529)
!3547 = !DILocation(line: 1851, column: 2, scope: !3529)
!3548 = !DILocation(line: 1853, column: 23, scope: !3549)
!3549 = distinct !DILexicalBlock(scope: !3529, file: !2, line: 1853, column: 6)
!3550 = !DILocation(line: 1853, column: 29, scope: !3549)
!3551 = !DILocation(line: 1853, column: 7, scope: !3549)
!3552 = !DILocation(line: 1853, column: 6, scope: !3529)
!3553 = !DILocation(line: 1854, column: 3, scope: !3554)
!3554 = distinct !DILexicalBlock(scope: !3549, file: !2, line: 1853, column: 37)
!3555 = !DILocation(line: 1854, column: 89, scope: !3556)
!3556 = distinct !DILexicalBlock(scope: !3557, file: !2, line: 1854, column: 87)
!3557 = distinct !DILexicalBlock(scope: !3558, file: !2, line: 1854, column: 12)
!3558 = distinct !DILexicalBlock(scope: !3554, file: !2, line: 1854, column: 6)
!3559 = !DILocation(line: 1854, column: 394, scope: !3558)
!3560 = !DILocation(line: 1855, column: 3, scope: !3554)
!3561 = !DILocation(line: 1859, column: 25, scope: !3529)
!3562 = !DILocation(line: 1859, column: 31, scope: !3529)
!3563 = !DILocation(line: 1859, column: 63, scope: !3529)
!3564 = !DILocation(line: 1859, column: 71, scope: !3529)
!3565 = !DILocation(line: 1859, column: 8, scope: !3529)
!3566 = !DILocation(line: 1859, column: 6, scope: !3529)
!3567 = !DILocation(line: 1860, column: 6, scope: !3568)
!3568 = distinct !DILexicalBlock(scope: !3529, file: !2, line: 1860, column: 6)
!3569 = !DILocation(line: 1860, column: 10, scope: !3568)
!3570 = !DILocation(line: 1860, column: 6, scope: !3529)
!3571 = !DILocation(line: 1861, column: 3, scope: !3572)
!3572 = distinct !DILexicalBlock(scope: !3568, file: !2, line: 1860, column: 16)
!3573 = !DILocation(line: 1861, column: 89, scope: !3574)
!3574 = distinct !DILexicalBlock(scope: !3575, file: !2, line: 1861, column: 87)
!3575 = distinct !DILexicalBlock(scope: !3576, file: !2, line: 1861, column: 12)
!3576 = distinct !DILexicalBlock(scope: !3572, file: !2, line: 1861, column: 6)
!3577 = !DILocation(line: 1861, column: 395, scope: !3576)
!3578 = !DILocation(line: 1862, column: 10, scope: !3572)
!3579 = !DILocation(line: 1862, column: 3, scope: !3572)
!3580 = !DILocation(line: 1875, column: 2, scope: !3529)
!3581 = !DILocation(line: 1876, column: 1, scope: !3529)
!3582 = distinct !DISubprogram(name: "pinctrl_apply_state", scope: !351, file: !351, line: 342, type: !3583, scopeLine: 344, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3585)
!3583 = !DISubroutineType(types: !3584)
!3584 = !{!139, !428, !167}
!3585 = !{!3586, !3587, !3588, !3589}
!3586 = !DILocalVariable(name: "config", arg: 1, scope: !3582, file: !351, line: 342, type: !428)
!3587 = !DILocalVariable(name: "id", arg: 2, scope: !3582, file: !351, line: 343, type: !167)
!3588 = !DILocalVariable(name: "ret", scope: !3582, file: !351, line: 345, type: !139)
!3589 = !DILocalVariable(name: "state", scope: !3582, file: !351, line: 346, type: !354)
!3590 = !DILocation(line: 342, column: 72, scope: !3582)
!3591 = !DILocation(line: 343, column: 19, scope: !3582)
!3592 = !DILocation(line: 345, column: 2, scope: !3582)
!3593 = !DILocation(line: 345, column: 6, scope: !3582)
!3594 = !DILocation(line: 346, column: 2, scope: !3582)
!3595 = !DILocation(line: 346, column: 30, scope: !3582)
!3596 = !DILocation(line: 348, column: 29, scope: !3582)
!3597 = !DILocation(line: 348, column: 37, scope: !3582)
!3598 = !DILocation(line: 348, column: 8, scope: !3582)
!3599 = !DILocation(line: 348, column: 6, scope: !3582)
!3600 = !DILocation(line: 349, column: 6, scope: !3601)
!3601 = distinct !DILexicalBlock(scope: !3582, file: !351, line: 349, column: 6)
!3602 = !DILocation(line: 349, column: 10, scope: !3601)
!3603 = !DILocation(line: 349, column: 6, scope: !3582)
!3604 = !DILocation(line: 350, column: 10, scope: !3605)
!3605 = distinct !DILexicalBlock(scope: !3601, file: !351, line: 349, column: 15)
!3606 = !DILocation(line: 350, column: 3, scope: !3605)
!3607 = !DILocation(line: 353, column: 36, scope: !3582)
!3608 = !DILocation(line: 353, column: 44, scope: !3582)
!3609 = !DILocation(line: 353, column: 9, scope: !3582)
!3610 = !DILocation(line: 353, column: 2, scope: !3582)
!3611 = !DILocation(line: 354, column: 1, scope: !3582)
!3612 = distinct !DISubprogram(name: "uart_stm32_registers_configure", scope: !2, file: !2, line: 1878, type: !199, scopeLine: 1879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3613)
!3613 = !{!3614, !3615, !3616, !3617}
!3614 = !DILocalVariable(name: "dev", arg: 1, scope: !3612, file: !2, line: 1878, type: !150)
!3615 = !DILocalVariable(name: "config", scope: !3612, file: !2, line: 1880, type: !1271)
!3616 = !DILocalVariable(name: "data", scope: !3612, file: !2, line: 1881, type: !1352)
!3617 = !DILocalVariable(name: "uart_cfg", scope: !3612, file: !2, line: 1882, type: !218)
!3618 = !DILocation(line: 1878, column: 64, scope: !3612)
!3619 = !DILocation(line: 1880, column: 2, scope: !3612)
!3620 = !DILocation(line: 1880, column: 34, scope: !3612)
!3621 = !DILocation(line: 1880, column: 43, scope: !3612)
!3622 = !DILocation(line: 1880, column: 48, scope: !3612)
!3623 = !DILocation(line: 1881, column: 2, scope: !3612)
!3624 = !DILocation(line: 1881, column: 26, scope: !3612)
!3625 = !DILocation(line: 1881, column: 33, scope: !3612)
!3626 = !DILocation(line: 1881, column: 38, scope: !3612)
!3627 = !DILocation(line: 1882, column: 2, scope: !3612)
!3628 = !DILocation(line: 1882, column: 22, scope: !3612)
!3629 = !DILocation(line: 1882, column: 33, scope: !3612)
!3630 = !DILocation(line: 1882, column: 39, scope: !3612)
!3631 = !DILocation(line: 1884, column: 19, scope: !3612)
!3632 = !DILocation(line: 1884, column: 27, scope: !3612)
!3633 = !DILocation(line: 1884, column: 2, scope: !3612)
!3634 = !DILocation(line: 1886, column: 23, scope: !3635)
!3635 = distinct !DILexicalBlock(scope: !3612, file: !2, line: 1886, column: 6)
!3636 = !DILocation(line: 1886, column: 31, scope: !3635)
!3637 = !DILocation(line: 1886, column: 37, scope: !3635)
!3638 = !DILocation(line: 1886, column: 7, scope: !3635)
!3639 = !DILocation(line: 1886, column: 6, scope: !3612)
!3640 = !DILocation(line: 1887, column: 3, scope: !3641)
!3641 = distinct !DILexicalBlock(scope: !3635, file: !2, line: 1886, column: 43)
!3642 = !DILocation(line: 1887, column: 89, scope: !3643)
!3643 = distinct !DILexicalBlock(scope: !3644, file: !2, line: 1887, column: 87)
!3644 = distinct !DILexicalBlock(scope: !3645, file: !2, line: 1887, column: 12)
!3645 = distinct !DILexicalBlock(scope: !3641, file: !2, line: 1887, column: 6)
!3646 = !DILocation(line: 1887, column: 390, scope: !3645)
!3647 = !DILocation(line: 1888, column: 3, scope: !3641)
!3648 = !DILocation(line: 1892, column: 30, scope: !3612)
!3649 = !DILocation(line: 1892, column: 38, scope: !3612)
!3650 = !DILocation(line: 1892, column: 8, scope: !3612)
!3651 = !DILocation(line: 1895, column: 32, scope: !3612)
!3652 = !DILocation(line: 1895, column: 40, scope: !3612)
!3653 = !DILocation(line: 1895, column: 2, scope: !3612)
!3654 = !DILocation(line: 1899, column: 28, scope: !3612)
!3655 = !DILocation(line: 1899, column: 33, scope: !3612)
!3656 = !DILocation(line: 1899, column: 2, scope: !3612)
!3657 = !DILocation(line: 1902, column: 6, scope: !3658)
!3658 = distinct !DILexicalBlock(scope: !3612, file: !2, line: 1902, column: 6)
!3659 = !DILocation(line: 1902, column: 14, scope: !3658)
!3660 = !DILocation(line: 1902, column: 6, scope: !3612)
!3661 = !DILocation(line: 1903, column: 29, scope: !3662)
!3662 = distinct !DILexicalBlock(scope: !3658, file: !2, line: 1902, column: 27)
!3663 = !DILocation(line: 1903, column: 37, scope: !3662)
!3664 = !DILocation(line: 1903, column: 3, scope: !3662)
!3665 = !DILocation(line: 1904, column: 2, scope: !3662)
!3666 = !DILocation(line: 1907, column: 6, scope: !3667)
!3667 = distinct !DILexicalBlock(scope: !3612, file: !2, line: 1907, column: 6)
!3668 = !DILocation(line: 1907, column: 14, scope: !3667)
!3669 = !DILocation(line: 1907, column: 6, scope: !3612)
!3670 = !DILocation(line: 1908, column: 24, scope: !3671)
!3671 = distinct !DILexicalBlock(scope: !3667, file: !2, line: 1907, column: 26)
!3672 = !DILocation(line: 1908, column: 32, scope: !3671)
!3673 = !DILocation(line: 1908, column: 3, scope: !3671)
!3674 = !DILocation(line: 1909, column: 2, scope: !3671)
!3675 = !DILocation(line: 1913, column: 6, scope: !3676)
!3676 = distinct !DILexicalBlock(scope: !3612, file: !2, line: 1913, column: 6)
!3677 = !DILocation(line: 1913, column: 14, scope: !3676)
!3678 = !DILocation(line: 1913, column: 6, scope: !3612)
!3679 = !DILocation(line: 1914, column: 26, scope: !3680)
!3680 = distinct !DILexicalBlock(scope: !3676, file: !2, line: 1913, column: 25)
!3681 = !DILocation(line: 1914, column: 34, scope: !3680)
!3682 = !DILocation(line: 1914, column: 3, scope: !3680)
!3683 = !DILocation(line: 1915, column: 2, scope: !3680)
!3684 = !DILocation(line: 1919, column: 6, scope: !3685)
!3685 = distinct !DILexicalBlock(scope: !3612, file: !2, line: 1919, column: 6)
!3686 = !DILocation(line: 1919, column: 14, scope: !3685)
!3687 = !DILocation(line: 1919, column: 6, scope: !3612)
!3688 = !DILocation(line: 1920, column: 26, scope: !3689)
!3689 = distinct !DILexicalBlock(scope: !3685, file: !2, line: 1919, column: 25)
!3690 = !DILocation(line: 1920, column: 34, scope: !3689)
!3691 = !DILocation(line: 1920, column: 3, scope: !3689)
!3692 = !DILocation(line: 1921, column: 2, scope: !3689)
!3693 = !DILocation(line: 1925, column: 6, scope: !3694)
!3694 = distinct !DILexicalBlock(scope: !3612, file: !2, line: 1925, column: 6)
!3695 = !DILocation(line: 1925, column: 14, scope: !3694)
!3696 = !DILocation(line: 1925, column: 6, scope: !3612)
!3697 = !DILocation(line: 1926, column: 11, scope: !3698)
!3698 = distinct !DILexicalBlock(scope: !3699, file: !2, line: 1926, column: 7)
!3699 = distinct !DILexicalBlock(scope: !3694, file: !2, line: 1925, column: 25)
!3700 = !DILocation(line: 1926, column: 19, scope: !3698)
!3701 = !DILocation(line: 1926, column: 26, scope: !3698)
!3702 = !DILocation(line: 1926, column: 80, scope: !3698)
!3703 = !DILocation(line: 1926, column: 85, scope: !3698)
!3704 = !DILocation(line: 1926, column: 93, scope: !3698)
!3705 = !DILocation(line: 1926, column: 100, scope: !3698)
!3706 = !DILocation(line: 1926, column: 154, scope: !3698)
!3707 = !DILocation(line: 1926, column: 159, scope: !3698)
!3708 = !DILocation(line: 1926, column: 167, scope: !3698)
!3709 = !DILocation(line: 1926, column: 174, scope: !3698)
!3710 = !DILocation(line: 1926, column: 228, scope: !3698)
!3711 = !DILocation(line: 1926, column: 233, scope: !3698)
!3712 = !DILocation(line: 1926, column: 241, scope: !3698)
!3713 = !DILocation(line: 1926, column: 248, scope: !3698)
!3714 = !DILocation(line: 1926, column: 302, scope: !3698)
!3715 = !DILocation(line: 1926, column: 307, scope: !3698)
!3716 = !DILocation(line: 1926, column: 315, scope: !3698)
!3717 = !DILocation(line: 1926, column: 322, scope: !3698)
!3718 = !DILocation(line: 1926, column: 376, scope: !3698)
!3719 = !DILocation(line: 1926, column: 381, scope: !3698)
!3720 = !DILocation(line: 1926, column: 389, scope: !3698)
!3721 = !DILocation(line: 1926, column: 396, scope: !3698)
!3722 = !DILocation(line: 1926, column: 450, scope: !3698)
!3723 = !DILocation(line: 1926, column: 455, scope: !3698)
!3724 = !DILocation(line: 1926, column: 463, scope: !3698)
!3725 = !DILocation(line: 1926, column: 470, scope: !3698)
!3726 = !DILocation(line: 1926, column: 524, scope: !3698)
!3727 = !DILocation(line: 1926, column: 529, scope: !3698)
!3728 = !DILocation(line: 1926, column: 537, scope: !3698)
!3729 = !DILocation(line: 1926, column: 544, scope: !3698)
!3730 = !DILocation(line: 1926, column: 7, scope: !3699)
!3731 = !DILocation(line: 1927, column: 4, scope: !3732)
!3732 = distinct !DILexicalBlock(scope: !3698, file: !2, line: 1926, column: 600)
!3733 = !DILocation(line: 1927, column: 90, scope: !3734)
!3734 = distinct !DILexicalBlock(scope: !3735, file: !2, line: 1927, column: 88)
!3735 = distinct !DILexicalBlock(scope: !3736, file: !2, line: 1927, column: 13)
!3736 = distinct !DILexicalBlock(scope: !3732, file: !2, line: 1927, column: 7)
!3737 = !DILocation(line: 1927, column: 409, scope: !3736)
!3738 = !DILocation(line: 1928, column: 4, scope: !3732)
!3739 = !DILocation(line: 1931, column: 32, scope: !3699)
!3740 = !DILocation(line: 1931, column: 3, scope: !3699)
!3741 = !DILocation(line: 1932, column: 31, scope: !3699)
!3742 = !DILocation(line: 1932, column: 39, scope: !3699)
!3743 = !DILocation(line: 1932, column: 46, scope: !3699)
!3744 = !DILocation(line: 1932, column: 54, scope: !3699)
!3745 = !DILocation(line: 1932, column: 3, scope: !3699)
!3746 = !DILocation(line: 1933, column: 33, scope: !3699)
!3747 = !DILocation(line: 1933, column: 41, scope: !3699)
!3748 = !DILocation(line: 1933, column: 48, scope: !3699)
!3749 = !DILocation(line: 1933, column: 56, scope: !3699)
!3750 = !DILocation(line: 1933, column: 3, scope: !3699)
!3751 = !DILocation(line: 1935, column: 7, scope: !3752)
!3752 = distinct !DILexicalBlock(scope: !3699, file: !2, line: 1935, column: 7)
!3753 = !DILocation(line: 1935, column: 15, scope: !3752)
!3754 = !DILocation(line: 1935, column: 7, scope: !3699)
!3755 = !DILocation(line: 1936, column: 33, scope: !3756)
!3756 = distinct !DILexicalBlock(scope: !3752, file: !2, line: 1935, column: 26)
!3757 = !DILocation(line: 1936, column: 41, scope: !3756)
!3758 = !DILocation(line: 1936, column: 4, scope: !3756)
!3759 = !DILocation(line: 1937, column: 3, scope: !3756)
!3760 = !DILocation(line: 1938, column: 2, scope: !3699)
!3761 = !DILocation(line: 1941, column: 18, scope: !3612)
!3762 = !DILocation(line: 1941, column: 26, scope: !3612)
!3763 = !DILocation(line: 1941, column: 2, scope: !3612)
!3764 = !DILocation(line: 1945, column: 2, scope: !3612)
!3765 = !DILocation(line: 1945, column: 39, scope: !3612)
!3766 = !DILocation(line: 1945, column: 47, scope: !3612)
!3767 = !DILocation(line: 1945, column: 11, scope: !3612)
!3768 = !DILocation(line: 1945, column: 9, scope: !3612)
!3769 = distinct !{!3769, !3764, !3770}
!3770 = !DILocation(line: 1946, column: 2, scope: !3612)
!3771 = !DILocation(line: 1951, column: 2, scope: !3612)
!3772 = !DILocation(line: 1951, column: 39, scope: !3612)
!3773 = !DILocation(line: 1951, column: 47, scope: !3612)
!3774 = !DILocation(line: 1951, column: 11, scope: !3612)
!3775 = !DILocation(line: 1951, column: 9, scope: !3612)
!3776 = distinct !{!3776, !3771, !3777}
!3777 = !DILocation(line: 1952, column: 2, scope: !3612)
!3778 = !DILocation(line: 1955, column: 2, scope: !3612)
!3779 = !DILocation(line: 1956, column: 1, scope: !3612)
!3780 = distinct !DISubprogram(name: "__uart_stm32_get_clock", scope: !2, file: !2, line: 788, type: !232, scopeLine: 789, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3781)
!3781 = !{!3782, !3783, !3784}
!3782 = !DILocalVariable(name: "dev", arg: 1, scope: !3780, file: !2, line: 788, type: !150)
!3783 = !DILocalVariable(name: "data", scope: !3780, file: !2, line: 790, type: !1352)
!3784 = !DILocalVariable(name: "clk", scope: !3780, file: !2, line: 791, type: !3785)
!3785 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !150)
!3786 = !DILocation(line: 788, column: 64, scope: !3780)
!3787 = !DILocation(line: 790, column: 2, scope: !3780)
!3788 = !DILocation(line: 790, column: 26, scope: !3780)
!3789 = !DILocation(line: 790, column: 33, scope: !3780)
!3790 = !DILocation(line: 790, column: 38, scope: !3780)
!3791 = !DILocation(line: 791, column: 2, scope: !3780)
!3792 = !DILocation(line: 791, column: 29, scope: !3780)
!3793 = !DILocation(line: 793, column: 2, scope: !3780)
!3794 = !DILocation(line: 793, column: 8, scope: !3780)
!3795 = !DILocation(line: 793, column: 14, scope: !3780)
!3796 = !DILocation(line: 794, column: 1, scope: !3780)
!3797 = distinct !DISubprogram(name: "device_is_ready", scope: !3798, file: !3798, line: 49, type: !746, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3799)
!3798 = !DIFile(filename: "zephyr/include/generated/syscalls/device.h", directory: "/home/sri/zephyrproject/zephyr/build")
!3799 = !{!3800}
!3800 = !DILocalVariable(name: "dev", arg: 1, scope: !3797, file: !3798, line: 49, type: !150)
!3801 = !DILocation(line: 49, column: 59, scope: !3797)
!3802 = !DILocation(line: 57, column: 2, scope: !3797)
!3803 = !DILocation(line: 57, column: 7, scope: !3804)
!3804 = distinct !DILexicalBlock(scope: !3797, file: !3798, line: 57, column: 5)
!3805 = !{i64 319108}
!3806 = !DILocation(line: 57, column: 47, scope: !3804)
!3807 = !DILocation(line: 58, column: 32, scope: !3797)
!3808 = !DILocation(line: 58, column: 9, scope: !3797)
!3809 = !DILocation(line: 58, column: 2, scope: !3797)
!3810 = distinct !DISubprogram(name: "clock_control_on", scope: !131, file: !131, line: 123, type: !282, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3811)
!3811 = !{!3812, !3813, !3814}
!3812 = !DILocalVariable(name: "dev", arg: 1, scope: !3810, file: !131, line: 123, type: !150)
!3813 = !DILocalVariable(name: "sys", arg: 2, scope: !3810, file: !131, line: 124, type: !274)
!3814 = !DILocalVariable(name: "api", scope: !3810, file: !131, line: 126, type: !275)
!3815 = !DILocation(line: 123, column: 57, scope: !3810)
!3816 = !DILocation(line: 124, column: 31, scope: !3810)
!3817 = !DILocation(line: 126, column: 2, scope: !3810)
!3818 = !DILocation(line: 126, column: 41, scope: !3810)
!3819 = !DILocation(line: 127, column: 44, scope: !3810)
!3820 = !DILocation(line: 127, column: 49, scope: !3810)
!3821 = !DILocation(line: 129, column: 9, scope: !3810)
!3822 = !DILocation(line: 129, column: 14, scope: !3810)
!3823 = !DILocation(line: 129, column: 17, scope: !3810)
!3824 = !DILocation(line: 129, column: 22, scope: !3810)
!3825 = !DILocation(line: 130, column: 1, scope: !3810)
!3826 = !DILocation(line: 129, column: 2, scope: !3810)
!3827 = !DISubprogram(name: "pinctrl_lookup_state", scope: !351, file: !351, line: 285, type: !3828, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !544)
!3828 = !DISubroutineType(types: !3829)
!3829 = !{!139, !428, !167, !3830}
!3830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 32)
!3831 = distinct !DISubprogram(name: "pinctrl_apply_state_direct", scope: !351, file: !351, line: 316, type: !3832, scopeLine: 319, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3834)
!3832 = !DISubroutineType(types: !3833)
!3833 = !{!139, !428, !354}
!3834 = !{!3835, !3836, !3837}
!3835 = !DILocalVariable(name: "config", arg: 1, scope: !3831, file: !351, line: 317, type: !428)
!3836 = !DILocalVariable(name: "state", arg: 2, scope: !3831, file: !351, line: 318, type: !354)
!3837 = !DILocalVariable(name: "reg", scope: !3831, file: !351, line: 320, type: !3838)
!3838 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !168, line: 102, baseType: !173)
!3839 = !DILocation(line: 317, column: 35, scope: !3831)
!3840 = !DILocation(line: 318, column: 30, scope: !3831)
!3841 = !DILocation(line: 320, column: 2, scope: !3831)
!3842 = !DILocation(line: 320, column: 12, scope: !3831)
!3843 = !DILocation(line: 325, column: 9, scope: !3831)
!3844 = !DILocation(line: 326, column: 6, scope: !3831)
!3845 = !DILocation(line: 329, column: 32, scope: !3831)
!3846 = !DILocation(line: 329, column: 39, scope: !3831)
!3847 = !DILocation(line: 329, column: 45, scope: !3831)
!3848 = !DILocation(line: 329, column: 52, scope: !3831)
!3849 = !DILocation(line: 329, column: 61, scope: !3831)
!3850 = !DILocation(line: 329, column: 9, scope: !3831)
!3851 = !DILocation(line: 330, column: 1, scope: !3831)
!3852 = !DILocation(line: 329, column: 2, scope: !3831)
!3853 = !DISubprogram(name: "pinctrl_configure_pins", scope: !351, file: !351, line: 304, type: !3854, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !544)
!3854 = !DISubroutineType(types: !3855)
!3855 = !{!139, !359, !167, !3838}
!3856 = distinct !DISubprogram(name: "reset_line_toggle_dt", scope: !143, file: !143, line: 312, type: !3857, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3860)
!3857 = !DISubroutineType(types: !3858)
!3858 = !{!139, !3859}
!3859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 32)
!3860 = !{!3861}
!3861 = !DILocalVariable(name: "spec", arg: 1, scope: !3856, file: !143, line: 312, type: !3859)
!3862 = !DILocation(line: 312, column: 68, scope: !3856)
!3863 = !DILocation(line: 314, column: 27, scope: !3856)
!3864 = !DILocation(line: 314, column: 33, scope: !3856)
!3865 = !DILocation(line: 314, column: 38, scope: !3856)
!3866 = !DILocation(line: 314, column: 44, scope: !3856)
!3867 = !DILocation(line: 314, column: 9, scope: !3856)
!3868 = !DILocation(line: 314, column: 2, scope: !3856)
!3869 = distinct !DISubprogram(name: "LL_USART_SetTransferDirection", scope: !2038, file: !2038, line: 707, type: !2814, scopeLine: 708, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3870)
!3870 = !{!3871, !3872, !3873}
!3871 = !DILocalVariable(name: "USARTx", arg: 1, scope: !3869, file: !2038, line: 707, type: !254)
!3872 = !DILocalVariable(name: "TransferDirection", arg: 2, scope: !3869, file: !2038, line: 707, type: !172)
!3873 = !DILocalVariable(name: "primask", scope: !3874, file: !2038, line: 709, type: !172)
!3874 = distinct !DILexicalBlock(scope: !3869, file: !2038, line: 709, column: 6)
!3875 = !DILocation(line: 707, column: 67, scope: !3869)
!3876 = !DILocation(line: 707, column: 84, scope: !3869)
!3877 = !DILocation(line: 709, column: 3, scope: !3869)
!3878 = !DILocation(line: 709, column: 8, scope: !3874)
!3879 = !DILocation(line: 709, column: 17, scope: !3874)
!3880 = !DILocation(line: 997, column: 3, scope: !3232, inlinedAt: !3881)
!3881 = distinct !DILocation(line: 709, column: 36, scope: !3874)
!3882 = !DILocation(line: 997, column: 12, scope: !3232, inlinedAt: !3881)
!3883 = !DILocation(line: 999, column: 3, scope: !3232, inlinedAt: !3881)
!3884 = !DILocation(line: 1000, column: 10, scope: !3232, inlinedAt: !3881)
!3885 = !DILocation(line: 1001, column: 1, scope: !3232, inlinedAt: !3881)
!3886 = !DILocation(line: 709, column: 34, scope: !3874)
!3887 = !DILocation(line: 1025, column: 76, scope: !3246, inlinedAt: !3888)
!3888 = distinct !DILocation(line: 709, column: 53, scope: !3874)
!3889 = !DILocation(line: 1027, column: 46, scope: !3246, inlinedAt: !3888)
!3890 = !DILocation(line: 1027, column: 3, scope: !3246, inlinedAt: !3888)
!3891 = !DILocation(line: 709, column: 99, scope: !3874)
!3892 = !DILocation(line: 709, column: 107, scope: !3874)
!3893 = !DILocation(line: 709, column: 115, scope: !3874)
!3894 = !DILocation(line: 709, column: 163, scope: !3874)
!3895 = !DILocation(line: 709, column: 159, scope: !3874)
!3896 = !DILocation(line: 709, column: 75, scope: !3874)
!3897 = !DILocation(line: 709, column: 83, scope: !3874)
!3898 = !DILocation(line: 709, column: 90, scope: !3874)
!3899 = !DILocation(line: 709, column: 201, scope: !3874)
!3900 = !DILocation(line: 1025, column: 76, scope: !3246, inlinedAt: !3901)
!3901 = distinct !DILocation(line: 709, column: 187, scope: !3874)
!3902 = !DILocation(line: 1027, column: 46, scope: !3246, inlinedAt: !3901)
!3903 = !DILocation(line: 1027, column: 3, scope: !3246, inlinedAt: !3901)
!3904 = !DILocation(line: 709, column: 211, scope: !3869)
!3905 = !DILocation(line: 709, column: 211, scope: !3874)
!3906 = !DILocation(line: 710, column: 1, scope: !3869)
!3907 = distinct !DISubprogram(name: "LL_USART_EnableHalfDuplex", scope: !2038, file: !2038, line: 2045, type: !2053, scopeLine: 2046, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3908)
!3908 = !{!3909}
!3909 = !DILocalVariable(name: "USARTx", arg: 1, scope: !3907, file: !2038, line: 2045, type: !254)
!3910 = !DILocation(line: 2045, column: 63, scope: !3907)
!3911 = !DILocation(line: 2047, column: 5, scope: !3907)
!3912 = !DILocation(line: 2047, column: 13, scope: !3907)
!3913 = !DILocation(line: 2047, column: 18, scope: !3907)
!3914 = !DILocation(line: 2048, column: 1, scope: !3907)
!3915 = distinct !DISubprogram(name: "LL_USART_SetTXRXSwap", scope: !2038, file: !2038, line: 1125, type: !2814, scopeLine: 1126, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3916)
!3916 = !{!3917, !3918}
!3917 = !DILocalVariable(name: "USARTx", arg: 1, scope: !3915, file: !2038, line: 1125, type: !254)
!3918 = !DILocalVariable(name: "SwapConfig", arg: 2, scope: !3915, file: !2038, line: 1125, type: !172)
!3919 = !DILocation(line: 1125, column: 58, scope: !3915)
!3920 = !DILocation(line: 1125, column: 75, scope: !3915)
!3921 = !DILocation(line: 1127, column: 28, scope: !3915)
!3922 = !DILocation(line: 1127, column: 36, scope: !3915)
!3923 = !DILocation(line: 1127, column: 43, scope: !3915)
!3924 = !DILocation(line: 1127, column: 71, scope: !3915)
!3925 = !DILocation(line: 1127, column: 68, scope: !3915)
!3926 = !DILocation(line: 1127, column: 6, scope: !3915)
!3927 = !DILocation(line: 1127, column: 14, scope: !3915)
!3928 = !DILocation(line: 1127, column: 20, scope: !3915)
!3929 = !DILocation(line: 1128, column: 1, scope: !3915)
!3930 = distinct !DISubprogram(name: "LL_USART_SetRXPinLevel", scope: !2038, file: !2038, line: 1152, type: !2814, scopeLine: 1153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3931)
!3931 = !{!3932, !3933}
!3932 = !DILocalVariable(name: "USARTx", arg: 1, scope: !3930, file: !2038, line: 1152, type: !254)
!3933 = !DILocalVariable(name: "PinInvMethod", arg: 2, scope: !3930, file: !2038, line: 1152, type: !172)
!3934 = !DILocation(line: 1152, column: 60, scope: !3930)
!3935 = !DILocation(line: 1152, column: 77, scope: !3930)
!3936 = !DILocation(line: 1154, column: 28, scope: !3930)
!3937 = !DILocation(line: 1154, column: 36, scope: !3930)
!3938 = !DILocation(line: 1154, column: 43, scope: !3930)
!3939 = !DILocation(line: 1154, column: 71, scope: !3930)
!3940 = !DILocation(line: 1154, column: 68, scope: !3930)
!3941 = !DILocation(line: 1154, column: 6, scope: !3930)
!3942 = !DILocation(line: 1154, column: 14, scope: !3930)
!3943 = !DILocation(line: 1154, column: 20, scope: !3930)
!3944 = !DILocation(line: 1155, column: 1, scope: !3930)
!3945 = distinct !DISubprogram(name: "LL_USART_SetTXPinLevel", scope: !2038, file: !2038, line: 1179, type: !2814, scopeLine: 1180, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3946)
!3946 = !{!3947, !3948}
!3947 = !DILocalVariable(name: "USARTx", arg: 1, scope: !3945, file: !2038, line: 1179, type: !254)
!3948 = !DILocalVariable(name: "PinInvMethod", arg: 2, scope: !3945, file: !2038, line: 1179, type: !172)
!3949 = !DILocation(line: 1179, column: 60, scope: !3945)
!3950 = !DILocation(line: 1179, column: 77, scope: !3945)
!3951 = !DILocation(line: 1181, column: 28, scope: !3945)
!3952 = !DILocation(line: 1181, column: 36, scope: !3945)
!3953 = !DILocation(line: 1181, column: 43, scope: !3945)
!3954 = !DILocation(line: 1181, column: 71, scope: !3945)
!3955 = !DILocation(line: 1181, column: 68, scope: !3945)
!3956 = !DILocation(line: 1181, column: 6, scope: !3945)
!3957 = !DILocation(line: 1181, column: 14, scope: !3945)
!3958 = !DILocation(line: 1181, column: 20, scope: !3945)
!3959 = !DILocation(line: 1182, column: 1, scope: !3945)
!3960 = distinct !DISubprogram(name: "LL_USART_SetDEAssertionTime", scope: !2038, file: !2038, line: 2200, type: !2814, scopeLine: 2201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3961)
!3961 = !{!3962, !3963}
!3962 = !DILocalVariable(name: "USARTx", arg: 1, scope: !3960, file: !2038, line: 2200, type: !254)
!3963 = !DILocalVariable(name: "Time", arg: 2, scope: !3960, file: !2038, line: 2200, type: !172)
!3964 = !DILocation(line: 2200, column: 65, scope: !3960)
!3965 = !DILocation(line: 2200, column: 82, scope: !3960)
!3966 = !DILocation(line: 2202, column: 28, scope: !3960)
!3967 = !DILocation(line: 2202, column: 36, scope: !3960)
!3968 = !DILocation(line: 2202, column: 43, scope: !3960)
!3969 = !DILocation(line: 2202, column: 72, scope: !3960)
!3970 = !DILocation(line: 2202, column: 77, scope: !3960)
!3971 = !DILocation(line: 2202, column: 69, scope: !3960)
!3972 = !DILocation(line: 2202, column: 6, scope: !3960)
!3973 = !DILocation(line: 2202, column: 14, scope: !3960)
!3974 = !DILocation(line: 2202, column: 20, scope: !3960)
!3975 = !DILocation(line: 2203, column: 1, scope: !3960)
!3976 = distinct !DISubprogram(name: "LL_USART_SetDEDeassertionTime", scope: !2038, file: !2038, line: 2173, type: !2814, scopeLine: 2174, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3977)
!3977 = !{!3978, !3979}
!3978 = !DILocalVariable(name: "USARTx", arg: 1, scope: !3976, file: !2038, line: 2173, type: !254)
!3979 = !DILocalVariable(name: "Time", arg: 2, scope: !3976, file: !2038, line: 2173, type: !172)
!3980 = !DILocation(line: 2173, column: 67, scope: !3976)
!3981 = !DILocation(line: 2173, column: 84, scope: !3976)
!3982 = !DILocation(line: 2175, column: 28, scope: !3976)
!3983 = !DILocation(line: 2175, column: 36, scope: !3976)
!3984 = !DILocation(line: 2175, column: 43, scope: !3976)
!3985 = !DILocation(line: 2175, column: 72, scope: !3976)
!3986 = !DILocation(line: 2175, column: 77, scope: !3976)
!3987 = !DILocation(line: 2175, column: 69, scope: !3976)
!3988 = !DILocation(line: 2175, column: 6, scope: !3976)
!3989 = !DILocation(line: 2175, column: 14, scope: !3976)
!3990 = !DILocation(line: 2175, column: 20, scope: !3976)
!3991 = !DILocation(line: 2176, column: 1, scope: !3976)
!3992 = distinct !DISubprogram(name: "LL_USART_SetDESignalPolarity", scope: !2038, file: !2038, line: 2268, type: !2814, scopeLine: 2269, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3993)
!3993 = !{!3994, !3995}
!3994 = !DILocalVariable(name: "USARTx", arg: 1, scope: !3992, file: !2038, line: 2268, type: !254)
!3995 = !DILocalVariable(name: "Polarity", arg: 2, scope: !3992, file: !2038, line: 2268, type: !172)
!3996 = !DILocation(line: 2268, column: 66, scope: !3992)
!3997 = !DILocation(line: 2268, column: 83, scope: !3992)
!3998 = !DILocation(line: 2270, column: 28, scope: !3992)
!3999 = !DILocation(line: 2270, column: 36, scope: !3992)
!4000 = !DILocation(line: 2270, column: 43, scope: !3992)
!4001 = !DILocation(line: 2270, column: 71, scope: !3992)
!4002 = !DILocation(line: 2270, column: 68, scope: !3992)
!4003 = !DILocation(line: 2270, column: 6, scope: !3992)
!4004 = !DILocation(line: 2270, column: 14, scope: !3992)
!4005 = !DILocation(line: 2270, column: 20, scope: !3992)
!4006 = !DILocation(line: 2271, column: 1, scope: !3992)
!4007 = distinct !DISubprogram(name: "LL_USART_IsActiveFlag_TEACK", scope: !2038, file: !2038, line: 2924, type: !2039, scopeLine: 2925, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4008)
!4008 = !{!4009}
!4009 = !DILocalVariable(name: "USARTx", arg: 1, scope: !4007, file: !2038, line: 2924, type: !2041)
!4010 = !DILocation(line: 2924, column: 75, scope: !4007)
!4011 = !DILocation(line: 2926, column: 14, scope: !4007)
!4012 = !DILocation(line: 2926, column: 22, scope: !4007)
!4013 = !DILocation(line: 2926, column: 27, scope: !4007)
!4014 = !DILocation(line: 2926, column: 49, scope: !4007)
!4015 = !DILocation(line: 2926, column: 11, scope: !4007)
!4016 = !DILocation(line: 2926, column: 3, scope: !4007)
!4017 = distinct !DISubprogram(name: "LL_USART_IsActiveFlag_REACK", scope: !2038, file: !2038, line: 2935, type: !2039, scopeLine: 2936, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4018)
!4018 = !{!4019}
!4019 = !DILocalVariable(name: "USARTx", arg: 1, scope: !4017, file: !2038, line: 2935, type: !2041)
!4020 = !DILocation(line: 2935, column: 75, scope: !4017)
!4021 = !DILocation(line: 2937, column: 14, scope: !4017)
!4022 = !DILocation(line: 2937, column: 22, scope: !4017)
!4023 = !DILocation(line: 2937, column: 27, scope: !4017)
!4024 = !DILocation(line: 2937, column: 49, scope: !4017)
!4025 = !DILocation(line: 2937, column: 11, scope: !4017)
!4026 = !DILocation(line: 2937, column: 3, scope: !4017)
!4027 = distinct !DISubprogram(name: "reset_line_toggle", scope: !4028, file: !4028, line: 99, type: !178, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4029)
!4028 = !DIFile(filename: "zephyr/include/generated/syscalls/reset.h", directory: "/home/sri/zephyrproject/zephyr/build")
!4029 = !{!4030, !4031}
!4030 = !DILocalVariable(name: "dev", arg: 1, scope: !4027, file: !4028, line: 99, type: !150)
!4031 = !DILocalVariable(name: "id", arg: 2, scope: !4027, file: !4028, line: 99, type: !172)
!4032 = !DILocation(line: 99, column: 59, scope: !4027)
!4033 = !DILocation(line: 99, column: 73, scope: !4027)
!4034 = !DILocation(line: 108, column: 2, scope: !4027)
!4035 = !DILocation(line: 108, column: 7, scope: !4036)
!4036 = distinct !DILexicalBlock(scope: !4027, file: !4028, line: 108, column: 5)
!4037 = !{i64 338814}
!4038 = !DILocation(line: 108, column: 47, scope: !4036)
!4039 = !DILocation(line: 109, column: 34, scope: !4027)
!4040 = !DILocation(line: 109, column: 39, scope: !4027)
!4041 = !DILocation(line: 109, column: 9, scope: !4027)
!4042 = !DILocation(line: 109, column: 2, scope: !4027)
