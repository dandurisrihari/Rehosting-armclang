; ModuleID = '../bc_files/thread.bc'
source_filename = "/home/sri/zephyrproject/zephyr/kernel/thread.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-arm-none-eabi"

%struct.z_kernel = type { [1 x %struct._cpu], %struct._ready_q }
%struct._cpu = type { i32, ptr, ptr, ptr, i8, %struct._cpu_arch }
%struct._cpu_arch = type {}
%struct._ready_q = type { ptr, %struct._dnode }
%struct._dnode = type { %union.anon.0, %union.anon.1 }
%union.anon.0 = type { ptr }
%union.anon.1 = type { ptr }
%struct._static_thread_data = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, i32, ptr, %struct.k_timeout_t }
%struct.k_timeout_t = type { i64 }
%struct.k_thread = type { %struct._thread_base, %struct._callee_saved, ptr, %struct._wait_q_t, i32, ptr, %struct._thread_arch }
%struct._thread_base = type { %union.anon, ptr, i8, i8, %union.anon.2, i32, ptr, %struct._timeout }
%union.anon = type { %struct._dnode }
%union.anon.2 = type { i16 }
%struct._timeout = type { %struct._dnode, ptr, i64 }
%struct._callee_saved = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._wait_q_t = type { %struct._dnode }
%struct._thread_arch = type { i32, i32 }
%struct.k_timer = type { %struct._timeout, %struct._wait_q_t, ptr, ptr, %struct.k_timeout_t, i32, ptr }
%struct.k_queue = type { %struct._sflist, %struct.k_spinlock, %struct._wait_q_t }
%struct._sflist = type { ptr, ptr }
%struct.k_spinlock = type {}
%struct.k_sem = type { %struct._wait_q_t, i32, i32 }
%struct.k_msgq = type { %struct._wait_q_t, %struct.k_spinlock, i32, i32, ptr, ptr, ptr, ptr, i32, i8 }
%struct.anon = type { i8, i8 }
%struct.k_thread_runtime_stats = type {}

@_kernel = external dso_local global %struct.z_kernel, align 4
@k_thread_state_str.states_str = internal global [8 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], align 4, !dbg !0
@.str = private unnamed_addr constant [6 x i8] c"dummy\00", align 1, !dbg !226
@.str.1 = private unnamed_addr constant [8 x i8] c"pending\00", align 1, !dbg !231
@.str.2 = private unnamed_addr constant [9 x i8] c"prestart\00", align 1, !dbg !236
@.str.3 = private unnamed_addr constant [5 x i8] c"dead\00", align 1, !dbg !241
@.str.4 = private unnamed_addr constant [10 x i8] c"suspended\00", align 1, !dbg !246
@.str.5 = private unnamed_addr constant [9 x i8] c"aborting\00", align 1, !dbg !251
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !253
@.str.7 = private unnamed_addr constant [7 x i8] c"queued\00", align 1, !dbg !258
@k_thread_state_str.states_sz = internal constant [8 x i32] [i32 5, i32 7, i32 8, i32 4, i32 9, i32 8, i32 0, i32 6], align 4, !dbg !263
@.str.8 = private unnamed_addr constant [2 x i8] c"+\00", align 1, !dbg !267
@__static_thread_data_list_start = external dso_local global [0 x %struct._static_thread_data], align 8
@__static_thread_data_list_end = external dso_local global [0 x %struct._static_thread_data], align 8

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_k_object_access_grant(ptr noundef %0, ptr noundef %1) #0 !dbg !287 {
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
  call void @llvm.dbg.declare(metadata ptr %2, metadata !333, metadata !DIExpression()), !dbg !334
  %3 = load ptr, ptr %2, align 4, !dbg !335
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !336
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !337
  %6 = call i64 @z_timeout_expires(ptr noundef %5) #8, !dbg !338
  ret i64 %6, !dbg !339
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_thread_timeout_remaining_ticks(ptr noundef %0) #0 !dbg !340 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !342, metadata !DIExpression()), !dbg !343
  %3 = load ptr, ptr %2, align 4, !dbg !344
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !345
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !346
  %6 = call i64 @z_timeout_remaining(ptr noundef %5) #8, !dbg !347
  ret i64 %6, !dbg !348
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_timer_expires_ticks(ptr noundef %0) #0 !dbg !349 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !372, metadata !DIExpression()), !dbg !373
  %3 = load ptr, ptr %2, align 4, !dbg !374
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !375
  %5 = call i64 @z_timeout_expires(ptr noundef %4) #8, !dbg !376
  ret i64 %5, !dbg !377
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_timer_remaining_ticks(ptr noundef %0) #0 !dbg !378 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !380, metadata !DIExpression()), !dbg !381
  %3 = load ptr, ptr %2, align 4, !dbg !382
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !383
  %5 = call i64 @z_timeout_remaining(ptr noundef %4) #8, !dbg !384
  ret i64 %5, !dbg !385
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_k_timer_user_data_set(ptr noundef %0, ptr noundef %1) #0 !dbg !386 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !390, metadata !DIExpression()), !dbg !392
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !391, metadata !DIExpression()), !dbg !393
  %5 = load ptr, ptr %4, align 4, !dbg !394
  %6 = load ptr, ptr %3, align 4, !dbg !395
  %7 = getelementptr inbounds %struct.k_timer, ptr %6, i32 0, i32 6, !dbg !396
  store ptr %5, ptr %7, align 4, !dbg !397
  ret void, !dbg !398
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_impl_k_timer_user_data_get(ptr noundef %0) #0 !dbg !399 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !403, metadata !DIExpression()), !dbg !404
  %3 = load ptr, ptr %2, align 4, !dbg !405
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 6, !dbg !406
  %5 = load ptr, ptr %4, align 4, !dbg !406
  ret ptr %5, !dbg !407
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_queue_is_empty(ptr noundef %0) #0 !dbg !408 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !430, metadata !DIExpression()), !dbg !431
  %3 = load ptr, ptr %2, align 4, !dbg !432
  %4 = getelementptr inbounds %struct.k_queue, ptr %3, i32 0, i32 0, !dbg !433
  %5 = call zeroext i1 @sys_sflist_is_empty(ptr noundef %4) #8, !dbg !434
  %6 = zext i1 %5 to i32, !dbg !435
  ret i32 %6, !dbg !436
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_sem_count_get(ptr noundef %0) #0 !dbg !437 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !447, metadata !DIExpression()), !dbg !448
  %3 = load ptr, ptr %2, align 4, !dbg !449
  %4 = getelementptr inbounds %struct.k_sem, ptr %3, i32 0, i32 1, !dbg !450
  %5 = load i32, ptr %4, align 4, !dbg !450
  ret i32 %5, !dbg !451
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_msgq_num_free_get(ptr noundef %0) #0 !dbg !452 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !469, metadata !DIExpression()), !dbg !470
  %3 = load ptr, ptr %2, align 4, !dbg !471
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 3, !dbg !472
  %5 = load i32, ptr %4, align 4, !dbg !472
  %6 = load ptr, ptr %2, align 4, !dbg !473
  %7 = getelementptr inbounds %struct.k_msgq, ptr %6, i32 0, i32 8, !dbg !474
  %8 = load i32, ptr %7, align 4, !dbg !474
  %9 = sub i32 %5, %8, !dbg !475
  ret i32 %9, !dbg !476
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_msgq_num_used_get(ptr noundef %0) #0 !dbg !477 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !479, metadata !DIExpression()), !dbg !480
  %3 = load ptr, ptr %2, align 4, !dbg !481
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 8, !dbg !482
  %5 = load i32, ptr %4, align 4, !dbg !482
  ret i32 %5, !dbg !483
}

; Function Attrs: nounwind optsize
define hidden void @k_thread_foreach(ptr noundef %0, ptr noundef %1) #1 !dbg !484 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !492, metadata !DIExpression()), !dbg !494
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !493, metadata !DIExpression()), !dbg !495
  %5 = load ptr, ptr %3, align 4, !dbg !496
  %6 = load ptr, ptr %4, align 4, !dbg !497
  ret void, !dbg !498
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nounwind optsize
define hidden void @k_thread_foreach_unlocked(ptr noundef %0, ptr noundef %1) #1 !dbg !499 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !501, metadata !DIExpression()), !dbg !503
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !502, metadata !DIExpression()), !dbg !504
  %5 = load ptr, ptr %3, align 4, !dbg !505
  %6 = load ptr, ptr %4, align 4, !dbg !506
  ret void, !dbg !507
}

; Function Attrs: nounwind optsize
define hidden zeroext i1 @k_is_in_isr() #1 !dbg !508 {
  %1 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %1) #9, !dbg !512
  call void @llvm.dbg.declare(metadata ptr %1, metadata !518, metadata !DIExpression()), !dbg !523
  %2 = call i32 asm sideeffect "MRS $0, ipsr", "=r"() #9, !dbg !524, !srcloc !525
  store i32 %2, ptr %1, align 4, !dbg !524
  %3 = load i32, ptr %1, align 4, !dbg !526
  call void @llvm.lifetime.end.p0(i64 4, ptr %1) #9, !dbg !527
  %4 = icmp ne i32 %3, 0, !dbg !528
  %5 = zext i1 %4 to i64, !dbg !528
  %6 = select i1 %4, i32 1, i32 0, !dbg !528
  ret i1 %4, !dbg !529
}

; Function Attrs: nounwind optsize
define hidden void @z_thread_essential_set() #1 !dbg !530 {
  %1 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !533
  %2 = getelementptr inbounds %struct.k_thread, ptr %1, i32 0, i32 0, !dbg !534
  %3 = getelementptr inbounds %struct._thread_base, ptr %2, i32 0, i32 2, !dbg !535
  %4 = load i8, ptr %3, align 4, !dbg !536
  %5 = zext i8 %4 to i32, !dbg !536
  %6 = or i32 %5, 1, !dbg !536
  %7 = trunc i32 %6 to i8, !dbg !536
  store i8 %7, ptr %3, align 4, !dbg !536
  ret void, !dbg !537
}

; Function Attrs: nounwind optsize
define hidden void @z_thread_essential_clear() #1 !dbg !538 {
  %1 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !539
  %2 = getelementptr inbounds %struct.k_thread, ptr %1, i32 0, i32 0, !dbg !540
  %3 = getelementptr inbounds %struct._thread_base, ptr %2, i32 0, i32 2, !dbg !541
  %4 = load i8, ptr %3, align 4, !dbg !542
  %5 = zext i8 %4 to i32, !dbg !542
  %6 = and i32 %5, -2, !dbg !542
  %7 = trunc i32 %6 to i8, !dbg !542
  store i8 %7, ptr %3, align 4, !dbg !542
  ret void, !dbg !543
}

; Function Attrs: nounwind optsize
define hidden zeroext i1 @z_is_thread_essential() #1 !dbg !544 {
  %1 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !545
  %2 = getelementptr inbounds %struct.k_thread, ptr %1, i32 0, i32 0, !dbg !546
  %3 = getelementptr inbounds %struct._thread_base, ptr %2, i32 0, i32 2, !dbg !547
  %4 = load i8, ptr %3, align 4, !dbg !547
  %5 = zext i8 %4 to i32, !dbg !548
  %6 = and i32 %5, 1, !dbg !549
  %7 = icmp eq i32 %6, 1, !dbg !550
  ret i1 %7, !dbg !551
}

; Function Attrs: nounwind optsize
define hidden i32 @z_impl_k_thread_name_set(ptr noundef %0, ptr noundef %1) #1 !dbg !552 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !556, metadata !DIExpression()), !dbg !558
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !557, metadata !DIExpression()), !dbg !559
  %5 = load ptr, ptr %3, align 4, !dbg !560
  %6 = load ptr, ptr %4, align 4, !dbg !561
  br label %7, !dbg !562

7:                                                ; preds = %2
  br label %8, !dbg !563

8:                                                ; preds = %7
  ret i32 -88, !dbg !565
}

; Function Attrs: nounwind optsize
define hidden ptr @k_thread_name_get(ptr noundef %0) #1 !dbg !566 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !570, metadata !DIExpression()), !dbg !571
  %3 = load ptr, ptr %2, align 4, !dbg !572
  ret ptr null, !dbg !573
}

; Function Attrs: nounwind optsize
define hidden i32 @z_impl_k_thread_name_copy(ptr noundef %0, ptr noundef %1, i32 noundef %2) #1 !dbg !574 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !578, metadata !DIExpression()), !dbg !581
  store ptr %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !579, metadata !DIExpression()), !dbg !582
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !580, metadata !DIExpression()), !dbg !583
  %7 = load ptr, ptr %4, align 4, !dbg !584
  %8 = load ptr, ptr %5, align 4, !dbg !585
  %9 = load i32, ptr %6, align 4, !dbg !586
  ret i32 -88, !dbg !587
}

; Function Attrs: nounwind optsize
define hidden ptr @k_thread_state_str(ptr noundef %0, ptr noundef %1, i32 noundef %2) #1 !dbg !2 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  store ptr %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !271, metadata !DIExpression()), !dbg !588
  store ptr %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !272, metadata !DIExpression()), !dbg !589
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !273, metadata !DIExpression()), !dbg !590
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #9, !dbg !591
  call void @llvm.dbg.declare(metadata ptr %8, metadata !274, metadata !DIExpression()), !dbg !592
  store i32 0, ptr %8, align 4, !dbg !592
  call void @llvm.lifetime.start.p0(i64 1, ptr %9) #9, !dbg !593
  call void @llvm.dbg.declare(metadata ptr %9, metadata !275, metadata !DIExpression()), !dbg !594
  call void @llvm.lifetime.start.p0(i64 1, ptr %10) #9, !dbg !595
  call void @llvm.dbg.declare(metadata ptr %10, metadata !276, metadata !DIExpression()), !dbg !596
  %13 = load ptr, ptr %5, align 4, !dbg !597
  %14 = getelementptr inbounds %struct.k_thread, ptr %13, i32 0, i32 0, !dbg !598
  %15 = getelementptr inbounds %struct._thread_base, ptr %14, i32 0, i32 3, !dbg !599
  %16 = load i8, ptr %15, align 1, !dbg !599
  store i8 %16, ptr %10, align 1, !dbg !596
  %17 = load ptr, ptr %6, align 4, !dbg !600
  %18 = icmp eq ptr %17, null, !dbg !602
  br i1 %18, label %22, label %19, !dbg !603

19:                                               ; preds = %3
  %20 = load i32, ptr %7, align 4, !dbg !604
  %21 = icmp eq i32 %20, 0, !dbg !605
  br i1 %21, label %22, label %23, !dbg !606

22:                                               ; preds = %19, %3
  store ptr @.str.6, ptr %4, align 4, !dbg !607
  store i32 1, ptr %11, align 4
  br label %90, !dbg !607

23:                                               ; preds = %19
  %24 = load i32, ptr %7, align 4, !dbg !609
  %25 = add i32 %24, -1, !dbg !609
  store i32 %25, ptr %7, align 4, !dbg !609
  call void @llvm.lifetime.start.p0(i64 1, ptr %12) #9, !dbg !610
  call void @llvm.dbg.declare(metadata ptr %12, metadata !277, metadata !DIExpression()), !dbg !611
  store i8 0, ptr %12, align 1, !dbg !611
  br label %26, !dbg !610

26:                                               ; preds = %82, %23
  %27 = load i8, ptr %10, align 1, !dbg !612
  %28 = zext i8 %27 to i32, !dbg !612
  %29 = icmp ne i32 %28, 0, !dbg !614
  br i1 %29, label %31, label %30, !dbg !615

30:                                               ; preds = %26
  store i32 2, ptr %11, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr %12) #9, !dbg !616
  br label %85

31:                                               ; preds = %26
  %32 = load i8, ptr %12, align 1, !dbg !617
  %33 = zext i8 %32 to i32, !dbg !619
  %34 = shl i32 1, %33, !dbg !620
  %35 = trunc i32 %34 to i8, !dbg !621
  store i8 %35, ptr %9, align 1, !dbg !622
  %36 = load i8, ptr %10, align 1, !dbg !623
  %37 = zext i8 %36 to i32, !dbg !623
  %38 = load i8, ptr %9, align 1, !dbg !625
  %39 = zext i8 %38 to i32, !dbg !625
  %40 = and i32 %37, %39, !dbg !626
  %41 = icmp eq i32 %40, 0, !dbg !627
  br i1 %41, label %42, label %43, !dbg !628

42:                                               ; preds = %31
  br label %82, !dbg !629

43:                                               ; preds = %31
  %44 = load ptr, ptr %6, align 4, !dbg !631
  %45 = load i32, ptr %8, align 4, !dbg !632
  %46 = getelementptr inbounds i8, ptr %44, i32 %45, !dbg !633
  %47 = load i32, ptr %7, align 4, !dbg !634
  %48 = load i32, ptr %8, align 4, !dbg !635
  %49 = sub i32 %47, %48, !dbg !636
  %50 = load i8, ptr %12, align 1, !dbg !637
  %51 = zext i8 %50 to i32, !dbg !638
  %52 = getelementptr inbounds [8 x ptr], ptr @k_thread_state_str.states_str, i32 0, i32 %51, !dbg !638
  %53 = load ptr, ptr %52, align 4, !dbg !638
  %54 = load i8, ptr %12, align 1, !dbg !639
  %55 = zext i8 %54 to i32, !dbg !640
  %56 = getelementptr inbounds [8 x i32], ptr @k_thread_state_str.states_sz, i32 0, i32 %55, !dbg !640
  %57 = load i32, ptr %56, align 4, !dbg !640
  %58 = call i32 @copy_bytes(ptr noundef %46, i32 noundef %49, ptr noundef %53, i32 noundef %57) #8, !dbg !641
  %59 = load i32, ptr %8, align 4, !dbg !642
  %60 = add i32 %59, %58, !dbg !642
  store i32 %60, ptr %8, align 4, !dbg !642
  %61 = load i8, ptr %9, align 1, !dbg !643
  %62 = zext i8 %61 to i32, !dbg !643
  %63 = xor i32 %62, -1, !dbg !644
  %64 = load i8, ptr %10, align 1, !dbg !645
  %65 = zext i8 %64 to i32, !dbg !645
  %66 = and i32 %65, %63, !dbg !645
  %67 = trunc i32 %66 to i8, !dbg !645
  store i8 %67, ptr %10, align 1, !dbg !645
  %68 = load i8, ptr %10, align 1, !dbg !646
  %69 = zext i8 %68 to i32, !dbg !646
  %70 = icmp ne i32 %69, 0, !dbg !648
  br i1 %70, label %71, label %81, !dbg !649

71:                                               ; preds = %43
  %72 = load ptr, ptr %6, align 4, !dbg !650
  %73 = load i32, ptr %8, align 4, !dbg !652
  %74 = getelementptr inbounds i8, ptr %72, i32 %73, !dbg !653
  %75 = load i32, ptr %7, align 4, !dbg !654
  %76 = load i32, ptr %8, align 4, !dbg !655
  %77 = sub i32 %75, %76, !dbg !656
  %78 = call i32 @copy_bytes(ptr noundef %74, i32 noundef %77, ptr noundef @.str.8, i32 noundef 1) #8, !dbg !657
  %79 = load i32, ptr %8, align 4, !dbg !658
  %80 = add i32 %79, %78, !dbg !658
  store i32 %80, ptr %8, align 4, !dbg !658
  br label %81, !dbg !659

81:                                               ; preds = %71, %43
  br label %82, !dbg !660

82:                                               ; preds = %81, %42
  %83 = load i8, ptr %12, align 1, !dbg !661
  %84 = add i8 %83, 1, !dbg !661
  store i8 %84, ptr %12, align 1, !dbg !661
  br label %26, !dbg !616, !llvm.loop !662

85:                                               ; preds = %30
  %86 = load ptr, ptr %6, align 4, !dbg !664
  %87 = load i32, ptr %8, align 4, !dbg !665
  %88 = getelementptr inbounds i8, ptr %86, i32 %87, !dbg !664
  store i8 0, ptr %88, align 1, !dbg !666
  %89 = load ptr, ptr %6, align 4, !dbg !667
  store ptr %89, ptr %4, align 4, !dbg !668
  store i32 1, ptr %11, align 4
  br label %90, !dbg !668

90:                                               ; preds = %85, %22
  call void @llvm.lifetime.end.p0(i64 1, ptr %10) #9, !dbg !669
  call void @llvm.lifetime.end.p0(i64 1, ptr %9) #9, !dbg !669
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #9, !dbg !669
  %91 = load ptr, ptr %4, align 4, !dbg !669
  ret ptr %91, !dbg !669
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind optsize
define internal i32 @copy_bytes(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #1 !dbg !670 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store ptr %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !674, metadata !DIExpression()), !dbg !679
  store i32 %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !675, metadata !DIExpression()), !dbg !680
  store ptr %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !676, metadata !DIExpression()), !dbg !681
  store i32 %3, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !677, metadata !DIExpression()), !dbg !682
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #9, !dbg !683
  call void @llvm.dbg.declare(metadata ptr %9, metadata !678, metadata !DIExpression()), !dbg !684
  %10 = load i32, ptr %6, align 4, !dbg !685
  %11 = load i32, ptr %8, align 4, !dbg !686
  %12 = icmp ult i32 %10, %11, !dbg !687
  br i1 %12, label %13, label %15, !dbg !688

13:                                               ; preds = %4
  %14 = load i32, ptr %6, align 4, !dbg !689
  br label %17, !dbg !688

15:                                               ; preds = %4
  %16 = load i32, ptr %8, align 4, !dbg !690
  br label %17, !dbg !688

17:                                               ; preds = %15, %13
  %18 = phi i32 [ %14, %13 ], [ %16, %15 ], !dbg !688
  store i32 %18, ptr %9, align 4, !dbg !691
  %19 = load ptr, ptr %5, align 4, !dbg !692
  %20 = load ptr, ptr %7, align 4, !dbg !693
  %21 = load i32, ptr %9, align 4, !dbg !694
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %19, ptr align 1 %20, i32 %21, i1 false), !dbg !695
  %22 = load i32, ptr %9, align 4, !dbg !696
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #9, !dbg !697
  ret i32 %22, !dbg !698
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind optsize
define hidden void @z_impl_k_thread_start(ptr noundef %0) #1 !dbg !699 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !703, metadata !DIExpression()), !dbg !704
  br label %3, !dbg !705

3:                                                ; preds = %1
  br label %4, !dbg !706

4:                                                ; preds = %3
  %5 = load ptr, ptr %2, align 4, !dbg !708
  call void @z_sched_start(ptr noundef %5) #8, !dbg !709
  ret void, !dbg !710
}

; Function Attrs: optsize
declare !dbg !711 dso_local void @z_sched_start(ptr noundef) #4

; Function Attrs: nounwind optsize
define hidden ptr @z_setup_new_thread(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef %8, ptr noundef %9) #1 !dbg !713 {
  %11 = alloca ptr, align 4
  %12 = alloca ptr, align 4
  %13 = alloca ptr, align 4
  %14 = alloca i32, align 4
  %15 = alloca ptr, align 4
  %16 = alloca ptr, align 4
  %17 = alloca ptr, align 4
  %18 = alloca ptr, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca ptr, align 4
  %22 = alloca ptr, align 4
  %23 = alloca i32, align 4
  store ptr %0, ptr %12, align 4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !728, metadata !DIExpression()), !dbg !739
  store ptr %1, ptr %13, align 4
  call void @llvm.dbg.declare(metadata ptr %13, metadata !729, metadata !DIExpression()), !dbg !740
  store i32 %2, ptr %14, align 4
  call void @llvm.dbg.declare(metadata ptr %14, metadata !730, metadata !DIExpression()), !dbg !741
  store ptr %3, ptr %15, align 4
  call void @llvm.dbg.declare(metadata ptr %15, metadata !731, metadata !DIExpression()), !dbg !742
  store ptr %4, ptr %16, align 4
  call void @llvm.dbg.declare(metadata ptr %16, metadata !732, metadata !DIExpression()), !dbg !743
  store ptr %5, ptr %17, align 4
  call void @llvm.dbg.declare(metadata ptr %17, metadata !733, metadata !DIExpression()), !dbg !744
  store ptr %6, ptr %18, align 4
  call void @llvm.dbg.declare(metadata ptr %18, metadata !734, metadata !DIExpression()), !dbg !745
  store i32 %7, ptr %19, align 4
  call void @llvm.dbg.declare(metadata ptr %19, metadata !735, metadata !DIExpression()), !dbg !746
  store i32 %8, ptr %20, align 4
  call void @llvm.dbg.declare(metadata ptr %20, metadata !736, metadata !DIExpression()), !dbg !747
  store ptr %9, ptr %21, align 4
  call void @llvm.dbg.declare(metadata ptr %21, metadata !737, metadata !DIExpression()), !dbg !748
  call void @llvm.lifetime.start.p0(i64 4, ptr %22) #9, !dbg !749
  call void @llvm.dbg.declare(metadata ptr %22, metadata !738, metadata !DIExpression()), !dbg !750
  br label %24, !dbg !751

24:                                               ; preds = %10
  br label %25, !dbg !752

25:                                               ; preds = %24
  br label %26, !dbg !752

26:                                               ; preds = %25
  %27 = load ptr, ptr %12, align 4, !dbg !754
  %28 = getelementptr inbounds %struct.k_thread, ptr %27, i32 0, i32 3, !dbg !755
  call void @z_waitq_init(ptr noundef %28) #8, !dbg !756
  %29 = load ptr, ptr %12, align 4, !dbg !757
  %30 = getelementptr inbounds %struct.k_thread, ptr %29, i32 0, i32 0, !dbg !758
  %31 = load i32, ptr %19, align 4, !dbg !759
  %32 = load i32, ptr %20, align 4, !dbg !760
  call void @z_init_thread_base(ptr noundef %30, i32 noundef %31, i32 noundef 4, i32 noundef %32) #8, !dbg !761
  %33 = load ptr, ptr %12, align 4, !dbg !762
  %34 = load ptr, ptr %13, align 4, !dbg !763
  %35 = load i32, ptr %14, align 4, !dbg !764
  %36 = call ptr @setup_thread_stack(ptr noundef %33, ptr noundef %34, i32 noundef %35) #8, !dbg !765
  store ptr %36, ptr %22, align 4, !dbg !766
  %37 = load ptr, ptr %12, align 4, !dbg !767
  %38 = load ptr, ptr %13, align 4, !dbg !768
  %39 = load ptr, ptr %22, align 4, !dbg !769
  %40 = load ptr, ptr %15, align 4, !dbg !770
  %41 = load ptr, ptr %16, align 4, !dbg !771
  %42 = load ptr, ptr %17, align 4, !dbg !772
  %43 = load ptr, ptr %18, align 4, !dbg !773
  call void @arch_new_thread(ptr noundef %37, ptr noundef %38, ptr noundef %39, ptr noundef %40, ptr noundef %41, ptr noundef %42, ptr noundef %43) #8, !dbg !774
  %44 = load ptr, ptr %12, align 4, !dbg !775
  %45 = getelementptr inbounds %struct.k_thread, ptr %44, i32 0, i32 2, !dbg !776
  store ptr null, ptr %45, align 4, !dbg !777
  %46 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !778
  %47 = icmp ne ptr %46, null, !dbg !780
  br i1 %47, label %52, label %48, !dbg !781

48:                                               ; preds = %26
  %49 = load ptr, ptr %12, align 4, !dbg !782
  %50 = getelementptr inbounds %struct.k_thread, ptr %49, i32 0, i32 5, !dbg !784
  store ptr null, ptr %50, align 4, !dbg !785
  %51 = load ptr, ptr %22, align 4, !dbg !786
  store ptr %51, ptr %11, align 4, !dbg !787
  store i32 1, ptr %23, align 4
  br label %62, !dbg !787

52:                                               ; preds = %26
  %53 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !788
  %54 = getelementptr inbounds %struct.k_thread, ptr %53, i32 0, i32 5, !dbg !789
  %55 = load ptr, ptr %54, align 4, !dbg !789
  %56 = load ptr, ptr %12, align 4, !dbg !790
  %57 = getelementptr inbounds %struct.k_thread, ptr %56, i32 0, i32 5, !dbg !791
  store ptr %55, ptr %57, align 4, !dbg !792
  br label %58, !dbg !793

58:                                               ; preds = %52
  br label %59, !dbg !794

59:                                               ; preds = %58
  br label %60, !dbg !794

60:                                               ; preds = %59
  %61 = load ptr, ptr %22, align 4, !dbg !796
  store ptr %61, ptr %11, align 4, !dbg !797
  store i32 1, ptr %23, align 4
  br label %62, !dbg !797

62:                                               ; preds = %60, %48
  call void @llvm.lifetime.end.p0(i64 4, ptr %22) #9, !dbg !798
  %63 = load ptr, ptr %11, align 4, !dbg !798
  ret ptr %63, !dbg !798
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_waitq_init(ptr noundef %0) #0 !dbg !799 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !804, metadata !DIExpression()), !dbg !805
  %3 = load ptr, ptr %2, align 4, !dbg !806
  %4 = getelementptr inbounds %struct._wait_q_t, ptr %3, i32 0, i32 0, !dbg !807
  call void @sys_dlist_init(ptr noundef %4) #8, !dbg !808
  ret void, !dbg !809
}

; Function Attrs: nounwind optsize
define hidden void @z_init_thread_base(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #1 !dbg !810 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !815, metadata !DIExpression()), !dbg !819
  store i32 %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !816, metadata !DIExpression()), !dbg !820
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !817, metadata !DIExpression()), !dbg !821
  store i32 %3, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !818, metadata !DIExpression()), !dbg !822
  %9 = load ptr, ptr %5, align 4, !dbg !823
  %10 = getelementptr inbounds %struct._thread_base, ptr %9, i32 0, i32 1, !dbg !824
  store ptr null, ptr %10, align 8, !dbg !825
  %11 = load i32, ptr %8, align 4, !dbg !826
  %12 = trunc i32 %11 to i8, !dbg !827
  %13 = load ptr, ptr %5, align 4, !dbg !828
  %14 = getelementptr inbounds %struct._thread_base, ptr %13, i32 0, i32 2, !dbg !829
  store i8 %12, ptr %14, align 4, !dbg !830
  %15 = load i32, ptr %7, align 4, !dbg !831
  %16 = trunc i32 %15 to i8, !dbg !832
  %17 = load ptr, ptr %5, align 4, !dbg !833
  %18 = getelementptr inbounds %struct._thread_base, ptr %17, i32 0, i32 3, !dbg !834
  store i8 %16, ptr %18, align 1, !dbg !835
  %19 = load i32, ptr %6, align 4, !dbg !836
  %20 = trunc i32 %19 to i8, !dbg !836
  %21 = load ptr, ptr %5, align 4, !dbg !837
  %22 = getelementptr inbounds %struct._thread_base, ptr %21, i32 0, i32 4, !dbg !838
  %23 = getelementptr inbounds %struct.anon, ptr %22, i32 0, i32 0, !dbg !838
  store i8 %20, ptr %23, align 2, !dbg !839
  %24 = load ptr, ptr %5, align 4, !dbg !840
  %25 = getelementptr inbounds %struct._thread_base, ptr %24, i32 0, i32 4, !dbg !841
  %26 = getelementptr inbounds %struct.anon, ptr %25, i32 0, i32 1, !dbg !841
  store i8 0, ptr %26, align 1, !dbg !842
  %27 = load ptr, ptr %5, align 4, !dbg !843
  call void @z_init_thread_timeout(ptr noundef %27) #8, !dbg !844
  ret void, !dbg !845
}

; Function Attrs: nounwind optsize
define internal ptr @setup_thread_stack(ptr noundef %0, ptr noundef %1, i32 noundef %2) #1 !dbg !846 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !850, metadata !DIExpression()), !dbg !858
  store ptr %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !851, metadata !DIExpression()), !dbg !859
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !852, metadata !DIExpression()), !dbg !860
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #9, !dbg !861
  call void @llvm.dbg.declare(metadata ptr %7, metadata !853, metadata !DIExpression()), !dbg !862
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #9, !dbg !861
  call void @llvm.dbg.declare(metadata ptr %8, metadata !854, metadata !DIExpression()), !dbg !863
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #9, !dbg !864
  call void @llvm.dbg.declare(metadata ptr %9, metadata !855, metadata !DIExpression()), !dbg !865
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #9, !dbg !864
  call void @llvm.dbg.declare(metadata ptr %10, metadata !856, metadata !DIExpression()), !dbg !866
  call void @llvm.lifetime.start.p0(i64 4, ptr %11) #9, !dbg !867
  call void @llvm.dbg.declare(metadata ptr %11, metadata !857, metadata !DIExpression()), !dbg !868
  store i32 0, ptr %11, align 4, !dbg !868
  %15 = load i32, ptr %6, align 4, !dbg !869
  %16 = add i32 %15, 7, !dbg !871
  %17 = udiv i32 %16, 8, !dbg !872
  %18 = mul i32 %17, 8, !dbg !873
  %19 = add i32 %18, 0, !dbg !874
  store i32 %19, ptr %7, align 4, !dbg !875
  %20 = load ptr, ptr %5, align 4, !dbg !876
  %21 = call ptr @Z_KERNEL_STACK_BUFFER(ptr noundef %20) #8, !dbg !877
  store ptr %21, ptr %10, align 4, !dbg !878
  %22 = load i32, ptr %7, align 4, !dbg !879
  %23 = sub i32 %22, 0, !dbg !880
  store i32 %23, ptr %8, align 4, !dbg !881
  %24 = load ptr, ptr %5, align 4, !dbg !882
  %25 = load i32, ptr %7, align 4, !dbg !883
  %26 = getelementptr inbounds i8, ptr %24, i32 %25, !dbg !884
  store ptr %26, ptr %9, align 4, !dbg !885
  br label %27, !dbg !886

27:                                               ; preds = %3
  br label %29, !dbg !887

28:                                               ; No predecessors!
  br label %29, !dbg !891

29:                                               ; preds = %28, %27
  %30 = load i32, ptr %11, align 4, !dbg !892
  %31 = add i32 %30, 7, !dbg !893
  %32 = udiv i32 %31, 8, !dbg !894
  %33 = mul i32 %32, 8, !dbg !895
  store i32 %33, ptr %11, align 4, !dbg !896
  %34 = load i32, ptr %11, align 4, !dbg !897
  %35 = load ptr, ptr %9, align 4, !dbg !898
  %36 = sub i32 0, %34, !dbg !898
  %37 = getelementptr inbounds i8, ptr %35, i32 %36, !dbg !898
  store ptr %37, ptr %9, align 4, !dbg !898
  %38 = load ptr, ptr %9, align 4, !dbg !899
  call void @llvm.lifetime.end.p0(i64 4, ptr %11) #9, !dbg !900
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #9, !dbg !900
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #9, !dbg !900
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #9, !dbg !900
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #9, !dbg !900
  ret ptr %38, !dbg !901
}

; Function Attrs: optsize
declare !dbg !902 dso_local void @arch_new_thread(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: nounwind optsize
define hidden ptr @z_impl_k_thread_create(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef %8, [1 x i64] %9) #1 !dbg !906 {
  %11 = alloca %struct.k_timeout_t, align 8
  %12 = alloca ptr, align 4
  %13 = alloca ptr, align 4
  %14 = alloca i32, align 4
  %15 = alloca ptr, align 4
  %16 = alloca ptr, align 4
  %17 = alloca ptr, align 4
  %18 = alloca ptr, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.k_timeout_t, align 8
  %22 = getelementptr inbounds %struct.k_timeout_t, ptr %11, i32 0, i32 0
  store [1 x i64] %9, ptr %22, align 8
  store ptr %0, ptr %12, align 4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !910, metadata !DIExpression()), !dbg !920
  store ptr %1, ptr %13, align 4
  call void @llvm.dbg.declare(metadata ptr %13, metadata !911, metadata !DIExpression()), !dbg !921
  store i32 %2, ptr %14, align 4
  call void @llvm.dbg.declare(metadata ptr %14, metadata !912, metadata !DIExpression()), !dbg !922
  store ptr %3, ptr %15, align 4
  call void @llvm.dbg.declare(metadata ptr %15, metadata !913, metadata !DIExpression()), !dbg !923
  store ptr %4, ptr %16, align 4
  call void @llvm.dbg.declare(metadata ptr %16, metadata !914, metadata !DIExpression()), !dbg !924
  store ptr %5, ptr %17, align 4
  call void @llvm.dbg.declare(metadata ptr %17, metadata !915, metadata !DIExpression()), !dbg !925
  store ptr %6, ptr %18, align 4
  call void @llvm.dbg.declare(metadata ptr %18, metadata !916, metadata !DIExpression()), !dbg !926
  store i32 %7, ptr %19, align 4
  call void @llvm.dbg.declare(metadata ptr %19, metadata !917, metadata !DIExpression()), !dbg !927
  store i32 %8, ptr %20, align 4
  call void @llvm.dbg.declare(metadata ptr %20, metadata !918, metadata !DIExpression()), !dbg !928
  call void @llvm.dbg.declare(metadata ptr %11, metadata !919, metadata !DIExpression()), !dbg !929
  %23 = load ptr, ptr %12, align 4, !dbg !930
  %24 = load ptr, ptr %13, align 4, !dbg !931
  %25 = load i32, ptr %14, align 4, !dbg !932
  %26 = load ptr, ptr %15, align 4, !dbg !933
  %27 = load ptr, ptr %16, align 4, !dbg !934
  %28 = load ptr, ptr %17, align 4, !dbg !935
  %29 = load ptr, ptr %18, align 4, !dbg !936
  %30 = load i32, ptr %19, align 4, !dbg !937
  %31 = load i32, ptr %20, align 4, !dbg !938
  %32 = call ptr @z_setup_new_thread(ptr noundef %23, ptr noundef %24, i32 noundef %25, ptr noundef %26, ptr noundef %27, ptr noundef %28, ptr noundef %29, i32 noundef %30, i32 noundef %31, ptr noundef null) #8, !dbg !939
  %33 = getelementptr inbounds %struct.k_timeout_t, ptr %11, i32 0, i32 0, !dbg !940
  %34 = load i64, ptr %33, align 8, !dbg !940
  %35 = getelementptr inbounds %struct.k_timeout_t, ptr %21, i32 0, i32 0, !dbg !942
  store i64 -1, ptr %35, align 8, !dbg !942
  %36 = icmp eq i64 %34, -1, !dbg !943
  br i1 %36, label %41, label %37, !dbg !944

37:                                               ; preds = %10
  %38 = load ptr, ptr %12, align 4, !dbg !945
  %39 = getelementptr inbounds %struct.k_timeout_t, ptr %11, i32 0, i32 0, !dbg !947
  %40 = load [1 x i64], ptr %39, align 8, !dbg !947
  call void @schedule_new_thread(ptr noundef %38, [1 x i64] %40) #8, !dbg !947
  br label %41, !dbg !948

41:                                               ; preds = %37, %10
  %42 = load ptr, ptr %12, align 4, !dbg !949
  ret ptr %42, !dbg !950
}

; Function Attrs: nounwind optsize
define internal void @schedule_new_thread(ptr noundef %0, [1 x i64] %1) #1 !dbg !951 {
  %3 = alloca %struct.k_timeout_t, align 8
  %4 = alloca ptr, align 4
  %5 = alloca %struct.k_timeout_t, align 8
  %6 = getelementptr inbounds %struct.k_timeout_t, ptr %3, i32 0, i32 0
  store [1 x i64] %1, ptr %6, align 8
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !955, metadata !DIExpression()), !dbg !957
  call void @llvm.dbg.declare(metadata ptr %3, metadata !956, metadata !DIExpression()), !dbg !958
  %7 = getelementptr inbounds %struct.k_timeout_t, ptr %3, i32 0, i32 0, !dbg !959
  %8 = load i64, ptr %7, align 8, !dbg !959
  %9 = getelementptr inbounds %struct.k_timeout_t, ptr %5, i32 0, i32 0, !dbg !961
  store i64 0, ptr %9, align 8, !dbg !961
  %10 = icmp eq i64 %8, 0, !dbg !962
  br i1 %10, label %11, label %13, !dbg !963

11:                                               ; preds = %2
  %12 = load ptr, ptr %4, align 4, !dbg !964
  call void @k_thread_start(ptr noundef %12) #8, !dbg !966
  br label %17, !dbg !967

13:                                               ; preds = %2
  %14 = load ptr, ptr %4, align 4, !dbg !968
  %15 = getelementptr inbounds %struct.k_timeout_t, ptr %3, i32 0, i32 0, !dbg !970
  %16 = load [1 x i64], ptr %15, align 8, !dbg !970
  call void @z_add_thread_timeout(ptr noundef %14, [1 x i64] %16) #8, !dbg !970
  br label %17

17:                                               ; preds = %13, %11
  ret void, !dbg !971
}

; Function Attrs: nounwind optsize
define hidden void @z_init_static_threads() #1 !dbg !972 {
  %1 = alloca ptr, align 4
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.k_timeout_t, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %1) #9, !dbg !992
  call void @llvm.dbg.declare(metadata ptr %1, metadata !974, metadata !DIExpression()), !dbg !993
  store ptr @__static_thread_data_list_start, ptr %1, align 4, !dbg !993
  br label %6, !dbg !992

6:                                                ; preds = %50, %0
  %7 = load ptr, ptr %1, align 4, !dbg !994
  %8 = icmp ult ptr %7, @__static_thread_data_list_end, !dbg !997
  %9 = zext i1 %8 to i32, !dbg !997
  store i32 %9, ptr %2, align 4, !dbg !998
  %10 = load i32, ptr %2, align 4, !dbg !1000
  %11 = icmp ne i32 %10, 0, !dbg !1001
  br i1 %11, label %13, label %12, !dbg !1001

12:                                               ; preds = %6
  call void @llvm.lifetime.end.p0(i64 4, ptr %1) #9, !dbg !1002
  br label %53

13:                                               ; preds = %6
  %14 = load ptr, ptr %1, align 4, !dbg !1003
  %15 = getelementptr inbounds %struct._static_thread_data, ptr %14, i32 0, i32 0, !dbg !1005
  %16 = load ptr, ptr %15, align 8, !dbg !1005
  %17 = load ptr, ptr %1, align 4, !dbg !1006
  %18 = getelementptr inbounds %struct._static_thread_data, ptr %17, i32 0, i32 1, !dbg !1007
  %19 = load ptr, ptr %18, align 4, !dbg !1007
  %20 = load ptr, ptr %1, align 4, !dbg !1008
  %21 = getelementptr inbounds %struct._static_thread_data, ptr %20, i32 0, i32 2, !dbg !1009
  %22 = load i32, ptr %21, align 8, !dbg !1009
  %23 = load ptr, ptr %1, align 4, !dbg !1010
  %24 = getelementptr inbounds %struct._static_thread_data, ptr %23, i32 0, i32 3, !dbg !1011
  %25 = load ptr, ptr %24, align 4, !dbg !1011
  %26 = load ptr, ptr %1, align 4, !dbg !1012
  %27 = getelementptr inbounds %struct._static_thread_data, ptr %26, i32 0, i32 4, !dbg !1013
  %28 = load ptr, ptr %27, align 8, !dbg !1013
  %29 = load ptr, ptr %1, align 4, !dbg !1014
  %30 = getelementptr inbounds %struct._static_thread_data, ptr %29, i32 0, i32 5, !dbg !1015
  %31 = load ptr, ptr %30, align 4, !dbg !1015
  %32 = load ptr, ptr %1, align 4, !dbg !1016
  %33 = getelementptr inbounds %struct._static_thread_data, ptr %32, i32 0, i32 6, !dbg !1017
  %34 = load ptr, ptr %33, align 8, !dbg !1017
  %35 = load ptr, ptr %1, align 4, !dbg !1018
  %36 = getelementptr inbounds %struct._static_thread_data, ptr %35, i32 0, i32 7, !dbg !1019
  %37 = load i32, ptr %36, align 4, !dbg !1019
  %38 = load ptr, ptr %1, align 4, !dbg !1020
  %39 = getelementptr inbounds %struct._static_thread_data, ptr %38, i32 0, i32 8, !dbg !1021
  %40 = load i32, ptr %39, align 8, !dbg !1021
  %41 = load ptr, ptr %1, align 4, !dbg !1022
  %42 = getelementptr inbounds %struct._static_thread_data, ptr %41, i32 0, i32 9, !dbg !1023
  %43 = load ptr, ptr %42, align 4, !dbg !1023
  %44 = call ptr @z_setup_new_thread(ptr noundef %16, ptr noundef %19, i32 noundef %22, ptr noundef %25, ptr noundef %28, ptr noundef %31, ptr noundef %34, i32 noundef %37, i32 noundef %40, ptr noundef %43) #8, !dbg !1024
  %45 = load ptr, ptr %1, align 4, !dbg !1025
  %46 = load ptr, ptr %1, align 4, !dbg !1026
  %47 = getelementptr inbounds %struct._static_thread_data, ptr %46, i32 0, i32 0, !dbg !1027
  %48 = load ptr, ptr %47, align 8, !dbg !1027
  %49 = getelementptr inbounds %struct.k_thread, ptr %48, i32 0, i32 2, !dbg !1028
  store ptr %45, ptr %49, align 4, !dbg !1029
  br label %50, !dbg !1030

50:                                               ; preds = %13
  %51 = load ptr, ptr %1, align 4, !dbg !1031
  %52 = getelementptr inbounds %struct._static_thread_data, ptr %51, i32 1, !dbg !1031
  store ptr %52, ptr %1, align 4, !dbg !1031
  br label %6, !dbg !1002, !llvm.loop !1032

53:                                               ; preds = %12
  call void @k_sched_lock() #8, !dbg !1034
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #9, !dbg !1035
  call void @llvm.dbg.declare(metadata ptr %3, metadata !990, metadata !DIExpression()), !dbg !1036
  store ptr @__static_thread_data_list_start, ptr %3, align 4, !dbg !1036
  br label %54, !dbg !1035

54:                                               ; preds = %77, %53
  %55 = load ptr, ptr %3, align 4, !dbg !1037
  %56 = icmp ult ptr %55, @__static_thread_data_list_end, !dbg !1040
  %57 = zext i1 %56 to i32, !dbg !1040
  store i32 %57, ptr %4, align 4, !dbg !1041
  %58 = load i32, ptr %4, align 4, !dbg !1043
  %59 = icmp ne i32 %58, 0, !dbg !1044
  br i1 %59, label %61, label %60, !dbg !1044

60:                                               ; preds = %54
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #9, !dbg !1045
  br label %80

61:                                               ; preds = %54
  %62 = load ptr, ptr %3, align 4, !dbg !1046
  %63 = getelementptr inbounds %struct._static_thread_data, ptr %62, i32 0, i32 10, !dbg !1049
  %64 = getelementptr inbounds %struct.k_timeout_t, ptr %63, i32 0, i32 0, !dbg !1050
  %65 = load i64, ptr %64, align 8, !dbg !1050
  %66 = getelementptr inbounds %struct.k_timeout_t, ptr %5, i32 0, i32 0, !dbg !1051
  store i64 -1, ptr %66, align 8, !dbg !1051
  %67 = icmp eq i64 %65, -1, !dbg !1052
  br i1 %67, label %76, label %68, !dbg !1053

68:                                               ; preds = %61
  %69 = load ptr, ptr %3, align 4, !dbg !1054
  %70 = getelementptr inbounds %struct._static_thread_data, ptr %69, i32 0, i32 0, !dbg !1056
  %71 = load ptr, ptr %70, align 8, !dbg !1056
  %72 = load ptr, ptr %3, align 4, !dbg !1057
  %73 = getelementptr inbounds %struct._static_thread_data, ptr %72, i32 0, i32 10, !dbg !1058
  %74 = getelementptr inbounds %struct.k_timeout_t, ptr %73, i32 0, i32 0, !dbg !1059
  %75 = load [1 x i64], ptr %74, align 8, !dbg !1059
  call void @schedule_new_thread(ptr noundef %71, [1 x i64] %75) #8, !dbg !1059
  br label %76, !dbg !1060

76:                                               ; preds = %68, %61
  br label %77, !dbg !1061

77:                                               ; preds = %76
  %78 = load ptr, ptr %3, align 4, !dbg !1062
  %79 = getelementptr inbounds %struct._static_thread_data, ptr %78, i32 1, !dbg !1062
  store ptr %79, ptr %3, align 4, !dbg !1062
  br label %54, !dbg !1045, !llvm.loop !1063

80:                                               ; preds = %60
  call void @k_sched_unlock() #8, !dbg !1065
  ret void, !dbg !1066
}

; Function Attrs: optsize
declare !dbg !1067 dso_local void @k_sched_lock() #4

; Function Attrs: optsize
declare !dbg !1068 dso_local void @k_sched_unlock() #4

; Function Attrs: inlinehint nounwind optsize
define internal void @z_init_thread_timeout(ptr noundef %0) #0 !dbg !1069 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1074, metadata !DIExpression()), !dbg !1075
  %3 = load ptr, ptr %2, align 4, !dbg !1076
  %4 = getelementptr inbounds %struct._thread_base, ptr %3, i32 0, i32 7, !dbg !1077
  call void @z_init_timeout(ptr noundef %4) #8, !dbg !1078
  ret void, !dbg !1079
}

; Function Attrs: noreturn nounwind optsize
define hidden void @k_thread_user_mode_enter(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #5 !dbg !1080 {
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  store ptr %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1084, metadata !DIExpression()), !dbg !1088
  store ptr %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1085, metadata !DIExpression()), !dbg !1089
  store ptr %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1086, metadata !DIExpression()), !dbg !1090
  store ptr %3, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1087, metadata !DIExpression()), !dbg !1091
  br label %9, !dbg !1092

9:                                                ; preds = %4
  br label %10, !dbg !1093

10:                                               ; preds = %9
  %11 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !1095
  %12 = getelementptr inbounds %struct.k_thread, ptr %11, i32 0, i32 0, !dbg !1096
  %13 = getelementptr inbounds %struct._thread_base, ptr %12, i32 0, i32 2, !dbg !1097
  %14 = load i8, ptr %13, align 4, !dbg !1098
  %15 = zext i8 %14 to i32, !dbg !1098
  %16 = or i32 %15, 4, !dbg !1098
  %17 = trunc i32 %16 to i8, !dbg !1098
  store i8 %17, ptr %13, align 4, !dbg !1098
  call void @z_thread_essential_clear() #8, !dbg !1099
  %18 = load ptr, ptr %5, align 4, !dbg !1100
  %19 = load ptr, ptr %6, align 4, !dbg !1101
  %20 = load ptr, ptr %7, align 4, !dbg !1102
  %21 = load ptr, ptr %8, align 4, !dbg !1103
  call void @z_thread_entry(ptr noundef %18, ptr noundef %19, ptr noundef %20, ptr noundef %21) #10, !dbg !1104
  unreachable, !dbg !1104
}

; Function Attrs: noreturn optsize
declare !dbg !1105 dso_local void @z_thread_entry(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #6

; Function Attrs: nounwind optsize
define hidden i32 @z_impl_k_float_disable(ptr noundef %0) #1 !dbg !1107 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1111, metadata !DIExpression()), !dbg !1112
  %3 = load ptr, ptr %2, align 4, !dbg !1113
  ret i32 -134, !dbg !1114
}

; Function Attrs: nounwind optsize
define hidden i32 @z_impl_k_float_enable(ptr noundef %0, i32 noundef %1) #1 !dbg !1115 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1119, metadata !DIExpression()), !dbg !1121
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1120, metadata !DIExpression()), !dbg !1122
  %5 = load ptr, ptr %3, align 4, !dbg !1123
  %6 = load i32, ptr %4, align 4, !dbg !1124
  ret i32 -134, !dbg !1125
}

; Function Attrs: nounwind optsize
define hidden i32 @k_thread_runtime_stats_get(ptr noundef %0, ptr noundef %1) #1 !dbg !1126 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca %struct.k_thread_runtime_stats, align 1
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1133, metadata !DIExpression()), !dbg !1135
  store ptr %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1134, metadata !DIExpression()), !dbg !1136
  %7 = load ptr, ptr %4, align 4, !dbg !1137
  %8 = icmp eq ptr %7, null, !dbg !1139
  br i1 %8, label %12, label %9, !dbg !1140

9:                                                ; preds = %2
  %10 = load ptr, ptr %5, align 4, !dbg !1141
  %11 = icmp eq ptr %10, null, !dbg !1142
  br i1 %11, label %12, label %13, !dbg !1143

12:                                               ; preds = %9, %2
  store i32 -5, ptr %3, align 4, !dbg !1144
  br label %15, !dbg !1144

13:                                               ; preds = %9
  %14 = load ptr, ptr %5, align 4, !dbg !1146
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %14, ptr align 1 %6, i32 0, i1 false), !dbg !1147
  store i32 0, ptr %3, align 4, !dbg !1148
  br label %15, !dbg !1148

15:                                               ; preds = %13, %12
  %16 = load i32, ptr %3, align 4, !dbg !1149
  ret i32 %16, !dbg !1149
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: nounwind optsize
define hidden i32 @k_thread_runtime_stats_all_get(ptr noundef %0) #1 !dbg !1150 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 4
  %4 = alloca %struct.k_thread_runtime_stats, align 1
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1154, metadata !DIExpression()), !dbg !1155
  %5 = load ptr, ptr %3, align 4, !dbg !1156
  %6 = icmp eq ptr %5, null, !dbg !1158
  br i1 %6, label %7, label %8, !dbg !1159

7:                                                ; preds = %1
  store i32 -5, ptr %2, align 4, !dbg !1160
  br label %10, !dbg !1160

8:                                                ; preds = %1
  %9 = load ptr, ptr %3, align 4, !dbg !1162
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %9, ptr align 1 %4, i32 0, i1 false), !dbg !1163
  store i32 0, ptr %2, align 4, !dbg !1164
  br label %10, !dbg !1164

10:                                               ; preds = %8, %7
  %11 = load i32, ptr %2, align 4, !dbg !1165
  ret i32 %11, !dbg !1165
}

; Function Attrs: optsize
declare !dbg !1166 dso_local i64 @z_timeout_expires(ptr noundef) #4

; Function Attrs: optsize
declare !dbg !1171 dso_local i64 @z_timeout_remaining(ptr noundef) #4

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @sys_sflist_is_empty(ptr noundef %0) #0 !dbg !1172 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1177, metadata !DIExpression()), !dbg !1178
  %3 = load ptr, ptr %2, align 4, !dbg !1179
  %4 = call ptr @sys_sflist_peek_head(ptr noundef %3) #8, !dbg !1180
  %5 = icmp eq ptr %4, null, !dbg !1181
  ret i1 %5, !dbg !1182
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @sys_sflist_peek_head(ptr noundef %0) #0 !dbg !1183 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1187, metadata !DIExpression()), !dbg !1188
  %3 = load ptr, ptr %2, align 4, !dbg !1189
  %4 = getelementptr inbounds %struct._sflist, ptr %3, i32 0, i32 0, !dbg !1190
  %5 = load ptr, ptr %4, align 4, !dbg !1190
  ret ptr %5, !dbg !1191
}

; Function Attrs: inlinehint nounwind optsize
define internal void @sys_dlist_init(ptr noundef %0) #0 !dbg !1192 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1197, metadata !DIExpression()), !dbg !1198
  %3 = load ptr, ptr %2, align 4, !dbg !1199
  %4 = load ptr, ptr %2, align 4, !dbg !1200
  %5 = getelementptr inbounds %struct._dnode, ptr %4, i32 0, i32 0, !dbg !1201
  store ptr %3, ptr %5, align 4, !dbg !1202
  %6 = load ptr, ptr %2, align 4, !dbg !1203
  %7 = load ptr, ptr %2, align 4, !dbg !1204
  %8 = getelementptr inbounds %struct._dnode, ptr %7, i32 0, i32 1, !dbg !1205
  store ptr %6, ptr %8, align 4, !dbg !1206
  ret void, !dbg !1207
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @Z_KERNEL_STACK_BUFFER(ptr noundef %0) #0 !dbg !1208 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1212, metadata !DIExpression()), !dbg !1213
  %3 = load ptr, ptr %2, align 4, !dbg !1214
  %4 = getelementptr inbounds i8, ptr %3, i32 0, !dbg !1215
  ret ptr %4, !dbg !1216
}

; Function Attrs: inlinehint nounwind optsize
define internal void @k_thread_start(ptr noundef %0) #0 !dbg !1217 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1222, metadata !DIExpression()), !dbg !1223
  br label %3, !dbg !1224

3:                                                ; preds = %1
  call void asm sideeffect "", "~{memory}"() #9, !dbg !1225, !srcloc !1227
  br label %4, !dbg !1228

4:                                                ; preds = %3
  %5 = load ptr, ptr %2, align 4, !dbg !1229
  call void @z_impl_k_thread_start(ptr noundef %5) #8, !dbg !1230
  ret void, !dbg !1231
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_add_thread_timeout(ptr noundef %0, [1 x i64] %1) #0 !dbg !1232 {
  %3 = alloca %struct.k_timeout_t, align 8
  %4 = alloca ptr, align 4
  %5 = getelementptr inbounds %struct.k_timeout_t, ptr %3, i32 0, i32 0
  store [1 x i64] %1, ptr %5, align 8
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1234, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1235, metadata !DIExpression()), !dbg !1237
  %6 = load ptr, ptr %4, align 4, !dbg !1238
  %7 = getelementptr inbounds %struct.k_thread, ptr %6, i32 0, i32 0, !dbg !1239
  %8 = getelementptr inbounds %struct._thread_base, ptr %7, i32 0, i32 7, !dbg !1240
  %9 = getelementptr inbounds %struct.k_timeout_t, ptr %3, i32 0, i32 0, !dbg !1241
  %10 = load [1 x i64], ptr %9, align 8, !dbg !1241
  call void @z_add_timeout(ptr noundef %8, ptr noundef @z_thread_timeout, [1 x i64] %10) #8, !dbg !1241
  ret void, !dbg !1242
}

; Function Attrs: optsize
declare !dbg !1243 dso_local void @z_add_timeout(ptr noundef, ptr noundef, [1 x i64]) #4

; Function Attrs: optsize
declare dso_local void @z_thread_timeout(ptr noundef) #4

; Function Attrs: inlinehint nounwind optsize
define internal void @z_init_timeout(ptr noundef %0) #0 !dbg !1246 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1248, metadata !DIExpression()), !dbg !1249
  %3 = load ptr, ptr %2, align 4, !dbg !1250
  %4 = getelementptr inbounds %struct._timeout, ptr %3, i32 0, i32 0, !dbg !1251
  call void @sys_dnode_init(ptr noundef %4) #8, !dbg !1252
  ret void, !dbg !1253
}

; Function Attrs: inlinehint nounwind optsize
define internal void @sys_dnode_init(ptr noundef %0) #0 !dbg !1254 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1258, metadata !DIExpression()), !dbg !1259
  %3 = load ptr, ptr %2, align 4, !dbg !1260
  %4 = getelementptr inbounds %struct._dnode, ptr %3, i32 0, i32 0, !dbg !1261
  store ptr null, ptr %4, align 4, !dbg !1262
  %5 = load ptr, ptr %2, align 4, !dbg !1263
  %6 = getelementptr inbounds %struct._dnode, ptr %5, i32 0, i32 1, !dbg !1264
  store ptr null, ptr %6, align 4, !dbg !1265
  ret void, !dbg !1266
}

attributes #0 = { inlinehint nounwind optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { noreturn nounwind optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { noreturn optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { optsize }
attributes #9 = { nounwind }
attributes #10 = { noreturn optsize }

!llvm.dbg.cu = !{!135}
!llvm.module.flags = !{!280, !281, !282, !283, !284, !285}
!llvm.ident = !{!286}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "states_str", scope: !2, file: !3, line: 319, type: !279, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "k_thread_state_str", scope: !3, file: !3, line: 314, type: !4, scopeLine: 315, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !135, retainedNodes: !270)
!3 = !DIFile(filename: "kernel/thread.c", directory: "/home/sri/zephyrproject/zephyr")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !9, !132, !133}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 32)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!8 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_tid_t", file: !10, line: 359, baseType: !11)
!10 = !DIFile(filename: "include/zephyr/kernel/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 32)
!12 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_thread", file: !10, line: 250, size: 896, elements: !13)
!13 = !{!14, !89, !102, !103, !104, !106, !127}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !12, file: !10, line: 252, baseType: !15, size: 384)
!15 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_base", file: !10, line: 58, size: 384, elements: !16)
!16 = !{!17, !45, !53, !57, !58, !71, !74, !76}
!17 = !DIDerivedType(tag: DW_TAG_member, scope: !15, file: !10, line: 61, baseType: !18, size: 64)
!18 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !15, file: !10, line: 61, size: 64, elements: !19)
!19 = !{!20, !36}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_dlist", scope: !18, file: !10, line: 62, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dnode_t", file: !22, line: 55, baseType: !23)
!22 = !DIFile(filename: "include/zephyr/sys/dlist.h", directory: "/home/sri/zephyrproject/zephyr")
!23 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_dnode", file: !22, line: 37, size: 64, elements: !24)
!24 = !{!25, !31}
!25 = !DIDerivedType(tag: DW_TAG_member, scope: !23, file: !22, line: 38, baseType: !26, size: 32)
!26 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !23, file: !22, line: 38, size: 32, elements: !27)
!27 = !{!28, !30}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !26, file: !22, line: 39, baseType: !29, size: 32)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 32)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !26, file: !22, line: 40, baseType: !29, size: 32)
!31 = !DIDerivedType(tag: DW_TAG_member, scope: !23, file: !22, line: 42, baseType: !32, size: 32, offset: 32)
!32 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !23, file: !22, line: 42, size: 32, elements: !33)
!33 = !{!34, !35}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !32, file: !22, line: 43, baseType: !29, size: 32)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !32, file: !22, line: 44, baseType: !29, size: 32)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_rb", scope: !18, file: !10, line: 63, baseType: !37, size: 64)
!37 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rbnode", file: !38, line: 58, size: 64, elements: !39)
!38 = !DIFile(filename: "include/zephyr/sys/rb.h", directory: "/home/sri/zephyrproject/zephyr")
!39 = !{!40}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !37, file: !38, line: 60, baseType: !41, size: 64)
!41 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 64, elements: !43)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 32)
!43 = !{!44}
!44 = !DISubrange(count: 2)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "pended_on", scope: !15, file: !10, line: 69, baseType: !46, size: 32, offset: 64)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 32)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "_wait_q_t", file: !48, line: 243, baseType: !49)
!48 = !DIFile(filename: "include/zephyr/kernel_structs.h", directory: "/home/sri/zephyrproject/zephyr")
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !48, line: 241, size: 64, elements: !50)
!50 = !{!51}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !49, file: !48, line: 242, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dlist_t", file: !22, line: 51, baseType: !23)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "user_options", scope: !15, file: !10, line: 72, baseType: !54, size: 8, offset: 96)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !55, line: 62, baseType: !56)
!55 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/stdint.h", directory: "")
!56 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "thread_state", scope: !15, file: !10, line: 75, baseType: !54, size: 8, offset: 104)
!58 = !DIDerivedType(tag: DW_TAG_member, scope: !15, file: !10, line: 91, baseType: !59, size: 16, offset: 112)
!59 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !15, file: !10, line: 91, size: 16, elements: !60)
!60 = !{!61, !68}
!61 = !DIDerivedType(tag: DW_TAG_member, scope: !59, file: !10, line: 92, baseType: !62, size: 16)
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !59, file: !10, line: 92, size: 16, elements: !63)
!63 = !{!64, !67}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !62, file: !10, line: 97, baseType: !65, size: 8)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !55, line: 56, baseType: !66)
!66 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "sched_locked", scope: !62, file: !10, line: 98, baseType: !54, size: 8, offset: 8)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "preempt", scope: !59, file: !10, line: 101, baseType: !69, size: 16)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !55, line: 63, baseType: !70)
!70 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "order_key", scope: !15, file: !10, line: 108, baseType: !72, size: 32, offset: 128)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !55, line: 64, baseType: !73)
!73 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "swap_data", scope: !15, file: !10, line: 132, baseType: !75, size: 32, offset: 160)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !15, file: !10, line: 136, baseType: !77, size: 192, offset: 192)
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_timeout", file: !48, line: 254, size: 192, elements: !78)
!78 = !{!79, !80, !86}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !77, file: !48, line: 255, baseType: !21, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !77, file: !48, line: 256, baseType: !81, size: 32, offset: 64)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "_timeout_func_t", file: !48, line: 252, baseType: !82)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 32)
!83 = !DISubroutineType(types: !84)
!84 = !{null, !85}
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 32)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "dticks", scope: !77, file: !48, line: 259, baseType: !87, size: 64, offset: 128)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !55, line: 59, baseType: !88)
!88 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "callee_saved", scope: !12, file: !10, line: 255, baseType: !90, size: 288, offset: 384)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_callee_saved", file: !91, line: 25, size: 288, elements: !92)
!91 = !DIFile(filename: "include/zephyr/arch/arm/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!92 = !{!93, !94, !95, !96, !97, !98, !99, !100, !101}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "v1", scope: !90, file: !91, line: 26, baseType: !72, size: 32)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "v2", scope: !90, file: !91, line: 27, baseType: !72, size: 32, offset: 32)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "v3", scope: !90, file: !91, line: 28, baseType: !72, size: 32, offset: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "v4", scope: !90, file: !91, line: 29, baseType: !72, size: 32, offset: 96)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "v5", scope: !90, file: !91, line: 30, baseType: !72, size: 32, offset: 128)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "v6", scope: !90, file: !91, line: 31, baseType: !72, size: 32, offset: 160)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "v7", scope: !90, file: !91, line: 32, baseType: !72, size: 32, offset: 192)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "v8", scope: !90, file: !91, line: 33, baseType: !72, size: 32, offset: 224)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "psp", scope: !90, file: !91, line: 34, baseType: !72, size: 32, offset: 256)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "init_data", scope: !12, file: !10, line: 258, baseType: !75, size: 32, offset: 672)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "join_queue", scope: !12, file: !10, line: 261, baseType: !47, size: 64, offset: 704)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "errno_var", scope: !12, file: !10, line: 302, baseType: !105, size: 32, offset: 768)
!105 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "resource_pool", scope: !12, file: !10, line: 333, baseType: !107, size: 32, offset: 800)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 32)
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_heap", file: !109, line: 5291, size: 160, elements: !110)
!109 = !DIFile(filename: "include/zephyr/kernel.h", directory: "/home/sri/zephyrproject/zephyr")
!110 = !{!111, !122, !123}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !108, file: !109, line: 5292, baseType: !112, size: 96)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sys_heap", file: !113, line: 56, size: 96, elements: !114)
!113 = !DIFile(filename: "include/zephyr/sys/sys_heap.h", directory: "/home/sri/zephyrproject/zephyr")
!114 = !{!115, !118, !119}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !112, file: !113, line: 57, baseType: !116, size: 32)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 32)
!117 = !DICompositeType(tag: DW_TAG_structure_type, name: "z_heap", file: !113, line: 57, flags: DIFlagFwdDecl)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "init_mem", scope: !112, file: !113, line: 58, baseType: !75, size: 32, offset: 32)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "init_bytes", scope: !112, file: !113, line: 59, baseType: !120, size: 32, offset: 64)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !121, line: 46, baseType: !73)
!121 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/lib/clang/17/include/stddef.h", directory: "")
!122 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !108, file: !109, line: 5293, baseType: !47, size: 64, offset: 96)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !108, file: !109, line: 5294, baseType: !124, offset: 160)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_spinlock", file: !125, line: 45, elements: !126)
!125 = !DIFile(filename: "include/zephyr/spinlock.h", directory: "/home/sri/zephyrproject/zephyr")
!126 = !{}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !12, file: !10, line: 355, baseType: !128, size: 64, offset: 832)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_arch", file: !91, line: 60, size: 64, elements: !129)
!129 = !{!130, !131}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "basepri", scope: !128, file: !91, line: 63, baseType: !72, size: 32)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "swap_return_value", scope: !128, file: !91, line: 66, baseType: !72, size: 32, offset: 32)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 32)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !134, line: 51, baseType: !73)
!134 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/string.h", directory: "")
!135 = distinct !DICompileUnit(language: DW_LANG_C99, file: !136, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !137, retainedTypes: !220, globals: !225, splitDebugInlining: false, nameTableKind: None)
!136 = !DIFile(filename: "thread.c", directory: "/home/sri/zephyrproject/zephyr/build")
!137 = !{!138}
!138 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "k_objects", file: !139, line: 29, baseType: !56, size: 8, elements: !140)
!139 = !DIFile(filename: "include/zephyr/sys/kobject.h", directory: "/home/sri/zephyrproject/zephyr")
!140 = !{!141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219}
!141 = !DIEnumerator(name: "K_OBJ_ANY", value: 0)
!142 = !DIEnumerator(name: "K_OBJ_MEM_SLAB", value: 1)
!143 = !DIEnumerator(name: "K_OBJ_MSGQ", value: 2)
!144 = !DIEnumerator(name: "K_OBJ_MUTEX", value: 3)
!145 = !DIEnumerator(name: "K_OBJ_PIPE", value: 4)
!146 = !DIEnumerator(name: "K_OBJ_QUEUE", value: 5)
!147 = !DIEnumerator(name: "K_OBJ_POLL_SIGNAL", value: 6)
!148 = !DIEnumerator(name: "K_OBJ_SEM", value: 7)
!149 = !DIEnumerator(name: "K_OBJ_STACK", value: 8)
!150 = !DIEnumerator(name: "K_OBJ_THREAD", value: 9)
!151 = !DIEnumerator(name: "K_OBJ_TIMER", value: 10)
!152 = !DIEnumerator(name: "K_OBJ_THREAD_STACK_ELEMENT", value: 11)
!153 = !DIEnumerator(name: "K_OBJ_NET_SOCKET", value: 12)
!154 = !DIEnumerator(name: "K_OBJ_NET_IF", value: 13)
!155 = !DIEnumerator(name: "K_OBJ_SYS_MUTEX", value: 14)
!156 = !DIEnumerator(name: "K_OBJ_FUTEX", value: 15)
!157 = !DIEnumerator(name: "K_OBJ_CONDVAR", value: 16)
!158 = !DIEnumerator(name: "K_OBJ_DRIVER_GPIO", value: 17)
!159 = !DIEnumerator(name: "K_OBJ_DRIVER_RESET", value: 18)
!160 = !DIEnumerator(name: "K_OBJ_DRIVER_UART", value: 19)
!161 = !DIEnumerator(name: "K_OBJ_DRIVER_CRYPTO", value: 20)
!162 = !DIEnumerator(name: "K_OBJ_DRIVER_ADC", value: 21)
!163 = !DIEnumerator(name: "K_OBJ_DRIVER_AUXDISPLAY", value: 22)
!164 = !DIEnumerator(name: "K_OBJ_DRIVER_BBRAM", value: 23)
!165 = !DIEnumerator(name: "K_OBJ_DRIVER_CAN", value: 24)
!166 = !DIEnumerator(name: "K_OBJ_DRIVER_CHARGER", value: 25)
!167 = !DIEnumerator(name: "K_OBJ_DRIVER_COREDUMP", value: 26)
!168 = !DIEnumerator(name: "K_OBJ_DRIVER_COUNTER", value: 27)
!169 = !DIEnumerator(name: "K_OBJ_DRIVER_DAC", value: 28)
!170 = !DIEnumerator(name: "K_OBJ_DRIVER_DAI", value: 29)
!171 = !DIEnumerator(name: "K_OBJ_DRIVER_DMA", value: 30)
!172 = !DIEnumerator(name: "K_OBJ_DRIVER_EDAC", value: 31)
!173 = !DIEnumerator(name: "K_OBJ_DRIVER_EEPROM", value: 32)
!174 = !DIEnumerator(name: "K_OBJ_DRIVER_FUEL_GAUGE_EMUL", value: 33)
!175 = !DIEnumerator(name: "K_OBJ_DRIVER_EMUL_SENSOR_BACKEND_API", value: 34)
!176 = !DIEnumerator(name: "K_OBJ_DRIVER_ENTROPY", value: 35)
!177 = !DIEnumerator(name: "K_OBJ_DRIVER_ESPI", value: 36)
!178 = !DIEnumerator(name: "K_OBJ_DRIVER_ESPI_SAF", value: 37)
!179 = !DIEnumerator(name: "K_OBJ_DRIVER_FLASH", value: 38)
!180 = !DIEnumerator(name: "K_OBJ_DRIVER_FPGA", value: 39)
!181 = !DIEnumerator(name: "K_OBJ_DRIVER_FUEL_GAUGE", value: 40)
!182 = !DIEnumerator(name: "K_OBJ_DRIVER_HWSPINLOCK", value: 41)
!183 = !DIEnumerator(name: "K_OBJ_DRIVER_I2C", value: 42)
!184 = !DIEnumerator(name: "K_OBJ_DRIVER_I2S", value: 43)
!185 = !DIEnumerator(name: "K_OBJ_DRIVER_I3C", value: 44)
!186 = !DIEnumerator(name: "K_OBJ_DRIVER_IPM", value: 45)
!187 = !DIEnumerator(name: "K_OBJ_DRIVER_KSCAN", value: 46)
!188 = !DIEnumerator(name: "K_OBJ_DRIVER_LED", value: 47)
!189 = !DIEnumerator(name: "K_OBJ_DRIVER_MBOX", value: 48)
!190 = !DIEnumerator(name: "K_OBJ_DRIVER_MDIO", value: 49)
!191 = !DIEnumerator(name: "K_OBJ_DRIVER_MIPI_DSI", value: 50)
!192 = !DIEnumerator(name: "K_OBJ_DRIVER_PECI", value: 51)
!193 = !DIEnumerator(name: "K_OBJ_DRIVER_PS2", value: 52)
!194 = !DIEnumerator(name: "K_OBJ_DRIVER_PTP_CLOCK", value: 53)
!195 = !DIEnumerator(name: "K_OBJ_DRIVER_PWM", value: 54)
!196 = !DIEnumerator(name: "K_OBJ_DRIVER_REGULATOR_PARENT", value: 55)
!197 = !DIEnumerator(name: "K_OBJ_DRIVER_REGULATOR", value: 56)
!198 = !DIEnumerator(name: "K_OBJ_DRIVER_RETAINED_MEM", value: 57)
!199 = !DIEnumerator(name: "K_OBJ_DRIVER_RTC", value: 58)
!200 = !DIEnumerator(name: "K_OBJ_DRIVER_SDHC", value: 59)
!201 = !DIEnumerator(name: "K_OBJ_DRIVER_SENSOR", value: 60)
!202 = !DIEnumerator(name: "K_OBJ_DRIVER_SMBUS", value: 61)
!203 = !DIEnumerator(name: "K_OBJ_DRIVER_SPI", value: 62)
!204 = !DIEnumerator(name: "K_OBJ_DRIVER_SYSCON", value: 63)
!205 = !DIEnumerator(name: "K_OBJ_DRIVER_W1", value: 64)
!206 = !DIEnumerator(name: "K_OBJ_DRIVER_WDT", value: 65)
!207 = !DIEnumerator(name: "K_OBJ_DRIVER_CAN_TRANSCEIVER", value: 66)
!208 = !DIEnumerator(name: "K_OBJ_DRIVER_UART_MUX", value: 67)
!209 = !DIEnumerator(name: "K_OBJ_DRIVER_ITS", value: 68)
!210 = !DIEnumerator(name: "K_OBJ_DRIVER_TGPIO", value: 69)
!211 = !DIEnumerator(name: "K_OBJ_DRIVER_PCIE_CTRL", value: 70)
!212 = !DIEnumerator(name: "K_OBJ_DRIVER_SVC", value: 71)
!213 = !DIEnumerator(name: "K_OBJ_DRIVER_BC12_EMUL", value: 72)
!214 = !DIEnumerator(name: "K_OBJ_DRIVER_BC12", value: 73)
!215 = !DIEnumerator(name: "K_OBJ_DRIVER_TCPC", value: 74)
!216 = !DIEnumerator(name: "K_OBJ_DRIVER_IVSHMEM", value: 75)
!217 = !DIEnumerator(name: "K_OBJ_DRIVER_EC_HOST_CMD_BACKEND_API", value: 76)
!218 = !DIEnumerator(name: "K_OBJ_DRIVER_ETHPHY", value: 77)
!219 = !DIEnumerator(name: "K_OBJ_LAST", value: 78)
!220 = !{!6, !221, !54, !75, !105, !223, !224, !133, !132, !120}
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_ticks_t", file: !222, line: 46, baseType: !87)
!222 = !DIFile(filename: "include/zephyr/sys_clock.h", directory: "/home/sri/zephyrproject/zephyr")
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 32)
!224 = !DIBasicType(name: "unsigned long", size: 32, encoding: DW_ATE_unsigned)
!225 = !{!226, !231, !236, !241, !246, !251, !253, !258, !0, !263, !267}
!226 = !DIGlobalVariableExpression(var: !227, expr: !DIExpression())
!227 = distinct !DIGlobalVariable(scope: null, file: !3, line: 319, type: !228, isLocal: true, isDefinition: true)
!228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 48, elements: !229)
!229 = !{!230}
!230 = !DISubrange(count: 6)
!231 = !DIGlobalVariableExpression(var: !232, expr: !DIExpression())
!232 = distinct !DIGlobalVariable(scope: null, file: !3, line: 319, type: !233, isLocal: true, isDefinition: true)
!233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 64, elements: !234)
!234 = !{!235}
!235 = !DISubrange(count: 8)
!236 = !DIGlobalVariableExpression(var: !237, expr: !DIExpression())
!237 = distinct !DIGlobalVariable(scope: null, file: !3, line: 319, type: !238, isLocal: true, isDefinition: true)
!238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 72, elements: !239)
!239 = !{!240}
!240 = !DISubrange(count: 9)
!241 = !DIGlobalVariableExpression(var: !242, expr: !DIExpression())
!242 = distinct !DIGlobalVariable(scope: null, file: !3, line: 320, type: !243, isLocal: true, isDefinition: true)
!243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 40, elements: !244)
!244 = !{!245}
!245 = !DISubrange(count: 5)
!246 = !DIGlobalVariableExpression(var: !247, expr: !DIExpression())
!247 = distinct !DIGlobalVariable(scope: null, file: !3, line: 320, type: !248, isLocal: true, isDefinition: true)
!248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 80, elements: !249)
!249 = !{!250}
!250 = !DISubrange(count: 10)
!251 = !DIGlobalVariableExpression(var: !252, expr: !DIExpression())
!252 = distinct !DIGlobalVariable(scope: null, file: !3, line: 320, type: !238, isLocal: true, isDefinition: true)
!253 = !DIGlobalVariableExpression(var: !254, expr: !DIExpression())
!254 = distinct !DIGlobalVariable(scope: null, file: !3, line: 321, type: !255, isLocal: true, isDefinition: true)
!255 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8, elements: !256)
!256 = !{!257}
!257 = !DISubrange(count: 1)
!258 = !DIGlobalVariableExpression(var: !259, expr: !DIExpression())
!259 = distinct !DIGlobalVariable(scope: null, file: !3, line: 321, type: !260, isLocal: true, isDefinition: true)
!260 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 56, elements: !261)
!261 = !{!262}
!262 = !DISubrange(count: 7)
!263 = !DIGlobalVariableExpression(var: !264, expr: !DIExpression())
!264 = distinct !DIGlobalVariable(name: "states_sz", scope: !2, file: !3, line: 322, type: !265, isLocal: true, isDefinition: true)
!265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 256, elements: !234)
!266 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !133)
!267 = !DIGlobalVariableExpression(var: !268, expr: !DIExpression())
!268 = distinct !DIGlobalVariable(scope: null, file: !3, line: 348, type: !269, isLocal: true, isDefinition: true)
!269 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 16, elements: !43)
!270 = !{!271, !272, !273, !274, !275, !276, !277}
!271 = !DILocalVariable(name: "thread_id", arg: 1, scope: !2, file: !3, line: 314, type: !9)
!272 = !DILocalVariable(name: "buf", arg: 2, scope: !2, file: !3, line: 314, type: !132)
!273 = !DILocalVariable(name: "buf_size", arg: 3, scope: !2, file: !3, line: 314, type: !133)
!274 = !DILocalVariable(name: "off", scope: !2, file: !3, line: 316, type: !133)
!275 = !DILocalVariable(name: "bit", scope: !2, file: !3, line: 317, type: !54)
!276 = !DILocalVariable(name: "thread_state", scope: !2, file: !3, line: 318, type: !54)
!277 = !DILocalVariable(name: "index", scope: !278, file: !3, line: 336, type: !54)
!278 = distinct !DILexicalBlock(scope: !2, file: !3, line: 336, column: 2)
!279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 256, elements: !234)
!280 = !{i32 7, !"Dwarf Version", i32 4}
!281 = !{i32 2, !"Debug Info Version", i32 3}
!282 = !{i32 1, !"wchar_size", i32 4}
!283 = !{i32 1, !"static_rwdata", i32 1}
!284 = !{i32 1, !"enumsize_buildattr", i32 1}
!285 = !{i32 1, !"armlib_unavailable", i32 0}
!286 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
!287 = distinct !DISubprogram(name: "z_impl_k_object_access_grant", scope: !139, file: !139, line: 223, type: !288, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !135, retainedNodes: !292)
!288 = !DISubroutineType(types: !289)
!289 = !{null, !290, !11}
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 32)
!291 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!292 = !{!293, !294}
!293 = !DILocalVariable(name: "object", arg: 1, scope: !287, file: !139, line: 223, type: !290)
!294 = !DILocalVariable(name: "thread", arg: 2, scope: !287, file: !139, line: 224, type: !11)
!295 = !DILocation(line: 223, column: 61, scope: !287)
!296 = !DILocation(line: 224, column: 24, scope: !287)
!297 = !DILocation(line: 226, column: 9, scope: !287)
!298 = !DILocation(line: 227, column: 9, scope: !287)
!299 = !DILocation(line: 228, column: 1, scope: !287)
!300 = distinct !DISubprogram(name: "z_impl_k_object_release", scope: !139, file: !139, line: 243, type: !301, scopeLine: 244, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !135, retainedNodes: !303)
!301 = !DISubroutineType(types: !302)
!302 = !{null, !290}
!303 = !{!304}
!304 = !DILocalVariable(name: "object", arg: 1, scope: !300, file: !139, line: 243, type: !290)
!305 = !DILocation(line: 243, column: 56, scope: !300)
!306 = !DILocation(line: 245, column: 9, scope: !300)
!307 = !DILocation(line: 246, column: 1, scope: !300)
!308 = distinct !DISubprogram(name: "z_impl_k_object_alloc", scope: !139, file: !139, line: 359, type: !309, scopeLine: 360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !135, retainedNodes: !311)
!309 = !DISubroutineType(types: !310)
!310 = !{!75, !138}
!311 = !{!312}
!312 = !DILocalVariable(name: "otype", arg: 1, scope: !308, file: !139, line: 359, type: !138)
!313 = !DILocation(line: 359, column: 58, scope: !308)
!314 = !DILocation(line: 361, column: 9, scope: !308)
!315 = !DILocation(line: 363, column: 2, scope: !308)
!316 = distinct !DISubprogram(name: "z_impl_k_object_alloc_size", scope: !139, file: !139, line: 366, type: !317, scopeLine: 368, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !135, retainedNodes: !319)
!317 = !DISubroutineType(types: !318)
!318 = !{!75, !138, !120}
!319 = !{!320, !321}
!320 = !DILocalVariable(name: "otype", arg: 1, scope: !316, file: !139, line: 366, type: !138)
!321 = !DILocalVariable(name: "size", arg: 2, scope: !316, file: !139, line: 367, type: !120)
!322 = !DILocation(line: 366, column: 63, scope: !316)
!323 = !DILocation(line: 367, column: 13, scope: !316)
!324 = !DILocation(line: 369, column: 9, scope: !316)
!325 = !DILocation(line: 370, column: 9, scope: !316)
!326 = !DILocation(line: 372, column: 2, scope: !316)
!327 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_expires_ticks", scope: !109, file: !109, line: 656, type: !328, scopeLine: 658, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !135, retainedNodes: !332)
!328 = !DISubroutineType(types: !329)
!329 = !{!221, !330}
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 32)
!331 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!332 = !{!333}
!333 = !DILocalVariable(name: "t", arg: 1, scope: !327, file: !109, line: 657, type: !330)
!334 = !DILocation(line: 657, column: 30, scope: !327)
!335 = !DILocation(line: 659, column: 28, scope: !327)
!336 = !DILocation(line: 659, column: 31, scope: !327)
!337 = !DILocation(line: 659, column: 36, scope: !327)
!338 = !DILocation(line: 659, column: 9, scope: !327)
!339 = !DILocation(line: 659, column: 2, scope: !327)
!340 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_remaining_ticks", scope: !109, file: !109, line: 671, type: !328, scopeLine: 673, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !135, retainedNodes: !341)
!341 = !{!342}
!342 = !DILocalVariable(name: "t", arg: 1, scope: !340, file: !109, line: 672, type: !330)
!343 = !DILocation(line: 672, column: 30, scope: !340)
!344 = !DILocation(line: 674, column: 30, scope: !340)
!345 = !DILocation(line: 674, column: 33, scope: !340)
!346 = !DILocation(line: 674, column: 38, scope: !340)
!347 = !DILocation(line: 674, column: 9, scope: !340)
!348 = !DILocation(line: 674, column: 2, scope: !340)
!349 = distinct !DISubprogram(name: "z_impl_k_timer_expires_ticks", scope: !109, file: !109, line: 1634, type: !350, scopeLine: 1636, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !135, retainedNodes: !371)
!350 = !DISubroutineType(types: !351)
!351 = !{!221, !352}
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 32)
!353 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !354)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_timer", file: !109, line: 1439, size: 448, elements: !355)
!355 = !{!356, !357, !358, !363, !364, !369, !370}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !354, file: !109, line: 1445, baseType: !77, size: 192)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !354, file: !109, line: 1448, baseType: !47, size: 64, offset: 192)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_fn", scope: !354, file: !109, line: 1451, baseType: !359, size: 32, offset: 256)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 32)
!360 = !DISubroutineType(types: !361)
!361 = !{null, !362}
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 32)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "stop_fn", scope: !354, file: !109, line: 1454, baseType: !359, size: 32, offset: 288)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !354, file: !109, line: 1457, baseType: !365, size: 64, offset: 320)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_timeout_t", file: !222, line: 67, baseType: !366)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !222, line: 65, size: 64, elements: !367)
!367 = !{!368}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "ticks", scope: !366, file: !222, line: 66, baseType: !221, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !354, file: !109, line: 1460, baseType: !72, size: 32, offset: 384)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !354, file: !109, line: 1463, baseType: !75, size: 32, offset: 416)
!371 = !{!372}
!372 = !DILocalVariable(name: "timer", arg: 1, scope: !349, file: !109, line: 1635, type: !352)
!373 = !DILocation(line: 1635, column: 34, scope: !349)
!374 = !DILocation(line: 1637, column: 28, scope: !349)
!375 = !DILocation(line: 1637, column: 35, scope: !349)
!376 = !DILocation(line: 1637, column: 9, scope: !349)
!377 = !DILocation(line: 1637, column: 2, scope: !349)
!378 = distinct !DISubprogram(name: "z_impl_k_timer_remaining_ticks", scope: !109, file: !109, line: 1649, type: !350, scopeLine: 1651, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !135, retainedNodes: !379)
!379 = !{!380}
!380 = !DILocalVariable(name: "timer", arg: 1, scope: !378, file: !109, line: 1650, type: !352)
!381 = !DILocation(line: 1650, column: 34, scope: !378)
!382 = !DILocation(line: 1652, column: 30, scope: !378)
!383 = !DILocation(line: 1652, column: 37, scope: !378)
!384 = !DILocation(line: 1652, column: 9, scope: !378)
!385 = !DILocation(line: 1652, column: 2, scope: !378)
!386 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_set", scope: !109, file: !109, line: 1689, type: !387, scopeLine: 1691, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !135, retainedNodes: !389)
!387 = !DISubroutineType(types: !388)
!388 = !{null, !362, !75}
!389 = !{!390, !391}
!390 = !DILocalVariable(name: "timer", arg: 1, scope: !386, file: !109, line: 1689, type: !362)
!391 = !DILocalVariable(name: "user_data", arg: 2, scope: !386, file: !109, line: 1690, type: !75)
!392 = !DILocation(line: 1689, column: 65, scope: !386)
!393 = !DILocation(line: 1690, column: 19, scope: !386)
!394 = !DILocation(line: 1692, column: 21, scope: !386)
!395 = !DILocation(line: 1692, column: 2, scope: !386)
!396 = !DILocation(line: 1692, column: 9, scope: !386)
!397 = !DILocation(line: 1692, column: 19, scope: !386)
!398 = !DILocation(line: 1693, column: 1, scope: !386)
!399 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_get", scope: !109, file: !109, line: 1704, type: !400, scopeLine: 1705, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !135, retainedNodes: !402)
!400 = !DISubroutineType(types: !401)
!401 = !{!75, !352}
!402 = !{!403}
!403 = !DILocalVariable(name: "timer", arg: 1, scope: !399, file: !109, line: 1704, type: !352)
!404 = !DILocation(line: 1704, column: 72, scope: !399)
!405 = !DILocation(line: 1706, column: 9, scope: !399)
!406 = !DILocation(line: 1706, column: 16, scope: !399)
!407 = !DILocation(line: 1706, column: 2, scope: !399)
!408 = distinct !DISubprogram(name: "z_impl_k_queue_is_empty", scope: !109, file: !109, line: 2071, type: !409, scopeLine: 2072, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !135, retainedNodes: !429)
!409 = !DISubroutineType(types: !410)
!410 = !{!105, !411}
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 32)
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_queue", file: !109, line: 1830, size: 128, elements: !413)
!413 = !{!414, !427, !428}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "data_q", scope: !412, file: !109, line: 1831, baseType: !415, size: 64)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sflist_t", file: !416, line: 60, baseType: !417)
!416 = !DIFile(filename: "include/zephyr/sys/sflist.h", directory: "/home/sri/zephyrproject/zephyr")
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sflist", file: !416, line: 53, size: 64, elements: !418)
!418 = !{!419, !426}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !417, file: !416, line: 54, baseType: !420, size: 32)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 32)
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sfnode_t", file: !416, line: 50, baseType: !422)
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sfnode", file: !416, line: 44, size: 32, elements: !423)
!423 = !{!424}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "next_and_flags", scope: !422, file: !416, line: 45, baseType: !425, size: 32)
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "unative_t", file: !416, line: 40, baseType: !72)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !417, file: !416, line: 55, baseType: !420, size: 32, offset: 32)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !412, file: !109, line: 1832, baseType: !124, offset: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !412, file: !109, line: 1833, baseType: !47, size: 64, offset: 64)
!429 = !{!430}
!430 = !DILocalVariable(name: "queue", arg: 1, scope: !408, file: !109, line: 2071, type: !411)
!431 = !DILocation(line: 2071, column: 59, scope: !408)
!432 = !DILocation(line: 2073, column: 35, scope: !408)
!433 = !DILocation(line: 2073, column: 42, scope: !408)
!434 = !DILocation(line: 2073, column: 14, scope: !408)
!435 = !DILocation(line: 2073, column: 9, scope: !408)
!436 = !DILocation(line: 2073, column: 2, scope: !408)
!437 = distinct !DISubprogram(name: "z_impl_k_sem_count_get", scope: !109, file: !109, line: 3209, type: !438, scopeLine: 3210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !135, retainedNodes: !446)
!438 = !DISubroutineType(types: !439)
!439 = !{!73, !440}
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 32)
!441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sem", file: !109, line: 3092, size: 128, elements: !442)
!442 = !{!443, !444, !445}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !441, file: !109, line: 3093, baseType: !47, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !441, file: !109, line: 3094, baseType: !73, size: 32, offset: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !441, file: !109, line: 3095, baseType: !73, size: 32, offset: 96)
!446 = !{!447}
!447 = !DILocalVariable(name: "sem", arg: 1, scope: !437, file: !109, line: 3209, type: !440)
!448 = !DILocation(line: 3209, column: 65, scope: !437)
!449 = !DILocation(line: 3211, column: 9, scope: !437)
!450 = !DILocation(line: 3211, column: 14, scope: !437)
!451 = !DILocation(line: 3211, column: 2, scope: !437)
!452 = distinct !DISubprogram(name: "z_impl_k_msgq_num_free_get", scope: !109, file: !109, line: 4649, type: !453, scopeLine: 4650, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !135, retainedNodes: !468)
!453 = !DISubroutineType(types: !454)
!454 = !{!72, !455}
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 32)
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_msgq", file: !109, line: 4390, size: 320, elements: !457)
!457 = !{!458, !459, !460, !461, !462, !463, !464, !465, !466, !467}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !456, file: !109, line: 4392, baseType: !47, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !456, file: !109, line: 4394, baseType: !124, offset: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "msg_size", scope: !456, file: !109, line: 4396, baseType: !120, size: 32, offset: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !456, file: !109, line: 4398, baseType: !72, size: 32, offset: 96)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_start", scope: !456, file: !109, line: 4400, baseType: !132, size: 32, offset: 128)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_end", scope: !456, file: !109, line: 4402, baseType: !132, size: 32, offset: 160)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "read_ptr", scope: !456, file: !109, line: 4404, baseType: !132, size: 32, offset: 192)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "write_ptr", scope: !456, file: !109, line: 4406, baseType: !132, size: 32, offset: 224)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "used_msgs", scope: !456, file: !109, line: 4408, baseType: !72, size: 32, offset: 256)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !456, file: !109, line: 4413, baseType: !54, size: 8, offset: 288)
!468 = !{!469}
!469 = !DILocalVariable(name: "msgq", arg: 1, scope: !452, file: !109, line: 4649, type: !455)
!470 = !DILocation(line: 4649, column: 66, scope: !452)
!471 = !DILocation(line: 4651, column: 9, scope: !452)
!472 = !DILocation(line: 4651, column: 15, scope: !452)
!473 = !DILocation(line: 4651, column: 26, scope: !452)
!474 = !DILocation(line: 4651, column: 32, scope: !452)
!475 = !DILocation(line: 4651, column: 24, scope: !452)
!476 = !DILocation(line: 4651, column: 2, scope: !452)
!477 = distinct !DISubprogram(name: "z_impl_k_msgq_num_used_get", scope: !109, file: !109, line: 4665, type: !453, scopeLine: 4666, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !135, retainedNodes: !478)
!478 = !{!479}
!479 = !DILocalVariable(name: "msgq", arg: 1, scope: !477, file: !109, line: 4665, type: !455)
!480 = !DILocation(line: 4665, column: 66, scope: !477)
!481 = !DILocation(line: 4667, column: 9, scope: !477)
!482 = !DILocation(line: 4667, column: 15, scope: !477)
!483 = !DILocation(line: 4667, column: 2, scope: !477)
!484 = distinct !DISubprogram(name: "k_thread_foreach", scope: !3, file: !3, line: 82, type: !485, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !135, retainedNodes: !491)
!485 = !DISubroutineType(types: !486)
!486 = !{null, !487, !75}
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_thread_user_cb_t", file: !109, line: 103, baseType: !488)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 32)
!489 = !DISubroutineType(types: !490)
!490 = !{null, !330, !75}
!491 = !{!492, !493}
!492 = !DILocalVariable(name: "user_cb", arg: 1, scope: !484, file: !3, line: 82, type: !487)
!493 = !DILocalVariable(name: "user_data", arg: 2, scope: !484, file: !3, line: 82, type: !75)
!494 = !DILocation(line: 82, column: 42, scope: !484)
!495 = !DILocation(line: 82, column: 57, scope: !484)
!496 = !DILocation(line: 108, column: 9, scope: !484)
!497 = !DILocation(line: 109, column: 9, scope: !484)
!498 = !DILocation(line: 111, column: 1, scope: !484)
!499 = distinct !DISubprogram(name: "k_thread_foreach_unlocked", scope: !3, file: !3, line: 113, type: !485, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !135, retainedNodes: !500)
!500 = !{!501, !502}
!501 = !DILocalVariable(name: "user_cb", arg: 1, scope: !499, file: !3, line: 113, type: !487)
!502 = !DILocalVariable(name: "user_data", arg: 2, scope: !499, file: !3, line: 113, type: !75)
!503 = !DILocation(line: 113, column: 51, scope: !499)
!504 = !DILocation(line: 113, column: 66, scope: !499)
!505 = !DILocation(line: 135, column: 9, scope: !499)
!506 = !DILocation(line: 136, column: 9, scope: !499)
!507 = !DILocation(line: 138, column: 1, scope: !499)
!508 = distinct !DISubprogram(name: "k_is_in_isr", scope: !3, file: !3, line: 140, type: !509, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !135, retainedNodes: !126)
!509 = !DISubroutineType(types: !510)
!510 = !{!511}
!511 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!512 = !DILocation(line: 820, column: 3, scope: !513, inlinedAt: !519)
!513 = distinct !DISubprogram(name: "__get_IPSR", scope: !514, file: !514, line: 818, type: !515, scopeLine: 819, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !135, retainedNodes: !517)
!514 = !DIFile(filename: "modules/hal/cmsis/CMSIS/Core/Include/cmsis_armclang.h", directory: "/home/sri/zephyrproject")
!515 = !DISubroutineType(types: !516)
!516 = !{!72}
!517 = !{!518}
!518 = !DILocalVariable(name: "result", scope: !513, file: !514, line: 820, type: !72)
!519 = distinct !DILocation(line: 48, column: 10, scope: !520, inlinedAt: !522)
!520 = distinct !DISubprogram(name: "arch_is_in_isr", scope: !521, file: !521, line: 46, type: !509, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !135, retainedNodes: !126)
!521 = !DIFile(filename: "arch/arm/include/cortex_m/exc.h", directory: "/home/sri/zephyrproject/zephyr")
!522 = distinct !DILocation(line: 142, column: 9, scope: !508)
!523 = !DILocation(line: 820, column: 12, scope: !513, inlinedAt: !519)
!524 = !DILocation(line: 822, column: 3, scope: !513, inlinedAt: !519)
!525 = !{i64 172092}
!526 = !DILocation(line: 823, column: 10, scope: !513, inlinedAt: !519)
!527 = !DILocation(line: 824, column: 1, scope: !513, inlinedAt: !519)
!528 = !DILocation(line: 48, column: 9, scope: !520, inlinedAt: !522)
!529 = !DILocation(line: 142, column: 2, scope: !508)
!530 = distinct !DISubprogram(name: "z_thread_essential_set", scope: !3, file: !3, line: 149, type: !531, scopeLine: 150, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !135, retainedNodes: !126)
!531 = !DISubroutineType(types: !532)
!532 = !{null}
!533 = !DILocation(line: 151, column: 18, scope: !530)
!534 = !DILocation(line: 151, column: 27, scope: !530)
!535 = !DILocation(line: 151, column: 32, scope: !530)
!536 = !DILocation(line: 151, column: 45, scope: !530)
!537 = !DILocation(line: 152, column: 1, scope: !530)
!538 = distinct !DISubprogram(name: "z_thread_essential_clear", scope: !3, file: !3, line: 159, type: !531, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !135, retainedNodes: !126)
!539 = !DILocation(line: 161, column: 18, scope: !538)
!540 = !DILocation(line: 161, column: 27, scope: !538)
!541 = !DILocation(line: 161, column: 32, scope: !538)
!542 = !DILocation(line: 161, column: 45, scope: !538)
!543 = !DILocation(line: 162, column: 1, scope: !538)
!544 = distinct !DISubprogram(name: "z_is_thread_essential", scope: !3, file: !3, line: 169, type: !509, scopeLine: 170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !135, retainedNodes: !126)
!545 = !DILocation(line: 171, column: 26, scope: !544)
!546 = !DILocation(line: 171, column: 35, scope: !544)
!547 = !DILocation(line: 171, column: 40, scope: !544)
!548 = !DILocation(line: 171, column: 10, scope: !544)
!549 = !DILocation(line: 171, column: 53, scope: !544)
!550 = !DILocation(line: 171, column: 71, scope: !544)
!551 = !DILocation(line: 171, column: 2, scope: !544)
!552 = distinct !DISubprogram(name: "z_impl_k_thread_name_set", scope: !3, file: !3, line: 230, type: !553, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !135, retainedNodes: !555)
!553 = !DISubroutineType(types: !554)
!554 = !{!105, !11, !6}
!555 = !{!556, !557}
!556 = !DILocalVariable(name: "thread", arg: 1, scope: !552, file: !3, line: 230, type: !11)
!557 = !DILocalVariable(name: "value", arg: 2, scope: !552, file: !3, line: 230, type: !6)
!558 = !DILocation(line: 230, column: 47, scope: !552)
!559 = !DILocation(line: 230, column: 67, scope: !552)
!560 = !DILocation(line: 244, column: 9, scope: !552)
!561 = !DILocation(line: 245, column: 9, scope: !552)
!562 = !DILocation(line: 247, column: 2, scope: !552)
!563 = !DILocation(line: 247, column: 7, scope: !564)
!564 = distinct !DILexicalBlock(scope: !552, file: !3, line: 247, column: 5)
!565 = !DILocation(line: 249, column: 2, scope: !552)
!566 = distinct !DISubprogram(name: "k_thread_name_get", scope: !3, file: !3, line: 281, type: !567, scopeLine: 282, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !135, retainedNodes: !569)
!567 = !DISubroutineType(types: !568)
!568 = !{!6, !11}
!569 = !{!570}
!570 = !DILocalVariable(name: "thread", arg: 1, scope: !566, file: !3, line: 281, type: !11)
!571 = !DILocation(line: 281, column: 48, scope: !566)
!572 = !DILocation(line: 286, column: 9, scope: !566)
!573 = !DILocation(line: 287, column: 2, scope: !566)
!574 = distinct !DISubprogram(name: "z_impl_k_thread_name_copy", scope: !3, file: !3, line: 291, type: !575, scopeLine: 292, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !135, retainedNodes: !577)
!575 = !DISubroutineType(types: !576)
!576 = !{!105, !9, !132, !133}
!577 = !{!578, !579, !580}
!578 = !DILocalVariable(name: "thread", arg: 1, scope: !574, file: !3, line: 291, type: !9)
!579 = !DILocalVariable(name: "buf", arg: 2, scope: !574, file: !3, line: 291, type: !132)
!580 = !DILocalVariable(name: "size", arg: 3, scope: !574, file: !3, line: 291, type: !133)
!581 = !DILocation(line: 291, column: 39, scope: !574)
!582 = !DILocation(line: 291, column: 53, scope: !574)
!583 = !DILocation(line: 291, column: 65, scope: !574)
!584 = !DILocation(line: 297, column: 9, scope: !574)
!585 = !DILocation(line: 298, column: 9, scope: !574)
!586 = !DILocation(line: 299, column: 9, scope: !574)
!587 = !DILocation(line: 300, column: 2, scope: !574)
!588 = !DILocation(line: 314, column: 40, scope: !2)
!589 = !DILocation(line: 314, column: 57, scope: !2)
!590 = !DILocation(line: 314, column: 69, scope: !2)
!591 = !DILocation(line: 316, column: 2, scope: !2)
!592 = !DILocation(line: 316, column: 9, scope: !2)
!593 = !DILocation(line: 317, column: 2, scope: !2)
!594 = !DILocation(line: 317, column: 10, scope: !2)
!595 = !DILocation(line: 318, column: 2, scope: !2)
!596 = !DILocation(line: 318, column: 10, scope: !2)
!597 = !DILocation(line: 318, column: 25, scope: !2)
!598 = !DILocation(line: 318, column: 36, scope: !2)
!599 = !DILocation(line: 318, column: 41, scope: !2)
!600 = !DILocation(line: 324, column: 7, scope: !601)
!601 = distinct !DILexicalBlock(scope: !2, file: !3, line: 324, column: 6)
!602 = !DILocation(line: 324, column: 11, scope: !601)
!603 = !DILocation(line: 324, column: 17, scope: !601)
!604 = !DILocation(line: 324, column: 21, scope: !601)
!605 = !DILocation(line: 324, column: 30, scope: !601)
!606 = !DILocation(line: 324, column: 6, scope: !2)
!607 = !DILocation(line: 325, column: 3, scope: !608)
!608 = distinct !DILexicalBlock(scope: !601, file: !3, line: 324, column: 37)
!609 = !DILocation(line: 328, column: 10, scope: !2)
!610 = !DILocation(line: 336, column: 7, scope: !278)
!611 = !DILocation(line: 336, column: 15, scope: !278)
!612 = !DILocation(line: 336, column: 26, scope: !613)
!613 = distinct !DILexicalBlock(scope: !278, file: !3, line: 336, column: 2)
!614 = !DILocation(line: 336, column: 39, scope: !613)
!615 = !DILocation(line: 336, column: 2, scope: !278)
!616 = !DILocation(line: 336, column: 2, scope: !613)
!617 = !DILocation(line: 337, column: 18, scope: !618)
!618 = distinct !DILexicalBlock(scope: !613, file: !3, line: 336, column: 54)
!619 = !DILocation(line: 337, column: 17, scope: !618)
!620 = !DILocation(line: 337, column: 14, scope: !618)
!621 = !DILocation(line: 337, column: 9, scope: !618)
!622 = !DILocation(line: 337, column: 7, scope: !618)
!623 = !DILocation(line: 338, column: 8, scope: !624)
!624 = distinct !DILexicalBlock(scope: !618, file: !3, line: 338, column: 7)
!625 = !DILocation(line: 338, column: 23, scope: !624)
!626 = !DILocation(line: 338, column: 21, scope: !624)
!627 = !DILocation(line: 338, column: 28, scope: !624)
!628 = !DILocation(line: 338, column: 7, scope: !618)
!629 = !DILocation(line: 339, column: 4, scope: !630)
!630 = distinct !DILexicalBlock(scope: !624, file: !3, line: 338, column: 34)
!631 = !DILocation(line: 342, column: 21, scope: !618)
!632 = !DILocation(line: 342, column: 27, scope: !618)
!633 = !DILocation(line: 342, column: 25, scope: !618)
!634 = !DILocation(line: 342, column: 32, scope: !618)
!635 = !DILocation(line: 342, column: 43, scope: !618)
!636 = !DILocation(line: 342, column: 41, scope: !618)
!637 = !DILocation(line: 343, column: 18, scope: !618)
!638 = !DILocation(line: 343, column: 7, scope: !618)
!639 = !DILocation(line: 343, column: 36, scope: !618)
!640 = !DILocation(line: 343, column: 26, scope: !618)
!641 = !DILocation(line: 342, column: 10, scope: !618)
!642 = !DILocation(line: 342, column: 7, scope: !618)
!643 = !DILocation(line: 345, column: 20, scope: !618)
!644 = !DILocation(line: 345, column: 19, scope: !618)
!645 = !DILocation(line: 345, column: 16, scope: !618)
!646 = !DILocation(line: 347, column: 7, scope: !647)
!647 = distinct !DILexicalBlock(scope: !618, file: !3, line: 347, column: 7)
!648 = !DILocation(line: 347, column: 20, scope: !647)
!649 = !DILocation(line: 347, column: 7, scope: !618)
!650 = !DILocation(line: 348, column: 22, scope: !651)
!651 = distinct !DILexicalBlock(scope: !647, file: !3, line: 347, column: 26)
!652 = !DILocation(line: 348, column: 28, scope: !651)
!653 = !DILocation(line: 348, column: 26, scope: !651)
!654 = !DILocation(line: 348, column: 33, scope: !651)
!655 = !DILocation(line: 348, column: 44, scope: !651)
!656 = !DILocation(line: 348, column: 42, scope: !651)
!657 = !DILocation(line: 348, column: 11, scope: !651)
!658 = !DILocation(line: 348, column: 8, scope: !651)
!659 = !DILocation(line: 349, column: 3, scope: !651)
!660 = !DILocation(line: 350, column: 2, scope: !618)
!661 = !DILocation(line: 336, column: 50, scope: !613)
!662 = distinct !{!662, !615, !663}
!663 = !DILocation(line: 350, column: 2, scope: !278)
!664 = !DILocation(line: 352, column: 2, scope: !2)
!665 = !DILocation(line: 352, column: 6, scope: !2)
!666 = !DILocation(line: 352, column: 11, scope: !2)
!667 = !DILocation(line: 354, column: 23, scope: !2)
!668 = !DILocation(line: 354, column: 2, scope: !2)
!669 = !DILocation(line: 355, column: 1, scope: !2)
!670 = distinct !DISubprogram(name: "copy_bytes", scope: !3, file: !3, line: 304, type: !671, scopeLine: 305, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !135, retainedNodes: !673)
!671 = !DISubroutineType(types: !672)
!672 = !{!133, !132, !133, !6, !133}
!673 = !{!674, !675, !676, !677, !678}
!674 = !DILocalVariable(name: "dest", arg: 1, scope: !670, file: !3, line: 304, type: !132)
!675 = !DILocalVariable(name: "dest_size", arg: 2, scope: !670, file: !3, line: 304, type: !133)
!676 = !DILocalVariable(name: "src", arg: 3, scope: !670, file: !3, line: 304, type: !6)
!677 = !DILocalVariable(name: "src_size", arg: 4, scope: !670, file: !3, line: 304, type: !133)
!678 = !DILocalVariable(name: "bytes_to_copy", scope: !670, file: !3, line: 306, type: !133)
!679 = !DILocation(line: 304, column: 32, scope: !670)
!680 = !DILocation(line: 304, column: 45, scope: !670)
!681 = !DILocation(line: 304, column: 68, scope: !670)
!682 = !DILocation(line: 304, column: 80, scope: !670)
!683 = !DILocation(line: 306, column: 2, scope: !670)
!684 = !DILocation(line: 306, column: 9, scope: !670)
!685 = !DILocation(line: 308, column: 21, scope: !670)
!686 = !DILocation(line: 308, column: 35, scope: !670)
!687 = !DILocation(line: 308, column: 32, scope: !670)
!688 = !DILocation(line: 308, column: 19, scope: !670)
!689 = !DILocation(line: 308, column: 49, scope: !670)
!690 = !DILocation(line: 308, column: 63, scope: !670)
!691 = !DILocation(line: 308, column: 16, scope: !670)
!692 = !DILocation(line: 309, column: 9, scope: !670)
!693 = !DILocation(line: 309, column: 15, scope: !670)
!694 = !DILocation(line: 309, column: 20, scope: !670)
!695 = !DILocation(line: 309, column: 2, scope: !670)
!696 = !DILocation(line: 311, column: 9, scope: !670)
!697 = !DILocation(line: 312, column: 1, scope: !670)
!698 = !DILocation(line: 311, column: 2, scope: !670)
!699 = distinct !DISubprogram(name: "z_impl_k_thread_start", scope: !3, file: !3, line: 426, type: !700, scopeLine: 427, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !135, retainedNodes: !702)
!700 = !DISubroutineType(types: !701)
!701 = !{null, !11}
!702 = !{!703}
!703 = !DILocalVariable(name: "thread", arg: 1, scope: !699, file: !3, line: 426, type: !11)
!704 = !DILocation(line: 426, column: 45, scope: !699)
!705 = !DILocation(line: 428, column: 2, scope: !699)
!706 = !DILocation(line: 428, column: 7, scope: !707)
!707 = distinct !DILexicalBlock(scope: !699, file: !3, line: 428, column: 5)
!708 = !DILocation(line: 430, column: 16, scope: !699)
!709 = !DILocation(line: 430, column: 2, scope: !699)
!710 = !DILocation(line: 431, column: 1, scope: !699)
!711 = !DISubprogram(name: "z_sched_start", scope: !712, file: !712, line: 64, type: !700, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !126)
!712 = !DIFile(filename: "kernel/include/ksched.h", directory: "/home/sri/zephyrproject/zephyr")
!713 = distinct !DISubprogram(name: "z_setup_new_thread", scope: !3, file: !3, line: 571, type: !714, scopeLine: 576, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !135, retainedNodes: !727)
!714 = !DISubroutineType(types: !715)
!715 = !{!132, !11, !716, !133, !723, !75, !75, !75, !105, !72, !6}
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 32)
!717 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_thread_stack_t", file: !718, line: 44, baseType: !719)
!718 = !DIFile(filename: "include/zephyr/sys/arch_interface.h", directory: "/home/sri/zephyrproject/zephyr")
!719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "z_thread_stack_element", file: !720, line: 47, size: 8, elements: !721)
!720 = !DIFile(filename: "include/zephyr/kernel/thread_stack.h", directory: "/home/sri/zephyrproject/zephyr")
!721 = !{!722}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !719, file: !720, line: 48, baseType: !8, size: 8)
!723 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_thread_entry_t", file: !718, line: 46, baseType: !724)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 32)
!725 = !DISubroutineType(types: !726)
!726 = !{null, !75, !75, !75}
!727 = !{!728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738}
!728 = !DILocalVariable(name: "new_thread", arg: 1, scope: !713, file: !3, line: 571, type: !11)
!729 = !DILocalVariable(name: "stack", arg: 2, scope: !713, file: !3, line: 572, type: !716)
!730 = !DILocalVariable(name: "stack_size", arg: 3, scope: !713, file: !3, line: 572, type: !133)
!731 = !DILocalVariable(name: "entry", arg: 4, scope: !713, file: !3, line: 573, type: !723)
!732 = !DILocalVariable(name: "p1", arg: 5, scope: !713, file: !3, line: 574, type: !75)
!733 = !DILocalVariable(name: "p2", arg: 6, scope: !713, file: !3, line: 574, type: !75)
!734 = !DILocalVariable(name: "p3", arg: 7, scope: !713, file: !3, line: 574, type: !75)
!735 = !DILocalVariable(name: "prio", arg: 8, scope: !713, file: !3, line: 575, type: !105)
!736 = !DILocalVariable(name: "options", arg: 9, scope: !713, file: !3, line: 575, type: !72)
!737 = !DILocalVariable(name: "name", arg: 10, scope: !713, file: !3, line: 575, type: !6)
!738 = !DILocalVariable(name: "stack_ptr", scope: !713, file: !3, line: 577, type: !132)
!739 = !DILocation(line: 571, column: 43, scope: !713)
!740 = !DILocation(line: 572, column: 23, scope: !713)
!741 = !DILocation(line: 572, column: 37, scope: !713)
!742 = !DILocation(line: 573, column: 22, scope: !713)
!743 = !DILocation(line: 574, column: 11, scope: !713)
!744 = !DILocation(line: 574, column: 21, scope: !713)
!745 = !DILocation(line: 574, column: 31, scope: !713)
!746 = !DILocation(line: 575, column: 9, scope: !713)
!747 = !DILocation(line: 575, column: 24, scope: !713)
!748 = !DILocation(line: 575, column: 45, scope: !713)
!749 = !DILocation(line: 577, column: 2, scope: !713)
!750 = !DILocation(line: 577, column: 8, scope: !713)
!751 = !DILocation(line: 579, column: 2, scope: !713)
!752 = !DILocation(line: 579, column: 12, scope: !753)
!753 = distinct !DILexicalBlock(scope: !713, file: !3, line: 579, column: 5)
!754 = !DILocation(line: 602, column: 16, scope: !713)
!755 = !DILocation(line: 602, column: 28, scope: !713)
!756 = !DILocation(line: 602, column: 2, scope: !713)
!757 = !DILocation(line: 605, column: 22, scope: !713)
!758 = !DILocation(line: 605, column: 34, scope: !713)
!759 = !DILocation(line: 605, column: 40, scope: !713)
!760 = !DILocation(line: 605, column: 62, scope: !713)
!761 = !DILocation(line: 605, column: 2, scope: !713)
!762 = !DILocation(line: 606, column: 33, scope: !713)
!763 = !DILocation(line: 606, column: 45, scope: !713)
!764 = !DILocation(line: 606, column: 52, scope: !713)
!765 = !DILocation(line: 606, column: 14, scope: !713)
!766 = !DILocation(line: 606, column: 12, scope: !713)
!767 = !DILocation(line: 616, column: 18, scope: !713)
!768 = !DILocation(line: 616, column: 30, scope: !713)
!769 = !DILocation(line: 616, column: 37, scope: !713)
!770 = !DILocation(line: 616, column: 48, scope: !713)
!771 = !DILocation(line: 616, column: 55, scope: !713)
!772 = !DILocation(line: 616, column: 59, scope: !713)
!773 = !DILocation(line: 616, column: 63, scope: !713)
!774 = !DILocation(line: 616, column: 2, scope: !713)
!775 = !DILocation(line: 619, column: 2, scope: !713)
!776 = !DILocation(line: 619, column: 14, scope: !713)
!777 = !DILocation(line: 619, column: 24, scope: !713)
!778 = !DILocation(line: 667, column: 23, scope: !779)
!779 = distinct !DILexicalBlock(scope: !713, file: !3, line: 667, column: 6)
!780 = !DILocation(line: 667, column: 7, scope: !779)
!781 = !DILocation(line: 667, column: 6, scope: !713)
!782 = !DILocation(line: 668, column: 3, scope: !783)
!783 = distinct !DILexicalBlock(scope: !779, file: !3, line: 667, column: 32)
!784 = !DILocation(line: 668, column: 15, scope: !783)
!785 = !DILocation(line: 668, column: 29, scope: !783)
!786 = !DILocation(line: 669, column: 10, scope: !783)
!787 = !DILocation(line: 669, column: 3, scope: !783)
!788 = !DILocation(line: 682, column: 46, scope: !713)
!789 = !DILocation(line: 682, column: 55, scope: !713)
!790 = !DILocation(line: 682, column: 2, scope: !713)
!791 = !DILocation(line: 682, column: 14, scope: !713)
!792 = !DILocation(line: 682, column: 28, scope: !713)
!793 = !DILocation(line: 690, column: 2, scope: !713)
!794 = !DILocation(line: 690, column: 7, scope: !795)
!795 = distinct !DILexicalBlock(scope: !713, file: !3, line: 690, column: 5)
!796 = !DILocation(line: 692, column: 9, scope: !713)
!797 = !DILocation(line: 692, column: 2, scope: !713)
!798 = !DILocation(line: 693, column: 1, scope: !713)
!799 = distinct !DISubprogram(name: "z_waitq_init", scope: !800, file: !800, line: 47, type: !801, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !135, retainedNodes: !803)
!800 = !DIFile(filename: "kernel/include/wait_q.h", directory: "/home/sri/zephyrproject/zephyr")
!801 = !DISubroutineType(types: !802)
!802 = !{null, !46}
!803 = !{!804}
!804 = !DILocalVariable(name: "w", arg: 1, scope: !799, file: !800, line: 47, type: !46)
!805 = !DILocation(line: 47, column: 44, scope: !799)
!806 = !DILocation(line: 49, column: 18, scope: !799)
!807 = !DILocation(line: 49, column: 21, scope: !799)
!808 = !DILocation(line: 49, column: 2, scope: !799)
!809 = !DILocation(line: 50, column: 1, scope: !799)
!810 = distinct !DISubprogram(name: "z_init_thread_base", scope: !3, file: !3, line: 846, type: !811, scopeLine: 848, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !135, retainedNodes: !814)
!811 = !DISubroutineType(types: !812)
!812 = !{null, !813, !105, !72, !73}
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 32)
!814 = !{!815, !816, !817, !818}
!815 = !DILocalVariable(name: "thread_base", arg: 1, scope: !810, file: !3, line: 846, type: !813)
!816 = !DILocalVariable(name: "priority", arg: 2, scope: !810, file: !3, line: 846, type: !105)
!817 = !DILocalVariable(name: "initial_state", arg: 3, scope: !810, file: !3, line: 847, type: !72)
!818 = !DILocalVariable(name: "options", arg: 4, scope: !810, file: !3, line: 847, type: !73)
!819 = !DILocation(line: 846, column: 46, scope: !810)
!820 = !DILocation(line: 846, column: 63, scope: !810)
!821 = !DILocation(line: 847, column: 19, scope: !810)
!822 = !DILocation(line: 847, column: 47, scope: !810)
!823 = !DILocation(line: 850, column: 2, scope: !810)
!824 = !DILocation(line: 850, column: 15, scope: !810)
!825 = !DILocation(line: 850, column: 25, scope: !810)
!826 = !DILocation(line: 851, column: 39, scope: !810)
!827 = !DILocation(line: 851, column: 30, scope: !810)
!828 = !DILocation(line: 851, column: 2, scope: !810)
!829 = !DILocation(line: 851, column: 15, scope: !810)
!830 = !DILocation(line: 851, column: 28, scope: !810)
!831 = !DILocation(line: 852, column: 39, scope: !810)
!832 = !DILocation(line: 852, column: 30, scope: !810)
!833 = !DILocation(line: 852, column: 2, scope: !810)
!834 = !DILocation(line: 852, column: 15, scope: !810)
!835 = !DILocation(line: 852, column: 28, scope: !810)
!836 = !DILocation(line: 854, column: 22, scope: !810)
!837 = !DILocation(line: 854, column: 2, scope: !810)
!838 = !DILocation(line: 854, column: 15, scope: !810)
!839 = !DILocation(line: 854, column: 20, scope: !810)
!840 = !DILocation(line: 856, column: 2, scope: !810)
!841 = !DILocation(line: 856, column: 15, scope: !810)
!842 = !DILocation(line: 856, column: 28, scope: !810)
!843 = !DILocation(line: 869, column: 24, scope: !810)
!844 = !DILocation(line: 869, column: 2, scope: !810)
!845 = !DILocation(line: 870, column: 1, scope: !810)
!846 = distinct !DISubprogram(name: "setup_thread_stack", scope: !3, file: !3, line: 492, type: !847, scopeLine: 494, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !135, retainedNodes: !849)
!847 = !DISubroutineType(types: !848)
!848 = !{!132, !11, !716, !133}
!849 = !{!850, !851, !852, !853, !854, !855, !856, !857}
!850 = !DILocalVariable(name: "new_thread", arg: 1, scope: !846, file: !3, line: 492, type: !11)
!851 = !DILocalVariable(name: "stack", arg: 2, scope: !846, file: !3, line: 493, type: !716)
!852 = !DILocalVariable(name: "stack_size", arg: 3, scope: !846, file: !3, line: 493, type: !133)
!853 = !DILocalVariable(name: "stack_obj_size", scope: !846, file: !3, line: 495, type: !133)
!854 = !DILocalVariable(name: "stack_buf_size", scope: !846, file: !3, line: 495, type: !133)
!855 = !DILocalVariable(name: "stack_ptr", scope: !846, file: !3, line: 496, type: !132)
!856 = !DILocalVariable(name: "stack_buf_start", scope: !846, file: !3, line: 496, type: !132)
!857 = !DILocalVariable(name: "delta", scope: !846, file: !3, line: 497, type: !133)
!858 = !DILocation(line: 492, column: 50, scope: !846)
!859 = !DILocation(line: 493, column: 23, scope: !846)
!860 = !DILocation(line: 493, column: 37, scope: !846)
!861 = !DILocation(line: 495, column: 2, scope: !846)
!862 = !DILocation(line: 495, column: 9, scope: !846)
!863 = !DILocation(line: 495, column: 25, scope: !846)
!864 = !DILocation(line: 496, column: 2, scope: !846)
!865 = !DILocation(line: 496, column: 8, scope: !846)
!866 = !DILocation(line: 496, column: 20, scope: !846)
!867 = !DILocation(line: 497, column: 2, scope: !846)
!868 = !DILocation(line: 497, column: 9, scope: !846)
!869 = !DILocation(line: 508, column: 40, scope: !870)
!870 = distinct !DILexicalBlock(scope: !846, file: !3, line: 506, column: 2)
!871 = !DILocation(line: 508, column: 52, scope: !870)
!872 = !DILocation(line: 508, column: 80, scope: !870)
!873 = !DILocation(line: 508, column: 102, scope: !870)
!874 = !DILocation(line: 508, column: 124, scope: !870)
!875 = !DILocation(line: 508, column: 18, scope: !870)
!876 = !DILocation(line: 509, column: 43, scope: !870)
!877 = !DILocation(line: 509, column: 21, scope: !870)
!878 = !DILocation(line: 509, column: 19, scope: !870)
!879 = !DILocation(line: 510, column: 20, scope: !870)
!880 = !DILocation(line: 510, column: 35, scope: !870)
!881 = !DILocation(line: 510, column: 18, scope: !870)
!882 = !DILocation(line: 516, column: 22, scope: !846)
!883 = !DILocation(line: 516, column: 30, scope: !846)
!884 = !DILocation(line: 516, column: 28, scope: !846)
!885 = !DILocation(line: 516, column: 12, scope: !846)
!886 = !DILocation(line: 518, column: 2, scope: !846)
!887 = !DILocation(line: 518, column: 88, scope: !888)
!888 = distinct !DILexicalBlock(scope: !889, file: !3, line: 518, column: 86)
!889 = distinct !DILexicalBlock(scope: !890, file: !3, line: 518, column: 11)
!890 = distinct !DILexicalBlock(scope: !846, file: !3, line: 518, column: 5)
!891 = !DILocation(line: 518, column: 537, scope: !890)
!892 = !DILocation(line: 548, column: 29, scope: !846)
!893 = !DILocation(line: 548, column: 36, scope: !846)
!894 = !DILocation(line: 548, column: 64, scope: !846)
!895 = !DILocation(line: 548, column: 86, scope: !846)
!896 = !DILocation(line: 548, column: 8, scope: !846)
!897 = !DILocation(line: 561, column: 15, scope: !846)
!898 = !DILocation(line: 561, column: 12, scope: !846)
!899 = !DILocation(line: 563, column: 9, scope: !846)
!900 = !DILocation(line: 564, column: 1, scope: !846)
!901 = !DILocation(line: 563, column: 2, scope: !846)
!902 = !DISubprogram(name: "arch_new_thread", scope: !903, file: !903, line: 76, type: !904, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !126)
!903 = !DIFile(filename: "kernel/include/kernel_arch_interface.h", directory: "/home/sri/zephyrproject/zephyr")
!904 = !DISubroutineType(types: !905)
!905 = !{null, !11, !716, !132, !723, !75, !75, !75}
!906 = distinct !DISubprogram(name: "z_impl_k_thread_create", scope: !3, file: !3, line: 696, type: !907, scopeLine: 701, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !135, retainedNodes: !909)
!907 = !DISubroutineType(types: !908)
!908 = !{!9, !11, !716, !133, !723, !75, !75, !75, !105, !72, !365}
!909 = !{!910, !911, !912, !913, !914, !915, !916, !917, !918, !919}
!910 = !DILocalVariable(name: "new_thread", arg: 1, scope: !906, file: !3, line: 696, type: !11)
!911 = !DILocalVariable(name: "stack", arg: 2, scope: !906, file: !3, line: 697, type: !716)
!912 = !DILocalVariable(name: "stack_size", arg: 3, scope: !906, file: !3, line: 698, type: !133)
!913 = !DILocalVariable(name: "entry", arg: 4, scope: !906, file: !3, line: 698, type: !723)
!914 = !DILocalVariable(name: "p1", arg: 5, scope: !906, file: !3, line: 699, type: !75)
!915 = !DILocalVariable(name: "p2", arg: 6, scope: !906, file: !3, line: 699, type: !75)
!916 = !DILocalVariable(name: "p3", arg: 7, scope: !906, file: !3, line: 699, type: !75)
!917 = !DILocalVariable(name: "prio", arg: 8, scope: !906, file: !3, line: 700, type: !105)
!918 = !DILocalVariable(name: "options", arg: 9, scope: !906, file: !3, line: 700, type: !72)
!919 = !DILocalVariable(name: "delay", arg: 10, scope: !906, file: !3, line: 700, type: !365)
!920 = !DILocation(line: 696, column: 49, scope: !906)
!921 = !DILocation(line: 697, column: 28, scope: !906)
!922 = !DILocation(line: 698, column: 17, scope: !906)
!923 = !DILocation(line: 698, column: 46, scope: !906)
!924 = !DILocation(line: 699, column: 16, scope: !906)
!925 = !DILocation(line: 699, column: 26, scope: !906)
!926 = !DILocation(line: 699, column: 36, scope: !906)
!927 = !DILocation(line: 700, column: 14, scope: !906)
!928 = !DILocation(line: 700, column: 29, scope: !906)
!929 = !DILocation(line: 700, column: 50, scope: !906)
!930 = !DILocation(line: 704, column: 21, scope: !906)
!931 = !DILocation(line: 704, column: 33, scope: !906)
!932 = !DILocation(line: 704, column: 40, scope: !906)
!933 = !DILocation(line: 704, column: 52, scope: !906)
!934 = !DILocation(line: 704, column: 59, scope: !906)
!935 = !DILocation(line: 704, column: 63, scope: !906)
!936 = !DILocation(line: 704, column: 67, scope: !906)
!937 = !DILocation(line: 705, column: 6, scope: !906)
!938 = !DILocation(line: 705, column: 12, scope: !906)
!939 = !DILocation(line: 704, column: 2, scope: !906)
!940 = !DILocation(line: 707, column: 16, scope: !941)
!941 = distinct !DILexicalBlock(scope: !906, file: !3, line: 707, column: 6)
!942 = !DILocation(line: 707, column: 41, scope: !941)
!943 = !DILocation(line: 707, column: 22, scope: !941)
!944 = !DILocation(line: 707, column: 6, scope: !906)
!945 = !DILocation(line: 708, column: 23, scope: !946)
!946 = distinct !DILexicalBlock(scope: !941, file: !3, line: 707, column: 83)
!947 = !DILocation(line: 708, column: 3, scope: !946)
!948 = !DILocation(line: 709, column: 2, scope: !946)
!949 = !DILocation(line: 711, column: 9, scope: !906)
!950 = !DILocation(line: 711, column: 2, scope: !906)
!951 = distinct !DISubprogram(name: "schedule_new_thread", scope: !3, file: !3, line: 444, type: !952, scopeLine: 445, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !135, retainedNodes: !954)
!952 = !DISubroutineType(types: !953)
!953 = !{null, !11, !365}
!954 = !{!955, !956}
!955 = !DILocalVariable(name: "thread", arg: 1, scope: !951, file: !3, line: 444, type: !11)
!956 = !DILocalVariable(name: "delay", arg: 2, scope: !951, file: !3, line: 444, type: !365)
!957 = !DILocation(line: 444, column: 50, scope: !951)
!958 = !DILocation(line: 444, column: 70, scope: !951)
!959 = !DILocation(line: 447, column: 15, scope: !960)
!960 = distinct !DILexicalBlock(scope: !951, file: !3, line: 447, column: 6)
!961 = !DILocation(line: 447, column: 40, scope: !960)
!962 = !DILocation(line: 447, column: 21, scope: !960)
!963 = !DILocation(line: 447, column: 6, scope: !951)
!964 = !DILocation(line: 448, column: 18, scope: !965)
!965 = distinct !DILexicalBlock(scope: !960, file: !3, line: 447, column: 54)
!966 = !DILocation(line: 448, column: 3, scope: !965)
!967 = !DILocation(line: 449, column: 2, scope: !965)
!968 = !DILocation(line: 450, column: 24, scope: !969)
!969 = distinct !DILexicalBlock(scope: !960, file: !3, line: 449, column: 9)
!970 = !DILocation(line: 450, column: 3, scope: !969)
!971 = !DILocation(line: 456, column: 1, scope: !951)
!972 = distinct !DISubprogram(name: "z_init_static_threads", scope: !3, file: !3, line: 803, type: !531, scopeLine: 804, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !135, retainedNodes: !973)
!973 = !{!974, !990}
!974 = !DILocalVariable(name: "thread_data", scope: !975, file: !3, line: 805, type: !976)
!975 = distinct !DILexicalBlock(scope: !972, file: !3, line: 805, column: 138)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 32)
!977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_static_thread_data", file: !109, line: 683, size: 384, elements: !978)
!978 = !{!979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "init_thread", scope: !977, file: !109, line: 684, baseType: !11, size: 32)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "init_stack", scope: !977, file: !109, line: 685, baseType: !716, size: 32, offset: 32)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "init_stack_size", scope: !977, file: !109, line: 686, baseType: !73, size: 32, offset: 64)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "init_entry", scope: !977, file: !109, line: 687, baseType: !723, size: 32, offset: 96)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "init_p1", scope: !977, file: !109, line: 688, baseType: !75, size: 32, offset: 128)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "init_p2", scope: !977, file: !109, line: 689, baseType: !75, size: 32, offset: 160)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "init_p3", scope: !977, file: !109, line: 690, baseType: !75, size: 32, offset: 192)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "init_prio", scope: !977, file: !109, line: 691, baseType: !105, size: 32, offset: 224)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "init_options", scope: !977, file: !109, line: 692, baseType: !72, size: 32, offset: 256)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !977, file: !109, line: 693, baseType: !6, size: 32, offset: 288)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "init_delay", scope: !977, file: !109, line: 694, baseType: !365, size: 64, offset: 320)
!990 = !DILocalVariable(name: "thread_data", scope: !991, file: !3, line: 836, type: !976)
!991 = distinct !DILexicalBlock(scope: !972, file: !3, line: 836, column: 138)
!992 = !DILocation(line: 805, column: 143, scope: !975)
!993 = !DILocation(line: 805, column: 172, scope: !975)
!994 = !DILocation(line: 805, column: 227, scope: !995)
!995 = distinct !DILexicalBlock(scope: !996, file: !3, line: 805, column: 220)
!996 = distinct !DILexicalBlock(scope: !975, file: !3, line: 805, column: 138)
!997 = !DILocation(line: 805, column: 239, scope: !995)
!998 = !DILocation(line: 805, column: 224, scope: !999)
!999 = distinct !DILexicalBlock(scope: !995, file: !3, line: 805, column: 222)
!1000 = !DILocation(line: 805, column: 272, scope: !995)
!1001 = !DILocation(line: 805, column: 138, scope: !975)
!1002 = !DILocation(line: 805, column: 138, scope: !996)
!1003 = !DILocation(line: 807, column: 4, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !996, file: !3, line: 805, column: 291)
!1005 = !DILocation(line: 807, column: 17, scope: !1004)
!1006 = !DILocation(line: 808, column: 4, scope: !1004)
!1007 = !DILocation(line: 808, column: 17, scope: !1004)
!1008 = !DILocation(line: 809, column: 4, scope: !1004)
!1009 = !DILocation(line: 809, column: 17, scope: !1004)
!1010 = !DILocation(line: 810, column: 4, scope: !1004)
!1011 = !DILocation(line: 810, column: 17, scope: !1004)
!1012 = !DILocation(line: 811, column: 4, scope: !1004)
!1013 = !DILocation(line: 811, column: 17, scope: !1004)
!1014 = !DILocation(line: 812, column: 4, scope: !1004)
!1015 = !DILocation(line: 812, column: 17, scope: !1004)
!1016 = !DILocation(line: 813, column: 4, scope: !1004)
!1017 = !DILocation(line: 813, column: 17, scope: !1004)
!1018 = !DILocation(line: 814, column: 4, scope: !1004)
!1019 = !DILocation(line: 814, column: 17, scope: !1004)
!1020 = !DILocation(line: 815, column: 4, scope: !1004)
!1021 = !DILocation(line: 815, column: 17, scope: !1004)
!1022 = !DILocation(line: 816, column: 4, scope: !1004)
!1023 = !DILocation(line: 816, column: 17, scope: !1004)
!1024 = !DILocation(line: 806, column: 3, scope: !1004)
!1025 = !DILocation(line: 818, column: 41, scope: !1004)
!1026 = !DILocation(line: 818, column: 3, scope: !1004)
!1027 = !DILocation(line: 818, column: 16, scope: !1004)
!1028 = !DILocation(line: 818, column: 29, scope: !1004)
!1029 = !DILocation(line: 818, column: 39, scope: !1004)
!1030 = !DILocation(line: 819, column: 2, scope: !1004)
!1031 = !DILocation(line: 805, column: 287, scope: !996)
!1032 = distinct !{!1032, !1001, !1033}
!1033 = !DILocation(line: 819, column: 2, scope: !975)
!1034 = !DILocation(line: 835, column: 2, scope: !972)
!1035 = !DILocation(line: 836, column: 143, scope: !991)
!1036 = !DILocation(line: 836, column: 172, scope: !991)
!1037 = !DILocation(line: 836, column: 227, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !1039, file: !3, line: 836, column: 220)
!1039 = distinct !DILexicalBlock(scope: !991, file: !3, line: 836, column: 138)
!1040 = !DILocation(line: 836, column: 239, scope: !1038)
!1041 = !DILocation(line: 836, column: 224, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1038, file: !3, line: 836, column: 222)
!1043 = !DILocation(line: 836, column: 272, scope: !1038)
!1044 = !DILocation(line: 836, column: 138, scope: !991)
!1045 = !DILocation(line: 836, column: 138, scope: !1039)
!1046 = !DILocation(line: 837, column: 10, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !1048, file: !3, line: 837, column: 7)
!1048 = distinct !DILexicalBlock(scope: !1039, file: !3, line: 836, column: 291)
!1049 = !DILocation(line: 837, column: 23, scope: !1047)
!1050 = !DILocation(line: 837, column: 35, scope: !1047)
!1051 = !DILocation(line: 837, column: 60, scope: !1047)
!1052 = !DILocation(line: 837, column: 41, scope: !1047)
!1053 = !DILocation(line: 837, column: 7, scope: !1048)
!1054 = !DILocation(line: 838, column: 24, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !1047, file: !3, line: 837, column: 102)
!1056 = !DILocation(line: 838, column: 37, scope: !1055)
!1057 = !DILocation(line: 839, column: 10, scope: !1055)
!1058 = !DILocation(line: 839, column: 23, scope: !1055)
!1059 = !DILocation(line: 838, column: 4, scope: !1055)
!1060 = !DILocation(line: 840, column: 3, scope: !1055)
!1061 = !DILocation(line: 841, column: 2, scope: !1048)
!1062 = !DILocation(line: 836, column: 287, scope: !1039)
!1063 = distinct !{!1063, !1044, !1064}
!1064 = !DILocation(line: 841, column: 2, scope: !991)
!1065 = !DILocation(line: 842, column: 2, scope: !972)
!1066 = !DILocation(line: 843, column: 1, scope: !972)
!1067 = !DISubprogram(name: "k_sched_lock", scope: !109, file: !109, line: 1142, type: !531, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !126)
!1068 = !DISubprogram(name: "k_sched_unlock", scope: !109, file: !109, line: 1151, type: !531, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !126)
!1069 = distinct !DISubprogram(name: "z_init_thread_timeout", scope: !1070, file: !1070, line: 40, type: !1071, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !135, retainedNodes: !1073)
!1070 = !DIFile(filename: "kernel/include/timeout_q.h", directory: "/home/sri/zephyrproject/zephyr")
!1071 = !DISubroutineType(types: !1072)
!1072 = !{null, !813}
!1073 = !{!1074}
!1074 = !DILocalVariable(name: "thread_base", arg: 1, scope: !1069, file: !1070, line: 40, type: !813)
!1075 = !DILocation(line: 40, column: 63, scope: !1069)
!1076 = !DILocation(line: 42, column: 18, scope: !1069)
!1077 = !DILocation(line: 42, column: 31, scope: !1069)
!1078 = !DILocation(line: 42, column: 2, scope: !1069)
!1079 = !DILocation(line: 43, column: 1, scope: !1069)
!1080 = distinct !DISubprogram(name: "k_thread_user_mode_enter", scope: !3, file: !3, line: 872, type: !1081, scopeLine: 874, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !135, retainedNodes: !1083)
!1081 = !DISubroutineType(types: !1082)
!1082 = !{null, !723, !75, !75, !75}
!1083 = !{!1084, !1085, !1086, !1087}
!1084 = !DILocalVariable(name: "entry", arg: 1, scope: !1080, file: !3, line: 872, type: !723)
!1085 = !DILocalVariable(name: "p1", arg: 2, scope: !1080, file: !3, line: 873, type: !75)
!1086 = !DILocalVariable(name: "p2", arg: 3, scope: !1080, file: !3, line: 873, type: !75)
!1087 = !DILocalVariable(name: "p3", arg: 4, scope: !1080, file: !3, line: 873, type: !75)
!1088 = !DILocation(line: 872, column: 78, scope: !1080)
!1089 = !DILocation(line: 873, column: 16, scope: !1080)
!1090 = !DILocation(line: 873, column: 26, scope: !1080)
!1091 = !DILocation(line: 873, column: 36, scope: !1080)
!1092 = !DILocation(line: 875, column: 2, scope: !1080)
!1093 = !DILocation(line: 875, column: 7, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !1080, file: !3, line: 875, column: 5)
!1095 = !DILocation(line: 877, column: 18, scope: !1080)
!1096 = !DILocation(line: 877, column: 27, scope: !1080)
!1097 = !DILocation(line: 877, column: 32, scope: !1080)
!1098 = !DILocation(line: 877, column: 45, scope: !1080)
!1099 = !DILocation(line: 878, column: 2, scope: !1080)
!1100 = !DILocation(line: 900, column: 17, scope: !1080)
!1101 = !DILocation(line: 900, column: 24, scope: !1080)
!1102 = !DILocation(line: 900, column: 28, scope: !1080)
!1103 = !DILocation(line: 900, column: 32, scope: !1080)
!1104 = !DILocation(line: 900, column: 2, scope: !1080)
!1105 = !DISubprogram(name: "z_thread_entry", scope: !1106, file: !1106, line: 67, type: !1081, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !126)
!1106 = !DIFile(filename: "kernel/include/kernel_internal.h", directory: "/home/sri/zephyrproject/zephyr")
!1107 = distinct !DISubprogram(name: "z_impl_k_float_disable", scope: !3, file: !3, line: 943, type: !1108, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !135, retainedNodes: !1110)
!1108 = !DISubroutineType(types: !1109)
!1109 = !{!105, !11}
!1110 = !{!1111}
!1111 = !DILocalVariable(name: "thread", arg: 1, scope: !1107, file: !3, line: 943, type: !11)
!1112 = !DILocation(line: 943, column: 45, scope: !1107)
!1113 = !DILocation(line: 948, column: 9, scope: !1107)
!1114 = !DILocation(line: 949, column: 2, scope: !1107)
!1115 = distinct !DISubprogram(name: "z_impl_k_float_enable", scope: !3, file: !3, line: 953, type: !1116, scopeLine: 954, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !135, retainedNodes: !1118)
!1116 = !DISubroutineType(types: !1117)
!1117 = !{!105, !11, !73}
!1118 = !{!1119, !1120}
!1119 = !DILocalVariable(name: "thread", arg: 1, scope: !1115, file: !3, line: 953, type: !11)
!1120 = !DILocalVariable(name: "options", arg: 2, scope: !1115, file: !3, line: 953, type: !73)
!1121 = !DILocation(line: 953, column: 44, scope: !1115)
!1122 = !DILocation(line: 953, column: 65, scope: !1115)
!1123 = !DILocation(line: 958, column: 9, scope: !1115)
!1124 = !DILocation(line: 959, column: 9, scope: !1115)
!1125 = !DILocation(line: 960, column: 2, scope: !1115)
!1126 = distinct !DISubprogram(name: "k_thread_runtime_stats_get", scope: !3, file: !3, line: 1130, type: !1127, scopeLine: 1132, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !135, retainedNodes: !1132)
!1127 = !DISubroutineType(types: !1128)
!1128 = !{!105, !9, !1129}
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 32)
!1130 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_thread_runtime_stats_t", file: !10, line: 239, baseType: !1131)
!1131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_thread_runtime_stats", file: !10, line: 197, elements: !126)
!1132 = !{!1133, !1134}
!1133 = !DILocalVariable(name: "thread", arg: 1, scope: !1126, file: !3, line: 1130, type: !9)
!1134 = !DILocalVariable(name: "stats", arg: 2, scope: !1126, file: !3, line: 1131, type: !1129)
!1135 = !DILocation(line: 1130, column: 40, scope: !1126)
!1136 = !DILocation(line: 1131, column: 37, scope: !1126)
!1137 = !DILocation(line: 1133, column: 7, scope: !1138)
!1138 = distinct !DILexicalBlock(scope: !1126, file: !3, line: 1133, column: 6)
!1139 = !DILocation(line: 1133, column: 14, scope: !1138)
!1140 = !DILocation(line: 1133, column: 20, scope: !1138)
!1141 = !DILocation(line: 1133, column: 24, scope: !1138)
!1142 = !DILocation(line: 1133, column: 30, scope: !1138)
!1143 = !DILocation(line: 1133, column: 6, scope: !1126)
!1144 = !DILocation(line: 1134, column: 3, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1138, file: !3, line: 1133, column: 37)
!1146 = !DILocation(line: 1140, column: 3, scope: !1126)
!1147 = !DILocation(line: 1140, column: 11, scope: !1126)
!1148 = !DILocation(line: 1143, column: 2, scope: !1126)
!1149 = !DILocation(line: 1144, column: 1, scope: !1126)
!1150 = distinct !DISubprogram(name: "k_thread_runtime_stats_all_get", scope: !3, file: !3, line: 1146, type: !1151, scopeLine: 1147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !135, retainedNodes: !1153)
!1151 = !DISubroutineType(types: !1152)
!1152 = !{!105, !1129}
!1153 = !{!1154}
!1154 = !DILocalVariable(name: "stats", arg: 1, scope: !1150, file: !3, line: 1146, type: !1129)
!1155 = !DILocation(line: 1146, column: 62, scope: !1150)
!1156 = !DILocation(line: 1152, column: 6, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1150, file: !3, line: 1152, column: 6)
!1158 = !DILocation(line: 1152, column: 12, scope: !1157)
!1159 = !DILocation(line: 1152, column: 6, scope: !1150)
!1160 = !DILocation(line: 1153, column: 3, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1157, file: !3, line: 1152, column: 18)
!1162 = !DILocation(line: 1156, column: 3, scope: !1150)
!1163 = !DILocation(line: 1156, column: 11, scope: !1150)
!1164 = !DILocation(line: 1177, column: 2, scope: !1150)
!1165 = !DILocation(line: 1178, column: 1, scope: !1150)
!1166 = !DISubprogram(name: "z_timeout_expires", scope: !109, file: !109, line: 642, type: !1167, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !126)
!1167 = !DISubroutineType(types: !1168)
!1168 = !{!221, !1169}
!1169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1170, size: 32)
!1170 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !77)
!1171 = !DISubprogram(name: "z_timeout_remaining", scope: !109, file: !109, line: 643, type: !1167, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !126)
!1172 = distinct !DISubprogram(name: "sys_sflist_is_empty", scope: !416, file: !416, line: 335, type: !1173, scopeLine: 335, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !135, retainedNodes: !1176)
!1173 = !DISubroutineType(types: !1174)
!1174 = !{!511, !1175}
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 32)
!1176 = !{!1177}
!1177 = !DILocalVariable(name: "list", arg: 1, scope: !1172, file: !416, line: 335, type: !1175)
!1178 = !DILocation(line: 335, column: 55, scope: !1172)
!1179 = !DILocation(line: 335, column: 92, scope: !1172)
!1180 = !DILocation(line: 335, column: 71, scope: !1172)
!1181 = !DILocation(line: 335, column: 98, scope: !1172)
!1182 = !DILocation(line: 335, column: 63, scope: !1172)
!1183 = distinct !DISubprogram(name: "sys_sflist_peek_head", scope: !416, file: !416, line: 255, type: !1184, scopeLine: 256, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !135, retainedNodes: !1186)
!1184 = !DISubroutineType(types: !1185)
!1185 = !{!420, !1175}
!1186 = !{!1187}
!1187 = !DILocalVariable(name: "list", arg: 1, scope: !1183, file: !416, line: 255, type: !1175)
!1188 = !DILocation(line: 255, column: 64, scope: !1183)
!1189 = !DILocation(line: 257, column: 9, scope: !1183)
!1190 = !DILocation(line: 257, column: 15, scope: !1183)
!1191 = !DILocation(line: 257, column: 2, scope: !1183)
!1192 = distinct !DISubprogram(name: "sys_dlist_init", scope: !22, file: !22, line: 203, type: !1193, scopeLine: 204, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !135, retainedNodes: !1196)
!1193 = !DISubroutineType(types: !1194)
!1194 = !{null, !1195}
!1195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 32)
!1196 = !{!1197}
!1197 = !DILocalVariable(name: "list", arg: 1, scope: !1192, file: !22, line: 203, type: !1195)
!1198 = !DILocation(line: 203, column: 48, scope: !1192)
!1199 = !DILocation(line: 205, column: 30, scope: !1192)
!1200 = !DILocation(line: 205, column: 2, scope: !1192)
!1201 = !DILocation(line: 205, column: 8, scope: !1192)
!1202 = !DILocation(line: 205, column: 13, scope: !1192)
!1203 = !DILocation(line: 206, column: 30, scope: !1192)
!1204 = !DILocation(line: 206, column: 2, scope: !1192)
!1205 = !DILocation(line: 206, column: 8, scope: !1192)
!1206 = !DILocation(line: 206, column: 13, scope: !1192)
!1207 = !DILocation(line: 207, column: 1, scope: !1192)
!1208 = distinct !DISubprogram(name: "Z_KERNEL_STACK_BUFFER", scope: !720, file: !720, line: 331, type: !1209, scopeLine: 332, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !135, retainedNodes: !1211)
!1209 = !DISubroutineType(types: !1210)
!1210 = !{!132, !716}
!1211 = !{!1212}
!1212 = !DILocalVariable(name: "sym", arg: 1, scope: !1208, file: !720, line: 331, type: !716)
!1213 = !DILocation(line: 331, column: 61, scope: !1208)
!1214 = !DILocation(line: 333, column: 17, scope: !1208)
!1215 = !DILocation(line: 333, column: 21, scope: !1208)
!1216 = !DILocation(line: 333, column: 2, scope: !1208)
!1217 = distinct !DISubprogram(name: "k_thread_start", scope: !1218, file: !1218, line: 240, type: !1219, scopeLine: 241, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !135, retainedNodes: !1221)
!1218 = !DIFile(filename: "zephyr/include/generated/syscalls/kernel.h", directory: "/home/sri/zephyrproject/zephyr/build")
!1219 = !DISubroutineType(types: !1220)
!1220 = !{null, !9}
!1221 = !{!1222}
!1222 = !DILocalVariable(name: "thread", arg: 1, scope: !1217, file: !1218, line: 240, type: !9)
!1223 = !DILocation(line: 240, column: 43, scope: !1217)
!1224 = !DILocation(line: 249, column: 2, scope: !1217)
!1225 = !DILocation(line: 249, column: 7, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !1217, file: !1218, line: 249, column: 5)
!1227 = !{i64 135593}
!1228 = !DILocation(line: 249, column: 47, scope: !1226)
!1229 = !DILocation(line: 250, column: 24, scope: !1217)
!1230 = !DILocation(line: 250, column: 2, scope: !1217)
!1231 = !DILocation(line: 251, column: 1, scope: !1217)
!1232 = distinct !DISubprogram(name: "z_add_thread_timeout", scope: !1070, file: !1070, line: 47, type: !952, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !135, retainedNodes: !1233)
!1233 = !{!1234, !1235}
!1234 = !DILocalVariable(name: "thread", arg: 1, scope: !1232, file: !1070, line: 47, type: !11)
!1235 = !DILocalVariable(name: "ticks", arg: 2, scope: !1232, file: !1070, line: 47, type: !365)
!1236 = !DILocation(line: 47, column: 58, scope: !1232)
!1237 = !DILocation(line: 47, column: 78, scope: !1232)
!1238 = !DILocation(line: 49, column: 17, scope: !1232)
!1239 = !DILocation(line: 49, column: 25, scope: !1232)
!1240 = !DILocation(line: 49, column: 30, scope: !1232)
!1241 = !DILocation(line: 49, column: 2, scope: !1232)
!1242 = !DILocation(line: 50, column: 1, scope: !1232)
!1243 = !DISubprogram(name: "z_add_timeout", scope: !1070, file: !1070, line: 30, type: !1244, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !126)
!1244 = !DISubroutineType(types: !1245)
!1245 = !{null, !85, !81, !365}
!1246 = distinct !DISubprogram(name: "z_init_timeout", scope: !1070, file: !1070, line: 25, type: !83, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !135, retainedNodes: !1247)
!1247 = !{!1248}
!1248 = !DILocalVariable(name: "to", arg: 1, scope: !1246, file: !1070, line: 25, type: !85)
!1249 = !DILocation(line: 25, column: 52, scope: !1246)
!1250 = !DILocation(line: 27, column: 18, scope: !1246)
!1251 = !DILocation(line: 27, column: 22, scope: !1246)
!1252 = !DILocation(line: 27, column: 2, scope: !1246)
!1253 = !DILocation(line: 28, column: 1, scope: !1246)
!1254 = distinct !DISubprogram(name: "sys_dnode_init", scope: !22, file: !22, line: 220, type: !1255, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !135, retainedNodes: !1257)
!1255 = !DISubroutineType(types: !1256)
!1256 = !{null, !223}
!1257 = !{!1258}
!1258 = !DILocalVariable(name: "node", arg: 1, scope: !1254, file: !22, line: 220, type: !223)
!1259 = !DILocation(line: 220, column: 48, scope: !1254)
!1260 = !DILocation(line: 222, column: 2, scope: !1254)
!1261 = !DILocation(line: 222, column: 8, scope: !1254)
!1262 = !DILocation(line: 222, column: 13, scope: !1254)
!1263 = !DILocation(line: 223, column: 2, scope: !1254)
!1264 = !DILocation(line: 223, column: 8, scope: !1254)
!1265 = !DILocation(line: 223, column: 13, scope: !1254)
!1266 = !DILocation(line: 224, column: 1, scope: !1254)
