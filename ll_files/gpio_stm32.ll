; ModuleID = '../bc_files/gpio_stm32.bc'
source_filename = "/home/sri/zephyrproject/zephyr/drivers/gpio/gpio_stm32.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-arm-none-eabi"

%struct.gpio_stm32_config = type { %struct.gpio_driver_config, ptr, i32, %struct.stm32_pclken }
%struct.gpio_driver_config = type { i32 }
%struct.stm32_pclken = type { i32, i32 }
%struct.gpio_driver_api = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_state = type { i8, i8 }
%struct.gpio_stm32_data = type { %struct.gpio_driver_data, ptr, %struct._slist }
%struct.gpio_driver_data = type { i32 }
%struct._slist = type { ptr, ptr }
%struct.device = type { ptr, ptr, ptr, ptr, ptr }
%struct.init_entry = type { %union.init_function, ptr }
%union.init_function = type { ptr }
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
%struct.GPIO_TypeDef = type { i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32 }
%struct.SYSCFG_TypeDef = type { i32, i32, [4 x i32], i32, [25 x i32], [32 x i32] }
%struct.gpio_callback = type { %struct._snode, ptr, i32 }
%struct._snode = type { ptr }
%struct.clock_control_driver_api = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [14 x i8] c"gpio@48000000\00", align 1, !dbg !0
@gpio_stm32_cfg_a = internal constant %struct.gpio_stm32_config { %struct.gpio_driver_config { i32 65535 }, ptr inttoptr (i32 1207959552 to ptr), i32 0, %struct.stm32_pclken { i32 20, i32 131072 } }, align 4, !dbg !7
@gpio_stm32_driver = internal constant %struct.gpio_driver_api { ptr @gpio_stm32_config, ptr @gpio_stm32_port_get_raw, ptr @gpio_stm32_port_set_masked_raw, ptr @gpio_stm32_port_set_bits_raw, ptr @gpio_stm32_port_clear_bits_raw, ptr @gpio_stm32_port_toggle_bits, ptr @gpio_stm32_pin_interrupt_configure, ptr @gpio_stm32_manage_callback, ptr null }, align 4, !dbg !381
@__devstate_dts_ord_28 = internal global %struct.device_state zeroinitializer, section ".z_devstate", align 1, !dbg !359
@gpio_stm32_data_a = internal global %struct.gpio_stm32_data zeroinitializer, align 4, !dbg !345
@__device_dts_ord_28 = hidden constant %struct.device { ptr @.str, ptr @gpio_stm32_cfg_a, ptr @gpio_stm32_driver, ptr @__devstate_dts_ord_28, ptr @gpio_stm32_data_a }, section "._device.static.1_40_", align 4, !dbg !295
@__init___device_dts_ord_28 = internal constant %struct.init_entry { %union.init_function { ptr @gpio_stm32_init }, ptr @__device_dts_ord_28 }, section ".z_init_PRE_KERNEL_140_00028_", align 4, !dbg !297
@.str.1 = private unnamed_addr constant [14 x i8] c"gpio@48000400\00", align 1, !dbg !315
@gpio_stm32_cfg_b = internal constant %struct.gpio_stm32_config { %struct.gpio_driver_config { i32 65535 }, ptr inttoptr (i32 1207960576 to ptr), i32 1, %struct.stm32_pclken { i32 20, i32 262144 } }, align 4, !dbg !383
@__devstate_dts_ord_81 = internal global %struct.device_state zeroinitializer, section ".z_devstate", align 1, !dbg !363
@gpio_stm32_data_b = internal global %struct.gpio_stm32_data zeroinitializer, align 4, !dbg !361
@__device_dts_ord_81 = hidden constant %struct.device { ptr @.str.1, ptr @gpio_stm32_cfg_b, ptr @gpio_stm32_driver, ptr @__devstate_dts_ord_81, ptr @gpio_stm32_data_b }, section "._device.static.1_40_", align 4, !dbg !317
@__init___device_dts_ord_81 = internal constant %struct.init_entry { %union.init_function { ptr @gpio_stm32_init }, ptr @__device_dts_ord_81 }, section ".z_init_PRE_KERNEL_140_00081_", align 4, !dbg !319
@.str.2 = private unnamed_addr constant [14 x i8] c"gpio@48000800\00", align 1, !dbg !321
@gpio_stm32_cfg_c = internal constant %struct.gpio_stm32_config { %struct.gpio_driver_config { i32 65535 }, ptr inttoptr (i32 1207961600 to ptr), i32 2, %struct.stm32_pclken { i32 20, i32 524288 } }, align 4, !dbg !397
@__devstate_dts_ord_25 = internal global %struct.device_state zeroinitializer, section ".z_devstate", align 1, !dbg !367
@gpio_stm32_data_c = internal global %struct.gpio_stm32_data zeroinitializer, align 4, !dbg !365
@__device_dts_ord_25 = hidden constant %struct.device { ptr @.str.2, ptr @gpio_stm32_cfg_c, ptr @gpio_stm32_driver, ptr @__devstate_dts_ord_25, ptr @gpio_stm32_data_c }, section "._device.static.1_40_", align 4, !dbg !323
@__init___device_dts_ord_25 = internal constant %struct.init_entry { %union.init_function { ptr @gpio_stm32_init }, ptr @__device_dts_ord_25 }, section ".z_init_PRE_KERNEL_140_00025_", align 4, !dbg !325
@.str.3 = private unnamed_addr constant [14 x i8] c"gpio@48000c00\00", align 1, !dbg !327
@gpio_stm32_cfg_d = internal constant %struct.gpio_stm32_config { %struct.gpio_driver_config { i32 65535 }, ptr inttoptr (i32 1207962624 to ptr), i32 3, %struct.stm32_pclken { i32 20, i32 1048576 } }, align 4, !dbg !399
@__devstate_dts_ord_82 = internal global %struct.device_state zeroinitializer, section ".z_devstate", align 1, !dbg !371
@gpio_stm32_data_d = internal global %struct.gpio_stm32_data zeroinitializer, align 4, !dbg !369
@__device_dts_ord_82 = hidden constant %struct.device { ptr @.str.3, ptr @gpio_stm32_cfg_d, ptr @gpio_stm32_driver, ptr @__devstate_dts_ord_82, ptr @gpio_stm32_data_d }, section "._device.static.1_40_", align 4, !dbg !329
@__init___device_dts_ord_82 = internal constant %struct.init_entry { %union.init_function { ptr @gpio_stm32_init }, ptr @__device_dts_ord_82 }, section ".z_init_PRE_KERNEL_140_00082_", align 4, !dbg !331
@.str.4 = private unnamed_addr constant [14 x i8] c"gpio@48001000\00", align 1, !dbg !333
@gpio_stm32_cfg_e = internal constant %struct.gpio_stm32_config { %struct.gpio_driver_config { i32 65535 }, ptr inttoptr (i32 1207963648 to ptr), i32 4, %struct.stm32_pclken { i32 20, i32 2097152 } }, align 4, !dbg !401
@__devstate_dts_ord_83 = internal global %struct.device_state zeroinitializer, section ".z_devstate", align 1, !dbg !375
@gpio_stm32_data_e = internal global %struct.gpio_stm32_data zeroinitializer, align 4, !dbg !373
@__device_dts_ord_83 = hidden constant %struct.device { ptr @.str.4, ptr @gpio_stm32_cfg_e, ptr @gpio_stm32_driver, ptr @__devstate_dts_ord_83, ptr @gpio_stm32_data_e }, section "._device.static.1_40_", align 4, !dbg !335
@__init___device_dts_ord_83 = internal constant %struct.init_entry { %union.init_function { ptr @gpio_stm32_init }, ptr @__device_dts_ord_83 }, section ".z_init_PRE_KERNEL_140_00083_", align 4, !dbg !337
@.str.5 = private unnamed_addr constant [14 x i8] c"gpio@48001400\00", align 1, !dbg !339
@gpio_stm32_cfg_f = internal constant %struct.gpio_stm32_config { %struct.gpio_driver_config { i32 65535 }, ptr inttoptr (i32 1207964672 to ptr), i32 5, %struct.stm32_pclken { i32 20, i32 4194304 } }, align 4, !dbg !403
@__devstate_dts_ord_84 = internal global %struct.device_state zeroinitializer, section ".z_devstate", align 1, !dbg !379
@gpio_stm32_data_f = internal global %struct.gpio_stm32_data zeroinitializer, align 4, !dbg !377
@__device_dts_ord_84 = hidden constant %struct.device { ptr @.str.5, ptr @gpio_stm32_cfg_f, ptr @gpio_stm32_driver, ptr @__devstate_dts_ord_84, ptr @gpio_stm32_data_f }, section "._device.static.1_40_", align 4, !dbg !341
@__init___device_dts_ord_84 = internal constant %struct.init_entry { %union.init_function { ptr @gpio_stm32_init }, ptr @__device_dts_ord_84 }, section ".z_init_PRE_KERNEL_140_00084_", align 4, !dbg !343
@__device_dts_ord_9 = external dso_local constant %struct.device, align 4
@llvm.used = appending global [12 x ptr] [ptr @__device_dts_ord_28, ptr @__init___device_dts_ord_28, ptr @__device_dts_ord_81, ptr @__init___device_dts_ord_81, ptr @__device_dts_ord_25, ptr @__init___device_dts_ord_25, ptr @__device_dts_ord_82, ptr @__init___device_dts_ord_82, ptr @__device_dts_ord_83, ptr @__init___device_dts_ord_83, ptr @__device_dts_ord_84, ptr @__init___device_dts_ord_84], section "llvm.metadata"

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_k_object_access_grant(ptr noundef %0, ptr noundef %1) #0 !dbg !412 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !529, metadata !DIExpression()), !dbg !531
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !530, metadata !DIExpression()), !dbg !532
  %5 = load ptr, ptr %3, align 4, !dbg !533
  %6 = load ptr, ptr %4, align 4, !dbg !534
  ret void, !dbg !535
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_k_object_release(ptr noundef %0) #0 !dbg !536 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !540, metadata !DIExpression()), !dbg !541
  %3 = load ptr, ptr %2, align 4, !dbg !542
  ret void, !dbg !543
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_impl_k_object_alloc(i8 noundef zeroext %0) #0 !dbg !544 {
  %2 = alloca i8, align 1
  store i8 %0, ptr %2, align 1
  call void @llvm.dbg.declare(metadata ptr %2, metadata !548, metadata !DIExpression()), !dbg !549
  %3 = load i8, ptr %2, align 1, !dbg !550
  ret ptr null, !dbg !551
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_impl_k_object_alloc_size(i8 noundef zeroext %0, i32 noundef %1) #0 !dbg !552 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8 %0, ptr %3, align 1
  call void @llvm.dbg.declare(metadata ptr %3, metadata !556, metadata !DIExpression()), !dbg !558
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !557, metadata !DIExpression()), !dbg !559
  %5 = load i8, ptr %3, align 1, !dbg !560
  %6 = load i32, ptr %4, align 4, !dbg !561
  ret ptr null, !dbg !562
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_thread_timeout_expires_ticks(ptr noundef %0) #0 !dbg !563 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !571, metadata !DIExpression()), !dbg !572
  %3 = load ptr, ptr %2, align 4, !dbg !573
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !574
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !575
  %6 = call i64 @z_timeout_expires(ptr noundef %5) #5, !dbg !576
  ret i64 %6, !dbg !577
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_thread_timeout_remaining_ticks(ptr noundef %0) #0 !dbg !578 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !580, metadata !DIExpression()), !dbg !581
  %3 = load ptr, ptr %2, align 4, !dbg !582
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !583
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !584
  %6 = call i64 @z_timeout_remaining(ptr noundef %5) #5, !dbg !585
  ret i64 %6, !dbg !586
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_timer_expires_ticks(ptr noundef %0) #0 !dbg !587 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !610, metadata !DIExpression()), !dbg !611
  %3 = load ptr, ptr %2, align 4, !dbg !612
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !613
  %5 = call i64 @z_timeout_expires(ptr noundef %4) #5, !dbg !614
  ret i64 %5, !dbg !615
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_timer_remaining_ticks(ptr noundef %0) #0 !dbg !616 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !618, metadata !DIExpression()), !dbg !619
  %3 = load ptr, ptr %2, align 4, !dbg !620
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !621
  %5 = call i64 @z_timeout_remaining(ptr noundef %4) #5, !dbg !622
  ret i64 %5, !dbg !623
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_k_timer_user_data_set(ptr noundef %0, ptr noundef %1) #0 !dbg !624 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !628, metadata !DIExpression()), !dbg !630
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !629, metadata !DIExpression()), !dbg !631
  %5 = load ptr, ptr %4, align 4, !dbg !632
  %6 = load ptr, ptr %3, align 4, !dbg !633
  %7 = getelementptr inbounds %struct.k_timer, ptr %6, i32 0, i32 6, !dbg !634
  store ptr %5, ptr %7, align 4, !dbg !635
  ret void, !dbg !636
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_impl_k_timer_user_data_get(ptr noundef %0) #0 !dbg !637 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !641, metadata !DIExpression()), !dbg !642
  %3 = load ptr, ptr %2, align 4, !dbg !643
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 6, !dbg !644
  %5 = load ptr, ptr %4, align 4, !dbg !644
  ret ptr %5, !dbg !645
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_queue_is_empty(ptr noundef %0) #0 !dbg !646 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !668, metadata !DIExpression()), !dbg !669
  %3 = load ptr, ptr %2, align 4, !dbg !670
  %4 = getelementptr inbounds %struct.k_queue, ptr %3, i32 0, i32 0, !dbg !671
  %5 = call zeroext i1 @sys_sflist_is_empty(ptr noundef %4) #5, !dbg !672
  %6 = zext i1 %5 to i32, !dbg !673
  ret i32 %6, !dbg !674
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_sem_count_get(ptr noundef %0) #0 !dbg !675 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !685, metadata !DIExpression()), !dbg !686
  %3 = load ptr, ptr %2, align 4, !dbg !687
  %4 = getelementptr inbounds %struct.k_sem, ptr %3, i32 0, i32 1, !dbg !688
  %5 = load i32, ptr %4, align 4, !dbg !688
  ret i32 %5, !dbg !689
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_msgq_num_free_get(ptr noundef %0) #0 !dbg !690 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !707, metadata !DIExpression()), !dbg !708
  %3 = load ptr, ptr %2, align 4, !dbg !709
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 3, !dbg !710
  %5 = load i32, ptr %4, align 4, !dbg !710
  %6 = load ptr, ptr %2, align 4, !dbg !711
  %7 = getelementptr inbounds %struct.k_msgq, ptr %6, i32 0, i32 8, !dbg !712
  %8 = load i32, ptr %7, align 4, !dbg !712
  %9 = sub i32 %5, %8, !dbg !713
  ret i32 %9, !dbg !714
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_msgq_num_used_get(ptr noundef %0) #0 !dbg !715 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !717, metadata !DIExpression()), !dbg !718
  %3 = load ptr, ptr %2, align 4, !dbg !719
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 8, !dbg !720
  %5 = load i32, ptr %4, align 4, !dbg !720
  ret i32 %5, !dbg !721
}

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @z_impl_device_is_ready(ptr noundef %0) #0 !dbg !722 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !726, metadata !DIExpression()), !dbg !727
  %3 = load ptr, ptr %2, align 4, !dbg !728
  %4 = call zeroext i1 @z_device_is_ready(ptr noundef %3) #5, !dbg !729
  ret i1 %4, !dbg !730
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_gpio_pin_interrupt_configure(ptr noundef %0, i8 noundef zeroext %1, i32 noundef %2) #0 !dbg !731 {
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
  call void @llvm.dbg.declare(metadata ptr %5, metadata !733, metadata !DIExpression()), !dbg !743
  store i8 %1, ptr %6, align 1
  call void @llvm.dbg.declare(metadata ptr %6, metadata !734, metadata !DIExpression()), !dbg !744
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !735, metadata !DIExpression()), !dbg !745
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #6, !dbg !746
  call void @llvm.dbg.declare(metadata ptr %8, metadata !736, metadata !DIExpression()), !dbg !747
  %14 = load ptr, ptr %5, align 4, !dbg !748
  %15 = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 2, !dbg !749
  %16 = load ptr, ptr %15, align 4, !dbg !749
  store ptr %16, ptr %8, align 4, !dbg !747
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #6, !dbg !750
  call void @llvm.dbg.declare(metadata ptr %9, metadata !737, metadata !DIExpression()), !dbg !751
  %17 = load ptr, ptr %5, align 4, !dbg !752
  %18 = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 1, !dbg !753
  %19 = load ptr, ptr %18, align 4, !dbg !753
  store ptr %19, ptr %9, align 4, !dbg !751
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #6, !dbg !754
  call void @llvm.dbg.declare(metadata ptr %10, metadata !739, metadata !DIExpression()), !dbg !755
  %20 = load ptr, ptr %5, align 4, !dbg !756
  %21 = getelementptr inbounds %struct.device, ptr %20, i32 0, i32 4, !dbg !757
  %22 = load ptr, ptr %21, align 4, !dbg !757
  store ptr %22, ptr %10, align 4, !dbg !755
  call void @llvm.lifetime.start.p0(i64 4, ptr %11) #6, !dbg !758
  call void @llvm.dbg.declare(metadata ptr %11, metadata !741, metadata !DIExpression()), !dbg !759
  call void @llvm.lifetime.start.p0(i64 4, ptr %12) #6, !dbg !760
  call void @llvm.dbg.declare(metadata ptr %12, metadata !742, metadata !DIExpression()), !dbg !761
  %23 = load ptr, ptr %8, align 4, !dbg !762
  %24 = getelementptr inbounds %struct.gpio_driver_api, ptr %23, i32 0, i32 6, !dbg !764
  %25 = load ptr, ptr %24, align 4, !dbg !764
  %26 = icmp eq ptr %25, null, !dbg !765
  br i1 %26, label %27, label %28, !dbg !766

27:                                               ; preds = %3
  store i32 -88, ptr %4, align 4, !dbg !767
  store i32 1, ptr %13, align 4
  br label %57, !dbg !767

28:                                               ; preds = %3
  %29 = load i32, ptr %7, align 4, !dbg !769
  %30 = and i32 %29, 8388608, !dbg !771
  %31 = icmp ne i32 %30, 0, !dbg !772
  br i1 %31, label %32, label %44, !dbg !773

32:                                               ; preds = %28
  %33 = load ptr, ptr %10, align 4, !dbg !774
  %34 = getelementptr inbounds %struct.gpio_driver_data, ptr %33, i32 0, i32 0, !dbg !775
  %35 = load i32, ptr %34, align 4, !dbg !775
  %36 = load i8, ptr %6, align 1, !dbg !776
  %37 = zext i8 %36 to i32, !dbg !777
  %38 = shl i32 1, %37, !dbg !778
  %39 = and i32 %35, %38, !dbg !779
  %40 = icmp ne i32 %39, 0, !dbg !780
  br i1 %40, label %41, label %44, !dbg !781

41:                                               ; preds = %32
  %42 = load i32, ptr %7, align 4, !dbg !782
  %43 = xor i32 %42, 100663296, !dbg !782
  store i32 %43, ptr %7, align 4, !dbg !782
  br label %44, !dbg !784

44:                                               ; preds = %41, %32, %28
  %45 = load i32, ptr %7, align 4, !dbg !785
  %46 = and i32 %45, 100663296, !dbg !786
  store i32 %46, ptr %11, align 4, !dbg !787
  %47 = load i32, ptr %7, align 4, !dbg !788
  %48 = and i32 %47, 23068672, !dbg !789
  store i32 %48, ptr %12, align 4, !dbg !790
  %49 = load ptr, ptr %8, align 4, !dbg !791
  %50 = getelementptr inbounds %struct.gpio_driver_api, ptr %49, i32 0, i32 6, !dbg !792
  %51 = load ptr, ptr %50, align 4, !dbg !792
  %52 = load ptr, ptr %5, align 4, !dbg !793
  %53 = load i8, ptr %6, align 1, !dbg !794
  %54 = load i32, ptr %12, align 4, !dbg !795
  %55 = load i32, ptr %11, align 4, !dbg !796
  %56 = call i32 %51(ptr noundef %52, i8 noundef zeroext %53, i32 noundef %54, i32 noundef %55) #5, !dbg !791
  store i32 %56, ptr %4, align 4, !dbg !797
  store i32 1, ptr %13, align 4
  br label %57, !dbg !797

57:                                               ; preds = %44, %27
  call void @llvm.lifetime.end.p0(i64 4, ptr %12) #6, !dbg !798
  call void @llvm.lifetime.end.p0(i64 4, ptr %11) #6, !dbg !798
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #6, !dbg !798
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #6, !dbg !798
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #6, !dbg !798
  %58 = load i32, ptr %4, align 4, !dbg !798
  ret i32 %58, !dbg !798
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_gpio_pin_configure(ptr noundef %0, i8 noundef zeroext %1, i32 noundef %2) #0 !dbg !799 {
  %4 = alloca ptr, align 4
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !801, metadata !DIExpression()), !dbg !807
  store i8 %1, ptr %5, align 1
  call void @llvm.dbg.declare(metadata ptr %5, metadata !802, metadata !DIExpression()), !dbg !808
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !803, metadata !DIExpression()), !dbg !809
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #6, !dbg !810
  call void @llvm.dbg.declare(metadata ptr %7, metadata !804, metadata !DIExpression()), !dbg !811
  %10 = load ptr, ptr %4, align 4, !dbg !812
  %11 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 2, !dbg !813
  %12 = load ptr, ptr %11, align 4, !dbg !813
  store ptr %12, ptr %7, align 4, !dbg !811
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #6, !dbg !814
  call void @llvm.dbg.declare(metadata ptr %8, metadata !805, metadata !DIExpression()), !dbg !815
  %13 = load ptr, ptr %4, align 4, !dbg !816
  %14 = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 1, !dbg !817
  %15 = load ptr, ptr %14, align 4, !dbg !817
  store ptr %15, ptr %8, align 4, !dbg !815
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #6, !dbg !818
  call void @llvm.dbg.declare(metadata ptr %9, metadata !806, metadata !DIExpression()), !dbg !819
  %16 = load ptr, ptr %4, align 4, !dbg !820
  %17 = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 4, !dbg !821
  %18 = load ptr, ptr %17, align 4, !dbg !821
  store ptr %18, ptr %9, align 4, !dbg !819
  %19 = load i32, ptr %6, align 4, !dbg !822
  %20 = and i32 %19, 1048576, !dbg !824
  %21 = icmp ne i32 %20, 0, !dbg !825
  br i1 %21, label %22, label %33, !dbg !826

22:                                               ; preds = %3
  %23 = load i32, ptr %6, align 4, !dbg !827
  %24 = and i32 %23, 786432, !dbg !828
  %25 = icmp ne i32 %24, 0, !dbg !829
  br i1 %25, label %26, label %33, !dbg !830

26:                                               ; preds = %22
  %27 = load i32, ptr %6, align 4, !dbg !831
  %28 = and i32 %27, 1, !dbg !832
  %29 = icmp ne i32 %28, 0, !dbg !833
  br i1 %29, label %30, label %33, !dbg !834

30:                                               ; preds = %26
  %31 = load i32, ptr %6, align 4, !dbg !835
  %32 = xor i32 %31, 786432, !dbg !835
  store i32 %32, ptr %6, align 4, !dbg !835
  br label %33, !dbg !837

33:                                               ; preds = %30, %26, %22, %3
  %34 = load i32, ptr %6, align 4, !dbg !838
  %35 = and i32 %34, -1048577, !dbg !838
  store i32 %35, ptr %6, align 4, !dbg !838
  %36 = load i32, ptr %6, align 4, !dbg !839
  %37 = and i32 %36, 1, !dbg !841
  %38 = icmp ne i32 %37, 0, !dbg !842
  br i1 %38, label %39, label %47, !dbg !843

39:                                               ; preds = %33
  %40 = load i8, ptr %5, align 1, !dbg !844
  %41 = zext i8 %40 to i32, !dbg !846
  %42 = shl i32 1, %41, !dbg !847
  %43 = load ptr, ptr %9, align 4, !dbg !848
  %44 = getelementptr inbounds %struct.gpio_driver_data, ptr %43, i32 0, i32 0, !dbg !849
  %45 = load i32, ptr %44, align 4, !dbg !850
  %46 = or i32 %45, %42, !dbg !850
  store i32 %46, ptr %44, align 4, !dbg !850
  br label %56, !dbg !851

47:                                               ; preds = %33
  %48 = load i8, ptr %5, align 1, !dbg !852
  %49 = zext i8 %48 to i32, !dbg !854
  %50 = shl i32 1, %49, !dbg !855
  %51 = xor i32 %50, -1, !dbg !856
  %52 = load ptr, ptr %9, align 4, !dbg !857
  %53 = getelementptr inbounds %struct.gpio_driver_data, ptr %52, i32 0, i32 0, !dbg !858
  %54 = load i32, ptr %53, align 4, !dbg !859
  %55 = and i32 %54, %51, !dbg !859
  store i32 %55, ptr %53, align 4, !dbg !859
  br label %56

56:                                               ; preds = %47, %39
  %57 = load ptr, ptr %7, align 4, !dbg !860
  %58 = getelementptr inbounds %struct.gpio_driver_api, ptr %57, i32 0, i32 0, !dbg !861
  %59 = load ptr, ptr %58, align 4, !dbg !861
  %60 = load ptr, ptr %4, align 4, !dbg !862
  %61 = load i8, ptr %5, align 1, !dbg !863
  %62 = load i32, ptr %6, align 4, !dbg !864
  %63 = call i32 %59(ptr noundef %60, i8 noundef zeroext %61, i32 noundef %62) #5, !dbg !860
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #6, !dbg !865
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #6, !dbg !865
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #6, !dbg !865
  ret i32 %63, !dbg !866
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_gpio_port_get_raw(ptr noundef %0, ptr noundef %1) #0 !dbg !867 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !869, metadata !DIExpression()), !dbg !872
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !870, metadata !DIExpression()), !dbg !873
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #6, !dbg !874
  call void @llvm.dbg.declare(metadata ptr %5, metadata !871, metadata !DIExpression()), !dbg !875
  %6 = load ptr, ptr %3, align 4, !dbg !876
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 2, !dbg !877
  %8 = load ptr, ptr %7, align 4, !dbg !877
  store ptr %8, ptr %5, align 4, !dbg !875
  %9 = load ptr, ptr %5, align 4, !dbg !878
  %10 = getelementptr inbounds %struct.gpio_driver_api, ptr %9, i32 0, i32 1, !dbg !879
  %11 = load ptr, ptr %10, align 4, !dbg !879
  %12 = load ptr, ptr %3, align 4, !dbg !880
  %13 = load ptr, ptr %4, align 4, !dbg !881
  %14 = call i32 %11(ptr noundef %12, ptr noundef %13) #5, !dbg !878
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #6, !dbg !882
  ret i32 %14, !dbg !883
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_gpio_port_set_masked_raw(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 !dbg !884 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !886, metadata !DIExpression()), !dbg !890
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !887, metadata !DIExpression()), !dbg !891
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !888, metadata !DIExpression()), !dbg !892
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #6, !dbg !893
  call void @llvm.dbg.declare(metadata ptr %7, metadata !889, metadata !DIExpression()), !dbg !894
  %8 = load ptr, ptr %4, align 4, !dbg !895
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 2, !dbg !896
  %10 = load ptr, ptr %9, align 4, !dbg !896
  store ptr %10, ptr %7, align 4, !dbg !894
  %11 = load ptr, ptr %7, align 4, !dbg !897
  %12 = getelementptr inbounds %struct.gpio_driver_api, ptr %11, i32 0, i32 2, !dbg !898
  %13 = load ptr, ptr %12, align 4, !dbg !898
  %14 = load ptr, ptr %4, align 4, !dbg !899
  %15 = load i32, ptr %5, align 4, !dbg !900
  %16 = load i32, ptr %6, align 4, !dbg !901
  %17 = call i32 %13(ptr noundef %14, i32 noundef %15, i32 noundef %16) #5, !dbg !897
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #6, !dbg !902
  ret i32 %17, !dbg !903
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_gpio_port_set_bits_raw(ptr noundef %0, i32 noundef %1) #0 !dbg !904 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !906, metadata !DIExpression()), !dbg !909
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !907, metadata !DIExpression()), !dbg !910
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #6, !dbg !911
  call void @llvm.dbg.declare(metadata ptr %5, metadata !908, metadata !DIExpression()), !dbg !912
  %6 = load ptr, ptr %3, align 4, !dbg !913
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 2, !dbg !914
  %8 = load ptr, ptr %7, align 4, !dbg !914
  store ptr %8, ptr %5, align 4, !dbg !912
  %9 = load ptr, ptr %5, align 4, !dbg !915
  %10 = getelementptr inbounds %struct.gpio_driver_api, ptr %9, i32 0, i32 3, !dbg !916
  %11 = load ptr, ptr %10, align 4, !dbg !916
  %12 = load ptr, ptr %3, align 4, !dbg !917
  %13 = load i32, ptr %4, align 4, !dbg !918
  %14 = call i32 %11(ptr noundef %12, i32 noundef %13) #5, !dbg !915
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #6, !dbg !919
  ret i32 %14, !dbg !920
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_gpio_port_clear_bits_raw(ptr noundef %0, i32 noundef %1) #0 !dbg !921 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !923, metadata !DIExpression()), !dbg !926
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !924, metadata !DIExpression()), !dbg !927
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #6, !dbg !928
  call void @llvm.dbg.declare(metadata ptr %5, metadata !925, metadata !DIExpression()), !dbg !929
  %6 = load ptr, ptr %3, align 4, !dbg !930
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 2, !dbg !931
  %8 = load ptr, ptr %7, align 4, !dbg !931
  store ptr %8, ptr %5, align 4, !dbg !929
  %9 = load ptr, ptr %5, align 4, !dbg !932
  %10 = getelementptr inbounds %struct.gpio_driver_api, ptr %9, i32 0, i32 4, !dbg !933
  %11 = load ptr, ptr %10, align 4, !dbg !933
  %12 = load ptr, ptr %3, align 4, !dbg !934
  %13 = load i32, ptr %4, align 4, !dbg !935
  %14 = call i32 %11(ptr noundef %12, i32 noundef %13) #5, !dbg !932
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #6, !dbg !936
  ret i32 %14, !dbg !937
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_gpio_port_toggle_bits(ptr noundef %0, i32 noundef %1) #0 !dbg !938 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !940, metadata !DIExpression()), !dbg !943
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !941, metadata !DIExpression()), !dbg !944
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #6, !dbg !945
  call void @llvm.dbg.declare(metadata ptr %5, metadata !942, metadata !DIExpression()), !dbg !946
  %6 = load ptr, ptr %3, align 4, !dbg !947
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 2, !dbg !948
  %8 = load ptr, ptr %7, align 4, !dbg !948
  store ptr %8, ptr %5, align 4, !dbg !946
  %9 = load ptr, ptr %5, align 4, !dbg !949
  %10 = getelementptr inbounds %struct.gpio_driver_api, ptr %9, i32 0, i32 5, !dbg !950
  %11 = load ptr, ptr %10, align 4, !dbg !950
  %12 = load ptr, ptr %3, align 4, !dbg !951
  %13 = load i32, ptr %4, align 4, !dbg !952
  %14 = call i32 %11(ptr noundef %12, i32 noundef %13) #5, !dbg !949
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #6, !dbg !953
  ret i32 %14, !dbg !954
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_gpio_get_pending_int(ptr noundef %0) #0 !dbg !955 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !957, metadata !DIExpression()), !dbg !959
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #6, !dbg !960
  call void @llvm.dbg.declare(metadata ptr %4, metadata !958, metadata !DIExpression()), !dbg !961
  %6 = load ptr, ptr %3, align 4, !dbg !962
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 2, !dbg !963
  %8 = load ptr, ptr %7, align 4, !dbg !963
  store ptr %8, ptr %4, align 4, !dbg !961
  %9 = load ptr, ptr %4, align 4, !dbg !964
  %10 = getelementptr inbounds %struct.gpio_driver_api, ptr %9, i32 0, i32 8, !dbg !966
  %11 = load ptr, ptr %10, align 4, !dbg !966
  %12 = icmp eq ptr %11, null, !dbg !967
  br i1 %12, label %13, label %14, !dbg !968

13:                                               ; preds = %1
  store i32 -88, ptr %2, align 4, !dbg !969
  store i32 1, ptr %5, align 4
  br label %20, !dbg !969

14:                                               ; preds = %1
  %15 = load ptr, ptr %4, align 4, !dbg !971
  %16 = getelementptr inbounds %struct.gpio_driver_api, ptr %15, i32 0, i32 8, !dbg !972
  %17 = load ptr, ptr %16, align 4, !dbg !972
  %18 = load ptr, ptr %3, align 4, !dbg !973
  %19 = call i32 %17(ptr noundef %18) #5, !dbg !971
  store i32 %19, ptr %2, align 4, !dbg !974
  store i32 1, ptr %5, align 4
  br label %20, !dbg !974

20:                                               ; preds = %14, %13
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #6, !dbg !975
  %21 = load i32, ptr %2, align 4, !dbg !975
  ret i32 %21, !dbg !975
}

; Function Attrs: nounwind optsize
define hidden i32 @gpio_stm32_configure(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #1 !dbg !976 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store ptr %0, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !980, metadata !DIExpression()), !dbg !988
  store i32 %1, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !981, metadata !DIExpression()), !dbg !989
  store i32 %2, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !982, metadata !DIExpression()), !dbg !990
  store i32 %3, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !983, metadata !DIExpression()), !dbg !991
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #6, !dbg !992
  call void @llvm.dbg.declare(metadata ptr %10, metadata !984, metadata !DIExpression()), !dbg !993
  %13 = load ptr, ptr %6, align 4, !dbg !994
  %14 = call i32 @pm_device_runtime_get(ptr noundef %13) #5, !dbg !995
  store i32 %14, ptr %10, align 4, !dbg !996
  %15 = load i32, ptr %10, align 4, !dbg !997
  %16 = icmp slt i32 %15, 0, !dbg !999
  br i1 %16, label %17, label %19, !dbg !1000

17:                                               ; preds = %4
  %18 = load i32, ptr %10, align 4, !dbg !1001
  store i32 %18, ptr %5, align 4, !dbg !1003
  store i32 1, ptr %11, align 4
  br label %49, !dbg !1003

19:                                               ; preds = %4
  %20 = load ptr, ptr %6, align 4, !dbg !1004
  %21 = load i32, ptr %7, align 4, !dbg !1005
  %22 = load i32, ptr %8, align 4, !dbg !1006
  %23 = load i32, ptr %9, align 4, !dbg !1007
  call void @gpio_stm32_configure_raw(ptr noundef %20, i32 noundef %21, i32 noundef %22, i32 noundef %23) #5, !dbg !1008
  %24 = load i32, ptr %9, align 4, !dbg !1009
  %25 = icmp eq i32 %24, 17, !dbg !1010
  br i1 %25, label %26, label %46, !dbg !1011

26:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 4, ptr %12) #6, !dbg !1012
  call void @llvm.dbg.declare(metadata ptr %12, metadata !985, metadata !DIExpression()), !dbg !1013
  %27 = load i32, ptr %8, align 4, !dbg !1014
  %28 = and i32 %27, 2048, !dbg !1015
  store i32 %28, ptr %12, align 4, !dbg !1013
  %29 = load i32, ptr %12, align 4, !dbg !1016
  %30 = icmp eq i32 %29, 2048, !dbg !1018
  br i1 %30, label %31, label %36, !dbg !1019

31:                                               ; preds = %26
  %32 = load ptr, ptr %6, align 4, !dbg !1020
  %33 = load i32, ptr %7, align 4, !dbg !1022
  %34 = shl i32 1, %33, !dbg !1023
  %35 = call i32 @gpio_stm32_port_set_bits_raw(ptr noundef %32, i32 noundef %34) #5, !dbg !1024
  br label %45, !dbg !1025

36:                                               ; preds = %26
  %37 = load i32, ptr %12, align 4, !dbg !1026
  %38 = icmp eq i32 %37, 0, !dbg !1028
  br i1 %38, label %39, label %44, !dbg !1029

39:                                               ; preds = %36
  %40 = load ptr, ptr %6, align 4, !dbg !1030
  %41 = load i32, ptr %7, align 4, !dbg !1032
  %42 = shl i32 1, %41, !dbg !1033
  %43 = call i32 @gpio_stm32_port_clear_bits_raw(ptr noundef %40, i32 noundef %42) #5, !dbg !1034
  br label %44, !dbg !1035

44:                                               ; preds = %39, %36
  br label %45

45:                                               ; preds = %44, %31
  call void @llvm.lifetime.end.p0(i64 4, ptr %12) #6, !dbg !1036
  br label %46, !dbg !1037

46:                                               ; preds = %45, %19
  %47 = load ptr, ptr %6, align 4, !dbg !1038
  %48 = call i32 @pm_device_runtime_put(ptr noundef %47) #5, !dbg !1039
  store i32 %48, ptr %5, align 4, !dbg !1040
  store i32 1, ptr %11, align 4
  br label %49, !dbg !1040

49:                                               ; preds = %46, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #6, !dbg !1041
  %50 = load i32, ptr %5, align 4, !dbg !1041
  ret i32 %50, !dbg !1041
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: inlinehint nounwind optsize
define internal i32 @pm_device_runtime_get(ptr noundef %0) #0 !dbg !1042 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1045, metadata !DIExpression()), !dbg !1046
  %3 = load ptr, ptr %2, align 4, !dbg !1047
  ret i32 0, !dbg !1048
}

; Function Attrs: nounwind optsize
define internal void @gpio_stm32_configure_raw(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #1 !dbg !1049 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store ptr %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1053, metadata !DIExpression()), !dbg !1065
  store i32 %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1054, metadata !DIExpression()), !dbg !1066
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1055, metadata !DIExpression()), !dbg !1067
  store i32 %3, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1056, metadata !DIExpression()), !dbg !1068
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #6, !dbg !1069
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1057, metadata !DIExpression()), !dbg !1070
  %16 = load ptr, ptr %5, align 4, !dbg !1071
  %17 = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 1, !dbg !1072
  %18 = load ptr, ptr %17, align 4, !dbg !1072
  store ptr %18, ptr %9, align 4, !dbg !1070
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #6, !dbg !1073
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1059, metadata !DIExpression()), !dbg !1074
  %19 = load ptr, ptr %9, align 4, !dbg !1075
  %20 = getelementptr inbounds %struct.gpio_stm32_config, ptr %19, i32 0, i32 1, !dbg !1076
  %21 = load ptr, ptr %20, align 4, !dbg !1076
  store ptr %21, ptr %10, align 4, !dbg !1074
  call void @llvm.lifetime.start.p0(i64 4, ptr %11) #6, !dbg !1077
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1060, metadata !DIExpression()), !dbg !1078
  %22 = load i32, ptr %6, align 4, !dbg !1079
  %23 = call i32 @stm32_pinval_get(i32 noundef %22) #5, !dbg !1080
  store i32 %23, ptr %11, align 4, !dbg !1078
  call void @llvm.lifetime.start.p0(i64 4, ptr %12) #6, !dbg !1081
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1061, metadata !DIExpression()), !dbg !1082
  call void @llvm.lifetime.start.p0(i64 4, ptr %13) #6, !dbg !1081
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1062, metadata !DIExpression()), !dbg !1083
  call void @llvm.lifetime.start.p0(i64 4, ptr %14) #6, !dbg !1081
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1063, metadata !DIExpression()), !dbg !1084
  call void @llvm.lifetime.start.p0(i64 4, ptr %15) #6, !dbg !1081
  call void @llvm.dbg.declare(metadata ptr %15, metadata !1064, metadata !DIExpression()), !dbg !1085
  %24 = load i32, ptr %7, align 4, !dbg !1086
  %25 = and i32 %24, 48, !dbg !1087
  store i32 %25, ptr %12, align 4, !dbg !1088
  %26 = load i32, ptr %7, align 4, !dbg !1089
  %27 = and i32 %26, 64, !dbg !1090
  store i32 %27, ptr %13, align 4, !dbg !1091
  %28 = load i32, ptr %7, align 4, !dbg !1092
  %29 = and i32 %28, 384, !dbg !1093
  store i32 %29, ptr %14, align 4, !dbg !1094
  %30 = load i32, ptr %7, align 4, !dbg !1095
  %31 = and i32 %30, 1536, !dbg !1096
  store i32 %31, ptr %15, align 4, !dbg !1097
  call void @z_stm32_hsem_lock(i32 noundef 0, i32 noundef 1048576) #5, !dbg !1098
  %32 = load ptr, ptr %10, align 4, !dbg !1099
  %33 = load i32, ptr %11, align 4, !dbg !1100
  %34 = load i32, ptr %13, align 4, !dbg !1101
  %35 = lshr i32 %34, 6, !dbg !1102
  call void @LL_GPIO_SetPinOutputType(ptr noundef %32, i32 noundef %33, i32 noundef %35) #5, !dbg !1103
  %36 = load ptr, ptr %10, align 4, !dbg !1104
  %37 = load i32, ptr %11, align 4, !dbg !1105
  %38 = load i32, ptr %14, align 4, !dbg !1106
  %39 = lshr i32 %38, 7, !dbg !1107
  call void @LL_GPIO_SetPinSpeed(ptr noundef %36, i32 noundef %37, i32 noundef %39) #5, !dbg !1108
  %40 = load ptr, ptr %10, align 4, !dbg !1109
  %41 = load i32, ptr %11, align 4, !dbg !1110
  %42 = load i32, ptr %15, align 4, !dbg !1111
  %43 = lshr i32 %42, 9, !dbg !1112
  call void @LL_GPIO_SetPinPull(ptr noundef %40, i32 noundef %41, i32 noundef %43) #5, !dbg !1113
  %44 = load i32, ptr %12, align 4, !dbg !1114
  %45 = icmp eq i32 %44, 32, !dbg !1116
  br i1 %45, label %46, label %58, !dbg !1117

46:                                               ; preds = %4
  %47 = load i32, ptr %6, align 4, !dbg !1118
  %48 = icmp slt i32 %47, 8, !dbg !1121
  br i1 %48, label %49, label %53, !dbg !1122

49:                                               ; preds = %46
  %50 = load ptr, ptr %10, align 4, !dbg !1123
  %51 = load i32, ptr %11, align 4, !dbg !1125
  %52 = load i32, ptr %8, align 4, !dbg !1126
  call void @LL_GPIO_SetAFPin_0_7(ptr noundef %50, i32 noundef %51, i32 noundef %52) #5, !dbg !1127
  br label %57, !dbg !1128

53:                                               ; preds = %46
  %54 = load ptr, ptr %10, align 4, !dbg !1129
  %55 = load i32, ptr %11, align 4, !dbg !1131
  %56 = load i32, ptr %8, align 4, !dbg !1132
  call void @LL_GPIO_SetAFPin_8_15(ptr noundef %54, i32 noundef %55, i32 noundef %56) #5, !dbg !1133
  br label %57

57:                                               ; preds = %53, %49
  br label %58, !dbg !1134

58:                                               ; preds = %57, %4
  %59 = load ptr, ptr %10, align 4, !dbg !1135
  %60 = load i32, ptr %11, align 4, !dbg !1136
  %61 = load i32, ptr %12, align 4, !dbg !1137
  %62 = lshr i32 %61, 4, !dbg !1138
  call void @LL_GPIO_SetPinMode(ptr noundef %59, i32 noundef %60, i32 noundef %62) #5, !dbg !1139
  call void @z_stm32_hsem_unlock(i32 noundef 0) #5, !dbg !1140
  call void @llvm.lifetime.end.p0(i64 4, ptr %15) #6, !dbg !1141
  call void @llvm.lifetime.end.p0(i64 4, ptr %14) #6, !dbg !1141
  call void @llvm.lifetime.end.p0(i64 4, ptr %13) #6, !dbg !1141
  call void @llvm.lifetime.end.p0(i64 4, ptr %12) #6, !dbg !1141
  call void @llvm.lifetime.end.p0(i64 4, ptr %11) #6, !dbg !1141
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #6, !dbg !1141
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #6, !dbg !1141
  ret void, !dbg !1141
}

; Function Attrs: nounwind optsize
define internal i32 @gpio_stm32_port_set_bits_raw(ptr noundef %0, i32 noundef %1) #1 !dbg !1142 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1144, metadata !DIExpression()), !dbg !1148
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1145, metadata !DIExpression()), !dbg !1149
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #6, !dbg !1150
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1146, metadata !DIExpression()), !dbg !1151
  %7 = load ptr, ptr %3, align 4, !dbg !1152
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 1, !dbg !1153
  %9 = load ptr, ptr %8, align 4, !dbg !1153
  store ptr %9, ptr %5, align 4, !dbg !1151
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #6, !dbg !1154
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1147, metadata !DIExpression()), !dbg !1155
  %10 = load ptr, ptr %5, align 4, !dbg !1156
  %11 = getelementptr inbounds %struct.gpio_stm32_config, ptr %10, i32 0, i32 1, !dbg !1157
  %12 = load ptr, ptr %11, align 4, !dbg !1157
  store ptr %12, ptr %6, align 4, !dbg !1155
  %13 = load i32, ptr %4, align 4, !dbg !1158
  %14 = load ptr, ptr %6, align 4, !dbg !1159
  %15 = getelementptr inbounds %struct.GPIO_TypeDef, ptr %14, i32 0, i32 6, !dbg !1160
  store volatile i32 %13, ptr %15, align 4, !dbg !1161
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #6, !dbg !1162
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #6, !dbg !1162
  ret i32 0, !dbg !1163
}

; Function Attrs: nounwind optsize
define internal i32 @gpio_stm32_port_clear_bits_raw(ptr noundef %0, i32 noundef %1) #1 !dbg !1164 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1166, metadata !DIExpression()), !dbg !1170
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1167, metadata !DIExpression()), !dbg !1171
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #6, !dbg !1172
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1168, metadata !DIExpression()), !dbg !1173
  %7 = load ptr, ptr %3, align 4, !dbg !1174
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 1, !dbg !1175
  %9 = load ptr, ptr %8, align 4, !dbg !1175
  store ptr %9, ptr %5, align 4, !dbg !1173
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #6, !dbg !1176
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1169, metadata !DIExpression()), !dbg !1177
  %10 = load ptr, ptr %5, align 4, !dbg !1178
  %11 = getelementptr inbounds %struct.gpio_stm32_config, ptr %10, i32 0, i32 1, !dbg !1179
  %12 = load ptr, ptr %11, align 4, !dbg !1179
  store ptr %12, ptr %6, align 4, !dbg !1177
  %13 = load ptr, ptr %6, align 4, !dbg !1180
  %14 = load i32, ptr %4, align 4, !dbg !1181
  call void @LL_GPIO_ResetOutputPin(ptr noundef %13, i32 noundef %14) #5, !dbg !1182
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #6, !dbg !1183
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #6, !dbg !1183
  ret i32 0, !dbg !1184
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: inlinehint nounwind optsize
define internal i32 @pm_device_runtime_put(ptr noundef %0) #0 !dbg !1185 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1187, metadata !DIExpression()), !dbg !1188
  %3 = load ptr, ptr %2, align 4, !dbg !1189
  ret i32 0, !dbg !1190
}

; Function Attrs: nounwind optsize
define internal i32 @gpio_stm32_init(ptr noundef %0) #1 !dbg !1191 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1193, metadata !DIExpression()), !dbg !1197
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #6, !dbg !1198
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1194, metadata !DIExpression()), !dbg !1199
  %7 = load ptr, ptr %3, align 4, !dbg !1200
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 4, !dbg !1201
  %9 = load ptr, ptr %8, align 4, !dbg !1201
  store ptr %9, ptr %4, align 4, !dbg !1199
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #6, !dbg !1202
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1196, metadata !DIExpression()), !dbg !1203
  %10 = load ptr, ptr %3, align 4, !dbg !1204
  %11 = load ptr, ptr %4, align 4, !dbg !1205
  %12 = getelementptr inbounds %struct.gpio_stm32_data, ptr %11, i32 0, i32 1, !dbg !1206
  store ptr %10, ptr %12, align 4, !dbg !1207
  %13 = call zeroext i1 @device_is_ready(ptr noundef @__device_dts_ord_9) #5, !dbg !1208
  br i1 %13, label %15, label %14, !dbg !1210

14:                                               ; preds = %1
  store i32 -19, ptr %2, align 4, !dbg !1211
  store i32 1, ptr %6, align 4
  br label %26, !dbg !1211

15:                                               ; preds = %1
  %16 = load ptr, ptr %3, align 4, !dbg !1213
  %17 = call i32 @gpio_stm32_clock_request(ptr noundef %16, i1 noundef zeroext true) #5, !dbg !1214
  store i32 %17, ptr %5, align 4, !dbg !1215
  %18 = load i32, ptr %5, align 4, !dbg !1216
  %19 = icmp slt i32 %18, 0, !dbg !1218
  br i1 %19, label %20, label %22, !dbg !1219

20:                                               ; preds = %15
  %21 = load i32, ptr %5, align 4, !dbg !1220
  store i32 %21, ptr %2, align 4, !dbg !1222
  store i32 1, ptr %6, align 4
  br label %26, !dbg !1222

22:                                               ; preds = %15
  %23 = load ptr, ptr %3, align 4, !dbg !1223
  call void @pm_device_init_suspended(ptr noundef %23) #5, !dbg !1224
  %24 = load ptr, ptr %3, align 4, !dbg !1225
  %25 = call i32 @pm_device_runtime_enable(ptr noundef %24) #5, !dbg !1226
  store i32 0, ptr %2, align 4, !dbg !1227
  store i32 1, ptr %6, align 4
  br label %26, !dbg !1227

26:                                               ; preds = %22, %20, %14
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #6, !dbg !1228
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #6, !dbg !1228
  %27 = load i32, ptr %2, align 4, !dbg !1228
  ret i32 %27, !dbg !1228
}

; Function Attrs: optsize
declare !dbg !1229 dso_local i64 @z_timeout_expires(ptr noundef) #4

; Function Attrs: optsize
declare !dbg !1234 dso_local i64 @z_timeout_remaining(ptr noundef) #4

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @sys_sflist_is_empty(ptr noundef %0) #0 !dbg !1235 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1240, metadata !DIExpression()), !dbg !1241
  %3 = load ptr, ptr %2, align 4, !dbg !1242
  %4 = call ptr @sys_sflist_peek_head(ptr noundef %3) #5, !dbg !1243
  %5 = icmp eq ptr %4, null, !dbg !1244
  ret i1 %5, !dbg !1245
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @sys_sflist_peek_head(ptr noundef %0) #0 !dbg !1246 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1250, metadata !DIExpression()), !dbg !1251
  %3 = load ptr, ptr %2, align 4, !dbg !1252
  %4 = getelementptr inbounds %struct._sflist, ptr %3, i32 0, i32 0, !dbg !1253
  %5 = load ptr, ptr %4, align 4, !dbg !1253
  ret ptr %5, !dbg !1254
}

; Function Attrs: optsize
declare !dbg !1255 dso_local zeroext i1 @z_device_is_ready(ptr noundef) #4

; Function Attrs: inlinehint nounwind optsize
define internal i32 @stm32_pinval_get(i32 noundef %0) #0 !dbg !1256 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1260, metadata !DIExpression()), !dbg !1262
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #6, !dbg !1263
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1261, metadata !DIExpression()), !dbg !1264
  %4 = load i32, ptr %2, align 4, !dbg !1265
  %5 = shl i32 1, %4, !dbg !1266
  store i32 %5, ptr %3, align 4, !dbg !1267
  %6 = load i32, ptr %3, align 4, !dbg !1268
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #6, !dbg !1269
  ret i32 %6, !dbg !1270
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_stm32_hsem_lock(i32 noundef %0, i32 noundef %1) #0 !dbg !1271 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1276, metadata !DIExpression()), !dbg !1278
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1277, metadata !DIExpression()), !dbg !1279
  ret void, !dbg !1280
}

; Function Attrs: inlinehint nounwind optsize
define internal void @LL_GPIO_SetPinOutputType(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 !dbg !1281 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1286, metadata !DIExpression()), !dbg !1289
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1287, metadata !DIExpression()), !dbg !1290
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1288, metadata !DIExpression()), !dbg !1291
  %7 = load ptr, ptr %4, align 4, !dbg !1292
  %8 = getelementptr inbounds %struct.GPIO_TypeDef, ptr %7, i32 0, i32 1, !dbg !1293
  %9 = load volatile i32, ptr %8, align 4, !dbg !1293
  %10 = load i32, ptr %5, align 4, !dbg !1294
  %11 = xor i32 %10, -1, !dbg !1295
  %12 = and i32 %9, %11, !dbg !1296
  %13 = load i32, ptr %5, align 4, !dbg !1297
  %14 = load i32, ptr %6, align 4, !dbg !1298
  %15 = mul i32 %13, %14, !dbg !1299
  %16 = or i32 %12, %15, !dbg !1300
  %17 = load ptr, ptr %4, align 4, !dbg !1301
  %18 = getelementptr inbounds %struct.GPIO_TypeDef, ptr %17, i32 0, i32 1, !dbg !1302
  store volatile i32 %16, ptr %18, align 4, !dbg !1303
  ret void, !dbg !1304
}

; Function Attrs: inlinehint nounwind optsize
define internal void @LL_GPIO_SetPinSpeed(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 !dbg !1305 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1307, metadata !DIExpression()), !dbg !1310
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1308, metadata !DIExpression()), !dbg !1311
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1309, metadata !DIExpression()), !dbg !1312
  %7 = load ptr, ptr %4, align 4, !dbg !1313
  %8 = getelementptr inbounds %struct.GPIO_TypeDef, ptr %7, i32 0, i32 2, !dbg !1314
  %9 = load volatile i32, ptr %8, align 4, !dbg !1314
  %10 = load i32, ptr %5, align 4, !dbg !1315
  %11 = load i32, ptr %5, align 4, !dbg !1316
  %12 = mul i32 %10, %11, !dbg !1317
  %13 = mul i32 %12, 3, !dbg !1318
  %14 = xor i32 %13, -1, !dbg !1319
  %15 = and i32 %9, %14, !dbg !1320
  %16 = load i32, ptr %5, align 4, !dbg !1321
  %17 = load i32, ptr %5, align 4, !dbg !1322
  %18 = mul i32 %16, %17, !dbg !1323
  %19 = load i32, ptr %6, align 4, !dbg !1324
  %20 = mul i32 %18, %19, !dbg !1325
  %21 = or i32 %15, %20, !dbg !1326
  %22 = load ptr, ptr %4, align 4, !dbg !1327
  %23 = getelementptr inbounds %struct.GPIO_TypeDef, ptr %22, i32 0, i32 2, !dbg !1328
  store volatile i32 %21, ptr %23, align 4, !dbg !1329
  ret void, !dbg !1330
}

; Function Attrs: inlinehint nounwind optsize
define internal void @LL_GPIO_SetPinPull(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 !dbg !1331 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1333, metadata !DIExpression()), !dbg !1336
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1334, metadata !DIExpression()), !dbg !1337
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1335, metadata !DIExpression()), !dbg !1338
  %7 = load ptr, ptr %4, align 4, !dbg !1339
  %8 = getelementptr inbounds %struct.GPIO_TypeDef, ptr %7, i32 0, i32 3, !dbg !1340
  %9 = load volatile i32, ptr %8, align 4, !dbg !1340
  %10 = load i32, ptr %5, align 4, !dbg !1341
  %11 = load i32, ptr %5, align 4, !dbg !1342
  %12 = mul i32 %10, %11, !dbg !1343
  %13 = mul i32 %12, 3, !dbg !1344
  %14 = xor i32 %13, -1, !dbg !1345
  %15 = and i32 %9, %14, !dbg !1346
  %16 = load i32, ptr %5, align 4, !dbg !1347
  %17 = load i32, ptr %5, align 4, !dbg !1348
  %18 = mul i32 %16, %17, !dbg !1349
  %19 = load i32, ptr %6, align 4, !dbg !1350
  %20 = mul i32 %18, %19, !dbg !1351
  %21 = or i32 %15, %20, !dbg !1352
  %22 = load ptr, ptr %4, align 4, !dbg !1353
  %23 = getelementptr inbounds %struct.GPIO_TypeDef, ptr %22, i32 0, i32 3, !dbg !1354
  store volatile i32 %21, ptr %23, align 4, !dbg !1355
  ret void, !dbg !1356
}

; Function Attrs: inlinehint nounwind optsize
define internal void @LL_GPIO_SetAFPin_0_7(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 !dbg !1357 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1359, metadata !DIExpression()), !dbg !1362
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1360, metadata !DIExpression()), !dbg !1363
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1361, metadata !DIExpression()), !dbg !1364
  %7 = load ptr, ptr %4, align 4, !dbg !1365
  %8 = getelementptr inbounds %struct.GPIO_TypeDef, ptr %7, i32 0, i32 8, !dbg !1366
  %9 = getelementptr inbounds [2 x i32], ptr %8, i32 0, i32 0, !dbg !1365
  %10 = load volatile i32, ptr %9, align 4, !dbg !1365
  %11 = load i32, ptr %5, align 4, !dbg !1367
  %12 = load i32, ptr %5, align 4, !dbg !1368
  %13 = mul i32 %11, %12, !dbg !1369
  %14 = load i32, ptr %5, align 4, !dbg !1370
  %15 = mul i32 %13, %14, !dbg !1371
  %16 = load i32, ptr %5, align 4, !dbg !1372
  %17 = mul i32 %15, %16, !dbg !1373
  %18 = mul i32 %17, 15, !dbg !1374
  %19 = xor i32 %18, -1, !dbg !1375
  %20 = and i32 %10, %19, !dbg !1376
  %21 = load i32, ptr %5, align 4, !dbg !1377
  %22 = load i32, ptr %5, align 4, !dbg !1378
  %23 = mul i32 %21, %22, !dbg !1379
  %24 = load i32, ptr %5, align 4, !dbg !1380
  %25 = mul i32 %23, %24, !dbg !1381
  %26 = load i32, ptr %5, align 4, !dbg !1382
  %27 = mul i32 %25, %26, !dbg !1383
  %28 = load i32, ptr %6, align 4, !dbg !1384
  %29 = mul i32 %27, %28, !dbg !1385
  %30 = or i32 %20, %29, !dbg !1386
  %31 = load ptr, ptr %4, align 4, !dbg !1387
  %32 = getelementptr inbounds %struct.GPIO_TypeDef, ptr %31, i32 0, i32 8, !dbg !1388
  %33 = getelementptr inbounds [2 x i32], ptr %32, i32 0, i32 0, !dbg !1387
  store volatile i32 %30, ptr %33, align 4, !dbg !1389
  ret void, !dbg !1390
}

; Function Attrs: inlinehint nounwind optsize
define internal void @LL_GPIO_SetAFPin_8_15(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 !dbg !1391 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1393, metadata !DIExpression()), !dbg !1396
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1394, metadata !DIExpression()), !dbg !1397
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1395, metadata !DIExpression()), !dbg !1398
  %7 = load ptr, ptr %4, align 4, !dbg !1399
  %8 = getelementptr inbounds %struct.GPIO_TypeDef, ptr %7, i32 0, i32 8, !dbg !1400
  %9 = getelementptr inbounds [2 x i32], ptr %8, i32 0, i32 1, !dbg !1399
  %10 = load volatile i32, ptr %9, align 4, !dbg !1399
  %11 = load i32, ptr %5, align 4, !dbg !1401
  %12 = lshr i32 %11, 8, !dbg !1402
  %13 = load i32, ptr %5, align 4, !dbg !1403
  %14 = lshr i32 %13, 8, !dbg !1404
  %15 = mul i32 %12, %14, !dbg !1405
  %16 = load i32, ptr %5, align 4, !dbg !1406
  %17 = lshr i32 %16, 8, !dbg !1407
  %18 = mul i32 %15, %17, !dbg !1408
  %19 = load i32, ptr %5, align 4, !dbg !1409
  %20 = lshr i32 %19, 8, !dbg !1410
  %21 = mul i32 %18, %20, !dbg !1411
  %22 = mul i32 %21, 15, !dbg !1412
  %23 = xor i32 %22, -1, !dbg !1413
  %24 = and i32 %10, %23, !dbg !1414
  %25 = load i32, ptr %5, align 4, !dbg !1415
  %26 = lshr i32 %25, 8, !dbg !1416
  %27 = load i32, ptr %5, align 4, !dbg !1417
  %28 = lshr i32 %27, 8, !dbg !1418
  %29 = mul i32 %26, %28, !dbg !1419
  %30 = load i32, ptr %5, align 4, !dbg !1420
  %31 = lshr i32 %30, 8, !dbg !1421
  %32 = mul i32 %29, %31, !dbg !1422
  %33 = load i32, ptr %5, align 4, !dbg !1423
  %34 = lshr i32 %33, 8, !dbg !1424
  %35 = mul i32 %32, %34, !dbg !1425
  %36 = load i32, ptr %6, align 4, !dbg !1426
  %37 = mul i32 %35, %36, !dbg !1427
  %38 = or i32 %24, %37, !dbg !1428
  %39 = load ptr, ptr %4, align 4, !dbg !1429
  %40 = getelementptr inbounds %struct.GPIO_TypeDef, ptr %39, i32 0, i32 8, !dbg !1430
  %41 = getelementptr inbounds [2 x i32], ptr %40, i32 0, i32 1, !dbg !1429
  store volatile i32 %38, ptr %41, align 4, !dbg !1431
  ret void, !dbg !1432
}

; Function Attrs: inlinehint nounwind optsize
define internal void @LL_GPIO_SetPinMode(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 !dbg !1433 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1435, metadata !DIExpression()), !dbg !1438
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1436, metadata !DIExpression()), !dbg !1439
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1437, metadata !DIExpression()), !dbg !1440
  %7 = load ptr, ptr %4, align 4, !dbg !1441
  %8 = getelementptr inbounds %struct.GPIO_TypeDef, ptr %7, i32 0, i32 0, !dbg !1442
  %9 = load volatile i32, ptr %8, align 4, !dbg !1442
  %10 = load i32, ptr %5, align 4, !dbg !1443
  %11 = load i32, ptr %5, align 4, !dbg !1444
  %12 = mul i32 %10, %11, !dbg !1445
  %13 = mul i32 %12, 3, !dbg !1446
  %14 = xor i32 %13, -1, !dbg !1447
  %15 = and i32 %9, %14, !dbg !1448
  %16 = load i32, ptr %5, align 4, !dbg !1449
  %17 = load i32, ptr %5, align 4, !dbg !1450
  %18 = mul i32 %16, %17, !dbg !1451
  %19 = load i32, ptr %6, align 4, !dbg !1452
  %20 = mul i32 %18, %19, !dbg !1453
  %21 = or i32 %15, %20, !dbg !1454
  %22 = load ptr, ptr %4, align 4, !dbg !1455
  %23 = getelementptr inbounds %struct.GPIO_TypeDef, ptr %22, i32 0, i32 0, !dbg !1456
  store volatile i32 %21, ptr %23, align 4, !dbg !1457
  ret void, !dbg !1458
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_stm32_hsem_unlock(i32 noundef %0) #0 !dbg !1459 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1463, metadata !DIExpression()), !dbg !1464
  ret void, !dbg !1465
}

; Function Attrs: inlinehint nounwind optsize
define internal void @LL_GPIO_ResetOutputPin(ptr noundef %0, i32 noundef %1) #0 !dbg !1466 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1470, metadata !DIExpression()), !dbg !1472
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1471, metadata !DIExpression()), !dbg !1473
  %5 = load i32, ptr %4, align 4, !dbg !1474
  %6 = load ptr, ptr %3, align 4, !dbg !1475
  %7 = getelementptr inbounds %struct.GPIO_TypeDef, ptr %6, i32 0, i32 9, !dbg !1476
  store volatile i32 %5, ptr %7, align 4, !dbg !1477
  ret void, !dbg !1478
}

; Function Attrs: nounwind optsize
define internal i32 @gpio_stm32_config(ptr noundef %0, i8 noundef zeroext %1, i32 noundef %2) #1 !dbg !1479 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store ptr %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1481, metadata !DIExpression()), !dbg !1486
  store i8 %1, ptr %6, align 1
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1482, metadata !DIExpression()), !dbg !1487
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1483, metadata !DIExpression()), !dbg !1488
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #6, !dbg !1489
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1484, metadata !DIExpression()), !dbg !1490
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #6, !dbg !1491
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1485, metadata !DIExpression()), !dbg !1492
  %11 = load i32, ptr %7, align 4, !dbg !1493
  %12 = call i32 @gpio_stm32_flags_to_conf(i32 noundef %11, ptr noundef %9) #5, !dbg !1494
  store i32 %12, ptr %8, align 4, !dbg !1495
  %13 = load i32, ptr %8, align 4, !dbg !1496
  %14 = icmp ne i32 %13, 0, !dbg !1498
  br i1 %14, label %15, label %17, !dbg !1499

15:                                               ; preds = %3
  %16 = load i32, ptr %8, align 4, !dbg !1500
  store i32 %16, ptr %4, align 4, !dbg !1502
  store i32 1, ptr %10, align 4
  br label %71, !dbg !1502

17:                                               ; preds = %3
  %18 = load ptr, ptr %5, align 4, !dbg !1503
  %19 = call i32 @pm_device_runtime_get(ptr noundef %18) #5, !dbg !1504
  store i32 %19, ptr %8, align 4, !dbg !1505
  %20 = load i32, ptr %8, align 4, !dbg !1506
  %21 = icmp slt i32 %20, 0, !dbg !1508
  br i1 %21, label %22, label %24, !dbg !1509

22:                                               ; preds = %17
  %23 = load i32, ptr %8, align 4, !dbg !1510
  store i32 %23, ptr %4, align 4, !dbg !1512
  store i32 1, ptr %10, align 4
  br label %71, !dbg !1512

24:                                               ; preds = %17
  %25 = load i32, ptr %7, align 4, !dbg !1513
  %26 = and i32 %25, 131072, !dbg !1515
  %27 = icmp ne i32 %26, 0, !dbg !1516
  br i1 %27, label %28, label %50, !dbg !1517

28:                                               ; preds = %24
  %29 = load i32, ptr %7, align 4, !dbg !1518
  %30 = and i32 %29, 524288, !dbg !1521
  %31 = icmp ne i32 %30, 0, !dbg !1522
  br i1 %31, label %32, label %38, !dbg !1523

32:                                               ; preds = %28
  %33 = load ptr, ptr %5, align 4, !dbg !1524
  %34 = load i8, ptr %6, align 1, !dbg !1526
  %35 = zext i8 %34 to i32, !dbg !1527
  %36 = shl i32 1, %35, !dbg !1528
  %37 = call i32 @gpio_stm32_port_set_bits_raw(ptr noundef %33, i32 noundef %36) #5, !dbg !1529
  br label %49, !dbg !1530

38:                                               ; preds = %28
  %39 = load i32, ptr %7, align 4, !dbg !1531
  %40 = and i32 %39, 262144, !dbg !1533
  %41 = icmp ne i32 %40, 0, !dbg !1534
  br i1 %41, label %42, label %48, !dbg !1535

42:                                               ; preds = %38
  %43 = load ptr, ptr %5, align 4, !dbg !1536
  %44 = load i8, ptr %6, align 1, !dbg !1538
  %45 = zext i8 %44 to i32, !dbg !1539
  %46 = shl i32 1, %45, !dbg !1540
  %47 = call i32 @gpio_stm32_port_clear_bits_raw(ptr noundef %43, i32 noundef %46) #5, !dbg !1541
  br label %48, !dbg !1542

48:                                               ; preds = %42, %38
  br label %49

49:                                               ; preds = %48, %32
  br label %50, !dbg !1543

50:                                               ; preds = %49, %24
  %51 = load ptr, ptr %5, align 4, !dbg !1544
  %52 = load i8, ptr %6, align 1, !dbg !1545
  %53 = zext i8 %52 to i32, !dbg !1545
  %54 = load i32, ptr %9, align 4, !dbg !1546
  call void @gpio_stm32_configure_raw(ptr noundef %51, i32 noundef %53, i32 noundef %54, i32 noundef 0) #5, !dbg !1547
  %55 = load i32, ptr %7, align 4, !dbg !1548
  %56 = and i32 %55, 131072, !dbg !1550
  %57 = icmp eq i32 %56, 0, !dbg !1551
  br i1 %57, label %58, label %70, !dbg !1552

58:                                               ; preds = %50
  %59 = load i32, ptr %7, align 4, !dbg !1553
  %60 = and i32 %59, 65536, !dbg !1554
  %61 = icmp eq i32 %60, 0, !dbg !1555
  br i1 %61, label %62, label %70, !dbg !1556

62:                                               ; preds = %58
  %63 = load ptr, ptr %5, align 4, !dbg !1557
  %64 = call i32 @pm_device_runtime_put(ptr noundef %63) #5, !dbg !1559
  store i32 %64, ptr %8, align 4, !dbg !1560
  %65 = load i32, ptr %8, align 4, !dbg !1561
  %66 = icmp slt i32 %65, 0, !dbg !1563
  br i1 %66, label %67, label %69, !dbg !1564

67:                                               ; preds = %62
  %68 = load i32, ptr %8, align 4, !dbg !1565
  store i32 %68, ptr %4, align 4, !dbg !1567
  store i32 1, ptr %10, align 4
  br label %71, !dbg !1567

69:                                               ; preds = %62
  br label %70, !dbg !1568

70:                                               ; preds = %69, %58, %50
  store i32 0, ptr %4, align 4, !dbg !1569
  store i32 1, ptr %10, align 4
  br label %71, !dbg !1569

71:                                               ; preds = %70, %67, %22, %15
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #6, !dbg !1570
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #6, !dbg !1570
  %72 = load i32, ptr %4, align 4, !dbg !1570
  ret i32 %72, !dbg !1570
}

; Function Attrs: nounwind optsize
define internal i32 @gpio_stm32_port_get_raw(ptr noundef %0, ptr noundef %1) #1 !dbg !1571 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1575, metadata !DIExpression()), !dbg !1579
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1576, metadata !DIExpression()), !dbg !1580
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #6, !dbg !1581
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1577, metadata !DIExpression()), !dbg !1582
  %7 = load ptr, ptr %3, align 4, !dbg !1583
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 1, !dbg !1584
  %9 = load ptr, ptr %8, align 4, !dbg !1584
  store ptr %9, ptr %5, align 4, !dbg !1582
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #6, !dbg !1585
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1578, metadata !DIExpression()), !dbg !1586
  %10 = load ptr, ptr %5, align 4, !dbg !1587
  %11 = getelementptr inbounds %struct.gpio_stm32_config, ptr %10, i32 0, i32 1, !dbg !1588
  %12 = load ptr, ptr %11, align 4, !dbg !1588
  store ptr %12, ptr %6, align 4, !dbg !1586
  %13 = load ptr, ptr %6, align 4, !dbg !1589
  %14 = call i32 @LL_GPIO_ReadInputPort(ptr noundef %13) #5, !dbg !1590
  %15 = load ptr, ptr %4, align 4, !dbg !1591
  store i32 %14, ptr %15, align 4, !dbg !1592
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #6, !dbg !1593
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #6, !dbg !1593
  ret i32 0, !dbg !1594
}

; Function Attrs: nounwind optsize
define internal i32 @gpio_stm32_port_set_masked_raw(ptr noundef %0, i32 noundef %1, i32 noundef %2) #1 !dbg !1595 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1597, metadata !DIExpression()), !dbg !1603
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1598, metadata !DIExpression()), !dbg !1604
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1599, metadata !DIExpression()), !dbg !1605
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #6, !dbg !1606
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1600, metadata !DIExpression()), !dbg !1607
  %10 = load ptr, ptr %4, align 4, !dbg !1608
  %11 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 1, !dbg !1609
  %12 = load ptr, ptr %11, align 4, !dbg !1609
  store ptr %12, ptr %7, align 4, !dbg !1607
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #6, !dbg !1610
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1601, metadata !DIExpression()), !dbg !1611
  %13 = load ptr, ptr %7, align 4, !dbg !1612
  %14 = getelementptr inbounds %struct.gpio_stm32_config, ptr %13, i32 0, i32 1, !dbg !1613
  %15 = load ptr, ptr %14, align 4, !dbg !1613
  store ptr %15, ptr %8, align 4, !dbg !1611
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #6, !dbg !1614
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1602, metadata !DIExpression()), !dbg !1615
  call void @z_stm32_hsem_lock(i32 noundef 0, i32 noundef 1048576) #5, !dbg !1616
  %16 = load ptr, ptr %8, align 4, !dbg !1617
  %17 = call i32 @LL_GPIO_ReadOutputPort(ptr noundef %16) #5, !dbg !1618
  store i32 %17, ptr %9, align 4, !dbg !1619
  %18 = load ptr, ptr %8, align 4, !dbg !1620
  %19 = load i32, ptr %9, align 4, !dbg !1621
  %20 = load i32, ptr %5, align 4, !dbg !1622
  %21 = xor i32 %20, -1, !dbg !1623
  %22 = and i32 %19, %21, !dbg !1624
  %23 = load i32, ptr %5, align 4, !dbg !1625
  %24 = load i32, ptr %6, align 4, !dbg !1626
  %25 = and i32 %23, %24, !dbg !1627
  %26 = or i32 %22, %25, !dbg !1628
  call void @LL_GPIO_WriteOutputPort(ptr noundef %18, i32 noundef %26) #5, !dbg !1629
  call void @z_stm32_hsem_unlock(i32 noundef 0) #5, !dbg !1630
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #6, !dbg !1631
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #6, !dbg !1631
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #6, !dbg !1631
  ret i32 0, !dbg !1632
}

; Function Attrs: nounwind optsize
define internal i32 @gpio_stm32_port_toggle_bits(ptr noundef %0, i32 noundef %1) #1 !dbg !1633 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1635, metadata !DIExpression()), !dbg !1639
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1636, metadata !DIExpression()), !dbg !1640
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #6, !dbg !1641
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1637, metadata !DIExpression()), !dbg !1642
  %7 = load ptr, ptr %3, align 4, !dbg !1643
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 1, !dbg !1644
  %9 = load ptr, ptr %8, align 4, !dbg !1644
  store ptr %9, ptr %5, align 4, !dbg !1642
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #6, !dbg !1645
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1638, metadata !DIExpression()), !dbg !1646
  %10 = load ptr, ptr %5, align 4, !dbg !1647
  %11 = getelementptr inbounds %struct.gpio_stm32_config, ptr %10, i32 0, i32 1, !dbg !1648
  %12 = load ptr, ptr %11, align 4, !dbg !1648
  store ptr %12, ptr %6, align 4, !dbg !1646
  call void @z_stm32_hsem_lock(i32 noundef 0, i32 noundef 1048576) #5, !dbg !1649
  %13 = load ptr, ptr %6, align 4, !dbg !1650
  %14 = getelementptr inbounds %struct.GPIO_TypeDef, ptr %13, i32 0, i32 5, !dbg !1651
  %15 = load volatile i32, ptr %14, align 4, !dbg !1651
  %16 = load i32, ptr %4, align 4, !dbg !1652
  %17 = xor i32 %15, %16, !dbg !1653
  %18 = load ptr, ptr %6, align 4, !dbg !1654
  %19 = getelementptr inbounds %struct.GPIO_TypeDef, ptr %18, i32 0, i32 5, !dbg !1655
  store volatile i32 %17, ptr %19, align 4, !dbg !1656
  call void @z_stm32_hsem_unlock(i32 noundef 0) #5, !dbg !1657
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #6, !dbg !1658
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #6, !dbg !1658
  ret i32 0, !dbg !1659
}

; Function Attrs: nounwind optsize
define internal i32 @gpio_stm32_pin_interrupt_configure(ptr noundef %0, i8 noundef zeroext %1, i32 noundef %2, i32 noundef %3) #1 !dbg !1660 {
  %5 = alloca ptr, align 4
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store ptr %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1662, metadata !DIExpression()), !dbg !1671
  store i8 %1, ptr %6, align 1
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1663, metadata !DIExpression()), !dbg !1672
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1664, metadata !DIExpression()), !dbg !1673
  store i32 %3, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1665, metadata !DIExpression()), !dbg !1674
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #6, !dbg !1675
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1666, metadata !DIExpression()), !dbg !1676
  %13 = load ptr, ptr %5, align 4, !dbg !1677
  %14 = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 1, !dbg !1678
  %15 = load ptr, ptr %14, align 4, !dbg !1678
  store ptr %15, ptr %9, align 4, !dbg !1676
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #6, !dbg !1679
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1667, metadata !DIExpression()), !dbg !1680
  %16 = load ptr, ptr %5, align 4, !dbg !1681
  %17 = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 4, !dbg !1682
  %18 = load ptr, ptr %17, align 4, !dbg !1682
  store ptr %18, ptr %10, align 4, !dbg !1680
  call void @llvm.lifetime.start.p0(i64 4, ptr %11) #6, !dbg !1683
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1668, metadata !DIExpression()), !dbg !1684
  store i32 0, ptr %11, align 4, !dbg !1684
  call void @llvm.lifetime.start.p0(i64 4, ptr %12) #6, !dbg !1685
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1669, metadata !DIExpression()), !dbg !1686
  store i32 0, ptr %12, align 4, !dbg !1686
  %19 = load i32, ptr %7, align 4, !dbg !1687
  %20 = icmp eq i32 %19, 2097152, !dbg !1689
  br i1 %20, label %21, label %37, !dbg !1690

21:                                               ; preds = %4
  %22 = load i8, ptr %6, align 1, !dbg !1691
  %23 = zext i8 %22 to i32, !dbg !1691
  %24 = call i32 @gpio_stm32_get_exti_source(i32 noundef %23) #5, !dbg !1694
  %25 = load ptr, ptr %9, align 4, !dbg !1695
  %26 = getelementptr inbounds %struct.gpio_stm32_config, ptr %25, i32 0, i32 2, !dbg !1696
  %27 = load i32, ptr %26, align 4, !dbg !1696
  %28 = icmp eq i32 %24, %27, !dbg !1697
  br i1 %28, label %29, label %36, !dbg !1698

29:                                               ; preds = %21
  %30 = load i8, ptr %6, align 1, !dbg !1699
  %31 = zext i8 %30 to i32, !dbg !1699
  call void @stm32_exti_disable(i32 noundef %31) #5, !dbg !1701
  %32 = load i8, ptr %6, align 1, !dbg !1702
  %33 = zext i8 %32 to i32, !dbg !1702
  call void @stm32_exti_unset_callback(i32 noundef %33) #5, !dbg !1703
  %34 = load i8, ptr %6, align 1, !dbg !1704
  %35 = zext i8 %34 to i32, !dbg !1704
  call void @stm32_exti_trigger(i32 noundef %35, i32 noundef 0) #5, !dbg !1705
  br label %36, !dbg !1706

36:                                               ; preds = %29, %21
  br label %65, !dbg !1707

37:                                               ; preds = %4
  %38 = load i32, ptr %7, align 4, !dbg !1708
  %39 = icmp eq i32 %38, 4194304, !dbg !1710
  br i1 %39, label %40, label %41, !dbg !1711

40:                                               ; preds = %37
  store i32 -134, ptr %12, align 4, !dbg !1712
  br label %65, !dbg !1714

41:                                               ; preds = %37
  %42 = load i8, ptr %6, align 1, !dbg !1715
  %43 = zext i8 %42 to i32, !dbg !1715
  %44 = load ptr, ptr %10, align 4, !dbg !1717
  %45 = call i32 @stm32_exti_set_callback(i32 noundef %43, ptr noundef @gpio_stm32_isr, ptr noundef %44) #5, !dbg !1718
  %46 = icmp ne i32 %45, 0, !dbg !1719
  br i1 %46, label %47, label %48, !dbg !1720

47:                                               ; preds = %41
  store i32 -16, ptr %12, align 4, !dbg !1721
  br label %65, !dbg !1723

48:                                               ; preds = %41
  %49 = load ptr, ptr %9, align 4, !dbg !1724
  %50 = getelementptr inbounds %struct.gpio_stm32_config, ptr %49, i32 0, i32 2, !dbg !1725
  %51 = load i32, ptr %50, align 4, !dbg !1725
  %52 = load i8, ptr %6, align 1, !dbg !1726
  %53 = zext i8 %52 to i32, !dbg !1726
  %54 = call i32 @gpio_stm32_enable_int(i32 noundef %51, i32 noundef %53) #5, !dbg !1727
  %55 = load i32, ptr %8, align 4, !dbg !1728
  switch i32 %55, label %59 [
    i32 33554432, label %56
    i32 67108864, label %57
    i32 100663296, label %58
  ], !dbg !1729

56:                                               ; preds = %48
  store i32 2, ptr %11, align 4, !dbg !1730
  br label %59, !dbg !1732

57:                                               ; preds = %48
  store i32 1, ptr %11, align 4, !dbg !1733
  br label %59, !dbg !1734

58:                                               ; preds = %48
  store i32 3, ptr %11, align 4, !dbg !1735
  br label %59, !dbg !1736

59:                                               ; preds = %48, %58, %57, %56
  %60 = load i8, ptr %6, align 1, !dbg !1737
  %61 = zext i8 %60 to i32, !dbg !1737
  %62 = load i32, ptr %11, align 4, !dbg !1738
  call void @stm32_exti_trigger(i32 noundef %61, i32 noundef %62) #5, !dbg !1739
  %63 = load i8, ptr %6, align 1, !dbg !1740
  %64 = zext i8 %63 to i32, !dbg !1740
  call void @stm32_exti_enable(i32 noundef %64) #5, !dbg !1741
  br label %65, !dbg !1741

65:                                               ; preds = %59, %47, %40, %36
  call void @llvm.dbg.label(metadata !1670), !dbg !1742
  %66 = load i32, ptr %12, align 4, !dbg !1743
  call void @llvm.lifetime.end.p0(i64 4, ptr %12) #6, !dbg !1744
  call void @llvm.lifetime.end.p0(i64 4, ptr %11) #6, !dbg !1744
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #6, !dbg !1744
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #6, !dbg !1744
  ret i32 %66, !dbg !1745
}

; Function Attrs: nounwind optsize
define internal i32 @gpio_stm32_manage_callback(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) #1 !dbg !1746 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i8, align 1
  %7 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1748, metadata !DIExpression()), !dbg !1752
  store ptr %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1749, metadata !DIExpression()), !dbg !1753
  %8 = zext i1 %2 to i8
  store i8 %8, ptr %6, align 1
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1750, metadata !DIExpression()), !dbg !1754
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #6, !dbg !1755
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1751, metadata !DIExpression()), !dbg !1756
  %9 = load ptr, ptr %4, align 4, !dbg !1757
  %10 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 4, !dbg !1758
  %11 = load ptr, ptr %10, align 4, !dbg !1758
  store ptr %11, ptr %7, align 4, !dbg !1756
  %12 = load ptr, ptr %7, align 4, !dbg !1759
  %13 = getelementptr inbounds %struct.gpio_stm32_data, ptr %12, i32 0, i32 2, !dbg !1760
  %14 = load ptr, ptr %5, align 4, !dbg !1761
  %15 = load i8, ptr %6, align 1, !dbg !1762, !range !1763, !noundef !522
  %16 = trunc i8 %15 to i1, !dbg !1762
  %17 = call i32 @gpio_manage_callback(ptr noundef %13, ptr noundef %14, i1 noundef zeroext %16) #5, !dbg !1764
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #6, !dbg !1765
  ret i32 %17, !dbg !1766
}

; Function Attrs: nounwind optsize
define internal i32 @gpio_stm32_flags_to_conf(i32 noundef %0, ptr noundef %1) #1 !dbg !1767 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  store i32 %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1772, metadata !DIExpression()), !dbg !1774
  store ptr %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1773, metadata !DIExpression()), !dbg !1775
  %6 = load i32, ptr %4, align 4, !dbg !1776
  %7 = and i32 %6, 131072, !dbg !1778
  %8 = icmp ne i32 %7, 0, !dbg !1779
  br i1 %8, label %9, label %46, !dbg !1780

9:                                                ; preds = %2
  %10 = load ptr, ptr %5, align 4, !dbg !1781
  store i32 16, ptr %10, align 4, !dbg !1783
  %11 = load i32, ptr %4, align 4, !dbg !1784
  %12 = and i32 %11, 2, !dbg !1786
  %13 = icmp ne i32 %12, 0, !dbg !1787
  br i1 %13, label %14, label %24, !dbg !1788

14:                                               ; preds = %9
  %15 = load i32, ptr %4, align 4, !dbg !1789
  %16 = and i32 %15, 4, !dbg !1792
  %17 = icmp ne i32 %16, 0, !dbg !1792
  br i1 %17, label %18, label %22, !dbg !1793

18:                                               ; preds = %14
  %19 = load ptr, ptr %5, align 4, !dbg !1794
  %20 = load i32, ptr %19, align 4, !dbg !1796
  %21 = or i32 %20, 64, !dbg !1796
  store i32 %21, ptr %19, align 4, !dbg !1796
  br label %23, !dbg !1797

22:                                               ; preds = %14
  store i32 -134, ptr %3, align 4, !dbg !1798
  br label %77, !dbg !1798

23:                                               ; preds = %18
  br label %28, !dbg !1800

24:                                               ; preds = %9
  %25 = load ptr, ptr %5, align 4, !dbg !1801
  %26 = load i32, ptr %25, align 4, !dbg !1803
  %27 = or i32 %26, 0, !dbg !1803
  store i32 %27, ptr %25, align 4, !dbg !1803
  br label %28

28:                                               ; preds = %24, %23
  %29 = load i32, ptr %4, align 4, !dbg !1804
  %30 = and i32 %29, 16, !dbg !1806
  %31 = icmp ne i32 %30, 0, !dbg !1807
  br i1 %31, label %32, label %36, !dbg !1808

32:                                               ; preds = %28
  %33 = load ptr, ptr %5, align 4, !dbg !1809
  %34 = load i32, ptr %33, align 4, !dbg !1811
  %35 = or i32 %34, 512, !dbg !1811
  store i32 %35, ptr %33, align 4, !dbg !1811
  br label %45, !dbg !1812

36:                                               ; preds = %28
  %37 = load i32, ptr %4, align 4, !dbg !1813
  %38 = and i32 %37, 32, !dbg !1815
  %39 = icmp ne i32 %38, 0, !dbg !1816
  br i1 %39, label %40, label %44, !dbg !1817

40:                                               ; preds = %36
  %41 = load ptr, ptr %5, align 4, !dbg !1818
  %42 = load i32, ptr %41, align 4, !dbg !1820
  %43 = or i32 %42, 1024, !dbg !1820
  store i32 %43, ptr %41, align 4, !dbg !1820
  br label %44, !dbg !1821

44:                                               ; preds = %40, %36
  br label %45

45:                                               ; preds = %44, %32
  br label %76, !dbg !1822

46:                                               ; preds = %2
  %47 = load i32, ptr %4, align 4, !dbg !1823
  %48 = and i32 %47, 65536, !dbg !1825
  %49 = icmp ne i32 %48, 0, !dbg !1826
  br i1 %49, label %50, label %73, !dbg !1827

50:                                               ; preds = %46
  %51 = load ptr, ptr %5, align 4, !dbg !1828
  store i32 0, ptr %51, align 4, !dbg !1830
  %52 = load i32, ptr %4, align 4, !dbg !1831
  %53 = and i32 %52, 16, !dbg !1833
  %54 = icmp ne i32 %53, 0, !dbg !1834
  br i1 %54, label %55, label %59, !dbg !1835

55:                                               ; preds = %50
  %56 = load ptr, ptr %5, align 4, !dbg !1836
  %57 = load i32, ptr %56, align 4, !dbg !1838
  %58 = or i32 %57, 512, !dbg !1838
  store i32 %58, ptr %56, align 4, !dbg !1838
  br label %72, !dbg !1839

59:                                               ; preds = %50
  %60 = load i32, ptr %4, align 4, !dbg !1840
  %61 = and i32 %60, 32, !dbg !1842
  %62 = icmp ne i32 %61, 0, !dbg !1843
  br i1 %62, label %63, label %67, !dbg !1844

63:                                               ; preds = %59
  %64 = load ptr, ptr %5, align 4, !dbg !1845
  %65 = load i32, ptr %64, align 4, !dbg !1847
  %66 = or i32 %65, 1024, !dbg !1847
  store i32 %66, ptr %64, align 4, !dbg !1847
  br label %71, !dbg !1848

67:                                               ; preds = %59
  %68 = load ptr, ptr %5, align 4, !dbg !1849
  %69 = load i32, ptr %68, align 4, !dbg !1851
  %70 = or i32 %69, 0, !dbg !1851
  store i32 %70, ptr %68, align 4, !dbg !1851
  br label %71

71:                                               ; preds = %67, %63
  br label %72

72:                                               ; preds = %71, %55
  br label %75, !dbg !1852

73:                                               ; preds = %46
  %74 = load ptr, ptr %5, align 4, !dbg !1853
  store i32 48, ptr %74, align 4, !dbg !1855
  br label %75

75:                                               ; preds = %73, %72
  br label %76

76:                                               ; preds = %75, %45
  store i32 0, ptr %3, align 4, !dbg !1856
  br label %77, !dbg !1856

77:                                               ; preds = %76, %22
  %78 = load i32, ptr %3, align 4, !dbg !1857
  ret i32 %78, !dbg !1857
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @LL_GPIO_ReadInputPort(ptr noundef %0) #0 !dbg !1858 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1862, metadata !DIExpression()), !dbg !1863
  %3 = load ptr, ptr %2, align 4, !dbg !1864
  %4 = getelementptr inbounds %struct.GPIO_TypeDef, ptr %3, i32 0, i32 4, !dbg !1865
  %5 = load volatile i32, ptr %4, align 4, !dbg !1865
  ret i32 %5, !dbg !1866
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @LL_GPIO_ReadOutputPort(ptr noundef %0) #0 !dbg !1867 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1869, metadata !DIExpression()), !dbg !1870
  %3 = load ptr, ptr %2, align 4, !dbg !1871
  %4 = getelementptr inbounds %struct.GPIO_TypeDef, ptr %3, i32 0, i32 5, !dbg !1872
  %5 = load volatile i32, ptr %4, align 4, !dbg !1872
  ret i32 %5, !dbg !1873
}

; Function Attrs: inlinehint nounwind optsize
define internal void @LL_GPIO_WriteOutputPort(ptr noundef %0, i32 noundef %1) #0 !dbg !1874 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1876, metadata !DIExpression()), !dbg !1878
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1877, metadata !DIExpression()), !dbg !1879
  %5 = load i32, ptr %4, align 4, !dbg !1880
  %6 = load ptr, ptr %3, align 4, !dbg !1881
  %7 = getelementptr inbounds %struct.GPIO_TypeDef, ptr %6, i32 0, i32 5, !dbg !1882
  store volatile i32 %5, ptr %7, align 4, !dbg !1883
  ret void, !dbg !1884
}

; Function Attrs: nounwind optsize
define internal i32 @gpio_stm32_get_exti_source(i32 noundef %0) #1 !dbg !1885 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1889, metadata !DIExpression()), !dbg !1892
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #6, !dbg !1893
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1890, metadata !DIExpression()), !dbg !1894
  %5 = load i32, ptr %2, align 4, !dbg !1895
  %6 = call i32 @gpio_stm32_pin_to_exti_line(i32 noundef %5) #5, !dbg !1896
  store i32 %6, ptr %3, align 4, !dbg !1894
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #6, !dbg !1897
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1891, metadata !DIExpression()), !dbg !1898
  %7 = load i32, ptr %3, align 4, !dbg !1899
  %8 = call i32 @LL_SYSCFG_GetEXTISource(i32 noundef %7) #5, !dbg !1900
  store i32 %8, ptr %4, align 4, !dbg !1901
  %9 = load i32, ptr %4, align 4, !dbg !1902
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #6, !dbg !1903
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #6, !dbg !1903
  ret i32 %9, !dbg !1904
}

; Function Attrs: optsize
declare !dbg !1905 dso_local void @stm32_exti_disable(i32 noundef) #4

; Function Attrs: optsize
declare !dbg !1908 dso_local void @stm32_exti_unset_callback(i32 noundef) #4

; Function Attrs: optsize
declare !dbg !1909 dso_local void @stm32_exti_trigger(i32 noundef, i32 noundef) #4

; Function Attrs: optsize
declare !dbg !1912 dso_local i32 @stm32_exti_set_callback(i32 noundef, ptr noundef, ptr noundef) #4

; Function Attrs: nounwind optsize
define internal void @gpio_stm32_isr(i32 noundef %0, ptr noundef %1) #1 !dbg !1919 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1921, metadata !DIExpression()), !dbg !1924
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1922, metadata !DIExpression()), !dbg !1925
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #6, !dbg !1926
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1923, metadata !DIExpression()), !dbg !1927
  %6 = load ptr, ptr %4, align 4, !dbg !1928
  store ptr %6, ptr %5, align 4, !dbg !1927
  %7 = load ptr, ptr %5, align 4, !dbg !1929
  %8 = getelementptr inbounds %struct.gpio_stm32_data, ptr %7, i32 0, i32 2, !dbg !1930
  %9 = load ptr, ptr %5, align 4, !dbg !1931
  %10 = getelementptr inbounds %struct.gpio_stm32_data, ptr %9, i32 0, i32 1, !dbg !1932
  %11 = load ptr, ptr %10, align 4, !dbg !1932
  %12 = load i32, ptr %3, align 4, !dbg !1933
  %13 = shl i32 1, %12, !dbg !1934
  call void @gpio_fire_callbacks(ptr noundef %8, ptr noundef %11, i32 noundef %13) #5, !dbg !1935
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #6, !dbg !1936
  ret void, !dbg !1936
}

; Function Attrs: nounwind optsize
define internal i32 @gpio_stm32_enable_int(i32 noundef %0, i32 noundef %1) #1 !dbg !1937 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1941, metadata !DIExpression()), !dbg !1943
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1942, metadata !DIExpression()), !dbg !1944
  %5 = load i32, ptr %3, align 4, !dbg !1945
  %6 = load i32, ptr %4, align 4, !dbg !1946
  call void @gpio_stm32_set_exti_source(i32 noundef %5, i32 noundef %6) #5, !dbg !1947
  ret i32 0, !dbg !1948
}

; Function Attrs: optsize
declare !dbg !1949 dso_local void @stm32_exti_enable(i32 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #2

; Function Attrs: inlinehint nounwind optsize
define internal i32 @gpio_stm32_pin_to_exti_line(i32 noundef %0) #0 !dbg !1950 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1952, metadata !DIExpression()), !dbg !1953
  %3 = load i32, ptr %2, align 4, !dbg !1954
  %4 = srem i32 %3, 4, !dbg !1955
  %5 = mul nsw i32 %4, 4, !dbg !1956
  %6 = shl i32 %5, 16, !dbg !1957
  %7 = load i32, ptr %2, align 4, !dbg !1958
  %8 = sdiv i32 %7, 4, !dbg !1959
  %9 = or i32 %6, %8, !dbg !1960
  ret i32 %9, !dbg !1961
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @LL_SYSCFG_GetEXTISource(i32 noundef %0) #0 !dbg !1962 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1967, metadata !DIExpression()), !dbg !1968
  %3 = load i32, ptr %2, align 4, !dbg !1969
  %4 = and i32 %3, 255, !dbg !1970
  %5 = getelementptr inbounds [4 x i32], ptr getelementptr inbounds (%struct.SYSCFG_TypeDef, ptr inttoptr (i32 1073807360 to ptr), i32 0, i32 2), i32 0, i32 %4, !dbg !1971
  %6 = load volatile i32, ptr %5, align 4, !dbg !1971
  %7 = load i32, ptr %2, align 4, !dbg !1972
  %8 = lshr i32 %7, 16, !dbg !1973
  %9 = shl i32 15, %8, !dbg !1974
  %10 = and i32 %6, %9, !dbg !1975
  %11 = load i32, ptr %2, align 4, !dbg !1976
  %12 = lshr i32 %11, 16, !dbg !1977
  %13 = lshr i32 %10, %12, !dbg !1978
  ret i32 %13, !dbg !1979
}

; Function Attrs: inlinehint nounwind optsize
define internal void @gpio_fire_callbacks(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 !dbg !1980 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  %11 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1986, metadata !DIExpression()), !dbg !1991
  store ptr %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1987, metadata !DIExpression()), !dbg !1992
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1988, metadata !DIExpression()), !dbg !1993
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #6, !dbg !1994
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1989, metadata !DIExpression()), !dbg !1995
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #6, !dbg !1994
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1990, metadata !DIExpression()), !dbg !1996
  %12 = load ptr, ptr %4, align 4, !dbg !1997
  %13 = call ptr @sys_slist_peek_head(ptr noundef %12) #5, !dbg !1999
  %14 = icmp ne ptr %13, null, !dbg !1999
  br i1 %14, label %15, label %20, !dbg !2000

15:                                               ; preds = %3
  %16 = load ptr, ptr %4, align 4, !dbg !2001
  %17 = call ptr @sys_slist_peek_head(ptr noundef %16) #5, !dbg !2003
  %18 = getelementptr inbounds i8, ptr %17, i32 0, !dbg !2004
  store ptr %18, ptr %9, align 4, !dbg !2005
  %19 = load ptr, ptr %9, align 4, !dbg !2006
  br label %21, !dbg !2000

20:                                               ; preds = %3
  br label %21, !dbg !2000

21:                                               ; preds = %20, %15
  %22 = phi ptr [ %19, %15 ], [ null, %20 ], !dbg !2000
  store ptr %22, ptr %7, align 4, !dbg !2007
  %23 = load ptr, ptr %7, align 4, !dbg !2008
  %24 = icmp ne ptr %23, null, !dbg !2009
  br i1 %24, label %25, label %39, !dbg !2009

25:                                               ; preds = %21
  %26 = load ptr, ptr %7, align 4, !dbg !2010
  %27 = getelementptr inbounds %struct.gpio_callback, ptr %26, i32 0, i32 0, !dbg !2011
  %28 = call ptr @sys_slist_peek_next(ptr noundef %27) #5, !dbg !2012
  %29 = icmp ne ptr %28, null, !dbg !2012
  br i1 %29, label %30, label %36, !dbg !2013

30:                                               ; preds = %25
  %31 = load ptr, ptr %7, align 4, !dbg !2014
  %32 = getelementptr inbounds %struct.gpio_callback, ptr %31, i32 0, i32 0, !dbg !2016
  %33 = call ptr @sys_slist_peek_next(ptr noundef %32) #5, !dbg !2017
  %34 = getelementptr inbounds i8, ptr %33, i32 0, !dbg !2018
  store ptr %34, ptr %10, align 4, !dbg !2019
  %35 = load ptr, ptr %10, align 4, !dbg !2020
  br label %37, !dbg !2013

36:                                               ; preds = %25
  br label %37, !dbg !2013

37:                                               ; preds = %36, %30
  %38 = phi ptr [ %35, %30 ], [ null, %36 ], !dbg !2013
  br label %40, !dbg !2009

39:                                               ; preds = %21
  br label %40, !dbg !2009

40:                                               ; preds = %39, %37
  %41 = phi ptr [ %38, %37 ], [ null, %39 ], !dbg !2009
  store ptr %41, ptr %8, align 4, !dbg !2021
  br label %42, !dbg !2022

42:                                               ; preds = %83, %40
  %43 = load ptr, ptr %7, align 4, !dbg !2023
  %44 = icmp ne ptr %43, null, !dbg !2025
  br i1 %44, label %45, label %85, !dbg !2026

45:                                               ; preds = %42
  %46 = load ptr, ptr %7, align 4, !dbg !2027
  %47 = getelementptr inbounds %struct.gpio_callback, ptr %46, i32 0, i32 2, !dbg !2030
  %48 = load i32, ptr %47, align 4, !dbg !2030
  %49 = load i32, ptr %6, align 4, !dbg !2031
  %50 = and i32 %48, %49, !dbg !2032
  %51 = icmp ne i32 %50, 0, !dbg !2032
  br i1 %51, label %52, label %63, !dbg !2033

52:                                               ; preds = %45
  %53 = load ptr, ptr %7, align 4, !dbg !2034
  %54 = getelementptr inbounds %struct.gpio_callback, ptr %53, i32 0, i32 1, !dbg !2036
  %55 = load ptr, ptr %54, align 4, !dbg !2036
  %56 = load ptr, ptr %5, align 4, !dbg !2037
  %57 = load ptr, ptr %7, align 4, !dbg !2038
  %58 = load ptr, ptr %7, align 4, !dbg !2039
  %59 = getelementptr inbounds %struct.gpio_callback, ptr %58, i32 0, i32 2, !dbg !2040
  %60 = load i32, ptr %59, align 4, !dbg !2040
  %61 = load i32, ptr %6, align 4, !dbg !2041
  %62 = and i32 %60, %61, !dbg !2042
  call void %55(ptr noundef %56, ptr noundef %57, i32 noundef %62) #5, !dbg !2034
  br label %63, !dbg !2043

63:                                               ; preds = %52, %45
  br label %64, !dbg !2044

64:                                               ; preds = %63
  %65 = load ptr, ptr %8, align 4, !dbg !2045
  store ptr %65, ptr %7, align 4, !dbg !2046
  %66 = load ptr, ptr %7, align 4, !dbg !2047
  %67 = icmp ne ptr %66, null, !dbg !2048
  br i1 %67, label %68, label %82, !dbg !2048

68:                                               ; preds = %64
  %69 = load ptr, ptr %7, align 4, !dbg !2049
  %70 = getelementptr inbounds %struct.gpio_callback, ptr %69, i32 0, i32 0, !dbg !2050
  %71 = call ptr @sys_slist_peek_next(ptr noundef %70) #5, !dbg !2051
  %72 = icmp ne ptr %71, null, !dbg !2051
  br i1 %72, label %73, label %79, !dbg !2052

73:                                               ; preds = %68
  %74 = load ptr, ptr %7, align 4, !dbg !2053
  %75 = getelementptr inbounds %struct.gpio_callback, ptr %74, i32 0, i32 0, !dbg !2055
  %76 = call ptr @sys_slist_peek_next(ptr noundef %75) #5, !dbg !2056
  %77 = getelementptr inbounds i8, ptr %76, i32 0, !dbg !2057
  store ptr %77, ptr %11, align 4, !dbg !2058
  %78 = load ptr, ptr %11, align 4, !dbg !2059
  br label %80, !dbg !2052

79:                                               ; preds = %68
  br label %80, !dbg !2052

80:                                               ; preds = %79, %73
  %81 = phi ptr [ %78, %73 ], [ null, %79 ], !dbg !2052
  br label %83, !dbg !2048

82:                                               ; preds = %64
  br label %83, !dbg !2048

83:                                               ; preds = %82, %80
  %84 = phi ptr [ %81, %80 ], [ null, %82 ], !dbg !2048
  store ptr %84, ptr %8, align 4, !dbg !2060
  br label %42, !dbg !2061, !llvm.loop !2062

85:                                               ; preds = %42
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #6, !dbg !2064
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #6, !dbg !2064
  ret void, !dbg !2064
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @sys_slist_peek_head(ptr noundef %0) #0 !dbg !2065 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2069, metadata !DIExpression()), !dbg !2070
  %3 = load ptr, ptr %2, align 4, !dbg !2071
  %4 = getelementptr inbounds %struct._slist, ptr %3, i32 0, i32 0, !dbg !2072
  %5 = load ptr, ptr %4, align 4, !dbg !2072
  ret ptr %5, !dbg !2073
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @sys_slist_peek_next(ptr noundef %0) #0 !dbg !2074 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2078, metadata !DIExpression()), !dbg !2079
  %3 = load ptr, ptr %2, align 4, !dbg !2080
  %4 = icmp ne ptr %3, null, !dbg !2081
  br i1 %4, label %5, label %8, !dbg !2080

5:                                                ; preds = %1
  %6 = load ptr, ptr %2, align 4, !dbg !2082
  %7 = call ptr @sys_slist_peek_next_no_check(ptr noundef %6) #5, !dbg !2083
  br label %9, !dbg !2080

8:                                                ; preds = %1
  br label %9, !dbg !2080

9:                                                ; preds = %8, %5
  %10 = phi ptr [ %7, %5 ], [ null, %8 ], !dbg !2080
  ret ptr %10, !dbg !2084
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @sys_slist_peek_next_no_check(ptr noundef %0) #0 !dbg !2085 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2087, metadata !DIExpression()), !dbg !2088
  %3 = load ptr, ptr %2, align 4, !dbg !2089
  %4 = call ptr @z_snode_next_peek(ptr noundef %3) #5, !dbg !2090
  ret ptr %4, !dbg !2091
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_snode_next_peek(ptr noundef %0) #0 !dbg !2092 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2094, metadata !DIExpression()), !dbg !2095
  %3 = load ptr, ptr %2, align 4, !dbg !2096
  %4 = getelementptr inbounds %struct._snode, ptr %3, i32 0, i32 0, !dbg !2097
  %5 = load ptr, ptr %4, align 4, !dbg !2097
  ret ptr %5, !dbg !2098
}

; Function Attrs: nounwind optsize
define internal void @gpio_stm32_set_exti_source(i32 noundef %0, i32 noundef %1) #1 !dbg !2099 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2101, metadata !DIExpression()), !dbg !2104
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2102, metadata !DIExpression()), !dbg !2105
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #6, !dbg !2106
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2103, metadata !DIExpression()), !dbg !2107
  %6 = load i32, ptr %4, align 4, !dbg !2108
  %7 = call i32 @gpio_stm32_pin_to_exti_line(i32 noundef %6) #5, !dbg !2109
  store i32 %7, ptr %5, align 4, !dbg !2107
  call void @z_stm32_hsem_lock(i32 noundef 0, i32 noundef 1048576) #5, !dbg !2110
  %8 = load i32, ptr %3, align 4, !dbg !2111
  %9 = load i32, ptr %5, align 4, !dbg !2112
  call void @LL_SYSCFG_SetEXTISource(i32 noundef %8, i32 noundef %9) #5, !dbg !2113
  call void @z_stm32_hsem_unlock(i32 noundef 0) #5, !dbg !2114
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #6, !dbg !2115
  ret void, !dbg !2115
}

; Function Attrs: inlinehint nounwind optsize
define internal void @LL_SYSCFG_SetEXTISource(i32 noundef %0, i32 noundef %1) #0 !dbg !2116 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2118, metadata !DIExpression()), !dbg !2120
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2119, metadata !DIExpression()), !dbg !2121
  %5 = load i32, ptr %4, align 4, !dbg !2122
  %6 = and i32 %5, 255, !dbg !2123
  %7 = getelementptr inbounds [4 x i32], ptr getelementptr inbounds (%struct.SYSCFG_TypeDef, ptr inttoptr (i32 1073807360 to ptr), i32 0, i32 2), i32 0, i32 %6, !dbg !2124
  %8 = load volatile i32, ptr %7, align 4, !dbg !2124
  %9 = load i32, ptr %4, align 4, !dbg !2125
  %10 = lshr i32 %9, 16, !dbg !2126
  %11 = shl i32 15, %10, !dbg !2127
  %12 = xor i32 %11, -1, !dbg !2128
  %13 = and i32 %8, %12, !dbg !2129
  %14 = load i32, ptr %3, align 4, !dbg !2130
  %15 = load i32, ptr %4, align 4, !dbg !2131
  %16 = lshr i32 %15, 16, !dbg !2132
  %17 = shl i32 %14, %16, !dbg !2133
  %18 = or i32 %13, %17, !dbg !2134
  %19 = load i32, ptr %4, align 4, !dbg !2135
  %20 = and i32 %19, 255, !dbg !2136
  %21 = getelementptr inbounds [4 x i32], ptr getelementptr inbounds (%struct.SYSCFG_TypeDef, ptr inttoptr (i32 1073807360 to ptr), i32 0, i32 2), i32 0, i32 %20, !dbg !2137
  store volatile i32 %18, ptr %21, align 4, !dbg !2138
  ret void, !dbg !2139
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @gpio_manage_callback(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) #0 !dbg !2140 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i8, align 1
  store ptr %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2144, metadata !DIExpression()), !dbg !2147
  store ptr %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2145, metadata !DIExpression()), !dbg !2148
  %8 = zext i1 %2 to i8
  store i8 %8, ptr %7, align 1
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2146, metadata !DIExpression()), !dbg !2149
  %9 = load ptr, ptr %5, align 4, !dbg !2150
  %10 = call zeroext i1 @sys_slist_is_empty(ptr noundef %9) #5, !dbg !2152
  br i1 %10, label %22, label %11, !dbg !2153

11:                                               ; preds = %3
  %12 = load ptr, ptr %5, align 4, !dbg !2154
  %13 = load ptr, ptr %6, align 4, !dbg !2157
  %14 = getelementptr inbounds %struct.gpio_callback, ptr %13, i32 0, i32 0, !dbg !2158
  %15 = call zeroext i1 @sys_slist_find_and_remove(ptr noundef %12, ptr noundef %14) #5, !dbg !2159
  br i1 %15, label %21, label %16, !dbg !2160

16:                                               ; preds = %11
  %17 = load i8, ptr %7, align 1, !dbg !2161, !range !1763, !noundef !522
  %18 = trunc i8 %17 to i1, !dbg !2161
  br i1 %18, label %20, label %19, !dbg !2164

19:                                               ; preds = %16
  store i32 -5, ptr %4, align 4, !dbg !2165
  br label %35, !dbg !2165

20:                                               ; preds = %16
  br label %21, !dbg !2167

21:                                               ; preds = %20, %11
  br label %27, !dbg !2168

22:                                               ; preds = %3
  %23 = load i8, ptr %7, align 1, !dbg !2169, !range !1763, !noundef !522
  %24 = trunc i8 %23 to i1, !dbg !2169
  br i1 %24, label %26, label %25, !dbg !2171

25:                                               ; preds = %22
  store i32 -5, ptr %4, align 4, !dbg !2172
  br label %35, !dbg !2172

26:                                               ; preds = %22
  br label %27

27:                                               ; preds = %26, %21
  %28 = load i8, ptr %7, align 1, !dbg !2174, !range !1763, !noundef !522
  %29 = trunc i8 %28 to i1, !dbg !2174
  br i1 %29, label %30, label %34, !dbg !2176

30:                                               ; preds = %27
  %31 = load ptr, ptr %5, align 4, !dbg !2177
  %32 = load ptr, ptr %6, align 4, !dbg !2179
  %33 = getelementptr inbounds %struct.gpio_callback, ptr %32, i32 0, i32 0, !dbg !2180
  call void @sys_slist_prepend(ptr noundef %31, ptr noundef %33) #5, !dbg !2181
  br label %34, !dbg !2182

34:                                               ; preds = %30, %27
  store i32 0, ptr %4, align 4, !dbg !2183
  br label %35, !dbg !2183

35:                                               ; preds = %34, %25, %19
  %36 = load i32, ptr %4, align 4, !dbg !2184
  ret i32 %36, !dbg !2184
}

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @sys_slist_is_empty(ptr noundef %0) #0 !dbg !2185 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2189, metadata !DIExpression()), !dbg !2190
  %3 = load ptr, ptr %2, align 4, !dbg !2191
  %4 = call ptr @sys_slist_peek_head(ptr noundef %3) #5, !dbg !2192
  %5 = icmp eq ptr %4, null, !dbg !2193
  ret i1 %5, !dbg !2194
}

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @sys_slist_find_and_remove(ptr noundef %0, ptr noundef %1) #0 !dbg !2195 {
  %3 = alloca i1, align 1
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2199, metadata !DIExpression()), !dbg !2203
  store ptr %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2200, metadata !DIExpression()), !dbg !2204
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #6, !dbg !2205
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2201, metadata !DIExpression()), !dbg !2206
  store ptr null, ptr %6, align 4, !dbg !2206
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #6, !dbg !2207
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2202, metadata !DIExpression()), !dbg !2208
  %9 = load ptr, ptr %4, align 4, !dbg !2209
  %10 = call ptr @sys_slist_peek_head(ptr noundef %9) #5, !dbg !2211
  store ptr %10, ptr %7, align 4, !dbg !2212
  br label %11, !dbg !2213

11:                                               ; preds = %24, %2
  %12 = load ptr, ptr %7, align 4, !dbg !2214
  %13 = icmp ne ptr %12, null, !dbg !2216
  br i1 %13, label %14, label %27, !dbg !2217

14:                                               ; preds = %11
  %15 = load ptr, ptr %7, align 4, !dbg !2218
  %16 = load ptr, ptr %5, align 4, !dbg !2221
  %17 = icmp eq ptr %15, %16, !dbg !2222
  br i1 %17, label %18, label %22, !dbg !2223

18:                                               ; preds = %14
  %19 = load ptr, ptr %4, align 4, !dbg !2224
  %20 = load ptr, ptr %6, align 4, !dbg !2226
  %21 = load ptr, ptr %5, align 4, !dbg !2227
  call void @sys_slist_remove(ptr noundef %19, ptr noundef %20, ptr noundef %21) #5, !dbg !2228
  store i1 true, ptr %3, align 1, !dbg !2229
  store i32 1, ptr %8, align 4
  br label %28, !dbg !2229

22:                                               ; preds = %14
  %23 = load ptr, ptr %7, align 4, !dbg !2230
  store ptr %23, ptr %6, align 4, !dbg !2231
  br label %24, !dbg !2232

24:                                               ; preds = %22
  %25 = load ptr, ptr %7, align 4, !dbg !2233
  %26 = call ptr @sys_slist_peek_next(ptr noundef %25) #5, !dbg !2234
  store ptr %26, ptr %7, align 4, !dbg !2235
  br label %11, !dbg !2236, !llvm.loop !2237

27:                                               ; preds = %11
  store i1 false, ptr %3, align 1, !dbg !2239
  store i32 1, ptr %8, align 4
  br label %28, !dbg !2239

28:                                               ; preds = %27, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #6, !dbg !2240
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #6, !dbg !2240
  %29 = load i1, ptr %3, align 1, !dbg !2240
  ret i1 %29, !dbg !2240
}

; Function Attrs: inlinehint nounwind optsize
define internal void @sys_slist_prepend(ptr noundef %0, ptr noundef %1) #0 !dbg !2241 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2245, metadata !DIExpression()), !dbg !2247
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2246, metadata !DIExpression()), !dbg !2248
  %5 = load ptr, ptr %4, align 4, !dbg !2249
  %6 = load ptr, ptr %3, align 4, !dbg !2250
  %7 = call ptr @sys_slist_peek_head(ptr noundef %6) #5, !dbg !2251
  call void @z_snode_next_set(ptr noundef %5, ptr noundef %7) #5, !dbg !2252
  %8 = load ptr, ptr %3, align 4, !dbg !2253
  %9 = load ptr, ptr %4, align 4, !dbg !2254
  call void @z_slist_head_set(ptr noundef %8, ptr noundef %9) #5, !dbg !2255
  %10 = load ptr, ptr %3, align 4, !dbg !2256
  %11 = call ptr @sys_slist_peek_tail(ptr noundef %10) #5, !dbg !2258
  %12 = icmp eq ptr %11, null, !dbg !2259
  br i1 %12, label %13, label %17, !dbg !2260

13:                                               ; preds = %2
  %14 = load ptr, ptr %3, align 4, !dbg !2261
  %15 = load ptr, ptr %3, align 4, !dbg !2263
  %16 = call ptr @sys_slist_peek_head(ptr noundef %15) #5, !dbg !2264
  call void @z_slist_tail_set(ptr noundef %14, ptr noundef %16) #5, !dbg !2265
  br label %17, !dbg !2266

17:                                               ; preds = %13, %2
  ret void, !dbg !2267
}

; Function Attrs: inlinehint nounwind optsize
define internal void @sys_slist_remove(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !2268 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2272, metadata !DIExpression()), !dbg !2275
  store ptr %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2273, metadata !DIExpression()), !dbg !2276
  store ptr %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2274, metadata !DIExpression()), !dbg !2277
  %7 = load ptr, ptr %5, align 4, !dbg !2278
  %8 = icmp eq ptr %7, null, !dbg !2280
  br i1 %8, label %9, label %22, !dbg !2281

9:                                                ; preds = %3
  %10 = load ptr, ptr %4, align 4, !dbg !2282
  %11 = load ptr, ptr %6, align 4, !dbg !2284
  %12 = call ptr @z_snode_next_peek(ptr noundef %11) #5, !dbg !2285
  call void @z_slist_head_set(ptr noundef %10, ptr noundef %12) #5, !dbg !2286
  %13 = load ptr, ptr %4, align 4, !dbg !2287
  %14 = call ptr @sys_slist_peek_tail(ptr noundef %13) #5, !dbg !2289
  %15 = load ptr, ptr %6, align 4, !dbg !2290
  %16 = icmp eq ptr %14, %15, !dbg !2291
  br i1 %16, label %17, label %21, !dbg !2292

17:                                               ; preds = %9
  %18 = load ptr, ptr %4, align 4, !dbg !2293
  %19 = load ptr, ptr %4, align 4, !dbg !2295
  %20 = call ptr @sys_slist_peek_head(ptr noundef %19) #5, !dbg !2296
  call void @z_slist_tail_set(ptr noundef %18, ptr noundef %20) #5, !dbg !2297
  br label %21, !dbg !2298

21:                                               ; preds = %17, %9
  br label %34, !dbg !2299

22:                                               ; preds = %3
  %23 = load ptr, ptr %5, align 4, !dbg !2300
  %24 = load ptr, ptr %6, align 4, !dbg !2302
  %25 = call ptr @z_snode_next_peek(ptr noundef %24) #5, !dbg !2303
  call void @z_snode_next_set(ptr noundef %23, ptr noundef %25) #5, !dbg !2304
  %26 = load ptr, ptr %4, align 4, !dbg !2305
  %27 = call ptr @sys_slist_peek_tail(ptr noundef %26) #5, !dbg !2307
  %28 = load ptr, ptr %6, align 4, !dbg !2308
  %29 = icmp eq ptr %27, %28, !dbg !2309
  br i1 %29, label %30, label %33, !dbg !2310

30:                                               ; preds = %22
  %31 = load ptr, ptr %4, align 4, !dbg !2311
  %32 = load ptr, ptr %5, align 4, !dbg !2313
  call void @z_slist_tail_set(ptr noundef %31, ptr noundef %32) #5, !dbg !2314
  br label %33, !dbg !2315

33:                                               ; preds = %30, %22
  br label %34

34:                                               ; preds = %33, %21
  %35 = load ptr, ptr %6, align 4, !dbg !2316
  call void @z_snode_next_set(ptr noundef %35, ptr noundef null) #5, !dbg !2317
  ret void, !dbg !2318
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_slist_head_set(ptr noundef %0, ptr noundef %1) #0 !dbg !2319 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2321, metadata !DIExpression()), !dbg !2323
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2322, metadata !DIExpression()), !dbg !2324
  %5 = load ptr, ptr %4, align 4, !dbg !2325
  %6 = load ptr, ptr %3, align 4, !dbg !2326
  %7 = getelementptr inbounds %struct._slist, ptr %6, i32 0, i32 0, !dbg !2327
  store ptr %5, ptr %7, align 4, !dbg !2328
  ret void, !dbg !2329
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @sys_slist_peek_tail(ptr noundef %0) #0 !dbg !2330 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2332, metadata !DIExpression()), !dbg !2333
  %3 = load ptr, ptr %2, align 4, !dbg !2334
  %4 = getelementptr inbounds %struct._slist, ptr %3, i32 0, i32 1, !dbg !2335
  %5 = load ptr, ptr %4, align 4, !dbg !2335
  ret ptr %5, !dbg !2336
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_slist_tail_set(ptr noundef %0, ptr noundef %1) #0 !dbg !2337 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2339, metadata !DIExpression()), !dbg !2341
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2340, metadata !DIExpression()), !dbg !2342
  %5 = load ptr, ptr %4, align 4, !dbg !2343
  %6 = load ptr, ptr %3, align 4, !dbg !2344
  %7 = getelementptr inbounds %struct._slist, ptr %6, i32 0, i32 1, !dbg !2345
  store ptr %5, ptr %7, align 4, !dbg !2346
  ret void, !dbg !2347
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_snode_next_set(ptr noundef %0, ptr noundef %1) #0 !dbg !2348 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2352, metadata !DIExpression()), !dbg !2354
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2353, metadata !DIExpression()), !dbg !2355
  %5 = load ptr, ptr %4, align 4, !dbg !2356
  %6 = load ptr, ptr %3, align 4, !dbg !2357
  %7 = getelementptr inbounds %struct._snode, ptr %6, i32 0, i32 0, !dbg !2358
  store ptr %5, ptr %7, align 4, !dbg !2359
  ret void, !dbg !2360
}

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @device_is_ready(ptr noundef %0) #0 !dbg !2361 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2364, metadata !DIExpression()), !dbg !2365
  br label %3, !dbg !2366

3:                                                ; preds = %1
  call void asm sideeffect "", "~{memory}"() #6, !dbg !2367, !srcloc !2369
  br label %4, !dbg !2370

4:                                                ; preds = %3
  %5 = load ptr, ptr %2, align 4, !dbg !2371
  %6 = call zeroext i1 @z_impl_device_is_ready(ptr noundef %5) #5, !dbg !2372
  ret i1 %6, !dbg !2373
}

; Function Attrs: nounwind optsize
define internal i32 @gpio_stm32_clock_request(ptr noundef %0, i1 noundef zeroext %1) #1 !dbg !2374 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i8, align 1
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 4
  %9 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2378, metadata !DIExpression()), !dbg !2384
  %10 = zext i1 %1 to i8
  store i8 %10, ptr %5, align 1
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2379, metadata !DIExpression()), !dbg !2385
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #6, !dbg !2386
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2380, metadata !DIExpression()), !dbg !2387
  %11 = load ptr, ptr %4, align 4, !dbg !2388
  %12 = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 1, !dbg !2389
  %13 = load ptr, ptr %12, align 4, !dbg !2389
  store ptr %13, ptr %6, align 4, !dbg !2387
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #6, !dbg !2390
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2381, metadata !DIExpression()), !dbg !2391
  store i32 0, ptr %7, align 4, !dbg !2391
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #6, !dbg !2392
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2382, metadata !DIExpression()), !dbg !2393
  store ptr @__device_dts_ord_9, ptr %8, align 4, !dbg !2393
  %14 = load i8, ptr %5, align 1, !dbg !2394, !range !1763, !noundef !522
  %15 = trunc i8 %14 to i1, !dbg !2394
  br i1 %15, label %16, label %20, !dbg !2396

16:                                               ; preds = %2
  %17 = load ptr, ptr %6, align 4, !dbg !2397
  %18 = getelementptr inbounds %struct.gpio_stm32_config, ptr %17, i32 0, i32 3, !dbg !2399
  %19 = call i32 @clock_control_on(ptr noundef @__device_dts_ord_9, ptr noundef %18) #5, !dbg !2400
  store i32 %19, ptr %7, align 4, !dbg !2401
  br label %24, !dbg !2402

20:                                               ; preds = %2
  %21 = load ptr, ptr %6, align 4, !dbg !2403
  %22 = getelementptr inbounds %struct.gpio_stm32_config, ptr %21, i32 0, i32 3, !dbg !2405
  %23 = call i32 @clock_control_off(ptr noundef @__device_dts_ord_9, ptr noundef %22) #5, !dbg !2406
  store i32 %23, ptr %7, align 4, !dbg !2407
  br label %24

24:                                               ; preds = %20, %16
  %25 = load i32, ptr %7, align 4, !dbg !2408
  %26 = icmp ne i32 %25, 0, !dbg !2410
  br i1 %26, label %27, label %29, !dbg !2411

27:                                               ; preds = %24
  %28 = load i32, ptr %7, align 4, !dbg !2412
  store i32 %28, ptr %3, align 4, !dbg !2414
  store i32 1, ptr %9, align 4
  br label %31, !dbg !2414

29:                                               ; preds = %24
  %30 = load i32, ptr %7, align 4, !dbg !2415
  store i32 %30, ptr %3, align 4, !dbg !2416
  store i32 1, ptr %9, align 4
  br label %31, !dbg !2416

31:                                               ; preds = %29, %27
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #6, !dbg !2417
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #6, !dbg !2417
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #6, !dbg !2417
  %32 = load i32, ptr %3, align 4, !dbg !2417
  ret i32 %32, !dbg !2417
}

; Function Attrs: inlinehint nounwind optsize
define internal void @pm_device_init_suspended(ptr noundef %0) #0 !dbg !2418 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2423, metadata !DIExpression()), !dbg !2424
  %3 = load ptr, ptr %2, align 4, !dbg !2425
  ret void, !dbg !2426
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @pm_device_runtime_enable(ptr noundef %0) #0 !dbg !2427 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2429, metadata !DIExpression()), !dbg !2430
  %3 = load ptr, ptr %2, align 4, !dbg !2431
  ret i32 0, !dbg !2432
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @clock_control_on(ptr noundef %0, ptr noundef %1) #0 !dbg !2433 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2435, metadata !DIExpression()), !dbg !2438
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2436, metadata !DIExpression()), !dbg !2439
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #6, !dbg !2440
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2437, metadata !DIExpression()), !dbg !2441
  %6 = load ptr, ptr %3, align 4, !dbg !2442
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 2, !dbg !2443
  %8 = load ptr, ptr %7, align 4, !dbg !2443
  store ptr %8, ptr %5, align 4, !dbg !2441
  %9 = load ptr, ptr %5, align 4, !dbg !2444
  %10 = getelementptr inbounds %struct.clock_control_driver_api, ptr %9, i32 0, i32 0, !dbg !2445
  %11 = load ptr, ptr %10, align 4, !dbg !2445
  %12 = load ptr, ptr %3, align 4, !dbg !2446
  %13 = load ptr, ptr %4, align 4, !dbg !2447
  %14 = call i32 %11(ptr noundef %12, ptr noundef %13) #5, !dbg !2444
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #6, !dbg !2448
  ret i32 %14, !dbg !2449
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @clock_control_off(ptr noundef %0, ptr noundef %1) #0 !dbg !2450 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2452, metadata !DIExpression()), !dbg !2455
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2453, metadata !DIExpression()), !dbg !2456
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #6, !dbg !2457
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2454, metadata !DIExpression()), !dbg !2458
  %6 = load ptr, ptr %3, align 4, !dbg !2459
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 2, !dbg !2460
  %8 = load ptr, ptr %7, align 4, !dbg !2460
  store ptr %8, ptr %5, align 4, !dbg !2458
  %9 = load ptr, ptr %5, align 4, !dbg !2461
  %10 = getelementptr inbounds %struct.clock_control_driver_api, ptr %9, i32 0, i32 1, !dbg !2462
  %11 = load ptr, ptr %10, align 4, !dbg !2462
  %12 = load ptr, ptr %3, align 4, !dbg !2463
  %13 = load ptr, ptr %4, align 4, !dbg !2464
  %14 = call i32 %11(ptr noundef %12, ptr noundef %13) #5, !dbg !2461
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #6, !dbg !2465
  ret i32 %14, !dbg !2466
}

attributes #0 = { inlinehint nounwind optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { optsize }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!405, !406, !407, !408, !409, !410}
!llvm.ident = !{!411}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 757, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "drivers/gpio/gpio_stm32.c", directory: "/home/sri/zephyrproject/zephyr")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 14)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "gpio_stm32_cfg_a", scope: !9, file: !2, line: 757, type: !385, isLocal: true, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C99, file: !10, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, retainedTypes: !121, globals: !294, splitDebugInlining: false, nameTableKind: None)
!10 = !DIFile(filename: "gpio_stm32.c", directory: "/home/sri/zephyrproject/zephyr/build")
!11 = !{!12, !95, !102, !107, !114}
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
!95 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gpio_int_mode", file: !96, line: 766, baseType: !97, size: 32, elements: !98)
!96 = !DIFile(filename: "include/zephyr/drivers/gpio.h", directory: "/home/sri/zephyrproject/zephyr")
!97 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!98 = !{!99, !100, !101}
!99 = !DIEnumerator(name: "GPIO_INT_MODE_DISABLED", value: 2097152)
!100 = !DIEnumerator(name: "GPIO_INT_MODE_LEVEL", value: 4194304)
!101 = !DIEnumerator(name: "GPIO_INT_MODE_EDGE", value: 20971520)
!102 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gpio_int_trig", file: !96, line: 776, baseType: !97, size: 32, elements: !103)
!103 = !{!104, !105, !106}
!104 = !DIEnumerator(name: "GPIO_INT_TRIG_LOW", value: 33554432)
!105 = !DIEnumerator(name: "GPIO_INT_TRIG_HIGH", value: 67108864)
!106 = !DIEnumerator(name: "GPIO_INT_TRIG_BOTH", value: 100663296)
!107 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "stm32_exti_trigger", file: !108, line: 45, baseType: !14, size: 8, elements: !109)
!108 = !DIFile(filename: "include/zephyr/drivers/interrupt_controller/exti_stm32.h", directory: "/home/sri/zephyrproject/zephyr")
!109 = !{!110, !111, !112, !113}
!110 = !DIEnumerator(name: "STM32_EXTI_TRIG_NONE", value: 0)
!111 = !DIEnumerator(name: "STM32_EXTI_TRIG_RISING", value: 1)
!112 = !DIEnumerator(name: "STM32_EXTI_TRIG_FALLING", value: 2)
!113 = !DIEnumerator(name: "STM32_EXTI_TRIG_BOTH", value: 3)
!114 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "clock_control_status", file: !115, line: 44, baseType: !14, size: 8, elements: !116)
!115 = !DIFile(filename: "include/zephyr/drivers/clock_control.h", directory: "/home/sri/zephyrproject/zephyr")
!116 = !{!117, !118, !119, !120}
!117 = !DIEnumerator(name: "CLOCK_CONTROL_STATUS_STARTING", value: 0)
!118 = !DIEnumerator(name: "CLOCK_CONTROL_STATUS_OFF", value: 1)
!119 = !DIEnumerator(name: "CLOCK_CONTROL_STATUS_ON", value: 2)
!120 = !DIEnumerator(name: "CLOCK_CONTROL_STATUS_UNKNOWN", value: 3)
!121 = !{!122, !123, !124, !202, !207, !167, !102, !95, !212, !213, !156, !232, !182, !251, !252, !253}
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!123 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 32)
!125 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !126)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gpio_driver_api", file: !96, line: 788, size: 288, elements: !127)
!127 = !{!128, !157, !163, !168, !172, !173, !174, !178, !198}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "pin_configure", scope: !126, file: !96, line: 789, baseType: !129, size: 32)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 32)
!130 = !DISubroutineType(types: !131)
!131 = !{!123, !132, !154, !155}
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 32)
!133 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !134)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !135, line: 381, size: 160, elements: !136)
!135 = !DIFile(filename: "include/zephyr/device.h", directory: "/home/sri/zephyrproject/zephyr")
!136 = !{!137, !140, !143, !144, !153}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !134, file: !135, line: 383, baseType: !138, size: 32)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 32)
!139 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !134, file: !135, line: 385, baseType: !141, size: 32, offset: 32)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 32)
!142 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "api", scope: !134, file: !135, line: 387, baseType: !141, size: 32, offset: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !134, file: !135, line: 389, baseType: !145, size: 32, offset: 96)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 32)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_state", file: !135, line: 354, size: 16, elements: !147)
!147 = !{!148, !151}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "init_res", scope: !146, file: !135, line: 362, baseType: !149, size: 8)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !150, line: 62, baseType: !14)
!150 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/stdint.h", directory: "")
!151 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !146, file: !135, line: 367, baseType: !152, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 8)
!152 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !134, file: !135, line: 391, baseType: !122, size: 32, offset: 128)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpio_pin_t", file: !96, line: 252, baseType: !149)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpio_flags_t", file: !96, line: 272, baseType: !156)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !150, line: 64, baseType: !97)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "port_get_raw", scope: !126, file: !96, line: 795, baseType: !158, size: 32, offset: 32)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 32)
!159 = !DISubroutineType(types: !160)
!160 = !{!123, !132, !161}
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 32)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpio_port_value_t", file: !96, line: 244, baseType: !156)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "port_set_masked_raw", scope: !126, file: !96, line: 797, baseType: !164, size: 32, offset: 64)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 32)
!165 = !DISubroutineType(types: !166)
!166 = !{!123, !132, !167, !162}
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpio_port_pins_t", file: !96, line: 231, baseType: !156)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "port_set_bits_raw", scope: !126, file: !96, line: 800, baseType: !169, size: 32, offset: 96)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 32)
!170 = !DISubroutineType(types: !171)
!171 = !{!123, !132, !167}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "port_clear_bits_raw", scope: !126, file: !96, line: 802, baseType: !169, size: 32, offset: 128)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "port_toggle_bits", scope: !126, file: !96, line: 804, baseType: !169, size: 32, offset: 160)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "pin_interrupt_configure", scope: !126, file: !96, line: 806, baseType: !175, size: 32, offset: 192)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 32)
!176 = !DISubroutineType(types: !177)
!177 = !{!123, !132, !154, !95, !102}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "manage_callback", scope: !126, file: !96, line: 809, baseType: !179, size: 32, offset: 224)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 32)
!180 = !DISubroutineType(types: !181)
!181 = !{!123, !132, !182, !152}
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 32)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gpio_callback", file: !96, line: 738, size: 96, elements: !184)
!184 = !{!185, !192, !197}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !183, file: !96, line: 742, baseType: !186, size: 32)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_snode_t", file: !187, line: 39, baseType: !188)
!187 = !DIFile(filename: "include/zephyr/sys/slist.h", directory: "/home/sri/zephyrproject/zephyr")
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_snode", file: !187, line: 33, size: 32, elements: !189)
!189 = !{!190}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !188, file: !187, line: 34, baseType: !191, size: 32)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 32)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !183, file: !96, line: 745, baseType: !193, size: 32, offset: 32)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpio_callback_handler_t", file: !96, line: 724, baseType: !194)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 32)
!195 = !DISubroutineType(types: !196)
!196 = !{null, !132, !182, !167}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "pin_mask", scope: !183, file: !96, line: 753, baseType: !167, size: 32, offset: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "get_pending_int", scope: !126, file: !96, line: 812, baseType: !199, size: 32, offset: 256)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 32)
!200 = !DISubroutineType(types: !201)
!201 = !{!156, !132}
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 32)
!203 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !204)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gpio_driver_config", file: !96, line: 688, size: 32, elements: !205)
!205 = !{!206}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "port_pin_mask", scope: !204, file: !96, line: 694, baseType: !167, size: 32)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 32)
!208 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !209)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gpio_driver_data", file: !96, line: 701, size: 32, elements: !210)
!210 = !{!211}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "invert", scope: !209, file: !96, line: 707, baseType: !167, size: 32)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 32)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 32)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "GPIO_TypeDef", file: !215, line: 383, baseType: !216)
!215 = !DIFile(filename: "modules/hal/stm32/stm32cube/stm32f0xx/soc/stm32f091xc.h", directory: "/home/sri/zephyrproject")
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !215, line: 371, size: 352, elements: !217)
!217 = !{!218, !220, !221, !222, !223, !224, !225, !226, !227, !231}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "MODER", scope: !216, file: !215, line: 373, baseType: !219, size: 32)
!219 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !156)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "OTYPER", scope: !216, file: !215, line: 374, baseType: !219, size: 32, offset: 32)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "OSPEEDR", scope: !216, file: !215, line: 375, baseType: !219, size: 32, offset: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "PUPDR", scope: !216, file: !215, line: 376, baseType: !219, size: 32, offset: 96)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "IDR", scope: !216, file: !215, line: 377, baseType: !219, size: 32, offset: 128)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "ODR", scope: !216, file: !215, line: 378, baseType: !219, size: 32, offset: 160)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "BSRR", scope: !216, file: !215, line: 379, baseType: !219, size: 32, offset: 192)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "LCKR", scope: !216, file: !215, line: 380, baseType: !219, size: 32, offset: 224)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "AFR", scope: !216, file: !215, line: 381, baseType: !228, size: 64, offset: 256)
!228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 64, elements: !229)
!229 = !{!230}
!230 = !DISubrange(count: 2)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "BRR", scope: !216, file: !215, line: 382, baseType: !219, size: 32, offset: 320)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 32)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "SYSCFG_TypeDef", file: !215, line: 397, baseType: !234)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !215, line: 389, size: 2048, elements: !235)
!235 = !{!236, !237, !238, !242, !243, !247}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "CFGR1", scope: !234, file: !215, line: 391, baseType: !219, size: 32)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED", scope: !234, file: !215, line: 392, baseType: !156, size: 32, offset: 32)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "EXTICR", scope: !234, file: !215, line: 393, baseType: !239, size: 128, offset: 64)
!239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 128, elements: !240)
!240 = !{!241}
!241 = !DISubrange(count: 4)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "CFGR2", scope: !234, file: !215, line: 394, baseType: !219, size: 32, offset: 192)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED1", scope: !234, file: !215, line: 395, baseType: !244, size: 800, offset: 224)
!244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 800, elements: !245)
!245 = !{!246}
!246 = !DISubrange(count: 25)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "IT_LINE_SR", scope: !234, file: !215, line: 396, baseType: !248, size: 1024, offset: 1024)
!248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 1024, elements: !249)
!249 = !{!250}
!250 = !DISubrange(count: 32)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 32)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "clock_control_subsys_t", file: !115, line: 56, baseType: !122)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 32)
!254 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !255)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clock_control_driver_api", file: !115, line: 100, size: 224, elements: !256)
!256 = !{!257, !262, !263, !272, !278, !283, !289}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "on", scope: !255, file: !115, line: 101, baseType: !258, size: 32)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "clock_control", file: !115, line: 76, baseType: !259)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 32)
!260 = !DISubroutineType(types: !261)
!261 = !{!123, !132, !252}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "off", scope: !255, file: !115, line: 102, baseType: !258, size: 32, offset: 32)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "async_on", scope: !255, file: !115, line: 103, baseType: !264, size: 32, offset: 64)
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "clock_control_async_on_fn", file: !115, line: 83, baseType: !265)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 32)
!266 = !DISubroutineType(types: !267)
!267 = !{!123, !132, !252, !268, !122}
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "clock_control_cb_t", file: !115, line: 72, baseType: !269)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 32)
!270 = !DISubroutineType(types: !271)
!271 = !{null, !132, !252, !122}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "get_rate", scope: !255, file: !115, line: 104, baseType: !273, size: 32, offset: 96)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "clock_control_get", file: !115, line: 79, baseType: !274)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 32)
!275 = !DISubroutineType(types: !276)
!276 = !{!123, !132, !252, !277}
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 32)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "get_status", scope: !255, file: !115, line: 105, baseType: !279, size: 32, offset: 128)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "clock_control_get_status_fn", file: !115, line: 88, baseType: !280)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 32)
!281 = !DISubroutineType(types: !282)
!282 = !{!114, !132, !252}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "set_rate", scope: !255, file: !115, line: 106, baseType: !284, size: 32, offset: 160)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "clock_control_set", file: !115, line: 92, baseType: !285)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 32)
!286 = !DISubroutineType(types: !287)
!287 = !{!123, !132, !252, !288}
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "clock_control_subsys_rate_t", file: !115, line: 64, baseType: !122)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "configure", scope: !255, file: !115, line: 107, baseType: !290, size: 32, offset: 192)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "clock_control_configure_fn", file: !115, line: 96, baseType: !291)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 32)
!292 = !DISubroutineType(types: !293)
!293 = !{!123, !132, !252, !122}
!294 = !{!0, !295, !297, !315, !317, !319, !321, !323, !325, !327, !329, !331, !333, !335, !337, !339, !341, !343, !345, !359, !361, !363, !365, !367, !369, !371, !373, !375, !377, !379, !7, !381, !383, !397, !399, !401, !403}
!295 = !DIGlobalVariableExpression(var: !296, expr: !DIExpression())
!296 = distinct !DIGlobalVariable(name: "__device_dts_ord_28", scope: !9, file: !2, line: 757, type: !133, isLocal: false, isDefinition: true, align: 32)
!297 = !DIGlobalVariableExpression(var: !298, expr: !DIExpression())
!298 = distinct !DIGlobalVariable(name: "__init___device_dts_ord_28", scope: !9, file: !2, line: 757, type: !299, isLocal: true, isDefinition: true, align: 32)
!299 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !300)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "init_entry", file: !301, line: 92, size: 64, elements: !302)
!301 = !DIFile(filename: "include/zephyr/init.h", directory: "/home/sri/zephyrproject/zephyr")
!302 = !{!303, !314}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "init_fn", scope: !300, file: !301, line: 94, baseType: !304, size: 32)
!304 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "init_function", file: !301, line: 59, size: 32, elements: !305)
!305 = !{!306, !310}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "sys", scope: !304, file: !301, line: 66, baseType: !307, size: 32)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 32)
!308 = !DISubroutineType(types: !309)
!309 = !{!123}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !304, file: !301, line: 75, baseType: !311, size: 32)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 32)
!312 = !DISubroutineType(types: !313)
!313 = !{!123, !132}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !300, file: !301, line: 99, baseType: !132, size: 32, offset: 32)
!315 = !DIGlobalVariableExpression(var: !316, expr: !DIExpression())
!316 = distinct !DIGlobalVariable(scope: null, file: !2, line: 761, type: !3, isLocal: true, isDefinition: true)
!317 = !DIGlobalVariableExpression(var: !318, expr: !DIExpression())
!318 = distinct !DIGlobalVariable(name: "__device_dts_ord_81", scope: !9, file: !2, line: 761, type: !133, isLocal: false, isDefinition: true, align: 32)
!319 = !DIGlobalVariableExpression(var: !320, expr: !DIExpression())
!320 = distinct !DIGlobalVariable(name: "__init___device_dts_ord_81", scope: !9, file: !2, line: 761, type: !299, isLocal: true, isDefinition: true, align: 32)
!321 = !DIGlobalVariableExpression(var: !322, expr: !DIExpression())
!322 = distinct !DIGlobalVariable(scope: null, file: !2, line: 765, type: !3, isLocal: true, isDefinition: true)
!323 = !DIGlobalVariableExpression(var: !324, expr: !DIExpression())
!324 = distinct !DIGlobalVariable(name: "__device_dts_ord_25", scope: !9, file: !2, line: 765, type: !133, isLocal: false, isDefinition: true, align: 32)
!325 = !DIGlobalVariableExpression(var: !326, expr: !DIExpression())
!326 = distinct !DIGlobalVariable(name: "__init___device_dts_ord_25", scope: !9, file: !2, line: 765, type: !299, isLocal: true, isDefinition: true, align: 32)
!327 = !DIGlobalVariableExpression(var: !328, expr: !DIExpression())
!328 = distinct !DIGlobalVariable(scope: null, file: !2, line: 769, type: !3, isLocal: true, isDefinition: true)
!329 = !DIGlobalVariableExpression(var: !330, expr: !DIExpression())
!330 = distinct !DIGlobalVariable(name: "__device_dts_ord_82", scope: !9, file: !2, line: 769, type: !133, isLocal: false, isDefinition: true, align: 32)
!331 = !DIGlobalVariableExpression(var: !332, expr: !DIExpression())
!332 = distinct !DIGlobalVariable(name: "__init___device_dts_ord_82", scope: !9, file: !2, line: 769, type: !299, isLocal: true, isDefinition: true, align: 32)
!333 = !DIGlobalVariableExpression(var: !334, expr: !DIExpression())
!334 = distinct !DIGlobalVariable(scope: null, file: !2, line: 773, type: !3, isLocal: true, isDefinition: true)
!335 = !DIGlobalVariableExpression(var: !336, expr: !DIExpression())
!336 = distinct !DIGlobalVariable(name: "__device_dts_ord_83", scope: !9, file: !2, line: 773, type: !133, isLocal: false, isDefinition: true, align: 32)
!337 = !DIGlobalVariableExpression(var: !338, expr: !DIExpression())
!338 = distinct !DIGlobalVariable(name: "__init___device_dts_ord_83", scope: !9, file: !2, line: 773, type: !299, isLocal: true, isDefinition: true, align: 32)
!339 = !DIGlobalVariableExpression(var: !340, expr: !DIExpression())
!340 = distinct !DIGlobalVariable(scope: null, file: !2, line: 777, type: !3, isLocal: true, isDefinition: true)
!341 = !DIGlobalVariableExpression(var: !342, expr: !DIExpression())
!342 = distinct !DIGlobalVariable(name: "__device_dts_ord_84", scope: !9, file: !2, line: 777, type: !133, isLocal: false, isDefinition: true, align: 32)
!343 = !DIGlobalVariableExpression(var: !344, expr: !DIExpression())
!344 = distinct !DIGlobalVariable(name: "__init___device_dts_ord_84", scope: !9, file: !2, line: 777, type: !299, isLocal: true, isDefinition: true, align: 32)
!345 = !DIGlobalVariableExpression(var: !346, expr: !DIExpression())
!346 = distinct !DIGlobalVariable(name: "gpio_stm32_data_a", scope: !9, file: !2, line: 757, type: !347, isLocal: true, isDefinition: true)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gpio_stm32_data", file: !348, line: 241, size: 128, elements: !349)
!348 = !DIFile(filename: "drivers/gpio/gpio_stm32.h", directory: "/home/sri/zephyrproject/zephyr")
!349 = !{!350, !351, !352}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !347, file: !348, line: 243, baseType: !209, size: 32)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !347, file: !348, line: 245, baseType: !132, size: 32, offset: 32)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !347, file: !348, line: 247, baseType: !353, size: 64, offset: 64)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_slist_t", file: !187, line: 49, baseType: !354)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_slist", file: !187, line: 42, size: 64, elements: !355)
!355 = !{!356, !358}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !354, file: !187, line: 43, baseType: !357, size: 32)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 32)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !354, file: !187, line: 44, baseType: !357, size: 32, offset: 32)
!359 = !DIGlobalVariableExpression(var: !360, expr: !DIExpression())
!360 = distinct !DIGlobalVariable(name: "__devstate_dts_ord_28", scope: !9, file: !2, line: 757, type: !146, isLocal: true, isDefinition: true, align: 8)
!361 = !DIGlobalVariableExpression(var: !362, expr: !DIExpression())
!362 = distinct !DIGlobalVariable(name: "gpio_stm32_data_b", scope: !9, file: !2, line: 761, type: !347, isLocal: true, isDefinition: true)
!363 = !DIGlobalVariableExpression(var: !364, expr: !DIExpression())
!364 = distinct !DIGlobalVariable(name: "__devstate_dts_ord_81", scope: !9, file: !2, line: 761, type: !146, isLocal: true, isDefinition: true, align: 8)
!365 = !DIGlobalVariableExpression(var: !366, expr: !DIExpression())
!366 = distinct !DIGlobalVariable(name: "gpio_stm32_data_c", scope: !9, file: !2, line: 765, type: !347, isLocal: true, isDefinition: true)
!367 = !DIGlobalVariableExpression(var: !368, expr: !DIExpression())
!368 = distinct !DIGlobalVariable(name: "__devstate_dts_ord_25", scope: !9, file: !2, line: 765, type: !146, isLocal: true, isDefinition: true, align: 8)
!369 = !DIGlobalVariableExpression(var: !370, expr: !DIExpression())
!370 = distinct !DIGlobalVariable(name: "gpio_stm32_data_d", scope: !9, file: !2, line: 769, type: !347, isLocal: true, isDefinition: true)
!371 = !DIGlobalVariableExpression(var: !372, expr: !DIExpression())
!372 = distinct !DIGlobalVariable(name: "__devstate_dts_ord_82", scope: !9, file: !2, line: 769, type: !146, isLocal: true, isDefinition: true, align: 8)
!373 = !DIGlobalVariableExpression(var: !374, expr: !DIExpression())
!374 = distinct !DIGlobalVariable(name: "gpio_stm32_data_e", scope: !9, file: !2, line: 773, type: !347, isLocal: true, isDefinition: true)
!375 = !DIGlobalVariableExpression(var: !376, expr: !DIExpression())
!376 = distinct !DIGlobalVariable(name: "__devstate_dts_ord_83", scope: !9, file: !2, line: 773, type: !146, isLocal: true, isDefinition: true, align: 8)
!377 = !DIGlobalVariableExpression(var: !378, expr: !DIExpression())
!378 = distinct !DIGlobalVariable(name: "gpio_stm32_data_f", scope: !9, file: !2, line: 777, type: !347, isLocal: true, isDefinition: true)
!379 = !DIGlobalVariableExpression(var: !380, expr: !DIExpression())
!380 = distinct !DIGlobalVariable(name: "__devstate_dts_ord_84", scope: !9, file: !2, line: 777, type: !146, isLocal: true, isDefinition: true, align: 8)
!381 = !DIGlobalVariableExpression(var: !382, expr: !DIExpression())
!382 = distinct !DIGlobalVariable(name: "gpio_stm32_driver", scope: !9, file: !2, line: 655, type: !125, isLocal: true, isDefinition: true)
!383 = !DIGlobalVariableExpression(var: !384, expr: !DIExpression())
!384 = distinct !DIGlobalVariable(name: "gpio_stm32_cfg_b", scope: !9, file: !2, line: 761, type: !385, isLocal: true, isDefinition: true)
!385 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !386)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gpio_stm32_config", file: !348, line: 228, size: 160, elements: !387)
!387 = !{!388, !389, !390, !391}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !386, file: !348, line: 230, baseType: !204, size: 32)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !386, file: !348, line: 232, baseType: !277, size: 32, offset: 32)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !386, file: !348, line: 234, baseType: !123, size: 32, offset: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "pclken", scope: !386, file: !348, line: 235, baseType: !392, size: 64, offset: 96)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stm32_pclken", file: !393, line: 396, size: 64, elements: !394)
!393 = !DIFile(filename: "include/zephyr/drivers/clock_control/stm32_clock_control.h", directory: "/home/sri/zephyrproject/zephyr")
!394 = !{!395, !396}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !392, file: !393, line: 397, baseType: !156, size: 32)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "enr", scope: !392, file: !393, line: 398, baseType: !156, size: 32, offset: 32)
!397 = !DIGlobalVariableExpression(var: !398, expr: !DIExpression())
!398 = distinct !DIGlobalVariable(name: "gpio_stm32_cfg_c", scope: !9, file: !2, line: 765, type: !385, isLocal: true, isDefinition: true)
!399 = !DIGlobalVariableExpression(var: !400, expr: !DIExpression())
!400 = distinct !DIGlobalVariable(name: "gpio_stm32_cfg_d", scope: !9, file: !2, line: 769, type: !385, isLocal: true, isDefinition: true)
!401 = !DIGlobalVariableExpression(var: !402, expr: !DIExpression())
!402 = distinct !DIGlobalVariable(name: "gpio_stm32_cfg_e", scope: !9, file: !2, line: 773, type: !385, isLocal: true, isDefinition: true)
!403 = !DIGlobalVariableExpression(var: !404, expr: !DIExpression())
!404 = distinct !DIGlobalVariable(name: "gpio_stm32_cfg_f", scope: !9, file: !2, line: 777, type: !385, isLocal: true, isDefinition: true)
!405 = !{i32 7, !"Dwarf Version", i32 4}
!406 = !{i32 2, !"Debug Info Version", i32 3}
!407 = !{i32 1, !"wchar_size", i32 4}
!408 = !{i32 1, !"static_rwdata", i32 1}
!409 = !{i32 1, !"enumsize_buildattr", i32 1}
!410 = !{i32 1, !"armlib_unavailable", i32 0}
!411 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
!412 = distinct !DISubprogram(name: "z_impl_k_object_access_grant", scope: !13, file: !13, line: 223, type: !413, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !528)
!413 = !DISubroutineType(types: !414)
!414 = !{null, !141, !415}
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 32)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_thread", file: !417, line: 250, size: 896, elements: !418)
!417 = !DIFile(filename: "include/zephyr/kernel/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!418 = !{!419, !486, !499, !500, !501, !502, !523}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !416, file: !417, line: 252, baseType: !420, size: 384)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_base", file: !417, line: 58, size: 384, elements: !421)
!421 = !{!422, !448, !456, !457, !458, !471, !472, !473}
!422 = !DIDerivedType(tag: DW_TAG_member, scope: !420, file: !417, line: 61, baseType: !423, size: 64)
!423 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !420, file: !417, line: 61, size: 64, elements: !424)
!424 = !{!425, !441}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_dlist", scope: !423, file: !417, line: 62, baseType: !426, size: 64)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dnode_t", file: !427, line: 55, baseType: !428)
!427 = !DIFile(filename: "include/zephyr/sys/dlist.h", directory: "/home/sri/zephyrproject/zephyr")
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_dnode", file: !427, line: 37, size: 64, elements: !429)
!429 = !{!430, !436}
!430 = !DIDerivedType(tag: DW_TAG_member, scope: !428, file: !427, line: 38, baseType: !431, size: 32)
!431 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !428, file: !427, line: 38, size: 32, elements: !432)
!432 = !{!433, !435}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !431, file: !427, line: 39, baseType: !434, size: 32)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 32)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !431, file: !427, line: 40, baseType: !434, size: 32)
!436 = !DIDerivedType(tag: DW_TAG_member, scope: !428, file: !427, line: 42, baseType: !437, size: 32, offset: 32)
!437 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !428, file: !427, line: 42, size: 32, elements: !438)
!438 = !{!439, !440}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !437, file: !427, line: 43, baseType: !434, size: 32)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !437, file: !427, line: 44, baseType: !434, size: 32)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_rb", scope: !423, file: !417, line: 63, baseType: !442, size: 64)
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rbnode", file: !443, line: 58, size: 64, elements: !444)
!443 = !DIFile(filename: "include/zephyr/sys/rb.h", directory: "/home/sri/zephyrproject/zephyr")
!444 = !{!445}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !442, file: !443, line: 60, baseType: !446, size: 64)
!446 = !DICompositeType(tag: DW_TAG_array_type, baseType: !447, size: 64, elements: !229)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 32)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "pended_on", scope: !420, file: !417, line: 69, baseType: !449, size: 32, offset: 64)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 32)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "_wait_q_t", file: !451, line: 243, baseType: !452)
!451 = !DIFile(filename: "include/zephyr/kernel_structs.h", directory: "/home/sri/zephyrproject/zephyr")
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !451, line: 241, size: 64, elements: !453)
!453 = !{!454}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !452, file: !451, line: 242, baseType: !455, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dlist_t", file: !427, line: 51, baseType: !428)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "user_options", scope: !420, file: !417, line: 72, baseType: !149, size: 8, offset: 96)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "thread_state", scope: !420, file: !417, line: 75, baseType: !149, size: 8, offset: 104)
!458 = !DIDerivedType(tag: DW_TAG_member, scope: !420, file: !417, line: 91, baseType: !459, size: 16, offset: 112)
!459 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !420, file: !417, line: 91, size: 16, elements: !460)
!460 = !{!461, !468}
!461 = !DIDerivedType(tag: DW_TAG_member, scope: !459, file: !417, line: 92, baseType: !462, size: 16)
!462 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !459, file: !417, line: 92, size: 16, elements: !463)
!463 = !{!464, !467}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !462, file: !417, line: 97, baseType: !465, size: 8)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !150, line: 56, baseType: !466)
!466 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "sched_locked", scope: !462, file: !417, line: 98, baseType: !149, size: 8, offset: 8)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "preempt", scope: !459, file: !417, line: 101, baseType: !469, size: 16)
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !150, line: 63, baseType: !470)
!470 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "order_key", scope: !420, file: !417, line: 108, baseType: !156, size: 32, offset: 128)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "swap_data", scope: !420, file: !417, line: 132, baseType: !122, size: 32, offset: 160)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !420, file: !417, line: 136, baseType: !474, size: 192, offset: 192)
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_timeout", file: !451, line: 254, size: 192, elements: !475)
!475 = !{!476, !477, !483}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !474, file: !451, line: 255, baseType: !426, size: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !474, file: !451, line: 256, baseType: !478, size: 32, offset: 64)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "_timeout_func_t", file: !451, line: 252, baseType: !479)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 32)
!480 = !DISubroutineType(types: !481)
!481 = !{null, !482}
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 32)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "dticks", scope: !474, file: !451, line: 259, baseType: !484, size: 64, offset: 128)
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !150, line: 59, baseType: !485)
!485 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "callee_saved", scope: !416, file: !417, line: 255, baseType: !487, size: 288, offset: 384)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_callee_saved", file: !488, line: 25, size: 288, elements: !489)
!488 = !DIFile(filename: "include/zephyr/arch/arm/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!489 = !{!490, !491, !492, !493, !494, !495, !496, !497, !498}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "v1", scope: !487, file: !488, line: 26, baseType: !156, size: 32)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "v2", scope: !487, file: !488, line: 27, baseType: !156, size: 32, offset: 32)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "v3", scope: !487, file: !488, line: 28, baseType: !156, size: 32, offset: 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "v4", scope: !487, file: !488, line: 29, baseType: !156, size: 32, offset: 96)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "v5", scope: !487, file: !488, line: 30, baseType: !156, size: 32, offset: 128)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "v6", scope: !487, file: !488, line: 31, baseType: !156, size: 32, offset: 160)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "v7", scope: !487, file: !488, line: 32, baseType: !156, size: 32, offset: 192)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "v8", scope: !487, file: !488, line: 33, baseType: !156, size: 32, offset: 224)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "psp", scope: !487, file: !488, line: 34, baseType: !156, size: 32, offset: 256)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "init_data", scope: !416, file: !417, line: 258, baseType: !122, size: 32, offset: 672)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "join_queue", scope: !416, file: !417, line: 261, baseType: !450, size: 64, offset: 704)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "errno_var", scope: !416, file: !417, line: 302, baseType: !123, size: 32, offset: 768)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "resource_pool", scope: !416, file: !417, line: 333, baseType: !503, size: 32, offset: 800)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 32)
!504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_heap", file: !505, line: 5291, size: 160, elements: !506)
!505 = !DIFile(filename: "include/zephyr/kernel.h", directory: "/home/sri/zephyrproject/zephyr")
!506 = !{!507, !518, !519}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !504, file: !505, line: 5292, baseType: !508, size: 96)
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sys_heap", file: !509, line: 56, size: 96, elements: !510)
!509 = !DIFile(filename: "include/zephyr/sys/sys_heap.h", directory: "/home/sri/zephyrproject/zephyr")
!510 = !{!511, !514, !515}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !508, file: !509, line: 57, baseType: !512, size: 32)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 32)
!513 = !DICompositeType(tag: DW_TAG_structure_type, name: "z_heap", file: !509, line: 57, flags: DIFlagFwdDecl)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "init_mem", scope: !508, file: !509, line: 58, baseType: !122, size: 32, offset: 32)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "init_bytes", scope: !508, file: !509, line: 59, baseType: !516, size: 32, offset: 64)
!516 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !517, line: 46, baseType: !97)
!517 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/lib/clang/17/include/stddef.h", directory: "")
!518 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !504, file: !505, line: 5293, baseType: !450, size: 64, offset: 96)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !504, file: !505, line: 5294, baseType: !520, offset: 160)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_spinlock", file: !521, line: 45, elements: !522)
!521 = !DIFile(filename: "include/zephyr/spinlock.h", directory: "/home/sri/zephyrproject/zephyr")
!522 = !{}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !416, file: !417, line: 355, baseType: !524, size: 64, offset: 832)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_arch", file: !488, line: 60, size: 64, elements: !525)
!525 = !{!526, !527}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "basepri", scope: !524, file: !488, line: 63, baseType: !156, size: 32)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "swap_return_value", scope: !524, file: !488, line: 66, baseType: !156, size: 32, offset: 32)
!528 = !{!529, !530}
!529 = !DILocalVariable(name: "object", arg: 1, scope: !412, file: !13, line: 223, type: !141)
!530 = !DILocalVariable(name: "thread", arg: 2, scope: !412, file: !13, line: 224, type: !415)
!531 = !DILocation(line: 223, column: 61, scope: !412)
!532 = !DILocation(line: 224, column: 24, scope: !412)
!533 = !DILocation(line: 226, column: 9, scope: !412)
!534 = !DILocation(line: 227, column: 9, scope: !412)
!535 = !DILocation(line: 228, column: 1, scope: !412)
!536 = distinct !DISubprogram(name: "z_impl_k_object_release", scope: !13, file: !13, line: 243, type: !537, scopeLine: 244, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !539)
!537 = !DISubroutineType(types: !538)
!538 = !{null, !141}
!539 = !{!540}
!540 = !DILocalVariable(name: "object", arg: 1, scope: !536, file: !13, line: 243, type: !141)
!541 = !DILocation(line: 243, column: 56, scope: !536)
!542 = !DILocation(line: 245, column: 9, scope: !536)
!543 = !DILocation(line: 246, column: 1, scope: !536)
!544 = distinct !DISubprogram(name: "z_impl_k_object_alloc", scope: !13, file: !13, line: 359, type: !545, scopeLine: 360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !547)
!545 = !DISubroutineType(types: !546)
!546 = !{!122, !12}
!547 = !{!548}
!548 = !DILocalVariable(name: "otype", arg: 1, scope: !544, file: !13, line: 359, type: !12)
!549 = !DILocation(line: 359, column: 58, scope: !544)
!550 = !DILocation(line: 361, column: 9, scope: !544)
!551 = !DILocation(line: 363, column: 2, scope: !544)
!552 = distinct !DISubprogram(name: "z_impl_k_object_alloc_size", scope: !13, file: !13, line: 366, type: !553, scopeLine: 368, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !555)
!553 = !DISubroutineType(types: !554)
!554 = !{!122, !12, !516}
!555 = !{!556, !557}
!556 = !DILocalVariable(name: "otype", arg: 1, scope: !552, file: !13, line: 366, type: !12)
!557 = !DILocalVariable(name: "size", arg: 2, scope: !552, file: !13, line: 367, type: !516)
!558 = !DILocation(line: 366, column: 63, scope: !552)
!559 = !DILocation(line: 367, column: 13, scope: !552)
!560 = !DILocation(line: 369, column: 9, scope: !552)
!561 = !DILocation(line: 370, column: 9, scope: !552)
!562 = !DILocation(line: 372, column: 2, scope: !552)
!563 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_expires_ticks", scope: !505, file: !505, line: 656, type: !564, scopeLine: 658, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !570)
!564 = !DISubroutineType(types: !565)
!565 = !{!566, !568}
!566 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_ticks_t", file: !567, line: 46, baseType: !484)
!567 = !DIFile(filename: "include/zephyr/sys_clock.h", directory: "/home/sri/zephyrproject/zephyr")
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 32)
!569 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !416)
!570 = !{!571}
!571 = !DILocalVariable(name: "t", arg: 1, scope: !563, file: !505, line: 657, type: !568)
!572 = !DILocation(line: 657, column: 30, scope: !563)
!573 = !DILocation(line: 659, column: 28, scope: !563)
!574 = !DILocation(line: 659, column: 31, scope: !563)
!575 = !DILocation(line: 659, column: 36, scope: !563)
!576 = !DILocation(line: 659, column: 9, scope: !563)
!577 = !DILocation(line: 659, column: 2, scope: !563)
!578 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_remaining_ticks", scope: !505, file: !505, line: 671, type: !564, scopeLine: 673, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !579)
!579 = !{!580}
!580 = !DILocalVariable(name: "t", arg: 1, scope: !578, file: !505, line: 672, type: !568)
!581 = !DILocation(line: 672, column: 30, scope: !578)
!582 = !DILocation(line: 674, column: 30, scope: !578)
!583 = !DILocation(line: 674, column: 33, scope: !578)
!584 = !DILocation(line: 674, column: 38, scope: !578)
!585 = !DILocation(line: 674, column: 9, scope: !578)
!586 = !DILocation(line: 674, column: 2, scope: !578)
!587 = distinct !DISubprogram(name: "z_impl_k_timer_expires_ticks", scope: !505, file: !505, line: 1634, type: !588, scopeLine: 1636, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !609)
!588 = !DISubroutineType(types: !589)
!589 = !{!566, !590}
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 32)
!591 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !592)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_timer", file: !505, line: 1439, size: 448, elements: !593)
!593 = !{!594, !595, !596, !601, !602, !607, !608}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !592, file: !505, line: 1445, baseType: !474, size: 192)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !592, file: !505, line: 1448, baseType: !450, size: 64, offset: 192)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_fn", scope: !592, file: !505, line: 1451, baseType: !597, size: 32, offset: 256)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 32)
!598 = !DISubroutineType(types: !599)
!599 = !{null, !600}
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 32)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "stop_fn", scope: !592, file: !505, line: 1454, baseType: !597, size: 32, offset: 288)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !592, file: !505, line: 1457, baseType: !603, size: 64, offset: 320)
!603 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_timeout_t", file: !567, line: 67, baseType: !604)
!604 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !567, line: 65, size: 64, elements: !605)
!605 = !{!606}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "ticks", scope: !604, file: !567, line: 66, baseType: !566, size: 64)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !592, file: !505, line: 1460, baseType: !156, size: 32, offset: 384)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !592, file: !505, line: 1463, baseType: !122, size: 32, offset: 416)
!609 = !{!610}
!610 = !DILocalVariable(name: "timer", arg: 1, scope: !587, file: !505, line: 1635, type: !590)
!611 = !DILocation(line: 1635, column: 34, scope: !587)
!612 = !DILocation(line: 1637, column: 28, scope: !587)
!613 = !DILocation(line: 1637, column: 35, scope: !587)
!614 = !DILocation(line: 1637, column: 9, scope: !587)
!615 = !DILocation(line: 1637, column: 2, scope: !587)
!616 = distinct !DISubprogram(name: "z_impl_k_timer_remaining_ticks", scope: !505, file: !505, line: 1649, type: !588, scopeLine: 1651, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !617)
!617 = !{!618}
!618 = !DILocalVariable(name: "timer", arg: 1, scope: !616, file: !505, line: 1650, type: !590)
!619 = !DILocation(line: 1650, column: 34, scope: !616)
!620 = !DILocation(line: 1652, column: 30, scope: !616)
!621 = !DILocation(line: 1652, column: 37, scope: !616)
!622 = !DILocation(line: 1652, column: 9, scope: !616)
!623 = !DILocation(line: 1652, column: 2, scope: !616)
!624 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_set", scope: !505, file: !505, line: 1689, type: !625, scopeLine: 1691, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !627)
!625 = !DISubroutineType(types: !626)
!626 = !{null, !600, !122}
!627 = !{!628, !629}
!628 = !DILocalVariable(name: "timer", arg: 1, scope: !624, file: !505, line: 1689, type: !600)
!629 = !DILocalVariable(name: "user_data", arg: 2, scope: !624, file: !505, line: 1690, type: !122)
!630 = !DILocation(line: 1689, column: 65, scope: !624)
!631 = !DILocation(line: 1690, column: 19, scope: !624)
!632 = !DILocation(line: 1692, column: 21, scope: !624)
!633 = !DILocation(line: 1692, column: 2, scope: !624)
!634 = !DILocation(line: 1692, column: 9, scope: !624)
!635 = !DILocation(line: 1692, column: 19, scope: !624)
!636 = !DILocation(line: 1693, column: 1, scope: !624)
!637 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_get", scope: !505, file: !505, line: 1704, type: !638, scopeLine: 1705, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !640)
!638 = !DISubroutineType(types: !639)
!639 = !{!122, !590}
!640 = !{!641}
!641 = !DILocalVariable(name: "timer", arg: 1, scope: !637, file: !505, line: 1704, type: !590)
!642 = !DILocation(line: 1704, column: 72, scope: !637)
!643 = !DILocation(line: 1706, column: 9, scope: !637)
!644 = !DILocation(line: 1706, column: 16, scope: !637)
!645 = !DILocation(line: 1706, column: 2, scope: !637)
!646 = distinct !DISubprogram(name: "z_impl_k_queue_is_empty", scope: !505, file: !505, line: 2071, type: !647, scopeLine: 2072, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !667)
!647 = !DISubroutineType(types: !648)
!648 = !{!123, !649}
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 32)
!650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_queue", file: !505, line: 1830, size: 128, elements: !651)
!651 = !{!652, !665, !666}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "data_q", scope: !650, file: !505, line: 1831, baseType: !653, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sflist_t", file: !654, line: 60, baseType: !655)
!654 = !DIFile(filename: "include/zephyr/sys/sflist.h", directory: "/home/sri/zephyrproject/zephyr")
!655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sflist", file: !654, line: 53, size: 64, elements: !656)
!656 = !{!657, !664}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !655, file: !654, line: 54, baseType: !658, size: 32)
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 32)
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sfnode_t", file: !654, line: 50, baseType: !660)
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sfnode", file: !654, line: 44, size: 32, elements: !661)
!661 = !{!662}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "next_and_flags", scope: !660, file: !654, line: 45, baseType: !663, size: 32)
!663 = !DIDerivedType(tag: DW_TAG_typedef, name: "unative_t", file: !654, line: 40, baseType: !156)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !655, file: !654, line: 55, baseType: !658, size: 32, offset: 32)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !650, file: !505, line: 1832, baseType: !520, offset: 64)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !650, file: !505, line: 1833, baseType: !450, size: 64, offset: 64)
!667 = !{!668}
!668 = !DILocalVariable(name: "queue", arg: 1, scope: !646, file: !505, line: 2071, type: !649)
!669 = !DILocation(line: 2071, column: 59, scope: !646)
!670 = !DILocation(line: 2073, column: 35, scope: !646)
!671 = !DILocation(line: 2073, column: 42, scope: !646)
!672 = !DILocation(line: 2073, column: 14, scope: !646)
!673 = !DILocation(line: 2073, column: 9, scope: !646)
!674 = !DILocation(line: 2073, column: 2, scope: !646)
!675 = distinct !DISubprogram(name: "z_impl_k_sem_count_get", scope: !505, file: !505, line: 3209, type: !676, scopeLine: 3210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !684)
!676 = !DISubroutineType(types: !677)
!677 = !{!97, !678}
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 32)
!679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sem", file: !505, line: 3092, size: 128, elements: !680)
!680 = !{!681, !682, !683}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !679, file: !505, line: 3093, baseType: !450, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !679, file: !505, line: 3094, baseType: !97, size: 32, offset: 64)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !679, file: !505, line: 3095, baseType: !97, size: 32, offset: 96)
!684 = !{!685}
!685 = !DILocalVariable(name: "sem", arg: 1, scope: !675, file: !505, line: 3209, type: !678)
!686 = !DILocation(line: 3209, column: 65, scope: !675)
!687 = !DILocation(line: 3211, column: 9, scope: !675)
!688 = !DILocation(line: 3211, column: 14, scope: !675)
!689 = !DILocation(line: 3211, column: 2, scope: !675)
!690 = distinct !DISubprogram(name: "z_impl_k_msgq_num_free_get", scope: !505, file: !505, line: 4649, type: !691, scopeLine: 4650, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !706)
!691 = !DISubroutineType(types: !692)
!692 = !{!156, !693}
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 32)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_msgq", file: !505, line: 4390, size: 320, elements: !695)
!695 = !{!696, !697, !698, !699, !700, !701, !702, !703, !704, !705}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !694, file: !505, line: 4392, baseType: !450, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !694, file: !505, line: 4394, baseType: !520, offset: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "msg_size", scope: !694, file: !505, line: 4396, baseType: !516, size: 32, offset: 64)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !694, file: !505, line: 4398, baseType: !156, size: 32, offset: 96)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_start", scope: !694, file: !505, line: 4400, baseType: !251, size: 32, offset: 128)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_end", scope: !694, file: !505, line: 4402, baseType: !251, size: 32, offset: 160)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "read_ptr", scope: !694, file: !505, line: 4404, baseType: !251, size: 32, offset: 192)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "write_ptr", scope: !694, file: !505, line: 4406, baseType: !251, size: 32, offset: 224)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "used_msgs", scope: !694, file: !505, line: 4408, baseType: !156, size: 32, offset: 256)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !694, file: !505, line: 4413, baseType: !149, size: 8, offset: 288)
!706 = !{!707}
!707 = !DILocalVariable(name: "msgq", arg: 1, scope: !690, file: !505, line: 4649, type: !693)
!708 = !DILocation(line: 4649, column: 66, scope: !690)
!709 = !DILocation(line: 4651, column: 9, scope: !690)
!710 = !DILocation(line: 4651, column: 15, scope: !690)
!711 = !DILocation(line: 4651, column: 26, scope: !690)
!712 = !DILocation(line: 4651, column: 32, scope: !690)
!713 = !DILocation(line: 4651, column: 24, scope: !690)
!714 = !DILocation(line: 4651, column: 2, scope: !690)
!715 = distinct !DISubprogram(name: "z_impl_k_msgq_num_used_get", scope: !505, file: !505, line: 4665, type: !691, scopeLine: 4666, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !716)
!716 = !{!717}
!717 = !DILocalVariable(name: "msgq", arg: 1, scope: !715, file: !505, line: 4665, type: !693)
!718 = !DILocation(line: 4665, column: 66, scope: !715)
!719 = !DILocation(line: 4667, column: 9, scope: !715)
!720 = !DILocation(line: 4667, column: 15, scope: !715)
!721 = !DILocation(line: 4667, column: 2, scope: !715)
!722 = distinct !DISubprogram(name: "z_impl_device_is_ready", scope: !135, file: !135, line: 744, type: !723, scopeLine: 745, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !725)
!723 = !DISubroutineType(types: !724)
!724 = !{!152, !132}
!725 = !{!726}
!726 = !DILocalVariable(name: "dev", arg: 1, scope: !722, file: !135, line: 744, type: !132)
!727 = !DILocation(line: 744, column: 65, scope: !722)
!728 = !DILocation(line: 746, column: 27, scope: !722)
!729 = !DILocation(line: 746, column: 9, scope: !722)
!730 = !DILocation(line: 746, column: 2, scope: !722)
!731 = distinct !DISubprogram(name: "z_impl_gpio_pin_interrupt_configure", scope: !96, file: !96, line: 862, type: !130, scopeLine: 865, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !732)
!732 = !{!733, !734, !735, !736, !737, !739, !741, !742}
!733 = !DILocalVariable(name: "port", arg: 1, scope: !731, file: !96, line: 862, type: !132)
!734 = !DILocalVariable(name: "pin", arg: 2, scope: !731, file: !96, line: 863, type: !154)
!735 = !DILocalVariable(name: "flags", arg: 3, scope: !731, file: !96, line: 864, type: !155)
!736 = !DILocalVariable(name: "api", scope: !731, file: !96, line: 866, type: !124)
!737 = !DILocalVariable(name: "cfg", scope: !731, file: !96, line: 868, type: !738)
!738 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !202)
!739 = !DILocalVariable(name: "data", scope: !731, file: !96, line: 870, type: !740)
!740 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !207)
!741 = !DILocalVariable(name: "trig", scope: !731, file: !96, line: 872, type: !102)
!742 = !DILocalVariable(name: "mode", scope: !731, file: !96, line: 873, type: !95)
!743 = !DILocation(line: 862, column: 76, scope: !731)
!744 = !DILocation(line: 863, column: 24, scope: !731)
!745 = !DILocation(line: 864, column: 26, scope: !731)
!746 = !DILocation(line: 866, column: 2, scope: !731)
!747 = !DILocation(line: 866, column: 32, scope: !731)
!748 = !DILocation(line: 867, column: 35, scope: !731)
!749 = !DILocation(line: 867, column: 41, scope: !731)
!750 = !DILocation(line: 868, column: 2, scope: !731)
!751 = !DILocation(line: 868, column: 69, scope: !731)
!752 = !DILocation(line: 869, column: 38, scope: !731)
!753 = !DILocation(line: 869, column: 44, scope: !731)
!754 = !DILocation(line: 870, column: 2, scope: !731)
!755 = !DILocation(line: 870, column: 39, scope: !731)
!756 = !DILocation(line: 871, column: 36, scope: !731)
!757 = !DILocation(line: 871, column: 42, scope: !731)
!758 = !DILocation(line: 872, column: 2, scope: !731)
!759 = !DILocation(line: 872, column: 21, scope: !731)
!760 = !DILocation(line: 873, column: 2, scope: !731)
!761 = !DILocation(line: 873, column: 21, scope: !731)
!762 = !DILocation(line: 875, column: 6, scope: !763)
!763 = distinct !DILexicalBlock(scope: !731, file: !96, line: 875, column: 6)
!764 = !DILocation(line: 875, column: 11, scope: !763)
!765 = !DILocation(line: 875, column: 35, scope: !763)
!766 = !DILocation(line: 875, column: 6, scope: !731)
!767 = !DILocation(line: 876, column: 3, scope: !768)
!768 = distinct !DILexicalBlock(scope: !763, file: !96, line: 875, column: 50)
!769 = !DILocation(line: 906, column: 8, scope: !770)
!770 = distinct !DILexicalBlock(scope: !731, file: !96, line: 906, column: 6)
!771 = !DILocation(line: 906, column: 14, scope: !770)
!772 = !DILocation(line: 906, column: 28, scope: !770)
!773 = !DILocation(line: 906, column: 34, scope: !770)
!774 = !DILocation(line: 907, column: 8, scope: !770)
!775 = !DILocation(line: 907, column: 14, scope: !770)
!776 = !DILocation(line: 907, column: 50, scope: !770)
!777 = !DILocation(line: 907, column: 49, scope: !770)
!778 = !DILocation(line: 907, column: 46, scope: !770)
!779 = !DILocation(line: 907, column: 21, scope: !770)
!780 = !DILocation(line: 907, column: 57, scope: !770)
!781 = !DILocation(line: 906, column: 6, scope: !731)
!782 = !DILocation(line: 909, column: 9, scope: !783)
!783 = distinct !DILexicalBlock(scope: !770, file: !96, line: 907, column: 64)
!784 = !DILocation(line: 910, column: 2, scope: !783)
!785 = !DILocation(line: 912, column: 30, scope: !731)
!786 = !DILocation(line: 912, column: 36, scope: !731)
!787 = !DILocation(line: 912, column: 7, scope: !731)
!788 = !DILocation(line: 917, column: 30, scope: !731)
!789 = !DILocation(line: 917, column: 36, scope: !731)
!790 = !DILocation(line: 917, column: 7, scope: !731)
!791 = !DILocation(line: 920, column: 9, scope: !731)
!792 = !DILocation(line: 920, column: 14, scope: !731)
!793 = !DILocation(line: 920, column: 38, scope: !731)
!794 = !DILocation(line: 920, column: 44, scope: !731)
!795 = !DILocation(line: 920, column: 49, scope: !731)
!796 = !DILocation(line: 920, column: 55, scope: !731)
!797 = !DILocation(line: 920, column: 2, scope: !731)
!798 = !DILocation(line: 921, column: 1, scope: !731)
!799 = distinct !DISubprogram(name: "z_impl_gpio_pin_configure", scope: !96, file: !96, line: 961, type: !130, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !800)
!800 = !{!801, !802, !803, !804, !805, !806}
!801 = !DILocalVariable(name: "port", arg: 1, scope: !799, file: !96, line: 961, type: !132)
!802 = !DILocalVariable(name: "pin", arg: 2, scope: !799, file: !96, line: 962, type: !154)
!803 = !DILocalVariable(name: "flags", arg: 3, scope: !799, file: !96, line: 963, type: !155)
!804 = !DILocalVariable(name: "api", scope: !799, file: !96, line: 965, type: !124)
!805 = !DILocalVariable(name: "cfg", scope: !799, file: !96, line: 967, type: !738)
!806 = !DILocalVariable(name: "data", scope: !799, file: !96, line: 969, type: !212)
!807 = !DILocation(line: 961, column: 66, scope: !799)
!808 = !DILocation(line: 962, column: 21, scope: !799)
!809 = !DILocation(line: 963, column: 23, scope: !799)
!810 = !DILocation(line: 965, column: 2, scope: !799)
!811 = !DILocation(line: 965, column: 32, scope: !799)
!812 = !DILocation(line: 966, column: 35, scope: !799)
!813 = !DILocation(line: 966, column: 41, scope: !799)
!814 = !DILocation(line: 967, column: 2, scope: !799)
!815 = !DILocation(line: 967, column: 69, scope: !799)
!816 = !DILocation(line: 968, column: 38, scope: !799)
!817 = !DILocation(line: 968, column: 44, scope: !799)
!818 = !DILocation(line: 969, column: 2, scope: !799)
!819 = !DILocation(line: 969, column: 27, scope: !799)
!820 = !DILocation(line: 970, column: 30, scope: !799)
!821 = !DILocation(line: 970, column: 36, scope: !799)
!822 = !DILocation(line: 993, column: 8, scope: !823)
!823 = distinct !DILexicalBlock(scope: !799, file: !96, line: 993, column: 6)
!824 = !DILocation(line: 993, column: 14, scope: !823)
!825 = !DILocation(line: 993, column: 28, scope: !823)
!826 = !DILocation(line: 994, column: 6, scope: !823)
!827 = !DILocation(line: 994, column: 11, scope: !823)
!828 = !DILocation(line: 994, column: 17, scope: !823)
!829 = !DILocation(line: 994, column: 46, scope: !823)
!830 = !DILocation(line: 995, column: 6, scope: !823)
!831 = !DILocation(line: 995, column: 11, scope: !823)
!832 = !DILocation(line: 995, column: 17, scope: !823)
!833 = !DILocation(line: 995, column: 29, scope: !823)
!834 = !DILocation(line: 993, column: 6, scope: !799)
!835 = !DILocation(line: 996, column: 9, scope: !836)
!836 = distinct !DILexicalBlock(scope: !823, file: !96, line: 995, column: 36)
!837 = !DILocation(line: 997, column: 2, scope: !836)
!838 = !DILocation(line: 999, column: 8, scope: !799)
!839 = !DILocation(line: 1004, column: 7, scope: !840)
!840 = distinct !DILexicalBlock(scope: !799, file: !96, line: 1004, column: 6)
!841 = !DILocation(line: 1004, column: 13, scope: !840)
!842 = !DILocation(line: 1004, column: 25, scope: !840)
!843 = !DILocation(line: 1004, column: 6, scope: !799)
!844 = !DILocation(line: 1005, column: 46, scope: !845)
!845 = distinct !DILexicalBlock(scope: !840, file: !96, line: 1004, column: 31)
!846 = !DILocation(line: 1005, column: 45, scope: !845)
!847 = !DILocation(line: 1005, column: 42, scope: !845)
!848 = !DILocation(line: 1005, column: 3, scope: !845)
!849 = !DILocation(line: 1005, column: 9, scope: !845)
!850 = !DILocation(line: 1005, column: 16, scope: !845)
!851 = !DILocation(line: 1006, column: 2, scope: !845)
!852 = !DILocation(line: 1007, column: 47, scope: !853)
!853 = distinct !DILexicalBlock(scope: !840, file: !96, line: 1006, column: 9)
!854 = !DILocation(line: 1007, column: 46, scope: !853)
!855 = !DILocation(line: 1007, column: 43, scope: !853)
!856 = !DILocation(line: 1007, column: 19, scope: !853)
!857 = !DILocation(line: 1007, column: 3, scope: !853)
!858 = !DILocation(line: 1007, column: 9, scope: !853)
!859 = !DILocation(line: 1007, column: 16, scope: !853)
!860 = !DILocation(line: 1010, column: 9, scope: !799)
!861 = !DILocation(line: 1010, column: 14, scope: !799)
!862 = !DILocation(line: 1010, column: 28, scope: !799)
!863 = !DILocation(line: 1010, column: 34, scope: !799)
!864 = !DILocation(line: 1010, column: 39, scope: !799)
!865 = !DILocation(line: 1011, column: 1, scope: !799)
!866 = !DILocation(line: 1010, column: 2, scope: !799)
!867 = distinct !DISubprogram(name: "z_impl_gpio_port_get_raw", scope: !96, file: !96, line: 1229, type: !159, scopeLine: 1231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !868)
!868 = !{!869, !870, !871}
!869 = !DILocalVariable(name: "port", arg: 1, scope: !867, file: !96, line: 1229, type: !132)
!870 = !DILocalVariable(name: "value", arg: 2, scope: !867, file: !96, line: 1230, type: !161)
!871 = !DILocalVariable(name: "api", scope: !867, file: !96, line: 1232, type: !124)
!872 = !DILocation(line: 1229, column: 65, scope: !867)
!873 = !DILocation(line: 1230, column: 28, scope: !867)
!874 = !DILocation(line: 1232, column: 2, scope: !867)
!875 = !DILocation(line: 1232, column: 32, scope: !867)
!876 = !DILocation(line: 1233, column: 35, scope: !867)
!877 = !DILocation(line: 1233, column: 41, scope: !867)
!878 = !DILocation(line: 1235, column: 9, scope: !867)
!879 = !DILocation(line: 1235, column: 14, scope: !867)
!880 = !DILocation(line: 1235, column: 27, scope: !867)
!881 = !DILocation(line: 1235, column: 33, scope: !867)
!882 = !DILocation(line: 1236, column: 1, scope: !867)
!883 = !DILocation(line: 1235, column: 2, scope: !867)
!884 = distinct !DISubprogram(name: "z_impl_gpio_port_set_masked_raw", scope: !96, file: !96, line: 1292, type: !165, scopeLine: 1295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !885)
!885 = !{!886, !887, !888, !889}
!886 = !DILocalVariable(name: "port", arg: 1, scope: !884, file: !96, line: 1292, type: !132)
!887 = !DILocalVariable(name: "mask", arg: 2, scope: !884, file: !96, line: 1293, type: !167)
!888 = !DILocalVariable(name: "value", arg: 3, scope: !884, file: !96, line: 1294, type: !162)
!889 = !DILocalVariable(name: "api", scope: !884, file: !96, line: 1296, type: !124)
!890 = !DILocation(line: 1292, column: 72, scope: !884)
!891 = !DILocation(line: 1293, column: 26, scope: !884)
!892 = !DILocation(line: 1294, column: 27, scope: !884)
!893 = !DILocation(line: 1296, column: 2, scope: !884)
!894 = !DILocation(line: 1296, column: 32, scope: !884)
!895 = !DILocation(line: 1297, column: 35, scope: !884)
!896 = !DILocation(line: 1297, column: 41, scope: !884)
!897 = !DILocation(line: 1299, column: 9, scope: !884)
!898 = !DILocation(line: 1299, column: 14, scope: !884)
!899 = !DILocation(line: 1299, column: 34, scope: !884)
!900 = !DILocation(line: 1299, column: 40, scope: !884)
!901 = !DILocation(line: 1299, column: 46, scope: !884)
!902 = !DILocation(line: 1300, column: 1, scope: !884)
!903 = !DILocation(line: 1299, column: 2, scope: !884)
!904 = distinct !DISubprogram(name: "z_impl_gpio_port_set_bits_raw", scope: !96, file: !96, line: 1347, type: !170, scopeLine: 1349, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !905)
!905 = !{!906, !907, !908}
!906 = !DILocalVariable(name: "port", arg: 1, scope: !904, file: !96, line: 1347, type: !132)
!907 = !DILocalVariable(name: "pins", arg: 2, scope: !904, file: !96, line: 1348, type: !167)
!908 = !DILocalVariable(name: "api", scope: !904, file: !96, line: 1350, type: !124)
!909 = !DILocation(line: 1347, column: 70, scope: !904)
!910 = !DILocation(line: 1348, column: 24, scope: !904)
!911 = !DILocation(line: 1350, column: 2, scope: !904)
!912 = !DILocation(line: 1350, column: 32, scope: !904)
!913 = !DILocation(line: 1351, column: 35, scope: !904)
!914 = !DILocation(line: 1351, column: 41, scope: !904)
!915 = !DILocation(line: 1353, column: 9, scope: !904)
!916 = !DILocation(line: 1353, column: 14, scope: !904)
!917 = !DILocation(line: 1353, column: 32, scope: !904)
!918 = !DILocation(line: 1353, column: 38, scope: !904)
!919 = !DILocation(line: 1354, column: 1, scope: !904)
!920 = !DILocation(line: 1353, column: 2, scope: !904)
!921 = distinct !DISubprogram(name: "z_impl_gpio_port_clear_bits_raw", scope: !96, file: !96, line: 1385, type: !170, scopeLine: 1387, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !922)
!922 = !{!923, !924, !925}
!923 = !DILocalVariable(name: "port", arg: 1, scope: !921, file: !96, line: 1385, type: !132)
!924 = !DILocalVariable(name: "pins", arg: 2, scope: !921, file: !96, line: 1386, type: !167)
!925 = !DILocalVariable(name: "api", scope: !921, file: !96, line: 1388, type: !124)
!926 = !DILocation(line: 1385, column: 72, scope: !921)
!927 = !DILocation(line: 1386, column: 26, scope: !921)
!928 = !DILocation(line: 1388, column: 2, scope: !921)
!929 = !DILocation(line: 1388, column: 32, scope: !921)
!930 = !DILocation(line: 1389, column: 35, scope: !921)
!931 = !DILocation(line: 1389, column: 41, scope: !921)
!932 = !DILocation(line: 1391, column: 9, scope: !921)
!933 = !DILocation(line: 1391, column: 14, scope: !921)
!934 = !DILocation(line: 1391, column: 34, scope: !921)
!935 = !DILocation(line: 1391, column: 40, scope: !921)
!936 = !DILocation(line: 1392, column: 1, scope: !921)
!937 = !DILocation(line: 1391, column: 2, scope: !921)
!938 = distinct !DISubprogram(name: "z_impl_gpio_port_toggle_bits", scope: !96, file: !96, line: 1423, type: !170, scopeLine: 1425, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !939)
!939 = !{!940, !941, !942}
!940 = !DILocalVariable(name: "port", arg: 1, scope: !938, file: !96, line: 1423, type: !132)
!941 = !DILocalVariable(name: "pins", arg: 2, scope: !938, file: !96, line: 1424, type: !167)
!942 = !DILocalVariable(name: "api", scope: !938, file: !96, line: 1426, type: !124)
!943 = !DILocation(line: 1423, column: 69, scope: !938)
!944 = !DILocation(line: 1424, column: 30, scope: !938)
!945 = !DILocation(line: 1426, column: 2, scope: !938)
!946 = !DILocation(line: 1426, column: 32, scope: !938)
!947 = !DILocation(line: 1427, column: 35, scope: !938)
!948 = !DILocation(line: 1427, column: 41, scope: !938)
!949 = !DILocation(line: 1429, column: 9, scope: !938)
!950 = !DILocation(line: 1429, column: 14, scope: !938)
!951 = !DILocation(line: 1429, column: 31, scope: !938)
!952 = !DILocation(line: 1429, column: 37, scope: !938)
!953 = !DILocation(line: 1430, column: 1, scope: !938)
!954 = !DILocation(line: 1429, column: 2, scope: !938)
!955 = distinct !DISubprogram(name: "z_impl_gpio_get_pending_int", scope: !96, file: !96, line: 1807, type: !312, scopeLine: 1808, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !956)
!956 = !{!957, !958}
!957 = !DILocalVariable(name: "dev", arg: 1, scope: !955, file: !96, line: 1807, type: !132)
!958 = !DILocalVariable(name: "api", scope: !955, file: !96, line: 1809, type: !124)
!959 = !DILocation(line: 1807, column: 68, scope: !955)
!960 = !DILocation(line: 1809, column: 2, scope: !955)
!961 = !DILocation(line: 1809, column: 32, scope: !955)
!962 = !DILocation(line: 1810, column: 35, scope: !955)
!963 = !DILocation(line: 1810, column: 40, scope: !955)
!964 = !DILocation(line: 1812, column: 6, scope: !965)
!965 = distinct !DILexicalBlock(scope: !955, file: !96, line: 1812, column: 6)
!966 = !DILocation(line: 1812, column: 11, scope: !965)
!967 = !DILocation(line: 1812, column: 27, scope: !965)
!968 = !DILocation(line: 1812, column: 6, scope: !955)
!969 = !DILocation(line: 1813, column: 3, scope: !970)
!970 = distinct !DILexicalBlock(scope: !965, file: !96, line: 1812, column: 42)
!971 = !DILocation(line: 1816, column: 9, scope: !955)
!972 = !DILocation(line: 1816, column: 14, scope: !955)
!973 = !DILocation(line: 1816, column: 30, scope: !955)
!974 = !DILocation(line: 1816, column: 2, scope: !955)
!975 = !DILocation(line: 1817, column: 1, scope: !955)
!976 = distinct !DISubprogram(name: "gpio_stm32_configure", scope: !2, file: !2, line: 485, type: !977, scopeLine: 486, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !979)
!977 = !DISubroutineType(types: !978)
!978 = !{!123, !132, !123, !123, !123}
!979 = !{!980, !981, !982, !983, !984, !985}
!980 = !DILocalVariable(name: "dev", arg: 1, scope: !976, file: !2, line: 485, type: !132)
!981 = !DILocalVariable(name: "pin", arg: 2, scope: !976, file: !2, line: 485, type: !123)
!982 = !DILocalVariable(name: "conf", arg: 3, scope: !976, file: !2, line: 485, type: !123)
!983 = !DILocalVariable(name: "func", arg: 4, scope: !976, file: !2, line: 485, type: !123)
!984 = !DILocalVariable(name: "ret", scope: !976, file: !2, line: 487, type: !123)
!985 = !DILocalVariable(name: "gpio_out", scope: !986, file: !2, line: 497, type: !156)
!986 = distinct !DILexicalBlock(scope: !987, file: !2, line: 496, column: 20)
!987 = distinct !DILexicalBlock(scope: !976, file: !2, line: 496, column: 6)
!988 = !DILocation(line: 485, column: 47, scope: !976)
!989 = !DILocation(line: 485, column: 56, scope: !976)
!990 = !DILocation(line: 485, column: 65, scope: !976)
!991 = !DILocation(line: 485, column: 75, scope: !976)
!992 = !DILocation(line: 487, column: 2, scope: !976)
!993 = !DILocation(line: 487, column: 6, scope: !976)
!994 = !DILocation(line: 489, column: 30, scope: !976)
!995 = !DILocation(line: 489, column: 8, scope: !976)
!996 = !DILocation(line: 489, column: 6, scope: !976)
!997 = !DILocation(line: 490, column: 6, scope: !998)
!998 = distinct !DILexicalBlock(scope: !976, file: !2, line: 490, column: 6)
!999 = !DILocation(line: 490, column: 10, scope: !998)
!1000 = !DILocation(line: 490, column: 6, scope: !976)
!1001 = !DILocation(line: 491, column: 10, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !998, file: !2, line: 490, column: 15)
!1003 = !DILocation(line: 491, column: 3, scope: !1002)
!1004 = !DILocation(line: 494, column: 27, scope: !976)
!1005 = !DILocation(line: 494, column: 32, scope: !976)
!1006 = !DILocation(line: 494, column: 37, scope: !976)
!1007 = !DILocation(line: 494, column: 43, scope: !976)
!1008 = !DILocation(line: 494, column: 2, scope: !976)
!1009 = !DILocation(line: 496, column: 6, scope: !987)
!1010 = !DILocation(line: 496, column: 11, scope: !987)
!1011 = !DILocation(line: 496, column: 6, scope: !976)
!1012 = !DILocation(line: 497, column: 3, scope: !986)
!1013 = !DILocation(line: 497, column: 12, scope: !986)
!1014 = !DILocation(line: 497, column: 23, scope: !986)
!1015 = !DILocation(line: 497, column: 28, scope: !986)
!1016 = !DILocation(line: 499, column: 7, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !986, file: !2, line: 499, column: 7)
!1018 = !DILocation(line: 499, column: 16, scope: !1017)
!1019 = !DILocation(line: 499, column: 7, scope: !986)
!1020 = !DILocation(line: 500, column: 33, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !1017, file: !2, line: 499, column: 32)
!1022 = !DILocation(line: 500, column: 47, scope: !1021)
!1023 = !DILocation(line: 500, column: 43, scope: !1021)
!1024 = !DILocation(line: 500, column: 4, scope: !1021)
!1025 = !DILocation(line: 501, column: 3, scope: !1021)
!1026 = !DILocation(line: 501, column: 14, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !1017, file: !2, line: 501, column: 14)
!1028 = !DILocation(line: 501, column: 23, scope: !1027)
!1029 = !DILocation(line: 501, column: 14, scope: !1017)
!1030 = !DILocation(line: 502, column: 35, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !1027, file: !2, line: 501, column: 39)
!1032 = !DILocation(line: 502, column: 49, scope: !1031)
!1033 = !DILocation(line: 502, column: 45, scope: !1031)
!1034 = !DILocation(line: 502, column: 4, scope: !1031)
!1035 = !DILocation(line: 503, column: 3, scope: !1031)
!1036 = !DILocation(line: 504, column: 2, scope: !987)
!1037 = !DILocation(line: 504, column: 2, scope: !986)
!1038 = !DILocation(line: 506, column: 31, scope: !976)
!1039 = !DILocation(line: 506, column: 9, scope: !976)
!1040 = !DILocation(line: 506, column: 2, scope: !976)
!1041 = !DILocation(line: 507, column: 1, scope: !976)
!1042 = distinct !DISubprogram(name: "pm_device_runtime_get", scope: !1043, file: !1043, line: 179, type: !312, scopeLine: 180, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1044)
!1043 = !DIFile(filename: "include/zephyr/pm/device_runtime.h", directory: "/home/sri/zephyrproject/zephyr")
!1044 = !{!1045}
!1045 = !DILocalVariable(name: "dev", arg: 1, scope: !1042, file: !1043, line: 179, type: !132)
!1046 = !DILocation(line: 179, column: 62, scope: !1042)
!1047 = !DILocation(line: 181, column: 9, scope: !1042)
!1048 = !DILocation(line: 182, column: 2, scope: !1042)
!1049 = distinct !DISubprogram(name: "gpio_stm32_configure_raw", scope: !2, file: !2, line: 157, type: !1050, scopeLine: 159, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1052)
!1050 = !DISubroutineType(types: !1051)
!1051 = !{null, !132, !123, !123, !123}
!1052 = !{!1053, !1054, !1055, !1056, !1057, !1059, !1060, !1061, !1062, !1063, !1064}
!1053 = !DILocalVariable(name: "dev", arg: 1, scope: !1049, file: !2, line: 157, type: !132)
!1054 = !DILocalVariable(name: "pin", arg: 2, scope: !1049, file: !2, line: 157, type: !123)
!1055 = !DILocalVariable(name: "conf", arg: 3, scope: !1049, file: !2, line: 158, type: !123)
!1056 = !DILocalVariable(name: "func", arg: 4, scope: !1049, file: !2, line: 158, type: !123)
!1057 = !DILocalVariable(name: "cfg", scope: !1049, file: !2, line: 160, type: !1058)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 32)
!1059 = !DILocalVariable(name: "gpio", scope: !1049, file: !2, line: 161, type: !213)
!1060 = !DILocalVariable(name: "pin_ll", scope: !1049, file: !2, line: 163, type: !123)
!1061 = !DILocalVariable(name: "mode", scope: !1049, file: !2, line: 227, type: !97)
!1062 = !DILocalVariable(name: "otype", scope: !1049, file: !2, line: 227, type: !97)
!1063 = !DILocalVariable(name: "ospeed", scope: !1049, file: !2, line: 227, type: !97)
!1064 = !DILocalVariable(name: "pupd", scope: !1049, file: !2, line: 227, type: !97)
!1065 = !DILocation(line: 157, column: 59, scope: !1049)
!1066 = !DILocation(line: 157, column: 68, scope: !1049)
!1067 = !DILocation(line: 158, column: 14, scope: !1049)
!1068 = !DILocation(line: 158, column: 24, scope: !1049)
!1069 = !DILocation(line: 160, column: 2, scope: !1049)
!1070 = !DILocation(line: 160, column: 34, scope: !1049)
!1071 = !DILocation(line: 160, column: 40, scope: !1049)
!1072 = !DILocation(line: 160, column: 45, scope: !1049)
!1073 = !DILocation(line: 161, column: 2, scope: !1049)
!1074 = !DILocation(line: 161, column: 16, scope: !1049)
!1075 = !DILocation(line: 161, column: 39, scope: !1049)
!1076 = !DILocation(line: 161, column: 44, scope: !1049)
!1077 = !DILocation(line: 163, column: 2, scope: !1049)
!1078 = !DILocation(line: 163, column: 6, scope: !1049)
!1079 = !DILocation(line: 163, column: 32, scope: !1049)
!1080 = !DILocation(line: 163, column: 15, scope: !1049)
!1081 = !DILocation(line: 227, column: 2, scope: !1049)
!1082 = !DILocation(line: 227, column: 15, scope: !1049)
!1083 = !DILocation(line: 227, column: 21, scope: !1049)
!1084 = !DILocation(line: 227, column: 28, scope: !1049)
!1085 = !DILocation(line: 227, column: 36, scope: !1049)
!1086 = !DILocation(line: 229, column: 9, scope: !1049)
!1087 = !DILocation(line: 229, column: 14, scope: !1049)
!1088 = !DILocation(line: 229, column: 7, scope: !1049)
!1089 = !DILocation(line: 230, column: 10, scope: !1049)
!1090 = !DILocation(line: 230, column: 15, scope: !1049)
!1091 = !DILocation(line: 230, column: 8, scope: !1049)
!1092 = !DILocation(line: 231, column: 11, scope: !1049)
!1093 = !DILocation(line: 231, column: 16, scope: !1049)
!1094 = !DILocation(line: 231, column: 9, scope: !1049)
!1095 = !DILocation(line: 232, column: 9, scope: !1049)
!1096 = !DILocation(line: 232, column: 14, scope: !1049)
!1097 = !DILocation(line: 232, column: 7, scope: !1049)
!1098 = !DILocation(line: 234, column: 2, scope: !1049)
!1099 = !DILocation(line: 246, column: 27, scope: !1049)
!1100 = !DILocation(line: 246, column: 33, scope: !1049)
!1101 = !DILocation(line: 246, column: 41, scope: !1049)
!1102 = !DILocation(line: 246, column: 47, scope: !1049)
!1103 = !DILocation(line: 246, column: 2, scope: !1049)
!1104 = !DILocation(line: 248, column: 22, scope: !1049)
!1105 = !DILocation(line: 248, column: 28, scope: !1049)
!1106 = !DILocation(line: 248, column: 36, scope: !1049)
!1107 = !DILocation(line: 248, column: 43, scope: !1049)
!1108 = !DILocation(line: 248, column: 2, scope: !1049)
!1109 = !DILocation(line: 250, column: 21, scope: !1049)
!1110 = !DILocation(line: 250, column: 27, scope: !1049)
!1111 = !DILocation(line: 250, column: 35, scope: !1049)
!1112 = !DILocation(line: 250, column: 40, scope: !1049)
!1113 = !DILocation(line: 250, column: 2, scope: !1049)
!1114 = !DILocation(line: 252, column: 6, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !1049, file: !2, line: 252, column: 6)
!1116 = !DILocation(line: 252, column: 11, scope: !1115)
!1117 = !DILocation(line: 252, column: 6, scope: !1049)
!1118 = !DILocation(line: 253, column: 7, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !1120, file: !2, line: 253, column: 7)
!1120 = distinct !DILexicalBlock(scope: !1115, file: !2, line: 252, column: 26)
!1121 = !DILocation(line: 253, column: 11, scope: !1119)
!1122 = !DILocation(line: 253, column: 7, scope: !1120)
!1123 = !DILocation(line: 254, column: 25, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1119, file: !2, line: 253, column: 16)
!1125 = !DILocation(line: 254, column: 31, scope: !1124)
!1126 = !DILocation(line: 254, column: 39, scope: !1124)
!1127 = !DILocation(line: 254, column: 4, scope: !1124)
!1128 = !DILocation(line: 255, column: 3, scope: !1124)
!1129 = !DILocation(line: 256, column: 26, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1119, file: !2, line: 255, column: 10)
!1131 = !DILocation(line: 256, column: 32, scope: !1130)
!1132 = !DILocation(line: 256, column: 40, scope: !1130)
!1133 = !DILocation(line: 256, column: 4, scope: !1130)
!1134 = !DILocation(line: 258, column: 2, scope: !1120)
!1135 = !DILocation(line: 260, column: 21, scope: !1049)
!1136 = !DILocation(line: 260, column: 27, scope: !1049)
!1137 = !DILocation(line: 260, column: 35, scope: !1049)
!1138 = !DILocation(line: 260, column: 40, scope: !1049)
!1139 = !DILocation(line: 260, column: 2, scope: !1049)
!1140 = !DILocation(line: 262, column: 2, scope: !1049)
!1141 = !DILocation(line: 265, column: 1, scope: !1049)
!1142 = distinct !DISubprogram(name: "gpio_stm32_port_set_bits_raw", scope: !2, file: !2, line: 427, type: !170, scopeLine: 429, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1143)
!1143 = !{!1144, !1145, !1146, !1147}
!1144 = !DILocalVariable(name: "dev", arg: 1, scope: !1142, file: !2, line: 427, type: !132)
!1145 = !DILocalVariable(name: "pins", arg: 2, scope: !1142, file: !2, line: 428, type: !167)
!1146 = !DILocalVariable(name: "cfg", scope: !1142, file: !2, line: 430, type: !1058)
!1147 = !DILocalVariable(name: "gpio", scope: !1142, file: !2, line: 431, type: !213)
!1148 = !DILocation(line: 427, column: 62, scope: !1142)
!1149 = !DILocation(line: 428, column: 23, scope: !1142)
!1150 = !DILocation(line: 430, column: 2, scope: !1142)
!1151 = !DILocation(line: 430, column: 34, scope: !1142)
!1152 = !DILocation(line: 430, column: 40, scope: !1142)
!1153 = !DILocation(line: 430, column: 45, scope: !1142)
!1154 = !DILocation(line: 431, column: 2, scope: !1142)
!1155 = !DILocation(line: 431, column: 16, scope: !1142)
!1156 = !DILocation(line: 431, column: 39, scope: !1142)
!1157 = !DILocation(line: 431, column: 44, scope: !1142)
!1158 = !DILocation(line: 437, column: 19, scope: !1142)
!1159 = !DILocation(line: 437, column: 4, scope: !1142)
!1160 = !DILocation(line: 437, column: 10, scope: !1142)
!1161 = !DILocation(line: 437, column: 16, scope: !1142)
!1162 = !DILocation(line: 440, column: 1, scope: !1142)
!1163 = !DILocation(line: 439, column: 2, scope: !1142)
!1164 = distinct !DISubprogram(name: "gpio_stm32_port_clear_bits_raw", scope: !2, file: !2, line: 442, type: !170, scopeLine: 444, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1165)
!1165 = !{!1166, !1167, !1168, !1169}
!1166 = !DILocalVariable(name: "dev", arg: 1, scope: !1164, file: !2, line: 442, type: !132)
!1167 = !DILocalVariable(name: "pins", arg: 2, scope: !1164, file: !2, line: 443, type: !167)
!1168 = !DILocalVariable(name: "cfg", scope: !1164, file: !2, line: 445, type: !1058)
!1169 = !DILocalVariable(name: "gpio", scope: !1164, file: !2, line: 446, type: !213)
!1170 = !DILocation(line: 442, column: 64, scope: !1164)
!1171 = !DILocation(line: 443, column: 25, scope: !1164)
!1172 = !DILocation(line: 445, column: 2, scope: !1164)
!1173 = !DILocation(line: 445, column: 34, scope: !1164)
!1174 = !DILocation(line: 445, column: 40, scope: !1164)
!1175 = !DILocation(line: 445, column: 45, scope: !1164)
!1176 = !DILocation(line: 446, column: 2, scope: !1164)
!1177 = !DILocation(line: 446, column: 16, scope: !1164)
!1178 = !DILocation(line: 446, column: 39, scope: !1164)
!1179 = !DILocation(line: 446, column: 44, scope: !1164)
!1180 = !DILocation(line: 456, column: 25, scope: !1164)
!1181 = !DILocation(line: 456, column: 31, scope: !1164)
!1182 = !DILocation(line: 456, column: 2, scope: !1164)
!1183 = !DILocation(line: 460, column: 1, scope: !1164)
!1184 = !DILocation(line: 459, column: 2, scope: !1164)
!1185 = distinct !DISubprogram(name: "pm_device_runtime_put", scope: !1043, file: !1043, line: 185, type: !312, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1186)
!1186 = !{!1187}
!1187 = !DILocalVariable(name: "dev", arg: 1, scope: !1185, file: !1043, line: 185, type: !132)
!1188 = !DILocation(line: 185, column: 62, scope: !1185)
!1189 = !DILocation(line: 187, column: 9, scope: !1185)
!1190 = !DILocation(line: 188, column: 2, scope: !1185)
!1191 = distinct !DISubprogram(name: "gpio_stm32_init", scope: !2, file: !2, line: 697, type: !312, scopeLine: 698, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1192)
!1192 = !{!1193, !1194, !1196}
!1193 = !DILocalVariable(name: "dev", arg: 1, scope: !1191, file: !2, line: 697, type: !132)
!1194 = !DILocalVariable(name: "data", scope: !1191, file: !2, line: 699, type: !1195)
!1195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 32)
!1196 = !DILocalVariable(name: "ret", scope: !1191, file: !2, line: 700, type: !123)
!1197 = !DILocation(line: 697, column: 49, scope: !1191)
!1198 = !DILocation(line: 699, column: 2, scope: !1191)
!1199 = !DILocation(line: 699, column: 26, scope: !1191)
!1200 = !DILocation(line: 699, column: 33, scope: !1191)
!1201 = !DILocation(line: 699, column: 38, scope: !1191)
!1202 = !DILocation(line: 700, column: 2, scope: !1191)
!1203 = !DILocation(line: 700, column: 6, scope: !1191)
!1204 = !DILocation(line: 702, column: 14, scope: !1191)
!1205 = !DILocation(line: 702, column: 2, scope: !1191)
!1206 = !DILocation(line: 702, column: 8, scope: !1191)
!1207 = !DILocation(line: 702, column: 12, scope: !1191)
!1208 = !DILocation(line: 704, column: 7, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1191, file: !2, line: 704, column: 6)
!1210 = !DILocation(line: 704, column: 6, scope: !1191)
!1211 = !DILocation(line: 705, column: 3, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !1209, file: !2, line: 704, column: 47)
!1213 = !DILocation(line: 717, column: 33, scope: !1191)
!1214 = !DILocation(line: 717, column: 8, scope: !1191)
!1215 = !DILocation(line: 717, column: 6, scope: !1191)
!1216 = !DILocation(line: 718, column: 6, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1191, file: !2, line: 718, column: 6)
!1218 = !DILocation(line: 718, column: 10, scope: !1217)
!1219 = !DILocation(line: 718, column: 6, scope: !1191)
!1220 = !DILocation(line: 719, column: 10, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !1217, file: !2, line: 718, column: 15)
!1222 = !DILocation(line: 719, column: 3, scope: !1221)
!1223 = !DILocation(line: 722, column: 27, scope: !1191)
!1224 = !DILocation(line: 722, column: 2, scope: !1191)
!1225 = !DILocation(line: 723, column: 33, scope: !1191)
!1226 = !DILocation(line: 723, column: 8, scope: !1191)
!1227 = !DILocation(line: 725, column: 2, scope: !1191)
!1228 = !DILocation(line: 726, column: 1, scope: !1191)
!1229 = !DISubprogram(name: "z_timeout_expires", scope: !505, file: !505, line: 642, type: !1230, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !522)
!1230 = !DISubroutineType(types: !1231)
!1231 = !{!566, !1232}
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 32)
!1233 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !474)
!1234 = !DISubprogram(name: "z_timeout_remaining", scope: !505, file: !505, line: 643, type: !1230, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !522)
!1235 = distinct !DISubprogram(name: "sys_sflist_is_empty", scope: !654, file: !654, line: 335, type: !1236, scopeLine: 335, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1239)
!1236 = !DISubroutineType(types: !1237)
!1237 = !{!152, !1238}
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 32)
!1239 = !{!1240}
!1240 = !DILocalVariable(name: "list", arg: 1, scope: !1235, file: !654, line: 335, type: !1238)
!1241 = !DILocation(line: 335, column: 55, scope: !1235)
!1242 = !DILocation(line: 335, column: 92, scope: !1235)
!1243 = !DILocation(line: 335, column: 71, scope: !1235)
!1244 = !DILocation(line: 335, column: 98, scope: !1235)
!1245 = !DILocation(line: 335, column: 63, scope: !1235)
!1246 = distinct !DISubprogram(name: "sys_sflist_peek_head", scope: !654, file: !654, line: 255, type: !1247, scopeLine: 256, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1249)
!1247 = !DISubroutineType(types: !1248)
!1248 = !{!658, !1238}
!1249 = !{!1250}
!1250 = !DILocalVariable(name: "list", arg: 1, scope: !1246, file: !654, line: 255, type: !1238)
!1251 = !DILocation(line: 255, column: 64, scope: !1246)
!1252 = !DILocation(line: 257, column: 9, scope: !1246)
!1253 = !DILocation(line: 257, column: 15, scope: !1246)
!1254 = !DILocation(line: 257, column: 2, scope: !1246)
!1255 = !DISubprogram(name: "z_device_is_ready", scope: !135, file: !135, line: 724, type: !723, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !522)
!1256 = distinct !DISubprogram(name: "stm32_pinval_get", scope: !2, file: !2, line: 137, type: !1257, scopeLine: 138, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1259)
!1257 = !DISubroutineType(types: !1258)
!1258 = !{!156, !123}
!1259 = !{!1260, !1261}
!1260 = !DILocalVariable(name: "pin", arg: 1, scope: !1256, file: !2, line: 137, type: !123)
!1261 = !DILocalVariable(name: "pinval", scope: !1256, file: !2, line: 139, type: !156)
!1262 = !DILocation(line: 137, column: 45, scope: !1256)
!1263 = !DILocation(line: 139, column: 2, scope: !1256)
!1264 = !DILocation(line: 139, column: 11, scope: !1256)
!1265 = !DILocation(line: 149, column: 16, scope: !1256)
!1266 = !DILocation(line: 149, column: 13, scope: !1256)
!1267 = !DILocation(line: 149, column: 9, scope: !1256)
!1268 = !DILocation(line: 151, column: 9, scope: !1256)
!1269 = !DILocation(line: 152, column: 1, scope: !1256)
!1270 = !DILocation(line: 151, column: 2, scope: !1256)
!1271 = distinct !DISubprogram(name: "z_stm32_hsem_lock", scope: !1272, file: !1272, line: 116, type: !1273, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1275)
!1272 = !DIFile(filename: "soc/arm/st_stm32/common/stm32_hsem.h", directory: "/home/sri/zephyrproject/zephyr")
!1273 = !DISubroutineType(types: !1274)
!1274 = !{null, !156, !156}
!1275 = !{!1276, !1277}
!1276 = !DILocalVariable(name: "hsem", arg: 1, scope: !1271, file: !1272, line: 116, type: !156)
!1277 = !DILocalVariable(name: "retry", arg: 2, scope: !1271, file: !1272, line: 116, type: !156)
!1278 = !DILocation(line: 116, column: 47, scope: !1271)
!1279 = !DILocation(line: 116, column: 62, scope: !1271)
!1280 = !DILocation(line: 130, column: 1, scope: !1271)
!1281 = distinct !DISubprogram(name: "LL_GPIO_SetPinOutputType", scope: !1282, file: !1282, line: 335, type: !1283, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1285)
!1282 = !DIFile(filename: "modules/hal/stm32/stm32cube/stm32f0xx/drivers/include/stm32f0xx_ll_gpio.h", directory: "/home/sri/zephyrproject")
!1283 = !DISubroutineType(types: !1284)
!1284 = !{null, !213, !156, !156}
!1285 = !{!1286, !1287, !1288}
!1286 = !DILocalVariable(name: "GPIOx", arg: 1, scope: !1281, file: !1282, line: 335, type: !213)
!1287 = !DILocalVariable(name: "PinMask", arg: 2, scope: !1281, file: !1282, line: 335, type: !156)
!1288 = !DILocalVariable(name: "OutputType", arg: 3, scope: !1281, file: !1282, line: 335, type: !156)
!1289 = !DILocation(line: 335, column: 61, scope: !1281)
!1290 = !DILocation(line: 335, column: 77, scope: !1281)
!1291 = !DILocation(line: 335, column: 95, scope: !1281)
!1292 = !DILocation(line: 337, column: 30, scope: !1281)
!1293 = !DILocation(line: 337, column: 37, scope: !1281)
!1294 = !DILocation(line: 337, column: 52, scope: !1281)
!1295 = !DILocation(line: 337, column: 50, scope: !1281)
!1296 = !DILocation(line: 337, column: 47, scope: !1281)
!1297 = !DILocation(line: 337, column: 67, scope: !1281)
!1298 = !DILocation(line: 337, column: 77, scope: !1281)
!1299 = !DILocation(line: 337, column: 75, scope: !1281)
!1300 = !DILocation(line: 337, column: 63, scope: !1281)
!1301 = !DILocation(line: 337, column: 6, scope: !1281)
!1302 = !DILocation(line: 337, column: 13, scope: !1281)
!1303 = !DILocation(line: 337, column: 22, scope: !1281)
!1304 = !DILocation(line: 338, column: 1, scope: !1281)
!1305 = distinct !DISubprogram(name: "LL_GPIO_SetPinSpeed", scope: !1282, file: !1282, line: 405, type: !1283, scopeLine: 406, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1306)
!1306 = !{!1307, !1308, !1309}
!1307 = !DILocalVariable(name: "GPIOx", arg: 1, scope: !1305, file: !1282, line: 405, type: !213)
!1308 = !DILocalVariable(name: "Pin", arg: 2, scope: !1305, file: !1282, line: 405, type: !156)
!1309 = !DILocalVariable(name: "Speed", arg: 3, scope: !1305, file: !1282, line: 405, type: !156)
!1310 = !DILocation(line: 405, column: 56, scope: !1305)
!1311 = !DILocation(line: 405, column: 72, scope: !1305)
!1312 = !DILocation(line: 405, column: 86, scope: !1305)
!1313 = !DILocation(line: 407, column: 31, scope: !1305)
!1314 = !DILocation(line: 407, column: 38, scope: !1305)
!1315 = !DILocation(line: 407, column: 56, scope: !1305)
!1316 = !DILocation(line: 407, column: 62, scope: !1305)
!1317 = !DILocation(line: 407, column: 60, scope: !1305)
!1318 = !DILocation(line: 407, column: 67, scope: !1305)
!1319 = !DILocation(line: 407, column: 52, scope: !1305)
!1320 = !DILocation(line: 407, column: 49, scope: !1305)
!1321 = !DILocation(line: 407, column: 94, scope: !1305)
!1322 = !DILocation(line: 407, column: 100, scope: !1305)
!1323 = !DILocation(line: 407, column: 98, scope: !1305)
!1324 = !DILocation(line: 407, column: 107, scope: !1305)
!1325 = !DILocation(line: 407, column: 105, scope: !1305)
!1326 = !DILocation(line: 407, column: 89, scope: !1305)
!1327 = !DILocation(line: 407, column: 6, scope: !1305)
!1328 = !DILocation(line: 407, column: 13, scope: !1305)
!1329 = !DILocation(line: 407, column: 23, scope: !1305)
!1330 = !DILocation(line: 408, column: 1, scope: !1305)
!1331 = distinct !DISubprogram(name: "LL_GPIO_SetPinPull", scope: !1282, file: !1282, line: 473, type: !1283, scopeLine: 474, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1332)
!1332 = !{!1333, !1334, !1335}
!1333 = !DILocalVariable(name: "GPIOx", arg: 1, scope: !1331, file: !1282, line: 473, type: !213)
!1334 = !DILocalVariable(name: "Pin", arg: 2, scope: !1331, file: !1282, line: 473, type: !156)
!1335 = !DILocalVariable(name: "Pull", arg: 3, scope: !1331, file: !1282, line: 473, type: !156)
!1336 = !DILocation(line: 473, column: 55, scope: !1331)
!1337 = !DILocation(line: 473, column: 71, scope: !1331)
!1338 = !DILocation(line: 473, column: 85, scope: !1331)
!1339 = !DILocation(line: 475, column: 29, scope: !1331)
!1340 = !DILocation(line: 475, column: 36, scope: !1331)
!1341 = !DILocation(line: 475, column: 52, scope: !1331)
!1342 = !DILocation(line: 475, column: 58, scope: !1331)
!1343 = !DILocation(line: 475, column: 56, scope: !1331)
!1344 = !DILocation(line: 475, column: 63, scope: !1331)
!1345 = !DILocation(line: 475, column: 48, scope: !1331)
!1346 = !DILocation(line: 475, column: 45, scope: !1331)
!1347 = !DILocation(line: 475, column: 90, scope: !1331)
!1348 = !DILocation(line: 475, column: 96, scope: !1331)
!1349 = !DILocation(line: 475, column: 94, scope: !1331)
!1350 = !DILocation(line: 475, column: 103, scope: !1331)
!1351 = !DILocation(line: 475, column: 101, scope: !1331)
!1352 = !DILocation(line: 475, column: 85, scope: !1331)
!1353 = !DILocation(line: 475, column: 6, scope: !1331)
!1354 = !DILocation(line: 475, column: 13, scope: !1331)
!1355 = !DILocation(line: 475, column: 21, scope: !1331)
!1356 = !DILocation(line: 476, column: 1, scope: !1331)
!1357 = distinct !DISubprogram(name: "LL_GPIO_SetAFPin_0_7", scope: !1282, file: !1282, line: 536, type: !1283, scopeLine: 537, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1358)
!1358 = !{!1359, !1360, !1361}
!1359 = !DILocalVariable(name: "GPIOx", arg: 1, scope: !1357, file: !1282, line: 536, type: !213)
!1360 = !DILocalVariable(name: "Pin", arg: 2, scope: !1357, file: !1282, line: 536, type: !156)
!1361 = !DILocalVariable(name: "Alternate", arg: 3, scope: !1357, file: !1282, line: 536, type: !156)
!1362 = !DILocation(line: 536, column: 57, scope: !1357)
!1363 = !DILocation(line: 536, column: 73, scope: !1357)
!1364 = !DILocation(line: 536, column: 87, scope: !1357)
!1365 = !DILocation(line: 538, column: 30, scope: !1357)
!1366 = !DILocation(line: 538, column: 37, scope: !1357)
!1367 = !DILocation(line: 538, column: 56, scope: !1357)
!1368 = !DILocation(line: 538, column: 62, scope: !1357)
!1369 = !DILocation(line: 538, column: 60, scope: !1357)
!1370 = !DILocation(line: 538, column: 69, scope: !1357)
!1371 = !DILocation(line: 538, column: 67, scope: !1357)
!1372 = !DILocation(line: 538, column: 76, scope: !1357)
!1373 = !DILocation(line: 538, column: 74, scope: !1357)
!1374 = !DILocation(line: 538, column: 81, scope: !1357)
!1375 = !DILocation(line: 538, column: 50, scope: !1357)
!1376 = !DILocation(line: 538, column: 47, scope: !1357)
!1377 = !DILocation(line: 538, column: 110, scope: !1357)
!1378 = !DILocation(line: 538, column: 116, scope: !1357)
!1379 = !DILocation(line: 538, column: 114, scope: !1357)
!1380 = !DILocation(line: 538, column: 123, scope: !1357)
!1381 = !DILocation(line: 538, column: 121, scope: !1357)
!1382 = !DILocation(line: 538, column: 130, scope: !1357)
!1383 = !DILocation(line: 538, column: 128, scope: !1357)
!1384 = !DILocation(line: 538, column: 137, scope: !1357)
!1385 = !DILocation(line: 538, column: 135, scope: !1357)
!1386 = !DILocation(line: 538, column: 103, scope: !1357)
!1387 = !DILocation(line: 538, column: 6, scope: !1357)
!1388 = !DILocation(line: 538, column: 13, scope: !1357)
!1389 = !DILocation(line: 538, column: 22, scope: !1357)
!1390 = !DILocation(line: 540, column: 1, scope: !1357)
!1391 = distinct !DISubprogram(name: "LL_GPIO_SetAFPin_8_15", scope: !1282, file: !1282, line: 597, type: !1283, scopeLine: 598, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1392)
!1392 = !{!1393, !1394, !1395}
!1393 = !DILocalVariable(name: "GPIOx", arg: 1, scope: !1391, file: !1282, line: 597, type: !213)
!1394 = !DILocalVariable(name: "Pin", arg: 2, scope: !1391, file: !1282, line: 597, type: !156)
!1395 = !DILocalVariable(name: "Alternate", arg: 3, scope: !1391, file: !1282, line: 597, type: !156)
!1396 = !DILocation(line: 597, column: 58, scope: !1391)
!1397 = !DILocation(line: 597, column: 74, scope: !1391)
!1398 = !DILocation(line: 597, column: 88, scope: !1391)
!1399 = !DILocation(line: 599, column: 30, scope: !1391)
!1400 = !DILocation(line: 599, column: 37, scope: !1391)
!1401 = !DILocation(line: 599, column: 57, scope: !1391)
!1402 = !DILocation(line: 599, column: 61, scope: !1391)
!1403 = !DILocation(line: 599, column: 71, scope: !1391)
!1404 = !DILocation(line: 599, column: 75, scope: !1391)
!1405 = !DILocation(line: 599, column: 68, scope: !1391)
!1406 = !DILocation(line: 599, column: 86, scope: !1391)
!1407 = !DILocation(line: 599, column: 90, scope: !1391)
!1408 = !DILocation(line: 599, column: 83, scope: !1391)
!1409 = !DILocation(line: 599, column: 101, scope: !1391)
!1410 = !DILocation(line: 599, column: 105, scope: !1391)
!1411 = !DILocation(line: 599, column: 98, scope: !1391)
!1412 = !DILocation(line: 599, column: 113, scope: !1391)
!1413 = !DILocation(line: 599, column: 50, scope: !1391)
!1414 = !DILocation(line: 599, column: 47, scope: !1391)
!1415 = !DILocation(line: 599, column: 143, scope: !1391)
!1416 = !DILocation(line: 599, column: 147, scope: !1391)
!1417 = !DILocation(line: 599, column: 157, scope: !1391)
!1418 = !DILocation(line: 599, column: 161, scope: !1391)
!1419 = !DILocation(line: 599, column: 154, scope: !1391)
!1420 = !DILocation(line: 599, column: 172, scope: !1391)
!1421 = !DILocation(line: 599, column: 176, scope: !1391)
!1422 = !DILocation(line: 599, column: 169, scope: !1391)
!1423 = !DILocation(line: 599, column: 187, scope: !1391)
!1424 = !DILocation(line: 599, column: 191, scope: !1391)
!1425 = !DILocation(line: 599, column: 184, scope: !1391)
!1426 = !DILocation(line: 599, column: 201, scope: !1391)
!1427 = !DILocation(line: 599, column: 199, scope: !1391)
!1428 = !DILocation(line: 599, column: 135, scope: !1391)
!1429 = !DILocation(line: 599, column: 6, scope: !1391)
!1430 = !DILocation(line: 599, column: 13, scope: !1391)
!1431 = !DILocation(line: 599, column: 22, scope: !1391)
!1432 = !DILocation(line: 601, column: 1, scope: !1391)
!1433 = distinct !DISubprogram(name: "LL_GPIO_SetPinMode", scope: !1282, file: !1282, line: 267, type: !1283, scopeLine: 268, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1434)
!1434 = !{!1435, !1436, !1437}
!1435 = !DILocalVariable(name: "GPIOx", arg: 1, scope: !1433, file: !1282, line: 267, type: !213)
!1436 = !DILocalVariable(name: "Pin", arg: 2, scope: !1433, file: !1282, line: 267, type: !156)
!1437 = !DILocalVariable(name: "Mode", arg: 3, scope: !1433, file: !1282, line: 267, type: !156)
!1438 = !DILocation(line: 267, column: 55, scope: !1433)
!1439 = !DILocation(line: 267, column: 71, scope: !1433)
!1440 = !DILocation(line: 267, column: 85, scope: !1433)
!1441 = !DILocation(line: 269, column: 29, scope: !1433)
!1442 = !DILocation(line: 269, column: 36, scope: !1433)
!1443 = !DILocation(line: 269, column: 52, scope: !1433)
!1444 = !DILocation(line: 269, column: 58, scope: !1433)
!1445 = !DILocation(line: 269, column: 56, scope: !1433)
!1446 = !DILocation(line: 269, column: 63, scope: !1433)
!1447 = !DILocation(line: 269, column: 48, scope: !1433)
!1448 = !DILocation(line: 269, column: 45, scope: !1433)
!1449 = !DILocation(line: 269, column: 90, scope: !1433)
!1450 = !DILocation(line: 269, column: 96, scope: !1433)
!1451 = !DILocation(line: 269, column: 94, scope: !1433)
!1452 = !DILocation(line: 269, column: 103, scope: !1433)
!1453 = !DILocation(line: 269, column: 101, scope: !1433)
!1454 = !DILocation(line: 269, column: 85, scope: !1433)
!1455 = !DILocation(line: 269, column: 6, scope: !1433)
!1456 = !DILocation(line: 269, column: 13, scope: !1433)
!1457 = !DILocation(line: 269, column: 21, scope: !1433)
!1458 = !DILocation(line: 270, column: 1, scope: !1433)
!1459 = distinct !DISubprogram(name: "z_stm32_hsem_unlock", scope: !1272, file: !1272, line: 151, type: !1460, scopeLine: 152, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1462)
!1460 = !DISubroutineType(types: !1461)
!1461 = !{null, !156}
!1462 = !{!1463}
!1463 = !DILocalVariable(name: "hsem", arg: 1, scope: !1459, file: !1272, line: 151, type: !156)
!1464 = !DILocation(line: 151, column: 49, scope: !1459)
!1465 = !DILocation(line: 157, column: 1, scope: !1459)
!1466 = distinct !DISubprogram(name: "LL_GPIO_ResetOutputPin", scope: !1282, file: !1282, line: 867, type: !1467, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1469)
!1467 = !DISubroutineType(types: !1468)
!1468 = !{null, !213, !156}
!1469 = !{!1470, !1471}
!1470 = !DILocalVariable(name: "GPIOx", arg: 1, scope: !1466, file: !1282, line: 867, type: !213)
!1471 = !DILocalVariable(name: "PinMask", arg: 2, scope: !1466, file: !1282, line: 867, type: !156)
!1472 = !DILocation(line: 867, column: 59, scope: !1466)
!1473 = !DILocation(line: 867, column: 75, scope: !1466)
!1474 = !DILocation(line: 869, column: 20, scope: !1466)
!1475 = !DILocation(line: 869, column: 5, scope: !1466)
!1476 = !DILocation(line: 869, column: 12, scope: !1466)
!1477 = !DILocation(line: 869, column: 17, scope: !1466)
!1478 = !DILocation(line: 870, column: 1, scope: !1466)
!1479 = distinct !DISubprogram(name: "gpio_stm32_config", scope: !2, file: !2, line: 512, type: !130, scopeLine: 514, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1480)
!1480 = !{!1481, !1482, !1483, !1484, !1485}
!1481 = !DILocalVariable(name: "dev", arg: 1, scope: !1479, file: !2, line: 512, type: !132)
!1482 = !DILocalVariable(name: "pin", arg: 2, scope: !1479, file: !2, line: 513, type: !154)
!1483 = !DILocalVariable(name: "flags", arg: 3, scope: !1479, file: !2, line: 513, type: !155)
!1484 = !DILocalVariable(name: "err", scope: !1479, file: !2, line: 515, type: !123)
!1485 = !DILocalVariable(name: "pincfg", scope: !1479, file: !2, line: 516, type: !123)
!1486 = !DILocation(line: 512, column: 51, scope: !1479)
!1487 = !DILocation(line: 513, column: 20, scope: !1479)
!1488 = !DILocation(line: 513, column: 38, scope: !1479)
!1489 = !DILocation(line: 515, column: 2, scope: !1479)
!1490 = !DILocation(line: 515, column: 6, scope: !1479)
!1491 = !DILocation(line: 516, column: 2, scope: !1479)
!1492 = !DILocation(line: 516, column: 6, scope: !1479)
!1493 = !DILocation(line: 521, column: 33, scope: !1479)
!1494 = !DILocation(line: 521, column: 8, scope: !1479)
!1495 = !DILocation(line: 521, column: 6, scope: !1479)
!1496 = !DILocation(line: 522, column: 6, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !1479, file: !2, line: 522, column: 6)
!1498 = !DILocation(line: 522, column: 10, scope: !1497)
!1499 = !DILocation(line: 522, column: 6, scope: !1479)
!1500 = !DILocation(line: 523, column: 10, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1497, file: !2, line: 522, column: 16)
!1502 = !DILocation(line: 523, column: 3, scope: !1501)
!1503 = !DILocation(line: 527, column: 30, scope: !1479)
!1504 = !DILocation(line: 527, column: 8, scope: !1479)
!1505 = !DILocation(line: 527, column: 6, scope: !1479)
!1506 = !DILocation(line: 528, column: 6, scope: !1507)
!1507 = distinct !DILexicalBlock(scope: !1479, file: !2, line: 528, column: 6)
!1508 = !DILocation(line: 528, column: 10, scope: !1507)
!1509 = !DILocation(line: 528, column: 6, scope: !1479)
!1510 = !DILocation(line: 529, column: 10, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1507, file: !2, line: 528, column: 15)
!1512 = !DILocation(line: 529, column: 3, scope: !1511)
!1513 = !DILocation(line: 532, column: 7, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1479, file: !2, line: 532, column: 6)
!1515 = !DILocation(line: 532, column: 13, scope: !1514)
!1516 = !DILocation(line: 532, column: 27, scope: !1514)
!1517 = !DILocation(line: 532, column: 6, scope: !1479)
!1518 = !DILocation(line: 533, column: 8, scope: !1519)
!1519 = distinct !DILexicalBlock(scope: !1520, file: !2, line: 533, column: 7)
!1520 = distinct !DILexicalBlock(scope: !1514, file: !2, line: 532, column: 33)
!1521 = !DILocation(line: 533, column: 14, scope: !1519)
!1522 = !DILocation(line: 533, column: 28, scope: !1519)
!1523 = !DILocation(line: 533, column: 7, scope: !1520)
!1524 = !DILocation(line: 534, column: 33, scope: !1525)
!1525 = distinct !DILexicalBlock(scope: !1519, file: !2, line: 533, column: 34)
!1526 = !DILocation(line: 534, column: 47, scope: !1525)
!1527 = !DILocation(line: 534, column: 46, scope: !1525)
!1528 = !DILocation(line: 534, column: 43, scope: !1525)
!1529 = !DILocation(line: 534, column: 4, scope: !1525)
!1530 = !DILocation(line: 535, column: 3, scope: !1525)
!1531 = !DILocation(line: 535, column: 15, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1519, file: !2, line: 535, column: 14)
!1533 = !DILocation(line: 535, column: 21, scope: !1532)
!1534 = !DILocation(line: 535, column: 35, scope: !1532)
!1535 = !DILocation(line: 535, column: 14, scope: !1519)
!1536 = !DILocation(line: 536, column: 35, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1532, file: !2, line: 535, column: 41)
!1538 = !DILocation(line: 536, column: 49, scope: !1537)
!1539 = !DILocation(line: 536, column: 48, scope: !1537)
!1540 = !DILocation(line: 536, column: 45, scope: !1537)
!1541 = !DILocation(line: 536, column: 4, scope: !1537)
!1542 = !DILocation(line: 537, column: 3, scope: !1537)
!1543 = !DILocation(line: 538, column: 2, scope: !1520)
!1544 = !DILocation(line: 540, column: 27, scope: !1479)
!1545 = !DILocation(line: 540, column: 32, scope: !1479)
!1546 = !DILocation(line: 540, column: 37, scope: !1479)
!1547 = !DILocation(line: 540, column: 2, scope: !1479)
!1548 = !DILocation(line: 543, column: 8, scope: !1549)
!1549 = distinct !DILexicalBlock(scope: !1479, file: !2, line: 543, column: 6)
!1550 = !DILocation(line: 543, column: 14, scope: !1549)
!1551 = !DILocation(line: 543, column: 28, scope: !1549)
!1552 = !DILocation(line: 543, column: 34, scope: !1549)
!1553 = !DILocation(line: 543, column: 39, scope: !1549)
!1554 = !DILocation(line: 543, column: 45, scope: !1549)
!1555 = !DILocation(line: 543, column: 59, scope: !1549)
!1556 = !DILocation(line: 543, column: 6, scope: !1479)
!1557 = !DILocation(line: 544, column: 31, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !1549, file: !2, line: 543, column: 66)
!1559 = !DILocation(line: 544, column: 9, scope: !1558)
!1560 = !DILocation(line: 544, column: 7, scope: !1558)
!1561 = !DILocation(line: 545, column: 7, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !1558, file: !2, line: 545, column: 7)
!1563 = !DILocation(line: 545, column: 11, scope: !1562)
!1564 = !DILocation(line: 545, column: 7, scope: !1558)
!1565 = !DILocation(line: 546, column: 11, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1562, file: !2, line: 545, column: 16)
!1567 = !DILocation(line: 546, column: 4, scope: !1566)
!1568 = !DILocation(line: 548, column: 2, scope: !1558)
!1569 = !DILocation(line: 550, column: 2, scope: !1479)
!1570 = !DILocation(line: 551, column: 1, scope: !1479)
!1571 = distinct !DISubprogram(name: "gpio_stm32_port_get_raw", scope: !2, file: !2, line: 399, type: !1572, scopeLine: 400, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1574)
!1572 = !DISubroutineType(types: !1573)
!1573 = !{!123, !132, !277}
!1574 = !{!1575, !1576, !1577, !1578}
!1575 = !DILocalVariable(name: "dev", arg: 1, scope: !1571, file: !2, line: 399, type: !132)
!1576 = !DILocalVariable(name: "value", arg: 2, scope: !1571, file: !2, line: 399, type: !277)
!1577 = !DILocalVariable(name: "cfg", scope: !1571, file: !2, line: 401, type: !1058)
!1578 = !DILocalVariable(name: "gpio", scope: !1571, file: !2, line: 402, type: !213)
!1579 = !DILocation(line: 399, column: 57, scope: !1571)
!1580 = !DILocation(line: 399, column: 72, scope: !1571)
!1581 = !DILocation(line: 401, column: 2, scope: !1571)
!1582 = !DILocation(line: 401, column: 34, scope: !1571)
!1583 = !DILocation(line: 401, column: 40, scope: !1571)
!1584 = !DILocation(line: 401, column: 45, scope: !1571)
!1585 = !DILocation(line: 402, column: 2, scope: !1571)
!1586 = !DILocation(line: 402, column: 16, scope: !1571)
!1587 = !DILocation(line: 402, column: 39, scope: !1571)
!1588 = !DILocation(line: 402, column: 44, scope: !1571)
!1589 = !DILocation(line: 404, column: 33, scope: !1571)
!1590 = !DILocation(line: 404, column: 11, scope: !1571)
!1591 = !DILocation(line: 404, column: 3, scope: !1571)
!1592 = !DILocation(line: 404, column: 9, scope: !1571)
!1593 = !DILocation(line: 407, column: 1, scope: !1571)
!1594 = !DILocation(line: 406, column: 2, scope: !1571)
!1595 = distinct !DISubprogram(name: "gpio_stm32_port_set_masked_raw", scope: !2, file: !2, line: 409, type: !165, scopeLine: 412, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1596)
!1596 = !{!1597, !1598, !1599, !1600, !1601, !1602}
!1597 = !DILocalVariable(name: "dev", arg: 1, scope: !1595, file: !2, line: 409, type: !132)
!1598 = !DILocalVariable(name: "mask", arg: 2, scope: !1595, file: !2, line: 410, type: !167)
!1599 = !DILocalVariable(name: "value", arg: 3, scope: !1595, file: !2, line: 411, type: !162)
!1600 = !DILocalVariable(name: "cfg", scope: !1595, file: !2, line: 413, type: !1058)
!1601 = !DILocalVariable(name: "gpio", scope: !1595, file: !2, line: 414, type: !213)
!1602 = !DILocalVariable(name: "port_value", scope: !1595, file: !2, line: 415, type: !156)
!1603 = !DILocation(line: 409, column: 64, scope: !1595)
!1604 = !DILocation(line: 410, column: 25, scope: !1595)
!1605 = !DILocation(line: 411, column: 26, scope: !1595)
!1606 = !DILocation(line: 413, column: 2, scope: !1595)
!1607 = !DILocation(line: 413, column: 34, scope: !1595)
!1608 = !DILocation(line: 413, column: 40, scope: !1595)
!1609 = !DILocation(line: 413, column: 45, scope: !1595)
!1610 = !DILocation(line: 414, column: 2, scope: !1595)
!1611 = !DILocation(line: 414, column: 16, scope: !1595)
!1612 = !DILocation(line: 414, column: 39, scope: !1595)
!1613 = !DILocation(line: 414, column: 44, scope: !1595)
!1614 = !DILocation(line: 415, column: 2, scope: !1595)
!1615 = !DILocation(line: 415, column: 11, scope: !1595)
!1616 = !DILocation(line: 417, column: 2, scope: !1595)
!1617 = !DILocation(line: 419, column: 38, scope: !1595)
!1618 = !DILocation(line: 419, column: 15, scope: !1595)
!1619 = !DILocation(line: 419, column: 13, scope: !1595)
!1620 = !DILocation(line: 420, column: 26, scope: !1595)
!1621 = !DILocation(line: 420, column: 33, scope: !1595)
!1622 = !DILocation(line: 420, column: 47, scope: !1595)
!1623 = !DILocation(line: 420, column: 46, scope: !1595)
!1624 = !DILocation(line: 420, column: 44, scope: !1595)
!1625 = !DILocation(line: 420, column: 56, scope: !1595)
!1626 = !DILocation(line: 420, column: 63, scope: !1595)
!1627 = !DILocation(line: 420, column: 61, scope: !1595)
!1628 = !DILocation(line: 420, column: 53, scope: !1595)
!1629 = !DILocation(line: 420, column: 2, scope: !1595)
!1630 = !DILocation(line: 422, column: 2, scope: !1595)
!1631 = !DILocation(line: 425, column: 1, scope: !1595)
!1632 = !DILocation(line: 424, column: 2, scope: !1595)
!1633 = distinct !DISubprogram(name: "gpio_stm32_port_toggle_bits", scope: !2, file: !2, line: 462, type: !170, scopeLine: 464, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1634)
!1634 = !{!1635, !1636, !1637, !1638}
!1635 = !DILocalVariable(name: "dev", arg: 1, scope: !1633, file: !2, line: 462, type: !132)
!1636 = !DILocalVariable(name: "pins", arg: 2, scope: !1633, file: !2, line: 463, type: !167)
!1637 = !DILocalVariable(name: "cfg", scope: !1633, file: !2, line: 465, type: !1058)
!1638 = !DILocalVariable(name: "gpio", scope: !1633, file: !2, line: 466, type: !213)
!1639 = !DILocation(line: 462, column: 61, scope: !1633)
!1640 = !DILocation(line: 463, column: 29, scope: !1633)
!1641 = !DILocation(line: 465, column: 2, scope: !1633)
!1642 = !DILocation(line: 465, column: 34, scope: !1633)
!1643 = !DILocation(line: 465, column: 40, scope: !1633)
!1644 = !DILocation(line: 465, column: 45, scope: !1633)
!1645 = !DILocation(line: 466, column: 2, scope: !1633)
!1646 = !DILocation(line: 466, column: 16, scope: !1633)
!1647 = !DILocation(line: 466, column: 39, scope: !1633)
!1648 = !DILocation(line: 466, column: 44, scope: !1633)
!1649 = !DILocation(line: 472, column: 2, scope: !1633)
!1650 = !DILocation(line: 473, column: 20, scope: !1633)
!1651 = !DILocation(line: 473, column: 26, scope: !1633)
!1652 = !DILocation(line: 473, column: 34, scope: !1633)
!1653 = !DILocation(line: 473, column: 32, scope: !1633)
!1654 = !DILocation(line: 473, column: 4, scope: !1633)
!1655 = !DILocation(line: 473, column: 10, scope: !1633)
!1656 = !DILocation(line: 473, column: 15, scope: !1633)
!1657 = !DILocation(line: 474, column: 2, scope: !1633)
!1658 = !DILocation(line: 477, column: 1, scope: !1633)
!1659 = !DILocation(line: 476, column: 2, scope: !1633)
!1660 = distinct !DISubprogram(name: "gpio_stm32_pin_interrupt_configure", scope: !2, file: !2, line: 583, type: !176, scopeLine: 587, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1661)
!1661 = !{!1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670}
!1662 = !DILocalVariable(name: "dev", arg: 1, scope: !1660, file: !2, line: 583, type: !132)
!1663 = !DILocalVariable(name: "pin", arg: 2, scope: !1660, file: !2, line: 584, type: !154)
!1664 = !DILocalVariable(name: "mode", arg: 3, scope: !1660, file: !2, line: 585, type: !95)
!1665 = !DILocalVariable(name: "trig", arg: 4, scope: !1660, file: !2, line: 586, type: !102)
!1666 = !DILocalVariable(name: "cfg", scope: !1660, file: !2, line: 588, type: !1058)
!1667 = !DILocalVariable(name: "data", scope: !1660, file: !2, line: 589, type: !1195)
!1668 = !DILocalVariable(name: "edge", scope: !1660, file: !2, line: 590, type: !123)
!1669 = !DILocalVariable(name: "err", scope: !1660, file: !2, line: 591, type: !123)
!1670 = !DILabel(scope: !1660, name: "exit", file: !2, line: 642)
!1671 = !DILocation(line: 583, column: 68, scope: !1660)
!1672 = !DILocation(line: 584, column: 23, scope: !1660)
!1673 = !DILocation(line: 585, column: 31, scope: !1660)
!1674 = !DILocation(line: 586, column: 31, scope: !1660)
!1675 = !DILocation(line: 588, column: 2, scope: !1660)
!1676 = !DILocation(line: 588, column: 34, scope: !1660)
!1677 = !DILocation(line: 588, column: 40, scope: !1660)
!1678 = !DILocation(line: 588, column: 45, scope: !1660)
!1679 = !DILocation(line: 589, column: 2, scope: !1660)
!1680 = !DILocation(line: 589, column: 26, scope: !1660)
!1681 = !DILocation(line: 589, column: 33, scope: !1660)
!1682 = !DILocation(line: 589, column: 38, scope: !1660)
!1683 = !DILocation(line: 590, column: 2, scope: !1660)
!1684 = !DILocation(line: 590, column: 6, scope: !1660)
!1685 = !DILocation(line: 591, column: 2, scope: !1660)
!1686 = !DILocation(line: 591, column: 6, scope: !1660)
!1687 = !DILocation(line: 603, column: 6, scope: !1688)
!1688 = distinct !DILexicalBlock(scope: !1660, file: !2, line: 603, column: 6)
!1689 = !DILocation(line: 603, column: 11, scope: !1688)
!1690 = !DILocation(line: 603, column: 6, scope: !1660)
!1691 = !DILocation(line: 604, column: 34, scope: !1692)
!1692 = distinct !DILexicalBlock(scope: !1693, file: !2, line: 604, column: 7)
!1693 = distinct !DILexicalBlock(scope: !1688, file: !2, line: 603, column: 38)
!1694 = !DILocation(line: 604, column: 7, scope: !1692)
!1695 = !DILocation(line: 604, column: 42, scope: !1692)
!1696 = !DILocation(line: 604, column: 47, scope: !1692)
!1697 = !DILocation(line: 604, column: 39, scope: !1692)
!1698 = !DILocation(line: 604, column: 7, scope: !1693)
!1699 = !DILocation(line: 605, column: 23, scope: !1700)
!1700 = distinct !DILexicalBlock(scope: !1692, file: !2, line: 604, column: 53)
!1701 = !DILocation(line: 605, column: 4, scope: !1700)
!1702 = !DILocation(line: 606, column: 30, scope: !1700)
!1703 = !DILocation(line: 606, column: 4, scope: !1700)
!1704 = !DILocation(line: 607, column: 23, scope: !1700)
!1705 = !DILocation(line: 607, column: 4, scope: !1700)
!1706 = !DILocation(line: 608, column: 3, scope: !1700)
!1707 = !DILocation(line: 610, column: 3, scope: !1693)
!1708 = !DILocation(line: 614, column: 6, scope: !1709)
!1709 = distinct !DILexicalBlock(scope: !1660, file: !2, line: 614, column: 6)
!1710 = !DILocation(line: 614, column: 11, scope: !1709)
!1711 = !DILocation(line: 614, column: 6, scope: !1660)
!1712 = !DILocation(line: 615, column: 7, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1709, file: !2, line: 614, column: 35)
!1714 = !DILocation(line: 616, column: 3, scope: !1713)
!1715 = !DILocation(line: 619, column: 30, scope: !1716)
!1716 = distinct !DILexicalBlock(scope: !1660, file: !2, line: 619, column: 6)
!1717 = !DILocation(line: 619, column: 51, scope: !1716)
!1718 = !DILocation(line: 619, column: 6, scope: !1716)
!1719 = !DILocation(line: 619, column: 57, scope: !1716)
!1720 = !DILocation(line: 619, column: 6, scope: !1660)
!1721 = !DILocation(line: 620, column: 7, scope: !1722)
!1722 = distinct !DILexicalBlock(scope: !1716, file: !2, line: 619, column: 63)
!1723 = !DILocation(line: 621, column: 3, scope: !1722)
!1724 = !DILocation(line: 624, column: 24, scope: !1660)
!1725 = !DILocation(line: 624, column: 29, scope: !1660)
!1726 = !DILocation(line: 624, column: 35, scope: !1660)
!1727 = !DILocation(line: 624, column: 2, scope: !1660)
!1728 = !DILocation(line: 626, column: 10, scope: !1660)
!1729 = !DILocation(line: 626, column: 2, scope: !1660)
!1730 = !DILocation(line: 628, column: 8, scope: !1731)
!1731 = distinct !DILexicalBlock(scope: !1660, file: !2, line: 626, column: 16)
!1732 = !DILocation(line: 629, column: 3, scope: !1731)
!1733 = !DILocation(line: 631, column: 8, scope: !1731)
!1734 = !DILocation(line: 632, column: 3, scope: !1731)
!1735 = !DILocation(line: 634, column: 8, scope: !1731)
!1736 = !DILocation(line: 635, column: 3, scope: !1731)
!1737 = !DILocation(line: 638, column: 21, scope: !1660)
!1738 = !DILocation(line: 638, column: 26, scope: !1660)
!1739 = !DILocation(line: 638, column: 2, scope: !1660)
!1740 = !DILocation(line: 640, column: 20, scope: !1660)
!1741 = !DILocation(line: 640, column: 2, scope: !1660)
!1742 = !DILocation(line: 642, column: 1, scope: !1660)
!1743 = !DILocation(line: 643, column: 9, scope: !1660)
!1744 = !DILocation(line: 644, column: 1, scope: !1660)
!1745 = !DILocation(line: 643, column: 2, scope: !1660)
!1746 = distinct !DISubprogram(name: "gpio_stm32_manage_callback", scope: !2, file: !2, line: 646, type: !180, scopeLine: 649, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1747)
!1747 = !{!1748, !1749, !1750, !1751}
!1748 = !DILocalVariable(name: "dev", arg: 1, scope: !1746, file: !2, line: 646, type: !132)
!1749 = !DILocalVariable(name: "callback", arg: 2, scope: !1746, file: !2, line: 647, type: !182)
!1750 = !DILocalVariable(name: "set", arg: 3, scope: !1746, file: !2, line: 648, type: !152)
!1751 = !DILocalVariable(name: "data", scope: !1746, file: !2, line: 650, type: !1195)
!1752 = !DILocation(line: 646, column: 60, scope: !1746)
!1753 = !DILocation(line: 647, column: 33, scope: !1746)
!1754 = !DILocation(line: 648, column: 17, scope: !1746)
!1755 = !DILocation(line: 650, column: 2, scope: !1746)
!1756 = !DILocation(line: 650, column: 26, scope: !1746)
!1757 = !DILocation(line: 650, column: 33, scope: !1746)
!1758 = !DILocation(line: 650, column: 38, scope: !1746)
!1759 = !DILocation(line: 652, column: 31, scope: !1746)
!1760 = !DILocation(line: 652, column: 37, scope: !1746)
!1761 = !DILocation(line: 652, column: 41, scope: !1746)
!1762 = !DILocation(line: 652, column: 51, scope: !1746)
!1763 = !{i8 0, i8 2}
!1764 = !DILocation(line: 652, column: 9, scope: !1746)
!1765 = !DILocation(line: 653, column: 1, scope: !1746)
!1766 = !DILocation(line: 652, column: 2, scope: !1746)
!1767 = distinct !DISubprogram(name: "gpio_stm32_flags_to_conf", scope: !2, file: !2, line: 47, type: !1768, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1771)
!1768 = !DISubroutineType(types: !1769)
!1769 = !{!123, !155, !1770}
!1770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 32)
!1771 = !{!1772, !1773}
!1772 = !DILocalVariable(name: "flags", arg: 1, scope: !1767, file: !2, line: 47, type: !155)
!1773 = !DILocalVariable(name: "pincfg", arg: 2, scope: !1767, file: !2, line: 47, type: !1770)
!1774 = !DILocation(line: 47, column: 50, scope: !1767)
!1775 = !DILocation(line: 47, column: 62, scope: !1767)
!1776 = !DILocation(line: 50, column: 7, scope: !1777)
!1777 = distinct !DILexicalBlock(scope: !1767, file: !2, line: 50, column: 6)
!1778 = !DILocation(line: 50, column: 13, scope: !1777)
!1779 = !DILocation(line: 50, column: 27, scope: !1777)
!1780 = !DILocation(line: 50, column: 6, scope: !1767)
!1781 = !DILocation(line: 53, column: 4, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !1777, file: !2, line: 50, column: 33)
!1783 = !DILocation(line: 53, column: 11, scope: !1782)
!1784 = !DILocation(line: 55, column: 8, scope: !1785)
!1785 = distinct !DILexicalBlock(scope: !1782, file: !2, line: 55, column: 7)
!1786 = !DILocation(line: 55, column: 14, scope: !1785)
!1787 = !DILocation(line: 55, column: 26, scope: !1785)
!1788 = !DILocation(line: 55, column: 7, scope: !1782)
!1789 = !DILocation(line: 56, column: 8, scope: !1790)
!1790 = distinct !DILexicalBlock(scope: !1791, file: !2, line: 56, column: 8)
!1791 = distinct !DILexicalBlock(scope: !1785, file: !2, line: 55, column: 32)
!1792 = !DILocation(line: 56, column: 14, scope: !1790)
!1793 = !DILocation(line: 56, column: 8, scope: !1791)
!1794 = !DILocation(line: 57, column: 6, scope: !1795)
!1795 = distinct !DILexicalBlock(scope: !1790, file: !2, line: 56, column: 26)
!1796 = !DILocation(line: 57, column: 13, scope: !1795)
!1797 = !DILocation(line: 58, column: 4, scope: !1795)
!1798 = !DILocation(line: 60, column: 5, scope: !1799)
!1799 = distinct !DILexicalBlock(scope: !1790, file: !2, line: 58, column: 11)
!1800 = !DILocation(line: 62, column: 3, scope: !1791)
!1801 = !DILocation(line: 63, column: 5, scope: !1802)
!1802 = distinct !DILexicalBlock(scope: !1785, file: !2, line: 62, column: 10)
!1803 = !DILocation(line: 63, column: 12, scope: !1802)
!1804 = !DILocation(line: 66, column: 8, scope: !1805)
!1805 = distinct !DILexicalBlock(scope: !1782, file: !2, line: 66, column: 7)
!1806 = !DILocation(line: 66, column: 14, scope: !1805)
!1807 = !DILocation(line: 66, column: 26, scope: !1805)
!1808 = !DILocation(line: 66, column: 7, scope: !1782)
!1809 = !DILocation(line: 67, column: 5, scope: !1810)
!1810 = distinct !DILexicalBlock(scope: !1805, file: !2, line: 66, column: 32)
!1811 = !DILocation(line: 67, column: 12, scope: !1810)
!1812 = !DILocation(line: 68, column: 3, scope: !1810)
!1813 = !DILocation(line: 68, column: 15, scope: !1814)
!1814 = distinct !DILexicalBlock(scope: !1805, file: !2, line: 68, column: 14)
!1815 = !DILocation(line: 68, column: 21, scope: !1814)
!1816 = !DILocation(line: 68, column: 33, scope: !1814)
!1817 = !DILocation(line: 68, column: 14, scope: !1805)
!1818 = !DILocation(line: 69, column: 5, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !1814, file: !2, line: 68, column: 39)
!1820 = !DILocation(line: 69, column: 12, scope: !1819)
!1821 = !DILocation(line: 70, column: 3, scope: !1819)
!1822 = !DILocation(line: 72, column: 2, scope: !1782)
!1823 = !DILocation(line: 72, column: 14, scope: !1824)
!1824 = distinct !DILexicalBlock(scope: !1777, file: !2, line: 72, column: 13)
!1825 = !DILocation(line: 72, column: 20, scope: !1824)
!1826 = !DILocation(line: 72, column: 34, scope: !1824)
!1827 = !DILocation(line: 72, column: 13, scope: !1777)
!1828 = !DILocation(line: 75, column: 4, scope: !1829)
!1829 = distinct !DILexicalBlock(scope: !1824, file: !2, line: 72, column: 40)
!1830 = !DILocation(line: 75, column: 11, scope: !1829)
!1831 = !DILocation(line: 77, column: 8, scope: !1832)
!1832 = distinct !DILexicalBlock(scope: !1829, file: !2, line: 77, column: 7)
!1833 = !DILocation(line: 77, column: 14, scope: !1832)
!1834 = !DILocation(line: 77, column: 26, scope: !1832)
!1835 = !DILocation(line: 77, column: 7, scope: !1829)
!1836 = !DILocation(line: 78, column: 5, scope: !1837)
!1837 = distinct !DILexicalBlock(scope: !1832, file: !2, line: 77, column: 32)
!1838 = !DILocation(line: 78, column: 12, scope: !1837)
!1839 = !DILocation(line: 79, column: 3, scope: !1837)
!1840 = !DILocation(line: 79, column: 15, scope: !1841)
!1841 = distinct !DILexicalBlock(scope: !1832, file: !2, line: 79, column: 14)
!1842 = !DILocation(line: 79, column: 21, scope: !1841)
!1843 = !DILocation(line: 79, column: 33, scope: !1841)
!1844 = !DILocation(line: 79, column: 14, scope: !1832)
!1845 = !DILocation(line: 80, column: 5, scope: !1846)
!1846 = distinct !DILexicalBlock(scope: !1841, file: !2, line: 79, column: 39)
!1847 = !DILocation(line: 80, column: 12, scope: !1846)
!1848 = !DILocation(line: 81, column: 3, scope: !1846)
!1849 = !DILocation(line: 82, column: 5, scope: !1850)
!1850 = distinct !DILexicalBlock(scope: !1841, file: !2, line: 81, column: 10)
!1851 = !DILocation(line: 82, column: 12, scope: !1850)
!1852 = !DILocation(line: 84, column: 2, scope: !1829)
!1853 = !DILocation(line: 86, column: 4, scope: !1854)
!1854 = distinct !DILexicalBlock(scope: !1824, file: !2, line: 84, column: 9)
!1855 = !DILocation(line: 86, column: 11, scope: !1854)
!1856 = !DILocation(line: 89, column: 2, scope: !1767)
!1857 = !DILocation(line: 90, column: 1, scope: !1767)
!1858 = distinct !DISubprogram(name: "LL_GPIO_ReadInputPort", scope: !1282, file: !1282, line: 728, type: !1859, scopeLine: 729, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1861)
!1859 = !DISubroutineType(types: !1860)
!1860 = !{!156, !213}
!1861 = !{!1862}
!1862 = !DILocalVariable(name: "GPIOx", arg: 1, scope: !1858, file: !1282, line: 728, type: !213)
!1863 = !DILocation(line: 728, column: 62, scope: !1858)
!1864 = !DILocation(line: 730, column: 23, scope: !1858)
!1865 = !DILocation(line: 730, column: 30, scope: !1858)
!1866 = !DILocation(line: 730, column: 3, scope: !1858)
!1867 = distinct !DISubprogram(name: "LL_GPIO_ReadOutputPort", scope: !1282, file: !1282, line: 780, type: !1859, scopeLine: 781, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1868)
!1868 = !{!1869}
!1869 = !DILocalVariable(name: "GPIOx", arg: 1, scope: !1867, file: !1282, line: 780, type: !213)
!1870 = !DILocation(line: 780, column: 63, scope: !1867)
!1871 = !DILocation(line: 782, column: 23, scope: !1867)
!1872 = !DILocation(line: 782, column: 30, scope: !1867)
!1873 = !DILocation(line: 782, column: 3, scope: !1867)
!1874 = distinct !DISubprogram(name: "LL_GPIO_WriteOutputPort", scope: !1282, file: !1282, line: 769, type: !1467, scopeLine: 770, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1875)
!1875 = !{!1876, !1877}
!1876 = !DILocalVariable(name: "GPIOx", arg: 1, scope: !1874, file: !1282, line: 769, type: !213)
!1877 = !DILocalVariable(name: "PortValue", arg: 2, scope: !1874, file: !1282, line: 769, type: !156)
!1878 = !DILocation(line: 769, column: 60, scope: !1874)
!1879 = !DILocation(line: 769, column: 76, scope: !1874)
!1880 = !DILocation(line: 771, column: 20, scope: !1874)
!1881 = !DILocation(line: 771, column: 5, scope: !1874)
!1882 = !DILocation(line: 771, column: 12, scope: !1874)
!1883 = !DILocation(line: 771, column: 17, scope: !1874)
!1884 = !DILocation(line: 772, column: 1, scope: !1874)
!1885 = distinct !DISubprogram(name: "gpio_stm32_get_exti_source", scope: !2, file: !2, line: 335, type: !1886, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1888)
!1886 = !DISubroutineType(types: !1887)
!1887 = !{!123, !123}
!1888 = !{!1889, !1890, !1891}
!1889 = !DILocalVariable(name: "pin", arg: 1, scope: !1885, file: !2, line: 335, type: !123)
!1890 = !DILocalVariable(name: "line", scope: !1885, file: !2, line: 337, type: !156)
!1891 = !DILocalVariable(name: "port", scope: !1885, file: !2, line: 338, type: !123)
!1892 = !DILocation(line: 335, column: 43, scope: !1885)
!1893 = !DILocation(line: 337, column: 2, scope: !1885)
!1894 = !DILocation(line: 337, column: 11, scope: !1885)
!1895 = !DILocation(line: 337, column: 46, scope: !1885)
!1896 = !DILocation(line: 337, column: 18, scope: !1885)
!1897 = !DILocation(line: 338, column: 2, scope: !1885)
!1898 = !DILocation(line: 338, column: 6, scope: !1885)
!1899 = !DILocation(line: 345, column: 33, scope: !1885)
!1900 = !DILocation(line: 345, column: 9, scope: !1885)
!1901 = !DILocation(line: 345, column: 7, scope: !1885)
!1902 = !DILocation(line: 359, column: 9, scope: !1885)
!1903 = !DILocation(line: 360, column: 1, scope: !1885)
!1904 = !DILocation(line: 359, column: 2, scope: !1885)
!1905 = !DISubprogram(name: "stm32_exti_disable", scope: !108, file: !108, line: 40, type: !1906, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !522)
!1906 = !DISubroutineType(types: !1907)
!1907 = !{null, !123}
!1908 = !DISubprogram(name: "stm32_exti_unset_callback", scope: !108, file: !108, line: 81, type: !1906, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !522)
!1909 = !DISubprogram(name: "stm32_exti_trigger", scope: !108, file: !108, line: 62, type: !1910, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !522)
!1910 = !DISubroutineType(types: !1911)
!1911 = !{null, !123, !123}
!1912 = !DISubprogram(name: "stm32_exti_set_callback", scope: !108, file: !108, line: 74, type: !1913, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !522)
!1913 = !DISubroutineType(types: !1914)
!1914 = !{!123, !123, !1915, !122}
!1915 = !DIDerivedType(tag: DW_TAG_typedef, name: "stm32_exti_callback_t", file: !108, line: 65, baseType: !1916)
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1917, size: 32)
!1917 = !DISubroutineType(types: !1918)
!1918 = !{null, !123, !122}
!1919 = distinct !DISubprogram(name: "gpio_stm32_isr", scope: !2, file: !2, line: 37, type: !1917, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1920)
!1920 = !{!1921, !1922, !1923}
!1921 = !DILocalVariable(name: "line", arg: 1, scope: !1919, file: !2, line: 37, type: !123)
!1922 = !DILocalVariable(name: "arg", arg: 2, scope: !1919, file: !2, line: 37, type: !122)
!1923 = !DILocalVariable(name: "data", scope: !1919, file: !2, line: 39, type: !1195)
!1924 = !DILocation(line: 37, column: 32, scope: !1919)
!1925 = !DILocation(line: 37, column: 44, scope: !1919)
!1926 = !DILocation(line: 39, column: 2, scope: !1919)
!1927 = !DILocation(line: 39, column: 26, scope: !1919)
!1928 = !DILocation(line: 39, column: 33, scope: !1919)
!1929 = !DILocation(line: 41, column: 23, scope: !1919)
!1930 = !DILocation(line: 41, column: 29, scope: !1919)
!1931 = !DILocation(line: 41, column: 33, scope: !1919)
!1932 = !DILocation(line: 41, column: 39, scope: !1919)
!1933 = !DILocation(line: 41, column: 53, scope: !1919)
!1934 = !DILocation(line: 41, column: 49, scope: !1919)
!1935 = !DILocation(line: 41, column: 2, scope: !1919)
!1936 = !DILocation(line: 42, column: 1, scope: !1919)
!1937 = distinct !DISubprogram(name: "gpio_stm32_enable_int", scope: !2, file: !2, line: 365, type: !1938, scopeLine: 366, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1940)
!1938 = !DISubroutineType(types: !1939)
!1939 = !{!123, !123, !123}
!1940 = !{!1941, !1942}
!1941 = !DILocalVariable(name: "port", arg: 1, scope: !1937, file: !2, line: 365, type: !123)
!1942 = !DILocalVariable(name: "pin", arg: 2, scope: !1937, file: !2, line: 365, type: !123)
!1943 = !DILocation(line: 365, column: 38, scope: !1937)
!1944 = !DILocation(line: 365, column: 48, scope: !1937)
!1945 = !DILocation(line: 394, column: 29, scope: !1937)
!1946 = !DILocation(line: 394, column: 35, scope: !1937)
!1947 = !DILocation(line: 394, column: 2, scope: !1937)
!1948 = !DILocation(line: 396, column: 2, scope: !1937)
!1949 = !DISubprogram(name: "stm32_exti_enable", scope: !108, file: !108, line: 33, type: !1906, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !522)
!1950 = distinct !DISubprogram(name: "gpio_stm32_pin_to_exti_line", scope: !2, file: !2, line: 295, type: !1257, scopeLine: 296, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1951)
!1951 = !{!1952}
!1952 = !DILocalVariable(name: "pin", arg: 1, scope: !1950, file: !2, line: 295, type: !123)
!1953 = !DILocation(line: 295, column: 56, scope: !1950)
!1954 = !DILocation(line: 299, column: 11, scope: !1950)
!1955 = !DILocation(line: 299, column: 15, scope: !1950)
!1956 = !DILocation(line: 299, column: 19, scope: !1950)
!1957 = !DILocation(line: 299, column: 24, scope: !1950)
!1958 = !DILocation(line: 299, column: 34, scope: !1950)
!1959 = !DILocation(line: 299, column: 38, scope: !1950)
!1960 = !DILocation(line: 299, column: 31, scope: !1950)
!1961 = !DILocation(line: 299, column: 2, scope: !1950)
!1962 = distinct !DISubprogram(name: "LL_SYSCFG_GetEXTISource", scope: !1963, file: !1963, line: 675, type: !1964, scopeLine: 676, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1966)
!1963 = !DIFile(filename: "modules/hal/stm32/stm32cube/stm32f0xx/drivers/include/stm32f0xx_ll_system.h", directory: "/home/sri/zephyrproject")
!1964 = !DISubroutineType(types: !1965)
!1965 = !{!156, !156}
!1966 = !{!1967}
!1967 = !DILocalVariable(name: "Line", arg: 1, scope: !1962, file: !1963, line: 675, type: !156)
!1968 = !DILocation(line: 675, column: 59, scope: !1962)
!1969 = !DILocation(line: 677, column: 82, scope: !1962)
!1970 = !DILocation(line: 677, column: 87, scope: !1962)
!1971 = !DILocation(line: 677, column: 23, scope: !1962)
!1972 = !DILocation(line: 677, column: 120, scope: !1962)
!1973 = !DILocation(line: 677, column: 125, scope: !1962)
!1974 = !DILocation(line: 677, column: 116, scope: !1962)
!1975 = !DILocation(line: 677, column: 96, scope: !1962)
!1976 = !DILocation(line: 677, column: 139, scope: !1962)
!1977 = !DILocation(line: 677, column: 144, scope: !1962)
!1978 = !DILocation(line: 677, column: 135, scope: !1962)
!1979 = !DILocation(line: 677, column: 3, scope: !1962)
!1980 = distinct !DISubprogram(name: "gpio_fire_callbacks", scope: !1981, file: !1981, line: 85, type: !1982, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1985)
!1981 = !DIFile(filename: "include/zephyr/drivers/gpio/gpio_utils.h", directory: "/home/sri/zephyrproject/zephyr")
!1982 = !DISubroutineType(types: !1983)
!1983 = !{null, !1984, !132, !156}
!1984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 32)
!1985 = !{!1986, !1987, !1988, !1989, !1990}
!1986 = !DILocalVariable(name: "list", arg: 1, scope: !1980, file: !1981, line: 85, type: !1984)
!1987 = !DILocalVariable(name: "port", arg: 2, scope: !1980, file: !1981, line: 86, type: !132)
!1988 = !DILocalVariable(name: "pins", arg: 3, scope: !1980, file: !1981, line: 87, type: !156)
!1989 = !DILocalVariable(name: "cb", scope: !1980, file: !1981, line: 89, type: !182)
!1990 = !DILocalVariable(name: "tmp", scope: !1980, file: !1981, line: 89, type: !182)
!1991 = !DILocation(line: 85, column: 53, scope: !1980)
!1992 = !DILocation(line: 86, column: 27, scope: !1980)
!1993 = !DILocation(line: 87, column: 15, scope: !1980)
!1994 = !DILocation(line: 89, column: 2, scope: !1980)
!1995 = !DILocation(line: 89, column: 24, scope: !1980)
!1996 = !DILocation(line: 89, column: 29, scope: !1980)
!1997 = !DILocation(line: 91, column: 34, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1980, file: !1981, line: 91, column: 2)
!1999 = !DILocation(line: 91, column: 14, scope: !1998)
!2000 = !DILocation(line: 91, column: 13, scope: !1998)
!2001 = !DILocation(line: 91, column: 102, scope: !2002)
!2002 = distinct !DILexicalBlock(scope: !1998, file: !1981, line: 91, column: 44)
!2003 = !DILocation(line: 91, column: 82, scope: !2002)
!2004 = !DILocation(line: 91, column: 111, scope: !2002)
!2005 = !DILocation(line: 91, column: 44, scope: !1998)
!2006 = !DILocation(line: 91, column: 160, scope: !2002)
!2007 = !DILocation(line: 91, column: 10, scope: !1998)
!2008 = !DILocation(line: 91, column: 186, scope: !1998)
!2009 = !DILocation(line: 91, column: 185, scope: !1998)
!2010 = !DILocation(line: 91, column: 217, scope: !1998)
!2011 = !DILocation(line: 91, column: 222, scope: !1998)
!2012 = !DILocation(line: 91, column: 194, scope: !1998)
!2013 = !DILocation(line: 91, column: 193, scope: !1998)
!2014 = !DILocation(line: 91, column: 294, scope: !2015)
!2015 = distinct !DILexicalBlock(scope: !1998, file: !1981, line: 91, column: 233)
!2016 = !DILocation(line: 91, column: 299, scope: !2015)
!2017 = !DILocation(line: 91, column: 271, scope: !2015)
!2018 = !DILocation(line: 91, column: 309, scope: !2015)
!2019 = !DILocation(line: 91, column: 233, scope: !1998)
!2020 = !DILocation(line: 91, column: 358, scope: !2015)
!2021 = !DILocation(line: 91, column: 182, scope: !1998)
!2022 = !DILocation(line: 91, column: 7, scope: !1998)
!2023 = !DILocation(line: 91, column: 390, scope: !2024)
!2024 = distinct !DILexicalBlock(scope: !1998, file: !1981, line: 91, column: 2)
!2025 = !DILocation(line: 91, column: 393, scope: !2024)
!2026 = !DILocation(line: 91, column: 2, scope: !1998)
!2027 = !DILocation(line: 92, column: 7, scope: !2028)
!2028 = distinct !DILexicalBlock(scope: !2029, file: !1981, line: 92, column: 7)
!2029 = distinct !DILexicalBlock(scope: !2024, file: !1981, line: 91, column: 630)
!2030 = !DILocation(line: 92, column: 11, scope: !2028)
!2031 = !DILocation(line: 92, column: 22, scope: !2028)
!2032 = !DILocation(line: 92, column: 20, scope: !2028)
!2033 = !DILocation(line: 92, column: 7, scope: !2029)
!2034 = !DILocation(line: 94, column: 4, scope: !2035)
!2035 = distinct !DILexicalBlock(scope: !2028, file: !1981, line: 92, column: 28)
!2036 = !DILocation(line: 94, column: 8, scope: !2035)
!2037 = !DILocation(line: 94, column: 16, scope: !2035)
!2038 = !DILocation(line: 94, column: 22, scope: !2035)
!2039 = !DILocation(line: 94, column: 26, scope: !2035)
!2040 = !DILocation(line: 94, column: 30, scope: !2035)
!2041 = !DILocation(line: 94, column: 41, scope: !2035)
!2042 = !DILocation(line: 94, column: 39, scope: !2035)
!2043 = !DILocation(line: 95, column: 3, scope: !2035)
!2044 = !DILocation(line: 96, column: 2, scope: !2029)
!2045 = !DILocation(line: 91, column: 413, scope: !2024)
!2046 = !DILocation(line: 91, column: 411, scope: !2024)
!2047 = !DILocation(line: 91, column: 426, scope: !2024)
!2048 = !DILocation(line: 91, column: 425, scope: !2024)
!2049 = !DILocation(line: 91, column: 457, scope: !2024)
!2050 = !DILocation(line: 91, column: 462, scope: !2024)
!2051 = !DILocation(line: 91, column: 434, scope: !2024)
!2052 = !DILocation(line: 91, column: 433, scope: !2024)
!2053 = !DILocation(line: 91, column: 534, scope: !2054)
!2054 = distinct !DILexicalBlock(scope: !2024, file: !1981, line: 91, column: 473)
!2055 = !DILocation(line: 91, column: 539, scope: !2054)
!2056 = !DILocation(line: 91, column: 511, scope: !2054)
!2057 = !DILocation(line: 91, column: 549, scope: !2054)
!2058 = !DILocation(line: 91, column: 473, scope: !2024)
!2059 = !DILocation(line: 91, column: 598, scope: !2054)
!2060 = !DILocation(line: 91, column: 422, scope: !2024)
!2061 = !DILocation(line: 91, column: 2, scope: !2024)
!2062 = distinct !{!2062, !2026, !2063}
!2063 = !DILocation(line: 96, column: 2, scope: !1998)
!2064 = !DILocation(line: 97, column: 1, scope: !1980)
!2065 = distinct !DISubprogram(name: "sys_slist_peek_head", scope: !187, file: !187, line: 238, type: !2066, scopeLine: 239, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2068)
!2066 = !DISubroutineType(types: !2067)
!2067 = !{!357, !1984}
!2068 = !{!2069}
!2069 = !DILocalVariable(name: "list", arg: 1, scope: !2065, file: !187, line: 238, type: !1984)
!2070 = !DILocation(line: 238, column: 61, scope: !2065)
!2071 = !DILocation(line: 240, column: 9, scope: !2065)
!2072 = !DILocation(line: 240, column: 15, scope: !2065)
!2073 = !DILocation(line: 240, column: 2, scope: !2065)
!2074 = distinct !DISubprogram(name: "sys_slist_peek_next", scope: !187, file: !187, line: 292, type: !2075, scopeLine: 292, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2077)
!2075 = !DISubroutineType(types: !2076)
!2076 = !{!357, !357}
!2077 = !{!2078}
!2078 = !DILocalVariable(name: "node", arg: 1, scope: !2074, file: !187, line: 292, type: !357)
!2079 = !DILocation(line: 292, column: 62, scope: !2074)
!2080 = !DILocation(line: 292, column: 77, scope: !2074)
!2081 = !DILocation(line: 292, column: 82, scope: !2074)
!2082 = !DILocation(line: 292, column: 127, scope: !2074)
!2083 = !DILocation(line: 292, column: 98, scope: !2074)
!2084 = !DILocation(line: 292, column: 70, scope: !2074)
!2085 = distinct !DISubprogram(name: "sys_slist_peek_next_no_check", scope: !187, file: !187, line: 281, type: !2075, scopeLine: 281, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2086)
!2086 = !{!2087}
!2087 = !DILocalVariable(name: "node", arg: 1, scope: !2085, file: !187, line: 281, type: !357)
!2088 = !DILocation(line: 281, column: 71, scope: !2085)
!2089 = !DILocation(line: 281, column: 104, scope: !2085)
!2090 = !DILocation(line: 281, column: 86, scope: !2085)
!2091 = !DILocation(line: 281, column: 79, scope: !2085)
!2092 = distinct !DISubprogram(name: "z_snode_next_peek", scope: !187, file: !187, line: 211, type: !2075, scopeLine: 212, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2093)
!2093 = !{!2094}
!2094 = !DILocalVariable(name: "node", arg: 1, scope: !2092, file: !187, line: 211, type: !357)
!2095 = !DILocation(line: 211, column: 59, scope: !2092)
!2096 = !DILocation(line: 213, column: 9, scope: !2092)
!2097 = !DILocation(line: 213, column: 15, scope: !2092)
!2098 = !DILocation(line: 213, column: 2, scope: !2092)
!2099 = distinct !DISubprogram(name: "gpio_stm32_set_exti_source", scope: !2, file: !2, line: 307, type: !1910, scopeLine: 308, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2100)
!2100 = !{!2101, !2102, !2103}
!2101 = !DILocalVariable(name: "port", arg: 1, scope: !2099, file: !2, line: 307, type: !123)
!2102 = !DILocalVariable(name: "pin", arg: 2, scope: !2099, file: !2, line: 307, type: !123)
!2103 = !DILocalVariable(name: "line", scope: !2099, file: !2, line: 309, type: !156)
!2104 = !DILocation(line: 307, column: 44, scope: !2099)
!2105 = !DILocation(line: 307, column: 54, scope: !2099)
!2106 = !DILocation(line: 309, column: 2, scope: !2099)
!2107 = !DILocation(line: 309, column: 11, scope: !2099)
!2108 = !DILocation(line: 309, column: 46, scope: !2099)
!2109 = !DILocation(line: 309, column: 18, scope: !2099)
!2110 = !DILocation(line: 322, column: 2, scope: !2099)
!2111 = !DILocation(line: 330, column: 26, scope: !2099)
!2112 = !DILocation(line: 330, column: 32, scope: !2099)
!2113 = !DILocation(line: 330, column: 2, scope: !2099)
!2114 = !DILocation(line: 332, column: 2, scope: !2099)
!2115 = !DILocation(line: 333, column: 1, scope: !2099)
!2116 = distinct !DISubprogram(name: "LL_SYSCFG_SetEXTISource", scope: !1963, file: !1963, line: 625, type: !1273, scopeLine: 626, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2117)
!2117 = !{!2118, !2119}
!2118 = !DILocalVariable(name: "Port", arg: 1, scope: !2116, file: !1963, line: 625, type: !156)
!2119 = !DILocalVariable(name: "Line", arg: 2, scope: !2116, file: !1963, line: 625, type: !156)
!2120 = !DILocation(line: 625, column: 55, scope: !2116)
!2121 = !DILocation(line: 625, column: 70, scope: !2116)
!2122 = !DILocation(line: 627, column: 147, scope: !2116)
!2123 = !DILocation(line: 627, column: 152, scope: !2116)
!2124 = !DILocation(line: 627, column: 88, scope: !2116)
!2125 = !DILocation(line: 627, column: 188, scope: !2116)
!2126 = !DILocation(line: 627, column: 193, scope: !2116)
!2127 = !DILocation(line: 627, column: 184, scope: !2116)
!2128 = !DILocation(line: 627, column: 166, scope: !2116)
!2129 = !DILocation(line: 627, column: 163, scope: !2116)
!2130 = !DILocation(line: 627, column: 206, scope: !2116)
!2131 = !DILocation(line: 627, column: 215, scope: !2116)
!2132 = !DILocation(line: 627, column: 220, scope: !2116)
!2133 = !DILocation(line: 627, column: 211, scope: !2116)
!2134 = !DILocation(line: 627, column: 203, scope: !2116)
!2135 = !DILocation(line: 627, column: 65, scope: !2116)
!2136 = !DILocation(line: 627, column: 70, scope: !2116)
!2137 = !DILocation(line: 627, column: 6, scope: !2116)
!2138 = !DILocation(line: 627, column: 80, scope: !2116)
!2139 = !DILocation(line: 628, column: 1, scope: !2116)
!2140 = distinct !DISubprogram(name: "gpio_manage_callback", scope: !1981, file: !1981, line: 54, type: !2141, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2143)
!2141 = !DISubroutineType(types: !2142)
!2142 = !{!123, !1984, !182, !152}
!2143 = !{!2144, !2145, !2146}
!2144 = !DILocalVariable(name: "callbacks", arg: 1, scope: !2140, file: !1981, line: 54, type: !1984)
!2145 = !DILocalVariable(name: "callback", arg: 2, scope: !2140, file: !1981, line: 55, type: !182)
!2146 = !DILocalVariable(name: "set", arg: 3, scope: !2140, file: !1981, line: 56, type: !152)
!2147 = !DILocation(line: 54, column: 53, scope: !2140)
!2148 = !DILocation(line: 55, column: 28, scope: !2140)
!2149 = !DILocation(line: 56, column: 12, scope: !2140)
!2150 = !DILocation(line: 61, column: 26, scope: !2151)
!2151 = distinct !DILexicalBlock(scope: !2140, file: !1981, line: 61, column: 6)
!2152 = !DILocation(line: 61, column: 7, scope: !2151)
!2153 = !DILocation(line: 61, column: 6, scope: !2140)
!2154 = !DILocation(line: 62, column: 34, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !2156, file: !1981, line: 62, column: 7)
!2156 = distinct !DILexicalBlock(scope: !2151, file: !1981, line: 61, column: 38)
!2157 = !DILocation(line: 62, column: 46, scope: !2155)
!2158 = !DILocation(line: 62, column: 56, scope: !2155)
!2159 = !DILocation(line: 62, column: 8, scope: !2155)
!2160 = !DILocation(line: 62, column: 7, scope: !2156)
!2161 = !DILocation(line: 63, column: 9, scope: !2162)
!2162 = distinct !DILexicalBlock(scope: !2163, file: !1981, line: 63, column: 8)
!2163 = distinct !DILexicalBlock(scope: !2155, file: !1981, line: 62, column: 63)
!2164 = !DILocation(line: 63, column: 8, scope: !2163)
!2165 = !DILocation(line: 64, column: 5, scope: !2166)
!2166 = distinct !DILexicalBlock(scope: !2162, file: !1981, line: 63, column: 14)
!2167 = !DILocation(line: 66, column: 3, scope: !2163)
!2168 = !DILocation(line: 67, column: 2, scope: !2156)
!2169 = !DILocation(line: 67, column: 14, scope: !2170)
!2170 = distinct !DILexicalBlock(scope: !2151, file: !1981, line: 67, column: 13)
!2171 = !DILocation(line: 67, column: 13, scope: !2151)
!2172 = !DILocation(line: 68, column: 3, scope: !2173)
!2173 = distinct !DILexicalBlock(scope: !2170, file: !1981, line: 67, column: 19)
!2174 = !DILocation(line: 71, column: 6, scope: !2175)
!2175 = distinct !DILexicalBlock(scope: !2140, file: !1981, line: 71, column: 6)
!2176 = !DILocation(line: 71, column: 6, scope: !2140)
!2177 = !DILocation(line: 72, column: 21, scope: !2178)
!2178 = distinct !DILexicalBlock(scope: !2175, file: !1981, line: 71, column: 11)
!2179 = !DILocation(line: 72, column: 33, scope: !2178)
!2180 = !DILocation(line: 72, column: 43, scope: !2178)
!2181 = !DILocation(line: 72, column: 3, scope: !2178)
!2182 = !DILocation(line: 73, column: 2, scope: !2178)
!2183 = !DILocation(line: 75, column: 2, scope: !2140)
!2184 = !DILocation(line: 76, column: 1, scope: !2140)
!2185 = distinct !DISubprogram(name: "sys_slist_is_empty", scope: !187, file: !187, line: 268, type: !2186, scopeLine: 268, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2188)
!2186 = !DISubroutineType(types: !2187)
!2187 = !{!152, !1984}
!2188 = !{!2189}
!2189 = !DILocalVariable(name: "list", arg: 1, scope: !2185, file: !187, line: 268, type: !1984)
!2190 = !DILocation(line: 268, column: 53, scope: !2185)
!2191 = !DILocation(line: 268, column: 89, scope: !2185)
!2192 = !DILocation(line: 268, column: 69, scope: !2185)
!2193 = !DILocation(line: 268, column: 95, scope: !2185)
!2194 = !DILocation(line: 268, column: 61, scope: !2185)
!2195 = distinct !DISubprogram(name: "sys_slist_find_and_remove", scope: !187, file: !187, line: 435, type: !2196, scopeLine: 435, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2198)
!2196 = !DISubroutineType(types: !2197)
!2197 = !{!152, !1984, !357}
!2198 = !{!2199, !2200, !2201, !2202}
!2199 = !DILocalVariable(name: "list", arg: 1, scope: !2195, file: !187, line: 435, type: !1984)
!2200 = !DILocalVariable(name: "node", arg: 2, scope: !2195, file: !187, line: 435, type: !357)
!2201 = !DILocalVariable(name: "prev", scope: !2195, file: !187, line: 435, type: !357)
!2202 = !DILocalVariable(name: "test", scope: !2195, file: !187, line: 435, type: !357)
!2203 = !DILocation(line: 435, column: 60, scope: !2195)
!2204 = !DILocation(line: 435, column: 79, scope: !2195)
!2205 = !DILocation(line: 435, column: 87, scope: !2195)
!2206 = !DILocation(line: 435, column: 100, scope: !2195)
!2207 = !DILocation(line: 435, column: 119, scope: !2195)
!2208 = !DILocation(line: 435, column: 132, scope: !2195)
!2209 = !DILocation(line: 435, column: 170, scope: !2210)
!2210 = distinct !DILexicalBlock(scope: !2195, file: !187, line: 435, column: 138)
!2211 = !DILocation(line: 435, column: 150, scope: !2210)
!2212 = !DILocation(line: 435, column: 148, scope: !2210)
!2213 = !DILocation(line: 435, column: 143, scope: !2210)
!2214 = !DILocation(line: 435, column: 177, scope: !2215)
!2215 = distinct !DILexicalBlock(scope: !2210, file: !187, line: 435, column: 138)
!2216 = !DILocation(line: 435, column: 182, scope: !2215)
!2217 = !DILocation(line: 435, column: 138, scope: !2210)
!2218 = !DILocation(line: 435, column: 237, scope: !2219)
!2219 = distinct !DILexicalBlock(scope: !2220, file: !187, line: 435, column: 237)
!2220 = distinct !DILexicalBlock(scope: !2215, file: !187, line: 435, column: 231)
!2221 = !DILocation(line: 435, column: 245, scope: !2219)
!2222 = !DILocation(line: 435, column: 242, scope: !2219)
!2223 = !DILocation(line: 435, column: 237, scope: !2220)
!2224 = !DILocation(line: 435, column: 270, scope: !2225)
!2225 = distinct !DILexicalBlock(scope: !2219, file: !187, line: 435, column: 251)
!2226 = !DILocation(line: 435, column: 276, scope: !2225)
!2227 = !DILocation(line: 435, column: 282, scope: !2225)
!2228 = !DILocation(line: 435, column: 253, scope: !2225)
!2229 = !DILocation(line: 435, column: 289, scope: !2225)
!2230 = !DILocation(line: 435, column: 308, scope: !2220)
!2231 = !DILocation(line: 435, column: 306, scope: !2220)
!2232 = !DILocation(line: 435, column: 314, scope: !2220)
!2233 = !DILocation(line: 435, column: 224, scope: !2215)
!2234 = !DILocation(line: 435, column: 204, scope: !2215)
!2235 = !DILocation(line: 435, column: 202, scope: !2215)
!2236 = !DILocation(line: 435, column: 138, scope: !2215)
!2237 = distinct !{!2237, !2217, !2238}
!2238 = !DILocation(line: 435, column: 314, scope: !2210)
!2239 = !DILocation(line: 435, column: 316, scope: !2195)
!2240 = !DILocation(line: 435, column: 326, scope: !2195)
!2241 = distinct !DISubprogram(name: "sys_slist_prepend", scope: !187, file: !187, line: 305, type: !2242, scopeLine: 305, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2244)
!2242 = !DISubroutineType(types: !2243)
!2243 = !{null, !1984, !357}
!2244 = !{!2245, !2246}
!2245 = !DILocalVariable(name: "list", arg: 1, scope: !2241, file: !187, line: 305, type: !1984)
!2246 = !DILocalVariable(name: "node", arg: 2, scope: !2241, file: !187, line: 305, type: !357)
!2247 = !DILocation(line: 305, column: 51, scope: !2241)
!2248 = !DILocation(line: 305, column: 70, scope: !2241)
!2249 = !DILocation(line: 305, column: 95, scope: !2241)
!2250 = !DILocation(line: 305, column: 121, scope: !2241)
!2251 = !DILocation(line: 305, column: 101, scope: !2241)
!2252 = !DILocation(line: 305, column: 78, scope: !2241)
!2253 = !DILocation(line: 305, column: 146, scope: !2241)
!2254 = !DILocation(line: 305, column: 152, scope: !2241)
!2255 = !DILocation(line: 305, column: 129, scope: !2241)
!2256 = !DILocation(line: 305, column: 183, scope: !2257)
!2257 = distinct !DILexicalBlock(scope: !2241, file: !187, line: 305, column: 163)
!2258 = !DILocation(line: 305, column: 163, scope: !2257)
!2259 = !DILocation(line: 305, column: 189, scope: !2257)
!2260 = !DILocation(line: 305, column: 163, scope: !2241)
!2261 = !DILocation(line: 305, column: 223, scope: !2262)
!2262 = distinct !DILexicalBlock(scope: !2257, file: !187, line: 305, column: 204)
!2263 = !DILocation(line: 305, column: 249, scope: !2262)
!2264 = !DILocation(line: 305, column: 229, scope: !2262)
!2265 = !DILocation(line: 305, column: 206, scope: !2262)
!2266 = !DILocation(line: 305, column: 257, scope: !2262)
!2267 = !DILocation(line: 305, column: 259, scope: !2241)
!2268 = distinct !DISubprogram(name: "sys_slist_remove", scope: !187, file: !187, line: 408, type: !2269, scopeLine: 408, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2271)
!2269 = !DISubroutineType(types: !2270)
!2270 = !{null, !1984, !357, !357}
!2271 = !{!2272, !2273, !2274}
!2272 = !DILocalVariable(name: "list", arg: 1, scope: !2268, file: !187, line: 408, type: !1984)
!2273 = !DILocalVariable(name: "prev_node", arg: 2, scope: !2268, file: !187, line: 408, type: !357)
!2274 = !DILocalVariable(name: "node", arg: 3, scope: !2268, file: !187, line: 408, type: !357)
!2275 = !DILocation(line: 408, column: 50, scope: !2268)
!2276 = !DILocation(line: 408, column: 69, scope: !2268)
!2277 = !DILocation(line: 408, column: 93, scope: !2268)
!2278 = !DILocation(line: 408, column: 105, scope: !2279)
!2279 = distinct !DILexicalBlock(scope: !2268, file: !187, line: 408, column: 105)
!2280 = !DILocation(line: 408, column: 115, scope: !2279)
!2281 = !DILocation(line: 408, column: 105, scope: !2268)
!2282 = !DILocation(line: 408, column: 149, scope: !2283)
!2283 = distinct !DILexicalBlock(scope: !2279, file: !187, line: 408, column: 130)
!2284 = !DILocation(line: 408, column: 173, scope: !2283)
!2285 = !DILocation(line: 408, column: 155, scope: !2283)
!2286 = !DILocation(line: 408, column: 132, scope: !2283)
!2287 = !DILocation(line: 408, column: 205, scope: !2288)
!2288 = distinct !DILexicalBlock(scope: !2283, file: !187, line: 408, column: 185)
!2289 = !DILocation(line: 408, column: 185, scope: !2288)
!2290 = !DILocation(line: 408, column: 214, scope: !2288)
!2291 = !DILocation(line: 408, column: 211, scope: !2288)
!2292 = !DILocation(line: 408, column: 185, scope: !2283)
!2293 = !DILocation(line: 408, column: 239, scope: !2294)
!2294 = distinct !DILexicalBlock(scope: !2288, file: !187, line: 408, column: 220)
!2295 = !DILocation(line: 408, column: 265, scope: !2294)
!2296 = !DILocation(line: 408, column: 245, scope: !2294)
!2297 = !DILocation(line: 408, column: 222, scope: !2294)
!2298 = !DILocation(line: 408, column: 273, scope: !2294)
!2299 = !DILocation(line: 408, column: 275, scope: !2283)
!2300 = !DILocation(line: 408, column: 301, scope: !2301)
!2301 = distinct !DILexicalBlock(scope: !2279, file: !187, line: 408, column: 282)
!2302 = !DILocation(line: 408, column: 330, scope: !2301)
!2303 = !DILocation(line: 408, column: 312, scope: !2301)
!2304 = !DILocation(line: 408, column: 284, scope: !2301)
!2305 = !DILocation(line: 408, column: 362, scope: !2306)
!2306 = distinct !DILexicalBlock(scope: !2301, file: !187, line: 408, column: 342)
!2307 = !DILocation(line: 408, column: 342, scope: !2306)
!2308 = !DILocation(line: 408, column: 371, scope: !2306)
!2309 = !DILocation(line: 408, column: 368, scope: !2306)
!2310 = !DILocation(line: 408, column: 342, scope: !2301)
!2311 = !DILocation(line: 408, column: 396, scope: !2312)
!2312 = distinct !DILexicalBlock(scope: !2306, file: !187, line: 408, column: 377)
!2313 = !DILocation(line: 408, column: 402, scope: !2312)
!2314 = !DILocation(line: 408, column: 379, scope: !2312)
!2315 = !DILocation(line: 408, column: 414, scope: !2312)
!2316 = !DILocation(line: 408, column: 435, scope: !2268)
!2317 = !DILocation(line: 408, column: 418, scope: !2268)
!2318 = !DILocation(line: 408, column: 454, scope: !2268)
!2319 = distinct !DISubprogram(name: "z_slist_head_set", scope: !187, file: !187, line: 221, type: !2242, scopeLine: 222, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2320)
!2320 = !{!2321, !2322}
!2321 = !DILocalVariable(name: "list", arg: 1, scope: !2319, file: !187, line: 221, type: !1984)
!2322 = !DILocalVariable(name: "node", arg: 2, scope: !2319, file: !187, line: 221, type: !357)
!2323 = !DILocation(line: 221, column: 50, scope: !2319)
!2324 = !DILocation(line: 221, column: 69, scope: !2319)
!2325 = !DILocation(line: 223, column: 15, scope: !2319)
!2326 = !DILocation(line: 223, column: 2, scope: !2319)
!2327 = !DILocation(line: 223, column: 8, scope: !2319)
!2328 = !DILocation(line: 223, column: 13, scope: !2319)
!2329 = !DILocation(line: 224, column: 1, scope: !2319)
!2330 = distinct !DISubprogram(name: "sys_slist_peek_tail", scope: !187, file: !187, line: 250, type: !2066, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2331)
!2331 = !{!2332}
!2332 = !DILocalVariable(name: "list", arg: 1, scope: !2330, file: !187, line: 250, type: !1984)
!2333 = !DILocation(line: 250, column: 61, scope: !2330)
!2334 = !DILocation(line: 252, column: 9, scope: !2330)
!2335 = !DILocation(line: 252, column: 15, scope: !2330)
!2336 = !DILocation(line: 252, column: 2, scope: !2330)
!2337 = distinct !DISubprogram(name: "z_slist_tail_set", scope: !187, file: !187, line: 226, type: !2242, scopeLine: 227, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2338)
!2338 = !{!2339, !2340}
!2339 = !DILocalVariable(name: "list", arg: 1, scope: !2337, file: !187, line: 226, type: !1984)
!2340 = !DILocalVariable(name: "node", arg: 2, scope: !2337, file: !187, line: 226, type: !357)
!2341 = !DILocation(line: 226, column: 50, scope: !2337)
!2342 = !DILocation(line: 226, column: 69, scope: !2337)
!2343 = !DILocation(line: 228, column: 15, scope: !2337)
!2344 = !DILocation(line: 228, column: 2, scope: !2337)
!2345 = !DILocation(line: 228, column: 8, scope: !2337)
!2346 = !DILocation(line: 228, column: 13, scope: !2337)
!2347 = !DILocation(line: 229, column: 1, scope: !2337)
!2348 = distinct !DISubprogram(name: "z_snode_next_set", scope: !187, file: !187, line: 216, type: !2349, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2351)
!2349 = !DISubroutineType(types: !2350)
!2350 = !{null, !357, !357}
!2351 = !{!2352, !2353}
!2352 = !DILocalVariable(name: "parent", arg: 1, scope: !2348, file: !187, line: 216, type: !357)
!2353 = !DILocalVariable(name: "child", arg: 2, scope: !2348, file: !187, line: 216, type: !357)
!2354 = !DILocation(line: 216, column: 50, scope: !2348)
!2355 = !DILocation(line: 216, column: 71, scope: !2348)
!2356 = !DILocation(line: 218, column: 17, scope: !2348)
!2357 = !DILocation(line: 218, column: 2, scope: !2348)
!2358 = !DILocation(line: 218, column: 10, scope: !2348)
!2359 = !DILocation(line: 218, column: 15, scope: !2348)
!2360 = !DILocation(line: 219, column: 1, scope: !2348)
!2361 = distinct !DISubprogram(name: "device_is_ready", scope: !2362, file: !2362, line: 49, type: !723, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2363)
!2362 = !DIFile(filename: "zephyr/include/generated/syscalls/device.h", directory: "/home/sri/zephyrproject/zephyr/build")
!2363 = !{!2364}
!2364 = !DILocalVariable(name: "dev", arg: 1, scope: !2361, file: !2362, line: 49, type: !132)
!2365 = !DILocation(line: 49, column: 59, scope: !2361)
!2366 = !DILocation(line: 57, column: 2, scope: !2361)
!2367 = !DILocation(line: 57, column: 7, scope: !2368)
!2368 = distinct !DILexicalBlock(scope: !2361, file: !2362, line: 57, column: 5)
!2369 = !{i64 172844}
!2370 = !DILocation(line: 57, column: 47, scope: !2368)
!2371 = !DILocation(line: 58, column: 32, scope: !2361)
!2372 = !DILocation(line: 58, column: 9, scope: !2361)
!2373 = !DILocation(line: 58, column: 2, scope: !2361)
!2374 = distinct !DISubprogram(name: "gpio_stm32_clock_request", scope: !2, file: !2, line: 270, type: !2375, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2377)
!2375 = !DISubroutineType(types: !2376)
!2376 = !{!123, !132, !152}
!2377 = !{!2378, !2379, !2380, !2381, !2382}
!2378 = !DILocalVariable(name: "dev", arg: 1, scope: !2374, file: !2, line: 270, type: !132)
!2379 = !DILocalVariable(name: "on", arg: 2, scope: !2374, file: !2, line: 270, type: !152)
!2380 = !DILocalVariable(name: "cfg", scope: !2374, file: !2, line: 272, type: !1058)
!2381 = !DILocalVariable(name: "ret", scope: !2374, file: !2, line: 273, type: !123)
!2382 = !DILocalVariable(name: "clk", scope: !2374, file: !2, line: 278, type: !2383)
!2383 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !132)
!2384 = !DILocation(line: 270, column: 58, scope: !2374)
!2385 = !DILocation(line: 270, column: 69, scope: !2374)
!2386 = !DILocation(line: 272, column: 2, scope: !2374)
!2387 = !DILocation(line: 272, column: 34, scope: !2374)
!2388 = !DILocation(line: 272, column: 40, scope: !2374)
!2389 = !DILocation(line: 272, column: 45, scope: !2374)
!2390 = !DILocation(line: 273, column: 2, scope: !2374)
!2391 = !DILocation(line: 273, column: 6, scope: !2374)
!2392 = !DILocation(line: 278, column: 2, scope: !2374)
!2393 = !DILocation(line: 278, column: 29, scope: !2374)
!2394 = !DILocation(line: 280, column: 6, scope: !2395)
!2395 = distinct !DILexicalBlock(scope: !2374, file: !2, line: 280, column: 6)
!2396 = !DILocation(line: 280, column: 6, scope: !2374)
!2397 = !DILocation(line: 282, column: 31, scope: !2398)
!2398 = distinct !DILexicalBlock(scope: !2395, file: !2, line: 280, column: 10)
!2399 = !DILocation(line: 282, column: 36, scope: !2398)
!2400 = !DILocation(line: 281, column: 9, scope: !2398)
!2401 = !DILocation(line: 281, column: 7, scope: !2398)
!2402 = !DILocation(line: 283, column: 2, scope: !2398)
!2403 = !DILocation(line: 285, column: 31, scope: !2404)
!2404 = distinct !DILexicalBlock(scope: !2395, file: !2, line: 283, column: 9)
!2405 = !DILocation(line: 285, column: 36, scope: !2404)
!2406 = !DILocation(line: 284, column: 9, scope: !2404)
!2407 = !DILocation(line: 284, column: 7, scope: !2404)
!2408 = !DILocation(line: 288, column: 6, scope: !2409)
!2409 = distinct !DILexicalBlock(scope: !2374, file: !2, line: 288, column: 6)
!2410 = !DILocation(line: 288, column: 10, scope: !2409)
!2411 = !DILocation(line: 288, column: 6, scope: !2374)
!2412 = !DILocation(line: 289, column: 10, scope: !2413)
!2413 = distinct !DILexicalBlock(scope: !2409, file: !2, line: 288, column: 16)
!2414 = !DILocation(line: 289, column: 3, scope: !2413)
!2415 = !DILocation(line: 292, column: 9, scope: !2374)
!2416 = !DILocation(line: 292, column: 2, scope: !2374)
!2417 = !DILocation(line: 293, column: 1, scope: !2374)
!2418 = distinct !DISubprogram(name: "pm_device_init_suspended", scope: !2419, file: !2419, line: 611, type: !2420, scopeLine: 612, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2422)
!2419 = !DIFile(filename: "include/zephyr/pm/device.h", directory: "/home/sri/zephyrproject/zephyr")
!2420 = !DISubroutineType(types: !2421)
!2421 = !{null, !132}
!2422 = !{!2423}
!2423 = !DILocalVariable(name: "dev", arg: 1, scope: !2418, file: !2419, line: 611, type: !132)
!2424 = !DILocation(line: 611, column: 66, scope: !2418)
!2425 = !DILocation(line: 613, column: 9, scope: !2418)
!2426 = !DILocation(line: 614, column: 1, scope: !2418)
!2427 = distinct !DISubprogram(name: "pm_device_runtime_enable", scope: !1043, file: !1043, line: 167, type: !312, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2428)
!2428 = !{!2429}
!2429 = !DILocalVariable(name: "dev", arg: 1, scope: !2427, file: !1043, line: 167, type: !132)
!2430 = !DILocation(line: 167, column: 65, scope: !2427)
!2431 = !DILocation(line: 169, column: 9, scope: !2427)
!2432 = !DILocation(line: 170, column: 2, scope: !2427)
!2433 = distinct !DISubprogram(name: "clock_control_on", scope: !115, file: !115, line: 123, type: !260, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2434)
!2434 = !{!2435, !2436, !2437}
!2435 = !DILocalVariable(name: "dev", arg: 1, scope: !2433, file: !115, line: 123, type: !132)
!2436 = !DILocalVariable(name: "sys", arg: 2, scope: !2433, file: !115, line: 124, type: !252)
!2437 = !DILocalVariable(name: "api", scope: !2433, file: !115, line: 126, type: !253)
!2438 = !DILocation(line: 123, column: 57, scope: !2433)
!2439 = !DILocation(line: 124, column: 31, scope: !2433)
!2440 = !DILocation(line: 126, column: 2, scope: !2433)
!2441 = !DILocation(line: 126, column: 41, scope: !2433)
!2442 = !DILocation(line: 127, column: 44, scope: !2433)
!2443 = !DILocation(line: 127, column: 49, scope: !2433)
!2444 = !DILocation(line: 129, column: 9, scope: !2433)
!2445 = !DILocation(line: 129, column: 14, scope: !2433)
!2446 = !DILocation(line: 129, column: 17, scope: !2433)
!2447 = !DILocation(line: 129, column: 22, scope: !2433)
!2448 = !DILocation(line: 130, column: 1, scope: !2433)
!2449 = !DILocation(line: 129, column: 2, scope: !2433)
!2450 = distinct !DISubprogram(name: "clock_control_off", scope: !115, file: !115, line: 142, type: !260, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2451)
!2451 = !{!2452, !2453, !2454}
!2452 = !DILocalVariable(name: "dev", arg: 1, scope: !2450, file: !115, line: 142, type: !132)
!2453 = !DILocalVariable(name: "sys", arg: 2, scope: !2450, file: !115, line: 143, type: !252)
!2454 = !DILocalVariable(name: "api", scope: !2450, file: !115, line: 145, type: !253)
!2455 = !DILocation(line: 142, column: 58, scope: !2450)
!2456 = !DILocation(line: 143, column: 32, scope: !2450)
!2457 = !DILocation(line: 145, column: 2, scope: !2450)
!2458 = !DILocation(line: 145, column: 41, scope: !2450)
!2459 = !DILocation(line: 146, column: 44, scope: !2450)
!2460 = !DILocation(line: 146, column: 49, scope: !2450)
!2461 = !DILocation(line: 148, column: 9, scope: !2450)
!2462 = !DILocation(line: 148, column: 14, scope: !2450)
!2463 = !DILocation(line: 148, column: 18, scope: !2450)
!2464 = !DILocation(line: 148, column: 23, scope: !2450)
!2465 = !DILocation(line: 149, column: 1, scope: !2450)
!2466 = !DILocation(line: 148, column: 2, scope: !2450)
