; ModuleID = '../bc_files/main.bc'
source_filename = "/home/sri/zephyrproject/zephyr/samples/basic/blinky_pwm/src/main.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-arm-none-eabi"

%struct.pwm_dt_spec = type { ptr, i32, i32, i16 }
%struct.device = type { ptr, ptr, ptr, ptr, ptr }
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
%struct.pwm_driver_api = type { ptr, ptr }

@.str = private unnamed_addr constant [18 x i8] c"PWM-based blinky\0A\00", align 1, !dbg !0
@pwm_led0 = internal constant %struct.pwm_dt_spec { ptr @__device_dts_ord_34, i32 1, i32 20000000, i16 0 }, align 4, !dbg !7
@.str.1 = private unnamed_addr constant [35 x i8] c"Error: PWM device %s is not ready\0A\00", align 1, !dbg !148
@.str.2 = private unnamed_addr constant [31 x i8] c"Calibrating for channel %d...\0A\00", align 1, !dbg !153
@.str.3 = private unnamed_addr constant [58 x i8] c"Error: PWM device does not support a period at least %lu\0A\00", align 1, !dbg !158
@.str.4 = private unnamed_addr constant [55 x i8] c"Done calibrating; maximum/minimum periods %u/%lu nsec\0A\00", align 1, !dbg !163
@.str.5 = private unnamed_addr constant [37 x i8] c"Error %d: failed to set pulse width\0A\00", align 1, !dbg !168
@__device_dts_ord_34 = external constant %struct.device, align 4
@__ARM_use_no_argv = global i32 1, section ".ARM.use_no_argv", align 4
@llvm.used = appending global [1 x ptr] [ptr @__ARM_use_no_argv], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_k_object_access_grant(ptr noundef %0, ptr noundef %1) #0 !dbg !189 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !303, metadata !DIExpression()), !dbg !304
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !305, metadata !DIExpression()), !dbg !306
  %5 = load ptr, ptr %3, align 4, !dbg !307
  %6 = load ptr, ptr %4, align 4, !dbg !308
  ret void, !dbg !309
}

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_k_object_release(ptr noundef %0) #0 !dbg !310 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !313, metadata !DIExpression()), !dbg !314
  %3 = load ptr, ptr %2, align 4, !dbg !315
  ret void, !dbg !316
}

; Function Attrs: noinline nounwind optnone
define internal ptr @z_impl_k_object_alloc(i8 noundef zeroext %0) #0 !dbg !317 {
  %2 = alloca i8, align 1
  store i8 %0, ptr %2, align 1
  call void @llvm.dbg.declare(metadata ptr %2, metadata !320, metadata !DIExpression()), !dbg !321
  %3 = load i8, ptr %2, align 1, !dbg !322
  ret ptr null, !dbg !323
}

; Function Attrs: noinline nounwind optnone
define internal ptr @z_impl_k_object_alloc_size(i8 noundef zeroext %0, i32 noundef %1) #0 !dbg !324 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8 %0, ptr %3, align 1
  call void @llvm.dbg.declare(metadata ptr %3, metadata !327, metadata !DIExpression()), !dbg !328
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !329, metadata !DIExpression()), !dbg !330
  %5 = load i8, ptr %3, align 1, !dbg !331
  %6 = load i32, ptr %4, align 4, !dbg !332
  ret ptr null, !dbg !333
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_thread_timeout_expires_ticks(ptr noundef %0) #0 !dbg !334 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !339, metadata !DIExpression()), !dbg !340
  %3 = load ptr, ptr %2, align 4, !dbg !341
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !342
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !343
  %6 = call i64 @z_timeout_expires(ptr noundef %5), !dbg !344
  ret i64 %6, !dbg !345
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_thread_timeout_remaining_ticks(ptr noundef %0) #0 !dbg !346 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !347, metadata !DIExpression()), !dbg !348
  %3 = load ptr, ptr %2, align 4, !dbg !349
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !350
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !351
  %6 = call i64 @z_timeout_remaining(ptr noundef %5), !dbg !352
  ret i64 %6, !dbg !353
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_timer_expires_ticks(ptr noundef %0) #0 !dbg !354 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !376, metadata !DIExpression()), !dbg !377
  %3 = load ptr, ptr %2, align 4, !dbg !378
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !379
  %5 = call i64 @z_timeout_expires(ptr noundef %4), !dbg !380
  ret i64 %5, !dbg !381
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_timer_remaining_ticks(ptr noundef %0) #0 !dbg !382 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !383, metadata !DIExpression()), !dbg !384
  %3 = load ptr, ptr %2, align 4, !dbg !385
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !386
  %5 = call i64 @z_timeout_remaining(ptr noundef %4), !dbg !387
  ret i64 %5, !dbg !388
}

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_k_timer_user_data_set(ptr noundef %0, ptr noundef %1) #0 !dbg !389 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !392, metadata !DIExpression()), !dbg !393
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !394, metadata !DIExpression()), !dbg !395
  %5 = load ptr, ptr %4, align 4, !dbg !396
  %6 = load ptr, ptr %3, align 4, !dbg !397
  %7 = getelementptr inbounds %struct.k_timer, ptr %6, i32 0, i32 6, !dbg !398
  store ptr %5, ptr %7, align 4, !dbg !399
  ret void, !dbg !400
}

; Function Attrs: noinline nounwind optnone
define internal ptr @z_impl_k_timer_user_data_get(ptr noundef %0) #0 !dbg !401 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !404, metadata !DIExpression()), !dbg !405
  %3 = load ptr, ptr %2, align 4, !dbg !406
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 6, !dbg !407
  %5 = load ptr, ptr %4, align 4, !dbg !407
  ret ptr %5, !dbg !408
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_queue_is_empty(ptr noundef %0) #0 !dbg !409 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !430, metadata !DIExpression()), !dbg !431
  %3 = load ptr, ptr %2, align 4, !dbg !432
  %4 = getelementptr inbounds %struct.k_queue, ptr %3, i32 0, i32 0, !dbg !433
  %5 = call zeroext i1 @sys_sflist_is_empty(ptr noundef %4), !dbg !434
  %6 = zext i1 %5 to i32, !dbg !435
  ret i32 %6, !dbg !436
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_sem_count_get(ptr noundef %0) #0 !dbg !437 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !446, metadata !DIExpression()), !dbg !447
  %3 = load ptr, ptr %2, align 4, !dbg !448
  %4 = getelementptr inbounds %struct.k_sem, ptr %3, i32 0, i32 1, !dbg !449
  %5 = load i32, ptr %4, align 4, !dbg !449
  ret i32 %5, !dbg !450
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_msgq_num_free_get(ptr noundef %0) #0 !dbg !451 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !468, metadata !DIExpression()), !dbg !469
  %3 = load ptr, ptr %2, align 4, !dbg !470
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 3, !dbg !471
  %5 = load i32, ptr %4, align 4, !dbg !471
  %6 = load ptr, ptr %2, align 4, !dbg !472
  %7 = getelementptr inbounds %struct.k_msgq, ptr %6, i32 0, i32 8, !dbg !473
  %8 = load i32, ptr %7, align 4, !dbg !473
  %9 = sub i32 %5, %8, !dbg !474
  ret i32 %9, !dbg !475
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_msgq_num_used_get(ptr noundef %0) #0 !dbg !476 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !477, metadata !DIExpression()), !dbg !478
  %3 = load ptr, ptr %2, align 4, !dbg !479
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 8, !dbg !480
  %5 = load i32, ptr %4, align 4, !dbg !480
  ret i32 %5, !dbg !481
}

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @z_impl_device_is_ready(ptr noundef %0) #0 !dbg !482 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !485, metadata !DIExpression()), !dbg !486
  %3 = load ptr, ptr %2, align 4, !dbg !487
  %4 = call zeroext i1 @z_device_is_ready(ptr noundef %3), !dbg !488
  ret i1 %4, !dbg !489
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_pwm_set_cycles(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i16 noundef zeroext %4) #0 !dbg !490 {
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i16, align 2
  %12 = alloca ptr, align 4
  store ptr %0, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !491, metadata !DIExpression()), !dbg !492
  store i32 %1, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !493, metadata !DIExpression()), !dbg !494
  store i32 %2, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !495, metadata !DIExpression()), !dbg !496
  store i32 %3, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !497, metadata !DIExpression()), !dbg !498
  store i16 %4, ptr %11, align 2
  call void @llvm.dbg.declare(metadata ptr %11, metadata !499, metadata !DIExpression()), !dbg !500
  call void @llvm.dbg.declare(metadata ptr %12, metadata !501, metadata !DIExpression()), !dbg !502
  %13 = load ptr, ptr %7, align 4, !dbg !503
  %14 = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 2, !dbg !504
  %15 = load ptr, ptr %14, align 4, !dbg !504
  store ptr %15, ptr %12, align 4, !dbg !502
  %16 = load i32, ptr %10, align 4, !dbg !505
  %17 = load i32, ptr %9, align 4, !dbg !507
  %18 = icmp ugt i32 %16, %17, !dbg !508
  br i1 %18, label %19, label %20, !dbg !509

19:                                               ; preds = %5
  store i32 -5, ptr %6, align 4, !dbg !510
  br label %30, !dbg !510

20:                                               ; preds = %5
  %21 = load ptr, ptr %12, align 4, !dbg !512
  %22 = getelementptr inbounds %struct.pwm_driver_api, ptr %21, i32 0, i32 0, !dbg !513
  %23 = load ptr, ptr %22, align 4, !dbg !513
  %24 = load ptr, ptr %7, align 4, !dbg !514
  %25 = load i32, ptr %8, align 4, !dbg !515
  %26 = load i32, ptr %9, align 4, !dbg !516
  %27 = load i32, ptr %10, align 4, !dbg !517
  %28 = load i16, ptr %11, align 2, !dbg !518
  %29 = call i32 %23(ptr noundef %24, i32 noundef %25, i32 noundef %26, i32 noundef %27, i16 noundef zeroext %28), !dbg !512
  store i32 %29, ptr %6, align 4, !dbg !519
  br label %30, !dbg !519

30:                                               ; preds = %20, %19
  %31 = load i32, ptr %6, align 4, !dbg !520
  ret i32 %31, !dbg !520
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_pwm_get_cycles_per_sec(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 !dbg !521 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !522, metadata !DIExpression()), !dbg !523
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !524, metadata !DIExpression()), !dbg !525
  store ptr %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !526, metadata !DIExpression()), !dbg !527
  call void @llvm.dbg.declare(metadata ptr %7, metadata !528, metadata !DIExpression()), !dbg !529
  %8 = load ptr, ptr %4, align 4, !dbg !530
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 2, !dbg !531
  %10 = load ptr, ptr %9, align 4, !dbg !531
  store ptr %10, ptr %7, align 4, !dbg !529
  %11 = load ptr, ptr %7, align 4, !dbg !532
  %12 = getelementptr inbounds %struct.pwm_driver_api, ptr %11, i32 0, i32 1, !dbg !533
  %13 = load ptr, ptr %12, align 4, !dbg !533
  %14 = load ptr, ptr %4, align 4, !dbg !534
  %15 = load i32, ptr %5, align 4, !dbg !535
  %16 = load ptr, ptr %6, align 4, !dbg !536
  %17 = call i32 %13(ptr noundef %14, i32 noundef %15, ptr noundef %16), !dbg !532
  ret i32 %17, !dbg !537
}

; Function Attrs: noinline nounwind optnone
define hidden i32 @main() #0 !dbg !538 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca %struct.k_timeout_t, align 8
  store i32 0, ptr %1, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !541, metadata !DIExpression()), !dbg !542
  call void @llvm.dbg.declare(metadata ptr %3, metadata !543, metadata !DIExpression()), !dbg !544
  call void @llvm.dbg.declare(metadata ptr %4, metadata !545, metadata !DIExpression()), !dbg !546
  store i8 0, ptr %4, align 1, !dbg !546
  call void @llvm.dbg.declare(metadata ptr %5, metadata !547, metadata !DIExpression()), !dbg !548
  call void (ptr, ...) @printk(ptr noundef @.str), !dbg !549
  %7 = call zeroext i1 @pwm_is_ready_dt(ptr noundef @pwm_led0), !dbg !550
  br i1 %7, label %12, label %8, !dbg !552

8:                                                ; preds = %0
  %9 = load ptr, ptr @pwm_led0, align 4, !dbg !553
  %10 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 0, !dbg !555
  %11 = load ptr, ptr %10, align 4, !dbg !555
  call void (ptr, ...) @printk(ptr noundef @.str.1, ptr noundef %11), !dbg !556
  store i32 0, ptr %1, align 4, !dbg !557
  br label %67, !dbg !557

12:                                               ; preds = %0
  %13 = load i32, ptr getelementptr inbounds (%struct.pwm_dt_spec, ptr @pwm_led0, i32 0, i32 1), align 4, !dbg !558
  call void (ptr, ...) @printk(ptr noundef @.str.2, i32 noundef %13), !dbg !559
  store i32 1000000000, ptr %2, align 4, !dbg !560
  br label %14, !dbg !561

14:                                               ; preds = %26, %12
  %15 = load i32, ptr %2, align 4, !dbg !562
  %16 = load i32, ptr %2, align 4, !dbg !563
  %17 = udiv i32 %16, 2, !dbg !564
  %18 = call i32 @pwm_set_dt(ptr noundef @pwm_led0, i32 noundef %15, i32 noundef %17), !dbg !565
  %19 = icmp ne i32 %18, 0, !dbg !561
  br i1 %19, label %20, label %27, !dbg !561

20:                                               ; preds = %14
  %21 = load i32, ptr %2, align 4, !dbg !566
  %22 = udiv i32 %21, 2, !dbg !566
  store i32 %22, ptr %2, align 4, !dbg !566
  %23 = load i32, ptr %2, align 4, !dbg !568
  %24 = icmp ult i32 %23, 31250000, !dbg !570
  br i1 %24, label %25, label %26, !dbg !571

25:                                               ; preds = %20
  call void (ptr, ...) @printk(ptr noundef @.str.3, i32 noundef 31250000), !dbg !572
  store i32 0, ptr %1, align 4, !dbg !574
  br label %67, !dbg !574

26:                                               ; preds = %20
  br label %14, !dbg !561, !llvm.loop !575

27:                                               ; preds = %14
  %28 = load i32, ptr %2, align 4, !dbg !577
  call void (ptr, ...) @printk(ptr noundef @.str.4, i32 noundef %28, i32 noundef 7812500), !dbg !578
  %29 = load i32, ptr %2, align 4, !dbg !579
  store i32 %29, ptr %3, align 4, !dbg !580
  br label %30, !dbg !581

30:                                               ; preds = %27, %62
  %31 = load i32, ptr %3, align 4, !dbg !582
  %32 = load i32, ptr %3, align 4, !dbg !584
  %33 = udiv i32 %32, 2, !dbg !585
  %34 = call i32 @pwm_set_dt(ptr noundef @pwm_led0, i32 noundef %31, i32 noundef %33), !dbg !586
  store i32 %34, ptr %5, align 4, !dbg !587
  %35 = load i32, ptr %5, align 4, !dbg !588
  %36 = icmp ne i32 %35, 0, !dbg !588
  br i1 %36, label %37, label %39, !dbg !590

37:                                               ; preds = %30
  %38 = load i32, ptr %5, align 4, !dbg !591
  call void (ptr, ...) @printk(ptr noundef @.str.5, i32 noundef %38), !dbg !593
  store i32 0, ptr %1, align 4, !dbg !594
  br label %67, !dbg !594

39:                                               ; preds = %30
  %40 = load i8, ptr %4, align 1, !dbg !595
  %41 = zext i8 %40 to i32, !dbg !595
  %42 = icmp ne i32 %41, 0, !dbg !595
  br i1 %42, label %43, label %46, !dbg !595

43:                                               ; preds = %39
  %44 = load i32, ptr %3, align 4, !dbg !596
  %45 = mul i32 %44, 2, !dbg !597
  br label %49, !dbg !595

46:                                               ; preds = %39
  %47 = load i32, ptr %3, align 4, !dbg !598
  %48 = udiv i32 %47, 2, !dbg !599
  br label %49, !dbg !595

49:                                               ; preds = %46, %43
  %50 = phi i32 [ %45, %43 ], [ %48, %46 ], !dbg !595
  store i32 %50, ptr %3, align 4, !dbg !600
  %51 = load i32, ptr %3, align 4, !dbg !601
  %52 = load i32, ptr %2, align 4, !dbg !603
  %53 = icmp ugt i32 %51, %52, !dbg !604
  br i1 %53, label %54, label %57, !dbg !605

54:                                               ; preds = %49
  %55 = load i32, ptr %2, align 4, !dbg !606
  %56 = udiv i32 %55, 2, !dbg !608
  store i32 %56, ptr %3, align 4, !dbg !609
  store i8 0, ptr %4, align 1, !dbg !610
  br label %62, !dbg !611

57:                                               ; preds = %49
  %58 = load i32, ptr %3, align 4, !dbg !612
  %59 = icmp ult i32 %58, 7812500, !dbg !614
  br i1 %59, label %60, label %61, !dbg !615

60:                                               ; preds = %57
  store i32 15625000, ptr %3, align 4, !dbg !616
  store i8 1, ptr %4, align 1, !dbg !618
  br label %61, !dbg !619

61:                                               ; preds = %60, %57
  br label %62

62:                                               ; preds = %61, %54
  %63 = getelementptr inbounds %struct.k_timeout_t, ptr %6, i32 0, i32 0, !dbg !620
  store i64 40000, ptr %63, align 8, !dbg !620
  %64 = getelementptr inbounds %struct.k_timeout_t, ptr %6, i32 0, i32 0, !dbg !621
  %65 = load [1 x i64], ptr %64, align 8, !dbg !621
  %66 = call i32 @k_sleep([1 x i64] %65), !dbg !621
  br label %30, !dbg !581, !llvm.loop !622

67:                                               ; preds = %37, %25, %8
  %68 = load i32, ptr %1, align 4, !dbg !624
  ret i32 %68, !dbg !624
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @printk(ptr noundef, ...) #2

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @pwm_is_ready_dt(ptr noundef %0) #0 !dbg !625 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !629, metadata !DIExpression()), !dbg !630
  %3 = load ptr, ptr %2, align 4, !dbg !631
  %4 = getelementptr inbounds %struct.pwm_dt_spec, ptr %3, i32 0, i32 0, !dbg !632
  %5 = load ptr, ptr %4, align 4, !dbg !632
  %6 = call zeroext i1 @device_is_ready(ptr noundef %5), !dbg !633
  ret i1 %6, !dbg !634
}

; Function Attrs: noinline nounwind optnone
define internal i32 @pwm_set_dt(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 !dbg !635 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !638, metadata !DIExpression()), !dbg !639
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !640, metadata !DIExpression()), !dbg !641
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !642, metadata !DIExpression()), !dbg !643
  %7 = load ptr, ptr %4, align 4, !dbg !644
  %8 = getelementptr inbounds %struct.pwm_dt_spec, ptr %7, i32 0, i32 0, !dbg !645
  %9 = load ptr, ptr %8, align 4, !dbg !645
  %10 = load ptr, ptr %4, align 4, !dbg !646
  %11 = getelementptr inbounds %struct.pwm_dt_spec, ptr %10, i32 0, i32 1, !dbg !647
  %12 = load i32, ptr %11, align 4, !dbg !647
  %13 = load i32, ptr %5, align 4, !dbg !648
  %14 = load i32, ptr %6, align 4, !dbg !649
  %15 = load ptr, ptr %4, align 4, !dbg !650
  %16 = getelementptr inbounds %struct.pwm_dt_spec, ptr %15, i32 0, i32 3, !dbg !651
  %17 = load i16, ptr %16, align 4, !dbg !651
  %18 = call i32 @pwm_set(ptr noundef %9, i32 noundef %12, i32 noundef %13, i32 noundef %14, i16 noundef zeroext %17), !dbg !652
  ret i32 %18, !dbg !653
}

; Function Attrs: noinline nounwind optnone
define internal i32 @k_sleep([1 x i64] %0) #0 !dbg !654 {
  %2 = alloca %struct.k_timeout_t, align 8
  %3 = getelementptr inbounds %struct.k_timeout_t, ptr %2, i32 0, i32 0
  store [1 x i64] %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !659, metadata !DIExpression()), !dbg !660
  br label %4, !dbg !661

4:                                                ; preds = %1
  call void asm sideeffect "", "~{memory}"() #3, !dbg !662, !srcloc !664
  br label %5, !dbg !665

5:                                                ; preds = %4
  %6 = getelementptr inbounds %struct.k_timeout_t, ptr %2, i32 0, i32 0, !dbg !666
  %7 = load [1 x i64], ptr %6, align 8, !dbg !666
  %8 = call i32 @z_impl_k_sleep([1 x i64] %7), !dbg !666
  ret i32 %8, !dbg !667
}

declare i64 @z_timeout_expires(ptr noundef) #2

declare i64 @z_timeout_remaining(ptr noundef) #2

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @sys_sflist_is_empty(ptr noundef %0) #0 !dbg !668 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !672, metadata !DIExpression()), !dbg !673
  %3 = load ptr, ptr %2, align 4, !dbg !674
  %4 = call ptr @sys_sflist_peek_head(ptr noundef %3), !dbg !675
  %5 = icmp eq ptr %4, null, !dbg !676
  ret i1 %5, !dbg !677
}

; Function Attrs: noinline nounwind optnone
define internal ptr @sys_sflist_peek_head(ptr noundef %0) #0 !dbg !678 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !681, metadata !DIExpression()), !dbg !682
  %3 = load ptr, ptr %2, align 4, !dbg !683
  %4 = getelementptr inbounds %struct._sflist, ptr %3, i32 0, i32 0, !dbg !684
  %5 = load ptr, ptr %4, align 4, !dbg !684
  ret ptr %5, !dbg !685
}

declare zeroext i1 @z_device_is_ready(ptr noundef) #2

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @device_is_ready(ptr noundef %0) #0 !dbg !686 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !688, metadata !DIExpression()), !dbg !689
  br label %3, !dbg !690

3:                                                ; preds = %1
  call void asm sideeffect "", "~{memory}"() #3, !dbg !691, !srcloc !693
  br label %4, !dbg !694

4:                                                ; preds = %3
  %5 = load ptr, ptr %2, align 4, !dbg !695
  %6 = call zeroext i1 @z_impl_device_is_ready(ptr noundef %5), !dbg !696
  ret i1 %6, !dbg !697
}

; Function Attrs: noinline nounwind optnone
define internal i32 @pwm_set(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i16 noundef zeroext %4) #0 !dbg !698 {
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i16, align 2
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store ptr %0, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !699, metadata !DIExpression()), !dbg !700
  store i32 %1, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !701, metadata !DIExpression()), !dbg !702
  store i32 %2, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !703, metadata !DIExpression()), !dbg !704
  store i32 %3, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !705, metadata !DIExpression()), !dbg !706
  store i16 %4, ptr %11, align 2
  call void @llvm.dbg.declare(metadata ptr %11, metadata !707, metadata !DIExpression()), !dbg !708
  call void @llvm.dbg.declare(metadata ptr %12, metadata !709, metadata !DIExpression()), !dbg !710
  call void @llvm.dbg.declare(metadata ptr %13, metadata !711, metadata !DIExpression()), !dbg !712
  call void @llvm.dbg.declare(metadata ptr %14, metadata !713, metadata !DIExpression()), !dbg !714
  call void @llvm.dbg.declare(metadata ptr %15, metadata !715, metadata !DIExpression()), !dbg !716
  %16 = load ptr, ptr %7, align 4, !dbg !717
  %17 = load i32, ptr %8, align 4, !dbg !718
  %18 = call i32 @pwm_get_cycles_per_sec(ptr noundef %16, i32 noundef %17, ptr noundef %15), !dbg !719
  store i32 %18, ptr %12, align 4, !dbg !720
  %19 = load i32, ptr %12, align 4, !dbg !721
  %20 = icmp slt i32 %19, 0, !dbg !723
  br i1 %20, label %21, label %23, !dbg !724

21:                                               ; preds = %5
  %22 = load i32, ptr %12, align 4, !dbg !725
  store i32 %22, ptr %6, align 4, !dbg !727
  br label %50, !dbg !727

23:                                               ; preds = %5
  %24 = load i32, ptr %9, align 4, !dbg !728
  %25 = zext i32 %24 to i64, !dbg !728
  %26 = load i64, ptr %15, align 8, !dbg !729
  %27 = mul i64 %25, %26, !dbg !730
  %28 = udiv i64 %27, 1000000000, !dbg !731
  store i64 %28, ptr %14, align 8, !dbg !732
  %29 = load i64, ptr %14, align 8, !dbg !733
  %30 = icmp ugt i64 %29, 4294967295, !dbg !735
  br i1 %30, label %31, label %32, !dbg !736

31:                                               ; preds = %23
  store i32 -134, ptr %6, align 4, !dbg !737
  br label %50, !dbg !737

32:                                               ; preds = %23
  %33 = load i32, ptr %10, align 4, !dbg !739
  %34 = zext i32 %33 to i64, !dbg !739
  %35 = load i64, ptr %15, align 8, !dbg !740
  %36 = mul i64 %34, %35, !dbg !741
  %37 = udiv i64 %36, 1000000000, !dbg !742
  store i64 %37, ptr %13, align 8, !dbg !743
  %38 = load i64, ptr %13, align 8, !dbg !744
  %39 = icmp ugt i64 %38, 4294967295, !dbg !746
  br i1 %39, label %40, label %41, !dbg !747

40:                                               ; preds = %32
  store i32 -134, ptr %6, align 4, !dbg !748
  br label %50, !dbg !748

41:                                               ; preds = %32
  %42 = load ptr, ptr %7, align 4, !dbg !750
  %43 = load i32, ptr %8, align 4, !dbg !751
  %44 = load i64, ptr %14, align 8, !dbg !752
  %45 = trunc i64 %44 to i32, !dbg !753
  %46 = load i64, ptr %13, align 8, !dbg !754
  %47 = trunc i64 %46 to i32, !dbg !755
  %48 = load i16, ptr %11, align 2, !dbg !756
  %49 = call i32 @pwm_set_cycles(ptr noundef %42, i32 noundef %43, i32 noundef %45, i32 noundef %47, i16 noundef zeroext %48), !dbg !757
  store i32 %49, ptr %6, align 4, !dbg !758
  br label %50, !dbg !758

50:                                               ; preds = %41, %40, %31, %21
  %51 = load i32, ptr %6, align 4, !dbg !759
  ret i32 %51, !dbg !759
}

; Function Attrs: noinline nounwind optnone
define internal i32 @pwm_get_cycles_per_sec(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 !dbg !760 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !762, metadata !DIExpression()), !dbg !763
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !764, metadata !DIExpression()), !dbg !765
  store ptr %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !766, metadata !DIExpression()), !dbg !767
  br label %7, !dbg !768

7:                                                ; preds = %3
  call void asm sideeffect "", "~{memory}"() #3, !dbg !769, !srcloc !771
  br label %8, !dbg !772

8:                                                ; preds = %7
  %9 = load ptr, ptr %4, align 4, !dbg !773
  %10 = load i32, ptr %5, align 4, !dbg !774
  %11 = load ptr, ptr %6, align 4, !dbg !775
  %12 = call i32 @z_impl_pwm_get_cycles_per_sec(ptr noundef %9, i32 noundef %10, ptr noundef %11), !dbg !776
  ret i32 %12, !dbg !777
}

; Function Attrs: noinline nounwind optnone
define internal i32 @pwm_set_cycles(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i16 noundef zeroext %4) #0 !dbg !778 {
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i16, align 2
  store ptr %0, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !779, metadata !DIExpression()), !dbg !780
  store i32 %1, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !781, metadata !DIExpression()), !dbg !782
  store i32 %2, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !783, metadata !DIExpression()), !dbg !784
  store i32 %3, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !785, metadata !DIExpression()), !dbg !786
  store i16 %4, ptr %10, align 2
  call void @llvm.dbg.declare(metadata ptr %10, metadata !787, metadata !DIExpression()), !dbg !788
  br label %11, !dbg !789

11:                                               ; preds = %5
  call void asm sideeffect "", "~{memory}"() #3, !dbg !790, !srcloc !792
  br label %12, !dbg !793

12:                                               ; preds = %11
  %13 = load ptr, ptr %6, align 4, !dbg !794
  %14 = load i32, ptr %7, align 4, !dbg !795
  %15 = load i32, ptr %8, align 4, !dbg !796
  %16 = load i32, ptr %9, align 4, !dbg !797
  %17 = load i16, ptr %10, align 2, !dbg !798
  %18 = call i32 @z_impl_pwm_set_cycles(ptr noundef %13, i32 noundef %14, i32 noundef %15, i32 noundef %16, i16 noundef zeroext %17), !dbg !799
  ret i32 %18, !dbg !800
}

declare i32 @z_impl_k_sleep([1 x i64]) #2

attributes #0 = { noinline nounwind optnone "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!180, !181, !182, !183, !184, !185, !186, !187}
!llvm.ident = !{!188}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 29, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "samples/basic/blinky_pwm/src/main.c", directory: "/home/sri/zephyrproject/zephyr")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 18)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "pwm_led0", scope: !9, file: !2, line: 17, type: !173, isLocal: true, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C99, file: !10, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, retainedTypes: !95, globals: !147, splitDebugInlining: false, nameTableKind: None)
!10 = !DIFile(filename: "main.c", directory: "/home/sri/zephyrproject/zephyr/build")
!11 = !{!12}
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
!95 = !{!96, !101, !103, !104, !105, !136}
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_ticks_t", file: !97, line: 46, baseType: !98)
!97 = !DIFile(filename: "include/zephyr/sys_clock.h", directory: "/home/sri/zephyrproject/zephyr")
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !99, line: 59, baseType: !100)
!99 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/stdint.h", directory: "")
!100 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !99, line: 65, baseType: !102)
!102 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!104 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 32)
!106 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !107)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pwm_driver_api", file: !108, line: 436, size: 64, elements: !109)
!108 = !DIFile(filename: "include/zephyr/drivers/pwm.h", directory: "/home/sri/zephyrproject/zephyr")
!109 = !{!110, !141}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "set_cycles", scope: !107, file: !108, line: 437, baseType: !111, size: 32)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "pwm_set_cycles_t", file: !108, line: 400, baseType: !112)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 32)
!113 = !DISubroutineType(types: !114)
!114 = !{!104, !115, !136, !136, !136, !138}
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 32)
!116 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !117)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !118, line: 381, size: 160, elements: !119)
!118 = !DIFile(filename: "include/zephyr/device.h", directory: "/home/sri/zephyrproject/zephyr")
!119 = !{!120, !123, !126, !127, !135}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !117, file: !118, line: 383, baseType: !121, size: 32)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 32)
!122 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !117, file: !118, line: 385, baseType: !124, size: 32, offset: 32)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 32)
!125 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "api", scope: !117, file: !118, line: 387, baseType: !124, size: 32, offset: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !117, file: !118, line: 389, baseType: !128, size: 32, offset: 96)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 32)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_state", file: !118, line: 354, size: 16, elements: !130)
!130 = !{!131, !133}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "init_res", scope: !129, file: !118, line: 362, baseType: !132, size: 8)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !99, line: 62, baseType: !14)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !129, file: !118, line: 367, baseType: !134, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 8)
!134 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !117, file: !118, line: 391, baseType: !103, size: 32, offset: 128)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !99, line: 64, baseType: !137)
!137 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "pwm_flags_t", file: !108, line: 79, baseType: !139)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !99, line: 63, baseType: !140)
!140 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "get_cycles_per_sec", scope: !107, file: !108, line: 438, baseType: !142, size: 32, offset: 32)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "pwm_get_cycles_per_sec_t", file: !108, line: 408, baseType: !143)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 32)
!144 = !DISubroutineType(types: !145)
!145 = !{!104, !115, !136, !146}
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 32)
!147 = !{!0, !148, !153, !158, !163, !168, !7}
!148 = !DIGlobalVariableExpression(var: !149, expr: !DIExpression())
!149 = distinct !DIGlobalVariable(scope: null, file: !2, line: 32, type: !150, isLocal: true, isDefinition: true)
!150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 280, elements: !151)
!151 = !{!152}
!152 = !DISubrange(count: 35)
!153 = !DIGlobalVariableExpression(var: !154, expr: !DIExpression())
!154 = distinct !DIGlobalVariable(scope: null, file: !2, line: 44, type: !155, isLocal: true, isDefinition: true)
!155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !156)
!156 = !{!157}
!157 = !DISubrange(count: 31)
!158 = !DIGlobalVariableExpression(var: !159, expr: !DIExpression())
!159 = distinct !DIGlobalVariable(scope: null, file: !2, line: 49, type: !160, isLocal: true, isDefinition: true)
!160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 464, elements: !161)
!161 = !{!162}
!162 = !DISubrange(count: 58)
!163 = !DIGlobalVariableExpression(var: !164, expr: !DIExpression())
!164 = distinct !DIGlobalVariable(scope: null, file: !2, line: 56, type: !165, isLocal: true, isDefinition: true)
!165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 440, elements: !166)
!166 = !{!167}
!167 = !DISubrange(count: 55)
!168 = !DIGlobalVariableExpression(var: !169, expr: !DIExpression())
!169 = distinct !DIGlobalVariable(scope: null, file: !2, line: 63, type: !170, isLocal: true, isDefinition: true)
!170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 296, elements: !171)
!171 = !{!172}
!172 = !DISubrange(count: 37)
!173 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !174)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pwm_dt_spec", file: !108, line: 96, size: 128, elements: !175)
!175 = !{!176, !177, !178, !179}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !174, file: !108, line: 98, baseType: !115, size: 32)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !174, file: !108, line: 100, baseType: !136, size: 32, offset: 32)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !174, file: !108, line: 102, baseType: !136, size: 32, offset: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !174, file: !108, line: 104, baseType: !138, size: 16, offset: 96)
!180 = !{i32 7, !"Dwarf Version", i32 4}
!181 = !{i32 2, !"Debug Info Version", i32 3}
!182 = !{i32 1, !"wchar_size", i32 4}
!183 = !{i32 1, !"static_rwdata", i32 1}
!184 = !{i32 1, !"enumsize_buildattr", i32 1}
!185 = !{i32 1, !"armlib_unavailable", i32 0}
!186 = !{i32 8, !"PIC Level", i32 2}
!187 = !{i32 7, !"PIE Level", i32 2}
!188 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
!189 = distinct !DISubprogram(name: "z_impl_k_object_access_grant", scope: !13, file: !13, line: 223, type: !190, scopeLine: 225, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !297)
!190 = !DISubroutineType(types: !191)
!191 = !{null, !124, !192}
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 32)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_thread", file: !194, line: 250, size: 896, elements: !195)
!194 = !DIFile(filename: "include/zephyr/kernel/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!195 = !{!196, !261, !274, !275, !276, !277, !298}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !193, file: !194, line: 252, baseType: !197, size: 384)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_base", file: !194, line: 58, size: 384, elements: !198)
!198 = !{!199, !227, !235, !236, !237, !248, !249, !250}
!199 = !DIDerivedType(tag: DW_TAG_member, scope: !197, file: !194, line: 61, baseType: !200, size: 64)
!200 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !197, file: !194, line: 61, size: 64, elements: !201)
!201 = !{!202, !218}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_dlist", scope: !200, file: !194, line: 62, baseType: !203, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dnode_t", file: !204, line: 55, baseType: !205)
!204 = !DIFile(filename: "include/zephyr/sys/dlist.h", directory: "/home/sri/zephyrproject/zephyr")
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_dnode", file: !204, line: 37, size: 64, elements: !206)
!206 = !{!207, !213}
!207 = !DIDerivedType(tag: DW_TAG_member, scope: !205, file: !204, line: 38, baseType: !208, size: 32)
!208 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !205, file: !204, line: 38, size: 32, elements: !209)
!209 = !{!210, !212}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !208, file: !204, line: 39, baseType: !211, size: 32)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 32)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !208, file: !204, line: 40, baseType: !211, size: 32)
!213 = !DIDerivedType(tag: DW_TAG_member, scope: !205, file: !204, line: 42, baseType: !214, size: 32, offset: 32)
!214 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !205, file: !204, line: 42, size: 32, elements: !215)
!215 = !{!216, !217}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !214, file: !204, line: 43, baseType: !211, size: 32)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !214, file: !204, line: 44, baseType: !211, size: 32)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_rb", scope: !200, file: !194, line: 63, baseType: !219, size: 64)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rbnode", file: !220, line: 58, size: 64, elements: !221)
!220 = !DIFile(filename: "include/zephyr/sys/rb.h", directory: "/home/sri/zephyrproject/zephyr")
!221 = !{!222}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !219, file: !220, line: 60, baseType: !223, size: 64)
!223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !224, size: 64, elements: !225)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 32)
!225 = !{!226}
!226 = !DISubrange(count: 2)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "pended_on", scope: !197, file: !194, line: 69, baseType: !228, size: 32, offset: 64)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 32)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "_wait_q_t", file: !230, line: 243, baseType: !231)
!230 = !DIFile(filename: "include/zephyr/kernel_structs.h", directory: "/home/sri/zephyrproject/zephyr")
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !230, line: 241, size: 64, elements: !232)
!232 = !{!233}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !231, file: !230, line: 242, baseType: !234, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dlist_t", file: !204, line: 51, baseType: !205)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "user_options", scope: !197, file: !194, line: 72, baseType: !132, size: 8, offset: 96)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "thread_state", scope: !197, file: !194, line: 75, baseType: !132, size: 8, offset: 104)
!237 = !DIDerivedType(tag: DW_TAG_member, scope: !197, file: !194, line: 91, baseType: !238, size: 16, offset: 112)
!238 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !197, file: !194, line: 91, size: 16, elements: !239)
!239 = !{!240, !247}
!240 = !DIDerivedType(tag: DW_TAG_member, scope: !238, file: !194, line: 92, baseType: !241, size: 16)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !238, file: !194, line: 92, size: 16, elements: !242)
!242 = !{!243, !246}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !241, file: !194, line: 97, baseType: !244, size: 8)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !99, line: 56, baseType: !245)
!245 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "sched_locked", scope: !241, file: !194, line: 98, baseType: !132, size: 8, offset: 8)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "preempt", scope: !238, file: !194, line: 101, baseType: !139, size: 16)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "order_key", scope: !197, file: !194, line: 108, baseType: !136, size: 32, offset: 128)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "swap_data", scope: !197, file: !194, line: 132, baseType: !103, size: 32, offset: 160)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !197, file: !194, line: 136, baseType: !251, size: 192, offset: 192)
!251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_timeout", file: !230, line: 254, size: 192, elements: !252)
!252 = !{!253, !254, !260}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !251, file: !230, line: 255, baseType: !203, size: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !251, file: !230, line: 256, baseType: !255, size: 32, offset: 64)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "_timeout_func_t", file: !230, line: 252, baseType: !256)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 32)
!257 = !DISubroutineType(types: !258)
!258 = !{null, !259}
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 32)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "dticks", scope: !251, file: !230, line: 259, baseType: !98, size: 64, offset: 128)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "callee_saved", scope: !193, file: !194, line: 255, baseType: !262, size: 288, offset: 384)
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_callee_saved", file: !263, line: 25, size: 288, elements: !264)
!263 = !DIFile(filename: "include/zephyr/arch/arm/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!264 = !{!265, !266, !267, !268, !269, !270, !271, !272, !273}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "v1", scope: !262, file: !263, line: 26, baseType: !136, size: 32)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "v2", scope: !262, file: !263, line: 27, baseType: !136, size: 32, offset: 32)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "v3", scope: !262, file: !263, line: 28, baseType: !136, size: 32, offset: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "v4", scope: !262, file: !263, line: 29, baseType: !136, size: 32, offset: 96)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "v5", scope: !262, file: !263, line: 30, baseType: !136, size: 32, offset: 128)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "v6", scope: !262, file: !263, line: 31, baseType: !136, size: 32, offset: 160)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "v7", scope: !262, file: !263, line: 32, baseType: !136, size: 32, offset: 192)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "v8", scope: !262, file: !263, line: 33, baseType: !136, size: 32, offset: 224)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "psp", scope: !262, file: !263, line: 34, baseType: !136, size: 32, offset: 256)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "init_data", scope: !193, file: !194, line: 258, baseType: !103, size: 32, offset: 672)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "join_queue", scope: !193, file: !194, line: 261, baseType: !229, size: 64, offset: 704)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "errno_var", scope: !193, file: !194, line: 302, baseType: !104, size: 32, offset: 768)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "resource_pool", scope: !193, file: !194, line: 333, baseType: !278, size: 32, offset: 800)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 32)
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_heap", file: !280, line: 5291, size: 160, elements: !281)
!280 = !DIFile(filename: "include/zephyr/kernel.h", directory: "/home/sri/zephyrproject/zephyr")
!281 = !{!282, !293, !294}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !279, file: !280, line: 5292, baseType: !283, size: 96)
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sys_heap", file: !284, line: 56, size: 96, elements: !285)
!284 = !DIFile(filename: "include/zephyr/sys/sys_heap.h", directory: "/home/sri/zephyrproject/zephyr")
!285 = !{!286, !289, !290}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !283, file: !284, line: 57, baseType: !287, size: 32)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 32)
!288 = !DICompositeType(tag: DW_TAG_structure_type, name: "z_heap", file: !284, line: 57, flags: DIFlagFwdDecl)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "init_mem", scope: !283, file: !284, line: 58, baseType: !103, size: 32, offset: 32)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "init_bytes", scope: !283, file: !284, line: 59, baseType: !291, size: 32, offset: 64)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !292, line: 46, baseType: !137)
!292 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/lib/clang/17/include/stddef.h", directory: "")
!293 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !279, file: !280, line: 5293, baseType: !229, size: 64, offset: 96)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !279, file: !280, line: 5294, baseType: !295, offset: 160)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_spinlock", file: !296, line: 45, elements: !297)
!296 = !DIFile(filename: "include/zephyr/spinlock.h", directory: "/home/sri/zephyrproject/zephyr")
!297 = !{}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !193, file: !194, line: 355, baseType: !299, size: 64, offset: 832)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_arch", file: !263, line: 60, size: 64, elements: !300)
!300 = !{!301, !302}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "basepri", scope: !299, file: !263, line: 63, baseType: !136, size: 32)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "swap_return_value", scope: !299, file: !263, line: 66, baseType: !136, size: 32, offset: 32)
!303 = !DILocalVariable(name: "object", arg: 1, scope: !189, file: !13, line: 223, type: !124)
!304 = !DILocation(line: 223, column: 61, scope: !189)
!305 = !DILocalVariable(name: "thread", arg: 2, scope: !189, file: !13, line: 224, type: !192)
!306 = !DILocation(line: 224, column: 24, scope: !189)
!307 = !DILocation(line: 226, column: 9, scope: !189)
!308 = !DILocation(line: 227, column: 9, scope: !189)
!309 = !DILocation(line: 228, column: 1, scope: !189)
!310 = distinct !DISubprogram(name: "z_impl_k_object_release", scope: !13, file: !13, line: 243, type: !311, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !297)
!311 = !DISubroutineType(types: !312)
!312 = !{null, !124}
!313 = !DILocalVariable(name: "object", arg: 1, scope: !310, file: !13, line: 243, type: !124)
!314 = !DILocation(line: 243, column: 56, scope: !310)
!315 = !DILocation(line: 245, column: 9, scope: !310)
!316 = !DILocation(line: 246, column: 1, scope: !310)
!317 = distinct !DISubprogram(name: "z_impl_k_object_alloc", scope: !13, file: !13, line: 359, type: !318, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !297)
!318 = !DISubroutineType(types: !319)
!319 = !{!103, !12}
!320 = !DILocalVariable(name: "otype", arg: 1, scope: !317, file: !13, line: 359, type: !12)
!321 = !DILocation(line: 359, column: 58, scope: !317)
!322 = !DILocation(line: 361, column: 9, scope: !317)
!323 = !DILocation(line: 363, column: 2, scope: !317)
!324 = distinct !DISubprogram(name: "z_impl_k_object_alloc_size", scope: !13, file: !13, line: 366, type: !325, scopeLine: 368, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !297)
!325 = !DISubroutineType(types: !326)
!326 = !{!103, !12, !291}
!327 = !DILocalVariable(name: "otype", arg: 1, scope: !324, file: !13, line: 366, type: !12)
!328 = !DILocation(line: 366, column: 63, scope: !324)
!329 = !DILocalVariable(name: "size", arg: 2, scope: !324, file: !13, line: 367, type: !291)
!330 = !DILocation(line: 367, column: 13, scope: !324)
!331 = !DILocation(line: 369, column: 9, scope: !324)
!332 = !DILocation(line: 370, column: 9, scope: !324)
!333 = !DILocation(line: 372, column: 2, scope: !324)
!334 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_expires_ticks", scope: !280, file: !280, line: 656, type: !335, scopeLine: 658, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !297)
!335 = !DISubroutineType(types: !336)
!336 = !{!96, !337}
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 32)
!338 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !193)
!339 = !DILocalVariable(name: "t", arg: 1, scope: !334, file: !280, line: 657, type: !337)
!340 = !DILocation(line: 657, column: 30, scope: !334)
!341 = !DILocation(line: 659, column: 28, scope: !334)
!342 = !DILocation(line: 659, column: 31, scope: !334)
!343 = !DILocation(line: 659, column: 36, scope: !334)
!344 = !DILocation(line: 659, column: 9, scope: !334)
!345 = !DILocation(line: 659, column: 2, scope: !334)
!346 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_remaining_ticks", scope: !280, file: !280, line: 671, type: !335, scopeLine: 673, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !297)
!347 = !DILocalVariable(name: "t", arg: 1, scope: !346, file: !280, line: 672, type: !337)
!348 = !DILocation(line: 672, column: 30, scope: !346)
!349 = !DILocation(line: 674, column: 30, scope: !346)
!350 = !DILocation(line: 674, column: 33, scope: !346)
!351 = !DILocation(line: 674, column: 38, scope: !346)
!352 = !DILocation(line: 674, column: 9, scope: !346)
!353 = !DILocation(line: 674, column: 2, scope: !346)
!354 = distinct !DISubprogram(name: "z_impl_k_timer_expires_ticks", scope: !280, file: !280, line: 1634, type: !355, scopeLine: 1636, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !297)
!355 = !DISubroutineType(types: !356)
!356 = !{!96, !357}
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 32)
!358 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !359)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_timer", file: !280, line: 1439, size: 448, elements: !360)
!360 = !{!361, !362, !363, !368, !369, !374, !375}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !359, file: !280, line: 1445, baseType: !251, size: 192)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !359, file: !280, line: 1448, baseType: !229, size: 64, offset: 192)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_fn", scope: !359, file: !280, line: 1451, baseType: !364, size: 32, offset: 256)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 32)
!365 = !DISubroutineType(types: !366)
!366 = !{null, !367}
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 32)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "stop_fn", scope: !359, file: !280, line: 1454, baseType: !364, size: 32, offset: 288)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !359, file: !280, line: 1457, baseType: !370, size: 64, offset: 320)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_timeout_t", file: !97, line: 67, baseType: !371)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !97, line: 65, size: 64, elements: !372)
!372 = !{!373}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "ticks", scope: !371, file: !97, line: 66, baseType: !96, size: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !359, file: !280, line: 1460, baseType: !136, size: 32, offset: 384)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !359, file: !280, line: 1463, baseType: !103, size: 32, offset: 416)
!376 = !DILocalVariable(name: "timer", arg: 1, scope: !354, file: !280, line: 1635, type: !357)
!377 = !DILocation(line: 1635, column: 34, scope: !354)
!378 = !DILocation(line: 1637, column: 28, scope: !354)
!379 = !DILocation(line: 1637, column: 35, scope: !354)
!380 = !DILocation(line: 1637, column: 9, scope: !354)
!381 = !DILocation(line: 1637, column: 2, scope: !354)
!382 = distinct !DISubprogram(name: "z_impl_k_timer_remaining_ticks", scope: !280, file: !280, line: 1649, type: !355, scopeLine: 1651, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !297)
!383 = !DILocalVariable(name: "timer", arg: 1, scope: !382, file: !280, line: 1650, type: !357)
!384 = !DILocation(line: 1650, column: 34, scope: !382)
!385 = !DILocation(line: 1652, column: 30, scope: !382)
!386 = !DILocation(line: 1652, column: 37, scope: !382)
!387 = !DILocation(line: 1652, column: 9, scope: !382)
!388 = !DILocation(line: 1652, column: 2, scope: !382)
!389 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_set", scope: !280, file: !280, line: 1689, type: !390, scopeLine: 1691, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !297)
!390 = !DISubroutineType(types: !391)
!391 = !{null, !367, !103}
!392 = !DILocalVariable(name: "timer", arg: 1, scope: !389, file: !280, line: 1689, type: !367)
!393 = !DILocation(line: 1689, column: 65, scope: !389)
!394 = !DILocalVariable(name: "user_data", arg: 2, scope: !389, file: !280, line: 1690, type: !103)
!395 = !DILocation(line: 1690, column: 19, scope: !389)
!396 = !DILocation(line: 1692, column: 21, scope: !389)
!397 = !DILocation(line: 1692, column: 2, scope: !389)
!398 = !DILocation(line: 1692, column: 9, scope: !389)
!399 = !DILocation(line: 1692, column: 19, scope: !389)
!400 = !DILocation(line: 1693, column: 1, scope: !389)
!401 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_get", scope: !280, file: !280, line: 1704, type: !402, scopeLine: 1705, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !297)
!402 = !DISubroutineType(types: !403)
!403 = !{!103, !357}
!404 = !DILocalVariable(name: "timer", arg: 1, scope: !401, file: !280, line: 1704, type: !357)
!405 = !DILocation(line: 1704, column: 72, scope: !401)
!406 = !DILocation(line: 1706, column: 9, scope: !401)
!407 = !DILocation(line: 1706, column: 16, scope: !401)
!408 = !DILocation(line: 1706, column: 2, scope: !401)
!409 = distinct !DISubprogram(name: "z_impl_k_queue_is_empty", scope: !280, file: !280, line: 2071, type: !410, scopeLine: 2072, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !297)
!410 = !DISubroutineType(types: !411)
!411 = !{!104, !412}
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 32)
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_queue", file: !280, line: 1830, size: 128, elements: !414)
!414 = !{!415, !428, !429}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "data_q", scope: !413, file: !280, line: 1831, baseType: !416, size: 64)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sflist_t", file: !417, line: 60, baseType: !418)
!417 = !DIFile(filename: "include/zephyr/sys/sflist.h", directory: "/home/sri/zephyrproject/zephyr")
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sflist", file: !417, line: 53, size: 64, elements: !419)
!419 = !{!420, !427}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !418, file: !417, line: 54, baseType: !421, size: 32)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 32)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sfnode_t", file: !417, line: 50, baseType: !423)
!423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sfnode", file: !417, line: 44, size: 32, elements: !424)
!424 = !{!425}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "next_and_flags", scope: !423, file: !417, line: 45, baseType: !426, size: 32)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "unative_t", file: !417, line: 40, baseType: !136)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !418, file: !417, line: 55, baseType: !421, size: 32, offset: 32)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !413, file: !280, line: 1832, baseType: !295, offset: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !413, file: !280, line: 1833, baseType: !229, size: 64, offset: 64)
!430 = !DILocalVariable(name: "queue", arg: 1, scope: !409, file: !280, line: 2071, type: !412)
!431 = !DILocation(line: 2071, column: 59, scope: !409)
!432 = !DILocation(line: 2073, column: 35, scope: !409)
!433 = !DILocation(line: 2073, column: 42, scope: !409)
!434 = !DILocation(line: 2073, column: 14, scope: !409)
!435 = !DILocation(line: 2073, column: 9, scope: !409)
!436 = !DILocation(line: 2073, column: 2, scope: !409)
!437 = distinct !DISubprogram(name: "z_impl_k_sem_count_get", scope: !280, file: !280, line: 3209, type: !438, scopeLine: 3210, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !297)
!438 = !DISubroutineType(types: !439)
!439 = !{!137, !440}
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 32)
!441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sem", file: !280, line: 3092, size: 128, elements: !442)
!442 = !{!443, !444, !445}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !441, file: !280, line: 3093, baseType: !229, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !441, file: !280, line: 3094, baseType: !137, size: 32, offset: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !441, file: !280, line: 3095, baseType: !137, size: 32, offset: 96)
!446 = !DILocalVariable(name: "sem", arg: 1, scope: !437, file: !280, line: 3209, type: !440)
!447 = !DILocation(line: 3209, column: 65, scope: !437)
!448 = !DILocation(line: 3211, column: 9, scope: !437)
!449 = !DILocation(line: 3211, column: 14, scope: !437)
!450 = !DILocation(line: 3211, column: 2, scope: !437)
!451 = distinct !DISubprogram(name: "z_impl_k_msgq_num_free_get", scope: !280, file: !280, line: 4649, type: !452, scopeLine: 4650, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !297)
!452 = !DISubroutineType(types: !453)
!453 = !{!136, !454}
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 32)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_msgq", file: !280, line: 4390, size: 320, elements: !456)
!456 = !{!457, !458, !459, !460, !461, !463, !464, !465, !466, !467}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !455, file: !280, line: 4392, baseType: !229, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !455, file: !280, line: 4394, baseType: !295, offset: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "msg_size", scope: !455, file: !280, line: 4396, baseType: !291, size: 32, offset: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !455, file: !280, line: 4398, baseType: !136, size: 32, offset: 96)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_start", scope: !455, file: !280, line: 4400, baseType: !462, size: 32, offset: 128)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 32)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_end", scope: !455, file: !280, line: 4402, baseType: !462, size: 32, offset: 160)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "read_ptr", scope: !455, file: !280, line: 4404, baseType: !462, size: 32, offset: 192)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "write_ptr", scope: !455, file: !280, line: 4406, baseType: !462, size: 32, offset: 224)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "used_msgs", scope: !455, file: !280, line: 4408, baseType: !136, size: 32, offset: 256)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !455, file: !280, line: 4413, baseType: !132, size: 8, offset: 288)
!468 = !DILocalVariable(name: "msgq", arg: 1, scope: !451, file: !280, line: 4649, type: !454)
!469 = !DILocation(line: 4649, column: 66, scope: !451)
!470 = !DILocation(line: 4651, column: 9, scope: !451)
!471 = !DILocation(line: 4651, column: 15, scope: !451)
!472 = !DILocation(line: 4651, column: 26, scope: !451)
!473 = !DILocation(line: 4651, column: 32, scope: !451)
!474 = !DILocation(line: 4651, column: 24, scope: !451)
!475 = !DILocation(line: 4651, column: 2, scope: !451)
!476 = distinct !DISubprogram(name: "z_impl_k_msgq_num_used_get", scope: !280, file: !280, line: 4665, type: !452, scopeLine: 4666, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !297)
!477 = !DILocalVariable(name: "msgq", arg: 1, scope: !476, file: !280, line: 4665, type: !454)
!478 = !DILocation(line: 4665, column: 66, scope: !476)
!479 = !DILocation(line: 4667, column: 9, scope: !476)
!480 = !DILocation(line: 4667, column: 15, scope: !476)
!481 = !DILocation(line: 4667, column: 2, scope: !476)
!482 = distinct !DISubprogram(name: "z_impl_device_is_ready", scope: !118, file: !118, line: 744, type: !483, scopeLine: 745, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !297)
!483 = !DISubroutineType(types: !484)
!484 = !{!134, !115}
!485 = !DILocalVariable(name: "dev", arg: 1, scope: !482, file: !118, line: 744, type: !115)
!486 = !DILocation(line: 744, column: 65, scope: !482)
!487 = !DILocation(line: 746, column: 27, scope: !482)
!488 = !DILocation(line: 746, column: 9, scope: !482)
!489 = !DILocation(line: 746, column: 2, scope: !482)
!490 = distinct !DISubprogram(name: "z_impl_pwm_set_cycles", scope: !108, file: !108, line: 481, type: !113, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !297)
!491 = !DILocalVariable(name: "dev", arg: 1, scope: !490, file: !108, line: 481, type: !115)
!492 = !DILocation(line: 481, column: 62, scope: !490)
!493 = !DILocalVariable(name: "channel", arg: 2, scope: !490, file: !108, line: 482, type: !136)
!494 = !DILocation(line: 482, column: 15, scope: !490)
!495 = !DILocalVariable(name: "period", arg: 3, scope: !490, file: !108, line: 482, type: !136)
!496 = !DILocation(line: 482, column: 33, scope: !490)
!497 = !DILocalVariable(name: "pulse", arg: 4, scope: !490, file: !108, line: 483, type: !136)
!498 = !DILocation(line: 483, column: 15, scope: !490)
!499 = !DILocalVariable(name: "flags", arg: 5, scope: !490, file: !108, line: 483, type: !138)
!500 = !DILocation(line: 483, column: 34, scope: !490)
!501 = !DILocalVariable(name: "api", scope: !490, file: !108, line: 485, type: !105)
!502 = !DILocation(line: 485, column: 31, scope: !490)
!503 = !DILocation(line: 486, column: 34, scope: !490)
!504 = !DILocation(line: 486, column: 39, scope: !490)
!505 = !DILocation(line: 488, column: 6, scope: !506)
!506 = distinct !DILexicalBlock(scope: !490, file: !108, line: 488, column: 6)
!507 = !DILocation(line: 488, column: 14, scope: !506)
!508 = !DILocation(line: 488, column: 12, scope: !506)
!509 = !DILocation(line: 488, column: 6, scope: !490)
!510 = !DILocation(line: 489, column: 3, scope: !511)
!511 = distinct !DILexicalBlock(scope: !506, file: !108, line: 488, column: 22)
!512 = !DILocation(line: 492, column: 9, scope: !490)
!513 = !DILocation(line: 492, column: 14, scope: !490)
!514 = !DILocation(line: 492, column: 25, scope: !490)
!515 = !DILocation(line: 492, column: 30, scope: !490)
!516 = !DILocation(line: 492, column: 39, scope: !490)
!517 = !DILocation(line: 492, column: 47, scope: !490)
!518 = !DILocation(line: 492, column: 54, scope: !490)
!519 = !DILocation(line: 492, column: 2, scope: !490)
!520 = !DILocation(line: 493, column: 1, scope: !490)
!521 = distinct !DISubprogram(name: "z_impl_pwm_get_cycles_per_sec", scope: !108, file: !108, line: 509, type: !144, scopeLine: 512, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !297)
!522 = !DILocalVariable(name: "dev", arg: 1, scope: !521, file: !108, line: 509, type: !115)
!523 = !DILocation(line: 509, column: 70, scope: !521)
!524 = !DILocalVariable(name: "channel", arg: 2, scope: !521, file: !108, line: 510, type: !136)
!525 = !DILocation(line: 510, column: 16, scope: !521)
!526 = !DILocalVariable(name: "cycles", arg: 3, scope: !521, file: !108, line: 511, type: !146)
!527 = !DILocation(line: 511, column: 17, scope: !521)
!528 = !DILocalVariable(name: "api", scope: !521, file: !108, line: 513, type: !105)
!529 = !DILocation(line: 513, column: 31, scope: !521)
!530 = !DILocation(line: 514, column: 34, scope: !521)
!531 = !DILocation(line: 514, column: 39, scope: !521)
!532 = !DILocation(line: 516, column: 9, scope: !521)
!533 = !DILocation(line: 516, column: 14, scope: !521)
!534 = !DILocation(line: 516, column: 33, scope: !521)
!535 = !DILocation(line: 516, column: 38, scope: !521)
!536 = !DILocation(line: 516, column: 47, scope: !521)
!537 = !DILocation(line: 516, column: 2, scope: !521)
!538 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 22, type: !539, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !297)
!539 = !DISubroutineType(types: !540)
!540 = !{!104}
!541 = !DILocalVariable(name: "max_period", scope: !538, file: !2, line: 24, type: !136)
!542 = !DILocation(line: 24, column: 11, scope: !538)
!543 = !DILocalVariable(name: "period", scope: !538, file: !2, line: 25, type: !136)
!544 = !DILocation(line: 25, column: 11, scope: !538)
!545 = !DILocalVariable(name: "dir", scope: !538, file: !2, line: 26, type: !132)
!546 = !DILocation(line: 26, column: 10, scope: !538)
!547 = !DILocalVariable(name: "ret", scope: !538, file: !2, line: 27, type: !104)
!548 = !DILocation(line: 27, column: 6, scope: !538)
!549 = !DILocation(line: 29, column: 2, scope: !538)
!550 = !DILocation(line: 31, column: 7, scope: !551)
!551 = distinct !DILexicalBlock(scope: !538, file: !2, line: 31, column: 6)
!552 = !DILocation(line: 31, column: 6, scope: !538)
!553 = !DILocation(line: 33, column: 19, scope: !554)
!554 = distinct !DILexicalBlock(scope: !551, file: !2, line: 31, column: 35)
!555 = !DILocation(line: 33, column: 24, scope: !554)
!556 = !DILocation(line: 32, column: 3, scope: !554)
!557 = !DILocation(line: 34, column: 3, scope: !554)
!558 = !DILocation(line: 44, column: 53, scope: !538)
!559 = !DILocation(line: 44, column: 2, scope: !538)
!560 = !DILocation(line: 45, column: 13, scope: !538)
!561 = !DILocation(line: 46, column: 2, scope: !538)
!562 = !DILocation(line: 46, column: 31, scope: !538)
!563 = !DILocation(line: 46, column: 43, scope: !538)
!564 = !DILocation(line: 46, column: 54, scope: !538)
!565 = !DILocation(line: 46, column: 9, scope: !538)
!566 = !DILocation(line: 47, column: 14, scope: !567)
!567 = distinct !DILexicalBlock(scope: !538, file: !2, line: 46, column: 61)
!568 = !DILocation(line: 48, column: 7, scope: !569)
!569 = distinct !DILexicalBlock(scope: !567, file: !2, line: 48, column: 7)
!570 = !DILocation(line: 48, column: 18, scope: !569)
!571 = !DILocation(line: 48, column: 7, scope: !567)
!572 = !DILocation(line: 49, column: 4, scope: !573)
!573 = distinct !DILexicalBlock(scope: !569, file: !2, line: 48, column: 73)
!574 = !DILocation(line: 52, column: 4, scope: !573)
!575 = distinct !{!575, !561, !576}
!576 = !DILocation(line: 54, column: 2, scope: !538)
!577 = !DILocation(line: 57, column: 9, scope: !538)
!578 = !DILocation(line: 56, column: 2, scope: !538)
!579 = !DILocation(line: 59, column: 11, scope: !538)
!580 = !DILocation(line: 59, column: 9, scope: !538)
!581 = !DILocation(line: 60, column: 2, scope: !538)
!582 = !DILocation(line: 61, column: 31, scope: !583)
!583 = distinct !DILexicalBlock(scope: !538, file: !2, line: 60, column: 12)
!584 = !DILocation(line: 61, column: 39, scope: !583)
!585 = !DILocation(line: 61, column: 46, scope: !583)
!586 = !DILocation(line: 61, column: 9, scope: !583)
!587 = !DILocation(line: 61, column: 7, scope: !583)
!588 = !DILocation(line: 62, column: 7, scope: !589)
!589 = distinct !DILexicalBlock(scope: !583, file: !2, line: 62, column: 7)
!590 = !DILocation(line: 62, column: 7, scope: !583)
!591 = !DILocation(line: 63, column: 52, scope: !592)
!592 = distinct !DILexicalBlock(scope: !589, file: !2, line: 62, column: 12)
!593 = !DILocation(line: 63, column: 4, scope: !592)
!594 = !DILocation(line: 64, column: 4, scope: !592)
!595 = !DILocation(line: 67, column: 12, scope: !583)
!596 = !DILocation(line: 67, column: 19, scope: !583)
!597 = !DILocation(line: 67, column: 26, scope: !583)
!598 = !DILocation(line: 67, column: 35, scope: !583)
!599 = !DILocation(line: 67, column: 42, scope: !583)
!600 = !DILocation(line: 67, column: 10, scope: !583)
!601 = !DILocation(line: 68, column: 7, scope: !602)
!602 = distinct !DILexicalBlock(scope: !583, file: !2, line: 68, column: 7)
!603 = !DILocation(line: 68, column: 16, scope: !602)
!604 = !DILocation(line: 68, column: 14, scope: !602)
!605 = !DILocation(line: 68, column: 7, scope: !583)
!606 = !DILocation(line: 69, column: 13, scope: !607)
!607 = distinct !DILexicalBlock(scope: !602, file: !2, line: 68, column: 28)
!608 = !DILocation(line: 69, column: 24, scope: !607)
!609 = !DILocation(line: 69, column: 11, scope: !607)
!610 = !DILocation(line: 70, column: 8, scope: !607)
!611 = !DILocation(line: 71, column: 3, scope: !607)
!612 = !DILocation(line: 71, column: 14, scope: !613)
!613 = distinct !DILexicalBlock(scope: !602, file: !2, line: 71, column: 14)
!614 = !DILocation(line: 71, column: 21, scope: !613)
!615 = !DILocation(line: 71, column: 14, scope: !602)
!616 = !DILocation(line: 72, column: 11, scope: !617)
!617 = distinct !DILexicalBlock(scope: !613, file: !2, line: 71, column: 69)
!618 = !DILocation(line: 73, column: 8, scope: !617)
!619 = !DILocation(line: 74, column: 3, scope: !617)
!620 = !DILocation(line: 76, column: 26, scope: !583)
!621 = !DILocation(line: 76, column: 3, scope: !583)
!622 = distinct !{!622, !581, !623}
!623 = !DILocation(line: 77, column: 2, scope: !538)
!624 = !DILocation(line: 79, column: 1, scope: !538)
!625 = distinct !DISubprogram(name: "pwm_is_ready_dt", scope: !108, file: !108, line: 936, type: !626, scopeLine: 937, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !297)
!626 = !DISubroutineType(types: !627)
!627 = !{!134, !628}
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 32)
!629 = !DILocalVariable(name: "spec", arg: 1, scope: !625, file: !108, line: 936, type: !628)
!630 = !DILocation(line: 936, column: 63, scope: !625)
!631 = !DILocation(line: 938, column: 25, scope: !625)
!632 = !DILocation(line: 938, column: 31, scope: !625)
!633 = !DILocation(line: 938, column: 9, scope: !625)
!634 = !DILocation(line: 938, column: 2, scope: !625)
!635 = distinct !DISubprogram(name: "pwm_set_dt", scope: !108, file: !108, line: 581, type: !636, scopeLine: 583, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !297)
!636 = !DISubroutineType(types: !637)
!637 = !{!104, !628, !136, !136}
!638 = !DILocalVariable(name: "spec", arg: 1, scope: !635, file: !108, line: 581, type: !628)
!639 = !DILocation(line: 581, column: 56, scope: !635)
!640 = !DILocalVariable(name: "period", arg: 2, scope: !635, file: !108, line: 581, type: !136)
!641 = !DILocation(line: 581, column: 71, scope: !635)
!642 = !DILocalVariable(name: "pulse", arg: 3, scope: !635, file: !108, line: 582, type: !136)
!643 = !DILocation(line: 582, column: 18, scope: !635)
!644 = !DILocation(line: 584, column: 17, scope: !635)
!645 = !DILocation(line: 584, column: 23, scope: !635)
!646 = !DILocation(line: 584, column: 28, scope: !635)
!647 = !DILocation(line: 584, column: 34, scope: !635)
!648 = !DILocation(line: 584, column: 43, scope: !635)
!649 = !DILocation(line: 584, column: 51, scope: !635)
!650 = !DILocation(line: 584, column: 58, scope: !635)
!651 = !DILocation(line: 584, column: 64, scope: !635)
!652 = !DILocation(line: 584, column: 9, scope: !635)
!653 = !DILocation(line: 584, column: 2, scope: !635)
!654 = distinct !DISubprogram(name: "k_sleep", scope: !655, file: !655, line: 126, type: !656, scopeLine: 127, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !297)
!655 = !DIFile(filename: "zephyr/include/generated/syscalls/kernel.h", directory: "/home/sri/zephyrproject/zephyr/build")
!656 = !DISubroutineType(types: !657)
!657 = !{!658, !370}
!658 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !99, line: 58, baseType: !104)
!659 = !DILocalVariable(name: "timeout", arg: 1, scope: !654, file: !655, line: 126, type: !370)
!660 = !DILocation(line: 126, column: 43, scope: !654)
!661 = !DILocation(line: 134, column: 2, scope: !654)
!662 = !DILocation(line: 134, column: 7, scope: !663)
!663 = distinct !DILexicalBlock(scope: !654, file: !655, line: 134, column: 5)
!664 = !{i64 134249}
!665 = !DILocation(line: 134, column: 47, scope: !663)
!666 = !DILocation(line: 135, column: 9, scope: !654)
!667 = !DILocation(line: 135, column: 2, scope: !654)
!668 = distinct !DISubprogram(name: "sys_sflist_is_empty", scope: !417, file: !417, line: 335, type: !669, scopeLine: 335, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !297)
!669 = !DISubroutineType(types: !670)
!670 = !{!134, !671}
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 32)
!672 = !DILocalVariable(name: "list", arg: 1, scope: !668, file: !417, line: 335, type: !671)
!673 = !DILocation(line: 335, column: 55, scope: !668)
!674 = !DILocation(line: 335, column: 92, scope: !668)
!675 = !DILocation(line: 335, column: 71, scope: !668)
!676 = !DILocation(line: 335, column: 98, scope: !668)
!677 = !DILocation(line: 335, column: 63, scope: !668)
!678 = distinct !DISubprogram(name: "sys_sflist_peek_head", scope: !417, file: !417, line: 255, type: !679, scopeLine: 256, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !297)
!679 = !DISubroutineType(types: !680)
!680 = !{!421, !671}
!681 = !DILocalVariable(name: "list", arg: 1, scope: !678, file: !417, line: 255, type: !671)
!682 = !DILocation(line: 255, column: 64, scope: !678)
!683 = !DILocation(line: 257, column: 9, scope: !678)
!684 = !DILocation(line: 257, column: 15, scope: !678)
!685 = !DILocation(line: 257, column: 2, scope: !678)
!686 = distinct !DISubprogram(name: "device_is_ready", scope: !687, file: !687, line: 49, type: !483, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !297)
!687 = !DIFile(filename: "zephyr/include/generated/syscalls/device.h", directory: "/home/sri/zephyrproject/zephyr/build")
!688 = !DILocalVariable(name: "dev", arg: 1, scope: !686, file: !687, line: 49, type: !115)
!689 = !DILocation(line: 49, column: 59, scope: !686)
!690 = !DILocation(line: 57, column: 2, scope: !686)
!691 = !DILocation(line: 57, column: 7, scope: !692)
!692 = distinct !DILexicalBlock(scope: !686, file: !687, line: 57, column: 5)
!693 = !{i64 172743}
!694 = !DILocation(line: 57, column: 47, scope: !692)
!695 = !DILocation(line: 58, column: 32, scope: !686)
!696 = !DILocation(line: 58, column: 9, scope: !686)
!697 = !DILocation(line: 58, column: 2, scope: !686)
!698 = distinct !DISubprogram(name: "pwm_set", scope: !108, file: !108, line: 535, type: !113, scopeLine: 537, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !297)
!699 = !DILocalVariable(name: "dev", arg: 1, scope: !698, file: !108, line: 535, type: !115)
!700 = !DILocation(line: 535, column: 48, scope: !698)
!701 = !DILocalVariable(name: "channel", arg: 2, scope: !698, file: !108, line: 535, type: !136)
!702 = !DILocation(line: 535, column: 62, scope: !698)
!703 = !DILocalVariable(name: "period", arg: 3, scope: !698, file: !108, line: 536, type: !136)
!704 = !DILocation(line: 536, column: 15, scope: !698)
!705 = !DILocalVariable(name: "pulse", arg: 4, scope: !698, file: !108, line: 536, type: !136)
!706 = !DILocation(line: 536, column: 32, scope: !698)
!707 = !DILocalVariable(name: "flags", arg: 5, scope: !698, file: !108, line: 536, type: !138)
!708 = !DILocation(line: 536, column: 51, scope: !698)
!709 = !DILocalVariable(name: "err", scope: !698, file: !108, line: 538, type: !104)
!710 = !DILocation(line: 538, column: 6, scope: !698)
!711 = !DILocalVariable(name: "pulse_cycles", scope: !698, file: !108, line: 539, type: !101)
!712 = !DILocation(line: 539, column: 11, scope: !698)
!713 = !DILocalVariable(name: "period_cycles", scope: !698, file: !108, line: 540, type: !101)
!714 = !DILocation(line: 540, column: 11, scope: !698)
!715 = !DILocalVariable(name: "cycles_per_sec", scope: !698, file: !108, line: 541, type: !101)
!716 = !DILocation(line: 541, column: 11, scope: !698)
!717 = !DILocation(line: 543, column: 31, scope: !698)
!718 = !DILocation(line: 543, column: 36, scope: !698)
!719 = !DILocation(line: 543, column: 8, scope: !698)
!720 = !DILocation(line: 543, column: 6, scope: !698)
!721 = !DILocation(line: 544, column: 6, scope: !722)
!722 = distinct !DILexicalBlock(scope: !698, file: !108, line: 544, column: 6)
!723 = !DILocation(line: 544, column: 10, scope: !722)
!724 = !DILocation(line: 544, column: 6, scope: !698)
!725 = !DILocation(line: 545, column: 10, scope: !726)
!726 = distinct !DILexicalBlock(scope: !722, file: !108, line: 544, column: 15)
!727 = !DILocation(line: 545, column: 3, scope: !726)
!728 = !DILocation(line: 548, column: 19, scope: !698)
!729 = !DILocation(line: 548, column: 28, scope: !698)
!730 = !DILocation(line: 548, column: 26, scope: !698)
!731 = !DILocation(line: 548, column: 44, scope: !698)
!732 = !DILocation(line: 548, column: 16, scope: !698)
!733 = !DILocation(line: 549, column: 6, scope: !734)
!734 = distinct !DILexicalBlock(scope: !698, file: !108, line: 549, column: 6)
!735 = !DILocation(line: 549, column: 20, scope: !734)
!736 = !DILocation(line: 549, column: 6, scope: !698)
!737 = !DILocation(line: 550, column: 3, scope: !738)
!738 = distinct !DILexicalBlock(scope: !734, file: !108, line: 549, column: 35)
!739 = !DILocation(line: 553, column: 18, scope: !698)
!740 = !DILocation(line: 553, column: 26, scope: !698)
!741 = !DILocation(line: 553, column: 24, scope: !698)
!742 = !DILocation(line: 553, column: 42, scope: !698)
!743 = !DILocation(line: 553, column: 15, scope: !698)
!744 = !DILocation(line: 554, column: 6, scope: !745)
!745 = distinct !DILexicalBlock(scope: !698, file: !108, line: 554, column: 6)
!746 = !DILocation(line: 554, column: 19, scope: !745)
!747 = !DILocation(line: 554, column: 6, scope: !698)
!748 = !DILocation(line: 555, column: 3, scope: !749)
!749 = distinct !DILexicalBlock(scope: !745, file: !108, line: 554, column: 34)
!750 = !DILocation(line: 558, column: 24, scope: !698)
!751 = !DILocation(line: 558, column: 29, scope: !698)
!752 = !DILocation(line: 558, column: 48, scope: !698)
!753 = !DILocation(line: 558, column: 38, scope: !698)
!754 = !DILocation(line: 559, column: 20, scope: !698)
!755 = !DILocation(line: 559, column: 10, scope: !698)
!756 = !DILocation(line: 559, column: 34, scope: !698)
!757 = !DILocation(line: 558, column: 9, scope: !698)
!758 = !DILocation(line: 558, column: 2, scope: !698)
!759 = !DILocation(line: 560, column: 1, scope: !698)
!760 = distinct !DISubprogram(name: "pwm_get_cycles_per_sec", scope: !761, file: !761, line: 53, type: !144, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !297)
!761 = !DIFile(filename: "zephyr/include/generated/syscalls/pwm.h", directory: "/home/sri/zephyrproject/zephyr/build")
!762 = !DILocalVariable(name: "dev", arg: 1, scope: !760, file: !761, line: 53, type: !115)
!763 = !DILocation(line: 53, column: 64, scope: !760)
!764 = !DILocalVariable(name: "channel", arg: 2, scope: !760, file: !761, line: 53, type: !136)
!765 = !DILocation(line: 53, column: 78, scope: !760)
!766 = !DILocalVariable(name: "cycles", arg: 3, scope: !760, file: !761, line: 53, type: !146)
!767 = !DILocation(line: 53, column: 98, scope: !760)
!768 = !DILocation(line: 63, column: 2, scope: !760)
!769 = !DILocation(line: 63, column: 7, scope: !770)
!770 = distinct !DILexicalBlock(scope: !760, file: !761, line: 63, column: 5)
!771 = !{i64 184422}
!772 = !DILocation(line: 63, column: 47, scope: !770)
!773 = !DILocation(line: 64, column: 39, scope: !760)
!774 = !DILocation(line: 64, column: 44, scope: !760)
!775 = !DILocation(line: 64, column: 53, scope: !760)
!776 = !DILocation(line: 64, column: 9, scope: !760)
!777 = !DILocation(line: 64, column: 2, scope: !760)
!778 = distinct !DISubprogram(name: "pwm_set_cycles", scope: !761, file: !761, line: 26, type: !113, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !297)
!779 = !DILocalVariable(name: "dev", arg: 1, scope: !778, file: !761, line: 26, type: !115)
!780 = !DILocation(line: 26, column: 56, scope: !778)
!781 = !DILocalVariable(name: "channel", arg: 2, scope: !778, file: !761, line: 26, type: !136)
!782 = !DILocation(line: 26, column: 70, scope: !778)
!783 = !DILocalVariable(name: "period", arg: 3, scope: !778, file: !761, line: 26, type: !136)
!784 = !DILocation(line: 26, column: 88, scope: !778)
!785 = !DILocalVariable(name: "pulse", arg: 4, scope: !778, file: !761, line: 26, type: !136)
!786 = !DILocation(line: 26, column: 105, scope: !778)
!787 = !DILocalVariable(name: "flags", arg: 5, scope: !778, file: !761, line: 26, type: !138)
!788 = !DILocation(line: 26, column: 124, scope: !778)
!789 = !DILocation(line: 38, column: 2, scope: !778)
!790 = !DILocation(line: 38, column: 7, scope: !791)
!791 = distinct !DILexicalBlock(scope: !778, file: !761, line: 38, column: 5)
!792 = !{i64 183911}
!793 = !DILocation(line: 38, column: 47, scope: !791)
!794 = !DILocation(line: 39, column: 31, scope: !778)
!795 = !DILocation(line: 39, column: 36, scope: !778)
!796 = !DILocation(line: 39, column: 45, scope: !778)
!797 = !DILocation(line: 39, column: 53, scope: !778)
!798 = !DILocation(line: 39, column: 60, scope: !778)
!799 = !DILocation(line: 39, column: 9, scope: !778)
!800 = !DILocation(line: 39, column: 2, scope: !778)
