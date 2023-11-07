; ModuleID = '../bc_files/fatal.bc'
source_filename = "/home/sri/zephyrproject/zephyr/kernel/fatal.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-arm-none-eabi"

%struct.z_kernel = type { [1 x %struct._cpu], %struct._ready_q }
%struct._cpu = type { i32, ptr, ptr, ptr, i8, %struct._cpu_arch }
%struct._cpu_arch = type {}
%struct._ready_q = type { ptr, %struct._dnode }
%struct._dnode = type { %union.anon.0, %union.anon.1 }
%union.anon.0 = type { ptr }
%union.anon.1 = type { ptr }
%struct.log_source_const_data = type { ptr, i8 }
%struct.k_thread = type { %struct._thread_base, %struct._callee_saved, ptr, %struct._wait_q_t, i32, ptr, %struct._thread_arch }
%struct._thread_base = type { %union.anon, ptr, i8, i8, %union.anon.2, i32, ptr, %struct._timeout }
%union.anon = type { %struct._dnode }
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
%struct.__va_list = type { ptr }
%struct.__basic_sf = type { %union.anon.3, %union.anon.4, %union.anon.5, %union.anon.6, %union.anon.7, %union.anon.8, %union.anon.9, i32 }
%union.anon.3 = type { i32 }
%union.anon.4 = type { i32 }
%union.anon.5 = type { i32 }
%union.anon.6 = type { i32 }
%union.anon.7 = type { i32 }
%union.anon.8 = type { i32 }
%union.anon.9 = type { i32 }

@__log_current_const_data = internal global ptr @log_const_os, align 4, !dbg !0
@.str = private unnamed_addr constant [15 x i8] c"Halting system\00", align 1, !dbg !125
@_kernel = external global %struct.z_kernel, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c">>> ZEPHYR FATAL ERROR %d: %s on CPU %d\00", align 1, !dbg !132
@.str.2 = private unnamed_addr constant [33 x i8] c"Fault during interrupt handling\0A\00", align 1, !dbg !137
@.str.3 = private unnamed_addr constant [24 x i8] c"Current thread: %p (%s)\00", align 1, !dbg !142
@log_const_os = external constant %struct.log_source_const_data, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"CPU exception\00", align 1, !dbg !147
@.str.5 = private unnamed_addr constant [20 x i8] c"Unhandled interrupt\00", align 1, !dbg !152
@.str.6 = private unnamed_addr constant [15 x i8] c"Stack overflow\00", align 1, !dbg !157
@.str.7 = private unnamed_addr constant [12 x i8] c"Kernel oops\00", align 1, !dbg !159
@.str.8 = private unnamed_addr constant [13 x i8] c"Kernel panic\00", align 1, !dbg !164
@.str.9 = private unnamed_addr constant [14 x i8] c"Unknown error\00", align 1, !dbg !169
@.str.10 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1, !dbg !171

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_k_object_access_grant(ptr noundef %0, ptr noundef %1) #0 !dbg !194 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !316, metadata !DIExpression()), !dbg !317
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !318, metadata !DIExpression()), !dbg !319
  %5 = load ptr, ptr %3, align 4, !dbg !320
  %6 = load ptr, ptr %4, align 4, !dbg !321
  ret void, !dbg !322
}

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_k_object_release(ptr noundef %0) #0 !dbg !323 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !326, metadata !DIExpression()), !dbg !327
  %3 = load ptr, ptr %2, align 4, !dbg !328
  ret void, !dbg !329
}

; Function Attrs: noinline nounwind optnone
define internal ptr @z_impl_k_object_alloc(i8 noundef zeroext %0) #0 !dbg !330 {
  %2 = alloca i8, align 1
  store i8 %0, ptr %2, align 1
  call void @llvm.dbg.declare(metadata ptr %2, metadata !333, metadata !DIExpression()), !dbg !334
  %3 = load i8, ptr %2, align 1, !dbg !335
  ret ptr null, !dbg !336
}

; Function Attrs: noinline nounwind optnone
define internal ptr @z_impl_k_object_alloc_size(i8 noundef zeroext %0, i32 noundef %1) #0 !dbg !337 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8 %0, ptr %3, align 1
  call void @llvm.dbg.declare(metadata ptr %3, metadata !340, metadata !DIExpression()), !dbg !341
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !342, metadata !DIExpression()), !dbg !343
  %5 = load i8, ptr %3, align 1, !dbg !344
  %6 = load i32, ptr %4, align 4, !dbg !345
  ret ptr null, !dbg !346
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_thread_timeout_expires_ticks(ptr noundef %0) #0 !dbg !347 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !354, metadata !DIExpression()), !dbg !355
  %3 = load ptr, ptr %2, align 4, !dbg !356
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !357
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !358
  %6 = call i64 @z_timeout_expires(ptr noundef %5), !dbg !359
  ret i64 %6, !dbg !360
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_thread_timeout_remaining_ticks(ptr noundef %0) #0 !dbg !361 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !362, metadata !DIExpression()), !dbg !363
  %3 = load ptr, ptr %2, align 4, !dbg !364
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !365
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !366
  %6 = call i64 @z_timeout_remaining(ptr noundef %5), !dbg !367
  ret i64 %6, !dbg !368
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_timer_expires_ticks(ptr noundef %0) #0 !dbg !369 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !391, metadata !DIExpression()), !dbg !392
  %3 = load ptr, ptr %2, align 4, !dbg !393
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !394
  %5 = call i64 @z_timeout_expires(ptr noundef %4), !dbg !395
  ret i64 %5, !dbg !396
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_timer_remaining_ticks(ptr noundef %0) #0 !dbg !397 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !398, metadata !DIExpression()), !dbg !399
  %3 = load ptr, ptr %2, align 4, !dbg !400
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !401
  %5 = call i64 @z_timeout_remaining(ptr noundef %4), !dbg !402
  ret i64 %5, !dbg !403
}

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_k_timer_user_data_set(ptr noundef %0, ptr noundef %1) #0 !dbg !404 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !407, metadata !DIExpression()), !dbg !408
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !409, metadata !DIExpression()), !dbg !410
  %5 = load ptr, ptr %4, align 4, !dbg !411
  %6 = load ptr, ptr %3, align 4, !dbg !412
  %7 = getelementptr inbounds %struct.k_timer, ptr %6, i32 0, i32 6, !dbg !413
  store ptr %5, ptr %7, align 4, !dbg !414
  ret void, !dbg !415
}

; Function Attrs: noinline nounwind optnone
define internal ptr @z_impl_k_timer_user_data_get(ptr noundef %0) #0 !dbg !416 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !419, metadata !DIExpression()), !dbg !420
  %3 = load ptr, ptr %2, align 4, !dbg !421
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 6, !dbg !422
  %5 = load ptr, ptr %4, align 4, !dbg !422
  ret ptr %5, !dbg !423
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_queue_is_empty(ptr noundef %0) #0 !dbg !424 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !445, metadata !DIExpression()), !dbg !446
  %3 = load ptr, ptr %2, align 4, !dbg !447
  %4 = getelementptr inbounds %struct.k_queue, ptr %3, i32 0, i32 0, !dbg !448
  %5 = call zeroext i1 @sys_sflist_is_empty(ptr noundef %4), !dbg !449
  %6 = zext i1 %5 to i32, !dbg !450
  ret i32 %6, !dbg !451
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_sem_count_get(ptr noundef %0) #0 !dbg !452 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !461, metadata !DIExpression()), !dbg !462
  %3 = load ptr, ptr %2, align 4, !dbg !463
  %4 = getelementptr inbounds %struct.k_sem, ptr %3, i32 0, i32 1, !dbg !464
  %5 = load i32, ptr %4, align 4, !dbg !464
  ret i32 %5, !dbg !465
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_msgq_num_free_get(ptr noundef %0) #0 !dbg !466 {
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
define hidden void @coredump(i32 noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !497 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  store i32 %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !545, metadata !DIExpression()), !dbg !546
  store ptr %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !547, metadata !DIExpression()), !dbg !548
  store ptr %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !549, metadata !DIExpression()), !dbg !550
  %7 = load i32, ptr %4, align 4, !dbg !551
  %8 = load ptr, ptr %5, align 4, !dbg !552
  %9 = load ptr, ptr %6, align 4, !dbg !553
  ret void, !dbg !554
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone
define hidden void @coredump_memory_dump(i32 noundef %0, i32 noundef %1) #0 !dbg !555 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !559, metadata !DIExpression()), !dbg !560
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !561, metadata !DIExpression()), !dbg !562
  %5 = load i32, ptr %3, align 4, !dbg !563
  %6 = load i32, ptr %4, align 4, !dbg !564
  ret void, !dbg !565
}

; Function Attrs: noinline nounwind optnone
define hidden void @coredump_buffer_output(ptr noundef %0, i32 noundef %1) #0 !dbg !566 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !571, metadata !DIExpression()), !dbg !572
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !573, metadata !DIExpression()), !dbg !574
  %5 = load ptr, ptr %3, align 4, !dbg !575
  %6 = load i32, ptr %4, align 4, !dbg !576
  ret void, !dbg !577
}

; Function Attrs: noinline nounwind optnone
define hidden i32 @coredump_query(i8 noundef zeroext %0, ptr noundef %1) #0 !dbg !578 {
  %3 = alloca i8, align 1
  %4 = alloca ptr, align 4
  store i8 %0, ptr %3, align 1
  call void @llvm.dbg.declare(metadata ptr %3, metadata !581, metadata !DIExpression()), !dbg !582
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !583, metadata !DIExpression()), !dbg !584
  %5 = load i8, ptr %3, align 1, !dbg !585
  %6 = load ptr, ptr %4, align 4, !dbg !586
  ret i32 -134, !dbg !587
}

; Function Attrs: noinline nounwind optnone
define hidden i32 @coredump_cmd(i8 noundef zeroext %0, ptr noundef %1) #0 !dbg !588 {
  %3 = alloca i8, align 1
  %4 = alloca ptr, align 4
  store i8 %0, ptr %3, align 1
  call void @llvm.dbg.declare(metadata ptr %3, metadata !591, metadata !DIExpression()), !dbg !592
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !593, metadata !DIExpression()), !dbg !594
  %5 = load i8, ptr %3, align 1, !dbg !595
  %6 = load ptr, ptr %4, align 4, !dbg !596
  ret i32 -134, !dbg !597
}

; Function Attrs: noinline noreturn nounwind optnone
define weak hidden void @arch_system_halt(i32 noundef %0) #2 !dbg !598 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !601, metadata !DIExpression()), !dbg !602
  %4 = load i32, ptr %3, align 4, !dbg !603
  call void @llvm.dbg.declare(metadata ptr %2, metadata !604, metadata !DIExpression()), !dbg !609
  %5 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #5, !dbg !611, !srcloc !612
  store i32 %5, ptr %2, align 4, !dbg !611
  %6 = load i32, ptr %2, align 4, !dbg !613
  br label %7, !dbg !614

7:                                                ; preds = %7, %1
  br label %7, !dbg !615, !llvm.loop !618
}

; Function Attrs: noinline nounwind optnone
define weak hidden void @k_sys_fatal_error_handler(i32 noundef %0, ptr noundef %1) #0 !dbg !621 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 4
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !624, metadata !DIExpression()), !dbg !625
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !626, metadata !DIExpression()), !dbg !627
  %8 = load ptr, ptr %4, align 4, !dbg !628
  call void @log_panic(), !dbg !629
  br label %9, !dbg !630

9:                                                ; preds = %2
  call void @llvm.dbg.declare(metadata ptr %5, metadata !631, metadata !DIExpression()), !dbg !634
  %10 = call zeroext i1 @k_is_user_context(), !dbg !635
  %11 = zext i1 %10 to i8, !dbg !634
  store i8 %11, ptr %5, align 1, !dbg !634
  call void @llvm.dbg.declare(metadata ptr %6, metadata !636, metadata !DIExpression()), !dbg !637
  call void @llvm.dbg.declare(metadata ptr %7, metadata !638, metadata !DIExpression()), !dbg !639
  %12 = load ptr, ptr @__log_current_const_data, align 4, !dbg !640
  store ptr %12, ptr %7, align 4, !dbg !639
  br label %13, !dbg !641

13:                                               ; preds = %9
  %14 = load ptr, ptr %7, align 4, !dbg !642
  call void (i8, ptr, i8, ptr, i32, i32, ptr, ...) @z_log_msg_runtime_create(i8 noundef zeroext 0, ptr noundef %14, i8 noundef zeroext 1, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef @.str), !dbg !644
  store i32 0, ptr %6, align 4, !dbg !645
  br label %15, !dbg !646

15:                                               ; preds = %13
  %16 = load i32, ptr %6, align 4, !dbg !647
  br label %17, !dbg !648

17:                                               ; preds = %15
  %18 = load i32, ptr %3, align 4, !dbg !649
  call void @arch_system_halt(i32 noundef %18) #6, !dbg !650
  unreachable, !dbg !650
}

; Function Attrs: noinline nounwind optnone
define internal void @log_panic() #0 !dbg !651 {
  br label %1, !dbg !655

1:                                                ; preds = %0
  call void asm sideeffect "", "~{memory}"() #5, !dbg !656, !srcloc !658
  br label %2, !dbg !659

2:                                                ; preds = %1
  call void @z_impl_log_panic(), !dbg !660
  ret void, !dbg !661
}

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @k_is_user_context() #0 !dbg !662 {
  ret i1 false, !dbg !666
}

; Function Attrs: noinline nounwind optnone
define internal void @z_log_msg_runtime_create(i8 noundef zeroext %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ...) #0 !dbg !667 {
  %8 = alloca i8, align 1
  %9 = alloca ptr, align 4
  %10 = alloca i8, align 1
  %11 = alloca ptr, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca ptr, align 4
  %15 = alloca %struct.__va_list, align 4
  store i8 %0, ptr %8, align 1
  call void @llvm.dbg.declare(metadata ptr %8, metadata !670, metadata !DIExpression()), !dbg !671
  store ptr %1, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !672, metadata !DIExpression()), !dbg !673
  store i8 %2, ptr %10, align 1
  call void @llvm.dbg.declare(metadata ptr %10, metadata !674, metadata !DIExpression()), !dbg !675
  store ptr %3, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !676, metadata !DIExpression()), !dbg !677
  store i32 %4, ptr %12, align 4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !678, metadata !DIExpression()), !dbg !679
  store i32 %5, ptr %13, align 4
  call void @llvm.dbg.declare(metadata ptr %13, metadata !680, metadata !DIExpression()), !dbg !681
  store ptr %6, ptr %14, align 4
  call void @llvm.dbg.declare(metadata ptr %14, metadata !682, metadata !DIExpression()), !dbg !683
  call void @llvm.dbg.declare(metadata ptr %15, metadata !684, metadata !DIExpression()), !dbg !691
  call void @llvm.va_start(ptr %15), !dbg !692
  %16 = load i8, ptr %8, align 1, !dbg !693
  %17 = load ptr, ptr %9, align 4, !dbg !694
  %18 = load i8, ptr %10, align 1, !dbg !695
  %19 = load ptr, ptr %11, align 4, !dbg !696
  %20 = load i32, ptr %12, align 4, !dbg !697
  %21 = load i32, ptr %13, align 4, !dbg !698
  %22 = load ptr, ptr %14, align 4, !dbg !699
  %23 = getelementptr inbounds %struct.__va_list, ptr %15, i32 0, i32 0, !dbg !700
  %24 = load [1 x i32], ptr %23, align 4, !dbg !700
  call void @z_log_msg_runtime_vcreate(i8 noundef zeroext %16, ptr noundef %17, i8 noundef zeroext %18, ptr noundef %19, i32 noundef %20, i32 noundef %21, ptr noundef %22, [1 x i32] %24), !dbg !700
  call void @llvm.va_end(ptr %15), !dbg !701
  ret void, !dbg !702
}

; Function Attrs: noinline noreturn nounwind optnone
define hidden void @k_fatal_halt(i32 noundef %0) #2 !dbg !703 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !704, metadata !DIExpression()), !dbg !705
  %3 = load i32, ptr %2, align 4, !dbg !706
  call void @arch_system_halt(i32 noundef %3) #6, !dbg !707
  unreachable, !dbg !707
}

; Function Attrs: noinline nounwind optnone
define hidden void @z_fatal_error(i32 noundef %0, ptr noundef %1) #0 !dbg !708 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 4
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca ptr, align 4
  %14 = alloca i8, align 1
  %15 = alloca i32, align 4
  %16 = alloca ptr, align 4
  %17 = alloca i8, align 1
  %18 = alloca i32, align 4
  %19 = alloca ptr, align 4
  store i32 %0, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !709, metadata !DIExpression()), !dbg !710
  store ptr %1, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !711, metadata !DIExpression()), !dbg !712
  call void @llvm.dbg.declare(metadata ptr %9, metadata !713, metadata !DIExpression()), !dbg !714
  call void @llvm.dbg.declare(metadata ptr %6, metadata !604, metadata !DIExpression()), !dbg !715
  %20 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #5, !dbg !717, !srcloc !612
  store i32 %20, ptr %6, align 4, !dbg !717
  %21 = load i32, ptr %6, align 4, !dbg !718
  store i32 %21, ptr %9, align 4, !dbg !714
  call void @llvm.dbg.declare(metadata ptr %10, metadata !719, metadata !DIExpression()), !dbg !720
  %22 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !721
  store ptr %22, ptr %10, align 4, !dbg !720
  br label %23, !dbg !722

23:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata ptr %11, metadata !723, metadata !DIExpression()), !dbg !725
  %24 = call zeroext i1 @k_is_user_context(), !dbg !726
  %25 = zext i1 %24 to i8, !dbg !725
  store i8 %25, ptr %11, align 1, !dbg !725
  call void @llvm.dbg.declare(metadata ptr %12, metadata !727, metadata !DIExpression()), !dbg !728
  call void @llvm.dbg.declare(metadata ptr %13, metadata !729, metadata !DIExpression()), !dbg !730
  %26 = load ptr, ptr @__log_current_const_data, align 4, !dbg !731
  store ptr %26, ptr %13, align 4, !dbg !730
  br label %27, !dbg !732

27:                                               ; preds = %23
  %28 = load ptr, ptr %13, align 4, !dbg !733
  %29 = load i32, ptr %7, align 4, !dbg !735
  %30 = load i32, ptr %7, align 4, !dbg !736
  %31 = call ptr @reason_to_str(i32 noundef %30), !dbg !737
  %32 = load i8, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 4), align 4, !dbg !738
  %33 = zext i8 %32 to i32, !dbg !739
  call void (i8, ptr, i8, ptr, i32, i32, ptr, ...) @z_log_msg_runtime_create(i8 noundef zeroext 0, ptr noundef %28, i8 noundef zeroext 1, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef @.str.1, i32 noundef %29, ptr noundef %31, i32 noundef %33), !dbg !740
  store i32 0, ptr %12, align 4, !dbg !741
  br label %34, !dbg !742

34:                                               ; preds = %27
  %35 = load i32, ptr %12, align 4, !dbg !743
  br label %36, !dbg !744

36:                                               ; preds = %34
  %37 = load ptr, ptr %8, align 4, !dbg !745
  %38 = icmp ne ptr %37, null, !dbg !747
  br i1 %38, label %39, label %58, !dbg !748

39:                                               ; preds = %36
  %40 = load ptr, ptr %8, align 4, !dbg !749
  store ptr %40, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !750, metadata !DIExpression()), !dbg !755
  %41 = load ptr, ptr %4, align 4, !dbg !757
  %42 = getelementptr inbounds %struct.__basic_sf, ptr %41, i32 0, i32 7, !dbg !758
  %43 = load i32, ptr %42, align 4, !dbg !758
  %44 = and i32 %43, 511, !dbg !759
  %45 = icmp ne i32 %44, 0, !dbg !760
  %46 = zext i1 %45 to i64, !dbg !760
  %47 = select i1 %45, i32 1, i32 0, !dbg !760
  br i1 %45, label %48, label %58, !dbg !761

48:                                               ; preds = %39
  br label %49, !dbg !762

49:                                               ; preds = %48
  call void @llvm.dbg.declare(metadata ptr %14, metadata !764, metadata !DIExpression()), !dbg !766
  %50 = call zeroext i1 @k_is_user_context(), !dbg !767
  %51 = zext i1 %50 to i8, !dbg !766
  store i8 %51, ptr %14, align 1, !dbg !766
  call void @llvm.dbg.declare(metadata ptr %15, metadata !768, metadata !DIExpression()), !dbg !769
  call void @llvm.dbg.declare(metadata ptr %16, metadata !770, metadata !DIExpression()), !dbg !771
  %52 = load ptr, ptr @__log_current_const_data, align 4, !dbg !772
  store ptr %52, ptr %16, align 4, !dbg !771
  br label %53, !dbg !773

53:                                               ; preds = %49
  %54 = load ptr, ptr %16, align 4, !dbg !774
  call void (i8, ptr, i8, ptr, i32, i32, ptr, ...) @z_log_msg_runtime_create(i8 noundef zeroext 0, ptr noundef %54, i8 noundef zeroext 1, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef @.str.2), !dbg !776
  store i32 0, ptr %15, align 4, !dbg !777
  br label %55, !dbg !778

55:                                               ; preds = %53
  %56 = load i32, ptr %15, align 4, !dbg !779
  br label %57, !dbg !780

57:                                               ; preds = %55
  br label %58, !dbg !781

58:                                               ; preds = %57, %39, %36
  br label %59, !dbg !782

59:                                               ; preds = %58
  call void @llvm.dbg.declare(metadata ptr %17, metadata !783, metadata !DIExpression()), !dbg !785
  %60 = call zeroext i1 @k_is_user_context(), !dbg !786
  %61 = zext i1 %60 to i8, !dbg !785
  store i8 %61, ptr %17, align 1, !dbg !785
  call void @llvm.dbg.declare(metadata ptr %18, metadata !787, metadata !DIExpression()), !dbg !788
  call void @llvm.dbg.declare(metadata ptr %19, metadata !789, metadata !DIExpression()), !dbg !790
  %62 = load ptr, ptr @__log_current_const_data, align 4, !dbg !791
  store ptr %62, ptr %19, align 4, !dbg !790
  br label %63, !dbg !792

63:                                               ; preds = %59
  %64 = load ptr, ptr %19, align 4, !dbg !793
  %65 = load ptr, ptr %10, align 4, !dbg !795
  %66 = load ptr, ptr %10, align 4, !dbg !796
  %67 = call ptr @thread_name_get(ptr noundef %66), !dbg !797
  call void (i8, ptr, i8, ptr, i32, i32, ptr, ...) @z_log_msg_runtime_create(i8 noundef zeroext 0, ptr noundef %64, i8 noundef zeroext 1, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef @.str.3, ptr noundef %65, ptr noundef %67), !dbg !798
  store i32 0, ptr %18, align 4, !dbg !799
  br label %68, !dbg !800

68:                                               ; preds = %63
  %69 = load i32, ptr %18, align 4, !dbg !801
  br label %70, !dbg !802

70:                                               ; preds = %68
  %71 = load i32, ptr %7, align 4, !dbg !803
  %72 = load ptr, ptr %8, align 4, !dbg !804
  %73 = load ptr, ptr %10, align 4, !dbg !805
  call void @coredump(i32 noundef %71, ptr noundef %72, ptr noundef %73), !dbg !806
  %74 = load i32, ptr %7, align 4, !dbg !807
  %75 = load ptr, ptr %8, align 4, !dbg !808
  call void @k_sys_fatal_error_handler(i32 noundef %74, ptr noundef %75), !dbg !809
  %76 = load ptr, ptr %8, align 4, !dbg !810
  %77 = icmp ne ptr %76, null, !dbg !814
  br i1 %77, label %78, label %88, !dbg !815

78:                                               ; preds = %70
  %79 = load ptr, ptr %8, align 4, !dbg !816
  store ptr %79, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !750, metadata !DIExpression()), !dbg !817
  %80 = load ptr, ptr %5, align 4, !dbg !819
  %81 = getelementptr inbounds %struct.__basic_sf, ptr %80, i32 0, i32 7, !dbg !820
  %82 = load i32, ptr %81, align 4, !dbg !820
  %83 = and i32 %82, 511, !dbg !821
  %84 = icmp ne i32 %83, 0, !dbg !822
  %85 = zext i1 %84 to i64, !dbg !822
  %86 = select i1 %84, i32 1, i32 0, !dbg !822
  br i1 %84, label %87, label %88, !dbg !823

87:                                               ; preds = %78
  br label %88, !dbg !824

88:                                               ; preds = %87, %78, %70
  %89 = load i32, ptr %9, align 4, !dbg !826
  store i32 %89, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !827, metadata !DIExpression()), !dbg !829
  %90 = load i32, ptr %3, align 4, !dbg !831
  %91 = icmp ne i32 %90, 0, !dbg !833
  br i1 %91, label %92, label %93, !dbg !834

92:                                               ; preds = %88
  br label %arch_irq_unlock.exit, !dbg !835

93:                                               ; preds = %88
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #5, !dbg !837, !srcloc !838
  br label %arch_irq_unlock.exit, !dbg !839

arch_irq_unlock.exit:                             ; preds = %92, %93
  %94 = load ptr, ptr %10, align 4, !dbg !840
  call void @k_thread_abort(ptr noundef %94), !dbg !843
  ret void, !dbg !844
}

; Function Attrs: noinline nounwind optnone
define internal ptr @reason_to_str(i32 noundef %0) #0 !dbg !845 {
  %2 = alloca ptr, align 4
  %3 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !848, metadata !DIExpression()), !dbg !849
  %4 = load i32, ptr %3, align 4, !dbg !850
  switch i32 %4, label %10 [
    i32 0, label %5
    i32 1, label %6
    i32 2, label %7
    i32 3, label %8
    i32 4, label %9
  ], !dbg !851

5:                                                ; preds = %1
  store ptr @.str.4, ptr %2, align 4, !dbg !852
  br label %11, !dbg !852

6:                                                ; preds = %1
  store ptr @.str.5, ptr %2, align 4, !dbg !854
  br label %11, !dbg !854

7:                                                ; preds = %1
  store ptr @.str.6, ptr %2, align 4, !dbg !855
  br label %11, !dbg !855

8:                                                ; preds = %1
  store ptr @.str.7, ptr %2, align 4, !dbg !856
  br label %11, !dbg !856

9:                                                ; preds = %1
  store ptr @.str.8, ptr %2, align 4, !dbg !857
  br label %11, !dbg !857

10:                                               ; preds = %1
  store ptr @.str.9, ptr %2, align 4, !dbg !858
  br label %11, !dbg !858

11:                                               ; preds = %10, %9, %8, %7, %6, %5
  %12 = load ptr, ptr %2, align 4, !dbg !859
  ret ptr %12, !dbg !859
}

; Function Attrs: noinline nounwind optnone
define internal ptr @thread_name_get(ptr noundef %0) #0 !dbg !860 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !863, metadata !DIExpression()), !dbg !864
  call void @llvm.dbg.declare(metadata ptr %3, metadata !865, metadata !DIExpression()), !dbg !866
  %4 = load ptr, ptr %2, align 4, !dbg !867
  %5 = icmp ne ptr %4, null, !dbg !868
  br i1 %5, label %6, label %9, !dbg !869

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 4, !dbg !870
  %8 = call ptr @k_thread_name_get(ptr noundef %7), !dbg !871
  br label %10, !dbg !869

9:                                                ; preds = %1
  br label %10, !dbg !869

10:                                               ; preds = %9, %6
  %11 = phi ptr [ %8, %6 ], [ null, %9 ], !dbg !869
  store ptr %11, ptr %3, align 4, !dbg !866
  %12 = load ptr, ptr %3, align 4, !dbg !872
  %13 = icmp eq ptr %12, null, !dbg !874
  br i1 %13, label %20, label %14, !dbg !875

14:                                               ; preds = %10
  %15 = load ptr, ptr %3, align 4, !dbg !876
  %16 = getelementptr inbounds i8, ptr %15, i32 0, !dbg !876
  %17 = load i8, ptr %16, align 1, !dbg !876
  %18 = zext i8 %17 to i32, !dbg !876
  %19 = icmp eq i32 %18, 0, !dbg !877
  br i1 %19, label %20, label %21, !dbg !878

20:                                               ; preds = %14, %10
  store ptr @.str.10, ptr %3, align 4, !dbg !879
  br label %21, !dbg !881

21:                                               ; preds = %20, %14
  %22 = load ptr, ptr %3, align 4, !dbg !882
  ret ptr %22, !dbg !883
}

; Function Attrs: noinline nounwind optnone
define internal void @k_thread_abort(ptr noundef %0) #0 !dbg !884 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !889, metadata !DIExpression()), !dbg !890
  br label %3, !dbg !891

3:                                                ; preds = %1
  call void asm sideeffect "", "~{memory}"() #5, !dbg !892, !srcloc !894
  br label %4, !dbg !895

4:                                                ; preds = %3
  %5 = load ptr, ptr %2, align 4, !dbg !896
  call void @z_impl_k_thread_abort(ptr noundef %5), !dbg !897
  ret void, !dbg !898
}

declare i64 @z_timeout_expires(ptr noundef) #3

declare i64 @z_timeout_remaining(ptr noundef) #3

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @sys_sflist_is_empty(ptr noundef %0) #0 !dbg !899 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !903, metadata !DIExpression()), !dbg !904
  %3 = load ptr, ptr %2, align 4, !dbg !905
  %4 = call ptr @sys_sflist_peek_head(ptr noundef %3), !dbg !906
  %5 = icmp eq ptr %4, null, !dbg !907
  ret i1 %5, !dbg !908
}

; Function Attrs: noinline nounwind optnone
define internal ptr @sys_sflist_peek_head(ptr noundef %0) #0 !dbg !909 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !912, metadata !DIExpression()), !dbg !913
  %3 = load ptr, ptr %2, align 4, !dbg !914
  %4 = getelementptr inbounds %struct._sflist, ptr %3, i32 0, i32 0, !dbg !915
  %5 = load ptr, ptr %4, align 4, !dbg !915
  ret ptr %5, !dbg !916
}

declare void @z_impl_log_panic() #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #4

; Function Attrs: noinline nounwind optnone
define internal void @z_log_msg_runtime_vcreate(i8 noundef zeroext %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, [1 x i32] %7) #0 !dbg !917 {
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
  call void @llvm.dbg.declare(metadata ptr %10, metadata !921, metadata !DIExpression()), !dbg !922
  store ptr %1, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !923, metadata !DIExpression()), !dbg !924
  store i8 %2, ptr %12, align 1
  call void @llvm.dbg.declare(metadata ptr %12, metadata !925, metadata !DIExpression()), !dbg !926
  store ptr %3, ptr %13, align 4
  call void @llvm.dbg.declare(metadata ptr %13, metadata !927, metadata !DIExpression()), !dbg !928
  store i32 %4, ptr %14, align 4
  call void @llvm.dbg.declare(metadata ptr %14, metadata !929, metadata !DIExpression()), !dbg !930
  store i32 %5, ptr %15, align 4
  call void @llvm.dbg.declare(metadata ptr %15, metadata !931, metadata !DIExpression()), !dbg !932
  store ptr %6, ptr %16, align 4
  call void @llvm.dbg.declare(metadata ptr %16, metadata !933, metadata !DIExpression()), !dbg !934
  call void @llvm.dbg.declare(metadata ptr %9, metadata !935, metadata !DIExpression()), !dbg !936
  br label %18, !dbg !937

18:                                               ; preds = %8
  call void asm sideeffect "", "~{memory}"() #5, !dbg !938, !srcloc !940
  br label %19, !dbg !941

19:                                               ; preds = %18
  %20 = load i8, ptr %10, align 1, !dbg !942
  %21 = load ptr, ptr %11, align 4, !dbg !943
  %22 = load i8, ptr %12, align 1, !dbg !944
  %23 = load ptr, ptr %13, align 4, !dbg !945
  %24 = load i32, ptr %14, align 4, !dbg !946
  %25 = load i32, ptr %15, align 4, !dbg !947
  %26 = load ptr, ptr %16, align 4, !dbg !948
  %27 = getelementptr inbounds %struct.__va_list, ptr %9, i32 0, i32 0, !dbg !949
  %28 = load [1 x i32], ptr %27, align 4, !dbg !949
  call void @z_impl_z_log_msg_runtime_vcreate(i8 noundef zeroext %20, ptr noundef %21, i8 noundef zeroext %22, ptr noundef %23, i32 noundef %24, i32 noundef %25, ptr noundef %26, [1 x i32] %28), !dbg !949
  ret void, !dbg !950
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #4

declare void @z_impl_z_log_msg_runtime_vcreate(i8 noundef zeroext, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef, ptr noundef, [1 x i32]) #3

declare ptr @k_thread_name_get(ptr noundef) #3

declare void @z_impl_k_thread_abort(ptr noundef) #3

attributes #0 = { noinline nounwind optnone "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { noinline noreturn nounwind optnone "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind }
attributes #6 = { noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!185, !186, !187, !188, !189, !190, !191, !192}
!llvm.ident = !{!193}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__log_current_const_data", scope: !2, file: !127, line: 20, type: !176, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !118, globals: !124, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "fatal.c", directory: "/home/sri/zephyrproject/zephyr/build")
!4 = !{!5, !13, !21, !27, !109}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "coredump_query_id", file: !6, line: 26, baseType: !7, size: 8, elements: !8)
!6 = !DIFile(filename: "include/zephyr/debug/coredump.h", directory: "/home/sri/zephyrproject/zephyr")
!7 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "COREDUMP_QUERY_GET_ERROR", value: 0)
!10 = !DIEnumerator(name: "COREDUMP_QUERY_HAS_STORED_DUMP", value: 1)
!11 = !DIEnumerator(name: "COREDUMP_QUERY_GET_STORED_DUMP_SIZE", value: 2)
!12 = !DIEnumerator(name: "COREDUMP_QUERY_MAX", value: 3)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "coredump_cmd_id", file: !6, line: 57, baseType: !7, size: 8, elements: !14)
!14 = !{!15, !16, !17, !18, !19, !20}
!15 = !DIEnumerator(name: "COREDUMP_CMD_CLEAR_ERROR", value: 0)
!16 = !DIEnumerator(name: "COREDUMP_CMD_VERIFY_STORED_DUMP", value: 1)
!17 = !DIEnumerator(name: "COREDUMP_CMD_ERASE_STORED_DUMP", value: 2)
!18 = !DIEnumerator(name: "COREDUMP_CMD_COPY_STORED_DUMP", value: 3)
!19 = !DIEnumerator(name: "COREDUMP_CMD_INVALIDATE_STORED_DUMP", value: 4)
!20 = !DIEnumerator(name: "COREDUMP_CMD_MAX", value: 5)
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "z_log_msg_mode", file: !22, line: 128, baseType: !7, size: 8, elements: !23)
!22 = !DIFile(filename: "include/zephyr/logging/log_msg.h", directory: "/home/sri/zephyrproject/zephyr")
!23 = !{!24, !25, !26}
!24 = !DIEnumerator(name: "Z_LOG_MSG_MODE_RUNTIME", value: 0)
!25 = !DIEnumerator(name: "Z_LOG_MSG_MODE_FROM_STACK", value: 1)
!26 = !DIEnumerator(name: "Z_LOG_MSG_MODE_ZERO_COPY", value: 2)
!27 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "k_objects", file: !28, line: 29, baseType: !7, size: 8, elements: !29)
!28 = !DIFile(filename: "include/zephyr/sys/kobject.h", directory: "/home/sri/zephyrproject/zephyr")
!29 = !{!30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108}
!30 = !DIEnumerator(name: "K_OBJ_ANY", value: 0)
!31 = !DIEnumerator(name: "K_OBJ_MEM_SLAB", value: 1)
!32 = !DIEnumerator(name: "K_OBJ_MSGQ", value: 2)
!33 = !DIEnumerator(name: "K_OBJ_MUTEX", value: 3)
!34 = !DIEnumerator(name: "K_OBJ_PIPE", value: 4)
!35 = !DIEnumerator(name: "K_OBJ_QUEUE", value: 5)
!36 = !DIEnumerator(name: "K_OBJ_POLL_SIGNAL", value: 6)
!37 = !DIEnumerator(name: "K_OBJ_SEM", value: 7)
!38 = !DIEnumerator(name: "K_OBJ_STACK", value: 8)
!39 = !DIEnumerator(name: "K_OBJ_THREAD", value: 9)
!40 = !DIEnumerator(name: "K_OBJ_TIMER", value: 10)
!41 = !DIEnumerator(name: "K_OBJ_THREAD_STACK_ELEMENT", value: 11)
!42 = !DIEnumerator(name: "K_OBJ_NET_SOCKET", value: 12)
!43 = !DIEnumerator(name: "K_OBJ_NET_IF", value: 13)
!44 = !DIEnumerator(name: "K_OBJ_SYS_MUTEX", value: 14)
!45 = !DIEnumerator(name: "K_OBJ_FUTEX", value: 15)
!46 = !DIEnumerator(name: "K_OBJ_CONDVAR", value: 16)
!47 = !DIEnumerator(name: "K_OBJ_DRIVER_GPIO", value: 17)
!48 = !DIEnumerator(name: "K_OBJ_DRIVER_PWM", value: 18)
!49 = !DIEnumerator(name: "K_OBJ_DRIVER_RESET", value: 19)
!50 = !DIEnumerator(name: "K_OBJ_DRIVER_UART", value: 20)
!51 = !DIEnumerator(name: "K_OBJ_DRIVER_CRYPTO", value: 21)
!52 = !DIEnumerator(name: "K_OBJ_DRIVER_ADC", value: 22)
!53 = !DIEnumerator(name: "K_OBJ_DRIVER_AUXDISPLAY", value: 23)
!54 = !DIEnumerator(name: "K_OBJ_DRIVER_BBRAM", value: 24)
!55 = !DIEnumerator(name: "K_OBJ_DRIVER_CAN", value: 25)
!56 = !DIEnumerator(name: "K_OBJ_DRIVER_CHARGER", value: 26)
!57 = !DIEnumerator(name: "K_OBJ_DRIVER_COREDUMP", value: 27)
!58 = !DIEnumerator(name: "K_OBJ_DRIVER_COUNTER", value: 28)
!59 = !DIEnumerator(name: "K_OBJ_DRIVER_DAC", value: 29)
!60 = !DIEnumerator(name: "K_OBJ_DRIVER_DAI", value: 30)
!61 = !DIEnumerator(name: "K_OBJ_DRIVER_DMA", value: 31)
!62 = !DIEnumerator(name: "K_OBJ_DRIVER_EDAC", value: 32)
!63 = !DIEnumerator(name: "K_OBJ_DRIVER_EEPROM", value: 33)
!64 = !DIEnumerator(name: "K_OBJ_DRIVER_FUEL_GAUGE_EMUL", value: 34)
!65 = !DIEnumerator(name: "K_OBJ_DRIVER_EMUL_SENSOR_BACKEND_API", value: 35)
!66 = !DIEnumerator(name: "K_OBJ_DRIVER_ENTROPY", value: 36)
!67 = !DIEnumerator(name: "K_OBJ_DRIVER_ESPI", value: 37)
!68 = !DIEnumerator(name: "K_OBJ_DRIVER_ESPI_SAF", value: 38)
!69 = !DIEnumerator(name: "K_OBJ_DRIVER_FLASH", value: 39)
!70 = !DIEnumerator(name: "K_OBJ_DRIVER_FPGA", value: 40)
!71 = !DIEnumerator(name: "K_OBJ_DRIVER_FUEL_GAUGE", value: 41)
!72 = !DIEnumerator(name: "K_OBJ_DRIVER_HWSPINLOCK", value: 42)
!73 = !DIEnumerator(name: "K_OBJ_DRIVER_I2C", value: 43)
!74 = !DIEnumerator(name: "K_OBJ_DRIVER_I2S", value: 44)
!75 = !DIEnumerator(name: "K_OBJ_DRIVER_I3C", value: 45)
!76 = !DIEnumerator(name: "K_OBJ_DRIVER_IPM", value: 46)
!77 = !DIEnumerator(name: "K_OBJ_DRIVER_KSCAN", value: 47)
!78 = !DIEnumerator(name: "K_OBJ_DRIVER_LED", value: 48)
!79 = !DIEnumerator(name: "K_OBJ_DRIVER_MBOX", value: 49)
!80 = !DIEnumerator(name: "K_OBJ_DRIVER_MDIO", value: 50)
!81 = !DIEnumerator(name: "K_OBJ_DRIVER_MIPI_DSI", value: 51)
!82 = !DIEnumerator(name: "K_OBJ_DRIVER_PECI", value: 52)
!83 = !DIEnumerator(name: "K_OBJ_DRIVER_PS2", value: 53)
!84 = !DIEnumerator(name: "K_OBJ_DRIVER_PTP_CLOCK", value: 54)
!85 = !DIEnumerator(name: "K_OBJ_DRIVER_REGULATOR_PARENT", value: 55)
!86 = !DIEnumerator(name: "K_OBJ_DRIVER_REGULATOR", value: 56)
!87 = !DIEnumerator(name: "K_OBJ_DRIVER_RETAINED_MEM", value: 57)
!88 = !DIEnumerator(name: "K_OBJ_DRIVER_RTC", value: 58)
!89 = !DIEnumerator(name: "K_OBJ_DRIVER_SDHC", value: 59)
!90 = !DIEnumerator(name: "K_OBJ_DRIVER_SENSOR", value: 60)
!91 = !DIEnumerator(name: "K_OBJ_DRIVER_SMBUS", value: 61)
!92 = !DIEnumerator(name: "K_OBJ_DRIVER_SPI", value: 62)
!93 = !DIEnumerator(name: "K_OBJ_DRIVER_SYSCON", value: 63)
!94 = !DIEnumerator(name: "K_OBJ_DRIVER_W1", value: 64)
!95 = !DIEnumerator(name: "K_OBJ_DRIVER_WDT", value: 65)
!96 = !DIEnumerator(name: "K_OBJ_DRIVER_CAN_TRANSCEIVER", value: 66)
!97 = !DIEnumerator(name: "K_OBJ_DRIVER_UART_MUX", value: 67)
!98 = !DIEnumerator(name: "K_OBJ_DRIVER_ITS", value: 68)
!99 = !DIEnumerator(name: "K_OBJ_DRIVER_TGPIO", value: 69)
!100 = !DIEnumerator(name: "K_OBJ_DRIVER_PCIE_CTRL", value: 70)
!101 = !DIEnumerator(name: "K_OBJ_DRIVER_SVC", value: 71)
!102 = !DIEnumerator(name: "K_OBJ_DRIVER_BC12_EMUL", value: 72)
!103 = !DIEnumerator(name: "K_OBJ_DRIVER_BC12", value: 73)
!104 = !DIEnumerator(name: "K_OBJ_DRIVER_TCPC", value: 74)
!105 = !DIEnumerator(name: "K_OBJ_DRIVER_IVSHMEM", value: 75)
!106 = !DIEnumerator(name: "K_OBJ_DRIVER_EC_HOST_CMD_BACKEND_API", value: 76)
!107 = !DIEnumerator(name: "K_OBJ_DRIVER_ETHPHY", value: 77)
!108 = !DIEnumerator(name: "K_OBJ_LAST", value: 78)
!109 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "k_fatal_error_reason", file: !110, line: 24, baseType: !7, size: 8, elements: !111)
!110 = !DIFile(filename: "include/zephyr/fatal_types.h", directory: "/home/sri/zephyrproject/zephyr")
!111 = !{!112, !113, !114, !115, !116, !117}
!112 = !DIEnumerator(name: "K_ERR_CPU_EXCEPTION", value: 0)
!113 = !DIEnumerator(name: "K_ERR_SPURIOUS_IRQ", value: 1)
!114 = !DIEnumerator(name: "K_ERR_STACK_CHK_FAIL", value: 2)
!115 = !DIEnumerator(name: "K_ERR_KERNEL_OOPS", value: 3)
!116 = !DIEnumerator(name: "K_ERR_KERNEL_PANIC", value: 4)
!117 = !DIEnumerator(name: "K_ERR_ARCH_START", value: 16)
!118 = !{!119, !120, !123}
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 32)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !122, line: 62, baseType: !7)
!122 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/stdint.h", directory: "")
!123 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!124 = !{!125, !132, !137, !142, !0, !147, !152, !157, !159, !164, !169, !171}
!125 = !DIGlobalVariableExpression(var: !126, expr: !DIExpression())
!126 = distinct !DIGlobalVariable(scope: null, file: !127, line: 45, type: !128, isLocal: true, isDefinition: true)
!127 = !DIFile(filename: "kernel/fatal.c", directory: "/home/sri/zephyrproject/zephyr")
!128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 120, elements: !130)
!129 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!130 = !{!131}
!131 = !DISubrange(count: 15)
!132 = !DIGlobalVariableExpression(var: !133, expr: !DIExpression())
!133 = distinct !DIGlobalVariable(scope: null, file: !127, line: 100, type: !134, isLocal: true, isDefinition: true)
!134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 320, elements: !135)
!135 = !{!136}
!136 = !DISubrange(count: 40)
!137 = !DIGlobalVariableExpression(var: !138, expr: !DIExpression())
!138 = distinct !DIGlobalVariable(scope: null, file: !127, line: 111, type: !139, isLocal: true, isDefinition: true)
!139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 264, elements: !140)
!140 = !{!141}
!141 = !DISubrange(count: 33)
!142 = !DIGlobalVariableExpression(var: !143, expr: !DIExpression())
!143 = distinct !DIGlobalVariable(scope: null, file: !127, line: 115, type: !144, isLocal: true, isDefinition: true)
!144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 192, elements: !145)
!145 = !{!146}
!146 = !DISubrange(count: 24)
!147 = !DIGlobalVariableExpression(var: !148, expr: !DIExpression())
!148 = distinct !DIGlobalVariable(scope: null, file: !127, line: 66, type: !149, isLocal: true, isDefinition: true)
!149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 112, elements: !150)
!150 = !{!151}
!151 = !DISubrange(count: 14)
!152 = !DIGlobalVariableExpression(var: !153, expr: !DIExpression())
!153 = distinct !DIGlobalVariable(scope: null, file: !127, line: 68, type: !154, isLocal: true, isDefinition: true)
!154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 160, elements: !155)
!155 = !{!156}
!156 = !DISubrange(count: 20)
!157 = !DIGlobalVariableExpression(var: !158, expr: !DIExpression())
!158 = distinct !DIGlobalVariable(scope: null, file: !127, line: 70, type: !128, isLocal: true, isDefinition: true)
!159 = !DIGlobalVariableExpression(var: !160, expr: !DIExpression())
!160 = distinct !DIGlobalVariable(scope: null, file: !127, line: 72, type: !161, isLocal: true, isDefinition: true)
!161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 96, elements: !162)
!162 = !{!163}
!163 = !DISubrange(count: 12)
!164 = !DIGlobalVariableExpression(var: !165, expr: !DIExpression())
!165 = distinct !DIGlobalVariable(scope: null, file: !127, line: 74, type: !166, isLocal: true, isDefinition: true)
!166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 104, elements: !167)
!167 = !{!168}
!168 = !DISubrange(count: 13)
!169 = !DIGlobalVariableExpression(var: !170, expr: !DIExpression())
!170 = distinct !DIGlobalVariable(scope: null, file: !127, line: 76, type: !149, isLocal: true, isDefinition: true)
!171 = !DIGlobalVariableExpression(var: !172, expr: !DIExpression())
!172 = distinct !DIGlobalVariable(scope: null, file: !127, line: 56, type: !173, isLocal: true, isDefinition: true)
!173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 64, elements: !174)
!174 = !{!175}
!175 = !DISubrange(count: 8)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 32)
!177 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !178)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "log_source_const_data", file: !179, line: 17, size: 64, elements: !180)
!179 = !DIFile(filename: "include/zephyr/logging/log_instance.h", directory: "/home/sri/zephyrproject/zephyr")
!180 = !{!181, !184}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !178, file: !179, line: 18, baseType: !182, size: 32)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 32)
!183 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !129)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !178, file: !179, line: 19, baseType: !121, size: 8, offset: 32)
!185 = !{i32 7, !"Dwarf Version", i32 4}
!186 = !{i32 2, !"Debug Info Version", i32 3}
!187 = !{i32 1, !"wchar_size", i32 4}
!188 = !{i32 1, !"static_rwdata", i32 1}
!189 = !{i32 1, !"enumsize_buildattr", i32 1}
!190 = !{i32 1, !"armlib_unavailable", i32 0}
!191 = !{i32 8, !"PIC Level", i32 2}
!192 = !{i32 7, !"PIE Level", i32 2}
!193 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
!194 = distinct !DISubprogram(name: "z_impl_k_object_access_grant", scope: !28, file: !28, line: 223, type: !195, scopeLine: 225, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !310)
!195 = !DISubroutineType(types: !196)
!196 = !{null, !197, !199}
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 32)
!198 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 32)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_thread", file: !201, line: 250, size: 896, elements: !202)
!201 = !DIFile(filename: "include/zephyr/kernel/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!202 = !{!203, !274, !287, !288, !289, !290, !311}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !200, file: !201, line: 252, baseType: !204, size: 384)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_base", file: !201, line: 58, size: 384, elements: !205)
!205 = !{!206, !234, !242, !243, !244, !257, !260, !261}
!206 = !DIDerivedType(tag: DW_TAG_member, scope: !204, file: !201, line: 61, baseType: !207, size: 64)
!207 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !204, file: !201, line: 61, size: 64, elements: !208)
!208 = !{!209, !225}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_dlist", scope: !207, file: !201, line: 62, baseType: !210, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dnode_t", file: !211, line: 55, baseType: !212)
!211 = !DIFile(filename: "include/zephyr/sys/dlist.h", directory: "/home/sri/zephyrproject/zephyr")
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_dnode", file: !211, line: 37, size: 64, elements: !213)
!213 = !{!214, !220}
!214 = !DIDerivedType(tag: DW_TAG_member, scope: !212, file: !211, line: 38, baseType: !215, size: 32)
!215 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !212, file: !211, line: 38, size: 32, elements: !216)
!216 = !{!217, !219}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !215, file: !211, line: 39, baseType: !218, size: 32)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 32)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !215, file: !211, line: 40, baseType: !218, size: 32)
!220 = !DIDerivedType(tag: DW_TAG_member, scope: !212, file: !211, line: 42, baseType: !221, size: 32, offset: 32)
!221 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !212, file: !211, line: 42, size: 32, elements: !222)
!222 = !{!223, !224}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !221, file: !211, line: 43, baseType: !218, size: 32)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !221, file: !211, line: 44, baseType: !218, size: 32)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_rb", scope: !207, file: !201, line: 63, baseType: !226, size: 64)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rbnode", file: !227, line: 58, size: 64, elements: !228)
!227 = !DIFile(filename: "include/zephyr/sys/rb.h", directory: "/home/sri/zephyrproject/zephyr")
!228 = !{!229}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !226, file: !227, line: 60, baseType: !230, size: 64)
!230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !231, size: 64, elements: !232)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 32)
!232 = !{!233}
!233 = !DISubrange(count: 2)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "pended_on", scope: !204, file: !201, line: 69, baseType: !235, size: 32, offset: 64)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 32)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "_wait_q_t", file: !237, line: 243, baseType: !238)
!237 = !DIFile(filename: "include/zephyr/kernel_structs.h", directory: "/home/sri/zephyrproject/zephyr")
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !237, line: 241, size: 64, elements: !239)
!239 = !{!240}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !238, file: !237, line: 242, baseType: !241, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dlist_t", file: !211, line: 51, baseType: !212)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "user_options", scope: !204, file: !201, line: 72, baseType: !121, size: 8, offset: 96)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "thread_state", scope: !204, file: !201, line: 75, baseType: !121, size: 8, offset: 104)
!244 = !DIDerivedType(tag: DW_TAG_member, scope: !204, file: !201, line: 91, baseType: !245, size: 16, offset: 112)
!245 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !204, file: !201, line: 91, size: 16, elements: !246)
!246 = !{!247, !254}
!247 = !DIDerivedType(tag: DW_TAG_member, scope: !245, file: !201, line: 92, baseType: !248, size: 16)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !245, file: !201, line: 92, size: 16, elements: !249)
!249 = !{!250, !253}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !248, file: !201, line: 97, baseType: !251, size: 8)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !122, line: 56, baseType: !252)
!252 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "sched_locked", scope: !248, file: !201, line: 98, baseType: !121, size: 8, offset: 8)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "preempt", scope: !245, file: !201, line: 101, baseType: !255, size: 16)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !122, line: 63, baseType: !256)
!256 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "order_key", scope: !204, file: !201, line: 108, baseType: !258, size: 32, offset: 128)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !122, line: 64, baseType: !259)
!259 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "swap_data", scope: !204, file: !201, line: 132, baseType: !119, size: 32, offset: 160)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !204, file: !201, line: 136, baseType: !262, size: 192, offset: 192)
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_timeout", file: !237, line: 254, size: 192, elements: !263)
!263 = !{!264, !265, !271}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !262, file: !237, line: 255, baseType: !210, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !262, file: !237, line: 256, baseType: !266, size: 32, offset: 64)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "_timeout_func_t", file: !237, line: 252, baseType: !267)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 32)
!268 = !DISubroutineType(types: !269)
!269 = !{null, !270}
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 32)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "dticks", scope: !262, file: !237, line: 259, baseType: !272, size: 64, offset: 128)
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !122, line: 59, baseType: !273)
!273 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "callee_saved", scope: !200, file: !201, line: 255, baseType: !275, size: 288, offset: 384)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_callee_saved", file: !276, line: 25, size: 288, elements: !277)
!276 = !DIFile(filename: "include/zephyr/arch/arm/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!277 = !{!278, !279, !280, !281, !282, !283, !284, !285, !286}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "v1", scope: !275, file: !276, line: 26, baseType: !258, size: 32)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "v2", scope: !275, file: !276, line: 27, baseType: !258, size: 32, offset: 32)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "v3", scope: !275, file: !276, line: 28, baseType: !258, size: 32, offset: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "v4", scope: !275, file: !276, line: 29, baseType: !258, size: 32, offset: 96)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "v5", scope: !275, file: !276, line: 30, baseType: !258, size: 32, offset: 128)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "v6", scope: !275, file: !276, line: 31, baseType: !258, size: 32, offset: 160)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "v7", scope: !275, file: !276, line: 32, baseType: !258, size: 32, offset: 192)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "v8", scope: !275, file: !276, line: 33, baseType: !258, size: 32, offset: 224)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "psp", scope: !275, file: !276, line: 34, baseType: !258, size: 32, offset: 256)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "init_data", scope: !200, file: !201, line: 258, baseType: !119, size: 32, offset: 672)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "join_queue", scope: !200, file: !201, line: 261, baseType: !236, size: 64, offset: 704)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "errno_var", scope: !200, file: !201, line: 302, baseType: !123, size: 32, offset: 768)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "resource_pool", scope: !200, file: !201, line: 333, baseType: !291, size: 32, offset: 800)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 32)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_heap", file: !293, line: 5291, size: 160, elements: !294)
!293 = !DIFile(filename: "include/zephyr/kernel.h", directory: "/home/sri/zephyrproject/zephyr")
!294 = !{!295, !306, !307}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !292, file: !293, line: 5292, baseType: !296, size: 96)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sys_heap", file: !297, line: 56, size: 96, elements: !298)
!297 = !DIFile(filename: "include/zephyr/sys/sys_heap.h", directory: "/home/sri/zephyrproject/zephyr")
!298 = !{!299, !302, !303}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !296, file: !297, line: 57, baseType: !300, size: 32)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 32)
!301 = !DICompositeType(tag: DW_TAG_structure_type, name: "z_heap", file: !297, line: 57, flags: DIFlagFwdDecl)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "init_mem", scope: !296, file: !297, line: 58, baseType: !119, size: 32, offset: 32)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "init_bytes", scope: !296, file: !297, line: 59, baseType: !304, size: 32, offset: 64)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !305, line: 46, baseType: !259)
!305 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/lib/clang/17/include/stddef.h", directory: "")
!306 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !292, file: !293, line: 5293, baseType: !236, size: 64, offset: 96)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !292, file: !293, line: 5294, baseType: !308, offset: 160)
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_spinlock", file: !309, line: 45, elements: !310)
!309 = !DIFile(filename: "include/zephyr/spinlock.h", directory: "/home/sri/zephyrproject/zephyr")
!310 = !{}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !200, file: !201, line: 355, baseType: !312, size: 64, offset: 832)
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_arch", file: !276, line: 60, size: 64, elements: !313)
!313 = !{!314, !315}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "basepri", scope: !312, file: !276, line: 63, baseType: !258, size: 32)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "swap_return_value", scope: !312, file: !276, line: 66, baseType: !258, size: 32, offset: 32)
!316 = !DILocalVariable(name: "object", arg: 1, scope: !194, file: !28, line: 223, type: !197)
!317 = !DILocation(line: 223, column: 61, scope: !194)
!318 = !DILocalVariable(name: "thread", arg: 2, scope: !194, file: !28, line: 224, type: !199)
!319 = !DILocation(line: 224, column: 24, scope: !194)
!320 = !DILocation(line: 226, column: 9, scope: !194)
!321 = !DILocation(line: 227, column: 9, scope: !194)
!322 = !DILocation(line: 228, column: 1, scope: !194)
!323 = distinct !DISubprogram(name: "z_impl_k_object_release", scope: !28, file: !28, line: 243, type: !324, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !310)
!324 = !DISubroutineType(types: !325)
!325 = !{null, !197}
!326 = !DILocalVariable(name: "object", arg: 1, scope: !323, file: !28, line: 243, type: !197)
!327 = !DILocation(line: 243, column: 56, scope: !323)
!328 = !DILocation(line: 245, column: 9, scope: !323)
!329 = !DILocation(line: 246, column: 1, scope: !323)
!330 = distinct !DISubprogram(name: "z_impl_k_object_alloc", scope: !28, file: !28, line: 359, type: !331, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !310)
!331 = !DISubroutineType(types: !332)
!332 = !{!119, !27}
!333 = !DILocalVariable(name: "otype", arg: 1, scope: !330, file: !28, line: 359, type: !27)
!334 = !DILocation(line: 359, column: 58, scope: !330)
!335 = !DILocation(line: 361, column: 9, scope: !330)
!336 = !DILocation(line: 363, column: 2, scope: !330)
!337 = distinct !DISubprogram(name: "z_impl_k_object_alloc_size", scope: !28, file: !28, line: 366, type: !338, scopeLine: 368, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !310)
!338 = !DISubroutineType(types: !339)
!339 = !{!119, !27, !304}
!340 = !DILocalVariable(name: "otype", arg: 1, scope: !337, file: !28, line: 366, type: !27)
!341 = !DILocation(line: 366, column: 63, scope: !337)
!342 = !DILocalVariable(name: "size", arg: 2, scope: !337, file: !28, line: 367, type: !304)
!343 = !DILocation(line: 367, column: 13, scope: !337)
!344 = !DILocation(line: 369, column: 9, scope: !337)
!345 = !DILocation(line: 370, column: 9, scope: !337)
!346 = !DILocation(line: 372, column: 2, scope: !337)
!347 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_expires_ticks", scope: !293, file: !293, line: 656, type: !348, scopeLine: 658, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !310)
!348 = !DISubroutineType(types: !349)
!349 = !{!350, !352}
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_ticks_t", file: !351, line: 46, baseType: !272)
!351 = !DIFile(filename: "include/zephyr/sys_clock.h", directory: "/home/sri/zephyrproject/zephyr")
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 32)
!353 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !200)
!354 = !DILocalVariable(name: "t", arg: 1, scope: !347, file: !293, line: 657, type: !352)
!355 = !DILocation(line: 657, column: 30, scope: !347)
!356 = !DILocation(line: 659, column: 28, scope: !347)
!357 = !DILocation(line: 659, column: 31, scope: !347)
!358 = !DILocation(line: 659, column: 36, scope: !347)
!359 = !DILocation(line: 659, column: 9, scope: !347)
!360 = !DILocation(line: 659, column: 2, scope: !347)
!361 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_remaining_ticks", scope: !293, file: !293, line: 671, type: !348, scopeLine: 673, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !310)
!362 = !DILocalVariable(name: "t", arg: 1, scope: !361, file: !293, line: 672, type: !352)
!363 = !DILocation(line: 672, column: 30, scope: !361)
!364 = !DILocation(line: 674, column: 30, scope: !361)
!365 = !DILocation(line: 674, column: 33, scope: !361)
!366 = !DILocation(line: 674, column: 38, scope: !361)
!367 = !DILocation(line: 674, column: 9, scope: !361)
!368 = !DILocation(line: 674, column: 2, scope: !361)
!369 = distinct !DISubprogram(name: "z_impl_k_timer_expires_ticks", scope: !293, file: !293, line: 1634, type: !370, scopeLine: 1636, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !310)
!370 = !DISubroutineType(types: !371)
!371 = !{!350, !372}
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 32)
!373 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !374)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_timer", file: !293, line: 1439, size: 448, elements: !375)
!375 = !{!376, !377, !378, !383, !384, !389, !390}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !374, file: !293, line: 1445, baseType: !262, size: 192)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !374, file: !293, line: 1448, baseType: !236, size: 64, offset: 192)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_fn", scope: !374, file: !293, line: 1451, baseType: !379, size: 32, offset: 256)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 32)
!380 = !DISubroutineType(types: !381)
!381 = !{null, !382}
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 32)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "stop_fn", scope: !374, file: !293, line: 1454, baseType: !379, size: 32, offset: 288)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !374, file: !293, line: 1457, baseType: !385, size: 64, offset: 320)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_timeout_t", file: !351, line: 67, baseType: !386)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !351, line: 65, size: 64, elements: !387)
!387 = !{!388}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "ticks", scope: !386, file: !351, line: 66, baseType: !350, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !374, file: !293, line: 1460, baseType: !258, size: 32, offset: 384)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !374, file: !293, line: 1463, baseType: !119, size: 32, offset: 416)
!391 = !DILocalVariable(name: "timer", arg: 1, scope: !369, file: !293, line: 1635, type: !372)
!392 = !DILocation(line: 1635, column: 34, scope: !369)
!393 = !DILocation(line: 1637, column: 28, scope: !369)
!394 = !DILocation(line: 1637, column: 35, scope: !369)
!395 = !DILocation(line: 1637, column: 9, scope: !369)
!396 = !DILocation(line: 1637, column: 2, scope: !369)
!397 = distinct !DISubprogram(name: "z_impl_k_timer_remaining_ticks", scope: !293, file: !293, line: 1649, type: !370, scopeLine: 1651, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !310)
!398 = !DILocalVariable(name: "timer", arg: 1, scope: !397, file: !293, line: 1650, type: !372)
!399 = !DILocation(line: 1650, column: 34, scope: !397)
!400 = !DILocation(line: 1652, column: 30, scope: !397)
!401 = !DILocation(line: 1652, column: 37, scope: !397)
!402 = !DILocation(line: 1652, column: 9, scope: !397)
!403 = !DILocation(line: 1652, column: 2, scope: !397)
!404 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_set", scope: !293, file: !293, line: 1689, type: !405, scopeLine: 1691, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !310)
!405 = !DISubroutineType(types: !406)
!406 = !{null, !382, !119}
!407 = !DILocalVariable(name: "timer", arg: 1, scope: !404, file: !293, line: 1689, type: !382)
!408 = !DILocation(line: 1689, column: 65, scope: !404)
!409 = !DILocalVariable(name: "user_data", arg: 2, scope: !404, file: !293, line: 1690, type: !119)
!410 = !DILocation(line: 1690, column: 19, scope: !404)
!411 = !DILocation(line: 1692, column: 21, scope: !404)
!412 = !DILocation(line: 1692, column: 2, scope: !404)
!413 = !DILocation(line: 1692, column: 9, scope: !404)
!414 = !DILocation(line: 1692, column: 19, scope: !404)
!415 = !DILocation(line: 1693, column: 1, scope: !404)
!416 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_get", scope: !293, file: !293, line: 1704, type: !417, scopeLine: 1705, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !310)
!417 = !DISubroutineType(types: !418)
!418 = !{!119, !372}
!419 = !DILocalVariable(name: "timer", arg: 1, scope: !416, file: !293, line: 1704, type: !372)
!420 = !DILocation(line: 1704, column: 72, scope: !416)
!421 = !DILocation(line: 1706, column: 9, scope: !416)
!422 = !DILocation(line: 1706, column: 16, scope: !416)
!423 = !DILocation(line: 1706, column: 2, scope: !416)
!424 = distinct !DISubprogram(name: "z_impl_k_queue_is_empty", scope: !293, file: !293, line: 2071, type: !425, scopeLine: 2072, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !310)
!425 = !DISubroutineType(types: !426)
!426 = !{!123, !427}
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 32)
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_queue", file: !293, line: 1830, size: 128, elements: !429)
!429 = !{!430, !443, !444}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "data_q", scope: !428, file: !293, line: 1831, baseType: !431, size: 64)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sflist_t", file: !432, line: 60, baseType: !433)
!432 = !DIFile(filename: "include/zephyr/sys/sflist.h", directory: "/home/sri/zephyrproject/zephyr")
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sflist", file: !432, line: 53, size: 64, elements: !434)
!434 = !{!435, !442}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !433, file: !432, line: 54, baseType: !436, size: 32)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 32)
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sfnode_t", file: !432, line: 50, baseType: !438)
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sfnode", file: !432, line: 44, size: 32, elements: !439)
!439 = !{!440}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "next_and_flags", scope: !438, file: !432, line: 45, baseType: !441, size: 32)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "unative_t", file: !432, line: 40, baseType: !258)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !433, file: !432, line: 55, baseType: !436, size: 32, offset: 32)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !428, file: !293, line: 1832, baseType: !308, offset: 64)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !428, file: !293, line: 1833, baseType: !236, size: 64, offset: 64)
!445 = !DILocalVariable(name: "queue", arg: 1, scope: !424, file: !293, line: 2071, type: !427)
!446 = !DILocation(line: 2071, column: 59, scope: !424)
!447 = !DILocation(line: 2073, column: 35, scope: !424)
!448 = !DILocation(line: 2073, column: 42, scope: !424)
!449 = !DILocation(line: 2073, column: 14, scope: !424)
!450 = !DILocation(line: 2073, column: 9, scope: !424)
!451 = !DILocation(line: 2073, column: 2, scope: !424)
!452 = distinct !DISubprogram(name: "z_impl_k_sem_count_get", scope: !293, file: !293, line: 3209, type: !453, scopeLine: 3210, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !310)
!453 = !DISubroutineType(types: !454)
!454 = !{!259, !455}
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 32)
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sem", file: !293, line: 3092, size: 128, elements: !457)
!457 = !{!458, !459, !460}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !456, file: !293, line: 3093, baseType: !236, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !456, file: !293, line: 3094, baseType: !259, size: 32, offset: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !456, file: !293, line: 3095, baseType: !259, size: 32, offset: 96)
!461 = !DILocalVariable(name: "sem", arg: 1, scope: !452, file: !293, line: 3209, type: !455)
!462 = !DILocation(line: 3209, column: 65, scope: !452)
!463 = !DILocation(line: 3211, column: 9, scope: !452)
!464 = !DILocation(line: 3211, column: 14, scope: !452)
!465 = !DILocation(line: 3211, column: 2, scope: !452)
!466 = distinct !DISubprogram(name: "z_impl_k_msgq_num_free_get", scope: !293, file: !293, line: 4649, type: !467, scopeLine: 4650, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !310)
!467 = !DISubroutineType(types: !468)
!468 = !{!258, !469}
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 32)
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_msgq", file: !293, line: 4390, size: 320, elements: !471)
!471 = !{!472, !473, !474, !475, !476, !478, !479, !480, !481, !482}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !470, file: !293, line: 4392, baseType: !236, size: 64)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !470, file: !293, line: 4394, baseType: !308, offset: 64)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "msg_size", scope: !470, file: !293, line: 4396, baseType: !304, size: 32, offset: 64)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !470, file: !293, line: 4398, baseType: !258, size: 32, offset: 96)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_start", scope: !470, file: !293, line: 4400, baseType: !477, size: 32, offset: 128)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 32)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_end", scope: !470, file: !293, line: 4402, baseType: !477, size: 32, offset: 160)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "read_ptr", scope: !470, file: !293, line: 4404, baseType: !477, size: 32, offset: 192)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "write_ptr", scope: !470, file: !293, line: 4406, baseType: !477, size: 32, offset: 224)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "used_msgs", scope: !470, file: !293, line: 4408, baseType: !258, size: 32, offset: 256)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !470, file: !293, line: 4413, baseType: !121, size: 8, offset: 288)
!483 = !DILocalVariable(name: "msgq", arg: 1, scope: !466, file: !293, line: 4649, type: !469)
!484 = !DILocation(line: 4649, column: 66, scope: !466)
!485 = !DILocation(line: 4651, column: 9, scope: !466)
!486 = !DILocation(line: 4651, column: 15, scope: !466)
!487 = !DILocation(line: 4651, column: 26, scope: !466)
!488 = !DILocation(line: 4651, column: 32, scope: !466)
!489 = !DILocation(line: 4651, column: 24, scope: !466)
!490 = !DILocation(line: 4651, column: 2, scope: !466)
!491 = distinct !DISubprogram(name: "z_impl_k_msgq_num_used_get", scope: !293, file: !293, line: 4665, type: !467, scopeLine: 4666, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !310)
!492 = !DILocalVariable(name: "msgq", arg: 1, scope: !491, file: !293, line: 4665, type: !469)
!493 = !DILocation(line: 4665, column: 66, scope: !491)
!494 = !DILocation(line: 4667, column: 9, scope: !491)
!495 = !DILocation(line: 4667, column: 15, scope: !491)
!496 = !DILocation(line: 4667, column: 2, scope: !491)
!497 = distinct !DISubprogram(name: "coredump", scope: !6, file: !6, line: 232, type: !498, scopeLine: 234, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !310)
!498 = !DISubroutineType(types: !499)
!499 = !{null, !259, !500, !199}
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 32)
!501 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !502)
!502 = !DIDerivedType(tag: DW_TAG_typedef, name: "z_arch_esf_t", file: !503, line: 122, baseType: !504)
!503 = !DIFile(filename: "include/zephyr/arch/arm/cortex_m/exc.h", directory: "/home/sri/zephyrproject/zephyr")
!504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__esf", file: !503, line: 101, size: 256, elements: !505)
!505 = !{!506}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "basic", scope: !504, file: !503, line: 111, baseType: !507, size: 256)
!507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__basic_sf", file: !503, line: 102, size: 256, elements: !508)
!508 = !{!509, !514, !519, !524, !529, !534, !539, !544}
!509 = !DIDerivedType(tag: DW_TAG_member, scope: !507, file: !503, line: 103, baseType: !510, size: 32)
!510 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !507, file: !503, line: 103, size: 32, elements: !511)
!511 = !{!512, !513}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "a1", scope: !510, file: !503, line: 103, baseType: !258, size: 32)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "r0", scope: !510, file: !503, line: 103, baseType: !258, size: 32)
!514 = !DIDerivedType(tag: DW_TAG_member, scope: !507, file: !503, line: 104, baseType: !515, size: 32, offset: 32)
!515 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !507, file: !503, line: 104, size: 32, elements: !516)
!516 = !{!517, !518}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "a2", scope: !515, file: !503, line: 104, baseType: !258, size: 32)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "r1", scope: !515, file: !503, line: 104, baseType: !258, size: 32)
!519 = !DIDerivedType(tag: DW_TAG_member, scope: !507, file: !503, line: 105, baseType: !520, size: 32, offset: 64)
!520 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !507, file: !503, line: 105, size: 32, elements: !521)
!521 = !{!522, !523}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "a3", scope: !520, file: !503, line: 105, baseType: !258, size: 32)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "r2", scope: !520, file: !503, line: 105, baseType: !258, size: 32)
!524 = !DIDerivedType(tag: DW_TAG_member, scope: !507, file: !503, line: 106, baseType: !525, size: 32, offset: 96)
!525 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !507, file: !503, line: 106, size: 32, elements: !526)
!526 = !{!527, !528}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "a4", scope: !525, file: !503, line: 106, baseType: !258, size: 32)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "r3", scope: !525, file: !503, line: 106, baseType: !258, size: 32)
!529 = !DIDerivedType(tag: DW_TAG_member, scope: !507, file: !503, line: 107, baseType: !530, size: 32, offset: 128)
!530 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !507, file: !503, line: 107, size: 32, elements: !531)
!531 = !{!532, !533}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !530, file: !503, line: 107, baseType: !258, size: 32)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !530, file: !503, line: 107, baseType: !258, size: 32)
!534 = !DIDerivedType(tag: DW_TAG_member, scope: !507, file: !503, line: 108, baseType: !535, size: 32, offset: 160)
!535 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !507, file: !503, line: 108, size: 32, elements: !536)
!536 = !{!537, !538}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "lr", scope: !535, file: !503, line: 108, baseType: !258, size: 32)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !535, file: !503, line: 108, baseType: !258, size: 32)
!539 = !DIDerivedType(tag: DW_TAG_member, scope: !507, file: !503, line: 109, baseType: !540, size: 32, offset: 192)
!540 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !507, file: !503, line: 109, size: 32, elements: !541)
!541 = !{!542, !543}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "pc", scope: !540, file: !503, line: 109, baseType: !258, size: 32)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !540, file: !503, line: 109, baseType: !258, size: 32)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "xpsr", scope: !507, file: !503, line: 110, baseType: !258, size: 32, offset: 224)
!545 = !DILocalVariable(name: "reason", arg: 1, scope: !497, file: !6, line: 232, type: !259)
!546 = !DILocation(line: 232, column: 28, scope: !497)
!547 = !DILocalVariable(name: "esf", arg: 2, scope: !497, file: !6, line: 232, type: !500)
!548 = !DILocation(line: 232, column: 56, scope: !497)
!549 = !DILocalVariable(name: "thread", arg: 3, scope: !497, file: !6, line: 233, type: !199)
!550 = !DILocation(line: 233, column: 25, scope: !497)
!551 = !DILocation(line: 235, column: 9, scope: !497)
!552 = !DILocation(line: 236, column: 9, scope: !497)
!553 = !DILocation(line: 237, column: 9, scope: !497)
!554 = !DILocation(line: 238, column: 1, scope: !497)
!555 = distinct !DISubprogram(name: "coredump_memory_dump", scope: !6, file: !6, line: 240, type: !556, scopeLine: 241, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !310)
!556 = !DISubroutineType(types: !557)
!557 = !{null, !558, !558}
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !122, line: 102, baseType: !259)
!559 = !DILocalVariable(name: "start_addr", arg: 1, scope: !555, file: !6, line: 240, type: !558)
!560 = !DILocation(line: 240, column: 37, scope: !555)
!561 = !DILocalVariable(name: "end_addr", arg: 2, scope: !555, file: !6, line: 240, type: !558)
!562 = !DILocation(line: 240, column: 59, scope: !555)
!563 = !DILocation(line: 242, column: 9, scope: !555)
!564 = !DILocation(line: 243, column: 9, scope: !555)
!565 = !DILocation(line: 244, column: 1, scope: !555)
!566 = distinct !DISubprogram(name: "coredump_buffer_output", scope: !6, file: !6, line: 246, type: !567, scopeLine: 247, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !310)
!567 = !DISubroutineType(types: !568)
!568 = !{null, !120, !569}
!569 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !570, line: 51, baseType: !259)
!570 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/string.h", directory: "")
!571 = !DILocalVariable(name: "buf", arg: 1, scope: !566, file: !6, line: 246, type: !120)
!572 = !DILocation(line: 246, column: 38, scope: !566)
!573 = !DILocalVariable(name: "buflen", arg: 2, scope: !566, file: !6, line: 246, type: !569)
!574 = !DILocation(line: 246, column: 50, scope: !566)
!575 = !DILocation(line: 248, column: 9, scope: !566)
!576 = !DILocation(line: 249, column: 9, scope: !566)
!577 = !DILocation(line: 250, column: 1, scope: !566)
!578 = distinct !DISubprogram(name: "coredump_query", scope: !6, file: !6, line: 252, type: !579, scopeLine: 253, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !310)
!579 = !DISubroutineType(types: !580)
!580 = !{!123, !5, !119}
!581 = !DILocalVariable(name: "query_id", arg: 1, scope: !578, file: !6, line: 252, type: !5)
!582 = !DILocation(line: 252, column: 43, scope: !578)
!583 = !DILocalVariable(name: "arg", arg: 2, scope: !578, file: !6, line: 252, type: !119)
!584 = !DILocation(line: 252, column: 59, scope: !578)
!585 = !DILocation(line: 254, column: 9, scope: !578)
!586 = !DILocation(line: 255, column: 9, scope: !578)
!587 = !DILocation(line: 256, column: 2, scope: !578)
!588 = distinct !DISubprogram(name: "coredump_cmd", scope: !6, file: !6, line: 259, type: !589, scopeLine: 260, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !310)
!589 = !DISubroutineType(types: !590)
!590 = !{!123, !13, !119}
!591 = !DILocalVariable(name: "query_id", arg: 1, scope: !588, file: !6, line: 259, type: !13)
!592 = !DILocation(line: 259, column: 39, scope: !588)
!593 = !DILocalVariable(name: "arg", arg: 2, scope: !588, file: !6, line: 259, type: !119)
!594 = !DILocation(line: 259, column: 55, scope: !588)
!595 = !DILocation(line: 261, column: 9, scope: !588)
!596 = !DILocation(line: 262, column: 9, scope: !588)
!597 = !DILocation(line: 263, column: 2, scope: !588)
!598 = distinct !DISubprogram(name: "arch_system_halt", scope: !127, file: !127, line: 23, type: !599, scopeLine: 24, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !310)
!599 = !DISubroutineType(types: !600)
!600 = !{null, !259}
!601 = !DILocalVariable(name: "reason", arg: 1, scope: !598, file: !127, line: 23, type: !259)
!602 = !DILocation(line: 23, column: 92, scope: !598)
!603 = !DILocation(line: 25, column: 9, scope: !598)
!604 = !DILocalVariable(name: "key", scope: !605, file: !606, line: 44, type: !259)
!605 = distinct !DISubprogram(name: "arch_irq_lock", scope: !606, file: !606, line: 42, type: !607, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !310)
!606 = !DIFile(filename: "include/zephyr/arch/arm/asm_inline_gcc.h", directory: "/home/sri/zephyrproject/zephyr")
!607 = !DISubroutineType(types: !608)
!608 = !{!259}
!609 = !DILocation(line: 44, column: 15, scope: !605, inlinedAt: !610)
!610 = distinct !DILocation(line: 31, column: 8, scope: !598)
!611 = !DILocation(line: 48, column: 2, scope: !605, inlinedAt: !610)
!612 = !{i64 66898}
!613 = !DILocation(line: 80, column: 9, scope: !605, inlinedAt: !610)
!614 = !DILocation(line: 32, column: 2, scope: !598)
!615 = !DILocation(line: 32, column: 2, scope: !616)
!616 = distinct !DILexicalBlock(scope: !617, file: !127, line: 32, column: 2)
!617 = distinct !DILexicalBlock(scope: !598, file: !127, line: 32, column: 2)
!618 = distinct !{!618, !619, !620}
!619 = !DILocation(line: 32, column: 2, scope: !617)
!620 = !DILocation(line: 34, column: 2, scope: !617)
!621 = distinct !DISubprogram(name: "k_sys_fatal_error_handler", scope: !127, file: !127, line: 39, type: !622, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !310)
!622 = !DISubroutineType(types: !623)
!623 = !{null, !259, !500}
!624 = !DILocalVariable(name: "reason", arg: 1, scope: !621, file: !127, line: 39, type: !259)
!625 = !DILocation(line: 39, column: 71, scope: !621)
!626 = !DILocalVariable(name: "esf", arg: 2, scope: !621, file: !127, line: 40, type: !500)
!627 = !DILocation(line: 40, column: 31, scope: !621)
!628 = !DILocation(line: 42, column: 9, scope: !621)
!629 = !DILocation(line: 44, column: 2, scope: !621)
!630 = !DILocation(line: 45, column: 2, scope: !621)
!631 = !DILocalVariable(name: "is_user_context", scope: !632, file: !127, line: 45, type: !633)
!632 = distinct !DILexicalBlock(scope: !621, file: !127, line: 45, column: 5)
!633 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!634 = !DILocation(line: 45, column: 331, scope: !632)
!635 = !DILocation(line: 45, column: 349, scope: !632)
!636 = !DILocalVariable(name: "_mode", scope: !632, file: !127, line: 45, type: !123)
!637 = !DILocation(line: 45, column: 509, scope: !632)
!638 = !DILocalVariable(name: "_src", scope: !632, file: !127, line: 45, type: !119)
!639 = !DILocation(line: 45, column: 522, scope: !632)
!640 = !DILocation(line: 45, column: 578, scope: !632)
!641 = !DILocation(line: 45, column: 604, scope: !632)
!642 = !DILocation(line: 45, column: 645, scope: !643)
!643 = distinct !DILexicalBlock(scope: !632, file: !127, line: 45, column: 607)
!644 = !DILocation(line: 45, column: 609, scope: !643)
!645 = !DILocation(line: 45, column: 776, scope: !643)
!646 = !DILocation(line: 45, column: 802, scope: !643)
!647 = !DILocation(line: 45, column: 821, scope: !632)
!648 = !DILocation(line: 45, column: 883, scope: !632)
!649 = !DILocation(line: 46, column: 19, scope: !621)
!650 = !DILocation(line: 46, column: 2, scope: !621)
!651 = distinct !DISubprogram(name: "log_panic", scope: !652, file: !652, line: 26, type: !653, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !310)
!652 = !DIFile(filename: "zephyr/include/generated/syscalls/log_ctrl.h", directory: "/home/sri/zephyrproject/zephyr/build")
!653 = !DISubroutineType(types: !654)
!654 = !{null}
!655 = !DILocation(line: 34, column: 2, scope: !651)
!656 = !DILocation(line: 34, column: 7, scope: !657)
!657 = distinct !DILexicalBlock(scope: !651, file: !652, line: 34, column: 5)
!658 = !{i64 352481}
!659 = !DILocation(line: 34, column: 47, scope: !657)
!660 = !DILocation(line: 35, column: 2, scope: !651)
!661 = !DILocation(line: 36, column: 1, scope: !651)
!662 = distinct !DISubprogram(name: "k_is_user_context", scope: !663, file: !663, line: 115, type: !664, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !310)
!663 = !DIFile(filename: "include/zephyr/syscall.h", directory: "/home/sri/zephyrproject/zephyr")
!664 = !DISubroutineType(types: !665)
!665 = !{!633}
!666 = !DILocation(line: 120, column: 2, scope: !662)
!667 = distinct !DISubprogram(name: "z_log_msg_runtime_create", scope: !22, file: !22, line: 568, type: !668, scopeLine: 573, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !310)
!668 = !DISubroutineType(types: !669)
!669 = !{null, !121, !197, !121, !197, !569, !258, !182, null}
!670 = !DILocalVariable(name: "domain_id", arg: 1, scope: !667, file: !22, line: 568, type: !121)
!671 = !DILocation(line: 568, column: 53, scope: !667)
!672 = !DILocalVariable(name: "source", arg: 2, scope: !667, file: !22, line: 569, type: !197)
!673 = !DILocation(line: 569, column: 23, scope: !667)
!674 = !DILocalVariable(name: "level", arg: 3, scope: !667, file: !22, line: 570, type: !121)
!675 = !DILocation(line: 570, column: 19, scope: !667)
!676 = !DILocalVariable(name: "data", arg: 4, scope: !667, file: !22, line: 570, type: !197)
!677 = !DILocation(line: 570, column: 38, scope: !667)
!678 = !DILocalVariable(name: "dlen", arg: 5, scope: !667, file: !22, line: 571, type: !569)
!679 = !DILocation(line: 571, column: 18, scope: !667)
!680 = !DILocalVariable(name: "package_flags", arg: 6, scope: !667, file: !22, line: 571, type: !258)
!681 = !DILocation(line: 571, column: 33, scope: !667)
!682 = !DILocalVariable(name: "fmt", arg: 7, scope: !667, file: !22, line: 572, type: !182)
!683 = !DILocation(line: 572, column: 23, scope: !667)
!684 = !DILocalVariable(name: "ap", scope: !667, file: !22, line: 574, type: !685)
!685 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !686, line: 22, baseType: !687)
!686 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/lib/clang/17/include/stdarg.h", directory: "")
!687 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, baseType: !688)
!688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 32, elements: !689)
!689 = !{!690}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "__ap", scope: !688, file: !3, line: 574, baseType: !119, size: 32)
!691 = !DILocation(line: 574, column: 10, scope: !667)
!692 = !DILocation(line: 576, column: 2, scope: !667)
!693 = !DILocation(line: 577, column: 28, scope: !667)
!694 = !DILocation(line: 577, column: 39, scope: !667)
!695 = !DILocation(line: 577, column: 47, scope: !667)
!696 = !DILocation(line: 578, column: 8, scope: !667)
!697 = !DILocation(line: 578, column: 14, scope: !667)
!698 = !DILocation(line: 578, column: 20, scope: !667)
!699 = !DILocation(line: 578, column: 35, scope: !667)
!700 = !DILocation(line: 577, column: 2, scope: !667)
!701 = !DILocation(line: 579, column: 2, scope: !667)
!702 = !DILocation(line: 580, column: 1, scope: !667)
!703 = distinct !DISubprogram(name: "k_fatal_halt", scope: !127, file: !127, line: 81, type: !599, scopeLine: 82, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !310)
!704 = !DILocalVariable(name: "reason", arg: 1, scope: !703, file: !127, line: 81, type: !259)
!705 = !DILocation(line: 81, column: 62, scope: !703)
!706 = !DILocation(line: 83, column: 19, scope: !703)
!707 = !DILocation(line: 83, column: 2, scope: !703)
!708 = distinct !DISubprogram(name: "z_fatal_error", scope: !127, file: !127, line: 87, type: !622, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !310)
!709 = !DILocalVariable(name: "reason", arg: 1, scope: !708, file: !127, line: 87, type: !259)
!710 = !DILocation(line: 87, column: 33, scope: !708)
!711 = !DILocalVariable(name: "esf", arg: 2, scope: !708, file: !127, line: 87, type: !500)
!712 = !DILocation(line: 87, column: 61, scope: !708)
!713 = !DILocalVariable(name: "key", scope: !708, file: !127, line: 93, type: !259)
!714 = !DILocation(line: 93, column: 15, scope: !708)
!715 = !DILocation(line: 44, column: 15, scope: !605, inlinedAt: !716)
!716 = distinct !DILocation(line: 93, column: 21, scope: !708)
!717 = !DILocation(line: 48, column: 2, scope: !605, inlinedAt: !716)
!718 = !DILocation(line: 80, column: 9, scope: !605, inlinedAt: !716)
!719 = !DILocalVariable(name: "thread", scope: !708, file: !127, line: 94, type: !199)
!720 = !DILocation(line: 94, column: 19, scope: !708)
!721 = !DILocation(line: 95, column: 20, scope: !708)
!722 = !DILocation(line: 100, column: 2, scope: !708)
!723 = !DILocalVariable(name: "is_user_context", scope: !724, file: !127, line: 100, type: !633)
!724 = distinct !DILexicalBlock(scope: !708, file: !127, line: 100, column: 5)
!725 = !DILocation(line: 100, column: 411, scope: !724)
!726 = !DILocation(line: 100, column: 429, scope: !724)
!727 = !DILocalVariable(name: "_mode", scope: !724, file: !127, line: 100, type: !123)
!728 = !DILocation(line: 100, column: 589, scope: !724)
!729 = !DILocalVariable(name: "_src", scope: !724, file: !127, line: 100, type: !119)
!730 = !DILocation(line: 100, column: 602, scope: !724)
!731 = !DILocation(line: 100, column: 658, scope: !724)
!732 = !DILocation(line: 100, column: 684, scope: !724)
!733 = !DILocation(line: 100, column: 725, scope: !734)
!734 = distinct !DILexicalBlock(scope: !724, file: !127, line: 100, column: 687)
!735 = !DILocation(line: 100, column: 874, scope: !734)
!736 = !DILocation(line: 100, column: 896, scope: !734)
!737 = !DILocation(line: 100, column: 882, scope: !734)
!738 = !DILocation(line: 100, column: 925, scope: !734)
!739 = !DILocation(line: 100, column: 905, scope: !734)
!740 = !DILocation(line: 100, column: 689, scope: !734)
!741 = !DILocation(line: 100, column: 936, scope: !734)
!742 = !DILocation(line: 100, column: 962, scope: !734)
!743 = !DILocation(line: 100, column: 981, scope: !724)
!744 = !DILocation(line: 100, column: 1123, scope: !724)
!745 = !DILocation(line: 110, column: 7, scope: !746)
!746 = distinct !DILexicalBlock(scope: !708, file: !127, line: 110, column: 6)
!747 = !DILocation(line: 110, column: 11, scope: !746)
!748 = !DILocation(line: 110, column: 17, scope: !746)
!749 = !DILocation(line: 110, column: 48, scope: !746)
!750 = !DILocalVariable(name: "esf", arg: 1, scope: !751, file: !752, line: 71, type: !500)
!751 = distinct !DISubprogram(name: "arch_is_in_nested_exception", scope: !752, file: !752, line: 71, type: !753, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !310)
!752 = !DIFile(filename: "arch/arm/include/cortex_m/exc.h", directory: "/home/sri/zephyrproject/zephyr")
!753 = !DISubroutineType(types: !754)
!754 = !{!633, !500}
!755 = !DILocation(line: 71, column: 100, scope: !751, inlinedAt: !756)
!756 = distinct !DILocation(line: 110, column: 20, scope: !746)
!757 = !DILocation(line: 73, column: 10, scope: !751, inlinedAt: !756)
!758 = !DILocation(line: 73, column: 21, scope: !751, inlinedAt: !756)
!759 = !DILocation(line: 73, column: 26, scope: !751, inlinedAt: !756)
!760 = !DILocation(line: 73, column: 9, scope: !751, inlinedAt: !756)
!761 = !DILocation(line: 110, column: 6, scope: !708)
!762 = !DILocation(line: 111, column: 3, scope: !763)
!763 = distinct !DILexicalBlock(scope: !746, file: !127, line: 110, column: 54)
!764 = !DILocalVariable(name: "is_user_context", scope: !765, file: !127, line: 111, type: !633)
!765 = distinct !DILexicalBlock(scope: !763, file: !127, line: 111, column: 6)
!766 = !DILocation(line: 111, column: 351, scope: !765)
!767 = !DILocation(line: 111, column: 369, scope: !765)
!768 = !DILocalVariable(name: "_mode", scope: !765, file: !127, line: 111, type: !123)
!769 = !DILocation(line: 111, column: 529, scope: !765)
!770 = !DILocalVariable(name: "_src", scope: !765, file: !127, line: 111, type: !119)
!771 = !DILocation(line: 111, column: 542, scope: !765)
!772 = !DILocation(line: 111, column: 598, scope: !765)
!773 = !DILocation(line: 111, column: 624, scope: !765)
!774 = !DILocation(line: 111, column: 665, scope: !775)
!775 = distinct !DILexicalBlock(scope: !765, file: !127, line: 111, column: 627)
!776 = !DILocation(line: 111, column: 629, scope: !775)
!777 = !DILocation(line: 111, column: 815, scope: !775)
!778 = !DILocation(line: 111, column: 841, scope: !775)
!779 = !DILocation(line: 111, column: 860, scope: !765)
!780 = !DILocation(line: 111, column: 941, scope: !765)
!781 = !DILocation(line: 112, column: 2, scope: !763)
!782 = !DILocation(line: 115, column: 2, scope: !708)
!783 = !DILocalVariable(name: "is_user_context", scope: !784, file: !127, line: 115, type: !633)
!784 = distinct !DILexicalBlock(scope: !708, file: !127, line: 115, column: 5)
!785 = !DILocation(line: 115, column: 373, scope: !784)
!786 = !DILocation(line: 115, column: 391, scope: !784)
!787 = !DILocalVariable(name: "_mode", scope: !784, file: !127, line: 115, type: !123)
!788 = !DILocation(line: 115, column: 551, scope: !784)
!789 = !DILocalVariable(name: "_src", scope: !784, file: !127, line: 115, type: !119)
!790 = !DILocation(line: 115, column: 564, scope: !784)
!791 = !DILocation(line: 115, column: 620, scope: !784)
!792 = !DILocation(line: 115, column: 646, scope: !784)
!793 = !DILocation(line: 115, column: 687, scope: !794)
!794 = distinct !DILexicalBlock(scope: !784, file: !127, line: 115, column: 649)
!795 = !DILocation(line: 115, column: 820, scope: !794)
!796 = !DILocation(line: 115, column: 844, scope: !794)
!797 = !DILocation(line: 115, column: 828, scope: !794)
!798 = !DILocation(line: 115, column: 651, scope: !794)
!799 = !DILocation(line: 115, column: 860, scope: !794)
!800 = !DILocation(line: 115, column: 886, scope: !794)
!801 = !DILocation(line: 115, column: 905, scope: !784)
!802 = !DILocation(line: 115, column: 1009, scope: !784)
!803 = !DILocation(line: 119, column: 11, scope: !708)
!804 = !DILocation(line: 119, column: 19, scope: !708)
!805 = !DILocation(line: 119, column: 24, scope: !708)
!806 = !DILocation(line: 119, column: 2, scope: !708)
!807 = !DILocation(line: 122, column: 28, scope: !708)
!808 = !DILocation(line: 122, column: 36, scope: !708)
!809 = !DILocation(line: 122, column: 2, scope: !708)
!810 = !DILocation(line: 142, column: 8, scope: !811)
!811 = distinct !DILexicalBlock(scope: !812, file: !127, line: 142, column: 7)
!812 = distinct !DILexicalBlock(scope: !813, file: !127, line: 137, column: 10)
!813 = distinct !DILexicalBlock(scope: !708, file: !127, line: 137, column: 6)
!814 = !DILocation(line: 142, column: 12, scope: !811)
!815 = !DILocation(line: 142, column: 18, scope: !811)
!816 = !DILocation(line: 142, column: 49, scope: !811)
!817 = !DILocation(line: 71, column: 100, scope: !751, inlinedAt: !818)
!818 = distinct !DILocation(line: 142, column: 21, scope: !811)
!819 = !DILocation(line: 73, column: 10, scope: !751, inlinedAt: !818)
!820 = !DILocation(line: 73, column: 21, scope: !751, inlinedAt: !818)
!821 = !DILocation(line: 73, column: 26, scope: !751, inlinedAt: !818)
!822 = !DILocation(line: 73, column: 9, scope: !751, inlinedAt: !818)
!823 = !DILocation(line: 142, column: 7, scope: !812)
!824 = !DILocation(line: 149, column: 3, scope: !825)
!825 = distinct !DILexicalBlock(scope: !811, file: !127, line: 142, column: 55)
!826 = !DILocation(line: 177, column: 18, scope: !708)
!827 = !DILocalVariable(name: "key", arg: 1, scope: !828, file: !606, line: 88, type: !259)
!828 = distinct !DISubprogram(name: "arch_irq_unlock", scope: !606, file: !606, line: 88, type: !599, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !310)
!829 = !DILocation(line: 88, column: 80, scope: !828, inlinedAt: !830)
!830 = distinct !DILocation(line: 177, column: 2, scope: !708)
!831 = !DILocation(line: 91, column: 6, scope: !832, inlinedAt: !830)
!832 = distinct !DILexicalBlock(scope: !828, file: !606, line: 91, column: 6)
!833 = !DILocation(line: 91, column: 10, scope: !832, inlinedAt: !830)
!834 = !DILocation(line: 91, column: 6, scope: !828, inlinedAt: !830)
!835 = !DILocation(line: 92, column: 3, scope: !836, inlinedAt: !830)
!836 = distinct !DILexicalBlock(scope: !832, file: !606, line: 91, column: 17)
!837 = !DILocation(line: 94, column: 2, scope: !828, inlinedAt: !830)
!838 = !{i64 67202}
!839 = !DILocation(line: 114, column: 1, scope: !828, inlinedAt: !830)
!840 = !DILocation(line: 180, column: 18, scope: !841)
!841 = distinct !DILexicalBlock(scope: !842, file: !127, line: 179, column: 9)
!842 = distinct !DILexicalBlock(scope: !708, file: !127, line: 179, column: 6)
!843 = !DILocation(line: 180, column: 3, scope: !841)
!844 = !DILocation(line: 182, column: 1, scope: !708)
!845 = distinct !DISubprogram(name: "reason_to_str", scope: !127, file: !127, line: 62, type: !846, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !310)
!846 = !DISubroutineType(types: !847)
!847 = !{!182, !259}
!848 = !DILocalVariable(name: "reason", arg: 1, scope: !845, file: !127, line: 62, type: !259)
!849 = !DILocation(line: 62, column: 47, scope: !845)
!850 = !DILocation(line: 64, column: 10, scope: !845)
!851 = !DILocation(line: 64, column: 2, scope: !845)
!852 = !DILocation(line: 66, column: 3, scope: !853)
!853 = distinct !DILexicalBlock(scope: !845, file: !127, line: 64, column: 18)
!854 = !DILocation(line: 68, column: 3, scope: !853)
!855 = !DILocation(line: 70, column: 3, scope: !853)
!856 = !DILocation(line: 72, column: 3, scope: !853)
!857 = !DILocation(line: 74, column: 3, scope: !853)
!858 = !DILocation(line: 76, column: 3, scope: !853)
!859 = !DILocation(line: 78, column: 1, scope: !845)
!860 = distinct !DISubprogram(name: "thread_name_get", scope: !127, file: !127, line: 51, type: !861, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !310)
!861 = !DISubroutineType(types: !862)
!862 = !{!182, !199}
!863 = !DILocalVariable(name: "thread", arg: 1, scope: !860, file: !127, line: 51, type: !199)
!864 = !DILocation(line: 51, column: 53, scope: !860)
!865 = !DILocalVariable(name: "thread_name", scope: !860, file: !127, line: 53, type: !182)
!866 = !DILocation(line: 53, column: 14, scope: !860)
!867 = !DILocation(line: 53, column: 29, scope: !860)
!868 = !DILocation(line: 53, column: 36, scope: !860)
!869 = !DILocation(line: 53, column: 28, scope: !860)
!870 = !DILocation(line: 53, column: 62, scope: !860)
!871 = !DILocation(line: 53, column: 44, scope: !860)
!872 = !DILocation(line: 55, column: 7, scope: !873)
!873 = distinct !DILexicalBlock(scope: !860, file: !127, line: 55, column: 6)
!874 = !DILocation(line: 55, column: 19, scope: !873)
!875 = !DILocation(line: 55, column: 25, scope: !873)
!876 = !DILocation(line: 55, column: 29, scope: !873)
!877 = !DILocation(line: 55, column: 44, scope: !873)
!878 = !DILocation(line: 55, column: 6, scope: !860)
!879 = !DILocation(line: 56, column: 15, scope: !880)
!880 = distinct !DILexicalBlock(scope: !873, file: !127, line: 55, column: 54)
!881 = !DILocation(line: 57, column: 2, scope: !880)
!882 = !DILocation(line: 59, column: 9, scope: !860)
!883 = !DILocation(line: 59, column: 2, scope: !860)
!884 = distinct !DISubprogram(name: "k_thread_abort", scope: !885, file: !885, line: 223, type: !886, scopeLine: 224, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !310)
!885 = !DIFile(filename: "zephyr/include/generated/syscalls/kernel.h", directory: "/home/sri/zephyrproject/zephyr/build")
!886 = !DISubroutineType(types: !887)
!887 = !{null, !888}
!888 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_tid_t", file: !201, line: 359, baseType: !199)
!889 = !DILocalVariable(name: "thread", arg: 1, scope: !884, file: !885, line: 223, type: !888)
!890 = !DILocation(line: 223, column: 43, scope: !884)
!891 = !DILocation(line: 232, column: 2, scope: !884)
!892 = !DILocation(line: 232, column: 7, scope: !893)
!893 = distinct !DILexicalBlock(scope: !884, file: !885, line: 232, column: 5)
!894 = !{i64 135336}
!895 = !DILocation(line: 232, column: 47, scope: !893)
!896 = !DILocation(line: 233, column: 24, scope: !884)
!897 = !DILocation(line: 233, column: 2, scope: !884)
!898 = !DILocation(line: 234, column: 1, scope: !884)
!899 = distinct !DISubprogram(name: "sys_sflist_is_empty", scope: !432, file: !432, line: 335, type: !900, scopeLine: 335, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !310)
!900 = !DISubroutineType(types: !901)
!901 = !{!633, !902}
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 32)
!903 = !DILocalVariable(name: "list", arg: 1, scope: !899, file: !432, line: 335, type: !902)
!904 = !DILocation(line: 335, column: 55, scope: !899)
!905 = !DILocation(line: 335, column: 92, scope: !899)
!906 = !DILocation(line: 335, column: 71, scope: !899)
!907 = !DILocation(line: 335, column: 98, scope: !899)
!908 = !DILocation(line: 335, column: 63, scope: !899)
!909 = distinct !DISubprogram(name: "sys_sflist_peek_head", scope: !432, file: !432, line: 255, type: !910, scopeLine: 256, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !310)
!910 = !DISubroutineType(types: !911)
!911 = !{!436, !902}
!912 = !DILocalVariable(name: "list", arg: 1, scope: !909, file: !432, line: 255, type: !902)
!913 = !DILocation(line: 255, column: 64, scope: !909)
!914 = !DILocation(line: 257, column: 9, scope: !909)
!915 = !DILocation(line: 257, column: 15, scope: !909)
!916 = !DILocation(line: 257, column: 2, scope: !909)
!917 = distinct !DISubprogram(name: "z_log_msg_runtime_vcreate", scope: !918, file: !918, line: 53, type: !919, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !310)
!918 = !DIFile(filename: "zephyr/include/generated/syscalls/log_msg.h", directory: "/home/sri/zephyrproject/zephyr/build")
!919 = !DISubroutineType(types: !920)
!920 = !{null, !121, !197, !121, !197, !569, !258, !182, !685}
!921 = !DILocalVariable(name: "domain_id", arg: 1, scope: !917, file: !918, line: 53, type: !121)
!922 = !DILocation(line: 53, column: 54, scope: !917)
!923 = !DILocalVariable(name: "source", arg: 2, scope: !917, file: !918, line: 53, type: !197)
!924 = !DILocation(line: 53, column: 78, scope: !917)
!925 = !DILocalVariable(name: "level", arg: 3, scope: !917, file: !918, line: 53, type: !121)
!926 = !DILocation(line: 53, column: 94, scope: !917)
!927 = !DILocalVariable(name: "data", arg: 4, scope: !917, file: !918, line: 53, type: !197)
!928 = !DILocation(line: 53, column: 114, scope: !917)
!929 = !DILocalVariable(name: "dlen", arg: 5, scope: !917, file: !918, line: 53, type: !569)
!930 = !DILocation(line: 53, column: 127, scope: !917)
!931 = !DILocalVariable(name: "package_flags", arg: 6, scope: !917, file: !918, line: 53, type: !258)
!932 = !DILocation(line: 53, column: 142, scope: !917)
!933 = !DILocalVariable(name: "fmt", arg: 7, scope: !917, file: !918, line: 53, type: !182)
!934 = !DILocation(line: 53, column: 170, scope: !917)
!935 = !DILocalVariable(name: "ap", arg: 8, scope: !917, file: !918, line: 53, type: !685)
!936 = !DILocation(line: 53, column: 183, scope: !917)
!937 = !DILocation(line: 76, column: 2, scope: !917)
!938 = !DILocation(line: 76, column: 7, scope: !939)
!939 = distinct !DILexicalBlock(scope: !917, file: !918, line: 76, column: 5)
!940 = !{i64 336301}
!941 = !DILocation(line: 76, column: 47, scope: !939)
!942 = !DILocation(line: 77, column: 35, scope: !917)
!943 = !DILocation(line: 77, column: 46, scope: !917)
!944 = !DILocation(line: 77, column: 54, scope: !917)
!945 = !DILocation(line: 77, column: 61, scope: !917)
!946 = !DILocation(line: 77, column: 67, scope: !917)
!947 = !DILocation(line: 77, column: 73, scope: !917)
!948 = !DILocation(line: 77, column: 88, scope: !917)
!949 = !DILocation(line: 77, column: 2, scope: !917)
!950 = !DILocation(line: 78, column: 1, scope: !917)
