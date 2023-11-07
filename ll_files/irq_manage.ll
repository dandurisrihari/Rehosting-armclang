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

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_k_object_access_grant(ptr noundef %0, ptr noundef %1) #0 !dbg !197 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !315, metadata !DIExpression()), !dbg !316
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !317, metadata !DIExpression()), !dbg !318
  %5 = load ptr, ptr %3, align 4, !dbg !319
  %6 = load ptr, ptr %4, align 4, !dbg !320
  ret void, !dbg !321
}

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_k_object_release(ptr noundef %0) #0 !dbg !322 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !325, metadata !DIExpression()), !dbg !326
  %3 = load ptr, ptr %2, align 4, !dbg !327
  ret void, !dbg !328
}

; Function Attrs: noinline nounwind optnone
define internal ptr @z_impl_k_object_alloc(i8 noundef zeroext %0) #0 !dbg !329 {
  %2 = alloca i8, align 1
  store i8 %0, ptr %2, align 1
  call void @llvm.dbg.declare(metadata ptr %2, metadata !332, metadata !DIExpression()), !dbg !333
  %3 = load i8, ptr %2, align 1, !dbg !334
  ret ptr null, !dbg !335
}

; Function Attrs: noinline nounwind optnone
define internal ptr @z_impl_k_object_alloc_size(i8 noundef zeroext %0, i32 noundef %1) #0 !dbg !336 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8 %0, ptr %3, align 1
  call void @llvm.dbg.declare(metadata ptr %3, metadata !339, metadata !DIExpression()), !dbg !340
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !341, metadata !DIExpression()), !dbg !342
  %5 = load i8, ptr %3, align 1, !dbg !343
  %6 = load i32, ptr %4, align 4, !dbg !344
  ret ptr null, !dbg !345
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_thread_timeout_expires_ticks(ptr noundef %0) #0 !dbg !346 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !353, metadata !DIExpression()), !dbg !354
  %3 = load ptr, ptr %2, align 4, !dbg !355
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !356
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !357
  %6 = call i64 @z_timeout_expires(ptr noundef %5), !dbg !358
  ret i64 %6, !dbg !359
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_thread_timeout_remaining_ticks(ptr noundef %0) #0 !dbg !360 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !361, metadata !DIExpression()), !dbg !362
  %3 = load ptr, ptr %2, align 4, !dbg !363
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !364
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !365
  %6 = call i64 @z_timeout_remaining(ptr noundef %5), !dbg !366
  ret i64 %6, !dbg !367
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_timer_expires_ticks(ptr noundef %0) #0 !dbg !368 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !390, metadata !DIExpression()), !dbg !391
  %3 = load ptr, ptr %2, align 4, !dbg !392
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !393
  %5 = call i64 @z_timeout_expires(ptr noundef %4), !dbg !394
  ret i64 %5, !dbg !395
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_timer_remaining_ticks(ptr noundef %0) #0 !dbg !396 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !397, metadata !DIExpression()), !dbg !398
  %3 = load ptr, ptr %2, align 4, !dbg !399
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !400
  %5 = call i64 @z_timeout_remaining(ptr noundef %4), !dbg !401
  ret i64 %5, !dbg !402
}

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_k_timer_user_data_set(ptr noundef %0, ptr noundef %1) #0 !dbg !403 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !406, metadata !DIExpression()), !dbg !407
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !408, metadata !DIExpression()), !dbg !409
  %5 = load ptr, ptr %4, align 4, !dbg !410
  %6 = load ptr, ptr %3, align 4, !dbg !411
  %7 = getelementptr inbounds %struct.k_timer, ptr %6, i32 0, i32 6, !dbg !412
  store ptr %5, ptr %7, align 4, !dbg !413
  ret void, !dbg !414
}

; Function Attrs: noinline nounwind optnone
define internal ptr @z_impl_k_timer_user_data_get(ptr noundef %0) #0 !dbg !415 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !418, metadata !DIExpression()), !dbg !419
  %3 = load ptr, ptr %2, align 4, !dbg !420
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 6, !dbg !421
  %5 = load ptr, ptr %4, align 4, !dbg !421
  ret ptr %5, !dbg !422
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_queue_is_empty(ptr noundef %0) #0 !dbg !423 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !444, metadata !DIExpression()), !dbg !445
  %3 = load ptr, ptr %2, align 4, !dbg !446
  %4 = getelementptr inbounds %struct.k_queue, ptr %3, i32 0, i32 0, !dbg !447
  %5 = call zeroext i1 @sys_sflist_is_empty(ptr noundef %4), !dbg !448
  %6 = zext i1 %5 to i32, !dbg !449
  ret i32 %6, !dbg !450
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_sem_count_get(ptr noundef %0) #0 !dbg !451 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !460, metadata !DIExpression()), !dbg !461
  %3 = load ptr, ptr %2, align 4, !dbg !462
  %4 = getelementptr inbounds %struct.k_sem, ptr %3, i32 0, i32 1, !dbg !463
  %5 = load i32, ptr %4, align 4, !dbg !463
  ret i32 %5, !dbg !464
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_msgq_num_free_get(ptr noundef %0) #0 !dbg !465 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !483, metadata !DIExpression()), !dbg !484
  %3 = load ptr, ptr %2, align 4, !dbg !485
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 3, !dbg !486
  %5 = load i32, ptr %4, align 4, !dbg !486
  %6 = load ptr, ptr %2, align 4, !dbg !487
  %7 = getelementptr inbounds %struct.k_msgq, ptr %6, i32 0, i32 8, !dbg !488
  %8 = load i32, ptr %7, align 4, !dbg !488
  %9 = sub i32 %5, %8, !dbg !489
  ret i32 %9, !dbg !490
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_msgq_num_used_get(ptr noundef %0) #0 !dbg !491 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !492, metadata !DIExpression()), !dbg !493
  %3 = load ptr, ptr %2, align 4, !dbg !494
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 8, !dbg !495
  %5 = load i32, ptr %4, align 4, !dbg !495
  ret i32 %5, !dbg !496
}

; Function Attrs: noinline nounwind optnone
define hidden void @arch_irq_enable(i32 noundef %0) #0 !dbg !497 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !501, metadata !DIExpression()), !dbg !502
  %3 = load i32, ptr %2, align 4, !dbg !503
  %4 = trunc i32 %3 to i8, !dbg !504
  call void @__NVIC_EnableIRQ(i8 noundef signext %4), !dbg !505
  ret void, !dbg !506
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone
define internal void @__NVIC_EnableIRQ(i8 noundef signext %0) #0 !dbg !507 {
  %2 = alloca i8, align 1
  store i8 %0, ptr %2, align 1
  call void @llvm.dbg.declare(metadata ptr %2, metadata !510, metadata !DIExpression()), !dbg !511
  %3 = load i8, ptr %2, align 1, !dbg !512
  %4 = sext i8 %3 to i32, !dbg !514
  %5 = icmp sge i32 %4, 0, !dbg !515
  br i1 %5, label %6, label %11, !dbg !516

6:                                                ; preds = %1
  call void asm sideeffect "", "~{memory}"() #3, !dbg !517, !srcloc !519
  %7 = load i8, ptr %2, align 1, !dbg !520
  %8 = sext i8 %7 to i32, !dbg !521
  %9 = and i32 %8, 31, !dbg !522
  %10 = shl i32 1, %9, !dbg !523
  store volatile i32 %10, ptr inttoptr (i32 -536813312 to ptr), align 4, !dbg !524
  call void asm sideeffect "", "~{memory}"() #3, !dbg !525, !srcloc !526
  br label %11, !dbg !527

11:                                               ; preds = %6, %1
  ret void, !dbg !528
}

; Function Attrs: noinline nounwind optnone
define hidden void @arch_irq_disable(i32 noundef %0) #0 !dbg !529 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !530, metadata !DIExpression()), !dbg !531
  %3 = load i32, ptr %2, align 4, !dbg !532
  %4 = trunc i32 %3 to i8, !dbg !533
  call void @__NVIC_DisableIRQ(i8 noundef signext %4), !dbg !534
  ret void, !dbg !535
}

; Function Attrs: noinline nounwind optnone
define internal void @__NVIC_DisableIRQ(i8 noundef signext %0) #0 !dbg !536 {
  %2 = alloca i8, align 1
  store i8 %0, ptr %2, align 1
  call void @llvm.dbg.declare(metadata ptr %2, metadata !537, metadata !DIExpression()), !dbg !538
  %3 = load i8, ptr %2, align 1, !dbg !539
  %4 = sext i8 %3 to i32, !dbg !541
  %5 = icmp sge i32 %4, 0, !dbg !542
  br i1 %5, label %6, label %11, !dbg !543

6:                                                ; preds = %1
  %7 = load i8, ptr %2, align 1, !dbg !544
  %8 = sext i8 %7 to i32, !dbg !546
  %9 = and i32 %8, 31, !dbg !547
  %10 = shl i32 1, %9, !dbg !548
  store volatile i32 %10, ptr getelementptr inbounds (%struct.NVIC_Type, ptr inttoptr (i32 -536813312 to ptr), i32 0, i32 2), align 4, !dbg !549
  call void @llvm.arm.dsb(i32 15), !dbg !550
  call void @llvm.arm.isb(i32 15), !dbg !551
  br label %11, !dbg !552

11:                                               ; preds = %6, %1
  ret void, !dbg !553
}

; Function Attrs: noinline nounwind optnone
define hidden i32 @arch_irq_is_enabled(i32 noundef %0) #0 !dbg !554 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !557, metadata !DIExpression()), !dbg !558
  %3 = load i32, ptr %2, align 4, !dbg !559
  %4 = udiv i32 %3, 32, !dbg !560
  %5 = getelementptr inbounds [1 x i32], ptr inttoptr (i32 -536813312 to ptr), i32 0, i32 %4, !dbg !561
  %6 = load volatile i32, ptr %5, align 4, !dbg !561
  %7 = load i32, ptr %2, align 4, !dbg !562
  %8 = urem i32 %7, 32, !dbg !563
  %9 = shl i32 1, %8, !dbg !564
  %10 = and i32 %6, %9, !dbg !565
  ret i32 %10, !dbg !566
}

; Function Attrs: noinline nounwind optnone
define hidden void @z_arm_irq_priority_set(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 !dbg !567 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !570, metadata !DIExpression()), !dbg !571
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !572, metadata !DIExpression()), !dbg !573
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !574, metadata !DIExpression()), !dbg !575
  %7 = load i32, ptr %5, align 4, !dbg !576
  %8 = add i32 %7, 0, !dbg !576
  store i32 %8, ptr %5, align 4, !dbg !576
  %9 = load i32, ptr %4, align 4, !dbg !579
  %10 = trunc i32 %9 to i8, !dbg !580
  %11 = load i32, ptr %5, align 4, !dbg !581
  call void @__NVIC_SetPriority(i8 noundef signext %10, i32 noundef %11), !dbg !582
  ret void, !dbg !583
}

; Function Attrs: noinline nounwind optnone
define internal void @__NVIC_SetPriority(i8 noundef signext %0, i32 noundef %1) #0 !dbg !584 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8 %0, ptr %3, align 1
  call void @llvm.dbg.declare(metadata ptr %3, metadata !587, metadata !DIExpression()), !dbg !588
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !589, metadata !DIExpression()), !dbg !590
  %5 = load i8, ptr %3, align 1, !dbg !591
  %6 = sext i8 %5 to i32, !dbg !593
  %7 = icmp sge i32 %6, 0, !dbg !594
  br i1 %7, label %8, label %34, !dbg !595

8:                                                ; preds = %2
  %9 = load i8, ptr %3, align 1, !dbg !596
  %10 = sext i8 %9 to i32, !dbg !598
  %11 = lshr i32 %10, 2, !dbg !599
  %12 = getelementptr inbounds [8 x i32], ptr getelementptr inbounds (%struct.NVIC_Type, ptr inttoptr (i32 -536813312 to ptr), i32 0, i32 9), i32 0, i32 %11, !dbg !600
  %13 = load volatile i32, ptr %12, align 4, !dbg !600
  %14 = load i8, ptr %3, align 1, !dbg !601
  %15 = sext i8 %14 to i32, !dbg !602
  %16 = and i32 %15, 3, !dbg !603
  %17 = mul i32 %16, 8, !dbg !604
  %18 = shl i32 255, %17, !dbg !605
  %19 = xor i32 %18, -1, !dbg !606
  %20 = and i32 %13, %19, !dbg !607
  %21 = load i32, ptr %4, align 4, !dbg !608
  %22 = shl i32 %21, 6, !dbg !609
  %23 = and i32 %22, 255, !dbg !610
  %24 = load i8, ptr %3, align 1, !dbg !611
  %25 = sext i8 %24 to i32, !dbg !612
  %26 = and i32 %25, 3, !dbg !613
  %27 = mul i32 %26, 8, !dbg !614
  %28 = shl i32 %23, %27, !dbg !615
  %29 = or i32 %20, %28, !dbg !616
  %30 = load i8, ptr %3, align 1, !dbg !617
  %31 = sext i8 %30 to i32, !dbg !618
  %32 = lshr i32 %31, 2, !dbg !619
  %33 = getelementptr inbounds [8 x i32], ptr getelementptr inbounds (%struct.NVIC_Type, ptr inttoptr (i32 -536813312 to ptr), i32 0, i32 9), i32 0, i32 %32, !dbg !620
  store volatile i32 %29, ptr %33, align 4, !dbg !621
  br label %64, !dbg !622

34:                                               ; preds = %2
  %35 = load i8, ptr %3, align 1, !dbg !623
  %36 = sext i8 %35 to i32, !dbg !625
  %37 = and i32 %36, 15, !dbg !626
  %38 = sub i32 %37, 8, !dbg !627
  %39 = lshr i32 %38, 2, !dbg !628
  %40 = getelementptr inbounds [2 x i32], ptr getelementptr inbounds (%struct.SCB_Type, ptr inttoptr (i32 -536810240 to ptr), i32 0, i32 7), i32 0, i32 %39, !dbg !629
  %41 = load volatile i32, ptr %40, align 4, !dbg !629
  %42 = load i8, ptr %3, align 1, !dbg !630
  %43 = sext i8 %42 to i32, !dbg !631
  %44 = and i32 %43, 3, !dbg !632
  %45 = mul i32 %44, 8, !dbg !633
  %46 = shl i32 255, %45, !dbg !634
  %47 = xor i32 %46, -1, !dbg !635
  %48 = and i32 %41, %47, !dbg !636
  %49 = load i32, ptr %4, align 4, !dbg !637
  %50 = shl i32 %49, 6, !dbg !638
  %51 = and i32 %50, 255, !dbg !639
  %52 = load i8, ptr %3, align 1, !dbg !640
  %53 = sext i8 %52 to i32, !dbg !641
  %54 = and i32 %53, 3, !dbg !642
  %55 = mul i32 %54, 8, !dbg !643
  %56 = shl i32 %51, %55, !dbg !644
  %57 = or i32 %48, %56, !dbg !645
  %58 = load i8, ptr %3, align 1, !dbg !646
  %59 = sext i8 %58 to i32, !dbg !647
  %60 = and i32 %59, 15, !dbg !648
  %61 = sub i32 %60, 8, !dbg !649
  %62 = lshr i32 %61, 2, !dbg !650
  %63 = getelementptr inbounds [2 x i32], ptr getelementptr inbounds (%struct.SCB_Type, ptr inttoptr (i32 -536810240 to ptr), i32 0, i32 7), i32 0, i32 %62, !dbg !651
  store volatile i32 %57, ptr %63, align 4, !dbg !652
  br label %64

64:                                               ; preds = %34, %8
  ret void, !dbg !653
}

; Function Attrs: noinline nounwind optnone
define hidden void @z_irq_spurious(ptr noundef %0) #0 !dbg !654 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !655, metadata !DIExpression()), !dbg !656
  %3 = load ptr, ptr %2, align 4, !dbg !657
  call void @z_arm_fatal_error(i32 noundef 1, ptr noundef null), !dbg !658
  ret void, !dbg !659
}

declare void @z_arm_fatal_error(i32 noundef, ptr noundef) #2

declare i64 @z_timeout_expires(ptr noundef) #2

declare i64 @z_timeout_remaining(ptr noundef) #2

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @sys_sflist_is_empty(ptr noundef %0) #0 !dbg !660 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !665, metadata !DIExpression()), !dbg !666
  %3 = load ptr, ptr %2, align 4, !dbg !667
  %4 = call ptr @sys_sflist_peek_head(ptr noundef %3), !dbg !668
  %5 = icmp eq ptr %4, null, !dbg !669
  ret i1 %5, !dbg !670
}

; Function Attrs: noinline nounwind optnone
define internal ptr @sys_sflist_peek_head(ptr noundef %0) #0 !dbg !671 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !674, metadata !DIExpression()), !dbg !675
  %3 = load ptr, ptr %2, align 4, !dbg !676
  %4 = getelementptr inbounds %struct._sflist, ptr %3, i32 0, i32 0, !dbg !677
  %5 = load ptr, ptr %4, align 4, !dbg !677
  ret ptr %5, !dbg !678
}

; Function Attrs: nounwind
declare void @llvm.arm.dsb(i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.isb(i32) #3

attributes #0 = { noinline nounwind optnone "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!188, !189, !190, !191, !192, !193, !194, !195}
!llvm.ident = !{!196}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !135, splitDebugInlining: false, nameTableKind: None)
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
!74 = !DIEnumerator(name: "K_OBJ_DRIVER_PWM", value: 18)
!75 = !DIEnumerator(name: "K_OBJ_DRIVER_RESET", value: 19)
!76 = !DIEnumerator(name: "K_OBJ_DRIVER_UART", value: 20)
!77 = !DIEnumerator(name: "K_OBJ_DRIVER_CRYPTO", value: 21)
!78 = !DIEnumerator(name: "K_OBJ_DRIVER_ADC", value: 22)
!79 = !DIEnumerator(name: "K_OBJ_DRIVER_AUXDISPLAY", value: 23)
!80 = !DIEnumerator(name: "K_OBJ_DRIVER_BBRAM", value: 24)
!81 = !DIEnumerator(name: "K_OBJ_DRIVER_CAN", value: 25)
!82 = !DIEnumerator(name: "K_OBJ_DRIVER_CHARGER", value: 26)
!83 = !DIEnumerator(name: "K_OBJ_DRIVER_COREDUMP", value: 27)
!84 = !DIEnumerator(name: "K_OBJ_DRIVER_COUNTER", value: 28)
!85 = !DIEnumerator(name: "K_OBJ_DRIVER_DAC", value: 29)
!86 = !DIEnumerator(name: "K_OBJ_DRIVER_DAI", value: 30)
!87 = !DIEnumerator(name: "K_OBJ_DRIVER_DMA", value: 31)
!88 = !DIEnumerator(name: "K_OBJ_DRIVER_EDAC", value: 32)
!89 = !DIEnumerator(name: "K_OBJ_DRIVER_EEPROM", value: 33)
!90 = !DIEnumerator(name: "K_OBJ_DRIVER_FUEL_GAUGE_EMUL", value: 34)
!91 = !DIEnumerator(name: "K_OBJ_DRIVER_EMUL_SENSOR_BACKEND_API", value: 35)
!92 = !DIEnumerator(name: "K_OBJ_DRIVER_ENTROPY", value: 36)
!93 = !DIEnumerator(name: "K_OBJ_DRIVER_ESPI", value: 37)
!94 = !DIEnumerator(name: "K_OBJ_DRIVER_ESPI_SAF", value: 38)
!95 = !DIEnumerator(name: "K_OBJ_DRIVER_FLASH", value: 39)
!96 = !DIEnumerator(name: "K_OBJ_DRIVER_FPGA", value: 40)
!97 = !DIEnumerator(name: "K_OBJ_DRIVER_FUEL_GAUGE", value: 41)
!98 = !DIEnumerator(name: "K_OBJ_DRIVER_HWSPINLOCK", value: 42)
!99 = !DIEnumerator(name: "K_OBJ_DRIVER_I2C", value: 43)
!100 = !DIEnumerator(name: "K_OBJ_DRIVER_I2S", value: 44)
!101 = !DIEnumerator(name: "K_OBJ_DRIVER_I3C", value: 45)
!102 = !DIEnumerator(name: "K_OBJ_DRIVER_IPM", value: 46)
!103 = !DIEnumerator(name: "K_OBJ_DRIVER_KSCAN", value: 47)
!104 = !DIEnumerator(name: "K_OBJ_DRIVER_LED", value: 48)
!105 = !DIEnumerator(name: "K_OBJ_DRIVER_MBOX", value: 49)
!106 = !DIEnumerator(name: "K_OBJ_DRIVER_MDIO", value: 50)
!107 = !DIEnumerator(name: "K_OBJ_DRIVER_MIPI_DSI", value: 51)
!108 = !DIEnumerator(name: "K_OBJ_DRIVER_PECI", value: 52)
!109 = !DIEnumerator(name: "K_OBJ_DRIVER_PS2", value: 53)
!110 = !DIEnumerator(name: "K_OBJ_DRIVER_PTP_CLOCK", value: 54)
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
!194 = !{i32 8, !"PIC Level", i32 2}
!195 = !{i32 7, !"PIE Level", i32 2}
!196 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
!197 = distinct !DISubprogram(name: "z_impl_k_object_access_grant", scope: !54, file: !54, line: 223, type: !198, scopeLine: 225, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !309)
!198 = !DISubroutineType(types: !199)
!199 = !{null, !200, !202}
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 32)
!201 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 32)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_thread", file: !204, line: 250, size: 896, elements: !205)
!204 = !DIFile(filename: "include/zephyr/kernel/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!205 = !{!206, !273, !286, !287, !288, !289, !310}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !203, file: !204, line: 252, baseType: !207, size: 384)
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_base", file: !204, line: 58, size: 384, elements: !208)
!208 = !{!209, !235, !243, !245, !246, !258, !259, !260}
!209 = !DIDerivedType(tag: DW_TAG_member, scope: !207, file: !204, line: 61, baseType: !210, size: 64)
!210 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !207, file: !204, line: 61, size: 64, elements: !211)
!211 = !{!212, !228}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_dlist", scope: !210, file: !204, line: 62, baseType: !213, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dnode_t", file: !214, line: 55, baseType: !215)
!214 = !DIFile(filename: "include/zephyr/sys/dlist.h", directory: "/home/sri/zephyrproject/zephyr")
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_dnode", file: !214, line: 37, size: 64, elements: !216)
!216 = !{!217, !223}
!217 = !DIDerivedType(tag: DW_TAG_member, scope: !215, file: !214, line: 38, baseType: !218, size: 32)
!218 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !215, file: !214, line: 38, size: 32, elements: !219)
!219 = !{!220, !222}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !218, file: !214, line: 39, baseType: !221, size: 32)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 32)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !218, file: !214, line: 40, baseType: !221, size: 32)
!223 = !DIDerivedType(tag: DW_TAG_member, scope: !215, file: !214, line: 42, baseType: !224, size: 32, offset: 32)
!224 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !215, file: !214, line: 42, size: 32, elements: !225)
!225 = !{!226, !227}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !224, file: !214, line: 43, baseType: !221, size: 32)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !224, file: !214, line: 44, baseType: !221, size: 32)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_rb", scope: !210, file: !204, line: 63, baseType: !229, size: 64)
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rbnode", file: !230, line: 58, size: 64, elements: !231)
!230 = !DIFile(filename: "include/zephyr/sys/rb.h", directory: "/home/sri/zephyrproject/zephyr")
!231 = !{!232}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !229, file: !230, line: 60, baseType: !233, size: 64)
!233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !234, size: 64, elements: !185)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 32)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "pended_on", scope: !207, file: !204, line: 69, baseType: !236, size: 32, offset: 64)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 32)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "_wait_q_t", file: !238, line: 243, baseType: !239)
!238 = !DIFile(filename: "include/zephyr/kernel_structs.h", directory: "/home/sri/zephyrproject/zephyr")
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !238, line: 241, size: 64, elements: !240)
!240 = !{!241}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !239, file: !238, line: 242, baseType: !242, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dlist_t", file: !214, line: 51, baseType: !215)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "user_options", scope: !207, file: !204, line: 72, baseType: !244, size: 8, offset: 96)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !146, line: 62, baseType: !45)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "thread_state", scope: !207, file: !204, line: 75, baseType: !244, size: 8, offset: 104)
!246 = !DIDerivedType(tag: DW_TAG_member, scope: !207, file: !204, line: 91, baseType: !247, size: 16, offset: 112)
!247 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !207, file: !204, line: 91, size: 16, elements: !248)
!248 = !{!249, !255}
!249 = !DIDerivedType(tag: DW_TAG_member, scope: !247, file: !204, line: 92, baseType: !250, size: 16)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !247, file: !204, line: 92, size: 16, elements: !251)
!251 = !{!252, !254}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !250, file: !204, line: 97, baseType: !253, size: 8)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !146, line: 56, baseType: !5)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "sched_locked", scope: !250, file: !204, line: 98, baseType: !244, size: 8, offset: 8)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "preempt", scope: !247, file: !204, line: 101, baseType: !256, size: 16)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !146, line: 63, baseType: !257)
!257 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "order_key", scope: !207, file: !204, line: 108, baseType: !145, size: 32, offset: 128)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "swap_data", scope: !207, file: !204, line: 132, baseType: !168, size: 32, offset: 160)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !207, file: !204, line: 136, baseType: !261, size: 192, offset: 192)
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_timeout", file: !238, line: 254, size: 192, elements: !262)
!262 = !{!263, !264, !270}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !261, file: !238, line: 255, baseType: !213, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !261, file: !238, line: 256, baseType: !265, size: 32, offset: 64)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "_timeout_func_t", file: !238, line: 252, baseType: !266)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 32)
!267 = !DISubroutineType(types: !268)
!268 = !{null, !269}
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 32)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "dticks", scope: !261, file: !238, line: 259, baseType: !271, size: 64, offset: 128)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !146, line: 59, baseType: !272)
!272 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "callee_saved", scope: !203, file: !204, line: 255, baseType: !274, size: 288, offset: 384)
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_callee_saved", file: !275, line: 25, size: 288, elements: !276)
!275 = !DIFile(filename: "include/zephyr/arch/arm/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!276 = !{!277, !278, !279, !280, !281, !282, !283, !284, !285}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "v1", scope: !274, file: !275, line: 26, baseType: !145, size: 32)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "v2", scope: !274, file: !275, line: 27, baseType: !145, size: 32, offset: 32)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "v3", scope: !274, file: !275, line: 28, baseType: !145, size: 32, offset: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "v4", scope: !274, file: !275, line: 29, baseType: !145, size: 32, offset: 96)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "v5", scope: !274, file: !275, line: 30, baseType: !145, size: 32, offset: 128)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "v6", scope: !274, file: !275, line: 31, baseType: !145, size: 32, offset: 160)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "v7", scope: !274, file: !275, line: 32, baseType: !145, size: 32, offset: 192)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "v8", scope: !274, file: !275, line: 33, baseType: !145, size: 32, offset: 224)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "psp", scope: !274, file: !275, line: 34, baseType: !145, size: 32, offset: 256)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "init_data", scope: !203, file: !204, line: 258, baseType: !168, size: 32, offset: 672)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "join_queue", scope: !203, file: !204, line: 261, baseType: !237, size: 64, offset: 704)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "errno_var", scope: !203, file: !204, line: 302, baseType: !169, size: 32, offset: 768)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "resource_pool", scope: !203, file: !204, line: 333, baseType: !290, size: 32, offset: 800)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 32)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_heap", file: !292, line: 5291, size: 160, elements: !293)
!292 = !DIFile(filename: "include/zephyr/kernel.h", directory: "/home/sri/zephyrproject/zephyr")
!293 = !{!294, !305, !306}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !291, file: !292, line: 5292, baseType: !295, size: 96)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sys_heap", file: !296, line: 56, size: 96, elements: !297)
!296 = !DIFile(filename: "include/zephyr/sys/sys_heap.h", directory: "/home/sri/zephyrproject/zephyr")
!297 = !{!298, !301, !302}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !295, file: !296, line: 57, baseType: !299, size: 32)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 32)
!300 = !DICompositeType(tag: DW_TAG_structure_type, name: "z_heap", file: !296, line: 57, flags: DIFlagFwdDecl)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "init_mem", scope: !295, file: !296, line: 58, baseType: !168, size: 32, offset: 32)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "init_bytes", scope: !295, file: !296, line: 59, baseType: !303, size: 32, offset: 64)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !304, line: 46, baseType: !147)
!304 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/lib/clang/17/include/stddef.h", directory: "")
!305 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !291, file: !292, line: 5293, baseType: !237, size: 64, offset: 96)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !291, file: !292, line: 5294, baseType: !307, offset: 160)
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_spinlock", file: !308, line: 45, elements: !309)
!308 = !DIFile(filename: "include/zephyr/spinlock.h", directory: "/home/sri/zephyrproject/zephyr")
!309 = !{}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !203, file: !204, line: 355, baseType: !311, size: 64, offset: 832)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_arch", file: !275, line: 60, size: 64, elements: !312)
!312 = !{!313, !314}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "basepri", scope: !311, file: !275, line: 63, baseType: !145, size: 32)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "swap_return_value", scope: !311, file: !275, line: 66, baseType: !145, size: 32, offset: 32)
!315 = !DILocalVariable(name: "object", arg: 1, scope: !197, file: !54, line: 223, type: !200)
!316 = !DILocation(line: 223, column: 61, scope: !197)
!317 = !DILocalVariable(name: "thread", arg: 2, scope: !197, file: !54, line: 224, type: !202)
!318 = !DILocation(line: 224, column: 24, scope: !197)
!319 = !DILocation(line: 226, column: 9, scope: !197)
!320 = !DILocation(line: 227, column: 9, scope: !197)
!321 = !DILocation(line: 228, column: 1, scope: !197)
!322 = distinct !DISubprogram(name: "z_impl_k_object_release", scope: !54, file: !54, line: 243, type: !323, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !309)
!323 = !DISubroutineType(types: !324)
!324 = !{null, !200}
!325 = !DILocalVariable(name: "object", arg: 1, scope: !322, file: !54, line: 243, type: !200)
!326 = !DILocation(line: 243, column: 56, scope: !322)
!327 = !DILocation(line: 245, column: 9, scope: !322)
!328 = !DILocation(line: 246, column: 1, scope: !322)
!329 = distinct !DISubprogram(name: "z_impl_k_object_alloc", scope: !54, file: !54, line: 359, type: !330, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !309)
!330 = !DISubroutineType(types: !331)
!331 = !{!168, !53}
!332 = !DILocalVariable(name: "otype", arg: 1, scope: !329, file: !54, line: 359, type: !53)
!333 = !DILocation(line: 359, column: 58, scope: !329)
!334 = !DILocation(line: 361, column: 9, scope: !329)
!335 = !DILocation(line: 363, column: 2, scope: !329)
!336 = distinct !DISubprogram(name: "z_impl_k_object_alloc_size", scope: !54, file: !54, line: 366, type: !337, scopeLine: 368, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !309)
!337 = !DISubroutineType(types: !338)
!338 = !{!168, !53, !303}
!339 = !DILocalVariable(name: "otype", arg: 1, scope: !336, file: !54, line: 366, type: !53)
!340 = !DILocation(line: 366, column: 63, scope: !336)
!341 = !DILocalVariable(name: "size", arg: 2, scope: !336, file: !54, line: 367, type: !303)
!342 = !DILocation(line: 367, column: 13, scope: !336)
!343 = !DILocation(line: 369, column: 9, scope: !336)
!344 = !DILocation(line: 370, column: 9, scope: !336)
!345 = !DILocation(line: 372, column: 2, scope: !336)
!346 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_expires_ticks", scope: !292, file: !292, line: 656, type: !347, scopeLine: 658, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !309)
!347 = !DISubroutineType(types: !348)
!348 = !{!349, !351}
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_ticks_t", file: !350, line: 46, baseType: !271)
!350 = !DIFile(filename: "include/zephyr/sys_clock.h", directory: "/home/sri/zephyrproject/zephyr")
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 32)
!352 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !203)
!353 = !DILocalVariable(name: "t", arg: 1, scope: !346, file: !292, line: 657, type: !351)
!354 = !DILocation(line: 657, column: 30, scope: !346)
!355 = !DILocation(line: 659, column: 28, scope: !346)
!356 = !DILocation(line: 659, column: 31, scope: !346)
!357 = !DILocation(line: 659, column: 36, scope: !346)
!358 = !DILocation(line: 659, column: 9, scope: !346)
!359 = !DILocation(line: 659, column: 2, scope: !346)
!360 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_remaining_ticks", scope: !292, file: !292, line: 671, type: !347, scopeLine: 673, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !309)
!361 = !DILocalVariable(name: "t", arg: 1, scope: !360, file: !292, line: 672, type: !351)
!362 = !DILocation(line: 672, column: 30, scope: !360)
!363 = !DILocation(line: 674, column: 30, scope: !360)
!364 = !DILocation(line: 674, column: 33, scope: !360)
!365 = !DILocation(line: 674, column: 38, scope: !360)
!366 = !DILocation(line: 674, column: 9, scope: !360)
!367 = !DILocation(line: 674, column: 2, scope: !360)
!368 = distinct !DISubprogram(name: "z_impl_k_timer_expires_ticks", scope: !292, file: !292, line: 1634, type: !369, scopeLine: 1636, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !309)
!369 = !DISubroutineType(types: !370)
!370 = !{!349, !371}
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 32)
!372 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !373)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_timer", file: !292, line: 1439, size: 448, elements: !374)
!374 = !{!375, !376, !377, !382, !383, !388, !389}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !373, file: !292, line: 1445, baseType: !261, size: 192)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !373, file: !292, line: 1448, baseType: !237, size: 64, offset: 192)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_fn", scope: !373, file: !292, line: 1451, baseType: !378, size: 32, offset: 256)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 32)
!379 = !DISubroutineType(types: !380)
!380 = !{null, !381}
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 32)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "stop_fn", scope: !373, file: !292, line: 1454, baseType: !378, size: 32, offset: 288)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !373, file: !292, line: 1457, baseType: !384, size: 64, offset: 320)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_timeout_t", file: !350, line: 67, baseType: !385)
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !350, line: 65, size: 64, elements: !386)
!386 = !{!387}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "ticks", scope: !385, file: !350, line: 66, baseType: !349, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !373, file: !292, line: 1460, baseType: !145, size: 32, offset: 384)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !373, file: !292, line: 1463, baseType: !168, size: 32, offset: 416)
!390 = !DILocalVariable(name: "timer", arg: 1, scope: !368, file: !292, line: 1635, type: !371)
!391 = !DILocation(line: 1635, column: 34, scope: !368)
!392 = !DILocation(line: 1637, column: 28, scope: !368)
!393 = !DILocation(line: 1637, column: 35, scope: !368)
!394 = !DILocation(line: 1637, column: 9, scope: !368)
!395 = !DILocation(line: 1637, column: 2, scope: !368)
!396 = distinct !DISubprogram(name: "z_impl_k_timer_remaining_ticks", scope: !292, file: !292, line: 1649, type: !369, scopeLine: 1651, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !309)
!397 = !DILocalVariable(name: "timer", arg: 1, scope: !396, file: !292, line: 1650, type: !371)
!398 = !DILocation(line: 1650, column: 34, scope: !396)
!399 = !DILocation(line: 1652, column: 30, scope: !396)
!400 = !DILocation(line: 1652, column: 37, scope: !396)
!401 = !DILocation(line: 1652, column: 9, scope: !396)
!402 = !DILocation(line: 1652, column: 2, scope: !396)
!403 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_set", scope: !292, file: !292, line: 1689, type: !404, scopeLine: 1691, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !309)
!404 = !DISubroutineType(types: !405)
!405 = !{null, !381, !168}
!406 = !DILocalVariable(name: "timer", arg: 1, scope: !403, file: !292, line: 1689, type: !381)
!407 = !DILocation(line: 1689, column: 65, scope: !403)
!408 = !DILocalVariable(name: "user_data", arg: 2, scope: !403, file: !292, line: 1690, type: !168)
!409 = !DILocation(line: 1690, column: 19, scope: !403)
!410 = !DILocation(line: 1692, column: 21, scope: !403)
!411 = !DILocation(line: 1692, column: 2, scope: !403)
!412 = !DILocation(line: 1692, column: 9, scope: !403)
!413 = !DILocation(line: 1692, column: 19, scope: !403)
!414 = !DILocation(line: 1693, column: 1, scope: !403)
!415 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_get", scope: !292, file: !292, line: 1704, type: !416, scopeLine: 1705, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !309)
!416 = !DISubroutineType(types: !417)
!417 = !{!168, !371}
!418 = !DILocalVariable(name: "timer", arg: 1, scope: !415, file: !292, line: 1704, type: !371)
!419 = !DILocation(line: 1704, column: 72, scope: !415)
!420 = !DILocation(line: 1706, column: 9, scope: !415)
!421 = !DILocation(line: 1706, column: 16, scope: !415)
!422 = !DILocation(line: 1706, column: 2, scope: !415)
!423 = distinct !DISubprogram(name: "z_impl_k_queue_is_empty", scope: !292, file: !292, line: 2071, type: !424, scopeLine: 2072, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !309)
!424 = !DISubroutineType(types: !425)
!425 = !{!169, !426}
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 32)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_queue", file: !292, line: 1830, size: 128, elements: !428)
!428 = !{!429, !442, !443}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "data_q", scope: !427, file: !292, line: 1831, baseType: !430, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sflist_t", file: !431, line: 60, baseType: !432)
!431 = !DIFile(filename: "include/zephyr/sys/sflist.h", directory: "/home/sri/zephyrproject/zephyr")
!432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sflist", file: !431, line: 53, size: 64, elements: !433)
!433 = !{!434, !441}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !432, file: !431, line: 54, baseType: !435, size: 32)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 32)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sfnode_t", file: !431, line: 50, baseType: !437)
!437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sfnode", file: !431, line: 44, size: 32, elements: !438)
!438 = !{!439}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "next_and_flags", scope: !437, file: !431, line: 45, baseType: !440, size: 32)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "unative_t", file: !431, line: 40, baseType: !145)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !432, file: !431, line: 55, baseType: !435, size: 32, offset: 32)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !427, file: !292, line: 1832, baseType: !307, offset: 64)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !427, file: !292, line: 1833, baseType: !237, size: 64, offset: 64)
!444 = !DILocalVariable(name: "queue", arg: 1, scope: !423, file: !292, line: 2071, type: !426)
!445 = !DILocation(line: 2071, column: 59, scope: !423)
!446 = !DILocation(line: 2073, column: 35, scope: !423)
!447 = !DILocation(line: 2073, column: 42, scope: !423)
!448 = !DILocation(line: 2073, column: 14, scope: !423)
!449 = !DILocation(line: 2073, column: 9, scope: !423)
!450 = !DILocation(line: 2073, column: 2, scope: !423)
!451 = distinct !DISubprogram(name: "z_impl_k_sem_count_get", scope: !292, file: !292, line: 3209, type: !452, scopeLine: 3210, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !309)
!452 = !DISubroutineType(types: !453)
!453 = !{!147, !454}
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 32)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sem", file: !292, line: 3092, size: 128, elements: !456)
!456 = !{!457, !458, !459}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !455, file: !292, line: 3093, baseType: !237, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !455, file: !292, line: 3094, baseType: !147, size: 32, offset: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !455, file: !292, line: 3095, baseType: !147, size: 32, offset: 96)
!460 = !DILocalVariable(name: "sem", arg: 1, scope: !451, file: !292, line: 3209, type: !454)
!461 = !DILocation(line: 3209, column: 65, scope: !451)
!462 = !DILocation(line: 3211, column: 9, scope: !451)
!463 = !DILocation(line: 3211, column: 14, scope: !451)
!464 = !DILocation(line: 3211, column: 2, scope: !451)
!465 = distinct !DISubprogram(name: "z_impl_k_msgq_num_free_get", scope: !292, file: !292, line: 4649, type: !466, scopeLine: 4650, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !309)
!466 = !DISubroutineType(types: !467)
!467 = !{!145, !468}
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 32)
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_msgq", file: !292, line: 4390, size: 320, elements: !470)
!470 = !{!471, !472, !473, !474, !475, !478, !479, !480, !481, !482}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !469, file: !292, line: 4392, baseType: !237, size: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !469, file: !292, line: 4394, baseType: !307, offset: 64)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "msg_size", scope: !469, file: !292, line: 4396, baseType: !303, size: 32, offset: 64)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !469, file: !292, line: 4398, baseType: !145, size: 32, offset: 96)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_start", scope: !469, file: !292, line: 4400, baseType: !476, size: 32, offset: 128)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 32)
!477 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_end", scope: !469, file: !292, line: 4402, baseType: !476, size: 32, offset: 160)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "read_ptr", scope: !469, file: !292, line: 4404, baseType: !476, size: 32, offset: 192)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "write_ptr", scope: !469, file: !292, line: 4406, baseType: !476, size: 32, offset: 224)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "used_msgs", scope: !469, file: !292, line: 4408, baseType: !145, size: 32, offset: 256)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !469, file: !292, line: 4413, baseType: !244, size: 8, offset: 288)
!483 = !DILocalVariable(name: "msgq", arg: 1, scope: !465, file: !292, line: 4649, type: !468)
!484 = !DILocation(line: 4649, column: 66, scope: !465)
!485 = !DILocation(line: 4651, column: 9, scope: !465)
!486 = !DILocation(line: 4651, column: 15, scope: !465)
!487 = !DILocation(line: 4651, column: 26, scope: !465)
!488 = !DILocation(line: 4651, column: 32, scope: !465)
!489 = !DILocation(line: 4651, column: 24, scope: !465)
!490 = !DILocation(line: 4651, column: 2, scope: !465)
!491 = distinct !DISubprogram(name: "z_impl_k_msgq_num_used_get", scope: !292, file: !292, line: 4665, type: !466, scopeLine: 4666, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !309)
!492 = !DILocalVariable(name: "msgq", arg: 1, scope: !491, file: !292, line: 4665, type: !468)
!493 = !DILocation(line: 4665, column: 66, scope: !491)
!494 = !DILocation(line: 4667, column: 9, scope: !491)
!495 = !DILocation(line: 4667, column: 15, scope: !491)
!496 = !DILocation(line: 4667, column: 2, scope: !491)
!497 = distinct !DISubprogram(name: "arch_irq_enable", scope: !498, file: !498, line: 35, type: !499, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !309)
!498 = !DIFile(filename: "arch/arm/core/cortex_m/irq_manage.c", directory: "/home/sri/zephyrproject/zephyr")
!499 = !DISubroutineType(types: !500)
!500 = !{null, !147}
!501 = !DILocalVariable(name: "irq", arg: 1, scope: !497, file: !498, line: 35, type: !147)
!502 = !DILocation(line: 35, column: 35, scope: !497)
!503 = !DILocation(line: 37, column: 30, scope: !497)
!504 = !DILocation(line: 37, column: 19, scope: !497)
!505 = !DILocation(line: 37, column: 2, scope: !497)
!506 = !DILocation(line: 38, column: 1, scope: !497)
!507 = distinct !DISubprogram(name: "__NVIC_EnableIRQ", scope: !139, file: !139, line: 623, type: !508, scopeLine: 624, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !309)
!508 = !DISubroutineType(types: !509)
!509 = !{null, !136}
!510 = !DILocalVariable(name: "IRQn", arg: 1, scope: !507, file: !139, line: 623, type: !136)
!511 = !DILocation(line: 623, column: 49, scope: !507)
!512 = !DILocation(line: 625, column: 17, scope: !513)
!513 = distinct !DILexicalBlock(scope: !507, file: !139, line: 625, column: 7)
!514 = !DILocation(line: 625, column: 7, scope: !513)
!515 = !DILocation(line: 625, column: 23, scope: !513)
!516 = !DILocation(line: 625, column: 7, scope: !507)
!517 = !DILocation(line: 627, column: 5, scope: !518)
!518 = distinct !DILexicalBlock(scope: !513, file: !139, line: 626, column: 3)
!519 = !{i64 168741}
!520 = !DILocation(line: 628, column: 92, scope: !518)
!521 = !DILocation(line: 628, column: 82, scope: !518)
!522 = !DILocation(line: 628, column: 98, scope: !518)
!523 = !DILocation(line: 628, column: 77, scope: !518)
!524 = !DILocation(line: 628, column: 60, scope: !518)
!525 = !DILocation(line: 629, column: 5, scope: !518)
!526 = !{i64 168885}
!527 = !DILocation(line: 630, column: 3, scope: !518)
!528 = !DILocation(line: 631, column: 1, scope: !507)
!529 = distinct !DISubprogram(name: "arch_irq_disable", scope: !498, file: !498, line: 40, type: !499, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !309)
!530 = !DILocalVariable(name: "irq", arg: 1, scope: !529, file: !498, line: 40, type: !147)
!531 = !DILocation(line: 40, column: 36, scope: !529)
!532 = !DILocation(line: 42, column: 31, scope: !529)
!533 = !DILocation(line: 42, column: 20, scope: !529)
!534 = !DILocation(line: 42, column: 2, scope: !529)
!535 = !DILocation(line: 43, column: 1, scope: !529)
!536 = distinct !DISubprogram(name: "__NVIC_DisableIRQ", scope: !139, file: !139, line: 661, type: !508, scopeLine: 662, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !309)
!537 = !DILocalVariable(name: "IRQn", arg: 1, scope: !536, file: !139, line: 661, type: !136)
!538 = !DILocation(line: 661, column: 50, scope: !536)
!539 = !DILocation(line: 663, column: 17, scope: !540)
!540 = distinct !DILexicalBlock(scope: !536, file: !139, line: 663, column: 7)
!541 = !DILocation(line: 663, column: 7, scope: !540)
!542 = !DILocation(line: 663, column: 23, scope: !540)
!543 = !DILocation(line: 663, column: 7, scope: !536)
!544 = !DILocation(line: 665, column: 92, scope: !545)
!545 = distinct !DILexicalBlock(scope: !540, file: !139, line: 664, column: 3)
!546 = !DILocation(line: 665, column: 82, scope: !545)
!547 = !DILocation(line: 665, column: 98, scope: !545)
!548 = !DILocation(line: 665, column: 77, scope: !545)
!549 = !DILocation(line: 665, column: 60, scope: !545)
!550 = !DILocation(line: 666, column: 5, scope: !545)
!551 = !DILocation(line: 667, column: 5, scope: !545)
!552 = !DILocation(line: 668, column: 3, scope: !545)
!553 = !DILocation(line: 669, column: 1, scope: !536)
!554 = distinct !DISubprogram(name: "arch_irq_is_enabled", scope: !498, file: !498, line: 45, type: !555, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !309)
!555 = !DISubroutineType(types: !556)
!556 = !{!169, !147}
!557 = !DILocalVariable(name: "irq", arg: 1, scope: !554, file: !498, line: 45, type: !147)
!558 = !DILocation(line: 45, column: 38, scope: !554)
!559 = !DILocation(line: 47, column: 61, scope: !554)
!560 = !DILocation(line: 47, column: 65, scope: !554)
!561 = !DILocation(line: 47, column: 9, scope: !554)
!562 = !DILocation(line: 47, column: 84, scope: !554)
!563 = !DILocation(line: 47, column: 88, scope: !554)
!564 = !DILocation(line: 47, column: 79, scope: !554)
!565 = !DILocation(line: 47, column: 72, scope: !554)
!566 = !DILocation(line: 47, column: 2, scope: !554)
!567 = distinct !DISubprogram(name: "z_arm_irq_priority_set", scope: !498, file: !498, line: 59, type: !568, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !309)
!568 = !DISubroutineType(types: !569)
!569 = !{null, !147, !147, !145}
!570 = !DILocalVariable(name: "irq", arg: 1, scope: !567, file: !498, line: 59, type: !147)
!571 = !DILocation(line: 59, column: 42, scope: !567)
!572 = !DILocalVariable(name: "prio", arg: 2, scope: !567, file: !498, line: 59, type: !147)
!573 = !DILocation(line: 59, column: 60, scope: !567)
!574 = !DILocalVariable(name: "flags", arg: 3, scope: !567, file: !498, line: 59, type: !145)
!575 = !DILocation(line: 59, column: 75, scope: !567)
!576 = !DILocation(line: 78, column: 8, scope: !577)
!577 = distinct !DILexicalBlock(scope: !578, file: !498, line: 77, column: 9)
!578 = distinct !DILexicalBlock(scope: !567, file: !498, line: 71, column: 6)
!579 = !DILocation(line: 90, column: 32, scope: !567)
!580 = !DILocation(line: 90, column: 21, scope: !567)
!581 = !DILocation(line: 90, column: 37, scope: !567)
!582 = !DILocation(line: 90, column: 2, scope: !567)
!583 = !DILocation(line: 91, column: 1, scope: !567)
!584 = distinct !DISubprogram(name: "__NVIC_SetPriority", scope: !139, file: !139, line: 732, type: !585, scopeLine: 733, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !309)
!585 = !DISubroutineType(types: !586)
!586 = !{null, !136, !145}
!587 = !DILocalVariable(name: "IRQn", arg: 1, scope: !584, file: !139, line: 732, type: !136)
!588 = !DILocation(line: 732, column: 51, scope: !584)
!589 = !DILocalVariable(name: "priority", arg: 2, scope: !584, file: !139, line: 732, type: !145)
!590 = !DILocation(line: 732, column: 66, scope: !584)
!591 = !DILocation(line: 734, column: 17, scope: !592)
!592 = distinct !DILexicalBlock(scope: !584, file: !139, line: 734, column: 7)
!593 = !DILocation(line: 734, column: 7, scope: !592)
!594 = !DILocation(line: 734, column: 23, scope: !592)
!595 = !DILocation(line: 734, column: 7, scope: !584)
!596 = !DILocation(line: 736, column: 183, scope: !597)
!597 = distinct !DILexicalBlock(scope: !592, file: !139, line: 735, column: 3)
!598 = !DILocation(line: 736, column: 173, scope: !597)
!599 = !DILocation(line: 736, column: 190, scope: !597)
!600 = !DILocation(line: 736, column: 110, scope: !597)
!601 = !DILocation(line: 736, column: 240, scope: !597)
!602 = !DILocation(line: 736, column: 230, scope: !597)
!603 = !DILocation(line: 736, column: 249, scope: !597)
!604 = !DILocation(line: 736, column: 259, scope: !597)
!605 = !DILocation(line: 736, column: 212, scope: !597)
!606 = !DILocation(line: 736, column: 203, scope: !597)
!607 = !DILocation(line: 736, column: 201, scope: !597)
!608 = !DILocation(line: 737, column: 11, scope: !597)
!609 = !DILocation(line: 737, column: 20, scope: !597)
!610 = !DILocation(line: 737, column: 33, scope: !597)
!611 = !DILocation(line: 737, column: 81, scope: !597)
!612 = !DILocation(line: 737, column: 71, scope: !597)
!613 = !DILocation(line: 737, column: 90, scope: !597)
!614 = !DILocation(line: 737, column: 100, scope: !597)
!615 = !DILocation(line: 737, column: 53, scope: !597)
!616 = !DILocation(line: 736, column: 268, scope: !597)
!617 = !DILocation(line: 736, column: 78, scope: !597)
!618 = !DILocation(line: 736, column: 68, scope: !597)
!619 = !DILocation(line: 736, column: 85, scope: !597)
!620 = !DILocation(line: 736, column: 5, scope: !597)
!621 = !DILocation(line: 736, column: 96, scope: !597)
!622 = !DILocation(line: 738, column: 3, scope: !597)
!623 = !DILocation(line: 741, column: 202, scope: !624)
!624 = distinct !DILexicalBlock(scope: !592, file: !139, line: 740, column: 3)
!625 = !DILocation(line: 741, column: 192, scope: !624)
!626 = !DILocation(line: 741, column: 209, scope: !624)
!627 = !DILocation(line: 741, column: 218, scope: !624)
!628 = !DILocation(line: 741, column: 224, scope: !624)
!629 = !DILocation(line: 741, column: 127, scope: !624)
!630 = !DILocation(line: 741, column: 274, scope: !624)
!631 = !DILocation(line: 741, column: 264, scope: !624)
!632 = !DILocation(line: 741, column: 283, scope: !624)
!633 = !DILocation(line: 741, column: 293, scope: !624)
!634 = !DILocation(line: 741, column: 246, scope: !624)
!635 = !DILocation(line: 741, column: 237, scope: !624)
!636 = !DILocation(line: 741, column: 235, scope: !624)
!637 = !DILocation(line: 742, column: 11, scope: !624)
!638 = !DILocation(line: 742, column: 20, scope: !624)
!639 = !DILocation(line: 742, column: 33, scope: !624)
!640 = !DILocation(line: 742, column: 81, scope: !624)
!641 = !DILocation(line: 742, column: 71, scope: !624)
!642 = !DILocation(line: 742, column: 90, scope: !624)
!643 = !DILocation(line: 742, column: 100, scope: !624)
!644 = !DILocation(line: 742, column: 53, scope: !624)
!645 = !DILocation(line: 741, column: 302, scope: !624)
!646 = !DILocation(line: 741, column: 80, scope: !624)
!647 = !DILocation(line: 741, column: 70, scope: !624)
!648 = !DILocation(line: 741, column: 87, scope: !624)
!649 = !DILocation(line: 741, column: 96, scope: !624)
!650 = !DILocation(line: 741, column: 102, scope: !624)
!651 = !DILocation(line: 741, column: 5, scope: !624)
!652 = !DILocation(line: 741, column: 113, scope: !624)
!653 = !DILocation(line: 744, column: 1, scope: !584)
!654 = distinct !DISubprogram(name: "z_irq_spurious", scope: !498, file: !498, line: 103, type: !323, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !309)
!655 = !DILocalVariable(name: "unused", arg: 1, scope: !654, file: !498, line: 103, type: !200)
!656 = !DILocation(line: 103, column: 33, scope: !654)
!657 = !DILocation(line: 105, column: 9, scope: !654)
!658 = !DILocation(line: 107, column: 2, scope: !654)
!659 = !DILocation(line: 108, column: 1, scope: !654)
!660 = distinct !DISubprogram(name: "sys_sflist_is_empty", scope: !431, file: !431, line: 335, type: !661, scopeLine: 335, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !309)
!661 = !DISubroutineType(types: !662)
!662 = !{!663, !664}
!663 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 32)
!665 = !DILocalVariable(name: "list", arg: 1, scope: !660, file: !431, line: 335, type: !664)
!666 = !DILocation(line: 335, column: 55, scope: !660)
!667 = !DILocation(line: 335, column: 92, scope: !660)
!668 = !DILocation(line: 335, column: 71, scope: !660)
!669 = !DILocation(line: 335, column: 98, scope: !660)
!670 = !DILocation(line: 335, column: 63, scope: !660)
!671 = distinct !DISubprogram(name: "sys_sflist_peek_head", scope: !431, file: !431, line: 255, type: !672, scopeLine: 256, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !309)
!672 = !DISubroutineType(types: !673)
!673 = !{!435, !664}
!674 = !DILocalVariable(name: "list", arg: 1, scope: !671, file: !431, line: 255, type: !664)
!675 = !DILocation(line: 255, column: 64, scope: !671)
!676 = !DILocation(line: 257, column: 9, scope: !671)
!677 = !DILocation(line: 257, column: 15, scope: !671)
!678 = !DILocation(line: 257, column: 2, scope: !671)
