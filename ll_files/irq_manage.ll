; ModuleID = '../bc_files/irq_manage.bc'
source_filename = "/home/sri/zephyrproject/zephyr/arch/arm/core/cortex_m/irq_manage.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-arm-none-eabi"

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
%struct.NVIC_Type = type { [1 x i32], [31 x i32], [1 x i32], [31 x i32], [1 x i32], [31 x i32], [1 x i32], [31 x i32], [64 x i32], [8 x i32] }
%struct.SCB_Type = type { i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32 }

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_k_object_access_grant(ptr noundef %0, ptr noundef %1) #0 !dbg !195 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !314, metadata !DIExpression()), !dbg !316
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !315, metadata !DIExpression()), !dbg !317
  %5 = load ptr, ptr %3, align 4, !dbg !318
  %6 = load ptr, ptr %4, align 4, !dbg !319
  ret void, !dbg !320
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_k_object_release(ptr noundef %0) #0 !dbg !321 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !325, metadata !DIExpression()), !dbg !326
  %3 = load ptr, ptr %2, align 4, !dbg !327
  ret void, !dbg !328
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_impl_k_object_alloc(i8 noundef zeroext %0) #0 !dbg !329 {
  %2 = alloca i8, align 1
  store i8 %0, ptr %2, align 1
  call void @llvm.dbg.declare(metadata ptr %2, metadata !333, metadata !DIExpression()), !dbg !334
  %3 = load i8, ptr %2, align 1, !dbg !335
  ret ptr null, !dbg !336
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_impl_k_object_alloc_size(i8 noundef zeroext %0, i32 noundef %1) #0 !dbg !337 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8 %0, ptr %3, align 1
  call void @llvm.dbg.declare(metadata ptr %3, metadata !341, metadata !DIExpression()), !dbg !343
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !342, metadata !DIExpression()), !dbg !344
  %5 = load i8, ptr %3, align 1, !dbg !345
  %6 = load i32, ptr %4, align 4, !dbg !346
  ret ptr null, !dbg !347
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_thread_timeout_expires_ticks(ptr noundef %0) #0 !dbg !348 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !356, metadata !DIExpression()), !dbg !357
  %3 = load ptr, ptr %2, align 4, !dbg !358
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !359
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !360
  %6 = call i64 @z_timeout_expires(ptr noundef %5) #5, !dbg !361
  ret i64 %6, !dbg !362
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_thread_timeout_remaining_ticks(ptr noundef %0) #0 !dbg !363 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !365, metadata !DIExpression()), !dbg !366
  %3 = load ptr, ptr %2, align 4, !dbg !367
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !368
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !369
  %6 = call i64 @z_timeout_remaining(ptr noundef %5) #5, !dbg !370
  ret i64 %6, !dbg !371
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_timer_expires_ticks(ptr noundef %0) #0 !dbg !372 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !395, metadata !DIExpression()), !dbg !396
  %3 = load ptr, ptr %2, align 4, !dbg !397
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !398
  %5 = call i64 @z_timeout_expires(ptr noundef %4) #5, !dbg !399
  ret i64 %5, !dbg !400
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_timer_remaining_ticks(ptr noundef %0) #0 !dbg !401 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !403, metadata !DIExpression()), !dbg !404
  %3 = load ptr, ptr %2, align 4, !dbg !405
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !406
  %5 = call i64 @z_timeout_remaining(ptr noundef %4) #5, !dbg !407
  ret i64 %5, !dbg !408
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_k_timer_user_data_set(ptr noundef %0, ptr noundef %1) #0 !dbg !409 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !413, metadata !DIExpression()), !dbg !415
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !414, metadata !DIExpression()), !dbg !416
  %5 = load ptr, ptr %4, align 4, !dbg !417
  %6 = load ptr, ptr %3, align 4, !dbg !418
  %7 = getelementptr inbounds %struct.k_timer, ptr %6, i32 0, i32 6, !dbg !419
  store ptr %5, ptr %7, align 4, !dbg !420
  ret void, !dbg !421
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_impl_k_timer_user_data_get(ptr noundef %0) #0 !dbg !422 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !426, metadata !DIExpression()), !dbg !427
  %3 = load ptr, ptr %2, align 4, !dbg !428
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 6, !dbg !429
  %5 = load ptr, ptr %4, align 4, !dbg !429
  ret ptr %5, !dbg !430
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_queue_is_empty(ptr noundef %0) #0 !dbg !431 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !453, metadata !DIExpression()), !dbg !454
  %3 = load ptr, ptr %2, align 4, !dbg !455
  %4 = getelementptr inbounds %struct.k_queue, ptr %3, i32 0, i32 0, !dbg !456
  %5 = call zeroext i1 @sys_sflist_is_empty(ptr noundef %4) #5, !dbg !457
  %6 = zext i1 %5 to i32, !dbg !458
  ret i32 %6, !dbg !459
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_sem_count_get(ptr noundef %0) #0 !dbg !460 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !470, metadata !DIExpression()), !dbg !471
  %3 = load ptr, ptr %2, align 4, !dbg !472
  %4 = getelementptr inbounds %struct.k_sem, ptr %3, i32 0, i32 1, !dbg !473
  %5 = load i32, ptr %4, align 4, !dbg !473
  ret i32 %5, !dbg !474
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_msgq_num_free_get(ptr noundef %0) #0 !dbg !475 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !494, metadata !DIExpression()), !dbg !495
  %3 = load ptr, ptr %2, align 4, !dbg !496
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 3, !dbg !497
  %5 = load i32, ptr %4, align 4, !dbg !497
  %6 = load ptr, ptr %2, align 4, !dbg !498
  %7 = getelementptr inbounds %struct.k_msgq, ptr %6, i32 0, i32 8, !dbg !499
  %8 = load i32, ptr %7, align 4, !dbg !499
  %9 = sub i32 %5, %8, !dbg !500
  ret i32 %9, !dbg !501
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_msgq_num_used_get(ptr noundef %0) #0 !dbg !502 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !504, metadata !DIExpression()), !dbg !505
  %3 = load ptr, ptr %2, align 4, !dbg !506
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 8, !dbg !507
  %5 = load i32, ptr %4, align 4, !dbg !507
  ret i32 %5, !dbg !508
}

; Function Attrs: nounwind optsize
define hidden void @arch_irq_enable(i32 noundef %0) #1 !dbg !509 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !514, metadata !DIExpression()), !dbg !515
  %3 = load i32, ptr %2, align 4, !dbg !516
  %4 = trunc i32 %3 to i8, !dbg !517
  call void @__NVIC_EnableIRQ(i8 noundef signext %4) #5, !dbg !518
  ret void, !dbg !519
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: inlinehint nounwind optsize
define internal void @__NVIC_EnableIRQ(i8 noundef signext %0) #0 !dbg !520 {
  %2 = alloca i8, align 1
  store i8 %0, ptr %2, align 1
  call void @llvm.dbg.declare(metadata ptr %2, metadata !524, metadata !DIExpression()), !dbg !525
  %3 = load i8, ptr %2, align 1, !dbg !526
  %4 = sext i8 %3 to i32, !dbg !528
  %5 = icmp sge i32 %4, 0, !dbg !529
  br i1 %5, label %6, label %11, !dbg !530

6:                                                ; preds = %1
  call void asm sideeffect "", "~{memory}"() #4, !dbg !531, !srcloc !533
  %7 = load i8, ptr %2, align 1, !dbg !534
  %8 = sext i8 %7 to i32, !dbg !535
  %9 = and i32 %8, 31, !dbg !536
  %10 = shl i32 1, %9, !dbg !537
  store volatile i32 %10, ptr inttoptr (i32 -536813312 to ptr), align 4, !dbg !538
  call void asm sideeffect "", "~{memory}"() #4, !dbg !539, !srcloc !540
  br label %11, !dbg !541

11:                                               ; preds = %6, %1
  ret void, !dbg !542
}

; Function Attrs: nounwind optsize
define hidden void @arch_irq_disable(i32 noundef %0) #1 !dbg !543 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !545, metadata !DIExpression()), !dbg !546
  %3 = load i32, ptr %2, align 4, !dbg !547
  %4 = trunc i32 %3 to i8, !dbg !548
  call void @__NVIC_DisableIRQ(i8 noundef signext %4) #5, !dbg !549
  ret void, !dbg !550
}

; Function Attrs: inlinehint nounwind optsize
define internal void @__NVIC_DisableIRQ(i8 noundef signext %0) #0 !dbg !551 {
  %2 = alloca i8, align 1
  store i8 %0, ptr %2, align 1
  call void @llvm.dbg.declare(metadata ptr %2, metadata !553, metadata !DIExpression()), !dbg !554
  %3 = load i8, ptr %2, align 1, !dbg !555
  %4 = sext i8 %3 to i32, !dbg !557
  %5 = icmp sge i32 %4, 0, !dbg !558
  br i1 %5, label %6, label %11, !dbg !559

6:                                                ; preds = %1
  %7 = load i8, ptr %2, align 1, !dbg !560
  %8 = sext i8 %7 to i32, !dbg !562
  %9 = and i32 %8, 31, !dbg !563
  %10 = shl i32 1, %9, !dbg !564
  store volatile i32 %10, ptr getelementptr inbounds (%struct.NVIC_Type, ptr inttoptr (i32 -536813312 to ptr), i32 0, i32 2), align 4, !dbg !565
  call void @llvm.arm.dsb(i32 15), !dbg !566
  call void @llvm.arm.isb(i32 15), !dbg !567
  br label %11, !dbg !568

11:                                               ; preds = %6, %1
  ret void, !dbg !569
}

; Function Attrs: nounwind optsize
define hidden i32 @arch_irq_is_enabled(i32 noundef %0) #1 !dbg !570 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !574, metadata !DIExpression()), !dbg !575
  %3 = load i32, ptr %2, align 4, !dbg !576
  %4 = udiv i32 %3, 32, !dbg !577
  %5 = getelementptr inbounds [1 x i32], ptr inttoptr (i32 -536813312 to ptr), i32 0, i32 %4, !dbg !578
  %6 = load volatile i32, ptr %5, align 4, !dbg !578
  %7 = load i32, ptr %2, align 4, !dbg !579
  %8 = urem i32 %7, 32, !dbg !580
  %9 = shl i32 1, %8, !dbg !581
  %10 = and i32 %6, %9, !dbg !582
  ret i32 %10, !dbg !583
}

; Function Attrs: nounwind optsize
define hidden void @z_arm_irq_priority_set(i32 noundef %0, i32 noundef %1, i32 noundef %2) #1 !dbg !584 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !588, metadata !DIExpression()), !dbg !591
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !589, metadata !DIExpression()), !dbg !592
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !590, metadata !DIExpression()), !dbg !593
  %7 = load i32, ptr %5, align 4, !dbg !594
  %8 = add i32 %7, 0, !dbg !594
  store i32 %8, ptr %5, align 4, !dbg !594
  %9 = load i32, ptr %4, align 4, !dbg !597
  %10 = trunc i32 %9 to i8, !dbg !598
  %11 = load i32, ptr %5, align 4, !dbg !599
  call void @__NVIC_SetPriority(i8 noundef signext %10, i32 noundef %11) #5, !dbg !600
  ret void, !dbg !601
}

; Function Attrs: inlinehint nounwind optsize
define internal void @__NVIC_SetPriority(i8 noundef signext %0, i32 noundef %1) #0 !dbg !602 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8 %0, ptr %3, align 1
  call void @llvm.dbg.declare(metadata ptr %3, metadata !606, metadata !DIExpression()), !dbg !608
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !607, metadata !DIExpression()), !dbg !609
  %5 = load i8, ptr %3, align 1, !dbg !610
  %6 = sext i8 %5 to i32, !dbg !612
  %7 = icmp sge i32 %6, 0, !dbg !613
  br i1 %7, label %8, label %34, !dbg !614

8:                                                ; preds = %2
  %9 = load i8, ptr %3, align 1, !dbg !615
  %10 = sext i8 %9 to i32, !dbg !617
  %11 = lshr i32 %10, 2, !dbg !618
  %12 = getelementptr inbounds [8 x i32], ptr getelementptr inbounds (%struct.NVIC_Type, ptr inttoptr (i32 -536813312 to ptr), i32 0, i32 9), i32 0, i32 %11, !dbg !619
  %13 = load volatile i32, ptr %12, align 4, !dbg !619
  %14 = load i8, ptr %3, align 1, !dbg !620
  %15 = sext i8 %14 to i32, !dbg !621
  %16 = and i32 %15, 3, !dbg !622
  %17 = mul i32 %16, 8, !dbg !623
  %18 = shl i32 255, %17, !dbg !624
  %19 = xor i32 %18, -1, !dbg !625
  %20 = and i32 %13, %19, !dbg !626
  %21 = load i32, ptr %4, align 4, !dbg !627
  %22 = shl i32 %21, 6, !dbg !628
  %23 = and i32 %22, 255, !dbg !629
  %24 = load i8, ptr %3, align 1, !dbg !630
  %25 = sext i8 %24 to i32, !dbg !631
  %26 = and i32 %25, 3, !dbg !632
  %27 = mul i32 %26, 8, !dbg !633
  %28 = shl i32 %23, %27, !dbg !634
  %29 = or i32 %20, %28, !dbg !635
  %30 = load i8, ptr %3, align 1, !dbg !636
  %31 = sext i8 %30 to i32, !dbg !637
  %32 = lshr i32 %31, 2, !dbg !638
  %33 = getelementptr inbounds [8 x i32], ptr getelementptr inbounds (%struct.NVIC_Type, ptr inttoptr (i32 -536813312 to ptr), i32 0, i32 9), i32 0, i32 %32, !dbg !639
  store volatile i32 %29, ptr %33, align 4, !dbg !640
  br label %64, !dbg !641

34:                                               ; preds = %2
  %35 = load i8, ptr %3, align 1, !dbg !642
  %36 = sext i8 %35 to i32, !dbg !644
  %37 = and i32 %36, 15, !dbg !645
  %38 = sub i32 %37, 8, !dbg !646
  %39 = lshr i32 %38, 2, !dbg !647
  %40 = getelementptr inbounds [2 x i32], ptr getelementptr inbounds (%struct.SCB_Type, ptr inttoptr (i32 -536810240 to ptr), i32 0, i32 7), i32 0, i32 %39, !dbg !648
  %41 = load volatile i32, ptr %40, align 4, !dbg !648
  %42 = load i8, ptr %3, align 1, !dbg !649
  %43 = sext i8 %42 to i32, !dbg !650
  %44 = and i32 %43, 3, !dbg !651
  %45 = mul i32 %44, 8, !dbg !652
  %46 = shl i32 255, %45, !dbg !653
  %47 = xor i32 %46, -1, !dbg !654
  %48 = and i32 %41, %47, !dbg !655
  %49 = load i32, ptr %4, align 4, !dbg !656
  %50 = shl i32 %49, 6, !dbg !657
  %51 = and i32 %50, 255, !dbg !658
  %52 = load i8, ptr %3, align 1, !dbg !659
  %53 = sext i8 %52 to i32, !dbg !660
  %54 = and i32 %53, 3, !dbg !661
  %55 = mul i32 %54, 8, !dbg !662
  %56 = shl i32 %51, %55, !dbg !663
  %57 = or i32 %48, %56, !dbg !664
  %58 = load i8, ptr %3, align 1, !dbg !665
  %59 = sext i8 %58 to i32, !dbg !666
  %60 = and i32 %59, 15, !dbg !667
  %61 = sub i32 %60, 8, !dbg !668
  %62 = lshr i32 %61, 2, !dbg !669
  %63 = getelementptr inbounds [2 x i32], ptr getelementptr inbounds (%struct.SCB_Type, ptr inttoptr (i32 -536810240 to ptr), i32 0, i32 7), i32 0, i32 %62, !dbg !670
  store volatile i32 %57, ptr %63, align 4, !dbg !671
  br label %64

64:                                               ; preds = %34, %8
  ret void, !dbg !672
}

; Function Attrs: nounwind optsize
define hidden void @z_irq_spurious(ptr noundef %0) #1 !dbg !673 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !675, metadata !DIExpression()), !dbg !676
  %3 = load ptr, ptr %2, align 4, !dbg !677
  call void @z_arm_fatal_error(i32 noundef 1, ptr noundef null) #5, !dbg !678
  ret void, !dbg !679
}

; Function Attrs: optsize
declare !dbg !680 dso_local void @z_arm_fatal_error(i32 noundef, ptr noundef) #3

; Function Attrs: optsize
declare !dbg !728 dso_local i64 @z_timeout_expires(ptr noundef) #3

; Function Attrs: optsize
declare !dbg !733 dso_local i64 @z_timeout_remaining(ptr noundef) #3

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @sys_sflist_is_empty(ptr noundef %0) #0 !dbg !734 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !740, metadata !DIExpression()), !dbg !741
  %3 = load ptr, ptr %2, align 4, !dbg !742
  %4 = call ptr @sys_sflist_peek_head(ptr noundef %3) #5, !dbg !743
  %5 = icmp eq ptr %4, null, !dbg !744
  ret i1 %5, !dbg !745
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @sys_sflist_peek_head(ptr noundef %0) #0 !dbg !746 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !750, metadata !DIExpression()), !dbg !751
  %3 = load ptr, ptr %2, align 4, !dbg !752
  %4 = getelementptr inbounds %struct._sflist, ptr %3, i32 0, i32 0, !dbg !753
  %5 = load ptr, ptr %4, align 4, !dbg !753
  ret ptr %5, !dbg !754
}

; Function Attrs: nounwind
declare void @llvm.arm.dsb(i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.isb(i32) #4

attributes #0 = { inlinehint nounwind optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!188, !189, !190, !191, !192, !193}
!llvm.ident = !{!194}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !135, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "irq_manage.c", directory: "/home/sri/zephyrproject/zephyr/build")
!2 = !{!3, !43, !53}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 66, baseType: !5, size: 8, elements: !6)
!4 = !DIFile(filename: "modules/hal/stm32/stm32cube/stm32f0xx/soc/stm32f091xc.h", directory: "/home/sri/zephyrproject")
!5 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!6 = !{!7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42}
!7 = !DIEnumerator(name: "NonMaskableInt_IRQn", value: -14)
!8 = !DIEnumerator(name: "HardFault_IRQn", value: -13)
!9 = !DIEnumerator(name: "SVCall_IRQn", value: -5)
!10 = !DIEnumerator(name: "PendSV_IRQn", value: -2)
!11 = !DIEnumerator(name: "SysTick_IRQn", value: -1)
!12 = !DIEnumerator(name: "WWDG_IRQn", value: 0)
!13 = !DIEnumerator(name: "PVD_VDDIO2_IRQn", value: 1)
!14 = !DIEnumerator(name: "RTC_IRQn", value: 2)
!15 = !DIEnumerator(name: "FLASH_IRQn", value: 3)
!16 = !DIEnumerator(name: "RCC_CRS_IRQn", value: 4)
!17 = !DIEnumerator(name: "EXTI0_1_IRQn", value: 5)
!18 = !DIEnumerator(name: "EXTI2_3_IRQn", value: 6)
!19 = !DIEnumerator(name: "EXTI4_15_IRQn", value: 7)
!20 = !DIEnumerator(name: "TSC_IRQn", value: 8)
!21 = !DIEnumerator(name: "DMA1_Ch1_IRQn", value: 9)
!22 = !DIEnumerator(name: "DMA1_Ch2_3_DMA2_Ch1_2_IRQn", value: 10)
!23 = !DIEnumerator(name: "DMA1_Ch4_7_DMA2_Ch3_5_IRQn", value: 11)
!24 = !DIEnumerator(name: "ADC1_COMP_IRQn", value: 12)
!25 = !DIEnumerator(name: "TIM1_BRK_UP_TRG_COM_IRQn", value: 13)
!26 = !DIEnumerator(name: "TIM1_CC_IRQn", value: 14)
!27 = !DIEnumerator(name: "TIM2_IRQn", value: 15)
!28 = !DIEnumerator(name: "TIM3_IRQn", value: 16)
!29 = !DIEnumerator(name: "TIM6_DAC_IRQn", value: 17)
!30 = !DIEnumerator(name: "TIM7_IRQn", value: 18)
!31 = !DIEnumerator(name: "TIM14_IRQn", value: 19)
!32 = !DIEnumerator(name: "TIM15_IRQn", value: 20)
!33 = !DIEnumerator(name: "TIM16_IRQn", value: 21)
!34 = !DIEnumerator(name: "TIM17_IRQn", value: 22)
!35 = !DIEnumerator(name: "I2C1_IRQn", value: 23)
!36 = !DIEnumerator(name: "I2C2_IRQn", value: 24)
!37 = !DIEnumerator(name: "SPI1_IRQn", value: 25)
!38 = !DIEnumerator(name: "SPI2_IRQn", value: 26)
!39 = !DIEnumerator(name: "USART1_IRQn", value: 27)
!40 = !DIEnumerator(name: "USART2_IRQn", value: 28)
!41 = !DIEnumerator(name: "USART3_8_IRQn", value: 29)
!42 = !DIEnumerator(name: "CEC_CAN_IRQn", value: 30)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "k_fatal_error_reason", file: !44, line: 24, baseType: !45, size: 8, elements: !46)
!44 = !DIFile(filename: "include/zephyr/fatal_types.h", directory: "/home/sri/zephyrproject/zephyr")
!45 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!46 = !{!47, !48, !49, !50, !51, !52}
!47 = !DIEnumerator(name: "K_ERR_CPU_EXCEPTION", value: 0)
!48 = !DIEnumerator(name: "K_ERR_SPURIOUS_IRQ", value: 1)
!49 = !DIEnumerator(name: "K_ERR_STACK_CHK_FAIL", value: 2)
!50 = !DIEnumerator(name: "K_ERR_KERNEL_OOPS", value: 3)
!51 = !DIEnumerator(name: "K_ERR_KERNEL_PANIC", value: 4)
!52 = !DIEnumerator(name: "K_ERR_ARCH_START", value: 16)
!53 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "k_objects", file: !54, line: 29, baseType: !45, size: 8, elements: !55)
!54 = !DIFile(filename: "include/zephyr/sys/kobject.h", directory: "/home/sri/zephyrproject/zephyr")
!55 = !{!56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134}
!56 = !DIEnumerator(name: "K_OBJ_ANY", value: 0)
!57 = !DIEnumerator(name: "K_OBJ_MEM_SLAB", value: 1)
!58 = !DIEnumerator(name: "K_OBJ_MSGQ", value: 2)
!59 = !DIEnumerator(name: "K_OBJ_MUTEX", value: 3)
!60 = !DIEnumerator(name: "K_OBJ_PIPE", value: 4)
!61 = !DIEnumerator(name: "K_OBJ_QUEUE", value: 5)
!62 = !DIEnumerator(name: "K_OBJ_POLL_SIGNAL", value: 6)
!63 = !DIEnumerator(name: "K_OBJ_SEM", value: 7)
!64 = !DIEnumerator(name: "K_OBJ_STACK", value: 8)
!65 = !DIEnumerator(name: "K_OBJ_THREAD", value: 9)
!66 = !DIEnumerator(name: "K_OBJ_TIMER", value: 10)
!67 = !DIEnumerator(name: "K_OBJ_THREAD_STACK_ELEMENT", value: 11)
!68 = !DIEnumerator(name: "K_OBJ_NET_SOCKET", value: 12)
!69 = !DIEnumerator(name: "K_OBJ_NET_IF", value: 13)
!70 = !DIEnumerator(name: "K_OBJ_SYS_MUTEX", value: 14)
!71 = !DIEnumerator(name: "K_OBJ_FUTEX", value: 15)
!72 = !DIEnumerator(name: "K_OBJ_CONDVAR", value: 16)
!73 = !DIEnumerator(name: "K_OBJ_DRIVER_GPIO", value: 17)
!74 = !DIEnumerator(name: "K_OBJ_DRIVER_RESET", value: 18)
!75 = !DIEnumerator(name: "K_OBJ_DRIVER_UART", value: 19)
!76 = !DIEnumerator(name: "K_OBJ_DRIVER_CRYPTO", value: 20)
!77 = !DIEnumerator(name: "K_OBJ_DRIVER_ADC", value: 21)
!78 = !DIEnumerator(name: "K_OBJ_DRIVER_AUXDISPLAY", value: 22)
!79 = !DIEnumerator(name: "K_OBJ_DRIVER_BBRAM", value: 23)
!80 = !DIEnumerator(name: "K_OBJ_DRIVER_CAN", value: 24)
!81 = !DIEnumerator(name: "K_OBJ_DRIVER_CHARGER", value: 25)
!82 = !DIEnumerator(name: "K_OBJ_DRIVER_COREDUMP", value: 26)
!83 = !DIEnumerator(name: "K_OBJ_DRIVER_COUNTER", value: 27)
!84 = !DIEnumerator(name: "K_OBJ_DRIVER_DAC", value: 28)
!85 = !DIEnumerator(name: "K_OBJ_DRIVER_DAI", value: 29)
!86 = !DIEnumerator(name: "K_OBJ_DRIVER_DMA", value: 30)
!87 = !DIEnumerator(name: "K_OBJ_DRIVER_EDAC", value: 31)
!88 = !DIEnumerator(name: "K_OBJ_DRIVER_EEPROM", value: 32)
!89 = !DIEnumerator(name: "K_OBJ_DRIVER_FUEL_GAUGE_EMUL", value: 33)
!90 = !DIEnumerator(name: "K_OBJ_DRIVER_EMUL_SENSOR_BACKEND_API", value: 34)
!91 = !DIEnumerator(name: "K_OBJ_DRIVER_ENTROPY", value: 35)
!92 = !DIEnumerator(name: "K_OBJ_DRIVER_ESPI", value: 36)
!93 = !DIEnumerator(name: "K_OBJ_DRIVER_ESPI_SAF", value: 37)
!94 = !DIEnumerator(name: "K_OBJ_DRIVER_FLASH", value: 38)
!95 = !DIEnumerator(name: "K_OBJ_DRIVER_FPGA", value: 39)
!96 = !DIEnumerator(name: "K_OBJ_DRIVER_FUEL_GAUGE", value: 40)
!97 = !DIEnumerator(name: "K_OBJ_DRIVER_HWSPINLOCK", value: 41)
!98 = !DIEnumerator(name: "K_OBJ_DRIVER_I2C", value: 42)
!99 = !DIEnumerator(name: "K_OBJ_DRIVER_I2S", value: 43)
!100 = !DIEnumerator(name: "K_OBJ_DRIVER_I3C", value: 44)
!101 = !DIEnumerator(name: "K_OBJ_DRIVER_IPM", value: 45)
!102 = !DIEnumerator(name: "K_OBJ_DRIVER_KSCAN", value: 46)
!103 = !DIEnumerator(name: "K_OBJ_DRIVER_LED", value: 47)
!104 = !DIEnumerator(name: "K_OBJ_DRIVER_MBOX", value: 48)
!105 = !DIEnumerator(name: "K_OBJ_DRIVER_MDIO", value: 49)
!106 = !DIEnumerator(name: "K_OBJ_DRIVER_MIPI_DSI", value: 50)
!107 = !DIEnumerator(name: "K_OBJ_DRIVER_PECI", value: 51)
!108 = !DIEnumerator(name: "K_OBJ_DRIVER_PS2", value: 52)
!109 = !DIEnumerator(name: "K_OBJ_DRIVER_PTP_CLOCK", value: 53)
!110 = !DIEnumerator(name: "K_OBJ_DRIVER_PWM", value: 54)
!111 = !DIEnumerator(name: "K_OBJ_DRIVER_REGULATOR_PARENT", value: 55)
!112 = !DIEnumerator(name: "K_OBJ_DRIVER_REGULATOR", value: 56)
!113 = !DIEnumerator(name: "K_OBJ_DRIVER_RETAINED_MEM", value: 57)
!114 = !DIEnumerator(name: "K_OBJ_DRIVER_RTC", value: 58)
!115 = !DIEnumerator(name: "K_OBJ_DRIVER_SDHC", value: 59)
!116 = !DIEnumerator(name: "K_OBJ_DRIVER_SENSOR", value: 60)
!117 = !DIEnumerator(name: "K_OBJ_DRIVER_SMBUS", value: 61)
!118 = !DIEnumerator(name: "K_OBJ_DRIVER_SPI", value: 62)
!119 = !DIEnumerator(name: "K_OBJ_DRIVER_SYSCON", value: 63)
!120 = !DIEnumerator(name: "K_OBJ_DRIVER_W1", value: 64)
!121 = !DIEnumerator(name: "K_OBJ_DRIVER_WDT", value: 65)
!122 = !DIEnumerator(name: "K_OBJ_DRIVER_CAN_TRANSCEIVER", value: 66)
!123 = !DIEnumerator(name: "K_OBJ_DRIVER_UART_MUX", value: 67)
!124 = !DIEnumerator(name: "K_OBJ_DRIVER_ITS", value: 68)
!125 = !DIEnumerator(name: "K_OBJ_DRIVER_TGPIO", value: 69)
!126 = !DIEnumerator(name: "K_OBJ_DRIVER_PCIE_CTRL", value: 70)
!127 = !DIEnumerator(name: "K_OBJ_DRIVER_SVC", value: 71)
!128 = !DIEnumerator(name: "K_OBJ_DRIVER_BC12_EMUL", value: 72)
!129 = !DIEnumerator(name: "K_OBJ_DRIVER_BC12", value: 73)
!130 = !DIEnumerator(name: "K_OBJ_DRIVER_TCPC", value: 74)
!131 = !DIEnumerator(name: "K_OBJ_DRIVER_IVSHMEM", value: 75)
!132 = !DIEnumerator(name: "K_OBJ_DRIVER_EC_HOST_CMD_BACKEND_API", value: 76)
!133 = !DIEnumerator(name: "K_OBJ_DRIVER_ETHPHY", value: 77)
!134 = !DIEnumerator(name: "K_OBJ_LAST", value: 78)
!135 = !{!136, !137, !168, !169, !170, !145, !171}
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRQn_Type", file: !4, line: 107, baseType: !3)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 32)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "NVIC_Type", file: !139, line: 326, baseType: !140)
!139 = !DIFile(filename: "modules/hal/cmsis/CMSIS/Core/Include/core_cm0.h", directory: "/home/sri/zephyrproject")
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !139, line: 314, size: 6400, elements: !141)
!141 = !{!142, !150, !154, !155, !156, !157, !158, !159, !160, !164}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "ISER", scope: !140, file: !139, line: 316, baseType: !143, size: 32)
!143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 32, elements: !148)
!144 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !145)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !146, line: 64, baseType: !147)
!146 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/stdint.h", directory: "")
!147 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!148 = !{!149}
!149 = !DISubrange(count: 1)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !140, file: !139, line: 317, baseType: !151, size: 992, offset: 32)
!151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 992, elements: !152)
!152 = !{!153}
!153 = !DISubrange(count: 31)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "ICER", scope: !140, file: !139, line: 318, baseType: !143, size: 32, offset: 1024)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED1", scope: !140, file: !139, line: 319, baseType: !151, size: 992, offset: 1056)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "ISPR", scope: !140, file: !139, line: 320, baseType: !143, size: 32, offset: 2048)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED2", scope: !140, file: !139, line: 321, baseType: !151, size: 992, offset: 2080)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "ICPR", scope: !140, file: !139, line: 322, baseType: !143, size: 32, offset: 3072)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED3", scope: !140, file: !139, line: 323, baseType: !151, size: 992, offset: 3104)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED4", scope: !140, file: !139, line: 324, baseType: !161, size: 2048, offset: 4096)
!161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 2048, elements: !162)
!162 = !{!163}
!163 = !DISubrange(count: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "IP", scope: !140, file: !139, line: 325, baseType: !165, size: 256, offset: 6144)
!165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 256, elements: !166)
!166 = !{!167}
!167 = !DISubrange(count: 8)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!169 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !146, line: 58, baseType: !169)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 32)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "SCB_Type", file: !139, line: 352, baseType: !173)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !139, line: 341, size: 320, elements: !174)
!174 = !{!175, !177, !178, !179, !180, !181, !182, !183, !187}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "CPUID", scope: !173, file: !139, line: 343, baseType: !176, size: 32)
!176 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !144)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "ICSR", scope: !173, file: !139, line: 344, baseType: !144, size: 32, offset: 32)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !173, file: !139, line: 345, baseType: !145, size: 32, offset: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "AIRCR", scope: !173, file: !139, line: 346, baseType: !144, size: 32, offset: 96)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "SCR", scope: !173, file: !139, line: 347, baseType: !144, size: 32, offset: 128)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "CCR", scope: !173, file: !139, line: 348, baseType: !144, size: 32, offset: 160)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED1", scope: !173, file: !139, line: 349, baseType: !145, size: 32, offset: 192)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "SHP", scope: !173, file: !139, line: 350, baseType: !184, size: 64, offset: 224)
!184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 64, elements: !185)
!185 = !{!186}
!186 = !DISubrange(count: 2)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "SHCSR", scope: !173, file: !139, line: 351, baseType: !144, size: 32, offset: 288)
!188 = !{i32 7, !"Dwarf Version", i32 4}
!189 = !{i32 2, !"Debug Info Version", i32 3}
!190 = !{i32 1, !"wchar_size", i32 4}
!191 = !{i32 1, !"static_rwdata", i32 1}
!192 = !{i32 1, !"enumsize_buildattr", i32 1}
!193 = !{i32 1, !"armlib_unavailable", i32 0}
!194 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
!195 = distinct !DISubprogram(name: "z_impl_k_object_access_grant", scope: !54, file: !54, line: 223, type: !196, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !313)
!196 = !DISubroutineType(types: !197)
!197 = !{null, !198, !200}
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 32)
!199 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 32)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_thread", file: !202, line: 250, size: 896, elements: !203)
!202 = !DIFile(filename: "include/zephyr/kernel/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!203 = !{!204, !271, !284, !285, !286, !287, !308}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !201, file: !202, line: 252, baseType: !205, size: 384)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_base", file: !202, line: 58, size: 384, elements: !206)
!206 = !{!207, !233, !241, !243, !244, !256, !257, !258}
!207 = !DIDerivedType(tag: DW_TAG_member, scope: !205, file: !202, line: 61, baseType: !208, size: 64)
!208 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !205, file: !202, line: 61, size: 64, elements: !209)
!209 = !{!210, !226}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_dlist", scope: !208, file: !202, line: 62, baseType: !211, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dnode_t", file: !212, line: 55, baseType: !213)
!212 = !DIFile(filename: "include/zephyr/sys/dlist.h", directory: "/home/sri/zephyrproject/zephyr")
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_dnode", file: !212, line: 37, size: 64, elements: !214)
!214 = !{!215, !221}
!215 = !DIDerivedType(tag: DW_TAG_member, scope: !213, file: !212, line: 38, baseType: !216, size: 32)
!216 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !213, file: !212, line: 38, size: 32, elements: !217)
!217 = !{!218, !220}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !216, file: !212, line: 39, baseType: !219, size: 32)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 32)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !216, file: !212, line: 40, baseType: !219, size: 32)
!221 = !DIDerivedType(tag: DW_TAG_member, scope: !213, file: !212, line: 42, baseType: !222, size: 32, offset: 32)
!222 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !213, file: !212, line: 42, size: 32, elements: !223)
!223 = !{!224, !225}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !222, file: !212, line: 43, baseType: !219, size: 32)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !222, file: !212, line: 44, baseType: !219, size: 32)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_rb", scope: !208, file: !202, line: 63, baseType: !227, size: 64)
!227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rbnode", file: !228, line: 58, size: 64, elements: !229)
!228 = !DIFile(filename: "include/zephyr/sys/rb.h", directory: "/home/sri/zephyrproject/zephyr")
!229 = !{!230}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !227, file: !228, line: 60, baseType: !231, size: 64)
!231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !232, size: 64, elements: !185)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 32)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "pended_on", scope: !205, file: !202, line: 69, baseType: !234, size: 32, offset: 64)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 32)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "_wait_q_t", file: !236, line: 243, baseType: !237)
!236 = !DIFile(filename: "include/zephyr/kernel_structs.h", directory: "/home/sri/zephyrproject/zephyr")
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !236, line: 241, size: 64, elements: !238)
!238 = !{!239}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !237, file: !236, line: 242, baseType: !240, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dlist_t", file: !212, line: 51, baseType: !213)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "user_options", scope: !205, file: !202, line: 72, baseType: !242, size: 8, offset: 96)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !146, line: 62, baseType: !45)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "thread_state", scope: !205, file: !202, line: 75, baseType: !242, size: 8, offset: 104)
!244 = !DIDerivedType(tag: DW_TAG_member, scope: !205, file: !202, line: 91, baseType: !245, size: 16, offset: 112)
!245 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !205, file: !202, line: 91, size: 16, elements: !246)
!246 = !{!247, !253}
!247 = !DIDerivedType(tag: DW_TAG_member, scope: !245, file: !202, line: 92, baseType: !248, size: 16)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !245, file: !202, line: 92, size: 16, elements: !249)
!249 = !{!250, !252}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !248, file: !202, line: 97, baseType: !251, size: 8)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !146, line: 56, baseType: !5)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "sched_locked", scope: !248, file: !202, line: 98, baseType: !242, size: 8, offset: 8)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "preempt", scope: !245, file: !202, line: 101, baseType: !254, size: 16)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !146, line: 63, baseType: !255)
!255 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "order_key", scope: !205, file: !202, line: 108, baseType: !145, size: 32, offset: 128)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "swap_data", scope: !205, file: !202, line: 132, baseType: !168, size: 32, offset: 160)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !205, file: !202, line: 136, baseType: !259, size: 192, offset: 192)
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_timeout", file: !236, line: 254, size: 192, elements: !260)
!260 = !{!261, !262, !268}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !259, file: !236, line: 255, baseType: !211, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !259, file: !236, line: 256, baseType: !263, size: 32, offset: 64)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "_timeout_func_t", file: !236, line: 252, baseType: !264)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 32)
!265 = !DISubroutineType(types: !266)
!266 = !{null, !267}
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 32)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "dticks", scope: !259, file: !236, line: 259, baseType: !269, size: 64, offset: 128)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !146, line: 59, baseType: !270)
!270 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "callee_saved", scope: !201, file: !202, line: 255, baseType: !272, size: 288, offset: 384)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_callee_saved", file: !273, line: 25, size: 288, elements: !274)
!273 = !DIFile(filename: "include/zephyr/arch/arm/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!274 = !{!275, !276, !277, !278, !279, !280, !281, !282, !283}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "v1", scope: !272, file: !273, line: 26, baseType: !145, size: 32)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "v2", scope: !272, file: !273, line: 27, baseType: !145, size: 32, offset: 32)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "v3", scope: !272, file: !273, line: 28, baseType: !145, size: 32, offset: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "v4", scope: !272, file: !273, line: 29, baseType: !145, size: 32, offset: 96)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "v5", scope: !272, file: !273, line: 30, baseType: !145, size: 32, offset: 128)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "v6", scope: !272, file: !273, line: 31, baseType: !145, size: 32, offset: 160)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "v7", scope: !272, file: !273, line: 32, baseType: !145, size: 32, offset: 192)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "v8", scope: !272, file: !273, line: 33, baseType: !145, size: 32, offset: 224)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "psp", scope: !272, file: !273, line: 34, baseType: !145, size: 32, offset: 256)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "init_data", scope: !201, file: !202, line: 258, baseType: !168, size: 32, offset: 672)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "join_queue", scope: !201, file: !202, line: 261, baseType: !235, size: 64, offset: 704)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "errno_var", scope: !201, file: !202, line: 302, baseType: !169, size: 32, offset: 768)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "resource_pool", scope: !201, file: !202, line: 333, baseType: !288, size: 32, offset: 800)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 32)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_heap", file: !290, line: 5291, size: 160, elements: !291)
!290 = !DIFile(filename: "include/zephyr/kernel.h", directory: "/home/sri/zephyrproject/zephyr")
!291 = !{!292, !303, !304}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !289, file: !290, line: 5292, baseType: !293, size: 96)
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sys_heap", file: !294, line: 56, size: 96, elements: !295)
!294 = !DIFile(filename: "include/zephyr/sys/sys_heap.h", directory: "/home/sri/zephyrproject/zephyr")
!295 = !{!296, !299, !300}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !293, file: !294, line: 57, baseType: !297, size: 32)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 32)
!298 = !DICompositeType(tag: DW_TAG_structure_type, name: "z_heap", file: !294, line: 57, flags: DIFlagFwdDecl)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "init_mem", scope: !293, file: !294, line: 58, baseType: !168, size: 32, offset: 32)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "init_bytes", scope: !293, file: !294, line: 59, baseType: !301, size: 32, offset: 64)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !302, line: 46, baseType: !147)
!302 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/lib/clang/17/include/stddef.h", directory: "")
!303 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !289, file: !290, line: 5293, baseType: !235, size: 64, offset: 96)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !289, file: !290, line: 5294, baseType: !305, offset: 160)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_spinlock", file: !306, line: 45, elements: !307)
!306 = !DIFile(filename: "include/zephyr/spinlock.h", directory: "/home/sri/zephyrproject/zephyr")
!307 = !{}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !201, file: !202, line: 355, baseType: !309, size: 64, offset: 832)
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_arch", file: !273, line: 60, size: 64, elements: !310)
!310 = !{!311, !312}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "basepri", scope: !309, file: !273, line: 63, baseType: !145, size: 32)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "swap_return_value", scope: !309, file: !273, line: 66, baseType: !145, size: 32, offset: 32)
!313 = !{!314, !315}
!314 = !DILocalVariable(name: "object", arg: 1, scope: !195, file: !54, line: 223, type: !198)
!315 = !DILocalVariable(name: "thread", arg: 2, scope: !195, file: !54, line: 224, type: !200)
!316 = !DILocation(line: 223, column: 61, scope: !195)
!317 = !DILocation(line: 224, column: 24, scope: !195)
!318 = !DILocation(line: 226, column: 9, scope: !195)
!319 = !DILocation(line: 227, column: 9, scope: !195)
!320 = !DILocation(line: 228, column: 1, scope: !195)
!321 = distinct !DISubprogram(name: "z_impl_k_object_release", scope: !54, file: !54, line: 243, type: !322, scopeLine: 244, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !324)
!322 = !DISubroutineType(types: !323)
!323 = !{null, !198}
!324 = !{!325}
!325 = !DILocalVariable(name: "object", arg: 1, scope: !321, file: !54, line: 243, type: !198)
!326 = !DILocation(line: 243, column: 56, scope: !321)
!327 = !DILocation(line: 245, column: 9, scope: !321)
!328 = !DILocation(line: 246, column: 1, scope: !321)
!329 = distinct !DISubprogram(name: "z_impl_k_object_alloc", scope: !54, file: !54, line: 359, type: !330, scopeLine: 360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !332)
!330 = !DISubroutineType(types: !331)
!331 = !{!168, !53}
!332 = !{!333}
!333 = !DILocalVariable(name: "otype", arg: 1, scope: !329, file: !54, line: 359, type: !53)
!334 = !DILocation(line: 359, column: 58, scope: !329)
!335 = !DILocation(line: 361, column: 9, scope: !329)
!336 = !DILocation(line: 363, column: 2, scope: !329)
!337 = distinct !DISubprogram(name: "z_impl_k_object_alloc_size", scope: !54, file: !54, line: 366, type: !338, scopeLine: 368, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !340)
!338 = !DISubroutineType(types: !339)
!339 = !{!168, !53, !301}
!340 = !{!341, !342}
!341 = !DILocalVariable(name: "otype", arg: 1, scope: !337, file: !54, line: 366, type: !53)
!342 = !DILocalVariable(name: "size", arg: 2, scope: !337, file: !54, line: 367, type: !301)
!343 = !DILocation(line: 366, column: 63, scope: !337)
!344 = !DILocation(line: 367, column: 13, scope: !337)
!345 = !DILocation(line: 369, column: 9, scope: !337)
!346 = !DILocation(line: 370, column: 9, scope: !337)
!347 = !DILocation(line: 372, column: 2, scope: !337)
!348 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_expires_ticks", scope: !290, file: !290, line: 656, type: !349, scopeLine: 658, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !355)
!349 = !DISubroutineType(types: !350)
!350 = !{!351, !353}
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_ticks_t", file: !352, line: 46, baseType: !269)
!352 = !DIFile(filename: "include/zephyr/sys_clock.h", directory: "/home/sri/zephyrproject/zephyr")
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 32)
!354 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !201)
!355 = !{!356}
!356 = !DILocalVariable(name: "t", arg: 1, scope: !348, file: !290, line: 657, type: !353)
!357 = !DILocation(line: 657, column: 30, scope: !348)
!358 = !DILocation(line: 659, column: 28, scope: !348)
!359 = !DILocation(line: 659, column: 31, scope: !348)
!360 = !DILocation(line: 659, column: 36, scope: !348)
!361 = !DILocation(line: 659, column: 9, scope: !348)
!362 = !DILocation(line: 659, column: 2, scope: !348)
!363 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_remaining_ticks", scope: !290, file: !290, line: 671, type: !349, scopeLine: 673, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !364)
!364 = !{!365}
!365 = !DILocalVariable(name: "t", arg: 1, scope: !363, file: !290, line: 672, type: !353)
!366 = !DILocation(line: 672, column: 30, scope: !363)
!367 = !DILocation(line: 674, column: 30, scope: !363)
!368 = !DILocation(line: 674, column: 33, scope: !363)
!369 = !DILocation(line: 674, column: 38, scope: !363)
!370 = !DILocation(line: 674, column: 9, scope: !363)
!371 = !DILocation(line: 674, column: 2, scope: !363)
!372 = distinct !DISubprogram(name: "z_impl_k_timer_expires_ticks", scope: !290, file: !290, line: 1634, type: !373, scopeLine: 1636, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !394)
!373 = !DISubroutineType(types: !374)
!374 = !{!351, !375}
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 32)
!376 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !377)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_timer", file: !290, line: 1439, size: 448, elements: !378)
!378 = !{!379, !380, !381, !386, !387, !392, !393}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !377, file: !290, line: 1445, baseType: !259, size: 192)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !377, file: !290, line: 1448, baseType: !235, size: 64, offset: 192)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_fn", scope: !377, file: !290, line: 1451, baseType: !382, size: 32, offset: 256)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 32)
!383 = !DISubroutineType(types: !384)
!384 = !{null, !385}
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 32)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "stop_fn", scope: !377, file: !290, line: 1454, baseType: !382, size: 32, offset: 288)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !377, file: !290, line: 1457, baseType: !388, size: 64, offset: 320)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_timeout_t", file: !352, line: 67, baseType: !389)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !352, line: 65, size: 64, elements: !390)
!390 = !{!391}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "ticks", scope: !389, file: !352, line: 66, baseType: !351, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !377, file: !290, line: 1460, baseType: !145, size: 32, offset: 384)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !377, file: !290, line: 1463, baseType: !168, size: 32, offset: 416)
!394 = !{!395}
!395 = !DILocalVariable(name: "timer", arg: 1, scope: !372, file: !290, line: 1635, type: !375)
!396 = !DILocation(line: 1635, column: 34, scope: !372)
!397 = !DILocation(line: 1637, column: 28, scope: !372)
!398 = !DILocation(line: 1637, column: 35, scope: !372)
!399 = !DILocation(line: 1637, column: 9, scope: !372)
!400 = !DILocation(line: 1637, column: 2, scope: !372)
!401 = distinct !DISubprogram(name: "z_impl_k_timer_remaining_ticks", scope: !290, file: !290, line: 1649, type: !373, scopeLine: 1651, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !402)
!402 = !{!403}
!403 = !DILocalVariable(name: "timer", arg: 1, scope: !401, file: !290, line: 1650, type: !375)
!404 = !DILocation(line: 1650, column: 34, scope: !401)
!405 = !DILocation(line: 1652, column: 30, scope: !401)
!406 = !DILocation(line: 1652, column: 37, scope: !401)
!407 = !DILocation(line: 1652, column: 9, scope: !401)
!408 = !DILocation(line: 1652, column: 2, scope: !401)
!409 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_set", scope: !290, file: !290, line: 1689, type: !410, scopeLine: 1691, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !412)
!410 = !DISubroutineType(types: !411)
!411 = !{null, !385, !168}
!412 = !{!413, !414}
!413 = !DILocalVariable(name: "timer", arg: 1, scope: !409, file: !290, line: 1689, type: !385)
!414 = !DILocalVariable(name: "user_data", arg: 2, scope: !409, file: !290, line: 1690, type: !168)
!415 = !DILocation(line: 1689, column: 65, scope: !409)
!416 = !DILocation(line: 1690, column: 19, scope: !409)
!417 = !DILocation(line: 1692, column: 21, scope: !409)
!418 = !DILocation(line: 1692, column: 2, scope: !409)
!419 = !DILocation(line: 1692, column: 9, scope: !409)
!420 = !DILocation(line: 1692, column: 19, scope: !409)
!421 = !DILocation(line: 1693, column: 1, scope: !409)
!422 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_get", scope: !290, file: !290, line: 1704, type: !423, scopeLine: 1705, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !425)
!423 = !DISubroutineType(types: !424)
!424 = !{!168, !375}
!425 = !{!426}
!426 = !DILocalVariable(name: "timer", arg: 1, scope: !422, file: !290, line: 1704, type: !375)
!427 = !DILocation(line: 1704, column: 72, scope: !422)
!428 = !DILocation(line: 1706, column: 9, scope: !422)
!429 = !DILocation(line: 1706, column: 16, scope: !422)
!430 = !DILocation(line: 1706, column: 2, scope: !422)
!431 = distinct !DISubprogram(name: "z_impl_k_queue_is_empty", scope: !290, file: !290, line: 2071, type: !432, scopeLine: 2072, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !452)
!432 = !DISubroutineType(types: !433)
!433 = !{!169, !434}
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 32)
!435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_queue", file: !290, line: 1830, size: 128, elements: !436)
!436 = !{!437, !450, !451}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "data_q", scope: !435, file: !290, line: 1831, baseType: !438, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sflist_t", file: !439, line: 60, baseType: !440)
!439 = !DIFile(filename: "include/zephyr/sys/sflist.h", directory: "/home/sri/zephyrproject/zephyr")
!440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sflist", file: !439, line: 53, size: 64, elements: !441)
!441 = !{!442, !449}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !440, file: !439, line: 54, baseType: !443, size: 32)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 32)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sfnode_t", file: !439, line: 50, baseType: !445)
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sfnode", file: !439, line: 44, size: 32, elements: !446)
!446 = !{!447}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "next_and_flags", scope: !445, file: !439, line: 45, baseType: !448, size: 32)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "unative_t", file: !439, line: 40, baseType: !145)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !440, file: !439, line: 55, baseType: !443, size: 32, offset: 32)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !435, file: !290, line: 1832, baseType: !305, offset: 64)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !435, file: !290, line: 1833, baseType: !235, size: 64, offset: 64)
!452 = !{!453}
!453 = !DILocalVariable(name: "queue", arg: 1, scope: !431, file: !290, line: 2071, type: !434)
!454 = !DILocation(line: 2071, column: 59, scope: !431)
!455 = !DILocation(line: 2073, column: 35, scope: !431)
!456 = !DILocation(line: 2073, column: 42, scope: !431)
!457 = !DILocation(line: 2073, column: 14, scope: !431)
!458 = !DILocation(line: 2073, column: 9, scope: !431)
!459 = !DILocation(line: 2073, column: 2, scope: !431)
!460 = distinct !DISubprogram(name: "z_impl_k_sem_count_get", scope: !290, file: !290, line: 3209, type: !461, scopeLine: 3210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !469)
!461 = !DISubroutineType(types: !462)
!462 = !{!147, !463}
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 32)
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sem", file: !290, line: 3092, size: 128, elements: !465)
!465 = !{!466, !467, !468}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !464, file: !290, line: 3093, baseType: !235, size: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !464, file: !290, line: 3094, baseType: !147, size: 32, offset: 64)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !464, file: !290, line: 3095, baseType: !147, size: 32, offset: 96)
!469 = !{!470}
!470 = !DILocalVariable(name: "sem", arg: 1, scope: !460, file: !290, line: 3209, type: !463)
!471 = !DILocation(line: 3209, column: 65, scope: !460)
!472 = !DILocation(line: 3211, column: 9, scope: !460)
!473 = !DILocation(line: 3211, column: 14, scope: !460)
!474 = !DILocation(line: 3211, column: 2, scope: !460)
!475 = distinct !DISubprogram(name: "z_impl_k_msgq_num_free_get", scope: !290, file: !290, line: 4649, type: !476, scopeLine: 4650, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !493)
!476 = !DISubroutineType(types: !477)
!477 = !{!145, !478}
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 32)
!479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_msgq", file: !290, line: 4390, size: 320, elements: !480)
!480 = !{!481, !482, !483, !484, !485, !488, !489, !490, !491, !492}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !479, file: !290, line: 4392, baseType: !235, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !479, file: !290, line: 4394, baseType: !305, offset: 64)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "msg_size", scope: !479, file: !290, line: 4396, baseType: !301, size: 32, offset: 64)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !479, file: !290, line: 4398, baseType: !145, size: 32, offset: 96)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_start", scope: !479, file: !290, line: 4400, baseType: !486, size: 32, offset: 128)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 32)
!487 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_end", scope: !479, file: !290, line: 4402, baseType: !486, size: 32, offset: 160)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "read_ptr", scope: !479, file: !290, line: 4404, baseType: !486, size: 32, offset: 192)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "write_ptr", scope: !479, file: !290, line: 4406, baseType: !486, size: 32, offset: 224)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "used_msgs", scope: !479, file: !290, line: 4408, baseType: !145, size: 32, offset: 256)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !479, file: !290, line: 4413, baseType: !242, size: 8, offset: 288)
!493 = !{!494}
!494 = !DILocalVariable(name: "msgq", arg: 1, scope: !475, file: !290, line: 4649, type: !478)
!495 = !DILocation(line: 4649, column: 66, scope: !475)
!496 = !DILocation(line: 4651, column: 9, scope: !475)
!497 = !DILocation(line: 4651, column: 15, scope: !475)
!498 = !DILocation(line: 4651, column: 26, scope: !475)
!499 = !DILocation(line: 4651, column: 32, scope: !475)
!500 = !DILocation(line: 4651, column: 24, scope: !475)
!501 = !DILocation(line: 4651, column: 2, scope: !475)
!502 = distinct !DISubprogram(name: "z_impl_k_msgq_num_used_get", scope: !290, file: !290, line: 4665, type: !476, scopeLine: 4666, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !503)
!503 = !{!504}
!504 = !DILocalVariable(name: "msgq", arg: 1, scope: !502, file: !290, line: 4665, type: !478)
!505 = !DILocation(line: 4665, column: 66, scope: !502)
!506 = !DILocation(line: 4667, column: 9, scope: !502)
!507 = !DILocation(line: 4667, column: 15, scope: !502)
!508 = !DILocation(line: 4667, column: 2, scope: !502)
!509 = distinct !DISubprogram(name: "arch_irq_enable", scope: !510, file: !510, line: 35, type: !511, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !513)
!510 = !DIFile(filename: "arch/arm/core/cortex_m/irq_manage.c", directory: "/home/sri/zephyrproject/zephyr")
!511 = !DISubroutineType(types: !512)
!512 = !{null, !147}
!513 = !{!514}
!514 = !DILocalVariable(name: "irq", arg: 1, scope: !509, file: !510, line: 35, type: !147)
!515 = !DILocation(line: 35, column: 35, scope: !509)
!516 = !DILocation(line: 37, column: 30, scope: !509)
!517 = !DILocation(line: 37, column: 19, scope: !509)
!518 = !DILocation(line: 37, column: 2, scope: !509)
!519 = !DILocation(line: 38, column: 1, scope: !509)
!520 = distinct !DISubprogram(name: "__NVIC_EnableIRQ", scope: !139, file: !139, line: 623, type: !521, scopeLine: 624, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !523)
!521 = !DISubroutineType(types: !522)
!522 = !{null, !136}
!523 = !{!524}
!524 = !DILocalVariable(name: "IRQn", arg: 1, scope: !520, file: !139, line: 623, type: !136)
!525 = !DILocation(line: 623, column: 49, scope: !520)
!526 = !DILocation(line: 625, column: 17, scope: !527)
!527 = distinct !DILexicalBlock(scope: !520, file: !139, line: 625, column: 7)
!528 = !DILocation(line: 625, column: 7, scope: !527)
!529 = !DILocation(line: 625, column: 23, scope: !527)
!530 = !DILocation(line: 625, column: 7, scope: !520)
!531 = !DILocation(line: 627, column: 5, scope: !532)
!532 = distinct !DILexicalBlock(scope: !527, file: !139, line: 626, column: 3)
!533 = !{i64 168741}
!534 = !DILocation(line: 628, column: 92, scope: !532)
!535 = !DILocation(line: 628, column: 82, scope: !532)
!536 = !DILocation(line: 628, column: 98, scope: !532)
!537 = !DILocation(line: 628, column: 77, scope: !532)
!538 = !DILocation(line: 628, column: 60, scope: !532)
!539 = !DILocation(line: 629, column: 5, scope: !532)
!540 = !{i64 168885}
!541 = !DILocation(line: 630, column: 3, scope: !532)
!542 = !DILocation(line: 631, column: 1, scope: !520)
!543 = distinct !DISubprogram(name: "arch_irq_disable", scope: !510, file: !510, line: 40, type: !511, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !544)
!544 = !{!545}
!545 = !DILocalVariable(name: "irq", arg: 1, scope: !543, file: !510, line: 40, type: !147)
!546 = !DILocation(line: 40, column: 36, scope: !543)
!547 = !DILocation(line: 42, column: 31, scope: !543)
!548 = !DILocation(line: 42, column: 20, scope: !543)
!549 = !DILocation(line: 42, column: 2, scope: !543)
!550 = !DILocation(line: 43, column: 1, scope: !543)
!551 = distinct !DISubprogram(name: "__NVIC_DisableIRQ", scope: !139, file: !139, line: 661, type: !521, scopeLine: 662, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !552)
!552 = !{!553}
!553 = !DILocalVariable(name: "IRQn", arg: 1, scope: !551, file: !139, line: 661, type: !136)
!554 = !DILocation(line: 661, column: 50, scope: !551)
!555 = !DILocation(line: 663, column: 17, scope: !556)
!556 = distinct !DILexicalBlock(scope: !551, file: !139, line: 663, column: 7)
!557 = !DILocation(line: 663, column: 7, scope: !556)
!558 = !DILocation(line: 663, column: 23, scope: !556)
!559 = !DILocation(line: 663, column: 7, scope: !551)
!560 = !DILocation(line: 665, column: 92, scope: !561)
!561 = distinct !DILexicalBlock(scope: !556, file: !139, line: 664, column: 3)
!562 = !DILocation(line: 665, column: 82, scope: !561)
!563 = !DILocation(line: 665, column: 98, scope: !561)
!564 = !DILocation(line: 665, column: 77, scope: !561)
!565 = !DILocation(line: 665, column: 60, scope: !561)
!566 = !DILocation(line: 666, column: 5, scope: !561)
!567 = !DILocation(line: 667, column: 5, scope: !561)
!568 = !DILocation(line: 668, column: 3, scope: !561)
!569 = !DILocation(line: 669, column: 1, scope: !551)
!570 = distinct !DISubprogram(name: "arch_irq_is_enabled", scope: !510, file: !510, line: 45, type: !571, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !573)
!571 = !DISubroutineType(types: !572)
!572 = !{!169, !147}
!573 = !{!574}
!574 = !DILocalVariable(name: "irq", arg: 1, scope: !570, file: !510, line: 45, type: !147)
!575 = !DILocation(line: 45, column: 38, scope: !570)
!576 = !DILocation(line: 47, column: 61, scope: !570)
!577 = !DILocation(line: 47, column: 65, scope: !570)
!578 = !DILocation(line: 47, column: 9, scope: !570)
!579 = !DILocation(line: 47, column: 84, scope: !570)
!580 = !DILocation(line: 47, column: 88, scope: !570)
!581 = !DILocation(line: 47, column: 79, scope: !570)
!582 = !DILocation(line: 47, column: 72, scope: !570)
!583 = !DILocation(line: 47, column: 2, scope: !570)
!584 = distinct !DISubprogram(name: "z_arm_irq_priority_set", scope: !510, file: !510, line: 59, type: !585, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !587)
!585 = !DISubroutineType(types: !586)
!586 = !{null, !147, !147, !145}
!587 = !{!588, !589, !590}
!588 = !DILocalVariable(name: "irq", arg: 1, scope: !584, file: !510, line: 59, type: !147)
!589 = !DILocalVariable(name: "prio", arg: 2, scope: !584, file: !510, line: 59, type: !147)
!590 = !DILocalVariable(name: "flags", arg: 3, scope: !584, file: !510, line: 59, type: !145)
!591 = !DILocation(line: 59, column: 42, scope: !584)
!592 = !DILocation(line: 59, column: 60, scope: !584)
!593 = !DILocation(line: 59, column: 75, scope: !584)
!594 = !DILocation(line: 78, column: 8, scope: !595)
!595 = distinct !DILexicalBlock(scope: !596, file: !510, line: 77, column: 9)
!596 = distinct !DILexicalBlock(scope: !584, file: !510, line: 71, column: 6)
!597 = !DILocation(line: 90, column: 32, scope: !584)
!598 = !DILocation(line: 90, column: 21, scope: !584)
!599 = !DILocation(line: 90, column: 37, scope: !584)
!600 = !DILocation(line: 90, column: 2, scope: !584)
!601 = !DILocation(line: 91, column: 1, scope: !584)
!602 = distinct !DISubprogram(name: "__NVIC_SetPriority", scope: !139, file: !139, line: 732, type: !603, scopeLine: 733, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !605)
!603 = !DISubroutineType(types: !604)
!604 = !{null, !136, !145}
!605 = !{!606, !607}
!606 = !DILocalVariable(name: "IRQn", arg: 1, scope: !602, file: !139, line: 732, type: !136)
!607 = !DILocalVariable(name: "priority", arg: 2, scope: !602, file: !139, line: 732, type: !145)
!608 = !DILocation(line: 732, column: 51, scope: !602)
!609 = !DILocation(line: 732, column: 66, scope: !602)
!610 = !DILocation(line: 734, column: 17, scope: !611)
!611 = distinct !DILexicalBlock(scope: !602, file: !139, line: 734, column: 7)
!612 = !DILocation(line: 734, column: 7, scope: !611)
!613 = !DILocation(line: 734, column: 23, scope: !611)
!614 = !DILocation(line: 734, column: 7, scope: !602)
!615 = !DILocation(line: 736, column: 183, scope: !616)
!616 = distinct !DILexicalBlock(scope: !611, file: !139, line: 735, column: 3)
!617 = !DILocation(line: 736, column: 173, scope: !616)
!618 = !DILocation(line: 736, column: 190, scope: !616)
!619 = !DILocation(line: 736, column: 110, scope: !616)
!620 = !DILocation(line: 736, column: 240, scope: !616)
!621 = !DILocation(line: 736, column: 230, scope: !616)
!622 = !DILocation(line: 736, column: 249, scope: !616)
!623 = !DILocation(line: 736, column: 259, scope: !616)
!624 = !DILocation(line: 736, column: 212, scope: !616)
!625 = !DILocation(line: 736, column: 203, scope: !616)
!626 = !DILocation(line: 736, column: 201, scope: !616)
!627 = !DILocation(line: 737, column: 11, scope: !616)
!628 = !DILocation(line: 737, column: 20, scope: !616)
!629 = !DILocation(line: 737, column: 33, scope: !616)
!630 = !DILocation(line: 737, column: 81, scope: !616)
!631 = !DILocation(line: 737, column: 71, scope: !616)
!632 = !DILocation(line: 737, column: 90, scope: !616)
!633 = !DILocation(line: 737, column: 100, scope: !616)
!634 = !DILocation(line: 737, column: 53, scope: !616)
!635 = !DILocation(line: 736, column: 268, scope: !616)
!636 = !DILocation(line: 736, column: 78, scope: !616)
!637 = !DILocation(line: 736, column: 68, scope: !616)
!638 = !DILocation(line: 736, column: 85, scope: !616)
!639 = !DILocation(line: 736, column: 5, scope: !616)
!640 = !DILocation(line: 736, column: 96, scope: !616)
!641 = !DILocation(line: 738, column: 3, scope: !616)
!642 = !DILocation(line: 741, column: 202, scope: !643)
!643 = distinct !DILexicalBlock(scope: !611, file: !139, line: 740, column: 3)
!644 = !DILocation(line: 741, column: 192, scope: !643)
!645 = !DILocation(line: 741, column: 209, scope: !643)
!646 = !DILocation(line: 741, column: 218, scope: !643)
!647 = !DILocation(line: 741, column: 224, scope: !643)
!648 = !DILocation(line: 741, column: 127, scope: !643)
!649 = !DILocation(line: 741, column: 274, scope: !643)
!650 = !DILocation(line: 741, column: 264, scope: !643)
!651 = !DILocation(line: 741, column: 283, scope: !643)
!652 = !DILocation(line: 741, column: 293, scope: !643)
!653 = !DILocation(line: 741, column: 246, scope: !643)
!654 = !DILocation(line: 741, column: 237, scope: !643)
!655 = !DILocation(line: 741, column: 235, scope: !643)
!656 = !DILocation(line: 742, column: 11, scope: !643)
!657 = !DILocation(line: 742, column: 20, scope: !643)
!658 = !DILocation(line: 742, column: 33, scope: !643)
!659 = !DILocation(line: 742, column: 81, scope: !643)
!660 = !DILocation(line: 742, column: 71, scope: !643)
!661 = !DILocation(line: 742, column: 90, scope: !643)
!662 = !DILocation(line: 742, column: 100, scope: !643)
!663 = !DILocation(line: 742, column: 53, scope: !643)
!664 = !DILocation(line: 741, column: 302, scope: !643)
!665 = !DILocation(line: 741, column: 80, scope: !643)
!666 = !DILocation(line: 741, column: 70, scope: !643)
!667 = !DILocation(line: 741, column: 87, scope: !643)
!668 = !DILocation(line: 741, column: 96, scope: !643)
!669 = !DILocation(line: 741, column: 102, scope: !643)
!670 = !DILocation(line: 741, column: 5, scope: !643)
!671 = !DILocation(line: 741, column: 113, scope: !643)
!672 = !DILocation(line: 744, column: 1, scope: !602)
!673 = distinct !DISubprogram(name: "z_irq_spurious", scope: !510, file: !510, line: 103, type: !322, scopeLine: 104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !674)
!674 = !{!675}
!675 = !DILocalVariable(name: "unused", arg: 1, scope: !673, file: !510, line: 103, type: !198)
!676 = !DILocation(line: 103, column: 33, scope: !673)
!677 = !DILocation(line: 105, column: 9, scope: !673)
!678 = !DILocation(line: 107, column: 2, scope: !673)
!679 = !DILocation(line: 108, column: 1, scope: !673)
!680 = !DISubprogram(name: "z_arm_fatal_error", scope: !510, file: !510, line: 93, type: !681, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !307)
!681 = !DISubroutineType(types: !682)
!682 = !{null, !147, !683}
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 32)
!684 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !685)
!685 = !DIDerivedType(tag: DW_TAG_typedef, name: "z_arch_esf_t", file: !686, line: 122, baseType: !687)
!686 = !DIFile(filename: "include/zephyr/arch/arm/cortex_m/exc.h", directory: "/home/sri/zephyrproject/zephyr")
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__esf", file: !686, line: 101, size: 256, elements: !688)
!688 = !{!689}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "basic", scope: !687, file: !686, line: 111, baseType: !690, size: 256)
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__basic_sf", file: !686, line: 102, size: 256, elements: !691)
!691 = !{!692, !697, !702, !707, !712, !717, !722, !727}
!692 = !DIDerivedType(tag: DW_TAG_member, scope: !690, file: !686, line: 103, baseType: !693, size: 32)
!693 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !690, file: !686, line: 103, size: 32, elements: !694)
!694 = !{!695, !696}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "a1", scope: !693, file: !686, line: 103, baseType: !145, size: 32)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "r0", scope: !693, file: !686, line: 103, baseType: !145, size: 32)
!697 = !DIDerivedType(tag: DW_TAG_member, scope: !690, file: !686, line: 104, baseType: !698, size: 32, offset: 32)
!698 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !690, file: !686, line: 104, size: 32, elements: !699)
!699 = !{!700, !701}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "a2", scope: !698, file: !686, line: 104, baseType: !145, size: 32)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "r1", scope: !698, file: !686, line: 104, baseType: !145, size: 32)
!702 = !DIDerivedType(tag: DW_TAG_member, scope: !690, file: !686, line: 105, baseType: !703, size: 32, offset: 64)
!703 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !690, file: !686, line: 105, size: 32, elements: !704)
!704 = !{!705, !706}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "a3", scope: !703, file: !686, line: 105, baseType: !145, size: 32)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "r2", scope: !703, file: !686, line: 105, baseType: !145, size: 32)
!707 = !DIDerivedType(tag: DW_TAG_member, scope: !690, file: !686, line: 106, baseType: !708, size: 32, offset: 96)
!708 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !690, file: !686, line: 106, size: 32, elements: !709)
!709 = !{!710, !711}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "a4", scope: !708, file: !686, line: 106, baseType: !145, size: 32)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "r3", scope: !708, file: !686, line: 106, baseType: !145, size: 32)
!712 = !DIDerivedType(tag: DW_TAG_member, scope: !690, file: !686, line: 107, baseType: !713, size: 32, offset: 128)
!713 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !690, file: !686, line: 107, size: 32, elements: !714)
!714 = !{!715, !716}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !713, file: !686, line: 107, baseType: !145, size: 32)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !713, file: !686, line: 107, baseType: !145, size: 32)
!717 = !DIDerivedType(tag: DW_TAG_member, scope: !690, file: !686, line: 108, baseType: !718, size: 32, offset: 160)
!718 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !690, file: !686, line: 108, size: 32, elements: !719)
!719 = !{!720, !721}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "lr", scope: !718, file: !686, line: 108, baseType: !145, size: 32)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !718, file: !686, line: 108, baseType: !145, size: 32)
!722 = !DIDerivedType(tag: DW_TAG_member, scope: !690, file: !686, line: 109, baseType: !723, size: 32, offset: 192)
!723 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !690, file: !686, line: 109, size: 32, elements: !724)
!724 = !{!725, !726}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "pc", scope: !723, file: !686, line: 109, baseType: !145, size: 32)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !723, file: !686, line: 109, baseType: !145, size: 32)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "xpsr", scope: !690, file: !686, line: 110, baseType: !145, size: 32, offset: 224)
!728 = !DISubprogram(name: "z_timeout_expires", scope: !290, file: !290, line: 642, type: !729, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !307)
!729 = !DISubroutineType(types: !730)
!730 = !{!351, !731}
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 32)
!732 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !259)
!733 = !DISubprogram(name: "z_timeout_remaining", scope: !290, file: !290, line: 643, type: !729, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !307)
!734 = distinct !DISubprogram(name: "sys_sflist_is_empty", scope: !439, file: !439, line: 335, type: !735, scopeLine: 335, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !739)
!735 = !DISubroutineType(types: !736)
!736 = !{!737, !738}
!737 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 32)
!739 = !{!740}
!740 = !DILocalVariable(name: "list", arg: 1, scope: !734, file: !439, line: 335, type: !738)
!741 = !DILocation(line: 335, column: 55, scope: !734)
!742 = !DILocation(line: 335, column: 92, scope: !734)
!743 = !DILocation(line: 335, column: 71, scope: !734)
!744 = !DILocation(line: 335, column: 98, scope: !734)
!745 = !DILocation(line: 335, column: 63, scope: !734)
!746 = distinct !DISubprogram(name: "sys_sflist_peek_head", scope: !439, file: !439, line: 255, type: !747, scopeLine: 256, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !749)
!747 = !DISubroutineType(types: !748)
!748 = !{!443, !738}
!749 = !{!750}
!750 = !DILocalVariable(name: "list", arg: 1, scope: !746, file: !439, line: 255, type: !738)
!751 = !DILocation(line: 255, column: 64, scope: !746)
!752 = !DILocation(line: 257, column: 9, scope: !746)
!753 = !DILocation(line: 257, column: 15, scope: !746)
!754 = !DILocation(line: 257, column: 2, scope: !746)
