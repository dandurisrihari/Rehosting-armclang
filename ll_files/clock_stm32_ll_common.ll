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

@AHBPrescTable = external dso_local constant [16 x i8], align 1
@SystemCoreClock = external dso_local global i32, align 4
@.str = private unnamed_addr constant [13 x i8] c"rcc@40021000\00", align 1, !dbg !0
@stm32_clock_control_api = internal global %struct.clock_control_driver_api { ptr @stm32_clock_control_on, ptr @stm32_clock_control_off, ptr null, ptr @stm32_clock_control_get_subsys_rate, ptr @stm32_clock_control_get_status, ptr null, ptr @stm32_clock_control_configure }, align 4, !dbg !7
@__devstate_dts_ord_9 = internal global %struct.device_state zeroinitializer, section ".z_devstate", align 1, !dbg !182
@__device_dts_ord_9 = hidden constant %struct.device { ptr @.str, ptr null, ptr @stm32_clock_control_api, ptr @__devstate_dts_ord_9, ptr null }, section "._device.static.1_1_", align 4, !dbg !141
@__init___device_dts_ord_9 = internal constant %struct.init_entry { %union.init_function { ptr @stm32_clock_control_init }, ptr @__device_dts_ord_9 }, section ".z_init_PRE_KERNEL_11_00009_", align 4, !dbg !163
@llvm.used = appending global [2 x ptr] [ptr @__device_dts_ord_9, ptr @__init___device_dts_ord_9], section "llvm.metadata"

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @z_impl_device_is_ready(ptr noundef %0) #0 !dbg !231 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !235, metadata !DIExpression()), !dbg !236
  %3 = load ptr, ptr %2, align 4, !dbg !237
  %4 = call zeroext i1 @z_device_is_ready(ptr noundef %3) #5, !dbg !238
  ret i1 %4, !dbg !239
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_k_object_access_grant(ptr noundef %0, ptr noundef %1) #0 !dbg !240 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !359, metadata !DIExpression()), !dbg !361
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !360, metadata !DIExpression()), !dbg !362
  %5 = load ptr, ptr %3, align 4, !dbg !363
  %6 = load ptr, ptr %4, align 4, !dbg !364
  ret void, !dbg !365
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_k_object_release(ptr noundef %0) #0 !dbg !366 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !370, metadata !DIExpression()), !dbg !371
  %3 = load ptr, ptr %2, align 4, !dbg !372
  ret void, !dbg !373
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_impl_k_object_alloc(i8 noundef zeroext %0) #0 !dbg !374 {
  %2 = alloca i8, align 1
  store i8 %0, ptr %2, align 1
  call void @llvm.dbg.declare(metadata ptr %2, metadata !378, metadata !DIExpression()), !dbg !379
  %3 = load i8, ptr %2, align 1, !dbg !380
  ret ptr null, !dbg !381
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_impl_k_object_alloc_size(i8 noundef zeroext %0, i32 noundef %1) #0 !dbg !382 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8 %0, ptr %3, align 1
  call void @llvm.dbg.declare(metadata ptr %3, metadata !386, metadata !DIExpression()), !dbg !388
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !387, metadata !DIExpression()), !dbg !389
  %5 = load i8, ptr %3, align 1, !dbg !390
  %6 = load i32, ptr %4, align 4, !dbg !391
  ret ptr null, !dbg !392
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_thread_timeout_expires_ticks(ptr noundef %0) #0 !dbg !393 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !401, metadata !DIExpression()), !dbg !402
  %3 = load ptr, ptr %2, align 4, !dbg !403
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !404
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !405
  %6 = call i64 @z_timeout_expires(ptr noundef %5) #5, !dbg !406
  ret i64 %6, !dbg !407
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_thread_timeout_remaining_ticks(ptr noundef %0) #0 !dbg !408 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !410, metadata !DIExpression()), !dbg !411
  %3 = load ptr, ptr %2, align 4, !dbg !412
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !413
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !414
  %6 = call i64 @z_timeout_remaining(ptr noundef %5) #5, !dbg !415
  ret i64 %6, !dbg !416
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_timer_expires_ticks(ptr noundef %0) #0 !dbg !417 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !440, metadata !DIExpression()), !dbg !441
  %3 = load ptr, ptr %2, align 4, !dbg !442
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !443
  %5 = call i64 @z_timeout_expires(ptr noundef %4) #5, !dbg !444
  ret i64 %5, !dbg !445
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_timer_remaining_ticks(ptr noundef %0) #0 !dbg !446 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !448, metadata !DIExpression()), !dbg !449
  %3 = load ptr, ptr %2, align 4, !dbg !450
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !451
  %5 = call i64 @z_timeout_remaining(ptr noundef %4) #5, !dbg !452
  ret i64 %5, !dbg !453
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_k_timer_user_data_set(ptr noundef %0, ptr noundef %1) #0 !dbg !454 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !458, metadata !DIExpression()), !dbg !460
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !459, metadata !DIExpression()), !dbg !461
  %5 = load ptr, ptr %4, align 4, !dbg !462
  %6 = load ptr, ptr %3, align 4, !dbg !463
  %7 = getelementptr inbounds %struct.k_timer, ptr %6, i32 0, i32 6, !dbg !464
  store ptr %5, ptr %7, align 4, !dbg !465
  ret void, !dbg !466
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_impl_k_timer_user_data_get(ptr noundef %0) #0 !dbg !467 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !471, metadata !DIExpression()), !dbg !472
  %3 = load ptr, ptr %2, align 4, !dbg !473
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 6, !dbg !474
  %5 = load ptr, ptr %4, align 4, !dbg !474
  ret ptr %5, !dbg !475
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_queue_is_empty(ptr noundef %0) #0 !dbg !476 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !498, metadata !DIExpression()), !dbg !499
  %3 = load ptr, ptr %2, align 4, !dbg !500
  %4 = getelementptr inbounds %struct.k_queue, ptr %3, i32 0, i32 0, !dbg !501
  %5 = call zeroext i1 @sys_sflist_is_empty(ptr noundef %4) #5, !dbg !502
  %6 = zext i1 %5 to i32, !dbg !503
  ret i32 %6, !dbg !504
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_sem_count_get(ptr noundef %0) #0 !dbg !505 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !515, metadata !DIExpression()), !dbg !516
  %3 = load ptr, ptr %2, align 4, !dbg !517
  %4 = getelementptr inbounds %struct.k_sem, ptr %3, i32 0, i32 1, !dbg !518
  %5 = load i32, ptr %4, align 4, !dbg !518
  ret i32 %5, !dbg !519
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_msgq_num_free_get(ptr noundef %0) #0 !dbg !520 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !538, metadata !DIExpression()), !dbg !539
  %3 = load ptr, ptr %2, align 4, !dbg !540
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 3, !dbg !541
  %5 = load i32, ptr %4, align 4, !dbg !541
  %6 = load ptr, ptr %2, align 4, !dbg !542
  %7 = getelementptr inbounds %struct.k_msgq, ptr %6, i32 0, i32 8, !dbg !543
  %8 = load i32, ptr %7, align 4, !dbg !543
  %9 = sub i32 %5, %8, !dbg !544
  ret i32 %9, !dbg !545
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_msgq_num_used_get(ptr noundef %0) #0 !dbg !546 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !548, metadata !DIExpression()), !dbg !549
  %3 = load ptr, ptr %2, align 4, !dbg !550
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 8, !dbg !551
  %5 = load i32, ptr %4, align 4, !dbg !551
  ret i32 %5, !dbg !552
}

; Function Attrs: nounwind optsize
define hidden i32 @stm32_clock_control_init(ptr noundef %0) #1 !dbg !553 {
  %2 = alloca ptr, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !555, metadata !DIExpression()), !dbg !558
  %5 = load ptr, ptr %2, align 4, !dbg !559
  call void @config_enable_default_clocks() #5, !dbg !560
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #6, !dbg !561
  call void @llvm.dbg.declare(metadata ptr %3, metadata !556, metadata !DIExpression()), !dbg !562
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #6, !dbg !563
  call void @llvm.dbg.declare(metadata ptr %4, metadata !557, metadata !DIExpression()), !dbg !564
  %6 = call i32 @HAL_RCC_GetSysClockFreq() #5, !dbg !565
  %7 = call i32 @LL_RCC_GetAHBPrescaler() #5, !dbg !566
  %8 = and i32 %7, 240, !dbg !567
  %9 = lshr i32 %8, 4, !dbg !568
  %10 = getelementptr inbounds [16 x i8], ptr @AHBPrescTable, i32 0, i32 %9, !dbg !569
  %11 = load i8, ptr %10, align 1, !dbg !569
  %12 = zext i8 %11 to i32, !dbg !569
  %13 = lshr i32 %6, %12, !dbg !570
  store i32 %13, ptr %3, align 4, !dbg !571
  %14 = load i8, ptr @AHBPrescTable, align 1, !dbg !572
  %15 = zext i8 %14 to i32, !dbg !572
  %16 = ashr i32 48000000, %15, !dbg !573
  store i32 %16, ptr %4, align 4, !dbg !574
  %17 = load i32, ptr %3, align 4, !dbg !575
  %18 = load i32, ptr %4, align 4, !dbg !577
  %19 = icmp ult i32 %17, %18, !dbg !578
  br i1 %19, label %20, label %23, !dbg !579

20:                                               ; preds = %1
  %21 = load i32, ptr %4, align 4, !dbg !580
  %22 = call zeroext i8 @LL_SetFlashLatency(i32 noundef %21) #5, !dbg !582
  br label %23, !dbg !583

23:                                               ; preds = %20, %1
  call void @set_up_fixed_clock_sources() #5, !dbg !584
  call void @set_up_plls() #5, !dbg !585
  call void @LL_RCC_SetAHBPrescaler(i32 noundef 0) #5, !dbg !586
  call void @LL_RCC_SetSysClkSource(i32 noundef 2) #5, !dbg !589
  br label %24, !dbg !590

24:                                               ; preds = %27, %23
  %25 = call i32 @LL_RCC_GetSysClkSource() #5, !dbg !591
  %26 = icmp ne i32 %25, 8, !dbg !592
  br i1 %26, label %27, label %28, !dbg !590

27:                                               ; preds = %24
  br label %24, !dbg !590, !llvm.loop !593

28:                                               ; preds = %24
  %29 = load i32, ptr %3, align 4, !dbg !595
  %30 = load i32, ptr %4, align 4, !dbg !597
  %31 = icmp uge i32 %29, %30, !dbg !598
  br i1 %31, label %32, label %35, !dbg !599

32:                                               ; preds = %28
  %33 = load i32, ptr %4, align 4, !dbg !600
  %34 = call zeroext i8 @LL_SetFlashLatency(i32 noundef %33) #5, !dbg !602
  br label %35, !dbg !603

35:                                               ; preds = %32, %28
  store i32 48000000, ptr @SystemCoreClock, align 4, !dbg !604
  call void @LL_RCC_SetAPB1Prescaler(i32 noundef 0) #5, !dbg !605
  call void @stm32_clock_control_mco_init() #5, !dbg !606
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #6, !dbg !607
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #6, !dbg !607
  ret i32 0, !dbg !608
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: optsize
declare !dbg !609 dso_local void @config_enable_default_clocks() #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: optsize
declare !dbg !613 dso_local i32 @HAL_RCC_GetSysClockFreq() #3

; Function Attrs: inlinehint nounwind optsize
define internal i32 @LL_RCC_GetAHBPrescaler() #0 !dbg !617 {
  %1 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !619
  %2 = and i32 %1, 240, !dbg !620
  ret i32 %2, !dbg !621
}

; Function Attrs: optsize
declare !dbg !622 dso_local zeroext i8 @LL_SetFlashLatency(i32 noundef) #3

; Function Attrs: nounwind optsize
define internal void @set_up_fixed_clock_sources() #1 !dbg !627 {
  call void @LL_RCC_HSE_EnableBypass() #5, !dbg !628
  call void @LL_RCC_HSE_Enable() #5, !dbg !633
  br label %1, !dbg !634

1:                                                ; preds = %4, %0
  %2 = call i32 @LL_RCC_HSE_IsReady() #5, !dbg !635
  %3 = icmp ne i32 %2, 1, !dbg !636
  br i1 %3, label %4, label %5, !dbg !634

4:                                                ; preds = %1
  br label %1, !dbg !634, !llvm.loop !637

5:                                                ; preds = %1
  call void @LL_RCC_LSI_Enable() #5, !dbg !639
  br label %6, !dbg !642

6:                                                ; preds = %9, %5
  %7 = call i32 @LL_RCC_LSI_IsReady() #5, !dbg !643
  %8 = icmp ne i32 %7, 1, !dbg !644
  br i1 %8, label %9, label %10, !dbg !642

9:                                                ; preds = %6
  br label %6, !dbg !642, !llvm.loop !645

10:                                               ; preds = %6
  ret void, !dbg !647
}

; Function Attrs: nounwind optsize
define internal void @set_up_plls() #1 !dbg !648 {
  %1 = call i32 @LL_RCC_GetSysClkSource() #5, !dbg !649
  %2 = icmp eq i32 %1, 8, !dbg !651
  br i1 %2, label %3, label %4, !dbg !652

3:                                                ; preds = %0
  call void @stm32_clock_switch_to_hsi() #5, !dbg !653
  call void @LL_RCC_SetAHBPrescaler(i32 noundef 0) #5, !dbg !655
  br label %4, !dbg !656

4:                                                ; preds = %3, %0
  call void @LL_RCC_PLL_Disable() #5, !dbg !657
  call void @config_pll_sysclock() #5, !dbg !658
  call void @LL_RCC_PLL_Enable() #5, !dbg !659
  br label %5, !dbg !660

5:                                                ; preds = %8, %4
  %6 = call i32 @LL_RCC_PLL_IsReady() #5, !dbg !661
  %7 = icmp ne i32 %6, 1, !dbg !662
  br i1 %7, label %8, label %9, !dbg !660

8:                                                ; preds = %5
  br label %5, !dbg !660, !llvm.loop !663

9:                                                ; preds = %5
  ret void, !dbg !665
}

; Function Attrs: inlinehint nounwind optsize
define internal void @LL_RCC_SetAHBPrescaler(i32 noundef %0) #0 !dbg !666 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !670, metadata !DIExpression()), !dbg !671
  %3 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !672
  %4 = and i32 %3, -241, !dbg !673
  %5 = load i32, ptr %2, align 4, !dbg !674
  %6 = or i32 %4, %5, !dbg !675
  store volatile i32 %6, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !676
  ret void, !dbg !677
}

; Function Attrs: inlinehint nounwind optsize
define internal void @LL_RCC_SetSysClkSource(i32 noundef %0) #0 !dbg !678 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !680, metadata !DIExpression()), !dbg !681
  %3 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !682
  %4 = and i32 %3, -4, !dbg !683
  %5 = load i32, ptr %2, align 4, !dbg !684
  %6 = or i32 %4, %5, !dbg !685
  store volatile i32 %6, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !686
  ret void, !dbg !687
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @LL_RCC_GetSysClkSource() #0 !dbg !688 {
  %1 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !689
  %2 = and i32 %1, 12, !dbg !690
  ret i32 %2, !dbg !691
}

; Function Attrs: inlinehint nounwind optsize
define internal void @LL_RCC_SetAPB1Prescaler(i32 noundef %0) #0 !dbg !692 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !694, metadata !DIExpression()), !dbg !695
  %3 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !696
  %4 = and i32 %3, -1793, !dbg !697
  %5 = load i32, ptr %2, align 4, !dbg !698
  %6 = or i32 %4, %5, !dbg !699
  store volatile i32 %6, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !700
  ret void, !dbg !701
}

; Function Attrs: inlinehint nounwind optsize
define internal void @stm32_clock_control_mco_init() #0 !dbg !702 {
  ret void, !dbg !704
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: optsize
declare !dbg !705 dso_local zeroext i1 @z_device_is_ready(ptr noundef) #3

; Function Attrs: optsize
declare !dbg !706 dso_local i64 @z_timeout_expires(ptr noundef) #3

; Function Attrs: optsize
declare !dbg !711 dso_local i64 @z_timeout_remaining(ptr noundef) #3

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @sys_sflist_is_empty(ptr noundef %0) #0 !dbg !712 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !717, metadata !DIExpression()), !dbg !718
  %3 = load ptr, ptr %2, align 4, !dbg !719
  %4 = call ptr @sys_sflist_peek_head(ptr noundef %3) #5, !dbg !720
  %5 = icmp eq ptr %4, null, !dbg !721
  ret i1 %5, !dbg !722
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @sys_sflist_peek_head(ptr noundef %0) #0 !dbg !723 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !727, metadata !DIExpression()), !dbg !728
  %3 = load ptr, ptr %2, align 4, !dbg !729
  %4 = getelementptr inbounds %struct._sflist, ptr %3, i32 0, i32 0, !dbg !730
  %5 = load ptr, ptr %4, align 4, !dbg !730
  ret ptr %5, !dbg !731
}

; Function Attrs: inlinehint nounwind optsize
define internal void @LL_RCC_HSE_EnableBypass() #0 !dbg !732 {
  %1 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !733
  %2 = or i32 %1, 262144, !dbg !733
  store volatile i32 %2, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !733
  ret void, !dbg !734
}

; Function Attrs: inlinehint nounwind optsize
define internal void @LL_RCC_HSE_Enable() #0 !dbg !735 {
  %1 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !736
  %2 = or i32 %1, 65536, !dbg !736
  store volatile i32 %2, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !736
  ret void, !dbg !737
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @LL_RCC_HSE_IsReady() #0 !dbg !738 {
  %1 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !739
  %2 = and i32 %1, 131072, !dbg !740
  %3 = icmp eq i32 %2, 131072, !dbg !741
  %4 = zext i1 %3 to i32, !dbg !741
  ret i32 %4, !dbg !742
}

; Function Attrs: inlinehint nounwind optsize
define internal void @LL_RCC_LSI_Enable() #0 !dbg !743 {
  %1 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 9), align 4, !dbg !744
  %2 = or i32 %1, 1, !dbg !744
  store volatile i32 %2, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 9), align 4, !dbg !744
  ret void, !dbg !745
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @LL_RCC_LSI_IsReady() #0 !dbg !746 {
  %1 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 9), align 4, !dbg !747
  %2 = and i32 %1, 2, !dbg !748
  %3 = icmp eq i32 %2, 2, !dbg !749
  %4 = zext i1 %3 to i32, !dbg !749
  ret i32 %4, !dbg !750
}

; Function Attrs: nounwind optsize
define internal void @stm32_clock_switch_to_hsi() #1 !dbg !751 {
  %1 = call i32 @LL_RCC_HSI_IsReady() #5, !dbg !752
  %2 = icmp ne i32 %1, 1, !dbg !754
  br i1 %2, label %3, label %9, !dbg !755

3:                                                ; preds = %0
  call void @LL_RCC_HSI_Enable() #5, !dbg !756
  br label %4, !dbg !758

4:                                                ; preds = %7, %3
  %5 = call i32 @LL_RCC_HSI_IsReady() #5, !dbg !759
  %6 = icmp ne i32 %5, 1, !dbg !760
  br i1 %6, label %7, label %8, !dbg !758

7:                                                ; preds = %4
  br label %4, !dbg !758, !llvm.loop !761

8:                                                ; preds = %4
  br label %9, !dbg !763

9:                                                ; preds = %8, %0
  call void @LL_RCC_SetSysClkSource(i32 noundef 0) #5, !dbg !764
  br label %10, !dbg !765

10:                                               ; preds = %13, %9
  %11 = call i32 @LL_RCC_GetSysClkSource() #5, !dbg !766
  %12 = icmp ne i32 %11, 0, !dbg !767
  br i1 %12, label %13, label %14, !dbg !765

13:                                               ; preds = %10
  br label %10, !dbg !765, !llvm.loop !768

14:                                               ; preds = %10
  ret void, !dbg !770
}

; Function Attrs: inlinehint nounwind optsize
define internal void @LL_RCC_PLL_Disable() #0 !dbg !771 {
  %1 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !772
  %2 = and i32 %1, -16777217, !dbg !772
  store volatile i32 %2, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !772
  ret void, !dbg !773
}

; Function Attrs: optsize
declare !dbg !774 dso_local void @config_pll_sysclock() #3

; Function Attrs: inlinehint nounwind optsize
define internal void @LL_RCC_PLL_Enable() #0 !dbg !775 {
  %1 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !776
  %2 = or i32 %1, 16777216, !dbg !776
  store volatile i32 %2, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !776
  ret void, !dbg !777
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @LL_RCC_PLL_IsReady() #0 !dbg !778 {
  %1 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !779
  %2 = and i32 %1, 33554432, !dbg !780
  %3 = icmp eq i32 %2, 33554432, !dbg !781
  %4 = zext i1 %3 to i32, !dbg !781
  ret i32 %4, !dbg !782
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @LL_RCC_HSI_IsReady() #0 !dbg !783 {
  %1 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !784
  %2 = and i32 %1, 2, !dbg !785
  %3 = icmp eq i32 %2, 2, !dbg !786
  %4 = zext i1 %3 to i32, !dbg !786
  ret i32 %4, !dbg !787
}

; Function Attrs: inlinehint nounwind optsize
define internal void @LL_RCC_HSI_Enable() #0 !dbg !788 {
  %1 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !789
  %2 = or i32 %1, 1, !dbg !789
  store volatile i32 %2, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !789
  ret void, !dbg !790
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @stm32_clock_control_on(ptr noundef %0, ptr noundef %1) #0 !dbg !791 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  %10 = alloca i32, align 4
  store ptr %0, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !793, metadata !DIExpression()), !dbg !796
  store ptr %1, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !794, metadata !DIExpression()), !dbg !797
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #6, !dbg !798
  call void @llvm.dbg.declare(metadata ptr %9, metadata !795, metadata !DIExpression()), !dbg !799
  %11 = load ptr, ptr %8, align 4, !dbg !800
  store ptr %11, ptr %9, align 4, !dbg !799
  %12 = load ptr, ptr %7, align 4, !dbg !801
  %13 = load ptr, ptr %9, align 4, !dbg !802
  %14 = getelementptr inbounds %struct.stm32_pclken, ptr %13, i32 0, i32 0, !dbg !804
  %15 = load i32, ptr %14, align 4, !dbg !804
  %16 = icmp uge i32 %15, 20, !dbg !805
  br i1 %16, label %17, label %22, !dbg !806

17:                                               ; preds = %2
  %18 = load ptr, ptr %9, align 4, !dbg !807
  %19 = getelementptr inbounds %struct.stm32_pclken, ptr %18, i32 0, i32 0, !dbg !808
  %20 = load i32, ptr %19, align 4, !dbg !808
  %21 = icmp ule i32 %20, 28, !dbg !809
  br label %22

22:                                               ; preds = %17, %2
  %23 = phi i1 [ false, %2 ], [ %21, %17 ], !dbg !810
  %24 = zext i1 %23 to i32, !dbg !806
  %25 = icmp eq i32 %24, 0, !dbg !811
  br i1 %25, label %26, label %27, !dbg !812

26:                                               ; preds = %22
  store i32 -134, ptr %6, align 4, !dbg !813
  store i32 1, ptr %10, align 4
  br label %43, !dbg !813

27:                                               ; preds = %22
  %28 = load ptr, ptr %9, align 4, !dbg !815
  %29 = getelementptr inbounds %struct.stm32_pclken, ptr %28, i32 0, i32 0, !dbg !816
  %30 = load i32, ptr %29, align 4, !dbg !816
  %31 = add i32 1073876992, %30, !dbg !817
  %32 = load ptr, ptr %9, align 4, !dbg !818
  %33 = getelementptr inbounds %struct.stm32_pclken, ptr %32, i32 0, i32 1, !dbg !819
  %34 = load i32, ptr %33, align 4, !dbg !819
  store i32 %31, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !820, metadata !DIExpression()), !dbg !831
  store i32 %34, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !829, metadata !DIExpression()), !dbg !833
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #6, !dbg !834
  call void @llvm.dbg.declare(metadata ptr %5, metadata !830, metadata !DIExpression()), !dbg !835
  %35 = load i32, ptr %3, align 4, !dbg !836
  %36 = inttoptr i32 %35 to ptr, !dbg !837
  %37 = load volatile i32, ptr %36, align 4, !dbg !838
  store i32 %37, ptr %5, align 4, !dbg !835
  %38 = load i32, ptr %5, align 4, !dbg !839
  %39 = load i32, ptr %4, align 4, !dbg !840
  %40 = or i32 %38, %39, !dbg !841
  %41 = load i32, ptr %3, align 4, !dbg !842
  %42 = inttoptr i32 %41 to ptr, !dbg !843
  store volatile i32 %40, ptr %42, align 4, !dbg !844
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #6, !dbg !845
  store i32 0, ptr %6, align 4, !dbg !846
  store i32 1, ptr %10, align 4
  br label %43, !dbg !846

43:                                               ; preds = %27, %26
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #6, !dbg !847
  %44 = load i32, ptr %6, align 4, !dbg !847
  ret i32 %44, !dbg !847
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @stm32_clock_control_off(ptr noundef %0, ptr noundef %1) #0 !dbg !848 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  %10 = alloca i32, align 4
  store ptr %0, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !850, metadata !DIExpression()), !dbg !853
  store ptr %1, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !851, metadata !DIExpression()), !dbg !854
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #6, !dbg !855
  call void @llvm.dbg.declare(metadata ptr %9, metadata !852, metadata !DIExpression()), !dbg !856
  %11 = load ptr, ptr %8, align 4, !dbg !857
  store ptr %11, ptr %9, align 4, !dbg !856
  %12 = load ptr, ptr %7, align 4, !dbg !858
  %13 = load ptr, ptr %9, align 4, !dbg !859
  %14 = getelementptr inbounds %struct.stm32_pclken, ptr %13, i32 0, i32 0, !dbg !861
  %15 = load i32, ptr %14, align 4, !dbg !861
  %16 = icmp uge i32 %15, 20, !dbg !862
  br i1 %16, label %17, label %22, !dbg !863

17:                                               ; preds = %2
  %18 = load ptr, ptr %9, align 4, !dbg !864
  %19 = getelementptr inbounds %struct.stm32_pclken, ptr %18, i32 0, i32 0, !dbg !865
  %20 = load i32, ptr %19, align 4, !dbg !865
  %21 = icmp ule i32 %20, 28, !dbg !866
  br label %22

22:                                               ; preds = %17, %2
  %23 = phi i1 [ false, %2 ], [ %21, %17 ], !dbg !867
  %24 = zext i1 %23 to i32, !dbg !863
  %25 = icmp eq i32 %24, 0, !dbg !868
  br i1 %25, label %26, label %27, !dbg !869

26:                                               ; preds = %22
  store i32 -134, ptr %6, align 4, !dbg !870
  store i32 1, ptr %10, align 4
  br label %44, !dbg !870

27:                                               ; preds = %22
  %28 = load ptr, ptr %9, align 4, !dbg !872
  %29 = getelementptr inbounds %struct.stm32_pclken, ptr %28, i32 0, i32 0, !dbg !873
  %30 = load i32, ptr %29, align 4, !dbg !873
  %31 = add i32 1073876992, %30, !dbg !874
  %32 = load ptr, ptr %9, align 4, !dbg !875
  %33 = getelementptr inbounds %struct.stm32_pclken, ptr %32, i32 0, i32 1, !dbg !876
  %34 = load i32, ptr %33, align 4, !dbg !876
  store i32 %31, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !877, metadata !DIExpression()), !dbg !882
  store i32 %34, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !880, metadata !DIExpression()), !dbg !884
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #6, !dbg !885
  call void @llvm.dbg.declare(metadata ptr %5, metadata !881, metadata !DIExpression()), !dbg !886
  %35 = load i32, ptr %3, align 4, !dbg !887
  %36 = inttoptr i32 %35 to ptr, !dbg !888
  %37 = load volatile i32, ptr %36, align 4, !dbg !889
  store i32 %37, ptr %5, align 4, !dbg !886
  %38 = load i32, ptr %5, align 4, !dbg !890
  %39 = load i32, ptr %4, align 4, !dbg !891
  %40 = xor i32 %39, -1, !dbg !892
  %41 = and i32 %38, %40, !dbg !893
  %42 = load i32, ptr %3, align 4, !dbg !894
  %43 = inttoptr i32 %42 to ptr, !dbg !895
  store volatile i32 %41, ptr %43, align 4, !dbg !896
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #6, !dbg !897
  store i32 0, ptr %6, align 4, !dbg !898
  store i32 1, ptr %10, align 4
  br label %44, !dbg !898

44:                                               ; preds = %27, %26
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #6, !dbg !899
  %45 = load i32, ptr %6, align 4, !dbg !899
  ret i32 %45, !dbg !899
}

; Function Attrs: nounwind optsize
define internal i32 @stm32_clock_control_get_subsys_rate(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 !dbg !900 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store ptr %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !902, metadata !DIExpression()), !dbg !909
  store ptr %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !903, metadata !DIExpression()), !dbg !910
  store ptr %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !904, metadata !DIExpression()), !dbg !911
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #6, !dbg !912
  call void @llvm.dbg.declare(metadata ptr %8, metadata !905, metadata !DIExpression()), !dbg !913
  %13 = load ptr, ptr %6, align 4, !dbg !914
  store ptr %13, ptr %8, align 4, !dbg !913
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #6, !dbg !915
  call void @llvm.dbg.declare(metadata ptr %9, metadata !906, metadata !DIExpression()), !dbg !916
  %14 = load i32, ptr @SystemCoreClock, align 4, !dbg !917
  store i32 %14, ptr %9, align 4, !dbg !916
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #6, !dbg !918
  call void @llvm.dbg.declare(metadata ptr %10, metadata !907, metadata !DIExpression()), !dbg !919
  %15 = load i32, ptr %9, align 4, !dbg !920
  %16 = call i32 @get_bus_clock(i32 noundef %15, i32 noundef 1) #5, !dbg !921
  store i32 %16, ptr %10, align 4, !dbg !919
  call void @llvm.lifetime.start.p0(i64 4, ptr %11) #6, !dbg !922
  call void @llvm.dbg.declare(metadata ptr %11, metadata !908, metadata !DIExpression()), !dbg !923
  %17 = load i32, ptr %10, align 4, !dbg !924
  store i32 %17, ptr %11, align 4, !dbg !923
  %18 = load ptr, ptr %8, align 4, !dbg !925
  %19 = getelementptr inbounds %struct.stm32_pclken, ptr %18, i32 0, i32 0, !dbg !927
  %20 = load i32, ptr %19, align 4, !dbg !927
  %21 = icmp eq i32 %20, 7, !dbg !928
  br i1 %21, label %22, label %23, !dbg !929

22:                                               ; preds = %3
  store i32 -134, ptr %4, align 4, !dbg !930
  store i32 1, ptr %12, align 4
  br label %56, !dbg !930

23:                                               ; preds = %3
  %24 = load ptr, ptr %5, align 4, !dbg !932
  %25 = load ptr, ptr %8, align 4, !dbg !933
  %26 = getelementptr inbounds %struct.stm32_pclken, ptr %25, i32 0, i32 0, !dbg !934
  %27 = load i32, ptr %26, align 4, !dbg !934
  switch i32 %27, label %54 [
    i32 20, label %28
    i32 28, label %31
    i32 24, label %34
    i32 6, label %37
    i32 8, label %41
    i32 2, label %48
    i32 3, label %50
    i32 1, label %52
  ], !dbg !935

28:                                               ; preds = %23
  %29 = load i32, ptr %9, align 4, !dbg !936
  %30 = load ptr, ptr %7, align 4, !dbg !938
  store i32 %29, ptr %30, align 4, !dbg !939
  br label %55, !dbg !940

31:                                               ; preds = %23
  %32 = load i32, ptr %10, align 4, !dbg !941
  %33 = load ptr, ptr %7, align 4, !dbg !942
  store i32 %32, ptr %33, align 4, !dbg !943
  br label %55, !dbg !944

34:                                               ; preds = %23
  %35 = load i32, ptr %11, align 4, !dbg !945
  %36 = load ptr, ptr %7, align 4, !dbg !946
  store i32 %35, ptr %36, align 4, !dbg !947
  br label %55, !dbg !948

37:                                               ; preds = %23
  %38 = load i32, ptr @SystemCoreClock, align 4, !dbg !949
  %39 = mul i32 %38, 1, !dbg !950
  %40 = load ptr, ptr %7, align 4, !dbg !951
  store i32 %39, ptr %40, align 4, !dbg !952
  br label %55, !dbg !953

41:                                               ; preds = %23
  %42 = call i32 @get_pllout_frequency() #5, !dbg !954
  %43 = icmp eq i32 %42, 0, !dbg !956
  br i1 %43, label %44, label %45, !dbg !957

44:                                               ; preds = %41
  store i32 -5, ptr %4, align 4, !dbg !958
  store i32 1, ptr %12, align 4
  br label %56, !dbg !958

45:                                               ; preds = %41
  %46 = call i32 @get_pllout_frequency() #5, !dbg !960
  %47 = load ptr, ptr %7, align 4, !dbg !961
  store i32 %46, ptr %47, align 4, !dbg !962
  br label %55, !dbg !963

48:                                               ; preds = %23
  %49 = load ptr, ptr %7, align 4, !dbg !964
  store i32 0, ptr %49, align 4, !dbg !965
  br label %55, !dbg !966

50:                                               ; preds = %23
  %51 = load ptr, ptr %7, align 4, !dbg !967
  store i32 40000, ptr %51, align 4, !dbg !968
  br label %55, !dbg !969

52:                                               ; preds = %23
  %53 = load ptr, ptr %7, align 4, !dbg !970
  store i32 0, ptr %53, align 4, !dbg !971
  br label %55, !dbg !972

54:                                               ; preds = %23
  store i32 -134, ptr %4, align 4, !dbg !973
  store i32 1, ptr %12, align 4
  br label %56, !dbg !973

55:                                               ; preds = %52, %50, %48, %45, %37, %34, %31, %28
  store i32 0, ptr %4, align 4, !dbg !974
  store i32 1, ptr %12, align 4
  br label %56, !dbg !974

56:                                               ; preds = %55, %54, %44, %22
  call void @llvm.lifetime.end.p0(i64 4, ptr %11) #6, !dbg !975
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #6, !dbg !975
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #6, !dbg !975
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #6, !dbg !975
  %57 = load i32, ptr %4, align 4, !dbg !975
  ret i32 %57, !dbg !975
}

; Function Attrs: nounwind optsize
define internal zeroext i8 @stm32_clock_control_get_status(ptr noundef %0, ptr noundef %1) #1 !dbg !976 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !978, metadata !DIExpression()), !dbg !981
  store ptr %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !979, metadata !DIExpression()), !dbg !982
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #6, !dbg !983
  call void @llvm.dbg.declare(metadata ptr %7, metadata !980, metadata !DIExpression()), !dbg !984
  %9 = load ptr, ptr %6, align 4, !dbg !985
  store ptr %9, ptr %7, align 4, !dbg !984
  %10 = load ptr, ptr %5, align 4, !dbg !986
  %11 = load ptr, ptr %7, align 4, !dbg !987
  %12 = getelementptr inbounds %struct.stm32_pclken, ptr %11, i32 0, i32 0, !dbg !989
  %13 = load i32, ptr %12, align 4, !dbg !989
  %14 = icmp uge i32 %13, 20, !dbg !990
  br i1 %14, label %15, label %20, !dbg !991

15:                                               ; preds = %2
  %16 = load ptr, ptr %7, align 4, !dbg !992
  %17 = getelementptr inbounds %struct.stm32_pclken, ptr %16, i32 0, i32 0, !dbg !993
  %18 = load i32, ptr %17, align 4, !dbg !993
  %19 = icmp ule i32 %18, 28, !dbg !994
  br label %20

20:                                               ; preds = %15, %2
  %21 = phi i1 [ false, %2 ], [ %19, %15 ], !dbg !995
  %22 = zext i1 %21 to i32, !dbg !991
  %23 = icmp eq i32 %22, 1, !dbg !996
  br i1 %23, label %24, label %42, !dbg !997

24:                                               ; preds = %20
  %25 = load ptr, ptr %7, align 4, !dbg !998
  %26 = getelementptr inbounds %struct.stm32_pclken, ptr %25, i32 0, i32 0, !dbg !1001
  %27 = load i32, ptr %26, align 4, !dbg !1001
  %28 = add i32 1073876992, %27, !dbg !1002
  store i32 %28, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1003, metadata !DIExpression()), !dbg !1009
  %29 = load i32, ptr %3, align 4, !dbg !1011
  %30 = inttoptr i32 %29 to ptr, !dbg !1012
  %31 = load volatile i32, ptr %30, align 4, !dbg !1013
  %32 = load ptr, ptr %7, align 4, !dbg !1014
  %33 = getelementptr inbounds %struct.stm32_pclken, ptr %32, i32 0, i32 1, !dbg !1015
  %34 = load i32, ptr %33, align 4, !dbg !1015
  %35 = and i32 %31, %34, !dbg !1016
  %36 = load ptr, ptr %7, align 4, !dbg !1017
  %37 = getelementptr inbounds %struct.stm32_pclken, ptr %36, i32 0, i32 1, !dbg !1018
  %38 = load i32, ptr %37, align 4, !dbg !1018
  %39 = icmp eq i32 %35, %38, !dbg !1019
  br i1 %39, label %40, label %41, !dbg !1020

40:                                               ; preds = %24
  store i8 2, ptr %4, align 1, !dbg !1021
  store i32 1, ptr %8, align 4
  br label %50, !dbg !1021

41:                                               ; preds = %24
  store i8 1, ptr %4, align 1, !dbg !1023
  store i32 1, ptr %8, align 4
  br label %50, !dbg !1023

42:                                               ; preds = %20
  %43 = load ptr, ptr %7, align 4, !dbg !1025
  %44 = getelementptr inbounds %struct.stm32_pclken, ptr %43, i32 0, i32 0, !dbg !1028
  %45 = load i32, ptr %44, align 4, !dbg !1028
  %46 = call i32 @enabled_clock(i32 noundef %45) #5, !dbg !1029
  %47 = icmp eq i32 %46, 0, !dbg !1030
  br i1 %47, label %48, label %49, !dbg !1031

48:                                               ; preds = %42
  store i8 2, ptr %4, align 1, !dbg !1032
  store i32 1, ptr %8, align 4
  br label %50, !dbg !1032

49:                                               ; preds = %42
  store i8 1, ptr %4, align 1, !dbg !1034
  store i32 1, ptr %8, align 4
  br label %50, !dbg !1034

50:                                               ; preds = %49, %48, %41, %40
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #6, !dbg !1036
  %51 = load i8, ptr %4, align 1, !dbg !1036
  ret i8 %51, !dbg !1036
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @stm32_clock_control_configure(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !1037 {
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
  %16 = alloca i32, align 4
  store ptr %0, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1039, metadata !DIExpression()), !dbg !1044
  store ptr %1, ptr %12, align 4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1040, metadata !DIExpression()), !dbg !1045
  store ptr %2, ptr %13, align 4
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1041, metadata !DIExpression()), !dbg !1046
  call void @llvm.lifetime.start.p0(i64 4, ptr %14) #6, !dbg !1047
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1042, metadata !DIExpression()), !dbg !1048
  %17 = load ptr, ptr %12, align 4, !dbg !1049
  store ptr %17, ptr %14, align 4, !dbg !1048
  call void @llvm.lifetime.start.p0(i64 4, ptr %15) #6, !dbg !1050
  call void @llvm.dbg.declare(metadata ptr %15, metadata !1043, metadata !DIExpression()), !dbg !1051
  %18 = load ptr, ptr %11, align 4, !dbg !1052
  %19 = load ptr, ptr %13, align 4, !dbg !1053
  %20 = load ptr, ptr %14, align 4, !dbg !1054
  %21 = getelementptr inbounds %struct.stm32_pclken, ptr %20, i32 0, i32 0, !dbg !1055
  %22 = load i32, ptr %21, align 4, !dbg !1055
  %23 = call i32 @enabled_clock(i32 noundef %22) #5, !dbg !1056
  store i32 %23, ptr %15, align 4, !dbg !1057
  %24 = load i32, ptr %15, align 4, !dbg !1058
  %25 = icmp slt i32 %24, 0, !dbg !1060
  br i1 %25, label %26, label %28, !dbg !1061

26:                                               ; preds = %3
  %27 = load i32, ptr %15, align 4, !dbg !1062
  store i32 %27, ptr %10, align 4, !dbg !1064
  store i32 1, ptr %16, align 4
  br label %86, !dbg !1064

28:                                               ; preds = %3
  %29 = load ptr, ptr %14, align 4, !dbg !1065
  %30 = getelementptr inbounds %struct.stm32_pclken, ptr %29, i32 0, i32 1, !dbg !1067
  %31 = load i32, ptr %30, align 4, !dbg !1067
  %32 = icmp eq i32 %31, 255, !dbg !1068
  br i1 %32, label %33, label %34, !dbg !1069

33:                                               ; preds = %28
  store i32 0, ptr %10, align 4, !dbg !1070
  store i32 1, ptr %16, align 4
  br label %86, !dbg !1070

34:                                               ; preds = %28
  %35 = load ptr, ptr %14, align 4, !dbg !1072
  %36 = getelementptr inbounds %struct.stm32_pclken, ptr %35, i32 0, i32 1, !dbg !1073
  %37 = load i32, ptr %36, align 4, !dbg !1073
  %38 = lshr i32 %37, 0, !dbg !1074
  %39 = and i32 %38, 255, !dbg !1075
  %40 = add i32 1073876992, %39, !dbg !1076
  %41 = load ptr, ptr %14, align 4, !dbg !1077
  %42 = getelementptr inbounds %struct.stm32_pclken, ptr %41, i32 0, i32 1, !dbg !1078
  %43 = load i32, ptr %42, align 4, !dbg !1078
  %44 = lshr i32 %43, 13, !dbg !1079
  %45 = and i32 %44, 7, !dbg !1080
  %46 = load ptr, ptr %14, align 4, !dbg !1081
  %47 = getelementptr inbounds %struct.stm32_pclken, ptr %46, i32 0, i32 1, !dbg !1082
  %48 = load i32, ptr %47, align 4, !dbg !1082
  %49 = lshr i32 %48, 8, !dbg !1083
  %50 = and i32 %49, 31, !dbg !1084
  %51 = shl i32 %45, %50, !dbg !1085
  store i32 %40, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !877, metadata !DIExpression()), !dbg !1086
  store i32 %51, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !880, metadata !DIExpression()), !dbg !1088
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #6, !dbg !1089
  call void @llvm.dbg.declare(metadata ptr %6, metadata !881, metadata !DIExpression()), !dbg !1090
  %52 = load i32, ptr %4, align 4, !dbg !1091
  %53 = inttoptr i32 %52 to ptr, !dbg !1092
  %54 = load volatile i32, ptr %53, align 4, !dbg !1093
  store i32 %54, ptr %6, align 4, !dbg !1090
  %55 = load i32, ptr %6, align 4, !dbg !1094
  %56 = load i32, ptr %5, align 4, !dbg !1095
  %57 = xor i32 %56, -1, !dbg !1096
  %58 = and i32 %55, %57, !dbg !1097
  %59 = load i32, ptr %4, align 4, !dbg !1098
  %60 = inttoptr i32 %59 to ptr, !dbg !1099
  store volatile i32 %58, ptr %60, align 4, !dbg !1100
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #6, !dbg !1101
  %61 = load ptr, ptr %14, align 4, !dbg !1102
  %62 = getelementptr inbounds %struct.stm32_pclken, ptr %61, i32 0, i32 1, !dbg !1103
  %63 = load i32, ptr %62, align 4, !dbg !1103
  %64 = lshr i32 %63, 0, !dbg !1104
  %65 = and i32 %64, 255, !dbg !1105
  %66 = add i32 1073876992, %65, !dbg !1106
  %67 = load ptr, ptr %14, align 4, !dbg !1107
  %68 = getelementptr inbounds %struct.stm32_pclken, ptr %67, i32 0, i32 1, !dbg !1108
  %69 = load i32, ptr %68, align 4, !dbg !1108
  %70 = lshr i32 %69, 16, !dbg !1109
  %71 = and i32 %70, 7, !dbg !1110
  %72 = load ptr, ptr %14, align 4, !dbg !1111
  %73 = getelementptr inbounds %struct.stm32_pclken, ptr %72, i32 0, i32 1, !dbg !1112
  %74 = load i32, ptr %73, align 4, !dbg !1112
  %75 = lshr i32 %74, 8, !dbg !1113
  %76 = and i32 %75, 31, !dbg !1114
  %77 = shl i32 %71, %76, !dbg !1115
  store i32 %66, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !820, metadata !DIExpression()), !dbg !1116
  store i32 %77, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !829, metadata !DIExpression()), !dbg !1118
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #6, !dbg !1119
  call void @llvm.dbg.declare(metadata ptr %9, metadata !830, metadata !DIExpression()), !dbg !1120
  %78 = load i32, ptr %7, align 4, !dbg !1121
  %79 = inttoptr i32 %78 to ptr, !dbg !1122
  %80 = load volatile i32, ptr %79, align 4, !dbg !1123
  store i32 %80, ptr %9, align 4, !dbg !1120
  %81 = load i32, ptr %9, align 4, !dbg !1124
  %82 = load i32, ptr %8, align 4, !dbg !1125
  %83 = or i32 %81, %82, !dbg !1126
  %84 = load i32, ptr %7, align 4, !dbg !1127
  %85 = inttoptr i32 %84 to ptr, !dbg !1128
  store volatile i32 %83, ptr %85, align 4, !dbg !1129
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #6, !dbg !1130
  store i32 0, ptr %10, align 4, !dbg !1131
  store i32 1, ptr %16, align 4
  br label %86, !dbg !1131

86:                                               ; preds = %34, %33, %26
  call void @llvm.lifetime.end.p0(i64 4, ptr %15) #6, !dbg !1132
  call void @llvm.lifetime.end.p0(i64 4, ptr %14) #6, !dbg !1132
  %87 = load i32, ptr %10, align 4, !dbg !1132
  ret i32 %87, !dbg !1132
}

; Function Attrs: nounwind optsize
define internal i32 @get_bus_clock(i32 noundef %0, i32 noundef %1) #1 !dbg !1133 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1137, metadata !DIExpression()), !dbg !1139
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1138, metadata !DIExpression()), !dbg !1140
  %5 = load i32, ptr %3, align 4, !dbg !1141
  %6 = load i32, ptr %4, align 4, !dbg !1142
  %7 = udiv i32 %5, %6, !dbg !1143
  ret i32 %7, !dbg !1144
}

; Function Attrs: optsize
declare !dbg !1145 dso_local i32 @get_pllout_frequency() #3

; Function Attrs: nounwind optsize
define internal i32 @enabled_clock(i32 noundef %0) #1 !dbg !1146 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1150, metadata !DIExpression()), !dbg !1152
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #6, !dbg !1153
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1151, metadata !DIExpression()), !dbg !1154
  store i32 0, ptr %4, align 4, !dbg !1154
  %6 = load i32, ptr %3, align 4, !dbg !1155
  switch i32 %6, label %13 [
    i32 6, label %14
    i32 7, label %14
    i32 1, label %7
    i32 2, label %8
    i32 3, label %9
    i32 4, label %10
    i32 5, label %11
    i32 8, label %12
  ], !dbg !1156

7:                                                ; preds = %1
  store i32 -134, ptr %4, align 4, !dbg !1157
  br label %14, !dbg !1161

8:                                                ; preds = %1
  store i32 -134, ptr %4, align 4, !dbg !1162
  br label %14, !dbg !1165

9:                                                ; preds = %1
  br label %14, !dbg !1166

10:                                               ; preds = %1
  store i32 -134, ptr %4, align 4, !dbg !1167
  br label %14, !dbg !1170

11:                                               ; preds = %1
  store i32 -134, ptr %4, align 4, !dbg !1171
  br label %14, !dbg !1174

12:                                               ; preds = %1
  br label %14, !dbg !1175

13:                                               ; preds = %1
  store i32 -134, ptr %2, align 4, !dbg !1176
  store i32 1, ptr %5, align 4
  br label %16, !dbg !1176

14:                                               ; preds = %12, %11, %10, %9, %8, %7, %1, %1
  %15 = load i32, ptr %4, align 4, !dbg !1177
  store i32 %15, ptr %2, align 4, !dbg !1178
  store i32 1, ptr %5, align 4
  br label %16, !dbg !1178

16:                                               ; preds = %14, %13
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #6, !dbg !1179
  %17 = load i32, ptr %2, align 4, !dbg !1179
  ret i32 %17, !dbg !1179
}

attributes #0 = { inlinehint nounwind optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { optsize }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!224, !225, !226, !227, !228, !229}
!llvm.ident = !{!230}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 824, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "drivers/clock_control/clock_stm32_ll_common.c", directory: "/home/sri/zephyrproject/zephyr")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 13)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "stm32_clock_control_api", scope: !9, file: !2, line: 448, type: !184, isLocal: true, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C99, file: !10, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, retainedTypes: !107, globals: !140, splitDebugInlining: false, nameTableKind: None)
!10 = !DIFile(filename: "clock_stm32_ll_common.c", directory: "/home/sri/zephyrproject/zephyr/build")
!11 = !{!12, !18, !100}
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !13, line: 180, baseType: !14, size: 8, elements: !15)
!13 = !DIFile(filename: "modules/hal/stm32/stm32cube/stm32f0xx/soc/stm32f0xx.h", directory: "/home/sri/zephyrproject")
!14 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!15 = !{!16, !17}
!16 = !DIEnumerator(name: "SUCCESS", value: 0)
!17 = !DIEnumerator(name: "ERROR", value: 1)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "k_objects", file: !19, line: 29, baseType: !14, size: 8, elements: !20)
!19 = !DIFile(filename: "include/zephyr/sys/kobject.h", directory: "/home/sri/zephyrproject/zephyr")
!20 = !{!21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99}
!21 = !DIEnumerator(name: "K_OBJ_ANY", value: 0)
!22 = !DIEnumerator(name: "K_OBJ_MEM_SLAB", value: 1)
!23 = !DIEnumerator(name: "K_OBJ_MSGQ", value: 2)
!24 = !DIEnumerator(name: "K_OBJ_MUTEX", value: 3)
!25 = !DIEnumerator(name: "K_OBJ_PIPE", value: 4)
!26 = !DIEnumerator(name: "K_OBJ_QUEUE", value: 5)
!27 = !DIEnumerator(name: "K_OBJ_POLL_SIGNAL", value: 6)
!28 = !DIEnumerator(name: "K_OBJ_SEM", value: 7)
!29 = !DIEnumerator(name: "K_OBJ_STACK", value: 8)
!30 = !DIEnumerator(name: "K_OBJ_THREAD", value: 9)
!31 = !DIEnumerator(name: "K_OBJ_TIMER", value: 10)
!32 = !DIEnumerator(name: "K_OBJ_THREAD_STACK_ELEMENT", value: 11)
!33 = !DIEnumerator(name: "K_OBJ_NET_SOCKET", value: 12)
!34 = !DIEnumerator(name: "K_OBJ_NET_IF", value: 13)
!35 = !DIEnumerator(name: "K_OBJ_SYS_MUTEX", value: 14)
!36 = !DIEnumerator(name: "K_OBJ_FUTEX", value: 15)
!37 = !DIEnumerator(name: "K_OBJ_CONDVAR", value: 16)
!38 = !DIEnumerator(name: "K_OBJ_DRIVER_GPIO", value: 17)
!39 = !DIEnumerator(name: "K_OBJ_DRIVER_RESET", value: 18)
!40 = !DIEnumerator(name: "K_OBJ_DRIVER_UART", value: 19)
!41 = !DIEnumerator(name: "K_OBJ_DRIVER_CRYPTO", value: 20)
!42 = !DIEnumerator(name: "K_OBJ_DRIVER_ADC", value: 21)
!43 = !DIEnumerator(name: "K_OBJ_DRIVER_AUXDISPLAY", value: 22)
!44 = !DIEnumerator(name: "K_OBJ_DRIVER_BBRAM", value: 23)
!45 = !DIEnumerator(name: "K_OBJ_DRIVER_CAN", value: 24)
!46 = !DIEnumerator(name: "K_OBJ_DRIVER_CHARGER", value: 25)
!47 = !DIEnumerator(name: "K_OBJ_DRIVER_COREDUMP", value: 26)
!48 = !DIEnumerator(name: "K_OBJ_DRIVER_COUNTER", value: 27)
!49 = !DIEnumerator(name: "K_OBJ_DRIVER_DAC", value: 28)
!50 = !DIEnumerator(name: "K_OBJ_DRIVER_DAI", value: 29)
!51 = !DIEnumerator(name: "K_OBJ_DRIVER_DMA", value: 30)
!52 = !DIEnumerator(name: "K_OBJ_DRIVER_EDAC", value: 31)
!53 = !DIEnumerator(name: "K_OBJ_DRIVER_EEPROM", value: 32)
!54 = !DIEnumerator(name: "K_OBJ_DRIVER_FUEL_GAUGE_EMUL", value: 33)
!55 = !DIEnumerator(name: "K_OBJ_DRIVER_EMUL_SENSOR_BACKEND_API", value: 34)
!56 = !DIEnumerator(name: "K_OBJ_DRIVER_ENTROPY", value: 35)
!57 = !DIEnumerator(name: "K_OBJ_DRIVER_ESPI", value: 36)
!58 = !DIEnumerator(name: "K_OBJ_DRIVER_ESPI_SAF", value: 37)
!59 = !DIEnumerator(name: "K_OBJ_DRIVER_FLASH", value: 38)
!60 = !DIEnumerator(name: "K_OBJ_DRIVER_FPGA", value: 39)
!61 = !DIEnumerator(name: "K_OBJ_DRIVER_FUEL_GAUGE", value: 40)
!62 = !DIEnumerator(name: "K_OBJ_DRIVER_HWSPINLOCK", value: 41)
!63 = !DIEnumerator(name: "K_OBJ_DRIVER_I2C", value: 42)
!64 = !DIEnumerator(name: "K_OBJ_DRIVER_I2S", value: 43)
!65 = !DIEnumerator(name: "K_OBJ_DRIVER_I3C", value: 44)
!66 = !DIEnumerator(name: "K_OBJ_DRIVER_IPM", value: 45)
!67 = !DIEnumerator(name: "K_OBJ_DRIVER_KSCAN", value: 46)
!68 = !DIEnumerator(name: "K_OBJ_DRIVER_LED", value: 47)
!69 = !DIEnumerator(name: "K_OBJ_DRIVER_MBOX", value: 48)
!70 = !DIEnumerator(name: "K_OBJ_DRIVER_MDIO", value: 49)
!71 = !DIEnumerator(name: "K_OBJ_DRIVER_MIPI_DSI", value: 50)
!72 = !DIEnumerator(name: "K_OBJ_DRIVER_PECI", value: 51)
!73 = !DIEnumerator(name: "K_OBJ_DRIVER_PS2", value: 52)
!74 = !DIEnumerator(name: "K_OBJ_DRIVER_PTP_CLOCK", value: 53)
!75 = !DIEnumerator(name: "K_OBJ_DRIVER_PWM", value: 54)
!76 = !DIEnumerator(name: "K_OBJ_DRIVER_REGULATOR_PARENT", value: 55)
!77 = !DIEnumerator(name: "K_OBJ_DRIVER_REGULATOR", value: 56)
!78 = !DIEnumerator(name: "K_OBJ_DRIVER_RETAINED_MEM", value: 57)
!79 = !DIEnumerator(name: "K_OBJ_DRIVER_RTC", value: 58)
!80 = !DIEnumerator(name: "K_OBJ_DRIVER_SDHC", value: 59)
!81 = !DIEnumerator(name: "K_OBJ_DRIVER_SENSOR", value: 60)
!82 = !DIEnumerator(name: "K_OBJ_DRIVER_SMBUS", value: 61)
!83 = !DIEnumerator(name: "K_OBJ_DRIVER_SPI", value: 62)
!84 = !DIEnumerator(name: "K_OBJ_DRIVER_SYSCON", value: 63)
!85 = !DIEnumerator(name: "K_OBJ_DRIVER_W1", value: 64)
!86 = !DIEnumerator(name: "K_OBJ_DRIVER_WDT", value: 65)
!87 = !DIEnumerator(name: "K_OBJ_DRIVER_CAN_TRANSCEIVER", value: 66)
!88 = !DIEnumerator(name: "K_OBJ_DRIVER_UART_MUX", value: 67)
!89 = !DIEnumerator(name: "K_OBJ_DRIVER_ITS", value: 68)
!90 = !DIEnumerator(name: "K_OBJ_DRIVER_TGPIO", value: 69)
!91 = !DIEnumerator(name: "K_OBJ_DRIVER_PCIE_CTRL", value: 70)
!92 = !DIEnumerator(name: "K_OBJ_DRIVER_SVC", value: 71)
!93 = !DIEnumerator(name: "K_OBJ_DRIVER_BC12_EMUL", value: 72)
!94 = !DIEnumerator(name: "K_OBJ_DRIVER_BC12", value: 73)
!95 = !DIEnumerator(name: "K_OBJ_DRIVER_TCPC", value: 74)
!96 = !DIEnumerator(name: "K_OBJ_DRIVER_IVSHMEM", value: 75)
!97 = !DIEnumerator(name: "K_OBJ_DRIVER_EC_HOST_CMD_BACKEND_API", value: 76)
!98 = !DIEnumerator(name: "K_OBJ_DRIVER_ETHPHY", value: 77)
!99 = !DIEnumerator(name: "K_OBJ_LAST", value: 78)
!100 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "clock_control_status", file: !101, line: 44, baseType: !14, size: 8, elements: !102)
!101 = !DIFile(filename: "include/zephyr/drivers/clock_control.h", directory: "/home/sri/zephyrproject/zephyr")
!102 = !{!103, !104, !105, !106}
!103 = !DIEnumerator(name: "CLOCK_CONTROL_STATUS_STARTING", value: 0)
!104 = !DIEnumerator(name: "CLOCK_CONTROL_STATUS_OFF", value: 1)
!105 = !DIEnumerator(name: "CLOCK_CONTROL_STATUS_ON", value: 2)
!106 = !DIEnumerator(name: "CLOCK_CONTROL_STATUS_UNKNOWN", value: 3)
!107 = !{!108, !109, !110, !113, !133, !139}
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!109 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !111, line: 64, baseType: !112)
!111 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/stdint.h", directory: "")
!112 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 32)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "RCC_TypeDef", file: !115, line: 461, baseType: !116)
!115 = !DIFile(filename: "modules/hal/stm32/stm32cube/stm32f0xx/soc/stm32f091xc.h", directory: "/home/sri/zephyrproject")
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !115, line: 445, size: 448, elements: !117)
!117 = !{!118, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "CR", scope: !116, file: !115, line: 447, baseType: !119, size: 32)
!119 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !110)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "CFGR", scope: !116, file: !115, line: 448, baseType: !119, size: 32, offset: 32)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "CIR", scope: !116, file: !115, line: 449, baseType: !119, size: 32, offset: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "APB2RSTR", scope: !116, file: !115, line: 450, baseType: !119, size: 32, offset: 96)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "APB1RSTR", scope: !116, file: !115, line: 451, baseType: !119, size: 32, offset: 128)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "AHBENR", scope: !116, file: !115, line: 452, baseType: !119, size: 32, offset: 160)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "APB2ENR", scope: !116, file: !115, line: 453, baseType: !119, size: 32, offset: 192)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "APB1ENR", scope: !116, file: !115, line: 454, baseType: !119, size: 32, offset: 224)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "BDCR", scope: !116, file: !115, line: 455, baseType: !119, size: 32, offset: 256)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "CSR", scope: !116, file: !115, line: 456, baseType: !119, size: 32, offset: 288)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "AHBRSTR", scope: !116, file: !115, line: 457, baseType: !119, size: 32, offset: 320)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "CFGR2", scope: !116, file: !115, line: 458, baseType: !119, size: 32, offset: 352)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "CFGR3", scope: !116, file: !115, line: 459, baseType: !119, size: 32, offset: 384)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "CR2", scope: !116, file: !115, line: 460, baseType: !119, size: 32, offset: 416)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 32)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stm32_pclken", file: !135, line: 396, size: 64, elements: !136)
!135 = !DIFile(filename: "include/zephyr/drivers/clock_control/stm32_clock_control.h", directory: "/home/sri/zephyrproject/zephyr")
!136 = !{!137, !138}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !134, file: !135, line: 397, baseType: !110, size: 32)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "enr", scope: !134, file: !135, line: 398, baseType: !110, size: 32, offset: 32)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 32)
!140 = !{!0, !141, !163, !182, !7}
!141 = !DIGlobalVariableExpression(var: !142, expr: !DIExpression())
!142 = distinct !DIGlobalVariable(name: "__device_dts_ord_9", scope: !9, file: !2, line: 824, type: !143, isLocal: false, isDefinition: true, align: 32)
!143 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !144)
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !145, line: 381, size: 160, elements: !146)
!145 = !DIFile(filename: "include/zephyr/device.h", directory: "/home/sri/zephyrproject/zephyr")
!146 = !{!147, !150, !153, !154, !162}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !144, file: !145, line: 383, baseType: !148, size: 32)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 32)
!149 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !144, file: !145, line: 385, baseType: !151, size: 32, offset: 32)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 32)
!152 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "api", scope: !144, file: !145, line: 387, baseType: !151, size: 32, offset: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !144, file: !145, line: 389, baseType: !155, size: 32, offset: 96)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 32)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_state", file: !145, line: 354, size: 16, elements: !157)
!157 = !{!158, !160}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "init_res", scope: !156, file: !145, line: 362, baseType: !159, size: 8)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !111, line: 62, baseType: !14)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !156, file: !145, line: 367, baseType: !161, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 8)
!161 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !144, file: !145, line: 391, baseType: !108, size: 32, offset: 128)
!163 = !DIGlobalVariableExpression(var: !164, expr: !DIExpression())
!164 = distinct !DIGlobalVariable(name: "__init___device_dts_ord_9", scope: !9, file: !2, line: 824, type: !165, isLocal: true, isDefinition: true, align: 32)
!165 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !166)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "init_entry", file: !167, line: 92, size: 64, elements: !168)
!167 = !DIFile(filename: "include/zephyr/init.h", directory: "/home/sri/zephyrproject/zephyr")
!168 = !{!169, !181}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "init_fn", scope: !166, file: !167, line: 94, baseType: !170, size: 32)
!170 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "init_function", file: !167, line: 59, size: 32, elements: !171)
!171 = !{!172, !176}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "sys", scope: !170, file: !167, line: 66, baseType: !173, size: 32)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 32)
!174 = !DISubroutineType(types: !175)
!175 = !{!109}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !170, file: !167, line: 75, baseType: !177, size: 32)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 32)
!178 = !DISubroutineType(types: !179)
!179 = !{!109, !180}
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 32)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !166, file: !167, line: 99, baseType: !180, size: 32, offset: 32)
!182 = !DIGlobalVariableExpression(var: !183, expr: !DIExpression())
!183 = distinct !DIGlobalVariable(name: "__devstate_dts_ord_9", scope: !9, file: !2, line: 824, type: !156, isLocal: true, isDefinition: true, align: 8)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clock_control_driver_api", file: !101, line: 100, size: 224, elements: !185)
!185 = !{!186, !192, !193, !202, !208, !213, !219}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "on", scope: !184, file: !101, line: 101, baseType: !187, size: 32)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "clock_control", file: !101, line: 76, baseType: !188)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 32)
!189 = !DISubroutineType(types: !190)
!190 = !{!109, !180, !191}
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "clock_control_subsys_t", file: !101, line: 56, baseType: !108)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "off", scope: !184, file: !101, line: 102, baseType: !187, size: 32, offset: 32)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "async_on", scope: !184, file: !101, line: 103, baseType: !194, size: 32, offset: 64)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "clock_control_async_on_fn", file: !101, line: 83, baseType: !195)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 32)
!196 = !DISubroutineType(types: !197)
!197 = !{!109, !180, !191, !198, !108}
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "clock_control_cb_t", file: !101, line: 72, baseType: !199)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 32)
!200 = !DISubroutineType(types: !201)
!201 = !{null, !180, !191, !108}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "get_rate", scope: !184, file: !101, line: 104, baseType: !203, size: 32, offset: 96)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "clock_control_get", file: !101, line: 79, baseType: !204)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 32)
!205 = !DISubroutineType(types: !206)
!206 = !{!109, !180, !191, !207}
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 32)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "get_status", scope: !184, file: !101, line: 105, baseType: !209, size: 32, offset: 128)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "clock_control_get_status_fn", file: !101, line: 88, baseType: !210)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 32)
!211 = !DISubroutineType(types: !212)
!212 = !{!100, !180, !191}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "set_rate", scope: !184, file: !101, line: 106, baseType: !214, size: 32, offset: 160)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "clock_control_set", file: !101, line: 92, baseType: !215)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 32)
!216 = !DISubroutineType(types: !217)
!217 = !{!109, !180, !191, !218}
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "clock_control_subsys_rate_t", file: !101, line: 64, baseType: !108)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "configure", scope: !184, file: !101, line: 107, baseType: !220, size: 32, offset: 192)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "clock_control_configure_fn", file: !101, line: 96, baseType: !221)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 32)
!222 = !DISubroutineType(types: !223)
!223 = !{!109, !180, !191, !108}
!224 = !{i32 7, !"Dwarf Version", i32 4}
!225 = !{i32 2, !"Debug Info Version", i32 3}
!226 = !{i32 1, !"wchar_size", i32 4}
!227 = !{i32 1, !"static_rwdata", i32 1}
!228 = !{i32 1, !"enumsize_buildattr", i32 1}
!229 = !{i32 1, !"armlib_unavailable", i32 0}
!230 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
!231 = distinct !DISubprogram(name: "z_impl_device_is_ready", scope: !145, file: !145, line: 744, type: !232, scopeLine: 745, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !234)
!232 = !DISubroutineType(types: !233)
!233 = !{!161, !180}
!234 = !{!235}
!235 = !DILocalVariable(name: "dev", arg: 1, scope: !231, file: !145, line: 744, type: !180)
!236 = !DILocation(line: 744, column: 65, scope: !231)
!237 = !DILocation(line: 746, column: 27, scope: !231)
!238 = !DILocation(line: 746, column: 9, scope: !231)
!239 = !DILocation(line: 746, column: 2, scope: !231)
!240 = distinct !DISubprogram(name: "z_impl_k_object_access_grant", scope: !19, file: !19, line: 223, type: !241, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !358)
!241 = !DISubroutineType(types: !242)
!242 = !{null, !151, !243}
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 32)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_thread", file: !245, line: 250, size: 896, elements: !246)
!245 = !DIFile(filename: "include/zephyr/kernel/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!246 = !{!247, !316, !329, !330, !331, !332, !353}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !244, file: !245, line: 252, baseType: !248, size: 384)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_base", file: !245, line: 58, size: 384, elements: !249)
!249 = !{!250, !278, !286, !287, !288, !301, !302, !303}
!250 = !DIDerivedType(tag: DW_TAG_member, scope: !248, file: !245, line: 61, baseType: !251, size: 64)
!251 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !248, file: !245, line: 61, size: 64, elements: !252)
!252 = !{!253, !269}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_dlist", scope: !251, file: !245, line: 62, baseType: !254, size: 64)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dnode_t", file: !255, line: 55, baseType: !256)
!255 = !DIFile(filename: "include/zephyr/sys/dlist.h", directory: "/home/sri/zephyrproject/zephyr")
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_dnode", file: !255, line: 37, size: 64, elements: !257)
!257 = !{!258, !264}
!258 = !DIDerivedType(tag: DW_TAG_member, scope: !256, file: !255, line: 38, baseType: !259, size: 32)
!259 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !256, file: !255, line: 38, size: 32, elements: !260)
!260 = !{!261, !263}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !259, file: !255, line: 39, baseType: !262, size: 32)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 32)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !259, file: !255, line: 40, baseType: !262, size: 32)
!264 = !DIDerivedType(tag: DW_TAG_member, scope: !256, file: !255, line: 42, baseType: !265, size: 32, offset: 32)
!265 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !256, file: !255, line: 42, size: 32, elements: !266)
!266 = !{!267, !268}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !265, file: !255, line: 43, baseType: !262, size: 32)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !265, file: !255, line: 44, baseType: !262, size: 32)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_rb", scope: !251, file: !245, line: 63, baseType: !270, size: 64)
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rbnode", file: !271, line: 58, size: 64, elements: !272)
!271 = !DIFile(filename: "include/zephyr/sys/rb.h", directory: "/home/sri/zephyrproject/zephyr")
!272 = !{!273}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !270, file: !271, line: 60, baseType: !274, size: 64)
!274 = !DICompositeType(tag: DW_TAG_array_type, baseType: !275, size: 64, elements: !276)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 32)
!276 = !{!277}
!277 = !DISubrange(count: 2)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "pended_on", scope: !248, file: !245, line: 69, baseType: !279, size: 32, offset: 64)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 32)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "_wait_q_t", file: !281, line: 243, baseType: !282)
!281 = !DIFile(filename: "include/zephyr/kernel_structs.h", directory: "/home/sri/zephyrproject/zephyr")
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !281, line: 241, size: 64, elements: !283)
!283 = !{!284}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !282, file: !281, line: 242, baseType: !285, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dlist_t", file: !255, line: 51, baseType: !256)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "user_options", scope: !248, file: !245, line: 72, baseType: !159, size: 8, offset: 96)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "thread_state", scope: !248, file: !245, line: 75, baseType: !159, size: 8, offset: 104)
!288 = !DIDerivedType(tag: DW_TAG_member, scope: !248, file: !245, line: 91, baseType: !289, size: 16, offset: 112)
!289 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !248, file: !245, line: 91, size: 16, elements: !290)
!290 = !{!291, !298}
!291 = !DIDerivedType(tag: DW_TAG_member, scope: !289, file: !245, line: 92, baseType: !292, size: 16)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !289, file: !245, line: 92, size: 16, elements: !293)
!293 = !{!294, !297}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !292, file: !245, line: 97, baseType: !295, size: 8)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !111, line: 56, baseType: !296)
!296 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "sched_locked", scope: !292, file: !245, line: 98, baseType: !159, size: 8, offset: 8)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "preempt", scope: !289, file: !245, line: 101, baseType: !299, size: 16)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !111, line: 63, baseType: !300)
!300 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "order_key", scope: !248, file: !245, line: 108, baseType: !110, size: 32, offset: 128)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "swap_data", scope: !248, file: !245, line: 132, baseType: !108, size: 32, offset: 160)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !248, file: !245, line: 136, baseType: !304, size: 192, offset: 192)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_timeout", file: !281, line: 254, size: 192, elements: !305)
!305 = !{!306, !307, !313}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !304, file: !281, line: 255, baseType: !254, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !304, file: !281, line: 256, baseType: !308, size: 32, offset: 64)
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "_timeout_func_t", file: !281, line: 252, baseType: !309)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 32)
!310 = !DISubroutineType(types: !311)
!311 = !{null, !312}
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 32)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "dticks", scope: !304, file: !281, line: 259, baseType: !314, size: 64, offset: 128)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !111, line: 59, baseType: !315)
!315 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "callee_saved", scope: !244, file: !245, line: 255, baseType: !317, size: 288, offset: 384)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_callee_saved", file: !318, line: 25, size: 288, elements: !319)
!318 = !DIFile(filename: "include/zephyr/arch/arm/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!319 = !{!320, !321, !322, !323, !324, !325, !326, !327, !328}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "v1", scope: !317, file: !318, line: 26, baseType: !110, size: 32)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "v2", scope: !317, file: !318, line: 27, baseType: !110, size: 32, offset: 32)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "v3", scope: !317, file: !318, line: 28, baseType: !110, size: 32, offset: 64)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "v4", scope: !317, file: !318, line: 29, baseType: !110, size: 32, offset: 96)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "v5", scope: !317, file: !318, line: 30, baseType: !110, size: 32, offset: 128)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "v6", scope: !317, file: !318, line: 31, baseType: !110, size: 32, offset: 160)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "v7", scope: !317, file: !318, line: 32, baseType: !110, size: 32, offset: 192)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "v8", scope: !317, file: !318, line: 33, baseType: !110, size: 32, offset: 224)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "psp", scope: !317, file: !318, line: 34, baseType: !110, size: 32, offset: 256)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "init_data", scope: !244, file: !245, line: 258, baseType: !108, size: 32, offset: 672)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "join_queue", scope: !244, file: !245, line: 261, baseType: !280, size: 64, offset: 704)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "errno_var", scope: !244, file: !245, line: 302, baseType: !109, size: 32, offset: 768)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "resource_pool", scope: !244, file: !245, line: 333, baseType: !333, size: 32, offset: 800)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 32)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_heap", file: !335, line: 5291, size: 160, elements: !336)
!335 = !DIFile(filename: "include/zephyr/kernel.h", directory: "/home/sri/zephyrproject/zephyr")
!336 = !{!337, !348, !349}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !334, file: !335, line: 5292, baseType: !338, size: 96)
!338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sys_heap", file: !339, line: 56, size: 96, elements: !340)
!339 = !DIFile(filename: "include/zephyr/sys/sys_heap.h", directory: "/home/sri/zephyrproject/zephyr")
!340 = !{!341, !344, !345}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !338, file: !339, line: 57, baseType: !342, size: 32)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 32)
!343 = !DICompositeType(tag: DW_TAG_structure_type, name: "z_heap", file: !339, line: 57, flags: DIFlagFwdDecl)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "init_mem", scope: !338, file: !339, line: 58, baseType: !108, size: 32, offset: 32)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "init_bytes", scope: !338, file: !339, line: 59, baseType: !346, size: 32, offset: 64)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !347, line: 46, baseType: !112)
!347 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/lib/clang/17/include/stddef.h", directory: "")
!348 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !334, file: !335, line: 5293, baseType: !280, size: 64, offset: 96)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !334, file: !335, line: 5294, baseType: !350, offset: 160)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_spinlock", file: !351, line: 45, elements: !352)
!351 = !DIFile(filename: "include/zephyr/spinlock.h", directory: "/home/sri/zephyrproject/zephyr")
!352 = !{}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !244, file: !245, line: 355, baseType: !354, size: 64, offset: 832)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_arch", file: !318, line: 60, size: 64, elements: !355)
!355 = !{!356, !357}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "basepri", scope: !354, file: !318, line: 63, baseType: !110, size: 32)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "swap_return_value", scope: !354, file: !318, line: 66, baseType: !110, size: 32, offset: 32)
!358 = !{!359, !360}
!359 = !DILocalVariable(name: "object", arg: 1, scope: !240, file: !19, line: 223, type: !151)
!360 = !DILocalVariable(name: "thread", arg: 2, scope: !240, file: !19, line: 224, type: !243)
!361 = !DILocation(line: 223, column: 61, scope: !240)
!362 = !DILocation(line: 224, column: 24, scope: !240)
!363 = !DILocation(line: 226, column: 9, scope: !240)
!364 = !DILocation(line: 227, column: 9, scope: !240)
!365 = !DILocation(line: 228, column: 1, scope: !240)
!366 = distinct !DISubprogram(name: "z_impl_k_object_release", scope: !19, file: !19, line: 243, type: !367, scopeLine: 244, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !369)
!367 = !DISubroutineType(types: !368)
!368 = !{null, !151}
!369 = !{!370}
!370 = !DILocalVariable(name: "object", arg: 1, scope: !366, file: !19, line: 243, type: !151)
!371 = !DILocation(line: 243, column: 56, scope: !366)
!372 = !DILocation(line: 245, column: 9, scope: !366)
!373 = !DILocation(line: 246, column: 1, scope: !366)
!374 = distinct !DISubprogram(name: "z_impl_k_object_alloc", scope: !19, file: !19, line: 359, type: !375, scopeLine: 360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !377)
!375 = !DISubroutineType(types: !376)
!376 = !{!108, !18}
!377 = !{!378}
!378 = !DILocalVariable(name: "otype", arg: 1, scope: !374, file: !19, line: 359, type: !18)
!379 = !DILocation(line: 359, column: 58, scope: !374)
!380 = !DILocation(line: 361, column: 9, scope: !374)
!381 = !DILocation(line: 363, column: 2, scope: !374)
!382 = distinct !DISubprogram(name: "z_impl_k_object_alloc_size", scope: !19, file: !19, line: 366, type: !383, scopeLine: 368, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !385)
!383 = !DISubroutineType(types: !384)
!384 = !{!108, !18, !346}
!385 = !{!386, !387}
!386 = !DILocalVariable(name: "otype", arg: 1, scope: !382, file: !19, line: 366, type: !18)
!387 = !DILocalVariable(name: "size", arg: 2, scope: !382, file: !19, line: 367, type: !346)
!388 = !DILocation(line: 366, column: 63, scope: !382)
!389 = !DILocation(line: 367, column: 13, scope: !382)
!390 = !DILocation(line: 369, column: 9, scope: !382)
!391 = !DILocation(line: 370, column: 9, scope: !382)
!392 = !DILocation(line: 372, column: 2, scope: !382)
!393 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_expires_ticks", scope: !335, file: !335, line: 656, type: !394, scopeLine: 658, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !400)
!394 = !DISubroutineType(types: !395)
!395 = !{!396, !398}
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_ticks_t", file: !397, line: 46, baseType: !314)
!397 = !DIFile(filename: "include/zephyr/sys_clock.h", directory: "/home/sri/zephyrproject/zephyr")
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 32)
!399 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !244)
!400 = !{!401}
!401 = !DILocalVariable(name: "t", arg: 1, scope: !393, file: !335, line: 657, type: !398)
!402 = !DILocation(line: 657, column: 30, scope: !393)
!403 = !DILocation(line: 659, column: 28, scope: !393)
!404 = !DILocation(line: 659, column: 31, scope: !393)
!405 = !DILocation(line: 659, column: 36, scope: !393)
!406 = !DILocation(line: 659, column: 9, scope: !393)
!407 = !DILocation(line: 659, column: 2, scope: !393)
!408 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_remaining_ticks", scope: !335, file: !335, line: 671, type: !394, scopeLine: 673, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !409)
!409 = !{!410}
!410 = !DILocalVariable(name: "t", arg: 1, scope: !408, file: !335, line: 672, type: !398)
!411 = !DILocation(line: 672, column: 30, scope: !408)
!412 = !DILocation(line: 674, column: 30, scope: !408)
!413 = !DILocation(line: 674, column: 33, scope: !408)
!414 = !DILocation(line: 674, column: 38, scope: !408)
!415 = !DILocation(line: 674, column: 9, scope: !408)
!416 = !DILocation(line: 674, column: 2, scope: !408)
!417 = distinct !DISubprogram(name: "z_impl_k_timer_expires_ticks", scope: !335, file: !335, line: 1634, type: !418, scopeLine: 1636, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !439)
!418 = !DISubroutineType(types: !419)
!419 = !{!396, !420}
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 32)
!421 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !422)
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_timer", file: !335, line: 1439, size: 448, elements: !423)
!423 = !{!424, !425, !426, !431, !432, !437, !438}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !422, file: !335, line: 1445, baseType: !304, size: 192)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !422, file: !335, line: 1448, baseType: !280, size: 64, offset: 192)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_fn", scope: !422, file: !335, line: 1451, baseType: !427, size: 32, offset: 256)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 32)
!428 = !DISubroutineType(types: !429)
!429 = !{null, !430}
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 32)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "stop_fn", scope: !422, file: !335, line: 1454, baseType: !427, size: 32, offset: 288)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !422, file: !335, line: 1457, baseType: !433, size: 64, offset: 320)
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_timeout_t", file: !397, line: 67, baseType: !434)
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !397, line: 65, size: 64, elements: !435)
!435 = !{!436}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "ticks", scope: !434, file: !397, line: 66, baseType: !396, size: 64)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !422, file: !335, line: 1460, baseType: !110, size: 32, offset: 384)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !422, file: !335, line: 1463, baseType: !108, size: 32, offset: 416)
!439 = !{!440}
!440 = !DILocalVariable(name: "timer", arg: 1, scope: !417, file: !335, line: 1635, type: !420)
!441 = !DILocation(line: 1635, column: 34, scope: !417)
!442 = !DILocation(line: 1637, column: 28, scope: !417)
!443 = !DILocation(line: 1637, column: 35, scope: !417)
!444 = !DILocation(line: 1637, column: 9, scope: !417)
!445 = !DILocation(line: 1637, column: 2, scope: !417)
!446 = distinct !DISubprogram(name: "z_impl_k_timer_remaining_ticks", scope: !335, file: !335, line: 1649, type: !418, scopeLine: 1651, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !447)
!447 = !{!448}
!448 = !DILocalVariable(name: "timer", arg: 1, scope: !446, file: !335, line: 1650, type: !420)
!449 = !DILocation(line: 1650, column: 34, scope: !446)
!450 = !DILocation(line: 1652, column: 30, scope: !446)
!451 = !DILocation(line: 1652, column: 37, scope: !446)
!452 = !DILocation(line: 1652, column: 9, scope: !446)
!453 = !DILocation(line: 1652, column: 2, scope: !446)
!454 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_set", scope: !335, file: !335, line: 1689, type: !455, scopeLine: 1691, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !457)
!455 = !DISubroutineType(types: !456)
!456 = !{null, !430, !108}
!457 = !{!458, !459}
!458 = !DILocalVariable(name: "timer", arg: 1, scope: !454, file: !335, line: 1689, type: !430)
!459 = !DILocalVariable(name: "user_data", arg: 2, scope: !454, file: !335, line: 1690, type: !108)
!460 = !DILocation(line: 1689, column: 65, scope: !454)
!461 = !DILocation(line: 1690, column: 19, scope: !454)
!462 = !DILocation(line: 1692, column: 21, scope: !454)
!463 = !DILocation(line: 1692, column: 2, scope: !454)
!464 = !DILocation(line: 1692, column: 9, scope: !454)
!465 = !DILocation(line: 1692, column: 19, scope: !454)
!466 = !DILocation(line: 1693, column: 1, scope: !454)
!467 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_get", scope: !335, file: !335, line: 1704, type: !468, scopeLine: 1705, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !470)
!468 = !DISubroutineType(types: !469)
!469 = !{!108, !420}
!470 = !{!471}
!471 = !DILocalVariable(name: "timer", arg: 1, scope: !467, file: !335, line: 1704, type: !420)
!472 = !DILocation(line: 1704, column: 72, scope: !467)
!473 = !DILocation(line: 1706, column: 9, scope: !467)
!474 = !DILocation(line: 1706, column: 16, scope: !467)
!475 = !DILocation(line: 1706, column: 2, scope: !467)
!476 = distinct !DISubprogram(name: "z_impl_k_queue_is_empty", scope: !335, file: !335, line: 2071, type: !477, scopeLine: 2072, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !497)
!477 = !DISubroutineType(types: !478)
!478 = !{!109, !479}
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 32)
!480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_queue", file: !335, line: 1830, size: 128, elements: !481)
!481 = !{!482, !495, !496}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "data_q", scope: !480, file: !335, line: 1831, baseType: !483, size: 64)
!483 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sflist_t", file: !484, line: 60, baseType: !485)
!484 = !DIFile(filename: "include/zephyr/sys/sflist.h", directory: "/home/sri/zephyrproject/zephyr")
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sflist", file: !484, line: 53, size: 64, elements: !486)
!486 = !{!487, !494}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !485, file: !484, line: 54, baseType: !488, size: 32)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 32)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sfnode_t", file: !484, line: 50, baseType: !490)
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sfnode", file: !484, line: 44, size: 32, elements: !491)
!491 = !{!492}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "next_and_flags", scope: !490, file: !484, line: 45, baseType: !493, size: 32)
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "unative_t", file: !484, line: 40, baseType: !110)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !485, file: !484, line: 55, baseType: !488, size: 32, offset: 32)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !480, file: !335, line: 1832, baseType: !350, offset: 64)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !480, file: !335, line: 1833, baseType: !280, size: 64, offset: 64)
!497 = !{!498}
!498 = !DILocalVariable(name: "queue", arg: 1, scope: !476, file: !335, line: 2071, type: !479)
!499 = !DILocation(line: 2071, column: 59, scope: !476)
!500 = !DILocation(line: 2073, column: 35, scope: !476)
!501 = !DILocation(line: 2073, column: 42, scope: !476)
!502 = !DILocation(line: 2073, column: 14, scope: !476)
!503 = !DILocation(line: 2073, column: 9, scope: !476)
!504 = !DILocation(line: 2073, column: 2, scope: !476)
!505 = distinct !DISubprogram(name: "z_impl_k_sem_count_get", scope: !335, file: !335, line: 3209, type: !506, scopeLine: 3210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !514)
!506 = !DISubroutineType(types: !507)
!507 = !{!112, !508}
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 32)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sem", file: !335, line: 3092, size: 128, elements: !510)
!510 = !{!511, !512, !513}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !509, file: !335, line: 3093, baseType: !280, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !509, file: !335, line: 3094, baseType: !112, size: 32, offset: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !509, file: !335, line: 3095, baseType: !112, size: 32, offset: 96)
!514 = !{!515}
!515 = !DILocalVariable(name: "sem", arg: 1, scope: !505, file: !335, line: 3209, type: !508)
!516 = !DILocation(line: 3209, column: 65, scope: !505)
!517 = !DILocation(line: 3211, column: 9, scope: !505)
!518 = !DILocation(line: 3211, column: 14, scope: !505)
!519 = !DILocation(line: 3211, column: 2, scope: !505)
!520 = distinct !DISubprogram(name: "z_impl_k_msgq_num_free_get", scope: !335, file: !335, line: 4649, type: !521, scopeLine: 4650, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !537)
!521 = !DISubroutineType(types: !522)
!522 = !{!110, !523}
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 32)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_msgq", file: !335, line: 4390, size: 320, elements: !525)
!525 = !{!526, !527, !528, !529, !530, !532, !533, !534, !535, !536}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !524, file: !335, line: 4392, baseType: !280, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !524, file: !335, line: 4394, baseType: !350, offset: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "msg_size", scope: !524, file: !335, line: 4396, baseType: !346, size: 32, offset: 64)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !524, file: !335, line: 4398, baseType: !110, size: 32, offset: 96)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_start", scope: !524, file: !335, line: 4400, baseType: !531, size: 32, offset: 128)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 32)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_end", scope: !524, file: !335, line: 4402, baseType: !531, size: 32, offset: 160)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "read_ptr", scope: !524, file: !335, line: 4404, baseType: !531, size: 32, offset: 192)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "write_ptr", scope: !524, file: !335, line: 4406, baseType: !531, size: 32, offset: 224)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "used_msgs", scope: !524, file: !335, line: 4408, baseType: !110, size: 32, offset: 256)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !524, file: !335, line: 4413, baseType: !159, size: 8, offset: 288)
!537 = !{!538}
!538 = !DILocalVariable(name: "msgq", arg: 1, scope: !520, file: !335, line: 4649, type: !523)
!539 = !DILocation(line: 4649, column: 66, scope: !520)
!540 = !DILocation(line: 4651, column: 9, scope: !520)
!541 = !DILocation(line: 4651, column: 15, scope: !520)
!542 = !DILocation(line: 4651, column: 26, scope: !520)
!543 = !DILocation(line: 4651, column: 32, scope: !520)
!544 = !DILocation(line: 4651, column: 24, scope: !520)
!545 = !DILocation(line: 4651, column: 2, scope: !520)
!546 = distinct !DISubprogram(name: "z_impl_k_msgq_num_used_get", scope: !335, file: !335, line: 4665, type: !521, scopeLine: 4666, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !547)
!547 = !{!548}
!548 = !DILocalVariable(name: "msgq", arg: 1, scope: !546, file: !335, line: 4665, type: !523)
!549 = !DILocation(line: 4665, column: 66, scope: !546)
!550 = !DILocation(line: 4667, column: 9, scope: !546)
!551 = !DILocation(line: 4667, column: 15, scope: !546)
!552 = !DILocation(line: 4667, column: 2, scope: !546)
!553 = distinct !DISubprogram(name: "stm32_clock_control_init", scope: !2, file: !2, line: 719, type: !178, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !554)
!554 = !{!555, !556, !557}
!555 = !DILocalVariable(name: "dev", arg: 1, scope: !553, file: !2, line: 719, type: !180)
!556 = !DILocalVariable(name: "old_flash_freq", scope: !553, file: !2, line: 727, type: !110)
!557 = !DILocalVariable(name: "new_flash_freq", scope: !553, file: !2, line: 728, type: !110)
!558 = !DILocation(line: 719, column: 51, scope: !553)
!559 = !DILocation(line: 721, column: 9, scope: !553)
!560 = !DILocation(line: 724, column: 2, scope: !553)
!561 = !DILocation(line: 727, column: 2, scope: !553)
!562 = !DILocation(line: 727, column: 11, scope: !553)
!563 = !DILocation(line: 728, column: 2, scope: !553)
!564 = !DILocation(line: 728, column: 11, scope: !553)
!565 = !DILocation(line: 730, column: 21, scope: !553)
!566 = !DILocation(line: 730, column: 67, scope: !553)
!567 = !DILocation(line: 730, column: 93, scope: !553)
!568 = !DILocation(line: 730, column: 112, scope: !553)
!569 = !DILocation(line: 730, column: 51, scope: !553)
!570 = !DILocation(line: 730, column: 48, scope: !553)
!571 = !DILocation(line: 730, column: 17, scope: !553)
!572 = !DILocation(line: 733, column: 34, scope: !553)
!573 = !DILocation(line: 733, column: 31, scope: !553)
!574 = !DILocation(line: 733, column: 17, scope: !553)
!575 = !DILocation(line: 737, column: 6, scope: !576)
!576 = distinct !DILexicalBlock(scope: !553, file: !2, line: 737, column: 6)
!577 = !DILocation(line: 737, column: 23, scope: !576)
!578 = !DILocation(line: 737, column: 21, scope: !576)
!579 = !DILocation(line: 737, column: 6, scope: !553)
!580 = !DILocation(line: 738, column: 22, scope: !581)
!581 = distinct !DILexicalBlock(scope: !576, file: !2, line: 737, column: 39)
!582 = !DILocation(line: 738, column: 3, scope: !581)
!583 = !DILocation(line: 739, column: 2, scope: !581)
!584 = !DILocation(line: 743, column: 2, scope: !553)
!585 = !DILocation(line: 746, column: 2, scope: !553)
!586 = !DILocation(line: 753, column: 3, scope: !587)
!587 = distinct !DILexicalBlock(scope: !588, file: !2, line: 752, column: 9)
!588 = distinct !DILexicalBlock(scope: !553, file: !2, line: 748, column: 6)
!589 = !DILocation(line: 758, column: 2, scope: !553)
!590 = !DILocation(line: 759, column: 2, scope: !553)
!591 = !DILocation(line: 759, column: 9, scope: !553)
!592 = !DILocation(line: 759, column: 34, scope: !553)
!593 = distinct !{!593, !590, !594}
!594 = !DILocation(line: 760, column: 2, scope: !553)
!595 = !DILocation(line: 783, column: 6, scope: !596)
!596 = distinct !DILexicalBlock(scope: !553, file: !2, line: 783, column: 6)
!597 = !DILocation(line: 783, column: 24, scope: !596)
!598 = !DILocation(line: 783, column: 21, scope: !596)
!599 = !DILocation(line: 783, column: 6, scope: !553)
!600 = !DILocation(line: 784, column: 22, scope: !601)
!601 = distinct !DILexicalBlock(scope: !596, file: !2, line: 783, column: 40)
!602 = !DILocation(line: 784, column: 3, scope: !601)
!603 = !DILocation(line: 785, column: 2, scope: !601)
!604 = !DILocation(line: 788, column: 18, scope: !553)
!605 = !DILocation(line: 791, column: 2, scope: !553)
!606 = !DILocation(line: 815, column: 2, scope: !553)
!607 = !DILocation(line: 818, column: 1, scope: !553)
!608 = !DILocation(line: 817, column: 2, scope: !553)
!609 = !DISubprogram(name: "config_enable_default_clocks", scope: !610, file: !610, line: 51, type: !611, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !352)
!610 = !DIFile(filename: "drivers/clock_control/clock_stm32_ll_common.h", directory: "/home/sri/zephyrproject/zephyr")
!611 = !DISubroutineType(types: !612)
!612 = !{null}
!613 = !DISubprogram(name: "HAL_RCC_GetSysClockFreq", scope: !614, file: !614, line: 1655, type: !615, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !352)
!614 = !DIFile(filename: "modules/hal/stm32/stm32cube/stm32f0xx/drivers/include/stm32f0xx_hal_rcc.h", directory: "/home/sri/zephyrproject")
!615 = !DISubroutineType(types: !616)
!616 = !{!110}
!617 = distinct !DISubprogram(name: "LL_RCC_GetAHBPrescaler", scope: !618, file: !618, line: 1169, type: !615, scopeLine: 1170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !352)
!618 = !DIFile(filename: "modules/hal/stm32/stm32cube/stm32f0xx/drivers/include/stm32f0xx_ll_rcc.h", directory: "/home/sri/zephyrproject")
!619 = !DILocation(line: 1171, column: 89, scope: !617)
!620 = !DILocation(line: 1171, column: 95, scope: !617)
!621 = !DILocation(line: 1171, column: 3, scope: !617)
!622 = !DISubprogram(name: "LL_SetFlashLatency", scope: !623, file: !623, line: 251, type: !624, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !352)
!623 = !DIFile(filename: "modules/hal/stm32/stm32cube/stm32f0xx/drivers/include/stm32f0xx_ll_utils.h", directory: "/home/sri/zephyrproject")
!624 = !DISubroutineType(types: !625)
!625 = !{!626, !110}
!626 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErrorStatus", file: !13, line: 184, baseType: !12)
!627 = distinct !DISubprogram(name: "set_up_fixed_clock_sources", scope: !2, file: !2, line: 547, type: !611, scopeLine: 548, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !352)
!628 = !DILocation(line: 554, column: 4, scope: !629)
!629 = distinct !DILexicalBlock(scope: !630, file: !2, line: 553, column: 10)
!630 = distinct !DILexicalBlock(scope: !631, file: !2, line: 553, column: 7)
!631 = distinct !DILexicalBlock(scope: !632, file: !2, line: 550, column: 9)
!632 = distinct !DILexicalBlock(scope: !627, file: !2, line: 550, column: 6)
!633 = !DILocation(line: 566, column: 3, scope: !631)
!634 = !DILocation(line: 567, column: 3, scope: !631)
!635 = !DILocation(line: 567, column: 10, scope: !631)
!636 = !DILocation(line: 567, column: 31, scope: !631)
!637 = distinct !{!637, !634, !638}
!638 = !DILocation(line: 569, column: 3, scope: !631)
!639 = !DILocation(line: 623, column: 3, scope: !640)
!640 = distinct !DILexicalBlock(scope: !641, file: !2, line: 617, column: 9)
!641 = distinct !DILexicalBlock(scope: !627, file: !2, line: 617, column: 6)
!642 = !DILocation(line: 624, column: 3, scope: !640)
!643 = !DILocation(line: 624, column: 10, scope: !640)
!644 = !DILocation(line: 624, column: 31, scope: !640)
!645 = distinct !{!645, !642, !646}
!646 = !DILocation(line: 625, column: 3, scope: !640)
!647 = !DILocation(line: 705, column: 1, scope: !627)
!648 = distinct !DISubprogram(name: "set_up_plls", scope: !2, file: !2, line: 478, type: !611, scopeLine: 479, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !352)
!649 = !DILocation(line: 490, column: 6, scope: !650)
!650 = distinct !DILexicalBlock(scope: !648, file: !2, line: 490, column: 6)
!651 = !DILocation(line: 490, column: 31, scope: !650)
!652 = !DILocation(line: 490, column: 6, scope: !648)
!653 = !DILocation(line: 491, column: 3, scope: !654)
!654 = distinct !DILexicalBlock(scope: !650, file: !2, line: 490, column: 49)
!655 = !DILocation(line: 492, column: 3, scope: !654)
!656 = !DILocation(line: 493, column: 2, scope: !654)
!657 = !DILocation(line: 494, column: 2, scope: !648)
!658 = !DILocation(line: 526, column: 2, scope: !648)
!659 = !DILocation(line: 529, column: 2, scope: !648)
!660 = !DILocation(line: 530, column: 2, scope: !648)
!661 = !DILocation(line: 530, column: 9, scope: !648)
!662 = !DILocation(line: 530, column: 30, scope: !648)
!663 = distinct !{!663, !660, !664}
!664 = !DILocation(line: 532, column: 2, scope: !648)
!665 = !DILocation(line: 545, column: 1, scope: !648)
!666 = distinct !DISubprogram(name: "LL_RCC_SetAHBPrescaler", scope: !618, file: !618, line: 1134, type: !667, scopeLine: 1135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !669)
!667 = !DISubroutineType(types: !668)
!668 = !{null, !110}
!669 = !{!670}
!670 = !DILocalVariable(name: "Prescaler", arg: 1, scope: !666, file: !618, line: 1134, type: !110)
!671 = !DILocation(line: 1134, column: 54, scope: !666)
!672 = !DILocation(line: 1136, column: 153, scope: !666)
!673 = !DILocation(line: 1136, column: 161, scope: !666)
!674 = !DILocation(line: 1136, column: 188, scope: !666)
!675 = !DILocation(line: 1136, column: 185, scope: !666)
!676 = !DILocation(line: 1136, column: 79, scope: !666)
!677 = !DILocation(line: 1137, column: 1, scope: !666)
!678 = distinct !DISubprogram(name: "LL_RCC_SetSysClkSource", scope: !618, file: !618, line: 1098, type: !667, scopeLine: 1099, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !679)
!679 = !{!680}
!680 = !DILocalVariable(name: "Source", arg: 1, scope: !678, file: !618, line: 1098, type: !110)
!681 = !DILocation(line: 1098, column: 54, scope: !678)
!682 = !DILocation(line: 1100, column: 153, scope: !678)
!683 = !DILocation(line: 1100, column: 161, scope: !678)
!684 = !DILocation(line: 1100, column: 188, scope: !678)
!685 = !DILocation(line: 1100, column: 185, scope: !678)
!686 = !DILocation(line: 1100, column: 79, scope: !678)
!687 = !DILocation(line: 1101, column: 1, scope: !678)
!688 = distinct !DISubprogram(name: "LL_RCC_GetSysClkSource", scope: !618, file: !618, line: 1114, type: !615, scopeLine: 1115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !352)
!689 = !DILocation(line: 1116, column: 89, scope: !688)
!690 = !DILocation(line: 1116, column: 95, scope: !688)
!691 = !DILocation(line: 1116, column: 3, scope: !688)
!692 = distinct !DISubprogram(name: "LL_RCC_SetAPB1Prescaler", scope: !618, file: !618, line: 1150, type: !667, scopeLine: 1151, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !693)
!693 = !{!694}
!694 = !DILocalVariable(name: "Prescaler", arg: 1, scope: !692, file: !618, line: 1150, type: !110)
!695 = !DILocation(line: 1150, column: 55, scope: !692)
!696 = !DILocation(line: 1152, column: 153, scope: !692)
!697 = !DILocation(line: 1152, column: 161, scope: !692)
!698 = !DILocation(line: 1152, column: 188, scope: !692)
!699 = !DILocation(line: 1152, column: 185, scope: !692)
!700 = !DILocation(line: 1152, column: 79, scope: !692)
!701 = !DILocation(line: 1153, column: 1, scope: !692)
!702 = distinct !DISubprogram(name: "stm32_clock_control_mco_init", scope: !703, file: !703, line: 86, type: !611, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !352)
!703 = !DIFile(filename: "drivers/clock_control/clock_stm32_ll_mco.h", directory: "/home/sri/zephyrproject/zephyr")
!704 = !DILocation(line: 101, column: 1, scope: !702)
!705 = !DISubprogram(name: "z_device_is_ready", scope: !145, file: !145, line: 724, type: !232, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !352)
!706 = !DISubprogram(name: "z_timeout_expires", scope: !335, file: !335, line: 642, type: !707, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !352)
!707 = !DISubroutineType(types: !708)
!708 = !{!396, !709}
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 32)
!710 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !304)
!711 = !DISubprogram(name: "z_timeout_remaining", scope: !335, file: !335, line: 643, type: !707, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !352)
!712 = distinct !DISubprogram(name: "sys_sflist_is_empty", scope: !484, file: !484, line: 335, type: !713, scopeLine: 335, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !716)
!713 = !DISubroutineType(types: !714)
!714 = !{!161, !715}
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 32)
!716 = !{!717}
!717 = !DILocalVariable(name: "list", arg: 1, scope: !712, file: !484, line: 335, type: !715)
!718 = !DILocation(line: 335, column: 55, scope: !712)
!719 = !DILocation(line: 335, column: 92, scope: !712)
!720 = !DILocation(line: 335, column: 71, scope: !712)
!721 = !DILocation(line: 335, column: 98, scope: !712)
!722 = !DILocation(line: 335, column: 63, scope: !712)
!723 = distinct !DISubprogram(name: "sys_sflist_peek_head", scope: !484, file: !484, line: 255, type: !724, scopeLine: 256, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !726)
!724 = !DISubroutineType(types: !725)
!725 = !{!488, !715}
!726 = !{!727}
!727 = !DILocalVariable(name: "list", arg: 1, scope: !723, file: !484, line: 255, type: !715)
!728 = !DILocation(line: 255, column: 64, scope: !723)
!729 = !DILocation(line: 257, column: 9, scope: !723)
!730 = !DILocation(line: 257, column: 15, scope: !723)
!731 = !DILocation(line: 257, column: 2, scope: !723)
!732 = distinct !DISubprogram(name: "LL_RCC_HSE_EnableBypass", scope: !618, file: !618, line: 688, type: !611, scopeLine: 689, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !352)
!733 = !DILocation(line: 690, column: 75, scope: !732)
!734 = !DILocation(line: 691, column: 1, scope: !732)
!735 = distinct !DISubprogram(name: "LL_RCC_HSE_Enable", scope: !618, file: !618, line: 708, type: !611, scopeLine: 709, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !352)
!736 = !DILocation(line: 710, column: 75, scope: !735)
!737 = !DILocation(line: 711, column: 1, scope: !735)
!738 = distinct !DISubprogram(name: "LL_RCC_HSE_IsReady", scope: !618, file: !618, line: 728, type: !615, scopeLine: 729, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !352)
!739 = !DILocation(line: 730, column: 79, scope: !738)
!740 = !DILocation(line: 730, column: 83, scope: !738)
!741 = !DILocation(line: 730, column: 105, scope: !738)
!742 = !DILocation(line: 730, column: 3, scope: !738)
!743 = distinct !DISubprogram(name: "LL_RCC_LSI_Enable", scope: !618, file: !618, line: 1053, type: !611, scopeLine: 1054, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !352)
!744 = !DILocation(line: 1055, column: 76, scope: !743)
!745 = !DILocation(line: 1056, column: 1, scope: !743)
!746 = distinct !DISubprogram(name: "LL_RCC_LSI_IsReady", scope: !618, file: !618, line: 1073, type: !615, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !352)
!747 = !DILocation(line: 1075, column: 79, scope: !746)
!748 = !DILocation(line: 1075, column: 84, scope: !746)
!749 = !DILocation(line: 1075, column: 105, scope: !746)
!750 = !DILocation(line: 1075, column: 3, scope: !746)
!751 = distinct !DISubprogram(name: "stm32_clock_switch_to_hsi", scope: !2, file: !2, line: 460, type: !611, scopeLine: 461, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !352)
!752 = !DILocation(line: 463, column: 6, scope: !753)
!753 = distinct !DILexicalBlock(scope: !751, file: !2, line: 463, column: 6)
!754 = !DILocation(line: 463, column: 27, scope: !753)
!755 = !DILocation(line: 463, column: 6, scope: !751)
!756 = !DILocation(line: 465, column: 3, scope: !757)
!757 = distinct !DILexicalBlock(scope: !753, file: !2, line: 463, column: 33)
!758 = !DILocation(line: 466, column: 3, scope: !757)
!759 = !DILocation(line: 466, column: 10, scope: !757)
!760 = !DILocation(line: 466, column: 31, scope: !757)
!761 = distinct !{!761, !758, !762}
!762 = !DILocation(line: 468, column: 3, scope: !757)
!763 = !DILocation(line: 469, column: 2, scope: !757)
!764 = !DILocation(line: 472, column: 2, scope: !751)
!765 = !DILocation(line: 473, column: 2, scope: !751)
!766 = !DILocation(line: 473, column: 9, scope: !751)
!767 = !DILocation(line: 473, column: 34, scope: !751)
!768 = distinct !{!768, !765, !769}
!769 = !DILocation(line: 474, column: 2, scope: !751)
!770 = !DILocation(line: 475, column: 1, scope: !751)
!771 = distinct !DISubprogram(name: "LL_RCC_PLL_Disable", scope: !618, file: !618, line: 1516, type: !611, scopeLine: 1517, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !352)
!772 = !DILocation(line: 1518, column: 75, scope: !771)
!773 = !DILocation(line: 1519, column: 1, scope: !771)
!774 = !DISubprogram(name: "config_pll_sysclock", scope: !610, file: !610, line: 41, type: !611, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !352)
!775 = distinct !DISubprogram(name: "LL_RCC_PLL_Enable", scope: !618, file: !618, line: 1505, type: !611, scopeLine: 1506, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !352)
!776 = !DILocation(line: 1507, column: 75, scope: !775)
!777 = !DILocation(line: 1508, column: 1, scope: !775)
!778 = distinct !DISubprogram(name: "LL_RCC_PLL_IsReady", scope: !618, file: !618, line: 1526, type: !615, scopeLine: 1527, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !352)
!779 = !DILocation(line: 1528, column: 79, scope: !778)
!780 = !DILocation(line: 1528, column: 83, scope: !778)
!781 = !DILocation(line: 1528, column: 105, scope: !778)
!782 = !DILocation(line: 1528, column: 3, scope: !778)
!783 = distinct !DISubprogram(name: "LL_RCC_HSI_IsReady", scope: !618, file: !618, line: 766, type: !615, scopeLine: 767, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !352)
!784 = !DILocation(line: 768, column: 79, scope: !783)
!785 = !DILocation(line: 768, column: 83, scope: !783)
!786 = !DILocation(line: 768, column: 104, scope: !783)
!787 = !DILocation(line: 768, column: 3, scope: !783)
!788 = distinct !DISubprogram(name: "LL_RCC_HSI_Enable", scope: !618, file: !618, line: 746, type: !611, scopeLine: 747, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !352)
!789 = !DILocation(line: 748, column: 75, scope: !788)
!790 = !DILocation(line: 749, column: 1, scope: !788)
!791 = distinct !DISubprogram(name: "stm32_clock_control_on", scope: !2, file: !2, line: 199, type: !189, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !792)
!792 = !{!793, !794, !795}
!793 = !DILocalVariable(name: "dev", arg: 1, scope: !791, file: !2, line: 199, type: !180)
!794 = !DILocalVariable(name: "sub_system", arg: 2, scope: !791, file: !2, line: 200, type: !191)
!795 = !DILocalVariable(name: "pclken", scope: !791, file: !2, line: 202, type: !133)
!796 = !DILocation(line: 199, column: 63, scope: !791)
!797 = !DILocation(line: 200, column: 30, scope: !791)
!798 = !DILocation(line: 202, column: 2, scope: !791)
!799 = !DILocation(line: 202, column: 23, scope: !791)
!800 = !DILocation(line: 202, column: 56, scope: !791)
!801 = !DILocation(line: 204, column: 9, scope: !791)
!802 = !DILocation(line: 206, column: 8, scope: !803)
!803 = distinct !DILexicalBlock(scope: !791, file: !2, line: 206, column: 6)
!804 = !DILocation(line: 206, column: 16, scope: !803)
!805 = !DILocation(line: 206, column: 21, scope: !803)
!806 = !DILocation(line: 206, column: 32, scope: !803)
!807 = !DILocation(line: 206, column: 36, scope: !803)
!808 = !DILocation(line: 206, column: 44, scope: !803)
!809 = !DILocation(line: 206, column: 49, scope: !803)
!810 = !DILocation(line: 0, scope: !803)
!811 = !DILocation(line: 206, column: 61, scope: !803)
!812 = !DILocation(line: 206, column: 6, scope: !791)
!813 = !DILocation(line: 208, column: 3, scope: !814)
!814 = distinct !DILexicalBlock(scope: !803, file: !2, line: 206, column: 67)
!815 = !DILocation(line: 211, column: 28, scope: !791)
!816 = !DILocation(line: 211, column: 36, scope: !791)
!817 = !DILocation(line: 211, column: 26, scope: !791)
!818 = !DILocation(line: 212, column: 8, scope: !791)
!819 = !DILocation(line: 212, column: 16, scope: !791)
!820 = !DILocalVariable(name: "addr", arg: 1, scope: !821, file: !822, line: 45, type: !825)
!821 = distinct !DISubprogram(name: "sys_set_bits", scope: !822, file: !822, line: 45, type: !823, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !828)
!822 = !DIFile(filename: "include/zephyr/arch/common/sys_bitops.h", directory: "/home/sri/zephyrproject/zephyr")
!823 = !DISubroutineType(types: !824)
!824 = !{null, !825, !112}
!825 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_addr_t", file: !826, line: 21, baseType: !827)
!826 = !DIFile(filename: "include/zephyr/sys/sys_io.h", directory: "/home/sri/zephyrproject/zephyr")
!827 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !111, line: 102, baseType: !112)
!828 = !{!820, !829, !830}
!829 = !DILocalVariable(name: "mask", arg: 2, scope: !821, file: !822, line: 45, type: !112)
!830 = !DILocalVariable(name: "temp", scope: !821, file: !822, line: 47, type: !110)
!831 = !DILocation(line: 45, column: 75, scope: !821, inlinedAt: !832)
!832 = distinct !DILocation(line: 211, column: 2, scope: !791)
!833 = !DILocation(line: 45, column: 94, scope: !821, inlinedAt: !832)
!834 = !DILocation(line: 47, column: 2, scope: !821, inlinedAt: !832)
!835 = !DILocation(line: 47, column: 11, scope: !821, inlinedAt: !832)
!836 = !DILocation(line: 47, column: 40, scope: !821, inlinedAt: !832)
!837 = !DILocation(line: 47, column: 19, scope: !821, inlinedAt: !832)
!838 = !DILocation(line: 47, column: 18, scope: !821, inlinedAt: !832)
!839 = !DILocation(line: 49, column: 31, scope: !821, inlinedAt: !832)
!840 = !DILocation(line: 49, column: 38, scope: !821, inlinedAt: !832)
!841 = !DILocation(line: 49, column: 36, scope: !821, inlinedAt: !832)
!842 = !DILocation(line: 49, column: 24, scope: !821, inlinedAt: !832)
!843 = !DILocation(line: 49, column: 3, scope: !821, inlinedAt: !832)
!844 = !DILocation(line: 49, column: 29, scope: !821, inlinedAt: !832)
!845 = !DILocation(line: 50, column: 1, scope: !821, inlinedAt: !832)
!846 = !DILocation(line: 214, column: 2, scope: !791)
!847 = !DILocation(line: 215, column: 1, scope: !791)
!848 = distinct !DISubprogram(name: "stm32_clock_control_off", scope: !2, file: !2, line: 217, type: !189, scopeLine: 219, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !849)
!849 = !{!850, !851, !852}
!850 = !DILocalVariable(name: "dev", arg: 1, scope: !848, file: !2, line: 217, type: !180)
!851 = !DILocalVariable(name: "sub_system", arg: 2, scope: !848, file: !2, line: 218, type: !191)
!852 = !DILocalVariable(name: "pclken", scope: !848, file: !2, line: 220, type: !133)
!853 = !DILocation(line: 217, column: 64, scope: !848)
!854 = !DILocation(line: 218, column: 31, scope: !848)
!855 = !DILocation(line: 220, column: 2, scope: !848)
!856 = !DILocation(line: 220, column: 23, scope: !848)
!857 = !DILocation(line: 220, column: 56, scope: !848)
!858 = !DILocation(line: 222, column: 9, scope: !848)
!859 = !DILocation(line: 224, column: 8, scope: !860)
!860 = distinct !DILexicalBlock(scope: !848, file: !2, line: 224, column: 6)
!861 = !DILocation(line: 224, column: 16, scope: !860)
!862 = !DILocation(line: 224, column: 21, scope: !860)
!863 = !DILocation(line: 224, column: 32, scope: !860)
!864 = !DILocation(line: 224, column: 36, scope: !860)
!865 = !DILocation(line: 224, column: 44, scope: !860)
!866 = !DILocation(line: 224, column: 49, scope: !860)
!867 = !DILocation(line: 0, scope: !860)
!868 = !DILocation(line: 224, column: 61, scope: !860)
!869 = !DILocation(line: 224, column: 6, scope: !848)
!870 = !DILocation(line: 226, column: 3, scope: !871)
!871 = distinct !DILexicalBlock(scope: !860, file: !2, line: 224, column: 67)
!872 = !DILocation(line: 229, column: 30, scope: !848)
!873 = !DILocation(line: 229, column: 38, scope: !848)
!874 = !DILocation(line: 229, column: 28, scope: !848)
!875 = !DILocation(line: 230, column: 10, scope: !848)
!876 = !DILocation(line: 230, column: 18, scope: !848)
!877 = !DILocalVariable(name: "addr", arg: 1, scope: !878, file: !822, line: 52, type: !825)
!878 = distinct !DISubprogram(name: "sys_clear_bits", scope: !822, file: !822, line: 52, type: !823, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !879)
!879 = !{!877, !880, !881}
!880 = !DILocalVariable(name: "mask", arg: 2, scope: !878, file: !822, line: 52, type: !112)
!881 = !DILocalVariable(name: "temp", scope: !878, file: !822, line: 54, type: !110)
!882 = !DILocation(line: 52, column: 77, scope: !878, inlinedAt: !883)
!883 = distinct !DILocation(line: 229, column: 2, scope: !848)
!884 = !DILocation(line: 52, column: 96, scope: !878, inlinedAt: !883)
!885 = !DILocation(line: 54, column: 2, scope: !878, inlinedAt: !883)
!886 = !DILocation(line: 54, column: 11, scope: !878, inlinedAt: !883)
!887 = !DILocation(line: 54, column: 40, scope: !878, inlinedAt: !883)
!888 = !DILocation(line: 54, column: 19, scope: !878, inlinedAt: !883)
!889 = !DILocation(line: 54, column: 18, scope: !878, inlinedAt: !883)
!890 = !DILocation(line: 56, column: 31, scope: !878, inlinedAt: !883)
!891 = !DILocation(line: 56, column: 39, scope: !878, inlinedAt: !883)
!892 = !DILocation(line: 56, column: 38, scope: !878, inlinedAt: !883)
!893 = !DILocation(line: 56, column: 36, scope: !878, inlinedAt: !883)
!894 = !DILocation(line: 56, column: 24, scope: !878, inlinedAt: !883)
!895 = !DILocation(line: 56, column: 3, scope: !878, inlinedAt: !883)
!896 = !DILocation(line: 56, column: 29, scope: !878, inlinedAt: !883)
!897 = !DILocation(line: 57, column: 1, scope: !878, inlinedAt: !883)
!898 = !DILocation(line: 232, column: 2, scope: !848)
!899 = !DILocation(line: 233, column: 1, scope: !848)
!900 = distinct !DISubprogram(name: "stm32_clock_control_get_subsys_rate", scope: !2, file: !2, line: 270, type: !205, scopeLine: 273, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !901)
!901 = !{!902, !903, !904, !905, !906, !907, !908}
!902 = !DILocalVariable(name: "clock", arg: 1, scope: !900, file: !2, line: 270, type: !180)
!903 = !DILocalVariable(name: "sub_system", arg: 2, scope: !900, file: !2, line: 271, type: !191)
!904 = !DILocalVariable(name: "rate", arg: 3, scope: !900, file: !2, line: 272, type: !207)
!905 = !DILocalVariable(name: "pclken", scope: !900, file: !2, line: 274, type: !133)
!906 = !DILocalVariable(name: "ahb_clock", scope: !900, file: !2, line: 281, type: !110)
!907 = !DILocalVariable(name: "apb1_clock", scope: !900, file: !2, line: 282, type: !110)
!908 = !DILocalVariable(name: "apb2_clock", scope: !900, file: !2, line: 287, type: !110)
!909 = !DILocation(line: 270, column: 69, scope: !900)
!910 = !DILocation(line: 271, column: 30, scope: !900)
!911 = !DILocation(line: 272, column: 17, scope: !900)
!912 = !DILocation(line: 274, column: 2, scope: !900)
!913 = !DILocation(line: 274, column: 23, scope: !900)
!914 = !DILocation(line: 274, column: 56, scope: !900)
!915 = !DILocation(line: 281, column: 2, scope: !900)
!916 = !DILocation(line: 281, column: 11, scope: !900)
!917 = !DILocation(line: 281, column: 23, scope: !900)
!918 = !DILocation(line: 282, column: 2, scope: !900)
!919 = !DILocation(line: 282, column: 11, scope: !900)
!920 = !DILocation(line: 282, column: 38, scope: !900)
!921 = !DILocation(line: 282, column: 24, scope: !900)
!922 = !DILocation(line: 287, column: 2, scope: !900)
!923 = !DILocation(line: 287, column: 11, scope: !900)
!924 = !DILocation(line: 287, column: 24, scope: !900)
!925 = !DILocation(line: 298, column: 6, scope: !926)
!926 = distinct !DILexicalBlock(scope: !900, file: !2, line: 298, column: 6)
!927 = !DILocation(line: 298, column: 14, scope: !926)
!928 = !DILocation(line: 298, column: 18, scope: !926)
!929 = !DILocation(line: 298, column: 6, scope: !900)
!930 = !DILocation(line: 301, column: 3, scope: !931)
!931 = distinct !DILexicalBlock(scope: !926, file: !2, line: 298, column: 28)
!932 = !DILocation(line: 305, column: 9, scope: !900)
!933 = !DILocation(line: 307, column: 10, scope: !900)
!934 = !DILocation(line: 307, column: 18, scope: !900)
!935 = !DILocation(line: 307, column: 2, scope: !900)
!936 = !DILocation(line: 315, column: 11, scope: !937)
!937 = distinct !DILexicalBlock(scope: !900, file: !2, line: 307, column: 23)
!938 = !DILocation(line: 315, column: 4, scope: !937)
!939 = !DILocation(line: 315, column: 9, scope: !937)
!940 = !DILocation(line: 316, column: 3, scope: !937)
!941 = !DILocation(line: 326, column: 11, scope: !937)
!942 = !DILocation(line: 326, column: 4, scope: !937)
!943 = !DILocation(line: 326, column: 9, scope: !937)
!944 = !DILocation(line: 327, column: 3, scope: !937)
!945 = !DILocation(line: 330, column: 11, scope: !937)
!946 = !DILocation(line: 330, column: 4, scope: !937)
!947 = !DILocation(line: 330, column: 9, scope: !937)
!948 = !DILocation(line: 331, column: 3, scope: !937)
!949 = !DILocation(line: 341, column: 11, scope: !937)
!950 = !DILocation(line: 341, column: 27, scope: !937)
!951 = !DILocation(line: 341, column: 4, scope: !937)
!952 = !DILocation(line: 341, column: 9, scope: !937)
!953 = !DILocation(line: 342, column: 3, scope: !937)
!954 = !DILocation(line: 346, column: 7, scope: !955)
!955 = distinct !DILexicalBlock(scope: !937, file: !2, line: 346, column: 7)
!956 = !DILocation(line: 346, column: 30, scope: !955)
!957 = !DILocation(line: 346, column: 7, scope: !937)
!958 = !DILocation(line: 347, column: 4, scope: !959)
!959 = distinct !DILexicalBlock(scope: !955, file: !2, line: 346, column: 36)
!960 = !DILocation(line: 349, column: 11, scope: !937)
!961 = !DILocation(line: 349, column: 4, scope: !937)
!962 = !DILocation(line: 349, column: 9, scope: !937)
!963 = !DILocation(line: 350, column: 3, scope: !937)
!964 = !DILocation(line: 388, column: 4, scope: !937)
!965 = !DILocation(line: 388, column: 9, scope: !937)
!966 = !DILocation(line: 389, column: 3, scope: !937)
!967 = !DILocation(line: 393, column: 4, scope: !937)
!968 = !DILocation(line: 393, column: 9, scope: !937)
!969 = !DILocation(line: 394, column: 3, scope: !937)
!970 = !DILocation(line: 398, column: 4, scope: !937)
!971 = !DILocation(line: 398, column: 9, scope: !937)
!972 = !DILocation(line: 399, column: 3, scope: !937)
!973 = !DILocation(line: 417, column: 3, scope: !937)
!974 = !DILocation(line: 420, column: 2, scope: !900)
!975 = !DILocation(line: 421, column: 1, scope: !900)
!976 = distinct !DISubprogram(name: "stm32_clock_control_get_status", scope: !2, file: !2, line: 423, type: !211, scopeLine: 425, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !977)
!977 = !{!978, !979, !980}
!978 = !DILocalVariable(name: "dev", arg: 1, scope: !976, file: !2, line: 423, type: !180)
!979 = !DILocalVariable(name: "sub_system", arg: 2, scope: !976, file: !2, line: 424, type: !191)
!980 = !DILocalVariable(name: "pclken", scope: !976, file: !2, line: 426, type: !133)
!981 = !DILocation(line: 423, column: 86, scope: !976)
!982 = !DILocation(line: 424, column: 32, scope: !976)
!983 = !DILocation(line: 426, column: 2, scope: !976)
!984 = !DILocation(line: 426, column: 23, scope: !976)
!985 = !DILocation(line: 426, column: 55, scope: !976)
!986 = !DILocation(line: 428, column: 9, scope: !976)
!987 = !DILocation(line: 430, column: 8, scope: !988)
!988 = distinct !DILexicalBlock(scope: !976, file: !2, line: 430, column: 6)
!989 = !DILocation(line: 430, column: 16, scope: !988)
!990 = !DILocation(line: 430, column: 21, scope: !988)
!991 = !DILocation(line: 430, column: 32, scope: !988)
!992 = !DILocation(line: 430, column: 36, scope: !988)
!993 = !DILocation(line: 430, column: 44, scope: !988)
!994 = !DILocation(line: 430, column: 49, scope: !988)
!995 = !DILocation(line: 0, scope: !988)
!996 = !DILocation(line: 430, column: 61, scope: !988)
!997 = !DILocation(line: 430, column: 6, scope: !976)
!998 = !DILocation(line: 432, column: 32, scope: !999)
!999 = distinct !DILexicalBlock(scope: !1000, file: !2, line: 432, column: 7)
!1000 = distinct !DILexicalBlock(scope: !988, file: !2, line: 430, column: 67)
!1001 = !DILocation(line: 432, column: 40, scope: !999)
!1002 = !DILocation(line: 432, column: 30, scope: !999)
!1003 = !DILocalVariable(name: "addr", arg: 1, scope: !1004, file: !1005, line: 43, type: !825)
!1004 = distinct !DISubprogram(name: "sys_read32", scope: !1005, file: !1005, line: 43, type: !1006, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1008)
!1005 = !DIFile(filename: "include/zephyr/arch/common/sys_io.h", directory: "/home/sri/zephyrproject/zephyr")
!1006 = !DISubroutineType(types: !1007)
!1007 = !{!110, !825}
!1008 = !{!1003}
!1009 = !DILocation(line: 43, column: 77, scope: !1004, inlinedAt: !1010)
!1010 = distinct !DILocation(line: 432, column: 8, scope: !999)
!1011 = !DILocation(line: 45, column: 31, scope: !1004, inlinedAt: !1010)
!1012 = !DILocation(line: 45, column: 10, scope: !1004, inlinedAt: !1010)
!1013 = !DILocation(line: 45, column: 9, scope: !1004, inlinedAt: !1010)
!1014 = !DILocation(line: 432, column: 47, scope: !999)
!1015 = !DILocation(line: 432, column: 55, scope: !999)
!1016 = !DILocation(line: 432, column: 45, scope: !999)
!1017 = !DILocation(line: 433, column: 10, scope: !999)
!1018 = !DILocation(line: 433, column: 18, scope: !999)
!1019 = !DILocation(line: 433, column: 7, scope: !999)
!1020 = !DILocation(line: 432, column: 7, scope: !1000)
!1021 = !DILocation(line: 434, column: 4, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !999, file: !2, line: 433, column: 23)
!1023 = !DILocation(line: 436, column: 4, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !999, file: !2, line: 435, column: 10)
!1025 = !DILocation(line: 440, column: 21, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !1027, file: !2, line: 440, column: 7)
!1027 = distinct !DILexicalBlock(scope: !988, file: !2, line: 438, column: 9)
!1028 = !DILocation(line: 440, column: 29, scope: !1026)
!1029 = !DILocation(line: 440, column: 7, scope: !1026)
!1030 = !DILocation(line: 440, column: 34, scope: !1026)
!1031 = !DILocation(line: 440, column: 7, scope: !1027)
!1032 = !DILocation(line: 441, column: 4, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !1026, file: !2, line: 440, column: 40)
!1034 = !DILocation(line: 443, column: 4, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !1026, file: !2, line: 442, column: 10)
!1036 = !DILocation(line: 446, column: 1, scope: !976)
!1037 = distinct !DISubprogram(name: "stm32_clock_control_configure", scope: !2, file: !2, line: 235, type: !222, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1038)
!1038 = !{!1039, !1040, !1041, !1042, !1043}
!1039 = !DILocalVariable(name: "dev", arg: 1, scope: !1037, file: !2, line: 235, type: !180)
!1040 = !DILocalVariable(name: "sub_system", arg: 2, scope: !1037, file: !2, line: 236, type: !191)
!1041 = !DILocalVariable(name: "data", arg: 3, scope: !1037, file: !2, line: 237, type: !108)
!1042 = !DILocalVariable(name: "pclken", scope: !1037, file: !2, line: 241, type: !133)
!1043 = !DILocalVariable(name: "err", scope: !1037, file: !2, line: 242, type: !109)
!1044 = !DILocation(line: 235, column: 70, scope: !1037)
!1045 = !DILocation(line: 236, column: 30, scope: !1037)
!1046 = !DILocation(line: 237, column: 13, scope: !1037)
!1047 = !DILocation(line: 241, column: 2, scope: !1037)
!1048 = !DILocation(line: 241, column: 23, scope: !1037)
!1049 = !DILocation(line: 241, column: 56, scope: !1037)
!1050 = !DILocation(line: 242, column: 2, scope: !1037)
!1051 = !DILocation(line: 242, column: 6, scope: !1037)
!1052 = !DILocation(line: 244, column: 9, scope: !1037)
!1053 = !DILocation(line: 245, column: 9, scope: !1037)
!1054 = !DILocation(line: 247, column: 22, scope: !1037)
!1055 = !DILocation(line: 247, column: 30, scope: !1037)
!1056 = !DILocation(line: 247, column: 8, scope: !1037)
!1057 = !DILocation(line: 247, column: 6, scope: !1037)
!1058 = !DILocation(line: 248, column: 6, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1037, file: !2, line: 248, column: 6)
!1060 = !DILocation(line: 248, column: 10, scope: !1059)
!1061 = !DILocation(line: 248, column: 6, scope: !1037)
!1062 = !DILocation(line: 250, column: 10, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1059, file: !2, line: 248, column: 15)
!1064 = !DILocation(line: 250, column: 3, scope: !1063)
!1065 = !DILocation(line: 253, column: 6, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !1037, file: !2, line: 253, column: 6)
!1067 = !DILocation(line: 253, column: 14, scope: !1066)
!1068 = !DILocation(line: 253, column: 18, scope: !1066)
!1069 = !DILocation(line: 253, column: 6, scope: !1037)
!1070 = !DILocation(line: 255, column: 3, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !1066, file: !2, line: 253, column: 27)
!1072 = !DILocation(line: 258, column: 33, scope: !1037)
!1073 = !DILocation(line: 258, column: 41, scope: !1037)
!1074 = !DILocation(line: 258, column: 46, scope: !1037)
!1075 = !DILocation(line: 258, column: 53, scope: !1037)
!1076 = !DILocation(line: 258, column: 28, scope: !1037)
!1077 = !DILocation(line: 259, column: 13, scope: !1037)
!1078 = !DILocation(line: 259, column: 21, scope: !1037)
!1079 = !DILocation(line: 259, column: 26, scope: !1037)
!1080 = !DILocation(line: 259, column: 34, scope: !1037)
!1081 = !DILocation(line: 259, column: 48, scope: !1037)
!1082 = !DILocation(line: 259, column: 56, scope: !1037)
!1083 = !DILocation(line: 259, column: 61, scope: !1037)
!1084 = !DILocation(line: 259, column: 68, scope: !1037)
!1085 = !DILocation(line: 259, column: 42, scope: !1037)
!1086 = !DILocation(line: 52, column: 77, scope: !878, inlinedAt: !1087)
!1087 = distinct !DILocation(line: 258, column: 2, scope: !1037)
!1088 = !DILocation(line: 52, column: 96, scope: !878, inlinedAt: !1087)
!1089 = !DILocation(line: 54, column: 2, scope: !878, inlinedAt: !1087)
!1090 = !DILocation(line: 54, column: 11, scope: !878, inlinedAt: !1087)
!1091 = !DILocation(line: 54, column: 40, scope: !878, inlinedAt: !1087)
!1092 = !DILocation(line: 54, column: 19, scope: !878, inlinedAt: !1087)
!1093 = !DILocation(line: 54, column: 18, scope: !878, inlinedAt: !1087)
!1094 = !DILocation(line: 56, column: 31, scope: !878, inlinedAt: !1087)
!1095 = !DILocation(line: 56, column: 39, scope: !878, inlinedAt: !1087)
!1096 = !DILocation(line: 56, column: 38, scope: !878, inlinedAt: !1087)
!1097 = !DILocation(line: 56, column: 36, scope: !878, inlinedAt: !1087)
!1098 = !DILocation(line: 56, column: 24, scope: !878, inlinedAt: !1087)
!1099 = !DILocation(line: 56, column: 3, scope: !878, inlinedAt: !1087)
!1100 = !DILocation(line: 56, column: 29, scope: !878, inlinedAt: !1087)
!1101 = !DILocation(line: 57, column: 1, scope: !878, inlinedAt: !1087)
!1102 = !DILocation(line: 260, column: 31, scope: !1037)
!1103 = !DILocation(line: 260, column: 39, scope: !1037)
!1104 = !DILocation(line: 260, column: 44, scope: !1037)
!1105 = !DILocation(line: 260, column: 51, scope: !1037)
!1106 = !DILocation(line: 260, column: 26, scope: !1037)
!1107 = !DILocation(line: 261, column: 11, scope: !1037)
!1108 = !DILocation(line: 261, column: 19, scope: !1037)
!1109 = !DILocation(line: 261, column: 24, scope: !1037)
!1110 = !DILocation(line: 261, column: 32, scope: !1037)
!1111 = !DILocation(line: 261, column: 46, scope: !1037)
!1112 = !DILocation(line: 261, column: 54, scope: !1037)
!1113 = !DILocation(line: 261, column: 59, scope: !1037)
!1114 = !DILocation(line: 261, column: 66, scope: !1037)
!1115 = !DILocation(line: 261, column: 40, scope: !1037)
!1116 = !DILocation(line: 45, column: 75, scope: !821, inlinedAt: !1117)
!1117 = distinct !DILocation(line: 260, column: 2, scope: !1037)
!1118 = !DILocation(line: 45, column: 94, scope: !821, inlinedAt: !1117)
!1119 = !DILocation(line: 47, column: 2, scope: !821, inlinedAt: !1117)
!1120 = !DILocation(line: 47, column: 11, scope: !821, inlinedAt: !1117)
!1121 = !DILocation(line: 47, column: 40, scope: !821, inlinedAt: !1117)
!1122 = !DILocation(line: 47, column: 19, scope: !821, inlinedAt: !1117)
!1123 = !DILocation(line: 47, column: 18, scope: !821, inlinedAt: !1117)
!1124 = !DILocation(line: 49, column: 31, scope: !821, inlinedAt: !1117)
!1125 = !DILocation(line: 49, column: 38, scope: !821, inlinedAt: !1117)
!1126 = !DILocation(line: 49, column: 36, scope: !821, inlinedAt: !1117)
!1127 = !DILocation(line: 49, column: 24, scope: !821, inlinedAt: !1117)
!1128 = !DILocation(line: 49, column: 3, scope: !821, inlinedAt: !1117)
!1129 = !DILocation(line: 49, column: 29, scope: !821, inlinedAt: !1117)
!1130 = !DILocation(line: 50, column: 1, scope: !821, inlinedAt: !1117)
!1131 = !DILocation(line: 263, column: 2, scope: !1037)
!1132 = !DILocation(line: 268, column: 1, scope: !1037)
!1133 = distinct !DISubprogram(name: "get_bus_clock", scope: !2, file: !2, line: 74, type: !1134, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1136)
!1134 = !DISubroutineType(types: !1135)
!1135 = !{!110, !110, !110}
!1136 = !{!1137, !1138}
!1137 = !DILocalVariable(name: "clock", arg: 1, scope: !1133, file: !2, line: 74, type: !110)
!1138 = !DILocalVariable(name: "prescaler", arg: 2, scope: !1133, file: !2, line: 74, type: !110)
!1139 = !DILocation(line: 74, column: 40, scope: !1133)
!1140 = !DILocation(line: 74, column: 56, scope: !1133)
!1141 = !DILocation(line: 76, column: 9, scope: !1133)
!1142 = !DILocation(line: 76, column: 17, scope: !1133)
!1143 = !DILocation(line: 76, column: 15, scope: !1133)
!1144 = !DILocation(line: 76, column: 2, scope: !1133)
!1145 = !DISubprogram(name: "get_pllout_frequency", scope: !610, file: !610, line: 42, type: !615, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !352)
!1146 = distinct !DISubprogram(name: "enabled_clock", scope: !2, file: !2, line: 95, type: !1147, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1149)
!1147 = !DISubroutineType(types: !1148)
!1148 = !{!109, !110}
!1149 = !{!1150, !1151}
!1150 = !DILocalVariable(name: "src_clk", arg: 1, scope: !1146, file: !2, line: 95, type: !110)
!1151 = !DILocalVariable(name: "r", scope: !1146, file: !2, line: 97, type: !109)
!1152 = !DILocation(line: 95, column: 35, scope: !1146)
!1153 = !DILocation(line: 97, column: 2, scope: !1146)
!1154 = !DILocation(line: 97, column: 6, scope: !1146)
!1155 = !DILocation(line: 99, column: 10, scope: !1146)
!1156 = !DILocation(line: 99, column: 2, scope: !1146)
!1157 = !DILocation(line: 118, column: 6, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1159, file: !2, line: 117, column: 11)
!1159 = distinct !DILexicalBlock(scope: !1160, file: !2, line: 117, column: 7)
!1160 = distinct !DILexicalBlock(scope: !1146, file: !2, line: 99, column: 19)
!1161 = !DILocation(line: 120, column: 3, scope: !1160)
!1162 = !DILocation(line: 125, column: 6, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1164, file: !2, line: 124, column: 11)
!1164 = distinct !DILexicalBlock(scope: !1160, file: !2, line: 124, column: 7)
!1165 = !DILocation(line: 127, column: 3, scope: !1160)
!1166 = !DILocation(line: 134, column: 3, scope: !1160)
!1167 = !DILocation(line: 139, column: 6, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !1169, file: !2, line: 138, column: 11)
!1169 = distinct !DILexicalBlock(scope: !1160, file: !2, line: 138, column: 7)
!1170 = !DILocation(line: 141, column: 3, scope: !1160)
!1171 = !DILocation(line: 146, column: 6, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1173, file: !2, line: 145, column: 11)
!1173 = distinct !DILexicalBlock(scope: !1160, file: !2, line: 145, column: 7)
!1174 = !DILocation(line: 148, column: 3, scope: !1160)
!1175 = !DILocation(line: 162, column: 3, scope: !1160)
!1176 = !DILocation(line: 193, column: 3, scope: !1160)
!1177 = !DILocation(line: 196, column: 9, scope: !1146)
!1178 = !DILocation(line: 196, column: 2, scope: !1146)
!1179 = !DILocation(line: 197, column: 1, scope: !1146)
