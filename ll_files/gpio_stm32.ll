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
@__device_dts_ord_9 = external constant %struct.device, align 4
@llvm.used = appending global [12 x ptr] [ptr @__device_dts_ord_28, ptr @__init___device_dts_ord_28, ptr @__device_dts_ord_81, ptr @__init___device_dts_ord_81, ptr @__device_dts_ord_25, ptr @__init___device_dts_ord_25, ptr @__device_dts_ord_82, ptr @__init___device_dts_ord_82, ptr @__device_dts_ord_83, ptr @__init___device_dts_ord_83, ptr @__device_dts_ord_84, ptr @__init___device_dts_ord_84], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_k_object_access_grant(ptr noundef %0, ptr noundef %1) #0 !dbg !414 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !530, metadata !DIExpression()), !dbg !531
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !532, metadata !DIExpression()), !dbg !533
  %5 = load ptr, ptr %3, align 4, !dbg !534
  %6 = load ptr, ptr %4, align 4, !dbg !535
  ret void, !dbg !536
}

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_k_object_release(ptr noundef %0) #0 !dbg !537 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !540, metadata !DIExpression()), !dbg !541
  %3 = load ptr, ptr %2, align 4, !dbg !542
  ret void, !dbg !543
}

; Function Attrs: noinline nounwind optnone
define internal ptr @z_impl_k_object_alloc(i8 noundef zeroext %0) #0 !dbg !544 {
  %2 = alloca i8, align 1
  store i8 %0, ptr %2, align 1
  call void @llvm.dbg.declare(metadata ptr %2, metadata !547, metadata !DIExpression()), !dbg !548
  %3 = load i8, ptr %2, align 1, !dbg !549
  ret ptr null, !dbg !550
}

; Function Attrs: noinline nounwind optnone
define internal ptr @z_impl_k_object_alloc_size(i8 noundef zeroext %0, i32 noundef %1) #0 !dbg !551 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8 %0, ptr %3, align 1
  call void @llvm.dbg.declare(metadata ptr %3, metadata !554, metadata !DIExpression()), !dbg !555
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !556, metadata !DIExpression()), !dbg !557
  %5 = load i8, ptr %3, align 1, !dbg !558
  %6 = load i32, ptr %4, align 4, !dbg !559
  ret ptr null, !dbg !560
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_thread_timeout_expires_ticks(ptr noundef %0) #0 !dbg !561 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !568, metadata !DIExpression()), !dbg !569
  %3 = load ptr, ptr %2, align 4, !dbg !570
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !571
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !572
  %6 = call i64 @z_timeout_expires(ptr noundef %5), !dbg !573
  ret i64 %6, !dbg !574
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_thread_timeout_remaining_ticks(ptr noundef %0) #0 !dbg !575 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !576, metadata !DIExpression()), !dbg !577
  %3 = load ptr, ptr %2, align 4, !dbg !578
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !579
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !580
  %6 = call i64 @z_timeout_remaining(ptr noundef %5), !dbg !581
  ret i64 %6, !dbg !582
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_timer_expires_ticks(ptr noundef %0) #0 !dbg !583 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !605, metadata !DIExpression()), !dbg !606
  %3 = load ptr, ptr %2, align 4, !dbg !607
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !608
  %5 = call i64 @z_timeout_expires(ptr noundef %4), !dbg !609
  ret i64 %5, !dbg !610
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_timer_remaining_ticks(ptr noundef %0) #0 !dbg !611 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !612, metadata !DIExpression()), !dbg !613
  %3 = load ptr, ptr %2, align 4, !dbg !614
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !615
  %5 = call i64 @z_timeout_remaining(ptr noundef %4), !dbg !616
  ret i64 %5, !dbg !617
}

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_k_timer_user_data_set(ptr noundef %0, ptr noundef %1) #0 !dbg !618 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !621, metadata !DIExpression()), !dbg !622
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !623, metadata !DIExpression()), !dbg !624
  %5 = load ptr, ptr %4, align 4, !dbg !625
  %6 = load ptr, ptr %3, align 4, !dbg !626
  %7 = getelementptr inbounds %struct.k_timer, ptr %6, i32 0, i32 6, !dbg !627
  store ptr %5, ptr %7, align 4, !dbg !628
  ret void, !dbg !629
}

; Function Attrs: noinline nounwind optnone
define internal ptr @z_impl_k_timer_user_data_get(ptr noundef %0) #0 !dbg !630 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !633, metadata !DIExpression()), !dbg !634
  %3 = load ptr, ptr %2, align 4, !dbg !635
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 6, !dbg !636
  %5 = load ptr, ptr %4, align 4, !dbg !636
  ret ptr %5, !dbg !637
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_queue_is_empty(ptr noundef %0) #0 !dbg !638 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !659, metadata !DIExpression()), !dbg !660
  %3 = load ptr, ptr %2, align 4, !dbg !661
  %4 = getelementptr inbounds %struct.k_queue, ptr %3, i32 0, i32 0, !dbg !662
  %5 = call zeroext i1 @sys_sflist_is_empty(ptr noundef %4), !dbg !663
  %6 = zext i1 %5 to i32, !dbg !664
  ret i32 %6, !dbg !665
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_sem_count_get(ptr noundef %0) #0 !dbg !666 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !675, metadata !DIExpression()), !dbg !676
  %3 = load ptr, ptr %2, align 4, !dbg !677
  %4 = getelementptr inbounds %struct.k_sem, ptr %3, i32 0, i32 1, !dbg !678
  %5 = load i32, ptr %4, align 4, !dbg !678
  ret i32 %5, !dbg !679
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_msgq_num_free_get(ptr noundef %0) #0 !dbg !680 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !696, metadata !DIExpression()), !dbg !697
  %3 = load ptr, ptr %2, align 4, !dbg !698
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 3, !dbg !699
  %5 = load i32, ptr %4, align 4, !dbg !699
  %6 = load ptr, ptr %2, align 4, !dbg !700
  %7 = getelementptr inbounds %struct.k_msgq, ptr %6, i32 0, i32 8, !dbg !701
  %8 = load i32, ptr %7, align 4, !dbg !701
  %9 = sub i32 %5, %8, !dbg !702
  ret i32 %9, !dbg !703
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_msgq_num_used_get(ptr noundef %0) #0 !dbg !704 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !705, metadata !DIExpression()), !dbg !706
  %3 = load ptr, ptr %2, align 4, !dbg !707
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 8, !dbg !708
  %5 = load i32, ptr %4, align 4, !dbg !708
  ret i32 %5, !dbg !709
}

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @z_impl_device_is_ready(ptr noundef %0) #0 !dbg !710 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !713, metadata !DIExpression()), !dbg !714
  %3 = load ptr, ptr %2, align 4, !dbg !715
  %4 = call zeroext i1 @z_device_is_ready(ptr noundef %3), !dbg !716
  ret i1 %4, !dbg !717
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_gpio_pin_interrupt_configure(ptr noundef %0, i8 noundef zeroext %1, i32 noundef %2) #0 !dbg !718 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store ptr %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !719, metadata !DIExpression()), !dbg !720
  store i8 %1, ptr %6, align 1
  call void @llvm.dbg.declare(metadata ptr %6, metadata !721, metadata !DIExpression()), !dbg !722
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !723, metadata !DIExpression()), !dbg !724
  call void @llvm.dbg.declare(metadata ptr %8, metadata !725, metadata !DIExpression()), !dbg !726
  %13 = load ptr, ptr %5, align 4, !dbg !727
  %14 = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 2, !dbg !728
  %15 = load ptr, ptr %14, align 4, !dbg !728
  store ptr %15, ptr %8, align 4, !dbg !726
  call void @llvm.dbg.declare(metadata ptr %9, metadata !729, metadata !DIExpression()), !dbg !731
  %16 = load ptr, ptr %5, align 4, !dbg !732
  %17 = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 1, !dbg !733
  %18 = load ptr, ptr %17, align 4, !dbg !733
  store ptr %18, ptr %9, align 4, !dbg !731
  call void @llvm.dbg.declare(metadata ptr %10, metadata !734, metadata !DIExpression()), !dbg !736
  %19 = load ptr, ptr %5, align 4, !dbg !737
  %20 = getelementptr inbounds %struct.device, ptr %19, i32 0, i32 4, !dbg !738
  %21 = load ptr, ptr %20, align 4, !dbg !738
  store ptr %21, ptr %10, align 4, !dbg !736
  call void @llvm.dbg.declare(metadata ptr %11, metadata !739, metadata !DIExpression()), !dbg !740
  call void @llvm.dbg.declare(metadata ptr %12, metadata !741, metadata !DIExpression()), !dbg !742
  %22 = load ptr, ptr %8, align 4, !dbg !743
  %23 = getelementptr inbounds %struct.gpio_driver_api, ptr %22, i32 0, i32 6, !dbg !745
  %24 = load ptr, ptr %23, align 4, !dbg !745
  %25 = icmp eq ptr %24, null, !dbg !746
  br i1 %25, label %26, label %27, !dbg !747

26:                                               ; preds = %3
  store i32 -88, ptr %4, align 4, !dbg !748
  br label %56, !dbg !748

27:                                               ; preds = %3
  %28 = load i32, ptr %7, align 4, !dbg !750
  %29 = and i32 %28, 8388608, !dbg !752
  %30 = icmp ne i32 %29, 0, !dbg !753
  br i1 %30, label %31, label %43, !dbg !754

31:                                               ; preds = %27
  %32 = load ptr, ptr %10, align 4, !dbg !755
  %33 = getelementptr inbounds %struct.gpio_driver_data, ptr %32, i32 0, i32 0, !dbg !756
  %34 = load i32, ptr %33, align 4, !dbg !756
  %35 = load i8, ptr %6, align 1, !dbg !757
  %36 = zext i8 %35 to i32, !dbg !758
  %37 = shl i32 1, %36, !dbg !759
  %38 = and i32 %34, %37, !dbg !760
  %39 = icmp ne i32 %38, 0, !dbg !761
  br i1 %39, label %40, label %43, !dbg !762

40:                                               ; preds = %31
  %41 = load i32, ptr %7, align 4, !dbg !763
  %42 = xor i32 %41, 100663296, !dbg !763
  store i32 %42, ptr %7, align 4, !dbg !763
  br label %43, !dbg !765

43:                                               ; preds = %40, %31, %27
  %44 = load i32, ptr %7, align 4, !dbg !766
  %45 = and i32 %44, 100663296, !dbg !767
  store i32 %45, ptr %11, align 4, !dbg !768
  %46 = load i32, ptr %7, align 4, !dbg !769
  %47 = and i32 %46, 23068672, !dbg !770
  store i32 %47, ptr %12, align 4, !dbg !771
  %48 = load ptr, ptr %8, align 4, !dbg !772
  %49 = getelementptr inbounds %struct.gpio_driver_api, ptr %48, i32 0, i32 6, !dbg !773
  %50 = load ptr, ptr %49, align 4, !dbg !773
  %51 = load ptr, ptr %5, align 4, !dbg !774
  %52 = load i8, ptr %6, align 1, !dbg !775
  %53 = load i32, ptr %12, align 4, !dbg !776
  %54 = load i32, ptr %11, align 4, !dbg !777
  %55 = call i32 %50(ptr noundef %51, i8 noundef zeroext %52, i32 noundef %53, i32 noundef %54), !dbg !772
  store i32 %55, ptr %4, align 4, !dbg !778
  br label %56, !dbg !778

56:                                               ; preds = %43, %26
  %57 = load i32, ptr %4, align 4, !dbg !779
  ret i32 %57, !dbg !779
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_gpio_pin_configure(ptr noundef %0, i8 noundef zeroext %1, i32 noundef %2) #0 !dbg !780 {
  %4 = alloca ptr, align 4
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !781, metadata !DIExpression()), !dbg !782
  store i8 %1, ptr %5, align 1
  call void @llvm.dbg.declare(metadata ptr %5, metadata !783, metadata !DIExpression()), !dbg !784
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !785, metadata !DIExpression()), !dbg !786
  call void @llvm.dbg.declare(metadata ptr %7, metadata !787, metadata !DIExpression()), !dbg !788
  %10 = load ptr, ptr %4, align 4, !dbg !789
  %11 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 2, !dbg !790
  %12 = load ptr, ptr %11, align 4, !dbg !790
  store ptr %12, ptr %7, align 4, !dbg !788
  call void @llvm.dbg.declare(metadata ptr %8, metadata !791, metadata !DIExpression()), !dbg !792
  %13 = load ptr, ptr %4, align 4, !dbg !793
  %14 = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 1, !dbg !794
  %15 = load ptr, ptr %14, align 4, !dbg !794
  store ptr %15, ptr %8, align 4, !dbg !792
  call void @llvm.dbg.declare(metadata ptr %9, metadata !795, metadata !DIExpression()), !dbg !796
  %16 = load ptr, ptr %4, align 4, !dbg !797
  %17 = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 4, !dbg !798
  %18 = load ptr, ptr %17, align 4, !dbg !798
  store ptr %18, ptr %9, align 4, !dbg !796
  %19 = load i32, ptr %6, align 4, !dbg !799
  %20 = and i32 %19, 1048576, !dbg !801
  %21 = icmp ne i32 %20, 0, !dbg !802
  br i1 %21, label %22, label %33, !dbg !803

22:                                               ; preds = %3
  %23 = load i32, ptr %6, align 4, !dbg !804
  %24 = and i32 %23, 786432, !dbg !805
  %25 = icmp ne i32 %24, 0, !dbg !806
  br i1 %25, label %26, label %33, !dbg !807

26:                                               ; preds = %22
  %27 = load i32, ptr %6, align 4, !dbg !808
  %28 = and i32 %27, 1, !dbg !809
  %29 = icmp ne i32 %28, 0, !dbg !810
  br i1 %29, label %30, label %33, !dbg !811

30:                                               ; preds = %26
  %31 = load i32, ptr %6, align 4, !dbg !812
  %32 = xor i32 %31, 786432, !dbg !812
  store i32 %32, ptr %6, align 4, !dbg !812
  br label %33, !dbg !814

33:                                               ; preds = %30, %26, %22, %3
  %34 = load i32, ptr %6, align 4, !dbg !815
  %35 = and i32 %34, -1048577, !dbg !815
  store i32 %35, ptr %6, align 4, !dbg !815
  %36 = load i32, ptr %6, align 4, !dbg !816
  %37 = and i32 %36, 1, !dbg !818
  %38 = icmp ne i32 %37, 0, !dbg !819
  br i1 %38, label %39, label %47, !dbg !820

39:                                               ; preds = %33
  %40 = load i8, ptr %5, align 1, !dbg !821
  %41 = zext i8 %40 to i32, !dbg !823
  %42 = shl i32 1, %41, !dbg !824
  %43 = load ptr, ptr %9, align 4, !dbg !825
  %44 = getelementptr inbounds %struct.gpio_driver_data, ptr %43, i32 0, i32 0, !dbg !826
  %45 = load i32, ptr %44, align 4, !dbg !827
  %46 = or i32 %45, %42, !dbg !827
  store i32 %46, ptr %44, align 4, !dbg !827
  br label %56, !dbg !828

47:                                               ; preds = %33
  %48 = load i8, ptr %5, align 1, !dbg !829
  %49 = zext i8 %48 to i32, !dbg !831
  %50 = shl i32 1, %49, !dbg !832
  %51 = xor i32 %50, -1, !dbg !833
  %52 = load ptr, ptr %9, align 4, !dbg !834
  %53 = getelementptr inbounds %struct.gpio_driver_data, ptr %52, i32 0, i32 0, !dbg !835
  %54 = load i32, ptr %53, align 4, !dbg !836
  %55 = and i32 %54, %51, !dbg !836
  store i32 %55, ptr %53, align 4, !dbg !836
  br label %56

56:                                               ; preds = %47, %39
  %57 = load ptr, ptr %7, align 4, !dbg !837
  %58 = getelementptr inbounds %struct.gpio_driver_api, ptr %57, i32 0, i32 0, !dbg !838
  %59 = load ptr, ptr %58, align 4, !dbg !838
  %60 = load ptr, ptr %4, align 4, !dbg !839
  %61 = load i8, ptr %5, align 1, !dbg !840
  %62 = load i32, ptr %6, align 4, !dbg !841
  %63 = call i32 %59(ptr noundef %60, i8 noundef zeroext %61, i32 noundef %62), !dbg !837
  ret i32 %63, !dbg !842
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_gpio_port_get_raw(ptr noundef %0, ptr noundef %1) #0 !dbg !843 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !844, metadata !DIExpression()), !dbg !845
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !846, metadata !DIExpression()), !dbg !847
  call void @llvm.dbg.declare(metadata ptr %5, metadata !848, metadata !DIExpression()), !dbg !849
  %6 = load ptr, ptr %3, align 4, !dbg !850
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 2, !dbg !851
  %8 = load ptr, ptr %7, align 4, !dbg !851
  store ptr %8, ptr %5, align 4, !dbg !849
  %9 = load ptr, ptr %5, align 4, !dbg !852
  %10 = getelementptr inbounds %struct.gpio_driver_api, ptr %9, i32 0, i32 1, !dbg !853
  %11 = load ptr, ptr %10, align 4, !dbg !853
  %12 = load ptr, ptr %3, align 4, !dbg !854
  %13 = load ptr, ptr %4, align 4, !dbg !855
  %14 = call i32 %11(ptr noundef %12, ptr noundef %13), !dbg !852
  ret i32 %14, !dbg !856
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_gpio_port_set_masked_raw(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 !dbg !857 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !858, metadata !DIExpression()), !dbg !859
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !860, metadata !DIExpression()), !dbg !861
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !862, metadata !DIExpression()), !dbg !863
  call void @llvm.dbg.declare(metadata ptr %7, metadata !864, metadata !DIExpression()), !dbg !865
  %8 = load ptr, ptr %4, align 4, !dbg !866
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 2, !dbg !867
  %10 = load ptr, ptr %9, align 4, !dbg !867
  store ptr %10, ptr %7, align 4, !dbg !865
  %11 = load ptr, ptr %7, align 4, !dbg !868
  %12 = getelementptr inbounds %struct.gpio_driver_api, ptr %11, i32 0, i32 2, !dbg !869
  %13 = load ptr, ptr %12, align 4, !dbg !869
  %14 = load ptr, ptr %4, align 4, !dbg !870
  %15 = load i32, ptr %5, align 4, !dbg !871
  %16 = load i32, ptr %6, align 4, !dbg !872
  %17 = call i32 %13(ptr noundef %14, i32 noundef %15, i32 noundef %16), !dbg !868
  ret i32 %17, !dbg !873
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_gpio_port_set_bits_raw(ptr noundef %0, i32 noundef %1) #0 !dbg !874 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !875, metadata !DIExpression()), !dbg !876
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !877, metadata !DIExpression()), !dbg !878
  call void @llvm.dbg.declare(metadata ptr %5, metadata !879, metadata !DIExpression()), !dbg !880
  %6 = load ptr, ptr %3, align 4, !dbg !881
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 2, !dbg !882
  %8 = load ptr, ptr %7, align 4, !dbg !882
  store ptr %8, ptr %5, align 4, !dbg !880
  %9 = load ptr, ptr %5, align 4, !dbg !883
  %10 = getelementptr inbounds %struct.gpio_driver_api, ptr %9, i32 0, i32 3, !dbg !884
  %11 = load ptr, ptr %10, align 4, !dbg !884
  %12 = load ptr, ptr %3, align 4, !dbg !885
  %13 = load i32, ptr %4, align 4, !dbg !886
  %14 = call i32 %11(ptr noundef %12, i32 noundef %13), !dbg !883
  ret i32 %14, !dbg !887
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_gpio_port_clear_bits_raw(ptr noundef %0, i32 noundef %1) #0 !dbg !888 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !889, metadata !DIExpression()), !dbg !890
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !891, metadata !DIExpression()), !dbg !892
  call void @llvm.dbg.declare(metadata ptr %5, metadata !893, metadata !DIExpression()), !dbg !894
  %6 = load ptr, ptr %3, align 4, !dbg !895
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 2, !dbg !896
  %8 = load ptr, ptr %7, align 4, !dbg !896
  store ptr %8, ptr %5, align 4, !dbg !894
  %9 = load ptr, ptr %5, align 4, !dbg !897
  %10 = getelementptr inbounds %struct.gpio_driver_api, ptr %9, i32 0, i32 4, !dbg !898
  %11 = load ptr, ptr %10, align 4, !dbg !898
  %12 = load ptr, ptr %3, align 4, !dbg !899
  %13 = load i32, ptr %4, align 4, !dbg !900
  %14 = call i32 %11(ptr noundef %12, i32 noundef %13), !dbg !897
  ret i32 %14, !dbg !901
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_gpio_port_toggle_bits(ptr noundef %0, i32 noundef %1) #0 !dbg !902 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !903, metadata !DIExpression()), !dbg !904
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !905, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.declare(metadata ptr %5, metadata !907, metadata !DIExpression()), !dbg !908
  %6 = load ptr, ptr %3, align 4, !dbg !909
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 2, !dbg !910
  %8 = load ptr, ptr %7, align 4, !dbg !910
  store ptr %8, ptr %5, align 4, !dbg !908
  %9 = load ptr, ptr %5, align 4, !dbg !911
  %10 = getelementptr inbounds %struct.gpio_driver_api, ptr %9, i32 0, i32 5, !dbg !912
  %11 = load ptr, ptr %10, align 4, !dbg !912
  %12 = load ptr, ptr %3, align 4, !dbg !913
  %13 = load i32, ptr %4, align 4, !dbg !914
  %14 = call i32 %11(ptr noundef %12, i32 noundef %13), !dbg !911
  ret i32 %14, !dbg !915
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_gpio_get_pending_int(ptr noundef %0) #0 !dbg !916 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !917, metadata !DIExpression()), !dbg !918
  call void @llvm.dbg.declare(metadata ptr %4, metadata !919, metadata !DIExpression()), !dbg !920
  %5 = load ptr, ptr %3, align 4, !dbg !921
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 2, !dbg !922
  %7 = load ptr, ptr %6, align 4, !dbg !922
  store ptr %7, ptr %4, align 4, !dbg !920
  %8 = load ptr, ptr %4, align 4, !dbg !923
  %9 = getelementptr inbounds %struct.gpio_driver_api, ptr %8, i32 0, i32 8, !dbg !925
  %10 = load ptr, ptr %9, align 4, !dbg !925
  %11 = icmp eq ptr %10, null, !dbg !926
  br i1 %11, label %12, label %13, !dbg !927

12:                                               ; preds = %1
  store i32 -88, ptr %2, align 4, !dbg !928
  br label %19, !dbg !928

13:                                               ; preds = %1
  %14 = load ptr, ptr %4, align 4, !dbg !930
  %15 = getelementptr inbounds %struct.gpio_driver_api, ptr %14, i32 0, i32 8, !dbg !931
  %16 = load ptr, ptr %15, align 4, !dbg !931
  %17 = load ptr, ptr %3, align 4, !dbg !932
  %18 = call i32 %16(ptr noundef %17), !dbg !930
  store i32 %18, ptr %2, align 4, !dbg !933
  br label %19, !dbg !933

19:                                               ; preds = %13, %12
  %20 = load i32, ptr %2, align 4, !dbg !934
  ret i32 %20, !dbg !934
}

; Function Attrs: noinline nounwind optnone
define hidden i32 @gpio_stm32_configure(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 !dbg !935 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store ptr %0, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !938, metadata !DIExpression()), !dbg !939
  store i32 %1, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !940, metadata !DIExpression()), !dbg !941
  store i32 %2, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !942, metadata !DIExpression()), !dbg !943
  store i32 %3, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !944, metadata !DIExpression()), !dbg !945
  call void @llvm.dbg.declare(metadata ptr %10, metadata !946, metadata !DIExpression()), !dbg !947
  %12 = load ptr, ptr %6, align 4, !dbg !948
  %13 = call i32 @pm_device_runtime_get(ptr noundef %12), !dbg !949
  store i32 %13, ptr %10, align 4, !dbg !950
  %14 = load i32, ptr %10, align 4, !dbg !951
  %15 = icmp slt i32 %14, 0, !dbg !953
  br i1 %15, label %16, label %18, !dbg !954

16:                                               ; preds = %4
  %17 = load i32, ptr %10, align 4, !dbg !955
  store i32 %17, ptr %5, align 4, !dbg !957
  br label %48, !dbg !957

18:                                               ; preds = %4
  %19 = load ptr, ptr %6, align 4, !dbg !958
  %20 = load i32, ptr %7, align 4, !dbg !959
  %21 = load i32, ptr %8, align 4, !dbg !960
  %22 = load i32, ptr %9, align 4, !dbg !961
  call void @gpio_stm32_configure_raw(ptr noundef %19, i32 noundef %20, i32 noundef %21, i32 noundef %22), !dbg !962
  %23 = load i32, ptr %9, align 4, !dbg !963
  %24 = icmp eq i32 %23, 17, !dbg !965
  br i1 %24, label %25, label %45, !dbg !966

25:                                               ; preds = %18
  call void @llvm.dbg.declare(metadata ptr %11, metadata !967, metadata !DIExpression()), !dbg !969
  %26 = load i32, ptr %8, align 4, !dbg !970
  %27 = and i32 %26, 2048, !dbg !971
  store i32 %27, ptr %11, align 4, !dbg !969
  %28 = load i32, ptr %11, align 4, !dbg !972
  %29 = icmp eq i32 %28, 2048, !dbg !974
  br i1 %29, label %30, label %35, !dbg !975

30:                                               ; preds = %25
  %31 = load ptr, ptr %6, align 4, !dbg !976
  %32 = load i32, ptr %7, align 4, !dbg !978
  %33 = shl i32 1, %32, !dbg !979
  %34 = call i32 @gpio_stm32_port_set_bits_raw(ptr noundef %31, i32 noundef %33), !dbg !980
  br label %44, !dbg !981

35:                                               ; preds = %25
  %36 = load i32, ptr %11, align 4, !dbg !982
  %37 = icmp eq i32 %36, 0, !dbg !984
  br i1 %37, label %38, label %43, !dbg !985

38:                                               ; preds = %35
  %39 = load ptr, ptr %6, align 4, !dbg !986
  %40 = load i32, ptr %7, align 4, !dbg !988
  %41 = shl i32 1, %40, !dbg !989
  %42 = call i32 @gpio_stm32_port_clear_bits_raw(ptr noundef %39, i32 noundef %41), !dbg !990
  br label %43, !dbg !991

43:                                               ; preds = %38, %35
  br label %44

44:                                               ; preds = %43, %30
  br label %45, !dbg !992

45:                                               ; preds = %44, %18
  %46 = load ptr, ptr %6, align 4, !dbg !993
  %47 = call i32 @pm_device_runtime_put(ptr noundef %46), !dbg !994
  store i32 %47, ptr %5, align 4, !dbg !995
  br label %48, !dbg !995

48:                                               ; preds = %45, %16
  %49 = load i32, ptr %5, align 4, !dbg !996
  ret i32 %49, !dbg !996
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone
define internal i32 @pm_device_runtime_get(ptr noundef %0) #0 !dbg !997 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !999, metadata !DIExpression()), !dbg !1000
  %3 = load ptr, ptr %2, align 4, !dbg !1001
  ret i32 0, !dbg !1002
}

; Function Attrs: noinline nounwind optnone
define internal void @gpio_stm32_configure_raw(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 !dbg !1003 {
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
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1006, metadata !DIExpression()), !dbg !1007
  store i32 %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1008, metadata !DIExpression()), !dbg !1009
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1010, metadata !DIExpression()), !dbg !1011
  store i32 %3, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1012, metadata !DIExpression()), !dbg !1013
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1014, metadata !DIExpression()), !dbg !1016
  %16 = load ptr, ptr %5, align 4, !dbg !1017
  %17 = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 1, !dbg !1018
  %18 = load ptr, ptr %17, align 4, !dbg !1018
  store ptr %18, ptr %9, align 4, !dbg !1016
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1019, metadata !DIExpression()), !dbg !1020
  %19 = load ptr, ptr %9, align 4, !dbg !1021
  %20 = getelementptr inbounds %struct.gpio_stm32_config, ptr %19, i32 0, i32 1, !dbg !1022
  %21 = load ptr, ptr %20, align 4, !dbg !1022
  store ptr %21, ptr %10, align 4, !dbg !1020
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1023, metadata !DIExpression()), !dbg !1024
  %22 = load i32, ptr %6, align 4, !dbg !1025
  %23 = call i32 @stm32_pinval_get(i32 noundef %22), !dbg !1026
  store i32 %23, ptr %11, align 4, !dbg !1024
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1027, metadata !DIExpression()), !dbg !1028
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1029, metadata !DIExpression()), !dbg !1030
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1031, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.declare(metadata ptr %15, metadata !1033, metadata !DIExpression()), !dbg !1034
  %24 = load i32, ptr %7, align 4, !dbg !1035
  %25 = and i32 %24, 48, !dbg !1036
  store i32 %25, ptr %12, align 4, !dbg !1037
  %26 = load i32, ptr %7, align 4, !dbg !1038
  %27 = and i32 %26, 64, !dbg !1039
  store i32 %27, ptr %13, align 4, !dbg !1040
  %28 = load i32, ptr %7, align 4, !dbg !1041
  %29 = and i32 %28, 384, !dbg !1042
  store i32 %29, ptr %14, align 4, !dbg !1043
  %30 = load i32, ptr %7, align 4, !dbg !1044
  %31 = and i32 %30, 1536, !dbg !1045
  store i32 %31, ptr %15, align 4, !dbg !1046
  call void @z_stm32_hsem_lock(i32 noundef 0, i32 noundef 1048576), !dbg !1047
  %32 = load ptr, ptr %10, align 4, !dbg !1048
  %33 = load i32, ptr %11, align 4, !dbg !1049
  %34 = load i32, ptr %13, align 4, !dbg !1050
  %35 = lshr i32 %34, 6, !dbg !1051
  call void @LL_GPIO_SetPinOutputType(ptr noundef %32, i32 noundef %33, i32 noundef %35), !dbg !1052
  %36 = load ptr, ptr %10, align 4, !dbg !1053
  %37 = load i32, ptr %11, align 4, !dbg !1054
  %38 = load i32, ptr %14, align 4, !dbg !1055
  %39 = lshr i32 %38, 7, !dbg !1056
  call void @LL_GPIO_SetPinSpeed(ptr noundef %36, i32 noundef %37, i32 noundef %39), !dbg !1057
  %40 = load ptr, ptr %10, align 4, !dbg !1058
  %41 = load i32, ptr %11, align 4, !dbg !1059
  %42 = load i32, ptr %15, align 4, !dbg !1060
  %43 = lshr i32 %42, 9, !dbg !1061
  call void @LL_GPIO_SetPinPull(ptr noundef %40, i32 noundef %41, i32 noundef %43), !dbg !1062
  %44 = load i32, ptr %12, align 4, !dbg !1063
  %45 = icmp eq i32 %44, 32, !dbg !1065
  br i1 %45, label %46, label %58, !dbg !1066

46:                                               ; preds = %4
  %47 = load i32, ptr %6, align 4, !dbg !1067
  %48 = icmp slt i32 %47, 8, !dbg !1070
  br i1 %48, label %49, label %53, !dbg !1071

49:                                               ; preds = %46
  %50 = load ptr, ptr %10, align 4, !dbg !1072
  %51 = load i32, ptr %11, align 4, !dbg !1074
  %52 = load i32, ptr %8, align 4, !dbg !1075
  call void @LL_GPIO_SetAFPin_0_7(ptr noundef %50, i32 noundef %51, i32 noundef %52), !dbg !1076
  br label %57, !dbg !1077

53:                                               ; preds = %46
  %54 = load ptr, ptr %10, align 4, !dbg !1078
  %55 = load i32, ptr %11, align 4, !dbg !1080
  %56 = load i32, ptr %8, align 4, !dbg !1081
  call void @LL_GPIO_SetAFPin_8_15(ptr noundef %54, i32 noundef %55, i32 noundef %56), !dbg !1082
  br label %57

57:                                               ; preds = %53, %49
  br label %58, !dbg !1083

58:                                               ; preds = %57, %4
  %59 = load ptr, ptr %10, align 4, !dbg !1084
  %60 = load i32, ptr %11, align 4, !dbg !1085
  %61 = load i32, ptr %12, align 4, !dbg !1086
  %62 = lshr i32 %61, 4, !dbg !1087
  call void @LL_GPIO_SetPinMode(ptr noundef %59, i32 noundef %60, i32 noundef %62), !dbg !1088
  call void @z_stm32_hsem_unlock(i32 noundef 0), !dbg !1089
  ret void, !dbg !1090
}

; Function Attrs: noinline nounwind optnone
define internal i32 @gpio_stm32_port_set_bits_raw(ptr noundef %0, i32 noundef %1) #0 !dbg !1091 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1092, metadata !DIExpression()), !dbg !1093
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1094, metadata !DIExpression()), !dbg !1095
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1096, metadata !DIExpression()), !dbg !1097
  %7 = load ptr, ptr %3, align 4, !dbg !1098
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 1, !dbg !1099
  %9 = load ptr, ptr %8, align 4, !dbg !1099
  store ptr %9, ptr %5, align 4, !dbg !1097
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1100, metadata !DIExpression()), !dbg !1101
  %10 = load ptr, ptr %5, align 4, !dbg !1102
  %11 = getelementptr inbounds %struct.gpio_stm32_config, ptr %10, i32 0, i32 1, !dbg !1103
  %12 = load ptr, ptr %11, align 4, !dbg !1103
  store ptr %12, ptr %6, align 4, !dbg !1101
  %13 = load i32, ptr %4, align 4, !dbg !1104
  %14 = load ptr, ptr %6, align 4, !dbg !1105
  %15 = getelementptr inbounds %struct.GPIO_TypeDef, ptr %14, i32 0, i32 6, !dbg !1106
  store volatile i32 %13, ptr %15, align 4, !dbg !1107
  ret i32 0, !dbg !1108
}

; Function Attrs: noinline nounwind optnone
define internal i32 @gpio_stm32_port_clear_bits_raw(ptr noundef %0, i32 noundef %1) #0 !dbg !1109 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1110, metadata !DIExpression()), !dbg !1111
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1112, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1114, metadata !DIExpression()), !dbg !1115
  %7 = load ptr, ptr %3, align 4, !dbg !1116
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 1, !dbg !1117
  %9 = load ptr, ptr %8, align 4, !dbg !1117
  store ptr %9, ptr %5, align 4, !dbg !1115
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1118, metadata !DIExpression()), !dbg !1119
  %10 = load ptr, ptr %5, align 4, !dbg !1120
  %11 = getelementptr inbounds %struct.gpio_stm32_config, ptr %10, i32 0, i32 1, !dbg !1121
  %12 = load ptr, ptr %11, align 4, !dbg !1121
  store ptr %12, ptr %6, align 4, !dbg !1119
  %13 = load ptr, ptr %6, align 4, !dbg !1122
  %14 = load i32, ptr %4, align 4, !dbg !1123
  call void @LL_GPIO_ResetOutputPin(ptr noundef %13, i32 noundef %14), !dbg !1124
  ret i32 0, !dbg !1125
}

; Function Attrs: noinline nounwind optnone
define internal i32 @pm_device_runtime_put(ptr noundef %0) #0 !dbg !1126 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1127, metadata !DIExpression()), !dbg !1128
  %3 = load ptr, ptr %2, align 4, !dbg !1129
  ret i32 0, !dbg !1130
}

; Function Attrs: noinline nounwind optnone
define internal i32 @gpio_stm32_init(ptr noundef %0) #0 !dbg !1131 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1132, metadata !DIExpression()), !dbg !1133
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1134, metadata !DIExpression()), !dbg !1136
  %6 = load ptr, ptr %3, align 4, !dbg !1137
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 4, !dbg !1138
  %8 = load ptr, ptr %7, align 4, !dbg !1138
  store ptr %8, ptr %4, align 4, !dbg !1136
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1139, metadata !DIExpression()), !dbg !1140
  %9 = load ptr, ptr %3, align 4, !dbg !1141
  %10 = load ptr, ptr %4, align 4, !dbg !1142
  %11 = getelementptr inbounds %struct.gpio_stm32_data, ptr %10, i32 0, i32 1, !dbg !1143
  store ptr %9, ptr %11, align 4, !dbg !1144
  %12 = call zeroext i1 @device_is_ready(ptr noundef @__device_dts_ord_9), !dbg !1145
  br i1 %12, label %14, label %13, !dbg !1147

13:                                               ; preds = %1
  store i32 -19, ptr %2, align 4, !dbg !1148
  br label %25, !dbg !1148

14:                                               ; preds = %1
  %15 = load ptr, ptr %3, align 4, !dbg !1150
  %16 = call i32 @gpio_stm32_clock_request(ptr noundef %15, i1 noundef zeroext true), !dbg !1151
  store i32 %16, ptr %5, align 4, !dbg !1152
  %17 = load i32, ptr %5, align 4, !dbg !1153
  %18 = icmp slt i32 %17, 0, !dbg !1155
  br i1 %18, label %19, label %21, !dbg !1156

19:                                               ; preds = %14
  %20 = load i32, ptr %5, align 4, !dbg !1157
  store i32 %20, ptr %2, align 4, !dbg !1159
  br label %25, !dbg !1159

21:                                               ; preds = %14
  %22 = load ptr, ptr %3, align 4, !dbg !1160
  call void @pm_device_init_suspended(ptr noundef %22), !dbg !1161
  %23 = load ptr, ptr %3, align 4, !dbg !1162
  %24 = call i32 @pm_device_runtime_enable(ptr noundef %23), !dbg !1163
  store i32 0, ptr %2, align 4, !dbg !1164
  br label %25, !dbg !1164

25:                                               ; preds = %21, %19, %13
  %26 = load i32, ptr %2, align 4, !dbg !1165
  ret i32 %26, !dbg !1165
}

declare i64 @z_timeout_expires(ptr noundef) #2

declare i64 @z_timeout_remaining(ptr noundef) #2

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @sys_sflist_is_empty(ptr noundef %0) #0 !dbg !1166 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1170, metadata !DIExpression()), !dbg !1171
  %3 = load ptr, ptr %2, align 4, !dbg !1172
  %4 = call ptr @sys_sflist_peek_head(ptr noundef %3), !dbg !1173
  %5 = icmp eq ptr %4, null, !dbg !1174
  ret i1 %5, !dbg !1175
}

; Function Attrs: noinline nounwind optnone
define internal ptr @sys_sflist_peek_head(ptr noundef %0) #0 !dbg !1176 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1179, metadata !DIExpression()), !dbg !1180
  %3 = load ptr, ptr %2, align 4, !dbg !1181
  %4 = getelementptr inbounds %struct._sflist, ptr %3, i32 0, i32 0, !dbg !1182
  %5 = load ptr, ptr %4, align 4, !dbg !1182
  ret ptr %5, !dbg !1183
}

declare zeroext i1 @z_device_is_ready(ptr noundef) #2

; Function Attrs: noinline nounwind optnone
define internal i32 @stm32_pinval_get(i32 noundef %0) #0 !dbg !1184 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1187, metadata !DIExpression()), !dbg !1188
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1189, metadata !DIExpression()), !dbg !1190
  %4 = load i32, ptr %2, align 4, !dbg !1191
  %5 = shl i32 1, %4, !dbg !1192
  store i32 %5, ptr %3, align 4, !dbg !1193
  %6 = load i32, ptr %3, align 4, !dbg !1194
  ret i32 %6, !dbg !1195
}

; Function Attrs: noinline nounwind optnone
define internal void @z_stm32_hsem_lock(i32 noundef %0, i32 noundef %1) #0 !dbg !1196 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1200, metadata !DIExpression()), !dbg !1201
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1202, metadata !DIExpression()), !dbg !1203
  ret void, !dbg !1204
}

; Function Attrs: noinline nounwind optnone
define internal void @LL_GPIO_SetPinOutputType(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 !dbg !1205 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1209, metadata !DIExpression()), !dbg !1210
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1211, metadata !DIExpression()), !dbg !1212
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1213, metadata !DIExpression()), !dbg !1214
  %7 = load ptr, ptr %4, align 4, !dbg !1215
  %8 = getelementptr inbounds %struct.GPIO_TypeDef, ptr %7, i32 0, i32 1, !dbg !1216
  %9 = load volatile i32, ptr %8, align 4, !dbg !1216
  %10 = load i32, ptr %5, align 4, !dbg !1217
  %11 = xor i32 %10, -1, !dbg !1218
  %12 = and i32 %9, %11, !dbg !1219
  %13 = load i32, ptr %5, align 4, !dbg !1220
  %14 = load i32, ptr %6, align 4, !dbg !1221
  %15 = mul i32 %13, %14, !dbg !1222
  %16 = or i32 %12, %15, !dbg !1223
  %17 = load ptr, ptr %4, align 4, !dbg !1224
  %18 = getelementptr inbounds %struct.GPIO_TypeDef, ptr %17, i32 0, i32 1, !dbg !1225
  store volatile i32 %16, ptr %18, align 4, !dbg !1226
  ret void, !dbg !1227
}

; Function Attrs: noinline nounwind optnone
define internal void @LL_GPIO_SetPinSpeed(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 !dbg !1228 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1229, metadata !DIExpression()), !dbg !1230
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1231, metadata !DIExpression()), !dbg !1232
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1233, metadata !DIExpression()), !dbg !1234
  %7 = load ptr, ptr %4, align 4, !dbg !1235
  %8 = getelementptr inbounds %struct.GPIO_TypeDef, ptr %7, i32 0, i32 2, !dbg !1236
  %9 = load volatile i32, ptr %8, align 4, !dbg !1236
  %10 = load i32, ptr %5, align 4, !dbg !1237
  %11 = load i32, ptr %5, align 4, !dbg !1238
  %12 = mul i32 %10, %11, !dbg !1239
  %13 = mul i32 %12, 3, !dbg !1240
  %14 = xor i32 %13, -1, !dbg !1241
  %15 = and i32 %9, %14, !dbg !1242
  %16 = load i32, ptr %5, align 4, !dbg !1243
  %17 = load i32, ptr %5, align 4, !dbg !1244
  %18 = mul i32 %16, %17, !dbg !1245
  %19 = load i32, ptr %6, align 4, !dbg !1246
  %20 = mul i32 %18, %19, !dbg !1247
  %21 = or i32 %15, %20, !dbg !1248
  %22 = load ptr, ptr %4, align 4, !dbg !1249
  %23 = getelementptr inbounds %struct.GPIO_TypeDef, ptr %22, i32 0, i32 2, !dbg !1250
  store volatile i32 %21, ptr %23, align 4, !dbg !1251
  ret void, !dbg !1252
}

; Function Attrs: noinline nounwind optnone
define internal void @LL_GPIO_SetPinPull(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 !dbg !1253 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1254, metadata !DIExpression()), !dbg !1255
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1256, metadata !DIExpression()), !dbg !1257
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1258, metadata !DIExpression()), !dbg !1259
  %7 = load ptr, ptr %4, align 4, !dbg !1260
  %8 = getelementptr inbounds %struct.GPIO_TypeDef, ptr %7, i32 0, i32 3, !dbg !1261
  %9 = load volatile i32, ptr %8, align 4, !dbg !1261
  %10 = load i32, ptr %5, align 4, !dbg !1262
  %11 = load i32, ptr %5, align 4, !dbg !1263
  %12 = mul i32 %10, %11, !dbg !1264
  %13 = mul i32 %12, 3, !dbg !1265
  %14 = xor i32 %13, -1, !dbg !1266
  %15 = and i32 %9, %14, !dbg !1267
  %16 = load i32, ptr %5, align 4, !dbg !1268
  %17 = load i32, ptr %5, align 4, !dbg !1269
  %18 = mul i32 %16, %17, !dbg !1270
  %19 = load i32, ptr %6, align 4, !dbg !1271
  %20 = mul i32 %18, %19, !dbg !1272
  %21 = or i32 %15, %20, !dbg !1273
  %22 = load ptr, ptr %4, align 4, !dbg !1274
  %23 = getelementptr inbounds %struct.GPIO_TypeDef, ptr %22, i32 0, i32 3, !dbg !1275
  store volatile i32 %21, ptr %23, align 4, !dbg !1276
  ret void, !dbg !1277
}

; Function Attrs: noinline nounwind optnone
define internal void @LL_GPIO_SetAFPin_0_7(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 !dbg !1278 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1279, metadata !DIExpression()), !dbg !1280
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1281, metadata !DIExpression()), !dbg !1282
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1283, metadata !DIExpression()), !dbg !1284
  %7 = load ptr, ptr %4, align 4, !dbg !1285
  %8 = getelementptr inbounds %struct.GPIO_TypeDef, ptr %7, i32 0, i32 8, !dbg !1286
  %9 = getelementptr inbounds [2 x i32], ptr %8, i32 0, i32 0, !dbg !1285
  %10 = load volatile i32, ptr %9, align 4, !dbg !1285
  %11 = load i32, ptr %5, align 4, !dbg !1287
  %12 = load i32, ptr %5, align 4, !dbg !1288
  %13 = mul i32 %11, %12, !dbg !1289
  %14 = load i32, ptr %5, align 4, !dbg !1290
  %15 = mul i32 %13, %14, !dbg !1291
  %16 = load i32, ptr %5, align 4, !dbg !1292
  %17 = mul i32 %15, %16, !dbg !1293
  %18 = mul i32 %17, 15, !dbg !1294
  %19 = xor i32 %18, -1, !dbg !1295
  %20 = and i32 %10, %19, !dbg !1296
  %21 = load i32, ptr %5, align 4, !dbg !1297
  %22 = load i32, ptr %5, align 4, !dbg !1298
  %23 = mul i32 %21, %22, !dbg !1299
  %24 = load i32, ptr %5, align 4, !dbg !1300
  %25 = mul i32 %23, %24, !dbg !1301
  %26 = load i32, ptr %5, align 4, !dbg !1302
  %27 = mul i32 %25, %26, !dbg !1303
  %28 = load i32, ptr %6, align 4, !dbg !1304
  %29 = mul i32 %27, %28, !dbg !1305
  %30 = or i32 %20, %29, !dbg !1306
  %31 = load ptr, ptr %4, align 4, !dbg !1307
  %32 = getelementptr inbounds %struct.GPIO_TypeDef, ptr %31, i32 0, i32 8, !dbg !1308
  %33 = getelementptr inbounds [2 x i32], ptr %32, i32 0, i32 0, !dbg !1307
  store volatile i32 %30, ptr %33, align 4, !dbg !1309
  ret void, !dbg !1310
}

; Function Attrs: noinline nounwind optnone
define internal void @LL_GPIO_SetAFPin_8_15(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 !dbg !1311 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1312, metadata !DIExpression()), !dbg !1313
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1314, metadata !DIExpression()), !dbg !1315
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1316, metadata !DIExpression()), !dbg !1317
  %7 = load ptr, ptr %4, align 4, !dbg !1318
  %8 = getelementptr inbounds %struct.GPIO_TypeDef, ptr %7, i32 0, i32 8, !dbg !1319
  %9 = getelementptr inbounds [2 x i32], ptr %8, i32 0, i32 1, !dbg !1318
  %10 = load volatile i32, ptr %9, align 4, !dbg !1318
  %11 = load i32, ptr %5, align 4, !dbg !1320
  %12 = lshr i32 %11, 8, !dbg !1321
  %13 = load i32, ptr %5, align 4, !dbg !1322
  %14 = lshr i32 %13, 8, !dbg !1323
  %15 = mul i32 %12, %14, !dbg !1324
  %16 = load i32, ptr %5, align 4, !dbg !1325
  %17 = lshr i32 %16, 8, !dbg !1326
  %18 = mul i32 %15, %17, !dbg !1327
  %19 = load i32, ptr %5, align 4, !dbg !1328
  %20 = lshr i32 %19, 8, !dbg !1329
  %21 = mul i32 %18, %20, !dbg !1330
  %22 = mul i32 %21, 15, !dbg !1331
  %23 = xor i32 %22, -1, !dbg !1332
  %24 = and i32 %10, %23, !dbg !1333
  %25 = load i32, ptr %5, align 4, !dbg !1334
  %26 = lshr i32 %25, 8, !dbg !1335
  %27 = load i32, ptr %5, align 4, !dbg !1336
  %28 = lshr i32 %27, 8, !dbg !1337
  %29 = mul i32 %26, %28, !dbg !1338
  %30 = load i32, ptr %5, align 4, !dbg !1339
  %31 = lshr i32 %30, 8, !dbg !1340
  %32 = mul i32 %29, %31, !dbg !1341
  %33 = load i32, ptr %5, align 4, !dbg !1342
  %34 = lshr i32 %33, 8, !dbg !1343
  %35 = mul i32 %32, %34, !dbg !1344
  %36 = load i32, ptr %6, align 4, !dbg !1345
  %37 = mul i32 %35, %36, !dbg !1346
  %38 = or i32 %24, %37, !dbg !1347
  %39 = load ptr, ptr %4, align 4, !dbg !1348
  %40 = getelementptr inbounds %struct.GPIO_TypeDef, ptr %39, i32 0, i32 8, !dbg !1349
  %41 = getelementptr inbounds [2 x i32], ptr %40, i32 0, i32 1, !dbg !1348
  store volatile i32 %38, ptr %41, align 4, !dbg !1350
  ret void, !dbg !1351
}

; Function Attrs: noinline nounwind optnone
define internal void @LL_GPIO_SetPinMode(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 !dbg !1352 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1353, metadata !DIExpression()), !dbg !1354
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1355, metadata !DIExpression()), !dbg !1356
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1357, metadata !DIExpression()), !dbg !1358
  %7 = load ptr, ptr %4, align 4, !dbg !1359
  %8 = getelementptr inbounds %struct.GPIO_TypeDef, ptr %7, i32 0, i32 0, !dbg !1360
  %9 = load volatile i32, ptr %8, align 4, !dbg !1360
  %10 = load i32, ptr %5, align 4, !dbg !1361
  %11 = load i32, ptr %5, align 4, !dbg !1362
  %12 = mul i32 %10, %11, !dbg !1363
  %13 = mul i32 %12, 3, !dbg !1364
  %14 = xor i32 %13, -1, !dbg !1365
  %15 = and i32 %9, %14, !dbg !1366
  %16 = load i32, ptr %5, align 4, !dbg !1367
  %17 = load i32, ptr %5, align 4, !dbg !1368
  %18 = mul i32 %16, %17, !dbg !1369
  %19 = load i32, ptr %6, align 4, !dbg !1370
  %20 = mul i32 %18, %19, !dbg !1371
  %21 = or i32 %15, %20, !dbg !1372
  %22 = load ptr, ptr %4, align 4, !dbg !1373
  %23 = getelementptr inbounds %struct.GPIO_TypeDef, ptr %22, i32 0, i32 0, !dbg !1374
  store volatile i32 %21, ptr %23, align 4, !dbg !1375
  ret void, !dbg !1376
}

; Function Attrs: noinline nounwind optnone
define internal void @z_stm32_hsem_unlock(i32 noundef %0) #0 !dbg !1377 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1380, metadata !DIExpression()), !dbg !1381
  ret void, !dbg !1382
}

; Function Attrs: noinline nounwind optnone
define internal void @LL_GPIO_ResetOutputPin(ptr noundef %0, i32 noundef %1) #0 !dbg !1383 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1386, metadata !DIExpression()), !dbg !1387
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1388, metadata !DIExpression()), !dbg !1389
  %5 = load i32, ptr %4, align 4, !dbg !1390
  %6 = load ptr, ptr %3, align 4, !dbg !1391
  %7 = getelementptr inbounds %struct.GPIO_TypeDef, ptr %6, i32 0, i32 9, !dbg !1392
  store volatile i32 %5, ptr %7, align 4, !dbg !1393
  ret void, !dbg !1394
}

; Function Attrs: noinline nounwind optnone
define internal i32 @gpio_stm32_config(ptr noundef %0, i8 noundef zeroext %1, i32 noundef %2) #0 !dbg !1395 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store ptr %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1396, metadata !DIExpression()), !dbg !1397
  store i8 %1, ptr %6, align 1
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1398, metadata !DIExpression()), !dbg !1399
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1400, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1402, metadata !DIExpression()), !dbg !1403
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1404, metadata !DIExpression()), !dbg !1405
  %10 = load i32, ptr %7, align 4, !dbg !1406
  %11 = call i32 @gpio_stm32_flags_to_conf(i32 noundef %10, ptr noundef %9), !dbg !1407
  store i32 %11, ptr %8, align 4, !dbg !1408
  %12 = load i32, ptr %8, align 4, !dbg !1409
  %13 = icmp ne i32 %12, 0, !dbg !1411
  br i1 %13, label %14, label %16, !dbg !1412

14:                                               ; preds = %3
  %15 = load i32, ptr %8, align 4, !dbg !1413
  store i32 %15, ptr %4, align 4, !dbg !1415
  br label %70, !dbg !1415

16:                                               ; preds = %3
  %17 = load ptr, ptr %5, align 4, !dbg !1416
  %18 = call i32 @pm_device_runtime_get(ptr noundef %17), !dbg !1417
  store i32 %18, ptr %8, align 4, !dbg !1418
  %19 = load i32, ptr %8, align 4, !dbg !1419
  %20 = icmp slt i32 %19, 0, !dbg !1421
  br i1 %20, label %21, label %23, !dbg !1422

21:                                               ; preds = %16
  %22 = load i32, ptr %8, align 4, !dbg !1423
  store i32 %22, ptr %4, align 4, !dbg !1425
  br label %70, !dbg !1425

23:                                               ; preds = %16
  %24 = load i32, ptr %7, align 4, !dbg !1426
  %25 = and i32 %24, 131072, !dbg !1428
  %26 = icmp ne i32 %25, 0, !dbg !1429
  br i1 %26, label %27, label %49, !dbg !1430

27:                                               ; preds = %23
  %28 = load i32, ptr %7, align 4, !dbg !1431
  %29 = and i32 %28, 524288, !dbg !1434
  %30 = icmp ne i32 %29, 0, !dbg !1435
  br i1 %30, label %31, label %37, !dbg !1436

31:                                               ; preds = %27
  %32 = load ptr, ptr %5, align 4, !dbg !1437
  %33 = load i8, ptr %6, align 1, !dbg !1439
  %34 = zext i8 %33 to i32, !dbg !1440
  %35 = shl i32 1, %34, !dbg !1441
  %36 = call i32 @gpio_stm32_port_set_bits_raw(ptr noundef %32, i32 noundef %35), !dbg !1442
  br label %48, !dbg !1443

37:                                               ; preds = %27
  %38 = load i32, ptr %7, align 4, !dbg !1444
  %39 = and i32 %38, 262144, !dbg !1446
  %40 = icmp ne i32 %39, 0, !dbg !1447
  br i1 %40, label %41, label %47, !dbg !1448

41:                                               ; preds = %37
  %42 = load ptr, ptr %5, align 4, !dbg !1449
  %43 = load i8, ptr %6, align 1, !dbg !1451
  %44 = zext i8 %43 to i32, !dbg !1452
  %45 = shl i32 1, %44, !dbg !1453
  %46 = call i32 @gpio_stm32_port_clear_bits_raw(ptr noundef %42, i32 noundef %45), !dbg !1454
  br label %47, !dbg !1455

47:                                               ; preds = %41, %37
  br label %48

48:                                               ; preds = %47, %31
  br label %49, !dbg !1456

49:                                               ; preds = %48, %23
  %50 = load ptr, ptr %5, align 4, !dbg !1457
  %51 = load i8, ptr %6, align 1, !dbg !1458
  %52 = zext i8 %51 to i32, !dbg !1458
  %53 = load i32, ptr %9, align 4, !dbg !1459
  call void @gpio_stm32_configure_raw(ptr noundef %50, i32 noundef %52, i32 noundef %53, i32 noundef 0), !dbg !1460
  %54 = load i32, ptr %7, align 4, !dbg !1461
  %55 = and i32 %54, 131072, !dbg !1463
  %56 = icmp eq i32 %55, 0, !dbg !1464
  br i1 %56, label %57, label %69, !dbg !1465

57:                                               ; preds = %49
  %58 = load i32, ptr %7, align 4, !dbg !1466
  %59 = and i32 %58, 65536, !dbg !1467
  %60 = icmp eq i32 %59, 0, !dbg !1468
  br i1 %60, label %61, label %69, !dbg !1469

61:                                               ; preds = %57
  %62 = load ptr, ptr %5, align 4, !dbg !1470
  %63 = call i32 @pm_device_runtime_put(ptr noundef %62), !dbg !1472
  store i32 %63, ptr %8, align 4, !dbg !1473
  %64 = load i32, ptr %8, align 4, !dbg !1474
  %65 = icmp slt i32 %64, 0, !dbg !1476
  br i1 %65, label %66, label %68, !dbg !1477

66:                                               ; preds = %61
  %67 = load i32, ptr %8, align 4, !dbg !1478
  store i32 %67, ptr %4, align 4, !dbg !1480
  br label %70, !dbg !1480

68:                                               ; preds = %61
  br label %69, !dbg !1481

69:                                               ; preds = %68, %57, %49
  store i32 0, ptr %4, align 4, !dbg !1482
  br label %70, !dbg !1482

70:                                               ; preds = %69, %66, %21, %14
  %71 = load i32, ptr %4, align 4, !dbg !1483
  ret i32 %71, !dbg !1483
}

; Function Attrs: noinline nounwind optnone
define internal i32 @gpio_stm32_port_get_raw(ptr noundef %0, ptr noundef %1) #0 !dbg !1484 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1487, metadata !DIExpression()), !dbg !1488
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1489, metadata !DIExpression()), !dbg !1490
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1491, metadata !DIExpression()), !dbg !1492
  %7 = load ptr, ptr %3, align 4, !dbg !1493
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 1, !dbg !1494
  %9 = load ptr, ptr %8, align 4, !dbg !1494
  store ptr %9, ptr %5, align 4, !dbg !1492
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1495, metadata !DIExpression()), !dbg !1496
  %10 = load ptr, ptr %5, align 4, !dbg !1497
  %11 = getelementptr inbounds %struct.gpio_stm32_config, ptr %10, i32 0, i32 1, !dbg !1498
  %12 = load ptr, ptr %11, align 4, !dbg !1498
  store ptr %12, ptr %6, align 4, !dbg !1496
  %13 = load ptr, ptr %6, align 4, !dbg !1499
  %14 = call i32 @LL_GPIO_ReadInputPort(ptr noundef %13), !dbg !1500
  %15 = load ptr, ptr %4, align 4, !dbg !1501
  store i32 %14, ptr %15, align 4, !dbg !1502
  ret i32 0, !dbg !1503
}

; Function Attrs: noinline nounwind optnone
define internal i32 @gpio_stm32_port_set_masked_raw(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 !dbg !1504 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1505, metadata !DIExpression()), !dbg !1506
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1507, metadata !DIExpression()), !dbg !1508
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1509, metadata !DIExpression()), !dbg !1510
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1511, metadata !DIExpression()), !dbg !1512
  %10 = load ptr, ptr %4, align 4, !dbg !1513
  %11 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 1, !dbg !1514
  %12 = load ptr, ptr %11, align 4, !dbg !1514
  store ptr %12, ptr %7, align 4, !dbg !1512
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1515, metadata !DIExpression()), !dbg !1516
  %13 = load ptr, ptr %7, align 4, !dbg !1517
  %14 = getelementptr inbounds %struct.gpio_stm32_config, ptr %13, i32 0, i32 1, !dbg !1518
  %15 = load ptr, ptr %14, align 4, !dbg !1518
  store ptr %15, ptr %8, align 4, !dbg !1516
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1519, metadata !DIExpression()), !dbg !1520
  call void @z_stm32_hsem_lock(i32 noundef 0, i32 noundef 1048576), !dbg !1521
  %16 = load ptr, ptr %8, align 4, !dbg !1522
  %17 = call i32 @LL_GPIO_ReadOutputPort(ptr noundef %16), !dbg !1523
  store i32 %17, ptr %9, align 4, !dbg !1524
  %18 = load ptr, ptr %8, align 4, !dbg !1525
  %19 = load i32, ptr %9, align 4, !dbg !1526
  %20 = load i32, ptr %5, align 4, !dbg !1527
  %21 = xor i32 %20, -1, !dbg !1528
  %22 = and i32 %19, %21, !dbg !1529
  %23 = load i32, ptr %5, align 4, !dbg !1530
  %24 = load i32, ptr %6, align 4, !dbg !1531
  %25 = and i32 %23, %24, !dbg !1532
  %26 = or i32 %22, %25, !dbg !1533
  call void @LL_GPIO_WriteOutputPort(ptr noundef %18, i32 noundef %26), !dbg !1534
  call void @z_stm32_hsem_unlock(i32 noundef 0), !dbg !1535
  ret i32 0, !dbg !1536
}

; Function Attrs: noinline nounwind optnone
define internal i32 @gpio_stm32_port_toggle_bits(ptr noundef %0, i32 noundef %1) #0 !dbg !1537 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1538, metadata !DIExpression()), !dbg !1539
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1540, metadata !DIExpression()), !dbg !1541
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1542, metadata !DIExpression()), !dbg !1543
  %7 = load ptr, ptr %3, align 4, !dbg !1544
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 1, !dbg !1545
  %9 = load ptr, ptr %8, align 4, !dbg !1545
  store ptr %9, ptr %5, align 4, !dbg !1543
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1546, metadata !DIExpression()), !dbg !1547
  %10 = load ptr, ptr %5, align 4, !dbg !1548
  %11 = getelementptr inbounds %struct.gpio_stm32_config, ptr %10, i32 0, i32 1, !dbg !1549
  %12 = load ptr, ptr %11, align 4, !dbg !1549
  store ptr %12, ptr %6, align 4, !dbg !1547
  call void @z_stm32_hsem_lock(i32 noundef 0, i32 noundef 1048576), !dbg !1550
  %13 = load ptr, ptr %6, align 4, !dbg !1551
  %14 = getelementptr inbounds %struct.GPIO_TypeDef, ptr %13, i32 0, i32 5, !dbg !1552
  %15 = load volatile i32, ptr %14, align 4, !dbg !1552
  %16 = load i32, ptr %4, align 4, !dbg !1553
  %17 = xor i32 %15, %16, !dbg !1554
  %18 = load ptr, ptr %6, align 4, !dbg !1555
  %19 = getelementptr inbounds %struct.GPIO_TypeDef, ptr %18, i32 0, i32 5, !dbg !1556
  store volatile i32 %17, ptr %19, align 4, !dbg !1557
  call void @z_stm32_hsem_unlock(i32 noundef 0), !dbg !1558
  ret i32 0, !dbg !1559
}

; Function Attrs: noinline nounwind optnone
define internal i32 @gpio_stm32_pin_interrupt_configure(ptr noundef %0, i8 noundef zeroext %1, i32 noundef %2, i32 noundef %3) #0 !dbg !1560 {
  %5 = alloca ptr, align 4
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store ptr %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1561, metadata !DIExpression()), !dbg !1562
  store i8 %1, ptr %6, align 1
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1563, metadata !DIExpression()), !dbg !1564
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1565, metadata !DIExpression()), !dbg !1566
  store i32 %3, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1567, metadata !DIExpression()), !dbg !1568
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1569, metadata !DIExpression()), !dbg !1570
  %13 = load ptr, ptr %5, align 4, !dbg !1571
  %14 = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 1, !dbg !1572
  %15 = load ptr, ptr %14, align 4, !dbg !1572
  store ptr %15, ptr %9, align 4, !dbg !1570
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1573, metadata !DIExpression()), !dbg !1574
  %16 = load ptr, ptr %5, align 4, !dbg !1575
  %17 = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 4, !dbg !1576
  %18 = load ptr, ptr %17, align 4, !dbg !1576
  store ptr %18, ptr %10, align 4, !dbg !1574
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1577, metadata !DIExpression()), !dbg !1578
  store i32 0, ptr %11, align 4, !dbg !1578
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1579, metadata !DIExpression()), !dbg !1580
  store i32 0, ptr %12, align 4, !dbg !1580
  %19 = load i32, ptr %7, align 4, !dbg !1581
  %20 = icmp eq i32 %19, 2097152, !dbg !1583
  br i1 %20, label %21, label %37, !dbg !1584

21:                                               ; preds = %4
  %22 = load i8, ptr %6, align 1, !dbg !1585
  %23 = zext i8 %22 to i32, !dbg !1585
  %24 = call i32 @gpio_stm32_get_exti_source(i32 noundef %23), !dbg !1588
  %25 = load ptr, ptr %9, align 4, !dbg !1589
  %26 = getelementptr inbounds %struct.gpio_stm32_config, ptr %25, i32 0, i32 2, !dbg !1590
  %27 = load i32, ptr %26, align 4, !dbg !1590
  %28 = icmp eq i32 %24, %27, !dbg !1591
  br i1 %28, label %29, label %36, !dbg !1592

29:                                               ; preds = %21
  %30 = load i8, ptr %6, align 1, !dbg !1593
  %31 = zext i8 %30 to i32, !dbg !1593
  call void @stm32_exti_disable(i32 noundef %31), !dbg !1595
  %32 = load i8, ptr %6, align 1, !dbg !1596
  %33 = zext i8 %32 to i32, !dbg !1596
  call void @stm32_exti_unset_callback(i32 noundef %33), !dbg !1597
  %34 = load i8, ptr %6, align 1, !dbg !1598
  %35 = zext i8 %34 to i32, !dbg !1598
  call void @stm32_exti_trigger(i32 noundef %35, i32 noundef 0), !dbg !1599
  br label %36, !dbg !1600

36:                                               ; preds = %29, %21
  br label %65, !dbg !1601

37:                                               ; preds = %4
  %38 = load i32, ptr %7, align 4, !dbg !1602
  %39 = icmp eq i32 %38, 4194304, !dbg !1604
  br i1 %39, label %40, label %41, !dbg !1605

40:                                               ; preds = %37
  store i32 -134, ptr %12, align 4, !dbg !1606
  br label %65, !dbg !1608

41:                                               ; preds = %37
  %42 = load i8, ptr %6, align 1, !dbg !1609
  %43 = zext i8 %42 to i32, !dbg !1609
  %44 = load ptr, ptr %10, align 4, !dbg !1611
  %45 = call i32 @stm32_exti_set_callback(i32 noundef %43, ptr noundef @gpio_stm32_isr, ptr noundef %44), !dbg !1612
  %46 = icmp ne i32 %45, 0, !dbg !1613
  br i1 %46, label %47, label %48, !dbg !1614

47:                                               ; preds = %41
  store i32 -16, ptr %12, align 4, !dbg !1615
  br label %65, !dbg !1617

48:                                               ; preds = %41
  %49 = load ptr, ptr %9, align 4, !dbg !1618
  %50 = getelementptr inbounds %struct.gpio_stm32_config, ptr %49, i32 0, i32 2, !dbg !1619
  %51 = load i32, ptr %50, align 4, !dbg !1619
  %52 = load i8, ptr %6, align 1, !dbg !1620
  %53 = zext i8 %52 to i32, !dbg !1620
  %54 = call i32 @gpio_stm32_enable_int(i32 noundef %51, i32 noundef %53), !dbg !1621
  %55 = load i32, ptr %8, align 4, !dbg !1622
  switch i32 %55, label %59 [
    i32 33554432, label %56
    i32 67108864, label %57
    i32 100663296, label %58
  ], !dbg !1623

56:                                               ; preds = %48
  store i32 2, ptr %11, align 4, !dbg !1624
  br label %59, !dbg !1626

57:                                               ; preds = %48
  store i32 1, ptr %11, align 4, !dbg !1627
  br label %59, !dbg !1628

58:                                               ; preds = %48
  store i32 3, ptr %11, align 4, !dbg !1629
  br label %59, !dbg !1630

59:                                               ; preds = %48, %58, %57, %56
  %60 = load i8, ptr %6, align 1, !dbg !1631
  %61 = zext i8 %60 to i32, !dbg !1631
  %62 = load i32, ptr %11, align 4, !dbg !1632
  call void @stm32_exti_trigger(i32 noundef %61, i32 noundef %62), !dbg !1633
  %63 = load i8, ptr %6, align 1, !dbg !1634
  %64 = zext i8 %63 to i32, !dbg !1634
  call void @stm32_exti_enable(i32 noundef %64), !dbg !1635
  br label %65, !dbg !1635

65:                                               ; preds = %59, %47, %40, %36
  call void @llvm.dbg.label(metadata !1636), !dbg !1637
  %66 = load i32, ptr %12, align 4, !dbg !1638
  ret i32 %66, !dbg !1639
}

; Function Attrs: noinline nounwind optnone
define internal i32 @gpio_stm32_manage_callback(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) #0 !dbg !1640 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i8, align 1
  %7 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1641, metadata !DIExpression()), !dbg !1642
  store ptr %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1643, metadata !DIExpression()), !dbg !1644
  %8 = zext i1 %2 to i8
  store i8 %8, ptr %6, align 1
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1645, metadata !DIExpression()), !dbg !1646
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1647, metadata !DIExpression()), !dbg !1648
  %9 = load ptr, ptr %4, align 4, !dbg !1649
  %10 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 4, !dbg !1650
  %11 = load ptr, ptr %10, align 4, !dbg !1650
  store ptr %11, ptr %7, align 4, !dbg !1648
  %12 = load ptr, ptr %7, align 4, !dbg !1651
  %13 = getelementptr inbounds %struct.gpio_stm32_data, ptr %12, i32 0, i32 2, !dbg !1652
  %14 = load ptr, ptr %5, align 4, !dbg !1653
  %15 = load i8, ptr %6, align 1, !dbg !1654
  %16 = trunc i8 %15 to i1, !dbg !1654
  %17 = call i32 @gpio_manage_callback(ptr noundef %13, ptr noundef %14, i1 noundef zeroext %16), !dbg !1655
  ret i32 %17, !dbg !1656
}

; Function Attrs: noinline nounwind optnone
define internal i32 @gpio_stm32_flags_to_conf(i32 noundef %0, ptr noundef %1) #0 !dbg !1657 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  store i32 %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1661, metadata !DIExpression()), !dbg !1662
  store ptr %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1663, metadata !DIExpression()), !dbg !1664
  %6 = load i32, ptr %4, align 4, !dbg !1665
  %7 = and i32 %6, 131072, !dbg !1667
  %8 = icmp ne i32 %7, 0, !dbg !1668
  br i1 %8, label %9, label %46, !dbg !1669

9:                                                ; preds = %2
  %10 = load ptr, ptr %5, align 4, !dbg !1670
  store i32 16, ptr %10, align 4, !dbg !1672
  %11 = load i32, ptr %4, align 4, !dbg !1673
  %12 = and i32 %11, 2, !dbg !1675
  %13 = icmp ne i32 %12, 0, !dbg !1676
  br i1 %13, label %14, label %24, !dbg !1677

14:                                               ; preds = %9
  %15 = load i32, ptr %4, align 4, !dbg !1678
  %16 = and i32 %15, 4, !dbg !1681
  %17 = icmp ne i32 %16, 0, !dbg !1681
  br i1 %17, label %18, label %22, !dbg !1682

18:                                               ; preds = %14
  %19 = load ptr, ptr %5, align 4, !dbg !1683
  %20 = load i32, ptr %19, align 4, !dbg !1685
  %21 = or i32 %20, 64, !dbg !1685
  store i32 %21, ptr %19, align 4, !dbg !1685
  br label %23, !dbg !1686

22:                                               ; preds = %14
  store i32 -134, ptr %3, align 4, !dbg !1687
  br label %77, !dbg !1687

23:                                               ; preds = %18
  br label %28, !dbg !1689

24:                                               ; preds = %9
  %25 = load ptr, ptr %5, align 4, !dbg !1690
  %26 = load i32, ptr %25, align 4, !dbg !1692
  %27 = or i32 %26, 0, !dbg !1692
  store i32 %27, ptr %25, align 4, !dbg !1692
  br label %28

28:                                               ; preds = %24, %23
  %29 = load i32, ptr %4, align 4, !dbg !1693
  %30 = and i32 %29, 16, !dbg !1695
  %31 = icmp ne i32 %30, 0, !dbg !1696
  br i1 %31, label %32, label %36, !dbg !1697

32:                                               ; preds = %28
  %33 = load ptr, ptr %5, align 4, !dbg !1698
  %34 = load i32, ptr %33, align 4, !dbg !1700
  %35 = or i32 %34, 512, !dbg !1700
  store i32 %35, ptr %33, align 4, !dbg !1700
  br label %45, !dbg !1701

36:                                               ; preds = %28
  %37 = load i32, ptr %4, align 4, !dbg !1702
  %38 = and i32 %37, 32, !dbg !1704
  %39 = icmp ne i32 %38, 0, !dbg !1705
  br i1 %39, label %40, label %44, !dbg !1706

40:                                               ; preds = %36
  %41 = load ptr, ptr %5, align 4, !dbg !1707
  %42 = load i32, ptr %41, align 4, !dbg !1709
  %43 = or i32 %42, 1024, !dbg !1709
  store i32 %43, ptr %41, align 4, !dbg !1709
  br label %44, !dbg !1710

44:                                               ; preds = %40, %36
  br label %45

45:                                               ; preds = %44, %32
  br label %76, !dbg !1711

46:                                               ; preds = %2
  %47 = load i32, ptr %4, align 4, !dbg !1712
  %48 = and i32 %47, 65536, !dbg !1714
  %49 = icmp ne i32 %48, 0, !dbg !1715
  br i1 %49, label %50, label %73, !dbg !1716

50:                                               ; preds = %46
  %51 = load ptr, ptr %5, align 4, !dbg !1717
  store i32 0, ptr %51, align 4, !dbg !1719
  %52 = load i32, ptr %4, align 4, !dbg !1720
  %53 = and i32 %52, 16, !dbg !1722
  %54 = icmp ne i32 %53, 0, !dbg !1723
  br i1 %54, label %55, label %59, !dbg !1724

55:                                               ; preds = %50
  %56 = load ptr, ptr %5, align 4, !dbg !1725
  %57 = load i32, ptr %56, align 4, !dbg !1727
  %58 = or i32 %57, 512, !dbg !1727
  store i32 %58, ptr %56, align 4, !dbg !1727
  br label %72, !dbg !1728

59:                                               ; preds = %50
  %60 = load i32, ptr %4, align 4, !dbg !1729
  %61 = and i32 %60, 32, !dbg !1731
  %62 = icmp ne i32 %61, 0, !dbg !1732
  br i1 %62, label %63, label %67, !dbg !1733

63:                                               ; preds = %59
  %64 = load ptr, ptr %5, align 4, !dbg !1734
  %65 = load i32, ptr %64, align 4, !dbg !1736
  %66 = or i32 %65, 1024, !dbg !1736
  store i32 %66, ptr %64, align 4, !dbg !1736
  br label %71, !dbg !1737

67:                                               ; preds = %59
  %68 = load ptr, ptr %5, align 4, !dbg !1738
  %69 = load i32, ptr %68, align 4, !dbg !1740
  %70 = or i32 %69, 0, !dbg !1740
  store i32 %70, ptr %68, align 4, !dbg !1740
  br label %71

71:                                               ; preds = %67, %63
  br label %72

72:                                               ; preds = %71, %55
  br label %75, !dbg !1741

73:                                               ; preds = %46
  %74 = load ptr, ptr %5, align 4, !dbg !1742
  store i32 48, ptr %74, align 4, !dbg !1744
  br label %75

75:                                               ; preds = %73, %72
  br label %76

76:                                               ; preds = %75, %45
  store i32 0, ptr %3, align 4, !dbg !1745
  br label %77, !dbg !1745

77:                                               ; preds = %76, %22
  %78 = load i32, ptr %3, align 4, !dbg !1746
  ret i32 %78, !dbg !1746
}

; Function Attrs: noinline nounwind optnone
define internal i32 @LL_GPIO_ReadInputPort(ptr noundef %0) #0 !dbg !1747 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1750, metadata !DIExpression()), !dbg !1751
  %3 = load ptr, ptr %2, align 4, !dbg !1752
  %4 = getelementptr inbounds %struct.GPIO_TypeDef, ptr %3, i32 0, i32 4, !dbg !1753
  %5 = load volatile i32, ptr %4, align 4, !dbg !1753
  ret i32 %5, !dbg !1754
}

; Function Attrs: noinline nounwind optnone
define internal i32 @LL_GPIO_ReadOutputPort(ptr noundef %0) #0 !dbg !1755 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1756, metadata !DIExpression()), !dbg !1757
  %3 = load ptr, ptr %2, align 4, !dbg !1758
  %4 = getelementptr inbounds %struct.GPIO_TypeDef, ptr %3, i32 0, i32 5, !dbg !1759
  %5 = load volatile i32, ptr %4, align 4, !dbg !1759
  ret i32 %5, !dbg !1760
}

; Function Attrs: noinline nounwind optnone
define internal void @LL_GPIO_WriteOutputPort(ptr noundef %0, i32 noundef %1) #0 !dbg !1761 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1762, metadata !DIExpression()), !dbg !1763
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1764, metadata !DIExpression()), !dbg !1765
  %5 = load i32, ptr %4, align 4, !dbg !1766
  %6 = load ptr, ptr %3, align 4, !dbg !1767
  %7 = getelementptr inbounds %struct.GPIO_TypeDef, ptr %6, i32 0, i32 5, !dbg !1768
  store volatile i32 %5, ptr %7, align 4, !dbg !1769
  ret void, !dbg !1770
}

; Function Attrs: noinline nounwind optnone
define internal i32 @gpio_stm32_get_exti_source(i32 noundef %0) #0 !dbg !1771 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1774, metadata !DIExpression()), !dbg !1775
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1776, metadata !DIExpression()), !dbg !1777
  %5 = load i32, ptr %2, align 4, !dbg !1778
  %6 = call i32 @gpio_stm32_pin_to_exti_line(i32 noundef %5), !dbg !1779
  store i32 %6, ptr %3, align 4, !dbg !1777
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1780, metadata !DIExpression()), !dbg !1781
  %7 = load i32, ptr %3, align 4, !dbg !1782
  %8 = call i32 @LL_SYSCFG_GetEXTISource(i32 noundef %7), !dbg !1783
  store i32 %8, ptr %4, align 4, !dbg !1784
  %9 = load i32, ptr %4, align 4, !dbg !1785
  ret i32 %9, !dbg !1786
}

declare void @stm32_exti_disable(i32 noundef) #2

declare void @stm32_exti_unset_callback(i32 noundef) #2

declare void @stm32_exti_trigger(i32 noundef, i32 noundef) #2

declare i32 @stm32_exti_set_callback(i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone
define internal void @gpio_stm32_isr(i32 noundef %0, ptr noundef %1) #0 !dbg !1787 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1790, metadata !DIExpression()), !dbg !1791
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1792, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1794, metadata !DIExpression()), !dbg !1795
  %6 = load ptr, ptr %4, align 4, !dbg !1796
  store ptr %6, ptr %5, align 4, !dbg !1795
  %7 = load ptr, ptr %5, align 4, !dbg !1797
  %8 = getelementptr inbounds %struct.gpio_stm32_data, ptr %7, i32 0, i32 2, !dbg !1798
  %9 = load ptr, ptr %5, align 4, !dbg !1799
  %10 = getelementptr inbounds %struct.gpio_stm32_data, ptr %9, i32 0, i32 1, !dbg !1800
  %11 = load ptr, ptr %10, align 4, !dbg !1800
  %12 = load i32, ptr %3, align 4, !dbg !1801
  %13 = shl i32 1, %12, !dbg !1802
  call void @gpio_fire_callbacks(ptr noundef %8, ptr noundef %11, i32 noundef %13), !dbg !1803
  ret void, !dbg !1804
}

; Function Attrs: noinline nounwind optnone
define internal i32 @gpio_stm32_enable_int(i32 noundef %0, i32 noundef %1) #0 !dbg !1805 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1808, metadata !DIExpression()), !dbg !1809
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1810, metadata !DIExpression()), !dbg !1811
  %5 = load i32, ptr %3, align 4, !dbg !1812
  %6 = load i32, ptr %4, align 4, !dbg !1813
  call void @gpio_stm32_set_exti_source(i32 noundef %5, i32 noundef %6), !dbg !1814
  ret i32 0, !dbg !1815
}

declare void @stm32_exti_enable(i32 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline nounwind optnone
define internal i32 @gpio_stm32_pin_to_exti_line(i32 noundef %0) #0 !dbg !1816 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1817, metadata !DIExpression()), !dbg !1818
  %3 = load i32, ptr %2, align 4, !dbg !1819
  %4 = srem i32 %3, 4, !dbg !1820
  %5 = mul nsw i32 %4, 4, !dbg !1821
  %6 = shl i32 %5, 16, !dbg !1822
  %7 = load i32, ptr %2, align 4, !dbg !1823
  %8 = sdiv i32 %7, 4, !dbg !1824
  %9 = or i32 %6, %8, !dbg !1825
  ret i32 %9, !dbg !1826
}

; Function Attrs: noinline nounwind optnone
define internal i32 @LL_SYSCFG_GetEXTISource(i32 noundef %0) #0 !dbg !1827 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1831, metadata !DIExpression()), !dbg !1832
  %3 = load i32, ptr %2, align 4, !dbg !1833
  %4 = and i32 %3, 255, !dbg !1834
  %5 = getelementptr inbounds [4 x i32], ptr getelementptr inbounds (%struct.SYSCFG_TypeDef, ptr inttoptr (i32 1073807360 to ptr), i32 0, i32 2), i32 0, i32 %4, !dbg !1835
  %6 = load volatile i32, ptr %5, align 4, !dbg !1835
  %7 = load i32, ptr %2, align 4, !dbg !1836
  %8 = lshr i32 %7, 16, !dbg !1837
  %9 = shl i32 15, %8, !dbg !1838
  %10 = and i32 %6, %9, !dbg !1839
  %11 = load i32, ptr %2, align 4, !dbg !1840
  %12 = lshr i32 %11, 16, !dbg !1841
  %13 = lshr i32 %10, %12, !dbg !1842
  ret i32 %13, !dbg !1843
}

; Function Attrs: noinline nounwind optnone
define internal void @gpio_fire_callbacks(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 !dbg !1844 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  %11 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1849, metadata !DIExpression()), !dbg !1850
  store ptr %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1851, metadata !DIExpression()), !dbg !1852
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1853, metadata !DIExpression()), !dbg !1854
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1855, metadata !DIExpression()), !dbg !1856
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1857, metadata !DIExpression()), !dbg !1858
  %12 = load ptr, ptr %4, align 4, !dbg !1859
  %13 = call ptr @sys_slist_peek_head(ptr noundef %12), !dbg !1861
  %14 = icmp ne ptr %13, null, !dbg !1861
  br i1 %14, label %15, label %20, !dbg !1862

15:                                               ; preds = %3
  %16 = load ptr, ptr %4, align 4, !dbg !1863
  %17 = call ptr @sys_slist_peek_head(ptr noundef %16), !dbg !1865
  %18 = getelementptr inbounds i8, ptr %17, i32 0, !dbg !1866
  store ptr %18, ptr %9, align 4, !dbg !1867
  %19 = load ptr, ptr %9, align 4, !dbg !1868
  br label %21, !dbg !1862

20:                                               ; preds = %3
  br label %21, !dbg !1862

21:                                               ; preds = %20, %15
  %22 = phi ptr [ %19, %15 ], [ null, %20 ], !dbg !1862
  store ptr %22, ptr %7, align 4, !dbg !1869
  %23 = load ptr, ptr %7, align 4, !dbg !1870
  %24 = icmp ne ptr %23, null, !dbg !1871
  br i1 %24, label %25, label %39, !dbg !1871

25:                                               ; preds = %21
  %26 = load ptr, ptr %7, align 4, !dbg !1872
  %27 = getelementptr inbounds %struct.gpio_callback, ptr %26, i32 0, i32 0, !dbg !1873
  %28 = call ptr @sys_slist_peek_next(ptr noundef %27), !dbg !1874
  %29 = icmp ne ptr %28, null, !dbg !1874
  br i1 %29, label %30, label %36, !dbg !1875

30:                                               ; preds = %25
  %31 = load ptr, ptr %7, align 4, !dbg !1876
  %32 = getelementptr inbounds %struct.gpio_callback, ptr %31, i32 0, i32 0, !dbg !1878
  %33 = call ptr @sys_slist_peek_next(ptr noundef %32), !dbg !1879
  %34 = getelementptr inbounds i8, ptr %33, i32 0, !dbg !1880
  store ptr %34, ptr %10, align 4, !dbg !1881
  %35 = load ptr, ptr %10, align 4, !dbg !1882
  br label %37, !dbg !1875

36:                                               ; preds = %25
  br label %37, !dbg !1875

37:                                               ; preds = %36, %30
  %38 = phi ptr [ %35, %30 ], [ null, %36 ], !dbg !1875
  br label %40, !dbg !1871

39:                                               ; preds = %21
  br label %40, !dbg !1871

40:                                               ; preds = %39, %37
  %41 = phi ptr [ %38, %37 ], [ null, %39 ], !dbg !1871
  store ptr %41, ptr %8, align 4, !dbg !1883
  br label %42, !dbg !1884

42:                                               ; preds = %83, %40
  %43 = load ptr, ptr %7, align 4, !dbg !1885
  %44 = icmp ne ptr %43, null, !dbg !1887
  br i1 %44, label %45, label %85, !dbg !1888

45:                                               ; preds = %42
  %46 = load ptr, ptr %7, align 4, !dbg !1889
  %47 = getelementptr inbounds %struct.gpio_callback, ptr %46, i32 0, i32 2, !dbg !1892
  %48 = load i32, ptr %47, align 4, !dbg !1892
  %49 = load i32, ptr %6, align 4, !dbg !1893
  %50 = and i32 %48, %49, !dbg !1894
  %51 = icmp ne i32 %50, 0, !dbg !1894
  br i1 %51, label %52, label %63, !dbg !1895

52:                                               ; preds = %45
  %53 = load ptr, ptr %7, align 4, !dbg !1896
  %54 = getelementptr inbounds %struct.gpio_callback, ptr %53, i32 0, i32 1, !dbg !1898
  %55 = load ptr, ptr %54, align 4, !dbg !1898
  %56 = load ptr, ptr %5, align 4, !dbg !1899
  %57 = load ptr, ptr %7, align 4, !dbg !1900
  %58 = load ptr, ptr %7, align 4, !dbg !1901
  %59 = getelementptr inbounds %struct.gpio_callback, ptr %58, i32 0, i32 2, !dbg !1902
  %60 = load i32, ptr %59, align 4, !dbg !1902
  %61 = load i32, ptr %6, align 4, !dbg !1903
  %62 = and i32 %60, %61, !dbg !1904
  call void %55(ptr noundef %56, ptr noundef %57, i32 noundef %62), !dbg !1896
  br label %63, !dbg !1905

63:                                               ; preds = %52, %45
  br label %64, !dbg !1906

64:                                               ; preds = %63
  %65 = load ptr, ptr %8, align 4, !dbg !1907
  store ptr %65, ptr %7, align 4, !dbg !1908
  %66 = load ptr, ptr %7, align 4, !dbg !1909
  %67 = icmp ne ptr %66, null, !dbg !1910
  br i1 %67, label %68, label %82, !dbg !1910

68:                                               ; preds = %64
  %69 = load ptr, ptr %7, align 4, !dbg !1911
  %70 = getelementptr inbounds %struct.gpio_callback, ptr %69, i32 0, i32 0, !dbg !1912
  %71 = call ptr @sys_slist_peek_next(ptr noundef %70), !dbg !1913
  %72 = icmp ne ptr %71, null, !dbg !1913
  br i1 %72, label %73, label %79, !dbg !1914

73:                                               ; preds = %68
  %74 = load ptr, ptr %7, align 4, !dbg !1915
  %75 = getelementptr inbounds %struct.gpio_callback, ptr %74, i32 0, i32 0, !dbg !1917
  %76 = call ptr @sys_slist_peek_next(ptr noundef %75), !dbg !1918
  %77 = getelementptr inbounds i8, ptr %76, i32 0, !dbg !1919
  store ptr %77, ptr %11, align 4, !dbg !1920
  %78 = load ptr, ptr %11, align 4, !dbg !1921
  br label %80, !dbg !1914

79:                                               ; preds = %68
  br label %80, !dbg !1914

80:                                               ; preds = %79, %73
  %81 = phi ptr [ %78, %73 ], [ null, %79 ], !dbg !1914
  br label %83, !dbg !1910

82:                                               ; preds = %64
  br label %83, !dbg !1910

83:                                               ; preds = %82, %80
  %84 = phi ptr [ %81, %80 ], [ null, %82 ], !dbg !1910
  store ptr %84, ptr %8, align 4, !dbg !1922
  br label %42, !dbg !1923, !llvm.loop !1924

85:                                               ; preds = %42
  ret void, !dbg !1926
}

; Function Attrs: noinline nounwind optnone
define internal ptr @sys_slist_peek_head(ptr noundef %0) #0 !dbg !1927 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1930, metadata !DIExpression()), !dbg !1931
  %3 = load ptr, ptr %2, align 4, !dbg !1932
  %4 = getelementptr inbounds %struct._slist, ptr %3, i32 0, i32 0, !dbg !1933
  %5 = load ptr, ptr %4, align 4, !dbg !1933
  ret ptr %5, !dbg !1934
}

; Function Attrs: noinline nounwind optnone
define internal ptr @sys_slist_peek_next(ptr noundef %0) #0 !dbg !1935 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1938, metadata !DIExpression()), !dbg !1939
  %3 = load ptr, ptr %2, align 4, !dbg !1940
  %4 = icmp ne ptr %3, null, !dbg !1941
  br i1 %4, label %5, label %8, !dbg !1940

5:                                                ; preds = %1
  %6 = load ptr, ptr %2, align 4, !dbg !1942
  %7 = call ptr @sys_slist_peek_next_no_check(ptr noundef %6), !dbg !1943
  br label %9, !dbg !1940

8:                                                ; preds = %1
  br label %9, !dbg !1940

9:                                                ; preds = %8, %5
  %10 = phi ptr [ %7, %5 ], [ null, %8 ], !dbg !1940
  ret ptr %10, !dbg !1944
}

; Function Attrs: noinline nounwind optnone
define internal ptr @sys_slist_peek_next_no_check(ptr noundef %0) #0 !dbg !1945 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1946, metadata !DIExpression()), !dbg !1947
  %3 = load ptr, ptr %2, align 4, !dbg !1948
  %4 = call ptr @z_snode_next_peek(ptr noundef %3), !dbg !1949
  ret ptr %4, !dbg !1950
}

; Function Attrs: noinline nounwind optnone
define internal ptr @z_snode_next_peek(ptr noundef %0) #0 !dbg !1951 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1952, metadata !DIExpression()), !dbg !1953
  %3 = load ptr, ptr %2, align 4, !dbg !1954
  %4 = getelementptr inbounds %struct._snode, ptr %3, i32 0, i32 0, !dbg !1955
  %5 = load ptr, ptr %4, align 4, !dbg !1955
  ret ptr %5, !dbg !1956
}

; Function Attrs: noinline nounwind optnone
define internal void @gpio_stm32_set_exti_source(i32 noundef %0, i32 noundef %1) #0 !dbg !1957 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1960, metadata !DIExpression()), !dbg !1961
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1962, metadata !DIExpression()), !dbg !1963
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1964, metadata !DIExpression()), !dbg !1965
  %6 = load i32, ptr %4, align 4, !dbg !1966
  %7 = call i32 @gpio_stm32_pin_to_exti_line(i32 noundef %6), !dbg !1967
  store i32 %7, ptr %5, align 4, !dbg !1965
  call void @z_stm32_hsem_lock(i32 noundef 0, i32 noundef 1048576), !dbg !1968
  %8 = load i32, ptr %3, align 4, !dbg !1969
  %9 = load i32, ptr %5, align 4, !dbg !1970
  call void @LL_SYSCFG_SetEXTISource(i32 noundef %8, i32 noundef %9), !dbg !1971
  call void @z_stm32_hsem_unlock(i32 noundef 0), !dbg !1972
  ret void, !dbg !1973
}

; Function Attrs: noinline nounwind optnone
define internal void @LL_SYSCFG_SetEXTISource(i32 noundef %0, i32 noundef %1) #0 !dbg !1974 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1975, metadata !DIExpression()), !dbg !1976
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1977, metadata !DIExpression()), !dbg !1978
  %5 = load i32, ptr %4, align 4, !dbg !1979
  %6 = and i32 %5, 255, !dbg !1980
  %7 = getelementptr inbounds [4 x i32], ptr getelementptr inbounds (%struct.SYSCFG_TypeDef, ptr inttoptr (i32 1073807360 to ptr), i32 0, i32 2), i32 0, i32 %6, !dbg !1981
  %8 = load volatile i32, ptr %7, align 4, !dbg !1981
  %9 = load i32, ptr %4, align 4, !dbg !1982
  %10 = lshr i32 %9, 16, !dbg !1983
  %11 = shl i32 15, %10, !dbg !1984
  %12 = xor i32 %11, -1, !dbg !1985
  %13 = and i32 %8, %12, !dbg !1986
  %14 = load i32, ptr %3, align 4, !dbg !1987
  %15 = load i32, ptr %4, align 4, !dbg !1988
  %16 = lshr i32 %15, 16, !dbg !1989
  %17 = shl i32 %14, %16, !dbg !1990
  %18 = or i32 %13, %17, !dbg !1991
  %19 = load i32, ptr %4, align 4, !dbg !1992
  %20 = and i32 %19, 255, !dbg !1993
  %21 = getelementptr inbounds [4 x i32], ptr getelementptr inbounds (%struct.SYSCFG_TypeDef, ptr inttoptr (i32 1073807360 to ptr), i32 0, i32 2), i32 0, i32 %20, !dbg !1994
  store volatile i32 %18, ptr %21, align 4, !dbg !1995
  ret void, !dbg !1996
}

; Function Attrs: noinline nounwind optnone
define internal i32 @gpio_manage_callback(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) #0 !dbg !1997 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i8, align 1
  store ptr %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2000, metadata !DIExpression()), !dbg !2001
  store ptr %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2002, metadata !DIExpression()), !dbg !2003
  %8 = zext i1 %2 to i8
  store i8 %8, ptr %7, align 1
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2004, metadata !DIExpression()), !dbg !2005
  %9 = load ptr, ptr %5, align 4, !dbg !2006
  %10 = call zeroext i1 @sys_slist_is_empty(ptr noundef %9), !dbg !2008
  br i1 %10, label %22, label %11, !dbg !2009

11:                                               ; preds = %3
  %12 = load ptr, ptr %5, align 4, !dbg !2010
  %13 = load ptr, ptr %6, align 4, !dbg !2013
  %14 = getelementptr inbounds %struct.gpio_callback, ptr %13, i32 0, i32 0, !dbg !2014
  %15 = call zeroext i1 @sys_slist_find_and_remove(ptr noundef %12, ptr noundef %14), !dbg !2015
  br i1 %15, label %21, label %16, !dbg !2016

16:                                               ; preds = %11
  %17 = load i8, ptr %7, align 1, !dbg !2017
  %18 = trunc i8 %17 to i1, !dbg !2017
  br i1 %18, label %20, label %19, !dbg !2020

19:                                               ; preds = %16
  store i32 -5, ptr %4, align 4, !dbg !2021
  br label %35, !dbg !2021

20:                                               ; preds = %16
  br label %21, !dbg !2023

21:                                               ; preds = %20, %11
  br label %27, !dbg !2024

22:                                               ; preds = %3
  %23 = load i8, ptr %7, align 1, !dbg !2025
  %24 = trunc i8 %23 to i1, !dbg !2025
  br i1 %24, label %26, label %25, !dbg !2027

25:                                               ; preds = %22
  store i32 -5, ptr %4, align 4, !dbg !2028
  br label %35, !dbg !2028

26:                                               ; preds = %22
  br label %27

27:                                               ; preds = %26, %21
  %28 = load i8, ptr %7, align 1, !dbg !2030
  %29 = trunc i8 %28 to i1, !dbg !2030
  br i1 %29, label %30, label %34, !dbg !2032

30:                                               ; preds = %27
  %31 = load ptr, ptr %5, align 4, !dbg !2033
  %32 = load ptr, ptr %6, align 4, !dbg !2035
  %33 = getelementptr inbounds %struct.gpio_callback, ptr %32, i32 0, i32 0, !dbg !2036
  call void @sys_slist_prepend(ptr noundef %31, ptr noundef %33), !dbg !2037
  br label %34, !dbg !2038

34:                                               ; preds = %30, %27
  store i32 0, ptr %4, align 4, !dbg !2039
  br label %35, !dbg !2039

35:                                               ; preds = %34, %25, %19
  %36 = load i32, ptr %4, align 4, !dbg !2040
  ret i32 %36, !dbg !2040
}

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @sys_slist_is_empty(ptr noundef %0) #0 !dbg !2041 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2044, metadata !DIExpression()), !dbg !2045
  %3 = load ptr, ptr %2, align 4, !dbg !2046
  %4 = call ptr @sys_slist_peek_head(ptr noundef %3), !dbg !2047
  %5 = icmp eq ptr %4, null, !dbg !2048
  ret i1 %5, !dbg !2049
}

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @sys_slist_find_and_remove(ptr noundef %0, ptr noundef %1) #0 !dbg !2050 {
  %3 = alloca i1, align 1
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2053, metadata !DIExpression()), !dbg !2054
  store ptr %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2055, metadata !DIExpression()), !dbg !2056
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2057, metadata !DIExpression()), !dbg !2058
  store ptr null, ptr %6, align 4, !dbg !2058
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2059, metadata !DIExpression()), !dbg !2060
  %8 = load ptr, ptr %4, align 4, !dbg !2061
  %9 = call ptr @sys_slist_peek_head(ptr noundef %8), !dbg !2063
  store ptr %9, ptr %7, align 4, !dbg !2064
  br label %10, !dbg !2065

10:                                               ; preds = %23, %2
  %11 = load ptr, ptr %7, align 4, !dbg !2066
  %12 = icmp ne ptr %11, null, !dbg !2068
  br i1 %12, label %13, label %26, !dbg !2069

13:                                               ; preds = %10
  %14 = load ptr, ptr %7, align 4, !dbg !2070
  %15 = load ptr, ptr %5, align 4, !dbg !2073
  %16 = icmp eq ptr %14, %15, !dbg !2074
  br i1 %16, label %17, label %21, !dbg !2075

17:                                               ; preds = %13
  %18 = load ptr, ptr %4, align 4, !dbg !2076
  %19 = load ptr, ptr %6, align 4, !dbg !2078
  %20 = load ptr, ptr %5, align 4, !dbg !2079
  call void @sys_slist_remove(ptr noundef %18, ptr noundef %19, ptr noundef %20), !dbg !2080
  store i1 true, ptr %3, align 1, !dbg !2081
  br label %27, !dbg !2081

21:                                               ; preds = %13
  %22 = load ptr, ptr %7, align 4, !dbg !2082
  store ptr %22, ptr %6, align 4, !dbg !2083
  br label %23, !dbg !2084

23:                                               ; preds = %21
  %24 = load ptr, ptr %7, align 4, !dbg !2085
  %25 = call ptr @sys_slist_peek_next(ptr noundef %24), !dbg !2086
  store ptr %25, ptr %7, align 4, !dbg !2087
  br label %10, !dbg !2088, !llvm.loop !2089

26:                                               ; preds = %10
  store i1 false, ptr %3, align 1, !dbg !2091
  br label %27, !dbg !2091

27:                                               ; preds = %26, %17
  %28 = load i1, ptr %3, align 1, !dbg !2092
  ret i1 %28, !dbg !2092
}

; Function Attrs: noinline nounwind optnone
define internal void @sys_slist_prepend(ptr noundef %0, ptr noundef %1) #0 !dbg !2093 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2096, metadata !DIExpression()), !dbg !2097
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2098, metadata !DIExpression()), !dbg !2099
  %5 = load ptr, ptr %4, align 4, !dbg !2100
  %6 = load ptr, ptr %3, align 4, !dbg !2101
  %7 = call ptr @sys_slist_peek_head(ptr noundef %6), !dbg !2102
  call void @z_snode_next_set(ptr noundef %5, ptr noundef %7), !dbg !2103
  %8 = load ptr, ptr %3, align 4, !dbg !2104
  %9 = load ptr, ptr %4, align 4, !dbg !2105
  call void @z_slist_head_set(ptr noundef %8, ptr noundef %9), !dbg !2106
  %10 = load ptr, ptr %3, align 4, !dbg !2107
  %11 = call ptr @sys_slist_peek_tail(ptr noundef %10), !dbg !2109
  %12 = icmp eq ptr %11, null, !dbg !2110
  br i1 %12, label %13, label %17, !dbg !2111

13:                                               ; preds = %2
  %14 = load ptr, ptr %3, align 4, !dbg !2112
  %15 = load ptr, ptr %3, align 4, !dbg !2114
  %16 = call ptr @sys_slist_peek_head(ptr noundef %15), !dbg !2115
  call void @z_slist_tail_set(ptr noundef %14, ptr noundef %16), !dbg !2116
  br label %17, !dbg !2117

17:                                               ; preds = %13, %2
  ret void, !dbg !2118
}

; Function Attrs: noinline nounwind optnone
define internal void @sys_slist_remove(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !2119 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2122, metadata !DIExpression()), !dbg !2123
  store ptr %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2124, metadata !DIExpression()), !dbg !2125
  store ptr %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2126, metadata !DIExpression()), !dbg !2127
  %7 = load ptr, ptr %5, align 4, !dbg !2128
  %8 = icmp eq ptr %7, null, !dbg !2130
  br i1 %8, label %9, label %22, !dbg !2131

9:                                                ; preds = %3
  %10 = load ptr, ptr %4, align 4, !dbg !2132
  %11 = load ptr, ptr %6, align 4, !dbg !2134
  %12 = call ptr @z_snode_next_peek(ptr noundef %11), !dbg !2135
  call void @z_slist_head_set(ptr noundef %10, ptr noundef %12), !dbg !2136
  %13 = load ptr, ptr %4, align 4, !dbg !2137
  %14 = call ptr @sys_slist_peek_tail(ptr noundef %13), !dbg !2139
  %15 = load ptr, ptr %6, align 4, !dbg !2140
  %16 = icmp eq ptr %14, %15, !dbg !2141
  br i1 %16, label %17, label %21, !dbg !2142

17:                                               ; preds = %9
  %18 = load ptr, ptr %4, align 4, !dbg !2143
  %19 = load ptr, ptr %4, align 4, !dbg !2145
  %20 = call ptr @sys_slist_peek_head(ptr noundef %19), !dbg !2146
  call void @z_slist_tail_set(ptr noundef %18, ptr noundef %20), !dbg !2147
  br label %21, !dbg !2148

21:                                               ; preds = %17, %9
  br label %34, !dbg !2149

22:                                               ; preds = %3
  %23 = load ptr, ptr %5, align 4, !dbg !2150
  %24 = load ptr, ptr %6, align 4, !dbg !2152
  %25 = call ptr @z_snode_next_peek(ptr noundef %24), !dbg !2153
  call void @z_snode_next_set(ptr noundef %23, ptr noundef %25), !dbg !2154
  %26 = load ptr, ptr %4, align 4, !dbg !2155
  %27 = call ptr @sys_slist_peek_tail(ptr noundef %26), !dbg !2157
  %28 = load ptr, ptr %6, align 4, !dbg !2158
  %29 = icmp eq ptr %27, %28, !dbg !2159
  br i1 %29, label %30, label %33, !dbg !2160

30:                                               ; preds = %22
  %31 = load ptr, ptr %4, align 4, !dbg !2161
  %32 = load ptr, ptr %5, align 4, !dbg !2163
  call void @z_slist_tail_set(ptr noundef %31, ptr noundef %32), !dbg !2164
  br label %33, !dbg !2165

33:                                               ; preds = %30, %22
  br label %34

34:                                               ; preds = %33, %21
  %35 = load ptr, ptr %6, align 4, !dbg !2166
  call void @z_snode_next_set(ptr noundef %35, ptr noundef null), !dbg !2167
  ret void, !dbg !2168
}

; Function Attrs: noinline nounwind optnone
define internal void @z_slist_head_set(ptr noundef %0, ptr noundef %1) #0 !dbg !2169 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2170, metadata !DIExpression()), !dbg !2171
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2172, metadata !DIExpression()), !dbg !2173
  %5 = load ptr, ptr %4, align 4, !dbg !2174
  %6 = load ptr, ptr %3, align 4, !dbg !2175
  %7 = getelementptr inbounds %struct._slist, ptr %6, i32 0, i32 0, !dbg !2176
  store ptr %5, ptr %7, align 4, !dbg !2177
  ret void, !dbg !2178
}

; Function Attrs: noinline nounwind optnone
define internal ptr @sys_slist_peek_tail(ptr noundef %0) #0 !dbg !2179 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2180, metadata !DIExpression()), !dbg !2181
  %3 = load ptr, ptr %2, align 4, !dbg !2182
  %4 = getelementptr inbounds %struct._slist, ptr %3, i32 0, i32 1, !dbg !2183
  %5 = load ptr, ptr %4, align 4, !dbg !2183
  ret ptr %5, !dbg !2184
}

; Function Attrs: noinline nounwind optnone
define internal void @z_slist_tail_set(ptr noundef %0, ptr noundef %1) #0 !dbg !2185 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2186, metadata !DIExpression()), !dbg !2187
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2188, metadata !DIExpression()), !dbg !2189
  %5 = load ptr, ptr %4, align 4, !dbg !2190
  %6 = load ptr, ptr %3, align 4, !dbg !2191
  %7 = getelementptr inbounds %struct._slist, ptr %6, i32 0, i32 1, !dbg !2192
  store ptr %5, ptr %7, align 4, !dbg !2193
  ret void, !dbg !2194
}

; Function Attrs: noinline nounwind optnone
define internal void @z_snode_next_set(ptr noundef %0, ptr noundef %1) #0 !dbg !2195 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2198, metadata !DIExpression()), !dbg !2199
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2200, metadata !DIExpression()), !dbg !2201
  %5 = load ptr, ptr %4, align 4, !dbg !2202
  %6 = load ptr, ptr %3, align 4, !dbg !2203
  %7 = getelementptr inbounds %struct._snode, ptr %6, i32 0, i32 0, !dbg !2204
  store ptr %5, ptr %7, align 4, !dbg !2205
  ret void, !dbg !2206
}

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @device_is_ready(ptr noundef %0) #0 !dbg !2207 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2209, metadata !DIExpression()), !dbg !2210
  br label %3, !dbg !2211

3:                                                ; preds = %1
  call void asm sideeffect "", "~{memory}"() #3, !dbg !2212, !srcloc !2214
  br label %4, !dbg !2215

4:                                                ; preds = %3
  %5 = load ptr, ptr %2, align 4, !dbg !2216
  %6 = call zeroext i1 @z_impl_device_is_ready(ptr noundef %5), !dbg !2217
  ret i1 %6, !dbg !2218
}

; Function Attrs: noinline nounwind optnone
define internal i32 @gpio_stm32_clock_request(ptr noundef %0, i1 noundef zeroext %1) #0 !dbg !2219 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i8, align 1
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2222, metadata !DIExpression()), !dbg !2223
  %9 = zext i1 %1 to i8
  store i8 %9, ptr %5, align 1
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2224, metadata !DIExpression()), !dbg !2225
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2226, metadata !DIExpression()), !dbg !2227
  %10 = load ptr, ptr %4, align 4, !dbg !2228
  %11 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 1, !dbg !2229
  %12 = load ptr, ptr %11, align 4, !dbg !2229
  store ptr %12, ptr %6, align 4, !dbg !2227
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2230, metadata !DIExpression()), !dbg !2231
  store i32 0, ptr %7, align 4, !dbg !2231
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2232, metadata !DIExpression()), !dbg !2234
  store ptr @__device_dts_ord_9, ptr %8, align 4, !dbg !2234
  %13 = load i8, ptr %5, align 1, !dbg !2235
  %14 = trunc i8 %13 to i1, !dbg !2235
  br i1 %14, label %15, label %19, !dbg !2237

15:                                               ; preds = %2
  %16 = load ptr, ptr %6, align 4, !dbg !2238
  %17 = getelementptr inbounds %struct.gpio_stm32_config, ptr %16, i32 0, i32 3, !dbg !2240
  %18 = call i32 @clock_control_on(ptr noundef @__device_dts_ord_9, ptr noundef %17), !dbg !2241
  store i32 %18, ptr %7, align 4, !dbg !2242
  br label %23, !dbg !2243

19:                                               ; preds = %2
  %20 = load ptr, ptr %6, align 4, !dbg !2244
  %21 = getelementptr inbounds %struct.gpio_stm32_config, ptr %20, i32 0, i32 3, !dbg !2246
  %22 = call i32 @clock_control_off(ptr noundef @__device_dts_ord_9, ptr noundef %21), !dbg !2247
  store i32 %22, ptr %7, align 4, !dbg !2248
  br label %23

23:                                               ; preds = %19, %15
  %24 = load i32, ptr %7, align 4, !dbg !2249
  %25 = icmp ne i32 %24, 0, !dbg !2251
  br i1 %25, label %26, label %28, !dbg !2252

26:                                               ; preds = %23
  %27 = load i32, ptr %7, align 4, !dbg !2253
  store i32 %27, ptr %3, align 4, !dbg !2255
  br label %30, !dbg !2255

28:                                               ; preds = %23
  %29 = load i32, ptr %7, align 4, !dbg !2256
  store i32 %29, ptr %3, align 4, !dbg !2257
  br label %30, !dbg !2257

30:                                               ; preds = %28, %26
  %31 = load i32, ptr %3, align 4, !dbg !2258
  ret i32 %31, !dbg !2258
}

; Function Attrs: noinline nounwind optnone
define internal void @pm_device_init_suspended(ptr noundef %0) #0 !dbg !2259 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2263, metadata !DIExpression()), !dbg !2264
  %3 = load ptr, ptr %2, align 4, !dbg !2265
  ret void, !dbg !2266
}

; Function Attrs: noinline nounwind optnone
define internal i32 @pm_device_runtime_enable(ptr noundef %0) #0 !dbg !2267 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2268, metadata !DIExpression()), !dbg !2269
  %3 = load ptr, ptr %2, align 4, !dbg !2270
  ret i32 0, !dbg !2271
}

; Function Attrs: noinline nounwind optnone
define internal i32 @clock_control_on(ptr noundef %0, ptr noundef %1) #0 !dbg !2272 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2273, metadata !DIExpression()), !dbg !2274
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2275, metadata !DIExpression()), !dbg !2276
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2277, metadata !DIExpression()), !dbg !2278
  %6 = load ptr, ptr %3, align 4, !dbg !2279
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 2, !dbg !2280
  %8 = load ptr, ptr %7, align 4, !dbg !2280
  store ptr %8, ptr %5, align 4, !dbg !2278
  %9 = load ptr, ptr %5, align 4, !dbg !2281
  %10 = getelementptr inbounds %struct.clock_control_driver_api, ptr %9, i32 0, i32 0, !dbg !2282
  %11 = load ptr, ptr %10, align 4, !dbg !2282
  %12 = load ptr, ptr %3, align 4, !dbg !2283
  %13 = load ptr, ptr %4, align 4, !dbg !2284
  %14 = call i32 %11(ptr noundef %12, ptr noundef %13), !dbg !2281
  ret i32 %14, !dbg !2285
}

; Function Attrs: noinline nounwind optnone
define internal i32 @clock_control_off(ptr noundef %0, ptr noundef %1) #0 !dbg !2286 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2287, metadata !DIExpression()), !dbg !2288
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2289, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2291, metadata !DIExpression()), !dbg !2292
  %6 = load ptr, ptr %3, align 4, !dbg !2293
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 2, !dbg !2294
  %8 = load ptr, ptr %7, align 4, !dbg !2294
  store ptr %8, ptr %5, align 4, !dbg !2292
  %9 = load ptr, ptr %5, align 4, !dbg !2295
  %10 = getelementptr inbounds %struct.clock_control_driver_api, ptr %9, i32 0, i32 1, !dbg !2296
  %11 = load ptr, ptr %10, align 4, !dbg !2296
  %12 = load ptr, ptr %3, align 4, !dbg !2297
  %13 = load ptr, ptr %4, align 4, !dbg !2298
  %14 = call i32 %11(ptr noundef %12, ptr noundef %13), !dbg !2295
  ret i32 %14, !dbg !2299
}

attributes #0 = { noinline nounwind optnone "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!405, !406, !407, !408, !409, !410, !411, !412}
!llvm.ident = !{!413}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 757, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "drivers/gpio/gpio_stm32.c", directory: "/home/sri/zephyrproject/zephyr")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 14)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "gpio_stm32_cfg_a", scope: !9, file: !2, line: 757, type: !385, isLocal: true, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C99, file: !10, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, retainedTypes: !121, globals: !294, splitDebugInlining: false, nameTableKind: None)
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
!411 = !{i32 8, !"PIC Level", i32 2}
!412 = !{i32 7, !"PIE Level", i32 2}
!413 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
!414 = distinct !DISubprogram(name: "z_impl_k_object_access_grant", scope: !13, file: !13, line: 223, type: !415, scopeLine: 225, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !524)
!415 = !DISubroutineType(types: !416)
!416 = !{null, !141, !417}
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 32)
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_thread", file: !419, line: 250, size: 896, elements: !420)
!419 = !DIFile(filename: "include/zephyr/kernel/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!420 = !{!421, !488, !501, !502, !503, !504, !525}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !418, file: !419, line: 252, baseType: !422, size: 384)
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_base", file: !419, line: 58, size: 384, elements: !423)
!423 = !{!424, !450, !458, !459, !460, !473, !474, !475}
!424 = !DIDerivedType(tag: DW_TAG_member, scope: !422, file: !419, line: 61, baseType: !425, size: 64)
!425 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !422, file: !419, line: 61, size: 64, elements: !426)
!426 = !{!427, !443}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_dlist", scope: !425, file: !419, line: 62, baseType: !428, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dnode_t", file: !429, line: 55, baseType: !430)
!429 = !DIFile(filename: "include/zephyr/sys/dlist.h", directory: "/home/sri/zephyrproject/zephyr")
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_dnode", file: !429, line: 37, size: 64, elements: !431)
!431 = !{!432, !438}
!432 = !DIDerivedType(tag: DW_TAG_member, scope: !430, file: !429, line: 38, baseType: !433, size: 32)
!433 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !430, file: !429, line: 38, size: 32, elements: !434)
!434 = !{!435, !437}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !433, file: !429, line: 39, baseType: !436, size: 32)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 32)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !433, file: !429, line: 40, baseType: !436, size: 32)
!438 = !DIDerivedType(tag: DW_TAG_member, scope: !430, file: !429, line: 42, baseType: !439, size: 32, offset: 32)
!439 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !430, file: !429, line: 42, size: 32, elements: !440)
!440 = !{!441, !442}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !439, file: !429, line: 43, baseType: !436, size: 32)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !439, file: !429, line: 44, baseType: !436, size: 32)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_rb", scope: !425, file: !419, line: 63, baseType: !444, size: 64)
!444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rbnode", file: !445, line: 58, size: 64, elements: !446)
!445 = !DIFile(filename: "include/zephyr/sys/rb.h", directory: "/home/sri/zephyrproject/zephyr")
!446 = !{!447}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !444, file: !445, line: 60, baseType: !448, size: 64)
!448 = !DICompositeType(tag: DW_TAG_array_type, baseType: !449, size: 64, elements: !229)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 32)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "pended_on", scope: !422, file: !419, line: 69, baseType: !451, size: 32, offset: 64)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 32)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "_wait_q_t", file: !453, line: 243, baseType: !454)
!453 = !DIFile(filename: "include/zephyr/kernel_structs.h", directory: "/home/sri/zephyrproject/zephyr")
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !453, line: 241, size: 64, elements: !455)
!455 = !{!456}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !454, file: !453, line: 242, baseType: !457, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dlist_t", file: !429, line: 51, baseType: !430)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "user_options", scope: !422, file: !419, line: 72, baseType: !149, size: 8, offset: 96)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "thread_state", scope: !422, file: !419, line: 75, baseType: !149, size: 8, offset: 104)
!460 = !DIDerivedType(tag: DW_TAG_member, scope: !422, file: !419, line: 91, baseType: !461, size: 16, offset: 112)
!461 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !422, file: !419, line: 91, size: 16, elements: !462)
!462 = !{!463, !470}
!463 = !DIDerivedType(tag: DW_TAG_member, scope: !461, file: !419, line: 92, baseType: !464, size: 16)
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !461, file: !419, line: 92, size: 16, elements: !465)
!465 = !{!466, !469}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !464, file: !419, line: 97, baseType: !467, size: 8)
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !150, line: 56, baseType: !468)
!468 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "sched_locked", scope: !464, file: !419, line: 98, baseType: !149, size: 8, offset: 8)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "preempt", scope: !461, file: !419, line: 101, baseType: !471, size: 16)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !150, line: 63, baseType: !472)
!472 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "order_key", scope: !422, file: !419, line: 108, baseType: !156, size: 32, offset: 128)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "swap_data", scope: !422, file: !419, line: 132, baseType: !122, size: 32, offset: 160)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !422, file: !419, line: 136, baseType: !476, size: 192, offset: 192)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_timeout", file: !453, line: 254, size: 192, elements: !477)
!477 = !{!478, !479, !485}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !476, file: !453, line: 255, baseType: !428, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !476, file: !453, line: 256, baseType: !480, size: 32, offset: 64)
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "_timeout_func_t", file: !453, line: 252, baseType: !481)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 32)
!482 = !DISubroutineType(types: !483)
!483 = !{null, !484}
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 32)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "dticks", scope: !476, file: !453, line: 259, baseType: !486, size: 64, offset: 128)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !150, line: 59, baseType: !487)
!487 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "callee_saved", scope: !418, file: !419, line: 255, baseType: !489, size: 288, offset: 384)
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_callee_saved", file: !490, line: 25, size: 288, elements: !491)
!490 = !DIFile(filename: "include/zephyr/arch/arm/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!491 = !{!492, !493, !494, !495, !496, !497, !498, !499, !500}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "v1", scope: !489, file: !490, line: 26, baseType: !156, size: 32)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "v2", scope: !489, file: !490, line: 27, baseType: !156, size: 32, offset: 32)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "v3", scope: !489, file: !490, line: 28, baseType: !156, size: 32, offset: 64)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "v4", scope: !489, file: !490, line: 29, baseType: !156, size: 32, offset: 96)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "v5", scope: !489, file: !490, line: 30, baseType: !156, size: 32, offset: 128)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "v6", scope: !489, file: !490, line: 31, baseType: !156, size: 32, offset: 160)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "v7", scope: !489, file: !490, line: 32, baseType: !156, size: 32, offset: 192)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "v8", scope: !489, file: !490, line: 33, baseType: !156, size: 32, offset: 224)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "psp", scope: !489, file: !490, line: 34, baseType: !156, size: 32, offset: 256)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "init_data", scope: !418, file: !419, line: 258, baseType: !122, size: 32, offset: 672)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "join_queue", scope: !418, file: !419, line: 261, baseType: !452, size: 64, offset: 704)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "errno_var", scope: !418, file: !419, line: 302, baseType: !123, size: 32, offset: 768)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "resource_pool", scope: !418, file: !419, line: 333, baseType: !505, size: 32, offset: 800)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 32)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_heap", file: !507, line: 5291, size: 160, elements: !508)
!507 = !DIFile(filename: "include/zephyr/kernel.h", directory: "/home/sri/zephyrproject/zephyr")
!508 = !{!509, !520, !521}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !506, file: !507, line: 5292, baseType: !510, size: 96)
!510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sys_heap", file: !511, line: 56, size: 96, elements: !512)
!511 = !DIFile(filename: "include/zephyr/sys/sys_heap.h", directory: "/home/sri/zephyrproject/zephyr")
!512 = !{!513, !516, !517}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !510, file: !511, line: 57, baseType: !514, size: 32)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 32)
!515 = !DICompositeType(tag: DW_TAG_structure_type, name: "z_heap", file: !511, line: 57, flags: DIFlagFwdDecl)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "init_mem", scope: !510, file: !511, line: 58, baseType: !122, size: 32, offset: 32)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "init_bytes", scope: !510, file: !511, line: 59, baseType: !518, size: 32, offset: 64)
!518 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !519, line: 46, baseType: !97)
!519 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/lib/clang/17/include/stddef.h", directory: "")
!520 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !506, file: !507, line: 5293, baseType: !452, size: 64, offset: 96)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !506, file: !507, line: 5294, baseType: !522, offset: 160)
!522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_spinlock", file: !523, line: 45, elements: !524)
!523 = !DIFile(filename: "include/zephyr/spinlock.h", directory: "/home/sri/zephyrproject/zephyr")
!524 = !{}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !418, file: !419, line: 355, baseType: !526, size: 64, offset: 832)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_arch", file: !490, line: 60, size: 64, elements: !527)
!527 = !{!528, !529}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "basepri", scope: !526, file: !490, line: 63, baseType: !156, size: 32)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "swap_return_value", scope: !526, file: !490, line: 66, baseType: !156, size: 32, offset: 32)
!530 = !DILocalVariable(name: "object", arg: 1, scope: !414, file: !13, line: 223, type: !141)
!531 = !DILocation(line: 223, column: 61, scope: !414)
!532 = !DILocalVariable(name: "thread", arg: 2, scope: !414, file: !13, line: 224, type: !417)
!533 = !DILocation(line: 224, column: 24, scope: !414)
!534 = !DILocation(line: 226, column: 9, scope: !414)
!535 = !DILocation(line: 227, column: 9, scope: !414)
!536 = !DILocation(line: 228, column: 1, scope: !414)
!537 = distinct !DISubprogram(name: "z_impl_k_object_release", scope: !13, file: !13, line: 243, type: !538, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !524)
!538 = !DISubroutineType(types: !539)
!539 = !{null, !141}
!540 = !DILocalVariable(name: "object", arg: 1, scope: !537, file: !13, line: 243, type: !141)
!541 = !DILocation(line: 243, column: 56, scope: !537)
!542 = !DILocation(line: 245, column: 9, scope: !537)
!543 = !DILocation(line: 246, column: 1, scope: !537)
!544 = distinct !DISubprogram(name: "z_impl_k_object_alloc", scope: !13, file: !13, line: 359, type: !545, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !524)
!545 = !DISubroutineType(types: !546)
!546 = !{!122, !12}
!547 = !DILocalVariable(name: "otype", arg: 1, scope: !544, file: !13, line: 359, type: !12)
!548 = !DILocation(line: 359, column: 58, scope: !544)
!549 = !DILocation(line: 361, column: 9, scope: !544)
!550 = !DILocation(line: 363, column: 2, scope: !544)
!551 = distinct !DISubprogram(name: "z_impl_k_object_alloc_size", scope: !13, file: !13, line: 366, type: !552, scopeLine: 368, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !524)
!552 = !DISubroutineType(types: !553)
!553 = !{!122, !12, !518}
!554 = !DILocalVariable(name: "otype", arg: 1, scope: !551, file: !13, line: 366, type: !12)
!555 = !DILocation(line: 366, column: 63, scope: !551)
!556 = !DILocalVariable(name: "size", arg: 2, scope: !551, file: !13, line: 367, type: !518)
!557 = !DILocation(line: 367, column: 13, scope: !551)
!558 = !DILocation(line: 369, column: 9, scope: !551)
!559 = !DILocation(line: 370, column: 9, scope: !551)
!560 = !DILocation(line: 372, column: 2, scope: !551)
!561 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_expires_ticks", scope: !507, file: !507, line: 656, type: !562, scopeLine: 658, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !524)
!562 = !DISubroutineType(types: !563)
!563 = !{!564, !566}
!564 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_ticks_t", file: !565, line: 46, baseType: !486)
!565 = !DIFile(filename: "include/zephyr/sys_clock.h", directory: "/home/sri/zephyrproject/zephyr")
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 32)
!567 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !418)
!568 = !DILocalVariable(name: "t", arg: 1, scope: !561, file: !507, line: 657, type: !566)
!569 = !DILocation(line: 657, column: 30, scope: !561)
!570 = !DILocation(line: 659, column: 28, scope: !561)
!571 = !DILocation(line: 659, column: 31, scope: !561)
!572 = !DILocation(line: 659, column: 36, scope: !561)
!573 = !DILocation(line: 659, column: 9, scope: !561)
!574 = !DILocation(line: 659, column: 2, scope: !561)
!575 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_remaining_ticks", scope: !507, file: !507, line: 671, type: !562, scopeLine: 673, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !524)
!576 = !DILocalVariable(name: "t", arg: 1, scope: !575, file: !507, line: 672, type: !566)
!577 = !DILocation(line: 672, column: 30, scope: !575)
!578 = !DILocation(line: 674, column: 30, scope: !575)
!579 = !DILocation(line: 674, column: 33, scope: !575)
!580 = !DILocation(line: 674, column: 38, scope: !575)
!581 = !DILocation(line: 674, column: 9, scope: !575)
!582 = !DILocation(line: 674, column: 2, scope: !575)
!583 = distinct !DISubprogram(name: "z_impl_k_timer_expires_ticks", scope: !507, file: !507, line: 1634, type: !584, scopeLine: 1636, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !524)
!584 = !DISubroutineType(types: !585)
!585 = !{!564, !586}
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 32)
!587 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !588)
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_timer", file: !507, line: 1439, size: 448, elements: !589)
!589 = !{!590, !591, !592, !597, !598, !603, !604}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !588, file: !507, line: 1445, baseType: !476, size: 192)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !588, file: !507, line: 1448, baseType: !452, size: 64, offset: 192)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_fn", scope: !588, file: !507, line: 1451, baseType: !593, size: 32, offset: 256)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 32)
!594 = !DISubroutineType(types: !595)
!595 = !{null, !596}
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 32)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "stop_fn", scope: !588, file: !507, line: 1454, baseType: !593, size: 32, offset: 288)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !588, file: !507, line: 1457, baseType: !599, size: 64, offset: 320)
!599 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_timeout_t", file: !565, line: 67, baseType: !600)
!600 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !565, line: 65, size: 64, elements: !601)
!601 = !{!602}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "ticks", scope: !600, file: !565, line: 66, baseType: !564, size: 64)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !588, file: !507, line: 1460, baseType: !156, size: 32, offset: 384)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !588, file: !507, line: 1463, baseType: !122, size: 32, offset: 416)
!605 = !DILocalVariable(name: "timer", arg: 1, scope: !583, file: !507, line: 1635, type: !586)
!606 = !DILocation(line: 1635, column: 34, scope: !583)
!607 = !DILocation(line: 1637, column: 28, scope: !583)
!608 = !DILocation(line: 1637, column: 35, scope: !583)
!609 = !DILocation(line: 1637, column: 9, scope: !583)
!610 = !DILocation(line: 1637, column: 2, scope: !583)
!611 = distinct !DISubprogram(name: "z_impl_k_timer_remaining_ticks", scope: !507, file: !507, line: 1649, type: !584, scopeLine: 1651, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !524)
!612 = !DILocalVariable(name: "timer", arg: 1, scope: !611, file: !507, line: 1650, type: !586)
!613 = !DILocation(line: 1650, column: 34, scope: !611)
!614 = !DILocation(line: 1652, column: 30, scope: !611)
!615 = !DILocation(line: 1652, column: 37, scope: !611)
!616 = !DILocation(line: 1652, column: 9, scope: !611)
!617 = !DILocation(line: 1652, column: 2, scope: !611)
!618 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_set", scope: !507, file: !507, line: 1689, type: !619, scopeLine: 1691, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !524)
!619 = !DISubroutineType(types: !620)
!620 = !{null, !596, !122}
!621 = !DILocalVariable(name: "timer", arg: 1, scope: !618, file: !507, line: 1689, type: !596)
!622 = !DILocation(line: 1689, column: 65, scope: !618)
!623 = !DILocalVariable(name: "user_data", arg: 2, scope: !618, file: !507, line: 1690, type: !122)
!624 = !DILocation(line: 1690, column: 19, scope: !618)
!625 = !DILocation(line: 1692, column: 21, scope: !618)
!626 = !DILocation(line: 1692, column: 2, scope: !618)
!627 = !DILocation(line: 1692, column: 9, scope: !618)
!628 = !DILocation(line: 1692, column: 19, scope: !618)
!629 = !DILocation(line: 1693, column: 1, scope: !618)
!630 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_get", scope: !507, file: !507, line: 1704, type: !631, scopeLine: 1705, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !524)
!631 = !DISubroutineType(types: !632)
!632 = !{!122, !586}
!633 = !DILocalVariable(name: "timer", arg: 1, scope: !630, file: !507, line: 1704, type: !586)
!634 = !DILocation(line: 1704, column: 72, scope: !630)
!635 = !DILocation(line: 1706, column: 9, scope: !630)
!636 = !DILocation(line: 1706, column: 16, scope: !630)
!637 = !DILocation(line: 1706, column: 2, scope: !630)
!638 = distinct !DISubprogram(name: "z_impl_k_queue_is_empty", scope: !507, file: !507, line: 2071, type: !639, scopeLine: 2072, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !524)
!639 = !DISubroutineType(types: !640)
!640 = !{!123, !641}
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 32)
!642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_queue", file: !507, line: 1830, size: 128, elements: !643)
!643 = !{!644, !657, !658}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "data_q", scope: !642, file: !507, line: 1831, baseType: !645, size: 64)
!645 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sflist_t", file: !646, line: 60, baseType: !647)
!646 = !DIFile(filename: "include/zephyr/sys/sflist.h", directory: "/home/sri/zephyrproject/zephyr")
!647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sflist", file: !646, line: 53, size: 64, elements: !648)
!648 = !{!649, !656}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !647, file: !646, line: 54, baseType: !650, size: 32)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 32)
!651 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sfnode_t", file: !646, line: 50, baseType: !652)
!652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sfnode", file: !646, line: 44, size: 32, elements: !653)
!653 = !{!654}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "next_and_flags", scope: !652, file: !646, line: 45, baseType: !655, size: 32)
!655 = !DIDerivedType(tag: DW_TAG_typedef, name: "unative_t", file: !646, line: 40, baseType: !156)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !647, file: !646, line: 55, baseType: !650, size: 32, offset: 32)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !642, file: !507, line: 1832, baseType: !522, offset: 64)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !642, file: !507, line: 1833, baseType: !452, size: 64, offset: 64)
!659 = !DILocalVariable(name: "queue", arg: 1, scope: !638, file: !507, line: 2071, type: !641)
!660 = !DILocation(line: 2071, column: 59, scope: !638)
!661 = !DILocation(line: 2073, column: 35, scope: !638)
!662 = !DILocation(line: 2073, column: 42, scope: !638)
!663 = !DILocation(line: 2073, column: 14, scope: !638)
!664 = !DILocation(line: 2073, column: 9, scope: !638)
!665 = !DILocation(line: 2073, column: 2, scope: !638)
!666 = distinct !DISubprogram(name: "z_impl_k_sem_count_get", scope: !507, file: !507, line: 3209, type: !667, scopeLine: 3210, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !524)
!667 = !DISubroutineType(types: !668)
!668 = !{!97, !669}
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 32)
!670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sem", file: !507, line: 3092, size: 128, elements: !671)
!671 = !{!672, !673, !674}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !670, file: !507, line: 3093, baseType: !452, size: 64)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !670, file: !507, line: 3094, baseType: !97, size: 32, offset: 64)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !670, file: !507, line: 3095, baseType: !97, size: 32, offset: 96)
!675 = !DILocalVariable(name: "sem", arg: 1, scope: !666, file: !507, line: 3209, type: !669)
!676 = !DILocation(line: 3209, column: 65, scope: !666)
!677 = !DILocation(line: 3211, column: 9, scope: !666)
!678 = !DILocation(line: 3211, column: 14, scope: !666)
!679 = !DILocation(line: 3211, column: 2, scope: !666)
!680 = distinct !DISubprogram(name: "z_impl_k_msgq_num_free_get", scope: !507, file: !507, line: 4649, type: !681, scopeLine: 4650, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !524)
!681 = !DISubroutineType(types: !682)
!682 = !{!156, !683}
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 32)
!684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_msgq", file: !507, line: 4390, size: 320, elements: !685)
!685 = !{!686, !687, !688, !689, !690, !691, !692, !693, !694, !695}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !684, file: !507, line: 4392, baseType: !452, size: 64)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !684, file: !507, line: 4394, baseType: !522, offset: 64)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "msg_size", scope: !684, file: !507, line: 4396, baseType: !518, size: 32, offset: 64)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !684, file: !507, line: 4398, baseType: !156, size: 32, offset: 96)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_start", scope: !684, file: !507, line: 4400, baseType: !251, size: 32, offset: 128)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_end", scope: !684, file: !507, line: 4402, baseType: !251, size: 32, offset: 160)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "read_ptr", scope: !684, file: !507, line: 4404, baseType: !251, size: 32, offset: 192)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "write_ptr", scope: !684, file: !507, line: 4406, baseType: !251, size: 32, offset: 224)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "used_msgs", scope: !684, file: !507, line: 4408, baseType: !156, size: 32, offset: 256)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !684, file: !507, line: 4413, baseType: !149, size: 8, offset: 288)
!696 = !DILocalVariable(name: "msgq", arg: 1, scope: !680, file: !507, line: 4649, type: !683)
!697 = !DILocation(line: 4649, column: 66, scope: !680)
!698 = !DILocation(line: 4651, column: 9, scope: !680)
!699 = !DILocation(line: 4651, column: 15, scope: !680)
!700 = !DILocation(line: 4651, column: 26, scope: !680)
!701 = !DILocation(line: 4651, column: 32, scope: !680)
!702 = !DILocation(line: 4651, column: 24, scope: !680)
!703 = !DILocation(line: 4651, column: 2, scope: !680)
!704 = distinct !DISubprogram(name: "z_impl_k_msgq_num_used_get", scope: !507, file: !507, line: 4665, type: !681, scopeLine: 4666, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !524)
!705 = !DILocalVariable(name: "msgq", arg: 1, scope: !704, file: !507, line: 4665, type: !683)
!706 = !DILocation(line: 4665, column: 66, scope: !704)
!707 = !DILocation(line: 4667, column: 9, scope: !704)
!708 = !DILocation(line: 4667, column: 15, scope: !704)
!709 = !DILocation(line: 4667, column: 2, scope: !704)
!710 = distinct !DISubprogram(name: "z_impl_device_is_ready", scope: !135, file: !135, line: 744, type: !711, scopeLine: 745, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !524)
!711 = !DISubroutineType(types: !712)
!712 = !{!152, !132}
!713 = !DILocalVariable(name: "dev", arg: 1, scope: !710, file: !135, line: 744, type: !132)
!714 = !DILocation(line: 744, column: 65, scope: !710)
!715 = !DILocation(line: 746, column: 27, scope: !710)
!716 = !DILocation(line: 746, column: 9, scope: !710)
!717 = !DILocation(line: 746, column: 2, scope: !710)
!718 = distinct !DISubprogram(name: "z_impl_gpio_pin_interrupt_configure", scope: !96, file: !96, line: 862, type: !130, scopeLine: 865, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !524)
!719 = !DILocalVariable(name: "port", arg: 1, scope: !718, file: !96, line: 862, type: !132)
!720 = !DILocation(line: 862, column: 76, scope: !718)
!721 = !DILocalVariable(name: "pin", arg: 2, scope: !718, file: !96, line: 863, type: !154)
!722 = !DILocation(line: 863, column: 24, scope: !718)
!723 = !DILocalVariable(name: "flags", arg: 3, scope: !718, file: !96, line: 864, type: !155)
!724 = !DILocation(line: 864, column: 26, scope: !718)
!725 = !DILocalVariable(name: "api", scope: !718, file: !96, line: 866, type: !124)
!726 = !DILocation(line: 866, column: 32, scope: !718)
!727 = !DILocation(line: 867, column: 35, scope: !718)
!728 = !DILocation(line: 867, column: 41, scope: !718)
!729 = !DILocalVariable(name: "cfg", scope: !718, file: !96, line: 868, type: !730)
!730 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !202)
!731 = !DILocation(line: 868, column: 69, scope: !718)
!732 = !DILocation(line: 869, column: 38, scope: !718)
!733 = !DILocation(line: 869, column: 44, scope: !718)
!734 = !DILocalVariable(name: "data", scope: !718, file: !96, line: 870, type: !735)
!735 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !207)
!736 = !DILocation(line: 870, column: 39, scope: !718)
!737 = !DILocation(line: 871, column: 36, scope: !718)
!738 = !DILocation(line: 871, column: 42, scope: !718)
!739 = !DILocalVariable(name: "trig", scope: !718, file: !96, line: 872, type: !102)
!740 = !DILocation(line: 872, column: 21, scope: !718)
!741 = !DILocalVariable(name: "mode", scope: !718, file: !96, line: 873, type: !95)
!742 = !DILocation(line: 873, column: 21, scope: !718)
!743 = !DILocation(line: 875, column: 6, scope: !744)
!744 = distinct !DILexicalBlock(scope: !718, file: !96, line: 875, column: 6)
!745 = !DILocation(line: 875, column: 11, scope: !744)
!746 = !DILocation(line: 875, column: 35, scope: !744)
!747 = !DILocation(line: 875, column: 6, scope: !718)
!748 = !DILocation(line: 876, column: 3, scope: !749)
!749 = distinct !DILexicalBlock(scope: !744, file: !96, line: 875, column: 50)
!750 = !DILocation(line: 906, column: 8, scope: !751)
!751 = distinct !DILexicalBlock(scope: !718, file: !96, line: 906, column: 6)
!752 = !DILocation(line: 906, column: 14, scope: !751)
!753 = !DILocation(line: 906, column: 28, scope: !751)
!754 = !DILocation(line: 906, column: 34, scope: !751)
!755 = !DILocation(line: 907, column: 8, scope: !751)
!756 = !DILocation(line: 907, column: 14, scope: !751)
!757 = !DILocation(line: 907, column: 50, scope: !751)
!758 = !DILocation(line: 907, column: 49, scope: !751)
!759 = !DILocation(line: 907, column: 46, scope: !751)
!760 = !DILocation(line: 907, column: 21, scope: !751)
!761 = !DILocation(line: 907, column: 57, scope: !751)
!762 = !DILocation(line: 906, column: 6, scope: !718)
!763 = !DILocation(line: 909, column: 9, scope: !764)
!764 = distinct !DILexicalBlock(scope: !751, file: !96, line: 907, column: 64)
!765 = !DILocation(line: 910, column: 2, scope: !764)
!766 = !DILocation(line: 912, column: 30, scope: !718)
!767 = !DILocation(line: 912, column: 36, scope: !718)
!768 = !DILocation(line: 912, column: 7, scope: !718)
!769 = !DILocation(line: 917, column: 30, scope: !718)
!770 = !DILocation(line: 917, column: 36, scope: !718)
!771 = !DILocation(line: 917, column: 7, scope: !718)
!772 = !DILocation(line: 920, column: 9, scope: !718)
!773 = !DILocation(line: 920, column: 14, scope: !718)
!774 = !DILocation(line: 920, column: 38, scope: !718)
!775 = !DILocation(line: 920, column: 44, scope: !718)
!776 = !DILocation(line: 920, column: 49, scope: !718)
!777 = !DILocation(line: 920, column: 55, scope: !718)
!778 = !DILocation(line: 920, column: 2, scope: !718)
!779 = !DILocation(line: 921, column: 1, scope: !718)
!780 = distinct !DISubprogram(name: "z_impl_gpio_pin_configure", scope: !96, file: !96, line: 961, type: !130, scopeLine: 964, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !524)
!781 = !DILocalVariable(name: "port", arg: 1, scope: !780, file: !96, line: 961, type: !132)
!782 = !DILocation(line: 961, column: 66, scope: !780)
!783 = !DILocalVariable(name: "pin", arg: 2, scope: !780, file: !96, line: 962, type: !154)
!784 = !DILocation(line: 962, column: 21, scope: !780)
!785 = !DILocalVariable(name: "flags", arg: 3, scope: !780, file: !96, line: 963, type: !155)
!786 = !DILocation(line: 963, column: 23, scope: !780)
!787 = !DILocalVariable(name: "api", scope: !780, file: !96, line: 965, type: !124)
!788 = !DILocation(line: 965, column: 32, scope: !780)
!789 = !DILocation(line: 966, column: 35, scope: !780)
!790 = !DILocation(line: 966, column: 41, scope: !780)
!791 = !DILocalVariable(name: "cfg", scope: !780, file: !96, line: 967, type: !730)
!792 = !DILocation(line: 967, column: 69, scope: !780)
!793 = !DILocation(line: 968, column: 38, scope: !780)
!794 = !DILocation(line: 968, column: 44, scope: !780)
!795 = !DILocalVariable(name: "data", scope: !780, file: !96, line: 969, type: !212)
!796 = !DILocation(line: 969, column: 27, scope: !780)
!797 = !DILocation(line: 970, column: 30, scope: !780)
!798 = !DILocation(line: 970, column: 36, scope: !780)
!799 = !DILocation(line: 993, column: 8, scope: !800)
!800 = distinct !DILexicalBlock(scope: !780, file: !96, line: 993, column: 6)
!801 = !DILocation(line: 993, column: 14, scope: !800)
!802 = !DILocation(line: 993, column: 28, scope: !800)
!803 = !DILocation(line: 994, column: 6, scope: !800)
!804 = !DILocation(line: 994, column: 11, scope: !800)
!805 = !DILocation(line: 994, column: 17, scope: !800)
!806 = !DILocation(line: 994, column: 46, scope: !800)
!807 = !DILocation(line: 995, column: 6, scope: !800)
!808 = !DILocation(line: 995, column: 11, scope: !800)
!809 = !DILocation(line: 995, column: 17, scope: !800)
!810 = !DILocation(line: 995, column: 29, scope: !800)
!811 = !DILocation(line: 993, column: 6, scope: !780)
!812 = !DILocation(line: 996, column: 9, scope: !813)
!813 = distinct !DILexicalBlock(scope: !800, file: !96, line: 995, column: 36)
!814 = !DILocation(line: 997, column: 2, scope: !813)
!815 = !DILocation(line: 999, column: 8, scope: !780)
!816 = !DILocation(line: 1004, column: 7, scope: !817)
!817 = distinct !DILexicalBlock(scope: !780, file: !96, line: 1004, column: 6)
!818 = !DILocation(line: 1004, column: 13, scope: !817)
!819 = !DILocation(line: 1004, column: 25, scope: !817)
!820 = !DILocation(line: 1004, column: 6, scope: !780)
!821 = !DILocation(line: 1005, column: 46, scope: !822)
!822 = distinct !DILexicalBlock(scope: !817, file: !96, line: 1004, column: 31)
!823 = !DILocation(line: 1005, column: 45, scope: !822)
!824 = !DILocation(line: 1005, column: 42, scope: !822)
!825 = !DILocation(line: 1005, column: 3, scope: !822)
!826 = !DILocation(line: 1005, column: 9, scope: !822)
!827 = !DILocation(line: 1005, column: 16, scope: !822)
!828 = !DILocation(line: 1006, column: 2, scope: !822)
!829 = !DILocation(line: 1007, column: 47, scope: !830)
!830 = distinct !DILexicalBlock(scope: !817, file: !96, line: 1006, column: 9)
!831 = !DILocation(line: 1007, column: 46, scope: !830)
!832 = !DILocation(line: 1007, column: 43, scope: !830)
!833 = !DILocation(line: 1007, column: 19, scope: !830)
!834 = !DILocation(line: 1007, column: 3, scope: !830)
!835 = !DILocation(line: 1007, column: 9, scope: !830)
!836 = !DILocation(line: 1007, column: 16, scope: !830)
!837 = !DILocation(line: 1010, column: 9, scope: !780)
!838 = !DILocation(line: 1010, column: 14, scope: !780)
!839 = !DILocation(line: 1010, column: 28, scope: !780)
!840 = !DILocation(line: 1010, column: 34, scope: !780)
!841 = !DILocation(line: 1010, column: 39, scope: !780)
!842 = !DILocation(line: 1010, column: 2, scope: !780)
!843 = distinct !DISubprogram(name: "z_impl_gpio_port_get_raw", scope: !96, file: !96, line: 1229, type: !159, scopeLine: 1231, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !524)
!844 = !DILocalVariable(name: "port", arg: 1, scope: !843, file: !96, line: 1229, type: !132)
!845 = !DILocation(line: 1229, column: 65, scope: !843)
!846 = !DILocalVariable(name: "value", arg: 2, scope: !843, file: !96, line: 1230, type: !161)
!847 = !DILocation(line: 1230, column: 28, scope: !843)
!848 = !DILocalVariable(name: "api", scope: !843, file: !96, line: 1232, type: !124)
!849 = !DILocation(line: 1232, column: 32, scope: !843)
!850 = !DILocation(line: 1233, column: 35, scope: !843)
!851 = !DILocation(line: 1233, column: 41, scope: !843)
!852 = !DILocation(line: 1235, column: 9, scope: !843)
!853 = !DILocation(line: 1235, column: 14, scope: !843)
!854 = !DILocation(line: 1235, column: 27, scope: !843)
!855 = !DILocation(line: 1235, column: 33, scope: !843)
!856 = !DILocation(line: 1235, column: 2, scope: !843)
!857 = distinct !DISubprogram(name: "z_impl_gpio_port_set_masked_raw", scope: !96, file: !96, line: 1292, type: !165, scopeLine: 1295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !524)
!858 = !DILocalVariable(name: "port", arg: 1, scope: !857, file: !96, line: 1292, type: !132)
!859 = !DILocation(line: 1292, column: 72, scope: !857)
!860 = !DILocalVariable(name: "mask", arg: 2, scope: !857, file: !96, line: 1293, type: !167)
!861 = !DILocation(line: 1293, column: 26, scope: !857)
!862 = !DILocalVariable(name: "value", arg: 3, scope: !857, file: !96, line: 1294, type: !162)
!863 = !DILocation(line: 1294, column: 27, scope: !857)
!864 = !DILocalVariable(name: "api", scope: !857, file: !96, line: 1296, type: !124)
!865 = !DILocation(line: 1296, column: 32, scope: !857)
!866 = !DILocation(line: 1297, column: 35, scope: !857)
!867 = !DILocation(line: 1297, column: 41, scope: !857)
!868 = !DILocation(line: 1299, column: 9, scope: !857)
!869 = !DILocation(line: 1299, column: 14, scope: !857)
!870 = !DILocation(line: 1299, column: 34, scope: !857)
!871 = !DILocation(line: 1299, column: 40, scope: !857)
!872 = !DILocation(line: 1299, column: 46, scope: !857)
!873 = !DILocation(line: 1299, column: 2, scope: !857)
!874 = distinct !DISubprogram(name: "z_impl_gpio_port_set_bits_raw", scope: !96, file: !96, line: 1347, type: !170, scopeLine: 1349, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !524)
!875 = !DILocalVariable(name: "port", arg: 1, scope: !874, file: !96, line: 1347, type: !132)
!876 = !DILocation(line: 1347, column: 70, scope: !874)
!877 = !DILocalVariable(name: "pins", arg: 2, scope: !874, file: !96, line: 1348, type: !167)
!878 = !DILocation(line: 1348, column: 24, scope: !874)
!879 = !DILocalVariable(name: "api", scope: !874, file: !96, line: 1350, type: !124)
!880 = !DILocation(line: 1350, column: 32, scope: !874)
!881 = !DILocation(line: 1351, column: 35, scope: !874)
!882 = !DILocation(line: 1351, column: 41, scope: !874)
!883 = !DILocation(line: 1353, column: 9, scope: !874)
!884 = !DILocation(line: 1353, column: 14, scope: !874)
!885 = !DILocation(line: 1353, column: 32, scope: !874)
!886 = !DILocation(line: 1353, column: 38, scope: !874)
!887 = !DILocation(line: 1353, column: 2, scope: !874)
!888 = distinct !DISubprogram(name: "z_impl_gpio_port_clear_bits_raw", scope: !96, file: !96, line: 1385, type: !170, scopeLine: 1387, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !524)
!889 = !DILocalVariable(name: "port", arg: 1, scope: !888, file: !96, line: 1385, type: !132)
!890 = !DILocation(line: 1385, column: 72, scope: !888)
!891 = !DILocalVariable(name: "pins", arg: 2, scope: !888, file: !96, line: 1386, type: !167)
!892 = !DILocation(line: 1386, column: 26, scope: !888)
!893 = !DILocalVariable(name: "api", scope: !888, file: !96, line: 1388, type: !124)
!894 = !DILocation(line: 1388, column: 32, scope: !888)
!895 = !DILocation(line: 1389, column: 35, scope: !888)
!896 = !DILocation(line: 1389, column: 41, scope: !888)
!897 = !DILocation(line: 1391, column: 9, scope: !888)
!898 = !DILocation(line: 1391, column: 14, scope: !888)
!899 = !DILocation(line: 1391, column: 34, scope: !888)
!900 = !DILocation(line: 1391, column: 40, scope: !888)
!901 = !DILocation(line: 1391, column: 2, scope: !888)
!902 = distinct !DISubprogram(name: "z_impl_gpio_port_toggle_bits", scope: !96, file: !96, line: 1423, type: !170, scopeLine: 1425, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !524)
!903 = !DILocalVariable(name: "port", arg: 1, scope: !902, file: !96, line: 1423, type: !132)
!904 = !DILocation(line: 1423, column: 69, scope: !902)
!905 = !DILocalVariable(name: "pins", arg: 2, scope: !902, file: !96, line: 1424, type: !167)
!906 = !DILocation(line: 1424, column: 30, scope: !902)
!907 = !DILocalVariable(name: "api", scope: !902, file: !96, line: 1426, type: !124)
!908 = !DILocation(line: 1426, column: 32, scope: !902)
!909 = !DILocation(line: 1427, column: 35, scope: !902)
!910 = !DILocation(line: 1427, column: 41, scope: !902)
!911 = !DILocation(line: 1429, column: 9, scope: !902)
!912 = !DILocation(line: 1429, column: 14, scope: !902)
!913 = !DILocation(line: 1429, column: 31, scope: !902)
!914 = !DILocation(line: 1429, column: 37, scope: !902)
!915 = !DILocation(line: 1429, column: 2, scope: !902)
!916 = distinct !DISubprogram(name: "z_impl_gpio_get_pending_int", scope: !96, file: !96, line: 1807, type: !312, scopeLine: 1808, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !524)
!917 = !DILocalVariable(name: "dev", arg: 1, scope: !916, file: !96, line: 1807, type: !132)
!918 = !DILocation(line: 1807, column: 68, scope: !916)
!919 = !DILocalVariable(name: "api", scope: !916, file: !96, line: 1809, type: !124)
!920 = !DILocation(line: 1809, column: 32, scope: !916)
!921 = !DILocation(line: 1810, column: 35, scope: !916)
!922 = !DILocation(line: 1810, column: 40, scope: !916)
!923 = !DILocation(line: 1812, column: 6, scope: !924)
!924 = distinct !DILexicalBlock(scope: !916, file: !96, line: 1812, column: 6)
!925 = !DILocation(line: 1812, column: 11, scope: !924)
!926 = !DILocation(line: 1812, column: 27, scope: !924)
!927 = !DILocation(line: 1812, column: 6, scope: !916)
!928 = !DILocation(line: 1813, column: 3, scope: !929)
!929 = distinct !DILexicalBlock(scope: !924, file: !96, line: 1812, column: 42)
!930 = !DILocation(line: 1816, column: 9, scope: !916)
!931 = !DILocation(line: 1816, column: 14, scope: !916)
!932 = !DILocation(line: 1816, column: 30, scope: !916)
!933 = !DILocation(line: 1816, column: 2, scope: !916)
!934 = !DILocation(line: 1817, column: 1, scope: !916)
!935 = distinct !DISubprogram(name: "gpio_stm32_configure", scope: !2, file: !2, line: 485, type: !936, scopeLine: 486, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !524)
!936 = !DISubroutineType(types: !937)
!937 = !{!123, !132, !123, !123, !123}
!938 = !DILocalVariable(name: "dev", arg: 1, scope: !935, file: !2, line: 485, type: !132)
!939 = !DILocation(line: 485, column: 47, scope: !935)
!940 = !DILocalVariable(name: "pin", arg: 2, scope: !935, file: !2, line: 485, type: !123)
!941 = !DILocation(line: 485, column: 56, scope: !935)
!942 = !DILocalVariable(name: "conf", arg: 3, scope: !935, file: !2, line: 485, type: !123)
!943 = !DILocation(line: 485, column: 65, scope: !935)
!944 = !DILocalVariable(name: "func", arg: 4, scope: !935, file: !2, line: 485, type: !123)
!945 = !DILocation(line: 485, column: 75, scope: !935)
!946 = !DILocalVariable(name: "ret", scope: !935, file: !2, line: 487, type: !123)
!947 = !DILocation(line: 487, column: 6, scope: !935)
!948 = !DILocation(line: 489, column: 30, scope: !935)
!949 = !DILocation(line: 489, column: 8, scope: !935)
!950 = !DILocation(line: 489, column: 6, scope: !935)
!951 = !DILocation(line: 490, column: 6, scope: !952)
!952 = distinct !DILexicalBlock(scope: !935, file: !2, line: 490, column: 6)
!953 = !DILocation(line: 490, column: 10, scope: !952)
!954 = !DILocation(line: 490, column: 6, scope: !935)
!955 = !DILocation(line: 491, column: 10, scope: !956)
!956 = distinct !DILexicalBlock(scope: !952, file: !2, line: 490, column: 15)
!957 = !DILocation(line: 491, column: 3, scope: !956)
!958 = !DILocation(line: 494, column: 27, scope: !935)
!959 = !DILocation(line: 494, column: 32, scope: !935)
!960 = !DILocation(line: 494, column: 37, scope: !935)
!961 = !DILocation(line: 494, column: 43, scope: !935)
!962 = !DILocation(line: 494, column: 2, scope: !935)
!963 = !DILocation(line: 496, column: 6, scope: !964)
!964 = distinct !DILexicalBlock(scope: !935, file: !2, line: 496, column: 6)
!965 = !DILocation(line: 496, column: 11, scope: !964)
!966 = !DILocation(line: 496, column: 6, scope: !935)
!967 = !DILocalVariable(name: "gpio_out", scope: !968, file: !2, line: 497, type: !156)
!968 = distinct !DILexicalBlock(scope: !964, file: !2, line: 496, column: 20)
!969 = !DILocation(line: 497, column: 12, scope: !968)
!970 = !DILocation(line: 497, column: 23, scope: !968)
!971 = !DILocation(line: 497, column: 28, scope: !968)
!972 = !DILocation(line: 499, column: 7, scope: !973)
!973 = distinct !DILexicalBlock(scope: !968, file: !2, line: 499, column: 7)
!974 = !DILocation(line: 499, column: 16, scope: !973)
!975 = !DILocation(line: 499, column: 7, scope: !968)
!976 = !DILocation(line: 500, column: 33, scope: !977)
!977 = distinct !DILexicalBlock(scope: !973, file: !2, line: 499, column: 32)
!978 = !DILocation(line: 500, column: 47, scope: !977)
!979 = !DILocation(line: 500, column: 43, scope: !977)
!980 = !DILocation(line: 500, column: 4, scope: !977)
!981 = !DILocation(line: 501, column: 3, scope: !977)
!982 = !DILocation(line: 501, column: 14, scope: !983)
!983 = distinct !DILexicalBlock(scope: !973, file: !2, line: 501, column: 14)
!984 = !DILocation(line: 501, column: 23, scope: !983)
!985 = !DILocation(line: 501, column: 14, scope: !973)
!986 = !DILocation(line: 502, column: 35, scope: !987)
!987 = distinct !DILexicalBlock(scope: !983, file: !2, line: 501, column: 39)
!988 = !DILocation(line: 502, column: 49, scope: !987)
!989 = !DILocation(line: 502, column: 45, scope: !987)
!990 = !DILocation(line: 502, column: 4, scope: !987)
!991 = !DILocation(line: 503, column: 3, scope: !987)
!992 = !DILocation(line: 504, column: 2, scope: !968)
!993 = !DILocation(line: 506, column: 31, scope: !935)
!994 = !DILocation(line: 506, column: 9, scope: !935)
!995 = !DILocation(line: 506, column: 2, scope: !935)
!996 = !DILocation(line: 507, column: 1, scope: !935)
!997 = distinct !DISubprogram(name: "pm_device_runtime_get", scope: !998, file: !998, line: 179, type: !312, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !524)
!998 = !DIFile(filename: "include/zephyr/pm/device_runtime.h", directory: "/home/sri/zephyrproject/zephyr")
!999 = !DILocalVariable(name: "dev", arg: 1, scope: !997, file: !998, line: 179, type: !132)
!1000 = !DILocation(line: 179, column: 62, scope: !997)
!1001 = !DILocation(line: 181, column: 9, scope: !997)
!1002 = !DILocation(line: 182, column: 2, scope: !997)
!1003 = distinct !DISubprogram(name: "gpio_stm32_configure_raw", scope: !2, file: !2, line: 157, type: !1004, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !524)
!1004 = !DISubroutineType(types: !1005)
!1005 = !{null, !132, !123, !123, !123}
!1006 = !DILocalVariable(name: "dev", arg: 1, scope: !1003, file: !2, line: 157, type: !132)
!1007 = !DILocation(line: 157, column: 59, scope: !1003)
!1008 = !DILocalVariable(name: "pin", arg: 2, scope: !1003, file: !2, line: 157, type: !123)
!1009 = !DILocation(line: 157, column: 68, scope: !1003)
!1010 = !DILocalVariable(name: "conf", arg: 3, scope: !1003, file: !2, line: 158, type: !123)
!1011 = !DILocation(line: 158, column: 14, scope: !1003)
!1012 = !DILocalVariable(name: "func", arg: 4, scope: !1003, file: !2, line: 158, type: !123)
!1013 = !DILocation(line: 158, column: 24, scope: !1003)
!1014 = !DILocalVariable(name: "cfg", scope: !1003, file: !2, line: 160, type: !1015)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 32)
!1016 = !DILocation(line: 160, column: 34, scope: !1003)
!1017 = !DILocation(line: 160, column: 40, scope: !1003)
!1018 = !DILocation(line: 160, column: 45, scope: !1003)
!1019 = !DILocalVariable(name: "gpio", scope: !1003, file: !2, line: 161, type: !213)
!1020 = !DILocation(line: 161, column: 16, scope: !1003)
!1021 = !DILocation(line: 161, column: 39, scope: !1003)
!1022 = !DILocation(line: 161, column: 44, scope: !1003)
!1023 = !DILocalVariable(name: "pin_ll", scope: !1003, file: !2, line: 163, type: !123)
!1024 = !DILocation(line: 163, column: 6, scope: !1003)
!1025 = !DILocation(line: 163, column: 32, scope: !1003)
!1026 = !DILocation(line: 163, column: 15, scope: !1003)
!1027 = !DILocalVariable(name: "mode", scope: !1003, file: !2, line: 227, type: !97)
!1028 = !DILocation(line: 227, column: 15, scope: !1003)
!1029 = !DILocalVariable(name: "otype", scope: !1003, file: !2, line: 227, type: !97)
!1030 = !DILocation(line: 227, column: 21, scope: !1003)
!1031 = !DILocalVariable(name: "ospeed", scope: !1003, file: !2, line: 227, type: !97)
!1032 = !DILocation(line: 227, column: 28, scope: !1003)
!1033 = !DILocalVariable(name: "pupd", scope: !1003, file: !2, line: 227, type: !97)
!1034 = !DILocation(line: 227, column: 36, scope: !1003)
!1035 = !DILocation(line: 229, column: 9, scope: !1003)
!1036 = !DILocation(line: 229, column: 14, scope: !1003)
!1037 = !DILocation(line: 229, column: 7, scope: !1003)
!1038 = !DILocation(line: 230, column: 10, scope: !1003)
!1039 = !DILocation(line: 230, column: 15, scope: !1003)
!1040 = !DILocation(line: 230, column: 8, scope: !1003)
!1041 = !DILocation(line: 231, column: 11, scope: !1003)
!1042 = !DILocation(line: 231, column: 16, scope: !1003)
!1043 = !DILocation(line: 231, column: 9, scope: !1003)
!1044 = !DILocation(line: 232, column: 9, scope: !1003)
!1045 = !DILocation(line: 232, column: 14, scope: !1003)
!1046 = !DILocation(line: 232, column: 7, scope: !1003)
!1047 = !DILocation(line: 234, column: 2, scope: !1003)
!1048 = !DILocation(line: 246, column: 27, scope: !1003)
!1049 = !DILocation(line: 246, column: 33, scope: !1003)
!1050 = !DILocation(line: 246, column: 41, scope: !1003)
!1051 = !DILocation(line: 246, column: 47, scope: !1003)
!1052 = !DILocation(line: 246, column: 2, scope: !1003)
!1053 = !DILocation(line: 248, column: 22, scope: !1003)
!1054 = !DILocation(line: 248, column: 28, scope: !1003)
!1055 = !DILocation(line: 248, column: 36, scope: !1003)
!1056 = !DILocation(line: 248, column: 43, scope: !1003)
!1057 = !DILocation(line: 248, column: 2, scope: !1003)
!1058 = !DILocation(line: 250, column: 21, scope: !1003)
!1059 = !DILocation(line: 250, column: 27, scope: !1003)
!1060 = !DILocation(line: 250, column: 35, scope: !1003)
!1061 = !DILocation(line: 250, column: 40, scope: !1003)
!1062 = !DILocation(line: 250, column: 2, scope: !1003)
!1063 = !DILocation(line: 252, column: 6, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !1003, file: !2, line: 252, column: 6)
!1065 = !DILocation(line: 252, column: 11, scope: !1064)
!1066 = !DILocation(line: 252, column: 6, scope: !1003)
!1067 = !DILocation(line: 253, column: 7, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1069, file: !2, line: 253, column: 7)
!1069 = distinct !DILexicalBlock(scope: !1064, file: !2, line: 252, column: 26)
!1070 = !DILocation(line: 253, column: 11, scope: !1068)
!1071 = !DILocation(line: 253, column: 7, scope: !1069)
!1072 = !DILocation(line: 254, column: 25, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !1068, file: !2, line: 253, column: 16)
!1074 = !DILocation(line: 254, column: 31, scope: !1073)
!1075 = !DILocation(line: 254, column: 39, scope: !1073)
!1076 = !DILocation(line: 254, column: 4, scope: !1073)
!1077 = !DILocation(line: 255, column: 3, scope: !1073)
!1078 = !DILocation(line: 256, column: 26, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !1068, file: !2, line: 255, column: 10)
!1080 = !DILocation(line: 256, column: 32, scope: !1079)
!1081 = !DILocation(line: 256, column: 40, scope: !1079)
!1082 = !DILocation(line: 256, column: 4, scope: !1079)
!1083 = !DILocation(line: 258, column: 2, scope: !1069)
!1084 = !DILocation(line: 260, column: 21, scope: !1003)
!1085 = !DILocation(line: 260, column: 27, scope: !1003)
!1086 = !DILocation(line: 260, column: 35, scope: !1003)
!1087 = !DILocation(line: 260, column: 40, scope: !1003)
!1088 = !DILocation(line: 260, column: 2, scope: !1003)
!1089 = !DILocation(line: 262, column: 2, scope: !1003)
!1090 = !DILocation(line: 265, column: 1, scope: !1003)
!1091 = distinct !DISubprogram(name: "gpio_stm32_port_set_bits_raw", scope: !2, file: !2, line: 427, type: !170, scopeLine: 429, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !524)
!1092 = !DILocalVariable(name: "dev", arg: 1, scope: !1091, file: !2, line: 427, type: !132)
!1093 = !DILocation(line: 427, column: 62, scope: !1091)
!1094 = !DILocalVariable(name: "pins", arg: 2, scope: !1091, file: !2, line: 428, type: !167)
!1095 = !DILocation(line: 428, column: 23, scope: !1091)
!1096 = !DILocalVariable(name: "cfg", scope: !1091, file: !2, line: 430, type: !1015)
!1097 = !DILocation(line: 430, column: 34, scope: !1091)
!1098 = !DILocation(line: 430, column: 40, scope: !1091)
!1099 = !DILocation(line: 430, column: 45, scope: !1091)
!1100 = !DILocalVariable(name: "gpio", scope: !1091, file: !2, line: 431, type: !213)
!1101 = !DILocation(line: 431, column: 16, scope: !1091)
!1102 = !DILocation(line: 431, column: 39, scope: !1091)
!1103 = !DILocation(line: 431, column: 44, scope: !1091)
!1104 = !DILocation(line: 437, column: 19, scope: !1091)
!1105 = !DILocation(line: 437, column: 4, scope: !1091)
!1106 = !DILocation(line: 437, column: 10, scope: !1091)
!1107 = !DILocation(line: 437, column: 16, scope: !1091)
!1108 = !DILocation(line: 439, column: 2, scope: !1091)
!1109 = distinct !DISubprogram(name: "gpio_stm32_port_clear_bits_raw", scope: !2, file: !2, line: 442, type: !170, scopeLine: 444, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !524)
!1110 = !DILocalVariable(name: "dev", arg: 1, scope: !1109, file: !2, line: 442, type: !132)
!1111 = !DILocation(line: 442, column: 64, scope: !1109)
!1112 = !DILocalVariable(name: "pins", arg: 2, scope: !1109, file: !2, line: 443, type: !167)
!1113 = !DILocation(line: 443, column: 25, scope: !1109)
!1114 = !DILocalVariable(name: "cfg", scope: !1109, file: !2, line: 445, type: !1015)
!1115 = !DILocation(line: 445, column: 34, scope: !1109)
!1116 = !DILocation(line: 445, column: 40, scope: !1109)
!1117 = !DILocation(line: 445, column: 45, scope: !1109)
!1118 = !DILocalVariable(name: "gpio", scope: !1109, file: !2, line: 446, type: !213)
!1119 = !DILocation(line: 446, column: 16, scope: !1109)
!1120 = !DILocation(line: 446, column: 39, scope: !1109)
!1121 = !DILocation(line: 446, column: 44, scope: !1109)
!1122 = !DILocation(line: 456, column: 25, scope: !1109)
!1123 = !DILocation(line: 456, column: 31, scope: !1109)
!1124 = !DILocation(line: 456, column: 2, scope: !1109)
!1125 = !DILocation(line: 459, column: 2, scope: !1109)
!1126 = distinct !DISubprogram(name: "pm_device_runtime_put", scope: !998, file: !998, line: 185, type: !312, scopeLine: 186, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !524)
!1127 = !DILocalVariable(name: "dev", arg: 1, scope: !1126, file: !998, line: 185, type: !132)
!1128 = !DILocation(line: 185, column: 62, scope: !1126)
!1129 = !DILocation(line: 187, column: 9, scope: !1126)
!1130 = !DILocation(line: 188, column: 2, scope: !1126)
!1131 = distinct !DISubprogram(name: "gpio_stm32_init", scope: !2, file: !2, line: 697, type: !312, scopeLine: 698, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !524)
!1132 = !DILocalVariable(name: "dev", arg: 1, scope: !1131, file: !2, line: 697, type: !132)
!1133 = !DILocation(line: 697, column: 49, scope: !1131)
!1134 = !DILocalVariable(name: "data", scope: !1131, file: !2, line: 699, type: !1135)
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 32)
!1136 = !DILocation(line: 699, column: 26, scope: !1131)
!1137 = !DILocation(line: 699, column: 33, scope: !1131)
!1138 = !DILocation(line: 699, column: 38, scope: !1131)
!1139 = !DILocalVariable(name: "ret", scope: !1131, file: !2, line: 700, type: !123)
!1140 = !DILocation(line: 700, column: 6, scope: !1131)
!1141 = !DILocation(line: 702, column: 14, scope: !1131)
!1142 = !DILocation(line: 702, column: 2, scope: !1131)
!1143 = !DILocation(line: 702, column: 8, scope: !1131)
!1144 = !DILocation(line: 702, column: 12, scope: !1131)
!1145 = !DILocation(line: 704, column: 7, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1131, file: !2, line: 704, column: 6)
!1147 = !DILocation(line: 704, column: 6, scope: !1131)
!1148 = !DILocation(line: 705, column: 3, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1146, file: !2, line: 704, column: 47)
!1150 = !DILocation(line: 717, column: 33, scope: !1131)
!1151 = !DILocation(line: 717, column: 8, scope: !1131)
!1152 = !DILocation(line: 717, column: 6, scope: !1131)
!1153 = !DILocation(line: 718, column: 6, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !1131, file: !2, line: 718, column: 6)
!1155 = !DILocation(line: 718, column: 10, scope: !1154)
!1156 = !DILocation(line: 718, column: 6, scope: !1131)
!1157 = !DILocation(line: 719, column: 10, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1154, file: !2, line: 718, column: 15)
!1159 = !DILocation(line: 719, column: 3, scope: !1158)
!1160 = !DILocation(line: 722, column: 27, scope: !1131)
!1161 = !DILocation(line: 722, column: 2, scope: !1131)
!1162 = !DILocation(line: 723, column: 33, scope: !1131)
!1163 = !DILocation(line: 723, column: 8, scope: !1131)
!1164 = !DILocation(line: 725, column: 2, scope: !1131)
!1165 = !DILocation(line: 726, column: 1, scope: !1131)
!1166 = distinct !DISubprogram(name: "sys_sflist_is_empty", scope: !646, file: !646, line: 335, type: !1167, scopeLine: 335, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !524)
!1167 = !DISubroutineType(types: !1168)
!1168 = !{!152, !1169}
!1169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 32)
!1170 = !DILocalVariable(name: "list", arg: 1, scope: !1166, file: !646, line: 335, type: !1169)
!1171 = !DILocation(line: 335, column: 55, scope: !1166)
!1172 = !DILocation(line: 335, column: 92, scope: !1166)
!1173 = !DILocation(line: 335, column: 71, scope: !1166)
!1174 = !DILocation(line: 335, column: 98, scope: !1166)
!1175 = !DILocation(line: 335, column: 63, scope: !1166)
!1176 = distinct !DISubprogram(name: "sys_sflist_peek_head", scope: !646, file: !646, line: 255, type: !1177, scopeLine: 256, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !524)
!1177 = !DISubroutineType(types: !1178)
!1178 = !{!650, !1169}
!1179 = !DILocalVariable(name: "list", arg: 1, scope: !1176, file: !646, line: 255, type: !1169)
!1180 = !DILocation(line: 255, column: 64, scope: !1176)
!1181 = !DILocation(line: 257, column: 9, scope: !1176)
!1182 = !DILocation(line: 257, column: 15, scope: !1176)
!1183 = !DILocation(line: 257, column: 2, scope: !1176)
!1184 = distinct !DISubprogram(name: "stm32_pinval_get", scope: !2, file: !2, line: 137, type: !1185, scopeLine: 138, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !524)
!1185 = !DISubroutineType(types: !1186)
!1186 = !{!156, !123}
!1187 = !DILocalVariable(name: "pin", arg: 1, scope: !1184, file: !2, line: 137, type: !123)
!1188 = !DILocation(line: 137, column: 45, scope: !1184)
!1189 = !DILocalVariable(name: "pinval", scope: !1184, file: !2, line: 139, type: !156)
!1190 = !DILocation(line: 139, column: 11, scope: !1184)
!1191 = !DILocation(line: 149, column: 16, scope: !1184)
!1192 = !DILocation(line: 149, column: 13, scope: !1184)
!1193 = !DILocation(line: 149, column: 9, scope: !1184)
!1194 = !DILocation(line: 151, column: 9, scope: !1184)
!1195 = !DILocation(line: 151, column: 2, scope: !1184)
!1196 = distinct !DISubprogram(name: "z_stm32_hsem_lock", scope: !1197, file: !1197, line: 116, type: !1198, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !524)
!1197 = !DIFile(filename: "soc/arm/st_stm32/common/stm32_hsem.h", directory: "/home/sri/zephyrproject/zephyr")
!1198 = !DISubroutineType(types: !1199)
!1199 = !{null, !156, !156}
!1200 = !DILocalVariable(name: "hsem", arg: 1, scope: !1196, file: !1197, line: 116, type: !156)
!1201 = !DILocation(line: 116, column: 47, scope: !1196)
!1202 = !DILocalVariable(name: "retry", arg: 2, scope: !1196, file: !1197, line: 116, type: !156)
!1203 = !DILocation(line: 116, column: 62, scope: !1196)
!1204 = !DILocation(line: 130, column: 1, scope: !1196)
!1205 = distinct !DISubprogram(name: "LL_GPIO_SetPinOutputType", scope: !1206, file: !1206, line: 335, type: !1207, scopeLine: 336, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !524)
!1206 = !DIFile(filename: "modules/hal/stm32/stm32cube/stm32f0xx/drivers/include/stm32f0xx_ll_gpio.h", directory: "/home/sri/zephyrproject")
!1207 = !DISubroutineType(types: !1208)
!1208 = !{null, !213, !156, !156}
!1209 = !DILocalVariable(name: "GPIOx", arg: 1, scope: !1205, file: !1206, line: 335, type: !213)
!1210 = !DILocation(line: 335, column: 61, scope: !1205)
!1211 = !DILocalVariable(name: "PinMask", arg: 2, scope: !1205, file: !1206, line: 335, type: !156)
!1212 = !DILocation(line: 335, column: 77, scope: !1205)
!1213 = !DILocalVariable(name: "OutputType", arg: 3, scope: !1205, file: !1206, line: 335, type: !156)
!1214 = !DILocation(line: 335, column: 95, scope: !1205)
!1215 = !DILocation(line: 337, column: 30, scope: !1205)
!1216 = !DILocation(line: 337, column: 37, scope: !1205)
!1217 = !DILocation(line: 337, column: 52, scope: !1205)
!1218 = !DILocation(line: 337, column: 50, scope: !1205)
!1219 = !DILocation(line: 337, column: 47, scope: !1205)
!1220 = !DILocation(line: 337, column: 67, scope: !1205)
!1221 = !DILocation(line: 337, column: 77, scope: !1205)
!1222 = !DILocation(line: 337, column: 75, scope: !1205)
!1223 = !DILocation(line: 337, column: 63, scope: !1205)
!1224 = !DILocation(line: 337, column: 6, scope: !1205)
!1225 = !DILocation(line: 337, column: 13, scope: !1205)
!1226 = !DILocation(line: 337, column: 22, scope: !1205)
!1227 = !DILocation(line: 338, column: 1, scope: !1205)
!1228 = distinct !DISubprogram(name: "LL_GPIO_SetPinSpeed", scope: !1206, file: !1206, line: 405, type: !1207, scopeLine: 406, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !524)
!1229 = !DILocalVariable(name: "GPIOx", arg: 1, scope: !1228, file: !1206, line: 405, type: !213)
!1230 = !DILocation(line: 405, column: 56, scope: !1228)
!1231 = !DILocalVariable(name: "Pin", arg: 2, scope: !1228, file: !1206, line: 405, type: !156)
!1232 = !DILocation(line: 405, column: 72, scope: !1228)
!1233 = !DILocalVariable(name: "Speed", arg: 3, scope: !1228, file: !1206, line: 405, type: !156)
!1234 = !DILocation(line: 405, column: 86, scope: !1228)
!1235 = !DILocation(line: 407, column: 31, scope: !1228)
!1236 = !DILocation(line: 407, column: 38, scope: !1228)
!1237 = !DILocation(line: 407, column: 56, scope: !1228)
!1238 = !DILocation(line: 407, column: 62, scope: !1228)
!1239 = !DILocation(line: 407, column: 60, scope: !1228)
!1240 = !DILocation(line: 407, column: 67, scope: !1228)
!1241 = !DILocation(line: 407, column: 52, scope: !1228)
!1242 = !DILocation(line: 407, column: 49, scope: !1228)
!1243 = !DILocation(line: 407, column: 94, scope: !1228)
!1244 = !DILocation(line: 407, column: 100, scope: !1228)
!1245 = !DILocation(line: 407, column: 98, scope: !1228)
!1246 = !DILocation(line: 407, column: 107, scope: !1228)
!1247 = !DILocation(line: 407, column: 105, scope: !1228)
!1248 = !DILocation(line: 407, column: 89, scope: !1228)
!1249 = !DILocation(line: 407, column: 6, scope: !1228)
!1250 = !DILocation(line: 407, column: 13, scope: !1228)
!1251 = !DILocation(line: 407, column: 23, scope: !1228)
!1252 = !DILocation(line: 408, column: 1, scope: !1228)
!1253 = distinct !DISubprogram(name: "LL_GPIO_SetPinPull", scope: !1206, file: !1206, line: 473, type: !1207, scopeLine: 474, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !524)
!1254 = !DILocalVariable(name: "GPIOx", arg: 1, scope: !1253, file: !1206, line: 473, type: !213)
!1255 = !DILocation(line: 473, column: 55, scope: !1253)
!1256 = !DILocalVariable(name: "Pin", arg: 2, scope: !1253, file: !1206, line: 473, type: !156)
!1257 = !DILocation(line: 473, column: 71, scope: !1253)
!1258 = !DILocalVariable(name: "Pull", arg: 3, scope: !1253, file: !1206, line: 473, type: !156)
!1259 = !DILocation(line: 473, column: 85, scope: !1253)
!1260 = !DILocation(line: 475, column: 29, scope: !1253)
!1261 = !DILocation(line: 475, column: 36, scope: !1253)
!1262 = !DILocation(line: 475, column: 52, scope: !1253)
!1263 = !DILocation(line: 475, column: 58, scope: !1253)
!1264 = !DILocation(line: 475, column: 56, scope: !1253)
!1265 = !DILocation(line: 475, column: 63, scope: !1253)
!1266 = !DILocation(line: 475, column: 48, scope: !1253)
!1267 = !DILocation(line: 475, column: 45, scope: !1253)
!1268 = !DILocation(line: 475, column: 90, scope: !1253)
!1269 = !DILocation(line: 475, column: 96, scope: !1253)
!1270 = !DILocation(line: 475, column: 94, scope: !1253)
!1271 = !DILocation(line: 475, column: 103, scope: !1253)
!1272 = !DILocation(line: 475, column: 101, scope: !1253)
!1273 = !DILocation(line: 475, column: 85, scope: !1253)
!1274 = !DILocation(line: 475, column: 6, scope: !1253)
!1275 = !DILocation(line: 475, column: 13, scope: !1253)
!1276 = !DILocation(line: 475, column: 21, scope: !1253)
!1277 = !DILocation(line: 476, column: 1, scope: !1253)
!1278 = distinct !DISubprogram(name: "LL_GPIO_SetAFPin_0_7", scope: !1206, file: !1206, line: 536, type: !1207, scopeLine: 537, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !524)
!1279 = !DILocalVariable(name: "GPIOx", arg: 1, scope: !1278, file: !1206, line: 536, type: !213)
!1280 = !DILocation(line: 536, column: 57, scope: !1278)
!1281 = !DILocalVariable(name: "Pin", arg: 2, scope: !1278, file: !1206, line: 536, type: !156)
!1282 = !DILocation(line: 536, column: 73, scope: !1278)
!1283 = !DILocalVariable(name: "Alternate", arg: 3, scope: !1278, file: !1206, line: 536, type: !156)
!1284 = !DILocation(line: 536, column: 87, scope: !1278)
!1285 = !DILocation(line: 538, column: 30, scope: !1278)
!1286 = !DILocation(line: 538, column: 37, scope: !1278)
!1287 = !DILocation(line: 538, column: 56, scope: !1278)
!1288 = !DILocation(line: 538, column: 62, scope: !1278)
!1289 = !DILocation(line: 538, column: 60, scope: !1278)
!1290 = !DILocation(line: 538, column: 69, scope: !1278)
!1291 = !DILocation(line: 538, column: 67, scope: !1278)
!1292 = !DILocation(line: 538, column: 76, scope: !1278)
!1293 = !DILocation(line: 538, column: 74, scope: !1278)
!1294 = !DILocation(line: 538, column: 81, scope: !1278)
!1295 = !DILocation(line: 538, column: 50, scope: !1278)
!1296 = !DILocation(line: 538, column: 47, scope: !1278)
!1297 = !DILocation(line: 538, column: 110, scope: !1278)
!1298 = !DILocation(line: 538, column: 116, scope: !1278)
!1299 = !DILocation(line: 538, column: 114, scope: !1278)
!1300 = !DILocation(line: 538, column: 123, scope: !1278)
!1301 = !DILocation(line: 538, column: 121, scope: !1278)
!1302 = !DILocation(line: 538, column: 130, scope: !1278)
!1303 = !DILocation(line: 538, column: 128, scope: !1278)
!1304 = !DILocation(line: 538, column: 137, scope: !1278)
!1305 = !DILocation(line: 538, column: 135, scope: !1278)
!1306 = !DILocation(line: 538, column: 103, scope: !1278)
!1307 = !DILocation(line: 538, column: 6, scope: !1278)
!1308 = !DILocation(line: 538, column: 13, scope: !1278)
!1309 = !DILocation(line: 538, column: 22, scope: !1278)
!1310 = !DILocation(line: 540, column: 1, scope: !1278)
!1311 = distinct !DISubprogram(name: "LL_GPIO_SetAFPin_8_15", scope: !1206, file: !1206, line: 597, type: !1207, scopeLine: 598, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !524)
!1312 = !DILocalVariable(name: "GPIOx", arg: 1, scope: !1311, file: !1206, line: 597, type: !213)
!1313 = !DILocation(line: 597, column: 58, scope: !1311)
!1314 = !DILocalVariable(name: "Pin", arg: 2, scope: !1311, file: !1206, line: 597, type: !156)
!1315 = !DILocation(line: 597, column: 74, scope: !1311)
!1316 = !DILocalVariable(name: "Alternate", arg: 3, scope: !1311, file: !1206, line: 597, type: !156)
!1317 = !DILocation(line: 597, column: 88, scope: !1311)
!1318 = !DILocation(line: 599, column: 30, scope: !1311)
!1319 = !DILocation(line: 599, column: 37, scope: !1311)
!1320 = !DILocation(line: 599, column: 57, scope: !1311)
!1321 = !DILocation(line: 599, column: 61, scope: !1311)
!1322 = !DILocation(line: 599, column: 71, scope: !1311)
!1323 = !DILocation(line: 599, column: 75, scope: !1311)
!1324 = !DILocation(line: 599, column: 68, scope: !1311)
!1325 = !DILocation(line: 599, column: 86, scope: !1311)
!1326 = !DILocation(line: 599, column: 90, scope: !1311)
!1327 = !DILocation(line: 599, column: 83, scope: !1311)
!1328 = !DILocation(line: 599, column: 101, scope: !1311)
!1329 = !DILocation(line: 599, column: 105, scope: !1311)
!1330 = !DILocation(line: 599, column: 98, scope: !1311)
!1331 = !DILocation(line: 599, column: 113, scope: !1311)
!1332 = !DILocation(line: 599, column: 50, scope: !1311)
!1333 = !DILocation(line: 599, column: 47, scope: !1311)
!1334 = !DILocation(line: 599, column: 143, scope: !1311)
!1335 = !DILocation(line: 599, column: 147, scope: !1311)
!1336 = !DILocation(line: 599, column: 157, scope: !1311)
!1337 = !DILocation(line: 599, column: 161, scope: !1311)
!1338 = !DILocation(line: 599, column: 154, scope: !1311)
!1339 = !DILocation(line: 599, column: 172, scope: !1311)
!1340 = !DILocation(line: 599, column: 176, scope: !1311)
!1341 = !DILocation(line: 599, column: 169, scope: !1311)
!1342 = !DILocation(line: 599, column: 187, scope: !1311)
!1343 = !DILocation(line: 599, column: 191, scope: !1311)
!1344 = !DILocation(line: 599, column: 184, scope: !1311)
!1345 = !DILocation(line: 599, column: 201, scope: !1311)
!1346 = !DILocation(line: 599, column: 199, scope: !1311)
!1347 = !DILocation(line: 599, column: 135, scope: !1311)
!1348 = !DILocation(line: 599, column: 6, scope: !1311)
!1349 = !DILocation(line: 599, column: 13, scope: !1311)
!1350 = !DILocation(line: 599, column: 22, scope: !1311)
!1351 = !DILocation(line: 601, column: 1, scope: !1311)
!1352 = distinct !DISubprogram(name: "LL_GPIO_SetPinMode", scope: !1206, file: !1206, line: 267, type: !1207, scopeLine: 268, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !524)
!1353 = !DILocalVariable(name: "GPIOx", arg: 1, scope: !1352, file: !1206, line: 267, type: !213)
!1354 = !DILocation(line: 267, column: 55, scope: !1352)
!1355 = !DILocalVariable(name: "Pin", arg: 2, scope: !1352, file: !1206, line: 267, type: !156)
!1356 = !DILocation(line: 267, column: 71, scope: !1352)
!1357 = !DILocalVariable(name: "Mode", arg: 3, scope: !1352, file: !1206, line: 267, type: !156)
!1358 = !DILocation(line: 267, column: 85, scope: !1352)
!1359 = !DILocation(line: 269, column: 29, scope: !1352)
!1360 = !DILocation(line: 269, column: 36, scope: !1352)
!1361 = !DILocation(line: 269, column: 52, scope: !1352)
!1362 = !DILocation(line: 269, column: 58, scope: !1352)
!1363 = !DILocation(line: 269, column: 56, scope: !1352)
!1364 = !DILocation(line: 269, column: 63, scope: !1352)
!1365 = !DILocation(line: 269, column: 48, scope: !1352)
!1366 = !DILocation(line: 269, column: 45, scope: !1352)
!1367 = !DILocation(line: 269, column: 90, scope: !1352)
!1368 = !DILocation(line: 269, column: 96, scope: !1352)
!1369 = !DILocation(line: 269, column: 94, scope: !1352)
!1370 = !DILocation(line: 269, column: 103, scope: !1352)
!1371 = !DILocation(line: 269, column: 101, scope: !1352)
!1372 = !DILocation(line: 269, column: 85, scope: !1352)
!1373 = !DILocation(line: 269, column: 6, scope: !1352)
!1374 = !DILocation(line: 269, column: 13, scope: !1352)
!1375 = !DILocation(line: 269, column: 21, scope: !1352)
!1376 = !DILocation(line: 270, column: 1, scope: !1352)
!1377 = distinct !DISubprogram(name: "z_stm32_hsem_unlock", scope: !1197, file: !1197, line: 151, type: !1378, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !524)
!1378 = !DISubroutineType(types: !1379)
!1379 = !{null, !156}
!1380 = !DILocalVariable(name: "hsem", arg: 1, scope: !1377, file: !1197, line: 151, type: !156)
!1381 = !DILocation(line: 151, column: 49, scope: !1377)
!1382 = !DILocation(line: 157, column: 1, scope: !1377)
!1383 = distinct !DISubprogram(name: "LL_GPIO_ResetOutputPin", scope: !1206, file: !1206, line: 867, type: !1384, scopeLine: 868, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !524)
!1384 = !DISubroutineType(types: !1385)
!1385 = !{null, !213, !156}
!1386 = !DILocalVariable(name: "GPIOx", arg: 1, scope: !1383, file: !1206, line: 867, type: !213)
!1387 = !DILocation(line: 867, column: 59, scope: !1383)
!1388 = !DILocalVariable(name: "PinMask", arg: 2, scope: !1383, file: !1206, line: 867, type: !156)
!1389 = !DILocation(line: 867, column: 75, scope: !1383)
!1390 = !DILocation(line: 869, column: 20, scope: !1383)
!1391 = !DILocation(line: 869, column: 5, scope: !1383)
!1392 = !DILocation(line: 869, column: 12, scope: !1383)
!1393 = !DILocation(line: 869, column: 17, scope: !1383)
!1394 = !DILocation(line: 870, column: 1, scope: !1383)
!1395 = distinct !DISubprogram(name: "gpio_stm32_config", scope: !2, file: !2, line: 512, type: !130, scopeLine: 514, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !524)
!1396 = !DILocalVariable(name: "dev", arg: 1, scope: !1395, file: !2, line: 512, type: !132)
!1397 = !DILocation(line: 512, column: 51, scope: !1395)
!1398 = !DILocalVariable(name: "pin", arg: 2, scope: !1395, file: !2, line: 513, type: !154)
!1399 = !DILocation(line: 513, column: 20, scope: !1395)
!1400 = !DILocalVariable(name: "flags", arg: 3, scope: !1395, file: !2, line: 513, type: !155)
!1401 = !DILocation(line: 513, column: 38, scope: !1395)
!1402 = !DILocalVariable(name: "err", scope: !1395, file: !2, line: 515, type: !123)
!1403 = !DILocation(line: 515, column: 6, scope: !1395)
!1404 = !DILocalVariable(name: "pincfg", scope: !1395, file: !2, line: 516, type: !123)
!1405 = !DILocation(line: 516, column: 6, scope: !1395)
!1406 = !DILocation(line: 521, column: 33, scope: !1395)
!1407 = !DILocation(line: 521, column: 8, scope: !1395)
!1408 = !DILocation(line: 521, column: 6, scope: !1395)
!1409 = !DILocation(line: 522, column: 6, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1395, file: !2, line: 522, column: 6)
!1411 = !DILocation(line: 522, column: 10, scope: !1410)
!1412 = !DILocation(line: 522, column: 6, scope: !1395)
!1413 = !DILocation(line: 523, column: 10, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !1410, file: !2, line: 522, column: 16)
!1415 = !DILocation(line: 523, column: 3, scope: !1414)
!1416 = !DILocation(line: 527, column: 30, scope: !1395)
!1417 = !DILocation(line: 527, column: 8, scope: !1395)
!1418 = !DILocation(line: 527, column: 6, scope: !1395)
!1419 = !DILocation(line: 528, column: 6, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1395, file: !2, line: 528, column: 6)
!1421 = !DILocation(line: 528, column: 10, scope: !1420)
!1422 = !DILocation(line: 528, column: 6, scope: !1395)
!1423 = !DILocation(line: 529, column: 10, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1420, file: !2, line: 528, column: 15)
!1425 = !DILocation(line: 529, column: 3, scope: !1424)
!1426 = !DILocation(line: 532, column: 7, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !1395, file: !2, line: 532, column: 6)
!1428 = !DILocation(line: 532, column: 13, scope: !1427)
!1429 = !DILocation(line: 532, column: 27, scope: !1427)
!1430 = !DILocation(line: 532, column: 6, scope: !1395)
!1431 = !DILocation(line: 533, column: 8, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1433, file: !2, line: 533, column: 7)
!1433 = distinct !DILexicalBlock(scope: !1427, file: !2, line: 532, column: 33)
!1434 = !DILocation(line: 533, column: 14, scope: !1432)
!1435 = !DILocation(line: 533, column: 28, scope: !1432)
!1436 = !DILocation(line: 533, column: 7, scope: !1433)
!1437 = !DILocation(line: 534, column: 33, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !1432, file: !2, line: 533, column: 34)
!1439 = !DILocation(line: 534, column: 47, scope: !1438)
!1440 = !DILocation(line: 534, column: 46, scope: !1438)
!1441 = !DILocation(line: 534, column: 43, scope: !1438)
!1442 = !DILocation(line: 534, column: 4, scope: !1438)
!1443 = !DILocation(line: 535, column: 3, scope: !1438)
!1444 = !DILocation(line: 535, column: 15, scope: !1445)
!1445 = distinct !DILexicalBlock(scope: !1432, file: !2, line: 535, column: 14)
!1446 = !DILocation(line: 535, column: 21, scope: !1445)
!1447 = !DILocation(line: 535, column: 35, scope: !1445)
!1448 = !DILocation(line: 535, column: 14, scope: !1432)
!1449 = !DILocation(line: 536, column: 35, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !1445, file: !2, line: 535, column: 41)
!1451 = !DILocation(line: 536, column: 49, scope: !1450)
!1452 = !DILocation(line: 536, column: 48, scope: !1450)
!1453 = !DILocation(line: 536, column: 45, scope: !1450)
!1454 = !DILocation(line: 536, column: 4, scope: !1450)
!1455 = !DILocation(line: 537, column: 3, scope: !1450)
!1456 = !DILocation(line: 538, column: 2, scope: !1433)
!1457 = !DILocation(line: 540, column: 27, scope: !1395)
!1458 = !DILocation(line: 540, column: 32, scope: !1395)
!1459 = !DILocation(line: 540, column: 37, scope: !1395)
!1460 = !DILocation(line: 540, column: 2, scope: !1395)
!1461 = !DILocation(line: 543, column: 8, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1395, file: !2, line: 543, column: 6)
!1463 = !DILocation(line: 543, column: 14, scope: !1462)
!1464 = !DILocation(line: 543, column: 28, scope: !1462)
!1465 = !DILocation(line: 543, column: 34, scope: !1462)
!1466 = !DILocation(line: 543, column: 39, scope: !1462)
!1467 = !DILocation(line: 543, column: 45, scope: !1462)
!1468 = !DILocation(line: 543, column: 59, scope: !1462)
!1469 = !DILocation(line: 543, column: 6, scope: !1395)
!1470 = !DILocation(line: 544, column: 31, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !1462, file: !2, line: 543, column: 66)
!1472 = !DILocation(line: 544, column: 9, scope: !1471)
!1473 = !DILocation(line: 544, column: 7, scope: !1471)
!1474 = !DILocation(line: 545, column: 7, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1471, file: !2, line: 545, column: 7)
!1476 = !DILocation(line: 545, column: 11, scope: !1475)
!1477 = !DILocation(line: 545, column: 7, scope: !1471)
!1478 = !DILocation(line: 546, column: 11, scope: !1479)
!1479 = distinct !DILexicalBlock(scope: !1475, file: !2, line: 545, column: 16)
!1480 = !DILocation(line: 546, column: 4, scope: !1479)
!1481 = !DILocation(line: 548, column: 2, scope: !1471)
!1482 = !DILocation(line: 550, column: 2, scope: !1395)
!1483 = !DILocation(line: 551, column: 1, scope: !1395)
!1484 = distinct !DISubprogram(name: "gpio_stm32_port_get_raw", scope: !2, file: !2, line: 399, type: !1485, scopeLine: 400, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !524)
!1485 = !DISubroutineType(types: !1486)
!1486 = !{!123, !132, !277}
!1487 = !DILocalVariable(name: "dev", arg: 1, scope: !1484, file: !2, line: 399, type: !132)
!1488 = !DILocation(line: 399, column: 57, scope: !1484)
!1489 = !DILocalVariable(name: "value", arg: 2, scope: !1484, file: !2, line: 399, type: !277)
!1490 = !DILocation(line: 399, column: 72, scope: !1484)
!1491 = !DILocalVariable(name: "cfg", scope: !1484, file: !2, line: 401, type: !1015)
!1492 = !DILocation(line: 401, column: 34, scope: !1484)
!1493 = !DILocation(line: 401, column: 40, scope: !1484)
!1494 = !DILocation(line: 401, column: 45, scope: !1484)
!1495 = !DILocalVariable(name: "gpio", scope: !1484, file: !2, line: 402, type: !213)
!1496 = !DILocation(line: 402, column: 16, scope: !1484)
!1497 = !DILocation(line: 402, column: 39, scope: !1484)
!1498 = !DILocation(line: 402, column: 44, scope: !1484)
!1499 = !DILocation(line: 404, column: 33, scope: !1484)
!1500 = !DILocation(line: 404, column: 11, scope: !1484)
!1501 = !DILocation(line: 404, column: 3, scope: !1484)
!1502 = !DILocation(line: 404, column: 9, scope: !1484)
!1503 = !DILocation(line: 406, column: 2, scope: !1484)
!1504 = distinct !DISubprogram(name: "gpio_stm32_port_set_masked_raw", scope: !2, file: !2, line: 409, type: !165, scopeLine: 412, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !524)
!1505 = !DILocalVariable(name: "dev", arg: 1, scope: !1504, file: !2, line: 409, type: !132)
!1506 = !DILocation(line: 409, column: 64, scope: !1504)
!1507 = !DILocalVariable(name: "mask", arg: 2, scope: !1504, file: !2, line: 410, type: !167)
!1508 = !DILocation(line: 410, column: 25, scope: !1504)
!1509 = !DILocalVariable(name: "value", arg: 3, scope: !1504, file: !2, line: 411, type: !162)
!1510 = !DILocation(line: 411, column: 26, scope: !1504)
!1511 = !DILocalVariable(name: "cfg", scope: !1504, file: !2, line: 413, type: !1015)
!1512 = !DILocation(line: 413, column: 34, scope: !1504)
!1513 = !DILocation(line: 413, column: 40, scope: !1504)
!1514 = !DILocation(line: 413, column: 45, scope: !1504)
!1515 = !DILocalVariable(name: "gpio", scope: !1504, file: !2, line: 414, type: !213)
!1516 = !DILocation(line: 414, column: 16, scope: !1504)
!1517 = !DILocation(line: 414, column: 39, scope: !1504)
!1518 = !DILocation(line: 414, column: 44, scope: !1504)
!1519 = !DILocalVariable(name: "port_value", scope: !1504, file: !2, line: 415, type: !156)
!1520 = !DILocation(line: 415, column: 11, scope: !1504)
!1521 = !DILocation(line: 417, column: 2, scope: !1504)
!1522 = !DILocation(line: 419, column: 38, scope: !1504)
!1523 = !DILocation(line: 419, column: 15, scope: !1504)
!1524 = !DILocation(line: 419, column: 13, scope: !1504)
!1525 = !DILocation(line: 420, column: 26, scope: !1504)
!1526 = !DILocation(line: 420, column: 33, scope: !1504)
!1527 = !DILocation(line: 420, column: 47, scope: !1504)
!1528 = !DILocation(line: 420, column: 46, scope: !1504)
!1529 = !DILocation(line: 420, column: 44, scope: !1504)
!1530 = !DILocation(line: 420, column: 56, scope: !1504)
!1531 = !DILocation(line: 420, column: 63, scope: !1504)
!1532 = !DILocation(line: 420, column: 61, scope: !1504)
!1533 = !DILocation(line: 420, column: 53, scope: !1504)
!1534 = !DILocation(line: 420, column: 2, scope: !1504)
!1535 = !DILocation(line: 422, column: 2, scope: !1504)
!1536 = !DILocation(line: 424, column: 2, scope: !1504)
!1537 = distinct !DISubprogram(name: "gpio_stm32_port_toggle_bits", scope: !2, file: !2, line: 462, type: !170, scopeLine: 464, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !524)
!1538 = !DILocalVariable(name: "dev", arg: 1, scope: !1537, file: !2, line: 462, type: !132)
!1539 = !DILocation(line: 462, column: 61, scope: !1537)
!1540 = !DILocalVariable(name: "pins", arg: 2, scope: !1537, file: !2, line: 463, type: !167)
!1541 = !DILocation(line: 463, column: 29, scope: !1537)
!1542 = !DILocalVariable(name: "cfg", scope: !1537, file: !2, line: 465, type: !1015)
!1543 = !DILocation(line: 465, column: 34, scope: !1537)
!1544 = !DILocation(line: 465, column: 40, scope: !1537)
!1545 = !DILocation(line: 465, column: 45, scope: !1537)
!1546 = !DILocalVariable(name: "gpio", scope: !1537, file: !2, line: 466, type: !213)
!1547 = !DILocation(line: 466, column: 16, scope: !1537)
!1548 = !DILocation(line: 466, column: 39, scope: !1537)
!1549 = !DILocation(line: 466, column: 44, scope: !1537)
!1550 = !DILocation(line: 472, column: 2, scope: !1537)
!1551 = !DILocation(line: 473, column: 20, scope: !1537)
!1552 = !DILocation(line: 473, column: 26, scope: !1537)
!1553 = !DILocation(line: 473, column: 34, scope: !1537)
!1554 = !DILocation(line: 473, column: 32, scope: !1537)
!1555 = !DILocation(line: 473, column: 4, scope: !1537)
!1556 = !DILocation(line: 473, column: 10, scope: !1537)
!1557 = !DILocation(line: 473, column: 15, scope: !1537)
!1558 = !DILocation(line: 474, column: 2, scope: !1537)
!1559 = !DILocation(line: 476, column: 2, scope: !1537)
!1560 = distinct !DISubprogram(name: "gpio_stm32_pin_interrupt_configure", scope: !2, file: !2, line: 583, type: !176, scopeLine: 587, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !524)
!1561 = !DILocalVariable(name: "dev", arg: 1, scope: !1560, file: !2, line: 583, type: !132)
!1562 = !DILocation(line: 583, column: 68, scope: !1560)
!1563 = !DILocalVariable(name: "pin", arg: 2, scope: !1560, file: !2, line: 584, type: !154)
!1564 = !DILocation(line: 584, column: 23, scope: !1560)
!1565 = !DILocalVariable(name: "mode", arg: 3, scope: !1560, file: !2, line: 585, type: !95)
!1566 = !DILocation(line: 585, column: 31, scope: !1560)
!1567 = !DILocalVariable(name: "trig", arg: 4, scope: !1560, file: !2, line: 586, type: !102)
!1568 = !DILocation(line: 586, column: 31, scope: !1560)
!1569 = !DILocalVariable(name: "cfg", scope: !1560, file: !2, line: 588, type: !1015)
!1570 = !DILocation(line: 588, column: 34, scope: !1560)
!1571 = !DILocation(line: 588, column: 40, scope: !1560)
!1572 = !DILocation(line: 588, column: 45, scope: !1560)
!1573 = !DILocalVariable(name: "data", scope: !1560, file: !2, line: 589, type: !1135)
!1574 = !DILocation(line: 589, column: 26, scope: !1560)
!1575 = !DILocation(line: 589, column: 33, scope: !1560)
!1576 = !DILocation(line: 589, column: 38, scope: !1560)
!1577 = !DILocalVariable(name: "edge", scope: !1560, file: !2, line: 590, type: !123)
!1578 = !DILocation(line: 590, column: 6, scope: !1560)
!1579 = !DILocalVariable(name: "err", scope: !1560, file: !2, line: 591, type: !123)
!1580 = !DILocation(line: 591, column: 6, scope: !1560)
!1581 = !DILocation(line: 603, column: 6, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !1560, file: !2, line: 603, column: 6)
!1583 = !DILocation(line: 603, column: 11, scope: !1582)
!1584 = !DILocation(line: 603, column: 6, scope: !1560)
!1585 = !DILocation(line: 604, column: 34, scope: !1586)
!1586 = distinct !DILexicalBlock(scope: !1587, file: !2, line: 604, column: 7)
!1587 = distinct !DILexicalBlock(scope: !1582, file: !2, line: 603, column: 38)
!1588 = !DILocation(line: 604, column: 7, scope: !1586)
!1589 = !DILocation(line: 604, column: 42, scope: !1586)
!1590 = !DILocation(line: 604, column: 47, scope: !1586)
!1591 = !DILocation(line: 604, column: 39, scope: !1586)
!1592 = !DILocation(line: 604, column: 7, scope: !1587)
!1593 = !DILocation(line: 605, column: 23, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1586, file: !2, line: 604, column: 53)
!1595 = !DILocation(line: 605, column: 4, scope: !1594)
!1596 = !DILocation(line: 606, column: 30, scope: !1594)
!1597 = !DILocation(line: 606, column: 4, scope: !1594)
!1598 = !DILocation(line: 607, column: 23, scope: !1594)
!1599 = !DILocation(line: 607, column: 4, scope: !1594)
!1600 = !DILocation(line: 608, column: 3, scope: !1594)
!1601 = !DILocation(line: 610, column: 3, scope: !1587)
!1602 = !DILocation(line: 614, column: 6, scope: !1603)
!1603 = distinct !DILexicalBlock(scope: !1560, file: !2, line: 614, column: 6)
!1604 = !DILocation(line: 614, column: 11, scope: !1603)
!1605 = !DILocation(line: 614, column: 6, scope: !1560)
!1606 = !DILocation(line: 615, column: 7, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !1603, file: !2, line: 614, column: 35)
!1608 = !DILocation(line: 616, column: 3, scope: !1607)
!1609 = !DILocation(line: 619, column: 30, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !1560, file: !2, line: 619, column: 6)
!1611 = !DILocation(line: 619, column: 51, scope: !1610)
!1612 = !DILocation(line: 619, column: 6, scope: !1610)
!1613 = !DILocation(line: 619, column: 57, scope: !1610)
!1614 = !DILocation(line: 619, column: 6, scope: !1560)
!1615 = !DILocation(line: 620, column: 7, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1610, file: !2, line: 619, column: 63)
!1617 = !DILocation(line: 621, column: 3, scope: !1616)
!1618 = !DILocation(line: 624, column: 24, scope: !1560)
!1619 = !DILocation(line: 624, column: 29, scope: !1560)
!1620 = !DILocation(line: 624, column: 35, scope: !1560)
!1621 = !DILocation(line: 624, column: 2, scope: !1560)
!1622 = !DILocation(line: 626, column: 10, scope: !1560)
!1623 = !DILocation(line: 626, column: 2, scope: !1560)
!1624 = !DILocation(line: 628, column: 8, scope: !1625)
!1625 = distinct !DILexicalBlock(scope: !1560, file: !2, line: 626, column: 16)
!1626 = !DILocation(line: 629, column: 3, scope: !1625)
!1627 = !DILocation(line: 631, column: 8, scope: !1625)
!1628 = !DILocation(line: 632, column: 3, scope: !1625)
!1629 = !DILocation(line: 634, column: 8, scope: !1625)
!1630 = !DILocation(line: 635, column: 3, scope: !1625)
!1631 = !DILocation(line: 638, column: 21, scope: !1560)
!1632 = !DILocation(line: 638, column: 26, scope: !1560)
!1633 = !DILocation(line: 638, column: 2, scope: !1560)
!1634 = !DILocation(line: 640, column: 20, scope: !1560)
!1635 = !DILocation(line: 640, column: 2, scope: !1560)
!1636 = !DILabel(scope: !1560, name: "exit", file: !2, line: 642)
!1637 = !DILocation(line: 642, column: 1, scope: !1560)
!1638 = !DILocation(line: 643, column: 9, scope: !1560)
!1639 = !DILocation(line: 643, column: 2, scope: !1560)
!1640 = distinct !DISubprogram(name: "gpio_stm32_manage_callback", scope: !2, file: !2, line: 646, type: !180, scopeLine: 649, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !524)
!1641 = !DILocalVariable(name: "dev", arg: 1, scope: !1640, file: !2, line: 646, type: !132)
!1642 = !DILocation(line: 646, column: 60, scope: !1640)
!1643 = !DILocalVariable(name: "callback", arg: 2, scope: !1640, file: !2, line: 647, type: !182)
!1644 = !DILocation(line: 647, column: 33, scope: !1640)
!1645 = !DILocalVariable(name: "set", arg: 3, scope: !1640, file: !2, line: 648, type: !152)
!1646 = !DILocation(line: 648, column: 17, scope: !1640)
!1647 = !DILocalVariable(name: "data", scope: !1640, file: !2, line: 650, type: !1135)
!1648 = !DILocation(line: 650, column: 26, scope: !1640)
!1649 = !DILocation(line: 650, column: 33, scope: !1640)
!1650 = !DILocation(line: 650, column: 38, scope: !1640)
!1651 = !DILocation(line: 652, column: 31, scope: !1640)
!1652 = !DILocation(line: 652, column: 37, scope: !1640)
!1653 = !DILocation(line: 652, column: 41, scope: !1640)
!1654 = !DILocation(line: 652, column: 51, scope: !1640)
!1655 = !DILocation(line: 652, column: 9, scope: !1640)
!1656 = !DILocation(line: 652, column: 2, scope: !1640)
!1657 = distinct !DISubprogram(name: "gpio_stm32_flags_to_conf", scope: !2, file: !2, line: 47, type: !1658, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !524)
!1658 = !DISubroutineType(types: !1659)
!1659 = !{!123, !155, !1660}
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 32)
!1661 = !DILocalVariable(name: "flags", arg: 1, scope: !1657, file: !2, line: 47, type: !155)
!1662 = !DILocation(line: 47, column: 50, scope: !1657)
!1663 = !DILocalVariable(name: "pincfg", arg: 2, scope: !1657, file: !2, line: 47, type: !1660)
!1664 = !DILocation(line: 47, column: 62, scope: !1657)
!1665 = !DILocation(line: 50, column: 7, scope: !1666)
!1666 = distinct !DILexicalBlock(scope: !1657, file: !2, line: 50, column: 6)
!1667 = !DILocation(line: 50, column: 13, scope: !1666)
!1668 = !DILocation(line: 50, column: 27, scope: !1666)
!1669 = !DILocation(line: 50, column: 6, scope: !1657)
!1670 = !DILocation(line: 53, column: 4, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1666, file: !2, line: 50, column: 33)
!1672 = !DILocation(line: 53, column: 11, scope: !1671)
!1673 = !DILocation(line: 55, column: 8, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1671, file: !2, line: 55, column: 7)
!1675 = !DILocation(line: 55, column: 14, scope: !1674)
!1676 = !DILocation(line: 55, column: 26, scope: !1674)
!1677 = !DILocation(line: 55, column: 7, scope: !1671)
!1678 = !DILocation(line: 56, column: 8, scope: !1679)
!1679 = distinct !DILexicalBlock(scope: !1680, file: !2, line: 56, column: 8)
!1680 = distinct !DILexicalBlock(scope: !1674, file: !2, line: 55, column: 32)
!1681 = !DILocation(line: 56, column: 14, scope: !1679)
!1682 = !DILocation(line: 56, column: 8, scope: !1680)
!1683 = !DILocation(line: 57, column: 6, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1679, file: !2, line: 56, column: 26)
!1685 = !DILocation(line: 57, column: 13, scope: !1684)
!1686 = !DILocation(line: 58, column: 4, scope: !1684)
!1687 = !DILocation(line: 60, column: 5, scope: !1688)
!1688 = distinct !DILexicalBlock(scope: !1679, file: !2, line: 58, column: 11)
!1689 = !DILocation(line: 62, column: 3, scope: !1680)
!1690 = !DILocation(line: 63, column: 5, scope: !1691)
!1691 = distinct !DILexicalBlock(scope: !1674, file: !2, line: 62, column: 10)
!1692 = !DILocation(line: 63, column: 12, scope: !1691)
!1693 = !DILocation(line: 66, column: 8, scope: !1694)
!1694 = distinct !DILexicalBlock(scope: !1671, file: !2, line: 66, column: 7)
!1695 = !DILocation(line: 66, column: 14, scope: !1694)
!1696 = !DILocation(line: 66, column: 26, scope: !1694)
!1697 = !DILocation(line: 66, column: 7, scope: !1671)
!1698 = !DILocation(line: 67, column: 5, scope: !1699)
!1699 = distinct !DILexicalBlock(scope: !1694, file: !2, line: 66, column: 32)
!1700 = !DILocation(line: 67, column: 12, scope: !1699)
!1701 = !DILocation(line: 68, column: 3, scope: !1699)
!1702 = !DILocation(line: 68, column: 15, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !1694, file: !2, line: 68, column: 14)
!1704 = !DILocation(line: 68, column: 21, scope: !1703)
!1705 = !DILocation(line: 68, column: 33, scope: !1703)
!1706 = !DILocation(line: 68, column: 14, scope: !1694)
!1707 = !DILocation(line: 69, column: 5, scope: !1708)
!1708 = distinct !DILexicalBlock(scope: !1703, file: !2, line: 68, column: 39)
!1709 = !DILocation(line: 69, column: 12, scope: !1708)
!1710 = !DILocation(line: 70, column: 3, scope: !1708)
!1711 = !DILocation(line: 72, column: 2, scope: !1671)
!1712 = !DILocation(line: 72, column: 14, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1666, file: !2, line: 72, column: 13)
!1714 = !DILocation(line: 72, column: 20, scope: !1713)
!1715 = !DILocation(line: 72, column: 34, scope: !1713)
!1716 = !DILocation(line: 72, column: 13, scope: !1666)
!1717 = !DILocation(line: 75, column: 4, scope: !1718)
!1718 = distinct !DILexicalBlock(scope: !1713, file: !2, line: 72, column: 40)
!1719 = !DILocation(line: 75, column: 11, scope: !1718)
!1720 = !DILocation(line: 77, column: 8, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1718, file: !2, line: 77, column: 7)
!1722 = !DILocation(line: 77, column: 14, scope: !1721)
!1723 = !DILocation(line: 77, column: 26, scope: !1721)
!1724 = !DILocation(line: 77, column: 7, scope: !1718)
!1725 = !DILocation(line: 78, column: 5, scope: !1726)
!1726 = distinct !DILexicalBlock(scope: !1721, file: !2, line: 77, column: 32)
!1727 = !DILocation(line: 78, column: 12, scope: !1726)
!1728 = !DILocation(line: 79, column: 3, scope: !1726)
!1729 = !DILocation(line: 79, column: 15, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1721, file: !2, line: 79, column: 14)
!1731 = !DILocation(line: 79, column: 21, scope: !1730)
!1732 = !DILocation(line: 79, column: 33, scope: !1730)
!1733 = !DILocation(line: 79, column: 14, scope: !1721)
!1734 = !DILocation(line: 80, column: 5, scope: !1735)
!1735 = distinct !DILexicalBlock(scope: !1730, file: !2, line: 79, column: 39)
!1736 = !DILocation(line: 80, column: 12, scope: !1735)
!1737 = !DILocation(line: 81, column: 3, scope: !1735)
!1738 = !DILocation(line: 82, column: 5, scope: !1739)
!1739 = distinct !DILexicalBlock(scope: !1730, file: !2, line: 81, column: 10)
!1740 = !DILocation(line: 82, column: 12, scope: !1739)
!1741 = !DILocation(line: 84, column: 2, scope: !1718)
!1742 = !DILocation(line: 86, column: 4, scope: !1743)
!1743 = distinct !DILexicalBlock(scope: !1713, file: !2, line: 84, column: 9)
!1744 = !DILocation(line: 86, column: 11, scope: !1743)
!1745 = !DILocation(line: 89, column: 2, scope: !1657)
!1746 = !DILocation(line: 90, column: 1, scope: !1657)
!1747 = distinct !DISubprogram(name: "LL_GPIO_ReadInputPort", scope: !1206, file: !1206, line: 728, type: !1748, scopeLine: 729, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !524)
!1748 = !DISubroutineType(types: !1749)
!1749 = !{!156, !213}
!1750 = !DILocalVariable(name: "GPIOx", arg: 1, scope: !1747, file: !1206, line: 728, type: !213)
!1751 = !DILocation(line: 728, column: 62, scope: !1747)
!1752 = !DILocation(line: 730, column: 23, scope: !1747)
!1753 = !DILocation(line: 730, column: 30, scope: !1747)
!1754 = !DILocation(line: 730, column: 3, scope: !1747)
!1755 = distinct !DISubprogram(name: "LL_GPIO_ReadOutputPort", scope: !1206, file: !1206, line: 780, type: !1748, scopeLine: 781, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !524)
!1756 = !DILocalVariable(name: "GPIOx", arg: 1, scope: !1755, file: !1206, line: 780, type: !213)
!1757 = !DILocation(line: 780, column: 63, scope: !1755)
!1758 = !DILocation(line: 782, column: 23, scope: !1755)
!1759 = !DILocation(line: 782, column: 30, scope: !1755)
!1760 = !DILocation(line: 782, column: 3, scope: !1755)
!1761 = distinct !DISubprogram(name: "LL_GPIO_WriteOutputPort", scope: !1206, file: !1206, line: 769, type: !1384, scopeLine: 770, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !524)
!1762 = !DILocalVariable(name: "GPIOx", arg: 1, scope: !1761, file: !1206, line: 769, type: !213)
!1763 = !DILocation(line: 769, column: 60, scope: !1761)
!1764 = !DILocalVariable(name: "PortValue", arg: 2, scope: !1761, file: !1206, line: 769, type: !156)
!1765 = !DILocation(line: 769, column: 76, scope: !1761)
!1766 = !DILocation(line: 771, column: 20, scope: !1761)
!1767 = !DILocation(line: 771, column: 5, scope: !1761)
!1768 = !DILocation(line: 771, column: 12, scope: !1761)
!1769 = !DILocation(line: 771, column: 17, scope: !1761)
!1770 = !DILocation(line: 772, column: 1, scope: !1761)
!1771 = distinct !DISubprogram(name: "gpio_stm32_get_exti_source", scope: !2, file: !2, line: 335, type: !1772, scopeLine: 336, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !524)
!1772 = !DISubroutineType(types: !1773)
!1773 = !{!123, !123}
!1774 = !DILocalVariable(name: "pin", arg: 1, scope: !1771, file: !2, line: 335, type: !123)
!1775 = !DILocation(line: 335, column: 43, scope: !1771)
!1776 = !DILocalVariable(name: "line", scope: !1771, file: !2, line: 337, type: !156)
!1777 = !DILocation(line: 337, column: 11, scope: !1771)
!1778 = !DILocation(line: 337, column: 46, scope: !1771)
!1779 = !DILocation(line: 337, column: 18, scope: !1771)
!1780 = !DILocalVariable(name: "port", scope: !1771, file: !2, line: 338, type: !123)
!1781 = !DILocation(line: 338, column: 6, scope: !1771)
!1782 = !DILocation(line: 345, column: 33, scope: !1771)
!1783 = !DILocation(line: 345, column: 9, scope: !1771)
!1784 = !DILocation(line: 345, column: 7, scope: !1771)
!1785 = !DILocation(line: 359, column: 9, scope: !1771)
!1786 = !DILocation(line: 359, column: 2, scope: !1771)
!1787 = distinct !DISubprogram(name: "gpio_stm32_isr", scope: !2, file: !2, line: 37, type: !1788, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !524)
!1788 = !DISubroutineType(types: !1789)
!1789 = !{null, !123, !122}
!1790 = !DILocalVariable(name: "line", arg: 1, scope: !1787, file: !2, line: 37, type: !123)
!1791 = !DILocation(line: 37, column: 32, scope: !1787)
!1792 = !DILocalVariable(name: "arg", arg: 2, scope: !1787, file: !2, line: 37, type: !122)
!1793 = !DILocation(line: 37, column: 44, scope: !1787)
!1794 = !DILocalVariable(name: "data", scope: !1787, file: !2, line: 39, type: !1135)
!1795 = !DILocation(line: 39, column: 26, scope: !1787)
!1796 = !DILocation(line: 39, column: 33, scope: !1787)
!1797 = !DILocation(line: 41, column: 23, scope: !1787)
!1798 = !DILocation(line: 41, column: 29, scope: !1787)
!1799 = !DILocation(line: 41, column: 33, scope: !1787)
!1800 = !DILocation(line: 41, column: 39, scope: !1787)
!1801 = !DILocation(line: 41, column: 53, scope: !1787)
!1802 = !DILocation(line: 41, column: 49, scope: !1787)
!1803 = !DILocation(line: 41, column: 2, scope: !1787)
!1804 = !DILocation(line: 42, column: 1, scope: !1787)
!1805 = distinct !DISubprogram(name: "gpio_stm32_enable_int", scope: !2, file: !2, line: 365, type: !1806, scopeLine: 366, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !524)
!1806 = !DISubroutineType(types: !1807)
!1807 = !{!123, !123, !123}
!1808 = !DILocalVariable(name: "port", arg: 1, scope: !1805, file: !2, line: 365, type: !123)
!1809 = !DILocation(line: 365, column: 38, scope: !1805)
!1810 = !DILocalVariable(name: "pin", arg: 2, scope: !1805, file: !2, line: 365, type: !123)
!1811 = !DILocation(line: 365, column: 48, scope: !1805)
!1812 = !DILocation(line: 394, column: 29, scope: !1805)
!1813 = !DILocation(line: 394, column: 35, scope: !1805)
!1814 = !DILocation(line: 394, column: 2, scope: !1805)
!1815 = !DILocation(line: 396, column: 2, scope: !1805)
!1816 = distinct !DISubprogram(name: "gpio_stm32_pin_to_exti_line", scope: !2, file: !2, line: 295, type: !1185, scopeLine: 296, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !524)
!1817 = !DILocalVariable(name: "pin", arg: 1, scope: !1816, file: !2, line: 295, type: !123)
!1818 = !DILocation(line: 295, column: 56, scope: !1816)
!1819 = !DILocation(line: 299, column: 11, scope: !1816)
!1820 = !DILocation(line: 299, column: 15, scope: !1816)
!1821 = !DILocation(line: 299, column: 19, scope: !1816)
!1822 = !DILocation(line: 299, column: 24, scope: !1816)
!1823 = !DILocation(line: 299, column: 34, scope: !1816)
!1824 = !DILocation(line: 299, column: 38, scope: !1816)
!1825 = !DILocation(line: 299, column: 31, scope: !1816)
!1826 = !DILocation(line: 299, column: 2, scope: !1816)
!1827 = distinct !DISubprogram(name: "LL_SYSCFG_GetEXTISource", scope: !1828, file: !1828, line: 675, type: !1829, scopeLine: 676, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !524)
!1828 = !DIFile(filename: "modules/hal/stm32/stm32cube/stm32f0xx/drivers/include/stm32f0xx_ll_system.h", directory: "/home/sri/zephyrproject")
!1829 = !DISubroutineType(types: !1830)
!1830 = !{!156, !156}
!1831 = !DILocalVariable(name: "Line", arg: 1, scope: !1827, file: !1828, line: 675, type: !156)
!1832 = !DILocation(line: 675, column: 59, scope: !1827)
!1833 = !DILocation(line: 677, column: 82, scope: !1827)
!1834 = !DILocation(line: 677, column: 87, scope: !1827)
!1835 = !DILocation(line: 677, column: 23, scope: !1827)
!1836 = !DILocation(line: 677, column: 120, scope: !1827)
!1837 = !DILocation(line: 677, column: 125, scope: !1827)
!1838 = !DILocation(line: 677, column: 116, scope: !1827)
!1839 = !DILocation(line: 677, column: 96, scope: !1827)
!1840 = !DILocation(line: 677, column: 139, scope: !1827)
!1841 = !DILocation(line: 677, column: 144, scope: !1827)
!1842 = !DILocation(line: 677, column: 135, scope: !1827)
!1843 = !DILocation(line: 677, column: 3, scope: !1827)
!1844 = distinct !DISubprogram(name: "gpio_fire_callbacks", scope: !1845, file: !1845, line: 85, type: !1846, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !524)
!1845 = !DIFile(filename: "include/zephyr/drivers/gpio/gpio_utils.h", directory: "/home/sri/zephyrproject/zephyr")
!1846 = !DISubroutineType(types: !1847)
!1847 = !{null, !1848, !132, !156}
!1848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 32)
!1849 = !DILocalVariable(name: "list", arg: 1, scope: !1844, file: !1845, line: 85, type: !1848)
!1850 = !DILocation(line: 85, column: 53, scope: !1844)
!1851 = !DILocalVariable(name: "port", arg: 2, scope: !1844, file: !1845, line: 86, type: !132)
!1852 = !DILocation(line: 86, column: 27, scope: !1844)
!1853 = !DILocalVariable(name: "pins", arg: 3, scope: !1844, file: !1845, line: 87, type: !156)
!1854 = !DILocation(line: 87, column: 15, scope: !1844)
!1855 = !DILocalVariable(name: "cb", scope: !1844, file: !1845, line: 89, type: !182)
!1856 = !DILocation(line: 89, column: 24, scope: !1844)
!1857 = !DILocalVariable(name: "tmp", scope: !1844, file: !1845, line: 89, type: !182)
!1858 = !DILocation(line: 89, column: 29, scope: !1844)
!1859 = !DILocation(line: 91, column: 34, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !1844, file: !1845, line: 91, column: 2)
!1861 = !DILocation(line: 91, column: 14, scope: !1860)
!1862 = !DILocation(line: 91, column: 13, scope: !1860)
!1863 = !DILocation(line: 91, column: 102, scope: !1864)
!1864 = distinct !DILexicalBlock(scope: !1860, file: !1845, line: 91, column: 44)
!1865 = !DILocation(line: 91, column: 82, scope: !1864)
!1866 = !DILocation(line: 91, column: 111, scope: !1864)
!1867 = !DILocation(line: 91, column: 44, scope: !1860)
!1868 = !DILocation(line: 91, column: 160, scope: !1864)
!1869 = !DILocation(line: 91, column: 10, scope: !1860)
!1870 = !DILocation(line: 91, column: 186, scope: !1860)
!1871 = !DILocation(line: 91, column: 185, scope: !1860)
!1872 = !DILocation(line: 91, column: 217, scope: !1860)
!1873 = !DILocation(line: 91, column: 222, scope: !1860)
!1874 = !DILocation(line: 91, column: 194, scope: !1860)
!1875 = !DILocation(line: 91, column: 193, scope: !1860)
!1876 = !DILocation(line: 91, column: 294, scope: !1877)
!1877 = distinct !DILexicalBlock(scope: !1860, file: !1845, line: 91, column: 233)
!1878 = !DILocation(line: 91, column: 299, scope: !1877)
!1879 = !DILocation(line: 91, column: 271, scope: !1877)
!1880 = !DILocation(line: 91, column: 309, scope: !1877)
!1881 = !DILocation(line: 91, column: 233, scope: !1860)
!1882 = !DILocation(line: 91, column: 358, scope: !1877)
!1883 = !DILocation(line: 91, column: 182, scope: !1860)
!1884 = !DILocation(line: 91, column: 7, scope: !1860)
!1885 = !DILocation(line: 91, column: 390, scope: !1886)
!1886 = distinct !DILexicalBlock(scope: !1860, file: !1845, line: 91, column: 2)
!1887 = !DILocation(line: 91, column: 393, scope: !1886)
!1888 = !DILocation(line: 91, column: 2, scope: !1860)
!1889 = !DILocation(line: 92, column: 7, scope: !1890)
!1890 = distinct !DILexicalBlock(scope: !1891, file: !1845, line: 92, column: 7)
!1891 = distinct !DILexicalBlock(scope: !1886, file: !1845, line: 91, column: 630)
!1892 = !DILocation(line: 92, column: 11, scope: !1890)
!1893 = !DILocation(line: 92, column: 22, scope: !1890)
!1894 = !DILocation(line: 92, column: 20, scope: !1890)
!1895 = !DILocation(line: 92, column: 7, scope: !1891)
!1896 = !DILocation(line: 94, column: 4, scope: !1897)
!1897 = distinct !DILexicalBlock(scope: !1890, file: !1845, line: 92, column: 28)
!1898 = !DILocation(line: 94, column: 8, scope: !1897)
!1899 = !DILocation(line: 94, column: 16, scope: !1897)
!1900 = !DILocation(line: 94, column: 22, scope: !1897)
!1901 = !DILocation(line: 94, column: 26, scope: !1897)
!1902 = !DILocation(line: 94, column: 30, scope: !1897)
!1903 = !DILocation(line: 94, column: 41, scope: !1897)
!1904 = !DILocation(line: 94, column: 39, scope: !1897)
!1905 = !DILocation(line: 95, column: 3, scope: !1897)
!1906 = !DILocation(line: 96, column: 2, scope: !1891)
!1907 = !DILocation(line: 91, column: 413, scope: !1886)
!1908 = !DILocation(line: 91, column: 411, scope: !1886)
!1909 = !DILocation(line: 91, column: 426, scope: !1886)
!1910 = !DILocation(line: 91, column: 425, scope: !1886)
!1911 = !DILocation(line: 91, column: 457, scope: !1886)
!1912 = !DILocation(line: 91, column: 462, scope: !1886)
!1913 = !DILocation(line: 91, column: 434, scope: !1886)
!1914 = !DILocation(line: 91, column: 433, scope: !1886)
!1915 = !DILocation(line: 91, column: 534, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !1886, file: !1845, line: 91, column: 473)
!1917 = !DILocation(line: 91, column: 539, scope: !1916)
!1918 = !DILocation(line: 91, column: 511, scope: !1916)
!1919 = !DILocation(line: 91, column: 549, scope: !1916)
!1920 = !DILocation(line: 91, column: 473, scope: !1886)
!1921 = !DILocation(line: 91, column: 598, scope: !1916)
!1922 = !DILocation(line: 91, column: 422, scope: !1886)
!1923 = !DILocation(line: 91, column: 2, scope: !1886)
!1924 = distinct !{!1924, !1888, !1925}
!1925 = !DILocation(line: 96, column: 2, scope: !1860)
!1926 = !DILocation(line: 97, column: 1, scope: !1844)
!1927 = distinct !DISubprogram(name: "sys_slist_peek_head", scope: !187, file: !187, line: 238, type: !1928, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !524)
!1928 = !DISubroutineType(types: !1929)
!1929 = !{!357, !1848}
!1930 = !DILocalVariable(name: "list", arg: 1, scope: !1927, file: !187, line: 238, type: !1848)
!1931 = !DILocation(line: 238, column: 61, scope: !1927)
!1932 = !DILocation(line: 240, column: 9, scope: !1927)
!1933 = !DILocation(line: 240, column: 15, scope: !1927)
!1934 = !DILocation(line: 240, column: 2, scope: !1927)
!1935 = distinct !DISubprogram(name: "sys_slist_peek_next", scope: !187, file: !187, line: 292, type: !1936, scopeLine: 292, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !524)
!1936 = !DISubroutineType(types: !1937)
!1937 = !{!357, !357}
!1938 = !DILocalVariable(name: "node", arg: 1, scope: !1935, file: !187, line: 292, type: !357)
!1939 = !DILocation(line: 292, column: 62, scope: !1935)
!1940 = !DILocation(line: 292, column: 77, scope: !1935)
!1941 = !DILocation(line: 292, column: 82, scope: !1935)
!1942 = !DILocation(line: 292, column: 127, scope: !1935)
!1943 = !DILocation(line: 292, column: 98, scope: !1935)
!1944 = !DILocation(line: 292, column: 70, scope: !1935)
!1945 = distinct !DISubprogram(name: "sys_slist_peek_next_no_check", scope: !187, file: !187, line: 281, type: !1936, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !524)
!1946 = !DILocalVariable(name: "node", arg: 1, scope: !1945, file: !187, line: 281, type: !357)
!1947 = !DILocation(line: 281, column: 71, scope: !1945)
!1948 = !DILocation(line: 281, column: 104, scope: !1945)
!1949 = !DILocation(line: 281, column: 86, scope: !1945)
!1950 = !DILocation(line: 281, column: 79, scope: !1945)
!1951 = distinct !DISubprogram(name: "z_snode_next_peek", scope: !187, file: !187, line: 211, type: !1936, scopeLine: 212, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !524)
!1952 = !DILocalVariable(name: "node", arg: 1, scope: !1951, file: !187, line: 211, type: !357)
!1953 = !DILocation(line: 211, column: 59, scope: !1951)
!1954 = !DILocation(line: 213, column: 9, scope: !1951)
!1955 = !DILocation(line: 213, column: 15, scope: !1951)
!1956 = !DILocation(line: 213, column: 2, scope: !1951)
!1957 = distinct !DISubprogram(name: "gpio_stm32_set_exti_source", scope: !2, file: !2, line: 307, type: !1958, scopeLine: 308, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !524)
!1958 = !DISubroutineType(types: !1959)
!1959 = !{null, !123, !123}
!1960 = !DILocalVariable(name: "port", arg: 1, scope: !1957, file: !2, line: 307, type: !123)
!1961 = !DILocation(line: 307, column: 44, scope: !1957)
!1962 = !DILocalVariable(name: "pin", arg: 2, scope: !1957, file: !2, line: 307, type: !123)
!1963 = !DILocation(line: 307, column: 54, scope: !1957)
!1964 = !DILocalVariable(name: "line", scope: !1957, file: !2, line: 309, type: !156)
!1965 = !DILocation(line: 309, column: 11, scope: !1957)
!1966 = !DILocation(line: 309, column: 46, scope: !1957)
!1967 = !DILocation(line: 309, column: 18, scope: !1957)
!1968 = !DILocation(line: 322, column: 2, scope: !1957)
!1969 = !DILocation(line: 330, column: 26, scope: !1957)
!1970 = !DILocation(line: 330, column: 32, scope: !1957)
!1971 = !DILocation(line: 330, column: 2, scope: !1957)
!1972 = !DILocation(line: 332, column: 2, scope: !1957)
!1973 = !DILocation(line: 333, column: 1, scope: !1957)
!1974 = distinct !DISubprogram(name: "LL_SYSCFG_SetEXTISource", scope: !1828, file: !1828, line: 625, type: !1198, scopeLine: 626, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !524)
!1975 = !DILocalVariable(name: "Port", arg: 1, scope: !1974, file: !1828, line: 625, type: !156)
!1976 = !DILocation(line: 625, column: 55, scope: !1974)
!1977 = !DILocalVariable(name: "Line", arg: 2, scope: !1974, file: !1828, line: 625, type: !156)
!1978 = !DILocation(line: 625, column: 70, scope: !1974)
!1979 = !DILocation(line: 627, column: 147, scope: !1974)
!1980 = !DILocation(line: 627, column: 152, scope: !1974)
!1981 = !DILocation(line: 627, column: 88, scope: !1974)
!1982 = !DILocation(line: 627, column: 188, scope: !1974)
!1983 = !DILocation(line: 627, column: 193, scope: !1974)
!1984 = !DILocation(line: 627, column: 184, scope: !1974)
!1985 = !DILocation(line: 627, column: 166, scope: !1974)
!1986 = !DILocation(line: 627, column: 163, scope: !1974)
!1987 = !DILocation(line: 627, column: 206, scope: !1974)
!1988 = !DILocation(line: 627, column: 215, scope: !1974)
!1989 = !DILocation(line: 627, column: 220, scope: !1974)
!1990 = !DILocation(line: 627, column: 211, scope: !1974)
!1991 = !DILocation(line: 627, column: 203, scope: !1974)
!1992 = !DILocation(line: 627, column: 65, scope: !1974)
!1993 = !DILocation(line: 627, column: 70, scope: !1974)
!1994 = !DILocation(line: 627, column: 6, scope: !1974)
!1995 = !DILocation(line: 627, column: 80, scope: !1974)
!1996 = !DILocation(line: 628, column: 1, scope: !1974)
!1997 = distinct !DISubprogram(name: "gpio_manage_callback", scope: !1845, file: !1845, line: 54, type: !1998, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !524)
!1998 = !DISubroutineType(types: !1999)
!1999 = !{!123, !1848, !182, !152}
!2000 = !DILocalVariable(name: "callbacks", arg: 1, scope: !1997, file: !1845, line: 54, type: !1848)
!2001 = !DILocation(line: 54, column: 53, scope: !1997)
!2002 = !DILocalVariable(name: "callback", arg: 2, scope: !1997, file: !1845, line: 55, type: !182)
!2003 = !DILocation(line: 55, column: 28, scope: !1997)
!2004 = !DILocalVariable(name: "set", arg: 3, scope: !1997, file: !1845, line: 56, type: !152)
!2005 = !DILocation(line: 56, column: 12, scope: !1997)
!2006 = !DILocation(line: 61, column: 26, scope: !2007)
!2007 = distinct !DILexicalBlock(scope: !1997, file: !1845, line: 61, column: 6)
!2008 = !DILocation(line: 61, column: 7, scope: !2007)
!2009 = !DILocation(line: 61, column: 6, scope: !1997)
!2010 = !DILocation(line: 62, column: 34, scope: !2011)
!2011 = distinct !DILexicalBlock(scope: !2012, file: !1845, line: 62, column: 7)
!2012 = distinct !DILexicalBlock(scope: !2007, file: !1845, line: 61, column: 38)
!2013 = !DILocation(line: 62, column: 46, scope: !2011)
!2014 = !DILocation(line: 62, column: 56, scope: !2011)
!2015 = !DILocation(line: 62, column: 8, scope: !2011)
!2016 = !DILocation(line: 62, column: 7, scope: !2012)
!2017 = !DILocation(line: 63, column: 9, scope: !2018)
!2018 = distinct !DILexicalBlock(scope: !2019, file: !1845, line: 63, column: 8)
!2019 = distinct !DILexicalBlock(scope: !2011, file: !1845, line: 62, column: 63)
!2020 = !DILocation(line: 63, column: 8, scope: !2019)
!2021 = !DILocation(line: 64, column: 5, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !2018, file: !1845, line: 63, column: 14)
!2023 = !DILocation(line: 66, column: 3, scope: !2019)
!2024 = !DILocation(line: 67, column: 2, scope: !2012)
!2025 = !DILocation(line: 67, column: 14, scope: !2026)
!2026 = distinct !DILexicalBlock(scope: !2007, file: !1845, line: 67, column: 13)
!2027 = !DILocation(line: 67, column: 13, scope: !2007)
!2028 = !DILocation(line: 68, column: 3, scope: !2029)
!2029 = distinct !DILexicalBlock(scope: !2026, file: !1845, line: 67, column: 19)
!2030 = !DILocation(line: 71, column: 6, scope: !2031)
!2031 = distinct !DILexicalBlock(scope: !1997, file: !1845, line: 71, column: 6)
!2032 = !DILocation(line: 71, column: 6, scope: !1997)
!2033 = !DILocation(line: 72, column: 21, scope: !2034)
!2034 = distinct !DILexicalBlock(scope: !2031, file: !1845, line: 71, column: 11)
!2035 = !DILocation(line: 72, column: 33, scope: !2034)
!2036 = !DILocation(line: 72, column: 43, scope: !2034)
!2037 = !DILocation(line: 72, column: 3, scope: !2034)
!2038 = !DILocation(line: 73, column: 2, scope: !2034)
!2039 = !DILocation(line: 75, column: 2, scope: !1997)
!2040 = !DILocation(line: 76, column: 1, scope: !1997)
!2041 = distinct !DISubprogram(name: "sys_slist_is_empty", scope: !187, file: !187, line: 268, type: !2042, scopeLine: 268, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !524)
!2042 = !DISubroutineType(types: !2043)
!2043 = !{!152, !1848}
!2044 = !DILocalVariable(name: "list", arg: 1, scope: !2041, file: !187, line: 268, type: !1848)
!2045 = !DILocation(line: 268, column: 53, scope: !2041)
!2046 = !DILocation(line: 268, column: 89, scope: !2041)
!2047 = !DILocation(line: 268, column: 69, scope: !2041)
!2048 = !DILocation(line: 268, column: 95, scope: !2041)
!2049 = !DILocation(line: 268, column: 61, scope: !2041)
!2050 = distinct !DISubprogram(name: "sys_slist_find_and_remove", scope: !187, file: !187, line: 435, type: !2051, scopeLine: 435, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !524)
!2051 = !DISubroutineType(types: !2052)
!2052 = !{!152, !1848, !357}
!2053 = !DILocalVariable(name: "list", arg: 1, scope: !2050, file: !187, line: 435, type: !1848)
!2054 = !DILocation(line: 435, column: 60, scope: !2050)
!2055 = !DILocalVariable(name: "node", arg: 2, scope: !2050, file: !187, line: 435, type: !357)
!2056 = !DILocation(line: 435, column: 79, scope: !2050)
!2057 = !DILocalVariable(name: "prev", scope: !2050, file: !187, line: 435, type: !357)
!2058 = !DILocation(line: 435, column: 100, scope: !2050)
!2059 = !DILocalVariable(name: "test", scope: !2050, file: !187, line: 435, type: !357)
!2060 = !DILocation(line: 435, column: 132, scope: !2050)
!2061 = !DILocation(line: 435, column: 170, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !2050, file: !187, line: 435, column: 138)
!2063 = !DILocation(line: 435, column: 150, scope: !2062)
!2064 = !DILocation(line: 435, column: 148, scope: !2062)
!2065 = !DILocation(line: 435, column: 143, scope: !2062)
!2066 = !DILocation(line: 435, column: 177, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !2062, file: !187, line: 435, column: 138)
!2068 = !DILocation(line: 435, column: 182, scope: !2067)
!2069 = !DILocation(line: 435, column: 138, scope: !2062)
!2070 = !DILocation(line: 435, column: 237, scope: !2071)
!2071 = distinct !DILexicalBlock(scope: !2072, file: !187, line: 435, column: 237)
!2072 = distinct !DILexicalBlock(scope: !2067, file: !187, line: 435, column: 231)
!2073 = !DILocation(line: 435, column: 245, scope: !2071)
!2074 = !DILocation(line: 435, column: 242, scope: !2071)
!2075 = !DILocation(line: 435, column: 237, scope: !2072)
!2076 = !DILocation(line: 435, column: 270, scope: !2077)
!2077 = distinct !DILexicalBlock(scope: !2071, file: !187, line: 435, column: 251)
!2078 = !DILocation(line: 435, column: 276, scope: !2077)
!2079 = !DILocation(line: 435, column: 282, scope: !2077)
!2080 = !DILocation(line: 435, column: 253, scope: !2077)
!2081 = !DILocation(line: 435, column: 289, scope: !2077)
!2082 = !DILocation(line: 435, column: 308, scope: !2072)
!2083 = !DILocation(line: 435, column: 306, scope: !2072)
!2084 = !DILocation(line: 435, column: 314, scope: !2072)
!2085 = !DILocation(line: 435, column: 224, scope: !2067)
!2086 = !DILocation(line: 435, column: 204, scope: !2067)
!2087 = !DILocation(line: 435, column: 202, scope: !2067)
!2088 = !DILocation(line: 435, column: 138, scope: !2067)
!2089 = distinct !{!2089, !2069, !2090}
!2090 = !DILocation(line: 435, column: 314, scope: !2062)
!2091 = !DILocation(line: 435, column: 316, scope: !2050)
!2092 = !DILocation(line: 435, column: 326, scope: !2050)
!2093 = distinct !DISubprogram(name: "sys_slist_prepend", scope: !187, file: !187, line: 305, type: !2094, scopeLine: 305, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !524)
!2094 = !DISubroutineType(types: !2095)
!2095 = !{null, !1848, !357}
!2096 = !DILocalVariable(name: "list", arg: 1, scope: !2093, file: !187, line: 305, type: !1848)
!2097 = !DILocation(line: 305, column: 51, scope: !2093)
!2098 = !DILocalVariable(name: "node", arg: 2, scope: !2093, file: !187, line: 305, type: !357)
!2099 = !DILocation(line: 305, column: 70, scope: !2093)
!2100 = !DILocation(line: 305, column: 95, scope: !2093)
!2101 = !DILocation(line: 305, column: 121, scope: !2093)
!2102 = !DILocation(line: 305, column: 101, scope: !2093)
!2103 = !DILocation(line: 305, column: 78, scope: !2093)
!2104 = !DILocation(line: 305, column: 146, scope: !2093)
!2105 = !DILocation(line: 305, column: 152, scope: !2093)
!2106 = !DILocation(line: 305, column: 129, scope: !2093)
!2107 = !DILocation(line: 305, column: 183, scope: !2108)
!2108 = distinct !DILexicalBlock(scope: !2093, file: !187, line: 305, column: 163)
!2109 = !DILocation(line: 305, column: 163, scope: !2108)
!2110 = !DILocation(line: 305, column: 189, scope: !2108)
!2111 = !DILocation(line: 305, column: 163, scope: !2093)
!2112 = !DILocation(line: 305, column: 223, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !2108, file: !187, line: 305, column: 204)
!2114 = !DILocation(line: 305, column: 249, scope: !2113)
!2115 = !DILocation(line: 305, column: 229, scope: !2113)
!2116 = !DILocation(line: 305, column: 206, scope: !2113)
!2117 = !DILocation(line: 305, column: 257, scope: !2113)
!2118 = !DILocation(line: 305, column: 259, scope: !2093)
!2119 = distinct !DISubprogram(name: "sys_slist_remove", scope: !187, file: !187, line: 408, type: !2120, scopeLine: 408, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !524)
!2120 = !DISubroutineType(types: !2121)
!2121 = !{null, !1848, !357, !357}
!2122 = !DILocalVariable(name: "list", arg: 1, scope: !2119, file: !187, line: 408, type: !1848)
!2123 = !DILocation(line: 408, column: 50, scope: !2119)
!2124 = !DILocalVariable(name: "prev_node", arg: 2, scope: !2119, file: !187, line: 408, type: !357)
!2125 = !DILocation(line: 408, column: 69, scope: !2119)
!2126 = !DILocalVariable(name: "node", arg: 3, scope: !2119, file: !187, line: 408, type: !357)
!2127 = !DILocation(line: 408, column: 93, scope: !2119)
!2128 = !DILocation(line: 408, column: 105, scope: !2129)
!2129 = distinct !DILexicalBlock(scope: !2119, file: !187, line: 408, column: 105)
!2130 = !DILocation(line: 408, column: 115, scope: !2129)
!2131 = !DILocation(line: 408, column: 105, scope: !2119)
!2132 = !DILocation(line: 408, column: 149, scope: !2133)
!2133 = distinct !DILexicalBlock(scope: !2129, file: !187, line: 408, column: 130)
!2134 = !DILocation(line: 408, column: 173, scope: !2133)
!2135 = !DILocation(line: 408, column: 155, scope: !2133)
!2136 = !DILocation(line: 408, column: 132, scope: !2133)
!2137 = !DILocation(line: 408, column: 205, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !2133, file: !187, line: 408, column: 185)
!2139 = !DILocation(line: 408, column: 185, scope: !2138)
!2140 = !DILocation(line: 408, column: 214, scope: !2138)
!2141 = !DILocation(line: 408, column: 211, scope: !2138)
!2142 = !DILocation(line: 408, column: 185, scope: !2133)
!2143 = !DILocation(line: 408, column: 239, scope: !2144)
!2144 = distinct !DILexicalBlock(scope: !2138, file: !187, line: 408, column: 220)
!2145 = !DILocation(line: 408, column: 265, scope: !2144)
!2146 = !DILocation(line: 408, column: 245, scope: !2144)
!2147 = !DILocation(line: 408, column: 222, scope: !2144)
!2148 = !DILocation(line: 408, column: 273, scope: !2144)
!2149 = !DILocation(line: 408, column: 275, scope: !2133)
!2150 = !DILocation(line: 408, column: 301, scope: !2151)
!2151 = distinct !DILexicalBlock(scope: !2129, file: !187, line: 408, column: 282)
!2152 = !DILocation(line: 408, column: 330, scope: !2151)
!2153 = !DILocation(line: 408, column: 312, scope: !2151)
!2154 = !DILocation(line: 408, column: 284, scope: !2151)
!2155 = !DILocation(line: 408, column: 362, scope: !2156)
!2156 = distinct !DILexicalBlock(scope: !2151, file: !187, line: 408, column: 342)
!2157 = !DILocation(line: 408, column: 342, scope: !2156)
!2158 = !DILocation(line: 408, column: 371, scope: !2156)
!2159 = !DILocation(line: 408, column: 368, scope: !2156)
!2160 = !DILocation(line: 408, column: 342, scope: !2151)
!2161 = !DILocation(line: 408, column: 396, scope: !2162)
!2162 = distinct !DILexicalBlock(scope: !2156, file: !187, line: 408, column: 377)
!2163 = !DILocation(line: 408, column: 402, scope: !2162)
!2164 = !DILocation(line: 408, column: 379, scope: !2162)
!2165 = !DILocation(line: 408, column: 414, scope: !2162)
!2166 = !DILocation(line: 408, column: 435, scope: !2119)
!2167 = !DILocation(line: 408, column: 418, scope: !2119)
!2168 = !DILocation(line: 408, column: 454, scope: !2119)
!2169 = distinct !DISubprogram(name: "z_slist_head_set", scope: !187, file: !187, line: 221, type: !2094, scopeLine: 222, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !524)
!2170 = !DILocalVariable(name: "list", arg: 1, scope: !2169, file: !187, line: 221, type: !1848)
!2171 = !DILocation(line: 221, column: 50, scope: !2169)
!2172 = !DILocalVariable(name: "node", arg: 2, scope: !2169, file: !187, line: 221, type: !357)
!2173 = !DILocation(line: 221, column: 69, scope: !2169)
!2174 = !DILocation(line: 223, column: 15, scope: !2169)
!2175 = !DILocation(line: 223, column: 2, scope: !2169)
!2176 = !DILocation(line: 223, column: 8, scope: !2169)
!2177 = !DILocation(line: 223, column: 13, scope: !2169)
!2178 = !DILocation(line: 224, column: 1, scope: !2169)
!2179 = distinct !DISubprogram(name: "sys_slist_peek_tail", scope: !187, file: !187, line: 250, type: !1928, scopeLine: 251, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !524)
!2180 = !DILocalVariable(name: "list", arg: 1, scope: !2179, file: !187, line: 250, type: !1848)
!2181 = !DILocation(line: 250, column: 61, scope: !2179)
!2182 = !DILocation(line: 252, column: 9, scope: !2179)
!2183 = !DILocation(line: 252, column: 15, scope: !2179)
!2184 = !DILocation(line: 252, column: 2, scope: !2179)
!2185 = distinct !DISubprogram(name: "z_slist_tail_set", scope: !187, file: !187, line: 226, type: !2094, scopeLine: 227, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !524)
!2186 = !DILocalVariable(name: "list", arg: 1, scope: !2185, file: !187, line: 226, type: !1848)
!2187 = !DILocation(line: 226, column: 50, scope: !2185)
!2188 = !DILocalVariable(name: "node", arg: 2, scope: !2185, file: !187, line: 226, type: !357)
!2189 = !DILocation(line: 226, column: 69, scope: !2185)
!2190 = !DILocation(line: 228, column: 15, scope: !2185)
!2191 = !DILocation(line: 228, column: 2, scope: !2185)
!2192 = !DILocation(line: 228, column: 8, scope: !2185)
!2193 = !DILocation(line: 228, column: 13, scope: !2185)
!2194 = !DILocation(line: 229, column: 1, scope: !2185)
!2195 = distinct !DISubprogram(name: "z_snode_next_set", scope: !187, file: !187, line: 216, type: !2196, scopeLine: 217, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !524)
!2196 = !DISubroutineType(types: !2197)
!2197 = !{null, !357, !357}
!2198 = !DILocalVariable(name: "parent", arg: 1, scope: !2195, file: !187, line: 216, type: !357)
!2199 = !DILocation(line: 216, column: 50, scope: !2195)
!2200 = !DILocalVariable(name: "child", arg: 2, scope: !2195, file: !187, line: 216, type: !357)
!2201 = !DILocation(line: 216, column: 71, scope: !2195)
!2202 = !DILocation(line: 218, column: 17, scope: !2195)
!2203 = !DILocation(line: 218, column: 2, scope: !2195)
!2204 = !DILocation(line: 218, column: 10, scope: !2195)
!2205 = !DILocation(line: 218, column: 15, scope: !2195)
!2206 = !DILocation(line: 219, column: 1, scope: !2195)
!2207 = distinct !DISubprogram(name: "device_is_ready", scope: !2208, file: !2208, line: 49, type: !711, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !524)
!2208 = !DIFile(filename: "zephyr/include/generated/syscalls/device.h", directory: "/home/sri/zephyrproject/zephyr/build")
!2209 = !DILocalVariable(name: "dev", arg: 1, scope: !2207, file: !2208, line: 49, type: !132)
!2210 = !DILocation(line: 49, column: 59, scope: !2207)
!2211 = !DILocation(line: 57, column: 2, scope: !2207)
!2212 = !DILocation(line: 57, column: 7, scope: !2213)
!2213 = distinct !DILexicalBlock(scope: !2207, file: !2208, line: 57, column: 5)
!2214 = !{i64 172940}
!2215 = !DILocation(line: 57, column: 47, scope: !2213)
!2216 = !DILocation(line: 58, column: 32, scope: !2207)
!2217 = !DILocation(line: 58, column: 9, scope: !2207)
!2218 = !DILocation(line: 58, column: 2, scope: !2207)
!2219 = distinct !DISubprogram(name: "gpio_stm32_clock_request", scope: !2, file: !2, line: 270, type: !2220, scopeLine: 271, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !524)
!2220 = !DISubroutineType(types: !2221)
!2221 = !{!123, !132, !152}
!2222 = !DILocalVariable(name: "dev", arg: 1, scope: !2219, file: !2, line: 270, type: !132)
!2223 = !DILocation(line: 270, column: 58, scope: !2219)
!2224 = !DILocalVariable(name: "on", arg: 2, scope: !2219, file: !2, line: 270, type: !152)
!2225 = !DILocation(line: 270, column: 69, scope: !2219)
!2226 = !DILocalVariable(name: "cfg", scope: !2219, file: !2, line: 272, type: !1015)
!2227 = !DILocation(line: 272, column: 34, scope: !2219)
!2228 = !DILocation(line: 272, column: 40, scope: !2219)
!2229 = !DILocation(line: 272, column: 45, scope: !2219)
!2230 = !DILocalVariable(name: "ret", scope: !2219, file: !2, line: 273, type: !123)
!2231 = !DILocation(line: 273, column: 6, scope: !2219)
!2232 = !DILocalVariable(name: "clk", scope: !2219, file: !2, line: 278, type: !2233)
!2233 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !132)
!2234 = !DILocation(line: 278, column: 29, scope: !2219)
!2235 = !DILocation(line: 280, column: 6, scope: !2236)
!2236 = distinct !DILexicalBlock(scope: !2219, file: !2, line: 280, column: 6)
!2237 = !DILocation(line: 280, column: 6, scope: !2219)
!2238 = !DILocation(line: 282, column: 31, scope: !2239)
!2239 = distinct !DILexicalBlock(scope: !2236, file: !2, line: 280, column: 10)
!2240 = !DILocation(line: 282, column: 36, scope: !2239)
!2241 = !DILocation(line: 281, column: 9, scope: !2239)
!2242 = !DILocation(line: 281, column: 7, scope: !2239)
!2243 = !DILocation(line: 283, column: 2, scope: !2239)
!2244 = !DILocation(line: 285, column: 31, scope: !2245)
!2245 = distinct !DILexicalBlock(scope: !2236, file: !2, line: 283, column: 9)
!2246 = !DILocation(line: 285, column: 36, scope: !2245)
!2247 = !DILocation(line: 284, column: 9, scope: !2245)
!2248 = !DILocation(line: 284, column: 7, scope: !2245)
!2249 = !DILocation(line: 288, column: 6, scope: !2250)
!2250 = distinct !DILexicalBlock(scope: !2219, file: !2, line: 288, column: 6)
!2251 = !DILocation(line: 288, column: 10, scope: !2250)
!2252 = !DILocation(line: 288, column: 6, scope: !2219)
!2253 = !DILocation(line: 289, column: 10, scope: !2254)
!2254 = distinct !DILexicalBlock(scope: !2250, file: !2, line: 288, column: 16)
!2255 = !DILocation(line: 289, column: 3, scope: !2254)
!2256 = !DILocation(line: 292, column: 9, scope: !2219)
!2257 = !DILocation(line: 292, column: 2, scope: !2219)
!2258 = !DILocation(line: 293, column: 1, scope: !2219)
!2259 = distinct !DISubprogram(name: "pm_device_init_suspended", scope: !2260, file: !2260, line: 611, type: !2261, scopeLine: 612, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !524)
!2260 = !DIFile(filename: "include/zephyr/pm/device.h", directory: "/home/sri/zephyrproject/zephyr")
!2261 = !DISubroutineType(types: !2262)
!2262 = !{null, !132}
!2263 = !DILocalVariable(name: "dev", arg: 1, scope: !2259, file: !2260, line: 611, type: !132)
!2264 = !DILocation(line: 611, column: 66, scope: !2259)
!2265 = !DILocation(line: 613, column: 9, scope: !2259)
!2266 = !DILocation(line: 614, column: 1, scope: !2259)
!2267 = distinct !DISubprogram(name: "pm_device_runtime_enable", scope: !998, file: !998, line: 167, type: !312, scopeLine: 168, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !524)
!2268 = !DILocalVariable(name: "dev", arg: 1, scope: !2267, file: !998, line: 167, type: !132)
!2269 = !DILocation(line: 167, column: 65, scope: !2267)
!2270 = !DILocation(line: 169, column: 9, scope: !2267)
!2271 = !DILocation(line: 170, column: 2, scope: !2267)
!2272 = distinct !DISubprogram(name: "clock_control_on", scope: !115, file: !115, line: 123, type: !260, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !524)
!2273 = !DILocalVariable(name: "dev", arg: 1, scope: !2272, file: !115, line: 123, type: !132)
!2274 = !DILocation(line: 123, column: 57, scope: !2272)
!2275 = !DILocalVariable(name: "sys", arg: 2, scope: !2272, file: !115, line: 124, type: !252)
!2276 = !DILocation(line: 124, column: 31, scope: !2272)
!2277 = !DILocalVariable(name: "api", scope: !2272, file: !115, line: 126, type: !253)
!2278 = !DILocation(line: 126, column: 41, scope: !2272)
!2279 = !DILocation(line: 127, column: 44, scope: !2272)
!2280 = !DILocation(line: 127, column: 49, scope: !2272)
!2281 = !DILocation(line: 129, column: 9, scope: !2272)
!2282 = !DILocation(line: 129, column: 14, scope: !2272)
!2283 = !DILocation(line: 129, column: 17, scope: !2272)
!2284 = !DILocation(line: 129, column: 22, scope: !2272)
!2285 = !DILocation(line: 129, column: 2, scope: !2272)
!2286 = distinct !DISubprogram(name: "clock_control_off", scope: !115, file: !115, line: 142, type: !260, scopeLine: 144, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !524)
!2287 = !DILocalVariable(name: "dev", arg: 1, scope: !2286, file: !115, line: 142, type: !132)
!2288 = !DILocation(line: 142, column: 58, scope: !2286)
!2289 = !DILocalVariable(name: "sys", arg: 2, scope: !2286, file: !115, line: 143, type: !252)
!2290 = !DILocation(line: 143, column: 32, scope: !2286)
!2291 = !DILocalVariable(name: "api", scope: !2286, file: !115, line: 145, type: !253)
!2292 = !DILocation(line: 145, column: 41, scope: !2286)
!2293 = !DILocation(line: 146, column: 44, scope: !2286)
!2294 = !DILocation(line: 146, column: 49, scope: !2286)
!2295 = !DILocation(line: 148, column: 9, scope: !2286)
!2296 = !DILocation(line: 148, column: 14, scope: !2286)
!2297 = !DILocation(line: 148, column: 18, scope: !2286)
!2298 = !DILocation(line: 148, column: 23, scope: !2286)
!2299 = !DILocation(line: 148, column: 2, scope: !2286)
