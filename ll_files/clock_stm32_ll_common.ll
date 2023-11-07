; ModuleID = '../bc_files/clock_stm32_ll_common.bc'
source_filename = "/home/sri/zephyrproject/zephyr/drivers/clock_control/clock_stm32_ll_common.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-arm-none-eabi"

%struct.clock_control_driver_api = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_state = type { i8, i8 }
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
%struct.RCC_TypeDef = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.stm32_pclken = type { i32, i32 }

@AHBPrescTable = external constant [16 x i8], align 1
@SystemCoreClock = external global i32, align 4
@.str = private unnamed_addr constant [13 x i8] c"rcc@40021000\00", align 1, !dbg !0
@stm32_clock_control_api = internal global %struct.clock_control_driver_api { ptr @stm32_clock_control_on, ptr @stm32_clock_control_off, ptr null, ptr @stm32_clock_control_get_subsys_rate, ptr @stm32_clock_control_get_status, ptr null, ptr @stm32_clock_control_configure }, align 4, !dbg !7
@__devstate_dts_ord_9 = internal global %struct.device_state zeroinitializer, section ".z_devstate", align 1, !dbg !177
@__device_dts_ord_9 = hidden constant %struct.device { ptr @.str, ptr null, ptr @stm32_clock_control_api, ptr @__devstate_dts_ord_9, ptr null }, section "._device.static.1_1_", align 4, !dbg !136
@__init___device_dts_ord_9 = internal constant %struct.init_entry { %union.init_function { ptr @stm32_clock_control_init }, ptr @__device_dts_ord_9 }, section ".z_init_PRE_KERNEL_11_00009_", align 4, !dbg !158
@llvm.used = appending global [2 x ptr] [ptr @__device_dts_ord_9, ptr @__init___device_dts_ord_9], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @z_impl_device_is_ready(ptr noundef %0) #0 !dbg !228 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !232, metadata !DIExpression()), !dbg !233
  %3 = load ptr, ptr %2, align 4, !dbg !234
  %4 = call zeroext i1 @z_device_is_ready(ptr noundef %3), !dbg !235
  ret i1 %4, !dbg !236
}

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_k_object_access_grant(ptr noundef %0, ptr noundef %1) #0 !dbg !237 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !354, metadata !DIExpression()), !dbg !355
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !356, metadata !DIExpression()), !dbg !357
  %5 = load ptr, ptr %3, align 4, !dbg !358
  %6 = load ptr, ptr %4, align 4, !dbg !359
  ret void, !dbg !360
}

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_k_object_release(ptr noundef %0) #0 !dbg !361 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !364, metadata !DIExpression()), !dbg !365
  %3 = load ptr, ptr %2, align 4, !dbg !366
  ret void, !dbg !367
}

; Function Attrs: noinline nounwind optnone
define internal ptr @z_impl_k_object_alloc(i8 noundef zeroext %0) #0 !dbg !368 {
  %2 = alloca i8, align 1
  store i8 %0, ptr %2, align 1
  call void @llvm.dbg.declare(metadata ptr %2, metadata !371, metadata !DIExpression()), !dbg !372
  %3 = load i8, ptr %2, align 1, !dbg !373
  ret ptr null, !dbg !374
}

; Function Attrs: noinline nounwind optnone
define internal ptr @z_impl_k_object_alloc_size(i8 noundef zeroext %0, i32 noundef %1) #0 !dbg !375 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8 %0, ptr %3, align 1
  call void @llvm.dbg.declare(metadata ptr %3, metadata !378, metadata !DIExpression()), !dbg !379
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !380, metadata !DIExpression()), !dbg !381
  %5 = load i8, ptr %3, align 1, !dbg !382
  %6 = load i32, ptr %4, align 4, !dbg !383
  ret ptr null, !dbg !384
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_thread_timeout_expires_ticks(ptr noundef %0) #0 !dbg !385 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !392, metadata !DIExpression()), !dbg !393
  %3 = load ptr, ptr %2, align 4, !dbg !394
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !395
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !396
  %6 = call i64 @z_timeout_expires(ptr noundef %5), !dbg !397
  ret i64 %6, !dbg !398
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_thread_timeout_remaining_ticks(ptr noundef %0) #0 !dbg !399 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !400, metadata !DIExpression()), !dbg !401
  %3 = load ptr, ptr %2, align 4, !dbg !402
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !403
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !404
  %6 = call i64 @z_timeout_remaining(ptr noundef %5), !dbg !405
  ret i64 %6, !dbg !406
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_timer_expires_ticks(ptr noundef %0) #0 !dbg !407 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !429, metadata !DIExpression()), !dbg !430
  %3 = load ptr, ptr %2, align 4, !dbg !431
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !432
  %5 = call i64 @z_timeout_expires(ptr noundef %4), !dbg !433
  ret i64 %5, !dbg !434
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_timer_remaining_ticks(ptr noundef %0) #0 !dbg !435 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !436, metadata !DIExpression()), !dbg !437
  %3 = load ptr, ptr %2, align 4, !dbg !438
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !439
  %5 = call i64 @z_timeout_remaining(ptr noundef %4), !dbg !440
  ret i64 %5, !dbg !441
}

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_k_timer_user_data_set(ptr noundef %0, ptr noundef %1) #0 !dbg !442 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !445, metadata !DIExpression()), !dbg !446
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !447, metadata !DIExpression()), !dbg !448
  %5 = load ptr, ptr %4, align 4, !dbg !449
  %6 = load ptr, ptr %3, align 4, !dbg !450
  %7 = getelementptr inbounds %struct.k_timer, ptr %6, i32 0, i32 6, !dbg !451
  store ptr %5, ptr %7, align 4, !dbg !452
  ret void, !dbg !453
}

; Function Attrs: noinline nounwind optnone
define internal ptr @z_impl_k_timer_user_data_get(ptr noundef %0) #0 !dbg !454 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !457, metadata !DIExpression()), !dbg !458
  %3 = load ptr, ptr %2, align 4, !dbg !459
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 6, !dbg !460
  %5 = load ptr, ptr %4, align 4, !dbg !460
  ret ptr %5, !dbg !461
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_queue_is_empty(ptr noundef %0) #0 !dbg !462 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !483, metadata !DIExpression()), !dbg !484
  %3 = load ptr, ptr %2, align 4, !dbg !485
  %4 = getelementptr inbounds %struct.k_queue, ptr %3, i32 0, i32 0, !dbg !486
  %5 = call zeroext i1 @sys_sflist_is_empty(ptr noundef %4), !dbg !487
  %6 = zext i1 %5 to i32, !dbg !488
  ret i32 %6, !dbg !489
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_sem_count_get(ptr noundef %0) #0 !dbg !490 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !499, metadata !DIExpression()), !dbg !500
  %3 = load ptr, ptr %2, align 4, !dbg !501
  %4 = getelementptr inbounds %struct.k_sem, ptr %3, i32 0, i32 1, !dbg !502
  %5 = load i32, ptr %4, align 4, !dbg !502
  ret i32 %5, !dbg !503
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_msgq_num_free_get(ptr noundef %0) #0 !dbg !504 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !521, metadata !DIExpression()), !dbg !522
  %3 = load ptr, ptr %2, align 4, !dbg !523
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 3, !dbg !524
  %5 = load i32, ptr %4, align 4, !dbg !524
  %6 = load ptr, ptr %2, align 4, !dbg !525
  %7 = getelementptr inbounds %struct.k_msgq, ptr %6, i32 0, i32 8, !dbg !526
  %8 = load i32, ptr %7, align 4, !dbg !526
  %9 = sub i32 %5, %8, !dbg !527
  ret i32 %9, !dbg !528
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_msgq_num_used_get(ptr noundef %0) #0 !dbg !529 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !530, metadata !DIExpression()), !dbg !531
  %3 = load ptr, ptr %2, align 4, !dbg !532
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 8, !dbg !533
  %5 = load i32, ptr %4, align 4, !dbg !533
  ret i32 %5, !dbg !534
}

; Function Attrs: noinline nounwind optnone
define hidden i32 @stm32_clock_control_init(ptr noundef %0) #0 !dbg !535 {
  %2 = alloca ptr, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !536, metadata !DIExpression()), !dbg !537
  %5 = load ptr, ptr %2, align 4, !dbg !538
  call void @config_enable_default_clocks(), !dbg !539
  call void @llvm.dbg.declare(metadata ptr %3, metadata !540, metadata !DIExpression()), !dbg !541
  call void @llvm.dbg.declare(metadata ptr %4, metadata !542, metadata !DIExpression()), !dbg !543
  %6 = call i32 @HAL_RCC_GetSysClockFreq(), !dbg !544
  %7 = call i32 @LL_RCC_GetAHBPrescaler(), !dbg !545
  %8 = and i32 %7, 240, !dbg !546
  %9 = lshr i32 %8, 4, !dbg !547
  %10 = getelementptr inbounds [16 x i8], ptr @AHBPrescTable, i32 0, i32 %9, !dbg !548
  %11 = load i8, ptr %10, align 1, !dbg !548
  %12 = zext i8 %11 to i32, !dbg !548
  %13 = lshr i32 %6, %12, !dbg !549
  store i32 %13, ptr %3, align 4, !dbg !550
  %14 = load i8, ptr @AHBPrescTable, align 1, !dbg !551
  %15 = zext i8 %14 to i32, !dbg !551
  %16 = ashr i32 48000000, %15, !dbg !552
  store i32 %16, ptr %4, align 4, !dbg !553
  %17 = load i32, ptr %3, align 4, !dbg !554
  %18 = load i32, ptr %4, align 4, !dbg !556
  %19 = icmp ult i32 %17, %18, !dbg !557
  br i1 %19, label %20, label %23, !dbg !558

20:                                               ; preds = %1
  %21 = load i32, ptr %4, align 4, !dbg !559
  %22 = call zeroext i8 @LL_SetFlashLatency(i32 noundef %21), !dbg !561
  br label %23, !dbg !562

23:                                               ; preds = %20, %1
  call void @set_up_fixed_clock_sources(), !dbg !563
  call void @set_up_plls(), !dbg !564
  call void @LL_RCC_SetAHBPrescaler(i32 noundef 0), !dbg !565
  call void @LL_RCC_SetSysClkSource(i32 noundef 2), !dbg !568
  br label %24, !dbg !569

24:                                               ; preds = %27, %23
  %25 = call i32 @LL_RCC_GetSysClkSource(), !dbg !570
  %26 = icmp ne i32 %25, 8, !dbg !571
  br i1 %26, label %27, label %28, !dbg !569

27:                                               ; preds = %24
  br label %24, !dbg !569, !llvm.loop !572

28:                                               ; preds = %24
  %29 = load i32, ptr %3, align 4, !dbg !574
  %30 = load i32, ptr %4, align 4, !dbg !576
  %31 = icmp uge i32 %29, %30, !dbg !577
  br i1 %31, label %32, label %35, !dbg !578

32:                                               ; preds = %28
  %33 = load i32, ptr %4, align 4, !dbg !579
  %34 = call zeroext i8 @LL_SetFlashLatency(i32 noundef %33), !dbg !581
  br label %35, !dbg !582

35:                                               ; preds = %32, %28
  store i32 48000000, ptr @SystemCoreClock, align 4, !dbg !583
  call void @LL_RCC_SetAPB1Prescaler(i32 noundef 0), !dbg !584
  call void @stm32_clock_control_mco_init(), !dbg !585
  ret i32 0, !dbg !586
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @config_enable_default_clocks() #2

declare i32 @HAL_RCC_GetSysClockFreq() #2

; Function Attrs: noinline nounwind optnone
define internal i32 @LL_RCC_GetAHBPrescaler() #0 !dbg !587 {
  %1 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !591
  %2 = and i32 %1, 240, !dbg !592
  ret i32 %2, !dbg !593
}

declare zeroext i8 @LL_SetFlashLatency(i32 noundef) #2

; Function Attrs: noinline nounwind optnone
define internal void @set_up_fixed_clock_sources() #0 !dbg !594 {
  call void @LL_RCC_HSE_EnableBypass(), !dbg !597
  call void @LL_RCC_HSE_Enable(), !dbg !602
  br label %1, !dbg !603

1:                                                ; preds = %4, %0
  %2 = call i32 @LL_RCC_HSE_IsReady(), !dbg !604
  %3 = icmp ne i32 %2, 1, !dbg !605
  br i1 %3, label %4, label %5, !dbg !603

4:                                                ; preds = %1
  br label %1, !dbg !603, !llvm.loop !606

5:                                                ; preds = %1
  call void @LL_RCC_LSI_Enable(), !dbg !608
  br label %6, !dbg !611

6:                                                ; preds = %9, %5
  %7 = call i32 @LL_RCC_LSI_IsReady(), !dbg !612
  %8 = icmp ne i32 %7, 1, !dbg !613
  br i1 %8, label %9, label %10, !dbg !611

9:                                                ; preds = %6
  br label %6, !dbg !611, !llvm.loop !614

10:                                               ; preds = %6
  ret void, !dbg !616
}

; Function Attrs: noinline nounwind optnone
define internal void @set_up_plls() #0 !dbg !617 {
  %1 = call i32 @LL_RCC_GetSysClkSource(), !dbg !618
  %2 = icmp eq i32 %1, 8, !dbg !620
  br i1 %2, label %3, label %4, !dbg !621

3:                                                ; preds = %0
  call void @stm32_clock_switch_to_hsi(), !dbg !622
  call void @LL_RCC_SetAHBPrescaler(i32 noundef 0), !dbg !624
  br label %4, !dbg !625

4:                                                ; preds = %3, %0
  call void @LL_RCC_PLL_Disable(), !dbg !626
  call void @config_pll_sysclock(), !dbg !627
  call void @LL_RCC_PLL_Enable(), !dbg !628
  br label %5, !dbg !629

5:                                                ; preds = %8, %4
  %6 = call i32 @LL_RCC_PLL_IsReady(), !dbg !630
  %7 = icmp ne i32 %6, 1, !dbg !631
  br i1 %7, label %8, label %9, !dbg !629

8:                                                ; preds = %5
  br label %5, !dbg !629, !llvm.loop !632

9:                                                ; preds = %5
  ret void, !dbg !634
}

; Function Attrs: noinline nounwind optnone
define internal void @LL_RCC_SetAHBPrescaler(i32 noundef %0) #0 !dbg !635 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !638, metadata !DIExpression()), !dbg !639
  %3 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !640
  %4 = and i32 %3, -241, !dbg !641
  %5 = load i32, ptr %2, align 4, !dbg !642
  %6 = or i32 %4, %5, !dbg !643
  store volatile i32 %6, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !644
  ret void, !dbg !645
}

; Function Attrs: noinline nounwind optnone
define internal void @LL_RCC_SetSysClkSource(i32 noundef %0) #0 !dbg !646 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !647, metadata !DIExpression()), !dbg !648
  %3 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !649
  %4 = and i32 %3, -4, !dbg !650
  %5 = load i32, ptr %2, align 4, !dbg !651
  %6 = or i32 %4, %5, !dbg !652
  store volatile i32 %6, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !653
  ret void, !dbg !654
}

; Function Attrs: noinline nounwind optnone
define internal i32 @LL_RCC_GetSysClkSource() #0 !dbg !655 {
  %1 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !656
  %2 = and i32 %1, 12, !dbg !657
  ret i32 %2, !dbg !658
}

; Function Attrs: noinline nounwind optnone
define internal void @LL_RCC_SetAPB1Prescaler(i32 noundef %0) #0 !dbg !659 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !660, metadata !DIExpression()), !dbg !661
  %3 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !662
  %4 = and i32 %3, -1793, !dbg !663
  %5 = load i32, ptr %2, align 4, !dbg !664
  %6 = or i32 %4, %5, !dbg !665
  store volatile i32 %6, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !666
  ret void, !dbg !667
}

; Function Attrs: noinline nounwind optnone
define internal void @stm32_clock_control_mco_init() #0 !dbg !668 {
  ret void, !dbg !670
}

declare zeroext i1 @z_device_is_ready(ptr noundef) #2

declare i64 @z_timeout_expires(ptr noundef) #2

declare i64 @z_timeout_remaining(ptr noundef) #2

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @sys_sflist_is_empty(ptr noundef %0) #0 !dbg !671 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !675, metadata !DIExpression()), !dbg !676
  %3 = load ptr, ptr %2, align 4, !dbg !677
  %4 = call ptr @sys_sflist_peek_head(ptr noundef %3), !dbg !678
  %5 = icmp eq ptr %4, null, !dbg !679
  ret i1 %5, !dbg !680
}

; Function Attrs: noinline nounwind optnone
define internal ptr @sys_sflist_peek_head(ptr noundef %0) #0 !dbg !681 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !684, metadata !DIExpression()), !dbg !685
  %3 = load ptr, ptr %2, align 4, !dbg !686
  %4 = getelementptr inbounds %struct._sflist, ptr %3, i32 0, i32 0, !dbg !687
  %5 = load ptr, ptr %4, align 4, !dbg !687
  ret ptr %5, !dbg !688
}

; Function Attrs: noinline nounwind optnone
define internal void @LL_RCC_HSE_EnableBypass() #0 !dbg !689 {
  %1 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !690
  %2 = or i32 %1, 262144, !dbg !690
  store volatile i32 %2, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !690
  ret void, !dbg !691
}

; Function Attrs: noinline nounwind optnone
define internal void @LL_RCC_HSE_Enable() #0 !dbg !692 {
  %1 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !693
  %2 = or i32 %1, 65536, !dbg !693
  store volatile i32 %2, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !693
  ret void, !dbg !694
}

; Function Attrs: noinline nounwind optnone
define internal i32 @LL_RCC_HSE_IsReady() #0 !dbg !695 {
  %1 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !696
  %2 = and i32 %1, 131072, !dbg !697
  %3 = icmp eq i32 %2, 131072, !dbg !698
  %4 = zext i1 %3 to i32, !dbg !698
  ret i32 %4, !dbg !699
}

; Function Attrs: noinline nounwind optnone
define internal void @LL_RCC_LSI_Enable() #0 !dbg !700 {
  %1 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 9), align 4, !dbg !701
  %2 = or i32 %1, 1, !dbg !701
  store volatile i32 %2, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 9), align 4, !dbg !701
  ret void, !dbg !702
}

; Function Attrs: noinline nounwind optnone
define internal i32 @LL_RCC_LSI_IsReady() #0 !dbg !703 {
  %1 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 9), align 4, !dbg !704
  %2 = and i32 %1, 2, !dbg !705
  %3 = icmp eq i32 %2, 2, !dbg !706
  %4 = zext i1 %3 to i32, !dbg !706
  ret i32 %4, !dbg !707
}

; Function Attrs: noinline nounwind optnone
define internal void @stm32_clock_switch_to_hsi() #0 !dbg !708 {
  %1 = call i32 @LL_RCC_HSI_IsReady(), !dbg !709
  %2 = icmp ne i32 %1, 1, !dbg !711
  br i1 %2, label %3, label %9, !dbg !712

3:                                                ; preds = %0
  call void @LL_RCC_HSI_Enable(), !dbg !713
  br label %4, !dbg !715

4:                                                ; preds = %7, %3
  %5 = call i32 @LL_RCC_HSI_IsReady(), !dbg !716
  %6 = icmp ne i32 %5, 1, !dbg !717
  br i1 %6, label %7, label %8, !dbg !715

7:                                                ; preds = %4
  br label %4, !dbg !715, !llvm.loop !718

8:                                                ; preds = %4
  br label %9, !dbg !720

9:                                                ; preds = %8, %0
  call void @LL_RCC_SetSysClkSource(i32 noundef 0), !dbg !721
  br label %10, !dbg !722

10:                                               ; preds = %13, %9
  %11 = call i32 @LL_RCC_GetSysClkSource(), !dbg !723
  %12 = icmp ne i32 %11, 0, !dbg !724
  br i1 %12, label %13, label %14, !dbg !722

13:                                               ; preds = %10
  br label %10, !dbg !722, !llvm.loop !725

14:                                               ; preds = %10
  ret void, !dbg !727
}

; Function Attrs: noinline nounwind optnone
define internal void @LL_RCC_PLL_Disable() #0 !dbg !728 {
  %1 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !729
  %2 = and i32 %1, -16777217, !dbg !729
  store volatile i32 %2, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !729
  ret void, !dbg !730
}

declare void @config_pll_sysclock() #2

; Function Attrs: noinline nounwind optnone
define internal void @LL_RCC_PLL_Enable() #0 !dbg !731 {
  %1 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !732
  %2 = or i32 %1, 16777216, !dbg !732
  store volatile i32 %2, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !732
  ret void, !dbg !733
}

; Function Attrs: noinline nounwind optnone
define internal i32 @LL_RCC_PLL_IsReady() #0 !dbg !734 {
  %1 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !735
  %2 = and i32 %1, 33554432, !dbg !736
  %3 = icmp eq i32 %2, 33554432, !dbg !737
  %4 = zext i1 %3 to i32, !dbg !737
  ret i32 %4, !dbg !738
}

; Function Attrs: noinline nounwind optnone
define internal i32 @LL_RCC_HSI_IsReady() #0 !dbg !739 {
  %1 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !740
  %2 = and i32 %1, 2, !dbg !741
  %3 = icmp eq i32 %2, 2, !dbg !742
  %4 = zext i1 %3 to i32, !dbg !742
  ret i32 %4, !dbg !743
}

; Function Attrs: noinline nounwind optnone
define internal void @LL_RCC_HSI_Enable() #0 !dbg !744 {
  %1 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !745
  %2 = or i32 %1, 1, !dbg !745
  store volatile i32 %2, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !745
  ret void, !dbg !746
}

; Function Attrs: noinline nounwind optnone
define internal i32 @stm32_clock_control_on(ptr noundef %0, ptr noundef %1) #0 !dbg !747 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  store ptr %0, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !748, metadata !DIExpression()), !dbg !749
  store ptr %1, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !750, metadata !DIExpression()), !dbg !751
  call void @llvm.dbg.declare(metadata ptr %9, metadata !752, metadata !DIExpression()), !dbg !753
  %10 = load ptr, ptr %8, align 4, !dbg !754
  store ptr %10, ptr %9, align 4, !dbg !753
  %11 = load ptr, ptr %7, align 4, !dbg !755
  %12 = load ptr, ptr %9, align 4, !dbg !756
  %13 = getelementptr inbounds %struct.stm32_pclken, ptr %12, i32 0, i32 0, !dbg !758
  %14 = load i32, ptr %13, align 4, !dbg !758
  %15 = icmp uge i32 %14, 20, !dbg !759
  br i1 %15, label %16, label %21, !dbg !760

16:                                               ; preds = %2
  %17 = load ptr, ptr %9, align 4, !dbg !761
  %18 = getelementptr inbounds %struct.stm32_pclken, ptr %17, i32 0, i32 0, !dbg !762
  %19 = load i32, ptr %18, align 4, !dbg !762
  %20 = icmp ule i32 %19, 28, !dbg !763
  br label %21

21:                                               ; preds = %16, %2
  %22 = phi i1 [ false, %2 ], [ %20, %16 ], !dbg !764
  %23 = zext i1 %22 to i32, !dbg !760
  %24 = icmp eq i32 %23, 0, !dbg !765
  br i1 %24, label %25, label %26, !dbg !766

25:                                               ; preds = %21
  store i32 -134, ptr %6, align 4, !dbg !767
  br label %42, !dbg !767

26:                                               ; preds = %21
  %27 = load ptr, ptr %9, align 4, !dbg !769
  %28 = getelementptr inbounds %struct.stm32_pclken, ptr %27, i32 0, i32 0, !dbg !770
  %29 = load i32, ptr %28, align 4, !dbg !770
  %30 = add i32 1073876992, %29, !dbg !771
  %31 = load ptr, ptr %9, align 4, !dbg !772
  %32 = getelementptr inbounds %struct.stm32_pclken, ptr %31, i32 0, i32 1, !dbg !773
  %33 = load i32, ptr %32, align 4, !dbg !773
  store i32 %30, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !774, metadata !DIExpression()), !dbg !782
  store i32 %33, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !784, metadata !DIExpression()), !dbg !785
  call void @llvm.dbg.declare(metadata ptr %5, metadata !786, metadata !DIExpression()), !dbg !787
  %34 = load i32, ptr %3, align 4, !dbg !788
  %35 = inttoptr i32 %34 to ptr, !dbg !789
  %36 = load volatile i32, ptr %35, align 4, !dbg !790
  store i32 %36, ptr %5, align 4, !dbg !787
  %37 = load i32, ptr %5, align 4, !dbg !791
  %38 = load i32, ptr %4, align 4, !dbg !792
  %39 = or i32 %37, %38, !dbg !793
  %40 = load i32, ptr %3, align 4, !dbg !794
  %41 = inttoptr i32 %40 to ptr, !dbg !795
  store volatile i32 %39, ptr %41, align 4, !dbg !796
  store i32 0, ptr %6, align 4, !dbg !797
  br label %42, !dbg !797

42:                                               ; preds = %26, %25
  %43 = load i32, ptr %6, align 4, !dbg !798
  ret i32 %43, !dbg !798
}

; Function Attrs: noinline nounwind optnone
define internal i32 @stm32_clock_control_off(ptr noundef %0, ptr noundef %1) #0 !dbg !799 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  store ptr %0, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !800, metadata !DIExpression()), !dbg !801
  store ptr %1, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !802, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.declare(metadata ptr %9, metadata !804, metadata !DIExpression()), !dbg !805
  %10 = load ptr, ptr %8, align 4, !dbg !806
  store ptr %10, ptr %9, align 4, !dbg !805
  %11 = load ptr, ptr %7, align 4, !dbg !807
  %12 = load ptr, ptr %9, align 4, !dbg !808
  %13 = getelementptr inbounds %struct.stm32_pclken, ptr %12, i32 0, i32 0, !dbg !810
  %14 = load i32, ptr %13, align 4, !dbg !810
  %15 = icmp uge i32 %14, 20, !dbg !811
  br i1 %15, label %16, label %21, !dbg !812

16:                                               ; preds = %2
  %17 = load ptr, ptr %9, align 4, !dbg !813
  %18 = getelementptr inbounds %struct.stm32_pclken, ptr %17, i32 0, i32 0, !dbg !814
  %19 = load i32, ptr %18, align 4, !dbg !814
  %20 = icmp ule i32 %19, 28, !dbg !815
  br label %21

21:                                               ; preds = %16, %2
  %22 = phi i1 [ false, %2 ], [ %20, %16 ], !dbg !816
  %23 = zext i1 %22 to i32, !dbg !812
  %24 = icmp eq i32 %23, 0, !dbg !817
  br i1 %24, label %25, label %26, !dbg !818

25:                                               ; preds = %21
  store i32 -134, ptr %6, align 4, !dbg !819
  br label %43, !dbg !819

26:                                               ; preds = %21
  %27 = load ptr, ptr %9, align 4, !dbg !821
  %28 = getelementptr inbounds %struct.stm32_pclken, ptr %27, i32 0, i32 0, !dbg !822
  %29 = load i32, ptr %28, align 4, !dbg !822
  %30 = add i32 1073876992, %29, !dbg !823
  %31 = load ptr, ptr %9, align 4, !dbg !824
  %32 = getelementptr inbounds %struct.stm32_pclken, ptr %31, i32 0, i32 1, !dbg !825
  %33 = load i32, ptr %32, align 4, !dbg !825
  store i32 %30, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !826, metadata !DIExpression()), !dbg !828
  store i32 %33, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !830, metadata !DIExpression()), !dbg !831
  call void @llvm.dbg.declare(metadata ptr %5, metadata !832, metadata !DIExpression()), !dbg !833
  %34 = load i32, ptr %3, align 4, !dbg !834
  %35 = inttoptr i32 %34 to ptr, !dbg !835
  %36 = load volatile i32, ptr %35, align 4, !dbg !836
  store i32 %36, ptr %5, align 4, !dbg !833
  %37 = load i32, ptr %5, align 4, !dbg !837
  %38 = load i32, ptr %4, align 4, !dbg !838
  %39 = xor i32 %38, -1, !dbg !839
  %40 = and i32 %37, %39, !dbg !840
  %41 = load i32, ptr %3, align 4, !dbg !841
  %42 = inttoptr i32 %41 to ptr, !dbg !842
  store volatile i32 %40, ptr %42, align 4, !dbg !843
  store i32 0, ptr %6, align 4, !dbg !844
  br label %43, !dbg !844

43:                                               ; preds = %26, %25
  %44 = load i32, ptr %6, align 4, !dbg !845
  ret i32 %44, !dbg !845
}

; Function Attrs: noinline nounwind optnone
define internal i32 @stm32_clock_control_get_subsys_rate(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !846 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store ptr %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !847, metadata !DIExpression()), !dbg !848
  store ptr %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !849, metadata !DIExpression()), !dbg !850
  store ptr %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !851, metadata !DIExpression()), !dbg !852
  call void @llvm.dbg.declare(metadata ptr %8, metadata !853, metadata !DIExpression()), !dbg !854
  %12 = load ptr, ptr %6, align 4, !dbg !855
  store ptr %12, ptr %8, align 4, !dbg !854
  call void @llvm.dbg.declare(metadata ptr %9, metadata !856, metadata !DIExpression()), !dbg !857
  %13 = load i32, ptr @SystemCoreClock, align 4, !dbg !858
  store i32 %13, ptr %9, align 4, !dbg !857
  call void @llvm.dbg.declare(metadata ptr %10, metadata !859, metadata !DIExpression()), !dbg !860
  %14 = load i32, ptr %9, align 4, !dbg !861
  %15 = call i32 @get_bus_clock(i32 noundef %14, i32 noundef 1), !dbg !862
  store i32 %15, ptr %10, align 4, !dbg !860
  call void @llvm.dbg.declare(metadata ptr %11, metadata !863, metadata !DIExpression()), !dbg !864
  %16 = load i32, ptr %10, align 4, !dbg !865
  store i32 %16, ptr %11, align 4, !dbg !864
  %17 = load ptr, ptr %8, align 4, !dbg !866
  %18 = getelementptr inbounds %struct.stm32_pclken, ptr %17, i32 0, i32 0, !dbg !868
  %19 = load i32, ptr %18, align 4, !dbg !868
  %20 = icmp eq i32 %19, 7, !dbg !869
  br i1 %20, label %21, label %22, !dbg !870

21:                                               ; preds = %3
  store i32 -134, ptr %4, align 4, !dbg !871
  br label %55, !dbg !871

22:                                               ; preds = %3
  %23 = load ptr, ptr %5, align 4, !dbg !873
  %24 = load ptr, ptr %8, align 4, !dbg !874
  %25 = getelementptr inbounds %struct.stm32_pclken, ptr %24, i32 0, i32 0, !dbg !875
  %26 = load i32, ptr %25, align 4, !dbg !875
  switch i32 %26, label %53 [
    i32 20, label %27
    i32 28, label %30
    i32 24, label %33
    i32 6, label %36
    i32 8, label %40
    i32 2, label %47
    i32 3, label %49
    i32 1, label %51
  ], !dbg !876

27:                                               ; preds = %22
  %28 = load i32, ptr %9, align 4, !dbg !877
  %29 = load ptr, ptr %7, align 4, !dbg !879
  store i32 %28, ptr %29, align 4, !dbg !880
  br label %54, !dbg !881

30:                                               ; preds = %22
  %31 = load i32, ptr %10, align 4, !dbg !882
  %32 = load ptr, ptr %7, align 4, !dbg !883
  store i32 %31, ptr %32, align 4, !dbg !884
  br label %54, !dbg !885

33:                                               ; preds = %22
  %34 = load i32, ptr %11, align 4, !dbg !886
  %35 = load ptr, ptr %7, align 4, !dbg !887
  store i32 %34, ptr %35, align 4, !dbg !888
  br label %54, !dbg !889

36:                                               ; preds = %22
  %37 = load i32, ptr @SystemCoreClock, align 4, !dbg !890
  %38 = mul i32 %37, 1, !dbg !891
  %39 = load ptr, ptr %7, align 4, !dbg !892
  store i32 %38, ptr %39, align 4, !dbg !893
  br label %54, !dbg !894

40:                                               ; preds = %22
  %41 = call i32 @get_pllout_frequency(), !dbg !895
  %42 = icmp eq i32 %41, 0, !dbg !897
  br i1 %42, label %43, label %44, !dbg !898

43:                                               ; preds = %40
  store i32 -5, ptr %4, align 4, !dbg !899
  br label %55, !dbg !899

44:                                               ; preds = %40
  %45 = call i32 @get_pllout_frequency(), !dbg !901
  %46 = load ptr, ptr %7, align 4, !dbg !902
  store i32 %45, ptr %46, align 4, !dbg !903
  br label %54, !dbg !904

47:                                               ; preds = %22
  %48 = load ptr, ptr %7, align 4, !dbg !905
  store i32 0, ptr %48, align 4, !dbg !906
  br label %54, !dbg !907

49:                                               ; preds = %22
  %50 = load ptr, ptr %7, align 4, !dbg !908
  store i32 40000, ptr %50, align 4, !dbg !909
  br label %54, !dbg !910

51:                                               ; preds = %22
  %52 = load ptr, ptr %7, align 4, !dbg !911
  store i32 0, ptr %52, align 4, !dbg !912
  br label %54, !dbg !913

53:                                               ; preds = %22
  store i32 -134, ptr %4, align 4, !dbg !914
  br label %55, !dbg !914

54:                                               ; preds = %51, %49, %47, %44, %36, %33, %30, %27
  store i32 0, ptr %4, align 4, !dbg !915
  br label %55, !dbg !915

55:                                               ; preds = %54, %53, %43, %21
  %56 = load i32, ptr %4, align 4, !dbg !916
  ret i32 %56, !dbg !916
}

; Function Attrs: noinline nounwind optnone
define internal zeroext i8 @stm32_clock_control_get_status(ptr noundef %0, ptr noundef %1) #0 !dbg !917 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  store ptr %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !918, metadata !DIExpression()), !dbg !919
  store ptr %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !920, metadata !DIExpression()), !dbg !921
  call void @llvm.dbg.declare(metadata ptr %7, metadata !922, metadata !DIExpression()), !dbg !923
  %8 = load ptr, ptr %6, align 4, !dbg !924
  store ptr %8, ptr %7, align 4, !dbg !923
  %9 = load ptr, ptr %5, align 4, !dbg !925
  %10 = load ptr, ptr %7, align 4, !dbg !926
  %11 = getelementptr inbounds %struct.stm32_pclken, ptr %10, i32 0, i32 0, !dbg !928
  %12 = load i32, ptr %11, align 4, !dbg !928
  %13 = icmp uge i32 %12, 20, !dbg !929
  br i1 %13, label %14, label %19, !dbg !930

14:                                               ; preds = %2
  %15 = load ptr, ptr %7, align 4, !dbg !931
  %16 = getelementptr inbounds %struct.stm32_pclken, ptr %15, i32 0, i32 0, !dbg !932
  %17 = load i32, ptr %16, align 4, !dbg !932
  %18 = icmp ule i32 %17, 28, !dbg !933
  br label %19

19:                                               ; preds = %14, %2
  %20 = phi i1 [ false, %2 ], [ %18, %14 ], !dbg !934
  %21 = zext i1 %20 to i32, !dbg !930
  %22 = icmp eq i32 %21, 1, !dbg !935
  br i1 %22, label %23, label %41, !dbg !936

23:                                               ; preds = %19
  %24 = load ptr, ptr %7, align 4, !dbg !937
  %25 = getelementptr inbounds %struct.stm32_pclken, ptr %24, i32 0, i32 0, !dbg !940
  %26 = load i32, ptr %25, align 4, !dbg !940
  %27 = add i32 1073876992, %26, !dbg !941
  store i32 %27, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !942, metadata !DIExpression()), !dbg !947
  %28 = load i32, ptr %3, align 4, !dbg !949
  %29 = inttoptr i32 %28 to ptr, !dbg !950
  %30 = load volatile i32, ptr %29, align 4, !dbg !951
  %31 = load ptr, ptr %7, align 4, !dbg !952
  %32 = getelementptr inbounds %struct.stm32_pclken, ptr %31, i32 0, i32 1, !dbg !953
  %33 = load i32, ptr %32, align 4, !dbg !953
  %34 = and i32 %30, %33, !dbg !954
  %35 = load ptr, ptr %7, align 4, !dbg !955
  %36 = getelementptr inbounds %struct.stm32_pclken, ptr %35, i32 0, i32 1, !dbg !956
  %37 = load i32, ptr %36, align 4, !dbg !956
  %38 = icmp eq i32 %34, %37, !dbg !957
  br i1 %38, label %39, label %40, !dbg !958

39:                                               ; preds = %23
  store i8 2, ptr %4, align 1, !dbg !959
  br label %49, !dbg !959

40:                                               ; preds = %23
  store i8 1, ptr %4, align 1, !dbg !961
  br label %49, !dbg !961

41:                                               ; preds = %19
  %42 = load ptr, ptr %7, align 4, !dbg !963
  %43 = getelementptr inbounds %struct.stm32_pclken, ptr %42, i32 0, i32 0, !dbg !966
  %44 = load i32, ptr %43, align 4, !dbg !966
  %45 = call i32 @enabled_clock(i32 noundef %44), !dbg !967
  %46 = icmp eq i32 %45, 0, !dbg !968
  br i1 %46, label %47, label %48, !dbg !969

47:                                               ; preds = %41
  store i8 2, ptr %4, align 1, !dbg !970
  br label %49, !dbg !970

48:                                               ; preds = %41
  store i8 1, ptr %4, align 1, !dbg !972
  br label %49, !dbg !972

49:                                               ; preds = %48, %47, %40, %39
  %50 = load i8, ptr %4, align 1, !dbg !974
  ret i8 %50, !dbg !974
}

; Function Attrs: noinline nounwind optnone
define internal i32 @stm32_clock_control_configure(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !975 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 4
  %12 = alloca ptr, align 4
  %13 = alloca ptr, align 4
  %14 = alloca ptr, align 4
  %15 = alloca i32, align 4
  store ptr %0, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !976, metadata !DIExpression()), !dbg !977
  store ptr %1, ptr %12, align 4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !978, metadata !DIExpression()), !dbg !979
  store ptr %2, ptr %13, align 4
  call void @llvm.dbg.declare(metadata ptr %13, metadata !980, metadata !DIExpression()), !dbg !981
  call void @llvm.dbg.declare(metadata ptr %14, metadata !982, metadata !DIExpression()), !dbg !983
  %16 = load ptr, ptr %12, align 4, !dbg !984
  store ptr %16, ptr %14, align 4, !dbg !983
  call void @llvm.dbg.declare(metadata ptr %15, metadata !985, metadata !DIExpression()), !dbg !986
  %17 = load ptr, ptr %11, align 4, !dbg !987
  %18 = load ptr, ptr %13, align 4, !dbg !988
  %19 = load ptr, ptr %14, align 4, !dbg !989
  %20 = getelementptr inbounds %struct.stm32_pclken, ptr %19, i32 0, i32 0, !dbg !990
  %21 = load i32, ptr %20, align 4, !dbg !990
  %22 = call i32 @enabled_clock(i32 noundef %21), !dbg !991
  store i32 %22, ptr %15, align 4, !dbg !992
  %23 = load i32, ptr %15, align 4, !dbg !993
  %24 = icmp slt i32 %23, 0, !dbg !995
  br i1 %24, label %25, label %27, !dbg !996

25:                                               ; preds = %3
  %26 = load i32, ptr %15, align 4, !dbg !997
  store i32 %26, ptr %10, align 4, !dbg !999
  br label %85, !dbg !999

27:                                               ; preds = %3
  %28 = load ptr, ptr %14, align 4, !dbg !1000
  %29 = getelementptr inbounds %struct.stm32_pclken, ptr %28, i32 0, i32 1, !dbg !1002
  %30 = load i32, ptr %29, align 4, !dbg !1002
  %31 = icmp eq i32 %30, 255, !dbg !1003
  br i1 %31, label %32, label %33, !dbg !1004

32:                                               ; preds = %27
  store i32 0, ptr %10, align 4, !dbg !1005
  br label %85, !dbg !1005

33:                                               ; preds = %27
  %34 = load ptr, ptr %14, align 4, !dbg !1007
  %35 = getelementptr inbounds %struct.stm32_pclken, ptr %34, i32 0, i32 1, !dbg !1008
  %36 = load i32, ptr %35, align 4, !dbg !1008
  %37 = lshr i32 %36, 0, !dbg !1009
  %38 = and i32 %37, 255, !dbg !1010
  %39 = add i32 1073876992, %38, !dbg !1011
  %40 = load ptr, ptr %14, align 4, !dbg !1012
  %41 = getelementptr inbounds %struct.stm32_pclken, ptr %40, i32 0, i32 1, !dbg !1013
  %42 = load i32, ptr %41, align 4, !dbg !1013
  %43 = lshr i32 %42, 13, !dbg !1014
  %44 = and i32 %43, 7, !dbg !1015
  %45 = load ptr, ptr %14, align 4, !dbg !1016
  %46 = getelementptr inbounds %struct.stm32_pclken, ptr %45, i32 0, i32 1, !dbg !1017
  %47 = load i32, ptr %46, align 4, !dbg !1017
  %48 = lshr i32 %47, 8, !dbg !1018
  %49 = and i32 %48, 31, !dbg !1019
  %50 = shl i32 %44, %49, !dbg !1020
  store i32 %39, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !826, metadata !DIExpression()), !dbg !1021
  store i32 %50, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !830, metadata !DIExpression()), !dbg !1023
  call void @llvm.dbg.declare(metadata ptr %6, metadata !832, metadata !DIExpression()), !dbg !1024
  %51 = load i32, ptr %4, align 4, !dbg !1025
  %52 = inttoptr i32 %51 to ptr, !dbg !1026
  %53 = load volatile i32, ptr %52, align 4, !dbg !1027
  store i32 %53, ptr %6, align 4, !dbg !1024
  %54 = load i32, ptr %6, align 4, !dbg !1028
  %55 = load i32, ptr %5, align 4, !dbg !1029
  %56 = xor i32 %55, -1, !dbg !1030
  %57 = and i32 %54, %56, !dbg !1031
  %58 = load i32, ptr %4, align 4, !dbg !1032
  %59 = inttoptr i32 %58 to ptr, !dbg !1033
  store volatile i32 %57, ptr %59, align 4, !dbg !1034
  %60 = load ptr, ptr %14, align 4, !dbg !1035
  %61 = getelementptr inbounds %struct.stm32_pclken, ptr %60, i32 0, i32 1, !dbg !1036
  %62 = load i32, ptr %61, align 4, !dbg !1036
  %63 = lshr i32 %62, 0, !dbg !1037
  %64 = and i32 %63, 255, !dbg !1038
  %65 = add i32 1073876992, %64, !dbg !1039
  %66 = load ptr, ptr %14, align 4, !dbg !1040
  %67 = getelementptr inbounds %struct.stm32_pclken, ptr %66, i32 0, i32 1, !dbg !1041
  %68 = load i32, ptr %67, align 4, !dbg !1041
  %69 = lshr i32 %68, 16, !dbg !1042
  %70 = and i32 %69, 7, !dbg !1043
  %71 = load ptr, ptr %14, align 4, !dbg !1044
  %72 = getelementptr inbounds %struct.stm32_pclken, ptr %71, i32 0, i32 1, !dbg !1045
  %73 = load i32, ptr %72, align 4, !dbg !1045
  %74 = lshr i32 %73, 8, !dbg !1046
  %75 = and i32 %74, 31, !dbg !1047
  %76 = shl i32 %70, %75, !dbg !1048
  store i32 %65, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !774, metadata !DIExpression()), !dbg !1049
  store i32 %76, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !784, metadata !DIExpression()), !dbg !1051
  call void @llvm.dbg.declare(metadata ptr %9, metadata !786, metadata !DIExpression()), !dbg !1052
  %77 = load i32, ptr %7, align 4, !dbg !1053
  %78 = inttoptr i32 %77 to ptr, !dbg !1054
  %79 = load volatile i32, ptr %78, align 4, !dbg !1055
  store i32 %79, ptr %9, align 4, !dbg !1052
  %80 = load i32, ptr %9, align 4, !dbg !1056
  %81 = load i32, ptr %8, align 4, !dbg !1057
  %82 = or i32 %80, %81, !dbg !1058
  %83 = load i32, ptr %7, align 4, !dbg !1059
  %84 = inttoptr i32 %83 to ptr, !dbg !1060
  store volatile i32 %82, ptr %84, align 4, !dbg !1061
  store i32 0, ptr %10, align 4, !dbg !1062
  br label %85, !dbg !1062

85:                                               ; preds = %33, %32, %25
  %86 = load i32, ptr %10, align 4, !dbg !1063
  ret i32 %86, !dbg !1063
}

; Function Attrs: noinline nounwind optnone
define internal i32 @get_bus_clock(i32 noundef %0, i32 noundef %1) #0 !dbg !1064 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1067, metadata !DIExpression()), !dbg !1068
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1069, metadata !DIExpression()), !dbg !1070
  %5 = load i32, ptr %3, align 4, !dbg !1071
  %6 = load i32, ptr %4, align 4, !dbg !1072
  %7 = udiv i32 %5, %6, !dbg !1073
  ret i32 %7, !dbg !1074
}

declare i32 @get_pllout_frequency() #2

; Function Attrs: noinline nounwind optnone
define internal i32 @enabled_clock(i32 noundef %0) #0 !dbg !1075 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1078, metadata !DIExpression()), !dbg !1079
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1080, metadata !DIExpression()), !dbg !1081
  store i32 0, ptr %4, align 4, !dbg !1081
  %5 = load i32, ptr %3, align 4, !dbg !1082
  switch i32 %5, label %14 [
    i32 6, label %6
    i32 7, label %7
    i32 1, label %8
    i32 2, label %9
    i32 3, label %10
    i32 4, label %11
    i32 5, label %12
    i32 8, label %13
  ], !dbg !1083

6:                                                ; preds = %1
  br label %15, !dbg !1084

7:                                                ; preds = %1
  br label %15, !dbg !1086

8:                                                ; preds = %1
  store i32 -134, ptr %4, align 4, !dbg !1087
  br label %15, !dbg !1090

9:                                                ; preds = %1
  store i32 -134, ptr %4, align 4, !dbg !1091
  br label %15, !dbg !1094

10:                                               ; preds = %1
  br label %15, !dbg !1095

11:                                               ; preds = %1
  store i32 -134, ptr %4, align 4, !dbg !1096
  br label %15, !dbg !1099

12:                                               ; preds = %1
  store i32 -134, ptr %4, align 4, !dbg !1100
  br label %15, !dbg !1103

13:                                               ; preds = %1
  br label %15, !dbg !1104

14:                                               ; preds = %1
  store i32 -134, ptr %2, align 4, !dbg !1105
  br label %17, !dbg !1105

15:                                               ; preds = %13, %12, %11, %10, %9, %8, %7, %6
  %16 = load i32, ptr %4, align 4, !dbg !1106
  store i32 %16, ptr %2, align 4, !dbg !1107
  br label %17, !dbg !1107

17:                                               ; preds = %15, %14
  %18 = load i32, ptr %2, align 4, !dbg !1108
  ret i32 %18, !dbg !1108
}

attributes #0 = { noinline nounwind optnone "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!219, !220, !221, !222, !223, !224, !225, !226}
!llvm.ident = !{!227}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 824, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "drivers/clock_control/clock_stm32_ll_common.c", directory: "/home/sri/zephyrproject/zephyr")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 13)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "stm32_clock_control_api", scope: !9, file: !2, line: 448, type: !179, isLocal: true, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C99, file: !10, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, retainedTypes: !102, globals: !135, splitDebugInlining: false, nameTableKind: None)
!10 = !DIFile(filename: "clock_stm32_ll_common.c", directory: "/home/sri/zephyrproject/zephyr/build")
!11 = !{!12, !95}
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
!95 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "clock_control_status", file: !96, line: 44, baseType: !14, size: 8, elements: !97)
!96 = !DIFile(filename: "include/zephyr/drivers/clock_control.h", directory: "/home/sri/zephyrproject/zephyr")
!97 = !{!98, !99, !100, !101}
!98 = !DIEnumerator(name: "CLOCK_CONTROL_STATUS_STARTING", value: 0)
!99 = !DIEnumerator(name: "CLOCK_CONTROL_STATUS_OFF", value: 1)
!100 = !DIEnumerator(name: "CLOCK_CONTROL_STATUS_ON", value: 2)
!101 = !DIEnumerator(name: "CLOCK_CONTROL_STATUS_UNKNOWN", value: 3)
!102 = !{!103, !104, !105, !108, !128, !134}
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!104 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !106, line: 64, baseType: !107)
!106 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/stdint.h", directory: "")
!107 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 32)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "RCC_TypeDef", file: !110, line: 461, baseType: !111)
!110 = !DIFile(filename: "modules/hal/stm32/stm32cube/stm32f0xx/soc/stm32f091xc.h", directory: "/home/sri/zephyrproject")
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !110, line: 445, size: 448, elements: !112)
!112 = !{!113, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "CR", scope: !111, file: !110, line: 447, baseType: !114, size: 32)
!114 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !105)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "CFGR", scope: !111, file: !110, line: 448, baseType: !114, size: 32, offset: 32)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "CIR", scope: !111, file: !110, line: 449, baseType: !114, size: 32, offset: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "APB2RSTR", scope: !111, file: !110, line: 450, baseType: !114, size: 32, offset: 96)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "APB1RSTR", scope: !111, file: !110, line: 451, baseType: !114, size: 32, offset: 128)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "AHBENR", scope: !111, file: !110, line: 452, baseType: !114, size: 32, offset: 160)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "APB2ENR", scope: !111, file: !110, line: 453, baseType: !114, size: 32, offset: 192)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "APB1ENR", scope: !111, file: !110, line: 454, baseType: !114, size: 32, offset: 224)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "BDCR", scope: !111, file: !110, line: 455, baseType: !114, size: 32, offset: 256)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "CSR", scope: !111, file: !110, line: 456, baseType: !114, size: 32, offset: 288)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "AHBRSTR", scope: !111, file: !110, line: 457, baseType: !114, size: 32, offset: 320)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "CFGR2", scope: !111, file: !110, line: 458, baseType: !114, size: 32, offset: 352)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "CFGR3", scope: !111, file: !110, line: 459, baseType: !114, size: 32, offset: 384)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "CR2", scope: !111, file: !110, line: 460, baseType: !114, size: 32, offset: 416)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 32)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stm32_pclken", file: !130, line: 396, size: 64, elements: !131)
!130 = !DIFile(filename: "include/zephyr/drivers/clock_control/stm32_clock_control.h", directory: "/home/sri/zephyrproject/zephyr")
!131 = !{!132, !133}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !129, file: !130, line: 397, baseType: !105, size: 32)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "enr", scope: !129, file: !130, line: 398, baseType: !105, size: 32, offset: 32)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 32)
!135 = !{!0, !136, !158, !177, !7}
!136 = !DIGlobalVariableExpression(var: !137, expr: !DIExpression())
!137 = distinct !DIGlobalVariable(name: "__device_dts_ord_9", scope: !9, file: !2, line: 824, type: !138, isLocal: false, isDefinition: true, align: 32)
!138 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !139)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !140, line: 381, size: 160, elements: !141)
!140 = !DIFile(filename: "include/zephyr/device.h", directory: "/home/sri/zephyrproject/zephyr")
!141 = !{!142, !145, !148, !149, !157}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !139, file: !140, line: 383, baseType: !143, size: 32)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 32)
!144 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !139, file: !140, line: 385, baseType: !146, size: 32, offset: 32)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 32)
!147 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "api", scope: !139, file: !140, line: 387, baseType: !146, size: 32, offset: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !139, file: !140, line: 389, baseType: !150, size: 32, offset: 96)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 32)
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_state", file: !140, line: 354, size: 16, elements: !152)
!152 = !{!153, !155}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "init_res", scope: !151, file: !140, line: 362, baseType: !154, size: 8)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !106, line: 62, baseType: !14)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !151, file: !140, line: 367, baseType: !156, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 8)
!156 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !139, file: !140, line: 391, baseType: !103, size: 32, offset: 128)
!158 = !DIGlobalVariableExpression(var: !159, expr: !DIExpression())
!159 = distinct !DIGlobalVariable(name: "__init___device_dts_ord_9", scope: !9, file: !2, line: 824, type: !160, isLocal: true, isDefinition: true, align: 32)
!160 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !161)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "init_entry", file: !162, line: 92, size: 64, elements: !163)
!162 = !DIFile(filename: "include/zephyr/init.h", directory: "/home/sri/zephyrproject/zephyr")
!163 = !{!164, !176}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "init_fn", scope: !161, file: !162, line: 94, baseType: !165, size: 32)
!165 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "init_function", file: !162, line: 59, size: 32, elements: !166)
!166 = !{!167, !171}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "sys", scope: !165, file: !162, line: 66, baseType: !168, size: 32)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 32)
!169 = !DISubroutineType(types: !170)
!170 = !{!104}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !165, file: !162, line: 75, baseType: !172, size: 32)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 32)
!173 = !DISubroutineType(types: !174)
!174 = !{!104, !175}
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 32)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !161, file: !162, line: 99, baseType: !175, size: 32, offset: 32)
!177 = !DIGlobalVariableExpression(var: !178, expr: !DIExpression())
!178 = distinct !DIGlobalVariable(name: "__devstate_dts_ord_9", scope: !9, file: !2, line: 824, type: !151, isLocal: true, isDefinition: true, align: 8)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clock_control_driver_api", file: !96, line: 100, size: 224, elements: !180)
!180 = !{!181, !187, !188, !197, !203, !208, !214}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "on", scope: !179, file: !96, line: 101, baseType: !182, size: 32)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "clock_control", file: !96, line: 76, baseType: !183)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 32)
!184 = !DISubroutineType(types: !185)
!185 = !{!104, !175, !186}
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "clock_control_subsys_t", file: !96, line: 56, baseType: !103)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "off", scope: !179, file: !96, line: 102, baseType: !182, size: 32, offset: 32)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "async_on", scope: !179, file: !96, line: 103, baseType: !189, size: 32, offset: 64)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "clock_control_async_on_fn", file: !96, line: 83, baseType: !190)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 32)
!191 = !DISubroutineType(types: !192)
!192 = !{!104, !175, !186, !193, !103}
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "clock_control_cb_t", file: !96, line: 72, baseType: !194)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 32)
!195 = !DISubroutineType(types: !196)
!196 = !{null, !175, !186, !103}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "get_rate", scope: !179, file: !96, line: 104, baseType: !198, size: 32, offset: 96)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "clock_control_get", file: !96, line: 79, baseType: !199)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 32)
!200 = !DISubroutineType(types: !201)
!201 = !{!104, !175, !186, !202}
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 32)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "get_status", scope: !179, file: !96, line: 105, baseType: !204, size: 32, offset: 128)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "clock_control_get_status_fn", file: !96, line: 88, baseType: !205)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 32)
!206 = !DISubroutineType(types: !207)
!207 = !{!95, !175, !186}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "set_rate", scope: !179, file: !96, line: 106, baseType: !209, size: 32, offset: 160)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "clock_control_set", file: !96, line: 92, baseType: !210)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 32)
!211 = !DISubroutineType(types: !212)
!212 = !{!104, !175, !186, !213}
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "clock_control_subsys_rate_t", file: !96, line: 64, baseType: !103)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "configure", scope: !179, file: !96, line: 107, baseType: !215, size: 32, offset: 192)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "clock_control_configure_fn", file: !96, line: 96, baseType: !216)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 32)
!217 = !DISubroutineType(types: !218)
!218 = !{!104, !175, !186, !103}
!219 = !{i32 7, !"Dwarf Version", i32 4}
!220 = !{i32 2, !"Debug Info Version", i32 3}
!221 = !{i32 1, !"wchar_size", i32 4}
!222 = !{i32 1, !"static_rwdata", i32 1}
!223 = !{i32 1, !"enumsize_buildattr", i32 1}
!224 = !{i32 1, !"armlib_unavailable", i32 0}
!225 = !{i32 8, !"PIC Level", i32 2}
!226 = !{i32 7, !"PIE Level", i32 2}
!227 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
!228 = distinct !DISubprogram(name: "z_impl_device_is_ready", scope: !140, file: !140, line: 744, type: !229, scopeLine: 745, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !231)
!229 = !DISubroutineType(types: !230)
!230 = !{!156, !175}
!231 = !{}
!232 = !DILocalVariable(name: "dev", arg: 1, scope: !228, file: !140, line: 744, type: !175)
!233 = !DILocation(line: 744, column: 65, scope: !228)
!234 = !DILocation(line: 746, column: 27, scope: !228)
!235 = !DILocation(line: 746, column: 9, scope: !228)
!236 = !DILocation(line: 746, column: 2, scope: !228)
!237 = distinct !DISubprogram(name: "z_impl_k_object_access_grant", scope: !13, file: !13, line: 223, type: !238, scopeLine: 225, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !231)
!238 = !DISubroutineType(types: !239)
!239 = !{null, !146, !240}
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 32)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_thread", file: !242, line: 250, size: 896, elements: !243)
!242 = !DIFile(filename: "include/zephyr/kernel/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!243 = !{!244, !313, !326, !327, !328, !329, !349}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !241, file: !242, line: 252, baseType: !245, size: 384)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_base", file: !242, line: 58, size: 384, elements: !246)
!246 = !{!247, !275, !283, !284, !285, !298, !299, !300}
!247 = !DIDerivedType(tag: DW_TAG_member, scope: !245, file: !242, line: 61, baseType: !248, size: 64)
!248 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !245, file: !242, line: 61, size: 64, elements: !249)
!249 = !{!250, !266}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_dlist", scope: !248, file: !242, line: 62, baseType: !251, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dnode_t", file: !252, line: 55, baseType: !253)
!252 = !DIFile(filename: "include/zephyr/sys/dlist.h", directory: "/home/sri/zephyrproject/zephyr")
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_dnode", file: !252, line: 37, size: 64, elements: !254)
!254 = !{!255, !261}
!255 = !DIDerivedType(tag: DW_TAG_member, scope: !253, file: !252, line: 38, baseType: !256, size: 32)
!256 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !253, file: !252, line: 38, size: 32, elements: !257)
!257 = !{!258, !260}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !256, file: !252, line: 39, baseType: !259, size: 32)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 32)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !256, file: !252, line: 40, baseType: !259, size: 32)
!261 = !DIDerivedType(tag: DW_TAG_member, scope: !253, file: !252, line: 42, baseType: !262, size: 32, offset: 32)
!262 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !253, file: !252, line: 42, size: 32, elements: !263)
!263 = !{!264, !265}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !262, file: !252, line: 43, baseType: !259, size: 32)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !262, file: !252, line: 44, baseType: !259, size: 32)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_rb", scope: !248, file: !242, line: 63, baseType: !267, size: 64)
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rbnode", file: !268, line: 58, size: 64, elements: !269)
!268 = !DIFile(filename: "include/zephyr/sys/rb.h", directory: "/home/sri/zephyrproject/zephyr")
!269 = !{!270}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !267, file: !268, line: 60, baseType: !271, size: 64)
!271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !272, size: 64, elements: !273)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 32)
!273 = !{!274}
!274 = !DISubrange(count: 2)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "pended_on", scope: !245, file: !242, line: 69, baseType: !276, size: 32, offset: 64)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 32)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "_wait_q_t", file: !278, line: 243, baseType: !279)
!278 = !DIFile(filename: "include/zephyr/kernel_structs.h", directory: "/home/sri/zephyrproject/zephyr")
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !278, line: 241, size: 64, elements: !280)
!280 = !{!281}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !279, file: !278, line: 242, baseType: !282, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dlist_t", file: !252, line: 51, baseType: !253)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "user_options", scope: !245, file: !242, line: 72, baseType: !154, size: 8, offset: 96)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "thread_state", scope: !245, file: !242, line: 75, baseType: !154, size: 8, offset: 104)
!285 = !DIDerivedType(tag: DW_TAG_member, scope: !245, file: !242, line: 91, baseType: !286, size: 16, offset: 112)
!286 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !245, file: !242, line: 91, size: 16, elements: !287)
!287 = !{!288, !295}
!288 = !DIDerivedType(tag: DW_TAG_member, scope: !286, file: !242, line: 92, baseType: !289, size: 16)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !286, file: !242, line: 92, size: 16, elements: !290)
!290 = !{!291, !294}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !289, file: !242, line: 97, baseType: !292, size: 8)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !106, line: 56, baseType: !293)
!293 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "sched_locked", scope: !289, file: !242, line: 98, baseType: !154, size: 8, offset: 8)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "preempt", scope: !286, file: !242, line: 101, baseType: !296, size: 16)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !106, line: 63, baseType: !297)
!297 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "order_key", scope: !245, file: !242, line: 108, baseType: !105, size: 32, offset: 128)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "swap_data", scope: !245, file: !242, line: 132, baseType: !103, size: 32, offset: 160)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !245, file: !242, line: 136, baseType: !301, size: 192, offset: 192)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_timeout", file: !278, line: 254, size: 192, elements: !302)
!302 = !{!303, !304, !310}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !301, file: !278, line: 255, baseType: !251, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !301, file: !278, line: 256, baseType: !305, size: 32, offset: 64)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "_timeout_func_t", file: !278, line: 252, baseType: !306)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 32)
!307 = !DISubroutineType(types: !308)
!308 = !{null, !309}
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 32)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "dticks", scope: !301, file: !278, line: 259, baseType: !311, size: 64, offset: 128)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !106, line: 59, baseType: !312)
!312 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "callee_saved", scope: !241, file: !242, line: 255, baseType: !314, size: 288, offset: 384)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_callee_saved", file: !315, line: 25, size: 288, elements: !316)
!315 = !DIFile(filename: "include/zephyr/arch/arm/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!316 = !{!317, !318, !319, !320, !321, !322, !323, !324, !325}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "v1", scope: !314, file: !315, line: 26, baseType: !105, size: 32)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "v2", scope: !314, file: !315, line: 27, baseType: !105, size: 32, offset: 32)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "v3", scope: !314, file: !315, line: 28, baseType: !105, size: 32, offset: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "v4", scope: !314, file: !315, line: 29, baseType: !105, size: 32, offset: 96)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "v5", scope: !314, file: !315, line: 30, baseType: !105, size: 32, offset: 128)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "v6", scope: !314, file: !315, line: 31, baseType: !105, size: 32, offset: 160)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "v7", scope: !314, file: !315, line: 32, baseType: !105, size: 32, offset: 192)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "v8", scope: !314, file: !315, line: 33, baseType: !105, size: 32, offset: 224)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "psp", scope: !314, file: !315, line: 34, baseType: !105, size: 32, offset: 256)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "init_data", scope: !241, file: !242, line: 258, baseType: !103, size: 32, offset: 672)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "join_queue", scope: !241, file: !242, line: 261, baseType: !277, size: 64, offset: 704)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "errno_var", scope: !241, file: !242, line: 302, baseType: !104, size: 32, offset: 768)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "resource_pool", scope: !241, file: !242, line: 333, baseType: !330, size: 32, offset: 800)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 32)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_heap", file: !332, line: 5291, size: 160, elements: !333)
!332 = !DIFile(filename: "include/zephyr/kernel.h", directory: "/home/sri/zephyrproject/zephyr")
!333 = !{!334, !345, !346}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !331, file: !332, line: 5292, baseType: !335, size: 96)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sys_heap", file: !336, line: 56, size: 96, elements: !337)
!336 = !DIFile(filename: "include/zephyr/sys/sys_heap.h", directory: "/home/sri/zephyrproject/zephyr")
!337 = !{!338, !341, !342}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !335, file: !336, line: 57, baseType: !339, size: 32)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 32)
!340 = !DICompositeType(tag: DW_TAG_structure_type, name: "z_heap", file: !336, line: 57, flags: DIFlagFwdDecl)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "init_mem", scope: !335, file: !336, line: 58, baseType: !103, size: 32, offset: 32)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "init_bytes", scope: !335, file: !336, line: 59, baseType: !343, size: 32, offset: 64)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !344, line: 46, baseType: !107)
!344 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/lib/clang/17/include/stddef.h", directory: "")
!345 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !331, file: !332, line: 5293, baseType: !277, size: 64, offset: 96)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !331, file: !332, line: 5294, baseType: !347, offset: 160)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_spinlock", file: !348, line: 45, elements: !231)
!348 = !DIFile(filename: "include/zephyr/spinlock.h", directory: "/home/sri/zephyrproject/zephyr")
!349 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !241, file: !242, line: 355, baseType: !350, size: 64, offset: 832)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_arch", file: !315, line: 60, size: 64, elements: !351)
!351 = !{!352, !353}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "basepri", scope: !350, file: !315, line: 63, baseType: !105, size: 32)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "swap_return_value", scope: !350, file: !315, line: 66, baseType: !105, size: 32, offset: 32)
!354 = !DILocalVariable(name: "object", arg: 1, scope: !237, file: !13, line: 223, type: !146)
!355 = !DILocation(line: 223, column: 61, scope: !237)
!356 = !DILocalVariable(name: "thread", arg: 2, scope: !237, file: !13, line: 224, type: !240)
!357 = !DILocation(line: 224, column: 24, scope: !237)
!358 = !DILocation(line: 226, column: 9, scope: !237)
!359 = !DILocation(line: 227, column: 9, scope: !237)
!360 = !DILocation(line: 228, column: 1, scope: !237)
!361 = distinct !DISubprogram(name: "z_impl_k_object_release", scope: !13, file: !13, line: 243, type: !362, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !231)
!362 = !DISubroutineType(types: !363)
!363 = !{null, !146}
!364 = !DILocalVariable(name: "object", arg: 1, scope: !361, file: !13, line: 243, type: !146)
!365 = !DILocation(line: 243, column: 56, scope: !361)
!366 = !DILocation(line: 245, column: 9, scope: !361)
!367 = !DILocation(line: 246, column: 1, scope: !361)
!368 = distinct !DISubprogram(name: "z_impl_k_object_alloc", scope: !13, file: !13, line: 359, type: !369, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !231)
!369 = !DISubroutineType(types: !370)
!370 = !{!103, !12}
!371 = !DILocalVariable(name: "otype", arg: 1, scope: !368, file: !13, line: 359, type: !12)
!372 = !DILocation(line: 359, column: 58, scope: !368)
!373 = !DILocation(line: 361, column: 9, scope: !368)
!374 = !DILocation(line: 363, column: 2, scope: !368)
!375 = distinct !DISubprogram(name: "z_impl_k_object_alloc_size", scope: !13, file: !13, line: 366, type: !376, scopeLine: 368, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !231)
!376 = !DISubroutineType(types: !377)
!377 = !{!103, !12, !343}
!378 = !DILocalVariable(name: "otype", arg: 1, scope: !375, file: !13, line: 366, type: !12)
!379 = !DILocation(line: 366, column: 63, scope: !375)
!380 = !DILocalVariable(name: "size", arg: 2, scope: !375, file: !13, line: 367, type: !343)
!381 = !DILocation(line: 367, column: 13, scope: !375)
!382 = !DILocation(line: 369, column: 9, scope: !375)
!383 = !DILocation(line: 370, column: 9, scope: !375)
!384 = !DILocation(line: 372, column: 2, scope: !375)
!385 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_expires_ticks", scope: !332, file: !332, line: 656, type: !386, scopeLine: 658, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !231)
!386 = !DISubroutineType(types: !387)
!387 = !{!388, !390}
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_ticks_t", file: !389, line: 46, baseType: !311)
!389 = !DIFile(filename: "include/zephyr/sys_clock.h", directory: "/home/sri/zephyrproject/zephyr")
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 32)
!391 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !241)
!392 = !DILocalVariable(name: "t", arg: 1, scope: !385, file: !332, line: 657, type: !390)
!393 = !DILocation(line: 657, column: 30, scope: !385)
!394 = !DILocation(line: 659, column: 28, scope: !385)
!395 = !DILocation(line: 659, column: 31, scope: !385)
!396 = !DILocation(line: 659, column: 36, scope: !385)
!397 = !DILocation(line: 659, column: 9, scope: !385)
!398 = !DILocation(line: 659, column: 2, scope: !385)
!399 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_remaining_ticks", scope: !332, file: !332, line: 671, type: !386, scopeLine: 673, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !231)
!400 = !DILocalVariable(name: "t", arg: 1, scope: !399, file: !332, line: 672, type: !390)
!401 = !DILocation(line: 672, column: 30, scope: !399)
!402 = !DILocation(line: 674, column: 30, scope: !399)
!403 = !DILocation(line: 674, column: 33, scope: !399)
!404 = !DILocation(line: 674, column: 38, scope: !399)
!405 = !DILocation(line: 674, column: 9, scope: !399)
!406 = !DILocation(line: 674, column: 2, scope: !399)
!407 = distinct !DISubprogram(name: "z_impl_k_timer_expires_ticks", scope: !332, file: !332, line: 1634, type: !408, scopeLine: 1636, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !231)
!408 = !DISubroutineType(types: !409)
!409 = !{!388, !410}
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 32)
!411 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !412)
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_timer", file: !332, line: 1439, size: 448, elements: !413)
!413 = !{!414, !415, !416, !421, !422, !427, !428}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !412, file: !332, line: 1445, baseType: !301, size: 192)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !412, file: !332, line: 1448, baseType: !277, size: 64, offset: 192)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_fn", scope: !412, file: !332, line: 1451, baseType: !417, size: 32, offset: 256)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 32)
!418 = !DISubroutineType(types: !419)
!419 = !{null, !420}
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 32)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "stop_fn", scope: !412, file: !332, line: 1454, baseType: !417, size: 32, offset: 288)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !412, file: !332, line: 1457, baseType: !423, size: 64, offset: 320)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_timeout_t", file: !389, line: 67, baseType: !424)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !389, line: 65, size: 64, elements: !425)
!425 = !{!426}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "ticks", scope: !424, file: !389, line: 66, baseType: !388, size: 64)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !412, file: !332, line: 1460, baseType: !105, size: 32, offset: 384)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !412, file: !332, line: 1463, baseType: !103, size: 32, offset: 416)
!429 = !DILocalVariable(name: "timer", arg: 1, scope: !407, file: !332, line: 1635, type: !410)
!430 = !DILocation(line: 1635, column: 34, scope: !407)
!431 = !DILocation(line: 1637, column: 28, scope: !407)
!432 = !DILocation(line: 1637, column: 35, scope: !407)
!433 = !DILocation(line: 1637, column: 9, scope: !407)
!434 = !DILocation(line: 1637, column: 2, scope: !407)
!435 = distinct !DISubprogram(name: "z_impl_k_timer_remaining_ticks", scope: !332, file: !332, line: 1649, type: !408, scopeLine: 1651, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !231)
!436 = !DILocalVariable(name: "timer", arg: 1, scope: !435, file: !332, line: 1650, type: !410)
!437 = !DILocation(line: 1650, column: 34, scope: !435)
!438 = !DILocation(line: 1652, column: 30, scope: !435)
!439 = !DILocation(line: 1652, column: 37, scope: !435)
!440 = !DILocation(line: 1652, column: 9, scope: !435)
!441 = !DILocation(line: 1652, column: 2, scope: !435)
!442 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_set", scope: !332, file: !332, line: 1689, type: !443, scopeLine: 1691, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !231)
!443 = !DISubroutineType(types: !444)
!444 = !{null, !420, !103}
!445 = !DILocalVariable(name: "timer", arg: 1, scope: !442, file: !332, line: 1689, type: !420)
!446 = !DILocation(line: 1689, column: 65, scope: !442)
!447 = !DILocalVariable(name: "user_data", arg: 2, scope: !442, file: !332, line: 1690, type: !103)
!448 = !DILocation(line: 1690, column: 19, scope: !442)
!449 = !DILocation(line: 1692, column: 21, scope: !442)
!450 = !DILocation(line: 1692, column: 2, scope: !442)
!451 = !DILocation(line: 1692, column: 9, scope: !442)
!452 = !DILocation(line: 1692, column: 19, scope: !442)
!453 = !DILocation(line: 1693, column: 1, scope: !442)
!454 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_get", scope: !332, file: !332, line: 1704, type: !455, scopeLine: 1705, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !231)
!455 = !DISubroutineType(types: !456)
!456 = !{!103, !410}
!457 = !DILocalVariable(name: "timer", arg: 1, scope: !454, file: !332, line: 1704, type: !410)
!458 = !DILocation(line: 1704, column: 72, scope: !454)
!459 = !DILocation(line: 1706, column: 9, scope: !454)
!460 = !DILocation(line: 1706, column: 16, scope: !454)
!461 = !DILocation(line: 1706, column: 2, scope: !454)
!462 = distinct !DISubprogram(name: "z_impl_k_queue_is_empty", scope: !332, file: !332, line: 2071, type: !463, scopeLine: 2072, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !231)
!463 = !DISubroutineType(types: !464)
!464 = !{!104, !465}
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 32)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_queue", file: !332, line: 1830, size: 128, elements: !467)
!467 = !{!468, !481, !482}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "data_q", scope: !466, file: !332, line: 1831, baseType: !469, size: 64)
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sflist_t", file: !470, line: 60, baseType: !471)
!470 = !DIFile(filename: "include/zephyr/sys/sflist.h", directory: "/home/sri/zephyrproject/zephyr")
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sflist", file: !470, line: 53, size: 64, elements: !472)
!472 = !{!473, !480}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !471, file: !470, line: 54, baseType: !474, size: 32)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 32)
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sfnode_t", file: !470, line: 50, baseType: !476)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sfnode", file: !470, line: 44, size: 32, elements: !477)
!477 = !{!478}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "next_and_flags", scope: !476, file: !470, line: 45, baseType: !479, size: 32)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "unative_t", file: !470, line: 40, baseType: !105)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !471, file: !470, line: 55, baseType: !474, size: 32, offset: 32)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !466, file: !332, line: 1832, baseType: !347, offset: 64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !466, file: !332, line: 1833, baseType: !277, size: 64, offset: 64)
!483 = !DILocalVariable(name: "queue", arg: 1, scope: !462, file: !332, line: 2071, type: !465)
!484 = !DILocation(line: 2071, column: 59, scope: !462)
!485 = !DILocation(line: 2073, column: 35, scope: !462)
!486 = !DILocation(line: 2073, column: 42, scope: !462)
!487 = !DILocation(line: 2073, column: 14, scope: !462)
!488 = !DILocation(line: 2073, column: 9, scope: !462)
!489 = !DILocation(line: 2073, column: 2, scope: !462)
!490 = distinct !DISubprogram(name: "z_impl_k_sem_count_get", scope: !332, file: !332, line: 3209, type: !491, scopeLine: 3210, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !231)
!491 = !DISubroutineType(types: !492)
!492 = !{!107, !493}
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 32)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sem", file: !332, line: 3092, size: 128, elements: !495)
!495 = !{!496, !497, !498}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !494, file: !332, line: 3093, baseType: !277, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !494, file: !332, line: 3094, baseType: !107, size: 32, offset: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !494, file: !332, line: 3095, baseType: !107, size: 32, offset: 96)
!499 = !DILocalVariable(name: "sem", arg: 1, scope: !490, file: !332, line: 3209, type: !493)
!500 = !DILocation(line: 3209, column: 65, scope: !490)
!501 = !DILocation(line: 3211, column: 9, scope: !490)
!502 = !DILocation(line: 3211, column: 14, scope: !490)
!503 = !DILocation(line: 3211, column: 2, scope: !490)
!504 = distinct !DISubprogram(name: "z_impl_k_msgq_num_free_get", scope: !332, file: !332, line: 4649, type: !505, scopeLine: 4650, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !231)
!505 = !DISubroutineType(types: !506)
!506 = !{!105, !507}
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 32)
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_msgq", file: !332, line: 4390, size: 320, elements: !509)
!509 = !{!510, !511, !512, !513, !514, !516, !517, !518, !519, !520}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !508, file: !332, line: 4392, baseType: !277, size: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !508, file: !332, line: 4394, baseType: !347, offset: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "msg_size", scope: !508, file: !332, line: 4396, baseType: !343, size: 32, offset: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !508, file: !332, line: 4398, baseType: !105, size: 32, offset: 96)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_start", scope: !508, file: !332, line: 4400, baseType: !515, size: 32, offset: 128)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 32)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_end", scope: !508, file: !332, line: 4402, baseType: !515, size: 32, offset: 160)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "read_ptr", scope: !508, file: !332, line: 4404, baseType: !515, size: 32, offset: 192)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "write_ptr", scope: !508, file: !332, line: 4406, baseType: !515, size: 32, offset: 224)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "used_msgs", scope: !508, file: !332, line: 4408, baseType: !105, size: 32, offset: 256)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !508, file: !332, line: 4413, baseType: !154, size: 8, offset: 288)
!521 = !DILocalVariable(name: "msgq", arg: 1, scope: !504, file: !332, line: 4649, type: !507)
!522 = !DILocation(line: 4649, column: 66, scope: !504)
!523 = !DILocation(line: 4651, column: 9, scope: !504)
!524 = !DILocation(line: 4651, column: 15, scope: !504)
!525 = !DILocation(line: 4651, column: 26, scope: !504)
!526 = !DILocation(line: 4651, column: 32, scope: !504)
!527 = !DILocation(line: 4651, column: 24, scope: !504)
!528 = !DILocation(line: 4651, column: 2, scope: !504)
!529 = distinct !DISubprogram(name: "z_impl_k_msgq_num_used_get", scope: !332, file: !332, line: 4665, type: !505, scopeLine: 4666, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !231)
!530 = !DILocalVariable(name: "msgq", arg: 1, scope: !529, file: !332, line: 4665, type: !507)
!531 = !DILocation(line: 4665, column: 66, scope: !529)
!532 = !DILocation(line: 4667, column: 9, scope: !529)
!533 = !DILocation(line: 4667, column: 15, scope: !529)
!534 = !DILocation(line: 4667, column: 2, scope: !529)
!535 = distinct !DISubprogram(name: "stm32_clock_control_init", scope: !2, file: !2, line: 719, type: !173, scopeLine: 720, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !231)
!536 = !DILocalVariable(name: "dev", arg: 1, scope: !535, file: !2, line: 719, type: !175)
!537 = !DILocation(line: 719, column: 51, scope: !535)
!538 = !DILocation(line: 721, column: 9, scope: !535)
!539 = !DILocation(line: 724, column: 2, scope: !535)
!540 = !DILocalVariable(name: "old_flash_freq", scope: !535, file: !2, line: 727, type: !105)
!541 = !DILocation(line: 727, column: 11, scope: !535)
!542 = !DILocalVariable(name: "new_flash_freq", scope: !535, file: !2, line: 728, type: !105)
!543 = !DILocation(line: 728, column: 11, scope: !535)
!544 = !DILocation(line: 730, column: 21, scope: !535)
!545 = !DILocation(line: 730, column: 67, scope: !535)
!546 = !DILocation(line: 730, column: 93, scope: !535)
!547 = !DILocation(line: 730, column: 112, scope: !535)
!548 = !DILocation(line: 730, column: 51, scope: !535)
!549 = !DILocation(line: 730, column: 48, scope: !535)
!550 = !DILocation(line: 730, column: 17, scope: !535)
!551 = !DILocation(line: 733, column: 34, scope: !535)
!552 = !DILocation(line: 733, column: 31, scope: !535)
!553 = !DILocation(line: 733, column: 17, scope: !535)
!554 = !DILocation(line: 737, column: 6, scope: !555)
!555 = distinct !DILexicalBlock(scope: !535, file: !2, line: 737, column: 6)
!556 = !DILocation(line: 737, column: 23, scope: !555)
!557 = !DILocation(line: 737, column: 21, scope: !555)
!558 = !DILocation(line: 737, column: 6, scope: !535)
!559 = !DILocation(line: 738, column: 22, scope: !560)
!560 = distinct !DILexicalBlock(scope: !555, file: !2, line: 737, column: 39)
!561 = !DILocation(line: 738, column: 3, scope: !560)
!562 = !DILocation(line: 739, column: 2, scope: !560)
!563 = !DILocation(line: 743, column: 2, scope: !535)
!564 = !DILocation(line: 746, column: 2, scope: !535)
!565 = !DILocation(line: 753, column: 3, scope: !566)
!566 = distinct !DILexicalBlock(scope: !567, file: !2, line: 752, column: 9)
!567 = distinct !DILexicalBlock(scope: !535, file: !2, line: 748, column: 6)
!568 = !DILocation(line: 758, column: 2, scope: !535)
!569 = !DILocation(line: 759, column: 2, scope: !535)
!570 = !DILocation(line: 759, column: 9, scope: !535)
!571 = !DILocation(line: 759, column: 34, scope: !535)
!572 = distinct !{!572, !569, !573}
!573 = !DILocation(line: 760, column: 2, scope: !535)
!574 = !DILocation(line: 783, column: 6, scope: !575)
!575 = distinct !DILexicalBlock(scope: !535, file: !2, line: 783, column: 6)
!576 = !DILocation(line: 783, column: 24, scope: !575)
!577 = !DILocation(line: 783, column: 21, scope: !575)
!578 = !DILocation(line: 783, column: 6, scope: !535)
!579 = !DILocation(line: 784, column: 22, scope: !580)
!580 = distinct !DILexicalBlock(scope: !575, file: !2, line: 783, column: 40)
!581 = !DILocation(line: 784, column: 3, scope: !580)
!582 = !DILocation(line: 785, column: 2, scope: !580)
!583 = !DILocation(line: 788, column: 18, scope: !535)
!584 = !DILocation(line: 791, column: 2, scope: !535)
!585 = !DILocation(line: 815, column: 2, scope: !535)
!586 = !DILocation(line: 817, column: 2, scope: !535)
!587 = distinct !DISubprogram(name: "LL_RCC_GetAHBPrescaler", scope: !588, file: !588, line: 1169, type: !589, scopeLine: 1170, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !231)
!588 = !DIFile(filename: "modules/hal/stm32/stm32cube/stm32f0xx/drivers/include/stm32f0xx_ll_rcc.h", directory: "/home/sri/zephyrproject")
!589 = !DISubroutineType(types: !590)
!590 = !{!105}
!591 = !DILocation(line: 1171, column: 89, scope: !587)
!592 = !DILocation(line: 1171, column: 95, scope: !587)
!593 = !DILocation(line: 1171, column: 3, scope: !587)
!594 = distinct !DISubprogram(name: "set_up_fixed_clock_sources", scope: !2, file: !2, line: 547, type: !595, scopeLine: 548, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !231)
!595 = !DISubroutineType(types: !596)
!596 = !{null}
!597 = !DILocation(line: 554, column: 4, scope: !598)
!598 = distinct !DILexicalBlock(scope: !599, file: !2, line: 553, column: 10)
!599 = distinct !DILexicalBlock(scope: !600, file: !2, line: 553, column: 7)
!600 = distinct !DILexicalBlock(scope: !601, file: !2, line: 550, column: 9)
!601 = distinct !DILexicalBlock(scope: !594, file: !2, line: 550, column: 6)
!602 = !DILocation(line: 566, column: 3, scope: !600)
!603 = !DILocation(line: 567, column: 3, scope: !600)
!604 = !DILocation(line: 567, column: 10, scope: !600)
!605 = !DILocation(line: 567, column: 31, scope: !600)
!606 = distinct !{!606, !603, !607}
!607 = !DILocation(line: 569, column: 3, scope: !600)
!608 = !DILocation(line: 623, column: 3, scope: !609)
!609 = distinct !DILexicalBlock(scope: !610, file: !2, line: 617, column: 9)
!610 = distinct !DILexicalBlock(scope: !594, file: !2, line: 617, column: 6)
!611 = !DILocation(line: 624, column: 3, scope: !609)
!612 = !DILocation(line: 624, column: 10, scope: !609)
!613 = !DILocation(line: 624, column: 31, scope: !609)
!614 = distinct !{!614, !611, !615}
!615 = !DILocation(line: 625, column: 3, scope: !609)
!616 = !DILocation(line: 705, column: 1, scope: !594)
!617 = distinct !DISubprogram(name: "set_up_plls", scope: !2, file: !2, line: 478, type: !595, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !231)
!618 = !DILocation(line: 490, column: 6, scope: !619)
!619 = distinct !DILexicalBlock(scope: !617, file: !2, line: 490, column: 6)
!620 = !DILocation(line: 490, column: 31, scope: !619)
!621 = !DILocation(line: 490, column: 6, scope: !617)
!622 = !DILocation(line: 491, column: 3, scope: !623)
!623 = distinct !DILexicalBlock(scope: !619, file: !2, line: 490, column: 49)
!624 = !DILocation(line: 492, column: 3, scope: !623)
!625 = !DILocation(line: 493, column: 2, scope: !623)
!626 = !DILocation(line: 494, column: 2, scope: !617)
!627 = !DILocation(line: 526, column: 2, scope: !617)
!628 = !DILocation(line: 529, column: 2, scope: !617)
!629 = !DILocation(line: 530, column: 2, scope: !617)
!630 = !DILocation(line: 530, column: 9, scope: !617)
!631 = !DILocation(line: 530, column: 30, scope: !617)
!632 = distinct !{!632, !629, !633}
!633 = !DILocation(line: 532, column: 2, scope: !617)
!634 = !DILocation(line: 545, column: 1, scope: !617)
!635 = distinct !DISubprogram(name: "LL_RCC_SetAHBPrescaler", scope: !588, file: !588, line: 1134, type: !636, scopeLine: 1135, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !231)
!636 = !DISubroutineType(types: !637)
!637 = !{null, !105}
!638 = !DILocalVariable(name: "Prescaler", arg: 1, scope: !635, file: !588, line: 1134, type: !105)
!639 = !DILocation(line: 1134, column: 54, scope: !635)
!640 = !DILocation(line: 1136, column: 153, scope: !635)
!641 = !DILocation(line: 1136, column: 161, scope: !635)
!642 = !DILocation(line: 1136, column: 188, scope: !635)
!643 = !DILocation(line: 1136, column: 185, scope: !635)
!644 = !DILocation(line: 1136, column: 79, scope: !635)
!645 = !DILocation(line: 1137, column: 1, scope: !635)
!646 = distinct !DISubprogram(name: "LL_RCC_SetSysClkSource", scope: !588, file: !588, line: 1098, type: !636, scopeLine: 1099, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !231)
!647 = !DILocalVariable(name: "Source", arg: 1, scope: !646, file: !588, line: 1098, type: !105)
!648 = !DILocation(line: 1098, column: 54, scope: !646)
!649 = !DILocation(line: 1100, column: 153, scope: !646)
!650 = !DILocation(line: 1100, column: 161, scope: !646)
!651 = !DILocation(line: 1100, column: 188, scope: !646)
!652 = !DILocation(line: 1100, column: 185, scope: !646)
!653 = !DILocation(line: 1100, column: 79, scope: !646)
!654 = !DILocation(line: 1101, column: 1, scope: !646)
!655 = distinct !DISubprogram(name: "LL_RCC_GetSysClkSource", scope: !588, file: !588, line: 1114, type: !589, scopeLine: 1115, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !231)
!656 = !DILocation(line: 1116, column: 89, scope: !655)
!657 = !DILocation(line: 1116, column: 95, scope: !655)
!658 = !DILocation(line: 1116, column: 3, scope: !655)
!659 = distinct !DISubprogram(name: "LL_RCC_SetAPB1Prescaler", scope: !588, file: !588, line: 1150, type: !636, scopeLine: 1151, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !231)
!660 = !DILocalVariable(name: "Prescaler", arg: 1, scope: !659, file: !588, line: 1150, type: !105)
!661 = !DILocation(line: 1150, column: 55, scope: !659)
!662 = !DILocation(line: 1152, column: 153, scope: !659)
!663 = !DILocation(line: 1152, column: 161, scope: !659)
!664 = !DILocation(line: 1152, column: 188, scope: !659)
!665 = !DILocation(line: 1152, column: 185, scope: !659)
!666 = !DILocation(line: 1152, column: 79, scope: !659)
!667 = !DILocation(line: 1153, column: 1, scope: !659)
!668 = distinct !DISubprogram(name: "stm32_clock_control_mco_init", scope: !669, file: !669, line: 86, type: !595, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !231)
!669 = !DIFile(filename: "drivers/clock_control/clock_stm32_ll_mco.h", directory: "/home/sri/zephyrproject/zephyr")
!670 = !DILocation(line: 101, column: 1, scope: !668)
!671 = distinct !DISubprogram(name: "sys_sflist_is_empty", scope: !470, file: !470, line: 335, type: !672, scopeLine: 335, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !231)
!672 = !DISubroutineType(types: !673)
!673 = !{!156, !674}
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 32)
!675 = !DILocalVariable(name: "list", arg: 1, scope: !671, file: !470, line: 335, type: !674)
!676 = !DILocation(line: 335, column: 55, scope: !671)
!677 = !DILocation(line: 335, column: 92, scope: !671)
!678 = !DILocation(line: 335, column: 71, scope: !671)
!679 = !DILocation(line: 335, column: 98, scope: !671)
!680 = !DILocation(line: 335, column: 63, scope: !671)
!681 = distinct !DISubprogram(name: "sys_sflist_peek_head", scope: !470, file: !470, line: 255, type: !682, scopeLine: 256, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !231)
!682 = !DISubroutineType(types: !683)
!683 = !{!474, !674}
!684 = !DILocalVariable(name: "list", arg: 1, scope: !681, file: !470, line: 255, type: !674)
!685 = !DILocation(line: 255, column: 64, scope: !681)
!686 = !DILocation(line: 257, column: 9, scope: !681)
!687 = !DILocation(line: 257, column: 15, scope: !681)
!688 = !DILocation(line: 257, column: 2, scope: !681)
!689 = distinct !DISubprogram(name: "LL_RCC_HSE_EnableBypass", scope: !588, file: !588, line: 688, type: !595, scopeLine: 689, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !231)
!690 = !DILocation(line: 690, column: 75, scope: !689)
!691 = !DILocation(line: 691, column: 1, scope: !689)
!692 = distinct !DISubprogram(name: "LL_RCC_HSE_Enable", scope: !588, file: !588, line: 708, type: !595, scopeLine: 709, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !231)
!693 = !DILocation(line: 710, column: 75, scope: !692)
!694 = !DILocation(line: 711, column: 1, scope: !692)
!695 = distinct !DISubprogram(name: "LL_RCC_HSE_IsReady", scope: !588, file: !588, line: 728, type: !589, scopeLine: 729, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !231)
!696 = !DILocation(line: 730, column: 79, scope: !695)
!697 = !DILocation(line: 730, column: 83, scope: !695)
!698 = !DILocation(line: 730, column: 105, scope: !695)
!699 = !DILocation(line: 730, column: 3, scope: !695)
!700 = distinct !DISubprogram(name: "LL_RCC_LSI_Enable", scope: !588, file: !588, line: 1053, type: !595, scopeLine: 1054, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !231)
!701 = !DILocation(line: 1055, column: 76, scope: !700)
!702 = !DILocation(line: 1056, column: 1, scope: !700)
!703 = distinct !DISubprogram(name: "LL_RCC_LSI_IsReady", scope: !588, file: !588, line: 1073, type: !589, scopeLine: 1074, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !231)
!704 = !DILocation(line: 1075, column: 79, scope: !703)
!705 = !DILocation(line: 1075, column: 84, scope: !703)
!706 = !DILocation(line: 1075, column: 105, scope: !703)
!707 = !DILocation(line: 1075, column: 3, scope: !703)
!708 = distinct !DISubprogram(name: "stm32_clock_switch_to_hsi", scope: !2, file: !2, line: 460, type: !595, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !231)
!709 = !DILocation(line: 463, column: 6, scope: !710)
!710 = distinct !DILexicalBlock(scope: !708, file: !2, line: 463, column: 6)
!711 = !DILocation(line: 463, column: 27, scope: !710)
!712 = !DILocation(line: 463, column: 6, scope: !708)
!713 = !DILocation(line: 465, column: 3, scope: !714)
!714 = distinct !DILexicalBlock(scope: !710, file: !2, line: 463, column: 33)
!715 = !DILocation(line: 466, column: 3, scope: !714)
!716 = !DILocation(line: 466, column: 10, scope: !714)
!717 = !DILocation(line: 466, column: 31, scope: !714)
!718 = distinct !{!718, !715, !719}
!719 = !DILocation(line: 468, column: 3, scope: !714)
!720 = !DILocation(line: 469, column: 2, scope: !714)
!721 = !DILocation(line: 472, column: 2, scope: !708)
!722 = !DILocation(line: 473, column: 2, scope: !708)
!723 = !DILocation(line: 473, column: 9, scope: !708)
!724 = !DILocation(line: 473, column: 34, scope: !708)
!725 = distinct !{!725, !722, !726}
!726 = !DILocation(line: 474, column: 2, scope: !708)
!727 = !DILocation(line: 475, column: 1, scope: !708)
!728 = distinct !DISubprogram(name: "LL_RCC_PLL_Disable", scope: !588, file: !588, line: 1516, type: !595, scopeLine: 1517, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !231)
!729 = !DILocation(line: 1518, column: 75, scope: !728)
!730 = !DILocation(line: 1519, column: 1, scope: !728)
!731 = distinct !DISubprogram(name: "LL_RCC_PLL_Enable", scope: !588, file: !588, line: 1505, type: !595, scopeLine: 1506, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !231)
!732 = !DILocation(line: 1507, column: 75, scope: !731)
!733 = !DILocation(line: 1508, column: 1, scope: !731)
!734 = distinct !DISubprogram(name: "LL_RCC_PLL_IsReady", scope: !588, file: !588, line: 1526, type: !589, scopeLine: 1527, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !231)
!735 = !DILocation(line: 1528, column: 79, scope: !734)
!736 = !DILocation(line: 1528, column: 83, scope: !734)
!737 = !DILocation(line: 1528, column: 105, scope: !734)
!738 = !DILocation(line: 1528, column: 3, scope: !734)
!739 = distinct !DISubprogram(name: "LL_RCC_HSI_IsReady", scope: !588, file: !588, line: 766, type: !589, scopeLine: 767, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !231)
!740 = !DILocation(line: 768, column: 79, scope: !739)
!741 = !DILocation(line: 768, column: 83, scope: !739)
!742 = !DILocation(line: 768, column: 104, scope: !739)
!743 = !DILocation(line: 768, column: 3, scope: !739)
!744 = distinct !DISubprogram(name: "LL_RCC_HSI_Enable", scope: !588, file: !588, line: 746, type: !595, scopeLine: 747, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !231)
!745 = !DILocation(line: 748, column: 75, scope: !744)
!746 = !DILocation(line: 749, column: 1, scope: !744)
!747 = distinct !DISubprogram(name: "stm32_clock_control_on", scope: !2, file: !2, line: 199, type: !184, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !231)
!748 = !DILocalVariable(name: "dev", arg: 1, scope: !747, file: !2, line: 199, type: !175)
!749 = !DILocation(line: 199, column: 63, scope: !747)
!750 = !DILocalVariable(name: "sub_system", arg: 2, scope: !747, file: !2, line: 200, type: !186)
!751 = !DILocation(line: 200, column: 30, scope: !747)
!752 = !DILocalVariable(name: "pclken", scope: !747, file: !2, line: 202, type: !128)
!753 = !DILocation(line: 202, column: 23, scope: !747)
!754 = !DILocation(line: 202, column: 56, scope: !747)
!755 = !DILocation(line: 204, column: 9, scope: !747)
!756 = !DILocation(line: 206, column: 8, scope: !757)
!757 = distinct !DILexicalBlock(scope: !747, file: !2, line: 206, column: 6)
!758 = !DILocation(line: 206, column: 16, scope: !757)
!759 = !DILocation(line: 206, column: 21, scope: !757)
!760 = !DILocation(line: 206, column: 32, scope: !757)
!761 = !DILocation(line: 206, column: 36, scope: !757)
!762 = !DILocation(line: 206, column: 44, scope: !757)
!763 = !DILocation(line: 206, column: 49, scope: !757)
!764 = !DILocation(line: 0, scope: !757)
!765 = !DILocation(line: 206, column: 61, scope: !757)
!766 = !DILocation(line: 206, column: 6, scope: !747)
!767 = !DILocation(line: 208, column: 3, scope: !768)
!768 = distinct !DILexicalBlock(scope: !757, file: !2, line: 206, column: 67)
!769 = !DILocation(line: 211, column: 28, scope: !747)
!770 = !DILocation(line: 211, column: 36, scope: !747)
!771 = !DILocation(line: 211, column: 26, scope: !747)
!772 = !DILocation(line: 212, column: 8, scope: !747)
!773 = !DILocation(line: 212, column: 16, scope: !747)
!774 = !DILocalVariable(name: "addr", arg: 1, scope: !775, file: !776, line: 45, type: !779)
!775 = distinct !DISubprogram(name: "sys_set_bits", scope: !776, file: !776, line: 45, type: !777, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !231)
!776 = !DIFile(filename: "include/zephyr/arch/common/sys_bitops.h", directory: "/home/sri/zephyrproject/zephyr")
!777 = !DISubroutineType(types: !778)
!778 = !{null, !779, !107}
!779 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_addr_t", file: !780, line: 21, baseType: !781)
!780 = !DIFile(filename: "include/zephyr/sys/sys_io.h", directory: "/home/sri/zephyrproject/zephyr")
!781 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !106, line: 102, baseType: !107)
!782 = !DILocation(line: 45, column: 75, scope: !775, inlinedAt: !783)
!783 = distinct !DILocation(line: 211, column: 2, scope: !747)
!784 = !DILocalVariable(name: "mask", arg: 2, scope: !775, file: !776, line: 45, type: !107)
!785 = !DILocation(line: 45, column: 94, scope: !775, inlinedAt: !783)
!786 = !DILocalVariable(name: "temp", scope: !775, file: !776, line: 47, type: !105)
!787 = !DILocation(line: 47, column: 11, scope: !775, inlinedAt: !783)
!788 = !DILocation(line: 47, column: 40, scope: !775, inlinedAt: !783)
!789 = !DILocation(line: 47, column: 19, scope: !775, inlinedAt: !783)
!790 = !DILocation(line: 47, column: 18, scope: !775, inlinedAt: !783)
!791 = !DILocation(line: 49, column: 31, scope: !775, inlinedAt: !783)
!792 = !DILocation(line: 49, column: 38, scope: !775, inlinedAt: !783)
!793 = !DILocation(line: 49, column: 36, scope: !775, inlinedAt: !783)
!794 = !DILocation(line: 49, column: 24, scope: !775, inlinedAt: !783)
!795 = !DILocation(line: 49, column: 3, scope: !775, inlinedAt: !783)
!796 = !DILocation(line: 49, column: 29, scope: !775, inlinedAt: !783)
!797 = !DILocation(line: 214, column: 2, scope: !747)
!798 = !DILocation(line: 215, column: 1, scope: !747)
!799 = distinct !DISubprogram(name: "stm32_clock_control_off", scope: !2, file: !2, line: 217, type: !184, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !231)
!800 = !DILocalVariable(name: "dev", arg: 1, scope: !799, file: !2, line: 217, type: !175)
!801 = !DILocation(line: 217, column: 64, scope: !799)
!802 = !DILocalVariable(name: "sub_system", arg: 2, scope: !799, file: !2, line: 218, type: !186)
!803 = !DILocation(line: 218, column: 31, scope: !799)
!804 = !DILocalVariable(name: "pclken", scope: !799, file: !2, line: 220, type: !128)
!805 = !DILocation(line: 220, column: 23, scope: !799)
!806 = !DILocation(line: 220, column: 56, scope: !799)
!807 = !DILocation(line: 222, column: 9, scope: !799)
!808 = !DILocation(line: 224, column: 8, scope: !809)
!809 = distinct !DILexicalBlock(scope: !799, file: !2, line: 224, column: 6)
!810 = !DILocation(line: 224, column: 16, scope: !809)
!811 = !DILocation(line: 224, column: 21, scope: !809)
!812 = !DILocation(line: 224, column: 32, scope: !809)
!813 = !DILocation(line: 224, column: 36, scope: !809)
!814 = !DILocation(line: 224, column: 44, scope: !809)
!815 = !DILocation(line: 224, column: 49, scope: !809)
!816 = !DILocation(line: 0, scope: !809)
!817 = !DILocation(line: 224, column: 61, scope: !809)
!818 = !DILocation(line: 224, column: 6, scope: !799)
!819 = !DILocation(line: 226, column: 3, scope: !820)
!820 = distinct !DILexicalBlock(scope: !809, file: !2, line: 224, column: 67)
!821 = !DILocation(line: 229, column: 30, scope: !799)
!822 = !DILocation(line: 229, column: 38, scope: !799)
!823 = !DILocation(line: 229, column: 28, scope: !799)
!824 = !DILocation(line: 230, column: 10, scope: !799)
!825 = !DILocation(line: 230, column: 18, scope: !799)
!826 = !DILocalVariable(name: "addr", arg: 1, scope: !827, file: !776, line: 52, type: !779)
!827 = distinct !DISubprogram(name: "sys_clear_bits", scope: !776, file: !776, line: 52, type: !777, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !231)
!828 = !DILocation(line: 52, column: 77, scope: !827, inlinedAt: !829)
!829 = distinct !DILocation(line: 229, column: 2, scope: !799)
!830 = !DILocalVariable(name: "mask", arg: 2, scope: !827, file: !776, line: 52, type: !107)
!831 = !DILocation(line: 52, column: 96, scope: !827, inlinedAt: !829)
!832 = !DILocalVariable(name: "temp", scope: !827, file: !776, line: 54, type: !105)
!833 = !DILocation(line: 54, column: 11, scope: !827, inlinedAt: !829)
!834 = !DILocation(line: 54, column: 40, scope: !827, inlinedAt: !829)
!835 = !DILocation(line: 54, column: 19, scope: !827, inlinedAt: !829)
!836 = !DILocation(line: 54, column: 18, scope: !827, inlinedAt: !829)
!837 = !DILocation(line: 56, column: 31, scope: !827, inlinedAt: !829)
!838 = !DILocation(line: 56, column: 39, scope: !827, inlinedAt: !829)
!839 = !DILocation(line: 56, column: 38, scope: !827, inlinedAt: !829)
!840 = !DILocation(line: 56, column: 36, scope: !827, inlinedAt: !829)
!841 = !DILocation(line: 56, column: 24, scope: !827, inlinedAt: !829)
!842 = !DILocation(line: 56, column: 3, scope: !827, inlinedAt: !829)
!843 = !DILocation(line: 56, column: 29, scope: !827, inlinedAt: !829)
!844 = !DILocation(line: 232, column: 2, scope: !799)
!845 = !DILocation(line: 233, column: 1, scope: !799)
!846 = distinct !DISubprogram(name: "stm32_clock_control_get_subsys_rate", scope: !2, file: !2, line: 270, type: !200, scopeLine: 273, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !231)
!847 = !DILocalVariable(name: "clock", arg: 1, scope: !846, file: !2, line: 270, type: !175)
!848 = !DILocation(line: 270, column: 69, scope: !846)
!849 = !DILocalVariable(name: "sub_system", arg: 2, scope: !846, file: !2, line: 271, type: !186)
!850 = !DILocation(line: 271, column: 30, scope: !846)
!851 = !DILocalVariable(name: "rate", arg: 3, scope: !846, file: !2, line: 272, type: !202)
!852 = !DILocation(line: 272, column: 17, scope: !846)
!853 = !DILocalVariable(name: "pclken", scope: !846, file: !2, line: 274, type: !128)
!854 = !DILocation(line: 274, column: 23, scope: !846)
!855 = !DILocation(line: 274, column: 56, scope: !846)
!856 = !DILocalVariable(name: "ahb_clock", scope: !846, file: !2, line: 281, type: !105)
!857 = !DILocation(line: 281, column: 11, scope: !846)
!858 = !DILocation(line: 281, column: 23, scope: !846)
!859 = !DILocalVariable(name: "apb1_clock", scope: !846, file: !2, line: 282, type: !105)
!860 = !DILocation(line: 282, column: 11, scope: !846)
!861 = !DILocation(line: 282, column: 38, scope: !846)
!862 = !DILocation(line: 282, column: 24, scope: !846)
!863 = !DILocalVariable(name: "apb2_clock", scope: !846, file: !2, line: 287, type: !105)
!864 = !DILocation(line: 287, column: 11, scope: !846)
!865 = !DILocation(line: 287, column: 24, scope: !846)
!866 = !DILocation(line: 298, column: 6, scope: !867)
!867 = distinct !DILexicalBlock(scope: !846, file: !2, line: 298, column: 6)
!868 = !DILocation(line: 298, column: 14, scope: !867)
!869 = !DILocation(line: 298, column: 18, scope: !867)
!870 = !DILocation(line: 298, column: 6, scope: !846)
!871 = !DILocation(line: 301, column: 3, scope: !872)
!872 = distinct !DILexicalBlock(scope: !867, file: !2, line: 298, column: 28)
!873 = !DILocation(line: 305, column: 9, scope: !846)
!874 = !DILocation(line: 307, column: 10, scope: !846)
!875 = !DILocation(line: 307, column: 18, scope: !846)
!876 = !DILocation(line: 307, column: 2, scope: !846)
!877 = !DILocation(line: 315, column: 11, scope: !878)
!878 = distinct !DILexicalBlock(scope: !846, file: !2, line: 307, column: 23)
!879 = !DILocation(line: 315, column: 4, scope: !878)
!880 = !DILocation(line: 315, column: 9, scope: !878)
!881 = !DILocation(line: 316, column: 3, scope: !878)
!882 = !DILocation(line: 326, column: 11, scope: !878)
!883 = !DILocation(line: 326, column: 4, scope: !878)
!884 = !DILocation(line: 326, column: 9, scope: !878)
!885 = !DILocation(line: 327, column: 3, scope: !878)
!886 = !DILocation(line: 330, column: 11, scope: !878)
!887 = !DILocation(line: 330, column: 4, scope: !878)
!888 = !DILocation(line: 330, column: 9, scope: !878)
!889 = !DILocation(line: 331, column: 3, scope: !878)
!890 = !DILocation(line: 341, column: 11, scope: !878)
!891 = !DILocation(line: 341, column: 27, scope: !878)
!892 = !DILocation(line: 341, column: 4, scope: !878)
!893 = !DILocation(line: 341, column: 9, scope: !878)
!894 = !DILocation(line: 342, column: 3, scope: !878)
!895 = !DILocation(line: 346, column: 7, scope: !896)
!896 = distinct !DILexicalBlock(scope: !878, file: !2, line: 346, column: 7)
!897 = !DILocation(line: 346, column: 30, scope: !896)
!898 = !DILocation(line: 346, column: 7, scope: !878)
!899 = !DILocation(line: 347, column: 4, scope: !900)
!900 = distinct !DILexicalBlock(scope: !896, file: !2, line: 346, column: 36)
!901 = !DILocation(line: 349, column: 11, scope: !878)
!902 = !DILocation(line: 349, column: 4, scope: !878)
!903 = !DILocation(line: 349, column: 9, scope: !878)
!904 = !DILocation(line: 350, column: 3, scope: !878)
!905 = !DILocation(line: 388, column: 4, scope: !878)
!906 = !DILocation(line: 388, column: 9, scope: !878)
!907 = !DILocation(line: 389, column: 3, scope: !878)
!908 = !DILocation(line: 393, column: 4, scope: !878)
!909 = !DILocation(line: 393, column: 9, scope: !878)
!910 = !DILocation(line: 394, column: 3, scope: !878)
!911 = !DILocation(line: 398, column: 4, scope: !878)
!912 = !DILocation(line: 398, column: 9, scope: !878)
!913 = !DILocation(line: 399, column: 3, scope: !878)
!914 = !DILocation(line: 417, column: 3, scope: !878)
!915 = !DILocation(line: 420, column: 2, scope: !846)
!916 = !DILocation(line: 421, column: 1, scope: !846)
!917 = distinct !DISubprogram(name: "stm32_clock_control_get_status", scope: !2, file: !2, line: 423, type: !206, scopeLine: 425, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !231)
!918 = !DILocalVariable(name: "dev", arg: 1, scope: !917, file: !2, line: 423, type: !175)
!919 = !DILocation(line: 423, column: 86, scope: !917)
!920 = !DILocalVariable(name: "sub_system", arg: 2, scope: !917, file: !2, line: 424, type: !186)
!921 = !DILocation(line: 424, column: 32, scope: !917)
!922 = !DILocalVariable(name: "pclken", scope: !917, file: !2, line: 426, type: !128)
!923 = !DILocation(line: 426, column: 23, scope: !917)
!924 = !DILocation(line: 426, column: 55, scope: !917)
!925 = !DILocation(line: 428, column: 9, scope: !917)
!926 = !DILocation(line: 430, column: 8, scope: !927)
!927 = distinct !DILexicalBlock(scope: !917, file: !2, line: 430, column: 6)
!928 = !DILocation(line: 430, column: 16, scope: !927)
!929 = !DILocation(line: 430, column: 21, scope: !927)
!930 = !DILocation(line: 430, column: 32, scope: !927)
!931 = !DILocation(line: 430, column: 36, scope: !927)
!932 = !DILocation(line: 430, column: 44, scope: !927)
!933 = !DILocation(line: 430, column: 49, scope: !927)
!934 = !DILocation(line: 0, scope: !927)
!935 = !DILocation(line: 430, column: 61, scope: !927)
!936 = !DILocation(line: 430, column: 6, scope: !917)
!937 = !DILocation(line: 432, column: 32, scope: !938)
!938 = distinct !DILexicalBlock(scope: !939, file: !2, line: 432, column: 7)
!939 = distinct !DILexicalBlock(scope: !927, file: !2, line: 430, column: 67)
!940 = !DILocation(line: 432, column: 40, scope: !938)
!941 = !DILocation(line: 432, column: 30, scope: !938)
!942 = !DILocalVariable(name: "addr", arg: 1, scope: !943, file: !944, line: 43, type: !779)
!943 = distinct !DISubprogram(name: "sys_read32", scope: !944, file: !944, line: 43, type: !945, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !231)
!944 = !DIFile(filename: "include/zephyr/arch/common/sys_io.h", directory: "/home/sri/zephyrproject/zephyr")
!945 = !DISubroutineType(types: !946)
!946 = !{!105, !779}
!947 = !DILocation(line: 43, column: 77, scope: !943, inlinedAt: !948)
!948 = distinct !DILocation(line: 432, column: 8, scope: !938)
!949 = !DILocation(line: 45, column: 31, scope: !943, inlinedAt: !948)
!950 = !DILocation(line: 45, column: 10, scope: !943, inlinedAt: !948)
!951 = !DILocation(line: 45, column: 9, scope: !943, inlinedAt: !948)
!952 = !DILocation(line: 432, column: 47, scope: !938)
!953 = !DILocation(line: 432, column: 55, scope: !938)
!954 = !DILocation(line: 432, column: 45, scope: !938)
!955 = !DILocation(line: 433, column: 10, scope: !938)
!956 = !DILocation(line: 433, column: 18, scope: !938)
!957 = !DILocation(line: 433, column: 7, scope: !938)
!958 = !DILocation(line: 432, column: 7, scope: !939)
!959 = !DILocation(line: 434, column: 4, scope: !960)
!960 = distinct !DILexicalBlock(scope: !938, file: !2, line: 433, column: 23)
!961 = !DILocation(line: 436, column: 4, scope: !962)
!962 = distinct !DILexicalBlock(scope: !938, file: !2, line: 435, column: 10)
!963 = !DILocation(line: 440, column: 21, scope: !964)
!964 = distinct !DILexicalBlock(scope: !965, file: !2, line: 440, column: 7)
!965 = distinct !DILexicalBlock(scope: !927, file: !2, line: 438, column: 9)
!966 = !DILocation(line: 440, column: 29, scope: !964)
!967 = !DILocation(line: 440, column: 7, scope: !964)
!968 = !DILocation(line: 440, column: 34, scope: !964)
!969 = !DILocation(line: 440, column: 7, scope: !965)
!970 = !DILocation(line: 441, column: 4, scope: !971)
!971 = distinct !DILexicalBlock(scope: !964, file: !2, line: 440, column: 40)
!972 = !DILocation(line: 443, column: 4, scope: !973)
!973 = distinct !DILexicalBlock(scope: !964, file: !2, line: 442, column: 10)
!974 = !DILocation(line: 446, column: 1, scope: !917)
!975 = distinct !DISubprogram(name: "stm32_clock_control_configure", scope: !2, file: !2, line: 235, type: !217, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !231)
!976 = !DILocalVariable(name: "dev", arg: 1, scope: !975, file: !2, line: 235, type: !175)
!977 = !DILocation(line: 235, column: 70, scope: !975)
!978 = !DILocalVariable(name: "sub_system", arg: 2, scope: !975, file: !2, line: 236, type: !186)
!979 = !DILocation(line: 236, column: 30, scope: !975)
!980 = !DILocalVariable(name: "data", arg: 3, scope: !975, file: !2, line: 237, type: !103)
!981 = !DILocation(line: 237, column: 13, scope: !975)
!982 = !DILocalVariable(name: "pclken", scope: !975, file: !2, line: 241, type: !128)
!983 = !DILocation(line: 241, column: 23, scope: !975)
!984 = !DILocation(line: 241, column: 56, scope: !975)
!985 = !DILocalVariable(name: "err", scope: !975, file: !2, line: 242, type: !104)
!986 = !DILocation(line: 242, column: 6, scope: !975)
!987 = !DILocation(line: 244, column: 9, scope: !975)
!988 = !DILocation(line: 245, column: 9, scope: !975)
!989 = !DILocation(line: 247, column: 22, scope: !975)
!990 = !DILocation(line: 247, column: 30, scope: !975)
!991 = !DILocation(line: 247, column: 8, scope: !975)
!992 = !DILocation(line: 247, column: 6, scope: !975)
!993 = !DILocation(line: 248, column: 6, scope: !994)
!994 = distinct !DILexicalBlock(scope: !975, file: !2, line: 248, column: 6)
!995 = !DILocation(line: 248, column: 10, scope: !994)
!996 = !DILocation(line: 248, column: 6, scope: !975)
!997 = !DILocation(line: 250, column: 10, scope: !998)
!998 = distinct !DILexicalBlock(scope: !994, file: !2, line: 248, column: 15)
!999 = !DILocation(line: 250, column: 3, scope: !998)
!1000 = !DILocation(line: 253, column: 6, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !975, file: !2, line: 253, column: 6)
!1002 = !DILocation(line: 253, column: 14, scope: !1001)
!1003 = !DILocation(line: 253, column: 18, scope: !1001)
!1004 = !DILocation(line: 253, column: 6, scope: !975)
!1005 = !DILocation(line: 255, column: 3, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !1001, file: !2, line: 253, column: 27)
!1007 = !DILocation(line: 258, column: 33, scope: !975)
!1008 = !DILocation(line: 258, column: 41, scope: !975)
!1009 = !DILocation(line: 258, column: 46, scope: !975)
!1010 = !DILocation(line: 258, column: 53, scope: !975)
!1011 = !DILocation(line: 258, column: 28, scope: !975)
!1012 = !DILocation(line: 259, column: 13, scope: !975)
!1013 = !DILocation(line: 259, column: 21, scope: !975)
!1014 = !DILocation(line: 259, column: 26, scope: !975)
!1015 = !DILocation(line: 259, column: 34, scope: !975)
!1016 = !DILocation(line: 259, column: 48, scope: !975)
!1017 = !DILocation(line: 259, column: 56, scope: !975)
!1018 = !DILocation(line: 259, column: 61, scope: !975)
!1019 = !DILocation(line: 259, column: 68, scope: !975)
!1020 = !DILocation(line: 259, column: 42, scope: !975)
!1021 = !DILocation(line: 52, column: 77, scope: !827, inlinedAt: !1022)
!1022 = distinct !DILocation(line: 258, column: 2, scope: !975)
!1023 = !DILocation(line: 52, column: 96, scope: !827, inlinedAt: !1022)
!1024 = !DILocation(line: 54, column: 11, scope: !827, inlinedAt: !1022)
!1025 = !DILocation(line: 54, column: 40, scope: !827, inlinedAt: !1022)
!1026 = !DILocation(line: 54, column: 19, scope: !827, inlinedAt: !1022)
!1027 = !DILocation(line: 54, column: 18, scope: !827, inlinedAt: !1022)
!1028 = !DILocation(line: 56, column: 31, scope: !827, inlinedAt: !1022)
!1029 = !DILocation(line: 56, column: 39, scope: !827, inlinedAt: !1022)
!1030 = !DILocation(line: 56, column: 38, scope: !827, inlinedAt: !1022)
!1031 = !DILocation(line: 56, column: 36, scope: !827, inlinedAt: !1022)
!1032 = !DILocation(line: 56, column: 24, scope: !827, inlinedAt: !1022)
!1033 = !DILocation(line: 56, column: 3, scope: !827, inlinedAt: !1022)
!1034 = !DILocation(line: 56, column: 29, scope: !827, inlinedAt: !1022)
!1035 = !DILocation(line: 260, column: 31, scope: !975)
!1036 = !DILocation(line: 260, column: 39, scope: !975)
!1037 = !DILocation(line: 260, column: 44, scope: !975)
!1038 = !DILocation(line: 260, column: 51, scope: !975)
!1039 = !DILocation(line: 260, column: 26, scope: !975)
!1040 = !DILocation(line: 261, column: 11, scope: !975)
!1041 = !DILocation(line: 261, column: 19, scope: !975)
!1042 = !DILocation(line: 261, column: 24, scope: !975)
!1043 = !DILocation(line: 261, column: 32, scope: !975)
!1044 = !DILocation(line: 261, column: 46, scope: !975)
!1045 = !DILocation(line: 261, column: 54, scope: !975)
!1046 = !DILocation(line: 261, column: 59, scope: !975)
!1047 = !DILocation(line: 261, column: 66, scope: !975)
!1048 = !DILocation(line: 261, column: 40, scope: !975)
!1049 = !DILocation(line: 45, column: 75, scope: !775, inlinedAt: !1050)
!1050 = distinct !DILocation(line: 260, column: 2, scope: !975)
!1051 = !DILocation(line: 45, column: 94, scope: !775, inlinedAt: !1050)
!1052 = !DILocation(line: 47, column: 11, scope: !775, inlinedAt: !1050)
!1053 = !DILocation(line: 47, column: 40, scope: !775, inlinedAt: !1050)
!1054 = !DILocation(line: 47, column: 19, scope: !775, inlinedAt: !1050)
!1055 = !DILocation(line: 47, column: 18, scope: !775, inlinedAt: !1050)
!1056 = !DILocation(line: 49, column: 31, scope: !775, inlinedAt: !1050)
!1057 = !DILocation(line: 49, column: 38, scope: !775, inlinedAt: !1050)
!1058 = !DILocation(line: 49, column: 36, scope: !775, inlinedAt: !1050)
!1059 = !DILocation(line: 49, column: 24, scope: !775, inlinedAt: !1050)
!1060 = !DILocation(line: 49, column: 3, scope: !775, inlinedAt: !1050)
!1061 = !DILocation(line: 49, column: 29, scope: !775, inlinedAt: !1050)
!1062 = !DILocation(line: 263, column: 2, scope: !975)
!1063 = !DILocation(line: 268, column: 1, scope: !975)
!1064 = distinct !DISubprogram(name: "get_bus_clock", scope: !2, file: !2, line: 74, type: !1065, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !231)
!1065 = !DISubroutineType(types: !1066)
!1066 = !{!105, !105, !105}
!1067 = !DILocalVariable(name: "clock", arg: 1, scope: !1064, file: !2, line: 74, type: !105)
!1068 = !DILocation(line: 74, column: 40, scope: !1064)
!1069 = !DILocalVariable(name: "prescaler", arg: 2, scope: !1064, file: !2, line: 74, type: !105)
!1070 = !DILocation(line: 74, column: 56, scope: !1064)
!1071 = !DILocation(line: 76, column: 9, scope: !1064)
!1072 = !DILocation(line: 76, column: 17, scope: !1064)
!1073 = !DILocation(line: 76, column: 15, scope: !1064)
!1074 = !DILocation(line: 76, column: 2, scope: !1064)
!1075 = distinct !DISubprogram(name: "enabled_clock", scope: !2, file: !2, line: 95, type: !1076, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !231)
!1076 = !DISubroutineType(types: !1077)
!1077 = !{!104, !105}
!1078 = !DILocalVariable(name: "src_clk", arg: 1, scope: !1075, file: !2, line: 95, type: !105)
!1079 = !DILocation(line: 95, column: 35, scope: !1075)
!1080 = !DILocalVariable(name: "r", scope: !1075, file: !2, line: 97, type: !104)
!1081 = !DILocation(line: 97, column: 6, scope: !1075)
!1082 = !DILocation(line: 99, column: 10, scope: !1075)
!1083 = !DILocation(line: 99, column: 2, scope: !1075)
!1084 = !DILocation(line: 102, column: 3, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1075, file: !2, line: 99, column: 19)
!1086 = !DILocation(line: 106, column: 3, scope: !1085)
!1087 = !DILocation(line: 118, column: 6, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1089, file: !2, line: 117, column: 11)
!1089 = distinct !DILexicalBlock(scope: !1085, file: !2, line: 117, column: 7)
!1090 = !DILocation(line: 120, column: 3, scope: !1085)
!1091 = !DILocation(line: 125, column: 6, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !1093, file: !2, line: 124, column: 11)
!1093 = distinct !DILexicalBlock(scope: !1085, file: !2, line: 124, column: 7)
!1094 = !DILocation(line: 127, column: 3, scope: !1085)
!1095 = !DILocation(line: 134, column: 3, scope: !1085)
!1096 = !DILocation(line: 139, column: 6, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !1098, file: !2, line: 138, column: 11)
!1098 = distinct !DILexicalBlock(scope: !1085, file: !2, line: 138, column: 7)
!1099 = !DILocation(line: 141, column: 3, scope: !1085)
!1100 = !DILocation(line: 146, column: 6, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1102, file: !2, line: 145, column: 11)
!1102 = distinct !DILexicalBlock(scope: !1085, file: !2, line: 145, column: 7)
!1103 = !DILocation(line: 148, column: 3, scope: !1085)
!1104 = !DILocation(line: 162, column: 3, scope: !1085)
!1105 = !DILocation(line: 193, column: 3, scope: !1085)
!1106 = !DILocation(line: 196, column: 9, scope: !1075)
!1107 = !DILocation(line: 196, column: 2, scope: !1075)
!1108 = !DILocation(line: 197, column: 1, scope: !1075)
