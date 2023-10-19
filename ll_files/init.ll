; ModuleID = '../bc_files/init.bc'
source_filename = "/home/sri/zephyrproject/zephyr/kernel/init.c"
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
%struct.z_kernel = type { [1 x %struct._cpu], %struct._ready_q }
%struct._cpu = type { i32, ptr, ptr, ptr, i8, %struct._cpu_arch }
%struct._cpu_arch = type {}
%struct._ready_q = type { ptr, %struct._dnode }
%struct.z_thread_stack_element = type { i8 }
%struct.init_entry = type { %union.init_function, ptr }
%union.init_function = type { ptr }
%struct.k_timer = type { %struct._timeout, %struct._wait_q_t, ptr, ptr, %struct.k_timeout_t, i32, ptr }
%struct.k_timeout_t = type { i64 }
%struct.k_queue = type { %struct._sflist, %struct.k_spinlock, %struct._wait_q_t }
%struct._sflist = type { ptr, ptr }
%struct.k_spinlock = type {}
%struct.k_sem = type { %struct._wait_q_t, i32, i32 }
%struct.k_msgq = type { %struct._wait_q_t, %struct.k_spinlock, i32, i32, ptr, ptr, ptr, ptr, i32, i8 }
%struct.device = type { ptr, ptr, ptr, ptr, ptr }
%struct.entropy_driver_api = type { ptr, ptr }
%struct.device_state = type { i8, i8 }
%struct.NVIC_Type = type { [1 x i32], [31 x i32], [1 x i32], [31 x i32], [1 x i32], [31 x i32], [1 x i32], [31 x i32], [64 x i32], [8 x i32] }
%struct.SCB_Type = type { i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32 }

@__bss_start = external dso_local global [0 x i8], align 1
@__bss_end = external dso_local global [0 x i8], align 1
@z_idle_threads = hidden global [1 x %struct.k_thread] zeroinitializer, align 8, !dbg !0
@_kernel = hidden global %struct.z_kernel zeroinitializer, align 4, !dbg !234
@z_interrupt_stacks = hidden global [1 x [2048 x %struct.z_thread_stack_element]] zeroinitializer, section ".noinit.\22ZEPHYR_BASE/kernel/init.c\22.2", align 8, !dbg !379
@_cpus_active = hidden global i32 0, align 4, !dbg !363
@z_main_stack = hidden global [1024 x %struct.z_thread_stack_element] zeroinitializer, section ".noinit.\22ZEPHYR_BASE/kernel/init.c\22.0", align 8, !dbg !368
@z_main_thread = hidden global %struct.k_thread zeroinitializer, align 8, !dbg !377
@z_sys_post_kernel = hidden global i8 0, align 1, !dbg !384
@z_idle_stacks = internal global [1 x [256 x %struct.z_thread_stack_element]] zeroinitializer, section ".noinit.\22ZEPHYR_BASE/kernel/init.c\22.1", align 8, !dbg !386
@z_sys_init_run_level.levels = internal global [6 x ptr] [ptr @__init_EARLY_start, ptr @__init_PRE_KERNEL_1_start, ptr @__init_PRE_KERNEL_2_start, ptr @__init_POST_KERNEL_start, ptr @__init_APPLICATION_start, ptr @__init_end], align 4, !dbg !391
@__init_EARLY_start = external dso_local constant [0 x %struct.init_entry], align 4
@__init_PRE_KERNEL_1_start = external dso_local constant [0 x %struct.init_entry], align 4
@__init_PRE_KERNEL_2_start = external dso_local constant [0 x %struct.init_entry], align 4
@__init_POST_KERNEL_start = external dso_local constant [0 x %struct.init_entry], align 4
@__init_APPLICATION_start = external dso_local constant [0 x %struct.init_entry], align 4
@__init_end = external dso_local constant [0 x %struct.init_entry], align 4
@.str = private unnamed_addr constant [5 x i8] c"main\00", align 1, !dbg !426

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_k_object_access_grant(ptr noundef %0, ptr noundef %1) #0 !dbg !439 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !443, metadata !DIExpression()), !dbg !445
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !444, metadata !DIExpression()), !dbg !446
  %5 = load ptr, ptr %3, align 4, !dbg !447
  %6 = load ptr, ptr %4, align 4, !dbg !448
  ret void, !dbg !449
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_k_object_release(ptr noundef %0) #0 !dbg !450 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !454, metadata !DIExpression()), !dbg !455
  %3 = load ptr, ptr %2, align 4, !dbg !456
  ret void, !dbg !457
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_impl_k_object_alloc(i8 noundef zeroext %0) #0 !dbg !458 {
  %2 = alloca i8, align 1
  store i8 %0, ptr %2, align 1
  call void @llvm.dbg.declare(metadata ptr %2, metadata !462, metadata !DIExpression()), !dbg !463
  %3 = load i8, ptr %2, align 1, !dbg !464
  ret ptr null, !dbg !465
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_impl_k_object_alloc_size(i8 noundef zeroext %0, i32 noundef %1) #0 !dbg !466 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8 %0, ptr %3, align 1
  call void @llvm.dbg.declare(metadata ptr %3, metadata !470, metadata !DIExpression()), !dbg !472
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !471, metadata !DIExpression()), !dbg !473
  %5 = load i8, ptr %3, align 1, !dbg !474
  %6 = load i32, ptr %4, align 4, !dbg !475
  ret ptr null, !dbg !476
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_thread_timeout_expires_ticks(ptr noundef %0) #0 !dbg !477 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !485, metadata !DIExpression()), !dbg !486
  %3 = load ptr, ptr %2, align 4, !dbg !487
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !488
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !489
  %6 = call i64 @z_timeout_expires(ptr noundef %5) #8, !dbg !490
  ret i64 %6, !dbg !491
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_thread_timeout_remaining_ticks(ptr noundef %0) #0 !dbg !492 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !494, metadata !DIExpression()), !dbg !495
  %3 = load ptr, ptr %2, align 4, !dbg !496
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !497
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !498
  %6 = call i64 @z_timeout_remaining(ptr noundef %5) #8, !dbg !499
  ret i64 %6, !dbg !500
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_timer_expires_ticks(ptr noundef %0) #0 !dbg !501 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !524, metadata !DIExpression()), !dbg !525
  %3 = load ptr, ptr %2, align 4, !dbg !526
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !527
  %5 = call i64 @z_timeout_expires(ptr noundef %4) #8, !dbg !528
  ret i64 %5, !dbg !529
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_timer_remaining_ticks(ptr noundef %0) #0 !dbg !530 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !532, metadata !DIExpression()), !dbg !533
  %3 = load ptr, ptr %2, align 4, !dbg !534
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !535
  %5 = call i64 @z_timeout_remaining(ptr noundef %4) #8, !dbg !536
  ret i64 %5, !dbg !537
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_k_timer_user_data_set(ptr noundef %0, ptr noundef %1) #0 !dbg !538 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !542, metadata !DIExpression()), !dbg !544
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !543, metadata !DIExpression()), !dbg !545
  %5 = load ptr, ptr %4, align 4, !dbg !546
  %6 = load ptr, ptr %3, align 4, !dbg !547
  %7 = getelementptr inbounds %struct.k_timer, ptr %6, i32 0, i32 6, !dbg !548
  store ptr %5, ptr %7, align 4, !dbg !549
  ret void, !dbg !550
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_impl_k_timer_user_data_get(ptr noundef %0) #0 !dbg !551 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !555, metadata !DIExpression()), !dbg !556
  %3 = load ptr, ptr %2, align 4, !dbg !557
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 6, !dbg !558
  %5 = load ptr, ptr %4, align 4, !dbg !558
  ret ptr %5, !dbg !559
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_queue_is_empty(ptr noundef %0) #0 !dbg !560 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !582, metadata !DIExpression()), !dbg !583
  %3 = load ptr, ptr %2, align 4, !dbg !584
  %4 = getelementptr inbounds %struct.k_queue, ptr %3, i32 0, i32 0, !dbg !585
  %5 = call zeroext i1 @sys_sflist_is_empty(ptr noundef %4) #8, !dbg !586
  %6 = zext i1 %5 to i32, !dbg !587
  ret i32 %6, !dbg !588
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_sem_count_get(ptr noundef %0) #0 !dbg !589 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !599, metadata !DIExpression()), !dbg !600
  %3 = load ptr, ptr %2, align 4, !dbg !601
  %4 = getelementptr inbounds %struct.k_sem, ptr %3, i32 0, i32 1, !dbg !602
  %5 = load i32, ptr %4, align 4, !dbg !602
  ret i32 %5, !dbg !603
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_msgq_num_free_get(ptr noundef %0) #0 !dbg !604 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !621, metadata !DIExpression()), !dbg !622
  %3 = load ptr, ptr %2, align 4, !dbg !623
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 3, !dbg !624
  %5 = load i32, ptr %4, align 4, !dbg !624
  %6 = load ptr, ptr %2, align 4, !dbg !625
  %7 = getelementptr inbounds %struct.k_msgq, ptr %6, i32 0, i32 8, !dbg !626
  %8 = load i32, ptr %7, align 4, !dbg !626
  %9 = sub i32 %5, %8, !dbg !627
  ret i32 %9, !dbg !628
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_msgq_num_used_get(ptr noundef %0) #0 !dbg !629 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !631, metadata !DIExpression()), !dbg !632
  %3 = load ptr, ptr %2, align 4, !dbg !633
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 8, !dbg !634
  %5 = load i32, ptr %4, align 4, !dbg !634
  ret i32 %5, !dbg !635
}

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @z_impl_device_is_ready(ptr noundef %0) #0 !dbg !636 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !640, metadata !DIExpression()), !dbg !641
  %3 = load ptr, ptr %2, align 4, !dbg !642
  %4 = call zeroext i1 @z_device_is_ready(ptr noundef %3) #8, !dbg !643
  ret i1 %4, !dbg !644
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_entropy_get_entropy(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %2) #0 !dbg !645 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i16, align 2
  %7 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !647, metadata !DIExpression()), !dbg !651
  store ptr %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !648, metadata !DIExpression()), !dbg !652
  store i16 %2, ptr %6, align 2
  call void @llvm.dbg.declare(metadata ptr %6, metadata !649, metadata !DIExpression()), !dbg !653
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #9, !dbg !654
  call void @llvm.dbg.declare(metadata ptr %7, metadata !650, metadata !DIExpression()), !dbg !655
  %8 = load ptr, ptr %4, align 4, !dbg !656
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 2, !dbg !657
  %10 = load ptr, ptr %9, align 4, !dbg !657
  store ptr %10, ptr %7, align 4, !dbg !655
  %11 = load ptr, ptr %7, align 4, !dbg !658
  %12 = getelementptr inbounds %struct.entropy_driver_api, ptr %11, i32 0, i32 0, !dbg !659
  %13 = load ptr, ptr %12, align 4, !dbg !659
  %14 = load ptr, ptr %4, align 4, !dbg !660
  %15 = load ptr, ptr %5, align 4, !dbg !661
  %16 = load i16, ptr %6, align 2, !dbg !662
  %17 = call i32 %13(ptr noundef %14, ptr noundef %15, i16 noundef zeroext %16) #8, !dbg !658
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #9, !dbg !663
  ret i32 %17, !dbg !664
}

; Function Attrs: nounwind optsize
define weak hidden void @z_early_memset(ptr noundef %0, i32 noundef %1, i32 noundef %2) #1 !dbg !665 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !669, metadata !DIExpression()), !dbg !672
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !670, metadata !DIExpression()), !dbg !673
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !671, metadata !DIExpression()), !dbg !674
  %7 = load ptr, ptr %4, align 4, !dbg !675
  %8 = load i32, ptr %5, align 4, !dbg !676
  %9 = trunc i32 %8 to i8, !dbg !677
  %10 = load i32, ptr %6, align 4, !dbg !678
  call void @llvm.memset.p0.i32(ptr align 1 %7, i8 %9, i32 %10, i1 false), !dbg !677
  ret void, !dbg !679
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: nounwind optsize
define weak hidden void @z_early_memcpy(ptr noundef %0, ptr noundef %1, i32 noundef %2) #1 !dbg !680 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !684, metadata !DIExpression()), !dbg !687
  store ptr %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !685, metadata !DIExpression()), !dbg !688
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !686, metadata !DIExpression()), !dbg !689
  %7 = load ptr, ptr %4, align 4, !dbg !690
  %8 = load ptr, ptr %5, align 4, !dbg !691
  %9 = load i32, ptr %6, align 4, !dbg !692
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %7, ptr align 1 %8, i32 %9, i1 false), !dbg !693
  ret void, !dbg !694
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: nounwind optsize
define hidden void @z_bss_zero() #1 !dbg !695 {
  call void @z_early_memset(ptr noundef @__bss_start, i32 noundef 0, i32 noundef sub (i32 ptrtoint (ptr @__bss_end to i32), i32 ptrtoint (ptr @__bss_start to i32))) #8, !dbg !698
  ret void, !dbg !699
}

; Function Attrs: nounwind optsize
define hidden void @z_init_cpu(i32 noundef %0) #1 !dbg !700 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !704, metadata !DIExpression()), !dbg !705
  %3 = load i32, ptr %2, align 4, !dbg !706
  call void @init_idle_thread(i32 noundef %3) #8, !dbg !707
  %4 = load i32, ptr %2, align 4, !dbg !708
  %5 = getelementptr inbounds [1 x %struct.k_thread], ptr @z_idle_threads, i32 0, i32 %4, !dbg !709
  %6 = load i32, ptr %2, align 4, !dbg !710
  %7 = getelementptr inbounds [1 x %struct._cpu], ptr @_kernel, i32 0, i32 %6, !dbg !711
  %8 = getelementptr inbounds %struct._cpu, ptr %7, i32 0, i32 3, !dbg !712
  store ptr %5, ptr %8, align 4, !dbg !713
  %9 = load i32, ptr %2, align 4, !dbg !714
  %10 = trunc i32 %9 to i8, !dbg !714
  %11 = load i32, ptr %2, align 4, !dbg !715
  %12 = getelementptr inbounds [1 x %struct._cpu], ptr @_kernel, i32 0, i32 %11, !dbg !716
  %13 = getelementptr inbounds %struct._cpu, ptr %12, i32 0, i32 4, !dbg !717
  store i8 %10, ptr %13, align 4, !dbg !718
  %14 = load i32, ptr %2, align 4, !dbg !719
  %15 = getelementptr inbounds [1 x [2048 x %struct.z_thread_stack_element]], ptr @z_interrupt_stacks, i32 0, i32 %14, !dbg !720
  %16 = getelementptr inbounds [2048 x %struct.z_thread_stack_element], ptr %15, i32 0, i32 0, !dbg !720
  %17 = call ptr @Z_KERNEL_STACK_BUFFER(ptr noundef %16) #8, !dbg !721
  %18 = getelementptr inbounds i8, ptr %17, i32 2048, !dbg !722
  %19 = load i32, ptr %2, align 4, !dbg !723
  %20 = getelementptr inbounds [1 x %struct._cpu], ptr @_kernel, i32 0, i32 %19, !dbg !724
  %21 = getelementptr inbounds %struct._cpu, ptr %20, i32 0, i32 1, !dbg !725
  store ptr %18, ptr %21, align 4, !dbg !726
  %22 = call i32 @atomic_inc(ptr noundef @_cpus_active) #8, !dbg !727
  ret void, !dbg !728
}

; Function Attrs: nounwind optsize
define internal void @init_idle_thread(i32 noundef %0) #1 !dbg !729 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !731, metadata !DIExpression()), !dbg !738
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #9, !dbg !739
  call void @llvm.dbg.declare(metadata ptr %3, metadata !732, metadata !DIExpression()), !dbg !740
  %6 = load i32, ptr %2, align 4, !dbg !741
  %7 = getelementptr inbounds [1 x %struct.k_thread], ptr @z_idle_threads, i32 0, i32 %6, !dbg !742
  store ptr %7, ptr %3, align 4, !dbg !740
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #9, !dbg !743
  call void @llvm.dbg.declare(metadata ptr %4, metadata !733, metadata !DIExpression()), !dbg !744
  %8 = load i32, ptr %2, align 4, !dbg !745
  %9 = getelementptr inbounds [1 x [256 x %struct.z_thread_stack_element]], ptr @z_idle_stacks, i32 0, i32 %8, !dbg !746
  %10 = getelementptr inbounds [256 x %struct.z_thread_stack_element], ptr %9, i32 0, i32 0, !dbg !746
  store ptr %10, ptr %4, align 4, !dbg !744
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #9, !dbg !747
  call void @llvm.dbg.declare(metadata ptr %5, metadata !737, metadata !DIExpression()), !dbg !748
  store ptr null, ptr %5, align 4, !dbg !748
  %11 = load ptr, ptr %3, align 4, !dbg !749
  %12 = load ptr, ptr %4, align 4, !dbg !750
  %13 = load i32, ptr %2, align 4, !dbg !751
  %14 = getelementptr inbounds [1 x %struct._cpu], ptr @_kernel, i32 0, i32 %13, !dbg !752
  %15 = load ptr, ptr %5, align 4, !dbg !753
  %16 = call ptr @z_setup_new_thread(ptr noundef %11, ptr noundef %12, i32 noundef 256, ptr noundef @idle, ptr noundef %14, ptr noundef null, ptr noundef null, i32 noundef 15, i32 noundef 1, ptr noundef %15) #8, !dbg !754
  %17 = load ptr, ptr %3, align 4, !dbg !755
  call void @z_mark_thread_as_started(ptr noundef %17) #8, !dbg !756
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #9, !dbg !757
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #9, !dbg !757
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #9, !dbg !757
  ret void, !dbg !757
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @Z_KERNEL_STACK_BUFFER(ptr noundef %0) #0 !dbg !758 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !762, metadata !DIExpression()), !dbg !763
  %3 = load ptr, ptr %2, align 4, !dbg !764
  %4 = getelementptr inbounds i8, ptr %3, i32 0, !dbg !765
  ret ptr %4, !dbg !766
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @atomic_inc(ptr noundef %0) #0 !dbg !767 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !774, metadata !DIExpression()), !dbg !775
  %3 = load ptr, ptr %2, align 4, !dbg !776
  %4 = call i32 @atomic_add(ptr noundef %3, i32 noundef 1) #8, !dbg !777
  ret i32 %4, !dbg !778
}

; Function Attrs: noreturn nounwind optsize
define hidden void @z_cstart() #5 !dbg !779 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.k_thread, align 8
  call void @gcov_static_init() #8, !dbg !782
  call void @z_sys_init_run_level(i8 noundef zeroext 0) #8, !dbg !783
  call void @llvm.lifetime.start.p0(i64 4, ptr %2) #9, !dbg !784
  call void @llvm.dbg.declare(metadata ptr %2, metadata !788, metadata !DIExpression()), !dbg !793
  %4 = call ptr @Z_KERNEL_STACK_BUFFER(ptr noundef @z_interrupt_stacks) #8, !dbg !794
  %5 = ptrtoint ptr %4 to i32, !dbg !795
  %6 = add i32 %5, 2048, !dbg !796
  store i32 %6, ptr %2, align 4, !dbg !793
  %7 = load i32, ptr %2, align 4, !dbg !797
  store i32 %7, ptr %1, align 4
  call void @llvm.dbg.declare(metadata ptr %1, metadata !798, metadata !DIExpression()), !dbg !804
  %8 = load i32, ptr %1, align 4, !dbg !806
  call void asm sideeffect "MSR msp, $0", "r"(i32 %8) #9, !dbg !807, !srcloc !808
  call void @llvm.lifetime.end.p0(i64 4, ptr %2) #9, !dbg !809
  call void @__NVIC_SetPriority(i8 noundef signext -2, i32 noundef 255) #8, !dbg !810
  call void @z_arm_fault_init() #10, !dbg !814
  call void @z_arm_cpu_idle_init() #10, !dbg !815
  br label %9, !dbg !816

9:                                                ; preds = %0
  br label %10, !dbg !817

10:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 112, ptr %3) #9, !dbg !819
  call void @llvm.dbg.declare(metadata ptr %3, metadata !781, metadata !DIExpression()), !dbg !820
  call void @z_dummy_thread_init(ptr noundef %3) #8, !dbg !821
  call void @z_device_state_init() #8, !dbg !822
  call void @z_sys_init_run_level(i8 noundef zeroext 1) #8, !dbg !823
  call void @z_sys_init_run_level(i8 noundef zeroext 2) #8, !dbg !824
  %11 = call ptr @prepare_multithreading() #8, !dbg !825
  call void @switch_to_main_thread(ptr noundef %11) #11, !dbg !826
  unreachable, !dbg !826
}

; Function Attrs: inlinehint nounwind optsize
define internal void @gcov_static_init() #0 !dbg !827 {
  ret void, !dbg !829
}

; Function Attrs: nounwind optsize
define internal void @z_sys_init_run_level(i8 noundef zeroext %0) #1 !dbg !393 {
  %2 = alloca i8, align 1
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  store i8 %0, ptr %2, align 1
  call void @llvm.dbg.declare(metadata ptr %2, metadata !397, metadata !DIExpression()), !dbg !830
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #9, !dbg !831
  call void @llvm.dbg.declare(metadata ptr %3, metadata !398, metadata !DIExpression()), !dbg !832
  %6 = load i8, ptr %2, align 1, !dbg !833
  %7 = zext i8 %6 to i32, !dbg !834
  %8 = getelementptr inbounds [6 x ptr], ptr @z_sys_init_run_level.levels, i32 0, i32 %7, !dbg !834
  %9 = load ptr, ptr %8, align 4, !dbg !834
  store ptr %9, ptr %3, align 4, !dbg !835
  br label %10, !dbg !836

10:                                               ; preds = %75, %1
  %11 = load ptr, ptr %3, align 4, !dbg !837
  %12 = load i8, ptr %2, align 1, !dbg !838
  %13 = zext i8 %12 to i32, !dbg !838
  %14 = add nsw i32 %13, 1, !dbg !839
  %15 = getelementptr inbounds [6 x ptr], ptr @z_sys_init_run_level.levels, i32 0, i32 %14, !dbg !840
  %16 = load ptr, ptr %15, align 4, !dbg !840
  %17 = icmp ult ptr %11, %16, !dbg !841
  br i1 %17, label %18, label %78, !dbg !842

18:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #9, !dbg !843
  call void @llvm.dbg.declare(metadata ptr %4, metadata !416, metadata !DIExpression()), !dbg !844
  %19 = load ptr, ptr %3, align 4, !dbg !845
  %20 = getelementptr inbounds %struct.init_entry, ptr %19, i32 0, i32 1, !dbg !846
  %21 = load ptr, ptr %20, align 4, !dbg !846
  store ptr %21, ptr %4, align 4, !dbg !844
  %22 = load ptr, ptr %4, align 4, !dbg !847
  %23 = icmp ne ptr %22, null, !dbg !848
  br i1 %23, label %24, label %69, !dbg !849

24:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #9, !dbg !850
  call void @llvm.dbg.declare(metadata ptr %5, metadata !420, metadata !DIExpression()), !dbg !851
  store i32 0, ptr %5, align 4, !dbg !851
  %25 = load ptr, ptr %3, align 4, !dbg !852
  %26 = getelementptr inbounds %struct.init_entry, ptr %25, i32 0, i32 0, !dbg !854
  %27 = load ptr, ptr %26, align 4, !dbg !855
  %28 = icmp ne ptr %27, null, !dbg !856
  br i1 %28, label %29, label %55, !dbg !857

29:                                               ; preds = %24
  %30 = load ptr, ptr %3, align 4, !dbg !858
  %31 = getelementptr inbounds %struct.init_entry, ptr %30, i32 0, i32 0, !dbg !860
  %32 = load ptr, ptr %31, align 4, !dbg !861
  %33 = load ptr, ptr %4, align 4, !dbg !862
  %34 = call i32 %32(ptr noundef %33) #8, !dbg !858
  store i32 %34, ptr %5, align 4, !dbg !863
  %35 = load i32, ptr %5, align 4, !dbg !864
  %36 = icmp ne i32 %35, 0, !dbg !866
  br i1 %36, label %37, label %54, !dbg !867

37:                                               ; preds = %29
  %38 = load i32, ptr %5, align 4, !dbg !868
  %39 = icmp slt i32 %38, 0, !dbg !871
  br i1 %39, label %40, label %43, !dbg !872

40:                                               ; preds = %37
  %41 = load i32, ptr %5, align 4, !dbg !873
  %42 = sub nsw i32 0, %41, !dbg !875
  store i32 %42, ptr %5, align 4, !dbg !876
  br label %43, !dbg !877

43:                                               ; preds = %40, %37
  %44 = load i32, ptr %5, align 4, !dbg !878
  %45 = icmp sgt i32 %44, 255, !dbg !880
  br i1 %45, label %46, label %47, !dbg !881

46:                                               ; preds = %43
  store i32 255, ptr %5, align 4, !dbg !882
  br label %47, !dbg !884

47:                                               ; preds = %46, %43
  %48 = load i32, ptr %5, align 4, !dbg !885
  %49 = trunc i32 %48 to i8, !dbg !885
  %50 = load ptr, ptr %4, align 4, !dbg !886
  %51 = getelementptr inbounds %struct.device, ptr %50, i32 0, i32 3, !dbg !887
  %52 = load ptr, ptr %51, align 4, !dbg !887
  %53 = getelementptr inbounds %struct.device_state, ptr %52, i32 0, i32 0, !dbg !888
  store i8 %49, ptr %53, align 1, !dbg !889
  br label %54, !dbg !890

54:                                               ; preds = %47, %29
  br label %55, !dbg !891

55:                                               ; preds = %54, %24
  %56 = load ptr, ptr %4, align 4, !dbg !892
  %57 = getelementptr inbounds %struct.device, ptr %56, i32 0, i32 3, !dbg !893
  %58 = load ptr, ptr %57, align 4, !dbg !893
  %59 = getelementptr inbounds %struct.device_state, ptr %58, i32 0, i32 1, !dbg !894
  %60 = load i8, ptr %59, align 1, !dbg !895
  %61 = and i8 %60, -2, !dbg !895
  %62 = or i8 %61, 1, !dbg !895
  store i8 %62, ptr %59, align 1, !dbg !895
  %63 = load i32, ptr %5, align 4, !dbg !896
  %64 = icmp eq i32 %63, 0, !dbg !898
  br i1 %64, label %65, label %68, !dbg !899

65:                                               ; preds = %55
  %66 = load ptr, ptr %4, align 4, !dbg !900
  %67 = call i32 @pm_device_runtime_auto_enable(ptr noundef %66) #8, !dbg !902
  br label %68, !dbg !903

68:                                               ; preds = %65, %55
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #9, !dbg !904
  br label %74, !dbg !905

69:                                               ; preds = %18
  %70 = load ptr, ptr %3, align 4, !dbg !906
  %71 = getelementptr inbounds %struct.init_entry, ptr %70, i32 0, i32 0, !dbg !908
  %72 = load ptr, ptr %71, align 4, !dbg !909
  %73 = call i32 %72() #8, !dbg !906
  br label %74

74:                                               ; preds = %69, %68
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #9, !dbg !910
  br label %75, !dbg !911

75:                                               ; preds = %74
  %76 = load ptr, ptr %3, align 4, !dbg !912
  %77 = getelementptr inbounds %struct.init_entry, ptr %76, i32 1, !dbg !912
  store ptr %77, ptr %3, align 4, !dbg !912
  br label %10, !dbg !913, !llvm.loop !914

78:                                               ; preds = %10
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #9, !dbg !916
  ret void, !dbg !916
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: inlinehint nounwind optsize
define internal void @z_dummy_thread_init(ptr noundef %0) #0 !dbg !917 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !922, metadata !DIExpression()), !dbg !923
  %3 = load ptr, ptr %2, align 4, !dbg !924
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !925
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 3, !dbg !926
  store i8 1, ptr %5, align 1, !dbg !927
  %6 = load ptr, ptr %2, align 4, !dbg !928
  %7 = getelementptr inbounds %struct.k_thread, ptr %6, i32 0, i32 0, !dbg !929
  %8 = getelementptr inbounds %struct._thread_base, ptr %7, i32 0, i32 2, !dbg !930
  store i8 1, ptr %8, align 4, !dbg !931
  %9 = load ptr, ptr %2, align 4, !dbg !932
  %10 = getelementptr inbounds %struct.k_thread, ptr %9, i32 0, i32 5, !dbg !933
  store ptr null, ptr %10, align 4, !dbg !934
  %11 = load ptr, ptr %2, align 4, !dbg !935
  store ptr %11, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !936
  ret void, !dbg !937
}

; Function Attrs: optsize
declare !dbg !938 dso_local void @z_device_state_init() #7

; Function Attrs: noreturn nounwind optsize
define internal void @switch_to_main_thread(ptr noundef %0) #5 !dbg !940 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !944, metadata !DIExpression()), !dbg !945
  %3 = load ptr, ptr %2, align 4, !dbg !946
  call void @arch_switch_to_main_thread(ptr noundef @z_main_thread, ptr noundef %3, ptr noundef @bg_thread_main) #8, !dbg !947
  unreachable, !dbg !948
}

; Function Attrs: nounwind optsize
define internal ptr @prepare_multithreading() #1 !dbg !949 {
  %1 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %1) #9, !dbg !954
  call void @llvm.dbg.declare(metadata ptr %1, metadata !953, metadata !DIExpression()), !dbg !955
  call void @z_sched_init() #8, !dbg !956
  store ptr @z_main_thread, ptr getelementptr inbounds (%struct.z_kernel, ptr @_kernel, i32 0, i32 1), align 4, !dbg !957
  %2 = call ptr @z_setup_new_thread(ptr noundef @z_main_thread, ptr noundef @z_main_stack, i32 noundef 1024, ptr noundef @bg_thread_main, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef 1, ptr noundef @.str) #8, !dbg !958
  store ptr %2, ptr %1, align 4, !dbg !959
  call void @z_mark_thread_as_started(ptr noundef @z_main_thread) #8, !dbg !960
  call void @z_ready_thread(ptr noundef @z_main_thread) #8, !dbg !961
  call void @z_init_cpu(i32 noundef 0) #8, !dbg !962
  %3 = load ptr, ptr %1, align 4, !dbg !963
  call void @llvm.lifetime.end.p0(i64 4, ptr %1) #9, !dbg !964
  ret ptr %3, !dbg !965
}

; Function Attrs: optsize
declare !dbg !966 dso_local i64 @z_timeout_expires(ptr noundef) #7

; Function Attrs: optsize
declare !dbg !971 dso_local i64 @z_timeout_remaining(ptr noundef) #7

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @sys_sflist_is_empty(ptr noundef %0) #0 !dbg !972 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !977, metadata !DIExpression()), !dbg !978
  %3 = load ptr, ptr %2, align 4, !dbg !979
  %4 = call ptr @sys_sflist_peek_head(ptr noundef %3) #8, !dbg !980
  %5 = icmp eq ptr %4, null, !dbg !981
  ret i1 %5, !dbg !982
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @sys_sflist_peek_head(ptr noundef %0) #0 !dbg !983 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !987, metadata !DIExpression()), !dbg !988
  %3 = load ptr, ptr %2, align 4, !dbg !989
  %4 = getelementptr inbounds %struct._sflist, ptr %3, i32 0, i32 0, !dbg !990
  %5 = load ptr, ptr %4, align 4, !dbg !990
  ret ptr %5, !dbg !991
}

; Function Attrs: optsize
declare !dbg !992 dso_local zeroext i1 @z_device_is_ready(ptr noundef) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: optsize
declare !dbg !993 dso_local ptr @z_setup_new_thread(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #7

; Function Attrs: optsize
declare dso_local void @idle(ptr noundef, ptr noundef, ptr noundef) #7

; Function Attrs: inlinehint nounwind optsize
define internal void @z_mark_thread_as_started(ptr noundef %0) #0 !dbg !1000 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1003, metadata !DIExpression()), !dbg !1004
  %3 = load ptr, ptr %2, align 4, !dbg !1005
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !1006
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 3, !dbg !1007
  %6 = load i8, ptr %5, align 1, !dbg !1008
  %7 = zext i8 %6 to i32, !dbg !1008
  %8 = and i32 %7, -5, !dbg !1008
  %9 = trunc i32 %8 to i8, !dbg !1008
  store i8 %9, ptr %5, align 1, !dbg !1008
  ret void, !dbg !1009
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @atomic_add(ptr noundef %0, i32 noundef %1) #0 !dbg !1010 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1015, metadata !DIExpression()), !dbg !1017
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1016, metadata !DIExpression()), !dbg !1018
  br label %5, !dbg !1019

5:                                                ; preds = %2
  call void asm sideeffect "", "~{memory}"() #9, !dbg !1020, !srcloc !1022
  br label %6, !dbg !1023

6:                                                ; preds = %5
  %7 = load ptr, ptr %3, align 4, !dbg !1024
  %8 = load i32, ptr %4, align 4, !dbg !1025
  %9 = call i32 @z_impl_atomic_add(ptr noundef %7, i32 noundef %8) #8, !dbg !1026
  ret i32 %9, !dbg !1027
}

; Function Attrs: optsize
declare !dbg !1028 dso_local i32 @z_impl_atomic_add(ptr noundef, i32 noundef) #7

; Function Attrs: inlinehint nounwind optsize
define internal i32 @pm_device_runtime_auto_enable(ptr noundef %0) #0 !dbg !1029 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1032, metadata !DIExpression()), !dbg !1033
  %3 = load ptr, ptr %2, align 4, !dbg !1034
  ret i32 0, !dbg !1035
}

; Function Attrs: optsize
declare !dbg !1036 dso_local void @z_arm_fault_init() #7

; Function Attrs: optsize
declare !dbg !1037 dso_local void @z_arm_cpu_idle_init() #7

; Function Attrs: inlinehint nounwind optsize
define internal void @__NVIC_SetPriority(i8 noundef signext %0, i32 noundef %1) #0 !dbg !1038 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8 %0, ptr %3, align 1
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1043, metadata !DIExpression()), !dbg !1045
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1044, metadata !DIExpression()), !dbg !1046
  %5 = load i8, ptr %3, align 1, !dbg !1047
  %6 = sext i8 %5 to i32, !dbg !1049
  %7 = icmp sge i32 %6, 0, !dbg !1050
  br i1 %7, label %8, label %34, !dbg !1051

8:                                                ; preds = %2
  %9 = load i8, ptr %3, align 1, !dbg !1052
  %10 = sext i8 %9 to i32, !dbg !1054
  %11 = lshr i32 %10, 2, !dbg !1055
  %12 = getelementptr inbounds [8 x i32], ptr getelementptr inbounds (%struct.NVIC_Type, ptr inttoptr (i32 -536813312 to ptr), i32 0, i32 9), i32 0, i32 %11, !dbg !1056
  %13 = load volatile i32, ptr %12, align 4, !dbg !1056
  %14 = load i8, ptr %3, align 1, !dbg !1057
  %15 = sext i8 %14 to i32, !dbg !1058
  %16 = and i32 %15, 3, !dbg !1059
  %17 = mul i32 %16, 8, !dbg !1060
  %18 = shl i32 255, %17, !dbg !1061
  %19 = xor i32 %18, -1, !dbg !1062
  %20 = and i32 %13, %19, !dbg !1063
  %21 = load i32, ptr %4, align 4, !dbg !1064
  %22 = shl i32 %21, 6, !dbg !1065
  %23 = and i32 %22, 255, !dbg !1066
  %24 = load i8, ptr %3, align 1, !dbg !1067
  %25 = sext i8 %24 to i32, !dbg !1068
  %26 = and i32 %25, 3, !dbg !1069
  %27 = mul i32 %26, 8, !dbg !1070
  %28 = shl i32 %23, %27, !dbg !1071
  %29 = or i32 %20, %28, !dbg !1072
  %30 = load i8, ptr %3, align 1, !dbg !1073
  %31 = sext i8 %30 to i32, !dbg !1074
  %32 = lshr i32 %31, 2, !dbg !1075
  %33 = getelementptr inbounds [8 x i32], ptr getelementptr inbounds (%struct.NVIC_Type, ptr inttoptr (i32 -536813312 to ptr), i32 0, i32 9), i32 0, i32 %32, !dbg !1076
  store volatile i32 %29, ptr %33, align 4, !dbg !1077
  br label %64, !dbg !1078

34:                                               ; preds = %2
  %35 = load i8, ptr %3, align 1, !dbg !1079
  %36 = sext i8 %35 to i32, !dbg !1081
  %37 = and i32 %36, 15, !dbg !1082
  %38 = sub i32 %37, 8, !dbg !1083
  %39 = lshr i32 %38, 2, !dbg !1084
  %40 = getelementptr inbounds [2 x i32], ptr getelementptr inbounds (%struct.SCB_Type, ptr inttoptr (i32 -536810240 to ptr), i32 0, i32 7), i32 0, i32 %39, !dbg !1085
  %41 = load volatile i32, ptr %40, align 4, !dbg !1085
  %42 = load i8, ptr %3, align 1, !dbg !1086
  %43 = sext i8 %42 to i32, !dbg !1087
  %44 = and i32 %43, 3, !dbg !1088
  %45 = mul i32 %44, 8, !dbg !1089
  %46 = shl i32 255, %45, !dbg !1090
  %47 = xor i32 %46, -1, !dbg !1091
  %48 = and i32 %41, %47, !dbg !1092
  %49 = load i32, ptr %4, align 4, !dbg !1093
  %50 = shl i32 %49, 6, !dbg !1094
  %51 = and i32 %50, 255, !dbg !1095
  %52 = load i8, ptr %3, align 1, !dbg !1096
  %53 = sext i8 %52 to i32, !dbg !1097
  %54 = and i32 %53, 3, !dbg !1098
  %55 = mul i32 %54, 8, !dbg !1099
  %56 = shl i32 %51, %55, !dbg !1100
  %57 = or i32 %48, %56, !dbg !1101
  %58 = load i8, ptr %3, align 1, !dbg !1102
  %59 = sext i8 %58 to i32, !dbg !1103
  %60 = and i32 %59, 15, !dbg !1104
  %61 = sub i32 %60, 8, !dbg !1105
  %62 = lshr i32 %61, 2, !dbg !1106
  %63 = getelementptr inbounds [2 x i32], ptr getelementptr inbounds (%struct.SCB_Type, ptr inttoptr (i32 -536810240 to ptr), i32 0, i32 7), i32 0, i32 %62, !dbg !1107
  store volatile i32 %57, ptr %63, align 4, !dbg !1108
  br label %64

64:                                               ; preds = %34, %8
  ret void, !dbg !1109
}

; Function Attrs: optsize
declare !dbg !1110 dso_local void @arch_switch_to_main_thread(ptr noundef, ptr noundef, ptr noundef) #7

; Function Attrs: nounwind optsize
define internal void @bg_thread_main(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 !dbg !1114 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1116, metadata !DIExpression()), !dbg !1119
  store ptr %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1117, metadata !DIExpression()), !dbg !1120
  store ptr %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1118, metadata !DIExpression()), !dbg !1121
  %7 = load ptr, ptr %4, align 4, !dbg !1122
  %8 = load ptr, ptr %5, align 4, !dbg !1123
  %9 = load ptr, ptr %6, align 4, !dbg !1124
  store i8 1, ptr @z_sys_post_kernel, align 1, !dbg !1125
  call void @z_sys_init_run_level(i8 noundef zeroext 3) #8, !dbg !1126
  call void @boot_banner() #8, !dbg !1127
  call void @z_sys_init_run_level(i8 noundef zeroext 4) #8, !dbg !1128
  call void @z_init_static_threads() #8, !dbg !1129
  %10 = call i32 @main() #8, !dbg !1130
  %11 = load i8, ptr getelementptr inbounds (%struct._thread_base, ptr @z_main_thread, i32 0, i32 2), align 4, !dbg !1131
  %12 = zext i8 %11 to i32, !dbg !1131
  %13 = and i32 %12, -2, !dbg !1131
  %14 = trunc i32 %13 to i8, !dbg !1131
  store i8 %14, ptr getelementptr inbounds (%struct._thread_base, ptr @z_main_thread, i32 0, i32 2), align 4, !dbg !1131
  ret void, !dbg !1132
}

; Function Attrs: optsize
declare !dbg !1133 dso_local void @boot_banner() #7

; Function Attrs: optsize
declare !dbg !1134 dso_local void @z_init_static_threads() #7

; Function Attrs: optsize
declare !dbg !1135 dso_local i32 @main() #7

; Function Attrs: optsize
declare !dbg !1136 dso_local void @z_sched_init() #7

; Function Attrs: optsize
declare !dbg !1137 dso_local void @z_ready_thread(ptr noundef) #7

attributes #0 = { inlinehint nounwind optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { noreturn nounwind optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { optsize }
attributes #9 = { nounwind }
attributes #10 = { nounwind optsize }
attributes #11 = { noreturn optsize }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!432, !433, !434, !435, !436, !437}
!llvm.ident = !{!438}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "z_idle_threads", scope: !2, file: !6, line: 56, type: !431, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !136, globals: !233, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "init.c", directory: "/home/sri/zephyrproject/zephyr/build")
!4 = !{!5, !14, !96}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "init_level", file: !6, line: 71, baseType: !7, size: 8, elements: !8)
!6 = !DIFile(filename: "kernel/init.c", directory: "/home/sri/zephyrproject/zephyr")
!7 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!8 = !{!9, !10, !11, !12, !13}
!9 = !DIEnumerator(name: "INIT_LEVEL_EARLY", value: 0)
!10 = !DIEnumerator(name: "INIT_LEVEL_PRE_KERNEL_1", value: 1)
!11 = !DIEnumerator(name: "INIT_LEVEL_PRE_KERNEL_2", value: 2)
!12 = !DIEnumerator(name: "INIT_LEVEL_POST_KERNEL", value: 3)
!13 = !DIEnumerator(name: "INIT_LEVEL_APPLICATION", value: 4)
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "k_objects", file: !15, line: 29, baseType: !7, size: 8, elements: !16)
!15 = !DIFile(filename: "include/zephyr/sys/kobject.h", directory: "/home/sri/zephyrproject/zephyr")
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95}
!17 = !DIEnumerator(name: "K_OBJ_ANY", value: 0)
!18 = !DIEnumerator(name: "K_OBJ_MEM_SLAB", value: 1)
!19 = !DIEnumerator(name: "K_OBJ_MSGQ", value: 2)
!20 = !DIEnumerator(name: "K_OBJ_MUTEX", value: 3)
!21 = !DIEnumerator(name: "K_OBJ_PIPE", value: 4)
!22 = !DIEnumerator(name: "K_OBJ_QUEUE", value: 5)
!23 = !DIEnumerator(name: "K_OBJ_POLL_SIGNAL", value: 6)
!24 = !DIEnumerator(name: "K_OBJ_SEM", value: 7)
!25 = !DIEnumerator(name: "K_OBJ_STACK", value: 8)
!26 = !DIEnumerator(name: "K_OBJ_THREAD", value: 9)
!27 = !DIEnumerator(name: "K_OBJ_TIMER", value: 10)
!28 = !DIEnumerator(name: "K_OBJ_THREAD_STACK_ELEMENT", value: 11)
!29 = !DIEnumerator(name: "K_OBJ_NET_SOCKET", value: 12)
!30 = !DIEnumerator(name: "K_OBJ_NET_IF", value: 13)
!31 = !DIEnumerator(name: "K_OBJ_SYS_MUTEX", value: 14)
!32 = !DIEnumerator(name: "K_OBJ_FUTEX", value: 15)
!33 = !DIEnumerator(name: "K_OBJ_CONDVAR", value: 16)
!34 = !DIEnumerator(name: "K_OBJ_DRIVER_GPIO", value: 17)
!35 = !DIEnumerator(name: "K_OBJ_DRIVER_RESET", value: 18)
!36 = !DIEnumerator(name: "K_OBJ_DRIVER_UART", value: 19)
!37 = !DIEnumerator(name: "K_OBJ_DRIVER_CRYPTO", value: 20)
!38 = !DIEnumerator(name: "K_OBJ_DRIVER_ADC", value: 21)
!39 = !DIEnumerator(name: "K_OBJ_DRIVER_AUXDISPLAY", value: 22)
!40 = !DIEnumerator(name: "K_OBJ_DRIVER_BBRAM", value: 23)
!41 = !DIEnumerator(name: "K_OBJ_DRIVER_CAN", value: 24)
!42 = !DIEnumerator(name: "K_OBJ_DRIVER_CHARGER", value: 25)
!43 = !DIEnumerator(name: "K_OBJ_DRIVER_COREDUMP", value: 26)
!44 = !DIEnumerator(name: "K_OBJ_DRIVER_COUNTER", value: 27)
!45 = !DIEnumerator(name: "K_OBJ_DRIVER_DAC", value: 28)
!46 = !DIEnumerator(name: "K_OBJ_DRIVER_DAI", value: 29)
!47 = !DIEnumerator(name: "K_OBJ_DRIVER_DMA", value: 30)
!48 = !DIEnumerator(name: "K_OBJ_DRIVER_EDAC", value: 31)
!49 = !DIEnumerator(name: "K_OBJ_DRIVER_EEPROM", value: 32)
!50 = !DIEnumerator(name: "K_OBJ_DRIVER_FUEL_GAUGE_EMUL", value: 33)
!51 = !DIEnumerator(name: "K_OBJ_DRIVER_EMUL_SENSOR_BACKEND_API", value: 34)
!52 = !DIEnumerator(name: "K_OBJ_DRIVER_ENTROPY", value: 35)
!53 = !DIEnumerator(name: "K_OBJ_DRIVER_ESPI", value: 36)
!54 = !DIEnumerator(name: "K_OBJ_DRIVER_ESPI_SAF", value: 37)
!55 = !DIEnumerator(name: "K_OBJ_DRIVER_FLASH", value: 38)
!56 = !DIEnumerator(name: "K_OBJ_DRIVER_FPGA", value: 39)
!57 = !DIEnumerator(name: "K_OBJ_DRIVER_FUEL_GAUGE", value: 40)
!58 = !DIEnumerator(name: "K_OBJ_DRIVER_HWSPINLOCK", value: 41)
!59 = !DIEnumerator(name: "K_OBJ_DRIVER_I2C", value: 42)
!60 = !DIEnumerator(name: "K_OBJ_DRIVER_I2S", value: 43)
!61 = !DIEnumerator(name: "K_OBJ_DRIVER_I3C", value: 44)
!62 = !DIEnumerator(name: "K_OBJ_DRIVER_IPM", value: 45)
!63 = !DIEnumerator(name: "K_OBJ_DRIVER_KSCAN", value: 46)
!64 = !DIEnumerator(name: "K_OBJ_DRIVER_LED", value: 47)
!65 = !DIEnumerator(name: "K_OBJ_DRIVER_MBOX", value: 48)
!66 = !DIEnumerator(name: "K_OBJ_DRIVER_MDIO", value: 49)
!67 = !DIEnumerator(name: "K_OBJ_DRIVER_MIPI_DSI", value: 50)
!68 = !DIEnumerator(name: "K_OBJ_DRIVER_PECI", value: 51)
!69 = !DIEnumerator(name: "K_OBJ_DRIVER_PS2", value: 52)
!70 = !DIEnumerator(name: "K_OBJ_DRIVER_PTP_CLOCK", value: 53)
!71 = !DIEnumerator(name: "K_OBJ_DRIVER_PWM", value: 54)
!72 = !DIEnumerator(name: "K_OBJ_DRIVER_REGULATOR_PARENT", value: 55)
!73 = !DIEnumerator(name: "K_OBJ_DRIVER_REGULATOR", value: 56)
!74 = !DIEnumerator(name: "K_OBJ_DRIVER_RETAINED_MEM", value: 57)
!75 = !DIEnumerator(name: "K_OBJ_DRIVER_RTC", value: 58)
!76 = !DIEnumerator(name: "K_OBJ_DRIVER_SDHC", value: 59)
!77 = !DIEnumerator(name: "K_OBJ_DRIVER_SENSOR", value: 60)
!78 = !DIEnumerator(name: "K_OBJ_DRIVER_SMBUS", value: 61)
!79 = !DIEnumerator(name: "K_OBJ_DRIVER_SPI", value: 62)
!80 = !DIEnumerator(name: "K_OBJ_DRIVER_SYSCON", value: 63)
!81 = !DIEnumerator(name: "K_OBJ_DRIVER_W1", value: 64)
!82 = !DIEnumerator(name: "K_OBJ_DRIVER_WDT", value: 65)
!83 = !DIEnumerator(name: "K_OBJ_DRIVER_CAN_TRANSCEIVER", value: 66)
!84 = !DIEnumerator(name: "K_OBJ_DRIVER_UART_MUX", value: 67)
!85 = !DIEnumerator(name: "K_OBJ_DRIVER_ITS", value: 68)
!86 = !DIEnumerator(name: "K_OBJ_DRIVER_TGPIO", value: 69)
!87 = !DIEnumerator(name: "K_OBJ_DRIVER_PCIE_CTRL", value: 70)
!88 = !DIEnumerator(name: "K_OBJ_DRIVER_SVC", value: 71)
!89 = !DIEnumerator(name: "K_OBJ_DRIVER_BC12_EMUL", value: 72)
!90 = !DIEnumerator(name: "K_OBJ_DRIVER_BC12", value: 73)
!91 = !DIEnumerator(name: "K_OBJ_DRIVER_TCPC", value: 74)
!92 = !DIEnumerator(name: "K_OBJ_DRIVER_IVSHMEM", value: 75)
!93 = !DIEnumerator(name: "K_OBJ_DRIVER_EC_HOST_CMD_BACKEND_API", value: 76)
!94 = !DIEnumerator(name: "K_OBJ_DRIVER_ETHPHY", value: 77)
!95 = !DIEnumerator(name: "K_OBJ_LAST", value: 78)
!96 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !97, line: 66, baseType: !98, size: 8, elements: !99)
!97 = !DIFile(filename: "modules/hal/stm32/stm32cube/stm32f0xx/soc/stm32f091xc.h", directory: "/home/sri/zephyrproject")
!98 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!99 = !{!100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135}
!100 = !DIEnumerator(name: "NonMaskableInt_IRQn", value: -14)
!101 = !DIEnumerator(name: "HardFault_IRQn", value: -13)
!102 = !DIEnumerator(name: "SVCall_IRQn", value: -5)
!103 = !DIEnumerator(name: "PendSV_IRQn", value: -2)
!104 = !DIEnumerator(name: "SysTick_IRQn", value: -1)
!105 = !DIEnumerator(name: "WWDG_IRQn", value: 0)
!106 = !DIEnumerator(name: "PVD_VDDIO2_IRQn", value: 1)
!107 = !DIEnumerator(name: "RTC_IRQn", value: 2)
!108 = !DIEnumerator(name: "FLASH_IRQn", value: 3)
!109 = !DIEnumerator(name: "RCC_CRS_IRQn", value: 4)
!110 = !DIEnumerator(name: "EXTI0_1_IRQn", value: 5)
!111 = !DIEnumerator(name: "EXTI2_3_IRQn", value: 6)
!112 = !DIEnumerator(name: "EXTI4_15_IRQn", value: 7)
!113 = !DIEnumerator(name: "TSC_IRQn", value: 8)
!114 = !DIEnumerator(name: "DMA1_Ch1_IRQn", value: 9)
!115 = !DIEnumerator(name: "DMA1_Ch2_3_DMA2_Ch1_2_IRQn", value: 10)
!116 = !DIEnumerator(name: "DMA1_Ch4_7_DMA2_Ch3_5_IRQn", value: 11)
!117 = !DIEnumerator(name: "ADC1_COMP_IRQn", value: 12)
!118 = !DIEnumerator(name: "TIM1_BRK_UP_TRG_COM_IRQn", value: 13)
!119 = !DIEnumerator(name: "TIM1_CC_IRQn", value: 14)
!120 = !DIEnumerator(name: "TIM2_IRQn", value: 15)
!121 = !DIEnumerator(name: "TIM3_IRQn", value: 16)
!122 = !DIEnumerator(name: "TIM6_DAC_IRQn", value: 17)
!123 = !DIEnumerator(name: "TIM7_IRQn", value: 18)
!124 = !DIEnumerator(name: "TIM14_IRQn", value: 19)
!125 = !DIEnumerator(name: "TIM15_IRQn", value: 20)
!126 = !DIEnumerator(name: "TIM16_IRQn", value: 21)
!127 = !DIEnumerator(name: "TIM17_IRQn", value: 22)
!128 = !DIEnumerator(name: "I2C1_IRQn", value: 23)
!129 = !DIEnumerator(name: "I2C2_IRQn", value: 24)
!130 = !DIEnumerator(name: "SPI1_IRQn", value: 25)
!131 = !DIEnumerator(name: "SPI2_IRQn", value: 26)
!132 = !DIEnumerator(name: "USART1_IRQn", value: 27)
!133 = !DIEnumerator(name: "USART2_IRQn", value: 28)
!134 = !DIEnumerator(name: "USART3_8_IRQn", value: 29)
!135 = !DIEnumerator(name: "CEC_CAN_IRQn", value: 30)
!136 = !{!137, !140, !141, !142, !184, !185, !183, !187, !188, !216}
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !138, line: 51, baseType: !139)
!138 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/string.h", directory: "")
!139 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!141 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 32)
!143 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !144)
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "entropy_driver_api", file: !145, line: 54, size: 64, elements: !146)
!145 = !DIFile(filename: "include/zephyr/drivers/entropy.h", directory: "/home/sri/zephyrproject/zephyr")
!146 = !{!147, !178}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "get_entropy", scope: !144, file: !145, line: 55, baseType: !148, size: 32)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "entropy_get_entropy_t", file: !145, line: 41, baseType: !149)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 32)
!150 = !DISubroutineType(types: !151)
!151 = !{!141, !152, !175, !176}
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 32)
!153 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !154)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !155, line: 381, size: 160, elements: !156)
!155 = !DIFile(filename: "include/zephyr/device.h", directory: "/home/sri/zephyrproject/zephyr")
!156 = !{!157, !161, !164, !165, !174}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !154, file: !155, line: 383, baseType: !158, size: 32)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 32)
!159 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !160)
!160 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !154, file: !155, line: 385, baseType: !162, size: 32, offset: 32)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 32)
!163 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "api", scope: !154, file: !155, line: 387, baseType: !162, size: 32, offset: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !154, file: !155, line: 389, baseType: !166, size: 32, offset: 96)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 32)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_state", file: !155, line: 354, size: 16, elements: !168)
!168 = !{!169, !172}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "init_res", scope: !167, file: !155, line: 362, baseType: !170, size: 8)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !171, line: 62, baseType: !7)
!171 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/stdint.h", directory: "")
!172 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !167, file: !155, line: 367, baseType: !173, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 8)
!173 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !154, file: !155, line: 391, baseType: !140, size: 32, offset: 128)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 32)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !171, line: 63, baseType: !177)
!177 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "get_entropy_isr", scope: !144, file: !145, line: 56, baseType: !179, size: 32, offset: 32)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "entropy_get_entropy_isr_t", file: !145, line: 50, baseType: !180)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 32)
!181 = !DISubroutineType(types: !182)
!182 = !{!141, !152, !175, !176, !183}
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !171, line: 64, baseType: !139)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 32)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !186, line: 46, baseType: !139)
!186 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/lib/clang/17/include/stddef.h", directory: "")
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !171, line: 58, baseType: !141)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 32)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "NVIC_Type", file: !190, line: 326, baseType: !191)
!190 = !DIFile(filename: "modules/hal/cmsis/CMSIS/Core/Include/core_cm0.h", directory: "/home/sri/zephyrproject")
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !190, line: 314, size: 6400, elements: !192)
!192 = !{!193, !198, !202, !203, !204, !205, !206, !207, !208, !212}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "ISER", scope: !191, file: !190, line: 316, baseType: !194, size: 32)
!194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !195, size: 32, elements: !196)
!195 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !183)
!196 = !{!197}
!197 = !DISubrange(count: 1)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !191, file: !190, line: 317, baseType: !199, size: 992, offset: 32)
!199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !183, size: 992, elements: !200)
!200 = !{!201}
!201 = !DISubrange(count: 31)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "ICER", scope: !191, file: !190, line: 318, baseType: !194, size: 32, offset: 1024)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED1", scope: !191, file: !190, line: 319, baseType: !199, size: 992, offset: 1056)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "ISPR", scope: !191, file: !190, line: 320, baseType: !194, size: 32, offset: 2048)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED2", scope: !191, file: !190, line: 321, baseType: !199, size: 992, offset: 2080)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "ICPR", scope: !191, file: !190, line: 322, baseType: !194, size: 32, offset: 3072)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED3", scope: !191, file: !190, line: 323, baseType: !199, size: 992, offset: 3104)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED4", scope: !191, file: !190, line: 324, baseType: !209, size: 2048, offset: 4096)
!209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !183, size: 2048, elements: !210)
!210 = !{!211}
!211 = !DISubrange(count: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "IP", scope: !191, file: !190, line: 325, baseType: !213, size: 256, offset: 6144)
!213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !195, size: 256, elements: !214)
!214 = !{!215}
!215 = !DISubrange(count: 8)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 32)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "SCB_Type", file: !190, line: 352, baseType: !218)
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !190, line: 341, size: 320, elements: !219)
!219 = !{!220, !222, !223, !224, !225, !226, !227, !228, !232}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "CPUID", scope: !218, file: !190, line: 343, baseType: !221, size: 32)
!221 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !195)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "ICSR", scope: !218, file: !190, line: 344, baseType: !195, size: 32, offset: 32)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !218, file: !190, line: 345, baseType: !183, size: 32, offset: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "AIRCR", scope: !218, file: !190, line: 346, baseType: !195, size: 32, offset: 96)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "SCR", scope: !218, file: !190, line: 347, baseType: !195, size: 32, offset: 128)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "CCR", scope: !218, file: !190, line: 348, baseType: !195, size: 32, offset: 160)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED1", scope: !218, file: !190, line: 349, baseType: !183, size: 32, offset: 192)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "SHP", scope: !218, file: !190, line: 350, baseType: !229, size: 64, offset: 224)
!229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !195, size: 64, elements: !230)
!230 = !{!231}
!231 = !DISubrange(count: 2)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "SHCSR", scope: !218, file: !190, line: 351, baseType: !195, size: 32, offset: 288)
!233 = !{!234, !363, !368, !377, !0, !379, !384, !386, !391, !426}
!234 = !DIGlobalVariableExpression(var: !235, expr: !DIExpression())
!235 = distinct !DIGlobalVariable(name: "_kernel", scope: !2, file: !6, line: 45, type: !236, isLocal: false, isDefinition: true)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "z_kernel", file: !237, line: 159, size: 256, elements: !238)
!237 = !DIFile(filename: "include/zephyr/kernel_structs.h", directory: "/home/sri/zephyrproject/zephyr")
!238 = !{!239, !358}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "cpus", scope: !236, file: !237, line: 160, baseType: !240, size: 160)
!240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !241, size: 160, elements: !196)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_cpu", file: !237, line: 101, size: 160, elements: !242)
!242 = !{!243, !244, !245, !353, !354, !355}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !241, file: !237, line: 103, baseType: !183, size: 32)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "irq_stack", scope: !241, file: !237, line: 106, baseType: !184, size: 32, offset: 32)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !241, file: !237, line: 109, baseType: !246, size: 32, offset: 64)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 32)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_thread", file: !248, line: 250, size: 896, elements: !249)
!248 = !DIFile(filename: "include/zephyr/kernel/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!249 = !{!250, !313, !326, !327, !328, !329, !348}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !247, file: !248, line: 252, baseType: !251, size: 384)
!251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_base", file: !248, line: 58, size: 384, elements: !252)
!252 = !{!253, !279, !286, !287, !288, !298, !299, !300}
!253 = !DIDerivedType(tag: DW_TAG_member, scope: !251, file: !248, line: 61, baseType: !254, size: 64)
!254 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !251, file: !248, line: 61, size: 64, elements: !255)
!255 = !{!256, !272}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_dlist", scope: !254, file: !248, line: 62, baseType: !257, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dnode_t", file: !258, line: 55, baseType: !259)
!258 = !DIFile(filename: "include/zephyr/sys/dlist.h", directory: "/home/sri/zephyrproject/zephyr")
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_dnode", file: !258, line: 37, size: 64, elements: !260)
!260 = !{!261, !267}
!261 = !DIDerivedType(tag: DW_TAG_member, scope: !259, file: !258, line: 38, baseType: !262, size: 32)
!262 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !259, file: !258, line: 38, size: 32, elements: !263)
!263 = !{!264, !266}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !262, file: !258, line: 39, baseType: !265, size: 32)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 32)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !262, file: !258, line: 40, baseType: !265, size: 32)
!267 = !DIDerivedType(tag: DW_TAG_member, scope: !259, file: !258, line: 42, baseType: !268, size: 32, offset: 32)
!268 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !259, file: !258, line: 42, size: 32, elements: !269)
!269 = !{!270, !271}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !268, file: !258, line: 43, baseType: !265, size: 32)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !268, file: !258, line: 44, baseType: !265, size: 32)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_rb", scope: !254, file: !248, line: 63, baseType: !273, size: 64)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rbnode", file: !274, line: 58, size: 64, elements: !275)
!274 = !DIFile(filename: "include/zephyr/sys/rb.h", directory: "/home/sri/zephyrproject/zephyr")
!275 = !{!276}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !273, file: !274, line: 60, baseType: !277, size: 64)
!277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !278, size: 64, elements: !230)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 32)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "pended_on", scope: !251, file: !248, line: 69, baseType: !280, size: 32, offset: 64)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 32)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "_wait_q_t", file: !237, line: 243, baseType: !282)
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !237, line: 241, size: 64, elements: !283)
!283 = !{!284}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !282, file: !237, line: 242, baseType: !285, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dlist_t", file: !258, line: 51, baseType: !259)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "user_options", scope: !251, file: !248, line: 72, baseType: !170, size: 8, offset: 96)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "thread_state", scope: !251, file: !248, line: 75, baseType: !170, size: 8, offset: 104)
!288 = !DIDerivedType(tag: DW_TAG_member, scope: !251, file: !248, line: 91, baseType: !289, size: 16, offset: 112)
!289 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !251, file: !248, line: 91, size: 16, elements: !290)
!290 = !{!291, !297}
!291 = !DIDerivedType(tag: DW_TAG_member, scope: !289, file: !248, line: 92, baseType: !292, size: 16)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !289, file: !248, line: 92, size: 16, elements: !293)
!293 = !{!294, !296}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !292, file: !248, line: 97, baseType: !295, size: 8)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !171, line: 56, baseType: !98)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "sched_locked", scope: !292, file: !248, line: 98, baseType: !170, size: 8, offset: 8)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "preempt", scope: !289, file: !248, line: 101, baseType: !176, size: 16)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "order_key", scope: !251, file: !248, line: 108, baseType: !183, size: 32, offset: 128)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "swap_data", scope: !251, file: !248, line: 132, baseType: !140, size: 32, offset: 160)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !251, file: !248, line: 136, baseType: !301, size: 192, offset: 192)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_timeout", file: !237, line: 254, size: 192, elements: !302)
!302 = !{!303, !304, !310}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !301, file: !237, line: 255, baseType: !257, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !301, file: !237, line: 256, baseType: !305, size: 32, offset: 64)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "_timeout_func_t", file: !237, line: 252, baseType: !306)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 32)
!307 = !DISubroutineType(types: !308)
!308 = !{null, !309}
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 32)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "dticks", scope: !301, file: !237, line: 259, baseType: !311, size: 64, offset: 128)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !171, line: 59, baseType: !312)
!312 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "callee_saved", scope: !247, file: !248, line: 255, baseType: !314, size: 288, offset: 384)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_callee_saved", file: !315, line: 25, size: 288, elements: !316)
!315 = !DIFile(filename: "include/zephyr/arch/arm/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!316 = !{!317, !318, !319, !320, !321, !322, !323, !324, !325}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "v1", scope: !314, file: !315, line: 26, baseType: !183, size: 32)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "v2", scope: !314, file: !315, line: 27, baseType: !183, size: 32, offset: 32)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "v3", scope: !314, file: !315, line: 28, baseType: !183, size: 32, offset: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "v4", scope: !314, file: !315, line: 29, baseType: !183, size: 32, offset: 96)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "v5", scope: !314, file: !315, line: 30, baseType: !183, size: 32, offset: 128)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "v6", scope: !314, file: !315, line: 31, baseType: !183, size: 32, offset: 160)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "v7", scope: !314, file: !315, line: 32, baseType: !183, size: 32, offset: 192)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "v8", scope: !314, file: !315, line: 33, baseType: !183, size: 32, offset: 224)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "psp", scope: !314, file: !315, line: 34, baseType: !183, size: 32, offset: 256)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "init_data", scope: !247, file: !248, line: 258, baseType: !140, size: 32, offset: 672)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "join_queue", scope: !247, file: !248, line: 261, baseType: !281, size: 64, offset: 704)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "errno_var", scope: !247, file: !248, line: 302, baseType: !141, size: 32, offset: 768)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "resource_pool", scope: !247, file: !248, line: 333, baseType: !330, size: 32, offset: 800)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 32)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_heap", file: !332, line: 5291, size: 160, elements: !333)
!332 = !DIFile(filename: "include/zephyr/kernel.h", directory: "/home/sri/zephyrproject/zephyr")
!333 = !{!334, !343, !344}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !331, file: !332, line: 5292, baseType: !335, size: 96)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sys_heap", file: !336, line: 56, size: 96, elements: !337)
!336 = !DIFile(filename: "include/zephyr/sys/sys_heap.h", directory: "/home/sri/zephyrproject/zephyr")
!337 = !{!338, !341, !342}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !335, file: !336, line: 57, baseType: !339, size: 32)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 32)
!340 = !DICompositeType(tag: DW_TAG_structure_type, name: "z_heap", file: !336, line: 57, flags: DIFlagFwdDecl)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "init_mem", scope: !335, file: !336, line: 58, baseType: !140, size: 32, offset: 32)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "init_bytes", scope: !335, file: !336, line: 59, baseType: !185, size: 32, offset: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !331, file: !332, line: 5293, baseType: !281, size: 64, offset: 96)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !331, file: !332, line: 5294, baseType: !345, offset: 160)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_spinlock", file: !346, line: 45, elements: !347)
!346 = !DIFile(filename: "include/zephyr/spinlock.h", directory: "/home/sri/zephyrproject/zephyr")
!347 = !{}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !247, file: !248, line: 355, baseType: !349, size: 64, offset: 832)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_arch", file: !315, line: 60, size: 64, elements: !350)
!350 = !{!351, !352}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "basepri", scope: !349, file: !315, line: 63, baseType: !183, size: 32)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "swap_return_value", scope: !349, file: !315, line: 66, baseType: !183, size: 32, offset: 32)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "idle_thread", scope: !241, file: !237, line: 112, baseType: !246, size: 32, offset: 96)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !241, file: !237, line: 124, baseType: !170, size: 8, offset: 128)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !241, file: !237, line: 154, baseType: !356, offset: 136)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_cpu_arch", file: !357, line: 35, elements: !347)
!357 = !DIFile(filename: "include/zephyr/arch/structs.h", directory: "/home/sri/zephyrproject/zephyr")
!358 = !DIDerivedType(tag: DW_TAG_member, name: "ready_q", scope: !236, file: !237, line: 171, baseType: !359, size: 96, offset: 160)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ready_q", file: !237, line: 84, size: 96, elements: !360)
!360 = !{!361, !362}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !359, file: !237, line: 87, baseType: !246, size: 32)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "runq", scope: !359, file: !237, line: 91, baseType: !285, size: 64, offset: 32)
!363 = !DIGlobalVariableExpression(var: !364, expr: !DIExpression())
!364 = distinct !DIGlobalVariable(name: "_cpus_active", scope: !2, file: !6, line: 48, type: !365, isLocal: false, isDefinition: true)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !366, line: 22, baseType: !367)
!366 = !DIFile(filename: "include/zephyr/sys/atomic.h", directory: "/home/sri/zephyrproject/zephyr")
!367 = !DIBasicType(name: "long", size: 32, encoding: DW_ATE_signed)
!368 = !DIGlobalVariableExpression(var: !369, expr: !DIExpression())
!369 = distinct !DIGlobalVariable(name: "z_main_stack", scope: !2, file: !6, line: 51, type: !370, isLocal: false, isDefinition: true, align: 64)
!370 = !DICompositeType(tag: DW_TAG_array_type, baseType: !371, size: 8192, elements: !375)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "z_thread_stack_element", file: !372, line: 47, size: 8, elements: !373)
!372 = !DIFile(filename: "include/zephyr/kernel/thread_stack.h", directory: "/home/sri/zephyrproject/zephyr")
!373 = !{!374}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !371, file: !372, line: 48, baseType: !160, size: 8)
!375 = !{!376}
!376 = !DISubrange(count: 1024)
!377 = !DIGlobalVariableExpression(var: !378, expr: !DIExpression())
!378 = distinct !DIGlobalVariable(name: "z_main_thread", scope: !2, file: !6, line: 52, type: !247, isLocal: false, isDefinition: true)
!379 = !DIGlobalVariableExpression(var: !380, expr: !DIExpression())
!380 = distinct !DIGlobalVariable(name: "z_interrupt_stacks", scope: !2, file: !6, line: 94, type: !381, isLocal: false, isDefinition: true, align: 64)
!381 = !DICompositeType(tag: DW_TAG_array_type, baseType: !371, size: 16384, elements: !382)
!382 = !{!197, !383}
!383 = !DISubrange(count: 2048)
!384 = !DIGlobalVariableExpression(var: !385, expr: !DIExpression())
!385 = distinct !DIGlobalVariable(name: "z_sys_post_kernel", scope: !2, file: !6, line: 255, type: !173, isLocal: false, isDefinition: true)
!386 = !DIGlobalVariableExpression(var: !387, expr: !DIExpression())
!387 = distinct !DIGlobalVariable(name: "z_idle_stacks", scope: !2, file: !6, line: 58, type: !388, isLocal: true, isDefinition: true, align: 64)
!388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !371, size: 2048, elements: !389)
!389 = !{!197, !390}
!390 = !DISubrange(count: 256)
!391 = !DIGlobalVariableExpression(var: !392, expr: !DIExpression())
!392 = distinct !DIGlobalVariable(name: "levels", scope: !393, file: !6, line: 270, type: !423, isLocal: true, isDefinition: true)
!393 = distinct !DISubprogram(name: "z_sys_init_run_level", scope: !6, file: !6, line: 268, type: !394, scopeLine: 269, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !396)
!394 = !DISubroutineType(types: !395)
!395 = !{null, !5}
!396 = !{!397, !398, !416, !420}
!397 = !DILocalVariable(name: "level", arg: 1, scope: !393, file: !6, line: 268, type: !5)
!398 = !DILocalVariable(name: "entry", scope: !393, file: !6, line: 282, type: !399)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 32)
!400 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !401)
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "init_entry", file: !402, line: 92, size: 64, elements: !403)
!402 = !DIFile(filename: "include/zephyr/init.h", directory: "/home/sri/zephyrproject/zephyr")
!403 = !{!404, !415}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "init_fn", scope: !401, file: !402, line: 94, baseType: !405, size: 32)
!405 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "init_function", file: !402, line: 59, size: 32, elements: !406)
!406 = !{!407, !411}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "sys", scope: !405, file: !402, line: 66, baseType: !408, size: 32)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 32)
!409 = !DISubroutineType(types: !410)
!410 = !{!141}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !405, file: !402, line: 75, baseType: !412, size: 32)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 32)
!413 = !DISubroutineType(types: !414)
!414 = !{!141, !152}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !401, file: !402, line: 99, baseType: !152, size: 32, offset: 32)
!416 = !DILocalVariable(name: "dev", scope: !417, file: !6, line: 285, type: !152)
!417 = distinct !DILexicalBlock(scope: !418, file: !6, line: 284, column: 64)
!418 = distinct !DILexicalBlock(scope: !419, file: !6, line: 284, column: 2)
!419 = distinct !DILexicalBlock(scope: !393, file: !6, line: 284, column: 2)
!420 = !DILocalVariable(name: "rc", scope: !421, file: !6, line: 288, type: !141)
!421 = distinct !DILexicalBlock(scope: !422, file: !6, line: 287, column: 17)
!422 = distinct !DILexicalBlock(scope: !417, file: !6, line: 287, column: 7)
!423 = !DICompositeType(tag: DW_TAG_array_type, baseType: !399, size: 192, elements: !424)
!424 = !{!425}
!425 = !DISubrange(count: 6)
!426 = !DIGlobalVariableExpression(var: !427, expr: !DIExpression())
!427 = distinct !DIGlobalVariable(scope: null, file: !6, line: 484, type: !428, isLocal: true, isDefinition: true)
!428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 40, elements: !429)
!429 = !{!430}
!430 = !DISubrange(count: 5)
!431 = !DICompositeType(tag: DW_TAG_array_type, baseType: !247, size: 896, elements: !196)
!432 = !{i32 7, !"Dwarf Version", i32 4}
!433 = !{i32 2, !"Debug Info Version", i32 3}
!434 = !{i32 1, !"wchar_size", i32 4}
!435 = !{i32 1, !"static_rwdata", i32 1}
!436 = !{i32 1, !"enumsize_buildattr", i32 1}
!437 = !{i32 1, !"armlib_unavailable", i32 0}
!438 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
!439 = distinct !DISubprogram(name: "z_impl_k_object_access_grant", scope: !15, file: !15, line: 223, type: !440, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !442)
!440 = !DISubroutineType(types: !441)
!441 = !{null, !162, !246}
!442 = !{!443, !444}
!443 = !DILocalVariable(name: "object", arg: 1, scope: !439, file: !15, line: 223, type: !162)
!444 = !DILocalVariable(name: "thread", arg: 2, scope: !439, file: !15, line: 224, type: !246)
!445 = !DILocation(line: 223, column: 61, scope: !439)
!446 = !DILocation(line: 224, column: 24, scope: !439)
!447 = !DILocation(line: 226, column: 9, scope: !439)
!448 = !DILocation(line: 227, column: 9, scope: !439)
!449 = !DILocation(line: 228, column: 1, scope: !439)
!450 = distinct !DISubprogram(name: "z_impl_k_object_release", scope: !15, file: !15, line: 243, type: !451, scopeLine: 244, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !453)
!451 = !DISubroutineType(types: !452)
!452 = !{null, !162}
!453 = !{!454}
!454 = !DILocalVariable(name: "object", arg: 1, scope: !450, file: !15, line: 243, type: !162)
!455 = !DILocation(line: 243, column: 56, scope: !450)
!456 = !DILocation(line: 245, column: 9, scope: !450)
!457 = !DILocation(line: 246, column: 1, scope: !450)
!458 = distinct !DISubprogram(name: "z_impl_k_object_alloc", scope: !15, file: !15, line: 359, type: !459, scopeLine: 360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !461)
!459 = !DISubroutineType(types: !460)
!460 = !{!140, !14}
!461 = !{!462}
!462 = !DILocalVariable(name: "otype", arg: 1, scope: !458, file: !15, line: 359, type: !14)
!463 = !DILocation(line: 359, column: 58, scope: !458)
!464 = !DILocation(line: 361, column: 9, scope: !458)
!465 = !DILocation(line: 363, column: 2, scope: !458)
!466 = distinct !DISubprogram(name: "z_impl_k_object_alloc_size", scope: !15, file: !15, line: 366, type: !467, scopeLine: 368, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !469)
!467 = !DISubroutineType(types: !468)
!468 = !{!140, !14, !185}
!469 = !{!470, !471}
!470 = !DILocalVariable(name: "otype", arg: 1, scope: !466, file: !15, line: 366, type: !14)
!471 = !DILocalVariable(name: "size", arg: 2, scope: !466, file: !15, line: 367, type: !185)
!472 = !DILocation(line: 366, column: 63, scope: !466)
!473 = !DILocation(line: 367, column: 13, scope: !466)
!474 = !DILocation(line: 369, column: 9, scope: !466)
!475 = !DILocation(line: 370, column: 9, scope: !466)
!476 = !DILocation(line: 372, column: 2, scope: !466)
!477 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_expires_ticks", scope: !332, file: !332, line: 656, type: !478, scopeLine: 658, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !484)
!478 = !DISubroutineType(types: !479)
!479 = !{!480, !482}
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_ticks_t", file: !481, line: 46, baseType: !311)
!481 = !DIFile(filename: "include/zephyr/sys_clock.h", directory: "/home/sri/zephyrproject/zephyr")
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 32)
!483 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !247)
!484 = !{!485}
!485 = !DILocalVariable(name: "t", arg: 1, scope: !477, file: !332, line: 657, type: !482)
!486 = !DILocation(line: 657, column: 30, scope: !477)
!487 = !DILocation(line: 659, column: 28, scope: !477)
!488 = !DILocation(line: 659, column: 31, scope: !477)
!489 = !DILocation(line: 659, column: 36, scope: !477)
!490 = !DILocation(line: 659, column: 9, scope: !477)
!491 = !DILocation(line: 659, column: 2, scope: !477)
!492 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_remaining_ticks", scope: !332, file: !332, line: 671, type: !478, scopeLine: 673, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !493)
!493 = !{!494}
!494 = !DILocalVariable(name: "t", arg: 1, scope: !492, file: !332, line: 672, type: !482)
!495 = !DILocation(line: 672, column: 30, scope: !492)
!496 = !DILocation(line: 674, column: 30, scope: !492)
!497 = !DILocation(line: 674, column: 33, scope: !492)
!498 = !DILocation(line: 674, column: 38, scope: !492)
!499 = !DILocation(line: 674, column: 9, scope: !492)
!500 = !DILocation(line: 674, column: 2, scope: !492)
!501 = distinct !DISubprogram(name: "z_impl_k_timer_expires_ticks", scope: !332, file: !332, line: 1634, type: !502, scopeLine: 1636, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !523)
!502 = !DISubroutineType(types: !503)
!503 = !{!480, !504}
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 32)
!505 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !506)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_timer", file: !332, line: 1439, size: 448, elements: !507)
!507 = !{!508, !509, !510, !515, !516, !521, !522}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !506, file: !332, line: 1445, baseType: !301, size: 192)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !506, file: !332, line: 1448, baseType: !281, size: 64, offset: 192)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_fn", scope: !506, file: !332, line: 1451, baseType: !511, size: 32, offset: 256)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 32)
!512 = !DISubroutineType(types: !513)
!513 = !{null, !514}
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 32)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "stop_fn", scope: !506, file: !332, line: 1454, baseType: !511, size: 32, offset: 288)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !506, file: !332, line: 1457, baseType: !517, size: 64, offset: 320)
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_timeout_t", file: !481, line: 67, baseType: !518)
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !481, line: 65, size: 64, elements: !519)
!519 = !{!520}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "ticks", scope: !518, file: !481, line: 66, baseType: !480, size: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !506, file: !332, line: 1460, baseType: !183, size: 32, offset: 384)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !506, file: !332, line: 1463, baseType: !140, size: 32, offset: 416)
!523 = !{!524}
!524 = !DILocalVariable(name: "timer", arg: 1, scope: !501, file: !332, line: 1635, type: !504)
!525 = !DILocation(line: 1635, column: 34, scope: !501)
!526 = !DILocation(line: 1637, column: 28, scope: !501)
!527 = !DILocation(line: 1637, column: 35, scope: !501)
!528 = !DILocation(line: 1637, column: 9, scope: !501)
!529 = !DILocation(line: 1637, column: 2, scope: !501)
!530 = distinct !DISubprogram(name: "z_impl_k_timer_remaining_ticks", scope: !332, file: !332, line: 1649, type: !502, scopeLine: 1651, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !531)
!531 = !{!532}
!532 = !DILocalVariable(name: "timer", arg: 1, scope: !530, file: !332, line: 1650, type: !504)
!533 = !DILocation(line: 1650, column: 34, scope: !530)
!534 = !DILocation(line: 1652, column: 30, scope: !530)
!535 = !DILocation(line: 1652, column: 37, scope: !530)
!536 = !DILocation(line: 1652, column: 9, scope: !530)
!537 = !DILocation(line: 1652, column: 2, scope: !530)
!538 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_set", scope: !332, file: !332, line: 1689, type: !539, scopeLine: 1691, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !541)
!539 = !DISubroutineType(types: !540)
!540 = !{null, !514, !140}
!541 = !{!542, !543}
!542 = !DILocalVariable(name: "timer", arg: 1, scope: !538, file: !332, line: 1689, type: !514)
!543 = !DILocalVariable(name: "user_data", arg: 2, scope: !538, file: !332, line: 1690, type: !140)
!544 = !DILocation(line: 1689, column: 65, scope: !538)
!545 = !DILocation(line: 1690, column: 19, scope: !538)
!546 = !DILocation(line: 1692, column: 21, scope: !538)
!547 = !DILocation(line: 1692, column: 2, scope: !538)
!548 = !DILocation(line: 1692, column: 9, scope: !538)
!549 = !DILocation(line: 1692, column: 19, scope: !538)
!550 = !DILocation(line: 1693, column: 1, scope: !538)
!551 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_get", scope: !332, file: !332, line: 1704, type: !552, scopeLine: 1705, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !554)
!552 = !DISubroutineType(types: !553)
!553 = !{!140, !504}
!554 = !{!555}
!555 = !DILocalVariable(name: "timer", arg: 1, scope: !551, file: !332, line: 1704, type: !504)
!556 = !DILocation(line: 1704, column: 72, scope: !551)
!557 = !DILocation(line: 1706, column: 9, scope: !551)
!558 = !DILocation(line: 1706, column: 16, scope: !551)
!559 = !DILocation(line: 1706, column: 2, scope: !551)
!560 = distinct !DISubprogram(name: "z_impl_k_queue_is_empty", scope: !332, file: !332, line: 2071, type: !561, scopeLine: 2072, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !581)
!561 = !DISubroutineType(types: !562)
!562 = !{!141, !563}
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 32)
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_queue", file: !332, line: 1830, size: 128, elements: !565)
!565 = !{!566, !579, !580}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "data_q", scope: !564, file: !332, line: 1831, baseType: !567, size: 64)
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sflist_t", file: !568, line: 60, baseType: !569)
!568 = !DIFile(filename: "include/zephyr/sys/sflist.h", directory: "/home/sri/zephyrproject/zephyr")
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sflist", file: !568, line: 53, size: 64, elements: !570)
!570 = !{!571, !578}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !569, file: !568, line: 54, baseType: !572, size: 32)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 32)
!573 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sfnode_t", file: !568, line: 50, baseType: !574)
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sfnode", file: !568, line: 44, size: 32, elements: !575)
!575 = !{!576}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "next_and_flags", scope: !574, file: !568, line: 45, baseType: !577, size: 32)
!577 = !DIDerivedType(tag: DW_TAG_typedef, name: "unative_t", file: !568, line: 40, baseType: !183)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !569, file: !568, line: 55, baseType: !572, size: 32, offset: 32)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !564, file: !332, line: 1832, baseType: !345, offset: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !564, file: !332, line: 1833, baseType: !281, size: 64, offset: 64)
!581 = !{!582}
!582 = !DILocalVariable(name: "queue", arg: 1, scope: !560, file: !332, line: 2071, type: !563)
!583 = !DILocation(line: 2071, column: 59, scope: !560)
!584 = !DILocation(line: 2073, column: 35, scope: !560)
!585 = !DILocation(line: 2073, column: 42, scope: !560)
!586 = !DILocation(line: 2073, column: 14, scope: !560)
!587 = !DILocation(line: 2073, column: 9, scope: !560)
!588 = !DILocation(line: 2073, column: 2, scope: !560)
!589 = distinct !DISubprogram(name: "z_impl_k_sem_count_get", scope: !332, file: !332, line: 3209, type: !590, scopeLine: 3210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !598)
!590 = !DISubroutineType(types: !591)
!591 = !{!139, !592}
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 32)
!593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sem", file: !332, line: 3092, size: 128, elements: !594)
!594 = !{!595, !596, !597}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !593, file: !332, line: 3093, baseType: !281, size: 64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !593, file: !332, line: 3094, baseType: !139, size: 32, offset: 64)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !593, file: !332, line: 3095, baseType: !139, size: 32, offset: 96)
!598 = !{!599}
!599 = !DILocalVariable(name: "sem", arg: 1, scope: !589, file: !332, line: 3209, type: !592)
!600 = !DILocation(line: 3209, column: 65, scope: !589)
!601 = !DILocation(line: 3211, column: 9, scope: !589)
!602 = !DILocation(line: 3211, column: 14, scope: !589)
!603 = !DILocation(line: 3211, column: 2, scope: !589)
!604 = distinct !DISubprogram(name: "z_impl_k_msgq_num_free_get", scope: !332, file: !332, line: 4649, type: !605, scopeLine: 4650, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !620)
!605 = !DISubroutineType(types: !606)
!606 = !{!183, !607}
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 32)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_msgq", file: !332, line: 4390, size: 320, elements: !609)
!609 = !{!610, !611, !612, !613, !614, !615, !616, !617, !618, !619}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !608, file: !332, line: 4392, baseType: !281, size: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !608, file: !332, line: 4394, baseType: !345, offset: 64)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "msg_size", scope: !608, file: !332, line: 4396, baseType: !185, size: 32, offset: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !608, file: !332, line: 4398, baseType: !183, size: 32, offset: 96)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_start", scope: !608, file: !332, line: 4400, baseType: !184, size: 32, offset: 128)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_end", scope: !608, file: !332, line: 4402, baseType: !184, size: 32, offset: 160)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "read_ptr", scope: !608, file: !332, line: 4404, baseType: !184, size: 32, offset: 192)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "write_ptr", scope: !608, file: !332, line: 4406, baseType: !184, size: 32, offset: 224)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "used_msgs", scope: !608, file: !332, line: 4408, baseType: !183, size: 32, offset: 256)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !608, file: !332, line: 4413, baseType: !170, size: 8, offset: 288)
!620 = !{!621}
!621 = !DILocalVariable(name: "msgq", arg: 1, scope: !604, file: !332, line: 4649, type: !607)
!622 = !DILocation(line: 4649, column: 66, scope: !604)
!623 = !DILocation(line: 4651, column: 9, scope: !604)
!624 = !DILocation(line: 4651, column: 15, scope: !604)
!625 = !DILocation(line: 4651, column: 26, scope: !604)
!626 = !DILocation(line: 4651, column: 32, scope: !604)
!627 = !DILocation(line: 4651, column: 24, scope: !604)
!628 = !DILocation(line: 4651, column: 2, scope: !604)
!629 = distinct !DISubprogram(name: "z_impl_k_msgq_num_used_get", scope: !332, file: !332, line: 4665, type: !605, scopeLine: 4666, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !630)
!630 = !{!631}
!631 = !DILocalVariable(name: "msgq", arg: 1, scope: !629, file: !332, line: 4665, type: !607)
!632 = !DILocation(line: 4665, column: 66, scope: !629)
!633 = !DILocation(line: 4667, column: 9, scope: !629)
!634 = !DILocation(line: 4667, column: 15, scope: !629)
!635 = !DILocation(line: 4667, column: 2, scope: !629)
!636 = distinct !DISubprogram(name: "z_impl_device_is_ready", scope: !155, file: !155, line: 744, type: !637, scopeLine: 745, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !639)
!637 = !DISubroutineType(types: !638)
!638 = !{!173, !152}
!639 = !{!640}
!640 = !DILocalVariable(name: "dev", arg: 1, scope: !636, file: !155, line: 744, type: !152)
!641 = !DILocation(line: 744, column: 65, scope: !636)
!642 = !DILocation(line: 746, column: 27, scope: !636)
!643 = !DILocation(line: 746, column: 9, scope: !636)
!644 = !DILocation(line: 746, column: 2, scope: !636)
!645 = distinct !DISubprogram(name: "z_impl_entropy_get_entropy", scope: !145, file: !145, line: 73, type: !150, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !646)
!646 = !{!647, !648, !649, !650}
!647 = !DILocalVariable(name: "dev", arg: 1, scope: !645, file: !145, line: 73, type: !152)
!648 = !DILocalVariable(name: "buffer", arg: 2, scope: !645, file: !145, line: 74, type: !175)
!649 = !DILocalVariable(name: "length", arg: 3, scope: !645, file: !145, line: 75, type: !176)
!650 = !DILocalVariable(name: "api", scope: !645, file: !145, line: 77, type: !142)
!651 = !DILocation(line: 73, column: 67, scope: !645)
!652 = !DILocation(line: 74, column: 20, scope: !645)
!653 = !DILocation(line: 75, column: 20, scope: !645)
!654 = !DILocation(line: 77, column: 2, scope: !645)
!655 = !DILocation(line: 77, column: 35, scope: !645)
!656 = !DILocation(line: 78, column: 38, scope: !645)
!657 = !DILocation(line: 78, column: 43, scope: !645)
!658 = !DILocation(line: 82, column: 9, scope: !645)
!659 = !DILocation(line: 82, column: 14, scope: !645)
!660 = !DILocation(line: 82, column: 26, scope: !645)
!661 = !DILocation(line: 82, column: 31, scope: !645)
!662 = !DILocation(line: 82, column: 39, scope: !645)
!663 = !DILocation(line: 83, column: 1, scope: !645)
!664 = !DILocation(line: 82, column: 2, scope: !645)
!665 = distinct !DISubprogram(name: "z_early_memset", scope: !6, file: !6, line: 142, type: !666, scopeLine: 143, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !668)
!666 = !DISubroutineType(types: !667)
!667 = !{null, !140, !141, !137}
!668 = !{!669, !670, !671}
!669 = !DILocalVariable(name: "dst", arg: 1, scope: !665, file: !6, line: 142, type: !140)
!670 = !DILocalVariable(name: "c", arg: 2, scope: !665, file: !6, line: 142, type: !141)
!671 = !DILocalVariable(name: "n", arg: 3, scope: !665, file: !6, line: 142, type: !137)
!672 = !DILocation(line: 142, column: 53, scope: !665)
!673 = !DILocation(line: 142, column: 62, scope: !665)
!674 = !DILocation(line: 142, column: 72, scope: !665)
!675 = !DILocation(line: 144, column: 16, scope: !665)
!676 = !DILocation(line: 144, column: 21, scope: !665)
!677 = !DILocation(line: 144, column: 9, scope: !665)
!678 = !DILocation(line: 144, column: 24, scope: !665)
!679 = !DILocation(line: 145, column: 1, scope: !665)
!680 = distinct !DISubprogram(name: "z_early_memcpy", scope: !6, file: !6, line: 155, type: !681, scopeLine: 156, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !683)
!681 = !DISubroutineType(types: !682)
!682 = !{null, !140, !162, !137}
!683 = !{!684, !685, !686}
!684 = !DILocalVariable(name: "dst", arg: 1, scope: !680, file: !6, line: 155, type: !140)
!685 = !DILocalVariable(name: "src", arg: 2, scope: !680, file: !6, line: 155, type: !162)
!686 = !DILocalVariable(name: "n", arg: 3, scope: !680, file: !6, line: 155, type: !137)
!687 = !DILocation(line: 155, column: 53, scope: !680)
!688 = !DILocation(line: 155, column: 70, scope: !680)
!689 = !DILocation(line: 155, column: 82, scope: !680)
!690 = !DILocation(line: 157, column: 16, scope: !680)
!691 = !DILocation(line: 157, column: 21, scope: !680)
!692 = !DILocation(line: 157, column: 26, scope: !680)
!693 = !DILocation(line: 157, column: 9, scope: !680)
!694 = !DILocation(line: 158, column: 1, scope: !680)
!695 = distinct !DISubprogram(name: "z_bss_zero", scope: !6, file: !6, line: 166, type: !696, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !347)
!696 = !DISubroutineType(types: !697)
!697 = !{null}
!698 = !DILocation(line: 177, column: 2, scope: !695)
!699 = !DILocation(line: 202, column: 1, scope: !695)
!700 = distinct !DISubprogram(name: "z_init_cpu", scope: !6, file: !6, line: 418, type: !701, scopeLine: 419, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !703)
!701 = !DISubroutineType(types: !702)
!702 = !{null, !141}
!703 = !{!704}
!704 = !DILocalVariable(name: "id", arg: 1, scope: !700, file: !6, line: 418, type: !141)
!705 = !DILocation(line: 418, column: 21, scope: !700)
!706 = !DILocation(line: 420, column: 19, scope: !700)
!707 = !DILocation(line: 420, column: 2, scope: !700)
!708 = !DILocation(line: 421, column: 49, scope: !700)
!709 = !DILocation(line: 421, column: 34, scope: !700)
!710 = !DILocation(line: 421, column: 15, scope: !700)
!711 = !DILocation(line: 421, column: 2, scope: !700)
!712 = !DILocation(line: 421, column: 19, scope: !700)
!713 = !DILocation(line: 421, column: 31, scope: !700)
!714 = !DILocation(line: 422, column: 24, scope: !700)
!715 = !DILocation(line: 422, column: 15, scope: !700)
!716 = !DILocation(line: 422, column: 2, scope: !700)
!717 = !DILocation(line: 422, column: 19, scope: !700)
!718 = !DILocation(line: 422, column: 22, scope: !700)
!719 = !DILocation(line: 424, column: 45, scope: !700)
!720 = !DILocation(line: 424, column: 26, scope: !700)
!721 = !DILocation(line: 424, column: 4, scope: !700)
!722 = !DILocation(line: 424, column: 50, scope: !700)
!723 = !DILocation(line: 423, column: 15, scope: !700)
!724 = !DILocation(line: 423, column: 2, scope: !700)
!725 = !DILocation(line: 423, column: 19, scope: !700)
!726 = !DILocation(line: 423, column: 29, scope: !700)
!727 = !DILocation(line: 436, column: 2, scope: !700)
!728 = !DILocation(line: 446, column: 1, scope: !700)
!729 = distinct !DISubprogram(name: "init_idle_thread", scope: !6, file: !6, line: 389, type: !701, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !730)
!730 = !{!731, !732, !733, !737}
!731 = !DILocalVariable(name: "i", arg: 1, scope: !729, file: !6, line: 389, type: !141)
!732 = !DILocalVariable(name: "thread", scope: !729, file: !6, line: 391, type: !246)
!733 = !DILocalVariable(name: "stack", scope: !729, file: !6, line: 392, type: !734)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 32)
!735 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_thread_stack_t", file: !736, line: 44, baseType: !371)
!736 = !DIFile(filename: "include/zephyr/sys/arch_interface.h", directory: "/home/sri/zephyrproject/zephyr")
!737 = !DILocalVariable(name: "tname", scope: !729, file: !6, line: 404, type: !184)
!738 = !DILocation(line: 389, column: 34, scope: !729)
!739 = !DILocation(line: 391, column: 2, scope: !729)
!740 = !DILocation(line: 391, column: 19, scope: !729)
!741 = !DILocation(line: 391, column: 44, scope: !729)
!742 = !DILocation(line: 391, column: 29, scope: !729)
!743 = !DILocation(line: 392, column: 2, scope: !729)
!744 = !DILocation(line: 392, column: 20, scope: !729)
!745 = !DILocation(line: 392, column: 42, scope: !729)
!746 = !DILocation(line: 392, column: 28, scope: !729)
!747 = !DILocation(line: 404, column: 2, scope: !729)
!748 = !DILocation(line: 404, column: 8, scope: !729)
!749 = !DILocation(line: 407, column: 21, scope: !729)
!750 = !DILocation(line: 407, column: 29, scope: !729)
!751 = !DILocation(line: 408, column: 31, scope: !729)
!752 = !DILocation(line: 408, column: 18, scope: !729)
!753 = !DILocation(line: 410, column: 6, scope: !729)
!754 = !DILocation(line: 407, column: 2, scope: !729)
!755 = !DILocation(line: 411, column: 27, scope: !729)
!756 = !DILocation(line: 411, column: 2, scope: !729)
!757 = !DILocation(line: 416, column: 1, scope: !729)
!758 = distinct !DISubprogram(name: "Z_KERNEL_STACK_BUFFER", scope: !372, file: !372, line: 331, type: !759, scopeLine: 332, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !761)
!759 = !DISubroutineType(types: !760)
!760 = !{!184, !734}
!761 = !{!762}
!762 = !DILocalVariable(name: "sym", arg: 1, scope: !758, file: !372, line: 331, type: !734)
!763 = !DILocation(line: 331, column: 61, scope: !758)
!764 = !DILocation(line: 333, column: 17, scope: !758)
!765 = !DILocation(line: 333, column: 21, scope: !758)
!766 = !DILocation(line: 333, column: 2, scope: !758)
!767 = distinct !DISubprogram(name: "atomic_inc", scope: !768, file: !768, line: 30, type: !769, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !773)
!768 = !DIFile(filename: "include/zephyr/sys/atomic_c.h", directory: "/home/sri/zephyrproject/zephyr")
!769 = !DISubroutineType(types: !770)
!770 = !{!771, !772}
!771 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_val_t", file: !366, line: 23, baseType: !365)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 32)
!773 = !{!774}
!774 = !DILocalVariable(name: "target", arg: 1, scope: !767, file: !768, line: 30, type: !772)
!775 = !DILocation(line: 30, column: 49, scope: !767)
!776 = !DILocation(line: 32, column: 20, scope: !767)
!777 = !DILocation(line: 32, column: 9, scope: !767)
!778 = !DILocation(line: 32, column: 2, scope: !767)
!779 = distinct !DISubprogram(name: "z_cstart", scope: !6, file: !6, line: 564, type: !696, scopeLine: 565, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !780)
!780 = !{!781}
!781 = !DILocalVariable(name: "dummy_thread", scope: !779, file: !6, line: 581, type: !247)
!782 = !DILocation(line: 567, column: 2, scope: !779)
!783 = !DILocation(line: 570, column: 2, scope: !779)
!784 = !DILocation(line: 42, column: 2, scope: !785, inlinedAt: !789)
!785 = distinct !DISubprogram(name: "z_arm_interrupt_stack_setup", scope: !786, file: !786, line: 40, type: !696, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !787)
!786 = !DIFile(filename: "arch/arm/include/cortex_m/stack.h", directory: "/home/sri/zephyrproject/zephyr")
!787 = !{!788}
!788 = !DILocalVariable(name: "msp", scope: !785, file: !786, line: 42, type: !183)
!789 = distinct !DILocation(line: 41, column: 2, scope: !790, inlinedAt: !792)
!790 = distinct !DISubprogram(name: "arch_kernel_init", scope: !791, file: !791, line: 39, type: !696, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !347)
!791 = !DIFile(filename: "arch/arm/include/cortex_m/kernel_arch_func.h", directory: "/home/sri/zephyrproject/zephyr")
!792 = distinct !DILocation(line: 573, column: 2, scope: !779)
!793 = !DILocation(line: 42, column: 11, scope: !785, inlinedAt: !789)
!794 = !DILocation(line: 43, column: 14, scope: !785, inlinedAt: !789)
!795 = !DILocation(line: 43, column: 3, scope: !785, inlinedAt: !789)
!796 = !DILocation(line: 43, column: 60, scope: !785, inlinedAt: !789)
!797 = !DILocation(line: 46, column: 12, scope: !785, inlinedAt: !789)
!798 = !DILocalVariable(name: "topOfMainStack", arg: 1, scope: !799, file: !800, line: 944, type: !183)
!799 = distinct !DISubprogram(name: "__set_MSP", scope: !800, file: !800, line: 944, type: !801, scopeLine: 945, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !803)
!800 = !DIFile(filename: "modules/hal/cmsis/CMSIS/Core/Include/cmsis_armclang.h", directory: "/home/sri/zephyrproject")
!801 = !DISubroutineType(types: !802)
!802 = !{null, !183}
!803 = !{!798}
!804 = !DILocation(line: 944, column: 72, scope: !799, inlinedAt: !805)
!805 = distinct !DILocation(line: 46, column: 2, scope: !785, inlinedAt: !789)
!806 = !DILocation(line: 946, column: 42, scope: !799, inlinedAt: !805)
!807 = !DILocation(line: 946, column: 3, scope: !799, inlinedAt: !805)
!808 = !{i64 212763}
!809 = !DILocation(line: 65, column: 1, scope: !785, inlinedAt: !789)
!810 = !DILocation(line: 102, column: 2, scope: !811, inlinedAt: !813)
!811 = distinct !DISubprogram(name: "z_arm_exc_setup", scope: !812, file: !812, line: 97, type: !696, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !347)
!812 = !DIFile(filename: "arch/arm/include/cortex_m/exc.h", directory: "/home/sri/zephyrproject/zephyr")
!813 = distinct !DILocation(line: 42, column: 2, scope: !790, inlinedAt: !792)
!814 = !DILocation(line: 43, column: 2, scope: !790, inlinedAt: !792)
!815 = !DILocation(line: 44, column: 2, scope: !790, inlinedAt: !792)
!816 = !DILocation(line: 575, column: 2, scope: !779)
!817 = !DILocation(line: 575, column: 7, scope: !818)
!818 = distinct !DILexicalBlock(scope: !779, file: !6, line: 575, column: 5)
!819 = !DILocation(line: 581, column: 2, scope: !779)
!820 = !DILocation(line: 581, column: 18, scope: !779)
!821 = !DILocation(line: 583, column: 2, scope: !779)
!822 = !DILocation(line: 586, column: 2, scope: !779)
!823 = !DILocation(line: 589, column: 2, scope: !779)
!824 = !DILocation(line: 590, column: 2, scope: !779)
!825 = !DILocation(line: 606, column: 24, scope: !779)
!826 = !DILocation(line: 606, column: 2, scope: !779)
!827 = distinct !DISubprogram(name: "gcov_static_init", scope: !828, file: !828, line: 15, type: !696, scopeLine: 15, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !347)
!828 = !DIFile(filename: "include/zephyr/debug/gcov.h", directory: "/home/sri/zephyrproject/zephyr")
!829 = !DILocation(line: 15, column: 45, scope: !827)
!830 = !DILocation(line: 268, column: 50, scope: !393)
!831 = !DILocation(line: 282, column: 2, scope: !393)
!832 = !DILocation(line: 282, column: 27, scope: !393)
!833 = !DILocation(line: 284, column: 22, scope: !419)
!834 = !DILocation(line: 284, column: 15, scope: !419)
!835 = !DILocation(line: 284, column: 13, scope: !419)
!836 = !DILocation(line: 284, column: 7, scope: !419)
!837 = !DILocation(line: 284, column: 30, scope: !418)
!838 = !DILocation(line: 284, column: 45, scope: !418)
!839 = !DILocation(line: 284, column: 50, scope: !418)
!840 = !DILocation(line: 284, column: 38, scope: !418)
!841 = !DILocation(line: 284, column: 36, scope: !418)
!842 = !DILocation(line: 284, column: 2, scope: !419)
!843 = !DILocation(line: 285, column: 3, scope: !417)
!844 = !DILocation(line: 285, column: 24, scope: !417)
!845 = !DILocation(line: 285, column: 30, scope: !417)
!846 = !DILocation(line: 285, column: 37, scope: !417)
!847 = !DILocation(line: 287, column: 7, scope: !422)
!848 = !DILocation(line: 287, column: 11, scope: !422)
!849 = !DILocation(line: 287, column: 7, scope: !417)
!850 = !DILocation(line: 288, column: 4, scope: !421)
!851 = !DILocation(line: 288, column: 8, scope: !421)
!852 = !DILocation(line: 290, column: 8, scope: !853)
!853 = distinct !DILexicalBlock(scope: !421, file: !6, line: 290, column: 8)
!854 = !DILocation(line: 290, column: 15, scope: !853)
!855 = !DILocation(line: 290, column: 23, scope: !853)
!856 = !DILocation(line: 290, column: 27, scope: !853)
!857 = !DILocation(line: 290, column: 8, scope: !421)
!858 = !DILocation(line: 291, column: 10, scope: !859)
!859 = distinct !DILexicalBlock(scope: !853, file: !6, line: 290, column: 33)
!860 = !DILocation(line: 291, column: 17, scope: !859)
!861 = !DILocation(line: 291, column: 25, scope: !859)
!862 = !DILocation(line: 291, column: 29, scope: !859)
!863 = !DILocation(line: 291, column: 8, scope: !859)
!864 = !DILocation(line: 295, column: 9, scope: !865)
!865 = distinct !DILexicalBlock(scope: !859, file: !6, line: 295, column: 9)
!866 = !DILocation(line: 295, column: 12, scope: !865)
!867 = !DILocation(line: 295, column: 9, scope: !859)
!868 = !DILocation(line: 296, column: 10, scope: !869)
!869 = distinct !DILexicalBlock(scope: !870, file: !6, line: 296, column: 10)
!870 = distinct !DILexicalBlock(scope: !865, file: !6, line: 295, column: 18)
!871 = !DILocation(line: 296, column: 13, scope: !869)
!872 = !DILocation(line: 296, column: 10, scope: !870)
!873 = !DILocation(line: 297, column: 13, scope: !874)
!874 = distinct !DILexicalBlock(scope: !869, file: !6, line: 296, column: 18)
!875 = !DILocation(line: 297, column: 12, scope: !874)
!876 = !DILocation(line: 297, column: 10, scope: !874)
!877 = !DILocation(line: 298, column: 6, scope: !874)
!878 = !DILocation(line: 299, column: 10, scope: !879)
!879 = distinct !DILexicalBlock(scope: !870, file: !6, line: 299, column: 10)
!880 = !DILocation(line: 299, column: 13, scope: !879)
!881 = !DILocation(line: 299, column: 10, scope: !870)
!882 = !DILocation(line: 300, column: 10, scope: !883)
!883 = distinct !DILexicalBlock(scope: !879, file: !6, line: 299, column: 20)
!884 = !DILocation(line: 301, column: 6, scope: !883)
!885 = !DILocation(line: 302, column: 29, scope: !870)
!886 = !DILocation(line: 302, column: 6, scope: !870)
!887 = !DILocation(line: 302, column: 11, scope: !870)
!888 = !DILocation(line: 302, column: 18, scope: !870)
!889 = !DILocation(line: 302, column: 27, scope: !870)
!890 = !DILocation(line: 303, column: 5, scope: !870)
!891 = !DILocation(line: 304, column: 4, scope: !859)
!892 = !DILocation(line: 306, column: 4, scope: !421)
!893 = !DILocation(line: 306, column: 9, scope: !421)
!894 = !DILocation(line: 306, column: 16, scope: !421)
!895 = !DILocation(line: 306, column: 28, scope: !421)
!896 = !DILocation(line: 308, column: 8, scope: !897)
!897 = distinct !DILexicalBlock(scope: !421, file: !6, line: 308, column: 8)
!898 = !DILocation(line: 308, column: 11, scope: !897)
!899 = !DILocation(line: 308, column: 8, scope: !421)
!900 = !DILocation(line: 310, column: 41, scope: !901)
!901 = distinct !DILexicalBlock(scope: !897, file: !6, line: 308, column: 17)
!902 = !DILocation(line: 310, column: 11, scope: !901)
!903 = !DILocation(line: 311, column: 4, scope: !901)
!904 = !DILocation(line: 312, column: 3, scope: !422)
!905 = !DILocation(line: 312, column: 3, scope: !421)
!906 = !DILocation(line: 313, column: 10, scope: !907)
!907 = distinct !DILexicalBlock(scope: !422, file: !6, line: 312, column: 10)
!908 = !DILocation(line: 313, column: 17, scope: !907)
!909 = !DILocation(line: 313, column: 25, scope: !907)
!910 = !DILocation(line: 315, column: 2, scope: !418)
!911 = !DILocation(line: 315, column: 2, scope: !417)
!912 = !DILocation(line: 284, column: 60, scope: !418)
!913 = !DILocation(line: 284, column: 2, scope: !418)
!914 = distinct !{!914, !842, !915}
!915 = !DILocation(line: 315, column: 2, scope: !419)
!916 = !DILocation(line: 316, column: 1, scope: !393)
!917 = distinct !DISubprogram(name: "z_dummy_thread_init", scope: !918, file: !918, line: 239, type: !919, scopeLine: 240, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !921)
!918 = !DIFile(filename: "kernel/include/kswap.h", directory: "/home/sri/zephyrproject/zephyr")
!919 = !DISubroutineType(types: !920)
!920 = !{null, !246}
!921 = !{!922}
!922 = !DILocalVariable(name: "dummy_thread", arg: 1, scope: !917, file: !918, line: 239, type: !246)
!923 = !DILocation(line: 239, column: 57, scope: !917)
!924 = !DILocation(line: 241, column: 2, scope: !917)
!925 = !DILocation(line: 241, column: 16, scope: !917)
!926 = !DILocation(line: 241, column: 21, scope: !917)
!927 = !DILocation(line: 241, column: 34, scope: !917)
!928 = !DILocation(line: 245, column: 2, scope: !917)
!929 = !DILocation(line: 245, column: 16, scope: !917)
!930 = !DILocation(line: 245, column: 21, scope: !917)
!931 = !DILocation(line: 245, column: 34, scope: !917)
!932 = !DILocation(line: 256, column: 2, scope: !917)
!933 = !DILocation(line: 256, column: 16, scope: !917)
!934 = !DILocation(line: 256, column: 30, scope: !917)
!935 = !DILocation(line: 263, column: 32, scope: !917)
!936 = !DILocation(line: 263, column: 30, scope: !917)
!937 = !DILocation(line: 264, column: 1, scope: !917)
!938 = !DISubprogram(name: "z_device_state_init", scope: !939, file: !939, line: 65, type: !696, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !347)
!939 = !DIFile(filename: "kernel/include/kernel_internal.h", directory: "/home/sri/zephyrproject/zephyr")
!940 = distinct !DISubprogram(name: "switch_to_main_thread", scope: !6, file: !6, line: 494, type: !941, scopeLine: 495, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !943)
!941 = !DISubroutineType(types: !942)
!942 = !{null, !184}
!943 = !{!944}
!944 = !DILocalVariable(name: "stack_ptr", arg: 1, scope: !940, file: !6, line: 494, type: !184)
!945 = !DILocation(line: 494, column: 71, scope: !940)
!946 = !DILocation(line: 497, column: 45, scope: !940)
!947 = !DILocation(line: 497, column: 2, scope: !940)
!948 = !DILocation(line: 507, column: 2, scope: !940)
!949 = distinct !DISubprogram(name: "prepare_multithreading", scope: !6, file: !6, line: 461, type: !950, scopeLine: 462, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !952)
!950 = !DISubroutineType(types: !951)
!951 = !{!184}
!952 = !{!953}
!953 = !DILocalVariable(name: "stack_ptr", scope: !949, file: !6, line: 463, type: !184)
!954 = !DILocation(line: 463, column: 2, scope: !949)
!955 = !DILocation(line: 463, column: 8, scope: !949)
!956 = !DILocation(line: 466, column: 2, scope: !949)
!957 = !DILocation(line: 478, column: 24, scope: !949)
!958 = !DILocation(line: 480, column: 14, scope: !949)
!959 = !DILocation(line: 480, column: 12, scope: !949)
!960 = !DILocation(line: 485, column: 2, scope: !949)
!961 = !DILocation(line: 486, column: 2, scope: !949)
!962 = !DILocation(line: 488, column: 2, scope: !949)
!963 = !DILocation(line: 490, column: 9, scope: !949)
!964 = !DILocation(line: 491, column: 1, scope: !949)
!965 = !DILocation(line: 490, column: 2, scope: !949)
!966 = !DISubprogram(name: "z_timeout_expires", scope: !332, file: !332, line: 642, type: !967, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !347)
!967 = !DISubroutineType(types: !968)
!968 = !{!480, !969}
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 32)
!970 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !301)
!971 = !DISubprogram(name: "z_timeout_remaining", scope: !332, file: !332, line: 643, type: !967, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !347)
!972 = distinct !DISubprogram(name: "sys_sflist_is_empty", scope: !568, file: !568, line: 335, type: !973, scopeLine: 335, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !976)
!973 = !DISubroutineType(types: !974)
!974 = !{!173, !975}
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 32)
!976 = !{!977}
!977 = !DILocalVariable(name: "list", arg: 1, scope: !972, file: !568, line: 335, type: !975)
!978 = !DILocation(line: 335, column: 55, scope: !972)
!979 = !DILocation(line: 335, column: 92, scope: !972)
!980 = !DILocation(line: 335, column: 71, scope: !972)
!981 = !DILocation(line: 335, column: 98, scope: !972)
!982 = !DILocation(line: 335, column: 63, scope: !972)
!983 = distinct !DISubprogram(name: "sys_sflist_peek_head", scope: !568, file: !568, line: 255, type: !984, scopeLine: 256, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !986)
!984 = !DISubroutineType(types: !985)
!985 = !{!572, !975}
!986 = !{!987}
!987 = !DILocalVariable(name: "list", arg: 1, scope: !983, file: !568, line: 255, type: !975)
!988 = !DILocation(line: 255, column: 64, scope: !983)
!989 = !DILocation(line: 257, column: 9, scope: !983)
!990 = !DILocation(line: 257, column: 15, scope: !983)
!991 = !DILocation(line: 257, column: 2, scope: !983)
!992 = !DISubprogram(name: "z_device_is_ready", scope: !155, file: !155, line: 724, type: !637, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !347)
!993 = !DISubprogram(name: "z_setup_new_thread", scope: !939, file: !939, line: 70, type: !994, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !347)
!994 = !DISubroutineType(types: !995)
!995 = !{!184, !246, !734, !137, !996, !140, !140, !140, !141, !183, !158}
!996 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_thread_entry_t", file: !736, line: 46, baseType: !997)
!997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !998, size: 32)
!998 = !DISubroutineType(types: !999)
!999 = !{null, !140, !140, !140}
!1000 = distinct !DISubprogram(name: "z_mark_thread_as_started", scope: !1001, file: !1001, line: 157, type: !919, scopeLine: 158, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1002)
!1001 = !DIFile(filename: "kernel/include/ksched.h", directory: "/home/sri/zephyrproject/zephyr")
!1002 = !{!1003}
!1003 = !DILocalVariable(name: "thread", arg: 1, scope: !1000, file: !1001, line: 157, type: !246)
!1004 = !DILocation(line: 157, column: 62, scope: !1000)
!1005 = !DILocation(line: 159, column: 2, scope: !1000)
!1006 = !DILocation(line: 159, column: 10, scope: !1000)
!1007 = !DILocation(line: 159, column: 15, scope: !1000)
!1008 = !DILocation(line: 159, column: 28, scope: !1000)
!1009 = !DILocation(line: 160, column: 1, scope: !1000)
!1010 = distinct !DISubprogram(name: "atomic_add", scope: !1011, file: !1011, line: 76, type: !1012, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1014)
!1011 = !DIFile(filename: "zephyr/include/generated/syscalls/atomic_c.h", directory: "/home/sri/zephyrproject/zephyr/build")
!1012 = !DISubroutineType(types: !1013)
!1013 = !{!771, !772, !771}
!1014 = !{!1015, !1016}
!1015 = !DILocalVariable(name: "target", arg: 1, scope: !1010, file: !1011, line: 76, type: !772)
!1016 = !DILocalVariable(name: "value", arg: 2, scope: !1010, file: !1011, line: 76, type: !771)
!1017 = !DILocation(line: 76, column: 50, scope: !1010)
!1018 = !DILocation(line: 76, column: 71, scope: !1010)
!1019 = !DILocation(line: 85, column: 2, scope: !1010)
!1020 = !DILocation(line: 85, column: 7, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !1010, file: !1011, line: 85, column: 5)
!1022 = !{i64 12833}
!1023 = !DILocation(line: 85, column: 47, scope: !1021)
!1024 = !DILocation(line: 86, column: 27, scope: !1010)
!1025 = !DILocation(line: 86, column: 35, scope: !1010)
!1026 = !DILocation(line: 86, column: 9, scope: !1010)
!1027 = !DILocation(line: 86, column: 2, scope: !1010)
!1028 = !DISubprogram(name: "z_impl_atomic_add", scope: !1011, file: !1011, line: 73, type: !1012, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !347)
!1029 = distinct !DISubprogram(name: "pm_device_runtime_auto_enable", scope: !1030, file: !1030, line: 161, type: !413, scopeLine: 162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1031)
!1030 = !DIFile(filename: "include/zephyr/pm/device_runtime.h", directory: "/home/sri/zephyrproject/zephyr")
!1031 = !{!1032}
!1032 = !DILocalVariable(name: "dev", arg: 1, scope: !1029, file: !1030, line: 161, type: !152)
!1033 = !DILocation(line: 161, column: 70, scope: !1029)
!1034 = !DILocation(line: 163, column: 9, scope: !1029)
!1035 = !DILocation(line: 164, column: 2, scope: !1029)
!1036 = !DISubprogram(name: "z_arm_fault_init", scope: !791, file: !791, line: 28, type: !696, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !347)
!1037 = !DISubprogram(name: "z_arm_cpu_idle_init", scope: !791, file: !791, line: 29, type: !696, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !347)
!1038 = distinct !DISubprogram(name: "__NVIC_SetPriority", scope: !190, file: !190, line: 732, type: !1039, scopeLine: 733, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1042)
!1039 = !DISubroutineType(types: !1040)
!1040 = !{null, !1041, !183}
!1041 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRQn_Type", file: !97, line: 107, baseType: !96)
!1042 = !{!1043, !1044}
!1043 = !DILocalVariable(name: "IRQn", arg: 1, scope: !1038, file: !190, line: 732, type: !1041)
!1044 = !DILocalVariable(name: "priority", arg: 2, scope: !1038, file: !190, line: 732, type: !183)
!1045 = !DILocation(line: 732, column: 51, scope: !1038)
!1046 = !DILocation(line: 732, column: 66, scope: !1038)
!1047 = !DILocation(line: 734, column: 17, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !1038, file: !190, line: 734, column: 7)
!1049 = !DILocation(line: 734, column: 7, scope: !1048)
!1050 = !DILocation(line: 734, column: 23, scope: !1048)
!1051 = !DILocation(line: 734, column: 7, scope: !1038)
!1052 = !DILocation(line: 736, column: 183, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !1048, file: !190, line: 735, column: 3)
!1054 = !DILocation(line: 736, column: 173, scope: !1053)
!1055 = !DILocation(line: 736, column: 190, scope: !1053)
!1056 = !DILocation(line: 736, column: 110, scope: !1053)
!1057 = !DILocation(line: 736, column: 240, scope: !1053)
!1058 = !DILocation(line: 736, column: 230, scope: !1053)
!1059 = !DILocation(line: 736, column: 249, scope: !1053)
!1060 = !DILocation(line: 736, column: 259, scope: !1053)
!1061 = !DILocation(line: 736, column: 212, scope: !1053)
!1062 = !DILocation(line: 736, column: 203, scope: !1053)
!1063 = !DILocation(line: 736, column: 201, scope: !1053)
!1064 = !DILocation(line: 737, column: 11, scope: !1053)
!1065 = !DILocation(line: 737, column: 20, scope: !1053)
!1066 = !DILocation(line: 737, column: 33, scope: !1053)
!1067 = !DILocation(line: 737, column: 81, scope: !1053)
!1068 = !DILocation(line: 737, column: 71, scope: !1053)
!1069 = !DILocation(line: 737, column: 90, scope: !1053)
!1070 = !DILocation(line: 737, column: 100, scope: !1053)
!1071 = !DILocation(line: 737, column: 53, scope: !1053)
!1072 = !DILocation(line: 736, column: 268, scope: !1053)
!1073 = !DILocation(line: 736, column: 78, scope: !1053)
!1074 = !DILocation(line: 736, column: 68, scope: !1053)
!1075 = !DILocation(line: 736, column: 85, scope: !1053)
!1076 = !DILocation(line: 736, column: 5, scope: !1053)
!1077 = !DILocation(line: 736, column: 96, scope: !1053)
!1078 = !DILocation(line: 738, column: 3, scope: !1053)
!1079 = !DILocation(line: 741, column: 202, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1048, file: !190, line: 740, column: 3)
!1081 = !DILocation(line: 741, column: 192, scope: !1080)
!1082 = !DILocation(line: 741, column: 209, scope: !1080)
!1083 = !DILocation(line: 741, column: 218, scope: !1080)
!1084 = !DILocation(line: 741, column: 224, scope: !1080)
!1085 = !DILocation(line: 741, column: 127, scope: !1080)
!1086 = !DILocation(line: 741, column: 274, scope: !1080)
!1087 = !DILocation(line: 741, column: 264, scope: !1080)
!1088 = !DILocation(line: 741, column: 283, scope: !1080)
!1089 = !DILocation(line: 741, column: 293, scope: !1080)
!1090 = !DILocation(line: 741, column: 246, scope: !1080)
!1091 = !DILocation(line: 741, column: 237, scope: !1080)
!1092 = !DILocation(line: 741, column: 235, scope: !1080)
!1093 = !DILocation(line: 742, column: 11, scope: !1080)
!1094 = !DILocation(line: 742, column: 20, scope: !1080)
!1095 = !DILocation(line: 742, column: 33, scope: !1080)
!1096 = !DILocation(line: 742, column: 81, scope: !1080)
!1097 = !DILocation(line: 742, column: 71, scope: !1080)
!1098 = !DILocation(line: 742, column: 90, scope: !1080)
!1099 = !DILocation(line: 742, column: 100, scope: !1080)
!1100 = !DILocation(line: 742, column: 53, scope: !1080)
!1101 = !DILocation(line: 741, column: 302, scope: !1080)
!1102 = !DILocation(line: 741, column: 80, scope: !1080)
!1103 = !DILocation(line: 741, column: 70, scope: !1080)
!1104 = !DILocation(line: 741, column: 87, scope: !1080)
!1105 = !DILocation(line: 741, column: 96, scope: !1080)
!1106 = !DILocation(line: 741, column: 102, scope: !1080)
!1107 = !DILocation(line: 741, column: 5, scope: !1080)
!1108 = !DILocation(line: 741, column: 113, scope: !1080)
!1109 = !DILocation(line: 744, column: 1, scope: !1038)
!1110 = !DISubprogram(name: "arch_switch_to_main_thread", scope: !1111, file: !1111, line: 170, type: !1112, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !347)
!1111 = !DIFile(filename: "kernel/include/kernel_arch_interface.h", directory: "/home/sri/zephyrproject/zephyr")
!1112 = !DISubroutineType(types: !1113)
!1113 = !{null, !246, !184, !996}
!1114 = distinct !DISubprogram(name: "bg_thread_main", scope: !6, file: !6, line: 327, type: !998, scopeLine: 328, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1115)
!1115 = !{!1116, !1117, !1118}
!1116 = !DILocalVariable(name: "unused1", arg: 1, scope: !1114, file: !6, line: 327, type: !140)
!1117 = !DILocalVariable(name: "unused2", arg: 2, scope: !1114, file: !6, line: 327, type: !140)
!1118 = !DILocalVariable(name: "unused3", arg: 3, scope: !1114, file: !6, line: 327, type: !140)
!1119 = !DILocation(line: 327, column: 34, scope: !1114)
!1120 = !DILocation(line: 327, column: 49, scope: !1114)
!1121 = !DILocation(line: 327, column: 64, scope: !1114)
!1122 = !DILocation(line: 329, column: 9, scope: !1114)
!1123 = !DILocation(line: 330, column: 9, scope: !1114)
!1124 = !DILocation(line: 331, column: 9, scope: !1114)
!1125 = !DILocation(line: 341, column: 20, scope: !1114)
!1126 = !DILocation(line: 343, column: 2, scope: !1114)
!1127 = !DILocation(line: 347, column: 2, scope: !1114)
!1128 = !DILocation(line: 355, column: 2, scope: !1114)
!1129 = !DILocation(line: 357, column: 2, scope: !1114)
!1130 = !DILocation(line: 376, column: 8, scope: !1114)
!1131 = !DILocation(line: 379, column: 34, scope: !1114)
!1132 = !DILocation(line: 385, column: 1, scope: !1114)
!1133 = !DISubprogram(name: "boot_banner", scope: !6, file: !6, line: 318, type: !696, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !347)
!1134 = !DISubprogram(name: "z_init_static_threads", scope: !332, file: !332, line: 5938, type: !696, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !347)
!1135 = !DISubprogram(name: "main", scope: !6, file: !6, line: 374, type: !409, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !347)
!1136 = !DISubprogram(name: "z_sched_init", scope: !1001, file: !1001, line: 41, type: !696, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !347)
!1137 = !DISubprogram(name: "z_ready_thread", scope: !1001, file: !1001, line: 65, type: !919, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !347)
