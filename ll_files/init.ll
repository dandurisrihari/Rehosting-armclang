; ModuleID = '../bc_files/init.bc'
source_filename = "/home/sri/zephyrproject/zephyr/kernel/init.c"
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

@.str = private unnamed_addr constant [3 x i8] c"os\00", align 1, !dbg !0
@log_const_os = hidden constant %struct.log_source_const_data { ptr @.str, i8 3 }, section "._log_const.static.log_const_os_", align 4, !dbg !7
@__bss_start = external global [0 x i8], align 1
@__bss_end = external global [0 x i8], align 1
@z_idle_threads = hidden global [1 x %struct.k_thread] zeroinitializer, align 8, !dbg !384
@_kernel = hidden global %struct.z_kernel zeroinitializer, align 4, !dbg !239
@z_interrupt_stacks = hidden global [1 x [2048 x %struct.z_thread_stack_element]] zeroinitializer, section ".noinit.\22ZEPHYR_BASE/kernel/init.c\22.2", align 8, !dbg !387
@_cpus_active = hidden global i32 0, align 4, !dbg !368
@z_main_stack = hidden global [1024 x %struct.z_thread_stack_element] zeroinitializer, section ".noinit.\22ZEPHYR_BASE/kernel/init.c\22.0", align 8, !dbg !373
@z_main_thread = hidden global %struct.k_thread zeroinitializer, align 8, !dbg !382
@z_sys_post_kernel = hidden global i8 0, align 1, !dbg !392
@z_idle_stacks = internal global [1 x [256 x %struct.z_thread_stack_element]] zeroinitializer, section ".noinit.\22ZEPHYR_BASE/kernel/init.c\22.1", align 8, !dbg !394
@z_sys_init_run_level.levels = internal global [6 x ptr] [ptr @__init_EARLY_start, ptr @__init_PRE_KERNEL_1_start, ptr @__init_PRE_KERNEL_2_start, ptr @__init_POST_KERNEL_start, ptr @__init_APPLICATION_start, ptr @__init_end], align 4, !dbg !399
@__init_EARLY_start = external constant [0 x %struct.init_entry], align 4
@__init_PRE_KERNEL_1_start = external constant [0 x %struct.init_entry], align 4
@__init_PRE_KERNEL_2_start = external constant [0 x %struct.init_entry], align 4
@__init_POST_KERNEL_start = external constant [0 x %struct.init_entry], align 4
@__init_APPLICATION_start = external constant [0 x %struct.init_entry], align 4
@__init_end = external constant [0 x %struct.init_entry], align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"main\00", align 1, !dbg !424
@llvm.used = appending global [1 x ptr] [ptr @log_const_os], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_k_object_access_grant(ptr noundef %0, ptr noundef %1) #0 !dbg !444 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !447, metadata !DIExpression()), !dbg !448
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !449, metadata !DIExpression()), !dbg !450
  %5 = load ptr, ptr %3, align 4, !dbg !451
  %6 = load ptr, ptr %4, align 4, !dbg !452
  ret void, !dbg !453
}

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_k_object_release(ptr noundef %0) #0 !dbg !454 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !457, metadata !DIExpression()), !dbg !458
  %3 = load ptr, ptr %2, align 4, !dbg !459
  ret void, !dbg !460
}

; Function Attrs: noinline nounwind optnone
define internal ptr @z_impl_k_object_alloc(i8 noundef zeroext %0) #0 !dbg !461 {
  %2 = alloca i8, align 1
  store i8 %0, ptr %2, align 1
  call void @llvm.dbg.declare(metadata ptr %2, metadata !464, metadata !DIExpression()), !dbg !465
  %3 = load i8, ptr %2, align 1, !dbg !466
  ret ptr null, !dbg !467
}

; Function Attrs: noinline nounwind optnone
define internal ptr @z_impl_k_object_alloc_size(i8 noundef zeroext %0, i32 noundef %1) #0 !dbg !468 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8 %0, ptr %3, align 1
  call void @llvm.dbg.declare(metadata ptr %3, metadata !471, metadata !DIExpression()), !dbg !472
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !473, metadata !DIExpression()), !dbg !474
  %5 = load i8, ptr %3, align 1, !dbg !475
  %6 = load i32, ptr %4, align 4, !dbg !476
  ret ptr null, !dbg !477
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_thread_timeout_expires_ticks(ptr noundef %0) #0 !dbg !478 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !485, metadata !DIExpression()), !dbg !486
  %3 = load ptr, ptr %2, align 4, !dbg !487
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !488
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !489
  %6 = call i64 @z_timeout_expires(ptr noundef %5), !dbg !490
  ret i64 %6, !dbg !491
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_thread_timeout_remaining_ticks(ptr noundef %0) #0 !dbg !492 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !493, metadata !DIExpression()), !dbg !494
  %3 = load ptr, ptr %2, align 4, !dbg !495
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !496
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !497
  %6 = call i64 @z_timeout_remaining(ptr noundef %5), !dbg !498
  ret i64 %6, !dbg !499
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_timer_expires_ticks(ptr noundef %0) #0 !dbg !500 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !522, metadata !DIExpression()), !dbg !523
  %3 = load ptr, ptr %2, align 4, !dbg !524
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !525
  %5 = call i64 @z_timeout_expires(ptr noundef %4), !dbg !526
  ret i64 %5, !dbg !527
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_timer_remaining_ticks(ptr noundef %0) #0 !dbg !528 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !529, metadata !DIExpression()), !dbg !530
  %3 = load ptr, ptr %2, align 4, !dbg !531
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !532
  %5 = call i64 @z_timeout_remaining(ptr noundef %4), !dbg !533
  ret i64 %5, !dbg !534
}

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_k_timer_user_data_set(ptr noundef %0, ptr noundef %1) #0 !dbg !535 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !538, metadata !DIExpression()), !dbg !539
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !540, metadata !DIExpression()), !dbg !541
  %5 = load ptr, ptr %4, align 4, !dbg !542
  %6 = load ptr, ptr %3, align 4, !dbg !543
  %7 = getelementptr inbounds %struct.k_timer, ptr %6, i32 0, i32 6, !dbg !544
  store ptr %5, ptr %7, align 4, !dbg !545
  ret void, !dbg !546
}

; Function Attrs: noinline nounwind optnone
define internal ptr @z_impl_k_timer_user_data_get(ptr noundef %0) #0 !dbg !547 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !550, metadata !DIExpression()), !dbg !551
  %3 = load ptr, ptr %2, align 4, !dbg !552
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 6, !dbg !553
  %5 = load ptr, ptr %4, align 4, !dbg !553
  ret ptr %5, !dbg !554
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_queue_is_empty(ptr noundef %0) #0 !dbg !555 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !576, metadata !DIExpression()), !dbg !577
  %3 = load ptr, ptr %2, align 4, !dbg !578
  %4 = getelementptr inbounds %struct.k_queue, ptr %3, i32 0, i32 0, !dbg !579
  %5 = call zeroext i1 @sys_sflist_is_empty(ptr noundef %4), !dbg !580
  %6 = zext i1 %5 to i32, !dbg !581
  ret i32 %6, !dbg !582
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_sem_count_get(ptr noundef %0) #0 !dbg !583 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !592, metadata !DIExpression()), !dbg !593
  %3 = load ptr, ptr %2, align 4, !dbg !594
  %4 = getelementptr inbounds %struct.k_sem, ptr %3, i32 0, i32 1, !dbg !595
  %5 = load i32, ptr %4, align 4, !dbg !595
  ret i32 %5, !dbg !596
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_msgq_num_free_get(ptr noundef %0) #0 !dbg !597 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !613, metadata !DIExpression()), !dbg !614
  %3 = load ptr, ptr %2, align 4, !dbg !615
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 3, !dbg !616
  %5 = load i32, ptr %4, align 4, !dbg !616
  %6 = load ptr, ptr %2, align 4, !dbg !617
  %7 = getelementptr inbounds %struct.k_msgq, ptr %6, i32 0, i32 8, !dbg !618
  %8 = load i32, ptr %7, align 4, !dbg !618
  %9 = sub i32 %5, %8, !dbg !619
  ret i32 %9, !dbg !620
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_msgq_num_used_get(ptr noundef %0) #0 !dbg !621 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !622, metadata !DIExpression()), !dbg !623
  %3 = load ptr, ptr %2, align 4, !dbg !624
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 8, !dbg !625
  %5 = load i32, ptr %4, align 4, !dbg !625
  ret i32 %5, !dbg !626
}

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @z_impl_device_is_ready(ptr noundef %0) #0 !dbg !627 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !630, metadata !DIExpression()), !dbg !631
  %3 = load ptr, ptr %2, align 4, !dbg !632
  %4 = call zeroext i1 @z_device_is_ready(ptr noundef %3), !dbg !633
  ret i1 %4, !dbg !634
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_entropy_get_entropy(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %2) #0 !dbg !635 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i16, align 2
  %7 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !636, metadata !DIExpression()), !dbg !637
  store ptr %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !638, metadata !DIExpression()), !dbg !639
  store i16 %2, ptr %6, align 2
  call void @llvm.dbg.declare(metadata ptr %6, metadata !640, metadata !DIExpression()), !dbg !641
  call void @llvm.dbg.declare(metadata ptr %7, metadata !642, metadata !DIExpression()), !dbg !643
  %8 = load ptr, ptr %4, align 4, !dbg !644
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 2, !dbg !645
  %10 = load ptr, ptr %9, align 4, !dbg !645
  store ptr %10, ptr %7, align 4, !dbg !643
  %11 = load ptr, ptr %7, align 4, !dbg !646
  %12 = getelementptr inbounds %struct.entropy_driver_api, ptr %11, i32 0, i32 0, !dbg !647
  %13 = load ptr, ptr %12, align 4, !dbg !647
  %14 = load ptr, ptr %4, align 4, !dbg !648
  %15 = load ptr, ptr %5, align 4, !dbg !649
  %16 = load i16, ptr %6, align 2, !dbg !650
  %17 = call i32 %13(ptr noundef %14, ptr noundef %15, i16 noundef zeroext %16), !dbg !646
  ret i32 %17, !dbg !651
}

; Function Attrs: noinline nounwind optnone
define weak hidden void @z_early_memset(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 !dbg !652 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !655, metadata !DIExpression()), !dbg !656
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !657, metadata !DIExpression()), !dbg !658
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !659, metadata !DIExpression()), !dbg !660
  %7 = load ptr, ptr %4, align 4, !dbg !661
  %8 = load i32, ptr %5, align 4, !dbg !662
  %9 = trunc i32 %8 to i8, !dbg !663
  %10 = load i32, ptr %6, align 4, !dbg !664
  call void @llvm.memset.p0.i32(ptr align 1 %7, i8 %9, i32 %10, i1 false), !dbg !663
  ret void, !dbg !665
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: noinline nounwind optnone
define weak hidden void @z_early_memcpy(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 !dbg !666 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !669, metadata !DIExpression()), !dbg !670
  store ptr %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !671, metadata !DIExpression()), !dbg !672
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !673, metadata !DIExpression()), !dbg !674
  %7 = load ptr, ptr %4, align 4, !dbg !675
  %8 = load ptr, ptr %5, align 4, !dbg !676
  %9 = load i32, ptr %6, align 4, !dbg !677
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %7, ptr align 1 %8, i32 %9, i1 false), !dbg !678
  ret void, !dbg !679
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: noinline nounwind optnone
define hidden void @z_bss_zero() #0 !dbg !680 {
  call void @z_early_memset(ptr noundef @__bss_start, i32 noundef 0, i32 noundef sub (i32 ptrtoint (ptr @__bss_end to i32), i32 ptrtoint (ptr @__bss_start to i32))), !dbg !683
  ret void, !dbg !684
}

; Function Attrs: noinline nounwind optnone
define hidden void @z_init_cpu(i32 noundef %0) #0 !dbg !685 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !688, metadata !DIExpression()), !dbg !689
  %3 = load i32, ptr %2, align 4, !dbg !690
  call void @init_idle_thread(i32 noundef %3), !dbg !691
  %4 = load i32, ptr %2, align 4, !dbg !692
  %5 = getelementptr inbounds [1 x %struct.k_thread], ptr @z_idle_threads, i32 0, i32 %4, !dbg !693
  %6 = load i32, ptr %2, align 4, !dbg !694
  %7 = getelementptr inbounds [1 x %struct._cpu], ptr @_kernel, i32 0, i32 %6, !dbg !695
  %8 = getelementptr inbounds %struct._cpu, ptr %7, i32 0, i32 3, !dbg !696
  store ptr %5, ptr %8, align 4, !dbg !697
  %9 = load i32, ptr %2, align 4, !dbg !698
  %10 = trunc i32 %9 to i8, !dbg !698
  %11 = load i32, ptr %2, align 4, !dbg !699
  %12 = getelementptr inbounds [1 x %struct._cpu], ptr @_kernel, i32 0, i32 %11, !dbg !700
  %13 = getelementptr inbounds %struct._cpu, ptr %12, i32 0, i32 4, !dbg !701
  store i8 %10, ptr %13, align 4, !dbg !702
  %14 = load i32, ptr %2, align 4, !dbg !703
  %15 = getelementptr inbounds [1 x [2048 x %struct.z_thread_stack_element]], ptr @z_interrupt_stacks, i32 0, i32 %14, !dbg !704
  %16 = getelementptr inbounds [2048 x %struct.z_thread_stack_element], ptr %15, i32 0, i32 0, !dbg !704
  %17 = call ptr @Z_KERNEL_STACK_BUFFER(ptr noundef %16), !dbg !705
  %18 = getelementptr inbounds i8, ptr %17, i32 2048, !dbg !706
  %19 = load i32, ptr %2, align 4, !dbg !707
  %20 = getelementptr inbounds [1 x %struct._cpu], ptr @_kernel, i32 0, i32 %19, !dbg !708
  %21 = getelementptr inbounds %struct._cpu, ptr %20, i32 0, i32 1, !dbg !709
  store ptr %18, ptr %21, align 4, !dbg !710
  %22 = call i32 @atomic_inc(ptr noundef @_cpus_active), !dbg !711
  ret void, !dbg !712
}

; Function Attrs: noinline nounwind optnone
define internal void @init_idle_thread(i32 noundef %0) #0 !dbg !713 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !714, metadata !DIExpression()), !dbg !715
  call void @llvm.dbg.declare(metadata ptr %3, metadata !716, metadata !DIExpression()), !dbg !717
  %6 = load i32, ptr %2, align 4, !dbg !718
  %7 = getelementptr inbounds [1 x %struct.k_thread], ptr @z_idle_threads, i32 0, i32 %6, !dbg !719
  store ptr %7, ptr %3, align 4, !dbg !717
  call void @llvm.dbg.declare(metadata ptr %4, metadata !720, metadata !DIExpression()), !dbg !724
  %8 = load i32, ptr %2, align 4, !dbg !725
  %9 = getelementptr inbounds [1 x [256 x %struct.z_thread_stack_element]], ptr @z_idle_stacks, i32 0, i32 %8, !dbg !726
  %10 = getelementptr inbounds [256 x %struct.z_thread_stack_element], ptr %9, i32 0, i32 0, !dbg !726
  store ptr %10, ptr %4, align 4, !dbg !724
  call void @llvm.dbg.declare(metadata ptr %5, metadata !727, metadata !DIExpression()), !dbg !728
  store ptr null, ptr %5, align 4, !dbg !728
  %11 = load ptr, ptr %3, align 4, !dbg !729
  %12 = load ptr, ptr %4, align 4, !dbg !730
  %13 = load i32, ptr %2, align 4, !dbg !731
  %14 = getelementptr inbounds [1 x %struct._cpu], ptr @_kernel, i32 0, i32 %13, !dbg !732
  %15 = load ptr, ptr %5, align 4, !dbg !733
  %16 = call ptr @z_setup_new_thread(ptr noundef %11, ptr noundef %12, i32 noundef 256, ptr noundef @idle, ptr noundef %14, ptr noundef null, ptr noundef null, i32 noundef 15, i32 noundef 1, ptr noundef %15), !dbg !734
  %17 = load ptr, ptr %3, align 4, !dbg !735
  call void @z_mark_thread_as_started(ptr noundef %17), !dbg !736
  ret void, !dbg !737
}

; Function Attrs: noinline nounwind optnone
define internal ptr @Z_KERNEL_STACK_BUFFER(ptr noundef %0) #0 !dbg !738 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !741, metadata !DIExpression()), !dbg !742
  %3 = load ptr, ptr %2, align 4, !dbg !743
  %4 = getelementptr inbounds i8, ptr %3, i32 0, !dbg !744
  ret ptr %4, !dbg !745
}

; Function Attrs: noinline nounwind optnone
define internal i32 @atomic_inc(ptr noundef %0) #0 !dbg !746 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !752, metadata !DIExpression()), !dbg !753
  %3 = load ptr, ptr %2, align 4, !dbg !754
  %4 = call i32 @atomic_add(ptr noundef %3, i32 noundef 1), !dbg !755
  ret i32 %4, !dbg !756
}

; Function Attrs: noinline noreturn nounwind optnone
define hidden void @z_cstart() #4 !dbg !757 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.k_thread, align 8
  call void @gcov_static_init(), !dbg !758
  call void @z_sys_init_run_level(i8 noundef zeroext 0), !dbg !759
  call void @llvm.dbg.declare(metadata ptr %2, metadata !760, metadata !DIExpression()), !dbg !763
  %4 = call ptr @Z_KERNEL_STACK_BUFFER(ptr noundef @z_interrupt_stacks), !dbg !768
  %5 = ptrtoint ptr %4 to i32, !dbg !769
  %6 = add i32 %5, 2048, !dbg !770
  store i32 %6, ptr %2, align 4, !dbg !763
  %7 = load i32, ptr %2, align 4, !dbg !771
  store i32 %7, ptr %1, align 4
  call void @llvm.dbg.declare(metadata ptr %1, metadata !772, metadata !DIExpression()), !dbg !777
  %8 = load i32, ptr %1, align 4, !dbg !779
  call void asm sideeffect "MSR msp, $0", "r"(i32 %8) #6, !dbg !780, !srcloc !781
  call void @__NVIC_SetPriority(i8 noundef signext -2, i32 noundef 255), !dbg !782
  call void @z_arm_fault_init() #6, !dbg !786
  call void @z_arm_cpu_idle_init() #6, !dbg !787
  call void @log_core_init(), !dbg !788
  call void @llvm.dbg.declare(metadata ptr %3, metadata !789, metadata !DIExpression()), !dbg !790
  call void @z_dummy_thread_init(ptr noundef %3), !dbg !791
  call void @z_device_state_init(), !dbg !792
  call void @z_sys_init_run_level(i8 noundef zeroext 1), !dbg !793
  call void @z_sys_init_run_level(i8 noundef zeroext 2), !dbg !794
  %9 = call ptr @prepare_multithreading(), !dbg !795
  call void @switch_to_main_thread(ptr noundef %9) #7, !dbg !796
  unreachable, !dbg !796
}

; Function Attrs: noinline nounwind optnone
define internal void @gcov_static_init() #0 !dbg !797 {
  ret void, !dbg !799
}

; Function Attrs: noinline nounwind optnone
define internal void @z_sys_init_run_level(i8 noundef zeroext %0) #0 !dbg !401 {
  %2 = alloca i8, align 1
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  store i8 %0, ptr %2, align 1
  call void @llvm.dbg.declare(metadata ptr %2, metadata !800, metadata !DIExpression()), !dbg !801
  call void @llvm.dbg.declare(metadata ptr %3, metadata !802, metadata !DIExpression()), !dbg !803
  %6 = load i8, ptr %2, align 1, !dbg !804
  %7 = zext i8 %6 to i32, !dbg !806
  %8 = getelementptr inbounds [6 x ptr], ptr @z_sys_init_run_level.levels, i32 0, i32 %7, !dbg !806
  %9 = load ptr, ptr %8, align 4, !dbg !806
  store ptr %9, ptr %3, align 4, !dbg !807
  br label %10, !dbg !808

10:                                               ; preds = %75, %1
  %11 = load ptr, ptr %3, align 4, !dbg !809
  %12 = load i8, ptr %2, align 1, !dbg !811
  %13 = zext i8 %12 to i32, !dbg !811
  %14 = add nsw i32 %13, 1, !dbg !812
  %15 = getelementptr inbounds [6 x ptr], ptr @z_sys_init_run_level.levels, i32 0, i32 %14, !dbg !813
  %16 = load ptr, ptr %15, align 4, !dbg !813
  %17 = icmp ult ptr %11, %16, !dbg !814
  br i1 %17, label %18, label %78, !dbg !815

18:                                               ; preds = %10
  call void @llvm.dbg.declare(metadata ptr %4, metadata !816, metadata !DIExpression()), !dbg !818
  %19 = load ptr, ptr %3, align 4, !dbg !819
  %20 = getelementptr inbounds %struct.init_entry, ptr %19, i32 0, i32 1, !dbg !820
  %21 = load ptr, ptr %20, align 4, !dbg !820
  store ptr %21, ptr %4, align 4, !dbg !818
  %22 = load ptr, ptr %4, align 4, !dbg !821
  %23 = icmp ne ptr %22, null, !dbg !823
  br i1 %23, label %24, label %69, !dbg !824

24:                                               ; preds = %18
  call void @llvm.dbg.declare(metadata ptr %5, metadata !825, metadata !DIExpression()), !dbg !827
  store i32 0, ptr %5, align 4, !dbg !827
  %25 = load ptr, ptr %3, align 4, !dbg !828
  %26 = getelementptr inbounds %struct.init_entry, ptr %25, i32 0, i32 0, !dbg !830
  %27 = load ptr, ptr %26, align 4, !dbg !831
  %28 = icmp ne ptr %27, null, !dbg !832
  br i1 %28, label %29, label %55, !dbg !833

29:                                               ; preds = %24
  %30 = load ptr, ptr %3, align 4, !dbg !834
  %31 = getelementptr inbounds %struct.init_entry, ptr %30, i32 0, i32 0, !dbg !836
  %32 = load ptr, ptr %31, align 4, !dbg !837
  %33 = load ptr, ptr %4, align 4, !dbg !838
  %34 = call i32 %32(ptr noundef %33), !dbg !834
  store i32 %34, ptr %5, align 4, !dbg !839
  %35 = load i32, ptr %5, align 4, !dbg !840
  %36 = icmp ne i32 %35, 0, !dbg !842
  br i1 %36, label %37, label %54, !dbg !843

37:                                               ; preds = %29
  %38 = load i32, ptr %5, align 4, !dbg !844
  %39 = icmp slt i32 %38, 0, !dbg !847
  br i1 %39, label %40, label %43, !dbg !848

40:                                               ; preds = %37
  %41 = load i32, ptr %5, align 4, !dbg !849
  %42 = sub nsw i32 0, %41, !dbg !851
  store i32 %42, ptr %5, align 4, !dbg !852
  br label %43, !dbg !853

43:                                               ; preds = %40, %37
  %44 = load i32, ptr %5, align 4, !dbg !854
  %45 = icmp sgt i32 %44, 255, !dbg !856
  br i1 %45, label %46, label %47, !dbg !857

46:                                               ; preds = %43
  store i32 255, ptr %5, align 4, !dbg !858
  br label %47, !dbg !860

47:                                               ; preds = %46, %43
  %48 = load i32, ptr %5, align 4, !dbg !861
  %49 = trunc i32 %48 to i8, !dbg !861
  %50 = load ptr, ptr %4, align 4, !dbg !862
  %51 = getelementptr inbounds %struct.device, ptr %50, i32 0, i32 3, !dbg !863
  %52 = load ptr, ptr %51, align 4, !dbg !863
  %53 = getelementptr inbounds %struct.device_state, ptr %52, i32 0, i32 0, !dbg !864
  store i8 %49, ptr %53, align 1, !dbg !865
  br label %54, !dbg !866

54:                                               ; preds = %47, %29
  br label %55, !dbg !867

55:                                               ; preds = %54, %24
  %56 = load ptr, ptr %4, align 4, !dbg !868
  %57 = getelementptr inbounds %struct.device, ptr %56, i32 0, i32 3, !dbg !869
  %58 = load ptr, ptr %57, align 4, !dbg !869
  %59 = getelementptr inbounds %struct.device_state, ptr %58, i32 0, i32 1, !dbg !870
  %60 = load i8, ptr %59, align 1, !dbg !871
  %61 = and i8 %60, -2, !dbg !871
  %62 = or i8 %61, 1, !dbg !871
  store i8 %62, ptr %59, align 1, !dbg !871
  %63 = load i32, ptr %5, align 4, !dbg !872
  %64 = icmp eq i32 %63, 0, !dbg !874
  br i1 %64, label %65, label %68, !dbg !875

65:                                               ; preds = %55
  %66 = load ptr, ptr %4, align 4, !dbg !876
  %67 = call i32 @pm_device_runtime_auto_enable(ptr noundef %66), !dbg !878
  br label %68, !dbg !879

68:                                               ; preds = %65, %55
  br label %74, !dbg !880

69:                                               ; preds = %18
  %70 = load ptr, ptr %3, align 4, !dbg !881
  %71 = getelementptr inbounds %struct.init_entry, ptr %70, i32 0, i32 0, !dbg !883
  %72 = load ptr, ptr %71, align 4, !dbg !884
  %73 = call i32 %72(), !dbg !881
  br label %74

74:                                               ; preds = %69, %68
  br label %75, !dbg !885

75:                                               ; preds = %74
  %76 = load ptr, ptr %3, align 4, !dbg !886
  %77 = getelementptr inbounds %struct.init_entry, ptr %76, i32 1, !dbg !886
  store ptr %77, ptr %3, align 4, !dbg !886
  br label %10, !dbg !887, !llvm.loop !888

78:                                               ; preds = %10
  ret void, !dbg !890
}

declare void @log_core_init() #5

; Function Attrs: noinline nounwind optnone
define internal void @z_dummy_thread_init(ptr noundef %0) #0 !dbg !891 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !895, metadata !DIExpression()), !dbg !896
  %3 = load ptr, ptr %2, align 4, !dbg !897
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !898
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 3, !dbg !899
  store i8 1, ptr %5, align 1, !dbg !900
  %6 = load ptr, ptr %2, align 4, !dbg !901
  %7 = getelementptr inbounds %struct.k_thread, ptr %6, i32 0, i32 0, !dbg !902
  %8 = getelementptr inbounds %struct._thread_base, ptr %7, i32 0, i32 2, !dbg !903
  store i8 1, ptr %8, align 4, !dbg !904
  %9 = load ptr, ptr %2, align 4, !dbg !905
  %10 = getelementptr inbounds %struct.k_thread, ptr %9, i32 0, i32 5, !dbg !906
  store ptr null, ptr %10, align 4, !dbg !907
  %11 = load ptr, ptr %2, align 4, !dbg !908
  store ptr %11, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !909
  ret void, !dbg !910
}

declare void @z_device_state_init() #5

; Function Attrs: noinline noreturn nounwind optnone
define internal void @switch_to_main_thread(ptr noundef %0) #4 !dbg !911 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !914, metadata !DIExpression()), !dbg !915
  %3 = load ptr, ptr %2, align 4, !dbg !916
  call void @arch_switch_to_main_thread(ptr noundef @z_main_thread, ptr noundef %3, ptr noundef @bg_thread_main), !dbg !917
  unreachable, !dbg !918
}

; Function Attrs: noinline nounwind optnone
define internal ptr @prepare_multithreading() #0 !dbg !919 {
  %1 = alloca ptr, align 4
  call void @llvm.dbg.declare(metadata ptr %1, metadata !922, metadata !DIExpression()), !dbg !923
  call void @z_sched_init(), !dbg !924
  store ptr @z_main_thread, ptr getelementptr inbounds (%struct.z_kernel, ptr @_kernel, i32 0, i32 1), align 4, !dbg !925
  %2 = call ptr @z_setup_new_thread(ptr noundef @z_main_thread, ptr noundef @z_main_stack, i32 noundef 1024, ptr noundef @bg_thread_main, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef 1, ptr noundef @.str.1), !dbg !926
  store ptr %2, ptr %1, align 4, !dbg !927
  call void @z_mark_thread_as_started(ptr noundef @z_main_thread), !dbg !928
  call void @z_ready_thread(ptr noundef @z_main_thread), !dbg !929
  call void @z_init_cpu(i32 noundef 0), !dbg !930
  %3 = load ptr, ptr %1, align 4, !dbg !931
  ret ptr %3, !dbg !932
}

declare i64 @z_timeout_expires(ptr noundef) #5

declare i64 @z_timeout_remaining(ptr noundef) #5

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @sys_sflist_is_empty(ptr noundef %0) #0 !dbg !933 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !937, metadata !DIExpression()), !dbg !938
  %3 = load ptr, ptr %2, align 4, !dbg !939
  %4 = call ptr @sys_sflist_peek_head(ptr noundef %3), !dbg !940
  %5 = icmp eq ptr %4, null, !dbg !941
  ret i1 %5, !dbg !942
}

; Function Attrs: noinline nounwind optnone
define internal ptr @sys_sflist_peek_head(ptr noundef %0) #0 !dbg !943 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !946, metadata !DIExpression()), !dbg !947
  %3 = load ptr, ptr %2, align 4, !dbg !948
  %4 = getelementptr inbounds %struct._sflist, ptr %3, i32 0, i32 0, !dbg !949
  %5 = load ptr, ptr %4, align 4, !dbg !949
  ret ptr %5, !dbg !950
}

declare zeroext i1 @z_device_is_ready(ptr noundef) #5

declare ptr @z_setup_new_thread(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #5

declare void @idle(ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: noinline nounwind optnone
define internal void @z_mark_thread_as_started(ptr noundef %0) #0 !dbg !951 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !953, metadata !DIExpression()), !dbg !954
  %3 = load ptr, ptr %2, align 4, !dbg !955
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !956
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 3, !dbg !957
  %6 = load i8, ptr %5, align 1, !dbg !958
  %7 = zext i8 %6 to i32, !dbg !958
  %8 = and i32 %7, -5, !dbg !958
  %9 = trunc i32 %8 to i8, !dbg !958
  store i8 %9, ptr %5, align 1, !dbg !958
  ret void, !dbg !959
}

; Function Attrs: noinline nounwind optnone
define internal i32 @atomic_add(ptr noundef %0, i32 noundef %1) #0 !dbg !960 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !964, metadata !DIExpression()), !dbg !965
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !966, metadata !DIExpression()), !dbg !967
  br label %5, !dbg !968

5:                                                ; preds = %2
  call void asm sideeffect "", "~{memory}"() #6, !dbg !969, !srcloc !971
  br label %6, !dbg !972

6:                                                ; preds = %5
  %7 = load ptr, ptr %3, align 4, !dbg !973
  %8 = load i32, ptr %4, align 4, !dbg !974
  %9 = call i32 @z_impl_atomic_add(ptr noundef %7, i32 noundef %8), !dbg !975
  ret i32 %9, !dbg !976
}

declare i32 @z_impl_atomic_add(ptr noundef, i32 noundef) #5

; Function Attrs: noinline nounwind optnone
define internal i32 @pm_device_runtime_auto_enable(ptr noundef %0) #0 !dbg !977 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !979, metadata !DIExpression()), !dbg !980
  %3 = load ptr, ptr %2, align 4, !dbg !981
  ret i32 0, !dbg !982
}

declare void @z_arm_fault_init() #5

declare void @z_arm_cpu_idle_init() #5

; Function Attrs: noinline nounwind optnone
define internal void @__NVIC_SetPriority(i8 noundef signext %0, i32 noundef %1) #0 !dbg !983 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8 %0, ptr %3, align 1
  call void @llvm.dbg.declare(metadata ptr %3, metadata !987, metadata !DIExpression()), !dbg !988
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !989, metadata !DIExpression()), !dbg !990
  %5 = load i8, ptr %3, align 1, !dbg !991
  %6 = sext i8 %5 to i32, !dbg !993
  %7 = icmp sge i32 %6, 0, !dbg !994
  br i1 %7, label %8, label %34, !dbg !995

8:                                                ; preds = %2
  %9 = load i8, ptr %3, align 1, !dbg !996
  %10 = sext i8 %9 to i32, !dbg !998
  %11 = lshr i32 %10, 2, !dbg !999
  %12 = getelementptr inbounds [8 x i32], ptr getelementptr inbounds (%struct.NVIC_Type, ptr inttoptr (i32 -536813312 to ptr), i32 0, i32 9), i32 0, i32 %11, !dbg !1000
  %13 = load volatile i32, ptr %12, align 4, !dbg !1000
  %14 = load i8, ptr %3, align 1, !dbg !1001
  %15 = sext i8 %14 to i32, !dbg !1002
  %16 = and i32 %15, 3, !dbg !1003
  %17 = mul i32 %16, 8, !dbg !1004
  %18 = shl i32 255, %17, !dbg !1005
  %19 = xor i32 %18, -1, !dbg !1006
  %20 = and i32 %13, %19, !dbg !1007
  %21 = load i32, ptr %4, align 4, !dbg !1008
  %22 = shl i32 %21, 6, !dbg !1009
  %23 = and i32 %22, 255, !dbg !1010
  %24 = load i8, ptr %3, align 1, !dbg !1011
  %25 = sext i8 %24 to i32, !dbg !1012
  %26 = and i32 %25, 3, !dbg !1013
  %27 = mul i32 %26, 8, !dbg !1014
  %28 = shl i32 %23, %27, !dbg !1015
  %29 = or i32 %20, %28, !dbg !1016
  %30 = load i8, ptr %3, align 1, !dbg !1017
  %31 = sext i8 %30 to i32, !dbg !1018
  %32 = lshr i32 %31, 2, !dbg !1019
  %33 = getelementptr inbounds [8 x i32], ptr getelementptr inbounds (%struct.NVIC_Type, ptr inttoptr (i32 -536813312 to ptr), i32 0, i32 9), i32 0, i32 %32, !dbg !1020
  store volatile i32 %29, ptr %33, align 4, !dbg !1021
  br label %64, !dbg !1022

34:                                               ; preds = %2
  %35 = load i8, ptr %3, align 1, !dbg !1023
  %36 = sext i8 %35 to i32, !dbg !1025
  %37 = and i32 %36, 15, !dbg !1026
  %38 = sub i32 %37, 8, !dbg !1027
  %39 = lshr i32 %38, 2, !dbg !1028
  %40 = getelementptr inbounds [2 x i32], ptr getelementptr inbounds (%struct.SCB_Type, ptr inttoptr (i32 -536810240 to ptr), i32 0, i32 7), i32 0, i32 %39, !dbg !1029
  %41 = load volatile i32, ptr %40, align 4, !dbg !1029
  %42 = load i8, ptr %3, align 1, !dbg !1030
  %43 = sext i8 %42 to i32, !dbg !1031
  %44 = and i32 %43, 3, !dbg !1032
  %45 = mul i32 %44, 8, !dbg !1033
  %46 = shl i32 255, %45, !dbg !1034
  %47 = xor i32 %46, -1, !dbg !1035
  %48 = and i32 %41, %47, !dbg !1036
  %49 = load i32, ptr %4, align 4, !dbg !1037
  %50 = shl i32 %49, 6, !dbg !1038
  %51 = and i32 %50, 255, !dbg !1039
  %52 = load i8, ptr %3, align 1, !dbg !1040
  %53 = sext i8 %52 to i32, !dbg !1041
  %54 = and i32 %53, 3, !dbg !1042
  %55 = mul i32 %54, 8, !dbg !1043
  %56 = shl i32 %51, %55, !dbg !1044
  %57 = or i32 %48, %56, !dbg !1045
  %58 = load i8, ptr %3, align 1, !dbg !1046
  %59 = sext i8 %58 to i32, !dbg !1047
  %60 = and i32 %59, 15, !dbg !1048
  %61 = sub i32 %60, 8, !dbg !1049
  %62 = lshr i32 %61, 2, !dbg !1050
  %63 = getelementptr inbounds [2 x i32], ptr getelementptr inbounds (%struct.SCB_Type, ptr inttoptr (i32 -536810240 to ptr), i32 0, i32 7), i32 0, i32 %62, !dbg !1051
  store volatile i32 %57, ptr %63, align 4, !dbg !1052
  br label %64

64:                                               ; preds = %34, %8
  ret void, !dbg !1053
}

declare void @arch_switch_to_main_thread(ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: noinline nounwind optnone
define internal void @bg_thread_main(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !1054 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1057, metadata !DIExpression()), !dbg !1058
  store ptr %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1059, metadata !DIExpression()), !dbg !1060
  store ptr %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1061, metadata !DIExpression()), !dbg !1062
  %7 = load ptr, ptr %4, align 4, !dbg !1063
  %8 = load ptr, ptr %5, align 4, !dbg !1064
  %9 = load ptr, ptr %6, align 4, !dbg !1065
  store i8 1, ptr @z_sys_post_kernel, align 1, !dbg !1066
  call void @z_sys_init_run_level(i8 noundef zeroext 3), !dbg !1067
  call void @boot_banner(), !dbg !1068
  call void @z_sys_init_run_level(i8 noundef zeroext 4), !dbg !1069
  call void @z_init_static_threads(), !dbg !1070
  %10 = call i32 @main(), !dbg !1071
  %11 = load i8, ptr getelementptr inbounds (%struct._thread_base, ptr @z_main_thread, i32 0, i32 2), align 4, !dbg !1072
  %12 = zext i8 %11 to i32, !dbg !1072
  %13 = and i32 %12, -2, !dbg !1072
  %14 = trunc i32 %13 to i8, !dbg !1072
  store i8 %14, ptr getelementptr inbounds (%struct._thread_base, ptr @z_main_thread, i32 0, i32 2), align 4, !dbg !1072
  ret void, !dbg !1073
}

declare void @boot_banner() #5

declare void @z_init_static_threads() #5

declare i32 @main() #5

declare void @z_sched_init() #5

declare void @z_ready_thread(ptr noundef) #5

attributes #0 = { noinline nounwind optnone "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { noinline noreturn nounwind optnone "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { noreturn }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!435, !436, !437, !438, !439, !440, !441, !442}
!llvm.ident = !{!443}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 38, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "kernel/init.c", directory: "/home/sri/zephyrproject/zephyr")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 3)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "log_const_os", scope: !9, file: !2, line: 38, type: !429, isLocal: false, isDefinition: true, align: 32)
!9 = distinct !DICompileUnit(language: DW_LANG_C99, file: !10, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, retainedTypes: !142, globals: !238, splitDebugInlining: false, nameTableKind: None)
!10 = !DIFile(filename: "init.c", directory: "/home/sri/zephyrproject/zephyr/build")
!11 = !{!12, !20, !102}
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "init_level", file: !2, line: 71, baseType: !13, size: 8, elements: !14)
!13 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!14 = !{!15, !16, !17, !18, !19}
!15 = !DIEnumerator(name: "INIT_LEVEL_EARLY", value: 0)
!16 = !DIEnumerator(name: "INIT_LEVEL_PRE_KERNEL_1", value: 1)
!17 = !DIEnumerator(name: "INIT_LEVEL_PRE_KERNEL_2", value: 2)
!18 = !DIEnumerator(name: "INIT_LEVEL_POST_KERNEL", value: 3)
!19 = !DIEnumerator(name: "INIT_LEVEL_APPLICATION", value: 4)
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "k_objects", file: !21, line: 29, baseType: !13, size: 8, elements: !22)
!21 = !DIFile(filename: "include/zephyr/sys/kobject.h", directory: "/home/sri/zephyrproject/zephyr")
!22 = !{!23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101}
!23 = !DIEnumerator(name: "K_OBJ_ANY", value: 0)
!24 = !DIEnumerator(name: "K_OBJ_MEM_SLAB", value: 1)
!25 = !DIEnumerator(name: "K_OBJ_MSGQ", value: 2)
!26 = !DIEnumerator(name: "K_OBJ_MUTEX", value: 3)
!27 = !DIEnumerator(name: "K_OBJ_PIPE", value: 4)
!28 = !DIEnumerator(name: "K_OBJ_QUEUE", value: 5)
!29 = !DIEnumerator(name: "K_OBJ_POLL_SIGNAL", value: 6)
!30 = !DIEnumerator(name: "K_OBJ_SEM", value: 7)
!31 = !DIEnumerator(name: "K_OBJ_STACK", value: 8)
!32 = !DIEnumerator(name: "K_OBJ_THREAD", value: 9)
!33 = !DIEnumerator(name: "K_OBJ_TIMER", value: 10)
!34 = !DIEnumerator(name: "K_OBJ_THREAD_STACK_ELEMENT", value: 11)
!35 = !DIEnumerator(name: "K_OBJ_NET_SOCKET", value: 12)
!36 = !DIEnumerator(name: "K_OBJ_NET_IF", value: 13)
!37 = !DIEnumerator(name: "K_OBJ_SYS_MUTEX", value: 14)
!38 = !DIEnumerator(name: "K_OBJ_FUTEX", value: 15)
!39 = !DIEnumerator(name: "K_OBJ_CONDVAR", value: 16)
!40 = !DIEnumerator(name: "K_OBJ_DRIVER_GPIO", value: 17)
!41 = !DIEnumerator(name: "K_OBJ_DRIVER_PWM", value: 18)
!42 = !DIEnumerator(name: "K_OBJ_DRIVER_RESET", value: 19)
!43 = !DIEnumerator(name: "K_OBJ_DRIVER_UART", value: 20)
!44 = !DIEnumerator(name: "K_OBJ_DRIVER_CRYPTO", value: 21)
!45 = !DIEnumerator(name: "K_OBJ_DRIVER_ADC", value: 22)
!46 = !DIEnumerator(name: "K_OBJ_DRIVER_AUXDISPLAY", value: 23)
!47 = !DIEnumerator(name: "K_OBJ_DRIVER_BBRAM", value: 24)
!48 = !DIEnumerator(name: "K_OBJ_DRIVER_CAN", value: 25)
!49 = !DIEnumerator(name: "K_OBJ_DRIVER_CHARGER", value: 26)
!50 = !DIEnumerator(name: "K_OBJ_DRIVER_COREDUMP", value: 27)
!51 = !DIEnumerator(name: "K_OBJ_DRIVER_COUNTER", value: 28)
!52 = !DIEnumerator(name: "K_OBJ_DRIVER_DAC", value: 29)
!53 = !DIEnumerator(name: "K_OBJ_DRIVER_DAI", value: 30)
!54 = !DIEnumerator(name: "K_OBJ_DRIVER_DMA", value: 31)
!55 = !DIEnumerator(name: "K_OBJ_DRIVER_EDAC", value: 32)
!56 = !DIEnumerator(name: "K_OBJ_DRIVER_EEPROM", value: 33)
!57 = !DIEnumerator(name: "K_OBJ_DRIVER_FUEL_GAUGE_EMUL", value: 34)
!58 = !DIEnumerator(name: "K_OBJ_DRIVER_EMUL_SENSOR_BACKEND_API", value: 35)
!59 = !DIEnumerator(name: "K_OBJ_DRIVER_ENTROPY", value: 36)
!60 = !DIEnumerator(name: "K_OBJ_DRIVER_ESPI", value: 37)
!61 = !DIEnumerator(name: "K_OBJ_DRIVER_ESPI_SAF", value: 38)
!62 = !DIEnumerator(name: "K_OBJ_DRIVER_FLASH", value: 39)
!63 = !DIEnumerator(name: "K_OBJ_DRIVER_FPGA", value: 40)
!64 = !DIEnumerator(name: "K_OBJ_DRIVER_FUEL_GAUGE", value: 41)
!65 = !DIEnumerator(name: "K_OBJ_DRIVER_HWSPINLOCK", value: 42)
!66 = !DIEnumerator(name: "K_OBJ_DRIVER_I2C", value: 43)
!67 = !DIEnumerator(name: "K_OBJ_DRIVER_I2S", value: 44)
!68 = !DIEnumerator(name: "K_OBJ_DRIVER_I3C", value: 45)
!69 = !DIEnumerator(name: "K_OBJ_DRIVER_IPM", value: 46)
!70 = !DIEnumerator(name: "K_OBJ_DRIVER_KSCAN", value: 47)
!71 = !DIEnumerator(name: "K_OBJ_DRIVER_LED", value: 48)
!72 = !DIEnumerator(name: "K_OBJ_DRIVER_MBOX", value: 49)
!73 = !DIEnumerator(name: "K_OBJ_DRIVER_MDIO", value: 50)
!74 = !DIEnumerator(name: "K_OBJ_DRIVER_MIPI_DSI", value: 51)
!75 = !DIEnumerator(name: "K_OBJ_DRIVER_PECI", value: 52)
!76 = !DIEnumerator(name: "K_OBJ_DRIVER_PS2", value: 53)
!77 = !DIEnumerator(name: "K_OBJ_DRIVER_PTP_CLOCK", value: 54)
!78 = !DIEnumerator(name: "K_OBJ_DRIVER_REGULATOR_PARENT", value: 55)
!79 = !DIEnumerator(name: "K_OBJ_DRIVER_REGULATOR", value: 56)
!80 = !DIEnumerator(name: "K_OBJ_DRIVER_RETAINED_MEM", value: 57)
!81 = !DIEnumerator(name: "K_OBJ_DRIVER_RTC", value: 58)
!82 = !DIEnumerator(name: "K_OBJ_DRIVER_SDHC", value: 59)
!83 = !DIEnumerator(name: "K_OBJ_DRIVER_SENSOR", value: 60)
!84 = !DIEnumerator(name: "K_OBJ_DRIVER_SMBUS", value: 61)
!85 = !DIEnumerator(name: "K_OBJ_DRIVER_SPI", value: 62)
!86 = !DIEnumerator(name: "K_OBJ_DRIVER_SYSCON", value: 63)
!87 = !DIEnumerator(name: "K_OBJ_DRIVER_W1", value: 64)
!88 = !DIEnumerator(name: "K_OBJ_DRIVER_WDT", value: 65)
!89 = !DIEnumerator(name: "K_OBJ_DRIVER_CAN_TRANSCEIVER", value: 66)
!90 = !DIEnumerator(name: "K_OBJ_DRIVER_UART_MUX", value: 67)
!91 = !DIEnumerator(name: "K_OBJ_DRIVER_ITS", value: 68)
!92 = !DIEnumerator(name: "K_OBJ_DRIVER_TGPIO", value: 69)
!93 = !DIEnumerator(name: "K_OBJ_DRIVER_PCIE_CTRL", value: 70)
!94 = !DIEnumerator(name: "K_OBJ_DRIVER_SVC", value: 71)
!95 = !DIEnumerator(name: "K_OBJ_DRIVER_BC12_EMUL", value: 72)
!96 = !DIEnumerator(name: "K_OBJ_DRIVER_BC12", value: 73)
!97 = !DIEnumerator(name: "K_OBJ_DRIVER_TCPC", value: 74)
!98 = !DIEnumerator(name: "K_OBJ_DRIVER_IVSHMEM", value: 75)
!99 = !DIEnumerator(name: "K_OBJ_DRIVER_EC_HOST_CMD_BACKEND_API", value: 76)
!100 = !DIEnumerator(name: "K_OBJ_DRIVER_ETHPHY", value: 77)
!101 = !DIEnumerator(name: "K_OBJ_LAST", value: 78)
!102 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !103, line: 66, baseType: !104, size: 8, elements: !105)
!103 = !DIFile(filename: "modules/hal/stm32/stm32cube/stm32f0xx/soc/stm32f091xc.h", directory: "/home/sri/zephyrproject")
!104 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!105 = !{!106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141}
!106 = !DIEnumerator(name: "NonMaskableInt_IRQn", value: -14)
!107 = !DIEnumerator(name: "HardFault_IRQn", value: -13)
!108 = !DIEnumerator(name: "SVCall_IRQn", value: -5)
!109 = !DIEnumerator(name: "PendSV_IRQn", value: -2)
!110 = !DIEnumerator(name: "SysTick_IRQn", value: -1)
!111 = !DIEnumerator(name: "WWDG_IRQn", value: 0)
!112 = !DIEnumerator(name: "PVD_VDDIO2_IRQn", value: 1)
!113 = !DIEnumerator(name: "RTC_IRQn", value: 2)
!114 = !DIEnumerator(name: "FLASH_IRQn", value: 3)
!115 = !DIEnumerator(name: "RCC_CRS_IRQn", value: 4)
!116 = !DIEnumerator(name: "EXTI0_1_IRQn", value: 5)
!117 = !DIEnumerator(name: "EXTI2_3_IRQn", value: 6)
!118 = !DIEnumerator(name: "EXTI4_15_IRQn", value: 7)
!119 = !DIEnumerator(name: "TSC_IRQn", value: 8)
!120 = !DIEnumerator(name: "DMA1_Ch1_IRQn", value: 9)
!121 = !DIEnumerator(name: "DMA1_Ch2_3_DMA2_Ch1_2_IRQn", value: 10)
!122 = !DIEnumerator(name: "DMA1_Ch4_7_DMA2_Ch3_5_IRQn", value: 11)
!123 = !DIEnumerator(name: "ADC1_COMP_IRQn", value: 12)
!124 = !DIEnumerator(name: "TIM1_BRK_UP_TRG_COM_IRQn", value: 13)
!125 = !DIEnumerator(name: "TIM1_CC_IRQn", value: 14)
!126 = !DIEnumerator(name: "TIM2_IRQn", value: 15)
!127 = !DIEnumerator(name: "TIM3_IRQn", value: 16)
!128 = !DIEnumerator(name: "TIM6_DAC_IRQn", value: 17)
!129 = !DIEnumerator(name: "TIM7_IRQn", value: 18)
!130 = !DIEnumerator(name: "TIM14_IRQn", value: 19)
!131 = !DIEnumerator(name: "TIM15_IRQn", value: 20)
!132 = !DIEnumerator(name: "TIM16_IRQn", value: 21)
!133 = !DIEnumerator(name: "TIM17_IRQn", value: 22)
!134 = !DIEnumerator(name: "I2C1_IRQn", value: 23)
!135 = !DIEnumerator(name: "I2C2_IRQn", value: 24)
!136 = !DIEnumerator(name: "SPI1_IRQn", value: 25)
!137 = !DIEnumerator(name: "SPI2_IRQn", value: 26)
!138 = !DIEnumerator(name: "USART1_IRQn", value: 27)
!139 = !DIEnumerator(name: "USART2_IRQn", value: 28)
!140 = !DIEnumerator(name: "USART3_8_IRQn", value: 29)
!141 = !DIEnumerator(name: "CEC_CAN_IRQn", value: 30)
!142 = !{!143, !146, !147, !148, !189, !190, !188, !192, !193, !221}
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !144, line: 51, baseType: !145)
!144 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/string.h", directory: "")
!145 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!147 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 32)
!149 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !150)
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "entropy_driver_api", file: !151, line: 54, size: 64, elements: !152)
!151 = !DIFile(filename: "include/zephyr/drivers/entropy.h", directory: "/home/sri/zephyrproject/zephyr")
!152 = !{!153, !183}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "get_entropy", scope: !150, file: !151, line: 55, baseType: !154, size: 32)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "entropy_get_entropy_t", file: !151, line: 41, baseType: !155)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 32)
!156 = !DISubroutineType(types: !157)
!157 = !{!147, !158, !180, !181}
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 32)
!159 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !160)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !161, line: 381, size: 160, elements: !162)
!161 = !DIFile(filename: "include/zephyr/device.h", directory: "/home/sri/zephyrproject/zephyr")
!162 = !{!163, !166, !169, !170, !179}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !160, file: !161, line: 383, baseType: !164, size: 32)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 32)
!165 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !160, file: !161, line: 385, baseType: !167, size: 32, offset: 32)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 32)
!168 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "api", scope: !160, file: !161, line: 387, baseType: !167, size: 32, offset: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !160, file: !161, line: 389, baseType: !171, size: 32, offset: 96)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 32)
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_state", file: !161, line: 354, size: 16, elements: !173)
!173 = !{!174, !177}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "init_res", scope: !172, file: !161, line: 362, baseType: !175, size: 8)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !176, line: 62, baseType: !13)
!176 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/stdint.h", directory: "")
!177 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !172, file: !161, line: 367, baseType: !178, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 8)
!178 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !160, file: !161, line: 391, baseType: !146, size: 32, offset: 128)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 32)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !176, line: 63, baseType: !182)
!182 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "get_entropy_isr", scope: !150, file: !151, line: 56, baseType: !184, size: 32, offset: 32)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "entropy_get_entropy_isr_t", file: !151, line: 50, baseType: !185)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 32)
!186 = !DISubroutineType(types: !187)
!187 = !{!147, !158, !180, !181, !188}
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !176, line: 64, baseType: !145)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 32)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !191, line: 46, baseType: !145)
!191 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/lib/clang/17/include/stddef.h", directory: "")
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !176, line: 58, baseType: !147)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 32)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "NVIC_Type", file: !195, line: 326, baseType: !196)
!195 = !DIFile(filename: "modules/hal/cmsis/CMSIS/Core/Include/core_cm0.h", directory: "/home/sri/zephyrproject")
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !195, line: 314, size: 6400, elements: !197)
!197 = !{!198, !203, !207, !208, !209, !210, !211, !212, !213, !217}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "ISER", scope: !196, file: !195, line: 316, baseType: !199, size: 32)
!199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !200, size: 32, elements: !201)
!200 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !188)
!201 = !{!202}
!202 = !DISubrange(count: 1)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !196, file: !195, line: 317, baseType: !204, size: 992, offset: 32)
!204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 992, elements: !205)
!205 = !{!206}
!206 = !DISubrange(count: 31)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "ICER", scope: !196, file: !195, line: 318, baseType: !199, size: 32, offset: 1024)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED1", scope: !196, file: !195, line: 319, baseType: !204, size: 992, offset: 1056)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "ISPR", scope: !196, file: !195, line: 320, baseType: !199, size: 32, offset: 2048)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED2", scope: !196, file: !195, line: 321, baseType: !204, size: 992, offset: 2080)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "ICPR", scope: !196, file: !195, line: 322, baseType: !199, size: 32, offset: 3072)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED3", scope: !196, file: !195, line: 323, baseType: !204, size: 992, offset: 3104)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED4", scope: !196, file: !195, line: 324, baseType: !214, size: 2048, offset: 4096)
!214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 2048, elements: !215)
!215 = !{!216}
!216 = !DISubrange(count: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "IP", scope: !196, file: !195, line: 325, baseType: !218, size: 256, offset: 6144)
!218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !200, size: 256, elements: !219)
!219 = !{!220}
!220 = !DISubrange(count: 8)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 32)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "SCB_Type", file: !195, line: 352, baseType: !223)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !195, line: 341, size: 320, elements: !224)
!224 = !{!225, !227, !228, !229, !230, !231, !232, !233, !237}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "CPUID", scope: !223, file: !195, line: 343, baseType: !226, size: 32)
!226 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !200)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "ICSR", scope: !223, file: !195, line: 344, baseType: !200, size: 32, offset: 32)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !223, file: !195, line: 345, baseType: !188, size: 32, offset: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "AIRCR", scope: !223, file: !195, line: 346, baseType: !200, size: 32, offset: 96)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "SCR", scope: !223, file: !195, line: 347, baseType: !200, size: 32, offset: 128)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "CCR", scope: !223, file: !195, line: 348, baseType: !200, size: 32, offset: 160)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED1", scope: !223, file: !195, line: 349, baseType: !188, size: 32, offset: 192)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "SHP", scope: !223, file: !195, line: 350, baseType: !234, size: 64, offset: 224)
!234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !200, size: 64, elements: !235)
!235 = !{!236}
!236 = !DISubrange(count: 2)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "SHCSR", scope: !223, file: !195, line: 351, baseType: !200, size: 32, offset: 288)
!238 = !{!0, !7, !239, !368, !373, !382, !384, !387, !392, !394, !399, !424}
!239 = !DIGlobalVariableExpression(var: !240, expr: !DIExpression())
!240 = distinct !DIGlobalVariable(name: "_kernel", scope: !9, file: !2, line: 45, type: !241, isLocal: false, isDefinition: true)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "z_kernel", file: !242, line: 159, size: 256, elements: !243)
!242 = !DIFile(filename: "include/zephyr/kernel_structs.h", directory: "/home/sri/zephyrproject/zephyr")
!243 = !{!244, !363}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "cpus", scope: !241, file: !242, line: 160, baseType: !245, size: 160)
!245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !246, size: 160, elements: !201)
!246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_cpu", file: !242, line: 101, size: 160, elements: !247)
!247 = !{!248, !249, !250, !358, !359, !360}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !246, file: !242, line: 103, baseType: !188, size: 32)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "irq_stack", scope: !246, file: !242, line: 106, baseType: !189, size: 32, offset: 32)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !246, file: !242, line: 109, baseType: !251, size: 32, offset: 64)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 32)
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_thread", file: !253, line: 250, size: 896, elements: !254)
!253 = !DIFile(filename: "include/zephyr/kernel/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!254 = !{!255, !318, !331, !332, !333, !334, !353}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !252, file: !253, line: 252, baseType: !256, size: 384)
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_base", file: !253, line: 58, size: 384, elements: !257)
!257 = !{!258, !284, !291, !292, !293, !303, !304, !305}
!258 = !DIDerivedType(tag: DW_TAG_member, scope: !256, file: !253, line: 61, baseType: !259, size: 64)
!259 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !256, file: !253, line: 61, size: 64, elements: !260)
!260 = !{!261, !277}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_dlist", scope: !259, file: !253, line: 62, baseType: !262, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dnode_t", file: !263, line: 55, baseType: !264)
!263 = !DIFile(filename: "include/zephyr/sys/dlist.h", directory: "/home/sri/zephyrproject/zephyr")
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_dnode", file: !263, line: 37, size: 64, elements: !265)
!265 = !{!266, !272}
!266 = !DIDerivedType(tag: DW_TAG_member, scope: !264, file: !263, line: 38, baseType: !267, size: 32)
!267 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !264, file: !263, line: 38, size: 32, elements: !268)
!268 = !{!269, !271}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !267, file: !263, line: 39, baseType: !270, size: 32)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 32)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !267, file: !263, line: 40, baseType: !270, size: 32)
!272 = !DIDerivedType(tag: DW_TAG_member, scope: !264, file: !263, line: 42, baseType: !273, size: 32, offset: 32)
!273 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !264, file: !263, line: 42, size: 32, elements: !274)
!274 = !{!275, !276}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !273, file: !263, line: 43, baseType: !270, size: 32)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !273, file: !263, line: 44, baseType: !270, size: 32)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_rb", scope: !259, file: !253, line: 63, baseType: !278, size: 64)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rbnode", file: !279, line: 58, size: 64, elements: !280)
!279 = !DIFile(filename: "include/zephyr/sys/rb.h", directory: "/home/sri/zephyrproject/zephyr")
!280 = !{!281}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !278, file: !279, line: 60, baseType: !282, size: 64)
!282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !283, size: 64, elements: !235)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 32)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "pended_on", scope: !256, file: !253, line: 69, baseType: !285, size: 32, offset: 64)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 32)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "_wait_q_t", file: !242, line: 243, baseType: !287)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !242, line: 241, size: 64, elements: !288)
!288 = !{!289}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !287, file: !242, line: 242, baseType: !290, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dlist_t", file: !263, line: 51, baseType: !264)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "user_options", scope: !256, file: !253, line: 72, baseType: !175, size: 8, offset: 96)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "thread_state", scope: !256, file: !253, line: 75, baseType: !175, size: 8, offset: 104)
!293 = !DIDerivedType(tag: DW_TAG_member, scope: !256, file: !253, line: 91, baseType: !294, size: 16, offset: 112)
!294 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !256, file: !253, line: 91, size: 16, elements: !295)
!295 = !{!296, !302}
!296 = !DIDerivedType(tag: DW_TAG_member, scope: !294, file: !253, line: 92, baseType: !297, size: 16)
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !294, file: !253, line: 92, size: 16, elements: !298)
!298 = !{!299, !301}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !297, file: !253, line: 97, baseType: !300, size: 8)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !176, line: 56, baseType: !104)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "sched_locked", scope: !297, file: !253, line: 98, baseType: !175, size: 8, offset: 8)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "preempt", scope: !294, file: !253, line: 101, baseType: !181, size: 16)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "order_key", scope: !256, file: !253, line: 108, baseType: !188, size: 32, offset: 128)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "swap_data", scope: !256, file: !253, line: 132, baseType: !146, size: 32, offset: 160)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !256, file: !253, line: 136, baseType: !306, size: 192, offset: 192)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_timeout", file: !242, line: 254, size: 192, elements: !307)
!307 = !{!308, !309, !315}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !306, file: !242, line: 255, baseType: !262, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !306, file: !242, line: 256, baseType: !310, size: 32, offset: 64)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "_timeout_func_t", file: !242, line: 252, baseType: !311)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 32)
!312 = !DISubroutineType(types: !313)
!313 = !{null, !314}
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 32)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "dticks", scope: !306, file: !242, line: 259, baseType: !316, size: 64, offset: 128)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !176, line: 59, baseType: !317)
!317 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "callee_saved", scope: !252, file: !253, line: 255, baseType: !319, size: 288, offset: 384)
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_callee_saved", file: !320, line: 25, size: 288, elements: !321)
!320 = !DIFile(filename: "include/zephyr/arch/arm/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!321 = !{!322, !323, !324, !325, !326, !327, !328, !329, !330}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "v1", scope: !319, file: !320, line: 26, baseType: !188, size: 32)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "v2", scope: !319, file: !320, line: 27, baseType: !188, size: 32, offset: 32)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "v3", scope: !319, file: !320, line: 28, baseType: !188, size: 32, offset: 64)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "v4", scope: !319, file: !320, line: 29, baseType: !188, size: 32, offset: 96)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "v5", scope: !319, file: !320, line: 30, baseType: !188, size: 32, offset: 128)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "v6", scope: !319, file: !320, line: 31, baseType: !188, size: 32, offset: 160)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "v7", scope: !319, file: !320, line: 32, baseType: !188, size: 32, offset: 192)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "v8", scope: !319, file: !320, line: 33, baseType: !188, size: 32, offset: 224)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "psp", scope: !319, file: !320, line: 34, baseType: !188, size: 32, offset: 256)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "init_data", scope: !252, file: !253, line: 258, baseType: !146, size: 32, offset: 672)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "join_queue", scope: !252, file: !253, line: 261, baseType: !286, size: 64, offset: 704)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "errno_var", scope: !252, file: !253, line: 302, baseType: !147, size: 32, offset: 768)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "resource_pool", scope: !252, file: !253, line: 333, baseType: !335, size: 32, offset: 800)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 32)
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_heap", file: !337, line: 5291, size: 160, elements: !338)
!337 = !DIFile(filename: "include/zephyr/kernel.h", directory: "/home/sri/zephyrproject/zephyr")
!338 = !{!339, !348, !349}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !336, file: !337, line: 5292, baseType: !340, size: 96)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sys_heap", file: !341, line: 56, size: 96, elements: !342)
!341 = !DIFile(filename: "include/zephyr/sys/sys_heap.h", directory: "/home/sri/zephyrproject/zephyr")
!342 = !{!343, !346, !347}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !340, file: !341, line: 57, baseType: !344, size: 32)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 32)
!345 = !DICompositeType(tag: DW_TAG_structure_type, name: "z_heap", file: !341, line: 57, flags: DIFlagFwdDecl)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "init_mem", scope: !340, file: !341, line: 58, baseType: !146, size: 32, offset: 32)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "init_bytes", scope: !340, file: !341, line: 59, baseType: !190, size: 32, offset: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !336, file: !337, line: 5293, baseType: !286, size: 64, offset: 96)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !336, file: !337, line: 5294, baseType: !350, offset: 160)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_spinlock", file: !351, line: 45, elements: !352)
!351 = !DIFile(filename: "include/zephyr/spinlock.h", directory: "/home/sri/zephyrproject/zephyr")
!352 = !{}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !252, file: !253, line: 355, baseType: !354, size: 64, offset: 832)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_arch", file: !320, line: 60, size: 64, elements: !355)
!355 = !{!356, !357}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "basepri", scope: !354, file: !320, line: 63, baseType: !188, size: 32)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "swap_return_value", scope: !354, file: !320, line: 66, baseType: !188, size: 32, offset: 32)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "idle_thread", scope: !246, file: !242, line: 112, baseType: !251, size: 32, offset: 96)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !246, file: !242, line: 124, baseType: !175, size: 8, offset: 128)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !246, file: !242, line: 154, baseType: !361, offset: 136)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_cpu_arch", file: !362, line: 35, elements: !352)
!362 = !DIFile(filename: "include/zephyr/arch/structs.h", directory: "/home/sri/zephyrproject/zephyr")
!363 = !DIDerivedType(tag: DW_TAG_member, name: "ready_q", scope: !241, file: !242, line: 171, baseType: !364, size: 96, offset: 160)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ready_q", file: !242, line: 84, size: 96, elements: !365)
!365 = !{!366, !367}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !364, file: !242, line: 87, baseType: !251, size: 32)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "runq", scope: !364, file: !242, line: 91, baseType: !290, size: 64, offset: 32)
!368 = !DIGlobalVariableExpression(var: !369, expr: !DIExpression())
!369 = distinct !DIGlobalVariable(name: "_cpus_active", scope: !9, file: !2, line: 48, type: !370, isLocal: false, isDefinition: true)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !371, line: 22, baseType: !372)
!371 = !DIFile(filename: "include/zephyr/sys/atomic.h", directory: "/home/sri/zephyrproject/zephyr")
!372 = !DIBasicType(name: "long", size: 32, encoding: DW_ATE_signed)
!373 = !DIGlobalVariableExpression(var: !374, expr: !DIExpression())
!374 = distinct !DIGlobalVariable(name: "z_main_stack", scope: !9, file: !2, line: 51, type: !375, isLocal: false, isDefinition: true, align: 64)
!375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !376, size: 8192, elements: !380)
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "z_thread_stack_element", file: !377, line: 47, size: 8, elements: !378)
!377 = !DIFile(filename: "include/zephyr/kernel/thread_stack.h", directory: "/home/sri/zephyrproject/zephyr")
!378 = !{!379}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !376, file: !377, line: 48, baseType: !4, size: 8)
!380 = !{!381}
!381 = !DISubrange(count: 1024)
!382 = !DIGlobalVariableExpression(var: !383, expr: !DIExpression())
!383 = distinct !DIGlobalVariable(name: "z_main_thread", scope: !9, file: !2, line: 52, type: !252, isLocal: false, isDefinition: true)
!384 = !DIGlobalVariableExpression(var: !385, expr: !DIExpression())
!385 = distinct !DIGlobalVariable(name: "z_idle_threads", scope: !9, file: !2, line: 56, type: !386, isLocal: false, isDefinition: true)
!386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !252, size: 896, elements: !201)
!387 = !DIGlobalVariableExpression(var: !388, expr: !DIExpression())
!388 = distinct !DIGlobalVariable(name: "z_interrupt_stacks", scope: !9, file: !2, line: 94, type: !389, isLocal: false, isDefinition: true, align: 64)
!389 = !DICompositeType(tag: DW_TAG_array_type, baseType: !376, size: 16384, elements: !390)
!390 = !{!202, !391}
!391 = !DISubrange(count: 2048)
!392 = !DIGlobalVariableExpression(var: !393, expr: !DIExpression())
!393 = distinct !DIGlobalVariable(name: "z_sys_post_kernel", scope: !9, file: !2, line: 255, type: !178, isLocal: false, isDefinition: true)
!394 = !DIGlobalVariableExpression(var: !395, expr: !DIExpression())
!395 = distinct !DIGlobalVariable(name: "z_idle_stacks", scope: !9, file: !2, line: 58, type: !396, isLocal: true, isDefinition: true, align: 64)
!396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !376, size: 2048, elements: !397)
!397 = !{!202, !398}
!398 = !DISubrange(count: 256)
!399 = !DIGlobalVariableExpression(var: !400, expr: !DIExpression())
!400 = distinct !DIGlobalVariable(name: "levels", scope: !401, file: !2, line: 270, type: !404, isLocal: true, isDefinition: true)
!401 = distinct !DISubprogram(name: "z_sys_init_run_level", scope: !2, file: !2, line: 268, type: !402, scopeLine: 269, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !352)
!402 = !DISubroutineType(types: !403)
!403 = !{null, !12}
!404 = !DICompositeType(tag: DW_TAG_array_type, baseType: !405, size: 192, elements: !422)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 32)
!406 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !407)
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "init_entry", file: !408, line: 92, size: 64, elements: !409)
!408 = !DIFile(filename: "include/zephyr/init.h", directory: "/home/sri/zephyrproject/zephyr")
!409 = !{!410, !421}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "init_fn", scope: !407, file: !408, line: 94, baseType: !411, size: 32)
!411 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "init_function", file: !408, line: 59, size: 32, elements: !412)
!412 = !{!413, !417}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "sys", scope: !411, file: !408, line: 66, baseType: !414, size: 32)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 32)
!415 = !DISubroutineType(types: !416)
!416 = !{!147}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !411, file: !408, line: 75, baseType: !418, size: 32)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 32)
!419 = !DISubroutineType(types: !420)
!420 = !{!147, !158}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !407, file: !408, line: 99, baseType: !158, size: 32, offset: 32)
!422 = !{!423}
!423 = !DISubrange(count: 6)
!424 = !DIGlobalVariableExpression(var: !425, expr: !DIExpression())
!425 = distinct !DIGlobalVariable(scope: null, file: !2, line: 484, type: !426, isLocal: true, isDefinition: true)
!426 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !427)
!427 = !{!428}
!428 = !DISubrange(count: 5)
!429 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !430)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "log_source_const_data", file: !431, line: 17, size: 64, elements: !432)
!431 = !DIFile(filename: "include/zephyr/logging/log_instance.h", directory: "/home/sri/zephyrproject/zephyr")
!432 = !{!433, !434}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !430, file: !431, line: 18, baseType: !164, size: 32)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !430, file: !431, line: 19, baseType: !175, size: 8, offset: 32)
!435 = !{i32 7, !"Dwarf Version", i32 4}
!436 = !{i32 2, !"Debug Info Version", i32 3}
!437 = !{i32 1, !"wchar_size", i32 4}
!438 = !{i32 1, !"static_rwdata", i32 1}
!439 = !{i32 1, !"enumsize_buildattr", i32 1}
!440 = !{i32 1, !"armlib_unavailable", i32 0}
!441 = !{i32 8, !"PIC Level", i32 2}
!442 = !{i32 7, !"PIE Level", i32 2}
!443 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
!444 = distinct !DISubprogram(name: "z_impl_k_object_access_grant", scope: !21, file: !21, line: 223, type: !445, scopeLine: 225, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !352)
!445 = !DISubroutineType(types: !446)
!446 = !{null, !167, !251}
!447 = !DILocalVariable(name: "object", arg: 1, scope: !444, file: !21, line: 223, type: !167)
!448 = !DILocation(line: 223, column: 61, scope: !444)
!449 = !DILocalVariable(name: "thread", arg: 2, scope: !444, file: !21, line: 224, type: !251)
!450 = !DILocation(line: 224, column: 24, scope: !444)
!451 = !DILocation(line: 226, column: 9, scope: !444)
!452 = !DILocation(line: 227, column: 9, scope: !444)
!453 = !DILocation(line: 228, column: 1, scope: !444)
!454 = distinct !DISubprogram(name: "z_impl_k_object_release", scope: !21, file: !21, line: 243, type: !455, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !352)
!455 = !DISubroutineType(types: !456)
!456 = !{null, !167}
!457 = !DILocalVariable(name: "object", arg: 1, scope: !454, file: !21, line: 243, type: !167)
!458 = !DILocation(line: 243, column: 56, scope: !454)
!459 = !DILocation(line: 245, column: 9, scope: !454)
!460 = !DILocation(line: 246, column: 1, scope: !454)
!461 = distinct !DISubprogram(name: "z_impl_k_object_alloc", scope: !21, file: !21, line: 359, type: !462, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !352)
!462 = !DISubroutineType(types: !463)
!463 = !{!146, !20}
!464 = !DILocalVariable(name: "otype", arg: 1, scope: !461, file: !21, line: 359, type: !20)
!465 = !DILocation(line: 359, column: 58, scope: !461)
!466 = !DILocation(line: 361, column: 9, scope: !461)
!467 = !DILocation(line: 363, column: 2, scope: !461)
!468 = distinct !DISubprogram(name: "z_impl_k_object_alloc_size", scope: !21, file: !21, line: 366, type: !469, scopeLine: 368, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !352)
!469 = !DISubroutineType(types: !470)
!470 = !{!146, !20, !190}
!471 = !DILocalVariable(name: "otype", arg: 1, scope: !468, file: !21, line: 366, type: !20)
!472 = !DILocation(line: 366, column: 63, scope: !468)
!473 = !DILocalVariable(name: "size", arg: 2, scope: !468, file: !21, line: 367, type: !190)
!474 = !DILocation(line: 367, column: 13, scope: !468)
!475 = !DILocation(line: 369, column: 9, scope: !468)
!476 = !DILocation(line: 370, column: 9, scope: !468)
!477 = !DILocation(line: 372, column: 2, scope: !468)
!478 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_expires_ticks", scope: !337, file: !337, line: 656, type: !479, scopeLine: 658, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !352)
!479 = !DISubroutineType(types: !480)
!480 = !{!481, !483}
!481 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_ticks_t", file: !482, line: 46, baseType: !316)
!482 = !DIFile(filename: "include/zephyr/sys_clock.h", directory: "/home/sri/zephyrproject/zephyr")
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 32)
!484 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !252)
!485 = !DILocalVariable(name: "t", arg: 1, scope: !478, file: !337, line: 657, type: !483)
!486 = !DILocation(line: 657, column: 30, scope: !478)
!487 = !DILocation(line: 659, column: 28, scope: !478)
!488 = !DILocation(line: 659, column: 31, scope: !478)
!489 = !DILocation(line: 659, column: 36, scope: !478)
!490 = !DILocation(line: 659, column: 9, scope: !478)
!491 = !DILocation(line: 659, column: 2, scope: !478)
!492 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_remaining_ticks", scope: !337, file: !337, line: 671, type: !479, scopeLine: 673, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !352)
!493 = !DILocalVariable(name: "t", arg: 1, scope: !492, file: !337, line: 672, type: !483)
!494 = !DILocation(line: 672, column: 30, scope: !492)
!495 = !DILocation(line: 674, column: 30, scope: !492)
!496 = !DILocation(line: 674, column: 33, scope: !492)
!497 = !DILocation(line: 674, column: 38, scope: !492)
!498 = !DILocation(line: 674, column: 9, scope: !492)
!499 = !DILocation(line: 674, column: 2, scope: !492)
!500 = distinct !DISubprogram(name: "z_impl_k_timer_expires_ticks", scope: !337, file: !337, line: 1634, type: !501, scopeLine: 1636, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !352)
!501 = !DISubroutineType(types: !502)
!502 = !{!481, !503}
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 32)
!504 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !505)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_timer", file: !337, line: 1439, size: 448, elements: !506)
!506 = !{!507, !508, !509, !514, !515, !520, !521}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !505, file: !337, line: 1445, baseType: !306, size: 192)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !505, file: !337, line: 1448, baseType: !286, size: 64, offset: 192)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_fn", scope: !505, file: !337, line: 1451, baseType: !510, size: 32, offset: 256)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 32)
!511 = !DISubroutineType(types: !512)
!512 = !{null, !513}
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 32)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "stop_fn", scope: !505, file: !337, line: 1454, baseType: !510, size: 32, offset: 288)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !505, file: !337, line: 1457, baseType: !516, size: 64, offset: 320)
!516 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_timeout_t", file: !482, line: 67, baseType: !517)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !482, line: 65, size: 64, elements: !518)
!518 = !{!519}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "ticks", scope: !517, file: !482, line: 66, baseType: !481, size: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !505, file: !337, line: 1460, baseType: !188, size: 32, offset: 384)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !505, file: !337, line: 1463, baseType: !146, size: 32, offset: 416)
!522 = !DILocalVariable(name: "timer", arg: 1, scope: !500, file: !337, line: 1635, type: !503)
!523 = !DILocation(line: 1635, column: 34, scope: !500)
!524 = !DILocation(line: 1637, column: 28, scope: !500)
!525 = !DILocation(line: 1637, column: 35, scope: !500)
!526 = !DILocation(line: 1637, column: 9, scope: !500)
!527 = !DILocation(line: 1637, column: 2, scope: !500)
!528 = distinct !DISubprogram(name: "z_impl_k_timer_remaining_ticks", scope: !337, file: !337, line: 1649, type: !501, scopeLine: 1651, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !352)
!529 = !DILocalVariable(name: "timer", arg: 1, scope: !528, file: !337, line: 1650, type: !503)
!530 = !DILocation(line: 1650, column: 34, scope: !528)
!531 = !DILocation(line: 1652, column: 30, scope: !528)
!532 = !DILocation(line: 1652, column: 37, scope: !528)
!533 = !DILocation(line: 1652, column: 9, scope: !528)
!534 = !DILocation(line: 1652, column: 2, scope: !528)
!535 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_set", scope: !337, file: !337, line: 1689, type: !536, scopeLine: 1691, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !352)
!536 = !DISubroutineType(types: !537)
!537 = !{null, !513, !146}
!538 = !DILocalVariable(name: "timer", arg: 1, scope: !535, file: !337, line: 1689, type: !513)
!539 = !DILocation(line: 1689, column: 65, scope: !535)
!540 = !DILocalVariable(name: "user_data", arg: 2, scope: !535, file: !337, line: 1690, type: !146)
!541 = !DILocation(line: 1690, column: 19, scope: !535)
!542 = !DILocation(line: 1692, column: 21, scope: !535)
!543 = !DILocation(line: 1692, column: 2, scope: !535)
!544 = !DILocation(line: 1692, column: 9, scope: !535)
!545 = !DILocation(line: 1692, column: 19, scope: !535)
!546 = !DILocation(line: 1693, column: 1, scope: !535)
!547 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_get", scope: !337, file: !337, line: 1704, type: !548, scopeLine: 1705, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !352)
!548 = !DISubroutineType(types: !549)
!549 = !{!146, !503}
!550 = !DILocalVariable(name: "timer", arg: 1, scope: !547, file: !337, line: 1704, type: !503)
!551 = !DILocation(line: 1704, column: 72, scope: !547)
!552 = !DILocation(line: 1706, column: 9, scope: !547)
!553 = !DILocation(line: 1706, column: 16, scope: !547)
!554 = !DILocation(line: 1706, column: 2, scope: !547)
!555 = distinct !DISubprogram(name: "z_impl_k_queue_is_empty", scope: !337, file: !337, line: 2071, type: !556, scopeLine: 2072, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !352)
!556 = !DISubroutineType(types: !557)
!557 = !{!147, !558}
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 32)
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_queue", file: !337, line: 1830, size: 128, elements: !560)
!560 = !{!561, !574, !575}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "data_q", scope: !559, file: !337, line: 1831, baseType: !562, size: 64)
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sflist_t", file: !563, line: 60, baseType: !564)
!563 = !DIFile(filename: "include/zephyr/sys/sflist.h", directory: "/home/sri/zephyrproject/zephyr")
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sflist", file: !563, line: 53, size: 64, elements: !565)
!565 = !{!566, !573}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !564, file: !563, line: 54, baseType: !567, size: 32)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 32)
!568 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sfnode_t", file: !563, line: 50, baseType: !569)
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sfnode", file: !563, line: 44, size: 32, elements: !570)
!570 = !{!571}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "next_and_flags", scope: !569, file: !563, line: 45, baseType: !572, size: 32)
!572 = !DIDerivedType(tag: DW_TAG_typedef, name: "unative_t", file: !563, line: 40, baseType: !188)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !564, file: !563, line: 55, baseType: !567, size: 32, offset: 32)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !559, file: !337, line: 1832, baseType: !350, offset: 64)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !559, file: !337, line: 1833, baseType: !286, size: 64, offset: 64)
!576 = !DILocalVariable(name: "queue", arg: 1, scope: !555, file: !337, line: 2071, type: !558)
!577 = !DILocation(line: 2071, column: 59, scope: !555)
!578 = !DILocation(line: 2073, column: 35, scope: !555)
!579 = !DILocation(line: 2073, column: 42, scope: !555)
!580 = !DILocation(line: 2073, column: 14, scope: !555)
!581 = !DILocation(line: 2073, column: 9, scope: !555)
!582 = !DILocation(line: 2073, column: 2, scope: !555)
!583 = distinct !DISubprogram(name: "z_impl_k_sem_count_get", scope: !337, file: !337, line: 3209, type: !584, scopeLine: 3210, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !352)
!584 = !DISubroutineType(types: !585)
!585 = !{!145, !586}
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 32)
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sem", file: !337, line: 3092, size: 128, elements: !588)
!588 = !{!589, !590, !591}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !587, file: !337, line: 3093, baseType: !286, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !587, file: !337, line: 3094, baseType: !145, size: 32, offset: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !587, file: !337, line: 3095, baseType: !145, size: 32, offset: 96)
!592 = !DILocalVariable(name: "sem", arg: 1, scope: !583, file: !337, line: 3209, type: !586)
!593 = !DILocation(line: 3209, column: 65, scope: !583)
!594 = !DILocation(line: 3211, column: 9, scope: !583)
!595 = !DILocation(line: 3211, column: 14, scope: !583)
!596 = !DILocation(line: 3211, column: 2, scope: !583)
!597 = distinct !DISubprogram(name: "z_impl_k_msgq_num_free_get", scope: !337, file: !337, line: 4649, type: !598, scopeLine: 4650, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !352)
!598 = !DISubroutineType(types: !599)
!599 = !{!188, !600}
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 32)
!601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_msgq", file: !337, line: 4390, size: 320, elements: !602)
!602 = !{!603, !604, !605, !606, !607, !608, !609, !610, !611, !612}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !601, file: !337, line: 4392, baseType: !286, size: 64)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !601, file: !337, line: 4394, baseType: !350, offset: 64)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "msg_size", scope: !601, file: !337, line: 4396, baseType: !190, size: 32, offset: 64)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !601, file: !337, line: 4398, baseType: !188, size: 32, offset: 96)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_start", scope: !601, file: !337, line: 4400, baseType: !189, size: 32, offset: 128)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_end", scope: !601, file: !337, line: 4402, baseType: !189, size: 32, offset: 160)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "read_ptr", scope: !601, file: !337, line: 4404, baseType: !189, size: 32, offset: 192)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "write_ptr", scope: !601, file: !337, line: 4406, baseType: !189, size: 32, offset: 224)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "used_msgs", scope: !601, file: !337, line: 4408, baseType: !188, size: 32, offset: 256)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !601, file: !337, line: 4413, baseType: !175, size: 8, offset: 288)
!613 = !DILocalVariable(name: "msgq", arg: 1, scope: !597, file: !337, line: 4649, type: !600)
!614 = !DILocation(line: 4649, column: 66, scope: !597)
!615 = !DILocation(line: 4651, column: 9, scope: !597)
!616 = !DILocation(line: 4651, column: 15, scope: !597)
!617 = !DILocation(line: 4651, column: 26, scope: !597)
!618 = !DILocation(line: 4651, column: 32, scope: !597)
!619 = !DILocation(line: 4651, column: 24, scope: !597)
!620 = !DILocation(line: 4651, column: 2, scope: !597)
!621 = distinct !DISubprogram(name: "z_impl_k_msgq_num_used_get", scope: !337, file: !337, line: 4665, type: !598, scopeLine: 4666, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !352)
!622 = !DILocalVariable(name: "msgq", arg: 1, scope: !621, file: !337, line: 4665, type: !600)
!623 = !DILocation(line: 4665, column: 66, scope: !621)
!624 = !DILocation(line: 4667, column: 9, scope: !621)
!625 = !DILocation(line: 4667, column: 15, scope: !621)
!626 = !DILocation(line: 4667, column: 2, scope: !621)
!627 = distinct !DISubprogram(name: "z_impl_device_is_ready", scope: !161, file: !161, line: 744, type: !628, scopeLine: 745, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !352)
!628 = !DISubroutineType(types: !629)
!629 = !{!178, !158}
!630 = !DILocalVariable(name: "dev", arg: 1, scope: !627, file: !161, line: 744, type: !158)
!631 = !DILocation(line: 744, column: 65, scope: !627)
!632 = !DILocation(line: 746, column: 27, scope: !627)
!633 = !DILocation(line: 746, column: 9, scope: !627)
!634 = !DILocation(line: 746, column: 2, scope: !627)
!635 = distinct !DISubprogram(name: "z_impl_entropy_get_entropy", scope: !151, file: !151, line: 73, type: !156, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !352)
!636 = !DILocalVariable(name: "dev", arg: 1, scope: !635, file: !151, line: 73, type: !158)
!637 = !DILocation(line: 73, column: 67, scope: !635)
!638 = !DILocalVariable(name: "buffer", arg: 2, scope: !635, file: !151, line: 74, type: !180)
!639 = !DILocation(line: 74, column: 20, scope: !635)
!640 = !DILocalVariable(name: "length", arg: 3, scope: !635, file: !151, line: 75, type: !181)
!641 = !DILocation(line: 75, column: 20, scope: !635)
!642 = !DILocalVariable(name: "api", scope: !635, file: !151, line: 77, type: !148)
!643 = !DILocation(line: 77, column: 35, scope: !635)
!644 = !DILocation(line: 78, column: 38, scope: !635)
!645 = !DILocation(line: 78, column: 43, scope: !635)
!646 = !DILocation(line: 82, column: 9, scope: !635)
!647 = !DILocation(line: 82, column: 14, scope: !635)
!648 = !DILocation(line: 82, column: 26, scope: !635)
!649 = !DILocation(line: 82, column: 31, scope: !635)
!650 = !DILocation(line: 82, column: 39, scope: !635)
!651 = !DILocation(line: 82, column: 2, scope: !635)
!652 = distinct !DISubprogram(name: "z_early_memset", scope: !2, file: !2, line: 142, type: !653, scopeLine: 143, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !352)
!653 = !DISubroutineType(types: !654)
!654 = !{null, !146, !147, !143}
!655 = !DILocalVariable(name: "dst", arg: 1, scope: !652, file: !2, line: 142, type: !146)
!656 = !DILocation(line: 142, column: 53, scope: !652)
!657 = !DILocalVariable(name: "c", arg: 2, scope: !652, file: !2, line: 142, type: !147)
!658 = !DILocation(line: 142, column: 62, scope: !652)
!659 = !DILocalVariable(name: "n", arg: 3, scope: !652, file: !2, line: 142, type: !143)
!660 = !DILocation(line: 142, column: 72, scope: !652)
!661 = !DILocation(line: 144, column: 16, scope: !652)
!662 = !DILocation(line: 144, column: 21, scope: !652)
!663 = !DILocation(line: 144, column: 9, scope: !652)
!664 = !DILocation(line: 144, column: 24, scope: !652)
!665 = !DILocation(line: 145, column: 1, scope: !652)
!666 = distinct !DISubprogram(name: "z_early_memcpy", scope: !2, file: !2, line: 155, type: !667, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !352)
!667 = !DISubroutineType(types: !668)
!668 = !{null, !146, !167, !143}
!669 = !DILocalVariable(name: "dst", arg: 1, scope: !666, file: !2, line: 155, type: !146)
!670 = !DILocation(line: 155, column: 53, scope: !666)
!671 = !DILocalVariable(name: "src", arg: 2, scope: !666, file: !2, line: 155, type: !167)
!672 = !DILocation(line: 155, column: 70, scope: !666)
!673 = !DILocalVariable(name: "n", arg: 3, scope: !666, file: !2, line: 155, type: !143)
!674 = !DILocation(line: 155, column: 82, scope: !666)
!675 = !DILocation(line: 157, column: 16, scope: !666)
!676 = !DILocation(line: 157, column: 21, scope: !666)
!677 = !DILocation(line: 157, column: 26, scope: !666)
!678 = !DILocation(line: 157, column: 9, scope: !666)
!679 = !DILocation(line: 158, column: 1, scope: !666)
!680 = distinct !DISubprogram(name: "z_bss_zero", scope: !2, file: !2, line: 166, type: !681, scopeLine: 167, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !352)
!681 = !DISubroutineType(types: !682)
!682 = !{null}
!683 = !DILocation(line: 177, column: 2, scope: !680)
!684 = !DILocation(line: 202, column: 1, scope: !680)
!685 = distinct !DISubprogram(name: "z_init_cpu", scope: !2, file: !2, line: 418, type: !686, scopeLine: 419, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !352)
!686 = !DISubroutineType(types: !687)
!687 = !{null, !147}
!688 = !DILocalVariable(name: "id", arg: 1, scope: !685, file: !2, line: 418, type: !147)
!689 = !DILocation(line: 418, column: 21, scope: !685)
!690 = !DILocation(line: 420, column: 19, scope: !685)
!691 = !DILocation(line: 420, column: 2, scope: !685)
!692 = !DILocation(line: 421, column: 49, scope: !685)
!693 = !DILocation(line: 421, column: 34, scope: !685)
!694 = !DILocation(line: 421, column: 15, scope: !685)
!695 = !DILocation(line: 421, column: 2, scope: !685)
!696 = !DILocation(line: 421, column: 19, scope: !685)
!697 = !DILocation(line: 421, column: 31, scope: !685)
!698 = !DILocation(line: 422, column: 24, scope: !685)
!699 = !DILocation(line: 422, column: 15, scope: !685)
!700 = !DILocation(line: 422, column: 2, scope: !685)
!701 = !DILocation(line: 422, column: 19, scope: !685)
!702 = !DILocation(line: 422, column: 22, scope: !685)
!703 = !DILocation(line: 424, column: 45, scope: !685)
!704 = !DILocation(line: 424, column: 26, scope: !685)
!705 = !DILocation(line: 424, column: 4, scope: !685)
!706 = !DILocation(line: 424, column: 50, scope: !685)
!707 = !DILocation(line: 423, column: 15, scope: !685)
!708 = !DILocation(line: 423, column: 2, scope: !685)
!709 = !DILocation(line: 423, column: 19, scope: !685)
!710 = !DILocation(line: 423, column: 29, scope: !685)
!711 = !DILocation(line: 436, column: 2, scope: !685)
!712 = !DILocation(line: 446, column: 1, scope: !685)
!713 = distinct !DISubprogram(name: "init_idle_thread", scope: !2, file: !2, line: 389, type: !686, scopeLine: 390, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !352)
!714 = !DILocalVariable(name: "i", arg: 1, scope: !713, file: !2, line: 389, type: !147)
!715 = !DILocation(line: 389, column: 34, scope: !713)
!716 = !DILocalVariable(name: "thread", scope: !713, file: !2, line: 391, type: !251)
!717 = !DILocation(line: 391, column: 19, scope: !713)
!718 = !DILocation(line: 391, column: 44, scope: !713)
!719 = !DILocation(line: 391, column: 29, scope: !713)
!720 = !DILocalVariable(name: "stack", scope: !713, file: !2, line: 392, type: !721)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 32)
!722 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_thread_stack_t", file: !723, line: 44, baseType: !376)
!723 = !DIFile(filename: "include/zephyr/sys/arch_interface.h", directory: "/home/sri/zephyrproject/zephyr")
!724 = !DILocation(line: 392, column: 20, scope: !713)
!725 = !DILocation(line: 392, column: 42, scope: !713)
!726 = !DILocation(line: 392, column: 28, scope: !713)
!727 = !DILocalVariable(name: "tname", scope: !713, file: !2, line: 404, type: !189)
!728 = !DILocation(line: 404, column: 8, scope: !713)
!729 = !DILocation(line: 407, column: 21, scope: !713)
!730 = !DILocation(line: 407, column: 29, scope: !713)
!731 = !DILocation(line: 408, column: 31, scope: !713)
!732 = !DILocation(line: 408, column: 18, scope: !713)
!733 = !DILocation(line: 410, column: 6, scope: !713)
!734 = !DILocation(line: 407, column: 2, scope: !713)
!735 = !DILocation(line: 411, column: 27, scope: !713)
!736 = !DILocation(line: 411, column: 2, scope: !713)
!737 = !DILocation(line: 416, column: 1, scope: !713)
!738 = distinct !DISubprogram(name: "Z_KERNEL_STACK_BUFFER", scope: !377, file: !377, line: 331, type: !739, scopeLine: 332, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !352)
!739 = !DISubroutineType(types: !740)
!740 = !{!189, !721}
!741 = !DILocalVariable(name: "sym", arg: 1, scope: !738, file: !377, line: 331, type: !721)
!742 = !DILocation(line: 331, column: 61, scope: !738)
!743 = !DILocation(line: 333, column: 17, scope: !738)
!744 = !DILocation(line: 333, column: 21, scope: !738)
!745 = !DILocation(line: 333, column: 2, scope: !738)
!746 = distinct !DISubprogram(name: "atomic_inc", scope: !747, file: !747, line: 30, type: !748, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !352)
!747 = !DIFile(filename: "include/zephyr/sys/atomic_c.h", directory: "/home/sri/zephyrproject/zephyr")
!748 = !DISubroutineType(types: !749)
!749 = !{!750, !751}
!750 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_val_t", file: !371, line: 23, baseType: !370)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 32)
!752 = !DILocalVariable(name: "target", arg: 1, scope: !746, file: !747, line: 30, type: !751)
!753 = !DILocation(line: 30, column: 49, scope: !746)
!754 = !DILocation(line: 32, column: 20, scope: !746)
!755 = !DILocation(line: 32, column: 9, scope: !746)
!756 = !DILocation(line: 32, column: 2, scope: !746)
!757 = distinct !DISubprogram(name: "z_cstart", scope: !2, file: !2, line: 564, type: !681, scopeLine: 565, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !352)
!758 = !DILocation(line: 567, column: 2, scope: !757)
!759 = !DILocation(line: 570, column: 2, scope: !757)
!760 = !DILocalVariable(name: "msp", scope: !761, file: !762, line: 42, type: !188)
!761 = distinct !DISubprogram(name: "z_arm_interrupt_stack_setup", scope: !762, file: !762, line: 40, type: !681, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !352)
!762 = !DIFile(filename: "arch/arm/include/cortex_m/stack.h", directory: "/home/sri/zephyrproject/zephyr")
!763 = !DILocation(line: 42, column: 11, scope: !761, inlinedAt: !764)
!764 = distinct !DILocation(line: 41, column: 2, scope: !765, inlinedAt: !767)
!765 = distinct !DISubprogram(name: "arch_kernel_init", scope: !766, file: !766, line: 39, type: !681, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !352)
!766 = !DIFile(filename: "arch/arm/include/cortex_m/kernel_arch_func.h", directory: "/home/sri/zephyrproject/zephyr")
!767 = distinct !DILocation(line: 573, column: 2, scope: !757)
!768 = !DILocation(line: 43, column: 14, scope: !761, inlinedAt: !764)
!769 = !DILocation(line: 43, column: 3, scope: !761, inlinedAt: !764)
!770 = !DILocation(line: 43, column: 60, scope: !761, inlinedAt: !764)
!771 = !DILocation(line: 46, column: 12, scope: !761, inlinedAt: !764)
!772 = !DILocalVariable(name: "topOfMainStack", arg: 1, scope: !773, file: !774, line: 944, type: !188)
!773 = distinct !DISubprogram(name: "__set_MSP", scope: !774, file: !774, line: 944, type: !775, scopeLine: 945, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !352)
!774 = !DIFile(filename: "modules/hal/cmsis/CMSIS/Core/Include/cmsis_armclang.h", directory: "/home/sri/zephyrproject")
!775 = !DISubroutineType(types: !776)
!776 = !{null, !188}
!777 = !DILocation(line: 944, column: 72, scope: !773, inlinedAt: !778)
!778 = distinct !DILocation(line: 46, column: 2, scope: !761, inlinedAt: !764)
!779 = !DILocation(line: 946, column: 42, scope: !773, inlinedAt: !778)
!780 = !DILocation(line: 946, column: 3, scope: !773, inlinedAt: !778)
!781 = !{i64 212859}
!782 = !DILocation(line: 102, column: 2, scope: !783, inlinedAt: !785)
!783 = distinct !DISubprogram(name: "z_arm_exc_setup", scope: !784, file: !784, line: 97, type: !681, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !352)
!784 = !DIFile(filename: "arch/arm/include/cortex_m/exc.h", directory: "/home/sri/zephyrproject/zephyr")
!785 = distinct !DILocation(line: 42, column: 2, scope: !765, inlinedAt: !767)
!786 = !DILocation(line: 43, column: 2, scope: !765, inlinedAt: !767)
!787 = !DILocation(line: 44, column: 2, scope: !765, inlinedAt: !767)
!788 = !DILocation(line: 575, column: 2, scope: !757)
!789 = !DILocalVariable(name: "dummy_thread", scope: !757, file: !2, line: 581, type: !252)
!790 = !DILocation(line: 581, column: 18, scope: !757)
!791 = !DILocation(line: 583, column: 2, scope: !757)
!792 = !DILocation(line: 586, column: 2, scope: !757)
!793 = !DILocation(line: 589, column: 2, scope: !757)
!794 = !DILocation(line: 590, column: 2, scope: !757)
!795 = !DILocation(line: 606, column: 24, scope: !757)
!796 = !DILocation(line: 606, column: 2, scope: !757)
!797 = distinct !DISubprogram(name: "gcov_static_init", scope: !798, file: !798, line: 15, type: !681, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !352)
!798 = !DIFile(filename: "include/zephyr/debug/gcov.h", directory: "/home/sri/zephyrproject/zephyr")
!799 = !DILocation(line: 15, column: 45, scope: !797)
!800 = !DILocalVariable(name: "level", arg: 1, scope: !401, file: !2, line: 268, type: !12)
!801 = !DILocation(line: 268, column: 50, scope: !401)
!802 = !DILocalVariable(name: "entry", scope: !401, file: !2, line: 282, type: !405)
!803 = !DILocation(line: 282, column: 27, scope: !401)
!804 = !DILocation(line: 284, column: 22, scope: !805)
!805 = distinct !DILexicalBlock(scope: !401, file: !2, line: 284, column: 2)
!806 = !DILocation(line: 284, column: 15, scope: !805)
!807 = !DILocation(line: 284, column: 13, scope: !805)
!808 = !DILocation(line: 284, column: 7, scope: !805)
!809 = !DILocation(line: 284, column: 30, scope: !810)
!810 = distinct !DILexicalBlock(scope: !805, file: !2, line: 284, column: 2)
!811 = !DILocation(line: 284, column: 45, scope: !810)
!812 = !DILocation(line: 284, column: 50, scope: !810)
!813 = !DILocation(line: 284, column: 38, scope: !810)
!814 = !DILocation(line: 284, column: 36, scope: !810)
!815 = !DILocation(line: 284, column: 2, scope: !805)
!816 = !DILocalVariable(name: "dev", scope: !817, file: !2, line: 285, type: !158)
!817 = distinct !DILexicalBlock(scope: !810, file: !2, line: 284, column: 64)
!818 = !DILocation(line: 285, column: 24, scope: !817)
!819 = !DILocation(line: 285, column: 30, scope: !817)
!820 = !DILocation(line: 285, column: 37, scope: !817)
!821 = !DILocation(line: 287, column: 7, scope: !822)
!822 = distinct !DILexicalBlock(scope: !817, file: !2, line: 287, column: 7)
!823 = !DILocation(line: 287, column: 11, scope: !822)
!824 = !DILocation(line: 287, column: 7, scope: !817)
!825 = !DILocalVariable(name: "rc", scope: !826, file: !2, line: 288, type: !147)
!826 = distinct !DILexicalBlock(scope: !822, file: !2, line: 287, column: 17)
!827 = !DILocation(line: 288, column: 8, scope: !826)
!828 = !DILocation(line: 290, column: 8, scope: !829)
!829 = distinct !DILexicalBlock(scope: !826, file: !2, line: 290, column: 8)
!830 = !DILocation(line: 290, column: 15, scope: !829)
!831 = !DILocation(line: 290, column: 23, scope: !829)
!832 = !DILocation(line: 290, column: 27, scope: !829)
!833 = !DILocation(line: 290, column: 8, scope: !826)
!834 = !DILocation(line: 291, column: 10, scope: !835)
!835 = distinct !DILexicalBlock(scope: !829, file: !2, line: 290, column: 33)
!836 = !DILocation(line: 291, column: 17, scope: !835)
!837 = !DILocation(line: 291, column: 25, scope: !835)
!838 = !DILocation(line: 291, column: 29, scope: !835)
!839 = !DILocation(line: 291, column: 8, scope: !835)
!840 = !DILocation(line: 295, column: 9, scope: !841)
!841 = distinct !DILexicalBlock(scope: !835, file: !2, line: 295, column: 9)
!842 = !DILocation(line: 295, column: 12, scope: !841)
!843 = !DILocation(line: 295, column: 9, scope: !835)
!844 = !DILocation(line: 296, column: 10, scope: !845)
!845 = distinct !DILexicalBlock(scope: !846, file: !2, line: 296, column: 10)
!846 = distinct !DILexicalBlock(scope: !841, file: !2, line: 295, column: 18)
!847 = !DILocation(line: 296, column: 13, scope: !845)
!848 = !DILocation(line: 296, column: 10, scope: !846)
!849 = !DILocation(line: 297, column: 13, scope: !850)
!850 = distinct !DILexicalBlock(scope: !845, file: !2, line: 296, column: 18)
!851 = !DILocation(line: 297, column: 12, scope: !850)
!852 = !DILocation(line: 297, column: 10, scope: !850)
!853 = !DILocation(line: 298, column: 6, scope: !850)
!854 = !DILocation(line: 299, column: 10, scope: !855)
!855 = distinct !DILexicalBlock(scope: !846, file: !2, line: 299, column: 10)
!856 = !DILocation(line: 299, column: 13, scope: !855)
!857 = !DILocation(line: 299, column: 10, scope: !846)
!858 = !DILocation(line: 300, column: 10, scope: !859)
!859 = distinct !DILexicalBlock(scope: !855, file: !2, line: 299, column: 20)
!860 = !DILocation(line: 301, column: 6, scope: !859)
!861 = !DILocation(line: 302, column: 29, scope: !846)
!862 = !DILocation(line: 302, column: 6, scope: !846)
!863 = !DILocation(line: 302, column: 11, scope: !846)
!864 = !DILocation(line: 302, column: 18, scope: !846)
!865 = !DILocation(line: 302, column: 27, scope: !846)
!866 = !DILocation(line: 303, column: 5, scope: !846)
!867 = !DILocation(line: 304, column: 4, scope: !835)
!868 = !DILocation(line: 306, column: 4, scope: !826)
!869 = !DILocation(line: 306, column: 9, scope: !826)
!870 = !DILocation(line: 306, column: 16, scope: !826)
!871 = !DILocation(line: 306, column: 28, scope: !826)
!872 = !DILocation(line: 308, column: 8, scope: !873)
!873 = distinct !DILexicalBlock(scope: !826, file: !2, line: 308, column: 8)
!874 = !DILocation(line: 308, column: 11, scope: !873)
!875 = !DILocation(line: 308, column: 8, scope: !826)
!876 = !DILocation(line: 310, column: 41, scope: !877)
!877 = distinct !DILexicalBlock(scope: !873, file: !2, line: 308, column: 17)
!878 = !DILocation(line: 310, column: 11, scope: !877)
!879 = !DILocation(line: 311, column: 4, scope: !877)
!880 = !DILocation(line: 312, column: 3, scope: !826)
!881 = !DILocation(line: 313, column: 10, scope: !882)
!882 = distinct !DILexicalBlock(scope: !822, file: !2, line: 312, column: 10)
!883 = !DILocation(line: 313, column: 17, scope: !882)
!884 = !DILocation(line: 313, column: 25, scope: !882)
!885 = !DILocation(line: 315, column: 2, scope: !817)
!886 = !DILocation(line: 284, column: 60, scope: !810)
!887 = !DILocation(line: 284, column: 2, scope: !810)
!888 = distinct !{!888, !815, !889}
!889 = !DILocation(line: 315, column: 2, scope: !805)
!890 = !DILocation(line: 316, column: 1, scope: !401)
!891 = distinct !DISubprogram(name: "z_dummy_thread_init", scope: !892, file: !892, line: 239, type: !893, scopeLine: 240, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !352)
!892 = !DIFile(filename: "kernel/include/kswap.h", directory: "/home/sri/zephyrproject/zephyr")
!893 = !DISubroutineType(types: !894)
!894 = !{null, !251}
!895 = !DILocalVariable(name: "dummy_thread", arg: 1, scope: !891, file: !892, line: 239, type: !251)
!896 = !DILocation(line: 239, column: 57, scope: !891)
!897 = !DILocation(line: 241, column: 2, scope: !891)
!898 = !DILocation(line: 241, column: 16, scope: !891)
!899 = !DILocation(line: 241, column: 21, scope: !891)
!900 = !DILocation(line: 241, column: 34, scope: !891)
!901 = !DILocation(line: 245, column: 2, scope: !891)
!902 = !DILocation(line: 245, column: 16, scope: !891)
!903 = !DILocation(line: 245, column: 21, scope: !891)
!904 = !DILocation(line: 245, column: 34, scope: !891)
!905 = !DILocation(line: 256, column: 2, scope: !891)
!906 = !DILocation(line: 256, column: 16, scope: !891)
!907 = !DILocation(line: 256, column: 30, scope: !891)
!908 = !DILocation(line: 263, column: 32, scope: !891)
!909 = !DILocation(line: 263, column: 30, scope: !891)
!910 = !DILocation(line: 264, column: 1, scope: !891)
!911 = distinct !DISubprogram(name: "switch_to_main_thread", scope: !2, file: !2, line: 494, type: !912, scopeLine: 495, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !352)
!912 = !DISubroutineType(types: !913)
!913 = !{null, !189}
!914 = !DILocalVariable(name: "stack_ptr", arg: 1, scope: !911, file: !2, line: 494, type: !189)
!915 = !DILocation(line: 494, column: 71, scope: !911)
!916 = !DILocation(line: 497, column: 45, scope: !911)
!917 = !DILocation(line: 497, column: 2, scope: !911)
!918 = !DILocation(line: 507, column: 2, scope: !911)
!919 = distinct !DISubprogram(name: "prepare_multithreading", scope: !2, file: !2, line: 461, type: !920, scopeLine: 462, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !352)
!920 = !DISubroutineType(types: !921)
!921 = !{!189}
!922 = !DILocalVariable(name: "stack_ptr", scope: !919, file: !2, line: 463, type: !189)
!923 = !DILocation(line: 463, column: 8, scope: !919)
!924 = !DILocation(line: 466, column: 2, scope: !919)
!925 = !DILocation(line: 478, column: 24, scope: !919)
!926 = !DILocation(line: 480, column: 14, scope: !919)
!927 = !DILocation(line: 480, column: 12, scope: !919)
!928 = !DILocation(line: 485, column: 2, scope: !919)
!929 = !DILocation(line: 486, column: 2, scope: !919)
!930 = !DILocation(line: 488, column: 2, scope: !919)
!931 = !DILocation(line: 490, column: 9, scope: !919)
!932 = !DILocation(line: 490, column: 2, scope: !919)
!933 = distinct !DISubprogram(name: "sys_sflist_is_empty", scope: !563, file: !563, line: 335, type: !934, scopeLine: 335, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !352)
!934 = !DISubroutineType(types: !935)
!935 = !{!178, !936}
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 32)
!937 = !DILocalVariable(name: "list", arg: 1, scope: !933, file: !563, line: 335, type: !936)
!938 = !DILocation(line: 335, column: 55, scope: !933)
!939 = !DILocation(line: 335, column: 92, scope: !933)
!940 = !DILocation(line: 335, column: 71, scope: !933)
!941 = !DILocation(line: 335, column: 98, scope: !933)
!942 = !DILocation(line: 335, column: 63, scope: !933)
!943 = distinct !DISubprogram(name: "sys_sflist_peek_head", scope: !563, file: !563, line: 255, type: !944, scopeLine: 256, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !352)
!944 = !DISubroutineType(types: !945)
!945 = !{!567, !936}
!946 = !DILocalVariable(name: "list", arg: 1, scope: !943, file: !563, line: 255, type: !936)
!947 = !DILocation(line: 255, column: 64, scope: !943)
!948 = !DILocation(line: 257, column: 9, scope: !943)
!949 = !DILocation(line: 257, column: 15, scope: !943)
!950 = !DILocation(line: 257, column: 2, scope: !943)
!951 = distinct !DISubprogram(name: "z_mark_thread_as_started", scope: !952, file: !952, line: 157, type: !893, scopeLine: 158, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !352)
!952 = !DIFile(filename: "kernel/include/ksched.h", directory: "/home/sri/zephyrproject/zephyr")
!953 = !DILocalVariable(name: "thread", arg: 1, scope: !951, file: !952, line: 157, type: !251)
!954 = !DILocation(line: 157, column: 62, scope: !951)
!955 = !DILocation(line: 159, column: 2, scope: !951)
!956 = !DILocation(line: 159, column: 10, scope: !951)
!957 = !DILocation(line: 159, column: 15, scope: !951)
!958 = !DILocation(line: 159, column: 28, scope: !951)
!959 = !DILocation(line: 160, column: 1, scope: !951)
!960 = distinct !DISubprogram(name: "atomic_add", scope: !961, file: !961, line: 76, type: !962, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !352)
!961 = !DIFile(filename: "zephyr/include/generated/syscalls/atomic_c.h", directory: "/home/sri/zephyrproject/zephyr/build")
!962 = !DISubroutineType(types: !963)
!963 = !{!750, !751, !750}
!964 = !DILocalVariable(name: "target", arg: 1, scope: !960, file: !961, line: 76, type: !751)
!965 = !DILocation(line: 76, column: 50, scope: !960)
!966 = !DILocalVariable(name: "value", arg: 2, scope: !960, file: !961, line: 76, type: !750)
!967 = !DILocation(line: 76, column: 71, scope: !960)
!968 = !DILocation(line: 85, column: 2, scope: !960)
!969 = !DILocation(line: 85, column: 7, scope: !970)
!970 = distinct !DILexicalBlock(scope: !960, file: !961, line: 85, column: 5)
!971 = !{i64 12833}
!972 = !DILocation(line: 85, column: 47, scope: !970)
!973 = !DILocation(line: 86, column: 27, scope: !960)
!974 = !DILocation(line: 86, column: 35, scope: !960)
!975 = !DILocation(line: 86, column: 9, scope: !960)
!976 = !DILocation(line: 86, column: 2, scope: !960)
!977 = distinct !DISubprogram(name: "pm_device_runtime_auto_enable", scope: !978, file: !978, line: 161, type: !419, scopeLine: 162, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !352)
!978 = !DIFile(filename: "include/zephyr/pm/device_runtime.h", directory: "/home/sri/zephyrproject/zephyr")
!979 = !DILocalVariable(name: "dev", arg: 1, scope: !977, file: !978, line: 161, type: !158)
!980 = !DILocation(line: 161, column: 70, scope: !977)
!981 = !DILocation(line: 163, column: 9, scope: !977)
!982 = !DILocation(line: 164, column: 2, scope: !977)
!983 = distinct !DISubprogram(name: "__NVIC_SetPriority", scope: !195, file: !195, line: 732, type: !984, scopeLine: 733, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !352)
!984 = !DISubroutineType(types: !985)
!985 = !{null, !986, !188}
!986 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRQn_Type", file: !103, line: 107, baseType: !102)
!987 = !DILocalVariable(name: "IRQn", arg: 1, scope: !983, file: !195, line: 732, type: !986)
!988 = !DILocation(line: 732, column: 51, scope: !983)
!989 = !DILocalVariable(name: "priority", arg: 2, scope: !983, file: !195, line: 732, type: !188)
!990 = !DILocation(line: 732, column: 66, scope: !983)
!991 = !DILocation(line: 734, column: 17, scope: !992)
!992 = distinct !DILexicalBlock(scope: !983, file: !195, line: 734, column: 7)
!993 = !DILocation(line: 734, column: 7, scope: !992)
!994 = !DILocation(line: 734, column: 23, scope: !992)
!995 = !DILocation(line: 734, column: 7, scope: !983)
!996 = !DILocation(line: 736, column: 183, scope: !997)
!997 = distinct !DILexicalBlock(scope: !992, file: !195, line: 735, column: 3)
!998 = !DILocation(line: 736, column: 173, scope: !997)
!999 = !DILocation(line: 736, column: 190, scope: !997)
!1000 = !DILocation(line: 736, column: 110, scope: !997)
!1001 = !DILocation(line: 736, column: 240, scope: !997)
!1002 = !DILocation(line: 736, column: 230, scope: !997)
!1003 = !DILocation(line: 736, column: 249, scope: !997)
!1004 = !DILocation(line: 736, column: 259, scope: !997)
!1005 = !DILocation(line: 736, column: 212, scope: !997)
!1006 = !DILocation(line: 736, column: 203, scope: !997)
!1007 = !DILocation(line: 736, column: 201, scope: !997)
!1008 = !DILocation(line: 737, column: 11, scope: !997)
!1009 = !DILocation(line: 737, column: 20, scope: !997)
!1010 = !DILocation(line: 737, column: 33, scope: !997)
!1011 = !DILocation(line: 737, column: 81, scope: !997)
!1012 = !DILocation(line: 737, column: 71, scope: !997)
!1013 = !DILocation(line: 737, column: 90, scope: !997)
!1014 = !DILocation(line: 737, column: 100, scope: !997)
!1015 = !DILocation(line: 737, column: 53, scope: !997)
!1016 = !DILocation(line: 736, column: 268, scope: !997)
!1017 = !DILocation(line: 736, column: 78, scope: !997)
!1018 = !DILocation(line: 736, column: 68, scope: !997)
!1019 = !DILocation(line: 736, column: 85, scope: !997)
!1020 = !DILocation(line: 736, column: 5, scope: !997)
!1021 = !DILocation(line: 736, column: 96, scope: !997)
!1022 = !DILocation(line: 738, column: 3, scope: !997)
!1023 = !DILocation(line: 741, column: 202, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !992, file: !195, line: 740, column: 3)
!1025 = !DILocation(line: 741, column: 192, scope: !1024)
!1026 = !DILocation(line: 741, column: 209, scope: !1024)
!1027 = !DILocation(line: 741, column: 218, scope: !1024)
!1028 = !DILocation(line: 741, column: 224, scope: !1024)
!1029 = !DILocation(line: 741, column: 127, scope: !1024)
!1030 = !DILocation(line: 741, column: 274, scope: !1024)
!1031 = !DILocation(line: 741, column: 264, scope: !1024)
!1032 = !DILocation(line: 741, column: 283, scope: !1024)
!1033 = !DILocation(line: 741, column: 293, scope: !1024)
!1034 = !DILocation(line: 741, column: 246, scope: !1024)
!1035 = !DILocation(line: 741, column: 237, scope: !1024)
!1036 = !DILocation(line: 741, column: 235, scope: !1024)
!1037 = !DILocation(line: 742, column: 11, scope: !1024)
!1038 = !DILocation(line: 742, column: 20, scope: !1024)
!1039 = !DILocation(line: 742, column: 33, scope: !1024)
!1040 = !DILocation(line: 742, column: 81, scope: !1024)
!1041 = !DILocation(line: 742, column: 71, scope: !1024)
!1042 = !DILocation(line: 742, column: 90, scope: !1024)
!1043 = !DILocation(line: 742, column: 100, scope: !1024)
!1044 = !DILocation(line: 742, column: 53, scope: !1024)
!1045 = !DILocation(line: 741, column: 302, scope: !1024)
!1046 = !DILocation(line: 741, column: 80, scope: !1024)
!1047 = !DILocation(line: 741, column: 70, scope: !1024)
!1048 = !DILocation(line: 741, column: 87, scope: !1024)
!1049 = !DILocation(line: 741, column: 96, scope: !1024)
!1050 = !DILocation(line: 741, column: 102, scope: !1024)
!1051 = !DILocation(line: 741, column: 5, scope: !1024)
!1052 = !DILocation(line: 741, column: 113, scope: !1024)
!1053 = !DILocation(line: 744, column: 1, scope: !983)
!1054 = distinct !DISubprogram(name: "bg_thread_main", scope: !2, file: !2, line: 327, type: !1055, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !352)
!1055 = !DISubroutineType(types: !1056)
!1056 = !{null, !146, !146, !146}
!1057 = !DILocalVariable(name: "unused1", arg: 1, scope: !1054, file: !2, line: 327, type: !146)
!1058 = !DILocation(line: 327, column: 34, scope: !1054)
!1059 = !DILocalVariable(name: "unused2", arg: 2, scope: !1054, file: !2, line: 327, type: !146)
!1060 = !DILocation(line: 327, column: 49, scope: !1054)
!1061 = !DILocalVariable(name: "unused3", arg: 3, scope: !1054, file: !2, line: 327, type: !146)
!1062 = !DILocation(line: 327, column: 64, scope: !1054)
!1063 = !DILocation(line: 329, column: 9, scope: !1054)
!1064 = !DILocation(line: 330, column: 9, scope: !1054)
!1065 = !DILocation(line: 331, column: 9, scope: !1054)
!1066 = !DILocation(line: 341, column: 20, scope: !1054)
!1067 = !DILocation(line: 343, column: 2, scope: !1054)
!1068 = !DILocation(line: 347, column: 2, scope: !1054)
!1069 = !DILocation(line: 355, column: 2, scope: !1054)
!1070 = !DILocation(line: 357, column: 2, scope: !1054)
!1071 = !DILocation(line: 376, column: 8, scope: !1054)
!1072 = !DILocation(line: 379, column: 34, scope: !1054)
!1073 = !DILocation(line: 385, column: 1, scope: !1054)
