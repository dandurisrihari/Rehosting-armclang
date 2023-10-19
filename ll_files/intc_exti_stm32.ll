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
@stm32_exti_init.__isr_stm32_exti_isr_irq_0 = internal global %struct._isr_list { i32 5, i32 0, ptr @stm32_exti_isr, ptr @stm32_exti_init.line_range_0 }, section ".intList", align 4, !dbg !229
@stm32_exti_init.line_range_1 = internal constant %struct.stm32_exti_range { i8 2, i8 2 }, align 1, !dbg !239
@stm32_exti_init.__isr_stm32_exti_isr_irq_1 = internal global %struct._isr_list { i32 6, i32 0, ptr @stm32_exti_isr, ptr @stm32_exti_init.line_range_1 }, section ".intList", align 4, !dbg !241
@stm32_exti_init.line_range_2 = internal constant %struct.stm32_exti_range { i8 4, i8 12 }, align 1, !dbg !243
@stm32_exti_init.__isr_stm32_exti_isr_irq_2 = internal global %struct._isr_list { i32 7, i32 0, ptr @stm32_exti_isr, ptr @stm32_exti_init.line_range_2 }, section ".intList", align 4, !dbg !245
@llvm.used = appending global [5 x ptr] [ptr @__device_dts_ord_49, ptr @__init___device_dts_ord_49, ptr @stm32_exti_init.__isr_stm32_exti_isr_irq_0, ptr @stm32_exti_init.__isr_stm32_exti_isr_irq_1, ptr @stm32_exti_init.__isr_stm32_exti_isr_irq_2], section "llvm.metadata"

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @z_impl_device_is_ready(ptr noundef %0) #0 !dbg !256 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !260, metadata !DIExpression()), !dbg !261
  %3 = load ptr, ptr %2, align 4, !dbg !262
  %4 = call zeroext i1 @z_device_is_ready(ptr noundef %3) #5, !dbg !263
  ret i1 %4, !dbg !264
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_k_object_access_grant(ptr noundef %0, ptr noundef %1) #0 !dbg !265 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !383, metadata !DIExpression()), !dbg !385
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !384, metadata !DIExpression()), !dbg !386
  %5 = load ptr, ptr %3, align 4, !dbg !387
  %6 = load ptr, ptr %4, align 4, !dbg !388
  ret void, !dbg !389
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_k_object_release(ptr noundef %0) #0 !dbg !390 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !394, metadata !DIExpression()), !dbg !395
  %3 = load ptr, ptr %2, align 4, !dbg !396
  ret void, !dbg !397
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_impl_k_object_alloc(i8 noundef zeroext %0) #0 !dbg !398 {
  %2 = alloca i8, align 1
  store i8 %0, ptr %2, align 1
  call void @llvm.dbg.declare(metadata ptr %2, metadata !402, metadata !DIExpression()), !dbg !403
  %3 = load i8, ptr %2, align 1, !dbg !404
  ret ptr null, !dbg !405
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_impl_k_object_alloc_size(i8 noundef zeroext %0, i32 noundef %1) #0 !dbg !406 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8 %0, ptr %3, align 1
  call void @llvm.dbg.declare(metadata ptr %3, metadata !410, metadata !DIExpression()), !dbg !412
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !411, metadata !DIExpression()), !dbg !413
  %5 = load i8, ptr %3, align 1, !dbg !414
  %6 = load i32, ptr %4, align 4, !dbg !415
  ret ptr null, !dbg !416
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_thread_timeout_expires_ticks(ptr noundef %0) #0 !dbg !417 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !425, metadata !DIExpression()), !dbg !426
  %3 = load ptr, ptr %2, align 4, !dbg !427
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !428
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !429
  %6 = call i64 @z_timeout_expires(ptr noundef %5) #5, !dbg !430
  ret i64 %6, !dbg !431
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_thread_timeout_remaining_ticks(ptr noundef %0) #0 !dbg !432 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !434, metadata !DIExpression()), !dbg !435
  %3 = load ptr, ptr %2, align 4, !dbg !436
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !437
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !438
  %6 = call i64 @z_timeout_remaining(ptr noundef %5) #5, !dbg !439
  ret i64 %6, !dbg !440
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_timer_expires_ticks(ptr noundef %0) #0 !dbg !441 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !464, metadata !DIExpression()), !dbg !465
  %3 = load ptr, ptr %2, align 4, !dbg !466
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !467
  %5 = call i64 @z_timeout_expires(ptr noundef %4) #5, !dbg !468
  ret i64 %5, !dbg !469
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_timer_remaining_ticks(ptr noundef %0) #0 !dbg !470 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !472, metadata !DIExpression()), !dbg !473
  %3 = load ptr, ptr %2, align 4, !dbg !474
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !475
  %5 = call i64 @z_timeout_remaining(ptr noundef %4) #5, !dbg !476
  ret i64 %5, !dbg !477
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_k_timer_user_data_set(ptr noundef %0, ptr noundef %1) #0 !dbg !478 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !482, metadata !DIExpression()), !dbg !484
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !483, metadata !DIExpression()), !dbg !485
  %5 = load ptr, ptr %4, align 4, !dbg !486
  %6 = load ptr, ptr %3, align 4, !dbg !487
  %7 = getelementptr inbounds %struct.k_timer, ptr %6, i32 0, i32 6, !dbg !488
  store ptr %5, ptr %7, align 4, !dbg !489
  ret void, !dbg !490
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_impl_k_timer_user_data_get(ptr noundef %0) #0 !dbg !491 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !495, metadata !DIExpression()), !dbg !496
  %3 = load ptr, ptr %2, align 4, !dbg !497
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 6, !dbg !498
  %5 = load ptr, ptr %4, align 4, !dbg !498
  ret ptr %5, !dbg !499
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_queue_is_empty(ptr noundef %0) #0 !dbg !500 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !522, metadata !DIExpression()), !dbg !523
  %3 = load ptr, ptr %2, align 4, !dbg !524
  %4 = getelementptr inbounds %struct.k_queue, ptr %3, i32 0, i32 0, !dbg !525
  %5 = call zeroext i1 @sys_sflist_is_empty(ptr noundef %4) #5, !dbg !526
  %6 = zext i1 %5 to i32, !dbg !527
  ret i32 %6, !dbg !528
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_sem_count_get(ptr noundef %0) #0 !dbg !529 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !539, metadata !DIExpression()), !dbg !540
  %3 = load ptr, ptr %2, align 4, !dbg !541
  %4 = getelementptr inbounds %struct.k_sem, ptr %3, i32 0, i32 1, !dbg !542
  %5 = load i32, ptr %4, align 4, !dbg !542
  ret i32 %5, !dbg !543
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_msgq_num_free_get(ptr noundef %0) #0 !dbg !544 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !562, metadata !DIExpression()), !dbg !563
  %3 = load ptr, ptr %2, align 4, !dbg !564
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 3, !dbg !565
  %5 = load i32, ptr %4, align 4, !dbg !565
  %6 = load ptr, ptr %2, align 4, !dbg !566
  %7 = getelementptr inbounds %struct.k_msgq, ptr %6, i32 0, i32 8, !dbg !567
  %8 = load i32, ptr %7, align 4, !dbg !567
  %9 = sub i32 %5, %8, !dbg !568
  ret i32 %9, !dbg !569
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_msgq_num_used_get(ptr noundef %0) #0 !dbg !570 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !572, metadata !DIExpression()), !dbg !573
  %3 = load ptr, ptr %2, align 4, !dbg !574
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 8, !dbg !575
  %5 = load i32, ptr %4, align 4, !dbg !575
  ret i32 %5, !dbg !576
}

; Function Attrs: nounwind optsize
define hidden void @stm32_exti_enable(i32 noundef %0) #1 !dbg !577 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !581, metadata !DIExpression()), !dbg !583
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #6, !dbg !584
  call void @llvm.dbg.declare(metadata ptr %3, metadata !582, metadata !DIExpression()), !dbg !585
  store i32 0, ptr %3, align 4, !dbg !585
  %4 = load i32, ptr %2, align 4, !dbg !586
  %5 = icmp sge i32 %4, 16, !dbg !588
  br i1 %5, label %6, label %7, !dbg !589

6:                                                ; preds = %1
  br label %7, !dbg !590

7:                                                ; preds = %6, %1
  %8 = load i32, ptr %2, align 4, !dbg !592
  %9 = getelementptr inbounds [16 x i8], ptr @exti_irq_table, i32 0, i32 %8, !dbg !593
  %10 = load i8, ptr %9, align 1, !dbg !593
  %11 = sext i8 %10 to i32, !dbg !593
  store i32 %11, ptr %3, align 4, !dbg !594
  %12 = load i32, ptr %3, align 4, !dbg !595
  %13 = icmp eq i32 %12, 255, !dbg !597
  br i1 %13, label %14, label %15, !dbg !598

14:                                               ; preds = %7
  br label %15, !dbg !599

15:                                               ; preds = %14, %7
  %16 = load i32, ptr %2, align 4, !dbg !601
  %17 = shl i32 1, %16, !dbg !602
  call void @LL_EXTI_EnableIT_0_31(i32 noundef %17) #5, !dbg !603
  %18 = load i32, ptr %3, align 4, !dbg !604
  call void @arch_irq_enable(i32 noundef %18) #5, !dbg !605
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #6, !dbg !606
  ret void, !dbg !606
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: inlinehint nounwind optsize
define internal void @LL_EXTI_EnableIT_0_31(i32 noundef %0) #0 !dbg !607 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !612, metadata !DIExpression()), !dbg !613
  %3 = load i32, ptr %2, align 4, !dbg !614
  %4 = load volatile i32, ptr inttoptr (i32 1073808384 to ptr), align 4, !dbg !615
  %5 = or i32 %4, %3, !dbg !615
  store volatile i32 %5, ptr inttoptr (i32 1073808384 to ptr), align 4, !dbg !615
  ret void, !dbg !616
}

; Function Attrs: optsize
declare !dbg !617 dso_local void @arch_irq_enable(i32 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind optsize
define hidden void @stm32_exti_disable(i32 noundef %0) #1 !dbg !621 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !623, metadata !DIExpression()), !dbg !624
  call void @z_stm32_hsem_lock(i32 noundef 0, i32 noundef 1048576) #5, !dbg !625
  %3 = load i32, ptr %2, align 4, !dbg !626
  %4 = icmp slt i32 %3, 32, !dbg !628
  br i1 %4, label %5, label %8, !dbg !629

5:                                                ; preds = %1
  %6 = load i32, ptr %2, align 4, !dbg !630
  %7 = shl i32 1, %6, !dbg !632
  call void @LL_EXTI_DisableIT_0_31(i32 noundef %7) #5, !dbg !633
  br label %9, !dbg !634

8:                                                ; preds = %1
  br label %9

9:                                                ; preds = %8, %5
  call void @z_stm32_hsem_unlock(i32 noundef 0) #5, !dbg !635
  ret void, !dbg !636
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_stm32_hsem_lock(i32 noundef %0, i32 noundef %1) #0 !dbg !637 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !642, metadata !DIExpression()), !dbg !644
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !643, metadata !DIExpression()), !dbg !645
  ret void, !dbg !646
}

; Function Attrs: inlinehint nounwind optsize
define internal void @LL_EXTI_DisableIT_0_31(i32 noundef %0) #0 !dbg !647 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !649, metadata !DIExpression()), !dbg !650
  %3 = load i32, ptr %2, align 4, !dbg !651
  %4 = xor i32 %3, -1, !dbg !652
  %5 = load volatile i32, ptr inttoptr (i32 1073808384 to ptr), align 4, !dbg !653
  %6 = and i32 %5, %4, !dbg !653
  store volatile i32 %6, ptr inttoptr (i32 1073808384 to ptr), align 4, !dbg !653
  ret void, !dbg !654
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_stm32_hsem_unlock(i32 noundef %0) #0 !dbg !655 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !657, metadata !DIExpression()), !dbg !658
  ret void, !dbg !659
}

; Function Attrs: nounwind optsize
define hidden void @stm32_exti_trigger(i32 noundef %0, i32 noundef %1) #1 !dbg !660 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !664, metadata !DIExpression()), !dbg !666
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !665, metadata !DIExpression()), !dbg !667
  %5 = load i32, ptr %3, align 4, !dbg !668
  %6 = icmp sge i32 %5, 32, !dbg !670
  br i1 %6, label %7, label %8, !dbg !671

7:                                                ; preds = %2
  br label %8, !dbg !672

8:                                                ; preds = %7, %2
  call void @z_stm32_hsem_lock(i32 noundef 0, i32 noundef 1048576) #5, !dbg !674
  %9 = load i32, ptr %4, align 4, !dbg !675
  switch i32 %9, label %30 [
    i32 0, label %10
    i32 1, label %15
    i32 2, label %20
    i32 3, label %25
  ], !dbg !676

10:                                               ; preds = %8
  %11 = load i32, ptr %3, align 4, !dbg !677
  %12 = shl i32 1, %11, !dbg !679
  call void @LL_EXTI_DisableRisingTrig_0_31(i32 noundef %12) #5, !dbg !680
  %13 = load i32, ptr %3, align 4, !dbg !681
  %14 = shl i32 1, %13, !dbg !682
  call void @LL_EXTI_DisableFallingTrig_0_31(i32 noundef %14) #5, !dbg !683
  br label %31, !dbg !684

15:                                               ; preds = %8
  %16 = load i32, ptr %3, align 4, !dbg !685
  %17 = shl i32 1, %16, !dbg !686
  call void @LL_EXTI_EnableRisingTrig_0_31(i32 noundef %17) #5, !dbg !687
  %18 = load i32, ptr %3, align 4, !dbg !688
  %19 = shl i32 1, %18, !dbg !689
  call void @LL_EXTI_DisableFallingTrig_0_31(i32 noundef %19) #5, !dbg !690
  br label %31, !dbg !691

20:                                               ; preds = %8
  %21 = load i32, ptr %3, align 4, !dbg !692
  %22 = shl i32 1, %21, !dbg !693
  call void @LL_EXTI_EnableFallingTrig_0_31(i32 noundef %22) #5, !dbg !694
  %23 = load i32, ptr %3, align 4, !dbg !695
  %24 = shl i32 1, %23, !dbg !696
  call void @LL_EXTI_DisableRisingTrig_0_31(i32 noundef %24) #5, !dbg !697
  br label %31, !dbg !698

25:                                               ; preds = %8
  %26 = load i32, ptr %3, align 4, !dbg !699
  %27 = shl i32 1, %26, !dbg !700
  call void @LL_EXTI_EnableRisingTrig_0_31(i32 noundef %27) #5, !dbg !701
  %28 = load i32, ptr %3, align 4, !dbg !702
  %29 = shl i32 1, %28, !dbg !703
  call void @LL_EXTI_EnableFallingTrig_0_31(i32 noundef %29) #5, !dbg !704
  br label %31, !dbg !705

30:                                               ; preds = %8
  br label %31, !dbg !706

31:                                               ; preds = %30, %25, %20, %15, %10
  call void @z_stm32_hsem_unlock(i32 noundef 0) #5, !dbg !707
  ret void, !dbg !708
}

; Function Attrs: inlinehint nounwind optsize
define internal void @LL_EXTI_DisableRisingTrig_0_31(i32 noundef %0) #0 !dbg !709 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !711, metadata !DIExpression()), !dbg !712
  %3 = load i32, ptr %2, align 4, !dbg !713
  %4 = xor i32 %3, -1, !dbg !714
  %5 = load volatile i32, ptr getelementptr inbounds (%struct.EXTI_TypeDef, ptr inttoptr (i32 1073808384 to ptr), i32 0, i32 2), align 4, !dbg !715
  %6 = and i32 %5, %4, !dbg !715
  store volatile i32 %6, ptr getelementptr inbounds (%struct.EXTI_TypeDef, ptr inttoptr (i32 1073808384 to ptr), i32 0, i32 2), align 4, !dbg !715
  ret void, !dbg !716
}

; Function Attrs: inlinehint nounwind optsize
define internal void @LL_EXTI_DisableFallingTrig_0_31(i32 noundef %0) #0 !dbg !717 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !719, metadata !DIExpression()), !dbg !720
  %3 = load i32, ptr %2, align 4, !dbg !721
  %4 = xor i32 %3, -1, !dbg !722
  %5 = load volatile i32, ptr getelementptr inbounds (%struct.EXTI_TypeDef, ptr inttoptr (i32 1073808384 to ptr), i32 0, i32 3), align 4, !dbg !723
  %6 = and i32 %5, %4, !dbg !723
  store volatile i32 %6, ptr getelementptr inbounds (%struct.EXTI_TypeDef, ptr inttoptr (i32 1073808384 to ptr), i32 0, i32 3), align 4, !dbg !723
  ret void, !dbg !724
}

; Function Attrs: inlinehint nounwind optsize
define internal void @LL_EXTI_EnableRisingTrig_0_31(i32 noundef %0) #0 !dbg !725 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !727, metadata !DIExpression()), !dbg !728
  %3 = load i32, ptr %2, align 4, !dbg !729
  %4 = load volatile i32, ptr getelementptr inbounds (%struct.EXTI_TypeDef, ptr inttoptr (i32 1073808384 to ptr), i32 0, i32 2), align 4, !dbg !730
  %5 = or i32 %4, %3, !dbg !730
  store volatile i32 %5, ptr getelementptr inbounds (%struct.EXTI_TypeDef, ptr inttoptr (i32 1073808384 to ptr), i32 0, i32 2), align 4, !dbg !730
  ret void, !dbg !731
}

; Function Attrs: inlinehint nounwind optsize
define internal void @LL_EXTI_EnableFallingTrig_0_31(i32 noundef %0) #0 !dbg !732 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !734, metadata !DIExpression()), !dbg !735
  %3 = load i32, ptr %2, align 4, !dbg !736
  %4 = load volatile i32, ptr getelementptr inbounds (%struct.EXTI_TypeDef, ptr inttoptr (i32 1073808384 to ptr), i32 0, i32 3), align 4, !dbg !737
  %5 = or i32 %4, %3, !dbg !737
  store volatile i32 %5, ptr getelementptr inbounds (%struct.EXTI_TypeDef, ptr inttoptr (i32 1073808384 to ptr), i32 0, i32 3), align 4, !dbg !737
  ret void, !dbg !738
}

; Function Attrs: nounwind optsize
define internal i32 @stm32_exti_init(ptr noundef %0) #1 !dbg !221 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !223, metadata !DIExpression()), !dbg !739
  %3 = load ptr, ptr %2, align 4, !dbg !740
  %4 = load i8, ptr @stm32_exti_init.line_range_0, align 1, !dbg !741
  %5 = load i8, ptr getelementptr inbounds (%struct.stm32_exti_range, ptr @stm32_exti_init.line_range_0, i32 0, i32 1), align 1, !dbg !742
  call void @stm32_fill_irq_table(i8 noundef signext %4, i8 noundef signext %5, i32 noundef 5) #5, !dbg !743
  call void @z_arm_irq_priority_set(i32 noundef 5, i32 noundef 0, i32 noundef 0) #5, !dbg !744
  %6 = load i8, ptr @stm32_exti_init.line_range_1, align 1, !dbg !746
  %7 = load i8, ptr getelementptr inbounds (%struct.stm32_exti_range, ptr @stm32_exti_init.line_range_1, i32 0, i32 1), align 1, !dbg !747
  call void @stm32_fill_irq_table(i8 noundef signext %6, i8 noundef signext %7, i32 noundef 6) #5, !dbg !748
  call void @z_arm_irq_priority_set(i32 noundef 6, i32 noundef 0, i32 noundef 0) #5, !dbg !749
  %8 = load i8, ptr @stm32_exti_init.line_range_2, align 1, !dbg !751
  %9 = load i8, ptr getelementptr inbounds (%struct.stm32_exti_range, ptr @stm32_exti_init.line_range_2, i32 0, i32 1), align 1, !dbg !752
  call void @stm32_fill_irq_table(i8 noundef signext %8, i8 noundef signext %9, i32 noundef 7) #5, !dbg !753
  call void @z_arm_irq_priority_set(i32 noundef 7, i32 noundef 0, i32 noundef 0) #5, !dbg !754
  ret i32 0, !dbg !756
}

; Function Attrs: nounwind optsize
define hidden i32 @stm32_exti_set_callback(i32 noundef %0, ptr noundef %1, ptr noundef %2) #1 !dbg !757 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  %10 = alloca i32, align 4
  store i32 %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !761, metadata !DIExpression()), !dbg !768
  store ptr %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !762, metadata !DIExpression()), !dbg !769
  store ptr %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !763, metadata !DIExpression()), !dbg !770
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #6, !dbg !771
  call void @llvm.dbg.declare(metadata ptr %8, metadata !764, metadata !DIExpression()), !dbg !772
  store ptr @__device_dts_ord_49, ptr %8, align 4, !dbg !772
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #6, !dbg !773
  call void @llvm.dbg.declare(metadata ptr %9, metadata !766, metadata !DIExpression()), !dbg !774
  %11 = load ptr, ptr getelementptr inbounds (%struct.device, ptr @__device_dts_ord_49, i32 0, i32 4), align 4, !dbg !775
  store ptr %11, ptr %9, align 4, !dbg !774
  %12 = load ptr, ptr %9, align 4, !dbg !776
  %13 = getelementptr inbounds %struct.stm32_exti_data, ptr %12, i32 0, i32 0, !dbg !778
  %14 = load i32, ptr %5, align 4, !dbg !779
  %15 = getelementptr inbounds [16 x %struct.__exti_cb], ptr %13, i32 0, i32 %14, !dbg !776
  %16 = getelementptr inbounds %struct.__exti_cb, ptr %15, i32 0, i32 0, !dbg !780
  %17 = load ptr, ptr %16, align 4, !dbg !780
  %18 = load ptr, ptr %6, align 4, !dbg !781
  %19 = icmp eq ptr %17, %18, !dbg !782
  br i1 %19, label %20, label %30, !dbg !783

20:                                               ; preds = %3
  %21 = load ptr, ptr %9, align 4, !dbg !784
  %22 = getelementptr inbounds %struct.stm32_exti_data, ptr %21, i32 0, i32 0, !dbg !785
  %23 = load i32, ptr %5, align 4, !dbg !786
  %24 = getelementptr inbounds [16 x %struct.__exti_cb], ptr %22, i32 0, i32 %23, !dbg !784
  %25 = getelementptr inbounds %struct.__exti_cb, ptr %24, i32 0, i32 1, !dbg !787
  %26 = load ptr, ptr %25, align 4, !dbg !787
  %27 = load ptr, ptr %7, align 4, !dbg !788
  %28 = icmp eq ptr %26, %27, !dbg !789
  br i1 %28, label %29, label %30, !dbg !790

29:                                               ; preds = %20
  store i32 0, ptr %4, align 4, !dbg !791
  store i32 1, ptr %10, align 4
  br label %52, !dbg !791

30:                                               ; preds = %20, %3
  %31 = load ptr, ptr %9, align 4, !dbg !793
  %32 = getelementptr inbounds %struct.stm32_exti_data, ptr %31, i32 0, i32 0, !dbg !795
  %33 = load i32, ptr %5, align 4, !dbg !796
  %34 = getelementptr inbounds [16 x %struct.__exti_cb], ptr %32, i32 0, i32 %33, !dbg !793
  %35 = getelementptr inbounds %struct.__exti_cb, ptr %34, i32 0, i32 0, !dbg !797
  %36 = load ptr, ptr %35, align 4, !dbg !797
  %37 = icmp ne ptr %36, null, !dbg !798
  br i1 %37, label %38, label %39, !dbg !799

38:                                               ; preds = %30
  store i32 -16, ptr %4, align 4, !dbg !800
  store i32 1, ptr %10, align 4
  br label %52, !dbg !800

39:                                               ; preds = %30
  %40 = load ptr, ptr %6, align 4, !dbg !802
  %41 = load ptr, ptr %9, align 4, !dbg !803
  %42 = getelementptr inbounds %struct.stm32_exti_data, ptr %41, i32 0, i32 0, !dbg !804
  %43 = load i32, ptr %5, align 4, !dbg !805
  %44 = getelementptr inbounds [16 x %struct.__exti_cb], ptr %42, i32 0, i32 %43, !dbg !803
  %45 = getelementptr inbounds %struct.__exti_cb, ptr %44, i32 0, i32 0, !dbg !806
  store ptr %40, ptr %45, align 4, !dbg !807
  %46 = load ptr, ptr %7, align 4, !dbg !808
  %47 = load ptr, ptr %9, align 4, !dbg !809
  %48 = getelementptr inbounds %struct.stm32_exti_data, ptr %47, i32 0, i32 0, !dbg !810
  %49 = load i32, ptr %5, align 4, !dbg !811
  %50 = getelementptr inbounds [16 x %struct.__exti_cb], ptr %48, i32 0, i32 %49, !dbg !809
  %51 = getelementptr inbounds %struct.__exti_cb, ptr %50, i32 0, i32 1, !dbg !812
  store ptr %46, ptr %51, align 4, !dbg !813
  store i32 0, ptr %4, align 4, !dbg !814
  store i32 1, ptr %10, align 4
  br label %52, !dbg !814

52:                                               ; preds = %39, %38, %29
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #6, !dbg !815
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #6, !dbg !815
  %53 = load i32, ptr %4, align 4, !dbg !815
  ret i32 %53, !dbg !815
}

; Function Attrs: nounwind optsize
define hidden void @stm32_exti_unset_callback(i32 noundef %0) #1 !dbg !816 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !818, metadata !DIExpression()), !dbg !821
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #6, !dbg !822
  call void @llvm.dbg.declare(metadata ptr %3, metadata !819, metadata !DIExpression()), !dbg !823
  store ptr @__device_dts_ord_49, ptr %3, align 4, !dbg !823
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #6, !dbg !824
  call void @llvm.dbg.declare(metadata ptr %4, metadata !820, metadata !DIExpression()), !dbg !825
  %5 = load ptr, ptr getelementptr inbounds (%struct.device, ptr @__device_dts_ord_49, i32 0, i32 4), align 4, !dbg !826
  store ptr %5, ptr %4, align 4, !dbg !825
  %6 = load ptr, ptr %4, align 4, !dbg !827
  %7 = getelementptr inbounds %struct.stm32_exti_data, ptr %6, i32 0, i32 0, !dbg !828
  %8 = load i32, ptr %2, align 4, !dbg !829
  %9 = getelementptr inbounds [16 x %struct.__exti_cb], ptr %7, i32 0, i32 %8, !dbg !827
  %10 = getelementptr inbounds %struct.__exti_cb, ptr %9, i32 0, i32 0, !dbg !830
  store ptr null, ptr %10, align 4, !dbg !831
  %11 = load ptr, ptr %4, align 4, !dbg !832
  %12 = getelementptr inbounds %struct.stm32_exti_data, ptr %11, i32 0, i32 0, !dbg !833
  %13 = load i32, ptr %2, align 4, !dbg !834
  %14 = getelementptr inbounds [16 x %struct.__exti_cb], ptr %12, i32 0, i32 %13, !dbg !832
  %15 = getelementptr inbounds %struct.__exti_cb, ptr %14, i32 0, i32 1, !dbg !835
  store ptr null, ptr %15, align 4, !dbg !836
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #6, !dbg !837
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #6, !dbg !837
  ret void, !dbg !837
}

; Function Attrs: optsize
declare !dbg !838 dso_local zeroext i1 @z_device_is_ready(ptr noundef) #4

; Function Attrs: optsize
declare !dbg !839 dso_local i64 @z_timeout_expires(ptr noundef) #4

; Function Attrs: optsize
declare !dbg !844 dso_local i64 @z_timeout_remaining(ptr noundef) #4

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @sys_sflist_is_empty(ptr noundef %0) #0 !dbg !845 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !850, metadata !DIExpression()), !dbg !851
  %3 = load ptr, ptr %2, align 4, !dbg !852
  %4 = call ptr @sys_sflist_peek_head(ptr noundef %3) #5, !dbg !853
  %5 = icmp eq ptr %4, null, !dbg !854
  ret i1 %5, !dbg !855
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @sys_sflist_peek_head(ptr noundef %0) #0 !dbg !856 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !860, metadata !DIExpression()), !dbg !861
  %3 = load ptr, ptr %2, align 4, !dbg !862
  %4 = getelementptr inbounds %struct._sflist, ptr %3, i32 0, i32 0, !dbg !863
  %5 = load ptr, ptr %4, align 4, !dbg !863
  ret ptr %5, !dbg !864
}

; Function Attrs: nounwind optsize
define internal void @stm32_fill_irq_table(i8 noundef signext %0, i8 noundef signext %1, i32 noundef %2) #1 !dbg !865 {
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8 %0, ptr %4, align 1
  call void @llvm.dbg.declare(metadata ptr %4, metadata !869, metadata !DIExpression()), !dbg !874
  store i8 %1, ptr %5, align 1
  call void @llvm.dbg.declare(metadata ptr %5, metadata !870, metadata !DIExpression()), !dbg !875
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !871, metadata !DIExpression()), !dbg !876
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #6, !dbg !877
  call void @llvm.dbg.declare(metadata ptr %7, metadata !872, metadata !DIExpression()), !dbg !878
  store i32 0, ptr %7, align 4, !dbg !878
  br label %8, !dbg !877

8:                                                ; preds = %22, %3
  %9 = load i32, ptr %7, align 4, !dbg !879
  %10 = load i8, ptr %5, align 1, !dbg !881
  %11 = sext i8 %10 to i32, !dbg !881
  %12 = icmp slt i32 %9, %11, !dbg !882
  br i1 %12, label %14, label %13, !dbg !883

13:                                               ; preds = %8
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #6, !dbg !884
  br label %25

14:                                               ; preds = %8
  %15 = load i32, ptr %6, align 4, !dbg !885
  %16 = trunc i32 %15 to i8, !dbg !885
  %17 = load i8, ptr %4, align 1, !dbg !887
  %18 = sext i8 %17 to i32, !dbg !887
  %19 = load i32, ptr %7, align 4, !dbg !888
  %20 = add nsw i32 %18, %19, !dbg !889
  %21 = getelementptr inbounds [16 x i8], ptr @exti_irq_table, i32 0, i32 %20, !dbg !890
  store i8 %16, ptr %21, align 1, !dbg !891
  br label %22, !dbg !892

22:                                               ; preds = %14
  %23 = load i32, ptr %7, align 4, !dbg !893
  %24 = add nsw i32 %23, 1, !dbg !893
  store i32 %24, ptr %7, align 4, !dbg !893
  br label %8, !dbg !884, !llvm.loop !894

25:                                               ; preds = %13
  ret void, !dbg !896
}

; Function Attrs: nounwind optsize
define internal void @stm32_exti_isr(ptr noundef %0) #1 !dbg !897 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !899, metadata !DIExpression()), !dbg !907
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #6, !dbg !908
  call void @llvm.dbg.declare(metadata ptr %3, metadata !900, metadata !DIExpression()), !dbg !909
  store ptr @__device_dts_ord_49, ptr %3, align 4, !dbg !909
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #6, !dbg !910
  call void @llvm.dbg.declare(metadata ptr %4, metadata !901, metadata !DIExpression()), !dbg !911
  %8 = load ptr, ptr %3, align 4, !dbg !912
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 4, !dbg !913
  %10 = load ptr, ptr %9, align 4, !dbg !913
  store ptr %10, ptr %4, align 4, !dbg !911
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #6, !dbg !914
  call void @llvm.dbg.declare(metadata ptr %5, metadata !902, metadata !DIExpression()), !dbg !915
  %11 = load ptr, ptr %2, align 4, !dbg !916
  store ptr %11, ptr %5, align 4, !dbg !915
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #6, !dbg !917
  call void @llvm.dbg.declare(metadata ptr %6, metadata !904, metadata !DIExpression()), !dbg !918
  call void @llvm.lifetime.start.p0(i64 1, ptr %7) #6, !dbg !919
  call void @llvm.dbg.declare(metadata ptr %7, metadata !905, metadata !DIExpression()), !dbg !920
  store i8 0, ptr %7, align 1, !dbg !920
  br label %12, !dbg !919

12:                                               ; preds = %57, %1
  %13 = load i8, ptr %7, align 1, !dbg !921
  %14 = zext i8 %13 to i32, !dbg !921
  %15 = load ptr, ptr %5, align 4, !dbg !923
  %16 = getelementptr inbounds %struct.stm32_exti_range, ptr %15, i32 0, i32 1, !dbg !924
  %17 = load i8, ptr %16, align 1, !dbg !924
  %18 = zext i8 %17 to i32, !dbg !923
  %19 = icmp sle i32 %14, %18, !dbg !925
  br i1 %19, label %21, label %20, !dbg !926

20:                                               ; preds = %12
  call void @llvm.lifetime.end.p0(i64 1, ptr %7) #6, !dbg !927
  br label %60

21:                                               ; preds = %12
  %22 = load ptr, ptr %5, align 4, !dbg !928
  %23 = getelementptr inbounds %struct.stm32_exti_range, ptr %22, i32 0, i32 0, !dbg !930
  %24 = load i8, ptr %23, align 1, !dbg !930
  %25 = zext i8 %24 to i32, !dbg !928
  %26 = load i8, ptr %7, align 1, !dbg !931
  %27 = zext i8 %26 to i32, !dbg !931
  %28 = add nsw i32 %25, %27, !dbg !932
  store i32 %28, ptr %6, align 4, !dbg !933
  %29 = load i32, ptr %6, align 4, !dbg !934
  %30 = call i32 @stm32_exti_is_pending(i32 noundef %29) #5, !dbg !936
  %31 = icmp ne i32 %30, 0, !dbg !937
  br i1 %31, label %32, label %56, !dbg !938

32:                                               ; preds = %21
  %33 = load i32, ptr %6, align 4, !dbg !939
  call void @stm32_exti_clear_pending(i32 noundef %33) #5, !dbg !941
  %34 = load ptr, ptr %4, align 4, !dbg !942
  %35 = getelementptr inbounds %struct.stm32_exti_data, ptr %34, i32 0, i32 0, !dbg !944
  %36 = load i32, ptr %6, align 4, !dbg !945
  %37 = getelementptr inbounds [16 x %struct.__exti_cb], ptr %35, i32 0, i32 %36, !dbg !942
  %38 = getelementptr inbounds %struct.__exti_cb, ptr %37, i32 0, i32 0, !dbg !946
  %39 = load ptr, ptr %38, align 4, !dbg !946
  %40 = icmp ne ptr %39, null, !dbg !942
  br i1 %40, label %42, label %41, !dbg !947

41:                                               ; preds = %32
  br label %57, !dbg !948

42:                                               ; preds = %32
  %43 = load ptr, ptr %4, align 4, !dbg !950
  %44 = getelementptr inbounds %struct.stm32_exti_data, ptr %43, i32 0, i32 0, !dbg !951
  %45 = load i32, ptr %6, align 4, !dbg !952
  %46 = getelementptr inbounds [16 x %struct.__exti_cb], ptr %44, i32 0, i32 %45, !dbg !950
  %47 = getelementptr inbounds %struct.__exti_cb, ptr %46, i32 0, i32 0, !dbg !953
  %48 = load ptr, ptr %47, align 4, !dbg !953
  %49 = load i32, ptr %6, align 4, !dbg !954
  %50 = load ptr, ptr %4, align 4, !dbg !955
  %51 = getelementptr inbounds %struct.stm32_exti_data, ptr %50, i32 0, i32 0, !dbg !956
  %52 = load i32, ptr %6, align 4, !dbg !957
  %53 = getelementptr inbounds [16 x %struct.__exti_cb], ptr %51, i32 0, i32 %52, !dbg !955
  %54 = getelementptr inbounds %struct.__exti_cb, ptr %53, i32 0, i32 1, !dbg !958
  %55 = load ptr, ptr %54, align 4, !dbg !958
  call void %48(i32 noundef %49, ptr noundef %55) #5, !dbg !950
  br label %56, !dbg !959

56:                                               ; preds = %42, %21
  br label %57, !dbg !960

57:                                               ; preds = %56, %41
  %58 = load i8, ptr %7, align 1, !dbg !961
  %59 = add i8 %58, 1, !dbg !961
  store i8 %59, ptr %7, align 1, !dbg !961
  br label %12, !dbg !927, !llvm.loop !962

60:                                               ; preds = %20
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #6, !dbg !964
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #6, !dbg !964
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #6, !dbg !964
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #6, !dbg !964
  ret void, !dbg !964
}

; Function Attrs: optsize
declare !dbg !965 dso_local void @z_arm_irq_priority_set(i32 noundef, i32 noundef, i32 noundef) #4

; Function Attrs: inlinehint nounwind optsize
define internal i32 @stm32_exti_is_pending(i32 noundef %0) #0 !dbg !968 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !972, metadata !DIExpression()), !dbg !973
  %4 = load i32, ptr %3, align 4, !dbg !974
  %5 = icmp slt i32 %4, 32, !dbg !976
  br i1 %5, label %6, label %10, !dbg !977

6:                                                ; preds = %1
  %7 = load i32, ptr %3, align 4, !dbg !978
  %8 = shl i32 1, %7, !dbg !980
  %9 = call i32 @LL_EXTI_IsActiveFlag_0_31(i32 noundef %8) #5, !dbg !981
  store i32 %9, ptr %2, align 4, !dbg !982
  br label %11, !dbg !982

10:                                               ; preds = %1
  store i32 0, ptr %2, align 4, !dbg !983
  br label %11, !dbg !983

11:                                               ; preds = %10, %6
  %12 = load i32, ptr %2, align 4, !dbg !985
  ret i32 %12, !dbg !985
}

; Function Attrs: inlinehint nounwind optsize
define internal void @stm32_exti_clear_pending(i32 noundef %0) #0 !dbg !986 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !988, metadata !DIExpression()), !dbg !989
  %3 = load i32, ptr %2, align 4, !dbg !990
  %4 = icmp slt i32 %3, 32, !dbg !992
  br i1 %4, label %5, label %8, !dbg !993

5:                                                ; preds = %1
  %6 = load i32, ptr %2, align 4, !dbg !994
  %7 = shl i32 1, %6, !dbg !996
  call void @LL_EXTI_ClearFlag_0_31(i32 noundef %7) #5, !dbg !997
  br label %9, !dbg !998

8:                                                ; preds = %1
  br label %9

9:                                                ; preds = %8, %5
  ret void, !dbg !999
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @LL_EXTI_IsActiveFlag_0_31(i32 noundef %0) #0 !dbg !1000 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1004, metadata !DIExpression()), !dbg !1005
  %3 = load volatile i32, ptr getelementptr inbounds (%struct.EXTI_TypeDef, ptr inttoptr (i32 1073808384 to ptr), i32 0, i32 5), align 4, !dbg !1006
  %4 = load i32, ptr %2, align 4, !dbg !1007
  %5 = and i32 %3, %4, !dbg !1008
  %6 = load i32, ptr %2, align 4, !dbg !1009
  %7 = icmp eq i32 %5, %6, !dbg !1010
  %8 = zext i1 %7 to i32, !dbg !1010
  ret i32 %8, !dbg !1011
}

; Function Attrs: inlinehint nounwind optsize
define internal void @LL_EXTI_ClearFlag_0_31(i32 noundef %0) #0 !dbg !1012 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1014, metadata !DIExpression()), !dbg !1015
  %3 = load i32, ptr %2, align 4, !dbg !1016
  store volatile i32 %3, ptr getelementptr inbounds (%struct.EXTI_TypeDef, ptr inttoptr (i32 1073808384 to ptr), i32 0, i32 5), align 4, !dbg !1017
  ret void, !dbg !1018
}

attributes #0 = { inlinehint nounwind optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { optsize }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!249, !250, !251, !252, !253, !254}
!llvm.ident = !{!255}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "exti_irq_table", scope: !2, file: !155, line: 35, type: !247, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !135, globals: !152, splitDebugInlining: false, nameTableKind: None)
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
!152 = !{!153, !160, !182, !201, !217, !0, !219, !229, !239, !241, !243, !245}
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
!220 = distinct !DIGlobalVariable(name: "line_range_0", scope: !221, file: !155, line: 231, type: !224, isLocal: true, isDefinition: true)
!221 = distinct !DISubprogram(name: "stm32_exti_init", scope: !155, file: !155, line: 227, type: !197, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !222)
!222 = !{!223}
!223 = !DILocalVariable(name: "dev", arg: 1, scope: !221, file: !155, line: 227, type: !199)
!224 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !225)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stm32_exti_range", file: !155, line: 26, size: 16, elements: !226)
!226 = !{!227, !228}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !225, file: !155, line: 28, baseType: !178, size: 8)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !225, file: !155, line: 30, baseType: !178, size: 8, offset: 8)
!229 = !DIGlobalVariableExpression(var: !230, expr: !DIExpression())
!230 = distinct !DIGlobalVariable(name: "__isr_stm32_exti_isr_irq_0", scope: !221, file: !155, line: 231, type: !231, isLocal: true, isDefinition: true, align: 32)
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_isr_list", file: !232, line: 53, size: 128, elements: !233)
!232 = !DIFile(filename: "include/zephyr/sw_isr_table.h", directory: "/home/sri/zephyrproject/zephyr")
!233 = !{!234, !236, !237, !238}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !231, file: !232, line: 55, baseType: !235, size: 32)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !137, line: 58, baseType: !140)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !231, file: !232, line: 57, baseType: !235, size: 32, offset: 32)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !231, file: !232, line: 59, baseType: !139, size: 32, offset: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !231, file: !232, line: 61, baseType: !170, size: 32, offset: 96)
!239 = !DIGlobalVariableExpression(var: !240, expr: !DIExpression())
!240 = distinct !DIGlobalVariable(name: "line_range_1", scope: !221, file: !155, line: 231, type: !224, isLocal: true, isDefinition: true)
!241 = !DIGlobalVariableExpression(var: !242, expr: !DIExpression())
!242 = distinct !DIGlobalVariable(name: "__isr_stm32_exti_isr_irq_1", scope: !221, file: !155, line: 231, type: !231, isLocal: true, isDefinition: true, align: 32)
!243 = !DIGlobalVariableExpression(var: !244, expr: !DIExpression())
!244 = distinct !DIGlobalVariable(name: "line_range_2", scope: !221, file: !155, line: 231, type: !224, isLocal: true, isDefinition: true)
!245 = !DIGlobalVariableExpression(var: !246, expr: !DIExpression())
!246 = distinct !DIGlobalVariable(name: "__isr_stm32_exti_isr_irq_2", scope: !221, file: !155, line: 231, type: !231, isLocal: true, isDefinition: true, align: 32)
!247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !248, size: 128, elements: !215)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRQn_Type", file: !96, line: 107, baseType: !95)
!249 = !{i32 7, !"Dwarf Version", i32 4}
!250 = !{i32 2, !"Debug Info Version", i32 3}
!251 = !{i32 1, !"wchar_size", i32 4}
!252 = !{i32 1, !"static_rwdata", i32 1}
!253 = !{i32 1, !"enumsize_buildattr", i32 1}
!254 = !{i32 1, !"armlib_unavailable", i32 0}
!255 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
!256 = distinct !DISubprogram(name: "z_impl_device_is_ready", scope: !164, file: !164, line: 744, type: !257, scopeLine: 745, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !259)
!257 = !DISubroutineType(types: !258)
!258 = !{!180, !199}
!259 = !{!260}
!260 = !DILocalVariable(name: "dev", arg: 1, scope: !256, file: !164, line: 744, type: !199)
!261 = !DILocation(line: 744, column: 65, scope: !256)
!262 = !DILocation(line: 746, column: 27, scope: !256)
!263 = !DILocation(line: 746, column: 9, scope: !256)
!264 = !DILocation(line: 746, column: 2, scope: !256)
!265 = distinct !DISubprogram(name: "z_impl_k_object_access_grant", scope: !14, file: !14, line: 223, type: !266, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !382)
!266 = !DISubroutineType(types: !267)
!267 = !{null, !170, !268}
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 32)
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_thread", file: !270, line: 250, size: 896, elements: !271)
!270 = !DIFile(filename: "include/zephyr/kernel/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!271 = !{!272, !340, !353, !354, !355, !356, !377}
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
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_spinlock", file: !375, line: 45, elements: !376)
!375 = !DIFile(filename: "include/zephyr/spinlock.h", directory: "/home/sri/zephyrproject/zephyr")
!376 = !{}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !269, file: !270, line: 355, baseType: !378, size: 64, offset: 832)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_arch", file: !342, line: 60, size: 64, elements: !379)
!379 = !{!380, !381}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "basepri", scope: !378, file: !342, line: 63, baseType: !136, size: 32)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "swap_return_value", scope: !378, file: !342, line: 66, baseType: !136, size: 32, offset: 32)
!382 = !{!383, !384}
!383 = !DILocalVariable(name: "object", arg: 1, scope: !265, file: !14, line: 223, type: !170)
!384 = !DILocalVariable(name: "thread", arg: 2, scope: !265, file: !14, line: 224, type: !268)
!385 = !DILocation(line: 223, column: 61, scope: !265)
!386 = !DILocation(line: 224, column: 24, scope: !265)
!387 = !DILocation(line: 226, column: 9, scope: !265)
!388 = !DILocation(line: 227, column: 9, scope: !265)
!389 = !DILocation(line: 228, column: 1, scope: !265)
!390 = distinct !DISubprogram(name: "z_impl_k_object_release", scope: !14, file: !14, line: 243, type: !391, scopeLine: 244, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !393)
!391 = !DISubroutineType(types: !392)
!392 = !{null, !170}
!393 = !{!394}
!394 = !DILocalVariable(name: "object", arg: 1, scope: !390, file: !14, line: 243, type: !170)
!395 = !DILocation(line: 243, column: 56, scope: !390)
!396 = !DILocation(line: 245, column: 9, scope: !390)
!397 = !DILocation(line: 246, column: 1, scope: !390)
!398 = distinct !DISubprogram(name: "z_impl_k_object_alloc", scope: !14, file: !14, line: 359, type: !399, scopeLine: 360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !401)
!399 = !DISubroutineType(types: !400)
!400 = !{!139, !13}
!401 = !{!402}
!402 = !DILocalVariable(name: "otype", arg: 1, scope: !398, file: !14, line: 359, type: !13)
!403 = !DILocation(line: 359, column: 58, scope: !398)
!404 = !DILocation(line: 361, column: 9, scope: !398)
!405 = !DILocation(line: 363, column: 2, scope: !398)
!406 = distinct !DISubprogram(name: "z_impl_k_object_alloc_size", scope: !14, file: !14, line: 366, type: !407, scopeLine: 368, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !409)
!407 = !DISubroutineType(types: !408)
!408 = !{!139, !13, !370}
!409 = !{!410, !411}
!410 = !DILocalVariable(name: "otype", arg: 1, scope: !406, file: !14, line: 366, type: !13)
!411 = !DILocalVariable(name: "size", arg: 2, scope: !406, file: !14, line: 367, type: !370)
!412 = !DILocation(line: 366, column: 63, scope: !406)
!413 = !DILocation(line: 367, column: 13, scope: !406)
!414 = !DILocation(line: 369, column: 9, scope: !406)
!415 = !DILocation(line: 370, column: 9, scope: !406)
!416 = !DILocation(line: 372, column: 2, scope: !406)
!417 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_expires_ticks", scope: !359, file: !359, line: 656, type: !418, scopeLine: 658, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !424)
!418 = !DISubroutineType(types: !419)
!419 = !{!420, !422}
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_ticks_t", file: !421, line: 46, baseType: !338)
!421 = !DIFile(filename: "include/zephyr/sys_clock.h", directory: "/home/sri/zephyrproject/zephyr")
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 32)
!423 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !269)
!424 = !{!425}
!425 = !DILocalVariable(name: "t", arg: 1, scope: !417, file: !359, line: 657, type: !422)
!426 = !DILocation(line: 657, column: 30, scope: !417)
!427 = !DILocation(line: 659, column: 28, scope: !417)
!428 = !DILocation(line: 659, column: 31, scope: !417)
!429 = !DILocation(line: 659, column: 36, scope: !417)
!430 = !DILocation(line: 659, column: 9, scope: !417)
!431 = !DILocation(line: 659, column: 2, scope: !417)
!432 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_remaining_ticks", scope: !359, file: !359, line: 671, type: !418, scopeLine: 673, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !433)
!433 = !{!434}
!434 = !DILocalVariable(name: "t", arg: 1, scope: !432, file: !359, line: 672, type: !422)
!435 = !DILocation(line: 672, column: 30, scope: !432)
!436 = !DILocation(line: 674, column: 30, scope: !432)
!437 = !DILocation(line: 674, column: 33, scope: !432)
!438 = !DILocation(line: 674, column: 38, scope: !432)
!439 = !DILocation(line: 674, column: 9, scope: !432)
!440 = !DILocation(line: 674, column: 2, scope: !432)
!441 = distinct !DISubprogram(name: "z_impl_k_timer_expires_ticks", scope: !359, file: !359, line: 1634, type: !442, scopeLine: 1636, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !463)
!442 = !DISubroutineType(types: !443)
!443 = !{!420, !444}
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 32)
!445 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !446)
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_timer", file: !359, line: 1439, size: 448, elements: !447)
!447 = !{!448, !449, !450, !455, !456, !461, !462}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !446, file: !359, line: 1445, baseType: !328, size: 192)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !446, file: !359, line: 1448, baseType: !305, size: 64, offset: 192)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_fn", scope: !446, file: !359, line: 1451, baseType: !451, size: 32, offset: 256)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 32)
!452 = !DISubroutineType(types: !453)
!453 = !{null, !454}
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 32)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "stop_fn", scope: !446, file: !359, line: 1454, baseType: !451, size: 32, offset: 288)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !446, file: !359, line: 1457, baseType: !457, size: 64, offset: 320)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_timeout_t", file: !421, line: 67, baseType: !458)
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !421, line: 65, size: 64, elements: !459)
!459 = !{!460}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "ticks", scope: !458, file: !421, line: 66, baseType: !420, size: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !446, file: !359, line: 1460, baseType: !136, size: 32, offset: 384)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !446, file: !359, line: 1463, baseType: !139, size: 32, offset: 416)
!463 = !{!464}
!464 = !DILocalVariable(name: "timer", arg: 1, scope: !441, file: !359, line: 1635, type: !444)
!465 = !DILocation(line: 1635, column: 34, scope: !441)
!466 = !DILocation(line: 1637, column: 28, scope: !441)
!467 = !DILocation(line: 1637, column: 35, scope: !441)
!468 = !DILocation(line: 1637, column: 9, scope: !441)
!469 = !DILocation(line: 1637, column: 2, scope: !441)
!470 = distinct !DISubprogram(name: "z_impl_k_timer_remaining_ticks", scope: !359, file: !359, line: 1649, type: !442, scopeLine: 1651, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !471)
!471 = !{!472}
!472 = !DILocalVariable(name: "timer", arg: 1, scope: !470, file: !359, line: 1650, type: !444)
!473 = !DILocation(line: 1650, column: 34, scope: !470)
!474 = !DILocation(line: 1652, column: 30, scope: !470)
!475 = !DILocation(line: 1652, column: 37, scope: !470)
!476 = !DILocation(line: 1652, column: 9, scope: !470)
!477 = !DILocation(line: 1652, column: 2, scope: !470)
!478 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_set", scope: !359, file: !359, line: 1689, type: !479, scopeLine: 1691, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !481)
!479 = !DISubroutineType(types: !480)
!480 = !{null, !454, !139}
!481 = !{!482, !483}
!482 = !DILocalVariable(name: "timer", arg: 1, scope: !478, file: !359, line: 1689, type: !454)
!483 = !DILocalVariable(name: "user_data", arg: 2, scope: !478, file: !359, line: 1690, type: !139)
!484 = !DILocation(line: 1689, column: 65, scope: !478)
!485 = !DILocation(line: 1690, column: 19, scope: !478)
!486 = !DILocation(line: 1692, column: 21, scope: !478)
!487 = !DILocation(line: 1692, column: 2, scope: !478)
!488 = !DILocation(line: 1692, column: 9, scope: !478)
!489 = !DILocation(line: 1692, column: 19, scope: !478)
!490 = !DILocation(line: 1693, column: 1, scope: !478)
!491 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_get", scope: !359, file: !359, line: 1704, type: !492, scopeLine: 1705, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !494)
!492 = !DISubroutineType(types: !493)
!493 = !{!139, !444}
!494 = !{!495}
!495 = !DILocalVariable(name: "timer", arg: 1, scope: !491, file: !359, line: 1704, type: !444)
!496 = !DILocation(line: 1704, column: 72, scope: !491)
!497 = !DILocation(line: 1706, column: 9, scope: !491)
!498 = !DILocation(line: 1706, column: 16, scope: !491)
!499 = !DILocation(line: 1706, column: 2, scope: !491)
!500 = distinct !DISubprogram(name: "z_impl_k_queue_is_empty", scope: !359, file: !359, line: 2071, type: !501, scopeLine: 2072, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !521)
!501 = !DISubroutineType(types: !502)
!502 = !{!140, !503}
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 32)
!504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_queue", file: !359, line: 1830, size: 128, elements: !505)
!505 = !{!506, !519, !520}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "data_q", scope: !504, file: !359, line: 1831, baseType: !507, size: 64)
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sflist_t", file: !508, line: 60, baseType: !509)
!508 = !DIFile(filename: "include/zephyr/sys/sflist.h", directory: "/home/sri/zephyrproject/zephyr")
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sflist", file: !508, line: 53, size: 64, elements: !510)
!510 = !{!511, !518}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !509, file: !508, line: 54, baseType: !512, size: 32)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 32)
!513 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sfnode_t", file: !508, line: 50, baseType: !514)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sfnode", file: !508, line: 44, size: 32, elements: !515)
!515 = !{!516}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "next_and_flags", scope: !514, file: !508, line: 45, baseType: !517, size: 32)
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "unative_t", file: !508, line: 40, baseType: !136)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !509, file: !508, line: 55, baseType: !512, size: 32, offset: 32)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !504, file: !359, line: 1832, baseType: !374, offset: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !504, file: !359, line: 1833, baseType: !305, size: 64, offset: 64)
!521 = !{!522}
!522 = !DILocalVariable(name: "queue", arg: 1, scope: !500, file: !359, line: 2071, type: !503)
!523 = !DILocation(line: 2071, column: 59, scope: !500)
!524 = !DILocation(line: 2073, column: 35, scope: !500)
!525 = !DILocation(line: 2073, column: 42, scope: !500)
!526 = !DILocation(line: 2073, column: 14, scope: !500)
!527 = !DILocation(line: 2073, column: 9, scope: !500)
!528 = !DILocation(line: 2073, column: 2, scope: !500)
!529 = distinct !DISubprogram(name: "z_impl_k_sem_count_get", scope: !359, file: !359, line: 3209, type: !530, scopeLine: 3210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !538)
!530 = !DISubroutineType(types: !531)
!531 = !{!138, !532}
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 32)
!533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sem", file: !359, line: 3092, size: 128, elements: !534)
!534 = !{!535, !536, !537}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !533, file: !359, line: 3093, baseType: !305, size: 64)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !533, file: !359, line: 3094, baseType: !138, size: 32, offset: 64)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !533, file: !359, line: 3095, baseType: !138, size: 32, offset: 96)
!538 = !{!539}
!539 = !DILocalVariable(name: "sem", arg: 1, scope: !529, file: !359, line: 3209, type: !532)
!540 = !DILocation(line: 3209, column: 65, scope: !529)
!541 = !DILocation(line: 3211, column: 9, scope: !529)
!542 = !DILocation(line: 3211, column: 14, scope: !529)
!543 = !DILocation(line: 3211, column: 2, scope: !529)
!544 = distinct !DISubprogram(name: "z_impl_k_msgq_num_free_get", scope: !359, file: !359, line: 4649, type: !545, scopeLine: 4650, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !561)
!545 = !DISubroutineType(types: !546)
!546 = !{!136, !547}
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 32)
!548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_msgq", file: !359, line: 4390, size: 320, elements: !549)
!549 = !{!550, !551, !552, !553, !554, !556, !557, !558, !559, !560}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !548, file: !359, line: 4392, baseType: !305, size: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !548, file: !359, line: 4394, baseType: !374, offset: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "msg_size", scope: !548, file: !359, line: 4396, baseType: !370, size: 32, offset: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !548, file: !359, line: 4398, baseType: !136, size: 32, offset: 96)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_start", scope: !548, file: !359, line: 4400, baseType: !555, size: 32, offset: 128)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 32)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_end", scope: !548, file: !359, line: 4402, baseType: !555, size: 32, offset: 160)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "read_ptr", scope: !548, file: !359, line: 4404, baseType: !555, size: 32, offset: 192)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "write_ptr", scope: !548, file: !359, line: 4406, baseType: !555, size: 32, offset: 224)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "used_msgs", scope: !548, file: !359, line: 4408, baseType: !136, size: 32, offset: 256)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !548, file: !359, line: 4413, baseType: !178, size: 8, offset: 288)
!561 = !{!562}
!562 = !DILocalVariable(name: "msgq", arg: 1, scope: !544, file: !359, line: 4649, type: !547)
!563 = !DILocation(line: 4649, column: 66, scope: !544)
!564 = !DILocation(line: 4651, column: 9, scope: !544)
!565 = !DILocation(line: 4651, column: 15, scope: !544)
!566 = !DILocation(line: 4651, column: 26, scope: !544)
!567 = !DILocation(line: 4651, column: 32, scope: !544)
!568 = !DILocation(line: 4651, column: 24, scope: !544)
!569 = !DILocation(line: 4651, column: 2, scope: !544)
!570 = distinct !DISubprogram(name: "z_impl_k_msgq_num_used_get", scope: !359, file: !359, line: 4665, type: !545, scopeLine: 4666, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !571)
!571 = !{!572}
!572 = !DILocalVariable(name: "msgq", arg: 1, scope: !570, file: !359, line: 4665, type: !547)
!573 = !DILocation(line: 4665, column: 66, scope: !570)
!574 = !DILocation(line: 4667, column: 9, scope: !570)
!575 = !DILocation(line: 4667, column: 15, scope: !570)
!576 = !DILocation(line: 4667, column: 2, scope: !570)
!577 = distinct !DISubprogram(name: "stm32_exti_enable", scope: !155, file: !155, line: 49, type: !578, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !580)
!578 = !DISubroutineType(types: !579)
!579 = !{null, !140}
!580 = !{!581, !582}
!581 = !DILocalVariable(name: "line", arg: 1, scope: !577, file: !155, line: 49, type: !140)
!582 = !DILocalVariable(name: "irqnum", scope: !577, file: !155, line: 51, type: !140)
!583 = !DILocation(line: 49, column: 28, scope: !577)
!584 = !DILocation(line: 51, column: 2, scope: !577)
!585 = !DILocation(line: 51, column: 6, scope: !577)
!586 = !DILocation(line: 53, column: 6, scope: !587)
!587 = distinct !DILexicalBlock(scope: !577, file: !155, line: 53, column: 6)
!588 = !DILocation(line: 53, column: 11, scope: !587)
!589 = !DILocation(line: 53, column: 6, scope: !577)
!590 = !DILocation(line: 55, column: 2, scope: !591)
!591 = distinct !DILexicalBlock(scope: !587, file: !155, line: 53, column: 18)
!592 = !DILocation(line: 58, column: 26, scope: !577)
!593 = !DILocation(line: 58, column: 11, scope: !577)
!594 = !DILocation(line: 58, column: 9, scope: !577)
!595 = !DILocation(line: 59, column: 6, scope: !596)
!596 = distinct !DILexicalBlock(scope: !577, file: !155, line: 59, column: 6)
!597 = !DILocation(line: 59, column: 13, scope: !596)
!598 = !DILocation(line: 59, column: 6, scope: !577)
!599 = !DILocation(line: 61, column: 2, scope: !600)
!600 = distinct !DILexicalBlock(scope: !596, file: !155, line: 59, column: 22)
!601 = !DILocation(line: 67, column: 43, scope: !577)
!602 = !DILocation(line: 67, column: 29, scope: !577)
!603 = !DILocation(line: 67, column: 2, scope: !577)
!604 = !DILocation(line: 71, column: 18, scope: !577)
!605 = !DILocation(line: 71, column: 2, scope: !577)
!606 = !DILocation(line: 72, column: 1, scope: !577)
!607 = distinct !DISubprogram(name: "LL_EXTI_EnableIT_0_31", scope: !608, file: !608, line: 273, type: !609, scopeLine: 274, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !611)
!608 = !DIFile(filename: "modules/hal/stm32/stm32cube/stm32f0xx/drivers/include/stm32f0xx_ll_exti.h", directory: "/home/sri/zephyrproject")
!609 = !DISubroutineType(types: !610)
!610 = !{null, !136}
!611 = !{!612}
!612 = !DILocalVariable(name: "ExtiLine", arg: 1, scope: !607, file: !608, line: 273, type: !136)
!613 = !DILocation(line: 273, column: 53, scope: !607)
!614 = !DILocation(line: 275, column: 64, scope: !607)
!615 = !DILocation(line: 275, column: 60, scope: !607)
!616 = !DILocation(line: 276, column: 1, scope: !607)
!617 = !DISubprogram(name: "arch_irq_enable", scope: !618, file: !618, line: 39, type: !619, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !376)
!618 = !DIFile(filename: "include/zephyr/arch/arm/irq.h", directory: "/home/sri/zephyrproject/zephyr")
!619 = !DISubroutineType(types: !620)
!620 = !{null, !138}
!621 = distinct !DISubprogram(name: "stm32_exti_disable", scope: !155, file: !155, line: 74, type: !578, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !622)
!622 = !{!623}
!623 = !DILocalVariable(name: "line", arg: 1, scope: !621, file: !155, line: 74, type: !140)
!624 = !DILocation(line: 74, column: 29, scope: !621)
!625 = !DILocation(line: 76, column: 2, scope: !621)
!626 = !DILocation(line: 78, column: 6, scope: !627)
!627 = distinct !DILexicalBlock(scope: !621, file: !155, line: 78, column: 6)
!628 = !DILocation(line: 78, column: 11, scope: !627)
!629 = !DILocation(line: 78, column: 6, scope: !621)
!630 = !DILocation(line: 82, column: 45, scope: !631)
!631 = distinct !DILexicalBlock(scope: !627, file: !155, line: 78, column: 17)
!632 = !DILocation(line: 82, column: 31, scope: !631)
!633 = !DILocation(line: 82, column: 3, scope: !631)
!634 = !DILocation(line: 84, column: 2, scope: !631)
!635 = !DILocation(line: 87, column: 2, scope: !621)
!636 = !DILocation(line: 88, column: 1, scope: !621)
!637 = distinct !DISubprogram(name: "z_stm32_hsem_lock", scope: !638, file: !638, line: 116, type: !639, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !641)
!638 = !DIFile(filename: "soc/arm/st_stm32/common/stm32_hsem.h", directory: "/home/sri/zephyrproject/zephyr")
!639 = !DISubroutineType(types: !640)
!640 = !{null, !136, !136}
!641 = !{!642, !643}
!642 = !DILocalVariable(name: "hsem", arg: 1, scope: !637, file: !638, line: 116, type: !136)
!643 = !DILocalVariable(name: "retry", arg: 2, scope: !637, file: !638, line: 116, type: !136)
!644 = !DILocation(line: 116, column: 47, scope: !637)
!645 = !DILocation(line: 116, column: 62, scope: !637)
!646 = !DILocation(line: 130, column: 1, scope: !637)
!647 = distinct !DISubprogram(name: "LL_EXTI_DisableIT_0_31", scope: !608, file: !608, line: 321, type: !609, scopeLine: 322, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !648)
!648 = !{!649}
!649 = !DILocalVariable(name: "ExtiLine", arg: 1, scope: !647, file: !608, line: 321, type: !136)
!650 = !DILocation(line: 321, column: 54, scope: !647)
!651 = !DILocation(line: 323, column: 65, scope: !647)
!652 = !DILocation(line: 323, column: 63, scope: !647)
!653 = !DILocation(line: 323, column: 60, scope: !647)
!654 = !DILocation(line: 324, column: 1, scope: !647)
!655 = distinct !DISubprogram(name: "z_stm32_hsem_unlock", scope: !638, file: !638, line: 151, type: !609, scopeLine: 152, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !656)
!656 = !{!657}
!657 = !DILocalVariable(name: "hsem", arg: 1, scope: !655, file: !638, line: 151, type: !136)
!658 = !DILocation(line: 151, column: 49, scope: !655)
!659 = !DILocation(line: 157, column: 1, scope: !655)
!660 = distinct !DISubprogram(name: "stm32_exti_trigger", scope: !155, file: !155, line: 133, type: !661, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !663)
!661 = !DISubroutineType(types: !662)
!662 = !{null, !140, !140}
!663 = !{!664, !665}
!664 = !DILocalVariable(name: "line", arg: 1, scope: !660, file: !155, line: 133, type: !140)
!665 = !DILocalVariable(name: "trigger", arg: 2, scope: !660, file: !155, line: 133, type: !140)
!666 = !DILocation(line: 133, column: 29, scope: !660)
!667 = !DILocation(line: 133, column: 39, scope: !660)
!668 = !DILocation(line: 136, column: 6, scope: !669)
!669 = distinct !DILexicalBlock(scope: !660, file: !155, line: 136, column: 6)
!670 = !DILocation(line: 136, column: 11, scope: !669)
!671 = !DILocation(line: 136, column: 6, scope: !660)
!672 = !DILocation(line: 138, column: 2, scope: !673)
!673 = distinct !DILexicalBlock(scope: !669, file: !155, line: 136, column: 18)
!674 = !DILocation(line: 140, column: 2, scope: !660)
!675 = !DILocation(line: 142, column: 10, scope: !660)
!676 = !DILocation(line: 142, column: 2, scope: !660)
!677 = !DILocation(line: 144, column: 53, scope: !678)
!678 = distinct !DILexicalBlock(scope: !660, file: !155, line: 142, column: 19)
!679 = !DILocation(line: 144, column: 39, scope: !678)
!680 = !DILocation(line: 144, column: 3, scope: !678)
!681 = !DILocation(line: 145, column: 54, scope: !678)
!682 = !DILocation(line: 145, column: 40, scope: !678)
!683 = !DILocation(line: 145, column: 3, scope: !678)
!684 = !DILocation(line: 146, column: 3, scope: !678)
!685 = !DILocation(line: 148, column: 52, scope: !678)
!686 = !DILocation(line: 148, column: 38, scope: !678)
!687 = !DILocation(line: 148, column: 3, scope: !678)
!688 = !DILocation(line: 149, column: 54, scope: !678)
!689 = !DILocation(line: 149, column: 40, scope: !678)
!690 = !DILocation(line: 149, column: 3, scope: !678)
!691 = !DILocation(line: 150, column: 3, scope: !678)
!692 = !DILocation(line: 152, column: 53, scope: !678)
!693 = !DILocation(line: 152, column: 39, scope: !678)
!694 = !DILocation(line: 152, column: 3, scope: !678)
!695 = !DILocation(line: 153, column: 53, scope: !678)
!696 = !DILocation(line: 153, column: 39, scope: !678)
!697 = !DILocation(line: 153, column: 3, scope: !678)
!698 = !DILocation(line: 154, column: 3, scope: !678)
!699 = !DILocation(line: 156, column: 52, scope: !678)
!700 = !DILocation(line: 156, column: 38, scope: !678)
!701 = !DILocation(line: 156, column: 3, scope: !678)
!702 = !DILocation(line: 157, column: 53, scope: !678)
!703 = !DILocation(line: 157, column: 39, scope: !678)
!704 = !DILocation(line: 157, column: 3, scope: !678)
!705 = !DILocation(line: 158, column: 3, scope: !678)
!706 = !DILocation(line: 161, column: 3, scope: !678)
!707 = !DILocation(line: 163, column: 2, scope: !660)
!708 = !DILocation(line: 164, column: 1, scope: !660)
!709 = distinct !DISubprogram(name: "LL_EXTI_DisableRisingTrig_0_31", scope: !608, file: !608, line: 617, type: !609, scopeLine: 618, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !710)
!710 = !{!711}
!711 = !DILocalVariable(name: "ExtiLine", arg: 1, scope: !709, file: !608, line: 617, type: !136)
!712 = !DILocation(line: 617, column: 62, scope: !709)
!713 = !DILocation(line: 619, column: 66, scope: !709)
!714 = !DILocation(line: 619, column: 64, scope: !709)
!715 = !DILocation(line: 619, column: 61, scope: !709)
!716 = !DILocation(line: 621, column: 1, scope: !709)
!717 = distinct !DISubprogram(name: "LL_EXTI_DisableFallingTrig_0_31", scope: !608, file: !608, line: 753, type: !609, scopeLine: 754, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !718)
!718 = !{!719}
!719 = !DILocalVariable(name: "ExtiLine", arg: 1, scope: !717, file: !608, line: 753, type: !136)
!720 = !DILocation(line: 753, column: 63, scope: !717)
!721 = !DILocation(line: 755, column: 66, scope: !717)
!722 = !DILocation(line: 755, column: 64, scope: !717)
!723 = !DILocation(line: 755, column: 61, scope: !717)
!724 = !DILocation(line: 756, column: 1, scope: !717)
!725 = distinct !DISubprogram(name: "LL_EXTI_EnableRisingTrig_0_31", scope: !608, file: !608, line: 571, type: !609, scopeLine: 572, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !726)
!726 = !{!727}
!727 = !DILocalVariable(name: "ExtiLine", arg: 1, scope: !725, file: !608, line: 571, type: !136)
!728 = !DILocation(line: 571, column: 61, scope: !725)
!729 = !DILocation(line: 573, column: 65, scope: !725)
!730 = !DILocation(line: 573, column: 61, scope: !725)
!731 = !DILocation(line: 575, column: 1, scope: !725)
!732 = distinct !DISubprogram(name: "LL_EXTI_EnableFallingTrig_0_31", scope: !608, file: !608, line: 709, type: !609, scopeLine: 710, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !733)
!733 = !{!734}
!734 = !DILocalVariable(name: "ExtiLine", arg: 1, scope: !732, file: !608, line: 709, type: !136)
!735 = !DILocation(line: 709, column: 62, scope: !732)
!736 = !DILocation(line: 711, column: 65, scope: !732)
!737 = !DILocation(line: 711, column: 61, scope: !732)
!738 = !DILocation(line: 712, column: 1, scope: !732)
!739 = !DILocation(line: 227, column: 49, scope: !221)
!740 = !DILocation(line: 229, column: 9, scope: !221)
!741 = !DILocation(line: 231, column: 98, scope: !221)
!742 = !DILocation(line: 231, column: 118, scope: !221)
!743 = !DILocation(line: 231, column: 64, scope: !221)
!744 = !DILocation(line: 231, column: 375, scope: !745)
!745 = distinct !DILexicalBlock(scope: !221, file: !155, line: 231, column: 127)
!746 = !DILocation(line: 231, column: 507, scope: !221)
!747 = !DILocation(line: 231, column: 527, scope: !221)
!748 = !DILocation(line: 231, column: 473, scope: !221)
!749 = !DILocation(line: 231, column: 784, scope: !750)
!750 = distinct !DILexicalBlock(scope: !221, file: !155, line: 231, column: 536)
!751 = !DILocation(line: 231, column: 917, scope: !221)
!752 = !DILocation(line: 231, column: 937, scope: !221)
!753 = !DILocation(line: 231, column: 883, scope: !221)
!754 = !DILocation(line: 231, column: 1194, scope: !755)
!755 = distinct !DILexicalBlock(scope: !221, file: !155, line: 231, column: 946)
!756 = !DILocation(line: 235, column: 2, scope: !221)
!757 = distinct !DISubprogram(name: "stm32_exti_set_callback", scope: !155, file: !155, line: 248, type: !758, scopeLine: 249, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !760)
!758 = !DISubroutineType(types: !759)
!759 = !{!140, !140, !210, !139}
!760 = !{!761, !762, !763, !764, !766}
!761 = !DILocalVariable(name: "line", arg: 1, scope: !757, file: !155, line: 248, type: !140)
!762 = !DILocalVariable(name: "cb", arg: 2, scope: !757, file: !155, line: 248, type: !210)
!763 = !DILocalVariable(name: "arg", arg: 3, scope: !757, file: !155, line: 248, type: !139)
!764 = !DILocalVariable(name: "dev", scope: !757, file: !155, line: 250, type: !765)
!765 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !199)
!766 = !DILocalVariable(name: "data", scope: !757, file: !155, line: 251, type: !767)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 32)
!768 = !DILocation(line: 248, column: 33, scope: !757)
!769 = !DILocation(line: 248, column: 61, scope: !757)
!770 = !DILocation(line: 248, column: 71, scope: !757)
!771 = !DILocation(line: 250, column: 2, scope: !757)
!772 = !DILocation(line: 250, column: 29, scope: !757)
!773 = !DILocation(line: 251, column: 2, scope: !757)
!774 = !DILocation(line: 251, column: 26, scope: !757)
!775 = !DILocation(line: 251, column: 38, scope: !757)
!776 = !DILocation(line: 253, column: 7, scope: !777)
!777 = distinct !DILexicalBlock(scope: !757, file: !155, line: 253, column: 6)
!778 = !DILocation(line: 253, column: 13, scope: !777)
!779 = !DILocation(line: 253, column: 16, scope: !777)
!780 = !DILocation(line: 253, column: 22, scope: !777)
!781 = !DILocation(line: 253, column: 28, scope: !777)
!782 = !DILocation(line: 253, column: 25, scope: !777)
!783 = !DILocation(line: 253, column: 32, scope: !777)
!784 = !DILocation(line: 253, column: 36, scope: !777)
!785 = !DILocation(line: 253, column: 42, scope: !777)
!786 = !DILocation(line: 253, column: 45, scope: !777)
!787 = !DILocation(line: 253, column: 51, scope: !777)
!788 = !DILocation(line: 253, column: 59, scope: !777)
!789 = !DILocation(line: 253, column: 56, scope: !777)
!790 = !DILocation(line: 253, column: 6, scope: !757)
!791 = !DILocation(line: 254, column: 3, scope: !792)
!792 = distinct !DILexicalBlock(scope: !777, file: !155, line: 253, column: 65)
!793 = !DILocation(line: 258, column: 6, scope: !794)
!794 = distinct !DILexicalBlock(scope: !757, file: !155, line: 258, column: 6)
!795 = !DILocation(line: 258, column: 12, scope: !794)
!796 = !DILocation(line: 258, column: 15, scope: !794)
!797 = !DILocation(line: 258, column: 21, scope: !794)
!798 = !DILocation(line: 258, column: 24, scope: !794)
!799 = !DILocation(line: 258, column: 6, scope: !757)
!800 = !DILocation(line: 259, column: 3, scope: !801)
!801 = distinct !DILexicalBlock(scope: !794, file: !155, line: 258, column: 39)
!802 = !DILocation(line: 262, column: 22, scope: !757)
!803 = !DILocation(line: 262, column: 2, scope: !757)
!804 = !DILocation(line: 262, column: 8, scope: !757)
!805 = !DILocation(line: 262, column: 11, scope: !757)
!806 = !DILocation(line: 262, column: 17, scope: !757)
!807 = !DILocation(line: 262, column: 20, scope: !757)
!808 = !DILocation(line: 263, column: 24, scope: !757)
!809 = !DILocation(line: 263, column: 2, scope: !757)
!810 = !DILocation(line: 263, column: 8, scope: !757)
!811 = !DILocation(line: 263, column: 11, scope: !757)
!812 = !DILocation(line: 263, column: 17, scope: !757)
!813 = !DILocation(line: 263, column: 22, scope: !757)
!814 = !DILocation(line: 265, column: 2, scope: !757)
!815 = !DILocation(line: 266, column: 1, scope: !757)
!816 = distinct !DISubprogram(name: "stm32_exti_unset_callback", scope: !155, file: !155, line: 268, type: !578, scopeLine: 269, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !817)
!817 = !{!818, !819, !820}
!818 = !DILocalVariable(name: "line", arg: 1, scope: !816, file: !155, line: 268, type: !140)
!819 = !DILocalVariable(name: "dev", scope: !816, file: !155, line: 270, type: !765)
!820 = !DILocalVariable(name: "data", scope: !816, file: !155, line: 271, type: !767)
!821 = !DILocation(line: 268, column: 36, scope: !816)
!822 = !DILocation(line: 270, column: 2, scope: !816)
!823 = !DILocation(line: 270, column: 29, scope: !816)
!824 = !DILocation(line: 271, column: 2, scope: !816)
!825 = !DILocation(line: 271, column: 26, scope: !816)
!826 = !DILocation(line: 271, column: 38, scope: !816)
!827 = !DILocation(line: 273, column: 2, scope: !816)
!828 = !DILocation(line: 273, column: 8, scope: !816)
!829 = !DILocation(line: 273, column: 11, scope: !816)
!830 = !DILocation(line: 273, column: 17, scope: !816)
!831 = !DILocation(line: 273, column: 20, scope: !816)
!832 = !DILocation(line: 274, column: 2, scope: !816)
!833 = !DILocation(line: 274, column: 8, scope: !816)
!834 = !DILocation(line: 274, column: 11, scope: !816)
!835 = !DILocation(line: 274, column: 17, scope: !816)
!836 = !DILocation(line: 274, column: 22, scope: !816)
!837 = !DILocation(line: 275, column: 1, scope: !816)
!838 = !DISubprogram(name: "z_device_is_ready", scope: !164, file: !164, line: 724, type: !257, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !376)
!839 = !DISubprogram(name: "z_timeout_expires", scope: !359, file: !359, line: 642, type: !840, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !376)
!840 = !DISubroutineType(types: !841)
!841 = !{!420, !842}
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 32)
!843 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !328)
!844 = !DISubprogram(name: "z_timeout_remaining", scope: !359, file: !359, line: 643, type: !840, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !376)
!845 = distinct !DISubprogram(name: "sys_sflist_is_empty", scope: !508, file: !508, line: 335, type: !846, scopeLine: 335, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !849)
!846 = !DISubroutineType(types: !847)
!847 = !{!180, !848}
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 32)
!849 = !{!850}
!850 = !DILocalVariable(name: "list", arg: 1, scope: !845, file: !508, line: 335, type: !848)
!851 = !DILocation(line: 335, column: 55, scope: !845)
!852 = !DILocation(line: 335, column: 92, scope: !845)
!853 = !DILocation(line: 335, column: 71, scope: !845)
!854 = !DILocation(line: 335, column: 98, scope: !845)
!855 = !DILocation(line: 335, column: 63, scope: !845)
!856 = distinct !DISubprogram(name: "sys_sflist_peek_head", scope: !508, file: !508, line: 255, type: !857, scopeLine: 256, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !859)
!857 = !DISubroutineType(types: !858)
!858 = !{!512, !848}
!859 = !{!860}
!860 = !DILocalVariable(name: "list", arg: 1, scope: !856, file: !508, line: 255, type: !848)
!861 = !DILocation(line: 255, column: 64, scope: !856)
!862 = !DILocation(line: 257, column: 9, scope: !856)
!863 = !DILocation(line: 257, column: 15, scope: !856)
!864 = !DILocation(line: 257, column: 2, scope: !856)
!865 = distinct !DISubprogram(name: "stm32_fill_irq_table", scope: !155, file: !155, line: 198, type: !866, scopeLine: 199, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !868)
!866 = !DISubroutineType(types: !867)
!867 = !{null, !320, !320, !235}
!868 = !{!869, !870, !871, !872}
!869 = !DILocalVariable(name: "start", arg: 1, scope: !865, file: !155, line: 198, type: !320)
!870 = !DILocalVariable(name: "len", arg: 2, scope: !865, file: !155, line: 198, type: !320)
!871 = !DILocalVariable(name: "irqn", arg: 3, scope: !865, file: !155, line: 198, type: !235)
!872 = !DILocalVariable(name: "i", scope: !873, file: !155, line: 200, type: !140)
!873 = distinct !DILexicalBlock(scope: !865, file: !155, line: 200, column: 2)
!874 = !DILocation(line: 198, column: 41, scope: !865)
!875 = !DILocation(line: 198, column: 55, scope: !865)
!876 = !DILocation(line: 198, column: 68, scope: !865)
!877 = !DILocation(line: 200, column: 7, scope: !873)
!878 = !DILocation(line: 200, column: 11, scope: !873)
!879 = !DILocation(line: 200, column: 18, scope: !880)
!880 = distinct !DILexicalBlock(scope: !873, file: !155, line: 200, column: 2)
!881 = !DILocation(line: 200, column: 22, scope: !880)
!882 = !DILocation(line: 200, column: 20, scope: !880)
!883 = !DILocation(line: 200, column: 2, scope: !873)
!884 = !DILocation(line: 200, column: 2, scope: !880)
!885 = !DILocation(line: 201, column: 31, scope: !886)
!886 = distinct !DILexicalBlock(scope: !880, file: !155, line: 200, column: 32)
!887 = !DILocation(line: 201, column: 18, scope: !886)
!888 = !DILocation(line: 201, column: 26, scope: !886)
!889 = !DILocation(line: 201, column: 24, scope: !886)
!890 = !DILocation(line: 201, column: 3, scope: !886)
!891 = !DILocation(line: 201, column: 29, scope: !886)
!892 = !DILocation(line: 202, column: 2, scope: !886)
!893 = !DILocation(line: 200, column: 28, scope: !880)
!894 = distinct !{!894, !883, !895}
!895 = !DILocation(line: 202, column: 2, scope: !873)
!896 = !DILocation(line: 203, column: 1, scope: !865)
!897 = distinct !DISubprogram(name: "stm32_exti_isr", scope: !155, file: !155, line: 173, type: !391, scopeLine: 174, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !898)
!898 = !{!899, !900, !901, !902, !904, !905}
!899 = !DILocalVariable(name: "exti_range", arg: 1, scope: !897, file: !155, line: 173, type: !170)
!900 = !DILocalVariable(name: "dev", scope: !897, file: !155, line: 175, type: !199)
!901 = !DILocalVariable(name: "data", scope: !897, file: !155, line: 176, type: !767)
!902 = !DILocalVariable(name: "range", scope: !897, file: !155, line: 177, type: !903)
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 32)
!904 = !DILocalVariable(name: "line", scope: !897, file: !155, line: 178, type: !140)
!905 = !DILocalVariable(name: "i", scope: !906, file: !155, line: 181, type: !178)
!906 = distinct !DILexicalBlock(scope: !897, file: !155, line: 181, column: 2)
!907 = !DILocation(line: 173, column: 40, scope: !897)
!908 = !DILocation(line: 175, column: 2, scope: !897)
!909 = !DILocation(line: 175, column: 23, scope: !897)
!910 = !DILocation(line: 176, column: 2, scope: !897)
!911 = !DILocation(line: 176, column: 26, scope: !897)
!912 = !DILocation(line: 176, column: 33, scope: !897)
!913 = !DILocation(line: 176, column: 38, scope: !897)
!914 = !DILocation(line: 177, column: 2, scope: !897)
!915 = !DILocation(line: 177, column: 33, scope: !897)
!916 = !DILocation(line: 177, column: 41, scope: !897)
!917 = !DILocation(line: 178, column: 2, scope: !897)
!918 = !DILocation(line: 178, column: 6, scope: !897)
!919 = !DILocation(line: 181, column: 7, scope: !906)
!920 = !DILocation(line: 181, column: 15, scope: !906)
!921 = !DILocation(line: 181, column: 22, scope: !922)
!922 = distinct !DILexicalBlock(scope: !906, file: !155, line: 181, column: 2)
!923 = !DILocation(line: 181, column: 27, scope: !922)
!924 = !DILocation(line: 181, column: 34, scope: !922)
!925 = !DILocation(line: 181, column: 24, scope: !922)
!926 = !DILocation(line: 181, column: 2, scope: !906)
!927 = !DILocation(line: 181, column: 2, scope: !922)
!928 = !DILocation(line: 182, column: 10, scope: !929)
!929 = distinct !DILexicalBlock(scope: !922, file: !155, line: 181, column: 44)
!930 = !DILocation(line: 182, column: 17, scope: !929)
!931 = !DILocation(line: 182, column: 25, scope: !929)
!932 = !DILocation(line: 182, column: 23, scope: !929)
!933 = !DILocation(line: 182, column: 8, scope: !929)
!934 = !DILocation(line: 184, column: 29, scope: !935)
!935 = distinct !DILexicalBlock(scope: !929, file: !155, line: 184, column: 7)
!936 = !DILocation(line: 184, column: 7, scope: !935)
!937 = !DILocation(line: 184, column: 35, scope: !935)
!938 = !DILocation(line: 184, column: 7, scope: !929)
!939 = !DILocation(line: 186, column: 29, scope: !940)
!940 = distinct !DILexicalBlock(scope: !935, file: !155, line: 184, column: 41)
!941 = !DILocation(line: 186, column: 4, scope: !940)
!942 = !DILocation(line: 189, column: 9, scope: !943)
!943 = distinct !DILexicalBlock(scope: !940, file: !155, line: 189, column: 8)
!944 = !DILocation(line: 189, column: 15, scope: !943)
!945 = !DILocation(line: 189, column: 18, scope: !943)
!946 = !DILocation(line: 189, column: 24, scope: !943)
!947 = !DILocation(line: 189, column: 8, scope: !940)
!948 = !DILocation(line: 190, column: 5, scope: !949)
!949 = distinct !DILexicalBlock(scope: !943, file: !155, line: 189, column: 28)
!950 = !DILocation(line: 193, column: 4, scope: !940)
!951 = !DILocation(line: 193, column: 10, scope: !940)
!952 = !DILocation(line: 193, column: 13, scope: !940)
!953 = !DILocation(line: 193, column: 19, scope: !940)
!954 = !DILocation(line: 193, column: 22, scope: !940)
!955 = !DILocation(line: 193, column: 28, scope: !940)
!956 = !DILocation(line: 193, column: 34, scope: !940)
!957 = !DILocation(line: 193, column: 37, scope: !940)
!958 = !DILocation(line: 193, column: 43, scope: !940)
!959 = !DILocation(line: 194, column: 3, scope: !940)
!960 = !DILocation(line: 195, column: 2, scope: !929)
!961 = !DILocation(line: 181, column: 40, scope: !922)
!962 = distinct !{!962, !926, !963}
!963 = !DILocation(line: 195, column: 2, scope: !906)
!964 = !DILocation(line: 196, column: 1, scope: !897)
!965 = !DISubprogram(name: "z_arm_irq_priority_set", scope: !618, file: !618, line: 44, type: !966, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !376)
!966 = !DISubroutineType(types: !967)
!967 = !{null, !138, !138, !136}
!968 = distinct !DISubprogram(name: "stm32_exti_is_pending", scope: !155, file: !155, line: 95, type: !969, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !971)
!969 = !DISubroutineType(types: !970)
!970 = !{!140, !140}
!971 = !{!972}
!972 = !DILocalVariable(name: "line", arg: 1, scope: !968, file: !155, line: 95, type: !140)
!973 = !DILocation(line: 95, column: 45, scope: !968)
!974 = !DILocation(line: 97, column: 6, scope: !975)
!975 = distinct !DILexicalBlock(scope: !968, file: !155, line: 97, column: 6)
!976 = !DILocation(line: 97, column: 11, scope: !975)
!977 = !DILocation(line: 97, column: 6, scope: !968)
!978 = !DILocation(line: 104, column: 55, scope: !979)
!979 = distinct !DILexicalBlock(scope: !975, file: !155, line: 97, column: 17)
!980 = !DILocation(line: 104, column: 41, scope: !979)
!981 = !DILocation(line: 104, column: 10, scope: !979)
!982 = !DILocation(line: 104, column: 3, scope: !979)
!983 = !DILocation(line: 108, column: 3, scope: !984)
!984 = distinct !DILexicalBlock(scope: !975, file: !155, line: 106, column: 9)
!985 = !DILocation(line: 110, column: 1, scope: !968)
!986 = distinct !DISubprogram(name: "stm32_exti_clear_pending", scope: !155, file: !155, line: 117, type: !578, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !987)
!987 = !{!988}
!988 = !DILocalVariable(name: "line", arg: 1, scope: !986, file: !155, line: 117, type: !140)
!989 = !DILocation(line: 117, column: 49, scope: !986)
!990 = !DILocation(line: 119, column: 6, scope: !991)
!991 = distinct !DILexicalBlock(scope: !986, file: !155, line: 119, column: 6)
!992 = !DILocation(line: 119, column: 11, scope: !991)
!993 = !DILocation(line: 119, column: 6, scope: !986)
!994 = !DILocation(line: 126, column: 45, scope: !995)
!995 = distinct !DILexicalBlock(scope: !991, file: !155, line: 119, column: 17)
!996 = !DILocation(line: 126, column: 31, scope: !995)
!997 = !DILocation(line: 126, column: 3, scope: !995)
!998 = !DILocation(line: 128, column: 2, scope: !995)
!999 = !DILocation(line: 131, column: 1, scope: !986)
!1000 = distinct !DISubprogram(name: "LL_EXTI_IsActiveFlag_0_31", scope: !608, file: !608, line: 890, type: !1001, scopeLine: 891, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1003)
!1001 = !DISubroutineType(types: !1002)
!1002 = !{!136, !136}
!1003 = !{!1004}
!1004 = !DILocalVariable(name: "ExtiLine", arg: 1, scope: !1000, file: !608, line: 890, type: !136)
!1005 = !DILocation(line: 890, column: 61, scope: !1000)
!1006 = !DILocation(line: 892, column: 63, scope: !1000)
!1007 = !DILocation(line: 892, column: 70, scope: !1000)
!1008 = !DILocation(line: 892, column: 67, scope: !1000)
!1009 = !DILocation(line: 892, column: 85, scope: !1000)
!1010 = !DILocation(line: 892, column: 81, scope: !1000)
!1011 = !DILocation(line: 892, column: 3, scope: !1000)
!1012 = distinct !DISubprogram(name: "LL_EXTI_ClearFlag_0_31", scope: !608, file: !608, line: 970, type: !609, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1013)
!1013 = !{!1014}
!1014 = !DILocalVariable(name: "ExtiLine", arg: 1, scope: !1012, file: !608, line: 970, type: !136)
!1015 = !DILocation(line: 970, column: 54, scope: !1012)
!1016 = !DILocation(line: 972, column: 62, scope: !1012)
!1017 = !DILocation(line: 972, column: 59, scope: !1012)
!1018 = !DILocation(line: 973, column: 1, scope: !1012)
