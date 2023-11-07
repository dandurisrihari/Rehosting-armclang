; ModuleID = '../bc_files/fault.bc'
source_filename = "/home/sri/zephyrproject/zephyr/arch/arm/core/cortex_m/fault.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-arm-none-eabi"

%struct.log_source_const_data = type { ptr, i8 }
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
%struct.__esf = type { %struct.__basic_sf }
%struct.__basic_sf = type { %union.anon.3, %union.anon.4, %union.anon.5, %union.anon.6, %union.anon.7, %union.anon.8, %union.anon.9, i32 }
%union.anon.3 = type { i32 }
%union.anon.4 = type { i32 }
%union.anon.5 = type { i32 }
%union.anon.6 = type { i32 }
%union.anon.7 = type { i32 }
%union.anon.8 = type { i32 }
%union.anon.9 = type { i32 }
%struct.SCB_Type = type { i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32 }
%struct.__va_list = type { ptr }

@__log_current_const_data = internal global ptr @log_const_os, align 4, !dbg !0
@.str = private unnamed_addr constant [43 x i8] c"SPSEL in thread mode does not indicate PSP\00", align 1, !dbg !179
@log_const_os = external constant %struct.log_source_const_data, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"***** HARD FAULT *****\00", align 1, !dbg !186
@.str.2 = private unnamed_addr constant [28 x i8] c"ARCH_EXCEPT with reason %x\0A\00", align 1, !dbg !191
@__text_region_start = external global [0 x i8], align 1
@__text_region_end = external global [0 x i8], align 1
@__ramfunc_start = external global [0 x i8], align 1
@__ramfunc_end = external global [0 x i8], align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"***** %s %d) *****\00", align 1, !dbg !196
@.str.4 = private unnamed_addr constant [21 x i8] c"Reserved Exception (\00", align 1, !dbg !201
@.str.5 = private unnamed_addr constant [25 x i8] c"Spurious interrupt (IRQ \00", align 1, !dbg !206

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_k_object_access_grant(ptr noundef %0, ptr noundef %1) #0 !dbg !229 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !345, metadata !DIExpression()), !dbg !346
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !347, metadata !DIExpression()), !dbg !348
  %5 = load ptr, ptr %3, align 4, !dbg !349
  %6 = load ptr, ptr %4, align 4, !dbg !350
  ret void, !dbg !351
}

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_k_object_release(ptr noundef %0) #0 !dbg !352 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !355, metadata !DIExpression()), !dbg !356
  %3 = load ptr, ptr %2, align 4, !dbg !357
  ret void, !dbg !358
}

; Function Attrs: noinline nounwind optnone
define internal ptr @z_impl_k_object_alloc(i8 noundef zeroext %0) #0 !dbg !359 {
  %2 = alloca i8, align 1
  store i8 %0, ptr %2, align 1
  call void @llvm.dbg.declare(metadata ptr %2, metadata !362, metadata !DIExpression()), !dbg !363
  %3 = load i8, ptr %2, align 1, !dbg !364
  ret ptr null, !dbg !365
}

; Function Attrs: noinline nounwind optnone
define internal ptr @z_impl_k_object_alloc_size(i8 noundef zeroext %0, i32 noundef %1) #0 !dbg !366 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8 %0, ptr %3, align 1
  call void @llvm.dbg.declare(metadata ptr %3, metadata !369, metadata !DIExpression()), !dbg !370
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !371, metadata !DIExpression()), !dbg !372
  %5 = load i8, ptr %3, align 1, !dbg !373
  %6 = load i32, ptr %4, align 4, !dbg !374
  ret ptr null, !dbg !375
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_thread_timeout_expires_ticks(ptr noundef %0) #0 !dbg !376 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !383, metadata !DIExpression()), !dbg !384
  %3 = load ptr, ptr %2, align 4, !dbg !385
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !386
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !387
  %6 = call i64 @z_timeout_expires(ptr noundef %5), !dbg !388
  ret i64 %6, !dbg !389
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_thread_timeout_remaining_ticks(ptr noundef %0) #0 !dbg !390 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !391, metadata !DIExpression()), !dbg !392
  %3 = load ptr, ptr %2, align 4, !dbg !393
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !394
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !395
  %6 = call i64 @z_timeout_remaining(ptr noundef %5), !dbg !396
  ret i64 %6, !dbg !397
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_timer_expires_ticks(ptr noundef %0) #0 !dbg !398 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !420, metadata !DIExpression()), !dbg !421
  %3 = load ptr, ptr %2, align 4, !dbg !422
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !423
  %5 = call i64 @z_timeout_expires(ptr noundef %4), !dbg !424
  ret i64 %5, !dbg !425
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_timer_remaining_ticks(ptr noundef %0) #0 !dbg !426 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !427, metadata !DIExpression()), !dbg !428
  %3 = load ptr, ptr %2, align 4, !dbg !429
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !430
  %5 = call i64 @z_timeout_remaining(ptr noundef %4), !dbg !431
  ret i64 %5, !dbg !432
}

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_k_timer_user_data_set(ptr noundef %0, ptr noundef %1) #0 !dbg !433 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !436, metadata !DIExpression()), !dbg !437
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !438, metadata !DIExpression()), !dbg !439
  %5 = load ptr, ptr %4, align 4, !dbg !440
  %6 = load ptr, ptr %3, align 4, !dbg !441
  %7 = getelementptr inbounds %struct.k_timer, ptr %6, i32 0, i32 6, !dbg !442
  store ptr %5, ptr %7, align 4, !dbg !443
  ret void, !dbg !444
}

; Function Attrs: noinline nounwind optnone
define internal ptr @z_impl_k_timer_user_data_get(ptr noundef %0) #0 !dbg !445 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !448, metadata !DIExpression()), !dbg !449
  %3 = load ptr, ptr %2, align 4, !dbg !450
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 6, !dbg !451
  %5 = load ptr, ptr %4, align 4, !dbg !451
  ret ptr %5, !dbg !452
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_queue_is_empty(ptr noundef %0) #0 !dbg !453 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !474, metadata !DIExpression()), !dbg !475
  %3 = load ptr, ptr %2, align 4, !dbg !476
  %4 = getelementptr inbounds %struct.k_queue, ptr %3, i32 0, i32 0, !dbg !477
  %5 = call zeroext i1 @sys_sflist_is_empty(ptr noundef %4), !dbg !478
  %6 = zext i1 %5 to i32, !dbg !479
  ret i32 %6, !dbg !480
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_sem_count_get(ptr noundef %0) #0 !dbg !481 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !490, metadata !DIExpression()), !dbg !491
  %3 = load ptr, ptr %2, align 4, !dbg !492
  %4 = getelementptr inbounds %struct.k_sem, ptr %3, i32 0, i32 1, !dbg !493
  %5 = load i32, ptr %4, align 4, !dbg !493
  ret i32 %5, !dbg !494
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_msgq_num_free_get(ptr noundef %0) #0 !dbg !495 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !512, metadata !DIExpression()), !dbg !513
  %3 = load ptr, ptr %2, align 4, !dbg !514
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 3, !dbg !515
  %5 = load i32, ptr %4, align 4, !dbg !515
  %6 = load ptr, ptr %2, align 4, !dbg !516
  %7 = getelementptr inbounds %struct.k_msgq, ptr %6, i32 0, i32 8, !dbg !517
  %8 = load i32, ptr %7, align 4, !dbg !517
  %9 = sub i32 %5, %8, !dbg !518
  ret i32 %9, !dbg !519
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_msgq_num_used_get(ptr noundef %0) #0 !dbg !520 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !521, metadata !DIExpression()), !dbg !522
  %3 = load ptr, ptr %2, align 4, !dbg !523
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 8, !dbg !524
  %5 = load i32, ptr %4, align 4, !dbg !524
  ret i32 %5, !dbg !525
}

; Function Attrs: noinline nounwind optnone
define hidden void @z_arm_fault(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #0 !dbg !526 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca ptr, align 4
  %15 = alloca %struct.__esf, align 4
  store i32 %0, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !531, metadata !DIExpression()), !dbg !532
  store i32 %1, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !533, metadata !DIExpression()), !dbg !534
  store i32 %2, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !535, metadata !DIExpression()), !dbg !536
  store ptr %3, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !537, metadata !DIExpression()), !dbg !538
  call void @llvm.dbg.declare(metadata ptr %10, metadata !539, metadata !DIExpression()), !dbg !540
  store i32 0, ptr %10, align 4, !dbg !540
  call void @llvm.dbg.declare(metadata ptr %11, metadata !541, metadata !DIExpression()), !dbg !542
  %16 = load volatile i32, ptr getelementptr inbounds (%struct.SCB_Type, ptr inttoptr (i32 -536810240 to ptr), i32 0, i32 1), align 4, !dbg !543
  %17 = and i32 %16, 511, !dbg !544
  store i32 %17, ptr %11, align 4, !dbg !542
  call void @llvm.dbg.declare(metadata ptr %12, metadata !545, metadata !DIExpression()), !dbg !547
  call void @llvm.dbg.declare(metadata ptr %13, metadata !548, metadata !DIExpression()), !dbg !549
  call void @llvm.dbg.declare(metadata ptr %14, metadata !550, metadata !DIExpression()), !dbg !551
  call void @llvm.dbg.declare(metadata ptr %15, metadata !552, metadata !DIExpression()), !dbg !553
  store i32 0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !554, metadata !DIExpression()), !dbg !559
  %18 = load i32, ptr %5, align 4, !dbg !561
  %19 = icmp ne i32 %18, 0, !dbg !563
  br i1 %19, label %20, label %21, !dbg !564

20:                                               ; preds = %4
  br label %arch_irq_unlock.exit, !dbg !565

21:                                               ; preds = %4
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #5, !dbg !567, !srcloc !568
  br label %arch_irq_unlock.exit, !dbg !569

arch_irq_unlock.exit:                             ; preds = %20, %21
  %22 = load i32, ptr %6, align 4, !dbg !570
  %23 = load i32, ptr %7, align 4, !dbg !571
  %24 = load i32, ptr %8, align 4, !dbg !572
  %25 = call ptr @get_esf(i32 noundef %22, i32 noundef %23, i32 noundef %24, ptr noundef %13), !dbg !573
  store ptr %25, ptr %14, align 4, !dbg !574
  %26 = load ptr, ptr %14, align 4, !dbg !575
  %27 = load i32, ptr %11, align 4, !dbg !576
  %28 = call i32 @fault_handle(ptr noundef %26, i32 noundef %27, ptr noundef %12), !dbg !577
  store i32 %28, ptr %10, align 4, !dbg !578
  %29 = load i8, ptr %12, align 1, !dbg !579
  %30 = trunc i8 %29 to i1, !dbg !579
  br i1 %30, label %31, label %32, !dbg !581

31:                                               ; preds = %arch_irq_unlock.exit
  br label %56, !dbg !582

32:                                               ; preds = %arch_irq_unlock.exit
  %33 = load ptr, ptr %14, align 4, !dbg !584
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %15, ptr align 4 %33, i32 32, i1 false), !dbg !585
  %34 = load ptr, ptr %9, align 4, !dbg !586
  %35 = load i8, ptr %13, align 1, !dbg !587
  %36 = trunc i8 %35 to i1, !dbg !587
  br i1 %36, label %37, label %49, !dbg !589

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.__esf, ptr %15, i32 0, i32 0, !dbg !590
  %39 = getelementptr inbounds %struct.__basic_sf, ptr %38, i32 0, i32 7, !dbg !593
  %40 = load i32, ptr %39, align 4, !dbg !593
  %41 = and i32 %40, 511, !dbg !594
  %42 = icmp eq i32 %41, 0, !dbg !595
  br i1 %42, label %43, label %48, !dbg !596

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.__esf, ptr %15, i32 0, i32 0, !dbg !597
  %45 = getelementptr inbounds %struct.__basic_sf, ptr %44, i32 0, i32 7, !dbg !599
  %46 = load i32, ptr %45, align 4, !dbg !600
  %47 = or i32 %46, 511, !dbg !600
  store i32 %47, ptr %45, align 4, !dbg !600
  br label %48, !dbg !601

48:                                               ; preds = %43, %37
  br label %54, !dbg !602

49:                                               ; preds = %32
  %50 = getelementptr inbounds %struct.__esf, ptr %15, i32 0, i32 0, !dbg !603
  %51 = getelementptr inbounds %struct.__basic_sf, ptr %50, i32 0, i32 7, !dbg !605
  %52 = load i32, ptr %51, align 4, !dbg !606
  %53 = and i32 %52, -512, !dbg !606
  store i32 %53, ptr %51, align 4, !dbg !606
  br label %54

54:                                               ; preds = %49, %48
  %55 = load i32, ptr %10, align 4, !dbg !607
  call void @z_arm_fatal_error(i32 noundef %55, ptr noundef %15), !dbg !608
  br label %56, !dbg !609

56:                                               ; preds = %54, %31
  ret void, !dbg !609
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone
define internal ptr @get_esf(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #0 !dbg !610 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 4
  %10 = alloca i8, align 1
  %11 = alloca ptr, align 4
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca ptr, align 4
  store i32 %0, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !614, metadata !DIExpression()), !dbg !615
  store i32 %1, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !616, metadata !DIExpression()), !dbg !617
  store i32 %2, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !618, metadata !DIExpression()), !dbg !619
  store ptr %3, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !620, metadata !DIExpression()), !dbg !621
  call void @llvm.dbg.declare(metadata ptr %10, metadata !622, metadata !DIExpression()), !dbg !623
  store i8 0, ptr %10, align 1, !dbg !623
  call void @llvm.dbg.declare(metadata ptr %11, metadata !624, metadata !DIExpression()), !dbg !625
  store ptr null, ptr %11, align 4, !dbg !625
  %15 = load ptr, ptr %9, align 4, !dbg !626
  store i8 0, ptr %15, align 1, !dbg !627
  %16 = load i32, ptr %8, align 4, !dbg !628
  %17 = and i32 %16, -16777216, !dbg !630
  %18 = icmp ne i32 %17, -16777216, !dbg !631
  br i1 %18, label %19, label %20, !dbg !632

19:                                               ; preds = %4
  store ptr null, ptr %5, align 4, !dbg !633
  br label %55, !dbg !633

20:                                               ; preds = %4
  %21 = load i32, ptr %8, align 4, !dbg !635
  %22 = and i32 %21, 8, !dbg !637
  %23 = icmp ne i32 %22, 0, !dbg !637
  br i1 %23, label %24, label %38, !dbg !638

24:                                               ; preds = %20
  %25 = load i32, ptr %8, align 4, !dbg !639
  %26 = and i32 %25, 4, !dbg !640
  %27 = icmp ne i32 %26, 0, !dbg !640
  br i1 %27, label %38, label %28, !dbg !641

28:                                               ; preds = %24
  br label %29, !dbg !642

29:                                               ; preds = %28
  call void @llvm.dbg.declare(metadata ptr %12, metadata !644, metadata !DIExpression()), !dbg !646
  %30 = call zeroext i1 @k_is_user_context(), !dbg !647
  %31 = zext i1 %30 to i8, !dbg !646
  store i8 %31, ptr %12, align 1, !dbg !646
  call void @llvm.dbg.declare(metadata ptr %13, metadata !648, metadata !DIExpression()), !dbg !649
  call void @llvm.dbg.declare(metadata ptr %14, metadata !650, metadata !DIExpression()), !dbg !651
  %32 = load ptr, ptr @__log_current_const_data, align 4, !dbg !652
  store ptr %32, ptr %14, align 4, !dbg !651
  br label %33, !dbg !653

33:                                               ; preds = %29
  %34 = load ptr, ptr %14, align 4, !dbg !654
  call void (i8, ptr, i8, ptr, i32, i32, ptr, ...) @z_log_msg_runtime_create(i8 noundef zeroext 0, ptr noundef %34, i8 noundef zeroext 1, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef @.str), !dbg !656
  store i32 0, ptr %13, align 4, !dbg !657
  br label %35, !dbg !658

35:                                               ; preds = %33
  %36 = load i32, ptr %13, align 4, !dbg !659
  br label %37, !dbg !660

37:                                               ; preds = %35
  store ptr null, ptr %5, align 4, !dbg !661
  br label %55, !dbg !661

38:                                               ; preds = %24, %20
  %39 = load i8, ptr %10, align 1, !dbg !662
  %40 = trunc i8 %39 to i1, !dbg !662
  br i1 %40, label %53, label %41, !dbg !664

41:                                               ; preds = %38
  %42 = load i32, ptr %8, align 4, !dbg !665
  %43 = and i32 %42, 8, !dbg !668
  %44 = icmp ne i32 %43, 0, !dbg !668
  br i1 %44, label %45, label %48, !dbg !669

45:                                               ; preds = %41
  %46 = load i32, ptr %7, align 4, !dbg !670
  %47 = inttoptr i32 %46 to ptr, !dbg !672
  store ptr %47, ptr %11, align 4, !dbg !673
  br label %52, !dbg !674

48:                                               ; preds = %41
  %49 = load i32, ptr %6, align 4, !dbg !675
  %50 = inttoptr i32 %49 to ptr, !dbg !677
  store ptr %50, ptr %11, align 4, !dbg !678
  %51 = load ptr, ptr %9, align 4, !dbg !679
  store i8 1, ptr %51, align 1, !dbg !680
  br label %52

52:                                               ; preds = %48, %45
  br label %53, !dbg !681

53:                                               ; preds = %52, %38
  %54 = load ptr, ptr %11, align 4, !dbg !682
  store ptr %54, ptr %5, align 4, !dbg !683
  br label %55, !dbg !683

55:                                               ; preds = %53, %37, %19
  %56 = load ptr, ptr %5, align 4, !dbg !684
  ret ptr %56, !dbg !684
}

; Function Attrs: noinline nounwind optnone
define internal i32 @fault_handle(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 !dbg !685 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !688, metadata !DIExpression()), !dbg !689
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !690, metadata !DIExpression()), !dbg !691
  store ptr %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !692, metadata !DIExpression()), !dbg !693
  call void @llvm.dbg.declare(metadata ptr %7, metadata !694, metadata !DIExpression()), !dbg !695
  store i32 0, ptr %7, align 4, !dbg !695
  %8 = load ptr, ptr %6, align 4, !dbg !696
  store i8 0, ptr %8, align 1, !dbg !697
  %9 = load i32, ptr %5, align 4, !dbg !698
  switch i32 %9, label %14 [
    i32 3, label %10
  ], !dbg !699

10:                                               ; preds = %3
  %11 = load ptr, ptr %4, align 4, !dbg !700
  %12 = load ptr, ptr %6, align 4, !dbg !702
  %13 = call i32 @hard_fault(ptr noundef %11, ptr noundef %12), !dbg !703
  store i32 %13, ptr %7, align 4, !dbg !704
  br label %17, !dbg !705

14:                                               ; preds = %3
  %15 = load ptr, ptr %4, align 4, !dbg !706
  %16 = load i32, ptr %5, align 4, !dbg !707
  call void @reserved_exception(ptr noundef %15, i32 noundef %16), !dbg !708
  br label %17, !dbg !709

17:                                               ; preds = %14, %10
  %18 = load ptr, ptr %6, align 4, !dbg !710
  %19 = load i8, ptr %18, align 1, !dbg !712
  %20 = trunc i8 %19 to i1, !dbg !712
  %21 = zext i1 %20 to i32, !dbg !713
  %22 = icmp eq i32 %21, 0, !dbg !714
  br i1 %22, label %23, label %26, !dbg !715

23:                                               ; preds = %17
  %24 = load ptr, ptr %4, align 4, !dbg !716
  %25 = load i32, ptr %5, align 4, !dbg !718
  call void @fault_show(ptr noundef %24, i32 noundef %25), !dbg !719
  br label %26, !dbg !720

26:                                               ; preds = %23, %17
  %27 = load i32, ptr %7, align 4, !dbg !721
  ret i32 %27, !dbg !722
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

declare void @z_arm_fatal_error(i32 noundef, ptr noundef) #3

; Function Attrs: noinline nounwind optnone
define hidden void @z_arm_fault_init() #0 !dbg !723 {
  ret void, !dbg !726
}

declare i64 @z_timeout_expires(ptr noundef) #3

declare i64 @z_timeout_remaining(ptr noundef) #3

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @sys_sflist_is_empty(ptr noundef %0) #0 !dbg !727 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !731, metadata !DIExpression()), !dbg !732
  %3 = load ptr, ptr %2, align 4, !dbg !733
  %4 = call ptr @sys_sflist_peek_head(ptr noundef %3), !dbg !734
  %5 = icmp eq ptr %4, null, !dbg !735
  ret i1 %5, !dbg !736
}

; Function Attrs: noinline nounwind optnone
define internal ptr @sys_sflist_peek_head(ptr noundef %0) #0 !dbg !737 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !740, metadata !DIExpression()), !dbg !741
  %3 = load ptr, ptr %2, align 4, !dbg !742
  %4 = getelementptr inbounds %struct._sflist, ptr %3, i32 0, i32 0, !dbg !743
  %5 = load ptr, ptr %4, align 4, !dbg !743
  ret ptr %5, !dbg !744
}

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @k_is_user_context() #0 !dbg !745 {
  ret i1 false, !dbg !749
}

; Function Attrs: noinline nounwind optnone
define internal void @z_log_msg_runtime_create(i8 noundef zeroext %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ...) #0 !dbg !750 {
  %8 = alloca i8, align 1
  %9 = alloca ptr, align 4
  %10 = alloca i8, align 1
  %11 = alloca ptr, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca ptr, align 4
  %15 = alloca %struct.__va_list, align 4
  store i8 %0, ptr %8, align 1
  call void @llvm.dbg.declare(metadata ptr %8, metadata !755, metadata !DIExpression()), !dbg !756
  store ptr %1, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !757, metadata !DIExpression()), !dbg !758
  store i8 %2, ptr %10, align 1
  call void @llvm.dbg.declare(metadata ptr %10, metadata !759, metadata !DIExpression()), !dbg !760
  store ptr %3, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !761, metadata !DIExpression()), !dbg !762
  store i32 %4, ptr %12, align 4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !763, metadata !DIExpression()), !dbg !764
  store i32 %5, ptr %13, align 4
  call void @llvm.dbg.declare(metadata ptr %13, metadata !765, metadata !DIExpression()), !dbg !766
  store ptr %6, ptr %14, align 4
  call void @llvm.dbg.declare(metadata ptr %14, metadata !767, metadata !DIExpression()), !dbg !768
  call void @llvm.dbg.declare(metadata ptr %15, metadata !769, metadata !DIExpression()), !dbg !776
  call void @llvm.va_start(ptr %15), !dbg !777
  %16 = load i8, ptr %8, align 1, !dbg !778
  %17 = load ptr, ptr %9, align 4, !dbg !779
  %18 = load i8, ptr %10, align 1, !dbg !780
  %19 = load ptr, ptr %11, align 4, !dbg !781
  %20 = load i32, ptr %12, align 4, !dbg !782
  %21 = load i32, ptr %13, align 4, !dbg !783
  %22 = load ptr, ptr %14, align 4, !dbg !784
  %23 = getelementptr inbounds %struct.__va_list, ptr %15, i32 0, i32 0, !dbg !785
  %24 = load [1 x i32], ptr %23, align 4, !dbg !785
  call void @z_log_msg_runtime_vcreate(i8 noundef zeroext %16, ptr noundef %17, i8 noundef zeroext %18, ptr noundef %19, i32 noundef %20, i32 noundef %21, ptr noundef %22, [1 x i32] %24), !dbg !785
  call void @llvm.va_end(ptr %15), !dbg !786
  ret void, !dbg !787
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #4

; Function Attrs: noinline nounwind optnone
define internal void @z_log_msg_runtime_vcreate(i8 noundef zeroext %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, [1 x i32] %7) #0 !dbg !788 {
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
  call void @llvm.dbg.declare(metadata ptr %10, metadata !792, metadata !DIExpression()), !dbg !793
  store ptr %1, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !794, metadata !DIExpression()), !dbg !795
  store i8 %2, ptr %12, align 1
  call void @llvm.dbg.declare(metadata ptr %12, metadata !796, metadata !DIExpression()), !dbg !797
  store ptr %3, ptr %13, align 4
  call void @llvm.dbg.declare(metadata ptr %13, metadata !798, metadata !DIExpression()), !dbg !799
  store i32 %4, ptr %14, align 4
  call void @llvm.dbg.declare(metadata ptr %14, metadata !800, metadata !DIExpression()), !dbg !801
  store i32 %5, ptr %15, align 4
  call void @llvm.dbg.declare(metadata ptr %15, metadata !802, metadata !DIExpression()), !dbg !803
  store ptr %6, ptr %16, align 4
  call void @llvm.dbg.declare(metadata ptr %16, metadata !804, metadata !DIExpression()), !dbg !805
  call void @llvm.dbg.declare(metadata ptr %9, metadata !806, metadata !DIExpression()), !dbg !807
  br label %18, !dbg !808

18:                                               ; preds = %8
  call void asm sideeffect "", "~{memory}"() #5, !dbg !809, !srcloc !811
  br label %19, !dbg !812

19:                                               ; preds = %18
  %20 = load i8, ptr %10, align 1, !dbg !813
  %21 = load ptr, ptr %11, align 4, !dbg !814
  %22 = load i8, ptr %12, align 1, !dbg !815
  %23 = load ptr, ptr %13, align 4, !dbg !816
  %24 = load i32, ptr %14, align 4, !dbg !817
  %25 = load i32, ptr %15, align 4, !dbg !818
  %26 = load ptr, ptr %16, align 4, !dbg !819
  %27 = getelementptr inbounds %struct.__va_list, ptr %9, i32 0, i32 0, !dbg !820
  %28 = load [1 x i32], ptr %27, align 4, !dbg !820
  call void @z_impl_z_log_msg_runtime_vcreate(i8 noundef zeroext %20, ptr noundef %21, i8 noundef zeroext %22, ptr noundef %23, i32 noundef %24, i32 noundef %25, ptr noundef %26, [1 x i32] %28), !dbg !820
  ret void, !dbg !821
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #4

declare void @z_impl_z_log_msg_runtime_vcreate(i8 noundef zeroext, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef, ptr noundef, [1 x i32]) #3

; Function Attrs: noinline nounwind optnone
define internal i32 @hard_fault(ptr noundef %0, ptr noundef %1) #0 !dbg !822 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 4
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !825, metadata !DIExpression()), !dbg !826
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !827, metadata !DIExpression()), !dbg !828
  call void @llvm.dbg.declare(metadata ptr %5, metadata !829, metadata !DIExpression()), !dbg !830
  store i32 0, ptr %5, align 4, !dbg !830
  br label %12, !dbg !831

12:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata ptr %6, metadata !832, metadata !DIExpression()), !dbg !834
  %13 = call zeroext i1 @k_is_user_context(), !dbg !835
  %14 = zext i1 %13 to i8, !dbg !834
  store i8 %14, ptr %6, align 1, !dbg !834
  call void @llvm.dbg.declare(metadata ptr %7, metadata !836, metadata !DIExpression()), !dbg !837
  call void @llvm.dbg.declare(metadata ptr %8, metadata !838, metadata !DIExpression()), !dbg !839
  %15 = load ptr, ptr @__log_current_const_data, align 4, !dbg !840
  store ptr %15, ptr %8, align 4, !dbg !839
  br label %16, !dbg !841

16:                                               ; preds = %12
  %17 = load ptr, ptr %8, align 4, !dbg !842
  call void (i8, ptr, i8, ptr, i32, i32, ptr, ...) @z_log_msg_runtime_create(i8 noundef zeroext 0, ptr noundef %17, i8 noundef zeroext 1, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef @.str.1), !dbg !844
  store i32 0, ptr %7, align 4, !dbg !845
  br label %18, !dbg !846

18:                                               ; preds = %16
  %19 = load i32, ptr %7, align 4, !dbg !847
  br label %20, !dbg !848

20:                                               ; preds = %18
  %21 = load ptr, ptr %3, align 4, !dbg !849
  %22 = getelementptr inbounds %struct.__esf, ptr %21, i32 0, i32 0, !dbg !851
  %23 = getelementptr inbounds %struct.__basic_sf, ptr %22, i32 0, i32 6, !dbg !852
  %24 = load i32, ptr %23, align 4, !dbg !852
  %25 = call zeroext i1 @z_arm_is_pc_valid(i32 noundef %24), !dbg !853
  br i1 %25, label %26, label %47, !dbg !854

26:                                               ; preds = %20
  %27 = load ptr, ptr %3, align 4, !dbg !855
  %28 = call zeroext i1 @z_arm_is_synchronous_svc(ptr noundef %27), !dbg !856
  br i1 %28, label %29, label %47, !dbg !857

29:                                               ; preds = %26
  br label %30, !dbg !858

30:                                               ; preds = %29
  call void @llvm.dbg.declare(metadata ptr %9, metadata !860, metadata !DIExpression()), !dbg !862
  %31 = call zeroext i1 @k_is_user_context(), !dbg !863
  %32 = zext i1 %31 to i8, !dbg !862
  store i8 %32, ptr %9, align 1, !dbg !862
  call void @llvm.dbg.declare(metadata ptr %10, metadata !864, metadata !DIExpression()), !dbg !865
  call void @llvm.dbg.declare(metadata ptr %11, metadata !866, metadata !DIExpression()), !dbg !867
  %33 = load ptr, ptr @__log_current_const_data, align 4, !dbg !868
  store ptr %33, ptr %11, align 4, !dbg !867
  br label %34, !dbg !869

34:                                               ; preds = %30
  %35 = load ptr, ptr %11, align 4, !dbg !870
  %36 = load ptr, ptr %3, align 4, !dbg !872
  %37 = getelementptr inbounds %struct.__esf, ptr %36, i32 0, i32 0, !dbg !873
  %38 = getelementptr inbounds %struct.__basic_sf, ptr %37, i32 0, i32 0, !dbg !874
  %39 = load i32, ptr %38, align 4, !dbg !874
  call void (i8, ptr, i8, ptr, i32, i32, ptr, ...) @z_log_msg_runtime_create(i8 noundef zeroext 0, ptr noundef %35, i8 noundef zeroext 1, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef @.str.2, i32 noundef %39), !dbg !875
  store i32 0, ptr %10, align 4, !dbg !876
  br label %40, !dbg !877

40:                                               ; preds = %34
  %41 = load i32, ptr %10, align 4, !dbg !878
  br label %42, !dbg !879

42:                                               ; preds = %40
  %43 = load ptr, ptr %3, align 4, !dbg !880
  %44 = getelementptr inbounds %struct.__esf, ptr %43, i32 0, i32 0, !dbg !881
  %45 = getelementptr inbounds %struct.__basic_sf, ptr %44, i32 0, i32 0, !dbg !882
  %46 = load i32, ptr %45, align 4, !dbg !882
  store i32 %46, ptr %5, align 4, !dbg !883
  br label %47, !dbg !884

47:                                               ; preds = %42, %26, %20
  %48 = load ptr, ptr %3, align 4, !dbg !885
  %49 = call zeroext i1 @memory_fault_recoverable(ptr noundef %48, i1 noundef zeroext true), !dbg !886
  %50 = load ptr, ptr %4, align 4, !dbg !887
  %51 = zext i1 %49 to i8, !dbg !888
  store i8 %51, ptr %50, align 1, !dbg !888
  %52 = load i32, ptr %5, align 4, !dbg !889
  ret i32 %52, !dbg !890
}

; Function Attrs: noinline nounwind optnone
define internal void @reserved_exception(ptr noundef %0, i32 noundef %1) #0 !dbg !891 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !896, metadata !DIExpression()), !dbg !897
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !898, metadata !DIExpression()), !dbg !899
  %8 = load ptr, ptr %3, align 4, !dbg !900
  br label %9, !dbg !901

9:                                                ; preds = %2
  call void @llvm.dbg.declare(metadata ptr %5, metadata !902, metadata !DIExpression()), !dbg !904
  %10 = call zeroext i1 @k_is_user_context(), !dbg !905
  %11 = zext i1 %10 to i8, !dbg !904
  store i8 %11, ptr %5, align 1, !dbg !904
  call void @llvm.dbg.declare(metadata ptr %6, metadata !906, metadata !DIExpression()), !dbg !907
  call void @llvm.dbg.declare(metadata ptr %7, metadata !908, metadata !DIExpression()), !dbg !909
  %12 = load ptr, ptr @__log_current_const_data, align 4, !dbg !910
  store ptr %12, ptr %7, align 4, !dbg !909
  br label %13, !dbg !911

13:                                               ; preds = %9
  %14 = load ptr, ptr %7, align 4, !dbg !912
  %15 = load i32, ptr %4, align 4, !dbg !914
  %16 = icmp slt i32 %15, 16, !dbg !915
  %17 = zext i1 %16 to i64, !dbg !914
  %18 = select i1 %16, ptr @.str.4, ptr @.str.5, !dbg !914
  %19 = load i32, ptr %4, align 4, !dbg !916
  %20 = sub nsw i32 %19, 16, !dbg !917
  call void (i8, ptr, i8, ptr, i32, i32, ptr, ...) @z_log_msg_runtime_create(i8 noundef zeroext 0, ptr noundef %14, i8 noundef zeroext 1, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef @.str.3, ptr noundef %18, i32 noundef %20), !dbg !918
  store i32 0, ptr %6, align 4, !dbg !919
  br label %21, !dbg !920

21:                                               ; preds = %13
  %22 = load i32, ptr %6, align 4, !dbg !921
  br label %23, !dbg !922

23:                                               ; preds = %21
  ret void, !dbg !923
}

; Function Attrs: noinline nounwind optnone
define internal void @fault_show(ptr noundef %0, i32 noundef %1) #0 !dbg !924 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !925, metadata !DIExpression()), !dbg !926
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !927, metadata !DIExpression()), !dbg !928
  %5 = load ptr, ptr %3, align 4, !dbg !929
  %6 = load i32, ptr %4, align 4, !dbg !930
  ret void, !dbg !931
}

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @z_arm_is_pc_valid(i32 noundef %0) #0 !dbg !932 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !935, metadata !DIExpression()), !dbg !936
  %4 = load i32, ptr %3, align 4, !dbg !937
  %5 = icmp ule i32 ptrtoint (ptr @__text_region_start to i32), %4, !dbg !939
  br i1 %5, label %6, label %10, !dbg !940

6:                                                ; preds = %1
  %7 = load i32, ptr %3, align 4, !dbg !941
  %8 = icmp ult i32 %7, ptrtoint (ptr @__text_region_end to i32), !dbg !942
  br i1 %8, label %9, label %10, !dbg !943

9:                                                ; preds = %6
  store i1 true, ptr %2, align 1, !dbg !944
  br label %18, !dbg !944

10:                                               ; preds = %6, %1
  %11 = load i32, ptr %3, align 4, !dbg !946
  %12 = icmp ule i32 ptrtoint (ptr @__ramfunc_start to i32), %11, !dbg !948
  br i1 %12, label %13, label %17, !dbg !949

13:                                               ; preds = %10
  %14 = load i32, ptr %3, align 4, !dbg !950
  %15 = icmp ult i32 %14, ptrtoint (ptr @__ramfunc_end to i32), !dbg !951
  br i1 %15, label %16, label %17, !dbg !952

16:                                               ; preds = %13
  store i1 true, ptr %2, align 1, !dbg !953
  br label %18, !dbg !953

17:                                               ; preds = %13, %10
  store i1 false, ptr %2, align 1, !dbg !955
  br label %18, !dbg !955

18:                                               ; preds = %17, %16, %9
  %19 = load i1, ptr %2, align 1, !dbg !956
  ret i1 %19, !dbg !956
}

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @z_arm_is_synchronous_svc(ptr noundef %0) #0 !dbg !957 {
  %2 = alloca i1, align 1
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i16, align 2
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !960, metadata !DIExpression()), !dbg !961
  call void @llvm.dbg.declare(metadata ptr %4, metadata !962, metadata !DIExpression()), !dbg !963
  %6 = load ptr, ptr %3, align 4, !dbg !964
  %7 = getelementptr inbounds %struct.__esf, ptr %6, i32 0, i32 0, !dbg !965
  %8 = getelementptr inbounds %struct.__basic_sf, ptr %7, i32 0, i32 6, !dbg !966
  %9 = load i32, ptr %8, align 4, !dbg !966
  %10 = inttoptr i32 %9 to ptr, !dbg !967
  store ptr %10, ptr %4, align 4, !dbg !963
  call void @llvm.dbg.declare(metadata ptr %5, metadata !968, metadata !DIExpression()), !dbg !969
  %11 = load ptr, ptr %4, align 4, !dbg !970
  %12 = getelementptr inbounds i16, ptr %11, i32 -1, !dbg !971
  %13 = load i16, ptr %12, align 2, !dbg !972
  store i16 %13, ptr %5, align 2, !dbg !969
  %14 = load i16, ptr %5, align 2, !dbg !973
  %15 = zext i16 %14 to i32, !dbg !973
  %16 = and i32 %15, 65280, !dbg !975
  %17 = icmp eq i32 %16, 57088, !dbg !976
  br i1 %17, label %18, label %24, !dbg !977

18:                                               ; preds = %1
  %19 = load i16, ptr %5, align 2, !dbg !978
  %20 = zext i16 %19 to i32, !dbg !978
  %21 = and i32 %20, 255, !dbg !979
  %22 = icmp eq i32 %21, 2, !dbg !980
  br i1 %22, label %23, label %24, !dbg !981

23:                                               ; preds = %18
  store i1 true, ptr %2, align 1, !dbg !982
  br label %25, !dbg !982

24:                                               ; preds = %18, %1
  store i1 false, ptr %2, align 1, !dbg !984
  br label %25, !dbg !984

25:                                               ; preds = %24, %23
  %26 = load i1, ptr %2, align 1, !dbg !985
  ret i1 %26, !dbg !985
}

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @memory_fault_recoverable(ptr noundef %0, i1 noundef zeroext %1) #0 !dbg !986 {
  %3 = alloca ptr, align 4
  %4 = alloca i8, align 1
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !989, metadata !DIExpression()), !dbg !990
  %5 = zext i1 %1 to i8
  store i8 %5, ptr %4, align 1
  call void @llvm.dbg.declare(metadata ptr %4, metadata !991, metadata !DIExpression()), !dbg !992
  ret i1 false, !dbg !993
}

attributes #0 = { noinline nounwind optnone "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!220, !221, !222, !223, !224, !225, !226, !227}
!llvm.ident = !{!228}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__log_current_const_data", scope: !2, file: !181, line: 22, type: !211, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !103, globals: !178, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "fault.c", directory: "/home/sri/zephyrproject/zephyr/build")
!4 = !{!5, !15, !97}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "k_fatal_error_reason", file: !6, line: 24, baseType: !7, size: 8, elements: !8)
!6 = !DIFile(filename: "include/zephyr/fatal_types.h", directory: "/home/sri/zephyrproject/zephyr")
!7 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!8 = !{!9, !10, !11, !12, !13, !14}
!9 = !DIEnumerator(name: "K_ERR_CPU_EXCEPTION", value: 0)
!10 = !DIEnumerator(name: "K_ERR_SPURIOUS_IRQ", value: 1)
!11 = !DIEnumerator(name: "K_ERR_STACK_CHK_FAIL", value: 2)
!12 = !DIEnumerator(name: "K_ERR_KERNEL_OOPS", value: 3)
!13 = !DIEnumerator(name: "K_ERR_KERNEL_PANIC", value: 4)
!14 = !DIEnumerator(name: "K_ERR_ARCH_START", value: 16)
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "k_objects", file: !16, line: 29, baseType: !7, size: 8, elements: !17)
!16 = !DIFile(filename: "include/zephyr/sys/kobject.h", directory: "/home/sri/zephyrproject/zephyr")
!17 = !{!18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96}
!18 = !DIEnumerator(name: "K_OBJ_ANY", value: 0)
!19 = !DIEnumerator(name: "K_OBJ_MEM_SLAB", value: 1)
!20 = !DIEnumerator(name: "K_OBJ_MSGQ", value: 2)
!21 = !DIEnumerator(name: "K_OBJ_MUTEX", value: 3)
!22 = !DIEnumerator(name: "K_OBJ_PIPE", value: 4)
!23 = !DIEnumerator(name: "K_OBJ_QUEUE", value: 5)
!24 = !DIEnumerator(name: "K_OBJ_POLL_SIGNAL", value: 6)
!25 = !DIEnumerator(name: "K_OBJ_SEM", value: 7)
!26 = !DIEnumerator(name: "K_OBJ_STACK", value: 8)
!27 = !DIEnumerator(name: "K_OBJ_THREAD", value: 9)
!28 = !DIEnumerator(name: "K_OBJ_TIMER", value: 10)
!29 = !DIEnumerator(name: "K_OBJ_THREAD_STACK_ELEMENT", value: 11)
!30 = !DIEnumerator(name: "K_OBJ_NET_SOCKET", value: 12)
!31 = !DIEnumerator(name: "K_OBJ_NET_IF", value: 13)
!32 = !DIEnumerator(name: "K_OBJ_SYS_MUTEX", value: 14)
!33 = !DIEnumerator(name: "K_OBJ_FUTEX", value: 15)
!34 = !DIEnumerator(name: "K_OBJ_CONDVAR", value: 16)
!35 = !DIEnumerator(name: "K_OBJ_DRIVER_GPIO", value: 17)
!36 = !DIEnumerator(name: "K_OBJ_DRIVER_PWM", value: 18)
!37 = !DIEnumerator(name: "K_OBJ_DRIVER_RESET", value: 19)
!38 = !DIEnumerator(name: "K_OBJ_DRIVER_UART", value: 20)
!39 = !DIEnumerator(name: "K_OBJ_DRIVER_CRYPTO", value: 21)
!40 = !DIEnumerator(name: "K_OBJ_DRIVER_ADC", value: 22)
!41 = !DIEnumerator(name: "K_OBJ_DRIVER_AUXDISPLAY", value: 23)
!42 = !DIEnumerator(name: "K_OBJ_DRIVER_BBRAM", value: 24)
!43 = !DIEnumerator(name: "K_OBJ_DRIVER_CAN", value: 25)
!44 = !DIEnumerator(name: "K_OBJ_DRIVER_CHARGER", value: 26)
!45 = !DIEnumerator(name: "K_OBJ_DRIVER_COREDUMP", value: 27)
!46 = !DIEnumerator(name: "K_OBJ_DRIVER_COUNTER", value: 28)
!47 = !DIEnumerator(name: "K_OBJ_DRIVER_DAC", value: 29)
!48 = !DIEnumerator(name: "K_OBJ_DRIVER_DAI", value: 30)
!49 = !DIEnumerator(name: "K_OBJ_DRIVER_DMA", value: 31)
!50 = !DIEnumerator(name: "K_OBJ_DRIVER_EDAC", value: 32)
!51 = !DIEnumerator(name: "K_OBJ_DRIVER_EEPROM", value: 33)
!52 = !DIEnumerator(name: "K_OBJ_DRIVER_FUEL_GAUGE_EMUL", value: 34)
!53 = !DIEnumerator(name: "K_OBJ_DRIVER_EMUL_SENSOR_BACKEND_API", value: 35)
!54 = !DIEnumerator(name: "K_OBJ_DRIVER_ENTROPY", value: 36)
!55 = !DIEnumerator(name: "K_OBJ_DRIVER_ESPI", value: 37)
!56 = !DIEnumerator(name: "K_OBJ_DRIVER_ESPI_SAF", value: 38)
!57 = !DIEnumerator(name: "K_OBJ_DRIVER_FLASH", value: 39)
!58 = !DIEnumerator(name: "K_OBJ_DRIVER_FPGA", value: 40)
!59 = !DIEnumerator(name: "K_OBJ_DRIVER_FUEL_GAUGE", value: 41)
!60 = !DIEnumerator(name: "K_OBJ_DRIVER_HWSPINLOCK", value: 42)
!61 = !DIEnumerator(name: "K_OBJ_DRIVER_I2C", value: 43)
!62 = !DIEnumerator(name: "K_OBJ_DRIVER_I2S", value: 44)
!63 = !DIEnumerator(name: "K_OBJ_DRIVER_I3C", value: 45)
!64 = !DIEnumerator(name: "K_OBJ_DRIVER_IPM", value: 46)
!65 = !DIEnumerator(name: "K_OBJ_DRIVER_KSCAN", value: 47)
!66 = !DIEnumerator(name: "K_OBJ_DRIVER_LED", value: 48)
!67 = !DIEnumerator(name: "K_OBJ_DRIVER_MBOX", value: 49)
!68 = !DIEnumerator(name: "K_OBJ_DRIVER_MDIO", value: 50)
!69 = !DIEnumerator(name: "K_OBJ_DRIVER_MIPI_DSI", value: 51)
!70 = !DIEnumerator(name: "K_OBJ_DRIVER_PECI", value: 52)
!71 = !DIEnumerator(name: "K_OBJ_DRIVER_PS2", value: 53)
!72 = !DIEnumerator(name: "K_OBJ_DRIVER_PTP_CLOCK", value: 54)
!73 = !DIEnumerator(name: "K_OBJ_DRIVER_REGULATOR_PARENT", value: 55)
!74 = !DIEnumerator(name: "K_OBJ_DRIVER_REGULATOR", value: 56)
!75 = !DIEnumerator(name: "K_OBJ_DRIVER_RETAINED_MEM", value: 57)
!76 = !DIEnumerator(name: "K_OBJ_DRIVER_RTC", value: 58)
!77 = !DIEnumerator(name: "K_OBJ_DRIVER_SDHC", value: 59)
!78 = !DIEnumerator(name: "K_OBJ_DRIVER_SENSOR", value: 60)
!79 = !DIEnumerator(name: "K_OBJ_DRIVER_SMBUS", value: 61)
!80 = !DIEnumerator(name: "K_OBJ_DRIVER_SPI", value: 62)
!81 = !DIEnumerator(name: "K_OBJ_DRIVER_SYSCON", value: 63)
!82 = !DIEnumerator(name: "K_OBJ_DRIVER_W1", value: 64)
!83 = !DIEnumerator(name: "K_OBJ_DRIVER_WDT", value: 65)
!84 = !DIEnumerator(name: "K_OBJ_DRIVER_CAN_TRANSCEIVER", value: 66)
!85 = !DIEnumerator(name: "K_OBJ_DRIVER_UART_MUX", value: 67)
!86 = !DIEnumerator(name: "K_OBJ_DRIVER_ITS", value: 68)
!87 = !DIEnumerator(name: "K_OBJ_DRIVER_TGPIO", value: 69)
!88 = !DIEnumerator(name: "K_OBJ_DRIVER_PCIE_CTRL", value: 70)
!89 = !DIEnumerator(name: "K_OBJ_DRIVER_SVC", value: 71)
!90 = !DIEnumerator(name: "K_OBJ_DRIVER_BC12_EMUL", value: 72)
!91 = !DIEnumerator(name: "K_OBJ_DRIVER_BC12", value: 73)
!92 = !DIEnumerator(name: "K_OBJ_DRIVER_TCPC", value: 74)
!93 = !DIEnumerator(name: "K_OBJ_DRIVER_IVSHMEM", value: 75)
!94 = !DIEnumerator(name: "K_OBJ_DRIVER_EC_HOST_CMD_BACKEND_API", value: 76)
!95 = !DIEnumerator(name: "K_OBJ_DRIVER_ETHPHY", value: 77)
!96 = !DIEnumerator(name: "K_OBJ_LAST", value: 78)
!97 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "z_log_msg_mode", file: !98, line: 128, baseType: !7, size: 8, elements: !99)
!98 = !DIFile(filename: "include/zephyr/logging/log_msg.h", directory: "/home/sri/zephyrproject/zephyr")
!99 = !{!100, !101, !102}
!100 = !DIEnumerator(name: "Z_LOG_MSG_MODE_RUNTIME", value: 0)
!101 = !DIEnumerator(name: "Z_LOG_MSG_MODE_FROM_STACK", value: 1)
!102 = !DIEnumerator(name: "Z_LOG_MSG_MODE_ZERO_COPY", value: 2)
!103 = !{!104, !126, !127, !128, !130, !174, !175}
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 32)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "SCB_Type", file: !106, line: 352, baseType: !107)
!106 = !DIFile(filename: "modules/hal/cmsis/CMSIS/Core/Include/core_cm0.h", directory: "/home/sri/zephyrproject")
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !106, line: 341, size: 320, elements: !108)
!108 = !{!109, !115, !116, !117, !118, !119, !120, !121, !125}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "CPUID", scope: !107, file: !106, line: 343, baseType: !110, size: 32)
!110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !111)
!111 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !112)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !113, line: 64, baseType: !114)
!113 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/stdint.h", directory: "")
!114 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "ICSR", scope: !107, file: !106, line: 344, baseType: !111, size: 32, offset: 32)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !107, file: !106, line: 345, baseType: !112, size: 32, offset: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "AIRCR", scope: !107, file: !106, line: 346, baseType: !111, size: 32, offset: 96)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "SCR", scope: !107, file: !106, line: 347, baseType: !111, size: 32, offset: 128)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "CCR", scope: !107, file: !106, line: 348, baseType: !111, size: 32, offset: 160)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED1", scope: !107, file: !106, line: 349, baseType: !112, size: 32, offset: 192)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "SHP", scope: !107, file: !106, line: 350, baseType: !122, size: 64, offset: 224)
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 64, elements: !123)
!123 = !{!124}
!124 = !DISubrange(count: 2)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "SHCSR", scope: !107, file: !106, line: 351, baseType: !111, size: 32, offset: 288)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!127 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 32)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !113, line: 62, baseType: !7)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 32)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "z_arch_esf_t", file: !132, line: 122, baseType: !133)
!132 = !DIFile(filename: "include/zephyr/arch/arm/cortex_m/exc.h", directory: "/home/sri/zephyrproject/zephyr")
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__esf", file: !132, line: 101, size: 256, elements: !134)
!134 = !{!135}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "basic", scope: !133, file: !132, line: 111, baseType: !136, size: 256)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__basic_sf", file: !132, line: 102, size: 256, elements: !137)
!137 = !{!138, !143, !148, !153, !158, !163, !168, !173}
!138 = !DIDerivedType(tag: DW_TAG_member, scope: !136, file: !132, line: 103, baseType: !139, size: 32)
!139 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !136, file: !132, line: 103, size: 32, elements: !140)
!140 = !{!141, !142}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "a1", scope: !139, file: !132, line: 103, baseType: !112, size: 32)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "r0", scope: !139, file: !132, line: 103, baseType: !112, size: 32)
!143 = !DIDerivedType(tag: DW_TAG_member, scope: !136, file: !132, line: 104, baseType: !144, size: 32, offset: 32)
!144 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !136, file: !132, line: 104, size: 32, elements: !145)
!145 = !{!146, !147}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "a2", scope: !144, file: !132, line: 104, baseType: !112, size: 32)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "r1", scope: !144, file: !132, line: 104, baseType: !112, size: 32)
!148 = !DIDerivedType(tag: DW_TAG_member, scope: !136, file: !132, line: 105, baseType: !149, size: 32, offset: 64)
!149 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !136, file: !132, line: 105, size: 32, elements: !150)
!150 = !{!151, !152}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "a3", scope: !149, file: !132, line: 105, baseType: !112, size: 32)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "r2", scope: !149, file: !132, line: 105, baseType: !112, size: 32)
!153 = !DIDerivedType(tag: DW_TAG_member, scope: !136, file: !132, line: 106, baseType: !154, size: 32, offset: 96)
!154 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !136, file: !132, line: 106, size: 32, elements: !155)
!155 = !{!156, !157}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "a4", scope: !154, file: !132, line: 106, baseType: !112, size: 32)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "r3", scope: !154, file: !132, line: 106, baseType: !112, size: 32)
!158 = !DIDerivedType(tag: DW_TAG_member, scope: !136, file: !132, line: 107, baseType: !159, size: 32, offset: 128)
!159 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !136, file: !132, line: 107, size: 32, elements: !160)
!160 = !{!161, !162}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !159, file: !132, line: 107, baseType: !112, size: 32)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !159, file: !132, line: 107, baseType: !112, size: 32)
!163 = !DIDerivedType(tag: DW_TAG_member, scope: !136, file: !132, line: 108, baseType: !164, size: 32, offset: 160)
!164 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !136, file: !132, line: 108, size: 32, elements: !165)
!165 = !{!166, !167}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "lr", scope: !164, file: !132, line: 108, baseType: !112, size: 32)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !164, file: !132, line: 108, baseType: !112, size: 32)
!168 = !DIDerivedType(tag: DW_TAG_member, scope: !136, file: !132, line: 109, baseType: !169, size: 32, offset: 192)
!169 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !136, file: !132, line: 109, size: 32, elements: !170)
!170 = !{!171, !172}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "pc", scope: !169, file: !132, line: 109, baseType: !112, size: 32)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !169, file: !132, line: 109, baseType: !112, size: 32)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "xpsr", scope: !136, file: !132, line: 110, baseType: !112, size: 32, offset: 224)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !113, line: 102, baseType: !114)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 32)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !113, line: 63, baseType: !177)
!177 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!178 = !{!179, !0, !186, !191, !196, !201, !206}
!179 = !DIGlobalVariableExpression(var: !180, expr: !DIExpression())
!180 = distinct !DIGlobalVariable(scope: null, file: !181, line: 1041, type: !182, isLocal: true, isDefinition: true)
!181 = !DIFile(filename: "arch/arm/core/cortex_m/fault.c", directory: "/home/sri/zephyrproject/zephyr")
!182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !183, size: 344, elements: !184)
!183 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!184 = !{!185}
!185 = !DISubrange(count: 43)
!186 = !DIGlobalVariableExpression(var: !187, expr: !DIExpression())
!187 = distinct !DIGlobalVariable(scope: null, file: !181, line: 769, type: !188, isLocal: true, isDefinition: true)
!188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !183, size: 184, elements: !189)
!189 = !{!190}
!190 = !DISubrange(count: 23)
!191 = !DIGlobalVariableExpression(var: !192, expr: !DIExpression())
!192 = distinct !DIGlobalVariable(scope: null, file: !181, line: 782, type: !193, isLocal: true, isDefinition: true)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !183, size: 224, elements: !194)
!194 = !{!195}
!195 = !DISubrange(count: 28)
!196 = !DIGlobalVariableExpression(var: !197, expr: !DIExpression())
!197 = distinct !DIGlobalVariable(scope: null, file: !181, line: 836, type: !198, isLocal: true, isDefinition: true)
!198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !183, size: 152, elements: !199)
!199 = !{!200}
!200 = !DISubrange(count: 19)
!201 = !DIGlobalVariableExpression(var: !202, expr: !DIExpression())
!202 = distinct !DIGlobalVariable(scope: null, file: !181, line: 836, type: !203, isLocal: true, isDefinition: true)
!203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !183, size: 168, elements: !204)
!204 = !{!205}
!205 = !DISubrange(count: 21)
!206 = !DIGlobalVariableExpression(var: !207, expr: !DIExpression())
!207 = distinct !DIGlobalVariable(scope: null, file: !181, line: 836, type: !208, isLocal: true, isDefinition: true)
!208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !183, size: 200, elements: !209)
!209 = !{!210}
!210 = !DISubrange(count: 25)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 32)
!212 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !213)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "log_source_const_data", file: !214, line: 17, size: 64, elements: !215)
!214 = !DIFile(filename: "include/zephyr/logging/log_instance.h", directory: "/home/sri/zephyrproject/zephyr")
!215 = !{!216, !219}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !213, file: !214, line: 18, baseType: !217, size: 32)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 32)
!218 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !183)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !213, file: !214, line: 19, baseType: !129, size: 8, offset: 32)
!220 = !{i32 7, !"Dwarf Version", i32 4}
!221 = !{i32 2, !"Debug Info Version", i32 3}
!222 = !{i32 1, !"wchar_size", i32 4}
!223 = !{i32 1, !"static_rwdata", i32 1}
!224 = !{i32 1, !"enumsize_buildattr", i32 1}
!225 = !{i32 1, !"armlib_unavailable", i32 0}
!226 = !{i32 8, !"PIC Level", i32 2}
!227 = !{i32 7, !"PIE Level", i32 2}
!228 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
!229 = distinct !DISubprogram(name: "z_impl_k_object_access_grant", scope: !16, file: !16, line: 223, type: !230, scopeLine: 225, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!230 = !DISubroutineType(types: !231)
!231 = !{null, !232, !234}
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 32)
!233 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 32)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_thread", file: !236, line: 250, size: 896, elements: !237)
!236 = !DIFile(filename: "include/zephyr/kernel/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!237 = !{!238, !303, !316, !317, !318, !319, !340}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !235, file: !236, line: 252, baseType: !239, size: 384)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_base", file: !236, line: 58, size: 384, elements: !240)
!240 = !{!241, !267, !275, !276, !277, !288, !289, !290}
!241 = !DIDerivedType(tag: DW_TAG_member, scope: !239, file: !236, line: 61, baseType: !242, size: 64)
!242 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !239, file: !236, line: 61, size: 64, elements: !243)
!243 = !{!244, !260}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_dlist", scope: !242, file: !236, line: 62, baseType: !245, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dnode_t", file: !246, line: 55, baseType: !247)
!246 = !DIFile(filename: "include/zephyr/sys/dlist.h", directory: "/home/sri/zephyrproject/zephyr")
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_dnode", file: !246, line: 37, size: 64, elements: !248)
!248 = !{!249, !255}
!249 = !DIDerivedType(tag: DW_TAG_member, scope: !247, file: !246, line: 38, baseType: !250, size: 32)
!250 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !247, file: !246, line: 38, size: 32, elements: !251)
!251 = !{!252, !254}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !250, file: !246, line: 39, baseType: !253, size: 32)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 32)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !250, file: !246, line: 40, baseType: !253, size: 32)
!255 = !DIDerivedType(tag: DW_TAG_member, scope: !247, file: !246, line: 42, baseType: !256, size: 32, offset: 32)
!256 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !247, file: !246, line: 42, size: 32, elements: !257)
!257 = !{!258, !259}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !256, file: !246, line: 43, baseType: !253, size: 32)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !256, file: !246, line: 44, baseType: !253, size: 32)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_rb", scope: !242, file: !236, line: 63, baseType: !261, size: 64)
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rbnode", file: !262, line: 58, size: 64, elements: !263)
!262 = !DIFile(filename: "include/zephyr/sys/rb.h", directory: "/home/sri/zephyrproject/zephyr")
!263 = !{!264}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !261, file: !262, line: 60, baseType: !265, size: 64)
!265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 64, elements: !123)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 32)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "pended_on", scope: !239, file: !236, line: 69, baseType: !268, size: 32, offset: 64)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 32)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "_wait_q_t", file: !270, line: 243, baseType: !271)
!270 = !DIFile(filename: "include/zephyr/kernel_structs.h", directory: "/home/sri/zephyrproject/zephyr")
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !270, line: 241, size: 64, elements: !272)
!272 = !{!273}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !271, file: !270, line: 242, baseType: !274, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dlist_t", file: !246, line: 51, baseType: !247)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "user_options", scope: !239, file: !236, line: 72, baseType: !129, size: 8, offset: 96)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "thread_state", scope: !239, file: !236, line: 75, baseType: !129, size: 8, offset: 104)
!277 = !DIDerivedType(tag: DW_TAG_member, scope: !239, file: !236, line: 91, baseType: !278, size: 16, offset: 112)
!278 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !239, file: !236, line: 91, size: 16, elements: !279)
!279 = !{!280, !287}
!280 = !DIDerivedType(tag: DW_TAG_member, scope: !278, file: !236, line: 92, baseType: !281, size: 16)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !278, file: !236, line: 92, size: 16, elements: !282)
!282 = !{!283, !286}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !281, file: !236, line: 97, baseType: !284, size: 8)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !113, line: 56, baseType: !285)
!285 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "sched_locked", scope: !281, file: !236, line: 98, baseType: !129, size: 8, offset: 8)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "preempt", scope: !278, file: !236, line: 101, baseType: !176, size: 16)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "order_key", scope: !239, file: !236, line: 108, baseType: !112, size: 32, offset: 128)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "swap_data", scope: !239, file: !236, line: 132, baseType: !126, size: 32, offset: 160)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !239, file: !236, line: 136, baseType: !291, size: 192, offset: 192)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_timeout", file: !270, line: 254, size: 192, elements: !292)
!292 = !{!293, !294, !300}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !291, file: !270, line: 255, baseType: !245, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !291, file: !270, line: 256, baseType: !295, size: 32, offset: 64)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "_timeout_func_t", file: !270, line: 252, baseType: !296)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 32)
!297 = !DISubroutineType(types: !298)
!298 = !{null, !299}
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 32)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "dticks", scope: !291, file: !270, line: 259, baseType: !301, size: 64, offset: 128)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !113, line: 59, baseType: !302)
!302 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "callee_saved", scope: !235, file: !236, line: 255, baseType: !304, size: 288, offset: 384)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_callee_saved", file: !305, line: 25, size: 288, elements: !306)
!305 = !DIFile(filename: "include/zephyr/arch/arm/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!306 = !{!307, !308, !309, !310, !311, !312, !313, !314, !315}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "v1", scope: !304, file: !305, line: 26, baseType: !112, size: 32)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "v2", scope: !304, file: !305, line: 27, baseType: !112, size: 32, offset: 32)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "v3", scope: !304, file: !305, line: 28, baseType: !112, size: 32, offset: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "v4", scope: !304, file: !305, line: 29, baseType: !112, size: 32, offset: 96)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "v5", scope: !304, file: !305, line: 30, baseType: !112, size: 32, offset: 128)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "v6", scope: !304, file: !305, line: 31, baseType: !112, size: 32, offset: 160)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "v7", scope: !304, file: !305, line: 32, baseType: !112, size: 32, offset: 192)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "v8", scope: !304, file: !305, line: 33, baseType: !112, size: 32, offset: 224)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "psp", scope: !304, file: !305, line: 34, baseType: !112, size: 32, offset: 256)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "init_data", scope: !235, file: !236, line: 258, baseType: !126, size: 32, offset: 672)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "join_queue", scope: !235, file: !236, line: 261, baseType: !269, size: 64, offset: 704)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "errno_var", scope: !235, file: !236, line: 302, baseType: !127, size: 32, offset: 768)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "resource_pool", scope: !235, file: !236, line: 333, baseType: !320, size: 32, offset: 800)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 32)
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_heap", file: !322, line: 5291, size: 160, elements: !323)
!322 = !DIFile(filename: "include/zephyr/kernel.h", directory: "/home/sri/zephyrproject/zephyr")
!323 = !{!324, !335, !336}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !321, file: !322, line: 5292, baseType: !325, size: 96)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sys_heap", file: !326, line: 56, size: 96, elements: !327)
!326 = !DIFile(filename: "include/zephyr/sys/sys_heap.h", directory: "/home/sri/zephyrproject/zephyr")
!327 = !{!328, !331, !332}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !325, file: !326, line: 57, baseType: !329, size: 32)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 32)
!330 = !DICompositeType(tag: DW_TAG_structure_type, name: "z_heap", file: !326, line: 57, flags: DIFlagFwdDecl)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "init_mem", scope: !325, file: !326, line: 58, baseType: !126, size: 32, offset: 32)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "init_bytes", scope: !325, file: !326, line: 59, baseType: !333, size: 32, offset: 64)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !334, line: 46, baseType: !114)
!334 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/lib/clang/17/include/stddef.h", directory: "")
!335 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !321, file: !322, line: 5293, baseType: !269, size: 64, offset: 96)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !321, file: !322, line: 5294, baseType: !337, offset: 160)
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_spinlock", file: !338, line: 45, elements: !339)
!338 = !DIFile(filename: "include/zephyr/spinlock.h", directory: "/home/sri/zephyrproject/zephyr")
!339 = !{}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !235, file: !236, line: 355, baseType: !341, size: 64, offset: 832)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_arch", file: !305, line: 60, size: 64, elements: !342)
!342 = !{!343, !344}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "basepri", scope: !341, file: !305, line: 63, baseType: !112, size: 32)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "swap_return_value", scope: !341, file: !305, line: 66, baseType: !112, size: 32, offset: 32)
!345 = !DILocalVariable(name: "object", arg: 1, scope: !229, file: !16, line: 223, type: !232)
!346 = !DILocation(line: 223, column: 61, scope: !229)
!347 = !DILocalVariable(name: "thread", arg: 2, scope: !229, file: !16, line: 224, type: !234)
!348 = !DILocation(line: 224, column: 24, scope: !229)
!349 = !DILocation(line: 226, column: 9, scope: !229)
!350 = !DILocation(line: 227, column: 9, scope: !229)
!351 = !DILocation(line: 228, column: 1, scope: !229)
!352 = distinct !DISubprogram(name: "z_impl_k_object_release", scope: !16, file: !16, line: 243, type: !353, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!353 = !DISubroutineType(types: !354)
!354 = !{null, !232}
!355 = !DILocalVariable(name: "object", arg: 1, scope: !352, file: !16, line: 243, type: !232)
!356 = !DILocation(line: 243, column: 56, scope: !352)
!357 = !DILocation(line: 245, column: 9, scope: !352)
!358 = !DILocation(line: 246, column: 1, scope: !352)
!359 = distinct !DISubprogram(name: "z_impl_k_object_alloc", scope: !16, file: !16, line: 359, type: !360, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!360 = !DISubroutineType(types: !361)
!361 = !{!126, !15}
!362 = !DILocalVariable(name: "otype", arg: 1, scope: !359, file: !16, line: 359, type: !15)
!363 = !DILocation(line: 359, column: 58, scope: !359)
!364 = !DILocation(line: 361, column: 9, scope: !359)
!365 = !DILocation(line: 363, column: 2, scope: !359)
!366 = distinct !DISubprogram(name: "z_impl_k_object_alloc_size", scope: !16, file: !16, line: 366, type: !367, scopeLine: 368, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!367 = !DISubroutineType(types: !368)
!368 = !{!126, !15, !333}
!369 = !DILocalVariable(name: "otype", arg: 1, scope: !366, file: !16, line: 366, type: !15)
!370 = !DILocation(line: 366, column: 63, scope: !366)
!371 = !DILocalVariable(name: "size", arg: 2, scope: !366, file: !16, line: 367, type: !333)
!372 = !DILocation(line: 367, column: 13, scope: !366)
!373 = !DILocation(line: 369, column: 9, scope: !366)
!374 = !DILocation(line: 370, column: 9, scope: !366)
!375 = !DILocation(line: 372, column: 2, scope: !366)
!376 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_expires_ticks", scope: !322, file: !322, line: 656, type: !377, scopeLine: 658, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!377 = !DISubroutineType(types: !378)
!378 = !{!379, !381}
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_ticks_t", file: !380, line: 46, baseType: !301)
!380 = !DIFile(filename: "include/zephyr/sys_clock.h", directory: "/home/sri/zephyrproject/zephyr")
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 32)
!382 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !235)
!383 = !DILocalVariable(name: "t", arg: 1, scope: !376, file: !322, line: 657, type: !381)
!384 = !DILocation(line: 657, column: 30, scope: !376)
!385 = !DILocation(line: 659, column: 28, scope: !376)
!386 = !DILocation(line: 659, column: 31, scope: !376)
!387 = !DILocation(line: 659, column: 36, scope: !376)
!388 = !DILocation(line: 659, column: 9, scope: !376)
!389 = !DILocation(line: 659, column: 2, scope: !376)
!390 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_remaining_ticks", scope: !322, file: !322, line: 671, type: !377, scopeLine: 673, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!391 = !DILocalVariable(name: "t", arg: 1, scope: !390, file: !322, line: 672, type: !381)
!392 = !DILocation(line: 672, column: 30, scope: !390)
!393 = !DILocation(line: 674, column: 30, scope: !390)
!394 = !DILocation(line: 674, column: 33, scope: !390)
!395 = !DILocation(line: 674, column: 38, scope: !390)
!396 = !DILocation(line: 674, column: 9, scope: !390)
!397 = !DILocation(line: 674, column: 2, scope: !390)
!398 = distinct !DISubprogram(name: "z_impl_k_timer_expires_ticks", scope: !322, file: !322, line: 1634, type: !399, scopeLine: 1636, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!399 = !DISubroutineType(types: !400)
!400 = !{!379, !401}
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 32)
!402 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !403)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_timer", file: !322, line: 1439, size: 448, elements: !404)
!404 = !{!405, !406, !407, !412, !413, !418, !419}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !403, file: !322, line: 1445, baseType: !291, size: 192)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !403, file: !322, line: 1448, baseType: !269, size: 64, offset: 192)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_fn", scope: !403, file: !322, line: 1451, baseType: !408, size: 32, offset: 256)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 32)
!409 = !DISubroutineType(types: !410)
!410 = !{null, !411}
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 32)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "stop_fn", scope: !403, file: !322, line: 1454, baseType: !408, size: 32, offset: 288)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !403, file: !322, line: 1457, baseType: !414, size: 64, offset: 320)
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_timeout_t", file: !380, line: 67, baseType: !415)
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !380, line: 65, size: 64, elements: !416)
!416 = !{!417}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "ticks", scope: !415, file: !380, line: 66, baseType: !379, size: 64)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !403, file: !322, line: 1460, baseType: !112, size: 32, offset: 384)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !403, file: !322, line: 1463, baseType: !126, size: 32, offset: 416)
!420 = !DILocalVariable(name: "timer", arg: 1, scope: !398, file: !322, line: 1635, type: !401)
!421 = !DILocation(line: 1635, column: 34, scope: !398)
!422 = !DILocation(line: 1637, column: 28, scope: !398)
!423 = !DILocation(line: 1637, column: 35, scope: !398)
!424 = !DILocation(line: 1637, column: 9, scope: !398)
!425 = !DILocation(line: 1637, column: 2, scope: !398)
!426 = distinct !DISubprogram(name: "z_impl_k_timer_remaining_ticks", scope: !322, file: !322, line: 1649, type: !399, scopeLine: 1651, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!427 = !DILocalVariable(name: "timer", arg: 1, scope: !426, file: !322, line: 1650, type: !401)
!428 = !DILocation(line: 1650, column: 34, scope: !426)
!429 = !DILocation(line: 1652, column: 30, scope: !426)
!430 = !DILocation(line: 1652, column: 37, scope: !426)
!431 = !DILocation(line: 1652, column: 9, scope: !426)
!432 = !DILocation(line: 1652, column: 2, scope: !426)
!433 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_set", scope: !322, file: !322, line: 1689, type: !434, scopeLine: 1691, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!434 = !DISubroutineType(types: !435)
!435 = !{null, !411, !126}
!436 = !DILocalVariable(name: "timer", arg: 1, scope: !433, file: !322, line: 1689, type: !411)
!437 = !DILocation(line: 1689, column: 65, scope: !433)
!438 = !DILocalVariable(name: "user_data", arg: 2, scope: !433, file: !322, line: 1690, type: !126)
!439 = !DILocation(line: 1690, column: 19, scope: !433)
!440 = !DILocation(line: 1692, column: 21, scope: !433)
!441 = !DILocation(line: 1692, column: 2, scope: !433)
!442 = !DILocation(line: 1692, column: 9, scope: !433)
!443 = !DILocation(line: 1692, column: 19, scope: !433)
!444 = !DILocation(line: 1693, column: 1, scope: !433)
!445 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_get", scope: !322, file: !322, line: 1704, type: !446, scopeLine: 1705, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!446 = !DISubroutineType(types: !447)
!447 = !{!126, !401}
!448 = !DILocalVariable(name: "timer", arg: 1, scope: !445, file: !322, line: 1704, type: !401)
!449 = !DILocation(line: 1704, column: 72, scope: !445)
!450 = !DILocation(line: 1706, column: 9, scope: !445)
!451 = !DILocation(line: 1706, column: 16, scope: !445)
!452 = !DILocation(line: 1706, column: 2, scope: !445)
!453 = distinct !DISubprogram(name: "z_impl_k_queue_is_empty", scope: !322, file: !322, line: 2071, type: !454, scopeLine: 2072, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!454 = !DISubroutineType(types: !455)
!455 = !{!127, !456}
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 32)
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_queue", file: !322, line: 1830, size: 128, elements: !458)
!458 = !{!459, !472, !473}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "data_q", scope: !457, file: !322, line: 1831, baseType: !460, size: 64)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sflist_t", file: !461, line: 60, baseType: !462)
!461 = !DIFile(filename: "include/zephyr/sys/sflist.h", directory: "/home/sri/zephyrproject/zephyr")
!462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sflist", file: !461, line: 53, size: 64, elements: !463)
!463 = !{!464, !471}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !462, file: !461, line: 54, baseType: !465, size: 32)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 32)
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sfnode_t", file: !461, line: 50, baseType: !467)
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sfnode", file: !461, line: 44, size: 32, elements: !468)
!468 = !{!469}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "next_and_flags", scope: !467, file: !461, line: 45, baseType: !470, size: 32)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "unative_t", file: !461, line: 40, baseType: !112)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !462, file: !461, line: 55, baseType: !465, size: 32, offset: 32)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !457, file: !322, line: 1832, baseType: !337, offset: 64)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !457, file: !322, line: 1833, baseType: !269, size: 64, offset: 64)
!474 = !DILocalVariable(name: "queue", arg: 1, scope: !453, file: !322, line: 2071, type: !456)
!475 = !DILocation(line: 2071, column: 59, scope: !453)
!476 = !DILocation(line: 2073, column: 35, scope: !453)
!477 = !DILocation(line: 2073, column: 42, scope: !453)
!478 = !DILocation(line: 2073, column: 14, scope: !453)
!479 = !DILocation(line: 2073, column: 9, scope: !453)
!480 = !DILocation(line: 2073, column: 2, scope: !453)
!481 = distinct !DISubprogram(name: "z_impl_k_sem_count_get", scope: !322, file: !322, line: 3209, type: !482, scopeLine: 3210, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!482 = !DISubroutineType(types: !483)
!483 = !{!114, !484}
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 32)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sem", file: !322, line: 3092, size: 128, elements: !486)
!486 = !{!487, !488, !489}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !485, file: !322, line: 3093, baseType: !269, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !485, file: !322, line: 3094, baseType: !114, size: 32, offset: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !485, file: !322, line: 3095, baseType: !114, size: 32, offset: 96)
!490 = !DILocalVariable(name: "sem", arg: 1, scope: !481, file: !322, line: 3209, type: !484)
!491 = !DILocation(line: 3209, column: 65, scope: !481)
!492 = !DILocation(line: 3211, column: 9, scope: !481)
!493 = !DILocation(line: 3211, column: 14, scope: !481)
!494 = !DILocation(line: 3211, column: 2, scope: !481)
!495 = distinct !DISubprogram(name: "z_impl_k_msgq_num_free_get", scope: !322, file: !322, line: 4649, type: !496, scopeLine: 4650, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!496 = !DISubroutineType(types: !497)
!497 = !{!112, !498}
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 32)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_msgq", file: !322, line: 4390, size: 320, elements: !500)
!500 = !{!501, !502, !503, !504, !505, !507, !508, !509, !510, !511}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !499, file: !322, line: 4392, baseType: !269, size: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !499, file: !322, line: 4394, baseType: !337, offset: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "msg_size", scope: !499, file: !322, line: 4396, baseType: !333, size: 32, offset: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !499, file: !322, line: 4398, baseType: !112, size: 32, offset: 96)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_start", scope: !499, file: !322, line: 4400, baseType: !506, size: 32, offset: 128)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 32)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_end", scope: !499, file: !322, line: 4402, baseType: !506, size: 32, offset: 160)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "read_ptr", scope: !499, file: !322, line: 4404, baseType: !506, size: 32, offset: 192)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "write_ptr", scope: !499, file: !322, line: 4406, baseType: !506, size: 32, offset: 224)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "used_msgs", scope: !499, file: !322, line: 4408, baseType: !112, size: 32, offset: 256)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !499, file: !322, line: 4413, baseType: !129, size: 8, offset: 288)
!512 = !DILocalVariable(name: "msgq", arg: 1, scope: !495, file: !322, line: 4649, type: !498)
!513 = !DILocation(line: 4649, column: 66, scope: !495)
!514 = !DILocation(line: 4651, column: 9, scope: !495)
!515 = !DILocation(line: 4651, column: 15, scope: !495)
!516 = !DILocation(line: 4651, column: 26, scope: !495)
!517 = !DILocation(line: 4651, column: 32, scope: !495)
!518 = !DILocation(line: 4651, column: 24, scope: !495)
!519 = !DILocation(line: 4651, column: 2, scope: !495)
!520 = distinct !DISubprogram(name: "z_impl_k_msgq_num_used_get", scope: !322, file: !322, line: 4665, type: !496, scopeLine: 4666, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!521 = !DILocalVariable(name: "msgq", arg: 1, scope: !520, file: !322, line: 4665, type: !498)
!522 = !DILocation(line: 4665, column: 66, scope: !520)
!523 = !DILocation(line: 4667, column: 9, scope: !520)
!524 = !DILocation(line: 4667, column: 15, scope: !520)
!525 = !DILocation(line: 4667, column: 2, scope: !520)
!526 = distinct !DISubprogram(name: "z_arm_fault", scope: !181, file: !181, line: 1092, type: !527, scopeLine: 1094, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !339)
!527 = !DISubroutineType(types: !528)
!528 = !{null, !112, !112, !112, !529}
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 32)
!530 = !DIDerivedType(tag: DW_TAG_typedef, name: "_callee_saved_t", file: !305, line: 37, baseType: !304)
!531 = !DILocalVariable(name: "msp", arg: 1, scope: !526, file: !181, line: 1092, type: !112)
!532 = !DILocation(line: 1092, column: 27, scope: !526)
!533 = !DILocalVariable(name: "psp", arg: 2, scope: !526, file: !181, line: 1092, type: !112)
!534 = !DILocation(line: 1092, column: 41, scope: !526)
!535 = !DILocalVariable(name: "exc_return", arg: 3, scope: !526, file: !181, line: 1092, type: !112)
!536 = !DILocation(line: 1092, column: 55, scope: !526)
!537 = !DILocalVariable(name: "callee_regs", arg: 4, scope: !526, file: !181, line: 1093, type: !529)
!538 = !DILocation(line: 1093, column: 19, scope: !526)
!539 = !DILocalVariable(name: "reason", scope: !526, file: !181, line: 1095, type: !112)
!540 = !DILocation(line: 1095, column: 11, scope: !526)
!541 = !DILocalVariable(name: "fault", scope: !526, file: !181, line: 1096, type: !127)
!542 = !DILocation(line: 1096, column: 6, scope: !526)
!543 = !DILocation(line: 1096, column: 59, scope: !526)
!544 = !DILocation(line: 1096, column: 64, scope: !526)
!545 = !DILocalVariable(name: "recoverable", scope: !526, file: !181, line: 1097, type: !546)
!546 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!547 = !DILocation(line: 1097, column: 8, scope: !526)
!548 = !DILocalVariable(name: "nested_exc", scope: !526, file: !181, line: 1097, type: !546)
!549 = !DILocation(line: 1097, column: 21, scope: !526)
!550 = !DILocalVariable(name: "esf", scope: !526, file: !181, line: 1098, type: !130)
!551 = !DILocation(line: 1098, column: 16, scope: !526)
!552 = !DILocalVariable(name: "esf_copy", scope: !526, file: !181, line: 1103, type: !131)
!553 = !DILocation(line: 1103, column: 15, scope: !526)
!554 = !DILocalVariable(name: "key", arg: 1, scope: !555, file: !556, line: 88, type: !114)
!555 = distinct !DISubprogram(name: "arch_irq_unlock", scope: !556, file: !556, line: 88, type: !557, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!556 = !DIFile(filename: "include/zephyr/arch/arm/asm_inline_gcc.h", directory: "/home/sri/zephyrproject/zephyr")
!557 = !DISubroutineType(types: !558)
!558 = !{null, !114}
!559 = !DILocation(line: 88, column: 80, scope: !555, inlinedAt: !560)
!560 = distinct !DILocation(line: 1106, column: 2, scope: !526)
!561 = !DILocation(line: 91, column: 6, scope: !562, inlinedAt: !560)
!562 = distinct !DILexicalBlock(scope: !555, file: !556, line: 91, column: 6)
!563 = !DILocation(line: 91, column: 10, scope: !562, inlinedAt: !560)
!564 = !DILocation(line: 91, column: 6, scope: !555, inlinedAt: !560)
!565 = !DILocation(line: 92, column: 3, scope: !566, inlinedAt: !560)
!566 = distinct !DILexicalBlock(scope: !562, file: !556, line: 91, column: 17)
!567 = !DILocation(line: 94, column: 2, scope: !555, inlinedAt: !560)
!568 = !{i64 67297}
!569 = !DILocation(line: 114, column: 1, scope: !555, inlinedAt: !560)
!570 = !DILocation(line: 1111, column: 17, scope: !526)
!571 = !DILocation(line: 1111, column: 22, scope: !526)
!572 = !DILocation(line: 1111, column: 27, scope: !526)
!573 = !DILocation(line: 1111, column: 9, scope: !526)
!574 = !DILocation(line: 1111, column: 7, scope: !526)
!575 = !DILocation(line: 1119, column: 24, scope: !526)
!576 = !DILocation(line: 1119, column: 29, scope: !526)
!577 = !DILocation(line: 1119, column: 11, scope: !526)
!578 = !DILocation(line: 1119, column: 9, scope: !526)
!579 = !DILocation(line: 1120, column: 6, scope: !580)
!580 = distinct !DILexicalBlock(scope: !526, file: !181, line: 1120, column: 6)
!581 = !DILocation(line: 1120, column: 6, scope: !526)
!582 = !DILocation(line: 1121, column: 3, scope: !583)
!583 = distinct !DILexicalBlock(scope: !580, file: !181, line: 1120, column: 19)
!584 = !DILocation(line: 1126, column: 20, scope: !526)
!585 = !DILocation(line: 1126, column: 2, scope: !526)
!586 = !DILocation(line: 1127, column: 9, scope: !526)
!587 = !DILocation(line: 1145, column: 6, scope: !588)
!588 = distinct !DILexicalBlock(scope: !526, file: !181, line: 1145, column: 6)
!589 = !DILocation(line: 1145, column: 6, scope: !526)
!590 = !DILocation(line: 1146, column: 17, scope: !591)
!591 = distinct !DILexicalBlock(scope: !592, file: !181, line: 1146, column: 7)
!592 = distinct !DILexicalBlock(scope: !588, file: !181, line: 1145, column: 18)
!593 = !DILocation(line: 1146, column: 23, scope: !591)
!594 = !DILocation(line: 1146, column: 28, scope: !591)
!595 = !DILocation(line: 1146, column: 42, scope: !591)
!596 = !DILocation(line: 1146, column: 7, scope: !592)
!597 = !DILocation(line: 1147, column: 13, scope: !598)
!598 = distinct !DILexicalBlock(scope: !591, file: !181, line: 1146, column: 48)
!599 = !DILocation(line: 1147, column: 19, scope: !598)
!600 = !DILocation(line: 1147, column: 24, scope: !598)
!601 = !DILocation(line: 1148, column: 3, scope: !598)
!602 = !DILocation(line: 1149, column: 2, scope: !592)
!603 = !DILocation(line: 1150, column: 12, scope: !604)
!604 = distinct !DILexicalBlock(scope: !588, file: !181, line: 1149, column: 9)
!605 = !DILocation(line: 1150, column: 18, scope: !604)
!606 = !DILocation(line: 1150, column: 23, scope: !604)
!607 = !DILocation(line: 1157, column: 20, scope: !526)
!608 = !DILocation(line: 1157, column: 2, scope: !526)
!609 = !DILocation(line: 1158, column: 1, scope: !526)
!610 = distinct !DISubprogram(name: "get_esf", scope: !181, file: !181, line: 950, type: !611, scopeLine: 952, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!611 = !DISubroutineType(types: !612)
!612 = !{!130, !112, !112, !112, !613}
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 32)
!614 = !DILocalVariable(name: "msp", arg: 1, scope: !610, file: !181, line: 950, type: !112)
!615 = !DILocation(line: 950, column: 46, scope: !610)
!616 = !DILocalVariable(name: "psp", arg: 2, scope: !610, file: !181, line: 950, type: !112)
!617 = !DILocation(line: 950, column: 60, scope: !610)
!618 = !DILocalVariable(name: "exc_return", arg: 3, scope: !610, file: !181, line: 950, type: !112)
!619 = !DILocation(line: 950, column: 74, scope: !610)
!620 = !DILocalVariable(name: "nested_exc", arg: 4, scope: !610, file: !181, line: 951, type: !613)
!621 = !DILocation(line: 951, column: 9, scope: !610)
!622 = !DILocalVariable(name: "alternative_state_exc", scope: !610, file: !181, line: 953, type: !546)
!623 = !DILocation(line: 953, column: 8, scope: !610)
!624 = !DILocalVariable(name: "ptr_esf", scope: !610, file: !181, line: 954, type: !130)
!625 = !DILocation(line: 954, column: 16, scope: !610)
!626 = !DILocation(line: 956, column: 3, scope: !610)
!627 = !DILocation(line: 956, column: 14, scope: !610)
!628 = !DILocation(line: 958, column: 7, scope: !629)
!629 = distinct !DILexicalBlock(scope: !610, file: !181, line: 958, column: 6)
!630 = !DILocation(line: 958, column: 18, scope: !629)
!631 = !DILocation(line: 958, column: 34, scope: !629)
!632 = !DILocation(line: 958, column: 6, scope: !610)
!633 = !DILocation(line: 961, column: 3, scope: !634)
!634 = distinct !DILexicalBlock(scope: !629, file: !181, line: 959, column: 18)
!635 = !DILocation(line: 1039, column: 7, scope: !636)
!636 = distinct !DILexicalBlock(scope: !610, file: !181, line: 1039, column: 6)
!637 = !DILocation(line: 1039, column: 18, scope: !636)
!638 = !DILocation(line: 1039, column: 34, scope: !636)
!639 = !DILocation(line: 1040, column: 6, scope: !636)
!640 = !DILocation(line: 1040, column: 17, scope: !636)
!641 = !DILocation(line: 1039, column: 6, scope: !610)
!642 = !DILocation(line: 1041, column: 3, scope: !643)
!643 = distinct !DILexicalBlock(scope: !636, file: !181, line: 1040, column: 35)
!644 = !DILocalVariable(name: "is_user_context", scope: !645, file: !181, line: 1041, type: !546)
!645 = distinct !DILexicalBlock(scope: !643, file: !181, line: 1041, column: 6)
!646 = !DILocation(line: 1041, column: 360, scope: !645)
!647 = !DILocation(line: 1041, column: 378, scope: !645)
!648 = !DILocalVariable(name: "_mode", scope: !645, file: !181, line: 1041, type: !127)
!649 = !DILocation(line: 1041, column: 538, scope: !645)
!650 = !DILocalVariable(name: "_src", scope: !645, file: !181, line: 1041, type: !126)
!651 = !DILocation(line: 1041, column: 551, scope: !645)
!652 = !DILocation(line: 1041, column: 607, scope: !645)
!653 = !DILocation(line: 1041, column: 633, scope: !645)
!654 = !DILocation(line: 1041, column: 674, scope: !655)
!655 = distinct !DILexicalBlock(scope: !645, file: !181, line: 1041, column: 636)
!656 = !DILocation(line: 1041, column: 638, scope: !655)
!657 = !DILocation(line: 1041, column: 833, scope: !655)
!658 = !DILocation(line: 1041, column: 859, scope: !655)
!659 = !DILocation(line: 1041, column: 878, scope: !645)
!660 = !DILocation(line: 1041, column: 968, scope: !645)
!661 = !DILocation(line: 1042, column: 3, scope: !643)
!662 = !DILocation(line: 1046, column: 7, scope: !663)
!663 = distinct !DILexicalBlock(scope: !610, file: !181, line: 1046, column: 6)
!664 = !DILocation(line: 1046, column: 6, scope: !610)
!665 = !DILocation(line: 1047, column: 7, scope: !666)
!666 = distinct !DILexicalBlock(scope: !667, file: !181, line: 1047, column: 7)
!667 = distinct !DILexicalBlock(scope: !663, file: !181, line: 1046, column: 30)
!668 = !DILocation(line: 1047, column: 18, scope: !666)
!669 = !DILocation(line: 1047, column: 7, scope: !667)
!670 = !DILocation(line: 1049, column: 30, scope: !671)
!671 = distinct !DILexicalBlock(scope: !666, file: !181, line: 1047, column: 34)
!672 = !DILocation(line: 1049, column: 14, scope: !671)
!673 = !DILocation(line: 1049, column: 12, scope: !671)
!674 = !DILocation(line: 1051, column: 3, scope: !671)
!675 = !DILocation(line: 1053, column: 30, scope: !676)
!676 = distinct !DILexicalBlock(scope: !666, file: !181, line: 1051, column: 10)
!677 = !DILocation(line: 1053, column: 14, scope: !676)
!678 = !DILocation(line: 1053, column: 12, scope: !676)
!679 = !DILocation(line: 1054, column: 5, scope: !676)
!680 = !DILocation(line: 1054, column: 16, scope: !676)
!681 = !DILocation(line: 1056, column: 2, scope: !667)
!682 = !DILocation(line: 1058, column: 9, scope: !610)
!683 = !DILocation(line: 1058, column: 2, scope: !610)
!684 = !DILocation(line: 1059, column: 1, scope: !610)
!685 = distinct !DISubprogram(name: "fault_handle", scope: !181, file: !181, line: 842, type: !686, scopeLine: 843, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!686 = !DISubroutineType(types: !687)
!687 = !{!112, !130, !127, !613}
!688 = !DILocalVariable(name: "esf", arg: 1, scope: !685, file: !181, line: 842, type: !130)
!689 = !DILocation(line: 842, column: 44, scope: !685)
!690 = !DILocalVariable(name: "fault", arg: 2, scope: !685, file: !181, line: 842, type: !127)
!691 = !DILocation(line: 842, column: 53, scope: !685)
!692 = !DILocalVariable(name: "recoverable", arg: 3, scope: !685, file: !181, line: 842, type: !613)
!693 = !DILocation(line: 842, column: 67, scope: !685)
!694 = !DILocalVariable(name: "reason", scope: !685, file: !181, line: 844, type: !112)
!695 = !DILocation(line: 844, column: 11, scope: !685)
!696 = !DILocation(line: 846, column: 3, scope: !685)
!697 = !DILocation(line: 846, column: 15, scope: !685)
!698 = !DILocation(line: 848, column: 10, scope: !685)
!699 = !DILocation(line: 848, column: 2, scope: !685)
!700 = !DILocation(line: 850, column: 23, scope: !701)
!701 = distinct !DILexicalBlock(scope: !685, file: !181, line: 848, column: 17)
!702 = !DILocation(line: 850, column: 28, scope: !701)
!703 = !DILocation(line: 850, column: 12, scope: !701)
!704 = !DILocation(line: 850, column: 10, scope: !701)
!705 = !DILocation(line: 851, column: 3, scope: !701)
!706 = !DILocation(line: 876, column: 22, scope: !701)
!707 = !DILocation(line: 876, column: 27, scope: !701)
!708 = !DILocation(line: 876, column: 3, scope: !701)
!709 = !DILocation(line: 877, column: 3, scope: !701)
!710 = !DILocation(line: 880, column: 8, scope: !711)
!711 = distinct !DILexicalBlock(scope: !685, file: !181, line: 880, column: 6)
!712 = !DILocation(line: 880, column: 7, scope: !711)
!713 = !DILocation(line: 880, column: 6, scope: !711)
!714 = !DILocation(line: 880, column: 21, scope: !711)
!715 = !DILocation(line: 880, column: 6, scope: !685)
!716 = !DILocation(line: 882, column: 14, scope: !717)
!717 = distinct !DILexicalBlock(scope: !711, file: !181, line: 880, column: 27)
!718 = !DILocation(line: 882, column: 19, scope: !717)
!719 = !DILocation(line: 882, column: 3, scope: !717)
!720 = !DILocation(line: 883, column: 2, scope: !717)
!721 = !DILocation(line: 885, column: 9, scope: !685)
!722 = !DILocation(line: 885, column: 2, scope: !685)
!723 = distinct !DISubprogram(name: "z_arm_fault_init", scope: !181, file: !181, line: 1167, type: !724, scopeLine: 1168, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !339)
!724 = !DISubroutineType(types: !725)
!725 = !{null}
!726 = !DILocation(line: 1196, column: 1, scope: !723)
!727 = distinct !DISubprogram(name: "sys_sflist_is_empty", scope: !461, file: !461, line: 335, type: !728, scopeLine: 335, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!728 = !DISubroutineType(types: !729)
!729 = !{!546, !730}
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 32)
!731 = !DILocalVariable(name: "list", arg: 1, scope: !727, file: !461, line: 335, type: !730)
!732 = !DILocation(line: 335, column: 55, scope: !727)
!733 = !DILocation(line: 335, column: 92, scope: !727)
!734 = !DILocation(line: 335, column: 71, scope: !727)
!735 = !DILocation(line: 335, column: 98, scope: !727)
!736 = !DILocation(line: 335, column: 63, scope: !727)
!737 = distinct !DISubprogram(name: "sys_sflist_peek_head", scope: !461, file: !461, line: 255, type: !738, scopeLine: 256, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!738 = !DISubroutineType(types: !739)
!739 = !{!465, !730}
!740 = !DILocalVariable(name: "list", arg: 1, scope: !737, file: !461, line: 255, type: !730)
!741 = !DILocation(line: 255, column: 64, scope: !737)
!742 = !DILocation(line: 257, column: 9, scope: !737)
!743 = !DILocation(line: 257, column: 15, scope: !737)
!744 = !DILocation(line: 257, column: 2, scope: !737)
!745 = distinct !DISubprogram(name: "k_is_user_context", scope: !746, file: !746, line: 115, type: !747, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!746 = !DIFile(filename: "include/zephyr/syscall.h", directory: "/home/sri/zephyrproject/zephyr")
!747 = !DISubroutineType(types: !748)
!748 = !{!546}
!749 = !DILocation(line: 120, column: 2, scope: !745)
!750 = distinct !DISubprogram(name: "z_log_msg_runtime_create", scope: !98, file: !98, line: 568, type: !751, scopeLine: 573, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!751 = !DISubroutineType(types: !752)
!752 = !{null, !129, !232, !129, !232, !753, !112, !217, null}
!753 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !754, line: 51, baseType: !114)
!754 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/string.h", directory: "")
!755 = !DILocalVariable(name: "domain_id", arg: 1, scope: !750, file: !98, line: 568, type: !129)
!756 = !DILocation(line: 568, column: 53, scope: !750)
!757 = !DILocalVariable(name: "source", arg: 2, scope: !750, file: !98, line: 569, type: !232)
!758 = !DILocation(line: 569, column: 23, scope: !750)
!759 = !DILocalVariable(name: "level", arg: 3, scope: !750, file: !98, line: 570, type: !129)
!760 = !DILocation(line: 570, column: 19, scope: !750)
!761 = !DILocalVariable(name: "data", arg: 4, scope: !750, file: !98, line: 570, type: !232)
!762 = !DILocation(line: 570, column: 38, scope: !750)
!763 = !DILocalVariable(name: "dlen", arg: 5, scope: !750, file: !98, line: 571, type: !753)
!764 = !DILocation(line: 571, column: 18, scope: !750)
!765 = !DILocalVariable(name: "package_flags", arg: 6, scope: !750, file: !98, line: 571, type: !112)
!766 = !DILocation(line: 571, column: 33, scope: !750)
!767 = !DILocalVariable(name: "fmt", arg: 7, scope: !750, file: !98, line: 572, type: !217)
!768 = !DILocation(line: 572, column: 23, scope: !750)
!769 = !DILocalVariable(name: "ap", scope: !750, file: !98, line: 574, type: !770)
!770 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !771, line: 22, baseType: !772)
!771 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/lib/clang/17/include/stdarg.h", directory: "")
!772 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, baseType: !773)
!773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 32, elements: !774)
!774 = !{!775}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "__ap", scope: !773, file: !3, line: 574, baseType: !126, size: 32)
!776 = !DILocation(line: 574, column: 10, scope: !750)
!777 = !DILocation(line: 576, column: 2, scope: !750)
!778 = !DILocation(line: 577, column: 28, scope: !750)
!779 = !DILocation(line: 577, column: 39, scope: !750)
!780 = !DILocation(line: 577, column: 47, scope: !750)
!781 = !DILocation(line: 578, column: 8, scope: !750)
!782 = !DILocation(line: 578, column: 14, scope: !750)
!783 = !DILocation(line: 578, column: 20, scope: !750)
!784 = !DILocation(line: 578, column: 35, scope: !750)
!785 = !DILocation(line: 577, column: 2, scope: !750)
!786 = !DILocation(line: 579, column: 2, scope: !750)
!787 = !DILocation(line: 580, column: 1, scope: !750)
!788 = distinct !DISubprogram(name: "z_log_msg_runtime_vcreate", scope: !789, file: !789, line: 53, type: !790, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!789 = !DIFile(filename: "zephyr/include/generated/syscalls/log_msg.h", directory: "/home/sri/zephyrproject/zephyr/build")
!790 = !DISubroutineType(types: !791)
!791 = !{null, !129, !232, !129, !232, !753, !112, !217, !770}
!792 = !DILocalVariable(name: "domain_id", arg: 1, scope: !788, file: !789, line: 53, type: !129)
!793 = !DILocation(line: 53, column: 54, scope: !788)
!794 = !DILocalVariable(name: "source", arg: 2, scope: !788, file: !789, line: 53, type: !232)
!795 = !DILocation(line: 53, column: 78, scope: !788)
!796 = !DILocalVariable(name: "level", arg: 3, scope: !788, file: !789, line: 53, type: !129)
!797 = !DILocation(line: 53, column: 94, scope: !788)
!798 = !DILocalVariable(name: "data", arg: 4, scope: !788, file: !789, line: 53, type: !232)
!799 = !DILocation(line: 53, column: 114, scope: !788)
!800 = !DILocalVariable(name: "dlen", arg: 5, scope: !788, file: !789, line: 53, type: !753)
!801 = !DILocation(line: 53, column: 127, scope: !788)
!802 = !DILocalVariable(name: "package_flags", arg: 6, scope: !788, file: !789, line: 53, type: !112)
!803 = !DILocation(line: 53, column: 142, scope: !788)
!804 = !DILocalVariable(name: "fmt", arg: 7, scope: !788, file: !789, line: 53, type: !217)
!805 = !DILocation(line: 53, column: 170, scope: !788)
!806 = !DILocalVariable(name: "ap", arg: 8, scope: !788, file: !789, line: 53, type: !770)
!807 = !DILocation(line: 53, column: 183, scope: !788)
!808 = !DILocation(line: 76, column: 2, scope: !788)
!809 = !DILocation(line: 76, column: 7, scope: !810)
!810 = distinct !DILexicalBlock(scope: !788, file: !789, line: 76, column: 5)
!811 = !{i64 338577}
!812 = !DILocation(line: 76, column: 47, scope: !810)
!813 = !DILocation(line: 77, column: 35, scope: !788)
!814 = !DILocation(line: 77, column: 46, scope: !788)
!815 = !DILocation(line: 77, column: 54, scope: !788)
!816 = !DILocation(line: 77, column: 61, scope: !788)
!817 = !DILocation(line: 77, column: 67, scope: !788)
!818 = !DILocation(line: 77, column: 73, scope: !788)
!819 = !DILocation(line: 77, column: 88, scope: !788)
!820 = !DILocation(line: 77, column: 2, scope: !788)
!821 = !DILocation(line: 78, column: 1, scope: !788)
!822 = distinct !DISubprogram(name: "hard_fault", scope: !181, file: !181, line: 765, type: !823, scopeLine: 766, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!823 = !DISubroutineType(types: !824)
!824 = !{!112, !130, !613}
!825 = !DILocalVariable(name: "esf", arg: 1, scope: !822, file: !181, line: 765, type: !130)
!826 = !DILocation(line: 765, column: 42, scope: !822)
!827 = !DILocalVariable(name: "recoverable", arg: 2, scope: !822, file: !181, line: 765, type: !613)
!828 = !DILocation(line: 765, column: 54, scope: !822)
!829 = !DILocalVariable(name: "reason", scope: !822, file: !181, line: 767, type: !112)
!830 = !DILocation(line: 767, column: 11, scope: !822)
!831 = !DILocation(line: 769, column: 2, scope: !822)
!832 = !DILocalVariable(name: "is_user_context", scope: !833, file: !181, line: 769, type: !546)
!833 = distinct !DILexicalBlock(scope: !822, file: !181, line: 769, column: 5)
!834 = !DILocation(line: 769, column: 339, scope: !833)
!835 = !DILocation(line: 769, column: 357, scope: !833)
!836 = !DILocalVariable(name: "_mode", scope: !833, file: !181, line: 769, type: !127)
!837 = !DILocation(line: 769, column: 517, scope: !833)
!838 = !DILocalVariable(name: "_src", scope: !833, file: !181, line: 769, type: !126)
!839 = !DILocation(line: 769, column: 530, scope: !833)
!840 = !DILocation(line: 769, column: 586, scope: !833)
!841 = !DILocation(line: 769, column: 612, scope: !833)
!842 = !DILocation(line: 769, column: 653, scope: !843)
!843 = distinct !DILexicalBlock(scope: !833, file: !181, line: 769, column: 615)
!844 = !DILocation(line: 769, column: 617, scope: !843)
!845 = !DILocation(line: 769, column: 792, scope: !843)
!846 = !DILocation(line: 769, column: 818, scope: !843)
!847 = !DILocation(line: 769, column: 837, scope: !833)
!848 = !DILocation(line: 769, column: 907, scope: !833)
!849 = !DILocation(line: 781, column: 35, scope: !850)
!850 = distinct !DILexicalBlock(scope: !822, file: !181, line: 781, column: 6)
!851 = !DILocation(line: 781, column: 40, scope: !850)
!852 = !DILocation(line: 781, column: 46, scope: !850)
!853 = !DILocation(line: 781, column: 6, scope: !850)
!854 = !DILocation(line: 781, column: 50, scope: !850)
!855 = !DILocation(line: 781, column: 78, scope: !850)
!856 = !DILocation(line: 781, column: 53, scope: !850)
!857 = !DILocation(line: 781, column: 6, scope: !822)
!858 = !DILocation(line: 782, column: 3, scope: !859)
!859 = distinct !DILexicalBlock(scope: !850, file: !181, line: 781, column: 84)
!860 = !DILocalVariable(name: "is_user_context", scope: !861, file: !181, line: 782, type: !546)
!861 = distinct !DILexicalBlock(scope: !859, file: !181, line: 782, column: 6)
!862 = !DILocation(line: 782, column: 361, scope: !861)
!863 = !DILocation(line: 782, column: 379, scope: !861)
!864 = !DILocalVariable(name: "_mode", scope: !861, file: !181, line: 782, type: !127)
!865 = !DILocation(line: 782, column: 539, scope: !861)
!866 = !DILocalVariable(name: "_src", scope: !861, file: !181, line: 782, type: !126)
!867 = !DILocation(line: 782, column: 552, scope: !861)
!868 = !DILocation(line: 782, column: 608, scope: !861)
!869 = !DILocation(line: 782, column: 634, scope: !861)
!870 = !DILocation(line: 782, column: 675, scope: !871)
!871 = distinct !DILexicalBlock(scope: !861, file: !181, line: 782, column: 637)
!872 = !DILocation(line: 782, column: 813, scope: !871)
!873 = !DILocation(line: 782, column: 818, scope: !871)
!874 = !DILocation(line: 782, column: 824, scope: !871)
!875 = !DILocation(line: 782, column: 639, scope: !871)
!876 = !DILocation(line: 782, column: 835, scope: !871)
!877 = !DILocation(line: 782, column: 861, scope: !871)
!878 = !DILocation(line: 782, column: 880, scope: !861)
!879 = !DILocation(line: 782, column: 971, scope: !861)
!880 = !DILocation(line: 783, column: 12, scope: !859)
!881 = !DILocation(line: 783, column: 17, scope: !859)
!882 = !DILocation(line: 783, column: 23, scope: !859)
!883 = !DILocation(line: 783, column: 10, scope: !859)
!884 = !DILocation(line: 784, column: 2, scope: !859)
!885 = !DILocation(line: 786, column: 42, scope: !822)
!886 = !DILocation(line: 786, column: 17, scope: !822)
!887 = !DILocation(line: 786, column: 3, scope: !822)
!888 = !DILocation(line: 786, column: 15, scope: !822)
!889 = !DILocation(line: 822, column: 9, scope: !822)
!890 = !DILocation(line: 822, column: 2, scope: !822)
!891 = distinct !DISubprogram(name: "reserved_exception", scope: !181, file: !181, line: 832, type: !892, scopeLine: 833, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!892 = !DISubroutineType(types: !893)
!893 = !{null, !894, !127}
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 32)
!895 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !131)
!896 = !DILocalVariable(name: "esf", arg: 1, scope: !891, file: !181, line: 832, type: !894)
!897 = !DILocation(line: 832, column: 52, scope: !891)
!898 = !DILocalVariable(name: "fault", arg: 2, scope: !891, file: !181, line: 832, type: !127)
!899 = !DILocation(line: 832, column: 61, scope: !891)
!900 = !DILocation(line: 834, column: 9, scope: !891)
!901 = !DILocation(line: 836, column: 2, scope: !891)
!902 = !DILocalVariable(name: "is_user_context", scope: !903, file: !181, line: 836, type: !546)
!903 = distinct !DILexicalBlock(scope: !891, file: !181, line: 836, column: 5)
!904 = !DILocation(line: 836, column: 413, scope: !903)
!905 = !DILocation(line: 836, column: 431, scope: !903)
!906 = !DILocalVariable(name: "_mode", scope: !903, file: !181, line: 836, type: !127)
!907 = !DILocation(line: 836, column: 591, scope: !903)
!908 = !DILocalVariable(name: "_src", scope: !903, file: !181, line: 836, type: !126)
!909 = !DILocation(line: 836, column: 604, scope: !903)
!910 = !DILocation(line: 836, column: 660, scope: !903)
!911 = !DILocation(line: 836, column: 686, scope: !903)
!912 = !DILocation(line: 836, column: 727, scope: !913)
!913 = distinct !DILexicalBlock(scope: !903, file: !181, line: 836, column: 689)
!914 = !DILocation(line: 836, column: 855, scope: !913)
!915 = !DILocation(line: 836, column: 861, scope: !913)
!916 = !DILocation(line: 836, column: 921, scope: !913)
!917 = !DILocation(line: 836, column: 927, scope: !913)
!918 = !DILocation(line: 836, column: 691, scope: !913)
!919 = !DILocation(line: 836, column: 940, scope: !913)
!920 = !DILocation(line: 836, column: 966, scope: !913)
!921 = !DILocation(line: 836, column: 985, scope: !903)
!922 = !DILocation(line: 836, column: 1129, scope: !903)
!923 = !DILocation(line: 839, column: 1, scope: !891)
!924 = distinct !DISubprogram(name: "fault_show", scope: !181, file: !181, line: 168, type: !892, scopeLine: 169, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!925 = !DILocalVariable(name: "esf", arg: 1, scope: !924, file: !181, line: 168, type: !894)
!926 = !DILocation(line: 168, column: 44, scope: !924)
!927 = !DILocalVariable(name: "fault", arg: 2, scope: !924, file: !181, line: 168, type: !127)
!928 = !DILocation(line: 168, column: 53, scope: !924)
!929 = !DILocation(line: 170, column: 8, scope: !924)
!930 = !DILocation(line: 171, column: 8, scope: !924)
!931 = !DILocation(line: 172, column: 1, scope: !924)
!932 = distinct !DISubprogram(name: "z_arm_is_pc_valid", scope: !181, file: !181, line: 734, type: !933, scopeLine: 735, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!933 = !DISubroutineType(types: !934)
!934 = !{!546, !174}
!935 = !DILocalVariable(name: "pc", arg: 1, scope: !932, file: !181, line: 734, type: !174)
!936 = !DILocation(line: 734, column: 49, scope: !932)
!937 = !DILocation(line: 737, column: 44, scope: !938)
!938 = distinct !DILexicalBlock(scope: !932, file: !181, line: 737, column: 6)
!939 = !DILocation(line: 737, column: 41, scope: !938)
!940 = !DILocation(line: 737, column: 48, scope: !938)
!941 = !DILocation(line: 737, column: 52, scope: !938)
!942 = !DILocation(line: 737, column: 55, scope: !938)
!943 = !DILocation(line: 737, column: 6, scope: !932)
!944 = !DILocation(line: 738, column: 3, scope: !945)
!945 = distinct !DILexicalBlock(scope: !938, file: !181, line: 737, column: 91)
!946 = !DILocation(line: 742, column: 40, scope: !947)
!947 = distinct !DILexicalBlock(scope: !932, file: !181, line: 742, column: 6)
!948 = !DILocation(line: 742, column: 37, scope: !947)
!949 = !DILocation(line: 742, column: 44, scope: !947)
!950 = !DILocation(line: 742, column: 48, scope: !947)
!951 = !DILocation(line: 742, column: 51, scope: !947)
!952 = !DILocation(line: 742, column: 6, scope: !932)
!953 = !DILocation(line: 743, column: 3, scope: !954)
!954 = distinct !DILexicalBlock(scope: !947, file: !181, line: 742, column: 83)
!955 = !DILocation(line: 753, column: 2, scope: !932)
!956 = !DILocation(line: 754, column: 1, scope: !932)
!957 = distinct !DISubprogram(name: "z_arm_is_synchronous_svc", scope: !181, file: !181, line: 690, type: !958, scopeLine: 691, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!958 = !DISubroutineType(types: !959)
!959 = !{!546, !130}
!960 = !DILocalVariable(name: "esf", arg: 1, scope: !957, file: !181, line: 690, type: !130)
!961 = !DILocation(line: 690, column: 60, scope: !957)
!962 = !DILocalVariable(name: "ret_addr", scope: !957, file: !181, line: 692, type: !175)
!963 = !DILocation(line: 692, column: 12, scope: !957)
!964 = !DILocation(line: 692, column: 35, scope: !957)
!965 = !DILocation(line: 692, column: 40, scope: !957)
!966 = !DILocation(line: 692, column: 46, scope: !957)
!967 = !DILocation(line: 692, column: 23, scope: !957)
!968 = !DILocalVariable(name: "fault_insn", scope: !957, file: !181, line: 712, type: !176)
!969 = !DILocation(line: 712, column: 11, scope: !957)
!970 = !DILocation(line: 712, column: 26, scope: !957)
!971 = !DILocation(line: 712, column: 35, scope: !957)
!972 = !DILocation(line: 712, column: 24, scope: !957)
!973 = !DILocation(line: 725, column: 8, scope: !974)
!974 = distinct !DILexicalBlock(scope: !957, file: !181, line: 725, column: 6)
!975 = !DILocation(line: 725, column: 19, scope: !974)
!976 = !DILocation(line: 725, column: 29, scope: !974)
!977 = !DILocation(line: 725, column: 40, scope: !974)
!978 = !DILocation(line: 726, column: 5, scope: !974)
!979 = !DILocation(line: 726, column: 16, scope: !974)
!980 = !DILocation(line: 726, column: 26, scope: !974)
!981 = !DILocation(line: 725, column: 6, scope: !957)
!982 = !DILocation(line: 727, column: 3, scope: !983)
!983 = distinct !DILexicalBlock(scope: !974, file: !181, line: 726, column: 33)
!984 = !DILocation(line: 730, column: 2, scope: !957)
!985 = !DILocation(line: 731, column: 1, scope: !957)
!986 = distinct !DISubprogram(name: "memory_fault_recoverable", scope: !181, file: !181, line: 188, type: !987, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !339)
!987 = !DISubroutineType(types: !988)
!988 = !{!546, !130, !546}
!989 = !DILocalVariable(name: "esf", arg: 1, scope: !986, file: !181, line: 188, type: !130)
!990 = !DILocation(line: 188, column: 53, scope: !986)
!991 = !DILocalVariable(name: "synchronous", arg: 2, scope: !986, file: !181, line: 188, type: !546)
!992 = !DILocation(line: 188, column: 64, scope: !986)
!993 = !DILocation(line: 211, column: 2, scope: !986)
