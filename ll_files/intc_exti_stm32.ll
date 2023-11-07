; ModuleID = '../bc_files/intc_exti_stm32.bc'
source_filename = "/home/sri/zephyrproject/zephyr/drivers/interrupt_controller/intc_exti_stm32.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-arm-none-eabi"

%struct.device_state = type { i8, i8 }
%struct.stm32_exti_data = type { [16 x %struct.__exti_cb] }
%struct.__exti_cb = type { ptr, ptr }
%struct.device = type { ptr, ptr, ptr, ptr, ptr }
%struct.init_entry = type { %union.init_function, ptr }
%union.init_function = type { ptr }
%struct.stm32_exti_range = type { i8, i8 }
%struct._isr_list = type { i32, i32, ptr, ptr }
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
%struct.EXTI_TypeDef = type { i32, i32, i32, i32, i32, i32 }

@exti_irq_table = internal global [16 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 1, !dbg !0
@.str = private unnamed_addr constant [30 x i8] c"interrupt-controller@40010400\00", align 1, !dbg !153
@__devstate_dts_ord_49 = internal global %struct.device_state zeroinitializer, section ".z_devstate", align 1, !dbg !217
@exti_data = internal global %struct.stm32_exti_data zeroinitializer, align 4, !dbg !201
@__device_dts_ord_49 = hidden constant %struct.device { ptr @.str, ptr null, ptr null, ptr @__devstate_dts_ord_49, ptr @exti_data }, section "._device.static.1_40_", align 4, !dbg !160
@__init___device_dts_ord_49 = internal constant %struct.init_entry { %union.init_function { ptr @stm32_exti_init }, ptr @__device_dts_ord_49 }, section ".z_init_PRE_KERNEL_140_00049_", align 4, !dbg !182
@stm32_exti_init.line_range_0 = internal constant %struct.stm32_exti_range { i8 0, i8 2 }, align 1, !dbg !219
@stm32_exti_init.__isr_stm32_exti_isr_irq_0 = internal global %struct._isr_list { i32 5, i32 0, ptr @stm32_exti_isr, ptr @stm32_exti_init.line_range_0 }, section ".intList", align 4, !dbg !228
@stm32_exti_init.line_range_1 = internal constant %struct.stm32_exti_range { i8 2, i8 2 }, align 1, !dbg !238
@stm32_exti_init.__isr_stm32_exti_isr_irq_1 = internal global %struct._isr_list { i32 6, i32 0, ptr @stm32_exti_isr, ptr @stm32_exti_init.line_range_1 }, section ".intList", align 4, !dbg !240
@stm32_exti_init.line_range_2 = internal constant %struct.stm32_exti_range { i8 4, i8 12 }, align 1, !dbg !242
@stm32_exti_init.__isr_stm32_exti_isr_irq_2 = internal global %struct._isr_list { i32 7, i32 0, ptr @stm32_exti_isr, ptr @stm32_exti_init.line_range_2 }, section ".intList", align 4, !dbg !244
@llvm.used = appending global [5 x ptr] [ptr @__device_dts_ord_49, ptr @__init___device_dts_ord_49, ptr @stm32_exti_init.__isr_stm32_exti_isr_irq_0, ptr @stm32_exti_init.__isr_stm32_exti_isr_irq_1, ptr @stm32_exti_init.__isr_stm32_exti_isr_irq_2], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @z_impl_device_is_ready(ptr noundef %0) #0 !dbg !257 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !260, metadata !DIExpression()), !dbg !261
  %3 = load ptr, ptr %2, align 4, !dbg !262
  %4 = call zeroext i1 @z_device_is_ready(ptr noundef %3), !dbg !263
  ret i1 %4, !dbg !264
}

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_k_object_access_grant(ptr noundef %0, ptr noundef %1) #0 !dbg !265 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !381, metadata !DIExpression()), !dbg !382
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !383, metadata !DIExpression()), !dbg !384
  %5 = load ptr, ptr %3, align 4, !dbg !385
  %6 = load ptr, ptr %4, align 4, !dbg !386
  ret void, !dbg !387
}

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_k_object_release(ptr noundef %0) #0 !dbg !388 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !391, metadata !DIExpression()), !dbg !392
  %3 = load ptr, ptr %2, align 4, !dbg !393
  ret void, !dbg !394
}

; Function Attrs: noinline nounwind optnone
define internal ptr @z_impl_k_object_alloc(i8 noundef zeroext %0) #0 !dbg !395 {
  %2 = alloca i8, align 1
  store i8 %0, ptr %2, align 1
  call void @llvm.dbg.declare(metadata ptr %2, metadata !398, metadata !DIExpression()), !dbg !399
  %3 = load i8, ptr %2, align 1, !dbg !400
  ret ptr null, !dbg !401
}

; Function Attrs: noinline nounwind optnone
define internal ptr @z_impl_k_object_alloc_size(i8 noundef zeroext %0, i32 noundef %1) #0 !dbg !402 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8 %0, ptr %3, align 1
  call void @llvm.dbg.declare(metadata ptr %3, metadata !405, metadata !DIExpression()), !dbg !406
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !407, metadata !DIExpression()), !dbg !408
  %5 = load i8, ptr %3, align 1, !dbg !409
  %6 = load i32, ptr %4, align 4, !dbg !410
  ret ptr null, !dbg !411
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_thread_timeout_expires_ticks(ptr noundef %0) #0 !dbg !412 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !419, metadata !DIExpression()), !dbg !420
  %3 = load ptr, ptr %2, align 4, !dbg !421
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !422
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !423
  %6 = call i64 @z_timeout_expires(ptr noundef %5), !dbg !424
  ret i64 %6, !dbg !425
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_thread_timeout_remaining_ticks(ptr noundef %0) #0 !dbg !426 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !427, metadata !DIExpression()), !dbg !428
  %3 = load ptr, ptr %2, align 4, !dbg !429
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !430
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !431
  %6 = call i64 @z_timeout_remaining(ptr noundef %5), !dbg !432
  ret i64 %6, !dbg !433
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_timer_expires_ticks(ptr noundef %0) #0 !dbg !434 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !456, metadata !DIExpression()), !dbg !457
  %3 = load ptr, ptr %2, align 4, !dbg !458
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !459
  %5 = call i64 @z_timeout_expires(ptr noundef %4), !dbg !460
  ret i64 %5, !dbg !461
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_timer_remaining_ticks(ptr noundef %0) #0 !dbg !462 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !463, metadata !DIExpression()), !dbg !464
  %3 = load ptr, ptr %2, align 4, !dbg !465
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !466
  %5 = call i64 @z_timeout_remaining(ptr noundef %4), !dbg !467
  ret i64 %5, !dbg !468
}

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_k_timer_user_data_set(ptr noundef %0, ptr noundef %1) #0 !dbg !469 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !472, metadata !DIExpression()), !dbg !473
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !474, metadata !DIExpression()), !dbg !475
  %5 = load ptr, ptr %4, align 4, !dbg !476
  %6 = load ptr, ptr %3, align 4, !dbg !477
  %7 = getelementptr inbounds %struct.k_timer, ptr %6, i32 0, i32 6, !dbg !478
  store ptr %5, ptr %7, align 4, !dbg !479
  ret void, !dbg !480
}

; Function Attrs: noinline nounwind optnone
define internal ptr @z_impl_k_timer_user_data_get(ptr noundef %0) #0 !dbg !481 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !484, metadata !DIExpression()), !dbg !485
  %3 = load ptr, ptr %2, align 4, !dbg !486
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 6, !dbg !487
  %5 = load ptr, ptr %4, align 4, !dbg !487
  ret ptr %5, !dbg !488
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_queue_is_empty(ptr noundef %0) #0 !dbg !489 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !510, metadata !DIExpression()), !dbg !511
  %3 = load ptr, ptr %2, align 4, !dbg !512
  %4 = getelementptr inbounds %struct.k_queue, ptr %3, i32 0, i32 0, !dbg !513
  %5 = call zeroext i1 @sys_sflist_is_empty(ptr noundef %4), !dbg !514
  %6 = zext i1 %5 to i32, !dbg !515
  ret i32 %6, !dbg !516
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_sem_count_get(ptr noundef %0) #0 !dbg !517 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !526, metadata !DIExpression()), !dbg !527
  %3 = load ptr, ptr %2, align 4, !dbg !528
  %4 = getelementptr inbounds %struct.k_sem, ptr %3, i32 0, i32 1, !dbg !529
  %5 = load i32, ptr %4, align 4, !dbg !529
  ret i32 %5, !dbg !530
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_msgq_num_free_get(ptr noundef %0) #0 !dbg !531 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !548, metadata !DIExpression()), !dbg !549
  %3 = load ptr, ptr %2, align 4, !dbg !550
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 3, !dbg !551
  %5 = load i32, ptr %4, align 4, !dbg !551
  %6 = load ptr, ptr %2, align 4, !dbg !552
  %7 = getelementptr inbounds %struct.k_msgq, ptr %6, i32 0, i32 8, !dbg !553
  %8 = load i32, ptr %7, align 4, !dbg !553
  %9 = sub i32 %5, %8, !dbg !554
  ret i32 %9, !dbg !555
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_msgq_num_used_get(ptr noundef %0) #0 !dbg !556 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !557, metadata !DIExpression()), !dbg !558
  %3 = load ptr, ptr %2, align 4, !dbg !559
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 8, !dbg !560
  %5 = load i32, ptr %4, align 4, !dbg !560
  ret i32 %5, !dbg !561
}

; Function Attrs: noinline nounwind optnone
define hidden void @stm32_exti_enable(i32 noundef %0) #0 !dbg !562 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !565, metadata !DIExpression()), !dbg !566
  call void @llvm.dbg.declare(metadata ptr %3, metadata !567, metadata !DIExpression()), !dbg !568
  store i32 0, ptr %3, align 4, !dbg !568
  %4 = load i32, ptr %2, align 4, !dbg !569
  %5 = icmp sge i32 %4, 16, !dbg !571
  br i1 %5, label %6, label %7, !dbg !572

6:                                                ; preds = %1
  br label %7, !dbg !573

7:                                                ; preds = %6, %1
  %8 = load i32, ptr %2, align 4, !dbg !575
  %9 = getelementptr inbounds [16 x i8], ptr @exti_irq_table, i32 0, i32 %8, !dbg !576
  %10 = load i8, ptr %9, align 1, !dbg !576
  %11 = sext i8 %10 to i32, !dbg !576
  store i32 %11, ptr %3, align 4, !dbg !577
  %12 = load i32, ptr %3, align 4, !dbg !578
  %13 = icmp eq i32 %12, 255, !dbg !580
  br i1 %13, label %14, label %15, !dbg !581

14:                                               ; preds = %7
  br label %15, !dbg !582

15:                                               ; preds = %14, %7
  %16 = load i32, ptr %2, align 4, !dbg !584
  %17 = shl i32 1, %16, !dbg !585
  call void @LL_EXTI_EnableIT_0_31(i32 noundef %17), !dbg !586
  %18 = load i32, ptr %3, align 4, !dbg !587
  call void @arch_irq_enable(i32 noundef %18), !dbg !588
  ret void, !dbg !589
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone
define internal void @LL_EXTI_EnableIT_0_31(i32 noundef %0) #0 !dbg !590 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !594, metadata !DIExpression()), !dbg !595
  %3 = load i32, ptr %2, align 4, !dbg !596
  %4 = load volatile i32, ptr inttoptr (i32 1073808384 to ptr), align 4, !dbg !597
  %5 = or i32 %4, %3, !dbg !597
  store volatile i32 %5, ptr inttoptr (i32 1073808384 to ptr), align 4, !dbg !597
  ret void, !dbg !598
}

declare void @arch_irq_enable(i32 noundef) #2

; Function Attrs: noinline nounwind optnone
define hidden void @stm32_exti_disable(i32 noundef %0) #0 !dbg !599 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !600, metadata !DIExpression()), !dbg !601
  call void @z_stm32_hsem_lock(i32 noundef 0, i32 noundef 1048576), !dbg !602
  %3 = load i32, ptr %2, align 4, !dbg !603
  %4 = icmp slt i32 %3, 32, !dbg !605
  br i1 %4, label %5, label %8, !dbg !606

5:                                                ; preds = %1
  %6 = load i32, ptr %2, align 4, !dbg !607
  %7 = shl i32 1, %6, !dbg !609
  call void @LL_EXTI_DisableIT_0_31(i32 noundef %7), !dbg !610
  br label %9, !dbg !611

8:                                                ; preds = %1
  br label %9

9:                                                ; preds = %8, %5
  call void @z_stm32_hsem_unlock(i32 noundef 0), !dbg !612
  ret void, !dbg !613
}

; Function Attrs: noinline nounwind optnone
define internal void @z_stm32_hsem_lock(i32 noundef %0, i32 noundef %1) #0 !dbg !614 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !618, metadata !DIExpression()), !dbg !619
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !620, metadata !DIExpression()), !dbg !621
  ret void, !dbg !622
}

; Function Attrs: noinline nounwind optnone
define internal void @LL_EXTI_DisableIT_0_31(i32 noundef %0) #0 !dbg !623 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !624, metadata !DIExpression()), !dbg !625
  %3 = load i32, ptr %2, align 4, !dbg !626
  %4 = xor i32 %3, -1, !dbg !627
  %5 = load volatile i32, ptr inttoptr (i32 1073808384 to ptr), align 4, !dbg !628
  %6 = and i32 %5, %4, !dbg !628
  store volatile i32 %6, ptr inttoptr (i32 1073808384 to ptr), align 4, !dbg !628
  ret void, !dbg !629
}

; Function Attrs: noinline nounwind optnone
define internal void @z_stm32_hsem_unlock(i32 noundef %0) #0 !dbg !630 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !631, metadata !DIExpression()), !dbg !632
  ret void, !dbg !633
}

; Function Attrs: noinline nounwind optnone
define hidden void @stm32_exti_trigger(i32 noundef %0, i32 noundef %1) #0 !dbg !634 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !637, metadata !DIExpression()), !dbg !638
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !639, metadata !DIExpression()), !dbg !640
  %5 = load i32, ptr %3, align 4, !dbg !641
  %6 = icmp sge i32 %5, 32, !dbg !643
  br i1 %6, label %7, label %8, !dbg !644

7:                                                ; preds = %2
  br label %8, !dbg !645

8:                                                ; preds = %7, %2
  call void @z_stm32_hsem_lock(i32 noundef 0, i32 noundef 1048576), !dbg !647
  %9 = load i32, ptr %4, align 4, !dbg !648
  switch i32 %9, label %30 [
    i32 0, label %10
    i32 1, label %15
    i32 2, label %20
    i32 3, label %25
  ], !dbg !649

10:                                               ; preds = %8
  %11 = load i32, ptr %3, align 4, !dbg !650
  %12 = shl i32 1, %11, !dbg !652
  call void @LL_EXTI_DisableRisingTrig_0_31(i32 noundef %12), !dbg !653
  %13 = load i32, ptr %3, align 4, !dbg !654
  %14 = shl i32 1, %13, !dbg !655
  call void @LL_EXTI_DisableFallingTrig_0_31(i32 noundef %14), !dbg !656
  br label %31, !dbg !657

15:                                               ; preds = %8
  %16 = load i32, ptr %3, align 4, !dbg !658
  %17 = shl i32 1, %16, !dbg !659
  call void @LL_EXTI_EnableRisingTrig_0_31(i32 noundef %17), !dbg !660
  %18 = load i32, ptr %3, align 4, !dbg !661
  %19 = shl i32 1, %18, !dbg !662
  call void @LL_EXTI_DisableFallingTrig_0_31(i32 noundef %19), !dbg !663
  br label %31, !dbg !664

20:                                               ; preds = %8
  %21 = load i32, ptr %3, align 4, !dbg !665
  %22 = shl i32 1, %21, !dbg !666
  call void @LL_EXTI_EnableFallingTrig_0_31(i32 noundef %22), !dbg !667
  %23 = load i32, ptr %3, align 4, !dbg !668
  %24 = shl i32 1, %23, !dbg !669
  call void @LL_EXTI_DisableRisingTrig_0_31(i32 noundef %24), !dbg !670
  br label %31, !dbg !671

25:                                               ; preds = %8
  %26 = load i32, ptr %3, align 4, !dbg !672
  %27 = shl i32 1, %26, !dbg !673
  call void @LL_EXTI_EnableRisingTrig_0_31(i32 noundef %27), !dbg !674
  %28 = load i32, ptr %3, align 4, !dbg !675
  %29 = shl i32 1, %28, !dbg !676
  call void @LL_EXTI_EnableFallingTrig_0_31(i32 noundef %29), !dbg !677
  br label %31, !dbg !678

30:                                               ; preds = %8
  br label %31, !dbg !679

31:                                               ; preds = %30, %25, %20, %15, %10
  call void @z_stm32_hsem_unlock(i32 noundef 0), !dbg !680
  ret void, !dbg !681
}

; Function Attrs: noinline nounwind optnone
define internal void @LL_EXTI_DisableRisingTrig_0_31(i32 noundef %0) #0 !dbg !682 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !683, metadata !DIExpression()), !dbg !684
  %3 = load i32, ptr %2, align 4, !dbg !685
  %4 = xor i32 %3, -1, !dbg !686
  %5 = load volatile i32, ptr getelementptr inbounds (%struct.EXTI_TypeDef, ptr inttoptr (i32 1073808384 to ptr), i32 0, i32 2), align 4, !dbg !687
  %6 = and i32 %5, %4, !dbg !687
  store volatile i32 %6, ptr getelementptr inbounds (%struct.EXTI_TypeDef, ptr inttoptr (i32 1073808384 to ptr), i32 0, i32 2), align 4, !dbg !687
  ret void, !dbg !688
}

; Function Attrs: noinline nounwind optnone
define internal void @LL_EXTI_DisableFallingTrig_0_31(i32 noundef %0) #0 !dbg !689 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !690, metadata !DIExpression()), !dbg !691
  %3 = load i32, ptr %2, align 4, !dbg !692
  %4 = xor i32 %3, -1, !dbg !693
  %5 = load volatile i32, ptr getelementptr inbounds (%struct.EXTI_TypeDef, ptr inttoptr (i32 1073808384 to ptr), i32 0, i32 3), align 4, !dbg !694
  %6 = and i32 %5, %4, !dbg !694
  store volatile i32 %6, ptr getelementptr inbounds (%struct.EXTI_TypeDef, ptr inttoptr (i32 1073808384 to ptr), i32 0, i32 3), align 4, !dbg !694
  ret void, !dbg !695
}

; Function Attrs: noinline nounwind optnone
define internal void @LL_EXTI_EnableRisingTrig_0_31(i32 noundef %0) #0 !dbg !696 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !697, metadata !DIExpression()), !dbg !698
  %3 = load i32, ptr %2, align 4, !dbg !699
  %4 = load volatile i32, ptr getelementptr inbounds (%struct.EXTI_TypeDef, ptr inttoptr (i32 1073808384 to ptr), i32 0, i32 2), align 4, !dbg !700
  %5 = or i32 %4, %3, !dbg !700
  store volatile i32 %5, ptr getelementptr inbounds (%struct.EXTI_TypeDef, ptr inttoptr (i32 1073808384 to ptr), i32 0, i32 2), align 4, !dbg !700
  ret void, !dbg !701
}

; Function Attrs: noinline nounwind optnone
define internal void @LL_EXTI_EnableFallingTrig_0_31(i32 noundef %0) #0 !dbg !702 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !703, metadata !DIExpression()), !dbg !704
  %3 = load i32, ptr %2, align 4, !dbg !705
  %4 = load volatile i32, ptr getelementptr inbounds (%struct.EXTI_TypeDef, ptr inttoptr (i32 1073808384 to ptr), i32 0, i32 3), align 4, !dbg !706
  %5 = or i32 %4, %3, !dbg !706
  store volatile i32 %5, ptr getelementptr inbounds (%struct.EXTI_TypeDef, ptr inttoptr (i32 1073808384 to ptr), i32 0, i32 3), align 4, !dbg !706
  ret void, !dbg !707
}

; Function Attrs: noinline nounwind optnone
define internal i32 @stm32_exti_init(ptr noundef %0) #0 !dbg !221 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !708, metadata !DIExpression()), !dbg !709
  %3 = load ptr, ptr %2, align 4, !dbg !710
  %4 = load i8, ptr @stm32_exti_init.line_range_0, align 1, !dbg !711
  %5 = load i8, ptr getelementptr inbounds (%struct.stm32_exti_range, ptr @stm32_exti_init.line_range_0, i32 0, i32 1), align 1, !dbg !712
  call void @stm32_fill_irq_table(i8 noundef signext %4, i8 noundef signext %5, i32 noundef 5), !dbg !713
  call void @z_arm_irq_priority_set(i32 noundef 5, i32 noundef 0, i32 noundef 0), !dbg !714
  %6 = load i8, ptr @stm32_exti_init.line_range_1, align 1, !dbg !716
  %7 = load i8, ptr getelementptr inbounds (%struct.stm32_exti_range, ptr @stm32_exti_init.line_range_1, i32 0, i32 1), align 1, !dbg !717
  call void @stm32_fill_irq_table(i8 noundef signext %6, i8 noundef signext %7, i32 noundef 6), !dbg !718
  call void @z_arm_irq_priority_set(i32 noundef 6, i32 noundef 0, i32 noundef 0), !dbg !719
  %8 = load i8, ptr @stm32_exti_init.line_range_2, align 1, !dbg !721
  %9 = load i8, ptr getelementptr inbounds (%struct.stm32_exti_range, ptr @stm32_exti_init.line_range_2, i32 0, i32 1), align 1, !dbg !722
  call void @stm32_fill_irq_table(i8 noundef signext %8, i8 noundef signext %9, i32 noundef 7), !dbg !723
  call void @z_arm_irq_priority_set(i32 noundef 7, i32 noundef 0, i32 noundef 0), !dbg !724
  ret i32 0, !dbg !726
}

; Function Attrs: noinline nounwind optnone
define hidden i32 @stm32_exti_set_callback(i32 noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !727 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  store i32 %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !730, metadata !DIExpression()), !dbg !731
  store ptr %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !732, metadata !DIExpression()), !dbg !733
  store ptr %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !734, metadata !DIExpression()), !dbg !735
  call void @llvm.dbg.declare(metadata ptr %8, metadata !736, metadata !DIExpression()), !dbg !738
  store ptr @__device_dts_ord_49, ptr %8, align 4, !dbg !738
  call void @llvm.dbg.declare(metadata ptr %9, metadata !739, metadata !DIExpression()), !dbg !741
  %10 = load ptr, ptr getelementptr inbounds (%struct.device, ptr @__device_dts_ord_49, i32 0, i32 4), align 4, !dbg !742
  store ptr %10, ptr %9, align 4, !dbg !741
  %11 = load ptr, ptr %9, align 4, !dbg !743
  %12 = getelementptr inbounds %struct.stm32_exti_data, ptr %11, i32 0, i32 0, !dbg !745
  %13 = load i32, ptr %5, align 4, !dbg !746
  %14 = getelementptr inbounds [16 x %struct.__exti_cb], ptr %12, i32 0, i32 %13, !dbg !743
  %15 = getelementptr inbounds %struct.__exti_cb, ptr %14, i32 0, i32 0, !dbg !747
  %16 = load ptr, ptr %15, align 4, !dbg !747
  %17 = load ptr, ptr %6, align 4, !dbg !748
  %18 = icmp eq ptr %16, %17, !dbg !749
  br i1 %18, label %19, label %29, !dbg !750

19:                                               ; preds = %3
  %20 = load ptr, ptr %9, align 4, !dbg !751
  %21 = getelementptr inbounds %struct.stm32_exti_data, ptr %20, i32 0, i32 0, !dbg !752
  %22 = load i32, ptr %5, align 4, !dbg !753
  %23 = getelementptr inbounds [16 x %struct.__exti_cb], ptr %21, i32 0, i32 %22, !dbg !751
  %24 = getelementptr inbounds %struct.__exti_cb, ptr %23, i32 0, i32 1, !dbg !754
  %25 = load ptr, ptr %24, align 4, !dbg !754
  %26 = load ptr, ptr %7, align 4, !dbg !755
  %27 = icmp eq ptr %25, %26, !dbg !756
  br i1 %27, label %28, label %29, !dbg !757

28:                                               ; preds = %19
  store i32 0, ptr %4, align 4, !dbg !758
  br label %51, !dbg !758

29:                                               ; preds = %19, %3
  %30 = load ptr, ptr %9, align 4, !dbg !760
  %31 = getelementptr inbounds %struct.stm32_exti_data, ptr %30, i32 0, i32 0, !dbg !762
  %32 = load i32, ptr %5, align 4, !dbg !763
  %33 = getelementptr inbounds [16 x %struct.__exti_cb], ptr %31, i32 0, i32 %32, !dbg !760
  %34 = getelementptr inbounds %struct.__exti_cb, ptr %33, i32 0, i32 0, !dbg !764
  %35 = load ptr, ptr %34, align 4, !dbg !764
  %36 = icmp ne ptr %35, null, !dbg !765
  br i1 %36, label %37, label %38, !dbg !766

37:                                               ; preds = %29
  store i32 -16, ptr %4, align 4, !dbg !767
  br label %51, !dbg !767

38:                                               ; preds = %29
  %39 = load ptr, ptr %6, align 4, !dbg !769
  %40 = load ptr, ptr %9, align 4, !dbg !770
  %41 = getelementptr inbounds %struct.stm32_exti_data, ptr %40, i32 0, i32 0, !dbg !771
  %42 = load i32, ptr %5, align 4, !dbg !772
  %43 = getelementptr inbounds [16 x %struct.__exti_cb], ptr %41, i32 0, i32 %42, !dbg !770
  %44 = getelementptr inbounds %struct.__exti_cb, ptr %43, i32 0, i32 0, !dbg !773
  store ptr %39, ptr %44, align 4, !dbg !774
  %45 = load ptr, ptr %7, align 4, !dbg !775
  %46 = load ptr, ptr %9, align 4, !dbg !776
  %47 = getelementptr inbounds %struct.stm32_exti_data, ptr %46, i32 0, i32 0, !dbg !777
  %48 = load i32, ptr %5, align 4, !dbg !778
  %49 = getelementptr inbounds [16 x %struct.__exti_cb], ptr %47, i32 0, i32 %48, !dbg !776
  %50 = getelementptr inbounds %struct.__exti_cb, ptr %49, i32 0, i32 1, !dbg !779
  store ptr %45, ptr %50, align 4, !dbg !780
  store i32 0, ptr %4, align 4, !dbg !781
  br label %51, !dbg !781

51:                                               ; preds = %38, %37, %28
  %52 = load i32, ptr %4, align 4, !dbg !782
  ret i32 %52, !dbg !782
}

; Function Attrs: noinline nounwind optnone
define hidden void @stm32_exti_unset_callback(i32 noundef %0) #0 !dbg !783 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !784, metadata !DIExpression()), !dbg !785
  call void @llvm.dbg.declare(metadata ptr %3, metadata !786, metadata !DIExpression()), !dbg !787
  store ptr @__device_dts_ord_49, ptr %3, align 4, !dbg !787
  call void @llvm.dbg.declare(metadata ptr %4, metadata !788, metadata !DIExpression()), !dbg !789
  %5 = load ptr, ptr getelementptr inbounds (%struct.device, ptr @__device_dts_ord_49, i32 0, i32 4), align 4, !dbg !790
  store ptr %5, ptr %4, align 4, !dbg !789
  %6 = load ptr, ptr %4, align 4, !dbg !791
  %7 = getelementptr inbounds %struct.stm32_exti_data, ptr %6, i32 0, i32 0, !dbg !792
  %8 = load i32, ptr %2, align 4, !dbg !793
  %9 = getelementptr inbounds [16 x %struct.__exti_cb], ptr %7, i32 0, i32 %8, !dbg !791
  %10 = getelementptr inbounds %struct.__exti_cb, ptr %9, i32 0, i32 0, !dbg !794
  store ptr null, ptr %10, align 4, !dbg !795
  %11 = load ptr, ptr %4, align 4, !dbg !796
  %12 = getelementptr inbounds %struct.stm32_exti_data, ptr %11, i32 0, i32 0, !dbg !797
  %13 = load i32, ptr %2, align 4, !dbg !798
  %14 = getelementptr inbounds [16 x %struct.__exti_cb], ptr %12, i32 0, i32 %13, !dbg !796
  %15 = getelementptr inbounds %struct.__exti_cb, ptr %14, i32 0, i32 1, !dbg !799
  store ptr null, ptr %15, align 4, !dbg !800
  ret void, !dbg !801
}

declare zeroext i1 @z_device_is_ready(ptr noundef) #2

declare i64 @z_timeout_expires(ptr noundef) #2

declare i64 @z_timeout_remaining(ptr noundef) #2

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @sys_sflist_is_empty(ptr noundef %0) #0 !dbg !802 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !806, metadata !DIExpression()), !dbg !807
  %3 = load ptr, ptr %2, align 4, !dbg !808
  %4 = call ptr @sys_sflist_peek_head(ptr noundef %3), !dbg !809
  %5 = icmp eq ptr %4, null, !dbg !810
  ret i1 %5, !dbg !811
}

; Function Attrs: noinline nounwind optnone
define internal ptr @sys_sflist_peek_head(ptr noundef %0) #0 !dbg !812 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !815, metadata !DIExpression()), !dbg !816
  %3 = load ptr, ptr %2, align 4, !dbg !817
  %4 = getelementptr inbounds %struct._sflist, ptr %3, i32 0, i32 0, !dbg !818
  %5 = load ptr, ptr %4, align 4, !dbg !818
  ret ptr %5, !dbg !819
}

; Function Attrs: noinline nounwind optnone
define internal void @stm32_fill_irq_table(i8 noundef signext %0, i8 noundef signext %1, i32 noundef %2) #0 !dbg !820 {
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8 %0, ptr %4, align 1
  call void @llvm.dbg.declare(metadata ptr %4, metadata !823, metadata !DIExpression()), !dbg !824
  store i8 %1, ptr %5, align 1
  call void @llvm.dbg.declare(metadata ptr %5, metadata !825, metadata !DIExpression()), !dbg !826
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !827, metadata !DIExpression()), !dbg !828
  call void @llvm.dbg.declare(metadata ptr %7, metadata !829, metadata !DIExpression()), !dbg !831
  store i32 0, ptr %7, align 4, !dbg !831
  br label %8, !dbg !832

8:                                                ; preds = %21, %3
  %9 = load i32, ptr %7, align 4, !dbg !833
  %10 = load i8, ptr %5, align 1, !dbg !835
  %11 = sext i8 %10 to i32, !dbg !835
  %12 = icmp slt i32 %9, %11, !dbg !836
  br i1 %12, label %13, label %24, !dbg !837

13:                                               ; preds = %8
  %14 = load i32, ptr %6, align 4, !dbg !838
  %15 = trunc i32 %14 to i8, !dbg !838
  %16 = load i8, ptr %4, align 1, !dbg !840
  %17 = sext i8 %16 to i32, !dbg !840
  %18 = load i32, ptr %7, align 4, !dbg !841
  %19 = add nsw i32 %17, %18, !dbg !842
  %20 = getelementptr inbounds [16 x i8], ptr @exti_irq_table, i32 0, i32 %19, !dbg !843
  store i8 %15, ptr %20, align 1, !dbg !844
  br label %21, !dbg !845

21:                                               ; preds = %13
  %22 = load i32, ptr %7, align 4, !dbg !846
  %23 = add nsw i32 %22, 1, !dbg !846
  store i32 %23, ptr %7, align 4, !dbg !846
  br label %8, !dbg !847, !llvm.loop !848

24:                                               ; preds = %8
  ret void, !dbg !850
}

; Function Attrs: noinline nounwind optnone
define internal void @stm32_exti_isr(ptr noundef %0) #0 !dbg !851 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !852, metadata !DIExpression()), !dbg !853
  call void @llvm.dbg.declare(metadata ptr %3, metadata !854, metadata !DIExpression()), !dbg !855
  store ptr @__device_dts_ord_49, ptr %3, align 4, !dbg !855
  call void @llvm.dbg.declare(metadata ptr %4, metadata !856, metadata !DIExpression()), !dbg !857
  %8 = load ptr, ptr %3, align 4, !dbg !858
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 4, !dbg !859
  %10 = load ptr, ptr %9, align 4, !dbg !859
  store ptr %10, ptr %4, align 4, !dbg !857
  call void @llvm.dbg.declare(metadata ptr %5, metadata !860, metadata !DIExpression()), !dbg !862
  %11 = load ptr, ptr %2, align 4, !dbg !863
  store ptr %11, ptr %5, align 4, !dbg !862
  call void @llvm.dbg.declare(metadata ptr %6, metadata !864, metadata !DIExpression()), !dbg !865
  call void @llvm.dbg.declare(metadata ptr %7, metadata !866, metadata !DIExpression()), !dbg !868
  store i8 0, ptr %7, align 1, !dbg !868
  br label %12, !dbg !869

12:                                               ; preds = %56, %1
  %13 = load i8, ptr %7, align 1, !dbg !870
  %14 = zext i8 %13 to i32, !dbg !870
  %15 = load ptr, ptr %5, align 4, !dbg !872
  %16 = getelementptr inbounds %struct.stm32_exti_range, ptr %15, i32 0, i32 1, !dbg !873
  %17 = load i8, ptr %16, align 1, !dbg !873
  %18 = zext i8 %17 to i32, !dbg !872
  %19 = icmp sle i32 %14, %18, !dbg !874
  br i1 %19, label %20, label %59, !dbg !875

20:                                               ; preds = %12
  %21 = load ptr, ptr %5, align 4, !dbg !876
  %22 = getelementptr inbounds %struct.stm32_exti_range, ptr %21, i32 0, i32 0, !dbg !878
  %23 = load i8, ptr %22, align 1, !dbg !878
  %24 = zext i8 %23 to i32, !dbg !876
  %25 = load i8, ptr %7, align 1, !dbg !879
  %26 = zext i8 %25 to i32, !dbg !879
  %27 = add nsw i32 %24, %26, !dbg !880
  store i32 %27, ptr %6, align 4, !dbg !881
  %28 = load i32, ptr %6, align 4, !dbg !882
  %29 = call i32 @stm32_exti_is_pending(i32 noundef %28), !dbg !884
  %30 = icmp ne i32 %29, 0, !dbg !885
  br i1 %30, label %31, label %55, !dbg !886

31:                                               ; preds = %20
  %32 = load i32, ptr %6, align 4, !dbg !887
  call void @stm32_exti_clear_pending(i32 noundef %32), !dbg !889
  %33 = load ptr, ptr %4, align 4, !dbg !890
  %34 = getelementptr inbounds %struct.stm32_exti_data, ptr %33, i32 0, i32 0, !dbg !892
  %35 = load i32, ptr %6, align 4, !dbg !893
  %36 = getelementptr inbounds [16 x %struct.__exti_cb], ptr %34, i32 0, i32 %35, !dbg !890
  %37 = getelementptr inbounds %struct.__exti_cb, ptr %36, i32 0, i32 0, !dbg !894
  %38 = load ptr, ptr %37, align 4, !dbg !894
  %39 = icmp ne ptr %38, null, !dbg !890
  br i1 %39, label %41, label %40, !dbg !895

40:                                               ; preds = %31
  br label %56, !dbg !896

41:                                               ; preds = %31
  %42 = load ptr, ptr %4, align 4, !dbg !898
  %43 = getelementptr inbounds %struct.stm32_exti_data, ptr %42, i32 0, i32 0, !dbg !899
  %44 = load i32, ptr %6, align 4, !dbg !900
  %45 = getelementptr inbounds [16 x %struct.__exti_cb], ptr %43, i32 0, i32 %44, !dbg !898
  %46 = getelementptr inbounds %struct.__exti_cb, ptr %45, i32 0, i32 0, !dbg !901
  %47 = load ptr, ptr %46, align 4, !dbg !901
  %48 = load i32, ptr %6, align 4, !dbg !902
  %49 = load ptr, ptr %4, align 4, !dbg !903
  %50 = getelementptr inbounds %struct.stm32_exti_data, ptr %49, i32 0, i32 0, !dbg !904
  %51 = load i32, ptr %6, align 4, !dbg !905
  %52 = getelementptr inbounds [16 x %struct.__exti_cb], ptr %50, i32 0, i32 %51, !dbg !903
  %53 = getelementptr inbounds %struct.__exti_cb, ptr %52, i32 0, i32 1, !dbg !906
  %54 = load ptr, ptr %53, align 4, !dbg !906
  call void %47(i32 noundef %48, ptr noundef %54), !dbg !898
  br label %55, !dbg !907

55:                                               ; preds = %41, %20
  br label %56, !dbg !908

56:                                               ; preds = %55, %40
  %57 = load i8, ptr %7, align 1, !dbg !909
  %58 = add i8 %57, 1, !dbg !909
  store i8 %58, ptr %7, align 1, !dbg !909
  br label %12, !dbg !910, !llvm.loop !911

59:                                               ; preds = %12
  ret void, !dbg !913
}

declare void @z_arm_irq_priority_set(i32 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone
define internal i32 @stm32_exti_is_pending(i32 noundef %0) #0 !dbg !914 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !917, metadata !DIExpression()), !dbg !918
  %4 = load i32, ptr %3, align 4, !dbg !919
  %5 = icmp slt i32 %4, 32, !dbg !921
  br i1 %5, label %6, label %10, !dbg !922

6:                                                ; preds = %1
  %7 = load i32, ptr %3, align 4, !dbg !923
  %8 = shl i32 1, %7, !dbg !925
  %9 = call i32 @LL_EXTI_IsActiveFlag_0_31(i32 noundef %8), !dbg !926
  store i32 %9, ptr %2, align 4, !dbg !927
  br label %11, !dbg !927

10:                                               ; preds = %1
  store i32 0, ptr %2, align 4, !dbg !928
  br label %11, !dbg !928

11:                                               ; preds = %10, %6
  %12 = load i32, ptr %2, align 4, !dbg !930
  ret i32 %12, !dbg !930
}

; Function Attrs: noinline nounwind optnone
define internal void @stm32_exti_clear_pending(i32 noundef %0) #0 !dbg !931 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !932, metadata !DIExpression()), !dbg !933
  %3 = load i32, ptr %2, align 4, !dbg !934
  %4 = icmp slt i32 %3, 32, !dbg !936
  br i1 %4, label %5, label %8, !dbg !937

5:                                                ; preds = %1
  %6 = load i32, ptr %2, align 4, !dbg !938
  %7 = shl i32 1, %6, !dbg !940
  call void @LL_EXTI_ClearFlag_0_31(i32 noundef %7), !dbg !941
  br label %9, !dbg !942

8:                                                ; preds = %1
  br label %9

9:                                                ; preds = %8, %5
  ret void, !dbg !943
}

; Function Attrs: noinline nounwind optnone
define internal i32 @LL_EXTI_IsActiveFlag_0_31(i32 noundef %0) #0 !dbg !944 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !947, metadata !DIExpression()), !dbg !948
  %3 = load volatile i32, ptr getelementptr inbounds (%struct.EXTI_TypeDef, ptr inttoptr (i32 1073808384 to ptr), i32 0, i32 5), align 4, !dbg !949
  %4 = load i32, ptr %2, align 4, !dbg !950
  %5 = and i32 %3, %4, !dbg !951
  %6 = load i32, ptr %2, align 4, !dbg !952
  %7 = icmp eq i32 %5, %6, !dbg !953
  %8 = zext i1 %7 to i32, !dbg !953
  ret i32 %8, !dbg !954
}

; Function Attrs: noinline nounwind optnone
define internal void @LL_EXTI_ClearFlag_0_31(i32 noundef %0) #0 !dbg !955 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !956, metadata !DIExpression()), !dbg !957
  %3 = load i32, ptr %2, align 4, !dbg !958
  store volatile i32 %3, ptr getelementptr inbounds (%struct.EXTI_TypeDef, ptr inttoptr (i32 1073808384 to ptr), i32 0, i32 5), align 4, !dbg !959
  ret void, !dbg !960
}

attributes #0 = { noinline nounwind optnone "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!248, !249, !250, !251, !252, !253, !254, !255}
!llvm.ident = !{!256}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "exti_irq_table", scope: !2, file: !155, line: 35, type: !246, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !135, globals: !152, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "intc_exti_stm32.c", directory: "/home/sri/zephyrproject/zephyr/build")
!4 = !{!5, !13, !95}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "stm32_exti_trigger", file: !6, line: 45, baseType: !7, size: 8, elements: !8)
!6 = !DIFile(filename: "include/zephyr/drivers/interrupt_controller/exti_stm32.h", directory: "/home/sri/zephyrproject/zephyr")
!7 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "STM32_EXTI_TRIG_NONE", value: 0)
!10 = !DIEnumerator(name: "STM32_EXTI_TRIG_RISING", value: 1)
!11 = !DIEnumerator(name: "STM32_EXTI_TRIG_FALLING", value: 2)
!12 = !DIEnumerator(name: "STM32_EXTI_TRIG_BOTH", value: 3)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "k_objects", file: !14, line: 29, baseType: !7, size: 8, elements: !15)
!14 = !DIFile(filename: "include/zephyr/sys/kobject.h", directory: "/home/sri/zephyrproject/zephyr")
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
!95 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !96, line: 66, baseType: !97, size: 8, elements: !98)
!96 = !DIFile(filename: "modules/hal/stm32/stm32cube/stm32f0xx/soc/stm32f091xc.h", directory: "/home/sri/zephyrproject")
!97 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!98 = !{!99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134}
!99 = !DIEnumerator(name: "NonMaskableInt_IRQn", value: -14)
!100 = !DIEnumerator(name: "HardFault_IRQn", value: -13)
!101 = !DIEnumerator(name: "SVCall_IRQn", value: -5)
!102 = !DIEnumerator(name: "PendSV_IRQn", value: -2)
!103 = !DIEnumerator(name: "SysTick_IRQn", value: -1)
!104 = !DIEnumerator(name: "WWDG_IRQn", value: 0)
!105 = !DIEnumerator(name: "PVD_VDDIO2_IRQn", value: 1)
!106 = !DIEnumerator(name: "RTC_IRQn", value: 2)
!107 = !DIEnumerator(name: "FLASH_IRQn", value: 3)
!108 = !DIEnumerator(name: "RCC_CRS_IRQn", value: 4)
!109 = !DIEnumerator(name: "EXTI0_1_IRQn", value: 5)
!110 = !DIEnumerator(name: "EXTI2_3_IRQn", value: 6)
!111 = !DIEnumerator(name: "EXTI4_15_IRQn", value: 7)
!112 = !DIEnumerator(name: "TSC_IRQn", value: 8)
!113 = !DIEnumerator(name: "DMA1_Ch1_IRQn", value: 9)
!114 = !DIEnumerator(name: "DMA1_Ch2_3_DMA2_Ch1_2_IRQn", value: 10)
!115 = !DIEnumerator(name: "DMA1_Ch4_7_DMA2_Ch3_5_IRQn", value: 11)
!116 = !DIEnumerator(name: "ADC1_COMP_IRQn", value: 12)
!117 = !DIEnumerator(name: "TIM1_BRK_UP_TRG_COM_IRQn", value: 13)
!118 = !DIEnumerator(name: "TIM1_CC_IRQn", value: 14)
!119 = !DIEnumerator(name: "TIM2_IRQn", value: 15)
!120 = !DIEnumerator(name: "TIM3_IRQn", value: 16)
!121 = !DIEnumerator(name: "TIM6_DAC_IRQn", value: 17)
!122 = !DIEnumerator(name: "TIM7_IRQn", value: 18)
!123 = !DIEnumerator(name: "TIM14_IRQn", value: 19)
!124 = !DIEnumerator(name: "TIM15_IRQn", value: 20)
!125 = !DIEnumerator(name: "TIM16_IRQn", value: 21)
!126 = !DIEnumerator(name: "TIM17_IRQn", value: 22)
!127 = !DIEnumerator(name: "I2C1_IRQn", value: 23)
!128 = !DIEnumerator(name: "I2C2_IRQn", value: 24)
!129 = !DIEnumerator(name: "SPI1_IRQn", value: 25)
!130 = !DIEnumerator(name: "SPI2_IRQn", value: 26)
!131 = !DIEnumerator(name: "USART1_IRQn", value: 27)
!132 = !DIEnumerator(name: "USART2_IRQn", value: 28)
!133 = !DIEnumerator(name: "USART3_8_IRQn", value: 29)
!134 = !DIEnumerator(name: "CEC_CAN_IRQn", value: 30)
!135 = !{!136, !139, !140, !141}
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !137, line: 64, baseType: !138)
!137 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/stdint.h", directory: "")
!138 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!140 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 32)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "EXTI_TypeDef", file: !96, line: 334, baseType: !143)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !96, line: 326, size: 192, elements: !144)
!144 = !{!145, !147, !148, !149, !150, !151}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "IMR", scope: !143, file: !96, line: 328, baseType: !146, size: 32)
!146 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !136)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "EMR", scope: !143, file: !96, line: 329, baseType: !146, size: 32, offset: 32)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "RTSR", scope: !143, file: !96, line: 330, baseType: !146, size: 32, offset: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "FTSR", scope: !143, file: !96, line: 331, baseType: !146, size: 32, offset: 96)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "SWIER", scope: !143, file: !96, line: 332, baseType: !146, size: 32, offset: 128)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "PR", scope: !143, file: !96, line: 333, baseType: !146, size: 32, offset: 160)
!152 = !{!153, !160, !182, !201, !217, !0, !219, !228, !238, !240, !242, !244}
!153 = !DIGlobalVariableExpression(var: !154, expr: !DIExpression())
!154 = distinct !DIGlobalVariable(scope: null, file: !155, line: 239, type: !156, isLocal: true, isDefinition: true)
!155 = !DIFile(filename: "drivers/interrupt_controller/intc_exti_stm32.c", directory: "/home/sri/zephyrproject/zephyr")
!156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !157, size: 240, elements: !158)
!157 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!158 = !{!159}
!159 = !DISubrange(count: 30)
!160 = !DIGlobalVariableExpression(var: !161, expr: !DIExpression())
!161 = distinct !DIGlobalVariable(name: "__device_dts_ord_49", scope: !2, file: !155, line: 239, type: !162, isLocal: false, isDefinition: true, align: 32)
!162 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !163)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !164, line: 381, size: 160, elements: !165)
!164 = !DIFile(filename: "include/zephyr/device.h", directory: "/home/sri/zephyrproject/zephyr")
!165 = !{!166, !169, !172, !173, !181}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !163, file: !164, line: 383, baseType: !167, size: 32)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 32)
!168 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !157)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !163, file: !164, line: 385, baseType: !170, size: 32, offset: 32)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 32)
!171 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "api", scope: !163, file: !164, line: 387, baseType: !170, size: 32, offset: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !163, file: !164, line: 389, baseType: !174, size: 32, offset: 96)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 32)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_state", file: !164, line: 354, size: 16, elements: !176)
!176 = !{!177, !179}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "init_res", scope: !175, file: !164, line: 362, baseType: !178, size: 8)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !137, line: 62, baseType: !7)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !175, file: !164, line: 367, baseType: !180, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 8)
!180 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !163, file: !164, line: 391, baseType: !139, size: 32, offset: 128)
!182 = !DIGlobalVariableExpression(var: !183, expr: !DIExpression())
!183 = distinct !DIGlobalVariable(name: "__init___device_dts_ord_49", scope: !2, file: !155, line: 239, type: !184, isLocal: true, isDefinition: true, align: 32)
!184 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !185)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "init_entry", file: !186, line: 92, size: 64, elements: !187)
!186 = !DIFile(filename: "include/zephyr/init.h", directory: "/home/sri/zephyrproject/zephyr")
!187 = !{!188, !200}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "init_fn", scope: !185, file: !186, line: 94, baseType: !189, size: 32)
!189 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "init_function", file: !186, line: 59, size: 32, elements: !190)
!190 = !{!191, !195}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "sys", scope: !189, file: !186, line: 66, baseType: !192, size: 32)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 32)
!193 = !DISubroutineType(types: !194)
!194 = !{!140}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !189, file: !186, line: 75, baseType: !196, size: 32)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 32)
!197 = !DISubroutineType(types: !198)
!198 = !{!140, !199}
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 32)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !185, file: !186, line: 99, baseType: !199, size: 32, offset: 32)
!201 = !DIGlobalVariableExpression(var: !202, expr: !DIExpression())
!202 = distinct !DIGlobalVariable(name: "exti_data", scope: !2, file: !155, line: 238, type: !203, isLocal: true, isDefinition: true)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stm32_exti_data", file: !155, line: 44, size: 1024, elements: !204)
!204 = !{!205}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !203, file: !155, line: 46, baseType: !206, size: 1024)
!206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !207, size: 1024, elements: !215)
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__exti_cb", file: !155, line: 38, size: 64, elements: !208)
!208 = !{!209, !214}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !207, file: !155, line: 39, baseType: !210, size: 32)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "stm32_exti_callback_t", file: !6, line: 65, baseType: !211)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 32)
!212 = !DISubroutineType(types: !213)
!213 = !{null, !140, !139}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !207, file: !155, line: 40, baseType: !139, size: 32, offset: 32)
!215 = !{!216}
!216 = !DISubrange(count: 16)
!217 = !DIGlobalVariableExpression(var: !218, expr: !DIExpression())
!218 = distinct !DIGlobalVariable(name: "__devstate_dts_ord_49", scope: !2, file: !155, line: 239, type: !175, isLocal: true, isDefinition: true, align: 8)
!219 = !DIGlobalVariableExpression(var: !220, expr: !DIExpression())
!220 = distinct !DIGlobalVariable(name: "line_range_0", scope: !221, file: !155, line: 231, type: !223, isLocal: true, isDefinition: true)
!221 = distinct !DISubprogram(name: "stm32_exti_init", scope: !155, file: !155, line: 227, type: !197, scopeLine: 228, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!222 = !{}
!223 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !224)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stm32_exti_range", file: !155, line: 26, size: 16, elements: !225)
!225 = !{!226, !227}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !224, file: !155, line: 28, baseType: !178, size: 8)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !224, file: !155, line: 30, baseType: !178, size: 8, offset: 8)
!228 = !DIGlobalVariableExpression(var: !229, expr: !DIExpression())
!229 = distinct !DIGlobalVariable(name: "__isr_stm32_exti_isr_irq_0", scope: !221, file: !155, line: 231, type: !230, isLocal: true, isDefinition: true, align: 32)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_isr_list", file: !231, line: 53, size: 128, elements: !232)
!231 = !DIFile(filename: "include/zephyr/sw_isr_table.h", directory: "/home/sri/zephyrproject/zephyr")
!232 = !{!233, !235, !236, !237}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !230, file: !231, line: 55, baseType: !234, size: 32)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !137, line: 58, baseType: !140)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !230, file: !231, line: 57, baseType: !234, size: 32, offset: 32)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !230, file: !231, line: 59, baseType: !139, size: 32, offset: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !230, file: !231, line: 61, baseType: !170, size: 32, offset: 96)
!238 = !DIGlobalVariableExpression(var: !239, expr: !DIExpression())
!239 = distinct !DIGlobalVariable(name: "line_range_1", scope: !221, file: !155, line: 231, type: !223, isLocal: true, isDefinition: true)
!240 = !DIGlobalVariableExpression(var: !241, expr: !DIExpression())
!241 = distinct !DIGlobalVariable(name: "__isr_stm32_exti_isr_irq_1", scope: !221, file: !155, line: 231, type: !230, isLocal: true, isDefinition: true, align: 32)
!242 = !DIGlobalVariableExpression(var: !243, expr: !DIExpression())
!243 = distinct !DIGlobalVariable(name: "line_range_2", scope: !221, file: !155, line: 231, type: !223, isLocal: true, isDefinition: true)
!244 = !DIGlobalVariableExpression(var: !245, expr: !DIExpression())
!245 = distinct !DIGlobalVariable(name: "__isr_stm32_exti_isr_irq_2", scope: !221, file: !155, line: 231, type: !230, isLocal: true, isDefinition: true, align: 32)
!246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !247, size: 128, elements: !215)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRQn_Type", file: !96, line: 107, baseType: !95)
!248 = !{i32 7, !"Dwarf Version", i32 4}
!249 = !{i32 2, !"Debug Info Version", i32 3}
!250 = !{i32 1, !"wchar_size", i32 4}
!251 = !{i32 1, !"static_rwdata", i32 1}
!252 = !{i32 1, !"enumsize_buildattr", i32 1}
!253 = !{i32 1, !"armlib_unavailable", i32 0}
!254 = !{i32 8, !"PIC Level", i32 2}
!255 = !{i32 7, !"PIE Level", i32 2}
!256 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
!257 = distinct !DISubprogram(name: "z_impl_device_is_ready", scope: !164, file: !164, line: 744, type: !258, scopeLine: 745, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!258 = !DISubroutineType(types: !259)
!259 = !{!180, !199}
!260 = !DILocalVariable(name: "dev", arg: 1, scope: !257, file: !164, line: 744, type: !199)
!261 = !DILocation(line: 744, column: 65, scope: !257)
!262 = !DILocation(line: 746, column: 27, scope: !257)
!263 = !DILocation(line: 746, column: 9, scope: !257)
!264 = !DILocation(line: 746, column: 2, scope: !257)
!265 = distinct !DISubprogram(name: "z_impl_k_object_access_grant", scope: !14, file: !14, line: 223, type: !266, scopeLine: 225, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!266 = !DISubroutineType(types: !267)
!267 = !{null, !170, !268}
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 32)
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_thread", file: !270, line: 250, size: 896, elements: !271)
!270 = !DIFile(filename: "include/zephyr/kernel/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!271 = !{!272, !340, !353, !354, !355, !356, !376}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !269, file: !270, line: 252, baseType: !273, size: 384)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_base", file: !270, line: 58, size: 384, elements: !274)
!274 = !{!275, !303, !311, !312, !313, !325, !326, !327}
!275 = !DIDerivedType(tag: DW_TAG_member, scope: !273, file: !270, line: 61, baseType: !276, size: 64)
!276 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !273, file: !270, line: 61, size: 64, elements: !277)
!277 = !{!278, !294}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_dlist", scope: !276, file: !270, line: 62, baseType: !279, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dnode_t", file: !280, line: 55, baseType: !281)
!280 = !DIFile(filename: "include/zephyr/sys/dlist.h", directory: "/home/sri/zephyrproject/zephyr")
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_dnode", file: !280, line: 37, size: 64, elements: !282)
!282 = !{!283, !289}
!283 = !DIDerivedType(tag: DW_TAG_member, scope: !281, file: !280, line: 38, baseType: !284, size: 32)
!284 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !281, file: !280, line: 38, size: 32, elements: !285)
!285 = !{!286, !288}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !284, file: !280, line: 39, baseType: !287, size: 32)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 32)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !284, file: !280, line: 40, baseType: !287, size: 32)
!289 = !DIDerivedType(tag: DW_TAG_member, scope: !281, file: !280, line: 42, baseType: !290, size: 32, offset: 32)
!290 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !281, file: !280, line: 42, size: 32, elements: !291)
!291 = !{!292, !293}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !290, file: !280, line: 43, baseType: !287, size: 32)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !290, file: !280, line: 44, baseType: !287, size: 32)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_rb", scope: !276, file: !270, line: 63, baseType: !295, size: 64)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rbnode", file: !296, line: 58, size: 64, elements: !297)
!296 = !DIFile(filename: "include/zephyr/sys/rb.h", directory: "/home/sri/zephyrproject/zephyr")
!297 = !{!298}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !295, file: !296, line: 60, baseType: !299, size: 64)
!299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !300, size: 64, elements: !301)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 32)
!301 = !{!302}
!302 = !DISubrange(count: 2)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "pended_on", scope: !273, file: !270, line: 69, baseType: !304, size: 32, offset: 64)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 32)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "_wait_q_t", file: !306, line: 243, baseType: !307)
!306 = !DIFile(filename: "include/zephyr/kernel_structs.h", directory: "/home/sri/zephyrproject/zephyr")
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !306, line: 241, size: 64, elements: !308)
!308 = !{!309}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !307, file: !306, line: 242, baseType: !310, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dlist_t", file: !280, line: 51, baseType: !281)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "user_options", scope: !273, file: !270, line: 72, baseType: !178, size: 8, offset: 96)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "thread_state", scope: !273, file: !270, line: 75, baseType: !178, size: 8, offset: 104)
!313 = !DIDerivedType(tag: DW_TAG_member, scope: !273, file: !270, line: 91, baseType: !314, size: 16, offset: 112)
!314 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !273, file: !270, line: 91, size: 16, elements: !315)
!315 = !{!316, !322}
!316 = !DIDerivedType(tag: DW_TAG_member, scope: !314, file: !270, line: 92, baseType: !317, size: 16)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !314, file: !270, line: 92, size: 16, elements: !318)
!318 = !{!319, !321}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !317, file: !270, line: 97, baseType: !320, size: 8)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !137, line: 56, baseType: !97)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "sched_locked", scope: !317, file: !270, line: 98, baseType: !178, size: 8, offset: 8)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "preempt", scope: !314, file: !270, line: 101, baseType: !323, size: 16)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !137, line: 63, baseType: !324)
!324 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "order_key", scope: !273, file: !270, line: 108, baseType: !136, size: 32, offset: 128)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "swap_data", scope: !273, file: !270, line: 132, baseType: !139, size: 32, offset: 160)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !273, file: !270, line: 136, baseType: !328, size: 192, offset: 192)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_timeout", file: !306, line: 254, size: 192, elements: !329)
!329 = !{!330, !331, !337}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !328, file: !306, line: 255, baseType: !279, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !328, file: !306, line: 256, baseType: !332, size: 32, offset: 64)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "_timeout_func_t", file: !306, line: 252, baseType: !333)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 32)
!334 = !DISubroutineType(types: !335)
!335 = !{null, !336}
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 32)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "dticks", scope: !328, file: !306, line: 259, baseType: !338, size: 64, offset: 128)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !137, line: 59, baseType: !339)
!339 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "callee_saved", scope: !269, file: !270, line: 255, baseType: !341, size: 288, offset: 384)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_callee_saved", file: !342, line: 25, size: 288, elements: !343)
!342 = !DIFile(filename: "include/zephyr/arch/arm/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!343 = !{!344, !345, !346, !347, !348, !349, !350, !351, !352}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "v1", scope: !341, file: !342, line: 26, baseType: !136, size: 32)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "v2", scope: !341, file: !342, line: 27, baseType: !136, size: 32, offset: 32)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "v3", scope: !341, file: !342, line: 28, baseType: !136, size: 32, offset: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "v4", scope: !341, file: !342, line: 29, baseType: !136, size: 32, offset: 96)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "v5", scope: !341, file: !342, line: 30, baseType: !136, size: 32, offset: 128)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "v6", scope: !341, file: !342, line: 31, baseType: !136, size: 32, offset: 160)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "v7", scope: !341, file: !342, line: 32, baseType: !136, size: 32, offset: 192)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "v8", scope: !341, file: !342, line: 33, baseType: !136, size: 32, offset: 224)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "psp", scope: !341, file: !342, line: 34, baseType: !136, size: 32, offset: 256)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "init_data", scope: !269, file: !270, line: 258, baseType: !139, size: 32, offset: 672)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "join_queue", scope: !269, file: !270, line: 261, baseType: !305, size: 64, offset: 704)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "errno_var", scope: !269, file: !270, line: 302, baseType: !140, size: 32, offset: 768)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "resource_pool", scope: !269, file: !270, line: 333, baseType: !357, size: 32, offset: 800)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 32)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_heap", file: !359, line: 5291, size: 160, elements: !360)
!359 = !DIFile(filename: "include/zephyr/kernel.h", directory: "/home/sri/zephyrproject/zephyr")
!360 = !{!361, !372, !373}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !358, file: !359, line: 5292, baseType: !362, size: 96)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sys_heap", file: !363, line: 56, size: 96, elements: !364)
!363 = !DIFile(filename: "include/zephyr/sys/sys_heap.h", directory: "/home/sri/zephyrproject/zephyr")
!364 = !{!365, !368, !369}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !362, file: !363, line: 57, baseType: !366, size: 32)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 32)
!367 = !DICompositeType(tag: DW_TAG_structure_type, name: "z_heap", file: !363, line: 57, flags: DIFlagFwdDecl)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "init_mem", scope: !362, file: !363, line: 58, baseType: !139, size: 32, offset: 32)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "init_bytes", scope: !362, file: !363, line: 59, baseType: !370, size: 32, offset: 64)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !371, line: 46, baseType: !138)
!371 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/lib/clang/17/include/stddef.h", directory: "")
!372 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !358, file: !359, line: 5293, baseType: !305, size: 64, offset: 96)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !358, file: !359, line: 5294, baseType: !374, offset: 160)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_spinlock", file: !375, line: 45, elements: !222)
!375 = !DIFile(filename: "include/zephyr/spinlock.h", directory: "/home/sri/zephyrproject/zephyr")
!376 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !269, file: !270, line: 355, baseType: !377, size: 64, offset: 832)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_arch", file: !342, line: 60, size: 64, elements: !378)
!378 = !{!379, !380}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "basepri", scope: !377, file: !342, line: 63, baseType: !136, size: 32)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "swap_return_value", scope: !377, file: !342, line: 66, baseType: !136, size: 32, offset: 32)
!381 = !DILocalVariable(name: "object", arg: 1, scope: !265, file: !14, line: 223, type: !170)
!382 = !DILocation(line: 223, column: 61, scope: !265)
!383 = !DILocalVariable(name: "thread", arg: 2, scope: !265, file: !14, line: 224, type: !268)
!384 = !DILocation(line: 224, column: 24, scope: !265)
!385 = !DILocation(line: 226, column: 9, scope: !265)
!386 = !DILocation(line: 227, column: 9, scope: !265)
!387 = !DILocation(line: 228, column: 1, scope: !265)
!388 = distinct !DISubprogram(name: "z_impl_k_object_release", scope: !14, file: !14, line: 243, type: !389, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!389 = !DISubroutineType(types: !390)
!390 = !{null, !170}
!391 = !DILocalVariable(name: "object", arg: 1, scope: !388, file: !14, line: 243, type: !170)
!392 = !DILocation(line: 243, column: 56, scope: !388)
!393 = !DILocation(line: 245, column: 9, scope: !388)
!394 = !DILocation(line: 246, column: 1, scope: !388)
!395 = distinct !DISubprogram(name: "z_impl_k_object_alloc", scope: !14, file: !14, line: 359, type: !396, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!396 = !DISubroutineType(types: !397)
!397 = !{!139, !13}
!398 = !DILocalVariable(name: "otype", arg: 1, scope: !395, file: !14, line: 359, type: !13)
!399 = !DILocation(line: 359, column: 58, scope: !395)
!400 = !DILocation(line: 361, column: 9, scope: !395)
!401 = !DILocation(line: 363, column: 2, scope: !395)
!402 = distinct !DISubprogram(name: "z_impl_k_object_alloc_size", scope: !14, file: !14, line: 366, type: !403, scopeLine: 368, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!403 = !DISubroutineType(types: !404)
!404 = !{!139, !13, !370}
!405 = !DILocalVariable(name: "otype", arg: 1, scope: !402, file: !14, line: 366, type: !13)
!406 = !DILocation(line: 366, column: 63, scope: !402)
!407 = !DILocalVariable(name: "size", arg: 2, scope: !402, file: !14, line: 367, type: !370)
!408 = !DILocation(line: 367, column: 13, scope: !402)
!409 = !DILocation(line: 369, column: 9, scope: !402)
!410 = !DILocation(line: 370, column: 9, scope: !402)
!411 = !DILocation(line: 372, column: 2, scope: !402)
!412 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_expires_ticks", scope: !359, file: !359, line: 656, type: !413, scopeLine: 658, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!413 = !DISubroutineType(types: !414)
!414 = !{!415, !417}
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_ticks_t", file: !416, line: 46, baseType: !338)
!416 = !DIFile(filename: "include/zephyr/sys_clock.h", directory: "/home/sri/zephyrproject/zephyr")
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 32)
!418 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !269)
!419 = !DILocalVariable(name: "t", arg: 1, scope: !412, file: !359, line: 657, type: !417)
!420 = !DILocation(line: 657, column: 30, scope: !412)
!421 = !DILocation(line: 659, column: 28, scope: !412)
!422 = !DILocation(line: 659, column: 31, scope: !412)
!423 = !DILocation(line: 659, column: 36, scope: !412)
!424 = !DILocation(line: 659, column: 9, scope: !412)
!425 = !DILocation(line: 659, column: 2, scope: !412)
!426 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_remaining_ticks", scope: !359, file: !359, line: 671, type: !413, scopeLine: 673, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!427 = !DILocalVariable(name: "t", arg: 1, scope: !426, file: !359, line: 672, type: !417)
!428 = !DILocation(line: 672, column: 30, scope: !426)
!429 = !DILocation(line: 674, column: 30, scope: !426)
!430 = !DILocation(line: 674, column: 33, scope: !426)
!431 = !DILocation(line: 674, column: 38, scope: !426)
!432 = !DILocation(line: 674, column: 9, scope: !426)
!433 = !DILocation(line: 674, column: 2, scope: !426)
!434 = distinct !DISubprogram(name: "z_impl_k_timer_expires_ticks", scope: !359, file: !359, line: 1634, type: !435, scopeLine: 1636, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!435 = !DISubroutineType(types: !436)
!436 = !{!415, !437}
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 32)
!438 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !439)
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_timer", file: !359, line: 1439, size: 448, elements: !440)
!440 = !{!441, !442, !443, !448, !449, !454, !455}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !439, file: !359, line: 1445, baseType: !328, size: 192)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !439, file: !359, line: 1448, baseType: !305, size: 64, offset: 192)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_fn", scope: !439, file: !359, line: 1451, baseType: !444, size: 32, offset: 256)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 32)
!445 = !DISubroutineType(types: !446)
!446 = !{null, !447}
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 32)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "stop_fn", scope: !439, file: !359, line: 1454, baseType: !444, size: 32, offset: 288)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !439, file: !359, line: 1457, baseType: !450, size: 64, offset: 320)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_timeout_t", file: !416, line: 67, baseType: !451)
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !416, line: 65, size: 64, elements: !452)
!452 = !{!453}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "ticks", scope: !451, file: !416, line: 66, baseType: !415, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !439, file: !359, line: 1460, baseType: !136, size: 32, offset: 384)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !439, file: !359, line: 1463, baseType: !139, size: 32, offset: 416)
!456 = !DILocalVariable(name: "timer", arg: 1, scope: !434, file: !359, line: 1635, type: !437)
!457 = !DILocation(line: 1635, column: 34, scope: !434)
!458 = !DILocation(line: 1637, column: 28, scope: !434)
!459 = !DILocation(line: 1637, column: 35, scope: !434)
!460 = !DILocation(line: 1637, column: 9, scope: !434)
!461 = !DILocation(line: 1637, column: 2, scope: !434)
!462 = distinct !DISubprogram(name: "z_impl_k_timer_remaining_ticks", scope: !359, file: !359, line: 1649, type: !435, scopeLine: 1651, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!463 = !DILocalVariable(name: "timer", arg: 1, scope: !462, file: !359, line: 1650, type: !437)
!464 = !DILocation(line: 1650, column: 34, scope: !462)
!465 = !DILocation(line: 1652, column: 30, scope: !462)
!466 = !DILocation(line: 1652, column: 37, scope: !462)
!467 = !DILocation(line: 1652, column: 9, scope: !462)
!468 = !DILocation(line: 1652, column: 2, scope: !462)
!469 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_set", scope: !359, file: !359, line: 1689, type: !470, scopeLine: 1691, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!470 = !DISubroutineType(types: !471)
!471 = !{null, !447, !139}
!472 = !DILocalVariable(name: "timer", arg: 1, scope: !469, file: !359, line: 1689, type: !447)
!473 = !DILocation(line: 1689, column: 65, scope: !469)
!474 = !DILocalVariable(name: "user_data", arg: 2, scope: !469, file: !359, line: 1690, type: !139)
!475 = !DILocation(line: 1690, column: 19, scope: !469)
!476 = !DILocation(line: 1692, column: 21, scope: !469)
!477 = !DILocation(line: 1692, column: 2, scope: !469)
!478 = !DILocation(line: 1692, column: 9, scope: !469)
!479 = !DILocation(line: 1692, column: 19, scope: !469)
!480 = !DILocation(line: 1693, column: 1, scope: !469)
!481 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_get", scope: !359, file: !359, line: 1704, type: !482, scopeLine: 1705, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!482 = !DISubroutineType(types: !483)
!483 = !{!139, !437}
!484 = !DILocalVariable(name: "timer", arg: 1, scope: !481, file: !359, line: 1704, type: !437)
!485 = !DILocation(line: 1704, column: 72, scope: !481)
!486 = !DILocation(line: 1706, column: 9, scope: !481)
!487 = !DILocation(line: 1706, column: 16, scope: !481)
!488 = !DILocation(line: 1706, column: 2, scope: !481)
!489 = distinct !DISubprogram(name: "z_impl_k_queue_is_empty", scope: !359, file: !359, line: 2071, type: !490, scopeLine: 2072, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!490 = !DISubroutineType(types: !491)
!491 = !{!140, !492}
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 32)
!493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_queue", file: !359, line: 1830, size: 128, elements: !494)
!494 = !{!495, !508, !509}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "data_q", scope: !493, file: !359, line: 1831, baseType: !496, size: 64)
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sflist_t", file: !497, line: 60, baseType: !498)
!497 = !DIFile(filename: "include/zephyr/sys/sflist.h", directory: "/home/sri/zephyrproject/zephyr")
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sflist", file: !497, line: 53, size: 64, elements: !499)
!499 = !{!500, !507}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !498, file: !497, line: 54, baseType: !501, size: 32)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 32)
!502 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sfnode_t", file: !497, line: 50, baseType: !503)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sfnode", file: !497, line: 44, size: 32, elements: !504)
!504 = !{!505}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "next_and_flags", scope: !503, file: !497, line: 45, baseType: !506, size: 32)
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "unative_t", file: !497, line: 40, baseType: !136)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !498, file: !497, line: 55, baseType: !501, size: 32, offset: 32)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !493, file: !359, line: 1832, baseType: !374, offset: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !493, file: !359, line: 1833, baseType: !305, size: 64, offset: 64)
!510 = !DILocalVariable(name: "queue", arg: 1, scope: !489, file: !359, line: 2071, type: !492)
!511 = !DILocation(line: 2071, column: 59, scope: !489)
!512 = !DILocation(line: 2073, column: 35, scope: !489)
!513 = !DILocation(line: 2073, column: 42, scope: !489)
!514 = !DILocation(line: 2073, column: 14, scope: !489)
!515 = !DILocation(line: 2073, column: 9, scope: !489)
!516 = !DILocation(line: 2073, column: 2, scope: !489)
!517 = distinct !DISubprogram(name: "z_impl_k_sem_count_get", scope: !359, file: !359, line: 3209, type: !518, scopeLine: 3210, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!518 = !DISubroutineType(types: !519)
!519 = !{!138, !520}
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 32)
!521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sem", file: !359, line: 3092, size: 128, elements: !522)
!522 = !{!523, !524, !525}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !521, file: !359, line: 3093, baseType: !305, size: 64)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !521, file: !359, line: 3094, baseType: !138, size: 32, offset: 64)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !521, file: !359, line: 3095, baseType: !138, size: 32, offset: 96)
!526 = !DILocalVariable(name: "sem", arg: 1, scope: !517, file: !359, line: 3209, type: !520)
!527 = !DILocation(line: 3209, column: 65, scope: !517)
!528 = !DILocation(line: 3211, column: 9, scope: !517)
!529 = !DILocation(line: 3211, column: 14, scope: !517)
!530 = !DILocation(line: 3211, column: 2, scope: !517)
!531 = distinct !DISubprogram(name: "z_impl_k_msgq_num_free_get", scope: !359, file: !359, line: 4649, type: !532, scopeLine: 4650, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!532 = !DISubroutineType(types: !533)
!533 = !{!136, !534}
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 32)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_msgq", file: !359, line: 4390, size: 320, elements: !536)
!536 = !{!537, !538, !539, !540, !541, !543, !544, !545, !546, !547}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !535, file: !359, line: 4392, baseType: !305, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !535, file: !359, line: 4394, baseType: !374, offset: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "msg_size", scope: !535, file: !359, line: 4396, baseType: !370, size: 32, offset: 64)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !535, file: !359, line: 4398, baseType: !136, size: 32, offset: 96)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_start", scope: !535, file: !359, line: 4400, baseType: !542, size: 32, offset: 128)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 32)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_end", scope: !535, file: !359, line: 4402, baseType: !542, size: 32, offset: 160)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "read_ptr", scope: !535, file: !359, line: 4404, baseType: !542, size: 32, offset: 192)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "write_ptr", scope: !535, file: !359, line: 4406, baseType: !542, size: 32, offset: 224)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "used_msgs", scope: !535, file: !359, line: 4408, baseType: !136, size: 32, offset: 256)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !535, file: !359, line: 4413, baseType: !178, size: 8, offset: 288)
!548 = !DILocalVariable(name: "msgq", arg: 1, scope: !531, file: !359, line: 4649, type: !534)
!549 = !DILocation(line: 4649, column: 66, scope: !531)
!550 = !DILocation(line: 4651, column: 9, scope: !531)
!551 = !DILocation(line: 4651, column: 15, scope: !531)
!552 = !DILocation(line: 4651, column: 26, scope: !531)
!553 = !DILocation(line: 4651, column: 32, scope: !531)
!554 = !DILocation(line: 4651, column: 24, scope: !531)
!555 = !DILocation(line: 4651, column: 2, scope: !531)
!556 = distinct !DISubprogram(name: "z_impl_k_msgq_num_used_get", scope: !359, file: !359, line: 4665, type: !532, scopeLine: 4666, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!557 = !DILocalVariable(name: "msgq", arg: 1, scope: !556, file: !359, line: 4665, type: !534)
!558 = !DILocation(line: 4665, column: 66, scope: !556)
!559 = !DILocation(line: 4667, column: 9, scope: !556)
!560 = !DILocation(line: 4667, column: 15, scope: !556)
!561 = !DILocation(line: 4667, column: 2, scope: !556)
!562 = distinct !DISubprogram(name: "stm32_exti_enable", scope: !155, file: !155, line: 49, type: !563, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !222)
!563 = !DISubroutineType(types: !564)
!564 = !{null, !140}
!565 = !DILocalVariable(name: "line", arg: 1, scope: !562, file: !155, line: 49, type: !140)
!566 = !DILocation(line: 49, column: 28, scope: !562)
!567 = !DILocalVariable(name: "irqnum", scope: !562, file: !155, line: 51, type: !140)
!568 = !DILocation(line: 51, column: 6, scope: !562)
!569 = !DILocation(line: 53, column: 6, scope: !570)
!570 = distinct !DILexicalBlock(scope: !562, file: !155, line: 53, column: 6)
!571 = !DILocation(line: 53, column: 11, scope: !570)
!572 = !DILocation(line: 53, column: 6, scope: !562)
!573 = !DILocation(line: 55, column: 2, scope: !574)
!574 = distinct !DILexicalBlock(scope: !570, file: !155, line: 53, column: 18)
!575 = !DILocation(line: 58, column: 26, scope: !562)
!576 = !DILocation(line: 58, column: 11, scope: !562)
!577 = !DILocation(line: 58, column: 9, scope: !562)
!578 = !DILocation(line: 59, column: 6, scope: !579)
!579 = distinct !DILexicalBlock(scope: !562, file: !155, line: 59, column: 6)
!580 = !DILocation(line: 59, column: 13, scope: !579)
!581 = !DILocation(line: 59, column: 6, scope: !562)
!582 = !DILocation(line: 61, column: 2, scope: !583)
!583 = distinct !DILexicalBlock(scope: !579, file: !155, line: 59, column: 22)
!584 = !DILocation(line: 67, column: 43, scope: !562)
!585 = !DILocation(line: 67, column: 29, scope: !562)
!586 = !DILocation(line: 67, column: 2, scope: !562)
!587 = !DILocation(line: 71, column: 18, scope: !562)
!588 = !DILocation(line: 71, column: 2, scope: !562)
!589 = !DILocation(line: 72, column: 1, scope: !562)
!590 = distinct !DISubprogram(name: "LL_EXTI_EnableIT_0_31", scope: !591, file: !591, line: 273, type: !592, scopeLine: 274, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!591 = !DIFile(filename: "modules/hal/stm32/stm32cube/stm32f0xx/drivers/include/stm32f0xx_ll_exti.h", directory: "/home/sri/zephyrproject")
!592 = !DISubroutineType(types: !593)
!593 = !{null, !136}
!594 = !DILocalVariable(name: "ExtiLine", arg: 1, scope: !590, file: !591, line: 273, type: !136)
!595 = !DILocation(line: 273, column: 53, scope: !590)
!596 = !DILocation(line: 275, column: 64, scope: !590)
!597 = !DILocation(line: 275, column: 60, scope: !590)
!598 = !DILocation(line: 276, column: 1, scope: !590)
!599 = distinct !DISubprogram(name: "stm32_exti_disable", scope: !155, file: !155, line: 74, type: !563, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !222)
!600 = !DILocalVariable(name: "line", arg: 1, scope: !599, file: !155, line: 74, type: !140)
!601 = !DILocation(line: 74, column: 29, scope: !599)
!602 = !DILocation(line: 76, column: 2, scope: !599)
!603 = !DILocation(line: 78, column: 6, scope: !604)
!604 = distinct !DILexicalBlock(scope: !599, file: !155, line: 78, column: 6)
!605 = !DILocation(line: 78, column: 11, scope: !604)
!606 = !DILocation(line: 78, column: 6, scope: !599)
!607 = !DILocation(line: 82, column: 45, scope: !608)
!608 = distinct !DILexicalBlock(scope: !604, file: !155, line: 78, column: 17)
!609 = !DILocation(line: 82, column: 31, scope: !608)
!610 = !DILocation(line: 82, column: 3, scope: !608)
!611 = !DILocation(line: 84, column: 2, scope: !608)
!612 = !DILocation(line: 87, column: 2, scope: !599)
!613 = !DILocation(line: 88, column: 1, scope: !599)
!614 = distinct !DISubprogram(name: "z_stm32_hsem_lock", scope: !615, file: !615, line: 116, type: !616, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!615 = !DIFile(filename: "soc/arm/st_stm32/common/stm32_hsem.h", directory: "/home/sri/zephyrproject/zephyr")
!616 = !DISubroutineType(types: !617)
!617 = !{null, !136, !136}
!618 = !DILocalVariable(name: "hsem", arg: 1, scope: !614, file: !615, line: 116, type: !136)
!619 = !DILocation(line: 116, column: 47, scope: !614)
!620 = !DILocalVariable(name: "retry", arg: 2, scope: !614, file: !615, line: 116, type: !136)
!621 = !DILocation(line: 116, column: 62, scope: !614)
!622 = !DILocation(line: 130, column: 1, scope: !614)
!623 = distinct !DISubprogram(name: "LL_EXTI_DisableIT_0_31", scope: !591, file: !591, line: 321, type: !592, scopeLine: 322, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!624 = !DILocalVariable(name: "ExtiLine", arg: 1, scope: !623, file: !591, line: 321, type: !136)
!625 = !DILocation(line: 321, column: 54, scope: !623)
!626 = !DILocation(line: 323, column: 65, scope: !623)
!627 = !DILocation(line: 323, column: 63, scope: !623)
!628 = !DILocation(line: 323, column: 60, scope: !623)
!629 = !DILocation(line: 324, column: 1, scope: !623)
!630 = distinct !DISubprogram(name: "z_stm32_hsem_unlock", scope: !615, file: !615, line: 151, type: !592, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!631 = !DILocalVariable(name: "hsem", arg: 1, scope: !630, file: !615, line: 151, type: !136)
!632 = !DILocation(line: 151, column: 49, scope: !630)
!633 = !DILocation(line: 157, column: 1, scope: !630)
!634 = distinct !DISubprogram(name: "stm32_exti_trigger", scope: !155, file: !155, line: 133, type: !635, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !222)
!635 = !DISubroutineType(types: !636)
!636 = !{null, !140, !140}
!637 = !DILocalVariable(name: "line", arg: 1, scope: !634, file: !155, line: 133, type: !140)
!638 = !DILocation(line: 133, column: 29, scope: !634)
!639 = !DILocalVariable(name: "trigger", arg: 2, scope: !634, file: !155, line: 133, type: !140)
!640 = !DILocation(line: 133, column: 39, scope: !634)
!641 = !DILocation(line: 136, column: 6, scope: !642)
!642 = distinct !DILexicalBlock(scope: !634, file: !155, line: 136, column: 6)
!643 = !DILocation(line: 136, column: 11, scope: !642)
!644 = !DILocation(line: 136, column: 6, scope: !634)
!645 = !DILocation(line: 138, column: 2, scope: !646)
!646 = distinct !DILexicalBlock(scope: !642, file: !155, line: 136, column: 18)
!647 = !DILocation(line: 140, column: 2, scope: !634)
!648 = !DILocation(line: 142, column: 10, scope: !634)
!649 = !DILocation(line: 142, column: 2, scope: !634)
!650 = !DILocation(line: 144, column: 53, scope: !651)
!651 = distinct !DILexicalBlock(scope: !634, file: !155, line: 142, column: 19)
!652 = !DILocation(line: 144, column: 39, scope: !651)
!653 = !DILocation(line: 144, column: 3, scope: !651)
!654 = !DILocation(line: 145, column: 54, scope: !651)
!655 = !DILocation(line: 145, column: 40, scope: !651)
!656 = !DILocation(line: 145, column: 3, scope: !651)
!657 = !DILocation(line: 146, column: 3, scope: !651)
!658 = !DILocation(line: 148, column: 52, scope: !651)
!659 = !DILocation(line: 148, column: 38, scope: !651)
!660 = !DILocation(line: 148, column: 3, scope: !651)
!661 = !DILocation(line: 149, column: 54, scope: !651)
!662 = !DILocation(line: 149, column: 40, scope: !651)
!663 = !DILocation(line: 149, column: 3, scope: !651)
!664 = !DILocation(line: 150, column: 3, scope: !651)
!665 = !DILocation(line: 152, column: 53, scope: !651)
!666 = !DILocation(line: 152, column: 39, scope: !651)
!667 = !DILocation(line: 152, column: 3, scope: !651)
!668 = !DILocation(line: 153, column: 53, scope: !651)
!669 = !DILocation(line: 153, column: 39, scope: !651)
!670 = !DILocation(line: 153, column: 3, scope: !651)
!671 = !DILocation(line: 154, column: 3, scope: !651)
!672 = !DILocation(line: 156, column: 52, scope: !651)
!673 = !DILocation(line: 156, column: 38, scope: !651)
!674 = !DILocation(line: 156, column: 3, scope: !651)
!675 = !DILocation(line: 157, column: 53, scope: !651)
!676 = !DILocation(line: 157, column: 39, scope: !651)
!677 = !DILocation(line: 157, column: 3, scope: !651)
!678 = !DILocation(line: 158, column: 3, scope: !651)
!679 = !DILocation(line: 161, column: 3, scope: !651)
!680 = !DILocation(line: 163, column: 2, scope: !634)
!681 = !DILocation(line: 164, column: 1, scope: !634)
!682 = distinct !DISubprogram(name: "LL_EXTI_DisableRisingTrig_0_31", scope: !591, file: !591, line: 617, type: !592, scopeLine: 618, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!683 = !DILocalVariable(name: "ExtiLine", arg: 1, scope: !682, file: !591, line: 617, type: !136)
!684 = !DILocation(line: 617, column: 62, scope: !682)
!685 = !DILocation(line: 619, column: 66, scope: !682)
!686 = !DILocation(line: 619, column: 64, scope: !682)
!687 = !DILocation(line: 619, column: 61, scope: !682)
!688 = !DILocation(line: 621, column: 1, scope: !682)
!689 = distinct !DISubprogram(name: "LL_EXTI_DisableFallingTrig_0_31", scope: !591, file: !591, line: 753, type: !592, scopeLine: 754, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!690 = !DILocalVariable(name: "ExtiLine", arg: 1, scope: !689, file: !591, line: 753, type: !136)
!691 = !DILocation(line: 753, column: 63, scope: !689)
!692 = !DILocation(line: 755, column: 66, scope: !689)
!693 = !DILocation(line: 755, column: 64, scope: !689)
!694 = !DILocation(line: 755, column: 61, scope: !689)
!695 = !DILocation(line: 756, column: 1, scope: !689)
!696 = distinct !DISubprogram(name: "LL_EXTI_EnableRisingTrig_0_31", scope: !591, file: !591, line: 571, type: !592, scopeLine: 572, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!697 = !DILocalVariable(name: "ExtiLine", arg: 1, scope: !696, file: !591, line: 571, type: !136)
!698 = !DILocation(line: 571, column: 61, scope: !696)
!699 = !DILocation(line: 573, column: 65, scope: !696)
!700 = !DILocation(line: 573, column: 61, scope: !696)
!701 = !DILocation(line: 575, column: 1, scope: !696)
!702 = distinct !DISubprogram(name: "LL_EXTI_EnableFallingTrig_0_31", scope: !591, file: !591, line: 709, type: !592, scopeLine: 710, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!703 = !DILocalVariable(name: "ExtiLine", arg: 1, scope: !702, file: !591, line: 709, type: !136)
!704 = !DILocation(line: 709, column: 62, scope: !702)
!705 = !DILocation(line: 711, column: 65, scope: !702)
!706 = !DILocation(line: 711, column: 61, scope: !702)
!707 = !DILocation(line: 712, column: 1, scope: !702)
!708 = !DILocalVariable(name: "dev", arg: 1, scope: !221, file: !155, line: 227, type: !199)
!709 = !DILocation(line: 227, column: 49, scope: !221)
!710 = !DILocation(line: 229, column: 9, scope: !221)
!711 = !DILocation(line: 231, column: 98, scope: !221)
!712 = !DILocation(line: 231, column: 118, scope: !221)
!713 = !DILocation(line: 231, column: 64, scope: !221)
!714 = !DILocation(line: 231, column: 375, scope: !715)
!715 = distinct !DILexicalBlock(scope: !221, file: !155, line: 231, column: 127)
!716 = !DILocation(line: 231, column: 507, scope: !221)
!717 = !DILocation(line: 231, column: 527, scope: !221)
!718 = !DILocation(line: 231, column: 473, scope: !221)
!719 = !DILocation(line: 231, column: 784, scope: !720)
!720 = distinct !DILexicalBlock(scope: !221, file: !155, line: 231, column: 536)
!721 = !DILocation(line: 231, column: 917, scope: !221)
!722 = !DILocation(line: 231, column: 937, scope: !221)
!723 = !DILocation(line: 231, column: 883, scope: !221)
!724 = !DILocation(line: 231, column: 1194, scope: !725)
!725 = distinct !DILexicalBlock(scope: !221, file: !155, line: 231, column: 946)
!726 = !DILocation(line: 235, column: 2, scope: !221)
!727 = distinct !DISubprogram(name: "stm32_exti_set_callback", scope: !155, file: !155, line: 248, type: !728, scopeLine: 249, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !222)
!728 = !DISubroutineType(types: !729)
!729 = !{!140, !140, !210, !139}
!730 = !DILocalVariable(name: "line", arg: 1, scope: !727, file: !155, line: 248, type: !140)
!731 = !DILocation(line: 248, column: 33, scope: !727)
!732 = !DILocalVariable(name: "cb", arg: 2, scope: !727, file: !155, line: 248, type: !210)
!733 = !DILocation(line: 248, column: 61, scope: !727)
!734 = !DILocalVariable(name: "arg", arg: 3, scope: !727, file: !155, line: 248, type: !139)
!735 = !DILocation(line: 248, column: 71, scope: !727)
!736 = !DILocalVariable(name: "dev", scope: !727, file: !155, line: 250, type: !737)
!737 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !199)
!738 = !DILocation(line: 250, column: 29, scope: !727)
!739 = !DILocalVariable(name: "data", scope: !727, file: !155, line: 251, type: !740)
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 32)
!741 = !DILocation(line: 251, column: 26, scope: !727)
!742 = !DILocation(line: 251, column: 38, scope: !727)
!743 = !DILocation(line: 253, column: 7, scope: !744)
!744 = distinct !DILexicalBlock(scope: !727, file: !155, line: 253, column: 6)
!745 = !DILocation(line: 253, column: 13, scope: !744)
!746 = !DILocation(line: 253, column: 16, scope: !744)
!747 = !DILocation(line: 253, column: 22, scope: !744)
!748 = !DILocation(line: 253, column: 28, scope: !744)
!749 = !DILocation(line: 253, column: 25, scope: !744)
!750 = !DILocation(line: 253, column: 32, scope: !744)
!751 = !DILocation(line: 253, column: 36, scope: !744)
!752 = !DILocation(line: 253, column: 42, scope: !744)
!753 = !DILocation(line: 253, column: 45, scope: !744)
!754 = !DILocation(line: 253, column: 51, scope: !744)
!755 = !DILocation(line: 253, column: 59, scope: !744)
!756 = !DILocation(line: 253, column: 56, scope: !744)
!757 = !DILocation(line: 253, column: 6, scope: !727)
!758 = !DILocation(line: 254, column: 3, scope: !759)
!759 = distinct !DILexicalBlock(scope: !744, file: !155, line: 253, column: 65)
!760 = !DILocation(line: 258, column: 6, scope: !761)
!761 = distinct !DILexicalBlock(scope: !727, file: !155, line: 258, column: 6)
!762 = !DILocation(line: 258, column: 12, scope: !761)
!763 = !DILocation(line: 258, column: 15, scope: !761)
!764 = !DILocation(line: 258, column: 21, scope: !761)
!765 = !DILocation(line: 258, column: 24, scope: !761)
!766 = !DILocation(line: 258, column: 6, scope: !727)
!767 = !DILocation(line: 259, column: 3, scope: !768)
!768 = distinct !DILexicalBlock(scope: !761, file: !155, line: 258, column: 39)
!769 = !DILocation(line: 262, column: 22, scope: !727)
!770 = !DILocation(line: 262, column: 2, scope: !727)
!771 = !DILocation(line: 262, column: 8, scope: !727)
!772 = !DILocation(line: 262, column: 11, scope: !727)
!773 = !DILocation(line: 262, column: 17, scope: !727)
!774 = !DILocation(line: 262, column: 20, scope: !727)
!775 = !DILocation(line: 263, column: 24, scope: !727)
!776 = !DILocation(line: 263, column: 2, scope: !727)
!777 = !DILocation(line: 263, column: 8, scope: !727)
!778 = !DILocation(line: 263, column: 11, scope: !727)
!779 = !DILocation(line: 263, column: 17, scope: !727)
!780 = !DILocation(line: 263, column: 22, scope: !727)
!781 = !DILocation(line: 265, column: 2, scope: !727)
!782 = !DILocation(line: 266, column: 1, scope: !727)
!783 = distinct !DISubprogram(name: "stm32_exti_unset_callback", scope: !155, file: !155, line: 268, type: !563, scopeLine: 269, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !222)
!784 = !DILocalVariable(name: "line", arg: 1, scope: !783, file: !155, line: 268, type: !140)
!785 = !DILocation(line: 268, column: 36, scope: !783)
!786 = !DILocalVariable(name: "dev", scope: !783, file: !155, line: 270, type: !737)
!787 = !DILocation(line: 270, column: 29, scope: !783)
!788 = !DILocalVariable(name: "data", scope: !783, file: !155, line: 271, type: !740)
!789 = !DILocation(line: 271, column: 26, scope: !783)
!790 = !DILocation(line: 271, column: 38, scope: !783)
!791 = !DILocation(line: 273, column: 2, scope: !783)
!792 = !DILocation(line: 273, column: 8, scope: !783)
!793 = !DILocation(line: 273, column: 11, scope: !783)
!794 = !DILocation(line: 273, column: 17, scope: !783)
!795 = !DILocation(line: 273, column: 20, scope: !783)
!796 = !DILocation(line: 274, column: 2, scope: !783)
!797 = !DILocation(line: 274, column: 8, scope: !783)
!798 = !DILocation(line: 274, column: 11, scope: !783)
!799 = !DILocation(line: 274, column: 17, scope: !783)
!800 = !DILocation(line: 274, column: 22, scope: !783)
!801 = !DILocation(line: 275, column: 1, scope: !783)
!802 = distinct !DISubprogram(name: "sys_sflist_is_empty", scope: !497, file: !497, line: 335, type: !803, scopeLine: 335, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!803 = !DISubroutineType(types: !804)
!804 = !{!180, !805}
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 32)
!806 = !DILocalVariable(name: "list", arg: 1, scope: !802, file: !497, line: 335, type: !805)
!807 = !DILocation(line: 335, column: 55, scope: !802)
!808 = !DILocation(line: 335, column: 92, scope: !802)
!809 = !DILocation(line: 335, column: 71, scope: !802)
!810 = !DILocation(line: 335, column: 98, scope: !802)
!811 = !DILocation(line: 335, column: 63, scope: !802)
!812 = distinct !DISubprogram(name: "sys_sflist_peek_head", scope: !497, file: !497, line: 255, type: !813, scopeLine: 256, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!813 = !DISubroutineType(types: !814)
!814 = !{!501, !805}
!815 = !DILocalVariable(name: "list", arg: 1, scope: !812, file: !497, line: 255, type: !805)
!816 = !DILocation(line: 255, column: 64, scope: !812)
!817 = !DILocation(line: 257, column: 9, scope: !812)
!818 = !DILocation(line: 257, column: 15, scope: !812)
!819 = !DILocation(line: 257, column: 2, scope: !812)
!820 = distinct !DISubprogram(name: "stm32_fill_irq_table", scope: !155, file: !155, line: 198, type: !821, scopeLine: 199, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!821 = !DISubroutineType(types: !822)
!822 = !{null, !320, !320, !234}
!823 = !DILocalVariable(name: "start", arg: 1, scope: !820, file: !155, line: 198, type: !320)
!824 = !DILocation(line: 198, column: 41, scope: !820)
!825 = !DILocalVariable(name: "len", arg: 2, scope: !820, file: !155, line: 198, type: !320)
!826 = !DILocation(line: 198, column: 55, scope: !820)
!827 = !DILocalVariable(name: "irqn", arg: 3, scope: !820, file: !155, line: 198, type: !234)
!828 = !DILocation(line: 198, column: 68, scope: !820)
!829 = !DILocalVariable(name: "i", scope: !830, file: !155, line: 200, type: !140)
!830 = distinct !DILexicalBlock(scope: !820, file: !155, line: 200, column: 2)
!831 = !DILocation(line: 200, column: 11, scope: !830)
!832 = !DILocation(line: 200, column: 7, scope: !830)
!833 = !DILocation(line: 200, column: 18, scope: !834)
!834 = distinct !DILexicalBlock(scope: !830, file: !155, line: 200, column: 2)
!835 = !DILocation(line: 200, column: 22, scope: !834)
!836 = !DILocation(line: 200, column: 20, scope: !834)
!837 = !DILocation(line: 200, column: 2, scope: !830)
!838 = !DILocation(line: 201, column: 31, scope: !839)
!839 = distinct !DILexicalBlock(scope: !834, file: !155, line: 200, column: 32)
!840 = !DILocation(line: 201, column: 18, scope: !839)
!841 = !DILocation(line: 201, column: 26, scope: !839)
!842 = !DILocation(line: 201, column: 24, scope: !839)
!843 = !DILocation(line: 201, column: 3, scope: !839)
!844 = !DILocation(line: 201, column: 29, scope: !839)
!845 = !DILocation(line: 202, column: 2, scope: !839)
!846 = !DILocation(line: 200, column: 28, scope: !834)
!847 = !DILocation(line: 200, column: 2, scope: !834)
!848 = distinct !{!848, !837, !849}
!849 = !DILocation(line: 202, column: 2, scope: !830)
!850 = !DILocation(line: 203, column: 1, scope: !820)
!851 = distinct !DISubprogram(name: "stm32_exti_isr", scope: !155, file: !155, line: 173, type: !389, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!852 = !DILocalVariable(name: "exti_range", arg: 1, scope: !851, file: !155, line: 173, type: !170)
!853 = !DILocation(line: 173, column: 40, scope: !851)
!854 = !DILocalVariable(name: "dev", scope: !851, file: !155, line: 175, type: !199)
!855 = !DILocation(line: 175, column: 23, scope: !851)
!856 = !DILocalVariable(name: "data", scope: !851, file: !155, line: 176, type: !740)
!857 = !DILocation(line: 176, column: 26, scope: !851)
!858 = !DILocation(line: 176, column: 33, scope: !851)
!859 = !DILocation(line: 176, column: 38, scope: !851)
!860 = !DILocalVariable(name: "range", scope: !851, file: !155, line: 177, type: !861)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 32)
!862 = !DILocation(line: 177, column: 33, scope: !851)
!863 = !DILocation(line: 177, column: 41, scope: !851)
!864 = !DILocalVariable(name: "line", scope: !851, file: !155, line: 178, type: !140)
!865 = !DILocation(line: 178, column: 6, scope: !851)
!866 = !DILocalVariable(name: "i", scope: !867, file: !155, line: 181, type: !178)
!867 = distinct !DILexicalBlock(scope: !851, file: !155, line: 181, column: 2)
!868 = !DILocation(line: 181, column: 15, scope: !867)
!869 = !DILocation(line: 181, column: 7, scope: !867)
!870 = !DILocation(line: 181, column: 22, scope: !871)
!871 = distinct !DILexicalBlock(scope: !867, file: !155, line: 181, column: 2)
!872 = !DILocation(line: 181, column: 27, scope: !871)
!873 = !DILocation(line: 181, column: 34, scope: !871)
!874 = !DILocation(line: 181, column: 24, scope: !871)
!875 = !DILocation(line: 181, column: 2, scope: !867)
!876 = !DILocation(line: 182, column: 10, scope: !877)
!877 = distinct !DILexicalBlock(scope: !871, file: !155, line: 181, column: 44)
!878 = !DILocation(line: 182, column: 17, scope: !877)
!879 = !DILocation(line: 182, column: 25, scope: !877)
!880 = !DILocation(line: 182, column: 23, scope: !877)
!881 = !DILocation(line: 182, column: 8, scope: !877)
!882 = !DILocation(line: 184, column: 29, scope: !883)
!883 = distinct !DILexicalBlock(scope: !877, file: !155, line: 184, column: 7)
!884 = !DILocation(line: 184, column: 7, scope: !883)
!885 = !DILocation(line: 184, column: 35, scope: !883)
!886 = !DILocation(line: 184, column: 7, scope: !877)
!887 = !DILocation(line: 186, column: 29, scope: !888)
!888 = distinct !DILexicalBlock(scope: !883, file: !155, line: 184, column: 41)
!889 = !DILocation(line: 186, column: 4, scope: !888)
!890 = !DILocation(line: 189, column: 9, scope: !891)
!891 = distinct !DILexicalBlock(scope: !888, file: !155, line: 189, column: 8)
!892 = !DILocation(line: 189, column: 15, scope: !891)
!893 = !DILocation(line: 189, column: 18, scope: !891)
!894 = !DILocation(line: 189, column: 24, scope: !891)
!895 = !DILocation(line: 189, column: 8, scope: !888)
!896 = !DILocation(line: 190, column: 5, scope: !897)
!897 = distinct !DILexicalBlock(scope: !891, file: !155, line: 189, column: 28)
!898 = !DILocation(line: 193, column: 4, scope: !888)
!899 = !DILocation(line: 193, column: 10, scope: !888)
!900 = !DILocation(line: 193, column: 13, scope: !888)
!901 = !DILocation(line: 193, column: 19, scope: !888)
!902 = !DILocation(line: 193, column: 22, scope: !888)
!903 = !DILocation(line: 193, column: 28, scope: !888)
!904 = !DILocation(line: 193, column: 34, scope: !888)
!905 = !DILocation(line: 193, column: 37, scope: !888)
!906 = !DILocation(line: 193, column: 43, scope: !888)
!907 = !DILocation(line: 194, column: 3, scope: !888)
!908 = !DILocation(line: 195, column: 2, scope: !877)
!909 = !DILocation(line: 181, column: 40, scope: !871)
!910 = !DILocation(line: 181, column: 2, scope: !871)
!911 = distinct !{!911, !875, !912}
!912 = !DILocation(line: 195, column: 2, scope: !867)
!913 = !DILocation(line: 196, column: 1, scope: !851)
!914 = distinct !DISubprogram(name: "stm32_exti_is_pending", scope: !155, file: !155, line: 95, type: !915, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!915 = !DISubroutineType(types: !916)
!916 = !{!140, !140}
!917 = !DILocalVariable(name: "line", arg: 1, scope: !914, file: !155, line: 95, type: !140)
!918 = !DILocation(line: 95, column: 45, scope: !914)
!919 = !DILocation(line: 97, column: 6, scope: !920)
!920 = distinct !DILexicalBlock(scope: !914, file: !155, line: 97, column: 6)
!921 = !DILocation(line: 97, column: 11, scope: !920)
!922 = !DILocation(line: 97, column: 6, scope: !914)
!923 = !DILocation(line: 104, column: 55, scope: !924)
!924 = distinct !DILexicalBlock(scope: !920, file: !155, line: 97, column: 17)
!925 = !DILocation(line: 104, column: 41, scope: !924)
!926 = !DILocation(line: 104, column: 10, scope: !924)
!927 = !DILocation(line: 104, column: 3, scope: !924)
!928 = !DILocation(line: 108, column: 3, scope: !929)
!929 = distinct !DILexicalBlock(scope: !920, file: !155, line: 106, column: 9)
!930 = !DILocation(line: 110, column: 1, scope: !914)
!931 = distinct !DISubprogram(name: "stm32_exti_clear_pending", scope: !155, file: !155, line: 117, type: !563, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!932 = !DILocalVariable(name: "line", arg: 1, scope: !931, file: !155, line: 117, type: !140)
!933 = !DILocation(line: 117, column: 49, scope: !931)
!934 = !DILocation(line: 119, column: 6, scope: !935)
!935 = distinct !DILexicalBlock(scope: !931, file: !155, line: 119, column: 6)
!936 = !DILocation(line: 119, column: 11, scope: !935)
!937 = !DILocation(line: 119, column: 6, scope: !931)
!938 = !DILocation(line: 126, column: 45, scope: !939)
!939 = distinct !DILexicalBlock(scope: !935, file: !155, line: 119, column: 17)
!940 = !DILocation(line: 126, column: 31, scope: !939)
!941 = !DILocation(line: 126, column: 3, scope: !939)
!942 = !DILocation(line: 128, column: 2, scope: !939)
!943 = !DILocation(line: 131, column: 1, scope: !931)
!944 = distinct !DISubprogram(name: "LL_EXTI_IsActiveFlag_0_31", scope: !591, file: !591, line: 890, type: !945, scopeLine: 891, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!945 = !DISubroutineType(types: !946)
!946 = !{!136, !136}
!947 = !DILocalVariable(name: "ExtiLine", arg: 1, scope: !944, file: !591, line: 890, type: !136)
!948 = !DILocation(line: 890, column: 61, scope: !944)
!949 = !DILocation(line: 892, column: 63, scope: !944)
!950 = !DILocation(line: 892, column: 70, scope: !944)
!951 = !DILocation(line: 892, column: 67, scope: !944)
!952 = !DILocation(line: 892, column: 85, scope: !944)
!953 = !DILocation(line: 892, column: 81, scope: !944)
!954 = !DILocation(line: 892, column: 3, scope: !944)
!955 = distinct !DISubprogram(name: "LL_EXTI_ClearFlag_0_31", scope: !591, file: !591, line: 970, type: !592, scopeLine: 971, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !222)
!956 = !DILocalVariable(name: "ExtiLine", arg: 1, scope: !955, file: !591, line: 970, type: !136)
!957 = !DILocation(line: 970, column: 54, scope: !955)
!958 = !DILocation(line: 972, column: 62, scope: !955)
!959 = !DILocation(line: 972, column: 59, scope: !955)
!960 = !DILocation(line: 973, column: 1, scope: !955)
