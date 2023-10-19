; ModuleID = '../bc_files/fault.bc'
source_filename = "/home/sri/zephyrproject/zephyr/arch/arm/core/cortex_m/fault.c"
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

@__text_region_start = external dso_local global [0 x i8], align 1
@__text_region_end = external dso_local global [0 x i8], align 1
@__ramfunc_start = external dso_local global [0 x i8], align 1
@__ramfunc_end = external dso_local global [0 x i8], align 1

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_k_object_access_grant(ptr noundef %0, ptr noundef %1) #0 !dbg !175 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !293, metadata !DIExpression()), !dbg !295
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !294, metadata !DIExpression()), !dbg !296
  %5 = load ptr, ptr %3, align 4, !dbg !297
  %6 = load ptr, ptr %4, align 4, !dbg !298
  ret void, !dbg !299
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_k_object_release(ptr noundef %0) #0 !dbg !300 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !304, metadata !DIExpression()), !dbg !305
  %3 = load ptr, ptr %2, align 4, !dbg !306
  ret void, !dbg !307
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_impl_k_object_alloc(i8 noundef zeroext %0) #0 !dbg !308 {
  %2 = alloca i8, align 1
  store i8 %0, ptr %2, align 1
  call void @llvm.dbg.declare(metadata ptr %2, metadata !312, metadata !DIExpression()), !dbg !313
  %3 = load i8, ptr %2, align 1, !dbg !314
  ret ptr null, !dbg !315
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_impl_k_object_alloc_size(i8 noundef zeroext %0, i32 noundef %1) #0 !dbg !316 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8 %0, ptr %3, align 1
  call void @llvm.dbg.declare(metadata ptr %3, metadata !320, metadata !DIExpression()), !dbg !322
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !321, metadata !DIExpression()), !dbg !323
  %5 = load i8, ptr %3, align 1, !dbg !324
  %6 = load i32, ptr %4, align 4, !dbg !325
  ret ptr null, !dbg !326
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_thread_timeout_expires_ticks(ptr noundef %0) #0 !dbg !327 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !335, metadata !DIExpression()), !dbg !336
  %3 = load ptr, ptr %2, align 4, !dbg !337
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !338
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !339
  %6 = call i64 @z_timeout_expires(ptr noundef %5) #6, !dbg !340
  ret i64 %6, !dbg !341
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_thread_timeout_remaining_ticks(ptr noundef %0) #0 !dbg !342 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !344, metadata !DIExpression()), !dbg !345
  %3 = load ptr, ptr %2, align 4, !dbg !346
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !347
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !348
  %6 = call i64 @z_timeout_remaining(ptr noundef %5) #6, !dbg !349
  ret i64 %6, !dbg !350
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_timer_expires_ticks(ptr noundef %0) #0 !dbg !351 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !374, metadata !DIExpression()), !dbg !375
  %3 = load ptr, ptr %2, align 4, !dbg !376
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !377
  %5 = call i64 @z_timeout_expires(ptr noundef %4) #6, !dbg !378
  ret i64 %5, !dbg !379
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_timer_remaining_ticks(ptr noundef %0) #0 !dbg !380 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !382, metadata !DIExpression()), !dbg !383
  %3 = load ptr, ptr %2, align 4, !dbg !384
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !385
  %5 = call i64 @z_timeout_remaining(ptr noundef %4) #6, !dbg !386
  ret i64 %5, !dbg !387
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_k_timer_user_data_set(ptr noundef %0, ptr noundef %1) #0 !dbg !388 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !392, metadata !DIExpression()), !dbg !394
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !393, metadata !DIExpression()), !dbg !395
  %5 = load ptr, ptr %4, align 4, !dbg !396
  %6 = load ptr, ptr %3, align 4, !dbg !397
  %7 = getelementptr inbounds %struct.k_timer, ptr %6, i32 0, i32 6, !dbg !398
  store ptr %5, ptr %7, align 4, !dbg !399
  ret void, !dbg !400
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_impl_k_timer_user_data_get(ptr noundef %0) #0 !dbg !401 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !405, metadata !DIExpression()), !dbg !406
  %3 = load ptr, ptr %2, align 4, !dbg !407
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 6, !dbg !408
  %5 = load ptr, ptr %4, align 4, !dbg !408
  ret ptr %5, !dbg !409
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_queue_is_empty(ptr noundef %0) #0 !dbg !410 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !432, metadata !DIExpression()), !dbg !433
  %3 = load ptr, ptr %2, align 4, !dbg !434
  %4 = getelementptr inbounds %struct.k_queue, ptr %3, i32 0, i32 0, !dbg !435
  %5 = call zeroext i1 @sys_sflist_is_empty(ptr noundef %4) #6, !dbg !436
  %6 = zext i1 %5 to i32, !dbg !437
  ret i32 %6, !dbg !438
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_sem_count_get(ptr noundef %0) #0 !dbg !439 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !449, metadata !DIExpression()), !dbg !450
  %3 = load ptr, ptr %2, align 4, !dbg !451
  %4 = getelementptr inbounds %struct.k_sem, ptr %3, i32 0, i32 1, !dbg !452
  %5 = load i32, ptr %4, align 4, !dbg !452
  ret i32 %5, !dbg !453
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_msgq_num_free_get(ptr noundef %0) #0 !dbg !454 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !473, metadata !DIExpression()), !dbg !474
  %3 = load ptr, ptr %2, align 4, !dbg !475
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 3, !dbg !476
  %5 = load i32, ptr %4, align 4, !dbg !476
  %6 = load ptr, ptr %2, align 4, !dbg !477
  %7 = getelementptr inbounds %struct.k_msgq, ptr %6, i32 0, i32 8, !dbg !478
  %8 = load i32, ptr %7, align 4, !dbg !478
  %9 = sub i32 %5, %8, !dbg !479
  ret i32 %9, !dbg !480
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_msgq_num_used_get(ptr noundef %0) #0 !dbg !481 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !483, metadata !DIExpression()), !dbg !484
  %3 = load ptr, ptr %2, align 4, !dbg !485
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 8, !dbg !486
  %5 = load i32, ptr %4, align 4, !dbg !486
  ret i32 %5, !dbg !487
}

; Function Attrs: nounwind optsize
define hidden void @z_arm_fault(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #1 !dbg !488 {
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
  %16 = alloca i32, align 4
  store i32 %0, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !495, metadata !DIExpression()), !dbg !506
  store i32 %1, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !496, metadata !DIExpression()), !dbg !507
  store i32 %2, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !497, metadata !DIExpression()), !dbg !508
  store ptr %3, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !498, metadata !DIExpression()), !dbg !509
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #7, !dbg !510
  call void @llvm.dbg.declare(metadata ptr %10, metadata !499, metadata !DIExpression()), !dbg !511
  store i32 0, ptr %10, align 4, !dbg !511
  call void @llvm.lifetime.start.p0(i64 4, ptr %11) #7, !dbg !512
  call void @llvm.dbg.declare(metadata ptr %11, metadata !500, metadata !DIExpression()), !dbg !513
  %17 = load volatile i32, ptr getelementptr inbounds (%struct.SCB_Type, ptr inttoptr (i32 -536810240 to ptr), i32 0, i32 1), align 4, !dbg !514
  %18 = and i32 %17, 511, !dbg !515
  store i32 %18, ptr %11, align 4, !dbg !513
  call void @llvm.lifetime.start.p0(i64 1, ptr %12) #7, !dbg !516
  call void @llvm.dbg.declare(metadata ptr %12, metadata !501, metadata !DIExpression()), !dbg !517
  call void @llvm.lifetime.start.p0(i64 1, ptr %13) #7, !dbg !516
  call void @llvm.dbg.declare(metadata ptr %13, metadata !503, metadata !DIExpression()), !dbg !518
  call void @llvm.lifetime.start.p0(i64 4, ptr %14) #7, !dbg !519
  call void @llvm.dbg.declare(metadata ptr %14, metadata !504, metadata !DIExpression()), !dbg !520
  call void @llvm.lifetime.start.p0(i64 32, ptr %15) #7, !dbg !521
  call void @llvm.dbg.declare(metadata ptr %15, metadata !505, metadata !DIExpression()), !dbg !522
  store i32 0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !523, metadata !DIExpression()), !dbg !529
  %19 = load i32, ptr %5, align 4, !dbg !531
  %20 = icmp ne i32 %19, 0, !dbg !533
  br i1 %20, label %21, label %22, !dbg !534

21:                                               ; preds = %4
  br label %arch_irq_unlock.exit, !dbg !535

22:                                               ; preds = %4
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #7, !dbg !537, !srcloc !538
  br label %arch_irq_unlock.exit, !dbg !539

arch_irq_unlock.exit:                             ; preds = %21, %22
  %23 = load i32, ptr %6, align 4, !dbg !540
  %24 = load i32, ptr %7, align 4, !dbg !541
  %25 = load i32, ptr %8, align 4, !dbg !542
  %26 = call ptr @get_esf(i32 noundef %23, i32 noundef %24, i32 noundef %25, ptr noundef %13) #6, !dbg !543
  store ptr %26, ptr %14, align 4, !dbg !544
  %27 = load ptr, ptr %14, align 4, !dbg !545
  %28 = load i32, ptr %11, align 4, !dbg !546
  %29 = call i32 @fault_handle(ptr noundef %27, i32 noundef %28, ptr noundef %12) #6, !dbg !547
  store i32 %29, ptr %10, align 4, !dbg !548
  %30 = load i8, ptr %12, align 1, !dbg !549, !range !551, !noundef !286
  %31 = trunc i8 %30 to i1, !dbg !549
  br i1 %31, label %32, label %33, !dbg !552

32:                                               ; preds = %arch_irq_unlock.exit
  store i32 1, ptr %16, align 4
  br label %57, !dbg !553

33:                                               ; preds = %arch_irq_unlock.exit
  %34 = load ptr, ptr %14, align 4, !dbg !555
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %15, ptr align 4 %34, i32 32, i1 false), !dbg !556
  %35 = load ptr, ptr %9, align 4, !dbg !557
  %36 = load i8, ptr %13, align 1, !dbg !558, !range !551, !noundef !286
  %37 = trunc i8 %36 to i1, !dbg !558
  br i1 %37, label %38, label %50, !dbg !560

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.__esf, ptr %15, i32 0, i32 0, !dbg !561
  %40 = getelementptr inbounds %struct.__basic_sf, ptr %39, i32 0, i32 7, !dbg !564
  %41 = load i32, ptr %40, align 4, !dbg !564
  %42 = and i32 %41, 511, !dbg !565
  %43 = icmp eq i32 %42, 0, !dbg !566
  br i1 %43, label %44, label %49, !dbg !567

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.__esf, ptr %15, i32 0, i32 0, !dbg !568
  %46 = getelementptr inbounds %struct.__basic_sf, ptr %45, i32 0, i32 7, !dbg !570
  %47 = load i32, ptr %46, align 4, !dbg !571
  %48 = or i32 %47, 511, !dbg !571
  store i32 %48, ptr %46, align 4, !dbg !571
  br label %49, !dbg !572

49:                                               ; preds = %44, %38
  br label %55, !dbg !573

50:                                               ; preds = %33
  %51 = getelementptr inbounds %struct.__esf, ptr %15, i32 0, i32 0, !dbg !574
  %52 = getelementptr inbounds %struct.__basic_sf, ptr %51, i32 0, i32 7, !dbg !576
  %53 = load i32, ptr %52, align 4, !dbg !577
  %54 = and i32 %53, -512, !dbg !577
  store i32 %54, ptr %52, align 4, !dbg !577
  br label %55

55:                                               ; preds = %50, %49
  %56 = load i32, ptr %10, align 4, !dbg !578
  call void @z_arm_fatal_error(i32 noundef %56, ptr noundef %15) #6, !dbg !579
  store i32 0, ptr %16, align 4, !dbg !580
  br label %57, !dbg !580

57:                                               ; preds = %55, %32
  call void @llvm.lifetime.end.p0(i64 32, ptr %15) #7, !dbg !580
  call void @llvm.lifetime.end.p0(i64 4, ptr %14) #7, !dbg !580
  call void @llvm.lifetime.end.p0(i64 1, ptr %13) #7, !dbg !580
  call void @llvm.lifetime.end.p0(i64 1, ptr %12) #7, !dbg !580
  call void @llvm.lifetime.end.p0(i64 4, ptr %11) #7, !dbg !580
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #7, !dbg !580
  %58 = load i32, ptr %16, align 4
  switch i32 %58, label %60 [
    i32 0, label %59
    i32 1, label %59
  ]

59:                                               ; preds = %57, %57
  ret void, !dbg !580

60:                                               ; preds = %57
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: inlinehint nounwind optsize
define internal ptr @get_esf(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #0 !dbg !581 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 4
  %10 = alloca i8, align 1
  %11 = alloca ptr, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  %15 = alloca ptr, align 4
  store i32 %0, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !586, metadata !DIExpression()), !dbg !592
  store i32 %1, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !587, metadata !DIExpression()), !dbg !593
  store i32 %2, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !588, metadata !DIExpression()), !dbg !594
  store ptr %3, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !589, metadata !DIExpression()), !dbg !595
  call void @llvm.lifetime.start.p0(i64 1, ptr %10) #7, !dbg !596
  call void @llvm.dbg.declare(metadata ptr %10, metadata !590, metadata !DIExpression()), !dbg !597
  store i8 0, ptr %10, align 1, !dbg !597
  call void @llvm.lifetime.start.p0(i64 4, ptr %11) #7, !dbg !598
  call void @llvm.dbg.declare(metadata ptr %11, metadata !591, metadata !DIExpression()), !dbg !599
  store ptr null, ptr %11, align 4, !dbg !599
  %16 = load ptr, ptr %9, align 4, !dbg !600
  store i8 0, ptr %16, align 1, !dbg !601
  %17 = load i32, ptr %8, align 4, !dbg !602
  %18 = and i32 %17, -16777216, !dbg !604
  %19 = icmp ne i32 %18, -16777216, !dbg !605
  br i1 %19, label %20, label %21, !dbg !606

20:                                               ; preds = %4
  store ptr null, ptr %5, align 4, !dbg !607
  store i32 1, ptr %12, align 4
  br label %50, !dbg !607

21:                                               ; preds = %4
  %22 = load i32, ptr %8, align 4, !dbg !609
  %23 = and i32 %22, 8, !dbg !611
  %24 = icmp ne i32 %23, 0, !dbg !611
  br i1 %24, label %25, label %33, !dbg !612

25:                                               ; preds = %21
  %26 = load i32, ptr %8, align 4, !dbg !613
  %27 = and i32 %26, 4, !dbg !614
  %28 = icmp ne i32 %27, 0, !dbg !614
  br i1 %28, label %33, label %29, !dbg !615

29:                                               ; preds = %25
  br label %30, !dbg !616

30:                                               ; preds = %29
  br label %32, !dbg !618

31:                                               ; No predecessors!
  br label %32, !dbg !622

32:                                               ; preds = %31, %30
  store ptr null, ptr %5, align 4, !dbg !623
  store i32 1, ptr %12, align 4
  br label %50, !dbg !623

33:                                               ; preds = %25, %21
  %34 = load i8, ptr %10, align 1, !dbg !624, !range !551, !noundef !286
  %35 = trunc i8 %34 to i1, !dbg !624
  br i1 %35, label %48, label %36, !dbg !626

36:                                               ; preds = %33
  %37 = load i32, ptr %8, align 4, !dbg !627
  %38 = and i32 %37, 8, !dbg !630
  %39 = icmp ne i32 %38, 0, !dbg !630
  br i1 %39, label %40, label %43, !dbg !631

40:                                               ; preds = %36
  %41 = load i32, ptr %7, align 4, !dbg !632
  %42 = inttoptr i32 %41 to ptr, !dbg !634
  store ptr %42, ptr %11, align 4, !dbg !635
  br label %47, !dbg !636

43:                                               ; preds = %36
  %44 = load i32, ptr %6, align 4, !dbg !637
  %45 = inttoptr i32 %44 to ptr, !dbg !639
  store ptr %45, ptr %11, align 4, !dbg !640
  %46 = load ptr, ptr %9, align 4, !dbg !641
  store i8 1, ptr %46, align 1, !dbg !642
  br label %47

47:                                               ; preds = %43, %40
  br label %48, !dbg !643

48:                                               ; preds = %47, %33
  %49 = load ptr, ptr %11, align 4, !dbg !644
  store ptr %49, ptr %5, align 4, !dbg !645
  store i32 1, ptr %12, align 4
  br label %50, !dbg !645

50:                                               ; preds = %48, %32, %20
  call void @llvm.lifetime.end.p0(i64 4, ptr %11) #7, !dbg !646
  call void @llvm.lifetime.end.p0(i64 1, ptr %10) #7, !dbg !646
  %51 = load ptr, ptr %5, align 4, !dbg !646
  ret ptr %51, !dbg !646
}

; Function Attrs: nounwind optsize
define internal i32 @fault_handle(ptr noundef %0, i32 noundef %1, ptr noundef %2) #1 !dbg !647 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !651, metadata !DIExpression()), !dbg !655
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !652, metadata !DIExpression()), !dbg !656
  store ptr %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !653, metadata !DIExpression()), !dbg !657
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #7, !dbg !658
  call void @llvm.dbg.declare(metadata ptr %7, metadata !654, metadata !DIExpression()), !dbg !659
  store i32 0, ptr %7, align 4, !dbg !659
  %8 = load ptr, ptr %6, align 4, !dbg !660
  store i8 0, ptr %8, align 1, !dbg !661
  %9 = load i32, ptr %5, align 4, !dbg !662
  switch i32 %9, label %14 [
    i32 3, label %10
  ], !dbg !663

10:                                               ; preds = %3
  %11 = load ptr, ptr %4, align 4, !dbg !664
  %12 = load ptr, ptr %6, align 4, !dbg !666
  %13 = call i32 @hard_fault(ptr noundef %11, ptr noundef %12) #6, !dbg !667
  store i32 %13, ptr %7, align 4, !dbg !668
  br label %17, !dbg !669

14:                                               ; preds = %3
  %15 = load ptr, ptr %4, align 4, !dbg !670
  %16 = load i32, ptr %5, align 4, !dbg !671
  call void @reserved_exception(ptr noundef %15, i32 noundef %16) #6, !dbg !672
  br label %17, !dbg !673

17:                                               ; preds = %14, %10
  %18 = load ptr, ptr %6, align 4, !dbg !674
  %19 = load i8, ptr %18, align 1, !dbg !676, !range !551, !noundef !286
  %20 = trunc i8 %19 to i1, !dbg !676
  %21 = zext i1 %20 to i32, !dbg !677
  %22 = icmp eq i32 %21, 0, !dbg !678
  br i1 %22, label %23, label %26, !dbg !679

23:                                               ; preds = %17
  %24 = load ptr, ptr %4, align 4, !dbg !680
  %25 = load i32, ptr %5, align 4, !dbg !682
  call void @fault_show(ptr noundef %24, i32 noundef %25) #6, !dbg !683
  br label %26, !dbg !684

26:                                               ; preds = %23, %17
  %27 = load i32, ptr %7, align 4, !dbg !685
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #7, !dbg !686
  ret i32 %27, !dbg !687
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: optsize
declare !dbg !688 dso_local void @z_arm_fatal_error(i32 noundef, ptr noundef) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind optsize
define hidden void @z_arm_fault_init() #1 !dbg !694 {
  ret void, !dbg !697
}

; Function Attrs: optsize
declare !dbg !698 dso_local i64 @z_timeout_expires(ptr noundef) #5

; Function Attrs: optsize
declare !dbg !703 dso_local i64 @z_timeout_remaining(ptr noundef) #5

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @sys_sflist_is_empty(ptr noundef %0) #0 !dbg !704 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !709, metadata !DIExpression()), !dbg !710
  %3 = load ptr, ptr %2, align 4, !dbg !711
  %4 = call ptr @sys_sflist_peek_head(ptr noundef %3) #6, !dbg !712
  %5 = icmp eq ptr %4, null, !dbg !713
  ret i1 %5, !dbg !714
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @sys_sflist_peek_head(ptr noundef %0) #0 !dbg !715 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !719, metadata !DIExpression()), !dbg !720
  %3 = load ptr, ptr %2, align 4, !dbg !721
  %4 = getelementptr inbounds %struct._sflist, ptr %3, i32 0, i32 0, !dbg !722
  %5 = load ptr, ptr %4, align 4, !dbg !722
  ret ptr %5, !dbg !723
}

; Function Attrs: nounwind optsize
define internal i32 @hard_fault(ptr noundef %0, ptr noundef %1) #1 !dbg !724 {
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
  call void @llvm.dbg.declare(metadata ptr %3, metadata !728, metadata !DIExpression()), !dbg !731
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !729, metadata !DIExpression()), !dbg !732
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #7, !dbg !733
  call void @llvm.dbg.declare(metadata ptr %5, metadata !730, metadata !DIExpression()), !dbg !734
  store i32 0, ptr %5, align 4, !dbg !734
  br label %12, !dbg !735

12:                                               ; preds = %2
  br label %14, !dbg !736

13:                                               ; No predecessors!
  br label %14, !dbg !740

14:                                               ; preds = %13, %12
  %15 = load ptr, ptr %3, align 4, !dbg !741
  %16 = getelementptr inbounds %struct.__esf, ptr %15, i32 0, i32 0, !dbg !743
  %17 = getelementptr inbounds %struct.__basic_sf, ptr %16, i32 0, i32 6, !dbg !744
  %18 = load i32, ptr %17, align 4, !dbg !744
  %19 = call zeroext i1 @z_arm_is_pc_valid(i32 noundef %18) #6, !dbg !745
  br i1 %19, label %20, label %31, !dbg !746

20:                                               ; preds = %14
  %21 = load ptr, ptr %3, align 4, !dbg !747
  %22 = call zeroext i1 @z_arm_is_synchronous_svc(ptr noundef %21) #6, !dbg !748
  br i1 %22, label %23, label %31, !dbg !749

23:                                               ; preds = %20
  br label %24, !dbg !750

24:                                               ; preds = %23
  br label %26, !dbg !752

25:                                               ; No predecessors!
  br label %26, !dbg !756

26:                                               ; preds = %25, %24
  %27 = load ptr, ptr %3, align 4, !dbg !757
  %28 = getelementptr inbounds %struct.__esf, ptr %27, i32 0, i32 0, !dbg !758
  %29 = getelementptr inbounds %struct.__basic_sf, ptr %28, i32 0, i32 0, !dbg !759
  %30 = load i32, ptr %29, align 4, !dbg !759
  store i32 %30, ptr %5, align 4, !dbg !760
  br label %31, !dbg !761

31:                                               ; preds = %26, %20, %14
  %32 = load ptr, ptr %3, align 4, !dbg !762
  %33 = call zeroext i1 @memory_fault_recoverable(ptr noundef %32, i1 noundef zeroext true) #6, !dbg !763
  %34 = load ptr, ptr %4, align 4, !dbg !764
  %35 = zext i1 %33 to i8, !dbg !765
  store i8 %35, ptr %34, align 1, !dbg !765
  %36 = load i32, ptr %5, align 4, !dbg !766
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #7, !dbg !767
  ret i32 %36, !dbg !768
}

; Function Attrs: nounwind optsize
define internal void @reserved_exception(ptr noundef %0, i32 noundef %1) #1 !dbg !769 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !773, metadata !DIExpression()), !dbg !775
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !774, metadata !DIExpression()), !dbg !776
  %8 = load ptr, ptr %3, align 4, !dbg !777
  br label %9, !dbg !778

9:                                                ; preds = %2
  br label %10, !dbg !779

10:                                               ; preds = %9
  ret void, !dbg !783
}

; Function Attrs: nounwind optsize
define internal void @fault_show(ptr noundef %0, i32 noundef %1) #1 !dbg !784 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !786, metadata !DIExpression()), !dbg !788
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !787, metadata !DIExpression()), !dbg !789
  %5 = load ptr, ptr %3, align 4, !dbg !790
  %6 = load i32, ptr %4, align 4, !dbg !791
  ret void, !dbg !792
}

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @z_arm_is_pc_valid(i32 noundef %0) #0 !dbg !793 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !797, metadata !DIExpression()), !dbg !798
  %4 = load i32, ptr %3, align 4, !dbg !799
  %5 = icmp ule i32 ptrtoint (ptr @__text_region_start to i32), %4, !dbg !801
  br i1 %5, label %6, label %10, !dbg !802

6:                                                ; preds = %1
  %7 = load i32, ptr %3, align 4, !dbg !803
  %8 = icmp ult i32 %7, ptrtoint (ptr @__text_region_end to i32), !dbg !804
  br i1 %8, label %9, label %10, !dbg !805

9:                                                ; preds = %6
  store i1 true, ptr %2, align 1, !dbg !806
  br label %18, !dbg !806

10:                                               ; preds = %6, %1
  %11 = load i32, ptr %3, align 4, !dbg !808
  %12 = icmp ule i32 ptrtoint (ptr @__ramfunc_start to i32), %11, !dbg !810
  br i1 %12, label %13, label %17, !dbg !811

13:                                               ; preds = %10
  %14 = load i32, ptr %3, align 4, !dbg !812
  %15 = icmp ult i32 %14, ptrtoint (ptr @__ramfunc_end to i32), !dbg !813
  br i1 %15, label %16, label %17, !dbg !814

16:                                               ; preds = %13
  store i1 true, ptr %2, align 1, !dbg !815
  br label %18, !dbg !815

17:                                               ; preds = %13, %10
  store i1 false, ptr %2, align 1, !dbg !817
  br label %18, !dbg !817

18:                                               ; preds = %17, %16, %9
  %19 = load i1, ptr %2, align 1, !dbg !818
  ret i1 %19, !dbg !818
}

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @z_arm_is_synchronous_svc(ptr noundef %0) #0 !dbg !819 {
  %2 = alloca i1, align 1
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i16, align 2
  %6 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !823, metadata !DIExpression()), !dbg !826
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #7, !dbg !827
  call void @llvm.dbg.declare(metadata ptr %4, metadata !824, metadata !DIExpression()), !dbg !828
  %7 = load ptr, ptr %3, align 4, !dbg !829
  %8 = getelementptr inbounds %struct.__esf, ptr %7, i32 0, i32 0, !dbg !830
  %9 = getelementptr inbounds %struct.__basic_sf, ptr %8, i32 0, i32 6, !dbg !831
  %10 = load i32, ptr %9, align 4, !dbg !831
  %11 = inttoptr i32 %10 to ptr, !dbg !832
  store ptr %11, ptr %4, align 4, !dbg !828
  call void @llvm.lifetime.start.p0(i64 2, ptr %5) #7, !dbg !833
  call void @llvm.dbg.declare(metadata ptr %5, metadata !825, metadata !DIExpression()), !dbg !834
  %12 = load ptr, ptr %4, align 4, !dbg !835
  %13 = getelementptr inbounds i16, ptr %12, i32 -1, !dbg !836
  %14 = load i16, ptr %13, align 2, !dbg !837
  store i16 %14, ptr %5, align 2, !dbg !834
  %15 = load i16, ptr %5, align 2, !dbg !838
  %16 = zext i16 %15 to i32, !dbg !838
  %17 = and i32 %16, 65280, !dbg !840
  %18 = icmp eq i32 %17, 57088, !dbg !841
  br i1 %18, label %19, label %25, !dbg !842

19:                                               ; preds = %1
  %20 = load i16, ptr %5, align 2, !dbg !843
  %21 = zext i16 %20 to i32, !dbg !843
  %22 = and i32 %21, 255, !dbg !844
  %23 = icmp eq i32 %22, 2, !dbg !845
  br i1 %23, label %24, label %25, !dbg !846

24:                                               ; preds = %19
  store i1 true, ptr %2, align 1, !dbg !847
  store i32 1, ptr %6, align 4
  br label %26, !dbg !847

25:                                               ; preds = %19, %1
  store i1 false, ptr %2, align 1, !dbg !849
  store i32 1, ptr %6, align 4
  br label %26, !dbg !849

26:                                               ; preds = %25, %24
  call void @llvm.lifetime.end.p0(i64 2, ptr %5) #7, !dbg !850
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #7, !dbg !850
  %27 = load i1, ptr %2, align 1, !dbg !850
  ret i1 %27, !dbg !850
}

; Function Attrs: nounwind optsize
define internal zeroext i1 @memory_fault_recoverable(ptr noundef %0, i1 noundef zeroext %1) #1 !dbg !851 {
  %3 = alloca ptr, align 4
  %4 = alloca i8, align 1
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !855, metadata !DIExpression()), !dbg !857
  %5 = zext i1 %1 to i8
  store i8 %5, ptr %4, align 1
  call void @llvm.dbg.declare(metadata ptr %4, metadata !856, metadata !DIExpression()), !dbg !858
  ret i1 false, !dbg !859
}

attributes #0 = { inlinehint nounwind optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { optsize }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!168, !169, !170, !171, !172, !173}
!llvm.ident = !{!174}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !95, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "fault.c", directory: "/home/sri/zephyrproject/zephyr/build")
!2 = !{!3, !13}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "k_fatal_error_reason", file: !4, line: 24, baseType: !5, size: 8, elements: !6)
!4 = !DIFile(filename: "include/zephyr/fatal_types.h", directory: "/home/sri/zephyrproject/zephyr")
!5 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!6 = !{!7, !8, !9, !10, !11, !12}
!7 = !DIEnumerator(name: "K_ERR_CPU_EXCEPTION", value: 0)
!8 = !DIEnumerator(name: "K_ERR_SPURIOUS_IRQ", value: 1)
!9 = !DIEnumerator(name: "K_ERR_STACK_CHK_FAIL", value: 2)
!10 = !DIEnumerator(name: "K_ERR_KERNEL_OOPS", value: 3)
!11 = !DIEnumerator(name: "K_ERR_KERNEL_PANIC", value: 4)
!12 = !DIEnumerator(name: "K_ERR_ARCH_START", value: 16)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "k_objects", file: !14, line: 29, baseType: !5, size: 8, elements: !15)
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
!95 = !{!96, !118, !119, !120, !164, !165}
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 32)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "SCB_Type", file: !98, line: 352, baseType: !99)
!98 = !DIFile(filename: "modules/hal/cmsis/CMSIS/Core/Include/core_cm0.h", directory: "/home/sri/zephyrproject")
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !98, line: 341, size: 320, elements: !100)
!100 = !{!101, !107, !108, !109, !110, !111, !112, !113, !117}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "CPUID", scope: !99, file: !98, line: 343, baseType: !102, size: 32)
!102 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !103)
!103 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !104)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !105, line: 64, baseType: !106)
!105 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/stdint.h", directory: "")
!106 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "ICSR", scope: !99, file: !98, line: 344, baseType: !103, size: 32, offset: 32)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !99, file: !98, line: 345, baseType: !104, size: 32, offset: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "AIRCR", scope: !99, file: !98, line: 346, baseType: !103, size: 32, offset: 96)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "SCR", scope: !99, file: !98, line: 347, baseType: !103, size: 32, offset: 128)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "CCR", scope: !99, file: !98, line: 348, baseType: !103, size: 32, offset: 160)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED1", scope: !99, file: !98, line: 349, baseType: !104, size: 32, offset: 192)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "SHP", scope: !99, file: !98, line: 350, baseType: !114, size: 64, offset: 224)
!114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 64, elements: !115)
!115 = !{!116}
!116 = !DISubrange(count: 2)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "SHCSR", scope: !99, file: !98, line: 351, baseType: !103, size: 32, offset: 288)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!119 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 32)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "z_arch_esf_t", file: !122, line: 122, baseType: !123)
!122 = !DIFile(filename: "include/zephyr/arch/arm/cortex_m/exc.h", directory: "/home/sri/zephyrproject/zephyr")
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__esf", file: !122, line: 101, size: 256, elements: !124)
!124 = !{!125}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "basic", scope: !123, file: !122, line: 111, baseType: !126, size: 256)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__basic_sf", file: !122, line: 102, size: 256, elements: !127)
!127 = !{!128, !133, !138, !143, !148, !153, !158, !163}
!128 = !DIDerivedType(tag: DW_TAG_member, scope: !126, file: !122, line: 103, baseType: !129, size: 32)
!129 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !126, file: !122, line: 103, size: 32, elements: !130)
!130 = !{!131, !132}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "a1", scope: !129, file: !122, line: 103, baseType: !104, size: 32)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "r0", scope: !129, file: !122, line: 103, baseType: !104, size: 32)
!133 = !DIDerivedType(tag: DW_TAG_member, scope: !126, file: !122, line: 104, baseType: !134, size: 32, offset: 32)
!134 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !126, file: !122, line: 104, size: 32, elements: !135)
!135 = !{!136, !137}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "a2", scope: !134, file: !122, line: 104, baseType: !104, size: 32)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "r1", scope: !134, file: !122, line: 104, baseType: !104, size: 32)
!138 = !DIDerivedType(tag: DW_TAG_member, scope: !126, file: !122, line: 105, baseType: !139, size: 32, offset: 64)
!139 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !126, file: !122, line: 105, size: 32, elements: !140)
!140 = !{!141, !142}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "a3", scope: !139, file: !122, line: 105, baseType: !104, size: 32)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "r2", scope: !139, file: !122, line: 105, baseType: !104, size: 32)
!143 = !DIDerivedType(tag: DW_TAG_member, scope: !126, file: !122, line: 106, baseType: !144, size: 32, offset: 96)
!144 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !126, file: !122, line: 106, size: 32, elements: !145)
!145 = !{!146, !147}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "a4", scope: !144, file: !122, line: 106, baseType: !104, size: 32)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "r3", scope: !144, file: !122, line: 106, baseType: !104, size: 32)
!148 = !DIDerivedType(tag: DW_TAG_member, scope: !126, file: !122, line: 107, baseType: !149, size: 32, offset: 128)
!149 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !126, file: !122, line: 107, size: 32, elements: !150)
!150 = !{!151, !152}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !149, file: !122, line: 107, baseType: !104, size: 32)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !149, file: !122, line: 107, baseType: !104, size: 32)
!153 = !DIDerivedType(tag: DW_TAG_member, scope: !126, file: !122, line: 108, baseType: !154, size: 32, offset: 160)
!154 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !126, file: !122, line: 108, size: 32, elements: !155)
!155 = !{!156, !157}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "lr", scope: !154, file: !122, line: 108, baseType: !104, size: 32)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !154, file: !122, line: 108, baseType: !104, size: 32)
!158 = !DIDerivedType(tag: DW_TAG_member, scope: !126, file: !122, line: 109, baseType: !159, size: 32, offset: 192)
!159 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !126, file: !122, line: 109, size: 32, elements: !160)
!160 = !{!161, !162}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "pc", scope: !159, file: !122, line: 109, baseType: !104, size: 32)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !159, file: !122, line: 109, baseType: !104, size: 32)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "xpsr", scope: !126, file: !122, line: 110, baseType: !104, size: 32, offset: 224)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !105, line: 102, baseType: !106)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 32)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !105, line: 63, baseType: !167)
!167 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!168 = !{i32 7, !"Dwarf Version", i32 4}
!169 = !{i32 2, !"Debug Info Version", i32 3}
!170 = !{i32 1, !"wchar_size", i32 4}
!171 = !{i32 1, !"static_rwdata", i32 1}
!172 = !{i32 1, !"enumsize_buildattr", i32 1}
!173 = !{i32 1, !"armlib_unavailable", i32 0}
!174 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
!175 = distinct !DISubprogram(name: "z_impl_k_object_access_grant", scope: !14, file: !14, line: 223, type: !176, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !292)
!176 = !DISubroutineType(types: !177)
!177 = !{null, !178, !180}
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 32)
!179 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 32)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_thread", file: !182, line: 250, size: 896, elements: !183)
!182 = !DIFile(filename: "include/zephyr/kernel/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!183 = !{!184, !250, !263, !264, !265, !266, !287}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !181, file: !182, line: 252, baseType: !185, size: 384)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_base", file: !182, line: 58, size: 384, elements: !186)
!186 = !{!187, !213, !221, !223, !224, !235, !236, !237}
!187 = !DIDerivedType(tag: DW_TAG_member, scope: !185, file: !182, line: 61, baseType: !188, size: 64)
!188 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !185, file: !182, line: 61, size: 64, elements: !189)
!189 = !{!190, !206}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_dlist", scope: !188, file: !182, line: 62, baseType: !191, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dnode_t", file: !192, line: 55, baseType: !193)
!192 = !DIFile(filename: "include/zephyr/sys/dlist.h", directory: "/home/sri/zephyrproject/zephyr")
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_dnode", file: !192, line: 37, size: 64, elements: !194)
!194 = !{!195, !201}
!195 = !DIDerivedType(tag: DW_TAG_member, scope: !193, file: !192, line: 38, baseType: !196, size: 32)
!196 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !193, file: !192, line: 38, size: 32, elements: !197)
!197 = !{!198, !200}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !196, file: !192, line: 39, baseType: !199, size: 32)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 32)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !196, file: !192, line: 40, baseType: !199, size: 32)
!201 = !DIDerivedType(tag: DW_TAG_member, scope: !193, file: !192, line: 42, baseType: !202, size: 32, offset: 32)
!202 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !193, file: !192, line: 42, size: 32, elements: !203)
!203 = !{!204, !205}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !202, file: !192, line: 43, baseType: !199, size: 32)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !202, file: !192, line: 44, baseType: !199, size: 32)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_rb", scope: !188, file: !182, line: 63, baseType: !207, size: 64)
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rbnode", file: !208, line: 58, size: 64, elements: !209)
!208 = !DIFile(filename: "include/zephyr/sys/rb.h", directory: "/home/sri/zephyrproject/zephyr")
!209 = !{!210}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !207, file: !208, line: 60, baseType: !211, size: 64)
!211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !212, size: 64, elements: !115)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 32)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "pended_on", scope: !185, file: !182, line: 69, baseType: !214, size: 32, offset: 64)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 32)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "_wait_q_t", file: !216, line: 243, baseType: !217)
!216 = !DIFile(filename: "include/zephyr/kernel_structs.h", directory: "/home/sri/zephyrproject/zephyr")
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !216, line: 241, size: 64, elements: !218)
!218 = !{!219}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !217, file: !216, line: 242, baseType: !220, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dlist_t", file: !192, line: 51, baseType: !193)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "user_options", scope: !185, file: !182, line: 72, baseType: !222, size: 8, offset: 96)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !105, line: 62, baseType: !5)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "thread_state", scope: !185, file: !182, line: 75, baseType: !222, size: 8, offset: 104)
!224 = !DIDerivedType(tag: DW_TAG_member, scope: !185, file: !182, line: 91, baseType: !225, size: 16, offset: 112)
!225 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !185, file: !182, line: 91, size: 16, elements: !226)
!226 = !{!227, !234}
!227 = !DIDerivedType(tag: DW_TAG_member, scope: !225, file: !182, line: 92, baseType: !228, size: 16)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !225, file: !182, line: 92, size: 16, elements: !229)
!229 = !{!230, !233}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !228, file: !182, line: 97, baseType: !231, size: 8)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !105, line: 56, baseType: !232)
!232 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "sched_locked", scope: !228, file: !182, line: 98, baseType: !222, size: 8, offset: 8)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "preempt", scope: !225, file: !182, line: 101, baseType: !166, size: 16)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "order_key", scope: !185, file: !182, line: 108, baseType: !104, size: 32, offset: 128)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "swap_data", scope: !185, file: !182, line: 132, baseType: !118, size: 32, offset: 160)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !185, file: !182, line: 136, baseType: !238, size: 192, offset: 192)
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_timeout", file: !216, line: 254, size: 192, elements: !239)
!239 = !{!240, !241, !247}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !238, file: !216, line: 255, baseType: !191, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !238, file: !216, line: 256, baseType: !242, size: 32, offset: 64)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "_timeout_func_t", file: !216, line: 252, baseType: !243)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 32)
!244 = !DISubroutineType(types: !245)
!245 = !{null, !246}
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 32)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "dticks", scope: !238, file: !216, line: 259, baseType: !248, size: 64, offset: 128)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !105, line: 59, baseType: !249)
!249 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "callee_saved", scope: !181, file: !182, line: 255, baseType: !251, size: 288, offset: 384)
!251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_callee_saved", file: !252, line: 25, size: 288, elements: !253)
!252 = !DIFile(filename: "include/zephyr/arch/arm/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!253 = !{!254, !255, !256, !257, !258, !259, !260, !261, !262}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "v1", scope: !251, file: !252, line: 26, baseType: !104, size: 32)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "v2", scope: !251, file: !252, line: 27, baseType: !104, size: 32, offset: 32)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "v3", scope: !251, file: !252, line: 28, baseType: !104, size: 32, offset: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "v4", scope: !251, file: !252, line: 29, baseType: !104, size: 32, offset: 96)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "v5", scope: !251, file: !252, line: 30, baseType: !104, size: 32, offset: 128)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "v6", scope: !251, file: !252, line: 31, baseType: !104, size: 32, offset: 160)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "v7", scope: !251, file: !252, line: 32, baseType: !104, size: 32, offset: 192)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "v8", scope: !251, file: !252, line: 33, baseType: !104, size: 32, offset: 224)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "psp", scope: !251, file: !252, line: 34, baseType: !104, size: 32, offset: 256)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "init_data", scope: !181, file: !182, line: 258, baseType: !118, size: 32, offset: 672)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "join_queue", scope: !181, file: !182, line: 261, baseType: !215, size: 64, offset: 704)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "errno_var", scope: !181, file: !182, line: 302, baseType: !119, size: 32, offset: 768)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "resource_pool", scope: !181, file: !182, line: 333, baseType: !267, size: 32, offset: 800)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 32)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_heap", file: !269, line: 5291, size: 160, elements: !270)
!269 = !DIFile(filename: "include/zephyr/kernel.h", directory: "/home/sri/zephyrproject/zephyr")
!270 = !{!271, !282, !283}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !268, file: !269, line: 5292, baseType: !272, size: 96)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sys_heap", file: !273, line: 56, size: 96, elements: !274)
!273 = !DIFile(filename: "include/zephyr/sys/sys_heap.h", directory: "/home/sri/zephyrproject/zephyr")
!274 = !{!275, !278, !279}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !272, file: !273, line: 57, baseType: !276, size: 32)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 32)
!277 = !DICompositeType(tag: DW_TAG_structure_type, name: "z_heap", file: !273, line: 57, flags: DIFlagFwdDecl)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "init_mem", scope: !272, file: !273, line: 58, baseType: !118, size: 32, offset: 32)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "init_bytes", scope: !272, file: !273, line: 59, baseType: !280, size: 32, offset: 64)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !281, line: 46, baseType: !106)
!281 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/lib/clang/17/include/stddef.h", directory: "")
!282 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !268, file: !269, line: 5293, baseType: !215, size: 64, offset: 96)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !268, file: !269, line: 5294, baseType: !284, offset: 160)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_spinlock", file: !285, line: 45, elements: !286)
!285 = !DIFile(filename: "include/zephyr/spinlock.h", directory: "/home/sri/zephyrproject/zephyr")
!286 = !{}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !181, file: !182, line: 355, baseType: !288, size: 64, offset: 832)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_arch", file: !252, line: 60, size: 64, elements: !289)
!289 = !{!290, !291}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "basepri", scope: !288, file: !252, line: 63, baseType: !104, size: 32)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "swap_return_value", scope: !288, file: !252, line: 66, baseType: !104, size: 32, offset: 32)
!292 = !{!293, !294}
!293 = !DILocalVariable(name: "object", arg: 1, scope: !175, file: !14, line: 223, type: !178)
!294 = !DILocalVariable(name: "thread", arg: 2, scope: !175, file: !14, line: 224, type: !180)
!295 = !DILocation(line: 223, column: 61, scope: !175)
!296 = !DILocation(line: 224, column: 24, scope: !175)
!297 = !DILocation(line: 226, column: 9, scope: !175)
!298 = !DILocation(line: 227, column: 9, scope: !175)
!299 = !DILocation(line: 228, column: 1, scope: !175)
!300 = distinct !DISubprogram(name: "z_impl_k_object_release", scope: !14, file: !14, line: 243, type: !301, scopeLine: 244, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !303)
!301 = !DISubroutineType(types: !302)
!302 = !{null, !178}
!303 = !{!304}
!304 = !DILocalVariable(name: "object", arg: 1, scope: !300, file: !14, line: 243, type: !178)
!305 = !DILocation(line: 243, column: 56, scope: !300)
!306 = !DILocation(line: 245, column: 9, scope: !300)
!307 = !DILocation(line: 246, column: 1, scope: !300)
!308 = distinct !DISubprogram(name: "z_impl_k_object_alloc", scope: !14, file: !14, line: 359, type: !309, scopeLine: 360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !311)
!309 = !DISubroutineType(types: !310)
!310 = !{!118, !13}
!311 = !{!312}
!312 = !DILocalVariable(name: "otype", arg: 1, scope: !308, file: !14, line: 359, type: !13)
!313 = !DILocation(line: 359, column: 58, scope: !308)
!314 = !DILocation(line: 361, column: 9, scope: !308)
!315 = !DILocation(line: 363, column: 2, scope: !308)
!316 = distinct !DISubprogram(name: "z_impl_k_object_alloc_size", scope: !14, file: !14, line: 366, type: !317, scopeLine: 368, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !319)
!317 = !DISubroutineType(types: !318)
!318 = !{!118, !13, !280}
!319 = !{!320, !321}
!320 = !DILocalVariable(name: "otype", arg: 1, scope: !316, file: !14, line: 366, type: !13)
!321 = !DILocalVariable(name: "size", arg: 2, scope: !316, file: !14, line: 367, type: !280)
!322 = !DILocation(line: 366, column: 63, scope: !316)
!323 = !DILocation(line: 367, column: 13, scope: !316)
!324 = !DILocation(line: 369, column: 9, scope: !316)
!325 = !DILocation(line: 370, column: 9, scope: !316)
!326 = !DILocation(line: 372, column: 2, scope: !316)
!327 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_expires_ticks", scope: !269, file: !269, line: 656, type: !328, scopeLine: 658, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !334)
!328 = !DISubroutineType(types: !329)
!329 = !{!330, !332}
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_ticks_t", file: !331, line: 46, baseType: !248)
!331 = !DIFile(filename: "include/zephyr/sys_clock.h", directory: "/home/sri/zephyrproject/zephyr")
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 32)
!333 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !181)
!334 = !{!335}
!335 = !DILocalVariable(name: "t", arg: 1, scope: !327, file: !269, line: 657, type: !332)
!336 = !DILocation(line: 657, column: 30, scope: !327)
!337 = !DILocation(line: 659, column: 28, scope: !327)
!338 = !DILocation(line: 659, column: 31, scope: !327)
!339 = !DILocation(line: 659, column: 36, scope: !327)
!340 = !DILocation(line: 659, column: 9, scope: !327)
!341 = !DILocation(line: 659, column: 2, scope: !327)
!342 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_remaining_ticks", scope: !269, file: !269, line: 671, type: !328, scopeLine: 673, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !343)
!343 = !{!344}
!344 = !DILocalVariable(name: "t", arg: 1, scope: !342, file: !269, line: 672, type: !332)
!345 = !DILocation(line: 672, column: 30, scope: !342)
!346 = !DILocation(line: 674, column: 30, scope: !342)
!347 = !DILocation(line: 674, column: 33, scope: !342)
!348 = !DILocation(line: 674, column: 38, scope: !342)
!349 = !DILocation(line: 674, column: 9, scope: !342)
!350 = !DILocation(line: 674, column: 2, scope: !342)
!351 = distinct !DISubprogram(name: "z_impl_k_timer_expires_ticks", scope: !269, file: !269, line: 1634, type: !352, scopeLine: 1636, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !373)
!352 = !DISubroutineType(types: !353)
!353 = !{!330, !354}
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 32)
!355 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !356)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_timer", file: !269, line: 1439, size: 448, elements: !357)
!357 = !{!358, !359, !360, !365, !366, !371, !372}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !356, file: !269, line: 1445, baseType: !238, size: 192)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !356, file: !269, line: 1448, baseType: !215, size: 64, offset: 192)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_fn", scope: !356, file: !269, line: 1451, baseType: !361, size: 32, offset: 256)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 32)
!362 = !DISubroutineType(types: !363)
!363 = !{null, !364}
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 32)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "stop_fn", scope: !356, file: !269, line: 1454, baseType: !361, size: 32, offset: 288)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !356, file: !269, line: 1457, baseType: !367, size: 64, offset: 320)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_timeout_t", file: !331, line: 67, baseType: !368)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !331, line: 65, size: 64, elements: !369)
!369 = !{!370}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "ticks", scope: !368, file: !331, line: 66, baseType: !330, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !356, file: !269, line: 1460, baseType: !104, size: 32, offset: 384)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !356, file: !269, line: 1463, baseType: !118, size: 32, offset: 416)
!373 = !{!374}
!374 = !DILocalVariable(name: "timer", arg: 1, scope: !351, file: !269, line: 1635, type: !354)
!375 = !DILocation(line: 1635, column: 34, scope: !351)
!376 = !DILocation(line: 1637, column: 28, scope: !351)
!377 = !DILocation(line: 1637, column: 35, scope: !351)
!378 = !DILocation(line: 1637, column: 9, scope: !351)
!379 = !DILocation(line: 1637, column: 2, scope: !351)
!380 = distinct !DISubprogram(name: "z_impl_k_timer_remaining_ticks", scope: !269, file: !269, line: 1649, type: !352, scopeLine: 1651, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !381)
!381 = !{!382}
!382 = !DILocalVariable(name: "timer", arg: 1, scope: !380, file: !269, line: 1650, type: !354)
!383 = !DILocation(line: 1650, column: 34, scope: !380)
!384 = !DILocation(line: 1652, column: 30, scope: !380)
!385 = !DILocation(line: 1652, column: 37, scope: !380)
!386 = !DILocation(line: 1652, column: 9, scope: !380)
!387 = !DILocation(line: 1652, column: 2, scope: !380)
!388 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_set", scope: !269, file: !269, line: 1689, type: !389, scopeLine: 1691, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !391)
!389 = !DISubroutineType(types: !390)
!390 = !{null, !364, !118}
!391 = !{!392, !393}
!392 = !DILocalVariable(name: "timer", arg: 1, scope: !388, file: !269, line: 1689, type: !364)
!393 = !DILocalVariable(name: "user_data", arg: 2, scope: !388, file: !269, line: 1690, type: !118)
!394 = !DILocation(line: 1689, column: 65, scope: !388)
!395 = !DILocation(line: 1690, column: 19, scope: !388)
!396 = !DILocation(line: 1692, column: 21, scope: !388)
!397 = !DILocation(line: 1692, column: 2, scope: !388)
!398 = !DILocation(line: 1692, column: 9, scope: !388)
!399 = !DILocation(line: 1692, column: 19, scope: !388)
!400 = !DILocation(line: 1693, column: 1, scope: !388)
!401 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_get", scope: !269, file: !269, line: 1704, type: !402, scopeLine: 1705, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !404)
!402 = !DISubroutineType(types: !403)
!403 = !{!118, !354}
!404 = !{!405}
!405 = !DILocalVariable(name: "timer", arg: 1, scope: !401, file: !269, line: 1704, type: !354)
!406 = !DILocation(line: 1704, column: 72, scope: !401)
!407 = !DILocation(line: 1706, column: 9, scope: !401)
!408 = !DILocation(line: 1706, column: 16, scope: !401)
!409 = !DILocation(line: 1706, column: 2, scope: !401)
!410 = distinct !DISubprogram(name: "z_impl_k_queue_is_empty", scope: !269, file: !269, line: 2071, type: !411, scopeLine: 2072, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !431)
!411 = !DISubroutineType(types: !412)
!412 = !{!119, !413}
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 32)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_queue", file: !269, line: 1830, size: 128, elements: !415)
!415 = !{!416, !429, !430}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "data_q", scope: !414, file: !269, line: 1831, baseType: !417, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sflist_t", file: !418, line: 60, baseType: !419)
!418 = !DIFile(filename: "include/zephyr/sys/sflist.h", directory: "/home/sri/zephyrproject/zephyr")
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sflist", file: !418, line: 53, size: 64, elements: !420)
!420 = !{!421, !428}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !419, file: !418, line: 54, baseType: !422, size: 32)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 32)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sfnode_t", file: !418, line: 50, baseType: !424)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sfnode", file: !418, line: 44, size: 32, elements: !425)
!425 = !{!426}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "next_and_flags", scope: !424, file: !418, line: 45, baseType: !427, size: 32)
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "unative_t", file: !418, line: 40, baseType: !104)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !419, file: !418, line: 55, baseType: !422, size: 32, offset: 32)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !414, file: !269, line: 1832, baseType: !284, offset: 64)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !414, file: !269, line: 1833, baseType: !215, size: 64, offset: 64)
!431 = !{!432}
!432 = !DILocalVariable(name: "queue", arg: 1, scope: !410, file: !269, line: 2071, type: !413)
!433 = !DILocation(line: 2071, column: 59, scope: !410)
!434 = !DILocation(line: 2073, column: 35, scope: !410)
!435 = !DILocation(line: 2073, column: 42, scope: !410)
!436 = !DILocation(line: 2073, column: 14, scope: !410)
!437 = !DILocation(line: 2073, column: 9, scope: !410)
!438 = !DILocation(line: 2073, column: 2, scope: !410)
!439 = distinct !DISubprogram(name: "z_impl_k_sem_count_get", scope: !269, file: !269, line: 3209, type: !440, scopeLine: 3210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !448)
!440 = !DISubroutineType(types: !441)
!441 = !{!106, !442}
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 32)
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sem", file: !269, line: 3092, size: 128, elements: !444)
!444 = !{!445, !446, !447}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !443, file: !269, line: 3093, baseType: !215, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !443, file: !269, line: 3094, baseType: !106, size: 32, offset: 64)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !443, file: !269, line: 3095, baseType: !106, size: 32, offset: 96)
!448 = !{!449}
!449 = !DILocalVariable(name: "sem", arg: 1, scope: !439, file: !269, line: 3209, type: !442)
!450 = !DILocation(line: 3209, column: 65, scope: !439)
!451 = !DILocation(line: 3211, column: 9, scope: !439)
!452 = !DILocation(line: 3211, column: 14, scope: !439)
!453 = !DILocation(line: 3211, column: 2, scope: !439)
!454 = distinct !DISubprogram(name: "z_impl_k_msgq_num_free_get", scope: !269, file: !269, line: 4649, type: !455, scopeLine: 4650, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !472)
!455 = !DISubroutineType(types: !456)
!456 = !{!104, !457}
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 32)
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_msgq", file: !269, line: 4390, size: 320, elements: !459)
!459 = !{!460, !461, !462, !463, !464, !467, !468, !469, !470, !471}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !458, file: !269, line: 4392, baseType: !215, size: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !458, file: !269, line: 4394, baseType: !284, offset: 64)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "msg_size", scope: !458, file: !269, line: 4396, baseType: !280, size: 32, offset: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !458, file: !269, line: 4398, baseType: !104, size: 32, offset: 96)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_start", scope: !458, file: !269, line: 4400, baseType: !465, size: 32, offset: 128)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 32)
!466 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_end", scope: !458, file: !269, line: 4402, baseType: !465, size: 32, offset: 160)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "read_ptr", scope: !458, file: !269, line: 4404, baseType: !465, size: 32, offset: 192)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "write_ptr", scope: !458, file: !269, line: 4406, baseType: !465, size: 32, offset: 224)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "used_msgs", scope: !458, file: !269, line: 4408, baseType: !104, size: 32, offset: 256)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !458, file: !269, line: 4413, baseType: !222, size: 8, offset: 288)
!472 = !{!473}
!473 = !DILocalVariable(name: "msgq", arg: 1, scope: !454, file: !269, line: 4649, type: !457)
!474 = !DILocation(line: 4649, column: 66, scope: !454)
!475 = !DILocation(line: 4651, column: 9, scope: !454)
!476 = !DILocation(line: 4651, column: 15, scope: !454)
!477 = !DILocation(line: 4651, column: 26, scope: !454)
!478 = !DILocation(line: 4651, column: 32, scope: !454)
!479 = !DILocation(line: 4651, column: 24, scope: !454)
!480 = !DILocation(line: 4651, column: 2, scope: !454)
!481 = distinct !DISubprogram(name: "z_impl_k_msgq_num_used_get", scope: !269, file: !269, line: 4665, type: !455, scopeLine: 4666, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !482)
!482 = !{!483}
!483 = !DILocalVariable(name: "msgq", arg: 1, scope: !481, file: !269, line: 4665, type: !457)
!484 = !DILocation(line: 4665, column: 66, scope: !481)
!485 = !DILocation(line: 4667, column: 9, scope: !481)
!486 = !DILocation(line: 4667, column: 15, scope: !481)
!487 = !DILocation(line: 4667, column: 2, scope: !481)
!488 = distinct !DISubprogram(name: "z_arm_fault", scope: !489, file: !489, line: 1092, type: !490, scopeLine: 1094, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !494)
!489 = !DIFile(filename: "arch/arm/core/cortex_m/fault.c", directory: "/home/sri/zephyrproject/zephyr")
!490 = !DISubroutineType(types: !491)
!491 = !{null, !104, !104, !104, !492}
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 32)
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "_callee_saved_t", file: !252, line: 37, baseType: !251)
!494 = !{!495, !496, !497, !498, !499, !500, !501, !503, !504, !505}
!495 = !DILocalVariable(name: "msp", arg: 1, scope: !488, file: !489, line: 1092, type: !104)
!496 = !DILocalVariable(name: "psp", arg: 2, scope: !488, file: !489, line: 1092, type: !104)
!497 = !DILocalVariable(name: "exc_return", arg: 3, scope: !488, file: !489, line: 1092, type: !104)
!498 = !DILocalVariable(name: "callee_regs", arg: 4, scope: !488, file: !489, line: 1093, type: !492)
!499 = !DILocalVariable(name: "reason", scope: !488, file: !489, line: 1095, type: !104)
!500 = !DILocalVariable(name: "fault", scope: !488, file: !489, line: 1096, type: !119)
!501 = !DILocalVariable(name: "recoverable", scope: !488, file: !489, line: 1097, type: !502)
!502 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!503 = !DILocalVariable(name: "nested_exc", scope: !488, file: !489, line: 1097, type: !502)
!504 = !DILocalVariable(name: "esf", scope: !488, file: !489, line: 1098, type: !120)
!505 = !DILocalVariable(name: "esf_copy", scope: !488, file: !489, line: 1103, type: !121)
!506 = !DILocation(line: 1092, column: 27, scope: !488)
!507 = !DILocation(line: 1092, column: 41, scope: !488)
!508 = !DILocation(line: 1092, column: 55, scope: !488)
!509 = !DILocation(line: 1093, column: 19, scope: !488)
!510 = !DILocation(line: 1095, column: 2, scope: !488)
!511 = !DILocation(line: 1095, column: 11, scope: !488)
!512 = !DILocation(line: 1096, column: 2, scope: !488)
!513 = !DILocation(line: 1096, column: 6, scope: !488)
!514 = !DILocation(line: 1096, column: 59, scope: !488)
!515 = !DILocation(line: 1096, column: 64, scope: !488)
!516 = !DILocation(line: 1097, column: 2, scope: !488)
!517 = !DILocation(line: 1097, column: 8, scope: !488)
!518 = !DILocation(line: 1097, column: 21, scope: !488)
!519 = !DILocation(line: 1098, column: 2, scope: !488)
!520 = !DILocation(line: 1098, column: 16, scope: !488)
!521 = !DILocation(line: 1103, column: 2, scope: !488)
!522 = !DILocation(line: 1103, column: 15, scope: !488)
!523 = !DILocalVariable(name: "key", arg: 1, scope: !524, file: !525, line: 88, type: !106)
!524 = distinct !DISubprogram(name: "arch_irq_unlock", scope: !525, file: !525, line: 88, type: !526, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !528)
!525 = !DIFile(filename: "include/zephyr/arch/arm/asm_inline_gcc.h", directory: "/home/sri/zephyrproject/zephyr")
!526 = !DISubroutineType(types: !527)
!527 = !{null, !106}
!528 = !{!523}
!529 = !DILocation(line: 88, column: 80, scope: !524, inlinedAt: !530)
!530 = distinct !DILocation(line: 1106, column: 2, scope: !488)
!531 = !DILocation(line: 91, column: 6, scope: !532, inlinedAt: !530)
!532 = distinct !DILexicalBlock(scope: !524, file: !525, line: 91, column: 6)
!533 = !DILocation(line: 91, column: 10, scope: !532, inlinedAt: !530)
!534 = !DILocation(line: 91, column: 6, scope: !524, inlinedAt: !530)
!535 = !DILocation(line: 92, column: 3, scope: !536, inlinedAt: !530)
!536 = distinct !DILexicalBlock(scope: !532, file: !525, line: 91, column: 17)
!537 = !DILocation(line: 94, column: 2, scope: !524, inlinedAt: !530)
!538 = !{i64 67297}
!539 = !DILocation(line: 114, column: 1, scope: !524, inlinedAt: !530)
!540 = !DILocation(line: 1111, column: 17, scope: !488)
!541 = !DILocation(line: 1111, column: 22, scope: !488)
!542 = !DILocation(line: 1111, column: 27, scope: !488)
!543 = !DILocation(line: 1111, column: 9, scope: !488)
!544 = !DILocation(line: 1111, column: 7, scope: !488)
!545 = !DILocation(line: 1119, column: 24, scope: !488)
!546 = !DILocation(line: 1119, column: 29, scope: !488)
!547 = !DILocation(line: 1119, column: 11, scope: !488)
!548 = !DILocation(line: 1119, column: 9, scope: !488)
!549 = !DILocation(line: 1120, column: 6, scope: !550)
!550 = distinct !DILexicalBlock(scope: !488, file: !489, line: 1120, column: 6)
!551 = !{i8 0, i8 2}
!552 = !DILocation(line: 1120, column: 6, scope: !488)
!553 = !DILocation(line: 1121, column: 3, scope: !554)
!554 = distinct !DILexicalBlock(scope: !550, file: !489, line: 1120, column: 19)
!555 = !DILocation(line: 1126, column: 20, scope: !488)
!556 = !DILocation(line: 1126, column: 2, scope: !488)
!557 = !DILocation(line: 1127, column: 9, scope: !488)
!558 = !DILocation(line: 1145, column: 6, scope: !559)
!559 = distinct !DILexicalBlock(scope: !488, file: !489, line: 1145, column: 6)
!560 = !DILocation(line: 1145, column: 6, scope: !488)
!561 = !DILocation(line: 1146, column: 17, scope: !562)
!562 = distinct !DILexicalBlock(scope: !563, file: !489, line: 1146, column: 7)
!563 = distinct !DILexicalBlock(scope: !559, file: !489, line: 1145, column: 18)
!564 = !DILocation(line: 1146, column: 23, scope: !562)
!565 = !DILocation(line: 1146, column: 28, scope: !562)
!566 = !DILocation(line: 1146, column: 42, scope: !562)
!567 = !DILocation(line: 1146, column: 7, scope: !563)
!568 = !DILocation(line: 1147, column: 13, scope: !569)
!569 = distinct !DILexicalBlock(scope: !562, file: !489, line: 1146, column: 48)
!570 = !DILocation(line: 1147, column: 19, scope: !569)
!571 = !DILocation(line: 1147, column: 24, scope: !569)
!572 = !DILocation(line: 1148, column: 3, scope: !569)
!573 = !DILocation(line: 1149, column: 2, scope: !563)
!574 = !DILocation(line: 1150, column: 12, scope: !575)
!575 = distinct !DILexicalBlock(scope: !559, file: !489, line: 1149, column: 9)
!576 = !DILocation(line: 1150, column: 18, scope: !575)
!577 = !DILocation(line: 1150, column: 23, scope: !575)
!578 = !DILocation(line: 1157, column: 20, scope: !488)
!579 = !DILocation(line: 1157, column: 2, scope: !488)
!580 = !DILocation(line: 1158, column: 1, scope: !488)
!581 = distinct !DISubprogram(name: "get_esf", scope: !489, file: !489, line: 950, type: !582, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !585)
!582 = !DISubroutineType(types: !583)
!583 = !{!120, !104, !104, !104, !584}
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 32)
!585 = !{!586, !587, !588, !589, !590, !591}
!586 = !DILocalVariable(name: "msp", arg: 1, scope: !581, file: !489, line: 950, type: !104)
!587 = !DILocalVariable(name: "psp", arg: 2, scope: !581, file: !489, line: 950, type: !104)
!588 = !DILocalVariable(name: "exc_return", arg: 3, scope: !581, file: !489, line: 950, type: !104)
!589 = !DILocalVariable(name: "nested_exc", arg: 4, scope: !581, file: !489, line: 951, type: !584)
!590 = !DILocalVariable(name: "alternative_state_exc", scope: !581, file: !489, line: 953, type: !502)
!591 = !DILocalVariable(name: "ptr_esf", scope: !581, file: !489, line: 954, type: !120)
!592 = !DILocation(line: 950, column: 46, scope: !581)
!593 = !DILocation(line: 950, column: 60, scope: !581)
!594 = !DILocation(line: 950, column: 74, scope: !581)
!595 = !DILocation(line: 951, column: 9, scope: !581)
!596 = !DILocation(line: 953, column: 2, scope: !581)
!597 = !DILocation(line: 953, column: 8, scope: !581)
!598 = !DILocation(line: 954, column: 2, scope: !581)
!599 = !DILocation(line: 954, column: 16, scope: !581)
!600 = !DILocation(line: 956, column: 3, scope: !581)
!601 = !DILocation(line: 956, column: 14, scope: !581)
!602 = !DILocation(line: 958, column: 7, scope: !603)
!603 = distinct !DILexicalBlock(scope: !581, file: !489, line: 958, column: 6)
!604 = !DILocation(line: 958, column: 18, scope: !603)
!605 = !DILocation(line: 958, column: 34, scope: !603)
!606 = !DILocation(line: 958, column: 6, scope: !581)
!607 = !DILocation(line: 961, column: 3, scope: !608)
!608 = distinct !DILexicalBlock(scope: !603, file: !489, line: 959, column: 18)
!609 = !DILocation(line: 1039, column: 7, scope: !610)
!610 = distinct !DILexicalBlock(scope: !581, file: !489, line: 1039, column: 6)
!611 = !DILocation(line: 1039, column: 18, scope: !610)
!612 = !DILocation(line: 1039, column: 34, scope: !610)
!613 = !DILocation(line: 1040, column: 6, scope: !610)
!614 = !DILocation(line: 1040, column: 17, scope: !610)
!615 = !DILocation(line: 1039, column: 6, scope: !581)
!616 = !DILocation(line: 1041, column: 3, scope: !617)
!617 = distinct !DILexicalBlock(scope: !610, file: !489, line: 1040, column: 35)
!618 = !DILocation(line: 1041, column: 89, scope: !619)
!619 = distinct !DILexicalBlock(scope: !620, file: !489, line: 1041, column: 87)
!620 = distinct !DILexicalBlock(scope: !621, file: !489, line: 1041, column: 12)
!621 = distinct !DILexicalBlock(scope: !617, file: !489, line: 1041, column: 6)
!622 = !DILocation(line: 1041, column: 406, scope: !621)
!623 = !DILocation(line: 1042, column: 3, scope: !617)
!624 = !DILocation(line: 1046, column: 7, scope: !625)
!625 = distinct !DILexicalBlock(scope: !581, file: !489, line: 1046, column: 6)
!626 = !DILocation(line: 1046, column: 6, scope: !581)
!627 = !DILocation(line: 1047, column: 7, scope: !628)
!628 = distinct !DILexicalBlock(scope: !629, file: !489, line: 1047, column: 7)
!629 = distinct !DILexicalBlock(scope: !625, file: !489, line: 1046, column: 30)
!630 = !DILocation(line: 1047, column: 18, scope: !628)
!631 = !DILocation(line: 1047, column: 7, scope: !629)
!632 = !DILocation(line: 1049, column: 30, scope: !633)
!633 = distinct !DILexicalBlock(scope: !628, file: !489, line: 1047, column: 34)
!634 = !DILocation(line: 1049, column: 14, scope: !633)
!635 = !DILocation(line: 1049, column: 12, scope: !633)
!636 = !DILocation(line: 1051, column: 3, scope: !633)
!637 = !DILocation(line: 1053, column: 30, scope: !638)
!638 = distinct !DILexicalBlock(scope: !628, file: !489, line: 1051, column: 10)
!639 = !DILocation(line: 1053, column: 14, scope: !638)
!640 = !DILocation(line: 1053, column: 12, scope: !638)
!641 = !DILocation(line: 1054, column: 5, scope: !638)
!642 = !DILocation(line: 1054, column: 16, scope: !638)
!643 = !DILocation(line: 1056, column: 2, scope: !629)
!644 = !DILocation(line: 1058, column: 9, scope: !581)
!645 = !DILocation(line: 1058, column: 2, scope: !581)
!646 = !DILocation(line: 1059, column: 1, scope: !581)
!647 = distinct !DISubprogram(name: "fault_handle", scope: !489, file: !489, line: 842, type: !648, scopeLine: 843, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !650)
!648 = !DISubroutineType(types: !649)
!649 = !{!104, !120, !119, !584}
!650 = !{!651, !652, !653, !654}
!651 = !DILocalVariable(name: "esf", arg: 1, scope: !647, file: !489, line: 842, type: !120)
!652 = !DILocalVariable(name: "fault", arg: 2, scope: !647, file: !489, line: 842, type: !119)
!653 = !DILocalVariable(name: "recoverable", arg: 3, scope: !647, file: !489, line: 842, type: !584)
!654 = !DILocalVariable(name: "reason", scope: !647, file: !489, line: 844, type: !104)
!655 = !DILocation(line: 842, column: 44, scope: !647)
!656 = !DILocation(line: 842, column: 53, scope: !647)
!657 = !DILocation(line: 842, column: 67, scope: !647)
!658 = !DILocation(line: 844, column: 2, scope: !647)
!659 = !DILocation(line: 844, column: 11, scope: !647)
!660 = !DILocation(line: 846, column: 3, scope: !647)
!661 = !DILocation(line: 846, column: 15, scope: !647)
!662 = !DILocation(line: 848, column: 10, scope: !647)
!663 = !DILocation(line: 848, column: 2, scope: !647)
!664 = !DILocation(line: 850, column: 23, scope: !665)
!665 = distinct !DILexicalBlock(scope: !647, file: !489, line: 848, column: 17)
!666 = !DILocation(line: 850, column: 28, scope: !665)
!667 = !DILocation(line: 850, column: 12, scope: !665)
!668 = !DILocation(line: 850, column: 10, scope: !665)
!669 = !DILocation(line: 851, column: 3, scope: !665)
!670 = !DILocation(line: 876, column: 22, scope: !665)
!671 = !DILocation(line: 876, column: 27, scope: !665)
!672 = !DILocation(line: 876, column: 3, scope: !665)
!673 = !DILocation(line: 877, column: 3, scope: !665)
!674 = !DILocation(line: 880, column: 8, scope: !675)
!675 = distinct !DILexicalBlock(scope: !647, file: !489, line: 880, column: 6)
!676 = !DILocation(line: 880, column: 7, scope: !675)
!677 = !DILocation(line: 880, column: 6, scope: !675)
!678 = !DILocation(line: 880, column: 21, scope: !675)
!679 = !DILocation(line: 880, column: 6, scope: !647)
!680 = !DILocation(line: 882, column: 14, scope: !681)
!681 = distinct !DILexicalBlock(scope: !675, file: !489, line: 880, column: 27)
!682 = !DILocation(line: 882, column: 19, scope: !681)
!683 = !DILocation(line: 882, column: 3, scope: !681)
!684 = !DILocation(line: 883, column: 2, scope: !681)
!685 = !DILocation(line: 885, column: 9, scope: !647)
!686 = !DILocation(line: 886, column: 1, scope: !647)
!687 = !DILocation(line: 885, column: 2, scope: !647)
!688 = !DISubprogram(name: "z_arm_fatal_error", scope: !689, file: !689, line: 79, type: !690, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !286)
!689 = !DIFile(filename: "arch/arm/include/cortex_m/kernel_arch_func.h", directory: "/home/sri/zephyrproject/zephyr")
!690 = !DISubroutineType(types: !691)
!691 = !{null, !106, !692}
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 32)
!693 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !121)
!694 = distinct !DISubprogram(name: "z_arm_fault_init", scope: !489, file: !489, line: 1167, type: !695, scopeLine: 1168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !286)
!695 = !DISubroutineType(types: !696)
!696 = !{null}
!697 = !DILocation(line: 1196, column: 1, scope: !694)
!698 = !DISubprogram(name: "z_timeout_expires", scope: !269, file: !269, line: 642, type: !699, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !286)
!699 = !DISubroutineType(types: !700)
!700 = !{!330, !701}
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 32)
!702 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !238)
!703 = !DISubprogram(name: "z_timeout_remaining", scope: !269, file: !269, line: 643, type: !699, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !286)
!704 = distinct !DISubprogram(name: "sys_sflist_is_empty", scope: !418, file: !418, line: 335, type: !705, scopeLine: 335, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !708)
!705 = !DISubroutineType(types: !706)
!706 = !{!502, !707}
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 32)
!708 = !{!709}
!709 = !DILocalVariable(name: "list", arg: 1, scope: !704, file: !418, line: 335, type: !707)
!710 = !DILocation(line: 335, column: 55, scope: !704)
!711 = !DILocation(line: 335, column: 92, scope: !704)
!712 = !DILocation(line: 335, column: 71, scope: !704)
!713 = !DILocation(line: 335, column: 98, scope: !704)
!714 = !DILocation(line: 335, column: 63, scope: !704)
!715 = distinct !DISubprogram(name: "sys_sflist_peek_head", scope: !418, file: !418, line: 255, type: !716, scopeLine: 256, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !718)
!716 = !DISubroutineType(types: !717)
!717 = !{!422, !707}
!718 = !{!719}
!719 = !DILocalVariable(name: "list", arg: 1, scope: !715, file: !418, line: 255, type: !707)
!720 = !DILocation(line: 255, column: 64, scope: !715)
!721 = !DILocation(line: 257, column: 9, scope: !715)
!722 = !DILocation(line: 257, column: 15, scope: !715)
!723 = !DILocation(line: 257, column: 2, scope: !715)
!724 = distinct !DISubprogram(name: "hard_fault", scope: !489, file: !489, line: 765, type: !725, scopeLine: 766, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !727)
!725 = !DISubroutineType(types: !726)
!726 = !{!104, !120, !584}
!727 = !{!728, !729, !730}
!728 = !DILocalVariable(name: "esf", arg: 1, scope: !724, file: !489, line: 765, type: !120)
!729 = !DILocalVariable(name: "recoverable", arg: 2, scope: !724, file: !489, line: 765, type: !584)
!730 = !DILocalVariable(name: "reason", scope: !724, file: !489, line: 767, type: !104)
!731 = !DILocation(line: 765, column: 42, scope: !724)
!732 = !DILocation(line: 765, column: 54, scope: !724)
!733 = !DILocation(line: 767, column: 2, scope: !724)
!734 = !DILocation(line: 767, column: 11, scope: !724)
!735 = !DILocation(line: 769, column: 2, scope: !724)
!736 = !DILocation(line: 769, column: 88, scope: !737)
!737 = distinct !DILexicalBlock(scope: !738, file: !489, line: 769, column: 86)
!738 = distinct !DILexicalBlock(scope: !739, file: !489, line: 769, column: 11)
!739 = distinct !DILexicalBlock(scope: !724, file: !489, line: 769, column: 5)
!740 = !DILocation(line: 769, column: 385, scope: !739)
!741 = !DILocation(line: 781, column: 35, scope: !742)
!742 = distinct !DILexicalBlock(scope: !724, file: !489, line: 781, column: 6)
!743 = !DILocation(line: 781, column: 40, scope: !742)
!744 = !DILocation(line: 781, column: 46, scope: !742)
!745 = !DILocation(line: 781, column: 6, scope: !742)
!746 = !DILocation(line: 781, column: 50, scope: !742)
!747 = !DILocation(line: 781, column: 78, scope: !742)
!748 = !DILocation(line: 781, column: 53, scope: !742)
!749 = !DILocation(line: 781, column: 6, scope: !724)
!750 = !DILocation(line: 782, column: 3, scope: !751)
!751 = distinct !DILexicalBlock(scope: !742, file: !489, line: 781, column: 84)
!752 = !DILocation(line: 782, column: 89, scope: !753)
!753 = distinct !DILexicalBlock(scope: !754, file: !489, line: 782, column: 87)
!754 = distinct !DILexicalBlock(scope: !755, file: !489, line: 782, column: 12)
!755 = distinct !DILexicalBlock(scope: !751, file: !489, line: 782, column: 6)
!756 = !DILocation(line: 782, column: 407, scope: !755)
!757 = !DILocation(line: 783, column: 12, scope: !751)
!758 = !DILocation(line: 783, column: 17, scope: !751)
!759 = !DILocation(line: 783, column: 23, scope: !751)
!760 = !DILocation(line: 783, column: 10, scope: !751)
!761 = !DILocation(line: 784, column: 2, scope: !751)
!762 = !DILocation(line: 786, column: 42, scope: !724)
!763 = !DILocation(line: 786, column: 17, scope: !724)
!764 = !DILocation(line: 786, column: 3, scope: !724)
!765 = !DILocation(line: 786, column: 15, scope: !724)
!766 = !DILocation(line: 822, column: 9, scope: !724)
!767 = !DILocation(line: 823, column: 1, scope: !724)
!768 = !DILocation(line: 822, column: 2, scope: !724)
!769 = distinct !DISubprogram(name: "reserved_exception", scope: !489, file: !489, line: 832, type: !770, scopeLine: 833, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !772)
!770 = !DISubroutineType(types: !771)
!771 = !{null, !692, !119}
!772 = !{!773, !774}
!773 = !DILocalVariable(name: "esf", arg: 1, scope: !769, file: !489, line: 832, type: !692)
!774 = !DILocalVariable(name: "fault", arg: 2, scope: !769, file: !489, line: 832, type: !119)
!775 = !DILocation(line: 832, column: 52, scope: !769)
!776 = !DILocation(line: 832, column: 61, scope: !769)
!777 = !DILocation(line: 834, column: 9, scope: !769)
!778 = !DILocation(line: 836, column: 2, scope: !769)
!779 = !DILocation(line: 836, column: 88, scope: !780)
!780 = distinct !DILexicalBlock(scope: !781, file: !489, line: 836, column: 86)
!781 = distinct !DILexicalBlock(scope: !782, file: !489, line: 836, column: 11)
!782 = distinct !DILexicalBlock(scope: !769, file: !489, line: 836, column: 5)
!783 = !DILocation(line: 839, column: 1, scope: !769)
!784 = distinct !DISubprogram(name: "fault_show", scope: !489, file: !489, line: 168, type: !770, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !785)
!785 = !{!786, !787}
!786 = !DILocalVariable(name: "esf", arg: 1, scope: !784, file: !489, line: 168, type: !692)
!787 = !DILocalVariable(name: "fault", arg: 2, scope: !784, file: !489, line: 168, type: !119)
!788 = !DILocation(line: 168, column: 44, scope: !784)
!789 = !DILocation(line: 168, column: 53, scope: !784)
!790 = !DILocation(line: 170, column: 8, scope: !784)
!791 = !DILocation(line: 171, column: 8, scope: !784)
!792 = !DILocation(line: 172, column: 1, scope: !784)
!793 = distinct !DISubprogram(name: "z_arm_is_pc_valid", scope: !489, file: !489, line: 734, type: !794, scopeLine: 735, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !796)
!794 = !DISubroutineType(types: !795)
!795 = !{!502, !164}
!796 = !{!797}
!797 = !DILocalVariable(name: "pc", arg: 1, scope: !793, file: !489, line: 734, type: !164)
!798 = !DILocation(line: 734, column: 49, scope: !793)
!799 = !DILocation(line: 737, column: 44, scope: !800)
!800 = distinct !DILexicalBlock(scope: !793, file: !489, line: 737, column: 6)
!801 = !DILocation(line: 737, column: 41, scope: !800)
!802 = !DILocation(line: 737, column: 48, scope: !800)
!803 = !DILocation(line: 737, column: 52, scope: !800)
!804 = !DILocation(line: 737, column: 55, scope: !800)
!805 = !DILocation(line: 737, column: 6, scope: !793)
!806 = !DILocation(line: 738, column: 3, scope: !807)
!807 = distinct !DILexicalBlock(scope: !800, file: !489, line: 737, column: 91)
!808 = !DILocation(line: 742, column: 40, scope: !809)
!809 = distinct !DILexicalBlock(scope: !793, file: !489, line: 742, column: 6)
!810 = !DILocation(line: 742, column: 37, scope: !809)
!811 = !DILocation(line: 742, column: 44, scope: !809)
!812 = !DILocation(line: 742, column: 48, scope: !809)
!813 = !DILocation(line: 742, column: 51, scope: !809)
!814 = !DILocation(line: 742, column: 6, scope: !793)
!815 = !DILocation(line: 743, column: 3, scope: !816)
!816 = distinct !DILexicalBlock(scope: !809, file: !489, line: 742, column: 83)
!817 = !DILocation(line: 753, column: 2, scope: !793)
!818 = !DILocation(line: 754, column: 1, scope: !793)
!819 = distinct !DISubprogram(name: "z_arm_is_synchronous_svc", scope: !489, file: !489, line: 690, type: !820, scopeLine: 691, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !822)
!820 = !DISubroutineType(types: !821)
!821 = !{!502, !120}
!822 = !{!823, !824, !825}
!823 = !DILocalVariable(name: "esf", arg: 1, scope: !819, file: !489, line: 690, type: !120)
!824 = !DILocalVariable(name: "ret_addr", scope: !819, file: !489, line: 692, type: !165)
!825 = !DILocalVariable(name: "fault_insn", scope: !819, file: !489, line: 712, type: !166)
!826 = !DILocation(line: 690, column: 60, scope: !819)
!827 = !DILocation(line: 692, column: 2, scope: !819)
!828 = !DILocation(line: 692, column: 12, scope: !819)
!829 = !DILocation(line: 692, column: 35, scope: !819)
!830 = !DILocation(line: 692, column: 40, scope: !819)
!831 = !DILocation(line: 692, column: 46, scope: !819)
!832 = !DILocation(line: 692, column: 23, scope: !819)
!833 = !DILocation(line: 712, column: 2, scope: !819)
!834 = !DILocation(line: 712, column: 11, scope: !819)
!835 = !DILocation(line: 712, column: 26, scope: !819)
!836 = !DILocation(line: 712, column: 35, scope: !819)
!837 = !DILocation(line: 712, column: 24, scope: !819)
!838 = !DILocation(line: 725, column: 8, scope: !839)
!839 = distinct !DILexicalBlock(scope: !819, file: !489, line: 725, column: 6)
!840 = !DILocation(line: 725, column: 19, scope: !839)
!841 = !DILocation(line: 725, column: 29, scope: !839)
!842 = !DILocation(line: 725, column: 40, scope: !839)
!843 = !DILocation(line: 726, column: 5, scope: !839)
!844 = !DILocation(line: 726, column: 16, scope: !839)
!845 = !DILocation(line: 726, column: 26, scope: !839)
!846 = !DILocation(line: 725, column: 6, scope: !819)
!847 = !DILocation(line: 727, column: 3, scope: !848)
!848 = distinct !DILexicalBlock(scope: !839, file: !489, line: 726, column: 33)
!849 = !DILocation(line: 730, column: 2, scope: !819)
!850 = !DILocation(line: 731, column: 1, scope: !819)
!851 = distinct !DISubprogram(name: "memory_fault_recoverable", scope: !489, file: !489, line: 188, type: !852, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !854)
!852 = !DISubroutineType(types: !853)
!853 = !{!502, !120, !502}
!854 = !{!855, !856}
!855 = !DILocalVariable(name: "esf", arg: 1, scope: !851, file: !489, line: 188, type: !120)
!856 = !DILocalVariable(name: "synchronous", arg: 2, scope: !851, file: !489, line: 188, type: !502)
!857 = !DILocation(line: 188, column: 53, scope: !851)
!858 = !DILocation(line: 188, column: 64, scope: !851)
!859 = !DILocation(line: 211, column: 2, scope: !851)
